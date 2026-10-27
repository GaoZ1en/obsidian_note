---
paper id: 2610.30260v1
title: Maxwell-Chern-Simons-Matter in AdS$_3$
authors:
  - Dean Carmi
  - Riccardo Ciccone
publication date: 2026-10-21T18:00:05Z
abstract: |-
  Studies Maxwell-Chern-Simons theory on AdS3 with N complex scalars or Dirac fermions, including sextic or Gross-Neveu interactions. It fixes the massive and flat contributions to the Dirichlet propagator, determines leading-large-N saddles and resummed spin-one spectra, and extracts BCFT data at conformal limits.
comments: "44+24 pages, 10 figures"
url: https://arxiv.org/abs/2610.30260v1
summary: "A boundary-condition-sensitive large-N AdS3 vector spectrum: the protected chiral current belongs to the flat sector and disappears upon Higgsing."
tags: []
---

# Maxwell–Chern–Simons–matter: boundary conditions before spectral resummation

The useful result is an explicit example in which the massive bulk equation does **not** determine the full propagator or the boundary spectrum. Dirichlet Maxwell–Chern–Simons (MCS) theory has a massive self-dual mode and a flat sector carrying a chiral current. Matter bubbles resum into helicity-dependent spectral denominators. The unHiggsed scalar theory preserves the current; the Higgs condensate lifts it. Fermions shift the effective CS level and hence the current's chirality. This is directly useful for comparing vector quantization prescriptions, and for keeping local equations, boundary phase space and spectral poles distinct.

