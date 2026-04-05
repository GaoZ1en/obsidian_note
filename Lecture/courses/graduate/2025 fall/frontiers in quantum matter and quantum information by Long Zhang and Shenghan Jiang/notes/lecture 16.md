topological QECC, surface code and color code

---

error correction threshold

for surface code on a closed surface with genus $\displaystyle{g}$, the number of logical qubit is $\displaystyle{2g}$, which can be obtained by acting non-trivial loops on the surface.

the stabilizers for surface code are defined as

$$\begin{align}
Z _{s} & =\prod _{i\in \text{star}(s)} Z _{i} \\
X _{p} & =\prod _{i\in \text{boundary}(p)} X _{i}
\end{align}$$

the ground states of the surface code are defined by

$$\begin{align}
Z _{s}\ket{\psi} & =\ket{\psi} ,\quad \forall s \\
X _{p}\ket{\psi} & =\ket{\psi} ,\quad \forall p
\end{align}$$
 
which can be expressed as

$$\begin{align}
\ket{\psi}  & =\prod _{p}\frac{1}{\sqrt{2}}\left( I+X _{p} \right)\ket{0}^{\otimes n}
\end{align}$$

and other ground states can be obtained by acting non-trivial loops on $\displaystyle{\ket{\psi}}$.

$$\begin{align}
\ket{\psi _{i}} & =\bar{X} _{i}\ket{\psi} ,\quad i=1,2,\ldots ,2g
\end{align}$$

these ground states are characterized by the homology classes of the loops on the surface, $\displaystyle{H_{1}(\Gamma,\mathbb{Z}_{2})}$. 

consider the dual lattice, vertex operators and plaquette operators exchange with each other... the normalizer of stabilizer group $\displaystyle{N(S)}$ modulus $\displaystyle{S}$ characterize the logical Pauli operators of the logical qubits

$$\begin{align}
N(S)/S & =H_{1}(\Gamma,\mathbb{Z}_{2})\times H_{1}(\Gamma ^{*},\mathbb{Z}_{2})
\end{align}$$

in which $\displaystyle{H_{1}(\Gamma,\mathbb{Z}_{2})}$ stands for the $\displaystyle{X}$ operators and $\displaystyle{H_{1}(\Gamma ^{*},\mathbb{Z}_{2})}$ stands for $\displaystyle{Z}$s.

in the practical surface code, it is hard to fabricate a torus circuit. instead we implement a square circuit with 2 smooth boundaries and 2 rough boundaries. the logical operators are represented by nontrivial $\displaystyle{X}$ and $\displaystyle{Z}$ strings connecting opposite smooth and rough boundary pairs

$$\begin{align}
\bar{X} & =\prod _{i\in \Gamma _{X}}X_{i} \\
\bar{Z} & =\prod _{i\in \Gamma _{Z}}Z_{i}
\end{align}$$

with $\displaystyle{\Gamma _{X}}$ a path between the smooth boundaries and $\displaystyle{\Gamma _{Z}}$ a path between the rough boundaries, and they are elements of relative homology

$$\begin{align}
N(S)/S & =H_{1}(\Gamma,\partial _{\text{smooth}};\mathbb{Z}_{2})\times H_{1}(\Gamma,\partial _{\text{rough}};\mathbb{Z}_{2})
\end{align}$$

the code distance $\displaystyle{d}$ equals the minimal length of either nontrivial boundary-to-boundary string.

consider the QEC. suppose errors happen independently on each physical qubit with equal probability. 

act the stabilizers $\displaystyle{Z_{v},X_{p}}$.

1. bit-flip. $\displaystyle{Z_{v}=-1}$, find a shortest curve $\displaystyle{C}$ that link every $\displaystyle{v}$, which means $\displaystyle{\partial C=v}$, then apply $\displaystyle{X_{C}}$...
	1. if the shortest curve belongs to another homology class (compared with the correct one), the correction fails... 
		1. when code distance grows, the probability of failure correction approaches to 0.
