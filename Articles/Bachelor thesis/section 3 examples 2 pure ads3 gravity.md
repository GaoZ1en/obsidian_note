### 理论的定义

首先我们确定位形空间 $\displaystyle{\mathcal{C}}$。考虑具有拓扑 $\displaystyle{D_{2}\times \mathbb{R}}$ 的，只有渐进边界的系统。位形空间 $\displaystyle{\mathcal{C}}$ 即为满足渐进边界条件（下面将会给出）的所有位形。

然后我们确定渐进边界条件。我们在接近边界处引入局部坐标系 $\displaystyle{(z,x^{a})}$，其中 $\displaystyle{z\in(0,\#)}$ 为轴向坐标， $\displaystyle{x^{a}}$ 为边界坐标。我们可以显式地给出渐进边界条件

$$\tag{3.2.1}
\begin{align}
g_{zz} & =\frac{1}{z^{2}}+\mathcal{O}(z^{0}) \\
g_{za} & =\mathcal{O}\left( \frac{1}{z} \right) \\
g_{ab} & =\frac{1}{z^{2}}g^{(0)}_{ab}+\mathcal{O}(z^{0})
\end{align}
$$

其中边界度规 $\displaystyle{g^{(0)}_{ab}}$ 只依赖于边界坐标 $\displaystyle{x^{a}}$，且取固定值。也就是说 $\displaystyle{g^{(0)}_{ab}}$ 在变分下保持不变。

现在我们写下作用量

$$\tag{3.2.2}
\begin{align}
S_{\varepsilon} & =\frac{1}{16\pi G}\int_{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\frac{1}{8\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-1)  \\
 & +\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }\log z(\tilde{R}-2z\gamma^{ab}D_{a}g_{zb})\\
S & =\lim_{ \varepsilon \to 0 } S_{\varepsilon}
\end{align}
$$

其中流形 $\displaystyle{M}$ 的边界 $\displaystyle{\partial M=\Sigma_{f}\cap \Sigma_{i}\cap \Gamma}$，其中 $\displaystyle{\Sigma_{f}}$ 和 $\displaystyle{\Sigma_{i}}$ 分别为最终和最初Cauchy面，$\displaystyle{\Gamma}$ 为渐进类空边界。$\displaystyle{M_{\varepsilon}}$ 为被 $\displaystyle{\Sigma_{f}}$、$\displaystyle{\Sigma_{i}}$以及截断面 $\displaystyle{z=\varepsilon}$围起来的体内区域，$\displaystyle{\Gamma_{\varepsilon}}$ 为 $\displaystyle{\partial M_{\varepsilon}}$ 与截断面 $\displaystyle{z=\varepsilon}$ 的交。我们将流形 $\displaystyle{M}$、截断面 $\displaystyle{\Gamma_{\varepsilon}}$ 和渐进类空边界 $\displaystyle{\Gamma}$ 上各几何量总结为下表

| 流形                                    | 度规                                | 协变导数                     | 联络                              | 曲率                         | 体元                                                                     |
| ------------------------------------- | --------------------------------- | ------------------------ | ------------------------------- | -------------------------- | ---------------------------------------------------------------------- |
| $\displaystyle{M}$                    | $\displaystyle{g_{\mu \nu}}$      | $\displaystyle{\nabla}$  | $\displaystyle{\Gamma}$         | $\displaystyle{R}$         | $\displaystyle{\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}}$                   |
| $\displaystyle{\Gamma_{\varepsilon}}$ | $\displaystyle{\gamma_{\mu \nu}}$ | $\displaystyle{D}$       | $\displaystyle{\tilde{\Gamma}}$ | $\displaystyle{\tilde{R}}$ | $\displaystyle{\varepsilon_{\mu_{9}\mu_{1}}^{(\Gamma_{\varepsilon})}}$ |
| $\displaystyle{\Gamma}$               | $\displaystyle{g^{(0)}_{ab}}$     | $\displaystyle{D^{(0)}}$ | $\displaystyle{\Gamma^{(0)}}$   | $\displaystyle{R^{(0)}}$   | $\displaystyle{\varepsilon_{ab}^{(0)}}$                                |
表1：流形 $\displaystyle{M}$、截断面 $\displaystyle{\Gamma_{\varepsilon}}$ 和渐进类空边界 $\displaystyle{\Gamma}$ 上各几何量的记号

```tikz
\documentclass{standalone}
\usepackage{tikz}

\begin{document}
\begin{tikzpicture}[scale=0.8]
  % 绘制底面椭圆
  \draw (0,0) ellipse (2cm and 0.5cm);
  % 绘制顶面椭圆（向右上方偏移）
  \draw (1,2) ellipse (2cm and 0.5cm);
  % 绘制左侧连接曲线
  \draw (-2,0) to[out=80, in=-80] (-1,2);
  % 绘制右侧连接曲线
  \draw (2,0) to[out=80, in=-80] (3,2);
  % 标注顶面A_A
  \node[above] at (1,2) {$A_A$};
  % 标注底面B_B
  \node[below] at (0,0) {$B_B$};
  % 标注底面边界C_C和D_D
  \node[left=2pt] at (-2,0) {$C_C$};
  \node[right=2pt] at (2,0) {$D_D$};
  % 标注内部M
  \node at (0.5,1) {$M$};
  % 标注侧面Γ
  \draw (-2,0) to[out=80, in=-80] node[midway, left] {$\Gamma$} (-1,2);
\end{tikzpicture}
\end{document}
```
图1：$\displaystyle{\mathrm{AdS}_{3}}$ 时空的2+1分解

选取各子流形的定向使得以下Stokes定理取以下形式

$$\tag{3.2.3}
\begin{align}
\int_{M}\mathrm{d}\omega & =\int_{\Gamma}\omega+\int_{\Sigma_{f}}\omega-\int_{\Sigma_{i}}\omega \\
\int_{\Sigma_{f/i}}\mathrm{d}\omega & =\int_{\partial \Sigma_{f/i}}\omega \\
\int_{\Gamma}\mathrm{d}\omega & =-\int_{\partial \Sigma_{f}}\omega+\int_{\partial \Sigma_{i}}\omega
\end{align}
$$

$\displaystyle{M}$ 上的体元 $\displaystyle{\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}}$ 和截断面 $\displaystyle{\Gamma_{z}}$ 上的体元 $\displaystyle{\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}}$ 有以下联系

