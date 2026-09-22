---
paper id: 2609.24465v1
title: "The Hadamard parametrix on globally hyperbolic spacetimes with Robin boundary conditions: Fundamental solutions and Hadamard states"
authors:
  - "Costeri, Beatrice"
  - "Dappiaggi, Claudio"
  - "Juárez-Aubry, Benito Alberto"
publication date: 2026-09-21
abstract: |-
  On a $d$-dimensional, $d\geq 2$, globally hyperbolic spacetime with a timelike boundary $(\mathcal{M},g)$, we investigate the Klein-Gordon equation with Robin boundary conditions. First of all, we prove existence and uniqueness of the advanced and retarded fundamental solutions, discussing in addition their structural properties. Secondly, under the hypothesis of infinitesimal convexity of $\partial\mathcal{M}$ and of local finiteness of boundary reflections for broken null bicharacteristics, we characterize their wavefront set in the interior $\mathring{\mathcal{M}}$, using the propagation of singularities theorem of Melrose and Sj\"ostrand. In the second part of the paper, we introduce a notion of Robin-Hadamard two-point correlation function as a positive distribution on $\mathcal{M}\times\mathcal{M}$ with prescribed antisymmetric part and singular structure, the latter being characterized in terms of its wavefront set. We complement this definition with a local Hadamard form. Up to a smooth remainder, this consists of the standard directed Hadamard parametrix together with additional contributions associated with the reflected null rays. Their coefficients are determined by transport equations supplemented by Robin matching conditions at the boundary. The construction applies to an arbitrary, but finite number of reflections. We prove that this local formulation is equivalent to the wavefront set condition, thereby establishing a counterpart of Radzikowski's theorem in the presence of a timelike boundary. Finally, starting from the ground state on suitable static backgrounds and using a deformation argument, we prove existence of Robin-Hadamard two-point correlation functions on the class of spacetimes considered.
comments: "100 pages, no figures"
url: https://arxiv.org/abs/2609.24465v1
summary: "100-page reconstruction separating Green, reflected wavefront, parametrix and state existence; checked half-space models and localized recursion, spectral-kernel and domain failures."
tags: []
---

# The Hadamard parametrix on globally hyperbolic spacetimes with Robin boundary conditions

## 结论、用途与证据边界

这篇 100 页长文最值得保留的是**四层结论的分离**：Robin 初边值问题的 Green 算子；沿有限次反射零测地线传播的波前集；无焦散分支上的 Hadamard 系数与边界递推；正谱静态种子经 time-slice deformation 得到量子态。后两层需要前两层之外的假设，不能由“存在反射 Green 函数”直接推出。

**Source-derived:** 全文与附录 A、B 已按下面的章节树重构；主定理、泛函分析与微局部传播证明仍是作者给出的论证。**Checked:** 半空间反射、Robin 振幅、低阶输运、单模谱核和定义域反例；Mathematica 与 xAct 检查见末尾。**Failed:** 原文 (5.1) 印出的静态种子不满足单模 KG 方程；(4.9) 的重合点条件漏掉因子。静态整体号、商空间及初始角点兼容性也不能照抄。以下逐项定位，不把这些局部反例说成整套存在性方案的反证。

对当前研究，直接价值是为“区域经典解能够缝合以后，还欠什么量子态数据”提供清单。它没有构造独立引力理论的组合，也不消除 Maxwell 文中边界中心或相对参考系。光滑 timelike boundary 与 AdS 的共形无穷远不等同；后者的共形变换通常产生奇异质量势。

## 全文章节树与依赖关系

