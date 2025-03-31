## a proof of (1.8) and (2.16)

assuming that there is no anomaly, i.e., we have

$$\tag{0.1}
\begin{align}
\partial _{\mu}T^{\mu \nu} & =0
\end{align}
$$

and

$$\tag{0.2}
\begin{align}
g^{\mu \nu}T_{\mu \nu} & =0
\end{align}
$$

for a conformal invariant theory

### for Killing vector

$$\tag{1.1}
\begin{align}
 & \tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+T_{\mu \rho}\partial _{\nu}\zeta ^{\rho}+T_{\rho \nu}\partial _{\mu}\zeta ^{\rho})  \\
 & =\tau ^{\mu}(\xi ^{\nu}\partial _{\nu}\zeta ^{\rho}-\zeta ^{\nu}\partial _{\nu}\xi ^{\rho})T_{\mu \rho}+\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\sigma}\partial _{\rho}(g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}-g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})+\tau _{\sigma}\partial _{\rho}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}) \\
 & -\tau ^{\mu}\partial _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\tau ^{\mu}\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\rho}\partial _{\sigma}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}-g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & +\frac{1}{2}\tau _{\rho}(\partial ^{\mu}\xi ^{\nu}+\partial ^{\nu}\xi ^{\mu})\zeta ^{\rho}T_{\mu \nu}+\tau _{\rho}\xi ^{\nu}(\partial ^{\mu}\zeta ^{\rho}+\partial ^{\rho}\zeta ^{\mu})T_{\mu \nu}+\tau _{\rho}\xi ^{\nu}\zeta ^{\rho}\partial ^{\mu}T_{\mu \nu} \\
 & -\tau ^{\mu}\zeta ^{\rho}\partial _{\rho}\xi ^{\nu}T_{\mu \nu}-\tau ^{\mu}\xi ^{\nu}\partial _{\rho}\zeta ^{\rho}T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}
\end{align}
$$

here we use (0.1), and 

$$\tag{1.2}
\begin{align}
\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}\partial _{\nu}S^{\mu \nu}=0
\end{align}
$$

where $\displaystyle{S^{\mu \nu}}$ is a antisymmetric tensor. and Killing equation

$$\tag{1.3}
\begin{align}
\partial _{\mu}\xi _{\nu}+\partial _{\nu}\xi _{\mu}=\partial _{\mu}\zeta _{\nu}+\partial _{\nu}\zeta _{\rho} & =0 \\
\implies \partial _{\rho}\xi ^{\rho}=\partial _{\rho}\zeta ^{\rho} & =0
\end{align}
$$

### for conformal Killing vector in 2d

