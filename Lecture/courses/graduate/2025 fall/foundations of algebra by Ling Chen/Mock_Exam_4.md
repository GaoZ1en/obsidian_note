# Final Review Exam - Foundations of Algebra (Set 4)

*Time Limit: 2 Hours (The "Prediction")*

## Part 1: Group Theoretical Fundamentals

1.  **[True/False Speedrun]**
    a) Every subgroup of an abelian group is normal.
    b) The symmetric group $S_n$ is solvable for all $n \ge 1$.
    c) Every group of prime order is simple.
*sol*.
a) true
b) false (not for $n \ge 5$)
c) true

1.  **[The Classic "No Simple Group" Inference]**
    Prove that there is no simple group of order 30.
    (Hint: Analyze $n_3$ and $n_5$. Consider the number of elements).
*sol*. notice that $\displaystyle{30=2\times 3\times 5}$. by Sylow's theorem, the number of Sylow $\displaystyle{5}$-subgroup $\displaystyle{n_{5}}$ satisfies

$$\begin{align}
n_{5}| 6 \\
n_{5}\equiv1\mod{5}
\end{align}$$

thus $\displaystyle{n_{5}=1}$ or $\displaystyle{n_{5}=6}$. similarly, the number of Sylow $\displaystyle{3}$-subgroup $\displaystyle{n_{3}}$ satisfies

$$\begin{align}
n_{3}|10 \\
n_{3}\equiv 1\mod{3}
\end{align}$$

thus $\displaystyle{n_{3}=1,10}$. if $\displaystyle{n_{5}=1}$ or $\displaystyle{n_{3}=1}$, then there exists a normal Sylow group, which means $\displaystyle{G}$ is not simple, so we only need to consider the case $\displaystyle{n_{3}=10}$ and $\displaystyle{n_{5}=6}$. in this case, there are at least $\displaystyle{10\times 2=20}$ elements of order $\displaystyle{3}$ and $\displaystyle{6\times 4=24}$ elements of order $\displaystyle{5}$, which leads to a contradiction since $\displaystyle{20+24>30}$. thus there is no simple group of order $\displaystyle{30}$.

1.  **[Abelian Structure]**
    List all non-isomorphic abelian groups of order $72$ ($72 = 2^3 \cdot 3^2$).
    (You don't need to write the matrices, just the direct product forms like $\mathbb{Z}_n \oplus \dots$).
*sol*. the abelian groups of order $\displaystyle{72=2^{3}\times 3^{2}}$ can be expressed as the direct product of the abelian groups of order $\displaystyle{8}$ and $\displaystyle{9}$. the abelian groups of order $\displaystyle{8}$ are:

$$\begin{align}
&\mathbb{Z}_{8} \\
&\mathbb{Z}_{4}\oplus \mathbb{Z}_{2} \\
&\mathbb{Z}_{2}\oplus \mathbb{Z}_{2}\oplus \mathbb{Z}_{2}
\end{align}$$

and the abelian groups of order $\displaystyle{9}$ are:

$$\begin{align}
&\mathbb{Z}_{9} \\
&\mathbb{Z}_{3}\oplus \mathbb{Z}_{3}
\end{align}$$

thus the non-isomorphic abelian groups of order $\displaystyle{72}$ are:

$$\begin{align}
G_{ij} & = G_{i}\oplus H_{j} \\
G_{i}\in\left\{\mathbb{Z}_{8},\mathbb{Z}_{4}\oplus \mathbb{Z}_{2},\mathbb{Z}_{2}\oplus \mathbb{Z}_{2}\oplus \mathbb{Z}_{2}\right\} \\
H_{j}\in\left\{\mathbb{Z}_{9},\mathbb{Z}_{3}\oplus \mathbb{Z}_{3}\right\}
\end{align}$$

## Part 2: Rings & Factorization

1.  **[Failure of UFD]**
    Consider the ring $R = \mathbb{Z}[\sqrt{-5}] = \{a + b\sqrt{-5} \mid a,b \in \mathbb{Z}\}$.
    a) Calculate the norm $N(\alpha)$ for $\alpha = a + b\sqrt{-5}$.
    b) Show that $6$ can be factored in two essentially different ways in $R$. (Hint: $2 \cdot 3$ vs ...).
    c) Conclude that $R$ is not a Unique Factorization Domain (UFD).
