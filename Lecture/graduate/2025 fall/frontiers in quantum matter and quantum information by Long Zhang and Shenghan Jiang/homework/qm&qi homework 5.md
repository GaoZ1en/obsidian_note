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

# problem 2

find out the logical qubit states $|0\rangle_L$ and $|1\rangle_L$ of the Steane code

# problem 3

show that the 5-qubit code can correct any 1-qubit error, and therefore any single-qubit error operations satisfy the QEC condition

# problem 4

consider the $\displaystyle{[[8,3,3]]}$ code. the stabilizer generators are given by

$$\begin{align}
M_{1} & =\prod ^{8}_{i=1}X_{i} \\
M_{2} & =\prod ^{8}_{i=1}Z_{i} \\
M_{3} & =X_{2}X_{4}Y_{5}Z_{6}Y_{7}Z_{8} \\
M_{4} & =X_{2}Z_{3}Y_{4}X_{6}Z_{7}Y_{8} \\
M_{5} & =Y_{2}X_{3}Z_{4}X_{5}Z_{6}Y_{8}
\end{align}$$

check these generators commuta and are independent. show that this code can correct ant 1-qubit errors