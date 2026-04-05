# problem 1

solve the Dirac equation $\displaystyle{(i\gamma ^{\mu}\partial _{\mu}-m)\psi(x)=0}$ under the Dirac rep. and Weyl rep. of $\displaystyle{\gamma}$ matrices. discuss the properties of solutions, such as spin, helicity and chirality, and take the chirality limit $\displaystyle{m\to0}$.

## solution

### Dirac rep.

the $\displaystyle{\gamma}$ matrices in the Dirac rep. are given by

$$\begin{align}
\gamma ^{0} & =\begin{pmatrix}
I & 0 \\
0 & -I
\end{pmatrix},\gamma ^{i}=\begin{pmatrix}
0 & \sigma ^{i} \\
\sigma ^{i} & 0
\end{pmatrix}
\end{align}$$

thus the Dirac equation can be written as

$$\begin{align}
\begin{pmatrix}
i\partial _{0}-m & i\vec{\sigma}\cdot \vec{\nabla} \\
i\vec{\sigma}\cdot \vec{\nabla} & -i\partial _{0}-m
\end{pmatrix}\begin{pmatrix}
\psi _{1} \\ \psi _{2}
\end{pmatrix} & =0
\end{align}$$

take the plane wave ansatz $\displaystyle{\psi(x)=u(p)e^{-ip\cdot x}}$, we have

$$\begin{align}
\begin{pmatrix}
E-m & -\vec{\sigma}\cdot \vec{p} \\
\vec{\sigma}\cdot \vec{p} & -E-m 
\end{pmatrix}\begin{pmatrix}
u_{1}(p) \\ u_{2}(p)
\end{pmatrix} & =0
\end{align}$$

the solutions of the Dirac equation in the Dirac rep. are given by

$$\begin{align}
u(p) & =\begin{pmatrix}
\sqrt{E+m}\xi \\ \frac{\vec{\sigma}\cdot \vec{p}}{\sqrt{E+m}}\xi \end{pmatrix}, & v(p) & =\begin{pmatrix}
\frac{\vec{\sigma}\cdot \vec{p}}{\sqrt{E+m}}\eta \\ \sqrt{E+m}\eta \end{pmatrix}
\end{align}$$

where $\displaystyle{\xi}$ and $\displaystyle{\eta}$ are two-component spinors corresponding to the spin degrees of freedom. the solutions correspond to a spin-1/2 particle, and the helicity and chirality are not good quantum numbers in this representation.

### Weyl (Chiral) rep.

the $\displaystyle{\gamma}$ matrices in the Weyl rep. are given by

$$\begin{align}
\gamma ^{0} & =\begin{pmatrix}
0 & I \\
I & 0
\end{pmatrix},\gamma ^{i}=\begin{pmatrix}
0 & \sigma ^{i} \\
-\sigma ^{i} & 0
\end{pmatrix}, \gamma^{5}=i\gamma^{0}\gamma^{1}\gamma^{2}\gamma^{3}=\begin{pmatrix}
-I & 0 \\
0 & I
\end{pmatrix}
\end{align}$$

the Dirac equation $(i\gamma^{\mu}\partial_{\mu}-m)\psi(x)=0$ with plane wave ansatz $\psi(x) = u(p)e^{-ip\cdot x}$ becomes $(\not{p}-m)u(p)=0$, which can be written as

$$\begin{align}
\begin{pmatrix}
-m & p_{0}-\vec{\sigma}\cdot \vec{p} \\
p_{0}+\vec{\sigma}\cdot \vec{p} & -m
\end{pmatrix}\begin{pmatrix}
u_{L} \\ u_{R}
\end{pmatrix} & =0
\end{align}$$

defining $\sigma^{\mu}=(I,\vec{\sigma})$ and $\bar{\sigma}^{\mu}=(I,-\vec{\sigma})$, we have

