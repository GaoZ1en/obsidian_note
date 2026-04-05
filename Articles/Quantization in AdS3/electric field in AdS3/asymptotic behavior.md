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
A_{t}\sim A_{\phi} & =\mathcal{O}(r^{0}) & A_{r} & =\mathcal{O}(r^{-3}\log r) \\
A^{t}\sim A^{\phi} & =\mathcal{O}(r^{-2}) & A^{r} & =\mathcal{O}(r^{-1}\log r)
\end{align}$$

thus

$$\begin{align}
F_{tr} \sim F_{r\phi} & =\mathcal{O}(r^{0}), & F_{t\phi} & =\mathcal{O}(r^{0}) \\
F^{tr}\sim F^{r\phi} & =\mathcal{O}(r^{0}), & F^{t\phi} & =\mathcal{O}(r^{-4})
\end{align}$$

the symplectic potential

$$\begin{align}
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & =\int ^{\infty}_{0}\mathrm{d}r \int ^{2\pi}_{0}\mathrm{d}\phi \frac{r}{1+r^{2}}(F^{tr}\delta A_{r}+F^{t\phi}\delta A_{\phi}) \\
 & =\int ^{\infty}_{0} \mathrm{d}r \int ^{2\pi}_{0} \mathrm{d}\phi  \frac{1}{r}(\mathcal{O}(r^{0})\mathcal{O}(r^{-3}\log r)+\mathcal{O}(r^{-4})\mathcal{O}(r^{0})) \\
 & \sim \int ^{\infty} \mathrm{d}r \frac{\log r}{r^{4}}
\end{align}$$

which is also finite.

---

under the $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$ transformation

$$\begin{align}
A_{\mu}\to A'_{\mu} & =A_{\mu}+\mathcal{L}_{\xi}A_{\mu}
\end{align}$$

where the Killing vectors are

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\xi _{0} & =\frac{1}{2}(\partial _{t}-\partial _{\phi}) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} ) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}(\partial _{t}+\partial _{\phi}) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} )
\end{align}$$

the asymptotic behavior of $\displaystyle{A}$ is preserved. consider the asymptotic behavior of the eom $\displaystyle{\nabla _{\mu}F^{\mu \nu}}$:

$$\begin{align}
\nabla _{\mu}F^{\mu t}\sim \nabla _{\mu}F^{\mu \phi} & =\mathcal{O}(r^{-1}) \\
\nabla _{\mu}F^{\mu r} & = \mathcal{O}(r^{0})
\end{align}$$
