# Independent finite-switch boundary stress–scalar–scalar derivation

## Result and status

At first reduced-TT gravitational tree order, all three boundary insertions have a common polynomial tensor numerator. Their scalar mass kernels and positive-energy supports are different. **The complete boundary sum does not cancel threshold singularities at arbitrary finite real switch momentum.** An explicit fixed-switch-momentum counterexample is given below. In contrast, generic positive-mass physical collinear thresholds have a whole neighborhood in which the summed boundary kernel vanishes identically, even before setting the switch momentum to zero.

This report derives the common-cutoff formula and the uncut mass kernels on their nondegenerate distributional domains. It does **not** establish distributional continuity at every exceptional zero-switch-momentum stratum. No previously existing note was edited.

Conventions were read from [the switched equations](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switching.md>) and [the Wightman construction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>). This is an independent derivation, followed by comparison of its principal findings with the parent calculation. There was no further independent subagent available at this delegation depth.

## 1. Definitions and the actual retarded prescription

Use signature \(\eta=(-,+,+,+)\), Fourier phase \(e^{ik_i x^i}\), and \(s(k)=-k\cdot k\). The ordered boundary product is \(\langle\widehat T_{ij}(x_1)O(x_2)O(x_3)\rangle\), with external momenta

\[
 (p,r,-q),\qquad r=\Omega+q-p,\qquad p+r-q=\Omega.
\]

Every integration uses \(d^4k/(2\pi)^4\). A common real compact switch contributes \(\widehat\chi(\Omega)\). Introduce a common radial vertex cutoff \(\beta(u)\), initially supported away from infinity, and take the scalar logfree boundary branch. Set

\[
 x=s(p),\quad y=s(q),\quad z=s(r),\qquad C_k=\mathbf1_{k\in V_+},\qquad
 \alpha=2\sqrt{10}/N.
\]

Here \(z\) is a **squared momentum mass**, not an external radial coordinate. All three external insertions in this report are at the boundary.

The scalar time-retarded radial inverse, with measure \(u\,du\), has spectral representation

\[
 \mathscr R_k(0,u)=\int_0^\infty d\mu\,\mu\,
 \frac{J_0(\mu u)}{s(k)-\mu^2+i0\,k^0}.
 \tag{1}
\]

The notation \(i0\,k^0\) means the boundary value of the genuine retarded inverse, equivalently \((k^0+i\epsilon)^2-|\mathbf k|^2-\mu^2\) as \(\epsilon\downarrow0\). At timelike output with \(t=s(k)>0\),

\[
 \mathscr R_k(0,u)=\frac\pi2\left[Y_0(\sqrt t\,u)-i\operatorname{sgn}(k^0)J_0(\sqrt t\,u)\right].
 \tag{2}
\]

At spacelike output this is \(-K_0(\sqrt{-t}\,u)\). The retarded outputs of the middle, stress, and right insertions are respectively \(r,p,-q\). There is no finite-frequency shift of only a denominator, and no assumption of energy conservation at finite \(\Omega\).

For two nonnegative input squared masses define

\[
 H_{\beta,k}(t;u_1,u_2)=\int_0^\infty d\ell\,\ell\,\beta(\ell)
 \mathscr R_k(0,\ell)J_0(\sqrt{u_1}\ell)J_0(\sqrt{u_2}\ell),
 \qquad t=s(k).
 \tag{3}
\]

The mass derivatives used below act on this kernel with the other squared masses and the retarded energy sign held fixed. They do not differentiate spectral cone indicators, the switch, or the tensor numerator.

## 2. Common tensor and all three insertions

Write \(v=q+\Omega=p+r\). The common tensor is

\[
 \mathcal N_{ij}=x^2\Pi_{ij,kl}(p)q^kv^l.
 \tag{4}
\]

It has the polynomial continuation

\[
 \mathcal N_{ij}=U_{(i}(q)U_{j)}(v)
 -\frac{c_qc_v+xq\cdot v}{3}(x\eta_{ij}+p_ip_j),
 \quad U_i(w)=xw_i-c_wp_i,\quad c_w=-p\cdot w.
 \tag{5}
\]

Thus \(p^i\mathcal N_{ij}=\eta^{ij}\mathcal N_{ij}=0\), with symmetrization of weight \(1/2\). Its polynomial character does not imply regularity of the remaining scalar factor at a null output.

The switched scalar equation is

\[
 \mathcal DU_{1,\chi}=\beta\partial_i(\chi\gamma_0^{ij}\partial_jU_0),
 \tag{6}
\]

and the stress response projects \(\chi\partial U\partial U\) with the **output** \(\Pi(p)\). In particular, the switch-gradient term in (6) is retained.