$$\begin{align}
(p\cdot \bar{\sigma})u_{R} = m u_{L}, \quad (p\cdot \sigma)u_{L} = m u_{R}
\end{align}$$

thus the solutions in the Weyl rep. are given by

$$\begin{align}
u^{s}(p) & =\begin{pmatrix}
\sqrt{p\cdot \sigma}\xi^{s} \\ \sqrt{p\cdot \bar{\sigma}}\xi^{s}
\end{pmatrix}, & v^{s}(p) & =\begin{pmatrix}
\sqrt{p\cdot \sigma}\eta^{s} \\ -\sqrt{p\cdot \bar{\sigma}}\eta^{s}
\end{pmatrix}
\end{align}$$

where $\displaystyle{\xi ^{s}}$ and $\displaystyle{\eta ^{s}}$ are two-component spinors corresponding to the spin degrees of freedom. in this representation, the upper and lower components of the Dirac spinor transform under different irreducible representations of the Lorentz group, representing left-handed and right-handed chiral states, respectively.

### properties

1. **spin**: the solutions correspond to a spin-1/2 particle. $\xi$ and $\eta$ are two-component spinors corresponding to the spin degrees of freedom.
2. **helicity**: it is the projection of the spin along the direction of momentum, defined by the operator $h = \frac{\vec{\Sigma}\cdot \vec{p}}{|\vec{p}|}$. it is a conserved quantity for free particles.
3. **chirality**: it is the eigenvalue of the $\gamma^{5}$ matrix operators. in the Weyl representation, the upper and lower components of the Dirac spinor transform under different irreducible representations of the Lorentz group, representing left-handed and right-handed chiral states.

taking the limit $\displaystyle{m\to 0}$, the coupled equations in the Weyl representation become completely decoupled:

$$\begin{align}
(E-\vec{\sigma}\cdot \vec{p})u_{R}=0 \\
(E+\vec{\sigma}\cdot \vec{p})u_{L}=0
\end{align}$$

which means $\vec{\sigma}\cdot \hat{p} \,u_{R} = u_{R}$ and $\vec{\sigma}\cdot \hat{p} \,u_{L} = -u_{L}$. in the massless limit, the chirality eigenstates become exactly the helicity eigenstates. a right-handed particle has positive helicity ($+1/2$), and a left-handed particle has negative helicity ($-1/2$).

# problem 2

the weak decay of $\displaystyle{\mu}$, i.e. $\displaystyle{\mu ^{-}\to e^{-}\bar{\nu} _{e}\nu _{\mu}}$ can effectively described by the following four-fermion Lagrangian (Fermi V-A theory):

$$\begin{align}
\mathcal{L} & =-\frac{G_{F}}{\sqrt{ 2 }}(\bar{\psi}_{\nu _{\mu}}\gamma ^{\mu}(1-\gamma _{5})\psi _{\mu})(\bar{\psi} _{e}(1-\gamma _{5})\psi _{\nu _{e}})+\text{c.c.}
\end{align}$$

where $\displaystyle{G_{F}}$ is the Fermi constant. calculate the decay width at tree level

## solution

