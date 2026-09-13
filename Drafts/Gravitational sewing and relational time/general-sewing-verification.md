# 一般拼接阶段：验证记录

2026-09-10。对应 [一般拼接正文](general-gravitational-sewing.md)。本轮只新增一般理论正文、验证文件和 README 第三阶段；前两阶段模型正文保持原样。

## 1. 实际执行结果

Verified: Mathematica 24 项精确检查全部返回 True；xAct 五个独立 fresh-kernel 请求共 16 组残差全部返回 zero，allZero=true。无 package-load error、setup message 或截断的残差。

| 工具与范围 | 数量 | 证据 |
| --- | ---: | --- |
| Mathematica：三维 trace reversal、曲率跳跃的 adapted-coordinate 分量、平面波的接缝系数、积分能量、线性化波与通量、时钟小恒等式、spacelike 辛形式计数 | 24 | [输入](verification/general-mathematica-checks.wl)、[实际输出](verification/general-mathematica-output.txt) |
| xAct core：完整 Riemann 跳跃公式的反对称性、对称交换、Bianchi、Ricci 收缩及纯法向 jump 的消失 | 5 | [输入](verification/general-tensor-checks.wl) |
| xAct components：精确 pp-wave 的全部 Ricci、非零 Riemann 分量及 timelike 壁外曲率 | 3 | [输入](verification/general-pp-wave-checks.wl) |
| xAct components：任意光滑 Rosen 波因子的全部 Ricci 及两个横向 Riemann 分量 | 3 | [输入](verification/general-rosen-wave-checks.wl) |
| xAct components：Gaussian normal 曲率公式的 homogeneous diagonal 子族，同时代入两种法向 signature | 3 | [输入](verification/general-gaussian-checks.wl) |
| xAct components：一般 TT 扰动的一阶 Ricci、Einstein–Hilbert 二阶密度与显式全导数 | 2 | [输入](verification/general-TT-perturbation-checks.wl) |

全部 xAct 请求参数保存在 [exact requests](verification/general-xact-requests.txt)，包括 profile、setup、checks、pipeline 和 timeout；完整结构化返回保存在 [actual output](verification/general-xact-output.txt)。文件使用 txt 扩展名，避免本仓库全局忽略 json 使验证证据未被列出。

一般张量请求使用 canonical_contract，即 ToCanonical、ContractMetric、ToCanonical。各分量请求使用 none；setup 自己逐分量 FullSimplify，再将残差的绝对值平方求和，因而零矩阵不会被工具误判为“不等于标量零”。没有用数值采样替换精确残差。

## 2. 计算具体证明了什么

pp-wave 检查直接从度量出发，得出全部 Ricci 分量为零，并得到 $R_{uxuy}=-f(u)$ 和 $K_{uu}=yf(u)$。它支持正文的非线性精确反例；对称窗口的 Brown–York 能量积分由 Mathematica 独立算为零。

Rosen 检查先对任意光滑 $a(u),b(u)$ 从度量求出 Ricci、Riemann，再用一侧极限和导数 jump 计算脉冲系数。没有让程序对不连续函数作不受控的分布乘法。正文的分布推导使用“连续系数乘 delta 取界面值”和定理 A 的曲率 jump 公式。

TT 检查从
$g=\operatorname{diag}(-1,1+\eta q,1-\eta q,1)$
展开。令 $q=q(t,z)$，得到 Einstein–Hilbert 的二阶密度

$$
(\sqrt{-g}R)_{\eta^2}
=\frac32(q_z^2-q_t^2)+2q(q_{zz}-q_{tt}).
$$

它与 canonical 二次密度的差精确为

$$
(\sqrt{-g}R)_{\eta^2}
-\frac12(q_t^2-q_z^2)
=2\partial_z(qq_z)-2\partial_t(qq_t).
$$

这核对了正文 $1/(32\pi G)$ 的单极化作用量归一化。该 action 采用去掉所列全导数后的边界极化；其他极化需同步保留 corner/边界项。TT 剪切和通量例子都是线性化解空间上的结论。

