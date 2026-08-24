The metric in Rindler coordinates is given by

$$\begin{align}
\mathrm{d}s^{2} & =-a^{2}\xi ^{2}\mathrm{d}\eta ^{2}+\mathrm{d}\xi ^{2}+\mathrm{d}\vec{x}_{\bot}^{2} \\
t & =\xi \sinh(a\eta) \\
x & =\xi \cosh(a\eta)
\end{align}$$

where $\displaystyle{a}$ is a constant, $\displaystyle{\eta}$ is the Rindler time coordinate, and $\displaystyle{\xi}$ is the spatial coordinate. Consider a massive scalar field $\displaystyle{\phi}$ in the Rindler wedge

$$\begin{align}
S & =-\frac{1}{2}\int _{M} \mathrm{d}^{d}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}$$

take a variation of the action, gives the eom, the symplectic potential and the symplectic form

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }E\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E & =\nabla ^{2}\phi-m^{2}\phi \\
\theta & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

where $\displaystyle{\Sigma}$ is a Cauchy surface, with $\displaystyle{\eta}$ constant, $\displaystyle{\sqrt{ \sigma }=1}$ is the induced metric on $\displaystyle{\Sigma}$, and $\displaystyle{\tau ^{\mu}=\frac{1}{a\xi}\delta ^{\mu \eta}}$ is the unit normal vector to $\displaystyle{\Sigma}$. The symplectic form becomes

$$\begin{align}
\omega & =\int _{0}^{\infty}\mathrm{d}\xi \mathrm{d}^{d-2}\vec{x}_{\bot} \frac{1}{a\xi}\partial _{\eta}\delta \phi \wedge \delta \phi
\end{align}$$

we will quantize the field in the Rindler wedge using the symplectic form above. The eom is

$$\begin{align}
-\frac{1}{a^{2}\xi ^{2}}\partial _{\eta}^{2}\phi+\partial _{\xi}^{2}\phi+\frac{1}{\xi}\partial _{\xi}\phi+\nabla ^{2}_{\bot}\phi-m^{2}\phi=0
\end{align}$$

take the following ansatz

$$\begin{align}
\phi & =e^{-i\omega \eta}e^{i\vec{k}_{\bot}\cdot \vec{x}_{\bot}}\tilde{\phi}(\xi)
\end{align}$$

then the eom becomes

$$\begin{align}
\partial _{\xi}^{2}\tilde{\phi}+\frac{1}{\xi}\partial _{\xi}\tilde{\phi}+\left( \frac{\omega ^{2}}{a^{2}\xi ^{2}}-\vec{k}_{\bot}-m^{2} \right)\tilde{\phi} & =0
\end{align}$$

the solution is given by the modified Bessel functions

$$\begin{align}
\tilde{\phi}_{\omega,\vec{k}_{\bot}} & =C_{1}I_{i\nu}(\kappa\xi)+C_{2}K_{i\nu}(\kappa\xi)
\end{align}$$

where $\displaystyle{\nu=\frac{\omega}{a},\kappa=\sqrt{ \vec{k}^{2}_{\bot}+m^{2} }}$

We choose $\displaystyle{C_{1}=0}$ to have a well-defined solution at infinity. The normalized solution is

$$\begin{align}
\phi _{\omega,\vec{k}_{\bot}} & =N_{\omega,\vec{k}_{\bot}}e^{-i\omega \eta}e^{i\vec{k}_{\bot}\cdot \vec{x}_{\bot}}K_{i\nu}\left(\kappa \xi\right) \\
\omega & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi \\
\Omega[\phi _{\omega,\vec{k}_{\bot}},\phi ^{*} _{\omega',\vec{k}'_{\bot}}] & =\int \mathrm{d}\xi \mathrm{d}^{d-2}\vec{x}_{\bot} \frac{1}{a\xi}(\partial _{\eta}\phi _{\omega,\vec{k}_{\bot}}\phi ^{*} _{\omega',\vec{k}'_{\bot}}-\partial _{\eta}\phi ^{*} _{\omega',\vec{k}'_{\bot}}\phi _{\omega,\vec{k}_{\bot}}) \\
 & :=-i\delta(\omega-\omega')\delta ^{d-2}(\vec{k}_{\bot}-\vec{k}'_{\bot}) \\
