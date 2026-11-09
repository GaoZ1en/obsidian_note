---
paper id: 2611.06367v1
title: Metric reconstruction in a Bondi-like gauge
authors:
  - Marc Casals
  - Stefan Hollands
  - Vahid Toomani
  - Peter Zimmerman
publication date: 2026-11-04T11:27:04
abstract: |-
  The source turns the GHZ asymptotic gauge-completion construction into an algorithm driven by one Held Master Scalar at future null infinity. It supplies Hertz integration constants, residual gauge fields, Schwarzschild mode formulas, Kerr angular discretizations and circular-orbit demonstrations. This note records a spin-weight inconsistency in the printed general completion formula and separates it from the conditional construction and reported numerical evidence.
comments: "Downloaded pinned v1: 19 pages, four appendices and numerical figures"
url: https://arxiv.org/abs/2611.06367v1
summary: "Boundary-data reconstruction from a Weyl scalar, with explicit asymptotic hypotheses, a checked failure of (15b), and finite-mode verification boundaries."
tags: []
---

# Verdict and Present Use

The paper gives a concrete organization of radiative metric reconstruction: a Weyl scalar alone is supplemented by a source corrector, Kerr-parameter zero modes, Hertz radial integration data and a correlated residual gauge transformation. The asymptotic theorem is conditional, and the printed general algorithm cannot be used literally without resolving (15b): its two lowering derivatives give the wrong spin weight and contradict the Schwarzschild specialization (20c).

Reason codes: T1-boundary; T1-symmetry; T1-charge. Immediate use: distinguish curvature/radiative boundary data from residual-gauge and charge-completion data before interpreting a reconstructed metric as a regional phase-space representative. This is asymptotically flat Kerr reconstruction, not an AdS mode-domain result or a proof that charge aspects determine all regional solutions.

# Complete Source Tree and How to Read This Dense Paper

All 19 pages of the pinned PDF, the TeX body and the useful appendices were inspected. The short but operator-dense article is treated in monograph mode.

| Section cluster | Definitions, construction and dependencies |
|---|---|
| I Introduction | GHZ decomposition, effective source, residual versus full metric, relation to self-force. |
| II Conventions | Signature, Kinnersley frame, outgoing coordinates, Held table and spin weights. |
| III Asymptotically flat reconstruction | Four theorem hypotheses; retarded Weyl solution; Hertz inversion; HMS; four completion fields; residual vector; corrector/zero modes. |
| IV Circular Schwarzschild | Diagonal spherical-mode solution, explicit completion/gauge coefficients, compact radial source support. |
| V Circular Kerr; A Comoving punctures; B Effective source | Local singular-field expansion, angular master integral, window-before-differentiation prescription. |
| V.C GHZ corrector; V.D Weyl/Hertz | Triangular radial integrations, Teukolsky solve and minimal radial inverse. |
| V.E HMS and residual gauge; V.F Numerical results | Pole factors, eighth-order angular equation, finite collocation, Laurent cancellation, redshift and boundary aspects. |
| V.G $(\ell,m)$ scheme in Kerr | Spheroidal mixing, sparse Held operators, exact angular buffer and separate mixing truncation. |
| A Lie derivative | Explicit $mm,nm,nn$ residual-gauge contributions; conjugation supplies the rest. |
| B Teukolsky operators | Full Held-form wave/source operators, needed to reproduce the PDE stage. |
| C Generic punctures; C.1 What changes; C.2 Orbital phases; C.3 Local torus expansion; C.4 Master integral; C.5 Frequency modes | Forward construction beyond circular symmetry; phase shift and torus Jacobian. Not a demonstrated generic-orbit numerical pipeline. |
| D Code reference map | Links author code and a manuscript-to-code map. Code/benchmark data were not executed in this run. |

Essential: II–III and the failure test below; then IV for the reusable modal model. Technical reference: A–B and V.G. V.A–F describes the circular-source implementation. C is a proposed extension, not equal in evidence status to the circular example.

