# R-parastatistics：构造尝试与完整场网判据

这组材料研究：能否构造具有正定物理 Hilbert 空间、相对论协变性和类空可交换可观测量的相互作用理论，使其物理荷扇区具有新的 involutive $R$ 置换统计，并且不存在保持可观测量、真空与这些荷扇区的完整普通 Bose/Fermi 场网。

这里的“完整”要求同一个真空表示中的局域场能够从真空产生指定的全部物理荷扇区；仅把荷扇区列成可观测代数的不同表示不够。主要目标是高维相对论理论；下述具体连续模型和 kink 例子位于 $1+1$ 维。

**当前状态：没有完成所要求的新相互作用 $R$ 模型，也没有证明仅由正定性、相对论协变性和可观测量局域性推出的普遍 no-go。** 已完成的是若干显式构造、它们向普通场的归约、带有明确附加假设的障碍，以及完整场网的排除判据。

## 文件入口

文件夹包含六篇研究笔记、一个 Sage 验证脚本及本说明。建议先读主笔记的 Status，再读完整场网判据；其余按具体问题查阅。

| 文件 | 内容与状态 |
| --- | --- |
| [相互作用构造与候选路线](R-parastatistics%20and%20local%20relativistic%20interactions.md) | 主笔记。定义比较对象，构造 cyclic $R$ 相互作用模型，并分析反粒子、粒子数守恒、填充态、无限统计、非 Fock 极限及自旋模型等路线。显式 cyclic 模型可精确归约到普通玻色场。 |
| [完整场网与外部 intertwiner 判据](Complete%20field%20nets%20and%20R-parastatistics.md) | 明确从真空局域产生荷扇区的要求，证明 exterior-disjointness 障碍，并用自发破缺相中的 kink 扇区说明其非平凡性。例子不是新的 $R$ 统计模型。 |
| [DHR–DR 条件与文献调查](Parastatistics%20beyond%20DHR-DR%20reconstruction.md) | 区分置换统计与 braid 统计，列出重构所需假设，检查近期 $R$ 文献和若干连续场 ansatz。文献范围截至 2026-10-15。 |
| [非酉 $R$ 的 pair 可观测量](Nonunitary%20R%20pair%20observables%20and%20ordinary%20fermions.md) | 给出 density/pair 代数、表示分解、真空和相互作用向普通双分量费米子的归约；另检验更强局域条件及独立带荷粒子内积的障碍。 |
| [Crossing 与局域连续构造](R-parastatistics%20crossing%20and%20local%20continuum%20construction.md) | 构造含反粒子的 factorizing 模型，给出足够大双锥中的局域性估计，并证明指定 crossing 条件下的共轭对象与扩充粒子种类障碍。该模型的渐近粒子统计仍是普通玻色统计。 |
| [已撤回的 identity-net no-go](No-go%20for%20inequivalence%20to%20arbitrary%20Bose-local%20field%20nets.md) | 保留错误论证及其缺少完整性条件的说明。**不能作为原始问题的 no-go 结论引用。** |
| [有限模局域算符验证脚本](parastatistics_local_observables.sage) | 对指定 rank-one $m=3$ 家族计算一至三个模的精确 intertwiner/commutant 维数，配合 pair 代数下界得到局域代数维数 $5,42,429$。不覆盖任意模数或连续极限。 |

## 做了什么

1. **明确 DHR–DR 的适用条件。** 有限统计、可输运的有界区域局域荷、共轭对象及相应的 net/category 条件给出普通 Bose/Fermi 重构。相互作用本身不使该结论失效；某一假设未满足，也不能直接证明不存在其他完整普通场实现。

2. **实际构造并检查了 cyclic $R$ 模型。** 写出相互作用、变分方程、交换代数和局域复合算符，随后给出向普通玻色场的显式归约。进一步完成含反粒子的 $1+1$ 维 factorizing 构造，并在所引用的解析估计条件下得到足够大双锥中的非平凡局域代数。这些是可工作的构造，但没有提供所要求的新物理统计。

3. **检验并排除了若干具体候选机制。** 包括粒子数守恒 Fock 代数的平凡真空扇区、特定 $R=\pm I$ 实现中的自然反粒子配对障碍、填充态 density 代数的普通费米子实现，以及非酉 rank-one $R$ 的 density/pair 可观测量归约。每一结果只覆盖笔记中定义的代数和表示；没有把它们合并为普遍 no-go。

4. **建立了 crossing 路线的条件性障碍。** 在有限维、正定、酉且 involutive 的条件下，指定的 constant crossing 关系提供非退化粒子—反粒子收缩与共轭对象。还讨论了正规散射矩阵的高快度极限，以及把有限粒子家族嵌入更大、甚至无限粒子种类空间的尝试。结论依赖相应的解析性、交换封闭性和 crossing 假设。

5. **补上了真正使用完整性的判据。** 若某物理荷表示在每个有界区域的类空外部都与真空表示 disjoint，则保持原可观测量局域性的场无法从真空产生它；更大的完整 Bose/Fermi parent 同样受此限制。证明通过外部 intertwiner 和有界渐近可观测量的强极限完成。

