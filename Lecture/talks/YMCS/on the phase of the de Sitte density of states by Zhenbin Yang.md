wrong sign Gaussian by Wick rotation

$$\begin{align}
f(a) & =\int _{-\infty}^{\infty} \frac{1}{\sqrt{ \pi }}e^{-ax^{2}}\mathrm{d}x=\frac{1}{\sqrt{ a }} \\
\implies f(-1) & \sim i
\end{align}$$

(actually the integral contour changes) such integral appears in the conformal modes in Euclidean gravitational path integral... consider a pure gravity theory around the saddle point $\displaystyle{S^{D}}$ ($\displaystyle{2\Lambda=(D-1)(D-2)}$)

$$\begin{align}
I & =\int \phi _{\mu \nu}(-\hat{\nabla} ^{2}+2)\phi _{\mu \nu}-\frac{\left( 1-\frac{2}{D} \right)}{2}h(-\hat{\nabla}^{2}-2(D-1))h+\text{gauge fixing}
\end{align}$$

where $\displaystyle{h}$ is the conformal mode and $\displaystyle{\phi _{\mu \nu}}$ is the traceless part of gravitational fluctuation. the coupling constant for $\displaystyle{h}$ is negative when $\displaystyle{D>2}$, which leads to a wrong sign Gaussian and the instability of the $\displaystyle{h}$ modes. the partition function will gives a infinite $\displaystyle{i}$ factors, which prevents a state-counting interpretation.

by introducing an observer, [[2412.14014]] Maldecena cancel mostly the phase of partition fuction. see 2412.14014 for more info. the final phase will be

$$\begin{align}
(-i)^{D-1}\times i^{D+2} & =i^{3}
\end{align}$$

where $\displaystyle{(-i)^{D-1}}$ is contributed by the observer.

by replacing the observer by a charged black hole, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\varphi ^{2}) \\
f(r) & =1-\frac{2M}{r}+\frac{Q^{2}}{r^{2}}-r^{2} \\
F & =Q\sin \theta \mathrm{d}\theta \wedge \mathrm{d}\varphi
\end{align}$$

thermal phase diagram of the black hole... the final result is ... see his paper...

another part of the lecture is the truncated two-dim dilaton gravity theory, with metric and action

$$\begin{align}
\mathrm{d}s^{2}_{4d} & =\phi ^{-1/2}\mathrm{d}s_{2d}^{2}+\phi \mathrm{d}\Omega _{2}^{2} \\
I & =-\frac{1}{4G}\int \mathrm{d}^{2}x\sqrt{ g }(\phi R+V(\phi)) \\
V(\phi) & =\frac{2}{\sqrt{ \phi }}\left(1+3\phi-\frac{Q^{2}}{\phi}\right)
\end{align}$$

the solution is

$$\begin{align}
g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}+\frac{\mathrm{d}\phi ^{2}}{A(\phi)}+A(\phi)\mathrm{d}\tau ^{2},\quad A'(\phi)=V(\phi)
\end{align}$$

smoothness condition? lukeworm black hole and Narai black hole? conformal gauge

$$\begin{align}
\phi & =\hat{\phi}+\varphi,\quad g=e^{2\omega}\hat{g}
\end{align}$$

the action becomes

$$\begin{align}
I & =\frac{1}{4G}\int \mathrm{d}^{2}x\sqrt{ \hat{g} }(\varphi,\omega) \mathcal{D}\begin{pmatrix}
\varphi \\
\omega
\end{pmatrix} \\
\mathcal{D} & =\begin{pmatrix}
-\frac{V'}{2} & -\nabla ^{2}-V' \\
-\nabla ^{2}-V' & \dots
\end{pmatrix}
\end{align}$$

(the $\displaystyle{\mathcal{D}}$ may be wrong). numerical analysis shows the phase of one-loop determinant meets the prediction by Maldecena.
