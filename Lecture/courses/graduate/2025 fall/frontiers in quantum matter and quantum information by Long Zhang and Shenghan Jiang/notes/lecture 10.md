from today we will begin our lectures on quantum information.

overview of this lecture.
quantum operations
* unitary gates
	* singlet qubit gates
	* controlled gates
	* universal gates
* measurements
	* projective measurements
	* POVMs
* noise and channels
	* system-environment interactions
	* operator-sums
	* examples

reference: Nielsen-Chuang chapter 4, 8

---

some basic quantum mechanics.

classical operations/gates. NOT, AND, OR, NAND, NOR, XOR, XNOR.

to build a classical/quantum computer
1. some (qu)bits
2. initialization
3. classical operations/unitary operations(gates)
4. measurement
5. long decoherence time

---

basic quantum gates

consider a single qubit $\displaystyle{\ket{\psi}=\cos \frac{\theta}{2}\ket{0}+e^{i\phi}\sin \frac{\theta}{2}\ket{1}}$. we have
1. $\displaystyle{X=\begin{pmatrix}0&1\\1&0\end{pmatrix},Y=\begin{pmatrix}0&-i\\i&0\end{pmatrix},Z=\begin{pmatrix}1&0\\0&-1\end{pmatrix}}$. they are also unitaru and Hermitian, which means we can use them as quantum gates and measurement operators.
2. a general rotation, Euler angles or axis-angle representation. $\displaystyle{R_{\vec{n}}(\theta)=\exp\left(-i\theta\frac{\vec{\sigma}\cdot \vec{n}}{2}\right)=\cos \frac{\theta}{2} \hat{I}-i\sin \frac{\theta}{2}(\vec{n}\cdot \vec{\sigma})}$
3. Hadamard gate: $\displaystyle{H=\frac{1}{\sqrt{2}}\begin{pmatrix}1&1\\1&-1\end{pmatrix}=\frac{X+Z}{\sqrt{ 2 }}=R_{\frac{\hat{x}+\hat{z}}{\sqrt{ 2 }}}(\pi)}$
	1. $\displaystyle{H\ket{0}=\frac{1}{\sqrt{ 2 }}(\ket{0}+\ket{1})=\ket{\to}, H\ket{1}=\frac{1}{\sqrt{ 2 }}(\ket{0}-\ket{1})=\ket{\leftarrow}}$. some kind of Fourier transform. Shor's algorithm.
4. phase gate: $\displaystyle{S=\begin{pmatrix}1 & 0 \\ 0 & i\end{pmatrix}=R_{\hat{z}}\left( \frac{\pi}{2} \right)}$
5. $\displaystyle{\frac{\pi}{8}}$ gate: $\displaystyle{T=\begin{pmatrix}1  & 0 \\ 0 & e^{i\pi/4}\end{pmatrix}=R_{\hat{z}}\left( \frac{\pi}{8} \right)}$.

one theorem states that by combining $\displaystyle{H,S,T}$ gates, we can generate any single qubit unitary operation in an arbitrary precision. so we call them universal single qubit gates.

we need multi-qubit gates to build a quantum computer. two-qubit gates:
1. CNOT gate: $\displaystyle{U_{CNOT}=\ket{0}\bra{0}\otimes I+\ket{1}\bra{1}\otimes X_{2}}$. it flips the target qubit if the control qubit is $\displaystyle{\ket{1}}$.
	1. some generalization of XOR in classical logic.
	2. be used to create entanglement. for example, $\displaystyle{U_{CNOT}\ket{+}\ket{0}=\frac{1}{\sqrt{ 2 }}(\ket{00}+\ket{11})}$.
	3. CU gate: $\displaystyle{U_{CU}=\ket{0}\bra{0}\otimes I+\ket{1}\bra{1}\otimes U}$. it applies $U$ on the target qubit if the control qubit is $\displaystyle{\ket{1}}$.

for a general rotation $\displaystyle{U=e^{i\alpha}R_{z}(\beta)R_{y}(\gamma)R_{z}(\delta)=e^{i\alpha}AXBXC}$, where

