# Kerr nonlinear QNM coupling: scalar pairing and a selected invariant response

## Result and scope

**The scalar slice comparison is correct under the analytic-domain and endpoint conditions stated below. A [two-mode Kerr benchmark](scalar-benchmark.md) now confirms it numerically with independent contour and Tricomi regularizations. The selected gravitational response criterion is now addressed by the [gauge-completed coupling](invariant-selected-coupling.md) and its [metric-CPS normalization](metric-cps-normalization.md), under their stated analytic-domain conditions.** For the scalar covariant symplectic current, the difference between a Boyer–Lindquist slice and a hyperboloidal slice is an explicit radial endpoint term. The diagonal mode norm has exactly the same radial density on both slices. A common analytic contour on which the endpoint term vanishes therefore gives the same scalar bilinear form. This does not identify every Hilbert-space QNM.

There is also a definite obstruction to the unqualified original formulation: a raw quadratic coefficient in an equation for mode amplitudes changes under a quadratic redefinition of those amplitudes. To ask for reconstruction-independent gravitational coefficients, one must fix a nonlinear observable and its normalization, or restrict to resonant normal-form coefficients. This obstruction does not rule out invariant waveform response coefficients.

## 1. Action, current, and which two products are being compared

Take a real massless scalar on a fixed subextremal Kerr exterior, with $M>0$, $|a|<M$, signature $(-+++)$, and action
$$
S[\phi]=-\frac12\int \sqrt{-g}\,g^{ab}\partial_a\phi\,\partial_b\phi\,d^4x.
$$
Complexify the linear solution space after varying the real action. With
$$
\pi=-\sqrt{-g}\,g^{t\nu}\partial_\nu\phi,
\qquad
\Omega_\Sigma(u,v)=\int_\Sigma(\pi_u v-\pi_v u),
$$
the local conservation identity is
$$
\nabla_a(u\nabla^a v-v\nabla^a u)=u\Box v-v\Box u.
$$
Conservation of the integrated form additionally requires control of endpoint fluxes.

The Kerr reflection
$$
(\mathcal Ju)(t,r,\theta,\varphi)=u(-t,r,\theta,-\varphi)
$$
is linear over $\mathbb C$; it does not conjugate $u$. On a domain preserved by the reflection and by the chosen endpoint prescription, it reverses $\Omega$. Therefore
$$
B_\Sigma(u,v)=\Omega_\Sigma(\mathcal Ju,v)
$$
is symmetric. Slice independence concerns the same spacetime solutions and the same spacetime reflection. A reflection defined afresh as $\tau\mapsto-\tau$ in each height-function coordinate is a different operator.

A positive Hilbert product used to define an evolution generator is not $B$. A damped eigenvector evolves as $e^{-i\omega\tau}u$, so its positive squared norm scales as $e^{2\operatorname{Im}\omega\tau}$. This Hilbert norm cannot serve as the conserved-current pairing merely by changing coordinates.

