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
H & =-h\sum _{j}\tilde{Z}_{j}\rho ^{Z}_{j}\tilde{Z}_{j+\vec{a}}+
\end{align}$$