---
title: 往年考试题
date: 2026-06-24
summary: "《物理学中的微分几何和拓扑》往年考试题整理，覆盖 Hausdorff 判据、Lie 导数、曲面乘积同调、环面曲率以及复射影空间与 Fubini-Study 度量。"
---

# 往年考试题

## 第一题

对于拓扑空间 $X$，考虑乘积空间 $X \times X$，定义对角集为

$$\begin{align}
\Delta = \{(x, x) \mid x \in X\} \subset X \times X.
\end{align}$$

证明：若 $\Delta$ 是 $X \times X$ 中闭集，则 $X$ 是 Hausdorff 空间。

sol. known that $\displaystyle{\Delta \subset X\times X}$ is closed, then $X\times X-\Delta$ in $X\times X$ is open, which means $\displaystyle{\forall (a,b) \in X\times X-\Delta}$, there exists an open neighborhood $\displaystyle{W_a\times W_b\subset X\times X-\Delta}$ s.t. $(W_a\times W_b) \cap \Delta = \varnothing$. In this way, $\displaystyle{(a,b) \notin \Delta}$, thus $a\ne b$. So we can find two open neighborhood of $W_a,W_b$ containing $a$ and $b$ respectively, and $W_a \cap W_b = \varnothing$. hence $\displaystyle{X}$ is Hausdorff.

## 第二题

对于度量张量

$$\begin{align}
g = g_{\mu\nu}\, dx^\mu \otimes dx^\nu,
\end{align}$$

计算其关于向量场

$$\begin{align}
V = V^\mu \frac{\partial}{\partial x^\mu}
\end{align}$$

的李导数 $(\mathcal{L}_V g)_{\mu\nu}$。

sol. we have

$$\begin{align}
(\mathcal{L}_{V}g)_{\mu \nu} & =V^{\rho}\partial _{\rho}g_{\mu \nu}+\partial _{\mu}V^{\rho}g_{\rho \nu}+\partial _{\nu}V^{\rho}g_{\mu \rho}
\end{align}$$

## 第三题

考虑亏格分别为 $g$ 和 $h$ 的定向闭曲面 $\Sigma_g, \Sigma_h$，写出 $\Sigma_g \times \Sigma_h$ 的各阶同调群，并计算其欧拉示性数 $\chi(\Sigma_g \times \Sigma_h)$。

sol. we have

$$\begin{align}
H_{k}(\Sigma _{g}\times \Sigma _{h}) & =\bigoplus _{p+q=k} H_{p}(\Sigma _{g}) \otimes H_{q}(\Sigma _{h}) \\
 & =\begin{cases}
 \mathbb{Z} & k=0 \\
 \mathbb{Z}^{2g+2h} & k=1 \\
 \mathbb{Z}^{4gh+2} & k=2 \\
 \mathbb{Z}^{2g+2h} & k=3 \\
 \mathbb{Z} & k=4 \\
 0 & \text{otherwise}
 \end{cases}
\end{align}$$

where the Tor terms vanish because the homology groups of closed orientable surfaces are free, and

$$\begin{align}
H_{p}(\Sigma _{g}) & =\begin{cases}
\mathbb{Z} & p=0,2\\
\mathbb{Z}^{2g} & p=1\\
0 & \mathrm{otherwise}
\end{cases}
\end{align}$$

then

$$\begin{align}
\chi(\Sigma _{g}\times \Sigma _{h}) & =\sum _{k} (-1)^{k}\operatorname{rank} H_{k} \\
 & =4gh-4g-4h+4 \\
 & =(2-2g)(2-2h).
\end{align}$$

## 第四题

考虑环面 $T^2$，定义度量为

$$\begin{align}
ds^2 = r^2 d\theta^2 + (R + r \cos\theta)^2 d\phi^2.
\end{align}$$

计算其 Levi-Civita 联络 $\Gamma^\mu{}_{\nu\rho}$，公式为

$$\begin{align}
\Gamma^\mu{}_{\nu\rho} = \frac{1}{2} g^{\mu\sigma} \left(g_{\sigma\nu,\rho} + g_{\sigma\rho,\nu} - g_{\nu\rho,\sigma}\right),
\end{align}$$

