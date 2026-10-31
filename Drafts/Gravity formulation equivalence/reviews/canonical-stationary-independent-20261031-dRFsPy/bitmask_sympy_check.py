"""Independent exact implementation: hand-written bitmask exterior product,
SymPy coefficient differentiation/simplification. No Sage exterior operations.
The same finite BV model is specified independently below.
"""
import sympy as sp
import json
from pathlib import Path

OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy')
q,r,b,e,u,t=sp.symbols('q r b e u t')
odd_names=('p','s','c','d','v')
even_names={'q':q,'r':r,'b':b,'e':e,'u':u,'t':t}
odd_names_index={name:i for i,name in enumerate(odd_names)}

class G:
    def __init__(self,data=0):
        if isinstance(data,G):
            self.a=dict(data.a)
        elif isinstance(data,dict):
            self.a={int(k):sp.simplify(v) for k,v in data.items() if sp.simplify(v)!=0}
        else:
            val=sp.sympify(data)
            self.a={} if val==0 else {0:val}
    def __add__(self,other):
        other=G(other); out=dict(self.a)
        for m,v in other.a.items():
            out[m]=out.get(m,0)+v
        return G(out)
    __radd__=__add__
    def __neg__(self):
        return G({m:-v for m,v in self.a.items()})
    def __sub__(self,other):
        return self+-G(other)
    def __rsub__(self,other):
        return G(other)+-self
    def __mul__(self,other):
        other=G(other); out={}
        for i,ai in self.a.items():
            for j,bj in other.a.items():
                if i&j:
                    continue
                crossings=sum((j&((1<<k)-1)).bit_count() for k in range(5) if i&(1<<k))
                m=i|j
                out[m]=out.get(m,0)+(-1)**crossings*ai*bj
        return G(out)
    __rmul__=__mul__
    def __truediv__(self,number):
        return self*sp.sympify(number)**(-1)
    def __pow__(self,n):
        out=G(1)
        for _ in range(n):out=out*self
        return out
    def d(self,name,right=False):
        if name in even_names:
            return G({m:sp.diff(a,even_names[name]) for m,a in self.a.items()})
        j=odd_names_index[name]; bit=1<<j; out={}
        for m,a in self.a.items():
            if m&bit:
                count=(m>>(j+1)).bit_count() if right else (m&(bit-1)).bit_count()
                out[m^bit]=(-1)**count*a
        return G(out)
    def subst(self,emap=None,omap=None):
        emap={} if emap is None else emap
        omap={} if omap is None else omap
        out=G()
        for m,a in self.a.items():
            term=G(a.subs(emap,simultaneous=True))
            for j in range(5):
                if m&(1<<j):term=term*omap.get(j,G({1<<j:1}))
            out=out+term
        return out
    def iszero(self):
        return len(G(self.a).a)==0
    def __str__(self):
        if not self.a:return '0'
        terms=[]
        for m,a in sorted(self.a.items()):
            factors='*'.join(odd_names[j] for j in range(5) if m&(1<<j))
            terms.append('('+str(a)+')'+('*'+factors if factors else ''))
        return ' + '.join(terms)

p,s,c,d,v=[G({1<<i:1}) for i in range(5)]
z={'q':G(q),'p':p,'r':G(r),'s':s,'c':c,'b':G(b),'d':d,'e':G(e),'u':G(u),'v':v}
pairs=(('q','p'),('r','s'),('c','b'),('d','e'),('u','v'))

def ab(F,H,retained=False):
    F=G(F);H=G(H); result=G()
    for a,bb in (pairs[:-1] if retained else pairs):
        result+=F.d(a,True)*H.d(bb)-F.d(bb,True)*H.d(a)
    return result

S2=G(u*u/2)+p*c+s*d
S=G((u+r*r)**2/2)+sp.exp(t*u)*p*c+s*d-2*(v-t*b*c)*r*d
Gamma=b*c*u
body=-r*r
nil=-t*sp.exp(-t*r*r)*p*c
y=G(body)+nil
Seff=sp.exp(-t*r*r)*p*c+s*d+2*t*b*c*r*d
gamma=-b*c*r*r

