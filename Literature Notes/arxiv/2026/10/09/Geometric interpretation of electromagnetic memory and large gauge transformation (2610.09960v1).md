---
paper id: 2610.09960v1
title: Geometric interpretation of electromagnetic memory and large gauge transformation
authors:
- Mao, Pujian
publication date: '2026-10-07'
abstract: We develop a geometric characterization of electromagnetic memory in terms
  of the optical data of charged-particle congruences. We derive the worldline deviation
  of charged particles near null infinity for both massless and massive particles
  and construct the corresponding optical data. We show that the asymptotic shear
  of the charged-particle congruence provides an equivalent encoding of electromagnetic
  memory and its associated large gauge transformation. This establishes a geometric
  interpretation of electromagnetic memory and large gauge transformations in terms
  of the asymptotic evolution of charged-particle congruences.
comments: 11 pages; 4 sections; no appendices
url: https://arxiv.org/abs/2610.09960v1
summary: 带电 congruence 的领先 shear 可读取速度记忆的角导数，但一般等价性需补初始数据、核空间及规范解释；原稿存在可定位的公式问题。
tags: []
---

# 结论与适用范围

**The statement should be rewritten as:** 对同一组带电测试粒子、固定初始运动数据和辐射前后静止的渐近 Maxwell 场，领先速度 kick 是 $\Delta A_{0A}$ 的规范不变差；congruence 的横向 shear 读取它的角导数。要反演出全部记忆还需要角向边界条件和核空间数据。本文没有证明固定物理 congruence 的光学量在 $A\mapsto A+d\epsilon$ 下发生变化。

以下按原稿 §§1–4 重建。公式默认 **Source-derived**；标为 **Checked** 的局部计算由 xAct/xCoba 或 Mathematica 重算。完成笔记不表示原文断言全部成立。PDF 页4–6、8与 TeX 已直接核对。

## Source map

| 原稿位置 | 作用 | 后续依赖 |
|---|---|---|
| §1，pp.1–2 | 从单粒子 kick 转向带电 congruence 的几何数据；忽略探针自场和相互作用 | 固定探针族的解释必须带入后文 |
| §2，pp.2–5，(1)–(13) | NU gauge 下线性引力原型；反向 null congruence 的展开、shear | (12) 的有限项有角导数遗漏，不能直接用于类比 |
| §3 开头，p.5，(14)–(16) | 平面 null 坐标、Maxwell 渐近解、Lorentz force | 统一 $J_\mu$ 为下指标；原文 $J_{0r}$ 系数有误 |
| §3.1，pp.6–7，(17)–(23) | 无质量测试轨道、screen 投影、光学数据、形式上的 LGT law | 可复用领先 kick/shear；需恢复初始积分常数 |
| §3.2，pp.7–8，(24)–(30) | 有质量轨道、三维正交投影、含 Coulomb 的 expansion | 原文 expansion/shear 加倍，twist 采用反序约定 |
| §4，pp.8–9 | 中子星及 double-copy 方向 | 展望，未推导；pp.9–11 为参考文献，无附录 |

# 平面 null 坐标与线性引力原型

原稿用

$$
ds_M^2=-2\,du\,dr+2r^2dz\,d\bar z,
\qquad \partial=\partial_z,\quad\bar\partial=\partial_{\bar z}.
$$

这是平面截面，文中 $\mathscr I\simeq\mathbb R\times\mathbb C$；不能直接把无穷平面的边界条件替换成圆球正则性。非零独立 Christoffel 符号为

$$
\Gamma^u_{z\bar z}=r,\qquad
\Gamma^z_{rz}=\Gamma^{\bar z}_{r\bar z}=r^{-1},
$$

并包含下指标对称项。光学量使用坐标分量，$\sigma_{zz}$ 的有限值不等于正交归一基底中的有限 shear。

## NU 数据与世界线展开

$g=g_M+G h+O(G^2)$，$h_{r\mu}=0$。原稿(4)为