| 原文章节 | 内容与用途 | 后继依赖 |
|---|---|---|
| 1 Introduction | Robin 参数、边界反射、局部与微局部 Hadamard 问题 | 明确四层目标 |
| 2.1 Lorentzian manifolds with timelike boundary | 全局双曲分裂、向内法向、无穷小凸性、排除掠射 | 能量因果传播；反射横截性 |
| 2.2 Static globally hyperbolic spacetimes | optical metric、bounded geometry、完备性、静态模型 | 自伴谱构造 |
| 2.3 Synge's world function and reflected counterparts | 反射映射、固定反射次数的端点映射、分支图、eikonal、边界一/二阶匹配、正则性假设与 conormal 关系 | 波前关系与分支 parametrix |
| 3.1 Fundamental solutions: existence | 支撑估计、紧空间初边值存在性、Green 算子、伴随、延拓、exact sequence | CCR 与 time-slice |
| 3.2 Static realization | 共形约化、Robin 自伴扩张、谱表达 | 静态量子态种子 |
| 3.3 Wavefront set | broken bicharacteristics、无有限时间反射积聚、传播奇性、因果支撑定对角关系 | Hadamard 微局部条件 |
| 4 定义与平滑差 | 双解、Robin、正性、CCR、未来支波前集 | 态与 parametrix 的比较 |
| 4.1.1 even dimension | 直接与反射 U/V；Robin 边界递推与 Borel 渐近实现 | 局部奇性消去 |
| 4.1.2 odd dimension | 无 logarithmic V 的无限 U 渐近族 | 奇维局部构造 |
| 4.1.3 causal comparison | 两种 iε 边界值之差与因果传播子，平滑余项控制 | CCR 归一化 |
| 4.1.4 finite-reflection chains | 逐次反射传递边界数据，按分支拼装 | 需额外分支和的拓扑收敛 |
| 4.2 global/local comparison | microlocally admissible assembly 与波前条件互推；Feynman 说明 | 不能无条件求无限反射和 |
| 5.1 static ground state | 正谱、红外定义域、正频率、波前证明 | 印出谱核需修正，见账本 |
| 5.2 deformation | 辅助静态背景、插值几何、time-slice 源代表、两次态转移 | 保留辅助几何与态种子假设 |
| A Support of solutions | stress current、Robin 边界通量、trace inequality、加正项能量、Grönwall | 有限传播与唯一性 |
| B Existence, Steps 1–5 | 弱形式；Galerkin；时间/空间正则化；唯一性；去紧性 | 角点兼容条件不可略 |

依赖链不是“凸性 → 所有结论”。初边值与因果 Green 问题先成立；波前刻画增加非掠射/反射条件；反射世界函数需要端点映射正则；全局 parametrix 的分支求和再增加 microlocal admissibility；静态态增加谱与红外条件。

## 全局记号、取向与假设账本

取 $g=-\beta dt^2+h_t$、signature $(-,+,\ldots,+)$、$n$ 为向内的单位 spacelike 法向，$d\geq2$。算子为

$$P=\Box_g-m^2,\qquad m^2=m_0^2+\xi R,\qquad B_\kappa=\nabla_n+\kappa.$$

$\kappa$ 在主讨论中为实常数；推广到函数时需分别检查光滑性和静态时间独立性。$\nabla t$ 沿边界切向。本文 $G_\kappa^-$ 是 retarded，$G_\kappa^+$ 是 advanced，$G_\kappa=G_\kappa^--G_\kappa^+$。不要按上标正负猜支撑，也不要与别篇 $G$ 的取向混用。

| 假设 | 实际作用 | 不蕴含什么 |
|---|---|---|
| 全局双曲、光滑 timelike boundary、实 Robin | 能量估计与唯一性 | 静态正能量或真空 |
| 无穷小凸性 Assumption 2.5 | 控制边界切向 Hessian、反射横截性 | 不是只约束 null 切向的弱版本 |
| 无 Zeno：单条轨道在有限时间内反射有限次 | 可沿轨道有限步传播 | 不给所有初始数据的统一反射次数上界 |
| 正则反射分支，端点映射微分可逆 | 反射 Synge 函数是局部光滑相位 | 不覆盖焦散处的单一世界函数 |
| 分支核在指定 Hörmander 分布拓扑中收敛 | microlocally admissible assembly | 可数性、每条轨道有限反射本身不够 |
| 静态 $A\geq0$、$C_0^\infty(\Sigma)\subset D(A^{-1/4})$ | 谱演化与红外配对 | Robin 任意实参数不保证正谱 |
| auxiliary $g_0,g_I$ 满足所需反射条件且种子有效 | deformation 的转移 | 单独证明凸性插值不能代替全部条件 |

## 反射几何：从轨道到可用相位

**Source-derived:** 在边界点反射速度

$$\mathcal R(v)=v-2g(v,n)n.$$

