overview of this lecture

*quantum operations*
- system-envitonment
- operator-sum representation
- arithmatic approach
- examples
- experimental condition
- quantum error correction code
- bit-flip & phase-flip. Shor's 9-qubit code
- error diagnosis & recovery

---

remind that for a mixed state $\displaystyle{\rho}$, after a measurement described by operators $\displaystyle{M_m}$, the state becomes

$$\begin{align}
\rho' = \sum_m M_m \rho M_m^\dagger \quad\text{ with probability } p(m) = \mathrm{Tr}(M_m \rho M_m^\dagger)
\end{align}$$

we can generalize the measurement operators $\displaystyle{M_m}$ to describe more general quantum operations.

for a mixed state with $\displaystyle{\rho}$, it is always possible to find a larger Hilbert space $\displaystyle{H = H_S \otimes H_E}$, where $\displaystyle{H_S}$ is the system's Hilbert space and $\displaystyle{H_E}$ is the environment's Hilbert space, such that $\displaystyle{\rho}$ is some reduced state of a pure state $\displaystyle{|\Psi\rangle \in H}$. so it is possible to choose the environment's initial state as a pure state $\displaystyle{|e_0\rangle}$. this is called purification.

entanglement entropy is not a good measure for mixed states, since there are classical probabilistic correlations. instead, entanglement negativity is used, but the shortage is that it can only detect the presence of entanglement, not the amount. for the moment, there is no good measure of entanglement for mixed states...

