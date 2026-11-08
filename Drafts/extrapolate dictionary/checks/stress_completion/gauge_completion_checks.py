#!/usr/bin/env python3
"""Independent checks for the first-order anchored switching completion.

No Wolfram input or saved historical result is executed.  The checks derive
the AdS Noether defect, its compensator, radial adjoint, and TT projection
directly.  Run with PYTHONPATH=/tmp/extrapolate_audit_deps python ... .
"""
from __future__ import annotations

import json
from pathlib import Path
import sys
import time

import sympy as s


START = time.time()
OUT = Path(__file__).resolve().parent
records: dict[str, object] = {}


def zero_group(name, expressions):
    values = [s.simplify(s.expand(e)) for e in expressions]
    assert all(e == 0 for e in values), (name, values)
    records[name] = {"residuals": [str(e) for e in values], "all_zero": True}
    print(name, "zero residuals:", len(values), flush=True)


# Coordinates: radial u and boundary (t,x,y,z), eta = (-,+,+,+).
u, t, x, y, z, L = s.symbols("u t x y z L", positive=False)
coords = (u, t, x, y, z)
bc = (t, x, y, z)
eps = (1, -1, 1, 1, 1)
eta = s.diag(-1, 1, 1, 1)
flat = s.diag(*eps)
g = flat / u**2
ginv = flat * u**2
sqrtg = u**-5
phi = s.Function("phi")(*coords)
w = s.Function("w")(*coords)
dp = [s.diff(phi, a) for a in coords]
mass2 = -4
kin = sum(ginv[a, a] * dp[a]**2 for a in range(5))
T = s.Matrix(5, 5, lambda a, b: dp[a]*dp[b] - g[a, b]*(kin+mass2*phi**2)/2)
E = u**2*sum(eps[a]*s.diff(phi, coords[a], 2) for a in range(5)) - 3*u*dp[0] + 4*phi


def gamma(a, b, c):
    # Christoffels derived from g=u^-2 eta; upper index a.
    return (-int(a == b)*int(c == 0)-int(a == c)*int(b == 0)
            +flat[b, c]*eps[a]*int(a == 0))/u


def divergence_lower(tensor):
    ans = []
    for nu in range(5):
        val = 0
        for mu in range(5):
            part = s.diff(tensor[mu, nu], coords[mu])
            for lam in range(5):
                part -= gamma(lam, mu, mu)*tensor[lam, nu]
                part -= gamma(lam, mu, nu)*tensor[mu, lam]
            val += ginv[mu, mu]*part
        ans.append(val)
    return ans


divT = divergence_lower(T)
zero_group("ads5_scalar_noether", [divT[a]-E*dp[a] for a in range(5)])
divwT = divergence_lower(w*T)
force = [sum(ginv[a, a]*s.diff(w, coords[a])*T[a, b] for a in range(5)) for b in range(5)]
zero_group("switched_bianchi_defect", [divwT[a]-w*E*dp[a]-force[a] for a in range(5)])

# Integrated density identity with all endpoint terms retained as a divergence.
Z = [s.Function("Z"+str(a))(*coords) for a in range(5)]
Lg = s.Matrix(5, 5, lambda a, b:
              sum(Z[c]*s.diff(g[a, b], coords[c])
                  +g[c, b]*s.diff(Z[c], coords[a])
                  +g[a, c]*s.diff(Z[c], coords[b]) for c in range(5)))
Tup = ginv*T*ginv
deltaV = sqrtg*w*sum(Tup[a, b]*Lg[a, b] for a in range(5) for b in range(5))/2
current = [sqrtg*w*sum(Tup[a, b]*g[b, b]*Z[b] for b in range(5)) for a in range(5)]
current_div = sum(s.diff(current[a], coords[a]) for a in range(5))
Eshift = sqrtg*E*sum(Z[a]*dp[a] for a in range(5))
forceZ = sqrtg*sum(force[a]*Z[a] for a in range(5))
zero_group("gauge_variation_density_with_endpoint", [deltaV-current_div+w*Eshift+forceZ])
naive_defect = (1-w)*Eshift-forceZ
completion_variation = -(1-w)*Eshift+forceZ
zero_group("minimal_completion_cancels_gauge_defect", [naive_defect+completion_variation])

