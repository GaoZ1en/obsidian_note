some details about lecture 6...

what 2-cochain 2-cocycle??? what's going on here?

the main problem here is that how many SPT phases are there in 1+1d with symmetry group $\displaystyle{G}$. the answer is given by the second group cohomology $\displaystyle{H^{2}(G,U(1))}$. 

why $H^{2}(G,U(1))$?

- setup: 1+1d bosonic, gapped, short-range entangled phases with on-site unitary symmetry $G$ and no intrinsic topological order. boundaries (0+1d edges) can carry projective representations of $G$.

- algebraic classification via group cohomology:
	1) 2-cochain: a function $\omega: G\times G\to U(1)$.
	2) 2-cocycle: a 2-cochain obeying the associativity (cocycle) condition
		 $$
		 \omega(g,h)\,\omega(gh,k)=\omega(h,k)\,\omega(g,hk)\quad \forall g,h,k\in G.
		 $$
	3) coboundary: given a 1-cochain $\alpha:G\to U(1)$, its (trivial) 2-cocycle is
		 $$
		 (\delta\alpha)(g,h)=\frac{\alpha(g)\,\alpha(h)}{\alpha(gh)}.
		 $$
	4) group $H^{2}(G,U(1))$ is 2-cocycles modulo coboundaries: distinct cohomology classes correspond to inequivalent projective multipliers.

- physical meaning (edge/projective rep viewpoint):
	- a gapped SPT bulk with symmetry $G$ can host an edge Hilbert space carrying a projective representation $\hat U(g)$:
		$$
		\hat U(g)\,\hat U(h)=\omega(g,h)\,\hat U(gh),
		$$
		where $\omega$ is a 2-cocycle. Rephasing $\hat U(g)\to \alpha(g)\hat U(g)$ changes $\omega\to \omega\,\delta\alpha$, i.e. the cohomology class $[\omega]$ is invariant. Different $[\omega]\in H^{2}(G,U(1))$ label distinct SPTs that cannot be adiabatically connected without breaking $G$ or closing the gap.

- physical meaning (bulk path-integral viewpoint):
	- the 1+1d bulk topological response can be written as a $G$-twist-dependent phase evaluated on a triangulation; the consistency of gluing and re-triangulation imposes exactly the 2-cocycle condition. Distinct responses differ by coboundaries, hence by $H^{2}(G,U(1))$.

- examples:
	- $G=\mathbb{Z}_n$: $H^{2}(\mathbb{Z}_n,U(1))\cong \mathbb{Z}_n$. Representative cocycles can be taken as
		$$
		\omega(a,b)=\exp\Big(\frac{2\pi i\,p}{n^2}\,a\,(b\, \text{mod }n)\Big),\quad p\in\{0,1,\dots,n-1\}.
		$$
	- $G=\mathbb{Z}_2\times\mathbb{Z}_2$: $H^{2}(G,U(1))\cong \mathbb{Z}_2$. This is the Haldane-type nontrivial SPT for spin chains with $\mathbb{Z}_2\times\mathbb{Z}_2$ symmetry.
	- $G=\mathrm{U}(1)$ (continuous compact Lie): $H^{2}(\mathrm{U}(1),U(1))\cong 0$ (for strictly on-site unitary symmetry without additional structure), so no nontrivial 1+1d bosonic SPT protected solely by on-site $\mathrm{U}(1)$.

- caveats:
	- if $G$ contains antiunitary elements (e.g., time-reversal) or involves spatial symmetries, one must use twisted/group cohomology or crystalline generalizations; the simple $H^{2}(G,U(1))$ statement applies to on-site unitary $G$.
	- fermionic SPTs are not captured by $H^{2}(G,U(1))$; require spin/Pin structures or supercohomology/K-theory frameworks.

in 2+1d, even if there is no symmetry, there can still be nontrivial SPT phases, the so-called **topological order**.

toric code model. somehow a high dimension generalization of domain wall condensation picture in 1+1d.

the Hamiltonian is given by

$$\begin{align}
H & =- \sum _{v}A_{v}-\sum _{p}B_{p}
\end{align}$$

where $\displaystyle{A_{v}=}$
