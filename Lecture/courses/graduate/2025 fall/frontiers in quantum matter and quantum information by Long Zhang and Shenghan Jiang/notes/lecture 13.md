overview of this lecture

stabilizer code
1. examples
	1. CSS code
		1. St..? code
		1. surface code
	1. 5-qubit code
fault tolerant, quantum computing
1. error propagatiion and general idea
1. FT diagosis and rea?

---

what is stabilizer code?

- stabilizer group $\displaystyle{S}$: abelian subgroup of Pauli group $\displaystyle{P_{n}}$ that does not contain $\displaystyle{-I}$
- stabilizer code $\displaystyle{C(S)}$: subspace of $\displaystyle{(\mathbb{C}^{2})^{\otimes n}}$ stabilized by all elements of $\displaystyle{S}$
	- $\displaystyle{C(S) = \{ \ket{\psi} \in (\mathbb{C}^{2})^{\otimes n} : M|\psi\rangle = \ket{\psi}, \forall M \in S \}}$
	- if $\displaystyle{S}$ has $\displaystyle{n-k}$ independent generators, then $\displaystyle{C(S)}$ encodes $\displaystyle{k}$ logical qubits into $\displaystyle{n}$ physical qubits
	- dimension of $\displaystyle{C(S)}$ is $\displaystyle{2^{k}}$

examples:
Shor's 9-qubit code, with stabilizer generators

$$\begin{align}
S = \langle & Z_1 Z_2, Z_2 Z_3, Z_4 Z_5, Z_5 Z_6, Z_7 Z_8, Z_8 Z_9, \\
 & X_1 X_2 X_3 X_4 X_5 X_6, X_4 X_5 X_6 X_7 X_8 X_9 \rangle
\end{align}$$

[Steane's 7-qubit code](https://en.wikipedia.org/wiki/Steane_code), with stabilizer generators

$$\begin{align}
S = \langle & X_1 X_2 X_3 X_4, X_1 X_2 X_5 X_6, X_1 X_3 X_5 X_7, \\
 & Z_1 Z_2 Z_3 Z_4, Z_1 Z_2 Z_5 Z_6, Z_1 Z_3 Z_5 Z_7 \rangle
\end{align}$$

toric code, with stabilizer generators

$$\begin{align}
S = \langle & A_v = \prod_{i \in v} X_i,B_p = \prod_{i \in p} Z_i \rangle
\end{align}$$

the code space is actually the ground space of the Hamiltonian. the Pauli operator for logic qubits are non-trivial loops on the torus. for example on the torus $\displaystyle{T^{2}}$, we can define the logical operators as follows:

$$\begin{align}
\overline{X}_1 &= \prod_{i \in \gamma_1} X_i, & \overline{Z}_1 &= \prod_{i \in \gamma_2} Z_i, \\
\overline{X}_2 &= \prod_{i \in \gamma_2} X_i, & \overline{Z}_2 &= \prod_{i \in \gamma_1} Z_i,
\end{align}$$

here $\displaystyle{\gamma _{1}}$ and $\displaystyle{\gamma _{2}}$ are non-contractible loops around the torus. for $\displaystyle{T^{2}}$, we have 2 logical qubits encoded.

what does he say?

how to construct logic qubit and logic Pauli operator from check matrix?

in Steane's 7-qubit code, the logic Pauli operators can be constructed as follows:

$$\begin{align}
\overline{X} &= X_1 X_2 X_3 X_4 X_5 X_6 X_7 \\
\overline{Z} &= Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7
\end{align}$$

and Hadamard gate, phase gate and CNOT gate can be implemented transversally:

$$\begin{align}
\overline{H} &= H^{\otimes 7}, \\
\overline{S} &= S^{\dagger\otimes 7}, \\
\overline{CNOT} &= CNOT^{\otimes 7}
\end{align}$$

$\displaystyle{\braket{ H_{\ell},S_{\ell},CNOT_{\ell} }}$ forms a Clifford group, which is the normalizer of the Pauli group $\displaystyle{P_{n}}$ in $\displaystyle{SU(2)_{n}}$. as for T gate, it maps Pauli operator to Clifford operator... we get a hierarchy called Clifford hierarchy, where the $\displaystyle{k}$-th level $\displaystyle{\mathcal{C}_{k}}$ is defined as the set of unitaries that map Pauli operators to $\displaystyle{\mathcal{C}_{k-1}}$ under conjugation. error propagation? for a general stabilizer code, the construction difficulty are higher and higher when $\displaystyle{k}$ grows.

it can be proved that for a quantum computer that only contains Clifford gates, it can be efficiently simulated on a classical computer (Gottesman-Knill theorem). therefore, to achieve universal quantum computation, we need to add at least one non-Clifford gate, such as T gate.

[CSS code](https://zh.wikipedia.org/wiki/CSS%E7%BA%A0%E9%94%99%E7%A0%81). the check matrix can be written in the following form:

$$\begin{align}
H & =\begin{pmatrix}
H_{X} & 0 \\
0 & H_{Z}
\end{pmatrix}
\end{align}$$

where $\displaystyle{H_{X}}$ and $\displaystyle{H_{Z}}$ are classical parity-check matrices that satisfy $\displaystyle{H_{X}H_{Z}^{T}=0}$. the stabilizer generators are constructed from the rows of $\displaystyle{H_{X}}$ and $\displaystyle{H_{Z}}$ by replacing 1's with X's and Z's respectively, and logic qubits can be constructed from the classical codewords of the corresponding classical codes. logic Pauli operators can also be constructed from the classical codewords. the dimension of code space is given by $\displaystyle{k=n-\mathrm{rank}(H_{X})-\mathrm{rank}(H_{Z})}$. the logic qubits can be expressed as

$$\begin{align}
\ket{\bar{x}}  & =\sum _{y\in \mathrm{span}(H_{X}\text{ row vectors})}\ket{x+y} , x \in \mathrm{Ker}(H_{Z}) \\
\end{align}$$

for example

$$\begin{align}
\ket{0_{L}}  & =\sum _{y\in \mathrm{span}(H_{X}\text{ row vectors})}\ket{y} \\
\ket{1_{L}}  & =\sum _{y\in \mathrm{span}(H_{X}\text{ row vectors})}\ket{1+y}
\end{align}$$

there are only $\displaystyle{k}$ independent vectors in $\displaystyle{\mathrm{Ker}(H_{Z})/\mathrm{span}(H_{X}\text{ row vectors})}$, so we can encode $\displaystyle{k}$ logical qubits.

classical linear code... in the language of linear code, $\displaystyle{y}$ is a codeword of the classical code with parity-check matrix $\displaystyle{H_{X}}$, and $\displaystyle{x}$ is a representative of a coset in the quotient space $\displaystyle{\mathrm{Ker}(H_{Z})/\mathrm{span}(H_{X}\text{ row vectors})}$.
