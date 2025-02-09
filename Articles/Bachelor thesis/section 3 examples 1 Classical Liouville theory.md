## 经典Liouville理论

我们首先分析经典Liouville理论的共形对称性，这为反常项 $\displaystyle{\beta_{\xi}}$ 提供了一个例子。我们考虑以下作用量

$$\tag{3.1}
\begin{align}
S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)
\end{align}
$$

其中 $\displaystyle{\phi}$ 是动力学场，$\displaystyle{g_{\mu \nu}}$ 是背景场；系统被定义在被初始柯西面 $\displaystyle{\Sigma_{i}}$ 和最终柯西面 $\displaystyle{\Sigma_{f}}$ 包围的时空区域 $\displaystyle{M}$ 中。并且我们通过在空间无限远处选取合理的降落行为的方式，忽略所有的空间边界效应。

我们将共形对称性表达为位形空间 $\displaystyle{\mathcal{C}}$ 中的矢量场

$$\tag{3.2}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{2}x\left( \xi^{\mu}\nabla_{\mu}\phi+\frac{1}{\gamma}\nabla_{\mu}\xi^{\mu} \right) \frac{\delta}{\delta \phi}
\end{align}
$$

其中 $\displaystyle{\xi^{\mu}}$ 为共形Killing矢量，满足

$$\tag{3.3}
\begin{align}
\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho} & =0
\end{align}
$$

我们再给出(3.3)的两个推论，以便下文计算方便

$$\tag{3.4}
\begin{align}
\nabla^{\nu}\nabla_{\nu}\xi_{\mu}+\frac{1}{2}R\xi_{\mu} & =0 \\
\nabla^{\nu}\nabla_{\nu}\nabla_{\mu}\xi^{\mu}+\xi^{\mu}\nabla_{\mu}R+R\nabla_{\mu}\xi^{\mu} & =0
\end{align}
$$

其中将 $\displaystyle{\nabla^{\nu}}$ 作用于(3.3)即得到第一式；将 $\displaystyle{\nabla^{\mu}}$ 作用于第一式即得到第二式。其中我们使用

$$\tag{3.5}
\begin{align}
R_{\mu \nu} & =\frac{1}{2}Rg_{\mu \nu}
\end{align}
$$

这对一般的二维时空成立。

首先我们计算作用量的变分

$$\tag{3.6}
\begin{align}
\delta S & =\int_{M}\mathrm{d}^{2}\sqrt{ -g } \frac{1}{2\pi}\left(\nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi}\right)\delta \phi \\
 & +\int_{\Sigma_{f}}\mathrm{d}x\sqrt{ \sigma } \frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi-\int_{\Sigma_{f}}\mathrm{d}x\sqrt{ \sigma } \frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi
\end{align}
$$

其中 $\displaystyle{\tau^{\mu}}$ 是未来指向的柯西面的法矢量。我们可以读出运动方程

$$\tag{3.7}
\begin{align}
E & \equiv \nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi}
\end{align}
$$

以及辛势

$$\tag{3.8}
\begin{align}
\theta=\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma } \frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi
\end{align}
$$

我们继续计算作用量(3.1)在共形对称性(3.2)下的变换