# A nonzero free BF solution makes the on-shell defect explicit.
phi_ex = u**2*(t-x)
T_ex = T.subs(phi, phi_ex).doit()
E_ex = E.subs(phi, phi_ex).doit()
w_ex = t
force_ex = [s.simplify(f.subs(phi, phi_ex).subs(w, w_ex).doit()) for f in force]
zero_group("bf_free_example", [E_ex])
assert force_ex[1] == -u**6 and force_ex[2] == u**6
records["nonzero_on_shell_bianchi_example"] = {
    "phi": str(phi_ex), "switch_local_jet": "w=t",
    "force_covector": [str(v) for v in force_ex],
    "interpretation": "local jets may be realized inside a smooth compact switch",
}
print("nonzero_on_shell_bianchi_example", records["nonzero_on_shell_bianchi_example"], flush=True)

# The same obstruction on a logfree mode with strictly timelike boundary momentum.
phi_mode = u**2*s.besselj(0,u)*s.cos(t)
E_mode = s.simplify(s.expand_func(E.subs(phi,phi_mode).doit()))
Ttt_mode = s.simplify(T[1,1].subs(phi,phi_mode).doit().subs(t,s.pi/2))
zero_group("timelike_logfree_mode", [E_mode, Ttt_mode-u**4*s.besselj(0,u)**2/2])
records["timelike_on_shell_bianchi_example"] = {
    "phi": str(phi_mode), "boundary_mass_squared": "1",
    "time": "pi/2", "force_t": str(-u**2*Ttt_mode),
    "interpretation": "A strict timelike Poincare mode; wave packets preserve a nonzero defect on an open neighborhood.",
}

# Anchored gauge map in Lorentzian signature, checked for arbitrary functions.
F = s.Function("F")(*bc)
V = [s.Function("V"+str(i))(*bc) for i in range(4)]
zeta = [u**3*F] + [u**2*v for v in V]
Huu = 2*s.diff(zeta[0], u)-2*zeta[0]/u
Hui = [eta[i, i]*s.diff(zeta[i+1], u)+s.diff(zeta[0], bc[i]) for i in range(4)]
v = s.symbols("v", positive=True)
xi_u = -u*s.integrate((Huu/u).subs(u, v), (v, 0, u))/2
xi_b = [-s.integrate((eta[i, i]*(Hui[i]+s.diff(xi_u, bc[i]))).subs(u, v), (v, 0, u)) for i in range(4)]
zero_group("anchored_xi_of_pure_gauge", [xi_u+zeta[0]]+[xi_b[i]+zeta[i+1] for i in range(4)])

# A genuinely nonstationary, non-traceless tensor source, with a finite IR wall.
A = s.Matrix(4, 4, lambda i, j: s.Function("A%d%d" % tuple(sorted((i,j))))(*bc))
profile = u**4*(L-u)**2
J = profile*A
chi = s.Function("chi")(*bc)


def dupper(i, f):
    return eta[i, i]*s.diff(f, bc[i])


def source_adjoint(Jin):
    div = [sum(dupper(j, Jin[j, i]) for j in range(4)) for i in range(4)]
    tr = sum(eta[i, i]*Jin[i, i] for i in range(4))
    divdiv = sum(dupper(i, div[i]) for i in range(4))
    Qui = [u**3*s.integrate((d/u**3).subs(u,v), (v,u,L)) for d in div]
    integrand = tr/u**3
    # Substitute before supplying the factor (v^2-u^2).
    Quu = u**2*s.integrate((tr/u**3).subs(u,v)
              +(v**2-u**2)*(divdiv/u**3).subs(u,v)/2, (v,u,L))
    return Qui, Quu


Qui, Quu = source_adjoint(J)
Qi_chi, Quu_chi = source_adjoint(chi*J)
divJ = [sum(dupper(j, J[j,i]) for j in range(4)) for i in range(4)]
traceJ = sum(eta[i,i]*J[i,i] for i in range(4))
zero_group("radial_completion_conservation", [s.diff(Qui[i],u)-3*Qui[i]/u+divJ[i] for i in range(4)]
           +[s.diff(Quu,u)-2*Quu/u+sum(dupper(i,Qui[i]) for i in range(4))+traceJ/u])
zero_group("radial_endpoint", [q.subs(u,L) for q in Qui]+[Quu.subs(u,L)])

