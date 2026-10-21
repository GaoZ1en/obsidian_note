"""Independent SC-16 reconstruction from differential pair eigenpolynomials.
No manuscript implementation or previous certificates are imported.
Conventions: delta=z1-z2, t=z3-(z1+z2)/2, Delta=2.
C12=[(Delta+delta*d_delta)(Delta+delta*d_delta-1)]-delta^2*d_t^2/4.
S23: (delta,t)->(delta/2-t,-3*delta/4-t/2).
On pair-even tensors 3 Pi_Bose compresses to I+2 S23_L tensor S23_R.
"""
from pathlib import Path
from math import comb
import json, time, hashlib
import numpy as np
from flint import fmpq as Q, fmpq_mat as Mat
OUT=Path(__file__).resolve().parents[1]

def pair(P,d=Q(2)):
    E=Mat(P+1,P+1)
    for k in range(P+1):
        E[k,k]=1
        for j in range(1,(P-k)//2+1):
            h=k+2*j
            E[h,k]=E[h-2,k]*Q((P-h+2)*(P-h+1),4)/(Q(d+h)*(d+h-1)-(d+k)*(d+k-1))
    T=Mat(P+1,P+1)
    for k in range(P+1):
        for a in range(k+1):
            for b in range(P-k+1):
                T[a+b,k]+=comb(k,a)*Q(1,2)**a*Q(-1)**(k-a)*comb(P-k,b)*Q(-3,4)**b*Q(-1,2)**(P-k-b)
    R=E.inv()*T*E
    ident=Mat([[int(i==j) for j in range(P+1)] for i in range(P+1)])
    assert R*R==ident
    weights=[Q(1)]+[R[0,k]/R[k,0] for k in range(1,P+1)]
    assert all(w>0 for w in weights)
    assert all(weights[i]*R[i,j]==weights[j]*R[j,i] for i in range(P+1) for j in range(P+1))
    return R,weights

def residual(k,l,d=Q(2)):
    n=min(k,l); spin=abs(k-l); h=d+n; cas=h*(h-1); mu=d*(d-2); base=4*mu-8*cas
    if spin==0:
        gam=-4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1)) if n==0 else base*(2*h-2)/(2*h-1)-2*(cas+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    elif spin==2:
        gam=base+Q((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    else:
        gam=base
    return gam-(4*mu-8*(d+l)*(d+l-1))

def inertia(A):
    # Exact rational congruence; no tolerance. Use 2x2 pivot only if all diagonals vanish.
    a=[[A[i,j] for j in range(A.ncols())] for i in range(A.nrows())]
    pos=neg=zero=twopiv=0
    while a:
        n=len(a)
        pivot=next((i for i in range(n) if a[i][i]),None)
        if pivot is not None:
            if pivot:
                a[0],a[pivot]=a[pivot],a[0]
                for row in a: row[0],row[pivot]=row[pivot],row[0]
            d=a[0][0]; pos+=int(d>0); neg+=int(d<0)
            v=[a[i][0]/d for i in range(1,n)]
            for i in range(1,n):
                for j in range(i,n):
                    a[i][j]-=v[i-1]*a[0][j]
                    a[j][i]=a[i][j]
            a=[row[1:] for row in a[1:]]
        else:
            edge=next(((i,j) for i in range(n) for j in range(i+1,n) if a[i][j]),None)
            if edge is None:
                zero+=n; break
            i,j=edge; ids=[i,j]+[k for k in range(n) if k not in edge]
            a=[[a[k][l] for l in ids] for k in ids]
            d=a[0][1]; pos+=1;neg+=1;twopiv+=1
            for i in range(2,n):
                for j in range(i,n):
                    a[i][j]-=(a[i][0]*a[1][j]+a[i][1]*a[0][j])/d
                    a[j][i]=a[i][j]
            a=[row[2:] for row in a[2:]]
    return {'positive':pos,'negative':neg,'zero':zero,'two_by_two_pivots':twopiv}

def main():
    report={'method':__doc__,'blocks':[]}
    for P,Qr,lo,hi in [(16,8,Q(1,5),Q(1,3)),(32,16,Q(1,6000),Q(1,5000))]:
        start=time.perf_counter(); RL,wL=pair(P); RR,wR=pair(Qr)
        labels=[(k,l) for k in range(P+1) for l in range(Qr+1) if (k+l)%2==0 and k<=l+2]
        a=[residual(k,l) for k,l in labels];w=[wL[k]*wR[l] for k,l in labels]
        assert all(x>0 for x in a)
        G=Mat([[int(i==j)+2*RL[k,kp]*RR[l,lp] for j,(kp,lp) in enumerate(labels)] for i,(k,l) in enumerate(labels)])
        S=Mat([[w[i]*G[i,j] for j in range(len(labels))] for i in range(len(labels))])
        assert S==S.transpose()
        block={'P':P,'Q':Qr,'auxiliary_dimension':len(labels),'matrix_sha256':hashlib.sha256(str(S).encode()).hexdigest(),'inertia':{}}
        for eps in [Q(0),lo,hi]:
            H=Mat(S)
            for i in range(len(labels)): H[i,i]-=eps*w[i]/a[i]
            record=inertia(H);block['inertia'][str(eps)]=record
            print(P,Qr,str(eps),record,flush=True)
        numeric=np.array([[float(G[i,j])*float((w[i]*a[i])/(w[j]/a[j]))**0.5 for j in range(len(labels))] for i in range(len(labels))])
        ev=np.linalg.eigvalsh((numeric+numeric.T)/2)
        nullity=block['inertia']['0']['zero']; block['positive_min_numerical_only']=float(ev[nullity]);block['seconds']=time.perf_counter()-start
        report['blocks'].append(block)
    path=OUT/'results/audit2_sc_soft_inertia.json'
    assert not path.exists(), 'Refuse overwrite'
    path.write_text(json.dumps(report,indent=2)+'\n')
    print(path,flush=True)
if __name__=='__main__': main()
