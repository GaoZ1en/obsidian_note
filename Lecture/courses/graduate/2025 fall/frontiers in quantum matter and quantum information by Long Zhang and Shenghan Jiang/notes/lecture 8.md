the Hamiltonian of the toric code model is

$$\begin{align}
H & =-\sum _{j}A_{j}-\sum _{p}B_{p}
\end{align}$$

where $\displaystyle{A_{j}=\prod _{l\text{ ends on }j}X_{l}}$ and $\displaystyle{B_{p}=\prod _{l\in \partial p}Z_{l}}$ with $\displaystyle{Z_{l}=\pm1, X_{l}=\pm 1}$ and are anticommute $\displaystyle{\implies[A_{j},B_{p}]=0}$. then the ground state $\displaystyle{\ket{\Psi}}$ satisfies

$$\begin{align}
A_{j}\ket{\Psi} =B_{p}\ket{\Psi} =\ket{\Psi} , \forall j,p
\end{align}$$

then the ground state can be written as

$$\begin{align}
\ket{\Psi} & =\prod _{j}(1+A_{j})\ket{0} \\
 & =\sum _{\text{all possible loops}}\ket{\text{(loops)}}
\end{align}$$

loop condensation...

see [[Note/Reading/symmetry and topology/topology/the toric code and homology|the toric code and homology]] for more info. we can see that there are two types of excitation states, which are string excitations but energy is carried by endpoints. we call fractional excitation. and excitation are anyons, which means, if an $\displaystyle{m}$ charge (which live on plaquette) turn around an $\displaystyle{e}$ charge (which live on site), we will got a phase of $\displaystyle{\pi}$. more specifically, consider a $\displaystyle{e}$ charge live on site $\displaystyle{o}$, the excitation state $\displaystyle{\ket{\Psi_{e}}}$ satisfies

$$\begin{align}
A_{o}\ket{\Psi_{e}} & =-\ket{\Psi_{e}}
\end{align}$$

consider a loop $\displaystyle{\mathcal{C}}$ around the site $\displaystyle{o}$ in the counter-clock wise, then

$$\begin{align}
\prod _{j\in \mathcal{C}} B_{j}\ket{\Psi _{e}}  & =-\ket{\Psi_{e}}
\end{align}$$

the bound state of $\displaystyle{e}$ and $\displaystyle{m}$, which is a fermion (because of the braiding, topological spin-1/2...). a metaphor of rubber ribbon. order with such excitation are called tolopogical order.

the ground states are 4-fold degenerate on torus. in general, the ground states are characterized by the first homology group $\displaystyle{H_{1}(M,\mathbb{Z}_{2})}$ of the manifold $\displaystyle{M}$ on which the toric code is defined. the degeneracy is given by $\displaystyle{2^{2g}}$, where $\displaystyle{g}$ is the genus of the surface, and are called logical qubits or code space.

$\displaystyle{S,T}$ operator, $\displaystyle{\mathrm{SL}(2,\mathbb{Z})}$ algebra...

the degeneracy of ground states are robust against any local perturbation. we can show this by degenerate perturbation theory. the splitting of ground states are caused by non-local operators, which are exponentially suppressed with the system size, just as Ising model and some other symmetry breaking model.

if we add perturbation of the following form

$$\begin{align}
H & =H_{TC}-h_{x}\sum _{l}X_{l}-h_{z}\sum _{l}Z_{l}
\end{align}$$

then there will be phase transition at some critical $\displaystyle{h_{x},h_{z}}$. in gauge theory point of view, the toric code model is equivalent to $\displaystyle{\mathbb{Z}_{2}}$ lattice gauge theory. the phase transition is between confined phase or Higgs condensation phase and deconfined phase.

in the language of quantum information, errors correspond to creation of anyons. the robustness of ground state degeneracy against local perturbation corresponds to the ability of the code to correct local errors. the phase transition corresponds to the error threshold of the code, beyond which error correction fails. code length $\displaystyle{L}$, error rate $\displaystyle{p}$, if $\displaystyle{p<p_{c}}$, then we can correct errors with probability approaching 1 as $\displaystyle{L\to \infty}$; if $\displaystyle{p>p_{c}}$, then error correction fails with probability approaching 1 as $\displaystyle{L\to \infty}$. the critical error rate $\displaystyle{p_{c}}$ corresponds to the phase transition point in the toric code model with perturbations.

the shortage of the toric code model is that its efficient is low, since $\displaystyle{N}$ physical qubits only encode $\displaystyle{O(1)}$ logical qubits, and
