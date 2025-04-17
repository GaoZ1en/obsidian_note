1. ground state degeneracy and 1-form symmetry algebra.
	1. suppose we have a system with Hamiltonian $\displaystyle{H}$ with string operators $\displaystyle{W_{C}}$ and $\displaystyle{V_{\hat{C}}}$ supported on closed curves, and commuting with $\displaystyle{H}$, and satisfying $\displaystyle{W^{N}=V^{N}=1}$. suppose $\displaystyle{[W_{C},W_{C'}]=0,[V_{\hat{C}},V_{\hat{C}'}]}$ for all curves but $$\begin{align}W_{C}V_{\hat{C}} =\omega ^{\#(C\cap \hat{C})}V_{\hat{C}}W_{C}\end{align}$$where $\displaystyle{\omega=\zeta _{N}\equiv \exp\left( \frac{2\pi i}{N} \right)}$ and $\displaystyle{\#(C\cap \hat{C})}$ is the number of intersection points of the curves. how many groundstates does such a system have on the two-torus (that is, with periodic boundary conditions on both spatial directions)? this is what happens in the $\displaystyle{\mathbb{Z}_{N}}$ toric code.
	2. now suppose in a different system we have just one set of string operators $\displaystyle{W_{C}}$ satisfying $\displaystyle{W_{C}W_{C'}=\omega ^{\#(C\cap C')}}W_{C'}W_{C}$, with the same definitions as above. how many groundstates does this system have on the two-torus? this is what happens in the Laughlin fractional quantum Hall state with filling fraction $\displaystyle{\frac{1}{N}}$
	3. redo the previous problems for a genus $\displaystyle{g}$ Riemann surface. in all parts of this problem you should make the assumption that the string operators are deformable: $\displaystyle{W_{C}}$ acts in the same way as $\displaystyle{W_{C+\partial p}}$ on ground states.

* for non-contractible loop $\displaystyle{C_{\hat{x},\hat{y}}}$, we have two sets of operators $\displaystyle{W_{\hat{x},\hat{y}}}$ and $\displaystyle{V_{\hat{x},\hat{y}}}$ with the following algebra

$$\tag{1.1}
\begin{align}
W_{\hat{x}}V_{\hat{y}}=\omega V_{\hat{y}}W_{\hat{x}} \\
W_{\hat{y}}V_{\hat{x}}=\omega ^{-1} V_{\hat{x}}W_{\hat{y}}
\end{align}
$$

since $\displaystyle{W^{N}_{\hat{x},\hat{y}}=V^{N}_{\hat{x},\hat{y}}=1}$, their eigenvalues are $\displaystyle{\zeta ^{k}_{N}}$. the common eigenstate of $\displaystyle{W_{\hat{x}}}$ and $\displaystyle{W_{\hat{y}}}$ are denoted by $\displaystyle{\ket{k,l}}$.

$$\tag{1.2}
\begin{align}
W_{\hat{x}}V_{\hat{y}}\ket{k,l} & =\omega V_{\hat{y}}W_{\hat{x}}\ket{k,l}  \\
 & =\omega ^{k+1}V_{\hat{y}}\ket{k,l}  \\
\implies V_{\hat{y}}\ket{k,l}  & = \ket{k+1,l}  \\
W_{\hat{y}}V_{\hat{x}}\ket{k,l}  & =\omega ^{-1}V_{\hat{x}}W_{\hat{y}}\ket{k,l}  \\
 & =\omega ^{l-1}V_{\hat{x}}\ket{k,l}  \\
\implies V_{\hat{x}}\ket{k,l}  & = \ket{k,l-1} 
\end{align}
$$

then we can write

$$\tag{1.3}
\begin{align}
\ket{k,-l} =V^{k}_{\hat{x}}V_{\hat{y}}^{l}\ket{0,0} 
\end{align}
$$



1. anyons in the toric code
	2. show that when acting on a toric code ground state the operator $$\begin{align}W_{C}=\prod _{\ell \in C}X_{\ell}\end{align}$$ creates a state which violates only the star operators at the sites in the boundary of $\displaystyle{C,\partial C}$, a pair of $\displaystyle{e}$-particles
	3. show that when acting on a toric code ground state the operator $$\begin{align}V_{\hat{C}} & =\prod _{\ell \bot\hat{C}}Z_{\ell}\end{align}$$creates a state which violates only the plaquette operators in the boundary of $\displaystyle{\hat{C}}$, $\displaystyle{\partial \hat{C}}$
	4. show that a bound state of an $\displaystyle{e}$ partivle and an $\displaystyle{m}$ particle in the $\displaystyle{2\mathrm{d}}$ toric code must be a fermion.

