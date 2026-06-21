# Final Review Exam - Foundations of Algebra

*Time Limit: 2 Hours (Self-Paced)*

## Part 1: Group Theory (40%)

1.  **[True/False]** (Provide a brief reason or counter-example)
    a) If $H \le G$ and $K \le G$, then $HK$ is a subgroup of $G$.
    b) Every group of order $p^2$ (where $p$ is prime) is abelian.
    c) $A_4$ has a subgroup of order 6.

*sol*.
a) false. consider $\displaystyle{G=S_{3}}$, $\displaystyle{H=\left\{e,(12)\right\}}$ and $\displaystyle{K=\left\{e,(13)\right\}}$, then $\displaystyle{HK=\left\{e,(12),(13),(132)\right\}}$ is not a subgroup of $\displaystyle{G}$.
b) true. let $\displaystyle{G}$ be a group of order $\displaystyle{p^{2}}$, then by cauchy's theorem, $\displaystyle{G}$ has an element $\displaystyle{a}$ of order $\displaystyle{p}$. consider the subgroup $\displaystyle{H=\left\langle a\right\rangle}$, then $\displaystyle{|H|=p}$ and $\displaystyle{[G:H]=p}$. thus by lagrange's theorem, for any $\displaystyle{g\in G}$, we have $\displaystyle{g^{p}\in H}$. since $\displaystyle{H}$ is cyclic, thus $\displaystyle{H}$ is abelian. then for any $\displaystyle{g_{1},g_{2}\in G}$, we have

$$\begin{align}
g_{1}g_{2} & =g_{2}g_{1} (g_{1}g_{2})^{p} \\
 & =g_{2}g_{1}h \quad (h\in H) \\
 & =h g_{2}g_{1} \\
 & =g_{2}g_{1}(g_{1}g_{2})^{p}
\end{align}$$

thus $\displaystyle{G}$ is abelian.
c) false. the order of $\displaystyle{A_{4}}$ is $\displaystyle{\frac{4!}{2}=12=2^{2}\times 3}$. by sylow's theorems, the number of sylow 3-subgroups $\displaystyle{n_{3}}$ divides $\displaystyle{4}$ and $\displaystyle{n_{3}\equiv1\mod3}$, thus $\displaystyle{n_{3}=1}$ or $\displaystyle{4}$. if $\displaystyle{n_{3}=1}$, then the unique sylow 3-subgroup is normal in $\displaystyle{A_{4}}$, thus $\displaystyle{A_{4}}$ has a subgroup of order $\displaystyle{6}$. if $\displaystyle{n_{3}=4}$, then there are $\displaystyle{8}$ elements of order $\displaystyle{3}$ in $\displaystyle{A_{4}}$. since there are only $\displaystyle{3}$ elements of order $\displaystyle{2}$ in $\displaystyle{A_{4}}$, thus there is no element of order $\displaystyle{1}$ or $\displaystyle{6}$ in $\displaystyle{A_{4}}$. thus $\displaystyle{A_{4}}$ has no subgroup of order $\displaystyle{6}$. therefore, $\displaystyle{A_{4}}$ may or may not have a subgroup of order $\displaystyle{6}$.

1.  **[Calculation]**
    Find the number of elements of order 5 in a group of order 20. (Hint: Use Sylow Theorems).
*sol*. by Sylow's theorem, the number of Sylow 5-subgroups $\displaystyle{n_{5}}$ divides $\displaystyle{4}$ and $\displaystyle{n_{5}\equiv1\mod5}$, thus $\displaystyle{n_{5}=1}$. then there is a unique Sylow 5-subgroup $\displaystyle{P}$ of order $\displaystyle{5}$ in $\displaystyle{G}$, which is cyclic and has $\displaystyle{4}$ elements of order $\displaystyle{5}$. thus there are exactly $\displaystyle{4}$ elements of order $\displaystyle{5}$ in a group of order $\displaystyle{20}$.

1.  **[Proof - Standard Lemma]**
    Let $G$ be a group of order $96$. Prove that $G$ is not simple.
    (Hint: $96 = 2^5 \cdot 3$. Consider the index of Sylow subgroups or the $n!$ lemma).
*sol*. we first prove a lemma:
let $\displaystyle{G}$ be a finite group, and have $\displaystyle{H}$ be a subgroup of $\displaystyle{G}$ with index $\displaystyle{n}$. if $\displaystyle{|G|}$ does not divide $\displaystyle{n!}$, then $\displaystyle{G}$ is not simple.
*proof*. denote the left cosets of $\displaystyle{H}$ in $\displaystyle{G}$ by $\displaystyle{X=\left\{aH|a\in R\right\}}$. consider the action of $\displaystyle{G}$ on $\displaystyle{X}$ by left multiplication

