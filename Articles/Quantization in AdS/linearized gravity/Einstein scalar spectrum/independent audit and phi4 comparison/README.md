# Einstein–scalar 独立审查与固定 AdS₃ φ⁴ 对照

## 主要结果

**原稿核心有限谱在明确物理输入与减除处方下经受住了本轮检查；尚未将整稿全部命题升级为无条件、完整量子引力谱定理。** 原验证套件完整通过；新写的源方程计算也通过了非零虚边界交换的敏感检验。原正文、PDF 与研究包未改；只有上级索引追加本目录入口。

固定相同自由实标量、质量、快衰减边界条件与时钟，采用
\(S_{\rm int}=-\lambda\int\sqrt{-g}\,\phi^4/4!\) 后，两粒子 **primary** 通道为

\[
\boxed{\delta E_{k\ell}^{(1)}=
\frac{\lambda\,\delta_{k\ell}}{8\pi(2\Delta+2k-1)}}
\quad(\Delta>1,\ k+\ell\text{ even}).
\]

该系数在整个 pair module 上相同；不能把 primary spin-zero support 错解为所有非零角动量的 descendants 都无能移。两体系数已有文献先例，这里是独立 bulk 重推与复算。

**新增的精确多体结构：** 对正耦合的一阶系数算符 K，在平衡 primary 块 (P,P) 上，

\[
\boxed{N=3:\quad \operatorname{rank}K=P\quad(P\ge1),\qquad
\dim\ker K=d_3(P,P)-P,}
\]

\[
d_3(P,P)=\frac{(P+1)^2+3\mathbf1_{P\text{ even}}+
2\mathbf1_{P\not\equiv2\ (3)}}6.
\]

这是所有 Δ>1 的定理，不是有限扫描猜想。更一般地，固定任意 N≥3：

\[
\frac{\dim\ker K}{\dim\mathcal H_{N;P,P}}=1-\Theta_N(P^{-1}).
\]

这些是**精确首阶零模**。把它们除掉后，正谱的经验分布仍趋于零，正本征值均值为 Θ(log P/P)；未推出典型尺度或最小正谱隙。三粒子左右交换奇态必为零模，但 P≥6 还有偶零模；N≥4 的“奇态必为零模”命题有明确反例。

此外，纯 φ⁴ 也满足产生两生成元低代数和首层 Gegenbauer 算符的缺陷条件。故这些形式不是引力独有；具体残差支撑、系数与高激发尺度才区分动力学。

![三粒子平衡块的精确核计数；引力曲线对应减去基线后的残差](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/figures/balanced_kernel_comparison.png>)

图左：φ⁴ 是总一阶系数的核；Einstein 是 W−bI 的核。图右：φ⁴ 的偶零模从 P=6 开始出现。曲线由定理的精确整数计数生成，不使用数值零阈值。

## 阅读入口

| 笔记 | 回答的问题 |
|---|---|
| [总审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/manuscript audit.md>) | 原稿哪些结论成立到何种程度，哪里尚未独立闭合？ |
| [φ⁴ 一阶谱](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md>) | 从作用量、Wick 处方、共振、CG 到任意有限 Bose 块怎样推导？ |
| [结构比较](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>) | 碰撞核、三粒子精确秩、所有固定 N 的大核与正软谱从哪里来？ |
| [普适性与极限](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/universality and limits.md>) | 哪些现象只是表示论／二体结构，哪些取决于引力？局域形变能改变什么？ |
| [引力物理接口审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/gravitational interface audit.md>) | 非圆约束／边界抵消、全混合块缺口与局域 φ⁴ 形变的实际计算 |
| [一体减除审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/one-body subtraction audit.md>) | 激发态热迹、局域反项以及极限次序的真实作用 |
| [74项覆盖表](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/claim coverage.md>) | 哪些只是原套件复现，哪些还获得了解析审查／新独立证据 |

## 独立复核与执行证据

Fresh reviewers 先收到题设与约定，而非候选答案；其中结构复核没有读候选笔记便独立得到全 N 界并证明了三粒子精确秩。三份复核分别是：

- [φ⁴ 物理复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh phi4 physics review.md>)：574项独立精确检查；Wick／Bose 因子、Ward promotion 与整数 Δ 的全指标 1↔3 消失证明。
- [接触结构复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md>)：完整三对角证明、稳定子双边秩界、软正谱／加权迹及反例；33个独立精确秩例。
- [引力归一化复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh gravity normalization review.md>)：独立槽位组合、边界积分和 Cartesian 正则性；另对已求源函数作独立积分，不冒称又一次独立求源。

