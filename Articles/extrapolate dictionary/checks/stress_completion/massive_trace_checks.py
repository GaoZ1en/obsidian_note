"""Independent exact checks for the massive soft-transfer restriction proof.

This script verifies the algebra used in the analytic argument.  It does not
replace the finite-order distribution estimates or a proof at all-null strata.
"""
from __future__ import annotations

import hashlib
import json
import platform
from pathlib import Path

import sympy as s


def main() -> None:
    residuals: dict[str, str] = {}

    def check(name, expression):
        value = s.simplify(expression)
        assert value == 0, (name, value)
        residuals[name] = str(value)

    a, b, w, t, scale = s.symbols("a b w t scale", positive=True)
    x, y = s.symbols("x y", real=True)
    lam = (x-y-t)**2-4*y*t
    check("discriminant_normal_form", lam.subs({x:b*b+t+2*b*w, y:b*b}, simultaneous=True)-4*b*b*(w*w-t))
    h = s.Function("H")
    seed = -h((x-b*b-t)/(2*b))/(2*b)
    check("radial_only_second_mass_derivative", s.diff(seed,x,2)+s.Subs(s.diff(h(w),w,2),w,(x-b*b-t)/(2*b))/(8*b**3))

    eta=s.diag(-1,1,1,1)
    p=s.Matrix([a,0,0,0])
    u=s.Matrix(s.symbols("u0:4", real=True))
    r=s.Matrix(s.symbols("r0:4", real=True))
    lo=lambda v:eta*v
    dot=lambda v,z:(v.T*eta*z)[0]
    def numerator(q,v):
        mass=a*a
        cq=-dot(p,q); cv=-dot(p,v)
        uq=mass*lo(q)-cq*lo(p)
        uv=mass*lo(v)-cv*lo(p)
        delta=cq*cv+mass*dot(q,v)
        return (uq*uv.T+uv*uq.T)/2-delta*(mass*eta+lo(p)*lo(p).T)/3
    tensor=numerator(p+scale*u,scale*r)
    target=s.zeros(4)
    spatial_dot=sum(u[k]*r[k] for k in range(1,4))
    for i in range(1,4):
        for j in range(1,4):
            target[i,j]=a**4*scale**2*((u[i]*r[j]+u[j]*r[i])/2-(spatial_dot/3 if i==j else 0))
    for i in range(4):
        for j in range(4): check(f"exact_bilinear_tensor_{i}{j}",tensor[i,j]-target[i,j])
    for j in range(4): check(f"transverse_{j}",(p.T*tensor)[j])
    check("trace",s.trace(eta*tensor))

    q=p+scale*u
    qmass=-dot(q,q)
    rmass=-dot(scale*r,scale*r)
    normal=(a*a-qmass-rmass)/(2*s.sqrt(qmass))
    check("soft_coordinate_linearization",s.limit(normal/scale,scale,0,dir="+")+u[0])
    jac=s.diff((a*a-(-dot(p+u,p+u))-(-dot(r,r)))/(2*s.sqrt(-dot(p+u,p+u))),u[0])
    check("normal_map_jacobian",jac.subs(dict.fromkeys(list(u)+list(r),0))+1)

    # A distinct exact way to reproduce the nonzero boundary layer: derive it
    # from the distributional normal form, not the full discriminant formula.
    w_real=s.symbols("w_real",real=True)
    H_branch=2/s.sqrt(w_real**2-s.Rational(3,4))
    layer=s.diff(H_branch,w_real,2).subs(w_real,-2)/60
    check("nonzero_soft_layer_coefficient",layer-s.Rational(28,507)/s.sqrt(13))

    # Dyadic summation for the actual proof: the core has epsilon^3, while
    # shell j has epsilon*(2^j epsilon)^2.  Their largest-scale sum is O(eps).
    eps=s.symbols("epsilon",positive=True)
    j,J=s.symbols("j J",integer=True,nonnegative=True)
    shell=s.summation(eps**3*4**j,(j,0,J))
    check("annular_geometric_sum",shell-eps**3*(4**(J+1)-1)/3)
    check("annular_sum_at_fixed_outer_scale",shell.subs(eps,2**(-J))-((4*s.Integer(2)**(-J)-s.Integer(2)**(-3*J))/3))

    here=Path(__file__)
    out={
        "status":"all exact residuals passed",
        "scope":"massive soft-transfer normal form and dyadic proof algebra; all-null proof remains separate",
        "python":platform.python_version(),
        "sympy":s.__version__,
        "script_sha256":hashlib.sha256(here.read_bytes()).hexdigest(),
        "residual_count":len(residuals),
        "residuals":residuals,
        "nonzero_layer_divided_by_alpha_pi6":str(layer),
    }
    path=here.with_name("massive_trace_checks_results.json")
    path.write_text(json.dumps(out,indent=2)+"\n")
    print(json.dumps({"passed":len(residuals),"result":str(path),"layer":str(layer)}))


if __name__ == "__main__":
    main()
