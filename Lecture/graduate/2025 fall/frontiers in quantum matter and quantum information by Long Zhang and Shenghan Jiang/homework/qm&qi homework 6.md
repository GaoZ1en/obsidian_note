# problem 1

for the Steane's 7-qubit code, show that an encoding circuit can be designed as follows:

![image](http://100.94.165.49:8080/i/3ae04f5c-d9e8-4a2d-b2c6-f2e45a556018.png)

here $\displaystyle{\ket{\psi}=a\ket{0}+b\ket{1}}$. 

*sol*.

after the operation of the whole circuit...

$$\begin{align}
 & \ket{0}_{1}\otimes \ket{0} _{2}\otimes  \ket{0} _{3}\otimes \ket{0} _{4}\otimes \ket{0} _{5}\otimes (a\ket{0} _{6}+b\ket{0} _{6})\otimes \ket{0} _{7} \\
\xrightarrow{} & \frac{1}{2\sqrt{ 2 }}(\ket{0}_{1} +\ket{1} _{1})\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes (a\ket{0} _{6}+b\ket{1} _{6})\otimes \ket{0} _{7} \\
\xrightarrow{} & \frac{a}{2\sqrt{ 2 }}(\ket{0} _{1}+\ket{1} _{1})\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{0} _{6}\otimes \ket{0} _{7} \\
 & +\frac{b}{2\sqrt{ 2 }}(\ket{0} _{1}+\ket{1} _{1})\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{1} _{6}\otimes \ket{0} _{7} \\
\xrightarrow{} & \frac{a}{2\sqrt{ 2 }}\ket{0} _{1}\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{0} _{6}\otimes \ket{0} _{7} \\
 & +\frac{a}{2\sqrt{ 2 }}\ket{1} _{1}\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{0} _{6}\otimes \ket{1} _{7} \\
 & +\frac{b}{2\sqrt{ 2 }}\ket{0} _{1}\otimes (\ket{0} _{2}+\ket{1}_{2})\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1}_{4})\otimes \ket{1} _{5}\otimes \ket{1} _{6}\otimes \ket{0} _{7} \\
 & +\frac{b}{2\sqrt{ 2 }}\ket{1} _{1}\otimes (\ket{0} _{2}+\ket{1} _{2})\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{1}_{6}\otimes \ket{1} _{7} \\
\xrightarrow{} & \frac{a}{2\sqrt{ 2 }}\ket{0} _{1}\otimes \ket{0} _{2}\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{0} _{6}\otimes \ket{0} _{7} \\
 & +\frac{a}{2\sqrt{ 2 }}\ket{0} _{1}\otimes \ket{1} _{2}\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{1} _{6}\otimes \ket{1} _{7} \\
 & +\frac{a}{2\sqrt{ 2 }}\ket{1} _{1}\otimes \ket{0} _{2}\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{0} _{6}\otimes \ket{1} _{7} \\
 & +\frac{a}{2\sqrt{ 2 }}\ket{1} _{1}\otimes \ket{1} _{2}\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{1} _{6}\otimes \ket{0} _{7} \\
& +\frac{b}{2\sqrt{ 2 }}\ket{0} _{1}\otimes \ket{0} _{2}\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{1} _{6}\otimes \ket{0} _{7} \\
 & +\frac{b}{2\sqrt{ 2 }}\ket{0} _{1}\otimes \ket{1} _{2}\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{1} _{5}\otimes \ket{0} _{6}\otimes \ket{1} _{7} \\
& +\frac{b}{2\sqrt{ 2 }}\ket{1} _{1}\otimes \ket{0} _{2}\otimes \ket{0} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{1} _{6}\otimes \ket{1} _{7} \\
 & +\frac{b}{2\sqrt{ 2 }}\ket{1} _{1}\otimes \ket{1}_{1}\otimes \ket{1} _{3}\otimes (\ket{0} _{4}+\ket{1} _{4})\otimes \ket{0} _{5}\otimes \ket{0}_{6}\otimes \ket{0} _{7} \\
