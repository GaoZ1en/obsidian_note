---
paper id: 2610.26735v1
title: "Large-Level Limit of Doubled Chern-Simons Theory Part I: Regular Sector, Boundaries and Interfaces"
authors:
  - Shengyi Guan
  - Qiang Jia
  - Jiahua Tian
  - Yi-Nan Wang
publication date: 2026-10-19T17:01:35Z
abstract: |-
  Doubled compact Chern-Simons theory has a regular large-level limit with group-valued flux and weight-valued charge. After explicit sampling and cell embeddings, its genus-one modular representations converge strongly, together with their adjoints, to a regular compact-quantum-double representation. Boundary wavefunctions, flat gauging and interfaces provide further tests and candidate limits. Singular flux sectors, full sewing data, and the proposed non-Abelian boundary and Runkel-Watts interface theories require additional input.
comments: "85 pages, 1 figure"
url: https://arxiv.org/abs/2610.26735v1
summary: "A complete regular-sector wave-packet convergence proof separates a controlled genus-one limit from conjectural boundary CFTs and interface sewing; the measure, no-escape argument and SU(2) obstruction are directly reusable."
tags: []
---

# Regular Flux–Charge Limits, Boundary Polarizations and Interfaces

The main theorem is a strong-* limit of genus-one modular operators on **fixed regular wave packets**. It is substantially more precise than the statement that the classical action becomes BF theory:

$$\begin{align}
I_k\rho_k(\gamma)I_k^*+(1-P_k) \xrightarrow[k\to\infty]{\mathrm{strong-*}} \rho_0(\gamma), \qquad P_k=I_kI_k^*,\quad \gamma\in SL(2,\mathbb Z)\ \text{fixed}.
\end{align}$$

