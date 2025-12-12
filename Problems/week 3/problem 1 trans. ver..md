# 题目

对于定义在时空区域 $M$ 中的场论，其作用量为 $S[\phi]$，该区域被两个Cauchy面 $\Sigma_f$ 和 $\Sigma_i$ 所夹住。协变相空间定义为满足运动方程的所有解构成的空间 $\mathcal{\tilde{P}}$，其中动力学场 $\phi$ 在空间边界 $\Gamma$ 上满足特定的边界条件。相空间上的预辛形式 $\omega$ 依赖于边界项 $\theta$（称为预辛势），其定义如下：

$$
\begin{align}
\delta S &= \int_M \mathrm{d}^d x \sqrt{-g}\, E_\phi[\phi]\delta\phi 
+ \int_{\Sigma_f} \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu[\phi,\delta\phi] 
- \int_{\Sigma_i} \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu[\phi,\delta\phi] \\[6pt]
\omega &= \int_\Sigma \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \delta\theta^\mu
\end{align}
$$

其中 $g_{\mu\nu}$ 是 $d$ 维流形 $M$ 的度规，$\sqrt{-g}$ 为体元；$\sqrt{\sigma}$ 为Cauchy面 $\Sigma$ 上的诱导体元；$\tau^\mu$ 为指向未来的单位法向量；$E_\phi[\phi]=0$ 是 $\phi$ 的运动方程；$\theta^\mu[\phi,\delta\phi]$ 称为预辛势。

对于无穷小变换 $\phi \to \phi + \delta_\lambda \phi$，我们在相空间上定义相应的向量场

$$
X_\lambda = \int \mathrm{d}^d x\; \delta_\lambda \phi(x) \frac{\delta}{\delta \phi(x)}
$$

如果满足

$$
X_\lambda \cdot \delta S = \alpha_\lambda[\phi]\big|_{\Sigma_f} - \alpha_\lambda[\phi]\big|_{\Sigma_i} + \beta_\lambda\big|_M
$$

其中 $\beta_\lambda$ 与场 $\phi$ 无关，则称该变换为对称性。其对应的Noether荷为

$$
H_\lambda = X_\lambda \cdot \int_\Sigma \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu - \alpha_\lambda[\phi]\big|_\Sigma
$$

此Noether荷与Cauchy面的选取无关。通过计算可得两个Noether荷的泊松括号为

$$
\{H_\lambda, H_\mu\} = X_\lambda \cdot X_\mu \cdot \omega = - X_\lambda \cdot \delta H_\mu
$$

现考虑如下经典Liouville理论：

$$
S = \int_M \mathrm{d}^2 x \sqrt{-g} \left( -\frac{1}{4\pi} g^{\mu\nu} \partial_\mu \phi \partial_\nu \phi - \frac{1}{2\pi \gamma} R \phi - \frac{\mu}{4\pi \gamma^2} e^{\gamma \phi} \right)
$$

其中 $\phi$ 为实标量场，是唯一的动力学自由度；$R$ 为Ricci标量；$\mu,\gamma$ 为实参数。该理论具有如下共形变换

$$
\begin{aligned}
X_\xi &= \int_M \mathrm{d}^2 x \left( \xi^\mu \nabla_\mu \phi + \frac{1}{\gamma} \nabla_\mu \xi^\mu \right) \frac{\delta}{\delta \phi} \\
0 &= \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu - g_{\mu\nu} \nabla_\rho \xi^\rho
\end{aligned}
$$

其中 $\xi^\mu$ 为共形Killing向量。经过代数计算，可得对应的Noether荷为

$$
\begin{aligned}
H_\xi &= \int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \xi^\nu T_{\mu\nu} \\[4pt]
T_{\mu\nu} &= \nabla_\mu \phi \nabla_\nu \phi - \frac{1}{2} g_{\mu\nu} \nabla_\rho \phi \nabla^\rho \phi 
- \frac{2}{\gamma} \nabla_\mu \nabla_\nu \phi + \frac{2}{\gamma} g_{\mu\nu} \nabla^2 \phi 
- \frac{\mu}{2\gamma^2} g_{\mu\nu} e^{\gamma \phi}
\end{aligned}
$$

**问题：**

1. 计算泊松括号 $\{H_\xi, H_\zeta\}$，其中 $\xi,\zeta$ 为两个共形Killing向量。推导中可使用以下共形Killing向量的性质：

$$
\begin{align}
\nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu - g_{\mu\nu} \nabla_\rho \xi^\rho &= 0 \\
\nabla^2 \xi_\mu + \frac{1}{2} R \xi_\mu &= 0 \\
\nabla^2 (\nabla_\mu \xi^\mu) + \xi^\mu \nabla_\mu R + R \nabla_\mu \xi^\mu &= 0
\end{align}
$$

