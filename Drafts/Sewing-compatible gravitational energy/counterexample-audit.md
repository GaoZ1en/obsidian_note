# 独立反例审计与 formalism 修订

2026-09-19。**判定：原对话的无条件表述不正确；[formalism](formalism.md) §8 的条件命题有逐步证明，并通过下面列出的反例攻击。** 不能据此宣称“所有可能的漏洞已被排除”。最后的停止标准是：本文件列出的概念与 claim 均有判定、反例或独立证明路线，且没有留下一个与最终条件定理冲突的已知反例。

## 1. 审计方法与独立性的含义

先锁定对话中的定义及 gauge、flux、sewing、已知极限四个承诺，再逐项尝试删掉一个前提、构造反例。对发现的问题，修改主文的数学对象或假设；随后重新检查修订是否仍被另一个反例击中。本文与主文分开保存，既不把原对话当证明，也不把“测试全绿”当理论正确。

本次由同一执行者完成推导和审计，**没有第三方审稿人或另一个 agent 的背书**。独立性具体来自可追溯的不同推导路径：

- tensor 路径：xAct 从四维/三维度量计算 Einstein/曲率和作用量系数；
- canonical 路径：从所得 TT 二次作用量推导辛形式，再由波动方程独立计算 flux、能量和 seam；
- surface 路径：原 BTZ Brown–York 脚本与直接 Lee–Wald 积分分别复跑；
- adversarial 路径：用有限维反对称形式、开放 TT 波、corner pair、紧空间约束和截断序列专门破坏更强的说法。

其中有限维代数检查只证明相应代数关系；gravitational boundary conditions 的存在、约束域和可延拓性不由这些矩阵证明。

## 2. 每个概念/claim 的判定

表中“成立”都指修订后的明确范围。A 编号是审计条目；R/C/K/X 等是 [checks](checks/) 内的验证标签。

