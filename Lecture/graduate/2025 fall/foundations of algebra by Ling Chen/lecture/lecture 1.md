---
references: 近世代数300题
---

This semester-long review covers: set/map basics, groups, rings and ideals, integral domains and factorization, fields and extensions, Galois theory, and modules as a generalization of linear algebra. Notation: sets in roman capitals, groups/rings/fields by $G,R,K,F$; identities $e,1$; zero $0$. A map $f:A\to B$ has kernel $\ker f$ and image $\operatorname{Im} f$.

# 0. Preliminaries: Sets, Maps, Relations, Orders, Actions

## 0.1 Functions and Basic Properties.
- Definition. A function $f:A\to B$ assigns each $a\in A$ a unique $f(a)\in B$. Injective (one-to-one), surjective (onto), bijective accordingly. Composition $g\circ f$; inverse $f^{-1}$ for bijections.
- Images/preimages. For $S\subseteq A$, $f(S)=\{f(s):s\in S\}$; for $T\subseteq B$, $f^{-1}(T)=\{a\in A: f(a)\in T\}$. Properties: $f^{-1}(\bigcup T_i)=\bigcup f^{-1}(T_i)$; $f^{-1}(\bigcap T_i)=\bigcap f^{-1}(T_i)$; $f(f^{-1}(T))\subseteq T$ with equality if $T\subseteq \operatorname{Im} f$.
- Left/right inverses. $f$ has a left inverse $g$ (i.e., $g\circ f=\operatorname{id}_A$) iff $f$ is injective; has a right inverse $h$ (i.e., $f\circ h=\operatorname{id}_B$) iff $f$ is surjective.
- Cardinality.
	Theorem (Schröder–Bernstein). If there are injections $f:A\hookrightarrow B$ and $g:B\hookrightarrow A$, then there exists a bijection $h:A\to B$.
	Proof. Define $S_0=A\setminus g(B)$ and for $n\ge0$ recursively $S_{n+1}=g\big(f(S_n)\big)$. Set $S=\bigcup_{n\ge0} S_n\subseteq A$. Then $A\setminus S\subseteq g(B)$ and $S\cap g(B)=g(f(S))$. Define
	$$
	h(a)=\begin{cases}
	f(a), & a\in S,\\
	g^{-1}(a), & a\in A\setminus S,
	\end{cases}
	$$
	which is well-defined since $A\setminus S\subseteq g(B)$. The map $h$ restricts to bijections $S\xrightarrow{\ f\ } f(S)$ and $A\setminus S\xrightarrow{\ g^{-1}\ } g^{-1}(A\setminus S)$. One checks the disjoint union decomposition $B=f(S)\,\dot\cup\, g^{-1}(A\setminus S)$. Hence $h$ is injective (on each part, and images are disjoint) and surjective (by the decomposition), so $h$ is a bijection. ■

## 0.2 Equivalence Relations and Quotients.
- Definition. An equivalence relation $\sim$ on $S$ is reflexive, symmetric, transitive. The class of $s$ is $[s]=\{t\in S: t\sim s\}$. The quotient $S/\sim=\{[s]: s\in S\}$.
- Universal property of quotients. The projection $\pi:S\to S/\sim$, $s\mapsto [s]$, has: for any map $f:S\to T$ constant on classes (i.e., $s\sim t\Rightarrow f(s)=f(t)$), there exists a unique $\bar f:S/\sim\to T$ with $f=\bar f\circ \pi$.
	Proof. Define $\bar f([s])=f(s)$. Well-defined since $s\sim t\Rightarrow f(s)=f(t)$. Uniqueness: any $\bar f$ must satisfy $\bar f([s])=f(s)$. ■
- Compatibility and induced operations. If $\ast:S\times S\to S$ respects $\sim$ (i.e., $s_1\sim s_1', s_2\sim s_2'\Rightarrow s_1\ast s_2\sim s_1'\ast s_2'$), then $\ast$ descends to a well-defined operation on $S/\sim$ via $[s_1]\ast[s_2]=[s_1\ast s_2]$.

## 0.3 Partial Orders and Zorn’s Lemma (tools used later).
- Posets. A partial order $\preceq$ is reflexive, antisymmetric, transitive. Chains are totally ordered subsets.
- Zorn’s Lemma. If every chain in a nonempty poset $(P,\preceq)$ has an upper bound in $P$, then $P$ has a maximal element. Equivalent to the Axiom of Choice and well-ordering theorem.
- Application (existence of maximal ideals). In a unital ring $R$, any proper ideal $I\subsetneq R$ lies in a maximal ideal. Proof: consider $\mathcal S=\{J: I\subseteq J\subsetneq R\}$ ordered by inclusion; any chain has union still a proper ideal; Zorn yields a maximal element. ■
 - Lemma (Hausdorff Maximal Principle). Every poset contains a maximal chain.
	Proof. Well-order $P$ (by Choice). Build by transfinite recursion a family of chains $\{C_\alpha\}$: set $C_0=\varnothing$. Given $\{C_\beta\}_{\beta<\alpha}$, let $C_{<\alpha}=\bigcup_{\beta<\alpha} C_\beta$. If there exists $x\in P$ comparable with all elements of $C_{<\alpha}$, choose the least such $x$ in the fixed well-order and set $C_\alpha=C_{<\alpha}\cup\{x\}$; otherwise put $C_\alpha=C_{<\alpha}$. This process stabilizes before $|P|^+$, yielding a chain $C$ that cannot be strictly extended, hence a maximal chain. ■
 - Proof of Zorn’s Lemma (via Hausdorff). Let $\mathcal C$ be a maximal chain in $P$. By hypothesis, $\mathcal C$ has an upper bound $u\in P$. If $u\prec v$ for some $v\in P$, then $\mathcal C\cup\{v\}$ is a chain properly containing $\mathcal C$, contradicting maximality. Thus $u$ is maximal. ■

## 0.4 Binary Operations and Algebraic Laws.
- A binary operation on $S$ is a map $\mu:S\times S\to S$. Associativity, commutativity, identity element $e$ with $\mu(e,s)=\mu(s,e)=s$, inverses w.r.t. $\mu$.
- Examples. $(\mathbb Z,+)$ abelian group; $(\mathbb Z,\cdot)$ monoid; matrix multiplication associative with identity $I$; function composition.

## 0.5 Group Actions.
- Definition. A (left) action $G\curvearrowright X$ is a map $G\times X\to X$, $(g,x)\mapsto g\cdot x$, with $e\cdot x=x$ and $(gh)\cdot x=g\cdot(h\cdot x)$. Equivalent to a homomorphism $G\to\operatorname{Sym}(X)$.
- Orbits and stabilizers. Orbit $Gx=\{g\cdot x\}$; stabilizer $G_x=\{g: g\cdot x=x\}$. Orbit–Stabilizer: $$|Gx|=[G:G_x].$$
	Proof. The map $G/G_x\to Gx$, $gG_x\mapsto g\cdot x$, is a bijection. ■
- Class equation (conjugation action). $$|G|=|Z(G)|+\sum_i [G:C_G(x_i)],$$ summing over representatives of noncentral conjugacy classes. Consequence: if $|G|=p^n$, then $Z(G)\neq\{e\}$.

## 0.6 Burnside’s Lemma (Cauchy–Frobenius).
- Statement. For a finite action $G\curvearrowright X$, the number of orbits is $$\frac{1}{|G|}\sum_{g\in G}|X^g|,\quad X^g=\{x\in X: g\cdot x=x\}.$$
- Proof. Let $\mathrm{Fix}(g)=|X^g|$ and define $F(x)=|\{g\in G: g\cdot x=x\}|$. Then $$\sum_{g\in G}\mathrm{Fix}(g)=\sum_{x\in X}F(x).$$ Each orbit contributes exactly $|G|$ to the right-hand sum (since $F(x)=[G:G_x]$ and $|Gx|=[G:G_x]$), hence dividing by $|G|$ gives the number of orbits. ■

## 0.7 Quick Exercises.
- Prove Schröder–Bernstein Theorem (hint: Cantor–Bernstein construction via chains of preimages).
- Show that an equivalence relation corresponds to a partition and vice versa.
- Use Zorn’s Lemma to show every vector space has a basis.
- Compute the number of distinct colorings of an $m$-bead necklace with $n$ colors up to dihedral symmetry using Burnside’s Lemma.

## 0.8 Solutions
- Schröder–Bernstein. Suppose $f:A\hookrightarrow B$ and $g:B\hookrightarrow A$ are injections. Define $S_0=A\setminus g(B)$ and $S_{k+1}=g(f(S_k))$, and put $S=\bigcup_{k\ge0}S_k\subseteq A$. Then $A\setminus S\subseteq g(B)$ and $S\cap g(B)=g(f(S))$. Define
	$$h:A\to B,\qquad h(a)=\begin{cases}f(a),& a\in S,\\ g^{-1}(a),& a\in A\setminus S.\end{cases}$$
	This is well-defined since $A\setminus S\subseteq g(B)$; it is injective on $S$ and on $A\setminus S$, and the images are disjoint. Moreover, $B=f(S)\,\dot\cup\, g^{-1}(A\setminus S)$, so $h$ is surjective. Thus $h$ is a bijection. ■

- Equivalence relations ↔ partitions. If $\sim$ is an equivalence relation on $S$, its classes $[s]$ form a partition: they are nonempty, disjoint, and cover $S$ (reflexivity, symmetry/transitivity). Conversely, given a partition $S=\bigsqcup_{i\in I} P_i$, define $x\sim y$ iff they lie in the same part $P_i$; then reflexive/symmetric/transitive are immediate. These two constructions are inverse, yielding a bijection between equivalence relations and partitions. ■

- Every vector space has a basis (Zorn). Let $V$ be a vector space over $K$. Consider the poset $\mathcal L$ of linearly independent subsets of $V$, ordered by inclusion. Any chain has a union which is still linearly independent. By Zorn’s Lemma, $\mathcal L$ has a maximal element $B$. If $\langle B\rangle\ne V$, pick $v\in V\setminus \langle B\rangle$; then $B\cup\{v\}$ is still independent, contradicting maximality. Hence $\langle B\rangle=V$, so $B$ is a basis. ■

- Necklace counting up to dihedral symmetry. Let $D_m=\langle r,s\mid r^m=s^2=1,\ srs=r^{-1}\rangle$ act on colorings $X=\{m\text{-tuples of }n\text{ colors on beads}\}$. By Burnside,
	$$N=\frac{1}{|D_m|}\sum_{g\in D_m}|X^g|=\frac{1}{2m}\Big(\sum_{k=0}^{m-1} n^{\gcd(m,k)}+\sum_{\text{reflections }\rho}|X^{\rho}|\Big).$$
	Rotations: $|X^{r^k}|=n^{\gcd(m,k)}$. Reflections: two cases.
	• $m$ odd: each reflection fixes 1 bead and has $(m-1)/2$ transposed pairs, so $|X^{\rho}|=n^{(m+1)/2}$; there are $m$ reflections. Thus
	$$N=\frac{1}{2m}\Big(\sum_{k=0}^{m-1} n^{\gcd(m,k)}+ m\, n^{(m+1)/2}\Big).$$
	• $m$ even: $m/2$ reflections fix two opposite beads and have $(m/2-1)$ pairs, giving $n^{(m/2)+1}$ fixed colorings; the other $m/2$ reflections fix no beads and have $m/2$ pairs, giving $n^{m/2}$. Hence
	$$N=\frac{1}{2m}\Big(\sum_{k=0}^{m-1} n^{\gcd(m,k)}+ \tfrac{m}{2}n^{(m/2)+1}+ \tfrac{m}{2}n^{m/2}\Big).$$
	These are the standard Pólya-Burnside formulas for necklace colorings under the dihedral group. ■

