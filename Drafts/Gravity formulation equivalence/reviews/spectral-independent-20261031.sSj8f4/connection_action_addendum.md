# Original finite connection Gaussian: the effective action also changes

This is an additional independent calculation after [the initial freeze](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/FREEZE.md>), before receiving any parent-supplied formula. It does not alter any frozen file.

## Result

With the same scalar family and original retained connection Gaussian, the finite stationary connection is not the projection of the continuum torsion-free connection. Writing V=(2π)³ and using s=√(1−ε²), q=(1−s)/(1+s), the exact body effective-action difference is

\[
\boxed{I_{\mathrm{eff},N}-I_g[f^2I]
 =\frac{4aV s q^{N+1}}{1-q^{N+1}}
 =\frac{aV}{2^{2N}}\epsilon^{2N+2}+O(\epsilon^{2N+4}).}
\]

This is a finite projection effect, not a saddle expansion about AdS.

## Derivation

The only sourced connection components are

\[
\omega^2{}_3=-v,\qquad\omega^3{}_2=v.
\]

The closed Palatini action in this source sector is

\[
I_P=2aV\left[\langle v,Av\rangle-2\langle f',v\rangle-\langle f^3\rangle\right],
\]

where angular brackets use normalized Haar measure and A=P fP. All eight internal directions orthogonal to this one sourced antisymmetric combination remain in the Gaussian determinant, with the signature and contour already accounted for in [the main derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/derivation.md#L180-L204>).

The stationary source solution is v_N=A^{-1}f', not Bf'=P(f'/f). Its response is

\[
R_N=\langle f',A^{-1}f'\rangle.
\]

In the sine basis sin x¹,…,sin Nx¹, multiplication by f has the length-N tridiagonal matrix I+εC, while the source is −ε sin x¹. If D_j is its j-by-j determinant, cofactor inversion gives

\[
R_N=\frac{\epsilon^2}2\frac{D_{N-1}}{D_N}
=(1-s)\frac{1-q^N}{1-q^{N+1}}.
\]

The continuum response is

\[
R_\infty=\left\langle\frac{(f')^2}{f}\right\rangle=1-s,
\qquad
R_\infty-R_N=\frac{2s q^{N+1}}{1-q^{N+1}}.
\]

Thus

\[
I_{\mathrm{eff},N}=-2aV(\langle f^3\rangle+R_N),\qquad
I_g[f^2I]=-2aV(\langle f^3\rangle+R_\infty),
\]

which proves the result. Equivalently the finite Gaussian pushforward contains this additional exponential, as well as its determinant. At ε=3/5,N=2, R_N=18/91 and R∞=1/5, so the response gap is exactly 1/455 and the action gap is 2aV/455.

## Evidence and scope

The [self-contained native Sage executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection_action_check.py>) checks the full retained Fourier inverse, the closed response, the gap, and nonstationarity of Bf' for N=1,…,6 at ε=3/5. All 18 exact labels pass in [the actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection-action-result.json>); [the tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection-action-tool-return.json>) is preserved. The analytic determinant recurrence proves the all-N, |ε|<1 result; the finite exact checks are not substituted for that proof.

This concerns the body Gaussian source. It does not prove a finite nilpotent BRST transfer or a continuum quantum equivalence.
