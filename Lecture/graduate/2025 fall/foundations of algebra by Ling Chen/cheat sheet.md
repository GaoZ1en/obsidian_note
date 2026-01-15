for a semigroup $\displaystyle{(G,\cdot)}$ has left unit $\displaystyle{e_{L}}$ and right unit $\displaystyle{e_{R}}$, then $\displaystyle{e_{L}=e_{R}=e}$ is a unit.

$\displaystyle{\forall g\in G, e_{L}g=g=ge_{R}}$. then $\displaystyle{e_{L}e_{R}=e_{R}=e_{L}}$. 

$$\begin{align}
a_{L}^{-1}a & =e=aa_{R}^{-1} \\
\implies a_{L}^{-1}aa_{R}^{-1} & =a_{L}^{-1}e=a_{L}^{-1}=a_{R}^{-1}
\end{align}$$

$\displaystyle{M^{*}\neq \emptyset}$, $\displaystyle{e\in M^{*}}$
associativity. obvious
inversibility. $\displaystyle{\forall g\in M^{*}}$, since we have $\displaystyle{gg^{-1}=g^{-1}g=e\implies (g^{-1})^{-1}=g\in M\implies g^{-1}\in M^{*}}$
$\displaystyle{\forall x,y\in M^{*}}$, then $\displaystyle{xy\in M^{*}}$ since $\displaystyle{(y^{-1}x^{-1})(xy)=(xy)(y^{-1}x^{-1})=e}$

necessity is obvious
sufficiency... 

$$\begin{align}
e_{L}a=a \\
a^{-1}a & =e_{L}
\end{align}$$

we need to prove

$$\begin{align}
ae_{L} & =a \\
aa^{-1} & =e_{L}
\end{align}$$

consider the inverse of $\displaystyle{a^{-1}}$, denoted $\displaystyle{(a^{-1})^{-1}}$, then

$$\begin{align}
(a^{-1})^{-1}e_{L} & =e_{L}a=a
\end{align}$$

$$\begin{align}
aa^{-1} & =e_{L}aa^{-1}=(a^{-1})^{-1}a^{-1}aa^{-1} \\
 & =(a^{-1})^{-1}e_{L}a^{-1}=(a^{-1})^{-1}a^{-1} \\
 & =e_{L} \\
\implies ae_{L}=aa^{-1}a=e_{L}a=a
\end{align}$$

qed.

for a semigroup $\displaystyle{G}$, if $\displaystyle{\forall a,b\in G}$, $\displaystyle{ax=b,ya=b}$ are solvable in $\displaystyle{G}$, prove that $\displaystyle{G}$ is a group.

$$\begin{align}
ax=a\implies x=e_{L} \\
ya=a\implies y=e_{R}\implies e_{L}=e_{R}=e \\
ax=e\implies x=a^{-1}_{R} \\
ya=e\implies y=a_{L}^{-1}\implies a_{L}^{-1}=a_{R}^{-1}=a^{-1} \\
\end{align}$$

thus $\displaystyle{G}$ is a group.

for a finite semigroup $\displaystyle{(G,\cdot)}$. the suficiency and necessity of $\displaystyle{G}$ being a group is that left and right cancellation laws hold in $\displaystyle{G}$, i.e.

$$\begin{align}
ax=ay\implies x=y \\
xa=ya\implies x=y
\end{align}$$

necessity is obvious. $\displaystyle{\forall a\in G}$, consider the set $\displaystyle{aG}$, since $\displaystyle{G}$ is finite and left cancellation law holds, $\displaystyle{aG}$ has the same number of elements as $\displaystyle{G}$, thus $\displaystyle{aG=G}$, i.e. $\displaystyle{\forall b\in G}$, there exists $\displaystyle{x\in G}$ such that $\displaystyle{ax=b}$, similarly, $\displaystyle{\forall b\in G}$, there exists $\displaystyle{y\in G}$ such that $\displaystyle{ya=b}$, by the previous conclusion, $\displaystyle{G}$ is a group.

subgroup

1. $\displaystyle{H_{1},H_{2}\leqslant G\implies H_{1}\cap H_{2}\leqslant G}$. 