$$\begin{align}
\phi  &:G\to S_{X}=S_{n} \\
g & \mapsto \phi(g)(aH)=gaH
\end{align}$$

this is a group homomorphism. by fundamental law of homomorphisms, we have

$$\begin{align}
G/\mathrm{Ker}\phi & \cong\phi(G)\leqslant S_{n}
\end{align}$$

thus $\displaystyle{|G|/|\mathrm{Ker}\phi|}$ divides $\displaystyle{n!}$. since $\displaystyle{H}$ is a proper subgroup of $\displaystyle{G}$, we have $\displaystyle{\mathrm{Ker}\phi \subseteq H\neq G}$, then $\displaystyle{\mathrm{Ker}\phi\neq G\implies \mathrm{Ker}\phi=\left\{e\right\}}$, so $\displaystyle{|G|}$ divides $\displaystyle{n!}$, which contradicts the assumption. thus $\displaystyle{G}$ is not simple.

then for $\displaystyle{G}$ of order $\displaystyle{96=2^{5}\times3}$, by Sylow's theorem, we have at least one Sylow 2-subgroup of order $\displaystyle{32}$ and index $\displaystyle{3}$, thus by the lemma above, $\displaystyle{G}$ is not simple.

1.  **[Structure]**
    Classify all groups of order 1225 ($35^2$) up to isomorphism? Or simpler: Classify groups of order $14 = 2 \cdot 7$.
    Let's stick to the syllabus: **Classify all groups of order 33.**
*sol*.
a) groups of order $\displaystyle{35^{2}=5^{2}\times 7^{2}}$. by Sylow's theorem, the number of Sylow 5-subgroups $\displaystyle{n_{5}}$ divides $\displaystyle{49}$ and satisfies $\displaystyle{n_{5}\equiv 1\mod{5}}$, which implies $\displaystyle{n_{5}=1}$. similarly, the number of Sylow $\displaystyle{7}$-subgroups $\displaystyle{n_{7}}$ divides $\displaystyle{25}$ and satisfies $\displaystyle{n_{7}\equiv 1\mod{7}}$, which implies $\displaystyle{n_{7}=1}$. thus both Sylow 5-subgroup and Sylow 7-subgroup are unique and normal in $\displaystyle{G}$. let $\displaystyle{P_{5}}$ and $\displaystyle{P_{7}}$ be the Sylow 5-subgroup and Sylow 7-subgroup of $\displaystyle{G}$ respectively, then we have $\displaystyle{G\cong P_{5}\times P_{7}}$. since both $\displaystyle{P_{5}}$ and $\displaystyle{P_{7}}$ are abelian, thus $\displaystyle{G}$ is abelian. then by the fundamental theorem of finite abelian groups, we have the following possible structures for $\displaystyle{G}$:

$$\begin{align}
G & \cong \mathbb{Z}_{25}\times \mathbb{Z}_{49} \\
G & \cong \mathbb{Z}_{25}\times \mathbb{Z}_{7}\times \mathbb{Z}_{7} \\
G & \cong \mathbb{Z}_{5}\times \mathbb{Z}_{5}\times \mathbb{Z}_{49} \\
G & \cong \mathbb{Z}_{5}\times \mathbb{Z}_{5}\times \mathbb{Z}_{7}\times \mathbb{Z}_{7}
\end{align}$$

b) groups of order $\displaystyle{14=2\times 7}$. by Sylow's theorem, the number of Sylow $\displaystyle{7}$-subgroups $\displaystyle{n_{7}}$ divides $\displaystyle{2}$ and satisfies $\displaystyle{n_{7}\equiv 1\mod{7}}$, which implies $\displaystyle{n_{7}=1}$. let $\displaystyle{P_{7}}$ be the Sylow $\displaystyle{7}$-subgroup of $\displaystyle{G}$, then $\displaystyle{P_{7}}$ is normal in $\displaystyle{G}$. the number of Sylow $\displaystyle{2}$-subgroups $\displaystyle{n_{2}}$ divides $\displaystyle{7}$ and satisfies $\displaystyle{n_{2}\equiv 1\mod{2}}$, which implies $\displaystyle{n_{2}=1}$ or $\displaystyle{7}$. if $\displaystyle{n_{2}=1}$, let $\displaystyle{P_{2}}$ be the Sylow $\displaystyle{2}$-subgroup of $\displaystyle{G}$, then $\displaystyle{P_{2}}$ is also normal in $\displaystyle{G}$. thus we have $\displaystyle{G\cong P_{2}\times P_{7}\cong \mathbb{Z}_{2}\times \mathbb{Z}_{7}\cong \mathbb{Z}_{14}}$. if $\displaystyle{n_{2}=7}$, then we have $G = \langle a, b \mid a^2=1, b^7=1, aba^{-1}=b^6 \rangle$
c) groups of order $\displaystyle{33=3\times 11}$. by Sylow's theorem, the number of Sylow $\displaystyle{11}$-subgroups $\displaystyle{n_{11}=1}$, and the number of Sylow $\displaystyle{3}$-subgroups $\displaystyle{n_{3}=1}$. thus we have $\displaystyle{G\cong P_{3}\times P_{11}\cong \mathbb{Z}_{3}\times \mathbb{Z}_{11}\cong \mathbb{Z}_{33}}$.