$$\tag{3.2.4}
\begin{align}
\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}=n^{\mu_{2}}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}
\end{align}
$$


如附录C中所述，作用量(3.2.2)是有限的，因此(3.2.2)是良定义的。为了下面讨论的方便，我们将(3.2.2)表达为等价的形式

$$\tag{3.2.5}
\begin{align}
S & =\lim_{ \varepsilon \to 0 } \left(\int_{M_{\varepsilon}}\mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell\right) \\
\mathbf{L} & =\frac{1}{16\pi G}(R+2) \cdot\frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\ell|_{\Gamma_{z}} & =\frac{1}{16\pi G}(2K-2+\log z\tilde{R}-2z\log z\gamma^{ab}D_{a}g_{zb})\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}|_{\Gamma_{\varepsilon}}
\end{align}
$$


进一步将 $\displaystyle{\ell}$ 分解为

$$\tag{3.2.6}
\begin{align}
\ell|_{\Gamma_{z}} & =(\ell_{1}+\ell_{2})|_{\Gamma_{z}} \\
\ell_{1}|_{\Gamma_{z}} & =\frac{1}{8\pi G}(K-1)\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}|_{\Gamma_{z}} \\
\ell_{2}|_{\Gamma_{z}} & =\frac{1}{16\pi G}\log z(\tilde{R}-2z\gamma^{ab}D_{a}g_{zb})\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$
其中 $\displaystyle{|_{\Gamma_{z}}}$ 表示拉回到 $\displaystyle{\Gamma_{z}}$。

### 协变相空间方法

对拉氏量密度(3.2.5)取变分，有

