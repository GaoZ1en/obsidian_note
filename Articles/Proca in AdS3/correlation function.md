we will first consider scalar case

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}\right)
\end{align}$$

the positive frequency mode solution is

$$\begin{align}
\phi ^{(+)} _{nm} & =C_{nm}e^{-i\omega _{nm} t}e^{im\phi}r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P^{(\Delta-1,|m|)}_{n}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{nm} & =\Delta+|m|+2n \\
\Delta & =1+\sqrt{ 1+\mu ^{2} } \\
C_{nm} & =\sqrt{ \frac{1}{2\pi}\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

here we use

$$\tag{.}\begin{align}
\int _{0}^{\infty} \mathrm{d}r r^{2\beta+1}(1+r^{2})^{-(\alpha+\beta+2)}\left[P^{(\alpha,\beta}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right]^{2} & =\frac{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}{2(2n+\alpha+\beta+1)\Gamma(n+\alpha+\beta+1)n!}
\end{align}$$

and we have

$$\begin{align}
\Omega[\phi _{n_{1}m_{1}},\phi ^{*}_{n_{2}m_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

expand

$$\begin{align}
\phi(x) & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\left(\phi ^{(+)} _{nm}a_{nm}+\phi ^{(-)} _{nm}a^{\dagger}_{nm}\right)
\end{align}$$

and promote $\displaystyle{a_{nm}}$ and $\displaystyle{a_{nm}^{\dagger}}$ to annihilation and creation operators, we can define the vacuum state $\displaystyle{\ket{\Omega}}$ as

$$\begin{align}
a_{nm}\ket{\Omega} =0, \forall n,m
\end{align}$$

then the two-point correlation function is given by

$$\begin{align}
\braket{ \Omega|T\phi(x_{1})\phi(x_{2})|\Omega } & =\sum _{n_{1},n_{2}=0}^{\infty}\sum ^{\infty}_{m_{1},m_{2}=-\infty}\theta(t_{1}-t_{2})\braket{ \Omega|(\phi ^{(+)} _{n_{1}m_{1}}(x_{1})a_{n_{1}m_{1}}+\phi ^{(-)}_{n_{1}m_{1}}(x_{1})a^{\dagger}_{n_{1}m_{1}})(\phi ^{(+)}_{n_{2}m_{2}}(x_{2})a_{n_{2}m_{2}}+\phi ^{(-)}_{n_{2}m_{2}}a^{\dagger}_{n_{2}m_{2}})|\Omega } \\
 &  +\theta(t_{2}-t_{1})\braket{ \Omega|(\phi ^{(+)}_{n_{2}m_{2}}(x_{2})a_{n_{2}m_{2}}+\phi ^{(-)}_{n_{2}m_{2}}a^{\dagger}_{n_{2}m_{2}})(\phi ^{(+)} _{n_{1}m_{1}}(x_{1})a_{n_{1}m_{1}}+\phi ^{(-)}_{n_{1}m_{1}}(x_{1})a^{\dagger}_{n_{1}m_{1}})|\Omega } \\
 & =\sum ^{\infty}_{n_{1},n_{2}=0}\sum ^{\infty}_{m_{1},m_{2}=-\infty}\theta(t_{1}-t_{2})\phi ^{(+)}_{n_{1}m_{1}}(x_{1})\phi ^{(-)}_{n_{2}m_{2}}\braket{ \Omega|[a_{n_{1}m_{1}},a^{\dagger}_{n_{2}m_{2}}]|\Omega } \\
 & +\theta(t_{2}-t_{1})\phi ^{(+)}_{n_{2}m_{2}}(x_{2})\phi ^{(-)}_{n_{1}m_{1}}\braket{ \Omega|[a_{n_{2}m_{2}},a^{\dagger}_{n_{1}m_{1}}]|\Omega }  \\
 & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\theta(t_{1}-t_{2})\phi ^{(+)}_{nm}(x_{1})\phi ^{(-)}_{nm}(x_{2})+\theta(t_{2}-t_{1})\phi ^{(+)}_{nm}(x_{2})\phi ^{(-)}_{nm}(x_{1})
\end{align}$$

without loss of generality we pick $\displaystyle{x_{1}=x, x_{2}=0}$, then

$$\begin{align}
\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\phi ^{(+)}_{nm}(x_{1})\phi ^{(-)}_{nm}(x_{2}) & =\frac{1}{2\pi}\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}}e^{-i(\Delta+|m|+2n)t}e^{im\phi} \\
 & \times r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\times r_{2}^{|m|}(1+r_{2}^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r_{2}^{2}-1}{r_{2}^{2}+1}\right) \\
 & =\frac{1}{2\pi}\sum ^{\infty}_{n=0} e^{-i(\Delta+2n)t}(1+r^{2})^{-\Delta/2}P_{n}^{(0,\Delta-1)}\left(\frac{1-r^{2}}{1+r^{2}}\right) \\
 & =\frac{1}{2\pi}e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\sum ^{\infty}_{n=0}e^{-2nit}P_{n}^{(0,\Delta-1)}\left(\frac{1-r^{2}}{1+r^{2}}\right)
\end{align}$$

in the final step we use the generating function of Jacobi polynomial

$$\begin{align}
\sum ^{\infty}_{n=0}t^{n}P_{n}^{(0,\Delta-1)}\left(x\right) & =(1+t)^{-\Delta}{}_{2}F_{1}\left(\frac{\Delta}{2},\frac{\Delta+1}{2};\Delta;\frac{2t(x+1)}{(1+t)^{2}}\right)
\end{align}$$

$$\begin{align}
\sum ^{\infty}_{n=0}(e^{-2it})^{n}P_{n}^{(0,\Delta-1)}\left(\frac{1-r^{2}}{1+r^{2}}\right) & =\frac{1}{e^{-i\Delta t}2^{\Delta}\cos ^{\Delta} t}{}_{2}F_{1}\left( \frac{\Delta}{2},\frac{\Delta+1}{2};\Delta; \frac{1}{(1+r^{2})\cos ^{2}t} \right)
\end{align}$$

then

$$\begin{align}
\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\phi ^{(+)}_{nm}(x_{1})\phi ^{(-)}_{nm}(x_{2}) & = \frac{1}{2\pi}(1+r^{2})^{-\Delta/2} \frac{1}{2^{\Delta}\cos ^{\Delta}t}{}_{2}F_{1}\left(\frac{\Delta}{2},\frac{\Delta+1}{2};\Delta; \frac{1}{(1+r^{2})\cos ^{2}t}\right) \\
 & =\frac{1}{4\pi} \frac{(\sqrt{ 1+r^{2} }\cos t+\sqrt{ r^{2}\cos ^{2}t-\sin ^{2}t})^{1-\Delta}}{(r^{2}\cos ^{2}t -\sin ^{2}t)^{1/2}} \\
\braket{ \Omega|T\phi(x_{1})\phi(x_{2})|\Omega } & =\frac{1}{4\pi} \frac{(\sqrt{ 1+r^{2} }\cos t+\sqrt{ r^{2}\cos ^{2}t-\sin ^{2}t})^{1-\Delta}}{(r^{2}\cos ^{2}t -\sin ^{2}t)^{1/2}}
\end{align}$$

---

now we will turn to Proca field

$$\begin{align}
\braket{ \Omega|TA^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|\Omega } & =\sum ^{\infty}_{n,\bar{n}=0}\theta(t_{1}-t_{2})\left[ {f^{(+)}_{l,n,\bar{n}}}^{\mu_{1}}(x_{1}){f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}(x_{2})+{f^{(+)}_{r,n,\bar{n}}}^{\mu_{1}}(x_{1}){f^{(-)}_{r,n,\bar{n}}}^{\mu_{2}}(x_{2}) \right] \\
 & +\theta(t_{2}-t_{1})\left[ {f^{(+)}_{l,n,\bar{n}}}^{\mu_{1}}(x_{2}){f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}(x_{1})+{f^{(+)}_{r,n,\bar{n}}}^{\mu_{1}}(x_{2}){f^{(-)}_{r,n,\bar{n}}}^{\mu_{2}}(x_{1}) \right]
\end{align}$$

choose $\displaystyle{x_{1}=x,x_{2}=0}$, then

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}{f^{(+)}}^{\mu_{1}}_{l,n,\bar{n}}(x_{1}){f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}(0) & =
\end{align}$$

