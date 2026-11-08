"""Independent Einstein covariant-symplectic checks for sourced FG tails.

The current is obtained by varying the Einstein boundary potential, with
no canonical momentum or charge formula used. Overall ell^3/(2*kappa^2)
is suppressed. The final Fourier tests use opposite spatial momenta,
which is exactly the spatially integrated pairing.
"""
from pathlib import Path
import json
import sympy as S

u = S.symbols('u', positive=True)
I = S.I
eta5 = S.diag(1, -1, 1, 1, 1)
eta = S.diag(-1, 1, 1, 1)
ginv = u**2*eta5
sign = [-1, 1, 1, 1]
residuals = {}


def check(name, value):
    value = S.factor(S.expand(value))
    residuals[name] = str(value)
    assert value == 0, (name, value)


def gamma(a, b, c):
    # Christoffels of u^{-2}(du^2 + eta_ij dx^i dx^j).
    if a == b == c == 0:
        return -1/u
    if a == 0 and b == c and b > 0:
        return eta5[b, c]/u
    if a > 0 and ((b == 0 and c == a) or (c == 0 and b == a)):
        return -1/u
    return S.S.Zero


def derivative(f, a, K):
    return S.diff(f, u) if a == 0 else I*K[a-1]*f


def covariant_lower(h, a, b, c, K):
    return (derivative(h[b, c], a, K)
            - sum(gamma(l, a, b)*h[l, c]
                  + gamma(l, a, c)*h[b, l] for l in range(5)))


def connection_variation(h, K):
    return [[[S.expand(sum(ginv[a, d]*(
        covariant_lower(h, b, c, d, K)
        + covariant_lower(h, c, b, d, K)
        - covariant_lower(h, d, b, c, K))/2
        for d in range(5))) for c in range(5)]
        for b in range(5)] for a in range(5)]


def fg_covariant(H):
    h = S.zeros(5)
    for a in range(4):
        for b in range(4):
            h[a+1, b+1] = H[a, b]/u**2
    return h


def divergence_up(q, a, K):
    return sum(derivative(q[a, b], b, K)
               + sum(gamma(a, b, c)*q[c, b]
                     + gamma(b, b, c)*q[a, c] for c in range(5))
               for b in range(5))


def theta_variation(h1, h2, K1, K2):
    """delta_1 of sqrt(-g)(div h2^up - grad tr h2), from components."""
    h1up, h2up = ginv*h1*ginv, ginv*h2*ginv
    t1, t2 = S.trace(ginv*h1), S.trace(ginv*h2)
    dup2 = -(ginv*h1*ginv*h2*ginv + ginv*h2*ginv*h1*ginv)
    dt2 = -S.trace(ginv*h1*ginv*h2)
    dg1 = connection_variation(h1, K1)
    Ksum = [a+b for a, b in zip(K1, K2)]
    result = []
    for a in range(5):
        theta2 = divergence_up(h2up, a, K2) - sum(
            ginv[a, b]*derivative(t2, b, K2) for b in range(5))
        variation = divergence_up(dup2, a, Ksum)
        variation += sum(dg1[a][b][c]*h2up[c, b]
                         + dg1[b][b][c]*h2up[a, c]
                         for b in range(5) for c in range(5))
        variation += sum(h1up[a, b]*derivative(t2, b, K2)
                         - ginv[a, b]*derivative(dt2, b, Ksum)
                         for b in range(5))
        result.append(S.expand((t1*theta2/2+variation)/u**5))
    return result


