# problem 1

suppose $\displaystyle{(G,\cdot)}$ is a group, and $\displaystyle{H_{1},H_{2}\leqslant G}$. then
1. $\displaystyle{H_{1}\cap H_{2}\leqslant G}$
1. $\displaystyle{H_{1}\cup H_{2}\leqslant G\iff H_{1}\subseteq H_{2}}$ or $\displaystyle{H_{2}\subseteq H_{1}}$

*sol*.
1. $\displaystyle{\forall h_{1},h_{2}\in H_{1}\cap H_{2}}$, which means $\displaystyle{h_{1},h_{2}\in H_{1},h_{1},h_{2}\in H_{2}}$. since $\displaystyle{H_{1},H_{2}\leqslant G}$, we have $\displaystyle{h_{1}h_{2}\in H_{1},h_{1}h_{2}\in H_{2}\implies h_{1}h_{2}\in H_{1}\cap H_{2}}$. so $\displaystyle{H_{1}\cap H_{2}\leqslant G}$
2.
	1. $\displaystyle{\impliedby}$ is obvious.
	1. $\displaystyle{\forall h_{1}\in H_{1}-H_{2},h_{2}\in H_{2}-H_{1}}$, then $\displaystyle{h_{1}h_{2}\not\in H_{1}}$ and $\displaystyle{h_{1}h_{2}\not\in H_{2}\implies h_{1}h_{2}\not\in H_{1}\cup H_{2}}$, which is contradictory to $\displaystyle{H_{1}\cup H_{2}\leqslant G}$. the only way to solve this is that $\displaystyle{H_{1}\subseteq H_{2}}$ or $\displaystyle{H_{2}\subseteq H_{1}}$

# problem 2

suppose $\displaystyle{S}$ is a finite subset of a group $\displaystyle{G}$. prove that if $\displaystyle{\forall a,b\in S,ab\in S}$, then $\displaystyle{S\leqslant G}$.

*sol*. $\displaystyle{\forall a\in S}$, consider subgroup of $\displaystyle{G}$: $\displaystyle{\braket{ a }=\left\{a^{n}|n\in \mathbb{Z}\right\}}$. since $\displaystyle{\forall a,b\in S,ab\in S}$, we have $\displaystyle{\braket{ a }\subseteq S}$, then $\displaystyle{|\braket{ a }|}$ is finite, which means $\displaystyle{\exists m\in \mathbb{N},\text{ s.t. }a^{m}=e\in S}$, and $\displaystyle{a^{m-1}a=e}$. thus $\displaystyle{S}$ is a subgroup of $\displaystyle{G}$.

# problem 3

the order of an element in a finite group is also finite.

*sol*. similar as problem 2. $\displaystyle{\forall a\in G}$ consider the subgroup $\displaystyle{\braket{ a }\subseteq G\implies o(a)}$ is finite.

# problem 4

suppose $\displaystyle{G}$ is a group. prove that $\displaystyle{\forall a,b\in G,o(ab)=o(ba)}$.

*sol*. denote $\displaystyle{o(ab)=n}$. $\displaystyle{(ba)^{n+1}=b(ab)^{n}a=ba\implies(ba)^{n}=e}$