\implies N_{\omega,\vec{k}_{\bot}} & =\sqrt{ \frac{2\nu \sinh(\pi \nu)}{(2\pi)^{d-1}}}
\end{align}$$

the field can be expanded as

$$\begin{align}
\phi & =\int \mathrm{d}\omega \mathrm{d}^{d-2}\vec{k}_{\bot}(a_{\omega,\vec{k}_{\bot}}\phi _{\omega,\vec{k}_{\bot}}+a^{\dagger}_{\omega,\vec{k}_{\bot}}\phi ^{*}_{\omega,\vec{k}_{\bot}}) \\
\phi _{\omega,\vec{k}_{\bot}} & =\sqrt{ \frac{2\nu \sinh(\pi \nu)}{(2\pi)^{d-1}} }e^{-i\omega \eta}e^{i\vec{k}_{\bot}\cdot \vec{x}_{\bot}}K_{i\nu}(\kappa \xi)
\end{align}$$

on the other hand, in Minkowski spacetime, the field can be expanded as

$$\begin{align}
\phi & =\int \mathrm{d}^{d-1}\vec{k}\left(b _{\vec{k}}\varphi _{\vec{k}}+b^{\dagger}_{\vec{k}}\varphi ^{*}_{\vec{k}}\right) \\
\varphi _{\vec{k}} & =\frac{1}{\sqrt{ (2\pi)^{d-1}2\omega _{\vec{k}} }}e^{ik\cdot x}
\end{align}$$

they are related by the Bogoliubov transformation

$$\begin{align}
a_{\omega,\vec{k}_{\bot}} & =i\Omega[\phi,\phi ^{*} _{\omega,\vec{k}_{\bot}}] \\
 & =\int \mathrm{d}^{d-1}\vec{k}\left(\alpha _{\omega,\vec{k}_{\bot};\vec{k}}b_{\vec{k}}+\beta ^{*}_{\omega,\vec{k}_{\bot};\vec{k}}b^{\dagger}_{\vec{k}}\right) \\
\alpha _{\omega,\vec{k}_{\bot};\vec{k}} & =i\Omega[\varphi _{\vec{k}},\phi ^{*}_{\omega,\vec{k}_{\bot}}] \\
 & =\frac{1}{2\pi a}\sqrt{ \frac{\omega}{\omega _{\vec{k}}} }e^{\pi \omega/2a}\Gamma\left( \frac{i\omega}{a} \right)\left(\frac{\omega _{\vec{k}}+k_{x}}{a}\right)^{-i\omega/a}\left(2\pi\right)^{(d-2)/2}\delta ^{d-2}\left(\vec{k}_{\bot}-\vec{k}'_{\bot}\right) \\
\beta _{\omega,\vec{k}_{\bot};\vec{k}} & =e^{-\pi \omega/a}\alpha _{\omega,\vec{k}_{\bot};\vec{k}}
\end{align}$$

where $\displaystyle{\vec{k}'_{\bot}}$ is the transverse component of $\displaystyle{\vec{k}}$. Expectation value of Rindler number operator in the Minkowski vacuum is

$$\begin{align}
\braket{ \Omega _{\text{M}}|a^{\dagger}_{\omega,\vec{k}_{\bot}}a_{\omega,\vec{k}_{\bot}}|\Omega _{\text{M}} }  & = \frac{\delta(\omega-\omega')\delta ^{d-2}(\vec{k}_{\bot}-\vec{k}'_{\bot})}{e^{2\pi \omega/a}-1}
\end{align}$$

which is exactly a thermal distribution with Unruh temperature $\displaystyle{T=\frac{a}{2\pi}}$.
