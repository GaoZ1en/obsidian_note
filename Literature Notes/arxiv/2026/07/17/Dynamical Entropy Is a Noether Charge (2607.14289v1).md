---
paper id: 2607.14289v1
title: Dynamical Entropy Is a Noether Charge
authors:
  - V.R. Shajiee
  - M.M. Sheikh-Jabbari
  - V. Taghiloo
publication date: 2026-07-15T18:51
abstract: |-
  The paper defines a dynamical entropy for a generic evolving null surface with Dirichlet boundary data. Geometric conditions select a null symmetry generator and a local zeroth law; a null-boundary-improved Noether charge gives the entropy density, whose local nondecrease follows from Raychaudhuri and the null energy condition without assuming background stationarity.
comments: "4+1 pages"
url: https://arxiv.org/abs/2607.14289v1
summary: "A conditional null-Dirichlet Noether-entropy construction whose focusing algebra checks, but whose v1 variational and charge presentation contains multiple defects."
tags: []
---

Back to [[2026_07_17_overview]].

The paper asks for a Noether-charge entropy on a null surface that is neither Killing nor perturbatively close to stationary. Its logic has four layers that must not be collapsed:

1. choose an affine null geometry and a strict null Dirichlet variational problem;
2. select a field-dependent boost flow by four geometric conditions;
3. improve the Einstein--Hilbert Noether potential by the null boundary action;
4. use Raychaudhuri, Einstein's equations, and the NEC only after the entropy density has been obtained.

The final focusing law survives direct algebraic checks once its entropy density is assumed. The v1 presentation nevertheless contains three source defects: the printed phase space does not preserve the affine gauge used in the boundary action, the prose misstates the longitudinal derivative of \(\kappa\mathscr B\), and the displayed boundary-improvement vector carries an extra \(\sqrt q\). The reconstruction below makes the minimal corrections and conditions explicit instead of silently absorbing them.

# How to read this short Letter

The official source has no appendix. Every part of the five-page argument is used:

| Source block | Equations | Function in the argument |
|---|---:|---|
| Introduction | — | contrasts the construction with stationary Wald entropy, spacelike dynamical horizons, and perturbative Hollands--Wald--Zhang entropy |
| Geometric Framework | (1)--(10) | fixes the null dyad, transverse geometry, affine gauge, Frobenius form, and allowed variation of the null normal |
| Variational Principle and Boundary Conditions | (11)--(13) | adds the null GHY term and chooses strict null Dirichlet data |
| Dynamical Entropy Symmetry Generators | (14)--(21) | specifies the adapted null boost flow and derives the generalized zeroth law |
| Dynamical Entropy Is a Noether Charge | (22)--(25) | evaluates the improved Noether potential and reads off the entropy density |
| Investigating the Second Law | (26)--(30) | differentiates the density and applies Raychaudhuri plus NEC |
| Discussion | — | interprets the construction quasi-locally and proposes, but does not derive, CPS and higher-curvature extensions |

The paper's strongest reproducible result is the corrected chain from Eqs. (20), (21), and (25) through Eq. (29), conditional on accepting the repaired entropy density. Its variational derivation and its identification with the integrable part of a covariant phase-space charge are not demonstrated under the phase space printed in v1.

# An affine null boundary with evolving spatial cuts

Let \(\mathcal N\) be a codimension-one null boundary. A future null generator \(l^\mu\), an auxiliary transverse null vector \(n^\mu\), and the positive cut metric \(q_{\mu\nu}\) decompose the spacetime metric as

$$
g_{\mu\nu}
=
-l_\mu n_\nu-l_\nu n_\mu+q_{\mu\nu}.
\tag{1}
$$

Their normalizations are

$$
l^2=n^2=0,
\qquad
l\!\cdot n=-1,
\qquad
q_{\mu\nu}l^\nu=q_{\mu\nu}n^\nu=0.
\tag{2}
$$

The binormal to a spatial cut \(\Sigma\subset\mathcal N\) is

