# 08｜多次粘合：哪些额外数据真的必要

“需要 homotopy data”不是允许无限追加抽象的许可证。本篇把可能的差异拆成可计算的问题。普通 principal G-bundle 用 transition maps、它们的 compatibility、以及 gauge automorphisms 足以陈述 classical descent；只有某个实际 comparison 不能严格相等时，才记录控制那个差异的进一步数据。[R9,R15]

## 8.1 先保留 objects、arrows、stabilizers，而非只留 orbit names

切分输入是 \((P_i,A_i,h_{ji})\)。isomorphism 是一族实际 bundle maps \(g_i\)，满足
\[
 A_i'=A_i^{g_i},\qquad h'_{ji}=g_jh_{ji}g_i^{-1}.
\tag{8.1}
\]
记住一份 field 有哪些 stabilizers，不等于给它增加新的 physical coordinates。这样做避免：两个已经取成 orbit 的片段可能有几种不等价的 seam identifications，而粗 orbit sets 无法再辨别它们。

一个最简单的例子是把 interval 的两个 endpoints 自粘为 circle。必须只取**一份** interval field，同时给两个 boundary occurrences 和一个 identification；若复制成两份 interval phase space 再 quotient，就改变了问题。circle Wilson 是原 interval transport 与这个 identification 的组合。

在 triple overlap 上，按第 01 篇的方向约定要求
\[
 h_{13}h_{32}h_{21}=1.
\tag{8.2}
\]
这个 cocycle 是同一 fibre 的三个坐标转换的一致性，不是要求任意 spatial closed-loop holonomy 等于 1。curvature、非可缩 loops 的 holonomy，以及 defects 的 monodromy 仍可非平凡。

## 8.2 两种 binary order 为什么可相同，何时不该相同

固定同一 geometric quotient、同一 allowed bundle sectors、同一 external boundary data、同一 collar identifications 与 defects。先在所有片上写一次全体 matching equations，再按不同顺序消去内部变量。若每一步都保留同一 solution/gauge data，(8.1)–(8.2) 保证最终 fields 与 bundle maps 相同；第 04 篇的 comparison 给同一 CPS/algebra map。

这不是说“所有切法都给 identity”。把一条 Wilson line 绕过另一条、对 boundary 做 Dehn twist、改变 knot framing 或让一条 path 穿过 defect，通常改变了几何操作本身。其 braid、mapping-class 或 framing operator 应当保留，而不是被作为不结合误差删除。

因此每个三块检验都应明确：比较的是**同一 gluing 的 regrouping**，还是两个不同 isotopy classes 的 gluing。YM2 中矩阵乘法结合检验前者；CS 中 braid operator 往往表示后者。

## 8.3 几个会强迫增加数据的具体失败

**bundle topology。** 第 01 篇的两个局部平凡 bundle 名称不能决定 monopole n；但若保留 $S^2$ 上的完整曲率与取向，则 $n=(2\pi)^{-1}\int_{S^2}F$ 已可重建。同曲率的差连接在普通 unanchored $S^2$ 上为 exact；这不恢复唯一 raw representative，更不授权丢掉本稿的 gauge directions。真正同剩余局部数据的见证是：同一 interval 的 $a=0$ self-sew，identification $h=1,-1$ 给不同 circle Wilson。仅当其余数据尚未固定该 identification 时，它才证明信息不可删。完整 $h$ 已给时，cocycle、sector 归属和 winding 是需计算的检查，不是额外自由参数。proper 箭头另须执行第 04 篇的 global branch 检查。

**reference frames 与 flux。** Maxwell 的 \(\int E_n\delta\lambda\) 和 \(\int\lambda f_n\) 分别由 symplectic descent 与 gauge invariance 强迫出现。它们不是为了美观加的新的 phase-space factor。删掉它们即可用 independent regional gauge variation 得到反例。

**charged channel transport。** 三个边界 charge 的两种 grouping 给不同 intermediate bases。需要实际 unitary matrix F 连接，并运输全部 operators。只列 \(N_{ab}^{c}\) 不足；第 07 篇的 B 是必要的 off-diagonal witness。

**residual symmetry。** reducible field 的 stabilizer 影响 constraint rank 与 measure。在不同 strata 间强行套用单一 regular symplectic quotient，可能丢掉 center、产生多余零模或错数 state multiplicities。可以分 strata 给结果，不要求先发展一般 derived geometry；但必须把失去 regularity 的地方写出来。

## 8.4 F、pentagon 与 cups：最少应记录到哪里

对三个 charge 的两种 brackets，记实际 basis change
\[
 F_{abc}^{d}:\bigoplus_eV_{ab}^{e}\otimes V_{ec}^{d}
 \longrightarrow\bigoplus_fV_{bc}^{f}\otimes V_{af}^{d}.
\]
每个 \(V_{ab}^{c}\) 是有具体 trivalent maps 和 inner product 的有限维 channel space，不是一个整数。四个 charges 有五种 grouping，沿不同路径重关联所得 map 必须相同；这就是 pentagon。它只表示“同一个四段接合不依赖用哪串 F 改括号”。有 crossing lines 时再要求 F 与 R 的两条换路相容，即 hexagon。cups/caps 表示创建/消去共轭端点，其 normalization 还必须与 F,R 同时相容。

