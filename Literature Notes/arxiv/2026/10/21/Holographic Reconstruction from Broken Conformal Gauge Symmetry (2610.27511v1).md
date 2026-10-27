---
paper id: 2610.27511v1
title: "Holographic Reconstruction from Broken Conformal Gauge Symmetry"
authors:
  - "Fukuyama, Takeshi"
publication date: 2026-10-20T02:26:33
abstract: |-
  We investigate bulk--boundary structures in $\AdS_4/\CFT_3$ from the viewpoint of gravity as a broken phase of conformal gauge symmetry. A crucial distinction is made between the Euler and Pontryagin characteristic classes. The gauge-theoretic gravitational action contains an Euler sector, whose total-derivative representation gives a boundary form depending on both intrinsic and extrinsic geometry. This structure is different from the Pontryagin descent to the three-dimensional gravitational Chern--Simons functional, whose metric variation gives the Cotton tensor and underlies the mixed boundary conditions studied by de Haro. We perform a Fefferman--Graham expansion of the Euler boundary form in asymptotically $\AdS_4$ spacetime. The normalizable coefficient $g_{(3)ij}$ does not contribute linearly to the finite Euler boundary term: its contribution from the cubic extrinsic- curvature sector vanishes by $\mathrm{Tr}\,g_{(3)}=0$, while curvature-- extrinsic-curvature terms containing $g_{(3)}$ vanish at the conformal boundary. A direct Codazzi analysis additionally shows that the Cotton tensor appears in the asymptotic mixed curvature but its contribution through the tangential-connection boundary variation vanishes for standard Dirichlet data. This indicates two distinct types of bulk--boundary structure: a global/topological Euler relation and a local Pontryagin--Cotton relation. We distinguish this kinematic Cotton appearance from a finite Cotton boundary response and discuss the implications for holographic reconstruction.
comments: "18 pages, no figure"
url: https://arxiv.org/abs/2610.27511v1
summary: "Euler finite-density cancellation, full boundary response and Cotton mixed conditions separated, with explicit AdS examples and a verified off-shell sign correction."
tags: []
---

# Euler boundary geometry does not fix the normalizable mode

**Correct under precise conditions:** in the smooth vacuum Einstein–AdS$_4$ Fefferman–Graham expansion, with transverse-traceless $g_{(3)}$, the local finite Euler boundary density has no term linear in $g_{(3)}$. Its Cotton-bearing tangential-connection contribution also vanishes in the conformal-boundary limit for bounded smooth source variations over a fixed integration domain. Neither statement sets the full holographic stress response to zero.

The useful distinction is between the Euler transgression evaluated on a radial hypersurface, the variation of the complete Euler-completed gravitational action, and an independently specified intrinsic gravitational Chern–Simons boundary action. Only the last directly supplies a local Cotton variation. A relation $g_{(3)}\propto C[g_{(0)}]$ needs additional boundary or interior conditions.

**Failed:** the independent-connection bulk term in the source's Eq. (28), PDF p. 6, has the wrong integration-by-parts sign with its stated $\delta R=D\delta\omega$ convention. The corrected term is $+2A\,\epsilon_{abcd}\delta\omega^{ab}\wedge DF^{cd}$. This vanishes on the torsion-free branch; the source's on-shell Eq. (29) and the two Einstein examples are unaffected. The correction is derived below, and the off-shell printed formula is not used.

