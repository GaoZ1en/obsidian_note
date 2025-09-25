we will first consider scalar case

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}\right)
\end{align}$$

$$\begin{align}
\phi ^{(+)} _{nm} & =C_{nm}e^{-i\omega _{nm} t}e^{im\phi}r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P^{(\Delta-1,|m|)}_{n}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{nm} & =\Delta+|m|+2n \\
\Delta & =1+\sqrt{ 1+\mu ^{2} } \\
C_{nm} & =\sqrt{ \frac{1}{2\pi}\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

$$\begin{align}
\omega & =\int \mathrm{d}^{2}x \sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi \\
 & =\int \mathrm{d}^{2}x \frac{r}{1+r^{2}}(\partial _{t}\phi _{n_{1}m_{1}}\phi ^{*}_{n_{2}m_{2}}-\partial _{t}\phi ^{*}_{n_{2}m_{2}}\phi _{n_{1}m_{1}}) \\
 & =-i(\omega_{1}+\omega_{2})e^{-i(\omega_{1}-\omega_{2})t}\int \mathrm{d}r\mathrm{d}\phi \frac{r}{1+r^{2}}e^{i(m_{1}-m_{2})\phi} r^{|m_{1}|+|m_{2}|}(1+r^{2})^{-(2\Delta+|m_{1}|+|m_{2}|)/2}P^{(\Delta-1,|m_{1}|)}_{n_{1}}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\Delta-1,|m_{2}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =-2\pi i(\omega _{n_{1}m_{1}}+\omega _{n_{2}m_{1}})e^{-i(\omega _{n_{1}m_{1}}-\omega _{n_{2}m_{1}})t}\int ^{\infty}_{0}\mathrm{d}r r^{2|m_{1}|+1}\left(1+r^{2}\right)^{-(\Delta+|m|+1)}P_{n_{1}}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P^{(\Delta-1,|m|)}_{n_{2}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =-4\pi i\omega _{n_{1}m_{1}} 
\end{align}$$

$$\tag{.}\begin{align}

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
 & =\frac{1}{2\pi}\sum ^{\infty}_{n=0} e^{-i(\Delta+2n)t}(1+r^{2})^{-\Delta/2}P_{n}^{(0,\Delta-1)}\left(\frac{1-r^{2}}{1+r^{2}}\right)\binom{\Delta+n-1}{n} \\
 & =\frac{1}{2\pi}e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\sum ^{\infty}_{n=0}e^{-2nit}P_{n}^{(0,\Delta-1)}\left(\frac{1-r^{2}}{1+r^{2}}\right)\binom{\Delta+n-1}{n}
\end{align}$$