$$\tag{3.9}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho})\right. \\
 & +\frac{1}{2\pi \gamma}\phi(\nabla^{\mu}\nabla_{\mu}\nabla_{\nu}\xi^{\nu}+\xi^{\mu}\nabla_{\mu}R+R\nabla_{\mu}\xi^{\mu})-\frac{1}{2\pi \gamma^{2}}R\nabla_{\mu}\xi^{\mu} \\
 & \left.+\nabla_{\mu}\left(-\frac{1}{4\pi}\xi^{\mu}\nabla_{\nu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla_{\nu}\nabla^{\nu}\xi^{\mu}-\frac{1}{2\pi \gamma}R\xi^{\mu}\phi-\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right)\right) \\
 & =\int_{\Sigma_{f}}\mathrm{d}x\sqrt{ \sigma }\tau_{\mu}\left(\frac{1}{4\pi}\xi^{\mu}\nabla_{\nu}\phi \nabla^{\nu}\phi+\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla_{\nu}\xi^{\nu}+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right) \\
 & -\int_{\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau_{\mu}\left(\frac{1}{4\pi}\xi^{\mu}\nabla_{\nu}\phi \nabla^{\nu}\phi+\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla_{\nu}\xi^{\nu}+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right) \\
 & +\int_{M}\mathrm{d}^{2}x\sqrt{ -g } \frac{-1}{2\pi \gamma^{2}}R\nabla_{\mu}\xi^{\mu}
\end{align}
$$

在推导过程中，我们使用了(3.3)和(3.4)。我们注意到体内项非零且与位形无关，即存在非零的反常项。我们读出

$$\tag{3.10}
\begin{align}
\alpha_{\xi} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau_{\mu}\left(\frac{1}{4\pi}\xi^{\mu}\nabla_{\nu}\phi \nabla^{\nu}\phi+\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla_{\nu}\xi^{\nu}+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right) \\
\beta_{\xi} & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g } \frac{-1}{2\pi \gamma^{2}}R\nabla_{\mu}\xi^{\mu}
\end{align}
$$

然后我们计算对应于共形对称性(3.2)的Noether荷。根据(2.12)，我们有

$$\tag{3.11}
\begin{align}
H_{\xi} & =\int_{\Sigma}\mathrm{d}\sqrt{ \sigma }\left(\frac{1}{2\pi}\tau^{\mu}\xi^{\nu}\nabla_{\mu}\phi \nabla_{\nu}\phi+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla_{\mu}\phi \nabla_{\nu}\xi^{\nu}-\frac{1}{4\pi}\tau_{\mu}\xi^{\mu}\nabla_{\nu}\phi \nabla^{\nu}\phi\right. \\
 & \left.-\frac{1}{2\pi \gamma}\phi \tau^{\mu}\nabla_{\mu}\nabla_{\nu}\xi^{\nu}-\frac{1}{2\pi \gamma}\tau_{\mu}\xi^{\mu}R\phi-\frac{\mu}{4\pi \gamma^{2}}\tau_{\mu}\xi^{\mu}e^{\gamma \phi}\right) \\
 & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\left(-\frac{1}{2\pi}\tau^{\mu}\xi^{\nu}\left(-\nabla_{\mu}\phi \nabla_{\nu}\phi+\frac{1}{2}g_{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\phi-\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}\phi+\frac{\mu}{2\gamma^{2}}g_{\mu \nu}e^{\gamma \phi}\right)\right. \\
 & -\frac{1}{2\pi \gamma}\tau^{\mu}\phi\left( \nabla_{\nu}\nabla^{\nu}\xi_{\mu}+\frac{1}{2}R\xi_{\mu} \right)+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho}) \\
 & \left.+\tau_{\mu}\nabla_{\nu}\left(\frac{1}{2\pi \gamma}\phi(-\nabla^{\mu}\xi^{\nu}+\nabla^{\nu}\xi^{\mu})+\frac{1}{\pi \gamma}(\nabla^{\mu}\phi \xi^{\nu}-\nabla^{\nu}\phi \xi^{\mu})\right)\right) \\
 & =\int_{M}\mathrm{d}x\sqrt{ \sigma } \frac{-1}{2\pi}\tau^{\mu}\xi^{\nu}T_{\mu \nu}
\end{align}
$$

其中 $\displaystyle{T_{\mu \nu}}$ 为能量动量张量，且有

$$\tag{3.12}
\begin{align}
T_{\mu \nu} & =-\nabla_{\mu}\phi \nabla_{\nu}\phi+\frac{1}{2}g_{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\phi-\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}\phi+\frac{\mu}{2\gamma^{2}}g_{\mu \nu}e^{\gamma \phi}
\end{align}
$$

在推导(3.11)的过程中，我们使用了(3.3)、(3.4)和(3.6)，以及对于一个反对称张量 $\displaystyle{S^{\mu \nu}}$，$\displaystyle{\tau_{\mu}\nabla_{\nu}S^{\mu \nu}}$ 可以写成柯西面 $\displaystyle{\Sigma}$ 上的全导数

