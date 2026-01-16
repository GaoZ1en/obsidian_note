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

prove that subgroup with index 2 is normal.

proof. consider the right coset decomposition of $\displaystyle{G}$ under $\displaystyle{H}$, i.e.

$$\begin{align}
G & =H\cup gH \text{for some } g\in G-H
\end{align}$$

$\displaystyle{\forall g\in G}$, consider $\displaystyle{gH}$, we have two cases:
1. $\displaystyle{gH=H}$, then $\displaystyle{g\in H\implies gH=H=Hg}$
2. $\displaystyle{gH\neq H}$, $\displaystyle{\exists g'\in G-H,\text{ s.t. } gH=g'H\implies g'^{-1}gH=H\implies g'^{-1}g\in H\implies g'^{-1}gH=H=Hg'^{-1}g}$.

thus $\displaystyle{gH=Hg}$, i.e. $\displaystyle{H\trianglelefteq G}$.

suppose $\displaystyle{N\triangleleft G}$, $\displaystyle{g}$ is an arbitrary element of $\displaystyle{G}$. prove that if the order of $\displaystyle{g}$ coprimes to $\displaystyle{|G/N|}$, then $\displaystyle{g\in N}$.

proof. consider the coset $\displaystyle{gN\in G/N}$, then

$$\begin{align}
(gN)^{|G /N|} & =g^{|G /N|}N=N\implies g^{|G/N|}\in N
\end{align}$$

on the other hand

$$\begin{align}
o(g) & | \gcd (o(g),|G/N|) =1 \\
\implies & \exists m,n\in \mathbb{Z}, \text{ s.t. } mo(g)+n|G/N|=1 \\
\implies & g^{mo(g)+n|G/N|}=g \\
\implies & g^{n|G/N|}=g\in N
\end{align}$$

prove that if $\displaystyle{G/Z(G)}$ is cyclic, then $\displaystyle{G}$ is Abelian.

proof. suppose $\displaystyle{G/Z(G)= \braket{ gZ(G) }}$ for some $\displaystyle{g\in G}$. then $\displaystyle{\forall a,b\in G}$, $\displaystyle{\exists m,n\in \mathbb{Z}_{N},z_{1},z_{2}\in Z(G), \text{ s.t. } a=g^{m}z_{1},b=g^{n}z_{2}}$. thus

$$\begin{align}
ab & =g^{m}z_{1}g^{n}z_{2}=g^{n}z_{2}g^{m}z_{1}=ba
\end{align}$$

thus $\displaystyle{G}$ is Abelian.

permutation groups.

for a finite set $\displaystyle{X=\left\{a_{1},\dots,a_{n}\right\}}$, a permutation $\displaystyle{\sigma}$ can be represented as

$$\begin{align}
\sigma & =\begin{pmatrix}
a_{1} & a_{2} & \dots & a_{n} \\
\sigma(a_{1}) & \sigma(s_{2}) & \dots & \sigma(a_{n})
\end{pmatrix}
\end{align}$$

or cycle notation, i.e., if $\displaystyle{\sigma(i_{1})=i_{2},\sigma(i_{2})=i_{3},\dots,\sigma(i_{r})=i_{1}}$, then $\displaystyle{\sigma=(i_{1}i_{2}\dots i_{r})}$. 
the sign of a permutation $\displaystyle{\sigma\in S_{n}}$ is defined as

$$\begin{align}
\text{sgn}(\sigma) & =(-1)^{k}, \text{ where } k \text{ is the number of transpositions in the decomposition of } \sigma
\end{align}$$

although the decomposition is not unique, the parity of $\displaystyle{k}$ is unique. thus $\displaystyle{\text{sgn}(\sigma)}$ is well-defined. the kernel of the sign homomorphism $\displaystyle{\text{sgn}: S_{n}\to \left\{1,-1\right\}}$ is called the alternating group $\displaystyle{A_{n}}$, i.e., the set of even permutations in $\displaystyle{S_{n}}$.

the cycle type of permutation is defined as the multiset of lengths of disjoint cycles in its cycle decomposition. for example, the cycle type of $\displaystyle{(1 2)(3 4 5)}$ is $\displaystyle{1^{2}2^{1}3^{1}}$, and

$$\begin{align}
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 \\
1 & 3 & 2 & 5 & 6 & 4 & 7
\end{pmatrix}=(23)(456)
\end{align}$$

has cycle type $\displaystyle{1^{2}2^{1}3^{1}}$.

two permutations are conjugate in $\displaystyle{S_{n}}$ if and only if they have the same cycle type.

1. in $\displaystyle{S_{6}}$
    1. for $\displaystyle{\sigma=(123456)}$, give the cyclic group $\displaystyle{\braket{ \sigma }}$, and calculate $\displaystyle{\sigma ^{100}}$
$$\begin{align}
\braket{ \sigma }  & =\left\{e,(123456),(135)(246),(14)(25)(36),(153)(264),(165432)\right\}
\end{align}$$
and
$$\begin{align}
\sigma ^{100} & =\sigma ^{100\mod{6}}=\sigma ^{4}=(14)(25)(36)
\end{align}$$
    2. calculate the number of elements in $\displaystyle{\left\{\tau \in S_{6}|\tau(2)=5\right\}}$
since $\displaystyle{\tau(2)=5}$, we only need to permute the other 5 elements. thus the number of such permutations is $\displaystyle{5!=120}$.
2. suppose $\displaystyle{\sigma \in A_{n}}$, $\displaystyle{K_{\sigma}}$ is the set of all pertumations in $\displaystyle{A_{n}}$ that have the same cycle type as $\displaystyle{\sigma}$. $\displaystyle{C_{S_{n}}(\sigma)}$ is the centralizer of $\displaystyle{\sigma}$ in $\displaystyle{S_{n}}$, prove that
    1. if $\displaystyle{C_{S_{n}}(\sigma)}$ contains odd permutation, $\displaystyle{K_{\sigma}}$ is a single conjugacy class in $\displaystyle{A_{n}}$.
    2. if all elements in $\displaystyle{C_{S_{n}}(\sigma)}$ are even, then $\displaystyle{K_{\sigma}}$ is the union of two distinct conjugacy classes in $\displaystyle{A_{n}}$.

