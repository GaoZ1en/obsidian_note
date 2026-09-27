#!/usr/bin/env python3
"""Independent checks for retained-gravity OFPT in global AdS3.

No repository spectrum implementation or saved coefficient table is imported.
SymPy is required.  Results distinguish identities from finite-level tests.
"""
from __future__ import annotations
import argparse
import itertools
import json
import math
import platform
import time
from functools import lru_cache
from pathlib import Path
from typing import Any
import sympy as s

x = s.Symbol('x', positive=True)
Delta = s.Symbol('Delta', positive=True)


def zero(expr: Any) -> bool:
    return s.cancel(expr) == 0


def coefficients(expr: Any) -> tuple[Any, ...]:
    p = s.Poly(s.expand(expr), x)
    return tuple(p.nth(j) for j in range(p.degree() + 1)) if p else (s.S.Zero,)


def expected(n: int, ell: int, d: Any) -> Any:
    """Comparison target, invoked only after canonical reconstruction."""
    h = d + n
    mu = d * (d - 2)
    c = h * (h - 1)
    u = 4 * mu - 8 * c
    if ell == 0:
        if n == 0:
            return s.factor(2*d*d*(7+2*d-8*d*d)/((2*d-1)*(2*d+1)))
        return s.factor(u*(2*h-2)/(2*h-1) - 2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1)))
    if ell == 2:
        return s.factor(u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3)))
    return s.factor(u)


class CanonicalMoments:
    """Direct fixed-momentum circular Einstein constraint integrals."""
    def __init__(self, d: Any):
        self.d = s.sympify(d)

    @lru_cache(None)
    def pair(self, i: int, j: int, sign_product: int) -> tuple[tuple[Any, ...], tuple[Any, ...]]:
        d = self.d
        pi = s.jacobi(i, d-1, 0, 1-2*x)
        pj = s.jacobi(j, d-1, 0, 1-2*x)
        di = d*pi/2+x*s.diff(pi, x)
        dj = d*pj/2+x*s.diff(pj, x)
        a = 4*(1-x)*di*dj-sign_product*(d+2*i)*(d+2*j)*x*pi*pj
        e = a+d*(d-2)*pi*pj
        return coefficients(a), coefficients(e)

    @lru_cache(None)
    def moment(self, i: int, j: int, e: int, k: int, l: int, f: int) -> Any:
        a, _ = self.pair(min(i,j), max(i,j), e)
        _, b = self.pair(min(k,l), max(k,l), f)
        d = self.d
        # The two displayed denominators are the outer radial integration;
        # (d-1+q) is the inner, center-anchored constraint integral.
        value = sum(ap*bq/(d-1+q)*(1/(d+p)-1/(2*d-1+p+q))
                    for p, ap in enumerate(a) for q, bq in enumerate(b)
                    if ap != 0 and bq != 0)
        return s.cancel(value)

    def entry(self, N: int, r: int, t: int) -> Any:
        # Rhat = sqrt((1+delta_2r,N)(1+delta_2t,N)) R/G.
        # Label the four external legs separately even when modes coincide.
        legs = [(r,-1),(N-r,-1),(t,1),(N-t,1)]
        ans = 0
        for ij in itertools.combinations(range(4), 2):
            kl = tuple(q for q in range(4) if q not in ij)
            (i,ei),(j,ej) = (legs[q] for q in ij)
            (k,ek),(l,el) = (legs[q] for q in kl)
            ans -= 2*self.moment(i,j,ei*ej,k,l,ek*el)
        return s.cancel(ans)


