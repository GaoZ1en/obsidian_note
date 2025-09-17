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
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu}_{~~\rho}F^{\nu\rho}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} -\frac{1}{2}\mu^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)
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

$$\begin{align}
\omega[\varphi _{n_{1},m_{1}},\varphi ^{*} _{n_{2},m_{2}}] & =-2\pi i(\omega _{n_{1}m_{1}}+\omega _{n_{2}m_{2}})e^{-i(\omega _{n_{1}m_{1}}-\omega _{n_{2}m_{2}})t}\delta _{m_{1},m_{2}}\int \mathrm{d}r r^{2|m_{1}|+1}(1+r^{2})^{-(\Delta+|m_{1}|+1)}P_{n_{1}}^{(\Delta-1,|m_{1}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\Delta-1,|m_{1}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)|C_{n_{1},m_{1}}|^{2} \\
 & =-2\pi i\delta _{n_{1},n_{2}}\delta _{m_{1},m_{2}} \frac{\Gamma(\Delta+n_{1})\Gamma(n_{1}+|m_{1}|+1)}{\Gamma(\Delta+n_{1}+|m_{1}|)\Gamma(n_{1}+1)}|C_{n_{1},m_{1}}|^{2}
\end{align}$$

the normalization constant is then chosen to be

$$\begin{align}
C_{n,m} & =\sqrt{ \frac{1}{2\pi}\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

Noether theorem states that

$$\begin{align}
X_{\xi}\cdot \omega[\delta \phi _{1},\delta \phi _{2}] & = \omega[\mathcal{L}_{\xi}\phi _{1},\delta \phi _{2}] \\
 & =\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\mathcal{L}_{\xi}\phi _{1} \delta \phi _{2}-\nabla _{\mu}\delta \phi _{2} \mathcal{L}_{\xi}\phi _{1} )
\end{align}$$

I think that's it. 

---

the Noether theorem states that

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

so we can using it to calculate the Noether charge $\displaystyle{H_{\xi}}$.

$$\begin{align}
A^{\mu} & =\sum ^{\infty}_{n,\bar{n}=0}{f^{(+)}_{l,n,\bar{n}}}^{\mu}a_{l,n,\bar{n}}+{f^{(+)}_{r,n,\bar{n}}}^{\mu}a_{r,n,\bar{n}}+{f^{(-)}_{l,n,\bar{n}}}^{\mu}a^{\dagger}_{l,n,\bar{n}}+{f^{(-)}_{r,n,\bar{n}}}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \omega[\delta A_{1},\delta A_{2}] & =\omega[\mathcal{L}_{\xi}A_{1},\delta A_{2}] \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
 & +\omega[\mathcal{L}_{\xi}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
 & +\omega[\mathcal{L}_{\xi}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
 & +\omega[\mathcal{L}_{\xi}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}}
\end{align}$$

$$\tag{.}\begin{align}
\omega[f^{(+)}_{l/r,n_{1},\bar{n}_{1}},f^{(-)}_{l/r,n_{2},\bar{n}_{2}}]=-i\delta _{n_{1},n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}
\end{align}$$

$$\begin{align}
-\delta H_{\xi_{-1}} & =X_{\xi _{-1}}\cdot \omega \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi _{-1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{-1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{-1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{-1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\sqrt{ (n_{1}+1)(\mu+n_{1}) }\omega[f^{(+)}_{l,n_{1}+1,\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}-\sqrt{ n_{1}(\mu+n_{1}-1) }\omega[f^{(-)}_{l,n_{1}-1,\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}} \\
 & +\sqrt{ (n_{1}+1)(\mu+n_{1}+2) }\omega[f^{(+)}_{r,n_{1}+1,\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}-\sqrt{ n_{1}(\mu+n_{1}+1) }\omega[f^{(-)}_{r,n_{1}-1,\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =-i\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\sqrt{ (n_{1}+1)(\mu+n_{1}) }\delta _{n_{1}+1,n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\sqrt{ n_{1}(\mu+n_{1}-1) }\delta _{n_{1}-1,n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}} \\
 & +\sqrt{ (n_{1}+1)(\mu+n_{1}+2) }\delta _{n_{1}+1,n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\sqrt{ n_{1}(\mu+n_{1}+1) }\delta _{n_{1}-1,n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }(a_{l,n,\bar{n}}\delta a^{\dagger}_{l,n+1,\bar{n}}+a^{\dagger}_{l,n+1,\bar{n}}\delta a_{l,n,\bar{n}})+\sqrt{ (n+1)(\mu+n+2) }(a_{r,n,\bar{n}}\delta a^{\dagger}_{r,n+1,\bar{n}}+a^{\dagger}_{r,n+1,\bar{n}}\delta a_{r,n,\bar{n}}) \\
\implies H_{\xi _{-1}} & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n,\bar{n}}a^{\dagger}_{l,n+1,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n,\bar{n}}a^{\dagger}_{r,n+1,\bar{n}}
\end{align}$$

$$\begin{align}
-\delta H_{\xi_{0}} & =X_{\xi _{0}}\cdot \omega \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi _{0}}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{0}}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{0}}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{0}}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =-\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{\mu}{2}+n\right)(a_{l,n,\bar{n}}\delta a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}\delta a_{l,n,\bar{n}})+\left(\frac{\mu+2}{2}+n\right)(a_{r,n,\bar{n}}\delta a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}\delta a_{r,n,\bar{n}}) \\
\implies H_{\xi_{0}} & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu}{2}+n \right)a_{l,n,\bar{n}}a^{\dagger}_{l,\bar{n}}+\left(\frac{\mu+2}{2}+n\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

$$\begin{align}
-\delta H_{\xi_{1}} & =X_{\xi _{1}}\cdot \omega \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi _{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi _{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}-\sqrt{ n_{1}(\mu+n_{1}-1) }\omega[f^{(+)}_{l,n_{1}-1,\bar{n}_{1}},f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\sqrt{ (n_{1}+1)(\mu+n_{1}) }\omega[f^{(-)}_{l,n_{1}+1,\bar{n}_{1}},f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}\delta a_{l,n_{2},\bar{n}_{2}} \\
 & -\sqrt{ n_{1}(\mu+n_{1}+1) }\omega[f^{(+)}_{r,n_{1}-1,\bar{n}_{1}},f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}\delta a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\sqrt{ (n_{1}+1)(\mu+n_{1}+2) }\omega[f^{(-)}_{r,n_{1}+1,\bar{n}_{1}},f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}\delta a_{r,n_{2},\bar{n}_{2}} \\
 & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }(a_{l,n+1,\bar{n}}\delta a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}\delta a_{l,n+1,\bar{n}})+\sqrt{ (n+1)(\mu+n+2) }(a_{r,n+1,\bar{n}}\delta a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}\delta a_{r,n+1,\bar{n}}) \\
\implies H_{\xi_{1}} & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n+1,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n+1,\bar{n}}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

