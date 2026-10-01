---
paper id: 2609.25218v1
title: The BTZ black hole, the Third Law and gravitational collapse
authors:
  - Aidan M. McSharry
  - Harvey S. Reall
  - Jorge E. Santos
publication date: 2026-09-21T18:00:02
abstract: |-
  Spinorial quasilocal energy and angular momentum give sector-dependent BPS bounds in three-dimensional gravity with negative cosmological constant and dominant-energy matter. These obstruct conversion of a trapped black hole into extremal BTZ in finite time, while a characteristic construction permits collapse from a regular centre in the different spin sector. Late-time extremal configurations and flat gauge holonomies are also discussed.
comments: "35 pages plus appendices; PDF has 41 pages"
url: https://arxiv.org/abs/2609.25218v1
summary: "Boundary spin structure and spectral quasilocal energy provide a concrete AdS3 sewing input; strict-trapping proof, numerical collapse evidence and marginal-case gap must be separated."
tags: []
---

# Result and scope

The reusable result is the boundary operator $\mathcal O^\pm$ and its spin-structure-dependent lowest eigenvalue. It turns local expansion/normal-connection data into a quasilocal BPS inequality, but its extension to a filling depends on the spin bundle. Equality with standard AdS charges holds in axisymmetry; generic spectral energies are not Brown–Henneaux zero-mode charges.

**Source-derived:** the strict-trapped version of the third-law argument follows from the paper's Witten boundary problem and equality conditions. The weakly trapped, everywhere marginal case is **conditional in the supplied proof**: §2.3 explicitly reserves the spacetime extension of the parallel spinor for forthcoming work. Collapse examples are numerical characteristic constructions, not a contradiction of the annular theorem. Eq. (3.32) has an independently detected power-of-$\ell$ error; the repaired extremality condition below recovers the subsequent expansion.

# Source map and how to read this long paper

