---
paper id: 2611.03780v1
title: Meet biform singletons in your area! Topological actions for edge modes
authors:
  - Calvin Y.-R. Chen
  - Euihun Joung
  - Karapet Mkrtchyan
publication date: 2026-11-02
abstract: |-
  Topological theories in auxiliary AdS space support biform singletons as edge modes. Fibre-valued Chern-Simons actions supplemented by asymptotic conditions admit covariant boundary reductions. Odd p gives chiral fields in 2p dimensions; even p gives electric-magnetic duality. A time gauge recovers prepotential formulations.
comments: "16 pages + appendices, 1 figure; official PDF has 28 pages including references"
url: https://arxiv.org/abs/2611.03780v1
summary: "An explicit parent-action to constrained-boundary-action construction for mixed-symmetry edge modes, useful as a local regional-reduction testbed."
tags: []
---

# What this construction provides

The useful object is a free topological parent action whose boundary variational equation is twisted self-duality. The parent action alone has too many boundary fields: the additional fall-off condition (2.14) selects the biform singleton sector. This matters for regional sewing, where boundary conditions and the gauge quotient help define the phase space.

Source-derived: the general singleton identification follows the reduction to known prepotential actions. The checks below establish selected local ingredients, not a global equivalence of phase spaces or quantum sewing rule.

Reason codes: T1-boundary, T1-Wald-CPS, T2-model, T3-math.

# Source map and reading route

The pinned official PDF and TeX were read throughout. Printed pages are one less than PDF page numbers. The 28-page PDF includes title, contents and references. Monograph depth is used because two technical appendices enter the central derivation.

| Cluster | Source coverage | Purpose and dependency |
|---|---|---|
| Representations and conventions | §1, printed pp. 2–6 | Rectangular diagrams, parity and two Hodge operations; fixes §2 signs |
| Parent theory | §§2.1–2.2, pp. 6–9 | Fibre module, pairing, flat connection, action, boundary equation and fall-off |
| Covariant reduction | §§3.1–3.3, pp. 9–12 | Solve the local bulk constraint; add auxiliary fields and singleton constraints; make the one-form dynamical |
| Time-gauge reduction | §§4.1–4.3, pp. 13–16 | Eliminate auxiliaries, solve conformal Cartan constraints, obtain Cotton/Schouten prepotentials |
| Scope | §5, pp. 17–18 | Free theory; arbitrary spin, interactions and a direct two-derivative covariant reduction remain future work |
| Fibre bookkeeping | A.1–A.2, pp. 18–20 | Hodge maps, generators and four curvature grades used in §3 |
| Constraint algebra | B.1–B.2, pp. 20–22 | Young identity for torsion and trace inverse for the Schouten field used in §4 |
| References | pp. 22–27 | External prepotential identifications; not independently reverified |

How to read this long paper: start with (2.11)–(2.14), then (3.7), (3.14)–(3.21), then (4.13)–(4.21). Appendix A fixes signs and radial weights; Appendix B supplies constraint elimination. §1 explains the representations; §5 identifies the limits.

# Two Hodge operations and the field space

Let \(M=\mathrm{AdS}_{2p+1}\), radius one, with conformal boundary \(\mathbb R^{1,2p-1}\). The generic mixed-symmetry formulas below use \(p\geq2\); \(p=1\) is a separate linearized Chern-Simons gravity limit, and negative-degree forms must be omitted.

$$
B\in\Omega^p(M,\mathcal V),\qquad
\mathcal V=\Lambda^{p+1}(\mathbb R^{2,2p}),\qquad
\langle A\wedge B\rangle
=\frac{1}{(p+1)!}A^{\underline I_1\cdots\underline I_{p+1}}
\wedge B_{\underline I_1\cdots\underline I_{p+1}} .
$$

The pairing is symmetric in fibre indices and graded in form degree. Underlined indices are fibre indices; boundary indices are \(\alpha=(0,i)\). The fibre lightcone metric has \(\eta_{\underline{+-}}=1\), \(\eta_{\underline{00}}=-1\), \(\eta_{\underline{ij}}=\delta_{ij}\). Antisymmetrization has unit weight.

Write \(J=\underline\star\) for fibre Hodge duality and \(\star\) for boundary spacetime duality:

$$
J^2=\star^2=(-1)^{p+1}\equiv q,\qquad
\langle JA,JB\rangle=\langle A,B\rangle,\qquad
\langle JA,B\rangle=q\langle A,JB\rangle .
$$

