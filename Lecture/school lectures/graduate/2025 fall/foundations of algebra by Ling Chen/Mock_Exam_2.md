# Final Review Exam - Foundations of Algebra (Set 2)
*Time Limit: 2 Hours (Self-Paced)*

## Part 1: Group Theory

1.  **[True/False]** (Provide a brief reason or counter-example)
    a) Any group of order 15 is cyclic.
    b) If $N \triangleleft G$, then $G$ must contain a subgroup isomorphic to $G/N$ (i.e., the quotient "lifts" back into the group).
    c) The center of a non-abelian group of order $p^3$ has order $p$.
*sol*.
a) true. by Sylow's theorem, the number of Sylow 3-subgroups and 5-subgroups is 1, so the group is isomorphic to the direct product of these two cyclic groups, which is cyclic.
b) false. for example, the symmetric group S4 has a normal subgroup V4 (the Klein four-group), but there is no subgroup of S4 isomorphic to S4/V4 (which is isomorphic to S3).
c) by Sylow's theorem, the center of a non-abelian group of order p^3 is either of order p or p^2. if it were of order p^2, then the quotient group G/Z(G) would have order p, which is cyclic, implying G is abelian, contradicting the assumption. hence, the center must have order p.

2.  **[Sylow & Simple Groups]**
    Let $G$ be a group of order $56$.
    a) What are the possible values for $n_7$ (number of Sylow 7-subgroups)?
    b) What are the possible values for $n_2$ (number of Sylow 2-subgroups)?
    c) Prove that $G$ is not simple. (i.e., prove there exists a normal Sylow subgroup).
*sol*.
a) $\displaystyle{n_{7}| 8}$ and $\displaystyle{n_{7}\equiv 1\mod{7}}$, so $\displaystyle{n_{7}=1}$ or $\displaystyle{8}$.
b) $\displaystyle{n_{2}| 7}$ and $\displaystyle{n_{2}\equiv 1\mod{2}}$, so $\displaystyle{n_{2}=1,3,5,7}$.
c) we first prove a lemma
lemma: suppose $\displaystyle{G}$ is a finite group and $\displaystyle{H}$ is a proper subgroup of $\displaystyle{G}$ with index $\displaystyle{n>1}$. if $\displaystyle{|G|}$ does not divide $\displaystyle{n!}$, then $\displaystyle{G}$ is not simple.
proof. consider the action of $\displaystyle{G}$ on the left cosets of $\displaystyle{H}$ by left multiplication
$$\begin{align}
\phi:G\to S_{n} \\
g\mapsto \phi(g):xH\mapsto gxH
\end{align}$$
this is a group homomorphism, then by the fundamental theorem of homomorphisms, we have
$$\begin{align}
G/\mathrm{Ker}\phi \cong \phi(g)\leqslant S_{n}
\end{align}$$
then $\displaystyle{|G| /|\mathrm{Ker}\phi|}$ divides $\displaystyle{n!}$. assume $\displaystyle{G}$ is simple, then $\displaystyle{\mathrm{Ker}\phi}$ is either $\displaystyle{G}$ or $\displaystyle{\{e\}}$. if $\displaystyle{\mathrm{Ker}\phi=G}$, then $\displaystyle{\phi}$ is trivial, which contradicts the fact that $\displaystyle{H}$ is a proper subgroup of $\displaystyle{G}$. hence, $\displaystyle{\mathrm{Ker}\phi=\{e\}}$, so $\displaystyle{|G|}$ divides $\displaystyle{n!}$. this completes the proof of the lemma.
thus by the lemma. if $\displaystyle{n_{7}=8}$, then $\displaystyle{G}$ is not simple since $\displaystyle{56\nmid 8!}$. if $\displaystyle{n_{7}=1}$, then the unique Sylow 7-subgroup is normal in $\displaystyle{G}$. hence, in both cases, $\displaystyle{G}$ is not simple.


3.  **[Standard Proof]**
    Let $G$ be a group. Prove ONE of the following:
    a) If $G/Z(G)$ is cyclic, then $G$ is abelian.
    b) If $H$ is a subgroup of $G$ with index 2, then $H$ is normal in $G$.
*sol*.
a) assume $\displaystyle{G/Z(G)}$ is cyclic, then $\displaystyle{\exists g\in G}$ such that $\displaystyle{G /Z(G)=\braket{ g }}$. then $\displaystyle{\forall g_{1},g_{2}\in G, \exists z_{1},z_{2}\in Z(G),n_{1},n_{2}\in \mathbb{Z}, g_{1}=g^{n_{1}}z_{1},g_{2}=g^{n_{2}}z_{2}}$, then
$$\begin{align}
g_{1}g_{2} & = g^{n_{1}}z_{1}g^{n_{2}}z_{2} \\
 & = g^{n_{1}}g^{n_{2}}z_{1}z_{2} \\
 & = g^{n_{2}}g^{n_{1}}z_{2}z_{1} \\
 & = g^{n_{2}}z_{2}g^{n_{1}}z_{1} \\
 & = g_{2}g_{1}