6. **给出完整重构障碍的相互作用例子，并保留其边界。** 利用已有的 $1+1$ 维自发破缺标量理论及 soliton 存在定理，kink 的不同渐近序参量排除了包含该扇区的完整局域 parent。这否定了不分维数、对全部物理扇区的普遍完整重构说法；它没有证明 kink 具有新的 involutive $R$ 统计，也不是 $3+1$ 维反例。

## 必须保留的更正

先前将可观测量网本身当作普通 Bose-local 场网，再把荷扇区放在其独立表示中，或另加一个张量积 spectator，只给出表示层面的嵌入。它没有构造从同一真空局域产生全部荷扇区的场，因此不能完成要求的 no-go。这一结论已明确撤回；相关文件为说明缺口而保留。

## 验证范围

- **Verified:** 各笔记记录了相应的 Mathematica、xAct 和 Sage 检查，包括代数恒等式、场方程、Yang–Baxter/crossing、有限模表示和 commutant 维数。一般性结论依靠正文中的证明，有限计算仅作核验。数学 PDF 的关键公式和定理页经过文本定位及页面核对；具体范围见各篇 Verification。
- **Assumptions:** 构造性场论的存在结果、重构定理及逆散射所需的解析定理作为明确注明的文献输入使用；没有重新证明这些完整定理。各篇分别列出正定性、局域化、反粒子、内积和极限假设。
- **Not verified:** 满足全部原始要求的新相互作用 $R$ 理论、仅由三个最小公理推出的普遍 no-go、非酉 pair 家族在任意区域的全部局域算符分类，以及新的 $3+1$ 维连续构造。

Sage 脚本可在安装了 SageMath 的环境中运行：

```sh
sage parastatistics_local_observables.sage
```

脚本中的模素数计算给出特征零 nullity 的上界；与已证明的 density/pair 代数下界相等后，才得到对应有限模结论。一模结果另在数域上直接核验。

本次整理将原有六篇笔记和一个脚本移入共同目录，并新增本说明。移动时七个文件的 SHA-256 均保持一致；提交检查随后仅清除了三篇笔记末尾各一个多余空行。原有正文、公式和文件名保持不变，文件之间的相对链接随共同目录移动而保留。

## 尚待解决

后续若继续原始构造问题，需要同时给出物理带荷扇区的正定相互作用表示、协变与可观测量局域性、实际的置换统计，以及排除完整普通 parent 的证据。仅有辅助交换矩阵、不同的计数函数、某个 DHR 假设失效，或一个普通场的特殊表示，均不足以完成这些要求。

## Kink 路线的后续检验（2026-10-23）

在上述原六篇笔记和原脚本之外，新增 [Kink 路径交换检验](<Kink path exchange and involutive R.md>) 与 [配套 Sage 脚本](<kink_path_exchange_checks.sage>)。修正的 face crossing 说明多真空路线不能直接套用旧的固定张量空间 crossing 条件；但对无边重数的 $A_3$ 图，恒定、保持外端、involutive 的 Yang–Baxter 交换已被完整分类为 $\pm I$，且二者均不兼容所指定的正定 cup 映射。另一个迹为 5 的非普通三标签交换确实存在，但其 face-crossing 支持条件失败。三真空置换矩阵的完整有限枚举得到 13 个 Yang–Baxter 解，其中只有 4 个通过旋转支持检验，并均可还原为普通交换表示。

这些结果经过解析推导、精确 Sage 检验和独立复核；不包括任意量子振幅、额外边重数、所有快度依赖补全或新的相对论场网。原构造目标仍未完成。

后续的 [Weighted face crossing 与重构](<Weighted face crossing and reconstruction.md>) 将其中指定的正号 crossing 路线推进到一般量子振幅：有限连通无边重数图上的 weighted crossing 与 involution 自动给出 cup 自然性；生成范畴的单位为简单对象，Perron cup 是标准共轭解，因此统计维数为整数并具有普通 Bose/Fermi 范畴重构。笔记还给出稠密非置换解、普通 $S_3$ 的非均匀权重对照，以及一个通过散射方程但不通过固定 involutive pair 自然性的带符号构造。[新验证脚本](<weighted_face_crossing_checks.sage>) 完成精确检查；一般成分证明和物理解释另经独立复核。这仍不是时空场网重构，也没有证明仅由三个最小公理得到的普遍 no-go。

## Nonrigid 与 full-Fock 路线的检验

新增 [Nonrigid sectors 与 q-Fock 局域性](<Nonrigid sectors and q-Fock locality.md>) 及 [精确验证脚本](<q_fock_locality_checks.sage>)。对 full/q-Fock 的范数闭产生算符代数，证明了任意可观测量的类空平移交换子极限公式；在 $|q|<1$ 时，局域性迫使可观测量真空 GNS 表示为一维。中性 pair、多项式及其范数极限均包含在内，但不能与有限内部 $R=I$ 模型混同。强闭包不受同一结论约束；真空投影与该范数代数的距离恰为 $1/2$，明确展示了两类完成的区别。