以及能量-动量张量的性质：

$$
\nabla^\mu T_{\mu\nu} = 0, \quad T_{\mu\nu}=T_{\nu\mu}, \quad g^{\mu\nu} T_{\mu\nu} = \frac{2}{\gamma^2} R
$$

2. 在平直背景

$$
\mathrm{d}s^2 = -\mathrm{d}t^2 + \mathrm{d}\varphi^2, \quad \varphi \sim \varphi + 2\pi
$$

下，共形Killing向量可表示为

$$
\begin{aligned}
A_n = A_{-n} &= \cos(nt)\cos(n\varphi)\partial_t - \sin(nt)\sin(n\varphi)\partial_\varphi \\
B_n = B_{-n} &= \sin(nt)\sin(n\varphi)\partial_t - \cos(nt)\cos(n\varphi)\partial_\varphi \\
C_n = -C_{-n} &= \sin(nt)\cos(n\varphi)\partial_t + \cos(nt)\sin(n\varphi)\partial_\varphi \\
D_n = -D_{-n} &= \cos(nt)\sin(n\varphi)\partial_t + \sin(nt)\cos(n\varphi)\partial_\varphi
\end{aligned}
$$

对应的Noether荷记为 $H_{A_n}, H_{B_n}, H_{C_n}, H_{D_n}$。定义

$$
\begin{aligned}
L_n &= \frac{1}{2} H_{A_n} + \frac{1}{2} H_{B_n} + \frac{i}{2} H_{C_n} - \frac{i}{2} H_{D_n} + \frac{2\pi}{\gamma^2} \delta_{n,0} \\
\bar{L}_n &= \frac{1}{2} H_{A_n} - \frac{1}{2} H_{B_n} + \frac{i}{2} H_{C_n} + \frac{i}{2} H_{D_n} + \frac{2\pi}{\gamma^2} \delta_{n,0}
\end{aligned}
$$

它们满足两套Virasoro代数（经典泊松括号形式）：

$$
\begin{align}
\{L_m, L_n\} &= -i \left[ (m-n) L_{m+n} + \frac{c}{12} m(m^2-1) \delta_{m,-n} \right] \\
\{\bar{L}_m, \bar{L}_n\} &= -i \left[ (m-n) \bar{L}_{m+n} + \frac{c}{12} m(m^2-1) \delta_{m,-n} \right] \\
\{L_m, \bar{L}_n\} &= 0
\end{align}
$$

求中心荷 $c$。

# 答案

1. 
$$
\{H_\xi, H_\zeta\} = H_{[\xi,\zeta]} - \frac{1}{\gamma^2} \int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \Big( R(\xi_\mu \nabla_\nu \zeta^\nu - \zeta_\mu \nabla_\nu \xi^\nu) + \nabla_\mu \nabla_\nu \xi^\nu \nabla_\rho \zeta^\rho - \nabla_\mu \nabla_\nu \zeta^\nu \nabla_\rho \xi^\rho \Big)
$$

2. $c = \frac{48\pi}{\gamma^2}$

# 详细解答

## 第1问

根据泊松括号定义：

$$
\begin{align}
\{H_\xi, H_\zeta\} &= -X_\xi \cdot \delta H_\zeta \\
&= -\int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \zeta^\nu (X_\xi \cdot \delta T_{\mu\nu})
\end{align}
$$

计算 $X_\xi \cdot \delta T_{\mu\nu}$：

$$
\begin{align}
X_\xi \cdot \delta T_{\mu\nu} &= \nabla_\mu (X_\xi \cdot \delta\phi) \nabla_\nu \phi + \nabla_\mu \phi \nabla_\nu (X_\xi \cdot \delta\phi) - g_{\mu\nu} \nabla_\rho \phi \nabla^\rho (X_\xi \cdot \delta\phi) \\
&\quad -\frac{2}{\gamma} \nabla_\mu \nabla_\nu (X_\xi \cdot \delta\phi) + \frac{2}{\gamma} g_{\mu\nu} \nabla^2 (X_\xi \cdot \delta\phi) - \frac{\mu}{\gamma^2} g_{\mu\nu} e^{\gamma \phi} (X_\xi \cdot \delta\phi) \\
&= T_{\mu\rho} \nabla_\nu \xi^\rho + T_{\rho\nu} \nabla_\mu \xi^\rho + \xi^\rho \nabla_\rho T_{\mu\nu} 
- \frac{2}{\gamma^2} \left( \nabla_\mu \nabla_\nu \nabla_\rho \xi^\rho - g_{\mu\nu} \nabla^2 \nabla_\rho \xi^\rho \right)
\end{align}
$$