Unless marked Checked below, the reconstruction is **Source-derived** from the [official v1](https://arxiv.org/abs/2610.30260v1), including its TeX and 68-page PDF. The theory is Euclidean, on fixed AdS, at leading large \(N\). Exact dependence on \(\alpha,\kappa\) at that order is not an exact finite-\(N\) solution.

## Complete source map and reading guide

| Source | Pages | Role and dependencies |
|---|---:|---|
| §1 Introduction | 3–5 | Poses the finite-coupling AdS problem and BCFT applications. |
| §2 MCS on AdS3; §2.1 boundary conditions | 5–8 | Separates flat/massive solutions; adds boundary terms and fixes source chirality. |
| §2.2 bulk propagator; §2.3 boundary correlators | 8–12 | Resolves the zero-spectral-parameter contour ambiguity using those boundary conditions; obtains current and massive-vector correlators. |
| §3 scalar matter; §3.1 phase diagram | 12–17 | Auxiliary fields, renormalized effective potential, unHiggsed/Higgsed saddle domains. |
| §3.2 unHiggsed; §3.3 Higgsed | 17–24 | Inverts singlet kernels and resums photon bubbles; reads spectra and resonance patterns. |
| §4 fermion matter; §4.1 phase diagram | 24–29 | Boundary projection, parity-preserving PV regulator, gap equation and saddle comparison. |
| §4.2 gapped phase | 29–30 | Singlet and helicity spectra; induced CS level. |
| §5 conformal limits | 30–32 | Removes Maxwell scale at fixed \(\kappa\); defines gauge-invariant topological current. |
| §5.1 critical scalar: ordinary, normal | 32–35 | Same scalar singlet spectrum, different one-point functions and vector spectra. |
| §5.2 tricritical scalar: ordinary, special, normal | 35–39 | Sextic family; displacement pole and boundary instabilities. |
| §5.3 fermions: regular, Gross–Neveu | 39–43 | Regular and critical singlets, standard/alternate branches and BCFT data. |
| §6 Outlook | 43–44 | Finite-\(N\) running, duality, monopoles and nonabelian extensions; these are not established by the leading-\(N\) solution. |
| A.1 scalar harmonic analysis | 45–46 | Principal series, completeness and alternate-quantization residue. |
| A.2 vector; A.3 helicity | 46–49 | Proca harmonics, curl eigenbasis, convolution and local contact ambiguities. |
| B.1 scalar bubbles | 49–50 | Product decomposition and Ward-subtracted vector bubble. |
| B.2 fermion bubbles | 50–53 | Clifford traces, PV finite scalar bubble and parity-odd level shift. |
| C.1 scalar bulk blocks | 54–56 | Power transforms and algebraic large-\(\nu\) asymptotics. |
| C.2 transverse vector; C.3 parity-odd blocks | 56–59 | Conserved-current structures, odd Casimir ODE and OPE normalizations. |
| C.4 derived blocks | 59–60 | Dimension derivatives survive where ordinary blocks are invisible to algebraic asymptotics. |
| C.5 extraction at conformal points | 60–62 | Matches identity/singlet/derived-block terms; references follow. |

**How to read this long paper.** For AdS vector quantization, first read §2 with A.2–A.3, then §3.2 and B.1. The next indispensable comparison is §3.3: it shows exactly which denominator term removes the current. Read §4 with B.2 if using parity-breaking matter or alternate fermion boundary conditions. For BCFT data, start from §5.1 and C.1–C.3, then compare the other families. C.4 is necessary before interpreting a large-\(\nu\) coefficient as an individual anomalous dimension. The introduction, phase plots and outlook provide context, but do not replace the kernel calculations.

## Notation, signs, sources and regulators

The radius is set to \(L=1\); restore dimensions before comparing couplings to flat space. Poincaré coordinates obey
\[
 ds^2=z^{-2}(dz^2+dx^2+dy^2),\qquad
 \epsilon_{xyz}=z^{-3},\qquad w=x+iy.
\]
The action and topological mass are
\[
 S_{\rm MCS}=\int\sqrt g\left[
 \frac{F_{\mu\nu}F^{\mu\nu}}{4e^2}
 -\frac{ik}{4\pi}\epsilon^{\mu\nu\rho}A_\mu\nabla_\nu A_\rho
 \right],\qquad m=\frac{ke^2}{2\pi}.
\]
The \(i\) is Euclidean; Lorentzian symplectic forms cannot be imported without continuing the action and orientation.

| Symbol | Meaning |
|---|---|
| \(\mathcal C_\mu{}^\rho=\epsilon_\mu{}^{\nu\rho}\nabla_\nu\) | Curl on one-forms. |
| \(\widehat A,A^{\rm flat}\) | Massive self-dual and locally flat sectors, respectively. |
| \(u=\cosh r-1\) | Invariant chordal distance; \(r\) is geodesic distance. |
| \(\nu\), \(\Omega_\nu,\Omega_\nu^{E,O,\pm}\) | Scalar/vector principal-series label and harmonics; \(\Omega^\pm=\Omega^E\pm\Omega^O\). |
| \(\alpha=Ne^2,\ \kappa=k/N\) | Held fixed in the large-\(N\) limit; \(m=\kappa\alpha/(2\pi)\). |
| \(\Sigma,X,\phi_0\) | Homogeneous auxiliary scalar saddles and fundamental condensate. |
| \(\Delta_\phi,\Delta_\psi\) | Boundary dimensions of the elementary scalar/fermion; the paper uses hats for boundary dimensions in §5. |
| \(\zeta=\lambda+2h\Sigma\) | Scalar auxiliary-field curvature coupling. |
| \(\eta=\pm1,\ M\) | Boundary Weyl projection and effective fermion mass; \(\Delta_\psi=1+\eta M\). |
| \(B_{\Delta,J}^{(\ell)}\) | Spin-\(\ell\) bubble of elementary spin \(J\); a tilde denotes its spectral coefficient. |
| \(\xi\) | Gauge-fixing parameter; longitudinal poles are not the transverse boundary spectrum. |

Regulators must remain separate. The boundary variation is first evaluated at \(z=z_0>0\), with inward normal \(n=z\partial_z\); boundary counterterms precede \(z_0\to0\). Scalar coincident loops use dimensional regularization. Fermions use even \(N\), with half the commuting PV fields of mass \(M+M_{\rm PV}\), half of mass \(M-M_{\rm PV}\); the coupling subtraction precedes \(M_{\rm PV}\to\infty\). Spectral sums below are first cut off at \(n=K\); their contact subtraction is made before \(K\to\infty\), at fixed \(\nu,\Delta\). The conformal limit \(\alpha\to\infty\) is taken after the leading-large-\(N\) resummation, holding \(\kappa\) and the indicated matter couplings fixed.

## §2: the massive equation leaves a flat boundary sector

The curl identity and field equation are
\[
 \mathcal C^2 A=-\nabla^2A-2A+\nabla(\nabla\!\cdot A),
 \qquad(\mathcal C-im)\mathcal CA=0.
\]
Thus \(A=\widehat A+A^{\rm flat}\), with
\[
 \mathcal C\widehat A=im\widehat A,\quad
 \nabla\!\cdot\widehat A=0,\quad
 \mathcal CA^{\rm flat}=0.
\]
“Flat” means locally pure gauge, not disposable under boundary conditions. The massive vector has \(\Delta_V=1+|m|\), helicity \(-\operatorname{sgn}k\); the current has \(\Delta_J=1\), helicity \(+\operatorname{sgn}k\).

### Boundary variation fixes the source/response polarization

The regulated on-shell variation contains
\[
 \delta A_i\left[-\frac{zF_{zi}}{e^2}
 +\frac{ik}{4\pi}\epsilon_{ij}A_j\right].
\]
The mixed massive–flat divergence is removed by
\[
 S_{\rm ct}=\frac1{2e^2}\int_{z_0}\sqrt h\,A_i n_\mu F^{\mu i},
\]
followed by the finite term
\[
 S_{\rm fin}=-\frac{|k|}{8\pi}\int
 \left(\widehat A_i\widehat A_i+A_i^{\rm flat}A_i^{\rm flat}\right).
\]
After using the self-dual equation, the renormalized variation is
\[
\begin{aligned}
 \delta S_D={}&\frac{k-|k|}{2\pi}\int
 (\widehat A_w\delta\widehat A_{\bar w}
  +A_{\bar w}^{\rm flat}\delta A_w^{\rm flat})\\
 &-\frac{k+|k|}{2\pi}\int
 (\widehat A_{\bar w}\delta\widehat A_w
  +A_w^{\rm flat}\delta A_{\bar w}^{\rm flat}).
\end{aligned}
\]
For \(k>0\), fix the massive \(w\) source and flat \(\bar w\) source; interchange them for \(k<0\). The opposite chiralities follow from this variational problem. Generic nonzero massive sources require additional derivative counterterms, including logarithmic terms at integer \(|m|\) (p.7 footnote); the simple formula is used in the source-free setup. Neumann flat-sector conditions require anomaly-cancelling boundary degrees of freedom. The massive alternate root \(1-|m|\) violates the spin-one unitary bound. The \(k\to0\) Dirichlet limit is singular and must be reformulated, not obtained by dropping every \(1/m\) term.

### Why the contour at \(\nu=0\) is physical input

Since \(\mathcal C\Omega^\pm_\nu=\pm\nu\Omega^\pm_\nu\), the transverse inverse kernel is
\[
 G_A^{T}=\int_{\mathcal C_\nu}d\nu\,
 \frac{\Omega_\nu^+}{\nu(\nu-im)}.
\]
Equivalently its even and odd coefficients are
\[
 \gamma_E=\frac1{\nu^2+m^2},\qquad
 \gamma_O=\frac{im}{\nu(\nu^2+m^2)}.
\]
The longitudinal gauge term is
\[
 G_{\rm long}=\xi\nabla\nabla'\int_{\mathbb R}
 \frac{d\nu\,\Omega_\nu}{(\nu^2+1)^2}.
\]
The contour bypass of the zero pole changes a harmonic contribution. Dirichlet conditions select
\[
 \frac1{(\nu+i\,\operatorname{sgn}k\,0)(\nu-im)}.
\]
In position space the decomposition contains
\[
 G_D=G_{\widehat A}+G_{\rm CS}
 -\frac{Q}{m^2}+\frac{\operatorname{sgn}k\,\pi}{m}\Omega_0^E
 +G_{\rm long},
 \quad
 G_{\widehat A}=\left(1+\frac{\mathcal C}{im}\right)\Pi_{1+|m|},
\]
where \(Q=\nabla\nabla'G_2\) and
\[
 \Omega_0^E=-\frac1{4\pi^2}\nabla\nabla'(r\coth r).
\]
The CS piece is \(iG_1'(u)\mathcal E/m\). The self-dual piece alone is not the inverse of the full MCS operator. This is the concrete warning against identifying a reduced massive propagator with the original gauge-field propagator.

Boundary limits give the chiral current correlator, for the corresponding chirality,
\[
 \langle J(w)J(0)\rangle=-\frac{|k|}{4\pi^2w^2},
\]
and the massive-vector coefficient \(-C_{\Delta,1}/e^2\), with
\(C_{\Delta,J}=(\Delta+J-1)/[2\pi(\Delta-1)]\).
These signs include the paper's Euclidean current/source conventions.

## §3: scalar saddles, singlet kernels and the lost current

The matter potential is
\[
 \mu^2|\Phi|^2+\frac{\lambda}{2N}(|\Phi|^2)^2
 +\frac{h}{3N^2}(|\Phi|^2)^3.
\]
After \(A\to eA\), the covariant derivative is \(\nabla-ieA\). Introducing auxiliary \(\sigma,\chi\), integrating \(N-1\) complex scalars and retaining the homogeneous condensate gives
\[
 \frac{V_{\rm eff}}N=
 \mu^2|\phi_0|^2+\frac\lambda2\Sigma^2+\frac h3\Sigma^3
 +X(|\phi_0|^2-\Sigma)
 \mp\frac{(1+\mu^2+X)^{3/2}}{6\pi}.
\]
The upper sign is standard scalar quantization. Its saddle relation fixes
\(\Delta_\phi=1-4\pi\Sigma\), with alternate continuation where allowed.

### Phase branches and distinct notions of stability

Eliminating \(X,\phi_0\) gives
\[
 \frac{V_{\rm uH}}N=(\mu^2+1)\Sigma+\frac\lambda2\Sigma^2
 +\frac{h-16\pi^2}{3}\Sigma^3,\quad \Sigma<\frac1{4\pi},
\]
and
\[
 \frac{V_{\rm H}}N=\mu^2\Sigma+\frac\lambda2\Sigma^2
 +\frac h3\Sigma^3-\frac1{6\pi},
 \quad \Sigma\ge-\frac1{4\pi},
 \quad v^2=\Sigma+\frac1{4\pi},\quad X=-\mu^2.
\]
The scalar stability window is \(0<h<16\pi^2\). The unHiggsed extrema are controlled by
\[
 {\cal D}=\lambda^2+4(\mu^2+1)(16\pi^2-h),\qquad
 \Sigma_\pm=\frac{-\lambda\pm\sqrt{\cal D}}{2(h-16\pi^2)}.
\]
The plus branch has positive homogeneous second derivative. Existence also requires its branch-domain inequality; a real algebraic root outside that domain is not a saddle of that quantization.

With \(\beta=\Delta_\phi-1\), homogeneous stability is
\[
 \zeta+8\pi\beta\ge0,
\]
whereas the bulk BF test is
\[
 \zeta+\frac{8\pi}{\psi'(\beta+\tfrac12)}\ge0.
\]
They answer different questions: the former probes the homogeneous potential, the latter the lowest singlet pole. Comparing two AdS saddle energies that impose different boundary conditions does not, by itself, establish a physical first-order transition in one fixed boundary problem. This qualification is essential to the interpretation of the phase plots.

### UnHiggsed scalar and photon spectra

In the \((\delta\sigma,\delta\chi)\) basis,
\[
 \widetilde K_{\rm uH}=
 \begin{pmatrix}\zeta&-1\\-1&-\widetilde B^{(0)}_{\Delta_\phi,0}\end{pmatrix},
 \quad
 \widetilde K_{\rm uH}^{-1}=
 \frac1{1+\zeta\widetilde B^{(0)}}
 \begin{pmatrix}\widetilde B^{(0)}&-1\\-1&-\zeta\end{pmatrix}.
\]
Set \(\nu=-i(\Delta-1)\) to obtain boundary dimensions. For \(\zeta\ne0\), poles solve
\(1+\zeta\widetilde B^{(0)}=0\); for \(\zeta=0\), the \(\sigma\sigma\) bubble instead has the generalized-free spectrum \(2\Delta_\phi+2n\). Taking a zero-coupling limit of a pole equation after dividing by that coupling can erase this distinction.

The transverse photon denominator becomes
\[
 D_{\rm uH}(\nu)=\nu(\nu-im)-\alpha\widetilde B_{\Delta_\phi,0}^{(1)}(\nu).
\]
The seagull/contact prescription enforces \(\widetilde B^{(1)}(0)=0\), leaving the current pole. For helicity \(s=\pm1\), write \(\nu=-isx\), \(x=\Delta-1>0\):
\[
 \frac{x^2}{\alpha}+\frac{s\kappa x}{2\pi}
 +\widetilde B^{(1)}(-isx)=0.
\]
The pole towers split by helicity. In the weakly coupled regime the additional resonance occurs opposite to the protected-current chirality. The phase-shift diagnostic is \(\delta=\frac\pi2(\Delta_{\rm GFF}-\Delta_{\rm ordered})\); the plotted Breit–Wigner behavior is a numerical source result, not a proof of an exact flat-space scattering formula at finite radius.

### Higgsing changes both the scalar Schur complement and the Ward denominator

The quadratic kernel in \((\rho,\delta\sigma,\delta\chi)\) is
\[
 \widetilde K_{\rm H}=
 \begin{pmatrix}
 \nu^2+1&0&\sqrt2v\\
 0&\zeta&-1\\
 \sqrt2v&-1&-\widetilde B^{(0)}_{2,0}
 \end{pmatrix}.
\]
Replacing the radial fluctuation by its linear equation of motion
\({\cal E}_\rho=(\nu^2+1)\rho+\sqrt2v\,\delta\chi\)
isolates a contact block. The remaining two-by-two inverse has the previous form with
\[
 \widetilde B_{\rm H}^{(0)}
 =\widetilde B_{2,0}^{(0)}+\frac{2v^2}{\nu^2+1}.
\]
For \(\zeta>0\), use the pole equation
\[
 (\nu^2+1)\widetilde B_{2,0}^{(0)}
 +2v^2+\frac{\nu^2+1}{\zeta}=0
\]
to avoid treating an intermediate denominator as an extra physical pole.

For vectors,
\[
 \widetilde B_{\rm H}^{(1)}
 =\widetilde B_{2,0}^{(1)}-2v^2,\qquad M_W^2=2\alpha v^2.
\]
Now \(D(0)=M_W^2\), so the protected current is removed. In the weak-interaction limit at fixed \(m,M_W\), the two vector dimensions are
\[
 \Delta_\pm=1+\frac{\sqrt{m^2+4M_W^2}\mp m}{2}.
\]
The longitudinal coefficient contains
\(\xi/[(\nu^2+1)(\nu^2+1+\xi M_W^2)]\); these gauge-dependent poles must not be mixed into the transverse spectrum. The scalar large-\(v\) limit at fixed \(m_\rho^2=2v^2\zeta\) gives
\(\Delta_\rho=1+\sqrt{1+m_\rho^2}\).

## §4: fermion boundary projection and the induced level

The Clifford convention is
\(\Gamma_\mu\Gamma_\nu=g_{\mu\nu}-i\epsilon_{\mu\nu\rho}\Gamma^\rho\).
At fixed projection \(\eta\),
\[
 \Delta_\psi=1+\eta M,\quad
 \eta M\ge0\ \text{standard},\quad
 -\tfrac12<\eta M<0\ \text{alternate}.
\]
The propagator uses the spin parallel transporter and two radial functions,
\[
 A_{1,2}(r)=\frac{e^{-(\Delta_\psi-1)r}}{8\pi\sinh r}
 \left[2(\Delta_\psi-1)+
 \begin{cases}\tanh(r/2),&1,\\ \coth(r/2),&2.\end{cases}\right].
\]
The projection is not equivalent to choosing the sign of \(M\) after the calculation: it fixes which boundary component is retained.

The PV-regulated determinant derivative has the large-regulator behavior
\[
 \frac1{{\rm vol}}\operatorname{tr}\frac1{\slashed D+M}
 =\frac{\eta}{2\pi}(M^2-\tfrac14)
 -\frac{M_{\rm PV}M}{\pi}+O(M_{\rm PV}^{-1}).
\]
With \(\lambda_{\rm F}=\lambda_{\rm F,b}-M_{\rm PV}/\pi\),
\[
 \frac{V_{{\rm F},\eta}}N
 =\mu_{\rm F}^2 M+\frac{\lambda_{\rm F}}2M^2
 +\frac y3M^3+\frac{\eta M}{6\pi}(M^2-\tfrac34),
\]
so
\[
 0=\mu_{\rm F}^2+\lambda_{\rm F}M-\frac{\eta}{8\pi}
 +(y+\frac{\eta}{2\pi})M^2.
\]
The fixed-\(\eta\) unitary domain is bounded below for \(\eta y>-1/(2\pi)\); the flat-space criterion \(|y|<1/(2\pi)\) concerns both mass directions. The extrema are
\[
 M_{\eta,\pm}=
 \frac{-\lambda_{\rm F}\pm
 \sqrt{\lambda_{\rm F}^2-4(y+\eta/2\pi)(\mu_{\rm F}^2-\eta/8\pi)}}
 {2(y+\eta/2\pi)}.
\]
Again the plus root is the local minimum when it lies in the admissible domain.

The scalar inverse kernel is \(\zeta_{\rm F}-\widetilde B_{\Delta_\psi,1/2}^{(0)}\), with \(\zeta_{\rm F}=\lambda_{\rm F}+2yM\). The homogeneous Hessian is \(\zeta_{\rm F}+(\Delta_\psi-1)/\pi\); the BF condition is
\[
 \zeta_{\rm F}
 +\frac{(\Delta_\psi-1)^2}{2\pi}\psi'(\Delta_\psi)
 +\frac{2\Delta_\psi-1}{4\pi}\ge0.
\]
The parity-odd bubble behaves as
\[
 \widetilde B^{(1,O)}_{\Delta_\psi,1/2}(\nu)
 =\frac{i\eta\nu}{4\pi}+O(\nu^3).
\]
In the stated parity-preserving scheme,
\(\kappa_{\rm eff}=\kappa+\eta/2\). The current survives when
\(\kappa_{\rm eff}\ne0\), with chirality \(\operatorname{sgn}\kappa_{\rm eff}\).
With \(\widetilde B^+=\widetilde B^E+\widetilde B^O\), nonzero poles obey
\[
 \widetilde B^+(-isx)-\frac{s\eta x}{4\pi}
 =-\frac{x^2}{\alpha}-\frac{s\kappa_{\rm eff}x}{2\pi}.
\]
The vanishing-effective-level case is a separate singular boundary problem, not evidence that a current of ambiguous chirality remains.

## Appendix B as a reusable spectral library

For \(L=1\),
\[
 G_\Delta(r)=\frac{e^{-(\Delta-1)r}}{4\pi\sinh r},\qquad
 \Omega_\nu(r)=\frac{\nu\sin(\nu r)}{4\pi^2\sinh r}.
\]
The standard spectral representation requires \(\Delta>1\); for \(\Delta<1\) the contour deformation contributes
\(-2\pi\,\Omega_{i(1-\Delta)}/(1-\Delta)\).
For the scalar bubble, this matters when \(2\Delta_\phi<1\).

### Scalar matter

\[
 G_\Delta^2=\frac1{2\pi}\sum_{n=0}^\infty G_{2\Delta+2n},\quad
 \widetilde B_{\Delta,0}^{(0)}
 =\frac{i}{8\pi\nu}
 [\psi(\Delta-\tfrac{1+i\nu}{2})-\psi(\Delta-\tfrac{1-i\nu}{2})].
\]
Its convergent spectral sum is
\[
 \frac1{2\pi}\sum_{n=0}^{\infty}
 \frac1{\nu^2+(2\Delta+2n-1)^2}.
\]
For the vector bubble set \(a_n=2\Delta+2n\) and
\[
 b_n=\frac{(n+1)(2\Delta+2n)^2(2\Delta+n-1)}
 {\pi[(2\Delta+2n)^2-1]}.
\]
The Ward prescription is explicitly
\[
 \widetilde B_{\Delta,0}^{(1)}(\nu)=
 \lim_{K\to\infty}\sum_{n=0}^K b_n
 \left[\frac1{\nu^2+a_n^2}-\frac1{a_n^2}\right].
\]
It yields
\[
 \frac{(2\Delta-3)\nu^2}{8\pi(1+\nu^2)}
 +\frac{\nu[4(\Delta-1)^2+\nu^2]}{16\pi i(1+\nu^2)}
 [\psi(\Delta-\tfrac{i\nu}2)-\psi(\Delta+\tfrac{i\nu}2)].
\]
The un-subtracted sum is divergent; declaring it equal to the finite expression without the prescription changes the problem.

### Fermion matter

The separated-point scalar bubble is \(-2(A_1^2-A_2^2)\), with scalar-propagator coefficients
\(c_n=2(n+1)(2\Delta+n-1)/\pi\), dimensions \(2\Delta+2n+1\).
Its PV finite spectral part is
\[
 \widetilde B_{\Delta,1/2}^{(0)}
 =\frac{i[4(\Delta-1)^2+\nu^2]}{8\pi\nu}
 [\psi(\Delta+\tfrac{i\nu}2)-\psi(\Delta-\tfrac{i\nu}2)]
 -\frac{2\Delta-1}{4\pi},
\]
with the regulated answer \(M_{\rm PV}/\pi+\widetilde B^{(0)}+O(M_{\rm PV}^{-1})\).

Define
\(P_\Delta(\nu)=\psi(\Delta-\frac{1+i\nu}2)-\psi(\Delta-\frac{1-i\nu}2)\).
The vector coefficients are
\[
 \widetilde B^E=
 -\frac{(\Delta-1)\nu^2}{4\pi(1+\nu^2)}
 +\frac{\nu[-4\Delta^2+8\Delta+\nu^2-3]}
 {16\pi i(1+\nu^2)}P_\Delta(\nu),
\]
\[
 \widetilde B^O=
 \frac{i\eta\nu}{4\pi(1+\nu^2)}
 -\frac{\eta(\Delta-1)\nu^2}{4\pi(1+\nu^2)}P_\Delta(\nu).
\]
The even part uses the Ward subtraction. The odd part has a possible local CS counterterm, fixed to zero in the paper's parity-preserving PV scheme. The Proca towers have dimensions \(2\Delta+2n\), with
\[
 d_n^E=\frac{(2\Delta+2n-1)^2
 [2\Delta^2+\Delta(2n-3)+n(n-1)+1]}
 {4\pi(\Delta+n-1)(\Delta+n)},
\quad
 d_n^O=-\frac{(\Delta-1)(2\Delta+2n-1)^4}
 {4\pi(\Delta+n-1)(\Delta+n)}.
\]
At \(\Delta=1,n=0\), take the limit rather than substitute into an apparent \(0/0\). Finite truncations and quantization-contour terms must be treated before continuing parameters across a pole.

## §5: conformal families and the distinction between bulk and boundary data

At \(\alpha\to\infty\), define \(J_{\rm top}\) by the curl of the original gauge field with the paper's \(1/(2\pi)\) normalization. Let \(B_E,B_O^{\rm eff}\) denote the real spectral functions entering the resummed kernel: \(B_O^{\rm eff}=\kappa\nu/(2\pi)\) for scalar matter and \(\kappa\nu/(2\pi)-i\widetilde B^O\) for fermions. Then
\[
 \widetilde G_{JJ}^E=
 \frac{\nu^2 B_E}{4\pi^2N[B_E^2+(B_O^{\rm eff})^2]},
\qquad
 \widetilde G_{JJ}^O=
 -\frac{i\nu^2 B_O^{\rm eff}}
 {4\pi^2N[B_E^2+(B_O^{\rm eff})^2]}.
\]
The short-distance normalization is common to the conformal branches:
\[
 C_{J_{\rm top}}(\kappa)=
 \frac8{\pi^4N[1+(8\kappa/\pi)^2]}.
\]
This bulk coefficient is independent of the boundary condition. The boundary pole locations and one-point coefficients are not.

### Critical scalar: ordinary versus normal

Take \(\lambda\to\infty\). With
\(\boldsymbol\chi=\chi+\sqrt N(\mu^2+3/4)\),
the ordinary branch has \(\Delta_\phi=1,\Sigma=0\),
\(a_\chi=-\sqrt N/4\). The normal branch has \(v^2=1/(4\pi)\),
\(a_\chi=3\sqrt N/4\), and a tilt operator of boundary dimension two.

Both give
\[
 \widetilde G_{\chi\chi}=-8\nu\coth(\pi\nu/2),\quad
 \Delta_\chi^{\rm bulk}=2,\quad C_\chi=8/\pi^2,
\]
\[
 \widehat\Delta_{\chi_n}=3+2n,\qquad
 \varrho_{\chi\widehat\chi_n}=64(n+1).
\]
The lowest pole is the displacement operator. The vector inputs differ:
\[
 B_{\rm ord}^{(1)}=-\frac{\nu^3}{16(1+\nu^2)}\coth(\pi\nu/2),
\quad
 B_{\rm norm}^{(1)}=-\frac{\nu(\nu^2+4)}{16(1+\nu^2)}\coth(\pi\nu/2).
\]
Only the ordinary branch has the protected current. Thus equal scalar singlet two-point functions do not imply equal boundary conditions or complete BCFT data. For example, the ordinary \(JJ\chi\) coefficients are
\[
 C^E_{JJ\chi}=-\frac{2C_J}{\sqrt N}
 \frac{1-(8\kappa/\pi)^2}{1+(8\kappa/\pi)^2},\quad
 C^O_{JJ\chi}=-\frac{8i\kappa C_J}{\sqrt N[1+(8\kappa/\pi)^2]}.
\]

### Tricritical scalar: three boundary branches

Set \(\mu^2=-3/4,\lambda=0\). On ordinary/special branches,
\[
 \beta_\pm=\pm\frac{2\pi}{\sqrt{16\pi^2-h}},\quad
 \Sigma=-\frac{\beta}{4\pi},\quad
 \zeta=-\frac{h\beta}{2\pi},\quad
 a_\sigma=-\frac{\sqrt N\beta}{4\pi}.
\]
The plus branch is ordinary; the minus branch is special and requires
\(0<h<12\pi^2\) for the elementary alternate dimension to remain unitary.
The singlet correlator is \(B^{(0)}/(1+\zeta B^{(0)})\).
Both contain the displacement pole at \(\widehat\Delta=3\); the special branch also has a lower relevant singlet. On the normal branch,
\[
 \zeta=\sqrt{3h},\quad \Sigma=\frac3{2\zeta},\quad
 v^2=\frac1{4\pi}+\frac3{2\zeta},
\]
and
\[
 \widetilde G_{\sigma\sigma}=
 \frac{(\nu^2+1)\tanh(\pi\nu/2)/(8\nu)+3/\zeta}
 {\nu^2+4+\zeta(\nu^2+1)\tanh(\pi\nu/2)/(8\nu)}.
\]
The vector bubble is the critical-normal one minus \(3/\zeta\).
The common bulk scalar data are
\[
 \Delta_\sigma^{\rm bulk}=1,\quad C_\sigma=\frac1{16\pi^2},
 \quad C_{\sigma\sigma}^{\ \ \sigma}
 =\frac1{2\pi\sqrt N}(1-h/64).
\]
At \(h=0\) on the ordinary branch,
\(\widehat\Delta_n=3+2n\) and \(\varrho_n=1/[4\pi^2(n+1)]\).
These bulk OPE coefficients and the dimension-one assignment refer to the normalized singlet in §5, not to the unshifted elementary scalar.

### Regular fermion and Gross–Neveu

For the regular fermion limit \(\lambda_{\rm F}\to\infty\), \(M=0\),
\(\Delta_\psi=1\). The bilinear has \(a_\chi=-\eta\sqrt N/(8\pi)\) and
\[
 \widetilde G_{\chi\chi}=-\frac\nu8\coth(\pi\nu/2),\quad
 \Delta_\chi^{\rm bulk}=2,\quad C_\chi=\frac1{8\pi^2},
 \quad\widehat\Delta_n=3+2n,\quad\varrho_n=n+1.
\]
The vector input reduces to
\[
 B_E=-\frac\nu{16}\tanh(\pi\nu/2),\qquad
 \widetilde B_O=\frac{i\eta\nu}{4\pi(1+\nu^2)}.
\]
Parity-odd response remains because the boundary condition breaks parity, even at zero bulk mass. The lowest unprotected matter vector of the retained chirality approaches dimension two; the opposite tower starts at four, reflecting the boundary Weyl projection.

The Gross–Neveu family sets \(\mu_{\rm F}^2=\lambda_{\rm F}=0\). Standard saddles satisfy
\[
 M_\eta=\frac{\eta}{2\sqrt{1+2\pi\eta y}},\quad
 \Delta_\psi=1+\eta M_\eta,\quad\zeta_{\rm F}=2yM_\eta.
\]
The scalar mass field has
\[
 \Delta_\sigma^{\rm bulk}=1,\quad C_\sigma=4/\pi^2,\quad
 C_{\sigma\sigma}^{\ \ \sigma}=-32y/(\pi\sqrt N),
\]
and at \(y=0\),
\[
 \widehat\Delta_n=3+2n,\quad
 \varrho_n=\frac{64(n+1)}{(2n+1)(2n+3)}.
\]
The alternate saddle uses the opposite mass root and exists for \(\eta y>0\); its singlet BF condition is more restrictive. The paper quotes a threshold \(|y|\simeq0.1274\). That numerical threshold and the full plotted level trajectories are Source-derived here.

## Appendix C: what large spectral parameter can and cannot determine

The scalar transforms of the identity structures at bulk dimensions one and two are respectively \(2\pi^2\coth(\pi\nu)/\nu\) and
\(-\pi^2\nu\coth(\pi\nu)\). For a conserved current, the leading even transform is
\[
 \widetilde F_{JJ}^E\sim-\frac{\pi^2}{2}C_J|\nu|.
\]
Matching this to the preceding resummed kernel gives \(C_{J_{\rm top}}\).
Subleading powers encode singlet exchanges after contact terms and the identity piece are treated consistently.

The independent odd block for exchange dimension \(\Delta'\) is
\[
 \Pi_{\Delta'}^O(u)=(2u)^{(\Delta'-1)/2}
 {}_2F_1\left(\frac{\Delta'+1}2,\frac{\Delta'+1}2;
 \Delta'-\frac12;-\frac u2\right),
\]
satisfying
\[
 [2u^2(u+2)\partial_u^2+2u(3u+1)\partial_u
 +2u-2-\Delta'(\Delta'-3)]\Pi^O=0.
\]
It fixes the odd OPE normalization; treating it as the even block would lose independent data.

A block regular at coincident points can be exponentially small in spectral space and invisible to every algebraic order. At \(\Delta'_0=2\Delta+2n\), the ordinary algebraic transform vanishes, but its dimension derivative survives:
\[
 \left.\partial_{\Delta'}\widetilde f\right|_{\Delta'_0}
 \sim(-1)^{n+1}2^{2n-1}(4\pi)^{(d+1)/2}
 n!\Gamma(\tfrac{d+1}2+n)|\nu|^{-d-1-2n}.
\]
If \(a_{\cal O}C_{OO}^{\cal O}=NA^{(0)}+O(1)\), an anomalous dimension
\(\gamma/N\) contributes at order one through this derivative. With degeneracy, the coefficient determines \(\sum_i A_i^{(0)}\gamma_i\), not the individual \(\gamma_i\). Matching a few asymptotic powers therefore neither reconstructs the entire bulk OPE nor proves conformality.

The local contact freedoms from A.3 are
\[
 \delta\widetilde F_E=a_0+\nu^2p(\nu^2),\quad
 \delta\widetilde F_O=\nu q(\nu^2),\quad
 \delta\widetilde F_L=\frac{a_0}{\nu^2+1}+r(\nu^2+1).
\]
The apparent pole in the last expression can be part of a local vector contact tensor. Component-wise spectral denominators alone do not classify locality.

## Equation ledger and derivation dependencies

| Result | Source anchor | Required input |
|---|---|---|
| Chiral source polarization | §2.1, pp.6–7 | Regulated variation, self-duality, finite boundary term and sign of \(k\). |
| Dirichlet propagator | §2.2, pp.8–10 | Helicity completeness plus zero-pole contour and flat sector. |
| Scalar saddle domains | §3.1 | Auxiliary constraint, scalar determinant and quantization sign. |
| Singlet resummation | (3.27)–(3.31) | B.1 bubble and inversion, not a new determinant prescription. |
| Higgs contact reduction | (3.43)–(3.47) | Radial equation of motion and Schur complement. |
| Fermion gap and level shift | (4.18)–(4.21), (B.31)–(B.32) | Fixed \(\eta\), parity-preserving PV scheme. |
| Critical scalar boundary data | (5.11)–(5.16) | Conformal limit, pole residues, bulk identity normalization. |
| Tricritical/GN families | §5.2–§5.3 | Saddle domain plus singlet inverse kernel; no finite-\(N\) fixed line proven. |
| Bulk OPE interpretation | C.1–C.5 | Contact prescription, block asymptotics and degeneracy information. |

The global chain is: variational boundary problem → harmonic inverse and contour → regulated matter determinant → saddle → quadratic kernel → bubble resummation → boundary poles/residues → conformal limit → bulk-channel matching. Changing an early boundary or contact prescription changes later spectral statements.

## Translation to CPS and AdS quantization work

The reusable object for CPS is the regulated boundary variation, including the flat sector. One can antisymmetrize a second field-space variation to obtain its boundary symplectic flux and read the allowed polarization. The current-carrying flat sector must be retained until one has imposed the intended gauge quotient and boundary conditions. The paper itself does not construct a full Lorentzian regional phase space or a sewing theorem.

For spectral comparison, use the **full** resummed transverse denominator with a stated contour and contact prescription. The zero at \(\nu=0\) in an unHiggsed denominator has boundary content; multiplying through by \(\nu\) or dividing it out can erase a physical current. Conversely, the scalar Higgs Schur complement shows how an equation-of-motion variable produces a contact block rather than an extra oscillator.

The finite-\(K\) sums above are computational approximants, not finite-dimensional determinants defining a new boundary condition. Preserve the order “subtract at finite \(K\), then \(K\to\infty\)” when comparing to truncation calculations. The paper supplies Euclidean correlators and principal-series continuation; identifying them with a specific global Lorentzian canonical-mode basis requires an additional analytic-continuation and normalization argument.

## Verification log and residual boundaries

**Verified / Checked.** Mathematica and xAct calculations were performed after reconstructing the source chain.

1. Regulated massive/flat boundary variation: the polynomial residual against the displayed source-polarization formula vanishes, with \(|k|\) kept separate until the sign is chosen.
2. AdS3 component geometry: \(R=-6\); \(\mathcal C^2A=-\nabla^2A-2A+\nabla\nabla\!\cdot A\) has three zero residuals for a generic one-form. For \(\Omega_0^E\), \(\nabla^2(r\coth r)=2\) away from coincidence gives transversality after the mixed derivative.
3. The explicit massive propagator coefficients satisfy \((\mathcal C-im)G_{\widehat A}=0\) at separated points for both \(m=\pm\mu,\mu>0\). All nine component residuals vanish on an isometry-fixed radial pair. This does not check the distributional contact normalization.
4. Scalar and fermion gap derivatives, Hessians and saddle substitutions vanish symbolically. The two-by-two inverse and the Higgs three-by-three change to \({\cal E}_\rho\) reproduce the stated blocks. Both weak-coupling Higgs-vector roots solve the quadratic.
5. Scalar product decomposition at \(r=7/5,\Delta=3/2,K=30\) has residual \(8.66\times10^{-42}\); the analogous fermion scalar product sum has residual \(9.05\times10^{-39}\). These are finite numerical checks.
6. At \(\nu=3/5\), scalar spin-zero partial sums for \(\Delta=3/4,3/2,2\) have residuals of order \(7.8\times10^{-4},7.9\times10^{-5},8.0\times10^{-6}\) at \(K=50,500,5000\), consistent with their positive \(1/K\) tail. They are not exact equality at finite \(K\).
7. Ward-subtracted spin-one sums at \(\Delta=3/2,\nu=3/5\): scalar residuals are \(-1.3772\times10^{-4},-1.4267\times10^{-5},-1.4318\times10^{-6}\); fermion-even residuals are \(-1.3907\times10^{-4},-1.4281\times10^{-5},-1.4320\times10^{-6}\). The sign and \(1/K\) behavior agree with omitted negative tails.
8. Four real spectral samples reproduce the critical-scalar and regular-fermion bubble simplifications, including
\[
 B_{2,0}^{(0)}=\frac{\tanh(\pi\nu/2)}{8\nu}
 -\frac1{2\pi(1+\nu^2)}.
\]
The first four residues of \(-\nu\coth(\pi\nu/2)/8\) are \(i(n+1)/(2\pi)\); those of \(-8\nu\coth(\pi\nu/2)\) are \(32i(n+1)/\pi\), consistent with the boundary weights and source normalization.
9. The odd-block ODE has numerical residual below \(10^{-25}\) at \(u=3/5,\Delta'=4/3,7/2,5\). The algebraic leading-asymptotic extraction of \(C_{J_{\rm top}}\) has exact zero residual.

**Assumptions.** Euclidean orientation as above, \(L=1\), leading \(N\), fixed source quantization, separated points for tensor checks, \(m\ne0\) for massive/flat decompositions. Numerical sum tests use standard domains except the explicitly listed scalar-bubble sample \(\Delta=3/4\), whose composite dimension exceeds one. No general alternate-contour theorem follows from those samples.

**Computation corrections, not source failures.** An initial test used the wrong anticipated closed form for \(B_{2,0}^{(0)}\) and added rather than subtracted the vector partial sum. Inspecting B.1 resolved both; the corrected tests above pass. Mathematica emitted precision-limit warnings when numerically subtracting analytically equal special functions; the final residuals are stated as numerical checks, not new symbolic proofs.

**Source-derived / Not independently verified.** Full diagrammatic combinatorics, the regulated determinant from first principles, all-index Proca expansion coefficients, distributional propagator inversion at coincidence, complete phase plots and resonance fits, all BCFT OPE coefficients, alternate GN BF threshold, finite-\(N\) beta functions, monopole sectors and proposed dualities. Appendix C explains why the available asymptotics cannot uniquely extract mixed anomalous dimensions. There is no source-retrieval blocker and no established Failed source claim in the checks performed.

**Visual evidence.** PDF pp.6,7,9,10,18,22,27,33,36,41,49,50,52,53,58,60 were rendered and inspected for signs, denominators, pole conventions and equation labels. Text extraction and TeX supplied the full section structure and remaining formulas. All retrieval/render/CAS artifacts remain outside the vault; no PDF attachment was added.
