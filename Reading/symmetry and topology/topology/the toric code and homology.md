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