@lru_cache(None)
def chiral(N: int, d: Any) -> tuple[s.Matrix, tuple[Any, ...], tuple[Any, ...]]:
    """Rational primary/descendant coefficients in unnormalized product basis.

    U_pk = A_pk sqrt(g_p/F_k).  Four U's in the spectral reconstruction
    therefore involve only rational functions, not nested square roots.
    """
    g = tuple(s.factor(s.factorial(p)*s.rf(d,p)*s.factorial(N-p)*s.rf(d,N-p))
              for p in range(N+1))
    A = s.zeros(N+1,N+1)
    norms = []
    for k in range(N+1):
        c = [s.S.One]
        for p in range(k):
            c.append(s.cancel(-c[-1]*(k-p)*(d+k-p-1)/((p+1)*(d+p))))
        norm = sum(c[p]**2*s.factorial(p)*s.rf(d,p)*s.factorial(k-p)*s.rf(d,k-p)
                   for p in range(k+1))
        norm = s.factor(norm*s.factorial(N-k)*s.rf(2*d+2*k,N-k))
        norms.append(norm)
        for p in range(N+1):
            A[p,k] = s.cancel(sum(c[q]*s.binomial(N-k,p-q) for q in range(k+1)
                                   if 0 <= p-q <= N-k))
    return A, g, tuple(norms)


def circular_reconstruct(d: Any, Nmax: int) -> dict[str, Any]:
    start = time.perf_counter()
    moments = CanonicalMoments(d)
    found: dict[tuple[int,int], Any] = {}
    entry_checks = 0
    off_diagonal_checks = 0
    gram_checks = 0
    for N in range(Nmax+1):
        A,g,F = chiral(N,d)
        gram = A.T*s.diag(*g)*A
        for k in range(N+1):
            for l in range(k,N+1):
                assert zero(gram[k,l]-(F[k] if k==l else 0)), ('Gram',d,N,k,l)
                gram_checks += 1
        pairs = [(k,l) for k in range(N+1) for l in range(k+1) if (k+l)%2==0]
        new = [(k,l) for k,l in pairs if k==N]
        size = N//2+1
        def weight(r:int,t:int,k:int,l:int) -> Any:
            return s.cancel(2*(1 if k==l else 2)*g[r]*g[t]*A[r,k]*A[r,l]*A[t,k]*A[t,l]/(F[k]*F[l]))
        mat = s.zeros(size,size)
        rhs = s.zeros(size,1)
        for r in range(size):
            rhs[r] = moments.entry(N,r,r)-sum(weight(r,r,k,l)*found[k,l]
                                             for k,l in pairs if k<N)
            for j,(k,l) in enumerate(new):
                mat[r,j] = weight(r,r,k,l)
        assert mat.det() != 0, ('noninvertible primary reconstruction', d,N)
        vals = mat.inv()*rhs
        for j,kl in enumerate(new):
            found[kl] = s.factor(vals[j])
        # Check every unused off-diagonal, rather than just the fitted diagonal.
        for r in range(size):
            for t in range(r,size):
                pred = sum(weight(r,t,k,l)*found[k,l] for k,l in pairs)
                assert zero(moments.entry(N,r,t)-pred), ('compression',d,N,r,t)
                entry_checks += 1
                off_diagonal_checks += int(r!=t)
    # Formula is not used to build the canonical matrices or solve the systems.
    for (k,l), val in found.items():
        assert zero(val-expected(l,k-l,d)), ('spectrum',d,k,l,val)
    return {'Delta':str(d),'Nmax':Nmax,'primary_coefficients':len(found),
            'matrix_entry_checks':entry_checks,'unused_off_diagonal_checks':off_diagonal_checks,
            'chiral_Gram_checks':gram_checks,
            'coefficients':{f'{l},{k-l}':str(v) for (k,l),v in found.items()},
            'seconds':time.perf_counter()-start}


def quartic_number_change_tests() -> dict[str, Any]:
    """Actual constraint integrals for circular 1 <-> 3 resonances."""
    count=0
    for dd in (2,3,4):
        moments=CanonicalMoments(s.Integer(dd))
        for incoming in ((0,0,0),(0,0,1),(0,1,1),(0,0,2),(1,1,1)):
            outgoing=dd+sum(incoming)
            legs=[(outgoing,-1)]+[(a,1) for a in incoming]
            val=0
            for ij in itertools.combinations(range(4),2):
                kl=[q for q in range(4) if q not in ij]
                (i,ei),(j,ej)=[legs[q] for q in ij]
                (k,ek),(l,el)=[legs[q] for q in kl]
                val-=2*moments.moment(i,j,ei*ej,k,l,ek*el)
            assert zero(val), ('1-to-3',dd,incoming)
            count+=1
    return {'exact_circular_resonant_integrals':count,'all_zero':True,
            'scope':'Finite checks of the separate all-index intertwiner proof; not a scan of all noncircular channels.'}


