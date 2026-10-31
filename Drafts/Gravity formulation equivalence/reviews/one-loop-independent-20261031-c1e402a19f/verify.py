#!/usr/bin/env sage --python
"""Self-contained exact finite BV and super-Wick verification.
Run: sage --nodotsage -python verify.py
No research-note imports. All algebra is rational over QQ in an explicitly
implemented exterior algebra; no numerical tolerance and no symbolic truth coercion.
"""
from sage.all import QQ, PolynomialRing, factorial
from pathlib import Path
import json
import platform
import sage.version

NAMES = ('x,t,m,h,ve,vf,z,A,B,c,d,e,f,r,s,k,g0,g1,g2,gF').split(',')
R = PolynomialRing(QQ, names=NAMES)
K = R.fraction_field()
VARS = dict(zip(NAMES, (K(v) for v in R.gens())))
globals().update(VARS)
ODD = ('p', 'alpha', 'beta', 'eta', 'chi')
INDEX = {name: i for i, name in enumerate(ODD)}

def bits(n):
    return int(n).bit_count()

class E:
    """Exterior polynomial; coefficients even; canonical odd order ODD."""
    def __init__(self, data=0):
        if isinstance(data, E):
            self.a = dict(data.a)
        elif isinstance(data, dict):
            self.a = {int(k): K(v) for k, v in data.items() if K(v) != 0}
        else:
            q = K(data)
            self.a = {} if q == 0 else {0: q}
    def __add__(self, other):
        o = E(other); out = dict(self.a)
        for mask, value in o.a.items(): out[mask] = out.get(mask, K(0)) + value
        return E(out)
    __radd__ = __add__
    def __neg__(self): return E({k: -v for k,v in self.a.items()})
    def __sub__(self, other): return self + (-E(other))
    def __rsub__(self, other): return E(other) - self
    def __mul__(self, other):
        o = E(other); out = {}
        for ma, ca in self.a.items():
            for mb, cb in o.a.items():
                if ma & mb: continue
                n = sum(bits(mb & ((1 << i)-1)) for i in range(len(ODD)) if ma & (1 << i))
                mask = ma | mb
                out[mask] = out.get(mask, K(0)) + (-1 if n % 2 else 1)*ca*cb
        return E(out)
    __rmul__ = __mul__
    def __pow__(self, n):
        if n < 0: return self.inverse() ** (-n)
        ans = E(1)
        for _ in range(int(n)): ans = ans * self
        return ans
    def inverse(self):
        body = self.a.get(0, K(0))
        if body == 0: raise ZeroDivisionError('Noninvertible exterior body')
        nil = self * (1/body) - 1
        ans, term = E(1), E(1)
        for _ in range(len(ODD)+1):
            term = term * (-nil)
            ans = ans + term
        assert term == 0
        return ans * (1/body)
    def __truediv__(self, other): return self * E(other).inverse()
    def __rtruediv__(self, other): return E(other) * self.inverse()
    def __eq__(self, other): return self.a == E(other).a
    def __repr__(self):
        if not self.a: return '0'
        terms = []
        for mask in sorted(self.a):
            mon = '*'.join(ODD[i] for i in range(len(ODD)) if mask & (1<<i))
            terms.append('(%s)%s' % (self.a[mask], ('*'+mon) if mon else ''))
        return ' + '.join(terms)
    def parity(self):
        ps = {bits(mask)%2 for mask in self.a}
        if not ps: return 0
        if len(ps) != 1: raise ValueError('Inhomogeneous parity')
        return ps.pop()
    def dl(self, name):
        if name in INDEX:
            i = INDEX[name]; out = {}
            for mask, coeff in self.a.items():
                if mask & (1 << i):
                    out[mask ^ (1<<i)] = ((-1)**bits(mask & ((1<<i)-1))) * coeff
            return E(out)
        var = VARS[name]
        return E({mask: coeff.derivative(var) for mask, coeff in self.a.items()})
    def dr(self, name):
        sign = (-1)**(self.parity()+1) if name in INDEX else 1
        return sign*self.dl(name)
    def sub(self, name, value):
        if name in INDEX:
            if value != 0: raise NotImplementedError('Only zero odd evaluation needed')
            bit = 1 << INDEX[name]
            return E({mask: coeff for mask, coeff in self.a.items() if not mask & bit})
        return E({mask: coeff.subs({VARS[name]: value}) for mask, coeff in self.a.items()})

p, alpha, beta, eta, chi = (E({1<<i: 1}) for i in range(len(ODD)))
PAIRS = (('x','p',0), ('eta','ve',1), ('chi','vf',1))

