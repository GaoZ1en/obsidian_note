# Appendix A: asymptotic behaviors of relevant quantities

in this appendix, we take a more detailed look at the asymptotic behaviors of the relevant quantities in our Proca-Chern-Simons theory.

we impose the asymptotic behavior of the field components $A_\mu$ as

$$\begin{align}
A_{t} & =o(r^{0}) \\
A_{r} & =o(r^{-3}) \\
A_{\phi} & =o(r^{0})
\end{align}$$

and for $\displaystyle{A^{\mu}}$, we have

$$\begin{align}
A^{t} & =o(r^{-2}) \\
A^{r} & =o(r^{-1}) \\
A^{\phi} & =o(r^{-2})
\end{align}$$

then the asymptotic behavior of the non-zero components of $\displaystyle{F_{\mu \nu}}$ and $\displaystyle{F^{\mu \nu}}$ are

$$\begin{align}
F_{tr} & =o(r^{-1}) \\
F_{t\phi} & =o(r^{0}) \\
F_{r\phi} & =o(r^{-1})
\end{align}$$

and

$$\begin{align}
F^{tr} & =o(r^{-1}) \\
F^{t\phi} & =o(r^{-4}) \\
F^{r\phi} & =o(r^{-1})
\end{align}$$

then the asymptotic behavior of the Lagrangian of Maxwell term and Proca mass term are

$$\begin{align}
\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)=o(r^{-1})
\end{align}$$

and the asymptotic behavior of the Chern-Simons term is

$$\begin{align}
\frac{k}{4\pi}\sqrt{ -g }\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho} & =o(r^{-1})
\end{align}$$

thus the whole action has the asymptotic behavior

$$\begin{align}
S & =\int_{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & =o(r^{0})
\end{align}$$

which means the action is finite. then we will consider the $\displaystyle{\delta S}$. we first represent $\displaystyle{S}$ as

$$\begin{align}
S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}} \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

here, we have introduced a cutoff radius $r_{\infty}$, and $\displaystyle{M_{r_{\infty}}}$ is the subregion of $\displaystyle{M}$ bounded by $\displaystyle{r=r_{\infty}}$. with the representation of $\displaystyle{S}$, we compute $\displaystyle{\delta S}$ as

$$\begin{align}
\delta S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}} \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A^{\mu} \\
 & +\int _{\Sigma _{f_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right)-\int _{\Sigma _{i,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}\right) \\
 & -\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n^{\mu}\left(F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}\right)
\end{align}$$

here, $\displaystyle{\Sigma _{i,r_{\infty}}}$ and $\displaystyle{\Sigma _{f,r_{\infty}}}$ are the subregions of the $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$ bounded by $\displaystyle{r=r_{\infty}}$, and $\displaystyle{\Gamma _{r_{\infty}}}$ is the subregion of the cutoff surface at $\displaystyle{r=r_{\infty}}$ sandwiched between $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{i}}$, $\displaystyle{\gamma _{AB}}$ is the induced metric on the constant $\displaystyle{r}$ surface with the expression

$$\begin{align}
\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} & =-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and $\displaystyle{n^{\mu}}$ is the outward-pointing unit normal vector to the constant $\displaystyle{r}$ surface with the expression

$$\begin{align}
n^{\mu} & =\left(0,(1+r^{2})^{1/2},0\right)
\end{align}$$

to analyze the boundary components of $\displaystyle{\delta S}$, we first compute the asymptotic behavior of non-zero components of $\displaystyle{\nabla _{\mu}F_{\nu \rho}}$ as

$$\begin{align}
\nabla _{t}F_{tr} & =o(r^{-1}) \\
\nabla _{t}F_{t\phi} & =o(r^{-2}) \\
\nabla _{t}F_{r\phi} & =o(r^{-1}) \\
\nabla _{r}F_{tr} & =o(r^{-2}) \\
\nabla _{r}F_{t\phi} & =o(r^{-1}) \\
\nabla _{r}F_{r\phi} & =o(r^{-2}) \\
\nabla _{\phi}F_{tr} & =o(r^{-1}) \\
\nabla _{\phi}F_{t\phi} & =o(r^{2}) \\
\nabla _{\phi}F_{t\phi} & =o(r^{-1})
\end{align}$$

