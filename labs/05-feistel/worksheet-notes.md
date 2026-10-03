# Saved Feistel exercises

## Exercise 5.1: recorded text

The source preserves this answer as two-character groups. No corresponding implementation is saved for this subsection.

```text
5.1: LA
KS
TE
VI
SU
RS
UT
UO
VE
ID
RO
DZ
IU
IR
GA
LO
PN
EL
IK
ON
EI
VI
EN
OZ
MO
GA
US
NE
IV
IE
NO
KR
AS
TO
KU
RB
UT
UN
EI
SK
RE
IP
TA
SJ
AM
E 
```

## Exercise 5.2: recorded answer fragments

The complete saved cell is [feistel_decrypt.sage](feistel_decrypt.sage). The following text appears after it in the original worksheet. Line breaks and the separate continuation are retained as recorded.

```text
EINUPERLAUKAANTKELIOTABOKINEATIDARAUJOJEKITATIKDIDESNEATIDARAUTADIDESNEJOJEVELKITATIKDARDIDESNEA
TI
DA
RA
UT
AD
AR
DI
DE
SN
EJ
OJ
ES
KR
YN
IA
PI
LN
AG
RA
ZI
AU
SI
OS
IL
KO
RI
ET
IM
u 
```

## Exercise 5.3: incomplete search cell

This is a separate ciphertext and two-key search attempt. It is preserved below as worksheet material, not as a runnable entry point. Its round-function string refers to `m`, while `iter` binds the right half to `r`. The first call also assigns to `m` only after evaluating its right-hand side, so the cell depends on undefined or stale worksheet state. The round function has not been changed to guess the intended formula.

```sage
C = [[168, 163], [165, 168], [173, 184], [190, 173], [184, 187], [162, 171], [174, 173], [162, 165], [186, 170], [161, 169], [175, 189], [167, 160], [164, 171], [173, 176], [178, 176], [173, 176], [170, 173], [182, 183], [186, 185], [186, 170], [173, 176], [165, 161], [167, 175], [171, 182], [167, 168], [190, 171], [175, 179], [181, 180], [185, 171], [185, 172], [180, 181], [175, 178], [188, 191], [171, 161], [178, 179], [162, 165], [177, 179], [173, 169], [167, 160], [160, 180], [171, 176], [161, 166], [166, 175], [180, 171], [160, 175]]

def iter(M,k,f):
    r=M[1]
    l=M[0]^^eval(f)
    return [r,l]

f='(m|k)^((k//16)&m)'

c = C[0]
c2 = C[1]

for x in range(0,256):
    for y in range(0,256):
        m = iter(c, y, f)
        m = iter(m, x, f)
        m = [m[1],m[0]]
        m2 = iter(c2, y, f)
        m2 = iter(m2, x, f)
        m2 = [m2[1],m2[0]]
        print(chr(m[0])+chr(m[1]) + chr(m2[0])+chr(m2[1]), x, y)

'''
for x in range(0,255):
    m = iter(c, 207, f)
    m = iter(m, x, f)
    m = [m[1],m[0]]
    m2 = iter(c2, 207, f)
    m2 = iter(m2, x, f)
    m2 = [m2[1],m2[0]]
    print(chr(m[0])+chr(m[1]) + chr(m2[0])+chr(m2[1]), x)
'''

'''
for c in C:
    m = iter(c, 207, f)
    m = iter(m, 1, f)
    m = [m[1],m[0]]
    print(chr(m[0])+chr(m[1]))    
'''
```

Recorded answer:

```text
JEIKASTUREJODEDIRVINETAIJIISPLISDAVOPERVISAJONOSIIRSKRUOSTUSTOKSVEIDRODISLABAIDZIUGINOZYNI
```

Source: `kripto5-6.txt`, sections 5.1, 5.2 and 5.3. The later practice 6 material is documented separately in the repository.
