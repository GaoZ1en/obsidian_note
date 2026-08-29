## Case I: Abelian Algebra to Heisenberg

Take $\displaystyle{V=\mathbb{R}^{2n}}$ to be the Abelian Lie algebra. Since the Chevalley-Eilenberg differential identically zero, so we have

$$\begin{align}
H^{2}(V,\mathbb{R}) & =\Lambda ^{2}V^{*}
\end{align}$$

therefore any 2-cocycle is a skew-symmetric bilinear form $\displaystyle{\omega}$ on $V$, and there is no 2-coboundary. For a nondegenerate $\displaystyle{\omega}$, we have

$$\begin{align}
[v,w]_{\hat{V}} & =\omega(v,w)Z
\end{align}$$

cannot understand for this moment

## Case II: Witt Algebra to Virasoro Algebra

The Witt algebra is given by

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{m+n}
\end{align}$$

we write its central extension as

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{m+n}+K_{m,n}Z
\end{align}$$

by antisymmetry we have

$$\begin{align}
K_{m,n} & =-K_{n,m}
\end{align}$$

by Jacobi identity we have

$$\begin{align}
(m-n) K_{m+n,p}+(n-p)K_{n+p,m}+(p-m)K_{p+m,n} & =0
\end{align}$$

known that

$$\begin{align}
K_{0,0}=-K_{0,0}=0
\end{align}$$

let $\displaystyle{L_{m}\to L_{m}+a_{m}Z}$, then

$$\begin{align}
K_{m,n}\to K_{m,n}'=K_{m,n}-(m-n)a_{m+n}
\end{align}$$

so for $\displaystyle{m\neq 0}$, take

$$\begin{align}
a_{m}=\dfrac{K_{m,0}}{m}
\end{align}$$

we get $\displaystyle{K_{m,0}=0}$. Then let $\displaystyle{p=0,m+n\ne 0}$,

$$\begin{align}
nK_{n,m}-mK_{m,n}=(m+n)K_{n,m}=0
\end{align}$$

we obtain

$$\begin{align}
K_{m,n} & =f(m)\delta _{m+n,0}, &f(-m) & =-f(m)
\end{align}$$

take $\displaystyle{p=-(m+n)}$,

$$\begin{align}
(m-n)f(m+n)-(m+2n)f(m)+(2m+n)f(n)=0
\end{align}$$

take the redefinition $\displaystyle{L_{0}\to L_{0}-a_{0}}$, we have $\displaystyle{f(m)\to f(m)-2ma_{0}}$. And we can take $\displaystyle{f(1)=0}$. Then by induction on $m$, we get $f(m)=\dfrac{c}{12}(m^{3}-m)$ for some constant $c$.

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{m+n}+\dfrac{c}{12}(m^{3}-m)\delta _{m+n,0}
\end{align}$$

## Case III: Loop Algebra to Affine Kac-Moody Algebra

Consider the loop algebra $\displaystyle{L\mathfrak{g}=\mathfrak{g}\otimes \mathbb{C}[z,z^{-1}]}$, denote

$$\begin{align}
J^{a}_{m} & =T^{a}\otimes z^{m}
\end{align}$$

the Lie algebra

$$\begin{align}
[J^{a}_{m},J^{b}_{n}] & =f^{ab}_{~~~~c}J^{c}_{m+n}
\end{align}$$

is $\displaystyle{\mathbb{Z}}$-graded, so the central extension

$$\begin{align}
[J^{a}_{m},J^{b}_{n}] & =f^{ab}_{~~~~c}J^{c}_{m+n}+K(J^{a}_{m},J^{b}_{n})
\end{align}$$

must satisfies

$$\begin{align}
K(J^{a}_{m},J^{b}_{n}) & =K^{ab}_{m}\delta _{m+n,0}
\end{align}$$

the antisymmetry requires

$$\begin{align}
K^{ab}_{m}\delta _{m+n,0}+K^{ba}_{n}\delta _{m+n,0}=0\implies K^{ab}_{m}+K^{ba}_{-m}=0
\end{align}$$

Jacobi identity requires

$$\begin{align}
f^{ab}_{~~~~d}K^{dc}_{m+n}+f^{bc}_{~~~~d}K^{da}_{n+p}+f^{ca}_{~~~~d}K^{db}_{p+m} & =0, & m+n+p=0
\end{align}$$