![image](http://koishiminipc:8080/i/2600ff5b-ec5a-4c24-b775-950adc964342.png)

the matrix element $\mathcal{M}$ is given by

$$\begin{align}
\mathcal{M} & =\frac{G_{F}}{\sqrt{2}}[\bar{u}(p_{\nu})\gamma^{\mu}(1-\gamma_{5})u(p_{\mu})][\bar{u}(p_{e})\gamma_{\mu}(1-\gamma_{5})v(p_{\bar{\nu}})]
\end{align}$$

the spin-averaged absolute square of the matrix element is

$$\begin{align}
\overline{|\mathcal{M}|^{2}} & =\frac{1}{2}\sum_{\text{spins}}|\mathcal{M}|^{2} \\
 & =\frac{G_{F}^{2}}{4}\text{Tr}[\gamma^{\mu}(1-\gamma_{5})(\not{p}_{\mu}+m_{\mu})\gamma^{\nu}(1-\gamma_{5})\not{p}_{\nu}]\text{Tr}[\gamma_{\mu}(1-\gamma_{5})\not{p}_{e}\gamma_{\nu}(1-\gamma_{5})\not{p}_{\bar{\nu}}]
\end{align}$$

where we assumed neutrinos are massless. computing the traces using $(1-\gamma_5)^2 = 2(1-\gamma_5)$:

$$\begin{align}
\text{Tr}[\cdots]_{\mu} & =2\text{Tr}[\gamma^{\mu}(1-\gamma_{5})\not{p}_{\mu}\gamma^{\nu}\not{p}_{\nu}]=8[p_{\mu}^{\mu}p_{\nu}^{\nu}+p_{\mu}^{\nu}p_{\nu}^{\mu}-g^{\mu\nu}(p_{\mu}\cdot p_{\nu})-i\epsilon^{\mu\alpha\nu\beta}p_{\mu,\alpha}p_{\nu,\beta}] \\
\text{Tr}[\cdots]_{e} & =8[p_{e,\mu}p_{\bar{\nu},\nu}+p_{e,\nu}p_{\bar{\nu},\mu}-g_{\mu\nu}(p_{e}\cdot p_{\bar{\nu}})-i\epsilon_{\mu\rho\nu\sigma}p_{e}^{\rho}p_{\bar{\nu}}^{\sigma}]
\end{align}$$

multiplying the two traces and using $\epsilon^{\mu\alpha\nu\beta}\epsilon_{\mu\rho\nu\sigma} = -2(\delta^{\alpha}_{\rho}\delta^{\beta}_{\sigma} - \delta^{\alpha}_{\sigma}\delta^{\beta}_{\rho})$, we get

$$\begin{align}
\overline{|\mathcal{M}|^{2}} & =64 G_{F}^{2} (p_{\mu}\cdot p_{\bar{\nu}})(p_{e}\cdot p_{\nu})
\end{align}$$

the differential decay rate formula is

$$\begin{align}
\mathrm{d}\Gamma & =\frac{1}{2m_{\mu}} \overline{|\mathcal{M}|^{2}} \mathrm{d}\Phi_{3}
\end{align}$$

where the three-body phase space is $\displaystyle{\mathrm{d}\Phi_{3}=(2\pi)^{4}\delta^{4}(p_{\mu}-p_{e}-p_{\nu}-p_{\bar{\nu}})\frac{\mathrm{d}^{3}\vec{p}_{e}}{(2\pi)^{3}2E_{e}}\frac{\mathrm{d}^{3}\vec{p}_{\nu}}{(2\pi)^{3}2E_{\nu}}\frac{\mathrm{d}^{3}\vec{p}_{\bar{\nu}}}{(2\pi)^{3}2E_{\bar{\nu}}}}$. integrating over the neutrino phase space gives

$$\begin{align}
\int \frac{\mathrm{d}^{3}\vec{p}_{\nu}}{2E_{\nu}}\frac{\mathrm{d}^{3}\vec{p}_{\bar{\nu}}}{2E_{\bar{\nu}}} \delta^{4}(q-p_{\nu}-p_{\bar{\nu}}) p_{\bar{\nu}}^{\alpha} p_{\nu}^{\beta} & = \frac{\pi}{6} (q^{2}g^{\alpha\beta}+2q^{\alpha}q^{\beta})
\end{align}$$

where $\displaystyle{q=p_{\mu}-p_{e}}$. therefore:

$$\begin{align}
\mathrm{d}\Gamma & = \frac{G_{F}^{2}}{m_{\mu}} \frac{\mathrm{d}^{3}\vec{p}_{e}}{(2\pi)^{5}2E_{e}} \frac{\pi}{6} [p_{\mu,\alpha}p_{e,\beta}(q^{2}g^{\alpha\beta}+2q^{\alpha}q^{\beta})] \\
 & = \frac{G_{F}^{2}}{12\pi^{4}m_{\mu}} \frac{\mathrm{d}^{3}\vec{p}_{e}}{2E_{e}} [(p_{\mu}\cdot p_{e})q^{2}+2(p_{\mu}\cdot q)(p_{e}\cdot q)]
\end{align}$$

in the muon rest frame, ignoring the electron mass ($m_e \to 0$, $E_e = |\vec{p}_e|$), $\displaystyle{q^{2}=m_{\mu}^{2}-2m_{\mu}E_{e}}$, $\displaystyle{p_{\mu}\cdot p_{e}=m_{\mu}E_{e}}$, $\displaystyle{p_{\mu}\cdot q=m_{\mu}^{2}-m_{\mu}E_{e}}$ and $\displaystyle{p_{e}\cdot q=m_{\mu}E_{e}}$. substituting these, integrating over solid angle $4\pi$, and integrating $E_e$ from $0$ to $m_{\mu}/2$:

$$\begin{align}
\Gamma & = \int_{0}^{m_{\mu}/2} \frac{G_{F}^{2}}{12\pi^{3}m_{\mu}} E_{e} [m_{\mu}E_{e}(m_{\mu}^{2}-2m_{\mu}E_{e})+2(m_{\mu}^{2}-m_{\mu}E_{e})m_{\mu}E_{e}] \mathrm{d}E_{e} \\
 & = \int_{0}^{m_{\mu}/2} \frac{G_{F}^{2} m_{\mu} E_{e}^{2}}{4\pi^{3}} \left(1-\frac{4E_{e}}{3m_{\mu}}\right) \mathrm{d}E_{e} \\
 & = \frac{G_{F}^{2} m_{\mu}^{5}}{192\pi^{3}}
\end{align}$$

# problem 3

the plane wave expansion of massive vector field $\displaystyle{A_{\mu}}$ with mass $\displaystyle{\mu}$ is

$$\begin{align}
A_{\mu}(x) & =\sum ^{3}_{\lambda=1}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{1}{2E_{\vec{k}}}\left(a^{\lambda}_{\vec{k}}\varepsilon _{\mu}^{\lambda}(k)e^{-ik\cdot x}+a_{\vec{k}}^{\lambda \dagger}\varepsilon _{\mu}^{\lambda *}(k)e^{ik\cdot x}\right)
\end{align}$$

where $\displaystyle{\varepsilon _{\mu}^{\lambda}(k), \lambda=1,2,3}$ are three orthonormal spacelike polarization vector, satisfying

$$\begin{align}
\eta ^{\mu \nu}\varepsilon _{\mu}^{\lambda}\varepsilon _{\nu}^{\lambda'}=-\delta ^{\lambda \lambda'}
\end{align}$$

and $\displaystyle{A_{\mu}(x)}$ satisfies $\displaystyle{\partial _{\mu}A^{\mu}=0}$. prove that

$$\begin{align}
\sum ^{3}_{\lambda=1}\varepsilon _{\mu}^{\lambda}(k)\varepsilon _{\nu}^{\lambda *}(k) & =-\eta_{\mu \nu}+\frac{k _{\mu}k _{\nu}}{\mu ^{2}}
\end{align}$$

## solution

since $\displaystyle{\varepsilon _{\mu}^{\lambda}(x),\lambda=1,2,3}$ are three orthonormal spacelike polarization vector, they span a three-dimensional subspace of the four-dimensional Minkowski space. the remaining one-dimensional subspace is spanned by the timelike vector $\displaystyle{\frac{k_{\mu}}{\mu}}$. since $\displaystyle{A_{\mu}(x)}$ satisfies $\displaystyle{\partial _{\mu}A^{\mu}=0}$, we have $\displaystyle{k^{\mu}\varepsilon _{\mu}^{\lambda}(k)=0}$. thus we have

$$\begin{align}
\sum ^{3}_{\lambda=1}\varepsilon _{\mu}^{\lambda}(k)\varepsilon _{\nu}^{\lambda *}(k) & =-\eta_{\mu \nu}+\frac{k _{\mu}k _{\nu}}{\mu ^{2}}
\end{align}$$

# problem 4

prove that: under canonical quantization, the propagator of the massive vector field $\displaystyle{A_{\mu}(x)}$ is

$$\begin{align}
\braket{ 0|TA_{\mu}(x)A_{\nu}(y)|0 }  & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \left( -\eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{\mu ^{2}} \right) \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)}+\frac{i}{\mu ^{2}}\delta _{\mu}^{0}\delta _{\nu}^{0}\delta ^{4}(x-y)
\end{align}$$

