---
paper id: 2610.20931v1
title: Local supersymmetry implies momentum map/Gauntlett-Pakis equations and vanishing generalized Komar forms
authors:
  - Patrick Meessen
  - Tomás Ortín
publication date: 2026-10-14T20:59:14
abstract: |-
  The paper relates first-order Killing-spinor-bilinear equations to the action of local supersymmetry on bosonic fields. It identifies momentum maps and a candidate vanishing generalized Komar form in minimal four-dimensional supergravities and eleven-dimensional supergravity.
comments: "18 pages, no figures"
url: https://arxiv.org/abs/2610.20931v1
summary: "A useful local supersymmetry-to-momentum-map construction, with explicit sign, normalization and Clifford-grade obstructions in the printed Komar derivation."
tags: []
---

# Local supersymmetry, momentum maps, and the Komar representative

**Verdict.** The bosonic invariance mechanism gives a reusable route to momentum-map equations. The printed paper does **not** establish its universal Komar-vanishing claim with a consistent formula chain: the four-dimensional equations (3.8)–(3.10) conflict, the eleven-dimensional gravitino rule has a Clifford-grade obstruction under the usual slash convention, and the signs of (5.3)–(5.4) contradict (4.2), (4.10), and (5.2). These are distinct defects; the momentum-map interpretation should not be discarded with the failed steps.

