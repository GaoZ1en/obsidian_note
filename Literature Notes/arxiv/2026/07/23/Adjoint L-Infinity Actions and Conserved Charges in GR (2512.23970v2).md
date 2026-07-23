---
paper id: 2512.23970v2
title: Adjoint L-Infinity Actions and Conserved Charges in GR
authors:
  - Changsun Choi
  - Ryan E. Grady
publication date: 2025-12-30T03:49
abstract: |-
  The paper constructs an infinity-adjoint action for a cyclic local L-infinity algebra and applies it to the Einstein--Cartan--Palatini L-infinity presentation. A localized diffeomorphism background produces a three-form current whose on-shell representative becomes the exterior derivative of a Palatini Noether--Wald two-form in a symmetry-adapted frame. The resulting horizon integral reproduces Schwarzschild and Kerr entropy. The v2 source also contains three repairable but consequential formula errors, recorded in the verification log.
comments: "v2: clarified conventions, e.g., shifts, throughout; significant revision of Sections 6 and 7; addition of application to Kerr spacetime"
url: https://arxiv.org/abs/2512.23970v2
summary: "A full algebra-to-horizon reconstruction of the L-infinity current and Palatini charge, with the v2 definition and action typos isolated before reuse."
tags: []
---

Back to [[2026_07_23_overview]].

Reason codes: T1-charge, T1-Wald-CPS, T2-model, T3-math. The technical priority is the explicit first-order-gravity current and horizon charge. There is no tracked-author signal.

This note follows the **corrected** algebraic reading forced by the paper's own proper-subset formula and exact-sequence requirement. In Definition 4.3 the first displayed equality subtracts the wrong pure term; in the ECP action reconstruction two occurrences of \(de\) have the wrong form degree. Both errors are visible in the rendered v2 PDF. The downstream charge calculation can still be reconstructed after the explicit repairs stated below, but the printed chain should not be cited literally.

## How to read this long paper

The efficient route is:

1. Read §§2.1--2.2 only far enough to fix the cohomological shift, cyclic degree \(-3\), and the local Chevalley--Eilenberg complexes.
2. Read §§3.1--3.2 for the distinction between compatible, Hamiltonian, and equivariant actions.
3. Read Definition 4.3 together with Remark 4.7. The proper-subset expansion and the skew-product map identify the correction to the first equality.
4. Read §5 as the variational-bicomplex bridge from an equivariant action to a localized current.
5. Read §6 as the concrete dictionary for Einstein--Cartan--Palatini fields, equations, brackets, and pairing.
6. Read Theorem 7.1 and Lemmas 7.3--7.4 before the black-hole examples. They state the exact local assumptions under which \(J_3[\xi]=d\mathcal Q[\xi]\).
7. Use the Schwarzschild and Kerr subsections as checks of the final two-form, not as proofs of the preceding L-infinity construction.

The paper has no appendices or conclusion. Its logical spine is

$$
\text{cyclic local }L_\infty\text{ algebra}
\longrightarrow
\text{corrected infinity adjoint}
\longrightarrow
S^{\mathrm{tot}}
\longrightarrow
J_3[\xi]
\longrightarrow
d\mathcal Q[\xi]
\longrightarrow
Q_H[\xi]
\longrightarrow
S_{\mathrm{BH}}.
$$

## Source structure

| Source part | Role in the argument | Printed pages |
|---|---|---:|
| §1 | Announces the algebraic infinity-adjoint theorem and the ECP charge theorem. | 1--3 |
| §2.1 | Defines local cyclic \(L_\infty\) algebras, grading, shifts, pairing, and the BV action. | 4--7 |
| §2.2 | Defines chains, cochains, jets, local functionals, and local CE cohomology. | 7--9 |
| §3 | Defines an action as an extension and distinguishes compatible, Hamiltonian, and equivariant actions. | 9--15 |
| §4.1 | Gives the infinity-adjoint brackets and proves the generalized Jacobi identities. | 16--18 |
| §4.2 | Establishes locality, cyclic compatibility, Hamiltonianity, and recovery of the original action at zero background. | 18--20 |
| §5 | Uses the Costello--Gwilliam Noether theorem to define a current map and a Poincare-dual charge. | 20--21 |
| §6 | Lists the CGRS ECP complex, brackets, cyclic pairing, and reconstructed ECP action. | 21--25 |
| §7 through Lemma 7.4 | Restricts to diffeomorphisms, differentiates the equivariant action, and proves local exactness of the current. | 26--29 |
| Schwarzschild subsection | Evaluates the two-form on a static tetrad and obtains the area law. | 29--31 |
| Kerr subsection | Repeats the horizon calculation in a Carter tetrad and checks the rotating area law. | 31--35 |