The fibre has two timelike directions; the boundary has one. Equal squares do not imply equal signature or adjointness. Odd \(p\) allows real \(J=\pm1\) eigenspaces. Even \(p\) requires complexification with \(J=\pm i\); a real field combines conjugate eigenspaces, paired off-diagonally by the complex-bilinear pairing.

A non-null compensator \(w\) splits \(\mathcal V=\mathcal W\oplus J\mathcal W\). Write

$$
A=A^{(1)}+J^{-1}A^{(2)},\qquad A^{(a)}\in\mathcal W.
$$

This real two-field split is not the \(J\)-eigenspace split.

# Flat auxiliary AdS connection and parent variation

The metric and connection are

$$
ds^2=\frac{dz^2+\eta_{\alpha\beta}dx^\alpha dx^\beta}{z^2},\qquad
D=d+\Omega,\qquad
\Omega=-\frac{dz}{z}J_{\underline{+-}}
-\sqrt2\,\frac{dx^\alpha}{z}J_{\underline{-\alpha}}.
$$

Here \(J_{\underline{IJ}}\) is a Lie-algebra generator, distinct from \(J=\underline\star\), with
\([J_{\underline{KL}},V_{\underline I}]
=\eta_{\underline{IL}}V_{\underline K}-\eta_{\underline{KI}}V_{\underline L}\).
The full AdS connection is flat, \(d\Omega+\Omega^2=0\), although its Levi-Civita part is not. Thus \(D^2=0\), \(DJ=JD\), and \(\delta_\Lambda B=D\Lambda\) preserves \(DB=0\). This is a fixed-background linear theory.

The parent action (2.11) is

$$
S=\int_M\langle JB\wedge DB\rangle
+\frac12\int_{\partial M}\langle B\wedge\star B\rangle.
$$

At fixed background,

$$
\delta S
=2q\int_M\langle\delta B\wedge JDB\rangle
+\int_{\partial M}\langle\delta B\wedge(\star B+JB)\rangle .
$$

The bulk coefficient is \(q-(-1)^p=2q\). The boundary coefficient is \((-1)^{p+p^2}=1\), with no extra \(q\). Consequently

$$
DB=0,\qquad \star B+JB=0\quad\hbox{on }\partial M.
$$

The boundary term is Weyl invariant because Hodge duality on a middle-degree form scales as \(e^{(2p-2p)\sigma}=1\). This does not itself prove local conformal covariance of conventional spin-two potentials.

The separate singleton restriction is

$$
v\wedge B=O(z),\qquad dv=0,\qquad v^2\ne0.
$$

Keep a radial regulator \(z=\epsilon>0\) in the parent variation. The source takes leading asymptotic coefficients and finite pairings as \(\epsilon\to0\); it does not construct renormalized CPS for arbitrary configurations.

# Local covariant boundary reduction

## Bulk multiplier and twisted self-duality

Put \(B=C+v\wedge\widetilde R\), with degrees \(p\) and \(p-1\). Integration by parts makes \(\widetilde R\) impose \(v\wedge DC=0\). For a locally trivial flat bundle and closed nonvanishing \(v\), solve \(C=DA+v\wedge P\). Define

$$
F=DA,\qquad H=F+v\wedge R,\qquad R=\widetilde R+P .
$$

Equation (3.7) becomes

$$
S_{\rm bdry}
=\frac12\int_{\partial M}
\langle H\wedge\star H+2v\wedge R\wedge JF\rangle .
$$

Equivalently the integrand is
\(\frac12\langle F\wedge\star F+2v\wedge R\wedge(JF+\star F)+v\wedge R\wedge\star(v\wedge R)\rangle\).

At fixed closed \(v\), the shifts are

$$
\delta A=D\alpha,\qquad
\delta R=v\wedge\rho,\qquad
\delta A=v\wedge\lambda,\quad\delta R=D\lambda .
$$

The last pair preserves \(H\). The \(R\) equation is \(v\wedge(JH+\star H)=0\). Setting \(\mathcal E=JH+\star H\), one has \(\star\mathcal E=J\mathcal E\), so both \(v\wedge\mathcal E\) and \(v\wedge\star\mathcal E\) vanish. Non-nullness gives \(\mathcal E=0\). The \(A\) equation \(D(\star H-JH)=0\) then implies \(v\wedge DR=0\). Locally \(R=D\lambda+v\wedge\rho\) is removable and

