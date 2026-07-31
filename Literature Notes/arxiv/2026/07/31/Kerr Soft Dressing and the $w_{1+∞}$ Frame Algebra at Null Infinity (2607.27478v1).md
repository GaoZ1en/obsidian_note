---
paper id: 2607.27478v1
title: 'Kerr Soft Dressing and the $w_{1+\infty}$ Frame Algebra at Null Infinity'
authors:
  - Gabriel Menezes
publication date: 2026-07-29T21:37
abstract: |-
  The paper constructs a charge-generated dictionary between intrinsic and canonical asymptotic frames for Kerr-selected soft dressing. A parity-adapted inverse problem matches soft-charge kernels to the exponentiating part of the Kerr soft factor, fixing electric frame data at even levels and magnetic frame data at odd levels. For aligned spin the tower is solved in closed form. The same kernels act on hard states through soft-theorem Ward identities, while their principal symbols form the polynomial Poisson algebra on the cotangent bundle of the celestial sphere. The construction connects the leading levels to displacement and spin memory, but does not close on Kerr-selected data alone.
comments: "92 pages"
url: https://arxiv.org/abs/2607.27478v1
summary: "A long-form reconstruction of the Kerr-selected soft-frame tower, its conditional charge algebra, its memory observables, and the exact boundary between the global polynomial Poisson algebra and a local chiral w-algebra."
tags: []
---

[[2026_07_31_overview|Back to the 2026-07-31 arXiv overview]]

# How to read this long paper

The paper has one reliable spine:

$$
\text{Kerr spin exponential}
\longrightarrow
\text{parity-selected soft kernel}
\longrightarrow
\text{affine frame shift}
\longrightarrow
\text{principal-symbol bracket}
\longrightarrow
\text{projected memory}.
$$

Read Sections 2--4 first for the actual inverse problem, then Section 7.3 for the aligned-spin solution, Section 6 for what is and is not proved about the algebra, and Section 8 for observables. Section 5 gives a Ward representation of an assumed tree-level soft theorem; it is not an independent derivation of a quantum symmetry. Section 9 and Appendix B are mainly valuable for the limitations: the exact higher-level homogeneous transformation, global trace completion, generic-spin solution, boundary cocycle, and quantum representation are not constructed.

# Source structure map

- **Section 1:** states the Kerr-selected inverse problem and the proposed frame-algebra interpretation.
- **Section 2:** reviews the Veneziano--Vilkovisky intrinsic/canonical frame map and solves its scalar Hessian equation.
- **Section 3:** defines the shifted-news radiative phase space, soft moments, helicity decomposition, parity alternation, Kerr exponent, Faddeev--Kulish displacement, and zero-frequency mode form.
- **Section 4:** solves the leading and selected subleading frame equations and explains why generic spin is not captured by a single electric or magnetic potential.
- **Section 5:** smears hard soft-theorem operators with the same angular kernels and states the Ward identity and schematic flux representation.
- **Section 6:** derives the universal principal-symbol bracket, low-level examples, the conditional total-charge algebra, trace descendants, ordered completions, and the local chiral reduction.
- **Section 7:** returns to the intrinsic/canonical dictionary, relates it to linearized Kerr--Schild multipoles, and solves the aligned-spin tower.
- **Section 8:** defines regulated retarded-time moments and identifies displacement, spin, and higher memory projections.
- **Section 9:** separates the classical polynomial algebra from ordering-dependent quantum corrections and the obstruction to an exact naive quantization.
- **Section 10:** summarizes the chain and its restrictions.
- **Appendix A:** records scalar, vector, and tensor harmonic conventions.
- **Appendix B:** contains the VV calculation, the generic-spin PDE, coherent-state and Kerr multipole details, cocycle conditions, sphere identities, low-spin brackets, fixed-gauge comparison protocol, and explicit caveats.

# Sphere, Bondi, and helicity conventions

