---
paper id: 2609.28633v1
title: 'AdS$_4$ Celestial Symmetries: from Ambitwistor charges to CFT$_3$ Light-Ray
  Operators'
authors:
- Alex Goodenbour
- Adam Kmec
- Lionel Mason
- Romain Ruzziconi
publication date: '2026-09-23T18:00:03Z'
abstract: The ${L}_\Lambda w_{1+\infty}$ algebra is the cosmological-constant deformation
  of the celestial $Lw_{1+\infty}$ symmetry algebra of gravity, providing an infinite-dimensional
  extension of the three-dimensional conformal algebra at the AdS$_4$ boundary. We
  construct the Hamiltonian charges associated with these symmetries from boundary
  ambitwistor-space data, using LeBrun's Heaven on Earth correspondence, and translate
  them to spacetime via the Penrose transform. We relate the resulting expressions
  to light-ray operators in the boundary CFT$_3$, including ANEC operators, their
  conformal descendants, and their commutators.
comments: 53 pages, 2 figures
url: https://arxiv.org/abs/2609.28633v1
summary: An action-to-boundary-current dictionary for AdS4 celestial charges, with
  explicit representative, endpoint and phase-space tangency conditions.
tags: []
---

# Result and scope

The reusable result is an explicit chain from a Poisson-BF twistor action to conserved boundary currents, then to ANEC light-ray modes. It is conditional on a chosen twistor representative, contour/endpoint prescription and the stated linearised AdS dictionary. It does **not** establish the full infinite algebra as Hamiltonian symmetries of the ordinary fixed-Dirichlet nonlinear Einstein phase space. Section 5 explicitly allows transformations that change its boundary metric; Section 7 leaves a full Einstein twistor action and the nonlinear spacetime extension open.

Immediate use: compare an action-derived charge algebra with the actual allowed boundary variations in the vault's AdS4/CPS work. The paper supplies the objects needed for that comparison instead of inferring charges from an abstract symmetry algebra. Codes: `T1-charge`, `T1-Wald-CPS`, `T1-boundary`, `T1-symmetry`, `T2-celestial-carrollian`, `A-rising-star` (Ruzziconi).

# How to read this long paper

Page references below use printed page numbers; the PDF cover adds one to the viewer page number. Full text was extracted and every section and Appendix A inspected. Printed pp. 30–31 and 38–39 were also rendered and visually checked for action, flux, normalization and mode labels.

| Source cluster | Purpose and dependencies | Reading role |
|---|---|---|
| §1, pp. 2–4 | States the algebra, recursion and intended light-ray dictionary; separates nonlinear twistor theory from linearised spacetime | Orientation |
| §2.1–2.2, pp. 5–8 | FG gauge, stress normalization, Weyl spinors and tetrad boost | Essential conventions |
| §2.3–2.4, pp. 9–15 | Leading Bianchi constraints, conformal charges, radial recursion and inverse-derivative hierarchy | Essential |
| §3.1–3.3, pp. 16–20 | Contact twistor geometry, boundary null-geodesic quotient, Heaven on Earth identification | Geometric foundation |
| §4.1–4.2, pp. 21–24 | Bulk/boundary Penrose transforms and higher moments; representative dependence | Essential |
| §5.1–5.3, pp. 25–29 | Boundary-metric deformation, monomial algebra and wedge | Essential for phase-space scope |
| §6.1–6.2, pp. 29–34 | Action, potential, non-integrable charge, bracket and spacetime current | Essential CPS chain |
| §6.3–6.4, pp. 34–42 | Real slice, flat light transform, cylinder conformal map, ANEC edge and descendants | Essential application |
| §7, pp. 42–44 | Nonlinear, global, quantum and flat-limit extensions | Scope limitations |
| A.1, pp. 44–45 | Lax-pair quotient and spin-frame scaling | Technical reference for §4 |
| A.2, pp. 45–46 | Null-cotangent symplectic reduction and geodesic flow | Technical reference for §3 |
| A.3, pp. 46–47 | Conformal covariance proof of the bulk Penrose transform | Technical reference |
| A.4, pp. 47–48 | Dolbeault–Čech conversion and conservation proof | Essential to the meromorphic-current interpretation |