def homological_tests() -> dict[str, Any]:
    E,F,v,w=s.symbols('E F v w', real=True)
    H0=s.diag(E,E,F)
    V=s.Matrix([[0,0,v],[0,0,w],[v,w,0]])
    S=s.zeros(3)
    for i in range(3):
        for j in range(3):
            if H0[i,i]!=H0[j,j]:
                S[i,j]=V[i,j]/(H0[j,j]-H0[i,i])
    assert (S.T+S).applyfunc(s.cancel)==s.zeros(3)
    assert (S*H0-H0*S-V).applyfunc(s.cancel)==s.zeros(3)
    bch=-(S*V-V*S)/2
    feshbach=s.Matrix([[v*v,v*w],[v*w,w*w]])/(E-F)
    assert (bch[:2,:2]-feshbach).applyfunc(s.cancel)==s.zeros(2)
    T,z=s.symbols('T z',real=True, nonzero=True)
    ordered=s.I*T/z+(1-s.exp(s.I*z*T))/z**2
    assert zero(s.diff(ordered,T,2)-s.exp(s.I*z*T))
    assert s.limit(ordered,T,0)==0
    assert s.limit(s.diff(ordered,T),T,0)==0
    assert s.limit(ordered,z,0)==T*T/2
    return {'Schrieffer_Wolff_vs_Feshbach':'exact 3-state degenerate-block identity',
            'Dyson_double_integral':'derivatives, initial data and resonant limit checked',
            'scope':'Algebra/sign checks; these matrices are not an Einstein V2 computation.'}


def recurrence_tests() -> dict[str, Any]:
    n=s.Symbol('n',integer=True,positive=True)
    d=Delta
    mu=d*(d-2)
    def aa(j):return (j+1)*(d+j)*(2*d+j-1)/(2*(2*d+2*j-1))
    def cc(j):return j*(d+j-1)*(2*d+j-2)/(2*(2*d+2*j-1))
    def uu(j):return 4*mu-8*(d+j)*(d+j-1)
    def diag(j):return uu(j)*(2*(d+j)-2)/(2*(d+j)-1)
    h=d+n; C=h*(h-1)
    S0=4*(C-mu)*(2*C+mu)/(2*h-1)
    S1=4*h*(n+1)*(2*d+n-1)*(2*h*h-mu)/((2*h-1)*(2*h+1))
    expressions=[aa(n)*(uu(n+1)-uu(n))+cc(n)*(uu(n-1)-uu(n))-2*uu(n),
                 (-2*aa(n)-2*cc(n)-2)*diag(n)+2*aa(n)*uu(n)+2*cc(n)*uu(n-1)-S0,
                 cc(n+1)*(diag(n)-uu(n))+aa(n)*(diag(n+1)-uu(n))+cc(n)*(uu(n-1)-uu(n))-2*uu(n)-S1]
    for e in expressions:
        assert zero(e)
        assert zero(e.subs(n,0))
    assert s.limit(expected(0,0,d),d,s.Rational(3,2))==-s.Rational(9,2)
    return {'arbitrary_index_residuals':len(expressions),'endpoint_residuals':len(expressions),
            'removable_pole_Delta_3_over_2':'-9/2',
            'scope':'Verifies the imported internal Einstein-Casimir recurrence; does not derive its tensor identity.'}


