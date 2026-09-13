# 引力拼接阶段：验证记录

2026-09-10。对象为 [球对称 Einstein 引力模型](schwarzschild-sewing.md)。以下新增验证与上一稿的 85 项有限维 QM 检查分别计数。

## 已执行的检查

| 输入及工具 | 实际结果 | 覆盖内容 |
| --- | --- | --- |
| [gravity-canonical-checks.wl](verification/gravity-canonical-checks.wl)，Mathematica MCP | 33/33，`allPassed: true` | off-shell 质量恒等式、canonical transformation、端点项、边界源、moment map、辛商、frame、红移及谱表示 |
| [gravity-xact-checks.wl](verification/gravity-xact-checks.wl)，xAct MCP `components` profile | 6/6，`allZero: true` | Schwarzschild Ricci、Kretschmann、壁面外曲率、Brown–York 能量与压力、取向 |

全部为精确符号计算，没有数值容差或随机采样。对应的实际输出保存在 [Mathematica 输出](verification/gravity-mathematica-output.txt) 与 [xAct 输出](verification/gravity-xact-output.txt)。[几何组件输出](verification/gravity-xact-components.txt) 另保存了 xCoba 实际生成的 Ricci、外曲率、能量和压力表达式。

Mathematica 文件采用 $G=c=\hbar=1$，以及 $\Omega=-\delta\Theta$、$\iota_X\Omega=\delta H$。xAct 几何检查保留 `ggn` 表示 $G$，`mg` 表示质量，要求 $G>0,m>0,R>2Gm,0<\theta<\pi$。

## 33 项代数检查的范围

前 7 项检查使用独立的空间 jets：$R,R',R'',\Lambda,\Lambda',P_\Lambda,P_\Lambda',P_R$，以及独立变分。先构造 ADM 约束、$M,P_M,\overline P_R$，再计算残差。没有先施加 Schwarzschild 解来掩盖 off-shell 项。

其中完整 Liouville identity 同时包含生成泛函变分和空间端点 one-form；端点项只在 $\delta R_b=0$ 时消失。约束变换的行列式检查为 $-1/\Lambda$，逆变换也检查了 $F$ 和 $P_M$ 的恢复。

其余检查包括：有限壁面能量的严格单调性和反函数；lapse 变分的符号；完整外曲率匹配；moment-map 缩并；零 level 的完整一维核；显式商映射的辛形式拉回；能量极化；参数化边界源的 presymplectic form；共同 frame 项相消；外边界荷守恒与红移；不同半径双接缝的对易性；gauge-fixing Jacobian；连续能量带时钟的 Fourier kernel 与传播。

“正则中心只允许零质量”的代数检查核对了 $48m^2/R^6$ 的非零质量发散；该表达式本身由 xAct 独立计算的曲率不变量验证。

## xAct 检查怎样执行

使用 `xCoba` 定义 Schwarzschild metric 的坐标 chart，并通过 `MetricCompute` 获得曲率与 Christoffel components。壁面 extrinsic curvature 使用这些连接分量与 $n_R=1/\sqrt F$ 构造，未手写 Ricci tensor 公式代替 xAct。

MCP 的最终 residual pipeline 为 `none`，因为每个残差先显式执行以下透明处理：把 chart scalar 换成普通实标量，用 `Together` 和带上述假设的 `FullSimplify` 化简每个分量，再求其绝对值平方和。所有分量残差由此变成标量零。输出中的 package load errors、setup messages、check messages 均为空，未发生截断。

最初一次通用 `full` pipeline 把零矩阵按“不是标量零”标为 `nonzero_normal_form`，另外两项需要显式有理式整理。最终改用上述逐分量残差后重新执行六项检查，得到保存的全零结果；未把最初分类当作物理反例或成功验证。

Liouville 检查最初还留下互为倒数的两个对数。声明的外部 chart 保证对数参数为正，因此将端点项统一写成 $-\log z$ 后重跑，不使用无条件的复对数简化。一条诊断调用曾以进程退出码 139 中断；它没有产生可用证据。之后用独立的短表达式定位到上述对数分支及极限参数处理，完整检查文件重新执行通过。

## 文献公式核对级别

- Kuchař，[*Geometrodynamics of Schwarzschild Black Holes*](https://arxiv.org/abs/gr-qc/9403003)：通过 PDF 文本定位，并渲染核对 PDF 第 27 页的 (90)、(91)、(94)、(95)，及第 31 页的 (114)、(116)、(117)。本稿的端点消去依据是固定有限半径，未照搬该文的无穷远衰减条件。
- Louko–Whiting，[*Hamiltonian thermodynamics of the Schwarzschild black hole*](https://arxiv.org/abs/gr-qc/9411017)：渲染核对 PDF 第 12 页的 (4.1)–(4.5)。其有限壁项在固定半径下为 $-R\sqrt F$，本稿加上同取向平直参考项得到 $R(1-\sqrt F)$；其 bifurcation-sphere 项未被移植到本文。
- Brown–York，[*Quasilocal Energy and Conserved Charges Derived from the Gravitational Action*](https://arxiv.org/abs/gr-qc/9209012)：核对官方书目信息及摘要作为定义来源。能量、压力及取向由本稿独立几何计算验证，没有声称审计了该文全文。

渲染核对仅建立来源公式的视觉确认；符号恒等式的验证来自上述实际执行，二者没有混为一谈。

## 已证明与未由机器证明的部分

正文的 framed phase space、辛商和量子内积使用完整的解析论证：给出参数化辛势及其核、所有 $(m,p)$ 的代表、商映射的满射与纤维、完整外曲率匹配后的几何重建、群平均的 Fourier 形式、null space、稠密像及完备化。

这些不是对若干有限矩阵的外推。机器检查核对公式和局部代数，不单独证明全局 geometric quotient、函数空间稠密性或非紧群的 rigging-map 定理。

本稿保留了实际切片时间差的有界性，只有加入由边界源参数化得到的参考原点后才主张全局 $\mathbb R$ 作用。没有对未扩展的有限切片域主张同样的全局辛商。

## 复跑入口与格式检查

在 vault 根目录，可复跑普通代数文件：

```sh
rtk proxy wolframscript -file 'Drafts/Gravitational sewing and relational time/verification/gravity-canonical-checks.wl'
```

几何文件需要能加载 `xAct`/`xCoba` 的 Wolfram kernel。本次实际使用的是 dedicated xAct MCP 的 `components` profile；所存 `.wl` 文件包含相同的 metric setup、残差和显式化简，可在具有这些包的 kernel 中重放。

Verified: 33 项 Mathematica 精确检查及 6 组 xAct 几何残差通过；新增 Markdown 的 Pandoc 数学解析、文件链接与空白检查通过；vault policy audit 通过。

Assumptions: 正文明确的球对称真空、静态外部 chart、固定半径、相容参考项、边界 frame 及能量极化。

Not verified: 全四维非球对称约束代数、视界/核心完成、可变面积角点、任意 ADM ordering 的量子等价及实际钟装置。
