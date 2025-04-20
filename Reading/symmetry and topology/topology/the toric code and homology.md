## toric code model

the Hamiltonian is defined as

$$\tag{1.1}
\begin{align}
H & =-\sum _{j}A_{j}-\sum _{p}B_{p}
\end{align}
$$

where $\displaystyle{A_{j}=\prod _{l\text{ ends on }j}Z_{l}}$ and $\displaystyle{B_{p}=\prod _{l\in \partial p}X_{l}}$ with $\displaystyle{Z_{l}=\pm1, X_{l}=\pm 1}$ and are anticommute $\displaystyle{\implies[A_{j},B_{p}]=0}$

now consider states satify the star condition $\displaystyle{A_{j}=1}$. this means that the subspace of $\displaystyle{\mathcal{H}}$ satisfying the star condition at every site is spanned by closed string states of the form $\displaystyle{\sum _{\left\{C\right\}}\Psi(C)\ket{C}}$, where $\displaystyle{C}$ is a collection of closed loops on the lattice.

because $\displaystyle{\left[A_{j},B_{p}\right]=0}$, $\displaystyle{B_{p}}$ acts within the subspace of closed string states. the action of $\displaystyle{B_{p}}$ is

$$\tag{1.2}
\begin{align}
B_{p}\ket{C}  & =\ket{C+\partial p} 
\end{align}
$$

where the addition is understood mod 2. 

the ground state $\displaystyle{\ket{\Omega}}$ is defined as $\displaystyle{B_{p}\ket{\Omega}=\ket{\Omega}}$, and this is the equivalence relation defining "homology". if the lattice were simply connected, then this would mean that there is a unique ground state

$$\tag{1.3}
\begin{align}
\ket{\Omega _{0}}  & =\sum _{C}\ket{C} =\prod _{p} \frac{1}{2}(1+B_{p})\otimes _{x}\ket{0} _{x}
\end{align}
$$

if the space has non-contractible loops (for example, in the torus), there are inequivalent ground states. if the space has genus $\displaystyle{g}$, there are $\displaystyle{2^{2g}}$ independent ground states. denote $\displaystyle{P=\prod _{p} \frac{1}{2}(1+B_{p})}$. the ground states subspace is spanned by

![[Attachments/Pasted image 20250417093901.png]]

it is notable that the degeneracy is stable to local perturbations of the Hamiltonian. these groundstates are connected by the action of Wilson loops $\displaystyle{W_{C}}$

$$\tag{1.4}
\begin{align}
W_{C}\equiv \prod _{\ell \in C}X_{\ell}
\end{align}
$$

