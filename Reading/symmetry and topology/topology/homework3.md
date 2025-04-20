1. consider the following commutative diagram of Abelian groups

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
A \arrow{r}{i} \arrow{d}{\alpha} & B \arrow{r}{j} \arrow{d}{\beta} & C \arrow{r}{k} \arrow{d}{\gamma} & D \arrow{r}{l} \arrow{d}{\delta} & E \arrow{d}{\varepsilon} \\
A' \arrow{r}{i'} & B' \arrow{r}{j'} & C' \arrow{r}{k'} & D' \arrow{r}{l'} & E'
\end{tikzcd}\end{document}
```

the rows are exact sequences. 

* if $\displaystyle{\beta,\delta}$ are injective and $\displaystyle{\alpha}$ is surjective, show that $\displaystyle{\gamma}$ is injective
1. consider $\displaystyle{c\in C, \text{ s.t. }\gamma(c)=0}$
2. by commutation, $\displaystyle{k'(\gamma(c))=\delta(k(c))=0}$
3. since $\displaystyle{\delta}$ is injective, $\displaystyle{k(c)=0\implies c\in \mathrm{Ker}(k)}$
4. by exactness, $\displaystyle{c\in \mathrm{Im}(j)\implies \exists b\in B,\text{ s.t. }j(b)=c}$
5. by commutation $\displaystyle{j'(\beta(b))=\gamma(j(b))=\gamma(c)=0\implies \beta(b)\in \mathrm{Ker}(j')}$
6. by exactness, $\displaystyle{\beta(b)\in \mathrm{Im}(i')\implies \exists a'\in A',\text{ s.t. }i'(a')=\beta(b)}$
7. since $\displaystyle{\alpha}$ is surjective, $\displaystyle{\exists a\in A,\text{ s.t. }\alpha(a)=a'}$
8. by commutation $\displaystyle{\beta(i(a))=i'(\alpha(a))=i'(a')=\beta(b)\implies \beta(b-i(a))=0}$
9. since $\displaystyle{\beta}$ is injective, $\displaystyle{b-i(a)=0}$
10. then $\displaystyle{c=j(b)=j(i(a))=0}$ by exactness

* if $\displaystyle{\beta,\delta}$ are surjective and $\displaystyle{\varepsilon}$ is injective, show that $\displaystyle{\gamma}$ is surjective
1. consider $\displaystyle{c'\in C'}$
2. since $\displaystyle{\delta}$ is surjective, $\displaystyle{\exists d\in D,\text{ s.t. }\delta(d)=k'(c')}$
3. by 

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
A \arrow{r}{i} \arrow{d}{\alpha} & B \arrow{r}{j} \arrow{d}{\beta} & C \arrow{r}{k} \arrow{d}{\gamma} & D \arrow{r}{l} \arrow{d}{\delta} & E \arrow{d}{\varepsilon} \\
A' \arrow{r}{i'} & B' \arrow{r}{j'} & C' \arrow{r}{k'} & D' \arrow{r}{l'} & E'
\end{tikzcd}\end{document}
```
