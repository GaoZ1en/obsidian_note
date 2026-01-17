# Final Review Exam - Foundations of Algebra (Set 3)
*Time Limit: 2 Hours (Challenge Mode)*

## Part 1: Group Theory

1.  **[Definitions & Examples]**
    a) Define the **Center** $Z(G)$ of a group.
    b) Give an example of a group $G$ such that $G \cong \text{Aut}(G)$. (Hint: $S_3$?).
    c) Give an example of an infinite group where every element has finite order.

2.  **[Class Equation & p-Groups]**
    Let $G$ be a finite $p$-group (i.e., $|G| = p^n$).
    a) Write down the Class Equation for $G$.
    b) Using the Class Equation, prove that the center $Z(G)$ is non-trivial (i.e., $|Z(G)| > 1$).
    c) **[Challenge]** Prove that if $|G| = p^2$, then $G$ is abelian. (You can use the result from (b)).

3.  **[Symmetric Groups]**
    Consider $\sigma = (1 2)(3 4 5) \in S_5$.
    a) What is the order of $\sigma$?
    b) Is $\sigma$ an even or odd permutation?
    c) Calculate $\sigma^{2026}$.

## Part 2: Ring Theory

4.  **[Ring Hierarchy]**
    Let $R$ be a Commutative Ring with unity.
    a) State the definitions of **Euclidean Domain (ED)**, **Principal Ideal Domain (PID)**, and **Unique Factorization Domain (UFD)**.
    b) Which inclusions hold? (e.g., ED $\implies$ PID?)
    c) Give an example of a ring that is a UFD but NOT a PID. (Classic example: $\mathbb{Z}[x]$ or $k[x,y]$).

5.  **[Prime vs Maximal]**
    Let $R = \mathbb{Z}[x]$.
    Consider the ideal $I = (x^2 + 1)$.
    a) Is $I$ a prime ideal in $\mathbb{Z}[x]$?
    b) Is $I$ a maximal ideal in $\mathbb{Z}[x]$?
    (Hint: Consider the quotient ring $\mathbb{Z}[x]/I \cong \mathbb{Z}[i]$).

## Part 3: Field Theory

6.  **[Finite Fields & Degree]**
    Let $K$ be a finite field with $p^n$ elements.
    a) What is the characteristic of $K$?
    b) Prove that the map $\phi: K \to K$ defined by $\phi(x) = x^p$ is a field automorphism (The **Frobenius Automorphism**).
    c) Why must $n$ be the degree of the extension $[K : \mathbb{Z}_p]$?

7.  **[Constructibility (Bonus)]**
    Recall that a number $\alpha$ is constructible by ruler and compass only if $[\mathbb{Q}(\alpha) : \mathbb{Q}]$ is a power of 2.
    a) The polynomial $x^3 - 2$ is irreducible over $\mathbb{Q}$. Can the cube root of 2 be constructed? (i.e., Can you double the cube?)
    b) The splitting field of $x^4-2$ over $\mathbb{Q}$ has degree 8. Is this consistent with constructing $\sqrt[4]{2}$?
