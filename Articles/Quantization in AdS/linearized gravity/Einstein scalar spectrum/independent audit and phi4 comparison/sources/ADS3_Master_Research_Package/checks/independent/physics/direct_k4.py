"""Fresh exact-arithmetic evaluator of frozen Direct K4 equations (3)-(21).

The evaluator takes only Delta, external modes, the spatial constraints and
free SL(2) Clebsch-Gordan coefficients.  The stress-block prediction is called
only after the complete primary reconstruction, as an independent benchmark.
No spectrum table or Einstein-Casimir recurrence is used by DirectK4.
"""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from math import comb, factorial
from pathlib import Path
import argparse, json, time


def poch(a,n):
    ans=F(1)
    for j in range(n): ans*=a+j
    return ans


class DirectK4:
    def __init__(self,delta):
        self.d=F(delta)
        if self.d<=1: raise ValueError('Delta>1 required')
        self.mu=self.d*(self.d-2)
        self.stats={'constraint_pairs':0,'matrices':0,'matrix_entries':0,
                    'offdiagonal_residuals':0,'alpha_residuals':0}

    @lru_cache(None)
    def coeffs(self,n):
        d=self.d
        return tuple(poch(d,n)*poch(-n,i)*poch(n+d,i)/
                     (F(factorial(n))*poch(d,i)*factorial(i)) for i in range(n+1))

    @lru_cache(None)
    def pair(self,a,b):
        n,e=a; m,f=b; d=self.d; mu=self.mu
        an=self.coeffs(n); am=self.coeffs(m)
        wn=d+2*n; wm=d+2*m
        rho=[F(0)]*(n+m+2); q=[F(0)]*(n+m+2); j=[F(0)]*(n+m+1)
        for i,ai in enumerate(an):
            for k,ak in enumerate(am):
                v=ai*ak; h=i+k; di=d+2*i; dk=d+2*k
                rho[h]+=v*(di*dk+mu)/2
                rho[h+1]-=v*(di*dk+e*f*wn*wm)/2
                q[h]-=mu*v
                q[h+1]-=e*f*wn*wm*v
                j[h]+=v*(e*wn*dk+f*wm*di)/4
        alpha=sum((v/(d*(d+h-1)) for h,v in enumerate(rho)),F(0))
        expected=wn/d if n==m and e==-f else F(0)
        assert alpha==expected,(d,a,b,'alpha',alpha,expected)
        self.stats['alpha_residuals']+=1
        beta=tuple(sum((rho[h]/(4*(2*d+2*i+1)*(d+h-1))
                        for h in range(i+1,len(rho))),F(0))
                   for i in range(len(rho)-1))
        self.stats['constraint_pairs']+=1
        return tuple(rho),tuple(q),tuple(j),alpha,beta

    @lru_cache(None)
    def zhat(self,h):
        if h==0:return F(0)
        d=self.d
        return d/(8*(2*d+2*h-3))*sum((1/(d+a)-1/(2*d+a-1)
                                                 for a in range(h)),F(0))

    def bpair(self,ab,cd):
        d=self.d
        _,qa,ja,aa,ba=self.pair(*ab)
        _,qc,jc,ac,bc=self.pair(*cd)
        shat=d/8*((d-1)/8-self.zhat(1))
        momentum=-2*sum((x*y/((2*d+2*h+1)*(2*d+2*k+1)*(4*d+2*h+2*k))
                         for h,x in enumerate(ja) for k,y in enumerate(jc)),F(0))
        uq=-aa*sum((x*self.zhat(h) for h,x in enumerate(qc)),F(0))
        uq-=sum((x*y/(4*d+2*i+2*h-2)
                 for i,x in enumerate(ba) for h,y in enumerate(qc)),F(0))
        uu=aa*ac*shat
        uu+=aa*sum((x*self.zhat(h) for h,x in enumerate(bc)),F(0))
        uu+=ac*sum((x*self.zhat(h) for h,x in enumerate(ba)),F(0))
        uu+=sum((x*y/(4*d+2*i+2*h-2)
                 for i,x in enumerate(ba) for h,y in enumerate(bc)),F(0))
        return momentum+uq-4*uu

    @lru_cache(None)
    def raw(self,N,r,s):
        # sqrt[(1+delta_2rN)(1+delta_2sN)] times the normalized matrix.
        legs=((r,-1),(N-r,-1),(s,1),(N-s,1))
        ans=F(0)
        for inds in combinations(range(4),2):
            comp=tuple(i for i in range(4) if i not in inds)
            ans+=self.bpair(tuple(legs[i] for i in inds),tuple(legs[i] for i in comp))
        return 32*ans

    @lru_cache(None)
    def qhahn(self,N,k,p):
        d=self.d
        return sum((poch(-k,j)*poch(k+2*d-1,j)*poch(-p,j)/
                    (poch(d,j)*poch(-N,j)*factorial(j))
                    for j in range(min(k,p)+1)),F(0))

    @lru_cache(None)
    def weight(self,N,p):
        d=self.d
        return F(comb(N,p))*poch(d,p)*poch(d,N-p)/poch(2*d,N)

    @lru_cache(None)
    def norm(self,N,k):
        return sum((self.weight(N,p)*self.qhahn(N,k,p)**2 for p in range(N+1)),F(0))

    def reconstruct(self,Nmax):
        result={}; matrices={}
        for N in range(Nmax+1):
            nr=N//2+1; newks=list(range(N,-1,-2))
            q=[[self.qhahn(N,k,p) for k in range(N+1)] for p in range(N+1)]
            w=[self.weight(N,p) for p in range(N+1)]
            h=[self.norm(N,k) for k in range(N+1)]
            raw=[[self.raw(N,r,s) for s in range(nr)] for r in range(nr)]
            assert all(raw[r][s]==raw[s][r] for r in range(nr) for s in range(nr))
            known=[[2*w[r]*w[s]*sum((q[r][k]*q[r][l]*q[s][k]*q[s][l]
                        *result[min(k,l),abs(k-l)]/(h[k]*h[l])
                        for k in range(N) for l in range(N) if (k+l)%2==0),F(0))
                       for s in range(nr)] for r in range(nr)]
            rem=[[raw[r][s]-known[r][s] for s in range(nr)] for r in range(nr)]
            z=[[q[r][k]/((1+(2*r==N))*q[r][N]) for k in newks] for r in range(nr)]
            trans=[[2*sum((z[r][a]*rem[r][s]*z[s][b]
                         for r in range(nr) for s in range(nr)),F(0))
                         for b in range(nr)] for a in range(nr)]
            for a in range(nr):
                for b in range(nr):
                    if a!=b:
                        assert trans[a][b]==0,(self.d,N,a,b,trans[a][b])
                        self.stats['offdiagonal_residuals']+=1
            for i,k in enumerate(newks):
                result[k,N-k]=h[N]*trans[i][i]/(h[k]*(2-(k==N)))
            self.stats['matrices']+=1;self.stats['matrix_entries']+=nr*nr
            matrices[N]=raw
        return result,matrices


