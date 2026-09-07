# 标量场区域拼接与局域结构研究路线

日期：2026-09-07。状态：研究路线；以下新增阶段均待完成，不作为新的定理或验证记录。

## 1. 研究问题与范围

从各区域独立给出的完整作用量、admissible histories、CPS、响应及可观测量标签出发，释放共同接口数据，构造物理可观测量及其局域结构。独立 uncut theory 用来比较源、核、像、局域性和动力学。局域网是区域组合的输出与验收对象；不先取整体局域代数，再以限制或逆向运输定义区域对象及未知拼接映射。

本轮目标：在一个明确的自由／弱耦合标量模型中，证明同一组区域构造同时支持局域包含、因果对易、time-slice 和有限切割相容性。研究结果须说明这些性质由哪些区域输入决定，哪些条件需要模型分析。

### 主模型

- 普通实 massive scalar，$m>0$；有限时间窗，空间为光滑平坦二维环面。
- 用有限矩形 cells 表示环面，保留 timelike artificial interfaces、joint corner traces 和实际 response。每份 regional action 只计一次。
- 自由理论先行；相互作用固定为已有 switched $\phi^4$ 模型。区域 coupling densities 光滑匹配，时间紧支撑，保留早期自由窗。
- 经典实际解使用既有有限时间、局部小耦合和有界初值域；量子结论在 $\lambda,\hbar$ 中逐阶形式解释。小耦合实际解、形式级数与级数收敛分别陈述。
- 比较两块以及三块／共同矩形细分的构造。只量化满足现有几何、trace 和 cluster 输入的有限分解；不默认任意中间区域或零宽区域都有相同定理。

环面保留区域角点和真实跨接口传播，同时没有整体物理墙面。已有区间模型只用作符号、时间带和响应诊断；Klein bottle 不作为第一轮必须再做的平行模型。

### 对象与方法边界

1. Cells 是带接口响应的计算对象；开集 $O$ 标记观测量的定位范围，可以穿过 cells。不能用因果凸开集替换全部 cells，从而绕过原来的边界问题。
2. 局域包含首先发生在同一个 released physical theory 中。不要求旧 fixed-history／reflecting regional algebras 按同名场嵌入整体。
3. 经典 ambient 保留新的 time-smooth joint-trace-dual 类；局域物理代数按明确标签生成。量子从 CCR 到分布核 Wick polynomial，再到 formal local-insertion algebra。它们不统一改称全部 smooth-Hamiltonian algebra。
4. $R,B$ 与其 regular transposes继续用于 exact quotient。$G\circ B$ 的全局 section 不自动保持给定 $O$ 的支撑；局域提升和 time-slice 的支撑重定位须另证。
5. 先构造区域传播与比较映射，再验证其与独立整体对象的关系。不能只写成两个整体比较同构的复合，便称已完成区域构造。
6. 保留 off-shell time ordering、完整 on-shell ideal、相容的 Wick／renormalization data；不宣称任意两份独立完成 wall renormalization 的代数都能直接拼接。

本轮不处理 gauge／gravity、真实锥点、强耦合、无限细分、态／表示拼接、任意 sharp 物理边界复合算符。旧逐面光滑密度类及全非线性 equicausal stability 只在具体步骤确实需要时重开。

## 2. 已有基础与需要新增的内容

