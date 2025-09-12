$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu} \\
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
\implies \omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

consider the transformation of $\displaystyle{S}$ under $\displaystyle{X_{\xi}=\int \mathrm{d}^{3}x\mathcal{L}_{\xi}A_{\mu}\frac{\delta}{\delta A_{\mu}}}$ 

$$\begin{align}
X_{\xi}\cdot \delta S & =\int \mathcal{L}_{\xi}\mathbf{L}=\int\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

then the Noether charge corresponds to the Killing vector $\displaystyle{\xi ^{\mu}}$ is

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}(X_{\xi}\cdot \delta A_{\nu})-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \left( \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} +\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \left( \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho} \right)\\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu}_{~~\rho}F^{\nu\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} -\frac{1}{2}\mu^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

---

we first consider a simplier case: free scalar in $\mathrm{AdS}_{3}$ spacetime

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\varphi \nabla ^{\mu}\varphi-\frac{1}{2}\mu ^{2}\varphi ^{2}\right) \\
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla ^{2}-\mu^{2})\varphi \delta \varphi+\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\varphi \delta \varphi \\
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \varphi \wedge \delta \varphi \\
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(\nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\varphi \nabla ^{\rho}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2}\right)
\end{align}$$

the eom is
$$\begin{align} \\
\varphi=e^{-i\omega t}e^{im\phi}\tilde{\varphi} \\
(1+r^{2})\partial _{r}^{2}\tilde{\varphi}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{\varphi}+ \left( -\mu ^{2}+\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}} \right)\tilde{\varphi} =0
\end{align}$$

finiteness of the action gives the following two asymptotic behavior of $\displaystyle{\varphi}$:

$$\begin{align}
\varphi\to \mathcal{O}(r^{0}),r\to0 \\
\varphi\to \mathcal{o}(r^{-1}),r\to \infty
\end{align}$$

the solution is

$$\begin{align}
\varphi _{n,m} & =C_{n,m}e^{-i\omega _{n,m}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P^{(\Delta-1,|m|)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right)
\end{align}$$

where $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$.

$$\tag{.}\begin{align}
\omega[\varphi _{n_{1},m_{1}},\varphi ^{*} _{n_{2},m_{2}}] & =-2\pi i(\omega _{n_{1}m_{1}}+\omega _{n_{2}m_{2}})e^{-i(\omega _{n_{1}m_{1}}-\omega _{n_{2}m_{2}})t}\delta _{m_{1},m_{2}}\int \mathrm{d}r r^{2|m_{1}|+1}(1+r^{2})^{-(\Delta+|m_{1}|+1)}P_{n_{1}}^{(\Delta-1,|m_{1}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\Delta-1,|m_{1}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)|C_{n_{1},m_{1}}|^{2} \\
 & =-2\pi i\delta _{n_{1},n_{2}}\delta _{m_{1},m_{2}} \frac{\Gamma(\Delta+n_{1})\Gamma(n_{1}+|m_{1}|+1)}{\Gamma(\Delta+n_{1}+|m_{1}|)\Gamma(n_{1}+1)}|C_{n_{1},m_{1}}|^{2}
\end{align}$$

the normalization constant is then chosen to be

$$\begin{align}
C_{n,m} & =\sqrt{ \frac{1}{2\pi}\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

the Noether charge

$$\begin{align}
H_{\xi} & =\int \mathrm{d}r \mathrm{d}\phi\frac{r}{1+r^{2}}\left(\partial_{t}\varphi \xi ^{\nu}\partial _{\nu}\varphi-\frac{1}{2}\xi _{t}\left( -\frac{1}{1+r^{2}}\partial _{t}\varphi \partial _{t}\varphi+(1+r^{2})\partial _{r}\varphi \partial _{r}\varphi+\frac{1}{r^{2}}\partial _{\phi}\varphi \partial _{\phi}\varphi+\mu ^{2}\varphi ^{2} \right)\right)
\end{align}$$

then

$$\begin{align}
\varphi & =\sum _{m=-\infty}^{\infty}\sum ^{\infty}_{n=0}(e^{-i\omega _{nm}t}e^{im\phi}\tilde{\varphi} _{nm}a_{nm}+e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm}a^{\dagger}_{nm}) \\
\tilde{\varphi}_{nm} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$
$$\tag{.}\begin{align}
X_{\xi} & =\int \mathrm{d}^3x \xi ^{\mu}\partial _{\mu}\varphi(x)\frac{\delta}{\delta \varphi(x)}
\end{align}$$

$$\begin{align}
a_{nm} & =\omega[\varphi,e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm}] \\
 & =\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{t}(\partial _{t}\varphi e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm}-\partial _{t}(e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm})\varphi)\\
a^{\dagger}_{nm} & =\omega[e^{-i\omega _{nm}t}e^{im\phi}\tilde{\varphi} _{nm},\varphi] \\
 & =\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{t}\left(\partial _{t}(e^{-i\omega _{nm}t}e^{im\phi}\tilde{\varphi}_{nm})\varphi-\partial _{t}\varphi e^{-i\omega _{nm}t}e^{im\phi}\tilde{\varphi}_{nm}\right)
\end{align}$$

$$\begin{align}
\frac{\delta a_{nm}}{\delta \varphi(t,r,\phi)} & =-\frac{2i\omega _{nm}}{N^{2}}e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm}(r)\delta(t) \\
\frac{\delta a^{\dagger}_{nm}}{\delta \varphi(t,r,\phi)} & =-\frac{2i\omega _{nm}}{N^{2}}e^{-i\omega _{nm}t}e^{im\phi}\tilde{\varphi}_{nm}(r)\delta(t)
\end{align}$$

$$\begin{align}
X_{\xi} & =\sum ^{\infty}_{m=-\infty}\sum ^{\infty}_{n=0}\int \mathrm{d}^{3}x \xi ^{\mu}\partial _{\mu}\varphi \left( \frac{\delta a_{nm}}{\delta \varphi} \frac{\delta}{\delta a_{nm}}+\frac{\delta a^{\dagger}_{nm}}{\delta \varphi} \frac{\delta}{\delta a^{\dagger}_{nm}} \right)
\end{align}$$

$$\tag{.}\begin{align}
\int \mathrm{d}^{3}x \xi ^{\mu}\partial _{\mu}\varphi -\frac{2i\omega _{nm}}{N^{2}}e^{i\omega _{nm}t}e^{-im\phi}\tilde{\varphi}_{nm}(r)
\end{align}$$

$$\tag{.}\begin{align}
\omega[\delta \varphi _{1},\delta \varphi _{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\partial _{\mu}\delta \varphi_{1} \delta \varphi_{2}-\partial _{\mu}\delta \varphi _{2}\delta \varphi _{1})
\end{align}$$