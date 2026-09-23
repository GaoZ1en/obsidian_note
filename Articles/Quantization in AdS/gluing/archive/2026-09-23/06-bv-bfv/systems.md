# 可再开放的 BV–BFV 系统：action-level 定义

**结果层级：构造中的一般定义。** 本文固定要组合的资料与 opening/release 的操作。它不把一般非线性 IBVP 的可解性、平滑性或量子比较作为已经实现的结论。CS 的实际 dg 实现见 [corner descent](corner_descent.md)；formal extension/refinement 见 [NR](nonabelian_relative_descent.md)、[FC](finite_cut_coherence.md)。Finite SU(2) 的 classical full-field functor 和 smooth Hamiltonian 类见 [ND](nonabelian_disk_observables.md)；quantum observable prescription 的实际域见 [QD](quantum_observable_domain.md)。

## 1. 对象保留什么

一个区域对象有下列有实际用途的资料：

1. 带 faces/corners 的定向区域、bundle/transition sector 和允许的几何识别。真实外边界、临时人工面及 defect 分开标明。
2. 各层 BV/BFV fields、Q、action、配对、restriction；实际有限 gauge maps 及哪些 assembled maps 是 proper。Lie algebra ghosts 不替代有限群与其分支。
3. 作用量与域定义的 physical realization：真实 boundary action/condition、temporal/characteristic data，及 joint traces。临时 closure 另外记录其可撤去的项与所固定的 variation。
4. 从上述 action/domain 重新形成完整源关系的规则。源关系保留所有 solutions、variations、arrows、history 和 response；并不要求是单值响应算子。
5. 由区域自身选定的 observable 类及其允许 products、Hamiltonian 条件；量子级另外给真实可用的乘积处方与公共域。

源关系是规则的输出或缓存，不能仅保留某个固定源 fiber 后声称可逆地恢复整个规则。Observable 输入也不能用“能延拓为全局 observables 的那些”循环定义。

变更 collar、场坐标或 polarization 时，比较必须逐项运输这些资料。改变真实边界速度、coupling 或 proper policy 是改变理论资料，不能用同一“辅助选择独立性”抹掉。

量子 realization还须记录实际 boundary/corner operator、state及residual integration域、半密度归一化和可用的quantum differential。对open faces，不预设每片单独是nilpotent complex：[QB](quantum_collar_and_corners.md) 已从action计算出bulk operator的corner curvature、Ward defect与projective composition factor。比较必须运输这些具体资料，并证明适当的共同corner pairing抵消它们；scalar rephasing本身不够。Cylindrical state kernel也不能代替全部local BV observables的重整化域。

[WH](physical_wall_and_caps.md) 进一步表明，不能普遍要求每片以 sharp arc energy 在同一 exterior Fock vacuum 上产生自主动力学；该例的 vacuum norm 发散，普通 sharp 时间积分也可能仍发散。可用的区域输入须保留 action 定义的 history/response、实际 cap polarization 与 pairing domain。WH 的 physical-sector release 和 continuum cap operator 是具体实现，但未替代完整 regional quantum BV states 与 determinant transport。

[QT](quantum_cut_quartet.md) 的自由 proper block 另给三项实际输入要求：regularization 必须验收原 smooth endpoint/cap 域；量子插入及其乘积须随 cutoff/normal-ordering 资料运输；determinant normalization 须保留取向。QT 的显式相容映射只比较已声明的 canonical block 与 cutoff choices，不预设一般 gauge-fixing family 或 bulk determinant line 已平凡化。

## 2. Opening 与 release

在一个已经选定的 temporary face 上，opening 执行两件具体操作：撤去所标记的 temporary closing 项；放开其原来固定的变量，使其成为自身 source relation 的变量。真实边界项与域保持。若相应 transformation 改变 source，Q 必须同时作用于 source；CS 的例子是 Qq 等于 cut ghost 的时间导数。

对两片共同 history q，完整 on-shell variation 写为
$$
\delta S_i=\Theta_i^f-\Theta_i^i+\langle\lambda_i,\delta q_i\rangle.
$$
先拉回共同的 joint source 域，再释放同一个 q：
$$
q_1=q_2=q,\qquad
\lambda_1+\lambda_2=0.
$$
这里 response 已携带 outward orientation；求和式不再次添加方向符号。角点 covectors 同样拉回到允许的 joint variations。不能仅分别匹配 face coefficients 而漏掉不独立的 corner variations。

消去 q 的写法若使用存在量词，应保存见证 q 及其 automorphisms，或者给出等价的 homotopy-coherent relation。取一个粗 image 会丢失 stabilizer 和 obstruction。正文的区域 field object 始终保留见证。

[BS 的实际反例与构造](bulk_boundary_source_release.md) 进一步区分 prescribed-source bulk complex 与 released complex：原区域方程可成立而共同 response 不为零。Release 的 BV resolution 因此要记录这条新增 stationarity equation 及接口 antifield 的 Noether relation；它不是原 bulk 的普通变量变换。Smooth bulk cotangent 也不自动包含 pure boundary source covectors。BS 已给指定 Abelian 模型的连续 Q-map；一般系统的 cotangent 域、完整 pairing 和量子 composition 仍须分别验收。

在 CS 中，这些操作由 [原构造 §§4–5](u1_cs_open_chord.md) 实现：负向 seam polarization 项产生 response，共同 q 的 stationarity 给 tangential A matching；全 superfield matching 还要另带 ghosts、antifields 与 corner restrictions。

## 3. 中间结果的重新开放条件

对一个已经粘合的 cluster，保留：

- 全部尚未释放的 faces、真实外 action 与域；
- 原区域 action 的实际有限和及已经取消的成对内部项；
- output bundle、transition cocycles、assembled proper 标记；
- 尚存源的完整关系、角点项和 observable 处方。

这样 opening 的定义有数据可用。但“再次产生的 relation 属于同一个连续/dg 范畴”和“目标源在所需域上可实现”仍须证明；前者不是把失去正则性的输出重新命名，后者不是预设响应算子。

CD1 已构造单 cut Abelian continuous object 与 physical boundary domain；FC/NR 已构造同一 exterior 下的有限 conical fully opened matching models、formal nonlinear comparison 及 refinement coherence。它们仍不能替代任意 intermediate closure 的 source compatibility/reopening 证明，该缺口继续保留在 G1/G2/G4。

## 4. 何种比较有内容

一个比较包含 actual field/arrows map、boundary realization 的运输以及 observable pullback；它须保持 Q、成对边界变分和规定的 products。在弱比较中，配对允许有明确 relative homotopy，但比较是否保持 Poisson/Hamiltonian observables 必须另证。

最终将需要为这些对象组织可复合的 correspondences 和更高 homotopies。本文暂不宣称已经得到一个完整的高阶范畴。

**Verified:** CS 的 action/source 实例已有变分检查；本轮 boundary complex 与 corner maps 见对应证明。

**Assumptions:** 各对象有明确 action/domain、实际 gauge policy 与 trace maps。

**Not verified:** 任意 nonlinear realization 的存在、一般 reopening 闭包、全套 coherence 与 quantum morphisms。