$$
\epsilon_{\mu\nu}
=
l_\mu n_\nu-l_\nu n_\mu,
\qquad
\epsilon_{\mu\nu}\epsilon^{\mu\nu}=-2.
\tag{3}
$$

The paper retains the full null-frame decompositions

$$
\begin{aligned}
\nabla_\mu l_\nu={}&
-\kappa_l n_\mu l_\nu
-\kappa_n l_\mu l_\nu
-n_\mu a_\nu
+l_\mu\eta_\nu
+\omega_\mu l_\nu
+\Theta^l_{\mu\nu},
\\
\nabla_\mu n_\nu={}&
\kappa_l n_\mu n_\nu
+\kappa_n l_\mu n_\nu
-l_\mu\bar a_\nu
-\omega_\mu n_\nu
+n_\mu\bar\eta_\nu
+\Theta^n_{\mu\nu}.
\end{aligned}
\tag{4--5}
$$

All one-forms denoted by Greek letters here are transverse unless their explicit null factors say otherwise. Hypersurface orthogonality of \(l\) gives

$$
a_\mu\mathrel{\hat=}0,
\qquad
\Theta^l_{\mu\nu}
\mathrel{\hat=}
\Theta^l_{\nu\mu},
\tag{6}
$$

where \(\hat=\) means equality on \(\mathcal N\). The deformation tensor splits into shear and expansion,

$$
\Theta^l_{\mu\nu}
\mathrel{\hat=}
N^l_{\mu\nu}
+
\frac{\theta_l}{D-2}q_{\mu\nu},
\tag{7}
$$

and the null generator is rescaled to affine gauge,

$$
\kappa_l\mathrel{\hat=}0.
\tag{8}
$$

This \(\kappa_l\) is the nonaffinity of \(l\). It is not the later \(\kappa\), which is the nonaffinity of the entropy generator \(\xi\).

Locally the fixed null surface is \(\Phi=0\), with

$$
l_\mu
\mathrel{\hat=}
-e^{-\Psi}\partial_\mu\Phi.
\tag{9}
$$

Holding its location fixed, \(\delta\Phi=0\), yields

$$
\delta l_\mu
\mathrel{\hat=}
-\delta\Psi\,l_\mu.
\tag{10}
$$

This is a restriction on the allowed metric variations, not an equation of motion.

# Fixed null geometry and the null Dirichlet action

Before using any field equation, the action is chosen to be

$$
I[g]
=
\frac{1}{16\pi G}
\int_{\mathcal M}d^Dx\,\sqrt{-g}(R-2\Lambda)
+
\frac{1}{8\pi G}
\int_{\mathcal N}d^{D-1}x\,\sqrt q\,\theta_l.
\tag{11}
$$

The covariant null GHY scalar is \(\kappa_l+\theta_l\); Eq. (11) is written only after the affine choice \(\kappa_l=0\). Under a general rescaling \(l\to e^\sigma l\),

$$
\kappa_l\to e^\sigma(\kappa_l+l\sigma),
\qquad
\theta_l\to e^\sigma\theta_l.
$$

Thus \(\kappa_l+\theta_l\) is not itself invariant under arbitrary reparameterization; the full null action requires the corresponding joint term or standard null counterterm. The strict null Dirichlet data are

$$
\delta q_{\mu\nu}\mathrel{\hat=}0,
\qquad
\delta l^\mu\mathrel{\hat=}0,
\tag{12}
$$

while \(\delta n^\mu\) is not fixed. Combining Eqs. (10) and (12) gives

$$
h_{\mu\nu}l^\nu
=
-\delta\Psi\,l_\mu,
\qquad
h_{\mu\nu}=\delta g_{\mu\nu}.
$$

These conditions do **not** preserve the affine slice. A direct xCoba counterexample starts at \(\Psi=0\) in

$$
ds^2
=
-2e^{-\Psi(r)}du\,dr+dx^2+dy^2,
\qquad
\mathcal N:\ u=0,
\qquad
l=\partial_r.
$$