---

# 1. Groups

## 1.1 Definitions and Subgroup Test
Definition. A group $(G,\cdot)$ is a set with an associative law, identity $e$, and inverses. Abelian if commutative. A subgroup $H\le G$ is nonempty and closed under product and inverse. Subgroup test: $H\neq\varnothing$ and $ab^{-1}\in H$ for all $a,b\in H$.

- Theorem (Subgroup Test). Let $H\subseteq G$. Then $H\le G$ iff $H\neq\varnothing$ and $ab^{-1}\in H$ for all $a,b\in H$.
	Proof. ($\Rightarrow$) Closed under product and inverse implies the condition. ($\Leftarrow$) Pick $h\in H$. Then $hh^{-1}=e\in H$. For any $a,b\in H$, $ab^{-1}\in H$ gives closure under right division; put $b=e$ to get $a\in H$ closed under inverse by taking $a=e, b=a$. Associativity is inherited from $G$. Thus $H$ is a subgroup. ■

- Proposition. Intersections of subgroups are subgroups; the subgroup generated by $S\subseteq G$ is $\langle S\rangle=\bigcap\{H\le G: S\subseteq H\}$.
	Proof. Intersections preserve the subgroup test; minimality and existence follow by intersection over nonempty family of subgroups containing $S$. ■

## 1.2 Cosets, Lagrange, Quotients
Cosets, Lagrange, quotients. Left cosets $gH$ partition $G$; if $G$ finite then $|H|\mid|G|$. If $N\trianglelefteq G$, the quotient $G/N$ is a group with multiplication $(gN)(hN)=(gh)N$.

- Lemma. The relation $g\sim h\iff g^{-1}h\in H$ is an equivalence relation; its classes are left cosets $gH$.
	Proof. Reflexive: $g^{-1}g=e\in H$. Symmetric: if $g^{-1}h\in H$ then $(g^{-1}h)^{-1}=h^{-1}g\in H$. Transitive: if $g^{-1}h, h^{-1}k\in H$ then $g^{-1}k=(g^{-1}h)(h^{-1}k)\in H$. ■

- Theorem (Lagrange). If $G$ is finite and $H\le G$, then $|G|=[G:H]\cdot |H|$; in particular $|H|\mid |G|$ and the order of any $g\in G$ divides $|G|$.
	Proof. Left cosets partition $G$ and each coset has $|H|$ elements via the bijection $h\mapsto gh$. The order of $g$ is $|\langle g\rangle|$, a divisor of $|G|$ by taking $H=\langle g\rangle$. ■

- Proposition. If $N\trianglelefteq G$, then $G/N$ is a group under $(gN)(hN)=(gh)N$ and the projection $\pi:G\to G/N$ is a surjective homomorphism with kernel $N$; it is universal among homomorphisms killing $N$.
	Proof. Well-definedness uses normality: $(gN)(hN)=(gh)N=(gNh)N$. Associativity and identity $N$ inherit from $G$; inverses $(gN)^{-1}=g^{-1}N$. Universal property is the quotient universal property for congruences. ■

## 1.3 Homomorphisms and Isomorphism Theorems
Homomorphisms and isomorphism theorems.
- First Isomorphism. For $\varphi:G\to H$, $$G/\ker\varphi\cong\operatorname{Im}\varphi.$$ Proof: define $\tilde\varphi:g\ker\varphi\mapsto\varphi(g)$; show well-defined and bijective.
- Second Isomorphism. If $A\le G$, $B\trianglelefteq G$, then $A/(A\cap B)\cong AB/B$ via $a(A\cap B)\mapsto aB$.
- Proof. The map $\psi:A\to AB/B$, $a\mapsto aB$, is a surjective homomorphism. Its kernel is $\{a\in A: a\in B\}=A\cap B$. Apply the First Isomorphism Theorem to obtain $A/(A\cap B)\cong AB/B$. ■
- Third Isomorphism. If $K\trianglelefteq H\trianglelefteq G$, then $(G/K)/(H/K)\cong G/H$.
- Proof. The natural map $\phi:G/K\to G/H$, $gK\mapsto gH$, is a surjective homomorphism with kernel $H/K$. Thus $(G/K)/(H/K)\cong G/H$ by the First Isomorphism Theorem. ■

- Proposition (Kernel and image). For a homomorphism $\varphi:G\to H$, $\ker\varphi\trianglelefteq G$ and $\operatorname{Im}\varphi\le H$; moreover $g_1\ker\varphi=g_2\ker\varphi$ iff $\varphi(g_1)=\varphi(g_2)$.
	Proof. Normality: for $k\in\ker\varphi$ and $g\in G$, $\varphi(gkg^{-1})=\varphi(g)\varphi(k)\varphi(g)^{-1}=e$, so $gkg^{-1}\in\ker\varphi$. The rest is immediate from definitions. ■

## 1.4 Cyclic and Finite Abelian Groups
Cyclic groups and finite abelian groups.
- Cyclic. $\langle g\rangle\cong\mathbb Z$ or $\mathbb Z/n\mathbb Z$; subgroups are unique of each order dividing $|G|$.
- Cauchy’s theorem. If $p\mid |G|$, then $G$ has an element of order $p$.
- Proof. Let $C_p=\langle\tau\rangle$ act on $X=\{(g_1,\dots,g_p)\in G^p: g_1\cdots g_p=e\}$ by $\tau\cdot(g_1,\dots,g_p)=(g_2,\dots,g_p,g_1)$. Then $|X|=|G|^{p-1}$ since $g_p$ is determined by the first $p-1$ entries. By Burnside, the number of orbits is $\frac{1}{p}\sum_{i=0}^{p-1}|X^{\tau^i}|$. For $i\ne0$, $\tau^i$ is a $p$-cycle, and $X^{\tau^i}$ consists of $p$-tuples with all entries equal to some $g\in G$ and $g^p=e$, hence $|X^{\tau^i}|=|\{g\in G: g^p=e\}|$. Since $|X|\equiv |X^{\mathrm{id}}|\equiv |\{g: g^p=e\}|\ (\mathrm{mod}\ p)$ and $|X|\equiv0\ (\mathrm{mod}\ p)$, it follows that $|\{g: g^p=e\}|\equiv0\ (\mathrm{mod}\ p)$. As $e$ is one such element, there exists $g\ne e$ with $g^p=e$, hence an element of order $p$. ■
- Structure theorem. Every finitely generated abelian group is $$\mathbb Z^r\oplus\bigoplus_i \mathbb Z/n_i\mathbb Z,\quad n_i\mid n_{i+1},$$ or as a direct sum of $p$-primary cyclic groups.

- Proposition (Subgroups of cyclic groups). If $G=\langle g\rangle$ is cyclic of order $n$, then for each divisor $d\mid n$ there is a unique subgroup of order $d$, namely $\langle g^{n/d}\rangle$.
	Proof. Orders of elements in a cyclic group divide $n$ and $|\langle g^k\rangle|=n/\gcd(n,k)$. Uniqueness follows since two subgroups of the same order coincide. ■

## 1.5 Actions and Class Equation
Group actions and class equation. Conjugation action yields $$|G|=|Z(G)|+\sum_i [G:C_G(x_i)],$$ sum over representatives of noncentral conjugacy classes. Consequences: a $p$-group has nontrivial center; if $|G|=p^n$, $Z(G)\neq\{e\}$.

- Theorem (Orbit–Stabilizer). For a finite action $G\curvearrowright X$, $$|Gx|=[G:G_x].$$
	Proof. The map $G/G_x\to Gx$, $gG_x\mapsto g\cdot x$, is a $G$-equivariant bijection. ■

- Theorem (Class equation). For conjugation action on $G$, $$|G|=|Z(G)|+\sum [G:C_G(x_i)],$$ summing over one representative per noncentral conjugacy class.
	Proof. Decompose $G$ into conjugacy orbits. Central elements have orbit size $1$; a noncentral element $x$ has orbit size $[G:C_G(x)]$. Sum the orbit sizes. ■

- Corollary. If $|G|=p^n$ then $Z(G)\neq\{e\}$. If $G$ is finite and acts on a set of size $p^m$, then the number of fixed points is congruent to $|X|\ (\mathrm{mod}\ p)$.
	Proof. The first follows since all orbit sizes are powers of $p$, forcing a size-$1$ orbit. The second is a mod-$p$ version of Burnside’s lemma. ■

## 1.6 Sylow Theorems
Sylow Theorems. If $|G|=p^k m$ with $p\nmid m$:
- Existence: there is a subgroup of order $p^k$.
- Conjugacy: all subgroups of order $p^k$ are conjugate.
- Counting: the number $n_p\equiv1\pmod p$ and $n_p\mid m$.
Proof ideas: act on the set of $p^k$-subsets or on cosets of candidate subgroups; use counting and divisibility.
Proof (existence). Consider the action of $G$ on the set $\Omega$ of subsets of $G$ of size $p^k$ by left translation. Let the number of orbits be $t$ and pick representatives $\Omega_1,\dots,\Omega_t$ with stabilizers $G_{\Omega_i}$. Then $$\binom{|G|}{p^k}=\sum_{i=1}^t [G:G_{\Omega_i}]\equiv \sum_{i=1}^t [G:G_{\Omega_i}]\ (\mathrm{mod}\ p).$$ Since $p\nmid m$, the binomial coefficient is not divisible by $p$, forcing some stabilizer index to be not divisible by $p$. Thus $p^k\mid |G_{\Omega_i}|$. Let $P$ be a Sylow $p$-subgroup of $G_{\Omega_i}$; then $|P|=p^k$ and $P\le G$. 
Proof (conjugacy). Let $\mathcal S$ be the set of Sylow-$p$ subgroups. $G$ acts on $\mathcal S$ by conjugation, and by maximality of order, every orbit has size $[G:N_G(P)]$ for some $P$. If $P,Q\in\mathcal S$ lie in the same orbit, then $Q=gPg^{-1}$. This shows transitivity and hence conjugacy of any two Sylow subgroups.
Proof (counting). The orbit–stabilizer gives $n_p=[G:N_G(P)]$. The subgroup $P$ acts by conjugation on $\mathcal S$; fixed points are exactly the Sylow subgroups contained in $N_G(P)$, i.e., $P$ itself, so the number of fixed points is $1$ modulo $p$. By Burnside or class equation for the action, $n_p\equiv 1\ (\mathrm{mod}\ p)$. Also $n_p\mid m$ since $n_p=[G:N_G(P)]$ and $|N_G(P)|$ is divisible by $|P|=p^k$. ■