$$
\star DA+JDA=0 .
$$

This is local elimination. Flatness does not remove cohomology or ensure that gauge parameters at corners generate null directions.

## Radial grades and singleton constraints

Appendix A gives four grades of \(DA\). Define leading coefficients by

$$
A_{-\alpha_1\cdots\alpha_p}\sim z\,\widehat A_{-\alpha_1\cdots\alpha_p},\quad
A_{+\alpha_1\cdots\alpha_p}\sim z^{-1}\widehat A_{+\alpha_1\cdots\alpha_p},\quad
A_{\alpha_1\cdots\alpha_{p+1}},A_{-+\alpha_1\cdots\alpha_{p-1}}
\sim2^{-1/2}z^0\widehat A .
$$

These are asymptotic coefficients, not exact finite-\(z\) equalities. For example (3.13),

$$
\begin{aligned}
zF_{+\alpha_1\cdots\alpha_p}
&=d\widehat A_{+\alpha_1\cdots\alpha_p}
-dx^\beta\wedge\widehat A_{\beta\alpha_1\cdots\alpha_p}
-p\,dx_{[\alpha_1}\wedge\widehat A_{-+\alpha_2\cdots\alpha_p]}+\cdots,\\
z^{-1}F_{-\alpha_1\cdots\alpha_p}
&=d\widehat A_{-\alpha_1\cdots\alpha_p}+\cdots .
\end{aligned}
$$

The two weight-zero curvatures contain algebraic couplings to \(\widehat A_-\). The fall-off kills leading \(+\), \(-+\), and all-\(\alpha\) grades, leaving the \(-\) grade free:

$$
v\wedge\widehat F_+=v\wedge\widehat F_{-+}
=v\wedge\widehat F_{\alpha_1\cdots\alpha_{p+1}}=0 .
$$

Subleading restrictions on \(F_+\) do not enter the leading finite pairing: \(+\) pairs with \(-\), whose leading weight is \(z\). This uses the stated expansion and excludes uncontrolled logarithmic terms.

Add \(S_{\rm constr}=\int\langle v\wedge\chi\wedge\widehat F\rangle\), with \(\chi^{-\alpha_1\cdots\alpha_p}=0\). The upper-index omission leaves lower-index \(F_-\) unconstrained; raising/lowering must not be suppressed in applying this restriction.

## Auxiliary one-form and Lorentz covariance

Add \(S_v=\int\mu\wedge dv\), \(\deg\mu=2p-2\). The total action is \(S_{\rm bdry}+S_{\rm constr}+S_v\).

Source-derived §3.3 chain: the \(R\) equation and multiplier constraints give \(H_\parallel=0\), where \(\parallel\) denotes the three constrained fibre grades. The multiplier equation becomes \(v\wedge D\chi=0\), with a locally pure-gauge solution. On \(dv=0\), write \(v=da\). The \(a\) equation is

$$
d\langle R\wedge(\star H+JH)-\chi\wedge H\rangle=0 .
$$

Both terms vanish by the other equations. The source infers a gauge shift of \(a\) with compensating transformations. The full off-shell transformation of all restricted multipliers is not printed. A complete Noether-identity/constraint calculation was not independently performed. The later gauge \(v=dt\) also requires a timelike local branch: timelike and spacelike non-null configurations cannot be identified by a continuous everywhere-non-null shift.

# Time gauge and conformal Cartan reduction

## Eliminating \(R\)

Take \(v=dt\), \(\partial M=\mathbb R_t\times\Sigma\), \(\Sigma=\mathbb R^{2p-1}\), and \(\iota_{\partial_t}A=\iota_{\partial_t}R=0\). Write \(F=dt\wedge F_t+F_\Sigma\), \(F_t=D_tA\), \(F_\Sigma=D_\Sigma A\). Spatial Hodge duality gives

$$
\star(dt\wedge\alpha+\beta)=-*\alpha+(-1)^pdt\wedge*\beta.
$$

Equation (4.4) is

$$
S_{\rm bdry}=\int dt\wedge\left\langle
\frac12F_\Sigma\wedge*F_\Sigma
-\frac12(F_t+R)\wedge*(F_t+R)
+R\wedge JF_\Sigma\right\rangle .
$$

Eliminating \(R\) yields (4.5),

$$
S=\int dt\wedge\langle F_\Sigma\wedge*F_\Sigma-F_t\wedge JF_\Sigma\rangle .
$$