\xrightarrow{} & \frac{a}{2\sqrt{ 2 }}(\ket{0000000}+\ket{0001111}+\ket{0110011}+\ket{0111100}+\ket{1010101}+\ket{1011010}+\ket{1100110}+\ket{1101001}) \\
 & +\frac{b}{2\sqrt{ 2 }}(\ket{0010110}+\ket{0011001}+\ket{0100101}+\ket{0101010}+\ket{1000011}+\ket{1001100}+\ket{1110000}+\ket{1111111}) \\
= & a\ket{0_{L}}+b\ket{1_{L}}
\end{align}$$

which is exactly the logical qubit state of the Steane code. therefore the circuit is correct.

# problem 2

design a quantum circuit to measure $\displaystyle{X_{1}Z_{2}Y_{3}}$ of the data block fault-tolerantly

*sol*.

first, note that by applying basis rotations, we can convert the measurement of $\displaystyle{X_{1}Z_{2}Y_{3}}$ into a measurement of $\displaystyle{Z_{1}Z_{2}Z_{3}}$. since $\displaystyle{HXH=Z}$ and $\displaystyle{HS^{\dagger}YSH=Z}$, so we apply $H_1$ and $H_3 S^\dagger_3$ before the coupling, and reverse them ($H_1$ and $S_3 H_3$) afterwards.

the circuit is:

![image](http://100.94.165.49:8080/i/e2af7db3-5d00-4fe4-be48-a721494d577d.png)

this circuit measures $\displaystyle{X_{1}Z_{2}Y_{3}}$ fault-tolerantly, since the ancilla qubits are prepared in a GHZ state, any single ancilla error will only affect one of the measurement outcomes $M_i$, and will not propagate to multiple data qubits.

calculate the parity $s = M_1 \oplus M_2 \oplus M_3 \oplus M_4$.
- if $s=0$, the eigenvalue of $X_1 Z_2 Y_3$ is $+1$.
- if $s=1$, the eigenvalue of $X_1 Z_2 Y_3$ is $-1$.

# problem 3

find the logical $\displaystyle{\bar{X}}$ and $\displaystyle{\bar{Z}}$ for the 5-qubit stabilizer code

*sol*.

the stabilizer generators of the 5-qubit code are given by

$$\begin{align}
S_{1} & = X_{1}Z_{2}Z_{3}X_{4}I_{5} \\
S_{2} & = I_{1}X_{2}Z_{3}Z_{4}X_{5} \\
S_{3} & = X_{1}I_{2}X_{3}Z_{4}Z_{5} \\
S_{4} & = Z_{1}X_{2}I_{3}X_{4}Z_{5}
\end{align}$$

notice that

$$\begin{align}
\bar{X} & =X_{1}X_{2}X_{3}X_{4}X_{5} \\
\bar{Z} & =Z_{1}Z_{2}Z_{3}Z_{4}Z_{5}
\end{align}$$

satisfy the requirements for logical operators, i.e., commute with all $\displaystyle{S_{i}}$ and anticommute with each other, and are independent of the stabilizers. therefore, $\bar{X} = X^{\otimes 5}$ and $\bar{Z} = Z^{\otimes 5}$ are the logical operators.

# problem 4

show that for the Steane's code, $\displaystyle{\bar{X}}$ and $\displaystyle{\bar{Z}}$ can be simplified to products of only 3 physical qubit operators

*sol*.

notice that the standard logical operators for the Steane code are given by

$$\begin{align}
\bar{X} & =X_{1}X_{2}X_{3}X_{4}X_{5}X_{6}X_{7} \\
\bar{Z} & =Z_{1}Z_{2}Z_{3}Z_{4}Z_{5}Z_{6}Z_{7}
\end{align}$$

and the stabilizer group is generated by

$$\begin{align}
S_{1}^{X} & =X_{4}X_{5}X_{6}X_{7} \\
S_{2}^{X} & =X_{2}X_{3}X_{6}X_{7} \\
S_{3}^{X} & =X_{1}X_{3}X_{5}X_{7} \\
S_{1}^{Z} & =Z_{4}Z_{5}Z_{6}Z_{7} \\
S_{2}^{Z} & =Z_{2}Z_{3}Z_{6}Z_{7} \\
S_{3}^{Z} & =Z_{1}Z_{3}Z_{5}Z_{7}
\end{align}$$

since logical operators are defined up to multiplication by stabilizers, we can simplify them by multiplying by appropriate stabilizers. for example, we can use $S_1^X$ and $S_1^Z$ and get

$$\begin{align}
\bar{X}' & =\bar{X}S_{1}^{X}=X_{1}X_{2}X_{3} \\
\bar{Z} & =\bar{Z}S_{1}^{Z}=Z_{1}Z_{2}Z_{3}
\end{align}$$

therefore, the logical operators can be simplified to $\bar{X} = X_1 X_2 X_3$ and $\bar{Z} = Z_1 Z_2 Z_3$. and we can also use other combinations of stabilizers to get different simplifications.

# problem 5

check that the above circuit implements the CNOT gate fault-tolerantly

![image](http://100.94.165.49:8080/i/1ae74c03-6b44-4b87-a38f-cfb448eb41e9.png)

here we denote the the first measurement outcome as $\displaystyle{(-1)^{a}}$, the second as $\displaystyle{(-1)^{b}}$ and the third as $\displaystyle{(-1)^{c}}$.

*sol*.

let the initial state of two data qubits be $\displaystyle{\ket{\psi}_{12}=\sum _{i,j}c_{ij}\ket{i}_{1}\ket{j}_{2}}$, and the ancilla be $\displaystyle{\ket{0}_{a}}$. the initial total state is

$$\begin{align}
\ket{\text{in}}  & =\sum _{i,j}c_{ij}\ket{i} _{1}\ket{j} _{2}\ket{0} _{a}
\end{align}$$

1. measure $\displaystyle{X_{a}X_{2}}$ with outcome $\displaystyle{(-1)^{a}}$. the projector is $\displaystyle{P_{a}=\frac{1+(-1)^{a}X_{a}X_{2}}{2}}$. the state becomes

$$\begin{align}
\ket{\Psi_{1}} & =P_{a}\ket{\text{in}} \\
 & =\sum _{ij}c_{ij}\ket{i}_{1}(\ket{j} _{2}\ket{0}_{a}+(-1)^{a}\ket{j+1}_{2}\ket{1} _{a} )
\end{align}$$

2. measure $\displaystyle{Z_{1}Z_{a}}$ with outcome $\displaystyle{(-1)^{b}}$. the projector is $\displaystyle{P_{b}=\frac{1+(-1)^{b}Z_{1}Z_{a}}{2}}$. the state becomes

$$\begin{align}
\ket{\Psi_{2}}  & =P_{b}\ket{\Psi_{1}}  \\
 & \propto\sum _{ij}c_{ij}(1+(-1)^{b}Z_{1}Z_{a})\ket{i}_{1}\ket{j} _{b}\ket{0} _{a}+(-1)^{a}c_{ij}(1+(-1)^{b}Z_{1}Z_{a})\ket{i}_{1}\ket{j+1} _{2}\ket{1} _{a} \\
 & =\sum _{ij}c_{ij}(1+(-1)^{b+i})\ket{i}_{1}\ket{j} _{2}\ket{0} _{a}+(-1)^{a}c_{ij}(1+(-1)^{b+i+1})\ket{i}_{1}\ket{j+1} _{2}\ket{1} _{a} \\
\end{align}$$

the term $\displaystyle{(1+(-1)^{b+i})}$ is non-zero only when $\displaystyle{i=b}$, and $\displaystyle{(1+(-1)^{b+i+1})}$ is non-zero only when $\displaystyle{i=b+1}$, thus the sum over $\displaystyle{i}$ collapses to

$$\begin{align}
\ket{\Psi_{2}} & \propto \sum _{j}c_{bj}\ket{b} _{1}\ket{j} _{2}\ket{0} _{a}+(-1)^{a}c_{b+1,j}\ket{b+1} _{1}\ket{j+1} _{2}\ket{1} _{a}
\end{align}$$

3. measure $\displaystyle{X_{a}}$ with outcome $\displaystyle{(-1)^{c}}$, and we project onto the eigenstate $\displaystyle{\ket{+_{c}}_{a}=\frac{\ket{0}+(-1)^{c}\ket{1}}{\sqrt{2}}}$. the state becomes

$$\begin{align}
\ket{\Psi_{3}} & =\braket{ +_{c}|\Psi_{2} } \\
 & \propto\sum _{j} c_{bj}\ket{b} _{1}\ket{j} _{2}+(-1)^{a+c}c_{b+1,j}\ket{b+1} _{1}\ket{j+1} _{2}
\end{align}$$

4. corrections by applying $\displaystyle{Z_{1}^{a+c}X_{2}^{b}}$, the state becomes

$$\begin{align}
\ket{\text{out}} & = Z_{1}^{a+c}X_{2}^{b}\ket{\Psi_{3}} \\
 & =\sum _{j}c_{b,j}Z_{1}^{a+c}X_{2}^{b}\ket{b} _{1}\ket{j} _{2}+(-1)^{a+c}c_{b+1,j}\ket{b+1} _{1}\ket{j+1} _{2} \\
 & =\sum _{j}c_{b,j}(-1)^{b(a+c)}\ket{b} _{1}\ket{j+b} _{2}+(-1)^{a+c}c_{b+1,j}(-1)^{(b+1)(a+c)}\ket{b+1} _{1}\ket{j+1+b} _{2} \\
 & =(-1)^{b(a+c)}\sum _{j}c_{b,j}\ket{b} _{1}\ket{j+b} _{2}+c_{b+1,j}\ket{b+1} _{1}\ket{j+1+b} _{2} \\
 & =(-1)^{b(a+c)}\sum _{i,j}c_{i,j}\ket{i} _{1}\ket{j+i} _{2} \\
 & \propto CNOT_{1\to2}\ket{\psi} _{12} 
\end{align}$$

therefore, the circuit implements the CNOT gate fault-tolerantly.

# problem 6

check that these circuits implements the Hadamard gate and the phase gate fault-tolerantly, respectively

![image](http://100.94.165.49:8080/i/85a31753-f164-47e0-b5d9-2266e754823d.png)

![image](http://100.94.165.49:8080/i/ded40a58-96af-4a31-8055-089f44d14125.png)

here we denote the first measurement outcome as $\displaystyle{(-1)^{a}}$ and the second as $\displaystyle{(-1)^{b}}$.

*sol*.

we first consider the Hadamard gate circuit. let the initial state of the data qubit be $\displaystyle{\ket{\psi}= c_{i}\ket{i}}$, and the ancilla be $\displaystyle{\ket{0}_{a}}$. the initial total state is

$$\begin{align}
\ket{\text{in}} & =\sum _{i}c_{i}\ket{i}\ket{0} _{a}
\end{align}$$

1. measure $\displaystyle{Z_{1}X_{a}}$ with outcome $\displaystyle{(-1)^{a}}$. the projector is $\displaystyle{P_{a}=\frac{1+(-1)^{a}Z_{1}X_{a}}{2}}$. the state becomes

$$\begin{align}
\ket{\Psi_{1}} & =P_{a}\ket{\text{in}}  \\
 & \propto \sum _{i}c_{i}\ket{i} \ket{0} _{a}+c_{i}(-1)^{a+i}\ket{i} \ket{1} _{a} \\
 & =\sum _{i}c_{i}\ket{i} (\ket{0} _{a}+(-1)^{a+i}\ket{1} _{a} )
\end{align}$$
2. measure $\displaystyle{X_{1}}$ with outcome $\displaystyle{(-1)^{b}}$, and we project onto the eigenstate $\displaystyle{\ket{+_{b}}=\frac{\ket{0}+(-1)^{b}\ket{1}}{\sqrt{2}}}$. the state becomes

$$\begin{align}
\ket{\Psi_{2}}  & =\braket{ +_{b}|\Psi_{1} } \\
 & =\sum _{i}c_{i}\braket{ +_{b}|i}(\ket{0} _{a}+(-1)^{a+i}\ket{1} _{a} ) \\
 & \propto\sum _{i}c_{i}(\delta _{i,0}+(-1)^{b}\delta _{i,1}) (\ket{0} _{a}+(-1)^{a+i}\ket{1} _{a})
\end{align}$$

3. corrections by applying $\displaystyle{X^{b}Z^{a}}$, the state becomes

$$\begin{align}
\ket{\text{out}}  & =X^{b}Z^{a}\ket{\Psi_{2}}  \\
 & \propto \sum _{i}c_{i}(\delta _{i,0}+(-1)^{b}\delta _{i,1})(\ket{b} _{a}+(-1)^{i}\ket{b+1} _{a}) \\
 & =(c_{0}+(-1)^{b}c_{1})\ket{b} _{a}+(c_{0}-(-1)^{b}c_{1})\ket{b+1} _{a}
\end{align}$$

if $\displaystyle{b=0}$, then the output state is $\displaystyle{\ket{\text{out}}=(c_{0}+c_{1})\ket{0}_{a}+(c_{0}-c_{1})\ket{1}_{a}}$, which is exactly $\displaystyle{H\ket{\psi}}$; if $\displaystyle{b=1}$, then the output state is $\displaystyle{\ket{\text{out}}=(c_{0}-c_{1})\ket{1}_{a}+(c_{0}+c_{1})\ket{0}_{a}}$, which is also $\displaystyle{H\ket{\psi}}$ up to a global phase. therefore, the circuit implements the Hadamard gate fault-tolerantly.

the consider the second circuit. the first step is the same, so we can directly consider the second step.

2. measure $\displaystyle{Y_{a}}$ with outcome $\displaystyle{(-1)^{b}}$, and we project onto the eigenstate $\displaystyle{\ket{+_{b}}_{a}=\frac{\ket{0}_{a}+i(-1)^{b}\ket{1}_{a}}{\sqrt{2}}}$. the state becomes

$$\begin{align}
\ket{\Psi_{2}} & =\braket{ +_{b}|\Psi_{1} } & \\
 & \propto\sum _{i}c_{i}\ket{i} (\bra{0}_{a}-i(-1)^{b}\bra{1}_{a} )(\ket{0} _{a}+(-1)^{a+i}\ket{1} _{a} ) \\
 & =\sum _{i}c_{i}\ket{i}(1-i(-1)^{a+b+i}) 
\end{align}$$

3. corrections by applying $\displaystyle{Z^{a+b}}$, the state becomes

$$\begin{align}
\ket{\text{out}} & =Z^{a+b}_{1} \ket{\Psi_{2}}  \\
 & =\sum _{i}c_{i}(-1)^{i(a+b)}(1-i(-1)^{a+b+i})\ket{i} \\
 & =c_{0}(1-i(-1)^{a+b})\ket{0}+ic_{1}(1-i(-1)^{a+b})\ket{1} \\
 & = (1-i(-1)^{a+b}))(c_{0}\ket{0}+ic_{1}\ket{1})
\end{align}$$

which is exactly $\displaystyle{S\ket{\psi}}$ up to a global phase. therefore, the circuit implements the phase gate fault-tolerantly.

# problem 7

check that these circuits implements the T gate and prepare the magic state $\displaystyle{HT\ket{\bar{0}}}$ for the Steane's code fault-tolerantly

![image](http://100.94.165.49:8080/i/0c1220a9-eff8-4886-8fe7-e03b5d19dc02.png)

here we denote the measurement outcome as $\displaystyle{(-1)^{a}}$.

*sol*.

after the operation of transveral $\displaystyle{T}$ gates, $\displaystyle{\bar{H}}$ gate, CNOT 2->1 gate and transveral $\displaystyle{T^{\dagger}}$ gates, the state becomes

$$\begin{align}
\ket{\Psi_{1}}  & =(T^{\dagger})^{\otimes 7}T^{\otimes 7}\ket{\bar{0}}\otimes \ket{\bar{0}} +(T^{\dagger})^{\otimes 7}\bar{X}T^{\otimes 7}\ket{\bar{0}} \otimes \ket{\bar{1}}  \\
 & =\ket{\bar{0}} \otimes \ket{\bar{0}} +(T^{\dagger}XT)^{\otimes 7}\ket{\bar{0}} \otimes \ket{\bar{1}}  
\end{align}$$

after measuring $\displaystyle{\bar{X}}$ on the second block with outcome $\displaystyle{(-1)^{a}}$, and projecting onto the eigenstate $\displaystyle{\ket{+_{a}}=\frac{\ket{\bar{0}}+(-1)^{a}\ket{\bar{1}}}{\sqrt{2}}}$, the state becomes

$$\begin{align}
\ket{\Psi_{2}}  & =\braket{+_{a}|\Psi_{1}}  \\
 & \propto \ket{\bar{0}} +(-1)^{a}(T^{\dagger}XT)^{\otimes 7}\ket{\bar{0}}
\end{align}$$

finally apply the correction $\displaystyle{\bar{Z}^{a}}$. note that $\displaystyle{T^{\dagger}XT=e^{-i\pi /4}XS}$, so $\displaystyle{(T^{\dagger}XT)^{\otimes 7}=e^{-i7\pi /4}X^{\otimes 7}S^{\otimes 7}=e^{i\pi /4}\bar{X}\bar{S}^{\dagger}}$. also note that $\displaystyle{\bar{S}^{\dagger}\ket{\bar{0}}=\ket{\bar{0}}}$. the state becomes

$$\begin{align}
\ket{\text{out}} & =\bar{Z}^{a}\ket{\Psi_{2}}  \\
 & =\bar{Z}^{a}\ket{\bar{0}} +(-1)^{a}\bar{Z}^{a}(T^{\dagger}XT)^{\otimes 7}\ket{\bar{0}} \\
 & =\ket{\bar{0}} +(-1)^{a}\bar{Z}^{a}e^{i\pi /4}\bar{X}\bar{S}^{\dagger}\ket{\bar{0}} \\
 & =\ket{\bar{0}} +(-1)^{a}e^{i\pi /4}\bar{Z}^{a}\ket{\bar{1}} \\
 & =\ket{\bar{0}} +(-1)^{a}e^{i\pi /4}(-1)^{a}\ket{\bar{1}} \\
 & =\ket{\bar{0}} +e^{i\pi /4}\ket{\bar{1}} \\
 & =TH\ket{\bar{0}} 
\end{align}$$

which is the magic state $\displaystyle{\ket{A}}$.

# problem 8

a generic $\displaystyle{C_{3}}$ operator can be implemented with the quantum teleprotation circuit, if the Clifford gates and Pauli operator measurements can be implemented fault-tolerantly, and a magic Bell state $\displaystyle{(I\otimes V)\ket{\beta _{00}}}$ is available, $\displaystyle{\ket{\beta _{00}}=\frac{1}{\sqrt{ 2 }}(\ket{\bar{0}\bar{0}}+\ket{\bar{1}\bar{1}})}$

![image](http://100.94.165.49:8080/i/d2a69d49-e908-414b-b270-4073142c36b2.png)

```quantikz
\begin{quantikz}
\lstick{\ket{\psi}}& \ctrl{1}\gategroup[2,steps=3,style={dashed, rounded corners}, label style={label position=above}]{\text{Bell basis measurement}}	& \gate{\bar{H}}	& \gate{\text{measure } Z} & \rstick[2]{$(\sigma_{a}\otimes I)\ket{\beta_{00}}$} \\
\lstick[2]{$(I\otimes V)\ket{\beta_{00}}$}& \targ{}	&					& \gate{\text{measure } Z} & \\
	&			&					& \gate{V\sigma_{a}V^{-1}} & \rstick{V\ket{\psi}}
\end{quantikz}
```

here the choice of $\displaystyle{\sigma _{a}}$ depends on the Bell basis measurement result. $\displaystyle{V\sigma _{a}V^{-1}}$ is a Clifford operator, thus can be implemented fault-tolorently. 

*sol*. 

# problem 9

design a circuit to fault-tolerantly prepare the magic Bell state $\displaystyle{(I\otimes V)\ket{\beta _{00}}}$

*sol*.