## Part 2: Ring Theory (40%)

1.  **[Ideals]**
    In the ring $\mathbb{Z}[x]$, consider the ideals $I = (x)$ and $J = (x, 3)$.
    a) Prove that $I$ is prime but not maximal.
    b) Prove that $J$ is maximal.
    c) Identify the structure of the quotient ring $\mathbb{Z}[x]/J$.
*sol*.
a) consider the quotient ring $\displaystyle{\mathbb{Z}[x] /I\cong \mathbb{Z}}$, which is a integral domain but not a field, thus $\displaystyle{I}$ is a prime ideal but not a maximal ideal.
b) consider the quotient ring $\displaystyle{\mathbb{Z}[x] /J\cong \mathbb{Z}_{3}}$, which is a field, thus $\displaystyle{J}$ is a maximal ideal.
c) we have already point out that $\displaystyle{\mathbb{Z}[x] /J\cong \mathbb{Z}_{3}}$ in part b)

1.  **[Homomorphism]**
    Let $\phi: \mathbb{Z}[x] \to \mathbb{R}$ be the evaluation homomorphism given by $\phi(f(x)) = f(\sqrt{2})$.
    a) Find the kernel of $\phi$.
    b) Is $\ker \phi$ a prime ideal? Is it a maximal ideal?
*sol*.
a) we have

$$\begin{align}
\mathrm{Ker}\phi & =\left\{f(x)\in \mathbb{Z}[x]|\phi(f(x))=f(\sqrt{ 2 })=0\right\} \\
 & =\left\{f(x)\in \mathbb{Z}|x^{2}-2|f(x)\right\} \\
 & =(x^{2}-2)
\end{align}$$

b) since $\displaystyle{\mathbb{Z}[x]/(x^{2}-2)\cong\mathbb{Z}[\sqrt{ 2 }]}$ is an integral domain, thus $\displaystyle{\mathrm{Ker}\phi=(x^{2}-2)}$ is a prime ideal. however, since $\displaystyle{\mathbb{Z}[\sqrt{ 2 }]}$ is not a field, thus $\displaystyle{\mathrm{Ker}\phi=(x^{2}-2)}$ is not a maximal ideal.

1.  **[Factorization]**
    Determine whether the following polynomials are irreducible in $\mathbb{Q}[x]$:
    a) $f(x) = x^4 + 3x + 3$
    b) $g(x) = x^{p-1} + x^{p-2} + \dots + 1$ (where $p$ is prime).
*sol*.
a) by eisenstein's criterion with prime $\displaystyle{3}$, we know that $\displaystyle{f(x)=x^{4}+3x+3}$ is irreducible in $\displaystyle{\mathbb{Q}[x]}$.
b) we have

$$\begin{align}
g(x) & =\frac{x^{p}-1}{x-1}
\end{align}$$

thus if $\displaystyle{g(x)}$ is reducible in $\displaystyle{\mathbb{Q}[x]}$, then $\displaystyle{x^{p}-1}$ is also reducible in $\displaystyle{\mathbb{Q}[x]}$. since $\displaystyle{x^{p}-1}$ has roots $\displaystyle{1,\omega,\omega^{2},\dots,\omega^{p-1}}$, where $\displaystyle{\omega=e^{2\pi i/p}}$, thus the minimal polynomial of $\displaystyle{\omega}$ over $\displaystyle{\mathbb{Q}}$ divides $\displaystyle{x^{p}-1}$. however, the minimal polynomial of $\displaystyle{\omega}$ over $\displaystyle{\mathbb{Q}}$ is the $\displaystyle{p}$-th cyclotomic polynomial $\displaystyle{\Phi_{p}(x)=x^{p-1}+x^{p-2}+\dots+x+1}$, which is exactly $\displaystyle{g(x)}$. thus $\displaystyle{g(x)}$ is irreducible in $\displaystyle{\mathbb{Q}[x]}$.

