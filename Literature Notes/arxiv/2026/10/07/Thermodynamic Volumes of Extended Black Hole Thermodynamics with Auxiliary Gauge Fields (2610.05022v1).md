---
paper id: 2610.05022v1
title: "Thermodynamic Volumes of Extended Black Hole Thermodynamics with Auxiliary Gauge Fields"
authors:
  - Zili Mou
  - Yu Tian
  - Hongbao Zhang
publication date: 2026-10-04
abstract: |-
  Couplings are promoted to scalar fields with auxiliary top-form potentials. The paper derives an auxiliary-field-independent bulk-plus-boundary expression for extended thermodynamic volumes and shows how a selected auxiliary gauge rewrites it as a horizon integral.
comments: "7 pages, version to appear in PLB"
url: https://arxiv.org/abs/2610.05022v1
summary: "Separates coupling-source terms, boundary flux and gauge-normalized horizon potentials in extended Iyer-Wald thermodynamics."
tags: []
---

# Coupling variations as directions in an enlarged solution space

The reusable result is a gravitational surface-charge identity with a coupling source term,

$$
d\mathbf k_\xi=-\delta\alpha^i\,\iota_\xi\mathbf L_i,
\qquad
\mathcal V_i=-\left[\int_\Sigma\iota_\xi\mathbf L_i\right]+\mathcal V_i^{(2)}.
$$

Here the square brackets mean black-hole minus reference-background quantities, including their matched cutoff normalization. The boundary coefficient $\mathcal V_i^{(2)}$ is essential when the couplings vary. A horizon-only auxiliary-potential formula is a representation of this result in a selected gauge, with explicit global and regularity assumptions; it is not an arbitrary-gauge identity.

**Status:** completed reconstruction of Sections I–IV and Appendices A–B from the official v1 PDF and TeX. Source-derived statements, direct derivations and symbolic checks are separated below. Reasons: `T1-Wald-CPS; T1-charge; T1-boundary`.

## Source map and reading route

| Source | Role and dependencies |
| --- | --- |
| I, Eqs. (1)–(2), p. 1 | Distinguishes the proposed horizon potential from the bulk-plus-boundary thermodynamic volume. |
| II, Eqs. (3)–(15), p. 2 | Fixes the Iyer–Wald and background-subtraction conventions; the boundary flux is the input to Section III. |
| III, Eqs. (16)–(31), p. 3 | Promotes couplings, derives auxiliary equations and charges, and compares original and enlarged presymplectic currents. |
| III, Eqs. (32)–(39), p. 4 | Derives the extended law, resolves the boundary one-form along coupling directions, and fixes the horizon representation. |
| IV, p. 4 | Summarizes the pure-gravity result; matter coupling is proposed future work. |
| A, Eqs. (A1)–(A9), p. 5 | Gives sufficient exterior topology and global-flow conditions for the gauge choice. |
| B, Eqs. (B1)–(B14), pp. 5–6 | Tests subtraction, volume terms and residual gauges on rotating BTZ in new massive gravity. |
| References and notes, pp. 6–7 | Footnote 26 requires an exterior limit at the bifurcation surface; footnote 27 distinguishes metric stationarity from auxiliary-field stationarity. |

Read II and III first, then B as a normalization check, and A before using the horizon formula on a new topology. The paper is seven pages, but both appendices are part of the argument, not optional evidence.

## Objects, form degrees and conventions

In $n$ spacetime dimensions, $\mathbf L_0$ and $\mathbf L_i$ are covariant $n$-forms depending on the metric and curvature. Couplings $\alpha^i$ are initially spacetime constants. The enlarged fields are $(g_{ab},\alpha^i(x),\mathbf A_i)$, where $\mathbf A_i$ is an $(n-1)$-form and its gauge parameter $\boldsymbol\Lambda_i$ is an $(n-2)$-form. Repeated coupling indices are summed. $d$ is the spacetime differential and $\delta$ is the field-space differential; wedge products between variations refer to field space.

The source uses a variation with respect to the **covariant** metric:

$$
\delta\mathbf L_j=\boldsymbol\epsilon E_j^{ab}\delta g_{ab}+d\boldsymbol\Theta_j.
$$

