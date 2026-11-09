---
paper id: 2607.26394v1
title: Towards First Quantisation Formalism for AKSZ Theories
authors:
  - Leon Menger
  - Pavel Mnev
publication date: 2026-07-29T02:03
abstract: |-
  Given an AKSZ theory on a manifold M, the paper constructs a one-dimensional AKSZ theory on metric graphs whose edge propagators, residual fields, and vertex sewing data reproduce the original theory's Feynman graphs. The construction couples the edge theory to one-dimensional supergravity, treats it in BV-BFV language, and interprets interaction tensors as quantizations of vertex Lagrangians in a symplectic category.
comments: "51 pages, 7 figures"
url: https://arxiv.org/abs/2607.26394v1
summary: "Metric edge lengths become one-dimensional gravity moduli, while propagators and cyclic interaction tensors become BV-BFV edge amplitudes and Lagrangian vertex sewing conditions."
tags: []
---

[[2026_07_30_overview|Back to the 2026-07-30 arXiv overview]]

The transferable point is a geometric factorization of BV perturbation theory. Schwinger parameters are promoted to metric-graph moduli, gauge-fixed propagators become one-dimensional AKSZ amplitudes, and the original interaction tensors are supplied by Lagrangian relations at graph vertices.

# The AKSZ Theory Whose Graphs Must Be Reproduced

For an $m$-dimensional AKSZ theory $\mathsf T$ on $M$ with graded target vector space $Y$,

$$\begin{align}
\mathcal F^{\mathsf T} =\operatorname{Map}(T[1]M,Y) \simeq\Omega^\bullet(M;Y). \tag{1.1}
\end{align}$$

The BV action has the form

$$\begin{align}
S^{\mathsf T} =\int_M \frac12\langle A\wedge,dA\rangle_Y +\Theta_Y(A), \qquad \{\Theta_Y,\Theta_Y\}=0. \tag{1.2}
\end{align}$$

After gauge fixing and BV pushforward, the effective action is organized by connected graphs,

$$\begin{align}
S_{\mathrm{eff}}^{\mathsf T}(a) = \sum_\Gamma \frac{\hbar^{l(\Gamma)}}{|\operatorname{Aut}\Gamma|} F_\Gamma(a). \tag{1.3}
\end{align}$$

The explicit weight $F_\Gamma$ in Eq. (1.4) combines three kinds of data:

- a propagator kernel on every internal edge;
- an inclusion of residual fields on external leaves;
- the Taylor tensors $c_n^Y$ of $\Theta_Y$ at vertices.

The proposed first-quantized theory $\mathsf t$ must reproduce precisely this tripartite decoration, not merely the graph combinatorics.

# Metric Graphs as Homological Quantum Mechanics

For an interval of length $T$, with odd modulus $dT$, the universal homological-topological quantum mechanics amplitude is

$$\begin{align}
Z(I;T,dT) =e^{[d_I+Q,-TG]} =e^{-TH-dTG}, \qquad H=[Q,G]. \tag{2.11}
\end{align}$$

Here $G$ is the gauge-fixing homotopy and $H$ is the corresponding Laplacian or evolution generator. An edge carries this operator-valued differential form. A vertex carries a cyclic operation $c_n^k$ satisfying the quantum cyclic $L_\infty$ relations encoded by the BV quantum master equation.

Contracting edge and vertex tensors gives a differential form on a cell of metric-graph space. If $H\geq0$, then an infinite external edge approaches the projector onto $\ker H$. Integrating an internal edge gives the strong-deformation-retract homotopy. The resulting pre-amplitudes are forms on metric-graph cells, or distributional forms on the orbi-cell complex $\mathcal{MG}_{p,q}^k$.

The organizing identity is

