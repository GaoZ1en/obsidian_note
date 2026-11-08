# Independent round23: the TT stress–scalar vacuum coefficient

## Result and proof scope

The physical all-insertion calculation, not continuation of a spacelike particular solution, gives for strictly timelike transfer

\[
M_z^e=-\frac{8\alpha Q}{a^2}\mathcal L_a\mathcal A_{\tau;a,b}(z)
=-\frac{8\alpha Q}{a^2}\int_0^zdu\,R_{\tau^2}(z,u)u^2J_2(au)J_0(bu),
\qquad Q=e^{ij}q_iq_j,
\]

where \(\mathcal L_a=\partial_a^2-a^{-1}\partial_a\), holding \(b,\tau,Q\) fixed. This holds in both future and past timelike transfer sectors. Here

\[
\mathcal A_{\tau;a,b}(z)=\frac1\pi\int_0^\pi
\frac{J_0(zC_\theta)-J_0(\tau z)}{\tau^2-C_\theta^2}\,d\theta,
\qquad C_\theta^2=a^2+b^2-2ab\cos\theta.
\]

The quotient has removable zeros and is entire in the squared masses after angular integration. Positive-mass collinear thresholds therefore cause no singularity in the **combined** answer. The actual TT amplitude vanishes at exact positive-mass collinearity, where \(Q=0\); the coefficient divided by \(Q\) remains finite.

The nonlinear boundary stress response, derived below, is indispensable for future timelike transfer. For past timelike transfer the right scalar correction supplies the outer term. Both supply exactly the standing-wave piece missing from continuation of the spacelike particular solution.

The derivation below proves the open-channel physical coefficient and gives a regular, polynomially bounded combined extension. The known boundary Wightman cut, together with an exact boundary-subtracted radial identity, fixes its edge completion. It does **not**, by itself, prove regulator-independent convergence of every uncombined gravitational adiabatic/switching family. Individual differentiated homogeneous terms are not locally integrable at a collinear threshold; scalar domination estimates cannot simply be differentiated.

## Conventions and dynamical nonlinear stress

Use the project conventions: \(\eta=(-,+,+,+)\), \(s(p)=(p^0)^2-|\mathbf p|^2\), \(p,q\in V_+\), \(k=p-q\), \(a^2=s(p),b^2=s(q)\), \(\alpha=2\sqrt{10}/N\), and \(C_0=2\pi^2\). The stripped ordered coefficient is

\[
\widetilde W_e(p,q;z)=\rho_{\widehat T}(p)\rho_O(q)M_z^e,
\quad \rho_{\widehat T}=\pi^3a^4/160,\quad\rho_O=2\pi^3.
\]

Work in anchored source-free FG gauge and the logfree BF branch. The free physical metric is \(\gamma_0=\alpha z^4f_2(az)\widehat T_0\), \(f_2(t)=8J_2(t)/t^2\). The TT terms in the action are

\[
S_{\gamma,2}=-\frac{\ell^3}{8\kappa^2}\int dz\,d^4x\,z^{-3}(\partial\gamma^{TT})^2,
\qquad S_{\gamma UU}=\frac1{2C_0}\int dz\,d^4x\,z\gamma^{ij}\partial_iU\partial_jU.
\]

They imply

\[
L_{2,p}\gamma^{TT}_{ij}=-\beta z^4\Pi^{(2)}_{ij,kl}(p):\partial^kU_0\partial^lU_0:,
\quad L_{2,p}=\partial_z^2-3z^{-1}\partial_z+s(p),
\quad\beta=\frac{2\kappa^2}{C_0\ell^3}=\frac4{N^2}.
\]

Let \(G_{2,p}^{\rm ret}\) invert \(L_{2,p}\) with measure \(u^{-3}du\). Its timelike kernel is

\[
G_{2,p}^{\rm ret}(v,u)=\frac\pi2(vu)^2
\left[J_2(av_<)Y_2(av_>)-i\operatorname{sgn}(p^0)J_2(av)J_2(au)\right].
\]

The necessary quadratic boundary insertion is therefore

\[
\boxed{\widehat T^{TT}_{1,ij}(p)=
-\frac\alpha{10}\lim_{v\to0}v^{-4}\int_0^\infty du\,u\,
G_{2,p}^{\rm ret}(v,u)\Pi^{(2)}_{ij,kl}(p):\partial^kU_0\partial^lU_0:(u,p).}
\]