The cut metric and \(l^\mu\) are fixed, and \(\delta l_\mu=-\delta\Psi\,l_\mu\) exactly obeys Eqs. (10) and (12). Nevertheless,

$$
l^\nu\nabla_\nu l^\mu
=
-\Psi'(r)l^\mu,
\qquad
\delta\kappa_l
=
-(\delta\Psi)'(r),
$$

which need not vanish. Therefore varying Eq. (11) after dropping \(\sqrt q\,\kappa_l\) omits \(\delta(\sqrt q\,\kappa_l)\) on allowed variations. A consistent construction must either add \(\delta\kappa_l=0\) to the phase-space conditions or vary the full \(\sqrt q(\kappa_l+\theta_l)\) term before imposing affine gauge.

The boundary presymplectic-potential representative selected by the bulk action plus null GHY term is

$$
\begin{aligned}
\boldsymbol\Theta(\mathcal N)
={}&
\frac{1}{16\pi G}
\int_{\mathcal N}d^{D-1}x\,\sqrt q\,
l_\mu
\left(\nabla_\nu h^{\mu\nu}-\nabla^\mu h\right)
\\
&+
\frac{1}{8\pi G}
\int_{\mathcal N}d^{D-1}x\,
\delta(\sqrt q\,\theta_l).
\end{aligned}
\tag{13}
$$

The paper states that this variational problem fixes the usual \(W\)- and \(Y\)-ambiguities. Because the stated variations do not preserve \(\kappa_l=0\), Eq. (13) is not the variation of the full null boundary term on the printed phase space. The Letter also does not display its reduction to a corner term. Thus the well-posedness, ambiguity fixing, and normalization of the later improvement are not established without the additional affine-preserving condition or the ungauge-fixed boundary term.

# A dynamically adapted boost generator

The entropy flow \(\xi^\mu\) is selected by four conditions on \(\mathcal N\):

$$
\begin{aligned}
\xi^2&\mathrel{\hat=}0,
\\
\xi^\nu\nabla_\nu\xi^\mu
&\mathrel{\hat=}\kappa\xi^\mu,
\\
\nabla_{[\mu}\xi_{\nu]}
&\mathrel{\hat=}\kappa\epsilon_{\mu\nu},
\\
\nabla_\mu\left(\frac{\xi^\mu}{\kappa}\right)
&\mathrel{\hat=}0.
\end{aligned}
\tag{14a--d}
$$

They say respectively that the flow is null, nonaffinely geodesic, locally boost-normalized, and divergence-free after removal of its local normalization \(\kappa\). A dual null vector obeys

$$
\chi^2\mathrel{\hat=}0,
\qquad
\xi\!\cdot\chi\mathrel{\hat=}-1.
\tag{15}
$$

Foliation-preserving freedom is used to write the off-boundary extensions as

$$
\xi^\mu
=
\kappa(\mathscr B l^\mu-\mathscr A n^\mu),
\qquad
\chi^\mu
=
\kappa^{-1}
(\mathscr B^{-1}n^\mu-\mathscr D l^\mu).
\tag{16--17}
$$

The null products are

$$
\xi^2=2\kappa^2\mathscr A\mathscr B,
\qquad
\chi^2=\frac{2\mathscr D}{\kappa^2\mathscr B},
\qquad
\xi\!\cdot\chi=-1-\mathscr A\mathscr D.
$$

Thus, away from zeros of \(\mathscr B\),

$$
\mathscr A\mathrel{\hat=}0,
\qquad
\mathscr D\mathrel{\hat=}0,
\tag{18}
$$

and consequently \(\xi^\mu=\kappa\mathscr B l^\mu\) on the boundary. The off-boundary derivatives of \(\mathscr A\) and \(\mathscr B\) remain essential:

$$
\nabla_\mu\mathscr A
\mathrel{\hat=}
-l_\mu,
\tag{19}
$$

