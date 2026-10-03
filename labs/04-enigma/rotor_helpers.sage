L_1=[10, 2, 11, 18, 8, 20, 19, 25, 23, 1, 15, 9, 14, 6, 24, 0, 17, 7, 22, 21, 4, 12, 5, 3, 16, 13]
L_2=[14, 2, 7, 20, 18, 9, 19, 25, 23, 1, 13, 17, 22, 5, 3, 0, 24, 8, 21, 10, 11, 12, 15, 4, 6, 16]
s=[2, 4, 0, 6, 1, 11, 3, 8, 7, 13, 16, 5, 15, 9, 18, 12, 10, 19, 14, 17, 25, 22, 21, 24, 23, 20]

abc='ABCDEFGHIJKLMNOPQRSTUVWXYZ'

cph = '''
VXUIQ SDTJF SIHWV JJSFE RVJUQ 
QKDJI HGUDY QNNVP DKXTS KMGRE 
'''
n=len(abc)
[k1,k2] = [19, 11]

def pr(t):
    tn=''
    for r in t:
        if r in abc: tn+=r
    return [abc.index(r) for r in tn]

def rot(a,m,l):
    c=(a+m)%n
    c=l[c]
    return (c-m)%n

def enc(a,k,k1,k2):
    m1=k%n
    m2=(k-m1)/n
    m1=m1+k1
    m2=m2+k2
    c=rot(a,m1,L_1)
    return rot(c,m2,L_2)
#enc(0,122,3,12)

#desifravimas

def enc(a,k,k1,k2):
    m1=k%n
    m2=(k-m1)/n
    m1=m1+k1
    m2=m2+k2
    c=rot(a,m2,L_2)
    return rot(c,m1,L_1a)

L_1a=[L_1.index(i) for i in range(0,n)]
print(L_1)
print(L_1a)