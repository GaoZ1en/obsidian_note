---
paper id: 2607.09486v1
title: Factorization Algebras and Quantum Groups from Generalized Poisson Sigma Models
authors:
  - Keyou Zeng
publication date: 2026-07-10T15:01
abstract: |-
  The paper introduces generalized Poisson sigma models as higher-dimensional holomorphic-topological analogues of the two-dimensional Poisson sigma model. Their target data are shifted chiral Poisson structures. The construction relates bulk BV theories, enriched boundaries and defects, boundary factorization algebras, Koszul duality, and several forms of quantum groups, with examples from twisted supersymmetric gauge theories and universal bulk-boundary systems.
comments: "132 pages, 28 figures"
url: https://arxiv.org/abs/2607.09486v1
summary: "The reusable core is a coisotropic-lift description of enriched boundaries and corners, whose boundary factorization algebra and universal defects organize quantum-group coproducts, braidings, and associators."
tags: []
---

Back to [[2026_07_13_overview]].

## How the paper is organized

The paper develops one construction at three levels. Sections 2 and 5 define topological and holomorphic-topological generalized Poisson sigma models from shifted Poisson data. Sections 3 and 4 extract boundary operations and their Koszul-dual quantum groups by perturbative factorization-algebra methods. Sections 6 and 7 test this architecture on twisted gauge theories, Yangians, and a universal heat-kernel bulk-boundary model.

- Section 2 builds the topological theory, its AKSZ description, interfaces, defects, and enriched boundary conditions. Sections 2.6 and 2.8 are the most directly reusable parts for boundary and BF-type problems.
- Section 3 derives boundary $P_d$ operations from tree diagrams, relates the bulk complex to a shifted Poisson center, and identifies mixed boundary-corner operations.
- Section 4 interprets the $E_k$ Koszul dual as the algebra of a universal defect. Defect fusion, crossing, and three-defect configurations produce coproduct, $R$-matrix, and associator data.
- Section 5 repeats the construction for holomorphic-topological theories using shifted chiral Poisson brackets.
- Section 6 supplies examples from twisted theories; Section 6.6 gives the boundary Yangian mechanism.
- Section 7 proves universal half-space and corner propagator integrals under heat-kernel assumptions and separates theorems from higher-corner conjectures.

For a selective reading, the shortest useful path is Sections 2.2, 2.6, 3.1-3.2, 3.5, 4.1, 4.3-4.4, 5.2-5.3, 6.6, and 7.3.

## Shifted Poisson data and the BV bulk theory

Let $A=\mathcal O(L)$ be a derived $P_d$ algebra. Its shifted higher brackets are encoded by structure functions

$$\begin{align}
\Pi^{i_1\cdots i_n}(x),
\end{align}$$

and the bulk fields on $\mathbb R^{d+1}$ are

$$\begin{align}
\phi\in\Omega^\bullet(\mathbb R^{d+1})\otimes L, \qquad \eta\in\Omega^\bullet(\mathbb R^{d+1})\otimes L^\vee[d].
\end{align}$$

The generalized Poisson sigma-model action is Eq. (2.8):

$$\begin{align}
S=\int_{\mathbb R^{d+1}} \left[ \eta_i\,d\phi_i +\sum_{n\geq1}\frac{1}{n!} \Pi^{i_1\cdots i_n}(\phi) \eta_{i_1}\cdots\eta_{i_n} \right].
\end{align}$$

The classical master equation is the field-theory form of the $L_\infty$ Jacobi identities. Geometrically, a shifted Poisson Maurer-Cartan element $\pi$ obeys

$$\begin{align}
Q\pi+\frac12[\pi,\pi]=0,
\end{align}$$

and the AKSZ target is $T^*_{\pi}[d]M$. The canonical boundary condition used for the basic boundary algebra is $\eta|_{\partial}=0$, so boundary local operators are functions of $\phi$.

This is a BV/AKSZ phase-space construction, but it is not an Iyer-Wald covariant phase space. The paper does not define a gravitational presymplectic potential, surface-charge variation, or charge-integrability condition.

## Enriched boundaries as coisotropic lifts

An enriched boundary contains its own lower-dimensional Poisson theory. Algebraically, let $A$ be a $P_d$ algebra and $C$ a $P_{d-1}$ algebra. The derived Poisson center is

$$\begin{align}
\mathcal Z(C)=\operatorname{Pol}(C,d-2), \qquad d_{\mathcal Z}=d_{\mathrm{int}}+[\pi,-].
\end{align}$$

Using Poisson additivity,