The displays are unnumbered. Stable references below therefore use definition, proposition, theorem, source section, and printed-page labels rather than invented equation numbers.

## Grading, locality, and the cyclic theory

The paper works cohomologically. The unshifted brackets

$$
\ell_k:\mathcal L^{\otimes k}\longrightarrow\mathcal L
$$

have degree \(2-k\) and are graded antisymmetric. If \(s:\mathcal L\to\mathcal L[1]\) is the suspension, the shifted Taylor components are

$$
s\ell_k=\delta_k s^{\otimes k},
\qquad |\delta_k|=1.
$$

A local \(L_\infty\) algebra is the space of sections of a graded vector bundle whose brackets are polydifferential operators. A cyclic structure of degree \(-3\) is a nondegenerate bundle pairing

$$
\langle-,-\rangle_L:L\otimes L
\longrightarrow \operatorname{Dens}_M[-3]
$$

for which

$$
(\alpha_1,\ldots,\alpha_{n+1})
\longmapsto
\left\langle
\ell_n(\alpha_1,\ldots,\alpha_n),\alpha_{n+1}
\right\rangle
$$

is graded antisymmetric in all arguments. The shifted pairing is

$$
\langle\alpha,\beta\rangle^{\mathrm{sh}}
=(-1)^{|\alpha|}
\langle s^{-1}\alpha,s^{-1}\beta\rangle.
$$

For a degree-zero shifted field \(\alpha\in\mathcal M[1]\), the action is

$$
S_{\mathcal M}(\alpha)
=\sum_{k\geq1}\frac{1}{(k+1)!}
\left\langle
\alpha,\delta_k(\alpha,\ldots,\alpha)
\right\rangle^{\mathrm{sh}}.
$$

In the unshifted convention used in §§6--7,

$$
S_{\mathcal M}(\alpha)
=\sum_{k\geq1}
(-1)^{k(k-1)/2}\frac{1}{(k+1)!}
\langle\alpha,\ell_k(\alpha,\ldots,\alpha)\rangle.
$$

Thus an ECP theory with only \(\ell_1,\ell_2,\ell_3\) carries the coefficients

$$
\frac12\langle\alpha,\ell_1\alpha\rangle
-\frac16\langle\alpha,\ell_2(\alpha,\alpha)\rangle
-\frac1{24}\langle\alpha,\ell_3(\alpha,\alpha,\alpha)\rangle.
$$

### Local cochains and functionals

The chain and cochain complexes are

$$
C_*(\mathcal L)=\operatorname{Sym}(\mathcal L[1]),
$$

$$
C^*(\mathcal L)
=\prod_{n\geq0}
\operatorname{Hom}
\big((\mathcal L[1])^{\otimes n},\mathbb R\big)_{S_n}.
$$

Writing \(J(L)\) for the infinite jet bundle and \(D_M\) for differential operators,

$$
\mathcal O_{\mathrm{loc}}(L)
=\operatorname{Dens}_M\otimes_{D_M}
\mathcal O_{\mathrm{red}}(J(L)),
$$

$$
C^*_{\mathrm{red,loc}}(\mathcal L)
=\operatorname{Dens}_M\otimes_{D_M}
C^*_{\mathrm{red}}(J(L)).
$$

The quotient by total derivatives is already built into these local functionals. Compact support is used in the formal construction; the later horizon limits are a separate analytic extension that the paper does not fully develop.

## Compatible and Hamiltonian actions

