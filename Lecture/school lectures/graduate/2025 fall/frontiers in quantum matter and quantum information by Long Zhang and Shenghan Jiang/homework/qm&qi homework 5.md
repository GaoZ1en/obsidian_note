# problem 1

write down the independent stabilizer generations of the Steane code explicitly, and check that they commute with each other. the check matrix of Steane code is given by

$$\begin{align}
H & =\begin{pmatrix}
H_{\text{ham}} & 0 \\
0 & H_{\text{ham}}
\end{pmatrix} \\
H_{\text{ham}} & =\begin{pmatrix}
1 & 0 & 1 & 0 & 1 & 0 & 1 \\
0 & 1 & 1 & 0 & 0 & 1 & 1 \\
0 & 0 & 0 & 1 & 1 & 1 & 1
\end{pmatrix}
\end{align}$$

*sol*.

independent stabilizer generators are:

$$\begin{align}
M_{1} & =X_{1}X_{3}X_{5}X_{7} \\
M_{2} & =X_{2}X_{3}X_{6}X_{7} \\
M_{3} & =X_{4}X_{5}X_{6}X_{7} \\
M_{4} & =Z_{1}Z_{3}Z_{5}Z_{7} \\
M_{5} & =Z_{2}Z_{3}Z_{6}Z_{7} \\
M_{6} & =Z_{4}Z_{5}Z_{6}Z_{7}
\end{align}$$

possible non-commuting pairs are $(M_{1},M_{4}),(M_{1},M_{5}),(M_{1},M_{6}),(M_{2},M_{4}),(M_{2},M_{5}),(M_{2},M_{6}),(M_{3},M_{4}),(M_{3},M_{5}),(M_{3},M_{6})$. notice that in each of these pairs, the number of non-commuting Pauli operators is even, so every pairs commuts.

more explicitly: write each stabilizer as $(\mathbf x\mid \mathbf z)$ binary vectors (CSS so disjoint). the commutation condition between $X$-type generator with support $S_X$ and $Z$-type generator with support $S_Z$ is $|S_X\cap S_Z|$ even (since each overlap contributes one anti-commuting $XZ=-ZX$). from the matrix $H_{\text{ham}}$ each $X$-row intersects each $Z$-row in exactly 0 or 2 or 4 positions, hence they commute.

in general, for CSS code with check matrix

$$\begin{align}
H & =\begin{pmatrix}
H_{X} & 0 \\
0 & H_{Z}
\end{pmatrix}
\end{align}$$

here $\displaystyle{H_{X}}$ and $\displaystyle{H_{Z}}$ are the parity check matrices of classical codes $\displaystyle{C_{X}}$ and $\displaystyle{C_{Z}}$ respectively. the stabilizer generators are constructed from the rows of $\displaystyle{H_{X}}$ and $\displaystyle{H_{Z}}$ by replacing 1's with X's and Z's respectively. the stabilizer generators will commute if and only if $\displaystyle{H_{X}H^{T}_{Z}=0}$ over $\displaystyle{\mathbb{Z}_{2}}$, which is the requirement of the CSS code construction.

# problem 2

find out the logical qubit states $|0\rangle_L$ and $|1\rangle_L$ of the Steane code

*sol*.

the logical qubit states of the Steane code are given by

$$\begin{align}
\ket{0_{L}}  & = \frac{1}{\sqrt{8}}\sum_{c\in C_{\text{even}}}\ket{c} \\
 & =\frac{1}{\sqrt{8}}\left( \ket{0000000}+\ket{1010101}+\ket{0110011}+\ket{0001111}+\ket{1100110}+\ket{1011010}+\ket{0111100}+\ket{1101001} \right) \\
\ket{1_{L}}  & = \frac{1}{\sqrt{8}}\sum_{c\in C_{\text{odd}}}\ket{c} \\
 & =\frac{1}{\sqrt{8}}\left( \ket{1111111}+\ket{0101010}+\ket{1001100}+\ket{1110000}+\ket{0011001}+\ket{0100101}+\ket{1000011}+\ket{0010110} \right)
