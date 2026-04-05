# problem 1

let $\displaystyle{S^{2}}$ be the 2-sphere with radius $\displaystyle{R}$. consider the coordinate $\displaystyle{(\theta,\phi)}$, where

$$\begin{align}
x & =R\sin \theta \cos \phi \\
y & =R\sin \theta \sin \phi \\
z & =R\cos \theta
\end{align}$$

1. find the metric tensor $\displaystyle{g_{\mu \nu}}$ in this coordinate.
*sol*. we have
$$\begin{align}
\mathrm{d}s^{2} & =\mathrm{d}x^{2}+\mathrm{d}y^{2}+\mathrm{d}z^{2} \\
 & =R^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2})
\end{align}$$
the non-zero components are $\displaystyle{g_{\theta \theta}=R^{2},g_{\phi \phi}=R^{2}\sin ^{2}\theta}$
2. write down inverse metric tensor $\displaystyle{g^{\mu \nu}}$.
*sol*. $\displaystyle{g^{\theta \theta}=\frac{1}{R^{2}},g^{\phi \phi}=\frac{1}{R^{2}\sin ^{2}\theta}}$
3. calculate the Christoffel symbols $\displaystyle{\Gamma^{\lambda}_{\mu \nu}}$.
*sol*. we first introduce a useful formula. we write
$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =\frac{1}{2}g^{\rho \sigma}\left(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu}\right)\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =g^{\rho \sigma}\mathrm{d}g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}$$
then
$$\begin{align}
\Gamma ^{\theta}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{\theta \theta}\mathrm{d}g_{\theta \theta}\mathrm{d}\theta-\frac{1}{2}g^{\theta \theta}\partial _{\theta}\mathrm{d}s^{2} \\
 & =-\frac{1}{2}\partial _{\theta}\sin ^{2}\theta \mathrm{d}\phi ^{2} \\
 & =-\sin \theta \cos \theta \mathrm{d}\phi ^{2}\implies \Gamma ^{\theta}_{~\phi \phi}=-\sin \theta \cos \theta \\
\Gamma ^{\phi}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{\phi \phi}\mathrm{d}g_{\phi \phi}\mathrm{d}\phi-\frac{1}{2}g^{\phi \phi}\partial _{\phi}\mathrm{d}s^{2} \\
 & = 2\cot \theta\mathrm{d}\theta\mathrm{d}\phi\implies \Gamma ^{\phi}_{~\theta \phi}=\Gamma ^{\phi}_{~\phi \theta}=\cot \theta
\end{align}$$

# problem 2

prove that the Ricci tensor is symmetric.

*sol*. by definition, we have

$$\begin{align}
R_{\nu \mu} & =R^{\lambda}_{~\nu \lambda \mu} \\
 & =-R^{\lambda}_{~\mu \nu \lambda}-R^{\lambda}_{~\lambda \mu \nu} \\
 & =R^{\lambda}_{~\mu \lambda \nu}=R_{\mu \nu}
\end{align}$$

here we have used the Bianchi identity and the antisymmetry of the Riemann tensor which implies $\displaystyle{R^{\lambda}_{~\lambda \mu \nu}=0}$.

# problem 3

suppose $\displaystyle{\xi ^{\mu}}$ and $\displaystyle{k^{\mu}}$ are smooth vector fields. prove that the Lie derivative $\displaystyle{\mathcal{L}_{\xi}k^{\mu}}$ transforms as a vector under a coordinate transformation.

*sol*. we have

$$\begin{align}
\mathcal{L}_{\xi}k^{\mu} & =\xi ^{\nu}\partial _{\nu}k^{\mu}-k^{\nu}\partial _{\nu}\xi ^{\mu} \\
 & =\xi ^{\nu}\partial _{\nu}k^{\mu}-\Gamma^{\mu}_{~\nu \lambda}\xi ^{\lambda}k^{\nu}+\Gamma^{\mu}_{~\nu \lambda}\xi ^{\lambda}k^{\nu}-k^{\mu}\partial _{\nu}\xi ^{\mu} \\
 & =\xi ^{\nu}\nabla _{\nu}k^{\mu}-k^{\nu}\nabla _{\nu}\xi ^{\mu}
\end{align}$$

since we have prove that $\displaystyle{\nabla _{\nu}k^{\mu}}$ is a tensor, we conclude that $\displaystyle{\mathcal{L}_{\xi}k^{\mu}}$ is also a tensor, i.e., it transforms as a vector under a coordinate transformation.