$$\begin{align}
\operatorname{Alg}_{P_d} =\operatorname{Alg}\bigl(\operatorname{Alg}_{P_{d-1}}\bigr), \tag{2.34}
\end{align}$$

a shifted coisotropic structure on a morphism $\varphi:A\to C$ is a lift

$$
\begin{array}{ccc}
&\mathcal Z(C)&\\
&\nearrow\scriptstyle{\widetilde\varphi}\downarrow&\\
A&\xrightarrow{\varphi}&C.
\end{array}
\tag{2.36}
$$

In the strict case the lift is compatible with the center differential and bracket:

$$\begin{align}
[\pi,\widetilde\varphi(x)]=0, \tag{2.37}
\end{align}$$

$$\begin{align}
\widetilde\varphi(\{x,x'\}_A) =[\widetilde\varphi(x),\widetilde\varphi(x')]. \tag{2.38}
\end{align}$$

If the boundary Poisson sigma model has fields $(\theta,\chi)$, the coupling to bulk $\eta_i$ is

$$\begin{align}
S_{\mathrm{enrich}} =\int_{\mathbb R^d} \sum_{n\geq0}\frac{1}{n!} \Phi_{i,k_1\cdots k_n}(\theta) \eta_i\chi_{k_1}\cdots\chi_{k_n}. \tag{2.40}
\end{align}$$

Expanding the master equation by the number of $\eta$ and $\chi$ fields reproduces the compatibility conditions of the coisotropic lift. Thus the enriched boundary is not merely an added boundary action: its algebraic consistency is the cancellation of bulk-boundary and boundary-boundary BV anomalies.

When a bulk defect ends on this boundary, the intersection supports a corner algebra. The mixed tree operation of Eq. (3.35) sends

$$\begin{align}
\phi_i\otimes O_1(\theta)\otimes\cdots\otimes O_n(\theta)
\longmapsto
\sum_{k_1,\ldots,k_n}
\Phi_{i,k_1\cdots k_n}(\theta) \prod_{a=1}^n\partial_{\theta_{k_a}}O_a. \tag{3.35}
\end{align}$$

This is the paper's most direct boundary/corner dictionary: the abstract map $A\to\mathcal Z(C)$ becomes an explicit operation acting on corner observables.

## Boundary tree diagrams and the $P_d$ algebra

With $\eta|_{\partial}=0$, the boundary observables are $\mathbb C[\phi]$. A reflected half-space propagator attached to a bulk interaction vertex produces the binary operation

$$\begin{align}
\{O_1,O_2\} =\Pi^{ij}(\phi) \partial_iO_1\,\partial_jO_2, \tag{3.9}
\end{align}$$

while configuration-space cycles $\gamma_n$ and tree diagrams give the higher brackets of Eq. (3.15). The half-sphere integral supplies the differential in Eq. (3.16). These calculations reconstruct the classical $P_d$ algebra on boundary observables.

Loop graphs are expected to deform the $P_d$ structure to an $E_d$ algebra. Section 3.3 presents this as the perturbative picture but explicitly leaves a rigorous treatment for future work. It should therefore not be cited as an all-orders construction proved in this paper.

The bulk observables are organized by the higher center. In the free case,

$$\begin{align}
HH_{E_d}(A)\simeq\operatorname{Sym}_A(T_A[-d]), \tag{3.39}
\end{align}$$

and the shifted Poisson interaction changes the differential to

$$\begin{align}
d_\pi=\{\pi,-\}. \tag{3.40}
\end{align}$$

The resulting bulk complex is a shifted Lichnerowicz-Poisson complex. This separates three related objects that can otherwise be conflated: the boundary observable algebra $A$, its bulk deformation complex or center, and a corner algebra $C$ carrying an $A$-module structure.

## Universal defects and quantum-group operations

For an augmented $E_k$ algebra $A$, the Koszul dual is the dual of the iterated bar construction,

$$\begin{align}
K_{E_k}(A)=\operatorname{Bar}^{(k)}(A)^\vee. \tag{4.6}
\end{align}$$

The physical interpretation is that $K_{E_k}(A)$ is the algebra carried by a universal defect that can couple consistently to the original theory. Fusion of two such defects produces the coproduct. Transverse motion and crossing produce braiding data, and changing the parenthesization of three defects produces an associator.

For a Lie bialgebra with cobracket $\delta$, the universal line generators $\rho_a$ satisfy the Lie algebra relation

$$\begin{align}
[\rho_a,\rho_b]=f^c{}_{ab}\rho_c. \tag{4.14}
\end{align}$$

The leading fusion correction gives

