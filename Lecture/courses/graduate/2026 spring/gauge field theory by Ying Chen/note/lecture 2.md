in states and out states...

take the interaction picture, the asymptotic states satisfies the following condition

$$\begin{align}
\sum _{\alpha}e^{-iE_{\alpha}\tau}g_{\alpha}\ket{\psi _{\alpha}^{\pm}}  & =\sum _{\alpha}e^{-iE_{\alpha}\tau}g_{\alpha}\ket{\phi _{\alpha}}, & \tau\to \mp \infty
\end{align}$$

thus we can define the evolution operator

$$\begin{align}
\Omega(\tau) & =e^{iH\tau}e^{-iE_{\alpha}\tau}
\end{align}$$

then asymptotic states $\displaystyle{\ket{\psi _{\alpha}^{\pm}}}$ satisfies

$$\begin{align}
\ket{\psi _{\alpha}^{\pm}} & =\Omega(\mp \infty)\ket{\phi _{\alpha}}
\end{align}$$

the S-matrix is defined as

$$\begin{align}
S_{\beta \alpha} & = \braket{ \psi _{\beta}^{-}|\psi _{\alpha}^{+} }  \\
 & = \braket{ \phi _{\beta}|\Omega ^{\dagger}(+\infty)\Omega(-\infty)|\phi _{\alpha} } \\
 & = \braket{ \phi _{\beta}|U(+\infty,-\infty)|\phi _{\alpha} }
\end{align}$$

where

