# 离散 modular spectra 的 AdS₃ 实现：CFT、ensemble 与 Chern–Simons gravity

**当前判定：尚未证明存在，也没有得到排除整个谱族的 no-go theorem。** [2609.39930v2](https://arxiv.org/abs/2609.39930v2) 给出的是 genus-one 谱存在性；[2608.14541v1](https://arxiv.org/abs/2608.14541v1) 提供的 Wilson-line/DS-reduction 框架并未补上谱选择、简并度和全套 OPE sewing 数据。两者可以在运动学层面对接，但这不是非微扰 AdS₃ 量子引力的构造。

本文续接 [原文的详细数学笔记](</Users/koishi/Documents/Note/Literature Notes/Large gaps and BTZ entropy in modular spectra with positive integer degeneracies (2609.39930v2).md>)，不重述 modular repair 的全部证明，也不修改该笔记。本次文献核查与验算截止于 2026-11-06。下文将“论文报告的定理”“由明确假设推出的命题”“候选构造”“未解决问题”分开。本文不把 2609 的全部解析证明视为已经独立审计通过；涉及它的推论均以其所述谱定理成立为前提。

## 1. 先固定要实现什么

取空间圆周长为 $2\pi$，$c_L=c_R=c>1$，定义

$$
a=\frac{c-1}{12},\qquad e=\Delta-a,\qquad E=\Delta-\frac c{12}=e-\frac1{12},\qquad J=h-\bar h\in\mathbb Z.
$$

目标 primary 谱为

$$
\mu_* =\sum_\alpha d_\alpha\delta_{(e_\alpha,J_\alpha)},\qquad
d_\alpha\in\mathbb Z_{>0},\qquad e_\alpha\ge |J_\alpha|,
$$

加一个唯一真空及其左右 Virasoro descendants。局部有限性和所有正温度下的热可求和性也属于目标条件。因而

$$
h_\alpha=\frac{a+e_\alpha+J_\alpha}{2},\qquad
\bar h_\alpha=\frac{a+e_\alpha-J_\alpha}{2},\qquad
h_\alpha,\bar h_\alpha\ge\frac{c-1}{24}.
$$

必须区分四个问题：

1. **Hilbert-space realization：** 有没有正定 Hilbert space 与 Hamiltonian 以 $Z_*$ 为 trace？有，见下一节。
2. **single CFT realization：** 有没有局域、unitary、compact 二维 CFT，具有同一谱和一致 OPE？未构造。
3. **exact ensemble realization：** 有没有真正 CFT 上的正概率测度，使 $\mathbb E Z=Z_*$，并复现指定多边界振幅？未构造，且有下文的严格支持限制。
4. **pure Einstein realization：** 是否来自指定边界条件、积分域、测度和非微扰完成的 Einstein bulk path integral？比前两项更强，不能只靠大 gap 或 BTZ entropy 判断。

这里 compact 指离散谱、有限重数和 normalizable vacuum，不是时空空间紧致性的另一说法。ensemble 必须说明是“每个成员 exact CFT”还是“仅有限观测量近似满足约束的数据”；二者不互换。

2609 的 fixed-$\delta$ 族有 $\Delta_1=a+\delta$、$E_1=\delta-1/12$。其 BTZ 比较是固定非负紧支撑平滑核、全自旋、含 descendants、$E=\lambda c$ 且 $\lambda$ 位于 $(0,\infty)$ 的紧集上，每个固定有限 $1/c$ 阶的相对精度。它不控制单个能级、谱相关函数、Lorentzian 长时间极限，也不推出 $e^{-\gamma c}$ 的误差估计。正 $\kappa$ 族的指定 selector 还具有经证明的 near-gap 非 BTZ 区域；不能将两个族混为一谈。[主文 §6–7](https://arxiv.org/html/2609.39930v2)。

## 2. 一个可以完成的构造，以及它为什么还不是 CFT

**命题：目标谱总能实现为 unitary 的左右 Virasoro 表示空间。** 令 $\mathcal V_h$ 表示 central charge $c$ 的不可约 unitary highest-weight representation，$\mathcal V_0$ 取去除真空 null vector 后的真空模块，则

$$
\mathcal H_*=(\mathcal V_0\otimes\overline{\mathcal V}_0)
\oplus\bigoplus_\alpha\left(\mathbb C^{d_\alpha}\otimes
\mathcal V_{h_\alpha}\otimes\overline{\mathcal V}_{\bar h_\alpha}\right)
$$

带正定直和内积，$H=L_0+\bar L_0-c/12$，$P=L_0-\bar L_0$。对于这里的充分大 $c$，非真空正权模块的 character 正是论文使用的 nondegenerate Virasoro character。目标热可求和性保证 $e^{-\beta H}$ 为 trace class，故它精确实现 $Z_*$。

这个构造说明问题不在“能否把正整数重数放进 Hilbert space”。缺少的是 local operator–state correspondence、互相兼容的 vertex operators、反射正性相关函数和 sewing。$\mathbb C^{d_\alpha}$ 是照抄输入谱的 multiplicity space，不是从 gravitational degrees of freedom 推导出的微观空间。

### 2.1 对常见 single-CFT 构造的严格限制

**无额外 chiral primaries。** 因 $c>1$ 时 $(c-1)/24>0$，所有非真空 Virasoro primary 都不能有 $\bar h=0$ 或 $h=0$。真空后裔如 $T$ 当然仍存在。于是依靠额外 holomorphic currents、扩展 chiral algebra 的候选，必须先解释如何消除这些与目标谱不相容的 states。标准 Narain CFT 有 $(1,0)$ currents，不能直接成为目标成员；同样不能用正概率平均把这些 currents 抵消。

**普通非平凡 tensor product 不行。** 对两个 $c_1,c_2>0$ 的 CFT，在总 Virasoro 下

$$
|W\rangle=c_2 L^{(1)}_{-2}|0\rangle-c_1 L^{(2)}_{-2}|0\rangle
$$

是 $(2,0)$ primary：$L^{\rm tot}_1|W\rangle=0$，$L^{\rm tot}_2|W\rangle=(c_2c_1-c_1c_2)|0\rangle/2=0$，更高正模也消灭它；其范数为

$$
\langle W|W\rangle=\frac{c_1c_2(c_1+c_2)}2>0.
$$

因此单纯通过 tensoring 把 central charge 做大不能得到该谱。这不自动排除 orbifold 或其他投影；投影后的全部 chiral spectrum 必须另查。

**当 $c>25$ 时没有 marginal primary。** 此时 $h,\bar h>1$，特别排除 $(1,1)$。标准 unitary CFT 的非平凡局域 exactly marginal deformation 需要这样的算符。因此目标实现不能处在具有通常可微局域变形的正维 conformal manifold 上。这个结论不排除离散 ensemble，不证明不同 $c$ 的 isolated CFT 不存在，也不是关于所有奇异理论空间的拓扑分类。

### 2.2 不能误用 twist no-go

定义 Virasoro-primary twist $t=\Delta-|J|=2\min(h,\bar h)$，则目标要求 $t\ge a$。大 dimension gap 并不要求 twist 严格大于 $a$：可以有 $J\to\infty$ 而 $t\to a$，总 dimension 仍趋于无穷。

[Pal–Qiao–Rychkov](https://arxiv.org/abs/2212.04893) 的 twist-accumulation theorem 是应核对的严格结果；2609 §7、Appendix D.7 明确说明其 large-spin 行为与该结果兼容。[Benjamin–Ooguri–Shao–Wang](https://arxiv.org/abs/1906.04184) 提出的更强 $(c-1)/16$ twist bound，在摘要中就是由 vacuum density negativity **suggested** 的界，不能当成已经证明、无额外假设的 full-CFT no-go。2609 的无限修补不能与固定有限种子的大自旋极限交换，其自然种子族超出所比较的 growth control。当前没有据此排除目标谱。

第二轮已核对原始文献的精确适用范围。**PQR 的严格结论已经由目标的 genus-one 公理蕴含。** [2212.04893v3, 印刷 pp.19–20, Theorem 3.1](https://arxiv.org/pdf/2212.04893v3#page=22) 给出 $t_{\rm gap}\le a$，并要求有 $h_i\to a/2$、$\bar h_i\to\infty$ 的序列及左右互换；不要求从阈值下方逼近，不推出低 dimension。它仅使用正 character expansion、收敛、normalizable vacuum 与 $S$ 不变性。目标的物理 torus slice 可延拓到独立左右正逆温度，因为

$$
\sum d_\alpha e^{-\beta_Lh_\alpha-\beta_R\bar h_\alpha}
\le\sum d_\alpha e^{-\min(\beta_L,\beta_R)\Delta_\alpha}<\infty;
$$

局部正规收敛给出解析延拓。因此目标必须有 $\inf t=a$，但这个 infimum 不一定 attained；$\Delta_i\to\infty$ 与 $\Delta_1>a$ 不冲突。

[BOSW, 1906.04184v2](https://arxiv.org/pdf/1906.04184v2#page=14) 印刷 p.12 fn.9 要求靠近最小 twist 的 primary 数有限——这不是有限 **dimension** 下局部有限，且目标所需的 twist accumulation 不满足它。p.13 的 (5.5) 后明确写 “This is not yet a rigorous derivation”；Appendix C pp.25–27 对 accumulation 的讨论仍缺少指数窄能窗中双极限的统一误差控制。该附录较弱的 $t_{\rm gap}\le15a/16$ 同样不能当作已证明的无条件界。BOSW 的 $t_{\rm gap}$ 符号是本文物理 twist 的一半，引用 $(c-1)/32$ 时尤其要换算。

[Alday–Bae, 2001.00022v1](https://arxiv.org/pdf/2001.00022v1#page=21) §4.1, 印刷 p.20, (83)–(84) 先假设 uncensored 单种子 Poincaré series 张成全部 ambiguities，再假设 **ambiguity 种子密度** 至多多项式增长。§4.3 的不可修复负密度判断是在这一受限类及受控 twist accumulation 下成立，不是任意 full CFT 的 no-go；它也不是要求最终物理态密度多项式增长。2609 Appendix D.7 报告其自然修补种子族超出该增长类。本文尚未独立重证该附录全部估计；此处只说明旧 no-go 的假设不能直接套用。

### 2.3 sphere 与 genus-two 的现有结果也没有自动补上 no-go

[Quantum Regge Trajectories, 1811.05710v4](https://arxiv.org/pdf/1811.05710v4#page=28) 的 Virasoro mean field theory 包含 subthreshold 离散轨道，但对相同 scalar 外算符，这要求 $\alpha_O<Q/4$，等价于 $h_O<(c-1)/32$；目标所有非真空 $h_O\ge(c-1)/24$，不在这个轻外部范围。PQR §5, 印刷 pp.33–34 还指出，fusion 积分与无限 OPE 和的交换、从逐项抑制到整个和抑制，都需要另行控制。因此不能从轻外部 VMFT 的负 anomalous twists 断言这些全 heavy 谱必有 subthreshold states。

[1702.00423](https://arxiv.org/pdf/1702.00423v1#page=11) 印刷 pp.10–11 的某些 $(c-1)/16$ crossing 结论又专门限制交换的 Virasoro primaries **全为 spin zero**；它不是一般 CFT 的 twist upper bound。目标允许任意大 spin，且外维数不落在其排除区间。

[Genus Two Modular Bootstrap, 1705.05865v5](https://arxiv.org/pdf/1705.05865v5#page=13) §3.1, (3.3) 的 $\sum_{i=1}^3\Delta_i<(9\pi+5)c/(36\pi)\simeq0.29421c$ 明确针对没有 normalizable vacuum 的 noncompact CFT，不能直接套在目标上。一般 compact 情形的 §3.2, (3.5)、(3.7) 约束同一组 $C_{ijk}^2$ 加权的临界曲面；原文没有提供对本目标全部允许三元谱都具有排除符号的 functional。PQR 将 torus $S$ 方程重写成交换 orbifold twist field 的 sphere crossing，也仍是同一 genus-one 约束，不是新增的一项检验。

**截至这些已核查来源的结论：** 现有严格 twist accumulation 与目标相容；更强界有不适用或未证明的假设；尚未找到针对该谱族的 sphere/genus-two exclusion certificate。这不等于全球文献中绝无其他结果，更不等于目标已经通过 full-CFT bootstrap。

### 2.4 对一个直接声称 no-go 的新文献做原式审计

[Tierz, 2512.00361v1](https://arxiv.org/abs/2512.00361) 的 Theorem 3.6 宣称：compact、unitary、Virasoro-only 理论不能有 $\Delta_{\rm gap}\ge a$。其 PG1 还写有 “discrete, non-degenerate spectrum”：若指能级无简并，则目标允许的正整数大重数不满足此前提；若指非真空 Virasoro representations 无 null vectors，则是另一回事，不能自动消去这处歧义。即使暂按最有利于适用的解释，它若正确也将直接影响本问题，不能因为其他旧界不适用就跳过。2026-11-06 所见官方记录仅有 v1，未显示撤回或修订；**以下判断严格针对下载、提取并渲染核对的 v1 PDF，而不是搜索摘要。**

**判定：该版本给出的证明不成立，不能作为排除目标的严格定理。** 有以下可逐式复核的独立问题。

1. [PDF p.5, Lemma 2.1](https://arxiv.org/pdf/2512.00361v1#page=5) 将 Mordell integral 写成有限 shifted-sech 和。取其 $n=1,z=0$，左侧
   $$
   h(1,0)=\int_{\mathbb R}\frac{e^{\pi i w^2}}{\cosh\pi w}\,dw,
   \qquad |h(1,0)|\le\int_{\mathbb R}\operatorname{sech}(\pi w)\,dw=1
   $$
   绝对收敛；右侧按该页原式为 $\operatorname{sech}(\pi(z+i/2))$，在 $z=0$ 有非零 residue $-i/\pi$ 的极点。故原式不可能作为所述恒等式成立；左侧在 $|\operatorname{Re}z|<1/2$ 内解析，排除恰好 $z=0$ 也救不了其去心邻域的恒等式。这不是数值精度或物理解释问题。PDF p.6 的 Proposition 2.4 明确以代入 Lemma 2.1 为证明，而 p.9 将该 Proposition 列作 no-go 的证明输入，故错误直接影响证明链。
2. [PDF p.6, Lemma 2.2](https://arxiv.org/pdf/2512.00361v1#page=6) 定义 $W_n(r)=e^{\pi i r(r+1)/n}$，并对奇 $n$ 声称 $\sum_{r=0}^{n-1}W_n(r)=n e^{\pi i(1-n)/4}$。在 $n=3$，实际值为
   $$
   1+e^{2\pi i/3}+1=\frac32+\frac{i\sqrt3}{2},
   $$
   而所称右侧为 $-3i$。Mathematica 和 Sage cyclotomic field 均精确确认不相等。这里按 PDF 的分段公式检查；其偶数 $n$ 分支写零，不能误将别的转录公式拿来反驳它。
3. [PDF p.7, Definition 3.3 及后续 gap lemma 说明](https://arxiv.org/pdf/2512.00361v1#page=7) 写 $0=A_{\rm vac}+\int\Phi\rho$，却把 $A_{\rm vac}<0$ 与 $\Phi\rho\ge0$ 当作矛盾。它们完全可以相消，例如 $-1+1=0$。标准排除 functional 可取 vacuum 项严格为正、全部允许交换贡献非负（或整体反号），正如本文 §3 所写。
4. [PDF pp.12–13, §4.4, (11)](https://arxiv.org/pdf/2512.00361v1#page=12) 用 $e^{2\pi iJ/3}$ 的线性组合解释 odd-spin projector。即使接受这个相位前提，任何这类组合都只依赖 $J\bmod3$，不能区分 $J=0$ 与 $J=3$，而二者奇偶相反；因此该构造并未建立所用的 odd-spin spectral identity。原文 p.9 明确把 finite Gauss-sum basis 和 odd-spin crossing 列作 Theorem 3.6 的证明输入。

此外，PDF p.5 关于 $ST^nS$ 在上半平面有 elliptic fixed point 的说法也与

$$
S T^n S=\begin{pmatrix}-1&0\\n&-1\end{pmatrix},\qquad
\operatorname{tr}(ST^nS)=-2
$$

不符：$n\ne0$ 时它为 parabolic，唯一 fixed point 为实轴 cusp $\tau=0$；不要与另一个元素 $ST$ 的 elliptic fixed point 混同。

这些错误足以使现有证明链失效；本文**没有**据此证明 Theorem 3.6 的结论本身必然为假，也不排除未来出现不同的正确 no-go。判断范围是“该版本未提供有效证明”。本审计也不以 2609 的谱存在性定理为前提，因此不是用待审的一个论文结论循环反驳另一个结论。

作为近期 sphere-bootstrap 方法参考，[Nakayama, 2611.03217](https://arxiv.org/html/2611.03217v1) 实际检验了 near-$c=1$ 的候选 modular spectra 的 lightest-scalar four-point crossing，说明这种检验在实践中可做；但它的 central-charge/外维数窗口不覆盖这里的充分大 $c$、$\Delta_O\sim c$。本文仅核对其 HTML 的方法与适用范围，没有将其数值 exclusions 当成对目标的 certified theorem。

## 3. single CFT 真正欠缺的数据：不是再做一次谱修补

令 $I=(\alpha,r)$，$1\le r\le d_\alpha$ 为每个 primary 的真实简并度标签，选择正交 two-point metric。所需数据至少包括全套 $C_{IJK}$，以及其共轭、置换和自旋相位条件。单位算符要求 $C_{0IJ}$ 为 two-point pairing；不能把全部非真空耦合随意设成零。

若第一层有 Hermitian scalar $O$，取其 four-point function，并把位置 prefactors 吸收到 $\mathcal B_{h,\bar h}$。一个必要条件是

$$
\mathcal B_{\rm vac}^{(s)}-\mathcal B_{\rm vac}^{(t)}
+\sum_\alpha p_\alpha
\left(\mathcal B_\alpha^{(s)}-\mathcal B_\alpha^{(t)}\right)=0,
\qquad
p_\alpha=\sum_{r=1}^{d_\alpha}|C_{OO(\alpha,r)}|^2\ge0.
$$

对于相同 bosonic scalar，只有允许的偶整数 spin 交换。这里 crossing 看见的是 **OPE 加权重数** $p_\alpha$，不是谱重数 $d_\alpha$；整数矩匹配不为它提供数值。即使某个 $p_\alpha$ 解存在，还要让 mixed correlators、不同外算符、torus one-point functions 使用同一套 $C_{IJK}$。

一个可证伪方案是构造 linear functional $\Lambda$，使 $\Lambda(\mathcal B_{\rm vac}^{(s)}-\mathcal B_{\rm vac}^{(t)})>0$ 且对全部允许交换权重有 $\Lambda(\mathcal B_\alpha^{(s)}-\mathcal B_\alpha^{(t)})\ge0$。这会排除相应谱类；但目前本文没有这样的 functional。有限截断无解若缺少高维 tail 认证，不是无限维 no-go。主文 p.47 也明确将 heavy-external crossing 和 certified individual energies 列为下一步。

### 3.1 genus two 与更高 genus

以两个 pants 沿三条边 sewing 的 genus-two 展开为例，在反射共轭 sewing 约定下，primary 系数具有 $|C_{IJK}|^2$ 的形式，后裔由 Virasoro Gram matrices 和 blocks 决定。对一般复 moduli，blocks 本身不必逐点为正；正性指相应 Hilbert-space pairing 和反射正的截面。

谱只确定传播的模块和 two-point pairing 的维数，不确定 trivalent vertex $C$。把每条边的积分换成 $\sum_\alpha d_\alpha$，并不能保证 different pants decompositions 给同一结果。必须同时验证：

- 改变 pants decomposition 的 fusion/braiding moves；
- separating degeneration 回到同一 torus partition functions 与 one-point functions；
- nonseparating degeneration 使用同一 Hilbert-space resolution of identity；
- 所有 OPE-weighted 高能 tails 的收敛，而不只是 $\sum d_\alpha e^{-\beta E_\alpha}<\infty$。

[Genus Two Modular Bootstrap](https://arxiv.org/abs/1705.05865) 明确提供了超出 sphere crossing 的 structure-constant constraints。它是检验框架，不是任意 genus-one modular invariant 自动延拓的定理。2609 pp.46–47 已清楚承认缺口；这里不把缺口误写成作者已经完成的部分。

## 4. exact 正概率 ensemble：支持定理与精确适用范围

先固定 $c$。考虑同一 measurable theory space 上的概率测度 $\mathbb P$，各成员具有正谱测度 $\mu_\omega$，且相应热积分可交换。假设要求的是完整 torus function 的精确等式，而不只是某个温度点或大 $c$ 渐近。Fourier–Laplace 唯一性允许将其写成

$$
\mathbb E_{\mathbb P}\mu_\omega=\mu_*.
$$

这一 primary-measure 等式需要一个预备步骤：先对**全态谱** $\nu_\omega$ 用 Fourier–Laplace 唯一性得到 $\mathbb E\nu_\omega=\nu_*$。固定 $c$ 的共同 vacuum module 可逐成员扣除，余量仍为正；目标余量没有任一 chiral weight 低于 $a/2$ 的 states，因此由下面的零质量论证，成员也不能有这些 states。排除额外 chiral primaries 后，才可以用共同的 nonvacuum Virasoro characters 得到上式。不能未经说明对不同 chiral algebra 的成员直接将 $|\eta|^2Z-Z_{\rm vac}|\eta|^2$ 当成正 primary measure。以下 $\mu$ 已指完成此步骤后的 primary 测度；同一个支持证明也直接适用于全态测度 $\nu$。

### 4.1 支持刚性命题

**命题。** 设 $S=\operatorname{supp}_{\rm atoms}\mu_*$ 是局部有限目标谱的可数原子集合。则几乎处处

$$
\mu_\omega(S^c)=0.
$$

**证明。** 对可数递增的有界区域 $K_n$，

$$
0=\mu_*(K_n\setminus S)
=\mathbb E\,\mu_\omega(K_n\setminus S).
$$

非负随机变量的均值为零意味着它几乎处处为零；对可数个 $n$ 取共同满测集，再令 $n\to\infty$ 即得。这里必须在“整个补集”或其可数穷尽上论证，不能只逐个固定点证明概率为零后，对不可数点取交。

**后果。** 所有成员只能在同一确定的谱格点集上改变非负整数重数：$N_s(\omega)\in\mathbb Z_{\ge0}$、$\mathbb E N_s=d_s$。连续随机移动能级的一般模空间平均不可能恰为该离散目标。若全态目标无非真空 chiral states，那么成员也不能有；继而可共同作标准 primary decomposition，并继承 primary support 和 gap 下界。

这不是“exact ensemble 必须退化成单个理论”的证明。反例是 $N=0,2$ 各以概率 $1/2$ 出现：$\mathbb E N=1$ 而 $\operatorname{Var}N=1$。这只是概率论反例，不声称这两个谱已经是 CFT。

目标第一层平均重数非零，只迫使正概率的一部分成员具有该层，不迫使每个成员的 gap 都恰好相同。若每个成员至少有一个 normalizable vacuum，而平均真空重数为一，则 $n_{\rm vac}=1$ 几乎处处。没有“每个成员至少一个真空”的前提时，仅凭整数均值一不能得出此结论。

对 $c>25$，前节无 marginal 的结论又进一步排除通常的 conformal-manifold averaging 机制，但不能排除 isolated CFTs 的离散平均。

### 4.2 signed MWK 的有限范围 no-go

**正谱的正概率平均仍是正谱。** 因此未经修补的 MWK signed density，包括负 threshold contribution，不可能是上述 exact ensemble 的平均。该判断排除的是“完整 MWK 函数就是 exact positive mean”，不是“某个渐近展开的中间项有负号”。近极端非一致展开经 resummation 后可以变成正量，必须区分。

同理，若一个 proposed mean 在某个可测能窗有严格负质量，则任意正概率 CFT ensemble 均被排除；不需要先做 crossing。这一结论对已修补的 $\mu_*$ 不产生矛盾，因为它已经非负。

### 4.3 将 ensemble 问题化为固定支持上的 modular rigidity

还有一个比直接搜索概率测度更具体的充分判据。令 $\mathcal V_S$ 为满足以下条件的实有符号 primary 测度 $\sigma$ 的线性空间：支持于目标 $S$，每个 $\beta>0$ 下热总变差有限，无真空变化，且

$$
Z_\sigma(\tau)=\sum_{s\in S}\sigma_s\,
\chi_{h_s}(\tau)\overline{\chi_{\bar h_s}(\tau)}
$$

为 modular invariant。这里不要求 $\sigma_s$ 为整数，也不要求正性。

**条件命题。** 若 $\mathcal V_S=\{0\}$，则任何 exact 正 CFT ensemble 以 $Z_*$ 为平均时，几乎所有成员都 torus-isospectral。证明是对共同满测集上的每个成员取 $\sigma=\mu_\omega-\mu_*$；两谱正且热收敛，使差的热总变差有限，modular invariance 和固定支持使其属于 $\mathcal V_S$，于是为零。

这是把 ensemble 问题降为确定性 modular uniqueness 的路线，尚未证明本文任一目标 $S$ 满足它。即使 $\mathcal V_S\ne0$，也还要检查正整数可行性和 full-CFT lifting，不能把任一 signed modular deformation 当作物理随机方向。即使 $\mathcal V_S=0$，仍只排除谱随机性，不排除 OPE 随机性。

### 4.4 不能仅靠正的重态增量修补；一个 threshold 反例

**命题（本笔记的谱论推导）。** 设 $\sigma\ne0$ 是非负原子 primary 测度，其原子支撑在每个有限能窗中只有有限点，支持于 $e\ge|J|$，在所有正温度下热可求和，没有真空模块，且其 nonvacuum character sum $Z_\sigma$ 自身 modular invariant。这里要求的是支撑局部有限，强于仅要求测度在紧集上的质量有限；目标的正整数谱满足此前提。那么 $\sigma$ 必须在 $(e,J)=(0,0)$ 有原子。

**证明。** 假设没有该原子。因 uncensored support 与局部有限性，存在正的最小 $e_g>0$。记 $F_\sigma(iy)=\sqrt y\sum_s d_s e^{-2\pi ye_s}$，$C=\sum_s d_s e^{-2\pi e_s}<\infty$。任取一个原子 $(e_0,d_0)$，$0<y<1$ 时

$$
d_0\sqrt y\,e^{-2\pi ye_0}\le F_\sigma(iy)
=F_\sigma(i/y)
\le\frac C{\sqrt y}\,e^{-2\pi e_g(1/y-1)}.
$$

右端除以左端在 $y\to0^+$ 时趋于零，矛盾。因此正的、无真空 modular correction 不能只存在于严格正 shifted energy。特别地，对 $\delta>0$ 的目标，不能保持 vacuum 和 gap 不变，仅通过“再加一些 states”得到另一个不同的 modular spectrum。两个此类谱若逐点可比较，就必相同。该命题不排除 signed differences，也不排除本文的递归修补；恰恰说明相对修补为何必须允许有符号。

$e=0$ 例外确实存在，不应删掉。取固定 $R>0$、$\alpha'=1$，用 [Narain 圆紧化公式 (2.3)–(2.6)](https://arxiv.org/html/2006.04855) 定义

$$
W_R(\tau)=\frac1{|\eta(\tau)|^2}
\sum_{n,w\in\mathbb Z}
\exp\!\left[-\pi y\left(\frac{n^2}{R^2}+w^2R^2\right)+2\pi ixnw\right].
$$

同一个 modular function 可以在任意固定 $c>1$ 下**仅作为形式 Virasoro 模块谱**重新标记为

$$
h_{n,w}=\frac a2+\frac14(n/R+wR)^2,\qquad
\bar h_{n,w}=\frac a2+\frac14(n/R-wR)^2,
$$

$$
e_{n,w}=\frac12(n^2/R^2+w^2R^2),\qquad J=nw.
$$

它具有正整数重数、uncensored support、一个 $e=J=0$ 原子，但没有 $h=\bar h=0$ 的 $c>1$ 真空。它不是 central charge $c$ 的 full CFT；不能将 central charge 的形式重标记当成改变 stress-tensor OPE 的合法操作。

这个例子还能构造一个**确切但仅限 genus-one 的非平凡 spectral ensemble**。若 $Z_0\in\mathcal U_c$ 是 fixed-$\delta=0$ 的 BTZ-matching 成员，则 $Z_0$、$Z_0+W_R$、$Z_0+2W_R$ 都保持唯一真空、gap $a$、正整数重数和 modular invariance。等概率取 $Z_0$ 与 $Z_0+2W_R$，其平均恰为 $Z_0+W_R$，且谱 covariance 非零。$W_R$ 在 $E\sim c$ 的固定宽度态计数至多 $\operatorname{poly}(c)e^{O(\sqrt c)}$，所以这些增量不改变 $Z_0$ 的全部固定阶 BTZ 平滑展开。

这给出了“integer modular spectra 可以有非平凡 exact average”的具体例子，却没有给出 CFT ensemble：三个谱均缺少 OPE 数据。此外，它们属于同一目标谱类，不声称加上 $W_R$ 后仍是原文固定 schedule/selector 的字面输出。对 $\delta>0$，该操作会把 gap 降到 $a$，故不能用来保留原 gap。

## 5. 多边界振幅比平均 $Z$ 多出哪些约束

对正温度 real observables $X_i(\omega)=Z_\omega(\beta_i)$，假设二阶矩存在。若 ensemble interpretation 成立，connected two-boundary amplitude 必须是

$$
K_{ij}=\mathbb E(X_iX_j)-\mathbb E X_i\,\mathbb E X_j,
\qquad
\sum_{ij}u_iK_{ij}u_j=\operatorname{Var}\!\left(\sum_i u_iX_i\right)\ge0.
$$

对含角势的复 $Z$，正确条件是 Hermitian kernel $K(\tau,\sigma)=\mathbb E[\delta Z(\tau)\overline{\delta Z(\sigma)}]$ 的正半定性，不是无共轭 kernel 任意点都正。off-diagonal covariance 可以为负。

**零 covariance 的准确结论。** 若在能确定 joint spectrum 的可数稠密温度/角势集合上，所有 diagonal variances 都为零，并有连续性及 Fourier–Laplace 唯一性，则几乎所有成员具有相同 torus function。只测试无角势 $Z(\beta)$ 最多固定总能谱，不能分辨不同自旋分配。即使完整 torus function 固定，也没有固定 OPE；不同 isospectral CFT 数据仍可能在带插入或 higher-genus observables 上产生 ensemble correlations。

零 torus covariance 不等于单一 CFT 并非只有抽象可能性：[Gaberdiel–Volpato, 0903.4107](https://arxiv.org/abs/0903.4107) 比较的 $c=16$ meromorphic $E_8\times E_8$ 与 $\mathrm{Spin}(32)/\mathbb Z_2$ 理论具有相同 genus-one partition function，而 current algebras 不同；其 vacuum amplitudes 到 genus five 才区分。各自配上 antiholomorphic copy 得到 $c_L=c_R=16$ 的 compact unitary 例子；在二者间作非平凡平均，所有二阶及以上 connected torus cumulants 仍为零。这些有 currents 的理论不是目标大 gap 谱的例子，只反驳“torus-isospectral $\Rightarrow$ 同一完整 CFT”。

对于前节的固定 atomic support，在二阶矩足够存在时谱 covariance 的支持只能位于 $S\times S$，thermal kernel 具有

$$
K_{\rm prim}(\beta_1,\beta_2)=\sum_{s,t\in S}\operatorname{Cov}(N_s,N_t)
 e^{-\beta_1 E_s-\beta_2 E_t}
$$

的含义（可先以有限窗截断，再讨论极限）。此处是 primary Boltzmann sum 的 covariance，$E_s=\Delta_s-c/12$；完整 torus trace 的 covariance 还要乘共同的 descendant factors $G(\beta_1)G(\beta_2)$，其中 $G(\beta)=\prod_{n\ge1}(1-e^{-n\beta})^{-2}$，确定的真空模块不贡献 covariance。因此若 bulk 提供的是非零、绝对连续的 **exact** joint spectral covariance，它不能与同一个离散 exact mean 和正 ensemble 同时成立。平滑或渐近意义的连续 covariance 不受此反证；量词是关键。

更高多边界振幅应对应 cumulants；判断概率测度是否存在，要先把 cumulants 组合成完整 moments，再要求任意多项式 $P$ 满足

$$
\mathbb E|P(X_1,\ldots,X_n)|^2\ge0.
$$

这产生全部 moment matrices 的正半定条件。只有 two-boundary PSD 不保证所有高阶矩来自同一个正概率测度；正性和适当存在性/增长条件需一起处理。也不能从 genus-one 平均量推导这些 cumulants。

一个可直接使用的 higher-moment certificate 是：令某个 real observable 居中为 $X$，$v=\mathbb E X^2$、$t=\mathbb E X^3$、$u=\mathbb E X^4$，则

$$
M=\begin{pmatrix}1&0&v\\0&v&t\\v&t&u\end{pmatrix}\succeq0,
\qquad \det M=vu-t^2-v^3\ge0.
$$

若 $v>0$，用 connected cumulants $\kappa_2=v$、$\kappa_3=t$、$\kappa_4=u-3v^2$ 表示，得到

$$
\kappa_4\ge\frac{\kappa_3^2}{\kappa_2}-2\kappa_2^2.
$$

所以任意宣称给出完整二、三、四边界 cumulants 的处方，都可以先接受这项无需求 OPE 的检验。它是必要条件而非充分条件。对整数计数 $N_s$ 还另有 $\mathbb E[(N_s-k)(N_s-k-1)|P|^2]\ge0$（整数 $k\ge0$），来自被积因子对每个非负整数 $N_s$ 均非负；一般实数随机变量的 moment PSD 没有自动编码这些限制。

还有一个有限谱窗的稳定性结论。若 $\mathbb E N_s=d_s\in\mathbb Z$，则

$$
\mathbb P(N_s\ne d_s)\le\operatorname{Var}N_s,\qquad
\mathbb P(\mu_\omega|_I\ne\mu_*|_I)
\le\sum_{s\in S\cap I}\operatorname{Var}N_s
$$

对含有限个目标原子的窗口 $I$ 成立。这由整数偏差非零时平方至少为一及 union bound 得到。它需要 atom-resolved covariance；小的 thermal 或平滑 covariance 不自动给出这个逆谱信息。所有 $1/c$ 阶 covariance 为零也不够，例如 $e^{-c}$ 是非零 variance。

对于固定 single CFT，互不耦合的 disconnected boundaries 的**完整** partition function 因 locality 而精确 factorize。非零 connected wormhole saddle 本身不与此直接矛盾：完整 bulk sum 可能有抵消、不同积分处方，或 saddle 计算本来就在描述 coarse-graining。只有宣称该 connected amplitude 就是固定 CFT 的完整 disconnected-boundary observable，才产生 factorization 冲突。不要把边界相连的 genus-two amplitude 与两个 disconnected tori 的 covariance 混同。

### 5.1 具体检验：Cotler–Jensen torus wormhole

[Cotler–Jensen, 2007.15653v3](https://arxiv.org/pdf/2007.15653v3) pp.14–15, (3.25)–(3.28) 给出一个可以完整分析的 fixed-spin leading kernel。以下仍用本笔记的物理逆温度 $\beta=2\pi\operatorname{Im}\tau$ 和能量 $E=\Delta-c/12$；CJ 原文用 $\beta_{\rm CJ}=\operatorname{Im}\tau$，能量因而多 $2\pi$。定义非零固定 spin $s$ 的 threshold

$$
E_s^{\rm edge}=|s|-\frac1{12}.
$$

在未额外 gauging time reversal 的约定下，其 primary leading kernel 是

$$
K^{\rm CJ}_{ss'}(\beta_1,\beta_2)
=\delta_{ss'}\frac1{2\pi}\frac{\sqrt{\beta_1\beta_2}}{\beta_1+\beta_2}
 e^{-E_s^{\rm edge}(\beta_1+\beta_2)}.
$$

$2\pi$ 的温度换元不改变这个 prefactor。此式是 translation subgroup 贡献的精确 Fourier transform，同时是完整 $T^2\times I$ modular sum 的低温主项；它不是包含所有 connected bulk topologies 的完整 covariance。零 spin 还涉及 regularization ambiguity，以下不将非零 spin 的结论自动推广过去。

**PSD 检验通过。** 有精确 Gram 分解

$$
K^{\rm CJ}_{s}(\beta_1,\beta_2)
=\frac1{2\pi}\int_0^\infty du\,
\left[\sqrt{\beta_1}e^{-\beta_1(E_s^{\rm edge}+u)}\right]
\left[\sqrt{\beta_2}e^{-\beta_2(E_s^{\rm edge}+u)}\right].
$$

因此任意有限温度组的矩阵为 PSD。谱反演的 off-diagonal 负号不构成 PSD 反例。

**但它的分布反演不是局部有限 signed spectral measure。** 为明确 diagonal prescription，令 $x=E_1-E_s^{\rm edge}$、$y=E_2-E_s^{\rm edge}$，定义局部可积函数

$$
F(x,y)=\Theta(x)\Theta(y)
\log\frac{\sqrt x+\sqrt y}{|\sqrt x-\sqrt y|},\qquad
\mathcal C_s=\frac1{2\pi^2}\partial_x\partial_y F
$$

（导数按分布取）。对 $x,y>0$ 有

$$
F(x,y)=\int_0^{\min(x,y)}\frac{du}{\sqrt{(x-u)(y-u)}},\qquad
\mathcal L_x\mathcal L_y F=
\frac\pi{\sqrt{\beta_1\beta_2}(\beta_1+\beta_2)}.
$$

分布导数乘以 $\beta_1\beta_2$ 后，恰得到去掉 threshold 指数的 $K^{\rm CJ}_s$。在 $x\ne y$ 的内部，

$$
\mathcal C_s(x,y)=-\frac{x+y}{4\pi^2\sqrt{xy}(x-y)^2},
$$

与原文 (3.28) 一致。不能用这个 off-diagonal 函数直接作普通双积分，忽略 distributional diagonal/edge prescription。

任取 $0<A<B$，在 $[A,B]^2$ 上它沿对角线具有 $-1/[2\pi^2(x-y)^2]$ 奇性；去掉宽 $\varepsilon$ 对角带后的 total variation 发散如 $1/\varepsilon$。因此 $\mathcal C_s$ 不是局部有限 signed Radon measure。反之，随机正谱若满足某个 $\beta_0>0$ 的 $\mathbb E Z_s(\beta_0)^2<\infty$，则每个紧能窗的二阶计数矩有限，$\mathbb E(\rho_s\otimes\rho_s)-\mathbb E\rho_s\otimes\mathbb E\rho_s$ 必为局部有限 signed measure。故不能把上述 leading kernel 宣称为满足这些假设的 exact full spectral covariance。

这里的反演是将明确写出的 leading 函数作为全部正 $\beta$ 上的函数进行数学反演；仅知道低温渐近，不足以断言真实谱 covariance 就是该分布。这是对其**错误 exact 升级**的 no-go，不是对 CJ 近似的反驳。

### 5.2 两个可直接用于目标谱的 conditional no-go

**空能窗检验。** 固定 $c,s$，目标的局部有限性允许选取 $E_s^{\rm edge}$ 上方一个无目标原子的开区间 $I$。exact positive mean 的支持定理迫使每个成员在 $I$ 的计数为零。因此对 $0\ne f\in C_c^\infty(I)$，exact variance 为零；而以上 CJ 分布满足

$$
\mathcal C_s(\bar f\otimes f)
=\frac1{2\pi^2}\int_0^\infty du\,
\left|\int_u^\infty\frac{f'(x)}{\sqrt{x-u}}\,dx\right|^2>0,
$$

其中已将能量平移到 $x$，严格性由 Abel transform 的单射性给出。如果写 $K_{\rm exact}=K_{\rm CJ}+R$，则在该测试上 $R=-K_{\rm CJ}$；修正不能始终相对小，也不可能只是再加一个 PSD covariance。真实拓扑贡献未必各自 PSD，故这不排除完整拓扑求和中的抵消。该测试可能精细到逐能级分辨率，正是半经典 leading kernel 未受控的范围。

**固定 $c$、任意低温的 ratio 检验。** 假设每个成员严格满足 $E\ge E_s^{\rm edge}$，且某个温度下二阶热矩有限。令

$$
Y_\beta=e^{\beta E_s^{\rm edge}}Z_{{\rm prim},s}(\beta)
=\int e^{-\beta(E-E_s^{\rm edge})}\,d\rho_s(E).
$$

对 $\beta\ge\beta_0$，$0\le Y_\beta\le Y_{\beta_0}$，且 $Y_\beta\to N_s(E_s^{\rm edge})$。$L^2$ dominated convergence 因而给出，对每个固定 $r>0$，

$$
\lim_{\lambda\to\infty}e^{E_s^{\rm edge}(r+1)\lambda}
\operatorname{Cov}\big(Z_{{\rm prim},s}(r\lambda),Z_{{\rm prim},s}(\lambda)\big)
=\operatorname{Var}N_s(E_s^{\rm edge}),
$$

右侧与 $r$ 无关；无 threshold atom 时为零。CJ 函数的同一极限却为 $\sqrt r/[2\pi(1+r)]$，例如 $r=1,4$ 分别给 $1/(4\pi),1/(5\pi)$。所以在固定 $c,s$、$\lambda\to\infty$ 时，对于两个满足 $g(r_1)\ne g(r_2)$ 的固定 ratio（$g(r)=\sqrt r/[2\pi(1+r)]$，例如 $r_1=1,r_2=4$），不可能同时有 $K_{\rm exact}-K_{\rm CJ}=o(K_{\rm CJ})$。仅要求误差的绝对值小于主项并不够，且 $r$ 与 $1/r$ 给相同的 $g$，不能用这对 ratio 推矛盾。若没有 threshold atom，右侧 exact 极限为零，则任意一个固定 ratio 已足以排除此种 $o$-relative 渐近。这个论证甚至不需要共同 atomic support，只需要正谱、硬 edge 与热二阶矩。

CJ 并未给出这个 uniform fixed-$c$ 假设。[2006.08648v3](https://arxiv.org/pdf/2006.08648v3#page=45) 印刷 pp.43–45, (5.5)–(5.12) 的讨论是低温、大 spin 的 near-extremal window，并限制时间不能 exponentially long。其 JT-limit 来源 [1912.07654 §1.2、§2.2](https://arxiv.org/html/1912.07654) 给出 $c\gg1$、$\beta\sim c$、$|s|\gg c$ 的受控窗口，并指出 exponentially low temperatures 下非微扰拓扑修正会失控。2609 的 fixed-$E/c$ 平滑 one-point theorem 完全没有证明这种 two-point、固定-$c$ 的极限可交换。

## 6. approximate ensemble 是合理方向，但目前不是完成的实现

[Approximate CFTs and Random Tensor Models, 2308.03829v2](https://arxiv.org/html/2308.03829v2) 明确把 approximate CFT 定义为：在指定外维数、插入数、genus、kinematics 和 tolerance 下近似满足 CFT constraints 的数据。它提出通过 constraint moments、非 Gaussian OPE statistics 和 Virasoro $6j$-symbol 组织 random matrix/tensor model。此定义不能缩写为“正确的平滑 density of states”。

若 $R_A(\omega)$ 表示某个 crossing/sewing residual，则

$$
\mathbb E R_A=0
$$

允许不同成员的误差相消，不意味着任何成员满足约束。正概率下

$$
\mathbb E|R_A|^2=0\quad\Longrightarrow\quad R_A=0\ \text{a.s.}
$$

是严格结论；若仅有 $\mathbb E|R_A|^2\le\epsilon_A^2$，则 Chebyshev 给 $\mathbb P(|R_A|>\eta)\le\epsilon_A^2/\eta^2$。它可以定义受控 approximate ensemble，但要扩展到所有约束还需可数稠密测试、连续性、tightness、uniform tail control 等输入。

对 spectral approximation 也可以给出精确但较强的标准。设

$$
\|\mathbb E\mu_\omega-\mu_*\|_\beta
:=\int e^{-\beta e}\,d|\mathbb E\mu_\omega-\mu_*|\le\epsilon.
$$

若 $A\subset\{e\le R\}$ 是目标零质量区域，而成员是整数计数谱，则

$$
\mathbb P(\mu_\omega(A)\ge1)
\le\mathbb E\mu_\omega(A)\le e^{\beta R}\epsilon.
$$

但 2609 的 BTZ 平滑比较并不给这个 thermal total-variation 界：移动一个原子的位置可以使所有固定连续测试接近，而不同点单位原子的未加权 TV 距离仍为 $2$。因此不能将其 all-order smoothed entropy theorem 直接转成“绝大多数 exact CFT 成员没有 forbidden states”的概率结论。

最贴近当前谱构造的候选是：先固定或随机选择满足 2609 条件的谱，再给 $C_{IJK}$ 一个带 crossing/sewing penalty 的正分布。但以下都尚未证明：该分布可归一化；cutoff 去除后概率质量不逃向无穷；零 penalty limit 有非空支撑；该支撑保持目标 gap；得到的 wormholes 与 Einstein gravity 一致。

特别是，当 $c\to\infty$ 时非真空 primary 都是 heavy。只验证 fixed-$O(1)$ dimension 外算符，可能几乎只测试 vacuum sector，对 heavy-heavy crossing 没有约束力。必须说明观测窗口是否覆盖 $\Delta\sim c$，而不能用“低能 probes 看不出差别”完成真正 CFT 的存在证明。

### 6.1 已有的 matrix–tensor 候选离 exact realization 还有什么距离

[Jafferis–Rozenberg–Wong, 2407.02649v4](https://arxiv.org/html/2407.02649v4) 将 spin 分级的 dilation matrices 与 $C_{ijk}$ 同时积分，用 constraint-squared potential 惩罚 bootstrap residual，并将 Feynman diagrams 组织成三流形拓扑展开。它在 fixed hyperbolic topology 上与 VTQFT 对接，而在 non-hyperbolic/off-shell topologies 上作了不同定义；这种区别会影响 spectral statistics，不能把两者的 wormhole kernels 无条件互换。

原文给出的尚缺条件非常具体：

- 印刷 pp.3、7：从 Cardy density 展开，但明确**不严格禁止 subthreshold operators**；cutoff 后再作 $N\to\infty$、constraint regulator 与 tolerance 去零，并重组为渐近 $e^{-c}$ 展开。因此该候选并未直接实现目标的 exact hard edge。
- 印刷 p.12, (2.25)–(2.28)：在 $C_{ijk}=0$ 附近展开的二次项有 wrong sign，原文解释为围绕 unstable maximum 的形式展开。这不证明完整 constraint-squared potential 不可归一化，却意味着形式 propagator 不能直接读作一个正概率分布的 exact covariance。
- [印刷 p.63, §6](https://arxiv.org/pdf/2407.02649v4#page=65)：逐阶满足约束仍以相关 Schwinger–Dyson equations 被解出为条件；exact bootstrap 还需非微扰 resummation，原文所期待的 doubly nonperturbative completion 尚未给出。
- 印刷 p.64：$S^2\times S^1$ factors 的发散、matrix/tensor diagrams 对同一 off-shell topology 的重复计算、modular cusp regularization，均被列为 loose ends。

所以这是一条具体、可进一步研究的候选构造，不是“所有有限 $c$ 下已有 exact positive CFT ensemble”的定理。就本任务而言，至少还要同时证明：去 cutoff 后的正概率测度存在；其支持满足 exact uncensored bound；谱 mean 是所选 $Z_*$；同一 OPE tensors 完成全套 sewing。只解决形式拓扑枚举不能代替这些存在性问题。

### 6.2 零 tolerance 并不自动产生 exact CFT：反例与充分条件

这是 constraint-squared proposal 最容易形成循环论证的地方。对有限 cutoff，写

$$
d\mathbb P_\varepsilon(x)=Z_\varepsilon^{-1}
 e^{-V(x)/\varepsilon}\,d\mu_0(x),\qquad
V(x)=\sum_A|R_A(x)|^2.
$$

即使 $\mathbb P_\varepsilon$ 对每个 $\varepsilon>0$ 都是正规的正概率，$\varepsilon\to0$ 也只保证在适当紧性假设下趋向 $V$ 的 minima，不保证 minima 的值为零。一个完全显式的反例是 $X=[-1,1]$、Lebesgue base measure、$R(x)=1+x^2$。此时 $V=(1+x^2)^2\ge1$、$\mathbb P_\varepsilon\Rightarrow\delta_0$，但极限 residual 为 $R(0)=1$ 而不是零。把 $x=\sqrt\varepsilon y$ 后，归一化时共同的 $e^{-1/\varepsilon}$ 抵消，剩下 $e^{-2y^2-\varepsilon y^4}$，直接显示这一极限。

即使所有固定 residual 的期望都趋零，也还需要 tightness。取 $X=\mathbb R$、$R(x)=e^{-x}$、$\mathbb P_n=\delta_n$，有 $\mathbb E_nR^2=e^{-2n}\to0$，但没有有限 $x$ 使 $R=0$，且概率质量逃向无穷。这是概率论反例，不是某个 CFT 模型；它说明逻辑上缺少的输入是什么。

**条件存在性命题。** 设候选数据空间 $X$ 是 Polish space，$\{\mathbb P_n\}$ 是 tight 的正规化正概率族；所有需要的约束可表示为可数个 residual $R_j$，使 $|R_j|^2$ 非负且 lower semicontinuous，并且对每个固定 $j$ 有 $\mathbb E_n|R_j|^2\to0$。则存在弱收敛子列到正规化概率 $\mathbb P_\infty$，且

$$
\int |R_j|^2\,d\mathbb P_\infty
\le\liminf_{n\to\infty}\int |R_j|^2\,d\mathbb P_n=0,
\qquad
\mathbb P_\infty\!\left(\bigcap_{j=1}^\infty\{R_j=0\}\right)=1.
$$

第一步是 Prokhorov compactness，第二步是 Portmanteau 加可数交。因此这些明确前提可以把 approximate constraints 提升成非空 exact solution set。若还要保留 $\mathbb E Z=Z_*$，需相应观测量的连续性和 uniform integrability；若要保留 hard gap、整数重数、唯一真空及反射正性，必须证明这些条件在所选极限拓扑下闭合或另有不丢失控制。

**这尚不是本任务的存在证明。** 无限 OPE sums 的 uniform tails 才能保证真正 crossing/sewing residual 的连续或 lower-semicontinuous 性；逐个 cutoff 上的多项式约束自动连续，不代表去 cutoff 后仍如此。还须使列出的约束足以重构 local unitary CFT，而不只是某些 correlators 的形式解。目前没有为 2609 的目标谱建立这些紧性、tail 和 reconstruction 前提。

相应的确定性路线是：固定一个目标谱，对每个 $C_{IJK}$ 建立有限 bounds 形成紧的候选数据空间，证明每个有限约束子集可同时满足，并证明全约束集合为闭集。finite-intersection compactness 才会给出完整数据解。有限数值测试通过既不保证每个有限子集可行，也不提供这项紧性；但这是一条明确、非循环的构造目标。

## 7. Wilson lines / DS reduction：当前能接上的层次

[2608.14541](https://arxiv.org/abs/2608.14541v1) 的原文区分得很清楚：Wilson networks 计算 conformal blocks；其 skeleton 不决定有哪些 primaries 及其 multiplicities；完整理论仍需要 sewing-compatible discrete bootstrap data。对 noncompact $SL(2,\mathbb R)$ CS 的充分量子化也被列为未解决输入。因此不能把“给定一个 heavy primary 的 bulk realization”换成“产生所有 heavy primaries 及黑洞重数的 theory”。

其与目标谱的无歧义运动学接口是 Liouville/Virasoro momentum：

$$
c=1+6Q^2,\qquad h=\frac{Q^2}{4}+P_L^2,\qquad
\bar h=\frac{Q^2}{4}+P_R^2,
$$

于是

$$
P_L^2=\frac{e+J}{2},\qquad P_R^2=\frac{e-J}{2}.
$$

所有 uncensored targets 因而具有 real momenta。但 $P_L=0$ 或 $P_R=0$ 是允许的 edge，包括 $\delta=0$ 的 scalar threshold；证明若仅适用于 generic real momentum 或严格 $P>0$，就不能覆盖这些端点。

### 7.1 该文的 level/weight dictionary 与尚未证明的部分

以下页码指 2608 的**印刷页码**，PDF 页码比它大一；不能与 2609 的页码约定混用。其 cylinder DS constraint 为 $J^-_n=\delta_{n0}$，使用 one-unit flow $\omega=-1$，不是任意 flow sector。取

$$
T_{\rm tot}=T_{\rm Sug}-\partial J^3+T_{bc},\qquad
(b,c)\ \text{ghost weights}=(0,1),\qquad k>2,
$$

则 [pp.17–19, (2.25)–(2.35)](https://arxiv.org/pdf/2608.14541v1#page=18) 给出

$$
c(k)=\frac{3k}{k-2}+6k-2
=1+6(b+b^{-1})^2,\qquad b^{-2}=k-2,
\qquad L_0^{\rm phys}=L_0^{\rm Sug}+L_0^{\rm gh}+\frac k4.
$$

这里 Liouville 参数 $b$ 与 ghost field $b$ 是惯用的重名符号，不是同一对象。零级离散和主连续表示分别给

$$
h_j=\frac k4-\frac{j(j-1)}{k-2}
=\frac{c-1}{24}-\frac{(j-1/2)^2}{k-2},
$$

$$
h_s=\frac k4+\frac{s^2+1/4}{k-2}
=\frac{c-1}{24}+\frac{s^2}{k-2},\qquad
P=\frac{s}{\sqrt{k-2}}.
$$

实 $k>2$ 自动满足 $c-25=6(k-3)^2/(k-2)\ge0$。对目标充分大的 $c>25$，可以选 large-$k$ 分支

$$
k=2+\frac{c-13+\sqrt{(c-1)(c-25)}}{12},
\qquad s_L=\sqrt{k-2}\,P_L,\quad s_R=\sqrt{k-2}\,P_R.
$$

这些代数恒等式已经 Mathematica 检查，不能把它们升级成 BRST cohomology 的全级数证明。原文 [p.26, (3.14)](https://arxiv.org/pdf/2608.14541v1#page=27) 对 generic real $P$ 的 all-level identification 使用 “we expect”；[Appendix B p.58](https://arxiv.org/pdf/2608.14541v1#page=59) 报告 $N=0,\ldots,4$ 的 cohomology counting，完整正级数论证另留后续工作。principal-series Whittaker construction 使用允许无增长限制的 direct-product completion；它不等于一个已完成的 normalizable CS Hilbert space 与 sewing measure。

真空也不是可以略过的特例：$j=k/2$ 确实给 $h=0$，但 [p.20, (2.37)](https://arxiv.org/pdf/2608.14541v1#page=21) 还要求对 $L_{-1}|0\rangle$ 作 quotient 才得到真空 character。不能把 generic heavy-sector 论证当作唯一 normalizable vacuum 已被自动构造的证明。

原文 [p.39, (5.4)–(5.6)](https://arxiv.org/pdf/2608.14541v1#page=40) 使用

$$
\chi_{\rm vac}(-1/\tau)=\int_0^\infty dP\,S_{0P}\chi_P(\tau),\qquad
S_{0P}=4\sqrt2\sinh(2\pi bP)\sinh(2\pi P/b)
$$

得到 BTZ/Cardy continuum。这个 $S$-kernel 是真空 character 的变换核，不是每个重表示的有限维数，也不是 $d_\alpha\in\mathbb Z_{>0}$ 的逐原子推导。原文的 “modular ensemble” 是一个理论内的热 states ensemble，不是随机 CFT ensemble；摘要明确说 ensembles of theories 不直接参与其讨论。

**需要警惕的循环论证：** 如果我们先由 2609 选定全部 $P_L,P_R,d_\alpha$，再给每个标签指定 Wilson representation 和 $\mathbb C^{d_\alpha}$，最后把满足 crossing 的 junction amplitudes 当作输入，那么 CS 只是重新包装假定存在的 CFT 数据。要成为真正构造，至少一部分谱、重数或 sewing amplitudes 必须由独立的 bulk quantization/measure 推导，而不是再作为边界 bootstrap data 输入。

### 7.2 为什么不能直接说“就是 Liouville”

对标准 spacelike Liouville，取 $c\ge25$、$Q=b+b^{-1}$，normalizable sector 的 diagonal continuum 为 $h=\bar h=Q^2/4+P^2$，$P\ge0$。它有非平凡 crossing 数据，但没有作为 normalizable state 的 identity，且谱连续。去除非紧零模体积后，其平直 continuum measure 对 torus trace 给出

$$
Z_{\rm L}(\beta)\ \propto\ \frac1{|\eta(i\beta/2\pi)|^2}
\int_0^\infty dP\,e^{-2\beta P^2}
=\frac{\sqrt\pi}{2\sqrt{2\beta}}\,
\frac1{|\eta(i\beta/2\pi)|^2}.
$$

这是 normalizable-sector trace 的比较，不是把 identity block 的 modular $S$-kernel density 当成 Liouville 的态简并度。由于 $h_{\min}=(c-1)/24$，effective central charge 为 $c_{\rm eff}=c-24h_{\min}=1$。把恒等表示另加成一个离散 normalizable vacuum，会改变 modular/crossing 问题，不能靠“Liouville 已有 crossing”自动合法化。

因此“有连续 Virasoro fusion kernel”既不证明目标离散 CFT 不存在，也不等于提供了它：一项 block 在另一 channel 的连续展开，可以在完整离散 block sum 中发生非平凡重组。真正应验证的是 full correlator 的 crossing 及离散支撑，而非要求每个单独 block 的 fusion transform 自己仍离散。

### 7.3 VTQFT 的 measure 不是待补的整数 multiplicity

[Solving 3d Gravity with Virasoro TQFT, 2304.13650v3](https://arxiv.org/pdf/2304.13650v3#page=15) 印刷 pp.13–14, (2.21)–(2.26) 在一个 pants channel $\mathcal C$ 中使用连续 block pairing

$$
\langle\mathcal F^{\mathcal C}_{g,n}(\vec P_1),
\mathcal F^{\mathcal C}_{g,n}(\vec P_2)\rangle
=\frac{\delta^{(3g-3+n)}(\vec P_1-\vec P_2)}
{\rho^{\mathcal C}_{g,n}(\vec P_1)},
\qquad
\rho^{\mathcal C}_{g,n}
=\prod_{\text{cuffs }a}\rho_0(P_a)
\prod_{\text{pants }(i,j,k)}C_0(P_i,P_j,P_k),
$$

其中 $\rho_0(P)=S_{0P}$。经 rescaling blocks 可以把 $C_0$ 从 pairing density 移到 vertices；它不是某个有限 dimensional representation 的整数重数。空 torus 是例外：原文 [印刷 p.35, (3.18)–(3.19)](https://arxiv.org/pdf/2304.13650v3#page=36) 去除共同无穷因子后使用 $\rho_{\rm Liouville}(P)=1$ 及 $\delta(P_1-P_2)$ pairing。这也核实了 §7.2 的 Liouville flat measure，不能把每个 torus tube 都误用 $S_{0P}dP$。

identity/internal subthreshold blocks 在其 Hilbert-space pairing 中不 normalizable；普通 TQFT 的所有 cutting 操作不能不经限制直接照用。例如原文 §3.5 要求一般切割表面满足 $2-2g-n<0$，并单独处理空 torus 的无穷归一化问题。VTQFT 是一个有具体 sewing kernel 的框架，但不是已经具有唯一 normalizable CFT vacuum 和离散 Hilbert spectrum 的目标理论。

**不变 sewing 下不能精确离散化的条件命题。** 假设某条 tube 的传播变量为 $u=P^2\ge0$，原 prescription 的非零正测度 $\nu_{\rm cont}$ 连续且 $\int e^{-tu}d\nu_{\rm cont}<\infty$。如果只将它替换为正原子测度 $\nu_{\rm atom}$，同时要求所有 $t>0$ 的相同 tube matrix element 完全不变，即

$$
\int_0^\infty e^{-tu}\,d\nu_{\rm atom}(u)
=\int_0^\infty e^{-tu}\,d\nu_{\rm cont}(u)\qquad(\forall t>0),
$$

则 Laplace-transform 唯一性迫使两测度相等，与连续/原子性矛盾。它排除的是“保持原 amplitudes 和 vertices 完全不变，只把 Plancherel 积分换成整数求和”的精确构造；不排除改变 vertices、spectrum、global sectors 后得到另一个 full CFT。有限矩匹配或固定有限阶渐近匹配可以绕开此命题，因为它们不要求全部 tube lengths 上的 exact equality。

这个命题也不声称对每个单独 block 的 fusion integral 必须离散闭合。完整 CFT 可以重组无限多个 blocks；真正缺少的仍是同一套 discrete spectrum 与 OPE tensors 的 full sewing solution。

## 8. 与 pure Einstein gravity 的关系：目前只有有条件的排除

Lorentzian 局部经典关系是 $A=\omega+e_{\rm frame}/\ell$、$\bar A=\omega-e_{\rm frame}/\ell$；这里 $e_{\rm frame}$ 是 dreibein，不能与本笔记的谱变量 $e$ 混淆。仅在 dreibein 可逆及适当边界条件下，flatness 才对应 Einstein 方程。量子 CS 路径积分还要选择 global gauge group/cover、bundles、reality contour、large gauge quotient、边界项以及可逆 dreibein 的积分域。Lorentzian 的 $SL(2,\mathbb R)\times SL(2,\mathbb R)$ 与 Euclidean contour 也不能不加说明地等同。

2609 p.46 指出：只对 smooth、complete、real Euclidean Einstein solid-torus saddles 作 usual vacuum modular sum，得到的仍是 MWK 型 prescription；目标谱修补需要扩展该 prescription。这里的有限范围结论是：**未经改变的该 saddle sum 不是目标离散正整数 $Z_*$。** 这不等于所有可能的非微扰 pure Einstein quantization 都被排除。off-shell topologies、复 saddles、积分轮廓和非微扰 measure 的可能性必须分别审查。

引入 dynamical Wilson lines 还要回答它们是几何 holonomy sector、黑洞 state labels，还是加入了额外 matter/defects。一个 external probe Wilson line 并不自动改变无插入的 Hilbert spectrum；把它提升成可动态求和的 sector 又需要独立权重和 sewing 规则。谱无轻 primary 是有用的“无轻 matter”边界条件，却不是唯一确定 Einstein action 与非微扰完成的充分条件。

[3d gravity from Virasoro TQFT](https://arxiv.org/abs/2401.13900) 计算多种拓扑，特别是以三穿孔球为边界的多边界 wormholes，将其解释为 structure constants 的 higher moments，并做半经典对照。这是有内容的候选框架，不能因为它尚不直接产生目标离散谱就忽略；但本文目前尚未验证其中的拓扑求和是否定义满足全部 moment positivity 的 exact CFT ensemble。

### 8.1 正 $\kappa$ 族与“所有经典 BTZ 都有微观态”的条件冲突

正 $\kappa$ 的 exact dimension gap 本身已经给出一个不依赖精细 selector 的 semiclassical test：

$$
E_1=\Delta_1-\frac c{12}
=\frac{\kappa c-(1+\kappa)}{12}.
$$

固定 $0<\lambda<\kappa/12$，取 $E=\lambda c$ 并作固定紧支撑平滑。充分大 $c$ 时，整个窗口都在首个非真空 primary 之下，只有 vacuum descendants。二色 partition-number bound 给

$$
N_{\rm vac}^{\rm sm}(\lambda c)
\le \operatorname{poly}(c)\exp\!\left[2\pi\sqrt{\frac{(\lambda+1/12)c+O(1)}3}\right],
$$

而非旋转 BTZ 的 leading microcanonical entropy 为

$$
S_{\rm BTZ}(E)=2\pi\sqrt{\frac{cE}{3}}
=2\pi c\sqrt{\frac\lambda3}.
$$

前者的对数至多 $O(\sqrt c)$，后者为 $O(c)$；即使 smoothing window 恰无整数后裔级而计数为零，也只会加强不匹配。这是一个确定的谱层面结论。

**条件 no-go：** 若将“semiclassical pure Einstein completion”要求为：每个固定 $E/c>0$ 的经典 BTZ 都有与 Bekenstein–Hawking 熵匹配的正微观态计数，则正 $\kappa$ 族不满足此要求。它们可以满足 torus modularity，却缺少一整段宏观黑洞能量区间的指数多 states。fixed-$\delta$ 族没有这段固定正 $\lambda$ 的空窗，故不受这一反证。

这不是无条件排除一切以 Einstein action 为低能作用量的量子理论：微正则 BTZ count 是否必由单个 saddle 支配、是否允许非微扰抵消或拓扑修改，属于额外物理假设。特别是在 thermal AdS canonical-dominant 区域，不能只从 canonical free energy 推出该微正则要求。本文将这个通常的黑洞微观态要求作为明确的检验条件，而不是冒充从 CFT 公理证明的定理。

## 9. 综合判定与可推进的最小任务

**目前能确切实现的是 Hilbert-space trace 和若干 genus-one spectral ensembles；尚未从两篇目标论文或本次核查的其他来源中得到任一目标成员的完整 CFT/AdS₃ 实现。** 本文得到的障碍都有明确作用范围，不能拼成一个无条件排除整个目标谱族的定理。

| 路线 | 已经得到什么 | 尚缺什么决定性证据 |
|---|---|---|
| 单个 unitary Hilbert space | §2 的 Virasoro 直和精确给出目标 trace | locality、共同 OPE tensors 与全 sewing |
| single compact CFT | 已有谱必要条件；已核对的严格 twist theorem 与目标相容 | 对一个明确成员给出 OPE 解，或对允许谱类给出 certified exclusion functional |
| exact 正 CFT ensemble | §4 的共同支持、§5 的矩正性与 covariance 必要条件；另有仅 genus-one 的显式 ensemble | 概率测度实际支撑于 full CFTs；指定 mean 及全部多边界 moments 同时成立 |
| approximate ensemble | 有 matrix–tensor/constraint-squared 候选和可定义的有限 probes/tolerance | tightness、residual 方差控制、去 cutoff、OPE tails 和非微扰完成 |
| Wilson/DS/VTQFT | generic 重表示字典、conformal blocks、连续 pairing 与固定拓扑计算 | all-level/endpoint 论证、离散 labels 和整数重数的独立来源、共同 sewing、正确 Einstein 积分域 |

对 **fixed-$\delta$ 族**，BTZ 的平滑 one-point count 是非平凡的正面结果；但它既不给 crossing，也不给 connected wormholes。对 **正 $\kappa$ 族**，§8.1 已排除“所有固定正 $E/c$ 的经典 BTZ 都有标准微观熵”的加强版本，不排除把这种黑洞计数要求修改后的其他理论。无论哪族，未经修补的 MWK、直接保留连续 VTQFT amplitudes 的原子替换，以及将 CJ leading kernel 当完整 exact covariance，都不能作为现成实现。

最值得推进的是以下三个范围可控的任务，而非先假设 bulk 完成已经存在：

1. **一个 heavy scalar 的 certified crossing test。** 选择原文允许第一层为 scalar 的子族，$\Delta_O=a+\delta$；先仅使用 $h,\bar h\ge a/2$、dimension gap、偶 spin 的交换支持，寻找 §3 的同号 exclusion functional。若成功可排除整个这个子族，不依赖尚未认证的全部原子；若未成功，则只表示该测试未排除。第一层无 scalar 的成员需要另选 mixed/spinning correlators。不能任取一个数值 $c$ 就宣称落入“充分大”保证范围；需要给出定量阈值或将论证保持为参数化。
2. **一个明确谱的 OPE/sewing lifting。** 先补上原文尚缺的 certified energy/multiplicity computation，再使用同一 multiplicity indices 求解 mixed crossing、torus one-point modular covariance 和 genus-two sewing。必须给 OPE-weighted 高能 tail 误差；只截取有限谱而无 tail certificate 不足以证明存在或排除。§6.2 给出把所有有限测试升级为存在性所需的 compactness 逻辑。
3. **一个指定 wormhole prescription 的正矩问题。** 固定概率解释、归一化、两个边界的共轭约定和适用极限，先检查二至四阶 moment matrices，再检查 exact atomic mean 的 support restrictions。若使用 CJ 或 VTQFT 渐近式，就把测试限制在已证明的平滑/近极端窗口，不把它们外推到逐能级或固定-$c$ 的任意低温。若声称 exact completion，则必须解释 §5.2 中必要的 cancellation 和改变了哪些微观数据。

heavy external 的难点不是术语问题。取 $h_O=(a+\delta)/2$，在 $\langle T(z)T(0)\rangle=c/(2z^4)$ 的标准归一化下，holomorphic vacuum block 的 level-two 项系数为

$$
\frac{2h_O^2}{c}=\frac{c}{288}+O(1)\qquad(c\to\infty,\ \delta\text{ 固定}).
$$

因此它不是 fixed-light-operator 情形中小的 $1/c$ 修正；不能直接用轻外部 generalized-free-field 近似完成这项测试。完整 vacuum Virasoro block 及其 heavy 参数必须受到控制。

本次研究的结论停在这些清楚的边界：**没有预设存在性；已给出可复核的条件 no-go、明确的形式构造，以及将问题继续推进所需的数据。full-CFT 或非微扰 pure Einstein 存在性仍开放。**

## 10. 核验记录与局限

**Verified:** 已读 2609 的现有详细笔记，提取本地 v2 PDF §7，并视觉核对印刷/PDF pp.45–47：作者明确区分 genus-one 谱、ensemble measure、多边界相关和 full-CFT sewing。官方 abs/html 已核对。Mathematica 精确核验了 $E_1=\delta-1/12$、chiral support 换元、$c>25$ 排除 $(1,1)$ 的阈值、tensor-product 额外 primary 的 $L_2$ 约束及正范数、Liouville Gaussian trace 与 $c_{\rm eff}=1$。整数重数反例采用概率方差 $1$，不是有限样本的无偏 variance $2$。2608 的关键 PDF 页面经并行阅读与图像核对，主线另读官方 HTML 的引言及证明范围声明；§7.1 的 central charge、weights、真空标签和 inverse level dictionary 已独立用 Mathematica 得到零 residual。§5 的 moment determinant 经 Mathematica 和 Sage 两条内核交叉核验，cumulant substitution 由 Sage 精确多项式环验证；整数 localizing factor 另作 $0\le n,k\le30$ sanity check，其全整数成立性仍由正文的相邻整数因子论证保证，而非有限采样证明。

**Assumptions:** Hilbert-space 构造使用 unitary Virasoro representation theory；ensemble 命题使用正概率、正谱、固定 central charge、measurability 和所需热/高阶矩可积性。支持定理及 covariance positivity 的证明写在正文中，不依赖数值实验。tensor-product 排除假设两个因子 $c_i>0$ 且没有额外投影。

**第二轮 Verified:** 并行精读并视觉核对了 PQR、BOSW、Alday–Bae、CGMP、scalar-only crossing、genus-two bootstrap 及 CJ 两篇论文的关键公式、脚注和页码，结果见 §2.2–2.3、§5.1–5.2。主线独立核验 VTQFT 印刷 pp.14、35 的 pairing、Liouville flat measure 和 nonnormalizable-vacuum 声明，以及 matrix–tensor 模型 §6 的完成性限制。Mathematica 验证 CJ 的 Gram 积分、Abel primitive、mixed derivative、diagonal 奇性系数和 $r=1,4$ 的不同极限；验证正 heavy-only modular deformation 反证所用极限、Narain 的 Poisson 变换矩阵、正 $\kappa$ 空窗和熵标度。Sage 交叉验证 Narain 的 shifted energy、整数 spin、uncensored support 平方恒等式。分布非测度、support no-go、$L^2$ ratio no-go 和 Laplace uniqueness 命题均有正文证明，不把有限数值测试当成一般证明。

**Not verified:** 尚未独立审计 2609 的全部数学定理；未得到指定目标谱的 OPE 解或 certified crossing exclusion；未证明 CS/DS 的 all-level、端点和 global measure 问题；未建立任何满足完整 sewing 的新 compact CFT 或 exact CFT ensemble。已证的是有限范围和明确假设下的障碍，不能将它们合并成排除全部量子引力实现的定理。CJ 完整正则化 modular sum 的 PSD、全部高阶 moment positivity 及完整拓扑求和尚未验证。

**最终复核：** 两路独立审读检查了本文的谱论、ensemble、CS/DS、crossing 和 semiclassical 论证。按审读结果，§4.4 已明确要求原子**支撑**局部有限，避免把紧集上有限质量误用成正 gap；§5.2 已明确要求不同 $g(r)$ 的两个 ratio 与 $o(K_{\rm CJ})$ 误差，而非任意两个 ratio 或仅小于主项的误差。Mathematica 独立核验了 $g(r)=g(1/r)$ 及这项精确化的必要性。

§6.2 的 penalty counterexample 已核验 minimum、rescaling 和 escape residual；条件存在性命题使用正文列明的 Prokhorov/Portmanteau 前提，不依赖数值猜测。§9 的 heavy Ward coefficient 已用 Mathematica 验证 leading 值为 $c/288$。

最后发现的 [2512.00361v1](https://arxiv.org/pdf/2512.00361v1) 已单独按 PDF 审计：主线与独立阅读均核实关键页的原式；Mathematica 验证 Mordell 左侧绝对收敛界、右侧非零极点、Gauss 和反例；Sage cyclotomic field 交叉验证 Gauss 反例、parabolic 矩阵及 mod-3 无法投影奇偶。现有证明失效的结论见 §2.4，不以该文题名、搜索摘要或 2609 的真实性代替检查。

原有文献笔记未修改。本文完成的是所列路线的文献研究、若干自足的条件命题与反例、源公式核查及实现条件整理；不是宣称已经解决 full CFT 或非微扰 pure Einstein gravity 的开放存在性问题。后续具体研究入口集中列于 §9。