The most efficient technical route is §2 → §4.2 → §5 → §6, with §3 and A.1–A.3 supplying the geometric derivation and A.4 supplying the contour argument. The appendices are not additional independent dynamical assumptions.

# FG data, normalization and leading Bianchi equations

**Source-derived.** Coordinates are $x^\mu=(z,y^\perp,y^+,y^-)$ with

$$
g_{\mathrm{AdS}}=\frac{\ell^2}{z^2}\bigl(dz^2-(dy^\perp)^2+dy^+dy^-\bigr),\qquad
\Lambda=-\frac3{\ell^2}.
$$

Independent real $y^\pm$ give a split bulk signature; the physical Lorentzian slice used for light rays is introduced later. FG gauge is $h_{zz}=h_{za}=0$, with $h_{ab}=\ell^2z^{-2}\sum_nz^nh^{(n)}_{ab}$. Homogeneous Dirichlet data give $h^{(0)}=h^{(1)}=h^{(2)}=0$. The free coefficient $h^{(3)}$ is conserved and traceless; higher coefficients are fixed by the field equation.

The paper deliberately rescales the physical holographic tensor:

$$
T_{ab}=-\frac{3\ell}{4}h^{(3)}_{ab}
=-\frac{4\pi G_N}{\ell}\langle T_{ab}\rangle.
$$

This minus sign must be restored before importing a positive-energy or ANEC statement. The boundary metric has $\eta_{\perp\perp}=-1$, $\eta_{+-}=1/2$ and inverse $\eta^{+-}=2$.

The normal satisfies $N^2=2$ and identifies dotted with undotted indices. Electric Weyl data encode $h^{(3)}$; the leading magnetic Weyl tensor is the boundary Cotton tensor. Conformal flatness sets that Cotton tensor to zero and ties the two chiral Weyl spinors at the boundary. Focusing on one chirality here is therefore not a claim that every physical linearised bulk perturbation is self-dual.

The FG Newman–Penrose tetrad has

$$
l=\frac{z}{\sqrt2\ell}(\partial_\perp-\partial_z),\quad
n=\frac{z}{\sqrt2\ell}(\partial_\perp+\partial_z),\quad
m=\frac{\sqrt2z}{\ell}\partial_+,\quad
\bar m=\frac{\sqrt2z}{\ell}\partial_-.
$$

All five $\Psi_{n,\mathrm{FG}}$ begin at $(z/\ell)^3$. The Newman–Unti coordinates $u=\ell(y^\perp+z)$, $r=\ell/z$ and boost $A=\sqrt2z$ give $\Psi_n^{\mathrm{NU}}=A^{2-n}\Psi_n^{\mathrm{FG}}$, hence the familiar $r^{n-5}$ peeling power. Define $Q_s=\Psi^{(0)}_{2-s,\mathrm{FG}}$ for $-2\leq s\leq2$. Equations (2.26) split into three tangential constraints and five radial determinations:

$$
\partial_\perp Q_s=\partial_+Q_{s-1}+\partial_-Q_{s+1},\quad s=-1,0,1,
$$

$$
\frac{m+1}{\ell}\Psi_k^{(m+1)}
=\partial_+\Psi_{k+1}^{(m)}-\partial_-\Psi_{k-1}^{(m)},\quad k=1,2,3.
$$

The endpoints instead determine radial coefficients, e.g.
$\ell^{-1}\Psi_0^{(1)}=2\partial_+Q_1-\partial_\perp Q_2$ and
$\ell^{-1}\Psi_4^{(1)}=\partial_\perp Q_{-2}-2\partial_-Q_{-1}$.
They do not independently fix both helicity data $Q_{\pm2}$.

The complete stress dictionary (2.37) is

$$
T_{ab}=\frac14
\begin{pmatrix}
4Q_0&2Q_1&2Q_{-1}\\
2Q_1&Q_2&Q_0\\
2Q_{-1}&Q_0&Q_{-2}
\end{pmatrix}.
$$

