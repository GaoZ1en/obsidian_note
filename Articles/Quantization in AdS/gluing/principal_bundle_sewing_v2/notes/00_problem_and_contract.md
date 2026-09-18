# 00｜问题、目标与结论的精确强度

版本：2026-09-14，独立重写稿。本文不是旧稿加补丁；旧稿中的源域分拆、curvature 完备性及 CS 零模/归一化不作为证明输入。

## 0.1 要完成的不是一种形式上的 tensor product

给定一个 principal-bundle gauge theory、一类允许的区域、每块 timelike boundary 的物理边界条件，以及明确的观测量与量子化处方。研究如下操作：

\[
\text{独立闭合区域理论}
\xrightarrow{\text{只移除指定临时闭合}}
\text{相容的带源区域问题}
\xrightarrow{\text{连接、响应、规范与网络接合}}
\text{有完整外边界条件的新闭合理论}.
\]

这里“闭合”不表示没有空间边界，也不表示量子态纯，而表示当前没有未指定的 timelike 边界输入。固定的非零外部 source history 也可以定义一个非自治的闭合问题；默认的 autonomous benchmark 取零 history。

输出必须属于同一**允许对象类**，才能再次 opening。类不必包含所有 imaginable regions：例如一份只证明平直条带 IBVP 的模型，不据此接纳任意尖角、曲面、非线性背景。

目标代数首先在**未切分理论**中独立定义。sewing 成功意味着指定 source 的商与该 target 同构，且真实生成元、关系、括号/乘法、动力学均被比较。不能把 sewing map 的像再命名为“全部 target”。

## 0.2 三个不同的任务

(T) 理论装配：作用量、主丛、方程、边界条件和相容源问题的重建。

(A) 代数重建：相对于独立选定的 observable prescription，构造明确的 source、map、kernel 和 image。

(M) 最小性：在指定可遗忘数据的比较关系下，证明没有更少的数据能完成 (A)。

本文直接做 (T)、在明确模型中完成 (A)，并给 (M) 的必要性反例；**不声称已证明一个跨所有 YM/CS 模型的最小充分对象**。保存 action 的可重新开放对象是一种充分工作定义，不是压缩最优定理。

## 0.3 一个区域对象保存什么

记

\[
\mathfrak T_B(R)=\big(R,P,G,S_R,B,\mathcal G_{\rm prop},Q_\partial,u;
\mathscr O,\mathcal A_B,\mathfrak R,\mathsf q\big).
\]

这些符号的物理含义如下。

- \(P\to R\) 是实际主丛，\(G\) 包含全局群形式；\(S_R\) 包含 bulk、真实边界、临时 closing、corner、matter/defect 项及各自标签。
- \(B\) 是每块 timelike face 的边界定律，连同角点相容性、Cauchy/characteristic 数据域和需要的正则性；\(\mathcal G_{\rm prop}\) 是声明要认同的规范变换群，含离散分支选择。
- \(Q_\partial,u\) 是需要时使用的边界参考主丛及与 \(P|_\partial\) 的同构；不是无条件假设边界丛平凡。
- \(\mathscr O\) 指定测试函数、Wilson/network 标签、flux、sector-changing insertions 和完成方式；\(\mathcal A_B\) 是在该 prescription 下的经典或量子代数。
- \(\mathfrak R\) 是由 action/domain 重新产生选中边界的**完整源关系**的规则；它不是仍在传播的一套隐藏端口变量。\(\mathsf q\) 是量子化、重整化、global sector、framing 等额外数据。

暂时不用的 boundary source 不属于当前动力学自由度；保存它的构造规则不违反 closed-intermediate 要求。

## 0.4 不存在从一份裸闭合代数出发的无条件 reopening

同一个等时 CCR algebra 可以配不同的质量、势能或 reflecting walls；仅有代数不能恢复其边界响应。更直接地，旧 Dirichlet 区域的所有解在 cut 上满足 \(a_\parallel=0\)，未切分解的 restriction 一般不满足它。因此 restriction 通常不是

\[
\operatorname{Sol}_{B_{\rm out}}(R_1\cup R_2)\longrightarrow
\operatorname{Sol}_{B_1}(R_1)\times\operatorname{Sol}_{B_2}(R_2).
\]

正确箭头进入 **reopened source relation**。相应地，不承诺原来两份 autonomous algebras 各自以保持旧乘法和旧时间演化的方式嵌入全局代数。真正得到的是对完整区域对象的 composition。

## 0.5 本稿的结果层级

**E：文内给出构造和证明的精确结果。** 主丛的有同构数据装配；规范不变的 Wilson 拼接；compact YM2 的 holonomy–flux/PBW/Haar sewing、重新 opening 和三块结合；有限图的链路细分；固定平直 relative Maxwell 的全部平滑线性 Hamiltonian observables、polynomial CCR/Weyl sewing（包含谐和对）；U(1) disk 的 admissible current 数据、corrected symplectic/current algebra sewing 与 chiral opening；指定有限 CS Wilson 实现的关系与完整矩阵代数；固定 flat slab 的 coefficientwise formal classical YM source construction（不含其全部 nonlinear observable presentation）。

**C：条件性比较定理。** 对一般 YM/CS，只要具体区域源问题、variational matching、目标生成元 lifts 和量子 relations 已满足所列条件，就得到相应的 algebra comparison。条件中的存在性不由定理名称提供。

**I：采用的实现输入。** SU(2) 正整数 level 的 integrable/ribbon realization、其标准 cup/cap 和 coherence；一般 perturbative quantum theory 的重整化框架。采用它们不表示重新证明了任意 Lorentzian CS functional integral 与该实现等价。

**D：定义覆盖而尚无本稿完整构造。** 任意四维 interacting YM 的 thin Wilson/disorder algebra、任意非紧 CS、任意混合 null/corner IBVP、所有 state sewing。每项保留在目标矩阵中，不能为使定理变真而悄悄删去。

“覆盖某 observable”还要区分：几何定义有效、经典 Hamiltonian 准入已证、量子乘法已构造、sewing 已证。这四项不是同一标签。

## 0.6 物理上不可缺少的验收

一个主张“完整 framed algebra”的模型，至少要检测它实际具有的局域辐射、平坦 holonomy、共轭 electric flux、真实外边界 charges、允许的 Wilson endpoints、拓扑/charge sectors；CS 还要检测交叉 loops 和 channel-changing operators。不存在的自由度不能添加，例如无穿孔 flat disk 的非零总 current。

本文的强度来自明确可验收的等式，不来自抽象词汇数量。读者只需 differential forms、CPS、Hamiltonian constraints、群表示和 Fourier modes；额外词汇在第 11 篇按实际用途解释。

研究目标对照：Research Radar 的 framed-gauge 与 regional-quantum cards [U1]；CPS 的边界处理采用 [R1] 的逻辑，而不从该文推断任意 gauge IBVP 的存在性。