以及其曲率张量 $R^\kappa{}_{\lambda\mu\nu}$，公式为

$$\begin{align}
R^\kappa{}_{\lambda\mu\nu} = \partial_\mu \Gamma^\kappa{}_{\nu\lambda} - \partial_\nu \Gamma^\kappa{}_{\mu\lambda} + \Gamma^\kappa{}_{\mu\rho}\Gamma^\rho{}_{\nu\lambda} - \Gamma^\kappa{}_{\nu\rho}\Gamma^\rho{}_{\mu\lambda}.
\end{align}$$

并计算 $T^2$ 上的积分

$$\begin{align}
I = \int_{T^2} d^2x\, \sqrt{\left|\det g_{\mu\nu}\right|}\, R.
\end{align}$$

其中，标曲率 $R$ 定义为

$$\begin{align}
R = g^{\nu\rho} R^\mu{}_{\nu\mu\rho}.
\end{align}$$

sol. Let $F=R+r\cos\theta$. The nonzero Levi-Civita connection coefficients are

$$\begin{align}
\Gamma^\theta{}_{\phi\phi} &= \frac{F\sin\theta}{r}, \\
\Gamma^\phi{}_{\theta\phi} &= \Gamma^\phi{}_{\phi\theta} = -\frac{r\sin\theta}{F}.
\end{align}$$

With the convention in the question, the independent nonzero Riemann components are

$$\begin{align}
R^\theta{}_{\phi\theta\phi} &= \frac{F\cos\theta}{r}, & R^\phi{}_{\theta\theta\phi} &= -\frac{r\cos\theta}{F},
\end{align}$$

with the remaining nonzero components obtained by antisymmetry in the last two indices. Hence the scalar curvature is

$$\begin{align}
\mathcal{R}=g^{\nu\rho}R^\mu{}_{\nu\mu\rho} =\frac{2\cos\theta}{rF}.
\end{align}$$

For $R>r>0$, $\sqrt{\det g}=rF$, so

$$\begin{align}
I &= \int_{0}^{2\pi}\int_{0}^{2\pi} d\theta\,d\phi\, rF\, \frac{2\cos\theta}{rF} \\
&= 2\pi\int_{0}^{2\pi}2\cos\theta\, d\theta = 0.
\end{align}$$

This agrees with Gauss-Bonnet, $I=4\pi\chi(T^2)=0$.

## 第五题

考虑 $n$ 维复射影空间 $\mathbb{CP}^n$，定义如下：

$$\begin{align}
(\mathbb{C}^{n+1})^\ast = \left\{(z_0, z_1, \ldots, z_n) \in \mathbb{C}^{n+1} \mid (z_0, z_1, \ldots, z_n) \neq (0, 0, \ldots, 0)\right\}.
\end{align}$$

定义 $(\mathbb{C}^{n+1})^\ast$ 上的等价关系 $\sim$：$\vec{z} \sim \vec{w}$，若存在 $\lambda \in \mathbb{C}$，$\lambda \neq 0$，使得 $\vec{z} = \lambda \vec{w}$。定义

$$\begin{align}
\mathbb{CP}^n = (\mathbb{C}^{n+1})^\ast / \sim.
\end{align}$$

$(z_0, z_1, \ldots, z_n)$ 称为 $\mathbb{CP}^n$ 的齐次坐标。现在考虑其非齐次坐标，记 $U_i$ 为 $\mathbb{CP}^n$ 中满足 $z_i \neq 0$ 的子集，定义映射 $\phi_i : U_i \to \mathbb{C}^n$ 为

$$\begin{aligned}
\phi_i : (z_0, z_1, \ldots, z_n) &\mapsto (\zeta_0, \zeta_1, \ldots, \zeta_{i-1}, \zeta_{i+1}, \ldots, \zeta_n) \\
&= \left( \frac{z_0}{z_i}, \ldots, \frac{z_{i-1}}{z_i}, \frac{z_{i+1}}{z_i}, \ldots, \frac{z_n}{z_i} \right).
\end{aligned}$$

