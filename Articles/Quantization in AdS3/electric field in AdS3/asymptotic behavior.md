$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

take a variation

$$\begin{align}
\delta S & =-\int \mathrm{d}^{3}x\sqrt{ -g }F^{\mu \nu}\nabla _{\mu}\delta A_{\nu} \\
 & =\int \mathrm{d}^{3}x\sqrt{ -g }\nabla _{\mu}F^{\mu \nu}\delta A_{\nu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

choose the following coordinates of global AdS3

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

with non-vanishing Christoffel symbols

$$\begin{align}
\Gamma ^{t}_{~tr} & =\frac{r}{1+r ^{2}} \\
\Gamma ^{r}_{~tt} & =r(1+r ^{2}) \\
\Gamma ^{r}_{~r r} & =-\frac{r}{1+r ^{2}} \\
\Gamma ^{r}_{~\phi \phi} & =-r (1+r ^{2}) \\
\Gamma ^{\phi}_{~r \phi} & =\frac{1}{r}
\end{align}$$

the asymptotic boundary condition of $\displaystyle{A}$ is chosen to be

$$\begin{align}
A_{t}\sim A_{\phi} & =\mathcal{O}(r^{0}) & A_{r} & =\mathcal{O}(r^{-3}) \\
A^{t}\sim A^{\phi} & =\mathcal{O}(r^{-2}) & A^{r} & =\mathcal{O}(r^{-1})
\end{align}$$

thus we have

$$\begin{align}
F_{tr}\sim F_{r\phi} & =\mathcal{O}(r^{-1}) & F_{t\phi} & =\mathcal{O}(r^{0}) \\
F^{tr}\sim F^{r\phi} & =\mathcal{O}(r^{-1}) & F^{t\phi} & =\mathcal{O}(r^{-4})
\end{align}$$

so that the symplectic potential

$$\begin{align}
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & =\int ^{\infty}_{0}\mathrm{d}r \int ^{2\pi}_{0}\mathrm{d}\phi \frac{r}{1+r^{2}}(F^{tr}\delta A_{r}+F^{t\phi}\delta A_{\phi}) \\
 & =\int ^{\infty}_{0} \mathrm{d}r \int ^{2\pi}_{0} \mathrm{d}\phi  \frac{1}{r}(\mathcal{O}(r^{-1})\mathcal{O}(r^{-3})+\mathcal{O}(r^{-4})\mathcal{O}(r^{0}))
\end{align}$$

which is finite.

if we choose another asymptotic boundary condition of $\displaystyle{A}$ as

$$\begin{align}
A_{t}\sim A_{\phi} & =\mathcal{O}(r^{0}\log r) & A_{r} & =\mathcal{O}(r^{-3}\log r) \\
A^{t}\sim A^{\phi} & =\mathcal{O}(r^{-2}\log r) & A^{r} & =\mathcal{O}(r^{-1}\log r)
\end{align}$$

thus

$$\begin{align}
F_{tr}\sim F_{r\phi} & =\mathcal{O}(r^{-1}\log r) & F_{t\phi} & =\mathcal{O}(\log r) \\
F^{tr}\sim F^{r\phi} & =\mathcal{O}(r^{-1}\log r) & F^{t\phi} & =\mathcal{O}(r^{-4}\log r)
\end{align}$$

the symplectic potential

$$\begin{align}
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & =\int ^{\infty}_{0}\mathrm{d}r \int ^{2\pi}_{0}\mathrm{d}\phi \frac{r}{1+r^{2}}(F^{tr}\delta A_{r}+F^{t\phi}\delta A_{\phi}) \\
 & =\int ^{\infty}_{0} \mathrm{d}r \int ^{2\pi}_{0} \mathrm{d}\phi  \frac{1}{r}(\mathcal{O}(r^{-1}\log r)\mathcal{O}(r^{-3}\log r)+\mathcal{O}(r^{-4}\log r)\mathcal{O}(r^{0}\log r)) \\
 & \sim \int ^{\infty} \mathrm{d}r \frac{\log ^{2}r}{r^{5}}
\end{align}$$

which is also finite.

