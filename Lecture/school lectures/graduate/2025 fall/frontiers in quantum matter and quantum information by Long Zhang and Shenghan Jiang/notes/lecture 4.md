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
 & =-d_{-k}^{\dagger}\tau ^{x}h^{T}(k)\tau ^{x}d_{-k}
\end{align}$$

notice

$$\begin{align}
h(-k) & =-\tau ^{x}h^{*}(k)\tau ^{x} \\
 & =-\tau ^{x}\mathcal{K}h(k)\mathcal{K}\tau ^{x}
\end{align}$$

where $\displaystyle{\mathcal{K}}$ is the complex conjugate operator. expand

$$\begin{align}
h(k) & =h_{i}(k)\tau ^{i}
\end{align}$$

and finally we have

$$\begin{align}
\alpha _{k} & =\cos \frac{\theta}{2}f_{k}-i\sin \frac{\theta}{2}f_{k}^{\dagger} \\
\beta _{k} & =\cos \frac{\theta}{2}f_{k}^{\dagger}-i\sin \frac{\theta}{2}f_{k}
\end{align}$$

so $\displaystyle{\alpha _{-k}^{\dagger}=\beta _{k}}$, particle is the antiparticle of hole. I can't follow...

Majorana fermion. define

$$\begin{align}
\gamma_{2j-1} & =f_{j}+f_{j}^{\dagger} \\
\gamma_{2j} & =\frac{f_{j}-f_{j}^{\dagger}}{i}
\end{align}$$

the Hamiltonian can be rewritten as

$$\begin{align}
H & =\sum _{j}-ih \gamma _{2j-1}\gamma _{2j}-iJ\gamma _{2j}\gamma _{2j+1}
\end{align}$$

---
# tensor network state and SPT phase

MPS, PEPS, DMRG, ..., what are these?

Penrose introduced diagrammatic notation for tensors in 1971. a tensor is represented as a shape with legs, each leg represents an index. contracting indices is represented by connecting legs. and in or out arrows represent ket or bra vectors.

for example,

$$\begin{align}
\ket{\psi}  & =\sum _{i_{1}i_{2}i_{3}}\psi _{i_{1}i_{2}i_{3}}\ket{i_{1}} \ket{i_{2}} \ket{i_{3}}  \\
\mathcal{\hat{O}} & =\sum _{ij}\mathcal{O}_{ij}\ket{i} \bra{j}  \\
\mathcal{T} & =\sum _{i_{1}i_{2}ji_{3}}T_{i_{1}i_{2}ji_{3}} \bra{i_{1}} \bra{i_{2}} \ket{j} \bra{i_{3}}  
\end{align}$$

then

$$\begin{align}
\sum T_{i_{1}i_{2}ji_{3}}\psi _{i_{1}i_{2}i_{3}}\mathcal{O}_{ij}\ket{i} 
\end{align}$$

represents the following diagram

![[Attachments/Pasted image 20250930173437.png]]

MPS stands for matrix product state, which is used to represent 1d gapped system. consider $\displaystyle{L}$ qubits. the Hilbert space is $\displaystyle{2^{L}}$ dimensional. a general state is

$$\begin{align}
\ket{\psi} & =\sum\psi_{i_{1}i_{2}\ldots i_{L}}\ket{i_{1}i_{2}\ldots i_{L}}
\end{align}$$

and consider

$$\begin{align}
\hat{A} & =A_{i\alpha \beta}\ket{1} \ket{\alpha} \bra{\beta} 
\end{align}$$

and we can construct

$$\begin{align}
 & \sum _{\left\{\alpha\right\}}A_{i_{1}\alpha _{1}\alpha _{2}}A_{i_{2}\alpha _{2}\alpha _{3}}\ldots A_{i_{L}\alpha _{L}\alpha _{1}}\ket{i_{1}i_{2}\ldots i_{L}} \\
= & \mathrm{Tr}\left(A_{1}\dots A_{L}\right)\ket{i_{1}i_{2}\ldots i_{L}} 
\end{align}$$

the benefit of MPS is that it can efficiently represent states with low entanglement, largely reducing the number of parameters from $\displaystyle{2^{L}}$ to $\displaystyle{LD^{2}}$, where $\displaystyle{D}$ is the bond dimension.

what is entanglement entropy? for a bipartite system $\displaystyle{AB}$, the entanglement entropy is defined as the von Neumann entropy of the reduced density matrix $\displaystyle{\rho _{A}=\mathrm{Tr}_{B}\rho }$

$$\begin{align}
S_{A} & =- \mathrm{Tr}(\rho _{A}\log \rho _{A})
\end{align}$$

for example in the Minkowski space separated by a Rindler horizon, the vacuum state can be written as TFD state

$$\begin{align}
\ket{\mathrm{TFD}} & =\frac{1}{\sqrt{Z}}\sum _{n}e^{-\beta E_{n}/2}\ket{E_{n}}_{L}\ket{E_{n}}_{R}
\end{align}$$

the entanglement entropy between left and right Rindler wedge is

$$\begin{align}
S_{R} & =-\mathrm{Tr}(\rho _{R}\log \rho _{R}) \\
 & =\beta \braket{E}+\log Z
 \end{align}$$

which is the thermal entropy of the Rindler observer, satisfying the area law.

