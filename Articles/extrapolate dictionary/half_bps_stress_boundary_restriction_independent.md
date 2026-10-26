# Independent boundary restriction analysis for the switched stress coefficient

## Result and remaining gap

The complete switched boundary coefficient has a directly provable local adiabatic restriction away from the exceptional stationary set

\[
E=\{p=0\}\cup\{q=0\}\cup\{p=q\}
 \cup\{p,q\ne0\text{ are parallel future null}
\}.
\]

This includes simple external-null strata with nonzero Gram discriminant and **also** generic positive-mass collinear timelike thresholds: at the latter the full boundary coefficient vanishes in an entire neighborhood in the nonstationary variables. No radial Volterra argument is needed.

The restriction at all of E is not proved here. A concrete nonzero boundary layer diverging as the inverse switch momentum occurs near soft transfer; thus pointwise regularity is false. Ordinary distributional differentiation of the complete scalar spectral distribution is also not the correct gravitational mass-raising operation: it adds explicit external-null delta contacts.

## 1. Independent momenta and the exact scalar boundary seed

Use signature \((-+++)\), \(s(k)=-k^2\), and external momenta

\[
(P,R,-Q),\qquad \Omega=P+R-Q.
\]

The stationary variables are \(P=p,Q=q,R=q-p\). Let

\[
x=s(P),\quad y=s(Q),\quad t=s(R),\qquad
\lambda(x,y,t)=(x-y-t)^2-4yt.
\]

Write \(C(K)=\mathbf1_{V_+}(K)\). For nonnegative input squared masses \(v,w\), the scalar retarded boundary integral is

\[
V_u^\sigma(v,w)=\frac1\pi\int_0^\pi
\frac{d\theta}{u-v-w+2\sqrt{vw}\cos\theta+i0\sigma}.
\tag{1}
\]

