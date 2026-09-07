# CS 与 YM 五工作包：结果与验证

Date: 2026-09-07. Base inspected: `265b36e900032ccf659381762e24130ede95803e`. The complete latest response in the referenced audit conversation was read, along with the current disk CS and classical/quantum YM notes. Its verdicts and previous check counts were not used as proof evidence. Existing unrelated working-tree changes were preserved.

## 1. 本轮结论与准确范围

| 包 | 新笔记 | 本轮正结果或反例 | 尚未被这项结果覆盖 |
|---|---|---|---|
| A | [三价 junction](<../models/U(1) Chern-Simons trivalent junction sewing.md>) | 实际 trace image 只有共同值与一条 slope equation；给出 continuous extension、完整 kernel、current/PBW/Weyl quotient；逐条 local release 后仍有三维 gauge jet quotient，处理后所有次序一致 | 任意高价/相切 junction、sharp vertex 或任意 histories |
| B | [Annulus](<../models/U(1) Chern-Simons annulus sewing.md>) | 完整 framed phase space 为 $\mathbb R_\lambda\times S^1_\Delta$ 加两份 oscillator spaces；包含径向 winding、cycle holonomy、radial transport，给出选定 current/zero-mode quantum realization | $q^2/k<1/2$ 的 thin smeared operator 存在，达到/超过阈值的真空域已反驳；任意共同乘积域仍不在结论内 |
| C | [Wilson/vertex](<../models/U(1) Chern-Simons Wilson and vertex extension.md>) | Sharp Weyl 无强极限；integer-charge mode operators 有共同 dense core；给出 Ward identity、radial OPE、endpoint counterterm 和共同 prescription 下的 exact matched-source sewing | 未声明的 independent regional Fock products、任意 smeared-word/point-operator completion |
| D | [SU(2) CS chord](<../models/SU(2) Chern-Simons open-chord sewing.md>) | 实际 classical/current quotient；universal ideal；完整 vacuum-module preimage；$H^1$ corner gauge inclusion；Connes vacuum sewing 与全 local-net comparison | 非 vacuum charged intertwiners、一般 continuum CS quantize-before-reduction、任意 quantum history Hamiltonian |
| E | [YM multitime](<../models/1+1 Yang-Mills covariant multitime networks.md>) | Covariant finite graphs；所有紧群的完整 finite-word reduction、section、constructive kernel 和旧 global envelope equality；U(1) 简短 normal form | 一般非阿贝尔有限生成 kernel/zero-test；固定受限时间窗的更小 algebra；一般 continuum curves/completions |

因此不能把五个工作包统一标成“完整 continuum quantum sewing 已完成”。A 的声明范围已经闭合；B、C 保留 vertex mode/ordered-distribution prescription，并已判定 thin-line 阈值；D 的所选 integrable vacuum-net sewing 与 E 的全部紧群 finite-word equality 已有解析证明。正文分别给出证明和反例，没有用检查数量替代这些范围区分。

## 2. 已执行计算

| 输入 | 结果 | 实际检查范围 |
|---|---|---|
| [Mathematica input](<cs_ym_five_packages_checks.wl>) | **26/26 passed** | 三射线 extension 的三次 polynomial family；非法 slopes 反例；含 harmonic cross term 的完整一模 annulus CPS；zero-mode inverse/clock relation；BCH 至八阶、coherent norm generating function、adjoint/charge 系数；SU(2) current 符号、Jacobi、CS cubic canonical decomposition 与 first variation；YM finite-time phases 和 diagonal kernel 系数 |
| [Sage input](<cs_ym_five_packages_checks.sage>) | **5/5 passed**, SageMath 10.9 | 三 rays 的 homogeneous restriction ranks，次数 0–12；三维 residual gauge jet rank；SU(2) fundamental tensor products 的最高权 1–8；diagonal lattice kernel 与 polynomial ideal |
| xAct xTensor/xPert/xTras, canonical pipeline | **1/1 residual zero** | CS derivative term 的 first variation 与保留的 divergence；无 package/setup errors 或 messages |

Mathematica 的非法 slopes 检查以非零 residual **1** 为正确预期；其余 residuals 为零（矩阵/向量逐分量检查）。Sage 的五个 conditions 全部返回 exact Python `True`，无 warnings、errors 或 truncation。最终保存的 Mathematica input 已整体重跑，输出 `total -> 26, allPassed -> True`。

初始化时一项 orchestration string 引号错误在调用数学工具前即失败，修正后才执行；它不是一个数学失败或已通过检查。一个没有独立左右表达式的重复恒等式未计入最终 suite。