$\boldsymbol\Theta_j$ has spacetime degree $n-1$ and field-space degree one. $X_\xi$ is the field-space vector implementing $\mathcal L_\xi g$, whereas $\iota_\xi$ contracts spacetime forms. The horizon generator is $\xi=\partial_t+\Omega_H\partial_\phi$. In each linearized first-law identity it is held fixed at the background value; a field-dependent-generator convention would require the usual subtraction involving $Q_{\delta\xi}$ and is not silently used here.

Take $\partial\Sigma=\mathcal C-\mathcal B$, with $\mathcal C$ the outer cutoff section and $\mathcal B$ the bifurcation section. The black-hole and reference boundary geometries are matched before taking the cutoff to infinity. The source's claim of vanishing subtracted fixed-coupling flux uses its referenced background-subtraction prescription. It is a boundary-condition input, not an identity for every asymptotic ensemble.

## Fixed-coupling Iyer–Wald identity and boundary flux

For $\mathbf L=\mathbf L_0+\alpha^i\mathbf L_i$, define

$$
\boldsymbol\Theta=\boldsymbol\Theta_0+\alpha^i\boldsymbol\Theta_i,
\quad
\mathbf J_\xi=X_\xi\mathbin\cdot\boldsymbol\Theta-\iota_\xi\mathbf L,
\quad
\mathbf J_\xi=\mathbf C_\xi+d\mathbf Q_\xi,
\quad
\mathbf k_\xi=\delta\mathbf Q_\xi-\iota_\xi\boldsymbol\Theta.
$$

With $c_\xi^a=-2\xi^cE^a{}_c$ and $\mathbf C_\xi=\iota_{c_\xi}\boldsymbol\epsilon$, the source's Eq. (8) reads

$$
d\mathbf k_\xi=-X_\xi\mathbin\cdot\boldsymbol\omega
-\iota_\xi\boldsymbol\epsilon\,E^{ab}\delta g_{ab}-\delta\mathbf C_\xi.
$$

On a stationary solution, for a linearized solution at fixed couplings, every term on the right vanishes. Stokes' theorem therefore gives

$$
\int_\mathcal C\mathbf k_\xi=\int_\mathcal B\mathbf k_\xi=T\delta S,
\qquad T=\frac\kappa{2\pi},\qquad S=\frac{2\pi}{\kappa}\int_\mathcal B\mathbf Q_\xi.
$$

On the timelike outer boundary $\Gamma$, decompose

$$
\boldsymbol\Theta|_\Gamma=-\delta\mathbf B+d\mathbf C+\mathbf F.
$$

Here $\mathbf B$ is the boundary action form, $\mathbf C$ a corner-potential form, and $\mathbf F$ the remaining boundary field-space one-form; $\mathbf C$ is unrelated to the constraint $\mathbf C_\xi$. Covariance and field-space Cartan's identity give, on the stationary background,

$$
\mathbf k_\xi
=\delta(\mathbf Q_\xi+\iota_\xi\mathbf B-X_\xi\mathbin\cdot\mathbf C)
+d(\iota_\xi\mathbf C)-\iota_\xi\mathbf F.
$$

Integrating over a closed outer section removes the exact term. Thus

$$
\delta H_\xi-\int_\infty\iota_\xi\mathbf F=T\delta S,
\qquad
\delta H^0_\xi-\int_\infty\iota_\xi\mathbf F^0=0.
$$

The reference has no inner boundary. Subtracting gives the ordinary law only if the subtracted flux vanishes on the allowed fixed-coupling variations. This explains why one cannot simply drop $\mathbf F$ when extending those variations.

## Enlarged action, auxiliary charge and the source term

The construction is

$$
\mathbf L'=\mathbf L_0+\alpha^i(x)(\mathbf L_i-d\mathbf A_i).
$$

The elementary integration by parts is

$$
-\alpha^i d\delta\mathbf A_i
=d\alpha^i\wedge\delta\mathbf A_i-d(\alpha^i\delta\mathbf A_i).
$$

Promoting $\alpha^i$ also changes the metric integration by parts:

$$
\alpha^i d\boldsymbol\Theta_i
=d(\alpha^i\boldsymbol\Theta_i)-d\alpha^i\wedge\boldsymbol\Theta_i,
\qquad
d\alpha^i\wedge\boldsymbol\Theta_i
=\boldsymbol\epsilon D^{ab}\delta g_{ab}+d\boldsymbol\Psi.
$$

Consequently Eqs. (18)–(19) give