同篇核对了 massive-sector 的有限统计／反粒子定理：在不可约荷扇区及相应 duality 假设下，孤立正质量壳已排除无限统计；有限壳简并不是所核对表述中产生该结论的必要附加条件。它仍不蕴含完整的有界区域场网重构，也不覆盖所有 gapless、不同局域化或 strong-limit 构造。新模型仍未构成。

后续的 [q-Fock 强局域 core](<Strong local cores of q-Fock fields.md>) 直接处理任意 von Neumann 元素：在无限维、类空辛正交及一粒子复稠密条件下，同一套左场网对整个指定外部代数的 relative-local core 只有标量；有限实内部表示的中性二次可观测量已经足以检测全部真空涨落。[精确脚本](<q_fock_strong_core_checks.sage>) 检查左右场关系、中性检测恒等式、端点与反例。这不是任意局域子网的分类，也不排除左右 wedge 场交集。该笔记另算出 massive wedge 的实投影 modular 映射为 trace class，而正式正向判据所需的 modular product 在每个有限间隔均非紧；2025 预稿中的较弱正向条件已经在正式 OWR 版本中改正，不能据此宣称局域理论存在。证明与关键区别均经独立复核，原始构造目标仍未完成。

[局域粒子可达性](<Local particle accessibility in q-Fock wedge nets.md>) 进一步给出左右 wedge 构造的二分：在标量单粒子壳不可约及 modular boosts 条件下，任一局域算符具有非零质量壳分量，就迫使局域算符生成整个 wedge 代数与全局 q-Fock 真空空间；否则局域真空表示中没有任何非真空确定质量壳。实际非标量有界局域算符必须带无限粒子数极化尾部，并与产生算符范数代数保持可计算的正距离。证明、有限代数及质量谱检查均已完成并经独立复核；中性子网、固定双锥循环性和渐近完备性的区别保留，尚未决定哪个分支实际实现。

## 量子双交换与拓扑荷的外部判据

新增 [量子双交换与 exterior-disjointness](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Quantum double exchanges and exterior disjointness.md>) 及 [精确验证脚本](</Users/koishi/Documents/Note/Drafts/R-parastatistics/quantum_double_involutive_checks.sage>)。对任意有限 $D(G)$ 对象，完整交换的 involution 等价于 commuting flux support、标量作用及相位互逆；显式多粒子酉变换将其化为普通 superflip。因此其全部置换角色与固定-$R$ Fock 计数均为普通 Bose/Fermi 形式，不能把 unchecked universal $R_0=\pm I$ 误认成实际交换 $R=\pm I$。$S_3$、八阶 $D_8$、混合奇偶及非实相位例均经精确检查。

同篇给出一个更强的条件性排除路线：在所列 $2+1$ 维 Haag-dual BF 框架下，非透明荷不能在任何有界区域局域化；若另有真空局域 III 型因子和带荷外部因子性，则外部不等价升级为 exterior-disjointness，排除所有完整有界局域 parent。在可分表示空间上，还证明了 disjointness 与实际 additive exterior 中一致有界正算符的双表示强分离序列等价。该证明必须在真空与带荷的联合表示中使用 Kaplansky 稠密性，不能只做真空强逼近。

一般证明与关键表示论步骤经独立复核。普通固定点 electric 荷和局域代数为标量的 TQFT spectator 均不能给出所需反例；范畴上非平凡的环检测值也不自动证明 additive-exterior 归属。目前尚缺真正的相互作用相对论连续模型及其带荷外部因子性或其他 disjointness 证明，原始构造目标仍未完成。

## 显式四次 Higgs 势与有限能磁通

新增 [Dihedral Higgs phase 与有限能磁通](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Dihedral Higgs phase and finite-energy fluxes.md>) 和 [精确验证脚本](</Users/koishi/Documents/Note/Drafts/R-parastatistics/dihedral_higgs_phase_checks.sage>)。在 $2+1$ 维构造了非负、coercive、按幂计数超可重整化的四次 $SU(3)$ Higgs 势，证明其全部零点恰为单一 $SU(3)/D_8$ 轨道；这里 $D_8$ 为八阶二面体群。完整辅助场模型有 166 个正的横向标量 Hessian 方向和八个规范零模，八个规范玻色子的经典质量矩阵也已显式计算。辅助场是传播场，图代入只用于真空和 Hessian 核，不能当作有限质量下的精确积分掉。

同篇给出平滑反射磁通构型及精确能量 $E(R)=\pi/(g^2R^2)+E_0+\pi\mathcal D R^2$，从而证明该拓扑类含有限能量场构型。其规范场方程残差非零，故最优 $R$ 仍只给变分上界，不是涡旋解或 dyon 质量。全局真空、横向稳定性、张量归一化、能量积分及文献适用范围均经解析推导、CAS 与独立复核；量子连续存在、实际有限质量 dyon、带荷散射和 exterior-disjointness 仍未证明。原六篇正文未改，原始新统计构造目标仍未完成。