在 channel bases 重相位 \(v_{ab}^{c}\mapsto u_{ab}^{c}v_{ab}^{c}\) 下，F 的每个 entry 会乘上对应 input/output basis 因子；由这些 maps 定义的 Wilson、cups、evaluation 也须一起运输。不能只把一个四点 F 换成更好看的矩阵，同时说其它 maps 全部固定。

本包只对实际列出的 SU(2)₂ 四点 operators 作显式矩阵检验。**全部 higher-charge pentagon/hexagon/coherent channel maps 是所采用 unitary realization 的输入，不由那几个 2×2 tests 证明。** 要独立构造一套新的 realization，就应扩大 tests/解析证明覆盖每个实际使用的 admissible label tuple，而不是宣称 braid relation 已足够。

## 8.5 action、prequantum line 与 projective phases

在 CS 或带 topological terms 的模型，boundary 上的 exponentiated action 有时自然是某条一维 complex line 的向量，而非预先有公共相位的复数。两边 opposite orientations 对应互为 dual 的 lines，sewing 使用它们的 pairing。[R9]

不想先学 line bundles，可以这样理解：每个 boundary configuration 先有一个仅差整体相位的 amplitude slot；换 gauge/trivialization 会按已知相位转换。若不记录这个转换，不同 patch 的 amplitudes 不能比较。

令 group/gauge maps 在 quantum states 上满足
\[
 U(g)U(h)=\alpha(g,h)U(gh).
\]
算符乘法本来严格结合，因此
\[
 \alpha(g,h)\alpha(gh,k)=\alpha(h,k)\alpha(g,hk).
\tag{8.3}
\]
重新选择 phase \(U(g)\mapsto\beta(g)U(g)\) 改变 \(\alpha\) 为相应 coboundary。其不能被这种重相位消去的部分才是实际 projective obstruction。若 \(\alpha\) 是 scalar，\(\operatorname{Ad}_{U(g)}\) 在 observable algebra 上可能严格作用，但向量 lift、群实现和带插入振幅仍可记得 phase；代数态/密度矩阵不随整体向量相位改变。**所以“observable conjugation 没发现问题”不证明 quantum theory 全层次没有 anomaly。**

ordinary regrouping 若实际得到 phase，需要说明：是 choice artifact、framing/metaplectic correction，还是 uncancelled anomaly。后者可能阻止把 seam symmetry 当 proper gauge；不能用“homotopy coherence”一词把不一致掩盖成成功。

## 8.6 BRST homotopies 是另一个层次，不要混同 geometric isotopy

用 s 表示 gauge differential，\(s^2=0\)。若两份 chain maps 对物理 classes 应相同，能构造
\[
 R'-R=sH+Hs
\tag{8.4}
\]
就保证它们在 cohomology 上相同。H 是具体把差异写为 gauge-exact 的 correction map；在多次接合中若这些 H 的组合还有非平凡差异，才需要更高 correction。

这是一个实用充分条件，不是要求每个模型都先提交无限塔。若目标仅是 degree-zero observable algebra 的同构，可以直接在 \(H^0\) 上构造 inverse，并不必须先证明整个复形的 chain-homotopy equivalence。例如零微分复形 \(C^0=D^0=\mathbb R,C^1=\mathbb R,D^1=0\) 的投影在 H⁰ 上同构，但 H¹ 不同。

本文 YM2、linear Maxwell 和 U(1) disk 使用完整未约化 fields、实际规范作用及其 invariant observable presentation，已足以作所声明比较；第 05–07 篇的 reduced 坐标只作派生验收，不为这些证明再增加 BRST。non-Abelian interacting/renormalized theory 确实需要 s 与 Ward data 时，再把它加入，并在 source/boundary/corner domains 上实际检查 (8.4)。

## 8.7 最小记录表，不是一个普遍最高结构

每个模型至少记录：seam maps 及 allowed components；triple compatibility；outer-frame identifications；哪些 regroupings 与哪些 physical moves 被比较；quantum realization 的 cup/F/R/phase conventions；若使用 gauge fixing/BRST，记录比较 maps 及实际所需的 corrections。

只对已出现的 obstruction 增加下一项。例如只有 Abelian interval chain 且无 large sectors，不需要一般 modular category；但含 SU(2) charged punctures 的相应目标必须能恢复实际 F/cups。若它们已由完整 quantum realization 确定，则可删独立缓存；只翻转 F 而固定杯帽，不是第二份满足完整条件的合法实例。对 topology-changing/self-gluing，不能只保留 tree-shaped cuts 的证明。

**“最小性”的可证形式**是删除数据后出现一对输入，它们在剩余数据下完全一样，却有不同的目标 Wilson/flux、bracket、operator 或 phase。第 10 篇列出这样的 witnesses。本文给必要性实例，不宣称已对全部 principal-bundle gauge theories 求得唯一最小 package。
