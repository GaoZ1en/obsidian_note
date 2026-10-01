---
paper id: 2609.30371v1
title: "Boundaries of the compact free boson through edge modes and boundary SymTFT"
authors:
  - "Robbins, Daniel"
  - "Roy, Subham"
  - "Saleem, Hassaan"
publication date: 2026-09-24T18:00
abstract: |-
  We study boundary conditions of the compact free boson theory by coupling the bulk scalar to one-dimensional topological edge modes. We show that a single compact edge mode realizes the Dirichlet family, while a two field system realizes the Neumann family; more general compact edge theories can describe superpositions of boundary conditions and reproduce the expected boundary operator spectra. We then study this system in the framework of boundary SymTFT. We show that the edge mode theories of Dirichlet and Neumann boundaries are encoded in the degrees of freedom localized on the corners and the choice of polarization on the topological face of the boundary SymTFT. We further show that the T-duality defect exchanges the data associated with the Dirichlet and Neumann configurations. Finally, we explore extensions involving non-compact edge modes and multiple bulk fields, obtaining continuous boundary spectra in the first case and mixed boundary conditions in the second.
comments: "39 pages + appendix, 8 figures"
url: https://arxiv.org/abs/2609.30371v1
summary: "Explicit scalar edge actions and BF corners realize Dirichlet and Neumann boundaries; generalized OPE, dimension and density claims need recorded corrections."
tags: []
---

# Boundary actions before boundary-state identification

The strongest reusable construction is the explicit action-level realization of compact-boson Dirichlet and Neumann conditions, followed by their realization as corner data of a three-dimensional BF theory. It gives a small model in which the physical boundary, a topological face, and the corners have distinct roles. The generalized spectral and global claims need qualifications: the printed odd-chain OPE, a brane-dimension formula, and the claimed divergent smeared-Neumann density fail the checks recorded below.

