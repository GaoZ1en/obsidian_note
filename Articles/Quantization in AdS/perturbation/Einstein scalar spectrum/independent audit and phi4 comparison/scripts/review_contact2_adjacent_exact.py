"""Fresh exact certificates: N=3, adjacent primary degrees (q+1,q).

No candidate notes, original package, or other scripts are read.
All ranks are exact rational ranks. Symbolic-Delta band identities and direct
Bargmann-norm checks supplement the all-q analytic proof in the new review.
This module prints JSON only when run directly.
"""
from sage.all import *
import json


def matrices(q, delta, base):
    R = PolynomialRing(base, ['r', 'u'])
    r, u = R.gens()
    source = [r**k*u**(q-k) for k in range(q+1)]
    target = [r**j*u**(q+1-j) for j in range(q+2)]
    c = delta*(delta-1)
    h = 2*q+3*delta
    def A(f):
        return r*r*f.derivative(r,2)-r*r/4*f.derivative(u,2)+2*delta*r*f.derivative(r)+c*f
    def B(f):
        return -(u-r/2)**2*(f.derivative(r).derivative(u)-f.derivative(u,2)/2) \
            +delta*(u-r/2)*(-f.derivative(r)+QQ(3)/2*f.derivative(u))+c*f
    def C(f):
        return (u+r/2)**2*(f.derivative(r).derivative(u)+f.derivative(u,2)/2) \
            +delta*(u+r/2)*(f.derivative(r)+QQ(3)/2*f.derivative(u))+c*f
    casimirs = [matrix(base, [[op(f).monomial_coefficient(b) for f in source] for b in source])
                for op in [A,B,C]]
    def X3(f):
        return 2*u*r*f.derivative(r)+(u*u+r*r/4)*f.derivative(u)+2*delta*u*f
    xops = [X3, lambda f: X3(f)-h*(u+r/2)*f, lambda f: X3(f)-h*(u-r/2)*f]
    xs = [matrix(base, [[op(f).monomial_coefficient(b) for f in source] for b in target])
          for op in xops]
    return casimirs, xs


def symbolic_band_checks():
    K = PolynomialRing(QQ, 'd')
    d = K.gen()
    rows = []
    for q in range(9):
        (A,B,C),(X3,X1,X2) = matrices(q,d,K)
        (Ap,Bp,Cp),_ = matrices(q+1,d,K)
        s = q*(q+3*d-1)+3*d*(d-1)
        h = 2*q+3*d
        alpha = (q+2*d)*(q+2*d-1)
        T = [X3*A**m+X1*B**m+X2*C**m for m in range(q+1)]
        checks = {
            'X3_intertwines': Ap*X3 == X3*A,
            'X1_intertwines': Bp*X1 == X1*B,
            'X2_intertwines': Cp*X2 == X2*C,
            'Casimir_sum': A+B+C == s*identity_matrix(K,q+1),
            'T0_expected_status': (T[0] == 0) == (q == 0),
        }
        if q >= 1:
            checks['linear_relation'] = T[1] == alpha*T[0]
        for m in range(2,q+1):
            if m % 2 == 0:
                for k in range(m,q+1):
                    product = prod(-ell*(q-ell+d) for ell in range(k-m+1,k+1))
                    expected = -2*(q-k+m+d)*product
                    checks[f'even_m{m}_k{k}'] = T[m][k-m,k] == expected
            else:
                for j in range(q-m+2):
                    k = j+m-1
                    rho = (m*s-sum((d+ell)*(d+ell-1) for ell in range(j,j+m))-h*j)/2
                    checks[f'odd_m{m}_j{j}'] = T[m][j,k] == rho*T[m-1][j,k]
        rows.append({'q':q, 'checks':checks, 'all_passed':all(v is True for v in checks.values())})
    F = PolynomialRing(QQ, ['q','d','j','m'])
    q,d,j,m = F.gens()
    h = 2*q+3*d
    s = q*(q+3*d-1)+3*d*(d-1)
    sum_lambda = m*(d+j)*(d+j-1)+(2*(d+j)-1)*m*(m-1)/2+m*(m-1)*(2*m-1)/6
    rho = (m*s-sum_lambda-h*j)/2
    generic = {
        'rho_discrete_difference': rho.subs({j:j+1})-rho == -((d+j+m)*(d+j+m-1)-(d+j)*(d+j-1)+h)/2,
        'alpha_identity': (q+2*d)*(q+2*d-1) == (q+d)*(q+3*d-1)+d*(d-1),
    }
    return {'rows':rows, 'generic_identities':generic}