as a summary

$$\begin{align}
H_{\xi _{-1}} & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n,\bar{n}}a^{\dagger}_{l,n+1,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n,\bar{n}}a^{\dagger}_{r,n+1,\bar{n}} \\
H_{\xi_{0}} & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu}{2}+n \right)a_{l,n,\bar{n}}a^{\dagger}_{l,\bar{n}}+\left(\frac{\mu+2}{2}+n\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\xi_{1}} & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n+1,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n+1,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\bar{\xi} _{-1}} & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}+1}+\sqrt{ (\bar{n}+1)(\mu+\bar{n}) }a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}+1} \\
H_{\bar{\xi}_{0}} & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu+2}{2}+\bar{n} \right)a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\left(\frac{\mu}{2}+\bar{n}\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\bar{\xi}_{1}} & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }a_{l,n,\bar{n}+1}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (\bar{n}+1)(\mu+\bar{n}) }a_{r,n,\bar{n}+1}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

here we use

$$\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(+)}}^{\mu} & \mathcal{L}_{\xi_{-1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{(-)}_{r,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (n+1)(\mu+n) }{f^{(+)}_{l,n+1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{-1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n-1) }{f^{(-)}_{l,n-1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2}+n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi_{0}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= i\left(\frac{\mu+2}{2}+n\right){f^{(-)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu}{2}+n \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{0}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =i\left( \frac{\mu}{2}+n \right){f^{(-)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{+}_{r,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi_{1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(-)}}^{\mu} & \mathcal{L}_{\xi _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n-1) }{f^{(+)}_{l,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (n+1)(\mu+n) }{f^{(-)}_{l,n+1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} & \mathcal{L}_{\bar{\xi}_{-1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(-)}_{r,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }{f^{(+)}_{l,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{-1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n+1) }{f^{(-)}_{l,n,\bar{n}-1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu}{2}+\bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}  & \mathcal{L}_{\bar{\xi}_{0}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= i\left(\frac{\mu}{2}+\bar{n}\right){f^{(-)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\bar{\xi} _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu+2}{2}+\bar{n} \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} & \mathcal{L}_{\bar{\xi} _{0}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =i\left( \frac{\mu+2}{2}+\bar{n} \right){f^{(-)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(+)}_{r,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi}_{1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(-)}_{r,n,\bar{n}+1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n+1) }{f^{(+)}_{l,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }{f^{(-)}_{l,n,\bar{n}}}^{\mu}
\end{align}$$

---

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\left( \tau _{\mu}\xi ^{\nu}F^{\mu}_{~~\rho}F_{\nu}^{~\rho}+\tau _{\nu}\xi ^{\nu}\left(- \frac{1}{4}F_{\rho \sigma}F^{\rho \sigma} -\frac{1}{2}\mu^{2}A_{\rho}A^{\rho} \right)\right)
\end{align}$$

$$\begin{align}
\sqrt{ \sigma }\tau ^{t}\xi ^{\nu}F_{t \rho}F_{\nu}^{~\rho} & =\frac{r}{1+r^{2}}\left( \xi ^{t}F_{tr}F_{t}^{~r}+\xi ^{t}F_{t\phi}F_{t}^{~\phi}+\xi ^{r}F_{t\phi}F_{r}^{~\phi}+\xi ^{\phi}F_{tr}F_{\phi}^{~r} \right) \\
 & =\frac{r}{1+r^{2}}\left(\xi ^{t}\left( \frac{1}{1+r^{2}}\partial _{t}A^{r}+(1+r^{2})\partial _{r}A^{t}+2rA^{t} \right)(\partial _{t}A^{r}+(1+r^{2})^{2}\partial _{r}A^{t}+2r(1+r^{2})A^{t})\right. \\
 & +\xi ^{t}(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t})\left(\partial _{t}A^{\phi}+\frac{1+r^{2}}{r^{2}}\partial _{\phi}A^{t}\right) \\
 & +\xi ^{r}(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t})\left( \partial _{r}A^{\phi}-\frac{1}{r^{2}(1+r^{2})}\partial _{\phi}A^{r}+\frac{2}{r}A^{\phi} \right) \\
 & \left. +\xi ^{\phi}\left(\frac{1}{1+r^{2}}\partial _{t}A^{r}+(1+r^{2})\partial _{r}A^{t}+2rA^{t}\right)\left(\partial _{\phi}A^{r}-r^{2}(1+r^{2})\partial _{r}A^{\phi}-2r(1+r^{2})A^{\phi}\right) \right)
\end{align}$$

$$\tag{.}\begin{align}
\sqrt{ \sigma }\tau _{\nu}\xi ^{\nu}\left(-\frac{1}{4}F_{\rho \sigma}F^{\rho \sigma}\right) & =-r\xi ^{t}\left(-\frac{1}{2}F_{tr}F^{tr}-\frac{1}{2}F_{t\phi}F^{t\phi}-\frac{1}{2}F_{r\phi}F^{r\phi}\right) \\
 & =\frac{1}{2}r\xi ^{t}\left(-\left( \frac{1}{1+r^{2}}\partial _{t}A^{r}+(1+r^{2})\partial _{r}A^{t}+2rA^{t} \right)^{2}-\frac{1}{r^{2}(1+r^{2})}(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t})^{2}+\frac{1+r^{2}}{r^{2}}\left(r^{2}\partial _{r}A^{\phi}-\frac{1}{1+r^{2}}\partial _{\phi}A^{r}+2rA^{\phi}\right)^{2}\right) \\
\sqrt{ \sigma }\tau _{\nu}\xi ^{\nu}\left(-\frac{1}{2}\mu ^{2}A_{\rho}A^{\rho}\right) & =\frac{1}{2}\mu ^{2}r\xi ^{t}\left( -(1+r^{2})(A^{t})^{2}+\frac{1}{1+r^{2}}(A^{r})^{2}+r^{2}(A^{\phi})^{2} \right)
\end{align}$$

$$\tag{.}\begin{align}
\xi ^{t} & : \frac{r}{2}\left(\frac{1}{1+r^{2}}\partial _{t}A^{r}+(1+r^{2})\partial _{r}A^{t}+2rA^{t}\right)^{2}+\frac{1}{2r(1+r^{2})}(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t})^{2}+\frac{1+r^{2}}{2r}\left( r^{2}\partial _{r}A^{\phi}-\frac{1}{1+r^{2}}\partial _{\phi}A^{r}+2rA^{\phi} \right)^{2} \\
 & =\frac{r(1+r^{2})^{2}}{2}(\partial _{r}A^{t})^{2}+\frac{1+r^{2}}{2r}(\partial _{\phi}A^{t})^{2}+\frac{r}{2(1+r^{2})^{2}}(\partial _{t}A^{r})^{2}+\frac{1}{2r(1+r^{2})}(\partial _{\phi}A^{r})^{2}+\frac{r^{3}}{2(1+r^{2})}(\partial _{t}A^{\phi})^{2}+\frac{r^{3}(1+r^{2})}{2}(\partial _{r}A^{\phi})^{2} \\
 & +r\partial _{r}A^{t}\partial _{t}A^{r}+r\partial _{\phi}A^{t}\partial _{t}A^{\phi}-r\partial _{\phi}A^{r}\partial _{r}A^{\phi}+2r^{2}(1+r^{2})A^{t}\partial _{r}A^{t}+\frac{2r^{2}}{1+r^{2}}A^{t}\partial _{t}A^{r}-2A^{\phi}\partial _{\phi}A^{r}+2r^{2}(1+r^{2})A^{\phi}\partial _{r}A^{\phi}+2r^{3}(A^{t})^{2}+2r(1+r^{2})(A^{\phi})^{2} \\
\xi ^{r} & :\frac{r}{1+r^{2}}(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t})\left( \partial _{r}A^{\phi}-\frac{1}{r^{2}(1+r^{2})}\partial _{\phi}A^{r}+\frac{2}{r}A^{\phi} \right) \\
 & =-\frac{1}{r(1+r^{2})}\partial _{\phi}A^{t}\partial _{\phi}A^{r}+r\partial _{\phi}A^{t}\partial _{r}A^{\phi}-\frac{r}{(1+r^{2})^{2}} \partial _{\phi}A^{r}\partial _{t}A^{\phi}+\frac{r^{3}}{1+r^{2}}\partial _{t}A^{\phi}\partial _{r}A^{\phi}+\frac{2r^{2}}{1+r^{2}}A^{\phi}\partial _{t}A^{\phi}+2A^{\phi}\partial _{\phi}A^{t} \\
\xi ^{\phi} & : \frac{r}{1+r^{2}}\left( \frac{1}{1+r^{2}}\partial _{t}A^{r}+(1+r^{2})\partial _{r}A^{t}+2rA^{t} \right)(\partial _{\phi}A^{r}-r^{2}(1+r^{2})\partial _{r}A^{\phi}-2r(1+r^{2})A^{\phi}) \\
 & =r\partial _{r}A^{t}\partial _{\phi}A^{r}-r^{3}(1+r^{2})\partial _{r}A^{t}\partial _{r}A^{\phi}+\frac{r}{(1+r^{2})^{2}}\partial _{t}A^{r}\partial _{\phi}A^{r}-\frac{r^{3}}{1+r^{2}}\partial _{t}A^{r}\partial _{r}A^{\phi}+\frac{2r^{2}}{1+r^{2}}A^{t}\partial _{\phi}A^{r}-2r^{4}A^{t}\partial _{r}A^{\phi}-\frac{2r^{2}}{1+r^{2}}A^{\phi}\partial _{t}A^{r}-2r^{2}(1+r^{2})A^{\phi}\partial _{r}A^{t}-2r^{3}A^{t}A^{\phi}
\end{align}$$

$$\begin{align}
H_{\xi} & =\int \mathrm{d}r \mathrm{d}\phi \xi ^{t}\left(\frac{r(1+r^{2})^{2}}{2}(\partial _{r}A^{t})^{2}+\frac{1+r^{2}}{2r}(\partial _{\phi}A^{t})^{2}+\frac{r}{2(1+r^{2})^{2}}(\partial _{t}A^{r})^{2}+\frac{1}{2r(1+r^{2})}(\partial _{\phi}A^{r})^{2}+\frac{r^{3}}{2(1+r^{2})}(\partial _{t}A^{\phi})^{2}+\frac{r^{3}(1+r^{2})}{2}(\partial _{r}A^{\phi})^{2}\right. \\
 & \left.+r\partial _{r}A^{t}\partial _{t}A^{r}+r\partial _{\phi}A^{t}\partial _{t}A^{\phi}-r\partial _{\phi}A^{r}\partial _{r}A^{\phi}+2r^{2}(1+r^{2})A^{t}\partial _{r}A^{t}+\frac{2r^{2}}{1+r^{2}}A^{t}\partial _{t}A^{r}-2A^{\phi}\partial _{\phi}A^{r}+2r^{2}(1+r^{2})A^{\phi}\partial _{r}A^{\phi}+2r^{3}(A^{t})^{2}+2r(1+r^{2})(A^{\phi})^{2}\right) \\
 & +\xi ^{r}\left(-\frac{1}{r(1+r^{2})}\partial _{\phi}A^{t}\partial _{\phi}A^{r}+r\partial _{\phi}A^{t}\partial _{r}A^{\phi}-\frac{r}{(1+r^{2})^{2}} \partial _{\phi}A^{r}\partial _{t}A^{\phi}+\frac{r^{3}}{1+r^{2}}\partial _{t}A^{\phi}\partial _{r}A^{\phi}+\frac{2r^{2}}{1+r^{2}}A^{\phi}\partial _{t}A^{\phi}+2A^{\phi}\partial _{\phi}A^{t}\right) \\
 & +\xi ^{\phi}\left(r\partial _{r}A^{t}\partial _{\phi}A^{r}-r^{3}(1+r^{2})\partial _{r}A^{t}\partial _{r}A^{\phi}+\frac{r}{(1+r^{2})^{2}}\partial _{t}A^{r}\partial _{\phi}A^{r}-\frac{r^{3}}{1+r^{2}}\partial _{t}A^{r}\partial _{r}A^{\phi}+\frac{2r^{2}}{1+r^{2}}A^{t}\partial _{\phi}A^{r}-2r^{4}A^{t}\partial _{r}A^{\phi}-\frac{2r^{2}}{1+r^{2}}A^{\phi}\partial _{t}A^{r}-2r^{2}(1+r^{2})A^{\phi}\partial _{r}A^{t}-2r^{3}A^{t}A^{\phi}\right)
\end{align}$$

---

notice that
$$\tag{.}\begin{align}
X_{\xi _{1}}\cdot X_{\xi _{2}}\cdot \omega & =\left\{H_{\xi_{1}},H_{\xi_{2}}\right\} \\
 & =H_{\left\{\xi _{1},\xi _{2}\right\}}
\end{align}$$

then we have

$$\begin{align}
H_{\xi _{-1}} & =i\omega[\mathcal{L}_{\xi_{0}}A,\mathcal{L}_{\xi _{-1}}A] \\
H_{\xi _{0}} & =\frac{i}{2}\omega[\mathcal{L}_{\xi _{1}}A,\mathcal{L}_{\xi _{-1}}A] \\
H_{\xi_{1}} & =i\omega[\mathcal{L}_{\xi_{1}}A,\mathcal{L}_{\xi_{0}}A] \\
H_{\bar{\xi} _{-1}} & =i\omega[\mathcal{L}_{\bar{\xi}_{0}A},\mathcal{L}_{\bar{\xi} _{-1}}A] \\
H_{\bar{\xi} _{0}} & =\frac{i}{2}\omega[\mathcal{L}_{\bar{\xi} _{1}}A,\mathcal{L}_{\bar{\xi} _{-1}}A] \\
H_{\bar{\xi}_{1}} & =i\omega[\mathcal{L}_{\bar{\xi}_{1}}A,\mathcal{L}_{\bar{\xi}_{0}}A] \\
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi_{1}}A,\mathcal{L}_{\xi_{2}}A] & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
& +\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
& +\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
& +\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{2}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}}
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi_{0}}A,\mathcal{L}_{\xi _{-1}}A] & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi_{0}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{0}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{0}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{0}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0} i\left( \frac{\mu}{2}+n_{1} \right)\sqrt{ n_{2}(\mu+n_{2}-1) }\omega[f^{(+)}_{l,n_{1},\bar{n}_{1}},f^{(-)}_{l,n_{2}-1,\bar{n}_{2}}]a_{l,n_{1},\bar{n}_{1}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+i\left( \frac{\mu}{2}+n_{1} \right)\sqrt{ (n_{2}+1)(\mu+n_{2}) }\omega[f^{(-)}_{l,n_{1},\bar{n}_{1}},f^{(+)}_{l,n_{2}+1,\bar{n}_{2}}]a^{\dagger}_{l,n_{1},\bar{n}_{1}}a_{l,n_{2},\bar{n}_{2}} \\
 & +i\left( \frac{\mu+2}{2}+n_{1} \right)\sqrt{ n_{2}(\mu+n_{2}+1) }\omega[f^{(+)}_{r,n_{1},\bar{n}_{1}},f^{(-)}_{r,n_{2}-1,\bar{n}_{2}}]a_{r,n_{1},\bar{n}_{1}}a^{\dagger}_{r,n_{2},\bar{n}_{2}}+i\left(\frac{\mu+2}{2}+n_{1}\right)\sqrt{ (n_{2}+1)(\mu+n_{2}+2) }\omega[f^{(-)}_{r,n_{1},\bar{n}_{1}},f^{(+)}_{r,n_{2}+1,\bar{n}_{2}}]a^{\dagger}_{r,n_{1},\bar{n}_{1}}a_{r,n_{2},\bar{n}_{2}} \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n,\bar{n}}a^{\dagger}_{l,n+1,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n,\bar{n}}a^{\dagger}_{r,n+1,\bar{n}} \\
\implies H_{\xi _{-1}} & =i\omega[\mathcal{L}_{\xi_{0}}A,\mathcal{L}_{\xi _{-1}}A] \\
 & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n,\bar{n}}a^{\dagger}_{l,n+1,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n,\bar{n}}a^{\dagger}_{r,n+1,\bar{n}}
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi _{1}}A,\mathcal{L}_{\xi _{-1}}A] & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{-1}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}} \\
 & =-i\sum ^{\infty}_{n,\bar{n}=0}(\mu+2n)a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+(\mu+2+2n)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
