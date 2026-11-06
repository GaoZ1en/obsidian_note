# 从 Reconstruction 到 Regional Descent：迁移记录

**日期：2026-09-26。** 对应新主文档 `REGIONAL_BV_BFV_DESCENT_FORMALISM.md`。本轮生成新版本，未覆盖任何原始材料。

## 1. 基准文件与修改范围

权威主输入是本轮上传的 `REGIONAL_BV_BFV_FORMALISM.md`：2327 行原始 Markdown，173695 bytes，SHA-256 为

```text
66e8c9f8b2efcdb15b62bba02937cd88c2d06105ae9af6830ac639dce977c6cd
```

另一个输入为前一轮 `structured_interface_sewability_2026-09-26.zip` 中的 `STRUCTURED_INTERFACE_SEWABILITY.md`（下称 SIS）及 `PATCH_PLAN_FOR_REGIONAL_BV_BFV.md`。这两份已挂载的 Markdown 与 zip 成员逐字节一致。详细校验值见 `SOURCE_MANIFEST.json`。

必须区分版本：SIS 的 patch plan 对照的是较早主文档，其下游章节定位不能直接套用。本轮主输入已经把 homotopy/residual theory 放在 §4，并在 §§9.7、11.3、12.1–12.2 增强了 Gaussian lifts、mixed incidence、actual joint fibre 及态代表比较。新文完整保留这些内容，以本轮 13 章版本的编号为迁移依据，没有退回较早包。

本轮没有新增一般 PDE、inverse、非微扰量子或无限 refinement 理论。修改的实质是重新确定定义的方向，补入已完成的几何存在与构造结果，拆开 definition、construction、internal compatibility 和 optional comparison，并证明相应的有限 descent consistency。

## 2. 新的依赖方向

旧叙事的主要问题不是每个区域都完全没有独立定义，而是主文、interface datum、bundle assembly 与许多 theorem 的终点仍反复借助“original global theory”。新的基础是

\[
\mathfrak T+\{\mathfrak d_{R_a}\}
\longrightarrow\{T(R_a)\},
\qquad
(\{T(R_a)\},D)\longmapsto T_D.
\]

这里 \(\mathfrak d_{R_a}\) 明示区域几何、实际束、固定背景、物理/sector 条件与 domain；共同 local rule 不被声称能够自动选出这些实现。量子化使用额外的 realization \(\mathfrak q_a\)；共同 ordering/renormalization/Ward prescription 也不自动指定 two-point data、polarization、measure 或 cycle。