$\displaystyle{\forall h\in H_{1}\cap H_{2}}$, then $\displaystyle{h^{-1}\in H_{1}\cap H_{2}}$
$\displaystyle{\forall h_{1},h_{2}\in H_{1}\cap H_{2}\implies h_{1}h_{2}\in H_{1},h_{1}h_{2}\in H_{2}\implies h_{1}h_{2}\in H_{1}\cap H_{2}}$
thus $\displaystyle{H_{1}\cap H_{2}\leqslant G}$.

2. if $\displaystyle{H_{1},H_{2}\leqslant G}$, then $\displaystyle{H_{1}\cup H_{2}\leqslant G\iff H_{1}\subseteq H_{2}}$ or $\displaystyle{H_{2}\subseteq H_{1}}$.

nessecity is obvious. sufficiency. assume $\displaystyle{\exists h_{1}\in H_{1}\cup H_{2}-H_{2}, h_{2}\in H_{1}\cup H_{2}-H_{1}}$, then $\displaystyle{h_{1}h_{2}\in H_{1}\cup H_{2}-H_{2}}$ and $\displaystyle{h_{1}h_{2}\in H_{1}\cup H_{2}-H_{1}}$, contradiction.

3. $\displaystyle{H_{1},H_{2}\leqslant G}$ then $\displaystyle{H_{1}H_{2}\leqslant G\iff H_{1}H_{2}=H_{2}H_{1}}$

necessity. $\displaystyle{\forall h_{1}\in H_{1},h_{2}\in H_{2}}$, then $\displaystyle{(h_{1}h_{2})^{-1}=h_{2}^{-1}h_{1}^{-1}\in H_{2}H_{1}=H_{1}H_{2}}$. $\displaystyle{\forall h_{1},h_{2}\in H_{1},h_{3},h_{4}\in H_{2}}$, since $\displaystyle{H_{1}H_{2}=H_{2}H_{1}}$, $\displaystyle{\exists h_{5}\in H_{1},h_{6}\in H_{2},\text{ s.t. } h_{3}h_{2}=h_{5}h_{6}}$, then $\displaystyle{(h_{1}h_{3})(h_{2}h_{4})=h_{1}(h_{5}h_{6})h_{4}=(h_{1}h_{5})(h_{6}h_{4})\in H_{1}H_{2}}$. 

sufficienct. $\displaystyle{\forall h_{1}\in H_{1},h_{2}\in H_{2}\implies h_{1}h_{2}\in H_{1}H_{2}\implies h_{2}^{-1}h_{1}^{-1}\in H_{2}H_{1},h_{2}^{-1}h_{1}^{-1}\in H_{1}H_{2}\implies H_{1}H_{2}\subseteq H_{2}H_{1}\implies H_{1}H_{2}=H_{2}H_{1}}$


suppose $\displaystyle{S}$ is a finite subset of group $\displaystyle{G}$, if $\displaystyle{\forall a,b\in S, ab\in S}$, then $\displaystyle{S\leqslant G}$

consider $\displaystyle{aS, \forall a\in S}$. since $\displaystyle{S}$ is finite and $\displaystyle{\forall a,b\in S, ab\in S}$, we have $\displaystyle{aS=S}$, which means $\displaystyle{\exists b\in S\implies ab=a\implies e\in S}$. on the other hand, $\displaystyle{\exists b\in S, \text{ s.t. } ab=e\implies a^{-1}\in S}$. thus $\displaystyle{S\leqslant G}$.

suppose $\displaystyle{G}$ is a group, if the order of all elements of $\displaystyle{G}$ is 2 except the unit, then $\displaystyle{G}$ is Abelian

notice that $\displaystyle{\forall a,b\in G, ba=b(ba)^{2}a=b^{2}aba^{2}=eab e=ab}$

Lagrange's theorem

$$\begin{align}
|G| & =|H|[G:H]
\end{align}$$

suppose $\displaystyle{G}$ is a finite group, $\displaystyle{A,B\leqslant G}$, then
1. 
$$\begin{align}
|AB| & =\frac{|A|\cdot|B|}{|A\cap B|}
\end{align}$$
2. if $\displaystyle{A\leqslant B\leqslant G}$, then $\displaystyle{[G:A]=[G:B][B:A]}$
3. $\displaystyle{[G:A\cap B]\leqslant[G:A][G:B]}$. and if $\displaystyle{[G:A]}$ coprime to $\displaystyle{[G:B]}$, the equality holds and $\displaystyle{AB=G}$