$$\begin{align}
\Delta(\rho_c) =\rho_c\otimes1+1\otimes\rho_c +\frac{\hbar}{2}\delta_c{}^{ab}\rho_a\otimes\rho_b. \tag{4.20}
\end{align}$$

The paper then relates $E_2$ boundary algebras to Hopf or quasi-Hopf structures and $E_3$ boundary algebras to quasitriangular structures. In the four-dimensional example, three-line diagrams give the first associator term

$$\begin{align}
\Phi=1+\frac{1}{24}[t_{12},t_{23}]+\cdots, \tag{4.36}
\end{align}$$

and a crossing diagram gives the leading $R$-matrix. The all-orders identification in Conjecture 4.2 is not derived from a completed loop calculation; it is explicitly a conjectural, scheme-dependent extension of the leading results.

## Holomorphic-topological models and the Yangian example

The holomorphic-topological theory replaces shifted Poisson brackets by shifted chiral $\lambda$-brackets. The BV action in Section 5 is the chiral analogue of Eq. (2.8), and weighted boundary trees reproduce binary and higher chiral operations. Section 5.4 treats holomorphic-topological defects and enriched boundaries, but the paper describes parts of their mathematical definition as heuristic and does not construct the purely holomorphic enriched-boundary theory.

In the five-dimensional twisted gauge-theory example, the universal line is

$$\begin{align}
\mathcal P\exp\left[ \sum_{n\geq0}\int\frac{1}{n!}
\partial_z^nA^a\,\rho_a[n] \right].
\tag{6.30}
\end{align}$$

Crossing yields the rational leading term

$$\begin{align}
R=1+\hbar\frac{t}{z}+\cdots, \tag{6.31}
\end{align}$$

and fusion gives

$$\begin{align}
\Delta\rho_c[1] =\rho_c[1]\otimes1+1\otimes\rho_c[1] +\frac{\hbar}{2\pi}[\rho_c[0],t]. \tag{6.44}
\end{align}$$

These are the leading Yangian data. The complete $E_1$-chiral coproduct and the all-orders identification depend on the conjectural extension developed earlier.

## Universal heat-kernel bulk and corners

Let $(\mathcal E,Q)$ be an elliptic complex with gauge-fixing operator $Q^\dagger$, generalized Laplacian $D=[Q,Q^\dagger]$, heat kernel $K_u$, and propagator

$$\begin{align}
P_{\mathcal E}(x,y) =\int_0^\infty du\,Q_x^\dagger K_u(x,y). \tag{7.19}
\end{align}$$

Adding a topological direction gives a bulk complex on $\mathbb R\times M$. On a half-space, the propagator is obtained by reflection. Theorem 7.1 uses the heat-kernel semigroup law to collapse the relevant two-propagator integral to

$$\begin{align}
\frac12P_{\mathcal E}(x,y).
\tag{7.24}
\end{align}$$

Theorem 7.2 gives a corresponding corner coefficient $\frac1{32}P_{\mathcal E}$ in Eq. (7.32). These identities are potentially reusable shortcuts for half-space or corner Feynman graphs. Applying them to an AdS or gravitational problem would first require a suitable elliptic complex, gauge fixing, boundary condition, and heat kernel. The proposed general $n$-corner formula is Conjecture 7.1, not a theorem.

## Transfer to boundary, BRST, and CPS projects

The most immediate transferable construction is

$$\begin{align}
A\longrightarrow\mathcal Z(C),
\end{align}$$

which organizes how a bulk algebra acts on boundary or corner observables while preserving the lower-dimensional Poisson structure. The master-equation expansion supplies a systematic boundary-consistency check analogous to matching bulk and boundary BRST variations term by term. Defect termination and fusion provide a precise language for modules, interfaces, coproducts, and associators in BF or Chern-Simons quantization.

The translation to a gravitational CPS calculation is not automatic. Before using this framework for Wald charges or edge modes, one must identify the gravitational field complex, boundary conditions, residual gauge algebra, corner observable algebra, and the map from the BV pairing to the desired presymplectic structure. The paper does not supply these identifications.

## Verification boundary

The official abstract page, complete PDF structure, and displayed formulas cited above were inspected. Rendered PDF pages were used to confirm Eq. (2.36), Eq. (4.20), and the heat-kernel/propagator setup around Eqs. (7.18)-(7.22).

The $L_\infty$ and operadic equivalences, master-equation tower, configuration-space integrals, Koszul-dual identifications, representation-theoretic claims, and Feynman integrals were not independently reproduced. Section 3.3, Conjecture 4.2, the heuristic holomorphic-topological defect construction, the all-orders Yangian claim, Conjecture 7.1, and the factorization-homology/Hilbert-space discussion retain the source's own stated limitations.
