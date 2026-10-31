"""Native Sage exterior-algebra checks for the exact finite graded Ward diagnostic.
Run in fresh Sage, with Python syntax (no preparser).  Matrix identities are also
checked independently in checks.wl.  This is not a continuum BV construction.
"""
from sage.all import QQ, PolynomialRing, ExteriorAlgebra, matrix, identity_matrix, save
from pathlib import Path
import json, os, tempfile
import sage.version

R = PolynomialRing(QQ, names=('x','z','y1','y2','t','h','ueta','uchi'))
F = R.fraction_field()
x,z,y1,y2,t,h,ueta,uchi = F.gens()
E = ExteriorAlgebra(F, names=('p','q','v1','v2','eta','chi'))
p,q,v1,v2,eta,chi = E.gens()
generators = E.gens()

def monomial(indices):
    result = E.one()
    for i in indices:
        result *= generators[i]
    return result

def d_odd(f, index):
    result = E.zero()
    for key, coefficient in E(f).monomial_coefficients().items():
        indices = tuple(key)
        if index in indices:
            position = indices.index(index)
            remaining = indices[:position] + indices[position+1:]
            result += ((-1)**position) * coefficient * monomial(remaining)
    return result

def d_even(f, variable):
    result = E.zero()
    for key, coefficient in E(f).monomial_coefficients().items():
        result += coefficient.derivative(variable) * monomial(tuple(key))
    return result

def parity(f):
    parities = {len(tuple(key)) % 2 for key in E(f).monomial_coefficients()}
    if not parities:
        return 0
    if len(parities) != 1:
        raise ValueError('Bracket requires a homogeneous first argument')
    return parities.pop()

def delta(f):
    # Right derivative acts first; each odd position carries the minus sign.
    return (d_even(d_odd(f,0),x) + d_even(d_odd(f,1),z)
          + d_even(d_odd(f,2),y1) + d_even(d_odd(f,3),y2)
          - d_odd(d_even(f,ueta),4) - d_odd(d_even(f,uchi),5))

def bracket(f,g):
    pf = parity(f)
    return ((-1)**pf) * (delta(E(f)*E(g)) - delta(f)*E(g)
                        - ((-1)**pf)*E(f)*delta(g))

mu = 1+t
D = matrix(F, [[1,0],[0,2]])
B = matrix(F, [[0,1],[1,0]])
Kb = identity_matrix(F,2) + z*D + t*B
Cb = Kb.inverse()
Ko = matrix(F, [[0,mu],[-mu,0]])
Co = Ko.inverse()
Fuv = E(y1*y2) + eta*chi
S2 = E(((1+z)*y1*y1 + 2*t*y1*y2 + (1+2*z)*y2*y2)/2) + mu*eta*chi
S = E(mu*x) + S2
Gamma = p*(E(x)+Fuv)/mu
nu = E(mu)
Gamma0 = p*x/mu
Gamma2 = p*Fuv/mu

# Wick operator 1/2 C^{ij} d_j^L d_i^L; covariance coefficients on the left.
def wick(f):
    result = E.zero()
    ev = [y1,y2]
    for i in range(2):
        for j in range(2):
            result += Cb[i,j] * d_even(d_even(f,ev[i]),ev[j])/2
            result += Co[i,j] * d_odd(d_odd(f,4+i),4+j)/2
    return result

g = (Cb*B).trace()/2 - 1/mu
gamma1 = p*g/mu
W0 = E(mu*x)
gamma = Gamma0 + h*gamma1
one_loop_t_derivative = E(g-1/mu)
# W_t = x + h*(g-1/mu), W_x = mu; W has no retained antifields.
full_ward = E(x) + h*one_loop_t_derivative - mu*d_odd(gamma,0) + h*delta(gamma)

