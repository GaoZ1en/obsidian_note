"""Numerical evidence, not proof, for the smallest positive contact scale.

Build the orthonormal pair-Casimir Jacobi matrix from the differential
coefficients and positive norms. No repository code or data are imported.
"""
import json
from pathlib import Path
import numpy as np
import scipy
from scipy.linalg import eigh, eigh_tridiagonal
from scipy.special import roots_legendre, eval_legendre, gammaln
from math import comb


def jacobi(degree, delta):
    k=np.arange(degree+1,dtype=float)
    lam=(delta+k)*(delta+k-1)
    total=degree*(degree+3*delta-1)+3*delta*(delta-1)
    j=k[:-1]
    ratio=(4*(j+1)*(4*(delta+j)**2-1)/(2*delta+j-1)
        *(degree+delta-j-1)/((degree-j)*(degree+3*delta+j-1)*(degree+2*delta+j)))
    off=-(j+1)*(degree-j-1+delta)/np.sqrt(ratio)
    return (total-lam)/2,off,lam


def main():
    rows=[]
    for delta in (1.1,1.5,2.,3.,10.):
        for degree in (8,32,128,512):
            b,a,lam=jacobi(degree,delta)
            vals,r=eigh_tridiagonal(b,a)
            m=r*r
            c=1/(2*delta+2*np.arange(degree+1)-1)
            h=np.sqrt(c)[:,None]*(np.eye(degree+1)+2*m)*np.sqrt(c)[None,:]
            ev=eigh(h,eigvals_only=True,subset_by_index=[0,3])
            em=eigh(m,eigvals_only=True,subset_by_index=[0,2])
            xx=np.arange(degree+1,dtype=float)/degree
            moments={str(power):float(np.sqrt(np.mean((m@(xx**(2*power))
                    -comb(2*power,power)/4**power*(1-xx*xx)**power)**2)))
                    for power in range(1,5)}
            rows.append(dict(P=degree,Delta=delta,
                contact_eigenvalues_8pi=ev.tolist(),M_three_lowest=em.tolist(),
                P_times_smallest_positive_8pi=float(degree*ev[1]),
                recoupling_symmetry_residual=float(np.max(np.abs(m-m.T))),
                pair_spectrum_residual=float(np.max(np.abs(vals-lam))),
                Tr_M=float(np.trace(m)),
                trace_correction_8pi=float(2*np.sum(c*np.diag(m))),
                continuum_moment_root_mean_square_errors=moments))
        print('completed mass',delta,flush=True)
    galerkin=[]
    for cutoff in (8,16,32,64,128):
        nodes,weights=roots_legendre(2*cutoff+4)
        nodes=(nodes+1)/2;weights=weights/2
        indices=np.arange(cutoff+1)
        basis=np.stack([np.sqrt(4*k+1)*eval_legendre(2*k,nodes) for k in indices])
        mass=(basis*(2*nodes*weights))@basis.T
        mu=(-1.)**indices*np.exp(gammaln(2*indices+1)
                    -2*gammaln(indices+1)-indices*np.log(4))
        kept=np.array([i for i in indices if i!=1])
        # Eliminate the exact null direction by the positive-eigenvalue
        # orthogonality equation (mass*g)_1=0.
        reduced_mass=(mass[np.ix_(kept,kept)]
            -mass[kept,1,None]*mass[None,1,kept]/mass[1,1])
        low=eigh(np.diag(1+2*mu[kept]),reduced_mass,
                    eigvals_only=True,subset_by_index=[0,3])
        galerkin.append(dict(maximum_even_legendre_index=2*cutoff,
            four_positive_eigenvalues=low.tolist()))
    out=Path(__file__).with_name('contact_gap_evidence.json')
    out.write_text(json.dumps(dict(status='Numerical evidence only; no lower bound claimed',
        numpy=np.__version__,scipy=scipy.__version__,records=rows,
        candidate_continuum_galerkin=galerkin),indent=2))
    print(out,flush=True)


if __name__=='__main__':
    main()
