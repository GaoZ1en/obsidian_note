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

$$\begin{align} \\
XY^{n}X & = (XYX)^{n} \\
 & =(-1)^{n}Y^{n} \\
XR_{y}(\theta)X & =\sum ^{\infty}_{n=0}\left( \frac{-i\theta}{2} \right)^{n}XY^{n}X \\
 & =\sum ^{\infty}_{n=0}\left( \frac{i\theta}{2} \right)^{n}Y^{n} \\
 & =R_{y}(-\theta)
\end{align}$$

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

## exersice 4.21

verify the following circuit identity

![image](http://100.94.165.49:8080/i/c5376e56-2d5c-452a-8fb4-abb41b2626e1.jpg)

*sol*.

let $\displaystyle{\ket{\psi}=a\ket{0}_{3}+b\ket{1}_{3}}$ be the target qubit.
1. the control qubit is $\displaystyle{\ket{00}_{12}}$. the target qubit remains unchanged. and since all the CNOT gates' control qubit is $\displaystyle{\ket{0}}$, then RHS act the same as LHS.
2. the control qubit is $\displaystyle{\ket{01}_{12}}$. the target qubit remains unchanged. RHS implies that $\displaystyle{VV^{\dagger}=I}$ act on the target qubit, which is also unchanged. so LHS act the same as RHS.
3. the control qubit is $\displaystyle{\ket{10}_{12}}$. the target qubit remains unchanged. RHS implies that $\displaystyle{V^{\dagger}V=I}$ act on the target qubit, which is also unchanged. so LHS act the same as RHS.
4. the control qubit is $\displaystyle{\ket{11}_{12}}$. the target qubit becomes $\displaystyle{U\ket{\psi}}$. RHS implies that $\displaystyle{V^{2}=U}$ act on the target qubit, which is also $\displaystyle{U\ket{\psi}}$. so LHS act the same as RHS.

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

1. for $\displaystyle{U=R_{x}(\theta)=R_{z}\left( -\frac{\pi}{2} \right)R_{y}(\theta)R_{z}\left( \frac{\pi}{2} \right)}$, we have $\displaystyle{A=R_{z}(-\pi/2)R_{y}(\theta/2),B=R_{y}(\theta/2),C=R_{z}(\pi/2)}$, hence

$$\begin{align}
C^{1}(R_{x}(\theta)) & =(I\otimes R_{z}(-\pi/2)R_{y}(\theta/2)) \cdot CNOT \cdot (I\otimes R_{y}(-\theta/2)) \cdot CNOT \cdot (I\otimes R_{z}(\pi/2))
\end{align}$$

2. for $\displaystyle{U=R_{y}(\theta)}$, we have $\displaystyle{\alpha=0,A=R_{y}(\theta/2),B=R_{y}(-\theta/2),C=I}$, hence

$$\begin{align}
C^{1}(R_{y}(\theta)) & =(I\otimes R_{y}(\theta/2)) \cdot CNOT \cdot (I\otimes R_{y}(-\theta/2)) \cdot CNOT
\end{align}$$

## exercise 4.24

verify that the Toffoli gate can be constructed as follows:

![image](http://100.94.165.49:8080/i/ba3e11f4-9967-4122-b31e-88c6f0cf21b1.jpg)

*sol*.

suppose the target qubit is $\displaystyle{\ket{\psi}=a\ket{0}_{3}+b\ket{0}_{3}}$.
1. the control qubits are $\displaystyle{\ket{00}_{12}}$. after the action of all gates, the first control qubit becomes $\displaystyle{T\ket{0}_{1}=\ket{0}_{1}}$, the second control qubit becomes $\displaystyle{ST^{\dagger}T^{\dagger}\ket{0}_{2}=\ket{0}_{2}}$, and the target qubit becomes $\displaystyle{HTT^{\dagger}TT^{\dagger}H\ket{\psi}=H^{2}\ket{\psi}=\ket{\psi}}$. so the whole state remains unchanged.
2. the control qubits are $\displaystyle{\ket{01}_{12}}$. after the action of all gates, the first control qubit becomes $\displaystyle{T\ket{0}_{1}=\ket{0}_{1}}$, the second control qubit becomes $\displaystyle{ST^{\dagger}T^{\dagger}\ket{1}_{2}=\ket{1}_{2}}$, and the target qubit becomes $\displaystyle{HTT^{\dagger}XTT^{\dagger}XH\ket{\psi}=\ket{\psi}}$. so the whole state remains unchanged.
3. the control qubits are $\displaystyle{\ket{10}_{12}}$. after the action of all gates, the first control qubit becomes $\displaystyle{T\ket{1}_{1}=e^{i\pi/4}\ket{1}_{1}}$, the second control qubit becomes $\displaystyle{SXT^{\dagger}XT^{\dagger}\ket{0}_{2}=e^{i\pi/4}\ket{0}_{2}}$, and the target qubit becomes $\displaystyle{HTXT^{\dagger}TXT^{\dagger}H\ket{\psi}=\ket{\psi}}$. so the whole state remains unchanged.
4. the control qubits are $\displaystyle{\ket{11}_{12}}$. after the action of all gates, the first control qubit becomes $\displaystyle{T\ket{1}_{1}=e^{i\pi/4}\ket{1}_{1}}$, the second control qubit becomes $\displaystyle{SXT^{\dagger}XT^{\dagger}\ket{1}_{2}=e^{i\pi/4}\ket{1}_{2}}$, and the target qubit becomes $\displaystyle{HTXT^{\dagger}XTXT^{\dagger}XH\ket{\psi}=-iX\ket{\psi}}$. so NOT gate is applied to the target qubit, up to a global phase.

as a result, the whole circuit acts the same as Toffoli gate, up to a global phase.

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

*sol*. the action of the circuit is a permutation on the basis states:

$$\begin{align}
\ket{001} \to \ket{010}\to \ket{011} \to \ket{100} \to \ket{101} \to \ket{110} \to \ket{111} \to \ket{001}
\end{align}$$

and remains $\displaystyle{\ket{000}}$ unchanged. 

![image](http://100.94.165.49:8080/i/e9a88600-3ba0-4e24-ae76-f2b3fa8db31c.jpg)

the circuit above implements the desired transformation. and we will show it
1. $\displaystyle{\ket{000}\to \ket{000}\to \ket{000}\to \ket{000}\to \ket{000}\to \ket{000}}$
2. $\displaystyle{\ket{001}\to \ket{001}\to \ket{011}\to \ket{011}\to \ket{010}\to \ket{010}}$
3. $\displaystyle{\ket{010}\to \ket{010}\to \ket{010}\to \ket{010}\to \ket{011}\to \ket{011}}$
4. $\displaystyle{\ket{011}\to \ket{111}\to \ket{101}\to \ket{100}\to \ket{100}\to \ket{100}}$
5. $\displaystyle{\ket{100}\to \ket{100}\to \ket{100}\to \ket{101}\to \ket{101}\to \ket{101}}$
6. $\displaystyle{\ket{101}\to \ket{101}\to \ket{111}\to \ket{110}\to \ket{111}\to \ket{110}}$
7. $\displaystyle{\ket{110}\to \ket{110}\to \ket{110}\to \ket{111}\to \ket{110}\to \ket{111}}$
8. $\displaystyle{\ket{111}\to \ket{011}\to \ket{001}\to \ket{001}\to \ket{001}\to \ket{001}}$
as required.

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

check that the below circuit is equivalent to the quantum teleportation circuit

![image](http://100.94.165.49:8080/i/f8fff617-7f8a-48f8-b7f4-2caca2b54b13.jpg)

*sol*. the quantum operation gates $\displaystyle{CNOT_{23}}$ and $\displaystyle{CZ_{13}}$ actually play the same role as the Bell state measurement in the quantum teleportation circuit (i.e., if the measurement result is $\displaystyle{m_{1}m_{2}}$, then the post-measurement state of qubit 3 is $\displaystyle{X^{m_{2}}Z^{m_{1}}\ket{\psi}}$). hence the two circuits are equivalent.

## exercise 4.34

suppose we have a single qubit operator $\displaystyle{U}$ with eigenvalues $\displaystyle{\pm1}$, so that $\displaystyle{U}$ is both Hermitian and unitary, so it can be regarded as an observable and a quantum gate. suppose we wish to measuer the observable $\displaystyle{U}$. that is, we derise to obtain a measurement result indicating one of the two eigenvalues, and leaving a pose-measurement state which is the corresponding eigenvector. how can this be implemented by a quantum circuit? show that the following circuit implements a measurement of $\displaystyle{U}$:

![image](http://100.94.165.49:8080/i/0580b621-ad91-47c1-b9d5-b6ca9f4ac512.jpg)

*sol*. suppose the target qubit $\displaystyle{\ket{\psi _{\mathrm{in}}}=a\ket{0}_{2}+b\ket{1}_{2}}$. after acting all the gates, the whole state becomes

$$\begin{align}
\ket{0}_{1} & \to H^{2}\ket{0} _{1}=\ket{0} \\
\ket{\psi _{\mathrm{in}}} & \to \frac{1+U}{2}\ket{\psi _{\mathrm{in}}}
\end{align}$$

and

$$\begin{align}
\ket{1} _{1} & \to H^{2}\ket{1} _{1}=\ket{1}_{1} \\
\ket{\psi _{\mathrm{in}}} & \to \frac{1-U}{2}\ket{\psi _{\mathrm{in}}} 
\end{align}$$

then $\displaystyle{\ket{\psi _{\mathrm{out}}}}$ is an eigenvector of $\displaystyle{U}$ with eigenvalue $\displaystyle{+1}$ if the measurement result is $\displaystyle{0}$, and an eigenvector of $\displaystyle{U}$ with eigenvalue $\displaystyle{-1}$ if the measurement result is $\displaystyle{1}$. as a result, the circuit implements a measurement of $\displaystyle{U}$.