$$\tag{2.1}
\begin{align}
 & \tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+T_{\mu \rho}\nabla _{\nu}\zeta ^{\rho}+T_{\rho \nu}\nabla _{\mu}\zeta ^{\rho}) \\
 & =\tau ^{\mu}(\xi ^{\rho}\nabla _{\rho}\zeta ^{\nu}-\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu})T_{\mu \nu}+\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\sigma}\nabla _{\rho}(g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}-g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})+\tau _{\sigma}\nabla ^{\mu}(\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}) \\
 & -\tau ^{\mu}\nabla _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\tau ^{\mu}\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\rho}\nabla _{\sigma}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}-g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & +\frac{1}{2}\tau _{\rho}(\nabla ^{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi ^{\mu}-g^{\mu \nu}\nabla _{\sigma}\xi ^{\sigma})\zeta ^{\rho}T_{\mu \nu}+\frac{1}{2}\tau _{\rho}\zeta ^{\rho}g^{\mu \nu}T_{\mu \nu}\nabla _{\sigma}\xi ^{\sigma}+\tau _{\rho}\xi ^{\nu}\zeta ^{\rho}\nabla ^{\mu}T_{\mu \nu} \\
 & +(\tau _{\rho}\xi ^{\nu}\nabla ^{\mu}\zeta ^{\rho}T_{\mu \nu}-\tau ^{\mu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}T_{\mu \nu}+\tau ^{\mu}\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho\nu})+(-\tau ^{\mu}\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu}T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}) \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\rho}\nabla _{\sigma}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}-g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & +\frac{1}{2}\tau _{\rho}(\nabla ^{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi ^{\mu}-g^{\mu \nu}\nabla _{\sigma}\xi ^{\sigma})\zeta ^{\rho}T_{\mu \nu}+\frac{1}{2}\tau _{\rho}\zeta ^{\rho}g^{\mu \nu}T_{\mu \nu}\nabla _{\sigma}\xi ^{\sigma}+\tau _{\rho}\xi ^{\nu}\zeta ^{\rho}\nabla ^{\mu}T_{\mu \nu} \\
 & +\tau _{\rho}\xi ^{\nu}T_{\mu \nu}(\nabla ^{\mu}\zeta ^{\rho}+\nabla ^{\rho}\zeta ^{\mu}-g^{\mu \rho}\nabla _{\sigma}\zeta ^{\sigma})
\end{align}
$$

### for conformal Killing vector in $\displaystyle{d\neq2}$-dimension

$$\tag{3.1}
\begin{align}
 & \tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+T_{\mu \rho}\nabla _{\nu}\zeta ^{\rho}+T_{\rho \nu}\nabla _{\mu}\zeta ^{\rho}) \\
 & =\tau ^{\mu}(\xi ^{\rho}\nabla _{\rho}\zeta ^{\nu}-\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu})T_{\mu \nu}+\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\sigma}\nabla _{\rho}(g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}-g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})+\tau _{\rho}\nabla ^{\mu}(\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & -\tau ^{\mu}\nabla _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\tau ^{\mu}\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu }T_{\mu \nu}+\tau _{\rho}\nabla _{\sigma}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}-g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & +\frac{1}{2}\tau _{\rho}\left( \nabla ^{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi ^{\mu}-\frac{2}{d}g^{\mu \nu}\nabla _{\sigma}\xi ^{\sigma} \right)\zeta ^{\rho}T_{\mu \nu}+\frac{1}{d}\tau _{\rho}\zeta ^{\rho}\nabla _{\sigma}\xi ^{\sigma}g^{\mu \nu}T_{\mu \nu} \\
 & +(\tau _{\rho}\xi ^{\nu}\nabla ^{\mu}\zeta ^{\rho}T_{\mu \nu}+\tau ^{\mu}\xi ^{\nu}\nabla _{\mu}\zeta ^{\rho}T_{\rho \nu}-\tau ^{\mu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}T_{\mu \nu})+(\tau ^{\mu}\zeta ^{\nu}\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}-\tau ^{\mu}\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu}T_{\mu \nu}) \\
 & =\frac{2-d}{d}\tau ^{\mu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}T_{\mu \nu}
\end{align}
$$

and in the conformally coupled scalar, we have

$$\tag{.}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =X_{\zeta}\cdot \delta H_{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+T_{\mu \rho}\nabla _{\nu}\zeta ^{\rho}+T_{\rho \nu}\nabla _{\mu}\zeta ^{\rho})+\frac{d-2}{d}\int _{\Sigma}\tau ^{\mu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}T_{\mu \nu}
\end{align}
$$

so the calculation last week is wrong...

## free scalar

$$\tag{.}
\begin{align}

\end{align}
$$

$$\tag{.}
\begin{align}
H_{\xi}|_{\Sigma _{f},\tilde{\mathcal{P}}}-H_{\xi}|_{\Sigma _{i},\tilde{\mathcal{P}}} & = \int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}\Big|_{\tilde{\mathcal{P}}} \\
 & =-\int _{M}\varepsilon \nabla ^{\mu}(\xi ^{\nu}T_{\mu \nu})\Big|_{\tilde{\mathcal{P}}} \\
 & =-\int _{M}\varepsilon\left(\frac{1}{2}\left( \nabla ^{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi ^{\mu}-\frac{2}{d}g^{\mu \nu}\nabla _{\rho}\xi ^{\rho} \right)T_{\mu \nu}+\frac{1}{d}g^{\mu \nu}T_{\mu \nu}\nabla _{\rho}\xi ^{\rho}+\xi ^{\nu}\nabla ^{\mu}T_{\mu \nu}\right) \\
 & =0
\end{align}
$$