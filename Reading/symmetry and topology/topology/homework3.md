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
10. then $\displaystyle{c=j(b)=j(i(a))=0}$ by exactness. so $\displaystyle{\gamma}$ is injective.

* if $\displaystyle{\beta,\delta}$ are surjective and $\displaystyle{\varepsilon}$ is injective, show that $\displaystyle{\gamma}$ is surjective
1. consider $\displaystyle{c'\in C'}$
2. since $\displaystyle{\delta}$ is surjective, $\displaystyle{\exists d\in D,\text{ s.t. }\delta(d)=k'(c')}$
3. by commutation and exactness, $\displaystyle{l'(\delta(d))=l'(k'(c'))=0=\varepsilon(l(d))}$
4. since $\displaystyle{\varepsilon}$ is injective, $\displaystyle{l(d)=0\implies d\in \mathrm{Ker}(l)}$
5. by exactness, $\displaystyle{d\in \mathrm{Im}(k)\implies \exists c\in C,\text{ s.t. }k(c)=d}$
6. by commutation $\displaystyle{k'(\gamma(c))=\delta(k(c))=\delta(d)=k'(c')\implies k'(c'-\gamma(c))=0\implies c'-\gamma(c)\in \mathrm{Ker}(k')}$
7. by exactness $\displaystyle{c'-\gamma(c)\in \mathrm{Im}(j')\implies \exists b'\in B',\text{ s.t. }j'(b')=c'-\gamma(c)}$
8. since $\displaystyle{\beta}$ is surjective, $\displaystyle{\exists b\in B,\text{ s.t. }\beta(b)=b'}$
9. by commutation, $\displaystyle{j'(\beta(b))=\gamma(j(b))=j'(b')=c'-\gamma(c)\implies c'=\gamma(c+j(b))}$. so $\displaystyle{\gamma}$ is surjective.

老师我想问一下怎么在协变相空间的框架下做量子化？（或许先考虑标量场或单粒子比较好？）我之前问过张宏宝老师，他说做通常的正则量子化就可以，我觉得不太妥因为如果这样时间演化该怎么体现？