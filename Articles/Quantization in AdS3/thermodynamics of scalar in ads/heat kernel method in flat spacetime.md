[reference](https://link.springer.com/content/pdf/10.1007/JHEP04(2015)178.pdf)

here we use the heat kernel method to compute the 1-loop partition function of a field theory in 3D flat spacetime, with metric

$$\begin{align}
(y,\phi) & \sim \gamma(y,\phi)=(y+\beta,\phi+\theta)
\end{align}$$

define the modular parameter

$$\begin{align}
\tau & =\frac{1}{2\pi}(\theta+i\beta)
\end{align}$$

# $\displaystyle{\mathbb{R}^{3}}$

we first consider the case of unquotiented flat spacetime $\displaystyle{\mathbb{R}^{3}}$. The heat kernel for a scalar field with mass $\displaystyle{\mu}$ is given by

$$\begin{align}
\Delta _{x} K(t,x,x') & =\partial _{t}K(t,x,x') \\
\Delta & =\nabla ^{2}-\mu ^{2}
\end{align}$$

with the initial condition

$$\begin{align}
K(0,x,x') & =\delta ^{(3)}(x-x')
\end{align}$$

since $\displaystyle{\mathbb{R}^{3}}$ is the maximally symmetric space, the heat kernel only depends on the geodesic distance $\displaystyle{\sigma (x,x')}$ between $\displaystyle{x}$ and $\displaystyle{x'}$:

$$\begin{align}
\sigma(x,x') & =|x-x'|^{2}
\end{align}$$

the solution to the heat kernel equation is given by

$$\begin{align}
K(t,x,x') & =\frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t-\sigma/4t}
\end{align}$$

the 1-loop effective action is given by

$$\begin{align}
\ln Z^{(1)} & =-\frac{1}{2}\sum _{n}\ln \lambda _{n} \\
 & =\frac{1}{2}\int ^{\infty}_{0^{+}} \frac{\mathrm{d}t}{t}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }K(t,x,x)
\end{align}$$

$$\begin{align}
-\frac{1}{2}\ln \det \Delta & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\int _{\mathbb{R}^{3}} \mathrm{d}^{3}xK(t,x,x) \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{R}^{3})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t} \\
 & = \frac{1}{2}\mathrm{Vol}(\mathbb{R}^{3}) \frac{1}{(4\pi)^{3/2}} \frac{\Gamma\left( -\frac{3}{2} \right)}{\mu ^{-3}} \\
 & =\mathrm{Vol}(\mathbb{R}^{3}) \frac{\mu ^{3}}{12\pi }
\end{align}$$

# $\displaystyle{\mathbb{R}^{3}/\mathbb{Z}}$ case

by method of images, the heat kernel on $\displaystyle{\mathbb{R}^{3}/\mathbb{Z}}$ is given by

$$\begin{align}
K^{\mathbb{R}^{3}/\mathbb{Z}}(t,x,x') & =\sum _{n\in \mathbb{Z}} K(t,x,\gamma ^{n}x')
\end{align}$$

we notice that

$$\begin{align}
\sigma(x,\gamma ^{n}x) & =n^{2}\beta ^{2}+4\rho ^{2}\sin ^{2}(\frac{n\theta}{2})
\end{align}$$

thus the trace of the heat kernel is given by

$$\begin{align}
\int _{\mathbb{R}^{3}/\mathbb{Z}} \mathrm{d}^{3}x K(t,x,x) & =\sum _{n\in \mathbb{Z}}\int _{\mathbb{R}^{3}/\mathbb{Z}} \mathrm{d}^{3}xK(t,\sigma(x,\gamma ^{n}x)) \\
 & =\int _{\mathbb{R}^{3}/\mathbb{Z}}\mathrm{d}^{3}xK(t,\sigma=0)+\sum _{n\neq 0}\int _{\mathbb{R}^{3}/\mathbb{Z}}\mathrm{d}^{3}xK(t,\sigma(x,\gamma ^{n}x)) \\
 & =\mathrm{Vol}(\mathbb{R}^{3}/\mathbb{Z}) \frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t}+\sum _{n\neq 0} \frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t}\int _{0}^{\beta}\mathrm{d}y\int ^{\infty}_{0}\rho\mathrm{d}\rho \int ^{2\pi}_{0}\mathrm{d}\varphi e^{-(n^{2}\beta ^{2}+4\rho ^{2}\sin ^{2}(n\theta/2))/4t} \\
 & =\mathrm{Vol}(\mathbb{R}^{3}/\mathbb{Z}) \frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t}+\sum _{n=1}^{\infty} \frac{4\pi\beta}{(4\pi t)^{3/2}}e^{-\mu ^{2}t-n^{2}\beta ^{2}/4t} \int _{0}^{\infty} \mathrm{d}\rho \rho e^{-\rho ^{2}\sin ^{2}(n\theta/2)/t} \\
 & =\mathrm{Vol}(\mathbb{R}^{3}/\mathbb{Z}) \frac{1}{(4\pi t)^{3/2}}e^{-\mu ^{2}t}+\sum _{n=1}^{\infty} \frac{2\pi\beta}{(4\pi t)^{3/2}}e^{-\mu ^{2}t-n^{2}\beta ^{2}/4t} \frac{t}{\sin ^{2}(n\theta/2)}
\end{align}$$

and the 1-loop effective action is given by

$$\begin{align}
-\frac{1}{2}\ln \det \Delta & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\sum ^{\infty}_{n=1} \frac{2\pi \beta}{(4\pi t)^{3/2}} e^{-\mu ^{2}t-n^{2}\beta ^{2}/4t} \frac{t}{\sin ^{2}\left( \frac{n\theta}{2} \right)} \\
 & =\sum ^{\infty}_{n=1}\frac{e^{-\mu n\beta}}{n|1-e^{in\theta}|^{2}}
\end{align}$$

algebraic interpretation? BMS character?