$$\tag{3.2.7}
\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta \\
(\Theta+\delta \ell)|_{\Gamma_{z}} & =(\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\mathbf{C})|_{\Gamma_{z}}
\end{align}
$$

其中

$$\tag{3.2.8}
\begin{align}
\mathbf{E}^{\mu \nu} &  =\frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}+g^{\mu \nu} \right)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\Theta & =\frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})\cdot \frac{1}{2!}\varepsilon_{\rho \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\mathbf{F}^{\mu \nu}|_{\Gamma_{z}} & =\frac{1}{16\pi G}(-K^{\mu \nu}+K\gamma^{\mu \nu}-\gamma^{\mu \nu}) \cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}|_{\Gamma_{z}} \\
\mathbf{C}|_{\Gamma_{z}} & =\left[-\frac{1}{16\pi G}\gamma^{\mu \nu}n^{\rho}\delta g_{\nu \rho}\varepsilon^{(\Gamma_{z})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \right. \\
 & +\frac{1}{16\pi G}\log z(\gamma^{ab}\gamma^{cd}D_{d}\delta \gamma_{bc}-\gamma^{ad}\gamma^{bc}D_{d}\delta \gamma_{bc})\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & \left.+\frac{1}{16\pi G}z\log z(-2\gamma^{ab}\delta g_{zb}+2\gamma^{ab}\gamma^{cd}g_{zd}\delta \gamma_{bc}-\gamma^{ab}\gamma^{cd}g_{zb}\delta \gamma_{cd})\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right]|_{\Gamma_{z}}
\end{align}
$$

在推导的过程中我们使用了[cite]

$$\tag{3.2.9}
\begin{align}
\delta \varepsilon_{\mu_{0}\mu_{1}\mu_{2}} & =\frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}} \\
\delta \varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}} & =\frac{1}{2}\gamma^{\mu \nu}\delta g_{\mu \nu}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}} \\
\delta \Gamma^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\nabla_{\mu}\delta g_{\sigma \nu}+\nabla_{\nu}\delta g_{\mu \sigma}-\nabla_{\sigma}\delta g_{\mu \nu}) \\
\delta R & =-R^{\mu \nu}\delta g_{\mu \nu}+\nabla^{\mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla_{\rho}\nabla^{\rho}\delta g_{\mu \nu} \\
\delta n_{\mu} & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma} \\
\delta K & =-\frac{1}{2}K^{\mu \nu}\delta g_{\mu \nu}+\frac{1}{2}g^{\mu \nu}n^{\rho}\nabla_{\rho}\delta g_{\mu \nu}-\frac{1}{2}n^{\mu}\nabla^{\nu}\delta g_{\mu \nu}-\frac{1}{2}D_{\mu}(\gamma^{\mu \nu}n^{\rho}\delta g_{\nu \rho})
\end{align}
$$

以及

$$\tag{3.2.10}
\begin{align}
\tilde{R}_{\mu \nu} & =\frac{1}{2}\tilde{R}\gamma_{\mu \nu}
\end{align}
$$

我们进一步将 $\displaystyle{\mathbf{C}}$ 分解为

$$\tag{3.2.11}
\begin{align}
\mathbf{C}|_{\Gamma_{z}} & =(\mathbf{C}_{1}+\mathbf{C}_{2})|_{\Gamma_{z}} \\
\mathbf{C}_{1}|_{\Gamma_{z}} & =-\frac{1}{16\pi G}\gamma^{\mu \nu}n^{\rho}\delta g_{\nu \rho}\varepsilon^{(\Gamma_{z})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}|_{\Gamma_{z}} \\
\mathbf{C}_{2}|_{\Gamma_{z}} & =\left[ \frac{1}{16\pi G}\log z(\gamma^{ab}\gamma^{cd}D_{d}\delta \gamma_{bc}-\gamma^{ad}\gamma^{bc}D_{d}\delta \gamma_{bc})\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right. \\
 & \left.+\frac{1}{16\pi G}z\log z(-2\gamma^{ab}\delta g_{zb}+2\gamma^{ab}\gamma^{cd}g_{zd}\delta \gamma_{bc}-\gamma^{ab}\gamma^{cd}g_{zb}\delta \gamma_{cd})\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right]
