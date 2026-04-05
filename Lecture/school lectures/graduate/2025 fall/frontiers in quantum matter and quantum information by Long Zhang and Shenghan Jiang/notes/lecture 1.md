---
references: quantum information meets quantum matter by Bei Zeng, Duan-Li Zhou and Xiao-Gang Wen
---

landscape of quantum phases and phase transition...
1. quantum phases study properties of ground states, $\displaystyle{T\to0,N\to \infty}$
2. ground states share the same universal properties: stability
3. in the same quantum phase, two ground states are related by a adiabatic process

low energy exitation are directly determined by ground states, and not the specific form of Hamiltonian...

Landau's paradigm, symmetry and SSB. for example
1. $\displaystyle{\mathrm{U}(1)}$, insulator and superfluid/superconductor
2. spatial symmetry, gas/liquid and solid
3. spin rotation $\displaystyle{(\mathrm{SO}(3),\mathbb{Z}_{2})}$, paramagnetic and (anti)ferromagnetic

beyond Landau paradigm
1. no symmetry: topological order phases, long range entanglement...
	1. anyon
2. symmetry, no LRE: symmetry protected topological phases, topological insulators...
	1. edge modes
3. symmetry, LRE: FQHE, spin liquid

low energy excitations
1. gasless phases
	1. Fermi liquid, Dirac semi-metal, graphene
	2. non-Fermi liquid

science spreading is over

---

$\displaystyle{N}$-qubits...

hard-core boson, the Hamiltonian can be written as

$$\begin{align}
H & =H_{0}+U\sum _{j}n_{j}(n_{j}-1) \\
U & \gg |H_{0}|
\end{align}$$

the spectrum will be seperated into two parts, with energy gap $\displaystyle{U}$. the lower part consists of no double occupation...

for fermion, there is no local fermion. 

$$\begin{align}
f_{i}f_{j} & =-f_{j}f_{i} \\
f_{i}^{\dagger}f_{j} & =-\delta _{ij}f_{j}f^{\dagger}_{i}
\end{align}$$

this can be realized by $\displaystyle{N}$ 4 qubits as (Jordon-Wigner transformation)

$$\begin{align}
f_{i} & =\bigotimes^{i-1}_{n=1}\sigma _{z}\otimes \frac{1}{2}(\sigma _{x}+i\sigma _{y})\bigotimes^{N-i}_{n'=1}I \\
f_{j}^{\dagger} & =\bigotimes^{j-1}_{n=1}\sigma _{z}\otimes \frac{1}{2}(\sigma _{x}+i\sigma _{y})\bigotimes^{N-j}_{n'=1}I
\end{align}$$

