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

note that the states in $\displaystyle{\Omega _{1}(X,\mathbb{Z}_{2})}$ label a basis of the Hilbert space of the $\displaystyle{\mathbb{Z}_{2}}$ toric code.