An action of \(\mathcal L\) on \(\mathcal M\) is an extension

$$
0\longrightarrow\mathcal M
\longrightarrow\mathcal L\oplus\mathcal M
\longrightarrow\mathcal L\longrightarrow0,
$$

with \(\mathcal M\) an ideal. Mixed brackets have the type

$$
\ell_{r+s}^{\ltimes}:
\mathcal L^{\otimes r}\otimes\mathcal M^{\otimes s}
\longrightarrow\mathcal M,
\qquad r\geq0,\quad s\geq1.
$$

Compatibility means that

$$
\left\langle
\ell_{r+s}^{\ltimes}(X_1,\ldots,X_r,m_1,\ldots,m_s),
m_{s+1}
\right\rangle
$$

is graded antisymmetric in the \(m\)-variables. The two action complexes are

$$
\operatorname{Ham}(\mathcal L,\mathcal M)
=\ker\left[
C^*_{\mathrm{red,loc}}(\mathcal L\oplus\mathcal M)[-1]
\longrightarrow
C^*_{\mathrm{red,loc}}(\mathcal M)[-1]
\right],
$$

$$
\operatorname{Act}(\mathcal L,\mathcal M)
=\operatorname{Ham}(\mathcal L,\mathcal M)
\big/C^*_{\mathrm{red,loc}}(\mathcal L).
$$

The source is internally inconsistent about the shift in the denominator: the central subcomplex and the exact sequence use \([-1]\), while Definition 3.5 omits it. Compatible actions are Maurer--Cartan elements of \(\operatorname{Act}\); a Hamiltonian action is a lift to \(\operatorname{Ham}\). With \(S^{\mathcal L}\) the mixed action and \(S^{\mathcal M}\) the original theory,

$$
S^{\mathrm{tot}}=S^{\mathcal L}+S^{\mathcal M}
$$

satisfies the equivariant classical master equation when the lift exists.

## The corrected infinity-adjoint action

For \(p_i=(X_i,u_i)\in\mathfrak g\oplus\mathfrak g\), define

$$
p_i^A=
\begin{cases}
X_i,&i\in A,\\
u_i,&i\notin A.
\end{cases}
$$

The operative formula in Definition 4.3 is the proper-subset expansion

$$
\ell_k^{\ltimes}(p_1,\ldots,p_k)
=\left(
\ell_k(X_1,\ldots,X_k),
\sum_{A\subsetneq\{1,\ldots,k\}}
\ell_k(p_1^A,\ldots,p_k^A)
\right).
$$

This equals

$$
\boxed{
\ell_k^{\ltimes}(p_1,\ldots,p_k)
=\left(
\ell_k(X_1,\ldots,X_k),
\ell_k(X_1+u_1,\ldots,X_k+u_k)
-\ell_k(X_1,\ldots,X_k)
\right)}.
$$

The PDF instead prints subtraction of \(\ell_k(u_1,\ldots,u_k)\). That printed equality is false. More decisively, setting every \(X_i=0\) would make the kernel bracket vanish, contradicting the stated extension and the theorem's recovery of the original theory. The corrected subtraction of the pure \(X\) term leaves

$$
\ell_k^{\ltimes}((0,u_1),\ldots,(0,u_k))
=(0,\ell_k(u_1,\ldots,u_k)).
$$

The paper's proof and Remark 4.7 follow the corrected version. With

$$
\Phi(X,u)=(X,X+u),
$$

the coderivation is conjugate to the direct-product coderivation:

$$
\operatorname{Sym}(\Phi)\circ\delta^{\ltimes}
=(\delta_{\mathcal M}\oplus\delta_{\mathcal M})
\circ\operatorname{Sym}(\Phi).
$$

This makes \((\delta^{\ltimes})^2=0\) immediate. The explicit proof instead organizes the generalized Jacobiator as a sum, over proper subsets, of Jacobi identities in the original algebra.

The remaining properties are:

- restriction to any \(L_\infty\) subalgebra of the acting copy;
- locality because the new brackets are finite sums of the original polydifferential brackets;
- compatibility from cyclicity of the original pairing;
- Hamiltonianity by the cited Costello--Gwilliam lifting result, with the background-only obstruction said to vanish for a noncurved action;
- recovery of \(S^{\mathcal M}\) when the acting/background copy is set to zero.

The Hamiltonian lift is not constructed explicitly, and the phrase “for type reasons” is not expanded into a displayed grading calculation.

## From an equivariant action to a charge

For an ordinary infinitesimal symmetry algebra, the current map is

$$
J:\mathcal L\longrightarrow\mathcal O_{\mathrm{loc}}(\mathcal M)[-1],
\qquad
X\longmapsto\frac{\delta S^{\mathrm{tot}}}{\delta X}.
$$

Fixing a symmetry \(X\) and localizing it gives

$$
J[X]:\Omega_M^*
\cong\Omega_M^*\otimes\mathbb R_X
\longrightarrow\mathcal O_{\mathrm{loc}}(\mathcal M)[-1].
$$

For a codimension-one submanifold \(N\) with Poincare-dual one-form \(\eta_N\), the charge is

$$
\mathcal Q[X;N]
=\int_MJ[X](\eta_N).
$$

The definition is printed for a generic compact oriented submanifold, but the degree bookkeeping used in the application requires the codimension-one case. The map packages the Noether current in local-cochain language; it does not by itself choose the CPS representative \(\theta(\delta)-\iota_XL\).

## The ECP \(L_\infty\) data

The unshifted ECP complex is

$$
\begin{aligned}
\mathcal M^0
&=\operatorname{Vect}(M)
\oplus\Omega^0(M,\mathfrak{so}(1,3)),
&&(\xi,\rho),\\
\mathcal M^1
&=\Omega^1(M,\mathbb R^{1,3})
\oplus\Omega^1(M,\mathfrak{so}(1,3)),
&&(e,\omega),\\
\mathcal M^2
&=\Omega^3(M,\Lambda^3\mathbb R^{1,3})
\oplus\Omega^3(M,\Lambda^2\mathbb R^{1,3}),
&&(E,\Omega),\\
\mathcal M^3
&=\Omega^1(M,\operatorname{Dens}_M)
\oplus\Omega^4(M,\Lambda^2\mathbb R^{1,3}),
&&(\mathcal X,\mathcal P).
\end{aligned}
$$

Degree zero contains diffeomorphism and Lorentz parameters; degree one contains the coframe and spin connection; the next two degrees contain equations and Noether identities. The induced field transformations are

$$
\delta_{\xi,\rho}e=L_\xi e-\rho\cdot e,
$$

$$
\delta_{\xi,\rho}\omega
=L_\xi\omega+d\rho-[\rho,\omega].
$$

The degree-\(-3\) pairing is

$$
\langle(e,\omega),(E,\Omega)\rangle
=\int_M\operatorname{Tr}
\big(e\curlywedge E+\Omega\curlywedge\omega\big),
$$

$$
\langle(\xi,\rho),(\mathcal X,\mathcal P)\rangle
=\int_M\iota_\xi\mathcal X
+\int_M\operatorname{Tr}(\rho\curlywedge\mathcal P).
$$

Here \(\curlywedge\) combines the spacetime-form wedge with the internal exterior product, while \(\wedge\!\cdot\) combines the spacetime wedge with the Lorentz action on internal multivectors.

The paper lists all nonzero \(\ell_1,\ell_2,\ell_3\). The pieces used later are:

- \(\ell_1(\xi,\rho)=(0,d\rho)\);
- the semidirect Lie bracket on \((\xi,\rho)\);
- the field transformation bracket above;
- the field--field bracket containing \(e\curlywedge d\omega\) and \(e\curlywedge de\);
- the ternary field bracket containing the \(\omega^2e\), \(\omega e^2\), and \(\Lambda e^3\) interactions.

### Reconstructing the Palatini action

The intended endpoint is

$$
S_{\mathrm{ECP}}(e,\omega)
=\int_M\operatorname{Tr}\left[
\frac12e\wedge e\wedge F_\omega
+\frac{\Lambda}{4}e\wedge e\wedge e\wedge e
\right],
$$

