---
paper id: 2609.04844v1
title: What is Classical Null String Theory?
authors:
  - M. M. Sheikh-Jabbari
  - H. Yavartanoo
publication date: 2026-09-04T08:01
abstract: |-
  The paper distinguishes the ILST tensionless-string action, viewed as a partially gauged Carrollian sigma model, from a gauge-complete classical null-string theory. The missing redundancy is the relative Carroll-Weyl rescaling of the temporal and spatial representatives of the intrinsic Carrollian worldsheet structure. Gauging it introduces a Carroll-Weyl connection, imposes the Gauss-law constraint P dot X = 0, and identifies configurations along the corresponding local scaling orbit.
comments: "11 pages; the official generated PDF has 12 pages including references"
url: https://arxiv.org/abs/2609.04844v1
summary: "The null-string phase space acquires a third first-class constraint only after the relative Carroll-Weyl redundancy is gauged."
tags: []
---

Daily overview: [[2026_09_07_overview]].

# Verdict

**Correct under the following precise conditions:** the target is flat $D$-dimensional Minkowski space; the analysis is classical; the Carroll-Weyl completion uses the paper's minimal two-derivative realization; the constraint surface is regular; and the string is closed, or boundary conditions remove the integrations by parts in the smeared algebra.

Under those conditions the ILST action alone describes a consistent partially gauged Carrollian sigma model. A gauge-complete null string additionally imposes $P\cdot X=0$ and quotients by its local scaling flow. This changes the regular local phase-space dimension from $2(D-2)$ to $2(D-3)$. It does not establish the curved-target, open-string/boundary, global-zero-mode, or quantum theory.

# Source map

- Section 1 separates a consistent sigma model from a string theory whose changes of intrinsic worldsheet representative are gauge redundancies.
- Section 2 reviews the ILST action, identifies the missing relative Carroll-Weyl rescaling, constructs the minimally gauged action, and distinguishes necessity of the new constraint from its first-class admissibility.
- Section 3 translates the new gauge orbit into the congruence-of-null-geodesics variables $(P^\mu(\sigma),Q^\mu(\sigma))$.
- Section 4 states the reduced-phase-space conclusion and the unresolved curved-target, quantum, and translation questions.
- Appendix A derives the two Carrollian conformal weights and the weight of the vector density $\mathcal V^a$.
- Appendix B records the complete three-constraint Poisson algebra and the finite-tension obstruction.
- Appendix C explains why gauging a generic target-space conformal Killing vector is not the same as gauging the worldsheet Carroll-Weyl redundancy.

# Intrinsic data and the missing redundancy

The Carrollian coframe and dual frame are

$$
(n_a,\ell_a;v^a,\ell^a),\qquad
v^a n_a=1,\quad v^a\ell_a=0,\quad \ell^a n_a=0,\quad \ell^a\ell_a=1.
$$

They determine

$$
h_{ab}=\ell_a\ell_b,
\qquad
\varepsilon_{ab}=n_a\ell_b-n_b\ell_a.
$$

The same temporal and spatial line fields admit independent changes of representative,

$$
n_a\mapsto e^{\chi_t}n_a,
\quad v^a\mapsto e^{-\chi_t}v^a,
\qquad
\ell_a\mapsto e^{\chi_s}\ell_a,
\quad \ell^a\mapsto e^{-\chi_s}\ell^a.
$$

Writing

$$
\rho=\frac{\chi_t+\chi_s}{2},
\qquad
\chi=\frac{\chi_t-\chi_s}{2},
$$

separates common Weyl rescaling from the relative Carroll-Weyl rescaling. If

$$
\mathfrak e=\epsilon^{ab}n_a\ell_b,
\qquad
\mathcal V^a=|\mathfrak e|^{1/2}v^a,
$$

then the relative transformation gives

$$
\mathcal V^a\mapsto e^{-\chi}\mathcal V^a.
$$

The ILST action

