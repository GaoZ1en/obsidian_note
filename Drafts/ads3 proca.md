$$\begin{align}\tag{1.3}
\cot \rho(\partial_{\rho}A_{\theta}- \partial_{\theta}A_{\rho}) & =-\mu A_{t} \\
-\cot \rho(\partial_{\theta}A_{t}-\partial_{t}A_{\theta}) & =-\mu A_{\rho} \\
-\sin \rho \cos \rho(\partial _{t}A_{\rho}-\partial _{\rho}A_{t}) & =-\mu A_{\theta}
\end{align}$$

make the following ansatz

$$\tag{1.4}
\begin{align}
A_{\mu} & =e^{-i \omega t}e^{im\theta}R_{\mu}(\rho)
\end{align}
$$

$$\tag{.}
\begin{align}
\cot \rho\left( \partial _{\rho}R_{\theta}+\frac{m}{\mu}\cot \rho(mR_{t}+\omega R_{\theta}) \right) & =-\mu R_{t} \\
\sin \rho \cos \rho\left( - \frac{\omega}{\mu}\cot \rho(mR_{t}+\omega R_{\theta})+\partial _{\rho}R_{t} \right) & =-\mu R_{\theta} \\
\frac{i}{\mu}\cot \rho(mR_{t}+\omega R_{\theta}) & =R_{\rho} \\
\end{align}
$$



$$\tag{.}
\begin{align}
 \left( \frac{m^{2}}{\mu}z+(1-z)\mu \right) R_{t}+\left( \frac{m\omega}{\mu}z-2z(1-z)\partial _{z} \right)R_{\theta}  & =0 \\
\left( \frac{m\omega }{\mu} z +2z(1-z)\partial _{z} \right)R_{t}+\left( \frac{\omega ^{2}}{\mu}z-\mu \right) R_{\theta} & =0 \\
\end{align}
$$

$$\tag{.}
\begin{align}
 \mu R_{t}=2z\partial _{z} R_{\theta}  & =0 \\
4z(1-z)\partial _{z}(z\partial _{z}R_{\theta})+\left( \omega ^{2}z-\mu ^{2} \right) R_{\theta} & =0 \\
4z^{2}(1-z)\partial _{z}^{2}R_{\theta}+4z(1-z)\partial _{z}R_{\theta}+(\omega ^{2}z-\mu ^{2})R_{\theta} & =0 \\
\end{align}
$$

let $\displaystyle{R_{\theta}=z^{\alpha}(1-z)^{\beta}F}$

$$\tag{.}
\begin{align}
4z^{2-\alpha}(1-z)^{1-\beta}\partial _{z}^{2}(z^{\alpha}(1-z)^{\beta}F)+4z^{1-\alpha}(1-z)^{1-\beta}\partial _{z}(z^{\alpha}(1-z)^{\beta}F)+(\omega ^{2}z-\mu ^{2})F=0
\end{align}
$$

$$\tag{.}
\begin{align}
\frac{1}{z^{\alpha}(1-z)^{\beta}}\partial _{z}(z^{\alpha}(1-z)^{\beta}F) & =\alpha z^{-1}F-\beta(1-z)^{-1}F+\partial _{z}F \\
\frac{1}{z^{\alpha}(1-z)^{\beta}}\partial _{z}^{2}(z^{\alpha}(1-z)^{\beta}F) & =\alpha(\alpha-1)z^{-2}F+\beta(\beta-1)(1-z)^{-2}F+\partial _{z}^{2}F \\
 & -\alpha \beta z^{-1}(1-z)^{-1}F+\alpha z^{-1}\partial _{z}F-\beta(1-z)^{-1}\partial _{z}F \\
\end{align}
$$

$$\tag{.}
\begin{align}
4z^{2}(1-z)\left(\alpha(\alpha-1)z^{-2}F+\beta(\beta-1)(1-z)^{-2}F+\partial _{z}^{2}F-\alpha \beta z^{-1}(1-z)^{-1}+\alpha z^{-1}\partial _{z}F-\beta(1-z)^{-1}\partial _{z}F\right) \\
+4z(1-z)\left(\alpha z^{-1}F-\beta(1-z)^{-1}F+\partial _{z}F\right)+(\omega ^{2}z-\mu ^{2})F & =0
\end{align}
$$

$$\tag{.}
\begin{align}
\partial _{z}^{2}F & :4z^{2}(1-z) \\
\partial _{z}F & :4z^{2}(1-z)\left(\alpha z^{-1}-\beta(1-z)^{-1}\right)+4z(1-z) \\
 & =4\alpha z(1-z)-4\beta z^{2}+4z(1-z) \\
 & =4\alpha z
\end{align}
$$

$$\tag{.}
\begin{align}
z(z-1)F''+(\gamma-(\alpha+\beta+1)z)F' + \alpha\beta F & =0
\end{align}
$$