\end{align}
$$

从而有

$$\tag{3.2.12}
\begin{align}
(\Theta+\delta \ell_{1})|_{\Gamma_{z}} & =(\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\mathbf{C}_{1})|_{\Gamma_{z}} \\
\delta \ell_{2}|_{\Gamma_{z}} & =\mathrm{d}\mathbf{C}_{2}|_{\Gamma_{z}}
\end{align}
$$

为了下文讨论方便，引入

$$\tag{3.2.13}
\begin{align}
\tilde{E}_{\mu \nu} & =\frac{1}{16\pi G}\left( -R_{\mu \nu}+\frac{1}{2}Rg_{\mu \nu}+g_{\mu \nu} \right) \\
T_{\mu \nu} & =\frac{1}{4G}(K_{\mu \nu}-K\gamma_{\mu \nu}+\gamma_{\mu \nu})
\end{align}
$$

从而我们可以将 $\displaystyle{\mathbf{E}^{\mu \nu}}$ 和 $\displaystyle{\mathbf{F}^{\mu \nu}}$ 重写为

$$\tag{3.2.14}
\begin{align}
\mathbf{E}^{\mu \nu} & =\tilde{E}^{\mu \nu}\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\mathbf{F}^{\mu \nu}|_{\Gamma} & =-\frac{1}{4\pi}T^{\mu \nu}\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

根据(3.2.8)，我们可以将作用量(3.2.5)的变分写为

$$\tag{3.2.15}
\begin{align}
\delta S & =\lim_{ \varepsilon \to 0 }\left(  \int_{M_{\varepsilon}} \mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta \gamma_{\mu \nu}+\left( \int_{\Sigma_{f,\varepsilon}}\Theta-\int_{\partial \Sigma_{f,\varepsilon}}\mathbf{C} \right)-\left(\int_{\Sigma_{i,\varepsilon}}\Theta-\int_{\partial \Sigma_{i,\varepsilon}}\mathbf{C}\right)\right)
\end{align}
$$

在附录C.2中我们展示了(3.2.15)中第一项和第三、四项的有限性，以及第二项等于0。因此该变分是良定义的。因此我们可以将(3.2.15)整理成

$$\tag{3.2.16}
\begin{align}
\delta S & =\int_{M}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\theta|_{\Sigma_{f}}-\theta_{\Sigma_{i}}
\end{align}
$$

其中辛势 $\displaystyle{\theta}$ 定义为

$$\tag{3.2.17}
\begin{align}
\theta|_{\Sigma} & =\lim_{ \varepsilon \to 0 } \left( \int_{\Sigma_{\varepsilon}} \Theta-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C}\right)
\end{align}
$$

因此我们可以定义预辛形式 $\displaystyle{\tilde{\omega}}$ 为

$$\tag{3.2.18}
\begin{align}
\tilde{\omega}|_{\Sigma}=\delta \theta|_{\Sigma} & =\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\delta \Theta-\int_{\partial \Sigma_{\varepsilon}}\delta\mathbf{C}\right)
\end{align}
$$

### 渐进对称性

对于纯AdS3引力，渐进对称性是保持渐进边界条件(3.2.1)不变的微分同胚变换，可以用位形空间 $\displaystyle{\mathcal{C}}$ 上的矢量来表示

$$\tag{3.2.19}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}
\end{align}
$$

更准确的来说，对于渐进对称性，微分同胚参数 $\displaystyle{\xi^{\mu}}$ 应在局部坐标 $\displaystyle{(z,x^{a})}$ 下具有以下渐进行为

$$\tag{3.2.20}
\begin{align}
\xi^{z} & =\frac{z}{2}D_{a}^{(0)}\xi^{(0)a}+\mathcal{O}(z^{3}) \\
\xi^{a} & =\xi^{(0)a}+\mathcal{O}(z^{2})
\end{align}
$$