### Middle scalar insertion

The free contractions require \(p,q\in V_+\). At the vertex, the divergence and scalar derivative produce \(-r_iq_j\). Transversality removes \(-p\) from \(r=q+\Omega-p\), producing \(-v_iq_j\). Since

\[
 \rho_{\widehat T}\rho_O=\frac{\pi^6x^2}{80},\qquad
 u^4f_2(\sqrt x\,u)=\frac8x\mathcal L_{\sqrt x}J_0(\sqrt x\,u),
 \quad \mathcal L_a=\partial_a^2-a^{-1}\partial_a=4x\partial_x^2,
\]

the middle contribution is

\[
 W^{(2)}_{ij}=-\frac{2\alpha\pi^6}{5}\widehat\chi\,
 \mathcal N_{ij}\,C_pC_q\,
 \partial_x^2H_{\beta,r}(z;x,y).
 \tag{7}
\]

### Nonlinear boundary stress insertion

The two scalar Wick contractions require \(-r,q\in V_+\), not \(p\in V_+\). Their differentiated numerator is

\[
 2r^{(k}q^{l)},\qquad \Pi(p)rq=\Pi(p)vq.
\]

The boundary metric Green kernel obeys, for positive timelike \(p\),

\[
 \lim_{v_b\to0}v_b^{-4}G^{\mathrm{ret}}_{2,p}(v_b,u)
 =\frac{x}{8}\mathcal L_{\sqrt x}\mathscr R_p(0,u)
 =\frac{x^2}{2}\partial_x^2\mathscr R_p(0,u).
 \tag{8}
\]

The same identity continues on nondegenerate retarded domains; its null extension needs the qualification in §7. Combining \(-\alpha/10\) from the metric response, the two Wick contractions, and \(\rho_O^2=4\pi^6\), one obtains

\[
 W^{(1)}_{ij}=-\frac{2\alpha\pi^6}{5}\widehat\chi\,
 \mathcal N_{ij}\,C_{-r}C_q\,
 \partial_x^2H_{\beta,p}(x;y,z).
 \tag{9}
\]

The switch must be inside the projector for this formula: replacing \(\Pi(p)\) by a projector on the unswitched scalar-pair momentum would not give (4).

### Right scalar insertion

The surviving free contractions require \(p,r\in V_+\), not \(q\in V_+\). The free scalar momentum at the vertex is \(-r\), and the output is \(-q\). The vertex is therefore \(-q_ir_j\), again reducing to \(-q_iv_j\). Hence

\[
 W^{(3)}_{ij}=-\frac{2\alpha\pi^6}{5}\widehat\chi\,
 \mathcal N_{ij}\,C_pC_r\,
 \partial_x^2H_{\beta,-q}(y;x,z).
 \tag{10}
\]

Equations (7), (9), and (10) are the full common-cutoff answer. There is no extra factor of two in a scalar insertion; the stress insertion has exactly two Wick contractions.

## 3. Explicit uncut scalar mass kernel

Bessel addition gives

\[
 J_0(\sqrt u\,\ell)J_0(\sqrt v\,\ell)
 =\frac1\pi\int_0^\pi d\theta\,
 J_0(\ell\sqrt{u+v-2\sqrt{uv}\cos\theta}).
\]

Using the retarded spectral inverse (1) gives the uncut seed

\[
 H_\sigma(t;u,v)=\frac1\pi\int_0^\pi
 \frac{d\theta}{t-u-v+2\sqrt{uv}\cos\theta+i0\sigma},
 \quad \sigma=\operatorname{sgn}(k^0).
 \tag{11}
\]

Let \(A=t-u-v\), \(B=2\sqrt{uv}\), and \(\lambda=A^2-B^2\). For strictly positive input masses,

\[
 H_\sigma=
 \begin{cases}
  \operatorname{sgn}(A)/\sqrt\lambda,&\lambda>0,\\
  -i\sigma/\sqrt{-\lambda},&\lambda<0.
 \end{cases}
 \tag{12}
\]

The canonical threshold value is the distributional boundary value

\[
 H_\sigma=[\sqrt{A+i0\sigma-B}\sqrt{A+i0\sigma+B}]^{-1},
 \tag{13}
\]

with the principal square roots. Formula (12) is not a prescription to discard the threshold distributions generated by differentiating (13).

All legs share

\[
 \lambda=(x-y-z)^2-4yz=(z-x-y)^2-4xy.
\]

Consequently the uncut scalar factor is

\[
 \boxed{\mathcal K=
 C_pC_q\partial_x^2H_{\operatorname{sgn}r^0}(z;x,y)
 +C_{-r}C_q\partial_x^2H_{\operatorname{sgn}p^0}(x;y,z)
 +C_pC_r\partial_x^2H_{-\operatorname{sgn}q^0}(y;x,z),}
 \tag{14}
\]