| 已有笔记中的结果 | 本路线中的用途 | 尚不能直接推出 |
|---|---|---|
| [Scalar closure §§1–4](<scalar observable sewing closure.md>)：joint trace chart、section／transposes、exact classical quotient、局部 switched nonlinear extension | 区域对象、匹配解与整体 Hamiltonian 对象的基准 | 任意支撑保持的 section；全部局域函数类的 time-slice |
| [Classical note §§2.2、4.3](<classical regional observable algebra gluing.md>)：线性标签的时间带重构、指定生成类的 isotony／因果性 | 复用 cutoff 与有限传播方法，准确记录旧测试类 | 自动迁移到严格内部 tests、所有 Wick kernels 或所有边界问题 |
| [Smooth note §5.4](<smooth regional observable algebras and symmetries.md>)：matched bulk local nets、有限组合和整体比较 | 以实际 regional density labels 定义定位 | 独立严格局域 family prequotient 的满射；全部背景上的包含态射 |
| [Free quantum note](<free scalar renormalized quantum observable algebra gluing.md>) 与 closure §§5、7 | 自由核、Wick 类、区域 collar labels、on-shell kernel 与有限组合 | 从 CCR 的 time-slice 自动得到整个分布核类的 time-slice |
| [Interacting quantum note](<phin renormalized quantum observable algebra gluing.md>) 与 closure §6 | 固定相互作用及 coherent scheme 的逐阶整体比较、完整 coefficient kernel 判据 | 任意局部 coupling 变化的直接识别；interacting local-net 的完整 time-slice |
| [General formalism §8](<observable algebra gluing formalism.md>) | 既有数据保持同构与有限组合 | 一般非可逆区域包含；不加输入的任意时空范畴定理 |

以上是现有证明稿的作用域记录，不是本轮新的独立数学审计。已有有限符号检查不替代本路线新增的 PDE、support、wavefront 或函数类证明。

## 3. 阶段 A：固定接口并复核关键输入

**任务。** 将下一阶段实际使用的输入整理为一张表：regional action、joint history、response、场／核标签、matching、$R,B$、转置、物理商和独立目标。每行注明定义域、支撑、拓扑和原证明位置。

重点复核 rectangle 的归一化 lift／transpose、完整 matching locus、非线性参数导数和量子 coefficient kernel 的来源。对发现的问题先修复相应依赖；不把全部旧笔记重新抄写一遍。

为局域化分别固定：

- CCR：有限线性涂抹及其代数；
- Wick：指定阶数的 admissible compact distribution kernels，允许所有 mixed chart slots；
- 相互作用：指定 finite-jet polynomial insertion labels 及固定形式完成。

**验收。** 能逐一回答：哪些数据在每个区域独立给出，哪些由接口共同指定，哪些由 release 产生，哪些仅属于独立整体比较。每个新命题的源与目标已确定；所有源标签必须有区域定义。

**交付。** 一份短的输入与依赖表，加上必要的局部修复。此阶段不把路线中的待证目标升级为 proved。

## 4. 阶段 B：从区域数据得到自由局域 CCR 结构

### B1. 定位与包含

先以 quotient atlas 中的相对开集标记 compactly supported regional labels，覆盖经过人工 seams／旧角点的涂抹。由区域关系构造 released local algebra，再以标签的同一表达建立 $O_1\subset O_2$ 的映射。

证明源关系在包含下保持，单射不丢失已有局域物理标签，并验证恒等映射和三重包含的复合。局域代数若作为同一物理商的生成子代数定义，生成集包含只完成 relative isotony；另须比较它与独立局部方程／测试商定义的代数。

独立比较首先限定在环面时空中的因果凸、全局双曲开集。该限制属于比较对象，不改变 cells 的区域 IBVP。局域包含不在新开集边缘引入反射墙。

### B2. 因果对易

从区域 action／response 得到的 $E_{\mathrm{sew}}$ 证明实际因果支撑，再建立 CPS／Peierls 配对的一致性。按拼接后几何判断因果关系，不按 cell 是否不同判断。

验收同时包含因果分离的零配对，以及因果相关的跨接口非零配对；只验证“不同 cells 的生成子对易”不是本目标。

### B3. Time-slice

先做包含整张空间环面的开时间带；用区域构造的 Green maps 与 cutoff，将每个线性标签重定位到该时间带，证明与原标签只差允许的方程关系。随后处理声明比较类中的一般 Cauchy 邻域，补齐支撑与紧性论证。

必须记录 map、允许源空间、完整 kernel 和实际 onto。现有 $BR=1$ 以及线性标签的旧时间带引理可以复用，但不能据此认定新的局域支撑命题已经证明。

### B4. 有限细分与自然性