主要机器记录：

| 记录 | 证据范围 |
|---|---|
| [原包完整复现](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/package_reproduction_02/reproduce_all_summary.json>) | 五组原套件全部通过；原源码和 validator 不改 |
| [φ⁴ 978项检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks.json>) | 直接模积分与独立 projector/Fock lift：75个完整两体块、48个完整三体块及其它检查 |
| [相同脚本的 root 重跑](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks_root_rerun.json>) | 同一978项全部通过；不再算成978项新的独立证据 |
| [接触结构精确扫描](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/contact_structure.json>) | 273 mixed records、75 balanced records、93全坐标交叉比较、全质量小阶证书与带宽恒等式 |
| [Einstein 支撑／Gram 独立检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/pair_support_audit.json>) | 给定引力 multiplier 后的156个三粒子块与12个谱／Gram例；不是另一次引力积分 |
| [引力执行记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_execution_manifest.json>) | 20个源、angular矩阵、非圆1→3、局域形变、metric交叉检查及其脚本哈希 |

不把不同层级／重复运行的检查数相加成“总共证明了多少项”。

## 复算环境与最短命令

本目录提供普通 Homebrew Python3.14.8 的隔离环境，全部依赖 pins 与原包一致。最初 app-bundled Python 的 native extension Team-ID 失败记录保留；没有修改系统安全或原验证器。版本见 [输入标识](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/input_versions.json>) 和完整复现报告。

在本目录运行，例如使用新的、尚不存在的输出名：

```bash
.venv_portable/bin/python -B sources/ADS3_Master_Research_Package/reproduce_all.py \
  --output-dir results/package_reproduction_fresh

sage --nodotsage -python scripts/phi4_checks.py \
  --output results/phi4_fresh.json

sage --nodotsage -python scripts/contact_structure.py \
  --output results/contact_fresh.json

.venv_portable/bin/python -B scripts/gravity_source_audit.py \
  --output results/gravity_source_fresh.json
```

Sage 检验环境为 Sage10.9／其 Python3.14.3；它与原包普通 Python 的精确 pin 复现分开记录。Wolfram 为 fresh kernels；具体脚本见各审计。部分辅助脚本有固定输出名，应在新私有副本中运行，不覆盖本次结果。MCP 也会另存工具运行记录，未声称工具不产生文件。

## 适用范围与尚未解决的实质问题

- 引力全简并块的未压缩 quartic mixed contacts 未独立重建；scalar pair 模型不能代替这一步。
- 原稿连续响应桥梁、时间端点和 fixed-clock 减除保持其明确条件；没有证明任意方案等价。
- 三粒子 **非平衡** 秩公式仍是有有限精确支持的猜想；所有 N≥4 的精确秩系数、偶零模显式基、最小正谱和重标度正谱仍未分类。
- 全部是首阶系数的结论；不证明高阶零模保护、完整多体可积性、连续 QFT 精确谱分支或大标签一致余项。

这是一组研究笔记、证明和可复算证据，不是对原稿的无条件全篇认证，也不作未经检索的优先权主张。

## 第二轮更新：全稿证明审查与任意 N 谱

**本节更新上面的首轮状态，旧记录保留不覆盖。** 全部74项注册命题现已有逐项证明审查；找到六处局部修正和两处范围澄清。完整 quartic Ward 闭合与最低混合块的全径向相消已经核完。旧引力接口笔记中的 `24√2/175` 只是 n=0 部分，不是完整 cubic sum；明确勘误见新总览。

- [第二轮总览：判断、修正、完整混合块与新结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/second review and new phi4 results.md>)
- [74项逐项覆盖表](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/claim coverage second review.md>)
- [任意有限 N 的精确谱与 CLI](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md>)：602块、8579项精确检查；完整 eigenspaces、Gram、descendants。
- [一般 N 显式谱、真实 √N 分裂与物理 S₇ 块](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md>)：φ⁴ 的临界质量 Δc=(√13−1)/2、失谐 crossover、低激发全 N 谱族。
- [进一步结构](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md>)：三粒子相邻次数 rank=Q 已证明；任意 N 的 balanced 谱上缘有统一下界；三粒子逐个最大正谱趋于 c₀,c₁,…。

各章节完整审查与两份关键独立复核均由新总览链接。仍开放的非平衡秩仅指 |P−Q|≥2；高阶 quantum Ward、连续域／长期端点与一致余项不因本轮首阶结果自动解决。原稿、PDF、ZIP及旧结果均未改。