This is a state/vacuum response, not a freely adjustable local boundary \(:OO:\) term. It is the scalar-induced normalizable TT metric response in the holographic stress. Pure-trace BF boundary completions vanish under the stated TT contraction; this calculation does not supply longitudinal/trace Ward contacts.

At future timelike \(p\),

\[
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)
=\frac{\pi a^2u^2}{16}[Y_2(au)-iJ_2(au)].
\]

The scalar retarded inverse \(\mathscr R_r\) uses measure \(u\,du\) and is the kernel specified in the scalar vacuum-contour precedent. Precisely,

\[
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)
=\frac{a^2}{8}\mathcal L_a\mathscr R_p(0,u).
\]

Thus the graviton mass derivative is an identity of the dynamical retarded kernels; it is not inferred by continuing a final spacelike answer.

## All surviving insertions

Define

\[
V^\sigma_{t;m,n}(z)=\frac1\pi\int_0^\pi
\frac{J_0(z\sqrt{m^2+n^2-2mn\cos\theta})}
{t^2-m^2-n^2+2mn\cos\theta+i0\sigma}\,d\theta.
\]

The middle scalar correction always gives

\[
M_{\rm mid}=-\frac{8\alpha Q}{a^2}\mathcal L_a V^{-\operatorname{sgn}(k^0)}_{\tau;a,b}(z)
\]

for timelike \(k\). Its source is \(-8\alpha Q u^2J_2(au)J_0(bu)/a^2\).

For future \(k\), the stress insertion is expanded as well. There are two scalar Wick contractions; \(e^{ij}k_iq_j=-Q\), and the derivative factors make their combined numerator \(+2Q\). Since \(\rho_O(k)/\rho_{\widehat T}(p)=320/a^4\), this gives

\[
M_{\rm outer,+}=-\frac{4\pi\alpha Q}{a^2}J_0(\tau z)
\int_0^\infty du\,u^3[Y_2(au)-iJ_2(au)]J_0(bu)J_0(\tau u)
=-\frac{8\alpha Q}{a^2}J_0(\tau z)\mathcal L_a V^+_{a;b,\tau}(0).
\]

For past \(k\), this stress Wick contraction has no support. Instead the right boundary scalar correction gives

\[
M_{\rm outer,-}=-\frac{8\alpha Q}{a^2}J_0(\tau z)\mathcal L_a V^-_{b;a,\tau}(0).
\]

The imaginary \(JJJ\) pieces cancel between middle and outer insertion before radial integration, using a common radial vertex regulator. Derivative interactions have already been included through the action and equations above.

The physical thresholds are

\[
k\in V_+:a\ge b+\tau,\qquad -k\in V_+:b\ge a+\tau,
\quad D^2=[(a+b)^2-\tau^2][(a-b)^2-\tau^2].
\]

In either open sector, the middle boundary resolvent is \(-1/D\), and the surviving outer boundary resolvent is \(+1/D\). Consequently

\[
M_z=-\frac{8\alpha Q}{a^2}\mathcal L_a
\left[V_{\tau;a,b}(z)+\frac{J_0(\tau z)}D\right]
=-\frac{8\alpha Q}{a^2}\mathcal L_a\mathcal A_{\tau;a,b}(z).
\]

The mandatory homogeneous term is explicitly

\[
\boxed{M_{\rm hom}=-64\alpha Q\frac{D^2+6b^2\tau^2}{D^5}J_0(\tau z).}
\]

It cancels the continued particular solution's nonzero boundary value. It is not legitimate to impose an outgoing condition on the complete Wightman matrix element after dropping this outer term.

For spacelike transfer only the middle Wick term survives; the retarded inverse itself becomes the regular elliptic inverse and gives the established spacelike amplitude. Thus the unified boundary-conditioned answer for every transfer is

\[
\boxed{M_z^e=h_{s(k)}(z)M_0^e
-\frac{8\alpha Q}{a^2}\int_0^zdu\,R_{s(k)}(z,u)u^2J_2(au)J_0(bu),}
\]

where \(M_0\) is the independent CFT cut density, supported on spacelike transfer. This formula alone is not a new all-regulator vacuum existence theorem.

### Finite right scalar radius

If the right scalar is also at radius \(w\), while the stress remains on the boundary, the physical all-insertion answer is