Sources: [official v1 abstract](https://arxiv.org/abs/2610.27511v1), [official PDF](https://arxiv.org/pdf/2610.27511v1), and complete official TeX holography_1020.tex. All six sections and subsections were read; there are no appendices. Rendered pp. 5–8, 11, 13–16 were inspected for formulas and conventions. Statements are **Source-derived** unless explicitly marked **Checked**. Return to [[2026_10_21_overview]].

## Source map: characteristic class, variation, reconstruction

| Source section | Technical content | What is established |
|---|---|---|
| 1. Introduction | Broken $SO(4,2)\to SO(3,2)$ gauge gravity; curvature-squared action | Motivation and inherited Euler coefficient; original symmetry breaking is referenced |
| 2. Euler and Pontryagin sectors | Invariant polynomials, local primitives, adapted transgression | Distinct boundary structures; local exactness does not identify the classes |
| 3.1. Finite Euler contribution | FG expansion, determinant identity, curvature power counting | No local finite term linear in the normalizable mode |
| 3.2. On-shell variation | First-order variation, Weyl curvature, Brown–York momentum | Nonzero stress is consistent with 3.1; Dirichlet-prescription equivalence is imported |
| 3.3. Codazzi–Cotton falloff | Mixed curvature and tangential-connection variation | Cotton occurs kinematically but this term vanishes for the specified variations |
| 4.1–4.3. Pontryagin and reconstruction | Intrinsic gCS, mixed conditions, electric/magnetic interpretation, self-duality | Additional input is required to relate source Cotton to state data |
| 5.1. Imaging | Boundary source, response and propagation data | Response must be dynamically computed; topology is insufficient |
| 5.2.1. Schwarzschild–AdS$_4$ | FG mass coefficient, zero Cotton, nonzero stress | Counterexample to fixing $g_{(3)}$ from Cotton without a boundary condition |
| 5.2.2. Perturbed AdS$_4$ | Regular spacelike TT mode and response | Nonlocal parity-even response differs from local parity-odd Cotton |
| 6. Discussion | Proposed chiral relation and entanglement contribution | Open directions, not derived results |

This reconstructs the paper's negative result and its limitations. It does not derive the complete unbroken conformal gauge theory or a new global reconstruction theorem.

## Conventions and the action inherited from gauge breaking

Use four-dimensional Lorentz indices $a,b,\ldots$, a nondegenerate vierbein $e^a$, and independent antisymmetric Lorentz connection $\omega^{ab}$. Define

$$
R^{ab}=d\omega^{ab}+\omega^a{}_c\wedge\omega^{cb},
\qquad T^a=De^a,
$$

$$
F^{ab}=R^{ab}+\ell^{-2}e^a\wedge e^b,\qquad
I_F=A\int_{M_4}\epsilon_{abcd}F^{ab}\wedge F^{cd},
\qquad A=\frac{\ell^2}{64\pi G}.
$$

Expanding gives

$$
I_F=A\int\epsilon_{abcd}R^{ab}\wedge R^{cd}
+\frac{2A}{\ell^2}\int\epsilon_{abcd}R^{ab}\wedge e^c\wedge e^d
+\frac{A}{\ell^4}\int\epsilon_{abcd}e^a\wedge e^b\wedge e^c\wedge e^d.
$$

With the source's orientation/form conventions, $2A/\ell^2=1/(32\pi G)$ is the Einstein–Hilbert form coefficient. The Euler coefficient is tied to the other coefficients within this action. This does not fix every possible boundary completion of the broken gauge theory.

The source restricts to the torsion-free AdS sector. Statements about ghosts in the alternative de Sitter breaking and the origin of torsionlessness from a spinor coupling refer to earlier work and are not rederived here. Its footnote explicitly excludes the scalar-coupling branch from that torsion-free conclusion.

The characteristic densities are

$$
E_4=\epsilon_{abcd}R^{ab}\wedge R^{cd},
\qquad P_4=R^{ab}\wedge R_{ab}.
$$

They are locally exact, with representatives

$$
Q_E=\epsilon_{abcd}\left(
\omega^{ab}\wedge d\omega^{cd}
+\frac23\omega^{ab}\wedge\omega^c{}_e\wedge\omega^{ed}
\right),
$$

$$
Q_P=\operatorname{Tr}\left(\omega\wedge d\omega+
\frac23\omega\wedge\omega\wedge\omega\right).
$$

The representation trace must be normalized and signed consistently with $P_4$; the unqualified ordinary matrix trace can introduce a relative sign. The primitives need not be globally defined. The normalized Euler and Pontryagin integrals carry distinct characteristic information; calling both primitives Chern–Simons forms does not identify them.

An adapted Euler boundary transgression is represented, up to overall orientation/normalization, by

$$
B_3^E=4\epsilon_{abc}K^a\wedge
\left(\mathcal R^{bc}-\frac13K^b\wedge K^c\right).
$$

Here $\mathcal R^{ab}$ is intrinsic boundary curvature and $K^a$ is the extrinsic-curvature one-form. This is relative to a boundary-adapted reference connection, not literally the same differential form as the frame-dependent $Q_E$. The full Pontryagin boundary form can also contain extrinsic terms and need not equal the purely intrinsic gravitational Chern–Simons form.

The cancellation below uses a tensor representative of $B_3^E$ up to a common constant. It does not determine an absolute Euler charge or entropy coefficient.

## FG data and the finite Euler density

Keep the radial regulator $z=\epsilon>0$ explicit:

$$
ds^2=\frac{\ell^2}{z^2}\left(dz^2+g_{ij}(z,x)dx^idx^j\right),
\qquad g(z)=g_{(0)}+z^2g_{(2)}+z^3g_{(3)}+O(z^4).
$$

The missing $z^1$ term follows from the vacuum Einstein equation, not FG gauge alone. For $R_{\mu\nu}=-3\ell^{-2}g_{\mu\nu}$,

$$
g_{(2)ij}=-P_{ij},\qquad
P_{ij}=\mathcal R_{ij}[g_{(0)}]-\frac14\mathcal R[g_{(0)}]g_{(0)ij},
$$

$$
\operatorname{tr}_{g_{(0)}}g_{(3)}=0,\qquad
\nabla_{(0)}^ig_{(3)ij}=0.
$$

The source $g_{(0)}$ fixes $g_{(2)}$ locally, but does not fix the TT response $g_{(3)}$. All traces on FG coefficients below use $g_{(0)}$.

Let $h_{ij}=\ell^2z^{-2}g_{ij}$ and choose the outward normal $n=-(z/\ell)\partial_z$. Then

$$
K_{ij}=\frac12\mathcal L_n h_{ij}
=\frac{\ell}{z^2}g_{(0)ij}-\frac{\ell z}{2}g_{(3)ij}+O(z^2),
$$

$$
K^i{}_j=\frac1\ell\delta^i_j
-\frac{z^2}{\ell}g_{(2)}{}^i{}_j
-\frac{3z^3}{2\ell}g_{(3)}{}^i{}_j+O(z^4).
$$

The $g_{(2)}$ contribution to the lower-index $K$ cancels because it is independent of $z$ in $h$. Raising with $h^{-1}$ restores a $z^2$ term.

The tensor representative of the Euler density is

$$
\sqrt{|h|}\left[
K\mathcal R-2K^{ij}\mathcal R_{ij}
-\frac13K^3+K\operatorname{tr}(K^2)-\frac23\operatorname{tr}(K^3)
\right]d^3x.
$$

For every $3\times3$ matrix,

$$
-\frac13(\operatorname{tr}K)^3+
(\operatorname{tr}K)\operatorname{tr}(K^2)
-\frac23\operatorname{tr}(K^3)=-2\det K.
$$

**Checked:** Mathematica gives zero for the difference with arbitrary matrix entries, without symmetry or diagonalizability assumptions.

Include the volume element explicitly. Writing $a=g_{(0)}^{-1}g_{(2)}$ and $b=g_{(0)}^{-1}g_{(3)}$ gives

$$
\sqrt{|h|}=\ell^3z^{-3}\sqrt{|g_{(0)}|}
\left[1+\frac{z^2}{2}\operatorname{tr}a+
\frac{z^3}{2}\operatorname{tr}b+O(z^4)\right],
$$

$$
\det K=\ell^{-3}\left[
1-z^2\operatorname{tr}a-\frac32z^3\operatorname{tr}b+O(z^4)
\right].
$$

Thus the finite term linear in $b$ in this representative is

$$
\left[-2\sqrt{|h|}\det K\right]_{z^0,\ b}
=2\sqrt{|g_{(0)}|}\operatorname{tr}b=0.
$$

**Checked:** the arbitrary-matrix expansion gives exactly $2\operatorname{tr}b$ before imposing the trace constraint. Both determinant and measure variations are retained. The overall normalization does not affect the zero.

For the intrinsic-curvature terms,

$$
\sqrt{|h|}=O(z^{-3}),\qquad
\mathcal R^i{}_j[h]=O(z^2),\qquad
\delta_{(3)}K^i{}_j=O(z^3),
$$

so the product is $O(z^2)$. The variation of mixed intrinsic Ricci induced by $g_{(3)}$ is $O(z^5)$: $g$ changes at $z^3$ and the mixed curvature has an additional $z^2/\ell^2$. Multiplication by leading $K$ and the measure again gives $O(z^2)$. The corresponding measure variation has no finite contribution.

Therefore

$$
\boxed{\left.B_3^E\right|_{z^0,\ {\rm linear\ in}\ g_{(3)}}=0.}
$$

This is a local asymptotic-density statement, not a calculation of the integrated Euler invariant, horizon/corner contributions or full on-shell variation. Take $\epsilon\to0$ at fixed smooth data and fixed integration domain. A cutoff-dependent domain or singular source can invalidate the estimate.

## First-order variation and the off-shell sign

Because $\delta\omega$ is a spacetime one-form,

$$
D(\delta\omega^{ab}\wedge F^{cd})
=D\delta\omega^{ab}\wedge F^{cd}
-\delta\omega^{ab}\wedge DF^{cd}.
$$

Using $\delta R=D\delta\omega$ and covariant constancy of the Lorentz epsilon tensor, the correct variation is

$$
\begin{aligned}
\delta I_F={}&2A\int_{\partial M_4}
\epsilon_{abcd}\delta\omega^{ab}\wedge F^{cd}\\
&+2A\int_{M_4}
\epsilon_{abcd}\delta\omega^{ab}\wedge DF^{cd}\\
&+\frac{4A}{\ell^2}\int_{M_4}
\epsilon_{abcd}\delta e^a\wedge e^b\wedge F^{cd}.
\end{aligned}
$$

**Failed — source Eq. (28):** the second line is printed with a minus sign. Reversing boundary orientation cannot fix the graded bulk identity while holding $\delta R=D\delta\omega$ fixed. **Checked:** xAct's epsilon-contracted component product rule returns zero for the corrected residual and a nonzero doubled bulk term for the printed sign.

Since

$$
DF^{ab}=\ell^{-2}(T^a\wedge e^b-e^a\wedge T^b),
$$

the disputed term vanishes for $T^a=0$. The vierbein equation removes the remaining bulk term on Einstein solutions. The source's on-shell result remains

$$
\left.\delta I_F\right|_{\rm EOM}
=2A\int_{\partial M_4}\epsilon_{abcd}
\delta\omega^{ab}\wedge F^{cd}.
$$

On Einstein–AdS, $F^{ab}=W^{ab}$ by curvature decomposition. This is a Weyl-curvature boundary pairing; no Pontryagin density or self-duality is used.

For CPS, a bulk potential representative is

$$
\Theta_F(\delta)=2A\,\epsilon_{abcd}\delta\omega^{ab}\wedge F^{cd}.
$$

With commuting variations and
$\omega_F(\delta_1,\delta_2)=\delta_1\Theta_F(\delta_2)-\delta_2\Theta_F(\delta_1)$,

$$
\omega_F(\delta_1,\delta_2)=2A\,\epsilon_{abcd}
\left(\delta_2\omega^{ab}\wedge\delta_1F^{cd}
-\delta_1\omega^{ab}\wedge\delta_2F^{cd}\right).
$$

This follows by varying the potential; it is not a completed corner phase space or charge construction. Boundary actions, frame choices and potential ambiguities must be specified before extracting flux or Hamiltonians. The paper does not determine edge modes, charge integrability or regional sewing.

## Dirichlet stress response and its sign convention

The finite complete variation requires both $\delta\omega^{a\perp}$ and $\delta\widehat\omega^{ab}$. Dropping the tangential term before fixing the boundary frame and variational prescription is unjustified.

The paper invokes the established equivalence of Euler regularization with the AdS Dirichlet prescription; it does not reduce all boundary terms of the unbroken $SO(4,2)$ system. Its quoted outward-normal momentum is

$$
T^i{}_j[h]=\frac1{8\pi G}
\left(K^i{}_j-K\delta^i_j+\frac2\ell\delta^i_j
-\ell\,\mathcal G^i{}_j[h]\right).
$$

The constant coefficient is $(1-3+2)/\ell=0$. At order $z^2/\ell$,

$$
-g_{(2)}+\operatorname{tr}(g_{(2)})\,\mathbf1
-\left(\mathcal R-\frac12\operatorname{tr}(\mathcal R)\,\mathbf1\right)=0,
$$

where $\mathcal R$ denotes the mixed boundary Ricci matrix. **Checked:** Mathematica returns the zero matrix for arbitrary Ricci entries after $g_{(2)}=-P$. The trace-free $z^3$ term gives

$$
T^i{}_j[h]=-\frac{3z^3}{16\pi G\ell}g_{(3)}{}^i{}_j+O(z^4).
$$

The source then adopts the usual holographic action/response sign:

$$
\langle T_{ij}\rangle=\frac{3\ell^2}{16\pi G}g_{(3)ij},
\qquad
\delta I_{\rm ren}=\frac12\int d^3x\sqrt{|g_{(0)}|}
\langle T^{ij}\rangle\,\delta g_{(0)ij}.
$$

A positive conformal rescaling alone does not produce that sign change. The action/normal/momentum convention must be tracked. Here the intermediate momentum and final response are reported with the source's stated convention change, and the latter is used in the mass example. The asymptotic cancellation is independently checked; the complete boundary-prescription equivalence and a universal sign are not.

A nonzero stress response is consistent with the finite-density cancellation: varying the full action is not the same operation as extracting one coefficient of an isolated Euler boundary representative.

## Cotton in Codazzi curvature and the regulated variation

Let $\widehat D$ denote the intrinsic connection and $K^a=K^a{}_b e^b$. With consistent mixed-connection signs,

$$
F^{ab}|_{\partial M}
=\mathcal R^{ab}-K^a\wedge K^b+\ell^{-2}e^a\wedge e^b,
\qquad F^{a\perp}|_{\partial M}=\widehat DK^a.
$$

The potential contains an extrinsic-connection pairing with $F^{ab}$ and a tangential-connection pairing with $\widehat DK^a$.

Using $K^i{}_j=\ell^{-1}\delta^i_j+z^2P^i{}_j/\ell+O(z^3)$,

$$
\widehat\nabla_kK^i{}_j-\widehat\nabla_jK^i{}_k
=\frac{z^2}{\ell}(\nabla_kP^i{}_j-\nabla_jP^i{}_k)+O(z^3).
$$

The identity tensor is covariantly constant for the full slice connection. The slice/boundary connection difference is $O(z^2)$ and only affects higher orders when acting on $z^2P$. This gives the leading Cotton term.

The source fixes its three-index Cotton convention by the antisymmetric derivative above. Since $e^a=(\ell/z)\bar e^a+O(z)$, the mixed-curvature form in a fixed boundary coordinate basis has

$$
(\widehat DK)^a{}_{ij}
=z\,\bar e^a{}_k C^k{}_{ij}+O(z^2),\qquad
\widehat DK^a=O(z).
$$

The antisymmetric index order and mixed-connection sign must be fixed together when comparing tensor and two-form components. The falloff is independent of this overall sign.

For smooth source variations $\delta\widehat\omega^{ab}=O(1)$, hence

$$
\int_{z=\epsilon,\ \mathcal U}
\epsilon_{abc}\delta\widehat\omega^{ab}\wedge\widehat DK^c
=O(\epsilon)\longrightarrow0.
$$

$\mathcal U$ is fixed and compact, or has uniformly controlled tails. No extra $\sqrt{|h|}\sim\epsilon^{-3}$ should be inserted into this already assembled coordinate three-form: that would count coframe scaling twice.

The estimate excludes singular data, variations growing like $\epsilon^{-1}$, cutoff-dependent domains and different boundary prescriptions. It removes only the tangential-connection contribution, not the full stress response. Cotton in a curvature component is not a Cotton boundary equation.

## Intrinsic gravitational Chern–Simons and mixed conditions

For a chosen orientation,

$$
C_{ij}=\epsilon_i{}^{kl}\nabla_kP_{lj}.
$$

For a smooth three-dimensional metric it is symmetric, trace-free and conserved. The intrinsic gravitational Chern–Simons metric variation is proportional to $\sqrt{|g_{(0)}|}C_{ij}$; the source does not fix its absolute coefficient.

Define $\beta$ by the variation, after the necessary boundary/corner treatment,

$$
\delta I_{\rm gCS}
=\frac12\int\sqrt{|g_{(0)}|}\,\beta C^{ij}\delta g_{(0)ij}.
$$

If $g_{(0)}$ is varied freely in $I_{\rm ren}+I_{\rm gCS}$, stationarity imposes

$$
\langle T^{ij}\rangle+\beta C^{ij}=0,\qquad
g_{(3)ij}=-\frac{16\pi G\beta}{3\ell^2}C_{ij}.
$$

This defines the normalization without inventing a source coefficient. Under fixed-source Dirichlet conditions, $\delta g_{(0)}=0$ does not impose the equation. It is an added variational prescription, not an Einstein constraint or an automatic Euler consequence.

The electric/magnetic interpretation is schematic: normalizable stress provides electric data and source Cotton provides magnetic conformal data. Source and response specify asymptotic information; existence and uniqueness of a global filling require additional input.

The proposed internal dual is

$$
({}^\star R)^{ab}=\frac12\epsilon^{ab}{}_{cd}R^{cd}.
$$

An imposed chiral/self-dual restriction can relate the invariant polynomials. The dual squares differently in Euclidean and Lorentzian signature, changing reality conditions and proportionality factors. The paper derives neither this restriction from the broken theory nor a fixed Cotton coupling. No definite normalized chiral mechanism is established.

## Schwarzschild–AdS: identical Cotton, different mass data

Consider

$$
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+r^2d\Omega_2^2,\qquad
f(r)=1+\frac{r^2}{\ell^2}-\frac{2GM}{r}.
$$

Set $R=r/\ell$, $\tau=t/\ell$, $m=GM/\ell$, and use dimensionless $z$ with $R\sim z^{-1}$. FG gauge requires

$$
\frac{dR}{dz}=-\frac1z\sqrt{1+R^2-\frac{2m}{R}},
\qquad R=z^{-1}-\frac z4+\frac m3z^2+O(z^3).
$$

**Checked:** Mathematica solves the radial series and substitutes into both metric sectors:

$$
g_{\tau\tau}=-1-\frac12z^2+\frac{4m}{3}z^3+O(z^4),
\qquad
g_{AB}=\left(1-\frac12z^2+\frac{2m}{3}z^3\right)\gamma_{AB}+O(z^4).
$$

Therefore

$$
g_{(0)}=-d\tau^2+d\Omega_2^2,\quad
g_{(2)}=-\frac12(d\tau^2+d\Omega_2^2),\quad
g_{(3)}=\frac{2m}{3}(2d\tau^2+d\Omega_2^2).
$$

On $\mathbb R\times S^2$, $\mathcal R_{\tau\tau}=0$, $\mathcal R_{AB}=\gamma_{AB}$, $\mathcal R=2$. Thus $P_{\tau\tau}=1/2$, $P_{AB}=\gamma_{AB}/2$ and $\nabla P=0$. Both Cotton tensors vanish independently of $m$.

**Checked:** xAct/xCoba computes the Ricci tensor/scalar, $\nabla P$, trace of $g_{(3)}$ and divergence of $g_{(3)}$ in $(\tau,\theta,\phi)$ coordinates. The Cotton precursor and both TT constraints vanish exactly.

The response is nonetheless

$$
\langle T^i{}_j\rangle_{g_{(0)}}=
\frac{M\ell}{8\pi}\operatorname{diag}(-2,1,1).
$$

In the physical representative $-dt^2+\ell^2d\Omega_2^2$,

$$
\langle T^i{}_j\rangle_{\rm phys}=
\frac{M}{8\pi\ell^2}\operatorname{diag}(-2,1,1),\qquad
E=-\int_{S^2}\sqrt{\sigma}\,\langle T^t{}_t\rangle_{\rm phys}=M.
$$

**Checked:** conformal scaling and the area integral yield $E=M$ in this convention. Hence $C_{ij}=0$ does not imply $g_{(3)ij}=0$.

The extrinsic curvature retains the mass:

$$
K^i{}_j=\ell^{-1}\delta^i_j+
\frac{z^2}{2\ell}\operatorname{diag}(-1,1,1)
-\frac{mz^3}{\ell}\operatorname{diag}(-2,1,1)+O(z^4).
$$

The mass-dependent coefficient is trace-free, explaining its local finite Euler cancellation. This does not assert mass independence of a global action with horizon contributions. Computing imaging response requires perturbation dynamics on the black-hole background.

## Perturbed AdS: regular response versus local Cotton

In the Poincaré patch take FG gauge and a linear TT perturbation:

$$
ds^2=\frac{\ell^2}{z^2}[dz^2+(\eta_{ij}+h_{ij})dx^idx^j],
\qquad \eta=\operatorname{diag}(-1,1,1),
$$

$$
\partial^ih_{ij}=0,\qquad \eta^{ij}h_{ij}=0,\qquad
h_{ij}(z,x)=e^{ik\cdot x}H_{ij}(z,k).
$$

The radial equation is

$$
H_{ij}''-\frac2zH_{ij}'-k^2H_{ij}=0.
$$

**Checked:** xAct/xCoba linearizes $R_{\mu\nu}+3g_{\mu\nu}$ at unit radius for $h_{tt}=h_{yy}=H(z)\cos(qx)$. Its only candidate residuals reduce to $\cos(qx)(-H''/2+H'/z+q^2H/2)$, confirming the equation for that polarization. This is an explicit tensor check, not a nonlinear solution.

For $k^2=q^2>0$, $q>0$,

$$
H=A(1+qz)e^{-qz}+B(1-qz)e^{qz}.
$$

Regularity as $z\to\infty$ sets $B=0$, yielding

$$
H=h_{(0)}\left(1-\frac12q^2z^2+\frac13q^3z^3+O(z^4)\right),
$$

$$
h_{(2)}=-\frac{q^2}{2}h_{(0)},\qquad h_{(3)}=\frac{q^3}{3}h_{(0)}.
$$

**Checked:** Mathematica verifies both solutions, the ODE and the series. The response relation uses interior regularity; it is not a local constraint on arbitrary states. At $q=0$ the displayed basis degenerates and the independent solutions are $1,z^3$.

The spacelike stress response is

$$
\delta\langle T_{ij}(k)\rangle=
\frac{\ell^2}{16\pi G}(k^2)^{3/2}h_{(0)ij}(k).
$$

Retarded Lorentzian response additionally requires causal continuation and an interior/horizon prescription; the positive-real-$q$ calculation alone does not fix it.

For linear Cotton around a flat boundary,

$$
\mathcal R_{ij}^{(1)}=-\frac12\Box h_{(0)ij},\qquad
\mathcal R^{(1)}=0,
$$

$$
C_{ij}^{(1)}=-\frac12\epsilon_i{}^{kl}\partial_k\Box h_{(0)lj},
\qquad
C_{ij}^{(1)}(k)=\frac i2k^2\epsilon_i{}^{kl}k_kh_{(0)lj}.
$$

**Checked:** xAct/xCoba independently computes the linear Ricci tensor for both static spacelike TT polarizations, $h_{tt}=h_{yy}=f(x)$ and $h_{ty}=b(x)$. Choosing $\epsilon_{txy}=+1$ gives

$$
C_{ij}^{(1)}=-\frac12
\begin{pmatrix}b'''&0&f'''\\0&0&0\\f'''&0&b'''\end{pmatrix}_{ij}.
$$

The Cotton-formula residual, antisymmetric part, trace and divergence all vanish exactly in this family. Cotton exchanges polarizations through a parity-odd derivative; the stress response multiplies each TT polarization by $q^3$. Their common momentum degree does not identify the operators.

The normalizable extrinsic perturbation is

$$
\delta_{(3)}K^i{}_j=-\frac{q^3z^3}{2\ell}h_{(0)}{}^i{}_j,
\qquad \operatorname{tr}\delta_{(3)}K=0.
$$

Using $\delta\det K=\det K\,\operatorname{tr}(K^{-1}\delta K)$, the candidate $z^3$ cubic Euler term vanishes. The intrinsic-curvature sector is again $z^{-3}z^2z^3=O(z^2)$. The TT example therefore reproduces the local cancellation while keeping a nonzero response.

## Imaging, global data and limits of the reconstruction claim

Section 5.1 motivates reconstruction through boundary response functions. The characteristic sectors organize geometric/topological information, but neither local descent nor Cotton alone determines a transfer function. That calculation needs a background, source, dynamical equation, state/interior condition and resulting response.

Schwarzschild–AdS gives equal boundary conformal data and unequal mass response. The TT example gives a response after a definite regularity condition. Neither proves that arbitrary $(g_{(0)},T)$ determines a unique global Einstein filling or that an imaging inverse problem is well posed.

Section 6 proposes relating the sectors through self-duality and studying Euler contributions to holographic entanglement. The latter involves topology of a codimension-two extremal surface and its boundary terms; it is distinct from the radial $B_3^E$ coefficient. No fixed entanglement correction, quantum partition function or RT-surface calculation is supplied.

For current CPS/boundary work the usable distinction is

$$
\text{finite local boundary density}
\ \neq\ \text{full on-shell variation}
\ \neq\ \text{imposed mixed boundary equation}.
$$

A concrete extension would retain the independent first-order boundary variables, specify admissible variations/corner terms, and calculate symplectic flux from the corrected potential. Identifying Euler and Pontryagin primitives would not supply those missing choices.

## Verification record and exact boundaries

**Verified:**

- Mathematica: arbitrary-matrix determinant identity; finite Euler coefficient including volume variation; Brown–York $z^2$ cancellation; Schwarzschild FG radial/metric coefficients; mass normalization; TT radial solutions and expansions.
- xAct: graded integration-by-parts sign, with zero corrected residual and nonzero printed-sign residual.
- xAct/xCoba: $\mathbb R\times S^2$ Ricci/Schouten calculation and TT constraints for the mass coefficient; one bulk TT polarization's linear Einstein equation; two boundary TT polarizations' Ricci/Cotton operators.
- Complete technical source inspection and rendered formula checks support the source map. Source reading is not counted as independent verification.

**Assumptions:** torsion-free vacuum Einstein–AdS$_4$; smooth FG data and TT response constraints; outward normal $-(z/\ell)\partial_z$; fixed smooth compact domain or uniformly controlled tails; bounded intrinsic-connection variation; the stated Dirichlet prescription and response sign; spacelike $q>0$ and interior regularity for the linear response. The radial regulator $\epsilon$ is retained until the specified limit.

**Failed:** the off-shell connection term in source Eq. (28) has the integration-by-parts sign error derived above. The torsion-free on-shell conclusions do not depend on it.

**Source-derived / not independently verified:** global characteristic-class normalization; full transgression identity with reference-connection/corner terms; arbitrary-metric gCS functional variation and absolute coefficient; complete Euler/Dirichlet-prescription equivalence; original gauge symmetry breaking and matter/torsion claims. The current checks do not replace these derivations.

**Not established by the paper:** all boundary conditions of the unbroken $SO(4,2)$ theory; a Cotton mixed condition from Euler alone; a signature-correct normalized self-duality mechanism; global reconstruction uniqueness; dynamical imaging response; fixed Euler entanglement correction; complete charge/corner phase space.

No unresolved PDF/source retrieval or computation-tool blocker remains for the displayed calculations. Schematic or explicitly open constructions lack the additional prescription needed for a unique result and remain conditional. Computation inputs/results and rendered pages are outside the vault in the temporary daily refresh directory.