其中用到了共形Killing方程及其导出关系。代入得

$$
\begin{align}
\{H_\xi, H_\zeta\} &= -\int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \zeta^\nu \left( T_{\mu\rho} \nabla_\nu \xi^\rho + T_{\rho\nu} \nabla_\mu \xi^\rho + \xi^\rho \nabla_\rho T_{\mu\nu} - \frac{2}{\gamma^2} (\cdots) \right) \\
&= \int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu (\xi^\rho \nabla_\rho \zeta^\nu - \zeta^\rho \nabla_\rho \xi^\nu) T_{\mu\nu} \\
&\quad - \frac{1}{\gamma^2} \int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \Big( R(\xi_\mu \nabla_\nu \zeta^\nu - \zeta_\mu \nabla_\nu \xi^\nu) + \nabla_\mu \nabla_\nu \xi^\nu \nabla_\rho \zeta^\rho - \nabla_\mu \nabla_\nu \zeta^\nu \nabla_\rho \xi^\rho \Big) \\
&= H_{[\xi,\zeta]} - \frac{1}{\gamma^2} \int_\Sigma \mathrm{d}x \sqrt{\sigma}\, \tau^\mu \Big( R(\xi_\mu \nabla_\nu \zeta^\nu - \zeta_\mu \nabla_\nu \xi^\nu) + \nabla_\mu \nabla_\nu \xi^\nu \nabla_\rho \zeta^\rho - \nabla_\mu \nabla_\nu \zeta^\nu \nabla_\rho \xi^\rho \Big) 
\end{align}
$$

即得所需结果。

## 第2问

首先计算向量场的李括号：

$$\begin{align}
\left\{A_{m},A_{n}\right\} & =\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{A_{m},B_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}-\frac{1}{2}(m+n)D_{m-n} \\
\left\{A_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)A_{m+n}+\frac{1}{2}(m+n)A_{m-n} \\
\left\{A_{m},D_{n}\right\} & =\frac{1}{2}(m-n)B_{m+n}-\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},B_{n}\right\} & =\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{B_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)B_{m+n}+\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},D_{n}\right\} & =\frac{1}{2}(m-n)A_{m+n}-\frac{1}{2}(m+n)A_{m-n} \\
\left\{C_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{C_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}+\frac{1}{2}(m+n)D_{m-n} \\
\left\{D_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n}
\end{align}$$

根据上题结果有

$$\begin{align}
\left\{H_{A_{m}},H_{A_{n}}\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{A_{m}},H_{B_{n}}\right\} & =-\frac{1}{2}(m-n)H_{D_{m+n}}-\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{A_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{A_{m+n}}+\frac{1}{2}(m+n)H_{A_{m-n}}+\frac{4\pi}{\gamma ^{2}}m^{3}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{A_{m}},H_{D_{n}}\right\} & =\frac{1}{2}(m-n)H_{B_{m+n}}-\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}},H_{B_{n}}\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{B_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{B_{m+n}}+\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}},H_{D_{n}}\right\} & =\frac{1}{2}(m-n)H_{A_{m+n}}-\frac{1}{2}(m+n)H_{A_{m-n}}-\frac{4\pi}{\gamma ^{2}}m^{3}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{C_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{C_{m}},H_{D_{n}}\right\} & =-\frac{1}{2}(m-n)H_{D_{m+n}}+\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{D_{m}},H_{D_{n}}\right\} & =-\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}}
\end{align}$$

将 $L_n, \bar{L}_n$ 的线性组合代入，可得

$$
\begin{align}
\{L_m, L_n\} &= -i \left[ (m-n) L_{m+n} + \frac{4\pi}{\gamma^2} m(m^2-1) \delta_{m,-n} \right] \\
\{\bar{L}_m, \bar{L}_n\} &= -i \left[ (m-n) \bar{L}_{m+n} + \frac{4\pi}{\gamma^2} m(m^2-1) \delta_{m,-n} \right] \\
\{L_m, \bar{L}_n\} &= 0
\end{align}
$$

与标准经典Virasoro代数

$$
\{L_m, L_n\} = -i \left[ (m-n) L_{m+n} + \frac{c}{12} m(m^2-1) \delta_{m,-n} \right]
$$

对比可得中心荷

$$
c = \frac{48\pi}{\gamma^2}
$$

这正是经典Liouville场论中著名的经典中心荷（经典反常）示例