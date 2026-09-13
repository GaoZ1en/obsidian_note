# 验证记录

2026-09-10。对象为 [完整模型](relational-time-model.md) 中明确定义的有限维受约束量子力学。

## 实际执行

通过本会话的 Mathematica MCP，分别将以下两个文件的完整代码送入 Wolfram Language 执行。计算使用精确整数、符号矩阵、解析积分与精确化简，没有设置数值容差；每个条件只有化简为确切 `True` 才计为通过。

| 输入 | 结果 | 范围 |
| --- | --- | --- |
| [checks.wl](verification/checks.wl) | 74/74，`allPassed: true` | 经典局部作用量、有限维主构造、一般两能级混态与反例 |
| [additional-checks.wl](verification/additional-checks.wl) | 11/11，`allPassed: true` | 一般种子、相位校准、外边界时间、算符乘法、顺序测量、两层拼接与谱失配 |

输入中的时间均已无量纲化：$x=\omega t$。第二份检查中的 `tau` 也表示 $\omega\tau_{\mathrm{physical}}$。正文保留了有量纲的 $\omega,t,\tau$。

实际工具输出保存于 [主输出](verification/mathematica-output.txt) 和 [补充输出](verification/additional-mathematica-output.txt)；由它们提取的逐项结果是 [result.json](verification/result.json) 和 [additional-result.json](verification/additional-result.json)。输出末尾的 `Null` 来自最后的 `Print`，不是失败条件。

主文件首次执行时，验证程序把 Wolfram 的向量张量积误作已经展平的向量，并有一处括号错误，导致执行失败。修正为显式 `Flatten[KroneckerProduct[...]]` 并修复括号后，重新执行完整文件得到以上 74 项通过。这里保存的是修正后的完整输入与其成功输出；未将第一次失败计算算作验证证据。

## 逐类覆盖

主文件的 74 项为：

- 4 项经典代数：局域规范抵消、lapse 方程、约化作用量、界面两侧相反的规范流。
- 55 项有限矩阵检查：$d=2,3,4,5,6$ 各 11 项，覆盖连续/离散投影、核维数与幂等性、等距编码、种子投影系数、条件约化、薛定谔方程、POVM 归一化、正交刻度、外边界 Hamiltonian 和两时刻传播。
- 6 项一般两能级符号检查：一般协变 POVM 的 Schur 过滤、均匀时钟密度、von Neumann 方程、关系算符、算符平方和部分转置特征多项式。
- 9 项诊断：twirling 的非零荷权重、相干投影的 Bell 历史、twirling 示例的 PPT、干涉信号、钟态重叠、错误能量符号、均匀读数窗口、非共同周期积分、离散采样混叠。

补充文件的 11 项为：

- 一般种子的投影过滤与投影范数；匹配的相位读出抵消制备相位。
- 外边界演化对条件历史的平移；外边界静止与能量相干性的冲突。
- 两个任意关系矩阵的乘法；指定顺序测量的振幅与通常传播子一致。
- 两个界面的投影顺序一致；两份时钟同时读取；丢弃未读互补能量记录后的退相干。
- 失配 $\delta=\omega/100$ 的精确核维数诊断，以及符号上的激发态约束残差 $-\delta|11\rangle$。

## 证明与检查的区别

正文的一般有限 $d$ 结论由能量本征基的逐项计算证明，包括 $\ker C$、群平均、任意物理密度算符的条件演化、协变 POVM 的归一化条件、等距关系代数和部分转置的 $2\times2$ 分块。这些论证不依赖 $d\le6$。

机器执行对 $d=2,\ldots,6$ 提供独立矩阵核对，对一般两能级状态与 POVM 保留了符号参数。它不构成任意维数、连续谱、无限维算符域或引力 PDE 的计算机证明。

“每个纯态都保持纯态”“原样恢复任意初态”等必要性使用正文的全支撑纯态、两能级相干态及混合态论证；没有把若干随机态的通过当作必要充分条件的证明。

## 本机复跑

本次已检测到本地 `wolframscript`。在 vault 根目录可分别运行：

```sh
rtk proxy wolframscript -file 'Drafts/Gravitational sewing and relational time/verification/checks.wl'
rtk proxy wolframscript -file 'Drafts/Gravitational sewing and relational time/verification/additional-checks.wl'
```

本次实际公式计算用的是 Mathematica MCP；这里的命令是对应的本地复跑入口，不把尚未通过该入口执行的计算另算一次检查。

## 来源核对与未覆盖项

正文所列四篇文献核对到官方期刊或 arXiv 的摘要和书目信息。没有对其 PDF 全文逐公式审计，也没有复用被引用对话中声称的三能级数值误差作为本次证据。

Verified: 上述 85 项精确检查全部通过；主文及说明文件进行了 Pandoc 数学 Markdown 解析、相对文件链接检查和空白检查；vault policy audit 通过。

Assumptions: 有限匹配非简并谱、零荷支撑、已指定的协变读出、正密度矩阵和正 POVM。符号矩阵的代数恒等式检查不替代正文对正性参数范围的要求。

Not verified: 从具体引力作用量导出本模型、约束代数异常、非紧群的分布态与内积、非周期时钟、实际测量仪器的动力学及测量反作用。未运行也未修改 vault 中其他研究项目的数学检查。
