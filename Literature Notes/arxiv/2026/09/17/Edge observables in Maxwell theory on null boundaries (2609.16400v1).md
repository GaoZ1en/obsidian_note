---
paper id: 2609.16400v1
title: Edge observables in Maxwell theory on null boundaries
authors:
  - Dušan Đorđević
  - Olivera Miskovic
  - Antonia Montecinos
  - Tatjana Vukašinac
publication date: 2026-09-14T22:13:52Z
abstract: |-
  The paper studies three-dimensional Maxwell theory in a Hamiltonian formulation on null foliations of Minkowski, static BTZ, and static-patch de Sitter backgrounds. Besides the large-U(1) electric charge, a zero mode of the null primary-constraint kernel produces an intrinsic boundary shift charge. Their mixed reduced bracket is central and diagonalizes into two Abelian Kac--Moody algebras with opposite levels at null infinity, the BTZ horizon, and the cosmological horizon.
comments: "36 pages, one figure"
url: https://arxiv.org/abs/2609.16400v1
summary: "A directly reusable null-boundary Maxwell model in which a characteristic zero mode supplies a second edge observable and a centrally extended electric--shift charge algebra."
tags: []
---

Daily overview: [[2026_09_17_overview]]

# Verdict

**Correct under the paper's restricted Hamiltonian assumptions:** a fixed three-dimensional background, a null (u=mathrm{const}) foliation, the stated asymptotic or near-horizon boundary conditions, field-independent symmetry parameters, exclusion of the singular endpoint from the phase space, and the asserted reduced Dirac bracket. Under those conditions the canonical momentum, characteristic constraint, radial zero mode, finite boundary improvements, mixed central term, and opposite-level mode decomposition are mutually consistent.

The result is deliberately quasilocal. For the nonzero zero-mode source (W), the Minkowski and de Sitter configurations are not extended regularly through (r=0); the BTZ phase space is not extended to the AdS conformal boundary; and the horizon shift does not generally preserve the full bulk Hamilton equations. The paper therefore does **not** establish an extra global Maxwell gauge symmetry, a global edge sector of the complete spacetime, or a full covariant-phase-space sewing theorem.

# How to read this long paper

- **Essential mechanism:** Sec. 2 from the momentum definition through the mixed charge bracket. This contains the null primary constraint, its radial zero mode, the two differentiable generators, and the central extension.
- **Essential interpretation:** the mode algebra, matching/balance-law discussion, and the final three paragraphs of Sec. 5. These distinguish endpoint matching, time evolution, and an intrinsic boundary shift.
- **Finite-boundary realization:** Sec. 3 for the BTZ inner boundary and Sec. 4 for the de Sitter outer boundary. The local constraint algebra is unchanged; orientation and normalization change.
- **Technical reference:** the detailed falloffs and the particular solution ($\\bar w$). These are needed when checking differentiability or attempting a gluing construction.
- **Optional background:** the introductory comparison with three-dimensional Maxwell--scalar duality and prior soft-charge literature.

# Complete source map