\end{align}$$
so $\displaystyle{G}$ is Abelian
b) consider the action of $\displaystyle{G}$ on the left cosets of $\displaystyle{H}$ by left multiplication
$$\begin{align}
\phi:G\to S_{2}=\mathbb{Z}_{2} \\
g\mapsto \phi(g):xH\mapsto gxH
\end{align}$$
this is a group homomorphism. then by the fundamental theorem of homomorphisms, we have
$$\begin{align}
G/\mathrm{Ker}\phi \cong \phi(g)\leqslant S_{2}=\mathbb{Z}_{2}
\end{align}$$
and we have
$$\begin{align}
\mathrm{Ker}\phi & =\left\{g\in G|gxH=xH, \forall xH\right\} \\
 & =\left\{g\in G|x^{-1}gxH=H,\forall xH\right\} \\
 & =\bigcap _{x \in G}xHx^{-1}
\end{align}$$
since $\displaystyle{G/\mathrm{Ker}\phi \cong \phi(g)\leqslant S_{2}=\mathbb{Z}_{2}}$, so $\displaystyle{[G:\mathrm{Ker}\phi]=1}$ or $\displaystyle{2}$. if $\displaystyle{[G:\mathrm{Ker}\phi]=1}$, then $\displaystyle{\mathrm{Ker}\phi=G}$, which implies $\displaystyle{H=G}$, contradicting the fact that $\displaystyle{H}$ is a proper subgroup of $\displaystyle{G}$. hence, $\displaystyle{[G:\mathrm{Ker}\phi]=2}$, so $\displaystyle{\mathrm{Ker}\phi=H}$. thus, $\displaystyle{H}$ is normal in $\displaystyle{G}$.

## Part 2: Ring Theory

4.  **[Gaussian Integers]**
    Consider the ring of Gaussian Integers $R = \mathbb{Z}[i]$.
    a) Is the ideal $I = (3)$ prime in $R$? Explain. (Hint: Recall norms or behavior of primes $\equiv 3 \pmod 4$).
    b) Is the ideal $J = (5)$ prime in $R$? Explain.
    c) Determine the number of elements in the quotient ring $R/I$ and whether it is a field.
*sol*.
a) consider the quotient ring $\displaystyle{R /I\cong \mathbb{Z}_{3}[i]\cong \mathbb{Z}_{3}[x] /(x^{2}+1)}$. assume $\displaystyle{x^{2}+1}$ is reducible in $\displaystyle{\mathbb{Z}_{3}[x]}$, then $\displaystyle{\exists a\in \mathbb{Z}_{3}}$ such that $\displaystyle{a^{2}+1=0}$, which is impossible since $\displaystyle{\mathbb{Z}_{3}=\{0,1,2\}}$. hence, $\displaystyle{x^{2}+1}$ is irreducible in $\displaystyle{\mathbb{Z}_{3}[x]}$, so $\displaystyle{R /I}$ is a field, then a integral domain, thus $\displaystyle{I}$ is a prime ideal in $\displaystyle{R}$.
b) by similar argument as in (a), we consider the quotient ring $\displaystyle{R /J\cong \mathbb{Z}_{5}[i]\cong \mathbb{Z}_{5}[x] /(x^{2}+1)}$. since $\displaystyle{2^{2}+1=0}$ in $\displaystyle{\mathbb{Z}_{5}}$, so $\displaystyle{x^{2}+1}$ is reducible in $\displaystyle{\mathbb{Z}_{5}[x]}$, thus $\displaystyle{R /J}$ is not an integral domain, so $\displaystyle{J}$ is not a prime ideal in $\displaystyle{R}$.
c) in (a), we have $\displaystyle{R /I\cong \mathbb{Z}_{3}[i]}$. since $\displaystyle{\mathbb{Z}_{3}}$ has 3 elements and $\displaystyle{i}$ can take 3 values $\displaystyle{\{0,1,2\}}$, so $\displaystyle{R /I}$ has $\displaystyle{3\times 3=9}$ elements, and it is a field as proved in (a). 

5.  **[Ideals in $\mathbb{Z}$]**
    Let $I = (n)$ and $J = (m)$ be ideals in $\mathbb{Z}$.
    a) Describe the ideal $I \cap J$ in terms of $n$ and $m$.
    b) Describe the ideal $I + J$ in terms of $n$ and $m$.
    c) When is $I + J = \mathbb{Z}$?