$$\tag{3.13}
\begin{align}
\tau_{\mu}\nabla_{\nu}S^{\mu \nu} & =\tau_{\mu}\nabla_{\nu}\left[(\sigma^{\mu}_{\rho}-\tau^{\mu}\tau_{\rho})(\sigma^{\nu}_{\sigma}-\tau^{\nu}\tau_{\sigma})S^{\rho \sigma}\right] \\
 & =\tau_{\mu}\nabla_{\nu}(\sigma^{\mu}_{\rho}\sigma^{\nu}_{\sigma}S^{\rho \sigma})-\tau_{\mu}\nabla_{\nu}(\sigma^{\mu}_{\rho}\tau^{\nu}\tau_{\sigma}S^{\rho \sigma})-\tau_{\mu}\nabla_{\nu}(\tau^{\mu}\tau_{\rho}\sigma^{\nu}_{\sigma}S^{\rho \sigma}) \\
 & =-\nabla_{\nu}\tau_{\mu}\sigma^{\mu}_{\rho}\sigma^{\nu}_{\sigma}S^{\rho \sigma}-\tau_{\mu}\tau^{\nu}\nabla_{\nu}(\sigma^{\mu}_{\rho}\tau_{\sigma}S^{\rho \sigma})+\nabla_{\nu}(\tau_{\rho}\sigma^{\nu}_{\sigma}S^{\rho \sigma}) \\
 & =-K_{\mu \nu}S^{\mu \nu}-\tau_{\mu}\tau^{\nu}\nabla_{\nu}(\sigma^{\mu}_{\rho}\tau_{\sigma}S^{\rho \sigma})-\nabla_{\nu}(\sigma^{\mu}_{\rho}\tau_{\sigma}S^{\rho \sigma}) \\
 & =-\sigma^{\nu}_{\mu}\nabla_{\nu}(\sigma^{\mu}_{\rho}\tau_{\sigma}S^{\rho \sigma})=-D_{\mu}(\sigma^{\mu}_{\rho}\tau_{\sigma}S^{\rho \sigma})
\end{align}
$$

我们指出能量动量张量 $\displaystyle{T_{\mu \nu}}$ 满足

$$\tag{3.14}
\begin{align}
\nabla^{\mu}T_{\mu \nu}|_{\tilde{\mathcal{P}}} & =0 \\
T_{\mu \nu} & =T_{\nu \mu} \\
g^{\mu \nu}T_{\mu \nu}|_{\tilde{\mathcal{P}}} & =-\frac{2}{\gamma^{2}}R
\end{align}
$$

因此我们可以计算Noether荷(3.11)的时间依赖关系

$$\tag{3.15}
\begin{align}
H_{\xi}|_{\Sigma_{f},\tilde{\mathcal{P}}}-H_{\xi}|_{\Sigma_{i},\tilde{\mathcal{P}}} & =-\frac{1}{2\pi}\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\xi^{\nu}T_{\mu \nu}|_{\tilde{\mathcal{P}}} \\
 & =\frac{1}{2\pi}\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\nabla^{\mu}(\xi^{\nu}T_{\mu \nu})|_{\tilde{\mathcal{P}}} \\
 & =\frac{1}{2\pi}\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\nabla^{\mu}\xi^{\nu}T_{\mu \nu}|_{\tilde{\mathcal{P}}} \\
 & =\frac{1}{4\pi}\int_{M}\mathrm{d}^{2}x\sqrt{ -g }[(\nabla^{\mu}\xi^{\nu}+\nabla^{\nu}\xi^{\mu}-g^{\mu \nu}\nabla_{\rho}\xi^{\rho})T_{\mu \nu}+g^{\mu \nu}T_{\mu \nu}\nabla_{\rho}\xi^{\rho}]|_{\tilde{\mathcal{P}}} \\
 & =-\frac{1}{2\pi \gamma^{2}}\int_{M}\mathrm{d}^{2}x\sqrt{ -g }R\nabla_{\mu}\xi^{\mu}=\beta_{\xi}|_{M}
\end{align}
$$

这与(2.29)一致。我们再将共形对称性(3.2)作用到运动方程(3.7)上