$(\zeta_0, \zeta_1, \ldots, \zeta_{i-1}, \zeta_{i+1}, \ldots, \zeta_n)$ 称为 $\mathbb{CP}^n$ 的非齐次坐标。

- 观察不同 $U_i$ 上非齐次坐标之间的转移函数，并论证 $\mathbb{CP}^n$ 是一个 $n$ 维复流形。
sol. On $U_i\cap U_j$, use the $U_i$-chart coordinates $\zeta_a=z_a/z_i$ for $a\ne i$. Since $z_j\ne 0$, one has $\zeta_j\ne 0$. In the $U_j$ chart, write the coordinates as $\eta_a=z_a/z_j$ for $a\ne j$. Then

$$\begin{align}
\eta_i &= \frac{z_i}{z_j}=\frac{1}{\zeta_j}, \\
\eta_a &= \frac{z_a}{z_j}=\frac{\zeta_a}{\zeta_j}, \qquad a\ne i,j.
\end{align}$$

The transition functions are holomorphic on the overlap $\{\zeta_j\ne 0\}$, and their inverses have the same form. Thus these charts define an $n$-dimensional complex manifold structure on $\mathbb{CP}^n$.
- 论述下面的关系成立：

$$\begin{align}
   \mathbb{CP}^n = S^{2n+1}/U(1).
\end{align}$$

   由此得到 Hopf 纤维化

$$\begin{align}
   U(1) \to S^{2n+1} \to \mathbb{CP}^n.
\end{align}$$

   根据纤维化求出 $\pi_1(\mathbb{CP}^n)$、$\pi_2(\mathbb{CP}^n)$，并证明 $k \ge 3$ 时

$$\begin{align}
   \pi_k(\mathbb{CP}^n) \cong \pi_k(S^{2n+1}).
\end{align}$$

sol. Since $\mathbb{CP}^n$ is the space of complex lines in $\mathbb{C}^{n+1}$, every line has unit representatives in $S^{2n+1}$, and two unit representatives differ by a phase in $U(1)$. Hence $\mathbb{CP}^n=S^{2n+1}/U(1)$. The fiber bundle $U(1)\to S^{2n+1}\to \mathbb{CP}^n$ gives the long exact sequence

$$\begin{align}
\cdots \to \pi_k(U(1)) \to \pi_k(S^{2n+1}) \to \pi_k(\mathbb{CP}^n) \to \pi_{k-1}(U(1)) \to \cdots
\end{align}$$

For $n\ge 1$, $S^{2n+1}$ is simply connected. The low-degree part is

$$\begin{align}
\pi_2(S^{2n+1}) \to \pi_2(\mathbb{CP}^n) \to \pi_1(U(1)) \to \pi_1(S^{2n+1}) \to \pi_1(\mathbb{CP}^n)\to \pi_0(U(1)).
\end{align}$$

Since $\pi_2(S^{2n+1})=0$, $\pi_1(U(1))=\mathbb{Z}$, $\pi_1(S^{2n+1})=0$, and $\pi_0(U(1))=0$, exactness gives

$$\begin{align}
\pi_1(\mathbb{CP}^n)=0,\qquad \pi_2(\mathbb{CP}^n)\cong \mathbb{Z}.
\end{align}$$

For $k\ge 3$, $\pi_k(U(1))=\pi_{k-1}(U(1))=0$, hence exactness gives $\pi_k(\mathbb{CP}^n)\cong \pi_k(S^{2n+1})$.

- 设 $z = (z_0, z_1, \ldots, z_n) \in (\mathbb{C}^{n+1})^\ast$。在 $(\mathbb{C}^{n+1})^\ast$ 上考虑 Hermitian 形式

$$\begin{align}
   h_z = \frac{|z|^2\, dz \cdot d\bar{z} - (\bar{z} \cdot dz)(z \cdot d\bar{z})}{|z|^4}.
\end{align}$$

   其中

