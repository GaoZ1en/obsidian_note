---
paper id: 2610.30246v1
title: From bulk flows to boundary generators and costs
authors:
  - Rafael Carrasco
  - Carlos Pérez-Pardavila
publication date: 2026-10-21T18:00:03Z
abstract: |-
  Proposes a local prescription associating suitable bulk observables with quadratic preparation costs on Euclidean-source states. A positive Hessian of the transported boundary generator defines the cost metric. Finite-dimension AdS3 scalar calculations distinguish field and momentum penalties, and scalar/gradient dressings of volume modify those penalties.
comments: "31 pages (+Appendices); PDF 45 pages"
url: https://arxiv.org/abs/2610.30246v1
summary: "An explicit source-to-canonical-data map shows why a bulk observable's positive Hessian need not be proportional to the Fubini-Study metric."
tags: []
---

# Bulk Hamiltonian transport and observable-dependent quadratic costs

The concrete result is a finite-\(\Delta\) calculation in AdS3: a real Euclidean scalar source displaces the bulk field, while its imaginary part displaces the conjugate momentum. Maximal volume assigns these two directions different costs even after their Fubini–Study norms are matched. The difference is controlled by a ratio of Gamma functions, so the claim can be checked without accepting a general complexity conjecture.

The construction has two logically separate parts. Symplectic transport pulls a bulk observable back to a source-state family. Defining a cost by **half its positive Hessian** is an additional choice, made at a stationary reference state. Agreement of the resulting minimum preparation energy with the observable to quadratic order follows by construction. It does not identify a state-independent boundary operator or an operational gate set.