其中 $\displaystyle{\xi^{(0)a}}$ 只依赖于边界坐标 $\displaystyle{x^{a}}$ ，且是边界度规 $\displaystyle{g^{(0)}_{ab}}$ 的共形Killing矢量场，即满足共形Killing方程

$$\tag{3.2.21}
\begin{align}
g^{(0)}_{bc}D_{a}^{(0)}\xi^{(0)c}+g^{(0)}_{ac}D_{b}^{(0)}\xi^{(0)c}-g^{(0)}_{ab}D_{c}^{(0)}\xi^{(0)c} & =0
\end{align}
$$

下面我们将渐进对称性(3.2.19)作用于拉氏量密度(3.2.2)，有

$$\tag{3.2.22}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\mathrm{d}(\xi \cdot \mathbf{L}) \\
(\xi \cdot \mathbf{L}+X_{\xi}\cdot \delta \ell)|_{\Gamma_{z}} &  =(\mathrm{d}\mu_{\xi}+\nu_{\xi})|_{\Gamma_{\varepsilon}}
\end{align}
$$

其中

$$\tag{3.2.23}
\begin{align}
\mu_{\xi}|_{\Gamma_{z}} & =\left[ \frac{1}{8\pi G}((K-1)\gamma^{\mu}_{\nu}\xi^{\nu}-\gamma^{\mu \nu}D_{\nu}(n_{\rho}\xi^{\rho}))\varepsilon^{(\Gamma_{z})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}\right. \\
 & +\frac{1}{16\pi G}\log z(\gamma^{ac}\gamma^{bd}D_{b}(X_{\xi}\cdot \delta \gamma_{cd})-\gamma^{ab}\gamma^{cd}D_{b}(X_{\xi}\cdot \delta \gamma_{cd}))\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & \left.\left. \frac{1}{16\pi G}z\log z(-2\gamma^{ab}X_{\xi}\cdot \delta g_{zb}+2\gamma^{ab}\gamma^{cd}g_{zd}(X_{\xi}\cdot \delta \gamma_{bc})-\gamma^{ab}\gamma^{cd}g_{zb}(X_{\xi}\cdot \delta \gamma_{cd}))\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right] \right|_{\Gamma_{z}}\\
\nu_{\xi}|_{\Gamma_{z}} & =\left.\left[\frac{1}{16\pi G}(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}n^{\rho}\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{z})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\right]\right|
\end{align}
$$

其中 $\displaystyle{X_{\xi}\cdot \delta \mathbf{L}=\xi \cdot \mathbf{L}}$ 的合理性我们在附录D中给出。我们进一步将 $\displaystyle{\mu_{\xi}}$ 分解为