This is a completed reconstruction of the available v1, including its failed and conditional branches, not an endorsement of every source claim. [Official paper](https://arxiv.org/abs/2610.20931v1). [[2026_10_16_overview]]

## Source map and dependencies

| Source | Technical content | Dependency and status |
|---|---|---|
| §1, pp. 3–6 | Local supersymmetry algebra, compensating gauge transformations, commuting-spinor reduction | Structural input; a model-dependent algebra must actually close on the chosen bosonic background |
| §2, pp. 6–8 | Minimal ungauged N=1, d=4; parallel bilinear vector and zero ordinary Komar form | Local tensor consequence of a parallel Killing spinor |
| §3, pp. 8–10 | Pure N=2, d=4; electric/magnetic scalar bilinears and generalized Komar candidate | Momentum-map identification useful; printed final coefficient/sign chain fails |
| §4, pp. 11–12 | Eleven-dimensional 3-form/dual 6-form, coupled momentum maps, 9-form Komar expression | Hodge conversion checked; derivation from printed gravitino rule not certified |
| §5, pp. 13–14 | Closed-form ambiguity, source term, branes, unaccounted bilinears, equivariant interpretation | Shift signs corrected locally below; global and universal extensions remain open |
| pp. 15–18 | References | No technical appendix. Actions and complete spinor conventions are delegated to references |

The source chain is

$$
[\delta_{\epsilon_1},\delta_{\epsilon_2}]
\longrightarrow -\mathcal L_k+\delta_{\Lambda_k}
\longrightarrow
\begin{cases}
\text{invariance of gauge potentials: momentum maps},\\
\text{symmetric frame equation: Killing equation},\\
\text{antisymmetric frame equation: candidate Komar relation}.
\end{cases}
$$

The last arrow requires the correct matter coefficients and a separately established charge representative. Closure into a diffeomorphism *plus gauge transformations* alone cannot force an arbitrary extra Lorentz term to vanish. On a preserved bosonic configuration, the independent symmetric and antisymmetric tensor equations are the more precise argument.

## Conventions and objects

The source uses a coframe $e^a$, a torsionless bosonic spin connection $\omega^{ab}$, and

$$
\mathcal D\epsilon=d\epsilon-\frac14\omega^{ab}\gamma_{ab}\epsilon,
\qquad \mathcal D v^a=dv^a-\omega^a{}_b v^b,
\qquad R^{ab}=d\omega^{ab}-\omega^a{}_c\wedge\omega^{cb}.
$$

These signs differ from a convention with $D=d+\omega$. Translate the connection as well as the curvature; changing only the displayed covariant derivative is inconsistent. Fermion background fields are zero. The bosonic connection therefore has no gravitino torsion. The paper is about ungauged Poincaré examples in four dimensions, not the AdS constrained-BF theory of the calibration note.

We use unit-weight antisymmetrization and normalized forms,

$$
P_k^{ab}=\nabla^{[a}k^{b]},\quad
\hat k=k_\mu dx^\mu,\quad
 d\hat k=P_{k\,ab}e^a\wedge e^b,
\quad F=\frac12 F_{ab}e^a\wedge e^b.
$$

Thus $(d\hat k)_{ab}=2P_{k\,ab}$. This factor cannot be dropped when comparing §3's component and form equations. The explicit Hodge checks below use an oriented Lorentzian orthonormal frame with mostly-minus signature. In four dimensions $\star^2=-1$ on 2-forms. In eleven dimensions there are ten negative directions. A normalized multivector contraction is $\iota_\alpha=(1/p!)\alpha^{a_1\ldots a_p}\iota_{a_p}\cdots\iota_{a_1}$ for a $p$-form $\alpha$.

| Object | Degree | Role |
|---|---:|---|
| $k$, $\hat k$ | vector, 1 | Bilinear supersymmetric Killing generator and its metric dual |
| $P_k^{ab}$ | 0 with two Lorentz indices | Lorentz momentum map |
| $P_k,\widetilde P_k$ in d=4 | 0, 0 | Electric/magnetic Maxwell potentials relative to $k$ |
| $C,G=dC$ in d=11 | 3, 4 | Gauge potential and field strength |
| $\widetilde C$ | 6 | Local on-shell dual potential including the Chern–Simons correction |
| $P_k,\widetilde P_k$ in d=11 | 2, 5 | Coupled electric/magnetic momentum maps |
| $\mathbf K[k]$ | d−2 | Generalized Komar form; not automatically a normalized CPS Hamiltonian |

No asymptotic boundary conditions or normalization at infinity are imposed in the calculation. Global dual potentials are not assumed. $\epsilon_i=\vartheta_i\epsilon$ uses constant odd scalars $\vartheta_i$ and a commuting Majorana spinor $\epsilon$; preservation is imposed by setting $\epsilon=\kappa$ satisfying the Killing-spinor equation. Overall odd-parameter normalization does not resolve the relative coefficient conflicts below.

## §1: what local supersymmetry actually supplies

The input algebra is $[\delta_{\epsilon_1},\delta_{\epsilon_2}]=\delta_\xi$, with $\delta_\xi=-\mathcal L_\xi+\delta_{\Lambda_\xi}$ and a vector bilinear $\xi$. The compensator contains local Lorentz and gauge transformations and may be field dependent. On a bosonic configuration preserved by both supersymmetries, $\delta_k$ vanishes on the fields.

For a Maxwell field, use $\mathcal L_k A=\iota_kF+d(\iota_kA)$ and choose $\Lambda_k=\iota_kA-P_k$. Then

$$
\delta_kA=-\iota_kF-dP_k=0.
$$

This is the momentum-map equation. A bilinear that occurs in $\Lambda_k$ is a solution of it, not a uniquely normalized observable. Its integrability follows from $dF=0$ and $\mathcal L_kF=0$. The Lorentz analogue is

$$
\iota_kR^{ab}+\mathcal DP_k^{ab}=0,
\qquad \sigma_k^{ab}=\iota_k\omega^{ab}-P_k^{ab}.
$$

These are local equations for a symmetry lift. Existence of a globally compatible lift, patch changes and allowed closed-form shifts remain separate issues. A statement about all supergravities needs control over their full gauge algebra, auxiliary/on-shell conditions and matter sector; three worked examples do not provide that classification.

## §2: minimal N=1 in four dimensions

The fields are $e^a$ and a Majorana gravitino $\psi$. The relevant rules are

$$
\delta_\epsilon e^a=-i\bar\epsilon\gamma^a\psi,
\qquad \delta_\epsilon\psi=\mathcal D\epsilon,
\qquad \delta_\sigma e^a=\sigma^a{}_be^b,
\qquad \delta_\sigma\psi=\tfrac14\sigma_{ab}\gamma^{ab}\psi.
$$

Source (2.4) expresses the frame commutator as a covariant derivative of $\xi^a=-i\bar\epsilon\gamma^a\epsilon$, up to the common Grassmann factor. With $\mathcal D\kappa=0$, compatibility of the spinor derivative with the Clifford action implies

$$
\nabla_\mu k_\nu=0.
$$

Both symmetric and antisymmetric derivatives vanish, hence $\nabla_{(\mu}k_{\nu)}=0$, $P_k^{ab}=0$, $d\hat k=0$, and $\mathbf K[k]=\star d\hat k=0$. This is stronger than the Killing equation, but it does not imply zero full Riemann tensor: a parallel spinor/vector can occur on nonflat special geometries.

The source rewrites $-\mathcal Dk^a=\delta_ke^a+P_k{}^a{}_be^b$, with

$$
\mathbb L_ke^a=\mathcal Dk^a+P_k{}^a{}_be^b
=\frac12(\nabla_bk^a+\nabla^ak_b)e^b.
$$

The split is checked as a tensor identity. The factors in the schematic $X_{ab}$ of (2.17)–(2.19) should not be used to normalize a charge: the earlier definition of $X$ and (2.18)'s factor two need reconciliation. The zero statements are unaffected.

## §3: pure N=2, electric and magnetic momentum maps

The fields are $e^a$, two Majorana gravitini with suppressed SO(2) indices, and $A$. Locally on shell $d\widetilde A=\star F$. In the source's notation,

$$
\begin{aligned}
\delta_\epsilon A&=-i\bar\epsilon\sigma^2\psi,&
\delta_\epsilon\widetilde A&=\bar\epsilon\sigma^2\gamma_5\psi,\\
\delta_\epsilon\psi&=\mathcal D\epsilon+\frac14\not{\widetilde F}\,\gamma\sigma^2\epsilon,&
\gamma^{(n)}&=\frac1{n!}\gamma_{a_1\cdots a_n}e^{a_1}\wedge\cdots\wedge e^{a_n}.
\end{aligned}
$$

Here $\widetilde F$ in the gravitino variation denotes the supercovariant field strength $F+$ fermion terms; it is **not** the Hodge-dual field strength. The tilde on $\widetilde A$ has a different meaning.

The gauge commutators (3.6a,b) identify

$$
k^a=-i\bar\kappa\gamma^a\kappa,\qquad
P_k=-i\bar\kappa\sigma^2\kappa,\qquad
\widetilde P_k=\bar\kappa\sigma^2\gamma_5\kappa,
$$

and give $dP_k=-\iota_kF$, $d\widetilde P_k=-\iota_k\star F$. The source frame commutator (3.6c) has $\mathcal Dk^a+(P_kF+\widetilde P_k\star F)^a{}_be^b$. Adding and subtracting the Lorentz momentum yields its (3.8):

$$
\mathbb L_ke^a+
[-P_k{}^a{}_b+P_kF^a{}_b+\widetilde P_k(\star F)^a{}_b]e^b=0.
$$

The first coefficient is symmetric after lowering the free Lorentz index, and the square bracket is antisymmetric. Therefore the latter implies

$$
-P_{k\,ab}+P_kF_{ab}+\widetilde P_k(\star F)_{ab}=0.
\tag{N2-a}
$$

**Failed: sign in (3.9).** The source instead prints the same equation with **plus** $P_{k\,ab}$. Substitution of (N2-a) into the printed equation leaves $2(P_kF_{ab}+\widetilde P_k\star F_{ab})$, generically nonzero. Lowering the index changes no relative sign.

**Failed: component-to-form normalization in (3.9)→(3.10).** Even accepting the printed (3.9) independently, wedging with the coframes yields

$$
d\hat k+2P_kF+2\widetilde P_k\star F=0,
$$

whose dual is $\star d\hat k+2P_k\star F-2\widetilde P_kF=0$. The source prints

$$
\mathbf K_{\rm source}[k]=\star d\hat k+P_k\star F-\widetilde P_kF=0.
\tag{3.10, source}
$$

The missing relative factors cannot be changed by one overall charge normalization. If (3.8) is taken as the input, its algebraic consequence is instead $\star d\hat k-2P_k\star F+2\widetilde P_kF=0$. This is an implication of that input, **not** a certified corrected supergravity Komar charge. Determining which earlier variation/commutator coefficient needs repair requires a convention-complete independent supersymmetry computation and action-level charge derivation. The paper does not supply a consistent set that selects that repair.

## §4: eleven-dimensional Chern–Simons coupling

The local dual-potential equation is

$$
G=dC,\qquad d\widetilde C=\star G+\tfrac12G\wedge C.
\tag{4.2}
$$

It implies $dG=0$ and the bosonic gauge equation $d\star G=-\tfrac12G\wedge G$. The compensators preserve the combination of the 3-form gauge symmetry and its dual 6-form symmetry, with source $\delta_\Lambda\widetilde C=d\widetilde\Lambda+\frac12C\wedge\delta_\Lambda C$.

The variations of the potentials and frame are

$$
\delta_\epsilon e^a=-i\bar\epsilon\Gamma^a\psi,\quad
\delta_\epsilon C=\bar\epsilon\Gamma^{(2)}\wedge\psi,\quad
\delta_\epsilon\widetilde C=i\bar\epsilon\Gamma^{(5)}\wedge\psi-\tfrac12C\wedge\delta_\epsilon C.
$$

The source writes the gravitino variation as

$$
\delta_\epsilon\psi=\mathcal D\epsilon+
\frac{i}{(4!)^2}\big(\not{\widehat G}\Gamma^{(1)}-\Gamma^{(1)}\not{\widehat G}\big)\epsilon.
\tag{4.4d, source}
$$

Here $\widehat G=G+$ fermion terms. The proposed bosonic symmetry transformations are

$$
\begin{aligned}
\delta_ke^a&=-\mathcal Dk^a-P_k{}^a{}_be^b,\\
\delta_kC&=-(\iota_kG+dP_k),\\
\delta_k\widetilde C&=-(\iota_k\star G+P_k\wedge G+d\widetilde P_k)+\tfrac12C\wedge\delta_kC.
\end{aligned}
$$

Consequently, preservation implies the **coupled** momentum-map equations

$$
dP_k=-\iota_kG,\qquad
d\widetilde P_k=-\iota_k\star G-P_k\wedge G.
\tag{11D maps}
$$

The second is not the momentum equation of an independently closed 7-form. Its integrability uses the Chern–Simons equation:

$$
d\iota_k\star G=-\iota_kd\star G
=\tfrac12\iota_k(G\wedge G)=(\iota_kG)\wedge G,
$$

where $\mathcal L_k\star G=0$. Thus $d^2\widetilde P_k=-(\iota_kG)\wedge G+(\iota_kG)\wedge G=0$.

The source defines $K^{(n)}=-(i)^n\bar\epsilon\Gamma^{(n)}\epsilon$ for $n=1,2,5,6,9,10$. Its reported gauge commutators are proportional to $dK^{(2)}+\iota_{K^{(1)}}G$ and $dK^{(5)}+K^{(2)}\wedge G+\iota_{K^{(1)}}\star G$, together with the compensating $C\wedge\delta_kC$ term. It identifies

$$
\hat k=K^{(1)},\qquad P_k=K^{(2)},\qquad \widetilde P_k=K^{(5)}.
$$

Its reported frame commutator then gives

$$
\frac12d\hat k+\frac1{3!}\iota_{\widetilde P_k}\star G-\frac13\iota_{P_k}G=0.
\tag{4.9, source}
$$

Under the declared normalized-contraction and Hodge conventions,

$$
\star(\iota_{P_k}G)=P_k\wedge\star G,\qquad
\star(\iota_{\widetilde P_k}\star G)=\widetilde P_k\wedge G.
$$

Hence (4.9) indeed converts to

$$
\mathbf K[k]=\star d\hat k+\frac13\widetilde P_k\wedge G-\frac23P_k\wedge\star G=0.
\tag{4.10, conditional}
$$

**Checked:** both Hodge identities on every basis pair: $55\times330=18{,}150$ for a 2-form against a 4-form and $462\times330=152{,}460$ for a 5-form against a dual 4-form. Bilinearity extends these algebraic checks to arbitrary forms in the stated frame/signature.

**Failed under the usual slash interpretation:** (4.4d) has a rank-3 Clifford flux operator only. For an antisymmetric rank-4 Clifford element $\not G$, $[\not G,\Gamma_a]$ contains the contraction grade 3; the grade-5 terms cancel. Multiplication by the frame variation's $\Gamma^b$ can produce grades 2 and 4, not the grade 5 dual to grade 6 needed for the general $K^{(5)}$ contribution in (4.7c). A faithful 32-dimensional mostly-minus Clifford representation passes all 121 anticommutator checks; with decomposable spatial flux $\Gamma_{1234}$ its commutator with every transverse $\Gamma_a$ vanishes and every corresponding rank-5 coefficient is zero. No slash normalization repairs this missing grade. The explicit variation needs correction before its advertised complete commutator chain can be certified. The Hodge check does not repair or validate this upstream step.

## §5: closed-form ambiguity and its actual source term

Take the source's bilinear representatives and its displayed Komar expression as conditional inputs. Add **closed** forms as in (5.2):

$$
P_k=K^{(2)}+h^{(2)},\qquad
\widetilde P_k=K^{(5)}+h^{(5)},\qquad dh^{(2)}=dh^{(5)}=0.
$$

The electric map equation survives, whereas direct substitution into the magnetic one gives

$$
\iota_k\star G+P_k\wedge G+d\widetilde P_k
=+h^{(2)}\wedge G.
\tag{corrected 5.3}
$$

The source prints a minus sign. Moreover

$$
\Delta\mathbf K=\tfrac13h^{(5)}\wedge G-\tfrac23h^{(2)}\wedge\star G,
\qquad
d\Delta\mathbf K=+\tfrac13h^{(2)}\wedge G\wedge G,
\tag{corrected 5.4}
$$

using $d\star G=-\frac12G\wedge G$. The printed minus sign again fails. A concrete nonzero local test is $h^{(2)}=e^{12}$ and $G=e^{3456}+e^{789\,10}$, for which $h^{(2)}\wedge G\wedge G=2e^{1\cdots10}$.

This is a local algebraic correction relative to the source's own (4.2) and (4.10), not a new microstate-existence result. To preserve **both** map equations while changing $P_k$ by $h^{(2)}$, a correlated shift $\Delta\widetilde P_k=B^{(5)}$ must satisfy $dB^{(5)}=-h^{(2)}\wedge G$. Its global solvability requires the corresponding cohomology class to vanish. Arbitrary independent closed shifts do not preserve the coupled system.

The remaining discussion has four bounded extensions:

- Two commuting Killing spinors can be inserted as $\epsilon_i=\vartheta_{(i)}\eta_{(i)}$, producing mixed bilinears; their complete algebra is not worked out here.
- Vanishing of this local representative may enter BPS arguments for 0-branes. The paper explicitly notes divergent integrals for extended branes; no finite p-brane charge is constructed.
- Equations for $K^{(6)}$ and $K^{(9)}$ are not recovered. A KK-monopole/exotic-brane interpretation is a proposal. Closure of $K^{(10)}\sim\star K^{(1)}$ follows from the divergence-free Killing vector.
- For the equivariant observation, $(d-\iota_k)(P_k-G)=-\iota_kP_k$ after using the electric equation and $dG=0$. Equivariant closure additionally needs $\iota_kP_k=0$ (for example from a suitable bilinear identity) and an invariant-form domain; it does not follow from the momentum equation alone. That Fierz/horizontality input is not independently checked here.

## Translation into CPS and regional charge work

The immediate reusable object is the lift $(k,\Lambda_k,\sigma_k)$ and the coupled momentum-map system, with its representative ambiguity retained. It can be used before constructing the charge to determine which boundary gauge transformations accompany a geometric generator.

A closed spacetime $(d-2)$-form is not yet a phase-space Hamiltonian. One still needs an action, its boundary-complete potential $\theta$, and a surface variation of the form $\delta Q_k-Q_{\delta k}-\iota_k\theta$ with the appropriate compensating gauge terms and allowed variations. The bilinear generator is field dependent. Nothing here proves finiteness, integrability, boundary flux cancellation, a regional sewing law, or a central extension.

For a region with a boundary, fixing the momentum-map representative at infinity or on an interface can change the candidate charge even when a bilinear representative vanishes. In the eleven-dimensional example the shift must satisfy the *coupled* map equations. A direct test for regional sewing is whether the transition data admit $B^{(5)}$ with $dB^{(5)}=-h^{(2)}\wedge G$, not whether a single local spinor bilinear can be set to zero.

## Verification ledger

| Label | Calculation and evidence | Result and boundary |
|---|---|---|
| Source-derived | Entire §§1–5, all technical equations and discussion; TeX and PDF | Complete reconstruction; no technical appendix |
| Checked | xAct canonical/metric-contraction pipeline: three symmetric/antisymmetric and Lie-Lorentz tensor residuals | All zero; no Killing-spinor existence theorem |
| Checked | Mostly-minus Hodge basis computation | 6 four-dimensional double-duals and 170,610 eleven-dimensional pair identities pass |
| Failed | Mathematica substitution of (3.8) into (3.9), then (3.9) into (3.10) with $(dk)_{ab}=2P_{ab}$ | Nonzero residuals $2(pF+q\star F)$ and $-(pF+q\star F)$ |
| Checked / Failed | Explicit 32×32 Clifford matrices, 121 relations; rank test for printed (4.4d) | Clifford algebra passes; required rank-5 flux component absent |
| Checked | Coupled-map integrability and closed-shift differentiation using (4.2) | Algebraic cancellations and positive signs reproduced |
| Failed | Source (5.3), (5.4) | Residuals $2h^{(2)}\wedge G$ and $\frac23h^{(2)}\wedge G\wedge G$ |
| Blocked | Complete supersymmetry-to-Komar coefficient chain | Inconsistent printed N=2 chain and eleven-dimensional variation; no unique upstream repair certified |
| Not independently verified | Full Fierz identities, action-derived Komar normalization, all-supergravity assertion, global topology/BPS charges | These are not consequences of the finite matrix/form checks |

**Verified:** the explicitly listed local tensor, Hodge, Clifford and differential-form checks, with the failed source steps isolated.

**Assumptions:** smooth bosonic background, torsionless connection, stated Lorentz/Hodge conventions, local dual potentials, $dG=0$, $d\star G=-\frac12G\wedge G$, and invariance under $k$ where used. The shift check takes (4.10) as a conditional representative.

**Not verified:** a corrected full eleven-dimensional supersymmetry computation, four-dimensional physical charge normalization, global representatives, asymptotic or interface conditions, CPS integrability and the universal theorem.

PDF pages 10–13 were rendered and visually inspected; extraction emitted `Syntax Warning: Mismatch between font type and embedded font file`, resolved for the relevant equations by TeX and rendered-page comparison. Official PDF/TeX access succeeded. Temporary verification inputs and outputs remain outside the vault under `/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/arxiv-daily-20261016-jmdo0ry0/2610.20931v1/` (`checks.wl`, `checks.json`); these are disposable execution evidence, not permanent attachments. Frontmatter, same-day link, delimiters, whitespace, final newline and Pandoc parsing are validated before advancing the queue.
