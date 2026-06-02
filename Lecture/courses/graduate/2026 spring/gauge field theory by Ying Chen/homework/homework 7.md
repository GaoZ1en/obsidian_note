# problem 1

consider the classical action

$$\begin{align}
S[\psi,\bar{\psi},A] & =S_{A}[A]+S_{f}[A] \\
S_{f}[A] & =\int \mathrm{d}^{4}x\mathrm{d}^{4}y\bar{\psi}(x)iM(x,y;A)\psi(y)
\end{align}$$

the generating functional can be written as

$$\begin{align}
Z[\eta,\bar{\eta}] & =\int \mathcal{D}A\mathcal{D}\bar{\psi}\mathcal{D}\psi e^{iS[\psi,\bar{\psi},A]+i \int \mathrm{d}^{4}x(\bar{\eta}\psi+\bar{\psi}\eta)}
\end{align}$$

let $\displaystyle{S_{F}(x,y;A)}$ be the fermion propagator in the presence of background field $\displaystyle{A_{\mu}(x)}$\

$$\begin{align}
S_{F}(x,y;A) & = \braket{ \psi(x)\bar{\psi}(y) } _{A} \\
 & =[\det(M)]^{-1}\int \mathcal{D}\bar{\psi}\mathcal{D}\psi e^{iS_{f}[A]} \psi(x)\bar{\psi}(y)
\end{align}$$

the questions are
1. prove that $\displaystyle{S_{F}(x,y;A)=M^{-1}(x,y;A)}$
2. let $\displaystyle{\mathcal{O}_{A}(x)=\bar{\psi}(x)\Gamma _{A}\psi(x),\mathcal{O}_{B}(x)=\bar{\psi}(x)\Gamma _{B}(x)\psi(x)}$ be two local operators. present the Green function

$$\begin{align}
G_{AB}(x,y) & =\braket{ \Omega|T\mathcal{O}_{A}(x)\mathcal{O}_{B}(x)|\Omega } 
\end{align}$$

as the functional integral over gauge field $\displaystyle{A_{\mu}}$.

## solution

# problem 2

1. explain the relation among Green function, connected Green function, amputated Green function and regularized vertex function.
2. prove that connected Green function can always be expressed by full propagator and regularized vertex function.
3. effective action is the same as classical action at tree level. derive the Feynman rule of electric vertex.

## solution

# problem 3

the generating function for QED is given by

$$\begin{align}
Z[J,\eta,\bar{\eta}] & =\int \mathcal{D}A\mathcal{D}\bar{\psi}\mathcal{D}\psi \exp\left(i \int \mathrm{d}^{4}x\left(\mathcal{L}_{\text{eff}}+A_{\mu}j ^{\mu}+\bar{\eta}\psi+\bar{\psi}\eta\right)\right) \\
\mathcal{L}_{\text{eff}} & =-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\bar{\psi}(i\gamma ^{\mu}D_{\mu}-m)\psi-\frac{1}{2\xi}(\partial _{\mu}A^{\mu})^{2} \\
 & =\mathcal{L}_{\text{QED}}+\mathcal{L}_{\text{gf}}
\end{align}$$

1. prove that the connected Green function $\displaystyle{W}$ satisfies the following functional equation

$$\begin{align}
i \frac{1}{\xi}\partial ^{2}\partial _{\mu} \frac{\delta iW}{\delta J_{\mu}(x)}-\partial _{\mu}J^{\mu}(x)-e \bar{\eta}(x) \frac{\delta iW}{\delta \bar{\eta}(x)}-e \frac{\delta iW}{\delta \eta(x)}\eta(x)=0
\end{align}$$

2. the full propagator for photon is given by

$$\begin{align}
G^{\mu \nu}(x-y) & \equiv \braket{ \Omega|TA^{\mu}(x)A^{\nu}(y)|\Omega }  \\
 & = \frac{\delta ^{2}W}{i\delta J_{\mu}(x)i\delta J_{\nu}(y)}\bigg|_{J=\eta=\bar{\eta}=0}
\end{align}$$

prove that the transverse part of the propagator has no higher order correction.

## solution

# problem 4

define the classical field in the presence of external source

$$\begin{align}
A^{\mu}(x) & = \frac{\delta iW}{i\delta J_{\mu}(x)}, & \psi(x) & =\frac{\delta iW}{i\delta \bar{\eta}(x)}, & \bar{\psi}(x) & =-\frac{\delta iW}{i\delta \eta(x)}
\end{align}$$

by Legendre transform, we define the effective action as

$$\begin{align}
\Gamma[A,\psi,\bar{\psi}] & =W[J,\eta,\bar{\eta}] -\int \mathrm{d}^{4}x\left(J_{\mu}A^{\mu}+\bar{\eta}\psi+\bar{\psi}\eta\right)
\end{align}$$

the Slavnov-Taylor identity for QED is given by

$$\begin{align}
-\frac{1}{\xi} \partial ^{2}\partial _{\mu}A^{\mu}(x)+\partial _{\mu} \frac{\delta \Gamma}{\delta A_{\mu}(x)}-ie \frac{\delta \Gamma}{\delta \psi(x)} \psi(x)-ie \bar{\psi}(x) \frac{\delta \Gamma}{\delta \bar{\psi}(x)} & =0
\end{align}$$

1. the self-energy correction of photon coming from the high order perturbation of 2-photon regularized vertex. write the effective action as $\displaystyle{\Gamma=\Gamma ^{(0)}+\Gamma'}$. here $\displaystyle{\Gamma ^{(0)}}$ is the classical approximation, i.e., the classical action $\displaystyle{S=\int \mathrm{d}^{4}x\mathcal{L}_{\text{eff}}(x)}$. then the high order correction of the 2-photon regularized vertex (photon self energy) is $\displaystyle{\Pi^{\mu \nu}(x-y)= \frac{i\delta ^{2}\Gamma'}{\delta A_{\mu}(x)\delta A_{\nu}(x)}\bigg|_{A=\psi=\bar{\psi}=0}}$. prove that the self-energy correction is transverse, i.e., we have $\displaystyle{\partial _{\mu}\Pi^{\mu \nu}(x-y)=0}$.
2. prove that the regularized vertex with $\displaystyle{n(\geqslant 3)}$ photon external lines satisfies the Ward identity

$$\begin{align}
k _{i,\mu _{i}}\Gamma ^{\mu_{1}\mu_{2},\dots \mu _{n}}(k_{1},k_{2},\dots,k _{n})=0
\end{align}$$

## solution

# problem 5

the Lagrangian for $\displaystyle{\mathrm{SU}(3)}$ gauge theory is given by

$$\begin{align}
\mathcal{L} & =-\frac{1}{4}F_{\mu \nu}^{a}F^{a,\mu \nu}+\bar{\psi}(i\gamma ^{\mu}D_{\mu}-m)\psi
\end{align}$$

with $\displaystyle{D_{\mu}=\partial _{\mu}-igA_{\mu},A_{\mu}=A_{\mu}^{a}t^{a}}$.

1. write down the local gauge transformation of $\displaystyle{A_{\mu}(x),\psi(x),\bar{\psi}(x)}$
2. explain what gauge fixing and gauge (compensation?) mean in path integral quantization
3. the axial gauge can be expressed as $\displaystyle{F^{a}[A]=n^{\mu}A_{\mu}^{a}=0}$, where $\displaystyle{n^{\mu}}$ is an arbitrary constant vector. complete the Faddeev-Popov path integral quantization under this gauge.

## solution

