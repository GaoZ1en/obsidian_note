在本附录中，我们将证明度规 $\displaystyle{g_{\mu \nu}}$、Riemann张量 $\displaystyle{R^{\mu}_{~\nu \rho \sigma}}$、Ricci张量 $\displaystyle{R_{\mu \nu}}$、Ricci标量 $\displaystyle{R}$ 以及单位全反对称张量 $\displaystyle{\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}}$ 在微分同胚变换

$$\tag{D.1}
\begin{align}
X_{\xi}=\int \mathrm{d}^{d}x\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}
\end{align}
$$

的作用将等于李导数 $\displaystyle{\mathcal{L}_{\xi}}$ 作用于它们。以及

$$\tag{D.2}
\begin{align}
X_{\xi}\cdot \delta \int_{M}\mathbf{L}=\int_{\partial M}\mathrm{d}\xi \cdot \mathbf{L}
\end{align}
$$

是合理的。

## 几何量的微分同胚变换

根据微分同胚变换 $\displaystyle{X_{\xi}}$ 的定义，显然有 $\displaystyle{X_{\xi}\cdot \delta g_{\mu \nu}=\mathcal{L}_{\xi}g_{\mu \nu}}$。我们写下克氏符 $\displaystyle{\Gamma^{\rho}_{~\mu \nu}}$ 的变分

$$\tag{D.3}
\begin{align}
\delta \Gamma^{\rho}_{\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\delta g_{\sigma \nu}+\nabla_{\nu}\delta g_{\mu \sigma}-\nabla_{\sigma}\delta g_{\mu \nu}\right)
\end{align}
$$

于是克氏符的微分同胚变换成为

$$\tag{D.4}
\begin{align}
X_{\xi}\cdot \delta\Gamma^{\rho}_{\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\nabla_{\mu}\nabla_{\sigma}\xi_{\nu}+\nabla_{\nu}\nabla_{\sigma}\xi_{\mu}+\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-\nabla_{\sigma}\nabla_{\mu}\xi_{\nu}-\nabla_{\sigma}\nabla_{\nu}\xi_{\mu}\right) \\
 & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-R^{\lambda}_{\nu \mu \sigma}\xi_{\lambda}-R^{\lambda}_{\mu \nu \sigma}\xi_{\lambda}\right) \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-\frac{1}{2}g^{\rho \sigma}R^{\lambda}_{\nu \mu \sigma}\xi_{\lambda}-\frac{1}{2}g^{\rho \sigma}R^{\lambda}_{\mu \nu \sigma}\xi_{\lambda} \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}+\frac{1}{2}R^{\rho}_{~\mu \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \mu \lambda}\xi^{\lambda}
\end{align}
$$

根据Riemann张量的定义和(D.3)，得到其变分

$$\tag{D.4}
\begin{align}
\delta R^{\rho}_{~\sigma \mu \nu} & =\partial_{\mu}\delta\Gamma^{\rho}_{\nu \sigma}-\partial_{\nu}\delta\Gamma^{\rho}_{\sigma \mu}+\delta \Gamma^{\rho}_{\mu \lambda}\Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}-\delta \Gamma^{\rho}_{\nu \lambda}\Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma} \\
 & =\nabla_{\mu}\delta \Gamma^{\rho}_{\nu \sigma}-\nabla_{\nu}\delta \Gamma^{\rho}_{\sigma \mu}+\delta \Gamma^{\rho}_{\mu \lambda}\Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}-\delta \Gamma^{\rho}_{\nu \lambda}\Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma} \\
 & -\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\lambda}_{\mu \nu}\delta \Gamma^{\rho}_{\lambda \sigma}+\Gamma^{\lambda}_{\mu \sigma}\delta \Gamma^{\rho}_{\nu \lambda}+\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\lambda}_{\mu \nu}\delta \Gamma^{\rho}_{\lambda \sigma}-\Gamma^{\lambda}_{\nu \sigma}\delta \Gamma^{\rho}_{\mu \lambda} \\
 & =\nabla_{\mu}\delta \Gamma^{\rho}_{\nu \sigma}-\nabla_{\nu}\delta \Gamma^{\rho}_{\sigma \mu}