# Fields, Signs, Coordinate Dependence and Falloff Domain

The source uses signature $(+---)$, opposite to many vault GR notes. In outgoing Eddington coordinates $(u=t-r_*,r,\theta,\varphi_*)$,

$$\begin{align}
dr_*=(r^2+a^2)\,dr/\Delta,\qquad d\varphi_*=d\varphi-a\,dr/\Delta, \quad \Delta=r^2-2Mr+a^2, \quad \rho=-\frac1{r-ia\cos\theta}.
\end{align}$$

The perturbative Weyl scalar is $\psi=\delta C_{lmlm}$ of spin $+2$; the paper explicitly uses the opposite sign to a common $\psi_0$ convention. Its Hertz potential likewise differs by a sign from the referenced reconstruction convention. A Held circle means annihilation by $\thorn=\partial_r$ at fixed outgoing coordinates; it does not mean time independent.

Write $P=\widetilde\thorn'$, $E=\widetilde\eth$, $E'=\widetilde\eth'$ only within this note's operator formulas. From Table I,

$$\begin{align}
P=\partial_u-\frac{\Delta}{2(r^2+a^2\cos^2\theta)}\partial_r, \qquad \tau^\circ=-ia\sin\theta/\sqrt2, \quad \rho'{}^\circ=-\tfrac12, \quad \Psi^\circ=M, \quad \Omega^\circ=-2ia\cos\theta,
\end{align}$$

$$\begin{align}
E_s=-\frac1{\sqrt2}(\partial_\theta+i\csc\theta\partial_{\varphi_*} +ia\sin\theta\partial_u-s\cot\theta), \qquad E'_s=-\frac1{\sqrt2}(\partial_\theta-i\csc\theta\partial_{\varphi_*} -ia\sin\theta\partial_u+s\cot\theta).
\end{align}$$

Each application changes $s$ by $+1$ or $-1$; repeated operators must update it. On circle quantities and a Fourier mode $e^{-i\omega u+im\varphi_*}$, $P=-i\omega$. The radial part cannot be dropped on a general $r$-dependent field. The prose in V.D omits the table's factor $1/2$ in $P$; use Table I rather than that isolated restatement. The schematic full Teukolsky PDE has an overall normalization that must be assembled from Appendix B.

III quotes a theorem under four hypotheses:

1. Source tetrad components obey $T_{nn}=O(r^{-2})$, $T_{ln},T_{m\bar m},T_{nm}=O(r^{-3})$, and $T_{lm},T_{mm},T_{ll}=O(r^{-4})$ at fixed outgoing coordinates.
2. A metric representative already exists in some gauge with $h_{ll},h_{lm},h_{ln},h_{m\bar m}=O(r^{-2})$ and $h_{nn},h_{nm},h_{mm}=O(r^{-1})$.
3. After subtracting suitable $(\delta M,\delta a)$ zero modes, leading coefficients vanish as $u\to-\infty$.
4. Future Bondi news satisfies the required Price decay.

The conclusion gives an IRG representative, $h_{la}=0$, with the remaining Bondi-like falloffs. It does not derive hypothesis 2 from the source bounds alone. Eternal circular sources need not obey the temporal assumptions; the authors explicitly assume applicability of the construction there and test finite numerical examples. Do not convert their conditional theorem into an unconditional existence/uniqueness result for those sources.

# Weyl Solution, Radial Kernel and the HMS

The reconstruction is

$$\begin{align}
h_{ab}=2\operatorname{Re}\mathcal S^\dagger_{ab}\Phi+x_{ab} -\mathcal L_\zeta g_{ab}+\dot g_{ab},\qquad \mathcal Eh=T.
\end{align}$$

$x$ is the GHZ source corrector, $\dot g$ carries Kerr-parameter changes, and $\zeta$ preserves IRG. For a puncture $h^P$, the effective source is $T^E=T-\mathcal Eh^P$ and $h^{full}=h^P+h^R$. Residual and full fields must not be identified at the worldline.