$$
F_\omega=d\omega+\frac12[\omega,\omega].
$$

In the intermediate cubic reduction, the PDF twice prints

$$
\omega\wedge e\wedge(\omega\wedge\!\cdot de).
$$

This has form degree \(1+1+(1+2)=5\) in a four-dimensional action. It also disagrees with the immediately preceding \(\ell_3\), which contains \(\omega\wedge\!\cdot e\). The repair is

$$
\omega\wedge e\wedge(\omega\wedge\!\cdot e).
$$

With that repair and the source identities

$$
\int_M\operatorname{Tr}
\big(2\omega\wedge e\wedge de+e\wedge e\wedge d\omega\big)=0,
$$

$$
e\wedge e\wedge[\omega,\omega]
=-2\omega\wedge e\wedge(\omega\wedge\!\cdot e),
$$

the coefficients reduce to

$$
\frac12e\wedge e\wedge d\omega
+\frac14e\wedge e\wedge[\omega,\omega]
+\frac{\Lambda}{4}e^4,
$$

which is the displayed ECP action. Its field equations are

$$
e\wedge F_\omega+\Lambda e^3=0,
\qquad
d_\omega(e\wedge e)=0.
$$

For a nondegenerate coframe the second is treated as \(d_\omega e=0\). The charge theorem sets \(\Lambda=0\).

## The localized diffeomorphism current

Restrict the corrected infinity-adjoint action to

$$
\operatorname{Vect}(M)\subset\mathcal M^0_{\mathrm{ECP}},
\qquad (\xi,\rho=0),
$$

and introduce a background \(A_\xi\in\Omega_M^*\otimes\operatorname{Vect}(M)\). The source chooses the minimal-coupling representative \(d\mapsto d+A_\xi\), obtaining

$$
S^{\mathrm{tot}}(A_\xi,e,\omega)
=S_{\mathrm{ECP}}(e,\omega)
+\frac16\int_M\operatorname{Tr}\left[
2e^2\wedge A_\xi\!\cdot\omega
-2\omega\wedge e\wedge A_\xi\!\cdot e
\right].
$$

Differentiation with respect to the background produces

$$
J_3[\xi]
=\operatorname{Tr}\left[
\frac13e^2\wedge L_\xi\omega
-\frac13\omega\wedge e\wedge L_\xi e
\right].
$$

The source calls this extension unique, but the cited result gives uniqueness only up to homotopy. No direct master-equation calculation is displayed for this chosen representative.

## Exactness in a symmetry-adapted frame

Define the two-form

$$
\mathcal Q[\xi]
=\frac12\operatorname{Tr}
\big(\iota_\xi\omega\wedge e\wedge e\big).
$$

For \(\Lambda=0\), Lemma 7.3 uses

$$
d_\omega e=0,
\qquad
e\wedge F_\omega=0,
$$

and Cartan's identity

$$
L_\xi\omega
=\iota_\xi F_\omega+d_\omega(\iota_\xi\omega)
$$

to obtain

$$
d\mathcal Q[\xi]
=\frac12\operatorname{Tr}
\big(e^2\wedge L_\xi\omega\big).
$$

Hence

$$
J_3[\xi]
=d\mathcal Q[\xi]+\mathcal A[\xi],
$$

$$
\mathcal A[\xi]
=\operatorname{Tr}\left[
-\frac16e^2\wedge L_\xi\omega
-\frac13\omega\wedge e\wedge L_\xi e
\right].
$$

Lemma 7.4 now assumes that \(\xi\) is Killing and locally nonzero. For any initial coframe,

$$
L_\xi e^a=\lambda^a{}_b e^b.
$$

Killing's equation gives

$$
\lambda^T\eta+\eta\lambda=0.
$$

Solving along the flow of \(\xi\),

$$
\xi\Lambda=-\Lambda\lambda,
\qquad \Lambda\in SO(1,3),
$$

produces \(e'=\Lambda e\) with \(L_\xi e'=0\). Torsion freedom then implies

$$
L_\xi\omega'=0.
$$