- Corollary. If $|G|=pq$ with primes $p<q$ and $p\nmid(q-1)$, then $G$ is cyclic.
	Proof. Sylow gives $n_q\equiv1\ (\mathrm{mod}\ q)$ and $n_q\mid p$, so $n_q=1$. Thus the unique Sylow-$q$ subgroup is normal. Similarly $n_p\equiv1\ (\mathrm{mod}\ p)$ and $n_p\mid q$, hence $n_p=1$ or $q$. If $n_p=q$, then $q\equiv1\ (\mathrm{mod}\ p)$, contradiction. So $n_p=1$. Two normal Sylow subgroups intersect trivially and commute, giving $G\cong C_p\times C_q\cong C_{pq}$. ■

## 1.7 Simple, Solvable, Composition Series
Simple, solvable, composition series. $A_n$ is simple for $n\ge5$. Derived series $G^{(0)}=G$, $G^{(i+1)}=[G^{(i)},G^{(i)}]$; solvable if $G^{(r)}=\{e\}$. Jordan–Hölder theorem: composition factors are unique up to order.

- Definition. A composition series is a subnormal chain $G=G_0\trianglerighteq G_1\trianglerighteq\cdots\trianglerighteq G_r=\{e\}$ with simple factors $G_i/G_{i+1}$.

- Theorem (Jordan–Hölder, statement). Any two composition series have the same multiset of composition factors up to isomorphism and order.
	Proof sketch. Use refinement of subnormal series and Schreier’s refinement theorem; factors of refinements are isomorphic up to permutation. ■

- Proposition. If $N\trianglelefteq G$ and both $N$ and $G/N$ are solvable, then $G$ is solvable.
	Proof. Derived series respects quotients: $(G/N)^{(i)}=G^{(i)}N/N$. If $N^{(r)}=\{e\}$ and $(G/N)^{(s)}=\{e\}$, then $G^{(r+s)}\subseteq N^{(r)}=\{e\}$. ■

## 1.8 Exercises
- Show that the intersection of all subgroups containing a subset $S$ is the subgroup generated by $S$.
- Prove Lagrange’s theorem and deduce that groups of prime order are cyclic.
- Classify subgroups of a cyclic group of order $n$; count the elements of each order.
- Use the class equation to show a group of order $p^2$ is abelian.
- Let $G$ act on itself by conjugation. Show that the number of conjugacy classes equals $\frac{1}{|G|}\sum_{g\in G}|C_G(g)|$.
- Prove Cauchy’s theorem without Burnside: consider the action of $\langle g\rangle$ on itself by left translation and count solutions to $x^p=e$.
- Prove Sylow I (existence) using group action on the set of $p$-subsets; compare with the proof in the text.
- Let $|G|=pq$ with primes $p<q$ and $p\nmid(q-1)$. Show $G$ is cyclic and determine all its subgroups.
- Show that if $G$ is solvable then every composition factor is cyclic of prime order.
- For a linear operator $T$ on a finite-dimensional vector space, prove that the sizes of Jordan blocks are determined by the chain of kernels of $(T-\lambda I)^k$.

## 1.9 Solutions
- Intersection generates $S$. 若 $\mathcal H=\{H\le G: S\subseteq H\}$，则 $\langle S\rangle=\bigcap_{H\in\mathcal H} H$：右侧是包含 $S$ 的所有子群的交，仍为子群且最小；包含性与最小性一一对应，定义即得。

- Lagrange 与素数阶群。左陪集划分 $G=\bigsqcup g_iH$，每个陪集与 $H$ 等大，故 $|G|=[G:H]|H|$。若 $|G|=p$ 为素数，则任何非平凡子群 $H$ 的阶整除 $p$，只能为 $p$，于是 $H=G$。任取 $g\ne e$，$\langle g\rangle\le G$ 非平凡，故 $\langle g\rangle=G$，从而 $G$ 循环。

- 循环群子群与计数。设 $G\cong \mathbb Z/n$。子群与 $n$ 的约数 $d\mid n$ 一一对应，唯一子群为 $\langle n/d\rangle$，其阶为 $d$。阶为 $d$ 的元素个数为 $\varphi(d)$（因为在 $\mathbb Z/n$ 中，元素 $k$ 的阶是 $n/\gcd(n,k)$，从而满足 $\mathrm{ord}(k)=d$ 的 $k$ 有 $\varphi(d)$ 个）。

- $|G|=p^2$ 则交换。类方程：$|G|=|Z(G)|+\sum [G:C_G(x_i)]$。各轨道大小为 $p$ 的幂，故 $|Z(G)|\equiv |G|\ (\mathrm{mod}\ p)$，从而 $|Z(G)|\ge p$。若 $|Z(G)|=p^2$ 则 $G$ 交换；若 $|Z(G)|=p$，则 $G/Z(G)$ 阶为 $p$ 循环，故 $G$ 交换。

- 共轭类数平均公式。令 $G$ 按共轭作用于自身，固定点集大小 $|X^g|=|C_G(g)|$。用 Burnside 得轨道数（即共轭类数）为 $\frac{1}{|G|}\sum_g |C_G(g)|$。

- Cauchy（无 Burnside 版）。令 $X=\{(g_1,\dots,g_p)\in G^p: g_1\cdots g_p=e\}$，则 $|X|=|G|^{p-1}$。令循环群 $C_p$ 作用于 $X$ 的坐标循环移位。除固定点外轨道大小为 $p$，故 $|X|\equiv |X^{C_p}|\ (\mathrm{mod}\ p)$。固定点恰为 $p$ 元组常数 $(g,\dots,g)$ 且 $g^p=e$。由 $|X|\equiv 0$ 得存在 $g\ne e$ 使 $g^p=e$，即存在阶为 $p$ 的元。

- Sylow I（存在）。让 $G$ 作用于大小为 $p^k$ 的子集族上，计数轨道与稳定子，用 $\binom{|G|}{p^k}\not\equiv0\ (\mathrm{mod}\ p)$ 迫使存在稳定子阶可被 $p^k$ 整除，从而含有 $p^k$ 阶子群。与课文证明等价。

- $|G|=pq$ 且 $p\nmid(q-1)$ 则循环。Sylow：$n_q\equiv1\ (\mathrm{mod}\ q)$ 且 $n_q\mid p$，故 $n_q=1$，Sylow-$q$ 正规。又 $n_p\equiv1\ (\mathrm{mod}\ p)$ 且 $n_p\mid q$，若 $n_p=q$ 则 $q\equiv1\ (\mathrm{mod}\ p)$ 矛盾，故 $n_p=1$。两正规 Sylow 互相交平凡且交换，$G\cong C_p\times C_q\cong C_{pq}$。其子群即各 Sylow 及其直积因子。

- 可解群之组成因子。若 $G$ 可解，导出列因子 $G^{(i)}/G^{(i+1)}$ 交换而又简单，故均为循环素数阶。

- Jordan 块大小由核链决定。对特征值 $\lambda$，令 $a_k=\dim \ker (T-\lambda I)^k$。设 $m_j$ 为大小 $j$ 的 Jordan 块个数，则有差分关系 $m_k=a_k-2a_{k-1}+a_{k-2}$（取 $a_0=0$），从而核维数链决定了各块大小与数量。■

---

# 2. Rings and Ideals

## 2.1 Basic Definitions and Examples
- Definition. A (commutative) ring with $1$ is a set $R$ with $+$, $\cdot$, $(R,+)$ abelian, $\cdot$ associative with identity $1$, and distributive laws. Units $U(R)$ form a group under $\cdot$; $a$ is nilpotent if $a^n=0$ for some $n>0$; idempotent if $a^2=a$.
- Examples. $\mathbb Z$, $K[x]$ for a field $K$, matrix rings $M_n(R)$ (noncommutative), product rings $R\times S$, quotient rings $R/I$.

## 2.2 Ideals, Quotients, and Correspondence
- Definition. An ideal $I\lhd R$ is an additive subgroup with $RI\subseteq I$. For $\varphi:R\to S$ a ring homomorphism, the kernel $\ker\varphi$ is an ideal; the image is a subring.
- Theorem (First Isomorphism). For a homomorphism $\varphi:R\to S$, $$R/\ker\varphi\cong \operatorname{Im}\varphi.$$
	Proof. Define $\tilde\varphi:r+\ker\varphi\mapsto \varphi(r)$. Well-defined since $r-r'\in\ker\varphi\Rightarrow \varphi(r)=\varphi(r')$. Homomorphism, surjective by definition, and kernel $0$. ■
- Theorem (Correspondence). If $\pi:R\twoheadrightarrow R/I$, then ideals $J$ with $I\subseteq J\lhd R$ correspond to ideals of $R/I$ via $J\mapsto J/I$.
	Proof. Check order-preserving bijection with inverse $\bar J\mapsto \pi^{-1}(\bar J)$. ■

## 2.3 Prime and Maximal Ideals
- Proposition. In a commutative ring with $1$, $M$ is maximal iff $R/M$ is a field; $P$ is prime iff $R/P$ is an integral domain. Every maximal ideal is prime.
	Proof. Quotients translate algebraic properties: fields/domains have only trivial ideals/zero divisors. Maximal$\Rightarrow$prime follows since fields are domains. ■
- Proposition (Existence of maximal ideals). Every proper ideal is contained in a maximal ideal.
	Proof. Partially order the set of proper ideals containing $I$ by inclusion; apply Zorn’s lemma as in Section 0.3. ■
- Lemma. If $R$ is a nonzero ring and $S\subseteq R$ is a multiplicative set disjoint from a prime ideal $P$, then $P$ lifts to a prime ideal in the localization $S^{-1}R$ iff $P\cap S=\varnothing$.
	Proof. Standard bijection $\{\text{prime ideals }\mathfrak p\subseteq R: \mathfrak p\cap S=\varnothing\}\leftrightarrow\{\text{prime ideals of }S^{-1}R\}$. ■

## 2.4 Chinese Remainder Theorem and Idempotents
- Theorem (CRT, two ideals). If $I+J=R$, then the map $$\Phi:R\to R/I\times R/J,\quad r\mapsto(r\bmod I, r\bmod J)$$ has kernel $I\cap J$ and is surjective, hence $$R/(I\cap J)\cong R/I\times R/J.$$
	Proof. As already given above; surjectivity via $a+b=1$ with $a\in I,b\in J$. ■
- Theorem (CRT, finite family). If $I_1,\dots,I_n$ are pairwise comaximal, then $$R/\bigcap_{k=1}^n I_k\cong \prod_{k=1}^n R/I_k.$$
	Proof. Induct on $n$ using the two-ideal case. ■
