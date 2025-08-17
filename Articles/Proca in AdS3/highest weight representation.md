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

$$\tag{2.3}\begin{align}
\mathcal{L}_{\xi_{-1}}{f_{r,0,0}^{(+)}}^{\mu} & =
\end{align}$$

$$f_{r,0,0}^{(+)t} = \sqrt{\frac{\mu+1}{\pi \mu}} \frac{e^{-i(\mu+2)t}}{(1+r^2)^{\mu/2+1}} \cdot e^{it} \cdot ir\cos\phi$$
$$= \sqrt{\frac{\mu+1}{\pi \mu}} \frac{e^{-i(\mu+1)t}}{(1+r^2)^{\mu/2+1}} ir\cos\phi$$
$$f_{r,0,0}^{(+)r} = \sqrt{\frac{\mu+1}{\pi \mu}} \frac{e^{-i(\mu+1)t}}{(1+r^2)^{\mu/2+1}} ir\sin\phi$$
$$f_{r,0,0}^{(+)\phi} = \sqrt{\frac{\mu+1}{\pi \mu}} \frac{e^{-i(\mu+1)t}}{(1+r^2)^{\mu/2+1}}$$
$$\tag{.}\begin{align}
\mathcal{L}_{\xi _{-1}}{f^{(+)}_{r,0,0}}^{\mu} & =\xi ^{\nu}_{-1}\partial _{\nu}{f^{(+)}_{r,0,0}}^{\mu}-{f^{(+)}_{r,0,0}}^{\nu}\partial _{\nu}\xi ^{\mu}_{-1}
\end{align}$$

$$\tag{.}\begin{align}
{f^{(+)}_{r,0,0}}^{t} & =\frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} } r(1+r^{2})^{-(\mu+3)/2}e^{-i(\mu+1)t}e^{i\phi} \\
{f^{(+)}_{r,0,0}}^{r} & =-\frac{i}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }(1+r^{2})^{-(\mu+1)/2}e^{-i(\mu+1)t}e^{i\phi} \\
{f^{(+)}_{r,0,0}}^{\phi} & =\frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }
\end{align}$$


$$\tag{.}\begin{align}
{f^{(+)}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{\mu/2+1}}\bar{\xi}_{1}^{\mu} \\
 & =\frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }\frac{e^{-i(\mu+1)t}e^{i\phi}}{(1+r^{2})^{(\mu+2)/2}}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu} \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{-1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$