def bracket(F,G):
    F,G=E(F),E(G)
    return sum((F.dr(q)*G.dl(pp)-F.dr(pp)*G.dl(q) for q,pp,_ in PAIRS), E())

def Delta(F):
    F=E(F)
    return sum((((-1)**eps)*F.dl(pp).dl(q) for q,pp,eps in PAIRS), E())

def check(label, condition):
    if type(condition) is not bool:
        raise TypeError('Check not exact Python boolean: '+label)
    checks.append({'label': label, 'passed': condition})
    if not condition: raise AssertionError(label)

checks=[]
# Test the implemented derivative convention at both q parities.
for qname,pname,_ in PAIRS:
    q = E(VARS[qname]) if qname in VARS else E({1<<INDEX[qname]: 1})
    pp = E(VARS[pname]) if pname in VARS else E({1<<INDEX[pname]: 1})
    check('Darboux '+qname+','+pname, bracket(q,pp)==1 and bracket(pp,q)==-1)
# Basis-level product rule checks, including both even UV conjugates.
basis=[E({mask: x**2*ve**2*vf}) for mask in range(1<<len(ODD))]
for i,F in enumerate(basis):
    check('Delta squared basis %d'%i, Delta(Delta(F))==0)
    for j,G in enumerate(basis):
        rhs=Delta(F)*G+((-1)**F.parity())*F*Delta(G)+((-1)**F.parity())*bracket(F,G)
        check('BV product rule %d,%d'%(i,j),Delta(F*G)==rhs)

# Exact graded isotopy and exact Berezin pushforward.
M=m+t*x
S=E(x**2/2)+M*eta*chi
Gamma=p*eta*chi
check('full classical master equation', bracket(S,S)==0)
check('full Delta S vanishes', Delta(S)==0)
check('full Delta Gamma vanishes', Delta(Gamma)==0)
check('right-action isotopy',S.dl('t')==bracket(S,Gamma))
check('canonical x velocity', bracket(E(x),Gamma)==eta*chi)
check('canonical eta-conjugate velocity', bracket(E(ve),Gamma)==p*chi)
check('canonical chi-conjugate velocity', bracket(E(vf),Gamma)==-p*eta)
original_coords=[E(x),p,eta,E(ve),chi,E(vf)]
flowed_coords=[E(x)+t*eta*chi,p,eta,E(ve)+t*p*chi,chi,E(vf)-t*p*eta]
for i in range(6):
    for j in range(6):
        check('finite canonical map bracket %d,%d'%(i,j),bracket(flowed_coords[i],flowed_coords[j])==bracket(original_coords[i],original_coords[j]))
check('stationary eta equation',S.dl('eta')==M*chi)
check('stationary chi equation',S.dl('chi')==-M*eta)
check('tree generator is zero',Gamma.sub('eta',0).sub('chi',0)==0)

UV_MASK=(1<<INDEX['eta']) | (1<<INDEX['chi'])
def uv_integral(F):
    # External odd variables precede eta,chi; integral dchi deta eta chi = 1.
    return E({mask ^ UV_MASK: coeff for mask,coeff in E(F).a.items() if (mask & UV_MASK)==UV_MASK})

rho_factor=1-(M/h)*eta*chi # common exp[-x^2/(2h)] factored out
Z=(-h/m)*uv_integral(rho_factor)
Binsert=(-h/m)*uv_integral(Gamma*rho_factor)
gamma=Binsert/Z
check('exact effective density',Z==E(M/m))
check('exact generator insertion',gamma==-(h/M)*p)
# Twisted Delta after factoring exp[-V/h], V=x^2/2.
def Delta_tw(F): return Delta(F)-bracket(E(x**2/2),F)/h
check('exact full semidensity transport',rho_factor.dl('t')==Delta_tw(Gamma*rho_factor))
check('BV pushforward commutes with twisted Delta',
      (-h/m)*uv_integral(Delta_tw(Gamma*rho_factor))==Delta_tw(Binsert))
check('exact pushed density transport',Z.dl('t')==Delta_tw(Binsert))
# W=x^2/2-h log(M/m); use exact derivatives of the displayed logarithm.
Wx=E(x-h*t/M)
Wt=E(-h*x/M)
W_bracket_gamma=Wx*gamma.dl('p')
check('exact Euclidean W transport',Wt==W_bracket_gamma-h*Delta(gamma))
check('nonzero one-loop insertion',gamma/h != 0)
check('one-loop insertion contributes', bracket(E(x**2/2),gamma/h)==E(-x/M))
check('h^2 cancellation is nontrivial',
      W_bracket_gamma-Wt==E(h**2*t/M**2) and h*Delta(gamma)==E(h**2*t/M**2))
