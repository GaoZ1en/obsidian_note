overview of this lecture

 # quantum error correction
 1. classical code
 1. bit-flip & phase-flip code
 1. Shor's code
 1. QEC condition
	 1. error basis
 1. stabilizer code
	 1. general fomalism

---

classically, encode->error diagnosis->error correction->decode

code distance. we can diagnose up to d-1 bit flips, but correct up to (d-1)/2 bit flips.

quantumly, encode->erro diagnosis (now there are bit-flip and phase-flip)->

Shor's code. we first encode against phase-flip, then bit-flip, which means

$$\begin{align}
\ket{0/1} \to \ket{000/111}\to \frac{1}{\sqrt{2}}(\ket{000}+\ket{111})^{\otimes 3}/\frac{1}{\sqrt{2}}(\ket{000}-\ket{111})^{\otimes 3}
\end{align}$$

in general, $\displaystyle{\ket{\psi}=a\ket{0}+b\ket{1}}$ is encoded as

$$\begin{align}
\ket{\psi _{L}} & =a\frac{(\ket{000}+\ket{111})^{\otimes 3}}{2\sqrt{2}}+b\frac{(\ket{000}-\ket{111})^{\otimes 3}}{2\sqrt{2}}
\end{align}$$

how can we diagonose both bit-flip and phase-flip errors? we can measure the following operators:

$$\begin{align}
Z_{1}Z_{2},Z_{2}Z_{3},Z_{4}Z_{5},Z_{5}Z_{6},Z_{7}Z_{8},Z_{8}Z_{9},X_{1}X_{2}X_{3}X_{4}X_{5}X_{6},X_{4}X_{5}X_{6}X_{7}X_{8}X_{9}
\end{align}$$

these operators commute with each other and with the logical operators

$$\begin{align}
\bar{X} & =X_{1}X_{2}X_{3}X_{4}X_{5}X_{6}X_{7}X_{8}X_{9} \\
\bar{Z} & =Z_{1}Z_{2}Z_{3}Z_{4}Z_{5}Z_{6}Z_{7}Z_{8}Z_{9}
\end{align}$$

the measurement results (syndrome) tell us which error happened, then we can correct it. notice that if we have a phase-flip on qubit $\displaystyle{4}$, we can correct it by apply $\displaystyle{Z_{5}}$, this is called degenerate code.

if the noise $\displaystyle{E=\alpha I+\beta X_{1}+\gamma Y_{1}+\delta Z_{1}}$, we still perform the syndrome measurement, then correct accordingly. although the measurement will collapse the state, but it will not affect the logical qubit.

QEC condition:

let $\displaystyle{\mathcal{H}_{\text{code}}}$ denote the code subspace, and let $\displaystyle{\mathcal{H}_{\text{phys}}}$ be a larger Hilbert space we want to encode $\displaystyle{\mathcal{H}_{\mathrm{code}}}$. let $\displaystyle{\{E_{i}\}}$ be the set of possible errors we want to correct. a general action of the noise channel is

$$\begin{align}
\mathcal{E}(\rho) & =\sum _{i}E_{i}\rho E_{i}^{\dagger}
\end{align}$$

with

$$\begin{align}
\sum _{i}E_{i}^{\dagger}E_{i} & =I
\end{align}$$

we say the error $\displaystyle{\mathcal{E}}$ can be corrected by a recovery operation $\displaystyle{\mathcal{R}}$ if

$$\begin{align}
\mathcal{R}(\mathcal{E}(P\rho P)) & =P\rho P,\quad \forall \rho \in \mathcal{H}_{\text{phys}}, P: \mathcal{H}_{\text{phys}}\to \mathcal{H}_{\text{code}}
\end{align}$$

the necessary and sufficient condition for the existence of such a recovery operation is

$$\begin{align}
P E_{i}^{\dagger}E_{j} P & =\lambda _{ij} P,\quad \forall i,j
\end{align}$$

where $\displaystyle{\lambda _{ij}}$ is a Hermitian matrix.