Solve $\mathcal O\psi=\mathcal S^{ab}T_{ab}$ with ingoing horizon/outgoing infinity conditions and extract $\psi=\psi^{5\circ}/r^5+O(r^{-6})$. Then

$$\begin{align}
\partial_r^4\bar\Phi=2\psi,\qquad \Phi=\Phi^{min}+\Phi^{0\circ}+\rho^{-1}\Phi^{1\circ} +\rho^{-2}\Phi^{2\circ}+\rho^{-3}\Phi^{3\circ}.
\end{align}$$

The minimal inverse is $O(r^{-1})$, but the completed metric generally needs the growing radial-kernel terms paired with the gauge piece. **Checked:** each $\rho^{-n}$ for $0\le n\le3$ is killed by four radial derivatives; $\partial_r^4(\psi^{5\circ}/12r)=2\psi^{5\circ}/r^5$. A finite starting radius $R_{max}$ with zero radial data approximates the infinity prescription; it does not eliminate the need for a boundary-data convergence test.

The spin-$+2$ Held Master Scalar $f^\circ$ satisfies

$$\begin{align}
2P^3\bar\psi^{5\circ}=E'^4E^4\bar f^\circ-9M^2P^2\bar f^\circ.
\end{align}$$

The printed triangular completion system is

$$\begin{aligned}
\Phi^{3\circ}&=-P\bar f^\circ,\\
\Phi^{2\circ}&=-E'^2\bar f^\circ\quad\text{[printed (15b), failed below]},\\
P\Phi^{1\circ}&=-\tfrac12E'^2E^2\bar f^\circ -(2\bar\tau^\circ E+\tfrac32M)P\bar f^\circ,\\
P^2\Phi^{0\circ}&=-\tfrac16E'^3E^3\bar f^\circ -(\bar\tau^\circ E'E^2+\tfrac12ME'E+M\rho'{}^\circ)P\bar f^\circ.
\end{aligned}$$

The same seed gives the vector building blocks

$$\begin{align}
\bar\zeta_m^\circ=E\bar f^\circ,\qquad P\zeta_l^\circ=-\operatorname{Re}(E^2\bar f^\circ),
\end{align}$$

$$\begin{align}
P\zeta_n^\circ=-\operatorname{Re}[E'E^3\bar f^\circ-\rho'{}^\circ E^2\bar f^\circ -2\tau^\circ EP\bar f^\circ-\tfrac12\Omega^\circ E^2P\bar f^\circ].
\end{align}$$

The spin weights are $s(f)=2$, $s(\bar f)=s(\Phi^{n\circ})=-2$, $s(\zeta_l)=s(\zeta_n)=0$, $s(\zeta_m)=1$. Time inversion by $1/\omega$ requires a separate zero-frequency prescription. The Kerr-parameter modes and time-integration kernels are not determined by simply dividing by zero.

# Schwarzschild Specialization and a Decisive Failure Test

For $a=0$, define

$$\begin{align}
B_1=\frac{\ell(\ell+1)}2,\qquad B_2=\frac{(\ell-1)\ell(\ell+1)(\ell+2)}4,\qquad D_{\ell\omega}=B_2^2+9M^2\omega^2.
\end{align}$$

For real $\omega$ and $\ell\ge2$, $D>0$. The source's mode solution is $f^\circ_{\omega\ell m}=2i\omega^3\psi^{5\circ}_{\omega\ell m}/D$. Define $\Xi=(-1)^m\overline{\psi^{5\circ}_{-\omega,\ell,-m}}$. The closed completion coefficients (20) are

$$\begin{aligned}
\Phi^{0\circ}&=-\frac{i\omega}{3D}(B_2B_1-3iM\omega B_1)\Xi,\\
\Phi^{1\circ}&=\frac{\omega^2}{D}(B_2-3iM\omega)\Xi,\\
\Phi^{2\circ}&=\frac{2i\omega^3}{D}\frac{B_2}{B_1}\Xi,\\
\Phi^{3\circ}&=-\frac{2\omega^4}{D}\Xi.
\end{aligned}$$