*sol*.
a) $\displaystyle{I\cap J=(\text{lcm}(n,m))}$
b) $\displaystyle{I+J=(\text{gcd}(n,m))}$
c) $\displaystyle{I+J=\mathbb{Z}}$ when $\displaystyle{\text{gcd}(n,m)=1}$, i.e., $\displaystyle{m}$ coprimes to $\displaystyle{n}$
## Part 3: Field Theory

6.  **[Splitting Fields]**
    Let $f(x) = x^3 - 2 \in \mathbb{Q}[x]$.
    a) What is the splitting field $K$ of $f(x)$ over $\mathbb{Q}$?
    b) What is the degree $[K : \mathbb{Q}]$? (Note: It is NOT 3).
*sol*.
a) The splitting field is $K = \mathbb{Q}(\sqrt[3]{2}, \omega)$, where $\omega = e^{2\pi i/3}$.
   Roots are $\sqrt[3]{2}, \sqrt[3]{2}\omega, \sqrt[3]{2}\omega^2$.
   Since $f(x)$ is irreducible over $\mathbb{Q}$ (Eisenstein $p=2$), $[\mathbb{Q}(\sqrt[3]{2}):\mathbb{Q}]=3$.
   Since $\omega \notin \mathbb{Q}(\sqrt[3]{2}) \subset \mathbb{R}$, we need degree 2 extension for $\omega$.
   Total degree $[K:\mathbb{Q}] = 3 \times 2 = 6$.
b) Degree is $6$.

7.  **[Finite Fields]**
    Construct a field with exactly 8 elements.
    (Hint: Start with the prime subfield $\mathbb{Z}_2$ and find an irreducible polynomial of degree 3).
*sol*.
The field is $\mathbb{F}_{2^3}$. We need an irreducible polynomial of degree 3 over $\mathbb{Z}_2$.
Try $p(x) = x^3 + x + 1$.
Check roots in $\mathbb{Z}_2$: $p(0)=1, p(1)=1+1+1=1$. No roots, so irreducible (for degree 3).
The field is $\mathbb{Z}_2[x] / (x^3 + x + 1)$.
(Not $\mathbb{Z}_2[\omega]$ because $\omega$ is usually a root of unity over $\mathbb{C}$, here we need algebraic extension of finite field).

---

# Note Answer Key (Self-Check 2)
## Part 1
1. **[True/False]**
   a) **True**. $|G|=15=3 \cdot 5$. $3 \nmid (5-1)$. Cyclic.
   b) **False**. $S_4 / V_4 \cong S_3$, but $S_4$ has no subgroup isomorphic to $S_3$? WAIT.
      Actually, $S_4$ DOES have subgroups isomorphic to $S_3$ (stabilizer of a point).
      Better Counter-example: Consider Quaternion Group $Q_8$.
      $Z(Q_8) = \{1, -1\}$. Quotient $Q_8 / \{1, -1\} \cong V_4$ (Klein-4).
      But $Q_8$ has no subgroup isomorphic to $V_4$ (it has only one element of order 2). **Correct**.
   c) **True**. Center is non-trivial ($p$-group). If $|Z|=p^2$, quotient is $p$ (cyclic) $\implies G$ abelian $\implies G=Z$. False. So $|Z|=p$.

2.  **[Order 56]**
   a) $n_7 | 8 \implies 1, 8$. $n_7 \equiv 1 \pmod 7$. Values: $\{1, 8\}$.
   b) $n_2 | 7 \implies 1, 7$. $n_2 \equiv 1 \pmod 2$. Values: $\{1, 7\}$.
   c) Counting argument:
      If $n_7 = 1$, done.
      If $n_7 = 8$, we have $8 \times (7-1) = 48$ elements of order 7.
      Remaining elements: $56 - 48 = 8$.
      Since $n_2 \ge 1$, there is at least one Sylow 2-subgroup of order 8.
      This fills the remaining spots exactly. So there is ONLY ONE Sylow 2-subgroup. Normal.

3.  **[Proofs]**
   a) $G/Z = \langle gZ \rangle \implies \forall x, x = g^k z$. Commute.
   b) Index 2 $\implies$ Left cosets = Right cosets $\implies$ Normal.

## Part 2
4.  **[Gaussian Integers]**
   a) $3 \equiv 3 \pmod 4$. Prime in $\mathbb{Z}$. In $\mathbb{Z}[i]$, it remains prime. **YES**.
      Field is $\mathbb{F}_{3^2} = \mathbb{F}_9$.
   b) $5 \equiv 1 \pmod 4$. $5 = (1+2i)(1-2i)$. Reducible. **NO**.
   c) Norm $N(3) = 9$. Quotient has 9 elements. field $\mathbb{F}_9$.

5.  **[Ideals]**
   a) intersection = lcm.
   b) sum = gcd.
   c) sum = Z iff gcd = 1 (coprime).

## Part 3
(See corrections above for 6 and 7). 