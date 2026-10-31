"""Narrow supplied-text audit check; does not import or rerun frozen BV checks.
Run with: sage --nodotsage -python check_super_chain_rule.py
"""
from sage.all import QQ, PolynomialRing
from pathlib import Path
import json
import sage.version
R=PolynomialRing(QQ,names=('A','B','z'))
A,B,z=R.gens()
# Exterior order alpha, eta, chi; coefficients in QQ[A,B,z].
def clean(F): return {m:R(c) for m,c in F.items() if R(c)!=0}
def scalar(c): return clean({0:c})
def add(F,G):
    H=dict(F)
    for m,c in G.items(): H[m]=H.get(m,R(0))+c
    return clean(H)
def scale(c,F): return clean({m:c*v for m,v in F.items()})
def mul(F,G):
    H={}
    for m,c in F.items():
        for n,d in G.items():
            if m&n: continue
            inversions=sum((n&((1<<i)-1)).bit_count() for i in range(3) if m&(1<<i))
            H[m|n]=H.get(m|n,R(0))+((-1)**inversions)*c*d
    return clean(H)
def dl(F,i):
    if i==0: return clean({m:c.derivative(z) for m,c in F.items()})
    bit=1<<i # i=1 eta, i=2 chi
    return clean({m^bit:((-1)**((m&(bit-1)).bit_count()))*c for m,c in F.items() if m&bit})
def parity(F):
    p={m.bit_count()%2 for m in F}
    assert len(p)<=1
    return p.pop() if p else 0
def dr(F,i): return scale((-1)**(parity(F)+1),dl(F,i)) if i else dl(F,i)
def Hessian(F): return [[dr(dl(F,i),j) for j in range(3)] for i in range(3)]
def matmul(X,Y):
    return [[sumE([mul(X[i][k],Y[k][j]) for k in range(3)]) for j in range(3)] for i in range(3)]
def sumE(items):
    out={}
    for F in items: out=add(out,F)
    return out
zero={};one=scalar(1)
alpha={1:R(1)};eta={2:R(1)};chi={4:R(1)}
S0=add(scalar(A*z*z/2),scale(B,mul(eta,chi)))
Sphi=add(S0,scale(A*z,mul(alpha,eta)))
H0=Hessian(S0);Hphi=Hessian(Sphi)
J=[[one,alpha,zero],[zero,one,zero],[zero,zero,one]]
JT=[[J[j][i] for j in range(3)] for i in range(3)]
eps=(0,1,1)
Jst=[[scale((-1)**(eps[i]*(eps[j]+eps[i])),J[j][i]) for j in range(3)] for i in range(3)]
ordinary=matmul(matmul(JT,H0),J)
graded=matmul(matmul(Jst,H0),J)
residual=[[add(Hphi[i][j],scale(-1,ordinary[i][j])) for j in range(3)] for i in range(3)]
checks={
 'H_eta_z_is_minus_A_alpha':Hphi[1][0]==scale(-A,alpha),
 'ordinary_transpose_predicts_plus_A_alpha':ordinary[1][0]==scale(A,alpha),
 'ordinary_transpose_residual_is_minus_2_A_alpha':residual[1][0]==scale(-2*A,alpha),
 'graded_transpose_recovers_full_Hessian':Hphi==graded,
 'ordinary_transpose_fails':Hphi!=ordinary,
}
# Ghost-degree checks for the two supplied examples.
gh1={'x':0,'p':-1,'eta':1,'a':-2,'chi':-1,'b':0,'m':0,'t':0,'h':0}
gh2={'q':0,'p':-1,'r':0,'s':-1,'c':1,'b':-2,'d':1,'e':-2,'u':0,'v':-1,'t':0,'h':0}
def degree(g,word): return sum(g[name] for name in word)
for word in [('m','eta','chi'),('x','x'),('t','x','eta','chi')]:
    checks['odd_example_action_'+''.join(word)]=degree(gh1,word)==0
checks['odd_example_generator_degree']=degree(gh1,('p','eta','chi'))==-1
checks['odd_example_Berezin_measure_degree']=-(gh1['eta']+gh1['chi'])==0
for word in [('p','c'),('s','d'),('t','b','c','r','d'),('u','u'),('u','r','r')]:
    checks['even_example_action_'+''.join(word)]=degree(gh2,word)==0
checks['even_example_generator_degree']=degree(gh2,('b','c','u'))==-1
checks['even_example_gamma1_degree']=degree(gh2,('t','b','c'))==-1
checks['even_example_log_amplitude_degree']=degree(gh2,('t','u'))==0
assert all(type(v) is bool for v in checks.values())
assert all(checks.values())
result={'sage_version':sage.version.version,'checks':checks,'checks_total':len(checks),'failed':0,
 'H_eta_z':'-A*alpha','ordinary_transpose_eta_z':'+A*alpha','residual_eta_z':'-2*A*alpha',
 'graded_residual':'zero 3x3 matrix'}
out=Path(__file__).resolve().parent
(out/'narrow-check-results.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print('PASS: %d narrow exact checks; ordinary-transpose residual = -2*A*alpha; graded residual = 0.'%len(checks))
