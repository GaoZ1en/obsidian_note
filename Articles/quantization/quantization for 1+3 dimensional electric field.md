$$\tag{0.1}
\begin{align}
S & =-\frac{1}{4}\int _{M}\mathrm{d}^{4}xF_{\mu \nu}F^{\mu \nu}
\end{align}
$$

---
we first do canonical quantization. impose temporal gauge $\displaystyle{A^{0}=0}$ and Column gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$. then the action becomes

$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i})^{2}-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right)
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left(\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})A^{i}\delta A^{j}\right)+\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j} \\
 & =\int \mathrm{d}^{4}xE_{j}\delta A^{j}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{j} & =\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})A^{i} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

and the symplectic form is

$$\tag{1.3}
\begin{align}
\omega=\delta \theta=\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\delta \dot{A}^{i}\wedge \delta A^{j}
\end{align}
$$

a general solution for the equation of motion $\displaystyle{E_{j}=0}$ is

$$\tag{1.4}
\begin{align}
A^{i}(x) & =\int \mathrm{d}^{3}\vec{k} \sum ^{2}_{s=1}e^{s,i}_{k}[a_{ks}\sigma_{k}(x)+a^{\dagger}_{ks}\sigma_{k}^{*}(x)]
\end{align}
$$

where $\displaystyle{\sigma ^{*}_{k}(x)= \frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}}$ and $\displaystyle{e^{s,i}_{k}}$ satisfies $\displaystyle{k_{i}e^{s,i}_{k}=0\implies e^{s,i}_{k}e^{s',j}_{k}=\delta ^{ij}+\frac{k^{i}k^{j}}{k^{2}}}$. then the symplectic form becomes

$$\tag{1.5}
\begin{align}
\omega & =\int \mathrm{d}^{3}k\sum ^{2}_{s=1} i\delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

then the Hamiltonian flow corresponding to $\displaystyle{A^{i}(x)}$ is

$$\tag{1.6}
\begin{align}
X_{A^{i}} & =-i\int \mathrm{d}^{4}x\sum ^{2}_{s=1}\left(\frac{\delta A^{i}}{\delta a_{ks}} \frac{\delta}{\delta a^{\dagger}_{ks}}-\frac{\delta A^{i}}{\delta a^{\dagger}_{ks}} \frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}\left(\sigma _{k} \frac{\delta}{\delta a_{ks}^{\dagger}}-\sigma ^{*}_{k} \frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

then we have the following commutator

$$\tag{1.7}
\begin{align}
[A^{i}(x),A^{j}(y)] & =iX_{A^{i}(x)}\cdot X_{A^{j}(x)}\cdot\omega \\
 & =\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}e^{s,i}_{k}e^{s,j}_{k}(\sigma _{k}(x)\sigma _{k}^{*}(y)-\sigma ^{*}_{k}(x)\sigma _{k}(y)) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left(\delta ^{ij}+\frac{k^{i}k^{j}}{k^{2}}\right) (e^{ik\cdot(x-y)}-e^{-ik(x-y)}) \\
 & =\left(\delta ^{ij}+\frac{\partial _{x} ^{i}\partial _{x} ^{j}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)})
\end{align}
$$

contour chosen is the same as usual. and the time ordered two point function

$$\tag{1.8}
\begin{align}
\braket{ A^{i}(x)A^{j}(y) } & = \braket{ 0|\mathcal{T}A^{i}(x)A^{j}(y)|0 }  \\
 & =\theta(x^{0}-y^{0})\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}e^{s,i}_{k}e^{s,j}_{k}\sigma _{k}(x)\sigma _{k}^{*}(y)+(x^{0}\leftrightarrow y^{0}) \\
 & =\left(\delta ^{ij}+\frac{\partial ^{i}_{x}\partial _{x} ^{j}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\left(\delta ^{ij}+\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{\vec{\nabla} _{x}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}
\end{align}
$$

here we emphasis that the $\displaystyle{\vec{\nabla}^{2}_{x}}$ appeared in the denominator should only be understood in the context of Fourier expansion.

the conserved charge, Hamiltonian, corresponding to $\displaystyle{ \tau _{\mu}=\left(1,0,0,0 \right) }$ is 

$$\tag{1.11}
\begin{align}
H & =\int _{\Sigma} \mathrm{d}^{3}x\left(X_{\tau}\cdot \Theta-\mathcal{L} \right) \\
 & = \int _{\Sigma}\mathrm{d}^{3}x\left(\delta _{ij}\dot{A}^{i}\dot{A}^{j}-\frac{1}{2}\delta _{ij}\dot{A}^{i}\dot{A}^{j}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\left(\frac{1}{2}\delta _{ij}\dot{A}^{i}\dot{A}^{j}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\left(\frac{1}{2}\delta _{ij}\dot{A}^{i}\dot{A}^{j}-\frac{1}{2}\delta _{ij}A^{i}\vec{\nabla}^{2}A^{j}\right) \\
 & =\frac{i}{2}\delta _{ij}\int _{\Sigma}\mathrm{d}^{3}x iA^{i} \overleftrightarrow{\partial}_{0}\dot{A}^{j} \\
 & =\frac{i}{2}\delta _{ij}\int _{\Sigma}\mathrm{d}^{3}x \int \mathrm{d}^{3}\vec{k} \mathrm{d}^{3}\vec{k}' \sum ^{2}_{s,s'=1} e^{s,i}_{k}e^{s',j}_{k'} \left(a_{ks}\sigma _{k}+a^{\dagger}_{ks}\sigma ^{*}_{k}\right)\overleftrightarrow{\partial}_{0}\left(-i \omega a_{k's'}\sigma _{k'}+i \omega a_{k's'}^{\dagger}\sigma ^{*}_{k'}\right) \\
 & =\int \mathrm{d}^{3}\vec{k} \frac{\omega}{2}\sum ^{2}_{s=1}(a_{ks}a_{ks}^{\dagger}+a^{\dagger}_{ks}a_{ks})
\end{align}
$$

here we use the Klein-Gordon inner product for $\displaystyle{\sigma _{k}}$. 

---
path integral quantization. here we use the Faddeev-Popov formalism. the generating functional is

$$\tag{2.1}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+J^{\mu}A_{\mu}\right)\right)
\end{align}
$$

however the path integral is not well defined due to the gauge symmetry. choose gauge $\displaystyle{G[A^{\mu}]=0}$, we have the Faddeev-Popov determinant

$$\tag{2.2}
\begin{align}
1=\Delta _{F}[A_{\mu}] \int \mathcal{D}\alpha \delta(G[A^{\alpha}_{\mu}])
\end{align}
$$

where $\displaystyle{A^{\alpha}_{\mu}=A_{\mu}+\partial _{\mu}\alpha}$ and the Faddeev-Popov determinant is defined as

$$\tag{2.3}
\begin{align}
\Delta _{F}[A_{\mu}] & =\det \left( \frac{\delta(G[A_{\mu}^{\alpha}])}{\delta \alpha} \right)_{\alpha=0}
\end{align}
$$

make a second gauge transformation in (2.2), we have

$$\tag{2.4}
\begin{align}
1=\Delta _{F}[A_{\mu}^{\alpha'}]\int \mathcal{D}\alpha'\delta(G[A^{\alpha \alpha'}_{\mu}])
\end{align}
$$

gauge invariance requires that $\displaystyle{\int \mathcal{D}\alpha'\delta(G[A^{\alpha \alpha'}_{\mu}])=\int \mathcal{D}\alpha \delta(G[A^{\alpha}_{\mu}])}$, so the Faddeev-Popov determinant is independent of the gauge choice. insert (2.2) into (2.1), we have

$$\tag{2.5}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}\alpha \mathcal{D}A_{\mu}\Delta _{F}[A_{\mu}]\delta(G[A_{\mu}^{\alpha}])\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+J^{\mu}A_{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\Delta _{F}[A_{\mu}]\delta(G[A_{\mu}])\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+J^{\mu}A_{\mu}\right)\right)
\end{align}
$$

write $\displaystyle{G[A_{\mu}]=\Omega[A_{\mu}]-\omega}$, then

$$\tag{2.6}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}A_{\mu}\mathcal{D}\omega \Delta _{F}[A_{\mu}] \delta(\Omega[A_{\mu}]-\omega)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+J^{\mu}A_{\mu}\right)\right)\exp\left(-i \int \mathrm{d}^{4}x \frac{\omega ^{2}}{2\xi}\right) \\
 & =\int \mathcal{D}A_{\mu}\Delta _{F}[A_{\mu}]\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}\Omega ^{2}+J^{\mu}A_{\mu}\right)\right)
