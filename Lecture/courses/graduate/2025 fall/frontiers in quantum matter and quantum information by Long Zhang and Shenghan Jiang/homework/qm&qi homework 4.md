# problem 1

## exercise 8.4

suppose we have a single qubit principal system, interacting with a single qubit environment through the transform

$$\begin{align}
U & =P_{0}\otimes I+P_{1}\otimes X
\end{align}$$

where $\displaystyle{X}$ is the usual Pauli matrix (acting on the environment), and $\displaystyle{P_{0}=\ket{0}\bra{0}, P_{1}=\ket{1}\bra{1}}$ are projectors (acting on the system). give the quantum operation for this process, in the operator-sum representation, assuming the environment starts in the state $\displaystyle{\ket{0}}$.

*sol*.

let the environment start in $|0\rangle$. the Kraus operators are:

$$\begin{align}
E_{0} & =(I\otimes \bra{0} )U(I\otimes \ket{0} ) \\
 & =(I\otimes \bra{0} )(P_{0}\otimes I+P_{1}\otimes X)(I\otimes \ket{0} ) \\
 & =P_{0} \\
E_{1} & =(I\otimes \bra{1}  )U(I\otimes \ket{0} ) \\
 & =P_{1}
\end{align}$$

so the operator-sum representation is

$$\begin{align}
\mathcal{E}(\rho) & =E_{0}\rho E_{0}^{\dagger}+E_{1}\rho E_{1}^{\dagger} \\
 & =P_{0}\rho P_{0}+P_{1}\rho P_{1}
\end{align}$$

this channel projects the density matrix onto the computational basis, removing all off-diagonal elements

$$\begin{align}
\mathcal{E}\begin{pmatrix}
a & c \\
c^{*} & b
\end{pmatrix} & =\begin{pmatrix}
a & 0 \\
0 & b
\end{pmatrix}
\end{align}$$

## exercise 8.5

just as in the previous exercise, but now let

$$\begin{align}
U & =\frac{X}{\sqrt{ 2 }}\otimes I+\frac{Y}{\sqrt{ 2 }}\otimes X
\end{align}$$

give the quantum operation for this process, in the operator-sum representation.

*sol*.

let the environment start in $|0\rangle$. the Kraus operators are:

$$\begin{align}
E_{0} & =(I\otimes \bra{0} )U(I\otimes \ket{0} ) \\
 & =(I\otimes \bra{0} )\left( \frac{X}{\sqrt{ 2 }}\otimes I+\frac{Y}{\sqrt{ 2 }}\otimes X \right)(I\otimes \ket{0} ) \\
 & =\frac{X}{\sqrt{ 2 }} \\
E_{1} & =(I\otimes \bra{1}  )U(I\otimes \ket{0} ) \\
 & =(I\otimes \bra{1} )\left( \frac{X}{\sqrt{ 2 }}\otimes I+\frac{Y}{\sqrt{ 2 }}\otimes X \right)(I\otimes \ket{0} ) \\
 & =\frac{Y}{\sqrt{ 2 }}
\end{align}$$

so the operator-sum representation is

$$\begin{align}
\mathcal{E}(\rho) & =E_{0}\rho E_{0}^{\dagger}+E_{1}\rho E_{1}^{\dagger} \\
 & =\frac{X}{\sqrt{ 2 }}\rho \frac{X}{\sqrt{ 2 }}+\frac{Y}{\sqrt{ 2 }}\rho \frac{Y}{\sqrt{ 2 }} \\
 & =\frac{1}{2}(X\rho X+Y\rho Y)
\end{align}$$

## exercise 8.6

suppose $\displaystyle{\mathcal{E}}$ and $\displaystyle{\mathcal{F}}$ are quantum operations on the same quantum system. show that the composition $\displaystyle{\mathcal{F\circ E}}$ is a quantum operation, in the sense that it has an operator-sum representation. state and prove an extension of this result to the case where $\displaystyle{\mathcal{E}}$ and $\displaystyle{\mathcal{F}}$ do not necessarily have the same input and output spaces.

*sol*.

suppose the operator-sum representations of $\mathcal{E}$ and $\mathcal{F}$ are

$$\begin{align}
\mathcal{E}(\rho) & =\sum _{i}E_{i}\rho E_{i}^{\dagger} \\
\mathcal{F}(\rho) & =\sum _{a}F_{a}\rho F_{a}^{\dagger}
\end{align}$$

with