proof.
1. notice that
$$\begin{align}
AB & =\bigcup _{b\in R_{1}\subseteq B}Ab
\end{align}$$

and

$$\begin{align}
B & =\bigcup _{b\in R_{2}\subseteq B}(A\cap B)b
\end{align}$$

$\displaystyle{\forall b_{1},b_{2}\in B,Ab_{1}=Ab_{2} \iff b_{1}b_{2}^{-1}\in A\cap B\iff(A\cap B)b_{1}=(A\cap B)b_{2}}$, thus $\displaystyle{|R_{1}|=|R_{2}|}$. therefore

$$\begin{align}
|AB|=|A||R_{1}|=|A||R_{2}|=|A|[B:A\cap B]=\frac{|A||B|}{|A\cap B|}
\end{align}$$

conjugate.

if $\displaystyle{A\leqslant G}$, then $\displaystyle{g^{-1}Ag\leqslant G}$ is the conjugate subgroup of $\displaystyle{A}$.

normalizer, centralizer. suppose $\displaystyle{G}$ is a group, $\displaystyle{M\subseteq G}$ is a subset, then

$$\begin{align}
N_{G}(M) & =\left\{g\in G|g^{-1}Mg=M\right\} \\
C_{G}(M) & =\left\{g\in G|g^{-1}ag=a, \forall a\in M\right\}
\end{align}$$

obviously, we have $\displaystyle{C_{G}(M)\leqslant N_{G}(M)\leqslant G}$. specially, the centralizer of $\displaystyle{G}$ is called the center of $\displaystyle{G}$, denoted $\displaystyle{Z(G)}$, i.e.

$$\begin{align}
Z(G) & =C_{G}(G) =\left\{g\in G|gx=xg, \forall x\in G\right\}
\end{align}$$

1. if $\displaystyle{Z(G)=G}$, then $\displaystyle{G}$ is Abelian.
2. for a single element subset $\displaystyle{M=\{a\}}$, we have $\displaystyle{C_{G}(a)=\left\{g\in G|g^{-1}ag=a\right\}}$.

suppose $\displaystyle{G}$ is a group, $\displaystyle{M\subseteq G}$ is a subset, then the number of distinct conjugate subsets of $\displaystyle{M}$ in $\displaystyle{G}$ is $\displaystyle{[G:N_{G}(M)]}$.

proof. $\displaystyle{\forall g,h\in G, g^{-1}Mg=h^{-1}Mh \iff hg^{-1}Mgh^{-1}=M\implies gh^{-1}\in N_{G}(M)\implies N_{G}(M)g=N_{G}(M)h}$. thus the number of distinct conjugate subsets of $\displaystyle{M}$ in $\displaystyle{G}$ is exactly the number of distinct cosets of $\displaystyle{N_{G}(M)}$ in $\displaystyle{G}$, which is $\displaystyle{[G:N_{G}(M)]}$.

corollary. suppose $\displaystyle{G}$ is a group, $\displaystyle{a\in G}$, then the number of distinct conjugate elements of $\displaystyle{a}$ in $\displaystyle{G}$ is $\displaystyle{[G:C_{G}(a)]}$. since $\displaystyle{C_{G}(a)=N_{G}(a)}$ for a single element subset $\displaystyle{a}$.

suppose $\displaystyle{p}$ is a prime number, $\displaystyle{n\geqslant 1}$, $\displaystyle{G}$ is a group of order $\displaystyle{p^{n}}$, then $\displaystyle{|Z(G)| >1}$.

proof.
consider the conjugation action of $\displaystyle{G}$ on itself.
the size of conjugacy class of $\displaystyle{a\in G}$ is $\displaystyle{[G:C_{G}(a)]}$.
from class equation

$$\begin{align}
|G| & =|Z(G)|+\sum |Cl(a_{i})|
\end{align}$$

where the sum is over representatives of conjugacy classes with size greater than 1.
since $\displaystyle{G}$ is a $\displaystyle{p}$-group, $\displaystyle{|G|=p^{n}}$.
if $\displaystyle{a\notin Z(G)}$, then $\displaystyle{C_{G}(a)\neq G}$, so $\displaystyle{[G:C_{G}(a)]}$ is divisible by $\displaystyle{p}$.
thus $\displaystyle{|Z(G)| = |G| - \sum [G:C_{G}(a_{i})]}$ is divisible by $\displaystyle{p}$.
since $\displaystyle{e\in Z(G)}$, $\displaystyle{|Z(G)|\geqslant 1}$. thus $\displaystyle{|Z(G)|}$ is a multiple of $\displaystyle{p}$ and $\displaystyle{|Z(G)|\geqslant p > 1}$.