Here $I_k$ embeds a finite Hilbert space into $\mathcal H_0=L^2(\mathcal Y\times P,dx\,d\#)$, where $\mathcal Y$ is the **open** Weyl alcove and $P$ is the weight lattice. The theorem does not include singular line labels, the tensor unit, four-punctured-sphere sewing, a limiting fusion category, or an unregulated partition-function trace.

The most useful proof mechanism is:

$$\begin{align}
\text{local kernel convergence} +\text{global sampling} +\text{unitarity at both endpoints}
\ \Longrightarrow\
\text{no escape of packet norm}
\ \Longrightarrow\
\text{strong-* convergence}.
\end{align}$$

The boundary and interface sections contain separate statements with different evidence levels. Abelian boundary wavefunctions and lattice identifications are explicit. The non-Abelian free-scalar and flat-gauging constructions are candidates with consistency checks. A gapped near-identity interface obstruction is proved for $SU(2)$; the Runkel–Watts interface limit remains a conjecture requiring a selected coupling and correlation-function limit.

**Source-derived:** the reconstruction below follows the complete [v1 paper](https://arxiv.org/abs/2610.26735v1), §§1–6 and Appendix A. **Checked:** targeted exact algebra, root systems, finite modular matrices, a smooth packet computation, heat-kernel regulators and interface identities are recorded at the end.

## Section Tree, Clusters and Reading Route

| Source | Internal structure | Function in the argument |
|---|---|---|
| §1 | Motivation and overview | Separates classical contraction, regular quantum limit, boundaries and interfaces |
| §2 | Holonomy/root conventions; classical contraction; regular compact-double labels; finite-level scaling window | Defines the objects and the limit |
| §3 | Main theorem; §3.1 Kac–Peterson kernel and local convergence; §3.2 sampling and no escape; §3.3 common-space embeddings; §3.4 embedding independence | Proves the regular genus-one result |
| §4.1 | Abelian CS, BF and doubled wavefunctions | Solves the polarization and large-gauge constraints explicitly |
| §4.2 | Four non-Abelian checks | Tests a noncompact adjoint-scalar boundary candidate |
| §4.3 | Non-Abelian BF ansatz and doubled classical theta sums | Derives lattice and modular constraints, leaving determinant matching conditional |
| §4.4 | Flat gauging and regular-locus divergences | Exhibits a continuous-orbifold candidate and its regulator problem |
| §5.1 | Chains of adjacent levels and finite-weight refinement | States the additional near-identity condition |
| §5.2 | Gapped obstruction and gapless cosets | Rules out one restrictive gapped limit, not all interfaces |
| §5.3 | Unit-level jump and Runkel–Watts proposal | Extracts a candidate continuum spectrum |
| §6 | Singular sectors and sewing; boundaries/interfaces; global forms/anomalies/gravity | Lists extensions not supplied by the theorem |
| Appendix A.1 | Fourier realization of the endpoint | Proves unitarity and modular relations independently |
| Appendix A.2 | Holonomy realization on a common conull domain | Explains why a regular chart suffices for an $L^2$ representation |

For the theorem, read §2, Appendix A, then §§3.1–3.4. The endpoint representation must already be unitary before the no-escape argument is used. For a regional/CPS application, read §2's action and boundary term, §4.1's polarizations, and §4.2's distinction between edge and reduced phase spaces. The proposed CFT identifications in §§4–5 should then be read with their additional assumptions visible.

## Global Notation and Normalization Dictionary

| Symbol | Meaning and convention |
|---|---|
| $G,\mathfrak g$ | Compact connected simple simply connected group and anti-Hermitian Lie algebra, unless the discussion explicitly changes the global form |
| $\mathfrak t$ | Real Hermitian Cartan, so $e^{2\pi i x}\in T$ for $x\in\mathfrak t$ |
| $(x,y)$ | Positive Cartan form with long roots of squared length $2$ |
| $\operatorname{tr}$ | Invariant form normalized by the dual Coxeter number; $-\operatorname{tr}(XY)$ is positive on anti-Hermitian generators |
| $P,Q,Q^\vee$ | Weight, root and coroot lattices; $P=(Q^\vee)^*$ and $Q^\vee\subset Q\subset P$ with this normalization |
| $T$ | $\mathfrak t/Q^\vee$ |
| $W,\rho,\vartheta,h^\vee,\ell$ | Weyl group, half-sum of positive roots, highest root, dual Coxeter number, rank |
| $\mathcal Y$ | Open alcove: $(\alpha_i,x)>0$, $(\vartheta,x)<1$ |
| $r_k$ | $k+h^\vee$, the shifted **quantum** level |
| $r$ in §4 | Positive boundary polarization/radius parameter; unrelated to $r_k$ |
| $\gamma_G$ | $1/\operatorname{covol}(Q^\vee)$ |
| $v_k$ | $\operatorname{covol}(P)/r_k^\ell$, the fixed-charge mesh volume |
| $(x,\eta)$ | Regular group-valued flux coordinate and stabilizer charge, $x\in\mathcal Y$, $\eta\in P$ |
| $\mathcal H_k,\mathcal H_0$ | Finite doubled label space and continuum packet space; not the carrier of an individual line representation |
| $Q_k,J_k$ | Point sampling and normalized sampling, $J_k=\sqrt{v_k}Q_k$ |
| $I_k,P_k$ | Cell embedding and its range projection |
| $\tau,\tau_2$ | Torus modulus and $\operatorname{Im}\tau>0$ |
| $\eta_{\rm D}(\tau)$ | Dedekind eta function, distinguished here from the charge $\eta$ |

The $2\pi$ conversion must remain explicit:

$$\begin{align}
-\operatorname{tr}\big((2\pi i x)(2\pi i y)\big) =(2\pi)^2(x,y).
\end{align}$$

Three measures play different roles. The regular packet space uses **flat** $dx\,d\#$; normalized Haar measure on $T$ is $\gamma_G\,dx$ in a lattice cell; the class-function pushforward of Haar measure on $G$ contains

$$\begin{align}
J(x)=\prod_{\alpha>0}4\sin^2\!\big(\pi(\alpha,x)\big).
\end{align}$$

Replacing the packet measure by $J(x)dx$ changes the theorem. Also, the quotient of $T\times T$ by simultaneous Weyl transformations has an extra $|W|$ when represented on one first-holonomy alcove.

## §2: What the Classical Contraction Establishes

### Relative Action, Boundary Term and Contraction Scale

Choose two connections on a common bundle and write

$$\begin{align}
A_\pm=A\pm\frac{B}{2k}.
\end{align}$$

With the paper's anti-Hermitian convention

$$\begin{align}
\operatorname{CS}(A) =-\int_M\operatorname{tr} \left(A\,dA+\frac13 A[A,A]\right),
\end{align}$$

the transgression identity is

$$\begin{align}
\operatorname{CS}(A+\Xi)-\operatorname{CS}(A-\Xi) =-4\int_M\operatorname{tr}(\Xi F_A) -\frac23\int_M\operatorname{tr}\big(\Xi[\Xi,\Xi]\big) +2\int_{\partial M}\operatorname{tr}(A\wedge\Xi).
\end{align}$$

Thus a compatible relative real lift of the doubled action gives

$$\begin{align}
S_k =-\frac1{2\pi}\int_M\operatorname{tr}(B F_A) -\frac1{48\pi k^2}\int_M\operatorname{tr}\big(B[B,B]\big) +\frac1{4\pi}\int_{\partial M}\operatorname{tr}(A\wedge B).
\end{align}$$

The boundary term is part of the result and fixes a polarization convention. It cannot be dropped when comparing boundary wavefunctions or regional actions. The bulk equations are

$$\begin{align}
F_A+\frac1{8k^2}[B,B]=0,\qquad D_AB=0.
\end{align}$$

With $\epsilon_\pm=\epsilon\pm\beta/(2k)$,

$$\begin{align}
\delta A=D_A\epsilon+\frac1{4k^2}[B,\beta], \qquad \delta B=D_A\beta+[B,\epsilon].
\end{align}$$

Equivalently, for $J_X=(X,X)$ and $P_X=(X,-X)/(2k)$,

$$\begin{align}
[J_X,J_Y]=J_{[X,Y]},\qquad [J_X,P_Y]=P_{[X,Y]},\qquad [P_X,P_Y]=\frac1{4k^2}J_{[X,Y]}.
\end{align}$$

The split invariant form has vanishing $JJ$ and $PP$ components and mixed pairing $-\operatorname{tr}(XY)$. This produces the cotangent Lie algebra in the limit.

There are two qualifications. First, the relative $B$ period grows with $k$; for the Abelian lattice, holding the average connection fixed gives relative period proportional to $2k$. The limiting $B$ is noncompact. Second, a Lie-algebra contraction to $G\ltimes\mathfrak g^*$ does **not** identify its group algebra $C_0(\mathfrak g^*)\rtimes G$ with the compact quantum double $C(G)\rtimes_{\rm Ad}G$. The latter has group-valued flux and needs the quantum label construction.

### Regular Compact-Double Lines

For regular $g_x=e^{2\pi i x}$, its centralizer is $T$. A regular irreducible representation of

$$\begin{align}
D(G)=C(G)\rtimes_{\rm Ad}G
\end{align}$$

is labeled by $(x,\eta)\in\mathcal Y\times P$. One induced carrier consists of functions satisfying

$$\begin{align}
f(ut)=\chi_\eta(t)^{-1}f(u),
\end{align}$$

with the invariant probability measure on $G/T$. The two generating actions are

$$\begin{align}
(M_x(F)f)(u)=F(ug_xu^{-1})f(u),\qquad (U_hf)(u)=f(h^{-1}u).
\end{align}$$

They obey the required crossed-product covariance. This carrier is distinct from the space of wave packets over all $(x,\eta)$.

On alcove walls, the stabilizer grows and its irreducible representations replace the torus-character label. In particular, identity flux contains $\operatorname{Irr}(G)$ and the tensor unit. Removing a measure-zero boundary from an $L^2$ packet model does not construct these singular lines, nor prove that they can be discarded from fusion or sewing.

### Finite Labels and the Regular Scaling Window

The finite doubled object is $a\boxtimes\bar b$, with $\bar b=-w_0b$. Its modular data are

$$\begin{align}
(S_k^{\rm dbl})_{(a,b),(c,d)} =S_{ac}\overline{S_{bd}}, \qquad T_{(a,b)}=\theta_a\theta_b^{-1}.
\end{align}$$

The two central-charge phases cancel, giving a nonprojective $SL(2,\mathbb Z)$ representation. Write

$$\begin{align}
x=\frac{a+b+2\rho}{2r_k},\qquad \eta=a-b,
\end{align}$$

so

$$\begin{align}
a=r_kx-\rho+\frac{\eta}{2},\qquad b=r_kx-\rho-\frac{\eta}{2}.
\end{align}$$

For fixed $\eta$, the allowed mesh lies in $r_k^{-1}(P+\rho+\eta/2)$, subject to both integrability conditions. Its cell volume is $v_k$; the factor $2$ in the definition of $x$ does not introduce an extra $2^{-\ell}$ because the difference is held fixed. The excluded strip near the alcove boundary has thickness controlled by
$(1+|\eta|)/r_k$. Every fixed compact interior set eventually has the full shifted mesh.

Regular flux requires $a,b=O(k)$ with their difference fixed. Holding $a,b$ fixed sends the flux toward the identity wall, outside the theorem's regular scaling interpretation.

For $SU(2)$, let $\omega^2=1/2$, $x=t\omega$, $\eta=n\omega$. Then

$$\begin{align}
0<t<1,\quad t=\frac{a+b+2}{2(k+2)},\quad n=a-b,\quad dx=\frac{dt}{\sqrt2},\quad \gamma_G=\frac1{\sqrt2},\quad v_k=\frac1{\sqrt2(k+2)}.
\end{align}$$

These factors provide a useful normalization test for both the kernel and numerical sampling.

## Appendix A and §3: Constructing the Endpoint Before Taking the Limit

### Fourier Realization and Modular Relations

The proposed endpoint acts on $\mathcal H_0=L^2(\mathcal Y\times P,dx\,d\#)$ by

$$\begin{align}
(S_0f)(x,\eta) =\gamma_G
\sum_{\omega\in P}\int_{\mathcal Y}dy
\sum_{w\in W} e^{-2\pi i((wx,\omega)+(w\eta,y))} f(y,\omega),
\end{align}$$

$$\begin{align}
(T_0f)(x,\eta)=e^{2\pi i(\eta,x)}f(x,\eta).
\end{align}$$

Its unitarity is not inferred from the finite-level limit. Extend $f$ simultaneously under the Weyl group to $T\times P$. The extension has squared norm
$|W|\gamma_G\|f\|^2$, so the unitary map uses
$(|W|\gamma_G)^{-1/2}$ times the extension. Fourier transformation in the second holonomy relates this space to

$$\begin{align}
\mathcal H_{\rm hol} =L^2(T\times T,dm_T\,dm_T)^W.
\end{align}$$

On the elementary Fourier basis, the Pontryagin transform is the permutation

$$\begin{align}
e_\lambda\,\delta_\nu\longmapsto e_{-\nu}\,\delta_\lambda.
\end{align}$$

The lattice-pair action of
$\begin{pmatrix}a&b\\c&d\end{pmatrix}$ is
$(\lambda,\nu)\mapsto(a\lambda+b\nu,c\lambda+d\nu)$, yielding

$$\begin{align}
S_0^4=1,\qquad (S_0T_0)^3=S_0^2,\qquad (S_0^2f)(x,\eta)=f(-w_0x,-w_0\eta).
\end{align}$$

In holonomy coordinates, the corresponding map is

$$\begin{align}
\Phi_A(x,y)=(ax+cy,bx+dy).
\end{align}$$

Since $\Phi_A\circ\Phi_B=\Phi_{BA}$, pullback gives a representation with the stated convention.

A first-holonomy regular chart is not pointwise preserved: for example $S$ can map $(x,0)$ to $(0,-x)$. The paper uses the common conull set

$$\begin{align}
\mathcal D =\bigcap_{A\in SL(2,\mathbb Z)} \Phi_A^{-1}(T_{\rm reg}\times T).
\end{align}$$

Each excluded condition is a root-character kernel of measure zero, and the modular group is countable. Therefore $\mathcal D$ is invariant and conull. This establishes an $L^2$ action; it does not resolve singular line objects or replace the finite-level no-escape estimate.

### Sampling Core and Charge-Schwartz Class

The initial core contains functions smooth and compactly supported in the interior of $\mathcal Y$, with finitely many charges. Point evaluation defines $Q_k$ on this core, not on arbitrary $L^2$ equivalence classes. Set $J_k=\sqrt{v_k}Q_k$.

The larger class $\mathscr A$ consists of functions smooth on the closed alcove, with all spatial derivatives rapidly decreasing in charge:

$$\begin{align}
\sup_{\eta\in P}(1+|\eta|)^N
\sup_{x\in\overline{\mathcal Y}}
|\partial_x^\alpha g(x,\eta)|<\infty \quad\text{for every }N,\alpha.
\end{align}$$

Integration by parts in the input position variable gives $S_0f\in\mathscr A$ for a core input. Compact support removes boundary terms. This charge decay is essential: the output need not retain finite charge support.

## §3.1: Kac–Peterson Phases and Local Convergence

The squared Kac–Peterson prefactor is

$$\begin{align}
\alpha_k^2 =\frac1{r_k^\ell|P/Q^\vee|}, \qquad \frac{\alpha_k^2}{v_k}=\gamma_G,
\end{align}$$

using $\operatorname{covol}(P)\operatorname{covol}(Q^\vee)=1$. For input $(y,\omega)$ and output $(x,\eta)$, a pair of Weyl elements $(u,v)$ gives exponent

$$\begin{aligned}
&-2\pi i r_k((u-v)x,y) -\pi i((u+v)x,\omega)\\
&\hspace{1em} -\pi i((u+v)\eta,y) -\frac{\pi i}{2r_k}((u-v)\eta,\omega).
\end{aligned}$$

For $u=v$, the rapidly oscillating term and the last term vanish, leaving precisely the endpoint Fourier kernel. The normalization above converts the Riemann sum to its integral.

For $u\ne v$, the crucial fact on a fixed compact $K\Subset\mathcal Y$ is

$$\begin{align}
\inf_{x\in K} \operatorname{dist}((u-v)x,Q^\vee)>0.
\end{align}$$

Otherwise an affine Weyl transformation would fix an interior alcove point. This is where regularity enters the oscillatory estimate.

For a smooth compactly supported amplitude $b$ and a shifted weight mesh, Poisson summation has the form

$$\begin{aligned}
&\sum_{\mu\in P} e^{-2\pi i(\xi,\mu)} b\!\left(\frac{\mu+\rho+\omega/2}{r_k}\right)\\
&\quad= \frac{r_k^\ell}{\operatorname{covol}(P)}
\sum_{p\in Q^\vee} e^{2\pi i(\xi+p,\rho+\omega/2)} \widehat b\big(r_k(\xi+p)\big).
\end{aligned}$$

Nonresonance and Schwartz decay bound the off-diagonal Weyl contributions by arbitrarily high inverse powers after the prefactors are included. The reciprocal-lattice sum requires a decay exponent greater than $\ell$. The diagonal terms have ordinary Riemann-sum convergence.

Consequently, for compact $K$ and finite output-charge set $E$,

$$\begin{align}
v_k\sum_{(x,\eta)\in\Lambda_k\cap(K\times E)} \left| (S_k^{\rm dbl}Q_kf)(x,\eta) -(Q_kS_0f)(x,\eta) \right|^2\longrightarrow0.
\end{align}$$

This is a local weighted statement. It does not itself bound the output near walls or at arbitrarily large charge.

## §3.2: Global Sampling and the No-Escape Step

For fixed charge, normalized mesh counting converges to flat measure. Uniformly in charge,

$$\begin{align}
v_k\,\#\Lambda_{k,\eta}\le C.
\end{align}$$

The rapid charge decay in $\mathscr A$ then supplies a summable majorant. Thus

$$\begin{align}
\|J_kg\|^2\longrightarrow\|g\|^2, \qquad g\in\mathscr A,
\end{align}$$

including $g=S_0f$. The order is: fixed-charge Riemann convergence, a charge-independent counting bound, then dominated summation.

Let

$$\begin{align}
a_k=S_k^{\rm dbl}J_kf,\qquad b_k=J_kS_0f.
\end{align}$$

Finite and endpoint unitarity give

$$\begin{align}
\|a_k\|^2=\|J_kf\|^2\to\|f\|^2,\qquad \|b_k\|^2\to\|S_0f\|^2=\|f\|^2.
\end{align}$$

Choose a compact window
$\mathcal Y_\delta\times\{|\eta|\le M\}$ after fixing $f$, large enough to retain all but a prescribed small amount of the **continuum** output norm. Local convergence equates the norms inside that window. Subtracting from the convergent total norms gives the same small tail bound for $a_k$. The triangle inequality inside and outside then proves

$$\begin{align}
\|S_k^{\rm dbl}J_kf-J_kS_0f\|\longrightarrow0.
\end{align}$$

The cutoff order is explicit:

1. Fix the input packet and tolerance.
2. Choose $\delta>0$ and $M<\infty$ using the continuum output.
3. Take $k\to\infty$ with that window fixed.
4. Let the tolerated tail tend to zero.

For fixed $M$, the continuum charge tail need not vanish as $k$ increases. The theorem says that no additional norm disappears into a tail absent from the endpoint description.

## §§3.3–3.4: a Common Hilbert Space and Its Independence

### Cell Embedding and Strong Projection Convergence

For each admissible fixed-charge mesh point, intersect a translated lattice cell with the alcove:

$$\begin{align}
C_{k,z}=\mathcal Y\cap(x_z+r_k^{-1}F_P).
\end{align}$$

The cells in a charge fiber are disjoint, have positive volume, and need not cover the entire alcove at finite $k$. Define

$$\begin{align}
I_k\delta_z=|C_{k,z}|^{-1/2}\mathbf1_{C_{k,z}}\delta_{\eta_z}.
\end{align}$$

Then $I_k$ is an isometry, while $I_k^*$ takes normalized cell averages. For a fixed charge, the uncovered volume is bounded by

$$\begin{align}
C\min\left(1,\frac{1+|\eta|}{r_k}\right).
\end{align}$$

Full cells have smooth-function approximation error controlled by their diameter squared, $O(r_k^{-2})$. Truncated boundary cells contribute a weaker $O(r_k^{-1})$ bound using a supremum norm. Summing with charge-Schwartz decay gives

$$\begin{align}
I_k^*g-J_kg\to0,\qquad I_kJ_kg-g\to0, \qquad P_k\to1\ \text{strongly}.
\end{align}$$

The first two statements are initially on $\mathscr A$; the last extends by density and boundedness.

The unitary finite-level representation on the common space is

$$\begin{align}
\rho_k^\#(\gamma) =I_k\rho_k(\gamma)I_k^*+(1-P_k).
\end{align}$$

The complement is assigned the identity. For the $S$ generator, the error splits into sampling, finite-kernel, reconstruction and uncovered-space terms:

$$\begin{aligned}
\|\rho_k^\#(S)f-S_0f\| \le{}& \|I_k^*f-J_kf\|\\
&+\|S_kJ_kf-J_kS_0f\|\\
&+\|I_kJ_kS_0f-S_0f\| +\|(1-P_k)f\|.
\end{aligned}$$

Each term has already been controlled. For $T$, the finite twist is exactly

$$\begin{align}
\frac{(a,a+2\rho)-(b,b+2\rho)}{2r_k} =(\eta,x),
\end{align}$$

so $T_kJ_k=J_kT_0$ on the sampling domain. Density extends strong convergence to every fixed vector. Since the limits and approximants are unitary,

$$\begin{align}
\|(U_k^*-U^*)\psi\| =\|\psi-U_kU^*\psi\|\to0.
\end{align}$$

Finite products then give every fixed modular word. Neither the word length nor the state is allowed to grow with $k$ in this inference.

### Admissible Alternative Embeddings

An alternative isometry $\widetilde I_k$ is admissible if its sampling/reconstruction limits agree on $\mathscr A$:

$$\begin{align}
\widetilde I_k^*g-J_kg\to0,\qquad \widetilde I_kJ_kg-g\to0.
\end{align}$$

Then $W_k=\widetilde I_kI_k^*$ and its adjoint tend strongly to the identity; the range projections do as well. Conjugation transfers the same limiting representation, with the complementary identity terms included.

For cell constructions, sufficient conditions are shrinking diameters and anchor errors, vanishing uncovered volume, and

$$\begin{align}
\sum_z\big(\sqrt{|C_{k,z}|}-\sqrt{v_k}\big)^2\to0
\end{align}$$

on each fixed finite charge set. Arbitrary label-dependent phases need not be admissible. If a phase choice converges to a nontrivial multiplication operator, the endpoint is conjugated by that operator rather than literally unchanged.

The immediate observable consequence is convergence of bounded-operator matrix elements. For a **fixed positive trace-class regulator** $R$, one also obtains convergence of $\operatorname{Tr}(R^{1/2}\rho_k^\#(\gamma)R^{1/2})$. Removing $R$ requires an independent uniform estimate. The identity is not trace class on $\mathcal H_0$.

## Equation and Proof-Dependency Ledger

| Claim | Inputs that actually establish it | Scope left outside |
|---|---|---|
| Classical BF contraction | Relative CS transgression, common bundle, $A_\pm=A\pm B/(2k)$ | Quantum measure and compact-double identification |
| Regular finite-label mesh | Integrable weights, $\rho$ shift, fixed $\eta=a-b$ | Fixed finite weights and singular stabilizers |
| Endpoint unitary representation | Fourier basis permutation and simultaneous Weyl invariance | Singular line category |
| Local $S$ kernel | Kac–Peterson prefactor, diagonal Weyl terms, Poisson nonresonance | Global tails |
| Global sampling | Fiber counting bound and charge-Schwartz decay | Arbitrary pointwise sampling of $L^2$ functions |
| No escape | Local convergence plus both endpoint norm identities | Uniform control over $k$-dependent states |
| Strong-* theorem | Cell approximation, no escape, exact twist, density | Operator-norm convergence, growing words |
| Embedding independence | Explicit admissibility on the sampling core | Arbitrary phases or arbitrary geometric embeddings |
| Regulated traces | Fixed positive trace-class $R$ | Unregulated torus partition function |
| Boundary CFT candidate | Central charge, local action, currents and wavefunction checks | Full boundary OPE/correlators and singular-holonomy measure |
| Interface obstruction | Positivity and modular intertwining plus charge preservation | Absence of all gapped interfaces |
| Runkel–Watts proposal | Selected coset weights and a limiting prescription | A constructed doubled-bulk interface and correlation-function limit |

## §4.1: Abelian Boundary Wavefunctions and Global Lattices

### Chiral CS Polarization

On a torus, take $z=\sigma_1+\tau\sigma_2$, $d^2z=(i/2)dz\wedge d\bar z$ and $\int d^2z=\tau_2$. In this section the Abelian action is written $ik(4\pi)^{-1}\int A\,dA$. The boundary counterterm $-k(2\pi)^{-1}\int A_zA_{\bar z}$ fixes $A_{\bar z}$, with $A_{\bar z}=i\pi\xi/\tau_2$.

After extracting a Gaussian,

$$\begin{align}
f(\xi)=e^{-k\pi\xi^2/(2\tau_2)}\Psi(\xi),
\end{align}$$

large-gauge transition functions imply

$$\begin{align}
f(\xi+1)=f(\xi),\qquad f(\xi+\tau)=e^{-2\pi ik\xi-i\pi k\tau}f(\xi).
\end{align}$$

The Fourier recursion leaves $k$ independent solutions. With $u=\sqrt{k}\xi$,

$$\begin{align}
\Psi_j(u) =\frac1{\eta_{\rm D}(\tau)}
\sum_{n\in\mathbb Z} \exp\left( i\pi\tau p^2+2\pi ipu+\frac{\pi u^2}{2\tau_2} \right), \quad p=\sqrt{k}\left(n+\frac jk\right).
\end{align}$$

These are prequantum transition laws; a boundary large gauge transformation need not extend over a chosen bulk filling.

### Compact/noncompact BF Polarization

Let $a$ be compact and $b$ noncompact, with symmetrized action

$$\begin{align}
S_{\rm BF}=\frac i{4\pi}\int(b\,da+a\,db).
\end{align}$$

The boundary polarization uses $A_\pm=(a/r\pm rb)/\sqrt2$ and independent coordinates

$$\begin{align}
\xi=\frac{u/r+rv}{\sqrt2},\qquad \bar\xi=\frac{\bar u/r-r\bar v}{\sqrt2}.
\end{align}$$

The symbol $\bar\xi$ is not generally the complex conjugate of $\xi$. The large-$a$ lattice enforces $p_L-p_R=\sqrt2rN$ and simultaneous momentum shifts $1/(\sqrt2r)$. The solutions are

$$\begin{aligned}
\Psi_{\phi,N} &=\frac{\mathcal G}{|\eta_{\rm D}|^2}
\sum_{l\in\mathbb Z} \exp\left[ i\pi\tau p_L^2-i\pi\bar\tau p_R^2 +2\pi i(p_L\xi-p_R\bar\xi) \right],\\
p_{L,R} &=\frac1{\sqrt2} \left(\frac{l+\phi}{r}\pm rN\right),\qquad \mathcal G=e^{\pi(\xi^2+\bar\xi^2)/(2\tau_2)}.
\end{aligned}$$

Here $\phi\in[0,1)$, $N\in\mathbb Z$. Bulk electric charge occupies the winding slot of this boundary momentum convention. With $p_{L,R}=2^{-1/2}(n/R\pm wR)$ and $h=p_L^2/2$, the condensation

$$\begin{align}
L_1=\bigoplus_N W_{0,N}
\end{align}$$

gives a compact boson of radius $r$ at vanishing translation background. The auxiliary variable $R=r/\sqrt2$ used in one rewriting of the source is not a new physical radius convention.

The other condensation,

$$\begin{align}
L_2=\int_0^1d\phi\,W_{\phi,0},
\end{align}$$

unfolds $l+\phi$ to the real line. After the prescribed local source counterterm, its zero-mode density contains

$$\begin{align}
\frac{r}{\sqrt{\tau_2}|\eta_{\rm D}|^2}
\end{align}$$

and the appropriate Gaussian background factor. This is a partition-function density with infinite zero-mode volume divided out, not an ordinary finite trace.

### Doubled $U(1)$ and the Factor of Two

For even $k$ in the bosonic non-spin setup, define

$$\begin{align}
\mu=\frac{1/(2r)+kr}{\sqrt2},\qquad \nu=\frac{1/(2r)-kr}{\sqrt2},\qquad \mu^2-\nu^2=k.
\end{align}$$

Writing $j_\pm=kn_\pm+\lambda_\pm$, the doubled momenta are

$$\begin{align}
p_{L,R} =\frac1{\sqrt2} \left(\frac{j_++j_-}{2kr}\pm r(j_+-j_-)\right).
\end{align}$$

The diagonal condensation $\bigoplus_\lambda W_{\lambda,\lambda}$ has integer variables

$$\begin{align}
m=\frac{k}{2}(n_++n_-)+\lambda,\qquad w=n_+-n_-,
\end{align}$$

and gives radius $kr$. Its decompactification obeys a density limit $k^{-1}Z_{\rm diag}\to Z_{L_2}$.

The charge-conjugate condensation instead gives radius $2r$. A convenient integer parametrization is

$$\begin{align}
m=n_++n_-+1,\qquad w=\frac{k}{2}(n_+-n_--1)+\lambda.
\end{align}$$

Its limiting BF sum is

$$\begin{align}
\bigoplus_{w\in\mathbb Z} \left(W_{0,2w}\oplus W_{1/2,2w}\right),
\end{align}$$

not $L_1$. The factor of two is a global lattice statement. Matching a local quadratic action does not determine the condensed line lattice or the compactification radius.

## §4.2: What Supports the Non-Abelian Boundary Candidate

The proposed nonchiral boundary theory is a free noncompact adjoint scalar $X\in\mathfrak g$, with positive kinetic form $-\operatorname{tr}$ and $(c_L,c_R)=(\dim G,\dim G)$. Four checks motivate it.

First,

$$\begin{align}
c_k=\frac{k\dim G}{k+h^\vee}\longrightarrow\dim G.
\end{align}$$

Second, the local WZW expansion $g=e^{X/\sqrt{k}}$ gives

$$\begin{align}
g^{-1}dg =\frac{dX}{\sqrt{k}} -\frac{[X,dX]}{2k} +\frac{[X,[X,dX]]}{6k^{3/2}}+\cdots.
\end{align}$$

The trace removes the kinetic cubic term, the Wess–Zumino cubic term is $O(k^{-1/2})$, and curvature interactions start at $O(k^{-1})$. This is a local field expansion at scale $k^{-1/2}$, different from the bulk contraction scale $k^{-1}$.

Third, the adjoint rotations and translations act with faithful group $(G/Z(G))\ltimes\mathfrak g$; the free kinetic theory has the larger Euclidean isometry group. The center is invisible to adjoint oscillator fields, which matters later for global gauging.

Fourth, fold the right current by $\widetilde J_m=\bar J_{-m}$, reversing its central term, and set

$$\begin{align}
\mathcal J=J+\widetilde J,\qquad \mathcal P=\frac{J-\widetilde J}{2k}.
\end{align}$$

The brackets have the pattern

$$\begin{align}
[\mathcal J,\mathcal J]\sim if\,\mathcal J,\qquad [\mathcal J,\mathcal P]\sim if\,\mathcal P+m\delta,\qquad [\mathcal P,\mathcal P]\sim\frac{if}{4k^2}\mathcal J.
\end{align}$$

The limiting mixed central pairing is realized by the free-scalar currents

$$\begin{align}
J_a=f_{ab}{}^cX^b\Pi_c-\operatorname{tr}(t_at_b)X'^b, \qquad P_a=\Pi_a.
\end{align}$$

The derivative-delta terms must be combined by integration by parts; the smeared algebra gives one improvement contribution in the $JJ$ bracket, not an extra copy.

A chiral WZW theory for the split cotangent group has central charge $2\dim G$ and an indefinite invariant form. It represents another boundary condition and should not be identified with this nonchiral positive-metric scalar theory solely from the contracted current algebra.

For the CPS comparison, §4.2 temporarily uses $S=-\int\operatorname{tr}(BF)$ without the earlier $1/(2\pi)$. Its symplectic form is written

$$\begin{align}
\Omega=-\int_\Sigma\epsilon^{ij} \operatorname{tr}(\delta B_i\wedge\delta A_j).
\end{align}$$

Restoring the action normalization restores the same overall factor in $\Omega$. On a smooth closed-surface regular locus, the reduced phase space is locally $T^*\mathcal M_{\rm flat}$. With boundaries, the allowed gauge transformations and boundary conditions determine which edge variables remain.

An edge copy of $T^*G$ has canonical one-form $\langle p,g^{-1}dg\rangle$ and quantization $L^2(G)$, with Peter–Weyl decomposition. This is not by itself the fully reduced annulus phase space. Likewise, the crossed product $D(G)$ is not automatically the Gauss-invariant algebra of a region or the full algebra of a punctured surface.

## §4.3: Non-Abelian Theta Ansatz and Its Missing Determinant Input

### Regular Cartan Reduction

This subsection changes to Hermitian gauge fields, $F=da+i\,a^2$. On a regular commuting pair in a trivial boundary bundle, non-Cartan local systems are acyclic and the BF shift removes the corresponding $b$ modes. Cartan zero modes remain, with simultaneous Weyl quotient and large-$a$ shifts by the coroot lattice.

The theta sum has momenta

$$\begin{align}
p_{L,R} =\frac1{\sqrt2} \left(\frac{\mu+\phi}{r}\pm r\eta^\sharp\right), \qquad \mu\in Q^\vee,\quad \phi\in\mathfrak t/Q^\vee,\quad \eta\in P.
\end{align}$$

The regular flux representative can be chosen in $\mathcal Y$. The proposed wavefunction is

$$\begin{align}
\Psi_{[\phi,\eta]} =\frac{\mathcal G} {\mathcal C(u\mid\tau)|\eta_{\rm D}(\tau)|^{2\ell}}
\sum_{w\in W}\Theta_{w\phi,w\eta}.
\end{align}$$

The theta transformation under $T$ gives $e^{2\pi i(\phi,\eta)}$. Poisson summation under $S$ gives the same flux–charge Fourier structure as the bulk, together with powers of $|\tau|$ and Gaussian terms canceled by the displayed prefactors.

The proposed root determinant is

$$\begin{align}
\mathcal C(u\mid\tau) =e^{-2\pi h^\vee(\operatorname{Im}u,\operatorname{Im}u)/\tau_2}
\prod_{\alpha>0} \left| \frac{i\vartheta_1((\alpha,u)\mid\tau)} {\eta_{\rm D}(\tau)} \right|^2.
\end{align}$$

The identity $\sum_{\alpha>0}\alpha\otimes\alpha=h^\vee(\ ,\ )$ supplies the Gaussian modular cancellation. These constraints show consistency, not uniqueness or a derivation of the full path-integral determinant.

Rotation and translation backgrounds are different combinations:

$$\begin{align}
\frac{\xi+\bar\xi^*}{2}=\frac{u}{\sqrt2r}, \qquad \frac{\xi-\bar\xi^*}{2}=\frac{rv}{\sqrt2}.
\end{align}$$

The local scalar translation arises from left/right rotation differences of order $k^{-1/2}$.

### Root-Plane Zero Modes and a Regulated Limit

At vanishing root twist, $\vartheta_1(z\mid\tau)\sim2\pi\eta_{\rm D}^3z$. The zero of $\mathcal C$ represents a noncompact root-plane zero mode. Its normalization can be checked using the two-dimensional heat kernel

$$\begin{align}
K_s(x,y)=\frac1{4\pi s}
e^{-|x-y|^2/(4s)},\qquad s=2\pi\tau_2.
\end{align}$$

For rotation angle $\theta\ne0$, let
$a_\theta=|1-e^{i\theta}|^2$. With a disk cutoff $|x|\le L$,

$$\begin{align}
\int_{|x|\le L}d^2x\,K_s(x,e^{i\theta}x) =\frac{1-e^{-a_\theta L^2/(4s)}}{a_\theta}.
\end{align}$$

Taking $L\to\infty$ first gives $a_\theta^{-1}$. Taking $\theta\to0$ at fixed $L$ gives $\operatorname{Vol}(D_L)/(4\pi s)$. The two limits expose the nonuniformity explicitly.

The corresponding zero-twist prescription for each positive root is

$$\begin{align}
\mathcal C_{\rm reg}(0) =\prod_{\alpha>0} \frac{8\pi^2|\eta_{\rm D}|^4\tau_2} {\operatorname{Vol}(\mathbb C_\alpha)}.
\end{align}$$

Flux condensation and Gaussian unfolding then give a free-boson expression of the form

$$\begin{align}
Z= \prod_{\alpha>0} \frac{\operatorname{Vol}(\mathbb C_\alpha)} {8\pi^2|\eta_{\rm D}|^4\tau_2} \left[\frac r{|\eta_{\rm D}|^2\sqrt{\tau_2}}\right]^\ell e^{-\pi r^2|v|^2/\tau_2}.
\end{align}$$

All root-plane volumes remain explicit. This does not define a finite partition function without a volume prescription.

### Doubled Classical Theta Sums

For the doubled lattice, write $j_\pm=km_\pm+\lambda_\pm^\sharp$, $w=m_+-m_-$ and $\mu=m_-$. The classical momenta become

$$\begin{align}
p_{L,R} =\frac1{\sqrt2} \left( \frac{\mu+w/2+\phi}{r} \pm r(kw+\eta^\sharp) \right).
\end{align}$$

At fixed $r>0$, $\tau_2>0$, flux and charge, the $w\ne0$ terms are Gaussian suppressed as $k\to\infty$, leaving the BF theta sum. The source's raised-weight notation should not be confused with a dual lattice named $P^\vee$.

This calculation matches the **classical theta sector**. Matching the full oscillator/one-loop factor is additional input. Also, these classical variables use $k$, whereas the modular theorem uses $k+h^\vee$ and the $\rho$ shift. Their leading limits can agree without their finite-level formulas being identical.

## §4.4: Flat Gauging, Spectrum and Singular-Holonomy Divergences

Flat gauging means enforcing zero curvature with a Lagrange multiplier; omitting a Yang–Mills term alone does not specify it. For simply connected $G$ on the trivial torus bundle, commuting holonomies can be put in a Cartan. On the regular locus, the Jacobian from the commuting constraint cancels the Haar Weyl density, leading formally to

$$\begin{align}
\frac{\mathcal N}{|W|\operatorname{covol}(Q^\vee)}
\int du_1\,du_2\,Z_{\mathfrak g}(u_1,u_2).
\end{align}$$

One integral implements a normalized temporal projection; the other has a continuum normalization $\mathcal N$ requiring a prescription.

For a positive root, let $s=(\alpha,u_1)\in(0,1)$ and $t=(\alpha,u_2)$. Its complex-boson factor is

$$\begin{align}
e^{2\pi\tau_2s^2} \left|\frac{\eta_{\rm D}(\tau)}
{\vartheta_1(t+s\tau\mid\tau)}\right|^2.
\end{align}$$

Equivalently, with $q=e^{2\pi i\tau}$,

$$\begin{aligned}
&(q\bar q)^{s(1-s)/2-1/12}\\
&\quad\times \prod_{n\ge0}|1-q^{n+s}e^{2\pi it}|^{-2}
\prod_{n\ge1}|1-q^{n-s}e^{-2\pi it}|^{-2}.
\end{aligned}$$

Multiplying roots and Cartan modes gives

$$\begin{align}
Z_{\mathfrak g}(u_1,u_2) = \left[\frac r{|\eta_{\rm D}|^2\sqrt{\tau_2}}\right]^\ell \frac1{\mathcal C(u_2+\tau u_1\mid\tau)}.
\end{align}$$

Near a root zero $z=t+s\tau=0$, the integrand behaves as
$1/(4\pi^2|\eta_{\rm D}|^4|z|^2)$. The two-holonomy integral already has a logarithmic divergence for $SU(2)$; intersecting root divisors can be worse. Removing the singular set itself, which has zero measure, does not make its neighborhood integrable. A spatial-only cutoff also fails to respect modular exchange of the two holonomies. A modularly compatible regulator and its removal remain necessary.

Temporal projection imposes total Cartan weight zero. It gives integer spin through $h-\bar h\equiv\lambda(\phi)\pmod1$; it does not force every state to have zero spin. Low towers include excitations at $s$, $1-s$, and integer levels, with further multi-root combinations constrained by weight neutrality.

The invariant Heisenberg subalgebra has no adjoint-invariant spin-one generator for simple $G$ and contains Casimir fields of spins $e_i+1$. The total central charge is $\dim G$. The twisted ground contribution is

$$\begin{align}
h_{\rm tw}(\phi) =\frac12\sum_{\alpha>0}s_\alpha(1-s_\alpha) =(\rho,\phi)-\frac{h^\vee}{2}(\phi,\phi).
\end{align}$$

Its maximum occurs at $\phi_*=\rho^\sharp/h^\vee$ and is $\dim G/24$ by the strange formula. Including Cartan momentum,

$$\begin{align}
h=\bar h=h_{\rm tw}+\frac12(p,p).
\end{align}$$

For $SU(2)$ this is a $c=3$ candidate with $h_{\rm tw}=s(1-s)/2\le1/8$. It is distinct from the $c=1$ Runkel–Watts candidate in the interface section.

Adjoint oscillator charges lie in $Q\subset P$, so they do not see the center quotient $P/Q$. Gauging $G$ and gauging $G/Z(G)$ can still differ through allowed bundles, discrete data and decomposition. Wilson operators acting by $\chi_R(g_\phi)$ identify a useful commuting family, but do not establish superselection sectors for the full boundary observable algebra.

## §5: Adjacent Levels and What “Near Identity” Requires

Consider a finite chain of doubled theories $\mathcal T_k=G_k\times G_{-k}$ with levels $K,\ldots,K+n$, where $n$ is fixed before $K\to\infty$. At an interface, let incoming and outgoing labels have flux–charge coordinates $(y,\omega)$ and $(x,\eta)$.

The added refinement condition says that, for every fixed conformal-weight cutoff $\Delta_0$, there is $C_{\Delta_0}$ independent of $k$ such that a nonzero junction sector below the cutoff obeys

$$\begin{align}
\eta=\omega,\qquad |x-y|\le\frac{C_{\Delta_0}}{r_k}.
\end{align}$$

This is an identity-transport criterion for the proposed BF limit. It is not a universal consistency condition for every interface.

### §5.2: the $SU(2)$ Gapped Obstruction

A gapped interface is constrained by a nonnegative integer matrix $W$ satisfying

$$\begin{align}
S_{k+1}W=WS_k,\qquad \theta_IW_{IJ}=W_{IJ}\theta_J.
\end{align}$$

The proposition actually uses only nonnegative real entries. For $SU(2)$, every nonzero such $W$ either changes the charge or has a charge-preserving entry with displacement at least

$$\begin{align}
|t_{\rm out}-t_{\rm in}| \ge\frac12-\frac1{k+3}.
\end{align}$$

Here $x=t\omega$, so the invariant metric displacement has the additional factor $|\omega|=1/\sqrt2$.

The proof can be reconstructed in three steps. Put $p=k+2$. If charge is preserved, the incoming doubled label $J_*=(1,0)$ can couple only to an outgoing label $(q+1,q)$. Twist matching would require

$$\begin{align}
\frac{2q+3}{4(p+1)} \equiv\frac3{4p}\pmod1.
\end{align}$$

Both sides lie between $0$ and $1/2$, so this is equality, yielding $2pq=3$, impossible for integer $p\ge3$. Thus that entire column vanishes.

Next, positivity of vacuum $S$ entries and $S$ intertwining imply that the vacuum output row of a nonzero nonnegative $W$ cannot vanish. Charge preservation restricts this row to incoming diagonal labels. Write $u_a=W_{\rm vac,(a,a)}\ge0$. The vanished column and intertwining give

$$\begin{align}
0=\frac2p\sum_a u_a \sin\frac{2\pi(a+1)}p \sin\frac{\pi(a+1)}p.
\end{align}$$

The second sine is positive. Therefore at least one nonzero $u_a$ has $a+1\ge p/2$. Its incoming flux is $(a+1)/p\ge1/2$, whereas the outgoing vacuum flux is $1/(p+1)$. This proves the displacement bound.

Consequently the required zero-weight constant would satisfy

$$\begin{align}
C_0\ge p\left(\frac12-\frac1{p+1}\right)\to\infty.
\end{align}$$

This excludes charge-preserving gapped interfaces with uniform near-identity transport. It does not exclude gapped interfaces in general. Doubled theories are Witt trivial; composing gapped boundaries back-to-back gives reflecting interfaces, represented schematically by $W=uv^T$, which need not transport nearby fluxes.

### Gapless Cosets and the Additional Coupling Problem

The candidate chiral coset for a jump by fixed integer $r$ is

$$\begin{align}
\mathcal V_k^{(r)} =\frac{SU(2)_k\times SU(2)_r}{SU(2)_{k+r}},
\end{align}$$

with

$$\begin{align}
c_k^{(r)} =\frac{3k}{k+2}+\frac{3r}{r+2} -\frac{3(k+r)}{k+r+2} \longrightarrow\frac{3r}{r+2}.
\end{align}$$

For $r=1$, this is the unitary minimal-model sequence $M(p,p+1)$ with $c=1-6/[p(p+1)]$. Its branching is

$$\begin{align}
L_k(a)\otimes L_1(s) =\bigoplus_{\substack{b\\
a+s+b\ {\rm even}}} B_{a,s}^{\,b}\otimes L_{k+1}(b),
\end{align}$$

with the usual field identification.

The extra level-$r$ sector cancels the folded chiral anomaly. This identifies a consistent chiral ingredient. It does not yet construct the left/right selection, all junction spaces, or the coupling to both doubled bulk theories. Additional boundary sectors and selection rules are physical data.

### §5.3: Finite-Weight Channels and the Runkel–Watts Proposal

For a unit jump, select a common integer displacement

$$\begin{align}
b_\pm=a_\pm+\delta,\qquad s_\pm=\delta\pmod2.
\end{align}$$

This preserves the doubled charge $\eta=a_+-a_-$. In scalar $SU(2)$ flux coordinates,

$$\begin{align}
x-y=\frac{\delta-y}{p+1}, \qquad |x-y|\le\frac{|\delta|+1}{p+1}.
\end{align}$$

The coset weights are

$$\begin{align}
h_\pm= \frac{(a_\pm+1-p\delta)^2-1}{4p(p+1)}, \qquad a_\pm+1=py\pm\frac{\eta}{2}.
\end{align}$$

Adding and subtracting yields the exact identities

$$\begin{align}
\Delta=h_++h_- =\frac{p(p+1)}2(x-y)^2 +\frac{\eta^2/4-1}{2p(p+1)},
\end{align}$$

$$\begin{align}
h_+-h_-=-\frac{\eta}{2}(x-y).
\end{align}$$

At fixed charge, bounded $\Delta$ is equivalent to bounded
$p|x-y|$. A macroscopic flux jump costs conformal weight of order $k^2$. On a circle of length $L$,
$L(E-E_{\rm vac})/(2\pi)=\Delta$.
These formulas show that the selected channels have the desired finite-weight refinement. The full coset contains other channels; the bulk coupling that removes unwanted charge-changing channels has not been constructed here.

For neutral diagonal sequences with $y\to t\in(0,1)$ and fixed $\delta$,

$$\begin{align}
h=\bar h\longrightarrow\frac{(t-\delta)^2}{4}.
\end{align}$$

Writing $\mathsf x=|t-\delta|$ produces the positive real continuum away from positive integers, modulo field identification. Fixed finite weights approach the walls and define a different limiting prescription. At fixed nonzero charge, the two limiting weights coincide and the spin tends to zero, but the corresponding line-attached junction sector still needs a physical construction.

The proposed neutral diagonal limit is Runkel–Watts after an averaging and normalization prescription. Matching limiting weights is not a proof of matching OPE coefficients or correlators. Alternative minimal-model degenerations show why the limiting prescription is part of the definition.

For fixed finite $n$, the paper conjectures a chain of BF regions separated by these interfaces. It does not establish a limit with the number of interfaces growing, nor interchange interface fusion with $k\to\infty$.

## §6: Extensions and Limits of the Result

The missing genus-zero data are concrete: a four-punctured-sphere fusion operator, direct-integral normalization, and pentagon/hexagon identities compatible with singular stabilizers. Genus-one $S,T$ convergence alone does not determine them.

The boundary problem requires a complete determinant and measure derivation, a regulator for singular commuting holonomies, and treatment of center-sensitive global sectors. The interface problem requires the actual doubled-bulk coupling, selected junction sectors, and a correlation-function limit.

For non-simply connected global forms, almost-commuting holonomies and nontrivial bundles add sectors absent from the simply connected calculation. A residual level mismatch $(k+m,-k)$ with fixed $m$ leaves BF plus a level-$m$ CS term, changing the endpoint.

The three-dimensional gravity analogy has a cosmological term of order $k^{-2}$, but a state-sum limit would additionally require controlled quantum-$6j$ asymptotics and singular flat-connection contributions. No uniform lattice gap theorem or full state-sum convergence follows from this paper's regular modular theorem.

## Translation to action/CPS-first Regional Questions

The paper provides a useful sequence of distinct constructions:

$$\begin{align}
\text{action and boundary term} \to \text{boundary polarization} \to \text{edge variables and gauge quotient} \to \text{line/packet Hilbert spaces} \to \text{sewing data}.
\end{align}$$

Each arrow needs its own input. The CS transgression identifies a BF action and a boundary pairing. It does not choose which boundary gauge transformations are quotiented. An edge $T^*G$ and its $L^2(G)$ quantization do not identify the complete regional observable algebra. A regular packet limit does not supply the singular tensor unit needed in a full gluing theory.

The strongest reusable analytic step is the no-escape argument. For a proposed regional limit, first identify the target Hilbert norm and prove its evolution or sewing operator is unitary; then local kernel convergence can be promoted to global packet convergence through norm exhaustion. If the target norm is only guessed, the argument becomes circular.

The Abelian factor-of-two example is a concrete warning about global data: two condensations can share local free-field dynamics yet differ in the line lattice and radius. Thus agreement of local symplectic forms is weaker than agreement of state-sewing prescriptions.

The interface calculation offers a quantitative repair when exact gapped identity transport fails. Keeping gapless junction modes allows the energy cost to resolve a microscopic flux displacement through $\Delta\sim k^2(x-y)^2/2$. The obstruction concerns a particular uniform transport requirement; it does not make interface gluing itself impossible.

For comparison with cutoff-sensitive thermal work, the analogy is methodological only. Strong convergence on fixed packets and convergence of fixed-regulator traces do not justify removing a heat-kernel, volume or spectral cutoff. The root-plane disk calculation shows an explicit noncommuting limit in the same paper.

## Independent Verification and Evidence Boundaries

**Verified:** the following checks were carried out after reconstructing the full source chain. Exact zero residuals mean the stated finite symbolic identity was reproduced; finite numerical tests are labeled separately.

| Check | Method and result | What it does not establish |
|---|---|---|
| Root normalization | Sage exact arithmetic for $A_1,A_2,B_2,C_3,G_2,F_4$: integral coroot Gram matrices, indices $|P/Q^\vee|=2,3,4,8,3,4$, positive-root quadratic identity, strange formula and $(\vartheta,\rho)=h^\vee-1$ all passed | An all-rank proof from a finite family |
| CS transgression | xAct-hosted explicit $SU(2)$ differential-form component calculation with arbitrary fields and first derivatives, including the boundary total derivative: residual zero | Global bundle/lift classification or the quantum measure |
| Kac–Peterson phase | Mathematica expansion in independent flux/charge pairings: residual zero; $\rho$-shifted twist identity zero | Poisson estimates or uniformity by symbolic algebra alone |
| $SU(2)$ kernel | Exact sine-product identity and $SL(2,\mathbb Z)$ generator relations checked | Full singular-sector modular data |
| Higher-rank finite $S$ matrices | Sage $A_2,B_2,G_2$ at $k=1,2,3$: maximum unitarity error below $9\times10^{-16}$ | A proof for all levels or all groups |
| Smooth packet | Full finite doubled $SU(2)$ output at five levels, using the measure $dt/\sqrt2$ and all finite labels; errors listed below | A convergence rate or a replacement for the theorem |
| Abelian polarization | Mathematica $\mu^2-\nu^2=k$, BF charge relation, Gaussian recursion/integral: residuals zero | A choice of physical condensation |
| Abelian condensation lattices | Sage inverse integer maps for even $k=2,4,6,10$ and 625 target pairs per case; all passed | Odd-level/spin theories |
| Free-current algebra | Smeared classical $SU(2)$ Poisson algebra with periodic integration by parts: residuals zero, mixed central matrix reproduced | Quantum normal-ordering/OPE closure of the full boundary theory |
| Root-plane regulator | Finite-disk heat trace integrated exactly; both displayed limit orders reproduced | A regulator for intersecting root divisors |
| Boundary modular checks | $SU(2)$ determinant under $S,T$ and the twisted oscillator block checked at 40-digit precision; relative errors of order $10^{-38}$ | Uniqueness or a path-integral derivation of the determinant |
| Gapped charge-one obstruction | Exact rational twist search for $k=1,\ldots,100$: no charge-preserving match; analytic $2pq=3$ proof reconstructed above | A classification of all gapped interfaces |
| Interface weights | Mathematica exact $\Delta$, spin, $c\to1$ and Runkel–Watts weight limits: residuals zero | Interface existence or correlation functions |

The numerical packet used

$$
f(t,n)=\mathcal N\,
b(t)\big(\delta_{n,1}+0.4i\,\delta_{n,-2}\big),
\quad
b(t)=
\begin{cases}
\exp\!\left[-\dfrac1{1-((t-0.43)/0.23)^2}\right],
&0.20<t<0.66,\\
0,&\text{otherwise},
\end{cases}
$$

with continuum norm one. The continuum integral used 1200-point Gauss–Legendre quadrature. The finite calculation applied $S J_kf S^T$ over the entire $(k+1)^2$ doubled label set. The local window was $0.2\le t\le0.8$, $|n|\le5$.

| $k$ | Global $\|S_kJ_kf-J_kS_0f\|$ | Error restricted to the fixed window |
|---:|---:|---:|
| 16 | 0.245469 | 0.0548287 |
| 32 | 0.178626 | 0.0152849 |
| 64 | 0.128079 | 0.00173054 |
| 128 | 0.0912567 | 0.000183330 |
| 256 | 0.0647775 | 0.00000756138 |

The global error is appreciably larger than the local error, as expected when output tails matter. At $k=256$, the output charge-tail norms for cutoffs $8,16,32,64$ were approximately $0.08733,0.01834,0.003668,0.0003144$. These are finite-cutoff observations; a fixed charge cutoff is not supposed to contain the entire continuum output.

**Assumptions:** the theorem uses compact connected simple simply connected $G$, fixed modular word, fixed $L^2$ vector, flat alcove measure, the specified admissible embeddings, and regular interior core packets before density extension. Boundary tests additionally use fixed $\tau_2>0$, fixed positive $r$, regular commuting holonomies/trivial bundle where stated, and even Abelian level for the bosonic lattice examples. Interface estimates use fixed charge and a fixed finite conformal-weight cutoff.

**Not verified:** full non-Abelian boundary path integrals and determinants; singular line sectors; four-punctured-sphere kernels and categorical sewing; removal of volume/holonomy/trace regulators; the selected doubled-bulk coset coupling; Runkel–Watts OPE/correlation-function convergence; growing interface chains; global quotient-group sectors; gravity state-sum limits.

**Source-derived proof status:** the analytic no-escape and embedding proof has been reconstructed step by step, with finite and algebraic ingredients independently checked. A finite computation is not being presented as independent certification of an infinite-dimensional theorem.

**Failed / Blocked:** no irreparable source contradiction or access blocker was found. Initial test-harness problems were corrected before interpreting results: an overloaded symbolic array head in the component transgression; an $A_2$ ambient-weight vector not projected to the traceless root span; and an unevaluated theta-function name. Corrected residuals/finite matrices are those reported above. These were verification-code errors, not failures of the paper.

## Source and Completion Audit

The official 85-page PDF and complete TeX source were retrieved outside the vault. All main sections and Appendix A were inspected. PDF pages 25, 26, 33, 48, 62, 66, 69 and 78 were rendered for formula and layout comparison; extraction alone was not used as evidence for those displayed formulas. Computational inputs and outputs were retained with the temporary source materials.

This master note contains the section tree, notation map, theorem proof chain, boundary and interface reconstructions, regulator orders, local CPS translation and verification boundaries. It is a completed deep reading of the selected paper, with the paper's unresolved boundary, singular-sector and sewing questions retained as unresolved.