$$\tag{3.2.24}
\begin{align}
\mu_{\xi}|_{\Gamma_{z}} & =(\mu_{\xi,1}+\mu_{\xi,2})|_{\Gamma_{z}} \\
\mu_{\xi,1}|_{\Gamma_{z}} & =\frac{1}{8\pi G}((K-1)\gamma^{\mu}_{\nu}\xi^{\nu}-\gamma^{\mu \nu}D_{\nu}(n_{\rho}\xi^{\rho}))\varepsilon^{(\Gamma_{z})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
\mu_{\xi,2}|_{\Gamma_{z}} & =\left[ \frac{1}{16\pi G}\log z(\gamma^{ac}\gamma^{bd}D_{b}(X_{\xi}\cdot \delta \gamma_{cd})-\gamma^{ab}\gamma^{cd}D_{b}(X_{\xi}\cdot \delta \gamma_{cd}))\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right. \\
 & \left.\left. \frac{1}{16\pi G}z\log z(-2\gamma^{ab}X_{\xi}\cdot \delta g_{zb}+2\gamma^{ab}\gamma^{cd}g_{zd}(X_{\xi}\cdot \delta \gamma_{bc})-\gamma^{ab}\gamma^{cd}g_{zb}(X_{\xi}\cdot \delta \gamma_{cd}))\varepsilon^{(\Gamma_{z})}_{aa_{1}}\mathrm{d}x^{a_{1}}\right] \right|_{\Gamma_{z}}\\
\end{align}
$$

这样(3.2.22)成为

$$\tag{3.2.25}
\begin{align}
\xi \cdot \mathbf{L}+X_{\xi}\cdot \delta \ell_{1} & =\mathrm{d}\mu_{\xi,1}+\nu_{\xi} \\
X_{\xi}\cdot \delta \ell_{2} & =\mathrm{d}\mu_{\xi,2} \\
X_{\xi}\cdot \delta \mathbf{C}_{2} & =\mu_{\xi,2}
\end{align}
$$

根据(3.2.22)，将渐进对称性(3.2.19)作用于作用量(3.2.5)，得到

$$\tag{3.2.26}
\begin{align}
X_{\xi}\cdot \delta S &  =\lim_{ \varepsilon \to 0 } \left[\left( \int_{\Sigma_{f,\varepsilon}}\xi \cdot \mathbf{L} -\int_{\partial \Sigma_{f,\varepsilon}}\mu_{\xi}\right)-\left( \int_{\Sigma_{i,\varepsilon}}\xi \cdot \mathbf{L} -\int_{\partial \Sigma_{f,\varepsilon}}\mu_{\xi}\right)+\int_{\Gamma_{\varepsilon}}\nu_{\xi}\right]
\end{align}
$$

定义 $\displaystyle{\alpha_{\xi}|_{\Sigma}}$ 和 $\displaystyle{\beta_{\xi}|_{\Gamma}}$ 

$$\tag{3.2.27}
\begin{align}
\alpha_{\xi}|_{\Sigma} & =\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma_{\varepsilon}}\mu_{\xi}\right)  \\
\beta_{\xi}|_{\Gamma} & =\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\nu_{\xi} \\
 & =-\int_{\Gamma} \frac{1}{32\pi G}R^{(0)}D_{a}^{(0)}\xi^{(0)a}\cdot  \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

这样(3.2.26)就可以写成(2.27)的形式。在附录C.3中我们展示了 $\displaystyle{\alpha_{\xi}|_{\Sigma}}$ 和 $\displaystyle{\beta_{\xi}|_{\Gamma}}$ 的有限性，因此作用量的微分同胚变换(3.2.26)是良定义的。

### Noether荷与Noether定理

最后我们给出Noether荷的形式与对应的Noether定理。根据(2.28)，有

$$\tag{3.2.28}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha_{\xi} \\
 & =\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})+\int_{\partial \Sigma_{\varepsilon}}(-X_{\xi}\cdot \mathbf{C}+\mu_{\xi})\right) \\
 & =\lim_{ \varepsilon \to 0 } \left( \int_{\Sigma_{\varepsilon}}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})+\int_{\partial \Sigma_{\varepsilon}}(-X_{\xi}\cdot\mathbf{C}_{1}+\mu_{\xi,1}) \right)
\end{align}
$$

其中我们使用了(3.2.25)。我们计算被积函数，有

$$\tag{3.2.29}
\begin{align}
X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L} & =\mathrm{d}Q_{\xi}-\tilde{E}^{\mu \nu}\xi_{\nu}\varepsilon_{\mu \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
(Q_{\xi}-X_{\xi}\cdot \mathbf{C}_{1}+\mu_{\xi,1})|_{\Gamma_{z}} & =-\frac{1}{2\pi}\gamma^{\mu \nu}T_{\nu \rho}\xi^{\rho}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}
\end{align}
$$

其中

$$\tag{3.2.30}
\begin{align}
Q_{\xi} & =\frac{1}{32\pi G}(\nabla^{\nu}\xi^{\mu}-\nabla^{\nu}\xi^{\mu})\varepsilon_{\mu \nu \mu_{1}}\mathrm{d}x^{\mu_{1}}
\end{align}
$$

以及 $\displaystyle{\tilde{E}_{\mu \nu}}$ 和 $\displaystyle{T_{\mu \nu}}$ 已经在(3.2.13)中给出。因此我们有

