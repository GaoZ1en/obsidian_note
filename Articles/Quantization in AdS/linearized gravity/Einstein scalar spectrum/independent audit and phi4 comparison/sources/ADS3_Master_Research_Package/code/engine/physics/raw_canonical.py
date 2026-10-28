#!/usr/bin/env python3
"""Independent reconstruction of the source's direct canonical calculation.

Inputs: normalized free modes, spatial scalar and momentum constraints, H4_con,
the boundary-density operator, and free sl(2) ladders. No energy-shift formula
is used until the final comparison. Exact SymPy arithmetic is used for finite
coefficients; mpmath quadratures integrate unreduced radial expressions.
"""
from __future__ import annotations
import argparse, itertools, json, time
from functools import lru_cache
from pathlib import Path
import sympy as s
import mpmath as mp

ROOT=Path(__file__).resolve().parent
y=s.symbols('y', positive=True)
x=s.symbols('x', positive=True)
I=s.I

def zero(v):
    return s.simplify(s.expand(v)) == 0

@lru_cache(None)
def circular_mode(d,n):
    return tuple(s.rf(d,n)/s.factorial(n)*s.rf(-n,k)*s.rf(n+d,k)
                 /(s.rf(d,k)*s.factorial(k)) for k in range(n+1))

@lru_cache(None)
def circular_pair(d,n,e,m,f):
    """Polarize rho,Q,j directly from the free field expressions."""
    an,am=circular_mode(d,n),circular_mode(d,m)
    rho=[s.S.Zero]*(n+m+2); q=rho.copy(); j=[s.S.Zero]*(n+m+1)
    wn,wm=d+2*n,d+2*m; mu=d*(d-2)
    for i,ai in enumerate(an):
        for k,ak in enumerate(am):
            t=ai*ak; h=i+k; di,dk=d+2*i,d+2*k
            rho[h]+=t*(di*dk+mu)/2
            rho[h+1]-=t*(di*dk+e*f*wn*wm)/2
            q[h]-=mu*t; q[h+1]-=e*f*wn*wm*t
            j[h]+=t*(e*wn*dk+f*wm*di)/4
    rho,q,j=map(lambda z:tuple(map(s.factor,z)),(rho,q,j))
    alpha=s.factor(sum(rho[h]/(d*(d+h-1)) for h in range(len(rho))))
    beta=tuple(s.factor(sum(rho[h]/(4*(2*d+2*i+1)*(d+h-1))
                           for h in range(i+1,len(rho))))
               for i in range(len(rho)-1))
    return rho,q,j,alpha,beta

def zhat(d,h):
    if h==0:return s.S.Zero
    return d/(8*(2*d+2*h-3))*sum(1/(d+a)-1/(2*d+a-1) for a in range(h))

@lru_cache(None)
def integrated_pair(d,a,b):
    """Analytically integrated spatial H4 pairing; retain all six polarizations."""
    _,qa,ja,aa,ba=circular_pair(d,*a)
    _,qb,jb,ab,bb=circular_pair(d,*b)
    v=-2*sum(ja[h]*jb[k]/((2*d+2*h+1)*(2*d+2*k+1)*(4*d+2*h+2*k))
             for h in range(len(ja)) for k in range(len(jb)))
    v-=aa*sum(qb[h]*zhat(d,h) for h in range(len(qb)))
    v-=sum(ba[i]*qb[h]/(4*d+2*i+2*h-2) for i in range(len(ba)) for h in range(len(qb)))
    su=d/8*((d-1)/8-zhat(d,1))
    v-=4*(aa*ab*su+aa*sum(bb[k]*zhat(d,k) for k in range(len(bb)))
          +ab*sum(ba[i]*zhat(d,i) for i in range(len(ba)))
          +sum(ba[i]*bb[k]/(4*d+2*i+2*k-2) for i in range(len(ba)) for k in range(len(bb))))
    return s.factor(v)

def partitions(legs):
    for ids in itertools.combinations(range(4),2):
        co=tuple(i for i in range(4) if i not in ids)
        yield tuple(legs[i] for i in ids),tuple(legs[i] for i in co)

def circular_entry(d,N,r,t):
    legs=((r,-1),(N-r,-1),(t,1),(N-t,1))
    v=sum(integrated_pair(d,(*a[0],*a[1]),(*b[0],*b[1])) for a,b in partitions(legs))
    return s.factor(32*v/s.sqrt((1+int(2*r==N))*(1+int(2*t==N))))

