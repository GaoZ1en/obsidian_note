# 问题

在时空区域 $M$（夹在柯西曲面 $\Sigma_f$ 与 $\Sigma_i$ 之间）中定义作用量 $S[\phi]$ 的场论，其协变相空间定义为满足空间边界 $\Gamma$ 上特定边界条件的动力学场 $\phi$ 的运动方程的解空间 $\tilde{\mathcal{P}}$。定义在 $\tilde{\mathcal{P}}$ 上的预辛形式 $\omega$ 依赖于位于 $\Sigma_f$ 和 $\Sigma_i$ 上的边界项 $\theta$（称为预辛势）：

$$
\begin{aligned}
\delta S & = \int_M d^d x \sqrt{-g} \, E_\phi[\phi] \, \delta\phi 
          + \int_{\Sigma_f} d^{d-1}x \sqrt{\sigma} \, \tau_\mu \theta^\mu[\phi,\delta\phi] 
          - \int_{\Sigma_i} d^{d-1}x \sqrt{\sigma} \, \tau_\mu \theta^\mu[\phi,\delta\phi] \\
\omega & = \int_\Sigma d^{d-1}x \sqrt{\sigma} \, \tau_\mu \, \delta\theta^\mu
\end{aligned}
$$

其中 $g_{\mu\nu}$ 是 $d$ 维流形 $M$ 的度规，$\sqrt{-g}$ 是体积元。$\sqrt{\sigma}$ 是柯西曲面 $\Sigma$ 上的诱导体积元，$\tau_\mu$ 是 $\Sigma$ 上指向未来的单位法向量。$E_\phi[\phi]$ 是动力学场 $\phi$ 的运动方程，$\theta^\mu[\phi,\delta\phi]$ 称为预辛势。

对于无穷小变换 $\phi \to \phi + \delta_\lambda \phi$，我们可以在 $\mathcal{P}$ 上定义矢量场：

$$
X_\lambda = \int d^d x \, \delta_\lambda \phi(x) \frac{\delta}{\delta \phi(x)}
$$

若满足

$$
X_\lambda \cdot \delta S = \alpha_\lambda[\phi]\big|_{\Sigma_f} - \alpha_\lambda[\phi]\big|_{\Sigma_i} + \beta_\lambda\big|_M
$$

其中 $\beta_\lambda$ 与 $\phi$ 无关，则称 $\phi \to \phi + \delta_\lambda \phi$ 是一个对称性。相应的诺特荷定义为

$$
H_\lambda = X_\lambda \cdot \int_\Sigma d^{d-1}x \sqrt{\sigma} \, \tau_\mu \theta^\mu \;-\; \alpha_\lambda[\phi]\big|_\Sigma
$$

此诺特荷的定义与柯西曲面的选取无关。通过计算可证明，两个诺特荷 $H_\lambda, H_\mu$ 的泊松括号定义为

$$
\begin{aligned}
\{H_\lambda, H_\mu\} &= X_\lambda \cdot X_\mu \cdot \omega \\
&= -X_\lambda \cdot \delta H_\mu
\end{aligned}
$$

考虑如下经典 Liouville 理论：

$$
S = \int_M d^2 x \sqrt{-g} \left( -\frac{1}{4\pi} g^{\mu\nu} \nabla_\mu \phi \nabla_\nu \phi 
      - \frac{1}{2\pi \gamma} R \phi 
      - \frac{\mu}{4\pi \gamma^2} e^{\gamma \phi} \right)
$$

其中 $\phi$ 是实标量场，为唯一的动力学自由度；$R$ 是 $M$ 的 Ricci 标量；$\mu, \gamma$ 为实参数。该理论具有共形变换对称性：

$$
\begin{aligned}
X_\xi &= \int_M d^2 x \left( \xi^\mu \nabla_\mu \phi + \frac{1}{\gamma} \nabla_\mu \xi^\mu \right) \frac{\delta}{\delta \phi} \\
0 &= \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu - g_{\mu\nu} \nabla_\rho \xi^\rho
\end{aligned}
$$

其中 $\xi_\mu$ 是共形 Killing 矢量。问题如下：

1. 证明共形变换 $X_\xi$ 是一个对称性，并计算对应的 $\alpha_\xi$ 与 $\beta_\xi$。
2. 计算相应的诺特荷 $H_\xi$，并将答案整理为形式 $H_\xi = \int_\Sigma dx \sqrt{\sigma} \, \tau^\mu \xi^\nu \frac{1}{2\pi} T_{\mu\nu}$，其中 $T_{\mu\nu}$ 是一个对称张量。

---

# 答案

1. 我们得到