**Checked:** on spherical harmonics, $E'^4E^4$ has eigenvalue $B_2^2$. For $\ell=2,m=0$, using an unnormalized $_{-2}Y_{20}=\sin^2\theta$, explicit Mathematica differentiation gives eigenvalue $36$. General symbolic coefficient algebra reproduces the $\Phi^{3\circ},\Phi^{1\circ},\Phi^{0\circ}$ equations with spin-updated Schwarzschild ladder products. Initial hand-entered signs in one check were corrected before the accepted zero residual.

**Failed — (15b), PDF p. 5.** $E'^2\bar f$ has spin $-4$, whereas $\Phi^{2\circ}$ must have spin $-2$ and $\rho^{-2}$ has spin zero. More concretely,

$$\begin{align}
E'_{-3}E'_{-2}\sin^2\theta=0, \qquad -E'_{-1}E_{-2}\sin^2\theta=2\sin^2\theta.
\end{align}$$

For the same $\ell=2$ mode, (20c) requires $\Phi^{2\circ}=2\bar f$, not zero. Both the PDF and TeX print the two-lowering formula. Replacing it by $-E'E\bar f$ restores spin and matches the Schwarzschild coefficient; this is a **candidate correction**, not an independently proved full Kerr replacement. All full-metric cancellation claims depending on an unspecified choice between these formulas remain unverified here.

The other Schwarzschild vector amplitudes are source-derived: $\zeta_m=-2i\omega^3\sqrt{B_2/B_1}\psi^5/D$, $\zeta_l=\omega^2\sqrt{B_2}\psi^5/D+\mathrm{c.c.}$, and $\zeta_n=-\omega^2\sqrt{B_2}(B_1+1/2)\psi^5/D+\mathrm{c.c.}$, with mode-space conjugation phases, not naive conjugation at fixed $(\omega,m)$.

# Corrector, Residual Gauge and Circular-Source Pipeline

The corrector components $x_{nn},x_{nm},x_{m\bar m}$ solve triangular radial transport equations, integrated inward from infinity with vanishing data. In the first-order windowed example, the effective source has support $r\in(r_{min},r_{max})$, so $x=0$ outside the outer window. At second order the source generally extends to infinity; that simplification is unavailable. These corrector equations and zero-mode charge integrals are specified through earlier papers, not reproduced as a full executable operator system in this article.

Appendix A supplies the gauge Lie derivative explicitly. Its Schwarzschild reduction is a useful compact reference:

$$\begin{aligned}
(\mathcal L_\zeta g)_{mm}&=\frac2rE^2\zeta_l+2E'Ef-4f,\\
(\mathcal L_\zeta g)_{nm}&=-\frac1rE'E^2\zeta_l+\frac{2M}{r^2}E\zeta_l-rE'Pf,\\
(\mathcal L_\zeta g)_{nn}&=\operatorname{Re}\left[\frac{2M}{r^2}E'E\zeta_l-2E'^3Ef +2rE'^2Pf+(4+6M/r)E'^2f\right].
\end{aligned}$$

All circles are suppressed only in these equations. The other components follow by spin-aware conjugation; the $n\bar m$ and $\bar m\bar m$ mode relations differ by an extra minus sign. Appendix B gives the complete Held Teukolsky wave/source expressions, rather than the schematic PDE alone.

For circular Kerr orbits the local puncture is expanded in $X^iY^jZ^kR^p\log^qR$. Polynomial reduction leaves at most one angular odd factor, $\xi=z_c\sin\varphi_c$, and $q\in\{0,1\}$. The source then uses associated-Legendre master coefficients $J_{\nu m}$ for the Fourier transform of $R^{2\nu}$. The window must multiply the puncture **before** applying $\mathcal E$; otherwise its derivative/interface terms are lost.

