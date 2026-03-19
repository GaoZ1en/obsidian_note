# A analysis for the near boundary region's contributions to relevant quantities

In this appendix, we provide a more careful analysis for the near boundary region's contributions to some relevant quantities in the Proca-Chern-Simons theory.

We first impose the asymptotic boundary conditions of the field components $A_\mu$ for $r \to \infty$ as

$$\begin{align}
A_{t} & =o(r^{0}) \\
A_{r} & =o(r^{-3}) \\
A_{\phi} & =o(r^{0})
\end{align}$$

And, for the contravariant components $\displaystyle{A^{\mu}}$, we have

$$\begin{align}
A^{t} & =o(r^{-2}) \\
A^{r} & =o(r^{-1}) \\
A^{\phi} & =o(r^{-2})
\end{align}$$

Then, the asymptotic behaviors of the non-zero components of $\displaystyle{F_{\mu \nu}}$ and $\displaystyle{F^{\mu \nu}}$ are

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

Then, the asymptotic behavior of the Lagrangian of the Maxwell term and the Proca mass term is

$$\begin{align}
\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)=o(r^{-1})
\end{align}$$

And the asymptotic behavior of the Chern-Simons term is

$$\begin{align}
\frac{k}{4\pi}\sqrt{ -g }\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho} & =o(r^{-1})
\end{align}$$

Thus, the integrand of the action has the asymptotic behavior

$$\begin{align}
\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)=o(r^{-1}).
\end{align}$$

Which means that the near boundary region's contribution to the integral over $M$ in the action is finite. 

Then, we consider the variations of the action $\displaystyle{\delta S}$. We first represent the action $\displaystyle{S}$ as

$$\begin{align}
S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}} \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

Here, we have introduced a cutoff radius $r_{\infty}$. And $\displaystyle{M_{r_{\infty}}}$ is the subregion of $\displaystyle{M}$ bounded by $\displaystyle{r=r_{\infty}}$. With the representation of $\displaystyle{S}$, we compute $\displaystyle{\delta S}$ as

$$\begin{align}
\delta S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}} \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A^{\mu} \\
 & +\int _{\Sigma _{f_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right)-\int _{\Sigma _{i,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}\right) \\
 & -\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n^{\mu}\left(F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}\right)
\end{align}$$

Here, $\displaystyle{\Sigma _{i,r_{\infty}}}$ and $\displaystyle{\Sigma _{f,r_{\infty}}}$ are the subregions of $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$ bounded by $\displaystyle{r=r_{\infty}}$. $\displaystyle{\Gamma _{r_{\infty}}}$ is the subregion of the cutoff surface at $\displaystyle{r=r_{\infty}}$ sandwiched between $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$. $\displaystyle{\gamma _{AB}}$ is the induced metric on the constant $\displaystyle{r}$ surface with the expression

$$\begin{align}
\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} & =-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

And $\displaystyle{n^{\mu}}$ is the outward-pointing unit normal vector to the constant $\displaystyle{r}$ surface with the expression

$$\begin{align}
n^{\mu} & =\left(0,(1+r^{2})^{1/2},0\right)
\end{align}$$

To analyze the boundary components of $\displaystyle{\delta S}$, we first compute the asymptotic behavior of non-zero components of $\displaystyle{\nabla _{\mu}F_{\nu \rho}}$ as

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

And the asymptotic behaviors of $\displaystyle{\delta A^{\mu}}$ are chosen to be the same as $\displaystyle{A^{\mu}}$:

$$\begin{align}
\delta A^{t} & =o(r^{-2}) \\
\delta A^{r} & =o(r^{-1}) \\
\delta A^{\phi} & =o(r^{-2})
\end{align}$$

Then, the asymptotic behaviors of the integrands of the bulk and boundary components of $\displaystyle{\delta S}$ are

$$\begin{align}
\sqrt{ -g }\left( \nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho} \right)\delta A^{\mu} & =o(r^{-1}) \\
\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) & =o(r^{-3}) \\
(-1)\sqrt{ -\gamma }n^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) & =o(r^{0})
\end{align}$$