def fg_reduced(H1, H2, K1, K2):
    t1, t2 = S.trace(eta*H1), S.trace(eta*H2)
    hu1, hu2 = eta*H1*eta, eta*H2*eta
    out = []
    radial = sum(sign[a]*sign[b]*(H1[a,b]*S.diff(H2[a,b],u)
                 - H2[a,b]*S.diff(H1[a,b],u))
                 for a in range(4) for b in range(4))
    radial += -t1*S.diff(t2,u)+t2*S.diff(t1,u)
    out.append(S.expand(radial/(2*u**3)))
    for a in range(4):
        div1 = sum(I*K1[b]*hu1[a,b] for b in range(4))
        div2 = sum(I*K2[b]*hu2[a,b] for b in range(4))
        value = (t1*(div2-I*sign[a]*K2[a]*t2)
                 -t2*(div1-I*sign[a]*K1[a]*t1))/2
        for b in range(4):
            for c in range(4):
                dg1 = I*sign[a]*(K1[b]*H1[c,a]+K1[c]*H1[b,a]
                                -K1[a]*H1[b,c])/2
                dg2 = I*sign[a]*(K2[b]*H2[c,a]+K2[c]*H2[b,a]
                                -K2[a]*H2[b,c])/2
                value += hu2[b,c]*dg1-hu1[b,c]*dg2
        value += sum(hu1[a,b]*I*K2[b]*t2
                     -hu2[a,b]*I*K1[b]*t1 for b in range(4))/2
        out.append(S.expand(value/u**3))
    return out


def arbitrary_h(prefix):
    out = S.zeros(4)
    for a in range(4):
        for b in range(a,4):
            c,d=S.symbols(f'{prefix}{a}{b} {prefix}d{a}{b}')
            out[a,b]=out[b,a]=c+u*d
    return out


# First route: vary the full five-dimensional Einstein potential.
K1=S.symbols('k10:14'); K2=S.symbols('k20:24')
H1,H2=arbitrary_h('a'),arbitrary_h('b')
v12=theta_variation(fg_covariant(H1),fg_covariant(H2),K1,K2)
v21=theta_variation(fg_covariant(H2),fg_covariant(H1),K2,K1)
reduced=fg_reduced(H1,H2,K1,K2)
for a in range(5):
    check(f'full_potential_variation_component_{a}',v12[a]-v21[a]-reduced[a])

# Second route: all Fourier coefficients of two general exterior FG tails.
k,w1,w2,s1,s2=S.symbols('k w1 w2 sigma1 sigma2',real=True)
v1=S.symbols('v10:14'); v2=S.symbols('v20:24')
p=[-w1,k,0,0]; q=[-w2,-k,0,0]


def tail(K,v,sigma):
    A=S.Matrix(4,4,lambda a,b:I*(K[a]*v[b]+K[b]*v[a])
               -2*sigma*eta[a,b])
    B=S.Matrix(4,4,lambda a,b:K[a]*K[b]*sigma)
    return A+u**2*B,A,B


h1,a1,b1=tail(p,v1,s1); h2,a2,b2=tail(q,v2,s2)
curr=fg_reduced(h1,h2,p,q)
timepoly=S.Poly(S.expand(u**3*curr[1]),u)
check('integrated_time_current_u4_coefficient',timepoly.coeff_monomial(u**4))
check('integrated_time_current_u2_coefficient',timepoly.coeff_monomial(u**2))
time_constant=S.factor(timepoly.coeff_monomial(1))
radial_constant=S.factor(u**2*curr[0])
check('radial_current_has_only_inverse_square_power',S.diff(radial_constant,u))
check('vacuum_current_conservation',-I*(w1+w2)*time_constant-2*radial_constant)
check('antisymmetry_time',curr[1]+fg_reduced(h2,h1,q,p)[1])
check('antisymmetry_radial',curr[0]+fg_reduced(h2,h1,q,p)[0])

# Independent explicit Gaussian-field example (zero tangential vector).
x,t=S.symbols('x t',real=True)
f=S.exp(-x*x)*(1+t+t*t)
g=S.exp(-2*x*x)*(2-t+t**3)
cross_integrand=2*(f*S.diff(g,t,x,2)-S.diff(f,x,2)*S.diff(g,t)
                   -g*S.diff(f,t,x,2)+S.diff(g,x,2)*S.diff(f,t))
cross_int=S.integrate(S.expand(cross_integrand),(x,-S.oo,S.oo))
check('gaussian_spatial_integrated_cross_cancellation',cross_int)

result={
    'sympy_version':S.__version__,
    'exact_zero_count':len(residuals),
    'residuals':residuals,
    'time_current_coefficient':str(time_constant),
    'radial_current_coefficient':str(radial_constant),
    'scope':'Einstein covariant current on the linearized FG exterior tail class. '
            'No assertion of a nonlinear global CPS or quantum operator domain.',
}
path=Path(__file__).with_name('cps_tail_checks_results.json')
path.write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