@lru_cache(None)
def chiral_U(d,N):
    """Build by lowering annihilation, then normalized repeated raising."""
    ans=s.zeros(N+1)
    for k in range(N+1):
        v=[s.S.One]
        for p in range(k):
            v.append(s.simplify(-v[-1]*s.sqrt((k-p)*(d+k-p-1)/((p+1)*(d+p)))))
        norm=s.sqrt(sum(a*a for a in v));v=[s.simplify(a/norm) for a in v]
        for l in range(k,N):
            w=[s.S.Zero]*(l+2)
            for p,a in enumerate(v):
                w[p+1]+=a*s.sqrt((p+1)*(d+p))
                w[p]+=a*s.sqrt((l-p+1)*(d+l-p))
            den=s.sqrt((l-k+1)*(2*d+k+l))
            v=[s.simplify(a/den) for a in w]
        for p,a in enumerate(v):ans[p,k]=a
    assert all(zero(v) for v in ans.T*ans-s.eye(N+1))
    return ans

def direct_reconstruction(d,Nmax):
    known={}; matrices=[]; residuals=0
    for N in range(Nmax+1):
        nr=N//2+1;U=chiral_U(d,N)
        M=s.Matrix(nr,nr,lambda r,t:circular_entry(d,N,r,t));new=M.copy()
        sr=[s.sqrt(s.Rational(2,1+int(2*r==N))) for r in range(nr)]
        for k in range(N):
            for l in range(N):
                if (k+l)%2:continue
                c=s.Matrix([sr[r]*U[r,k]*U[r,l] for r in range(nr)])
                new-=c*c.T*known[(min(k,l),abs(k-l))]
        labels=list(range(N,-1,-2))
        D=s.diag(*[U[r,N] for r in range(nr)])
        O=s.Matrix(nr,nr,lambda r,j:sr[r]*U[r,labels[j]])
        diag=(O.T*D.inv()*new*D.inv()*O).applyfunc(s.simplify)
        for r in range(nr):
            for t in range(nr):
                if r!=t:
                    assert zero(diag[r,t]),(d,N,diag);residuals+=1
        for i,a in enumerate(labels):known[(a,N-a)]=s.factor(diag[i,i]/(2-int(a==N)))
        matrices.append({'N':N,'matrix':[[str(v) for v in M.row(r)] for r in range(nr)],
                         'new_eigenvalues':{str((a,N-a)):str(known[(a,N-a)]) for a in labels}})
    return known,matrices,residuals

def benchmark(d,n,l):
    h=d+n;C=h*(h-1);mu=d*(d-2);u=-4*(d*d+2*n*(2*d+n-1))
    if l==0:
        # Cancel the removable factor before numerical specialization.
        dd=s.symbols('dd');hh=dd+n;cc=hh*(hh-1);mm=dd*(dd-2)
        uu=-4*(dd*dd+2*n*(2*dd+n-1))
        return s.factor(uu*(2*hh-2)/(2*hh-1)-2*(cc+mm)**2/((2*hh-3)*(2*hh-1)*(2*hh+1))).subs(dd,d)
    if l==2:return u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u

def mpval(a):return mp.mpf(str(s.N(a,mp.mp.dps+5)))

def circular_quad(d,N,r,t,dps=45):
    """Integrate ORIGINAL response products, without Zhat or integrated_pair."""
    mp.mp.dps=dps;dm=mpval(d)
    def U(xx):
        if xx==0:return mp.mpf(0)
        if xx<mp.mpf('.7'):
            integ=mp.atanh(xx)-xx-xx**(2*dm+1)/(2*dm+1)*mp.hyp2f1(1,dm+mp.mpf('.5'),dm+mp.mpf('1.5'),xx*xx)
        else:
            def fun(t):return dm-1 if t==1 else (t*t-t**(2*dm))/(1-t*t)
            integ=(mp.digamma(dm+mp.mpf('.5'))-mp.digamma(mp.mpf('1.5')))/2-mp.quad(fun,[xx,1])
        return dm/(4*xx)*integ
    legs=((r,-1),(N-r,-1),(t,1),(N-t,1))
    cached={}
    for pair in {a for a,b in partitions(legs)}|{b for a,b in partitions(legs)}:
        rho,q,j,alpha,beta=circular_pair(d,*pair[0],*pair[1])
        cached[pair]=(tuple(map(mpval,q)),tuple(map(mpval,j)),mpval(alpha),tuple(map(mpval,beta)))
    def vals(pair,xx,uu):
        q,j,aa,beta=cached[pair]
        qq=xx**(2*dm)*sum(a*xx**(2*i) for i,a in enumerate(q))
        uv=aa*uu+xx**(2*dm)*sum(a*xx**(2*i) for i,a in enumerate(beta))
        def F(a):return -mp.expm1(a*mp.log(xx))/a+mp.expm1((a+2)*mp.log(xx))/(a+2)
        Av=1j*xx*xx/(1-xx*xx)*sum(a*F(2*dm+2*h-1) for h,a in enumerate(j)) if xx!=1 else 0j
        return qq,uv,Av
    def integrand(xx):
        if xx in (0,1):return mp.mpf(0)
        uu=U(xx);v=0j
        for a,b in partitions(legs):
            qa,ua,Aa=vals(a,xx,uu); qb,ub,Ab=vals(b,xx,uu)
            v+=2*Aa*Ab-ua*qb-4*ua*ub
        return mp.re(v)/xx**3
    value=32/mp.sqrt((1+int(2*r==N))*(1+int(2*t==N)))*mp.quad(integrand,[0,mp.mpf('.5'),mp.mpf('.85'),1])
    exact=circular_entry(d,N,r,t)
    err=abs(value-mpval(exact))
    assert err<mp.mpf('1e-30'),(d,N,r,t,value,exact,err)
    return {'Delta':str(d),'N':N,'row':r,'column':t,'quadrature':str(value),'exact':str(exact),'absolute_error':str(err)}