$$
\begin{aligned}
\delta\mathbf L'&=\boldsymbol\epsilon(E^{ab}-D^{ab})\delta g_{ab}
+d\alpha^i\wedge\delta\mathbf A_i+(\mathbf L_i-d\mathbf A_i)\delta\alpha^i
+d\boldsymbol\Theta',\\
\boldsymbol\Theta'&=\boldsymbol\Theta-\alpha^i\delta\mathbf A_i-\boldsymbol\Psi.
\end{aligned}
$$

The auxiliary equations set $d\alpha^i=0$ and $d\mathbf A_i=\mathbf L_i$. With a representative in which $D$ and $d\Psi$ vanish when $d\alpha=0$, the metric equation reduces to the original equation with a freely chosen constant coupling. The enlarged solution space contains the family of original fixed-coupling solution spaces.

**Global qualification:** the sentence after Eq. (19) infers existence and uniqueness up to an exact gauge shift from $d\mathbf L_i=0$. Closure gives a local primitive. Globally existence needs $[\mathbf L_i]=0\in H^n(M)$, and two primitives differ by a closed $(n-1)$-form, which need not be exact. Appendix A supplies sufficient conditions for the exterior class used later. Keep closed-form sectors when those conditions fail; do not identify the global reduced spaces without them.

For $\delta_\Lambda\mathbf A_i=d\boldsymbol\Lambda_i$ and fixed other fields,

$$
\mathbf J'_\Lambda=-\alpha^i d\boldsymbol\Lambda_i
=d\alpha^i\wedge\boldsymbol\Lambda_i+d(-\alpha^i\boldsymbol\Lambda_i),
\qquad
\mathbf Q_\Lambda=-\alpha^i\boldsymbol\Lambda_i.
$$

This is the auxiliary gauge charge of Eq. (23). The Bianchi identity is $d^2\alpha^i=0$. Boundary gauge transformations with nonzero charge need not be degeneracies of a regional presymplectic form.

For the diffeomorphism comparison, write $\boldsymbol\omega_g=\delta\Theta_0+\alpha^i\delta\Theta_i$ so that differentiation of the couplings is explicit:

$$
\boldsymbol\omega'=\boldsymbol\omega_g
+\delta\alpha^i\wedge\boldsymbol\Theta_i
-\delta\alpha^i\wedge\delta\mathbf A_i-\delta\boldsymbol\Psi.
$$

The two useful off-shell comparisons are

$$
\begin{aligned}
\mathbf J'_\xi-\mathbf J_\xi
&=-\alpha^i d(\iota_\xi\mathbf A_i)-X_\xi\mathbin\cdot\boldsymbol\Psi,\\
\mathbf C'_\xi-\mathbf C_\xi
&=2\xi^cD^a{}_c\boldsymbol\epsilon_{a\cdots}
+d\alpha^i\wedge\iota_\xi\mathbf A_i.
\end{aligned}
$$

Subtracting these gives $d(Q'_\xi-Q_\xi)$. Varying it and subtracting $d\iota_\xi(\Theta'-\Theta)$ cancels the terms proportional to $\alpha^i\delta A_i$. The surviving coupling term is $-\delta\alpha^i d(\iota_\xi A_i)$; the remaining $D$, $d\alpha$ and $\Psi$ terms combine with the enlarged fundamental identity (27). On the enlarged solution space and its tangent variations, Eq. (31) reduces to

$$
\boxed{d\mathbf k_\xi=-\delta\alpha^i\,\iota_\xi d\mathbf A_i
=-\delta\alpha^i\,\iota_\xi\mathbf L_i.}
$$

Only the metric needs to be stationary at this step. $X_\xi\cdot\omega_g$ and $X_\xi\cdot\Theta_i$ vanish because they contain metric variations. Imposing $\mathcal L_\xi A_i=0$ here would unnecessarily restrict the derivation.

There is a second direct check: varying the original action while allowing constant coupling variations gives

$$
\delta\mathbf L=E\delta g+d\Theta+\mathbf L_i\delta\alpha^i.
$$

Varying $J_\xi$ at a stationary background and using $\mathcal L_\xi\Theta=d\iota_\xi\Theta+\iota_\xi d\Theta$ immediately produces the same $-\iota_\xi L_i\delta\alpha^i$ term. This verifies the sign and explains why the auxiliaries disappear from the physical volume.

