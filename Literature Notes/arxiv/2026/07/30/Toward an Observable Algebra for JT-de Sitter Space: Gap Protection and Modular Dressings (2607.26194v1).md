---
paper id: 2607.26194v1
title: "Toward an Observable Algebra for JT-de Sitter Space: Gap Protection and Modular Dressings"
authors:
  - Hassan ElSayed
publication date: 2026-07-28T18:55
abstract: |-
  The paper relates fundamental complements of global-de Sitter regions to regional operator algebras. In global dS2, a complementary gap contributes exactly when its angular length is at least pi; the operator-algebraic model then tests modular crossed products, their failure of isotony under vacuum modular flow, a split-state repair on a finite Boolean family, and a representation-dependent commutant assignment inside a Type-II1 reference factor.
comments: "34 pages"
url: https://arxiv.org/abs/2607.26194v1
summary: "A useful operator-algebraic stress test for regional de Sitter observables: geometric gap protection is sharp, while independently modular-dressing each region fails isotony."
tags: []
---

[[2026_07_30_overview|Back to the 2026-07-30 arXiv overview]]

This is useful less as a finished algebra of JT-de Sitter observables than as a separation of three questions that are easy to conflate: which spacetime complement is protected, whether regional modular dressings embed coherently, and which clock or gravitational constraint should turn a Type-III matter algebra into a Type-II algebra.

# Global de Sitter regions and the largest-gap criterion

Global $\mathrm{dS}_2$ is written as

$$
ds^2=\frac{L^2}{\cos^2\eta}\left(-d\eta^2+d\chi^2\right),
\qquad
-\frac{\pi}{2}<\eta<\frac{\pi}{2},
\qquad
\chi\sim\chi+2\pi.
$$

An admissible spatial region $a\subset S^1$ is a finite union of open arcs with pairwise disjoint closures. Its regular-open complement is

$$
a^\perp=\operatorname{int}(S^1\setminus a),
$$

with connected gaps $b_k$ of angular lengths $\beta_k$. For the causal development $A=D(a)$, the regular-open convention gives

$$
D(a)'=D(a^\perp)=\bigsqcup_k D(b_k).
\tag{8}
$$

The paper defines the fundamental complement from complete timelike curves:

$$
\widetilde X=\mathscr C(X')'',
\tag{9}
$$

where $\mathscr C(X')$ is the union of complete timelike curves in $X'$. A gap $b$ of length $\beta$, centred at $\chi=0$, has diamond

$$
D(b)=
\left\{
(\eta,\chi):
\operatorname{dist}(\chi,0)+|\eta|<\frac{\beta}{2}
\right\}.
\tag{10}
$$

A complete timelike curve must reach both conformal boundaries. This produces the threshold

$$
\mathscr C(D(b))=
\begin{cases}
\varnothing,&\beta<\pi,\\
D(b),&\beta\geq\pi.
\end{cases}
\tag{11}
$$

The equality case is included: at $\beta=\pi$, the complete curves approach one point at each conformal boundary, but their causal completion still recovers the half-circle diamond. Since a complete timelike curve cannot jump between disconnected components of $A'$, and a nonempty $a$ cannot have two complementary gaps of length at least $\pi$,

$$
\widetilde A
=\bigcup_{\beta_k\geq\pi}D(b_k),
\qquad
\widetilde a
=\bigcup_{\beta_k\geq\pi}b_k,
\qquad
\widetilde A=D(\widetilde a),
\tag{14--15}
$$

with at most one nonempty term. Protection therefore depends on the largest individual gap, not the total size of the region.

For global $\mathrm{dS}_d$, the analogous condition is that an open complement component contain an open hemisphere. For $d\geq3$ this is only a threshold for the existence of a complete timelike curve; the causal completion need not equal the full diamond of that component.

# A shared clock and regional continuous cores

The operator model starts from a Möbius-covariant chiral conformal net $\mathcal A_{\mathrm{CFT}}$ with locality, isotony, irreducibility, positive energy, Reeh--Schlieder, strong additivity, and the split property. For a standard region $u$,

$$
K_u=-\log\Delta_u,
\qquad
\sigma_t^u(x)=e^{-itK_u}xe^{itK_u}.
$$

Every region uses the same auxiliary clock Hilbert space $L^2(\mathbb R,dq)$, clock translations $V(s)=e^{ish}$, and positive-spectrum projection

$$
P=\mathbf 1_{[0,\infty)}(h).
$$

The modular flow, however, remains region-dependent:

$$
D_u(x)=\sigma_q^u(x),
\qquad
\widehat{\mathcal M}(u)=\{D_u(x),V(s)\}'',
\qquad
\mathcal M(D(u))=P\widehat{\mathcal M}(u)P.
\tag{37--39, 48}
$$

For the reference half-circle $R=(-\pi/2,\pi/2)$,

$$
K_R=2\pi H_{\mathrm{stat}}^{\mathrm{ch}},
\qquad
\widehat{\mathcal M}
=\mathcal A_{\mathrm{CFT}}(R)\rtimes_{\sigma^R}\mathbb R.
\tag{39}
$$

The continuous core is a Type-$\mathrm{II}_\infty$ factor. With the paper's dual-weight and Fourier normalization,

$$
\widehat{\operatorname{Tr}}(f(h))
=\int_{\mathbb R}e^{-x}f(x)\,dx,
\qquad
\widehat{\operatorname{Tr}}(P)
=\int_0^\infty e^{-x}dx=1.
\tag{44--45}
$$

Thus the corner

$$
\mathcal M_{\mathrm{ref}}=P\widehat{\mathcal M}P
\tag{42}
$$

is Type-$\mathrm{II}_1$, as are the analogous regional corners.

# Why vacuum modular dressings fail isotony

The crucial obstruction is not the lack of a common clock. It is the incompatibility of different regional vacuum modular flows in one concrete representation. Theorem 4.2 makes the following conditions equivalent:

1. $\widehat{\mathcal M}(u)\subseteq\widehat{\mathcal M}(v)$;
2. their $P$-corners are nested;
3. $\sigma_t^v|_{\mathcal A(u)}=\sigma_t^u$;
4. $\mathcal A(u)$ is invariant under $\sigma^v$;
5. there is a vacuum-preserving normal conditional expectation $\mathcal A(v)\to\mathcal A(u)$.

When $v\setminus\overline u$ contains a nonempty arc, vacuum correlations obstruct these conditions. Dressing each regional algebra by its own vacuum modular group therefore does not produce an isotonic net, even though all regions share the same auxiliary clock.

The paper repairs this only on a fixed finite Boolean family. For separated atomic arcs $S=\{I_j\}$, the split isomorphism and product state are

$$
\Theta_S:\mathcal N_S
\overset{\sim}{\longrightarrow}
\overline{\bigotimes_j}\mathcal A(I_j),
\tag{52}
$$

$$
\phi_S=
\left(\bigotimes_j\omega_{I_j}\right)\circ\Theta_S,
\qquad
\sigma_t^{\phi_S}
=\Theta_S^{-1}
\left(\bigotimes_j\sigma_t^{\omega_{I_j}}\right)
\Theta_S.
\tag{53--54}
$$

Restrictions of these product modular flows are compatible, so

$$
\mathcal M^{\mathrm{split}}(D(v_T))
\subseteq
\mathcal M^{\mathrm{split}}(D(v_{T'})),
\qquad T\subseteq T'.
\tag{55}
$$

This does not provide coherence under moving endpoints or changes of the atomic partition. It is a controlled local repair, not a global net construction.

# The ambient-commutant assignment and activation

The proposed model algebra is

$$
\mathcal A_{\mathrm{model}}(a)
=\mathcal M(\widetilde A)'
\cap\mathcal M_{\mathrm{ref}}.
\tag{56}
$$

The commutant is taken in the fixed representation on
$\mathcal H_{\mathrm{CFT}}\otimes L^2(\mathbb R)$. This is important: $\mathcal M(\widetilde A)$ need not itself be a subalgebra of $\mathcal M_{\mathrm{ref}}$. When the protected gap overlaps the reference arc, the paper proves

$$
\mathcal A_{\mathrm{model}}(a)
\subsetneq\mathcal M_{\mathrm{ref}}.
\tag{63}
$$

If no gap is protected, the assignment becomes the full reference factor.

The discontinuity is explicit. For

$$
a_1=(0,\delta),
$$

the complementary gap has length $2\pi-\delta>\pi$, so the assigned algebra is proper. Adding an arbitrarily short antipodal component

$$
a_2=(\pi,\pi+\varepsilon)
$$

splits that gap into pieces of lengths $\pi-\delta$ and $\pi-\varepsilon$, neither protected. Therefore

$$
\mathcal A_{\mathrm{model}}(a_1)
\subsetneq\mathcal M_{\mathrm{ref}},
\qquad
\mathcal A_{\mathrm{model}}(a_1\cup a_2)
=\mathcal M_{\mathrm{ref}}.
\tag{64}
$$

The term "activation" refers to this jump in the model assignment, not to a dynamical phase transition.

# What is and is not JT gravity here

The JT comparison is classical and is kept separate from the chiral-net construction. On the symmetric slice, the constraint is written

$$
\frac{\Phi_++\Phi_-}{8\pi G_2}+H_{\mathrm{mat}}^R=0,
\tag{34}
$$

so the endpoint improvement charge satisfies

$$
Q_{\mathrm{JT}}^R=H_{\mathrm{mat}}^R
\tag{35}
$$

on the classical constraint surface. This is not an operator identity $Q_{\mathrm{JT}}^R=K_R$. The auxiliary clock $h$, York momentum, endpoint charge, matter Hamiltonian, and modular Hamiltonian remain distinct objects.

The reusable lesson for the vault's subsystem and Type-III work is consequently diagnostic:

- determine the geometrically protected complement before assigning an algebra;
- test modular embeddings in a common representation rather than only comparing abstract isomorphism classes;
- identify the physical constraint that supplies the clock before interpreting a continuous core as a gravitational observable algebra.

# Verification boundary

Source-derived: the gap theorem, modular-inclusion equivalences, split-state construction, Type-II classification, and JT comparison above follow the paper's TeX/PDF argument.

Checked: the elementary trace normalization

$$
\int_0^\infty e^{-x}dx=1
$$

and the two-arc gap lengths in Eq. (64) are direct calculations.

Not independently verified: the causal-completion proof at the threshold, the modular-theory equivalences, the conditional-expectation obstruction, factoriality statements, and the signs of the JT ADM constraint. The nontrivial algebra in Eq. (56) is only proved to be a von Neumann subalgebra of the Type-$\mathrm{II}_1$ reference factor; its own factoriality and type are not established.
