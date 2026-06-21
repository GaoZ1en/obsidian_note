# problem 1

## exercise 4.2

let $\displaystyle{x}$ be a real number and $\displaystyle{A}$ a matrix such that $\displaystyle{A^{2}=I}$. show that

$$\begin{align}
\exp(iAx) & =\cos(x)I+i\sin(x)A
\end{align}$$

*sol*.

$$\begin{align}
\exp\left(iAx\right) & =\sum ^{\infty}_{n=0} \frac{i^{n}x^{n}}{n!}A^{n} \\
 & =I\sum ^{\infty}_{n=0} \frac{(-1)^{n}}{(2n)!}x^{2n}+iA\sum ^{\infty}_{i=0} \frac{(-1)^{n}}{(2n+1)!}x^{2n+1} \\
 & =\cos(x)I+i\sin(x)A
\end{align}$$

## exercise 4.7

show that $\displaystyle{XYX=-Y}$ and use this to prove that $\displaystyle{XR_{y}(\theta)X=R_{y}(-\theta)}$

*sol*.

$$\begin{align}
XYX & =\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}\begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix}\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix} \\
 & =\begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix}=-Y
\end{align}$$

and then

$$
\begin{align} \\
XY^{n}X & = (XYX)^{n} \\
 & =(-1)^{n}Y^{n} \\
XR_{y}(\theta)X & =\sum ^{\infty}_{n=0}\left( \frac{-i\theta}{2} \right)^{n}XY^{n}X \\
 & =\sum ^{\infty}_{n=0}\left( \frac{i\theta}{2} \right)^{n}Y^{n} \\
 & =R_{y}(-\theta)
\end{align}
$$

## exercise 4.13

(circuit identities) prove the following three identities

$$\begin{align}
HXH & =Z, & HYH & =-Y, & HZH=X.
\end{align}$$

*sol*.

$$\begin{align}
HXH & =\frac{1}{2}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix}\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix} \\
 & =\begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix}=Z \\
HYH & =\frac{1}{2}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix}\begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix} \\
 & =\begin{pmatrix}
0 & i \\
-i & 0
\end{pmatrix}=-Y \\
HZH & =\frac{1}{2}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix}\begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix} \\
 & =\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}=X
\end{align}$$

## exercise 4.14

show that $\displaystyle{HTH=R_{x}\left( \frac{\pi}{4} \right)}$, up to a global phase

$$\begin{align}
HTH & =\frac{1}{2}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix}\begin{pmatrix}
1 & 0 \\
0 & e^{i\pi/4}
\end{pmatrix}\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix} \\
 & =\frac{1}{2}\begin{pmatrix}
1+e^{i\pi/4} & 1-e^{i\pi/4} \\
1-e^{i\pi/4} & 1+e^{i\pi/4}
\end{pmatrix} \\
 & =e^{i\pi/8}\begin{pmatrix}
\cos \frac{\pi}{8} & -i\sin \frac{\pi}{8} \\
-i\sin \frac{\pi}{8} & \cos \frac{\pi}{8}
\end{pmatrix} \\
 & =R_{x}\left( \frac{\pi}{4} \right)
\end{align}$$

# problem 2

## exercise 4.17

construct a CNOT gate from one controlled-$\displaystyle{Z}$ gate, that is, the gate whose action in the compitational basis is specified by the unitary matrix

$$\begin{align}
\text{C-}Z=\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix}
\end{align}$$

and two Hadamard gates, specifying the control and target qubits.

*sol*.

notice that CNOT gate is just a C-$\displaystyle{X}$ gate, and $\displaystyle{HXH=Z}$, we have

$$\begin{align}
\text{CNOT} & =(I\otimes H)(\text{C-}Z)(I\otimes H)
\end{align}$$

## exercise 4.18

show that