$$
\begin{aligned}
h_{zz}&=rC_{zz}+D_{zz}+r^{-1}h^1_{zz}+O(r^{-2}),&h_{z\bar z}&=0,\\
h_{uu}&=\frac Mr-\frac{\bar\partial N_z+\partial N_{\bar z}}{2r^2}
 +\frac{\bar\partial^2h^1_{zz}+\partial^2h^1_{\bar z\bar z}}{4r^3}+O(r^{-4}),\\
h_{uz}&=\frac12\bar\partial C_{zz}+\frac{N_z}{r}
 -\frac{3\bar\partial h^1_{zz}}{4r^2}+O(r^{-3}),\\
\partial_u M&=\tfrac12\partial_u(\bar\partial^2 C_{zz}+\partial^2 C_{\bar z\bar z}),\\
\partial_uN_z&=\tfrac13\partial M+\tfrac16\partial^3 C_{\bar z\bar z}
 -\tfrac16\bar\partial^2\partial C_{zz},\\
\partial_uD_{zz}&=0=\bar\partial D_{zz},&
\partial_u h^1_{zz}&=\tfrac12\partial N_z.
\end{aligned}
$$

这里重建了源的自由数据/约束分工；未独立重推全部 Pauli–Fierz 阶级。$C_{AB}(u,z,\bar z)$ 是辐射数据，$M,N_A$ 受约束演化。只保留 $O(G)$，不能借此证明非线性真空记忆或探针反作用。

取 $V^u=1+\sum_{i\ge1}V_i^u/r^i$，$V^r=\sum_{i\ge1}V_i^r/r^i$，$V^z=\sum_{i\ge2}V_i^z/r^i$。原稿(7)–(9)给出

$$
\begin{aligned}
V_1^u&=0,&V_1^r&=GM/2,&V_2^z&=-G\partial C_{\bar z\bar z}/2,\\
V_2^u&=\frac G2\int Mdu',&V_2^r&=-\frac G4(\partial N_{\bar z}+\bar\partial N_z),\\
V_3^z&=-GN_{\bar z}+\frac G2\int\bar\partial Mdu',&
V_3^u&=-\frac G2\int(\partial N_{\bar z}+\bar\partial N_z)du'.
\end{aligned}
$$

积分下限与自由常数应明确固定。原文称全部非零初始常数都会产生 $u\to\infty$ 发散，这不足以排除所有恒定初始横向速度；这里把置零视作所选探针族的条件。

## Screen 与 (12) 的有限项

辅助对象在(10)、(19)中写的是 **下指标** $k_u=-1/V^u$，$k_r=k_A=0$，因此 $k^r=1/V^u$。它满足 $k^2=0$、$k\cdot V=-1$。PDF 文本抽取容易把 $k_u$ 看成 $k^u$；此处已用 TeX/渲染确认。

$$
q_{\mu\nu}=g_{\mu\nu}+V_\mu k_\nu+k_\mu V_\nu,
\qquad B_{\mu\nu}=q_\mu{}^\alpha q_\nu{}^\beta\nabla_\alpha V_\beta.
$$

用 $\theta=q^{\mu\nu}B_{\mu\nu}$、$\sigma=B_{(\mu\nu)}-\theta q_{\mu\nu}/2$ 的标准二阶 screen 约定重算得到 **Checked**：

$$
\theta=-\frac{G}{2r^2}(\bar\partial^2C_{zz}+\partial^2C_{\bar z\bar z}-2M)+O(r^{-3}),
$$

$$
\boxed{\sigma_{zz}=\frac G2r\partial_u C_{zz}
 -\frac G2\partial\bar\partial C_{zz}+O(r^{-1},G^2).}
$$

原稿(12)的第二项为 $-GC_{zz}/2$，与同稿度规及 $V$ 不符，缺少 $\partial\bar\partial$。领先 twist 在 $O(r^0)$ 为零；更高阶源称(13)为 $O(r^{-2})$，未在本检查中补齐全部 $N_A,h^1_{AB}$ 后重算。静止端点 $\partial_u C=0$ 时，这个 congruence 读取的是 $\partial\bar\partial\Delta C$，反演仍有角向核空间；不能沿用原稿从(12)直接推出全量 $\Delta C$ 的论证。

