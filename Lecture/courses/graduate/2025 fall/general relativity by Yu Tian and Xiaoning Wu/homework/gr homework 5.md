# problem 1

prove that for a antisymmetric tensor $\displaystyle{H^{\mu \nu\dots \sigma}(x)}$, the following identity holds

$$\begin{align}
\nabla _{\rho}H^{\mu \nu \dots \sigma}(x) & =\frac{1}{\sqrt{ -g }}\partial _{\rho}\left(\sqrt{ -g }H^{\mu \nu \dots \sigma}(x)\right)
\end{align}$$

*sol*.

$$\begin{align}
\frac{1}{\sqrt{ -g }}\partial _{\rho}(\sqrt{ -g }H^{\mu \nu\dots \sigma}) & =\partial _{\rho}H^{\mu \nu\dots \sigma}+\frac{1}{\sqrt{ -g }}\partial _{\rho}\sqrt{ -g }H^{\mu \nu\dots \sigma} \\
 & =\partial _{\rho}H^{\mu \nu\dots \sigma}+\frac{1}{2}g^{\alpha \beta}\partial _{\rho}g_{\alpha \beta}H^{\mu \nu\dots \sigma} \\
 & =\partial _{\rho}H^{\mu \nu\dots \sigma}+\Gamma ^{\alpha}_{\alpha \rho}H^{\mu \nu\dots \sigma}
\end{align}$$

while

$$\begin{align}
\nabla _{\rho}H^{\mu \nu\dots \sigma} & =\partial _{\rho}H^{\mu \nu\dots \sigma}+\sum _{i}\Gamma ^{\mu _{i}}_{\lambda \rho}H^{\mu \nu \dots \lambda \dots \sigma} \\
 & =\partial _{\rho}H^{\mu \nu\dots \sigma}+\Gamma ^{\alpha}_{\alpha \rho}H^{\mu \nu\dots \sigma}
\end{align}$$

in the second line we used the antisymmetry of $H^{\mu \nu\dots \sigma}$ to note that all terms in the sum vanish except when the upper index $\mu _{i}$ is contracted with the lower index $\lambda$. so we have proved the identity.