由 regional labels 的重表达、响应组合和 matching 关系构造粗细分的物理比较。每个中间 cluster 保留剩余端口及其响应。证明包含、time-slice 与细分比较交换，再与独立整体 local net 比较。

**阶段验收。** 在同一 CCR 类上，有定位、包含、因果对易、time-slice 和有限细分的完整映射与交换图；整体比较保持这五项。任意 off-matching extensions 不必逐点相同。

**研究增量。** 解释增强的区域对象怎样产生物理局域网，并给出切割不影响该结构的证明；标准 CCR 网本身作为独立比较，不当作新增结果。

## 5. 阶段 C：扩展到局域复合量与 Wick 代数

**任务。** 将阶段 B 的同一组映射提升到当前 admissible distribution-kernel polynomial 类，至少包含平滑体内涂抹的 $\phi^2$、相互作用所需的 $\phi^4$ 插入以及已声明合法的有限 jet 插入。跨接口的 diagonal kernels 必须保留 mixed slots。

新增分析集中在：

1. 标签的零延拓、collar transport 与粗细分操作保持规定的 support／wavefront class。
2. 每阶 Wick contraction 和 on-shell 关系与这些操作相容。
3. 时间带重构作用于完整 coefficient kernels 后，仍落在声明的同一个类。有限秩／有限乘积的结果不能靠未证明的密度替代此项。
4. Wick 选择变化使用已有正常序 intertwiner，并检验其与包含和细分的复合相容性；不假定各区域独立选择的核恰好相等。

分开记录“全部允许 polynomial kernels 的局域代数”与“由 local insertion labels 生成的子代数”。证明前者的 time-slice，不自动证明后者也具有同一性质。

**验收。** 为上述指定复合量类给出完整局域比较，尤其完成原来未由 CCR 提供的 time-slice；所有分布操作合法，源关系与目标核相符。若需要调整函数类，明确新旧关系及实际覆盖的可观测量。