## Extended first law and the gauge-fixed horizon expression

Integrating the boxed identity and subtracting the reference yields

$$
\delta[H_\xi]=T\delta S
-\delta\alpha^i\left[\int_\Sigma\iota_\xi\mathbf L_i\right]
+\left[\int_\infty\iota_\xi\mathbf F\right].
$$

The final one-form annihilates all allowed directions with $\delta\alpha^i=0$. On a regular patch where the independent couplings are coordinates transverse to the fixed-coupling fibers, linear algebra gives

$$
\left[\int_\infty\iota_\xi\mathbf F\right]=\mathcal V_i^{(2)}\delta\alpha^i,
\qquad
\mathcal V_i^{(1)}=-\left[\int_\Sigma\iota_\xi\mathbf L_i\right],
\qquad
\delta[H_\xi]=T\delta S+(\mathcal V_i^{(1)}+\mathcal V_i^{(2)})\delta\alpha^i.
$$

At singular points of the coupling parametrization, coefficient uniqueness is not automatic. For rotation the fixed-generator interpretation is $\delta[H_\xi]=\delta M-\Omega_H\delta J$, rather than a total variation that also differentiates $\Omega_H$.

Now choose stationary auxiliary potentials. Cartan's identity becomes

$$
\iota_\xi\mathbf L_i=\iota_\xi d\mathbf A_i=-d(\iota_\xi\mathbf A_i),
$$

hence Eq. (39) is

$$
\mathcal V_i=\mathcal V_i^{(2)}
+\left[\int_\infty\iota_\xi\mathbf A_i\right]
-\int_\mathcal B\iota_\xi\mathbf A_i.
$$

The residual gauge is chosen to cancel the first two terms. Only after this choice does

$$
\mathcal V_i=-\int_\mathcal B\iota_\xi\mathbf A_i
$$

hold. A stationary shift $A_i\mapsto A_i+da_i$ changes the outer and inner potential integrals by equal amounts, so the full expression stays fixed, whereas the isolated horizon term is gauge dependent before normalization. Since $\xi=0$ at the bifurcation surface, a smooth $A_i$ would make that term zero. The source explicitly treats nonzero values as exterior limits of a potentially nonsmooth potential. This gauge should not be imposed as a smooth bifurcation-surface boundary condition.

## Appendix A: the global gauge construction

Assume a global exterior product flow $M\simeq\mathbb R\times\Sigma$ with $\xi=\partial_t$, a global transversal $\Sigma$, and smooth data along the complete flow. Sufficient conditions are

$$
H^{n-1}(\Sigma;\mathbb R)=0,
\qquad
[\mathcal C]\ne0\in H_{n-2}(\Sigma;\mathbb R).
$$

The product has $H^n(M)=H^n(\Sigma)=0$, so $L_i=dB_i$. Stationarity makes $\mathcal L_\xi B_i$ closed, and $H^{n-1}(M)=0$ makes it $d\beta_i$. Solve the transport equation

$$
\mathcal L_\xi\gamma_i=-\beta_i,
\qquad
\gamma_i(t,x)=-\int_0^t\beta_i(s,x)\,ds
$$

in the product trivialization. Then $A_i=B_i+d\gamma_i$ is stationary. The nontrivial cycle supplies a closed form $\Omega$ with $\int_\mathcal C\Omega\ne0$. Set $a=t\pi^*\Omega$; explicitly

$$
da=dt\wedge\pi^*\Omega,
\qquad \iota_\xi da=\pi^*\Omega,
\qquad \mathcal L_\xi da=0.
$$

Multiplying $a$ by a constant can therefore tune the outer potential integral. For $\Sigma=\mathbb R\times\mathcal C$ with compact connected oriented $\mathcal C$, the conditions follow from homotopy invariance and its nonzero real fundamental class. This argument applies to the exterior; it does not extend the global time function through the fixed points of the horizon generator.

## Appendix B: BTZ in new massive gravity

Use $G=1$, $\phi\sim\phi+2\pi$, and

$$
\begin{aligned}
ds^2&=-\Delta dt^2+\frac{dr^2}{\Delta}+r^2\left(d\phi-\frac{j}{2r^2}dt\right)^2,
&\Delta&=-m+\frac{r^2}{l^2}+\frac{j^2}{4r^2},\\
\mathbf L&=\frac1{16\pi}\left[R-2\Lambda-\beta\left(\frac38R^2-R_{\mu\nu}R^{\mu\nu}\right)\right]\boldsymbol\varepsilon,
&\boldsymbol\varepsilon&=r\,dt\wedge dr\wedge d\phi.
\end{aligned}
$$