## 3. xAct 可复现输入

使用 `profile=core`、`pipeline=canonical`，setup 为

~~~wl
DefManifold[M3,3,{a,b,c,d}];
DefTensor[av[-a],M3];
DefTensor[bv[-a],M3];
DefTensor[eps[a,b,c],M3,Antisymmetric[{a,b,c}]];
DefCovD[CD[-a]];
~~~

检查 residual

~~~wl
eps[a,b,c](bv[-a]CD[-b][av[-c]]+av[-a]CD[-b][bv[-c]])
-2eps[a,b,c]bv[-a]CD[-b][av[-c]]
-eps[a,b,c](CD[-b][av[-a]]bv[-c]+av[-a]CD[-b][bv[-c]])
~~~

返回 `0`。Orientation density 平行；divergence 被展开而非丢弃。非阿贝尔 cubic 项在 Mathematica 中以三个完全一般的 $\mathfrak{su}(2)$ 矩阵及三个独立 variations 展开，另检查其 canonical expression 和三倍变分系数。

## 4. 解析证明与 source inputs

- A 的充分性使用 explicit two-axis extension、连续除以 $r^2$ 和标准 smooth half-line extension；不是由有限 rank table 推断全部 smooth jets。
- B 的 quotient 用实际 gauge lifts和 de Rham period；其 discrete group 与 zero-mode quantization prescription 明确写出。Fourier CPS test 不证明这个全局 quotient。
- C 的 mode domain、weak-zero/no-strong-limit、ordered products由 explicit oscillator series 与有限能量 grading 证明；没有以有限 BCH terms 证明 Hilbert completion。一般 lattice energy-bound theorem 仅作对照。
- D 的 global reconstruction使用 $\pi_1(SU(2))=0$ 与 smooth group charts；polynomial faithfulness 用 finite-dimensional label space 的 submersion 论证；quantum kernel用 enveloping universal property与 PBW。有限 SU(2) examples不证明这三项。
- E 的 compact-group comparison 在明示 finite-graph canonical prescription 下逐 Peter–Weyl matrix entry 成立；full annihilator判据仍量化全部外部 labels。U(1) complete kernel依赖 exponential-polynomial sequence independence和群代数 exact quotient。