\implies H_{\xi _{0}} & =\frac{i}{2}\omega[\mathcal{L}_{\xi_{1}}A,\mathcal{L}_{\xi _{-1}}A] \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu}{2}+n \right)a_{l,n,\bar{n}}a^{\dagger}_{l,\bar{n}}+\left(\frac{\mu+2}{2}+n\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

$$\tag{.}\begin{align}
\omega[\mathcal{L}_{\xi_{1}}A,\mathcal{L}_{\xi_{0}}A] & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{\bar{n}_{1},\bar{n}_{2}=0}\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{0}}f^{(-)}_{l,n_{2},\bar{n}_{2}}]a_{l,n_{1},n_{2}}a^{\dagger}_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(+)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{0}}f^{(-)}_{r,n_{2},\bar{n}_{2}}]a_{r,n_{1},n_{2}}a^{\dagger}_{r,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{l,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{0}}f^{(+)}_{l,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{l,n_{2},\bar{n}_{2}}+\omega[\mathcal{L}_{\xi_{1}}f^{(-)}_{r,n_{1},\bar{n}_{1}},\mathcal{L}_{\xi_{0}}f^{(+)}_{r,n_{2},\bar{n}_{2}}]a^{\dagger}_{l,n_{1},n_{2}}a_{r,n_{2},\bar{n}_{2}} \\
 & =-\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n+1,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n+1,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
\implies H_{\xi _{1}} & =i\omega[\mathcal{L}_{\xi_{1}}A,\mathcal{L}_{\xi_{0}}A] \\
 & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n+1,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n+1,\bar{n}}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

as a summary

$$\begin{align}
H_{\xi _{-1}} & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n,\bar{n}}a^{\dagger}_{l,n+1,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n,\bar{n}}a^{\dagger}_{r,n+1,\bar{n}} \\
H_{\xi_{0}} & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu}{2}+n \right)a_{l,n,\bar{n}}a^{\dagger}_{l,\bar{n}}+\left(\frac{\mu+2}{2}+n\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\xi_{1}} & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (n+1)(\mu+n) }a_{l,n+1,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (n+1)(\mu+n+2) }a_{r,n+1,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\bar{\xi} _{-1}} & =i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}+1}+\sqrt{ (\bar{n}+1)(\mu+\bar{n}) }a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}+1} \\
H_{\bar{\xi}_{0}} & =\sum ^{\infty}_{n,\bar{n}=0}\left( \frac{\mu+2}{2}+\bar{n} \right)a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+\left(\frac{\mu}{2}+\bar{n}\right)a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}} \\
H_{\bar{\xi}_{1}} & =-i\sum ^{\infty}_{n,\bar{n}=0}\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }a_{l,n,\bar{n}+1}a^{\dagger}_{l,n,\bar{n}}+\sqrt{ (\bar{n}+1)(\mu+\bar{n}) }a_{r,n,\bar{n}+1}a^{\dagger}_{r,n,\bar{n}}
\end{align}$$

