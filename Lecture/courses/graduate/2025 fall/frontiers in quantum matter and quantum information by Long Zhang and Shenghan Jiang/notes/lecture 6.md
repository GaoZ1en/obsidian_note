write down the model

$$\begin{align}
H & =-\sum _{j}Z_{j-1}X_{j}Z_{j+1}
\end{align}$$

and we have two $\displaystyle{\mathbb{Z}_{2}}$ symmetries

$$\begin{align}
g & =\prod_{j}X_{2j} \\
h & =\prod _{j}X_{2j-1}
\end{align}$$

and we have four symmetries of the representative of MPS, which uniquely determine MPS. then consider the action of $\displaystyle{g}$ or $\displaystyle{h}$, and equipped with corresponding edge operator, we get the string order parameter.

the common features are
1.  $\displaystyle{U_{j}(g)U_{j}(h)=U_{j}(h)U_{j}(g)}$ on the physical legs
1. $\displaystyle{W_{j-\frac{1}{2}}(g)W_{j-\frac{1}{2}}(h)=-W_{j-\frac{1}{2}}(h)W_{j-\frac{1}{2}(g)}}$ on the imaginary legs. projective representation
	1. this relation will give all the universal properties of SPT
3.string order parameter

consider open boundary condition... gives bulk dof $\displaystyle{2(N-2)}$ and edge dof $\displaystyle{2\times2}$. in language of quantum information, bulk dofs are called physical bits, edge dofs are called logical bits (which are used to do calculation), $\displaystyle{g}$ and $\displaystyle{h}$ are called stabilizers, and other operators that act on logical bits and commute with stabilizers are called logical operators.

for left edge qubit, we have local operators $\displaystyle{Z_{1},X_{1}Z_{2}}$ denoted as $\displaystyle{\tilde{Z}_{l}}$ and $\displaystyle{\tilde{X}_{l}}$, and similar for right edge qubit $\displaystyle{Z_{2L}, Z_{2L-1}X_{2L}}$ denoted as $\displaystyle{\tilde{Z}_{r},\tilde{X}_{r}}$. the representation of $\displaystyle{\mathbb{Z}_{2}\times \mathbb{Z}_{2}}$ in the ground state space is then

$$\begin{align}
\prod _{j}X_{2j} & =\tilde{Z}_{l}\tilde{X}_{r} \\
\prod _{j}X_{2j-1} & =\tilde{X}_{l}\tilde{Z}_{r}
\end{align}$$

since $\displaystyle{L\to \infty}$ the thermodynamics limit, the left and right are independent from each other, and $\displaystyle{\tilde{Z}_{l/r}}$ and $\displaystyle{\tilde{X}_{l/r}}$ form a projective representation of $\displaystyle{\mathbb{Z}_{2}\times \mathbb{Z}_{2}}$. if we add perturbation like $\displaystyle{-\delta h\sum _{j}X_{j}}$ that preserve the stabilizer, the edge modes are stable under thermodynamics limit. by degenerate perturbation theory or symmetry argument we can show this.

we first introcude AKLT model and discuss entanglement spectrum. AKLT model is a spin-1 chain with Hamiltonian

$$\begin{align}
H & =\sum _{j}\vec{S}_{j}\cdot \vec{S}_{j+1}+\frac{1}{3}(\vec{S}_{j}\cdot \vec{S}_{j+1})^{2} \\
S_{x} & =\frac{1}{\sqrt{ 2 }}\begin{pmatrix}
0 & 1 & 0 \\
1 & 0 & 1 \\
0 & 1 & 0
\end{pmatrix},S_{y}=\frac{1}{\sqrt{ 2 }i}\begin{pmatrix}
0 & 1 & 0 \\
-1 & 0 & 1 \\
0 & -1 & 0
\end{pmatrix},S_{z} =\begin{pmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -1
\end{pmatrix}
\end{align}$$

we can check that

$$\begin{align}
[h_{j,j+1},h_{j+1,j+2}]\neq 0
\end{align}$$

however in the ground state space

$$\begin{align}
[h_{j,j+1},h_{j+1,j+2}]\ket{\psi} =0
\end{align}$$

we call it frustrated-free Hamiltonian. the ground state can be expressed via MPS with symmetry $\displaystyle{U_{\theta,\vec{n}}=\exp\left(i\theta \vec{n}\cdot \vec{S}\right)}$ act on the physical leg, and $\displaystyle{W_{\theta,\vec{n}}=\exp(i\theta \vec{n}\cdot \vec{S}_{b})}$ and $\displaystyle{W^{\dagger}_{\theta,\vec{n}}=\exp\left(-i\theta \vec{n}\cdot \vec{S}_{b}\right)}$ act on the imaginary legs. here we choose $\displaystyle{\vec{S}_{b}=\frac{\vec{\sigma}}{2}}$. and we get a MPS equation, with solution is CG coefficiants.

the representative of the MPS can be written as

$$\begin{align}
\sqrt{ 2 }\ket{1}\ket{\downarrow} \bra{\uparrow} -\ket{0} \ket{\uparrow} \bra{\uparrow} +\ket{0} \ket{\downarrow} \bra{\downarrow} -\sqrt{ 2 }\ket{-1} \ket{\uparrow} \bra{\downarrow}
\end{align}$$

it can be shown that

$$\begin{align}
\frac{1}{2}\left( h_{j,j+1}+\frac{2}{3} \right)\ket{\psi} =(1-P^{2}_{j,j+1})\ket{\psi} =0
\end{align}$$

the Hamiltonian has the following symmetry

$$\begin{align}
\prod _{j}e^{i\pi S_{j}^{\alpha}}
\end{align}$$

again we have

$$\begin{align}
\left[ e^{i\pi S^{x}_{j}},e^{i\pi S^{z}_{j}} \right] & =0 \\
\sigma ^{x}_{j-\frac{1}{2}}\sigma ^{z}_{j-\frac{1}{2}} & =-\sigma ^{z}_{j-\frac{1}{2}}\sigma ^{x}_{j-\frac{1}{2}}
\end{align}$$

and the string order parameter

$$\begin{align}
\braket{ S^{x}_{1}\prod _{1<j<L}e^{i\pi S_{j}^{x}}S_{L}^{x} } \sim C \neq 0, L\to \infty
\end{align}$$

the edge modes are left and right spin 1/2 mode.

entanglement spectrum form a projective representation (mimic edge modes???)

write

$$\begin{align}
\ket{\psi}  & =\sum _{ij}\psi _{ij}\ket{i} _{L}\ket{j} _{R}
\end{align}$$

contract physical legs on the RHS, we get a reduced density matrix of the LHS

$$\begin{align}
\rho _{L} & =\mathrm{Tr}_{R}(\ket{\psi} \bra{\psi} ) \\
 & =\sum _{i,i',j}\psi _{ij}\psi ^{*}_{i'j}\ket{i} \bra{i'} \\
 & =\sum e^{-\lambda _{\alpha}}\ket{\lambda _{\alpha}} \bra{\lambda _{\alpha}}
\end{align}$$

and $\displaystyle{\left\{\lambda _{\alpha}\right\}}$ is called the entanglement spectrum. for AKLT, $\displaystyle{\lambda}$ form a spin 1/2 representation