def jpull(F):
    result=G()
    for m,a in G(F).a.items():
        if m&(1<<odd_names_index['v']):continue
        coeff=G(a.subs(u,body))+sp.diff(a,u).subs(u,body)*nil
        result+=coeff*G({m:1})
    return result

checks=[]
outputs=[]
def test(label,residual):
    residual=G(residual)
    checks.append({'label':label,'passed':bool(residual.iszero()),'residual':str(residual)})

test('exterior odd anticommutation',p*c+c*p)
test('canonical q,p sign',ab(z['q'],p)-1)
test('canonical c,b sign',ab(c,z['b'])-1)
test('free Qq sign',ab(S2,z['q'])-c)
test('free Qb sign',ab(S2,z['b'])-p)
test('full CME',ab(S,S))
test('full isotopy',S.d('t')-ab(S,Gamma))
test('stationary equation',jpull(S.d('u')))
test('nilpotence',nil*nil)
test('exact Seff',jpull(S)-Seff)
test('exact gamma',jpull(Gamma)-gamma)
test('effective CME',ab(Seff,Seff,True))
test('effective isotopy',Seff.d('t')-ab(Seff,gamma,True))
uv=ab(S,Gamma)-ab(S,Gamma,True)
test('UV term is nonzero specified polynomial',jpull(uv)-2*b*c*r*d)
for name in z:
    test('Q tangency '+name,jpull(ab(S,z[name]))-ab(Seff,jpull(z[name]),True))

def eff(F):
    return G(F).subst({b:b*sp.exp(-t*r*r)},{2:sp.exp(t*r*r)*c,1:s-2*t*b*c*r})

def full(F):
    return G(F).subst({b:b*sp.exp(t*u)},{2:sp.exp(-t*u)*c,4:v+t*b*c})

for name in z:
    test('full flow '+name,full(z[name]).d('t')-full(ab(Gamma,z[name])))
for aa in z:
    for bb in z:
        test('full canonical '+aa+','+bb,ab(full(z[aa]),full(z[bb]))-ab(z[aa],z[bb]))
ret={name:coord for name,coord in z.items() if name not in ('u','v')}
for name in ret:
    test('retained flow '+name,eff(z[name]).d('t')-eff(ab(gamma,z[name],True)))
for aa in ret:
    for bb in ret:
        test('retained canonical '+aa+','+bb,ab(eff(z[aa]),eff(z[bb]),True)-ab(z[aa],z[bb],True))
test('full action transported',full(S)-S.subst({t:0}))
test('effective action transported',eff(Seff)-(p*c+s*d))
defect=ab(s,sp.exp(t*r*r)*c,True)
test('naive projection defect nonzero specified',defect+2*t*r*sp.exp(t*r*r)*c)
W4=-t*r*r*p*c+2*t*b*c*r*d
test('quartic canonical relation',W4.d('t')-ab(p*c+s*d,gamma,True))
# Full gauge-fixed UV Hessian has invertible body one.
H=jpull(S.d('u').d('u'))
test('UV Hessian exact',H-(1+t*t*sp.exp(-t*r*r)*p*c))
test('UV Hessian inverse exact',H*(1-t*t*sp.exp(-t*r*r)*p*c)-1)
for label,value in [('S_t',S),('y_t',y),('S_eff_t',Seff),('gamma_t',gamma),('UV bracket on graph',jpull(uv)),('naive projection defect',defect),('UV Hessian',H)]:
    outputs.append({'label':label,'value':str(value)})
report={'implementation':'independent hand-written bitmask exterior algebra with SymPy coefficients','sympy_version':sp.__version__,'count':len(checks),'all_passed':all(x['passed'] for x in checks),'outputs':outputs,'checks':checks}
(OUT/'bitmask_actual_output.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
lines=['Independent bitmask exterior implementation; SymPy '+sp.__version__,str(sum(x['passed'] for x in checks))+'/'+str(len(checks))+' exact residual checks passed.']
lines += [x['label']+' = '+x['value'] for x in outputs]
lines += [('PASS ' if x['passed'] else 'FAIL ')+x['label']+'; residual='+x['residual'] for x in checks]
(OUT/'bitmask_actual_output.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
print('\n'.join(lines[:2+len(outputs)]))
print('Saved:',OUT/'bitmask_actual_output.json')
assert report['all_passed'], 'At least one independent exact check failed.'
