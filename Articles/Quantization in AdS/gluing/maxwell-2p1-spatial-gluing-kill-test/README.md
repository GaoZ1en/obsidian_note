# Maxwell 2+1 spatial-gluing kill test

**Verdict: proved for the smooth finite-Fourier orbit-level collar theorem.** Section 9 of `calculations.md` constructs intrinsic geometric assembly independently of Coulomb/DtN, proves choice independence and two-sided orbit correspondence, and descends the original CPS to horizontal tangent classes. Coulomb restoration is its section modulo discrete proper copies. No smooth quotient-manifold or completed-space theorem is claimed.

The physical target is **only** $\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$. $\operatorname{Sol}_{\rm pw}$ remains a distributional diagnostic category. Its raw smooth-gauge restriction/kernel claims still fail: both the cusp and the piecewise-quadratic pure gauge are retained. These are representative/category obstructions, not failures of physical sewing.

The scope is classical Maxwell on $I\times[-L,L]\times S^1_R$, fixed $A_t=A_s=0$ wall frames, trivial bundle and the benchmark's relative wall sector. Use $y_1=x+L$, $y_2=L-x$. No charged matter, non-Abelian higher-dimensional calculation, Maxwell 3+1 kill test, null composition, quantum completion, or Research Radar work is included.

Files:

- `calculations.md`: B1--B7 derivations and both counterexamples; Section 9 gives original regional based objects, collar assembly, comparison lemma, intrinsic arrows, two-sided orbit theorem, Coulomb section, CPS and regularity boundaries.
- `CLAIM_LEDGER.md`: each test's result and what it does not prove.
- `verification/checks.wl`: small exact sign/identity witnesses.
- `verification/collar-checks.wl`: nine exact collar/lift/CPS diagnostics; no symbolic substitute for the analytical theorem.
- `verification/README.md`: reproduction commands, results, and computational limits.

The main formulas are

$$\begin{align}
\rho^\chi(\alpha,q,r;u,v,w;E_y,E_s;\mathcal J)
&=(\alpha,q;-e^{-2}E_y,-e^{-2}(v-\partial_sr)),\\
P_{\rm in}^\chi&=(\alpha,q),\\
\text{descent + full transmission}
&\Longleftrightarrow\text{no distributional Maxwell interface source},\\
\operatorname{div}A_{\rm raw}&=J\delta(x),\qquad
J=-A_{y,1}(L)-A_{y,2}(L),\\
f&={1\over2}T^{-1}J,\qquad
T_\ell=|p_\ell|\coth(|p_\ell|L),\quad T_0=1/L,\\
\mathcal G_S^{\rm ext}&=\operatorname{Map}_0(S^1,U(1)).
\end{align}$$

The correction $A_i\mapsto A_i+dHf$ yields a smooth global temporal/Coulomb representative, but the two harmonic lifts usually do not themselves patch into a smooth global gauge map. The raw zero-curvature cusp $A=d[\beta(1-|x|/L)]$ makes the distinction unavoidable. Direct smooth residual arrows have only the discrete global harmonic maps $\lambda_n=\pi n(x+L)/L$; arrows including regional based re-fixing capture the larger restored construction.

The intrinsic construction uses $\lambda_i=-\chi(x)\int_0^x A_{i,x}\,d\xi$, based on each region. Smooth transmission makes the curvature jets match; in the inner collar $\bar A_x=0$ and $\bar A_a=a_a+\int_0^xF_{xa}\,d\xi$. Any two admissible gauge/trivialization interpolations producing smooth connections differ by one smooth global proper gauge. No interpolation of physical curvature or change of Wilson sector is allowed.

The objects of $\mathcal C_{\rm reg}^{\rm geom}$ are $\mathcal B_h=\mathcal M_h/(\mathcal G_1^0\times\mathcal G_2^0)$; arrows are the independently defined common zero-winding cut actions. The actual bijection is $\pi_0\mathcal C_{\rm reg}^{\rm geom}\simeq\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$. A based-only quotient is insufficient. The product based equivalence is valid geometrically, but is not the global smooth restriction kernel.

**What is established:** choice-independent assembly, complete intrinsic regional arrows, restriction without prior gauge fixing, the two-sided orbit theorem, Coulomb-section agreement, and original CPS/kernel compatibility on the declared tangent core. Fixed $h$ on closed $S$ has zero corner; variable reachable $h$ retains the calibrated term. Unequal lengths supply only an algebraic naturality check. A bare $f\mapsto f+2\pi m$ with fixed input is not a valid restoring choice without compensating based re-fixing.

**Boundary:** the cusp parameter is Lipschitz/$W^{1,\infty}$; its raw obstruction is specific to globally smooth gauge. No identical Sobolev obstruction, functional quotient smoothness, energy completion, other-sector, or quantum theorem is claimed. The bounded geometric gate is closed; the general spatial-gauge formalism remains conditional. Preserve this scope and both regression obstructions in any subsequent review.
