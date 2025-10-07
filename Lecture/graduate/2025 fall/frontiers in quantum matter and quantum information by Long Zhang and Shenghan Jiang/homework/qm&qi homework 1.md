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

define the phase

$$\begin{align}
\phi_k = \arctan \frac{t_{2}\sin k}{t_{1}+t_{2}\cos k}
\end{align}$$

we have

$$\begin{align}
\vec{n}_{k} & =(-\cos \phi_k,-\sin \phi_k,0) \\
\theta _{k} & =\frac{\pi}{2}
\end{align}$$

Single-axis rotation with constant angle $\theta_k=\pi/2$ and axis perpendicular to $\hat d_k$:
$$\hat d_k=\frac{1}{E(k)}(d_x,d_y,0)=(\cos\phi_k,\sin\phi_k,0),\qquad \vec n_k=(-\sin\phi_k,\cos\phi_k,0),\quad \theta_k=\frac{\pi}{2},$$
$$U_k=\exp\left(i\frac{\theta_k}{2}\vec n_k\cdot \sigma\right),\qquad U_k H(k) U_k^{\dagger}=E(k)\sigma_z.$$
(Earlier choosing $\vec n_k$ parallel to $\hat d_k$ fails to diagonalize $H(k)$.)

define operators
$$\begin{pmatrix} d_{k,+} \\ d_{k,-}\end{pmatrix}= U_k \begin{pmatrix} c_{k,a} \\ c_{k,b}\end{pmatrix},\qquad H=\sum_k E(k)\big(d_{k,+}^{\dagger}d_{k,+}-d_{k,-}^{\dagger}d_{k,-}\big).$$
Half-filled ground state:
$$\ket{\psi}=\prod_k d_{k,-}^{\dagger}\ket{0}.$$

Topology: $(d_x(k),d_y(k))$ traces a circle of radius $t_2$ centered at $(-t_1,0)$. Winding number
$$\nu = \frac{1}{2\pi}\int_{0}^{2\pi} dk\; \partial_k \phi_k = \begin{cases}1,& t_2>t_1,\\0,& t_2<t_1.\end{cases}$$
Non-trivial phase: $t_2>t_1$.

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

we have 2 degenerate ground states:
$$\ket{\psi _{L}} =c_{1,a}^{\dagger}\prod ^{L-1}_{j=1}\alpha _{j}^{\dagger}\ket{0},\qquad
\ket{\psi _{R}} =c_{L,b}^{\dagger}\prod ^{L-1}_{j=1}\alpha _{j}^{\dagger}\ket{0}.$$

when $\displaystyle{\frac{t_{2}}{t_{1}}\gg1}$. the Hamiltonian can be written as

$$\begin{align}
H & =H_{0}+V \\
H_{0} & =\sum ^{L-1}_{j=1}\left(-t_{2}c^{\dagger}_{j,b}c_{j+1,a}-t_{2}c^{\dagger}_{j+1,a}c_{j,b}\right) \\
V & =\sum ^{L}_{j=1}\left(-t_{1}c_{j,a}^{\dagger}c_{j,b}-t_{1}c^{\dagger}_{j,b}c_{j,a}\right)
\end{align}$$

let $|L\rangle=c_{1,a}^{\dagger}|0\rangle$, $|R\rangle=c_{L,b}^{\dagger}|0\rangle$ (single-particle edge subspace). define the projectors: $P=|L\rangle\langle L|+|R\rangle\langle R|$, $Q=1-P$. perturbation:
$$V = - t_1 \sum_{j=1}^{L} ( c_{j,a}^{\dagger} c_{j,b} + c_{j,b}^{\dagger} c_{j,a}).$$
lowest non-vanishing contribution linking $|L\rangle$ to $|R\rangle$ involves $L$ hoppings and $L-1$ virtual denominators of size $\Delta_{\text{bulk}}\sim t_2$. effective matrix element
$$\delta = \langle L| V (\frac{1}{E_0-H_0} Q V)^{L-1} |R\rangle \sim C \frac{t_1^{L}}{t_2^{L-1}},$$
with $C=O(1)$. energy splitting:
$$\Delta E = 2|\delta| \sim 2C\, t_1 \left(\frac{t_1}{t_2}\right)^{L-1},$$
exponentially small for fixed $t_1/t_2<1$ in the thermodynamic limit $L\to\infty$.

further add the following perturbation

$$\begin{align}
V & =\sum ^{L-1}_{j=1}\left(-t'c^{\dagger}_{j,a}c_{j+1,a}-t'c^{\dagger}_{j,b}c_{j+1,b}+\text{h.c.}\right)
\end{align}$$

and set $\displaystyle{t_{1}=0,t_{2}\gg t'>0}$. the leading process coupling edges requires $(L-1)$ same-sublattice hops with $(L-2)$ virtual denominators, giving
$$\delta' \sim C' \frac{t'^{\,L-1}}{t_2^{L-2}},\qquad \Delta E' \sim 2|\delta'|,$$
again vanish in thermodynamic limit $\displaystyle{L\to \infty}$ for fixed $t'/t_2<1$.

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

the dimension of the full Hilbert space is $\displaystyle{4}$. if we restrict the number of particles to $\displaystyle{2}$, then the dimension of the Hilbert space is $\displaystyle{6}$. we can write down the basis as

$$\begin{align}
\left\{c_{1\downarrow}^{\dagger}c_{1\uparrow}^{\dagger}\ket{0},c_{2\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0},c_{1\downarrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0} \right\}
\end{align}$$

set $\displaystyle{t=0}$, the energy levels and eigenstates are summarized as follows

$$\begin{align}
\begin{cases}
E=U: &c_{1\downarrow}^{\dagger}c_{1\uparrow}^{\dagger}\ket{0},c_{2\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0}, \\
E=0: &c_{1\downarrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0}
\end{cases}
\end{align}$$

for $\displaystyle{U\gg t>0}$, we can treat the hopping term as a perturbation. define

$$\begin{align}
V & =\sum _{s}\left(-tc^{\dagger}_{1s}c_{2s}-tc^{\dagger}_{2s}c_{1s}\right)
\end{align}$$

