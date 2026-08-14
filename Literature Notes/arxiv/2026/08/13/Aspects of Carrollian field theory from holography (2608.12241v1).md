---
paper id: 2608.12241v1
title: Aspects of Carrollian field theory from holography
authors:
  - Hare Krishna
  - Vaishnavi Patil
publication date: 2026-08-12T16:42
abstract: |-
  The paper constructs a mixed-index quasilocal stress tensor for three-dimensional asymptotically flat gravity at future null infinity, compares its BMS transformation with a two-dimensional Carrollian stress tensor to extract the central charges, derives formal Ward and flux-balance identities, and relates the null-boundary term to the BMS3 boundary-graviton orbit action.
comments: "38 pages; no arXiv comments field"
url: https://arxiv.org/abs/2608.12241v1
summary: "A directly relevant null-boundary/BMS3 stress-tensor construction whose component and central-charge chains mostly check, but whose displayed BMS Schwarzian and flat-frame trace Ward identity are internally inconsistent."
tags: []
---

# Why this is high priority

Reason codes: `T1-symmetry`, `T1-boundary`, `T1-charge`, `T2-celestial-carrollian`, `T2-model`.

This is a direct bridge among four parts of the current vault program: null-boundary stress tensors, BMS charge algebras, Carrollian boundary data, and the distinction between a boundary response tensor and a genuine covariant-phase-space generator. Its most reusable object is the chain

$$
(g_{ab},n_a,k^a)
\longrightarrow W_j{}^i
\longrightarrow T_j{}^i
\longrightarrow (\mathcal P,\mathcal K)
\longrightarrow \mathfrak{bms}_3,
$$

but the source does not complete the CPS comparison and contains two internal consistency problems that matter for reuse.

# How to read this long paper

- **Essential:** sections 2.2--2.3 for the rigged-null-boundary stress tensor; section 3 for the central-charge comparison; section 4 for the response/charge dictionary; section 5 for the boundary orbit action.
- **Technical reference:** appendix C for the projected connection and divergence; appendix D for constrained Carrollian source variations; appendix E for the radial renormalization of the mixed stress tensor.
- **Background:** section 2.1 reviews AdS Brown--York holographic renormalization; appendix A reviews three free Carrollian scalar actions; appendix B reviews the contraction of two Virasoro algebras.
- **Read with caution:** equation (3.14), the trace discussion around (3.11), (4.7), and (D.12), and the transition from the local brackets (4.20)--(4.21) to the shifted mode algebra (4.23)--(4.24).

# Complete source map

## Section 1: introduction and result summary

The source motivates an intrinsic flat-space holographic construction rather than a naive fixed-operator $\ell_{\mathrm{AdS}}\to\infty$ limit. It announces four results: the AFS$_3$ boundary stress tensor, $c_L=0$ and $c_M=3/G_N$, a sourced diffeomorphism Ward identity with matter flux, and a BMS Schwarzian boundary action.

## Section 2: quasilocal stress tensor

### 2.1 Timelike AdS review

The usual Brown--York tensor follows from varying the Einstein--Hilbert, GHY, and counterterm action. The AdS$_3$ anomalous transformation reproduces $c=3\ell/(2G_N)$. This subsection is calibration, not a new result.

### 2.2 Null-boundary data

A hypersurface $\mathcal H$ is equipped with a normal $n_a$, null rigging $k^a$, projector $\Pi_a{}^b=\delta_a{}^b+n_a k^b$, tangential generator $\ell^a=n^b\Pi_b{}^a$, transverse metric $q_{ab}$, and induced derivative $D_i$. At null infinity,

$$
q_{ij}n^j=0,
\qquad
k_i n^i=-1.
$$

The mixed Weingarten map and its trace are

$$
W_j{}^i=\Pi_j{}^a\nabla_a n_b\Pi^{bi},
\qquad
W=W_j{}^j,
$$

and the source uses the Brown--York representative

$$
T_j{}^i\propto W_j{}^i-\delta_j{}^iW.
$$

The overall sign is fixed by the orientation of the chosen normal; the convention used in the final components is

$$
T_j{}^i=-\frac{1}{8\pi G_N}
\left(W_j{}^i-\delta_j{}^iW\right).
$$

### 2.3 AFS$_3$ in Bondi gauge

