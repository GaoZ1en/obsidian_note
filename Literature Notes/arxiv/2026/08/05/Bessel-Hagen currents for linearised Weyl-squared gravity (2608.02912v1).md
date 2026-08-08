---
paper id: 2608.02912v1
title: Bessel-Hagen currents for linearised Weyl-squared gravity
authors:
  - Michael Hobson
  - Will Barker
  - Anthony Lasenby
publication date: 2026-08-03T21:56
abstract: |-
  The paper constructs the Bessel-Hagen current class for conformal transformations of four-dimensional linearised Weyl-squared gravity and proves that no local, polynomial, symmetric, rank-two, dimension-four tensor can be simultaneously quadratic in the linearised curvature, strictly invariant under both linearised diffeomorphisms and Weyl transformations, and conserved on every Bach-flat configuration.
comments: "11 pages"
url: https://arxiv.org/abs/2608.02912v1
summary: "A sharp current-level benchmark for separating gauge-invariant charge classes from nonexistent strictly invariant local stress tensors in conformal higher-derivative gravity."
tags: []
---

Back to [[2026_08_05_overview]].

The important distinction in this paper is not whether a conformal Noether current exists—it does—but which representative one asks it to have. Linearised Weyl-squared gravity has a well-defined on-shell Bessel-Hagen current class. What fails is the stronger Maxwell-like request for a local symmetric tensor $T_{\mu\nu}[C^{(1)}]$ that is strictly invariant under both gauge symmetries and generates every conformal current by contraction with a conformal Killing vector.

## How the Paper Is Organized

| Source part | Technical role |
| --- | --- |
| I. Introduction | States the Maxwell analogy and the stronger gravitational question. |
| II. Maxwell precursor | Shows how Bessel-Hagen compensation produces the gauge-invariant Maxwell stress tensor and all conformal currents. |
| III. Linearised Weyl-squared theory | Defines the action, linearised Weyl tensor, symplectic potential, and Bach equations. |
| IV. Conformal transformations | Fixes the active conformal action on $h_{\mu\nu}$ and on $C^{(1)}_{\mu\nu\rho\sigma}$. |
| V. Conformal Bessel-Hagen currents | Derives the current and its diffeomorphism/Weyl improvement freedom. |
| VI. Four-dimensional obstruction | Classifies the admissible curvature-quadratic rank-two tensors and eliminates them with dimension-dependent identities. |
| VII–VIII. Discussion and conclusions | Delimits the no-go theorem and explains what kinds of charges remain possible. |

There are no appendices. The logical center is the passage from the current class in Section V to the stricter tensor ansatz in Section VI.

## Fields, Transformations, and Convention Dictionary

The background is four-dimensional flat spacetime with metric $\eta_{\mu\nu}$. The dynamical variable is a symmetric perturbation $h_{\mu\nu}$. Its two gauge transformations are

$$\begin{align}
\delta_{\xi}h_{\mu\nu}=2\partial_{(\mu}\xi_{\nu)}, \qquad \delta_{\omega}h_{\mu\nu}=2\omega\eta_{\mu\nu}.
\end{align}$$

The linearised Weyl tensor $C^{(1)}_{\mu\nu\rho\sigma}[h]$ is strictly invariant under both. The action is normalized as

$$\begin{align}
S_C[h]=\frac12\int d^4x\, C^{(1)}_{\mu\nu\rho\sigma}C^{(1)\mu\nu\rho\sigma}.
\end{align}$$

The Euler–Lagrange tensor is the linearised Bach tensor

$$\begin{align}
B^{\mu\nu}=2\partial_\alpha\partial_\beta C^{(1)\mu\alpha\nu\beta},
\end{align}$$

up to the action convention fixed above.

