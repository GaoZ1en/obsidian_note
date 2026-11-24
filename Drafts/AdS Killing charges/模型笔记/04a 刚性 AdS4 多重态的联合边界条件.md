# 刚性 AdS₄ 多重态：混合条件旋转了哪两支？

取两种质量相同的标量，并不意味着可以对它们同时选标准量子化。在下面这个 $\mathcal N=1$ 反射问题里，**恰有一个实线性组合留下快支，正交组合留下慢支**。边界参数 $q$ 改变的是它们在 $(A,B)$ 平面内的方向，而不是两个最低标量频率；把它误作单场 Robin 参数会给出不同的谱。

固定 Lorentzian global AdS$_4$（$D=4,d=3,L=1$）及其无挠标架，动力学场为实标量 $A$、赝标量 $B$ 和 Majorana 旋量 $\chi$，**没有**动力学 gravitino。用 Amsel–Marolf 的共轭及 Majorana 归一化，取其 $m_\chi=0$ 的自由体作用量
$$
 S_{\rm bulk}=\int\!\sqrt{-g}\left[-\tfrac12(\nabla A)^2-\tfrac12(\nabla B)^2+A^2+B^2
 +\tfrac i4\{\bar\chi\gamma^a\nabla_a\chi-(\nabla_a\bar\chi)\gamma^a\chi\}\right].
$$
两标量均为 $m_s^2L^2=-2$，$\Delta=1,2$。固定的奇参数 $\eta$ 满足 $(\nabla_a+\gamma_a/2)\eta=0$，不是任意局域规范参数。刚性变换为
$$
 s_\eta A=\tfrac i{\sqrt2}\bar\eta\chi,\qquad s_\eta B=-\tfrac1{\sqrt2}\bar\eta\gamma_5\chi,\qquad
 s_\eta\chi=-\tfrac1{\sqrt2}\big[\gamma^a\nabla_a(A+i\gamma_5 B)-A+i\gamma_5B\big]\eta .