\end{align}$$

here $C$ is the classical $[7,4,3]$ hamming code, $C_{\text{even}}$ the subset of even-weight codewords, $C_{\text{odd}}=C_{\text{even}}+1111111$. 

in general, for a CSS code with check matrix $\displaystyle{H=\mathrm{diag}(H_{X},H_{Z})}$, we can construct the logical qubit states as

$$\begin{align}
\ket{0_{L}}  & =\sum _{y\in \mathrm{span}(H_{X}\text{ row vectors})}\ket{y} \\
\ket{1_{L}}  & =\sum _{y\in \mathrm{span}(H_{X}\text{ row vectors})}\ket{1+y}
\end{align}$$

# problem 3

show that the 5-qubit code can correct any 1-qubit error, and therefore any single-qubit error operations satisfy the QEC condition

*sol*. the check matrix of the 5-qubit code is given by

$$\begin{align}
H & =\begin{pmatrix}
1 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 0 \\
0 & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 \\
1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 1 \\
0 & 1 & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 1
\end{pmatrix}
\end{align}$$

and the stabilizer generators are given by

$$\begin{align}
M_{1} & =X_{1}Z_{2}Z_{3}X_{4} \\
M_{2} & =X_{2}Z_{3}Z_{4}X_{5} \\
M_{3} & =X_{1}X_{3}Z_{4}Z_{5} \\
M_{4} & =Z_{1}X_{2}X_{4}Z_{5}
\end{align}$$

and logical operators are given by

$$\begin{align}
\bar{X} & =X_{1}X_{2}X_{3}X_{4}X_{5} \\
\bar{Z} & =Z_{1}Z_{2}Z_{3}Z_{4}Z_{5}
\end{align}$$

to show that this code can correct any 1-qubit error, we need to verify that any arbitrary 1-qubit error $E_i\in\{X_i,Y_i,Z_i\}$ produces a unique syndrome. notice that

- qubit 1: $\displaystyle{X_{1}\to(0,0,0,1)}$, $\displaystyle{Z_{1}\to(1,0,1,0)}$, $\displaystyle{Y_{1}\to(1,0,1,1)}$;
- qubit 2: $\displaystyle{X_{2}\to(1,0,0,0)}$, $\displaystyle{Z_{2}\to(0,1,0,1)}$, $\displaystyle{Y_{2}\to(1,1,0,1)}$;
- qubit 3: $\displaystyle{X_{3}\to(1,1,0,0)}$, $\displaystyle{Z_{3}\to(0,0,1,0)}$, $\displaystyle{Y_{3}\to(1,1,1,0)}$;
- qubit 4: $\displaystyle{X_{4}\to(0,1,1,0)}$, $\displaystyle{Z_{4}\to(1,0,0,1)}$, $\displaystyle{Y_{4}\to(1,1,1,1)}$;
- qubit 5: $\displaystyle{X_{5}\to(0,0,1,1)}$, $\displaystyle{Z_{5}\to(0,1,0,0)}$, $\displaystyle{Y_{5}\to(0,1,1,1)}$;

(here syndrome $s=(s_1,s_2,s_3,s_4)$ with $s_j=0$ if $E$ commutes with $M_j$ and $s_j=1$ if $E$ anti-commutes with $M_j$) we can see that they are all distinct and nonzero, so each single-qubit Pauli error has a unique syndrome, which means the code can correct any 1-qubit error.

now we will verify the QEC condition. let $E_a,E_b$ be arbitrary single-qubit errors from the set $\{I,X,Y,Z\}$ acting on any of the 5 qubits. we have the following cases:

1. both $E_a,E_b$ are identity: trivial, $P E_a^{\dagger} E_b P = P$.
2. one of $E_a,E_b$ is identity, the other is a single-qubit Pauli error: since single-qubit Pauli errors map code space to orthogonal error spaces, we have $P E_a^{\dagger} E_b P = 0$.
3. both $E_a,E_b$ are single-qubit Pauli errors:
	1. if they act on different qubits, then $E_a^{\dagger} E_b$ is a two-qubit error, which maps code space to an orthogonal error space, so $P E_a^{\dagger} E_b P = 0$.
	2. if they act on the same qubit but are different Pauli operators, then $E_a^{\dagger} E_b$ is proportional to a third Pauli operator on that qubit, which is a single-qubit error and maps code space to an orthogonal error space, so $P E_a^{\dagger} E_b P = 0$.
	3. if they are the same Pauli operator on the same qubit, then $E_a^{\dagger} E_b = I$, so $P E_a^{\dagger} E_b P = P$.

which verifies the QEC condition

$$\begin{align}
P E_a^{\dagger} E_b P & =\alpha _{ab} P
\end{align}$$

with $\displaystyle{\alpha _{ab}=\delta _{ab}}$ for any single-qubit errors $E_a,E_b$.

# problem 4

consider the $\displaystyle{[[8,3,3]]}$ code. the stabilizer generators are given by

$$\begin{align}
M_{1} & =\prod ^{8}_{i=1}X_{i} \\
M_{2} & =\prod ^{8}_{i=1}Z_{i} \\
M_{3} & =X_{2}X_{4}Y_{5}Z_{6}Y_{7}Z_{8} \\
M_{4} & =X_{2}Z_{3}Y_{4}X_{6}Z_{7}Y_{8} \\
M_{5} & =Y_{2}X_{3}Z_{4}X_{5}Z_{6}Y_{8}
\end{align}$$

check these generators commute and are independent. show that this code can correct ant 1-qubit errors

*sol*.

notice that each pair of stabilizer generators share even number of non-identity Pauli operators, so they commute. also, none of the stabilizer generators can be constructed from the product of other stabilizer generators, so they are independent.

to show that this code can correct any 1-qubit error, we need to verify that any arbitrary 1-qubit error $E_i\in\{X_i,Y_i,Z_i\}$ produces a unique syndrome. notice that

- qubit 1: $\displaystyle{X_{1}\to(0,1,0,0,0)}$, $\displaystyle{Z_{1}\to(1,0,0,0,0)}$, $\displaystyle{Y_{1}\to(1,1,0,0,0)}$
- qubit 2: $\displaystyle{X_{2}\to(0,1,0,0,1)}$, $\displaystyle{Z_{2}\to(1,0,1,1,1)}$, $\displaystyle{Y_{2}\to(1,1,1,1,0)}$
- qubit 3: $\displaystyle{X_{3}\to(0,1,0,1,0)}$, $\displaystyle{Z_{3}\to(1,0,0,0,1)}$, $\displaystyle{Y_{3}\to(1,1,0,1,1)}$
- qubit 4: $\displaystyle{X_{4}\to(0,1,0,1,1)}$, $\displaystyle{Z_{4}\to(1,0,1,1,0)}$, $\displaystyle{Y_{4}\to(1,1,1,0,1)}$
- qubit 5: $\displaystyle{X_{5}\to(0,1,1,0,0)}$, $\displaystyle{Z_{5}\to(1,0,1,0,1)}$, $\displaystyle{Y_{5}\to(1,1,0,0,1)}$
- qubit 6: $\displaystyle{X_{6}\to(0,1,1,0,1)}$, $\displaystyle{Z_{6}\to(1,0,0,1,0)}$, $\displaystyle{Y_{6}\to(1,1,1,1,1)}$
- qubit 7: $\displaystyle{X_{7}\to(0,1,1,1,0)}$, $\displaystyle{Z_{7}\to(1,0,1,0,0)}$, $\displaystyle{Y_{7}\to(1,1,0,1,0)}$
- qubit 8: $\displaystyle{X_{8}\to(0,1,1,1,1)}$, $\displaystyle{Z_{8}\to(1,0,0,1,1)}$, $\displaystyle{Y_{8}\to(1,1,1,0,0)}$

we can see that they are all distinct and nonzero, so each single-qubit Pauli error has a unique syndrome, which means the code can correct any 1-qubit error.

the QEC condition can be verified similarly as in problem 3.