**Checked:** its trace is identically zero; its three divergences are exactly the recursion residual for $s=0$, and one half the residuals for $s=1,-1$. For a conformal Killing vector $V$, $J_a=T_{ab}V^b$ is conserved because its divergence reduces to the stress trace. All ten explicit vectors in (2.48)–(2.51) satisfy the conformal Killing equation by direct coordinate differentiation.

With the paper's orientations, $d\Sigma_a=-\delta_a^\perp dy^+dy^-/2$ on $\Sigma_\perp$ and $d\Sigma_a=\delta_a^-dy^\perp dy^+/2$ on $\Sigma_-$. Thus

$$
H_V[\Sigma_\perp]=\frac14\int d^2y(4Q_0V^\perp+2Q_1V^++2Q_{-1}V^-),
$$

$$
H_V[\Sigma_-]=\frac14\int dy^\perp dy^+(2Q_1V^\perp+Q_2V^++Q_0V^-).
$$

Deforming one integration surface into another preserves the charge only when their intervening weighted boundary flux vanishes. Noncompactness and poles make this a genuine condition.

# Higher aspects and the information added by their prescription

Extending the recursion to all $s$ is a **definition** for $|s|\geq2$, not an additional local equation on the five leading aspects. In particular,

$$
Q_3=\partial_-^{-1}\left(\partial_+Q_1-\ell^{-1}\Psi_0^{(1)}\right),\qquad
Q_{-3}=\partial_+^{-1}\left(\partial_-Q_{-1}+\ell^{-1}\Psi_4^{(1)}\right),
$$

$$
Q_4=\partial_-^{-2}\left(2\ell^{-2}\Psi_0^{(2)}-\partial_+^2Q_0+2\partial_+\partial_-Q_2\right).
$$

The negative counterpart replaces $+\leftrightarrow-$, $Q_2\to Q_{-2}$ and $\Psi_0\to\Psi_4$. Successive radial substitutions yield these formulas; the positive $Q_4$ numerator reduction was reproduced symbolically. One must fix the kernel of each inverse derivative. These higher aspects contain no additional local propagating degrees of freedom, but their definition includes nonlocal choices that are absent from the stress tensor alone.

# Contact geometry and the Penrose map

**Source-derived reconstruction of §§3–4 and A.1–A.3.** Twistor coordinates $Z^A=(\mu^\alpha,\lambda_\alpha)$ live on $\mathbb{CP}^3\setminus\mathbb{CP}^1_{\lambda=0}$. A bulk point determines a line through $\mu=x\lambda$. The infinity twistor fixes

$$
\tau=\frac{\lambda_\alpha d\mu^\alpha-\mu^\alpha d\lambda_\alpha}{\sqrt2\ell},\qquad
\tau\wedge d\tau=\frac\Lambda3\Omega,\qquad
\tau|_{L_x}=\frac z\ell D\lambda.
$$

Therefore the scale reconstructed from $\tau|_{L_x}$ gives the AdS metric rather than just its conformal class. Boundary ambitwistor space is the projectivized null-cotangent bundle modulo null-geodesic flow. For

$$
(p^-,p^\perp,p^+)=(\lambda_1^2,-\lambda_0\lambda_1,\lambda_0^2),\qquad
\mu^\alpha=y^{\alpha\beta}\lambda_\beta,
$$

the incidence coordinates are unchanged by $y\mapsto y+tp$, and $p_ady^a=\ell\tau$. This explicitly identifies boundary ambitwistors with bulk twistors in the patch. The fourth bulk coordinate is the antisymmetric part of $x^{\alpha\beta}$, absent from symmetric $y^{\alpha\beta}$. The curve normal bundle $\mathcal O(1)\oplus\mathcal O(1)$ has four deformation parameters. Global nonlinear filling existence is not established by this local identification.

The ASD field is represented by a Dolbeault class $g\in H^1(PT,\mathcal O(-6))$:

$$
\psi_{\alpha\beta\gamma\delta}
=\frac1{2\pi i}\int_{L_x}\tau|_{L_x}\wedge\lambda_\alpha\lambda_\beta\lambda_\gamma\lambda_\delta g,
\qquad
T_{ab}=\frac1{2\pi i}\int_{L_y}D\lambda\wedge p_ap_bg.
$$

Weights $2+4-6=0$ make the integral projective. $p^2=0$ enforces the trace constraint, and $p^a\partial_ag=0$ enforces conservation. A.1 gives the Lax-pair quotient and $\lambda=(\ell/z)^{1/2}\sigma$; A.3 uses conformal covariance of the zero-rest-mass equation. The factor $z/\ell$ of the conformal spinor, together with four physical-frame factors $(z/\ell)^{1/2}$, yields the physical cubic falloff. This geometric proof was inspected, not independently rederived in a spinor-curvature package.

In the affine coordinate $q=\lambda_1/\lambda_0$, $\hat g=-\lambda_0^6g|_{L_y}$,

$$
Q_s=\frac1{2\pi i}\int q^{s+2}dq\wedge\hat g,\qquad
(\partial_+-q\partial_\perp+q^2\partial_-)\hat g=0.
$$

Multiplication by $q^{s+1}$ immediately gives the full recursion. Higher-spin tensors package these moments using

$$
T^{(n)}_{\alpha_1\cdots\alpha_{2n}}
=\frac{2^{-n/2}}{2\pi i}\int D\lambda\wedge
\frac{\lambda_{\alpha_1}\cdots\lambda_{\alpha_{2n}}}{\lambda_0^{n-2}\lambda_1^{n-2}}g.
$$

Their extra poles select a frame and a representative. They are not new independent local higher-spin primary operators in a generic interacting CFT.

A concrete **Checked** witness: add the affine Čech coboundary $\Delta\hat g=1$, regular on the $q=0$ patch. The moments $\operatorname{Res}_{q=0}q^{s+2}$ vanish for $s=-2,-1,0,1,2$, but equal one at $s=-3$. The stress tensor remains unchanged while a higher moment changes. This illustrates precisely why quotienting by the original cohomological gauge equivalence is insufficient without a representative prescription.

# Symmetry algebra and phase-space tangency

The deformed contact structure is $\tau=I_{AB}Z^AdZ^B+\ell^{-2}h$ with $h\in\Omega^{0,1}(2)$. A weight-two Hamiltonian produces $\delta h=\bar\partial\xi$ around the background. On a patch overlap, $\check\xi|_{L_y}=\xi^{(0)}-\xi^{(1)}$ and

$$
\ell^{-1}p^a\partial_a\xi^{(i)}=\frac12\delta g_{ab}p^ap^b.
$$

The right side sees only the trace-free metric variation. Two-sided poles can change the boundary conformal structure; a one-sided coboundary can leave it unchanged. Regular quadratic generators yield the ten conformal Killing vectors. These distinctions are necessary before identifying an algebra element with a tangent vector on a fixed phase space.

Equations (5.7)–(5.10) give

$$
w^p_{m,a}=\frac{\ell^{2p+m-a-3}}{(\sqrt2)^{a-m-2p+5}}
\frac{(\mu^1)^{p+m-1}(\mu^0)^{a-p+2}}{\lambda_0^{p+a-2}\lambda_1^{m-p+1}},
$$

with integer exponents, $p\in\frac12\mathbb Z$, $p+m-1\geq0$, $a-p+2\geq0$. The bracket is

$$
\{f,h\}=\frac1{\sqrt2\ell}\sum_{\alpha=0,1}
(\partial_{\mu^\alpha}f\,\partial_{\lambda_\alpha}h-
\partial_{\mu^\alpha}h\,\partial_{\lambda_\alpha}f),
$$