where $\displaystyle{C}$ is a non-contractable curve. Note that $\displaystyle{[W_{C},P]=0}$, we can use $\displaystyle{W_{C}}$ to get other ground states. to see that the remaining state must be independent of $\displaystyle{\ket{\Omega}}$ and to understand the multiplicity better, define the conjugate (magnetic) loop operator ('t Hooft loop) $\displaystyle{V_{\hat{C}}}$ as

$$\tag{1.5}
\begin{align}
V_{\hat{C}} & =\prod _{\ell \bot \hat{C}}Z_{\ell}
\end{align}
$$

where $\displaystyle{\hat{C}}$ is a path which passes in between the lattice points, and $\displaystyle{\ell\bot\hat{C}}$ means $\displaystyle{\ell}$ is a link crossed by this path. we will learn to view $\displaystyle{\hat{C}}$ as a path in the dual lattice.

we have the following relations

$$\tag{1.6}
\begin{align}
V_{\hat{C}}W_{C} & =(-1)^{\#C\cap \hat{C}}W_{C}V_{\hat{C}}
\end{align}
$$

this algebra must be represented on the groundstates (and actually on every energy states). and it has no one-dimensional representations. 

(this means that the ground state degeneracy is at least $\displaystyle{2^{2g}}$. to see that it is exactly $\displaystyle{2^{2g}}$, we can use the fact that the algebra of operators $\displaystyle{W_{C}}$ and $\displaystyle{V_{\hat{C}}}$ has a representation on the homology of the lattice. this means that there are $\displaystyle{2^{2g}}$ independent ground states, and they are all connected by the action of $\displaystyle{W_{C}}$ and $\displaystyle{V_{\hat{C}}}$.)

consider a perturbation of the toric code Hamiltonian

$$\tag{1.7}
\begin{align}
H' & =H-g\sum _{\ell}X_{\ell}-h\sum _{\ell}Z_{\ell}
\end{align}
$$

at finite $\displaystyle{g,h}$, there is tunneling between the topologically degenerate groundstates, since in that case

$$\tag{1.8}
\begin{align}
\left[ H,\sum _{\ell \in C} X_{\ell}\right],\left[ H,\sum _{\ell \in\hat{C}}Z_{\ell} \right]\neq0
\end{align}
$$

this means

$$\tag{1.9}
\begin{align}
\braket{ \Omega _{0}|H|\Omega _{1} } \equiv \Gamma\neq 0
\end{align}
$$

which will lead to a splitting of the topological degeneracy. the amplitude $\displaystyle{\Gamma}$ goes like

$$\tag{1.10}
\begin{align}
\Gamma \sim e^{-L|\log g/4|}
\end{align}
$$

is extremely small in the thermodynamic limit ($\displaystyle{L\gg1}$). 

### spontaneous breaking of 1-form symmetries, Landau paradigm beyond Landau paradigm :)

topological order is spontaneous breaking of discrete higher-form symmetries, just as in the case of Landau paradigm. 

string condensation. notice that the phase with topological order involves the condensation of the electric flux strings, in the sense that the operator $\displaystyle{W_{C}}$ for contractable loops which create these strings have a nonzero ground state expactation

$$\tag{1.11}
\begin{align}
\braket{ \Omega|W_{C}|\Omega } \overset{g=\infty}{=} 1
\end{align}
$$

this is the order parameter for the 1-form symmetry breaking. 

### gauge theory notation

### excitations

there are two kinds of particle excitations in the $\displaystyle{2\mathrm{d}}$ toric code: violations of $\displaystyle{A_{s}=1}$ and violations of $\displaystyle{B_{p}=1}$. notice that the former kinds of defects would be strictly forbidden in "pure gauge theory" (Gauss law constraint). So pure gauge theory is the limit where the coefficient of $\displaystyle{A_{s}}$ goes to $\displaystyle{\infty}$.

notice that it is not possible to creat a single excitation from the ground state. instead, the excitations are created by the endpoints of open Wilson lines. again there are two kinds

$$\tag{1.12}
\begin{align}
W_{C}=\prod _{\ell \in C}X_{\ell}, V_{\hat{C}}=\prod _{\ell \bot\hat{C}}Z_{\ell}
\end{align}
$$

here $\displaystyle{C}$ is a curve in the lattice and $\displaystyle{\hat{C}}$ is a curve in the dual lattice. endpoints of $\displaystyle{W_{C}}$ violates $\displaystyle{A_{s}}$ are are called $\displaystyle{e}$-particles, with $\displaystyle{\Delta H=-g\sum _{\ell}X_{\ell}}$ the kinetic term for them. while endpoints of $\displaystyle{V_{\hat{C}}}$ violates $\displaystyle{B_{p}}$ and are called $\displaystyle{m}$-particles with $\displaystyle{\Delta H=-h\sum _{\ell}Z_{\ell}}$ the kinetic term. 

the $\displaystyle{e}$-particles and $\displaystyle{m}$-particles are both bosons in the sense of the wave function is symmetrized. and they are their own antiparticles (just like photon and magnetic monopole). but the $\displaystyle{e}$-particles and $\displaystyle{m}$-particles are mutual semions, which means that if we put an $\displaystyle{m}$-particle and move an $\displaystyle{e}$ particle around it, the wave function acquires a phase of $\displaystyle{\pi}$. this is because (1.6). from the gauge theory point of view, this is just the Bohm-Aharonov effect of moving an electric charge around a clump of $\displaystyle{\pi}$-flux. this also means that a bound state of $\displaystyle{e}$ an $\displaystyle{m}$ is a fermion. 

the mutual statistics of $\displaystyle{e}$ and $\displaystyle{m}$ implies the topological ground state degeneracy.

### the phase diagram

perturbations $\displaystyle{\Delta H=-\sum _{\ell}(gX_{\ell}+hZ_{\ell})}$ produce a nonzero correlation length. these couplings $\displaystyle{h}$ and $\displaystyle{g}$ are respectively an electric string tension and a hopping amplitude and fugacity for the $\displaystyle{e}$-particles. make these two big and the model is confined or higgsed, respectively. 

![[Attachments/Pasted image 20250417145002.png]]

see Fradkin-Shenker 1979 for more details.
 
 (...)
 
now jump into abstract topology:

## cell complexes and homology

take a $\displaystyle{d}$-dimensional manifold $\displaystyle{X}$ whose topology is interest and chop it up into simply-connected cells. the gluing data is encoded in a boundary map $\displaystyle{\partial}$. let $\displaystyle{\Delta _{k}}$ be the set of $\displaystyle{k}$-cells in the triangulation of $\displaystyle{X}$, and choose an abelian group $\displaystyle{A}$(some rings $\displaystyle{R}$ with unitary). define a vector space

$$\tag{1.13}
\begin{align}
\Omega _{k}\equiv \Omega _{k}(\Delta,A)\equiv \mathrm{span}_{A}\left\{\sigma \in \Delta _{k}\right\}
\end{align}
$$

to be spanned by vectors associated with $\displaystyle{k}$-cells $\displaystyle{\sigma}$, with coefficients in $\displaystyle{A}$, (actually, an $\displaystyle{A}$-module). an element $\displaystyle{C\in \Omega _{k}}$ is called a $\displaystyle{k}$-chain. the boundary map defines a map between $\displaystyle{\Omega _{k}}$ and $\displaystyle{\Omega _{k-1}}$, and has the following core property

$$\tag{1.14}
\begin{align}
\partial _{k-1}\circ\partial _{k} & =0
\end{align}
$$

we write $\displaystyle{\partial ^{2}=0}$ for simplicity. then $\displaystyle{(\Omega _{*},\partial)}$ forms a chain complex of the form

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\Omega _{0}\arrow{r}{\partial _{0}} & \Omega _{1} \arrow{r}{\partial _{1}} & \cdots \arrow{r}{\partial _{d-2}} & \Omega _{d-1} \arrow{r}{\partial _{d-1}} & \Omega _{d}
\end{tikzcd}\end{document}
```

we can define the $\displaystyle{n}$-th homology group of this chain complex

$$\tag{1.15}
\begin{align}
H_{n}(\Delta,A) & \equiv \frac{\mathrm{Ker}(\partial _{n})}{\mathrm{Im}(\partial _{n+1})}
\end{align}
$$

$\displaystyle{H_{n}(\Delta,A)}$ is actually an $\displaystyle{A}$-module. the dimension of $\displaystyle{H_{n}(\Delta,A)}$ is called the $\displaystyle{n}$-th Betti number $\displaystyle{b_{n}}$, and is a topological invariant of the manifold $\displaystyle{X}$. if $\displaystyle{A}$ is not a field, there can be more information called torsion. $\displaystyle{H_{n}(X,A)}$ is also a group.

note that the states in $\displaystyle{\Omega _{1}(X,\mathbb{Z}_{2})}$ label a basis of the Hilbert space of the $\displaystyle{\mathbb{Z}_{2}}$ toric code. and $\displaystyle{H_{1}(X,\mathbb{Z}_{2})}$ labels a basis of ground states.

## $\displaystyle{p}$-form $\displaystyle{\mathbb{Z}_{N}}$ toric code

then we will consider a generalization of the toric code model.

consider putting a spin variable on the $\displaystyle{p}$-cells of $\displaystyle{\Delta}$ (as compared to the 1-cells in the toric code). more generally, let's put an $\displaystyle{N}$-dimensional Hilbert space $\displaystyle{\mathcal{H}_{N}\equiv \mathrm{span}\left\{\ket{n},n=0,\dots,N-1\right\}}$ on each $\displaystyle{p}$-cells, on which act the operators

$$\tag{1.16}
\begin{align}
\mathbf{Z} &=\sum ^{N-1}_{n=0}\ket{n} \bra{n} \omega ^{n},\quad \mathbf{X}\equiv \sum ^{N-1}_{n=0}\ket{n} \bra{n+1} 
\end{align}
$$

where $\displaystyle{\omega\equiv \zeta _{N}}$. $\displaystyle{\mathbf{Z}}$ and $\displaystyle{\mathbf{X}}$ satisfy the Heisenberg algebra $\displaystyle{\mathbf{XZ}=\omega \mathbf{ZX}}$. we have to choose the orientation $\displaystyle{\sigma}$ of each $\displaystyle{p}$-cell. we define $\displaystyle{\mathbf{Z}_{-\sigma}=\mathbf{Z}_{\sigma}^{-1}}$. we need to define the vicinity map $\displaystyle{v}$ (the dual map of $\displaystyle{\partial}$)

$$\tag{1.17}
\begin{align}
v & :\Omega _{p}\to \Omega _{p+1} \\
\sigma & \mapsto v(\sigma)\equiv\left\{\mu \in \Delta _{p+1}|\partial \mu=+\sigma+\dots\right\}
\end{align}
$$

and we have

$$\tag{1.18}
\begin{align}
\braket{ \sigma,v\mu }  & = \braket{ \partial \sigma ,v}
\end{align}
$$

consider the Hamiltonian

$$\tag{1.19}
\begin{align}
H & =-J_{p-1}\sum _{s \in \Delta _{p-1}}A_{s}-J_{p+1}\sum _{\mu \in \Delta _{p+1}}B_{\mu}-\Gamma _{p}\sum _{\sigma \in \Delta _{p}}\mathbb{Z}_{\sigma}+\mathrm{h.c.}
\end{align}
$$

with

$$\tag{1.20}
\begin{align}
A_{s} & \equiv \prod _{\sigma \in v(s)}\mathbf{Z}_{\sigma},\quad B_{\mu} =\prod _{\sigma \in \partial \mu} \mathbf{X}_{\sigma}
\end{align}
$$

one has the following algebra

$$\tag{1.21}
\begin{align}
[A_{s},A_{s'}]=0, [B_{\mu},B_{\mu'}]=0, [A_{s},B_{\mu}]=0, \forall s,s'\in \Delta _{p-1}, \mu, \mu'\in \Delta _{p+1}
\end{align}
$$

for $\displaystyle{\Gamma _{p}=0}$ this Hamiltonian is exactly solvable, since we have

$$\tag{1.22}
\begin{align}
B_{\mu}A_{s} & =\prod _{\sigma'\in \partial \mu}\mathbf{X}_{\sigma'}\prod _{\sigma \in v(s)}\mathbf{Z}_{\sigma}=A_{s}B_{\mu}\prod _{\sigma'\in \partial \mu}\prod _{\sigma \in vs}\omega ^{\braket{ \sigma,\sigma' } }=A_{s}B_{\mu}\omega ^{\braket{ v(s),\partial \mu } }=0
\end{align}
$$

as in the toric code, we require

$$\tag{1.23}
\begin{align}
\sum _{\sigma \in v(s)} k _{\sigma}=0\mod N, \forall s\in \Delta _{p-1}
\end{align}
$$

## examples of chain complex

see another file

## Higgsing, change of coefficients, exact sequences

the problem is that how the two toric code model with gauge group $\displaystyle{A_{1}}$ and $\displaystyle{A_{2}}$, with $\displaystyle{A_{2}\subset A_{1}}$, are related? one way they are related is by Higgsing, and finally we end up with a toric code with gauge group $\displaystyle{A_{1}/A_{2}}$. consider the exact sequence

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
0\arrow{r}& A_{2} \arrow{r}{i} & A_{1} \arrow{r}{\pi} & A_{1}/A_{2} \arrow{r} & 0
\end{tikzcd}\end{document}
```

exact sequence like this is called a group extension. this short sequence produces a corresponding short exact sequence on the chain complexes

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
0\arrow{r} & \Omega _{\cdot}(A_{2})\arrow{r}{i} & \Omega _{\cdot}(A_{1})\arrow{r}{\pi} & \Omega _{\cdot}(A_{1}/A_{2})\arrow{r} & 0
\end{tikzcd}\end{document}
```

as long as $\displaystyle{i}$ and $\displaystyle{\pi}$ (they are called chain maps) commutes with the boundary operator $\displaystyle{\partial}$, any such short sequence on chain complexes produces the following long exact sequence on their homology (this is called snake lemma)

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots \arrow{r} & H_{p+1}(A_{1}/A_{2}) \arrow{r} & H_{p}(A_{2}) \arrow{r} & H_{p}(A_{1}) \arrow{r} & H_{p}(A_{1}/A_{2}) \arrow{r}{\partial _{\star}} & H_{p-1}(A_{2}) \arrow{r} & H_{p-1}(A_{1}) \arrow{r} & H_{p-1}(A_{1}/A_{2}) \arrow{r}{\partial _{\star}} & H_{p-2}(A_{2}) \arrow{r} & \dots
\end{tikzcd}\end{document}
```

the only mystery is the Bockstein $\displaystyle{\partial _{\star}}$. here is the idea. consider the following commuting diagram

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
 & \vdots \arrow{d}{\partial} & \vdots \arrow{d}{\partial} & \vdots \arrow{d}{\partial} & \\
0 \arrow{r} & \Omega _{p+1}(A_{2}) \arrow{r}{i} \arrow{d}{\partial} & \Omega _{p+1}(A_{1}) \arrow{r}{\pi} \arrow{d}{\partial} & \Omega _{p+1}(A_{1}/A_{2}) \arrow{r} \arrow{d}{\partial} & 0 \\
0 \arrow{r} & \Omega _{p}(A_{2}) \arrow{r}{i} \arrow{d}{\partial} & \Omega _{p}(A_{1}) \arrow{r}{\pi} \arrow{d}{\partial} & \Omega _{p}(A_{1}/A_{2}) \arrow{r} \arrow{d}{\partial} & 0 \\
0 \arrow{r} & \Omega _{p-1}(A_{2}) \arrow{r}{i} \arrow{d}{\partial} & \Omega _{p-1}(A_{1}) \arrow{r}{\pi} \arrow{d}{\partial} & \Omega _{p-1}(A_{1}/A_{2}) \arrow{r} \arrow{d}{\partial} & 0 \\
& \vdots & \vdots & \vdots &
\end{tikzcd}\end{document}
```

the technique here is called the diagram chase.

1. start with an element $\displaystyle{c\in \mathrm{Ker}\partial \subset \Omega _{p}(A_{1}/A_{2})}$. by exactness we have $\displaystyle{c=\pi(b), b\in \Omega _{p}(A_{1})}$.
2. consider $\displaystyle{\partial b\in \Omega _{p-1}(A_{1})}$. by commutation we have $\displaystyle{\pi(\partial b)=\partial(\pi (b))=\partial c=0\implies \partial b\in \mathrm{Ker}(\pi :\Omega _{p-1}(A_{1})\to \Omega _{p-1}(A_{1}/A_{2}))}$
3. by exactness, $\displaystyle{\partial b\in \mathrm{Im}(i:\Omega _{p-1}(A_{2})\to \Omega _{p-1}(A_{1}))\implies \partial b=i(c),a\in \Omega _{p-1}(A_{2})}$
4. finally $\displaystyle{i(\partial (a))=\partial(i(a))=\partial ^{2}(b)=0\implies \partial a=0\implies a\in \mathrm{Ker}\partial \subset \Omega _{p-1}(A_{2})}$, define $\displaystyle{\partial _{\star}c=a}$

---
in this part we will prove some important theorems via diagram chasing

Five Lemma: consider the following commutative diagram with exact rows:

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
A \arrow{r}{f} \arrow{d}{\alpha} & B \arrow{r}{g} \arrow{d}{\beta} & C \arrow{r}{h} \arrow{d}{\gamma} & D \arrow{r}{k} \arrow{d}{\delta} & E \arrow{d}{\varepsilon}\\
A' \arrow{r}{f'} & B' \arrow{r}{g'} & C' \arrow{r}{h'} & D' \arrow{r}{k'} & E'
\end{tikzcd}\end{document}
```

if $\displaystyle{\beta,\delta}$ are isomorphisms, $\displaystyle{\alpha}$ is surjective and $\displaystyle{\varepsilon}$ is injective, then $\displaystyle{\gamma}$ is also an isomorphism.

* surjectivity
1. consider $\displaystyle{c'\in C'}$.
2. since $\displaystyle{\delta}$ is surjective, $\displaystyle{\exists d\in D \text{ s.t. }\delta(d)=h'(c')}$
3. by commutation, $\displaystyle{k'(\delta(d))=\varepsilon(k(d))}$
4. by exactness, $\displaystyle{\mathrm{Im}h'=\mathrm{Ker}k'\implies k'(h'(c'))=k'(\delta(d))=\varepsilon(k(d))=0}$
5. since $\displaystyle{\varepsilon}$ is injective, $\displaystyle{k(d)=0\implies d\in \mathrm{Ker}(k)}$
6. by exactness, $\displaystyle{d\in \mathrm{Im}(h)}$, that is $\displaystyle{\exists c\in C, \text{ s.t. }h(c)=d}$
7. by commutation, $\displaystyle{h'(\gamma(c))=\delta(h(c))=\delta(d)=h'(c')\implies h'(\gamma(c)-c')=0}\implies \gamma(c)-c'\in \mathrm{Ker}h'$
8. by exactness, $\displaystyle{\gamma(c)-c'\in \mathrm{Im}g'\implies \exists b'\in B',\text{ s.t. }g'(b')=\gamma(c)-c'}$
9. since $\displaystyle{\beta}$ is surjective, $\displaystyle{\exists b\in B,\text{ s.t. }\beta(b)=b'}$
10. by commutation $\displaystyle{g'(\beta(b))=\gamma(g(b))=g'(b')=\gamma(c)-c'}$
11. since $\displaystyle{\gamma}$ is homomorphism, $\displaystyle{\gamma(c-g(b))=c'}$, thus $\displaystyle{\gamma}$ is surjective.
* injective
1. consider $\displaystyle{c\in C,\text{ s.t. }\gamma(c)=0}$ (we only need to verify that $\displaystyle{c=0}$)
2. $\displaystyle{h'(\gamma(c))=0\implies \gamma(c)\in \mathrm{Ker}(h')}$
3. by commutation, $\displaystyle{\delta(h(c))=h'(\gamma(c))=0}$
4. since $\displaystyle{\delta}$ is injective, $\displaystyle{h(c)=0\implies c\in \mathrm{Ker}(h)}$
5. by exactness $\displaystyle{c\in \mathrm{Im}(g)\implies \exists b\in B,\text{ s.t. }g(b)=c}$
6. by commutation, $\displaystyle{\gamma(g(b))=\gamma(c)=0=g'(\beta(b))\implies \beta(b)\in \mathrm{Ker}(g')}$
7. by exactness $\displaystyle{\beta(b)\in \mathrm{Im}(f')\implies \exists a'\in A',f'(a')=\beta(b)}$
8. since $\displaystyle{\alpha}$ is surjective, $\displaystyle{\exists a\in A, \text{ s.t. }\alpha(a)=a'}$
9. by commutation, $\displaystyle{f'(\alpha(a))=\beta(f(a))=f'(a')=\beta(b)=> \beta(b-f(a))=0}$
10. since $\displaystyle{\beta}$ is injective $\displaystyle{b=f(a)}$
11. then $\displaystyle{c=g(b)=g(f(a))=0}$ by exactness.

Short Five Lemma: consider the following commutative diagram of short exact sequences:

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
0 \arrow{r} & A \arrow{r}{f} \arrow{d}{\alpha} & B \arrow{r}{g} \arrow{d}{\beta} & C \arrow{r} \arrow{d}{\gamma} & 0 \\
0 \arrow{r} & A' \arrow{r}{f'} & B' \arrow{r}{g'} & C' \arrow{r} & 0
\end{tikzcd}\end{document}
```

if $\displaystyle{\alpha,\gamma}$ are isomorphisms, then $\displaystyle{\beta}$ is also an isomorphism. this is a direct corollary of the Five Lemma

Weak Four Lemma

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
A \arrow{r}{f} \arrow{d}{\alpha} & B \arrow{r}{g} \arrow{d}{\beta} & C \arrow{r}{h} \arrow{d}{\gamma} & D \arrow{d}{\delta} \\
A' \arrow{r}{f'} & B' \arrow{r}{g'} & C' \arrow{r}{h'} & D'
\end{tikzcd}\end{document}
```

each line is exact. if $\displaystyle{\alpha}$ is surjective and $\displaystyle{\beta,\delta}$ are injective, then $\displaystyle{\gamma}$ is injective. dually, if $\displaystyle{\delta}$ is injective and $\displaystyle{\alpha,\gamma}$ are surjective, then $\displaystyle{\beta}$ is surjective.

1. consider $\displaystyle{c\in C, \text{ s.t. }\gamma(c)=0}$
2. $\displaystyle{h'(\gamma(c))=0\implies \gamma(c)\in \mathrm{Ker}(h')}$
3. by commutation, $\displaystyle{\delta(h(c))=h'(\gamma(c))=0}$
4. since $\displaystyle{\delta}$ is injective, $\displaystyle{h(c)=0\implies c\in \mathrm{Ker}(h)}$
5. by exactness, $\displaystyle{c\in \mathrm{Im}(g)\implies \exists b\in B,\text{ s.t. }g(b)=c}$
6. by commutation, $\displaystyle{g'(\beta(b))=\gamma(g(b))=\gamma(c)=0\implies \beta(b)\in \mathrm{Ker}(g')}$
7. by exactness $\displaystyle{\beta(b)\in \mathrm{Im}(g')\implies \exists a'\in A', \text{ s.t. }f'(a')=\beta(b)}$
8. since $\displaystyle{\alpha}$ is surjective, $\displaystyle{\exists a\in A, \text{ s.t. }\alpha(a)=a'}$
9. by commutation, $\displaystyle{\beta(f(a))=f'(\alpha(a))=f'(a')=\beta(b)\implies \beta(b-f(a))=0}$
10. since $\displaystyle{\beta}$ is injective, $\displaystyle{b-f(a)=0}$
11. then $\displaystyle{c=g(b)=g(f(a))=0}$ by exactness

sharp 3x3 Lemma

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
& 0 \arrow{d} & 0 \arrow{d} & 0 \arrow{d} \\
0 \arrow{r} & A \arrow{r}{f} \arrow{d}{\alpha} & B \arrow{r}{g} \arrow{d}{\beta} & C \arrow{d}{\gamma} \\
0 \arrow{r} & A' \arrow{r}{f'} \arrow{d}{\alpha'} & B' \arrow{r}{g'} \arrow{d}{\beta'} & C' \arrow{d}{\gamma'} \\
0 \arrow{r} & A'' \arrow{r}{f''} & B'' \arrow{r}{g''} & C \\
\end{tikzcd}\end{document}
```

every columns are exact and the lower two lines are exact, then the first line is also exact

and salamander lemma provides a universal description of above theorems.

---

back to our 