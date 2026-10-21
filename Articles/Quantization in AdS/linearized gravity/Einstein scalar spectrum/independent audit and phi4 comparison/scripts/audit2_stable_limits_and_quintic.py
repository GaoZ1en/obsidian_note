"""Fresh limit-order check and physical identification of EX09 quintic."""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import time,json
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
# Reuse only this audit's new projector/creation definitions, not manuscript code.
p=OUT/'scripts/audit2_stable_exact_checks.py'
exec(compile(p.read_text().split('# Universal coefficient reconstructed')[0],str(p),'exec'))
R0=PolynomialRing(QQ,'d');K=R0.fraction_field();d=K.gen()
g0=-2*d*d*(8*d*d-2*d-7)/((2*d-1)*(2*d+1));g2=-4*d*d+4*d/((2*d+1)*(2*d+3))
E=Chiral(K,d,6,lambda k:g0 if k==0 else g2 if k==2 else -4*d*d)
pp,A,B=E.block(6)
def infinity(f):
    f=K(f)
    if f==0:return QQ(0)
    degree=f.numerator().degree()-f.denominator().degree()
    assert degree<=0
    return QQ(0) if degree<0 else QQ(f.numerator().leading_coefficient()/f.denominator().leading_coefficient())
Al=matrix(QQ,[[infinity(z/d) for z in row] for row in A]);Bl=matrix(QQ,[[infinity(z/d) for z in row] for row in B])
T=6*Al+Bl+9*identity_matrix(QQ,4)
check('ST11_fixedN6_P6_not_first_low_limit',(T-QQ(27)/34*identity_matrix(QQ,4)).det()!=0)
check('ST11_contact_minimum_exact',T.det()==0)
contact={'N':6,'P':6,'gap_matrix':str(T),'gap_characteristic_polynomial':str(T.charpoly()),'det_at_27_over_34':str((T-QQ(27)/34*identity_matrix(QQ,4)).det()),'gaps_numerical':[str(x) for x,m in T.charpoly().roots(AA)],'scope':'Only contradicts an unqualified fixed-N reading; manuscript says at first low layer.'}
# Literal nonuniqueness in ST06 unless weighted homogeneity is included.
RR=PolynomialRing(QQ,['x','y']);x,y=RR.gens();J=y*y+4*x**3
check('ST06_F1_monic_nonuniqueness',J*(y+x).derivative(y,2)==0 and y+x!=y)

# EX09 physical N3,P6,Q3 block at d=2.
d=QQ(2);K=QQ
R=PolynomialRing(K,['x','y']);x,y=R.gens()
def cp(f,pair):
    if pair==12:return -(x-y)**2*f.derivative(x).derivative(y)+d*(x-y)*(f.derivative(x)-f.derivative(y))+d*(d-1)*f
    if pair==13:return x*x*(f.derivative(x,2)+f.derivative(x).derivative(y))+d*x*(2*f.derivative(x)+f.derivative(y))+d*(d-1)*f
    return y*y*(f.derivative(y,2)+f.derivative(x).derivative(y))+d*y*(f.derivative(x)+2*f.derivative(y))+d*(d-1)*f
def projectors(T):
    mons=[x**(T-i)*y**i for i in range(T+1)];cs=[(d+k)*(d+k-1) for k in range(T+1)];I=identity_matrix(K,T+1);out={}
    for pair in (12,13,23):
        C=matrix(K,[[cp(f,pair).monomial_coefficient(m) for m in mons] for f in mons]).transpose()
        out[pair]=[prod((C-cs[r]*I)/(cs[k]-cs[r]) for r in range(T+1) if r!=k) for k in range(T+1)]
    return out
def gamma(k,l):
    n=min(k,l);s=abs(k-l);h=d+n;C=h*(h-1);mu=d*(d-2);u=4*mu-8*C
    if s==0:return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if s==2:return u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u
P,Q=6,3;PL,PR=projectors(P),projectors(Q)
W=sum((gamma(k,l)*PL[pair][k].tensor_product(PR[pair][l]) for pair in (12,13,23) for k in range(P+1) for l in range(Q+1) if (k+l)%2==0),zero_matrix(QQ,28))
R4=PolynomialRing(QQ,['x','y','u','v']);x,y,u,v=R4.gens();mons=[x**(P-i)*y**i*u**(Q-j)*v**j for i in range(P+1) for j in range(Q+1)]
z=[x,y,R4(0)];w=[u,v,R4(0)];av=zero_matrix(QQ,28)
for perm in Permutations(3):
    a,b,c=[int(k)-1 for k in perm]
    mapping={x:z[a]-z[c],y:z[b]-z[c],u:w[a]-w[c],v:w[b]-w[c]}
    M=matrix(QQ,[[f.subs(mapping).monomial_coefficient(m) for m in mons] for f in mons]).transpose()
    av+=M/6
check('EX09_Bose_projection_rank',av*av==av and av.rank()==5)
C=av.column_space().basis_matrix().transpose();piv=C.transpose().pivots();Crows=C.matrix_from_rows(piv)
Wsmall=Crows.inverse()*(W*C).matrix_from_rows(piv)
check('EX09_invariant_restriction',W*C==C*Wsmall)
X=PolynomialRing(QQ,'X').gen();f5=3713039955625*X**5-942938552055500*X**4+74501974772024800*X**3-2003576214981165440*X**2+19936439419181140992*X-54992948200676982784
check('EX09_physical_quintic_identification',(Wsmall+240*identity_matrix(QQ,5)).charpoly('X')==f5/f5.leading_coefficient())
path=OUT/'results/audit2_stable_limits_and_quintic.json'
path.write_text(json.dumps({'sage_version':sage_version,'all_passed':all(r['passed'] for r in records),'checks':records,'contact_limit':contact,'physical_quintic_matrix':str(Wsmall)},indent=2)+'\n')
print('RESULT',path)