\[
M_+(z,w)=-\frac{8\alpha Q}{a^2}J_0(bw)\mathcal L_a\mathcal A_{\tau;a,b}(z),
\]
\[
M_-(z,w)=-\frac{8\alpha Q}{a^2}\left[J_0(bw)\mathcal L_a\mathcal A_{\tau;a,b}(z)
+J_0(\tau z)\mathcal L_a\mathcal A_{b;a,\tau}(w)\right].
\]

In the future sector every surviving term has the free right factor. In the past sector the right scalar retarded insertion must itself be retained; its subtraction supplies the second finite Volterra term. All mass derivatives hold \(b,\tau\) fixed. For spacelike transfer the established amplitude simply acquires \(J_0(bw)\).

## Thresholds, null edges, and a useful global bound

All outer terms factor \(h_{s(k)}(z)\) because their line incident on the middle insertion is free. The exact retarded identity

\[
\mathscr R_r(z,u)-h_{s(r)}(z)\mathscr R_r(0,u)
=\mathbf1_{u<z}R_{s(r)}(z,u)/u
\]

therefore gives \(W(z)-h_{s(k)}(z)W(0)\) as a finite radial integral before the large-radius vertex integration. Once the known boundary Wightman distribution fixes \(W(0)\), this supplies the edge-completed answer without taking separately divergent homogeneous limits.

A sharper compact-square identity, independently checked here by expanding the source and integrating the two beta integrals, is

\[
\boxed{M_z=-\frac{\alpha Q z^6}{4}\int_0^1dt\int_0^1dv\,(tv)^2
f_2(az\sqrt{tv})J_0(bz\sqrt{tv})
J_0(\tau z\sqrt{(1-t)(1-v)}) .}
\]

For a source monomial \(u^{4+2n}\), expansion of the last Bessel function gives the squared beta factor \([(n+2)!\,l!/(n+l+3)!]^2\); its \(l!^2\) cancels the Bessel coefficient. The resulting series is exactly the radial inverse recurrence. Entire convergence then establishes the identity at finite masses and radius. Since \(|f_2|,|J_0|\le1\) for real arguments,

\[
\boxed{|M_z|\le |\alpha Q|z^6/36,\qquad
|M_+(z,w)|\le|\alpha Q|z^6/36,\qquad
|M_-(z,w)|\le|\alpha Q|(z^6+w^6)/36.}
\]

This proof includes zero masses and exact resonances. It provides the strongest bound needed for the combined timelike coefficient.

A weaker independent bound, proved directly from the divided difference and useful as a derivative check, is

\[
\boxed{\left|\frac8{a^2}\mathcal L_a\mathcal A_{\tau;a,b}(z)\right|
\le\frac{z^6}{36}+\frac{(a+b)^2z^8}{192}+\frac{(a+b)^4z^{10}}{14400}}
\]

for all nonnegative masses, with the \(a=0\) value defined by its regular limit. To prove it put \(F_z(x)=J_0(z\sqrt x)\) and

\[
G(x)=-\int_0^1F'_z(\tau^2+t(x-\tau^2))dt.
\]

Then \(\mathcal A\) is the two-dimensional angular average of \(G(|a\mathbf e_1-b\mathbf n|^2)\), an even smooth function \(H(a)\). The bounds

