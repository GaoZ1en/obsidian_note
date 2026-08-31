# Maxwell 2+1 spatial-gluing kill test

**Verdict: conditional.** Original distributional sewing passes on the declared finite-Fourier piecewise smooth core. A regional Coulomb mixed realization and an explicit Coulomb-restored orbit/CPS construction are derived. Literal common-frame weak assembly modulo **smooth global** proper gauge fails the stronger restriction/kernel claims. These are distinct results; the positive restored construction must not be substituted silently for geometric raw assembly.

The scope is classical Maxwell on $I\times[-L,L]\times S^1_R$, fixed $A_t=A_s=0$ wall frames, trivial bundle and the benchmark's relative wall sector. Use $y_1=x+L$, $y_2=L-x$. No charged matter, non-Abelian higher-dimensional calculation, Maxwell 3+1 kill test, null composition, quantum completion, or Research Radar work is included.

Files:

- `calculations.md`: B1--B7 derivations, two counterexamples, and the explicit distinction between raw assembly and restoration by a smooth lift followed by regional based re-fixing.
- `CLAIM_LEDGER.md`: each test's result and what it does not prove.
- `verification/checks.wl`: small exact sign/identity witnesses.
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

**What is established:** set-level solution-orbit correspondence and original CPS/kernel compatibility for the explicitly restored construction, with all smooth compatibility conditions stated. **What is not established:** that a general, unspecified collar/geometric assembly has that same orbit map, or that raw weak assembly modulo smooth global gauge does. No functional quotient smoothness, energy completion, cutoff-uniform estimate, or quantum theorem is claimed.

Next step: identify a precise smooth collar/geometric assembly on regional based classes with the explicit restored construction, including choice independence. Keep both counterexamples and the fixed global gauge regularity in that proof. Do not change the target topology to obtain surjectivity, and do not mark the general Maxwell spatial-gluing task complete yet.
