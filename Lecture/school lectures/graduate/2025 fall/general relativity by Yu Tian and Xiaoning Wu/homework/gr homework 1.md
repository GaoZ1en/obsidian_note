# homework 1
$$\begin{align}
T^{\mu \nu} & =F^{\mu}_{~\rho}F^{\nu \rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}
\end{align}$$

here we choose natural unit and signature $\displaystyle{(-,+,+,+)}$.

1. verify that $\displaystyle{T^{\mu \nu}}$ is traceless, i.e., $\displaystyle{g_{\mu \nu}T^{\mu \nu}=0}$

$$\begin{align}
g_{\mu \nu}T^{\mu \nu} & =g_{\mu \nu}F^{\mu}_{~\rho}F^{\nu \rho}-\frac{1}{4}g_{\mu \nu}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \\
 & =\left( 1-\frac{d}{4} \right)F_{\rho \sigma}F^{\rho \sigma} \\
 & =0
\end{align}$$

2. verify that the stress tensor $\displaystyle{T^{\mu \nu}}$ is conserved, i.e., $\displaystyle{\nabla _{\mu}T^{\mu \nu}=F^{\nu \rho}J_{\rho}}$

$$\begin{align}
\nabla _{\mu}T^{\mu \nu} & =\nabla _{\mu}F^{\mu}_{~\rho}F^{\nu \rho}+F_{\mu\rho}\nabla ^{\mu}F^{\nu \rho}-\frac{1}{4}\nabla ^{\nu}(F_{\rho \sigma}F^{\rho \sigma}) \\
 & =F^{\nu \rho}J_{\rho}+F_{\rho \sigma}\nabla ^{\rho}F^{\nu \sigma}-\frac{1}{2}F_{\rho \sigma}\nabla ^{\nu}F^{\rho \sigma} \\
 & =F^{\nu \rho}J_{\rho}-\frac{1}{2}F_{\rho \sigma}\left(\nabla ^{\nu}F^{\rho \sigma}+\nabla ^{\sigma}F^{\nu \rho}+\nabla ^{\rho}F^{\sigma \nu}\right) \\
 & =F^{\nu \rho}J_{\rho}
\end{align}$$

here we use the equation of motion $\displaystyle{\nabla _{\mu}F^{\mu \nu}=J^{\mu}}$ and the Bianchi identity $\displaystyle{\nabla ^{\nu}F^{\rho \sigma}+\nabla ^{\sigma}F^{\nu \rho}+\nabla ^{\rho}F^{\sigma \nu}=0}$.

this means in a spacetime, energy and momentum of electromagnetic field and *non-electric matter* are conserved.