"""Exact physical-Racah certificates for the balanced N=3 edge proof.

Uses only the accompanying independently written adjacent certificate for its
polynomial differential operators and permutation matrices. No candidate note,
original package, or other contact implementation is read. No eigenvalue
numerics are used. Finite checks supplement the analytic all-degree proof.
"""
from sage.all import *
from pathlib import Path
import runpy
import json

OWN = runpy.run_path(str(Path(__file__).with_name('review_contact2_adjacent_exact.py')),
                     run_name='review_contact2_adjacent_exact_dependency')


def norm_formula(P,k,d):
    n = P-k
    pair = factorial(k)*rising_factorial(2*d+k-1,k)/rising_factorial(d,k)**2
    return pair*factorial(n)*rising_factorial(P+k+3*d-1,n) \
        /(rising_factorial(2*d+2*k,n)*rising_factorial(d,n))


def basis_matrix(P,d,base):
    X = zero_matrix(base,P+1,P+1)
    for k in range(P+1):
        X[k,k] = 1
        coeff = base(1)
        lam = (d+k)*(d+k-1)
        for j in range(k+2,P+1,2):
            coeff *= ((P-j+2)*(P-j+1))/(4*((d+j)*(d+j-1)-lam))
            X[j,k] = coeff
    return X


def check_sector(P,d,base,full_twirl=True):
    (A,B,C),_ = OWN['matrices'](P,d,base)
    X = basis_matrix(P,d,base)
    Xi = X.inverse()
    norms = [base(norm_formula(P,k,d)) for k in range(P+1)]
    H = diagonal_matrix(base,norms)
    # The (13) transposition conjugates C12 to C23.
    G13 = OWN['group_matrix'](P,[3,2,1]).change_ring(base)
    Rraw = Xi*G13*X
    M = matrix(base,[[Rraw[k,l]**2*norms[k]/norms[l] for l in range(P+1)]
                   for k in range(P+1)])
    Braw = Xi*B*X
    lambdas = [(d+k)*(d+k-1) for k in range(P+1)]
    checks = {
        'physical_Gram_orthogonality':Rraw.transpose()*H*Rraw == H,
        'physical_Gram_selfadjointness':H*Rraw == Rraw.transpose()*H,
        'actual_Casimir_recurrence':Braw*Rraw == Rraw*diagonal_matrix(base,lambdas),
        'endpoint':Rraw[0,0] == (-1)**P*rising_factorial(d,P)/rising_factorial(2*d,P),
        'M_symmetric':M == M.transpose(),
        'M_row_sums':all(sum(M[k,l] for l in range(P+1)) == 1 for k in range(P+1)),
        'B_tridiagonal':all(Braw[i,j] == 0 for i in range(P+1) for j in range(P+1) if abs(i-j)>1),
    }
    for k in range(1,P+1):
        eta = (k+2*d-2)/(4*k*(2*k+2*d-3)*(2*k+2*d-1))
        expected = eta*(P-k+1)*(P+k+3*d-2)*(P+k+2*d-1)/(P-k+d)
        checks[f'norm_ratio_k{k}'] = norms[k-1]/norms[k] == expected
        checks[f'lower_band_k{k}'] = Braw[k-1,k] == -k*(P-k+d)
    if full_twirl:
        threeG = zero_matrix(base,P+1,P+1)
        for permutation in Permutations(3):
            Ug = Xi*OWN['group_matrix'](P,permutation).change_ring(base)*X
            threeG += matrix(base,[[Ug[k,l]**2*norms[k]/norms[l] for l in range(P+1)]
                                  for k in range(P+1)])/2
        checks['compression_factor_I_plus_2M'] = threeG == identity_matrix(base,P+1)+2*M
    return {'P':P,'Delta':str(d),'checks':checks,
            'all_passed':all(v is True for v in checks.values())}


def adjacent_trace_warning():
    K = FractionField(PolynomialRing(QQ,'d'))
    d = K.gen()
    (Aq,_,_),_ = OWN['matrices'](1,d,K)
    (Ap,_,_),_ = OWN['matrices'](2,d,K)
    def projector(A,n,k):
        lam = (d+k)*(d+k-1)
        E = identity_matrix(K,n+1)
        for j in range(n+1):
            if j != k:
                lj = (d+j)*(d+j-1)
                E = E*(A-lj*identity_matrix(K,n+1))/(lam-lj)
        return E
    coeffs = []
    for k in range(2):
        ep,eq = projector(Ap,2,k),projector(Aq,1,k)
        value = K(0)
        for p in Permutations(3):
            gp = OWN['group_matrix'](2,p).change_ring(K)
            gq = OWN['group_matrix'](1,p).change_ring(K)
            value += (ep*gp).trace()*(eq*gq).trace()/2
        coeffs.append(value)
    return {'checks':{'c0_coefficient':coeffs[0] == (3*d+1)/(4*d+2),
                      'c1_coefficient':coeffs[1] == QQ(3)/2},
            'coefficients':[str(v) for v in coeffs]}


def main():
    K = FractionField(PolynomialRing(QQ,'d'))
    d = K.gen()
    symbolic = [check_sector(P,d,K) for P in range(5)]
    rational = [check_sector(P,delta,QQ) for delta in [QQ(4)/3,QQ(2),QQ(7)/3] for P in range(9)]
    F = PolynomialRing(QQ,['N','a'])
    N,a = F.gens()
    gram_checks = {
        'trial_ratio_denominator_minus_numerator':N*(1+(N-3)*a)-(N-2)*(1+(N-1)*a) == 2*(1-a),
        'large_N_lower_ratio':QQ(1)/2*(N-1)*(N-2) == QQ(1)/2*N*(N-1)*(1-2/N),
    }
    warning = adjacent_trace_warning()
    report = {'symbolic_physical_Racah':symbolic,'rational_physical_Racah':rational,
              'allN_trial_Gram':gram_checks,'adjacent_trace_warning':warning}
    report['all_passed'] = all(row['all_passed'] is True for row in symbolic+rational) \
        and all(v is True for v in gram_checks.values()) \
        and all(v is True for v in warning['checks'].values())
    print(json.dumps(report,indent=2))
    return report


if __name__ == '__main__':
    main()
