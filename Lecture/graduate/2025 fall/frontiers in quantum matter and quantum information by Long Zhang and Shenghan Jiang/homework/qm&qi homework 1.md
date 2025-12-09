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
 & -t_{2} \frac{1}{L}\sum _{k}c^{\dagger}_{k,b}e^{-ik _{j}}\sum _{k'}c_{k',a}e^{ik'_{j+1}}+\text{h.c.} \\
 & =\sum _{k}-t_{1}c_{k,a}^{\dagger}c_{k,b}-t_{2}e^{-ik}c^{\dagger}_{k,a}c_{k,b}+\text{h.c.} \\
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

and then

$$\begin{align}
\vec{n}_{k} & =(-\sin \phi_k,\cos \phi_k,0) \\
\theta _{k} & =\frac{\pi}{2}
\end{align}$$

define operators

$$\tag{.}\begin{align}
\begin{pmatrix}
d_{k,+} \\
d_{k,-}
\end{pmatrix} & =\exp\left(i\frac{\theta_k}{2}\vec n_k\cdot \sigma\right)\begin{pmatrix}
c_{k,a} \\
c_{k,b}
\end{pmatrix}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{k}E(k)\left(d_{k,+}^{\dagger}d_{k,+}-d_{k,-}^{\dagger}d_{k,-}\right)
\end{align}$$

---

comment: actually this is a Bogoliubov transformation. define

$$\begin{align}
d_{k,+} & = \\
d_{k,-}
\end{align}$$



---

the ground state is obtained by filling all negative-energy states

$$\begin{align}
\ket{\psi} =\prod _{k}d_{k,-}^{\dagger}\ket{0}
\end{align}$$
the trajectory of $\displaystyle{\vec{n}_{k}}$ are shown in the following pictures. topological trivial phase: $\displaystyle{t_{1}>t_{2}}$, the winding number $\displaystyle{\nu=0}$; topological non-trivial phase: $\displaystyle{t_{1}<t_{2}}$, the winding number $\displaystyle{\nu=1}$.

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
$$\delta' \sim C' \frac{t'^{\,L}}{t_2^{L-1}},\qquad \Delta E' \sim 2|\delta'|,$$
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

The full two-site Fock space has dimension $4\times 4=16$ (each site: $|0\rangle,|\uparrow\rangle,|\downarrow\rangle,|\uparrow\downarrow\rangle$). Fix total particle number $N=2$: remaining 6 states consist of two double-occupancy states and four singly-occupied spin states. A convenient ordered $N=2$ basis:
$$\{c_{1\uparrow}^{\dagger}c_{1\downarrow}^{\dagger}|0\rangle,\ c_{2\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}|0\rangle,\ c_{1\uparrow}^{\dagger}c_{2\uparrow}^{\dagger}|0\rangle,\ c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}|0\rangle,\ c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}|0\rangle,\ c_{1\downarrow}^{\dagger}c_{2\downarrow}^{\dagger}|0\rangle\}. $$

set $\displaystyle{t=0}$, the energy levels and eigenstates are summarized as follows

$$\begin{align}
\begin{cases}
E=U: &c_{1\downarrow}^{\dagger}c_{1\uparrow}^{\dagger}\ket{0},c_{2\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0}, \\
E=0: &c_{1\downarrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0},c_{1\uparrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0}
\end{cases}
\end{align}$$

for $\displaystyle{E=0}$ ground state subspace, we can define the following basis

$$\begin{align}
\ket{S} & =\frac{1}{\sqrt{ 2 }}(c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}-c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger})\ket{0} \\
\ket{T_{0}} & =\frac{1}{\sqrt{ 2 }}(c_{1\uparrow}^{\dagger}c_{2\downarrow}^{\dagger}+c_{1\downarrow}^{\dagger}c_{2\uparrow}^{\dagger})\ket{0} \\
\ket{T_{+}} & =c_{1\uparrow}^{\dagger}c_{2\uparrow}^{\dagger}\ket{0} \\
\ket{T_{-}} & =c_{1\downarrow}^{\dagger}c_{2\downarrow}^{\dagger}\ket{0} 
\end{align}$$

where $\displaystyle{\ket{S}}$ lies in the singlet subspace of total spin $\displaystyle{S=0}$, and $\displaystyle{\ket{T_{0}},\ket{T_{+}},\ket{T_{-}}}$ lie in the triplet subspace of total spin $\displaystyle{S=1}$. so if we introduce a perturbation that mixes the states, the singlet and triplet subspaces will not be mixed due to their different spins

