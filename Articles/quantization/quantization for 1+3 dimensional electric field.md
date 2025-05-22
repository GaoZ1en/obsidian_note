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
\end{align}i
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
path integral quantization. 