def initial_row_tests() -> dict[str, Any]:
    count=0
    for dd in (s.Rational(3,2),s.Integer(2),s.Rational(7,3)):
        row=[]
        for J in range(13):
            # Evaluate the canonical beta integrals before primary projection.
            c2=s.rf(dd,J)/(2*s.pi*s.factorial(J))
            B=lambda a,b:s.gamma(a)*s.gamma(b)/s.gamma(a+b)
            direct=-8*s.pi*dd*c2*(dd**2*B(dd,J+1)+(J**2*B(dd+1,J) if J else 0)-dd*B(2*dd-1,J+1))
            direct=s.simplify(s.expand_func(direct))
            target=-4*dd**2+4*dd**2/(2*dd-1)*s.rf(dd,J)/s.rf(2*dd,J)
            assert zero(direct-target),('beta',dd,J)
            A,g,F=chiral(J,dd)
            weights=[s.cancel(A[0,k]**2*g[0]/F[k]) for k in range(J+1)]
            assert sum(weights)==1
            assert weights[-1]>0
            val=s.factor((direct-sum(weights[k]*row[k] for k in range(J)))/weights[-1])
            row.append(val)
            want=-4*dd**2*(2*dd-2)/(2*dd-1) if J==0 else -4*dd**2
            assert zero(val-want)
            count+=1
    return {'direct_beta_integrals_and_triangular_projections':count,'Jmax':12,
            'scope':'Arbitrary-J proof is in the note; these are finite independent evaluations.'}


def boundary_mode_tests() -> dict[str, Any]:
    r=s.Symbol('r',positive=True); f=1+r*r
    g=s.diag(-f,1/f,r*r); gi=s.diag(-1/f,f,1/r**2)
    def zeta(m):
        m=s.Integer(m)
        norm=1/s.sqrt(8*s.pi*m*(m*m-1))
        return norm*s.Matrix([s.I*r**m/f**((m+2)/2)*(r*r-(m-2)*(m+1)/2),
                              -m*r**(m-1)*(2*r*r+m+1)/(2*f**(m/2)),
                              -s.I*r**(m-2)*(r*r+m*(m+1)/2)/f**(m/2)])
    def metric(Z,m):
        dZ=s.Matrix.hstack(-s.I*m*Z,Z.diff(r),s.I*m*Z)
        return (Z[1]*g.diff(r)+dZ.T*g+g*dZ).applyfunc(s.simplify)
    h=metric(zeta(2),2); hc=s.conjugate(h)
    assert s.simplify(s.trace(gi*h))==0
    Gt=s.Matrix([[0,r/f,0],[r*f,0,0],[0,0,0]])
    Dt=-2*s.I*h-Gt.T*h-h*Gt
    Dtc=2*s.I*hc-Gt.T*hc-hc*Gt
    density=s.factor(-r/(2*f)*(s.trace(gi*h*gi*Dtc)-s.trace(gi*hc*gi*Dt)))
    omega=s.integrate(2*s.pi*density,(r,0,s.oo))
    assert omega==-s.I
    boundary=s.factor(-2*s.pi*r*sum((gi*h)[0,k]*(gi*hc*gi)[1,k]-(gi*hc)[0,k]*(gi*h*gi)[1,k] for k in range(3)))
    assert s.limit(boundary,r,s.oo)==0
    R=s.Matrix([s.I*r/(2*s.sqrt(f)),-s.sqrt(f)/2,-s.I*s.sqrt(f)/(2*r)])
    for m in range(2,6):
        Z=zeta(m)
        bracket=(-s.I*m*R[0]+s.I*m*R[2])*Z+R[1]*Z.diff(r)-(-s.I*Z[0]+s.I*Z[2])*R-Z[1]*R.diff(r)
        res=bracket-s.sqrt((m-1)*(m+2))*zeta(m+1)
        assert res.applyfunc(s.simplify)==s.zeros(3,1),('graviton ladder',m)
    return {'seed_CPS_bulk_pairing':str(omega),'seed_CPS_boundary_limit':'0',
            'seed_trace':'0','normalized_vector_ladder_checks':4,
            'scope':'Uses the Einstein CPS bulk plus corner pairing, not an assumed Virasoro norm.'}