which are the same as former discussion. here we use

$$\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(+)}}^{\mu} & \mathcal{L}_{\xi_{-1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{(-)}_{r,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (n+1)(\mu+n) }{f^{(+)}_{l,n+1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{-1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n-1) }{f^{(-)}_{l,n-1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2}+n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi_{0}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= i\left(\frac{\mu+2}{2}+n\right){f^{(-)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu}{2}+n \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{0}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =i\left( \frac{\mu}{2}+n \right){f^{(-)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{+}_{r,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi_{1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(-)}}^{\mu} & \mathcal{L}_{\xi _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n-1) }{f^{(+)}_{l,n-1,\bar{n}}}^{\mu} & \mathcal{L}_{\xi _{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (n+1)(\mu+n) }{f^{(-)}_{l,n+1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} & \mathcal{L}_{\bar{\xi}_{-1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(-)}_{r,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }{f^{(+)}_{l,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{-1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n+1) }{f^{(-)}_{l,n,\bar{n}-1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu}{2}+\bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}  & \mathcal{L}_{\bar{\xi}_{0}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= i\left(\frac{\mu}{2}+\bar{n}\right){f^{(-)}_{r,n,\bar{n}}}^{\mu} & \mathcal{L}_{\bar{\xi} _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu+2}{2}+\bar{n} \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} & \mathcal{L}_{\bar{\xi} _{0}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =i\left( \frac{\mu+2}{2}+\bar{n} \right){f^{(-)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(+)}_{r,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi}_{1}}{f^{(-)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(-)}_{r,n,\bar{n}+1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n+1) }{f^{(+)}_{l,n,\bar{n}-1}}^{\mu} & \mathcal{L}_{\bar{\xi} _{1}}{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }{f^{(-)}_{l,n,\bar{n}}}^{\mu}
\end{align}$$

however this method is not the one.

---

we first discuss the scalar

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\varphi \nabla ^{\rho}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2} \right)
\end{align}$$

$$\begin{align}
X_{\xi} \cdot \omega & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\mathcal{L}_{\xi}\varphi\delta \varphi-\nabla _{\mu}\delta \varphi \mathcal{L}_{\xi}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\nu}\nabla _{\nu}\varphi \delta \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \delta \varphi-\nabla _{\mu}\delta \varphi \xi ^{\nu}\nabla _{\nu}\varphi) \\
 & =\int _{\Sigma}d^{2}x\sqrt{ \sigma }\tau ^{\mu}(-\nabla ^{\nu}\xi _{\mu}\nabla _{\nu}\varphi \delta \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \delta \varphi-\xi ^{\nu}\nabla _{\mu}\delta \varphi\nabla _{\nu}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\xi _{\mu}\nabla ^{\nu}\nabla _{\nu}\varphi \delta \varphi+\xi _{\mu}\nabla _{\nu}\varphi \nabla ^{\nu}\delta \varphi-\xi ^{\nu}\nabla _{\mu}\varphi \nabla _{\nu}\delta \varphi-\xi ^{\nu}\nabla _{\mu}\delta \varphi \nabla _{\nu}\varphi) \\
 & =-\delta\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\varphi \nabla ^{\rho}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2} \right) \\
 & =-\delta H_{\xi}
\end{align}$$

here we drop all the total derivatives. 

$$\begin{align}
X_{\xi}\cdot\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}[(X_{\xi}\cdot\delta F^{\mu \nu})\delta A_{\nu}-\delta F^{\mu \nu}(X_{\xi}\cdot \delta A_{\nu})] \\
-\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}X_{\xi}\cdot \delta A_{\nu} & =-\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho}) \\
 & =-\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(\nabla _{\rho}\delta F^{\rho \mu}A^{\nu}+\delta F^{\mu \rho}(\nabla ^{\nu}A_{\rho}-\nabla _{\rho}A^{\nu})) \\
 & =-\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(\mu ^{2}\delta A^{\mu}A^{\nu}+\delta F^{\mu \rho}F^{\nu}_{~\rho})
\end{align}$$

$$\begin{align}
 \int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}& =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}-F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}-F^{\mu \rho}\nabla _{\rho}\xi ^{\nu})\delta A_{\nu} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( -F^{\mu \rho}\delta F^{\nu}_{~\rho}-\mu ^{2}A^{\mu}\delta A^{\nu}+g_{\mu \nu}\delta\left(\frac{1}{4}F^{\rho \sigma}F_{\rho \sigma}+\frac{1}{2}\mu ^{2}A^{\rho}A_{\rho}\right) \right) \\