| Paper object | Meaning here | Vault translation |
| --- | --- | --- |
| $h_{\mu\nu}$ | Linearised conformal graviton | Perturbation variable; not itself gauge invariant. |
| $C^{(1)}$ | Linearised Weyl curvature | Gauge-invariant local field strength. |
| $B^{\mu\nu}$ | Euler–Lagrange/Bach tensor | Equation-of-motion factor in the Noether identity. |
| $\Theta^\mu(h,\delta h)$ | Boundary term in $\delta L$ | CPS symplectic potential current density, before quotienting by improvements. |
| $J^\mu_\zeta$ | Bessel-Hagen Noether current | A representative of an on-shell current class, not yet a codimension-two charge. |
| $S^{\mu\nu}$ | Antisymmetric local improvement | Superpotential ambiguity $J\sim J+\partial_\nu S^{\mu\nu}$. |
| $\zeta^\mu$ | Conformal Killing vector | Rigid spacetime symmetry parameter. |
| $\xi_\mu,\omega$ | Compensating gauge parameters | May depend locally on $\zeta$ and $h$; they move within the current class. |

The conformal Killing convention is

$$\begin{align}
\partial_{(\mu}\zeta_{\nu)}=\sigma\eta_{\mu\nu}, \qquad \sigma=\frac14\partial_\rho\zeta^\rho.
\end{align}$$

The active transformation of the perturbation is

$$\begin{align}
\Delta_\zeta h_{\mu\nu} =-\mathcal L_\zeta h_{\mu\nu}+2\sigma h_{\mu\nu},
\end{align}$$

and the curvature transforms covariantly,

$$\begin{align}
\Delta_\zeta C^{(1)}=-\mathcal L_\zeta C^{(1)}+2\sigma C^{(1)}.
\end{align}$$

The sign in front of $\mathcal L_\zeta$ is therefore part of the paper's active convention and should not be silently changed when comparing with a passive-coordinate CPS convention.

## Maxwell: Why the Bessel-Hagen Mechanism Succeeds There

For Maxwell theory, a spacetime conformal transformation of $A_\mu$ differs from a gauge-covariant transformation by a field-dependent gauge shift. Choosing the Bessel-Hagen compensator makes the current depend only on $F_{\mu\nu}$:

$$\begin{align}
J^\mu_\zeta=T^{\mu}{}_{\nu}\zeta^\nu, \qquad T_{\mu\nu} =F_{\mu\rho}F_\nu{}^\rho -\frac14\eta_{\mu\nu}F_{\rho\sigma}F^{\rho\sigma}.
\end{align}$$

The tensor is symmetric, traceless, strictly gauge invariant, and conserved on the Maxwell equations. Hence translations, Lorentz transformations, dilatations, and special conformal transformations are all moments of one tensor.

The algebraic reason is immediate. If $T^{\mu\nu}$ is symmetric and conserved, then

$$\begin{align}
\partial_\mu(T^{\mu\nu}\zeta_\nu) =T^{\mu\nu}\partial_\mu\zeta_\nu =\sigma T^\mu{}_{\mu}.
\end{align}$$

Tracelessness therefore gives a conserved current for every conformal Killing vector. This successful precursor defines the exact stronger property that Section VI tests in Weyl-squared gravity.

## Weyl-Squared Variation and the Bach Equation

The action variation is organized as

$$\begin{align}
\delta L_C=B^{\mu\nu}\delta h_{\mu\nu} +\partial_\mu\Theta^\mu(h,\delta h).
\end{align}$$

Because $L_C$ contains two derivatives of $h$ through $C^{(1)}$ and is quadratic in that curvature, $\Theta^\mu$ contains both $C^{(1)}\partial\delta h$ and $(\partial C^{(1)})\delta h$ terms. This is the first point where the Maxwell analogy becomes structurally incomplete: the canonical current is not already a curvature-quadratic tensor contracted with $\zeta$.

The Bach tensor satisfies the linear gauge identities

$$\begin{align}
\partial_\mu B^{\mu\nu}=0, \qquad B^\mu{}_{\mu}=0,
\end{align}$$

as consequences of diffeomorphism and Weyl invariance. These are off-shell Noether identities; the field equation is the stronger condition $B^{\mu\nu}=0$.

## The Conformal Current Class

For the active conformal variation, the source constructs

$$\begin{align}
J^\alpha_{\zeta,0,0} =\Theta^\alpha(h,\Delta_\zeta h)+\zeta^\alpha L_C.
\end{align}$$