[Green et al., 2210.15935](https://arxiv.org/html/2210.15935v3), especially the conclusions, make this distinction and propose evaluating their bilinear form on hyperboloidal slices. [Gajic–Warnick, 2407.04098](https://arxiv.org/html/2407.04098v1), Theorem 1.1, constructs regularity QNMs for suitable Hilbert domains. Its statement includes scattering poles among the regularity frequencies; it does not assert that every such frequency has a separated spheroidal representation or identify its Hilbert norm with a contour bilinear form.

## 2. Separated scalar operator

Write
$$
\Delta=r^2-2Mr+a^2,\qquad
\Sigma=r^2+a^2\cos^2\theta,\qquad
K=(r^2+a^2)\omega-am,
$$
and
$$
u=e^{-i\omega t+im\varphi}S_{\ell m}(\theta;\omega)R_{\ell m}(r;\omega).
$$
The separated equations, with our definition of $A_{\ell m}$, are
$$
\frac1{\sin\theta}\partial_\theta(\sin\theta\,\partial_\theta S)
+\left(a^2\omega^2\cos^2\theta-\frac{m^2}{\sin^2\theta}
+A_{\ell m}(\omega)\right)S=0,
$$
$$
L_\omega R=(\Delta R')'+V_\omega R=0,\qquad
V_\omega=\frac{K^2}{\Delta}-a^2\omega^2+2am\omega-A_{\ell m}(\omega).
$$
Choose a simple analytic angular eigenvalue branch, away from exceptional points, and normalize
$$
\int_0^\pi S(\theta;\omega)^2\sin\theta\,d\theta=1.
$$
This is a bilinear normalization. It requires that the displayed integral is nonzero.

Differentiating the angular equation, multiplying by $S$, and integrating the angular derivative by parts gives
$$
A'_{\ell m}(\omega)
=-2a^2\omega\int_0^\pi \cos^2\theta\,S(\theta;\omega)^2\sin\theta\,d\theta.
$$
Regularity at the two poles removes the angular boundary term. No complex conjugation is inserted.

Consequently,
$$
\partial_\omega V_\omega
=\frac{2(r^2+a^2)K}{\Delta}-2a^2\omega+2am-A'_{\ell m}(\omega).
$$
The radial Green identity for two possibly different potentials is
$$
\partial_r\{\Delta(R_1R_2'-R_1'R_2)\}
=(V_1-V_2)R_1R_2.
$$
Differentiation on one analytic branch gives
$$
\partial_r\{\Delta(R\,\partial_r\partial_\omega R-R'\partial_\omega R)\}
=-(\partial_\omega V_\omega)R^2.
$$
The endpoint expression is part of the norm calculation; it is not zero just because $L_\omega R=0$.

## 3. An explicit diagonal norm

The nonzero inverse-metric entries needed on a constant-$t$ slice are
$$
\Sigma g^{tt}=-\frac{(r^2+a^2)^2}{\Delta}+a^2\sin^2\theta,
\qquad
\Sigma g^{t\varphi}=-\frac{2Mar}{\Delta},
\qquad
\sqrt{-g}=\Sigma\sin\theta.
$$
For one mode the product of the phases of $\mathcal Ju$ and $u$ is one. Thus
$$
B_t(u,u)=2\pi\int dr\,d\theta\,
2i\sin\theta
\left[
\frac{(r^2+a^2)^2\omega-2Mar\,m}{\Delta}
-a^2\omega\sin^2\theta
\right]R^2S^2.
$$
Using the angular derivative above yields
$$
\boxed{B_t(u,u)=2\pi i\int dr\,R(r)^2\partial_\omega V_\omega(r).}
$$
The factor $2\pi$ is the azimuthal integral and the factor $i$ follows from the chosen $\Omega$. This formula is unregularized until an integration prescription is supplied.

## 4. Hyperboloidal pullback and the exact endpoint difference

Let
$$
\tau=t-h(r),\qquad \widetilde\varphi=\varphi-k(r).
$$
Then
$$
\widetilde R=e^{-i\omega h+imk}R.
$$
The azimuthal shift matters in Kerr. For example, near the future horizon,
$h\sim-r_*$, $k\sim-\Omega_Hr_*$, and the multiplier cancels the ingoing phase $e^{-i(\omega-m\Omega_H)r_*}$. Near future infinity take $h\sim r_*$, with $k$ tending to a constant, to cancel the outgoing oscillation. The additional $r^{-1}$ amplitude is treated separately if a conformally rescaled field is used.

Consider two modes with $m_1=m_2=m$. Define
$$
d=\omega_1-\omega_2,\qquad
I_{12}=\int_0^\pi S_1S_2\sin\theta\,d\theta,
$$
$$
W(r)=\Delta(R_1'R_2-R_1R_2')\,I_{12}.
$$
Let $T(r)$ be the angular integral of the constant-$t$ density, with the azimuthal factor $2\pi$ and $e^{idt}$ removed. Explicitly,
$$
T=iR_1R_2\int_0^\pi S_1S_2\sin\theta
\left[
(\omega_1+\omega_2)
\left(\frac{(r^2+a^2)^2}{\Delta}-a^2\sin^2\theta\right)
-\frac{4Mar\,m}{\Delta}
\right]d\theta.
$$
Subtracting the two angular equations and integrating gives
$$
(A_1-A_2)I_{12}
=-a^2(\omega_1^2-\omega_2^2)
\int_0^\pi \cos^2\theta\,S_1S_2\sin\theta\,d\theta.
$$
Combined with the radial Green identity, this proves
$$
W'=id\,T.
$$
The pullback to $\tau=0$ replaces the oriented hypersurface density by the $t-h'r$ combination of current components. Its radial integrand is exactly
$$
e^{idh(r)}[T(r)+h'(r)W(r)].
$$
The $k$-dependence cancels for equal $m$; for unequal integer $m$, the full azimuthal integral is zero. For $d\ne0$,
$$
\boxed{
B_h-B_t
=\frac{2\pi}{id}
\left[(e^{idh}-1)W\right]_{\partial C}.
}
$$
Here $C$ can be a finite real radial interval or an analytic contour, with all functions evaluated on the same branches. This calculation retains the endpoint contribution explicitly.

For the diagonal pair, $W=0$ and $e^{idh}=1$ identically. Therefore
$$
\boxed{B_h(u,u)=B_t(u,u)}
$$
already as equal radial densities on every finite interval. Smoothness of $\widetilde R$ does not remove the divergence of this density: the reflected solution carries the inverse height-function factor.

## 5. Precisely what a common contour proves

A sufficient domain for the off-diagonal equality consists of separated modes and height functions satisfying all of the following:

1. Their radial factors and $h,k$ have specified analytic continuations along a common cut contour $C$, with no singularity crossed when comparing the two pullbacks.
2. The same branches, orientation, angular normalization, and contour prescription are used in both calculations.
3. The integrals converge and
   $$
   W\longrightarrow0,\qquad e^{idh}W\longrightarrow0
   $$
   at every contour endpoint.

For a contour whose two ends approach complex infinity parallel to the positive imaginary axis, outgoing asymptotics of the form
$$
R_j(r)=e^{i\omega_jr_*}r^{-1}\times
\text{a factor with at most power growth}
$$
give the required damping when $\operatorname{Re}\omega_j>0$, provided these outgoing asymptotics hold on both continued contour legs. In that case $W$ has the exponential factor $e^{i(\omega_1+\omega_2)r_*}$, while $e^{idh}W$ has $e^{2i\omega_1r_*}$. The logarithmic factors only change powers. This is a sufficient asymptotic test, not an assertion that arbitrary continuation across a Stokes sector preserves a purely outgoing branch.

Under these conditions, the boxed endpoint formula proves equality of the two regularized scalar pairings. Homotopic contour deformations within this domain preserve the answer. On an ordinary real hyperboloid, the hypotheses generally fail; deleting the endpoint term there is incorrect.

An independent hyperboloidal prescription based on analytic continuation can also be matched if it agrees with this contour prescription on a nonempty convergence domain and has a specified common continuation. Equality then follows from uniqueness of analytic continuation. A freely chosen finite endpoint subtraction is not covered by that argument.

This establishes an exact restricted scalar comparison. The [numerical supplement](scalar-benchmark.md) specifies the common analytic domain and hyperboloidal coordinate system for a selected Kerr pair, and compares the contour result with an independent Tricomi continuation. Its cutoff, angular, radial, and series refinements provide numerical error evidence. Neither calculation proves boundedness of $B$ on the entire Gajic–Warnick Hilbert space.

The newer [Minucci–Macedo–Pantelidou–Sberna paper, 2604.13182](https://arxiv.org/html/2604.13182) treats scalar Schwarzschild. It finds that the reflected mode still causes divergences on future hyperboloids, implements analytic and contour regularizations, and studies projections against a Green-function construction. Kerr is left for extension. The PDF's boundary-term formulas on page 12 and contour prescription on page 17 were visually inspected. Its Schwarzschild numerical evidence is not a completed Kerr calculation in this note.

## 6. Why a resolvent residue is the appropriate invariant comparison

For an analytic Fredholm operator pencil $P(\omega)$ with a simple pole, let
$$
P(\omega_j)u_j=0,\qquad v_jP(\omega_j)=0,
\qquad N_j=v_jP'(\omega_j)u_j\ne0.
$$
Then
$$
P(\omega)^{-1}
=\frac{u_j\otimes v_j}{(\omega-\omega_j)N_j}
+\text{a holomorphic operator}.
$$
This expression is independent of reciprocal rescalings of left and right modes.

If $P_h=TPT^{-1}$, with analytic invertible maps between the actual operator domains, then
$$
P_h'=TP'T^{-1}+[T'T^{-1},P_h].
$$
Using $u_h=Tu$, $v_h=vT^{-1}$, the commutator term vanishes between the two null vectors and $N_h=N$. This is a proof under domain equivalence. In Kerr, $T=e^{-i\omega h+imk}$ can be unbounded at the endpoints on the original function spaces, so formal conjugation alone is insufficient.

Matching this residue, including its source and observable maps, avoids confusing an arbitrary Hilbert norm with the spectral projector needed for excitation amplitudes.

## 7. The nonlinear coefficient needs a fixed observable

Suppose mode amplitudes satisfy
$$
\dot a_j=\lambda_ja_j+\sum_{k,l}C_{jkl}a_ka_l+O(a^3).
$$
An allowed change of nonlinear coordinates,
$$
b_j=a_j+\sum_{k,l}B_{jkl}a_ka_l,
$$
gives
$$
\boxed{C'_{jkl}=C_{jkl}+(\lambda_k+\lambda_l-\lambda_j)B_{jkl}.}
$$
For a nonresonant triple, the raw coefficient can be changed or set to zero. Thus a CPS projection does not by itself select a unique nonlinear amplitude coordinate.

There are two concrete repairs. One can fix an observable waveform, its asymptotic frame, linear mode normalization, and nonlinear reconstruction convention, then compare its response coefficients. Alternatively, one can isolate resonant normal-form data, for which the displayed redefinition term vanishes. Neither repair identifies arbitrary metric-reconstruction choices without further proof.

For a local scalar quadratic interaction invariant under axial rotations, the source channel has $m_j=m_k+m_l$. If the interaction also preserves equatorial reflection, scalar spheroidal parity implies $\ell_j+\ell_k+\ell_l$ is even. A spherical-harmonic triangle rule does not follow for generic $a\ne0$, and these scalar statements are not gravitational spin-weighted selection rules.

Existing nonlinear Kerr results must be included in a novelty audit: [Khera–Ma–Yang, 2410.14529](https://arxiv.org/abs/2410.14529), published in PRL in 2025, calculates quadratic channels with a hyperboloidal method and compares reflection-symmetric combinations with numerical simulations. Its existence rules out treating nonlinear Kerr coupling calculations in general as an untouched problem. The narrower CPS, domain, and reconstruction-independence theorem still needs a direct comparison.

The [gravitational response supplement](gravitational-response.md) derives the sourced CPS balance law and the mixed-order gauge cancellation for a fixed waveform. The [published gravitational benchmark](published-gravitational-benchmark.md) checks raw public Kerr data, identical-parent counting, and harmonic conventions. Independent [Schwarzschild](schwarzschild-quadratic.md) and [rotating Kerr](kerr-quadratic.md) DD solves reproduce the public waveform data; the rotating calculation also corrects three inconsistent source-expansion coefficients by exact substitution of the earlier reconstruction formulas. The [spin-two benchmark](spin2-benchmark.md) checks the radial norm, and the [analytic-domain lemma](analytic-source-domain.md) controls finite local products. The [chiral identity](chiral-source-identity.md) permits a zero corrector for this source; the [Hertz inverse](hertz-metric-reconstruction.md) constructs a daughter metric whose full Einstein residual decreases under angular refinement at two points. The subsequent [residual-kernel theorem](chiral-reconstruction-proof.md) proves the untruncated Einstein implication in the outgoing analytic class. The [normalized metric-source projection](metric-cps-normalization.md) and [completed selected observable](invariant-selected-coupling.md) now supply the coefficient and its invariances without assuming an infinite daughter-metric sum. Existence and uniform estimates for that stronger full-metric construction remain unproved.

## 8. Verification and remaining gates

**Verified:** Mathematica returned zero for the radial Green identity, the Kerr frequency derivative, the inverse-metric pairing density, metric determinant, angular reduction, height-function mode factor, and exact endpoint identity. xAct returned zero for the covariant scalar-current divergence residual. A finite matrix example checks the residue-conjugation algebra only; it is not a Kerr domain test. The quadratic coordinate-change formula was also checked.

**Assumptions:** nonextremal Kerr; massless scalar; simple nondegenerate angular and resonance branches where used; explicit complex-bilinear normalization; regular angular poles; analytic radial/height-function branches; convergent common contour and vanishing endpoint expressions for the regularized equality.

**Further verified in the supplement:** two scalar Kerr modes, their direct contour and hyperboloidal-current integrals, independent Tricomi norms, and a nonzero finite-cutoff endpoint difference, with explicit convergence checks.

**Not verified:** a theorem extending the form to the full regularity-QNM Hilbert domain; the completed sourced gravitational metric domain and compatible second-order reconstruction; a global extension of the selected-channel metric-CPS and Teukolsky source/residue maps beyond the declared domain; an independent full Einstein-tensor derivation or time-domain ringdown simulation. The Schwarzschild and rotating Kerr direct--direct response solves are narrower than these remaining requirements. No completeness of QNMs is assumed.

The follow-up notes establish the original selected-coefficient criterion on the specified analytic domain. The stronger untruncated metric existence and full Hilbert-domain questions remain open; they are not inferred from the scalar calculation.