| Source block | Purpose and output | Later dependency |
|---|---|---|
| Sec. 1, Introduction | Selects the radiative rather than logarithmic Coulomb sector and motivates a characteristic zero mode as an edge degree of freedom. | Fixes which asymptotic fields and interpretations are admissible. |
| Sec. 2, canonical momenta and Hamiltonian | Performs the null Legendre transform and obtains (pi^uapprox0), (chiapprox0), and the total Hamiltonian. | Supplies all constraints, transformations, and boundary variations. |
| Sec. 2, radiative boundary conditions | Chooses half-integer large-(r) falloffs and a cut-completion prescription at (mathscr I^pm). | Makes the two charges finite and distinguishes endpoint charges from cut evolution. |
| Sec. 2, differentiability | Fixes (A_u) at the boundary and adds (Q_S[w]) to the Hamiltonian. | Makes Hamiltonian evolution well defined and identifies (W) as a boundary source. |
| Sec. 2, symmetry generators | Finds the Gauss constraint and the zero mode (v=sqrt r,V) of the (chi)-bracket kernel. | Splits the ordinary gauge generator from the intrinsic shift generator. |
| Sec. 2, charges and transformations | Constructs ($Q[\\varepsilon]$) and ($Q_S[\\eta]$), then derives their actions on the canonical variables. | Establishes finiteness, integrability, and preservation of the selected falloffs. |
| Sec. 2, algebra in modes | Computes the mixed central term and diagonalizes it into (Q_n^pm). | Gives the two opposite-level Abelian Kac--Moody algebras. |
| Sec. 2, matching and balance laws | Separates antipodal endpoint matching from evolution sourced by (W). | Prevents treating every angle-dependent mode as a conserved charge. |
| Sec. 2, alternative boundary condition | Recovers the stronger Shimizu--Sugishita falloffs. | Shows why those falloffs remove the electric charge while retaining the shift construction. |
| Sec. 3, BTZ | Repeats the construction at the black-hole horizon, an inner boundary. | Produces level (kappa_+=4pi/sqrt{r_+}) and an orientation reversal. |
| Sec. 4, de Sitter | Repeats the construction at the static-patch cosmological horizon, an outer boundary. | Produces level (kappa_c=4pi/sqrtell). |
| Sec. 5, Conclusions | States the quasilocal scope, singular-endpoint restrictions, flux interpretation, and possible non-Abelian/gravitational extensions. | Sets the boundary of any use in regional sewing. |

There are no technical appendices. The source consists of the five sections above plus the bibliography.

# Theory, notation, and fixed assumptions

The probe field is Maxwell theory on a nondynamical background,

$$
I_{mathrm{EM}}=-\frac14\int \mathrm d^3x\,\sqrt{|g|}\,F_{\mu\nu}F^{\mu\nu},
\qquad F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu.
$$

The evolution coordinate is (u), and a null slice (Xi) has coordinates (x^i=(r,\varphi)). The sign (epsilon=+1) denotes retarded coordinates and (epsilon=-1) advanced coordinates. Canonical brackets use the coordinate measure,

