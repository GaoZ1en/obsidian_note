# Run with SageMath. Rational unnormalized ladders avoid algebraic radicals.
# Their Gram matrices verify the normalized Fock formulas in the companion note.
from sage.all import *

def rising(a,n):
    return prod(a+j for j in range(n))

@cached_function
def chiral_basis(N,d):
    columns=[]
    for k in range(N+1):
        v=vector(QQ,[(-1)**p*binomial(k,p)*rising(d+k-p,p)/
                     rising(d,p) for p in range(k+1)])
        for n in range(k,N):
            w=vector(QQ,n+2)
            for p in range(n+1):
                w[p]+=v[p]
                w[p+1]+=v[p]
            v=w
        columns.append(v)
    return matrix(QQ,columns).transpose()

def pairs(NL,NR):
    return [(I,(NL-I[0],NR-I[1]))
            for I in [(p,q) for p in range(NL+1) for q in range(NR+1)]
            if I <= (NL-I[0],NR-I[1])]

def one_norm(I,d):
    return prod(factorial(p)*rising(d,p) for p in I)

@cached_function
def coupled_basis(NL,NR,d):
    states=pairs(NL,NR)
    labels=[(k,l) for k in range(NL+1) for l in range(NR+1)
            if (k+l)%2==0]
    UL,UR=chiral_basis(NL,d),chiral_basis(NR,d)
    T=matrix(QQ,[[(1 if I==J else 2)*UL[I[0],k]*UR[I[1],l]
                 for k,l in labels] for I,J in states])
    M=diagonal_matrix(QQ,[(2 if I==J else 1)*one_norm(I,d)*one_norm(J,d)
                         for I,J in states])
    return states,labels,T,M

def fock_lowering(NL,NR,d,side):
    source=pairs(NL,NR)
    target=pairs(NL-(side==0),NR-(side==1))
    index={state:i for i,state in enumerate(target)}
    L=matrix(QQ,len(target),len(source))
    for col,state in enumerate(source):
        for position,I in enumerate(state):
            p=I[side]
            if p==0:
                continue
            dest=list(I)
            dest[side]-=1
            newstate=list(state)
            newstate[position]=tuple(dest)
            row=index[tuple(sorted(newstate))]
            L[row,col]+=p*(d+p-1)
    return L

basis_checks,normalization_checks,ladder_checks,primary_checks=[],[],[],[]
for d in [QQ(3)/2,QQ(2),QQ(7)/3]:
    for NL in range(5):
        for NR in range(5):
            states,labels,T,M=coupled_basis(NL,NR,d)
            gram=T.transpose()*M*T
            basis_checks.append(T.nrows()==T.ncols() and gram.is_diagonal()
                                and all(x>0 for x in gram.diagonal()))
            UL,UR=chiral_basis(NL,d),chiral_basis(NR,d)
            WL=diagonal_matrix(QQ,[factorial(p)*rising(d,p)*
                 factorial(NL-p)*rising(d,NL-p) for p in range(NL+1)])
            WR=diagonal_matrix(QQ,[factorial(q)*rising(d,q)*
                 factorial(NR-q)*rising(d,NR-q) for q in range(NR+1)])
            gL,gR=UL.transpose()*WL*UL,UR.transpose()*WR*UR
            normalization_checks.append(gram==diagonal_matrix(QQ,
                [2*gL[k,k]*gR[l,l] for k,l in labels]))
            for side,level in enumerate([NL,NR]):
                if level==0:
                    continue
                L=fock_lowering(NL,NR,d,side)
                _,lower_labels,lower_T,_=coupled_basis(
                    NL-(side==0),NR-(side==1),d)
                for col,label in enumerate(labels):
                    k=label[side]
                    expected=vector(QQ,L.nrows())
                    if k<level:
                        expected=(level-k)*(2*d+k+level-1)*\
                            lower_T.column(lower_labels.index(label))
                    ladder_checks.append(L*T.column(col)==expected)
                    if k==level:
                        primary_checks.append(L*T.column(col)==
                                              vector(QQ,L.nrows()))

low_checks=[]
for d in [QQ(3)/2,QQ(2),QQ(7)/3]:
    _,labels,T,M=coupled_basis(2,0,d)
    for label,squares,signs in [
        ((2,0),[d/(2*d+1),(d+1)/(2*d+1)],[1,-1]),
        ((0,0),[(d+1)/(2*d+1),d/(2*d+1)],[1,1])]:
        v=T.column(labels.index(label))
        norm=v.dot_product(M*v)
        low_checks.append(all(v[i]**2*M[i,i]/norm==squares[i]
                              and sign(v[i])==signs[i] for i in range(2)))
checks={
    "75 complete orthogonal bosonic blocks":all(basis_checks),
    "Gram norms reproduce the normalized bosonic overlap formula":
        all(normalization_checks),
    "both independent Fock lowering operators":all(ladder_checks),
    "primary annihilation conditions":all(primary_checks),
    "explicit normalized spin-two states":all(low_checks),
}
if __name__=="__main__":
    print(checks)
    assert all(value is True for value in checks.values())