\end{align}
$$

从而得到Riemann张量的微分同胚变换

$$\tag{D.5}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\nabla_{\mu}(X_{\xi}\cdot\delta \Gamma^{\rho}_{\nu \sigma})-\nabla_{\nu}(X_{\xi}\cdot \delta \Gamma^{\rho}_{\mu \sigma}) \\
 & = \frac{1}{2}\left(\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho}-\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}-\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho}\right)+\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\nu \sigma \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \sigma \lambda}\nabla_{\mu}\xi^{\lambda} \\
 & +\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\sigma \nu \lambda}\nabla_{\mu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\mu \sigma \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\mu \sigma \lambda}\nabla_{\nu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\sigma \mu \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

其中有三个协变导数的项给出

$$\tag{D.6}
\begin{align}
\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho} & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}[\nabla_{\sigma},\nabla_{\nu}]\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}(R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}) \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}+R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda} \\
\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho} & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+[\nabla_{\nu},\nabla_{\mu}]\nabla_{\sigma}\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}-R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\lambda}_{~\sigma \mu \nu }\nabla_{\lambda}\xi^{\rho}\\
\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho} & =\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\nu}[\nabla_{\sigma},\nabla_{\mu}]\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}-R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\lambda}_{~\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+\nabla_{\nu}R^{\rho}_{~\lambda \sigma \mu}xo^{\rho}+R^{\rho}_{~\lambda \sigma \mu}\nabla_{\nu}\xi^{\rho}
\end{align}
$$

从而

$$\tag{D.7}
\begin{align}
 & \frac{1}{2}(\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho}-\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}-\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho}) \\
= & \frac{1}{2}\nabla_{\mu}R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\lambda \mu \sigma}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\lambda \sigma \mu}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda} \\
= & \frac{1}{2}\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \mu \sigma}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda}
\end{align}
$$

其余的项给出

$$\tag{D.8}
\begin{align}
 & \frac{1}{2}\nabla_{\mu}R^{\rho}_{~\nu \sigma \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \sigma \lambda}\nabla_{\mu}\xi^{\lambda} +\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\sigma \nu \lambda}\nabla_{\mu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\mu \sigma \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\mu \sigma \lambda}\nabla_{\nu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\sigma \mu \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
= & \frac{1}{2}g^{\rho \lambda}(\nabla_{\mu}R_{\lambda\nu \sigma \alpha}+\nabla_{\nu}R_{\mu \lambda \sigma \alpha})\xi^{\alpha}+\frac{1}{2}(\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}+\nabla_{\nu}R^{\rho}_{~\sigma \lambda \mu})\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda} \\
= & \frac{1}{2}\nabla^{\rho}R_{\mu \nu \sigma \alpha}\xi^{\alpha}+\frac{1}{2}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

加起来得到

$$\tag{D.9}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\frac{1}{2}\nabla^{\rho}R_{\mu \nu \sigma \alpha}\xi^{\alpha}+\frac{1}{2}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda} \\
 & +\frac{1}{2}\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \mu \sigma}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda} \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}-R^{\lambda}_{~\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{~\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

即有

$$\tag{D.10}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu}=\mathcal{L}_{\xi}R^{\rho}_{~\sigma \mu \nu}
\end{align}
$$

在(D.6)-(D.10)推导的过程中我们使用了第一和第二Bianchi恒等式

$$\tag{D.11}
\begin{align}
R^{\rho}_{~\sigma \mu \nu}+R^{\rho}_{~\mu \nu \sigma}+R^{\rho}_{~\nu \sigma \mu}=0 &  \\
\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}+\nabla_{\mu}R^{\rho}_{~\lambda \nu \sigma}+\nabla_{\nu}R^{\rho}_{~\lambda \sigma \mu}=0
\end{align}
$$

