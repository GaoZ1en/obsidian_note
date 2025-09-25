dynamic, Hamiltonian. in quantum many body theory, we need the notion "locality".

| dimension | Hamiltonian                                                                                                                                                        | comments                                                                                                                                                                                                                                                                                                                                                       |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0         | $H=\sum _{ijkl}J_{ijkl}\gamma _{i}\gamma _{j}\gamma _{k}\gamma _{l}$<br>$\displaystyle{{\gamma _{i},\gamma _{j}}=2\delta _{ij},\gamma _{i}^{\dagger}=\gamma _{i}}$ | this is the SYK model.<br>majorana fermion can also be constructed from qubits<br>$\displaystyle{\gamma _{2j-1}=\bigotimes^{j-1}_{n=1}\sigma _{z}\otimes \sigma _{x}\bigotimes^{N-j}_{n'=1}I}$ and $\displaystyle{\gamma _{2j} =\bigotimes^{j-1}_{n=1}\sigma _{z}\otimes \sigma _{y}\bigotimes^{N-j}_{n'=1}I}$<br>any particle can interact with any particles |
| 1         | $\displaystyle{H=\sum _{j}-hX_{j}-JZ_{j}Z_{j+1}}$                                                                                                                  | 1d Ising model                                                                                                                                                                                                                                                                                                                                                 |
| 2         | $\displaystyle{H=\sum _{j}-hX_{j}-J(Z_{j}Z_{j+y}+Z_{j}Z_{j-y}+Z_{j}Z_{j+z}+Z_{j}Z_{j-z})}$                                                                         | 2d Ising model                                                                                                                                                                                                                                                                                                                                                 |

locality means only nearby particles interact with each other.

1-d Ising model with periodicity

$$\begin{align}
H & =\sum ^{N} _{j=1}-hX_{j}-JZ_{j}Z_{j+1} \\
Z_{N+1} & =Z_{1},  \\
 & h,J>0
\end{align}$$

this Hamiltonian has the following $\displaystyle{\mathbb{Z}_{2}}$ symmetry

$$\begin{align}
g & =
\end{align}$$