The constraints retain only lower \(-\) fibre grade in \(F_\Sigma\). Its self-pairing vanishes because \(\eta^{--}=0\), while \(J\) preserves the grade. Thus the first term vanishes on the constrained space. Energy need not vanish: the time connection in \(F_t\) supplies the later spatial-derivative term.

## Spatial grades and gauge symmetry

Choose \(w=V_0\). For each of the two real copies, abbreviate \(Z=A_+\), \(S=A_-\), \(\omega=A_{i_1\cdots i_p}\), \(\phi=A_{-+}\), suppressing remaining fibre indices. Define

$$
(e\lrcorner X)_{i_1\cdots i_{m-1}}=dx^j\wedge X_{j i_1\cdots i_{m-1}},
\quad
(e\wedge X)_{i_1\cdots i_{m+1}}
=(m+1)dx_{[i_1}\wedge X_{i_2\cdots i_{m+1}]} .
$$

All fields are \((p-1)\)-forms on \(\Sigma\). The curvatures (4.13) are

$$
F_+=dZ-e\lrcorner\omega-e\wedge\phi,\quad
F_{-+}=d\phi-2e\lrcorner S,\quad
F_\cdot=d\omega+2e\wedge S,\quad F_-=dS .
$$

Gauge transformations are
\(\delta Z=d\xi-e\lrcorner\rho-e\wedge\sigma\),
\(\delta\omega=d\rho+2e\wedge\kappa\),
\(\delta\phi=d\sigma-2e\lrcorner\kappa\),
\(\delta S=d\kappa\).
Use \(\kappa\) to remove \(\phi\), then \(\rho\) to retain only Young type \([p-1,p-1]\) in \(Z\). The residual symmetry is

$$
\delta Z=\Pi d\xi-e\wedge\sigma .
$$

For \(p=2\), \(Z\) is a symmetric metric prepotential with linearized diffeomorphism and Weyl shifts.

## Torsion, generalized Einstein and Schouten tensors

The three vanishing curvature grades yield

$$
\omega=(dZ)^\top,\qquad e\lrcorner S=0,\qquad
R+2e\wedge S=0,\quad R=d\omega .
$$

Appendix B.1 gives the Young identity ensuring that the transpose formula solves torsion, including the factor \(p\) from exterior differentiation. The second equation makes \(S\) rectangular as well.

In \(2p-1\) spatial dimensions, \(R\) is pure trace. Set

$$
G=*\underline *R,\qquad
\gamma^{-1}S=*\underline *(e\wedge S),\qquad
S=-\frac12\gamma G .
$$

The spatial fibre dual \(\underline *\) differs from \(J\). For \(p=2\),
\(\gamma^{-1}S=\delta\,\mathrm{tr}S-S\), hence
\(\gamma G=\frac12\delta\,\mathrm{tr}G-G\). This fixes the source's normalization of \(G\); another convention for the Einstein tensor cannot be silently substituted.

Appendix B defines
\(Y=\Delta S=\delta_{[i_1}^{[j_1}S_{i_2\cdots i_p]}{}^{j_2\cdots j_p]}\),
so \(e\wedge S=p^2Y\). Let \(Y^{(r)}\) denote the \((r-1)\)-fold trace. Its inverse (B.14) is

$$
S_{i_2\cdots i_p}{}^{j_2\cdots j_p}
=\sum_{n=0}^{p-1}(-1)^n\binom{p}{n+1}^2
\delta_{[i_2}^{[j_2}\cdots\delta_{i_{n+1}}^{j_{n+1}}
Y^{(n+2)}_{i_{n+2}\cdots i_p]}{}^{j_{n+2}\cdots j_p]} .
$$

The \((m+1)\)-trace recurrence divides by \((m+1)^2\); iteration produces the squared binomial coefficients. The checks implement traces and normalized insertions independently.

## Final action

Only \(Z^{(a)}\) remains. Define \(C^{(a)}=dS^{(a)}\) and
\(\widehat\epsilon_{12}=1\), \(\widehat\epsilon_{21}=(-1)^{p+1}\).
The time connection gives
\((F_t^{(a)})_+=\partial_tZ^{(a)}+\widehat\epsilon_{ab}\underline *\omega^{(b)}\).
Then (4.21) is

$$
S=-\int dt\wedge\left[
\widehat\epsilon_{ab}\langle\partial_tZ^{(a)}\wedge dS^{(b)}\rangle
+(-1)^p\delta_{ab}\langle S^{(a)}\wedge\underline *R^{(b)}\rangle
\right].
$$