$$\tag{3.16}
\begin{align}
X_{\xi}\cdot \delta E & =\xi^{\mu}\nabla_{\mu}\left( \nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \right)+\nabla_{\mu}\xi^{\mu}\left( \nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \right) \\
 & +\nabla^{\mu}\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho})+\nabla^{\mu}\phi\left( \nabla_{\nu}\nabla^{\nu}\xi_{\mu}+\frac{1}{2}R\xi_{\mu} \right) \\
 & +\frac{1}{\gamma}(\nabla_{\nu}\nabla^{\nu}\nabla_{\mu}\xi^{\mu}+\xi^{\mu}\nabla_{\mu}R+R\nabla_{\mu}\xi^{\mu}) \\
\implies X_{\xi}\cdot \delta E|_{\tilde{\mathcal{P}}} & =0
\end{align}
$$

在推导(3.16)的过程中我们使用了(3.3)、(3.4)、(3.5)、(3.6)以及运动方程(3.7)。

---

最后我们考虑Noether荷间的Poisson括号。我们考虑两个Noether荷 $\displaystyle{H_{\xi},H_{\zeta}}$ ，对应的无穷小变换参数 $\displaystyle{\xi,\zeta}$ 满足共形Killing方程

$$\tag{3.17}
\begin{align}
\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho} & =0 \\
\nabla_{\mu}\zeta_{\nu}+\nabla_{\nu}\zeta_{\mu}-g_{\mu \nu}\nabla_{\rho}\zeta^{\rho} & =0
\end{align}
$$

根据(2.2)和(2.3)，有

$$\tag{3.18}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\tilde{\mathcal{P}}} & =-X_{\xi}\cdot \delta H_{\zeta}|_{\tilde{\mathcal{P}}}=X_{\zeta}\cdot \delta H_{\xi}|_{\tilde{\mathcal{P}}}=X_{\xi}\cdot X_{\zeta}\cdot \omega|_{\tilde{\mathcal{P}}}
\end{align}
$$

我们根据(3.18)计算 $\displaystyle{\left\{H_{\xi},H_{\zeta}\right\}|_{\tilde{\mathcal{P}}}}$。

$$\tag{3.19}
\begin{align}
X_{\zeta}\cdot \delta H_{\xi}|_{\tilde{\mathcal{P}}} & =X_{\zeta}\cdot \delta \int_{\Sigma}\mathrm{d}x\sqrt{ \sigma } \frac{-1}{2\pi}\tau^{\mu}\xi^{\nu}T_{\mu \nu} \\
 & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma } \frac{-1}{2\pi}\tau^{\mu}\xi^{\nu}(X_{\zeta}\cdot\delta T_{\mu \nu})
\end{align}
$$

now we will first consider $\displaystyle{X_{\zeta}\cdot \delta T_{\mu \nu}}$

