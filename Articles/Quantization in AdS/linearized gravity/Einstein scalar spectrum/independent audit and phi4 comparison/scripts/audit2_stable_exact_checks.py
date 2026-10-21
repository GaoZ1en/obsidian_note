"""Fresh exact reconstruction; no imports from manuscript engines or validators.
Run in Sage 10.x with exec(compile(Path(__file__).read_text(), __file__, 'exec')).
Rank-one descendants use the physical Bargmann Gram; creation counting is literal.
"""
from sage.all import *
from pathlib import Path
import json, time, hashlib
OUT = Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
records=[]
t0=time.time()
def check(label, condition, **details):
    ok=bool(condition)
    records.append(dict(label=label, passed=ok, **details))
    print(label, 'PASS' if ok else 'FAIL', flush=True)
    if not ok:
        raise AssertionError(label)
def rf(d,n): return prod(d+i for i in range(n))
def pair_projectors(K,d,T):
    h=vector(K,[factorial(j)*factorial(T-j)/(rf(d,j)*rf(d,T-j)) for j in range(T+1)])
    ans=[]
    for k in range(T+1):
        v=vector(K,[(-1)**(k-j)*binomial(k,j) for j in range(k+1)])
        for n in range(k,T):
            w=vector(K,n+2)
            for j in range(n+1):
                w[j]+=(n-j+d)*v[j]
                w[j+1]+=(j+d)*v[j]
            v=w
        dual=vector(K,[v[j]*h[j] for j in range(T+1)])
        ans.append(v.column()*dual.row()/(dual*v))
    return ans,diagonal_matrix(h)

class Chiral:
    def __init__(self,K,d,maxP,gamma):
        self.K,self.d,self.maxP,self.gamma=K,d,maxP,gamma
        self.R=PolynomialRing(K,['a'+str(i) for i in range(1,maxP+1)])
        self.a=[self.R(1)]+list(self.R.gens())
        a=self.a
        self.c=[self.R(1),self.R(0)]+[sum(binomial(p,i)*(-a[1])**(p-i)*a[i] for i in range(p+1)) for p in range(2,maxP+1)]
        self.F={}
        self.proj={}
        for T in range(maxP+1):
            pp,gg=pair_projectors(K,d,T)
            self.proj[T]=pp
            W=sum((gamma(k)*pp[k] for k in range(0,T+1,2)),matrix(K,T+1,T+1))
            if T<=6:
                check('pair_physical_Gram_T'+str(T)+'_'+str(K.ngens()), W.transpose()*gg==gg*W)
            for i in range(T+1):
                self.F[i,T-i]=sum(W[j,i]*a[j]*a[T-j] for j in range(T+1))
    def count(self,f): return sum(self.a[i]*f.derivative(self.a[i]) for i in range(1,self.maxP+1))
    def A(self,f):
        return sum((self.F[0,i]-self.gamma(0)*self.a[i])*f.derivative(self.a[i]) for i in range(1,self.maxP+1))
    def B(self,f):
        out=-self.A(self.count(f))-self.gamma(0)/2*(self.count(self.count(f))-self.count(f))
        for i in range(1,self.maxP+1):
            for j in range(i,self.maxP+1-i):
                out+=self.F[i,j]*f.derivative(self.a[i]).derivative(self.a[j])/(2 if i==j else 1)
        return out
    def basis(self,P):
        parts=[tuple(p) for p in Partitions(P) if 1 not in p]
        parts.sort(key=lambda p:(0 if all(z in (2,3) for z in p) else 1, -len(p),p))
        return parts
    def monomial(self,p,centered=True): return prod((self.c if centered else self.a)[i] for i in p)
    def block(self,P):
        pp=self.basis(P)
        mons=[self.monomial(p,False) for p in pp]
        colsA=[];colsB=[]
        for p in pp:
            f=self.monomial(p)
            aa=self.R(self.R(self.A(f)).subs({self.a[1]:0}));bb=self.R(self.R(self.B(f)).subs({self.a[1]:0}))
            ca=vector(self.K,[aa.monomial_coefficient(m) for m in mons])
            cb=vector(self.K,[bb.monomial_coefficient(m) for m in mons])
            assert aa==sum(ca[i]*mons[i] for i in range(len(pp)))
            assert bb==sum(cb[i]*mons[i] for i in range(len(pp)))
            colsA.append(ca);colsB.append(cb)
        return pp,matrix(colsA).transpose(),matrix(colsB).transpose()
    def low(self,P,s):
        pp,A,B=self.block(P)
        n=len(pp); l=sum(all(z in (2,3) for z in p) for p in pp)
        K=A-s*self.d*P*identity_matrix(self.K,n)
        check('zero_low_columns_P'+str(P),K[:,:l].is_zero())
        T=K[:l,l:];D=K[l:,l:]
        q=block_matrix(self.K,[[identity_matrix(self.K,l),-T*D.inverse()], [zero_matrix(self.K,n-l,l),zero_matrix(self.K,n-l,n-l)]])
        R=block_matrix(self.K,[[zero_matrix(self.K,l,l),T*D.inverse()**2],[zero_matrix(self.K,n-l,l),D.inverse()]])
        check('oblique_inverse_P'+str(P),K*R==R*K==identity_matrix(self.K,n)-q and (q*R).is_zero() and (R*q).is_zero())
        return pp,A,B,q,R,(q*B)[:l,:l],(-q*B*R*B)[:l,:l]