Thus \(\mathcal A=0\) in this frame and

$$
J_3[\xi]=d\mathcal Q[\xi].
$$

For a three-chain \(N\),

$$
\int_NJ_3[\xi]
=\frac12\int_{\partial N}
\operatorname{Tr}
\big(\iota_\xi\omega\wedge e\wedge e\big).
$$

This is local in a patch where \(\xi\neq0\). At a bifurcation surface \(\xi=0\); the black-hole calculations therefore use limits from the exterior rather than evaluating the theorem directly on the bifurcation surface.

## Schwarzschild horizon integral

Let

$$
f^2=1-\frac{r_S}{r},
\qquad
\xi=\frac1c\partial_t.
$$

The static tetrad is

$$
e^0=cf\,dt,
\qquad
e^1=f^{-1}dr,
\qquad
e^2=r\,d\theta,
\qquad
e^3=r\sin\theta\,d\phi.
$$

The nonzero connection components are

$$
\omega^{01}=f'e^0,
\qquad
\omega^{12}=-\frac fr e^2,
\qquad
\omega^{13}=-\frac fr e^3,
\qquad
\omega^{23}=-\frac{\cot\theta}{r}e^3.
$$

Because the tetrad and connection are \(t\)-independent,

$$
L_\xi e=L_\xi\omega=0
$$

for \(r>r_S\). The surface gravity is

$$
\kappa
=\lim_{r\downarrow r_S}ff'
=\frac1{2r_S}.
$$

Only \(\omega^{01}\) contributes to the horizon two-form:

$$
\mathcal Q[\xi]
=2ff'e^2\wedge e^3
=2r^2ff'\sin\theta\,d\theta\wedge d\phi.
$$

Therefore

$$
Q_H[\xi]
=2\kappa A_H.
$$

The physical prefactor is restored only at this stage:

$$
S_{\mathrm{BH}}
=\frac{k_B}{\hbar}
\frac{2\pi}{\kappa}
\frac{c^3}{16\pi G}Q_H[\xi]
=\frac{k_Bc^3}{4\hbar G}A_H
=\frac{k_B}{4}\frac{A_H}{\ell_P^2}.
$$

The \(1/(16\pi G)\) normalization is external to the abstract \(L_\infty\) pairing used earlier.

## Kerr horizon integral

Set

$$
a=\frac{J}{\mathbf m c},
\qquad
r_S=\frac{2G\mathbf m}{c^2},
$$

$$
\rho^2=r^2+a^2\cos^2\theta,
\qquad
\Delta=r^2+a^2-r_Sr=(r-r_+)(r-r_-).
$$

The source assumes \(r_S>2|a|\), excluding the extremal case. The Carter tetrad is

$$
\begin{aligned}
e^0&=\frac{\sqrt\Delta}{\rho}
\big(cdt-a\sin^2\theta\,d\phi\big),\\
e^1&=\frac{\rho}{\sqrt\Delta}dr,\\
e^2&=\rho\,d\theta,\\
e^3&=\frac{\sin\theta}{\rho}
\big((r^2+a^2)d\phi-acdt\big).
\end{aligned}
$$

The outer-horizon generator is

$$
\xi=\frac1c\partial_t+\Omega_H\partial_\phi,
\qquad
\Omega_H=\frac{a}{r_Sr_+}
=\frac{a}{r_+^2+a^2}.
$$

The root relations are

$$
r_++r_-=r_S,
\qquad
r_+r_-=a^2,
\qquad
r_+^2+a^2=r_Sr_+.
$$

In ingoing Kerr coordinates, the paper expands \(-\xi^2\) about the horizon and obtains

$$
\kappa=\frac{r_+-r_-}{2r_Sr_+}.
$$

The Carter tetrad and the six displayed connection one-forms are \(t,\phi\)-independent, so \(L_\xi e=L_\xi\omega=0\) outside the horizon. Their contractions satisfy

$$
\iota_\xi e^0\longrightarrow0,
\qquad
\iota_\xi e^3\longrightarrow0,
$$

while the divergent tetrad coefficient in \(\omega^{01}\) leaves the finite limit