$$
\nabla_\mu\mathscr B
\mathrel{\hat=}
-n_\mu+f l_\mu
+
\mathscr B
\left(
\eta_\mu-\omega_\mu-\nabla_\mu\ln\kappa
\right).
\tag{20}
$$

The arbitrary function \(f\) records remaining longitudinal extension freedom. This means that “unique” should be read as unique after the stated foliation choice and up to this longitudinal freedom and constant normalization.

# The generalized zeroth law

Contracting Eq. (20) with \(l^\mu\), using transversality and \(l\!\cdot n=-1\), gives

$$
l\!\cdot\!\nabla\mathscr B
=
1-
\mathscr B,l\!\cdot\!\nabla\ln\kappa.
\tag{20l}
$$

The divergence condition in Eq. (14d) must retain the off-boundary derivative of \(\mathscr A\):

$$
\nabla_\mu\left(\frac{\xi^\mu}{\kappa}\right)
=
l\!\cdot\!\nabla\mathscr B
+
\mathscr B\nabla_\mu l^\mu
-
n\!\cdot\!\nabla\mathscr A.
$$

In affine gauge, \(\nabla\!\cdot l=\theta_l\), while Eq. (19) gives \(n\!\cdot\!\nabla\mathscr A=1\). Substituting Eq. (20l) therefore yields

$$
l\!\cdot\!\nabla\ln\mathscr K
\mathrel{\hat=}0,
\qquad
\mathscr K=\frac{\kappa}{\sqrt q}.
\tag{21}
$$

Equivalently,

$$
l\!\cdot\!\nabla\ln\kappa
=
\theta_l,
$$

because \(l\!\cdot\!\nabla\ln\sqrt q=\theta_l\). This is kinematic: it follows from the imposed generator conditions, not from Einstein's equations.

Constant rescaling \((\xi,\kappa)\mapsto(\alpha\xi,\alpha\kappa)\) leaves \(\mathscr B\) and the entropy density below invariant. The global unit of time remains unfixed. Future orientation of \(\xi=\kappa\mathscr B l\) implies only \(\kappa\mathscr B\ge0\). The paper's later use of \(\mathscr B\ge0\) therefore also assumes the positive-temperature branch \(\kappa>0\), consistent with writing \(\ln\kappa\).

# The null-GHY-improved Noether heat

Only here does the Letter pass to the on-shell Noether current,

$$
\mathbf J_\xi^\mu
=
\boldsymbol\Theta^\mu[\pounds_\xi g]
-
\xi^\mu\mathrm L,
\qquad
\mathbf J_\xi^\mu
\mathrel{\approx}
\partial_\nu\mathrm Q_\xi^{\mu\nu}.
\tag{22}
$$

The weak equality emphasizes that an off-shell diffeomorphism current also contains the gravitational constraint term. The paper adds the null-boundary Lagrangian contribution to the usual Komar/Iyer--Wald potential and writes

$$
\mathrm Q_\xi^{\mathrm N}
=
-\frac{1}{16\pi G}
\oint_\Sigma d^{D-2}x\,\sqrt q\,
\epsilon_{\mu\nu}
\left(
\nabla^{[\mu}\xi^{\nu]}
+2\xi^{[\mu}\mathcal W^{\nu]}
\right).
\tag{23}
$$

The source prints

$$
\mathcal W^\mu_{\rm source}
=
-n^\mu\sqrt q\,\theta_l.
$$

This cannot produce Eq. (24) with the already density-weighted cut measure unless \(\mathcal W^\mu\) is a density and an inverse density is hidden elsewhere. With the tensor-normalized correction

$$
\mathcal W^\mu_{\rm tens}
=
-n^\mu\theta_l,
\tag{23 corrected}
$$

the two contractions are

$$
\epsilon_{\mu\nu}
\nabla^{[\mu}\xi^{\nu]}
=
-2\kappa,
$$

$$
\epsilon_{\mu\nu}
2\xi^{[\mu}\mathcal W_{\rm tens}^{\nu]}
=
2\kappa\mathscr B\theta_l.
$$

Equation (23) then gives