$$
\{w^p_{m,a},w^{p'}_{m',a'}\}
=[m(p'-1)-m'(p-1)]w^{p+p'-2}_{m+m',a+a'}
-\frac\Lambda6[a'(p-2)-a(p'-2)]w^{p+p'-1}_{m+m',a+a'}.
$$

**Checked:** differentiating the two monomial pairs and dividing by the corresponding output normalization gives both coefficients exactly, for symbolic labels and $\ell>0$. The constant symplectic bracket supplies Jacobi; no quantum central term is computed here. The pole-free ten-dimensional subalgebra and two commuting integer-$p$ $\mathfrak{sl}_2$ sectors should not be confused with an arbitrary infinite set of globally regular generators.

# Action, non-integrable Hamiltonian and spacetime current

**Source-derived.** The self-dual Mason–Wolf action and its equations are

$$
S=\frac1{2\pi i}\int\Omega\wedge g\wedge F_h,\qquad
F_h=\bar\partial h+\frac12\{h,h\},\qquad
F_h=0,\quad\bar\nabla g=0,
$$

where $\bar\nabla=\bar\partial+\{h,\cdot\}$. Gauge transformations are $\delta_\xi h=\bar\nabla\xi$, $\delta_\xi g=\{g,\xi\}$ and $\delta_\chi g=\bar\nabla\chi$. Only $\chi$ transformations with vanishing boundary pairing are quotiented out.

Integrating the derivative of $\delta h$ by parts yields, on a real five-dimensional hypersurface $C$,

$$
\Theta_C=\frac1{2\pi i}\int_C\Omega\wedge g\wedge\delta h,\qquad
\omega_C(\delta_1,\delta_2)=\frac1{2\pi i}\int_C
\delta_1(\Omega\wedge g)\wedge\delta_2h-(1\leftrightarrow2).
$$

The deformed volume form is part of the variation; replacing $\delta(\Omega g)$ by $\Omega\delta g$ in the full nonlinear formula is unwarranted. On shell,

$$
\omega_C(\delta,\delta_\xi)=\delta H_\xi-\Xi_\xi[\delta],\qquad
H_\xi=\frac1{2\pi i}\int_{\partial C}\Omega\wedge\xi g,
$$

$$
\Xi_\xi[\delta]=H_{\delta\xi}-\frac1{2\pi i}\int_{\partial C}
\iota_{\boldsymbol\xi}\Omega\wedge g\wedge\delta h.
$$

The source uses the flux-adjusted charge bracket, not an integrable Poisson bracket assumed in advance: $\{H_\xi,H_\eta\}=\delta_\xi H_\eta-\Xi_\xi[\delta_\eta]=H_{\{\xi,\eta\}_*}$. Field-independent parameters remove the field-variation terms in $\{\xi,\eta\}_*$ but do not alone remove flux.

At $h=0$, the boundary Penrose map gives

$$
\Theta=\frac\ell2\int_{\mathcal I}d^3y\,T^{ab}\delta g_{ab},\qquad
J_{\xi a}=\frac1{2\pi i}\int_{L_y}D\lambda\wedge p_a\xi g,\qquad
H_\xi[\Sigma]=\int_\Sigma d\Sigma^aJ_{\xi a}.
$$

This pairs boundary metric sources with responses. A.4 converts Dolbeault forms to a Čech contour with a partition of unity. Both $\check\xi$ and $g_{01}$ descend along the same null-geodesic flow, so differentiating the contour expression gives $\partial^aJ_{\xi a}=0$. Endpoint terms and contour support must remain admissible throughout this step.

If $\hat\xi=\lambda_0^{-2}\check\xi|_{L_y}=\sum_r\xi_rq^r$, then

$$
J_{\xi+}=\frac12\sum_r\xi_rQ_r,\qquad
J_{\xi\perp}=\sum_r\xi_rQ_{r-1},\qquad
J_{\xi-}=\frac12\sum_r\xi_rQ_{r-2}.
$$

This reconstructs every charge from three adjacent moments. A monomial generator restricts to

$$
\hat w^p_{m,a}=\frac{\ell^{2p+m-a-3}}{2^{a-p+3}}
q^{p-m-1}(y^\perp+qy^+)^{p+m-1}(y^-+qy^\perp)^{a-p+2}.
$$

Its finite Laurent range $p-m-1\leq r\leq p+a$ yields a finite moment expression even though the full tower is infinite. For $\hat\xi=q^n$, $H$ combines $Q_n,Q_{n-1},Q_{n-2}$, isolating $Q_n$ only on the appropriate null surface.

# Light rays, the real slice and the cylinder

Set $\mathcal L_{\xi,+}=\int_{-\infty}^{\infty}dy^+J_{\xi+}$. For $\xi=p_+$, this is $\mathcal E=\int dy^+T_{++}$ and $H[\Sigma_-]=\int dy^\perp\mathcal L_{\xi,+}$. The Lorentzian slice preserving this null direction is

$$
y^+=\gamma^+,\quad y^-=-\gamma^-,\quad y^\perp=-i\gamma^\perp,
\qquad ds^2=-d\gamma^+d\gamma^-+(d\gamma^\perp)^2.
$$

Because of the rescaled stress tensor, physical ANEC positivity reads $\mathcal E_M\leq0$ in the source's normalization.

On the cylinder $ds^2=-4d\tau^+d\tau^-+\sin^2(\tau^+-\tau^-)d\phi^2$. Equation (6.41) maps it to flat space with Weyl factor
$\Omega^{-1}=\sin(\tau^++\tau^-)+\sin(\tau^+-\tau^-)\cos\phi$.
On $\tau^-=0$,

$$
\gamma^\perp=\tan\frac\phi2,\quad
\gamma^+=-[1+(\gamma^\perp)^2]\cot\tau^+,\quad
\Omega=\frac{1+(\gamma^\perp)^2}{2\sin\tau^+}.
$$

The covariant stress tensor has Weyl factor $\Omega^{-1}$. Including the null Jacobian gives

$$
\mathcal E_{EC}(\phi)=\frac12\int_0^\pi d\tau^+\sin^3\tau^+T^{EC}_{++},\qquad
\mathcal E_M=\left(\frac{d\phi}{d\gamma^\perp}\right)^2\mathcal E_{EC}.
$$

**Checked:** the full three-coordinate metric pullback and this density Jacobian have zero symbolic residual. The modes become

$$
\mathcal E_k=\int d\gamma^\perp\frac{1+(\gamma^\perp)^2}{2}
\left(\frac{1+i\gamma^\perp}{1-i\gamma^\perp}\right)^k\mathcal E_M.
$$

The linear twistor transformation (6.59) preserves the canonical bracket, also checked directly. In primed coordinates the ANEC edge is
$p=(k+3)/2$, $m=-(k+1)/2$, $a=(k-1)/2$ and $\hat w'=q'^{k+1}/2$. Both wedge inequalities saturate. Thus

$$
H_k^{\prime\mathrm{edge}}=\int_\Sigma
\left(\frac14d\Sigma'^{+}Q'_{k+1}+\frac12d\Sigma'^{\perp}Q'_k+
\frac14d\Sigma'^{-}Q'_{k-1}\right),\qquad
\mathcal E_k=iH_k^{\prime\mathrm{edge}}.
$$

The $i$ comes from the continued transverse measure. Modes $k=-1,0,1$ use only stress components; $k=\pm2$ first require $Q'_{\pm3}$. Interior wedge labels $u,v\geq0$ give

$$
\hat w'_{k;u,v}=\frac{\ell^{u-v}}{2^{v+1}}q'^{k+1-u}
(y'^\perp+q'y'^+)^u(y'^-+q'y'^\perp)^v.
$$

Binomial expansion and the three-component current formula reproduce (6.77), with aspect range $k-1-u\leq s\leq k+1+v$. The first descendants obey the source's $N_k+iK_k=-4\ell H'_{k-1;0,1}$ and $N_k-iK_k=2H'_{k+1;1,0}/\ell$. Their identification with the cited quantum operator algebra is semiclassical here.

# Equation ledger and transfer to CPS

| Chain | Input → intermediate → output | Boundary to retain |
|---|---|---|
| (2.26) → (2.32), (2.37) | Radial Bianchi split → three constraints → conserved traceless $T$ | FG/Dirichlet, linearity |
| (2.56), (2.63), (2.73) → (4.7) | Radial data and Green functions → higher aspects → twistor moments | Zero modes and representative |
| (3.16) → (3.24) → (4.4) | Null reduction → contact form → response tensor | Patch, scale, contour, spin frame |
| (5.7), (5.9) → (5.10) | Weight-two monomials → Poisson bracket → celestial algebra | Wedge and meromorphic domain |
| (6.1) → (6.4)–(6.7) → (6.9)–(6.17) | Action variation → potential/flux → boundary current and charge | Self-dual action, linear spacetime map, non-integrability |
| (6.41) → (6.53)–(6.70) | Conformal map → ANEC density → primed edge charge | Real slice and vanishing endpoint flux |

For the vault, keep the source–response pair $(g_{ab},T^{ab})$ before restricting boundary conditions; restore $\langle T\rangle=-\ell T/(4\pi G_N)$; distinguish the boundary flux potential from the bulk Cauchy-surface symplectic form; retain $\Xi$ when testing integrability. A conserved moment on selected data is not by itself a globally defined Hamiltonian on the Dirichlet quotient. Neither matching this algebra nor identifying a null light transform supplies regional caps, corner pairings or a sewing theorem.

# Verification and retrieval audit

**Checked / Verified:** Mathematica reproduced (i) stress trace and the exact three conservation residuals; (ii) all ten CKV equations; (iii) the $Q_4$ radial-to-tangential numerator; (iv) both structure constants of (5.10) for symbolic labels; (v) the primed canonical bracket; (vi) the full cylinder metric pullback and ANEC density factor; (vii) the edge exponents; (viii) the explicit Čech representative counterexample. Results were respectively zero residuals/ten `True` values and moments $(1,0,0,0,0,0)$ for $s=-3,\ldots,2$. These are algebraic and coordinate checks, not a global reconstruction theorem.

**Assumptions:** $\ell>0$; smooth local fields; the source's signature, stress normalization and orientations; permitted contours and decay; fixed Green functions/zero modes; linearised spacetime reconstruction about AdS; self-dual nonlinear action where invoked.

**Source-derived:** bulk spinor Bianchi/FG derivation, the geometric Penrose theorem, the nonlinear twistor variation including the deformed volume form, and cited quantum CFT identifications. The relevant chains are reconstructed above but have not all been independently checked computationally.

**Not independently verified / Not verified:** global fillings, a full nonlinear Einstein symplectomorphism, common function spaces making every meromorphic generator Hamiltonian, quantum anomalies/central terms and full interacting-CFT Ward identities. **Failed:** no formula failure was established in the executed checks.

**Blocked:** official `/src/2609.28633v1` and `/e-print/2609.28633v1` both returned HTTP 406. The complete 53-page PDF succeeded, so this did not block the note. PDF extraction issued a font-type mismatch warning; rendered pages confirmed the key normalization and label chain. There is no computation-service blocker.

Reproducible checks use $\eta=\left(\begin{smallmatrix}-1&0&0\\0&0&1/2\\0&1/2&0\end{smallmatrix}\right)$, the displayed stress matrix, direct partial derivatives and `FullSimplify`. For the algebra use exponent vectors $(a-p+2,p+m-1,2-p-a,p-m-1)$ in $(\mu^0,\mu^1,\lambda_0,\lambda_1)$ and contract with the constant Poisson matrix. For the contour witness evaluate `Residue[q^(s+2), {q,0}]`.

Official sources: [abstract/version](https://arxiv.org/abs/2609.28633v1), [PDF](https://arxiv.org/pdf/2609.28633v1). Retrieval artifacts remain outside the vault under `/tmp/arxiv25/`; no attachment was added. Queue position 1/3 completed before retrieval of the next high-priority paper. Validation: required frontmatter, section map, evidence labels, same-day link policy, direct Markdown hygiene and Pandoc parsing passed.