$$\begin{align}
A & =R_{z}(\beta)R_{y}\left( \frac{\gamma}{2} \right) \\
B & =R_{y}\left( -\frac{\gamma}{2} \right)R_{z}\left( -\frac{\beta+\delta}{2} \right) \\
C & =R_{z}\left( \frac{\delta-\beta}{2} \right)
\end{align}$$

then we have the following theorem:

any multi-qubit unitary operation can be decomposed into a sequence of single qubit gates and CNOT gates. for example, a CU gate can be decomposed as follows:

$$\begin{align}
U_{CU} & =(I\otimes C)\cdot U_{CNOT}\cdot (I\otimes B)\cdot U_{CNOT}\cdot (I\otimes A)\cdot(e^{-i\alpha}\otimes I)
\end{align}$$

2. SWAP gate: $\displaystyle{U_{SWAP}\ket{\psi}\ket{\phi}=\ket{\phi}\ket{\psi}}$. it can be decomposed into three CNOT gates as $\displaystyle{U_{SWAP}=U_{CNOT}^{12}U_{CNOT}^{21}U_{CNOT}^{12}}$.

measurements

Hermitian operator $\displaystyle{M=\sum _{n}\lambda _{n}\ket{n}\bra{n}}$. for a $\displaystyle{\ket{\psi}}$, what would happen if we measure $\displaystyle{M}$? we may get $\displaystyle{\lambda _{n}}$ with probability $\displaystyle{p_{n}=|\bra{n}\ket{\psi}|^{2}}$, and the post-measurement state would be $\displaystyle{\ket{n}}$.

quantum transportation protocol. ALICE has a qubit $\displaystyle{\ket{\psi}=\alpha \ket{0}+\beta \ket{1}}$ that she wants to send to BOB. however, the quantum channel between them is noisy. how can she send the qubit to BOB faithfully? she and BOB share an EPR pair $\displaystyle{\ket{\Phi^{+}}_{AB}=\frac{1}{\sqrt{ 2 }}(\ket{00}+\ket{11})}$. the total state is $\displaystyle{\ket{\psi}_{1}\otimes \ket{\Phi^{+}}_{23}=\frac{1}{\sqrt{ 2 }}[\alpha \ket{0}_{1}(\ket{00}+\ket{11})_{23}+\beta \ket{1}_{1}(\ket{00}+\ket{11})_{23}]}$. ALICE first perform a CNOT gate on qubits $\displaystyle{1}$ and $\displaystyle{2}$, then a Hadamard gate on qubit $\displaystyle{1}$. the state becomes

$$\begin{align}
\frac{1}{2}(a(\ket{1} +\ket{0} )_{1}(\ket{00}_{23}+\ket{11} _{23})+b(\ket{0}_{1}-\ket{1} _{1} )(\ket{10} _{23}+\ket{01} _{23}))
\end{align}$$

and then perform a measurement $\displaystyle{M}$ (assume $\displaystyle{M=Z}$) on qubit $\displaystyle{1}$ and $\displaystyle{2}$. the possible outcomes are

| state                                               | outcome | prob                         |
| --------------------------------------------------- | ------- | ---------------------------- |
| $\displaystyle{\frac{1}{2}(a\ket{000}+b\ket{001})}$ | 00      | $\displaystyle{\frac{1}{4}}$ |
| $\displaystyle{\frac{1}{2}(a\ket{011}+b\ket{010})}$ | 01      | $\displaystyle{\frac{1}{4}}$ |
| $\displaystyle{\frac{1}{2}(a\ket{100}-b\ket{101})}$ | 10      | $\displaystyle{\frac{1}{4}}$ |
| $\displaystyle{\frac{1}{2}(a\ket{111}-b\ket{110})}$ | 11      | $\displaystyle{\frac{1}{4}}$ |

and ALICE call BOB to tell him the measurement result. BOB can apply corresponding gates to recover $\displaystyle{\ket{\psi}}$...