Official [abstract](https://arxiv.org/abs/2609.25218v1), [PDF](https://arxiv.org/pdf/2609.25218v1), and [TeX](https://arxiv.org/src/2609.25218v1) were retrieved. Source labels below refer to printed pages; physical PDF page = printed page + 1 after the title page. Text extraction and the TeX supplied the complete structure; printed p.31 was rendered and visually confirms Eqs. (3.28)–(3.35), including the typo.

| Section tree | Purpose, important objects, and downstream use |
|---|---|
| §1, pp.1–4 | States the annular theorem; distinguishes collapse from transformation of a pre-existing trapped hole. |
| §2.1, p.5 | Clifford convention and two supercovariant derivatives. |
| §2.2, pp.5–10 | Boost connection, weighted spinors, boundary operator, R/NS energies; Theorem 2.2 and horizon zero-mode lemma. |
| §2.3, pp.10–11 | Saturation excludes strict trapping; marginal case uses an announced extension result. |
| §2.4, pp.11–13 | Auxiliary Witten problem, boundary positivity and rigidity; filling-compatible spin structures. |
| §2.5.1, pp.14–15 | Constant-coefficient spectra reduce to renormalized Hawking mass and Komar angular momentum. |
| §2.5.2, p.15 | Evaluation on the full BTZ family. |
| §2.6, pp.15–19 | Hill operator at infinity, Virasoro transformation and generic mismatch with standard energy. |
| §3.1, pp.19–20 | Einstein–complex-scalar action; double-null transport equations. |
| §3.2, pp.20–24 | Characteristic data, gauge matching, $2k+1$ physical constraints and endpoint cutoff. |
| §3.3, pp.24–25 | Three numerical $C^3$ profiles, radius/winding scaling and sign constraints. |
| §3.4, pp.25–29 | $C^0$ subextremal-to-subextremal construction; obstruction as final extremality is approached. |
| §3.5, pp.29–32 | Assumed late-time scalar tail; negative Ramond BPS gap; exterior existence remains assumed. |
| §4.1–4.4, pp.32–35 | Summary; possible CFT interpretation; equilibrium versus collapsing throat; charged extensions. |
| Appendix A, p.36 | Alternative construction for positive outgoing expansion. |
| Appendix B, pp.37–38 | Flat $U(1)$ holonomy shifts the boundary spectrum. |

Essential reading: §§2.1–2.5 and 3.1–3.2. For the vault's asymptotic-charge conventions, §2.6 is also essential. Technical reference: §2.4 and Appendices A/B. The numerical construction and late-time qualifications in §§3.3–3.5 must be read before using existence claims. §4 gives interpretations and proposed extensions, not additional established quantum results.

# Geometry, spinors and weighted boundary data

The signature is $(-,+,+)$, $\Lambda=-\ell^{-2}$, $\ell>0$. The source initially says $G=1$ but retains $G$ in formulas; §3 explicitly changes to $8G=1$. Keep $G$ symbolic until that change. Two-component complex spinors use

$$
\{\Gamma^\alpha,\Gamma^\beta\}=-2\eta^{\alpha\beta},\quad
(\Gamma^0,\Gamma^1,\Gamma^2)=(\sigma^2,i\sigma^3,i\sigma^1),\quad
\bar\psi=\psi^\dagger\Gamma^0,\quad
\nabla_\mu^\pm=\nabla_\mu\pm\frac{i}{2\ell}\Gamma_\mu.
$$

Here $e_0$ is the future unit normal to a spacelike $\Sigma$, $e_1$ is tangent to a boundary circle, and $e_2$ points out of $\Sigma$. With $\epsilon=\Gamma^2\Gamma^0$, decompose $\epsilon\psi_\pm=\pm\psi_\pm$. The null vectors and expansions are

$$
l=(e_0+e_2)/\sqrt2,\qquad n=(e_0-e_2)/\sqrt2,\qquad
\theta_{\rm out}=\sqrt2\nabla_a l^a,\quad
\theta_{\rm in}=\sqrt2\nabla_a n^a.
$$

The null congruences are affinely extended before evaluating the divergence. In particular these expansion normalizations contain a factor $\sqrt2$. At the inner boundary, “in” points into the annulus: source $\theta_{\rm in}\leq0$ there expresses outer trapping of the interior region. Do not change this sign using intuition from the outer boundary.

A boost sends $(l,n)\mapsto(fl,f^{-1}n)$, $f>0$. A field of weight $b$ uses

$$
\mathcal D=D_1-b\chi,\quad \chi=-e_1^a n_b\nabla_a l^b=K_{12},\quad
\slashed{\mathcal D}=\Gamma^2\Gamma^1\mathcal D.
$$

Weights are $b(\theta_{\rm in})=-1$ and $b(\psi_\pm)=\pm1/2$. $r$ throughout §2 is circumference divided by $2\pi$, not a chosen coordinate radius in an arbitrary geometry. R and NS mean periodic and antiperiodic boundary spinors in the adapted frame; they are domains of the operator, not a choice of sign in $\nabla^\pm$.

# From the Witten boundary functional to a spectral energy

The source chain, Eqs. (2.15)–(2.23), starts with

$$
I^\pm_{\partial\Sigma}[\psi]=\int_\Sigma\bigl(|\nabla_i^\pm\psi|^2+4\pi G T_{0\mu}\bar\psi\Gamma^\mu\psi-|\Gamma^i\nabla_i^\pm\psi|^2\bigr),
\qquad I_C^\pm=\int_C\psi^\dagger\Gamma^2\Gamma^1\nabla_1^\pm\psi.
$$

On the outer circle assume $\theta_{\rm in}<0$ and impose the projected condition

$$
\slashed{\mathcal D}\psi_-+\frac{\theta_{\rm in}}2\psi_+\mp\frac{i}{2\ell}\Gamma^2\psi_-=0.
$$

This determines $\psi_+$ from $\psi_-$. Integration by parts then gives

$$
I_S^\pm=\langle\psi_-,\mathcal O^\pm\psi_-\rangle,\qquad
\langle\eta,\varphi\rangle=\int_S\frac{2}{-\theta_{\rm in}}\eta^\dagger\varphi,
$$

$$
\mathcal O^\pm=\left(\mathcal D\pm\frac{i}{2\ell}\Gamma^1\right)^\ddagger
\left(\mathcal D\pm\frac{i}{2\ell}\Gamma^1\right)+\frac{\theta_{\rm in}\theta_{\rm out}}4,
\quad
\left(\mathcal D\pm\frac{i}{2\ell}\Gamma^1\right)^\ddagger
=-\mathcal D+\theta_{\rm in}^{-1}\mathcal D\theta_{\rm in}\pm\frac{i}{2\ell}\Gamma^1.
$$

The weight in the inner product is necessary for boost invariance and positivity. The operator preserves $\epsilon=-1$, is elliptic and formally self-adjoint on each compact-circle spin domain. For its lowest eigenvalue $\Lambda_\pm^s$, set

$$
\Delta_\pm^s=r^2\Lambda_\pm^s,\quad
E^s=\frac{\Delta_+^s+\Delta_-^s}{4G}-\frac{\delta^s}{8G},\quad
J^s=\frac{\ell}{4G}(\Delta_+^s-\Delta_-^s),\qquad
\delta^{\rm R}=0,\ \delta^{\rm NS}=1.
$$

These are spectral definitions, not a CPS derivation of Hamiltonian generators.

## Positivity, equality and the filling

For $\partial\Sigma=S\cup T\cup A$, the source allows weakly outer trapped $T$ and inner antitrapped $A$. Given the prescribed boundary $\psi_-$, solve

$$
\Gamma^i\nabla_i^\pm\widetilde\psi=0,\quad
\widetilde\psi_-|_S=\psi_-,\quad
\widetilde\psi_-|_T=0,\quad
\widetilde\psi_+|_A=0.
$$

The projected boundary spinor obeys

$$
I_S^\pm[\psi]=I_S^\pm[\widetilde\psi]+\int_S\frac{-\theta_{\rm in}}2|\widetilde\psi_+-\psi_+|^2,
$$

while $I_S^\pm[\widetilde\psi]$ is the sum of the bulk positive terms and $-\theta_{\rm in}|\widetilde\psi_+|^2/2$ on $T$, $\theta_{\rm out}|\widetilde\psi_-|^2/2$ on $A$. Dominant energy, the stated expansion signs and a compatible spin structure imply $\Delta_\pm\geq0$, hence

$$E^s\geq |J^s|/\ell-\delta^s/(8G).$$

Equality requires a nonzero spatially supercovariantly parallel spinor; every inner trapped boundary is marginal; matter vanishes if its bilinear $X^a=\bar\psi\Gamma^a\psi$ is timelike, and is aligned null dust $T_{ab}=\rho X_aX_b$ if it is null. The source proves uniqueness by its positive identity and invokes the elliptic minimization construction for existence. Its functional-analytic coercivity/regularity details are not independently supplied by this note.

For genus $g$ and $b$ boundaries, the source counts $2^{2g+b-1}$ spin structures, with an even number of periodic boundary components. A disk admits only NS boundary spinors. An annulus admits an R choice on both boundaries. Therefore an R-supersymmetric extremal BTZ exterior does not impose an R BPS bound on a disk filling. This is concrete global information that local metric matching alone does not retain.

## The third-law proof and its precise gap

Matching spacetime metric and extrinsic curvature on $S$ to an extremal BTZ horizon cross-section makes the corresponding R lowest eigenvalue zero. Equality in the annular BPS theorem then excludes any inner circle with strictly negative trapped expansion somewhere. No condition at timelike infinity is used.

For an everywhere marginal $T$, §2.3 needs the spatial parallel spinor to extend as a spacetime parallel spinor through $D(\Sigma)$. The authors explicitly defer its proof. Assuming it, $X$ is Killing, the boundary eigenspinor conditions give $\int_{\partial\Sigma}\star dX=0$, and the Killing identity and Einstein equation yield an integral proportional to $\int_\Sigma\Lambda n_aX^a=0$. Since $\Lambda<0$ and $n_aX^a<0$, this is impossible. The conditional extension is a proof gap, not an explicit counterexample to the theorem.

# Axisymmetric evaluation and asymptotic Hill operators

In an axisymmetric gauge $\theta_{\rm in},\theta_{\rm out},\chi$ are constant. Eqs. (2.38)–(2.48) reduce to

$$
\Lambda_\pm^s=\frac{\delta^s}{4r^2}+\frac{\theta_{\rm in}\theta_{\rm out}}4+\frac14(\chi\mp\ell^{-1})^2,
\quad \chi=-\frac{4GJ_{\rm Komar}}{r^2},\quad
\theta_{\rm in}\theta_{\rm out}=-\frac{g^{-1}(dr,dr)}{r^2},
$$

$$
\varpi=-\frac{g^{-1}(dr,dr)}{8G}+\frac{r^2}{8G\ell^2}+\frac{2GJ_{\rm Komar}^2}{r^2},\qquad
\Delta_\pm^s=\frac{\delta^s}{4}+2G\left(\varpi\pm\frac{J_{\rm Komar}}\ell\right).
$$

Thus both sectors give $(E,J)=(\varpi,J_{\rm Komar})$. For

$$
f=\frac{(r^2-r_+^2)(r^2-r_-^2)}{r^2\ell^2},\quad
 ds^2=-fdt^2+f^{-1}dr^2+r^2\left(d\phi-\frac{\varepsilon r_+r_-}{r^2\ell}dt\right)^2,
$$

$$M=\frac{r_+^2+r_-^2}{8G\ell^2},\quad J=\frac{\varepsilon r_+r_-}{4G\ell},\quad\varepsilon=\pm1.$$

These are independent of the circle radius. Extremality $r_+=r_->0$ saturates the R bound but leaves the NS offset.

In Brown–Henneaux/Fefferman–Graham asymptotics, $S=L_++L_-$ and $\delta=L_--L_+$ appear in $g_{tt},g_{t\phi},g_{\phi\phi}$. The expansion gives

$$r^2\mathcal O^\pm\longrightarrow-\partial_\phi^2+L_\pm(\phi),\qquad
\Delta_\pm^s\longrightarrow\mu^s[L_\pm].$$

For constant $L$, $\mu^s=L+\delta^s/4$, recovering ordinary energies. For nonconstant $L$, the whole potential controls the ground eigenvalue; it cannot be replaced by its mean. Under $\widetilde\phi=h(\phi)$,

$$\widetilde L(h)=h'^{-2}(L+\tfrac12 Sh),\qquad
\mathcal L_{\widetilde L}=h'^{-3/2}\mathcal L_L h'^{-1/2}.$$

The spectral value is not a simple Virasoro charge, although zero modes transform covariantly. A finite Fourier Rayleigh–Ritz test with $L=1+0.1\cos\phi$ gives $0.9950216761<1$ in modes $-2,\ldots,2$; by the variational upper bound this already demonstrates that the continuum lowest value is below the zero mode $1$. It is not a computation of the exact continuum spectrum.

# Einstein–scalar characteristic construction

From §3 onward $8G=1$. The action and ansatz are

$$
S=\frac1{16\pi G}\int\sqrt{-g}\left(R+\frac2{\ell^2}-2\nabla_a\bar\Phi\nabla^a\Phi\right),\quad
\Phi=e^{im\phi}\Xi(U,V),\quad m\in\mathbb Z,
$$

$$ds^2=-\Omega^2dU\,dV+r^2(d\phi-W_UdU)^2,\qquad D_U\Xi=\partial_U\Xi+imW_U\Xi.$$

The gauge $W_V=0$ is fixed by a $\phi$ shift. Useful quasi-local functions are

$$J=\frac{2r^3}{\Omega^2}\partial_VW_U,\quad
\varpi=\frac{r^2}{\ell^2}+\frac{4r_Ur_V}{\Omega^2}+\frac{J^2}{4r^2},\quad
m_H=\varpi-\frac{J^2}{4r^2}.$$

The equations that carry the gluing data, Eq. (3.8), are

$$
\partial_V(r_V/\Omega^2)=-2r|\Xi_V|^2/\Omega^2,\quad
\partial_U(r_U/\Omega^2)=-2r|D_U\Xi|^2/\Omega^2,
$$

$$J_V=4mr\,\operatorname{Im}(\bar\Xi\Xi_V),\quad J_U=4mr\,\operatorname{Im}(\Xi\overline{D_U\Xi}),$$

$$r_{UV}=\frac{J^2\Omega^2}{8r^3}+\frac{m^2|\Xi|^2\Omega^2}{2r}-\frac{r\Omega^2}{2\ell^2},$$

$$
\Xi_{UV}+\frac{r_V}{2r}D_U\Xi+\frac{r_U}{2r}\Xi_V+
\frac{im\Omega^2J}{4r^3}\Xi+\frac{m^2\Omega^2}{4r^2}\Xi+imW_U\Xi_V=0,
$$

$$
2\partial_U\partial_V\log\Omega+\frac{m^2|\Xi|^2\Omega^2}{2r^2}+\frac{3\Omega^2J^2}{8r^4}
+2\operatorname{Re}(\overline{D_U\Xi}\Xi_V)+\frac{\Omega^2}{2\ell^2}=0.
$$

The $U$ angular-momentum equation uses the conjugate ordering in the source and must not be copied from the $V$ equation by just interchanging labels. The algebraic consequence checked here is

$$\partial_Vm_H=\left(\frac{J^2}{2r^3}+\frac{2m^2|\Xi|^2}{r}\right)r_V-\frac{8r}{\Omega^2}|\Xi_V|^2r_U.$$

It is nonnegative for $r_V\geq0,r_U\leq0$; the $U$ counterpart is nonpositive in that domain. This monotonicity is for $m_H$, not automatically for the renormalized $\varpi$ including its $J$ term.

## Data, transport, matching and regularity

On $\mathcal C=\{U=U_0\}$, set $\Omega=1$, match exact AdS at $V=0$ and a BTZ horizon at $V=1$. The free inputs are $r_+$, integer $m$, and compactly supported $\Xi(V)$. Integrate Raychaudhuri backward from $(r,r_V)=(r_+,0)$, then $J$ forward from $J(0)=0$, then $W_U$ from its defining equation. Fix $r_U(0)$ from $\varpi(0)=-1$ and propagate it with $r_{UV}$.

Reject a profile if $r(0)\leq0$ or $r_U$ becomes nonnegative. The second test excludes matching into a white-hole sector. Residual $U$ reparametrizations and $\phi\mapsto\phi+\Lambda(U)$ match the transverse lapse and shift jets. They cannot set the scalar jets: $\partial_U^j\Xi(1)=0$, $1\leq j\leq k$, are $2k$ real constraints, supplemented by $J(1)=J^{\rm EBTZ}$. Raychaudhuri then enforces the remaining radius jets. Thus a $C^k$ seam requires $2k+1$ actual matching conditions, not just charge equality.

The source chooses

$$\Xi=P_{\delta_1\delta_2}(V)f^{(1)}(V)e^{iVf^{(2)}(V)},\quad
f^{(i)}=\chi_0^{(i)}+\sum_{j=1}^p\chi_j^{(i)}\tanh(\mu_j^{(i)}V+\kappa_j^{(i)}).$$

The cutoff rises by $I_{V/\delta_1}(4,4)$, is one in the middle, and falls by $I_{(1-V)/\delta_2}(4,4)$, with

$$I_x(4,4)=x^4(35-84x+70x^2-20x^3).$$

The first three derivatives match at all joins, yielding $C^3$, piecewise $C^4$ data. Regularity at the centre loses one derivative in the cited construction, so $k\geq3$ is required for a globally $C^2$ classical solution. The source examples have $(r_+/\ell,m)=(0.2,4),(1,5),(10,400)$ with $p=7,7,12$. Scaling leaves $m\ell/r_+$ in the equations, but the initial AdS mass condition retains $\ell^2/r_+^2$, so radius scaling alone does not preserve the physical sign of $r_U$.

Author-linked [profile data](https://github.com/jorgealberich/BTZ_Gluing_Data) were inspected. Independently integrating the first example at $\ell=1$ gives $r(0)=0.1120867385$, $J(1)=0.08000000231$ versus target $0.08$, and maximum sampled $r_U=-1.377389116$ on a 1001-point grid. This reproduces the radius/charge/ingoing-sign part of one profile. It does not check six transverse scalar jet constraints, global extension, or rigorous sign bounds between sample points.

## Subextremal and late-time constructions

§3.4 uses the $C^0$ ansatz $a_0V(1-V)e^{im\log(\varepsilon+V)}$ to join two nonextremal BTZ regions. It must satisfy $r(0)>r_+^{\rm initial}$ and $r_U<0$. The numerical search approaches extremality as $m$ grows but encounters violation of these conditions at finite parameters. This is a model-family search, not a proof of all possible gluing obstructions; the strict-trapped theorem carries that broader conclusion.

§3.5 assumes the nonlinear scalar has the test-field asymptotics

$$\Xi(0,V)=V^{-\alpha_-}(\Xi^{(0)}+O(V^{-1})),\quad
\alpha_\pm=1\pm\frac{i\ell m}{2r_+}.$$

Writing $A=|\Xi^{(0)}|^2$ gives

$$r^{(2)}=-\frac{\ell^2m^2+4r_+^2}{12r_+}A,\quad
J^{(2)}=-\ell m^2A,\quad
Z^{(1)}=-\frac{\ell^2m^2+4r_+^2}{6\ell^2r_+}A.$$

**Checked correction:** finiteness of $r_U$ demands $J^{(0)2}/(8r_+^3)-r_+/(2\ell^2)=0$, hence

$$|J^{(0)}|=2r_+^2/\ell,$$

whereas printed Eq. (3.32) has $2r_+^2/\ell^2$. Its substitution leaves $r_+(1-\ell^2)/(2\ell^4)$ in the transport equation, nonzero for generic $\ell$. With the corrected value, the source's next result follows:

$$\varpi-|J|/\ell=\frac{2(4r_+^2+\ell^2m^2)Z^{(0)}A}{3r_+V^3}+O(V^{-4})<0$$

for $Z^{(0)}<0$, $A>0$ and sufficiently large $V$. Thus the annular BPS theorem excludes an initial trapped surface under these tail assumptions. The paper itself does not construct the compatible exterior; global late-time existence remains conditional.

# Alternative expansion and gauge holonomy sectors

Appendix A exchanges the projected boundary condition and assumes $\theta_{\rm out}>0$. The positive weight is $2/\theta_{\rm out}$ on $\psi_+$; its operator has the same factorized form with the corresponding weighted adjoint. It defines $\widetilde\Delta_\pm=r^2\alpha_\pm$. The final displayed energy uses an otherwise undefined $\delta_\pm$ symbol: read it as a notation inconsistency, not new spectral data.

Appendix B includes two flat $U(1)$ connections, $\mathcal D^\pm=\mathcal D-iq\mathcal A^\pm$ and $GQ^\pm=(2\pi)^{-1}\int_S A^\pm$. The axisymmetric spectrum is

$$r^2\Lambda_\pm^s(n)=\left(n+\delta^s/2-qGQ^\pm\right)^2+2G(\varpi\pm J_{\rm Komar}/\ell),\quad n\in\mathbb Z.$$

The zero-mode condition now includes a holonomy congruence, $qGQ^\pm\in\mathbb Z+\delta^s/2$, as well as metric extremality. Charges $GQ$ are understood modulo allowed large-gauge shifts when discussing holonomy. A flat connection can carry nontrivial global information despite an unchanged BTZ metric. Charged-matter third laws require an additional current/energy bound; §4.4 only proposes that extension.

# Translation to the vault and derivation ledger

The immediate application is a controlled obstruction to throwing away global spin or holonomy data when sewing regional AdS3 descriptions. Boundary metric, both expansions and normal connection enter $\mathcal O^\pm$; the filling and spin domain determine whether its nonnegativity follows. These pieces should accompany any interface identification.

The charge vocabulary needs care: $E^s$ is defined spectrally and generally differs from the Hamiltonian associated with asymptotic time translation. The paper has not supplied a variational identity $\delta E=\Omega(\delta,\delta_\xi)$, its integrability domain, or an energy-addition law under regional sewing. Characteristic PDE gluing in §3 is a construction of classical fields with transverse jets, not an observable-algebra sewing theorem.

The main dependencies are: Clifford/boost conventions → projected boundary functional → elliptic spectrum → filling-compatible Witten problem → positivity/rigidity → strict-trapped third law. Independently: scalar action → double-null constraints → characteristic transport and endpoint jets → numerical collapse. The spin-structure mismatch explains why these branches coexist. The late-time branch adds a nonlinear-tail hypothesis and an unconstructed exterior; the charged branch adds flat holonomy and, for charged matter, an unproved current bound.

# Verification and audit

- **Source-derived:** full section/appendix map; boundary Witten identity and PDE well-posedness argument; general boost covariance; topological spin-extension rule; existence interpretations of the numerical construction; proposed CFT and charged-matter extensions.
- **Checked:** Mathematica Clifford anticommutators returned `True`; axisymmetric non-extremality residuals `{0,0}`; BTZ mass substitution `0`; cutoff endpoint values `{{0,1},{0,0},{0,0},{0,0}}`; $V$ Hawking-mass transport residual `0`; Raychaudhuri tail and subsequent $Z^{(1)}$ and BPS-gap coefficients reproduced. Finite Hill variational witness and one author-profile transport computation are separately scoped above.
- **Failed:** Eq. (3.32) as printed with $\ell^{-2}$ conflicts with Eq. (3.8e) at general $\ell$. Correcting it to $\ell^{-1}$ restores the stated extremality relation. This local typo does not invalidate the checked later coefficient.
- **Blocked:** the supplied proof omits the spacetime parallel-spinor extension needed for the everywhere marginal inner-boundary case; it explicitly promises a forthcoming proof. No available calculation replaces that theorem.
- **Not independently verified:** full curved-space Witten identity, elliptic analytic estimates, all reduced Einstein equations, six transverse scalar matching jets, the other two numerical profiles, continuum/global PDE existence, CFT claims and quantum throat dynamics. No tensor-package verification is claimed for source-read geometric identities.

**Verified:** the explicit symbolic and finite/numerical targets above. **Assumptions:** smooth Lorentzian 3d geometry, DEC for the BPS theorem, compatible spin domain, stated expansion signs, $8G=1$ only in §3, $\ell=1$ only in the numerical run. **Not verified:** a general CPS charge or sewing theorem.

Retrieval: PDF and TeX succeeded; author-linked data also retrieved. Poppler emitted `Mismatch between font type and embedded font file` during text extraction; TeX and rendered p.31 resolved the relevant formulas. Temporary artifacts: `/tmp/arxiv-daily-20260923.w8DQVO/`. No PDF attachment or old note was changed.