**Source-derived:** complete official [v1](https://arxiv.org/abs/2609.30371v1) PDF and TeX, including both appendices. **Checked:** selected variations, elimination, lattice and spectral-density calculations. The note is a completed reconstruction with an explicit failure ledger, not an endorsement of every source formula.

# How to read this long paper

Read §2.1 together with Appendix A first: the local derivative equation alone does not fix the compact zero mode; the winding sum does. Then read §3.1–3.2 and §3.4 for the face/corner construction and the vertical T-duality map. Keep §3.5 and Appendix B as the defect-junction reference, distinguishing local gauge cancellation from the global winding problem. §§2.2–2.3 and §§4–5 are useful technical extensions but should be read with the corrections below. §1 and §6 provide motivation and proposed extensions, not further proofs.

## Complete section tree and dependency map

| Section, printed pages | Purpose, main data and later use |
|---|---|
| §1, 1–4 | Motivation, physical/symmetry boundary distinction and limits of the Friedan–Janik proposal. |
| §2, 4–5 | Compact scalar normalization and pullback of boundary variations. |
| §2.1, 5–6; §2.1.1, 6–7 | One/two edge scalars; theta parameters and winding constraints. Inputs to corner constructions. |
| §2.2, 7–8 | Integral antisymmetric chain action and parity classification under nonzero chain couplings. |
| §2.3, 8–11 | Boundary vertex weights and comparison with brane-superposition spectra; multiplicity interpretation is incomplete. |
| §3.1, 12–14 | Noncompact BF SymTFT, symmetry/physical boundary conditions and elimination to the compact boson. |
| §3.2, 15–16; §3.2.1, 16–18; §3.2.2, 18–19 | Topological face and two corners; Dirichlet/Neumann corner actions. |
| §3.3, 19; §3.3.1, 19–21; §3.3.2, 21–23 | Duality defect, wall action, its effect on physical and symmetry boundaries. |
| §3.4, 23–26 | Vertical defect fusion, dualizing the symmetry-boundary scalar and turning its old boundary value into a corner scalar. |
| §3.5, 26–27; §3.5.1, 27–30; §3.5.2, 30–32 | Horizontal defect endpoints, junction counterterms, self-dual fusion and global winding restrictions. |
| §4, 32; §4.1, 32–34; §4.2, 34–36 | Compact/noncompact edge matrix, image/kernel criterion, continuous spectra and smeared boundary proposals. |
| §5, 36–38 | Torus targets, fluxed Neumann data, Dirichlet constraints and Smith normal form. |
| §6, 38–39 | Outlook: generic Friedan–Janik and rational-radius boundaries remain open. |
| Appendix A, 40–42 | Annulus edge integration, oscillator determinant and compact winding localization. |
| Appendix B, 42–43 | Separate gauge-variation cancellations for the horizontal junction. |

PDF page numbers are printed page numbers plus one.

# Conventions and global notation

The Euclidean scalar has $X\sim X+2\pi$, radius $R>0$, $\alpha'=1$, and action

$$
S_X=\frac{R^2}{4\pi}\int_{M_2}dX\wedge *dX,
\qquad *dX=-i\,d\widetilde X,
\qquad \widetilde X\sim\widetilde X+\frac{2\pi}{R^2}.
$$

Thus $\widetilde X$ is not the unit-period dual scalar: the latter is $X'=R^2\widetilde X$ up to the convention-dependent sign. On Euclidean one-forms $*^2=-1$. Boundary expressions implicitly use the pullback $\iota^*$, so $dX=0$ there means a tangential derivative vanishes. It must not be read as the bulk field being constant.

| Symbol | Meaning |
|---|---|
| $\Psi_i$, $\Phi_a$ | Compact $2\pi$-periodic and real noncompact one-dimensional edge scalars. |
| $v,k,\alpha$ | Integer bulk-edge vector, integer antisymmetric compact-edge matrix, and constant boundary theta parameters. |
| $a,b$ | Real one-form BF fields in three dimensions; not the compact edge scalars. |
| $B_{\rm Sym},B_{\rm Phys},B_{\rm face}$ | Symmetry boundary, metric-dependent physical boundary, and additional topological face. |
| $C_{\rm Top},C_{\rm Phys}$ | Face intersections with the two end boundaries. |
| $T_s$, $J_0,J_1$ | Bulk exchange defect and its symmetry/physical-boundary endpoints in the horizontal placement. |
| $\Omega,V,q$ in §4 | Antisymmetric edge coupling matrix, coupling vector and edge-coordinate vector. This $\Omega$ is not a CPS form. |
| $G_{AB},B_{AB},V_{iA}$ in §5 | Constant target metric, target antisymmetric field and integer coupling to multiple bulk scalars. |

# Cluster I: local equations and compact zero modes

The bulk first variation is $-R^2(2\pi)^{-1}\int\delta X\,d*dX$ plus $R^2(2\pi)^{-1}\int_{\partial M_2}\delta X*dX$. Couple one compact edge scalar through

$$
S_D=\frac{i}{2\pi}\int_{\partial M_2}(\Psi dX+\alpha d\Psi).
$$

The independent variations yield (2.6)

$$
dX=0,\qquad R^2*dX=i\,d\Psi.
$$

The first fixes $X$ only to a locally constant boundary value. A sum over compact $\Psi$ winding sectors in the exponentiated action imposes $X-\alpha\in2\pi\mathbb Z$, thereby selecting a member of the Dirichlet family. This global step is indispensable.

For Neumann use

$$
S_N=\frac{i}{2\pi}\int_{\partial M_2}
(\Psi_1d\Psi_2+\Psi_2dX+\alpha d\Psi_1).
$$

The equations are $d\Psi_2=0$, $dX=d\Psi_1$ and $R^2*dX=i\,d\Psi_2=0$. The compact winding constraints give

$$
\Psi_2-\alpha\in2\pi\mathbb Z,\quad
\Psi_1-X\in2\pi\mathbb Z,\quad
R^2\widetilde X+\Psi_2\in2\pi\mathbb Z,
$$

so $\widetilde X=-\alpha/R^2$ modulo its period. Mathematica independently reproduced all three first-order edge Euler–Lagrange coefficients, including signs. The constant theta terms do not alter these local equations.

## Integral chains and their spectral interpretation

The general compact action in (2.18) has integrand

$$
v_i\Psi_i dX+\tfrac12 k_{ij}\Psi_i d\Psi_j+\alpha_0dX+\alpha_i d\Psi_i.
$$

The source uses an integral change of basis to a chain $v\Psi_1dX+\sum_{i=1}^{N-1}k_i\Psi_i d\Psi_{i+1}$, with $v,k_i\ne0$. Conditional on this chain presentation, the equations are

$$
R^2*dX=iv\,d\Psi_1,\quad vdX+k_1d\Psi_2=0,
\quad k_i d\Psi_{i+1}-k_{i-1}d\Psi_{i-1}=0,
\quad k_{N-1}d\Psi_{N-1}=0.
$$

Following the recursion backwards fixes odd-index modes for even $N$, producing Neumann, and even-index modes for odd $N$, producing Dirichlet. Exact rank tests for $N=1,\ldots,8$ agree. This does not independently prove the claimed simultaneous integral normal form for every initial pair $(v,k)$.

The nonconstant pieces are

$$
\Psi_{2j}=-\frac v{k_1}\prod_{r=1}^{j-1}\frac{k_{2r}}{k_{2r+1}}X+\text{constant},
\qquad
\Psi_{2j-1}=-\frac{R^2}{v}\prod_{r=1}^{j-1}\frac{k_{2r-1}}{k_{2r}}\widetilde X+\text{constant}.
$$

Empty products equal one. With $T(z)=-R^2:(\partial X)^2:$, the doubled boundary contraction gives $h(e^{ikX})=k^2/R^2$ for Neumann and $h(e^{ik\widetilde X})=k^2/R^2$ for Dirichlet. Therefore

$$
h_D(e^{in\Psi})=\frac{n^2R^2}{v^2},\qquad
h_N(e^{in\Psi_1+im\Psi_2})=\frac{m^2v^2}{k_1^2R^2}.
$$

For general chains,

$$
h_{N\,\mathrm{even}}=\frac{v^2}{R^2k_1^2}
\left[\sum_{j=1}^{N/2}m_j\prod_{r=1}^{j-1}\frac{k_{2r}}{k_{2r+1}}\right]^2,
$$

$$
h_{N\,\mathrm{odd}}=\frac{R^2}{v^2}
\left[\sum_{j=1}^{(N+1)/2}m_j\prod_{r=1}^{j-1}\frac{k_{2r-1}}{k_{2r}}\right]^2.
$$

**Failed, source (2.58):** its odd-chain product runs to $j$ instead of $j-1$. Already $N=3$ should involve $m_1+m_2k_1/k_2$; the printed expression uses nonexistent $k_3,k_4$. This is present in TeX and the rendered PDF. The corrected expression above follows directly from (2.33).

The boundary-state comparison uses

$$
\langle D(x)|q^H|D(x')\rangle
=\sum_{n\in\mathbb Z}\chi_{R^2(n-(x-x')/(2\pi))^2}(\widetilde q),
$$

$$
\langle N(\widetilde x)|q^H|N(\widetilde x')\rangle
=\sum_{n\in\mathbb Z}\chi_{(n+R^2(\widetilde x-\widetilde x')/(2\pi))^2/R^2}(\widetilde q).
$$

Equal-spacing Dirichlet branes reproduce the $n^2R^2/v^2$ set of weights. For Neumann the comparison is made at $|v|=1$; the source explicitly leaves $|v|>1$ interpretation unclear. Agreement of sets of weights does not fix multiplicities, Chan–Paton data or a full boundary operator algebra. Vanishing coefficients in an arbitrary brane superposition can remove some of the advertised weights.

# Cluster II: the BF interval and its corners

The SymTFT bulk action and end-boundary actions are

$$
S_{BF}=\frac i{2\pi}\int_{\Sigma_2\times[0,1]}a\wedge db,
\quad S_{\rm Sym}=-\frac{iR}{2\pi}\int_{\Sigma_2\times\{0\}}Xdb,
\quad S_{\rm Phys}=\frac1{4\pi}\int_{\Sigma_2\times\{1\}}b\wedge*b.
$$

$a,b$ are real gauge fields. Their line charges are real, and the source braiding phase is $\exp(2\pi i mn\,\mathrm{Link})$. $X\mapsto X-\lambda_a/R$ cancels the symmetry-boundary gauge variation. Gauge transformations on the physical boundary must preserve its metric-dependent condition; the later junction discussion takes their parameters to vanish there.

Both end integrals use the orientation of $\Sigma_2$, with $\partial M_3=\Sigma_2|_1-\Sigma_2|_0$. Variations give $da=db=0$ in the bulk, $a=-R\,dX$ on the symmetry boundary, and $a=i*b$ on the physical boundary. Integrating out the BF interior gives the auxiliary two-dimensional action

$$
S_{\Sigma_2}=\frac1{4\pi}\int b\wedge*b
+\frac{iR}{2\pi}\int dX\wedge b.
$$

Its equation is $*b=iR\,dX$, hence $b=-iR*dX$. Substitution gives $R^2(4\pi)^{-1}\int dX\wedge*dX$, checked with an explicit Euclidean Hodge matrix. This is local Gaussian elimination; the compact winding sum supplies the global periods.

When $\partial\Sigma_2\ne\varnothing$, the face $B_{\rm face}=\partial\Sigma_2\times[0,1]$ and corners $C_{\rm Top/Phys}=\partial\Sigma_2\times\{0,1\}$ are separate strata. The face variation is proportional to $\int a\delta b$. Two polarizations remove it:

| Face prescription | Corner action at $C_{\rm Top}$ | Corner equations |
|---|---|---|
| $a=0$ | $\frac i{2\pi}\int\Psi dX+\frac{iR}{2\pi}\int Xb$ | $dX=0$, $Rb=d\Psi$ |
| $b=0$ | $\frac i{2\pi}\int(\Psi_1d\Psi_2+\Psi_2dX)+\frac{iR}{2\pi}\int Xb$ | $d\Psi_2=0$, $dX=d\Psi_1$, $Rb=d\Psi_2$ |

The $Xb$ counterterm cancels the $X\delta b$ variation inherited from $S_{\rm Sym}$ and trades it for $\delta Xb$. After interval reduction the equations are exactly those of the first cluster. The metric-dependent end action has no derivatives and produces no additional analogous corner term at $C_{\rm Phys}$. The Dirichlet gauge restriction is $d\lambda_a|_{\rm face}=0$, with $\Psi\mapsto\Psi+R\lambda_b$; gauge cancellation is a property of the combined strata, not every term in isolation.

# Cluster III: duality walls and the distinction between placements

The real BF fields admit the exchange $a\mapsto sb$, $b\mapsto s^{-1}a$ for $s\ne0$. Across an oriented wall $D$, take

$$
a_R=sb_L,\qquad b_R=s^{-1}a_L,
\qquad S_{T_s}=\frac i{2\pi}\int_Da_L\wedge b_L.
$$

The wall variation cancels the unmatched variations from the two BF pieces. Physical-end compatibility requires $s^2=1$. On the symmetry end, integrating over the old compact scalar quantizes $\oint a\in(2\pi s/R)\mathbb Z$ and permits $a=-(s/R)dX'$ with $X'\sim X'+2\pi$. The new radius is $R'=s/R$; $s=1$ is the ordinary positive-radius T-duality map.

For the vertical placement, the face polarization changes from $a_L=0$ to $b_R=0$. After fusion and dualization the old Dirichlet corner term becomes

$$
\frac i{2\pi}\int(\Psi dX-XdX')
=\frac i{2\pi}\int(\Psi_1d\Psi_2+\Psi_2dX'),
\qquad \Psi_1=-\Psi,\ \Psi_2=-X|_C.
$$

The transformed symmetry-end integration by parts adds $iR'(2\pi)^{-1}\int X'b$, completing the Neumann corner action. Thus $T_1[D]\otimes D_R=N_{1/R}$. The old boundary value of $X$ becomes a new corner field; it cannot simply be discarded when eliminating bulk data. The displayed corner identity was checked algebraically.

For horizontal $H=\gamma\times[0,1]$, the physical endpoint $J_1$ is transparent under the stated vanishing gauge parameters. The symmetry endpoint $J_0$ requires

$$
S_{J_0}=\frac{iR}{2\pi}\int_{J_0}Xb
-\frac{iR}{2\pi}\int_{J_0}X'(a+R\,dX).
$$

To derive its coefficient, initially use $-i\kappa(2\pi)^{-1}\int X'dX$. Its equations give $b=-(\kappa/R)dX'$ and $a=-(\kappa/R)dX$, matching the two symmetry-boundary prescriptions only at $\kappa=R^2$. Appendix B cancels each gauge variation between junction, wall, boundary and bulk. The displayed anomaly contributions sum to zero; this checks the infinitesimal cancellation with the stated orientations, not all large-gauge sectors.

At $R=1$, fusion into the face gives the Neumann corner theory at the same radius. At general radius, compactness imposes the necessary conditions

$$
R^2w_X\in\mathbb Z,\qquad R^2w_{X'}\in\mathbb Z.
$$

For reduced $R^2=p/q$ these allow winding multiples of $q$; for irrational $R^2$ they allow only zero winding. These are lattice constraints, not a complete proof of a well-defined defect Hilbert space or fusion law. **Failed as phrased:** §3.5.2 says these conditions are nonempty restrictions whenever $R\ne1$, but $R^2=2$ admits every integer winding. Thus that condition alone cannot establish the claimed generic non-invertibility. The source itself leaves a proper away-from-self-duality fusion analysis for future work, including the proposed smeared irrational-radius boundary. Its rational-radius footnote also reaches $v=p>1$, precisely the Neumann interpretation left unresolved in §2.3.

# Cluster IV: noncompact edges and a density check

Use $q=(\Psi,\Phi)$, $V=(v,u)$ and

$$
\Omega=\begin{pmatrix}k&\widehat k\\-\widehat k^T&\widetilde k\end{pmatrix},
\quad S_\partial=\frac i{2\pi}\int
\left(V^Tq\,dX+\tfrac12q^T\Omega dq+\alpha_0dX+\alpha_i d\Psi_i\right).
$$

The reliable local equations from (4.3) are $dY=iV^Tdq$ and $VdX+\Omega dq=0$, where $dY=R^2*dX$. If $V\in\mathrm{Im}\Omega$, write $V=\Omega p$ and obtain $dq=-p\,dX+dr$ with $dr\in\ker\Omega$. Antisymmetry then gives $dY=0$. If $V\notin\mathrm{Im}\Omega$, a kernel vector $z$ with $z^TV\ne0$ forces $dX=0$. The criterion is membership in the **image**, not the loose kernel/image wording later in the source.

**Failed, sign in §4.1:** the printed $dq=+p\,dX+dr$ leaves residual $2VdX$ in its preceding equation. The corrected minus sign retains the Neumann conclusion. Other formulas in this subsection have transcription inconsistencies: (4.10) omits $d$ in the last theta term, and (4.14) omits the Euclidean $i$ present in (4.3). The reconstruction uses (4.3), rather than silently treating all printed versions as identical.

One noncompact edge has continuous vertex label $p\in\mathbb R$ and weight $h=p^2R^2/u^2$. With one compact and one noncompact edge, nonzero mixed coupling $\widehat k$ gives $d\Psi=(u/\widehat k)dX$, $d\Phi=-(v/\widehat k)dX$ and

$$
h=\frac{(nu-pv)^2}{R^2\widehat k^2},\qquad n\in\mathbb Z,\ p\in\mathbb R.
$$

It is a continuum when the noncompact label actually couples to the vertex's variable part (for this expression, $v\ne0$). Noncompactness alone is not enough if that coefficient vanishes. The source proposes smeared Dirichlet/Neumann states, but does not realize the generic Friedan–Janik family.

The annulus formula provides a direct check independent of importing an endpoint limit of an elliptic-integral density. For $0<\widetilde q<1$, write $\chi_h(\widetilde q)=\widetilde q^h/\eta(\widetilde q)$. With the source's unnormalized integration measures, periodic unfolding of (4.18) and (4.25) yields

$$
\rho_D(h)=\frac{4\pi^2}{R\sqrt h},\qquad
\rho_N(h)=\frac{4\pi^2}{R^3\sqrt h},\qquad h>0.
$$

For example, put $y=R^2\widetilde x/(2\pi)$. The Neumann double integral becomes $4\pi^2R^{-4}\int_{\mathbb R}dt\,\chi_{t^2/R^2}$; changing variables to $h$ gives the second result. The $h^{-1/2}$ singularity at zero is integrable with the heat weight. Mathematica gives both finite Laplace integrals, and a sum/integral check at $R=\sqrt2$, $-\log\widetilde q=3/2$ agrees to about $2.2\times10^{-14}$.

**Failed, (4.26) as a density for (4.25):** the claimed infinite density proportional to $K(1)$ contradicts this explicitly finite annulus integral. A singularly normalized Friedan–Janik limit could be a different object; no identification with the finite-measure state in (4.23) has been established. This check concerns the displayed amplitude, not all possible continuum-boundary normalizations.

# Cluster V: torus targets and integral constraints

For $D$ compact bulk coordinates, the target action uses constant $G_{AB}$ and $B_{AB}$, with dual one-forms defined by $-i\,d\widetilde X_A=G_{AB}*dX^B+iB_{AB}dX^B$. The boundary action couples them by integer $V_{iA}$ and antisymmetric integer $k_{ij}$. The equations are

$$
VdX+k\,d\Psi=0,\qquad d\widetilde X=-V^Td\Psi.
$$

If $k$ is invertible, eliminate $d\Psi$ to obtain fluxed Neumann conditions

$$
d\widetilde X-\mathcal FdX=0,\qquad\mathcal F=V^Tk^{-1}V,
\qquad\mathcal F^T=-\mathcal F.
$$

Unlike the one-bulk-scalar case, the antisymmetric matrix need not vanish. A symbolic $2\times3$ coupling example verifies its antisymmetry. If $k$ is singular, an integral kernel basis $Z$ gives $Z^TVdX=0$. For a consistent compact level set, let $A=Z^TV$ have rank $r$. Smith normal form of the actual integral constraint map determines $\prod_{i=1}^r|\lambda_i|$ connected components, each of dimension **$D-r$**. A primitive choice of the kernel lattice and the global winding constraints are needed; integrating a local differential equation alone does not justify an arbitrary modulus lattice.

**Failed, §5 p. 37:** the source states dimension $\min(d,N)-r$, with $d=\dim\ker k$. Take $D=3$, $N=d=2$, $k=0$, $V=\left(\begin{smallmatrix}2&0&0\\0&3&0\end{smallmatrix}\right)$. There are six circles: two choices of $X^1$, three of $X^2$, and free $X^3$. Sage gives Smith entries $(1,6)$ and dimension $D-r=1$, whereas the printed expression gives zero. The row operation belongs to $GL(d,\mathbb Z)$ for the $d\times D$ constraint matrix, also correcting the displayed generic $GL(N,\mathbb Z)$ size.

Tangential flux conditions survive after projecting by a tangent matrix $T$ with $Z^TVT=0$:

$$
T^T(d\widetilde X-\mathcal FdX)=0,
\qquad\mathcal F=V^Tk_{\rm Im}^{-1}V.
$$

The inverse is taken only on the image, generally over the rationals. The conditions distinguish fixed transverse positions from fluxed tangent directions. They are not a general classification of all torus BCFT states.

# Appendix reconstruction and equation ledger

Appendix A places the scalar on an annulus with $0\le s\le L$, angular period $2\pi$ and opposite signs for the inner/outer edge actions. Integrating noncompact edge oscillators forces nonzero Fourier modes of $X$ to vanish at each boundary; edge zero modes force angular winding zero. The surviving boundary constants $x_{\rm in},x_{\rm out}$ are integrated. The radial classical action is

$$
S_0=\frac{R^2}{2L}(x_{\rm out}-x_{\rm in}+2\pi N)^2.
$$

The oscillator Gaussian factors are $\prod_{n\ge1}R^2n/[\pi\sinh(nL)]$, yielding an eta factor after zeta regularization. With $q=e^{-2L}$ and $\widetilde q=e^{-2\pi^2/L}$, the modular eta transformation cancels the zero-mode $L^{-1/2}$ factor. Up to an $L$-independent measure normalization, the result is exactly the double-integral smeared Dirichlet amplitude. Compact edge winding instead fixes each boundary constant to its theta parameter and removes those integrals. The radial action was independently integrated; the absolute infinite-dimensional measure normalization remains Source-derived.

Appendix B computes the $\lambda_a$ and $\lambda_b$ anomalies separately. For the first, the junction $-\int\lambda_a b$, wall $-\int_H\lambda_a db+\int_{J_0}\lambda_a b$, symmetry-boundary $+\int\lambda_a db$ and bulk $+\int_H\lambda_a db-\int\lambda_a db$ cancel. The second has the analogous $a,da$ chain with reversed wall endpoint sign. This is a useful template for checking a combined bulk/face/corner action before claiming gauge invariance.

| Equation chain | Reusable object | Qualification |
|---|---|---|
| (2.4)–(2.17) | Dirichlet/Neumann edge actions and theta families | Local equations plus compact winding sum. |
| (2.20)–(2.33), (2.45), (2.52), (2.57)–(2.58) | Chain reduction and vertex weights | Correct odd product limit; state multiplicities need additional work. |
| (3.9)–(3.21) | BF reduction to the scalar action | Orientation and Hodge conventions fixed; global periods retained. |
| (3.29)–(3.47) | Face polarization and corner action | Physical, symmetry and face strata are distinct. |
| (3.71)–(3.85) | Vertical T-duality of edge theories | Old scalar boundary value becomes a corner field. |
| (3.95)–(3.109), Appendix B | Horizontal junction and winding constraint | Full generic-radius fusion remains open. |
| (4.3)–(4.13) | Image/kernel criterion | Correct the sign of the image solution. |
| (4.18), (4.25), Appendix A | Continuous annulus spectrum | Finite heat amplitude contradicts (4.26) for the stated measure. |
| (5.5)–(5.16) | Torus constraint and flux matrices | Correct dimension to $D-r$; use an integral constraint lattice. |

# Translation to the regional programme

The action, allowed boundary variables and topological sectors are specified before identifying boundary states. That order is useful for the vault's regional-theory test. A boundary polarization is not interchangeable with a quotient by every boundary shift, and a corner counterterm can carry information needed when eliminating an adjacent region. The vertical defect supplies a concrete field map, while the horizontal problem demonstrates why a locally correct map can still require global winding data.

The source does not construct a general cut-independent regional observable algebra, a BV pushforward with arbitrary residual fields, or an associative multi-interface state pairing. Classical boundary equations, the set of boundary conformal weights, and a fully normalized boundary state are distinct outputs. The failed density/multiplicity claims make this distinction practically important here.

# Verification and evidence ledger

**Verified:** Mathematica edge Euler–Lagrange variations for one/two scalars; BF auxiliary elimination; elementary OPE coefficient reductions; vertical corner redefinition; antisymmetric image elimination; finite-density Jacobians and Laplace transforms; torus flux antisymmetry; radial annulus action; and cancellation of Appendix B's displayed anomaly terms. Sage checked chain ranks for $N=1$ through $8$, the six-circle Smith example and rational/integer winding samples.

**Assumptions:** Euclidean signature and fixed $R>0$; specified orientations and pullbacks; nonzero chain/mixed couplings where inverses are used; compact $2\pi$ periods; consistent level sets; smooth local gauge transformations; finite positive annulus modulus; the explicitly stated, unnormalized compact smearing measures.

**Failed:** printed (2.58) odd-chain product; the $+p\,dX$ image solution in §4.1; §5's brane dimension; (4.26) as a density for (4.25); and the claim that (3.109) restricts windings for every $R\ne1$. These failures are mathematical discrepancies, not tool failures. The core one/two-edge construction passed its scoped checks.

**Blocked:** a full generic-radius defect fusion rule needs the missing global charge-lattice and normalization analysis; identifying every generalized edge theory with a complete BCFT state needs multiplicities and sewing/Cardy data. The source explicitly leaves several of these interpretations open.

**Not verified:** a general simultaneous integral chain-normal-form theorem, complete compact-path-integral measure normalization, all large-gauge sectors, generic Friedan–Janik boundaries, and quantum regional sewing. The remaining global/state identifications are **Source-derived / Not independently verified**.

Retrieval audit: official PDF and TeX both succeeded; font extraction warning was resolved for the decisive discrepancies by TeX and rendered PDF pages 12, 37 and 38. All sections and both appendices were inspected. No computation-service blocker remains. This note and its content/Pandoc validation were finished before opening the next queued paper.
