"""Independent exact-arithmetic audit and all-index initialization for OFPT.
Source: GaoZ1en/obsidian_note @ 5124189dd99f80478b8ad489ed44604fea241e49.
Only Python standard library, SymPy, mpmath are required.
No previous coefficient table or radial implementation is loaded.
"""
from __future__ import annotations
from fractions import Fraction as F
from math import comb, factorial
from functools import lru_cache
import argparse, json, time
from pathlib import Path


def ptrim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return tuple(a)

def padd(a,b):
    c=[F(0)]*max(len(a),len(b))
    for i,z in enumerate(a):c[i]+=z
    for i,z in enumerate(b):c[i]+=z
    return ptrim(c)

def pscale(a,c):return ptrim([c*z for z in a])
def pmul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,z in enumerate(a):
        for j,w in enumerate(b):c[i+j]+=z*w
    return ptrim(c)

def pshift(a):return (F(0),)+tuple(a)
def pdiff(a):return ptrim([i*a[i] for i in range(1,len(a))] or [F(0)])
def rising(a,n):
    r=F(1)
    for j in range(n):r*=a+j
    return r

def mmul(A,B):
    Bt=list(zip(*B))
    return [[sum((a*b for a,b in zip(row,col)),F(0)) for col in Bt] for row in A]
def mt(A):return list(map(list,zip(*A)))