$$\begin{align}
   |z|^2 = \delta_{\alpha\bar{\beta}} z^\alpha \bar{z}^{\bar{\beta}}, \qquad dz \cdot d\bar{z} = \delta_{\alpha\bar{\beta}} dz^\alpha d\bar{z}^{\bar{\beta}}, \qquad \bar{z} \cdot dz = \delta_{\alpha\bar{\beta}} \bar{z}^{\bar{\beta}} dz^\alpha, \qquad z \cdot d\bar{z} = \delta_{\alpha\bar{\beta}} z^\alpha d\bar{z}^{\bar{\beta}}.
\end{align}$$

   判断 $h_z$ 在 $(\mathbb{C}^{n+1})^\ast$ 上是否为非退化度量，并说明它的零方向。由此说明为什么该形式可以下降到 $\mathbb{CP}^n$ 上。
sol. Consider the vector $v=z^\alpha\partial_\alpha$. Then

$$\begin{align}
h_z(v,\cdot) =\frac{|z|^2(z\cdot d\bar z)-(\bar z\cdot z)(z\cdot d\bar z)}{|z|^4}=0.
\end{align}$$

Thus $h_z$ is degenerate on $(\mathbb{C}^{n+1})^\ast$, with kernel the complex line $\mathbb{C}z$, i.e. the tangent direction to the $\mathbb{C}^\times$-orbit. On the unit sphere this restricts to the $U(1)$ vertical direction. The form is invariant along the quotient directions and therefore descends to a nondegenerate Hermitian metric on $\mathbb{CP}^n$, namely the Fubini-Study metric.
- 在 $(\mathbb{C}^{n+1})^\ast$ 中将 $w = \lambda z$ 与 $z$ 认同，就得到了 $\mathbb{CP}^n$。在非齐次坐标 $\zeta$ 中，证明 $h_z$ 下降到 $\mathbb{CP}^n$ 后给出 Fubini-Study 度量

$$\begin{align}
   ds^2_{\mathrm{FS}} = \frac{(1 + |\zeta|^2)\, d\zeta \cdot d\bar{\zeta} - (\bar{\zeta} \cdot d\zeta)(\zeta \cdot d\bar{\zeta})} {(1 + |\zeta|^2)^2}.
\end{align}$$

   判断该度量是否为 Hermitian 度量，并说出你的判断理由。
sol. Because $h_z$ is invariant under complex rescaling and is horizontal along the $\mathbb{C}^\times$-orbits, it is enough to compute it on a local section. On the chart $U_0$, choose the representative

$$\begin{align}
z=(1,\zeta^1,\ldots,\zeta^n).
\end{align}$$

Then

$$\begin{align}
|z|^2 &= 1+|\zeta|^2,\\
dz\cdot d\bar z &= d\zeta\cdot d\bar\zeta,\\
\bar z\cdot dz &= \bar\zeta\cdot d\zeta,\\
z\cdot d\bar z &= \zeta\cdot d\bar\zeta.
\end{align}$$

Substitution into $h_z$ gives

$$\begin{align}
ds^2_{\mathrm{FS}} =\frac{(1+|\zeta|^2)d\zeta\cdot d\bar\zeta -(\bar\zeta\cdot d\zeta)(\zeta\cdot d\bar\zeta)} {(1+|\zeta|^2)^2}.
\end{align}$$

It is Hermitian because it has only $(1,1)$ components,

$$\begin{align}
g_{a\bar b} =\frac{(1+|\zeta|^2)\delta_{a\bar b}-\bar\zeta^{\bar a}\zeta^b} {(1+|\zeta|^2)^2},
\end{align}$$

and is positive definite on nonzero tangent vectors by the Cauchy-Schwarz inequality.

- 证明 Fubini-Study 度量可以通过 Kähler 势得到：

$$\begin{align}
   K = \log(1 + |\zeta|^2).
\end{align}$$

   验证

$$\begin{align}
   g_{a\bar{b}} = \frac{\partial^2 K}{\partial \zeta^a \partial \bar{\zeta}^{\bar{b}}} = \frac{(1 + |\zeta|^2)\delta_{a\bar{b}} - \bar{\zeta}^{\bar{a}}\zeta^b} {(1 + |\zeta|^2)^2}.