## solution

we have

$$\begin{align}
A_{\mu}(x) & =\sum ^{3}_{\lambda=1}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{1}{2E_{\vec{k}}}\left(a^{\lambda}_{\vec{k}}\varepsilon _{\mu}^{\lambda}(k)e^{-ik\cdot x}+a_{\vec{k}}^{\lambda \dagger}\varepsilon _{\mu}^{\lambda *}(k)e^{ik\cdot x}\right)
\end{align}$$

$$\begin{align}
\braket{ 0|TA_{\mu}(x)A_{\nu}(y)|0 }  & =\sum _{\lambda,\lambda'=1}^{3}\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}} \theta(x^{0}-y^{0}) \braket{ 0|(a^{\lambda}_{\vec{k}}\varepsilon _{\mu}^{\lambda}(k)e^{-ik\cdot x}+a^{\lambda\dagger}_{k}\varepsilon _{\mu}^{\lambda*}(k)e^{ik\cdot x})(a^{\lambda'}_{\vec{k}'}\varepsilon _{\nu}^{\lambda'}(k')e^{-ik'\cdot y}+a^{\lambda'\dagger}_{\vec{k}'}\varepsilon _{\nu'}^{\lambda'*}(k')e^{ik'\cdot y})|0 }  \\
 & +\theta(y^{0}-x^{0})\braket{ 0|(a^{\lambda'}_{\vec{k}'}\varepsilon _{\nu}^{\lambda'}(k')e^{-ik'\cdot y}+a^{\lambda'\dagger}_{\vec{k}'}\varepsilon _{\nu'}^{\lambda'*}(k')e^{ik'\cdot y})(a^{\lambda}_{\vec{k}}\varepsilon _{\mu}^{\lambda}(k)e^{-ik\cdot x}+a^{\lambda\dagger}_{k}\varepsilon _{\mu}^{\lambda*}(k)e^{ik\cdot x})|0 }  \\
 & =\sum ^{3}_{\lambda,\lambda'=1}\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}[\theta(x^{0}-y^{0}) [a^{\lambda}_{\vec{k}},a^{\lambda'\dagger}_{\vec{k}'}]\varepsilon _{\mu}^{\lambda}(k)\varepsilon _{\nu}^{\lambda'*}(k')e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})[a^{\lambda'}_{\vec{k}'},a^{\lambda \dagger}_{\vec{k}}]\varepsilon _{\mu}^{\lambda*}(k)\varepsilon _{\nu}^{\lambda'}(k')e^{ik\cdot(x-y)}] \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(-\eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{\mu ^{2}}\right) \left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right)
\end{align}$$

in the third step we use

$$\begin{align}
[a^{\lambda}_{\vec{k}},a^{\lambda' \dagger}_{\vec{k}'}] & = (2\pi)^{3}2E_{\vec{k}}\delta ^{\lambda \lambda'}\delta ^{3}(\vec{k}-\vec{k}')
\end{align}$$

for $\displaystyle{\mu,\nu=1,2,3}$, we have

$$\begin{align}
\braket{ 0|TA_{i}(x)A_{j}(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\delta _{ij}+\frac{k _{i}k _{j}}{\mu ^{2}}\right)\left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & =\left(\delta _{ij}-\frac{\partial ^{x} _{i}\partial ^{x} _{j}}{\mu ^{2}}\right) \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & =\left(\delta _{ij}-\frac{\partial ^{x} _{i}\partial ^{x} _{j}}{\mu ^{2}}\right) \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \left(\delta _{ij}+\frac{k _{i}k _{j}}{\mu ^{2}}\right) \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)}
\end{align}$$

and for $\displaystyle{\mu=0,\nu=1,2,3}$, we have

$$\begin{align}
\braket{ 0|TA_{0}(x)A_{i}(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}} \frac{k _{0}k _{i}}{\mu ^{2}} \left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & =-\frac{\partial' ^{x} _{0}\partial ^{x} _{i}}{\mu ^{2}} \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & +\frac{\partial ^{x} _{i}}{\mu ^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\partial _{0}^{x}\theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\partial _{0}^{x}\theta(y^{0}-x^{0})e^{ik\cdot(x-y)}\right) \\
 & =-\frac{\partial _{0}'^{x}\partial _{i}^{x}}{\mu ^{2}} \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)} \\
 & +\frac{\partial ^{x} _{i}}{\mu ^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\delta(x^{0}-y^{0})e^{-ik\cdot(x-y)}-\delta(y^{0}-x^{0})e^{ik\cdot(x-y)}\right) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{k _{0}k _{i}}{\mu ^{2}} \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)}
\end{align}$$

similar result holds for $\displaystyle{\mu=1,2,3,\nu=0}$. finally for $\displaystyle{\mu=0,\nu=0}$, we have

$$\begin{align}
\braket{ 0|TA_{0}(x)A_{0}(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(-1+\frac{k^{2}_{0}}{\mu ^{2}}\right) \left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & =\left( -1-\frac{\partial _{0}^{x}\partial _{0}^{x}}{\mu ^{2}} \right) \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left( \theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{ik\cdot(x-y)} \right) \\
 & +\frac{2\partial _{0}'^{x}}{\mu ^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\partial _{0}^{x}\theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\partial _{0}^{x}\theta(y^{0}-x^{0})e^{ik\cdot(x-y)}\right) \\
 & +\frac{1}{\mu ^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\partial _{0}^{x}\partial _{0}^{x}\theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}+\partial _{0}^{x}\partial _{0}^{x}\theta(y^{0}-x^{0})e^{ik\cdot(x-y)}\right) \\
 & =\left(-1-\frac{\partial _{0}'^{x}\partial _{0}'^{x}}{\mu ^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}-\mu ^{2}+i\varepsilon} e^{-ik\cdot(x-y)}+\frac{i}{\mu ^{2}}\delta ^{4}(x-y) \\
 & -\frac{1}{\mu ^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\delta(x^{0}-y^{0})(\partial _{0}^{x}e^{-ik\cdot(x-y)}-\partial _{0}^{x}e^{ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \left(-1+\frac{k _{0}k _{0}}{\mu ^{2}}\right) \frac{i}{k^{2}-\mu ^{2}+i\varepsilon} e^{-ik\cdot(x-y)}+\frac{i}{\mu ^{2}}\delta ^{4}(x-y)
\end{align}$$

in the third step we have used integration by parts. here $\displaystyle{\partial _{0}'}$ means the derivative does not act on the step function. combining all the cases together, we have

$$\begin{align}
\braket{ 0|TA_{\mu}(x)A_{\nu}(y)|0 } & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \left( -\eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{\mu ^{2}} \right) \frac{i}{k^{2}-\mu ^{2}+i\varepsilon}e^{-ik\cdot(x-y)}+\frac{i}{\mu ^{2}}\delta _{\mu}^{0}\delta _{\nu}^{0}\delta ^{4}(x-y)
\end{align}$$