Gaussian 检查的样本族具有三个任意法向函数，分别在 spacelike、timelike 法向上测试所有 Ricci 分量。它核对法向演化项的号数及二次项，但没有让计算机证明任意切向依赖的几何恒等式。正文对一般情形用 Gaussian Christoffel 符号逐项推导，保留 $R_{ab}[h]$，随后作一般 jet 归纳。

时钟相位、闭轨道积分和 Cauchy 辛形式计数只是相关代数步骤的检查；没有将它们计作“全局时钟存在性”“完整物理 Hilbert 空间”或“无限维辛商”的证据。

## 3. 证明与计算的边界

- 定理 A 的充分性使用一般曲率跳跃公式及局部 $C^1$ 坐标构造；xAct 验证其张量代数，不验证整个 atlas 的存在定理。
- 定理 B 的光滑性使用两侧已有光滑真空解、非 null Gaussian collar，以及对全部法向 jets 的归纳；有限测试不是 PDE 适定性证明。
- 定理 C 使用实际匹配解族、显式粘贴与限制、积分可加性和 corner 相消；没有直接算出一般 Einstein 物理相空间的完整核。
- §9 的普通辛商是明确列出核、像、轨道、正则性和 moment-map 条件后的条件结论。
- §11 的量子演化是已经存在相容时钟、剩余物理空间及 unitary propagator 后的条件结论。

Assumptions: 具体约定、区域、signature、边界与 regularity 以正文 §2–§4 为准。精确 pp-wave 和两个 null 反例取 $\Lambda=0$；非 null 正面定理允许任意共同 $\Lambda$。

Not verified: 任意界面 histories 的可实现性、任意 Einstein 初边值问题、所有 corner 与 topology 情形、完整 gauge 核与普通商、量子异常、量子化与约化交换。

## 4. 来源核对级别

| 来源 | 本次核对 | 采用范围 |
| --- | --- | --- |
| [Mars–Senovilla](https://arxiv.org/abs/gr-qc/0201054) | 官方 PDF 文本导航；第 25、26 页已渲染目视确认 | 定理 6–8、无完整曲率脉冲与无 Ricci 脉冲的区别、相容 C1 atlas |
| [Harlow–Wu](https://arxiv.org/abs/1906.08616) | 官方 PDF 第 14–15 页文本；第 15 页渲染目视确认 | 边界变分条件、corner 修正、辛流守恒条件；按本文相反辛形式号数使用 |
| [Speranza](https://arxiv.org/abs/1706.05061) | 官方 PDF 第 24 页文本与渲染目视确认 | §6.1，surface translation 需要额外可积性条件 |
| [Donnelly–Freidel](https://arxiv.org/abs/1601.04744) | 官方摘要 | 只确认其 extended regional phase-space 研究对象，没有将全文结论当作本稿已证明事项 |
| [Wald–Zoupas](https://arxiv.org/abs/gr-qc/9911095) | 官方摘要 | 仅引用带辐射辛通量时普通 Hamiltonian 未必存在的限定 |
| [Bonzom–Dittrich](https://arxiv.org/abs/1304.5983) | 官方 PDF 引言文本 | 仅引用 hypersurface-deformation 的结构函数背景；未把该文离散模型当作一般四维量子引力证明 |

下载 PDF 和渲染页仅用作本机临时核对，位于 /tmp/general-gravity-sources；持久化的正文来源使用官方链接，数学输入和输出已保存在本文件夹。

## 5. 文档检查与复跑

输入文件逐项对应实际 MCP 调用。复跑 xAct 时，以 general-xact-requests.txt 的每个 request 作为独立 fresh-kernel 调用；勿将多份 DefManifold 定义连续送入同一个未清理的 kernel。

一般数学输入可通过 Mathematica MCP evaluate_mathematica 执行。其末尾打印结构化 JSON，要求 checkCount=24、allPassed=true。

文档检查已通过：Pandoc 数学解析和 MathML 转换无警告；12 个任务文件的空白/差异检查、相对链接存在性和输出计数检查通过；仓库 validate_vault_policy.py 通过。这些检查只针对格式和仓库规则，不提升数学结论层级。