$$
\begin{aligned}
X_\xi \cdot \delta S &= \alpha_\xi\big|_{\Sigma_f} - \alpha_\xi\big|_{\Sigma_i} + \beta_\xi\big|_M \\
\alpha_\xi &= \int_\Sigma dx \sqrt{\sigma} \, \tau_\mu \left( \frac{1}{4\pi} \xi^\mu \nabla_\nu \phi \nabla^\nu \phi 
          + \frac{1}{2\pi\gamma} \phi \nabla^\mu \nabla_\nu \xi^\nu 
          + \frac{1}{2\pi\gamma} \xi^\mu R \phi 
          + \frac{\mu}{4\pi \gamma^2} \xi^\mu e^{\gamma \phi} \right) \\
\beta_\xi &= \int_M d^2 x \sqrt{-g} \, \frac{-1}{2\pi \gamma^2} R \, \nabla_\mu \xi^\mu
\end{aligned}
$$

2. 我们得到

$$
\begin{aligned}
H_\xi &= \int_M d^2 x \sqrt{-g} \, \tau^\mu \xi^\nu \frac{1}{2\pi} T_{\mu\nu} \\
T_{\mu\nu} &= \nabla_\mu \phi \nabla_\nu \phi 
            - \frac{1}{2} g_{\mu\nu} \nabla_\rho \phi \nabla^\rho \phi 
            - \frac{2}{\gamma} \nabla_\mu \nabla_\nu \phi 
            + \frac{2}{\gamma} g_{\mu\nu} \nabla^2 \phi 
            - \frac{\mu}{2\gamma^2} g_{\mu\nu} e^{\gamma \phi}
\end{aligned}
$$

---

# 解答

我们遵循协变相空间形式的标准步骤，研究经典 Liouville 理论的对称性与守恒荷。首先对作用量进行变分：

$$
\begin{aligned}
\delta S &= \int_M d^2 x \sqrt{-g} \, E \, \delta\phi 
          + \int_{\Sigma_f} dx \sqrt{\sigma} \, \tau^\mu \theta_\mu \\
E &= \frac{1}{2\pi} \left( \nabla^2 \phi - \frac{1}{\gamma} R - \frac{\mu}{2\gamma} e^{\gamma \phi} \right) \delta\phi \\
\theta_\mu &= \nabla_\mu \phi \, \delta\phi
\end{aligned}
$$

将对称性矢量

$$
X_\xi = \int d^2 x \left( \xi^\mu \nabla_\mu \phi + \frac{1}{\gamma} \nabla_\mu \xi^\mu \right) \frac{\delta}{\delta \phi}
$$

作用于作用量变分上，可得

$$
\begin{aligned}
X_\xi \cdot \delta S &= \alpha_\xi\big|_{\Sigma_f} - \alpha_\xi\big|_{\Sigma_i} + \beta_\xi\big|_M \\
\alpha_\xi &= \int_\Sigma dx \sqrt{\sigma} \, \tau_\mu \left( \frac{1}{4\pi} \xi^\mu \nabla_\nu \phi \nabla^\nu \phi 
          + \frac{1}{2\pi\gamma} \phi \nabla^\mu \nabla_\nu \xi^\nu 
          + \frac{1}{2\pi\gamma} \xi^\mu R \phi 
          + \frac{\mu}{4\pi \gamma^2} \xi^\mu e^{\gamma \phi} \right) \\
\beta_\xi &= \int_M d^2 x \sqrt{-g} \, \frac{-1}{2\pi \gamma^2} R \, \nabla_\mu \xi^\mu
\end{aligned}
$$

注意 $\beta_\xi$ 不依赖于动力学场 $\phi$，因此 $X_\xi$ 确实是一个对称性。根据定义，相应的诺特荷为

$$
\begin{aligned}
H_\xi &= \int_\Sigma dx \sqrt{\sigma} \, \tau^\mu (X_\xi \cdot \theta_\mu) - \alpha_\xi \\
      &= \int_M d^2 x \sqrt{-g} \, \tau^\mu \xi^\nu \frac{1}{2\pi} T_{\mu\nu} \\
T_{\mu\nu} &= \nabla_\mu \phi \nabla_\nu \phi 
            - \frac{1}{2} g_{\mu\nu} \nabla_\rho \phi \nabla^\rho \phi 
            - \frac{2}{\gamma} \nabla_\mu \nabla_\nu \phi 
            + \frac{2}{\gamma} g_{\mu\nu} \nabla^2 \phi 
            - \frac{\mu}{2\gamma^2} g_{\mu\nu} e^{\gamma \phi}
\end{aligned}
$$

此处代数运算较为直接。