\end{align}
$$

and the Faddeev-Popov determinant can be written as

$$\tag{2.7}
\begin{align}
\Delta_F[A] = \det\left(\frac{\delta (G[A^{\alpha}_{\mu}])}{\delta \alpha}\right)_{\alpha} = \int \mathcal{D}\bar{c}\mathcal{D}c \exp\left(-i\int d^4x\mathrm{d}^{4}y \bar{c}(x) \mathcal{M}(x,y) c(y)\right)
\end{align}
$$

where the Faddeev-Popov operator $\displaystyle{\mathcal{M}}$ can be derived as

$$\tag{2.8}
\begin{align}
\mathcal{M}(x,y) & = \frac{\delta G[A^{\alpha}_{\mu}](x)}{\delta \alpha(y)} \\
 & =\int \mathrm{d}^{4}z \frac{\delta \Omega(x)}{\delta A^{\alpha}_{\mu}(z)}  \frac{\delta A^{\alpha}_{\mu}(z)}{\delta \alpha(y)} \\
 & =\int \mathrm{d}^{4}z \frac{\delta \Omega(x)}{\delta A^{\alpha}_{\mu}(z)} \partial _{\mu}\delta ^{4}(z-y)
\end{align}
$$

so the entire path integral can be written as

$$\tag{2.9}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}A_{\mu}\mathcal{D}\bar{c}\mathcal{D}c \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}\Omega ^{2}+J^{\mu}A_{\mu}\right)-i\int \mathrm{d}^{4}x\mathrm{d}^{4}y \bar{c}(x)M(x,y)c(y)\right)
\end{align}
$$

