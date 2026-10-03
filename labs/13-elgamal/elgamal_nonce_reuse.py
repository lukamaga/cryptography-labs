# -*- coding: utf-8 -*-
"""
 11 užduotis 
Viešasis Algio ElGamalio schemos raktas parašų tikrinimui ir šifravimui: 
[p,g,bt]=[4640650289117164100520051333566036654627, 2, 1250959652733661812585739902131068918196]
Algis pasirašė žinutę = kritinis taskas. Parašas:
[gamma, delta_1]=[1858505623326067186076225071730048592382, 3642831525655412218935066131653872127023]
Algis pasirašė žinutę = susitikimo nebus. Parašas:
[gamma, delta_2]=[1858505623326067186076225071730048592382, 2563678417957396935337511103443206712037]

1. Patikrinkite parašus.
2. Raskite Algio privatųjį raktą.
3. Iššifruokite Algiui skirtą šifrą 
[C_1,C_2]=[1156806335571961656478517408172064995287, 2834901601780151301497062518866418914121]
"""
None

from math import floor, gcd

p, g, bt = 4640650289117164100520051333566036654627, 2, 1250959652733661812585739902131068918196
alphabet = 'abcdefghijklmnopqrstuvwxyz '

#destytojo funkcijos jo formatavimui
def i_skaiciu(text):
    t = ''
    for r in text:
        if r in alphabet:
            ind = alphabet.index(r) + 1
            if ind < 10:
                t = t + '0' + str(ind)
            else:
                t = t + str(ind)
    return int(t, 10)

def i_teksta(M):
    n = M
    text = ''
    while n > 0:
        ind = n % 100
        ind = ind - 1
        if 0 <= ind < len(alphabet):
            text += alphabet[ind]
            n = (n - ind - 1) // 100
        else:
            text += '?'
            n = (n - ind - 1) // 100
    return text[::-1]

message_1 = 'kritinis taskas'
gamma, delta_1 = 1858505623326067186076225071730048592382, 3642831525655412218935066131653872127023  # signature
message_2 = 'susitikimo nebus'
delta_2 = 2563678417957396935337511103443206712037

def verify_signature(beta, gamma, delta, p, g, message):
    m = i_skaiciu(message)
    s1 = pow(g, m, p)
    s2 = (pow(beta, gamma, p) * pow(gamma, delta, p)) % p
    ver = s1 == s2
    print('s1:', s1, '\ts2:', s2)
    print('Signature verified' if ver else 'Signature wrong')
    return ver

verify_signature(bt, gamma, delta_1, p, g, message_1)
verify_signature(bt, gamma, delta_2, p, g, message_2)

from math import gcd

def find_random_key(message1, delta1, message2, delta2, p, alpha, expected_gamma):
    gcdNum = gcd(delta1 - delta2, p-1)

    k = ((i_skaiciu(message1) - i_skaiciu(message2)) * pow(delta1 - delta2, -1, (p-1)//gcdNum)) % (p-1)
    k1 = k + (p-1)//gcdNum

    if expected_gamma == pow(alpha, k, p):
        print('Found random key:', k)
        return k
    if expected_gamma == pow(alpha, k1, p):
        print('Found random key (1):', k1)
        return k1
    raise RuntimeError('Could not find random key')

k = find_random_key(message_1, delta_1, message_2, delta_2, p, g, gamma)

def find_private_key(gamma, delta, message, randomkey, p, alpha, expected_beta):
    gcdNum = gcd(-gamma, p-1)
    x = (pow(-gamma, -1, (p-1)//gcdNum) * (delta * randomkey - i_skaiciu(message))) % (p-1)
    x1 = x + (p-1)//gcdNum

    if expected_beta == pow(alpha, x, p):
        print('Found private key:', x)
        return x
    if expected_beta == pow(alpha, x1, p):
        print('Found private key (1):', x1)
        return x1
    raise RuntimeError('Could not find private key')

a = find_private_key(gamma, delta_1, message_1, k, p, g, bt)

C_1, C_2 = 1156806335571961656478517408172064995287, 2834901601780151301497062518866418914121

def decrypt(C1, C2, a, p):
    msg = (C2 * pow(pow(C1, a, p), -1, p)) % p
    text = i_teksta(msg)
    print('Decrypted text:', text)
    return text

msg = decrypt(C_1, C_2, a, p)

def sign_text(message, gamma, privatekey, randomkey, p):
    data = i_skaiciu(message)

    delta = ((data - privatekey * gamma) * pow(randomkey, -1, p-1)) % (p-1)

    print('Signed', '\nGamma:', gamma, '\nDelta:', delta)

    return gamma, delta

gamma_test, delta_test = sign_text(msg, gamma, a, k, p)

# test the signature
test = verify_signature(bt, gamma_test, delta_test, p, g, msg)

if not test:
    raise RuntimeError('Failed to sign!')
else:
    print('SUCCESS!\n')
    print('Private key:', a)
    print('Decrypted text:', msg)
    print('Text signature:', f'[Gamma, Delta] = [{gamma_test}, {delta_test}]')