# Maxwell 渐近层级与带电轨道

## 场、源和残余规范

$A_r=0$、$A_u=O(r^{-1})$；残余参数 $\epsilon(z,\bar z)$ 满足 $\delta_\epsilon A_A=\partial_A\epsilon$。记 $A_{0z}=a$、$A_{0\bar z}=b$ 仅用于计算说明，正文其余仍用原稿记号。$J_u,J_r,J_z$ 是下指标，分别从 $r^{-2},r^{-4},r^{-2}$ 起始。

原稿(15)写

$$
\begin{aligned}
A_z&=A_{0z}+r^{-1}A_{1z}+O(r^{-2}),\\
A_u&=\frac Qr-\frac{\partial A_{1\bar z}+\bar\partial A_{1z}-2J_{0r}}{2r^2}+O(r^{-3}),\\
\partial_u Q&=\partial_u(\bar\partial A_{0z}+\partial A_{0\bar z})+J_{0u},\\
2\partial_u A_{1z}&=\partial^2 A_{0\bar z}-\partial\bar\partial A_{0z}+\partial Q+J_{0z}.
\end{aligned}
$$

**Checked / Failed boundary:** 按最后两式所确定的统一规范 $\nabla^\mu F_{\mu\nu}=J_\nu$，xCoba 给原稿 $A_u$ 的径向方程左边 $2J_{0r}/r^4$，而不是 $J_{0r}/r^4$。令 $A_u=Q/r+U_2/r^2$，一致解应为

$$
2U_2+\partial A_{1\bar z}+\bar\partial A_{1z}=J_{0r}.
$$

原稿在 $J_{0r}=0$ 扇区没有这一冲突。以下只在此扇区使用其更高阶轨道系数；不把 generic-source 声明视为已验证。

## Lorentz 方程及共同领先系数

原稿符号为

$$
V^\mu\nabla_\mu V^\nu+qV^\mu F_\mu{}^\nu=0,
\qquad F=dA.
$$

$V^2$ 因 $F$ 反对称而守恒；有质量时 $q$ 应理解为已吸收单位质量的比荷，参数为归一化固有时。无质量带电轨道这里只是指定的测试 Lorentz-force 系统，不是完整自洽的带电无质量量子粒子理论。

用 $s=0$（null）或 $s=1/2$（timelike），令 $I(u,z,\bar z)=\int_{u_i}^uQdu'$。原稿(18)、(25)共同给出

$$
\begin{aligned}
V^u&=1+\frac{qI}{r^2}+O(r^{-3}),\\
V^r&=s+\frac{q^2A_{0z}A_{0\bar z}-sqI}{r^2}+O(r^{-3}),\\
V^z&=-\frac{qA_{0\bar z}}{r^2}
 +\frac{-qA_{1\bar z}+q\bar\partial I}{r^3}+O(r^{-4}).
\end{aligned}
$$

**Checked:** $V^2=-2s+O(r^{-3})$；$u$ 方程的 $r^{-2}$ 系数等价于 $\partial_uI=Q$；角向 $r^{-3}$ 系数为 $q\bar\partial(\partial_uI-Q)$，共轭相同。径向方程领先 $r^{-2}$ 系数也在该条件下为零。更高径向阶需要未列出的 $V_3^r$，这里不宣称完整高阶解验证。

null 时原稿还给

$$
V_3^u=-q\int(\partial A_{1\bar z}+\bar\partial A_{1z}
 +2qA_{0z}A_{0\bar z})du'.
$$

代回同稿含 $J_{0r}$ 的势时，$u$ 方程留下 $-2qJ_{0r}/r^3$；这也是 generic-source 使用的明确限制。若先修正 Maxwell 的径向系数，补偿项的系数也要随之重算，不能把两套不一致公式混用。

# 无质量 congruence：kick、光学数据与大规范参数

取上面的 null screen。标准 trace/shear 与原稿(20)–(21)相符：

$$
\theta=-\frac q{r^2}(\bar\partial A_{0z}+\partial A_{0\bar z})+O(r^{-3}),
\qquad \sigma_{zz}=-q\partial A_{0z}+O(r^{-1}).
$$