\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}\delta A_{\nu} & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}F^{\mu \rho}\nabla ^{\nu}\delta A_{\rho} \\
-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}\delta A_{\nu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}(\nabla _{\rho}F^{\rho \nu}\delta A_{\nu}+F^{\rho \nu}\nabla _{\rho}\delta A_{\nu}) \\
 & =\delta\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\frac{1}{4}F^{\rho \sigma}F_{\rho \sigma}+\frac{1}{2}\mu ^{2}A^{\rho}A_{\rho}\right) \\
-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \rho}\nabla _{\rho}\xi ^{\nu}\delta A_{\nu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\nu}(\nabla _{\rho}F^{\mu \rho}\delta A_{\nu}+F^{\mu \rho}\nabla _{\rho}\delta A_{\nu}) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(-\mu ^{2}A^{\mu}\delta A^{\nu}+F^{\mu \rho}\nabla _{\rho}\delta A^{\nu})
\end{align}$$

then

$$\begin{align}
X_{\xi}\cdot \omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( -F^{\mu \rho}\delta F^{\nu}_{~\rho}-\mu ^{2}A^{\mu}\delta A^{\nu}+g_{\mu \nu}\delta\left(\frac{1}{4}F^{\rho \sigma}F_{\rho \sigma}+\frac{1}{2}\mu ^{2}A^{\rho}A_{\rho}\right)- \delta F^{\mu \rho}F^{\nu}_{~\rho}-\mu ^{2}\delta A^{\mu}A^{\nu}\right) \\
 & =-\delta\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{4}g_{\mu \nu}F^{\rho \sigma}F_{\rho \sigma}-\frac{1}{2}g_{\mu \nu}\mu ^{2}A^{\rho}A_{\rho}\right)
