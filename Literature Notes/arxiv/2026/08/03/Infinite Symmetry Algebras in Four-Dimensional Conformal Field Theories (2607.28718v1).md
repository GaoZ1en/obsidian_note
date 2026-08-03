---
paper id: 2607.28718v1
title: Infinite Symmetry Algebras in Four-Dimensional Conformal Field Theories
authors:
  - Elizabeth Himwich
  - Monica Pate
publication date: 2026-07-30T18:00
abstract: |-
  Four-dimensional CFT stress tensors and conserved currents are organized into all-order towers of Lorentz-primary light-ray operators at null infinity. Their local commutators contain universal leading terms plus controlled high-derivative contacts; celestial wedge smearing projects out the latter and yields a loop w-infinity algebra, a current S algebra, and the corresponding mixed module. Scalar-state event shapes reproduce universal soft-factor descendants through the levels explicitly checked in the paper.
comments: "62 pages + appendices"
url: https://arxiv.org/abs/2607.28718v1
summary: "A monograph-level reconstruction of the 4d CFT light-ray realization of celestial w-infinity, including its assumptions, wedge projection, current module, and soft-factor boundary."
tags: []
---

Back to [[2026_08_03_overview]].

# Claim tier

The paper establishes three different tiers that should not be conflated.

1. From null-infinity falloffs, conservation, and Lorentz representation theory, it constructs all-order maximal-spin light-ray primaries $\mathcal W_m$ from the stress tensor and $\mathcal S_m$ from a conserved spin-one current.
2. With additional same-lightsheet OPE, convergence, and spectrum assumptions, it constrains the local commutators to a universal low-derivative term plus higher holomorphic-derivative contact terms.
3. Conditional on the same-lightsheet/OPE reduction, omission of the identity sector, a compatible mode lattice, and vanishing smearing boundary terms, polynomial celestial smearing projects out the higher-derivative terms and yields the exact wedge-mode loop algebra within that domain.

This is not a construction of full gravitational or gauge asymptotic charges. The light-ray operators are detector densities in an ordinary four-dimensional CFT. Some low levels coincide with hard pieces of soft charges, but the paper does not supply the radiative soft pieces, gravitational constraints, conservation between $\mathscr J^-$ and $\mathscr J^+$, or a CPS derivation of Hamiltonian generators. The strongest reusable result is therefore an interacting-CFT realization of the same wedge algebraic structure, with a precise dictionary and a precise list of missing gravitational ingredients.

# How to read this long paper

- **Essential path:** Sections 2, 3.1--3.4, 4.1--4.5, Appendix A.1, Appendix C, and Appendix D.1. This gives the detector geometry, stress-tensor primary classification, local commutator theorem, and wedge algebra.
- **Parallel current path:** Section 5, Appendix A.2, Appendix D.2, and Appendix E. This constructs the $S$ tower and its mixed action under the stress algebra.
- **Observable path:** Section 6. It computes scalar-state event shapes and compares them with universal soft-factor descendants. Its compact formulas are explicitly checked only through $m=4$ before being extrapolated.
- **Boundary-of-validity path:** Appendix B and Section 7. Appendix B exposes the formal inverse-derivative prescription; the free scalar shows how light operators correct the local algebra outside the wedge.
- **Optional orientation:** Section 1 and Section 8 state the program and open directions, but neither replaces the derivations above.

# Source structure

| Source unit | Technical role |
|---|---|
| §1 Introduction and summary | States the $\mathcal W$ and $\mathcal S$ towers, local commutator form, wedge algebras, scalar event shapes, and soft interpretation. |
| §2 Preliminaries | Fixes retarded coordinates, the conformal map to a null plane/light cone, charge signs, and global conformal Killing vectors. |
| §3.1 Falloffs | Derives generic-QFT and stronger CFT radial falloffs and writes global conformal charges at $\mathscr J^+$. |
| §3.2 Low light-ray dimensions | Identifies ANEC, local dilation, and chiral/anti-chiral Lorentz densities. |
| §3.3 Dimension $-1$ | Constructs the local SCT density and the first new maximal-spin operator $\mathcal W_1$. |
| §3.4 All-order stress classification | Reduces the operator basis by conservation and solves the left/right primary recursions, leaving $\mathcal V_m$ and $\mathcal W_m$. |
| §4.1--4.2 Local commutator constraints | Introduces the coincident-angle distributional ansatz and derives $SL(2,\mathbb C)$ descendant recursions. |
| §4.3--4.4 Low-order algebras | Reconstructs extended-BMS-like and local conformal density commutators. |
| §4.5 Stress wedge theorem | Uses $P_u$ induction and a kernel analysis to isolate high-derivative remainders and derive loop $\mathrm w_{1+\infty}$. |
| §5 Spin-one currents | Repeats the classification and induction for $\mathcal S_m$, then derives the $S$ algebra and mixed $\mathcal W$--$\mathcal S$ module. |
| §6 Scalar event shapes | Computes position- and momentum-space one-point functions and connects their universal kinematics to graviton and gauge soft descendants. |
| §7 Free fields | Trades transverse inverse derivatives for additional null integrations and displays light-scalar corrections to local commutators. |
| §8 Discussion | Lists interacting-CFT tests, collider uses, RG flow, twistor, mixed-helicity, and higher-dimensional directions. |
| Appendix A.1 | Solves all coefficient recursions for stress-tensor primary descendants; left/right compatibility leaves spins $\ell=1,2$. |
| Appendix A.2 | Parallel current recursion; compatibility leaves only $\ell=1$. |
| Appendix B | Derives formal Lorentz transformations of inverse derivatives by integration by parts/analytic continuation. |
| Appendix C | Supplies explicit low-order $\mathcal W$ commutators used as the induction base. |
| Appendix D | Classifies operators in $\ker P_u$ and shows Lorentz mixing prevents wedge-visible loopholes. |
| Appendix E | Supplies low-order $S$ and mixed commutators used as current-sector base cases. |