新主文的 \(D\) 下标指已构造的 assembled object，\(\#\) 指 regional equalizer 或 regional computational route。两种记号不再暗指两份预先独立给定的 global theories。为避免与 BV 向量场 \(Q\) 混淆，量子化操作写成 \(\mathsf{Quant}\)。直接量子化的态明确写为 \(Z_D^{\mathrm{dir}}\)。

\(\mathcal F_D^{\rm sm}=\mathcal F_\#^{\rm sm}\) 表示完整 regional equalizer；\(\mathcal F_D\) 表示新构造束上的 section presentation。两者由 section lemma 中的 \(A\) 识别。随后出现的 \(S_\#=A^*S_D\) 等式是两种已构造坐标表示的相容性，不是把未知输出定义成预先给定目标的 pullback。

## 3. 五个结构性定理的来源

| 新结构 | 位置 | 来源与本轮处理 |
|---|---|---|
| Theorem I — Structured sewability | §3.1 | SIS A0/A1、B、C 的必要部分。保留 face / actual germ / completed seam、实际 realization、signed jets、primitive diagram lifts。给出 Čech 证书和 quotient/atlas 构造证明。 |
| Theorem II — Regional descent / closure | §3.3 | 原 3.1 中的 smooth section 证明与 SIS D–E。先构造完整场，再检查局部系数、切向性、相反 incidence 和 regular boundary descent。原 target-bundle assumption 不再需要。 |
| Theorem III — Automorphisms / sectors | §3.5 | SIS F–G。以实际 regional automorphisms 的 action groupoid 分类 cut-marked presentations，保留 restriction kernels、stabilizers、disconnected maps 和 simultaneous restriction。 |
| Theorem IV — Finite composition | §13.1 | SIS H 与原 13.1 的经典构造部分。先检查共同角点/overlap 的 cocycle，再比较 admissible orders 的同一等价关系、equalizer 与局部和。 |
| Theorem V — Derived compatibility | §14.1 | 对现有 CPS、response、observable、quantum 和 insertion 结论作有类型的综合。每一行保留自己的完整条件与结论强度；它不是“所有 Derive 自动 commute”的新无条件定理。 |
| Corollary IV-R — Finite refinement | §13.3 | 从 I、II、IV 和同一 local evaluation 的 locality/domain consistency 导出。经典部分给证明；下游及量子版本回用现有 realization certificates，不由 identity datum 单独推出。 |

主文保留 numbered supporting propositions / realization theorems，避免为了压缩 headline 数量删去可检查的技术论证。只有 I–V 作为统一的结构性主定理；物理与量子实现的条件明确挂在其所属层。

## 4. 原主文每一个编号命题的迁移

类别：A = construction；B = internal compatibility 或支撑该相容性的技术结果；C = optional comparison。某些原命题的内容被拆入多个类别，表中明确列出。

| 原编号 | 原命题 | 新位置与类别 | 保留、改变和结论强度 |
|---|---|---|---|
| 3.1 | Smooth BV reconstruction | §3.3 section lemma + Theorem II（A/B）；§16 comparison corollary（C） | 不再要求 maps 先 descend 到 original global bundle。smooth section 部分保留；local closure 用 SIS E 补成构造。原对独立 \(S_M,Q_M,\omega_M\) 的等式只留在 §16。 |
| 3.2 | Finite transmission proposition | §3.4 Realization proposition 3.2（B） | 法向 Legendre injectivity、normal-form equations、source/coefficient jets、约束与 joints 条件不变。仅解释为有限传输进入新 full smooth equalizer。 |
| 4.1 | Strict and homotopy matching | §4.1 Proposition 4.1（B） | \(e,t,j,\pi_K,h_e\) 的公式和证明保留。\(K\) 对应新 assembled theory 的 deformation complex；不再对应预先供给的 global complex。 |
| 4.2 | Transfer of interface matching | §4.2 Proposition 4.2（A/B） | \(I,P,H\)、finite comparison complex、kernel/cokernel residual modes 和 contraction composition 全保留。没有把缺失的 interface modes 删除。 |
| 5.1 | CPS reconstruction | §5.2 CPS compatibility（B） | 两条路线分别是 vary assembled action 与 sum regional potentials。代表、角点、actual tangent-family 条件保留；radical 对应不被升级为任意 singular gauge reduction。 |
| 6.1 | Four-term Green homotopy | §6.3 Realization theorem 6.1（A/B） | 四个 contraction identities、ghost/dual-ghost blocks、support 与 two-sided Green domains 保留。不是一个自动存在性定理。 |
| 6.2 | Causal reconstruction | §6.4 Realization theorem 6.2（A+B） | 先定义 \(A_1(G-HLN)a^{-1}\) 并证明它解 assembled causal problem；再由 uniqueness 比较任何同域 direct solver。原比较显示式拆成构造式与等式；明确 two-sided test qualification，不新增 PDE 结果。 |
| 7.1 | Classical cochain reconstruction | §7.1 Proposition 7.1（B） | 降为 elementary full-functional presentation compatibility。两种 functional rule evaluation 独立定义；chain-rule proof 保留。没有包装成新的 global-existence theorem。 |
| 7.2 | Generated Poisson algebra comparison | §7.3 Realization proposition 7.2（B） | 种子双射、合法有限操作、response domain、Hamiltonian certificate 与 relations 保留。没有声称两份抽象代数的 tensor product 生成所有跨区泛函。 |
| 8.1 | Regular quantum comparison | §8.1 Proposition 8.1（B） | full kernel、symmetric part、Wick-label conversion、same-region correction 与 cross blocks 保留。对照的是 regional route 和 direct quantization of \(T_D\)。 |
| 8.2 | Renormalized reconstruction | §8.2 Realization theorem 8.2（B） | 改为独立 prescription evaluations 的 renormalization/sewing compatibility。原五项 graph/extension/contact/Ward 条件及 induction proof 保留。 |
| 8.3 | Quantum cochain reconstruction | §8.3 Realization theorem 8.3（B） | interacting product、formal inverse recursion、physical Ward intertwiner、量子 differential 与完整 cohomology 比较保留。conjugation nilpotency 不被冒充物理识别。 |
| 9.1 | BV pushforward and master equation | §9.4 Theorem 9.1（A/B） | admissible integration 下的 cochain map 证明保留；只证明推前闭态仍闭，并不保证任意 pushforward 可逆。 |
| 9.2 | Change of gauge fixing | §9.5 Proposition 9.2（B） | \(K_t=\hbar^{-2}P_tm_{F_t}\)、Hamiltonian family、moving operator/transport 和 exact difference 保留。不同积分 sector 不因此相同。 |
| 9.3 | Residual effective state construction | §9.6 Theorem 9.3（A） | generic actual fibre + full symplectic chart + Ward input 的构造保留。sewn specialization 另调用 joint-interface lemma，不用于反过来证明该 lemma。 |
| 10.1 | Amplitude Ward complex | §10.1 Proposition 10.1（A/B） | unnormalized amplitude、vacuum factor、\(a_V\)、left-module differential 与证明保留。没有把 partition-state normalization 丢在 relative map 中。 |
| 10.2 | Multiple-insertion Ward identity | §10.3 Theorem 10.2（A/B） | 同一个 source-dependent functional 的所有 arities、contact operations 和 coalgebra identity 保留；不额外指定一串无关的 insertion maps。 |
| 11.1 | Corner matching complex | §11.2 Proposition 11.1（A/B） | two-sided bar、degree shift、total signs 与 flat/resolved/completion 条件保留。positive bar lengths 不被静默替换为普通 balanced tensor product。 |
| 11.2 | Quantum sewing with corners | §11.3 Theorem 11.2（A/B） | 保留实际 mixed interchange 或完整 higher incidence operators、balanced dual evaluation、actual joint fibre 与 admissible pushforward 条件。 |
| 12.1 | Quantum BV–BFV sewing | §12.1 Construction theorem 12.1（A） | 定义 \(Z_\#\) 并证明 master equation 的 cochain map；并非已经证明与 direct quantization 相同。完整 joint fibre、field-complex comparison、kernel、lines、lifts 和 residual selection 保留。 |
| 12.2 | Quantum state reconstruction | §12.2 Realization theorem 12.2（B）；对另给 target 的应用见 §16（C） | 核心改为 \(\mathsf{Quant}(\mathsf{Sew})\) 与 \(\mathsf{Sew}^{q}(\mathsf{Quant})\) 的比较。四项 pre-integration certificates 不变；matched representatives/cycles 下严格相等，Gaussian lifts 或 admissible cycle changes 下为 exact difference / class equality。 |
| 12.3 | Insertions descend to state classes | §12.3 Proposition 12.3（A/B） | arity-one Ward、\(i\hbar\) 因子、exact insertion 与 pushforward 相容保留。insertion map 不自动是整个 bulk algebra 的 representation。 |
| 12.4 | Compatibility with observable reconstruction | §12.3 Realization theorem 12.4（B） | 改为两条 insertion constructions 的 compatibility。保留所有 distinguished graphs、source-dependent lift domains、homotopy 及 cross/same-region corrections。 |
| 12.5 | Composition of quantum BV–BFV sewing | §12.4 Theorem 12.5（B） | 同一 unintegrated presentation 下的 Fubini/graded contraction、representative changes、retained modes 和域条件保留。没有从有限几何 associativity 推出任意积分次序合法。 |
| 13.1 | Composition | §13.1 Theorem IV（A/B）+ §14 Theorem V（B） | 将有限几何/BV 构造一致性与 downstream realization compatibility 拆开。后者仍调用 causal uniqueness、graph extension、mixed incidence、quantum Fubini 等原条件。 |
| 13.2 | Sewing and compatible changes | §13.2 Proposition 13.2（B） | \(F_{ba},K_{cba},T_{dcba}\) 的具体 comparison/higher homotopy 公式保留。保留 line/projective factors，不从 cohomology isomorphism 推出 strict equality。 |
| joint-interface | Joint-interface construction lemma（无编号） | §12.1，原位保留（A/B） | kernel Ward → full BV coordinate transport → explicit regional lifts 的证明保留；有 base dependence 时保留 conjugated connection terms，不能用 constant-kernel 证明覆盖任意新 kernel。 |

共迁移全部 **26 个编号命题**和 **1 个 unnumbered joint-interface lemma**。`THEOREM_MIGRATION.json` 记录机器可检查的对应关系。表中的类别是论证角色，不是把本来有实质内容的 cochain identities 降为无意义的记号定义。

## 5. 哪些内容明确只是 definition 或直接构造

\(\mathcal F_D^{\rm sm}\) 是给定 full-jet matching 与显式 joint 条件后的 equalizer 定义；它确实是新束上的 smooth section space，需要 section lemma。\(S_D,\omega_D,Q_D\) 的 regional-sum 公式是候选构造；切向性、局部光滑性、完整 relative identity 以及 regular-class closure 才是 Theorem II 的结论。

\(\mathscr S_D=\operatorname{Crit}_{\rm adm}(S_{D,\rm cl})\) 是物理解空间定义。其与仅有限传输数据的 regional solution composition 相同，才需要 Proposition 3.2 的分析条件。没有先建立一个外部 global critical locus再制造对照目标。

\(s_RF=DF[Q_R]\) 是 cochain differential 的定义，\(s_R^2=0\) 来自 \(Q_R^2=0\)。定义全部 full-field functional algebra 与宣称其 \(H^0\) 是某个特定 on-shell finite-gauge-invariant algebra不是同一件事。nongauge specialization 没有 gauge ghosts，但仍可有 antifields/Koszul–Tate differential。

\(Z_\#=\mathcal G_\Gamma(Z_L\otimes Z_R)\) 是态构造的定义；\(\mathcal D_\#\mathcal G_\Gamma=\mathcal G_\Gamma\mathcal D_{\rm src}\) 是真实的 theorem；\(Z_\#=Z_D^{\rm dir}\) 又是需要四项比较证书的另一个 theorem。三者已经分别命名，不能混写。

相同地，\(R_V^{-1}D_0R_V\) 的 nilpotency 是形式共轭恒等式；它等于物理 interacting BV differential 仍须 renormalized Ward intertwiner。共同 prescription 不是“把想要的 completed product 当作定义”。

## 6. 删除、派生与仍然必须保留的输入

### 6.1 不再作为独立 sewing 前提

| 旧式前提或重复叙述 | 新处理 | 其信息现在来自哪里 |
|---|---|---|
| 已有独立 global theory \(T(M)\) | 从构造输入移除；只在 §16 出现 | common local rule + actual regional evaluations + admissible seam datum 构造 \(T_D\) |
| \(d=p_L^{-1}p_R\) 是唯一来源 | 从定义移除；可以是特殊 candidate | 实际 face diffeomorphism 及 primitive lift 的存在/构造问题 |
| maps 必须预先 descend 到 original global bundle | 不再作为 hypothesis | Theorem I 的 quotient + seam atlas 构造输出束 |
| 不同 gluing sector 需要先有另一个 target theory | 删除此限制 | 对每个成功 datum 构造对象，再按 Theorem III 或指定 selector 分类 |
| 自然 associated、adjoint、density transports 是另选的 maps | 明确作为派生数据 | principal/tangent lift 的自然 functors |
| canonical cotangent antifield map 或 jet map 另行任意给出 | 在精确适用条件下是派生项 | fixed pointwise field map 的 inverse density dual、实际 collar realization 的 prolongation |
| “original joint sector conditions” 作为不透明标签 | 不再用该短语隐藏信息 | 显式 \(\mathcal C_{\rm joint}\)；非局部条件仍须作为输入 |
| coherence 只能从 original cut diagram inherited | 删除来源限制，不删除一致性要求 | 在实际 common corners/overlaps 上检验 cocycles 并构造 finite diagram |

原文已经把部分 antifield/jet transport 写成 induced；本轮补足其精确条件，没有把它们虚构成原文新增了一堆独立输入后再宣称“成功删掉”。

### 6.2 解析、几何与量子 hypotheses 的保留

| 保留内容 | 新位置 | 保留的理由与强度 |
|---|---|---|
| Actual bundles、full finite gauge data、fixed sector 与 physical labels | §§1–3 | Lie algebra 或 local action 不决定全部拓扑/离散数据；sector selector 不等于先有完整 target |
| Genuine regular atlas、actual collar realization、fixed-profile jets | §3.1、§13.1 | face iso、formal series 或 pairwise lifts 不足以保证光滑 manifold/bundle output |
| Independent graded species / complete resolution / noncotangent pairing maps | §§1.1、3.1 | principal gauge bundle 不自动产生任意 ghost tower 或 strict presentation equivalence |
| Explicit domains、allowed variations、joint selectors | C1；§3.4 | 单侧 restriction images 不确定任意非局部条件，constraint subsets 也可能为空或奇异 |
| Off-shell local coefficient matching | C2 | same species 不排除 mass jump；on-shell agreement 不证明 \(Q\) tangency |
| Actual representatives、opening、complete relative corner work | C3；§§2、3.2 | total derivatives 和 endpoint terms 不能静默删除 |
| Bulk weak nondegeneracy、regular kernel quotient、basic primitive、projectability、trace submersion | C4；§1.3 | 它们不由 bundle sewing 或两侧单独 regular 自动推出 |
| Finite transmission 与约束/source compatibility | §3.4 | 原 normal-form certificate 仅作原 scope 内的条件性论证 |
| Trace lift / contractions / actual interface comparison | §§4.1–4.3 | 未假设完整 jet trace 有自动 continuous right inverse；finite BFV matching 不能代替全阶匹配 |
| Full symplectic chart and cyclic splitting | §4.4；§§9、12.1 | 不能冻结二阶 pairing 后保留未经变换的高阶 vertices；不宣称 infinite-dimensional Darboux theorem |
| Complete Green realization、causal domains、uniqueness、pairing | §§6–7 | 几何闭包不证明 propagator existence；right inverse 不自动有全部 two-sided identities |
| Functional/seed/Peierls closure 与 Hamiltonian certificate | §7 | cochain algebra、physical Poisson algebra、CCR source quotient 的域与意义不同 |
| Full two-point data、diagonal/cross corrections、Wick labels | §8.1 | causal antisymmetric part 不固定 symmetric part；native closed kernels 不会自动成为 sewn kernel blocks |
| Graph extension 五项条件、fixed finite normalization、Ward/contact/EOM rules | §§8.2–8.3 | 同一 algorithm 要在实际被组合的 graph/contact domain 上有兼容行为 |
| Anomaly cancellation、boundary-local Ward descent、semiclassical symbol | §§9.1–9.3、10.2 | 抽象 nilpotency 不构造正确 physical boundary operator |
| Actual polarized fibre、full joint symplectic form、field-complex comparison | §12.1 | cone cohomology dimensions 或 even BFV phase space 不足以给出 joint BV integration geometry |
| Gaussian lift domain、transferred operator comparison、complete perturbation filtration | §9.7 | 不把一个已积分的 minimal state 随意当作未积分 state 的可逆编码 |
| Half-density / determinant / orientation / line normalizations、cycles、BV–Stokes、Fubini | §§9.4–9.5、12.1–12.2 | master equation 不固定 measure 或 vacuum factor；只比较 admissible cycle changes |
| Mixed quantum corner incidence 或实际 higher corrections | §11.3 | separate module identities 不保证 shared-stratum coherence |
| Same representatives for strict equality；otherwise explicit homotopies | §§12.2–12.5、13.2 | matching cycles alone 不消除 \(\Psi-JP\Psi\) 的 exact term |
| Admissible intermediate domains and all later inputs | §13 | final regularity 不保证任意 elimination order 合法；不删除后续需要的 source 或 residual modes |

上述源自原文与 SIS 的条件没有被 common-rule 语言替代或弱化。新写出的 refinement corollary 还明确要求 direct/cellwise domains、variations 和代表满足有限局部一致性；这是其结论的真实前提，不被声称由“same theory name”推出。

## 7. 两条 quantum 路线如何避免循环

直接路线：先由 I–II 构造 \(T_D\)，再从该 theory 的 action、实际 polarized fibre 和选择的 \(\mathfrak q_D\) 独立评价相同 \(\mathfrak R,\mathfrak W\)，最后 pushforward 得 \(Z_D^{\rm dir}\)。不使用 \(Z_\#\) 的值定义它。

区域路线：独立评价 regional quantum theories；保留原 unintegrated presentations，或者在 §9.7 的实际适用域中使用已构造的 \(J_a\)；通过 kernel pairing 保留 joint fields；随后只积分 acyclic symplectic complements，得 \(Z_\#\)。不以“要得到 direct state”为 residual variables 的定义。

比较路线：在 completed integrals 之前检查 action/kernel、lines/determinants、cycle/common variables、graph/contact normalization 四项证书，然后用已有 proof 比较。任意 \(\mathcal G_\Gamma\) 的 kernel/information loss 仍然存在；被比较的是指定的 quantum evaluations，而不是宣称区域态张量积与 global state space 普遍同构。

新的 dependency graph 还解释了两个可能的“章节循环”：joint Ward lemma 使用 generic BV pushforward 与 elementary corner evaluation，不使用待证明的 sewn specialization 反过来证明自身。§9.3 的一般 Ward input、§9.6 的一般 effective-state construction 与其 sewn application 分别保留。

## 8. Refinement 的结果与反例

对给定区域几何 \(R\)，先独立 \(\operatorname{Eval}_R\mathfrak T\)，也可只切开它的 geometric/bundle input，再逐块独立 evaluation。identity-type transition 来自几何限制，不来自 computed field histories 或 quantum products。C1–C4 和 local/joint domain consistency 成立时，Corollary IV-R 证明

\[
\mathsf{Sew}_{D^{\rm id}}\{T(R_a)\}\simeq T(R).
\]

这是一项 finite descent consistency，而不是用已知 global theory 定义 sewing。

反例保留：全区域条件 \(\int_R\phi=0\) 不等于每个 cell 单独积分为零；\(\phi=x\) 在 \([-1,1]\) 上总积分零，但两半积分为 \(-1/2,+1/2\)。正确 selector 是共同总和条件。量子方面，乘以非零常数仍保持 master equation，但会改变 fixed normalization；因此 identity geometry 不能单独推出任意 independently selected states 的 refinement equality。

量子 refinement 的严格或 homotopy 结论只在 §§8、12 的既有证书成立时给出。algebraic identity kernel/bar unit 与 finite physical collar 的传播态仍明确区分。没有无限 refinement 结论。

## 9. 术语、证明强度及实际校验

删除了作为基础叙事的 “original theory supplies the regional object”“different gluing requires a separate target”“reconstruct the original global theory”。保留真正的 restriction 操作：已构造对象的坐标限制、几何输入在 finite refinement 中的限制、以及 §16 对独立 target 的条件性比较。不得因为禁用旧叙事就删除合法的 restriction maps。

原 §§4–12 共 **164 个显示公式块**，经明确的 manifold-index 重命名、direct-state 标记和对齐符归一化后，**163 个保留**。唯一替换是原 causal reconstruction 的一条比较显示式：现在拆成 coupled solver 的定义与 uniqueness-based equality。所有 residual transfer、Gaussian lifting、master/Ward、corner/bar、joint-field 和 state-homotopy 显示公式都在新文中保留。这个检查证明公式迁移的覆盖，不证明一般数学定理。

执行 `python validate_descent.py` 可重跑随包校验。`VALIDATION_RESULTS.json` 记录实际执行结果，包括来源 hash、全部编号命题的迁移、内部 section references、TeX 显示环境、旧公式覆盖、有限 matching-cone/transfer 与 comparison-homotopy 矩阵恒等式、even kernel phase 和 Gaussian elimination、seam 与 selector 反例，以及前一包 2048 次非交换 Čech/defect 等回归测试。脚本不访问网络，也不改源文档。

这些检查与正文 proof 分工明确。没有把有限 matrix tests 声称为 PDE existence、任意 smooth-bundle classification、infinite-dimensional regularity 或量子可积性的机器证明。剩余问题按新主文 §15.2 列为模型证书、已否定的无条件强化、以及本轮明确不扩张的范围。

## 10. 最终阅读顺序

首先读 §§1–3，看 common rule、actual regional evaluations、structured datum 与 full off-shell closure。然后读 §§13.1、13.3 和 §14，理解 finite composition、refinement 与五个结构性结论的依赖。需要具体技术时回到 §§4–12；§15 是攻击清单和限制；§16 才是 optional independent-target comparison。

`THEOREM_DEPENDENCY_GRAPH.md` 同时给出总依赖链和分开的量子路线。核心结论是

\[
\boxed{\text{global theory is an output of regional descent, not a prerequisite for sewing.}}
\]

这不意味着 closure、derived compatibility 或具体 quantum realization 不需要证明；它意味着这些证明的对象和方向已不再是“先借一个 global answer，再检验是否拼回去了”。