Thus, we have

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A^{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( F_{\mu \nu}\delta A^{\nu}+\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \right)
\end{align}$$

Which is the same as the expression appearing in the main text. Then, we consider the asymptotic behavior of $\displaystyle{X_{\xi}\cdot \delta S}$. We have

$$\begin{align}
X_{\xi}\cdot \delta S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\sigma}\left(\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)\right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & +\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

We compute the asymptotic behaviors of the integrands of the boundary components of $\displaystyle{X_{\xi}\cdot \delta S}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{-1}) \\
\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{0})
\end{align}$$

Then, we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

Which is the same as the expression appearing in the main text. Then, we consider the asymptotic behavior of $\displaystyle{H_{\xi}|_{\widetilde{P}}}$. We have

$$\begin{align}
H_{\xi}|_{\widetilde{P}} & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma} \right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\int _{H_{r_{\infty}}} \mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left(F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\right)A_{\sigma}\xi ^{\sigma}
\end{align}$$

Here, we have again introduced a cutoff surface at $\displaystyle{r=r_{\infty}}$. $\displaystyle{\Sigma _{r_{\infty}}}$ is the subregion of $\displaystyle{\Sigma}$ bounded by $\displaystyle{r=r_{\infty}}$. And $\displaystyle{H_{r_{\infty}}}$ is the intersection of $\displaystyle{\Sigma}$ with the cutoff surface at $\displaystyle{r=r_{\infty}}$. $\displaystyle{h_{mn}}$ is the induced metric of $\displaystyle{H_{r_{\infty}}}$ with the expression

$$\begin{align}
h_{mn}\mathrm{d}x^{m}\mathrm{d}x^{n} & =r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

And $\displaystyle{\hat{n}^{a}}$ is the outward-pointing unit normal vector parallel to $\displaystyle{\Sigma}$ and orthogonal to $\displaystyle{H_{r_{\infty}}}$ with the expression in the coordinate system $\displaystyle{(r,\phi)}$:

$$\begin{align}
\hat{n}^{a} & =((1+r^{2})^{1/2},0)
\end{align}$$

We compute the asymptotic behaviors of the integrands of the boundary components of $\displaystyle{H_{\xi}|_{\widetilde{P}}}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) & =o(r^{-1}) \\
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma} & =o(r^{0})
\end{align}$$

Then, we have

$$\begin{align}
H_{\xi}|_{\widetilde{P}} & =\int _{\Sigma }\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

Which is the same as the expression appearing in the main text. Finally, we consider the asymptotic behavior of $\displaystyle{X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}}}$. We have

$$\begin{align}
X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}} & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\left[-\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right. \\
 & \left.\left.+D_{\alpha}\left(\sigma ^{\alpha}_{~\mu}\tau _{\nu}\left(\xi ^{\mu}F^{\nu \rho}\delta A_{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right)\right]\right|_{\widetilde{\mathcal{P}}} \\
 & =-\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\left[\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right] \\
 & \left.+\int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{\mu}\tau _{\nu}\left(\xi ^{\mu}F^{\nu}_{~\rho}\delta A^{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

We compute the asymptotic behaviors of the integrands of the boundary components of $\displaystyle{X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}}}$ as

$$\begin{align}
\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\delta\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) & =o(r^{-1}) \\
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left( \xi ^{\mu}F^{\nu}_{~\rho}\delta A^{\rho}-\xi ^{\nu}F^{\mu \rho}\delta A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+\delta F^{\mu \nu}\xi _{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma} \right) & =o(r^{0})
\end{align}$$

Then, we have

$$\begin{align}
X_{\xi}\cdot \Omega|_{\widetilde{\mathcal{P}}} & =-\left.\int _{\Sigma }\mathrm{d}^{2}x\sqrt{ \sigma }\left[\tau _{\mu}\xi _{\nu}\delta\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right]\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

Which is the same as the expression appearing in the main text. Thus, the theory has a well-defined variational principle and the Noether's theorem applies to the asymptotic symmetries.