The $m$-mode scheme leaves a Teukolsky PDE in $(r,\cos\theta)$. The article actually uses existing $(\ell,m)$ solvers at this stage; a purely two-dimensional spectral Teukolsky implementation is future work. Corrector integrations remain radial ODEs at each angle, with Chebyshev patches and value/derivative interface conditions. Hertz inversion is four inward integrations at fixed outgoing coordinates.

The HMS is an eighth-order angular equation. Factor

$$\begin{align}
X=(1-z)^{|m+s|/2}(1+z)^{|m-s|/2}\hat X,\qquad z=\cos\theta,
\end{align}$$

and solve a finite $N_z\times N_z$ collocation system with explicit pole regularity, equilibration, full-pivot LU and refinement. The source records operator residual and condition number separately from solution error. Those diagnostics do not alone prove a convergent continuum inverse.

# Additional Printed-Formula Checks

**Failed — logarithmic odd master integral, (30d), PDF p. 8.** Since $\partial_\nu R^{2\nu}=2R^{2\nu}\log R$, and $\xi R^{2\nu}$ transforms to $z_c(J_{\nu,m-1}-J_{\nu,m+1})/(2i)$, its logarithmic partner must be

$$\begin{align}
\xi R^p\log R\ \longmapsto\ \frac{z_c}{4i}\partial_\nu(J_{\nu,m-1}-J_{\nu,m+1})\big|_{\nu=p/2}.
\end{align}$$

The printed $z_c/(2i)$ is twice this. Mathematica checked the derivative identity exactly; a direct Fourier-integral example with $R^2=4+3\sin^2(\varphi/2)$, $p=1,m=2$ gives a printed/direct ratio $2.000000000004$. The numerical finite-difference check emitted precision warnings; the exact derivative identity is the decisive evidence. These log terms enter higher-order punctures, not the reported first-order no-log example.

**Failed under the stated dimensional chart — (26), PDF p. 8.** Its $X=(r/r_0-1)/\sqrt{\Delta(r_0)}$ has dimension $L^{-1}$ while $Y=-r_0\cos\theta$ and $Z=z_c\sin(\varphi_c/2)$ have dimension $L$. They cannot be combined as a local orthonormal distance $R^2=X^2+Y^2+Z^2$ without an extra rescaling convention. For a proper radial coordinate at the equatorial orbit, the linear normalization is $X\simeq r_0(r-r_0)/\sqrt{\Delta(r_0)}$. No correction to the source or author code is made.

**Failed under the source's rest-mass normalization — end of IV.** The text states $\delta M=\mu$, $\delta a=j/M$, $j=\mu\sqrt M/\sqrt{r_0-3M}$, while (2) defines $\mu$ as the mass multiplying a unit four-velocity. For a Schwarzschild circular geodesic,

$$\begin{align}
\mathcal E=\frac{1-2M/r_0}{\sqrt{1-3M/r_0}},\qquad \mathcal L=\frac{r_0\sqrt M}{\sqrt{r_0-3M}},\qquad \delta M=\mu\mathcal E,\quad \delta J=\mu\mathcal L.
\end{align}$$

The printed angular momentum lacks $r_0$. XCoba independently gives $g(k,k)=1-3M/r_0$ for $k=\partial_t+\Omega\partial_\varphi$, $\Omega^2=M/r_0^3$, and the Killing contractions give the formulas above. At $r_0=10M$, $\mathcal E=4\sqrt{2/35}$ and $\mathcal L/M=10/\sqrt7$; the source expression gives $1/\sqrt7$ for its specific angular factor. Correct charge completion must be recovered from the actual source integrals, not these printed shortcuts.

**Checked — on-shell helical gauge contraction; failed off-shell prefactor.** On a circular geodesic with $k=\partial_t+\Omega\partial_\varphi$,

$$\begin{align}
k^ak^b\mathcal L_\zeta g_{ab}=2k\cdot\nabla(k\cdot\zeta) =-2i(\omega-m\Omega)(k\cdot\zeta)
\end{align}$$