Adding an arbitrary linearised diffeomorphism and Weyl transformation to the conformal variation gives the full family

$$\begin{align}
J^\alpha_{\zeta,\xi,\omega} =J^\alpha_{\zeta,0,0} -2B^{\alpha\nu}\xi_\nu +\partial_\beta S^{\alpha\beta}_{\zeta,\xi,\omega}, \qquad S^{\alpha\beta}=-S^{\beta\alpha}.
\end{align}$$

Consequently, on Bach shell,

$$\begin{align}
J^\alpha_{\zeta,\xi,\omega} \simeq J^\alpha_{\zeta,0,0} +\partial_\beta S^{\alpha\beta},
\end{align}$$

where $\simeq$ means equality after imposing $B^{\mu\nu}=0$. The compensators change a representative but do not change the local on-shell current class.

Under an independent gauge transformation $(\chi_\mu,\psi)$, the conformal transformation induces new gauge parameters

$$\begin{align}
\eta_\mu=2\sigma\chi_\mu-(\mathcal L_\zeta\chi)_\mu, \qquad \kappa=-\chi^\rho\partial_\rho\sigma-\zeta^\rho\partial_\rho\psi.
\end{align}$$

This is enough to show that the gauge variation of the current is, on shell, another superpotential. Thus the physically relevant statement is gauge invariance of the current class modulo equations of motion and improvements—not strict invariance of a chosen local current density.

For vault CPS language, the hierarchy is

$$\begin{align}
\text{Noether identity} \longrightarrow
\text{on-shell current class} \longrightarrow
\text{possible codimension-two superpotential} \longrightarrow
\text{boundary conditions and integrability}.
\end{align}$$

This paper establishes the first two arrows. It does not choose asymptotic boundary conditions, construct an integrated surface charge, or prove integrability of a Hamiltonian generator.

## The Four-Dimensional Obstruction

The no-go theorem imposes all of the following conditions on a candidate $T_{\mu\nu}$:

1. local and polynomial;
2. symmetric rank two;
3. engineering dimension four with no external scale;
4. quadratic in the linearised curvature;
5. strictly invariant under both $\delta_\xi$ and $\delta_\omega$;
6. conserved on every solution of $B_{\mu\nu}=0$.

Strict gauge invariance and the dimension count reduce the candidate to contractions of two linearised Weyl tensors, with or without one Hodge dual. Four-dimensional dimension-dependent identities then collapse the parity-even and parity-odd rank-two structures:

$$\begin{align}
C_{\mu\alpha\beta\gamma}C_\nu{}^{\alpha\beta\gamma} =\frac14\eta_{\mu\nu} C_{\rho\alpha\beta\gamma}C^{\rho\alpha\beta\gamma}, \tag{39}
\end{align}$$

$$\begin{align}
C_{\mu\alpha\beta\gamma}{}^\star C_\nu{}^{\alpha\beta\gamma} =\frac14\eta_{\mu\nu} C_{\rho\alpha\beta\gamma}{}^\star C^{\rho\alpha\beta\gamma}. \tag{40}
\end{align}$$

Therefore every admissible candidate is pure trace:

$$\begin{align}
T_{\mu\nu} =\eta_{\mu\nu} \left(c_1 C_{\alpha\beta\gamma\delta}C^{\alpha\beta\gamma\delta} +c_2 C_{\alpha\beta\gamma\delta}{}^\star C^{\alpha\beta\gamma\delta} \right).
\end{align}$$

Conservation on every Bach-flat field would require both scalar invariants to be constant on every such field, which is false. A Schwarzschild-type Bach-flat perturbation has nonconstant parity-even Weyl invariant and removes $c_1$. A rotating Kerr-type example has a nonconstant parity-odd invariant and then removes $c_2$. Hence

$$\begin{align}
c_1=c_2=0,
\end{align}$$

and no nonzero tensor in the stated class exists.

The crucial logical point is that Eq. (39) does not say gravitational energy vanishes. It says that a particular local curvature-quadratic rank-two ansatz degenerates to pure trace in four dimensions. The current constructed in Section V remains nontrivial as an on-shell equivalence class.

## What the Theorem Does and Does Not Exclude

