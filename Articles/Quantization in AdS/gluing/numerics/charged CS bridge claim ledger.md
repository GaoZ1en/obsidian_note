# Charged CS bridge: claim ledger

2026-09-07。本轮输入为根目录 [two-commit audit](<../../../../01_two_commit_adversarial_audit.md>) 与 [next-round work packages](<../../../../02_next_round_bridge_and_extraction.md>)；zip 中的两篇正文逐字一致。审计基准为 3fd226316894b423923939d7248b4fa97b9c786a。本页记录本轮完成范围，旧定理只作为明确输入，不因本轮有限检查而重新认证。

## 五个工作包

| 包 | 交付／证明位置 | 结论的等级与范围 |
|---|---|---|
| 0：局部修补 | [U(1) vertex](<../models/U(1) Chern-Simons Wilson and vertex extension.md>) §§3,5；[edge](<../models/chern-simons edge contraction and corner fusion.md>) §§2.1,6 | **Proved:** argument-compact tests 的 rapid Fourier decay、逐 finite-energy input Hilbert limit、相容 adjoint 与原 mode sewing；**false:** ordinary-periodic tests 对全部 integer charges 都有效，反例为 k=2,q=3,n=1。DtN／action-response 符号和已完成的 vacuum scope 已同步 |
| 1：定理接口 | [Gauge observable sewing](<../gauge observable sewing theorem interfaces.md>) §§2–6 | **Proved implications:** classical descent、algebraic quotient、Connes/net comparison；每个 implication 的模型输入单列。它们不是 all-YM/CS existence theorem |
| 2：classical bridge | [Two-puncture classical bridge](<../models/SU(2) Chern-Simons two-puncture classical bridge.md>) §§1–5 | **Proved in the stated regular-residue model, using AMM:** sourced action/CPS、双向 fiber-product map、based-loop torsors、proper moment map、corrected form、ordered fusion 与独立 pair-of-pants comparison |
| 3：charged quantum bridge | [Charged sewing and channel maps](<../models/SU(2) Chern-Simons charged sewing and channel maps.md>) §§2–7 | **Proved in the specified integrable net prescription, using Wassermann/Gui:** actual bounded primaries、transport-normalized two-channel maps、完整 Gram radical、onto、全部 outer local-net actions；真实 Wilson detector、四点 intertwiner bases/F/braid comparison；k=1 对照 |
| 4：presentation contraction | [Edge §9.1](<../models/chern-simons edge contraction and corner fusion.md>) | **Proved for the declared auxiliary tree:** incident paths 同步运输、punctures/current intervals 保留、groupoid equivalence；classical corrected-form 与 quantum unitary 交换图。保持 framing 时 phase 为一；改标记须带明确 conjugation/twist |

## 不同箭头没有共享同一个 kernel

| 箭头 | 实际保留／遗忘的数据 |
|---|---|
| Current phase space → finite port | Fibers 是 active based-loop torsors；保留完整 boundary connection 后可逆。它不是原 proper gauge quotient，也不是仅保存总 holonomy |
| Corrected CPS → q-Hamiltonian form | 先按 AMM convention 缩放 CPS，再加 boundary transgression；原 closed CPS 不直接下降 |
| Dense Connes source → 两通道 | Kernel 恰为 transport Gram radical；Hilbert quotient 后的联合 map 为 unitary，kernel 为零 |
| 单一 channel map | 另一整个 integrable sector 为 kernel；这一步是额外 projection |
| Realized local-net comparison | 每个 outer interval 上为 faithful normal onto map；不是 vacuum cyclic left ideal 或 universal current ideal |
| Rooted-tree normalization | 是 presentation equivalence，不丢掉上述 fibers、currents 或 channels；没有物理长度极限 |

## 已执行的计算

