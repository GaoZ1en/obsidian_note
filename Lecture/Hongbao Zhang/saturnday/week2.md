effective field theory
* identify the dofs (dynamical fields)
* identify the symmetries
* write down all possible terms dictated by the symmetries (in principle, infinite many terms)
* devide into relevant terms, marginal terms and irrelavant terms by RG

it is impossible to get a TOE. EFT is the only way(?)

UV-IR duality???

prove that

$$\tag{1.1}
\begin{align}
S_{\text{vn}}\leqslant S_{\text{th}}=\ln N
\end{align}
$$

$$\tag{1.2}
\begin{align}
F[\rho _{i},\lambda] & =\sum ^{N}_{i=1}\rho _{i}\ln \rho _{i}-\lambda\left( \sum ^{N}_{i=1}\rho _{i}-1 \right) \\
\frac{\partial F}{\partial \rho _{i}} & =\sum ^{N}_{i=1}(\ln \rho _{i}+1)-\lambda \\
\frac{\partial F}{\partial \lambda} & =1-\sum ^{N}_{i=1}\rho _{i} \\
\implies \frac{\ln \rho _{i}}{\ln \rho _{j}} & =1\implies \rho _{i}=\rho _{j}=\frac{1}{N}
\end{align}
$$

then $\displaystyle{S_{\text{vn}}\leqslant-\sum ^{N}_{i=1} \frac{1}{N}\ln \frac{1}{N}=\ln N}$
## entanglement entropy

suppose a big system $\displaystyle{S}$ can be decomposed into two small system $\displaystyle{A,B}$. total Hilbert space $\displaystyle{\mathcal{H}=\mathcal{H}_{A}\otimes \mathcal{H}_{B}}$, a general state in $\displaystyle{S}$ can be write as

$$\tag{1.3}
\begin{align}
\ket{\psi} & =\alpha _{ij}\ket{i_{A}}\ket{j_{B}} \\
\rho & =\alpha _{ij}\bar{\alpha}_{kl}\ket{i_{A}}\ket{j_{B}}\bra{k_{A}}\bra{l_{B}} 
\end{align}
$$

then the reduced density matrix of subsystem $\displaystyle{A}$ is

$$\tag{1.4}
\begin{align}
\rho _{A} & =\mathrm{Tr}_{B}(\rho) \\
 & =\sum _{j}\alpha _{ij}\bar{\alpha}_{kj}\ket{i_{A}}\bra{k _{A}}  
\end{align}
$$

is generally a mixed state.

in qft, the entanglement entropy between inside and outside in vaccum state diverges, but proportional to the entangled area, i.e., $\displaystyle{S\sim \frac{A}{\ell^2}}$.

"It From Qbit"

gravity play a very important role in this.

小心老外