The retarded coordinates are $(u,r,z^A)$ near $\mathcal I^+$. The unit-sphere data are $(\gamma_{AB},\epsilon_{AB},D_A)$ with

$$
\epsilon_{AB}\epsilon^{AB}=2,
\qquad
\mathcal D_{AB}f
=D_AD_Bf-\frac12\gamma_{AB}D^2f,
\qquad
\widetilde{\mathcal D}_{AB}f
=\epsilon_{C(A}\mathcal D_{B)}{}^Cf.
$$

The Bondi shear and news are

$$
N_{AB}=\partial_uC_{AB},
\qquad
\widehat N_{AB}=N_{AB}-\tau_{AB},
$$

where $\tau_{AB}$ is the traceless Geroch tensor. The paper treats $(C_{AB},\widehat N_{AB})$ as an Ashtekar--Streubel canonical pair, with an explicit but unfixed inverse normalization $\lambda_{\mathrm{AS}}$:

$$
\{F,G\}_{\mathrm{AS}}
=\lambda_{\mathrm{AS}}
\int_{\mathcal I^+}du\,d^2z\sqrt\gamma
\left(
\frac{\delta F}{\delta C_{AB}}
\frac{\delta G}{\delta\widehat N^{AB}}
-
\frac{\delta F}{\delta\widehat N^{AB}}
\frac{\delta G}{\delta C_{AB}}
\right).
\tag{3.2}
$$

The null direction and soft momentum are

$$
q^\mu=(1,\Omega^i),
\qquad
k^\mu=\omega q^\mu.
$$

The spacetime signature is $(+---)$, $\epsilon^{0123}=+1$, and the helicity label is $\eta=\pm1$. The level $s\geq0$ simultaneously counts a retarded-time moment, a soft-frequency derivative, and a polynomial-symbol degree. It is not a propagating bulk-spin label.

The rank-$s$ sphere parameter is $t^{A_1\cdots A_s}$. Its maximally longitudinal scalar is

$$
\chi_t^{(s)}
=
\begin{cases}
D_{A_1}\cdots D_{A_s}t^{A_1\cdots A_s},
&s\ \text{even},\\[2mm]
\epsilon^{BA_1}D_BD_{A_2}\cdots D_{A_s}
t^{A_1\cdots A_s},
&s\ \text{odd}.
\end{cases}
\tag{3.5}
$$

# The VV frame map as the level-zero inverse problem

Let

$$
x=p\cdot q.
$$

Since $x$ contains only $\ell=0,1$ spherical harmonics,

$$
\mathcal D_{AB}x=0.
\tag{2.5}
$$

The leading massive soft tensor can then be written as

$$
S^{(0)}_{AB}
=\frac1x
\left(
D_AxD_Bx-\frac12\gamma_{AB}D_CxD^Cx
\right).
\tag{2.8}
$$

The canonical frame sets the early shear to zero, while the intrinsic VV frame has

$$
C^{\mathrm{VV}}_{AB}=-4G\,S^{(0)}_{AB}.
\tag{2.9}
$$

A supertranslation acts by

$$
\delta_TC_{AB}=-2\mathcal D_{AB}T,
\tag{2.10}
$$

so the frame equation is

$$
\mathcal D_{AB}T_{\mathrm{VV}}
=2G\,S^{(0)}_{AB}.
\tag{2.11}
$$

For $T=f(x)$, $\mathcal D_{AB}x=0$ reduces this to $f''(x)=2G/x$. Hence

$$
\boxed{
T_{\mathrm{VV}}
=2G\,x\log x
}
\tag{2.15}
$$

modulo $a+bx$, the ordinary translation kernel. This is the model for every higher level: a physical soft tensor is treated as the source of an inverse angular differential equation whose solution changes the asymptotic frame.

# Kerr spin exponential and parity-selected soft kernels

With $a^\mu=S^\mu/m$, the exponentiating Kerr contribution is