$$
S_{\mathrm{ILST}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal V^a\mathcal V^b
\eta_{\mu\nu}\partial_aX^\mu\partial_bX^\nu
$$

gauges worldsheet diffeomorphisms and the common rescaling but is not invariant under this relative rescaling when $X^\mu$ is inert. The paper's physical criterion is that all local changes of representative of one intrinsic worldsheet geometry must be gauged.

# Minimal Carroll-Weyl completion

Introduce a connection $\mathcal W_a$ and assign weight $+1$ to the embedding coordinate:

$$
D_aX^\mu=\partial_aX^\mu+\mathcal W_aX^\mu,
$$

$$
\delta_\chi\mathcal W_a=-\partial_a\chi,
\qquad
\delta_\chi X^\mu=\chi X^\mu,
\qquad
\delta_\chi\mathcal V^a=-\chi\mathcal V^a.
$$

Then $\delta_\chi(D_aX^\mu)=\chi D_aX^\mu$, so

$$
S_{\mathrm{CW}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal V^a\mathcal V^b\eta_{\mu\nu}D_aX^\mu D_bX^\nu
$$

is gauge invariant. Varying $\mathcal W_a$ imposes the Gauss law

$$
P\cdot X=0.
$$

Only after deriving this equation may one choose $\mathcal V^a\mathcal W_a=0$. In temporal gauge $\mathcal V^a=(1,0)$, the residual parameter obeys $\partial_\tau\chi=0$, hence $\chi=\chi(\sigma)$. The gauge-fixed Lagrangian then has the ILST form, but its physical phase space still contains the additional constraint and quotient.

# Constraint system and geodesic congruence

In temporal gauge,

$$
X^\mu(\tau,\sigma)=P^\mu(\sigma)\tau+Q^\mu(\sigma).
$$

The gauge-complete system is

$$
C_1=P^2=0,
\qquad
C_2=P\cdot Q'=0,
\qquad
C_3=P\cdot Q=0.
$$

A pure affine reparametrization

$$
\widetilde\tau=a(\sigma)\tau+b(\sigma)
$$

acts by

$$
\widetilde P=a^{-1}P,
\qquad
\widetilde Q=Q-\frac{b}{a}P,
$$

and preserves $C_1=C_2=0$ without requiring $C_3$. Thus the third constraint is not an affine-parameter artifact.

Combining the temporal reparametrization with the residual Carroll-Weyl transformation gives

$$
\widetilde P=\alpha^{-1/2}P,
\qquad
\widetilde Q=\alpha^{1/2}Q-\beta\alpha^{-1/2}P,
$$

and

$$
\widetilde C_2
=C_2-\frac{\beta}{2\alpha}C_1'
-\frac{\beta}{\alpha}
\left(\frac{\beta'}{\beta}-\frac{\alpha'}{2\alpha}\right)C_1
+\frac{\alpha'}{2\alpha}P\cdot Q.
$$

Because $\alpha(\sigma)$ is arbitrary, the surface $C_1=C_2=0$ is not preserved unless $C_3=0$. The physical data are therefore

$$
P^2=0,
\qquad
P\cdot Q'=0,
\qquad
P\cdot Q=0,
$$

modulo the displayed $(\alpha,\beta)$ action and residual $\sigma$-reparametrizations.

# First-class algebra and finite-tension obstruction

For

$$
H[f]=\int d\sigma\,f\frac{P^2}{2},
\quad
D[g]=\int d\sigma\,gP\cdot X',
\quad
S[h]=\int d\sigma\,hP\cdot X,
$$

with $\{X^\mu(\sigma),P_\nu(\sigma')\}=\delta^\mu{}_\nu\delta(\sigma-\sigma')$, the brackets are

$$
\begin{aligned}
\{H[f],H[k]\}&=0,\\
\{D[f],D[g]\}&=D[fg'-gf'],\\
\{H[f],D[g]\}&=H[fg'-gf'],\\
\{D[g],S[h]\}&=S[gh'],\\
\{S[h],H[f]\}&=2H[hf],\\
\{S[h],S[k]\}&=0.
\end{aligned}
$$

This establishes admissibility at zero tension, subject to the boundary assumption. Necessity instead comes from the intrinsic Carrollian representative redundancy.

At finite tension,

$$
H_T=\frac12(P^2+T^2X'^2),
$$

and the local scaling generated by $S[h]$ gives on $H_T\approx0$

$$
\delta_hH_T\approx T^2\bigl(2hX'^2+h'X\cdot X'\bigr).
$$

This is not a combination of the tensile constraints for arbitrary $h$; the obstruction disappears only at $T=0$.

# Local translation to the vault

The reusable lesson is that equality of gauge-fixed Lagrangians does not imply equality of physical phase spaces. One must derive the Gauss law before gauge fixing and retain both the constraint and its quotient. This is directly relevant to regional gauge sewing: matching local equations or a gauge-fixed action cannot replace an audit of the constraint surface, gauge generators, boundary terms, and quotient.

The result does **not** supply a regional observable algebra, edge-mode extension, exact gluing map, quantum representation, or curved-target construction. It should therefore be used as a classical gauge-completion benchmark, not as a theorem about the vault's quantum sewing problem.

# Verification log

- **Source-derived:** the section tree, intrinsic Carrollian data, minimally gauged action, Gauss law, congruence interpretation, degree count, and stated scope were reconstructed from the official v1 TeX source and the complete 12-page generated PDF.
- **Checked:** Mathematica reproduced $\delta_\chi(D_aX)=\chi D_aX$; the pure-affine transformations of $C_1,C_2$; the Carroll-Weyl transformations of $C_1,C_2$; all six smeared brackets modulo explicit total derivatives; and the finite-tension obstruction after imposing $H_T\approx0$. All ten residuals were exactly zero.
- **Assumptions:** flat Minkowski target; classical theory; minimal two-derivative completion; $P^\mu\neq0$ in the congruence discussion; regular independent first-class constraints; closed string or boundary conditions eliminating surface terms; global zero modes treated separately.
- **Not independently verified:** the cited extended-BMS$_3$ representation, the earlier papers' full Hamiltonian reductions, the $D-3$ count at singular strata, quantum anomaly freedom, and any extension to curved targets or open worldsheets.
- **Blocked:** no boundary symplectic potential or boundary-condition class is supplied, so the bracket algebra cannot be promoted from the stated closed/no-surface-term setting to a boundary-aware charge algebra.

# Reading route

Read Section 2.3 for the action-level completion, Appendix B for the algebra, and Section 3 for the distinction between affine reparametrization and the Carroll-Weyl orbit. Appendix A fixes the geometric weights; Appendix C is useful when checking that a proposed target-space gauging really represents the worldsheet redundancy.
