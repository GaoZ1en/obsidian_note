$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}
$$

let

$$\tag{1.2}
\begin{align}
\tau _{\mu} & =-N\delta _{\mu t} \\
\sigma _{\mu \nu} & =g_{\mu \nu}+\tau _{\mu}\tau _{\nu} \\
\tau ^{\mu} & =\frac{1}{N}\delta ^{\mu t} \\
\sigma ^{\mu \nu} & =g^{\mu \nu}+\tau ^{\mu}\tau ^{\nu}
\end{align}
$$

where $\displaystyle{N=\sqrt{ 1+r^{2} }}$. the action for Proca field is

$$\tag{1.3}
\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\int \mathrm{d}^{3}xN\sqrt{ \sigma }\left(-\frac{1}{4}g^{\mu \rho}g^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\mu}A_{\nu}\right)
\end{align}
$$

the first term is

$$\tag{1.4}
\begin{align}
-\frac{1}{4}g^{\mu \rho}g^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda} & =-\frac{1}{4}(\sigma ^{\mu \rho}+\tau ^{\mu}\tau ^{\rho})(\sigma ^{\nu \lambda}+\tau ^{\nu}\tau ^{\lambda})F_{\mu \nu}F_{\rho \lambda} \\
 & =-\frac{1}{4}\sigma ^{\mu \rho}\sigma ^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda}-\frac{1}{2}\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}F_{\mu \nu}F_{\rho \lambda}
\end{align}
$$


$$\tag{1.4.1}
\begin{align}
\sigma ^{\mu \rho}\sigma ^{\nu \lambda}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})(\nabla _{\rho}A_{\lambda}-\nabla _{\lambda}A_{\rho}) & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\lambda}-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\nu}A_{\mu}\nabla _{\rho}A_{\lambda} \\
 & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha}+\tau _{\nu}\tau ^{\alpha}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta}+\tau _{\lambda}\tau ^{\beta}A_{\beta})-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha}+\tau _{\mu}\tau ^{\alpha}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta}+\tau _{\lambda}\tau ^{\beta}A_{\beta}) \\
 & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta})+4\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta})+2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}\nabla _{\rho}\tau _{\lambda}\tau ^{\beta}A_{\beta}-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}(\nu\leftrightarrow \mu) \\
 & =2\sigma ^{ab}\sigma ^{cd}D_{a}(\sigma ^{\alpha}_{c}A_{\alpha})D_{b}(\sigma ^{\beta}_{d}A_{\beta})+4K^{ab}D_{a}(\sigma ^{\beta}_{b}A_{\beta})\tau ^{\alpha}A_{\alpha}+2K^{ab}K_{ab}(\tau ^{\alpha}A_{\alpha})^{2}
\end{align}
$$
$$\tag{.}
\begin{align}
-\frac{1}{2}g^{\mu \rho}g^{\nu \sigma}F_{\mu \nu}F_{\rho \sigma} & =-\frac{1}{4}(\sigma ^{\mu \rho}+\tau ^{\mu}\tau ^{\rho})(\sigma ^{\nu \sigma}+\tau ^{\nu}\tau ^{\sigma})F_{\mu \nu}F_{\rho \sigma} \\
 & =-\frac{1}{4}\sigma ^{\mu \rho}\sigma ^{\nu \sigma}F_{\mu \nu}F_{\rho \sigma}-\frac{1}{4}\sigma ^{\mu \rho}\tau ^{\nu \sigma}F_{\mu \nu}F_{\rho \sigma}-\frac{1}{4}\sigma ^{\nu \sigma}\tau ^{\mu \rho}F_{\mu \nu}F_{\rho \sigma} \\
 & =-\frac{1}{4}\sigma ^{ac}\sigma ^{bd}\tilde{F}_{ab}\tilde{F}_{cd}-\frac{1}{2}\sigma ^{ab}\tau ^{\nu}\tau ^{\sigma}F_{a\nu}F_{b\sigma}
\end{align}
$$