$$
S_{\eta,\mathrm{exp}}(\lambda)
=S_\eta^{(0)}e^{\eta\lambda a\cdot q}
=\sum_{s\geq0}
\lambda^sS_{\eta,\mathrm{exp}}^{(s)},
\qquad
S_{\eta,\mathrm{exp}}^{(s)}
=S_\eta^{(0)}
\frac{\eta^s(a\cdot q)^s}{s!}.
\tag{3.6}
$$

Helicity conjugation gives

$$
\overline{S_{+,\mathrm{exp}}^{(s)}}
=(-1)^sS_{-,\mathrm{exp}}^{(s)}.
\tag{3.7}
$$

After recombining helicities into a real STF sphere tensor, the source is electric for even $s$ and magnetic for odd $s$. The field-independent soft kernel is therefore

$$
\mathcal K_{AB}^{(s,0)}[t]
=
\begin{cases}
\mathcal D_{AB}\chi_t^{(s)},&s\ \text{even},\\
\widetilde{\mathcal D}_{AB}\chi_t^{(s)},&s\ \text{odd},
\end{cases}
\tag{3.9}
$$

and the central inverse problem is

$$
\boxed{
\mathcal K_{AB}^{(s,0)}[t]
=2G\,\mathscr S_{AB,\mathrm{exp}}^{(s)}.
}
\tag{3.15}
$$

The associated soft moment is

$$
\mathcal Q_s^{\mathrm{soft}}(t)
=\int_{\mathcal I^+}du\,d^2z\sqrt\gamma\,
u^s\mathcal K_{AB}^{(s)}[t;C]\widehat N^{AB}.
\tag{3.3}
$$

The transformation is only affine at the displayed order:

$$
\delta_tC_{AB}
=u^s\mathcal K_{AB}^{(s,0)}[t]
+\mathbb L_t^{(s)}C_{AB}
+O(C^2).
\tag{3.13}
$$

The inhomogeneous term is explicit. The exact homogeneous operator $\mathbb L_t^{(s)}$, including curvature, trace descendants, density weights, and the retarded-time completion, is known only at low levels and is assumed for $s\geq2$.

The paper does not equate the selected exponent with the full order-$s$ soft factor. For $s\geq2$ it starts from a universal operatorial contribution and retains the Kerr-exponentiating projection

$$
\widehat S_{\eta,\mathrm{exp}}^{(s)}
=S_\eta^{(0)}
\frac{(-i)^s}{s!}
\left(
\frac{q_\mu J^{\mu\nu}\varepsilon_{\eta\nu}}
{p\cdot\varepsilon_\eta}
\right)^s.
\tag{3.21}
$$

The operator convention

$$
\widehat{\mathcal A}_{3,\eta}^{(j)}
=\mathcal A_{3,\eta}^{(0)}
e^{i\widehat{\mathcal W}_\eta}
\tag{3.23}
$$

must be distinguished from the crossed classical source

$$
S_{\mathrm{Kerr}}^{\mathrm{cl}}
=S_\eta^{(0)}e^{-i\omega W_\eta}.
\tag{3.24}
$$

The latter generates the Kerr multipoles

$$
M_\ell+iS_\ell=M(ia)^\ell.
\tag{3.26}
$$

# Generic spin obstruction and the aligned-spin solution

For two independent invariants $x=p\cdot q$ and $y=a\cdot q$,

$$
\mathcal D_{AB}G(x,y)
=G_{xx}(D_AxD_Bx)^{\mathrm{STF}}
+2G_{xy}(D_{(A}xD_{B)}y)^{\mathrm{STF}}
+G_{yy}(D_AyD_By)^{\mathrm{STF}}.
\tag{3.11}
$$

A generic Kerr source cannot be represented by only one pure electric or magnetic potential because the mixed and $yy$ structures remain. Thus the inverse problem fixes one parity projection, not the complete frame data.