# Independent UV canonical rotation at one generic rational matrix point.
T = matrix(F, [[0,-1],[1,0]])
Gamma_rotation = v1*(-y2) + v2*y1
Arot = matrix(F, [[QQ(3)/10,QQ(1)/10],[QQ(1)/10,QQ(3)/10]])
Krot = identity_matrix(F,2) + Arot
Hrot = Krot*T - T*Krot
Srot = E(x + (Krot[0,0]*y1*y1 + 2*Krot[0,1]*y1*y2 + Krot[1,1]*y2*y2)/2) + eta*chi
Srot_derivative = E((Hrot[0,0]*y1*y1 + 2*Hrot[0,1]*y1*y2 + Hrot[1,1]*y2*y2)/2)

checks = {
    'native exterior anticommutation': p*eta == -eta*p,
    'native exterior odd square': eta*eta == E.zero(),
    'Darboux even-position bracket': bracket(E(x),p) == E.one(),
    'Darboux odd-position bracket': bracket(eta,E(ueta)) == E.one(),
    'reversed odd-position bracket': bracket(E(ueta),eta) == -E.one(),
    'action even': parity(S) == 0,
    'generator odd': parity(Gamma) == 1,
    'action CME': bracket(S,S) == E.zero(),
    'action BV Laplacian': delta(S) == E.zero(),
    'exact source action transport': d_even(S,t) == bracket(S,Gamma),
    'nonzero full generator divergence': delta(Gamma) == E(1/mu),
    'source closedness cross term': bracket(S,nu) == E.zero(),
    'source Laplacian': delta(nu) == E.zero(),
    'exact source semidensity transport': d_even(nu,t) == bracket(nu,Gamma) + nu*delta(Gamma),
    'odd Wick sign': wick(eta*chi) == E(-1/mu),
    'even offdiagonal Wick insertion': wick(E(y1*y2)) == E(Cb[0,1]),
    'coefficient-first odd generator Wick insertion': wick(Gamma2) == gamma1,
    'no higher Gaussian insertion Wick terms': wick(wick(Gamma2)) == E.zero(),
    'one-loop Ward with source and insertion': one_loop_t_derivative == bracket(W0,gamma1) - delta(Gamma0),
    'exact full Gaussian Ward': full_ward == E.zero(),
    'source omission nonzero control': one_loop_t_derivative + E(1/mu) - bracket(W0,gamma1) + delta(Gamma0) == E(1/mu),
    'insertion omission nonzero control': one_loop_t_derivative + delta(Gamma0) == E(g),
    'rotation canonical Hessian derivative': bracket(Srot,Gamma_rotation) == Srot_derivative,
    'rotation generator divergence zero': delta(Gamma_rotation) == E.zero(),
    'rotation insertion exactly zero on UV Lagrangian': all(2 in tuple(key) or 3 in tuple(key) for key in Gamma_rotation.monomial_coefficients()),
}
report = {
    'kernel': sage.version.version,
    'algebra': 'native Sage ExteriorAlgebra over a rational function field; explicit left derivatives',
    'checks': checks,
    'all_passed': all(value is True for value in checks.values()),
    'failed_labels': [key for key,value in checks.items() if value is not True],
    'exact_values': {
        'S': str(S), 'Gamma': str(Gamma), 'nu': str(nu),
        'delta_Gamma': str(delta(Gamma)), 'wick_eta_chi': str(wick(eta*chi)),
        'gamma0': str(Gamma0), 'gamma1': str(gamma1),
        'one_loop_t_derivative': str(one_loop_t_derivative),
        'full_ward_residual': str(full_ward),
        'rotation_hessian_variation': str(Hrot),
    }
}
store = Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out = Path(tempfile.mkdtemp(prefix='ward-sage-',dir=store))
(out/'actual-output.json').write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
save(report,str(out/'actual-output.sobj'))
print(json.dumps({'result':str(out/'actual-output.json'), 'native':str(out/'actual-output.sobj'),
                  'all_passed':report['all_passed'], 'failed_labels':report['failed_labels'],
                  'check_count':len(checks)},indent=2))