| 编号 | 被攻击的概念或 claim | 反例/独立检查 | 最终判定与修订位置 |
|---|---|---|---|
| A01 | $\Omega$ 的号数可在旧稿间直接继承 | sewing 稿写 $-\delta\Theta$，现行 CPS 写 $+\delta\theta$；谐振子能量会翻号 | **错误。** 主文 §1 显式转换；A06 检查正号标尺 |
| A02 | $E(h+Du)-E(h)$ 只有 $h u$ 交叉项 | $h=0$、$E(q,p)=q^2+p^2$、$Du=(1,0)$，差为 1 | **错误。** 主文 (12)–(13) 保留 $u^2$；A01、A07 |
| A03 | $\Upsilon$ 本身 gauge invariant | (16) 的变化一般是 $E(h)-E(h+Dw)$，非零 | **错误。** 只有完成后的配对量不变；A02、A03 |
| A04 | 联合 gauge 不变等于 metric-only diffeo 不变 | 固定 boundary frame 的 surface 变换可带荷；BTZ 模式虽是 Lie derivative，能量非零 | **错误。** 主文 §4 区分两种动作 |
| A05 | $w|_S=0$ 就能判定 proper gauge | 允许面积变化的 corner 中，法向 boost 的值为零，boost jet 仍与面积配对 | **错误。** 必须检查完整辛核与边界条件；主文 (8)，C01–C02 |
| A06 | frame 只是边界向量值；任意延拓都等价 | 两个同值 frame 可有不同正常导数、剩余 corner charge | **错误。** frame 包含需要的 germ/jets；延拓差满足 (8) 才成立；A08–A09、C04 |
| A07 | 任意 chosen time flow 都可使用 canonical-energy 恒等式 | $q=F(t-z)$，$\xi=t^2\partial_t$，$\Box_{t,z}(t^2F')=2F'+4tF''\ne0$ | **错误。** 采用保域背景 Killing 流；R12 |
| A08 | 时间流参数可依赖场而不修改 charge 变分 | $f(H)X_H$ 的一形式是 $f(H)dH$；$f(H)=H$ 时 primitive 是 $H^2/2$，不是 $H^2$ | **错误。** 主文固定 $\xi$；场依赖参数需 adjusted variation；A12 |
| A09 | 两个 cut 任意选 frame，raw flux 仍是完整 balance | 仅令 oscillator 的完成变量为 $(t,0)$，完成能量变化率为 $2t$ | **错误。** 主文 (17) 使用一个 slab 上的 frame 历史；raw 写法须加 $\Delta C$；A11 |
| A10 | 无约束余项就可删除边界 flux | Gaussian TT 波包进入/离开有限区域，能量显式随时间变 | **错误。** 主文 (17) 保留完整 flux；R03–R06 |
| A11 | $\beta(G;h)=0$ 意味着该族没有 source work | 平直 TT 壁的背景响应为零，但两扰动的 Wronskian 非零 | **错误。** 检查 $\delta\beta$，不是仅检查 $\beta|_G$；X04、R10–R11 |
| A12 | flux 是 field-space exact 就可去掉 | $\beta=p\,dq$，$\delta\beta=dp\wedge dq$ exact 但非零 | **错误。** 主文 §5 要求零曲率或真实边界动力学；A10 |
| A13 | 添加 scalar corner functional 能取消辛 flux | $\theta\to\theta+\delta B$，$\Omega$ 改变量为 $\delta^2B=0$ | **错误。** area–boost 辛对须来自完整端点势和极化，不能当成 $\delta^2S_J$ |
| A14 | 辐射 flux 与 $W_{\rm source}$ 可以未经定义直接相加 | Einstein–GHY 的 $\delta\Pi\wedge\delta\gamma$ 已是同一个 TT Wronskian | **错误。** 主文 (17)–(19) 只计一次；X04、R01、R11 |
| A15 | 写出 quadratic scalar 就已经找到 Hamiltonian | $q_1=1,q_2=(t-z)^2$ 给 $\mathcal L_A\Omega=-2cL\ne0$ | **错误。** 主文 (20) 给出可积性障碍；R10 |
| A16 | 一条轨道能量守恒就说明所有区域 variations 无 flux | 取单一 monochromatic 波可有恒定能量，但增加独立波形后 source Wronskian 非零 | **错误。** 需要两切向量上的条件，不能只看一条轨道；(20)、(B10) |
| A17 | completed energy 普遍非负 | $q=e^z\cosh t$ 给 $\mathcal E(0)=-c(e^{2L}-1)/2$ | **错误。** 开放系统没有该正定性结论；R09 |
| A18 | $\mathcal E=0$ 当且仅当 perturbation 是 proper gauge | 平稳 Schwarzschild 质量变化满足 $Ah=0$，故 $E=0$，但质量变了 | **错误。** 能量核不等于 gauge 核；§3.1 |
| A19 | observer/frame 依赖可以全部 gauge 掉 | $\xi\to\lambda\xi$ 令 $E\to\lambda E$；改变相对 clock normalization 改变测量 | **错误。** 主文 §4 区分坐标协变与物理 frame 改变 |
| A20 | 区域总能量相等足以 transparent sewing | $q_L=\sin kz\cos kt$、$q_R=-q_L$ 同 trace、同能量，但正常响应跳跃 | **错误。** 主文 (21) 要求完整响应；R13 |
| A21 | background seam charge 相消保证扰动 flux 相消 | (24) 还含 $\delta(\Pi_L+\Pi_R)$；若切向变分不匹配就剩非零项 | **错误。** 匹配域及其切向量同时进入；§6 |
| A22 | 两侧 independently chosen preferred gauges 自动匹配 | 两个 section 的残余 seam boost 可以不同 | **错误。** 先用共同 collar/frame 或明确 transition，再用 cocycle；(16)、§6 |
| A23 | 任何 internal boundary 项都自动抵消 | 人工 seam 若加 $-\sigma\int\sqrt{-\gamma}$，变分留下 surface stress | **错误。** 必须保留 interface action 及其能量；K08 |
| A24 | 使用不同 observer normalization 仍可无损拼接能量 | 同一 flux 的系数分别为 $a,b$，seam 剩 $(a-b)\mathscr F$ | **错误。** (23) 使用同一个时间流；R14 |
| A25 | 从 smooth 场局部积分得到的 sewing 等式成立 | 对真匹配族积分拆分；相反取向 cancellation；Gaussian 精确非零例子 | **在 §6 条件下正确。** 不把该证明外推到任意拼接或量子约化 |
| A26 | 相邻时间段也应把它们的能量相加 | 两段共用同一 Cauchy 状态，会重复计算 | **错误。** 本文 sewing 是空间分区；时间段用 (17) 复合 |
| A27 | whole-region 极限给完整 Brown–York energy | $E[ah]=a^2E[h]$；一般完整 charge 含常数、线性和高阶项 | **错误。** 主文 (26) 对应 Hessian；K01–K04，BTZ 两条路线 |
| A28 | 一旦 $h$ 已定，单个二阶外荷也已定 | 取平稳族 $M(\epsilon)=M_0+\epsilon^2\mu$，$h=0$ 而 $M''=2\mu$ | **错误。** 保留 $k$ 的齐次解、内边界和 source 项；K03、§3.1 |
| A29 | $h^2$ canonical energy 与 $k$ surface charge 是两份独立能量 | BTZ 两种计算得到同一个二阶守恒量 | **错误。** 依二阶约束比较，不另加一次；B15 |
| A30 | raw second-order Noether cut 就是 $\Upsilon$ | 同一 modular 模式实际为 $-16/105$ 与 $32/105$ | **错误。** 15 项复跑保持二者区别；B13–B14 |
| A31 | 任意光滑固定 bifurcation surface 都给二阶面积公式 | B16 的 $h_{kk}h_{ll}$ obstruction 可以非零 | **错误。** 要求 normal gauge 并正确处理 moving surface；area 8 项 |
| A32 | 任意线性真空解都可用于二阶荷校准 | 平直 $T^3$ standing wave 的二阶 scalar constraint 积分为 $-\pi/2$ | **错误。** calibration 另需实际二阶延拓；X03、K05、B17 |
| A33 | 任意几何上均有唯一的 preferred/HW section | $J=-\partial_s^2$ 在 circle 上有常数核；$JV=1$ 无周期解 | **错误。** 主文使用给定 embedding 数据，不假定全局求解；C03、§3.2 |
| A34 | 有限壁、有限模的检查允许交换 regulator/模和极限 | $f_\epsilon(x)=\epsilon/(x+\epsilon)^2$，逐点趋零而积分趋 1 | **错误。** 非紧极限有独立的一致控制前提；K06 |
| A35 | 正则 HW gauge 自动删除整个 null horizon 的辐射 flux | $G_1(V)=V,G_2(V)=1$ 的 Wronskian 为 1；固定 boost-time 与固定 null segment 是不同极限 | **错误。** 本定理先限定 timelike finite slab；§3.3 |
| A36 | 只测有限边界的一阶局部场就能重建 canonical energy | 内部紧支撑 TT 脉冲的所有边界 jets 为零而 B11 为正 | **错误。** 边界读出还需二阶/历史资料；R15、B11 |
| A37 | 边界势的任何 ambiguity 都改变本定义 | $\Theta\to\Theta+dY$、$c\to c+Y$ 时 (5) 不变 | **在同时变换完整处方时不改变。** 若只改一半，就是换了问题；§3.4 |
| A38 | gauge quotient 自动是一个光滑全局相空间 | 稳定子、核的秩变动和 residual section 可阻碍光滑全局商 | **未由本文证明。** (15) 只保证数值在声明的等价类上良定义 |
| A39 | 壁上能量可加推出量子 subsystem 张量分解 | 尚无约化代数、Hilbert 空间或 operator domain 构造 | **未证明。** 不属于本次条件定理 |
| A40 | 算法未再发现反例就是普遍无漏洞证明 | 有限攻击集不能穷尽所有几何、函数空间与极限 | **错误。** 保留本文件明确的停止标准与已排除范围 |
| A41 | 与二阶 charge 比较时只变 $h$ 而保持 $k$ 不动 | 真正 pullback 还给 $\mathcal L_u h+\tfrac12\mathcal L_u^2G+\mathcal L_vG$ | **错误。** 主文 (26a) 补上二阶 frame 变换；D09 |
| A42 | preferred section 中可不加补偿直接使用原时间流 | $\Omega=dp\wedge dq$、额外 null 坐标 $z$，section $z=q$ 不被 $(\dot q,\dot p,\dot z)=(p,-q,0)$ 保持 | **错误。** 其不相容项为 proper $z$ 方向，可加补偿；主文 §2 明列这一判据，D17 |

## 3. 几个容易被“条件化”掩盖的缺口

### 3.1 平稳质量族不能被悄悄排除后仍称“所有能量”

在 Schwarzschild 外部固定有限 $R>2G_NM$，相对于适当有限边界观察者的标准参考减除能量为

$$
E_{\rm BY}(M;R)=\frac R{G_N}\left(1-\sqrt{1-\frac{2G_NM}R}\right),
\qquad
\frac{\partial^2E_{\rm BY}}{\partial M^2}
=\frac{G_N}{R(1-2G_NM/R)^{3/2}}\ne0.
\tag{A1}
$$

而 $h=\partial_Mg\,\delta M$ 是 stationary，固定 $\xi=\partial_t$ 给 $Ah=0$，故 (1) 为零。质量族改变壁 lapse/源；若改用逐点归一化的 proper-time observer，$\xi$ 还会依赖 $M$。因此它不满足主文 (25) 的“同一个 source/frame 问题且场无关 generator”前提。这个反例同时说明新定理的**实质范围**：它给出某个平稳背景附近的 dynamical quadratic form，不声称涵盖有限区域的全部静态质量变化。

对 $M(\epsilon)=M_0+\epsilon^2\mu$ 的 $h=0$ 反例，不能只解释为差一个因子二；缺的是二阶齐次数据及相应内荷/功。主文 (28) 将这些项保留在实际 charge identity 中。

### 3.2 使用 frame 数据避免把 section 存在塞进定义

“选一个把任意 $h$ 送入 HW gauge 的 $V[h]$”可能根本无解。最简单的 closed-surface Jacobi 算符 $J=-\partial_s^2$ 有零模，积分 $JV=1$ 得 $0=2\pi$。即使有解，也可不唯一；差别未必都是 proper gauge。

修订后的基础输入是完整 $(h,u)$，其 pullback 总是有明确意义。只在另行证明 Jacobi/normal-jet 问题的可解性、零模处理、边界条件和延拓独立性后，才把 $u$ 写成一个 preferred-section 函数 $V[h]$。这样没有用“存在所需 section”充当一个未承认的证明。

同样，联合重标记的代数不变性不能证明某个物理 boundary symmetry 是 proper。只有在声明的源、外部 frame 和完整辛结构中确实为零荷的变换才作 quotient。

### 3.3 Null flux 与非一致极限

既有 local Rindler 稿对 plus 极化给出的 inner-wall source curvature 为

$$
\delta\beta_\rho(q_1,q_2)
=\frac{\kappa_H\rho}{2\kappa_{\rm p}^2}
(\partial_\rho q_1\,q_2-\partial_\rho q_2\,q_1).
\tag{A2}
$$

固定有限 boost-time 时它可为 $O(\rho)$。若 $q_i=G_i(V)$、$V=\rho e^{\kappa_H\tau}$ 并固定有限 null segment，则

$$
\delta\beta_\rho\,d\tau
=\frac{G_1'G_2-G_2'G_1}{2\kappa_{\rm p}^2}\,dV.
\tag{A3}
$$

所以“壁趋 horizon”不是单一极限操作。本次独立审计从 (A2) 重新验证到 (A3) 的变量代换，并核对 $G_1=V,G_2=1$ 的非零值；原 Rindler 曲率/壁响应来源也单独复跑，见 verification。主定理没有通过直接宣称 null flux 为零规避这个反例。

### 3.4 固定处方后的唯一性，比“普遍唯一准局域能量”弱

给定同一个完整 $\Omega$、$\xi$ 和 dressed tangent，(1) 已固定。$\theta\to\theta+\delta B$ 或同步的 $(\Theta,c)\to(\Theta+dY,c+Y)$ 不改变它。这可以排除仅仅靠重写 total derivative 产生的新能量。

但是改变实际边界动力学、源的 ensemble、物理 frame 或时间归一化，可能改变 $\Omega$ 或 $A$；此时是不同的物理问题。sewing 也要求这些处方在 seam 上一致，不能从 (23) 推导 universal uniqueness。加上接口 tension 的例子说明条件的重要性。

## 4. 实际修订轮次

**第一轮：攻击原对话的强表述。** 修正了“完整渐近能量”的阶数、任意 time flow、raw flux、value-only frame，以及以总能量替代完整响应匹配的问题。主文改为从完整作用量的 pullback 和 Noether descent 推导 (1)、(13)，先陈述 flux，再增加 Hamiltonian 条件。

**第二轮：计算与真实引力反例。** 新的 xAct/TT 路径给出开放区域的负能量和非可积性、内部 pulse 的边界读数反例、以及 $T^3$ 二阶约束障碍。独立复跑 BTZ bulk/surface 两种计算和 modular cut 计算，排除了因子二、号数和 cocycle/raw-charge 混淆。初次代数脚本 37/39 通过：一个失败是 compact polynomial pulse 的测试期望漏了因子二，另一个是正半径/质量假设没有传给最终化简；按显式积分和物理域修正，复跑 39/39。没有通过放宽精度阈值掩盖失败。

**第三轮：对修订后的主文逐项复核。** 再检查延拓残差、joint scalar 与辛形式的区别、Hamiltonian Hessian 的 source/frame 域、帧的时间作用、corner ambiguity 的同步变换以及 regulator 的非一致极限。最终保留主文 §8 的条件定理，删除未经证明的普遍边界读出、全局 section、无条件 positivity 和无条件二阶可延拓承诺。后续独立 algebraic audit 与具体检查结果见 verification。

这一轮另加入 (26a) 的二阶 frame 变换，并把 section 的时间相容条件写到 §2。后续审计脚本首轮的两个 Hessian 检查用了表达式结构相等，未化简等价多项式；改用精确零残差后通过。新增 section 反例后再跑全套审计，未留下失败检查。

## 5. 最终审计结论

在主文 §8 的精确假设下，gauge、balance、transparent sewing 与有条件的已知极限有闭合的推导链；本文件列出的反例没有推翻这一版本。存在性由四维开放 TT 区域和 AdS$_3$ 已知标尺提供非空例子，不只是空泛的条件蕴涵。

仍不能标成已证明的是：所有物理边界都存在一个适定且光滑的解空间；一般 normal deformation 有可积 Hamiltonian；任意 geometry 都有全局 preferred section；全部线性 perturbations 可延拓；所有非紧/无限模极限可交换；量子或非微扰 sewing。这些不能用本次有限审计宣布消失。

Verified: 每个审计条目都有明确反例、论证或证据边界；计算记录保存在本目录，且未改写来源项目来制造一致性。

Assumptions: “反例”针对表中被攻击的较强命题；修订后命题的假设以 formalism §2、§6、§7 为准。

Not verified: 不受限的“永远再找不到漏洞”、第三方独立审稿，以及表中明确未证明的全局/量子/无限维存在问题。