@lru_cache(None)
def angular_pair(n,j,e,m,k,f):
    """Full angular source and original constraint solutions, Delta=2."""
    # Rational disk coordinate avoids branch-ambiguous radicals at y>1.
    d=s.Integer(2);Y=(1+x*x)/(1-x*x);H=4*x*x/(1-x*x)**2
    rr=2*x/(1-x*x);jac=4*x/(1-x*x)**2;kk=e*j+f*k;mm=abs(kk)
    def dy(v):return s.factor(s.diff(v,x)/jac)
    def mode(n,j):
        a=abs(j)
        return s.factor(s.sqrt(s.rf(d+n,a)/s.rf(n+1,a))*rr**a*Y**(-d-a)*s.jacobi(n,d-1,a,1-2/Y**2))
    Ra,Rb=mode(n,j),mode(m,k);wa,wb=d+2*n+abs(j),d+2*m+abs(k)
    ca,cb=-I*e*wa/Y*Ra,-I*f*wb/Y*Rb
    rho=s.factor((ca*cb+H*dy(Ra)*dy(Rb)-e*f*j*k/H*Ra*Rb)/2)
    Q=s.factor(ca*cb)
    jy=s.factor((ca*dy(Rb)+cb*dy(Ra))/4)
    jt=s.factor((ca*I*f*k*Rb+cb*I*e*j*Ra)/4)
    # Find coefficients of the ansatz from the full differential equation.
    ss=list(range(mm+2,2*d+abs(j)+abs(k)+2*n+2*m+2,2));cs=s.symbols('c:'+str(len(ss)))
    trial=rr**mm*sum(c*Y**(-a) for c,a in zip(cs,ss))
    residual=s.factor(-H*dy(dy(trial))-2*Y*dy(trial)+(2+mm*mm/H)*trial-rho/2)
    numerator=s.together(residual).as_numer_denom()[0]
    sol=s.solve(s.Poly(numerator,x).all_coeffs(),cs,dict=True)
    assert len(sol)==1,(n,j,e,m,k,f,trial,sol)
    u=s.simplify(trial.subs(sol[0]));assert zero(residual.subs(sol[0]))
    Cp=[];ints=[]
    for sign in (1,-1):
        rhs=s.factor(H*x**(sign*kk)*(jy+sign*I*jt/H)*jac)
        # Factors are rational for the low angular check.
        ant=s.integrate(rhs,x,risch=True)
        integ=s.factor(ant-s.limit(ant,x,0,dir='+'))
        ints.append(integ)
        Cp.append(s.factor(x**(-sign*kk)/H*integ))
    if mm>=2:
        plus=s.limit(ints[0],x,1,dir='-');minus=s.limit(ints[1],x,1,dir='-')
        if kk>=2:Cp[1]=s.factor(Cp[1]+(plus-minus)*x**kk/H)
        else:Cp[0]=s.factor(Cp[0]+(minus-plus)*x**(-kk)/H)
    A=s.factor((Cp[0]+Cp[1])/2);B=s.factor((Cp[0]-Cp[1])/(2*I))
    assert zero(dy(A)+2*Y/H*A+I*kk/H*B-jy)
    assert zero(dy(B)+2*Y/H*B-I*kk/H*A-jt/H)
    if mm>=2:assert s.limit(H*B,x,1,dir='-')==0
    pm=x**mm*(Y+mm)
    density_integral=s.integrate(s.factor(pm*rho*jac),(x,0,1)) if mm>=2 else s.S.Zero
    return rho,Q,u,A,B,kk,s.simplify(density_integral)