$$\tag{3.2.31}
\begin{align}
H_{\xi} & =\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}(-1)\tilde{E}^{\mu \nu}\xi_{\nu}\varepsilon_{\mu \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\int_{\partial \Sigma_{\varepsilon}}(-1) \frac{1}{2\pi}\gamma^{\mu \nu}T_{\nu \rho}\xi^{\rho}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}\right)
\end{align}
$$

将(3.2.31)限制到解空间 $\displaystyle{\tilde{\mathcal{P}}}$ 上，得到

$$\tag{3.2.32}
\begin{align}
H_{\xi}|_{\tilde{\mathcal{P}}} & =\lim_{ \varepsilon \to 0 } \left(\int_{\partial \Sigma_{\varepsilon}}(-1) \frac{1}{2\pi}\gamma^{\mu \nu}T_{\nu \rho}\xi^{\rho}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}\right)|_{\tilde{\mathcal{P}}}
\end{align}
$$

其中 $\displaystyle{\Sigma_{\varepsilon}}$ 上的项因运动方程而为0，只留下 $\displaystyle{\partial \Sigma_{\varepsilon}}$ 上的项。最后代入渐进行为(...)，得到Noether荷的表达式

$$\tag{3.2.33}
\begin{align}
H_{\xi}|_{\tilde{\mathcal{P}}} & =\left.\left(-\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{bc}\xi^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}\right)\right|_{\tilde{\mathcal{P}}}
\end{align}
$$

其中 $\displaystyle{T^{(0)}_{ab}}$ 为边界能量动量张量，有

$$\tag{3.2.34}
\begin{align}
T^{(0)}_{ab} & =\lim_{ \varepsilon \to 0 } T_{ab}|_{z=\varepsilon} \\
 & =\lim_{ \varepsilon \to 0 } \frac{1}{4G}\left[\frac{1}{2}\left( g_{zz}-\frac{1}{z^{2}} \right)g^{(0)}_{ab}-\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab}\right)+g^{(0)}_{ab}g^{(0)cd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right. \\
 & \left.\left.+\frac{1}{2}zg^{(0)}_{ab}g^{(0)cd}\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\frac{1}{2}z(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})-zg^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}g_{zd}-\frac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}\right]\right|_{z=\varepsilon}
\end{align}
$$

我们再来验证Noether定理(2.29)。首先我们给出边界能量动量张量 $\displaystyle{T^{(0)}_{ab}}$ 满足的关系

$$\tag{3.2.35}
\begin{align}
g^{(0)ab}T^{(0)}_{ab}|_{\tilde{\mathcal{P}}} & =-\frac{1}{8G}R^{(0)} \\
g^{(0)bc}D_{c}^{(0)}T^{(0)}_{ab}|_{\tilde{\mathcal{P}}} & =0
\end{align}
$$

这可以直接计算验证，也可以从

$$\tag{3.2.36}
\begin{align}
\lim_{ z \to 0 } \frac{1}{z^{2}}n^{\mu}n^{\nu}\tilde{E}_{\mu \nu}|_{\tilde{\mathcal{P}}} & =0 \\
\lim_{ z \to 0 } \frac{1}{z^{2}}\gamma^{\mu}_{a}n^{\nu}\tilde{E}_{\mu \nu}|_{\tilde{\mathcal{P}}} & =0
\end{align}
$$

中读出。我们现在展示Noether荷的时间不依赖性。我们进行以下计算

$$\tag{3.2.37}
\begin{align}
H_{\xi}|_{\Sigma_{f},\tilde{\mathcal{P}}}-H_{\xi}|_{\Sigma_{i},\tilde{\mathcal{P}}} & =-\int_{\partial \Sigma_{f}-\partial \Sigma_{i}} \frac{1}{2\pi}g^{(0)ab}T^{(0)}_{bc}\xi^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & =\int_{\Gamma} \frac{1}{2\pi}D_{a}^{(0)}(g^{(0)ab}T^{(0)}_{bc}\xi^{(0)c})\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =\int_{\Gamma} \frac{1}{2\pi}g^{(0)ab}T^{(0)}_{bc}D_{a}^{(0)}\xi^{(0)c}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =\int_{\Gamma} \frac{1}{4\pi}T^{(0)}_{ab}(g^{(0)ac}D_{c}\xi^{(0)b}+g^{(0)bc}D_{c}^{(0)}\xi^{(0)a})\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =\int_{\Gamma} \frac{1}{4\pi}T^{(0)}_{ab}g^{(0)ab}D_{c}^{(0)}\xi^{(0)c}\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =-\int_{\Gamma} \frac{1}{32\pi G}R^{(0)}D_{a}^{(0)}\xi^{(0)a}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}=\beta_{\xi}|_{\Gamma}
\end{align}
$$

