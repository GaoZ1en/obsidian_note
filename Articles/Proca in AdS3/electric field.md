$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

after gauge fixing, we have the following modified action

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{\lambda}{2}(\nabla _{\mu}A^{\mu})^{2}\right)
\end{align}$$

here $\displaystyle{\lambda}$ is a constant, its convenient to choose $\displaystyle{\lambda=1}$. take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\mu}\delta A_{\mu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\mu} & =\nabla _{\nu}F^{\nu \mu}+\nabla ^{\mu}\nabla _{\rho}A^{\rho} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(F^{\mu \nu}+g^{\mu \nu}\nabla _{\rho}A^{\rho})\delta A_{\nu} \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\delta F^{\mu \nu}+g^{\mu \nu}\nabla _{\rho}\delta A^{\rho})\wedge \delta A_{\nu}
\end{align}$$

expand the eoms

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+4A^{t}-\frac{2r}{(1+r^{2})^{2}}\partial _{t}A^{r}& =0 \\
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1+r^{2}}{r}\partial _{r}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}-\frac{1+r^{2}}{r^{2}}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-2r\partial _{t}A^{t}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+4A^{\phi}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{\phi}+\frac{2}{r^{3}}\partial _{\phi}A^{r} & =0
\end{align}$$

and $\displaystyle{\nabla _{\mu}A^{\mu}}$ satisfies

$$\begin{align}
-\frac{1}{1+r^{2}}\partial _{t}^{2}(\nabla _{\mu}A^{\mu})+(1+r^{2})\partial _{r}^{2}(\nabla _{\mu}A^{\mu})+\frac{1+3r^{2}}{r}\partial _{r}(\nabla _{\mu}A^{\mu})+\frac{1}{r^{2}}\partial _{\phi}^{2}(\nabla _{\mu}A^{\mu})=0
\end{align}$$