proof. consider the conjugation action of $\displaystyle{A_{n}}$ on $\displaystyle{K_{\sigma}}$, the size of the conjugacy class of $\displaystyle{\tau\in K_{\sigma}}$ is $\displaystyle{[A_{n}:C_{A_{n}}(\tau)]}$.

1. if $\displaystyle{C_{S_{n}}(\sigma)}$ contains odd permutation, then $\displaystyle{C_{S_{n}}(\sigma)\nsubseteq A_{n}}$. thus

$$\begin{align}
|C_{A_{n}}(\sigma)| & =\frac{1}{2}|C_{S_{n}}(\sigma)|
\end{align}$$

therefore

$$\begin{align}
[A_{n}:C_{A_{n}}(\sigma)] & =\frac{|A_{n}|}{|C_{A_{n}}(\sigma)|}=\frac{\frac{1}{2}|S_{n}|}{\frac{1}{2}|C_{S_{n}}(\sigma)|}=[S_{n}:C_{S_{n}}(\sigma)]
\end{align}$$

thus the size of the conjugacy class of $\displaystyle{\tau}$ in $\displaystyle{A_{n}}$ is the same as that in $\displaystyle{S_{n}}$. since all elements in $\displaystyle{K_{\sigma}}$ form a single conjugacy class in $\displaystyle{S_{n}}$, they also form a single conjugacy class in $\displaystyle{A_{n}}$.
2. if all elements in $\displaystyle{C_{S_{n}}(\sigma)}$ are even, then $\displaystyle{C_{S_{n}}(\sigma)\subseteq A_{n}}$. thus

$$\begin{align}
|C_{A_{n}}(\sigma)| & =|C_{S_{n}}(\sigma)|
\end{align}$$

therefore

$$\begin{align}
[A_{n}:C_{A_{n}}(\sigma)] & =\frac{|A_{n}|}{|C_{A_{n}}(\sigma)|}=\frac{\frac{1}{2}|S_{n}|}{|C_{S_{n}}(\sigma)|}=\frac{1}{2}[S_{n}:C_{S_{n}}(\sigma)]
\end{align}$$

thus the size of the conjugacy class of $\displaystyle{\tau}$ in $\displaystyle{A_{n}}$ is half of that in $\displaystyle{S_{n}}$. since all elements in $\displaystyle{K_{\sigma}}$ form a single conjugacy class in $\displaystyle{S_{n}}$, they must form two distinct conjugacy classes in $\displaystyle{A_{n}}$. in addition, we can construct two distinct conjugacy classes in $\displaystyle{A_{n}}$ as follows:

$$\begin{align}
K_{\sigma}' & =\left\{\tau \sigma \tau ^{-1}|\tau \in A_{n}\right\} \\
K_{\sigma}'' & =\left\{( \tau' \sigma \tau'^{-1})|\tau' \in S_{n}-A_{n}\right\}
\end{align}$$

3. suppose $\displaystyle{\sigma=(12\dots n)}$ is a total cycle in $\displaystyle{S_{n}}$. prove that $\displaystyle{C_{S_{n}}(\sigma)= \braket{ \sigma }}$.
it is obvious that $\displaystyle{\braket{ \sigma }\subseteq C_{S_{n}}(\sigma)}$. $\displaystyle{\forall \tau \in C_{S_{n}}(\sigma), \tau \sigma=\sigma \tau}$, thus

$$\begin{align}
\tau (1) & =k \\
\tau (2) & =\tau (\sigma (1))=\sigma (\tau (1))=\sigma (k)=k+1 \\
\dots \\
\tau(n) & =k+n-1\mod{n} \\
\implies \tau & =\sigma ^{k-1}\in\braket{ \sigma } \implies C_{S_{n}}(\sigma)\subseteq \braket{ \sigma } 
\end{align}$$

4. determine all the normal subgroups of $\displaystyle{S_{4}}$.

proof. suppose $\displaystyle{N\trianglelefteq S_{4}}$. consider the conjugation action of $\displaystyle{S_{4}}$ on itself. from class equation

$$\begin{align}
|S_{4}| & =|Z(S_{4})|+\sum |Cl(a_{i})| \\
 & =1+6+8+3+6=24
\end{align}$$

where the sum is over representatives of conjugacy classes with size greater than 1, i.e., $\displaystyle{(12),(123),(12)(34),(1234)}$.

the possible sizes of $\displaystyle{N}$ are $\displaystyle{1,2,3,4,6,8,12,24}$. we have the following cases:

1. if $\displaystyle{|N|=1}$, then $\displaystyle{N=\left\{e\right\}}$. trivial.
2. if $\displaystyle{|N|=2}$, then $\displaystyle{N}$ must contain an element of order 2. since the conjugacy class of any transposition has size 6, thus $\displaystyle{N}$ can only contain $\displaystyle{(12)(34)}$. thus $\displaystyle{N=\left\{e,(12)(34)\right\}}$.
3. if $\displaystyle{|N|=3}$, then $\displaystyle{N}$ is cyclic group generated by an element of order 3. since the conjugacy class of any 3-cycle has size 8, contradiction.
4. if $\displaystyle{|N|=4}$, then $\displaystyle{N}$ is isomorphic to either $\displaystyle{C_{4}}$ or $\displaystyle{C_{2}\times C_{2}}$. since the conjugacy class of any element with order 4 has size 6, thus $\displaystyle{N}$ must be isomorphic to $\displaystyle{C_{2}\times C_{2}}$. thus $\displaystyle{N=\left\{e,(12)(34),(13)(24),(14)(23)\right\}}$.
5. if $\displaystyle{|N|=6}$, then $\displaystyle{N}$ is isomorphic to $\displaystyle{S_{3}}$ or $\displaystyle{C_{6}}$. since the conjugacy class of any 3-cycle has size 8, and the conjugacy class of any transposition has size 6, contradiction.
6. if $\displaystyle{|N|=8}$, then $\displaystyle{N}$ is isomorphic to $\displaystyle{D_{8}}$ or $\displaystyle{C_{8}}$ or $\displaystyle{Q_{8}}$. since the conjugacy class of any element with order 4 has size 6, contradiction.
7. if $\displaystyle{|N|=12}$, then $\displaystyle{N}$ must contain an element from each conjugacy class with size greater than 1. thus $\displaystyle{N}$ contains at least $\displaystyle{1+6+8=15}$ elements, contradiction.
8. if $\displaystyle{|N|=24}$, then $\displaystyle{N=S_{4}}$. trivial.

therefore, all the normal subgroups of $\displaystyle{S_{4}}$ are

$$\begin{align}
N & =\left\{e\right\}, \\
N & =\left\{e,(12)(34)\right\}, \\
N & =\left\{e,(12)(34),(13)(24),(14)(23)\right\}, \\
N & =S_{4}
\end{align}$$

Cayley's theorem: every group is isomorphic to a subgroup of a symmetric group $\displaystyle{S_{n}}$.

consider the action of $\displaystyle{G}$ on itself by left multiplication, i.e.,

$$\begin{align}
\rho: G\to S_{G} \\
g\mapsto \rho(g)
\end{align}$$

where $\displaystyle{\rho(g)(x)=gx}$. $\displaystyle{\forall h_{1},h_{2}\in G, \rho(g)(h_{1})=\rho(g)(h_{2})\implies gh_{1}=gh_{2}\implies h_{1}=h_{2}}$, so $\displaystyle{\rho(g)}$ is injective, and $\displaystyle{\forall h\in G, \rho(g)(g^{-1}h)=gg^{-1}h=h}$ so $\displaystyle{\rho(g)}$ is surjective $\displaystyle{\implies}$ $\displaystyle{\rho(g)}$ is bijective. $\displaystyle{\forall g_{1},g_{2}\in G}$, $\displaystyle{\rho(g_{1}g_{2})(h)=g_{1}g_{2}h=\rho(g_{1})\rho(g_{2})h}$, $\displaystyle{\rho}$ is a homomorphism. furthermore, $\displaystyle{\forall g_{1},g_{2}\in G, g_{1}\neq g_{2}, \rho _{g_{1}}(h)=g_{1}h\neq g_{2}h=\rho _{g_{2}}(h)}$, so $\displaystyle{\ker \rho =\left\{e\right\}}$, thus $\displaystyle{G\cong \rho(G)\leqslant S_{G}}$. 

the homomorphism $\displaystyle{\rho}$ is called the left regular representation. similarly, we have right regular representation defined as

$$\begin{align}
\tau:G\to S_{G} \\
g\mapsto \tau(g) \text{ s.t. } \tau(g)(h) & =hg^{-1}
\end{align}$$

for $\displaystyle{H\leqslant G}$, $\displaystyle{X=\left\{aH|a\in G\right\}}$, define

$$\begin{align}
\rho _{H}:G\to S_{X}, \rho _{H}(g)(aH)=gaH
\end{align}$$

$\displaystyle{\rho _{H}}$ is called the left coset representation of $\displaystyle{G}$ with respect to $\displaystyle{H}$.
1. $\displaystyle{\forall aH\neq bH}$, $\displaystyle{b^{-1}a\not\in H\implies (gb)^{-1}ga\not\in H\implies gaH\neq gbH\implies \rho _{H}(g)(aH)\neq \rho _{H}(g)(aH)}$, $\displaystyle{\rho _{H}(g)}$ is injective
2. $\displaystyle{\forall aH, \rho _{H}(g)(g^{-1}aH)=aH}$, $\displaystyle{\rho _{H}(g)}$ is surjective
3. $\displaystyle{\forall g_{1},g_{2}\in G, \rho _{H}(g_{1}g_{2})(aH)=g_{1}g_{2}aH=\rho _{H}(g_{1})(\rho _{H}(g_{2})(aH))}$, $\displaystyle{\rho _{H}}$ is a homomorphism. thus $\displaystyle{G\cong \rho _{H}(G)\leqslant S_{X}}$.

the kernel of $\displaystyle{\rho _{H}}$ is

$$\begin{align}
\mathrm{Ker}\rho _{H} & =\left\{g\in G|g aH=aH, \forall aH\in X\right\}
 \\
 & =\left\{g\in G|g\in aHa^{-1}, \forall aH\in X\right\} \\
 & =\bigcap _{a\in G}aHa^{-1}
\end{align}$$

thus $\displaystyle{G/\ker \rho _{H}\cong \rho _{H}(G)\leqslant S_{X}}$. similarly, we have right coset representation defined as

$$\begin{align}
\tau _{H}:G\to S_{X}, \text{where} X=\left\{Ha\right\} \\
g\mapsto \tau _{H}(g)\text{ s.t. } \tau _{H}(g)(Ha)=Hag^{-1}
\end{align}$$

we have $\displaystyle{\mathrm{Ker}\tau _{H}=\bigcap _{a\in G}a^{-1}Ha}$

$\displaystyle{A\subseteq G}$, consider the conjugation action of $\displaystyle{G}$ on $\displaystyle{A}$, i.e., $\displaystyle{X=\left\{aAa^{-1}|a\in G\right\}}$, we can define

$$\begin{align}
\pi:G\to S_{X} \\
g\mapsto \pi(g) \text{ s.t. } \pi(g)(aAa^{-1})=gaAa^{-1}g^{-1}
\end{align}$$

then $\displaystyle{\pi}$ is a homomorphism, since
1. $\displaystyle{\forall aAa^{-1}\neq bAb^{-1}, gaAa^{-1}g^{-1}\neq gbAb^{-1}g^{-1}\implies \pi(g)(aAa^{-1})\neq \pi(g)(bAb^{-1})}$, $\displaystyle{\pi(g)}$ is injective
2. $\displaystyle{\forall aAa^{-1}, \pi(g)(g^{-1}aAa^{-1}g)=aAa^{-1}}$, $\displaystyle{\pi(g)}$ is surjective
3. $\displaystyle{\forall g_{1},g_{2}\in G, \pi(g_{1}g_{2})(aAa^{-1})=g_{1}g_{2}aAa^{-1}g_{2}^{-1}g_{1}^{-1}=\pi(g_{1})(\pi(g_{2})(aAa^{-1}))}$, $\displaystyle{\pi}$ is a homomorphism.

thus we have $\displaystyle{G/\mathrm{Ker}\pi \cong\pi(G)\leqslant S_{X}}$. the kernel is

$$\begin{align}
\mathrm{Ker}\pi & =\left\{g\in G| \pi(g)(aAa^{-1})=aAa^{-1}, \forall aAa^{-1}\right\} \\
 & =\left\{g\in G|gaAa^{-1}g^{-1}=aAa^{-1}, \forall aAa^{-1}\right\} \\
 & =\left\{g\in G|a^{-1}gaA(a^{-1}g a)^{-1}=A, \forall aAa^{-1}\right\} \\
 & =\bigcap _{a\in G}aN_{G}(A)a^{-1}
\end{align}$$

suppose $\displaystyle{G}$ acts on the set $\displaystyle{X}$, $\displaystyle{\forall a\in X}$, the stabilizer of $\displaystyle{a}$ is defined as

$$\begin{align}
\text{Stab}(a) & =\left\{g\in G|g\cdot a=a\right\}
\end{align}$$

which is a subgroup of $\displaystyle{G}$.

the action of $\displaystyle{G}$ on the set $\displaystyle{X}$ defines a equivalence relation $\displaystyle{\sim}$, the equivalence class of $\displaystyle{a\in X}$ is called the orbit of $\displaystyle{a}$, defined as

$$\begin{align}
[a] & =\left\{ga|g\in G\right\}
\end{align}$$

the set of all orbits is denoted as $\displaystyle{X/G}$. the number of elements in the orbit $\displaystyle{[a]}$ is given by

$$\begin{align}
|G| & =|\text{Stab}(a)||[a]|
\end{align}$$

since $\displaystyle{\text{Stab}(a)\leqslant G}$, by Lagrange's theorem, $\displaystyle{|G|=|\text{Stab}(a)|[G:\text{Stab}(a)]}$, and we only need to prove $\displaystyle{|[a]|=[G:\text{Stab}(a)]}$.

consider the left coset decomposition

$$\begin{align}
G & =\bigcup _{g\in R}g\text{Stab}(a)
\end{align}$$

where $\displaystyle{R}$ is the set of representatives of left cosets of $\displaystyle{\text{Stab}(a)}$ in $\displaystyle{G}$. thus $\displaystyle{[G:\text{Stab}(a)]=|R|}$. on the other hand

$$\begin{align}
[a] & =\left\{ga|g\in G\right\}=\left\{gha|g\in R,h\in \text{Stab}(a)\right\} \\
 & =\left\{ga|g\in R\right\}
\end{align}$$

and $\displaystyle{\forall g_{1},g_{2}\in R,g_{1}\neq g_{2}\implies g_{1}^{-1}g_{2}\not\in \text{Stab}(a)\implies g_{1}^{-1}g_{2}a\neq a\implies g_{1}a\neq g_{2}a }$, so we have $\displaystyle{|[a]|=|R|=[G:\text{Stab}(a)]}$.

suppose $\displaystyle{G}$ is a finite group, $\displaystyle{p}$ is the minimal prime factor of $\displaystyle{|G|}$. if $\displaystyle{N\leqslant G}$, $\displaystyle{[G:N]=p}$, then $\displaystyle{N\triangleleft G}$.

proof. since $\displaystyle{[G:N]=p}$, so consider $\displaystyle{X=\left\{aN|a\in G\right\}}$, we have $\displaystyle{|X|=p}$. consider the left coset representation

$$\begin{align}
\rho _{N} & :G\to S_{X}=S_{p} \\
\rho _{N}(g)(aN) & =gaN
\end{align}$$

then we have

$$\begin{align}
\mathrm{Ker}\rho _{N} & =\bigcap _{a\in G}aN_{G}(N)a^{-1}
\end{align}$$

by fundamental law of homomorphism, we have

$$\begin{align}
G/\mathrm{Ker}\rho _{N} & \cong \rho _{N}(G)\leqslant S_{X}=S_{p}
\end{align}$$

thus $\displaystyle{|G/\mathrm{Ker}\rho _{N}|=|\rho _{N}(G)|}$ is not only a factor of $\displaystyle{|G|}$, but also a factor of $\displaystyle{|S_{p}|=p!}$. since $\displaystyle{p}$ is the minimal prime factor of $\displaystyle{|G|}$, then we have $\displaystyle{|\rho _{N}(G)||p}$.

$$\begin{align}
|G/\mathrm{Ker}\rho _{N}| & =[G:\mathrm{Ker}\rho _{N}]=[G:N][N:\mathrm{Ker}\rho _{N}]=p[N:\mathrm{Ker}\rho _{N}]\implies p|[G/\mathrm{Ker}\rho _{N}]\implies |G/\mathrm{Ker}\rho _{N}|=p, [N:\mathrm{Ker}\rho _{N}]=1 
\end{align}$$

thus we have $\displaystyle{N=\mathrm{Ker}\rho _{N}\triangleleft G}$.

suppose $\displaystyle{G}$ acts on the set $\displaystyle{\Sigma}$. $\displaystyle{\forall a,b\in \Sigma}$, if $\displaystyle{\exists g\in G\text{ s.t. }ga=b}$ , then $\displaystyle{\text{Stab}(a)=g^{-1}\text{Stab}(b)g}$. 

proof. by definition

$$\begin{align}
\text{Stab}(a) & =\left\{h\in G|ha =a\right\} \\
 & =\left\{h\in G|ghg^{-1}b=b\right\} \\
 & =\left\{g^{-1}hg\in G|hb=b\right\} \\
 & =g^{-1}\text{Stab}(b)g
\end{align}$$

thus $\displaystyle{\text{Stab}(a)}$ and $\displaystyle{\text{Stab}(b)}$ are conjugate subgroups.

suppose $\displaystyle{G}$ acts on the set $\displaystyle{\Sigma}$, the number of distinct orbits is denoted as $\displaystyle{t}$. $\displaystyle{\forall g\in G}$, $\displaystyle{f(g)}$ is the number of elements in $\displaystyle{\Sigma}$ fixed by $\displaystyle{g}$, prove that

$$\begin{align}
\sum _{g\in G}f(g) & =t|G|
\end{align}$$

proof.

consider the set $\displaystyle{S=\left\{(g,a)\in G\times \Sigma|ga=a\right\}}$. calculate $\displaystyle{|S|}$ in two ways:
1. sum over $\displaystyle{g}$:
$$\begin{align}
|S| & =\sum _{g\in G}|\left\{a\in \Sigma|ga=a\right\}|=\sum _{g\in G}f(g)
\end{align}$$
2. sum over $\displaystyle{a}$:
$$\begin{align}
|S| & =\sum _{a\in \Sigma}|\text{Stab}(a)|=\sum _{a\in \Sigma} \frac{|G|}{|[a]|} \\
 & =|G|\sum _{\text{orbits}}\sum _{a\in [a]} \frac{1}{|[a]|} \\
 & =|G|\sum _{\text{orbits}}1=t|G|
\end{align}$$

thus

$$\begin{align}
\sum _{g\in G}f(g) & =t|G|
\end{align}$$

doucle counting trick... 

suppose $\displaystyle{H}$ is a subgroup of infinite group $\displaystyle{G}$ with finite index. prove that $\displaystyle{G}$ contains a normal subgroup $\displaystyle{N}$ with finite index.

proof. define $\displaystyle{X=\left\{aH|a\in G\right\}}$, we have $\displaystyle{|X|}$ is finite, denoted as $\displaystyle{n}$. consider the left coset representation

$$\begin{align}
\rho _{H} & :G\to S_{X}=S_{n} \\
\rho _{H}(g)(aH) & =gaH
\end{align}$$

then we have

$$\begin{align}
\mathrm{Ker}\rho _{H} & =\bigcap _{a\in G}aHa^{-1}
\end{align}$$

by fundamental law of homomorphism, we have

$$\begin{align}
G/\mathrm{Ker}\rho _{H} & \cong \rho _{H}(G)\leqslant S_{n}
\end{align}$$

thus $\displaystyle{|G/\mathrm{Ker}\rho _{H}|=|\rho _{H}(G)|}$ is not only a factor of $\displaystyle{|G|}$, but also a factor of $\displaystyle{|S_{n}|=n!}$. since $\displaystyle{n!}$ is finite, we have $\displaystyle{|\rho _{H}(G)|}$ is finite, thus $\displaystyle{|\mathrm{Ker}\rho _{H}|}$ is of finite index in $\displaystyle{G}$. furthermore, by definition, $\displaystyle{\mathrm{Ker}\rho _{H}\triangleleft G}$.

> **Note: Poincaré's Theorem & Normal Core**
> 
> 1.  **Poincaré's Theorem**
>     The intersection of a finite number of subgroups of finite index has finite index.
>     Specifically, if $\displaystyle{[G:H] < \infty}$ and $\displaystyle{[G:K] < \infty}$, then $\displaystyle{[G : H \cap K] \le [G:H][G:K] < \infty}$.
> 
> 2.  **Normal Core**
>     The subgroup you constructed, $\displaystyle{N = \bigcap_{g\in G} gHg^{-1}}$, is called the **Normal Core** of $\displaystyle{H}$ in $\displaystyle{G}$, denoted $\displaystyle{\mathrm{Core}_G(H)}$.
>     *   It is the kernel of the action on cosets ($\displaystyle{G \to S_{G/H}}$).
>     *   It is the **largest normal subgroup** of $\displaystyle{G}$ contained in $\displaystyle{H}$.
>     *   Your proof shows: $\displaystyle{[G:H] = n \implies [G:\mathrm{Core}_G(H)] \big| n!}$.

another proof. define $\displaystyle{X=\left\{aHa^{-1}|a\in G\right\}}$, we have $\displaystyle{|X|}$ is finite, denoted as $\displaystyle{m}$. consider the conjugation representation

$$\begin{align}
\pi & :G\to S_{X} \\
\pi (g)(aHa^{-1}) & =gaHa^{-1}g^{-1}
\end{align}$$

then we have

$$\begin{align}
\mathrm{Ker}\pi & =\bigcap _{a\in G}aN_{G}(H)a^{-1}
\end{align}$$

by fundamental law of homomorphism, we have

$$\begin{align}
G/\mathrm{Ker}\pi & \cong \pi (G)\leqslant S_{X}=S_{m}
\end{align}$$

thus $\displaystyle{|G/\mathrm{Ker}\pi|=|\pi (G)|}$ is not only a factor of $\displaystyle{|G|}$, but also a factor of $\displaystyle{|S_{m}|=m!}$. since $\displaystyle{m!}$ is finite, we have $\displaystyle{|\pi (G)|}$ is finite, thus $\displaystyle{|\mathrm{Ker}\pi |}$ is of finite index in $\displaystyle{G}$. furthermore, by definition, $\displaystyle{\mathrm{Ker}\pi \triangleleft G}$.

Sylow's theorem

suppose $\displaystyle{p^{r}||G|}$, where $\displaystyle{p}$ is a prime. denote $\displaystyle{N(n)}$ as the number of subgroups of order $\displaystyle{n}$ in $\displaystyle{G}$, then $\displaystyle{N(p^{r})\equiv 1\mod{p}}$. specially, if $\displaystyle{p^{r}||G|}$, then there exists at least a subgroup of order $\displaystyle{p^{r}}$ in $\displaystyle{G}$.

suppose $\displaystyle{G}$ is a finite group with order $\displaystyle{np^{r}}$, where $\displaystyle{p}$ is a prime number, $\displaystyle{r\geqslant 1,p\nmid n}$. then the subgroup of order $\displaystyle{p^{r}}$ is called the Sylow $\displaystyle{p}$-subgroup of $\displaystyle{G}$. the Sylows' theorem states that

suppose $\displaystyle{G}$ is a finite group, then
1. for every prime factor $\displaystyle{p}$ of $\displaystyle{|G|}$, there exists at least one Sylow $\displaystyle{p}$-subgroup in $\displaystyle{G}$.
2. all Sylow $\displaystyle{p}$-subgroups are conjugate to each other
3. the number of Sylow $\displaystyle{p}$-subgroups $\displaystyle{N(p^{r})}$ satisfies $\displaystyle{N(p^{r})\equiv 1\mod{p}}$ and $\displaystyle{N(p^{r})|n}$, where $\displaystyle{|G|=np^{r},p\nmid n}$.
4. the number of Sylow $\displaystyle{p}$-subgroups is $\displaystyle{[G:N_{G}(P)]}$

we will only focus the application of Sylow's theorem in this class. corollaries:
1. suppose $\displaystyle{p\mid|G|}$, then every subgroup of order $\displaystyle{p}$'s exponent is contained in some Sylow $\displaystyle{p}$-subgroup.
2. suppose $\displaystyle{P}$ is a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{G}$, $\displaystyle{A\leqslant G}$, and $\displaystyle{N_{G}(P)\leqslant A}$, then $\displaystyle{N_{G}(A)=A}$
proof. we have
$$\begin{align}
P\leqslant N_{G}(P)\leqslant A\leqslant N_{G}(A)
\end{align}$$
$\displaystyle{\forall g\in N_{G}(A)}$, we have $\displaystyle{gPg^{-1}\leqslant gAg^{-1}=A}$, thus $\displaystyle{gPg^{-1}}$ is also a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{A}$. by Sylow's theorem, there exists $\displaystyle{a\in A}$, such that $\displaystyle{gPg^{-1}=aPa^{-1}}$, thus $\displaystyle{a^{-1}g\in N_{G}(P)\leqslant A\implies g\in A}$, so we have $\displaystyle{N_{G}(A)=A}$.
3. $\displaystyle{M\triangleleft G}$, $\displaystyle{P}$ is a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{M}$, then $\displaystyle{G=MN_{G}(P)}$
proof. consider the conjugation action of $\displaystyle{G}$ on the Sylow $\displaystyle{p}$-subgroups of $\displaystyle{M}$, denoted as $\displaystyle{X}$
$$\begin{align}
\pi:G\to S_{X} \\
g\mapsto \pi(g)(P)\to gPg^{-1}\leqslant gMg^{-1}=M
\end{align}$$

thus $\displaystyle{gPg^{-1}}$ is a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{M}$. by Sylow's theorem, all Sylow $\displaystyle{p}$-subgroups of $\displaystyle{M}$ are conjugate to each other, so $\displaystyle{\exists a\in M, \text{ s.t. } agPg^{-1}a^{-1}=P\implies ag\in N_{G}(P)}$, and thus

$$\begin{align}
g=a^{-1}(ag)\in MN_{G}(P)
\end{align}$$

groups with order $\displaystyle{148}$ is not simple.
proof. notice that $\displaystyle{148=2^{2}37}$, then by Sylow's theorem, there are $\displaystyle{N(37)}$ Sylow $\displaystyle{37}$-subgroups, satisfying

$$\begin{align}
N(37) & \equiv 1\mod{37} \\
N(37) & |148 \\
\implies N(37) & =1
\end{align}$$

thus the unique Sylow $\displaystyle{37}$-subgroup is normal, so groups with order $\displaystyle{148}$ is not simple.

### Sylow Application Tactics & Related Theorems

The "standard procedure" ($n_p | m, n_p \equiv 1$) accounts for 80% of problems, but hard problems need these additional tools:

1.  **Counting Elements (Overlap Analysis)**
    If $n_p > 1$, we often count elements to find a contradiction.
    *   **Simple Case**: If intersection of distinct Sylow $p$-subgroups is trivial ($\{e\}$), then there are exactly $n_p(p^k - 1)$ elements of order $p^j$ ($j \ge 1$).
    *   **Tactics**: Sum up elements from Sylow $p$-subgroups and Sylow $q$-subgroups. If Sum $> |G|$, disjoint assumption was wrong or group constraints violated.
    *   *Example (Order 30)*: $n_5 \in \{1, 6\}, n_3 \in \{1, 10\}$. If both are $>1$, we have $6(4)=24$ elements of order 5, and $10(2)=20$ elements of order 3. $24+20 > 30$. Contradiction. Thus one must be normal.

2.  **Embeddings into Symmetric Groups (Index Factorial)**
    Consider the action of $G$ on the set of Sylow $p$-subgroups, denoted $Syl_p(G)$, where $|Syl_p(G)| = n_p$.
    *   This gives a homomorphism $\rho: G \to S_{n_p}$.
    *   **G-Tip**: If $|G|$ does not divide $n_p!$, the kernel must be non-trivial. $\ker \rho$ is a normal subgroup.
    *   *Example (Order 36)*: $|G|=36=2^2 3^2$. $n_3 \in \{1, 4\}$. If $n_3=4$, we have $\rho: G \to S_4$. Since $|S_4|=24 < 36$, the kernel is non-trivial.

3.  **Groups of Order $pq$** (Detailed classification)
    Let $|G| = pq$ with primes $p < q$.
    *   **Step 1: Normal Sylow $q$-subgroup ($Q$)**
        $n_q | p$ and $n_q \equiv 1 \pmod q$.
        Since $p < q$, the only divisor of $p$ congruent to 1 mod $q$ is 1.
        So $n_q = 1$. Let $Q$ be the unique normal Sylow $q$-subgroup ($Q \cong C_q$).

    *   **Step 2: Number of Sylow $p$-subgroups ($n_p$)**
        $n_p | q$ and $n_p \equiv 1 \pmod p$.
        Possible values for $n_p$ are $1$ or $q$.

    *   **Case A: $p \nmid q-1$ (Cyclic)**
        If $p \nmid q-1$, then $q \not\equiv 1 \pmod p$, so $n_p \ne q$.
        Thus $n_p$ must be 1. Let $P$ be the normal Sylow $p$-subgroup.
        Since $P \trianglelefteq G, Q \trianglelefteq G$ and $P \cap Q = \{e\}$, elements of $P$ commute with elements of $Q$: $xyx^{-1}y^{-1} \in P \cap Q = \{e\} \implies xy=yx$.
        $G \cong P \times Q \cong C_p \times C_q \cong C_{pq}$ (cyclic).

    *   **Case B: $p \mid q-1$ (Non-Abelian exists)**
        Here $n_p=q$ is possible (and mandatory for non-abelian).
        We effectively have a semidirect product $G = Q \rtimes P$.
        The group structure involves an action $\phi: P \to \text{Aut}(Q)$.
        Since $\text{Aut}(Q) \cong C_{q-1}$, and $p \mid q-1$, there exists a non-trivial homomorphism $P \to \text{Aut}(Q)$.
        This gives the unique non-abelian group $G = \langle a, b \mid a^p=1, b^q=1, aba^{-1}=b^s \rangle$ where $s \not\equiv 1 \pmod q, s^p \equiv 1 \pmod q$.

let $\displaystyle{|G|=pq}$ with $\displaystyle{p,q}$ being distinct primes, and $\displaystyle{p<q}$. by Sylow's theorem, the number of Sylow $\displaystyle{q}$-subgroups $\displaystyle{N(q)}$ satisfies

$$\begin{align}
N(q) & |pq \\
N(q) & \equiv 1\mod{q} \\
\implies N(q) & =1
\end{align}$$

thus $\displaystyle{G}$ has only one normal Sylow $\displaystyle{q}$-subgroup. by the same method, the number of Sylow $\displaystyle{p}$-subgroups $\displaystyle{N(p)}$ satisfies

$$\begin{align}
N(p) & |pq \\
N(p) & \equiv1\mod{p} \\
\implies N(p) & =1\text{ or } q
\end{align}$$

- if $\displaystyle{p\nmid q-1}$, then $\displaystyle{q\not\equiv 1\mod{p}}$, then $\displaystyle{N(p)=1}$. let $\displaystyle{P}$ be the unique normal Sylow $\displaystyle{p}$-group. since $\displaystyle{P\triangleleft G}$, $\displaystyle{Q\triangleleft G}$ and $\displaystyle{P\cap Q=\left\{e\right\}}$, we got a direct product $\displaystyle{G\cong P\times Q\cong \mathbb{Z}_{p}\times \mathbb{Z}_{q}\cong \mathbb{Z}_{pq}}$.
- if $\displaystyle{p\mid q-1}$, it is possible to allow $\displaystyle{N(p)=q}$. let $\displaystyle{Q}$ be the unique normal Sylow $\displaystyle{q}$-subgroup, and $\displaystyle{P=\left\langle a\right\rangle}$ be a Sylow $\displaystyle{p}$-subgroup. since $\displaystyle{N(p)=q}$, thus there are $\displaystyle{q}$ Sylow $\displaystyle{p}$-subgroups, denoted as $\displaystyle{P_{0},P_{1},\cdots,P_{q-1}}$. consider the conjugation action of $\displaystyle{Q}$ on the set of Sylow $\displaystyle{p}$-subgroups

$$\begin{align}
\phi :Q\to S_{X}=S_{q} \\
g\mapsto \phi(g) \text{ s.t. } \phi(g)(P_{i})=gP_{i}g^{-1}
\end{align}$$

since $\displaystyle{Q\triangleleft G}$, thus $\displaystyle{gP_{i}g^{-1}}$ is also a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{G}$. by Sylow's theorem, all Sylow $\displaystyle{p}$-subgroups are conjugate to each other, so $\displaystyle{\phi}$ is well-defined. by fundamental law of homomorphism, we have

$$\begin{align}
Q/\mathrm{Ker}\phi & \cong \phi(Q)\leqslant S_{q}
\end{align}$$

thus $\displaystyle{|\phi(Q)|}$ is not only a factor of $\displaystyle{|Q|=q}$, but also a factor of $\displaystyle{|S_{q}|=q!}$. since $\displaystyle{q}$ is prime, we have $\displaystyle{|\phi(Q)|=1}$ or $\displaystyle{q}$. if $\displaystyle{|\phi(Q)|=1}$, then $\displaystyle{Q\leqslant \mathrm{Ker}\phi}$, thus $\displaystyle{gP_{i}g^{-1}=P_{i}}$, which contradicts to the fact that there are $\displaystyle{q}$ distinct Sylow $\displaystyle{p}$-subgroups. therefore, we have $\displaystyle{|\phi(Q)|=q}$, and thus $\displaystyle{\mathrm{Ker}\phi=\left\{e\right\}}$. so we have an injective homomorphism

$$\begin{align}
\phi :Q\to \text{Aut}(P)\leqslant \mathbb{Z}_{p-1} \\
g\mapsto \phi(g) \text{ s.t. } \phi(g)(a)=gag^{-1}
\end{align}$$

since $\displaystyle{|\text{Aut}(P)|=p-1}$, and $\displaystyle{|Q|=q}$, thus $\displaystyle{\phi}$ is non-trivial only if $\displaystyle{p\mid q-1}$ as assumped. therefore, we have a semidirect product $\displaystyle{G=Q\rtimes P}$, with the group operation defined as

$$\begin{align}
(a_{1},b_{1})(a_{2},b_{2}) & =(a_{1}\phi(b_{1})(a_{2}),b_{1}b_{2}) \\
 & =(a_{1}b_{1}a_{2}b_{1}^{-1},b_{1}b_{2})
\end{align}$$

and the group presentation is $G = \langle a, b \mid a^p=1, b^q=1, aba^{-1}=b^s \rangle$ where $s \not\equiv 1 \pmod q, s^p \equiv 1 \pmod q$.


4.  **Simple Group Tests (Index Factorial / $n!$ Theorem)**
    The most powerful tool for disprove simplicity beside Sylow counting.
    **Theorem**: If a finite group $G$ has a proper subgroup $H$ with index $n=[G:H]>1$, and $|G|$ does not divide $n!$, then $G$ is not simple.
    *(A special case is indeed $|G| > n!$, as you noticed).*

let $\displaystyle{G}$ act on the set of left cosets $\displaystyle{X=G/H}$ with $\displaystyle{|X|=n}$ by left multiplication

$$\begin{align}
\phi:G\to S_{X}=S_{n} \\
g\mapsto \phi(g)(aH)=gaH
\end{align}$$

the kernel

$$\begin{align}
\mathrm{Ker}\phi & =\left\{g\in G|gaH=aH,\forall aH\right\} \\
 & =\left\{g\in G|a^{-1}gaH=H,\forall aH\right\} \\
 & =\left\{aga^{-1}\in G|g\in N_{G}(H)\right\} \\
 & =\bigcap _{a\in G}aN_{G}(H)a^{-1}
\end{align}$$

is a normal subgroup of $\displaystyle{G}$, and $\displaystyle{K\leqslant H<G}$. 

by fundamental law of homomorphism, we have

$$\begin{align}
G/\mathrm{Ker}\phi & \cong \phi(G)\leqslant S_{n}
\end{align}$$

therefore, $\displaystyle{|G||\mathrm{Ker}\phi|\mid n!}$. since $\displaystyle{|G|}$ does not divide $\displaystyle{n!}$, we must have $\displaystyle{|K|>1}$, thus $\displaystyle{|K|}$ is a non-trivial proper normal subgroup, and $\displaystyle{|G|}$ is not simple.

suppose $\displaystyle{G}$ is a group with order $\displaystyle{n}$, and $\displaystyle{p}$ is a prime factor of $\displaystyle{n}$. prove that the number of solutions of $\displaystyle{x^{p}=1}$ in $\displaystyle{G}$ is multiple of $\displaystyle{p}$.

proof. consider the set $\displaystyle{X=\left\{(a_{1},a_{2},\cdots,a_{p})|a_{i}\in G,a_{1}a_{2}\cdots a_{p}=1\right\}}$, we have $\displaystyle{|X|=n^{p-1}}$. define an action of $\displaystyle{\mathbb{Z}_{p}}$ on $\displaystyle{X}$ as

$$\begin{align}
\phi :\mathbb{Z}_{p}\to S_{X} \\
k\mapsto \phi (k)\text{ s.t. } \phi (k)(a_{1},a_{2},\cdots,a_{p})=(a_{1+k},a_{2+k},\cdots,a_{p+k})
\end{align}$$

then we have $\displaystyle{\phi}$ is well-defined. by Burnside's lemma, the number of orbits is given by

$$\begin{align}
\text{number of orbits} & =\frac{1}{p}\sum _{k\in \mathbb{Z}_{p}}|\left\{x\in X|\phi (k)(x)=x\right\}|
\end{align}$$

for $\displaystyle{k=0}$, we have $\displaystyle{|\left\{x\in X|\phi (0)(x)=x\right\}|=|X|=n^{p-1}}$; for $\displaystyle{k\neq 0}$, we have

$$\begin{align}
\phi (k)(a_{1},a_{2},\cdots,a_{p}) & =(a_{1+k},a_{2+k},\cdots,a_{p+k})=(a_{1},a_{2},\cdots,a_{p}) \\
\implies a_{1} & =a_{1+k}=a_{1+2k}=\cdots =a_{1+(p-1)k} \\
\end{align}$$

thus $\displaystyle{a_{1}=a_{2}=\cdots =a_{p}=a}$, and $\displaystyle{a^{p}=1}$. therefore, we have $\displaystyle{|\left\{x\in X|\phi (k)(x)=x\right\}|}$ is the number of solutions of $\displaystyle{x^{p}=1}$ in $\displaystyle{G}$, denoted as $\displaystyle{m}$. so the number of orbits is

$$\begin{align}
\text{number of orbits} & =\frac{1}{p}(n^{p-1}+(p-1)m)
\end{align}$$

thus we have $\displaystyle{n^{p-1}+(p-1)m\equiv 0\mod{p}}$, and thus $\displaystyle{m\equiv 0\mod{p}}$.

suppose $\displaystyle{N}$ is a normal subgroup of finite group $\displaystyle{G}$. if $\displaystyle{p}$ coprime to $\displaystyle{|G /N|}$, then $\displaystyle{N}$ contains all the Sylow $\displaystyle{p}$-subgroups of $\displaystyle{G}$.

proof. let $\displaystyle{P}$ be a Sylow $\displaystyle{p}$-subgroup of $\displaystyle{G}$. consider the natural homomorphism

$$\begin{align}
\pi :G\to G/N \\
g\mapsto gN
\end{align}$$

then by fundamental law of homomorphism, we have

$$\begin{align}
P/(P\cap N) & \cong \pi (P)\leqslant G/N
\end{align}$$

thus $\displaystyle{|\pi (P)|}$ is not only a factor of $\displaystyle{|P|=p^{r}}$, but also a factor of $\displaystyle{|G/N|}$. since $\displaystyle{p}$ is coprime to $\displaystyle{|G/N|}$, we have $\displaystyle{|\pi (P)|=1}$, thus $\displaystyle{P\leqslant N}$.