This follows by Hankel-transforming the two free \(J_0\) legs. It is a boundary distribution, not an absolutely convergent unregulated radial integral. With the scalar normalization of [the scalar calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman.md#L90-L112>), the stripped boundary seed is

\[
B=8\pi^6g\left[
 C(-R)C(Q)V_x^{\operatorname{sgn}P^0}(t,y)
 +C(P)C(Q)V_t^{\operatorname{sgn}R^0}(x,y)
 +C(P)C(R)V_y^{-\operatorname{sgn}Q^0}(x,t)
\right].
\tag{2}
\]

The full switched coefficient multiplies this by \(\widehat\chi(\Omega)\). Each term in (2) has two genuinely free positive-energy legs. No total-momentum delta was used in deriving it.

For positive radial masses \(a=\sqrt x,b=\sqrt y,\tau=\sqrt t\), a term whose output mass is \(a\) equals

\[
V_x^\sigma(y,t)=
\begin{cases}
 +\lambda^{-1/2},&a>b+\tau,\\
 -\lambda^{-1/2},&a<|b-\tau|,\\
 -i\sigma(-\lambda)^{-1/2},&|b-\tau|<a<b+\tau.
\end{cases}
\tag{3}
\]

These formulas are locally integrable boundary values in the independent positive masses. Their distributional derivatives, rather than pointwise derivatives alone, must be used at thresholds.

For \(P,Q\in V_+\), divide (2) by \(8\pi^6g\), calling the result \(S\). Then

\[
\boxed{
\begin{array}{ll}
R\text{ past timelike}:&S=-2\,\mathbf1_{b>a+\tau}/\sqrt\lambda,\\
R\text{ future timelike}:&S=-2\,\mathbf1_{a>b+\tau}/\sqrt\lambda,\\
R\text{ spacelike}:&S=-1/\sqrt\lambda.
\end{array}}
\tag{4}
\]

The two imaginary boundary values cancel **inside** the mass triangle. The two real boundary values cancel in the exterior region appropriate to stationary timelike kinematics. These cancellations hold as distributions through the corresponding positive-mass threshold, not only pointwise off it.

At stationarity and past \(R\), \(P=Q+(-R)\) gives \(a\ge b+\tau\). The anomalous chamber in (4) would instead require \(b>a+\tau\). Their closures can meet only if \(\tau=0\) and \(a=b\). If \(-R\) is nonzero null, \(s(Q+(-R))=s(Q)\) requires \(Q\cdot(-R)=0\), hence parallel null vectors (or a zero vector). If \(R=0\), \(P=Q\) can be massive. The future case is the exchange. Other nonstationary support outside \(P,Q\in V_+\) can approach the stationary support only through an external cone boundary.

Thus generic positive-mass timelike collinearity is not an exceptional restriction problem. The remaining anomalous chambers approach soft external legs or all-null collinear configurations.

## 2. The genuine gravitational differential formula

Define the polynomial mixed tensor

\[
N_{ij}(P;Q,R)=x^2\Pi_{ij,kl}(P)Q^kR^l.
\tag{5}
\]

Polynomiality refers to the expanded expression, not multiplication of distributions by the singular projector. With \(c_A=-P\cdot A\), it is

\[
N_{ij}=u_{(i}(Q)u_{j)}(R)
-\frac{c_Qc_R+xQ\cdot R}{3}(x\eta_{ij}+P_iP_j),
\quad u_i(A)=xA_i-c_AP_i.
\]

The switched divergence vertex and the two other insertions have this **same** tensor: transversality identifies \(\Pi RQ\) with \(\Pi(Q+\Omega)Q\). The radial identities are

\[
\partial_x^2J_0(u\sqrt x)=\frac{u^2}{4x}J_2(u\sqrt x)
=\frac{u^4}{32}f_2(u\sqrt x),
\qquad
\lim_{v\to0}v^{-4}G_{2,P}(v,u)=\frac{x^2}{2}\partial_x^2\mathscr R_P(0,u).
\tag{6}
\]

Consequently the gravitational boundary coefficient, before multiplication by \(\widehat\chi\), is

\[
\boxed{G_{ij}=-\frac{2\alpha\pi^6}{5}N_{ij}\left[
 C(-R)C(Q)\partial_x^2V_x^{\operatorname{sgn}P^0}(t,y)
 +C(P)C(Q)\partial_x^2V_t^{\operatorname{sgn}R^0}(x,y)
 +C(P)C(R)\partial_x^2V_y^{-\operatorname{sgn}Q^0}(x,t)
\right].}
\tag{7}
\]

Here all cone indicators are held fixed. On the strictly positive mass orthant this is also \(-\alpha N_{ij}\partial_x^2B/(20g)\), with an ordinary distributional derivative. At zero external mass that shorthand is not justified.

The prefactor follows independently from the middle source \(-\alpha\pi^6N u^4f_2/80\) and the factor 32 in (6). For the outer stress term, the two Wick contractions, the factor \(-\alpha/10\), scalar densities \((2\pi^3)^2\), and \(x^2/2\) in (6) give the same prefactor. This checks both the nonstationary tensor and normalization.

## 3. A local restriction theorem including simple null faces

**Theorem.** Fix a compact set of stationary momenta in \(\overline V_+^2\setminus E\). The all-insertion boundary distribution specified by (7) admits a continuous, locally Lipschitz \(\mathcal D'\)-valued trace as \(\Omega\to0\). For a plateau switch \(\chi_R(X)=\chi(X/R)\), \(\chi=1\) near zero,

\[
\widehat\chi_R(\Omega)G(p,q,\Omega)
\longrightarrow (2\pi)^4\delta^4(\Omega)G(p,q,0)
\tag{8}
\]

on tests localized in such a compact region. A local error bound is \(O(R^{-1})\) in a fixed finite test seminorm. This is not an all-null theorem.

**Proof.** At a stationary point with

\[
D^2=\lambda(s(p),s(q),s(q-p))=4[(p\cdot q)^2-s(p)s(q)]>0,
\]

shrink the neighborhood so \(\lambda\) is bounded away from zero. All terms in (7) are bounded analytic mass coefficients times free cone indicators. The output branches do not cross a radial threshold there. In particular there is no inverse external-mass pole hidden in (6): the expanded tensor (5) is polynomial and the analytic angular answer supplies its continuation. Moving \(\Omega\) translates the middle-leg cone wall \(R=q-p+\Omega\). The \(L^1\) measure of the symmetric difference in a compact set is \(O(|\Omega|)\), since the relevant nonzero null cone is a smooth hypersurface. The coefficients themselves change by \(O(|\Omega|)\). This proves the stated locally Lipschitz pairing bound, including points where an external leg is nonzero null.

The remaining stationary points outside E have \(D=0\), with \(p,q\) parallel massive and \(p\ne q\). All three masses are strictly positive. In a full neighborhood of such a point, the anomalous chamber in (4) is separated by a positive mass gap. Hence the full scalar boundary sum is the zero distribution there, including the physical mass-triangle threshold. Its mass derivative in (7) is also zero. This proves the local assertion at these collinear points.

A finite partition of unity proves the compact statement. Pair against the test and substitute \(v=R\Omega\); the finite first absolute moment of \(\widehat\chi(v)\), together with \(\int d^4v\,\widehat\chi(v)/(2\pi)^4=1\), proves (8) and the rate. Contributions outside a chosen small \(\Omega\)-neighborhood are rapidly suppressed for any fixed finite-order distributional extension there. The theorem neither constructs nor bounds an extension at E. ∎

The stationary density furnished by this proof is zero on timelike transfer and

\[
G_{ij}(p,q,0)=\frac{2\alpha\pi^6}{5}N_{ij}(p;q,q)\,
\partial_x^2\lambda(x,y,t)^{-1/2}
\]

on spacelike transfer, with \(x,y,t\) differentiated independently before imposing their stationary momentum relation. This is the boundary stress cut, now obtained from the nonstationary boundary integrals on the stated domain.

## 4. Why global distributional differentiation is not automatic

Already on a spacelike-transfer patch \(y>0,t<0\), the zero-extended stationary scalar reduced density is proportional to

\[
\theta(x)f(x),\qquad f(x)=-2g\lambda(x,y,t)^{-1/2}.
\]

An ordinary distributional mass derivative gives

\[
\partial_x^2[\theta(x)f(x)]
=\theta(x)f''(x)+f'(0)\delta(x)+f(0)\delta'(x),
\]

where

\[
f(0)=-\frac{2g}{y-t},\qquad
f'(0)=-\frac{2g(y+t)}{(y-t)^3}.
\tag{9}
\]

The tensor does not remove these terms:

\[
N_{ij}(p;q,q)\big|_{x=0}=\frac{(y-t)^2}{6}p_ip_j\ne0
\]

for a nonzero null \(p\). A factor \(x^2\) would annihilate these delta derivatives before TT projection, but subsequent multiplication by the singular projector is not defined by that observation. Therefore deriving the physical full distribution by differentiating the scalar *spectral distribution* produces extra null contacts and is false without an explicit alternative extension prescription. Equation (7), with cone indicators fixed, is the actual radial identity on its established domain.

## 5. Explicit unbounded soft-transfer boundary layer

Let \(\epsilon>0\) and take

\[
P=(1,0,0,0),\quad
Q=(\sqrt{(1+2\epsilon)^2+\epsilon^2},\epsilon,0,0),\quad
R=(-\epsilon,\epsilon/2,0,0).
\tag{10}
\]

Then \(a=1\), \(b=1+2\epsilon\), \(\tau=\sqrt3\epsilon/2\), \(b>a+\tau\), and \(\Omega=P+R-Q\to0\). Also \(N_{11}=\epsilon^2/3\). Thus (4) and (7) give

\[
\boxed{\lim_{\epsilon\downarrow0}\epsilon G_{11}
=\frac{28\alpha\pi^6}{507\sqrt{13}}\ne0.}
\tag{11}
\]

This is an actual nonzero laboratory tensor component at the complete boundary, not an amputated auxiliary singularity. It rules out a pointwise smooth restriction at \(p=q\). It does not rule out a distributional restriction: the shrinking four-dimensional soft-transfer volume can still suppress it.

## 6. Exact soft-transfer normal form and the remaining all-null gap

### 6.1 Uniform joint distribution estimate at massive soft transfer

There is more than a power count near \(p=q=P\) with \(P\) in a compact massive future region. Put \(u=q-p\), \(r=u+\Omega\), \(b=\sqrt y\), and

\[
w=\frac{x-y-t}{2b},\qquad Q_*=w^2-t,
\]
\[
H(w,r)=\frac{\mathbf1_{Q_*>0}}{\sqrt{Q_*}}
\left[1+\operatorname{sgn}(r^0)\operatorname{sgn}(w)\mathbf1_{t>0}\right].
\]

The exact combined scalar boundary seed and its genuine mass derivative are

\[
S=-\frac{H}{2b},\qquad
\boxed{\partial_x^2S=-\frac1{8b^3}\partial_w^2H.}
\tag{12}
\]

The derivative holds at fixed \(q,r\); the factor \(b\) is therefore fixed. Here \(H\) is a locally integrable distribution, homogeneous of degree \(-1\) in the five variables \((w,r)\). Thus \(\partial_w^2H\) has order at most two and degree \(-3\). This includes the intersections of \(t=0\) and \(Q_*=0\); no pointwise differentiation of a nonintegrable density is being substituted.

The map \((u,\Omega)\mapsto(w,\mathbf u,r)\) is a smooth local diffeomorphism. In the rest frame of \(P\), \(\partial w/\partial u^0=-1\) at \(u=r=0\). After \(u=\delta U,\Omega=\delta\omega\), the map to \((w/\delta,\mathbf U,r/\delta)\) and its inverse have uniform smooth bounds on fixed compacts as \(\delta\to0\). Moreover

\[
N(P;P+u,r)=N(P;u,r)
\]

is exactly bilinear in \((u,r)\). Combining this with (12) proves a uniform, order-two joint-distribution estimate of degree \(-1\) under the simultaneous normal scaling \((u,\Omega)\mapsto\delta(u,\Omega)\). This is an actual distribution estimate, not just a formal degree assignment.

A useful support improvement controls the annuli. In a sufficiently small massive neighborhood, every anomalous timelike chamber in (4) satisfies

\[
|u|\le C|\Omega|.
\tag{13}
\]

For example, for future \(r\), the anomaly requires \(a>b\). In the \(P\)-rest frame, \(b=a+u^0+O(|\mathbf u|^2)\), while future timelike \(r\) gives \(u^0+\Omega^0>0\) and \(|\mathbf u+\boldsymbol\Omega|<u^0+\Omega^0\). These imply \(|u|\le C|\Omega|+C|u|^2\), and the last term is absorbed. The past case is analogous.

Consequently, on rescaled annuli \(|U|\sim1\), \(|\omega|<\eta\) with sufficiently small fixed \(\eta\), the only surviving coefficient is the spacelike term and \(\lambda/\delta^2\ge c>0\) on its support. Its nonzero transfer-null wall is uniformly smooth. The coefficient is therefore a uniformly smooth \(\omega\)-valued distribution there. These two estimates supply the core and annular ingredients for the parent's dyadic soft-transfer restriction proof: the core scales as \(R^{-3}\), and a first-order annular estimate sums as \(O(R^{-1})\). This report does not present the complete Schwartz-tail bookkeeping and does not elevate this lemma to an independent all-null trace theorem.

Joint scaling degree alone would not suffice without the annular statement: a distribution concentrated on a surface tangent to \(\Omega=0\) can evade isotropic estimates through a thinner region \(|\Omega|\ll|u|\). Equation (13) and the lower bound on \(\lambda\) rule out precisely that obstruction in this massive soft-transfer model.

### 6.2 Soft outer legs with a massive companion cancel

The exceptional set in §3 was conservative. Near \(P=0\) with \(Q\) massive future, \(R\) is massive future too. The only possible pair of terms has anomalous support \(a>b+\tau\), separated from this neighborhood by a positive gap. If \(P\notin V_+\), both terms are absent. Thus the combined coefficient vanishes. Near \(Q=0\), \(P\) massive, the exchanged argument applies.

To check the soft endpoint rather than only the open mass interval, use the exact combined radial identity

\[
Y_0(\tau u)J_0(bu)+J_0(\tau u)Y_0(bu)
=\frac{H_0^{(1)}(\tau u)H_0^{(1)}(bu)
-H_0^{(2)}(\tau u)H_0^{(2)}(bu)}{2i}.
\]

The opposite retarded \(JJ\) terms cancel. The remaining large-radius phases are \(\pm(b+\tau)u\), never the small difference phase. The positive mass gap makes the Hankel transform analytic in the soft squared mass near zero (rotate the two Hankel contours in their decay directions); mass raising preserves this gap. Its zero value on the small positive-mass interval therefore extends through the endpoint without a supported delta. Hence the local restriction theorem extends across soft outer legs whose companion remains massive.

### 6.3 Genuine all-null strata remain

At finite-energy all-null collinearity, masses squared scale as \(\epsilon\), relative angles as \(\sqrt\epsilon\), \(N\sim\epsilon^2\), the differentiated seed as \(\epsilon^{-3}\), and \(dx\,dy\,d^2\text{angle}\sim\epsilon^3\). The resulting power is favorable but is not a proof.

At mass-triangle boundaries the differentiated kernels are finite-part distributions rather than locally integrable functions. A complete theorem must establish uniform finite-order estimates under these anisotropic blow-ups, including overlapping soft/all-null strata and the normal \(\Omega\) restriction. Pointwise domination of \(\lambda^{-5/2}\) is unavailable. The favorable powers alone cannot exclude a distribution concentrated on the remaining all-null set.

**Verified:** the real-mass chamber cancellation, the common mixed tensor and prefactor, the local restriction proof outside E, and the explicit null-contact obstruction are analytic. Wolfram checks gave zero residuals for the mass discriminant factorization and Bessel raising identity; the boundary jets (9) and nonzero limit (11) were evaluated exactly, without messages. Actual outputs: [mass identities](</Users/koishi/.dsh/research-results/session-98ae2534977d/2f71df357431-research-result.json>) and [soft-transfer example](</Users/koishi/.dsh/research-results/session-98ae2534977d/2f98ad759791-research-result.json>).

**Scope:** the explicitly switched reduced TT tree coefficient and common retarded radial prescription of [the switching analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switching.md>). No gauge-invariant finite-switch completion is asserted. No existing note was changed. The parent independently derived the same mass-triangle support and identified the same favorable scaling; a separate fresh subagent could not be started from this delegation depth.

**Not proved:** restriction at E, a globally defined normal trace of (7) there, uniform regulator removal at those strata, or equality of every switching/contour prescription.