$$\begin{align}
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu}+2i\bar{n}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{0}^{\mu}-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{-1}\right) \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}}}\sqrt{ \frac{\mu+1}{\pi \mu} }\left( \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu}+2in\mathcal{L}_{\xi _{-1}}^{n-1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{0}-n(n-1)\mathcal{L}_{\xi _{-1}}^{n-2}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{-1} \right) \\
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}& =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(n+1)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}P_{n}^{(\mu+1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}{\huge_|}_{(t,r,\phi)=(0,0,0)} & =\frac{\Gamma(n+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}\delta _{n,\bar{n}}
\end{align}$$

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}{f^{(+)}}^{\mu_{1}}_{l,n,\bar{n}}(x_{1}){f^{(-)}_{l,n,\bar{n}}}^{\mu_{2}}(0) & =\sum ^{\infty}_{n,\bar{n}=0}{f^{(+)}_{l,n,\bar{n}}}^{\mu_{1}}(x_{1}) \sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\frac{\Gamma(n+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}\delta _{n,\bar{n}}\xi ^{\mu_{2}}_{1}\right. \\
 & \left.+2i \frac{\Gamma(n+1)\Gamma(\mu+n+1)}{\Gamma(\mu+2)}\delta _{n-1,\bar{n}}\xi _{0}^{\mu_{2}}-\frac{\Gamma(n+1)\Gamma(\mu+n)}{\Gamma(\mu+2)}\delta _{n-2,\bar{n}}\xi _{-1}^{\mu_{2}}\right) \\
 & =\sum ^{\infty}_{\bar{n}=0}{f^{(+)}_{l,\bar{n},\bar{n}}}^{\mu_{1}} \sqrt{ \frac{(\mu+\bar{n}+1)(\mu+\bar{n})}{\mu ^{2} \pi } }\xi _{1}^{\mu_{2}}+\sum ^{\infty}_{\bar{n}=0}{f^{(+)}_{l,\bar{n}+1,\bar{n}}}^{\mu_{1}}\sqrt{ \frac{(\bar{n}+1)(\mu+\bar{n}+1)}{\pi \mu ^{2}} }\xi_{0}^{\mu_{2}} \\
 & -\sum ^{\infty}_{\bar{n}=0}{f^{(+)}_{l,\bar{n}+2,\bar{n}}}^{\mu_{1}}\sqrt{ \frac{(\bar{n}+2)(\bar{n}+1)}{\pi \mu ^{2}} }\xi _{-1}^{\mu_{2}}
\end{align}$$
