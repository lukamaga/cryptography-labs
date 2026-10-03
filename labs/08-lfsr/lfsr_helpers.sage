def	xor(a,b):
    m=min(len(a),len(b))
    return [(a[i]+b[i])%2 for i in range(0,m)] 	

def trf(M,i,lin):
    for j in lin:
	    M[j]=xor(M[i],M[j])
    for j in range(len(M)):
        print (M[j])
    return M  
  
def shift(c,x): # c - coefficients, x - initial state, len(c)=len(x)
    bt=0
    n=len(x)
    xf=[0]*n
    for j in range(0,n):
        bt+=c[j]*x[j]
    for j in range(1,n):
        xf[n-j]=x[n-1-j]
    xf[0]=bt%2
    return xf 

def stream(c,xp,n):  # key stream
    x=[0,0,0,0,0,0,0,0]
    for i in range(0,8):
        x[i]=xp[i]
    sr=''
    for i in range(0,n):
        sr+=str(x[0])
        x=shift(c,x)
    return sr