def stress_block_prediction(d,n):
    # Independently derived from the single crossed stress block.
    d=F(d); C=(d+n)*(d+n-1);mu=d*(d-2)
    return 4*mu-8*C


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--N',type=int,default=8)
    ap.add_argument('--deltas',nargs='+',default=['5/4','3/2','2','7/3','3'])
    ap.add_argument('--output',default=str(Path(__file__).with_name('direct_k4_benchmark.json')))
    args=ap.parse_args();report={'method':'fresh maximal/conformal Direct K4 rational constraint evaluator',
                              'Nmax':args.N,'masses':[],'all_high_spin_residuals_zero':True}
    for ds in args.deltas:
        t=time.perf_counter();theory=DirectK4(ds);g,matrices=theory.reconstruct(args.N)
        rows=[]
        for (n,ell),val in sorted(g.items()):
            row={'n':n,'ell':ell,'direct_G_coefficient':str(val)}
            if ell>=4:
                residual=val-stress_block_prediction(ds,n)
                row['stress_block_coefficient']=str(stress_block_prediction(ds,n))
                row['residual']=str(residual)
                assert residual==0,(ds,n,ell,residual)
            rows.append(row)
        mass={'Delta':ds,'seconds':time.perf_counter()-t,'stats':theory.stats,'primaries':rows,
              'circular_matrices_raw':{str(N):[[str(v) for v in row] for row in mat]
                                       for N,mat in matrices.items()}}
        report['masses'].append(mass)
        print(json.dumps({'Delta':ds,'seconds':mass['seconds'],'stats':theory.stats,
                          'high_spin_checks':sum(r['ell']>=4 for r in rows)},ensure_ascii=False),flush=True)
        Path(args.output).write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()
