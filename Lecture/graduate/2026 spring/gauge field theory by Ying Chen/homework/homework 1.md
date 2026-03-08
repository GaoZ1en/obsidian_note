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

thus we have

$$\begin{align}
u_{1}(p) & =\sqrt{E+m}\xi \\
u_{2}(p) & =\frac{\vec{\sigma}\cdot \vec{p}}{\sqrt{E+m}}\xi
\end{align}$$

where $\displaystyle{\xi}$ is a two-component spinor. thus the solutions of the Dirac equation in the Dirac rep. are given by

$$\begin{align}
u(p) & =\begin{pmatrix}
\sqrt{E+m}\xi \\ \frac{\vec{\sigma}\cdot \vec{p}}{\sqrt{E+m}}\xi \end{pmatrix}, & v(p) & =\begin{pmatrix}
\frac{\vec{\sigma}\cdot \vec{p}}{\sqrt{E+m}}\eta \\ \sqrt{E+m}\eta \end{pmatrix}
\end{align}$$



# problem 2

the weak decay of $\displaystyle{\mu}$, i.e. $\displaystyle{\mu ^{-}\to e^{-}\bar{\nu} _{e}\nu _{\mu}}$ can effectively described by the following four-fermion Lagrangian (Fermi V-A theory):

$$\begin{align}
\mathcal{L} & =-\frac{G_{F}}{\sqrt{ 2 }}(\bar{\psi}_{\nu _{\mu}}\gamma ^{\mu}(1-\gamma _{5})\psi _{\mu})(\bar{\psi} _{e}(1-\gamma _{5})\psi _{\nu _{e}})+\text{c.c.}
\end{align}$$

where $\displaystyle{G_{F}}$ is the Fermi constant. calculate the decay width at tree level

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