![image](http://100.94.165.49:8080/i/03376aec-c1ee-4b75-be3e-eb85ced53ed7.jpg)

*sol*.

let the upper qubit be $\displaystyle{\ket{\psi_{1}}=a\ket{0}_{1}+b\ket{1}_{1}}$ and $\displaystyle{\ket{\psi _{2}}=c\ket{0}_{2}+d\ket{1}_{2}}$, and $\displaystyle{\text{CZ}_{12}}$ be the CZ gate with qubit 1 as control and qubit 2 as target, then

$$\begin{align}
\text{CZ}_{12}\ket{\psi_{1}} \otimes \ket{\psi _{2}} & =a\ket{0} _{1}\otimes (c\ket{0} _{2}+d\ket{1} _{2})+b\ket{1} _{1}\otimes (c\ket{0} _{2}-d\ket{1} _{2}) \\
 & = ac\ket{00} +ad\ket{01} +bc\ket{10} -bc\ket{11} \\
\text{CZ}_{21}\ket{\psi _{1}} \otimes \ket{\psi _{2}} & =c\ket{0} _{2}\otimes (a\ket{0}_{1}+b\ket{1} _{1} )+d\ket{1} _{2}\otimes (a\ket{0} _{1}-b\ket{1} _{1}) \\
 & =ac\ket{00} +ad\ket{01} +bc\ket{10} -bd\ket{11} \\
 & =\text{CZ}_{12}\ket{\psi _{1}} \otimes \ket{\psi _{2}}
\end{align}$$

or we can denote the incoming state be $\displaystyle{\ket{\psi}=\sum _{ij}c_{ij}\ket{ij}}$, then

$$\begin{align}
\text{C-}Z_{12}\ket{\psi} & = \sum _{ij}c_{ij}\delta _{i 0}\ket{ij} -c_{ij}\delta _{i 1}\ket{ij}  \\
 & = \sum _{ij}c_{ij}(\delta _{j 0}-\delta _{j 1})\ket{ij} \\
 & =\text{C-}Z_{21}\ket{\psi}
\end{align}$$

## exersice 4.21

verify the following circuit identity

![image](http://100.94.165.49:8080/i/c5376e56-2d5c-452a-8fb4-abb41b2626e1.jpg)

*sol*.

let $\displaystyle{\ket{\psi}=a\ket{0}_{3}+b\ket{1}_{3}}$ be the target qubit.
1. the control qubit is $\displaystyle{\ket{00}_{12}}$. the target qubit remains unchanged. and since all the CNOT gates' control qubit is $\displaystyle{\ket{0}}$, then RHS act the same as LHS.
1. the control qubit is $\displaystyle{\ket{01}_{12}}$. the target qubit remains unchanged. RHS implies that $\displaystyle{VV^{\dagger}=I}$ act on the target qubit, which is also unchanged. so LHS act the same as RHS.
1. the control qubit is $\displaystyle{\ket{10}_{12}}$. the target qubit remains unchanged. RHS implies that $\displaystyle{V^{\dagger}V=I}$ act on the target qubit, which is also unchanged. so LHS act the same as RHS.
1. the control qubit is $\displaystyle{\ket{11}_{12}}$. the target qubit becomes $\displaystyle{U\ket{\psi}}$. RHS implies that $\displaystyle{V^{2}=U}$ act on the target qubit, which is also $\displaystyle{U\ket{\psi}}$. so LHS act the same as RHS.

as a result, LHS act the same as RHS in all cases.

## exercise 4.23

construct a $\displaystyle{C^{1}(U)}$ gate for $\displaystyle{U=R_{x}(\theta)}$ and $\displaystyle{U=R_{y}(\theta)}$, using only CNOT and single qubit gates. can you reduce the number of single qubit gates needed in the contruction from three to two?

*sol*.

for $\displaystyle{U=e^{i\alpha}R_{z}(\beta)R_{y}(\gamma)R_{z}(\delta)}$, we write

$$\begin{align}
U & =e^{i\alpha}AXBXC \\
A & =R_{z}(\beta)R_{y}(\gamma/2) \\
B & =R_{y}(-\gamma/2)R_{z}(-(\delta+\beta)/2) \\
C & =R_{z}((\delta-\beta)/2)
\end{align}$$

then the $\displaystyle{C^{1}(U)}$ gate can be constructed as

$$\begin{align}
C^{1}(U) & =(I\otimes A) \cdot CNOT \cdot (I\otimes B) \cdot CNOT \cdot (I\otimes C)\cdot(I\otimes e^{i\alpha}I)
\end{align}$$

1. for $\displaystyle{U=R_{x}(\theta)=}$

Useful conjugation identities: X R_z(φ) X = R_z(−φ), X R_y(φ) X = R_y(−φ).

1. U = R_x(θ).
- Pick A = R_y(−π/2), B = R_z(−θ/2), C = R_y(π/2). Then ABC = I and
	A X B X C = R_y(−π/2) [X R_z(−θ/2) X] R_y(π/2) = R_y(−π/2) R_z(θ) R_y(π/2) = R_x(θ).

	Hence
	C^1(R_x(θ)) = (I⊗R_y(−π/2)) · CNOT · (I⊗R_z(−θ/2)) · CNOT · (I⊗R_y(π/2)).

1. U = R_y(θ).
- Pick A = R_x(π/2), B = R_z(−θ/2), C = R_x(−π/2). Then ABC = I and
	A X B X C = R_x(π/2) [X R_z(−θ/2) X] R_x(−π/2) = R_x(π/2) R_z(θ) R_x(−π/2) = R_y(θ).

	Hence
	C^1(R_y(θ)) = (I⊗R_x(π/2)) · CNOT · (I⊗R_z(−θ/2)) · CNOT · (I⊗R_x(−π/2)).

About reducing “three single-qubit gates” to two: In general, two CNOTs plus only two single-qubit gates are insufficient for a nontrivial controlled-U. If we restrict to the form (I⊗A)·CNOT·(I⊗B)·CNOT, then to act trivially when the control is 0 we must have AB = I, which implies the action for control = 1 is A X B X = A X A^{−1} X. This cannot equal a nontrivial rotation about a fixed axis (such as R_x(θ) or R_y(θ) with generic θ) unless A commutes with X, in which case the overall unitary is trivial. Therefore, for U = R_x(θ) and U = R_y(θ), the above two-CNOT construction with three single-qubit gates (all on the target, as given) is minimal in this family; you cannot, in general, reduce it to two single-qubit gates.

## exercise 4.24

verify that the Toffoli gate can be constructed as follows:

![image](http://100.94.165.49:8080/i/ba3e11f4-9967-4122-b31e-88c6f0cf21b1.jpg)

that is

$$\begin{align}
C^{2}NOT & =(I\otimes I\otimes H)CNOT_{23}(I\otimes I\otimes T^{\dagger})CNOT_{13}(I\otimes I\otimes T)CNOT_{23}(I\otimes I\otimes T^{\dagger}) \\
 & \times CNOT_{13}(I\otimes I\otimes (TH))(I\otimes T^{\dagger}\otimes I)CNOT_{12}(I\otimes T^{\dagger}\otimes I)CNOT_{12}(T\otimes I\otimes I)(I\otimes S\otimes I)
\end{align}$$

*sol*.

## exercise 4.27

using just CNOTs and Toffoli gates, construct a quantum circuit to perform the transformation

$$\begin{align}
\begin{pmatrix}
1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 \\
0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 & 1 & 0
\end{pmatrix}
\end{align}$$

*sol*.

Label the three qubits as (q1,q2,q3) with computational bits (a,b,c) = (q1,q2,q3), where a is the most significant bit. The target permutation fixes |000⟩ and cycles the other seven states as

001 → 010 → 011 → 100 → 101 → 110 → 111 → 001.

We realize this exactly with CNOT and Toffoli using the in-place update rules

- a ← a ⊕ (b ∧ c)
- b ← b ⊕ c
- c ← c ⊕ (a ∨ b)  = c ⊕ a ⊕ b ⊕ (a ∧ b)

implemented in the following gate sequence (left to right):

- CCNOT(q2,q3 → q1)      // a ^= b&c
- CNOT(q3 → q2)          // b ^= c
- CNOT(q1 → q3)          // c ^= a  (using updated a)
- CNOT(q2 → q3)          // c ^= b  (using updated b)
- CCNOT(q1,q2 → q3)      // c ^= a&b (using updated a,b)

Correctness sketch:
- The first two lines compute a' = a ⊕ (b c) and b' = b ⊕ c, which match the desired outputs from the table.
- The final three lines realize c' = c ⊕ (a' ∨ b') = c ⊕ a' ⊕ b' ⊕ (a' b'), using only positive controls. This flips c for all inputs except 000 and 111 (after the first two steps these are the only cases with a'=b'=0), yielding exactly the needed transitions 000→000 and 111→001, and for all other inputs advances along the 7-cycle.

Thus the full sequence implements the required 8×8 permutation using only CNOTs and Toffoli gates, with |000⟩ fixed and a 7-cycle over {001,…,111}.

## exercise 4.31

let subscripts denote which qubit an operator acts on, and let $\displaystyle{C}$ be a CNOT with qubit 1 the control qubit and qubit 2 the target qubit. prove the following identities

$$\begin{align}
CX_{1}C & =X_{1}X_{2} \\
CY_{1}C & =Y_{1}X_{2} \\
CZ_{1}C & =Z_{1} \\
CX_{2}C & =X_{2} \\
CY_{2}C & =Z_{1}Y_{2} \\
CZ_{2}C & =Z_{1}Z_{2} \\
R_{z,1}(\theta)C & =CR_{z,1}(\theta) \\
R_{x,2}(\theta)C & =CR_{x,2}(\theta)
\end{align}$$

*sol*.

$$\begin{align}
CX_{1}C=\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0
\end{pmatrix}=X_{1}X_{2}
\end{align}$$

$$\begin{align}
CY_{1}C & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
0 & 0 & -i & 0 \\
0 & 0 & 0 & -i \\
i & 0 & 0 & 0 \\
0 & i & 0 & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
0 & 0 & 0 & -i \\
0 & 0 & -i & 0 \\
0 & i & 0 & 0 \\
i & 0 & 0 & 0
\end{pmatrix}=Y_{1}X_{2}
\end{align}$$

$$\begin{align}
CZ_{1}C & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix}=Z_{1}
\end{align}$$

$$\begin{align}
CX_{2}C & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=X_{2}
\end{align}$$

$$\begin{align}
CY_{2}C & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
0 & -i & 0 & 0 \\
i & 0 & 0 & 0 \\
0 & 0 & 0 & -i \\
0 & 0 & i & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
0 & -i & 0 & 0 \\
i & 0 & 0 & 0 \\
0 & 0 & 0 & i \\
0 & 0 & -i & 0
\end{pmatrix}=Z_{1}Y_{2}
\end{align}$$

$$\begin{align}
CZ_{2}C & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & 1
\end{pmatrix}=Z_{1}Z_{2}
\end{align}$$

$$\begin{align}
R_{z}(\theta) & =\begin{pmatrix}
e^{-i\theta/2} & 0 \\
0 & e^{i\theta/2}
\end{pmatrix} \\
R_{z,1}(\theta)C & =\begin{pmatrix}
e^{-i\theta/2} & 0 & 0 & 0 \\
0 & e^{-i\theta/2} & 0 & 0 \\
0 & 0 & e^{i\theta/2} & 0 \\
0 & 0 & 0 & e^{i\theta/2}
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix} = \begin{pmatrix}
e^{-i\theta/2} & 0 & 0 & 0 \\
0 & e^{-i\theta/2} & 0 & 0 \\
0 & 0 & 0 & e^{i\theta/2} \\
0 & 0 & e^{i\theta/2} & 0
\end{pmatrix} \\
 & =
\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
e^{-i\theta/2} & 0 & 0 & 0 \\
0 & e^{-i\theta/2} & 0 & 0 \\
0 & 0 & e^{i\theta/2} & 0 \\
0 & 0 & 0 & e^{i\theta/2}
\end{pmatrix}=CR_{z,1}(\theta)
\end{align}$$

$$\begin{align}
R_{x}(\theta) & =\begin{pmatrix}
\cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} \\
-i\sin \frac{\theta}{2} & \cos \frac{\theta}{2}
\end{pmatrix} \\
R_{x,2}(\theta)C & =\begin{pmatrix}
\cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} & 0 & 0 \\
 -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2} & 0 & 0 \\