\[
|G^{(n)}|\le\frac{z^{2n+2}}{4^{n+1}(n+1)!(n+1)},\qquad
|\mathcal L_aH|/a^2\le\tfrac13\sup_{0\le x\le a}|H''''(x)|
\]

and the fourth derivative chain rule give the displayed constants. No threshold denominator remains.

For delta-normalized external states \(\sqrt{\rho_T\rho_O}=\pi^3a^2/(4\sqrt5)\), the factor \(a^2Q=D^2e_{nn}/4\) removes the apparent outer-null polarization divergence. For fixed-coordinate tensor components, \(a^4\Pi^{(2)}_{ij,kl}q^kq^l\) is polynomial. Thus the timelike combined kernel is a regular tempered distribution with polynomial growth and an \(O(z^6)\) boundary limit on Schwartz tests. The bound also covers collinear and outer-null strata.

One must not use the scalar bound \(|V|\le1/D\) after mass differentiation: the separate stress homogeneous term behaves like a quadrupole times \(D^{-3}\) at positive-mass collinearity and requires a distributional finite-part prescription. Its cancellation is essential. On positive-mass timelike threshold neighborhoods, the opposite scalar resolvent boundary values cancel as mass distributions even through their adjacent absorption interval; mass differentiation preserves this cancellation before restriction to the physical channel. At the intersections with null transfer, the independently known boundary cut and the boundary-subtracted identity specify the extension. An arbitrary extra edge atom is not part of that specified coefficient.

### Genuine common time shifts near a positive-mass collinear threshold

A local refinement is possible, but its constants are not uniform at all null edges. In the future sector let

\[
A^2=a^2+2i\epsilon p^0-\epsilon^2,\qquad
T^2=\tau^2-2i\epsilon k^0-\epsilon^2,
\]

and write \(\lambda(x,y,z)=x^2+y^2+z^2-2xy-2xz-2yz\). For the radial limiting-absorption prescription with the real external TT contraction held fixed, the exact regulated homogeneous terms are

\[
H_{\rm out}=-64\alpha Q\frac{A^4}{a^4}
\frac{\lambda(A^2,b^2,\tau^2)+6b^2\tau^2}{\lambda(A^2,b^2,\tau^2)^{5/2}},
\]
\[
H_{\rm mid}=64\alpha Q
\frac{\lambda(a^2,b^2,T^2)+6b^2T^2}{\lambda(a^2,b^2,T^2)^{5/2}}.
\]

The outer factor \(A^4/a^4\) must not be dropped at finite regulator: the complex graviton output mass differs from the real stress spectral mass. On compact positive-mass threshold neighborhoods it differs from one by \(O(\epsilon)\). For relative velocity distance \(r\) from collinearity, \(Q=O(r^2)\), each Gram denominator has magnitude bounded below by \(c(r^2+\epsilon)\), and their difference is \(O(\epsilon r+\epsilon^2)\). Indeed its linear-in-\(\epsilon\) coefficient is

\[
8i[(q\mathbin{\cdot}k)q^0-b^2k^0],
\]

which vanishes at collinearity. The denominator-difference contribution is bounded in local \(L^1\) by a constant times

\[
\epsilon\int_0^R\frac{r^5\,dr}{(r^2+\epsilon)^{7/2}}=O(\sqrt\epsilon),
\]

and numerator/prefactor differences contribute \(O(\epsilon|\log\epsilon|)\) or less. Thus the radial common time-shift boundary cancellation has a local direct estimate at generic positive-mass collinear thresholds. A fully analytic tensor shift also changes the TT projector: since \(e p=0\), its contracted numerator differs by \(O(\epsilon r)+O(\epsilon^2)\), not necessarily by \(Q\) times a smooth multiplier. These errors obey the same local \(O(\sqrt\epsilon)\) estimate when the external masses are bounded away from zero. This does not close the outer-null, zero-transfer, or all-zero intersections; constants degenerate there. It should not be promoted to a global uncombined-contour theorem.

## Checks

The small-radius answer is

\[
\frac{M_z}{\alpha Q}=-\frac{z^6}{36}
+\frac{3a^2+9b^2+\tau^2}{2304}z^8+O(z^{10}).
\]

The independent script [half_bps_stress_timelike_independent.wl](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent.wl>) checks the Bessel mass derivative, homogeneous derivative, radial series, fourth-derivative chain rule and bound constants. Three all-leg angular-plus-homogeneous evaluations agree with finite Volterra integrals to approximately 50 decimal places. Exact collinear evaluations of the combined coefficient are finite. Three compact-square quadratures agree with the Volterra values to better than \(2\times10^{-16}\); these numerical checks are separate from the analytic beta-series proof. The run emitted no Mathematica messages and exited successfully. Complete output is saved in [half_bps_stress_timelike_independent_results.txt](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent_results.txt>).

**Verified:** direct scalar-induced TT stress response and normalization; the surviving Wick terms and their imaginary cancellation; both timelike open-channel amplitudes and homogeneous pieces; finite combined thresholds; polynomial timelike bounds and the small-radius coefficient.

**Assumptions:** the formal one-vertex free-vacuum/retarded prescription, common vertex regulation, Gaussian normal ordering, the specified anchored FG and logfree branch, and the established independent boundary Wightman cut for edge completion.

**Not established here:** a standalone convergence theorem for every uncombined gravitational switching family, arbitrary-state equivalence, the full mixed Ward/contact completion, interacting positivity, or a common nonperturbative operator domain. No existing report was modified.
