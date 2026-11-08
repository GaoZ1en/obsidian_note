# Supplemental review: the parent's general odd-interaction theorem

This supplement was requested after the independent quintic result had already been derived and checked. Unlike the quintic core, it is a critical review of a formula supplied by the parent, not a blind derivation of that candidate.

## Verdict

The factorial normalization and the proposed negativity argument are correct. One wording correction is needed: the vanishing first-order projection at the selected mass uses **arithmetic plus the one-leg Jacobi orthogonality theorem**, not arithmetic alone.

Let n=2k+1, m=n−1=2k, and choose
\[
 \Delta=\frac{2k}{2k-1},\qquad k\ge1.
\]
For the interaction −λₙ :φⁿ:/n!, set
\[
 c_n=\frac{(2\pi)^{1-n/2}}2,\qquad
 I_\nu=c_n\frac{(1-(n-2)\Delta/2)_\nu}
 {(n\Delta/2-1)_{\nu+1}},\qquad
 \omega_\nu=\Delta+2\nu.
\]
The highest connected ground finite difference has the normalization
\[
 B_m=m!\sum_{\nu\ge0}I_\nu^2\sum_{r=0}^m
 \frac1{r!^2(m-r)!^2((2r-m)\Delta-\omega_\nu)}.
\]
All m+1 external creation allocations are included. Writing
\[
 F_m(t)=\sum_{r=0}^m\frac{\binom mr^2}{2r-m-t},
 \qquad t_\nu=\frac{\omega_\nu}{\Delta},
\]
one gets exactly
\[
 B_m=\frac1{m!\Delta}\sum_\nu I_\nu^2F_m(t_\nu).
\]
There is no extra factor of m! or 1/2.

## Finite support and first-order projection

The numerator parameter is 1−k, so ν=0,…,k−1 is the entire nonzero support. On it
\[
 t_\nu=2\nu+1-\frac\nu k\in(2\nu,2\nu+1].
\]
The first possible same-frequency internal pole at the top frequency mΔ is ν=k, whose overlap vanishes.

At first order, a number change dN must satisfy dN Δ∈2ℤ. Since gcd(k,2k−1)=1, dN is divisible by 2k−1. With two nonempty sides of the n-leg vertex, the only candidate is dN=±(2k−1), corresponding to 1↔2k. Its matrix element vanishes by the established one-leg Jacobi orthogonality theorem. Pure creation/annihilation cannot conserve positive energy. Thus PVₙP=0. For k=1 this is the familiar cubic one-leg argument at Δ=2; Δ=2 must not be rejected merely because the quintic exceptional set is different.

## A short strict negativity proof

Write j=r−k and w_j=binom(2k,k+j)², with w_j=0 outside −k≤j≤k. The weights are symmetric and strictly decrease with |j| inside their support.

At the midpoint t=2ν+1, pair every j≤ν with j'=2ν+1−j≥ν+1. The denominators are opposite, and the pair contributes
\[
 \frac{w_{j'}-w_j}{2\nu+1-2j}\le0.
\]
Indeed |j'|>|j| because j'+j=2ν+1>0. At least one pair is strictly negative. Therefore
\[
 F_m(2\nu+1)<0.
\]
Furthermore F'_m(t)=Σ_r binom(m,r)²/(2r−m−t)²>0 between consecutive poles. Since tν lies to the right of the even pole 2ν and at or below its midpoint,
\[
 F_m(t_\nu)\le F_m(2\nu+1)<0.
\]
Every nonzero radial contribution is negative; hence **Bₘ<0 for every k≥1 at the displayed nonresonant mass**.

This is not a claim of negativity for all Δ. Actual active poles at other masses can change signs; generic nonvanishing follows by analytic continuation of the finite-source/spectral formula, not by a universal sign argument.

## Full projection: why this is a physical finite difference

For a ground energy E=NΔ with N≤m, another particle number M requires (N−M)k/(2k−1)∈ℤ. For N<m no valid lower sector exists (the apparent M=0 case would have positive energy but no vacuum excitation). At N=m the only additional state is the one-particle (p,q)=(k,k) state.

The m-body ground state has even field parity, whereas the one-body state has odd parity. The order-λₙ² effective operator and the required counterterms are even. Their off-diagonal matrix element vanishes. Thus the complete projected calculation gives a well-defined ground branch through this order, and the mth finite difference of its energies is the coefficient above.

Two-vertex divergent kernels require at least three contractions, hence have at most 2n−6 external legs. They cannot alter the highest degree 2n−2 coefficient. A freely added finite φ^(2n−2) interaction can alter it and is an additional physical deformation, not a necessary counterterm.

## Exact septic example

For n=7, m=6, Δ=6/5, the overlap ratios are I₁/I₀=−10/21, I₂/I₀=25/273, and I₀²=25/(32768π⁵). Wolfram's direct allocation sum and Sage's independent occupation-number sixth differences give
\[
\begin{aligned}
 \pi^5B_{6,\nu=0}&=-\frac{3575}{16515072},\\
 \pi^5B_{6,\nu=1}&=-\frac{1623875}{15780151296},\\
 \pi^5B_{6,\nu=2}&=-\frac{7818366875}{3141544080310272},\\
 \boxed{B_6}&=\boxed{-\frac{168524890325}{523590680051712\pi^5}}.
\end{aligned}
\]
Exact rational tests of Fₘ(tν)≤Fₘ(2ν+1)<0 also passed for k=1,…,30. They are supporting examples; the pairing proof above is the all-k argument.
