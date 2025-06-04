the metric is defined as

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\Omega ^{2}_{n-2}\right)
\end{align}
$$

where $\displaystyle{\mathrm{d}\Omega ^{2}_{n-2}}$ is the metric for unit sphere $\displaystyle{S^{n-2}}$. the spacetime $(\mathrm{AdS_{n}},g_{\mu \nu})$ is factorized to $\displaystyle{(\mathcal{N},g_{ab},\tilde{\nabla} _{a})\otimes(S^{n-2},g_{ij},\tilde{\nabla} _{i})}$ with Christoffel symbol

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} =\Gamma ^{\rho}_{~tt}=\Gamma ^{\rho}_{~\rho \rho}& =\tan \rho \\
\Gamma ^{\rho}_{ij} & =-\tan \rho \tilde{g}_{ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\sin \rho \cos \rho}\delta ^{i}_{j} \\
\Gamma ^{i}_{jk} & =\tilde{\Gamma}^{i}_{~jk}
\end{align}
$$

the equation of motion and the constraints can be written as

$$\tag{1.3}
\begin{align} \\
-\cos ^{2}\rho \partial _{t}^{2}A^{\mu}+\cos ^{2}\rho \partial _{\rho}^{2}A^{\mu}+\frac{n-2}{\tan \rho}\partial _{\rho}A^{\mu}+\cot ^{2}\rho \Delta _{S^{n-2}}A^{\mu}-(m^{2}-n+1)A^{\mu} & =-g^{\rho \sigma}(\partial _{\rho}\Gamma ^{\nu}_{~\sigma \tau}+\Gamma ^{\nu}_{~\rho \lambda}\Gamma ^{\lambda}_{~\sigma \tau}-\Gamma ^{\lambda}_{~\rho \sigma}\Gamma ^{\nu}_{~\lambda \tau})A^{\tau}-2g^{\rho \sigma}\Gamma ^{\nu}_{~\sigma \lambda}\partial _{\rho}A^{\lambda} \\
\partial _{t}A^{t}+\partial _{\rho}A^{\rho}+2\tan \rho A^{\rho}+\frac{n-2}{\sin \rho \cos \rho}A^{\rho}+\tilde{\nabla} _{i}A^{j} & =0
\end{align}
$$

$$\tag{.}
\begin{align}
-\cos ^{2}\rho \partial _{t}^{2}A^{t}+\cos ^{2}\rho \partial _{\rho}^{2}A^{t}+\frac{n-2}{\tan \rho}\partial _{\rho}A^{t}+\cot ^{2}\rho \Delta _{S^{n-2}}A^{\mu}-(m^{2}-n+1)A^{t}=-A^{t}+\sin 2\rho \partial _{t}A^{\rho}-\sin 2\rho \partial _{\rho}A^{t} \\
\end{align}
$$

$$\tag{.}
\begin{align}
g^{\mu \nu}(\partial _{\mu}\Gamma ^{\rho}_{~\nu \tau}+\Gamma ^{\rho}_{~\mu \lambda}\Gamma ^{\lambda}_{~\nu \tau}-\Gamma ^{\lambda}_{~\mu \nu}\Gamma ^{\rho}_{~\lambda \tau})A^{\tau}+2g^{\mu \nu}\Gamma ^{\rho}_{~\mu \lambda}\partial _{\nu}A^{\lambda}
\end{align}
$$

$$\tag{.}
\begin{align}
g^{\mu \nu}\partial _{\mu}\Gamma ^{\rho}_{\nu \tau}A^{\tau} & =g^{\mu t}\partial _{\mu}\Gamma ^{\rho}_{tt}A^{t}+g^{\mu \rho}\partial _{\mu}\Gamma ^{\rho}_{\rho \rho}A^{\rho}+g^{\mu i}\partial _{\mu}\Gamma ^{\rho}_{ij}A^{j} \\
 & =A^{\rho}-\frac{\cos\rho}{\sin\rho}\partial _{k}\tilde{g}_{ij}A^{j} \\
g^{\mu \nu}\Gamma ^{\rho}_{\mu \lambda}\Gamma ^{\lambda}_{\nu \tau}A^{\tau} & =g^{ik}\Gamma ^{\rho}_{ij}\Gamma ^{j}_{k \rho}A^{\rho} +g^{ik}\Gamma ^{\rho}_{ij}\Gamma ^{j}_{k l}A^{l}\\
 & =-\frac{n-2}{\sin ^{2}\rho}A^{\rho}-\frac{\cos \rho}{\sin \rho}\tilde{\Gamma}^{i}_{ij}A^{j} \\
-g^{\mu \nu}\Gamma ^{\lambda}_{\mu \nu}\Gamma ^{\rho}_{\lambda \tau}A^{\tau} & =-g^{\mu \nu}\Gamma ^{\rho}_{\mu \nu}\Gamma ^{\rho}_{\rho \rho}A^{\rho}-g^{\mu \nu}\Gamma ^{i}_{\mu \nu}\Gamma ^{\rho}_{ij}A^{j} \\
 & =\frac{\cos \rho}{\sin \rho}\tilde{g}^{kl}\tilde{\Gamma} ^{i}_{kl}\tilde{g}_{ij}A^{j} \\
2g^{\mu \nu}\Gamma ^{\rho}_{\mu \lambda}\partial _{\nu}A^{\lambda} & =2g^{t\nu}\Gamma ^{\rho}_{tt}\partial _{\nu}A^{t}+2g^{\rho \nu}\Gamma ^{\rho}_{\rho \rho}\partial _{\nu}A^{\rho}+2g^{i\nu}\Gamma ^{\rho}_{ij}\partial _{\nu}A^{j} \\
 & =-2\sin \rho\cos\rho \partial _{t}A^{t}+2\sin \rho \cos \rho\partial _{\rho}A^{\rho}-2\frac{\cos \rho}{\sin \rho}\partial _{k}A^{k} \\
-A^{\rho}+\frac{n-2}{\sin ^{2}\rho}A^{\rho}+\cot \rho \tilde{\Gamma}^{i}_{ij}A^{j}-\cot \rho &\tilde{g}^{kl}\tilde{\Gamma}^{i}_{kl}\tilde{g}_{ij}A^{j}+\sin2\rho \partial _{t}A^{t}-\sin 2\rho \partial _{\rho}A^{\rho}+2\cot \rho \partial _{k}A^{k}
\end{align}
$$

$$\tag{.}
\begin{align}
g^{kk}\Gamma ^{i}_{kk}g_{ii} & =
\end{align}
$$

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} =\Gamma ^{\rho}_{~tt}=\Gamma ^{\rho}_{~\rho \rho}& =\tan \rho \\
\Gamma ^{\rho}_{ij} & =-\tan \rho \tilde{g}_{ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\sin \rho \cos \rho}\delta ^{i}_{j} \\
\Gamma ^{i}_{jk} & =\tilde{\Gamma}^{i}_{~jk}
\end{align}
$$



make the following ansatz

$$\tag{1.4}
\begin{align}
A^{a} & =\psi ^{a}_{\ell}Y_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A^{\Omega} & =\left(\phi _{\ell}\mathbf{Y}_{\ell \mathbf{m}}^{(e)}(\Omega _{n-2})+\chi _{\ell}\mathbf{Y}_{\ell \mathbf{m}}^{(m)}(\Omega _{n-2})\right)
\end{align}
$$

$$\tag{.}
\begin{align}

\end{align}
$$

$$\tag{.}

$$