0 & 0 & \cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} \\
0 & 0 & -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2}
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}=\begin{pmatrix}
\cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} & 0 & 0 \\
 -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2} & 0 & 0 \\
0 & 0 & -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2} \\
0 & 0 & \cos \frac{\theta}{2} & -i\sin \frac{\theta}{2}
\end{pmatrix} \\
 & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{pmatrix}\begin{pmatrix}
\cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} & 0 & 0 \\
 -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2} & 0 & 0 \\
0 & 0 & \cos \frac{\theta}{2} & -i\sin \frac{\theta}{2} \\
0 & 0 & -i\sin \frac{\theta}{2} & \cos \frac{\theta}{2}
\end{pmatrix}=CR_{x,2}(\theta)
\end{align}$$

# problem 3

## subproblem 1

check that the above circuit is equivalent to the quantum teleportation circuit

![image](http://100.94.165.49:8080/i/f8fff617-7f8a-48f8-b7f4-2caca2b54b13.jpg)

*sol*.

Let qubit 1 be |ψ⟩ = a|0⟩ + b|1⟩, and qubits 2–3 share |Φ+⟩ = (|00⟩+|11⟩)/√2. In standard teleportation, after Alice applies CNOT1→2 and H on qubit 1, the joint state can be written as

$$\begin{align}
\frac{1}{2} \sum_{m_1,m_2\in\{0,1\}} |m_1m_2\rangle_{12} \otimes X^{m_2} Z^{m_1} |\psi\rangle_3.
\end{align}$$

Now insert, before measuring qubits 1 and 2, the two extra gates: CX2→3 and CZ1→3. These act as controlled Pauli operations conditioned on the (about-to-be) measurement outcomes m2 and m1, respectively, so they multiply an extra factor X^{m_2} Z^{m_1} on Bob’s qubit in each branch:

$$\begin{align}
\frac{1}{2} \sum_{m_1,m_2} |m_1m_2\rangle_{12} \otimes (X^{m_2} Z^{m_1})(X^{m_2} Z^{m_1}) |\psi\rangle_3

 = \frac{1}{2} \sum_{m_1,m_2} |m_1m_2\rangle_{12} \otimes (-1)^{m_1 m_2}\,|\psi\rangle_3.
\end{align}$$

Since $(-1)^{m_1 m_2}$ is a global phase depending only on the measurement outcomes, qubit 3 is exactly |ψ⟩ and is now decoupled from qubits 1–2. Therefore:

- The modified circuit still achieves teleportation: Bob’s qubit ends up in |ψ⟩ independent of Alice’s measurement results.
- The correction rule changes: because Alice’s CX2→3 and CZ1→3 have already applied the usual $X^{m_2}Z^{m_1}$ corrections coherently, Bob should apply no further correction. If Bob were to apply the standard $X^{m_2}Z^{m_1}$ again, he would re-introduce those Paulis and not recover |ψ⟩.

Remark (operational nuance): These additional CX and CZ gates are nonlocal (they couple Alice’s qubits to Bob’s), so the protocol is no longer LOCC-only. They effectively move the classical corrections into coherent, pre-applied quantum gates, which is why Bob’s final correction becomes the identity.

## exercise 4.34

suppose we have a single qubit operator $\displaystyle{U}$ with eigenvalues $\displaystyle{\pm1}$, so that $\displaystyle{U}$ is both Hermitian and unitary, so it can be regarded as an observable and a quantum gate. suppose we wish to measuer the observable $\displaystyle{U}$. that is, we derise to obtain a measurement result indicating one of the two eigenvalues, and leaving a pose-measurement state which is the corresponding eigenvector. how can this be implemented by a quantum circuit? show that the following circuit implements a measurement of $\displaystyle{U}$:

![image](http://100.94.165.49:8080/i/0580b621-ad91-47c1-b9d5-b6ca9f4ac512.jpg)
