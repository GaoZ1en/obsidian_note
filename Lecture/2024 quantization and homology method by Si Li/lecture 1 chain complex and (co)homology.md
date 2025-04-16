examples of physical models

1. scalar field
2. gauge field
	1. Chern-Simons theory
	2. Yang-Mills theory
3. $\displaystyle{\sigma}$-model
4. gravity
5. ...

each of them has a huge configuration space. so the path integrals are hard to calculate. but in several special cases, the path integral has definite definition.

1. imaginary time quantum mechanics (Wie? measure)
2. asymptotic expansion (perturbative renormalization theory)

the goal of this lecture is to consider some homological nature of the path integral

## chain complex and (co)homology

let $\displaystyle{R}$ be a commutative ring, a chain complex is a sequence of $\displaystyle{R}$-module maps

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots \arrow[r] & C_{n+1} \arrow[r,"\partial _{n+1}"] & C_{n} \arrow[r,"\partial _{n}"] & C_{n-1} \arrow[r,"\partial _{n-1}"] & \dots
\end{tikzcd}\end{document}
```

such that $\displaystyle{\partial _{n}\circ\partial _{n+1}=0}$. where $\displaystyle{R}$ is not specified, we mean chain complex of Abelian group (i.e. $\displaystyle{R=\mathbb{Z}}$). we write $\displaystyle{(C_{\cdot},\partial)}$ for the complex and $\displaystyle{\partial ^{2}=0}$ for $\displaystyle{\partial _{n}\circ\partial _{n+1}=0}$

>[!Lemma]
>$\displaystyle{\mathrm{Im}(\partial _{n+1})\subset \mathrm{Ker}(\partial _{n})}$

