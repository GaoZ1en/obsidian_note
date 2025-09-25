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
g & =\prod ^{N}_{j=1}X_{j} \\
[H,g] & =0
\end{align}$$

in the limit $\displaystyle{\frac{J}{h}\to 0}$, the ground state is $\displaystyle{\ket{\to,\to, \dots}}$, which is invariant under the action of $\displaystyle{g}$. and in the limit $\displaystyle{\frac{J}{h}\to \infty}$, the ground states are degenerate $\displaystyle{\ket{\uparrow,\uparrow, \dots}}$ or $\displaystyle{\ket{\downarrow,\downarrow, \dots}}$, which spontaneously breaks the symmetry $\displaystyle{g}$.

one of the feature of SSB is the existstence of degenerate ground states...

we introduce order parameter to probe SSB. order parameter is a local operator $\displaystyle{\mathcal{O}}$ that transforms non-trivially under the symmetry group $\displaystyle{G}$, i.e. $\displaystyle{g\mathcal{O}g^{-1}\neq \mathcal{O}}$. for example, we can choose $\displaystyle{Z_{j}}$ as the order parameter, since

$$\begin{align}
gZ_{j}g^{-1} & =-Z_{j}
\end{align}$$

in the non-SSB phase, the expectation value of order parameter is zero

$$\begin{align}
\braket{ \mathcal{O} } & = \braket{ g\mathcal{O}g^{-1} } =-\braket{ \mathcal{O} } \implies\braket{ \mathcal{O} } =0
\end{align}$$

while in the SSB phase, the expectation value of order parameter is non-zero. 

ODLRO (off-diagonal long range order) is another feature of SSB, and can be used to distinguish non-SSB phase and SSB phase. consider the correlation function of order parameter

$$\begin{align}
\lim_{ |ij| \to \infty } \braket{ Z_{i}Z_{j} } & = \braket{ Z_{i} }\braket{ Z_{j} } \\
 & =0, \text{ non-SSB phase} \\
 & \neq 0, \text{ SSB phase}
\end{align}$$

stability of SSB. consider a local perturbation $\displaystyle{\delta H=-\delta h\sum _{j}X_{j}}$ that not break the symmetry $\displaystyle{g}$, $\displaystyle{\delta h\ll J}$. degenerate perturbation theory tells us that it will appear a energy split $\displaystyle{\Delta \sim e^{-N}}$ between the two "ground states". when $\displaystyle{N\to \infty}$ the split would disappear, so the degeneracy is robust against small local perturbation that not break the symmetry.

low 