\end{align}$$

sol. we have

$$\begin{align}
\frac{\partial K}{\partial \bar\zeta^{\bar b}} &=\frac{\zeta^b}{1+|\zeta|^2},\\
\dfrac{\partial ^{2}K}{\partial \zeta ^{a}\partial \bar{\zeta}^{\bar{b}}} & =\partial _{\zeta ^{a}}\left( \dfrac{\zeta ^{b}}{1+|\zeta|^{2}} \right) \\
 & =\dfrac{1}{1+|\zeta|^{2}}\delta _{a \bar{b}}-\dfrac{1}{(1+|\zeta|^{2})^2}\bar{\zeta}^{\bar{a}}\zeta ^{b} \\
 & =\dfrac{(1+|\zeta|^{2})\delta _{a \bar{b}}-\bar{\zeta}^{\bar{a}}\zeta ^{b}}{(1+|\zeta|^{2})^{2}}
\end{align}$$

## 检查后的正确知识点

- 曲面乘积的整数同调可由 Künneth 公式直接得到。对闭定向曲面 $\Sigma_g,\Sigma_h$，

$$\begin{align}
  H_k(\Sigma_g\times\Sigma_h;\mathbb Z)
  \cong
  \begin{cases}
  \mathbb Z, & k=0,4,\\
  \mathbb Z^{2g+2h}, & k=1,3,\\
  \mathbb Z^{4gh+2}, & k=2,\\
  0, & \text{otherwise}.
  \end{cases}
\end{align}$$

  因此 $\chi(\Sigma_g\times\Sigma_h)=\chi(\Sigma_g)\chi(\Sigma_h)=(2-2g)(2-2h)$。

- 对环面度量 $ds^2=r^2d\theta^2+(R+r\cos\theta)^2d\phi^2$，若记 $F=R+r\cos\theta$，则

$$\begin{align}
  \Gamma^\theta{}_{\phi\phi}=\frac{F\sin\theta}{r},\qquad \Gamma^\phi{}_{\theta\phi}=\Gamma^\phi{}_{\phi\theta}=-\frac{r\sin\theta}{F}.
\end{align}$$

  标曲率为 $\mathcal R=2\cos\theta/(rF)$，所以 $\int_{T^2}\sqrt{\det g}\,\mathcal R\,d^2x=0$。

- 在 $\mathbb{CP}^n$ 的图册中，从 $U_i$ 到 $U_j$ 的转移函数定义在 $\zeta_j\ne 0$ 的开集上，而不是整个 $\mathbb C^n\setminus\{0\}$ 上。正确形式为 $\eta_i=1/\zeta_j$，$\eta_a=\zeta_a/\zeta_j$（$a\ne i,j$）。

- Hopf 纤维化是 $U(1)\to S^{2n+1}\to \mathbb{CP}^n$。对 $n\ge 1$，长正合列给出 $\pi_1(\mathbb{CP}^n)=0$、$\pi_2(\mathbb{CP}^n)\cong\mathbb Z$，且 $k\ge 3$ 时 $\pi_k(\mathbb{CP}^n)\cong\pi_k(S^{2n+1})$。

- 齐次坐标中的 Fubini-Study 表达式在 $(\mathbb C^{n+1})^\ast$ 上不是非退化度量；它沿 $\mathbb C^\times$ 标度方向退化。选择局部截面 $z=(1,\zeta)$ 后，它下降为

$$\begin{align}
  ds^2_{\mathrm{FS}} =\frac{(1+|\zeta|^2)d\zeta\cdot d\bar\zeta -(\bar\zeta\cdot d\zeta)(\zeta\cdot d\bar\zeta)} {(1+|\zeta|^2)^2}.
\end{align}$$

- Fubini-Study 度量的 Kähler 势为 $K=\log(1+|\zeta|^2)$，并且

$$\begin{align}
  g_{a\bar b} =\partial_a\partial_{\bar b}K =\frac{(1+|\zeta|^2)\delta_{a\bar b}-\bar\zeta^{\bar a}\zeta^b}{(1+|\zeta|^2)^2}.
\end{align}$$