- Proposition (Idempotents split products). If $e\in R$ with $e^2=e$, then $$R\cong eR\times (1-e)R,$$ via $r\mapsto (er,(1-e)r)$. Conversely, products yield nontrivial idempotents.
	Proof. Verify inverse $(x,y)\mapsto x+y$ with $ex=x,(1-e)y=y$, kernels $\ker(er)=\{r:(1-e)r=0\}$, etc. ■

## 2.5 Noetherian Rings and Hilbert’s Basis Theorem
- Definition. $R$ is Noetherian if it satisfies ACC on ideals; equivalently every ideal is finitely generated.
- Theorem (Hilbert’s Basis Theorem). If $R$ is Noetherian, then $R[x]$ is Noetherian.
	Proof. Same as above: use leading coefficient ideal $J$ and degree induction to generate $I\subseteq R[x]$ by finitely many polynomials. ■
- Corollary. If $R$ is Noetherian, then $R[x_1,\dots,x_n]$ is Noetherian for all $n$ (iterate HBT).

## 2.6 ED ⇒ PID ⇒ UFD
- Definition. A Euclidean domain admits a norm $N$ with division algorithm. A PID is a domain where every ideal is principal. A UFD is a domain where factorization into irreducibles exists and is unique up to units and order.
- Theorem. ED $\Rightarrow$ PID.
	Proof. In an ED, perform Euclidean algorithm to show any ideal $(S)=(d)$ with $d$ a gcd of $S$. ■
- Theorem. PID $\Rightarrow$ UFD.
	Proof. In a PID, every nonzero prime ideal is maximal. Irreducible $\Rightarrow$ prime; ACC on principal ideals gives existence of factorization by minimal counterexample. Uniqueness via primality. ■
- Example/Counterexample. $\mathbb Z[x]$ is UFD but not PID; $\mathbb Z[\sqrt{-5}]$ is not UFD.

## 2.7 Gauss’s Lemma and Irreducibility Tests
- Lemma (Gauss). Over a UFD $R$, the content $c(fg)=c(f)c(g)$ and primitive polynomials multiply to primitive. Moreover, $f\in R[x]$ is irreducible iff it is primitive and irreducible in $\operatorname{Frac}(R)[x]$.
	Proof. Use gcd of coefficients and degree arguments; clear denominators for the reduction to the field of fractions. ■
- Theorem (Eisenstein). If there exists a prime $p\in R$ such that $p\mid a_i$ for $i<n$, $p\nmid a_n$ and $p^2\nmid a_0$ for $f=\sum_{i=0}^n a_i x^i\in \mathbb Z[x]$, then $f$ is irreducible in $\mathbb Q[x]$.
	Proof. Mod $p$ the polynomial becomes $a_n x^n$, forcing any factorization to have a constant term divisible by $p$, contradicting $p^2\nmid a_0$. ■
- Proposition (Rational root test). If $f=\sum a_i x^i\in \mathbb Z[x]$ has a rational root $r=\frac{u}{v}$ in lowest terms, then $u\mid a_0$ and $v\mid a_n$.
	Proof. Substitute and clear denominators to obtain divisibility conditions. ■

## 2.8 Exercises
- Prove the Correspondence Theorem for ideals and give an example in $\mathbb Z$.
- Show that in a commutative ring with $1$, every maximal ideal is prime. Give a counterexample in a noncommutative ring.
- Use Zorn’s Lemma to prove that every proper ideal is contained in a maximal ideal.
- Prove the two-ideal and $n$-ideal versions of CRT. Apply to decompose $\mathbb Z/n\mathbb Z$ and count idempotents of $\mathbb Z/n\mathbb Z$.
- Show that $R\cong eR\times(1-e)R$ for an idempotent $e$, and deduce a bijection between central idempotents and product decompositions.
- Prove Hilbert’s Basis Theorem for $R[x]$ and extend to $R[x_1,\dots,x_n]$ by induction.
- Show ED $\Rightarrow$ PID by proving every ideal has a minimal norm element.
- In a PID, prove irreducible $\Rightarrow$ prime and deduce uniqueness of factorization.
- Use Gauss’s lemma to show that $x^4+1$ is irreducible over $\mathbb Q$; factor it over $\mathbb Q(i)$.
- Apply Eisenstein with $p=2$ to show $x^5+4x+2$ is irreducible in $\mathbb Q[x]$; test rational roots for $x^3-6x+3$.

## 2.9 Solutions
- 对应定理与例子。对满射 $\pi:R\twoheadrightarrow R/I$，映射 $J\mapsto J/I$ 给出 $I\subseteq J\lhd R$ 与 $R/I$ 的理想之间的序反同构，逆映射为 $\bar J\mapsto \pi^{-1}(\bar J)$。例：$\mathbb Z\twoheadrightarrow \mathbb Z/12$，含 $12\mathbb Z$ 的理想对应于 12 的因子理想。

- 极大理想必素（交换环）。若 $M$ 极大，则 $R/M$ 为域，故无零因子，因而 $M$ 素。非交换反例：$M_2(\mathbb R)$ 中的双边理想只有 $0, M_2(\mathbb R)$，$0$ 极大为双边理想但不是素（非交换意义上“素理想”的定义不同；也可给出仅左/右理想的反例）。

- Zorn 得极大理想。对包含给定真理想 $I$ 的所有真理想按包含排序，链的并仍真理想（否则 1 在并中，有限性逼出某链元为全环矛盾），用 Zorn 得极大元。

- CRT 两理想与多理想。若 $I+J=R$，则 $\Phi:r\mapsto (r\bmod I, r\bmod J)$ 核为 $I\cap J$ 且满，故 $R/(I\cap J)\cong R/I\times R/J$。多理想用归纳。应用：$\mathbb Z/n\cong \prod \mathbb Z/p_i^{e_i}$。幂等元计数等于直积因子个数的各自幂等元个数之积；在 $\mathbb Z/p^e$ 中幂等元仅 0 与 1，故 $\mathbb Z/n$ 的幂等元数为 $2^{\omega(n)}$（$\omega$ 为不同素因子个数）。

- 幂等与直积分解。若 $e^2=e$，映射 $r\mapsto (er,(1-e)r)$ 给环同构 $R\cong eR\times (1-e)R$。若 $e$ 为中心幂等，对应分解为交换环直积，给出中心幂等与直积分解的一一对应。

- 希尔伯特基定理。设 $I\subseteq R[x]$。令 $J=\{I \text{ 中多项式的首项系数}\}\subseteq R$。$R$ Noether，取 $a_1,\dots,a_t$ 生成 $J$，挑选 $f_i\in I$ 首项系数为 $a_i$，再对度数递降做有限补充，得到有限生成集。多元情形迭代一元情形即可。

- ED⇒PID。给理想 $I\ne0$，取具有最小“范数”的非零元 $d\in I$。对任意 $a\in I$，除法得 $a=qd+r$ 且 $N(r)<N(d)$，若 $r\ne0$ 与 $d$ 极小矛盾，故 $r=0$，从而 $I=(d)$ 为主理想。

- PID 中不可约即素，且唯一分解。PID 中非零素理想极大，因而不可约元生成的主理想为素理想，推出不可约元为素元。存在性用主理想上的 ACC 最小反例法，唯一性用素元整除性比较。

- 用 Gauss 引理：$x^4+1$ 原始且在 $\mathbb Q[x]$ 若分解则在 $\mathbb Z[x]$ 亦分解。模 2：$x^4+1\equiv x^4+1$ 无一次因子，尝试二次分解 $(x^2+ax+b)(x^2+cx+d)$ 的整数系数无解；故不可约于 $\mathbb Q[x]$。在 $\mathbb Q(i)$ 上分解：$x^4+1=(x^2+\sqrt2\,x+1)(x^2-\sqrt2\,x+1)$，进一步在 $\mathbb Q(i)$ 可写为 $(x^2+ix\sqrt2+1)(x^2-ix\sqrt2+1)$（或经根 $\zeta_8$ 表达）。

- Eisenstein 与有理根测试。$x^5+4x+2$ 以 $p=2$ 满足 Eisenstein 条件（常数项仅含一次 2，首项不被 2 整除），故在 $\mathbb Q[x]$ 不可约。对 $x^3-6x+3$，有理根 $u/v$ 满足 $u\mid 3, v\mid 1$，尝试 $\pm1,\pm3$ 皆不为根，故无一次因子；进一步可判别是否可约（例如判别式、或模素因式分解提供证据）。■

---

# 3. Fields and Extensions

## 3.1 Basics: Extensions and Tower Law
- Definition. A field extension $L/K$ is an inclusion of fields $K\subseteq L$. The degree $[L:K]$ is the dimension of $L$ as a $K$-vector space. Elements of $L$ are algebraic over $K$ if they satisfy a nonzero polynomial in $K[x]$, otherwise transcendental.
- Theorem (Tower Law). For $K\subseteq F\subseteq L$ with finite degrees, $$[L:K]=[L:F]\,[F:K].$$
	Proof. Choose a $K$-basis of $F$ and an $F$-basis of $L$; their products form a $K$-basis of $L$. Linear independence and spanning are routine. ■

## 3.2 Algebraic Elements and Minimal Polynomials
- Definition. For algebraic $\alpha\in L$, the set $\{f\in K[x]: f(\alpha)=0\}$ is a nonzero ideal of $K[x]$ generated by a unique monic polynomial $m_{\alpha,K}$, called the minimal polynomial.
- Theorem. $m_{\alpha,K}$ is irreducible, unique, and $$[K(\alpha):K]=\deg m_{\alpha,K}.$$ Moreover, $$K(\alpha)\cong K[x]/(m_{\alpha,K}(x)).$$
	Proof. Consider $\operatorname{ev}_\alpha:K[x]\to L$, $f\mapsto f(\alpha)$. Its kernel is generated by a unique monic $m$. If $m=fg$ with $\deg f,\deg g>0$, then $0=f(\alpha)g(\alpha)$ in the domain $K(\alpha)$, contradiction unless one factor is constant. Thus $m$ is irreducible. The isomorphism follows by the First Isomorphism Theorem and the degree statement by dimension count. Uniqueness is immediate. ■
- Proposition. If $m_{\alpha,K}(x)=x^d+a_{d-1}x^{d-1}+\cdots+a_0$, then in the simple separable extension $K(\alpha)/K$, $$\operatorname{Tr}_{K(\alpha)/K}(\alpha)=-a_{d-1},\quad \operatorname{N}_{K(\alpha)/K}(\alpha)=(-1)^d a_0.$$
	Proof. Roots of $m$ are the $K$-embeddings images of $\alpha$; trace and norm are symmetric polynomials in the roots equal to the signed coefficients. ■

## 3.3 Splitting Fields and Normal Extensions
- Definition. A splitting field of $f\in K[x]$ is the smallest extension of $K$ in which $f$ factors into linear terms.
- Theorem (Existence and uniqueness). Every $f\in K[x]$ has a splitting field $L/K$, unique up to $K$-isomorphism.
	Proof. Adjoin one root at a time inside an algebraic closure; at most $\deg f$ steps suffice. Uniqueness follows since any $K$-embedding permutes the roots and hence maps one splitting field into another, yielding a $K$-isomorphism. ■