for electric field, in general ghosts $\displaystyle{\bar{c},c}$ decouple with $\displaystyle{A_{\mu}}$. so we can just ignore the ghost action

if we choose Lorentz gauge $\displaystyle{\partial _{\mu}A^{\mu}=0}$, we have

$$\tag{2.10}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{\mu}A^{\mu})^{2}+J^{\mu}A_{\mu} \right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A_{\mu}\left( \left( 1-\frac{1}{\xi} \right)\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2} \right)A_{\nu}+J^{\mu}A_{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ^{\mu}(x)(D^{-1})_{\mu \nu}(x,y)J^{\nu}(y)\right)
\end{align}
$$

where $\displaystyle{(D^{-1})_{\mu \nu}(x,y)}$ satisfies

$$\tag{2.11}
\begin{align}
i\left( \left( 1-\frac{1}{\xi} \right)\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2} \right)_{x}(D^{-1})_{\nu \rho}(x,y) & =\delta ^{\mu}_{\rho}\delta ^{4}(x-x') \\
(D^{-1})_{\mu \nu}(x,y) & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}-i\varepsilon}e^{-ik\cdot(x-y)}\left(\eta _{\mu \nu}+\left(1-\frac{1}{\xi}\right) \frac{k _{\mu}k _{\nu}}{k^{2}}\right)
\end{align}
$$

$$\tag{.}
\begin{align}
(D^{-1})_{\nu \rho}(x,y) & =i\delta ^{\mu}_{\rho}\left( \left( 1-\frac{1}{\xi} \right)k^{\mu}k^{\nu}-\eta ^{\mu \nu}k^{2} \right)^{-1} \\
\end{align}
$$


so we have the following correlation functions

$$\tag{2.12}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(y) }  & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J^{\mu}(x)\delta J^{\nu}(y)}\Big|_{J=0} \\
 & =(D^{-1})_{\mu \nu}(x,y) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}-i\varepsilon}e^{-ik\cdot(x-y)}\left(\eta _{\mu \nu}+\left(1-\frac{1}{\xi}\right) \frac{k _{\mu}k _{\nu}}{k^{2}}\right)