for a mode, so it vanishes at $\omega=m\Omega$. This follows after the acceleration term vanishes on the orbit. XCoba reproduces the identity explicitly for a time-component vector on Schwarzschild. The source's displayed detuned formula contains an extra metric contraction $t\cdot k$ and an opposite factor relative to this expression under its stated unnormalized $k$ definition. The exact on-shell zero remains correct; the printed off-shell formula is not a general identity. This check does not validate the source's absolute redshift normalization or reported numerical values.

# Kerr Sparse Angular Realization and Its Regulators

The modal HMS still divides by the Kerr Teukolsky–Starobinsky constant

$$\begin{align}
D_{\omega\ell m}=\frac1{16}[\bar\lambda^2(\bar\lambda+2)^2 +40a\omega\bar\lambda^2(m-a\omega)+48a\omega\bar\lambda(m+a\omega) +144(a\omega)^2(m-a\omega)^2]+9M^2\omega^2.
\end{align}$$

The eigenvalue convention is the source's referenced spheroidal convention. Recover the stated Schwarzschild denominator by setting $a\omega=0$, $\bar\lambda=(\ell-1)(\ell+2)$. Spheroidal-to-spherical coefficients are separately truncated to $|L-\ell|\le N_{mix}$.

For fixed spin and $m$, multiplication by $\cos\theta$ has

$$\begin{align}
\cos\theta\,{}_sY_{Lm}=c_{L+1}{}_sY_{L+1,m}+b_L{}_sY_{Lm}+c_L{}_sY_{L-1,m}, \quad b_L=-\frac{sm}{L(L+1)}, \quad c_L=\sqrt{\frac{(L^2-m^2)(L^2-s^2)}{L^2(4L^2-1)}}.
\end{align}$$

**Checked:** exact Wigner-$3j$ products in Sage reproduce the diagonal and upper-neighbor coefficients for $(s,m)=(0,1),(1,1),(2,1),(-2,0)$ at the tested $\ell=2,4$. Spin-changing $\sin\theta$ operators have their own input/output spin spaces; they are not the same fixed-spin matrix as $\cos\theta$.

Thus $\rho^{-1}=-r\mathbf1+ia\mathsf C$ is tridiagonal. The four completion terms have maximal angular support widths $6+0,4+1,2+2,0+3$, so the source's six-neighbor buffer follows for the intended spin-compatible chains. This support count is exact algebra, while spheroidal mixing truncation is approximate. It does not repair (15b). A practical convergence study must vary $L_{max}$, $N_{mix}$, $N_z$, $R_{max}$ and fitting windows separately.

# What the Reported Numerics and Boundary Aspects Establish

The source reports finite runs at $r_0=10M$, $L_{max}=20$, $N_z=21$, initially $a=0$. It quotes HMS errors around $10^{-9}$–$10^{-11}$, operator residuals around $10^{-7}$–$10^{-9}$ and condition numbers around $10^8$–$10^5$. The reported radial slopes are about $-1.003$ to $-1.000$ on a finite fitting interval. Kerr tests include $a=0.667M$ and redshift comparisons. These are **Source-derived numerical reports**, not rerun benchmarks.

The proposed diagnostic stores growing/constant Laurent coefficients separately for the reconstructed and gauge pieces and checks their cancellation before summation. A single small total at one radius could conceal cancellation error; its coefficient-wise test is more informative. Nonetheless, the present note cannot certify those cancellations from the inconsistent printed completion system or infer which corrected formula the code actually used.

Mass aspect is extracted, up to normalization/conversion, from the $r^{-1}$ coefficient of $h_{nn}$; news from the time derivative of the $r^{-1}$ $h_{mm}$ coefficient; angular momentum aspect needs the subleading $r^{-2}$ coefficient of $h_{nm}$. The leading radiative coefficient alone is insufficient. The source's finite fits suggesting no $\log r/r^2$ term do not prove smooth conformal infinity for an eternal source. Full BMS charge normalization and integrability require the additional coordinate/tetrad and CPS conventions.