where $\displaystyle{\tilde{F}_{ab}=D_{a}A_{b}-D_{b}A_{a}}$, 

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\sigma}F_{\mu \nu}F_{\rho \sigma} & =
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})(\nabla _{\rho}A_{\sigma}-\nabla _{\sigma}A_{\rho}) & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\sigma}-\sigma ^{\mu \rho}\tau ^{\nu \lambda}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\sigma}-\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}A_{\mu}\nabla _{\rho}A_{\sigma}+\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}A_{\mu}\nabla _{\sigma}A_{\rho}
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}F_{\mu \nu}F_{\rho \sigma} & =\sigma ^{\mu \rho}D_{\mu}(\tau ^{\nu}A_{\nu})D_{\rho}(\tau ^{\sigma}A_{\sigma})-2D_{\mu}(\tau ^{\nu}A_{\nu})A_{\sigma}K^{\mu \sigma}+A_{\nu}A_{\sigma}K^{\rho \nu}K_{\rho}^{~\sigma} \\
 & -2D^{\rho}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}(\sigma ^{\alpha}_{\rho}A^{\rho})-2D^{\rho}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}\tau _{\rho}\tau ^{\alpha}A_{\alpha}+2A_{\nu}K^{\nu \rho}\tau ^{\sigma}\nabla _{\sigma}(\sigma^{\alpha}_{\rho}A_{\alpha})+2A_{\nu}K^{\nu \rho}\tau ^{\sigma}\nabla _{\sigma}\tau _{\rho}\tau ^{\alpha}A_{\alpha} \\
 & +\sigma ^{\mu \rho}\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})\tau ^{\sigma}\nabla _{\sigma}(\sigma ^{\beta}_{\rho}A_{\beta})+2\sigma ^{\mu \rho}\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})\tau ^{\sigma}\tau _{\rho}\tau ^{\beta}A_{\beta}+\sigma ^{\mu \rho}\tau ^{\alpha}A_{\alpha}\tau ^{\beta}A_{\beta}\tau ^{\nu}\nabla _{\nu}\tau _{\mu}\tau ^{\sigma}\nabla _{\sigma}\tau _{\rho}
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\sigma}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\sigma} & =\sigma ^{\mu \rho}\nabla _{\mu}(\tau ^{\nu}A_{\nu})\nabla _{\rho}(\tau ^{\sigma}A_{\sigma}) -(\sigma ^{\mu \rho}\tau ^{\nu}\nabla _{\mu}A_{\nu}A_{\sigma}\nabla _{\rho}\tau ^{\sigma}+\sigma ^{\mu \rho}\tau ^{\sigma}\nabla _{\rho}A_{\sigma}A_{\nu}\nabla _{\mu}\tau ^{\nu}+\sigma ^{\mu \rho}A_{\nu}A_{\sigma}\nabla _{\mu}\tau ^{\nu}\nabla _{\rho}\tau ^{\sigma}) \\
 & =\sigma ^{\mu \rho}D_{\mu}(\tau ^{\nu}A_{\nu})D_{\rho}(\tau ^{\sigma}A_{\sigma})-2D _{\mu}(\tau ^{\nu}A_{\nu})A_{\sigma}K^{\mu \sigma}+A_{\nu}A_{\sigma}K^{\rho \nu}K_{\rho}^{~\sigma}
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\nabla _{\mu}A_{\nu}\tau ^{\sigma}\nabla _{\sigma}A_{\rho} & =\sigma ^{\mu \rho}\nabla _{\mu}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}(\delta _{\rho}^{\alpha}A_{\alpha})-\sigma ^{\mu \rho}A_{\nu}\nabla _{\mu}\tau ^{\nu}\tau ^{\sigma}\nabla _{\sigma}(\delta _{\rho}^{\alpha}A_{\alpha}) \\
 & =D^{\rho}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}(\sigma ^{\alpha}_{\rho}+\tau _{\rho}\tau ^{\alpha}A_{\alpha})-A_{\nu}K^{\nu \rho}\tau ^{\sigma}\nabla _{\sigma}(\sigma ^{\alpha}_{\rho}A_{\alpha}+\tau _{\rho}\tau ^{\alpha}A_{\alpha}) \\
 & =D^{\rho}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}(\sigma ^{\alpha}_{\rho}A_{\alpha})+D^{\rho}(\tau ^{\nu}A_{\nu})\tau ^{\sigma}\nabla _{\sigma}\tau _{\rho}\tau ^{\alpha}A_{\alpha} -A_{\nu}K^{\nu \rho}\tau ^{\sigma}\nabla _{\sigma}(A^{\alpha}_{\rho}A_{\alpha})-A_{\nu}K^{\nu \rho}\tau ^{\sigma}\nabla _{\sigma}\tau _{\rho}\tau ^{\alpha}A_{\alpha}
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}A_{\mu}\nabla _{\sigma}A_{\rho} & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}(\delta ^{\alpha}_{\mu}A_{\alpha})\nabla _{\sigma}(\delta ^{\beta}_{\rho}A_{\beta}) \\
 & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha}+\tau ^{\alpha}\tau _{\mu}A_{\alpha})\nabla _{\sigma}(\sigma ^{\beta}_{\rho}A_{\beta}+\tau ^{\beta}\tau _{\rho}A_{\beta}) \\
 & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})\nabla _{\sigma}(\sigma ^{\beta}_{\rho}A_{\beta})+\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})\nabla _{\sigma}\tau _{\rho}\tau ^{\beta}A_{\beta}+\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}\tau _{\mu}\tau ^{\alpha}A_{\alpha}\nabla _{\sigma}(\sigma ^{\beta}_{\rho}A_{\beta})  \\
 & +\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\tau ^{\alpha}A_{\alpha}\tau ^{\beta}A_{\beta}\nabla _{\nu}\tau _{\mu}\nabla _{\sigma}\tau _{\rho}