| 工具／脚本 | 本轮结果 | 确切核验范围 |
|---|---|---|
| Mathematica：[charged_cs_bridge_checks.wl](<charged_cs_bridge_checks.wl>) | **28/28 true** | SU(2) pairing/Lie sign、Gauss residue、inner-cap inverse holonomy/reduction sign、inverse transport、orbit Maurer–Cartan、constant-connection transgression、一个 segmentation 系数、DtN/response；vertex grades 0–8 与 exact Gamma asymptotic、adjoint/cover；CG、FS、Jones/F、Wilson M2、braid/twist |
| Sage：[charged_cs_bridge_checks.sage](<charged_cs_bridge_checks.sage>) | **17/17 true** | 非交换自由群的给定 tree/path/frame identities；k=1,2 的全部 admissible triples、四点 paths；精确有理 Jones relation 和丢通道的 kernel |
| Dedicated xAct：[charged_cs_bridge_xact.wl](<charged_cs_bridge_xact.wl>) | **3/3 zero** | CS kinetic variation 的 boundary residual、已代入 Maurer–Cartan 的 Cartan product correction、orbit gauge contraction；xTras FullSimplification，unknown heads/messages/load errors 均为空 |
| 原 zip 的 checks.py | **36/36 true，重新执行** | 原附件的有限符号诊断；保持普通 Python semantics 在 Sage 环境执行，未把 preparser 改写作为原脚本结果。仅有 SymPy bitcount deprecation warnings |

原脚本 ordinary-periodic 反例的 norm partial sums，N=64,256,1024,4096，分别约为 131.542、3788.679、117986.900、3749810.989。发散定理来自正文的 Gamma-ratio／级数比较；这些有限数值只作诊断。脚本中的 CG 与 braid matrices 同样不证明 Hilbert completion、Connes surjectivity 或全部 Ward identities。

文档核验：本轮十份 Markdown 的 Pandoc AST／MathML conversion 通过，字体命令等价修正后无 rendering warnings；内部文件链接核对通过，README 的失效旧审计入口已改到本轮附件。新增七个文件的 whitespace／EOF、Git diff whitespace 和 vault-policy audit 均通过。未生成或重写 manuscript TeX fragments。

## 外部解析输入和适用条件

- [AMM](https://arxiv.org/pdf/dg-ga/9707021)：Propositions 8.1/8.4、Theorems 6.1/8.3、§9 的 framed surface 与 fusion form。已阅读正文并视觉核对 PDF pp.21、23、26 的 correction、反向 boundary orientation 和 equation (43)。模型的 residue/collar、gauge extension、moment properness、反向重构与 sign dictionary 在 classical note 独立写出。
- [Wassermann](https://arxiv.org/pdf/math/9806031)：§25 bounded fermion compression，§§29–31 anomaly、Connes continuity、positive transport coefficients 和 onto theorem；已视觉核对 PDF pp.31、39、40。本文 raw CG normalization 与实际 positive transport normalization 分开；没有把未计算的 raw transport coefficients 填成一。
- [Gui v8, Theorem 5.1](https://arxiv.org/pdf/1812.04470v8)：已视觉核对 PDF p.67 的 affine type-A 适用范围，用于同一 positive-energy net／VOA category 的 unitary ribbon comparison。Wilson cup/braid/cap 在 source 先定义，再与独立 global action 比较。
- [Bantay, equation (1)](https://arxiv.org/html/hep-th/9610192)：从原 HTML 读取 FS indicator 公式，代入当前 SU(2)2 twists 得负号；不是把另一种 Ising normalization 直接移入。四点 bases 的具体复合和 phases 在 quantum note §6 固定。

**Verified:** 上述局部证明、外部定理的声明适用关系和实际计算结果分别列明。

**Assumptions:** classical 使用两个分离 regular open-alcove residues、固定 outer frame/Sobolev 类；quantum 使用 positive integer integrable net，主例 k=2 fundamental sectors；共同 argument、orientation、ribbon 与 transport normalization。辅助树没有额外 oscillator／L2(G) 因子。

**Not verified:** classical residue 到 integrable quantum label 的无处方量子化；任意 charged networks、一般 geometric corners、真实 metric collapse、高维 YM、all-YM/CS quantization-commutes-with-sewing。Annulus 全 integer-charge sector 不能改称全部 thin equal-time operators：已证 q²/k<1/2 阈值，进一步共同乘积域仍未声明。