# Universal coefficient reconstructed over Q(d,v,w).
base=PolynomialRing(QQ,['d','v','w']);K=base.fraction_field();d,v,w=K.gens()
U=Chiral(K,d,6,lambda k: v if k==4 else w if k==6 else K(0))
pp,A,B,q,R,Blow,C2=U.low(6,K(0))
x,y=U.a[2],U.a[3];J=y*y+4*x**3
Dstar=15*(2*d+7)*(d+5)*v+(2*d+3)*(d+2)*w
eps=27*v*w*(d+3)*(d+4)*(2*d+9)/(2*(2*d+5)*Dstar)
q6=-5/Dstar*(3*(2*d+7)*v*(3*(d-3)*x**3+2*(d+2)*y**2)-(2*d+3)*(d+2)*w*(9*x**3+2*y**2))
mons=[U.monomial(p,False) for p in pp]
check('universal_retraction_c6',sum(q[i,pp.index((6,))]*mons[i] for i in range(len(pp)))==q6)
for j,p in enumerate(pp[:Blow.ncols()]):
    expected=eps/2*J*mons[j].derivative(y,2)
    check('universal_Blow_P6_'+str(p),sum(Blow[i,j]*mons[i] for i in range(Blow.nrows()))==expected)
check('universal_w0_gap',eps.subs({w:0})==0)

# Einstein C2 full determining matrices, independently rebuilt over Q(d).
base=PolynomialRing(QQ,'d');K=base.fraction_field();d=K.gen()
g0=-2*d*d*(8*d*d-2*d-7)/((2*d-1)*(2*d+1))
g2=-4*d*d+4*d/((2*d+1)*(2*d+3))
s=(g2-g0)/(2*(2*d+1))
E=Chiral(K,d,9,lambda k: g0 if k==0 else g2 if k==2 else -4*d*d)
x,y=E.a[2],E.a[3];J=y*y+4*x**3
D3=34*d**3+273*d*d+611*d+240
D4=86*d**4+1085*d**3+4743*d*d+7834*d+2800
E4=214*d**4+2709*d**3+11915*d*d+19854*d+7056
P7=392*d**7+9492*d**6+89350*d**5+421595*d**4+1048276*d**3+1289469*d*d+633490*d+102000
P14=67104*d**14+3197136*d**13+66188408*d**12+795919444*d**11+6226850796*d**10+33484727498*d**9+127072393159*d**8+343156515762*d**7+655642305361*d**6+869816630456*d**5+776152186308*d**4+445514734144*d**3+155217203264*d*d+29611287360*d+2362752000
P11=16*d**11-1776*d**10-52556*d**9-618940*d**8-4053536*d**7-16362829*d**6-41978760*d**5-67587211*d**4-64664772*d**3-33117132*d*d-8025696*d-677376
r0=-162*(d+2)*(d+3)*(d+4)**2*(2*d*d+9*d+3)*P7/((d+1)*(2*d-1)*(2*d+3)*D3**3)
r1=24*(d+2)**2*(d+3)*(d+4)**2*(2*d*d+9*d+3)/((d+1)*(2*d-1)*(2*d+3)*D3)
r2=-54*(d+3)*(d+4)*P14/(5*(d+1)*(2*d-1)*(2*d+1)*(2*d+3)*(2*d+7)*D3**2*D4)
r3=-405*(d+2)*(d+3)*(d+4)*(d+5)*(2*d*d+11*d+6)**2*P11/((d+1)*(2*d-1)*(2*d+1)*(2*d+3)*(2*d+7)*D3**3*E4)
epsilon=54*d*(d+3)*(d+4)**2*(2*d*d+9*d+3)/((2*d-1)*(2*d+3)*D3)
matrices={}
for P in (6,8,9):
    pp,A,B,q,R,Blow,C2=E.low(P,s)
    l=Blow.nrows();mons=[E.monomial(p,False) for p in pp[:l]]
    for j,f in enumerate(mons):
        b_expected=s*P*(P-1)*f+epsilon/2*J*f.derivative(y,2)
        c_expected=J*(r0*f.derivative(y,2)+r1*f.derivative(x,3)+r2*x*f.derivative(x).derivative(y,2)+r3*y*f.derivative(y,3))
        check('Einstein_Blow_P'+str(P)+'_col'+str(j),sum(Blow[i,j]*mons[i] for i in range(l))==b_expected)
        check('Einstein_C2_P'+str(P)+'_col'+str(j),sum(C2[i,j]*mons[i] for i in range(l))==c_expected)
    matrices[str(P)]={'basis':[[int(z) for z in p] for p in pp],'A':str(A),'B':str(B),'C2':str(C2)}
    # Entire left-character identity, not just low inputs.
    ell=vector(K,[prod(1-i for i in p) for p in pp])
    check('Einstein_character_P'+str(P),ell*A==s*d*P*ell and ell*B==s*P*(P-1)*ell)