$$
\mathrm Q_\xi^{\mathrm N}
=
\frac{1}{8\pi G}
\oint_\Sigma d^{D-2}x\,
\sqrt q\,\kappa
\left(1-\mathscr B\theta_l\right).
\tag{24}
$$

Factoring the local temperature \(\kappa/(2\pi)\) pointwise identifies

$$
\boxed{
\mathcal S
=
\frac{\sqrt q}{4G}
\left(1-\mathscr B\theta_l\right)}.
\tag{25}
$$

\(\mathcal S\) is a weight-one cut density. The integrated entropy is \(\int_\Sigma\mathcal S\); if \(\kappa\) varies across the cut, Eq. (24) is a locally temperature-weighted integral and \(\kappa\) cannot be pulled outside it.

# Entropy production as null focusing

Differentiate Eq. (25) along the affine generator using

$$
l\!\cdot\!\nabla\sqrt q
=
\sqrt q\,\theta_l
$$

and the verified contraction (20l). The result is

$$
l\!\cdot\!\nabla\mathcal S
=
\frac{\sqrt q}{4G}\mathscr B
\left[
-l\!\cdot\!\nabla\theta_l
+
\theta_l
\left(
l\!\cdot\!\nabla\ln\kappa-	heta_l
\right)
\right].
\tag{26}
$$

The text immediately before Eq. (26) instead says

$$
l\!\cdot\!\nabla(\kappa\mathscr B)=1.
$$

That statement is false with Eq. (20). The actual identity is

$$
l\!\cdot\!\nabla(\kappa\mathscr B)
=
\kappa.
$$

Equivalently, \(\kappa^{-1}l\!\cdot\!\nabla(\kappa\mathscr B)=1\); the source appears to have dropped the prefactor \(\kappa^{-1}\).

Equation (26), however, uses Eq. (20l), so its algebra remains correct. Applying Eq. (21) separately gives

$$
l\!\cdot\!\nabla\mathcal S
=
-\frac{\sqrt q}{4G}\mathscr B\,
l\!\cdot\!\nabla\theta_l.
\tag{27}
$$

For an affine, hypersurface-orthogonal null congruence, Raychaudhuri is

$$
l\!\cdot\!\nabla\theta_l
+
\frac{\theta_l^2}{D-2}
+
N_l^2
+
R_{ll}
=0.
\tag{28}
$$

Thus

$$
\boxed{
l\!\cdot\!\nabla\mathcal S
=
\frac{\sqrt q}{4G}\mathscr B
\left(
N_l^2
+
\frac{\theta_l^2}{D-2}
+
R_{ll}
\right)}.
\tag{29}
$$

Raychaudhuri is geometric. Einstein's equations enter only in the final sign step:

$$
R_{ll}=8\pi G T_{ll},
$$

because the terms proportional to \(g_{\mu\nu}\), including \(\Lambda\), vanish after contraction with \(l^\mu l^\nu\). On the positive-temperature branch \(\kappa>0\), future orientation gives \(\mathscr B\ge0\). For \(D>2\), \(G>0\), positive-definite \(q\), and \(T_{ll}\ge0\) for the chosen generator,

$$
l\!\cdot\!\nabla\mathcal S\ge0.
\tag{30}
$$

Equality is allowed when \(N_l=\theta_l=R_{ll}=0\). The full NEC for every null vector is a sufficient stronger assumption than the single inequality used here. The result is “strict” only in the sense of being pointwise and local in time, without a final event-horizon boundary condition.

# Notation and convention dictionary