The vacuum solution is

$$
ds^2=M(\phi)du^2-2,du,dr
+2\left[N(\phi)+\frac{u}{2}M'(\phi)\right]du,d\phi+r^2d\phi^2.
$$

The paper chooses

$$
n_a dx^a=dr-\frac{M}{2}du-\frac{uM'}{2}d\phi,
\qquad
k^a\partial_a=-\partial_r.
$$

This normal is exact,

$$
n=d\left(r-\frac{uM(\phi)}{2}\right),
$$

and has norm

$$
n^2=\frac{N^2}{r^2},
$$

so the finite-$r$ leaves are timelike when $N\neq0$ and approach null infinity asymptotically.

The exact mixed tensor obtained with the appendix-C normal is

$$
\begin{aligned}
T_u{}^u
&=-\frac{M}{16\pi G_Nr}
+\frac{N'}{8\pi G_Nr^2}
-\frac{uNM'}{16\pi G_Nr^3},\\
T_\phi{}^u&=-\frac{N}{8\pi G_Nr},\\
T_u{}^\phi&=\frac{MN}{16\pi G_Nr^3},\\
T_\phi{}^\phi&=0.
\end{aligned}
$$

The renormalized boundary response strips the universal $1/r$ falloff:

$$
\mathcal T_j{}^i=\lim_{r\to\infty}rT_j{}^i.
$$

For a BMS vector

$$
\xi=\left(T(\phi)+uR'(\phi)\right)\partial_u+R(\phi)\partial_\phi,
$$

the Brown--York charge on a cut is

$$
Q_\xi=-\int_S\mu,T_j{}^i\xi^j k_i,
\qquad
\mu=r,d\phi.
$$

The zero modes reproduce the paper's mass and angular-momentum normalizations,

$$
\mathcal P_0=\frac{M_0}{8G_N},
\qquad
\mathcal J_0=\frac{N_0}{4G_N}.
$$

## Section 3: boundary currents and central charges

The flat Carrollian cylinder has

$$
q_{ij}dx^idx^j=d\phi^2,
\qquad
n^i\partial_i=-\partial_u,
\qquad
k_i dx^i=du.
$$

The finite BMS transformation is

$$
\widetilde\phi=f(\phi),
\qquad
\widetilde u=f'(\phi)u+g(\phi).
$$

The two currents are identified as

$$
T_2\equiv\mathcal T_u{}^u,
\qquad
T_1\equiv\mathcal T_\phi{}^u.
$$

On the Minkowski background $M=-1$, $N=0$,

$$
T_2=\frac{1}{16\pi G_N},
\qquad
T_1=0.
$$

After an infinitesimal transformation $f=\phi+\varepsilon R$, $g=\varepsilon T$, the bulk response is

$$
\begin{aligned}
\widetilde T_2
&=\frac{1}{16\pi G_N}
+\varepsilon\frac{R'+R'''}{8\pi G_N},\\
\widetilde T_1
&=\varepsilon\frac{T'+T'''}{8\pi G_N}.
\end{aligned}
$$

Matching these to the anomalous current transformations yields

$$
c_L=0,
\qquad
c_M=\frac{3}{G_N}.
$$

This central-charge match is correct only after correcting the BMS Schwarzian discussed in the verification log.

## Section 4: Ward identities, fluxes, and local brackets

The generating functional is varied with respect to constrained Carrollian data $C_i{}^j$ and matter sources $\lambda_A$:

$$
\delta W=
\int_{\mathscr I^+}\eta
\left[
\langle T_j{}^i\rangle_\lambda\delta C_i{}^j
+\sum_A\langle\mathcal O_A\rangle_\lambda\delta\lambda_A
\right].
$$

The response projections are

$$
\mathcal P=-\langle T_u{}^u\rangle,
\quad
\mathcal K=-\langle T_\phi{}^u\rangle,
\quad
\mathcal S=\langle T_\phi{}^\phi\rangle,
\quad
\mathcal B=\langle T_u{}^\phi\rangle.
$$

The formal sourced Ward identity is

$$
D_i\langle T_j{}^i\rangle_\lambda
+\sum_A\langle\mathcal O_A\rangle_\lambda\partial_j\lambda_A
=\langle\mathcal F_j^{\mathrm{out}}\rangle_\lambda.
$$

In the Bondi-induced frame and with only $\mathcal P,\mathcal K$ nonzero,

$$
D_iT_u{}^i=-\partial_u\mathcal P,
\qquad
D_iT_\phi{}^i=-\partial_u\mathcal K.
$$

At zero sources this gives the stated flux-balance form

$$
\partial_u\mathcal P=-\mathcal F_u^{\mathrm{out}},
\qquad
\partial_u\mathcal K=-\mathcal F_\phi^{\mathrm{out}}.
$$

The local charge brackets are written as

$$
\{\mathcal P(\phi),\mathcal P(\phi')\}=0,
$$

$$
\{\mathcal K(\phi),\mathcal P(\phi')\}
=2\mathcal P(\phi)\partial_\phi\delta
+\mathcal P'(\phi)\delta
-\frac{c_M}{24\pi}\partial_\phi^3\delta,
$$

with the analogous $\mathcal K$--$\mathcal K$ bracket carrying $c_L$.

## Section 5: boundary graviton orbit action

The null-boundary contribution is taken to be

$$
I_{\mathcal N}=\frac{1}{8\pi G_N}
\int du,d\phi\,\sqrt q\,(\kappa+\Theta).
$$

For the chosen normal, $\kappa=0$ and

$$
\sqrt q\,\Theta=-\frac{M(\phi)}2+O(r^{-2}),
$$

so

$$
I_\Theta^{\mathrm{bdry}}
=-\frac{1}{16\pi G_N}\int du,d\phi,M(\phi)
=-\int du,d\phi,\mathcal P(\phi).
$$

For the Minkowski coadjoint orbit,

$$
M_f=f'^2M(f)-2\{f,\phi\},
$$

and the identity

$$
\left\{\tan\frac f2,\phi\right\}
=\{f,\phi\}+\frac12f'^2
$$

gives the Schwarzian Hamiltonian. The source then imports the orbit presymplectic potential and writes

$$
I_{\mathrm{bdy}}[\alpha,f]
=-\int du,d\phi
\left(\alpha\,\partial_u\mathcal P[f]+\mathcal P[f]\right),
\qquad
\omega=\int d\phi\,\delta\alpha\wedge\delta\mathcal P.
$$

Thus the null-boundary term supplies the Hamiltonian, while the first-order kinetic term is additional orbit data rather than something derived from the displayed null GHY term alone.

## Appendix A: free Carrollian scalars

The appendix records electric, mixed, and magnetic two-derivative scalar actions and their classical response tensors. Their classical transformations have no inhomogeneous terms, hence $c_L^{\mathrm{cl}}=c_M^{\mathrm{cl}}=0$. This does not determine quantum central charges.

## Appendix B: Carrollian contraction

With $\epsilon=1/\ell_{\mathrm{AdS}}$,

$$
L_n=\ell_n-\bar\ell_{-n},
\qquad
M_n=\epsilon(\ell_n+\bar\ell_{-n}),
$$

and

$$
c_L=c-\bar c,
\qquad
c_M=\epsilon(c+\bar c).
$$

For $c=\bar c=3\ell_{\mathrm{AdS}}/(2G_N)$ this gives $c_L=0$, $c_M=3/G_N$.

## Appendix C: projected divergence

The appendix computes the induced connection on $r-uM/2=\mathrm{const}$ and shows cancellation of the $r^{-2}$ terms in the divergence. This is the strongest source-level support for the frame-specific conservation equation.

## Appendix D: constrained Carrollian sources

The unconstrained mixed frame deformation is

$$
\delta C_i{}^j
=k_i\delta n^j
+\frac12q^{kl}\delta q_{kl}\Pi_i{}^j
+\beta e_i\ell^j.
$$

It yields the response decomposition and the formal Weyl Ward identity

$$
T_i{}^i
+\sum_A(\Delta_A-2)\lambda_A\langle\mathcal O_A\rangle_\lambda
=\mathcal A_W.
$$

The appendix states that $\mathcal A_W$ vanishes on the flat Carroll frame, creating the trace contradiction recorded below.

## Appendix E: radial weight

The cut measure scales as $\eta^{(R)}=R\eta^{(0)}$, while $\delta C_i{}^j$ has weight zero. Radial independence of the variational pairing then fixes $T_j{}^i(R)=R^{-1}\mathcal T_j{}^i+O(R^{-2})$.

# Global notation dictionary

| Source symbol | Meaning | Vault/CPS translation |
|---|---|---|
| $M(\phi)$ | Bondi mass aspect | Configuration on the AFS$_3$ solution space; not itself a Hamiltonian charge |
| $N(\phi)$ | angular-momentum aspect | Second solution-space coordinate entering superrotation charges |
| $n_a$ | asymptotically null normal | Boundary foliation choice; its normalization and orientation affect the response representative |
| $k^a$ | null rigging | Auxiliary transverse structure used to split null-boundary data |
| $W_j{}^i$ | mixed Weingarten map | Extrinsic boundary response data |
| $T_j{}^i$ | mixed Brown--York tensor | Variational boundary response, not automatically a CPS moment map |
| $\mathcal P$ | supertranslation density | $-T_u{}^u$ in section 4; sign differs from section-3 current $T_2$ |
| $\mathcal K$ | superrotation density | $-T_\phi{}^u$ |
| $C_i{}^j$ | constrained Carrollian source | Mixed frame deformation replacing an inverse-metric variation |
| $f$ | superrotation orbit coordinate | $\mathrm{Diff}(S^1)/\mathrm{PSL}(2,\mathbb R)$ coordinate |
| $\alpha$ | supertranslation orbit coordinate | Momentum-like coordinate paired with $\mathcal P[f]$ |

# Derivation map and dependencies

1. Vacuum Einstein equations plus Bondi falloffs reduce the metric to $M(\phi),N(\phi)$.
2. The exact normal $n=d(r-uM/2)$ and rigging $k=-\partial_r$ define the projector and Weingarten map.
3. The mixed Brown--York response gives the finite-$r$ tensor and, after multiplying by $r$, the boundary tensor.
4. BMS transformations of $M,N$ give anomalous transformations of the two nonzero boundary components.
5. Comparing those components with the corrected Carrollian current transformation fixes $c_L,c_M$.
6. A separate generating-functional argument produces a formal diffeomorphism Ward identity; the projected connection reduces it to mass and angular-momentum balance in the selected frame.
7. Canonical transformation laws of $\mathcal P,\mathcal K$ determine local current brackets.
8. The null-boundary term gives the orbit Hamiltonian; the full phase-space action additionally requires the coadjoint-orbit presymplectic potential.

# Translation into the vault's CPS conventions

The paper should not be read as deriving the BMS charges from a complete covariant presymplectic form. It constructs a Brown--York response tensor and then shows that its smeared components reproduce familiar charge normalizations. In vault language, the missing bridge is an explicit identity of the form

$$
\delta H_\xi
=\Omega_\Sigma(\delta g,\pounds_\xi g)
=\int_S\left(\delta Q_\xi-\iota_\xi\theta\right)
$$

with the null-boundary counterterm/improvement and flux prescription stated in the same conventions. The source cites CPS/Wald--Zoupas agreement but does not reconstruct it.

The closest reusable CPS dictionary is therefore:

$$
\text{Brown--York response }T_j{}^i
\quad\rightsquigarrow\quad
\text{candidate boundary moment-map density }(\mathcal P,\mathcal K),
$$

subject to integrability, anomaly, and flux checks. The orbit two-form

$$
\omega_{\mathrm{orbit}}=\int d\phi\,\delta\alpha\wedge\delta\mathcal P
$$

is a genuine symplectic input, but it is appended from the coadjoint-orbit description rather than derived from the bulk CPS current in this paper.

For the user's AdS$_3$/BTZ work, appendix B gives the clean normalization bridge from two Virasoro algebras to BMS$_3$. For null-boundary work, appendix D is useful because it makes the constrained source variation explicit. For charge work, the sign distinction between $T_2=T_u{}^u$ and $\mathcal P=-T_u{}^u$ must be preserved.

# Verification log

## Checked

1. **Metric inverse, normal, and foliation.** xAct/xCoba reproduced the inverse of the Bondi metric. Mathematica independently verified $g_{ac}g^{cb}=\delta_a{}^b$, the raised normal, $n^2=N^2/r^2$, and $dn=0$ exactly for arbitrary $M(\phi),N(\phi)$.
2. **Exact mixed stress tensor.** A direct component calculation of $\nabla_a n^b$, projection with $\Pi_i{}^a$, and the oriented Brown--York combination reproduced the exact appendix-C components and hence the leading terms (2.22)--(2.23).
3. **Flat-limit central charges.** Substitution of $c=\bar c=3\ell/(2G_N)$ and $\epsilon=1/\ell$ gives $c_L=0$ and $c_M=3/G_N$ exactly.
4. **Minkowski anomaly matching.** With the corrected BMS Schwarzian, the $R'''$ and $T'''$ coefficients in the transformed boundary tensor give $c_M/(24\pi)=1/(8\pi G_N)$ and $c_L=0$.
5. **Schwarzian chain rule.** Mathematica verified
   $$
   \{\tan(f/2),\phi\}-\{f,\phi\}-\frac12f'^2=0
   $$
   for arbitrary differentiable $f$ with $f'\neq0$.
6. **Rendered-source confirmation.** PDF pages containing the central algebra, Ward-response decomposition, local brackets, boundary action, projected divergence, and Carrollian sources were rendered and visually checked against the TeX source.

## Failed

1. **Displayed BMS Schwarzian (3.14).** The source prints
   $$
   \frac{3(f'')^2-f'f'''g'-3f'f''g''+(f')^2g''}{(f')^3}.
   $$
   Under $f=\phi+\varepsilon R$, $g=\varepsilon T$, Mathematica gives $\varepsilon T''$, contradicting equation (3.20), which requires $\varepsilon T'''$. The formula is repaired by
   $$
   \mathcal S_{\mathrm{BMS}}
   =\frac{3(f'')^2g'-f'f'''g'-3f'f''g''+(f')^2g'''}{(f')^3}.
   $$
   The central-charge extraction depends on this corrected expression.
2. **Flat-frame trace Ward identity.** Equations (3.11) and (D.12), together with the statement that $\mathcal A_W=0$ on the flat frame at zero sources, require $T_i{}^i=0$. The computed boundary tensor instead has
   $$
   \mathcal T_i{}^i=\mathcal T_u{}^u=-\frac{M(\phi)}{16\pi G_N}
   $$
   for generic states. This is state dependent and cannot be the local background anomaly described in appendix D. The paper acknowledges the unexplained trace but does not resolve the contradiction.

## Blocked

1. **Full mode-algebra normalization.** The local $\partial_\phi^3\delta$ brackets naturally give an $m^3$ cocycle in cylinder modes, while (4.23)--(4.24) display $m(m^2-1)$. Reconciling them requires an explicit zero-mode/vacuum shift and sign convention for $\mathcal P$, which the source does not state consistently across sections 3 and 4.
2. **Matter flux.** Equation (4.11) leaves the radial power $p$ unspecified and no matter falloff or Einstein-equation calculation is supplied. The formal Ward identity is clear, but the exact flux normalization and the claimed soft/memory consequences are not independently reproducible from this source alone.
3. **Bulk CPS equivalence.** No bulk presymplectic potential/current calculation is provided, so equality with Wald--Zoupas charges, integrability, and the effect of boundary improvements remain source-derived.
4. **Null-boundary action limit.** The chosen finite-$r$ leaves have $n^2=N^2/r^2\neq0$, while section 5 directly inserts the null-boundary term before taking the limit. A controlled stretched-boundary derivation and possible counterterms are not supplied.
5. **Quantum dual.** The work fixes classical gravitational central data; it does not construct a unitary Hilbert space, prove a quantum Carrollian dual, or establish quantum stress-tensor correlators.

## Not independently verified

- The cited equivalence with ADM and earlier CPS/Wald--Zoupas charges.
- The coadjoint-orbit action beyond the checked Schwarzian identity and displayed first-order variational structure.
- The free-Carrollian-scalar response tensors in appendix A.
- Claims relating the formal Ward identity to a complete soft theorem and memory observable.

# Achieved claim tier

The note reaches a **checked classical component-and-algebra benchmark**: the Bondi metric, chosen null-limit geometry, Brown--York response, corrected anomaly match, flat-limit central charges, and Schwarzian Hamiltonian identity are independently reproduced. It does **not** establish a complete bulk CPS derivation, a resolved conformal/Weyl Ward system, or a quantum AFS$_3$/CCFT$_2$ equivalence.
