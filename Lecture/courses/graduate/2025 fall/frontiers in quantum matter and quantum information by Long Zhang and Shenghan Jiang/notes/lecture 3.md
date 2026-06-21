topological defect can be characterized by the homotopy group of the order parameter space $\displaystyle{\pi _{n}(G/H)}$, where $\displaystyle{G}$ is the symmetry group of the Hamiltonian and $\displaystyle{H}$ is the symmetry group of the ground state, and $\displaystyle{n}$ is the spatial dimension of the defect.

consider a infinitely large Ising model

$$\begin{align}
H & =-J\sum _{i}Z_{i}Z_{i+1}-h\sum _{i}X_{i}
\end{align}$$

where $\displaystyle{h\ll J}$. its low-energy excitation is domain wall. domain wall proliferation???

duality. on the charge side, $\displaystyle{hX_{i}}$ measure the $\displaystyle{\mathbb{Z}_{2}}$ charge on site $\displaystyle{i}$, and $\displaystyle{Z_{i}}$ create and annihilate $\displaystyle{\mathbb{Z}_{2}}$ charge. on the domain wall side, $\displaystyle{Z_{i}Z_{i+1}}$ measure the presence of domain wall between site $\displaystyle{i}$ and $\displaystyle{i+1}$, and $\displaystyle{X_{i}}$ create and annihilate domain wall. so the duality map is given by

$$\begin{align}
Z_{i}Z_{i+1} & \leftrightarrow \tilde{Z}_{i} \\
X_{i} & \leftrightarrow \tilde{X}_{i}\tilde{X}_{i+1}
\end{align}$$

where $\displaystyle{\tilde{Z}_{i}}$ measure the presence of domain wall between site $\displaystyle{i}$ and $\displaystyle{i+1}$, and $\displaystyle{\tilde{X}_{i}}$ create and annihilate domain wall. the dual Hamiltonian is given by

$$\begin{align}
\tilde{H} & =-J\sum _{i}\tilde{Z}_{i}-h\sum _{i}\tilde{X}_{i}\tilde{X}_{i+1}
\end{align}$$

$\displaystyle{(h,J)\leftrightarrow(J,h)}$. the phase transition point is $\displaystyle{h=J}$, where the model is self-dual. this duality is called Kramers-Wannier duality.

1+1d $\displaystyle{\mathbb{Z}_{2}}$ gauge theory. domain wall can be viewed as electric flux line. the Hamiltonian is given by

$$\begin{align}
H & =-J\sum _{i}Z_{i,i+1}-h\sum _{i}X_{i-1,i}X_{i,i+1}
\end{align}$$

where

$$\begin{align}
X_{j,j+1} & = Z_{j}Z_{j+1}=\rho ^{X}_{j}\rho ^{X}_{j+1} \\
Z_{j-1,j}\rho ^{Z}_{j}Z_{j,j+1} & =X_{j}
\end{align}$$

and

$$\begin{align}
\rho ^{Z} & =e^{i\vec{A}\cdot \vec{dx}} \\
\rho ^{X} & =e^{i\vec{E}\cdot \vec{dx}}
\end{align}$$

with

$$\begin{align}
[\vec{A}_{i},\vec{E}_{j}] & =i\delta _{ij}
\end{align}$$

the Hamiltonian can be rewritten as

$$\begin{align}
H & =-J\sum _{j}X_{j,j+1}-h\sum _{j}Z_{j-1,j}\rho ^{Z}_{j}Z_{j,j+1}-\delta h\sum _{j}\rho ^{X}_{j}
\end{align}$$

$\displaystyle{\braket{ Z_{j,j+1} }\neq 0}$, SSB, "Higgs", confinement, ground state degeneracy. $\displaystyle{\braket{ Z_{j,j+1} }=0}$, no SSB, "Coulomb", deconfinement, unique ground state.

in space dimension 2, the Hamiltonian is given by

$$\begin{align}
H & =-h_{Z}\sum _{j}\tilde{Z}_{j}\rho ^{Z}_{j,j+\vec{a}}\tilde{Z}_{j+\vec{a}}-J_{X}\sum _{j}\tilde{X}_{j,j+\vec{a}}-h_{X}\sum _{j}\rho ^{X}_{j,j+\vec{a}}-J_{Z}\sum _{j}\rho ^{Z}_{j}\rho ^{Z}_{j+\vec{x}}\rho ^{Z}_{j+\vec{y}}\rho ^{Z}_{j+\vec{x}+\vec{y}}
\end{align}$$