$$
\iota_\xi\omega^{01}\longrightarrow\kappa.
$$

One intermediate printed equality drops

$$
-2r\Delta.
$$

Indeed, the difference between the preceding numerator and the claimed factorization is exactly \(-2r(a^2+r^2-r_Sr)=-2r\Delta\). The equality is false away from the horizon, but the omitted term vanishes in the limit and does not alter \(\iota_\xi\omega^{01}\to\kappa\).

The area and charge are

$$
A_H=4\pi(r_+^2+a^2),
$$

$$
Q_H[\xi]
=2\int_{\Sigma_{r_+}}\kappa e^2\wedge e^3
=2\kappa A_H.
$$

The same normalization then gives

$$
S_{\mathrm{BH}}
=\frac{k_B}{4}\frac{A_H}{\ell_P^2}.
$$

The paper invokes, but does not construct, Kerr Kruskal coordinates in which

$$
\xi=\kappa(V\partial_V-U\partial_U)
$$

and hence vanishes on the bifurcation surface.

## Translation to CPS and Noether--Wald language

| Paper object | Local interpretation |
|---|---|
| Degree-\(-3\) cyclic pairing | BV pairing whose shift induces the Poisson bracket on local cochains. |
| Hamiltonian \(L_\infty\) action | Symmetry action admitting an equivariant Hamiltonian lift. |
| \(A_\xi=\beta\otimes\xi\) | Local source for a diffeomorphism generator. |
| \(\delta S^{\mathrm{tot}}/\delta A_\xi\) | Smeared Noether current. |
| \(J_3[\xi]\) | Lagrangian three-form current in four dimensions. |
| \(\beta=\eta_N\) | Poincare-dual one-form localizing the current on a hypersurface. |
| \(\mathcal Q[\xi]=\tfrac12\operatorname{Tr}(\iota_\xi\omega e^2)\) | Palatini representative of the Noether--Wald two-form. |
| \(J_3=d\mathcal Q\) | On-shell exactness in a local symmetry-adapted Lorentz gauge. |
| \(Q_H=\int_H\mathcal Q\) | Horizon charge used in the Wald entropy normalization. |

For the Palatini Lagrangian one expects a presymplectic potential of the form

$$
\theta(\delta)
\sim\frac12\operatorname{Tr}
\big(e^2\wedge\delta\omega\big).
$$

The paper does not derive this potential or explicitly prove

$$
J_\xi=\theta(L_\xi)-\iota_\xi L,
$$

nor does it calculate

$$
k_\xi=\delta Q_\xi-\iota_\xi\theta.
$$

Therefore the bridge to CPS is precise at the level of objects and degrees but not a demonstrated equality of representatives. The paper supplies an algebraic route to the Palatini two-form; the vault's gravitational-energy work still requires integrability, Lorentz-gauge covariance, boundary conditions, and corner terms.

## Global derivation ledger

1. A cyclic local \(L_\infty\) algebra supplies a classical BV action.
2. The corrected infinity-adjoint bracket makes a second copy act on the theory while retaining the original interacting action at zero background.
3. Hamiltonian lifting turns the mixed brackets into an equivariant action.
4. Localizing a diffeomorphism parameter and differentiating the action produces \(J_3[\xi]\).
5. The CGRS algebra identifies the abstract fields with \(e,\omega\) and reconstructs the ECP action after repairing the cubic typo.
6. At \(\Lambda=0\), torsion freedom, \(e\wedge F_\omega=0\), and Cartan's identity reduce the current to \(d\mathcal Q+\mathcal A\).
7. A local Lorentz rotation along a nonvanishing Killing flow imposes \(L_\xi e=L_\xi\omega=0\), so \(\mathcal A=0\).
8. Stokes turns the hypersurface current into a codimension-two integral.
9. Exterior limits of the Schwarzschild and Kerr stationary frames give \(Q_H=2\kappa A_H\).
10. The separately restored Einstein normalization yields \(S=A_H/(4\ell_P^2)\).

## Verification log

### Checked