固定恰好 $N$ 次横截反射的初始数据，在反射时刻隐函数定理适用的开集上产生光滑端点映射。若对初速度的端点导数可逆，$(x,v)\mapsto(x,\operatorname{Exp}_{-,N}(x,v))$ 给局部坐标。不同轨道可以连接相同端点，因此必须保留分支 $\alpha$，不能用一个全局 $\sigma_-$ 替代所有反射路径。

$$\sigma_{-,N,\alpha}(x,y)=\frac12\int_0^1g(\dot\gamma,\dot\gamma)ds=\frac12g_x(v,v),\qquad |d_x\sigma_-|_g^2=|d_y\sigma_-|_g^2=2\sigma_-.$$

$x$ 端梯度为 $-v^\flat$；$y$ 端为末速度的 covector。倒转路径一般把 $\alpha$ 换成反向分支，不自动保持标签。边界处入射与出射相位相等、切向导数相同、法向导数互为相反数；横截性保证 $\rho=\partial_n\sigma\ne0$。

原文进一步用 Gaussian normal 坐标和 $K_{ab}=\Gamma^n{}_{ab}=-\tfrac12\partial_z h_{ab}$ 写 Hessian matching。其用途是给反射输运的边界起始数据与光滑延拓；不能把所需分支正则性解释为一般全局几何结论。零相位面在正则支上有 $d\sigma_-\ne0$，其 conormal 给相应 broken null canonical relation。

**Checked:** 平直半空间 $z\geq0$，