| Paper notation | Meaning and local caution |
|---|---|
| \(\mathcal N\) | fixed null boundary |
| \(\Sigma\subset\mathcal N\) | codimension-two spatial cut; this is usually called \(\partial\Sigma\) in the gravitational-energy notes |
| \(l^\mu\) | affine null normal and tangent generator; \(\kappa_l=0\) |
| \(n^\mu\) | auxiliary transverse null vector, \(l\!\cdot n=-1\); not fixed in the variational data |
| \(q_{\mu\nu}\), \(\sqrt q\) | positive cut metric and its area density |
| \(\epsilon_{\mu\nu}\) | binormal \(l_\mu n_\nu-l_\nu n_\mu\), norm \(-2\) |
| \(\Theta^l_{\mu\nu}\) | null deformation tensor; not the presymplectic potential |
| \(N^l_{\mu\nu}\), \(\theta_l\) | shear and expansion of \(l\) |
| \(\boldsymbol\Theta^\mu\) | presymplectic-potential current selected by the action |
| \(\kappa\) | nonaffinity/local-temperature normalization of \(\xi\), not the gravitational coupling and not \(\kappa_l\) |
| \(\mathscr A,\mathscr B,\mathscr D\) | coefficients in the off-boundary extensions of \(\xi,\chi\); only \(\mathscr B\) survives on \(\mathcal N\) |
| \(f\) | unfixed longitudinal extension datum in \(\nabla\mathscr B\) |
| \(\mathscr K=\kappa/\sqrt q\) | temperature density constant along \(l\), not necessarily across a cut |
| \(\mathcal W^\mu\) | null-GHY improvement; its v1 tensor/density normalization is inconsistent |
| \(\mathrm Q_\xi^{\mathrm N}\) | integrated improved Noether heat, not yet a demonstrated integrable Hamiltonian |
| \(\mathcal S\) | entropy density including \(\sqrt q\) |

Antisymmetrization has unit weight, \(X^{[\mu}Y^{\nu]}=(X^\mu Y^\nu-X^\nu Y^\mu)/2\). The orientation is encoded by Eq. (3) and the overall minus sign in Eq. (23). A change of either convention changes intermediate charge signs.

# Translation to the vault's CPS and charge conventions

| Letter object | Vault translation |
|---|---|
| Eq. (13) | an Iyer--Wald presymplectic-potential representative fixed by the null boundary action; compare only after translating the sign convention for \(\vartheta^\mu\) |
| null GHY improvement | same conceptual slot as a boundary/corner contribution such as \(\mu_\xi-X_\xi\!\cdot C_\Gamma\), not part of the bare Komar form |
| \(\mathrm Q_\xi^{\mathrm N}\) | an improved on-shell Noether two-form interpreted as heat |
| vault Hamiltonian \(H_\xi\) | requires the full surface variation \(k_\xi=\delta Q_\xi-i_\xi\Theta\), possible field-dependence terms, and an integrability test |
| \(\xi=\kappa\mathscr B l\) | a dynamically adapted, field-dependent boundary flow, unlike a fixed background Killing vector |
| Eq. (29) | a null focusing/flux law, not the timelike Brown--York bulk--boundary charge identity |

The exact CPS comparison should preserve the order

$$
\delta L=E\delta\phi+d\Theta,
\qquad
J_\xi=\Theta(\phi,\pounds_\xi\phi)-i_\xi L,
\qquad
J_\xi\approx dQ_\xi,
$$

followed by

$$
k_\xi
=
\delta Q_\xi-i_\xi\Theta
$$

with the appropriate correction for field-dependent \(\xi\). The Letter performs the middle Noether-potential calculation but does not display the last line. Its statement that Eq. (25) is the integrable part of a CPS charge cites an “In-progress” reference and is therefore not established here.

# Concrete project extensions

1. **Null-boundary benchmark for the gravitational-energy article.** Recompute Eq. (13) in the vault's sign convention, including the complete corner term, before comparing the improved heat with the manuscript's Hamiltonian charge.
2. **Field-dependent generator ledger.** Evaluate \(\delta\xi\) for \(\xi=\kappa\mathscr B l\) and determine whether the correct surface-charge variation needs the Barnich--Troessaert/Iyer--Wald field-dependence correction.
3. **Density-safe charge notation.** Replace the ambiguous \(\mathcal W^\mu\) by a differential-form boundary potential or state its density weight explicitly; then rederive Eq. (24) without mixing tensor and measure densities.
4. **Stationary and expanding tests.** Check Rindler, an expanding Minkowski null cone, and a Vaidya-type null surface in one convention-fixed notebook.
5. **Higher-curvature extension.** First identify the null boundary term and its corner potential; only afterward replace the Einstein Komar form by the appropriate Wald potential. The Letter's discussion proposes this extension but provides no formula.