$$\tag{3.20}
\begin{align}
X_{\xi}\cdot \delta T_{\mu \nu} & =X_{\xi}\cdot \delta\left( -\nabla_{\mu}\phi \nabla_{\nu}\phi+\frac{1}{2}g_{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\phi-\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}\phi+\frac{\mu}{2\gamma^{2}}g_{\mu \nu}e^{\gamma \phi} \right) \\
 & =X_{\xi}\cdot\left(-\nabla_{\mu}\delta \phi \nabla_{\nu}\phi-\nabla_{\mu}\phi \nabla_{\nu}\delta \phi+g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\delta \phi+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\delta \phi-\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}\delta \phi+\frac{\mu}{2\gamma}g_{\mu \nu}e^{\gamma \phi}\delta \phi\right) \\
 & =-\nabla_{\mu}(X_{\xi}\cdot \delta \phi)\nabla_{\nu}\phi-\nabla_{\mu}\phi \nabla_{\nu}(X_{\xi}\cdot \delta \phi)+g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}(X_{\xi}\cdot \delta \phi)+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}(X_{\xi}\cdot \delta \phi) \\
 & -\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}(X_{\xi}\cdot \delta \phi)+\frac{\mu}{2\gamma}g_{\mu \nu}e^{\gamma \phi}(X_{\xi}\cdot \delta \phi) \\
 & =-\nabla_{\mu}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{1}{\gamma}\nabla_{\rho}\xi^{\rho}\right)\nabla_{\nu}\phi-\nabla_{\mu}\phi \nabla_{\nu}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{1}{\gamma}\nabla_{\rho}\xi^{\rho} \right)+g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\left( \xi^{\sigma}\nabla_{\sigma}\phi+\frac{1}{\gamma}\nabla_{\sigma}\xi^{\sigma} \right) \\
 & +\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{1}{\gamma}\nabla_{\rho}\xi^{\rho} \right)-\frac{2}{\gamma}g_{\mu \nu}\nabla^{2}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{1}{\gamma}\nabla_{\rho}\xi^{\rho} \right)+\frac{\mu}{2\gamma}g_{\mu \nu}e^{\gamma \phi}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{1}{\gamma}\nabla_{\rho}\xi^{\rho} \right) \\
 & =\xi^{\rho}\nabla_{\rho}T_{\mu \nu}+\nabla_{\mu}\xi^{\rho}T_{\rho \nu}+\nabla_{\nu}\xi^{\rho}T_{\mu \rho}-\frac{1}{\gamma}\nabla_{\mu}\nabla_{\rho}\xi^{\rho}\nabla_{\nu}\phi-\frac{1}{\gamma}\nabla_{\mu}\phi \nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\nabla_{\sigma}\xi^{\sigma} \\
 & +\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}\nabla_{\mu}\nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}R\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}g_{\mu \nu}\xi^{\rho}\nabla_{\rho}R+\frac{2}{\gamma^{2}}g_{\mu \nu}R\nabla_{\rho}\xi^{\rho}
\end{align}
$$

here we use....then

$$\tag{3.20}
\begin{align}
X_{\zeta}\cdot \delta H_{\xi}|_{\tilde{\mathcal{P}}} & = \int_{\Sigma}\sqrt{ \sigma } \frac{1}{2\pi}\tau^{\mu}\zeta^{\nu}\left(\xi^{\rho}\nabla_{\rho}T_{\mu \nu}+\nabla_{\mu}\xi^{\rho}T_{\rho \nu}+\nabla_{\nu}\xi^{\rho}T_{\mu \rho}-\frac{1}{\gamma}\nabla_{\mu}\nabla_{\rho}\xi^{\rho}\nabla_{\nu}\phi-\frac{1}{\gamma}\nabla_{\mu}\phi \nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\nabla_{\sigma}\xi^{\sigma}\right.\\
 & \left.+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}\nabla_{\mu}\nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}R\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}g_{\mu \nu}\xi^{\rho}\nabla_{\rho}R+\frac{2}{\gamma^{2}}g_{\mu \nu}R\nabla_{\rho}\xi^{\rho}\right)
\end{align}
$$

$$\tag{3.21}
\begin{align}
-\frac{1}{\gamma}\nabla_{\mu}\nabla_{\rho}\xi^{\rho}\nabla_{\nu}\phi-\frac{1}{\gamma}\nabla_{\mu}\phi \nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\nabla_{\sigma}\xi^{\sigma} \\
+\frac{2}{\gamma}\nabla_{\mu}\nabla_{\nu}\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}\nabla_{\mu}\nabla_{\nu}\nabla_{\rho}\xi^{\rho}+\frac{1}{\gamma}g_{\mu \nu}R\xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma^{2}}g_{\mu \nu}\xi^{\rho}\nabla_{\rho}R+\frac{2}{\gamma^{2}}g_{\mu \nu}R\nabla_{\rho}\xi^{\rho}
\end{align}
$$

$$\tag{3.22}
\begin{align}
\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho} & =0 \\
\nabla_{\nu}\nabla^{\nu}\xi_{\mu}-\frac{1}{2}R\xi_{\mu} & = 0 \\
\nabla_{\nu}\nabla^{\nu}\nabla_{\mu}\xi^{\mu}+\xi^{\mu}\nabla_{\mu}R+R\nabla_{\mu}\xi^{\mu} & =0
\end{align}
$$