def rational_rank_checks():
    rows = []
    for delta in [QQ(4)/3,QQ(3)/2,QQ(2),QQ(7)/3]:
        for q in range(11):
            (A,B,C),(X3,X1,X2) = matrices(q,delta,QQ)
            T = [X3*A**m+X1*B**m+X2*C**m for m in range(q+1)]
            rk = matrix(QQ, [[v for row in op.rows() for v in row] for op in T]).rank()
            rows.append({'Delta':str(delta), 'q':q, 'rank':int(rk), 'passed':rk == q})
    return rows


def group_matrix(q, permutation):
    R = PolynomialRing(QQ, ['r','u'])
    r,u = R.gens()
    basis = [r**k*u**(q-k) for k in range(q+1)]
    z = [u+r/2,u-r/2,R(0)]
    zp = [z[i-1] for i in permutation]
    rp,up = zp[0]-zp[1], (zp[0]+zp[1])/2-zp[2]
    return matrix(QQ, [[f(rp,up).monomial_coefficient(b) for f in basis] for b in basis])


def full_twirl_checks():
    rows = []
    for q in range(7):
        (A,B,C),(X3,X1,X2) = matrices(q,QQ(2),QQ)
        group = [(group_matrix(q+1,p),group_matrix(q,p)) for p in Permutations(3)]
        dim = sum(gp.trace()*gq.trace() for gp,gq in group)/6
        expected = QQ((q+1)*(q+2)-2*int(q%3 == 0))/6
        checks = {'physical_dimension':dim == expected}
        for m in range(q+1):
            D = X3*A**m
            twirl = sum((gp*D*gq.inverse() for gp,gq in group), zero_matrix(QQ,q+2,q+1))/6
            reduced = (X3*A**m+X1*B**m+X2*C**m)/3
            checks[f'twirl_m{m}'] = twirl == reduced
        rows.append({'q':q, 'D_physical':int(dim), 'checks':checks,
                     'all_passed':all(v is True for v in checks.values())})
    return rows


def direct_norm_checks():
    R = PolynomialRing(QQ, ['z1','z2','z3'])
    z1,z2,z3 = R.gens()
    r,u = z1-z2, (z1+z2)/2-z3
    def eigenvector(q,k,d):
        lam = (d+k)*(d+k-1)
        value = r**k*u**(q-k)
        coeff = QQ(1)
        for j in range(k+2,q+1,2):
            coeff *= QQ((q-j+2)*(q-j+1))/(4*((d+j)*(d+j-1)-lam))
            value += coeff*r**j*u**(q-j)
        return value
    def norm2(f,d):
        return sum(c*c*prod(factorial(p)/rising_factorial(d,p) for p in e)
                   for e,c in f.dict().items())
    rows = []
    for d in [QQ(4)/3,QQ(2),QQ(7)/3]:
        for q in range(6):
            h = 2*q+3*d
            alpha = (q+2*d)*(q+2*d-1)
            for k in range(q+1):
                ratio = norm2(eigenvector(q+1,k,d),d)/norm2(eigenvector(q,k,d),d)
                expected = (q-k+1)*h*(h-1)/((q+k+3*d-1)*(q+k+2*d)*(q-k+d))
                gamma2 = (q-k+1)*(q+k+2*d)*(q-k+d)*(q+k+3*d-1)
                lam = (d+k)*(d+k-1)
                beta2 = (q+k+2*d)**2*ratio*(lam-alpha)**2
                rows.append({'Delta':str(d),'q':q,'k':k,
                             'norm_ratio':ratio == expected,
                             'gamma_square':beta2 == h*(h-1)*gamma2})
    return rows


def main():
    report = {'symbolic_bands':symbolic_band_checks(),
              'exact_ranks':rational_rank_checks(),
              'full_S3_twirls':full_twirl_checks(),
              'direct_Bargmann_norms':direct_norm_checks()}
    passed = all(row['all_passed'] is True for row in report['symbolic_bands']['rows']) \
        and all(v is True for v in report['symbolic_bands']['generic_identities'].values()) \
        and all(row['passed'] is True for row in report['exact_ranks']) \
        and all(row['all_passed'] is True for row in report['full_S3_twirls']) \
        and all(row['norm_ratio'] is True and row['gamma_square'] is True for row in report['direct_Bargmann_norms'])
    report['all_passed'] = passed
    print(json.dumps(report,indent=2))
    return report


if __name__ == '__main__':
    main()