$$
这些系数来自[原文 v2，PDF／正文 3、5–6，(2.1)、(3.2)–(3.5)](https://arxiv.org/pdf/0808.2184v2#page=6)，其中 $\chi=\sqrt2\,\hat\psi$（原文 §III 称为 $\psi$），不能在此使用复 Dirac 场的整份动能。

## 让变分与超变换选择同一组数据

用向内的定义函数法向 $\tilde n=d\Omega$、$\tilde g=\Omega^2g$ 及 $\tilde P_\pm=(1\pm\tilde n\cdot\tilde\gamma)/2$。标量展开 $A=\Omega\alpha_A+\Omega^2\beta_A+\cdots$，$B$ 同理；$\chi=\Omega^{3/2}(\alpha_\chi+\beta_\chi)+\cdots$，其中 $\tilde P_-\alpha_\chi=\alpha_\chi$、$\tilde P_+\beta_\chi=\beta_\chi$。零质量时两个旋量数据的阶相同，靠投影而不是幂次区分。

[原文 (3.24)–(3.32)，PDF／正文 8](https://arxiv.org/pdf/0808.2184v2#page=8) 将两组数据 $(\alpha_A,\alpha_\chi,\beta_B)$、$(\alpha_B,\beta_\chi,-\beta_A)$ 分别组成边界实超场 $\Phi_-,\Phi_+$（中间分量按原文转为二分量旋量）。在平直边界共形图中，总辛流是 $\int d^3x\,d^2\theta\,[\delta_1\Phi_-\delta_2\Phi_+-\delta_2\Phi_-\delta_1\Phi_+]$。在对应的径向极化下可取其局部变分势为 $\int\Phi_-\delta\Phi_+$（两种势可差一个场空间恰当项）。减去边界超势 $\int W$，取 $W=q\Phi_+^2/2$、$q\in\mathbb R$ 固定，剩下 $(\Phi_- -q\Phi_+)\delta\Phi_+$；由 $\delta\Phi_+$ 自由得到
$$
 C_1=\alpha_A-q\alpha_B=0,\qquad C_2=\beta_B+q\beta_A=0,\qquad
 C_\chi=\alpha_\chi-iq\gamma_5\beta_\chi=0 .
$$
各项共形权重匹配（两超场最低分量的维数都是 1），所以可转回全局边界圆柱。其切变分 $\delta\Phi_-=q\delta\Phi_+$ 使通量为零。这是**径向变分的一种等价极化**，不是说原文列出了一份唯一的有限壁超场作用量。举例而言，标量先加 $-\frac12\int\sqrt{-\gamma}(A^2+B^2)$，得到有限的 $\int(\beta_A\delta\alpha_A+\beta_B\delta\alpha_B)$；再按下节的快慢组合对后一组合做 Legendre 变换即可。

**零通量还不够：要检查 $s_\eta$ 切于边界方程。** 按原文 (3.7)–(3.12)，写 $\eta=\Omega^{-1/2}\eta_++\frac12\Omega^{1/2}\eta_-+\cdots$，$\widetilde{\not D}$ 是边界切向 Dirac 导数。逐项合并，得到例如
$$
 s_\eta C_1=\tfrac i{\sqrt2}\bar\eta_+ C_\chi,\qquad
 s_\eta C_\chi=-\tfrac1{\sqrt2}[-C_1\eta_- -i\gamma_5 C_2\eta_++(\tilde\gamma^i\partial_i C_1)\eta_+].
$$
$s_\eta C_2$ 的两项分别正比于 $\bar\eta_-\gamma_5 C_\chi$ 与 $\bar\eta_+\gamma_5\widetilde{\not D}C_\chi$，也消失。只改 $\beta_B$ 的符号就会使 $s_\eta C_\chi$ 留下未抵消项。这一步对任意允许的 AdS Killing 旋量成立，不只是边界 Poincaré 超对称的那一半。

## 两条最低模与一个可用的经典超荷

把 $(A,B)$ 旋转为 $U=(A-qB)/\sqrt{1+q^2}$、$V=(qA+B)/\sqrt{1+q^2}$，体方程不变而 $\alpha_U=0,\ \beta_V=0$。在标量边界势中减 $\int\alpha_V\beta_V$ 后，剩下 $\beta_U\delta\alpha_U-\alpha_V\delta\beta_V$。于是正则无节点的 $s$ 波分别为
$$
 U\propto e^{-2it}\cos^2\rho,\qquad V\propto e^{-it}\cos\rho,
 \qquad ds^2=\sec^2\rho(-dt^2+d\rho^2+\sin^2\rho\,d\Omega_2^2).
$$
复算时把 $e^{-i\Delta t}u(\rho)$、$u=\cos^\Delta\rho$ 代入径向 Klein–Gordon 方程：$[(\tan^2\rho\,u')'/\tan^2\rho+(\Delta^2+2\sec^2\rho)u]/u=(\Delta-1)(\Delta-2)\sec^2\rho$。所以 $q=0$ 时 $A,B$ 分别从 $E=2,1$ 开始；有限非零 $q$ 后最低频不动，慢模的场方向变成 $(q,1)$。这不是一般相互作用或非线性超势的等谱定理。

在此自由、线性无源解空间写 $\varphi=(A,B,\chi)$，$\omega_\Sigma$ 是由上述作用量的端点势得到的常系数偶分次辛形式（含旋量块，且总边界通量为零）。把 Grassmann-奇外参数连同超变换一起写，$s_\eta$ 是偶线性辛变换，取真空值零，故可以直接用
$$
 Q[\eta](\varphi)=\tfrac12\omega_\Sigma(\varphi,s_\eta\varphi),\qquad
 \delta Q[\eta]=\omega_\Sigma(\delta\varphi,s_\eta\varphi).
$$
第一项的 $\varphi$ 是线性空间中从零解指向该解的切向量；变分时两项因 $s_\eta$ 保辛而相等。剥去外参数所得是费米生成元，不是能量。时空生成元另取 $X_\xi$（标量 Lie 导数和旋量 Kosmann 导数）；此处超荷是体物质的矩映射，不是动力学超引力的边界二形式。

**Verified:** 复算旋转后的慢快约束、两个径向方程及 $C_\chi$ 变换的独立切向 Clifford 系数，Mathematica 残差均为零。超场通量与超对称边界条件是文献结果；选择两条具体全局模及给出线性空间的矩映射是本篇对[统一 CPS 约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)的应用。**Assumptions:** $m_\chi=0$、常数 $q$、无源反射、精确 AdS、全局正则。**Not verified:** 未计算所有模上的量子超荷矩阵元、完整分次括号的逐分量归一化，亦未把此刚性理论升为局域超引力。