we have the factorize

$$\begin{align}
K^{ab}_{m} & =F(m)\kappa ^{ab}
\end{align}$$

since mode dependence and $\displaystyle{\mathfrak{g}}$-index dependence are different. Plug back into the antisymmetry and Jacobi identity, we get

$$\begin{align}
F(m)\kappa ^{ab}+F(-m)\kappa ^{ba} & =0 \\
f^{ab}_{~~~~d}\kappa ^{dc}F(m+n)+f^{bc}_{~~~~d}\kappa ^{da}F(n+p)+f^{ca}_{~~~~d}\kappa ^{db}F(p+m) & =0, & m+n+p=0
\end{align}$$

factorization gives

$$\begin{align}
\kappa ^{ab}+\kappa ^{ba} & =0 \\
F(M)+F(-m) & =0 \\
f^{ab}_{~~~~d}\kappa ^{dc}+f^{bc}_{~~~~d}\kappa ^{da}+f^{cd}_{~~~~d}\kappa ^{db} & =0 \\
F(m+n)+F(n+p)+F(p+m) & =0
\end{align}$$

yielding $\displaystyle{F(m)=m}$ and $\displaystyle{\kappa ^{ab}}$ is a symmetric invariant bilinear form on $\mathfrak{g}$.

## Case IV: $\displaystyle{\mathrm{Witt}\ltimes L\mathfrak{u}(1)}$, the Twisted Heisenberg-Virasoro

The central-extensioned algebra is

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{n+n}+K^{LL}_{m,n} \\
[L_{m},I_{n}] & =-nI_{m+n}+K^{LI}_{m,n} \\
[I_{m},I_{n}] & =K^{II}_{m,n}
\end{align}$$

as in the case II, we set $\displaystyle{K^{IL}_{m,n}=a(m^{3}-m)\delta _{m+n,0}}$. Then for $\displaystyle{K^{LI}_{m,n}}$ and $\displaystyle{K^{II}_{m,n}}$, antisymmetry and Jacobi identity requires

$$\begin{align}
K^{II}_{m,n}+K^{II}_{n,m} & =0 \\
(m-n)K^{LI}_{m+n,p}+pK^{LI}_{m,n+p}-pK^{LI}_{n,p+m} & =0 \\
-nK^{II}_{m+n,p}+pK^{II}_{p+m,n} & =0
\end{align}$$

we solve out

$$\begin{align}
K^{II}_{m,n} & =cm\delta _{m+n,0} \\
K^{LI}_{m,n} & =f(m)\delta _{m+n,0}
\end{align}$$

$$\begin{align}
(m-n)f(m+n)-(m+n)f(m)+(m+n)f(n)=0
\end{align}$$

take $\displaystyle{n=1}$

$$\begin{align}
(m-1)f(m+1)=(m+1)(f(m)-f(1)) \\
\implies f(m)=b_{2}m^{2}+b_{1}m
\end{align}$$

up to a coboundary we can write

$$\begin{align}
f(m) & =b(m^{2}+m)
\end{align}$$

## Case V: $\displaystyle{\mathfrak{bms}_{3}}$

The central-extensioned algebra is

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{m+n}+K^{LL}_{m,n} \\
[L_{m},M_{n}] & =(m-n)M_{m+n}+K^{LM}_{m,n} \\
[M_{m},M_{n}] & =K^{MM}_{m,n}
\end{align}$$

$\displaystyle{K^{LL}_{m,n}=a(m^{3}-m)\delta _{m+n,0}}$ and $\displaystyle{K^{LM}_{m,n}=b(m^{3}-m)\delta _{m+n,0}}$ are easy to see as case II. Antisymmetry and Jacobi identity gives

$$\begin{align}
K^{MM}_{m,n} =f(m)\delta _{m+n,0},\quad f(-m)=-f(m) \\
(m-n)f(m+n)-(m+n)f(m)+(m+n)f(n) & =0
\end{align}$$

by same procedure as case IV, we have

$$\begin{align}
f(m) & =cm
\end{align}$$

and the $\displaystyle{m}$ term is a coboundary. And the $m$ term is a coboundary, so we can set $f(m)=0$ up to equivalence.
