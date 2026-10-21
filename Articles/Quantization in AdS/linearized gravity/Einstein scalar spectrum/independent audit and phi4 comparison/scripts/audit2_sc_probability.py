"""Fresh geometric tests, not a proof of any infinite-excitation claim.
Gaussian Gram-Schmidt samples actual Haar two-planes, never independent Plucker entries.
Also evaluate N=3 endpoint through a stable integral of p3'', and N=4 shared-edge
probabilities through the exact logarithmic joint density with QMC quadrature.
"""
from pathlib import Path
from math import comb, factorial
import json
import numpy as np
from scipy.special import hyp2f1, betaincinv
from scipy.stats import qmc
import mpmath as mp
OUT=Path(__file__).resolve().parents[1]
rng=np.random.default_rng(20261021)

def plucker(N,ns):
    uv=rng.normal(size=(ns,N,2))
    u=uv[:,:,0];u/=np.linalg.norm(u,axis=1)[:,None]
    v=uv[:,:,1];v-=np.sum(u*v,axis=1)[:,None]*u;v/=np.linalg.norm(v,axis=1)[:,None]
    return np.stack([u[:,i]*v[:,j]-u[:,j]*v[:,i] for i in range(N) for j in range(i+1,N)],axis=1)

def kappa_fraction(N,r):
    mp.mp.dps=70;r=mp.mpf(str(r))
    return factorial(N-2)**2/(mp.mpf(factorial(2*N-4))*r**(N-2))*sum(mp.mpf(-1)**(a-1)*max(0,1-a*r)**(2*N-4)/(factorial(a-1)*factorial(N-1-a)) for a in range(1,N))

def p3series(r,K=4000):
    r=mp.mpf(r);H=mp.mpf(0);q=mp.mpf(0)
    for s in range(K):
        H+=mp.mpf(1)/(2*s+1)
        q+=H*r**(2*s+2)/((s+1)*(2*s+1)*(2*s+3))
    tail=4/mp.pi**2*r**(2*K+2)/((2*K+1)*(2*K+3)*(1-r*r))
    return 1-mp.mpf(3)*r/2+12/mp.pi**2*q,3*tail

def p3_endpoint(eps):
    # C(1-u)=int_0^atanh(1-u) v tanh(v)dv; dilogarithm primitive.
    eps=mp.mpf(eps)
    def integrand(v):
        if not v: return mp.mpf(0) # single endpoint does not affect quadrature
        u=eps*v;w=mp.log((2-u)/u)/2;q=mp.exp(-2*w)
        C=w*w/2+w*mp.log1p(q)-(mp.polylog(2,-q)+mp.pi**2/12)/2
        return (1-v)*24*C/(mp.pi**2*(1-u)**3)
    return eps*eps*mp.quad(integrand,[0,mp.mpf('0.01'),mp.mpf('.1'),1])

def main():
    report={'seed':20261021,'samples_per_N':200000,'Haar_tests':[],'N3_series':[],'N3_endpoint':[],'N4_shared_edge_QMC':[]}
    for N in [3,4,6]:
        B=plucker(N,200000);Bp=plucker(N,200000);X=B*B;Y=Bp*Bp
        den=N*(N-1)*(N+1)*(N+2)
        entry={'N':N,'max_sum_error':float(np.max(np.abs(X.sum(1)-1))),'E_X12_sq':[float(np.mean(X[:,0]**2)),24/den], 'E_shared_product':[float(np.mean(X[:,0]*X[:,1])),8/den]}
        if N>=4:
            edges=[(i,j) for i in range(N) for j in range(i+1,N)]
            entry['E_disjoint_product']=[float(np.mean(X[:,0]*X[:,edges.index((2,3))])),4/den]
            relation=B[:,edges.index((0,1))]*B[:,edges.index((2,3))]-B[:,edges.index((0,2))]*B[:,edges.index((1,3))]+B[:,edges.index((0,3))]*B[:,edges.index((1,2))]
            entry['max_Plucker_relation_residual']=float(np.max(np.abs(relation)))
        entry['ratios']=[]
        for r in [.2,.5,.9,1.]:
            h=-8*np.minimum(X,r*r*Y).sum(1);p=float(np.mean(np.all(X>=r*r*Y,axis=1)))
            entry['ratios'].append({'r':r,'mean_h':float(h.mean()),'mean_standard_error':float(h.std(ddof=1)/np.sqrt(len(h))),'analytic_mean_h':float(-8*r*r*hyp2f1(2,2-N,N+1,r)),'zero_atom_MC':p,'kernel_fraction':float(kappa_fraction(N,r))})
        # An intentionally wrong independent marginal model has the right mean but wrong support/variance.
        U=rng.beta(1,N-2,size=X.shape);V=rng.beta(1,N-2,size=X.shape)
        wrong_a=8*np.maximum(V*V-U*U,0).sum(1)
        right_a=8*np.maximum(Y-X,0).sum(1)
        entry['wrong_independent_model']={'variance_a':float(wrong_a.var()),'true_variance_a':float(right_a.var()),'probability_above_true_upper_edge_8':float(np.mean(wrong_a>8))}
        report['Haar_tests'].append(entry)
    mp.mp.dps=75
    for r in ['0.2','0.5','0.8','0.99']:
        value,tail=p3series(r)
        report['N3_series'].append({'r':r,'p3':str(value),'tail_upper_bound':str(tail),'k3':str(kappa_fraction(3,r)),'z_positive':str((value-kappa_fraction(3,r))/(1-kappa_fraction(3,r)))})
    for eps in ['1e-4','1e-8','1e-16','1e-32']:
        p=p3_endpoint(eps);e=mp.mpf(eps);L=mp.log(1/e)
        report['N3_endpoint'].append({'epsilon':eps,'p3':str(p),'ratio_to_epsilon2_log2':str(p/(e*e*L*L)),'target':str(3/(2*mp.pi**2)),'normalized_remainder_by_epsilon2_log':str((p-3/(2*mp.pi**2)*e*e*L*L)/(e*e*L))})
    # AD-weighted right star law: R^2~Beta(2,1), sin^2(theta)~Beta(2,1/2), ratio~Uniform.
    samples=qmc.Sobol(5,scramble=True,seed=20261021).random_base2(18)
    T=np.sqrt(samples[:,0])*betaincinv(2,.5,samples[:,1])
    f=samples[:,2]*samples[:,3]**2+(1-samples[:,2])*samples[:,4]**2
    rho2=T*f;c=4/(3*np.pi**2)
    for r in [.1,.01,.001,1e-6]:
        qr2=c*np.mean(np.log(1/r)+np.log1p(np.sqrt(1-r*r*rho2))-.5*np.log(rho2))
        report['N4_shared_edge_QMC'].append({'r':r,'q_over_r2':float(qr2),'minus_leading_log':float(qr2-c*np.log(1/r)),'target_constant':float(c*(37/12-np.pi**2/8))})
    r=mp.exp(-23)
    lower=4/(3*mp.pi**2)*(23+mp.mpf(37)/12-mp.pi**2/8+mp.log((1+mp.sqrt(1-r*r))/2))
    report['N4_explicit_range']={'shared_edge_lower_over_r2':str(lower),'needed_for_r2_over_90':str(mp.mpf(143)/45),'excess_lower_after_kernel_difference':str(lower-mp.mpf(19)/6)}
    path=OUT/'results/audit2_sc_probability.json'
    assert not path.exists(),'Refuse overwrite'
    path.write_text(json.dumps(report,indent=2)+'\n');print(path)
if __name__=='__main__':main()