$$\begin{align}
\sum _{i}E_{i}^{\dagger}E_{i} & \leqslant I \\
\sum _{a}F_{a}^{\dagger}F_{a} & \leqslant I
\end{align}$$

then the composition $\mathcal{F\circ E}$ is

$$\begin{align}
\mathcal{F\circ E}(\rho) & =\mathcal{F}(\mathcal{E}(\rho)) \\
 & =\mathcal{F}\left( \sum _{i}E_{i}\rho E_{i}^{\dagger} \right) \\
 & =\sum _{i}\mathcal{F}(E_{i}\rho E_{i}^{\dagger}) \\
 & =\sum _{i}\sum _{a}F_{a}E_{i}\rho E_{i}^{\dagger}F_{a}^{\dagger} \\
 & =\sum _{a,i}(F_{a}E_{i})\rho (F_{a}E_{i})^{\dagger}
\end{align}$$

define $\displaystyle{K_{ai}=F_{a}E_{i}}$, then

$$\begin{align}
\sum _{a,i}K_{ai}^{\dagger}K_{ai} & =\sum _{a,i}E_{i}^{\dagger}F_{a}^{\dagger}F_{a}E_{i} \\
 & \leqslant \sum _{i}E_{i}^{\dagger}I E_{i} \\
 & =\sum _{i}E_{i}^{\dagger}E_{i} \leqslant I
\end{align}$$

so $\mathcal{F\circ E}$ has an operator-sum representation and is a quantum operation.

*generalized statement*: suppose $\displaystyle{\mathcal{E}:\mathcal{B}(\mathcal{H}_{\text{in}})\to \mathcal{B}(\mathcal{H}_{\text{mid}})}$ with $\displaystyle{E_{i}:\mathcal{H}_{\text{in}}\to \mathcal{H}_{\text{mid}}}$. suppose $\displaystyle{\mathcal{F}:\mathcal{B}(\mathcal{H}_{\text{mid}})\to \mathcal{B}(\mathcal{H}_{\text{out}})}$ with $\displaystyle{F_{a}:\mathcal{H}_{\text{mid}}\to \mathcal{H}_{\text{out}}}$. then the composition $\displaystyle{\mathcal{F\circ E}:\mathcal{B}(\mathcal{H}_{\text{in}})\to \mathcal{B}(\mathcal{H}_{\text{out}})}$ is a quantum operation.

*proof*. the proof is the same as above, since the dimensions of the Hilbert spaces do not affect the operator-sum representation.

# problem 2

write the action of all kinds of quantum channels and operations on the density matrix in terms of the bloch sphere representation.

*sol*.

for a single qubit, write $\rho = \tfrac{1}{2}(I + r\cdot \sigma)$ with $r=(r_x,r_y,r_z)\in\mathbb{R}^3$. in matrix form

$$
\rho=\begin{pmatrix} a & c \\ c^* & b \end{pmatrix},\quad a+b=1,
\quad r_x = 2\,\mathrm{Re}\,c,\; r_y = 2\,\mathrm{Im}\,c,\; r_z = a-b,
\quad a=\tfrac{1+r_z}{2},\; b=\tfrac{1-r_z}{2},\; c=\tfrac{r_x+i r_y}{2}.
$$

any qubit cptp map acts as an affine map on the bloch vector: $r' = A r + t$. below are four common channels and their comparison with the matrix form.

1. unitary channel $\mathcal{U}(\rho)=U\rho U^\dagger$ (unital)

$$\begin{align}
r' = R_U r,\quad (R_U)_{ij} = \tfrac{1}{2}\operatorname{Tr}[\sigma_i U\sigma_j U^\dagger],\quad t=0.
\end{align}$$

matrix form: $\rho' = U\rho U^\dagger$.
1. pauli channel $\mathcal{E}(\rho)= p_0\rho + p_x X\rho X + p_y Y\rho Y + p_z Z\rho Z$，$\sum p_\alpha=1$（unital）

$$
r' = (\lambda_x r_x,\; \lambda_y r_y,\; \lambda_z r_z),\quad
\begin{cases}
\lambda_x = 1 - 2(p_y+p_z),\\
\lambda_y = 1 - 2(p_x+p_z),\\
\lambda_z = 1 - 2(p_x+p_y).
\end{cases}
$$

matrix-form comparison using $a,b,c$:

$$\begin{aligned}
a' &= \tfrac{1}{2}\big(1 + \lambda_z (a-b)\big),\\
b' &= 1-a' = \tfrac{1}{2}\big(1 - \lambda_z (a-b)\big),\\
c' &= \tfrac{1}{2}(\lambda_x r_x + i\,\lambda_y r_y)
\;=\; \lambda_x\,\mathrm{Re}\,c\; +\; i\,\lambda_y\,\mathrm{Im}\,c.
\end{aligned}$$

	1. special cases (bit/phase/bit-phase flip with probability $p$):
		1. bit-flip (X): $r'=(r_x,(1-2p)r_y,(1-2p)r_z)$，$c' = \mathrm{Re}\,c + i(1-2p)\,\mathrm{Im}\,c$.
		1. phase-flip (Z): $r'=((1-2p)r_x,(1-2p)r_y,r_z)$，$c' = (1-2p)\,c$.
		1. bit-phase flip (Y): $r'=((1-2p)r_x, r_y, (1-2p)r_z)$，$c' = (1-2p)\,\mathrm{Re}\,c + i\,\mathrm{Im}\,c$.
1. depolarizing channel（choose the common parametrization）

$$\begin{align}
\mathcal{D}_p(\rho) = (1-p)\,\rho + p\,\tfrac{I}{2},\quad p\in[0,1].
\end{align}$$

bloch: $r'=(1-p)\,r$（isotropic shrink），$t=0$.matrix:

$$\begin{aligned}
a' &= \tfrac{1}{2}\big(1 + (1-p)(a-b)\big),\\
c' &= (1-p)\,c.
\end{aligned}$$

note another popular parametrization $\mathcal{D}_q(\rho)=\big(1-\tfrac{4q}{3}\big)\rho + \tfrac{q}{3}(X\rho X + Y\rho Y + Z\rho Z)$, which corresponds to $1-p = 1-\tfrac{4q}{3}$.
1. dephasing (phase damping) channel

$$\begin{align}
r' = (\eta r_x,\; \eta r_y,\; r_z),\quad \eta\in[0,1],\quad t=0.
\end{align}$$

matrix: $a'=a$, $c' = \eta\,c$.it is equivalent to applying $Z$ with probability $p$ where $\eta = 1-2p$.

# problem 3

check the QEC condition for the Shor's 9-qubit code.

*sol*.

the QEC condition states that for the code projector $\displaystyle{P}$ and a correctable error set $\displaystyle{\mathcal{E}=\left\{E_{a}\right\}}$

$$\begin{align}
PE_{a}^{\dagger}E_{b}P & =\alpha _{ab}P, & \forall E_{a},E_{b}\in \mathcal{E}
\end{align}$$

in Shor's 9-qubit code, the error set $\displaystyle{\mathcal{E}=\left\{I,X_{i},Y_{i},Z_{i}|i=1,\dots,9\right\}}$. and projector $\displaystyle{P}$ is defined through the codewords.

$$\begin{align}
P & =\ket{0} _{L}\bra{0_{L}} +\ket{1_{L}} \bra{1_{L}}  \\
\ket{0,1_{L}}  & =\ket{\bar{0},\bar{1}} \otimes \ket{\bar{0},\bar{1}} \otimes \ket{\bar{0},\bar{1}} \\
\ket{\bar{0}}  & =\frac{1}{\sqrt{2}}(\ket{000} +\ket{111}), & \ket{\bar{1}}  & =\frac{1}{\sqrt{2}}(\ket{000} -\ket{111})
\end{align}$$

the stabilizer group is generated by the following

$$\begin{align}
S & =\left\langle Z_{1}Z_{2},Z_{2}Z_{3},Z_{4}Z_{5},Z_{5}Z_{6},Z_{7}Z_{8},Z_{8}Z_{9},X_{1}X_{2}X_{3}X_{4}X_{5}X_{6},X_{4}X_{5}X_{6}X_{7}X_{8}X_{9} \right\rangle
\end{align}$$

for $\displaystyle{a=b}$, $\displaystyle{PE_{a}^{\dagger}E_{b}P=P^{2}=P}$, and for $\displaystyle{a\neq b}$, since $\displaystyle{E_{a}^{\dagger}E_{b}}$ has weight $\displaystyle{\leqslant 2<d}$ and is not in the stabilizer group, it maps the code space to a subspace orthogonal to itself, hence

$$\begin{align}
PE_{a}^{\dagger}E_{b}P & =0,\quad (a\neq b)
\end{align}$$

therefore $\displaystyle{PE_{a}^{\dagger}E_{b}P=\delta _{ab}P}$, the QEC condition is satisfied.