- Proposition (Normal extensions). A finite extension $L/K$ is normal iff $L$ is a splitting field over $K$ of a family of polynomials in $K[x]$; equivalently, every $K$-embedding $L\hookrightarrow \overline K$ maps $L$ to itself.
	Proof. Standard equivalences via behavior of irreducible factors and images of roots under embeddings. ■

## 3.4 Separability and Perfect Fields
- Definition. An irreducible $f\in K[x]$ is separable if it has no repeated roots in an algebraic closure, equivalently $\gcd(f,f')=1$. $\alpha$ is separable over $K$ if $m_{\alpha,K}$ is separable. An extension is separable if all its elements are separable.
- Proposition. Over $\operatorname{char}0$, every algebraic extension is separable. Over $\operatorname{char}p>0$, inseparability occurs precisely when $m'(x)=0$, i.e., $m(x)=g(x^p)$ for some $g\in K[x]$.
	Proof. In char $0$, derivatives detect multiple roots: $\gcd(f,f')=1$ for irreducible $f$. In char $p$, $m'(x)=0$ iff all exponents are multiples of $p$, so $m(x)=g(x^p)$. ■
- Theorem. A field $K$ is perfect iff either $\operatorname{char}K=0$ or $\operatorname{char}K=p>0$ and the Frobenius $x\mapsto x^p$ is surjective on $K$.
	Proof. Surjectivity of Frobenius ensures every element has a separable minimal polynomial. Finite fields satisfy this, hence are perfect. ■

## 3.5 Primitive Element Theorem (PET)
- Theorem. If $L/K$ is finite and separable, then $L=K(\alpha)$ for some $\alpha\in L$.
	Proof. Suppose $L=K(\alpha,\beta)$. For distinct embeddings $\sigma\ne\tau$ of $L$ fixing $K$, consider $$h_{\sigma,\tau}(T)=(\sigma(\beta)-\tau(\beta))T+\sigma(\alpha)-\tau(\alpha).$$ There are finitely many such nonzero linear polynomials. Choose $c\in K$ avoiding their roots; then embeddings of $K(\alpha+c\beta)$ are all distinct, giving $[K(\alpha+c\beta):K]=[L:K]$ and hence equality of fields. If $K$ is finite, $L^{\times}$ is cyclic, so a generator $\gamma$ yields $L=K(\gamma)$. ■

## 3.6 Finite Fields
- Theorem (Existence and uniqueness). For every prime power $q=p^n$ there exists, up to isomorphism, a unique field $\mathbb F_q$ with $q$ elements.
	Proof. Existence: take an irreducible $f\in \mathbb F_p[x]$ of degree $n$ and set $\mathbb F_p[x]/(f)$. Uniqueness: any two fields of size $q$ are splitting fields of $x^{q}-x$ over $\mathbb F_p$ and hence $\mathbb F_p$-isomorphic. ■
- Proposition. $\mathbb F_q^{\times}$ is cyclic of order $q-1$; the subfields of $\mathbb F_{p^n}$ are exactly $\mathbb F_{p^d}$ with $d\mid n$.
	Proof. A finite subgroup of a field’s multiplicative group is finite abelian; existence of an element of maximal order implies cyclicity. Fixed fields of powers of Frobenius correspond to divisors of $n$. ■
- Corollary. $$\operatorname{Gal}(\mathbb F_{p^n}/\mathbb F_p)=\langle x\mapsto x^p\rangle\cong \mathbb Z/n\mathbb Z.$$

- Example (Cyclotomic glimpse). $\mathbb Q(\zeta_n)$ has degree $\varphi(n)$; $\Phi_n(x)$ is irreducible; $$\operatorname{Gal}(\mathbb Q(\zeta_n)/\mathbb Q)\cong (\mathbb Z/n\mathbb Z)^{\times}.$$ ■

## 3.7 Trace and Norm
- Definition. For finite separable $L/K$, define $$\operatorname{Tr}_{L/K}(\alpha)=\sum_{\sigma}\sigma(\alpha),\quad \operatorname{N}_{L/K}(\alpha)=\prod_{\sigma}\sigma(\alpha),$$ where the sums/products run over $K$-embeddings $\sigma:L\hookrightarrow \overline K$. Equivalently, if $T_\alpha:L\to L$ is multiplication by $\alpha$, then $$\operatorname{Tr}_{L/K}(\alpha)=\operatorname{tr}_K(T_\alpha),\quad \operatorname{N}_{L/K}(\alpha)=\det_K(T_\alpha).$$
- Properties.
	1) Transitivity: for $K\subseteq F\subseteq L$, $$\operatorname{Tr}_{L/K}=\operatorname{Tr}_{F/K}\circ \operatorname{Tr}_{L/F},\quad \operatorname{N}_{L/K}=\operatorname{N}_{F/K}\circ \operatorname{N}_{L/F}.$$
	2) Multiplicativity/additivity: $\operatorname{N}_{L/K}(\alpha\beta)=\operatorname{N}_{L/K}(\alpha)\operatorname{N}_{L/K}(\beta)$, $\operatorname{Tr}_{L/K}(\alpha+\beta)=\operatorname{Tr}_{L/K}(\alpha)+\operatorname{Tr}_{L/K}(\beta)$.
	3) Nondegeneracy: the bilinear form $(x,y)\mapsto \operatorname{Tr}_{L/K}(xy)$ on $L$ is nondegenerate.
	Proof. Follows from linear algebra of $T_\alpha$ and eigenvalues given by embeddings. Nondegeneracy: if $x\ne0$, then $T_x$ is invertible iff $\operatorname{N}_{L/K}(x)\ne0$; duality yields a $y$ with nonzero trace. ■

## 3.8 Exercises
- Prove the Tower Law and give a counterexample if finiteness is dropped.
- Compute minimal polynomials and degrees: $\sqrt{2}+\sqrt{3}$ over $\mathbb Q$; $\cos(2\pi/7)$ over $\mathbb Q$ (hint: cyclotomic).
- Show that $x^p-a\in K[x]$ is inseparable over $K$ in char $p>0$ iff $a\in K^p$.
- Construct the splitting field of $x^4-2$ over $\mathbb Q$ and decide whether it is normal and/or Galois.
- Prove PET for $L=K(\alpha,\beta)$ over infinite $K$ by the “bad constants are finite” argument; detail the embedding count.
- Show $x^{p^n}-x$ is the product of all monic irreducibles over $\mathbb F_p$ whose degrees divide $n$.
- Prove $\mathbb F_{p^n}^{\times}$ is cyclic and find a primitive element for small $p,n$ explicitly.
- For $m_{\alpha,K}(x)=x^d+a_{d-1}x^{d-1}+\cdots+a_0$, show $\operatorname{Tr}_{K(\alpha)/K}(\alpha^k)$ can be expressed via Newton identities.
- Prove transitivity of trace and norm using matrices of $T_\alpha$ with respect to compatible bases.
- Determine whether $\mathbb Q(\sqrt[3]{2})/\mathbb Q$ is normal/separable and compute its discriminant (glimpse).

## 3.9 Solutions
- 塔式法则与反例。有限维时取 $K$-基与 $F$-基相乘得到 $L$ 的 $K$-基，维数相乘即得。反例：若 $[F:K]$ 或 $[L:F]$ 无穷，维数乘法一般不成立（例如取超越扩张 $K\subset K(t)\subset K(t,u)$）。

- 最小多项式与次数。
	• $\alpha=\sqrt2+\sqrt3$：平方得 $\alpha^2=5+2\sqrt6$，再移项平方消去根号，得 $x^4-10x^2+1=0$。可证其在 $\mathbb Q[x]$ 不可约（例如代入 $x^2=y$ 后用二次判别或不可约性判据），故 $[\mathbb Q(\alpha):\mathbb Q]=4$。
	• $\cos(2\pi/7)$：位于实七次单位根域 $\mathbb Q(\zeta_7+\zeta_7^{-1})$，其次数为 $\varphi(7)/2=3$，最小多项式为三次（可由三角恒等式或 Chebyshev 多项式求得）。

- $x^p-a$ 的不可分判据（特征 $p$）。导数为 $px^{p-1}=0$，故重根当且仅当其为 $g(x^p)$ 型，等价于 $a\in K^p$。若 $a\notin K^p$，多项式不可约且可分；若 $a=b^p$，则 $x^p-b^p=(x-b)^p$ 不可分。

- $x^4-2$ 的分裂域与伽罗瓦性。根为 $\sqrt[4]{2}\,\zeta_8^{k}$。分裂域为 $\mathbb Q(\sqrt[4]{2},\,i)$，度为 $[\mathbb Q(\sqrt[4]{2}):\mathbb Q]\cdot[\mathbb Q(i):\mathbb Q]=4\cdot2=8$。它是正常（分裂域）且可分（特征 0），故 Galois。

- PET 的“坏常数有限”法。对 $K$ 无穷，考虑不同的 $K$-嵌入 $\sigma,\tau$，令 $h_{\sigma,\tau}(c)=(\sigma(\beta)-\tau(\beta))c+\sigma(\alpha)-\tau(\alpha)$。坏常数是有限多个线性方程的解之并，因 $K$ 无穷可取 $c$ 避开它们，使 $K(\alpha+c\beta)$ 的嵌入数最大等于 $[L:K]$，从而 $L=K(\alpha+c\beta)$。

- $x^{p^n}-x$ 的因式。其根恰是 $\mathbb F_{p^n}$ 的所有元素；度整除 $n$ 的不可约多项式的根都落在 $\mathbb F_{p^n}$，反之亦然，故 $x^{p^n}-x$ 是这些不可约多项式的乘积。

- 有限域乘法群为循环。有限阿贝尔群分解为循环直和，取一元素具有最大阶，利用 $|\mathbb F_{q}^\times|=q-1$ 中每个素因子都能实现，得整体循环性。小例：$\mathbb F_7^\times$ 阶 6，原根 3（或 5）可验。

- Newton 恒等式表述迹。若 $m_{\alpha}(x)=x^d+a_{d-1}x^{d-1}+\cdots+a_0$，则根的幂和 $s_k=\sum_i r_i^k$ 可由系数 $a_j$ 递推（Newton 公式），而 $\operatorname{Tr}(\alpha^k)=s_k$（在可分情形）即根幂和。

- 迹与范的传递性。以相容基表示乘法算子矩阵，块上取迹/行列式，利用 $\operatorname{tr}$ 与 $\det$ 在分块/相似变换下的性质，可得 $\operatorname{Tr}_{L/K}=\operatorname{Tr}_{F/K}\circ \operatorname{Tr}_{L/F}$ 与范的类似公式。

- $\mathbb Q(\sqrt[3]{2})/\mathbb Q$ 的性质与判别式。特征 0 故可分；因 $x^3-2$ 在 $\mathbb Q$ 不可约且分裂域需要加入 $\zeta_3$，故该扩张本身不正规（不是分裂域）。判别式（极小多项式的）为 $-27\cdot 4=-108$。■