\end{align}
$$

$$\tag{.}
\begin{align}
\sigma _{ab}A^{a}A^{b}-(\tau _{\mu}A^{\mu})^{2}
\end{align}
$$


$$\tag{.}
\begin{align}
\Gamma ^{t}_{~tt} & =0, & \Gamma ^{t}_{~ta} & =\frac{\partial _{a}N}{N}, & \Gamma ^{t}_{~ab} & =0 \\
\Gamma ^{a}_{~tt} & =h^{ab}N\partial _{b}N, & \Gamma ^{a}_{~tb} & =0, & \Gamma ^{c}_{~ab} & =\tilde{\Gamma}^{c}_{~ab}
\end{align}
$$

$$\tag{.}
\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}g_{\mu \nu}A^{\mu}A^{\nu}\right) \\
 & =\int \mathrm{d}t\int \mathrm{d}^{2}xN\sqrt{ h }\left(-\frac{1}{2}F_{ta}F^{ta}-\frac{1}{4}F_{ab}F^{ab}+\frac{1}{2}\mu ^{2}N^{2}A^{t}A^{t}-\frac{1}{2}\mu ^{2}h_{ab}A^{a}A^{b}\right)
\end{align}
$$

$$\tag{.}
\begin{align}
-\partial _{a}F^{ta}-\left( \frac{\partial _{a}N}{N} +\tilde{\Gamma}^{a}_{~ab}\right)F^{ta} & =\mu ^{2}A^{t} \\
\partial _{t}F^{ta}-\partial _{b}F^{ab}+\left( \delta ^{a}_{c}\frac{\partial _{b}N}{N}+\delta ^{a}_{c}\tilde{\Gamma} ^{d}_{~bd}+\tilde{\Gamma} ^{a}_{~bc} \right)F^{bc} & =\mu ^{2}A^{a}
\end{align}
$$

where $\displaystyle{\tilde{\Gamma}^{c}_{~ab}=\frac{1}{2}h^{cd}(\partial _{a}h_{db}+\partial _{b}h_{ad}-\partial _{d}h_{ab})}$