原稿 twist 采用相当于 $\omega_{\mu\nu}=B_{[\nu\mu]}$ 的顺序：

$$
\omega_{z\bar z}=\frac q2(\partial A_{0\bar z}-\bar\partial A_{0z})+O(r^{-1}).
$$

若采用 $B_{[\mu\nu]}$，上述 twist 全体反号；不能把这点当成独立物理错误。xCoba 明确输出了两种符号的关系。

## 恢复积分常数后得到的可观测量

领先 Lorentz 方程只要求

$$
V_2^z=c^z(z,\bar z)-qA_{0\bar z},\qquad
\Delta V_2^z=-q\Delta A_{0\bar z}.
$$

固定相同 $c^z$ 所代表的物理初始轨道，在一次规范变换下保持 $V_2^z$ 不变，需要 $c^z\mapsto c^z+q\bar\partial\epsilon$。**Checked:** Mathematica 对该组合的规范变化给零。$F$ 不变时，指定相同物理初值的 Lorentz 世界线和其几何 shear 不会改变。

原稿(23)从固定 $c=0$ 的公式作形式替换，得到

$$
\delta_\epsilon\theta=-\frac{2q}{r^2}\partial\bar\partial\epsilon,
\qquad \delta_\epsilon\sigma_{zz}=-q\partial^2\epsilon,
\qquad \delta_\epsilon\omega_{z\bar z}=0+O(r^{-1}).
$$

它描述所选零常数截面/探针族随势的变化；若要解释为大规范对物理边界态的作用，必须同时说明初始探针数据和边界 dressing 如何变换。本文未构造这样的扩展 CPS。

## “同样记忆信息”还差什么

对于辐射前后真空型配置，可在额外条件下写 $\Delta A_{0A}=\partial_A\Delta\epsilon$，此时

$$
\Delta\sigma_{zz}=-q\partial^2\Delta\epsilon.
$$

这不是无条件的一一对应。**Checked:** 在原稿的平面局部域，取 $\Delta\epsilon=az+b\bar z$，有非零 $\Delta A_{0A}=(a,b)$、非零统一速度 kick，但全部领先 shear、divergence 和 curl 的变化均为零。这个例子属于光学微分算子的核；若排除它，需额外边界/衰减条件。它不否定原稿读取非平凡角结构的用途，也不证明同一核在补上全局球面正则性后仍存在。

# 有质量 congruence 与归一化问题

背景 $V=\partial_u+\tfrac12\partial_r$，轨道满足 $r-u/2=\mathrm{const.}$，$V^2=-1$。使用原稿(26)–(27)：

$$
P^\mu{}_\nu=\delta^\mu{}_{\nu}+V^\mu V_\nu,
\quad B_{\mu\nu}=P_\mu{}^\alpha P_\nu{}^\beta\nabla_\alpha V_\beta.
$$

三维正交空间的标准定义为 $\theta=P^{\mu\nu}B_{\mu\nu}$，$\sigma_{\mu\nu}=B_{(\mu\nu)}-\theta P_{\mu\nu}/3$。重算得到 **Checked**：

$$
\theta=\frac1r-\frac q{r^2}
 (\bar\partial A_{0z}+\partial A_{0\bar z}-Q)+O(r^{-3}),
$$

$$
\sigma_{zz}=-q\partial A_{0z}+q^2A_{0z}\partial_uA_{0z}+O(r^{-1}),
$$

$$
\omega_{z\bar z}=\frac q2(\partial A_{0\bar z}-\bar\partial A_{0z})
 +\frac{q^2}{2}(A_{0\bar z}\partial_uA_{0z}-A_{0z}\partial_uA_{0\bar z})+O(r^{-1}),
$$

最后一式仍采用原稿的反序 twist。原稿(28)、(29)分别是这里 $\theta,\sigma$ 的两倍，而(30)并未加倍。原稿未给出能解释这种区别的定义；若有意采用二倍 convention，必须显式声明，不能说它与 null 部分使用相同变换律。