class OFPT:
    def __init__(self,delta):
        self.d=F(delta)
        if self.d<=1:raise ValueError('Delta must exceed one')
    @lru_cache(None)
    def P(self,n):
        d=self.d
        return tuple(rising(d,n)/factorial(n)*rising(-n,j)*rising(n+d,j)/(rising(d,j)*factorial(j)) for j in range(n+1))
    @lru_cache(None)
    def pair(self,i,j,sign):
        # The coefficient of z_a z_b is 2 K, and 2 I for distinct bookkeeping legs.
        d=self.d; A=self.P(i); B=self.P(j)
        DA=padd(pscale(A,d/2),pshift(pdiff(A)))
        DB=padd(pscale(B,d/2),pshift(pdiff(B)))
        K=padd(pscale(pmul((F(1),F(-1)),pmul(DA,DB)),F(4)),
               pscale(pshift(pmul(A,B)),-sign*(d+2*i)*(d+2*j)))
        S=padd(K,pscale(pmul(A,B),d*(d-2)))
        I=tuple(z/(d-1+p) for p,z in enumerate(S))
        return K,I
    def moment(self,A,beta):return sum((z/(beta+j) for j,z in enumerate(A)),F(0))
    @lru_cache(None)
    def radial_hat(self,N,r,s):
        # R_hat = sqrt((1+delta_2r,N)(1+delta_2s,N)) R/G, fully rational.
        modes=(r,N-r,s,N-s);sig=(-1,-1,1,1);total=F(0)
        for a in range(4):
            for b in range(a+1,4):
                c,e=[v for v in range(4) if v not in (a,b)]
                K,_=self.pair(modes[a],modes[b],sig[a]*sig[b])
                _,I=self.pair(modes[c],modes[e],sig[c]*sig[e])
                total += self.moment(K,self.d)*sum(I)-self.moment(pmul(K,I),2*self.d-1)
        return -2*total
    @lru_cache(None)
    def hahn(self,N,k,p):
        d=self.d
        return sum((rising(-k,j)*rising(k+2*d-1,j)*rising(-p,j)/(rising(d,j)*rising(-N,j)*factorial(j)) for j in range(min(k,p)+1)),F(0))
    @lru_cache(None)
    def weight(self,N,p):return F(comb(N,p))*rising(self.d,p)*rising(self.d,N-p)/rising(2*self.d,N)
    @lru_cache(None)
    def norm(self,N,k):return sum((self.weight(N,p)*self.hahn(N,k,p)**2 for p in range(N+1)),F(0))
    def reconstruct(self,Nmax):
        gammas={};stats={'matrices':0,'entries':0,'offdiagonal':0};store={}
        for N in range(Nmax+1):
            nr=N//2+1;ks=list(range(N,-1,-2));
            Q=[[self.hahn(N,k,p) for k in range(N+1)] for p in range(N+1)]
            w=[self.weight(N,p) for p in range(N+1)]
            h=[self.norm(N,k) for k in range(N+1)]
            raw=[[self.radial_hat(N,r,s) for s in range(nr)] for r in range(nr)]
            assert raw==mt(raw),(N,'not symmetric')
            known=[[2*w[r]*w[s]*sum((Q[r][k]*Q[r][l]*Q[s][k]*Q[s][l]*gammas[min(k,l),abs(k-l)]/(h[k]*h[l])
                         for k in range(N) for l in range(N) if (k+l)%2==0),F(0)) for s in range(nr)] for r in range(nr)]
            new=[[raw[r][s]-known[r][s] for s in range(nr)] for r in range(nr)]
            Z=[[Q[r][k]/((1+(2*r==N))*Q[r][N]) for k in ks] for r in range(nr)]
            trans=[[2*z for z in row] for row in mmul(mmul(mt(Z),new),Z)]
            for i in range(nr):
                for j in range(nr):
                    if i!=j:
                        assert trans[i][j]==0,(self.d,N,i,j,trans[i][j])
                        stats['offdiagonal']+=1
            for i,k in enumerate(ks):gammas[k,N-k]=h[N]*trans[i][i]/(h[k]*(2-(k==N)))
            stats['matrices']+=1;stats['entries']+=nr*nr;store[N]=raw
        return gammas,stats,store
    def independent_basis(self,Nmax):
        count=0
        for N in range(Nmax+1):
            Q=[[self.hahn(N,k,p) for k in range(N+1)] for p in range(N+1)]
            w=[self.weight(N,p) for p in range(N+1)]
            h=[self.norm(N,k) for k in range(N+1)]
            for k in range(N+1):
                for l in range(N+1):
                    assert sum(w[p]*Q[p][k]*Q[p][l] for p in range(N+1))==(h[k] if k==l else 0)
                assert h[k]>0
                # Derive primary and raise in unnormalized product basis.
                c=[F(1)]
                for p in range(k):c.append(-c[-1]*(k-p)*(self.d+k-p-1)/((p+1)*(self.d+p)))
                raised=[sum((c[p]*comb(N-k,r-p) for p in range(k+1) if 0<=r-p<=N-k),F(0))*factorial(r)*factorial(N-r) for r in range(N+1)]
                assert all(raised[r]==raised[0]*Q[r][k] for r in range(N+1))
                assert all(Q[N-p][k]==(-1)**k*Q[p][k] for p in range(N+1))
            assert all(Q[r][N]!=0 for r in range(N//2+1))
            count+=1
        return count

# Comparison function; never called by reconstruct or the recurrence solver.
def closed(d,n,ell):
    d=F(d);h=d+n;C=h*(h-1);mu=d*(d-2)
    u=-4*(d*d+2*n*(2*d+n-1))
    if ell==0:
        if n==0:return 2*d*d*(7+2*d-8*d*d)/(4*d*d-1)
        return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if ell==2:return u+F((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u

def coeffs(d,k):
    a=F(k+1)*(d+k)*(2*d+k-1)/(2*(2*d+2*k-1))
    c=F(k)*(d+k-1)*(2*d+k-2)/(2*(2*d+2*k-1))
    return a,-a-c,c

def source(d,k,l):
    n=min(k,l);h=d+n;C=h*(h-1);mu=d*(d-2)
    if k==l:return 4*(C-mu)*(2*C+mu)/(2*h-1)
    if abs(k-l)==1:return 4*h*(n+1)*(2*d+n-1)*(2*h*h-mu)/((2*h-1)*(2*h+1))
    return F(0)

def compute_axis_from_integrals(theory,Jmax):
    """Triangular primary extraction from direct beta-integral diagonals.
    Does not insert a primary shift for k>0.
    """
    d=theory.d;out=[];diags=[]
    for J in range(Jmax+1):
        weight=rising(d,J)/rising(2*d,J)
        diagonal=-4*d*d+4*d*d/(2*d-1)*weight
        w0=theory.weight(J,0)
        wk=[w0/theory.norm(J,k) for k in range(J+1)] # Q_k(0)=1
        assert sum(wk)==1 and wk[J]>0 and wk[0]==weight
        val=(diagonal-sum(wk[k]*out[k] for k in range(J)))/wk[J]
        out.append(val);diags.append(diagonal)
    return out,diags

def row_recursion(d,cutoff,initial):
    """All x_kl with k+l<=cutoff from the *independent* entire first row.
    Each new row uses only the preceding two, not the closed spectrum.
    """
    d=F(d);X={(k,0):initial[k] for k in range(cutoff+1)}
    for l in range(cutoff):
        al,bl,cl=coeffs(d,l)
        for k in range(cutoff-l):
            ak,bk,ck=coeffs(d,k)
            X[k,l+1]=(source(d,k,l)-(bk+bl-2)*X[k,l]-ak*X[k+1,l]
                       -(ck*X[k-1,l] if k else 0)-(cl*X[k,l-1] if l else 0))/al
    return X


def seed_and_symbolic_checks():
    import json,time
    from pathlib import Path
    import sympy as s
    import mpmath as mp

    t0=time.time();results={}
    def zero(name,expr):
        res=s.factor(s.cancel(s.together(expr)))
        assert res==0,(name,res)
        results[name]='zero'

    d,j,r,x,n,k,l=s.symbols('d j r x n k l',positive=True)
    f=1+r*r;mu=d*(d-2);om=d+j
    ld=j/r-om*r/f # radial logarithmic derivative, for R=r^j f^{-(d+j)/2}
    # The normalized radial factor cancels in all these operator identities.
    K=ld**2+om**2/f**2
    Q=f*ld**2-om**2/f+j*j/r**2+mu
    Ttt=om**2+f*Q/2
    Trr=ld**2-Q/(2*f)
    zero('arbitrary_j_KG', f*(s.diff(ld,r)+ld**2)+(f/r+s.diff(f,r))*ld+om**2/f-j*j/r**2-mu)
    zero('arbitrary_j_fixed_momentum_density',K-(d*d/f+j*j/(r*r*f)))
    zero('arbitrary_j_Trr',Trr-d/f)
    zero('arbitrary_j_Ttt',Ttt-f*(d*(d-1)+j*j/r**2))
    # Polar response to T[u00,u00*] / 2 in E^(1) p=T/2.
    M=d/(4*s.pi)*(1-f**(1-d));D=d/(8*s.pi)*f**(-d)
    u0sq=f**(-d)/(2*s.pi)
    zero('ground_radial_mass_constraint',s.powsimp(s.diff(M,r)-r*d*(d-1)*u0sq,force=True))
    zero('ground_lapse_constraint',s.powsimp(s.diff(D,r)+r*d*d*u0sq/(2*f),force=True))
    zero('static_tt_constant',s.powsimp(M+2*f*D-d/(4*s.pi),force=True))
    # Keep the f^{-d} factor formal so cancellation is purely rational.
    a=s.symbols('a')
    Ptt=d/(4*s.pi);Prr=d/(4*s.pi)*(1-f*a)/f**2
    contract=Ptt*Ttt/f**2+Prr*Trr*f**2
    zero('direct_pairing_integrand',contract-d/(4*s.pi)*(d*d/f+j*j/(r*r*f)-d*a))
    Mphys=d/(2*s.pi)*(1-f*a);Dphys=d/(4*s.pi)*a
    e=f*K+j*j/r**2+mu
    zero('canonical_pairing_matches_probe',Mphys*K+Dphys*e-2*contract)
    # Vary the probe Hamiltonian at fixed canonical variables, including
    # the angular-gradient/mass part; its one-particle factors give (2.7).
    eps,M0,D0,K0,V0,ff=s.symbols('eps M0 D0 K0 V0 ff')
    Hprobe=s.exp(-eps*D0)*((ff-eps*M0)*K0+V0)/2
    zero('fixed_momentum_probe_Hamiltonian',s.diff(Hprobe,eps).subs(eps,0)
         +(M0*K0+D0*(ff*K0+V0))/2)
    # Generic reciprocal source elimination: -1/2(J1+J2)K^{-1}(J1+J2)
    # has cross term -J1 K^{-1} J2, not twice that value.
    J1,J2,inv=s.symbols('J1 J2 inverse')
    zero('reciprocal_cross_factor',s.diff(-inv*(J1+J2)**2/2,J1,J2)+inv)
    # Exact all-j beta integral reduction. B(d+1,j)=d/j B(d,j+1).
    B=s.symbols('B')
    zero('beta_first_two_terms',d*d*B+j*j*(d/j)*B-d*(d+j)*B)
    # Normalization and beta ratio, checked using gamma recurrences.
    C2=s.gamma(d+j)/(2*s.pi*s.gamma(d)*s.gamma(j+1))
    Bd=s.gamma(d)*s.gamma(j+1)/s.gamma(d+j+1)
    B2=s.gamma(2*d-1)*s.gamma(j+1)/s.gamma(2*d+j)
    seed=-8*s.pi*d*C2*(d*(d+j)*Bd-d*B2)
    w=s.gamma(d+j)*s.gamma(2*d)/(s.gamma(d)*s.gamma(2*d+j))
    zero('all_j_beta_result',s.expand_func(seed+4*d*d-4*d*d*w/(2*d-1)))
    zero('all_j_one_particle_norm',s.expand_func(2*s.pi*(d+j)*C2*Bd-1))
    # Explicitly check j=0 separately, avoiding B(d+1,0).
    seed0=-8*s.pi*d/(2*s.pi)*(d*d/d-d/(2*d-1))
    zero('j0_axis',seed0+4*d*d*(2*d-2)/(2*d-1))

    # Internal crossed-Casimir recurrence and symbolic all-index certificates.
    def aa(q):return (q+1)*(d+q)*(2*d+q-1)/(2*(2*d+2*q-1))
    def cc(q):return q*(d+q-1)*(2*d+q-2)/(2*(2*d+2*q-1))
    def bb(q):return -aa(q)-cc(q)
    def cas(q):return (d+q)*(d+q-1)
    def u(q):return 4*mu-8*cas(q)
    def xd(q):return u(q)*(2*d+2*q-2)/(2*d+2*q-1)
    h=d+n;C=h*(h-1)
    S0=4*(C-mu)*(2*C+mu)/(2*h-1)
    S1=4*h*(n+1)*(2*d+n-1)*(2*h*h-mu)/((2*h-1)*(2*h+1))
    zero('c0_no_negative_level',cc(0))
    zero('L_1',aa(n)+bb(n)+cc(n))
    zero('L_C',aa(n)*cas(n+1)+bb(n)*cas(n)+cc(n)*cas(n-1)-(2*cas(n)-mu))
    zero('L_u',aa(n)*u(n+1)+bb(n)*u(n)+cc(n)*u(n-1)-2*u(n))
    zero('crossed_diagonal',2*aa(n)*u(n)+2*cc(n)*u(n-1)+(2*bb(n)-2)*xd(n)-S0)
    zero('crossed_adjacent',aa(n+1)*u(n)+cc(n+1)*xd(n)+aa(n)*xd(n+1)+cc(n)*u(n-1)+(bb(n+1)+bb(n)-2)*u(n)-S1)
    q=s.symbols('gap',positive=True)
    zero('crossed_general_gap_ge2',(aa(n+q)+bb(n+q)+cc(n+q))*u(n)+aa(n)*u(n+1)+bb(n)*u(n)+cc(n)*u(n-1)-2*u(n))
    zero('ground_diagonal_from_integral',xd(0)-seed0)
    zero('u0_from_integral',u(0)+4*d*d)
    zero('nonzero_homogeneous_example',(aa(k)* (cas(k+1)+cas(l)-mu)+bb(k)*(cas(k)+cas(l)-mu)+cc(k)*(cas(k-1)+cas(l)-mu)
     +aa(l)*(cas(k)+cas(l+1)-mu)+bb(l)*(cas(k)+cas(l)-mu)+cc(l)*(cas(k)+cas(l-1)-mu)-2*(cas(k)+cas(l)-mu)))
    # Algebraic cross-block coefficient identity from source (9.12), generic order.
    H,J=s.symbols('H J',positive=True)
    r1=J*(2*H+J-1)/(H+J-1)**2
    r2=J*(J-1)*(2*H+J-1)*(2*H+J-2)/((H+J-1)**2*(H+J-2)**2)
    rm=(H-1)**2*(2*H+J-2)*(2*H+J-1)/((H+J-1)**2*(2*H-2)*(2*H-1))
    rp=J*(J-1)*(2*H)*(2*H+1)/(H**2*(H+J-1)**2)
    ba=(d-H)**2;bc=H**2*(d+H-1)**2/(4*(2*H-1)*(2*H+1));bmid=(mu-H*(H-1))/2
    zero('hypergeometric_coefficient_generic_J',(H+J-d)**2+r1*(-2*(H+J-1)*(H+J-1-d)-d)+r2*(H+J-2)**2-ba*rm-bmid*r1-bc*rp)
    zero('hypergeometric_J0',(H-d)**2-ba)
    zero('hypergeometric_J1',H/2*(H+1-d)**2-2*H*(H-d)-d-ba*(H-1)/2-bmid)
    # Source norms/annihilation contractions already internally available.
    ann0=-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    zero('annihilation_scalar_normalization',-8*s.pi*(C+mu)**2/(2*(4*C-3))/(2*s.pi*(2*h-1))-ann0)
    A2=h*(h+1)*(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/(8*s.pi**2*(2*h-1)*(2*h+1))
    ann2=(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    zero('annihilation_tensor_normalization',8*s.pi*A2*(4*s.pi/(2*h+3))/(4*h*(h+1))-ann2)
    zero('lowest_full_value',xd(0)+ann0.subs(n,0)-2*d*d*(7+2*d-8*d*d)/(4*d*d-1))
    # Dyson integral sign with DeltaE !=0 checked by differentiating twice + T=0.
    t,e=s.symbols('t e',real=True,nonzero=True)
    I=s.I*t/e+(1-s.exp(s.I*e*t))/e**2
    zero('Dyson_second_derivative',s.diff(I,t,2)-s.exp(s.I*e*t))
    zero('Dyson_initial_value',I.subs(t,0))
    zero('Dyson_initial_slope',s.diff(I,t).subs(t,0))

    # Fresh numerical quadrature of the original r-integrand at high precision.
    mp.mp.dps=60;numeric=[]
    for dv in [mp.mpf(3)/2,mp.mpf(2),mp.mpf(7)/3,mp.sqrt(2)+1]:
        for jj in [0,1,2,5,12,40]:
            c2=mp.rf(dv,jj)/(2*mp.pi*mp.factorial(jj));ww=dv+jj
            def fun(rr):
                ff=1+rr*rr;R2=c2*rr**(2*jj)*ff**(-dv-jj)
                radial=jj/rr-ww*rr/ff
                KK=R2*(radial**2+ww**2/ff**2)
                VV=R2*(jj*jj/rr**2+dv*(dv-2))
                MM=dv/(2*mp.pi)*(1-ff**(1-dv))
                DD=dv/(4*mp.pi)*ff**(-dv)
                return -32*mp.pi**2*rr*(MM*KK+DD*(ff*KK+VV))
            calc=mp.quad(fun,[0,1,3,10,mp.inf])
            target=-4*dv*dv+4*dv*dv/(2*dv-1)*mp.rf(dv,jj)/mp.rf(2*dv,jj)
            err=abs(calc-target)
            assert err<mp.mpf('1e-48'),(dv,jj,calc,target,err)
            numeric.append({'Delta':str(dv),'j':jj,'calculated':str(calc),'error':str(err)})
    report={'status':'PASS','symbolic_residuals':results,'symbolic_identity_count':len(results),'fresh_r_integrals':numeric,
            'seconds':round(time.time()-t0,3)}
    return report

def symbolic_radial_checks(level=8):
    from sympy.polys.fields import field
    from sympy.polys.domains import QQ
    K,d=field('Delta',QQ)
    theory=OFPT(2)
    theory.d=d
    start=time.time()
    values,stats,_=theory.reconstruct(level)
    for (n,ell),value in values.items():
        h=d+n;mu=d*(d-2);C=h*(h-1)
        u=-4*(d*d+2*n*(2*d+n-1))
        target=(u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1)) if ell==0 else
          u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3)) if ell==2 else u)
        assert value==target,(n,ell,value-target)
    return {'status':'PASS','Delta':'symbolic rational function','maxLevel':level,
            'primary_count':len(values),'radial_checks':stats,
            'gamma_over_G':{str(key):str(val) for key,val in values.items()},
            'seconds':round(time.time()-start,3)}

def main():
    p=argparse.ArgumentParser();p.add_argument('--radial-level',type=int,default=14)
    p.add_argument('--axis-level',type=int,default=24)
    p.add_argument('--recurrence-level',type=int,default=120)
    p.add_argument('--symbolic-level',type=int,default=8)
    p.add_argument('--out',type=Path,default=Path(__file__).with_suffix('.json'))
    args=p.parse_args();start=time.time()
    if not __debug__:raise RuntimeError('Do not run a verifier with Python -O')
    if min(args.radial_level,args.axis_level,args.recurrence_level,args.symbolic_level)<0:raise ValueError('Levels must be nonnegative')
    if args.axis_level>args.recurrence_level:raise ValueError('axis-level must not exceed recurrence-level')
    report={'source_commit':'5124189dd99f80478b8ad489ed44604fea241e49','runs':[]}
    for d in (F(3,2),F(2),F(7,3),F(5,2)):
        t=time.time();theory=OFPT(d)
        gs,stat,matrices=theory.reconstruct(args.radial_level)
        for (n,ell),v in gs.items():assert v==closed(d,n,ell),(d,n,ell,v,closed(d,n,ell))
        nb=theory.independent_basis(args.radial_level)
        axis,diags=compute_axis_from_integrals(theory,args.axis_level)
        assert axis[0]==-4*d*d*(2*d-2)/(2*d-1)
        assert all(v==-4*d*d for v in axis[1:])
        # The all-J axis proof is analytical (triangular normalization);
        # its established formula supplies the rest of the initial row here.
        initial=axis+[-4*d*d]*(args.recurrence_level+1-len(axis))
        X=row_recursion(d,args.recurrence_level,initial)
        for (k,l),v in X.items():
            n=min(k,l);u=-4*(d*d+2*n*(2*d+n-1))
            target=u*((2*d+2*n-2)/(2*d+2*n-1) if k==l else 1)
            assert v==target,(d,k,l,v,target)
            assert v==X[l,k]
        report['runs'].append({'Delta':str(d),'radial_level':args.radial_level,'direct_primary_count':len(gs),'radial_checks':stat,'basis_levels':nb,
                   'independent_axis_primaries':len(axis),'row_recursion_points':len(X),
                   'axis_diagonals_first_five':[str(v) for v in diags[:5]],'axis_primary_first_five':[str(v) for v in axis[:5]],
                   'direct_primaries':{f'{n},{ell}':str(v) for (n,ell),v in gs.items()},
                   'seconds':round(time.time()-t,3)})
        print('PASS',d,'direct',len(gs),'recurrence',len(X),'seconds',round(time.time()-t,2),flush=True)
    report['symbolic_radial']=symbolic_radial_checks(args.symbolic_level)
    print('PASS symbolic radial',report['symbolic_radial']['primary_count'],flush=True)
    report['seed_and_symbolic']=seed_and_symbolic_checks()
    print('PASS seed and recurrence identities',report['seed_and_symbolic']['symbolic_identity_count'],flush=True)
    report['not_claimed']=['Wolfram/xAct or Sage rerun', 'full unreduced boundary-graviton mixing', 'bare self energies', 'nonperturbative or uniform infinite-energy convergence']
    report['status']='PASS';report['elapsed_seconds']=round(time.time()-start,3)
    args.out.write_text(json.dumps(report,indent=2)+'\n')
    print('report',args.out,flush=True)

if __name__=='__main__':main()