$$
\{A_\mu(x),\pi^\nu(x')\}_{u=u'}=\delta_\mu^{\nu}\delta(r-r')\delta(\varphi-\varphi').
$$

The common Eddington--Finkelstein form is

$$
\mathrm ds^2=-N^2(r)\,\mathrm du^2-2\epsilon\,\mathrm du\,\mathrm dr+r^2\mathrm d\varphi^2,
$$

with (N^2=1) for Minkowski, (N^2=(r^2-r_+^2)/\ell^2) for static BTZ, and (N^2=1-r^2/\ell^2) for the de Sitter static patch. The background parameters (r_+), (M), and (ell) are fixed, not phase-space variables.

The three regional phase spaces are distinct:

- (Gamma_\infty) uses a punctured null slice approaching (mathscr I^pm) and excludes (r=0).
- (Gamma_H) is a near-BTZ-horizon phase space and excludes the AdS conformal boundary.
- (Gamma_c) is a near-cosmological-horizon phase space and does not require regular continuation of the zero-mode sector to the static-patch origin.

# Minkowski null infinity

## Null Legendre transform and constraint kernel

The canonical momentum is

$$
\pi^\mu=-rF^{u\mu}.
$$

Because (g^{uu}=0), only the radial velocity is invertible:

$$
\pi^r=r(\dot A_r-\partial_rA_u),
\qquad
\pi^u\approx0,
\qquad
\chi\equiv\pi^\varphi-\frac{\epsilon}{r}F_{r\varphi}\approx0.
$$

The secondary Gauss constraint is

$$
\psi=\nabla_i\pi^i=\partial_i\pi^i\approx0.
$$

The characteristic information lies in the self-bracket of (chi):

$$
\{\chi(x),\chi(x')\}
=\Omega(x,x')
=\frac{\epsilon}{r^2}\delta^{(2)}(x-x')
-\frac{2\epsilon}{r}\partial_r\delta^{(2)}(x-x').
$$

Acting on a smearing (v), the kernel is

$$
\int\mathrm d^2x'\,\Omega(x,x')v(x')
=-\frac{2\epsilon}{\sqrt r}\partial_r\!\left(\frac{v}{\sqrt r}\right).
$$

Hence its radial zero modes are exactly

$$
v(x)=\sqrt r\,V(u,\varphi).
$$

The primary constraint (chi) therefore has a first-class zero-mode sector and a second-class nonzero-mode sector. The paper retains the former instead of removing it by boundary conditions.

## Radiative phase space and Hamiltonian differentiability

The large-(r) data are chosen as

$$
\begin{aligned}
A_u&=\sqrt r\,A_{(0)u}+O(r^{-1/2}),
&A_r&=r^{-1/2}A_{(1)r}+O(r^{-3/2}),\\
A_\varphi&=\sqrt r\,A_{(0)\varphi}+O(r^{-1/2}),
&\pi^r&=r^{-1/2}\pi^r_{(1)}+O(r^{-3/2}),\\
\pi^\varphi&=r^{-3/2}\pi^\varphi_{(2)}+O(r^{-5/2}),
&w&=\sqrt r\,w_{(0)}+O(r^{-1/2}).
\end{aligned}
$$

The total Hamiltonian contains the smeared primary constraint (S[w]=\int_\Xi w\chi). Preservation of (chi) determines

$$
w=\sqrt r\,W(u,\varphi)+\bar w,
$$

where ($\\bar w=O(r^{-1/2})$) is fixed by the canonical fields. The free $W$ is the same characteristic zero mode that later acts as a boundary source.

Fixing (A_u) at the boundary removes the Gauss-sector boundary variation,

$$
\delta A_{(0)u}=0,
$$

but (S[w]) still varies by (-\epsilon\oint w_{(0)}\delta A_{(0)\varphi}). It is repaired by

$$
Q_S[w]=\oint_{S^1_\infty}\mathrm d\varphi\,\frac{\epsilon}{r}wA_\varphi.
$$

This is already the first indication that the boundary value of (A_\varphi) is a released port variable rather than fixed Dirichlet data.

## Two differentiable generators

The ordinary (U(1)) generator is

$$
G_Q[\varepsilon]
=\int_\Xi\mathrm d^2x\,(\varepsilon\psi-\dot\varepsilon\pi^u)
+Q[\varepsilon],
\qquad
Q[\varepsilon]=-\oint_{S^1_\infty}\mathrm d\varphi\,\varepsilon\pi^r.
$$

Finiteness requires

$$
\varepsilon=\sqrt r\,\varepsilon_{(0)}(\varphi)+O(r^{-1/2}),
\qquad \dot\varepsilon_{(0)}=0.
$$

It generates the bulk gauge transformation (delta_\varepsilon A_\mu=-\partial_\mu\varepsilon).

The zero-mode generator is

$$
G_S[\eta]=\int_\Xi\mathrm d^2x\,\eta\chi+Q_S[\eta],
\qquad
\eta=\sqrt r\,\eta_{(0)}(\varphi),
$$

with

$$
Q_S[\eta]
=\epsilon\oint_{S^1_\infty}\mathrm d\varphi\,
\eta_{(0)}A_{(0)\varphi}.
$$

Its nonzero canonical action is

$$
\delta_\eta A_\varphi=\eta,
\qquad
\delta_\eta\pi^r=\frac{\epsilon}{r}\partial_\varphi\eta,
\qquad
\delta_\eta\pi^\varphi=-\epsilon\partial_r\!\left(\frac\eta r\right).
$$

This is not a residual bulk (U(1)) transformation. It is an intrinsic canonical transformation of the selected boundary phase space. Its exact radial truncation is essential: a generic local smearing of (chi) would also include the second-class sector.

## Central extension and mode algebra

Each sector is Abelian, but the mixed bracket is

$$
\{Q[\varepsilon],Q_S[\eta]\}^*
=C[\varepsilon,\eta]
=-\epsilon\oint_{S^1_\infty}\mathrm d\varphi\,
\varepsilon_{(0)}\partial_\varphi\eta_{(0)}.
$$

With Fourier modes (Q_n=-2\pi\pi_n), (S_n=2\pi\epsilon A_n), and (kappa=4\pi),

$$
\{S_n,Q_m\}^*=\frac{i\epsilon}{2}m\kappa\,\delta_{n+m,0}.
$$

The combinations

$$
Q_n^\pm=Q_n\mp S_n
$$

then obey

$$
\{Q_n^\pm,Q_m^\pm\}^*
=\pm i\epsilon n\kappa\,\delta_{n+m,0},
\qquad
\{Q_n^+,Q_m^-\}^*=0.
$$

Thus the boundary algebra is two commuting Abelian Kac--Moody algebras with opposite levels. The constant shift mode is proportional to the holonomy of the leading boundary connection (A_{(0)}); it is the finite leading coefficient of a bulk magnetic flux that diverges under these radiative falloffs.

## Endpoint matching is not cut conservation

Antipodal matching relates endpoint data at (mathscr I_-^+) and (mathscr I_+^-). Within one null patch the source (W) drives the electric modes:

$$
\dot Q[\varepsilon]=C[\varepsilon,W],
\qquad
\dot Q_n=-\frac{i\epsilon}{2}n\kappa W_n.
$$

Only (Q_0) is conserved for arbitrary (W). The shift observable satisfies

$$
\dot Q_S[\eta]
=\epsilon\oint\mathrm d\varphi\,\eta_{(0)}
\bigl(\partial_\varphi A_{(0)u}+W\bigr),
$$

so it is likewise not generically conserved by the full bulk Hamiltonian.

# BTZ horizon

For static BTZ,

$$
N^2=\frac{r^2-r_+^2}{\ell^2},
\qquad r_+=\ell\sqrt M.
$$

The momenta, constraints, and kernel (Omega) are unchanged. The only altered Hamilton equation is

$$
\dot A_\varphi=rN^2\pi^\varphi+\partial_\varphi A_u+w.
$$

Regular fields are expanded in (ho=r-r_+). The horizon is an inner boundary of the exterior region, and the authors restrict to a near-horizon phase space because (W\ne0) is not compatible with generic AdS-boundary falloffs.

The two horizon charges are

$$
Q[\varepsilon]
=\oint_{S^1_+}\mathrm d\varphi\,
\varepsilon_{+(0)}\pi^r_{+(0)},
$$

$$
Q_S[\eta]
=-\frac{\epsilon}{\sqrt{r_+}}
\oint_{S^1_+}\mathrm d\varphi\,
\eta_{+(0)}A_{+(0)\varphi}.
$$

Their mixed central term is

$$
C_+[\varepsilon,\eta]
=\frac{\epsilon}{\sqrt{r_+}}
\oint_{S^1_+}\mathrm d\varphi\,
\varepsilon_{+(0)}\partial_\varphi\eta_{+(0)}.
$$

The sign relative to null infinity comes from the inner-boundary orientation, including the induced boundary symplectic orientation. The mode level is

$$
\kappa_+=\frac{4\pi}{\sqrt{r_+}}=4\pi(\ell^2M)^{-1/4}.
$$

The shift preserves the near-horizon falloffs but not generally the full bulk Hamilton equations; transverse derivatives provide the obstruction. This is the sharpest reason to call it a horizon-intrinsic rather than bulk symmetry.

# De Sitter cosmological horizon

For the static patch,

$$
N^2=1-\frac{r^2}{\ell^2},
\qquad r_c=\ell,
\qquad \rho=r_c-r.
$$

The cosmological horizon is an outer boundary. The local Hamiltonian and constraint analysis again agrees with the BTZ calculation. The charges are

$$
Q[\varepsilon]
=-\oint_{S^1_c}\mathrm d\varphi\,
\varepsilon_{c(0)}\pi^r_{c(0)},
$$

$$
Q_S[\eta]
=\frac{\epsilon}{\sqrt\ell}
\oint_{S^1_c}\mathrm d\varphi\,
\eta_{c(0)}A_{c(0)\varphi},
$$

and

$$
C_c[\varepsilon,\eta]
=-\frac{\epsilon}{\sqrt\ell}
\oint_{S^1_c}\mathrm d\varphi\,
\varepsilon_{c(0)}\partial_\varphi\eta_{c(0)}.
$$

The two diagonal currents have levels

$$
\kappa_c=\frac{4\pi}{\sqrt\ell}.
$$

The (r=0) endpoint is geometrically regular, but the retained (W\ne0) sector is not regular there. The construction is consequently a horizon patch, not a global static-patch solution space.

# Global notation dictionary

| Symbol | Meaning |
|---|---|
| (Xi) | Null (u=mathrm{const}) Hamiltonian slice. |
| (epsilon) | (+1) for retarded and (-1) for advanced coordinates. |
| (pi^u,psi) | Standard Maxwell primary constraint and secondary Gauss constraint. |
| (chi) | Null-foliation primary constraint (pi^\varphi-\epsilon F_{r\varphi}/r). |
| (Omega(x,x')) | Distributional self-bracket kernel of (chi). |
| (W(u,\varphi)) | Undetermined radial zero mode of the multiplier (w); a boundary source, not radiative news. |
| $\\varepsilon$ | Large-$U(1)$ gauge parameter. |
| (eta) | Exact radial zero-mode smearing (sqrt r\,\eta_{(0)}) of (chi). |
| (Q) | Electric edge charge generated by the improved Gauss constraint. |
| (Q_S) | Intrinsic boundary shift/holonomy observable generated by the zero-mode part of (chi). |
| (Q_n^\pm) | Linear combinations (Q_n\mp S_n) diagonalizing the mixed central bracket. |
| (Gamma_\infty,Gamma_H,Gamma_c) | Restricted phase spaces at null infinity, the BTZ horizon, and the dS horizon. |

# Equation ledger and derivation map

| Target | Inputs | Derivation step | Status |
|---|---|---|---|
| Characteristic constraint | Maxwell action and (g^{uu}=0) | Null Legendre transform leaves the (A_\varphi) velocity noninvertible. | Checked locally. |
| Zero-mode sector | Distributional bracket of (chi) | Solve (-2\epsilon r^{-1/2}\partial_r(v/\sqrt r)=0). | Checked. |
| Electric charge | Gauss generator plus boundary variation | Regge--Teitelboim improvement gives (-\oint\varepsilon\pi^r), with orientation changes at horizons. | Source-derived; its flat sign follows from the displayed variation. |
| Shift charge | Zero-mode smearing of (chi) | Boundary improvement gives (oint(\epsilon/r)\eta A_\varphi). | Source-derived; finiteness follows from the stated falloffs. |
| Central extension | Cross action of (G_Q) and (G_S) | The gauge transformation of the tangential boundary field produces (oint\varepsilon\partial_\varphi\eta). | Source-derived. |
| Opposite Kac--Moody levels | Mixed Fourier bracket | Diagonalize with (Q_n^\pm=Q_n\mp S_n). | Checked. |
| Balance law | Boundary term (Q_S[W]) in the Hamiltonian | Central bracket makes (W_n) source (Q_n). | Source-derived. |
| BTZ/dS normalization | Evaluate (r^{-1/2}) at (r_+) or (ell) | Levels inherit (1/\sqrt{r_+}) or (1/\sqrt\ell). | Source-derived. |

# Translation into the vault's action-first sewing language

The useful regional data are not just the electric flux. On a released null boundary the paper keeps the pair

$$
q(\varphi)=A_{\parallel}(\varphi),
\qquad
p(\varphi)=\pi^r(\varphi),
$$

represented by (A_{(0)\varphi},\pi^r_{(1)}) at null infinity or their leading horizon values. The two linear boundary observables probe complementary data:

$$
Q[\varepsilon]\sim\oint\varepsilon p,
\qquad
Q_S[\eta]\sim\oint\eta q.
$$

Their central mixed bracket is therefore evidence for a nontrivial boundary port bracket before reduction. It would be a mistake to retain only Gauss flux (p) and quotient away the tangential history (q) before sewing.

For two complementary regions sharing the same cut, the expected sewing conditions are orientation-sensitive:

$$
q_L=q_R,
\qquad
p_L+p_R=0,
$$

together with compatible gauge parameters and treatment of the (chi) zero mode. The paper states this gluing intuition but does not construct the product regional phase space, the coisotropic matching surface, or its reduced observable algebra. In particular, it does not show whether the two regional central terms cancel, combine, or leave a corner extension after matching. That is the concrete next calculation for the vault's gauge-sewing programme.

For the proposed gravity--(U(1)) Chern--Simons boundary problem, this Maxwell algebra is a useful counterexample and calibration. Its Kac--Moody levels arise from a characteristic constraint and boundary normalization on a fixed metric, not from a bulk Chern--Simons coupling. Any mixed gravity--gauge calculation must keep those mechanisms distinct.

# Verification log

## Checked

- Mathematica inverted the common Eddington--Finkelstein metric for arbitrary (N^2(r)) and (epsilon^2=1), and reproduced (det g=-r^2).
- From an arbitrary antisymmetric (F_{\mu\nu}), Mathematica reproduced
  (pi^u=0), (pi^r=rF_{ur}), and (pi^\varphi=\epsilon F_{r\varphi}/r). This check is independent of (N^2), as claimed.
- Direct differentiation verified that (v=\sqrt r\,V) is annihilated by the displayed radial kernel.
- Symbolic mode algebra verified that the mixed bracket diagonalizes into levels (+\epsilon\kappa) and (-\epsilon\kappa) for (Q_n^+) and (Q_n^-).

## Source-derived

- The distributional self-bracket (Omega(x,x')), all Regge--Teitelboim boundary variations, the reduced Dirac bracket, the cut-completion prescription, and the balance laws were reconstructed from the source but not independently derived from a fully gauge-fixed action.
- The BTZ and de Sitter horizon algebras were followed through their orientation and normalization changes, but the induced reduced symplectic forms were not independently recomputed.

## Blocked

- A complete independent Dirac-bracket computation is blocked because the source does not choose an explicit gauge fixing for the first-class constraints or give the full inverse second-class constraint matrix for the nonzero modes.
- The claim that the logarithmically divergent symplectic potential contributes only an exact field-space variation is not accompanied by the explicit divergent functional in the source; the finiteness of (Omega=\delta\Theta) therefore remains source-derived.

## Not independently verified

- The formal equivalence to a covariant-phase-space derivation, global antipodal matching, regularity of every subleading solution, and the physical interpretation of the constant shift mode as a magnetic observable were not independently proved.
- No claim is made here that the restricted phase spaces embed into globally regular Maxwell solution spaces.

# Reusable conclusions

1. A null Legendre transform can release a genuine radial zero mode of a constraint that is absent from the standard spacelike presentation.
2. The pair ((A_\parallel,\pi^r)) must remain visible at an open null port if one wants to reproduce the electric--shift central bracket.
3. Endpoint matching, cut evolution, and conservation are different statements; only the global electric zero mode is automatically conserved for arbitrary (W).
4. Inner versus outer boundary orientation changes both charge signs and the reduced bracket sign.
5. The construction is an excellent finite-cut gauge-sewing test, but it is not itself the sewing theorem: complementary-region matching and reduction remain to be done.