缩并指标得到Ricci张量的微分同胚变换

$$\tag{D.12}
\begin{align}
X_{\xi}\cdot \delta R_{\mu \nu} & =X_{\xi}\cdot \delta R^{\rho}_{~\mu \rho \nu} \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\mu \rho \nu}-R^{\lambda}_{~\mu \rho \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{~\lambda \rho \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\mu \lambda \nu}\nabla_{\rho}\xi^{\lambda}+R^{\rho}_{~\mu \rho \lambda}\nabla_{\nu}\xi^{\lambda} \\
 & =\xi^{\lambda}\nabla_{\lambda}R_{\mu \nu}+R_{\lambda \nu}\nabla_{\mu}\xi^{\lambda}+R_{\mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

即有

$$\tag{D.13}
\begin{align}
X_{\xi}\cdot \delta R_{\mu \nu} & =\mathcal{L}_{\xi}R_{\mu \nu}
\end{align}
$$

继续缩并得到Ricci标量的微分同胚变换

$$\tag{D.14}
\begin{align}
X_{\xi}\cdot \delta R & =g^{\mu \nu}X_{\xi}\cdot \delta R_{\mu \nu} -R_{\mu \nu}X_{\xi}\cdot \delta g^{\mu \nu}\\
 & =\xi^{\lambda}\nabla_{\lambda}R+2R_{\mu \lambda}\nabla^{\mu}\xi^{\lambda}-2R_{\mu \nu}\nabla^{\mu}\xi^{\nu}=\xi^{\lambda}\nabla_{\lambda}R
\end{align}
$$

依然有

$$\tag{D.15}
\begin{align}
X_{\xi}\cdot \delta R & =\mathcal{L}_{\xi}R
\end{align}
$$

考虑用 $\displaystyle{\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}}$ 与 $\displaystyle{X_{\xi}\cdot \delta\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}}$ 和 $\displaystyle{\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}}$ 缩并，得到 

$$\tag{D.16}
\begin{align}
\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}X_{\xi}\cdot \delta \varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\nabla_{\lambda}\xi^{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} \\
 & =-d!\nabla_{\lambda}\xi^{\lambda} \\
\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\nabla_{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}\xi^{\lambda}+\sum^{d-1}_{k=0}\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\varepsilon_{\mu_{0}\dots \lambda\dots \mu_{d-1}}\nabla_{\mu_{k}}\xi^{\lambda} \\
 & =\frac{1}{2}\nabla_{\lambda}(-d!)\xi^{\lambda}-(d-1)!\sum^{d-1}_{k=0}\delta^{\mu_{k}}_{\lambda}\nabla_{\mu_{k}}\xi^{\lambda} \\
 & =-d!\nabla_{\lambda}\xi^{\lambda}
\end{align}
$$

注意到所有的全反对称张量均正比于 $\displaystyle{\varepsilon_{\mu_{0}\dots \mu_{d-1}}}$，因此我们可以断言

$$\tag{D.17}
\begin{align}
X_{\xi}\cdot \delta \varepsilon_{\mu_{1}\dots \mu_{d-1}} & =\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\dots \mu_{d-1}}
\end{align}
$$

总之有

$$\tag{D.18}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\mathcal{L}_{\xi}R^{\rho}_{~\sigma \mu \nu}=\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{~\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
X_{\xi}\cdot \delta R_{\mu \nu} & =\mathcal{L}_{\xi}R_{\mu \nu}=\xi^{\lambda}\nabla_{\lambda}R_{\mu \nu}+R_{\lambda \nu}\nabla_{\mu}\xi^{\lambda}+R_{\mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
X_{\xi}\cdot \delta R & =\mathcal{L}_{\xi}R=\xi^{\lambda}\nabla_{\lambda}R \\
X_{\xi}\cdot \delta \varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}=\xi^{\lambda}\nabla_{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}
\end{align}
$$

## Cartan魔法公式

Cartan 魔法公式表明对于一个 $\displaystyle{k}$-形式 $\displaystyle{\omega=\frac{1}{k!}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}}$，有