it's no way to determin $\displaystyle{\ket{\psi}}$ by only one copy of it. this is called no-cloning theorem.

its hard to provide a gate for every possible measurement. for a measurement $\displaystyle{M}$ both unitary and Hermitian, for example, consider $\displaystyle{\ket{\psi}\otimes \ket{0}}$, and act $\displaystyle{(I\otimes H_{2})\cdot U_{CM}^{21}\cdot(I\otimes H_{2})}$ and measure the second qubit, the possible outcomes are

$$\begin{align}
 & \ket{\psi} \otimes \frac{1}{\sqrt{ 2 }}(\ket{0} +\ket{1} )\to \frac{1}{\sqrt{ 2 }}(\ket{\psi} \otimes \ket{0} +M\ket{\psi} \otimes \ket{1} ) \\
 & \to \frac{1}{2}(\ket{\psi} +M\ket{\psi} )\otimes \ket{0} +\frac{1}{2}(\ket{\psi} -M\ket{\psi} )\otimes \ket{1} \\
 & = \frac{1}{2}(I+M)\ket{\psi} \otimes \ket{0} +\frac{1}{2}(I-M)\ket{\psi} \otimes \ket{1}
\end{align}$$

this can be generalized to any measurement with product of Pauli matrices. 

noise and correction. density matrix $\displaystyle{\rho=\sum _{i}p_{i}\ket{\psi _{i}}\bra{\psi _{i}}}$. $\displaystyle{\rho}$ is Hermitian, $\displaystyle{\mathrm{Tr}\rho=1}$, and positive definite. under unitary evolution, $\displaystyle{\rho \to U\rho U^{\dagger}}$. and under measurement, $\displaystyle{\rho \to \frac{P_{n}\rho P_{n}}{\mathrm{Tr}(P_{n}\rho P_{n})}}$ with probability $\displaystyle{\mathrm{Tr}(P_{n}\rho P_{n})}$, where $P_{n} =\sum _{i}\ket{n_{i}}\bra{n_{i}}$ is the projection operator corresponding to outcome $\displaystyle{n}$.

so what is POVM (positive operator valued measurement)? a set of positive operators $\displaystyle{\{E_{n}\}}$ that satisfy $\displaystyle{\sum _{n}E_{n}=I}$. for a state $\displaystyle{\rho}$, the probability of outcome $\displaystyle{n}$ is $\displaystyle{p_{n}=\mathrm{Tr}(E_{n}\rho)}$. we can always express $\displaystyle{E_{n}=M_{n}^{\dagger}M_{n}}$, where $\displaystyle{M_{n}}$ is called measurement operator. after measurement, the state becomes $\displaystyle{\rho \to \frac{M_{n}\rho M_{n}^{\dagger}}{\mathrm{Tr}(E_{n}\rho)}}$.

the difference between POVM and projective measurement is that in projective measurement, the measurement operators are orthogonal projectors, while in POVM, they can be any positive operators.

here is a conjecture that under noise, the evolution of $\displaystyle{\rho}$ can be expressed as $\displaystyle{\rho \to \sum _{k}E_{k}\rho E_{k}^{\dagger}}$, where $\displaystyle{\sum _{k}E_{k}^{\dagger}E_{k}=I}$. this is called operator-sum representation or Kraus representation.

quantum noise and quantum operations.

consider a system $\displaystyle{S}$ and an environment $\displaystyle{E}$, with $\displaystyle{\rho _{SE}}$ and some copies. we want to measure $\displaystyle{\mathcal{O}_{S}}$, then the expectation value is

$$\begin{align}
\braket{ \mathcal{O}_{S} }  & =\mathrm{Tr}_{SE}((\mathcal{O}_{S}\otimes I_{E})\rho _{SE}) \\
 & =\mathrm{Tr}_{S}(\mathcal{O}_{S}\rho _{S}) \\
\rho _{S} & =\mathrm{Tr}_{E}\rho _{SE}
\end{align}$$

here we do a partial trace over the environment to get the reduced density matrix of the system $\displaystyle{\rho _{S}}$.