- **Definition 4.3 diagnostic, Mathematica.** For \(k=2\), the printed difference minus the proper-subset sum is \(X_1X_2-u_1u_2\), while replacing the subtraction by \(-\ell_2(X_1,X_2)\) gives zero. At \(X_i=0\), the printed formula gives a zero kernel bracket and the corrected formula gives \(\ell_2(u_1,u_2)\).
- **ECP action coefficients, Mathematica.** Under the two integration/representation identities stated by the source, the derivative sector reduces from \(\tfrac13A-\tfrac13B\), \(B=-A/2\), to \(A/2\), and the curvature sector from \(\tfrac18C-\tfrac14D\), \(D=-C/2\), to \(C/4\). The printed \(de\) term has degree \(5\); the repaired \(e\) term has degree \(4\).
- **Schwarzschild tetrad and connection, Mathematica.** The tetrad reproduces the Schwarzschild metric, and all coordinate components of \(de^a+\omega^a{}_b\wedge e^b\) simplify to zero for \(r>r_S\).
- **Schwarzschild horizon chain, Mathematica.** \(ff'=r_S/(2r^2)\), \(\kappa=1/(2r_S)\), \(Q_H=4\pi r_S=2\kappa(4\pi r_S^2)\), and the entropy residual against \(k_Bc^3A_H/(4\hbar G)\) vanishes.
- **Kerr tetrad and connection, Mathematica.** The Carter tetrad reproduces the displayed Boyer--Lindquist metric. All coordinate torsion components vanish for the six displayed spin-connection one-forms in the nonextremal exterior.
- **Kerr horizon chain, Mathematica.** The root identities, \(B(r_+)=0\), \(B'(r_+)\), the coefficient of the near-horizon \(-\xi^2\) expansion, \(\xi_r|_H\), \(\kappa=(r_+-r_-)/(2r_Sr_+)\), and \(\iota_\xi\omega^{01}\to\kappa\) were reproduced. The entropy residual against \(k_Bc^3A_H/(4\hbar G)\) is zero.
- **Kerr omitted term, Mathematica.** The claimed penultimate factorization differs from the preceding numerator by exactly \(-2r\Delta\), which vanishes only in the horizon limit.

### Blocked

- The full generalized-Jacobi, cyclic-sign, Maurer--Cartan, and Hamiltonian-lift chain was not independently implemented. It depends on the complete graded CGRS/Costello--Gwilliam conventions and on a lifting theorem imported rather than proved here.
- The general identity \(d\mathcal Q=\tfrac12\operatorname{Tr}(e^2L_\xi\omega)\) was followed using the printed torsion and field-equation identities, but no independent abstract differential-form implementation with the internal Lorentz product was completed.
- Global Lorentz patching of \(\mathcal Q[\xi]\), extension through the bifurcation surface, outer-boundary orientation, and equality with a fully renormalized CPS Hamiltonian charge are not established by the source.
- The theorem is only proved for \(\Lambda=0\); no AdS version of the exactness argument is supplied.

### Failed

- **Definition 4.3, PDF p. 16.** The equality with \(-\ell_k(u_1,\ldots,u_k)\) is false and destroys the kernel's original \(L_\infty\) brackets. The proper-subset formula and proof require subtraction of the pure \(X\) term.
- **ECP action reconstruction, PDF p. 25.** Both occurrences of \(\omega\wedge e\wedge(\omega\wedge\!\cdot de)\) are five-forms and conflict with the source's own \(\ell_3\). Replacing \(de\) by \(e\) repairs the degree and endpoint action.
- **Kerr contraction, PDF p. 35.** One displayed equality omits \(-2r\Delta\). The equality fails off the horizon, although its limiting conclusion remains correct.
- **Action-complex grading, Definition 3.5.** The quotient omits the \([-1]\) shift used for the same central subcomplex immediately before and in the later exact sequence. The printed types are not mutually consistent.

The usable result is therefore conditional but concrete: with the two explicit algebraic repairs, the paper supplies a coherent route from a corrected infinity-adjoint action to the familiar Palatini horizon two-form, and the two black-hole evaluations independently reproduce the expected area law.
