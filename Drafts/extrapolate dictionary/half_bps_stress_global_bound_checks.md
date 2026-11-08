# Global polynomial estimate for the spacelike stress–scalar mixed kernel

Independent analytic estimate, 2026-10-26. No existing research file was edited.

## Result

Use the conventions of [stress reconstruction §§4–6](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction.md#L174-L359>): a,b,k>0, z>=0,

\[
D^2=[k^2+(a+b)^2][k^2+(a-b)^2],\quad X=a^2+k^2-b^2,
\quad \mathcal L_a=\partial_a^2-a^{-1}\partial_a,
\]
\[
B_z=\frac1\pi\int_0^\pi\frac{J_0(z\sqrt{a^2+b^2-2ab\cos\theta})}{k^2+a^2+b^2-2ab\cos\theta}\,d\theta.
\]

Derivatives hold b,k fixed. Define E=a+b+k and

\[
F_z=\frac{D^3}{a^2}\mathcal L_a B_z.
\]

**Theorem.** A universal, deliberately conservative constant is

\[
|F_0|\le8,\qquad
\boxed{|F_z-F_0|\le5000\,z^2E^2(1+z^2E^2).}
\]

Consequently, for the normalized five-polarization kernel in the question,

\[
\|K_z-K_0\|_{\rm pol}\le
\frac{\pi^3|\alpha|}{2\sqrt5}\sqrt{\frac23}\,
\frac{5000z^2E^2(1+z^2E^2)}D,
\]
\[
\|K_z\|_{\rm pol}\le
\frac{\pi^3|\alpha|}{2\sqrt5}\sqrt{\frac23}\,
\frac{8+5000z^2E^2(1+z^2E^2)}D.
\]

No positive lower bound on a,b,k or their ratios is assumed. The bounds include approach to a=b,k=0 and either mass going to zero. They assert an integrable bound, not a pointwise value on D=0. The constant is not optimized; the degree-four radial bound is also not asserted to be sharp.

## Proof

Write r=sqrt(b^2+k^2), S=a^2+r^2, and use angular averages with measure dtheta/pi. At any real radial argument x define

\[
u=x-b\cos\theta,\quad
A=k^2+x^2+b^2-2xb\cos\theta,
\quad G=A^{-1},\quad H=J_0(z\sqrt{x^2+b^2-2xb\cos\theta}).
\]

The two-dimensional plane-wave representation of H proves

\[
|\partial_x^m H|\le z^m\quad(m\ge0),\quad
|H-1|\le\frac{z^2(|x|+b)^2}{4},\quad
|H'|\le\frac{z^2|u|}{2}.
\]

The last bound follows also from |J1(w)|<=|w|/2. All derivatives here are regular even where the Bessel argument vanishes.

### Region I: a>=r/2

Then b/a<=2, S<=5a^2, D<=S. At x=a,

\[
G'=-\frac{2u}{A^2},\qquad
\mathcal L_aG=\frac{8u^2}{A^3}-\frac{2b\cos\theta}{aA^2}.
\]

Because u^2<=A,

\[
|\mathcal L_aG|\le12A^{-2},\quad
\langle A^{-1}\rangle=D^{-1},\quad
\langle A^{-2}\rangle=S/D^3.
\]

Apply the exact product rule

\[
\mathcal L_a[G(H-1)]=(H-1)\mathcal L_aG+2G'H'+G\mathcal L_aH.
\]

The bounds |H-1|<=9z^2a^2/4 and |L_aH|<=z^2+z^2(a+b)/(2a)<=5z^2/2 give, after multiplication by D^3/a^2,

\[
\begin{aligned}
\frac{D^3}{a^2}|\langle(H-1)\mathcal L_aG\rangle|
&\le135z^2a^2,\\
\frac{D^3}{a^2}|\langle2G'H'\rangle|
&\le50z^2a^2,\\
\frac{D^3}{a^2}|\langle G\mathcal L_aH\rangle|
&\le\frac{125}{2}z^2a^2.
\end{aligned}
\]

For the middle inequality use |2G'H'|<=2z^2u^2/A^2<=2z^2/A. Thus

\[
|F_z-F_0|\le250z^2a^2\le250z^2E^2.
\]

### Region II: 0<a<=r/2

For every x in [0,a], A>=(r-x)^2>=r^2/4. Factor A=(u+ih)(u-ih), where h=sqrt(k^2+b^2 sin^2(theta)). The product rule gives

\[
|G^{(j)}|\le(j+1)!A^{-(j+2)/2}
\le(j+1)!(2/r)^{j+2}.
\]

In particular the constants for j=0,...,4 are 4,16,96,768,7680, multiplying r^(-j-2).

Set f(x)=B_z(x,b,k)-B_0(x,b,k). The angular average makes f smooth and even. The exact integral identity

\[
\boxed{\frac{f''(a)-f'(a)/a}{a^2}
=\frac12\int_0^1(1-v^2)f^{(4)}(va)\,dv}
\]

removes the apparent negative powers of a. It follows by writing f'(a)/a=integral_0^1 f''(ta)dt and f'''(0)=0. Its absolute value is bounded by one third of the supremum of |f''''| on [0,a].

On this interval,

\[
|H-1|\le\frac9{16}z^2r^2,\quad
|H'|\le\frac34z^2r,\quad
|H''|\le z^2,\quad|H'''|\le z^3,\quad|H''''|\le z^4.
\]

The fourth derivative product rule therefore gives, putting y=zr,

\[
|f^{(4)}(x)|\le r^{-6}(4y^4+64y^3+7200y^2).
\]

Since D<=S<=5r^2/4,

\[
|F_z-F_0|\le\frac{125}{192}
(4y^4+64y^3+7200y^2)
\le5000y^2(1+y^2).
\]

The final polynomial inequality holds for all y>=0 (and was checked exactly by CAS). Since r<=E, it proves the claim in Region II.

Finally B0=1/D and

\[
F_0=4(3X^2/D^2-1),\quad D^2-X^2=4b^2k^2\ge0,
\]

so |F0|<=8. This completes the global proof.

## Energy domination and full unamputated tensor

For future-timelike p,q with masses a,b and spacelike transfer, set H_energy=p^0+q^0. Then

\[
a\le p^0,\quad b\le q^0,\quad k\le p^0+q^0,
\quad E\le2H_{\rm energy}.
\]

Let W_{z,ij} be the unamputated mixed tensor coefficient reconstructed from the five physical p-TT polarizations, not merely one boosted component. It satisfies

\[
W_{z,ij}=\sqrt{\rho_O(q)}\sum_\lambda
\sqrt{\rho_T(p)}e_{\lambda,ij}(p)K_{z,\lambda}.
\]

Using the stress spectral trace bound in the source note,

\[
\|W_z-W_0\|_{\rm Eucl}
\le\sqrt{\rho_O\operatorname{tr}_{\rm Eucl}\rho_T}\,
\|K_z-K_0\|_{\rm pol}
\le\frac{\pi^3}{4}(p^0)^2\|K_z-K_0\|_{\rm pol}.
\]

Thus the full tensor introduces only a quadratic energy factor, not an inverse mass. For z in any bounded interval [0,z0],

\[
\|W_z-W_0\|_{\rm Eucl}
\le C_{\alpha,z_0}\,z^2\frac{(1+H_{\rm energy})^6}{D}.
\]

The established compact-energy estimate integral_{p0,q0<=B} D^(-2) d4p d4q<=C B^4 implies, by Cauchy–Schwarz and the O(B^8) volume of the two future-cone energy caps,

\[
\int_{p^0,q^0\le B}D^{-1}d^4p\,d^4q\le C B^6.
\]

A dyadic decomposition now proves:

* Wz defines a tempered, locally integrable tensor distribution in the joint variables (p,q) on this spacelike-transfer block.
* Wz tends to W0 at rate O(z^2) against **every Schwartz test in the joint (p,q) variables**. For example a test bounded by C(1+H_energy)^(-N) with N>12 suffices for the displayed conservative bound.
* The normalized kernel converges at rate O(z^2) in jointly polynomial-weighted Hilbert–Schmidt norms. A multiplying weight bounded by (1+H_energy)^(-N), N>6, suffices. For the full unamputated tensor, N>8 suffices.
* Multiplication by any bounded transfer test is compatible with these weighted statements; Schwartz external wavefunctions supply the necessary joint-energy decay.

**Scope limitation:** A Schwartz test of the transfer p-q alone does not suppress the common-energy direction p approximately q tending to infinity. The theorem does not say the transfer-smeared kernel is globally Hilbert–Schmidt without external energy weights. Nor does a result for this spacelike mixed block establish timelike-transfer, pair-creation, or every interacting particle-number sector. No extra edge-supported distributions are supplied or excluded by the bound alone; the prescribed positive-cut/Volterra construction selects the locally integrable coefficient used here.

## Independent scalar radius w and the canonical combined extension

For a second physical scalar radius w>=0, the spacelike mixed coefficient carries J0(bw). Since |J0(bw)|<=1 and |J0(bw)-1|<=b^2w^2/4,

\[
\|J_0(bw)K_z-K_0\|_{\rm pol}
\le\frac{\pi^3|\alpha|}{2\sqrt5}\sqrt{\frac23}\frac1D
\left[5000z^2E^2(1+z^2E^2)+2b^2w^2\right].
\]

Thus for 0<=z,w<=1 this is O(max(z,w)^2) with a fixed polynomial-energy/D majorant. The identical physical spectral-square-root map above proves the corresponding full-tensor statement, with only the extra (p0)^2 factor. In particular, no uniform bound on a boosted polarization is needed or used.

For joining with separately established timelike Volterra channels, any correction bounded by polynomial(energies) times z^6 or w^6 is automatically O(max(z,w)^2) on the same finite-radius square, and |J0|<=1 preserves it. The factors J0(bw), J0(tau z) differ from one by at most b^2w^2/4, tau^2z^2/4. Therefore these analytic estimates support a strong tempered-distribution boundary limit of a **canonical piecewise extension**, provided its open-channel formulas and spectral coefficients have been identified. They do not identify or rule out additional distributions concentrated on transfer-null surfaces; that is a separate epsilon-contour/Wightman identification problem. The word “strong” here can be made precise: each error is bounded by O(max(z,w)^2) times a fixed Schwartz seminorm, so convergence is uniform on bounded sets of Schwartz tests.

## Checks

Wolfram exact checks returned True for D^2-X^2=4b^2k^2, the differentiated B0 identity, and the universal polynomial inequality. The explicit rational angular identity for L_aG was separately checked with zero residual.

High-precision angular quadratures evaluated

\[
\frac{F_z-F_0}{z^2E^2(1+z^2E^2)}
\]

at five deliberately singular/unequal-mass regimes, with 70-digit working precision and 30-digit requested accuracy/precision:

| (a,b,k,z) | signed ratio |
|---|---:|
| (1,1,10^-4,0.3) | -1.83800285712e-9 |
| (10^-4,1,10^-4,1) | -0.00150063928294 |
| (1,10^-4,10^-4,1) | -0.00165533637667 |
| (10^-4,10^-4,1,1) | 1.06186266976 |
| (10,10,0.01,3) | -6.87082182605e-11 |

The corrected final run emitted no messages. An initial trial used the wrong sign in the second term of L_aG and was discarded; correcting it left the analytic absolute-value estimates unchanged. Numerical quadrature is a consistency test, not an interval-certified proof. No additional fresh subagent was available at this delegation depth; this note itself is the independent analytic subtask, and the parent should review the proof before promoting it to the main note.