# Printed numerical specialization and the first-layer contraction.
r_at_2=[rr.subs({d:2}) for rr in (r0,r1,r2,r3)]
check('ST08_printed_r_table_d2',r_at_2==[QQ(-1622417760)/27089251,QQ(37120)/3297,QQ(-174410861280)/3756088567,QQ(807408000)/3533212309])
def eta_exact(a,b):
    return b*(b-1)*(r0+r2*a+r3*(b-2)+2*r1*(QQ((a+1)*(a+2)*(a+3))/(2*b-3)-QQ(a*(a-1)*(a-2))/(2*b+1)))
check('ST08_printed_eta_P12_d2',eta_exact(3,2).subs({d:2})==QQ(2920079516375808)/589705905019 and eta_exact(0,4).subs({d:2})==-QQ(9620027665536)/24732486163)
check('ST06_printed_epsilon_d2',epsilon.subs({d:2})==QQ(10440)/1099)
ratio=epsilon/d
check('ST11_epsilon_mass_limit',ratio.numerator().degree()==ratio.denominator().degree() and ratio.numerator().leading_coefficient()/ratio.denominator().leading_coefficient()==QQ(27)/34)

# One singular primary Gram checked as a rational function in N at d=2.
K2=QQ;EE=Chiral(K2,QQ(2),6,lambda k: QQ(-56)/5 if k==0 else QQ(-552)/35 if k==2 else QQ(-16))
pp,A,B=EE.block(6)
KN=PolynomialRing(QQ,'N').fraction_field();N=KN.gen()
occ=list(Partitions(6));op=[EE.monomial(tuple(p),False) for p in occ]
C=matrix(QQ,[[EE.monomial(p).monomial_coefficient(o) for p in pp] for o in op])
weights=[]
for p in occ:
    counts={i:list(p).count(i) for i in set(p)}
    g=prod(factorial(n)*(factorial(i)/rf(QQ(2),i))**n for i,n in counts.items())
    weights.append(g/prod(N-j for j in range(len(p))))
Gram=C.transpose()*diagonal_matrix(KN,weights)*C
W=N*A+B
check('physical_primary_Gram_identity_P6_d2',Gram*W==W.transpose()*Gram)
check('coordinate_Euclidean_matrix_is_not_Hermitian',W!=W.transpose())
leading=matrix(QQ,[[C[i,j] if len(occ[i])==len(pp[j]) else 0 for j in range(len(pp))] for i in range(len(occ))])
check('regular_frame_distinct_leading_terms',leading.rank()==len(pp))

# Fifth-root inverse-system extrapolation counterexample (N=3).
RR=PolynomialRing(QQ,['x1','x2']);x1,x2=RR.gens();f=(x1*x2*(-x1-x2))**2
D=lambda g:g.derivative(x1)-g.derivative(x2)
g=f
for _ in range(5):g=D(g)
check('fifth_root_inverse_degree6_counterexample',f!=0 and g==0)

# Finite-field part of EX-09, not its identification as a physical factor.
RZ=PolynomialRing(ZZ,'X');X=RZ.gen()
f5=3713039955625*X**5-942938552055500*X**4+74501974772024800*X**3-2003576214981165440*X**2+19936439419181140992*X-54992948200676982784
for p,wanted in [(23,[5]),(17,[2,3])]:
    fp=f5.change_ring(GF(p))
    factors=fp.factor();degrees=sorted([int(h.degree()) for h,e in factors for _ in range(e)])
    check('quintic_finite_field_'+str(p),degrees==wanted and fp.gcd(fp.derivative()).degree()==0, degrees=degrees)

# Exact rank threshold and stated pre-threshold examples.
def dch(r):return 0 if r<0 else r//6+1-int(r%6==1)
def d3(P,Q):return ((P+1)*(Q+1)+3*int(P%2==0)*int(Q%2==0)+2*(1,-1,0)[P%3]*(1,-1,0)[Q%3])//6
def kap3(P,Q):return sum(dch(P-12-Q-j) for j in range(Q+1))
check('rank_eventual_threshold_Q0_through20',all(d3(P,Q)-kap3(P,Q)==(Q+4)**2//4-2 for Q in range(21) for P in range(2*Q+8,2*Q+32)))
check('rank_two_prethreshold_examples',d3(17,5)-kap3(17,5)==17 and d3(18,6)-kap3(18,6)==22)

result={'method':'fresh rank-one primary-descendant projectors; exact unordered creation lift; no manuscript code imported','sage_version':str(version()),'elapsed_seconds':time.time()-t0,'all_passed':all(r['passed'] for r in records),'checks':records,'matrices':matrices}
path=OUT/'results/audit2_stable_exact_checks.json'
path.write_text(json.dumps(result,indent=2)+'\n')
print('RESULT',str(path),flush=True)
