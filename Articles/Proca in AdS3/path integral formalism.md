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
S_{E}[\varphi] & =\int _{0}^{\beta}\mathrm{d}\tau \int \mathrm{d}^{2}x\sqrt{ g }\left(\frac{1}{2}\nabla _{\mu}\varphi \nabla ^{\mu}\varphi+\frac{1}{2}\mu ^{2}\varphi ^{2}\right)
\end{align}$$

where the metric is now Euclidean AdS3

$$\begin{align}
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

field $\displaystyle{\varphi}$ satisfies the twisted periodic boundary condition $\displaystyle{\varphi(\tau+\beta)=e^{}}$

Wick rotate $\displaystyle{t\to -i\tau}$, $\displaystyle{\tau \sim \tau +\beta}$, with periodic boundary condition $\displaystyle{\varphi(\tau +\beta)=\varphi(\tau)}$. expand in normal modes on AdS3 (this step is actually a canonical transformation to coherent states)

$$\begin{align}
\varphi(x) & =\sum _{n,\bar{n}\geqslant 0}\left(\varphi _{n,\bar{n}}(\tau)\phi _{n,\bar{n}}(\vec{x})+\varphi ^{*}_{n,\bar{n}}(\tau)\phi _{n,\bar{n}} ^{*}(\vec{x})\right)
\end{align}$$

where $\displaystyle{\phi _{n,\bar{n}}(\vec{x})=\text{(spatial part of )}\varphi _{n,\bar{n}}(x)}$. then the Euclidean action diagonalizes to decoupled oscillators

$$\begin{align}
S_{E} & =\sum _{n,\bar{n}}\int _{0}^{\beta}\mathrm{d}\tau \left(\frac{1}{2}\varphi ^{*}_{n,\bar{n}}\dot{\varphi} _{n,\bar{n}}-\frac{1}{2}\dot{\varphi} ^{*}_{n,\bar{n}}\varphi _{n,\bar{n}}+\omega _{n,\bar{n}}|\varphi _{n,\bar{n}}|^{2}\right)
\end{align}$$

expand in Matsubara modes $\displaystyle{\varphi _{n,\bar{n}}(\tau)=\sum _{m}\varphi _{n,\bar{n},m}e^{i\omega _{m}\tau}}$ with $\displaystyle{\omega _{m}=\frac{2\pi m}{\beta}}$, we have

$$\begin{align}
S_{E} & =\sum _{n,\bar{n}}\sum _{m}\left(-i\omega _{m}+\omega _{n,\bar{n}}\right)|\varphi _{n,\bar{n},m}|^{2}
\end{align}$$

so that

$$\begin{align}
Z[\beta] & =\prod _{n,\bar{n}\geqslant 0}\prod _{m}\frac{1}{-i\omega _{m}+\omega _{n,\bar{n}}} \\
 & =\prod _{n,\bar{n}\geqslant 0}\frac{1}{1-q^{\omega _{n,\bar{n}}}} \\
 & q=e^{-\beta}
\end{align}$$

and if we introduce an angular potential $\displaystyle{\alpha}$ for $\displaystyle{J=H_{\bar{\xi}_{0}}-H_{\xi_{0}}}$, which corresponds to the trace $\displaystyle{\mathrm{Tr}e^{-\beta H}e^{i\alpha J}}$ with $\displaystyle{[H,J]=0}$, in the Euclidean PI this implements a twist

$$\begin{align}
\varphi(\tau +\beta ,\phi ,r) & =\varphi(\tau ,\phi +\alpha ,r)
\end{align}$$

Equivalently a Matsubara shift for modes with $\displaystyle{j_{n,\bar{n}}=\bar{n}-n}$

$$\begin{align}
i\omega _{m} & \to i\omega _{m}-\Omega j_{n,\bar{n}}, & \Omega\equiv \frac{i\alpha}{\beta}
\end{align}$$

yielding

$$\begin{align}
Z[\beta,\alpha] & =\prod _{n,\bar{n}\geqslant 0} \frac{1}{q^{\omega _{n,\bar{n}}}z^{j_{n,\bar{n}}}}, &z=e^{i\alpha}
\end{align}$$

# Proca field

things becomes more subtle in Proca case because of the secon-class contraint $\displaystyle{\nabla _{\mu}A^{\mu}=0}$.

$$\begin{align}
S[A] & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\delta A_{\nu}
\end{align}$$

the canonical momentum density conjugate to $\displaystyle{A_{i}}$ is

$$\begin{align}
\pi ^{i} & =\frac{\delta S}{\delta \dot{A}_{i}} \\
 & =\sqrt{ \sigma }NF^{0i},i\in\left\{r,\phi\right\}
\end{align}$$

while $\displaystyle{A_{0}}$ has no time derivative and is nondynamical. taking the divergence of the EOM gives the on-shell constraint

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0
\end{align}$$

Hamiltonian density is

$$\begin{align}
\mathcal{H}[A_{i},\pi ^{i};A_{0}] & =\frac{\pi _{i}\pi ^{i}}{2\sqrt{ \sigma }}+\frac{1}{4}\sqrt{ \sigma }F_{ij}F^{ij}+\frac{1}{2}\sqrt{ \sigma }\mu ^{2}(A_{i}A^{i}-A_{0}^{2})+A_{0}\mathcal{C}
\end{align}$$

where $\displaystyle{\mathcal{C}=-\nabla _{i}\pi ^{i}-\sqrt{ \sigma }\mu ^{2}A_{0}=0}$ is the constraint density arising from the eom of $\displaystyle{A_{0}}$. integrating out $\displaystyle{A_{0}}$ in the Hamiltonian gives the reduced Hamiltonian density

$$\begin{align}
\mathcal{H}_{\text{ref}}[A_{i},\pi ^{i}] & =\frac{\pi _{i}\pi ^{i}}{2\sqrt{ \sigma }}+\frac{1}{4}\sqrt{ \sigma }F_{ij}F^{ij}+\frac{1}{2}\sqrt{ \sigma }\mu ^{2}A_{i}A^{i}+\frac{1}{2\sqrt{ \sigma }\mu ^{2}}(\nabla _{i}\pi ^{i})^{2}
\end{align}$$

then the path integral in reduced phase space is

$$\begin{align}
\braket{ A(t_{f})|e^{-iH_{\text{red}}\Delta T}|A(t_{i}) }  & =\int ^{A(t_{f})}_{A(t_{i})}\mathcal{D}A_{i}\mathcal{D}\pi ^{i}\exp \left( i\int _{t_{i}}^{t_{f}}\mathrm{d}t\mathrm{d}^{2}x\left(\pi ^{i}\dot{A}_{i}-\mathcal{H}_{\text{red}}\right) \right)
\end{align}$$

by experience in the flat case, we expect

$$\begin{align}
\braket{ A(t_{f})|e^{-iH_{\text{red}}\Delta T}|A(t_{i}) }  & =\int ^{A(t_{f})}_{A(t_{i})}\mathcal{D}A_{\mu}\exp \left( iS[A] \right)
\end{align}$$

then the thermal partition function can be derived similarly as in the scalar case. the final result is

$$\begin{align}
Z[\beta,\alpha] & =\mathrm{Tr}e^{-\beta H}e^{i\alpha J} \\
 & =\prod _{n,\bar{n}\geqslant 0}\frac{1}{1-q^{\omega _{n,\bar{n}}}z^{j_{l,n,\bar{n}}}} \cdot \frac{1}{1-q^{\omega _{n,\bar{n}}}z^{j_{r,n,\bar{n}}}}
\end{align}$$

where $\displaystyle{q=e^{-\beta},z=e^{i\alpha}}$. 