**Source-derived.** This note reconstructs the [official v1](https://arxiv.org/abs/2610.30246v1); only the calculations listed under **Checked** are independently reproduced. Page references below use printed page numbers; the PDF page is one higher.

## Complete source map and reading guide

| Section | Printed pages | Technical role |
|---|---:|---|
| §1 Introduction | 1–6 | Separates transporting an observable from assigning a preparation cost; reviews complexity-anything functionals. |
| §2.1 Euclidean-source states | 6–8 | Reflection reality, source/response pairs, semiclassical saddle map. |
| §2.2 FS geometry and symplectic form | 8–10 | Kähler potential from overlaps; mixed upper/lower variations; renormalized bulk pairing. |
| §2.3 Peierls | 10–11 | Retarded-minus-advanced variation of \(S-\epsilon W\). |
| §2.4 transport | 11–12 | Pullback exact one-form and local generator. |
| §3 volume | 12–14 | York shell, junction conditions, boundary Weyl variation and Ward cancellation. |
| §3.1 scalar | 14–17 | Compensating scalar flow and large-\(\Delta\) source map. |
| §4.1 observable-adapted metric | 17–21 | Positive Hessian, polar complex structure, minimum energy and relative penalties. |
| §4.2 volume check | 21–22 | Common large-\(\Delta\) penalty \(8\pi\Delta\). |
| §4.3 finite dimension | 22–24 | Mellin modes, exact source integrals, two unequal penalties and complex structures. |
| §4.4 scalar/gradient dressing | 25–28 | Distributional shell, momentum kick, mode-dependent field penalties and positivity. |
| §5 Discussion | 28–31 | Locality in state space, nonuniqueness beyond quadratic order, regulator and domain limits. |
| Appendix A | 31–36 | CPS quotient, weak nondegeneracy, scalar and ADM symplectic conventions. |
| Appendix B | 36–39 | Half-line HRT area flow as a one-sided boost and modular first law. |
| Appendix C | 39–40 | FG restoration of the York deformation. |

**How to read this long paper.** For the calculation, read §3.1 → §4.3 → §4.1. This exposes the source-to-initial-data map before the abstract cost proposal. Read §2.2 and Appendix A to fix the factor of two and symplectic sign. Appendix C is required to understand the discontinuous Weyl transformation; Appendix B tests transport independently of positivity. §4.4 is a useful controlled modification, but its final penalties use the large-\(\Delta\) map. The introduction and discussion delimit the complexity interpretation.

## Global notation and the controlled domain

The bulk action in the scalar example is
\[
 S=\frac1{16\pi G_N}\int\sqrt{-g}(R-2\Lambda)
 -\frac12\int\sqrt{-g}\bigl[(\nabla\phi)^2+m^2\phi^2\bigr]+S_{\rm GHY}.
\]
The scalar has no overall \(1/G_N\) in its normalization. The calculation uses \(d=2,\ell=1\), \(m^2=\Delta(\Delta-2)\), \(\Delta\ge2\), fixed boundary metric and \(x\)-independent small sources. Scalar fields are \(O(\lambda)\), metric backreaction is \(O(\lambda^2)\), and the observable is retained to \(O(\lambda^2)\).

| Symbol | Definition |
|---|---|
| \(\lambda^-,\lambda^+\) | Ket/lower-half and bra/upper-half Euclidean preparation sources. |
| \(\lambda^-=X+iY,\ \lambda^+=X-iY\) | Reflection-real section; \(X,Y\) are real profiles. |
| \(\varphi,\pi_\phi\) | Lorentzian scalar initial data on the cut; \(\pi_\phi\) is a density. |
| \(\Omega=\delta p\wedge\delta q\) | Convention: \(\delta H=\Omega(\,\cdot\,,\delta_H)\), \(\{q,p\}=1\). |
| \(H_W^{\rm CFT}\) | A functional on the chosen source-state family, not automatically an operator expectation value. |
| \(\mathcal H\), \(G=\mathcal H/2\) | Hessian at the reference state and frozen quadratic cost metric. |
| \(A\) | Linearized transported Hamiltonian flow: \(\Omega(u,Av)=\mathcal H(u,v)\). |
| \(J_W=A|A|^{-1}\) | Observable-selected complex structure, \(|A|=\sqrt{-A^2}\). |
| \(J_{\rm FS}\), \(g_{\rm FS}\) | Source-state complex structure and distinguishability metric, with \(g_{\rm FS}=\Omega(\cdot,J_{\rm FS}\cdot)/2\). |
| \(k,\sigma_k=k^2+1/4\) | Mellin mode and hyperbolic-Laplacian eigenvalue. |
| \(\kappa_k^2=m^2+\sigma_k\) | Scalar oscillator frequency squared before the overall \(8\pi\). |
| \(f_\Delta,g_\Delta,r_\Delta=g_\Delta/f_\Delta\) | Exact field response, positive upper-half momentum response and their ratio. |
| \(a_0,a_1\) | Coefficients of \(\varphi^2\) and spatial-gradient dressing. |

Keep the regulators explicit: use an asymptotic cutoff \(z=\epsilon_z\), excise \(|\tau_E|<\epsilon_\tau\) around the preparation cut, and initially integrate \(u\in[u_{\min},u_{\max}]\) and a finite \(x\)-length \(L_x\). Sources are assumed to vanish sufficiently rapidly at the cut and the \(u\) endpoints. Form renormalized pairings at fixed cutoffs, impose those support/decay conditions and remove the cutoffs only when the boundary terms vanish. The \(x\)-independent results are per unit \(L_x\). Mellin eigenfunctions are generalized modes; finite-norm wave packets are the actual source variations.

The paper assumes the residual corner contribution vanishes. It does not compute a regulator-independent corner subtraction for arbitrary sources, so this assumption cannot be silently upgraded to a general theorem.

## §2: transporting a bulk observable is a symplectic pullback

A ket and bra are prepared by Euclidean path integrals on \(\mathcal B_-\) and \(\mathcal B_+\):
\[
 |\lambda^-\rangle=\mathcal T_E
 e^{-\int_{\mathcal B_-}\sqrt\gamma\,\lambda^-_a\mathcal O_a}|0\rangle,
 \qquad
 \lambda^-(-\tau,x)=[\lambda^+(\tau,x)]^*.
\]
At leading semiclassical order, \(\log Z=-I_E^{\rm ren}\). Near the AdS boundary,
\[
 \phi_a=z^{d-\Delta_a}(\lambda_a+\cdots)+z^{\Delta_a}(A_a+\cdots),
 \quad
 g_{ij}=\gamma_{ij}+\cdots+z^d g_{(d)ij}+\cdots.
\]
One-point functions follow from \(I_E^{\rm ren}\), with local and logarithmic terms prescribed by holographic renormalization. They are not simply bare subleading coefficients in every dimension.

The overlap gives
\[
 \mathcal K=\log\langle\lambda^+|\lambda^-\rangle,\quad
 \Omega_\partial=-i\partial\bar\partial\mathcal K,
\]
with \(J_{\rm FS}\lambda^-=-i\lambda^-\) and \(J_{\rm FS}\lambda^+=i\lambda^+\).
Define source momenta on the upper half:
\[
 \Pi_a=-\frac{\delta\mathcal K}{\delta\lambda_a^+}
 =\sqrt\gamma\langle\mathcal O_a\rangle,\qquad
 \Pi^{ij}=-\frac12\sqrt\gamma\langle T^{ij}\rangle.
\]
Then
\[
 \Omega_\partial(\delta_1,\delta_2)
 =i\int_{\mathcal B_+}
 \bigl(\delta_1^-\Pi_a\,\delta_2\lambda_a^+
       -\delta_2^-\Pi_a\,\delta_1\lambda_a^+\bigr).
\]
Only the lower-half response of \(\Pi\) belongs in this formula. Replacing \(\delta^-\Pi\) by a full same-half response introduces unwanted local terms.

Using \(\mathcal K=-I_E^{\rm ren}\), the mixed variations become
\(i\int_{\mathcal B_+}\omega_E\). On linearized solutions \(d\omega_E=0\), so Stokes moves the integral to the cut, subject to the regulated corner assumption. Wick rotation \(t=-i\tau_E\) gives \(\pi_L=i\pi_E\). Hence
\[
 F^*\Omega_{\rm bulk}=\Omega_\partial
\]
on the selected semiclassical source family \(F:\mathcal S\to\mathcal P\).

For a differentiable gauge-invariant \(W\), choose an off-shell extension and perturb \(S\to S-\epsilon W\). The retarded and advanced perturbations solve the same sourced linearized equation; their difference
\(\delta_W\Phi=\delta_R\Phi-\delta_A\Phi\) solves the homogeneous equation and obeys
\[
 \delta W=\Omega_{\rm bulk}(\,\cdot\,,\delta_W).
\]
Transport additionally requires \(\delta_W\) to lie in the image of the allowed source variations. Continue it to the Euclidean saddle, restore FG gauge and read both source and response variations. Then
\[
 dH_W^{\rm CFT}
 =\Omega_\partial(\,\cdot\,,\delta_W^\partial)
 =d(W\circ F).
\]
Local exactness follows from this pullback, not from an arbitrary boundary vector field being integrable. The constant is fixed by the reference state. Appendix A explicitly notes that a weakly nondegenerate field-theory symplectic form need not map onto every cotangent vector; existence of the Hamiltonian flow remains a condition.

## §3 and Appendix C: York flow and the scalar compensation

To avoid the source's normalization collision, write
\[
 V_{\rm geom}=\int_\Sigma\sqrt h,\qquad
 \mathcal V=\frac{V_{\rm geom}}{G_N\ell}.
\]
The Peierls action is \(S-\epsilon\mathcal V\). In WdW coordinates,
\[
 ds^2=-d\tau^2+\ell^2\cos^2(\tau/\ell)d\Sigma^2,
\]
the retarded solution shifts \(\tau\to\tau-\epsilon\beta_R\) only for \(\tau>0\), the advanced one only for \(\tau<0\). The shell condition
\[
 [K_{ij}]-h_{ij}[K]=-\frac{8\pi\epsilon}{\ell}h_{ij}
\]
gives \(\beta_R=8\pi\ell/(d-1)\), \(\beta_A=-\beta_R\). Their difference is the diffeomorphism generated by \(Y=-\beta_R\partial_\tau\).

For \(\ell=1\), \(t=u\tan\tau,\ z=u\sec\tau\), and after Euclidean continuation,
\[
 Y=-i\beta_R\left[
 \frac{z^2}{\sqrt{z^2+\tau_E^2}}\partial_{\tau_E}
 -\frac{z\tau_E}{\sqrt{z^2+\tau_E^2}}\partial_z\right].
\]
This does not preserve FG gauge. Appendix C adds
\[
 \tau_E=\widetilde\tau_E+\widetilde z^2f_2+\cdots,\quad
 z=\widetilde z+\widetilde z^3g_3+\cdots,
\]
\[
 f_2=\frac{i\beta_R}{\widetilde\tau_E}\operatorname{sgn}\widetilde\tau_E,
 \qquad
 g_3=\frac{i\beta_R}{2\widetilde\tau_E^2}
 \operatorname{sgn}\widetilde\tau_E.
\]
Away from the cut, the boundary action is a constant Weyl transformation on each half:
\[
 \delta_Y\gamma_{ab}=-2i\beta_R\operatorname{sgn}\tau_E\,\gamma_{ab}.
\]
The jump at \(\tau_E=0\) is exactly why a regulated corner assumption is needed. Local anomaly terms have vanishing mixed-half variations away from that cut.

With a scalar source, the Weyl pairing contains the **combined** Ward expression
\[
 \langle T^a{}_a\rangle+(d-\Delta)\lambda^+\langle\mathcal O\rangle
 =\mathcal A_{\rm Weyl}.
\]
It is this combination, not the stress-tensor trace alone, that is local in the sources. Under the stated support conditions its mixed-half variation vanishes.

### Why volume induces a nontrivial scalar generator

For \(d=2,\ell=1\), the volume shell gives
\[
 \delta_{\mathcal V}K_{ij}=8\pi h_{ij},\qquad
 \delta_{\mathcal V}h_{ij}=\delta_{\mathcal V}\varphi
 =\delta_{\mathcal V}\pi_\phi=0
\]
on the maximal slice. The diffeomorphism \(\mathcal L_Y\phi\) alone does not leave the scalar data fixed. Introduce a homogeneous compensating solution \(\delta'\phi\):
\[
 \delta'\varphi=8\pi\frac{\pi_\phi}{\sqrt h},\qquad
 \delta'\pi_\phi=8\pi\sqrt h(\nabla_{\mathbb H^2}^2-m^2)\varphi.
\]
The paired gravitational/scalar diffeomorphism drops out by the regulated Ward identity; the remaining scalar pairing is
\[
 \Omega(\delta,\delta')
 =\int_\Sigma(\delta\pi_\phi\,\delta'\varphi
              -\delta'\pi_\phi\,\delta\varphi)
 =\delta H_{\mathcal V}^{(2)},
\]
\[
 H_{\mathcal V}^{(2)}
 =4\pi\int_\Sigma\left[
 \frac{\pi_\phi^2}{\sqrt h}
 +\sqrt h\bigl(h^{ij}\partial_i\varphi\partial_j\varphi
 +m^2\varphi^2\bigr)\right].
\]
This is the central reusable quadratic generator. It is not obtained by discarding the gravitational contribution without argument: the Ward cancellation is the necessary bridge.

The extremal slice displacement is \(O(\lambda^2)\); its contribution to the volume is \(O(\lambda^4)\) because the vacuum slice is extremal. Metric variations inside the displayed scalar quadratic functional are \(O(\lambda^3\delta\lambda)\). These are order estimates around the specified vacuum, not identities on a general Einstein–scalar background.

## §4.1: positive Hessian, polar complex structure and preparation energy

Assume \(dH|_{\lambda_i}=0\), a nondegenerate source subspace, and a positive Hessian \(\mathcal H\). For \(v=\lambda-\lambda_i\),
\[
 H-H_i=\tfrac12\mathcal H(v,v)+O(v^3),\qquad
 \delta_W=Av+O(v^2),\quad \Omega(u,Av)=\mathcal H(u,v).
\]
Symmetry of \(\mathcal H\) makes \(A\) infinitesimally symplectic, and \(A\) is skew with respect to \(\mathcal H\). In finite dimensions, positivity implies nonzero imaginary frequencies and permits
\[
 |A|=\sqrt{-A^2},\quad J_W=A|A|^{-1},\quad
 g_J(u,v)=\Omega(u,J_Wv)=\mathcal H(u,|A|^{-1}v).
\]
For infinitely many modes, domains, self-adjointness and control of inverses must be supplied; positivity as a pointwise quadratic form is not automatically a bounded inverse theorem.

Define \(G=\mathcal H/2\), freeze its components at the reference point, and set \(T=s_f-s_i\). For paths with fixed endpoints,
\[
 \mathcal C=T\min_\lambda\int_{s_i}^{s_f}G(\dot\lambda,\dot\lambda)\,ds.
\]
The straight line \(\lambda_*=\lambda_i+(s-s_i)v/T\) minimizes this positive energy:
\[
 \mathcal C=G(v,v)=H(\lambda_f)-H(\lambda_i)+O(v^3).
\]
The normalization \(T\) removes the interval-length dependence. This is energy, not the un-squared geodesic length. The endpoint variation gives
\(\delta\mathcal C=\mathcal H(v,\delta\lambda_f)=\delta W+O(v^2\delta v)\).

The Hamiltonian orbit conserves \(H\), so it cannot itself be the radial preparation path. Instead,
\[
 T\dot\lambda_*(s_f)
 =-|A|^{-1}J_W\delta_W|_{\lambda_f}+O(v^2).
\]
The observable complex structure rotates the flow and its frequencies rescale it.

The FS norm compares equally distinguishable variations:
\[
 {\cal F}(\lambda_i,\lambda_i+s\delta)
 =1-s^2g_{\rm FS}(\delta,\delta)+O(s^3).
\]
Define \(p(\delta)=G(\delta,\delta)/g_{\rm FS}(\delta,\delta)\).
Its stationary values solve the generalized eigenproblem
\(G(\cdot,\delta_i)=p_i g_{\rm FS}(\cdot,\delta_i)\), equivalently
\[
 -J_{\rm FS}A\,\delta_i=p_i\delta_i.
\]
The factor of two in \(g_{\rm FS}=\Omega(\cdot,J_{\rm FS}\cdot)/2\) is essential. A symplectic form alone supplies no preferred reference norm: canonical squeezing preserves \(\Omega\) while changing relative field/momentum lengths.

## §4.2–§4.3: exact scalar source map and unequal penalties

At large \(\Delta\), the bulk-to-boundary source integral reduces to
\[
 \varphi\simeq\tfrac12(\lambda^-+\lambda^+),\quad
 \pi_\phi\simeq\frac{i\Delta}{2u^2}(\lambda^+-\lambda^-).
\]
Thus \(H_{\mathcal V}^{(2)}\simeq4\pi\Delta^2\int du\,dx\,|\lambda^-|^2/u^2\),
and the compensating flow is
\(\delta'\lambda^\pm=\pm8\pi i\Delta\lambda^\pm\).
All modes have the same leading frequency, \(J_{\mathcal V}=J_{\rm FS}\), and
\(G=8\pi\Delta\,g_{\rm FS}\).

### Mellin diagonalization without the large-\(\Delta\) limit

For \(x\)-independent fields,
\(\nabla_{\mathbb H^2}^2=u^2\partial_u^2\).
With
\[
 e_k(u)=\frac{u^{1/2+ik}}{\sqrt{2\pi}},\quad
 \sigma_k=k^2+\tfrac14,
\]
the measure is \(du/u^2\) and
\(\int du\,e_ke_{k'}/u^2=\delta(k+k')\).
This follows by \(y=\log u\); the extra \(u^{1/2}\) converts the norm into the ordinary Fourier norm. Expand
\(\varphi=\int dk\,\varphi_ke_k\) and
\(u^2\pi_\phi=\int dk\,\pi_ke_k\). Then
\[
 H_{\mathcal V}^{(2)}
 =4\pi\int dk\,[\pi_k\pi_{-k}+\kappa_k^2\varphi_k\varphi_{-k}].
\]

The exact Euclidean kernel is
\[
 K_E=\frac{\Delta-1}{4\pi}
 \left[\frac1{\cosh\tau_E}
 \frac{2uu_0}{(x-x_0)^2+u^2+u_0^2-2suu_0\tanh\tau_E}\right]^\Delta,
\]
where \(s=\pm1\) labels the upper/lower source. Integrating \(x_0\) first and then \(u_0\) gives
\[
 f_\Delta(k)=
 \frac{2^{\Delta-3}
 |\Gamma(\frac{\Delta+ik}{2}-\frac14)|^2}
 {\sqrt\pi\,\Gamma(\Delta-1)},\quad
 g_\Delta(k)=
 \frac{2^{\Delta-2}
 |\Gamma(\frac{\Delta+ik}{2}+\frac14)|^2}
 {\sqrt\pi\,\Gamma(\Delta-1)}.
\]
Here \(g_\Delta>0\) denotes the **upper-half** derivative coefficient; the lower half carries \(-g_\Delta\). This removes the ambiguity from carrying the source's \(s\) in its definition and then also taking a difference of half-sources.

The scalar integral is a Beta integral after the \(x_0\) integration:
\[
 \int_0^\infty du_0\,
 u_0^{\Delta-3/2+ik}(1+u_0^2)^{1/2-\Delta}
 =\frac{\Gamma(\frac\Delta2-\frac14+\frac{ik}2)
 \Gamma(\frac\Delta2-\frac14-\frac{ik}2)}
 {2\Gamma(\Delta-\frac12)}
\]
at \(u=1\). Differentiating \(K_E\) before setting \(\tau_E=0\) shifts both Gamma arguments by \(1/2\), producing \(g_\Delta\).

The reflection-real sources then give
\[
 \varphi_k=2f_\Delta X_k,\quad \pi_k=2g_\Delta Y_k,
 \quad X_{-k}=X_k^*,\quad Y_{-k}=Y_k^*.
\]
Consequently
\[
 \Omega_\partial=4\int dk\,f_\Delta g_\Delta
 (\delta_1Y_k\delta_2X_{-k}-\delta_2Y_k\delta_1X_{-k}),
\]
\[
 g_{\rm FS}=2\int dk\,f_\Delta g_\Delta
 (\delta_1X_k\delta_2X_{-k}+\delta_1Y_k\delta_2Y_{-k}),
\]
\[
 G_{\mathcal V}=16\pi\int dk\,f_\Delta^2
 [\kappa_k^2\delta_1X_k\delta_2X_{-k}
  +r_\Delta^2\delta_1Y_k\delta_2Y_{-k}].
\]
Therefore
\[
 \boxed{p_{X,k}=8\pi\frac{\kappa_k^2}{r_\Delta(k)},\qquad
 p_{Y,k}=8\pi r_\Delta(k)}
\]
with
\[
 r_\Delta(k)=2\left|
 \frac{\Gamma(\frac{\Delta+ik}{2}+\frac14)}
 {\Gamma(\frac{\Delta+ik}{2}-\frac14)}\right|^2.
\]
For \(\Delta\ge2\), \(r_\Delta>0\) and
\(\kappa_k^2=\Delta(\Delta-2)+k^2+1/4>0\), so both costs are positive. Equality is a separate special-function question. The paper reports \(p_Y>p_X\) numerically on a finite region; this is not an all-real-\(k\), all-\(\Delta\) proof.

### Two complex structures on the same canonical pair

In \((\varphi_k,\pi_k)\),
\[
 A_{\mathcal V,k}=8\pi
 \begin{pmatrix}0&1\\-\kappa_k^2&0\end{pmatrix},\quad
 J_{\mathcal V,k}=
 \begin{pmatrix}0&1/\kappa_k\\-\kappa_k&0\end{pmatrix},
\]
\[
 J_{{\rm FS},k}=
 \begin{pmatrix}0&1/r_\Delta\\-r_\Delta&0\end{pmatrix}.
\]
The cost-selected oscillator frequency is \(8\pi\kappa_k\); the preparation state selects \(r_\Delta\). Their mismatch is the precise reason for unequal penalties. Multiplication gives
\(-J_{\rm FS}A=8\pi\,{\rm diag}(\kappa_k^2/r_\Delta,r_\Delta)\).

In complex source coordinates the same generator contains same-half terms:
\[
 H_{\mathcal V}^{(2)}
 =8\pi\int dk\,f_\Delta^2\left[
 (\kappa_k^2+r_\Delta^2)\lambda_k^-\lambda_{-k}^+
 +\frac{\kappa_k^2-r_\Delta^2}{2}
 (\lambda_k^-\lambda_{-k}^-+\lambda_k^+\lambda_{-k}^+)\right].
\]
Their absence at leading large \(\Delta\) is a limit, not a general holomorphic selection rule.

For \(\nu=\Delta-1\) at **fixed \(k\)**,
\[
 r_\Delta=\nu+\frac{1+4k^2}{8\nu}
 -\frac{9+40k^2+16k^4}{128\nu^3}+O(\nu^{-5}),
\]
\[
 \frac{p_Y}{p_X}
 =1+\nu^{-2}+\frac{5-12k^2}{8\nu^4}+O(\nu^{-6}).
\]
Thus \(p_X/(8\pi\Delta)\to1\) and \(p_Y/(8\pi\Delta)\to1\). This is relative leading proportionality; the formula is not uniform for arbitrarily large \(k/\Delta\).

Selected independently evaluated values, in the paper's normalization:

| \(\Delta,k\) | \(p_X\) | \(p_Y\) |
|---|---:|---:|
| \(2,0\) | 5.74216009 | 27.50074327 |
| \(3,1\) | 47.04655712 | 57.06118707 |
| \(10,10\) | 336.74899906 | 338.10273138 |
| \(100,0\) | 2487.91925348 | 2488.17311308 |

## §4.4: adding scalar and gradient terms

Take
\[
 W=\mathcal V+W_m,\qquad
 W_m=\int_\Sigma\sqrt h
 (a_0\varphi^2+a_1h^{ij}\partial_i\varphi\partial_j\varphi).
\]
The surface may extremize volume or the dressed functional; both choices differ only at \(O(\lambda^4)\) in this small-source calculation. This is a matter-dependent extension, not a member of the purely geometric complexity-anything family.

The scalar equation from \(S-\epsilon W\) contains
\[
 \sqrt{-g}(\Box-m^2)\phi=\epsilon\delta(\tau)\mathcal J,\quad
 \mathcal J=2\sqrt h\,a_0\phi
 -2a_1\partial_i(\sqrt h\,h^{ij}\partial_j\phi).
\]
At finite shell width first integrate across the shell; its zero-width limit has no \(\delta'(\tau)\) source, hence \([\phi]=0\), and
\([\pi_\phi]=-\epsilon\mathcal J\).
Retarded-minus-advanced response gives
\[
 \delta_m\varphi=0,\quad \delta_m\pi_\phi=-\mathcal J,
 \quad \Omega(\delta,\delta_m)=\delta W_m.
\]
There is no extra factor of two from subtracting retarded and advanced data: each is evaluated on its own side and their homogeneous difference is continuous.

Using only the leading large-\(\Delta\) source map,
\(\varphi=X,\pi_\phi=\Delta Y/u^2\), the generator becomes
\[
 H_W^{(2)}=4\pi\Delta^2\int\frac{du\,dx}{u^2}
 [X^2+Y^2+X\widehat{\mathcal D}X],\quad
 \widehat{\mathcal D}=\frac{a_0-a_1u^2\partial_u^2}{4\pi\Delta^2}.
\]
The new flow mixes the two source halves:
\[
 \delta_m\lambda^\pm
 =\pm\frac{i}{\Delta}(a_0-a_1u^2\partial_u^2)
 (\lambda^++\lambda^-).
\]
For \(\widehat w_k=(a_0+a_1\sigma_k)/(4\pi\Delta^2)\),
\[
 A_{W,k}=8\pi\Delta
 \begin{pmatrix}0&1\\-(1+\widehat w_k)&0\end{pmatrix},
 \quad
 J_{W,k}=
 \begin{pmatrix}0&(1+\widehat w_k)^{-1/2}\\
 -(1+\widehat w_k)^{1/2}&0\end{pmatrix},
\]
\[
 p_{X,k}=8\pi\Delta(1+\widehat w_k),\qquad
 p_{Y,k}=8\pi\Delta.
\]
Only the field displacement cost changes, because \(W_m\) depends on the field but not its momentum. The \(a_0\) term shifts that penalty uniformly, while \(a_1\) weights modes differently.

The **displayed approximate symbol** is uniformly positive for all real \(k\) if
\[
 a_1\ge0,\qquad 4\pi\Delta^2+a_0+a_1/4>0.
\]
At a finite mode cutoff \(|k|\le K\), the condition is instead
\(\min_{|k|\le K}[4\pi\Delta^2+a_0+a_1(k^2+1/4)]>0\).
Do not silently take \(K\to\infty\) inside a fixed-\(k\) large-\(\Delta\) approximation. The paper leaves a full finite-\(\Delta\) dressed-source calculation to future work; its approximate all-mode criterion is not an exact theorem about that omitted calculation.

## Appendices A–B: canonical conventions and the area-flow check

Appendix A derives
\[
 \pi_\phi=\frac{\sqrt h}{N}
 (\dot\phi-N^a\partial_a\phi),\quad
 \theta^\mu_\phi=-\sqrt{-g}\nabla^\mu\phi\,\delta\phi,
\]
and
\[
 \pi^{ij}=\frac{\sqrt h}{16\pi G_N}(K^{ij}-Kh^{ij}),\quad
 \Omega_{\rm GR}=\int_\Sigma
 (\delta_1\pi^{ij}\delta_2h_{ij}-\delta_2\pi^{ij}\delta_1h_{ij}).
\]
Flux through the timelike boundary must vanish, or be a boundary derivative with an included corner contribution. Quotienting true presymplectic zero modes is different from quotienting every diffeomorphism with nontrivial boundary action.

For the AdS3 vacuum half-line \(x>0\), the HRT curve lies at \(t=x=0\). The area flow is represented distributionally by
\[
 \xi=2\pi\Theta(x)(x\partial_t+t\partial_x).
\]
The boost without the step is Killing. Its step derivative instead yields
\[
 \delta_\xi g_{xx}=\frac{4\pi\ell^2t}{z^2}\delta(x),\quad
 \delta_\xi h_{ij}=0,\quad
 \delta_\xi K^{xx}=\frac{2\pi z^3}{\ell^3}\delta(x).
\]
Continue to Euclidean time to read the boundary metric source. The boundary pairing becomes
\[
 \Omega_\partial(\delta,\delta_{\cal A})
 =-2\pi\int_{\tau_E>0}d\tau_E\,dx\,
 \tau_E\delta(x)\,\delta\langle T^{xx}\rangle.
\]
With conserved linearized stress tensor and vanishing flux at infinity, Stokes converts it to
\[
 -2\pi\int_0^\infty dx\,x\,\delta\langle T^{\tau_E\tau_E}\rangle
 =2\pi\int_0^\infty dx\,x\,\delta\langle T^{tt}\rangle.
\]
Hence \(\delta{\cal A}/(4G_N)=\delta\langle K_{\cal A}\rangle\).
The RT relation supplies \(\delta S_{\cal A}\). This checks the transported functional at a fixed vacuum reference; it does not require, and does not establish, a positive Hessian for entropy on arbitrary state families.

## Equation ledger and reuse in the vault

| Object | Source equations | What can be reused |
|---|---|---|
| Mixed-half symplectic form | (2.17)–(2.18) | Source/one-point pairing with explicit measure and half-source derivative. |
| Transported generator | (2.27) | Exact pullback when the bulk flow is representable by allowed sources. |
| Volume scalar compensation | (3.16)–(3.18), (4.24)–(4.25) | A Hamiltonian field/momentum response derived after Ward cancellation. |
| Cost prescription | (4.6)–(4.16) | Positive Hessian, polar complex structure and generalized penalty eigenproblem. |
| Exact response map | (4.28)–(4.30) | Gamma-function source coefficients in the Mellin basis. |
| Finite-\(\Delta\) penalties | (4.31)–(4.36) | An explicit mismatch between physical oscillator and preparation complex structures. |
| Matter shell and dressing | (4.39)–(4.55) | Momentum-only kick and controlled leading-\(\Delta\) cost modification. |
| Area transport | (B.5)–(B.15) | A boundary-supported boost with the correct \(2\pi\) normalization. |

For CPS work, the direct bridge is
\[
 \delta W\ \longrightarrow\ (\delta_Wq,\delta_Wp)
 \ \longrightarrow\ (\delta_W\lambda,\delta_W\langle O\rangle)
 \ \longrightarrow\ dH_W.
\]
Every arrow has a separate domain condition. The source map must include both field and momentum; one scalar response coefficient is insufficient. The Mellin basis describes the hyperbolic WdW cut, not global AdS normal modes. The quadratic generator is a Hessian on a particular source family, not a complete reduction of the Einstein–scalar action or a proof of regional sewing. The preparation cut and asymptotic boundary are also distinct surfaces whose corner terms must not be conflated.

## Verification, source slips and limitations

**Verified / Checked.**

- Mathematica integrates the two source kernels after the \(x_0\) integral and reproduces \(f_\Delta,g_\Delta\) with exact zero residual for \(\Delta>2,k\in\mathbb R\); the \(\Delta=2\) expressions are finite continuous limits. The Mellin Laplacian eigenvalue is also checked symbolically.
- The canonical matrices satisfy \(\Omega A=\mathcal H\), \(A^T\mathcal H+\mathcal HA=0\), \(J_{\mathcal V}^2=-1\), \(J_{\mathcal V}^T\Omega J_{\mathcal V}=\Omega\), and the penalty operator identity with zero residual. Pullback by \({\rm diag}(2f,2g)\) gives the displayed source forms, and the same-half expression expands to the real-source generator.
- A Bernoulli-polynomial Gamma-ratio expansion reproduces the displayed \(r_\Delta\) and \(p_Y/p_X\) asymptotics, including the next coefficients written above.
- A 30-digit grid \(\Delta=2,4,\ldots,100\), \(k=0,5,\ldots,300\) has \(r_\Delta^2-\kappa_k^2>0\), with minimum approximately \(0.5000041667\). This is a finite scan, not a global inequality proof.
- xAct-loaded component calculations give \(R_{\mu\nu}+2g_{\mu\nu}=0\) for the WdW AdS3 metric and verify the slice Klein–Gordon reduction. The York Lie derivative matches Appendix C exactly away from the cut. The first FG correction cancels the \(zz\) term through order \(z^0\) and the \(z\tau_E\) term through order \(z^{-1}\), leaving the expected higher orders for the next correction; the leading boundary Weyl coefficient is \(-2i\beta_R\).
- The distributional one-sided boost gives the displayed \(\delta g_{xx}\) and \(\delta K^{xx}\), using \(x\delta(x)=0\). The canonical volume shell yields
\(\delta\pi^{ij}=-\sqrt h\,h^{ij}/(2G_N\ell)\), so its pairing is \(\delta(V_{\rm geom}/G_N\ell)\).
- The energy minimum and shell momentum sign follow by completing the positive quadratic path energy and by integrating the sourced equation through a finite-width shell before its distributional limit. The positivity criterion for the approximate dressing symbol follows by minimizing its affine function of \(k^2\).

**Failed literal normalization / proposed correction.** On printed p.12, (3.1) writes \(\delta V/(G_N\ell)\), while (3.2) defines \(V\) with \(1/(G_N\ell)\) already included. Taken with one meaning of \(V\), these are inconsistent with the shell and canonical calculation. The consistent statement is
\(\Omega(\delta,\delta_{\cal V})=\delta\mathcal V=\delta V_{\rm geom}/(G_N\ell)\).
This note uses that convention; it does not modify the source or any existing vault passage.

**Source wording to read conditionally.** The prose after the scalar Weyl pairing says the trace alone equals the anomaly. In the presence of a source, the displayed pairing correctly contains the combined trace Ward expression written above. Also, the assertion after (4.35) that the complex structures never coincide for any mode is stronger than the finite numerical evidence supplied nearby. The verified statement here is positivity for \(\Delta\ge2\), explicit unequal examples, the finite scan, and the fixed-mode asymptotic splitting.

**Assumptions.** Single dominant Euclidean saddle; reflection-real source data; representable Hamiltonian flow; quotient/nondegenerate source subfamily; fixed boundary metric in the scalar sector; small sources; \(\Delta\ge2\); decay and absence of surviving cut corners. Uniform positivity of the dressed approximation is a statement about its displayed symbol, with the large-\(\Delta\)/mode-cutoff qualification above.

**Not independently verified.** Full renormalized gravity-plus-scalar boundary/corner pairing for arbitrary sources, the all-orders FG expansion, existence/surjectivity of the Euclidean preparation map on an unrestricted infinite-dimensional space, a global Gamma-ratio inequality, finite-\(\Delta\) dressed penalties, higher-order source geometry, black-hole backgrounds, and an operational circuit interpretation. The bulk-boundary symplectic identification and general Peierls theorem are used as source inputs; selected explicit realizations were checked.

**Source and computation status.** PDF and TeX retrieval succeeded. Rendered PDF pages 13,16,20,23–26,28–29,38–40 confirm the central formulas and the normalization collision. A first component script accidentally reused the York coefficient as a table index; the corrected script restored the parameter and passed the Lie-derivative test. This was a computation error, not an additional source failure. All artifacts are outside the vault, and no PDF attachment was created.