For aligned momentum and spin,

$$
p^\mu=(E,0,0,P),
\qquad
a^\mu=\frac a m(P,0,0,E),
\qquad
a\cdot p=0,
$$

one instead has

$$
y=\alpha+\beta x,
\qquad
\alpha=-\frac{am}{P},
\qquad
\beta=\frac{aE}{mP}.
\tag{7.11}
$$

Writing $A=\lambda\alpha$ and $B=\lambda\beta$, the electric and magnetic potentials solve

$$
\Phi_\lambda''(x)
=\frac{2G\cosh(A+Bx)}x,
\qquad
\Psi_\lambda''(x)
=\frac{2G\sinh(A+Bx)}x.
\tag{7.12}
$$

Modulo the translation kernel,

$$
\begin{aligned}
\Phi_\lambda
&=2G\left[
\cosh A\,\mathcal C_B(x)
+\sinh A\,\mathcal S_B(x)
\right],\\
\Psi_\lambda
&=2G\left[
\sinh A\,\mathcal C_B(x)
+\cosh A\,\mathcal S_B(x)
\right],
\end{aligned}
\tag{7.13}
$$

where

$$
\mathcal C_B(x)
=\frac{Bx\,\operatorname{Chi}(Bx)-\sinh(Bx)}B,
\qquad
\mathcal S_B(x)
=\frac{Bx\,\operatorname{Shi}(Bx)-\cosh(Bx)}B.
\tag{7.14}
$$

At level $s$,

$$
\chi^{(s)\prime\prime}(x)
=
\frac{2Ga^s}{s!(mP)^s}
\frac{(Ex-m^2)^s}{x},
\tag{7.19}
$$

with solution

$$
\chi^{(s)}
=
\frac{2Ga^s}{s!(mP)^s}
\left[
(-m^2)^s(x\log x-x)
+
\sum_{j=1}^{s}
\binom sj
E^j(-m^2)^{s-j}
\frac{x^{j+1}}{j(j+1)}
\right].
\tag{7.20}
$$

Every massive level retains a logarithmic term. Pure polynomials arise only in a formal massless scaling limit. The aligned solution is exhaustive for the selected projection because $y$ becomes affine in $x$; it does not solve the generic two-invariant PDE.

The position-space generator is the complex-shift expansion

$$
\frac{M}{\sqrt{r^2-2ira\cos\theta-a^2}}
=M\sum_{\ell\geq0}
\frac{(ia)^\ell P_\ell(\cos\theta)}
{r^{\ell+1}},
\tag{7.16}
$$

which makes the even mass/electric and odd current/magnetic alternation explicit.

# Coherent dressing, zero-frequency modes, and hard Ward action

For a coherent displacement

$$
R[f]
=\sum_\eta\int d\mu(k)
\left(
f_\eta a_\eta^\dagger-f_\eta^*a_\eta
\right),
$$

Baker--Campbell--Hausdorff gives

$$
e^{-R}a_\eta e^R=a_\eta+f_\eta,
\qquad
e^{-R}h_{\mu\nu}e^R=h_{\mu\nu}+h^f_{\mu\nu}.
\tag{3.31--3.33}
$$

The leading profile reproduces

$$
C^f_{AB}
=-4G\,S^{(0)}_{AB}
=-2\mathcal D_{AB}T_{\mathrm{VV}},
\tag{3.35}
$$

while

$$
f_\eta^{\mathrm{Kerr}}
=f_\eta^{(0)}e^{-i\mathcal W_\eta}
\tag{3.36}
$$

generates the linearized multipole tower after gauge reconstruction of the Coulombic field.

The moment/frequency dictionary is

$$
\int_{-\infty}^{\infty}du\,u^se^{-i\omega u}
=2\pi i^s\delta^{(s)}(\omega),
\tag{3.41}
$$

so the soft moment probes a zero-frequency derivative rather than an ordinary finite-frequency radiative mode.

