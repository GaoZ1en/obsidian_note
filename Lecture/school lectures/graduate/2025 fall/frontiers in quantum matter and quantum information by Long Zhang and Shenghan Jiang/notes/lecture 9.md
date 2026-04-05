in quantum information, code space is equivalent to the ground state physics...?

now we consider the toric code model with boundary / surface code

consider a half-infinite lattice, with bulk Hamiltonian as before

$$\begin{align}
H = - \sum_v A_v - \sum_p B_p
\end{align}$$

where $A_v = \prod_{i \in +} X_i$ and $B_p = \prod_{i \in \square} Z_i$. on the boundary, the vertex operators involve only three edges, while there is no plaquette operator at the boundary.

the Hamiltonian is still exactly solvable, since every term commutes with each other. the degeneracy of ground states is now $2^{2g + b -1}$, where $g$ is the genus of the surface and $b$ is the number of boundaries. for a half-infinite plane with a single boundary, the ground state is unique. the ground states are characterized by first homology group of the surface $H_1(\Sigma, \mathbb{Z}_2)$. 

the ground state is constructed by projecting the state $|0\rangle^{\otimes n}$ to the +1 eigenspace of all stabilizers (vertex and plaquette operators):

$$\begin{align}
|\psi\rangle = \prod_v \frac{1 + A_v}{2} \prod_p \frac{1 + B_p}{2} |0\rangle^{\otimes n}
\end{align}$$

and other ground states can be constructed by applying non-contractible loop operators. the excitations are created by string operators as before. however, now there are two types of boundaries: rough boundary and smooth boundary. at a rough boundary, an $e$ anyon can condense (i.e. disappear into the boundary), while at a smooth boundary, a $m$ anyon can condense. actually they are equivalent up to a local unitary transformation.

some incredible relationship with majorana fermion...

topological entanglement entropy. for topological order, the entanglement entropy of a region $A$ follows an area law with a universal correction:

$$\begin{align}
S(A) = \alpha |\partial A| - \gamma
\end{align}$$

where $\gamma$ is the topological entanglement entropy, which is a universal constant characterizing the topological order. for Abelian topological order, $\gamma = \log \mathcal{D}$, where $\mathcal{D}$ is the total quantum dimension of the anyon model. for the toric code, $\mathcal{D} = 2$, so $\gamma = \log 2$. z