suppose $\displaystyle{p}$ is a prime number, then group of order $\displaystyle{p^{2}}$ is Abelian.

proof. the order of any elements in $\displaystyle{G}$ can only be $\displaystyle{1,p,p^{2}}$.

if there is an element of order $\displaystyle{p^{2}}$, then $\displaystyle{G}$ is cyclic, thus Abelian.
if there is no element of order $\displaystyle{p^{2}}$, then all the non-identity elements have order $\displaystyle{p}$. since $\displaystyle{|Z(G)|>1}$. then choose $\displaystyle{e\neq a\in C(G)}$. then $\displaystyle{o(a)=p}$. consider the subgroup $\displaystyle{A=\braket{ a }\leqslant Z(G)}$. pick $\displaystyle{b\in G-A}$, then $\displaystyle{o(b)=p}$, and

$$\begin{align}
A,Ab,Ab^{2},\dots,Ab^{p-1}
\end{align}$$

is the right coset decomposetion of $\displaystyle{G}$ under $\displaystyle{A}$. if $\displaystyle{Ab^{m}=Ab^{n},0\leqslant m<n\leqslant p-1}$, then $\displaystyle{Ab^{n-m}=A\implies b^{n-m}\in A,1<m-n<p-1}$, thus $\displaystyle{p=o(b)|n-m}$, contradiction.

thus $\displaystyle{G=A\times \braket{ b }\cong C_{p}\times C_{p}}$, which is Abelian.

suppose $\displaystyle{H}$ and $\displaystyle{K}$ are two subgroups of a finite group $\displaystyle{G}$. prove that $\displaystyle{|HgK|=|H|[K:g^{-1}Hg\cap K]}$.

proof. consider the coset decomposition

$$\begin{align}
HgK & =\bigcup _{k\in R\subseteq K}Hgk
\end{align}$$

and we only need to prove that $\displaystyle{|R|=[K:K\cap g^{-1}Hg]}$. 
$\displaystyle{\forall k_{1},k_{2}\in K}$, 
$$\begin{align}
Hgk_{1}=Hgk_{2} & \iff Hgk_{1}k_{2}^{-1}=Hg \\
 & \iff gk_{1}k_{2}^{-1}g^{-1}\in H \\
 & \iff k_{1}k_{2}^{-1}\in g^{-1}Hg
\end{align}$$
since $\displaystyle{k_{1},k_{2}\in K}$, thus $\displaystyle{k_{1}k_{2}^{-1}\in K\cap g^{-1}Hg}$.
this means $\displaystyle{k_{1},k_{2}}$ represent the same right coset of the subgroup $\displaystyle{K\cap g^{-1}Hg}$ in $\displaystyle{K}$.
thus the number of distinct terms in the union is $\displaystyle{[K:K\cap g^{-1}Hg]}$.
therefore $\displaystyle{|HgK|=|H|\cdot [K:K\cap g^{-1}Hg]}$.

Homomorphism and Isomorphism Theorems

