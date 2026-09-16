"""Fourth-order radial-Moser flow: noncommuting Chen coefficients + 2D test.
No assumption that the time-dependent vector fields commute is made.
"""
from itertools import product
from pathlib import Path
import json
import sympy as s
V1,V2,V3,V4,B,C,D,E,F,G=s.symbols('V1 V2 V3 V4 B C D E F G',commutative=False)
W={1:[V1],2:[V2,-B],3:[V3,-C,D],4:[V4,-E,F,-G]}

def compositions(n):
    if n==0:
        yield ()
    else:
        for i in range(1,n+1):
            for tail in compositions(n-i):yield (i,)+tail

def chen(r):
    answer=0
    for ns in compositions(r):
        for ms in product(*(range(n) for n in ns)):
            a=s.Integer(1);cum=0
            for j,(n,m) in enumerate(zip(ns,ms),1):
                cum+=m;a=a*W[n][m]/(cum+j)
            answer+=a
    return s.expand(answer)

U={1:V1,
2:V2-B/2+V1**2/2,
3:V3-C/2+D/3+(V1*V2+V2*V1)/2-V1*B/3-B*V1/6+V1**3/6,
4:V4-E/2+F/3-G/4+(V1*V3+V3*V1+V2**2)/2
 -V1*C/3-C*V1/6+V1*D/4+D*V1/12-V2*B/3-B*V2/6+B**2/8
 +(V1**2*V2+V1*V2*V1+V2*V1**2)/6
 -V1**2*B/8-V1*B*V1/12-B*V1**2/24+V1**4/24}
for r in range(1,5):assert s.expand(chen(r)-U[r])==0

# Omega=(1+sum kappa^n f_n)dx wedge dy, homogeneous f_n.
# All fields in this example are radial, so the exact map a=rho(b)b
# obeys rho^2+sum 2*kappa^n f_n(b)rho^(n+2)/(n+2)=1.
x,y=s.symbols('x y');f={1:x+y,2:x*x+2*y*y,3:x*x*y+y**3,4:x**4+x*y**3}
v={n:-f[n]/s.Integer(n+2) for n in range(1,5)}
radial={V1:v[1],V2:v[2],V3:v[3],V4:v[4],B:f[1]*v[1],
 C:f[1]*v[2]+f[2]*v[1],D:f[1]**2*v[1],
 E:f[1]*v[3]+f[2]*v[2]+f[3]*v[1],
 F:f[1]**2*v[2]+2*f[1]*f[2]*v[1],G:f[1]**3*v[1]}
def apply_expr(expr,coord):
    out=0
    for term in s.Add.make_args(s.expand(expr)):
        coef,word=term.args_cnc();val=coord
        factors=[]
        for a in word:
            factors.extend([a.base]*int(a.exp) if a.is_Pow else [a])
        for a in reversed(factors):val=s.expand(radial[a]*(x*s.diff(val,x)+y*s.diff(val,y)))
        out+=s.Mul(*coef)*val
    return s.expand(out)
rho=[s.Integer(1)]+[s.cancel(apply_expr(U[r],x)/x) for r in range(1,5)]
for r in range(1,5):assert s.expand(apply_expr(U[r],y)-rho[r]*y)==0

def mul(a,b):return [s.expand(sum(a[j]*b[n-j] for j in range(n+1))) for n in range(5)]
def power(a,n):
    z=[s.Integer(1),0,0,0,0]
    for _ in range(n):z=mul(z,a)
    return z
res=power(rho,2);res[0]-=1
for n in range(1,5):
    pn=power(rho,n+2)
    for k in range(n,5):res[k]+=s.Rational(2,n+2)*f[n]*pn[k-n]
assert all(s.expand(z)==0 for z in res)
result={'noncommuting_time_ordered_coefficient_identities':4,'radial_coordinate_consistency_checks':4,
 'radial_volume_identity_coefficients_through_kappa4':5,'formal_order':4,
 'convergence_claim':False}
Path(__file__).with_name('moser_checks.json').write_text(json.dumps(result,indent=2))
print(result)
