Killing vectors

$$\tag{1.1}
\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{-1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{-1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}
$$

and their non-zero commutators

$$\tag{1.2}
\begin{align}
[\xi_{0},\xi_{1}] & =i\xi_{1} \\
[\xi_{0},\xi _{-1}] & =-i\xi _{-1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{1}] & =i\bar{\xi}_{1} \\
[\bar{\xi}_{0},\bar{\xi}_{-1}] & =-i\bar{\xi}_{-1} \\
[\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}
\end{align}
$$

introduce the total-antisymmetric tensor $\displaystyle{\varepsilon _{\mu \nu \rho}}$ with non-zero components $\displaystyle{\varepsilon _{tr\phi}=r}$

$$\tag{1.3}
\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{~\rho} \\
\nabla _{\mu}\bar{\xi} _{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{~\rho}
\end{align}
$$

# modes

$$\tag{2.1}
\begin{align}
{f^{(+)}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{\mu/2+1}}\bar{\xi}_{1}^{\mu} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu}
\end{align}
$$

then act the Killing symmetries

$$\tag{2.2}\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(+)}}^{\mu}\\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2}+n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{+}_{r,n-1,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu}{2}+\bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(+)}_{r,n,\bar{n}-1}}^{\mu}
\end{align}$$

then we will give the explicit expression of $\displaystyle{{f^{(+)}_{r,n,\bar{n}}}^{\mu}}$. we first 

$$\tag{2.3}\begin{align}
f^{(+)}_{r,n,0} & \propto r^{n}(1+r^{2})^{-(\mu+2+n)/2}e^{-i(\mu+2+n)t}e^{in\phi}
\end{align}$$

$$\tag{2.4}\begin{align}
{f^{(+)}_{r,n,1}}^{\mu} & \propto \mathcal{L}_{\bar{\xi}_{-1}}f^{(+)}_{r,n,0}\bar{\xi}_{1}^{\mu} \\
  & =\bar{\xi}_{-1}^{\nu}\partial _{\nu}(f^{(+)}_{r,n,0}\bar{\xi}^{\mu}_{1})-f^{(+)}_{r,n,0}\bar{\xi}^{\nu}_{-1}\partial _{\nu}\bar{\xi}^{\mu}_{1} \\
 & =f^{(+)}_{r,n,1}\bar{\xi}^{\mu}_{1}+2if^{(+)}_{r,n,0}\bar{\xi}^{\nu}_{0} \\
f^{(+)}_{r,n,\bar{n}} & =(\bar{\xi}^{\nu}_{-1}\partial _{\nu})^{\bar{n}}f^{(+)}_{r,n,0} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =f^{(+)}_{r,n,\bar{n}}\bar{\xi}^{\mu}_{1}+2\bar{n}if^{(+)}_{r,n,\bar{n}-1}\bar{\xi}^{\mu}_{0}-\bar{n}(\bar{n}-1)f^{(+)}_{r,n,\bar{n}-2}\bar{\xi}^{\mu}_{-1}
\end{align}$$

$$\tag{2.5}\begin{align}
f^{(+)}_{r,n,\bar{n}} & =(\bar{\xi}^{\nu}_{-1}\partial _{\nu})^{\bar{n}}f^{(+)}_{r,n,0}
\end{align}$$

we first set $\displaystyle{n>\bar{n}}$. 

$$\tag{2.6}\begin{align}
f^{(+)}_{r,n,\bar{n}}  & \propto r^{n-\bar{n}}(1+r^{2})^{-(\mu+n-\bar{n}+2)/2} P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)e^{-i(\mu+n+\bar{n}+2)t}e^{i(n-\bar{n})\phi}
\end{align}$$

then by induction

$$\tag{.}\begin{align}
f^{(+)}_{r,n,\bar{n}+1} & \propto(\bar{\xi}^{\nu}_{-1}\partial _{\nu})f^{(+)}_{r,n,\bar{n}} \\
 & \propto e^{-i(\mu+n+\bar{n}+3)t}e^{i(n-\bar{n}-1)\phi} r^{n-\bar{n}-1}(1+r^{2})^{-(\mu+n-\bar{n}+1)/2}P_{\bar{n}+1}^{(\mu+1,n-\bar{n}-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

here we use

$$\tag{.}\begin{align}
2 \frac{r^{2}}{(1+r^{2})^{2}}P^{(\mu+1,n-\bar{n})'}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+\left( \frac{n+\mu+2}{1+r^{2}}-(\bar{n}+\mu+2) \right)P^{(\mu+1,n-\bar{n})}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+(\bar{n}+1) P^{(\mu+1,n-\bar{n}-1)}_{\bar{n}+1}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =0
\end{align}$$

so by induction, we had proven (2.6). when $\displaystyle{n< \bar{n}}$...

