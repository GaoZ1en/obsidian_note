"""Exact checks of the fixed-transverse-injection coordinates and tensor weight."""
import sys
from pathlib import Path
import json
import sympy as S

records=[]
def check(name, expr):
    expr=S.factor(expr)
    assert expr==0,(name,expr)
    records.append({"name":name,"residual":str(expr)})

x,y,rp,rm,r1,r2,B,Q1,Q2,b1,b2=S.symbols(
    'x y rp rm r1 r2 B Q1 Q2 b1 b2')
A=B-rp
P1=Q1-r1+b1
P2=Q2-r2+b2
pm=(x+P1*P1+P2*P2)/A
qm=(y+Q1*Q1+Q2*Q2)/B
om=rm-qm+pm
pp=S.Matrix([A,pm,P1,P2])
qq=S.Matrix([B,qm,Q1,Q2])
rr=S.Matrix([rp,rm,r1,r2])
inj=S.Matrix([0,om,b1,b2])
for i,z in enumerate(qq-pp+inj-rr):
    check(f'Exact routing component {i}',z)
def mass(k):
    return k[0]*k[1]-k[2]*k[2]-k[3]*k[3]
check('p mass coordinate',mass(pp)-x)
check('q mass coordinate',mass(qq)-y)
source=S.Matrix([x,y,rp,rm,r1,r2,B,Q1,Q2])
target=S.Matrix([A,pm,P1,P2,B,qm,Q1,Q2,om])
jac=S.factor(target.jacobian(source).det())
check('Coordinate Jacobian magnitude',jac*jac-1/(A*A*B*B))

# Plus injection is removed only after the original hard transverse momentum is zero.
c,AA=S.symbols('c AA')
p_orig=S.Matrix([AA+c,x/(AA+c),0,0])
p_shift=S.Matrix([AA,x/AA,0,0])
check('Plus shift mass preservation',mass(p_orig)-mass(p_shift))
omega=S.symbols('omega')
orig_om=omega+p_orig[1]-p_shift[1]
original_injection=S.Matrix([c,orig_om,b1,b2])
shifted_injection=S.Matrix([0,omega,b1,b2])
for i,z in enumerate(-p_orig+original_injection+p_shift-shifted_injection):
    check(f'Plus shift output routing {i}',z)

# Weighted all-null tensor: x,y,omega weight 2; v,b weight 1; plus momenta weight 0.
lam,v1,v2,ww=S.symbols('lam v1 v2 ww')
p=S.Matrix([AA+c,lam**2*x/(AA+c),0,0])
q=S.Matrix([B,lam**2*(y+v1*v1+v2*v2)/B,lam*v1,lam*v2])
r=S.Matrix([B-AA,lam**2*((y+v1*v1+v2*v2)/B-x/AA+ww),
            lam*(v1+b1),lam*(v2+b2)])
eta=S.Matrix([[0,-S.Rational(1,2),0,0],
              [-S.Rational(1,2),0,0,0],[0,0,1,0],[0,0,0,1]])
pl=eta*p; ql=eta*q; rl=eta*r
dot=lambda k,l:(k.T*eta*l)[0]
xx=mass(p)
cq=-dot(p,q); cr=-dot(p,r)
Uq=xx*ql-cq*pl
Ur=xx*rl-cr*pl
Delta=cq*cr+xx*dot(q,r)
N=(Uq*Ur.T+Ur*Uq.T)/2-Delta*(xx*eta+pl*pl.T)/3
weights={}
for i in range(4):
    for j in range(i,4):
        nij=S.factor(N[i,j])
        poly=S.Poly(nij,lam)
        terms=poly.terms()
        minimum=min(monomial[0] for monomial,coef in terms if coef!=0)
        assert minimum>=4,(i,j,minimum)
        weights[f'{i}{j}']=minimum
for i,z in enumerate(N*p):
    check(f'Weighted tensor transverse {i}',z)
check('Weighted tensor trace',S.trace(eta.inv()*N))

# Soft-p coordinates contain no inverse soft component.
ap,am,a1,a2,C,V1,V2,T,Y=S.symbols('ap am a1 a2 C V1 V2 T Y')
sp=S.Matrix([ap,am,a1,a2])
sr=S.Matrix([C,(T+V1*V1+V2*V2)/C,V1,V2])
sqperp=S.Matrix([a1+V1-b1,a2+V2-b2])
sq=S.Matrix([ap+C,(Y+sqperp.dot(sqperp))/(ap+C),sqperp[0],sqperp[1]])
som=sp[1]+sr[1]-sq[1]
for i,z in enumerate(sp+sr-sq-S.Matrix([0,som,b1,b2])):
    check(f'Soft-p routing {i}',z)
check('Soft-p q mass',mass(sq)-Y)
check('Soft-p r mass',mass(sr)-T)

result={"exact_checks":records,"exact_zero_count":len(records),
        "lightfront_jacobian":str(jac),"weighted_tensor_minimum_powers":weights,
        "scope":"Exact coordinates and weights; distribution bounds proved in the companion Markdown."}
Path(__file__).with_name('partial_injection_checks.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
