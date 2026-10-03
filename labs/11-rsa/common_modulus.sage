A='abcdefghijklmnopqrstuvwxyz'
def i_skaiciu(text):
    t=''
    for r in text:
        if r in A:
            ind=A.index(r)+1
            if ind<10: t=t+'0'+str(ind)
            else: t=t+str(ind)
    return int(t,10)  

def i_teksta(M):
    n=M
    text=''
    while n>0:
        ind=n%100
        ind=ind-1
        if (ind>=0) & (ind<len(A)):
            text+=A[ind]
            n=(n-ind+1)//100
        else:
            text+='?'
            n=(n-ind+1)//100            
    return text[::-1]  

[n,ea]=  [13643387411943422619420545265704369815117968692007719963, 31]
[n,eb]=  [13643387411943422619420545265704369815117968692007719963, 109]

ca = 6038455699859594367824470798744849361898397860730881958
cb = 4697301636492201652145551956178256684508885002346114774
#ca=m^ea, cb = m^eb, gcd(ea,eb) = 1, x*ea+y*eb = 1
#ca^x*cb^y=m^(x*ea)*m^(y*eb) =  m ^ ea+y*eb)= m
[x,y] = [ -7, 2]
m = power_mod(ca,x,n)* power_mod(cb,y,n)%n
print(i_teksta(m))
#xgcd(ea, eb)
