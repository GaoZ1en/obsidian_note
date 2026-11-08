"""Fail-closed physics-interface regression for the master note.

The direct finite-sum backend is a copied, unchanged implementation from the
first research package.  This wrapper independently reconstructs the complete
closed pair coefficient and checks every produced channel, including s=0,2.
The remaining checks are new symbolic identities or independent quadratures.
No assert statement is used for this wrapper's acceptance decisions.
"""
from fractions import Fraction
from pathlib import Path
import json, platform, sys, time
import sympy as sp
import mpmath as mp
from direct_k4 import DirectK4

HERE = Path(__file__).resolve().parent

def require(ok, message):
    if not ok:
        raise RuntimeError(message)

def pair_coefficient(delta, n, spin):
    d = Fraction(delta)
    h = d+n
    c = h*(h-1)
    mu = d*(d-2)
    u = 4*mu-8*c
    if spin == 0:
        if n == 0:
            return -4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
        return u*(2*h-2)/(2*h-1)-2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin == 2:
        return u+Fraction((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    require(spin >= 4 and spin % 2 == 0, "Invalid physical pair spin")
    return u

def main():
    require(not sys.flags.optimize, "Legacy backend asserts require a non-optimized interpreter")
    started = time.perf_counter()
    report = {
        "status": "running",
        "environment": {
            "python": sys.version,
            "platform": platform.platform(),
            "sympy": sp.__version__,
            "mpmath": mp.__version__,
            "optimization": sys.flags.optimize,
        },
        "tests": [],
    }
    def record(name, count, **kwargs):
        report["tests"].append({"name": name, "status": "passed", "checks": count, **kwargs})
    d,n,r,j = sp.symbols("d n r j", real=True)
    h=d+n; c=h*(h-1); mu=d*(d-2); u=4*mu-8*c
    an=(n+1)*(d+n)*(2*d+n-1)/(2*(2*d+2*n-1))
    cn=n*(d+n-1)*(2*d+n-2)/(2*(2*d+2*n-1))
    def Lop(fn):
        return an*(fn.subs(n,n+1)-fn)+cn*(fn.subs(n,n-1)-fn)
    require(sp.factor(Lop(c)-(2*c-mu))==0, "Casimir polynomial recurrence")
    diag=u*(2*h-2)/(2*h-1)
    Sdiag=4*(c-mu)*(2*c+mu)/(2*h-1)
    residual=2*an*(u-diag)+2*cn*(u.subs(n,n-1)-diag)-2*diag-Sdiag
    require(sp.factor(residual)==0, "Crossed diagonal equation")
    aad=an.subs(n,n+1)
    cad=cn.subs(n,n+1)
    Snear=4*h*(n+1)*(2*d+n-1)*(2*h*h-mu)/((2*h-1)*(2*h+1))
    near=aad*(u-u)+cad*(diag-u)
    near+=an*(diag.subs(n,n+1)-u)+cn*(u.subs(n,n-1)-u)-2*u-Snear
    require(sp.factor(near)==0, "Crossed adjacent equation")
    require(sp.factor(Lop(u)-2*u)==0, "Crossed off-diagonal tail")
    record("all_parameter_crossed_recurrence", 4, evidence="symbolic rational identities")
    numerator=30*c*c-20*c*mu-24*c-2*mu*mu+12*mu
    poly=sp.Poly(sp.expand(numerator.subs({d:r+1,n:j+1})),r,j)
    require(all(x>0 for x in poly.coeffs()), "Positive spin-zero defect coefficients")
    ground=-4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
    source_ratio=d*(2*d-3)/(2*(4*d*(d-1)-3))
    require(sp.cancel(source_ratio)==d/(2*(2*d+1)), "Exceptional response cancellation")
    require(ground.subs(d,sp.Rational(3,2))==sp.Rational(-9,2), "Exceptional physical pair coefficient")
    record("positive_defect_and_exceptional_mass", 3, positive_polynomial=str(poly.as_expr()))
    p,q=sp.symbols("p q", integer=True, nonnegative=True)
    NN=sp.symbols("N", integer=True, positive=True)
    b=2*NN*mu-8*(NN*d/2+q)*(NN*d/2+q-1)
    be=-2*NN*(NN-1)*d*d-8*q*(NN*d+q-1)
    require(sp.expand(b-be)==0, "Oriented Casimir baseline")
    record("oriented_baseline", 1)
    z,t=sp.symbols("z t", real=True)
    # Independent free KG norm: finite Jacobi expansion with exact beta moments.
    kg_count=0
    for dd in [sp.Rational(3,2),sp.Rational(2),sp.Rational(7,3)]:
        for nn in range(3):
            for aa in range(3):
                pol=sp.Poly(sp.jacobi(nn,dd-1,aa,1-2*z)**2,z)
                norm=sp.Rational(1)
                norm*=sp.rf(dd+nn,aa)/sp.rf(nn+1,aa)
                value=sum(coeff*sp.gamma(dd+power[0])*sp.gamma(aa+1)/sp.gamma(dd+power[0]+aa+1) for power,coeff in pol.terms())
                residual=sp.simplify((dd+2*nn+aa)*norm*value-1)
                require(residual==0, f"KG norm {dd,nn,aa}: {residual}")
                kg_count+=1
    record("independent_KG_norms",kg_count,evidence="finite exact Jacobi-beta integrations")
    mp.mp.dps=60
    integrals=[]
    for ds in ["5/4","3/2","7/3","3"]:
        fd=Fraction(ds); dd=mp.mpf(fd.numerator)/fd.denominator
        for J in [0,1,4]:
            cj=mp.rf(dd,J)/(2*mp.pi*mp.factorial(J))
            def density_x(x):
                radial=cj*x**dd*(1-x)**J
                term=dd**2+(J*J*x/(1-x) if J else 0)
                K=radial*x*term
                e=2*radial*(dd*(dd-1)+(J*J*x/(1-x) if J else 0))
                M=dd*(1-x**(dd-1))/(2*mp.pi)
                D=dd*x**dd/(4*mp.pi)
                return -16*mp.pi**2*(D*e+M*K)/(x*x)
            value=mp.quad(density_x,[0,mp.mpf("0.25"),mp.mpf("0.75"),1])
            expected=-4*dd**2+4*dd**2*mp.rf(dd,J)/((2*dd-1)*mp.rf(2*dd,J))
            err=abs(value-expected)
            require(err<mp.mpf("1e-40"),f"Ground-J quadrature {ds,J}: {err}")
            integrals.append({"Delta":ds,"J":J,"value":mp.nstr(value,45),"absolute_error":mp.nstr(err,8)})
    record("independent_canonical_ground_J_integrals",len(integrals),evidence="60-digit quadrature of original fixed-momentum integral",rows=integrals)
    # Original circular-constraint evaluator, comparison only after evaluation.
    masses=[]
    maxlevel=6
    expected_keys={(a,T-a) for T in range(maxlevel+1) for a in range(T,-1,-2)}
    for ds in ["1001/1000","3/2","2","7/3"]:
        tick=time.perf_counter()
        backend=DirectK4(ds)
        result,matrices=backend.reconstruct(maxlevel)
        require(set(result)==expected_keys,"Missing or duplicate pair task")
        require(set(matrices)==set(range(maxlevel+1)),"Missing circular matrix")
        for (nn,ss),value in result.items():
            require(value==pair_coefficient(ds,nn,ss),f"Direct K4 mismatch at {ds,nn,ss}")
        masses.append({
            "Delta":ds,"status":"passed","primary_count":len(result),
            "seconds":time.perf_counter()-tick,"backend_stats":backend.stats,
            "coefficients":[{"n":nn,"s":ss,"g":str(val)} for (nn,ss),val in sorted(result.items())],
        })
    record("rerun_direct_canonical_K4_all_channels",len(expected_keys)*len(masses),
           evidence="inherited exact-rational evaluator; new fail-closed all-channel comparison",
           maximum_circular_level=maxlevel,masses=masses)
    report["status"]="passed"
    report["seconds"]=time.perf_counter()-started
    report["passed_checks"]=sum(t["checks"] for t in report["tests"])
    expected_tests={"all_parameter_crossed_recurrence","positive_defect_and_exceptional_mass","oriented_baseline","independent_KG_norms","independent_canonical_ground_J_integrals","rerun_direct_canonical_K4_all_channels"}
    require({t["name"] for t in report["tests"]}==expected_tests,"Incomplete verification payload")
    (HERE/"physics_run.json").write_text(json.dumps(report,indent=2)+"\n")
    print(json.dumps({"status":report["status"],"checks":report["passed_checks"],"seconds":report["seconds"]}))

if __name__=="__main__":
    main()