*sol*.
a) the norm $\displaystyle{N(\alpha)}$ for $\displaystyle{\alpha=a+b\sqrt{-5}}$ is defined as $\displaystyle{N(\alpha)=\alpha \overline{\alpha}=a^{2}+5b^{2}}$.
b) $\displaystyle{6=2\times3=(1+\sqrt{ -5 })(1-\sqrt{ -5 })}$
c) since $\displaystyle{2,3,1+\sqrt{ -5 },1-\sqrt{ -5 }}$ are all irreducible elements in $\displaystyle{R}$, and $\displaystyle{6}$ has two essentially different factorizations into irreducible elements, thus $\displaystyle{R}$ is not a UFD.

1.  **[Isomorphism & CRT]**
    Let $R = \mathbb{Q}[x] / (x^2 - 1)$.
    a) Is $R$ an integral domain?
    b) Use the Chinese Remainder Theorem to show that $R \cong \mathbb{Q} \times \mathbb{Q}$.
*sol*.
a) since $\displaystyle{x^{2}-1=(x-1)(x+1)}$, thus $\displaystyle{(x^{2}-1)}$ is not a prime ideal in $\displaystyle{\mathbb{Q}[x]}$, so $\displaystyle{R}$ is not an integral domain.
b) by the Chinese Remainder Theorem, since $\displaystyle{(x-1)}$ and $\displaystyle{(x+1)}$ are coprime ideals in $\displaystyle{\mathbb{Q}[x]}$, we have

$$\begin{align}
R & \cong \mathbb{Q}[x]/(x-1)\times \mathbb{Q}[x]/(x+1) \\
 & \cong \mathbb{Q}\times \mathbb{Q}
\end{align}$$

## Part 3: Field Extensions

1.  **[Tower of Fields]**
    Let $K = \mathbb{Q}(\sqrt{2}, i)$.
    a) Find the degree $[K : \mathbb{Q}]$.
    b) Give a basis for $K$ as a vector space over $\mathbb{Q}$.
*sol*.
a) since $\displaystyle{\mathbb{Q}(\sqrt{2})}$ and $\displaystyle{\mathbb{Q}(i)}$ are both degree $\displaystyle{2}$ extensions over $\displaystyle{\mathbb{Q}}$, and $\displaystyle{i\notin \mathbb{Q}(\sqrt{2})}$, thus by the Tower Law, we have

$$\begin{align}
[K:\mathbb{Q}] & =[K:\mathbb{Q}(\sqrt{2})][\mathbb{Q}(\sqrt{2}):\mathbb{Q}] \\
 & =2\times 2=4
\end{align}$$

b) a basis for $\displaystyle{K}$ as a vector space over $\displaystyle{\mathbb{Q}}$ is

$$\begin{align}
\{ & 1, \sqrt{2}, i, i\sqrt{2} \}
\end{align}$$

1.  **[Finite Field Generators]**
    Consider the field $F = \mathbb{F}_{16}$.
    a) What is the structure of the multiplicative group $F^\times = F \setminus \{0\}$?
    b) How many "primitive elements" (generators of $F^\times$) does $F$ have?
*sol*.
a) the multiplicative group $\displaystyle{F^{\times}=F\backslash \{0\}}$ is a cyclic group of order $\displaystyle{15}$.
b) the number of primitive elements (generators of $\displaystyle{F^{\times}}$) is given by $\displaystyle{\varphi(15)}$, where $\displaystyle{\varphi}$ is the Euler's totient function. since $\displaystyle{15=3\times 5}$, we have