def cubic_integral_tests() -> dict[str, Any]:
    d=Delta; m=s.Symbol('m',integer=True,positive=True); om=s.Symbol('omega',real=True)
    z=1-x; a=m*(m-1)/2; b=(m-1)*(m+2)/2
    p,dp,sg=s.symbols('p dp sg')
    F=om*z*(1-a*x)*p+m*x*z*(2+(m-1)*x)*dp+m*z*(2+(m-1)*x)*d*p/2-m*m*x*(2+(m-1)*x)*p/2-m*(1+b*x)*p
    ZDU=-sg*(1-a*x)+m*(2+(m-1)*x)/2
    integrand=s.expand((d*x*(sg*F-om*z*ZDU*p)+z*(1-a*x)*((d*(d-2)+d*d*z-sg*d*om*x-d*m*x)*p+2*d*x*z*dp))/2)
    A=integrand.coeff(p); B=integrand.coeff(dp)
    ibp=s.factor((A-s.diff(B,x)-((d-2)/x-(m-1)/z)*B)/(x*z))
    n=s.Symbol('n',integer=True,nonnegative=True)
    assert zero(ibp.subs({sg:1,om:d+m+2*n})+d*(m-1)*((d+n)+m*(d+m+n+1)*x))
    assert zero(ibp.subs({sg:-1,om:d+m+2*n})+d*(m+1)*n)
    count=0
    for mm in range(2,7):
        for nn in range(5):
            P=s.jacobi(nn,d-1,mm,1-2*x)
            for sign in (1,-1):
                expr=s.expand(integrand.subs({m:mm,om:d+mm+2*nn,sg:sign,p:P,dp:s.diff(P,x)})*(1-x)**(mm-1))
                integral=s.factor(sum(coef/(d-1+power[0]) for power,coef in s.Poly(expr,x).terms()))
                beta=s.factor(s.factorial(mm)/s.rf(d,mm+1))
                want=(-d*d*(mm*mm-1)*beta if nn==0 else d*d*mm*(mm*mm-1)*beta/(d+mm+1) if nn==1 else 0) if sign==1 else 0
                assert zero(integral-want),('cubic endpoint integral',mm,nn,sign)
                count+=1
    # Exact finite sum for the specified normal-ordered bulk-cubic contribution.
    j=s.Symbol('j',integer=True,positive=True)
    term=-64*(j-1)/(j+2)*(2/(j+2)+j/(j+3)**2)
    partial_fractions=320/(j+3)+768/(j+3)**2-512/(j+2)+384/(j+2)**2
    assert zero(term-partial_fractions)
    cutoff_values={}
    for K in (2,3,8,20,100):
        direct=sum(term.subs(j,q) for q in range(2,K+1))
        closed=-192*s.harmonic(K+2)+1152*s.harmonic(K+2,2)+s.Rational(320,K+3)+s.Rational(768,(K+3)**2)-1344
        assert zero(direct-closed)
        cutoff_values[str(K)]=str(direct)
    return {'arbitrary_m_omega_IBP_identities':2,'generic_mass_finite_mode_integrals':count,
            'ground_pair_creation_vertex':'zero for all radial indices, by Jacobi orthogonality',
            'Delta_2_bulk_cubic_self_energy_over_G':cutoff_values,
            'large_cutoff_log_coefficient_over_G':-192,
            'scope':'This is the TT-representative bulk-cubic contribution, NOT a complete bare self-energy including seagulls, canonical/boundary terms and counterterms.'}


def direct_bulk_vertex_tests() -> dict[str, Any]:
    """Direct h:T integrals, independent of the endpoint-current reduction."""
    r=s.Symbol('r',positive=True); f=1+r*r
    g=s.diag(-f,1/f,r*r); gi=g.inv()
    U=1/(s.sqrt(2*s.pi)*f)
    results=[]
    cases=[(2,0,True),(2,1,True),(3,0,True),(2,0,False),(2,1,False)]
    wanted=[-1/s.sqrt(s.pi),s.sqrt(6)/(5*s.sqrt(s.pi)),
            -4*s.sqrt(3)/(5*s.sqrt(s.pi)),s.S.Zero,s.S.Zero]
    for (mm,nn,emission),want in zip(cases,wanted):
        m=s.Integer(mm); n=s.Integer(nn)
        norm=1/s.sqrt(8*s.pi*m*(m*m-1))
        Z=norm*s.Matrix([s.I*r**m/f**((m+2)/2)*(r*r-(m-2)*(m+1)/2),
                        -m*r**(m-1)*(2*r*r+m+1)/(2*f**(m/2)),
                        -s.I*r**(m-2)*(r*r+m*(m+1)/2)/f**(m/2)])
        dz=s.Matrix.hstack(-s.I*m*Z,Z.diff(r),s.I*m*Z)
        h=(Z[1]*g.diff(r)+dz.T*g+g*dz).applyfunc(s.simplify)
        R=s.sqrt((n+m+1)/(2*s.pi*(n+1)))*r**m*f**(-(2+m)/2)*s.jacobi(n,1,m,(r*r-1)/f)
        du=s.Matrix([-2*s.I*U if emission else 2*s.I*U,s.diff(U,r),0])
        dv=s.Matrix([s.I*(2+m+2*n)*R,s.diff(R,r),s.I*m*R])
        # Delta=2 is massless. These are the two cross terms in :T:.
        T=du*dv.T+dv*du.T-g*(du.T*gi*dv)[0]
        contraction=s.factor(s.trace(gi*s.conjugate(h)*gi*T))
        value=s.simplify(s.integrate(-s.pi*r*contraction,(r,0,s.oo)))
        assert zero(value-want),('direct bulk hT vertex',mm,nn,emission,value)
        results.append({'m':mm,'n':nn,'emission':emission,'value':str(value)})
    return {'Delta':2,'direct_hT_integrals':results,
            'scope':'Actual radial tensor contraction; not the endpoint-polynomial formula.'}