and

\[
 \boxed{W_{ij,\chi}=-\frac{2\alpha\pi^6}{5}\widehat\chi(\Omega)
 \mathcal N_{ij}\mathcal K.}
 \tag{15}
\]

At a nondegenerate positive-mass threshold, these are well-defined mass boundary values pulled back to the full momenta. This statement does not by itself prove a unique extension through simultaneous zero masses and critical threshold intersections.

## 4. Exact cancellation and noncancellation regions

First restrict to the strict sector \(p,q\in V_+\), and write \(a=\sqrt x,b=\sqrt y,c=\sqrt z\) when \(r\) is timelike. Before the mass derivatives, define the two surviving scalar seeds' sum \(S\).

* If \(r\) is spacelike, only the middle insertion contributes:

\[
 S=-1/\sqrt\lambda.
 \tag{16}
\]

* If \(r\in V_+\), the middle and right insertions give

\[
 S=-\frac{2\mathbf1_{a>b+c}}{\sqrt\lambda}.
 \tag{17}
\]

* If \(-r\in V_+\), the middle and stress insertions give

\[
 S=-\frac{2\mathbf1_{b>a+c}}{\sqrt\lambda}.
 \tag{18}
\]

These formulas include the canonical locally integrable square-root boundary seed before differentiation. In the triangle region \(\lambda<0\), the imaginary parts cancel exactly. In (17)–(18), the gravitational kernel is the corresponding \(\partial_x^2S\) within a fixed strict cone sector. It is generally a finite-part distribution, not an ordinary locally integrable function.

For completeness, in the triangle region all three masses are positive. The total undifferentiated imaginary seed is

\[
 -\frac{i}{\sqrt{-\lambda}}\big[
 C_pC_q\operatorname{sgn}r^0+C_{-r}C_q\operatorname{sgn}p^0
 -C_pC_r\operatorname{sgn}q^0\big].
 \tag{19}
\]

It need not vanish outside \(p,q\in V_+\). For \(p,r\in V_-\), \(q\in V_+\), it is \(+i/\sqrt{-\lambda}\); for \(p,r\in V_+\), \(q\in V_-\), it is \(-i/\sqrt{-\lambda}\). These sectors are allowed at finite switch momentum. They cannot approach \(\Omega=0\) on a nonzero-energy compact set because \(\Omega=p+r-q\) is then a sum of three momenta of the same time orientation.

## 5. Explicit fixed-Ω threshold counterexample

Take

\[
 \Omega=(2,-1,1,0),\quad q=(\sqrt2,1,0,0),\quad
 p=(a,0,0,0),\quad r=(2+\sqrt2-a,0,1,0).
 \tag{20}
\]

Then \(r=\Omega+q-p\) for every \(a\). At \(a=2\),

\[
 (x,y,z)=(4,1,1),\quad p,q,r\in V_+,\quad
 \lambda=0,\quad \mathcal N_{12}=8.
\]

Moreover,

\[
 \left.\frac{d\lambda}{da}\right|_{a=2}=16(1+\sqrt2)>0.
\]

For \(a>2\) sufficiently close to 2, (17) gives \(S=-2/\sqrt\lambda\); immediately on the triangle side, \(S=0\). Locally the seed is \(-2\lambda_+^{-1/2}\). Its second mass derivative is a nonzero threshold finite part. On the open \(\lambda>0\) side,

\[
 \partial_x^2\lambda^{-1/2}
 =\frac{2\lambda+12yz}{\lambda^{5/2}}.
 \tag{21}
\]

The tensor numerator is nonzero at the threshold, so it cannot remove this singularity. A compact switch can be chosen with \(\widehat\chi(2,-1,1,0)\ne0\). This disproves finite-real-\(\Omega\) all-threshold cancellation for the complete boundary coefficient, not merely for a separated diagram.

## 6. What remains near Ω=0

At \(\Omega=0\), \(r=q-p\). For \(p,q\in V_+\): if \(r\in V_+\), reverse triangle gives \(b\ge a+c\); if \(-r\in V_+\), it gives \(a\ge b+c\). Therefore neither anomalous chamber (17) nor (18) is present. The stationary open timelike boundary answer is zero; the spacelike seed is (16).

At a generic positive-mass collinear point with \(a\ne b\), the sign of \(r^0\) and the identity of the largest mass are stable in a full finite-\(\Omega\) neighborhood. Equations (17)–(18) show that the all-leg seed and all its mass derivatives are identically zero there. Such thresholds need no cancellation estimate between separately divergent gravitational terms.