\end{align}$$

here we also drop all the total derivatives. 

---


$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\varphi \nabla ^{\rho}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2} \right)
\end{align}$$

$$\begin{align}
X_{\xi} \cdot \omega & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\mathcal{L}_{\xi}\varphi\delta \varphi-\nabla _{\mu}\delta \varphi \mathcal{L}_{\xi}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\nu}\nabla _{\nu}\varphi \delta \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \delta \varphi-\nabla _{\mu}\delta \varphi \xi ^{\nu}\nabla _{\nu}\varphi) \\
 & =\int _{\Sigma}d^{2}x\sqrt{ \sigma }\tau ^{\mu}(-\nabla ^{\nu}\xi _{\mu}\nabla _{\nu}\varphi \delta \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \delta \varphi-\xi ^{\nu}\nabla _{\mu}\delta \varphi\nabla _{\nu}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\xi _{\mu}\nabla ^{\nu}\nabla _{\nu}\varphi \delta \varphi+\xi _{\mu}\nabla _{\nu}\varphi \nabla ^{\nu}\delta \varphi-\xi ^{\nu}\nabla _{\mu}\varphi \nabla _{\nu}\delta \varphi-\xi ^{\nu}\nabla _{\mu}\delta \varphi \nabla _{\nu}\varphi) \\
 & =-\delta\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\varphi \nabla ^{\rho}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2} \right) \\
 & =-\delta H_{\xi}