def angular_entry(outgoing,incoming):
    legs=tuple((*a,-1) for a in outgoing)+tuple((*a,1) for a in incoming)
    contact=0;exchange=0
    for a,b in partitions(legs):
        ra,qa,ua,Aa,Ba,ka,Ia=angular_pair(*a[0],*a[1])
        rb,qb,ub,Ab,Bb,kb,Ib=angular_pair(*b[0],*b[1])
        assert ka+kb==0
        val=s.factor((1+x*x)/(1-x*x)*4*x/(1-x*x)**2*(2*(Aa*Ab+Ba*Bb)-ua*qb-4*ua*ub))
        contact+=s.integrate(val,(x,0,1))
        if abs(ka)>=2:exchange+=Ia*Ib/(ka*ka-1)
    norm=s.sqrt((1+int(outgoing[0]==outgoing[1]))*(1+int(incoming[0]==incoming[1])))
    return s.simplify(32*contact/norm),s.simplify(-8*exchange/norm)

def angular_check():
    A=((0,0),(1,0));B=((0,1),(0,-1));bs=[A,B]
    C=s.zeros(2);X=s.zeros(2)
    for r in range(2):
        for t in range(r,2):
            cc,xx=angular_entry(bs[r],bs[t]);C[r,t]=C[t,r]=cc;X[r,t]=X[t,r]=xx
    expected_C=s.Matrix([[-s.Rational(176,7),s.Rational(488,35)],[s.Rational(488,35),-s.Rational(4064,175)]])
    expected_X=s.diag(0,-s.Rational(48,25))
    assert C==expected_C and X==expected_X,(C,X)
    return {'contact':str(C),'boundary_exchange':str(X),'full_block_eigenvalues':[str(v) for v in (C+X).eigenvals()],
            'constraint_pairs_checked':angular_pair.cache_info().currsize}

def symbolic_checks():
    d=s.symbols('d',positive=True)
    a,b=s.symbols('a b',positive=True)
    # Independent local proof of the one-body virial cancellation.
    R,Rp,Rpp,w,j,mu=s.symbols('R Rp Rpp w j mu',real=True)
    H=y*y-1;p=y*H;Q=mu*y+j*j*y/H-w*w/y
    B=(y-1)*(p*Rp**2-Q*R**2)
    dB=s.diff(B,y)+s.diff(B,R)*Rp+s.diff(B,Rp)*Rpp
    vir=(y-1)**2*(2*y+1)*Rp**2+(mu*(2*y-1)-w*w/y**2+j*j/(y+1)**2)*R**2
    # Equation: (-p R''-p'R'+Q R)*[-2(y-1)R'] = dB + vir.
    rr=s.factor((-p*Rpp-s.diff(p,y)*Rp+Q*R)*(-2*(y-1)*Rp)-dB-vir)
    assert rr==0
    checks=1
    # The nonpolynomial coefficient equals the free energy charge for every tested source.
    for n in range(3):
        for m in range(3):
            for e,f in itertools.product((-1,1),repeat=2):
                rho,q,jj,alpha,beta=circular_pair(d,n,e,m,f)
                target=(d+2*n)/d if n==m and e==-f else 0
                assert zero(alpha-target);checks+=1
    return {'arbitrary_symbolic_virial_identity':True,'symbolic_mass_circular_source_checks':checks-1}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--max-level',type=int,default=5);ap.add_argument('--skip-quadrature',action='store_true');ap.add_argument('--skip-angular',action='store_true')
    args=ap.parse_args();start=time.time();out={'input_commit':'ff06682448838bcbb02b135bd61bc661b394cbba','scope':'independent canonical source evaluation; benchmark compared only after reconstruction','symbolic':symbolic_checks(),'circular':[]}
    for d in (s.Rational(3,2),s.Integer(2),s.Rational(7,3)):
        known,mats,checks=direct_reconstruction(d,args.max_level)
        residuals=[s.factor(v-benchmark(d,*key)) for key,v in known.items()]
        assert all(v==0 for v in residuals),(d,residuals)
        out['circular'].append({'Delta':str(d),'max_level':args.max_level,'matrices':mats,'primary_coefficients':{str(k):str(v) for k,v in known.items()},'reconstruction_offdiagonal_zero_checks':checks,'posthoc_benchmark_zero_checks':len(residuals)})
        print('circular completed',d,len(known),'primaries',flush=True)
    if not args.skip_angular:
        out['angular']=angular_check();print('angular block completed',flush=True)
    if not args.skip_quadrature:
        out['quadratures']=[circular_quad(*v) for v in ((s.Rational(5,4),0,0,0),(s.Rational(3,2),1,0,0),(s.Rational(7,3),2,0,1))];print('original-response quadratures completed',flush=True)
    out['elapsed_seconds']=time.time()-start
    (ROOT/'verification_results.json').write_text(json.dumps(out,indent=2,ensure_ascii=False))
    print('all checks passed; seconds',out['elapsed_seconds'])

if __name__=='__main__':main()
