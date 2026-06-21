# Final Review Exam - Foundations of Algebra (Set 3)

*Time Limit: 2 Hours (Challenge Mode)*

## Part 1: Group Theory

1.  **[Definitions & Examples]**
    a) Define the **Center** $Z(G)$ of a group.
    b) Give an example of a group $G$ such that $G \cong \text{Aut}(G)$. (Hint: $S_3$?).
    c) Give an example of an infinite group where every element has finite order.
*sol*.
a) $\displaystyle{Z(G)=\left\{g\in G|gh=hg, \forall h\in G\right\}}$
b) $\displaystyle{S_{3}\cong \text{Aut}(S_{3})}$
c) $\displaystyle{\mathbb{Z}_{2}^{\infty}}$

1.  **[Class Equation & p-Groups]**
    Let $G$ be a finite $p$-group (i.e., $|G| = p^n$).
    a) Write down the Class Equation for $G$.
    b) Using the Class Equation, prove that the center $Z(G)$ is non-trivial (i.e., $|Z(G)| > 1$).
    c) **[Challenge]** Prove that if $|G| = p^2$, then $G$ is abelian. (You can use the result from (b)).
*sol*.
a) Class Equation: $|G| = |Z(G)| + \sum_{i=1}^{k} [G : C_G(g_i)]$, where $g_i$ are representatives of distinct non-central conjugacy classes.
b) Since $G$ is a $p$-group, $|G| = p^n$. For any non-central element $g_i$, the centralizer $C_G(g_i)$ is a proper subgroup, so its index $[G : C_G(g_i)]$ is divisible by $p$ (and greater than 1).
   The equation becomes: $p^n = |Z(G)| + \sum (\text{multiples of } p)$.
   This implies $|Z(G)|$ must be divisible by $p$. Since the identity $e \in Z(G)$, $|Z(G)| \ge 1$. Thus $|Z(G)|$ is at least $p$, so it is non-trivial.
c) By (b), $|Z(G)| > 1$. So $|Z(G)|$ is $p$ or $p^2$.
   - If $|Z(G)| = p^2$, then $G = Z(G)$, so $G$ is abelian.
   - If $|Z(G)| = p$, then $|G/Z(G)| = p^2/p = p$. A group of prime order is cyclic.
   Lemma: If $G/Z(G)$ is cyclic, then $G$ is abelian.
   Thus, in both cases, $G$ is abelian.

1.  **[Symmetric Groups]**
    Consider $\sigma = (1 2)(3 4 5) \in S_5$.
    a) What is the order of $\sigma$?
    b) Is $\sigma$ an even or odd permutation?
    c) Calculate $\sigma^{2026}$.
*sol*.
a) $\displaystyle{6}$
b) odd
c) $2026 = 6 \times 337 + 4$, so $2026 \equiv 4 \pmod 6$.
   $\sigma^4 = [(1 2)(3 4 5)]^4 = (1 2)^4 (3 4 5)^4 = e \cdot (3 4 5)^1 = (3 4 5)$.
   (Note: Your calculation of $2 \pmod 6$ was incorrect: $2020 \equiv 4$, $2026 \equiv 4$).

## Part 2: Ring Theory

1.  **[Ring Hierarchy]**
    Let $R$ be a Commutative Ring with unity.
    a) State the definitions of **Euclidean Domain (ED)**, **Principal Ideal Domain (PID)**, and **Unique Factorization Domain (UFD)**.
    b) Which inclusions hold? (e.g., ED $\implies$ PID?)
    c) Give an example of a ring that is a UFD but NOT a PID. (Classic example: $\mathbb{Z}[x]$ or $k[x,y]$).
*sol*.
a)
- Euclidean domain: a commutative ring R with unity is called a Euclidean domain if there exists a function $d:R\backslash \{0\}\to \mathbb{N}$ such that for any $a,b\in R$ with $b\neq 0$, there exist $q,r\in R$ such that $a=bq+r$ with either $r=0$ or $d(r)<d(b)$.
- Principal ideal domain: a commutative ring R with unity is called a principal ideal domain if every ideal of R is a principal ideal.
- Unique factorization domain: a commutative ring R with unity is called a unique factorization domain if every non-zero non-unit element of R can be written as a product of irreducible elements, and this factorization is unique up to order and units.
b) ED$\displaystyle{\implies}$ PID $\displaystyle{\implies}$UFD
c) $\displaystyle{\mathbb{Z}[x]}$ is a UFD but not a PID.

1.  **[Prime vs Maximal]**
    Let $R = \mathbb{Z}[x]$.
    Consider the ideal $I = (x^2 + 1)$.
    a) Is $I$ a prime ideal in $\mathbb{Z}[x]$?
    b) Is $I$ a maximal ideal in $\mathbb{Z}[x]$?
    (Hint: Consider the quotient ring $\mathbb{Z}[x]/I \cong \mathbb{Z}[i]$).
*sol*. consider the quotient ring $\displaystyle{\mathbb{Z}[x] /I\cong \mathbb{Z}[i]}$. since $\displaystyle{\mathbb{Z}[i]}$ is an integral domain, then $\displaystyle{I}$ is a prime ideal. however, $\displaystyle{\mathbb{Z}[i]}$ is not a field, so $\displaystyle{I}$ is not a maximal ideal.

## Part 3: Field Theory

1.  **[Finite Fields & Degree]**
    Let $K$ be a finite field with $p^n$ elements.
    a) What is the characteristic of $K$?
    b) Prove that the map $\phi: K \to K$ defined by $\phi(x) = x^p$ is a field automorphism (The **Frobenius Automorphism**).
    c) Why must $n$ be the degree of the extension $[K : \mathbb{Z}_p]$?
*sol*.
a) $\displaystyle{\text{char}K=p}$
b) for any $\displaystyle{a,b\in K}$, we have

$$\begin{align}
\phi(a+b) & =(a+b)^{p}=a^{p}+b^{p} \\
\phi(ab) & =(ab)^{p}=a^{p}b^{p}
\end{align}$$

thus $\displaystyle{\phi}$ is a homomorphism. since $\displaystyle{K}$ is a finite field, then $\displaystyle{\phi}$ is injective, thus $\displaystyle{\phi}$ is a field automorphism.
c) since $\displaystyle{K}$ is a vector space over $\displaystyle{\mathbb{Z}_{p}}$ with dimension $\displaystyle{n}$, then we have $\displaystyle{[K:\mathbb{Z}_{p}]=n}$.

1.  **[Constructibility (Bonus)]**
    Recall that a number $\alpha$ is constructible by ruler and compass only if $[\mathbb{Q}(\alpha) : \mathbb{Q}]$ is a power of 2.
    a) The polynomial $x^3 - 2$ is irreducible over $\mathbb{Q}$. Can the cube root of 2 be constructed? (i.e., Can you double the cube?)
    b) The splitting field of $x^4-2$ over $\mathbb{Q}$ has degree 8. Is this consistent with constructing $\sqrt[4]{2}$?
*sol*.
a) the question is whether $\displaystyle{[\mathbb{Q}(\sqrt[3]{2}):\mathbb{Q}]}$ is a power of 2. since $\displaystyle{x^{3}-2}$ is irreducible over $\displaystyle{\mathbb{Q}}$, then we have $\displaystyle{[\mathbb{Q}(\sqrt[3]{2}):\mathbb{Q}]=3}$, which is not a power of 2. thus the cube root of 2 cannot be constructed.
b) since $\displaystyle{8=2^{3}}$ is a power of 2, then it is consistent with constructing $\displaystyle{\sqrt[4]{2}}$.