---

# 4. Galois Theory

## 4.1 Galois Extensions and Fixed Fields
- Definition. A finite extension $L/K$ is Galois if it is normal and separable. The Galois group is $$G=\operatorname{Gal}(L/K)=\{\sigma\in\operatorname{Aut}(L):\sigma|_K=\operatorname{id}\}.$$ The fixed field of $H\le \operatorname{Aut}(L)$ is $L^H=\{x\in L: \sigma(x)=x\ \forall\sigma\in H\}$.
- Proposition. Always $|\operatorname{Gal}(L/K)|\le [L:K]$. Moreover, $L/K$ is Galois iff $|\operatorname{Gal}(L/K)|=[L:K]$ and then $K=L^{\operatorname{Gal}(L/K)}$.
	Proof. Each $K$-embedding $L\hookrightarrow \overline K$ is determined by images of a primitive element; there are at most $[L:K]$ such embeddings. Equality and fixed-field statement follow from normality and separability (extensions of embeddings and distinct roots). ■

## 4.2 Artin’s Theorem (Fixed Field of a Finite Group)
- Theorem (Artin). Let $G\subseteq \operatorname{Aut}(L)$ be finite and set $K=L^G$. If $L/K$ is separable, then $L/K$ is Galois, $$[L:K]=|G|,$$ and $$\operatorname{Gal}(L/K)=G.$$
	Proof. The $K$-linear map $\theta:L\to L^{|G|}$, $x\mapsto (\sigma(x))_{\sigma\in G}$, is injective, so $[L:K]\le |G|$. Conversely, separability implies linear independence of distinct $K$-embeddings; hence $[L:K]\ge |G|$. Thus $[L:K]=|G|$. By definition, automorphisms fixing $K$ are exactly $G$, so $\operatorname{Gal}(L/K)=G$ and $L/K$ is normal and separable. ■

## 4.3 Fundamental Theorem of Galois Theory (FTGT)
- Theorem. For a finite Galois extension $L/K$ with $G=\operatorname{Gal}(L/K)$, the maps $$H\subseteq G\longleftrightarrow L^H\supseteq K$$ give an inclusion-reversing bijection. Moreover,
	$$[L:L^H]=|H|,\qquad [L^H:K]=|G|/|H|.$$
	Normal subgroups $H\trianglelefteq G$ correspond to normal intermediate fields $E=L^H$, and then $$\operatorname{Gal}(E/K)\cong G/H.$$
	Proof. Define $\Phi(H)=L^H$ and $\Psi(E)=\operatorname{Gal}(L/E)$. Then $\Psi(\Phi(H))=H$ and $\Phi(\Psi(E))=E$ by fixed-point arguments. Degree relations follow from Artin’s theorem and Lagrange in $G$. Normality corresponds to stability under conjugation and the restriction homomorphism $G\to \operatorname{Gal}(E/K)$ induces the isomorphism. ■

## 4.4 Core Examples and Computations
- Quadratic extensions. For $K$ of $\operatorname{char}\ne2$ and $a\notin K^{\times2}$, $L=K(\sqrt a)$ has $\operatorname{Gal}(L/K)\cong C_2$.
- Cubic $x^3-2$ over $\mathbb Q$. Irreducible by Eisenstein ($p=2$). The splitting field is $\mathbb Q(\sqrt[3]{2},\zeta_3)$ of degree $6$; the group is $S_3$ (non-abelian of order $6$). Discriminant for $x^3+px+q$ is $\Delta=-4p^3-27q^2$, hence for $x^3-2$ we get $\Delta=-27\cdot 4=-108$, a non-square in $\mathbb Q$, proving the group is not contained in $A_3$.
- Cyclotomic fields. $\mathbb Q(\zeta_n)$ has degree $\varphi(n)$ and $$\operatorname{Gal}(\mathbb Q(\zeta_n)/\mathbb Q)\cong (\mathbb Z/n\mathbb Z)^{\times}.$$ Subfields correspond to subgroups of units.
- Finite fields. $$\operatorname{Gal}(\mathbb F_{p^n}/\mathbb F_p)=\langle x\mapsto x^p\rangle\cong \mathbb Z/n\mathbb Z.$$ Factorization of $x^{p^n}-x$ encodes subextensions. ■

## 4.5 Solvability by Radicals (char 0)
- Definitions. A radical extension is obtained by successively adjoining $n$-th roots: $$K=K_0\subseteq K_1\subseteq\cdots\subseteq K_r=L,\quad K_{i}=K_{i-1}(\alpha_i),\ \alpha_i^{n_i}\in K_{i-1}.$$ A polynomial is solvable by radicals over $K$ if its roots lie in a radical extension of $K$.
- Theorem (Abel–Ruffini in group form). Over fields of characteristic $0$:
	(i) If $f\in K[x]$ is solvable by radicals, then the Galois group of its splitting field is solvable.
	(ii) Conversely, if $L/K$ is the splitting field of $f$ with $\operatorname{Gal}(L/K)$ solvable and $f$ separable, then the roots of $f$ can be expressed by radicals over $K$ (after possibly adjoining suitable roots of unity).
	Proof sketch. (i) Adjoining radicals yields a tower with abelian (cyclic) Galois steps after adjoining roots of unity (Kummer theory), hence the total Galois group is solvable. (ii) Use the derived series and induction to realize $L$ inside a tower of cyclic extensions obtained by adjoining radicals (again using existence of needed roots of unity). ■

## 4.6 Discriminant and the Alternating Group Criterion
- Definition. For a separable polynomial $f\in K[x]$ with roots $\alpha_1,\dots,\alpha_n$ in an algebraic closure, the discriminant is $$\Delta(f)=\prod_{i<j}(\alpha_i-\alpha_j)^2\in K.$$
- Theorem. Assume $\operatorname{char}K\ne2$ and $f$ is separable of degree $n$. Let $G\le S_n$ be the Galois group acting on the roots. Then $$G\subseteq A_n\ \Longleftrightarrow\ \Delta(f)\in K^{\times2}.$$ 
	Proof sketch. Fix a choice of square root $\sqrt{\Delta}$ in the splitting field. For $\sigma\in G$, $\sigma(\sqrt{\Delta})=\operatorname{sgn}(\sigma)\sqrt{\Delta}$. Thus $\sqrt{\Delta}$ is fixed by $G$ iff every $\sigma$ has even sign, i.e., $G\subseteq A_n$. ■

## 4.7 Frobenius Cycle Types via Reductions (glimpse)
- Statement (Dedekind/Chebotarev, glimpse). For $f\in \mathbb Z[x]$ with Galois group $G\le S_n$ acting transitively on roots, for all but finitely many primes $p$, the factorization pattern of $f$ modulo $p$ corresponds to the cycle structure of a Frobenius element in $G$. Consequently, the density of primes with a given factorization pattern equals the proportion of elements of $G$ with the corresponding cycle type (Chebotarev density theorem).
	Remark. This allows experimental detection of $G$ by sampling factorizations mod primes. ■

## 4.8 Exercises
- Prove that $|\operatorname{Gal}(L/K)|\le [L:K]$ and that equality holds iff $L/K$ is normal and separable with $K=L^{\operatorname{Gal}(L/K)}$.
- State and prove Artin’s theorem in your own words, including the key injective map $\theta$ and the separability argument.
- For $L/K$ finite Galois, verify the subgroup–中间域对应，计算 $[L:L^H]$ 与 $[L^H:K]$ 并证明正规性与正合对应。
- Compute $\operatorname{Gal}(x^4-2/\mathbb Q)$ and its splitting field degree; decide if it is solvable by radicals. Compare with $x^3-2$.
- Show that the discriminant of a cubic $x^3+px+q$ is $\Delta=-4p^3-27q^2$ and use the square/non-square criterion to test $G\subseteq A_3$.
- Prove that a quadratic extension has Galois group $C_2$ and characterize when a biquadratic extension has Galois group $C_2\times C_2$.
- For cyclotomic $\mathbb Q(\zeta_n)$, prove the isomorphism with $(\mathbb Z/n\mathbb Z)^{\times}$ and identify the subfields for $n=8,12$.
- Explain why solvable-by-radicals implies solvable Galois group in characteristic $0$, indicating where roots of unity are needed.
- For $f\in \mathbb Z[x]$ irreducible, gather computational evidence for its Galois group by factoring $f\ (\bmod\ p)$ for several primes and matching cycle types.
- Let $L/K$ be finite separable and $\alpha\in L$. Show $K(\alpha)/K$ is Galois iff all $K$-embeddings of $K(\alpha)$ into $\overline K$ map $\alpha$ into $K(\alpha)$. 

## 4.9 Solutions
- $|\operatorname{Gal}(L/K)|\le [L:K]$ 及何时取等。$K$-嵌入数至多为维数 $[L:K]$；若正好等于，则所有嵌入封闭 $L$（正规）且互异（可分），并且固定域等于 $K$。反向也成立：正规可分意味着每个 $K$-嵌入是自同构，故群阶等于维数。

- Artin 定理要点。设有限群 $G\subseteq \operatorname{Aut}(L)$，$K=L^G$。$\theta:L\to L^{|G|}$，$x\mapsto (\sigma(x))_{\sigma\in G}$ 为 $K$-线性单射，故 $[L:K]\le |G|$。分离性保证不同 $K$-嵌入线性无关，从而 $[L:K]\ge |G|$，合并得等号，且 $\operatorname{Gal}(L/K)=G$，$L/K$ 为 Galois。

- 基本定理（对应、度数、正规/正合）。映射 $H\mapsto L^H$ 与 $E\mapsto \operatorname{Gal}(L/E)$ 互逆且反向包含。$[L:L^H]=|H|$、$[L^H:K]=|G|/|H|$ 来自 Artin 定理与拉格朗日。正规中间域对应正规子群，商同构 $\operatorname{Gal}(E/K)\cong G/H$。

- $\operatorname{Gal}(x^4-2/\mathbb Q)$ 与可解性。上一章已给：分裂域 $\mathbb Q(\sqrt[4]{2}, i)$，度 8，群为二面体 $D_4$（或同构的阶 8 子群），是可解群，因此根式可解。对比 $x^3-2$ 得到 $S_3$ 群，亦可解。

- 三次判别式。对 $x^3+px+q$，$\Delta=-4p^3-27q^2$。$\Delta$ 为平方当且仅当 Galois 群包含于 $A_3\cong C_3$。例如 $x^3-2$ 的判别式 $-108$ 非平方，故群为 $S_3$。

- 二次与双二次扩张。二次域 $K(\sqrt a)/K$ 的 Galois 群为 $C_2$。双二次扩张 $K(\sqrt a,\sqrt b)/K$ 的 Galois 群为 $C_2\times C_2$ 当且仅当三者 $\sqrt a,\sqrt b,\sqrt{ab}$ 对应的三个二次子扩张彼此不同（等价于 $a,b,ab$ 在 $K^{\times}/K^{\times2}$ 中非平凡且互异）。