$$\tag{D.19}
\begin{align}
\mathcal{L}_{\xi}\omega=(\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d})\omega
\end{align}
$$

其中 $\displaystyle{i_{\xi}}$ 表示和矢量 $\displaystyle{\xi}$ 缩并，即

$$\tag{D.20}
\begin{align}
i_{\xi}\omega=\frac{1}{(k-1)!}\xi^{\rho}\omega_{\rho \mu_{1}\dots \mu_{k-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k-1}}
\end{align}
$$

下面将给出一个直接的证明

$$\tag{D.21}
\begin{align}
\mathcal{L}_{\xi}\omega & =\frac{1}{k!}\mathcal{L}_{\xi}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & =\frac{1}{k!}\xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & +\frac{1}{k!}\sum^{k}_{m=1}(-1)^{m}\omega_{\mu_{1}\dots \mu_{m-1}\rho\mu_{m+1}\dots \mu_{k}}\nabla_{\mu_{m}}\xi^{\rho}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

另一方面

$$\tag{D.22}
\begin{align}
i_{\xi}\mathrm{d}\omega & =\frac{1}{k!}i_{\xi}\mathrm{d}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & =\frac{1}{k!}\xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & +\frac{1}{k!}\sum^{k}_{m=1}(-1)^{m}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{m-1}\rho \mu_{m+1}\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

$$\tag{D.23}
\begin{align}
\mathrm{d}i_{\xi}\omega & =\frac{1}{k!}\mathrm{d}i_{\xi}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & =\frac{1}{k!}\sum^{k}_{m=1}(-1)^{m-1}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k-1}\rho \mu_{k+1}\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge \dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & +\frac{1}{k!}\sum^{k}_{m=1}\omega_{\mu_{1}\dots \mu_{m-1}\rho \mu_{m+1}\dots \mu_{k}}\nabla_{\mu_{m}}\xi^{\rho}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

相加得到

$$\tag{D.24}
\begin{align}
(\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d})\omega & =\frac{1}{k!}\xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \mathrm{d}x^{\mu_{k}}+\frac{1}{k!}\sum^{k}_{m=1}\omega_{\mu_{1}\dots \mu_{m-1}\rho \mu_{m+1}\dots \mu_{k}}\nabla_{\mu_{m}}\xi^{\rho}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & =\mathcal{L}_{\xi}\omega
\end{align}
$$

证毕。

## 体中的拉氏量

对体内拉氏量做微分同胚变换，得到

$$\tag{D.25}
\begin{align}
\int_{M}X_{\xi}\cdot \delta \mathbf{L} & =\int_{M}\mathcal{L}_{\xi}\mathbf{L} \\
 & =\int_{M}(\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d})\mathbf{L} \\
 & =\int_{M}\mathrm{d}(i_{\xi}\mathbf{L})=\int_{M}\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}\xi \cdot \mathbf{L}+\int_{\Gamma}\xi \cdot \mathbf{L}
\end{align}
$$

其中第一行注意到构成 $\displaystyle{\mathbf{L}}$ 的所有量在 $\displaystyle{X_{\xi}}$ 的作用下都等于 $\displaystyle{\mathcal{L}_{\xi}}$ 的作用，因此根据Leibniz律有 $\displaystyle{X_{\xi}\cdot \delta \mathbf{L}=\mathcal{L}_{\xi}\mathbf{L}}$；第二行使用Cartan魔法公式；第三行注意到 $\displaystyle{\mathbf{L}}$ 是流形 $\displaystyle{M}$ 上的顶形式，因此 $\displaystyle{\mathrm{d}\mathbf{L}=0}$。因此()是合理的。