Assuming the tree-level soft theorem,

$$
\left.
\partial_\omega^s
\bigl[\omega\mathcal M_{n+1}^{(\eta)}(\omega q)\bigr]
\right|_{\omega=0}
=
\sum_i\sigma_i
\mathcal D_{q,\eta,i}^{(s)}\mathcal M_n,
\tag{5.4}
$$

the paper smears the hard operator with the same $\mathcal K^{(s,0)}$ and defines

$$
\mathcal Q_s^{\mathrm{hard}}(t)
|\mathrm{hard}\rangle
=-\sum_i\sigma_i
\mathcal D_{t,i}^{(s)}
|\mathrm{hard}\rangle.
\tag{5.7}
$$

Then

$$
\langle\mathrm{out}|
[\mathcal Q_s^{\mathrm{soft}}+\mathcal Q_s^{\mathrm{hard}},S]
|\mathrm{in}\rangle=0.
\tag{5.2}
$$

This establishes a representation of the assumed soft theorem. It does not prove an anomaly-free measure, an exact loop-level charge, or a complete massive timelike-infinity contribution.

# The frame algebra: global polynomial symbols before local chiral reduction

The field-independent linear soft charges commute because their kernels do not depend on $C$:

$$
\{
Q_{s,\mathrm{lin}}^{\mathrm{soft}}(t),
Q_{s',\mathrm{lin}}^{\mathrm{soft}}(t')
\}_{\mathrm{AS}}=0.
\tag{6.2}
$$

The first non-Abelian term comes from the homogeneous action on the other inhomogeneous shift:

$$
\mathbb L_t^{(s)}\nu_{t'}^{(0)}
-
\mathbb L_{t'}^{(s')}\nu_t^{(0)}
=\nu_{[t,t']_\star}^{(0)}
+\Delta_{t,t'}.
\tag{6.9}
$$

If the completed transformations exist and close, Hamiltonian generation and Jacobi imply

$$
\boxed{
\{
Q_s^{\mathrm{total}}(t),
Q_{s'}^{\mathrm{total}}(t')
\}
=
Q_{s+s'-1}^{\mathrm{total}}([t,t']_\star)
+\mathcal K_{s,s'}[t,t';C].
}
\tag{6.14}
$$

The boundary functional $\mathcal K$ is central only if it is field-independent. With radiative boundary data it may instead be a memory-dependent cocycle.

The universal part is the principal-symbol algebra. Introduce auxiliary cotangent coordinates $p_A$ and

$$
F_t(x,p)
=t^{A_1\cdots A_s}(x)
p_{A_1}\cdots p_{A_s}.
\tag{6.23}
$$

With the paper's convention

$$
\{F,G\}_{T^*S^2}
=
\frac{\partial F}{\partial p_A}
\frac{\partial G}{\partial x^A}
-
\frac{\partial F}{\partial x^A}
\frac{\partial G}{\partial p_A},
\tag{6.18}
$$

define

$$
\{F_t,F_{t'}\}_{T^*S^2}
=F_{[t,t']_\star}.
\tag{6.24}
$$

This full polynomial algebra satisfies antisymmetry and Jacobi and obeys the filtered degree rule

$$
[\mathfrak g_s,\mathfrak g_{s'}]_\star
\subset
\mathfrak g_{s+s'-1}.
\tag{6.26}
$$

Its highest-rank component is the symmetric Schouten bracket, but trace descendants are needed for exact global closure. An STF-only or parity-only projection need not close. At low levels,

$$
[T_1,T_2]_\star=0,
\qquad
[Y,T]_\star=Y^AD_AT,
$$

$$
[Y_1,Y_2]_\star^A
=Y_1^BD_BY_2^A-Y_2^BD_BY_1^A.
\tag{6.29--6.35}
$$

The divergence-free $s=1$ representatives

$$
Y_\Psi^A=\epsilon^{AB}D_B\Psi
$$

close as $\mathrm{SDiff}(S^2)$. Gradient representatives do not. For $s\geq2$, the Kerr-selected single-parity data also do not form a closed subalgebra.

Only after choosing a local complex patch and one chirality does one obtain

$$
F_m^{(h)}
=z^{m+h-1}p_z^{h-1},
$$

$$
\{F_m^{(h)},F_n^{(h')}\}
=
\bigl((h-1)n-(h'-1)m\bigr)
F_{m+n}^{(h+h'-2)}.
\tag{6.74}
$$

Thus the safe global statement is a real polynomial Poisson algebra on $T^*S^2$ with local $w_{1+\infty}$-type chiral reductions.

# Intrinsic/canonical frame trajectory

The level-zero dictionary is

$$
C_{AB}^{\mathrm{intrinsic}}
-
C_{AB}^{\mathrm{canonical}}
=-2\mathcal D_{AB}T_{\mathrm{VV}}.
\tag{7.1}
$$

At general level,

$$
\Delta_t^{(s)}C_{AB}\big|_{\mathrm{selected}}
=\mathcal K_{AB}^{(s,0)}[t].
\tag{7.2}
$$

The Kerr source therefore selects a trajectory

$$
a^\mu
\longmapsto
\{
T_{\mathrm{VV}},
Y_{\mathrm{Kerr}}^A,
K_{\mathrm{Kerr}}^{AB},
\ldots
\}
\tag{7.25}
$$

through the ambient space of frame data. The first point is fixed completely, the second only through the curl of $Y^A$, and higher points only through the maximally longitudinal component of one parity. The Kerr locus is not itself a subalgebra.

This dictionary is leading post-Minkowskian and Coulombic/soft. It is not an all-orders map from exact Kerr to a canonical Bondi gauge.

# Displacement, spin, and higher memory moments

For a regulator $\rho(u)$, define

$$
M_{AB}^{(s)}[\rho]
=\int du\,\rho(u)u^s\widehat N_{AB},
\tag{8.1}
$$

and the projected observable

$$
\mathfrak M_s[t;\rho]
=\int_{S^2}
\mathcal K_{AB}^{(s,0)}[t]
M^{(s)AB}[\rho].
\tag{8.2}
$$

At $s=0$ this contains displacement memory. At $s=1$ the Kerr-selected equation sees only the coexact part of

$$
Y_A=D_A\Phi+\epsilon_A{}^BD_B\Psi,
$$

so it captures the curl/spin-memory sector but not the electric gradient sector. Higher moments alternate electric and magnetic projections.

The all-level statement is schematic. Opposite parity, trace descendants, non-universal soft terms, endpoint terms, and regulator dependence remain. The possible cocycle depends on the boundary prescription and memory data; the paper does not produce a universal numerical central charge.

# Ordering and quantization

Classically,

$$
\{F_t,F_{t'}\}_{T^*S^2}=F_{[t,t']_\star}
$$

is exact. A covariant ordered realization introduces lower-degree curvature, density, STF, and integration-by-parts terms. One representative is

$$
\operatorname{Op}_\nabla(t)\psi
=\frac1{2^s}
\sum_{r=0}^s
\binom sr(-1)^r
D_{A_1}\cdots D_{A_r}
\left[
t^{A_1\cdots A_s}
D_{A_{r+1}}\cdots D_{A_s}\psi
\right].
\tag{6.59}
$$

The induced ordered commutator has the form

$$
[F,G]_{\star_\nabla}
=\{F,G\}_{T^*S^2}
+\text{curvature and lower-degree terms}.
\tag{6.62}
$$

Closure then holds by construction for the chosen operator algebra, but the lower terms are not universal. The Groenewold--Van Hove obstruction prevents identifying the classical polynomial bracket with an exact naive quantum commutator on all observables. No complete quantum $w_{1+\infty}$ module, anomaly analysis, or preferred ordering is given.

# Translation to local CPS and charge conventions

The paper begins with a chosen radiative Poisson bracket. It does not reconstruct

$$
S\longrightarrow\delta S
\longrightarrow\theta
\longrightarrow\omega=\delta\theta
$$

including null endpoint and corner terms. In local CPS language:

- $C_{AB}$ is the radiative configuration variable and $\widehat N_{AB}$ its selected canonical momentum.
- $\mathcal K_{AB}^{(s,0)}$ is the field-independent Hamiltonian displacement of the shear.
- $\mathbb L_t^{(s)}C$ is the missing homogeneous completion needed for a non-Abelian charge algebra.
- the $u^s$ factor selects a soft-frequency derivative;
- the hard operator is a Ward representation, not a phase-space derivation;
- $\mathcal K_{s,s'}[C]$ is a possible boundary/memory cocycle, not an established central extension.

For current projects the transferable pieces are:

1. the explicit distinction between a boundary-condition-changing inhomogeneous shift and its homogeneous completion;
2. the warning that a single parity/STF projection need not close;
3. the global-versus-chiral distinction for the proposed $w$-algebra;
4. the aligned-spin inverse Hessian as a reusable symbolic benchmark;
5. the separation of a quasilocal memory projection from a complete flux/balance law.

# Verification log

## Checked

- **Mathematica:** reproduced $\mathcal D_{AB}x=0$ in explicit unit-sphere coordinates for a general $\ell=0,1$ function.
- **Mathematica:** reproduced $d^2(2Gx\log x)/dx^2=2G/x$, confirming the VV inverse equation under $x>0$.
- **Mathematica:** differentiated $\mathcal C_B$ and $\mathcal S_B$ and reproduced both aligned generating-function ODEs, assuming $x>0$ and a fixed real branch with $B>0$.
- **Mathematica:** reproduced Eq. (7.20) from Eq. (7.19) for every level $s=0,\ldots,10$.
- **Mathematica:** derived $y=\alpha+\beta x$ from the aligned four-vectors using $E^2-P^2=m^2$.
- **Mathematica:** reproduced the complex-shift Legendre expansion through order $a^{10}$.
- **Mathematica:** reproduced the Fourier multiplier identity
  $u^se^{-i\omega u}=i^s\partial_\omega^se^{-i\omega u}$
  for $s=0,\ldots,8$.
- **Mathematica:** reproduced the scalar--vector, vector--vector, and rank-two--scalar cotangent brackets, the local chiral bracket (6.74), and a generic canonical-Poisson Jacobi identity.

## Blocked

- The generic-spin inverse PDE is not solved in the source; there is no complete target against which to check the omitted parity component.
- The exact $\mathbb L_t^{(s)}$ for $s\geq2$, its trace/curvature descendants, density weights, and retarded-time completion are not specified. The conditional total-charge algebra therefore cannot be independently reproduced at those levels.
- The Ashtekar--Streubel normalization and endpoint prescription are left operational. Absolute charge normalizations, boundary improvements, and the memory cocycle cannot be fixed from the paper alone.
- The hard flux formula suppresses the explicit massive $i^\pm$ completion and assumes the tree-level soft theorem. No all-loop Ward identity was checked.
- The coherent-state profile requires a gauge reconstruction of the Coulombic metric that is not carried out.
- The all-orders memory relation omits opposite parity, trace descendants, non-universal terms, and regulator-independent endpoint data.
- No preferred quantum ordering or representation is supplied, so the quantum algebra cannot be checked beyond the classical principal symbol.
- The paper uses a chosen radiative phase space rather than deriving the full null CPS with hypersurface and corner terms.

## Failed

No independently reproduced algebraic formula listed above failed. This does not validate the conditional higher-spin closure, boundary cocycle, generic-spin solution, all-orders flux interpretation, or quantum representation.