\end{align}
$$

if we choose temporal gauge $\displaystyle{A_{0}=0}$,

$$\tag{.}
\begin{align}

\end{align}
$$

---
here we present how Bjorken and Drell do the canonical quantization. we still start from the action

$$\tag{0.1}
\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{4}xF_{\mu \nu}F^{\mu \nu} \\
 & =\int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i}+\partial ^{i}A^{0})^{2}-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right)
\end{align}
$$

the canonical momentum is

$$\tag{3.1}
\begin{align}
\pi _{0} & = \frac{\delta S}{\delta \dot{A}_{0}}=0,  & \pi _{i}=\frac{\delta S}{\delta \dot{A}^{i}}=\delta _{ij}\dot{A}^{j}+ \partial _{i}A^{0} \\
\implies \dot{A}^{i} & =\delta ^{ij}(\pi _{j}-\partial _{j}A^{0})
\end{align}
$$

we have a primary constraint $\displaystyle{\varphi _{1}=\pi _{0}\approx_{0}}$. then the Hamiltonian is

$$\tag{3.2}
\begin{align}
H & =\int \mathrm{d}^{3}x\left(\pi _{i}\dot{A}^{i}-\mathcal{L}\right) \\
 & =\int \mathrm{d}^{3}x\left(\pi _{i}\delta ^{ij}(\pi _{j}-\partial _{j}A^{0})-\frac{1}{2}\delta _{ij}\delta ^{ik}\delta ^{jl}\pi _{k}\pi _{l}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right) \\
 & =\int \mathrm{d}^{3}x\left(\frac{1}{2}\delta ^{ij}\pi _{i}\pi _{j}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}-\delta ^{ij}\pi _{i}\partial _{j}A^{0}\right) \\
 & \approx\int \mathrm{d}^{3}x\left(\frac{1}{2}\delta ^{ij}\pi _{i}\pi _{j}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right)
\end{align}
$$

in the final step we use ibp require $\displaystyle{\left\{\varphi _{1},H\right\}\approx0}$:

$$\tag{3.3}
\begin{align}
\left\{\varphi _{1},H\right\} & =\left\{\pi _{0},H\right\} = -\frac{\delta H}{\delta A^{0}} \\
 & =-\delta ^{ij}\partial _{i}\pi _{j}\approx0
\end{align}
$$

then we have a secondary constraint $\displaystyle{\varphi _{2}=-\delta ^{ij}\partial _{i}\pi _{j}=0}$. the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$ is just 0, so this is system with first class constraints. since we have the $\displaystyle{\varphi _{2}\approx0}$ constraints, the naive equal-time commutator

$$\tag{3.4}
\begin{align}
[A^{i}(\vec{x},t),\pi _{j}(\vec{x}',t)]=i\delta ^{i}_{j} \delta ^{3}(\vec{x}-\vec{x}')
\end{align}
$$

is wrong. we have to impose traceless $\displaystyle{\tilde{\delta}_{ij}}$ function as

$$\tag{3.5}
\begin{align}
\tilde{\delta}_{ij}(\vec{x}-\vec{y}) & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} e^{i\vec{k}\cdot(\vec{x}-\vec{y})}\left(\delta _{ij}-\frac{k _{i}k _{j}}{k^{2}}\right)
\end{align}
$$

and (3.4) becomes

$$\tag{3.6}
\begin{align}
[A^{i}(\vec{x},t),\pi _{j}(\vec{x}',t)]= i\tilde{\delta}^{i}_{j}(\vec{x}-\vec{x}')
\end{align}
$$

choosing the temporal gauge $\displaystyle{A^{0}=0}$ and the Column guage $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, we have the following mode expansion

$$\tag{3.6}
\begin{align}
\vec{A}(x,t) & =\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}\vec{e}^{s}_{k}\left(a_{ks}\sigma _{k}+a^{\dagger}_{ks}\sigma _{k}^{*}\right)
\end{align}
$$

the following discussion is basically the same as above.