在推导过程中，我们使用了...。这与Noether定理(2.29)一致。

### Noether荷的Poisson括号

最后我们计算Noether荷的Poisson括号。我们首先考虑一般的边界度规，然后再讨论两个特殊情况——平直边界度规与 $\displaystyle{\mathrm{dS}_{2}}$ 边界度规。

我们考虑两个Noether荷 $\displaystyle{H_{\xi}}$ 和 $\displaystyle{H_{\zeta}}$。对应渐进对称性的无穷小参数 $\displaystyle{\xi^{\mu}}$ 和 $\displaystyle{\zeta^{\mu}}$ 满足共形Killing方程

$$\tag{3.2.38}
\begin{align}
g^{(0)}_{ac}D_{b}^{(0)}\xi^{(0)c}+g^{(0)}_{bc}D_{a}^{(0)}\xi^{(0)c}-g^{(0)}_{ab}D_{c}^{(0)}\xi^{(0)c} & =0 \\
g^{(0)}_{ac}D_{b}^{(0)}\zeta^{(0)c}+g^{(0)}_{bc}D_{a}^{(0)}\zeta^{(0)c}-g^{(0)}_{ab}D_{c}^{(0)}\zeta^{(0)c} & =0 \\
\end{align}
$$

以及渐进行为

$$\tag{3.2.39}
\begin{align}
\xi^{z} & =\frac{z}{2}D_{a}^{(0)}\xi^{(0)a}+\mathcal{O}(z^{3}) \\
\xi^{a} & =\xi^{(0)a}+\mathcal{O}(z^{2}) \\
\zeta^{z} & =\frac{z}{2}D_{a}^{(0)}\zeta^{(0)a}+\mathcal{O}(z^{3}) \\
\zeta^{a} & =\zeta^{(0)a}+\mathcal{O}(z^{2}) 
\end{align}
$$

于是Noether荷 $\displaystyle{H_{\xi}}$ 和 $\displaystyle{H_{\zeta}}$ 具有以下表达式

$$\tag{3.2.40}
\begin{align}
H_{\xi}|_{\tilde{\mathcal{P}}} & =\left.\left[-1\int_{\partial \Sigma} \frac{1}{2\pi}g^{(0)ab}T^{(0)}_{bc}\xi^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}\right]\right|_{\tilde{\mathcal{P}}} \\
H_{\zeta}|_{\tilde{\mathcal{P}}} & =\left.\left[-1\int_{\partial \Sigma} \frac{1}{2\pi}g^{(0)ab}T^{(0)}_{bc}\zeta^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}\right]\right|_{\tilde{\mathcal{P}}}
\end{align}
$$

我们将计算 $\displaystyle{\left\{H_{\xi},H_{\zeta}\right\}|_{\tilde{\mathcal{P}}}}$。根据(2.2)和(2.3)，有

$$\tag{3.2.41}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\tilde{\mathcal{P}}} & =-X_{\xi}\cdot \delta H_{\zeta}|_{\tilde{\mathcal{P}}}=X_{\zeta}\cdot \delta H_{\xi}|_{\tilde{\mathcal{P}}}
\end{align}
$$

因此

$$\tag{3.2.42}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\tilde{\mathcal{P}}} & =-X_{\xi}\cdot \delta H_{\zeta}|_{\tilde{\mathcal{P}}} \\
 & =\left.\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)}(X_{\xi}\cdot \delta T^{(0)}_{bc})\zeta^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \right|_{\tilde{\mathcal{P}}}\\
 & = \left[\right]
\end{align}
$$