Equicausal 的全类扩张不是此阶段的前置任务；仅在现有 polynomial 类或后续插入计算确实需要时采用其估计。其 time-slice 与收缩方法可参考 [Hawkins–Rejzner–Visser](https://arxiv.org/html/2312.15203v3)，但必须匹配本模型的空间、映射和完成。

## 6. 阶段 D：弱耦合下的同一局域结构

### D1. 经典局部非线性

在既有 switched $\phi^4$ 小耦合域上，保持真实的 joint history 和背景依赖 Peierls tensor。复用已给出的非线性 solution／transpose 输入，新增定位、时间带重构及其与 finite sewing 的比较。完整 Poisson 梯度必须包含背景导数项。

实际 time-slice 仅比较演化相互对应的局部解域，不能把不同时间带上任意初值球都认作同一相空间。形式版本逐阶说明，不由形式结果推断实际解的全时间存在或级数收敛。

### D2. 固定 interaction 的量子局域代数

先固定同一个由匹配区域 coupling densities 得到的 interaction，以及明确的 coherent off-shell renormalization 数据。在各区域响应给出的自由核上构造 time ordering 和 retarded insertion maps，最后通过允许的 on-shell 商。

按 insertion labels 的支撑组织局域代数。Retarded image 作为自由场泛函的支撑可能扩大；相互作用局域性应由实际 causal factorization／retarded identities 证明，不能直接套用自由泛函的支撑论证。

新增目标是以下四项在同一个 formal insertion-generated 类上成立：

- 局域包含及其复合；
- 因果分离插入的对易性；
- 包含 Cauchy 面的邻域所诱导的 time-slice 同构；
- 上述映射与区域 release、有限细分和独立整体比较交换。

Time-slice 尤其需要构造允许的逆向表示，控制 coefficient class、contact relations 和形式完成。不得假定一个尚未证明的全函数类 Møller automorphism，也不得把目标改成所构造映射的像来替代满射。

### D3. 扰动检验与全阶证明

先固定跨接口的线性场、二次复合插入和演化量作为诊断对象。低阶检验覆盖 interaction vertices 在不同 cells 的项、mixed contractions 以及接触项；可先检查二阶耦合以内的树图和一回路贡献，并明确具体图、正常序选择、误差阶及为零的项。

低阶检验的用途是发现新交换图中的遗漏。现有逐阶整体比较不必重做；新局域结论仍需用 causal factorization、支撑估计、允许关系和形式完成给出全阶归纳。每个有限阶成功不等于全阶定理。

### D4. 相容选择与动力学

先比较固定 interaction 下的 auxiliary cutoff、lift、正常序选择和匹配的有限重整化。若变换重标 interaction 与 insertion，必须两者一起运输。

改变 $O$ 外的 switching 时，只有在明确的因果条件下构造了局域 intertwiner 并验证复合相容性，才比较两套局域对象；不以 coupling 在 $O$ 上相等就宣称同一算符。此项不要求非微扰或无限时间的 adiabatic limit。

自由能量和已有 switched energy balance 用作共同动力学检验。时间依赖 coupling 的功项须保留，不宣称任意 switching 下能量守恒。

相容的 finite renormalization 与局域比较可参考 [Brunetti–Dütsch–Fredenhagen](https://arxiv.org/abs/0901.2038)。文献提供可用结构；所选区域数据、counterterms 和比较图仍须逐项对应。

**阶段验收。** 完成固定模型、固定可观测量类中的形式相互作用局域结构与 sewing 比较，并清楚分开局部实际经典结果。若某一子类不稳定，给出具体失败机制或准确的待证输入；不能将暂缺证明写成 no-go。

## 7. 同一组贯穿实例与完成标准

所有阶段反复使用同一几何和同一组观测量：

| 实例 | 检查的问题 |
|---|---|
| 横跨人工 seam 的线性涂抹 | 区域来源、物理传播与局域包含 |
| 因果分离／因果相关的两组涂抹 | 零对易与透明跨接口传播 |
| 跨 seam 的二次复合插入 | diagonal distribution、mixed slots、Wick closure |
| 同一标签迁移至早／晚 Cauchy 时间带 | 支撑重定位、方程关系、动力学 |
| 三块 cells 的两种组合及共同细分 | 中间响应保留、局域交换图与辅助选择 |
| 相互作用顶点分布在不同 cells 的插入图 | causal factorization、contact terms、相容重整化 |

本轮成功终点是：从区域输入独立构造的 scalar physical local algebras，在声明类上具有包含、因果性、time-slice 和有限细分相容性，并与独立 uncut theory 的相同结构对应；弱耦合量子结论逐阶成立。全过程给出源、实际 maps、kernel／image、支撑和完成。

不以扩大到所有函数、所有边界或所有表示作为完成条件，也不以重述标准整体 QFT 的公理作为完成。

### 可选后续：标量场对外部背景的响应

上述路线完成后，可以仍在标量场内研究紧支撑背景度规微扰的 relative Cauchy evolution，检查区域响应变化与拼接是否交换，并比较度规导数与应力张量插入。标准联系见 [Brunetti–Fredenhagen–Verch](https://arxiv.org/abs/math-ph/0112041)。

这会引入非静态传播、背景间比较与新的参数正则性输入；固定背景上的局域网不自动给出它。本轮核心完成标准不依赖此扩展，外部度规也不在这里量子化。

## 8. 首批执行任务与文档归属

1. 完成阶段 A 的输入表与关键依赖复核；明确旧 isotony／时间带引理的原始测试类。
2. 在现有 torus regional labels 上定义 released local CCR objects 和包含映射，保留全部跨 seam 标签；给出源关系保持与单射的实际证明。
3. 用区域 $E_{\mathrm{sew}}$ 完成完整时间带的重构，并与两块／三块细分比较；再推进一般 Cauchy 邻域。

实现时先写标量模型证明及检查记录，通过后再把可复用的条件命题加入 [general formalism §8](<observable algebra gluing formalism.md>)。不先把一般命题标成成立，再补模型输入。

本路线由当前文件维护；README 只保留入口，TODO 记录阶段状态。数学检查随实际证明实施，本次规划不新增或替换既有定理的验证记录。