\end{align}$$

$$\begin{align}
X_{\xi}\cdot X\cdot \omega & =\omega[\mathcal{L}_{\xi}\varphi,\varphi] \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\mathcal{L}_{\xi}\varphi \varphi-\nabla _{\mu}\varphi \mathcal{L}_{\xi}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\nu}\nabla _{\nu}\varphi \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \varphi-\nabla _{\mu}\varphi \xi ^{\nu}\nabla _{\nu}\varphi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(-\nabla ^{\nu}\xi _{\mu}\nabla _{\nu}\varphi \varphi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\varphi \varphi-\xi ^{\nu}\nabla _{\mu}\varphi \nabla _{\nu}\varphi ) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\xi _{\mu}\nabla ^{\nu}\varphi\nabla _{\nu}\varphi+\xi _{\mu}\nabla _{\nu}\nabla ^{\nu}\varphi \varphi-2\xi ^{\nu}\nabla _{\mu}\varphi \nabla _{\nu}\varphi) \\
 & =-2\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\varphi \nabla _{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\nabla _{\nu}\varphi \nabla ^{\nu}\varphi-\frac{1}{2}g_{\mu \nu}\mu ^{2}\varphi ^{2} \right) \\
 & =-2H_{\xi}
\end{align}$$

I guess

$$\begin{align}
H_{\xi} & =-\frac{1}{2}\omega[\mathcal{L}_{\xi}A ,A]
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi}A,A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\mathcal{L}_{\xi}F^{\mu \nu}A_{\nu}-F^{\mu \nu}\mathcal{L}_{\xi}A_{\nu}) \\
-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\mathcal{L}_{\xi}A_{\nu} & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho}) \\
 & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(\nabla _{\rho}F^{\rho \mu}A^{\nu}+F^{\mu \rho}(\nabla ^{\nu}A_{\rho}-\nabla _{\rho}A^{\nu})) \\
 & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(\mu ^{2}A^{\mu}A^{\nu}+F^{\mu \rho}F^{\nu}_{~\rho})
