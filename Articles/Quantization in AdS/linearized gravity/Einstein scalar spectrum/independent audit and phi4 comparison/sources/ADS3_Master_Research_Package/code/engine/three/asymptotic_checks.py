"""Independent numerical evidence for the proved fixed-Q Hermitian asymptotic.

This uses the orthonormal, real symmetric Gram matrix, never the nonsymmetric
rational similarity matrix.  Gamma ratios are evaluated at 80 digits.  Exact
finite-level operator checks and the analytic proof are separate attachments.
"""
from pathlib import Path
import json
import mpmath as mp
import numpy as np
import sympy as s
from three_body_nonchiral import channels,residual_potential

mp.mp.dps=80


def rising(a,n):
    out=mp.mpf(1)
    for j in range(n):out*=a+j
    return out


def a_value(d,J):
    return (-1)**J*mp.exp(mp.loggamma(2*d)-mp.loggamma(d)
                           +mp.loggamma(J+d)-mp.loggamma(J+2*d))


def weight(d,J,k):
    return (rising(J+3*d-1,k)*rising(-J,k)*rising(2*d-1,k)
            /(rising(1-d-J,k)*rising(2*d+J,k)*mp.factorial(k))
            *(2*d+2*k-1)/(2*d-1))


def polynomial(d,J,k,r):
    return sum((rising(-k,t)*rising(k+2*d-1,t)*rising(-r,t)*rising(r+2*d-1,t)
                /(rising(d,t)*rising(-J,t)*rising(J+3*d-1,t)*mp.factorial(t))
                for t in range(min(k,r)+1)),mp.mpf(0))


def weight_limit(d,k):
    return rising(2*d-1,k)/mp.factorial(k)*(2*d+2*k-1)/(2*d-1)


def check(delta,Q,P):
    d=mp.mpf(int(delta.p))/int(delta.q)
    labels=channels(P,Q)
    values=[mp.mpf(str(s.N(residual_potential(delta,k,l),75))) for k,l in labels]
    count=len(labels)
    error=mp.matrix(count);leading=mp.matrix(count)
    aP,aQ=a_value(d,P),a_value(d,Q)
    gamma_ratio=mp.gamma(2*d)/mp.gamma(d)
    for i,(k,l) in enumerate(labels):
        for j,(r,t) in enumerate(labels):
            right=mp.sqrt(weight(d,Q,l)*weight(d,Q,t))*polynomial(d,Q,l,t)
            left=mp.sqrt(weight(d,P,k)*weight(d,P,r))*polynomial(d,P,k,r)
            common=2*aQ*mp.sqrt(values[i]*values[j])*right
            error[i,j]=aP*common*left
            leading[i,j]=gamma_ratio*common*mp.sqrt(weight_limit(d,k)*weight_limit(d,r))
    # Evaluate the correction itself, avoiding a subtractive cancellation in M-D.
    E=np.array(error.tolist(),dtype=float)
    L=np.array(leading.tolist(),dtype=float)
    diagonal=np.array([float(t) for t in values])
    assert np.allclose(E,E.T,atol=1e-14,rtol=1e-14)
    opnorm=float(max(abs(np.linalg.eigvalsh(E))))
    eigen_error=float(max(abs(np.linalg.eigvalsh(np.diag(diagonal)+E)-np.sort(diagonal))))
    assert eigen_error <= opnorm+1e-10
    scaled=float(P**float(d))*E
    residual=float(np.linalg.norm((-1)**P*scaled-L,ord='fro'))
    return {'Delta':str(delta),'Q':Q,'P':P,'matrix_dimension':count,
            'Hermitian_operator_norm_error':opnorm,
            'maximum_ordered_eigenvalue_error':eigen_error,
            'P_to_Delta_scaled_operator_error':P**float(d)*opnorm,
            'leading_parity_removed_matrix_error':residual,
            'P_times_leading_matrix_error':P*residual,
            'weight_limit_min':float(min(weight_limit(d,k) for k,l in labels)),
            'weight_limit_max':float(max(weight_limit(d,k) for k,l in labels))}


def main():
    records=[]
    for d in (s.Rational(3,2),s.Integer(2),s.Rational(7,3)):
        for Q in (1,3,6):
            for P in (100,101,300,301,1000,1001,3000,3001):
                records.append(check(d,Q,P))
    summary=[]
    for d in ('3/2','2','7/3'):
        for Q in (1,3,6):
            rows=[r for r in records if r['Delta']==d and r['Q']==Q]
            first,last=rows[0],rows[-1]
            assert last['leading_parity_removed_matrix_error']<first['leading_parity_removed_matrix_error']
            summary.append({'Delta':d,'Q':Q,
                            'scaled_error_at_P100':first['P_to_Delta_scaled_operator_error'],
                            'scaled_error_at_P3001':last['P_to_Delta_scaled_operator_error'],
                            'P3001_leading_matrix_error':last['leading_parity_removed_matrix_error']})
    report={'precision_decimal_digits':80,'cases':len(records),'summary':summary,'records':records,
            'proved_statement':'M-D = (-1)^P P^(-Delta) L_Q + O(P^(-Delta-1)) for fixed Q and Delta>1; the rate is in a Hermitian operator norm.',
            'scope':'Numerical evidence for an independently derived analytic asymptotic; not a proof from finite samples.'}
    Path(__file__).with_name('asymptotic_results.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'cases':len(records),'summary':summary},indent=2))


if __name__=='__main__':main()