$$\begin{align}
(d_{\mathrm{Geom}}+Q')I^\infty=0. \tag{2.26}
\end{align}$$

At a UV boundary $T_e\to0$, graph contractions are canceled by the cyclic $L_\infty$/QME relations, explicitly in Eq. (2.28). At an IR boundary $T_e\to\infty$, the amplitude factorizes into compositions or partial supertraces of lower amplitudes. Stokes' theorem then gives the transferred quantum cyclic $L_\infty$ structure on $\ker H$.

The mechanism can be summarized without suppressing its ingredients:

$$\begin{align}
\text{metric edge} +\text{SDR propagator} +\text{cyclic vertex relation} +\text{UV/IR Stokes factorization} =\text{BV homotopy transfer}.
\end{align}$$

# A One-Dimensional AKSZ Edge Coupled to Supergravity

The edge theory has target

$$\begin{align}
\mathcal N=T^*T[1](M\times\mathbb R[1])
\end{align}$$

with symplectic form and Hamiltonian

$$\begin{align}
\omega_{\mathcal N} =\delta p_i\,\delta x^i +\delta\pi_i\,\delta\theta^i +\delta p_c\,\delta c +\delta p_\phi\,\delta\phi, \tag{3.1}
\end{align}$$

$$\begin{align}
\Theta_{\mathcal N}=p_i\theta^i+p_c\phi. \tag{3.2}
\end{align}$$

The source is $T[1]I$. Boundary quantization in the position polarization gives

$$\begin{align}
\mathcal H_{\mathrm{pt}}^{\mathsf t} =\Omega^\bullet(M)\otimes\Omega^\bullet(\mathbb R[1]),
\end{align}$$

$$\begin{align}
\Omega_{\mathrm{pt}}^\partial =-i\left( \theta^i\partial_{x^i} +\phi\partial_c \right). \tag{3.18}
\end{align}$$

A bulk BV pushforward retains the one-dimensional supergravity zero modes

$$\begin{align}
(e^I,\epsilon^I,p_c^I,p_\phi^I).
\end{align}$$

After boundary cohomological reduction, the pure supergravity factor becomes

$$\begin{align}
Z_{\mathrm{SUGRA}}^{\mathrm{red}} =e^{i\epsilon^I p_c^I}. \tag{3.31}
\end{align}$$

For a square-zero self-adjoint gauge-fixing operator $G$, with $H=[d_M,G]$, integration over the edge modulus gives

$$
\int_0^\infty e^{-TH-dTG}
=
\begin{cases}
G[d_M,G]^{-1},&\operatorname{im}H,\\
0,&\ker H.
\end{cases}
\tag{3.33}
$$

The full gauge-fixed interval kernel is

$$\begin{align}
Z_G^{\mathsf t} =e^{-e^I H-\epsilon^I G+i\epsilon^I p_c^I}. \tag{3.39}
\end{align}$$

Its modified quantum master equation is the BV-BFV realization of the HTQM closedness relation.

# Witten--Morse Gauge Fixing and Its Restriction

The classical gauge-fixing symbol in Eq. (3.42) quantizes to

$$\begin{align}
G_\varepsilon=\iota_v+\varepsilon d^*, \qquad H_\varepsilon=\mathcal L_v+\varepsilon\Delta. \tag{3.45}
\end{align}$$

The limit $\varepsilon\to0$ produces a distributional Morse propagator supported on gradient trajectories, while large $\varepsilon$ approaches Hodge/Lorenz gauge. The source makes an important negative statement: $\iota_v$ does not have the self-adjointness required for ordinary Chern--Simons theory. The Morse construction is instead used in the matrix-valued $\mathfrak{gl}_N$ setup,

$$\begin{align}
G_{ab}=\iota_{v_{ab}}+\varepsilon d^*, \tag{5.4}
\end{align}$$

or in $BF$ theory with the paired block operator of Eq. (5.5). Thus the most attractive geometric limit is not automatically a legal gauge fixing for every AKSZ model.

# Vertex Lagrangians and the Tentative Cyclic Structure

The classical vertex datum consists of an object $\nu$ in an enhanced Weinstein symplectic category, a pairing relation $\rho$, and quantizable Lagrangians $L_n$. Geometric quantization is asked to map

$$\begin{align}
\mathcal Q:\mathsf{Symp}^+ \longrightarrow\mathsf{grVect}_{\mathbb C}, \tag{4.1}
\end{align}$$

so that

$$\begin{align}
\mathcal Q(\nu)=Y, \qquad \mathcal Q(\rho)=\langle-,-\rangle_Y, \qquad \mathcal Q(L_n)=c_n^Y.
\end{align}$$

Equation (4.5) proposes geometric $L_\infty$ relations modulo $\ker\mathcal Q$. This part is explicitly tentative: the source does not claim a completed symplectic-category definition of a cyclic $L_\infty$ algebra.

For a compact simple Lie algebra, a $G$-invariant Lagrangian in a product of coadjoint orbits is expected to quantize to an intertwiner. The moment map is

$$\begin{align}
\mu(a,b,c)=c-(a+b), \tag{4.9--4.10}
\end{align}$$

and $\mu^{-1}(0)$ is the candidate bracket locus. The general statement that $\mu^{-1}(0)/G$ is a point is Conjecture 4.9, not a proved theorem.

For $\mathfrak{su}(2)$, the construction is explicit:

$$\begin{align}
L_W =\mu^{-1}(0) =\{(x,y,z)\in\mathcal O^3:x+y+z=0\}. \tag{4.17}
\end{align}$$

Its quantized state is the Wigner intertwiner

$$
|L_W\rangle
=\sum_{m_i}
\begin{pmatrix}
j_1&j_2&j_3\\
m_1&m_2&m_3
\end{pmatrix}
|j_1,m_1\rangle
|j_2,m_2\rangle
|j_3,m_3\rangle.
\tag{4.13}
$$

For three adjoint orbits, $L_W$ is the space of centered equilateral triangles on the coadjoint sphere.

# Sewing Fields at Graph Vertices

The edge target is extended by $\nu$. If its prequantum line bundle is nontrivial, the path-integral weight contains parallel transport,

$$\begin{align}
e^{iS^{\mathsf t}}
\longmapsto
e^{iS^{\mathsf t}} \operatorname{Hol}_{\nabla_\nu}(\xi(I)), \tag{5.10}
\end{align}$$

rather than a globally defined additional action term.

At an $n$-valent vertex, the sewing condition is

$$\begin{align}
\mathbb L_n =N^*\!\operatorname{Diag}\times L_n
\subset(\overline{\mathcal N^{\mathrm{red}}})^n. \tag{5.11}
\end{align}$$

Quantization of $N^*\!\operatorname{Diag}$ identifies the incident points of $M$ and produces the wedge/integration factor. Quantization of $L_n$ supplies the interaction tensor $c_n^Y$. Internal supergravity residual fields are integrated over

$$\begin{align}
N^*(T[1]\mathbb R_+)^{\mathrm{IE}(\Gamma)},
\end{align}$$

whereas external edges are placed at $e^I=\infty$ and yield $P_{\ker H}$. The resulting graph pre-amplitude satisfies

$$\begin{align}
\int_{\mathbb R_+^{\mathrm{IE}(\Gamma)}} I^\infty_{\mathsf t}(\Gamma) =F_\Gamma. \tag{5.1}
\end{align}$$

Summing these weights reproduces the perturbative effective action of $\mathsf T$.

# Relation to Local BV-BFV and Quantization Work

The paper gives a concrete dictionary useful for the vault:

- the Schwinger parameter $T$ and $dT$ are the graviton and gravitino zero modes of one-dimensional supergravity;
- $G$ is simultaneously the gauge-fixing operator, the SDR homotopy, and the odd part of the edge amplitude;
- the boundary BFV state space is the differential-form complex on $M$ together with the clock sector;
- residual fields are carried by infinite leaves;
- interaction tensors are replaced by Lagrangian sewing data before quantization;
- UV graph boundaries encode $L_\infty$ relations, while IR boundaries encode factorization.

This is a BV-BFV and homotopy-transfer reference, not a CPS charge calculation. It supplies no spacetime boundary charge, presymplectic flux, or AdS boundary-condition analysis.

# Verification Boundary

Source-derived: the BV-BFV pushforward, modified QME, metric-graph Stokes argument, equality with $F_\Gamma$, and geometric-quantization interpretation follow the paper's 51-page construction.

Not independently verified: BV signs, functional measures, convergence at graph boundaries, the exact graph automorphism weights, the geometric-quantization functor, and the proposed cyclic $L_\infty$ relations. Section 4 is author-labelled tentative, Conjecture 4.9 remains unproved, the $\varepsilon=0$ matrix Morse limit retains analytic and transversality caveats, and the loop-enhanced Fukaya--Morse extension is work in progress.
