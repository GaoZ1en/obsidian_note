## a proof of (1.8) and (2.16)

### for Killing vector

$$\tag{1.1}
\begin{align}
\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+T_{\mu \rho}\partial _{\nu}\zeta ^{\rho}+T_{\rho \nu}\partial _{\mu}\zeta ^{\rho}) & =\tau ^{\mu}(\xi ^{\nu}\partial _{\nu}\zeta ^{\rho}-\zeta ^{\nu}\partial _{\nu}\xi ^{\rho})T_{\mu \rho}+\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\sigma}\partial _{\rho}(g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}-g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})+\tau _{\sigma}\partial _{\rho}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}) \\
 & -\tau ^{\mu}\partial _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\tau ^{\mu}\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\tau _{\rho}\partial _{\sigma}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}-g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu})+\tau _{\rho}\partial ^{\mu}(\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}) \\
 & +\frac{1}{2}\tau _{\rho}(\partial ^{\mu}\xi ^{\nu}+\partial ^{\nu}\xi ^{\mu})\zeta ^{\rho}T_{\mu \nu}+\tau _{\rho}\xi ^{\nu}\partial ^{\mu}\zeta ^{\rho}T_{\mu \nu}+\tau _{\rho}\xi ^{\nu}\zeta ^{\rho}\partial ^{\mu}T_{\mu \nu} \\
 & -\tau ^{\mu}\zeta ^{\rho}\partial _{\rho}\xi ^{\nu}T_{\mu \nu}-\tau ^{\mu}\xi ^{\nu}\partial _{\rho}\zeta ^{\rho}T_{\mu \nu}+\tau ^{\mu}\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\tau ^{\mu}\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}
\end{align}
$$

here we use

$$\tag{1.2}
\begin{align}
\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}\partial _{\nu}S^{\mu \nu}=0
\end{align}
$$

where $\displaystyle{S^{\mu \nu}}$ is a antisymmetric tensor. 


$$\tag{1.1}
\begin{align}
\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\mathcal{L}_{\zeta}T_{\mu \nu} & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+T_{\mu \rho}\partial _{\nu}\zeta ^{\rho}+T_{\rho \nu}\partial _{\mu}\zeta ^{\rho} \right) \\
  & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\xi ^{\nu}\partial _{\nu}\zeta ^{\rho}-\zeta ^{\nu}\partial _{\nu}\xi^{\rho})T_{\mu \rho}+\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\xi ^{\nu}\zeta ^{\rho}\partial _{\rho}T_{\mu \nu}+\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}[\xi,\zeta]^{\nu}T_{\mu \nu}+\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\sigma}\partial _{\rho}(g^{\mu \sigma}\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu}-g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu}) \\
 & +\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\sigma}\partial _{\rho}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\partial _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu} \\
 & +\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu})
\end{align}
$$

$$\tag{.}
\begin{align}
& +\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\sigma}\partial _{\rho}(g^{\mu \rho}\xi ^{\nu}\zeta ^{\sigma}T_{\mu \nu})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\partial _{\rho}(\xi ^{\nu}\zeta ^{\rho})T_{\mu \nu} \\
 & +\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\zeta ^{\nu}\partial _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\rho}\partial ^{\mu}(\xi ^{\nu}\zeta ^{\rho}T_{\mu \nu})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\zeta ^{\rho}\partial _{\rho}\xi ^{\nu}T_{\mu \nu} \\
 & +\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\rho}\zeta ^{\nu}\partial _{\nu}\xi ^{\mu}T_{\mu \rho}+\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =\frac{1}{2}\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\rho}(\partial ^{\mu}\xi ^{\nu}+\partial ^{\nu}\xi ^{\mu})\zeta ^{\rho}T_{\mu \nu}+\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\rho}\xi ^{\nu}\partial ^{\mu}\zeta ^{\rho}T_{\mu \nu} \\
 & +\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\partial _{\mu}\zeta ^{\rho}T_{\rho \nu} \\
 & =-2\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\zeta ^{\rho}\partial _{\rho}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$