from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import hashlib, json

OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC')
lines = []
checks = {}
def emit(label, value):
    text = label + ': ' + str(value)
    lines.append(text)
    print(text)
def check(label, value):
    if value is not True and value is not False:
        raise TypeError('Check must be an exact Python bool: ' + label)
    checks[label] = value
    emit(label, value)
    if not value:
        raise AssertionError(label)

R = PolynomialRing(QQ, 't'); t = R.gen(); K = R.fraction_field()
E = ExteriorAlgebra(K, names=('eta', 'zeta'))
eta, zeta = E.gens()
zero, one = E.zero(), E.one()
def zeros(m,n): return [[zero for j in range(n)] for i in range(m)]
def eye(n): return [[one if i == j else zero for j in range(n)] for i in range(n)]
def add(A,B): return [[A[i][j]+B[i][j] for j in range(len(A[0]))] for i in range(len(A))]
def neg(A): return [[-a for a in row] for row in A]
def sub(A,B): return add(A,neg(B))
def scale(s,A): return [[s*a for a in row] for row in A]
def mul(A,B):
    return [[sum((A[i][k]*B[k][j] for k in range(len(B))),zero) for j in range(len(B[0]))] for i in range(len(A))]
def tr(A): return sum((A[i][i] for i in range(len(A))),zero)
def strace(A):
    n = len(A)//2
    return sum((A[i][i]-A[n+i][n+i] for i in range(n)),zero)
def transpose(A): return [[A[j][i] for j in range(len(A))] for i in range(len(A[0]))]
def block(A,B,C,D):
    return [A[i]+B[i] for i in range(len(A))]+[C[i]+D[i] for i in range(len(C))]
def cut(A,rows,cols): return [[A[i][j] for j in cols] for i in rows]
def dagger(A):
    # Even supermatrix, coefficient-left convention, odd symplectic adjoint.
    n = len(A)//2
    aa = [list(range(n)),list(range(n,2*n))]
    a,b,c,d = cut(A,aa[0],aa[0]),cut(A,aa[0],aa[1]),cut(A,aa[1],aa[0]),cut(A,aa[1],aa[1])
    return block(transpose(d),transpose(b),neg(transpose(c)),transpose(a))
def coeff(f,n):
    f=E(f)
    return sum((E(v.derivative(n)(0)/factorial(n))*E.monomial(k) for k,v in f.monomial_coefficients().items()),zero)
def mcoeff(A,n): return [[coeff(v,n) for v in row] for row in A]
def conv(A,B,nmax):
    n=len(A[0]); out=[zeros(n,n) for _ in range(nmax+1)]
    for k in range(nmax+1):
        for i in range(k+1): out[k]=add(out[k],mul(A[i],B[k-i]))
    return out
def formal_log(A,nmax):
    # A is a matrix-valued rational function with A(0)=identity.
    n=len(A); W=[mcoeff(A,k) for k in range(nmax+1)]
    W[0]=sub(W[0],eye(n))
    out=[zeros(n,n) for _ in range(nmax+1)]
    power=[eye(n)]+[zeros(n,n) for _ in range(nmax)]
    for r in range(1,nmax+1):
        power=conv(power,W,nmax)
        for k in range(nmax+1): out[k]=add(out[k],scale(QQ((-1)**(r+1))/r,power[k]))
    return out

emit('Sage version',sage_version)
emit('Coefficient algebra','QQ(t) tensor exterior(eta,zeta); eta*zeta=-zeta*eta')
check('Grassmann sign',zeta*eta == -eta*zeta)

# Exact canonical family with all parity blocks present.
a=[[1,1],[1,0]]
A=matrix(K,[[1+t,t],[t,1]])
AiT=A.inverse().transpose()
AA=[[E(A[i,j]) for j in range(2)] for i in range(2)]
DD=[[E(AiT[i,j]) for j in range(2)] for i in range(2)]
B=[[zero,t*eta],[-t*eta,zero]]
C=[[t*zeta,t*zeta],[t*zeta,2*t*zeta]]
I=eye(2); Z=zeros(2,2)
L=block(AA,Z,Z,DD)
U=block(I,B,Z,I)
V=block(I,Z,C,I)
M=mul(mul(L,U),V)
check('upper odd shear canonical',mul(dagger(U),U)==eye(4))
check('lower odd shear canonical',mul(dagger(V),V)==eye(4))
check('exact full canonical map',mul(dagger(M),M)==eye(4))
check('dagger anti-automorphism',dagger(mul(U,V))==mul(dagger(V),dagger(U)))
Pidx=[0,2]; Qidx=[1,3]
N=cut(M,Pidx,Pidx); leak=cut(M,Qidx,Pidx)
check('exact compression defect identity',sub(mul(dagger(N),N),eye(2))==neg(mul(dagger(leak),leak)))
X=mcoeff(M,1); Y=mcoeff(M,2)
check('all four parity blocks nonzero',all(cut(X,r,c)!=zeros(2,2) for r in [[0,1],[2,3]] for c in [[0,1],[2,3]]))
check('first canonical jet',add(dagger(X),X)==zeros(4,4))
check('second canonical jet',add(add(dagger(Y),Y),mul(dagger(X),X))==zeros(4,4))
S=mul(cut(X,Pidx,Qidx),cut(X,Qidx,Pidx))
emit('X',X)
emit('PXQXP on retained 1|1',S)
check('second defect nonzero',S!=zeros(2,2))
check('second defect self-adjoint',dagger(S)==S)
check('second defect supertrace zero',strace(S)==zero)
check('second defect coefficient',mcoeff(sub(mul(dagger(N),N),eye(2)),2)==S)
logM=formal_log(M,3); logN=formal_log(N,3)
gaps=[strace(logN[k])-strace(cut(logM[k],Pidx,Pidx)) for k in range(4)]
emit('logBerezinian minus projected log coefficients [0,1,2,3]',gaps)
check('quadratic logarithm discrepancy zero',gaps[2]==zero)
check('cubic discrepancy nonzero in this family',gaps[3]!=zero)
check('universal cubic expression',gaps[3] == (strace(mul(mul(cut(X,Pidx,Qidx),cut(X,Qidx,Qidx)),cut(X,Qidx,Pidx)))-strace(mul(cut(X,Pidx,Pidx),S)))/6)