## Part 3: Field Theory (20%)

1.  **[Degrees]**
    Find the degree of the extension $[\mathbb{Q}(\alpha):\mathbb{Q}]$ and the minimal polynomial over $\mathbb{Q}$ for:
    a) $\alpha = \sqrt{2} + \sqrt{3}$
    b) $\alpha = i$
*sol*.
a) for $\displaystyle{\alpha=\sqrt{ 2 }+\sqrt{ 3 }}$, we have

$$\begin{align}
\alpha ^{4}-10\alpha ^{2}+1 & =0
\end{align}$$

we claim that $\displaystyle{x^{4}-10x^{2}+1}$ is the minimal polynomial of $\displaystyle{\alpha}$ over $\displaystyle{\mathbb{Q}}$. suppose not, then $\displaystyle{\alpha}$ has a minimal polynomial of degree less than 4, thus it must be of degree 2. let the minimal polynomial be $\displaystyle{x^{2}+bx+c}$, where $\displaystyle{b,c\in\mathbb{Q}}$. since $\displaystyle{\alpha}$ is a root, we have

$$\begin{align}
\alpha^{2}+b\alpha+c & =0 \\
\implies (\sqrt{2}+\sqrt{3})^{2}+b(\sqrt{2}+\sqrt{3})+c & =0 \\
\implies (5+c)+b\sqrt{2}+b\sqrt{3}+2\sqrt{6} & =0
\end{align}$$

and it is impossible to make the above equation hold for any $\displaystyle{b,c\in\mathbb{Q}}$. thus the minimal polynomial of $\displaystyle{\alpha}$ over $\displaystyle{\mathbb{Q}}$ is $\displaystyle{x^{4}-10x^{2}+1}$, and the degree of the extension $\displaystyle{[\mathbb{Q}(\alpha):\mathbb{Q}]}$ is 4.
b) for $\displaystyle{\alpha=i}$, we have

$$\begin{align}
\alpha ^{2}+1 & =0
\end{align}$$

we claim that $\displaystyle{x^{2}+1}$ is the minimal polynomial of $\displaystyle{\alpha}$ over $\displaystyle{\mathbb{Q}}$. suppose not, then $\displaystyle{\alpha}$ has a minimal polynomial of degree less than 2, thus it must be of degree 1. let the minimal polynomial be $\displaystyle{x+b}$, where $\displaystyle{b\in\mathbb{Q}}$. since $\displaystyle{\alpha}$ is a root, we have

$$\begin{align}
\alpha +b & =0
\end{align}$$

and it is impossible to make the above equation hold for any $\displaystyle{b\in\mathbb{Q}}$. thus the minimal polynomial of $\displaystyle{\alpha}$ over $\displaystyle{\mathbb{Q}}$ is $\displaystyle{x^{2}+1}$, and the degree of the extension $\displaystyle{[\mathbb{Q}(\alpha):\mathbb{Q}]}$ is 2.

1.  **[Finite Fields]**
    Construct a field with exactly 9 elements. (Hint: It is an extension of $\mathbb{Z}_3$).
*sol*. consider the field extension $\displaystyle{\mathbb{Z}_{3}[i]}$, where $\displaystyle{i}$ is a root of the polynomial $\displaystyle{x^{2}+1}$ over $\displaystyle{\mathbb{Z}_{3}}$. since $\displaystyle{x^{2}+1}$ is irreducible over $\displaystyle{\mathbb{Z}_{3}}$, thus $\displaystyle{\mathbb{Z}_{3}[i]}$ is a field, and has exactly $\displaystyle{3^{2}=9}$ elements, which are

$$\begin{align}
\mathbb{Z}_{3}[i] & =\left\{a+bi|a,b\in\mathbb{Z}_{3}\right\} \\
 & =\left\{0,1,2,i,1+i,2+i,2i,1+2i,2+2i\right\}
a) consider the quotient ring $\displaystyle{R /I\cong \mathbb{Z}_{3}[i]\cong \mathbb{Z}_{3}[x] /(x^{2}+1)}$. since $\displaystyle{x^{2}+1}$ in $\displaystyle{\mathbb{Z}_{3}[x]}$, so $\displaystyle{x^{2}+1}$ is not irreducible in $\displaystyle{\mathbb{Z}_{3}[x]}$, which implies $\displaystyle{\mathbb{Z}_{3}[i]}$ is not an integral domain, thus $\displaystyle{I}$ is not a prime ideal in $\displaystyle{R}$.
\end{align}$$
