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

notice that

$$\begin{align}
U & =e^{i\alpha}R_{z}(\beta)R_{y}(\gamma)R_{z}(\delta) \\
 & =e^{i\alpha}AXBXC \\
A & =R_{z}(\beta)R_{y}\left( \frac{\gamma}{2} \right) \\
B & =R_{y}\left( -\frac{\gamma}{2} \right)R_{z}\left( -\frac{\delta+\beta}{2} \right) \\
C & =R_{z}\left( \frac{\delta-\beta}{2} \right)
\end{align}$$

and

$$\begin{align}
\text{CU} & =(I\otimes A)\text{CNOT}(I\otimes B)\text{CNOT}(I\otimes C)e^{i\alpha}
\end{align}$$

for $\displaystyle{U=R_{x}(\theta)}$, we have

$$\begin{align}
R_{x}(\theta) & =R_{z}\left( -\frac{\pi}{2} \right)R_{y}(\theta)R_{z}\left( \frac{\pi}{2} \right) \\
 & =AXBXC \\
A & =R_{z}\left( -\frac{\pi}{2} \right)R_{y}\left( \frac{\theta}{2} \right) \\
B & =R_{y}\left( -\frac{\theta}{2} \right)R_{z}(0)=R_{y}\left( -\frac{\theta}{2} \right) \\
C & =R_{z}\left( \frac{\pi}{2} \right)
\end{align}$$



$$\begin{align}
R_{z}\left(\frac{\pi}{2}\right) & =\exp\left(-\frac{i\pi}{4}Z\right) \\
 & =\cos \frac{\pi}{4}I -i\sin \frac{\pi}{4}Z \\
 & =\frac{1}{\sqrt{ 2 }}\begin{pmatrix}
1-i & 0 \\
0 & 1+i
\end{pmatrix} \\
R_{z}\left( -\frac{\pi}{2} \right) & =\frac{1}{\sqrt{ 2 }}\begin{pmatrix}
1+i & 0 \\
0 & 1+i
\end{pmatrix}
\end{align}$$

## exercise 4.24

verify that the Toffoli gate can be constructed as follows:

![image](http://100.94.165.49:8080/i/ba3e11f4-9967-4122-b31e-88c6f0cf21b1.jpg)

*sol*.

let the target qubit be $\displaystyle{\ket{\psi}=a\ket{0}_{3}+b\ket{1}_{3}}$.
1. the control qubits are $\displaystyle{\ket{00}_{12}}$. 

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

# problem 3

## 

check that the above circuit is equivalent to the quantum teleportation circuit

![image](http://100.94.165.49:8080/i/f8fff617-7f8a-48f8-b7f4-2caca2b54b13.jpg)

## exercise 4.34

suppose we have a single qubit operator $\displaystyle{U}$ with eigenvalues $\displaystyle{\pm1}$, so that $\displaystyle{U}$ is both Hermitian and unitary. 