# Full parity-block cancellation, explicitly split into diagonal and odd blocks.
xa,xb,xc,xd = cut(X,[0,1],[0,1]),cut(X,[0,1],[2,3]),cut(X,[2,3],[0,1]),cut(X,[2,3],[2,3])
even_diag=xa[0][1]*xa[1][0]
odd_diag=xd[0][1]*xd[1][0]
even_cross=xb[0][1]*xc[1][0]
odd_cross=xc[0][1]*xb[1][0]
emit('retained even and odd diagonal-path contributions',[even_diag,odd_diag])
emit('retained even and odd odd-block contributions',[even_cross,odd_cross])
check('diagonal paths cancel in supertrace',even_diag==odd_diag)
check('odd paths cancel with Grassmann signs',even_cross==odd_cross)

# Finite real-number counterexample: cotangent lift A -> diag(A,A^{-T}).
A1=matrix(QQ,[[2,1],[1,1]])
M1=block([[E(A1[i,j]) for j in range(2)] for i in range(2)],Z,Z,[[E(A1.inverse().transpose()[i,j]) for j in range(2)] for i in range(2)])
N1=cut(M1,Pidx,Pidx)
check('finite real example canonical',mul(dagger(M1),M1)==eye(4))
emit('finite real compressed matrix',N1)
emit('finite real canonical defect',sub(mul(dagger(N1),N1),eye(2)))
check('finite real compressed Berezinian equals 2',N1[0][0]==E(2)*N1[1][1] and N1[1][1]==E.one())
RI=RealIntervalField(200)
logber=RI(2).log()
projlog=2/RI(5).sqrt()*((3+RI(5).sqrt())/2).log()
emit('log Ber(N1) interval',logber)
emit('Str(P log M1 P) interval',projlog)
check('rigorous finite real logarithms unequal',projlog.lower()>logber.upper())

# Closed T^3 zero-mode model for the complete gravity-map body.
# Three translation ghosts multiply by f=1+t*cos(x); their even antifields by f^{-1}.
PS=PowerSeriesRing(QQ,'s',default_prec=8); s=PS.gen()
r=(1-s*s).sqrt()
LB=-(QQ(3)/2)*(1-s*s).log()
PL=-6*((1+r)/2).log()
emit('torus log Ber(compression) series',LB)
emit('torus projected supertrace log series',PL)
emit('torus logarithm gap series',LB-PL)
check('torus quadratic gap zero',(LB-PL)[2]==0)
check('torus quartic gap 3/16',(LB-PL)[4]==QQ(3)/16)
ss=RI(1)/2; rr=(1-ss*ss).sqrt()
finite_torus_gap=-(RI(3)/2)*(1-ss*ss).log()+6*((1+rr)/2).log()
emit('torus exact gap at t=1/2 interval',finite_torus_gap)
check('torus finite exact gap positive',finite_torus_gap.lower()>0)

# Raw CME restriction counterexample, with equation (4) right/left conventions.
# Variables q=(x,y,z,c1,c2), antifields=(xp,yp,zp,c1p,c2p).
# S is independent of c1p,c2p, so only physical pairs contribute below.
RR=PolynomialRing(QQ,names=('x','y','z')); x,y,z=RR.gens()
EE=ExteriorAlgebra(RR,names=('xp','yp','zp','c1','c2'))
xp,yp,zp,c1,c2=EE.gens()
def exterior_left_derivative(f,i):
    result=EE.zero()
    for key,val in f.monomial_coefficients().items():
        ids=list(key)
        if i in ids:
            position=ids.index(i)
            rest=ids[:position]+ids[position+1:]
            mon=prod((EE.gen(j) for j in rest),EE.one())
            result += (-1)**position*val*mon
    return result
def ordinary_derivative(f,v):
    return sum((val.derivative(v)*EE.monomial(key) for key,val in f.monomial_coefficients().items()),EE.zero())
def selfbracket_even(f):
    return 2*sum((ordinary_derivative(f,v)*exterior_left_derivative(f,i) for i,v in enumerate([x,y,z])),EE.zero())
Sfull=xp*c1+yp*c2+zp*(y*c1+x*c2)
Sraw=xp*c1+zp*x*c2
full_residual=selfbracket_even(Sfull)
raw_residual=selfbracket_even(Sraw)
emit('full CME selfbracket',full_residual)
emit('raw restricted CME selfbracket',raw_residual)
check('full action satisfies CME',full_residual==0)
check('raw paired restriction violates CME',raw_residual==-2*zp*c1*c2 and raw_residual!=0)

emit('Passed checks',str(sum(checks.values()))+'/'+str(len(checks)))
source=OUT/'checks.py'
metadata={'sage_version':sage_version,'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'checks':checks,'all_passed':all(checks.values()),'coefficient_convention':'all-even then all-odd; coefficient-left Jacobians; no complex conjugation in odd-symplectic adjoint'}
(OUT/'actual-output.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
(OUT/'actual-results.json').write_text(json.dumps(metadata,indent=2)+'\n',encoding='utf-8')
print('Archived output: '+str(OUT/'actual-output.txt'))
print('Archived metadata: '+str(OUT/'actual-results.json'))