The first term supplies the prepotential symplectic structure; the second is an Einstein–Schouten term with four spatial derivatives. This explains the nonzero dynamics despite the vanishing explicit \(F_\Sigma^2\) term.
Odd \(p\) separates into chiral sectors; even \(p\) has \(SO(2)\) rotations of the real pair. Matching overall normalization to external prepotential actions remains Source-derived.

# Translation into regional CPS language

At fixed flat connection, the bulk variation gives a local potential

$$
\Theta_M=(-1)^p\langle JB\wedge\delta B\rangle,\qquad
\omega_M(\delta_1,\delta_2)
=2\langle\delta_2B\wedge J\delta_1B\rangle .
$$

The convention here is \(\omega=\delta_1\Theta(\delta_2)-\delta_2\Theta(\delta_1)\). The second expression follows from \(J^\dagger=qJ\) and graded exchange. Reversing that convention reverses the sign. The quadratic boundary term changes the boundary variational equation. This local translation is not a source-derived calculation of surface charges.

For regions with corners, keep \(\langle\delta B\wedge(\star B+JB)\rangle\), singleton constraints and corner terms together before declaring \(D\)-exact directions null. The source does not compute a reduced regional charge algebra or sewing map. Its reusable object is the explicit parent-action/constraint-elimination chain.

# Verification and remaining boundaries

Verified:

| Evidence | Executed check and result | Scope |
|---|---|---|
| Checked, xAct | Vector matrices of \(\mathfrak{so}(2,4)\), lightcone norms \((0,0,1)\): all radial/tangential components of \(d\Omega+\Omega^2\) vanish | \(p=2\), vector representation |
| Checked, Sage | Fibre Hodge matrices satisfy \(J^2=(-1)^{p+1}\), \(J^TGJ=G\) | \(p=1,2,3\), exact dimensions 6, 20, 70 |
| Checked, graded derivation/Mathematica | Variation coefficients \(2(-1)^{p+1}\), \(1\), and orthogonality of \(\widehat\epsilon\) | Algebraic parity identity |
| Checked, Sage | Appendix B torsion substitution on decomposable rectangular tensors with a spatial Fourier covector | \(p=2,3,4\): 9, 100, 1225 zero residuals; finite witnesses |
| Checked, Sage | Independently built \(\Delta\), traces and insertions reproduce (B.14) on deterministic tensors | \(p=2,3,4\): 9, 100, 1225 zero residuals; full \(p=3\) map rank 100 |
| Checked, Mathematica | Squared-binomial coefficients equal the trace-recurrence products | All coefficients for \(p=2,\ldots,8\) |
| Checked, xAct tool using explicit spatial matrices | Generic 3D Fourier Cotton tensor is symmetric, traceless, transverse and vanishes for diffeomorphism/Weyl perturbations | \(p=2\), arbitrary symbolic wavevector and metric amplitudes |
| Visually confirmed | PDF pages 7, 8, 10, 17, 23 | Pairing/Hodge signs, parent variation, reduction, final action and trace recurrence agree with TeX |

Assumptions: fixed AdS/background conformal metric; smooth local fields; \(dv=0\), \(v^2\ne0\); trivial local \(D\)-cohomology; stated fall-offs; integration by parts with compact support or vanishing endpoint/corner terms. Time gauge uses the timelike branch.

Not verified: complete off-shell auxiliary-field gauge transformations; global cohomology and zero modes; finite-corner gauge quotient; all-\(p\) representation equivalence; normalization against external papers; quantum positivity, unitarity or sewing; interacting extensions. Finite matrix examples do not prove the general representation theorem.

Blocked: no retrieval or computation-service blocker. A global sewing/charge audit needs explicit corner conditions, admissible gauge parameters and a regulated symplectic domain, not defined by this source.

Failed: no source equation was contradicted by accepted checks. An initial check used two timelike vectors to construct a lightcone pair; correcting the basis gave zero curvature. A preliminary integration-by-parts bookkeeping expression inserted an extra \(q\); direct graded rederivation removed it. These were check-setup errors.

Official sources: [abstract](https://arxiv.org/abs/2611.03780v1), [PDF](https://arxiv.org/pdf/2611.03780v1), [TeX](https://arxiv.org/src/2611.03780v1). Artifacts are outside the vault in the run's temporary directory. No PDF attachment was added.
