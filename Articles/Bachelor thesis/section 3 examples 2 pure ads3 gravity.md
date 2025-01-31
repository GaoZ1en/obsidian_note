## 理论的定义

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