def descendant_counts() -> dict[str, Any]:
    def part(n):return int(s.partition(n)) if n>=0 else 0
    def vacuum_part(n):return part(n)-part(n-1)
    blocks={}
    for E in (4,6,8):
        L=E//2; rows=[]
        rows.append({'sector':'vacuum descendants','multiplicity':vacuum_part(L)**2,'gamma_over_G':'0'})
        for k in range(max(0,L-2)+1):
            for l in range(max(0,L-2)+1):
                if (k+l)%2:continue
                count=part(L-2-k)*part(L-2-l)
                if count:
                    rows.append({'sector':f'two scalar primary ({min(k,l)},{k-l}) and Virasoro descendants',
                                 'multiplicity':count,'gamma_over_G':str(expected(min(k,l),abs(k-l),s.Integer(2)))})
        if E==8:
            rows.append({'sector':'four ground scalars (collision check only)','multiplicity':1,'gamma_over_G':str(6*expected(0,0,s.Integer(2)))})
        blocks[str(E)]=rows
    assert sum(r['multiplicity'] for r in blocks['4'])==2
    assert sum(r['multiplicity'] for r in blocks['6'])==3
    assert sum(r['multiplicity'] for r in blocks['8'])==15
    return {'Delta':2,'J':0,'even_scalar_parity_blocks':blocks,
            'scope':'Character counts and theorem-implied leading eigenvalues; not a separately assembled raw unreduced V2 matrix.'}


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--radial-level',type=int,default=8)
    parser.add_argument('--symbolic-level',type=int,default=3)
    parser.add_argument('--out',type=Path,default=Path('retained_gravity_ofpt_results.json'))
    args=parser.parse_args()
    if args.radial_level<0 or args.symbolic_level<0:
        parser.error('levels must be nonnegative')
    start=time.perf_counter()
    report={'python':platform.python_version(),'sympy':s.__version__,'tests':{}}
    runs=[]
    for dd in [s.Rational(3,2),s.Integer(2),s.Rational(7,3)]:
        runs.append(circular_reconstruct(dd,args.radial_level))
        print('canonical reconstruction passed',dd,args.radial_level,flush=True)
    runs.append(circular_reconstruct(Delta,args.symbolic_level))
    print('symbolic canonical reconstruction passed',args.symbolic_level,flush=True)
    report['tests']['canonical']=runs
    for name, func in [('homological',homological_tests),('boundary_modes',boundary_mode_tests),('cubic',cubic_integral_tests),('direct_bulk_vertices',direct_bulk_vertex_tests),('number_change',quartic_number_change_tests),('initial_row',initial_row_tests),('recurrence',recurrence_tests),('descendant_counts',descendant_counts)]:
        report['tests'][name]=func()
        print(name,'passed',flush=True)
    report['elapsed_seconds']=time.perf_counter()-start
    args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(report,indent=2),encoding='utf-8')
    print(args.out)

if __name__=='__main__':
    main()