**Checked repair:** the sentence after (B2) prints $\Lambda=-1/l^2+\beta/(4l^2)$. The constant-curvature field equation instead requires

$$
\boxed{\Lambda=-\frac1{l^2}+\frac{\beta}{4l^4}.}
$$

For $R_{ab}=-2g_{ab}/l^2$, $R=-6/l^2$ and $R_{ab}R^{ab}=12/l^4$, the coefficient of the constant-curvature equation is $\Lambda+1/l^2-\beta/(4l^4)$. The printed relation leaves $\beta(l^2-1)/(4l^4)$ in formal algebra and is dimensionally inconsistent for $[\beta]=\text{length}^2$. Both the TeX and rendered p. 5 contain the typo. Equation (B3) also prints $r^2d\phi$; the reference metric requires $r^2d\phi^2$, confirmed by its line-element degree and the determinant used in (B5).

With $\Delta_0=r^2/l^2$ and $\lambda(r_c)=\sqrt{\Delta(r_c)/\Delta_0(r_c)}$, use

$$
ds_0^2=-\Delta_0\lambda(r_c)^2dt^2+\frac{dr^2}{\Delta_0}+r^2d\phi^2.
$$

The two coupling coordinates and densities are

$$
\alpha^\Lambda=-\frac\Lambda{8\pi},\qquad
\alpha^\beta=-\frac\beta{16\pi},\qquad
\mathbf L_\Lambda=\boldsymbol\varepsilon,\qquad
\mathbf L_\beta=\frac{3}{2l^4}\boldsymbol\varepsilon.
$$

The subtraction is finite because $r_c^2(1-\lambda)\to ml^2/2$. It gives

$$
\begin{aligned}
\mathcal V_\Lambda^{(1)}&=\pi r_h^2-\frac{\pi ml^2}{2},&
\mathcal V_\beta^{(1)}&=\frac{3\pi}{2l^4}\left(r_h^2-\frac{ml^2}{2}\right),\\
\mathcal V_\Lambda^{(2)}&=\frac{\pi ml^2(2l^2+\beta)}{2(2l^2-\beta)},&
\mathcal V_\beta^{(2)}&=-\frac{\pi m(2l^2+\beta)}{4l^2(2l^2-\beta)},\\
\mathcal V_\Lambda&=\pi r_h^2+\frac{\pi m\beta l^2}{2l^2-\beta},&
\mathcal V_\beta&=\frac{3\pi r_h^2}{2l^4}-\frac{\pi m(4l^2-\beta)}{2l^2(2l^2-\beta)}.
\end{aligned}
$$

The $\mathcal V^{(2)}$ expressions are taken from (B7)–(B8); the source imports their general boundary-flux calculation from its references. Their sum and thermodynamic consistency are independently checked here, without claiming a fresh derivation of that full boundary-flux prescription.

Choose

$$
\begin{aligned}
\mathbf A_\Lambda&=\left(-\frac{r^2}{2}+c_\Lambda\right)dt\wedge d\phi,
&c_\Lambda&=\frac{m\beta l^2}{2\beta-4l^2},\\
\mathbf A_\beta&=\left(-\frac{3r^2}{4l^4}+c_\beta\right)dt\wedge d\phi,
&c_\beta&=\frac{m(\beta-4l^2)}{4l^2(\beta-2l^2)}.
\end{aligned}
$$

The constants come from $a_i=c_i t\,d\phi$. Since $d(f(r)dt\wedge d\phi)=-f'(r)dt\wedge dr\wedge d\phi$, these fields reproduce the two $L_i$. Pulling $\iota_\xi A_i$ back to a constant-time horizon circle kills its $dt$ part. Thus

$$
-\int_\mathcal B\iota_\xi A_\Lambda=\pi r_h^2-2\pi c_\Lambda=\mathcal V_\Lambda,
\qquad
-\int_\mathcal B\iota_\xi A_\beta=\frac{3\pi r_h^2}{2l^4}-2\pi c_\beta=\mathcal V_\beta.
$$

