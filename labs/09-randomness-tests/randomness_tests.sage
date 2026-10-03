t='VEIDAIBUDAVOTAIPISKREIPTINETNEGALEJOPAZINTI'
#I šifras 
s1=[56, 17, 105, 141, 91, 244, 177, 59, 16, 97, 159, 85, 233, 178, 39, 4, 105, 154, 81, 239, 182, 39, 4, 116, 128, 84, 248, 167, 32, 17, 103, 136, 86, 248, 185, 33, 4, 97, 147, 83, 243, 167, 39]
#II šifras
s2=[116, 240, 213, 11, 169, 239, 121, 84, 49, 221, 25, 167, 242, 122, 72, 37, 213, 28, 163, 244, 126, 72, 37, 200, 6, 166, 227, 111, 79, 48, 219, 14, 164, 227, 113, 78, 37, 221, 21, 161, 232, 111, 72]
b1=''
for r in t:
    b1 += bin(ord(r))[2::]
#b1='10010111000001100100110100001001101100010110001001011010100100110101011001111101001110001011001001101001010110101001111100110010001011010011100010110100001000001101010110010111010011101010010001011001100100100110000011001001101001110011001000001101000010100111010100100010110100111001001100111010000011010010100010010001011010110100000110010011001011101010110100111010000100010110100101000101100101010011111010011100000110101101001111100011110010011000101101001110011011000101100110010001011010011100011110010011000101100010010011111001010100111110000111001001101010110011001000010100010110010101001111'
b2=''
for r in s1:
    b2 += bin(r)[2::]
#b2='111010101011100010101101100110100110011101100010000101101110010111011111111101101111101010001111010010101101010110011101000111101010110001100010010111011010011010101110110100000010100101101011101111111001000110101010100001010000110010111111001011010001001010010111101000111011101010001111000010011101101110110110010100011010001010001111010100011110110110010100011010110101011110111101101011101100100110101101010011111011011'
b3=''
for r in s2:
    b3 += bin(r)[2::]
#b3='100110010011111001001011110111111011100111101010011110110010010010111000111110011000100010100011111111100010011101111111100110010111101000111001011001111011110111110111100011101001101110010110001111101000111110101001001010110011111111100010001000011111011110001011111110111000101001111011111011111111100101011011001110010010011111101000111000001001101010010011111101100011101111101110011010011110111111111100111001000110001011100101100110101110111111100110011100100100111100111000100010000011110011100101111010001110010110011100100100111100111001111110001011111100100101001011101111111110001110100001111101001001111010011111111001'
print('Poker test')
print('m = 3')
alpha = 0.1
B = [b1, b2, b3]
m=3
l=2^m-1
T = RealDistribution('chisquared', l)
iter = 1
for b in B:
    print(iter, 'Srautas')
    iter += 1
    N=2^m*[0]
    k=len(b)//m
    for i in range(k):
        j=int(b[i*m:i*m+m],2)
        N[j]+=1
    T3=1.*sum([n*n for n in N])*2^m/k-k
    t=T3
    p=1-T.cum_distribution_function(t)
    print('T3 =', T3, ', p =', p)
    if p < alpha:
        print('Seka neatsitiktinė')
    else:
        print('Seka atsitiktinė')

print('Frequency test')
alpha = 0.1
B = [b1, b2, b3]
T = RealDistribution('chisquared', 1)
iter = 1
for b in B:
    print(iter, 'Srautas')
    iter += 1
    N0=b.count('0')
    N1=b.count('1')
    k=len(b)
    T1=1.*((N1-N0)^2)/k
    t=T1
    p=1-T.cum_distribution_function(t)
    print('T1 =', T1, ', p =', p)
    if p < alpha:
        print('Seka neatsitiktinė')
    else:
        print('Seka atsitiktinė')
        
print('Bit pairs test')
alpha = 0.1
B = [b1, b2, b3]
T = RealDistribution('chisquared', 2)
iter = 1
for b in B:
    print(iter, 'Srautas')
    iter += 1
    N0=b.count('0')
    N1=b.count('1')
    count_00 = 0
    count_01 = 0
    count_10 = 0
    count_11 = 0

    for i in range(0, len(b) - 1):
        pair = b[i:i+2]
        if pair == '00':
            count_00 += 1
        elif pair == '01':
            count_01 += 1
        elif pair == '10':
            count_10 += 1
        elif pair == '11':
            count_11 += 1
    print(N0, N1)
    print(count_00, count_11,count_10,count_01)
    print(count_00 + count_01 + count_10 + count_11)
    k=len(b)
    print(k-1)
    T2=(4/(k-1.))*(count_00^2 + count_01^2 + count_10^2 + count_11^2) - (2./k)*(N0^2 + N1^2) + 1.
    t=T2
    p=1-T.cum_distribution_function(t)
    print('T2 =', T2, ', p =', p)
    if p < alpha:
        print('Seka neatsitiktinė')
    else:
        print('Seka atsitiktinė')

print('Autocorrelation test')
print('d = 5')
alpha = 0.1/2
B = [b1, b2, b3]
N = RealDistribution('gaussian', 1)
iter = 1
for b in B:
    print(iter, 'Srautas')
    iter += 1
    d=5
    bt=b[d-1::]
    Xd=0

    for i in range(len(bt)):
        if b[i]!=bt[i]:
            Xd+=1
    T5=(2*Xd-len(b)+d)/sqrt(1.*len(b)-d)
    t=T5
    if t < 0:
        p=N.cum_distribution_function(t)
    else:
        p=1-N.cum_distribution_function(t)
    print('T5 =', T5, ', p =', p)
    if p < alpha:
        print('Seka neatsitiktinė')
    else:
        print('Seka atsitiktinė')