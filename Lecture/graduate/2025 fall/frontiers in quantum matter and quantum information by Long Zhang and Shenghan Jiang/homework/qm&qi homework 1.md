# SSH model

consider the SSH model, the Hamiltonian is

$$\tag{1.0}\begin{align}
H & =\sum ^{L}_{j=1}\left(-t_{1}c_{j,a}^{\dagger}c_{j,b}-t_{2}c^{\dagger}_{j,b}c_{j+1,a}+\text{h.c.}\right)
\end{align}$$

where $\displaystyle{c_{j,a}}$ and $\displaystyle{c_{j,b}}$ are the fermion annihilation operators on sublattices $\displaystyle{a}$ and $\displaystyle{b}$ of the $\displaystyle{j}$-th unit cell, and $\displaystyle{t_{1}}$ and $\displaystyle{t_{2}}$ are real positive hopping amplitudes. we adopt periodic boundary conditions, i.e., $\displaystyle{c_{L+1,a/b}=c_{1,a/b}}$. 

## energy spectrum solution

take a Fourier transform

$$\begin{align}
c_{k,a/b} & =\frac{1}{\sqrt{ L }}\sum _{j=1}^{L}c_{j,a/b}e^{-ik_{j}}, &  k _{j} & =\frac{2\pi j}{L}, & j & =0,1,2,\cdots,L-1 \\
\implies c_{j,a/b} & =\frac{1}{\sqrt{ L }}\sum _{k}c_{k,a/b}e^{ik _{j}}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{j=1}^{L}-t_{1} \frac{1}{\sqrt{ L }}\sum _{k}c_{k,a}^{\dagger}e^{-ik _{j}} \frac{1}{\sqrt{ L }}\sum _{k'}c_{k',b}e^{ik' _{j}} \\
 & -t_{2} \frac{1}{L}\sum _{k}c^{\dagger}_{k,a}e^{-ik _{j}}\sum _{k'}c_{k',b}e^{ik'_{j+1}}+\text{h.c.} \\
 & =\sum _{k}-t_{1}c_{k,a}^{\dagger}c_{k,b}-t_{2}e^{ik}c^{\dagger}_{k,a}c_{k,b}+\text{h.c.} \\
 & =\sum _{k}(c^{\dagger}_{k,a},c^{\dagger}_{k,b})\begin{pmatrix}
0 & -t_{1}-t_{2}e^{-ik} \\
-t_{1}-t_{2}e^{ik} & 0
\end{pmatrix}\begin{pmatrix}
c_{k,a} \\
c_{k,b}
\end{pmatrix} \\
H(k) & =-(t_{1}+t_{2}\cos k)\sigma _{x}-t_{2}\sin k\sigma _{y}
\end{align}$$


then

$$\begin{align}
\det(H(k)-E(k)I) & =0 \\
\implies E(k) & =\pm\sqrt{ (t_{1}+t_{2}\cos k)^{2}+t_{2}^{2}\sin ^{2}k } \\
 & =\pm\sqrt{ t_{1}^{2}+t_{2}^{2}+2t_{1}t_{2}\cos k }
\end{align}$$

the energy spectrum is symmetric about $\displaystyle{E=0}$, and the band gap closes when $\displaystyle{t_{1}=t_{2}}$.

![[Attachments/Pasted image 20251007182251.png]]

(in this picture we assume $\displaystyle{t_{1}=1,t_{2}=2}$)

## band topology

define

$$\begin{align}
d_{k} & =\exp\left(i\theta _{k}\frac{\vec{n}_{k}\cdot \sigma}{2}\right)\begin{pmatrix}
c_{k,a} \\
c_{k,b}
\end{pmatrix} \\
\theta _{k} & =\frac{\pi}{2} \\
\vec{n}_{k} & =\frac{1}{E(k)}\begin{pmatrix}
-t_{1}-t_{2}\cos k \\
-t_{2}\sin k \\
0
\end{pmatrix}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{k}E(k)(d_{k,+}^{\dagger}d_{k,+}-d_{k,-}^{\dagger}d_{k,-}) 
\end{align}$$

then the ground state is

$$\begin{align}
\ket{\psi}  & =\prod _{k}d_{k,-}^{\dagger}\ket{0} 
\end{align}$$


when $\displaystyle{t_{1}>t_{2}}$, the trajectory of $\displaystyle{\vec{n}_{k}}$ is just a arc, and when $\displaystyle{t_{2}>t_{1}}$, the trajectory of $\displaystyle{\vec{n}_{k}}$ is a full circle. so the topological non-trivial phase is $\displaystyle{t_{2}>t_{1}}$, the winding number $\displaystyle{\nu=1}$.

![[Attachments/Pasted image 20251007194324.png]]

## stable edge states

turn to open boundary system. for $\displaystyle{t_{1}=0}$, the Hamiltonian is

$$\begin{align}
H & =\sum ^{L-1}_{j=1}\left(-t_{2}c^{\dagger}_{j,b}c_{j+1,a}-t_{2}c^{\dagger}_{j+1,a}c_{j,b}\right)
\end{align}$$

define

$$\begin{align}
\alpha _{j} & =\frac{1}{\sqrt{ 2 }}(c_{j+1,a}+c_{j,b}) \\
\beta _{j} & =\frac{1}{\sqrt{ 2 }}(c_{j+1,a}-c_{j,b}), & j=1,2,\cdots,L-1
\end{align}$$

then the Hamiltonian can be diagonalized as

$$\begin{align}
H & =\sum ^{L-1}_{j=1}-t_{2}(\alpha _{j}^{\dagger}\alpha _{j}-\beta _{j}^{\dagger}\beta _{j})
\end{align}$$

the number of ground states is $\displaystyle{4}$, and they can be written as

$$\begin{align}
\ket{\text{GS}_{0}} & =\prod ^{L-1}_{j=1}\alpha _{j}^{\dagger}\ket{0}  \\
\ket{\text{GS}_{1}} & =c_{1,a}^{\dagger}\ket{\text{GS}_{0}}\\
\ket{\text{GS}_{2}} & =c_{L,b}^{\dagger}\ket{\text{GS}_{0}}\\
\ket{\text{GS}_{3}}  & =c_{1,a}^{\dagger}c_{L,b}^{\dagger}\ket{\text{GS}_{0}} 
\end{align}$$

when $\displaystyle{\frac{t_{2}}{t_{1}}\gg1}$. the Hamiltonian can be written as

$$\begin{align}
H & =H_{0}+V \\
H_{0} & =\sum ^{L-1}_{j=1}\left(-t_{2}c^{\dagger}_{j,b}c_{j+1,a}-t_{2}c^{\dagger}_{j+1,a}c_{j,b}\right) \\
V & =\sum ^{L}_{j=1}\left(-t_{1}c_{j,a}^{\dagger}c_{j,b}-t_{1}c^{\dagger}_{j,b}c_{j,a}\right)
\end{align}$$

write

$$\begin{align}
W_{k} & =\begin{pmatrix}
\braket{ \text{GS}_{0}|V^{k}|\text{GS}_{0} }  & \braket{ \text{GS}_{0}|V^{k}|\text{GS}_{1} }  & \braket{ \text{GS}_{0}|V^{k}|\text{GS}_{2} }  & \braket{ \text{GS}_{0}|V^{k}|\text{GS}_{3} } \\
\braket{ \text{GS}_{1}|V^{k}|\text{GS}_{0} }  & \braket{ \text{GS}_{1}|V^{k}|\text{GS}_{1} }  & \braket{ \text{GS}_{1}|V^{k}|\text{GS}_{2} }  & \braket{ \text{GS}_{1}|V^{k}|\text{GS}_{3} } \\
\braket{ \text{GS}_{2}|V^{k}|\text{GS}_{0} }  & \braket{ \text{GS}_{2}|V^{k}|\text{GS}_{1} }  & \braket{ \text{GS}_{2}|V^{k}|\text{GS}_{2} }  & \braket{ \text{GS}_{2}|V^{k}|\text{GS}_{3} } \\
\braket{ \text{GS}_{3}|V^{k}|\text{GS}_{0} }  & \braket{ \text{GS}_{3}|V^{k}|\text{GS}_{1} }  & \braket{ \text{GS}_{3}|V^{k}|\text{GS}_{2} }  & \braket{ \text{GS}_{3}|V^{k}|\text{GS}_{3} }
\end{pmatrix}
\end{align}$$

then when $\displaystyle{k<L}$, $\displaystyle{W}$ is diagonal, and the four ground states are degenerate. when $\displaystyle{k=L}$, we get a non-diagonal term

$$\begin{align}
\braket{ \text{GS}_{1}|V^{L}|\text{GS}_{2} } & =\frac{(-1)^{L}t_{1}^{L}}{2^{L-1}}
\end{align}$$

and the energy splitting is

$$\begin{align}
\Delta & \sim\frac{t_{1}^{L}}{2^{L-1}t_{2}^{L-1}}
\end{align}$$

in the thermodynamic limit $\displaystyle{L\to \infty}$, the energy splitting will vanish and the degeneracy is stable.

further add the following perturbation

$$\begin{align}
V & =\sum ^{L-1}_{j=1}\left(-t'c^{\dagger}_{j,a}c_{j+1,a}-t'c^{\dagger}_{j,b}c_{j+1,b}+\text{h.c.}\right)
\end{align}$$

and set $\displaystyle{t_{1}=0,t_{2}\gg t'>0}$. define $\displaystyle{W_{k}}$ as before, then when $\displaystyle{k<L-1}$, $\displaystyle{W_{k}}$ is still diagonal, and when $\displaystyle{k=L}$, we get a non-diagonal term

$$\begin{align}
W_{k,12} & \sim \frac{t'^{L-1}}{2^{L-1}}
\end{align}$$

and the energy splitting is

$$\begin{align}
\Delta & \sim\frac{t'^{L-1}}{2^{L-1}t_{2}^{L-2}}
\end{align}$$

vanishes in the thermodynamic limit.

# Heisenberg model

consider the following Hubbard model

$$\begin{align}
H & =\sum _{\braket{ ij } ,s}\left(-t_{ij}c^{\dagger}_{is}c_{js}+\text{h.c.}\right)+\sum _{i}Un_{i\uparrow}n_{i\downarrow}
\end{align}$$

where $\displaystyle{c_{i\uparrow}}$ and $\displaystyle{c_{i\downarrow}}$ are annihilation operators of spin 1/2 fermion for site $\displaystyle{i}$. the summation is taken over all bonds $\displaystyle{\braket{ ij }}$, and $\displaystyle{U\gg t_{ij}>0}$. 

## two-site model

first consider two-site model, the Hamiltonian is

$$\begin{align}
H & =\sum _{s}\left(-tc^{\dagger}_{1s}c_{2s}-tc^{\dagger}_{2s}c_{1s}\right)+U(n_{1\uparrow}n_{1\downarrow}+n_{2\uparrow}n_{2\downarrow})
\end{align}$$

the dimension of the full Hilbert space is 