The neighborhoods degenerate at:

1. **Zero transfer:** \(r=0\), \(p=q\), including strictly positive outer mass. This is not restricted to the total soft origin.
2. **Collinear outer-null strata:** \(p,q\) future null on the same ray, with the possible vanishing of one or more momenta. These contain intersections of cone support changes and mass thresholds.
3. **The total soft origin:** finite-switch sectors outside the stationary outer future cones, including the nonzero imaginary sectors in (19), can collapse here.

The first two are precisely where the anomalous mass chambers can accumulate on stationary support. Generic points with one outer momentum zero and the other strictly timelike are not automatically anomalous: the other time orientations can remain stable and make the sum vanish in a neighborhood. A proof should use the actual support geometry, not merely declare every zero mass singular.

A useful but unproved estimate target is the positive-outer-mass zero-transfer face. In a fixed timelike rest-frame patch for \(p\), the anomalous chamber forces \(r=O(|\Omega|)\). Under \(r=\epsilon R,\Omega=\epsilon\omega\),

\[
 \mathcal N=O(\epsilon^2),\qquad \lambda=O(\epsilon^2),\qquad
 \partial_x^2H=O(\epsilon^{-3}),\qquad d^4r=\epsilon^4d^4R.
\]

Thus a formal homogeneous-distribution scaling suggests an integrated \(O(\epsilon^3)\) anomaly. Uniform control of the finite-part pullbacks and their angular degeneracies is still required; dimensional counting is not a distributional convergence proof.

## 7. Distribution and null-projector qualifications

The mass derivative in (14) is not an instruction to differentiate the full momentum distribution, including its cone indicators. It differentiates the radial seed at fixed other masses and retarded energy sign. Moving it outside a momentum integral without the corresponding change of variables and boundary terms is invalid.

There is also an output-projector issue absent from stationary free-TT contractions. At finite \(\Omega\), the stress insertion has support \(C_{-r}C_q\) with unrestricted output \(p\). The projector \(\Pi(p)\) on the nonconserved switched source has null denominators. Away from \(s(p)=0\), the cancellation producing (5), (8), and (15) is an algebraic identity. Across that null surface one must retain a specified retarded tensor-propagator extension, or define the extension through the polynomial tensor multiplying the retarded mass-derivative kernel. Multiplying an unspecified real \(1/s(p)^2\) distribution by a separately singular retarded kernel is not a definition.

In particular, at finite radial cutoff,

\[
 \mathscr R_p(0,u)\sim\tfrac12\log(-s(p)-i0p^0)+\text{less singular terms},
\]

so \(\partial_x^2\mathscr R_p\) itself has null poles. A polynomial numerator does not prove all-null continuity. The stated reduced-TT switched construction is not a finite-switch diffeomorphism-invariant completion, and no Ward identity of such a completion has been used to delete these terms.

## Verification record

**Analytically verified:** all three momentum routings, retarded signs, Wick factors, support factors, switch-gradient contribution, placement of the stress projector, common coefficient, mass-kernel boundary values, triangle imaginary cancellation, anomalous chambers, and the fixed-\(\Omega\) counterexample.

**CAS verified with Wolfram:** \(\mathcal L_aJ_0(au)=u^2J_2(au)\); equation (21); masses and numerator \(\mathcal N_{12}=8\) for the threshold example; equality of projector and polynomial numerator for that example; zero transverse and trace residuals. The actual kernel returned no messages. [Saved actual output](</Users/koishi/.dsh/research-results/session-f3ba4e7cd768/1f2ab78ba179-research-result-readable.txt>) records the checks. A [second exact run](</Users/koishi/.dsh/research-results/session-f3ba4e7cd768/e5126de53b30-research-result-readable.txt>) verified the fixed-Ω derivative \(16(1+\sqrt2)\) and the timelike metric/scalar Green-function identity (8), again without messages. The symbolic derivative residuals are exact; the tensor check is a finite exact example, supplementing the analytic identity, not replacing its proof.

**Assumptions:** the prescribed first-order reduced-TT retarded/Wightman construction, logfree BF scalar, boundary-normal FG representative, common real compact spacetime switch and common radial regulator, standard positive-energy free densities, and no added contact or edge distributions.

**Not verified:** existence and uniqueness of an all-null regulator-removed extension for an unspecified null-projector prescription; full local or global distributional continuity as \(\Omega\to0\); interchange of the radial-cutoff removal with the adiabatic limit; finite-switch gauge-invariant completion. The finite-\(\Omega\) threshold noncancellation above is a counterexample, while the proposed small-\(\Omega\) scaling is only a route toward the remaining estimate.
