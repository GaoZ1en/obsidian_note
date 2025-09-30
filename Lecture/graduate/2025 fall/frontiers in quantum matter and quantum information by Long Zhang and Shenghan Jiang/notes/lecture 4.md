remember that define

$$\begin{align}
f_{j}=\left(\prod _{l<j}X_{l}\right) \frac{1}{2}(Z_{j}-iY_{j})
\end{align}$$

the Hamiltonian

$$\begin{align}
H & =h\sum F_{j}^{\dagger}\tau ^{z}F_{j}+\frac{1}{2}J\sum ^{L-1}_{j=1}(F_{j}^{\dagger}(\tau ^{z}+i\tau ^{y})F_{j+1}+F_{j+1}^{\dagger}(\tau ^{z}-i\tau ^{y})F_{j})+gJ F_{L}^{\dagger}(\tau ^{z}+i\tau ^{y})F_{1}
\end{align}$$

the Fermi parity operator is defined as

$$\begin{align}
\mathcal{F} & =\prod _{j}F_{j} \\
F_{j} & =\begin{pmatrix}
f_{j} \\
f_{j}^{\dagger}
\end{pmatrix}
\end{align}$$

the locality of fermion requires that $\displaystyle{\mathcal{F}=1}$, i.e., there is an even number of fermions, and in the Hamiltonian fermions are created or annihilated in pairs. since $\displaystyle{[\mathcal{F},H]=0}$, the Hamiltonian can be solved in the two subspaces $\displaystyle{\mathcal{F}=\pm 1}$ separately. and in the $\displaystyle{\mathcal{F}=1}$ sector, we have periodic boundary condition $\displaystyle{f_{L+1}=f_{1}}$, while in the $\displaystyle{\mathcal{F}=-1}$ sector, we have anti-periodic boundary condition $\displaystyle{f_{L+1}=-f_{1}}$.

take a Fourier transformation

$$\begin{align}
F_{j} & =\frac{1}{\sqrt{ L }}\sum _{k} e^{ikj}d_{k}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{k} d_{k}^{\dagger}\left[\tau ^{z}(h-J\cos k)+\tau ^{y}J\sin k\right]d_{k}
\end{align}$$

further define

$$\begin{align}
d_{k} & =U\begin{pmatrix}
\alpha _{k} \\
\beta _{k}
\end{pmatrix} \\
U^{\dagger}h(k)U & =E(k)\tau ^{z} \\
E_{k} & =\sqrt{ (h-J\cos k)^{2}+J^{2}\sin ^{2}k }>0
\end{align}$$

then finally

$$\begin{align}
H & =\sum _{k}E_{k}(\alpha _{k}^{\dagger}\alpha _{k}-\beta _{k}^{\dagger}\beta _{k})
\end{align}$$

the spectrum is shown below

![[Attachments/Pasted image 20250930160403.png]]

the ground state is the vacuum of $\displaystyle{\alpha _{k}}$ and fully filled $\displaystyle{\beta _{k}}$ states. and the energy gap closes at $\displaystyle{h=J}$, which is the critical point of phase transition.

![[Attachments/Pasted image 20250930160649.png]]

particle-hole symmetry. notice that

$$\begin{align}
d_{k} & =\begin{pmatrix}
f_{k} \\
f_{-k}^{\dagger}
\end{pmatrix}=\tau ^{x}\begin{pmatrix}
f^{\dagger}_{-k} \\
f_{k}
\end{pmatrix} =\tau ^{x}(d^{\dagger}_{-k})^{T}
\end{align}$$

then

$$\begin{align}
d_{k}^{\dagger}h(k)d_{k} & =d_{-k}\tau ^{x}h(k)\tau ^{x}d_{-k}^{*} \\
 & =-
\end{align}$$