最小检验是 $q=0$：xCoba 直接给 $\nabla_\mu V^\mu=1/r$，与原稿(28)的 $2/r$ 不符。即使完全沿用原稿(29)，其形式 LGT 变化也是

$$
\delta_\epsilon\sigma_{zz}^{\rm printed}
 =-2q\partial^2\epsilon+2q^2(\partial\epsilon)\partial_uA_{0z},
$$

而不是(23)的 $-q\partial^2\epsilon$。静止端点去掉第二项后，因子二仍在。以一致的标准 shear 归一化重写后，静止端点有质量/无质量的角导数记忆才一致；expansion 仍含 Coulomb 数据 $Q$。

# 与 CPS、边界荷及区域观测量的接口

可复用对象是固定初值的 $\Delta V_2^A=-q\Delta A_0^A$ 和角向微分后的 shear 变化。它们是探针响应，不是本文已经构造的可积 Hamiltonian 荷。

若要接到 Maxwell 区域 CPS，应分别规定：辐射场的端点条件；规范参数在角向边界的允许行为；探针初始 embedding/velocity 是否作为扩展相空间变量；以及反演 shear 时舍去或保留的核。原文没有给出 $\Theta$、$\Omega$、$\delta H_\epsilon$ 或边界 counterterm，因此不能从其几何类比直接得出区域 sewing 或大规范荷代数。

§4 的 neutron-star 与 double-copy 联系属于 Source-derived 展望。关于加入探针相互作用后记忆识别仍不变，本文没有给出修改后的运动方程和 optical evolution；保留为 **Not independently verified**。

# Verification log

| 顺序 / 位置 | 检查与结果 | Evidence |
|---|---|---|
| §2，(2)–(3)，(10)–(13) | xCoba 由 metric CTensor 构造联络和 screen，重现 expansion；shear 有限项为 $-G\partial\bar\partial C_{zz}/2$ | Checked；printed (12) Failed |
| §3，(15) | 直接算 $g_{\nu\lambda}\nabla_\mu F^{\mu\lambda}$；$u,z$ 领先项与源递推一致，$r$ 项为 $2J_{0r}$ | Checked；generic-source 径向系数 Failed |
| (18)、(25) | 两个 $s$ 的 norm、$u,r$ 领先 force、角向次领先 force；$I_u=Q$ 下所列阶为零 | Checked，有限渐近阶 |
| (18) 次领先 $V_3^u$ | 与 printed generic-source 势合用余项 $-2qJ_{0r}/r^3$ | Failed unless $J_{0r}=0$ |
| (20)–(22)、(26)–(30) | xCoba projector 收缩；四个预期 optical residual 全为零；$q=0$ timelike trace 为 $1/r$ | Checked；massive printed normalization 需修正或明确另类定义 |
| (23) 与 §3.2 末段 | Mathematica 恢复初始常数后 gauge residual=0；printed massive law 与 null law 不同 | Checked / Failed，限声明的解释 |
| “等价编码” | 平面 affine $\epsilon$ 例子产生非零 kick 而 optical change=0 | Checked counterexample to unrestricted injectivity |

**Verified:** metric/projector 运算、指定阶的轨道归一化和 Lorentz 残差、Maxwell 三个领先分量、光学微分核。xAct `components` 加载无 package error；中间一次抽象指标未展开及一次规则括号错误已修复，最终结果无截断。

**Assumptions:** 四维 Minkowski 平面 null 坐标；固定初始数据；测试粒子近似；$J_{0r}=0$ 才可直接沿用原稿次领先轨道；引力部分仅 $O(G)$；所声明光学 trace/symmetrization 约定；静止端点才可去掉 $\partial_uA_0$ 项。

**Not verified:** 全部 Pauli–Fierz/Maxwell 无限径向层级、有限半径完整世界线、完整全局边界值反演、相互作用探针动力学及非线性引力记忆。没有源获取阻塞；“全部记忆等价性”需要缺失的核空间/边界条件，“规范变换作用于光学量”需要缺失的探针 dressing 处方，属 **Blocked** 的扩展论证而非已成立结果。