本轮 source checks 使用 [canonical disk currents](https://arxiv.org/html/hep-th/9110072)、[annulus holonomy与非阿贝尔 orbit](https://arxiv.org/html/1912.09465)、[lattice energy bounds](https://link.springer.com/article/10.1007/s11005-023-01682-y)。本轮推导的 sewing maps 与 kernel不由这些文献的结论代替。

## 5. 文档检查

首次完成阶段（本次解析补证前），五份新增模型笔记、此记录与三份更新后的索引共 **9 份 Markdown** 均由 Pandoc 的 `markdown+tex_math_dollars` reader 成功解析，无 stderr；共识别 531 个 math nodes。新增模型与记录中的全部 local links 已解析到实际文件；control characters、trailing whitespace 及本轮 gluing scope 的 whitespace check 均通过。保存的 Sage driver 也已整体重跑，五项再次通过。这里不声称已作 Obsidian GUI rendering，也未生成 article/texfiles fragments。

## 6. 解析补证：本次续接

本次补写 B §5.1、D §§7–10、E §6，并同步 C 的 pullback 指针与旧 YM quantum note 的结果指针。没有把上轮 symbolic checks 或 cited theorems 的摘要当作全体新证明。

| 结果 | 真正完成证明的一步 | 保留的范围 |
|---|---|---|
| YM 全部紧群 networks | 在 $a=U_2,U=U_2U_1$ 坐标中，任一 cut irrep 的 Hamiltonian 为 $c(\ell_1C+\ell_2M_\nu^{-1}CM_\nu)$；实际传播块化为有限矩阵的 global words。任意给定 word 只经过有限个 cut irreps，且该集合不依赖 global input spin。总传播时间为零给逐词消去。 | finite words、全部 real times、compact group Casimir prescription；未取 operator closure |
| YM kernel/image | partial first-interval evolution 给实际 section；对每个 Reynolds-averaged word 计算 reduction 后相减，所得 family 的 linear span 正好是完整 kernel。由独立 contour recipe 和旧独立 global envelope 得三对象 equality。 | 完整但一般为无限的生成族；不声称最小/有限生成或 zero-test |
| SU(2) vacuum module | PBW 先得到相同 induced vacuum module；使用明确的 affine maximal-submodule theorem，求得 cut/polarization left ideal 加 lifted singular-vector descendants 的完整 preimage。 | cyclic-vector kernel，不是整个表示的 operator annihilator；文中给出两者不同的非零 norm 反例 |
| SU(2) corner/Connes sewing | 实际 continuous piecewise-smooth traces 属于 $H^1$；endpoint cutoff 强逼近覆盖完整 cut group。独立区域 vacuum standard forms 的 relative Gram quotient 有显式 unitary；strong additivity 恢复所有穿过 P/Q 的 local intervals。 | 正整数 level、source-free integrable vacuum net、指定 Connes completion；raw corner-current products 的 smooth-energy domain 命题为假 |
| Annulus thin pullback | 全正 oscillator norm series 的 fixed angular coefficients 为 $\sum_m a_{m+\ell}a_m$；Gamma asymptotic 给 $q^2/k<1/2$ 的充要真空阈值。Mixed kernels 的 dominated convergence 给所有 finite-energy inputs 的 Hilbert limit及 closability。 | threshold 以上的 vacuum-domain no-go；不因此声称 arbitrary thin products 共享 invariant domain |

**新增 computational diagnostics。** 保存并整体执行 [Mathematica driver](<cs_ym_analytic_completion_checks.wl>)：**10/10 passed**。包括 SU(2) transpose/opposite-bracket normalization、矩阵 Maurer–Cartan identity、一个 polynomial spinor 的 covariant Casimir conjugacy、corner trace 的全部偶 Fourier coefficients、affine root-string recursion、levels 1–8 的两个 null/non-null witnesses、thin-line norm summation与其 asymptotic coefficient。

保存并整体执行 [Sage driver](<cs_ym_analytic_completion_checks.sage>)：**3/3 groups passed**，SageMath 10.9。遍历 global spins $0,\frac12,\ldots,3$ 与 auxiliary spins $0,\frac12,\ldots,2$ 共 **35 对**，检查 Casimir scalar、完整 Clebsch–Gordan spectrum 和 commuting Hermitian blocks。Finite spectra 不证明 §6 的所有紧群结果；那里使用实际 differential identity、strong commutation 和逐词有限性。

初次 Sage 探查误用不存在的 global function 名 kronecker_product，在进入数学检查前返回 NameError；改为 matrix.tensor_product 后通过。最终保存 driver 无 warnings/errors/truncation。没有为了提高计数重复旧 suite，也没有将工具调用失败计为已通过检查。

**明确引用的 theorem inputs 与阅读证据。**

- [BDH I](https://arxiv.org/pdf/1302.2604)：Proposition 1.28、Lemma 1.33/Corollary 1.34、Theorem 4.18、Appendix A.7。检索全文，并把 PDF pp.12、46 实际渲染查看，确认 relative product、vacuum unit、strong additivity 与 SU(n) 适用范围。此处是已发表 theorem 的模型应用，不声称本轮重新证明 conformal-net 的基础理论。
- [Panebianco v3](https://arxiv.org/pdf/2011.10491)：Proposition **24**，PDF p.15 已渲染核对；$SU(n)$ 的 $H^s,\ s>1/2$ extension，及 Hilbert–Schmidt Fourier criterion。没有用一般群的 $H^{3/2}$ statement 覆盖不属于该域的 corner traces。
- [Dong–Lam–Wang–Yamada](https://www.ncts.ncku.edu.tw/math/files/paper/2010-01-01.pdf)：§4，printed p.378/PDF p.8 已渲染核对，确认该文 $k\ge2$ setting 下 vacuum maximal ideal 的 singular-vector generator。所有 $k\ge1$ 的输入使用 Kac Chapter 10 Corollary 10.4 的 dominant-integral presentation；已核对书籍原文检索摘录和出版社章节指针，不声称渲染过该书全文。Regional preimage 和不为零的 full-operator counterexample 在模型笔记另证明。
- [BDH II](https://arxiv.org/pdf/1409.8672)：Theorem 2.29 与 §2.40 的 projective surface factorization仅作更广 theorem 的精确指针；本轮 disk theorem不依赖未检查的 charged fusion coefficients。

**本次最终文档检查。** 包含旧 YM quantum note 的新指针在内，共 10 份 Markdown 已通过 Pandoc reader，识别 1139 个 math nodes，无 stderr；新增模型与验证记录的 19 个实际 local Markdown links 全部存在。初次用正则抽取链接时误认了代码块中的 xAct expressions；改为读取 Pandoc Link nodes 后确认没有缺失链接。Control characters、trailing whitespace、gluing scope 的 diff whitespace check 均通过；vault-policy audit 亦通过。没有修改已有数学构建依赖或生成 article fragments，也未提交或推送。
