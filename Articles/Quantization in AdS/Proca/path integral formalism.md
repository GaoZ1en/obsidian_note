# ADM decomposition

the metric in ADM form is

$$\begin{align}
\mathrm{d}s^{2} & =-N^{2}\,\mathrm{d}t^{2}+h_{ij}(\mathrm{d}x^{i}+N^{i}\,\mathrm{d}t)(\mathrm{d}x^{j}+N^{j}\,\mathrm{d}t) \\
N & =\sqrt{1+r^{2}},\quad N^{i}=0,\quad h_{ij}\,\mathrm{d}x^{i}\mathrm{d}x^{j}=\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\,\mathrm{d}\phi^{2}
\end{align}$$

# free scalar

## formalism

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\varphi \nabla ^{\mu}\varphi+\mu ^{2}\varphi ^{2}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E_{\varphi}\delta \varphi+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E & =\nabla ^{2}\varphi-\mu ^{2}\varphi \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\varphi \delta \varphi \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \varphi \wedge \delta \varphi
\end{align}$$

the canonical momentum conjugate to $\displaystyle{\varphi}$ is

$$\begin{align}
\pi & =\frac{\delta S}{\delta \dot{\varphi}} \\
 & =\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\varphi
\end{align}$$

the Hamiltonian density is then

$$\begin{align}
\mathcal{H}[\varphi,\pi] & =\frac{1}{2}\frac{\pi ^{2}}{\sqrt{ \sigma }}+\frac{1}{2}\sqrt{ \sigma }\left(h^{ij}\partial _{i}\varphi \partial _{j}\varphi+\mu ^{2}\varphi ^{2}\right)
\end{align}$$

then the Hamiltonian is

$$\begin{align}
H & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\mathcal{H}[\pi,\varphi]
\end{align}$$

which is exactly the Noether charge corresponding to the Killing vector $\displaystyle{\xi_{0}+\bar{\xi}_{0}}$.

$$\begin{align}
H & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\xi_{0}+\bar{\xi}_{0}) ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\left(\nabla _{\alpha}\varphi \nabla ^{\alpha}\varphi+\mu ^{2}\varphi ^{2}\right)
\end{align}$$

then by standard path integral manipulations we have

$$\begin{align}
\braket{ \varphi(t_{f})|e^{-iH\Delta T}|\varphi(t_{i}) } & =\int _{\varphi(t_{i})}^{\varphi(t_{f})}\mathcal{D}\varphi \mathcal{D}\pi \exp \left( i\int _{t_{i}}^{t_{f}}\mathrm{d}t\mathrm{d}^{2}x\left(\pi \dot{\varphi}-\mathcal{H}\right) \right) \\
 & =\int _{\varphi(t_{i})}^{\varphi(t_{f})}\mathcal{D}\varphi \exp \left( iS[\varphi] \right)
\end{align}$$

## partition function

the general solution of the eom is given by

$$\begin{align}
\varphi & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{n,\bar{n}}\phi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\phi _{n,\bar{n}}(x)\right) \\
\phi_{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
\phi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} }
\end{align}$$

we want to compute the thermal partition function

$$\begin{align}
Z[\beta] & =\mathrm{Tr}e^{-\beta H}\\
 & =\int \mathcal{D}\varphi \exp \left( -S_{E}[\varphi] \right)
\end{align}$$

where the Euclidean action is obtained by a Wick rotation $\displaystyle{t\to-i\tau}$

$$\begin{align}
S_{E}[\varphi] & =\int _{0}^{\beta}\mathrm{d}\tau \int \mathrm{d}^{2}x\sqrt{ g }\left(\frac{1}{2}\nabla _{\mu}\varphi \nabla ^{\mu}\varphi+\frac{1}{2}\mu ^{2}\varphi ^{2}\right) \\
 & = \int ^{\beta}_{0}\mathrm{d}\tau \int \mathrm{d}^{2}x\sqrt{ g }\left(\frac{1}{2}\varphi(-\nabla ^{2}+\mu ^{2})\varphi\right) \\
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

then

$$\begin{align}
Z[\beta] & =[\mathrm{Det}\left(-\nabla ^{2}+\mu ^{2}\right)]^{-1/2}
\end{align}$$

notice the eigenfunctions of the operator $\displaystyle{-\nabla ^{2}+\mu ^{2}}$ are exactly space part of the mode functions $\displaystyle{\phi _{n,\bar{n}}}$ plus the Matsubara modes in the $\displaystyle{\tau}$ direction, with eigenvalues $\displaystyle{\omega _{n,\bar{n}}^{2}+\omega _{m}^{2}}$. then

$$\begin{align}
Z[\beta] & =\prod _{n,\bar{n}=0}\prod _{m\in \mathbb{Z}}(\omega _{m}^{2}+\omega _{n,\bar{n}}^{2})^{-1/2}
\end{align}$$

where

$$\begin{align}
\prod _{m\in \mathbb{Z}}(\omega _{m}^{2}+\omega _{n,\bar{n}}^{2}) & = (2\sinh(\beta \omega _{n,\bar{n}}/2))^{2} \\
 & \approx (1-e^{-\beta \omega _{n,\bar{n}}})^{2} \quad\text{(neclecting zero-point energy)} \\
\implies Z[\beta] & =\prod _{n,\bar{n}=0}\frac{1}{1-e^{-\beta \omega _{n,\bar{n}}}}
\end{align}$$

as for $\displaystyle{Z[\beta,\alpha]=\mathrm{\mathrm{Tr}}e^{-\beta H}e^{i\alpha J}}$, we only need to replace the Matsubara frequencies by twisted ones $\displaystyle{\omega _{m}\to \omega _{m}+\Omega j_{n,\bar{n}}}$ for each mode $\displaystyle{\phi _{n,\bar{n}}}$, where $\displaystyle{\Omega=\frac{i\alpha}{\beta}}$ and $\displaystyle{j_{n,\bar{n}}=\bar{n}-n}$. thus

$$\begin{align}
Z[\beta,\alpha] & =\prod _{n,\bar{n}=0} \frac{1}{1-e^{-\beta \omega _{n,\bar{n}}}e^{i\alpha j_{n,\bar{n}}}}
\end{align}$$