the Gauss law constraint is given by

$$\begin{align}
\tilde{X}_{j}=\rho ^{X}_{j,j+\vec{x}}\rho ^{X}_{j,j-\vec{x}}\rho ^{X}_{j,j+\vec{y}}\rho ^{X}_{j,j-\vec{y}}
\end{align}$$

by the same identification as in 1d, we remove the gauge redundancy and get

$$\begin{align}
H & =-h_{Z}\sum _{j}Z_{j}-h_{X}\sum _{j}X_{j}-J_{X}\sum _{\text{ site }}\prod X_{j}-J_{Z}\sum _{\text{ plaquette }}\prod Z_{j}
\end{align}$$

where $\displaystyle{\prod X_{j}}$ is the product of $\displaystyle{X_{j}}$ on the four edges of a site, and $\displaystyle{\prod Z_{j}}$ is the product of $\displaystyle{Z_{j}}$ on the four edges of a plaquette. this model is called toric code model proposed by Kitaev.

from different perspective, the physics of Ising model is very abundant...

return to the Ising model. we will use Jordan-Wigner transformation to solve it exactly (p-wave superconductor proposed by Kitaev). define

$$\begin{align}
f_{j} & =\prod ^{j-1}_{l=1}X_{l} \frac{1}{2}(Z_{j}-iY_{j}) \\
\implies X_{j} & =f_{j}f^{\dagger}_{j}-f_{j}^{\dagger}f_{j} \\
Z_{j}Z_{j+1} & =\left( \prod ^{j-1}_{k=1}X_{k} \right) iY_{j}\left( \prod ^{j}_{l=1}X_{l} \right)Z_{j+1} \\
 & =(f_{j}-f^{\dagger}_{j})(f_{j+1}+f^{\dagger}_{j+1}), & j<L \\
Z_{L}Z_{1} & =\left( \prod ^{L}_{k=1}X_{k} \right)\left( \prod ^{L-1}_{j=1}X_{j} \right)(-iY_{L})(f_{1}+f_{1}^{\dagger}) \\
 & =-g(f_{L}-f^{\dagger}_{L})(f_{1}+f_{1}^{\dagger})
\end{align}$$

where $\displaystyle{g=\prod ^{L}_{k=1}X_{k}}$ is the symmetry. the Hamiltonian $\displaystyle{H=-J\sum _{j}Z_{j}Z_{j+1}-h\sum _{j} X_{j}}$ becomes

$$\begin{align}
H & =-h\sum _{j}(f_{j}f^{\dagger}_{j}-f^{\dagger}_{j}f_{j})-J\sum ^{L-1}_{j=1}(f_{j}-f^{\dagger}_{j})(f_{j+1}+f^{\dagger}_{j+1})+gJ(f_{L}-f^{\dagger}_{L})(f_{1}+f^{\dagger}_{1})
\end{align}$$

the locality of fermion is not the same as spin, but in 1d they are very similar except on the boundary. so we have bosonization or fermionization in 1d. we first introduce how to solve superconducter.

$$\begin{align}
F_{j} & =\begin{pmatrix}
f_{j} \\
f_{j}^{\dagger}
\end{pmatrix},  & F_{j}^{\dagger} =\begin{pmatrix}
f_{j}^{\dagger} & f_{j}
\end{pmatrix}
\end{align}$$

then the Hamiltonian

$$\begin{align}
H & =h\sum F_{j}^{\dagger}\tau ^{z}F_{j}+\frac{1}{2}J\sum ^{L-1}_{j=1}(F_{j}^{\dagger}(\tau ^{z}+i\tau ^{y})F_{j+1}+F_{j+1}^{\dagger}(\tau ^{z}-i\tau ^{y})F_{j})+gJ F_{L}^{\dagger}(\tau ^{z}+i\tau ^{y})F_{1}
\end{align}$$

here is a particle-hole symmetry

$$\begin{align}
C & =\tau ^{x}K \\
C^{2} & =1 \\
CHC & =-H
\end{align}$$

where $\displaystyle{K}$ is complex conjugate operator