# Verification log

## Checked

- **Null algebra, Mathematica.** An explicit normalized two-dimensional null frame reproduced \(l^2=n^2=0\), \(l\!\cdot n=-1\), \(\epsilon_{\mu\nu}\epsilon^{\mu\nu}=-2\), \(\xi^2=2\kappa^2\mathscr A\mathscr B\), \(\chi^2=2\mathscr D/(\kappa^2\mathscr B)\), and \(\xi\!\cdot\chi=-1-\mathscr A\mathscr D\).
- **Null-frame derivatives, Mathematica and tensor projection.** Eqs. (4)--(8) reproduce \(l^\mu\nabla_\mu l_\nu=\kappa_l l_\nu+a_\nu\) and \(\nabla_\mu l^\mu=\kappa_l+\theta_l\). Frobenius applied to Eq. (9) gives vanishing screen twist and symmetric \(\Theta^l_{\mu\nu}\).
- **Fixed-boundary variation.** Direct variation of Eq. (9) with \(\delta\Phi=0\) gives Eq. (10) and, together with \(\delta l^\mu=0\), the displayed relation \(h_{\mu\nu}l^\nu=-\delta\Psi l_\mu\).
- **Bulk Einstein--Hilbert potential, xCPS.** `FirstVariation` and `SymplecticPotential` returned \(\Theta^\mu_{\rm EH}=\sqrt{-g}(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)\), matching the bulk current in Eq. (13) up to the directed null-surface measure and orientation. The cosmological term contributes no derivative potential.
- **Generator gradients, Mathematica.** Solving the geodesic and boost equations in a generic symbolic null frame reproduced Eqs. (19)--(20), including the free longitudinal coefficient \(f\), with zero residuals in both generator conditions.
- **Zeroth-law algebra, Mathematica.** Eqs. (19)--(20), transversality, and \(\nabla\!\cdot l=\theta_l\) reproduce Eq. (21) only when the off-boundary derivative \(n\!\cdot\!\nabla\mathscr A=1\) is retained.
- **Bulk Noether identity, xAct.** Covariant reduction gave zero residual for \(J^\mu=2G^\mu{}_\nu\xi^\nu+\nabla_\nu(\nabla^\nu\xi^\mu-\nabla^\mu\xi^\nu)\), with \(G^\mu{}_\nu\to G^\mu{}_\nu+\Lambda\delta^\mu{}_\nu\) when \(\Lambda\) is included. The usual Komar/Iyer--Wald potential therefore follows on shell.
- **Charge contraction, Mathematica.** With \(\mathcal W^\mu=-n^\mu\theta_l\), the two binormal contractions are \(-2\kappa\) and \(2\kappa\mathscr B\theta_l\), reproducing Eq. (24), including the relative sign.
- **Entropy evolution, Mathematica.** Starting from Eq. (25), using Eq. (20l) gives zero residual against Eq. (26); imposing Eq. (21) gives Eq. (27); substituting Eq. (28) gives zero residual against Eq. (29).
- **Raychaudhuri, xAct and Mathematica.** xAct gave zero residual for the covariant Ricci identity, and a symbolic null frame reduced \((\nabla_a l^c)(\nabla_c l^a)\) to \(N_l^2+\theta_l^2/(D-2)\) in affine, twist-free gauge, reproducing Eq. (28) with the paper's curvature convention.
- **Einstein/NEC sign.** Contracting Einstein's equation with \(l^\mu l^\nu\) removes both the trace and cosmological terms and gives \(R_{ll}=8\pi G T_{ll}\). The nonnegative terms in Eq. (29) then establish Eq. (30) under the stated assumptions.
- **Expanding-null-cone smoke test, xCoba and Mathematica.** For outgoing Minkowski coordinates \(ds^2=-du^2-2du\,dr+r^2d\Omega_2^2\), \(l=\partial_r\) gives \(R_{\mu\nu}=0\), \(l\!\cdot\!\nabla l=0\), and \(\theta_l=2/r\). The solutions \(\kappa=c_\kappa r^2\) and \(\mathscr B=r/3+c_B/r^2\) give zero residuals in Eqs. (21), (26), (28), and (29), while again yielding \(l(\kappa\mathscr B)=\kappa\).