- 圆分域的同构与子域。$\operatorname{Gal}(\mathbb Q(\zeta_n)/\mathbb Q)\cong (\mathbb Z/n)^{\times}$ 由 $\sigma_a(\zeta_n)=\zeta_n^a$ 给出。$n=8$ 时群为 $(\mathbb Z/8)^{\times}\cong C_2\times C_2$，子域对应其子群；$n=12$ 时 $(\mathbb Z/12)^{\times}\cong C_2\times C_2$，同理列出二次子域与三次子域的对应（若有）。

- 根式可解蕴含群可解（特征 0）。根式塔相邻层在引入适当单位根后为循环（阿贝尔）Galois 扩张，导出一个以阿贝尔群为因子的群列，故总体 Galois 群可解。需要单位根用于将 Kummer 扩张变成循环。

- 通过模素分解推断群（证据）。对若干 $p$，在 $\mathbb F_p$ 上分解 $f$，记录分解块度数作为 Frobenius 的循环类型，与候选群的共轭类占比比较以猜测 Galois 群（Chebotarev 视角）。

- 何时 $K(\alpha)/K$ 为 Galois。等价于 $K$-嵌入将 $\alpha$ 的所有共轭仍送入 $K(\alpha)$：若如此，则 $K(\alpha)$ 是 $m_{\alpha}$ 的分裂域（正规），且特征 0/分离场景下可分，从而 Galois；反之，Galois 扩张显然稳定该集合。■

---

# 5. Modules

## 5.1 Basic Definitions and Constructions
- Definition. Let $R$ be a (commutative) ring with $1$. An $R$-module $M$ is an abelian group $(M,+)$ with a scalar multiplication $R\times M\to M$, $(r,m)\mapsto rm$, such that for all $r,s\in R$, $m,n\in M$:
	1) $r(m+n)=rm+rn$; 2) $(r+s)m=rm+sm$; 3) $(rs)m=r(sm)$; 4) $1m=m$.
- Submodules, homomorphisms. $N\le M$ is a submodule if $N$ is an additive subgroup and $rN\subseteq N$ for all $r\in R$. A map $f:M\to N$ is $R$-linear if $f(m+m')=f(m)+f(m')$ and $f(rm)=rf(m)$. Kernels and images are submodules.
- Quotients. If $N\le M$, the quotient $M/N$ is an $R$-module with $(m+N)+(m'+N)=(m+m')+N$ and $r\cdot(m+N)=(rm)+N$. The projection $\pi:M\twoheadrightarrow M/N$ is $R$-linear and universal for maps killing $N$.
- Direct sum/product. For modules $M_i$ ($i\in I$), the product $\prod_i M_i$ and direct sum $\bigoplus_i M_i$ are defined componentwise; the latter consists of tuples with finitely many nonzero entries. For finite families they coincide.
- Free modules. $F$ is free on a set $X$ if there is a basis $\{e_x\}_{x\in X}$ with $F\cong \bigoplus_{x\in X} R e_x$. Every module $M$ admits a surjection from a free module: choose a generating set of $M$.

- Theorem (First Isomorphism). For an $R$-linear map $\varphi:M\to N$, $$M/\ker\varphi\cong \operatorname{Im}\varphi.$$
	Proof. As in groups/rings: define $\tilde\varphi:m+\ker\varphi\mapsto \varphi(m)$; well-defined and bijective onto the image. ■

## 5.2 Exact Sequences and Splitting
- Exactness. A sequence $$\cdots\to A\xrightarrow{f} B\xrightarrow{g} C\to\cdots$$ is exact at $B$ if $\operatorname{Im} f=\ker g$. A short exact sequence is $$0\to A\xrightarrow{i} B\xrightarrow{p} C\to 0,$$ meaning $i$ injective, $p$ surjective, and $i(A)=\ker p$.

- Lemma (Splitting lemma). For a short exact sequence $0\to A\xrightarrow{i} B\xrightarrow{p} C\to 0$, the following are equivalent:
	(i) There exists $s:C\to B$ with $p\circ s=\operatorname{id}_C$ (a section).
	(ii) There exists $r:B\to A$ with $r\circ i=\operatorname{id}_A$ (a retraction).
	(iii) $B\cong A\oplus C$ as $R$-modules, with $i$ the inclusion and $p$ the projection.
	Proof. (i)$\Rightarrow$(iii): Define $\phi:A\oplus C\to B$, $(a,c)\mapsto i(a)+s(c)$. Then $p\circ\phi(a,c)=c$ and $\phi(a,0)=i(a)$; exactness shows $\phi$ bijective with inverse $b\mapsto (b-s p(b), p(b))$. (iii)$\Rightarrow$(ii) take $r$ the projection to $A$. (ii)$\Rightarrow$(i) similarly with a complement. ■

- Five Lemma (statement). In a commutative diagram with exact rows
	$$\begin{aligned}
	0\to &A\to B\to C\to D\to E\to 0\\
	0\to &A'\to B'\to C'\to D'\to E'\to 0
	\end{aligned}$$
	if the first, second, fourth, and fifth vertical arrows are isomorphisms and the third is either injective or surjective under mild hypotheses, then it is an isomorphism. Proof is standard diagram chase.

