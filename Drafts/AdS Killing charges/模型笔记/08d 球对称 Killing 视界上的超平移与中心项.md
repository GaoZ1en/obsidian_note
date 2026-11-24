# 08d　球对称 Killing 视界：模代数是 Witt，为什么没有非平凡中心项？[51]

这里的切口是**视界二球，不是 AdS 无穷远**。在 Koga 固定视界处度规领先值的条件下，沿零母线的平移可以依赖位置；即使挑出满足 Witt 括号的模，候选经典中心项也能用统一的背景减除消掉。

**局部边值问题。** 取四维 Einstein（可含 $\Lambda$）球对称非极端 Killing 视界的正则一段。用先进 Killing 时间 $v$ 与 $\rho=r-r_h$，背景取 $ds^2=-F(r)dv^2+2dv\,d\rho+r^2d\Omega_2^2$，$F(r_h)=0,F'(r_h)=2\kappa>0$。固定 $g|_{\rho=0}=\bar g|_{\rho=0}$ 的**全部分量**，即正则坐标内 $\delta g_{\mu\nu}=O(\rho)$，不只固定退化诱导度规。要求 $\mathcal L_\zeta g=O(\rho)$。例如，$D_A$ 是单位二球导数，下列延拓保条件：

$$\zeta_f=f(v,\theta,\phi)\partial_v-\rho\,\partial_v f\,\partial_\rho-\frac{\rho}{r_h^2}D^Af\,\partial_A+O(\rho^2).$$

确实 $(\mathcal L_\zeta\bar g)_{v\rho}|_H=\partial_v f-\partial_v f=0$，$(\mathcal L_\zeta\bar g)_{\rho A}|_H=D_A f-D_A f=0$；$\zeta^\rho=O(\rho)$ 还保证 $\mathcal L_\zeta(g-\bar g)=O(\rho)$。可再加二球刚性转动，但不能任意重参数化二球。[51，Koga v2，PDF 7–8，(2.18)–(2.30)](https://arxiv.org/pdf/gr-qc/0107096v2#page=7) 用 Kruskal 坐标；本文 $v$ 是其视界上的 Killing 参数 $U$，不是该文用来标识横向距离的 $v$。

**把背景常数与中心荷分开。** 在视界上 $[\zeta_f,\zeta_g]^v=f\partial_v g-g\partial_v f$。若只选周期为 $2\pi/\kappa$ 的测试函数 $f_n=e^{in\kappa v}/\kappa$，则 $[\zeta_m,\zeta_n]|_H=i(n-m)\zeta_{m+n}|_H$；**并未把物理零母线卷成一个圆**。取规范的 Einstein 辛势与 Noether 二形式，在 $S^2$ 上积 $\delta Q_\zeta-\iota_\zeta\Theta$，将生成元向其他端延拓为零。因两允许变分均 $O(\rho)$ 且一阶导有界，$\omega(\delta_1,\delta_2)|_H=0$，满足可积性条件。[51，PDF 17–19，(4.12)、(4.21)–(4.25)](https://arxiv.org/pdf/gr-qc/0107096v2#page=18) 对此势求得参考解上 $\delta_{\zeta_n}H_{\zeta_m}[\bar g]=0$。于是按该文括号次序，候选常数为 $K_{m,n}=-i(n-m)H_{m+n}[\bar g]$，并非 $m^3\delta_{m+n,0}$ 型上循环。令 $H'_n[g]=H_n[g]-H_n[\bar g]$，立即有

$$\{H'_m,H'_n\}=i(n-m)H'_{m+n},\qquad \{H'_2,H'_{-2}\}=-4iH'_0.$$

**Verified:** Wolfram 检查该延拓在视界上的 Lie 导数全部分量及 Fourier 括号，背景上表面荷变分为零采用 [51] 的结果。**Assumptions:** 正则视界段、完整光滑二球、该文的辛势和强边界条件。**Not verified:** 未为开放视界另造作用量，未从经典模括号推导黑洞熵。[本地 CPS 形式](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)的起始变分原理排除真零边界；这里不把它的类时侧面角项直接移植过来。