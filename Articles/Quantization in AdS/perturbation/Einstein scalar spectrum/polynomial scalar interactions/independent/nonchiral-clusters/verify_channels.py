#!/usr/bin/env sage -python
"""Exact finite checks of independent Racah channel formula and rank theorem.

Only the direct-comparison section imports the first-stage Fock engine.
It is not used to construct the channel Gram or rank formula.
All output is written beside this script; bytecode generation is disabled.
"""
import sys,json,time
from pathlib import Path
sys.dont_write_bytecode=True
from sage.all import *
from channel_gram import *

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent.parent
checks=[]
def record(label,condition,detail=None):
    value=bool(condition)
    checks.append({'label':label,'passed':value,'detail':detail})
    if not value:
        raise AssertionError(label+': '+str(detail))


def nonzero_charpoly(M):
    p=M.charpoly('z')
    while p.degree()>0 and p[0]==0:
        p=p//p.parent().gen()
    return p

def sturm_above_one(p):
    seq=[p]
    if p.degree()>0:
        seq.append(p.derivative())
        while True:
            rem=-(seq[-2] % seq[-1])
            if rem==0:
                break
            seq.append(rem)
    def variations(values):
        signs=[1 if v>0 else -1 for v in values if v!=0]
        return sum(a!=b for a,b in zip(signs,signs[1:]))
    return variations([f(1) for f in seq])-variations([f.leading_coefficient() for f in seq])

start=time.time()
for d in [QQ(3)/2,QQ(2),QQ(5)/2]:
    for T in range(6):
        alpha=2*d
        fs=[coupled_polynomial(alpha,d,T,r) for r in range(T+1)]
        R=fs[0].parent();x,y,z=R.gens()
        ns=[two_primary_norm(alpha,d,r)*two_primary_norm(alpha+d+2*r,d,T-r)
            for r in range(T+1)]
        for r,f in enumerate(fs):
            record('primary-polynomial %s,%s,%s'%(d,T,r),
                   f.derivative(x)+f.derivative(y)+f.derivative(z)==0)
            record('coupled-norm %s,%s,%s'%(d,T,r),monomial_inner(f,f,alpha,d)==ns[r])
        C=matrix(QQ,T+1,T+1,lambda a,b:monomial_inner(fs[a],fs[b].subs({y:z,z:y}),alpha,d))
        D=matrix.diagonal(QQ,ns)
        record('Racah-involution %s,%s'%(d,T),C*D.inverse()*C==D)
print('Racah polynomial checks passed',flush=True)

# Independent comparison: finite bulk Jacobi/Beta integrals and Wick factors.
sys.path.insert(0,str(ROOT/'code'))
from contact_blocks import compress_primary
for d in [QQ(3)/2,QQ(2),QQ(5)/2]:
    for P,Q in [(0,0),(1,0),(1,1),(2,0),(2,1),(2,2),(3,1),(3,2),(3,3),(4,2)]:
        k=3
        M=channel_data(d,k,P,Q)['matrix']
        basis,B,g,A=compress_primary(d,2*k,k+1,P,Q)
        # Fock engine strips c_(2k)=(2pi)^(1-k)/2; our unit is c_(2k)/k!.
        A=factorial(k)*A
        record('bulk-Fock-nonzero-spectrum %s,%s,%s'%(d,P,Q),
               nonzero_charpoly(M)==nonzero_charpoly(A),
               {'shell':len(basis),'primary':B.ncols(),'rank':int(A.rank())})
print('Independent bulk/Fock checks passed',flush=True)

scan=[]
for k in [3,4,5,6]:
    for d in [QQ(6)/5,QQ(3)/2,QQ(2),QQ(5)/2,QQ(3),QQ(7)/2,QQ(5)]:
        for P in range(9):
            for Q in range(P+1):
                data=channel_data(d,k,P,Q);M=data['matrix']
                actual=M.rank();expected=exact_rank(k,P,Q)
                record('rank %s,%s,%s,%s'%(k,d,P,Q),actual==expected)
                record('Gram symmetry %s,%s,%s,%s'%(k,d,P,Q),
                       data['symmetrized_gram'].is_symmetric())
        scan.append({'k':k,'Delta':str(d),'max_grade':8})
        print('Rank scan passed k=%s Delta=%s'%(k,d),flush=True)
# Deliberate counterexample to extending N>=4 proof to N=3.
M=channel_data(QQ(2),2,3,1)['matrix']
record('k=2 extra relation counterexample',M.rank()==1,
       {'P':3,'Q':1,'rank':int(M.rank()),'charpoly':str(M.charpoly('z').factor())})

# Formal-Delta finite corroboration: all nonzero spectral products have no root >1.
F=FractionField(PolynomialRing(QQ,'d'));d=F.gen()
formal=[]
for P in range(5):
    for Q in range(P+1):
        M=channel_data(d,3,P,Q)['matrix'];r=exact_rank(3,P,Q)
        p=M.charpoly('z'); low=M.nrows()-r
        coeff=p[low]
        record('formal-Delta rank %s,%s'%(P,Q),M.rank()==r)
        if r:
            num=coeff.numerator(); den=coeff.denominator()
            nroots=sturm_above_one(num)
            droots=sturm_above_one(den)
            record('Sturm no exceptional mass %s,%s'%(P,Q),nroots==0 and droots==0)
            formal.append({'P':P,'Q':Q,'rank':r,'spectral_product':str(((-1)**r*coeff).factor()),
                           'numerator_roots_above_one':int(nroots),'denominator_roots_above_one':int(droots)})
print('Formal-Delta finite Sturm checks passed',flush=True)

# Symbolic redundancy vectors in the unnormalized rational channel basis.
for k in [3,4,5]:
    for m in range(1,6):
        N=k+1;h=d/2
        data=channel_data(d,k,m,m)
        total=(N*h+m)*(N*h+m-1)
        average=((N-2)*total+N*h*(h-1))/N
        null=vector(F,[((k*h+a)*(k*h+a-1)-average)
            /two_primary_norm(k*d+2*a,d,m-a) for a in range(m+1)])
        record('formal Casimir redundancy %s,%s'%(k,m),
               data['symmetrized_gram']*null==0)
        data=channel_data(d,k,m+1,m)
        null=vector(F,[-(m-a+1)/two_primary_norm(k*d+2*a,d,m-a+1)
                       for a in range(m+1)])
        record('formal spin-one redundancy %s,%s'%(k,m),
               data['symmetrized_gram']*null==0)
print('Formal redundancy vectors passed',flush=True)

examples=[]
for P,Q in [(0,0),(1,1),(2,1),(2,2),(3,1),(3,2),(3,3)]:
    data=channel_data(QQ(2),3,P,Q); M=data['matrix']
    examples.append({'P':P,'Q':Q,'matrix':[[str(v) for v in row] for row in M.rows()],
                     'symmetrized_gram':[[str(v) for v in row] for row in data['symmetrized_gram'].rows()],
                     'rank':int(M.rank()),'charpoly':str(M.charpoly('z').factor())})
result={'scope':'number-preserving phi^(2k), N=k+1, Delta>1',
        'unit':'lambda_(2k)/(2*k!*(2*pi)^(k-1))',
        'checks':checks,'count':len(checks),'all_passed':all(x['passed'] for x in checks),
        'rank_scan':scan,'formal_Delta_phi6':formal,'phi6_D2_examples':examples,
        'seconds':time.time()-start}
out=HERE/'exact-checks.json'
out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print('SAVED',out,'checks',len(checks),'seconds',result['seconds'],flush=True)
