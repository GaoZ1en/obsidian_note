# problem 1

prove that group $\displaystyle{G}$ can be factorized into the union of left cosets of subgroup $\displaystyle{A}$, and that any two left cosets of $\displaystyle{A}$ are either identical or disjoint.

*sol*. define a relation $\displaystyle{\sim}$ on $\displaystyle{G}$ that $\displaystyle{g\sim h,g,h\in G\iff g^{-1}h\in A}$. we have $\displaystyle{g\sim g}$ since $\displaystyle{g^{-1}g=e\in A}$; if $\displaystyle{g\sim h\implies h\sim g}$ since $\displaystyle{h^{-1}g=(g^{-1}h)^{-1}\in A}$; if $\displaystyle{f\sim g,g\sim h\implies f\sim h}$ since $\displaystyle{f^{-1}h=(f^{-1}g)(g^{-1}h)\in A}$. so $\displaystyle{\sim}$ is a equivalence relation on $\displaystyle{G}$. the equivalence class of $\displaystyle{g\in G}$ is $\displaystyle{[g]=\{h\in G|g\sim h\}=\{h\in G|g^{-1}h\in A\}=\{ga|a\in A\}=gA}$, which is the left coset of $\displaystyle{A}$ containing $\displaystyle{g}$. thus, $\displaystyle{G}$ can be factorized into the union of left cosets of $\displaystyle{A}$.

# problem 2

suppose $\displaystyle{R}$ is a representative of right coset of subgroup $\displaystyle{A}$ in group $\displaystyle{G}$. prove that $\displaystyle{R^{-1}}$ is a representative of left coset of $\displaystyle{A}$ in $\displaystyle{G}$.

*sol*. since $\displaystyle{R}$ is a representative of right coset of $\displaystyle{A}$ in $\displaystyle{G}$, we have $\displaystyle{G=\bigsqcup_{r\in R}Ar}$. taking inverse on both sides, we get $\displaystyle{G=\bigsqcup_{r\in R}r^{-1}A}$, which means $\displaystyle{R^{-1}}$ is a representative of left coset of $\displaystyle{A}$ in $\displaystyle{G}$.

# problem 3

suppose $\displaystyle{H}$ and $\displaystyle{K}$ are two subgroups of finite group $\displaystyle{G}$. prove that

$$\begin{align}
|HgK| & =|H|[K:g^{-1}Hg\cap K]
\end{align}$$

*sol*.

consider the action of $\displaystyle{H\times K}$ on $\displaystyle{G}$: $\displaystyle{g\mapsto hgk}$. the orbit of this action is $\displaystyle{HgK}$. the stabilizer of $\displaystyle{g}$ is $\displaystyle{\left\{(h,k)|hgk=g,h\in H,k\in K\right\}}$. from $\displaystyle{hgk=g\implies g^{-1}hg=k^{-1}}$. let $\displaystyle{a=g^{-1}hg}$, we have $\displaystyle{a\in g^{-1}Hg}$ and $\displaystyle{a\in K\implies a\in g^{-1}Hg\cap K}$. thus, there is a one-to-one correspondence between the stabilizer of $\displaystyle{g}$ and $\displaystyle{g^{-1}Hg\cap K}$. by the orbit-stabilizer theorem, we have

$$\begin{align}
|HgK| & =|\mathrm{orb}(g)|=\frac{|H\times K|}{|\mathrm{stab}(g)|} \\
 & =\frac{|H||K|}{|g^{-1}Hg\cap K|} \\
 & =|H|[K:g^{-1}Hg\cap K]
\end{align}$$

# problem 4

prove that for a finite group $\displaystyle{G}$ and a proper subgroup $\displaystyle{H}$, the union of all conjugate subgroups of $\displaystyle{H}$ is not equal to $\displaystyle{G}$. whether this conclusion holds for infinite groups?

*sol*.

let $\displaystyle{S=\bigcup _{g\in G}g^{-1}Hg}$ be the union of all conjugate subgroups of $\displaystyle{H}$. the number of conjugate subgroups of $\displaystyle{H}$ is $\displaystyle{[G:N_G(H)]}$, where $\displaystyle{N_G(H)=\{g\in G|g^{-1}Hg=H\}}$ is the normalizer of $\displaystyle{H}$ in $\displaystyle{G}$. for each conjugate subgroup $\displaystyle{g^{-1}Hg}$, its order is $\displaystyle{|H|}$. thus, we have

$$\begin{align}
|S| & \leqslant |H|[G:N_{G}(H)]-([G:N_{G}(H)]-1) \\
 & =\frac{|G||H|}{|N_{G}(H)|}-[G:N_{G}(H)]+1
\end{align}$$

if $\displaystyle{H}$ is a normal subgroup of $\displaystyle{G}$, $\displaystyle{|N_{G}(H)|=|G|}$, then

$$\begin{align}
|S|\leqslant |H|-1+1=|H|<|G|
\end{align}$$

if $\displaystyle{H}$ is not a normal subgroup, then $\displaystyle{[G:N_{G}(H)]>1}$

$$\begin{align}
|S|\leqslant \frac{|G||H|}{|H|}-[G:N_{G}(H)]+1<|G|-1+1=|G|
\end{align}$$

thus, in both cases, we have $\displaystyle{|S|<|G|}$, which means $\displaystyle{S\neq G}$.

for infinite groups, this conclusion does not hold. for example, consider the group $\displaystyle{G=\mathrm{GL}(n,\mathbb{Z})}$ and its subgroup $\displaystyle{H}$ consisting all inversible upper triangular complex matrices with rank $\displaystyle{n}$. by Jordan normal form, any matrix in $\displaystyle{G}$ is conjugate to an upper triangular matrix, thus the union of all conjugate subgroups of $\displaystyle{H}$ is equal to $\displaystyle{G}$.
