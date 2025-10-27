# problem 1

show that the Hamiltonian of a free scalar

$$\begin{align}
H & =\frac{1}{2}\int \mathrm{d}^{3}\vec{x}\left(\dot{\phi}^{2}+(\vec{\nabla}\phi)^{2}+m^{2}\phi ^{2}\right) \\
 & =\int \mathrm{d}^{3}\vec{p}\omega _{p}\left(a^{\dagger}_{p}a_{p}+\frac{1}{2}[a_{p},a_{p}^{\dagger}]\right)
\end{align}$$

under the parametrization

$$\begin{align}
\phi(x) & =\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3/2}\sqrt{ 2\omega _{p} }}\left(a_{p}e^{ip\cdot x}+a_{p}^{\dagger}e^{-ip\cdot x}\right)
\end{align}$$

*sol*.

$$\begin{align}
H & =\frac{1}{2}\int \mathrm{d}^{3}\vec{x}\int \frac{\mathrm{d}^{3}\vec{p}\mathrm{d}^{3}\vec{p}'}{(2\pi)^{3}2\sqrt{ \omega _{p}\omega _{p'} }}\left[\left(-i\omega _{p}a_{p}e^{ip\cdot x}+i\omega _{p}a_{p}^{\dagger}e^{-ip\cdot x}\right)\left(-i\omega _{p'}a_{p'}e^{ip'\cdot x}+i\omega _{p'}a^{\dagger}_{p'}e^{-ip'\cdot x}\right)\right. \\
 & \left.+\left(i\vec{p}a_{p}e^{ip\cdot x}-i\vec{p}a_{p}^{\dagger}e^{-ip\cdot x}\right)\cdot\left(i\vec{p}'a_{p'}e^{ip'\cdot x}-i\vec{p}'a_{p'}^{\dagger}e^{-ip'\cdot x}\right)+m^{2}(a_{p}e^{ip\cdot x}+a^{\dagger}_{p}e^{-ip\cdot x})(a_{p'}e^{ip'\cdot x}+a^{\dagger}_{p'}e^{-ip'\cdot x})\right] \\
 & =\frac{1}{2}\int \frac{\mathrm{d}^{3}\vec{p}\mathrm{d}^{3}\vec{p}'}{2\sqrt{ \omega _{p}\omega _{p'} }}\left[\omega _{p}\omega _{p'}\delta ^{3}(\vec{p}-\vec{p}')\left(a_{p}a_{p'}^{\dagger}+a_{p}^{\dagger}a_{p'}\right)-\omega _{p}\omega _{p'}\delta ^{3}(\vec{p}+\vec{p}')(a_{p}a_{p'}e^{2i\omega _{p}t}+a_{p}^{\dagger}a_{p'}^{\dagger}e^{-2i\omega _{p}t})\right. \\
 & +\vec{p}\cdot \vec{p}'\delta ^{3}(\vec{p}-\vec{p}')\left(a_{p}a_{p'}^{\dagger}+a_{p}^{\dagger}a_{p'}\right)-\vec{p}\cdot \vec{p}'\delta ^{3}(\vec{p}+\vec{p}')(a_{p}a_{p'}e^{2i\omega _{p}t}+a_{p}^{\dagger}a_{p'}^{\dagger}e^{-2i\omega _{p}t}) \\
 & \left.+m^{2}\delta ^{3}(\vec{p}-\vec{p}')(a_{p}a_{p'}^{\dagger}+a_{p}^{\dagger}a_{p'})+m^{2}\delta ^{3}(\vec{p}+\vec{p}')\left(a_{p}a_{p'}+a_{p}^{\dagger}a_{p'}^{\dagger}\right)\right] \\
 & =\frac{1}{2}\int \mathrm{d}^{3}\vec{p}\omega _{p}(a_{p}a_{p}^{\dagger}+a^{\dagger}_{p}a_{p}) \\
 & =\int \mathrm{d}^{3}\vec{p}\omega _{p}\left(a^{\dagger}_{p}a_{p}+\frac{1}{2}[a_{p},a_{p}^{\dagger}]\right)
\end{align}$$

in the third $\displaystyle{=}$ we notice that the $\displaystyle{\delta ^{3}(\vec{p}+\vec{p}')}$ factor cancels the $\displaystyle{a_{p}^{2}}$ and $\displaystyle{a_{p}^{\dagger2}}$ dependence.

# problem 2

show that

$$\begin{align}
p^{0}\delta ^{3}(\vec{p}'-\vec{p}) & =k^{0}\delta ^{3}(\vec{k}'-\vec{k})
\end{align}$$

here $\displaystyle{p',p}$ are future directed timelike vector and they are related to $\displaystyle{k',k}$ respectively by a Lorentz transformation. 

*sol*. 

we only need to check this for a boost. consider a boost with velocity $\displaystyle{v}$ along a future directed timelike unit vector $\displaystyle{\hat{n}}$. decompose $\displaystyle{\vec{p}=p_{\parallel}\hat{n}+\vec{p}_{\bot}}$, then

$$\begin{align}
k_{\bot} & =p_{\bot} \\
k _{\parallel} & =\gamma(p_{\parallel}+vp^{0}) \\
k^{0} & =\gamma(p^{0}+vp_{\parallel})
\end{align}$$

with $\displaystyle{p^{0}=\sqrt{ p_{\bot}^{2}+p_{\parallel}^{2}+m^{2} }}$then

$$\begin{align}
\delta ^{3}(\vec{k}'-\vec{k}) & =\frac{1}{|J|}\delta ^{3}(\vec{p}'-\vec{p}) \\
J & =\det \frac{\partial k _{i}}{\partial p_{j}} \\
 & =\begin{vmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & \gamma\left( 1+\frac{vp_{\parallel}}{p^{0}} \right)
\end{vmatrix} \\
 & =\frac{k_{0}}{p_{0}} \\
\implies p^{0}\delta ^{3}(\vec{p}'-\vec{p}) & =k^{0}\delta ^{3}(\vec{k}'-\vec{k})
\end{align}$$

![image](http://100.94.165.49:8080/i/c510b1ac-772c-4c86-8e9f-0d06c9dc2bcb.jpg)




