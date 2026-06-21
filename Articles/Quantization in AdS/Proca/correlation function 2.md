we will first consider a simpler case, the scalar field in AdS$_{3}$ spacetime.

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}\right)
\end{align}$$

the general solution to the eom can be expressed as

$$\begin{align}
\varphi & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi ^*_{n,\bar{n}}(x)\right) \\
\varphi _{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
 & =\sqrt{ \frac{1}{2\pi} \frac{\Gamma(\Delta+n)\Gamma(1+\bar{n})}{\Gamma(\Delta+\bar{n})\Gamma(1+n)} }e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{n-\bar{n}}(1+r^{2})^{-(\Delta+n-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =\sqrt{ \frac{1}{2\pi} \frac{\Gamma(\Delta+\bar{n})\Gamma(1+n)}{\Gamma(\Delta+n)\Gamma(1+\bar{n})} }e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{\bar{n}-n}(1+r^{2})^{-(\Delta+\bar{n}-n)/2}P_{n}^{(\Delta-1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\varphi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} },\quad \omega _{n\bar{n}} =\Delta+n+\bar{n}
\end{align}$$

and we have

$$\begin{align}
\omega[\varphi _{n_{1},\bar{n}_{1}},\varphi ^{*}_{n_{2},\bar{n}_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

take the following expansion

$$\begin{align}
\phi(x) & =\sum _{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi ^{*}_{n,\bar{n}}(x)\right)
\end{align}$$

promote $\displaystyle{a_{n,\bar{n}}}$ and $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ to quantum operators, the symplectic form implies the commutation relation

$$\begin{align}
[a^{\dagger}_{n_{1},\bar{n}_{1}},a_{n_{2},\bar{n}_{2}}] & =\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

the vacuum state $\displaystyle{\ket{\Omega}}$ is defined as

$$\begin{align}
a_{n,\bar{n}}\ket{\Omega} & =0, & \forall n,\bar{n}\in \mathbb{N}
\end{align}$$

the two-point correlation function is given by

$$\begin{align}
\braket{ \Omega|\phi(x_{1})\phi(x_{2})|\Omega } & =\sum ^{\infty}_{n_{1},n_{2},\bar{n}_{1},\bar{n}_{2}=0}\braket{ \Omega|(a_{n_{1},\bar{n}_{1}}\varphi _{n_{1},\bar{n}_{1}}(x_{1})+a^{\dagger}_{n_{1},\bar{n}_{1}}\varphi ^{*}_{n_{1},\bar{n}_{1}}(x_{1}))(a_{n_{2},\bar{n}_{2}}\varphi _{n_{2},\bar{n}_{2}}(x_{2})+a^{\dagger}_{n_{2},\bar{n}_{2}}\varphi ^{*}_{n_{2},\bar{n}_{2}}(x_{2}))|\Omega } \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\varphi _{n,\bar{n}}(x_{1})\varphi ^{*}_{n,\bar{n}}(x_{2}) \\
 & =\frac{1}{2\pi}\sum ^{\infty}_{n,\bar{n}=0}\frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i\Delta t_{1}}}{(1+r_{1}^{2})^{\Delta/2}}\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i\Delta t_{2}}}{(1+r_{2}^{2})^{\Delta/2}} \\
 & =G_{\Delta}(x_{1},x_{2})
\end{align}$$

---

for Proca field, we have

$$\begin{align}
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu}+2i\bar{n}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{0}^{\mu}-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{-1}\right) \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}}}\sqrt{ \frac{\mu+1}{\pi \mu} }\left( \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu}+2in\mathcal{L}_{\xi _{-1}}^{n-1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{0}-n(n-1)\mathcal{L}_{\xi _{-1}}^{n-2}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{-1} \right) \\
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}& =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(n+1)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}P_{n}^{(\mu+1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
{f^{(-)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{-1}^{\mu}-2i\bar{n}\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}-1} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{0}^{\mu}-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi_{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}-2} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{1}\right) \\
{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} }\sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi_{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{-1}^{\mu}-2in\mathcal{L}_{\xi_{1}}^{n-1}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{0}-n(n-1)\mathcal{L}_{\xi_{1}}^{n-2}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu}\right)
\end{align}$$

the two point function is

$$\begin{align}
\braket{ \Omega|A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|\Omega }  & = \braket{ \Omega|\sum ^{\infty}_{n_{1}n_{2}\bar{n}_{1}\bar{n}_{2}=0}(a_{l,n_{1},\bar{n}_{1}}{f^{(+)}_{l,n_{1},\bar{n}_{1}}}^{\mu_{1}}+a_{r,n_{1},\bar{n}_{1}}{f^{(+)}_{l,n_{1},\bar{n}_{1}}}^{\mu_{1}})(a^{\dagger}_{l,n_{2},\bar{n}_{2}}{f^{(-)}_{l,n_{2},\bar{n}_{2}}}^{\mu_{2}}+a^{\dagger}_{r,n_{2},\bar{n}_{2}}{f^{(-)}_{r,n_{2},\bar{n}_{2}}}^{\mu_{2}})|\Omega }  \\
 & =\sum ^{\infty}_{n,\bar{n}=0}({f^{(+)}_{l,n,\bar{n}}}^{\mu_{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}+{f^{(+)}_{r,n,\bar{n}}}^{\mu_{1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu_{2}})
\end{align}$$

where

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}{f^{(+)}_{l,n,\bar{n}}}^{\mu_{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}=\frac{\mu+1}{\pi \mu}\sum ^{\infty}_{n,\bar{n}=0} \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} & \left(\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{1}}_{1}(x_{1})+2i\bar{n}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{1}}_{0}(x_{1})-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{1}}_{-1}(x_{1})\right) \\
 \times& \left(\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{2}}_{1}(x_{2})-2i\bar{n}\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}-1} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{2}}_{0}(x_{2})-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}-2} \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu_{2}}_{1}(x_{2})\right) \\
\end{align}$$

$$\begin{align}
\braket{ \Omega|\phi(x_{1})\phi(x_{2})|\Omega } & =\sum ^{\infty}_{n_{1},n_{2},\bar{n}_{1},\bar{n}_{2}=0}\braket{ \Omega|(a_{n_{1},\bar{n}_{1}}\varphi _{n_{1},\bar{n}_{1}}(x_{1})+a^{\dagger}_{n_{1},\bar{n}_{1}}\varphi ^{*}_{n_{1},\bar{n}_{1}}(x_{1}))(a_{n_{2},\bar{n}_{2}}\varphi _{n_{2},\bar{n}_{2}}(x_{2})+a^{\dagger}_{n_{2},\bar{n}_{2}}\varphi ^{*}_{n_{2},\bar{n}_{2}}(x_{2}))|\Omega } \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\varphi _{n,\bar{n}}(x_{1})\varphi ^{*}_{n,\bar{n}}(x_{2}) \\
 & =\frac{1}{2\pi}\sum ^{\infty}_{n,\bar{n}=0}\frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i\Delta t_{1}}}{(1+r_{1}^{2})^{\Delta/2}}\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}} \frac{e^{i\Delta t_{2}}}{(1+r_{2}^{2})^{\Delta/2}} \\
 & =G_{\Delta}(x_{1},x_{2})
\end{align}$$

this method does not work.