$$\begin{align}
U(\tau,\tau') & =e^{iH_{0}\tau}e^{-iH(\tau-\tau')}e^{-iH_{0}\tau'}
\end{align}$$

the S-matrix satisfies the following properties

1. unitary

$$\begin{align}
(S^{\dagger}S)_{\beta \alpha} & =\sum _{\gamma}S_{\beta \gamma}^{\dagger}S_{\gamma \alpha} \\
 & =\sum _{\gamma}\braket{ \psi ^{+}_{\beta}|\psi _{\gamma}^{-} } \braket{ \psi _{\gamma}^{-}|\psi _{\alpha}^{+} } \\
 & = \braket{ \psi _{\beta}^{+}|\psi _{\alpha}^{+} }=\delta _{\beta \alpha}
\end{align}$$

similar argument applies to $\displaystyle{SS^{\dagger}=I}$

1. symmetry

suppose the theory is invariant under some symmetry, the states transforms as

$$\begin{align}
\ket{\phi' _{\alpha}} & =U(a)\ket{\phi _{\alpha}}
\end{align}$$

then by principle of relativity

$$\begin{align}
\braket{ \phi _{\beta}|S|\phi _{\alpha} } & \equiv \braket{ \phi _{\beta}'|S|\phi _{\alpha}' } \\
 & =  \braket{ \phi _{\beta}|U^{\dagger}SU|\phi _{\alpha} } \\
 \implies [S,U] & =0
\end{align}$$

the S-matrix can be written as

$$\begin{align}
S_{\beta \alpha} & =\delta _{\beta \alpha}+iT_{\beta \alpha}
\end{align}$$

when $\displaystyle{\ket{\psi _{\beta}^{\pm}}}$ are momenta eigenstates of free particles, we write

$$\begin{align}
iT_{\beta \alpha} & =(2\pi)^{4}\delta ^{4}(p_{\text{in}}-p_{\text{out}})i\mathcal{M}_{\beta \alpha}
\end{align}$$

where $\displaystyle{i\mathcal{M}_{\beta \alpha}}$ is called the invariant amplitude.

in general we have

$$\begin{align}
\mathrm{d}P(i\to f) & =\frac{\left|\braket{ f|i } \right|^{2}}{\braket{ f|f }\braket{ i|i }  }\mathrm{d}\Omega _{f} \\
\mathrm{d}\Omega _{f} & =(2\pi)^{4}\delta ^{4}(p_{f}-p_{i})\prod _{f} \frac{\mathrm{d}^{3}\vec{p}_{f}}{(2\pi)^{3}2E_{\vec{p}}}
\end{align}$$

the normalization is chosen to be

$$\begin{align}
\braket{ p|p' }  & =(2\pi)^{3}2E_{\vec{p}}\delta ^{3}(\vec{p}-\vec{p}') \\
 & =2E_{\vec{p}}V
\end{align}$$

optical theorem.

$$\begin{align}
S^{\dagger}S & =I \\
\implies-i(T-T^{\dagger}) & =T^{\dagger}T \\
\implies -i\braket{ \phi _{\beta}|T-T^{\dagger}|\phi _{\alpha} }  & =\int \mathrm{d}\gamma\braket{ \phi _{\beta}|T^{\dagger}|\phi _{\gamma} } \braket{ \phi _{\gamma}|T|\phi _{\alpha} }
\end{align}$$

intermediate states are all physical...

LSZ reduction formula. we write down its mathematical form and derivation.

$$\begin{align}
\braket{ \beta|S|\alpha }  & = \braket{ 0|a_{k' _{1}}a_{k'_{2}}\dots a_{k'_{j}}Sa^{\dagger}_{k_{1}}a^{\dagger}_{k_{2}}\dots a^{\dagger}_{k _{i}}|0 } \\
 & =\braket{ 0|a_{k' _{1}}a_{k'_{2}}\dots a_{k'_{j}}\Lambda(\infty)\Lambda ^{-1}(-\infty)a^{\dagger}_{k_{1}}a^{\dagger}_{k_{2}}\dots a^{\dagger}_{k _{i}}|0 } \\
 & = \braket{ 0|\Lambda(\infty)\Lambda ^{-1}(\infty)a_{k'_{1}}\Lambda(\infty)\dots \Lambda ^{-1}(\infty)a_{k'_{j}}\Lambda(\infty)\Lambda ^{-1}(-\infty)a^{\dagger}_{k_{1}}\Lambda(-\infty)\dots \Lambda ^{-1}(-\infty)a^{\dagger}_{k_{i}}\Lambda(-\infty)\Lambda ^{-1}(-\infty)|0 } \\
 & = {}^{-}\braket{ 0|T(a_{k'_{1}}(\infty)\dots a_{k'_{j}}(\infty)a^{\dagger}_{k_{1}}(-\infty)\dots a^{\dagger}_{k _{i}}(-\infty))|0 } ^{+} \\
 & = {}^{-}\braket{ 0|T((a_{k'_{1}}(\infty)-a_{k'_{1}}(-\infty))\dots(a_{k'_{j}}(\infty)-a_{k'_{j}}(-\infty))(a^{\dagger}_{k_{1}}(-\infty)-a^{\dagger}_{k_{1}}(\infty))\dots(a^{\dagger}_{k _{i}}(-\infty)-a^{\dagger}_{k _{i}}(\infty)))|0 }^{+} \\
 & = {}^{-}\bra{0}|T\left(-i \int \mathrm{d}^{4}x'_{1}\mathcal{k}'_{1}(x)(\nabla_{1} '^{2}+m^{2})\phi(x'_{1})\dots -i \int \mathrm{d}^{4}x'_{j}k'_{j}(x)(\nabla'^{2}_{j}+m^{2})\phi(x'_{j})\right. \\
 & \left.-i \int \mathrm{d}^{4}x_{1}\bar{k}_{1}(x)(\nabla _{1}^{2}+m^{2})\phi(x_{1})\dots-i \int \mathrm{d}^{4}x_{i}\bar{k}_{i}(x)(\nabla _{i}^{2}+m^{2})\phi(x_{i})\right)\ket{0} ^{+} \\
 & =(-i)^{i+j}\int \prod ^{j}_{n'=1} \mathrm{d}^{4}x_{n'}k(x_{n'})(\nabla ^{2}_{n'}+m^{2})\int\prod ^{i}_{n=1}\mathrm{d}^{4}x_{n}\bar{k}(x_{n})(\nabla ^{2}_{n}+m^{2}){}^{-}\braket{ 0|T\left( \prod ^{j}_{n'=1}\phi(x_{n'})\prod ^{i}_{n=1}\phi(x_{n}) \right)|0 } {}^{+}
\end{align}$$

(here we have already included the polarization, and the $\displaystyle{\nabla ^{2}+m^{2}}$ should be replaced by corresponding E-L operator of the field. for example, if the initial/final state contains a photon, we can just replace the electric E-L operator by electric flux $\displaystyle{\varepsilon _{\mu}^{(*)}j^{\mu}}$ in the sixth step) and finally use the Gell man-Low theorem, we change the interactive vacuum to perturbative vacuum. the LSZ formula tells us that the physical amplitude is the residue of Green function/time ordered correlation function on the physical states (poles).

connected Green function

$$\begin{align}
\tilde{G}^{(m+n)}_{c}(p) & =\prod _{i=1}^{m}\tilde{G}_{c}^{(2)}(p_{i})\prod ^{n} _{j=1}\tilde{G}^{(2)}_{c}(q_{j})\times \tilde{G}_{c,\text{amp}}^{(m+n)}(p_{1},\dots p_{m},q_{1},\dots,q_{n})
\end{align}$$

where $\displaystyle{\tilde{G}_{c,\text{amp}}^{(m+n)}}$ is the amputated Green function.

the LSZ formula can be generalized to

$$\begin{align}
\braket{ \Omega|T\mathcal{O}_{1}(y_{1})\dots \mathcal{O}_{n}(y_{n})\mathcal{O}_{1}'(z_{1})\dots \mathcal{O}_{m}'(z_{m})|\Omega }
\end{align}$$

where $\displaystyle{\mathcal{O}}$'s consist of fundamental field operators, and generate asymptotic free states.

for free theory, we have

$$\begin{align}
\braket{ \Omega|T\phi(x)\phi(y)|\Omega }  & =\int \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}-m^{2}+i\varepsilon}e^{-ip\cdot(x-y)}
\end{align}$$

and for interactive theory, suppose $\displaystyle{\ket{\lambda,\vec{p}}}$'s forms a complete basis of the Hilbert space, then

$$\begin{align}
\braket{ \Omega|\phi(x)\phi(y)|\Omega }  & = \sum _{\lambda}\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2E_{\lambda,\vec{p}}}\braket{ \Omega|\phi(x)|\lambda,\vec{p} }\braket{ \lambda,\vec{p}|\phi(y)|\Omega } \\
 & =\sum _{\lambda}\left|\braket{ \Omega|\phi(0)|\lambda,\vec{0} } \right|^{2}\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2E_{\lambda,\vec{p}}} e^{-ip\cdot(x-y)} \\
 \implies \braket{ \Omega|T\phi(x)\phi(y)|\Omega }  & =\sum _{\lambda}\left|\braket{ \Omega|\phi(0)|\lambda,\vec{0} } \right|^{2} \int \frac{\mathrm{d}^{4}\vec{p}}{(2\pi)^{4}} \frac{i}{p^{2}-m_{\lambda}^{2}+i\varepsilon}e^{-ip\cdot(x-y)}
\end{align}$$

introduce the spectrum density

$$\begin{align}
\rho(M^{2}) & =\sum _{\lambda}(2\pi)\delta(M^{2}-m_{\lambda}^{2})\left|\braket{ \Omega|\phi(0)|\lambda,\vec{0} } \right|^{2}
\end{align}$$

then we get the Kallen-Lehmann spectrum representation

$$\begin{align}
\braket{ \Omega|T\phi(x)\phi(y)|\Omega }  & =\int _{0}^{\infty} \frac{\mathrm{d}M^{2}}{2\pi}\rho(M^{2})D_{F}(x-y;M^{2}) \\
 & =\int \frac{\mathrm{d}^{4}p}{(2\pi)^{4}}e^{-ip\cdot (x-y)}\tilde{G}^{(2)}(p) \\
 \implies \tilde{G}^{2}(p) & =\frac{iZ}{p^{2}-m^{2}+i\varepsilon}+\int ^{\infty}_{\sim_{4}m^{2}}\frac{\mathrm{d}M^{2}}{2\pi}\tilde{\rho}(M^{2}) \frac{i}{p^{2}-M^{2}+i\varepsilon}
\end{align}$$

where $\displaystyle{Z\neq 1}$ is the renormalization constant,

$$\begin{align}
\braket{ \Omega|\phi(x)|1,\vec{p} }  & =Z^{1/2}e^{-ip\cdot x}
\end{align}$$

time dependent perturbation theory.
