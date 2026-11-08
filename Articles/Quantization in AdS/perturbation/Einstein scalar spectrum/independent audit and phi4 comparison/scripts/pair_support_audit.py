"""Fresh Sage exact construction, no imports from the manuscript package.
Run with Sage Python, or exec this file in a fresh Sage MCP kernel.
This checks consequences of the prescribed Einstein pair input, NOT its gravity derivation.
"""
from sage.all import *
from itertools import permutations
from pathlib import Path
import json, time, sys
ROOT = Path(__file__).resolve().parents[1]

def rising(x,n): return prod(x+j for j in range(n))
def chiral_count(P):
    return sum(1 for b in range(P//3+1) if (P-3*b)%2==0) if P>=0 else 0

def einstein(d,k,l):
    n=min(k,l); spin=abs(k-l); h=d+n; C=h*(h-1); mu=d*(d-2); u=4*mu-8*C
    if spin==0:
        if n==0: return -4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
        return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin==2:
        return u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u

class ThreeParticle:
    def __init__(self,d):
        self.d=d; self.R=PolynomialRing(QQ,['u','v']); self.u,self.v=self.R.gens(); self.cache={}
    def chiral(self,T):
        if T in self.cache: return self.cache[T]
        d=self.d; u,v=self.u,self.v
        mons=[u**a*v**(T-a) for a in range(T+1)]
        basis=[]
        for k in range(T+1):
            f=u**k*v**(T-k); a=QQ(1)
            for m in range(1,(T-k)//2+1):
                a*=QQ((T-k-2*m+2)*(T-k-2*m+1))/(2*m*(2*d+2*k+2*m-1))
                f+=a*u**(k+2*m)*v**(T-k-2*m)
            assert u*u*f.derivative(u,2)+2*d*u*f.derivative(u)-u*u*f.derivative(v,2)+d*(d-1)*f==(d+k)*(d+k-1)*f
            basis.append(f)
        S=matrix(QQ,[[f.monomial_coefficient(m) for f in basis] for m in mons]); inv=S.inverse()
        coords=[(v+u)/2,(v-u)/2,self.R.zero()]; Us=[]
        for p in permutations(range(3)):
            transformed=[f(coords[p[0]]-coords[p[1]],coords[p[0]]+coords[p[1]]-2*coords[p[2]]) for f in basis]
            U=inv*matrix(QQ,[[f.monomial_coefficient(m) for f in transformed] for m in mons]); Us.append(U)
        self.cache[T]=(basis,Us)
        return basis,Us
    def block(self,P,Q,with_spectrum=False):
        fp,up=self.chiral(P); fq,uq=self.chiral(Q); size=(P+1)*(Q+1)
        B=sum((x.tensor_product(y) for x,y in zip(up,uq)),zero_matrix(QQ,size))/6
        assert B*B==B
        Phi=B.column_space().basis_matrix().transpose(); dim=Phi.ncols()
        pairs=[(k,l) for k in range(P+1) for l in range(Q+1)]
        bad=[j for j,(k,l) in enumerate(pairs) if (k+l)%2==0 and k<=l+2]
        rank=Phi.matrix_from_rows(bad).rank(); kernel=dim-rank
        expected=sum(chiral_count(P-12-Q-j) for j in range(Q+1))
        char_dim=((P+1)*(Q+1)+3*int(P%2==0)*int(Q%2==0)+2*[1,-1,0][P%3]*[1,-1,0][Q%3])/6
        assert dim==char_dim and kernel==expected
        row={'Delta':str(self.d),'P':P,'Q':Q,'dimension':dim,'Einstein_residual_rank':rank,'kernel':kernel,'Hilbert_series_count':expected}
        if with_spectrum and dim:
            d=self.d; g=vector(QQ,[einstein(d,k,l) if (k+l)%2==0 else 0 for k,l in pairs])
            W=Phi.solve_right(3*B*diagonal_matrix(g)*Phi)
            row['charpoly']=str(W.charpoly('g')); row['matrix']=[[str(c) for c in r] for r in W.rows()]
            # Compute the actual physical metric directly in three labelled variables.
            R=PolynomialRing(QQ,['z0','z1','z2']); z=R.gens()
            def gram_diag(fs):
                vecs=[f(z[0]-z[1],z[0]+z[1]-2*z[2]) for f in fs]
                def inner(a,b):
                    return sum(c*b.dict().get(e,0)*prod(factorial(e[i])/rising(d,e[i]) for i in range(3)) for e,c in a.dict().items())
                M=matrix(QQ,[[inner(a,b) for b in vecs] for a in vecs])
                assert M.is_diagonal() and all(c>0 for c in M.diagonal())
                return M
            G=gram_diag(fp).tensor_product(gram_diag(fq)); Gram=Phi.transpose()*G*Phi
            assert W.transpose()*Gram==Gram*W
            row['metric_selfadjoint']=True; row['gram']=[[str(c) for c in r] for r in Gram.rows()]
        return row

def main():
    tick=time.monotonic(); rows=[]; examples=[]
    for d in [QQ(3)/2,QQ(2),QQ(7)/3]:
        engine=ThreeParticle(d)
        # Balanced/mixed low blocks, exact threshold, and nonchiral saturation.
        blocks=sorted(set([(P,Q) for Q in range(5) for P in range(Q,11)]+[(12,0),(13,1),(14,2),(16,2),(17,3),(18,4),(20,4)]))
        for P,Q in blocks:
            rows.append(engine.block(P,Q))
        for P,Q in [(2,2),(4,4),(12,0),(14,2)]:
            examples.append(engine.block(P,Q,True))
    checks=[]
    for d in [QQ(1001)/1000,QQ(3)/2,QQ(2),QQ(7)/3,QQ(4)]:
        for k in range(15):
            for l in range(15):
                if (k+l)%2: continue
                a=einstein(d,k,l)-(4*d*(d-2)-8*(d+l)*(d+l-1))
                assert (a==0)==(k>=l+4) and (a>0)==(k<=l+2)
        checks.append({'Delta':str(d),'labels_k_l_max':14,'support_passed':True})
    report={'status':'passed','scope':'Independent exact consequences of declared Einstein spectral multiplier, NOT a new gravitational integration. No package engine imported.','basis':'u=z1-z2,v=z1+z2-2z3; exact Casimir eigenpolynomials, literal simultaneous S3 average','block_count':len(rows),'rows':rows,'spectral_examples':examples,'support_checks':checks,'seconds':time.monotonic()-tick,'python':sys.version}
    dest=ROOT/'results'/'pair_support_audit.json'
    dest.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'passed','blocks':len(rows),'spectral_examples':len(examples),'seconds':report['seconds'],'result':str(dest)}))
if __name__=='__main__': main()