The obstruction does exclude a Maxwell-style universal local tensor satisfying the six conditions above. It does not exclude:

- boundary or asymptotic charges obtained from a non-strictly-invariant representative;
- superpotentials and corner terms;
- pseudotensors or frame-dependent densities;
- nonlocal expressions or expressions involving an external scale;
- higher-rank or higher-derivative objects;
- dimensions other than four;
- a theory in which Weyl symmetry is fixed or broken;
- charges defined after imposing boundary conditions and selecting a conformal frame.

For the current AdS/gravitational-energy work, the practical lesson is a failure shield: do not infer the nonexistence of charges from the nonexistence of a strict local stress representative. Conversely, do not call a current class a CPS charge before its superpotential, boundary flux, and integrability have been analyzed.

## Concrete Extensions for the Current Projects

1. Rewrite the Section V current as a variational-bicomplex identity $J_\zeta\simeq dQ_\zeta$ and isolate which part of $Q_\zeta$ changes under the Bessel-Hagen compensators.
2. Repeat the classification after fixing an AdS scale $\ell$. The no-external-scale hypothesis then changes, so the flat-space no-go does not transfer verbatim.
3. Test whether boundary conditions select a preferred representative whose gauge variation vanishes after pullback to the asymptotic boundary even though it is not strictly invariant in the bulk.
4. Compare the obstruction with the previously screened linearised-gravity Noether energy-momentum tensor classification: the present paper supplies the sharper conformal/Weyl-specific obstruction, while that work organizes the larger non-strict family.

## Verification Log

### Checked

- **xAct:** `ConstructDDIs` generated the exact parity-even four-dimensional identity (39), including the coefficient $1/4$, after canonicalization.
- **Mathematica:** in momentum space, the linearised Weyl tensor was constructed from a generic symmetric perturbation. Substituting the combined pure-gauge shift $h_{\mu\nu}=k_\mu\xi_\nu+k_\nu\xi_\mu+2\omega\eta_{\mu\nu}$ made all 256 Weyl components vanish exactly. This independently checks strict linearised diffeomorphism and Weyl invariance before the current analysis.
- **Mathematica:** the generic momentum-space Bach tensor $B_{\mu\nu}=2k^\alpha k^\beta C_{\mu\alpha\nu\beta}$ was symmetric, traceless, and transverse component by component. This reproduces the linear Noether identities used in the source.
- **Mathematica:** an exact algebraic Weyl tensor was built from independent self-dual and anti-self-dual symmetric traceless blocks. Its pair symmetries, first Bianchi identity, and all traces were checked exactly. Both residuals in (39) and (40) vanished component by component for this generic rational test tensor. This is an independent exact component check of both identities, but only the parity-even one was also obtained as an analytic xAct DDI.
- **Mathematica:** for the special-conformal vector $\zeta^\nu=2(b\!\cdot x)x^\nu-b^\nu x^2$, the contraction $T^{\mu\nu}\partial_\mu\zeta_\nu=2(b\!\cdot x)T^\mu{}_\mu$ was reproduced for a generic symmetric tensor. This verifies the Maxwell precursor's conservation mechanism once $\partial_\mu T^{\mu\nu}=0$ and $T^\mu{}_\mu=0$ are imposed.

### Blocked

- xAct's direct parity-odd DDI enumeration with an explicit Levi-Civita tensor did not terminate within the allotted two-minute run. Equation (40) therefore has an exact generic component check, not an independent analytic enumeration proof in this run.
- The source's initial local classification—namely that the six hypotheses exhaust the candidate space by curvature-quadratic contractions—uses local invariant/cohomological reasoning rather than a finite tensor-algebra calculation. It was reconstructed but not independently proved.
- The Schwarzschild/Kerr examples were inspected as the source's route for eliminating $c_1,c_2$; their full linearised Bach-flat component calculations were not regenerated from a metric in xAct.
- The complete symplectic potential and every term in the gauge variation of $J^\mu_{\zeta,\xi,\omega}$ were not independently regenerated from the action. The current chain remains source-derived at those steps.

### Failed

- No displayed source equation failed the completed independent checks.