$$\sigma_-={-(t-t')^2+(z+z')^2+|\mathbf x-\mathbf x'|^2\over2}.$$

Mathematica 检查 eikonal residual 为 0；xAct 在 $n^an_a=1$ 下检查 $g(\mathcal Rv,\mathcal Rw)-g(v,w)=0$。这只验证反射代数与平直模型，不证明一般分支图存在、无焦散或波前传播定理。

## Green 算子、弱问题与定义域

**Source-derived:** 附录 A 对 $Pu=f$ 的 scalar stress current 做散度积分。Robin 条件把边界法向导数变成 $-\kappa u$，故边界通量可写成边界 $u^2$ 的时间导数与密度变化项。Trace inequality 以小常数吸收梯度项，再加足够大的 bulk $\|u\|^2$ 得到 coercive 辅助能量。Grönwall 给有限时间控制及因果支撑；辅助能量的正性不意味着原物理 Hamiltonian 正定。

附录 B 在紧空间上取固定 Neumann Laplacian 的完备基，但弱形式的 trial space 是 $H^1$，不是强加 Neumann 边界条件给最后解。有限维质量矩阵正定，Galerkin 系数满足二阶 ODE；统一能量界给 weak-* 极限，分布积分分部识别其时间导数。时间导数能量估计后，把每个固定时刻视为 elliptic Robin 问题，从 $H^1$ 升到 $H^3$ 再迭代到光滑。最后以紧因果菱形与人工外边界构造局部解，借唯一性消除人工边界选择并拼接。

对本笔记的 $P=\Box-m^2$、向内法向，正确的 ultrastatic 弱形式为

$$K(\ddot u,v)+a(u,v)=-\int_\Sigma fv,\quad K(u,v)=\int_\Sigma uv,$$
$$a(u,v)=\int_\Sigma(\nabla u\cdot\nabla v+m^2uv)-\kappa\int_{\partial\Sigma}uv.$$

一般 lapse 的相应形式在体积分中乘 $\sqrt\beta$，而 $K$ 的权为 $\beta^{-1/2}$。原文附录 B 切到 $\Box+m^2$ 并写负质量项；这是与主定义不一致的符号，不能直接导入。系数光滑有界时仍可做 Gårding 平移，但这不是对所印质量约定的确认。

$PG^\pm f=f$，而 $G^\pm Pu=u$ 要求 $u$ 在相应紧支撑 Robin 定义域。形式伴随交换 advanced/retarded。Exact sequence 使用

$$0\to C^\infty_{tc,\kappa}\xrightarrow{P}C^\infty_{tc}\xrightarrow{G}C^\infty_\kappa\xrightarrow{P}C^\infty\to0.$$

**Failed (domain):** 随后印出的商空间把分子写成 $C^\infty_{tc,\kappa}$，与此序列不合。应取 $C^\infty_{tc}/P(C^\infty_{tc,\kappa})$。局部 Neumann 例 $u=\chi(t)z^3$（加空间 cutoff）满足 $\partial_z u|_0=0$，但 $\partial_z Pu|_0=6\chi(t)$；因此 $P$ 不保持 Robin 域，原商的分母甚至未必包含于分子。

**Failed (unqualified smooth IBVP):** 任意光滑源配零初值，不自动满足边界角点兼容性。半空间 Neumann、$f(t_0,z)=z$、初始 $u=\partial_tu=0$ 时，PDE 强制 $u_{tt}=-f$，故 $\partial_z u_{tt}|_0=-1$，与光滑 Neumann 解矛盾。附录 B 的正则化步骤另取源在初始时刻附近为零；这足以服务 retarded Green 构造，但不证明没有兼容条件的任意固定初始时刻光滑问题。

## 波前集与量子态条件

**Source-derived:** 非特征 Robin 边界的奇性沿反射 bicharacteristic 传播。在无有限时间反射积聚等假设下，$WF(G)|_{\mathring M\times\mathring M}$ 是 broken null relation。此层允许焦散；焦散妨碍的是单一光滑世界函数表达，而非一般波前关系。

Robin-Hadamard 两点函数须同时满足双解条件、边界条件、正性、$\omega_2-\omega_2^T=iG$，以及第一 covector 为指定未来方向的 broken relation。两态之差对称，而其波前同时受未来和转置后的过去关系约束，故在内部光滑。原文把结论写到 $M\times M$；给出的内部波前论证本身没有独立建立延伸到边界的全部正则性。本笔记只使用内部结论。

## 局部 parametrix 与反射系数的重构

在正则支上设 $\sigma_\epsilon=\sigma\pm i\epsilon(t-t')+\epsilon^2$；$d>2$ 的常数为 $c_d=\Gamma(d/2-1)/[2(2\pi)^{d/2}]$。

$$H=c_d\left[{U\over\sigma_\epsilon^{(d-2)/2}}+\mathbf1_{d\,\mathrm{even}}V\log(\sigma_\epsilon/\lambda^2)\right].$$

加上 $\sigma\to\sigma_-$、$U,V\to U',V'$ 的反射部分。偶数 $d\geq4$ 的 $U$ 有有限个系数，$V$ 是渐近级数；奇数维的 $U$ 是无限渐近级数且无 $V$。Borel 实现保证可选光滑函数具有所需 jets，不意味着普通幂级数收敛。$d=2$ 的 logarithmic normalization 必须单独指定；$c_d$ 在 $d\to2$ 发散，不能只把 $U$ 设零就得到有限公式。

直接 leading coefficient 满足

$$2\sigma^\mu\nabla_\mu u_0+(\Box\sigma-d)u_0=0,\qquad[u_0]=1.$$

反射 leading coefficient 用 $\sigma_-$ 替代，并从 $u'_0|_{\partial M}=u_0|_{\partial M}$ 出发。其 Van Vleck 形式只在正则 branch 适用。高阶直接/反射系数在各自相位上满足同型 transport equations，但反射的起始条件来自 Robin 匹配，而非重合点极限：

$$B_\kappa(u_j+u'_j)+{2j+4-d\over2}\rho(u_{j+1}-u'_{j+1})=0,$$
$$B_\kappa(u_{d/2-2}+u'_{d/2-2})+\rho(v_0-v'_0)=0,$$
$$B_\kappa(v_k+v'_k)+(k+1)\rho(v_{k+1}-v'_{k+1})=0.$$

$\rho\ne0$ 使每步边界数据可解，随后沿反射 null 流输运。不能未经证明把直接系数的对称性转移给单个反射标签；应连同反向分支与 iε 取向一起比较。

**Checked:** $d=4$ 平直无质量半空间，令 $s=z+z'$。边界 leading 数据 $u_0=u'_0=1$，直接 $v_k=0$。Robin 匹配和输运给

$$v'_0=-{2\kappa\over s},\qquad v'_1=-{2\kappa\over s^3}+{2\kappa^2\over s^2}.$$

代入 $\partial_s^2v'_0+2s\partial_sv'_1+4v'_1$，Mathematica 得 0。这是远离 $s=0$ 的横截反射局部检查，不是角点或任意曲率背景的证明。

**Failed (4.9):** 将原 transport equation 取重合点 $[\sigma^\mu]=0,[\Box\sigma]=d$，系数为 $(j+1)(2j+4-d)$。故应是

$$[u_{j+1}]=-{[Pu_j]\over(j+1)(2j+4-d)},$$

而 PDF p.50 印成缺少 $(j+1)$。该问题在 $j=0$ 不显现，高维更高阶或奇维 continuation 会显现。Mathematica 直接化简验证系数。不能用印出的不一致两式同时初始化递推。

## 多重反射、全局拼装与 causal normalization

**Source-derived:** 固定有限反射链时，从最后一段向前逐级传输边界系数，建立各 branch 的 singular kernel。两种 iε 边界值之差给局部 causal kernel；再通过 cutoff、光滑边界 lift 与 Green 算子修正，对照精确传播子。局部误差必须同时对 $P$ 和 $B_\kappa$ 光滑。

全局态与 local Hadamard expansion 的等价性要求选定分支核形成 microlocally admissible assembly：其和在受控波前锥的分布拓扑内收敛。这是额外输入。每条轨道有限次反射，并不排除同一邻域内出现无限多不同轨道；也没有自动给出其振幅和的收敛。正则分支 atlas 可数同样不够。

## 静态种子：谱条件有意义，但印出公式失败

**Checked:** 半直线 Robin 的平面波 $e^{-ikz}+R e^{ikz}$ 在向内 $n=\partial_z$ 下给

$$R(k)={ik-\kappa\over ik+\kappa},\qquad |R|=1\quad(k,\kappa\in\mathbb R).$$

$\kappa>0$ 时 $e^{-\kappa z}$ 是允许的衰减模，$A=-\partial_z^2+m^2$ 的该本征值为 $m^2-\kappa^2$。因此 Green 初边值存在与 $A\geq0$ 是两件事；若 $\kappa>m\geq0$，没有本文所需的正谱静态种子。Mathematica 验证 Robin residual、模长与本征值。

**Failed (5.1, PDF pp.71–73):** 原文印 $A^{-1/2}e^{i\tau A}$，但 KG 演化要求频率 $\sqrt A$。取本征值 $A=4$，印出核 $w=\tfrac12e^{4i\tau}$ 满足

$$(\partial_\tau^2+4)w=-6e^{4i\tau}\ne0.$$

取 $\tfrac14e^{2i\tau}$ 则残差为 0，且相对于原文所印 $G=\sin(2\tau)/2$ 恢复 $w-w^T=iG$。这同时显示缺失的 $1/2$。PDF p.73 的证明实际上改用 $\sqrt A$ 的谱测度和 $e^{i\lambda\tau}/2$，与 p.71 公式不一致；同页 Fourier transform of sine 又把两个 delta 的差印成和。

还须统一 $P$ 整体号：按本文明确的 $P=\Box-m^2$，ultrastatic 情形为 $P=-(\partial_t^2+A)$，retarded kernel 应有 $-\Theta(\tau)\sin(\sqrt A\tau)/\sqrt A$。若以 $G=G_{ret}-G_{adv}$ 固定 CCR，相应正性核取 $e^{-i\sqrt A\tau}/(2\sqrt A)$。原文 static conformal formula 的整体正号与此不一致。上段 $e^{+i\sqrt A\tau}$ 仅是对照原文所印正号 $G$ 的局部修正，不能与实际 $P$ 的负号传播子混用。

结论是：正谱与红外定义域是有内容的假设，标准静态谱策略也可在一致约定下实施，但本次不能把原文印出的 Proposition 5.1 当作已通过校验的态。一般 $\beta$ 权重、完整分布域及全局 Hadamard 性未由单模修正证明。

## Deformation 与 time-slice 的可移植部分

**Source-derived:** 作者构造 bounded-geometry 的辅助静态背景，再用时间 cutoff 插值，并控制因果锥及边界 first jet。选与边界相容的时间 cutoff $\chi$，令 $h=P(\chi Gf)$，把源类移到共同时间带。先从静态种子向中间背景转移，再转到目标背景；正性由 pullback 保持，CCR 与波前关系需 time-slice/传播定理。

这个策略必须保留两个输入：一个真正满足 KG、CCR、正性、Hadamard 的种子；以及所有辅助几何上的无反射积聚等条件。原文印出的种子已在单模失败，本次不宣称整个 deformation 定理获独立验证。对 $G=G^- -G^+$，若 $h=P(\chi Gf)$，应有 $G^-h=\chi Gf$、$G^+h=-(1-\chi)Gf$；缺失后一个负号会破坏 $Gh=Gf$。

## 方程与核查账本

| 对象 | 定位 | 本次状态 |
|---|---|---|
| 反射映射保内积 | §2.3 | Checked，xAct residual 0；单位 spacelike 法向 |
| 反射世界函数 eikonal | §2.3 | Checked，平直半空间；一般图与 Hessian 论证 Source-derived |
| Green 支撑与存在性 | §3.1、A、B | Source-derived；一般固定初时刻须角点兼容 |
| quotient source domain | §3.1 exact sequence 后 | Failed，$z^3$ Neumann witness，分子需修正 |
| $WF(G)$ | §3.3 | Source-derived；内部、broken null、几何假设保留 |
| Hadamard recursion | (4.9) p.50 | Failed，重合点分母漏 $(j+1)$；代数修正 Checked |
| 反射 $v'_0,v'_1$ | §4.1 的半空间实例 | Checked，质量零、四维、$s>0$ |
| $d=2$ prefactor | (4.5) 附近 | Failed，Gamma pole；需独立对数归一化 |
| 无限分支 assembly | §4.2 | Source-derived conditional；未证明任意几何下收敛 |
| 静态 kernel | (5.1), pp.71–73 | Failed，单模 KG 与 CCR normalization；局部修正 Checked |
| general deformation existence | §5.2 | Not independently verified；依赖有效种子和辅助几何 |
| appendix weak mass sign | B Step 1 | Failed，相对主文 $P=\Box-m^2$；按固定约定重写 |

## How to read this paper

先读 §3.1 与附录 A，固定边界通量、支撑和定义域；然后读 §2.3 的反射相位与 §3.3 的波前定理，区分“波前可沿焦散传播”和“某个世界函数在焦散处不再是好坐标”。再以四维半空间检查 §4.1 的 Robin 递推，最后才读 §4.2 的分支求和假设。§5 应在修正静态谱核及传播子整体号之后进入；当前印出公式不宜作计算模板。

对自己的区域量子化问题，建议先问：区域边界条件是否产生自伴正谱实现；其 Green 配对与 CPS 的取向是否一致；界面消除后两点函数是否满足全局 broken/ordinary Hadamard 条件。本文有助于列出这些问题，但没有替我们证明去边界极限或独立区域态的粘合。

## Retrieval and verification

官方 [摘要与版本](https://arxiv.org/abs/2609.24465v1)、[PDF](https://arxiv.org/pdf/2609.24465v1)、[source](https://arxiv.org/src/2609.24465v1) 均成功读取。100 页 PDF、主 TeX 和附录均用于结构重构；PDF pp.50、71、73 已渲染目视核对递推与谱核，避免将文本提取错误误判为原文错误。其余公式结合 TeX 阅读，未逐页视觉验证。

Verified: Mathematica 的 eikonal、Robin boundary residual、$|R|^2-1$、$v'_1$ transport、本征模 residual 均为 0；错误静态核 residual 为 $-6e^{4i\tau}$，修正单模为 0；重合点系数为 $(j+1)(4-d+2j)$；商空间 witness 为 6；二维 prefactor 极限为 Infinity。xAct 检查反射保内积为 0。

Assumptions: 上述独立计算仅在写明的平直/单模/单位法向模型；无限维谱、边界 trace、分布拓扑及 PDE 正则性仍需作者所列假设和相应定理。

Not independently verified: 一般 Green 存在性证明每一步、反射奇性传播外部定理、焦散处 FIO 描述、分支和收敛、任意 lapse 的完整归一化、边界上平滑差，以及修正之后的全局态存在定理。没有以有限计算提升这些结论。

Blocked: 没有检索或计算工具阻塞。阻止直接使用原文静态态的是可复现的数学不一致；本次记录局部修正及其边界，未声称完成原稿全局修复。