## Blocked

- After adding an affine-preserving phase-space condition or restoring the full null boundary term, the complete xAct reproduction of Eq. (13), including orientation, corner terms, and factors of two, remains blocked by the source's omission of the explicit corner reduction and a convention-complete density/form definition.
- Although Eqs. (19)--(20) pass the local algebraic checks, global scalar integrability of their prescribed gradients and the claim that a foliation-preserving diffeomorphism always removes the transverse component were not established.
- A convention-resolved derivation of the total improved current from the full null boundary Lagrangian is blocked by the tensor-versus-density ambiguity in \(\mathcal W^\mu\). Equation (24) is checked only after the minimal tensor-normalized repair.
- Equality with the Hollands--Wald--Zhang entropy requires a separate convention comparison with its source. Equality with an integrable CPS charge is blocked by the unpublished reference and the absence of a displayed \(k_\xi\).
- Global existence and uniqueness of \(\mathscr A,\mathscr B,\mathscr D\) with the specified boundary values and gradients are not proved; points where \(\mathscr B=0\) require a separate analysis.

## Failed

- **Affine gauge is not preserved by Eqs. (10) and (12).** The xCoba metric above satisfies the printed Dirichlet data while giving \(\delta\kappa_l=-(\delta\Psi)'\ne0\). Equation (11) has already omitted \(\sqrt q\,\kappa_l\), so its variation misses an allowed term. This blocks the claimed well-posedness and ambiguity fixing as written and makes the subsequent Noether improvement conditional on a repaired phase space or the full ungauge-fixed null boundary action.
- **Identity before Eq. (26).** The source states \(l\!\cdot\!\nabla(\kappa\mathscr B)=1\). Mathematica and direct contraction of Eq. (20) give \(l\!\cdot\!\nabla(\kappa\mathscr B)=\kappa\), or equivalently \(\kappa^{-1}l\!\cdot\!\nabla(\kappa\mathscr B)=1\). The downstream entropy derivative remains usable because Eq. (26) uses the correct Eq. (20l).
- **Boundary-improvement density in Eq. (23).** The source definition \(\mathcal W^\mu=-n^\mu\sqrt q\,\theta_l\) produces an extra \(\sqrt q\) relative to Eq. (24). The downstream charge and entropy formulas require \(\mathcal W^\mu=-n^\mu\theta_l\) or an unstated compensating density convention. Until the authors clarify this, Eq. (24) is a corrected reconstruction rather than a literal consequence of the printed Eq. (23).
- **Reparameterization claim attached to Eq. (11).** Under \(l\to e^\sigma l\), \(\kappa_l\to e^\sigma(\kappa_l+l\sigma)\) and \(\theta_l\to e^\sigma\theta_l\), so \(\kappa_l+\theta_l\) is not an invariant scalar under arbitrary generator rescaling. The full action needs the associated joint term or standard null counterterm.
- **Future-orientation inference.** \(\xi=\kappa\mathscr B l\) being future-directed gives only \(\kappa\mathscr B\ge0\). The sign \(\mathscr B\ge0\) used in Eq. (29) additionally requires the positive-temperature branch \(\kappa>0\).
- **NEC and strictness wording.** The calculation needs \(T_{ll}\ge0\) for the chosen generator; the full NEC for every null vector is a sufficient stronger assumption. Equation (29) proves nondecrease, not strict increase, because equality is allowed when \(N_l=\theta_l=R_{ll}=0\).