comm_i = [u**3*s.integrate(sum(dupper(j,chi)*J[j,i] for j in range(4)).subs(u,v)/v**3, (v,u,L)) for i in range(4)]
comm_u_integrand = sum(dupper(i,chi)*divJ[i] for i in range(4))
comm_u_integrand += sum(dupper(i,dupper(j,chi))*J[i,j] for i in range(4) for j in range(4))/2
comm_u = u**2*s.integrate((v**2-u**2)*comm_u_integrand.subs(u,v)/v**3, (v,u,L))
zero_group("switch_radial_adjoint_commutator", [Qi_chi[i]-chi*Qui[i]-comm_i[i] for i in range(4)]
           +[Quu_chi-chi*Quu-comm_u])

# Generic radial defect repair: arbitrary F_i and F_u of separated form.
B = [s.Function("B"+str(i))(*bc) for i in range(4)]
C = s.Function("C")(*bc)
Fi = [u**3*(L-u)*b for b in B]
Fu = u**2*(L-u)**2*C
Ri = [u**3*s.integrate((f/u**3).subs(u,v),(v,u,L)) for f in Fi]
divF = sum(dupper(i,Fi[i]) for i in range(4))
Ru = u**2*s.integrate((Fu/u**2).subs(u,v)+(v**2-u**2)*(divF/u**3).subs(u,v)/2,(v,u,L))
zero_group("arbitrary_force_radial_repair", [s.diff(Ri[i],u)-3*Ri[i]/u+Fi[i] for i in range(4)]
           +[s.diff(Ru,u)-2*Ru/u+sum(dupper(i,Ri[i]) for i in range(4))+Fu])

# A finite-momentum demonstration that the TT projector belongs to the output.
p = s.Matrix([2,1,0,0])
k = s.Matrix([2,0,0,0])
q = s.Matrix([3,0,1,0])


def tt_of_rank_one(Pmom, Qmom):
    mass = -(Pmom.T*eta*Pmom)[0]
    plow = eta*Pmom
    transverse = eta+plow*plow.T/mass
    vec = transverse*Qmom
    return vec*vec.T-transverse*(Qmom.T*transverse*Qmom)[0]/3


good = tt_of_rank_one(p,q)
bad = tt_of_rank_one(k,q)
zero_group("output_tt_projector", list((p.T*good))+[s.trace(eta*good)])
baddiv = list(p.T*bad)
assert any(v != 0 for v in baddiv)
records["projector_outside_switch_counterexample"] = {
    "output_p": list(map(str,p)), "input_k": list(map(str,k)),
    "source_q": list(map(str,q)), "wrong_divergence": list(map(str,baddiv)),
    "good_minus_bad": [[str(e) for e in row] for row in (good-bad).tolist()],
}
print("projector_outside_switch_counterexample wrong divergence", baddiv, flush=True)

# Verify the exact normalization from the original canonical scalar action.
ell, Nnorm, C0 = s.symbols("ell Nnorm C0", positive=True)
canonical_tt_coeff = ell**3*s.Rational(1,2)*u**-3*(u**2/(Nnorm*ell**2))**2
zero_group("canonical_to_U_vertex_normalization", [canonical_tt_coeff.subs(Nnorm**2,C0/ell)-u/(2*C0)])

records["analytic_adiabatic_result"] = {
    "statement": "At fixed compact radial regulator, the P-dagger switch commutator is O(R^-M) on bounded compact 12-momentum test sets for every M.",
    "proof": "Exact commutator has one or two switch derivatives. Its switch-free coefficient is smooth in Omega with compact radial support; all positive moments of Fourier chi vanish for a plateau switch.",
    "limitation": "Constants may depend on the radial IR cutoff. Uniform removal of that cutoff is a separate distributional estimate.",
    "evidence_strength": "analytic proof in companion report; not inferred from numerical samples",
}
records["runtime_seconds"] = time.time()-START
records["sympy_version"] = s.__version__
records["exact_zero_count"] = sum(len(r["residuals"]) for r in records.values() if isinstance(r,dict) and "residuals" in r)
(OUT/"gauge_completion_results.json").write_text(json.dumps(records,indent=2,ensure_ascii=False)+"\n")
print("RESULT", records["exact_zero_count"], "exact zero residuals; seconds", records["runtime_seconds"], flush=True)