# Detector geometry and conventions

## Retarded coordinates

The paper uses

$$
x^\mu=\frac12\left(un^\mu+r\hat q^\mu(z,\bar z)\right),
$$

$$
\hat q^\mu=(1+z\bar z,\ z+\bar z,\ -i(z-\bar z),\ 1-z\bar z),
\qquad n^\mu=\partial_z\partial_{\bar z}\hat q^\mu,
$$

so that

$$
ds^2=-du\,dr+r^2dz\,d\bar z.
\tag{2.3}
$$

The factor $1/2$ in $x^\mu$ and the off-diagonal metric components are easy sources of normalization errors when translating to standard Bondi coordinates. Future null infinity is $r\to\infty$ at fixed $(u,z,\bar z)$.

The charge convention is

$$
[Q,\Phi]=i\delta\Phi,
$$

while an isometry acts by $\delta\Phi=-\mathcal L_\zeta\Phi$. A celestial Lorentz primary obeys

$$
-\delta_Y\mathcal O=(Y^z\partial_z+h\partial_zY^z)\mathcal O,
$$

with a barred analogue. These are $SL(2,\mathbb C)$ weights of a detector operator, not four-dimensional local-primary weights.

## Radial data and scaling labels

$T_{\mu\nu}^{(n)}$ denotes the coefficient of $r^{-n}$ in a coordinate component. The generic finite-energy falloffs are weaker than the CFT falloffs. In the CFT specialization,

$$
T_{uu},T_{uz},T_{zz},T_{z\bar z}=O(r^{-2}),\qquad
T_{rz},T_{ur}=O(r^{-4}),\qquad
T_{rr}=O(r^{-6}).
\tag{3.11}
$$

The paper's trace-sector normalization is

$$
T^{(n)}=-2\left(T_{ur}^{(n)}-T_{z\bar z}^{(n-2)}\right),
$$

whereas the actual $r^{-n}$ coefficient of $T_\mu{}^\mu$ is $2T^{(n)}$. The paper's prose calls $T^{(n)}$ the trace coefficient, but its downstream equations consistently use the displayed half-trace normalization. It vanishes for the chosen traceless CFT stress tensor. The all-order stress tower is indexed by the four-dimensional light-ray scaling dimension

$$
\Delta_{\rm LR}=-m,\qquad
\mathcal W^p\equiv\mathcal W_m,\qquad
p=\frac{m+4}{2},\qquad
(h,\bar h)=(p,3-p).
$$

Thus $m=-1,0,1$ correspond to ANEC, superrotation level, and subsubleading-soft level. The same letter $m$ is also used in the paper for a wedge mode; below, $M,N$ denote wedge labels to keep the roles separate.

For the current tower,

$$
\mathcal S^p\equiv\mathcal S_m,\qquad
p=\frac{m+2}{2},\qquad
(h,\bar h)=\left(\frac{m+2}{2},\frac{2-m}{2}\right).
$$

## Distributional and inverse-derivative conventions