for $U\gg t>0$ treat hopping as perturbation. Let
$$V= -t \sum_s (c_{1s}^{\dagger} c_{2s} + c_{2s}^{\dagger} c_{1s}).$$

define $\displaystyle{\vec{S}_{i}=\sum _{\alpha \beta} \frac{1}{2}c_{i\alpha}\vec{\sigma}_{\alpha \beta}c_{i\beta}}$ and the projection operator $\displaystyle{P}$ which projects onto the subspace with no double occupancy (since we are deriving the low energy effective Hamiltonian). the effective Hamiltonian is given by

$$\begin{align}
H_{\text{eff}} & =-PV\frac{1}{H_{0}}VP \\
 & =-\frac{4t^{2}}{U}\ket{S} \bra{S}  \\
 & =\frac{4t^{2}}{U}\left(\vec{S}_{1}\cdot \vec{S}_{2}-\frac{1}{4}\right)
\end{align}$$

## generic lattice

for a system with total site $\displaystyle{N}$ with $\displaystyle{N}$ fermion, the low energy subspace in large $\displaystyle{U}$ limit is the single occupancy for each site. turn on the perturbation

$$\begin{align}
V & =\sum _{\braket{ ij } ,s}\left(-t_{ij}c^{\dagger}_{is}c_{js}+\text{h.c.}\right)
\end{align}$$

the first order perturbation vanishes, since the hopping term will lead to creation/annihilation of double occupancy, away from the single occupancy subspace. the second order perturbation is

$$\begin{align}
H_{\text{eff}} & =-PV \frac{1}{H_{0}}VP \\
 & =-\frac{1}{U}PV^{2}P \\
 & =-\frac{1}{U}\sum _{\braket{ ij } }PV_{ij}^{2}P
\end{align}$$

where $\displaystyle{V_{ij}=-t_{ij}\sum _{s}\left(c_{is}^{\dagger}c_{js}+\text{h.c.}\right)}$, define $\displaystyle{\tilde{c}_{is}=c_{is}(1-n_{i\bar{s}}),\tilde{c}_{is}^{\dagger}=(1-n_{i\bar{s}})c_{is}^{\dagger}}$

$$\begin{align}
PV_{ij}^{2}P & =t_{ij}^{2}P\sum _{ss'}(\tilde{c}^{\dagger}_{is}\tilde{c}_{js}\tilde{c}_{js'}^{\dagger}\tilde{c}_{is'}+\tilde{c}^{\dagger}_{js}\tilde{c}_{is}\tilde{c}^{\dagger}_{is'}\tilde{c}_{js'})P \\
 & =2t_{ij}^{2}P \sum _{ss'}\tilde{c}_{is}^{\dagger}\tilde{c}_{js}\tilde{c}^{\dagger}_{js'}\tilde{c}_{is'} \\
 & =2t_{ij}^{2}P \left( \sum _{s}\tilde{c}_{is}^{\dagger}\tilde{c}_{is} -\sum _{ss'}\tilde{c}_{is}^{\dagger}\tilde{c}_{js'}^{\dagger}\tilde{c}_{js}\tilde{c}_{is'}\right)P \\
 & =2t_{ij}^{2}\left(1-\mathcal{P}_{ij}\right)
\end{align}$$

here $\displaystyle{\mathcal{P}_{ij}=\sum _{ss'}\tilde{c}_{is}^{\dagger}\tilde{c}_{js'}^{\dagger}\tilde{c}_{js}\tilde{c}_{is'}}$ is the spin exchange operator between site $\displaystyle{i}$ and $\displaystyle{j}$, which can be written as 

$$\begin{align}
\mathcal{P}_{ij} & =\frac{1}{2}+2\vec{S}_{i}\cdot \vec{S}_{j}
\end{align}$$

finally we get the effective Hamiltonian

$$\begin{align}
H_{\text{eff}} & =\sum _{\braket{ ij }}J_{ij}\left(\vec{S}_{i}\cdot \vec{S}_{j}-\frac{1}{4}\right) \\
J_{ij} & =\frac{4t_{ij}^{2}}{U}
\end{align}$$

which is exactly the Heisenberg Hamiltonian.