check('off-shell Gaussian ratio is not identity', Z != 1)
check('on-shell Gaussian ratio becomes identity',Z.sub('x',0)==1)
check('t=0 generator is still nonzero',gamma.sub('t',0)==-(h/m)*p)

# Nontrivial super-Gaussian with odd external coefficients.
# S2=A*z^2/2+B*eta*chi+z*(alpha*eta+beta*chi).
S_nil=B*eta*chi+z*(alpha*eta+beta*chi)
exp_nil=1-S_nil/h+S_nil**2/(2*h**2)
check('nilpotent Gaussian exponential terminates',S_nil**3==0)

def doublefact_odd(n):
    if n<=0: return 1
    out=1
    for j in range(1,n+1,2): out*=j
    return out

def even_gaussian(F):
    out={}
    for mask,coeff in E(F).a.items():
        if coeff.denominator().degree(R.gen(NAMES.index('z'))) != 0:
            raise ValueError('A z-dependent denominator was not expected')
        degree=int(coeff.numerator().degree(R.gen(NAMES.index('z'))))
        ans=K(0); deriv=coeff
        for n in range(degree+1):
            if n%2==0:
                ans += deriv.subs({z:0})/factorial(n)*doublefact_odd(n-1)*(h/A)**(n//2)
            deriv=deriv.derivative(z)
        out[mask]=ans
    return E(out)

Zmix=(-h/B)*even_gaussian(uv_integral(exp_nil))
check('mixed super-Gaussian Berezinian factor',Zmix==1+alpha*beta/(A*B))
Berezinian_relative=1-2*alpha*beta/(A*B)
check('Gaussian square cancels relative Berezinian',Zmix**2*Berezinian_relative==1)
def direct_gaussian(F):
    return ((-h/B)*even_gaussian(uv_integral(E(F)*exp_nil)))/Zmix

C=[[E(1/A)+2*alpha*beta/(B*A**2), -beta/(A*B), alpha/(A*B)],
   [-beta/(A*B), E(0), E(-1/B)+alpha*beta/(A*B**2)],
   [alpha/(A*B), E(1/B)-alpha*beta/(A*B**2), E(0)]]
H=[[E(A),alpha,beta],[-alpha,E(0),E(B)],[-beta,E(-B),E(0)]]
for i in range(3):
    for j in range(3):
        check('super inverse H*C %d,%d'%(i,j),sum((H[i][k]*C[k][j] for k in range(3)),E())==int(i==j))
        check('super inverse C*H %d,%d'%(i,j),sum((C[i][k]*H[k][j] for k in range(3)),E())==int(i==j))
UV_NAMES=('z','eta','chi')
def Pmix(F):
    # Coefficients multiply on the LEFT; rightmost derivative acts first.
    return sum((C[i][j]*E(F).dl(UV_NAMES[i]).dl(UV_NAMES[j])/2 for i in range(3) for j in range(3)),E())
def at_zero(F): return E(F).sub('z',0).sub('eta',0).sub('chi',0)
def wick(F):
    out=E(); term=E(F)
    for n in range(5):
        out+=h**n/factorial(n)*at_zero(term)
        term=Pmix(term)
    check('Wick differential series terminates',term==0)
    return out
for n in range(5):
    for a_eta in range(2):
        for a_chi in range(2):
            if n+a_eta+a_chi>4: continue
            mon=E(z**n)*(eta**a_eta)*(chi**a_chi)
            for pref_name,pref in [('1',E(1)),('p',p),('alpha',alpha),('beta',beta)]:
                F=pref*mon
                check('mixed Wick moment z%d eta%d chi%d pref%s'%(n,a_eta,a_chi,pref_name),direct_gaussian(F)==wick(F))

# A non-Gaussian normalized insertion: independent direct Gaussian moment expansion.
# Include amplitude, cubic, quartic, and disconnected denominator terms.
S3=E(c*z**3/6)+d*z*eta*chi
S4=E(e*z**4/24)+(f*z**2/2)*eta*chi
ell1=E(r*z)
ell2=E(s*z**2/2)+k*eta*chi
amp=1+ell1+ell2+ell1**2/2
interaction=1-S3/h-S4/h+S3**2/(2*h**2)
Gen=p*(E(g0+g1*z+g2*z**2/2)+gF*eta*chi)
pure_exp=1-(B/h)*eta*chi
def pure_gaussian(F): return (-h/B)*even_gaussian(uv_integral(E(F)*pure_exp))
def h_coeff(F,n):
    out=E(F)
    for _ in range(n): out=out.dl('h')
    return out.sub('h',0)/factorial(n)
D=pure_gaussian(amp*interaction)
N=pure_gaussian(Gen*amp*interaction)
check('denominator tree normalization',h_coeff(D,0)==1)
check('numerator tree insertion',h_coeff(N,0)==g0*p)
D1=h_coeff(D,1)
expected_D1=E((s+r**2)/(2*A)-k/B-e/(8*A**2)+f/(2*A*B)-r*c/(2*A**2)+r*d/(A*B)+5*c**2/(24*A**3)-c*d/(2*A**2*B))
check('disconnected denominator coefficient',D1==expected_D1)
normalized1=h_coeff(N,1)-g0*p*D1
expected1=p*(g2/(2*A)-gF/B+g1*r/A-g1*c/(2*A**2)+g1*d/(A*B))
check('normalized one-loop insertion',normalized1==expected1)
def Ppure(F): return E(F).dl('z').dl('z')/(2*A)-E(F).dl('eta').dl('chi')/B
Gen1=g1*z*p
Gen2=p*(E(g2*z**2/2)+gF*eta*chi)
wick1=at_zero(Ppure(Gen2)+Ppure(Gen1*ell1)-Ppure(Ppure(Gen1*S3))/2)
check('ordered Wick formula equals direct ratio',wick1==normalized1)

results={
    'status':'passed',
    'sage_version':sage.version.version,
    'python_version':platform.python_version(),
    'checks_total':len(checks),
    'checks_failed':sum(not c['passed'] for c in checks),
    'conventions':{
        'odd_order':list(ODD),
        'bracket':'F right_dq left_dp G - F right_dp left_dq G',
        'Delta':'d_x d_p - d_eta d_ve - d_chi d_vf (left derivatives)',
        'Berezin':'integral dchi deta eta chi = 1',
        'weight':'exp(-S/h)',
        'Wick':'P=1/2 sum Cij d_j d_i; Cij on left; rightmost derivative first'
    },
    'exact_example':{
        'S':'x^2/2+(m+t*x)*eta*chi',
        'Gamma':str(Gamma),
        'W':'x^2/2-h*log((m+t*x)/m)',
        'gamma':str(gamma),
        'density_ratio':str(Z),
        'full_transport_residual':str(S.dl('t')-bracket(S,Gamma)),
        'pushed_density_residual':str(Z.dl('t')-Delta_tw(Binsert)),
        'quantum_W_transport_residual':str(Wt-W_bracket_gamma+h*Delta(gamma)),
        'one_loop_transport':'-x/(m+t*x)',
        'uncancelled_h2_before_Delta_term':'h^2*t/(m+t*x)^2'
    },
    'mixed_super_gaussian':{
        'quadratic_action':'A*z^2/2+B*eta*chi+z*(alpha*eta+beta*chi)',
        'relative_prefactor':str(Zmix),
        'covariance':[[str(v) for v in row] for row in C]
    },
    'nonGaussian_insertion':{
        'denominator_one_loop':str(D1),
        'normalized_one_loop':str(normalized1),
        'normalized_one_loop_factored':'p*(g2/(2*A)-gF/B+g1*r/A-g1*c/(2*A^2)+g1*d/(A*B))',
        'ordered_Wick_residual':str(wick1-normalized1)
    },
    'checks':checks,
}
out=Path(__file__).resolve().parent
(out/'exact-results.json').write_text(json.dumps(results,indent=2)+'\n',encoding='utf-8')
summary='\n'.join([
    'PASS: all %d exact checks passed.'%len(checks),
    'Sage '+sage.version.version+'; Python '+platform.python_version(),
    'Exact graded model: W=x^2/2-h log((m+t*x)/m).',
    'Exact normalized generator: '+str(gamma),
    'One-loop contribution: (W0,gamma1)=-x/(m+t*x).',
    'Nonzero h^2 term before Laplacian compensation: h^2*t/(m+t*x)^2.',
    'Mixed-super Gaussian relative prefactor: 1+alpha*beta/(A*B).',
    'Non-Gaussian normalized one-loop insertion: p*(g2/(2*A)-gF/B+g1*r/A-g1*c/(2*A^2)+g1*d/(A*B)).',
    'All exact transport and ordered-Wick residuals: 0.',
    'JSON: '+str(out/'exact-results.json'),
])+'\n'
(out/'verification-summary.txt').write_text(summary,encoding='utf-8')
print(summary)