Local commutators are supported at coincident celestial angle by $\delta^{(2)}(z-z')$ and derivatives. The identity

$$
\partial_z\bigl(\delta^{(2)}(z-z')O(z')\bigr)
=\delta^{(2)}(z-z')\partial_{z'}O(z')
-\partial_{z'}\bigl(\delta^{(2)}(z-z')O(z')\bigr)
\tag{4.33}
$$

means that local presentations are unique only modulo moving derivatives between insertions.

For $m\ge3$, the bare generators contain formal $\partial_{\bar z}^{-k}$. Appendix B treats these as integrals and discards boundary terms. It fixes a formal Lorentz transformation, but not a Green function, base point, integration constant, celestial patching rule, or behavior at infinity. The local descendant $\partial_{\bar z}^{m-1}\mathcal W_m$ is consequently more unambiguous than $\mathcal W_m$ itself.

# Stress-tensor detectors from conservation and primarity

## Low-order anchors

The unique dimension-one detector is ANEC,

$$
\mathcal W_{-1}=\int du\,T_{uu}^{(2)},\qquad
(h,\bar h)=\left(\frac32,\frac32\right).
\tag{3.15}
$$

At dimension zero, conservation reduces the candidate basis to $uT_{uu}^{(2)}$ and the two mixed transverse components. The Lorentz primaries are

$$
\mathcal D=\int du\,uT_{uu}^{(2)},
$$

$$
\mathcal W_0=\frac12\int du
\left(u\partial_zT_{uu}^{(2)}-2T_{uz}^{(2)}\right),
\qquad (h,\bar h)=(2,1),
\tag{3.25}
$$

and its anti-chiral conjugate. At dimension $-1$, tracelessness gives

$$
\mathcal W_1=\frac18\int du\left(
u^2\partial_z^2T_{uu}^{(2)}
-4u\partial_zT_{uz}^{(2)}
+6T_{zz}^{(2)}\right),
\qquad (h,\bar h)=\left(\frac52,\frac12\right).
\tag{3.34}
$$

These low levels are physically anchored as hard detector densities associated with the leading, subleading, and subsubleading graviton soft structures. The classification itself is obtained from the stress tensor, not guessed from the soft theorems.

## Conservation first, coordinates second

At fixed $\Delta_{\rm LR}=-m$, falloffs and nonnegative $u$ moments leave a finite list of radial coefficients. The authors expand $\partial_\mu T^{\mu\nu}=0$, integrate against $u^k$, discard total $u$ derivatives, and use the resulting equations (3.40)--(3.41) to eliminate dependent coefficients. This is the detector analogue of solving radial constraints before identifying independent charge aspects.

The reduced basis contains leading radiative moments such as

$$
\int du\,u^{m+1}T_{uu}^{(2)},\qquad
\int du\,u^mT_{uz}^{(2)},\qquad
\int du\,u^{m-1}T_{z\bar z}^{(2)},
$$

and finitely many subleading transverse/radial coefficients. Trace terms are kept in the generic-QFT classification and set to zero only after specializing to the CFT.

## Why a second primary appears at a discrete weight

A light-$\bar h$ trial family first produces the low-spin primaries $\mathcal L_m$, $\mathcal X_m$, and $\mathcal Y_m$. For $m\ge2$,

$$
\bar h=\frac{2-m}{2}\le0,
$$

so the descendant $\partial_{\bar z}^{m-1}\mathcal O$ is itself a right-primary. At the new right weight $m/2$, subleading radial stress coefficients have the correct weights to mix. This requires a larger ansatz $R_{m,\ell,n}$ rather than merely differentiating the leading-radiative combination.

Appendix A.1 solves six neighboring-radial-order recursions. The left-primary equations allow nontrivial solutions only for $\ell\ge1$; the right-primary equations require $\ell\le2$. Their intersection leaves

$$
\ell=1,2.
$$

$\ell=1$ gives $\mathcal V_m$ and the maximal-spin $\ell=2$ solution gives $\mathcal W_m$. The all-order local descendant is

$$
\begin{aligned}
\partial_{\bar z}^{m-1}\mathcal W_m
=\frac{1}{2^{m+1}(m+1)!}\Bigg[&
\int du\,(u\partial_z\partial_{\bar z})^{m-1}
\Big(u^2\partial_z^2T_{uu}^{(2)}
-2(m+1)u\partial_zT_{uz}^{(2)}\\
&\qquad+3m(m+1)T_{zz}^{(2)}
-(m+1)u\partial_z^2T^{(3)}\Big)\\
&+\sum_{n=3}^{m+1}\frac{(m+1)!(n-3)!}{(m-n+1)!}
\int du\,(u\partial_z\partial_{\bar z})^{m-n+1}\\
&\qquad\times\Big(\partial_z^2T_{rr}^{(n+2)}
+2(n-1)\partial_zT_{rz}^{(n+1)}
+(n+1)(n-2)T_{zz}^{(n)}\Big)
\Bigg].
\end{aligned}
\tag{3.59}
$$

The trace term vanishes in the CFT. Undoing $\partial_{\bar z}^{m-1}$ gives the nonlocal bare generator (1.2), modulo its inverse-derivative kernel.

The normalization is chosen so the allowed global translations close down the tower,

$$
\delta_f\mathcal W_m
=\frac12\partial_z(f\mathcal W_{m-1})
+\frac{m+2}{2}(\partial_zf)\mathcal W_{m-1}.
\tag{3.62}
$$

For the global translation parameters used in (3.62), $\partial_z^2f=0$. A genuinely local supertranslation parameter produces additional low-order terms; for example, the $m=1$ variation contains $\frac34(\partial_z^2f)\mathcal D$.

For the global null translation $f=1$,

$$
[P_u,\mathcal W^p]=\frac i2\partial_z\mathcal W^{p-1/2}.
\tag{4.35}
$$

This linear recursion is the exact CFT analogue the paper draws with gravitational charge-aspect recursions. It contains none of the nonlinear gravitational terms of a full high-order asymptotic charge.

# From same-lightsheet OPE support to the local algebra

The algebra theorem uses more than the classification. For a four-dimensional interacting CFT with no neutral scalar operator of dimension $1\le\Delta\le2$, the paper assumes that the same-lightsheet stress commutator receives only identity and stress-tensor contributions. It discards the identity/vacuum sector, integrates the null line, and writes transverse contact terms multiplying stress-tensor light-ray operators.

For a primary output $\mathcal O_P$, Lorentz covariance fixes the total derivative orders

$$
\ell_P=h_1+h_2-h_P-1,\qquad
\bar\ell_P=\bar h_1+\bar h_2-\bar h_P-1,
\tag{4.10}
$$

and the descendant coefficients obey

$$
\begin{aligned}
a^P_{\ell,\bar\ell}(\ell_P-\ell)
\left(h_P+\frac{\ell_P-\ell-1}{2}\right)
&=a^P_{\ell+1,\bar\ell}(\ell+1)
\left(\frac{\ell+2}{2}-h_1\right),\\
a^P_{\ell,\bar\ell}(\bar\ell_P-\bar\ell)
\left(\bar h_P+\frac{\bar\ell_P-\bar\ell-1}{2}\right)
&=a^P_{\ell,\bar\ell+1}(\bar\ell+1)
\left(\frac{\bar\ell+2}{2}-\bar h_1\right).
\end{aligned}
\tag{4.11}
$$

The Gamma-function expression (4.12) solves these recursions once one coefficient is fixed at generic nondegenerate weights. At physical half-integer weights it can contain pole-over-pole expressions that require analytic continuation, while exceptional zero factors can lower the recursion rank. At sufficiently negative output dimension, the minimal stress basis is not a basis of primaries, so the paper instead uses triangular Lorentz mixing matrices. That generalization is crucial for controlling $\ker P_u$.

## The low levels expose the extra local terms

The first seeds are

$$
[\mathcal W_{-1},\mathcal W_{-1}]=0,
$$

$$
[\mathcal W_{-1}(z),\mathcal W_0(z')]
=i\left(\frac12\partial_{z'}-\partial_z\right)
\bigl(\delta^{(2)}\mathcal W_{-1}\bigr),
$$

and

$$
[\mathcal W_0(z),\mathcal W_0(z')]
=i(\partial_{z'}-\partial_z)
\bigl(\delta^{(2)}\mathcal W_0\bigr).
\tag{4.26}
$$

At the next level, Appendix C already contains an outside-wedge term,

$$
[\mathcal W_{-1},\mathcal W_1]
=i\left(\frac12\partial_{z'}-\frac32\partial_z\right)
(\delta^{(2)}\mathcal W_0)
+\frac{3i}{4}\partial_z^2(\delta^{(2)}\mathcal D).
\tag{C.1}
$$

Thus the local algebra never equals only the universal $\mathcal W$ term. The clean result emerges after a projection.

The same warning applies to the paper's “local conformal algebra.” Pointwise commutators involving the local special-conformal density $\mathcal K$ contain $\mathcal W_1$, $\mathcal X_1$, $\mathcal L_1$, $\mathcal Y_2$, and $\mathcal L_2$ terms. Only the appropriate polynomial global smearings remove or combine those terms and recover the finite-dimensional conformal algebra; the local densities do not close on fifteen generators by themselves.

# The wedge theorem and its kernel argument

The all-order local statement is

$$
\begin{aligned}
[\mathcal W^p(z),\mathcal W^q(z')]
={}&i\big[(p-1)\partial_{z'}-(q-1)\partial_z\big]
\delta^{(2)}(z-z')\mathcal W^{p+q-2}(z')\\
&+\sum_{\ell\ge2p-1}a_\ell^i\partial_z^\ell
\bigl(\delta^{(2)}O_i\bigr)
+\sum_{k\ge2q-1}b_k^j\partial_{z'}^k
\bigl(\delta^{(2)}O_j\bigr).
\end{aligned}
\tag{4.29}
$$

There are no barred derivatives in the remainders, and the theorem does not set their coefficients to zero.

The proof is inductive in $p+q$:

1. Use the delta-function identity to separate unprimed and primed derivative sectors.
2. Add and subtract the desired universal $\mathcal W^{p+q-2}$ structure.
3. Apply $P_u$ to the commutator. The Jacobi identity gives

   $$
   [P_u,[\mathcal W^p,\mathcal W^q]]
   =\frac i2\left(
   \partial_{z'}[\mathcal W^p,\mathcal W^{q-1/2}]
   +\partial_z[\mathcal W^{p-1/2},\mathcal W^q]
   \right).
   \tag{4.36}
   $$

4. By the induction hypothesis, every non-kernel remainder starts at $2p-1$ or $2q-1$ holomorphic derivatives. Local translation cannot lower an explicit derivative count.
5. Operators in $\ker P_u$ are the only possible loophole. Appendix D shows that every nontrivial generic kernel combination Lorentz-mixes into a non-kernel operator. The same Lorentz recursion then transfers the derivative bound back to the kernel coefficient.
6. Exceptional output levels $m\le3$ are treated explicitly in Appendices C and D; the uniform induction starts above them.

The wedge modes are

$$
\mathrm w^p_{M,\bar M}
=\int d^2z\,z^{p+M-1}\bar z^{2-p+\bar M}
\mathcal W^p(z,\bar z),\qquad
1-p\le M\le p-1.
\tag{4.30}
$$

The holomorphic smearing polynomial has degree at most $2p-2$, so integration by parts annihilates every first-insertion remainder with $\ell\ge2p-1$; the same holds at the second insertion. The paper states no separate range for $\bar M$, which supplies the loop direction; excluding barred derivatives in the remainder is therefore essential. Polynomial annihilation also assumes lattice-compatible nonnegative powers and no boundary or contour contribution. The surviving bracket is

$$
[\mathrm w^p_{M,\bar M},\mathrm w^q_{N,\bar N}]
=i\big[M(q-1)-N(p-1)\big]
\mathrm w^{p+q-2}_{M+N,\bar M+\bar N}.
\tag{4.31}
$$

This is the wedge subalgebra of the loop algebra of $\mathrm w_{1+\infty}$. Identity/central terms are outside the theorem and have not been calculated.

# Conserved currents and the S tower

A conserved dimension-three current has CFT falloffs

$$
j_u,j_z,j_{\bar z}=O(r^{-2}),\qquad j_r=O(r^{-4}).
$$

The leading detector is

$$
\mathcal S_0^a=\int du\,j_u^{(2),a},\qquad (h,\bar h)=(1,1),
$$

which is the hard part of a large-gauge-like generator. Conservation reduces the all-order current basis, and Appendix A.2 solves the primary-descendant recursions. The left condition requires $\ell\ge1$, the right condition $\ell\le1$, so only $\ell=1$ survives. The local descendant is

$$
\begin{aligned}
\partial_{\bar z}^{m-1}\mathcal S_m
=\frac1{2^m m!}\Bigg[&
\int du\,(u\partial_z\partial_{\bar z})^{m-1}
\big(u\partial_zj_u^{(2)}-m j_z^{(2)}\big)\\
&-\sum_{n=3}^{m+1}\frac{m!(n-3)!}{(m-n+1)!}
\int du\,(u\partial_z\partial_{\bar z})^{m-n+1}
\big(\partial_zj_r^{(n+1)}+(n-2)j_z^{(n)}\big)
\Bigg].
\end{aligned}
\tag{5.21}
$$

Its translation recursion is

$$
\delta_f\mathcal S_m
=\frac12\partial_z(f\mathcal S_{m-1})
+\frac m2(\partial_zf)\mathcal S_{m-1}.
\tag{5.24}
$$

For a nonabelian global symmetry,

$$
[\mathcal S^{p,a}(z),\mathcal S^{q,b}(z')]
=if^{abc}\delta^{(2)}(z-z')\mathcal S^{p+q-1,c}(z')
+\text{terms beginning at }\partial_z^{2p-1}
\text{ or }\partial_{z'}^{2q-1}.
\tag{5.30}
$$

The wedge modes

$$
S^{p,a}_{M,\bar M}
=\int d^2z\,z^{p+M-1}\bar z^{1-p+\bar M}\mathcal S^{p,a},
\qquad1-p\le M\le p-1,
$$

obey

$$
[S^{p,a}_{M,\bar M},S^{q,b}_{N,\bar N}]
=if^{abc}S^{p+q-1,c}_{M+N,\bar M+\bar N}.
\tag{5.32}
$$

For $U(1)$ this algebra is abelian. The mixed local bracket has the same universal differential kernel as the stress algebra and current-valued high-derivative remainders. After wedge projection,

$$
[\mathrm w^p_{M,\bar M},S^{q,a}_{N,\bar N}]
=i\big[M(q-1)-N(p-1)\big]
S^{p+q-2,a}_{M+N,\bar M+\bar N}.
\tag{5.41}
$$

Thus $S$ is a module for the stress-tensor wedge algebra; the flavor label is a spectator under $\mathrm w_{1+\infty}$.

The low-order local base cases require one qualification. With

$$
I^c\equiv\int du\,j_z^{(2),c},
\qquad
2\mathcal S_1^c=\partial_z\mathcal J_1^c-I^c,
\qquad
[P_u,I^c]=0,
$$

the printed Appendix-E commutators $[\mathcal S_0,\mathcal S_1]$ and $[\mathcal S_1,\mathcal S_1]$ satisfy the $P_u$ Jacobi identity, as do all five displayed mixed $[\mathcal W_m,\mathcal S_n]$ base cases. The printed equation (E.1c) for $[\mathcal S_0^a(z),\mathcal S_2^b(z')]$, however, leaves the color-stripped residual

$$
-\frac14\partial_z\!\left[
\delta^{(2)}(z-z')I^c(z')
\right].
$$

No coefficient-only change among its three displayed structures can cancel this term while preserving the independent $\mathcal S_1$ and $\partial_z\mathcal J_1$ conditions. A repair would need an additional operator whose $P_u$ image is $I^c$, or a change to earlier transformation data; the source supplies neither. This local failure is annihilated by the $\mathcal S_0$ wedge smearing, so it does not change the independently checked wedge algebra, but it leaves a gap in the printed local base-case chain.

# Scalar event shapes and the soft dictionary

## Position-space seeds

The stress calculation begins from the unique scalar--stress--scalar three-point function, with the scalar two-point normalization fixing

$$
a=-\frac{2\Delta}{3\pi^2}.
$$

The Wightman prescription is included before null integration. Contour integration gives

$$
\langle\mathcal O(x_1)\mathcal W_{-1}(z,\bar z)\mathcal O(x_3)\rangle
=\frac a4\frac1{x_{13}^{2\Delta-2}}
\frac{12\pi i}{(\hat q\cdot x_{13}+i\epsilon)^3}.
\tag{6.10}
$$

For $m=0,1$, the higher detector is a differential operator acting on this seed. From $m=2$ onward, radial coefficients appear. At $m=2$, the non-total-$u$ remainder from leading components cancels against a total $\bar z$ derivative from $T_{rr}^{(5)},T_{rz}^{(4)},T_{zz}^{(3)}$; analogous cancellations are worked out for $m=3,4$.

The compact result is

$$
\begin{aligned}
\langle\mathcal O(x_1)\mathcal W_m(z,\bar z)\mathcal O(x_3)\rangle
={}&\frac{(-1)^{m+1}}{2^{2m+2}(m+1)!}
\prod_{j=3}^{m+3}
\Big[j\,\partial_z\hat q\cdot(x_1+x_3)
+\hat q\cdot(x_1+x_3)\partial_z\Big]\\
&\times
\langle\mathcal O(x_1)\mathcal W_{-1}(z,\bar z)\mathcal O(x_3)\rangle.
\end{aligned}
\tag{6.25}
$$

The paper checks this only through $m=4$ and expects it for all $m$. An independent large-$r$ reconstruction from the scalar--stress--scalar three-point function, including every radial component in (3.57), reproduced (6.25) exactly for $m=0,\ldots,4$. The all-order momentum and soft statements still inherit the source's extrapolation beyond those finite orders.

For a charged scalar and a $U(1)$ current,

$$
\langle\mathcal O^\dagger(x_1)\mathcal S_0(z,\bar z)\mathcal O(x_3)\rangle
=\frac b{2x_{13}^{2\Delta-2}}
\frac{-4\pi i}{(\hat q\cdot x_{13}+i\epsilon)^2},
\tag{6.38}
$$

and the checked-through-$m=4$ pattern is

$$
\begin{aligned}
\langle\mathcal O^\dagger(x_1)\mathcal S_m(z,\bar z)\mathcal O(x_3)\rangle
={}&\frac{(-1)^m}{2^{2m}m!}
\prod_{j=2}^{m+1}
\Big[j\,\partial_z\hat q\cdot(x_1+x_3)
+\hat q\cdot(x_1+x_3)\partial_z\Big]\\
&\times
\langle\mathcal O^\dagger(x_1)\mathcal S_0(z,\bar z)\mathcal O(x_3)\rangle.
\end{aligned}
\tag{6.39}
$$

An independent reconstruction from the scalar--current--scalar three-point function reproduced the $\mathcal S_0$ contour seed and (6.39) for $m=1,\ldots,4$, including the radial cancellations at $m=2,3,4$. This is a finite-order check, not an all-$m$ proof.

## Momentum-space form

With $\hat n=\hat q/2$ and orbital angular momentum

$$
\mathcal L_{k\mu\nu}
=-i\left(p_{k\mu}\frac\partial{\partial p_k^\nu}
-p_{k\nu}\frac\partial{\partial p_k^\mu}\right),
$$

the stress event shape is

$$
\langle\mathcal O(p_1)|\mathcal W_m|\mathcal O(p_3)\rangle
=\frac1{4\pi}{m+3\choose2}
\frac{(-p_1^2)^2
(\partial_z\hat n^\mu\hat n^\nu\mathcal L_{1\mu\nu})^{m+1}}
{(-\hat n\cdot p_1)^{m+4}}
\langle\mathcal O(p_1)|\mathcal O(p_3)\rangle.
\tag{6.31}
$$

For a massive scalar, the universal graviton soft factor satisfies

$$
\partial_z^{m+3}S_k^{(m)}(\hat n)
=i^{m+3}{m+3\choose2}
\frac{p_k^4}{(-\hat n\cdot p_k)^{m+4}}
(\partial_z\hat n^\mu\hat n^\nu\mathcal L_{k\mu\nu})^{m+1}.
\tag{6.35}
$$

This matches the kinematic coefficient in (6.31). The amplitude itself contains a nonuniversal term $\mathcal B_{(m)}^{\mu\nu}$ beginning at $m=1$, so the event shape matches the universal component, not the full all-order soft expansion.

The gauge-current result is

$$
\langle\mathcal O(p_1)|\mathcal S_m|\mathcal O(p_3)\rangle
=(m+1)\frac Q{4\pi}
\frac{(-p_1^2)
(\partial_z\hat n^\mu\hat n^\nu\mathcal L_{1\mu\nu})^m}
{(-\hat n\cdot p_1)^{m+2}}
\langle\mathcal O(p_1)|\mathcal O(p_3)\rangle.
\tag{6.44}
$$

Section 6.2 asserts the corresponding gauge-soft descendant relation but does not display a separate equation parallel to (6.35). That distinction should be preserved.

# Free fields and the light-scalar loophole

For a free conformal scalar, wave-equation recursion lets one exchange transverse inverse derivatives for additional $u$ integrations. For example, the nonlocal radial part of $\mathcal W_2$ becomes a total $\bar z$ derivative of a double-null integral. An analogous identity holds for $\mathcal S_2$. This makes the pre-primary transverse-local at the price of null nonlocality.

The free real scalar violates the stress-algebra hypothesis: $\phi$ has dimension one and $\phi^2$ dimension two. Explicit low-order commutators contain additional $\phi^2$ light-ray operators once $m+m'>0$. In the examples those terms lie outside the wedge, and the inside-wedge part agrees with the universal algebra. The paper does not prove that every possible light-scalar correction in every interacting CFT is always wedge-invisible.

The current free-field example checks the generator representation but does not calculate the free-current algebra in Section 7.2. Its $U(1)$ current also cannot test the nonabelian $f^{abc}$ coefficient.

# Where the main equations enter

| Equation | Role | Local translation |
|---|---|---|
| (2.1)--(2.3) | Retarded chart and metric | Fixes all factor-of-two and component conventions before taking $r\to\infty$. |
| (3.11) | CFT falloffs | Selects the allowed radial detector data. |
| (3.40)--(3.42) | Conservation and minimal basis | Detector analogue of solving radial constraints. |
| (3.59) | Local $\mathcal W_m$ descendant | Most prescription-independent form of the all-order stress generator. |
| (3.62) | Translation recursion | Linear charge-aspect-like descent. |
| (4.11)--(4.12) | Lorentz descendant recursion | Fixes contact-term coefficients once a primary coefficient is known. |
| (4.29) | Local stress commutator | Universal term plus explicit derivative thresholds, not exact local closure. |
| (4.30)--(4.31) | Wedge smearing and bracket | Projection that produces loop $\mathrm w_{1+\infty}$. |
| (5.21), (5.24) | Current primary and descent | Parallel $S$ tower. |
| (5.30)--(5.32) | Local and wedge $S$ algebra | Nonabelian flavor algebra after projection. |
| (5.40)--(5.41) | Mixed algebra | $S$ is a $\mathrm w_{1+\infty}$ module. |
| (6.25), (6.39) | Position-space event shapes | Explicitly checked to $m=4$, extrapolated beyond. |
| (6.31), (6.35), (6.44) | Momentum/soft dictionary | Matches universal soft descendants, not full amplitudes. |
| (B.7) | Inverse-derivative covariance | Formal and globally underdetermined; contains a source typo as printed. |

# Dependency map

$$
\text{CFT falloffs}+\partial_\mu T^{\mu\nu}=0
\Longrightarrow
\text{finite conservation-reduced basis}
\Longrightarrow
SL(2,\mathbb C)\text{ primary recursions}
\Longrightarrow
\mathcal W_m.
$$

$$
\mathcal W_m+P_u\text{ descent}
+\text{same-lightsheet OPE support}
+\text{low-order bases}
\Longrightarrow
\text{local commutator with derivative bounds}.
$$

$$
\text{derivative bounds}
+\text{kernel/Lorentz mixing}
+\text{wedge smearing}
\Longrightarrow
\text{loop }\mathrm w_{1+\infty}\text{ wedge algebra}.
$$

The current chain is parallel, with $\partial_\mu j^\mu=0$ and flavor structure constants. The event-shape chain begins separately from CFT three-point functions, null contour integration, and explicit cancellations; it does not prove the operator algebra.

# Translation to CPS, boundary, and charge language

| Paper object | Closest local formalism object | Essential qualification |
|---|---|---|
| $T_{\mu\nu}^{(n)}(u,z,\bar z)$ | Null-boundary radial data | Matter/CFT stress coefficients, not Bondi metric data. |
| Conservation-reduced basis | Constraint-reduced boundary data | Obtained after integrated stress conservation, not by quotienting gravitational gauge directions. |
| $\mathcal W_{-1}$ | Hard supertranslation density | ANEC only; no soft radiative term. |
| $\mathcal W_0$ | Hard superrotation density | Global low modes reproduce Lorentz generators. |
| $\mathcal W_1$ | Hard subsubleading-soft density | First new maximal-spin detector beyond extended BMS. |
| $\mathcal W_m$ | Higher hard charge-aspect analogue | Linear in the CFT stress tensor and not itself a full Hamiltonian charge. |
| $\delta_f\mathcal W_m$ | Charge-aspect recursion | No gravitational nonlinearities or integrability analysis. |
| $\delta^{(2)}$ contact algebra | Boundary current-density algebra | Distributional and defined modulo derivative-moving identities. |
| High-derivative remainders | Improvements/outside-wedge boundary data | Genuine local operators; removed only by a specific smear. |
| Wedge projection | Restricted test-function quotient | Algebraic projection, not a symplectic reduction proved from CPS. |
| $\mathcal S_0$ | Hard large-gauge density | The CFT current is a global-symmetry current; no dynamical gauge field is required. |
| $\mathcal S_m$ | Higher hard gauge-soft analogue | Same inverse-derivative and projection qualifications. |
| $\ker P_u$ analysis | Constraint-kernel control | Controlled by Lorentz mixing, not declared pure gauge. |
| Omitted identity sector | Potential central/vacuum terms | No central extension is computed. |

The key warning is that the paper supplies an algebra of detector densities and their projected modes, whereas a CPS charge construction would additionally require a gravitational/gauge phase space, presymplectic form, degeneracy quotient, integrable Hamiltonians, boundary conditions, and soft plus hard contributions.

# Concrete project extensions

1. **Compare recursions before comparing algebras.** Put (3.62) beside the vault's gravitational charge-aspect recursion at finite cutoff. Separate the linear stress-tensor part from nonlinear gravitational corrections before asking whether the wedge brackets agree.
2. **Formulate the wedge as a test-function quotient.** Express the threshold $\ell\ge2p-1$ as the annihilator of degree-$2p-2$ holomorphic smearings. This may clarify which CPS improvements are projected out and which are physically retained.
3. **Audit the inverse-derivative kernel globally.** Choose a Green function or spherical-harmonic prescription for $\partial_{\bar z}^{-1}$, determine its zero modes, and check whether the same wedge generators are independent of that choice.
4. **Restore the identity sector.** The omitted vacuum contribution is the natural place to look for central terms. Any calculation should keep a regulator and distinguish a local distributional central term from a finite central extension of the smeared algebra.
5. **Test a controlled interacting example.** A four-point function with two stress insertions in a theory without the excluded light scalars could test whether the same-lightsheet integrations converge and whether the predicted local remainders appear.
6. **Do not overread the soft correspondence.** For gravity, compare (6.35) only with the universal factor and track $\mathcal B_{(m)}$ from $m=1$. For gauge theory, first derive the explicit descendant identity that Section 6.2 leaves implicit.
7. **Use the free scalar as a falsification benchmark.** Reproduce the first outside-wedge $\phi^2$ terms and test whether a chosen gravitational/CPS projection removes them for structural rather than accidental low-order reasons.

# Verification log

## Checked

- Mathematica reproduced $q^2=n^2=0$, $q\cdot n=-2$, the coordinate metric, and $x^2=-ur$. An independent xAct/xCoba pass reproduced the nonzero Christoffel symbols and zero Riemann tensor.
- The inversion Jacobian reproduced all component transformations used for the CFT falloffs. Scaling residuals and the three large-$r$ conservation recursions, including their exceptional low-order cases, all vanished.
- The $m=-1,0,1$ reductions of the all-order $\mathcal W_m$ formula reproduce ANEC, $\mathcal W_0$, and $\mathcal W_1$. The low-order translation variations also reduce to the displayed results, including the extra $\frac34(\partial_z^2f)\mathcal D$ term for a non-global parameter.
- Mathematica reproduced all six Appendix-A.1 left-primary recursions, initial/terminal data, all six right-primary recursions at $\ell=1,2$, and the selection of exactly $\ell=1,2$ after the source's $\ell\le1$ typo is repaired.
- The Gamma-function solution of the contact-term $SL(2)$ recursion has zero generic residual and reproduces the physical coefficient vectors $(-\frac12,1)$, $(\frac13,-1,1)$, and $(0,0,0,1)$ by analytic continuation.
- Sage solved the $[\mathcal W_0,\mathcal W_0]$ coefficient system as $c=i,d=0$ and gave zero $P_u$-Jacobi residuals for the next two exact links. All eleven nonzero Appendix-C rows have the claimed universal coefficient, output label, and wedge threshold.
- The generic $P_u$ induction coefficient vanishes as a formal-distribution residual. Mathematica found the generic kernel-mixing determinant $-(m-2)(m-1)^2m(m+1)$ and the exceptional $m=3$ nullspace $(2,2,1,0,0)$, reproducing the $p+q=11/2$ induction threshold.
- Direct symbolic integration by parts of the universal local kernel against the wedge monomials reproduced the coefficient $M(q-1)-N(p-1)$ in (4.31), with an exact one-derivative gap between the largest wedge polynomial and the first allowed remainder.
- Mathematica/Sage gave zero Jacobi residuals for the abstract wedge bracket and for its action on the $S$ module.
- Sage checked all $81$ components of the $SU(2)$ flavor Jacobi identity for the $S$ bracket; all residuals vanished.
- Residue calculations independently reproduced the $12\pi i/(\hat q\cdot x_{13}+i\epsilon)^3$ ANEC contour factor and the $-4\pi i/(\hat q\cdot x_{13}+i\epsilon)^2$ leading-current factor.
- Mathematica reproduced the Appendix-A.2 current-primary solution: all left recurrences, initial data, and endpoint conditions vanish; the right-primary residuals vanish at $\ell=1$ and are nonzero for every admissible integer $\ell\ge2$, selecting the stated current tower.
- Distributional reduction gave zero $P_u$-Jacobi residuals for (E.1a), (E.1b), and all five mixed commutators (E.2)--(E.6). Exact mode enumeration confirmed that every displayed low-order correction is killed by the relevant wedge smearing.
- Independent exact large-$r$ expansions of the source three-point functions, followed by insertion into the full generators and contour residues, reproduced the stress event shapes for $m=0,\ldots,4$ and the current event shapes for $m=0,\ldots,4$. This includes the nonlocal radial cancellations at $m=2,3,4$.
- The gravitational soft-descendant coefficient in (6.35), multiplied by the stated phase and normalization, reproduces (6.31) exactly for every independently checked $m=0,\ldots,4$.

## Blocked

- The same-lightsheet OPE-support theorem, exclusion of all other interacting-CFT operators, and convergence of the integrated commutators require analytic CFT input not reproduced here.
- The symbolic audits prove that the displayed Appendix-A coefficients solve the displayed recursions, but do not independently derive every large-$r$ operator transformation or prove that the paper's proposed basis is globally complete.
- The eleven Appendix-C commutators pass a complete structural audit, but every nonuniversal rational coefficient at output dimensions $-2$ and $-3$ was not regenerated from an independently constructed non-primary mixing matrix.
- The generic kernel rank and exceptional nullspace are checked conditional on the source's classification of the most general $P_u$-kernel operator and its displayed Lorentz transformation.
- The inverse $\partial_{\bar z}$ operators lack global boundary/zero-mode data, so the bare pre-primaries cannot be independently defined from the source alone.
- The independently reproduced event-shape chains stop at $m=4$, exactly where the source's explicit calculations stop; no all-$m$ induction or closed-form evaluation is supplied.
- The source does not display a gauge-soft descendant formula parallel to (6.35), so the current event shape through $m=4$ is checked but its final identification with an external gauge soft factor remains source-derived.
- Identity/vacuum contributions, central terms, nonuniversal graviton soft terms, and the free-current algebra are not supplied by the paper and cannot be reconstructed from its displayed chain alone.

## Failed

- The prose after (3.21) identifies $T^{(n)}$ as the $r^{-n}$ trace coefficient, but direct contraction gives $[T_\mu{}^\mu]^{(n)}=2T^{(n)}$. The displayed definition is kept, because downstream formulas consistently use that normalization.
- Appendix A.1 says $a_n,b_n,c_n,d_n$ vanish for $\ell\le1$, but its own solution is nonzero at $\ell=1$. The verified condition is $\ell<1$ on the nonnegative-spin domain.
- Appendix B line 2724 drops a factor $h-1$ in the last equality: it should read $\widetilde{\mathcal O}=(h-1)\partial_z^{-1}\mathcal O$.
- Appendix B equation (B.7), as printed, has $\partial_z^{-\ell}\mathcal O$ on the left but a positive $\partial_z^{\ell}\mathcal O$ in the first homogeneous term. Differentiating back and the surrounding “$\ell\mapsto-\ell$” argument require the negative power there. These four local source defects have explicit repairs and do not alter the checked wedge coefficients.
- Appendix E equation (E.1c), as printed, fails its $P_u$ Jacobi identity by $-\frac14\partial_z[\delta^{(2)}(z-z')\int du\,j_z^{(2)}(z')]$. No coefficient-only repair among the displayed terms exists. The missing contribution is projected out of the $\mathcal S_0$ wedge, so the wedge algebra remains checked, but the local commutator is not established by the printed data.