An independent first-law consistency test uses the constant-curvature charge multiplier $\chi=1+\beta/(2l^2)$, obtained from $\partial f/\partial R_{ab}=\chi g^{ab}$ on this background. With massless-BTZ subtraction,

$$
M=\frac{\chi m}{8},\quad J=\frac{\chi j}{8},\quad
S=\frac{\chi\pi r_h}{2},\quad
m=\frac{r_h^2}{l^2}+\frac{j^2}{4r_h^2},\quad
T=\frac{2r_h/l^2-j^2/(2r_h^3)}{4\pi},\quad
\Omega_H=\frac{j}{2r_h^2}.
$$

Mathematica returns four zero coefficients for

$$
dM-\Omega_HdJ-TdS-\mathcal V_\Lambda d\alpha^\Lambda-\mathcal V_\beta d\alpha^\beta
$$

in independent variations $(dr_h,dj,dl,d\beta)$. This tests the repaired coupling relation and both volume terms. It does not address the critical locus $2l^2=\beta$, at which the parametrization by the bare couplings degenerates, or impose stability/unitarity constraints on NMG.

## Translation to the vault's boundary and regional questions

The immediate reusable object is the sourced $d k_\xi$ equation together with the boundary one-form $[\int\iota_\xi F]$. It distinguishes changing the bulk theory's coupling from varying a state in one fixed theory. In a regional calculation, specify the boundary action, corner potential and permitted coupling directions before asking whether $H_\xi$ is integrable.

The auxiliary sector adds $-\delta\alpha^i\wedge\delta A_i$ to the presymplectic current. Its equation $d\alpha^i=0$ makes $\alpha^i$ a common constant on a connected glued region. Matching those constants is necessary for a smooth joined solution; the paper does not prove a quantum sewing rule, establish an edge-mode Hilbert space, or classify its global flux sectors. In particular, a residual gauge transformation used to fix a thermodynamic potential need not be a null direction when a regional boundary is retained.

## Verification ledger

| Status | Target and result | Exact scope |
| --- | --- | --- |
| Source-derived | All sections, (18)–(31), the boundary prescription behind (B7), and the application of de Rham duality in A reconstructed from PDF/TeX. | Source reading is not a computation certificate. |
| Checked — direct derivation | Integration by parts for the enlarged action; $Q_\Lambda=-\alpha^i\Lambda_i$; independent coupling variation gives $d k_\xi=-\delta\alpha^i\iota_\xi L_i$; stationary Cartan/Stokes conversion and residual-gauge cancellation. | Covariant Lagrangian, fixed $\xi$, on-shell background and tangent variations, stated orientations. |
| Checked — xAct | Three-dimensional Einstein-space Ricci contraction and constant-curvature NMG equation give zero residuals; scalar Hessian commutator vanishes after `SortCovDs[...,CD]`. | Core xTensor/xTras; `canonical_contract`. Canonicalization alone initially left the Hessian commutator unreduced; explicit derivative commutation resolved it. |
| Checked — Mathematica | Curvature density $3/(2l^4)$, large-cutoff subtraction, both volume sums, both horizon formulas and four independent first-law coefficients. | Exact symbolic identities, $l,r_h>0$, $2l^2\ne\beta$, nonextremal background for bifurcation derivation. |
| Failed — local source formulas | Relation after (B2) has $l^2$ where $l^4$ is required; (B3) omits the square on $d\phi$. | TeX and rendered pp. 5–6 confirm the printed forms. Repairs above; the checked (B9)/(B14) chain survives them. |
| Blocked — none for scoped checks | PDF and source archive both retrieved successfully. | PDF text extraction emitted `Mismatch between font type and embedded font file`; decisive formulas were checked against TeX and rendered pp. 5–6. |
| Not independently verified | A general $f(R_{abcd})$ boundary-flux computation, all asymptotic ensembles, non-product topologies, smooth extension of the normalized auxiliary potential through the bifurcation surface, and matter extensions. | The source's reference-dependent and global boundaries remain explicit. |

**Verified:** the local algebraic repairs and the BTZ volume/first-law consistency checks above. **Assumptions:** matched background subtraction, fixed generator per variation, regular independent coupling coordinates, exterior gauge/topology conditions and stated noncritical domain. **Not verified:** universal gauge independence of the isolated horizon integral, unrestricted global equivalence of enlarged and original phase spaces, and quantum or matter generalizations.