- Snake Lemma (glimpse). For a commutative diagram with exact rows $$0\to A\to B\to C\to 0$$ and $$0\to A'\to B'\to C'\to 0,$$ there is a connecting morphism $\delta: \ker(C\to C')\to \operatorname{coker}(A\to A')$ making a long exact sequence relating kernels and cokernels. ■

## 5.3 Free, Projective, Injective, Flat
- Definitions.
	Free: $F\cong R^{(I)}$. Projective: every epimorphism $g:N\twoheadrightarrow P$ and map $f:P\to M$ lift: there exists $\tilde f:P\to N$ with $g\circ \tilde f=f$. Injective: every monomorphism $i:A\hookrightarrow B$ and map $f:A\to E$ extend: there exists $\tilde f:B\to E$ with $\tilde f\circ i=f$. Flat: tensoring with $F$ preserves exactness of $0\to A'\to A\to A''\to 0$.

- Theorem (Characterizations of projectives). For an $R$-module $P$, the following are equivalent:
	(1) $P$ is projective.
	(2) $P$ is a direct summand of a free module: $P\oplus Q\cong F$ with $F$ free.
	(3) $\operatorname{Hom}_R(P,-)$ is an exact functor (sends epimorphisms to epimorphisms).
	Proof. (1)$\Rightarrow$(2): Present $P$ via a surjection $\pi:F\twoheadrightarrow P$ with $F$ free; the identity $\operatorname{id}_P$ lifts to $s:P\to F$, giving $\pi\circ s=\operatorname{id}_P$ and $F\cong P\oplus \ker\pi$. (2)$\Rightarrow$(3): $\operatorname{Hom}_R(F,-)$ is exact for free $F$, and direct summands preserve exactness. (3)$\Rightarrow$(1): Given $g:N\twoheadrightarrow M$ and $f:P\to M$, exactness of $\operatorname{Hom}_R(P,-)$ at $N\to M$ yields a lift. ■

- Proposition. Projective $\Rightarrow$ flat.
	Proof. If $P\oplus Q\cong F$ with $F$ free, then $-\otimes P$ is a direct summand of $-\otimes F\cong (-)^{(I)}$, which is exact. Direct summands of exact functors are exact on short exact sequences. ■

- Theorem (Injectives and exactness). An $R$-module $E$ is injective iff $\operatorname{Hom}_R(-,E)$ is exact (sends monomorphisms to epimorphisms).
	Proof. Direct diagram chase with extension property vs. exactness at $\operatorname{Hom}_R(B,E)\to \operatorname{Hom}_R(A,E)$. ■

- Baer’s Criterion (glimpse). For a ring $R$, $E$ is injective iff every homomorphism $I\to E$ from a left ideal $I\subseteq R$ extends to $R\to E$. Over a PID, injective $\Leftrightarrow$ divisible.
	Proof idea. Use essential extensions and Zorn; over a PID, divisibility gives extension across principal ideals, hence across all. ■

- Proposition (Flat over PID). Over a PID, a finitely generated flat module is free; more generally, an $R$-module is flat iff it is torsion-free (for PID).
	Proof sketch. If $M$ is f.g. flat over a PID, then $M$ is torsion-free; by the structure theorem for f.g. modules over PID, torsion-free implies free. Conversely, free modules are flat and direct limits of free modules are flat; over PID, torsion-freeness characterizes flatness. ■

## 5.4 Structure Theorem over a PID (Smith Normal Form)
- Theorem (Smith Normal Form). Let $R$ be a PID and $A\in M_{m\times n}(R)$. There exist invertible $U\in \operatorname{GL}_m(R)$ and $V\in \operatorname{GL}_n(R)$ such that $$UAV=\operatorname{diag}(d_1,\dots,d_t,0,\dots,0),\quad d_i\mid d_{i+1}.$$
	Proof (existence idea). Use the Euclidean algorithm on $R$ (or gcd properties in a PID) with elementary row/column operations to reduce the minimal nonzero entry by combining rows/columns until all off-diagonal entries in the first row/column are multiples, then iterate on the submatrix. Divisibility chain is enforced by additional operations. ■

- Theorem (Structure theorem). If $R$ is a PID and $M$ is a finitely generated $R$-module, then
	$$M\cong R^r\oplus\bigoplus_{i=1}^t R/(d_i),\quad d_i\mid d_{i+1},$$
	equivalently as a direct sum of $p$-primary components $$M\cong R^r\oplus\bigoplus_{p\ \text{prime}}\ \bigoplus_j R/(p^{e_{p,j}}).$$
	Proof. Present $M$ as $R^n\xrightarrow{A} R^m\to M\to 0$ and apply Smith normal form to $A$. Then $\operatorname{coker}(A)\cong R^{m-t}\oplus \bigoplus_{i=1}^t R/(d_i)$ with $r=m-t$. Uniqueness follows from invariants (determinantal divisors or Fitting ideals), determined up to associates and ordering. ■

- Corollary (Classification of f.g. abelian groups). Taking $R=\mathbb Z$, any f.g. abelian group $G$ is $\mathbb Z^r\oplus \bigoplus_i \mathbb Z/n_i\mathbb Z$ with $n_i\mid n_{i+1}$; unique up to isomorphism.

## 5.5 Linear Algebra via Modules: Rational and Jordan Canonical Forms
- Setup. Let $V$ be a finite-dimensional vector space over a field $F$ and $T\in \operatorname{End}_F(V)$. Regard $V$ as an $F[x]$-module via $x\cdot v=T(v)$.

- Theorem (Primary decomposition). If $m_T(x)=\prod_j p_j(x)^{e_j}$ with distinct monic irreducibles $p_j$, then
	$$V\cong \bigoplus_j V_{p_j},\quad V_{p_j}=\ker p_j(T)^{e_j},$$
	and $T$ stabilizes each $V_{p_j}$ with minimal polynomial $p_j^{e_j}$ on $V_{p_j}$.
	Proof. Chinese Remainder Theorem in $F[x]$ applied to $m_T$ and the module structure $F[x]/(m_T)$-action on $V$ yields the decomposition. ■

- Theorem (Rational canonical form). There exist monic polynomials $f_1\mid f_2\mid\cdots\mid f_k$ such that
	$$V\cong \bigoplus_{i=1}^k F[x]/(f_i(x))$$
	as $F[x]$-modules, and the matrix of $T$ in a suitable basis is block-diagonal with companion matrices $C(f_i)$. The product $f_1\cdots f_k$ equals the characteristic polynomial; $f_k$ is the minimal polynomial.
	Proof. Apply the structure theorem to the $F[x]$-module $V$ (note $F[x]$ is a PID). The invariant factors are the $f_i$, and the action of $x$ corresponds to companion matrices. ■

- Corollary (Jordan form over $\overline F$). If $F$ is algebraically closed, each $f_i(x)=(x-\lambda_i)^{n_i}$, and the rational form refines to Jordan blocks $J_{n}(\lambda)$ whose sizes are determined by the ranks of powers of $(T-\lambda I)$.
	Proof idea. Factorization into linear factors over $\overline F$ splits the primary components into cyclic modules of the form $F[x]/((x-\lambda)^n)$, whose companion matrices are Jordan blocks. ■

## 5.6 Tensor Products and Hom
- Universal property of tensor. For $R$-modules $M,N$ and any $R$-module $P$, bilinear maps $\beta:M\times N\to P$ correspond uniquely to linear maps $\tilde\beta:M\otimes_R N\to P$:
	$$\operatorname{Bil}_R(M\times N,P)\cong \operatorname{Hom}_R(M\otimes_R N,P).$$
	Construction: $M\otimes_R N$ is the quotient of the free module on symbols $m\otimes n$ by bilinearity relations.

- Basic properties.
	(1) Functoriality: $(f\otimes g)(m\otimes n)=f(m)\otimes g(n)$.
	(2) Direct sum: $ (M\oplus M')\otimes N\cong (M\otimes N)\oplus (M'\otimes N)$.
	(3) Base change: For a ring map $R\to S$, $S\otimes_R M$ is an $S$-module obtained by extension of scalars.
	(4) Right exactness: If $A\xrightarrow{u} B\xrightarrow{v} C\to 0$ is exact, then $A\otimes N\xrightarrow{u\otimes 1} B\otimes N\xrightarrow{v\otimes 1} C\otimes N\to 0$ is exact.
	Proof of (4). Since $C\cong B/\operatorname{Im}u$, $C\otimes N\cong (B\otimes N)/\operatorname{Im}(u\otimes 1)$. Surjectivity of $v\otimes 1$ and identification of kernel follow from the construction of $\otimes$. ■

- Hom functor and adjunction. For all $R$-modules $M,N,P$,
	$$\operatorname{Hom}_R(M\otimes_R N,P)\cong \operatorname{Hom}_R(M,\operatorname{Hom}_R(N,P)).$$
	Moreover, $\operatorname{Hom}_R(-,P)$ is left exact: $0\to A\xrightarrow{i} B\xrightarrow{p} C$ exact implies $0\to \operatorname{Hom}(C,P)\xrightarrow{p^*} \operatorname{Hom}(B,P)\xrightarrow{i^*} \operatorname{Hom}(A,P)$ exact.
	Proof. Define the natural bijection by $\Phi(f)(m)(n)=f(m\otimes n)$ and verify naturality and inverses. Left exactness is a kernel-preserving property of $\operatorname{Hom}$. ■

## 5.7 Noetherian and Artinian Modules; Length
- Definitions. $M$ is Noetherian if every submodule is finitely generated (equivalently: ACC on submodules). $M$ is Artinian if it satisfies DCC on submodules. The length $\ell(M)$ is the supremum of lengths of chains of submodules with strict inclusions.

- Proposition (Stability in short exact sequences). If $0\to A\to B\to C\to 0$ is exact, then:
	(i) $B$ is Noetherian iff $A$ and $C$ are Noetherian.
	(ii) $B$ is Artinian iff $A$ and $C$ are Artinian.
	Proof. Standard exercises: submodules of $B$ correspond to submodules in $A$ and images in $C$; use ACC/DCC transfer. ■

- Theorem. If $R$ is Noetherian and $M$ is a finitely generated $R$-module, then every submodule of $M$ is finitely generated (hence $M$ is Noetherian).
	Proof. Present $M$ as a quotient of $R^n$; submodules correspond to images of submodules of $R^n$. Induct on $n$ and use Noetherian property of $R$ (ACC on ideals) to control generators. ■

- Proposition (Finite length). If $M$ is both Noetherian and Artinian, then $M$ has finite length and admits a composition series; the multiset of composition factors is well-defined up to permutation (Jordan–Hölder for modules).
	Proof sketch. ACC and DCC imply existence of maximal chains; refinements have equivalent factors. ■

## 5.8 Exercises
- Show that a map of modules is injective iff its kernel is $0$, and surjective iff its image equals the codomain. Prove the First Isomorphism Theorem for modules.
- Prove the splitting lemma. Give an example of a short exact sequence that does not split.
- Characterize projective modules via: (i) lifting property; (ii) direct summand of free; (iii) exactness of $\operatorname{Hom}(P,-)$. Provide the implications with proofs.
- Over a PID, prove that a finitely generated torsion-free module is free. Deduce that finitely generated flat modules over a PID are free.
- Compute the invariant factors and elementary divisors for the abelian group $G=\mathbb Z^2/\langle(6,2),(4,8)\rangle$.
- For $T\in \operatorname{End}_F(V)$ with characteristic polynomial $(x-1)^3(x+2)^2$ over $F=\mathbb C$, list all possible Jordan forms and the corresponding minimal polynomials.
- Verify that $-\otimes_R N$ is right exact and $\operatorname{Hom}_R(-,P)$ is left exact by explicit kernel/cokernel computations.
- Prove the primary decomposition theorem for $T$ using the Chinese Remainder Theorem in $F[x]$.
- State and prove Baer’s criterion. Show that over $R=\mathbb Z$, divisible abelian groups (e.g., $\mathbb Q$, $\mathbb Q/\mathbb Z$) are injective modules.
- Given an $m\times n$ integer matrix $A$, reduce it to Smith normal form using row/column operations and read off the decomposition of $\operatorname{coker}(A)$.

## 5.9 Solutions
- 单射/满射与第一同构。核为 0 当且仅当单射，像为余域当且仅当满射，来自群论同样论证。第一同构：$M/\ker\varphi\xrightarrow{\sim}\operatorname{Im}\varphi$，$m+\ker\varphi\mapsto \varphi(m)$。

- 分裂引理与不分裂例。短正合 $0\to A\xrightarrow{i}B\xrightarrow{p}C\to0$ 分裂等价于存在截面 $s:C\to B$ 或收缩 $r:B\to A$，证明见正文。非分裂例：$0\to \mathbb Z\xrightarrow{\times 2}\mathbb Z\to \mathbb Z/2\to0$ 在 $\mathbb Z$-模上不分裂（否则 $\mathbb Z/2$ 为自由直和子，矛盾）。

- 射影的等价刻画。见 5.3 的定理：(i)$\Rightarrow$(ii) 由自由模满射到 $P$ 并提升 $\operatorname{id}_P$；(ii)$\Rightarrow$(iii) 因为 $\operatorname{Hom}$ 保持直和与自由的正合性；(iii)$\Rightarrow$(i) 由右正合得到提升。完整证明已在正文给出。

- PID 上无挠即自由（有限生成）。结构定理给 $M\cong R^r\oplus \text{torsion}$，无挠迫使扭零部分为 0，故 $M\cong R^r$ 自由。平坦有限生成蕴含无挠（PID 上等价），故亦自由。

- 不变量因子与初等因子计算。对生成关系矩阵 $\begin{pmatrix}6&2\\4&8\end{pmatrix}$ 做整数行列/列列变换化为 Smith 形。一步做法：行变换 $R_1\leftarrow R_1- R_2$ 得 $\begin{pmatrix}2&-6\\4&8\end{pmatrix}$；列变换 $C_2\leftarrow C_2+3C_1$ 得 $\begin{pmatrix}2&0\\4&20\end{pmatrix}$；行变换 $R_2\leftarrow R_2-2R_1$ 得 $\begin{pmatrix}2&0\\0&20\end{pmatrix}$；再把 20 分解出公因子与 2 的整除关系，最终 Smith 形为 $\operatorname{diag}(2,20)$（亦可继续化到 $\operatorname{diag}(2,20)$ 已满足 $2\mid20$）。故 $G\cong \mathbb Z/2\oplus \mathbb Z/20$；初等因子为 $\mathbb Z/2\oplus \mathbb Z/4\oplus \mathbb Z/5$。

- Jordan 形可能性。特征多项式 $(x-1)^3(x+2)^2$，可能的 Jordan 块尺寸满足各特征值下块尺寸和分别为 3 与 2，且最小多项式 $m_T$ 的指数为各自最大块大小：
	• 对 $\lambda=1$：块型可为 $3$；或 $2+1$；或 $1+1+1$，对应 $m_T$ 在 $(x-1)$ 上指数为 3、2、1。
	• 对 $\lambda=-2$：块型可为 $2$ 或 $1+1$，指数为 2 或 1。
	综合后 $m_T=(x-1)^{a}(x+2)^{b}$，$a\in\{1,2,3\}$，$b\in\{1,2\}$，并与块选择一致。

- 右/左正合的核像演算。若 $A\xrightarrow{u}B\xrightarrow{v}C\to0$ 正合，则 $C\cong B/\operatorname{Im}u$，张量传到商：$C\otimes N\cong (B\otimes N)/\operatorname{Im}(u\otimes1)$，得右正合。Hom 左正合来自 $\operatorname{Hom}(\cdot,P)$ 保核并将满射变成单射。

- 主分解定理（算子）。$m_T=\prod p_j^{e_j}$ 两两互素，CRT 给 $V\cong \bigoplus \ker p_j(T)^{e_j}$，各分量上最小多项式为相应 $p_j^{e_j}$。

- Baer 判据与可除群内射性。Baer：$E$ 内射当且仅当每个左理想 $I\subseteq R$ 的映射 $I\to E$ 可延拓到 $R\to E$。在 $R=\mathbb Z$ 上，可除阿贝尔群 $D$ 满足对任意 $n$，$nD=D$，从而任一 $f:n\mathbb Z\to D$ 由 $1\mapsto d$ 可延拓为 $\tilde f: \mathbb Z\to D$ 定义 $\tilde f(1)=d'$ 其中 $nd'=d$，故 $D$ 内射。

- Smith 规范形读出 $\operatorname{coker}(A)$。对整数矩阵 $A$ 施行初等行列变换得 $UAV=\operatorname{diag}(d_1,\dots,d_t,0,\dots,0)$，则 $\operatorname{coker}(A)\cong \bigoplus_i \mathbb Z/d_i\oplus \mathbb Z^{m-t}$；依此即可读出不变量因子与秩。■