# Generic-Orbit Appendix and Local Translation

Appendix C introduces Mino phases $q_r,q_\theta$, with $dt/d\lambda=\Upsilon_t+\partial_\lambda\Delta t$, $\varphi=\Upsilon_\varphi\lambda+\Delta\varphi$. Frequencies are $\omega=m\Omega_\varphi+k_r\Omega_r+k_\theta\Omega_\theta$, $\Omega_i=\Upsilon_i/\Upsilon_t$. Coefficients and chart data become functions on the orbital torus; comoving stationarity is lost.

A shifted $R^2=A-B\cos\varphi_c-C\sin\varphi_c$ is rewritten as $A-\beta\cos(\varphi_c-\delta)$, giving the master Fourier phase $e^{-im\delta}$. Use an angle with a specified quadrant, not just an ambiguous $\tan\delta=C/B$. The subsequent torus transform carries

$$\begin{align}
\frac{dt/d\lambda}{\Upsilon_t}\, e^{i\omega\Delta t-im\Delta\varphi}
e^{i(k_rq_r+k_\theta q_\theta)}.
\end{align}$$

Its Jacobian cannot be dropped mode by mode; the circular limit removes oscillatory phases and selects $k_r=k_\theta=0$. This is a construction roadmap, not a reproduced generic-orbit solution.

For regional CPS, the reusable lesson is the dependency chain $\psi^5\to f^\circ\to(\Phi^{n\circ},\zeta)\to h$, with separate $(x,\delta M,\delta a)$ data and an explicit asymptotic domain. A residual transformation that changes an asymptotic representative is not automatically a degenerate direction of a boundary symplectic form. Boundary conditions, allowed gauge quotient and charge normalization must be imposed separately.

# Evidence and Completion Boundary

- **Verified:** radial inverse/kernel identities; explicit lowest spin-harmonic HMS test; compatible Schwarzschild modal coefficient equations; exact spin-weight contradiction in (15b); logarithmic-master derivative factor; circular normalization/Killing-charge algebra; an explicit helical gauge contraction; finite Wigner-$3j$ recurrence tests and angular support counting.
- **Assumptions:** source signature/tetrad and $\psi$ sign; fixed outgoing coordinates; retarded boundaries; theorem hypotheses listed above; real-frequency nonzero modes where time divisions are used; finite regulators remain explicit; conventional rest-mass normalization for the circular-charge comparison.
- **Failed:** literal (15b); logarithmic dictionary factor in (30d); dimensional chart normalization in (26) as stated; rest-mass circular completion shortcut; general off-shell helical prefactor. All source locations and proposed corrections are stated above; no older note or source was altered.
- **Blocked:** full independent Kerr reconstruction/cancellation requires a resolved spin-compatible (15b), the exact referenced $\mathcal S^\dagger$ and corrector/zero-mode conventions, and executable numerical inputs. No author code was run, so the printed inconsistencies cannot be assigned to or ruled out of its implementation.
- **Source-derived:** conditional asymptotic theorem, general Kerr gauge-vector formulas, full angular PDE implementation, circular numerical benchmarks, normalized Bondi aspects and generic-orbit roadmap.
- **Not verified:** full $\mathcal Eh=T$ for the completed numerical metric, general source existence, continuum-regulator convergence, generic-orbit extension, numerical redshift values and any regional sewing/charge-completeness theorem.

Sources: [pinned abstract](https://arxiv.org/abs/2611.06367v1), [PDF](https://arxiv.org/pdf/2611.06367v1), [TeX](https://arxiv.org/src/2611.06367v1). Rendered pp. 4–5 and 8 confirmed the hypotheses, operator weights, (15b), local chart and logarithmic dictionary. All retrieved/rendered/CAS material is outside the vault. Overview: [[2026_11_05_overview]].