1. Homomorphism
$\displaystyle{f: G \rightarrow G'}$ is a homomorphism $\displaystyle{\implies f(e)=e', f(x^{-1})=f(x)^{-1}}$.
$\displaystyle{\ker f = \{x\in G | f(x)=e'\} \trianglelefteq G}$.
$\displaystyle{\text{im } f = \{f(x) | x\in G\} \leqslant G'}$.

2. First Isomorphism Theorem
If $\displaystyle{f: G \rightarrow G'}$ is a homomorphism, then $\displaystyle{G/\ker f \cong \text{im } f}$.
**Proof.** Define $\displaystyle{\bar{f}: G/\ker f \to \text{im } f}$ by $\displaystyle{\bar{f}(a\ker f) = f(a)}$.
*   **Well-defined**: If $\displaystyle{a\ker f = b\ker f}$, then $\displaystyle{a^{-1}b \in \ker f \implies f(a^{-1}b)=e' \implies f(a)=f(b)}$. Use the universal property of quotient group.
*   **Homomorphism**: $\displaystyle{\bar{f}(a\ker f \cdot b\ker f) = \bar{f}(ab\ker f) = f(ab) = f(a)f(b) = \bar{f}(a\ker f)\bar{f}(b\ker f)}$.
*   **Injectivity**: $\displaystyle{\bar{f}(a\ker f) = e' \implies f(a) = e' \implies a \in \ker f \implies a\ker f = \ker f}$. Function is 1-1.
*   **Surjectivity**: By definition of $\displaystyle{\text{im } f}$.
Thus $\displaystyle{\bar{f}}$ is an isomorphism.

> *Intuition: "Physical states = Hilbert Space / Gauge Redundancy". Identifying elements that 'act the same' (kernel) yields the physical observable structure.*

3. Second (Diamond) Isomorphism Theorem
Let $\displaystyle{H \leqslant G}$ and $\displaystyle{N \trianglelefteq G}$. Then $\displaystyle{HN \leqslant G}$, $\displaystyle{H \cap N \trianglelefteq H}$, and
$$\begin{align}
HN/N \cong H/(H \cap N)
\end{align}$$
**Proof.** Define map $\displaystyle{\phi: H \to HN/N}$ by $\displaystyle{\phi(h) = hN}$.
*   $\displaystyle{\phi}$ is a homomorphism (restriction of natural projection $\displaystyle{G \to G/N}$).
*   **Surjectivity**: Any element in $\displaystyle{HN/N}$ is of form $\displaystyle{hnN = hN = \phi(h)}$.
*   **Kernel**: $\displaystyle{h \in \ker \phi \iff hN = N \iff h \in N}$. Thus $\displaystyle{\ker \phi = H \cap N}$.
By 1st Isomorphism Theorem, $\displaystyle{H/(H \cap N) \cong \text{im } \phi = HN/N}$.

> *Intuition: "Interaction vs. Component". If you ignore one symmetry (N), the remaining structure is purely the other symmetry (H), modulo any overlap.*

4. Third Isomorphism Theorem
Let $\displaystyle{N, K \trianglelefteq G}$ with $\displaystyle{N \leqslant K}$. Then $\displaystyle{K/N \trianglelefteq G/N}$ and
$$\begin{align}
(G/N) / (K/N) \cong G/K
\end{align}$$
**Proof.** Define $\displaystyle{\psi: G/N \to G/K}$ by $\displaystyle{\psi(gN) = gK}$.
*   **Well-defined**: $\displaystyle{g_1N = g_2N \implies g_1^{-1}g_2 \in N \subseteq K \implies g_1K = g_2K}$.
*   **Surjectivity**: Trivial.
*   **Kernel**: $\displaystyle{gN \in \ker \psi \iff gK = K \iff g \in K}$. The set of such cosets $\displaystyle{\{gN | g \in K\}}$ is exactly $\displaystyle{K/N}$.
By 1st Isomorphism Theorem, $\displaystyle{(G/N) / \ker \psi \cong G/K}$.

> *Intuition: "Stepwise Symmetry Breaking". Breaking symmetry in stages (G -> K -> N) is consistent; quotients can be canceled like fractions.*

5. Correspondence Theorem (Lattice Isomorphism)
Let $\displaystyle{N \trianglelefteq G}$. There is a bijection between the set of subgroups of $\displaystyle{G}$ containing $\displaystyle{N}$ and the set of subgroups of $\displaystyle{G/N}$.
$$\begin{align}
\{K | N \leqslant K \leqslant G\} & \longleftrightarrow \{ \bar{K} | \bar{K} \leqslant G/N \} \\
K & \longmapsto K/N \\
\pi^{-1}(\bar{K}) & \longleftarrow \bar{K}
\end{align}$$
This correspondence preserves inclusion, indices, and normality.
**Proof.**
*   **Bijection**: The map is $\displaystyle{\Phi(K) = K/N}$. Inverse map is $\displaystyle{\Psi(\bar{K}) = \{g \in G | gN \in \bar{K}\}}$. Check $\displaystyle{\Psi(\Phi(K)) = \{g | gN \in K/N\} = \{g | g \in KN = K\} = K}$.
*   **Indices**: To show $\displaystyle{[G:K] = [G/N : K/N]}$, consider the map $\displaystyle{gK \mapsto (gN)(K/N)}$. It's a bijection between coset spaces.
*   **Normality**: $\displaystyle{K \trianglelefteq G \iff \forall g \in G, gKg^{-1} \subseteq K \iff \forall gN \in G/N, (gN)(K/N)(gN)^{-1} \subseteq K/N \iff K/N \trianglelefteq G/N}$.

> *Intuition: "Macro-state vs Micro-state". The structure of the simplified model (G/N) perfectly mirrors the coarse structure of the full model (G) above the resolution limit N.*

6. Universal Property of Quotient Groups
Let $\displaystyle{N \trianglelefteq G}$ and $\displaystyle{f: G \rightarrow G'}$ be a homomorphism such that $\displaystyle{N \subseteq \ker f}$. Then there exists a unique homomorphism $\displaystyle{\bar{f}: G/N \rightarrow G'}$ such that $\displaystyle{f = \bar{f} \circ \pi}$, where $\displaystyle{\pi: G \rightarrow G/N}$ is the natural projection.

Ring Theory Highlights

1. Ideals
A subset $\displaystyle{I \subseteq R}$ is a **(two-sided) Ideal** if:
*   $\displaystyle{(I, +)}$ is a subgroup of $\displaystyle{(R, +)}$.
*   Absorbing property: $\displaystyle{\forall r \in R, \forall x \in I \implies rx \in I, xr \in I}$.
**Quotient Ring**: $\displaystyle{R/I}$ is a ring iff $\displaystyle{I}$ is an ideal. Multiplication: $\displaystyle{(a+I)(b+I) = ab+I}$.

2. Special Ideals
Let $\displaystyle{R}$ be a commutative ring with identity.
*   **Prime Ideal** $\displaystyle{P}$: $\displaystyle{P \neq R}$ and $\displaystyle{\forall ab \in P \implies a \in P \text{ or } b \in P}$.
    *   $\displaystyle{P \text{ is Prime } \iff R/P \text{ is an Integral Domain}}$.
*   **Maximal Ideal** $\displaystyle{M}$: $\displaystyle{M \neq R}$ and there is no ideal $\displaystyle{J}$ such that $\displaystyle{M \subsetneq J \subsetneq R}$.
    *   $\displaystyle{M \text{ is Maximal } \iff R/M \text{ is a Field}}$.
    *   **Hausdorff Maximality Principle**: Every proper ideal is contained in a maximal ideal.

3. Chinese Remainder Theorem (CRT)
Let $\displaystyle{I_1, \dots, I_n}$ be pairwise coprime ideals ($\displaystyle{I_i + I_j = R}$ for $\displaystyle{i \neq j}$). Then:
$$\begin{align}
I_1 \cap \dots \cap I_n = I_1 \dots I_n \\
R / (I_1 \cap \dots \cap I_n) \cong R/I_1 \times \dots \times R/I_n
\end{align}$$

4. Diagram of Domains
$\displaystyle{\text{Fields} \subset \text{Euclidean Domains (ED)} \subset \text{Principal Ideal Domains (PID)} \subset \text{Unique Factorization Domains (UFD)} \subset \text{Integral Domains}}$
*   **ED**: Defines a Euclidean norm $\displaystyle{N(r)}$ for division algorithm. (e.g. $\displaystyle{\mathbb{Z}, F[x]}$)
*   **PID**: Every ideal is generated by one element. (e.g. $\displaystyle{\mathbb{Z}}$)
*   **UFD**: Elements have unique prime factorization. (e.g. $\displaystyle{\mathbb{Z}[x]}$)
    *   **Theorem**: If $\displaystyle{R}$ is a UFD, then $\displaystyle{R[x]}$ is a UFD.

Module Theory Highlights

1. Definition
A **left R-module** $\displaystyle{M}$ is an abelian group $\displaystyle{(M, +)}$ with a scalar multiplication $\displaystyle{R \times M \to M}$ satisfying:
*   $\displaystyle{r(x+y) = rx+ry}$
*   $\displaystyle{(r+s)x = rx+sx}$
*   $\displaystyle{(rs)x = r(sx)}$
*   $\displaystyle{1x = x}$ (if $\displaystyle{R}$ has identity)

2. Free Modules
$\displaystyle{F}$ is a free R-module on a set $\displaystyle{X}$ if $\displaystyle{F \cong \bigoplus_{x \in X} Rx}$.
*   **Vector Spaces**: All modules over a Field are free.
*   **Property**: A linear map is uniquely determined by its values on the basis $\displaystyle{X}$.

3. Structure Theorem for Finitely Generated Modules over a PID
Let $\displaystyle{R}$ be a PID and $\displaystyle{M}$ be a finitely generated R-module. Then:
$$\begin{align}
M \cong R^r \oplus R/(d_1) \oplus R/(d_2) \oplus \dots \oplus R/(d_m)
\end{align}$$
where $\displaystyle{r \ge 0}$ is the **rank**, and $\displaystyle{d_1 | d_2 | \dots | d_m}$ are nonzero non-unit elements called **invariant factors**.
*   **Elementary Divisors Form**: $\displaystyle{M \cong R^r \oplus \bigoplus R/(p_i^{\alpha_{ij}})}$ where $\displaystyle{p_i}$ are primes.
*   **Application**:
    *   **Jordan Normal Form**: Let $\displaystyle{V}$ be a vector space over $\displaystyle{\mathbb{C}}$, linear map $\displaystyle{T: V \to V}$. $\displaystyle{V}$ becomes a $\displaystyle{\mathbb{C}[x]}$-module where $\displaystyle{x \cdot v = T(v)}$. The structure theorem gives the JNF.
    *   **Finitely Generated Abelian Groups**: Simple case where $\displaystyle{R=\mathbb{Z}}$.

# Universal Algebra Perspective (A Unified View)

1. Definition
An algebra is a pair $\displaystyle{(A, F)}$, where $\displaystyle{A}$ is a carrier set and $\displaystyle{F}$ is a set of operations (functions $\displaystyle{A^n \to A}$).
Groups, Rings, Modules are all examples of algebras defined by specific operations and identities (equations).

2. Unified Concepts

| Concept           | Universal Algebra                                                    | Group Theory                                             | Ring Theory                                              | Module Theory                                                |
| :---------------- | :------------------------------------------------------------------- | :------------------------------------------------------- | :------------------------------------------------------- | :----------------------------------------------------------- |
| **Object**        | Algebra $\displaystyle{(A, F)}$                                      | Group $\displaystyle{(G, \cdot, ^{-1}, e)}$              | Ring $\displaystyle{(R, +, -, \cdot, 0)}$                | Module $\displaystyle{(M, +, -, 0, \{r\cdot\}_{r\in R})}$    |
| **Sub-structure** | Subalgebra (closed under $\displaystyle{F}$)                         | Subgroup                                                 | Subring                                                  | Submodule                                                    |
| **Homomorphism**  | $\displaystyle{f: A \to B}$ preserves $\displaystyle{F}$             | Group Homomorphism                                       | Ring Homomorphism                                        | Linear Map / Module Homomorphism                             |
| **Equivalence**   | Congruence Relation $\displaystyle{\theta}$ (compatible equivalence) | Determined by $\displaystyle{N \trianglelefteq G}$ ([e]) | Determined by $\displaystyle{I \trianglelefteq R}$ ([0]) | Determined by Submodule $\displaystyle{N \subseteq M}$ ([0]) |
| **Quotient**      | $\displaystyle{A/\theta}$ (set of equivalence classes)               | $\displaystyle{G/N}$                                     | $\displaystyle{R/I}$                                     | $\displaystyle{M/N}$                                         |
| **Kernel**        | $\displaystyle{\ker f = \{(x,y)\|f(x)=f(y)\}}$                       | $\displaystyle{\ker f = \{x\| f(x)=e\}}$                 | $\displaystyle{\ker f = \{x \| f(x)=0\}}$                | $\displaystyle{\ker f = \{x \| f(x)=0\}}$                    |

3. Why "Normal" / "Ideal"?
In Universal Algebra, a quotient is constructed by a **Congruence Relation** $\displaystyle{\theta}$ (an equivalence relation compatible with operations: $\displaystyle{x\sim y \implies f(x)\sim f(y)}$).
*   **Groups**: A congruence is uniquely determined by the equivalence class of $\displaystyle{e}$, which must be a **Normal Subgroup**. (Ideal-like)
*   **Rings**: A congruence is uniquely determined by the equivalence class of $\displaystyle{0}$, which must be an **Ideal**.
*   **Modules**: A congruence is uniquely determined by the class of $\displaystyle{0}$, which is just a **Submodule** (since all subgroups of abelian groups are normal).

---
