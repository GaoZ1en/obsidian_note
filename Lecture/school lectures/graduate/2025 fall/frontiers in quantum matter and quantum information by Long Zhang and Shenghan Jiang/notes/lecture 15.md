fault-tolerant quantum computing

what is FTQC? error cannot propagate uncontrollably through the system.

threshold theorem...
Shor proved that if the error rate is below a certain threshold, then it is possible to perform arbitrarily long quantum computations reliably. we will not explain it here.

next class we will explain topological quantum computing, self-correcting quantum codes and some other things. with a surface code threshold $\displaystyle{p_{c}<10 \%}$, which is achieved in Google's Sycamore processor.

---

FT measurement:

measure $\displaystyle{Z}$ on each qubit in a fault-tolerant way:
1. prepare an ancilla in the Shor state $\displaystyle{\ket{\text{Shor}}=\sum _{y_{1}y_{2}\dots y_{r}\equiv0\mod{2}}\ket{y_{1}y_{2}\dots y_{r}}=\frac{1}{\sqrt{ 2 }}(\ket{++\dots+}+\ket{--\dots-})}$ (which can be corrected)
2. apply CNOT gate from data qubits to ancilla qubits
3. measure the ancilla qubits

the advantage of Shor state is that we can only extract the overall parity information, and not every individual bit

how to construct a cat state $\displaystyle{\ket{\text{cat}}=\frac{1}{\sqrt{ 2 }}(\ket{00\dots0}+\ket{11\dots 1})}$
1. prepare $\displaystyle{\ket{+}\otimes \ket{0}\otimes \ket{0}\otimes \dots \otimes \ket{0}}$ (act a Hadamard gate on the first qubit $\displaystyle{\ket{0}}$)
2. apply CNOT gates from the first qubit to all other qubits
	1. which can be modified to apply CNOT gates from the previous qubit to the next qubit, which is a more fault-tolerant way

and how to construct the Shor state from cat state?
1. prepare a cat state
2. apply Hadamard gates to all qubits

more generally, to measure a stabilizer $\displaystyle{S}$ in a FT way:
1. rotate the stabilizer to $\displaystyle{Z^{\otimes r}}$ by applying appropriate gates on data qubits
2. measure $\displaystyle{Z^{\otimes r}}$ in a FT way
3. rotate back

so for stabilizer code, the measurement of stabilizers can be done in a FT way.

Clifford hierarchy:
1. Pauli group. FT$\displaystyle{\checkmark}$
2. Clifford group: normalizer of Pauli group. FT$\displaystyle{\checkmark}$

by introducing auxiliary states, we can implement any gate in the Clifford hierarchy in a FT way...

how to implement the $\displaystyle{T}$ gate in a FT way:
1. prepare the auxiliary state $\displaystyle{\ket{A}=\frac{1}{\sqrt{ 2 }}(\ket{0}+e^{i\pi/4}\ket{1})=T\ket{+}}$
2. apply a CNOT gate from data qubit to auxiliary qubit
3. measure the auxiliary qubit in the $\displaystyle{Z}$ basis
4. if the measurement outcome is $\displaystyle{+1}$, do nothing; if the measurement outcome is $\displaystyle{-1}$, apply the $\displaystyle{S}$ gate to the data qubit

how to measure the $\displaystyle{TXT^{\dagger}}$ gate in a FT way:
1. notice that $\displaystyle{(TXT^{\dagger})^{2}=I}$, we can implement it via the usual way:
	1. prepare the auxiliary state $\displaystyle{\ket{\bar{0}}}$, and act a Hadamard gate to get $\displaystyle{\ket{\bar{+}}}$
	2. apply a C-$\displaystyle{TXT^{\dagger}}$ gate from the auxiliary qubit to the data qubit
		1. notice that $\displaystyle{TXT^{\dagger}}$ is a conjugation measure, so we can implement C-$\displaystyle{TXT^{\dagger}}$ by applying $\displaystyle{T}$ gate to the data qubit before and after a CNOT gate, and then applying $\displaystyle{T^{\dagger}}$ gate to the data qubit
		2. and $\displaystyle{T}$ gate on the logic qubit is actually the same as $\displaystyle{T}$ gate on each physical qubit transversally
	3. apply a Hadamard gate to the auxiliary qubit and measure it in the $\displaystyle{Z}$ basis

thus we can implement any gate in the Clifford hierarchy in a FT way, given that we can prepare the auxiliary states in a FT way.

FT quantum error correction...

---

surface code? a lattice with qubits on vertices, edges or plaquettes. stabilizers are defined on plaquettes.

$$\begin{align}
S _{p} & =\prod _{i \in \text{plaquette }p}X_{i} \\
S _{p'} & =\prod _{i \in \text{plaquette }p'}Z_{i}
\end{align}$$

and adjacent plaquettes share exactly two qubits (thus all stabilizers commute), and different types of stabilizers act on different qubits. we have the constraints

$$\begin{align}
\prod _{p}S _{p} & =\prod _{p'}S _{p'}=I
\end{align}$$

logical qubit can be constructed by introducing holes or boundaries, and act non-contractible loops of $\displaystyle{X}$ (for rough boundaries)or $\displaystyle{Z}$ (for smooth boundaries) operators, just as the toric code. the number of logical qubits is determined by the topology of the surface, i.e., the genus $\displaystyle{g}$ and the number of boundaries $\displaystyle{b}$: $\displaystyle{2g+b-1}$. the code distance is determined by the length of the shortest non-contractible loop.

2D color code, honeycomb lattice. what is color code? a kind of self-dual surface code

consider the honeycomb lattice with qubits on vertices. each plaquette is colored by red, green and blue, such that no two adjacent plaquettes share the same color. we have the constraints

$$\begin{align}
\prod _{p \in R}X_{p} & =\prod _{p \in G}X_{p}=\prod _{p \in B}X_{p} \\
\prod _{p \in R}Z_{p} & =\prod _{p \in G}Z_{p}=\prod _{p \in B}Z_{p}
\end{align}$$

where $\displaystyle{\prod _{p \in R}X_{p}}$ means the product of $\displaystyle{X}$ operators on all red plaquettes.