and the asymptotic behaviors of $\displaystyle{\delta A^{\mu}}$ are chosen to be the same as $\displaystyle{A^{\mu}}$:

$$\begin{align}
\delta A^{t} & =o(r^{-2}) \\
\delta A^{r} & =o(r^{-1}) \\
\delta A^{\phi} & =o(r^{-2})
\end{align}$$

then the asymptotic behavior of the integrands of the bulk and boundary components of $\displaystyle{\delta S}$ are

$$\begin{align}
\sqrt{ -g }\left( \nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho} \right)\delta A^{\mu} & =o(r^{-1}) \\
\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) & =o(r^{-3}) \\
(-1)\sqrt{ -\gamma }n^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) & =o(r^{0})
\end{align}$$

thus we have

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A^{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right)
\end{align}$$

which is the same as the expression appearing in the main text. then we will consider the asymptotic behavior of $\displaystyle{X_{\xi}\cdot \delta S}$, we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\sigma}\left(\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)\right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & +\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

we compute the asymptotic behavior of the integrands of the boundary components of $\displaystyle{X_{\xi}\cdot \delta S}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{-1}) \\
\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{0})
\end{align}$$

then we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

which is the same as the expression appearing in the main text. then we will consider the asymptotic behavior of $\displaystyle{H_{\xi}|_{\widetilde{P}}}$, we have

$$\begin{align}
H_{\xi}|_{\widetilde{P}} & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma} \right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\int _{H_{r_{\infty}}} \mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left(F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\right)A_{\sigma}\xi ^{\sigma}
\end{align}$$

here, we have again introduced a cutoff surface at $\displaystyle{r=r_{\infty}}$. $\displaystyle{\Sigma _{r_{\infty}}}$ is the subregion of $\displaystyle{\Sigma}$ bounded by $\displaystyle{r=r_{\infty}}$, and $\displaystyle{H_{r_{\infty}}}$ is the intersection of $\displaystyle{\Sigma}$ with the cutoff surface at $\displaystyle{r=r_{\infty}}$ surface. $\displaystyle{h_{mn}}$ is the induced metric of $\displaystyle{H_{r_{\infty}}}$ with the expression

$$\begin{align}
h_{mn}\mathrm{d}x^{m}\mathrm{d}x^{n} & =r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and $\displaystyle{\hat{n}^{a}}$ is the outward-pointing unit normal vector parallel to $\displaystyle{\Sigma}$ and orthogonal to $\displaystyle{H_{r_{\infty}}}$ with the expression in the coordinate system $\displaystyle{(r,\phi)}$:

$$\begin{align}
\hat{n}^{a} & =((1+r^{2})^{1/2},0)
\end{align}$$

we compute the asymptotic behavior of the integrands of the boundary components of $\displaystyle{H_{\xi}|_{\widetilde{P}}}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) & =o(r^{-1}) \\
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma} & =o(r^{0})
\end{align}$$

then we have

$$\begin{align}
H_{\xi}|_{\widetilde{P}} & =\int _{\Sigma }\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

which is the same as the expression appearing in the main text. finally we will consider the asymptotic behavior of $\displaystyle{X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}}}$, we have

$$\begin{align}
X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}} & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\left[-\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right. \\
 & \left.\left.+D_{\alpha}\left(\sigma ^{\alpha}_{~\mu}\tau _{\nu}\left(\xi ^{\mu}F^{\nu \rho}\delta A_{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right)\right]\right|_{\widetilde{\mathcal{P}}} \\
 & =-\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\left[\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right] \\
 & \left.+\int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{\mu}\tau _{\nu}\left(\xi ^{\mu}F^{\nu}_{~\rho}\delta A^{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

we compute the asymptotic behavior of the integrands of the boundary components of $\displaystyle{X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}}}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\delta\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) & =o(r^{-1}) \\
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left( \xi ^{\mu}F^{\nu}_{~\rho}\delta A^{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma} \right) & =o(r^{0})
\end{align}$$

then we have

$$\begin{align}
X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}} & =-\left.\int _{\Sigma }\mathrm{d}^{2}x\sqrt{ \sigma }\left[\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right]\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

which is the same as the expression appearing in the main text. thus the theory has a well-defined variational principle and the Noether theorem applies to the asymptotic symmetries.