\end{align}$$

$$\begin{align}
\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\mathcal{L}_{\xi}F^{\mu \nu}A_{\nu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}-F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}-F^{\mu \rho}\nabla _{\rho}\xi ^{\nu})\delta A_{\nu} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( -F^{\mu \rho}F^{\nu}_{~\rho}-\mu ^{2}A^{\mu}A^{\nu}+g^{\mu \nu}\left(\frac{1}{2}F^{\rho \sigma}F_{\rho \sigma}+\mu ^{2}A^{\rho}A_{\rho}\right) \right) \\
\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}A_{\nu} & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}F^{\mu \rho}\nabla ^{\nu}A_{\rho} \\
-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}A_{\nu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}(\nabla _{\rho}F^{\rho \nu}A_{\nu}+F^{\rho \nu}\nabla _{\rho}A_{\nu}) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left( \mu ^{2}A^{\rho}A_{\rho}+\frac{1}{2}F^{\rho \sigma}F_{\rho \sigma} \right) \\
-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \rho}\nabla _{\rho}\xi ^{\nu}A_{\nu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\nu}(\nabla _{\rho}F^{\mu \rho}A_{\nu}+F^{\mu \rho}\nabla _{\rho}A_{\nu}) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}(-\mu ^{2}A^{\mu}A^{\nu}+F^{\mu \rho}\nabla _{\rho}A^{\nu})
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi}A,A] & =-2\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}+\mu ^{2}A^{\mu}A^{\nu}-g^{\mu \nu}\left(\frac{1}{4}F^{\rho \sigma}F_{\rho \sigma}+\frac{1}{2}\mu ^{2}A^{\rho}A_{\rho}\right) \right) \\
 & =-2H_{\xi}
\end{align}$$

