# Global AdS₃ Einstein–scalar：综合 Master Research Note

请将此前关于 global AdS₃ Einstein–scalar 的多轮研究、独立审查与补证，整理成一份独立、自洽、人类可以从头读懂并逐步核查的 Markdown master research note。

本轮不是继续开放探索，也不是立即制作投稿版 JHEP。任务是完成正文、证明、例子与复现材料的综合，而不是只交付写作计划。

全文主线是：

\[
\boxed{
\text{Einstein–scalar theory}
\longrightarrow
\text{指定处方下的 }O(G)\text{ 有效二体算子}
\longrightarrow
\text{完整有限 scalar Fock 谱构造}
\longrightarrow
\text{精确结构、渐近行为与普适性}.
}
\]

任意有限粒子数与有限自由能级的一阶谱构造是中心结果。Laughlin/Jastrow、logarithmic derivations、Grassmannian、cluster hierarchy、Gegenbauer 和 cusp quotient，应当作为理解这个谱的结构出现，而不是反过来取代原始物理问题。

## 1. 输入材料、版本与阅读要求

首先定位并阅读下列研究正文及支撑其结果的完整证明附录，核对对应研究包、quickstart、verification summary 和独立补丁：

```text
ADS3_Einstein_scalar_research.md
ADS3_research_package.zip

ADS3_Fock_space_research.md
ADS3_Fock_research_package.zip

ADS3_Analytic_spectrum_research.md
ADS3_Analytic_research_package.zip

ADS3_Deep_structure_research.md
ADS3_Deep_structure_package.zip

ADS3_Hierarchical_spectrum_research.md
ADS3_Hierarchical_spectrum_proofs.md
ADS3_Hierarchical_spectrum_package.zip

AdS3两轮结果独立审查与补证.md
AdS3独立审查验证与补丁.zip

AdS3后两轮独立审查与补证.md
AdS3后两轮审查验证包.zip

AdS3层级谱独立审查与补证.md
AdS3层级谱独立审查验证包.zip
```

同名带编号副本先核对内容与哈希，不把重复文件算成不同研究结果。

回到原始仓库：

```text
https://github.com/GaoZ1en/obsidian_note
Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/
```

重点核对 `Unreduced OFPT calculation.md` 的最终证明链、`Direct K4 two-particle energy shifts.md`、原 Einstein–scalar 设置、两粒子谱及 response prescription 等相关笔记。由报告的真实引用定位原文件，不猜测已删除文件的内容。

原仓库 README 与母稿包含历史进展记录。必须区分当前有效证明、较早的未完成替代路线和后来被替换的表述。不要因为旧路线有缺口就否定另一条后来完成的证明，也不要因为后文写着“complete”便省略独立核对。

对所有来源先建立去重清单和证明依赖图。每个准备保留的结果，都要定位其实际证明、适用条件、审查补证及实现入口。若来源发生冲突，按论证内容判断，记录取舍理由；不能只按文件时间自动选择最新者。无法取得的文件须明确列出，不声称已经阅读。

不要修改原仓库、旧报告或旧验证包。本轮全部工作在新目录和副本中完成。

## 2. 研究范围与中心命题

保持 minimal Einstein–real-scalar 理论、原 Brown–Henneaux 与 source-free fast-falloff 边界条件、原固定 boundary cylinder/time、原量子化及 physical-gap subtraction 处方，取 AdS 半径为一、\(\Delta>1\)。

目标是 normal-form 中无独立自由 boundary-graviton occupation 的 scalar branch。这个限制不意味着删除约束响应、backreaction、virtual boundary gravitons 或逆 dressing。

统一使用

\[
E=E_0+Gg+o(G).
\]

先在固定有限块上定义这一阶系数，再研究它的大粒子数或高激发极限。不自动升级为 \(O(G^2)\) 余项，不把系数的渐近定理称为固定非零 \(G\) 下的统一物理谱近似。

开头须解释“完整求解”的准确含义：对每个有限块，能构造全部一阶能移、精确重数、物理本征空间及 descendants；不等于一般特征根有根式公式，也不等于存在 Bethe ansatz、完备 commuting family 或非微扰解。

不扩张到有独立自由引力子占据的一般背景、\(O(G^2)\)、alternative quantization、新的 bulk 物质理论、Rindler heat kernel 或 reflection positivity。已有 abstract pair-kernel 变形仅用于已建立的普适性结论。

## 3. 推荐正文结构

可按实际证明依赖微调章节边界，但不要按研究轮次组织。

### 第一章：问题、约定与结果路线

说明原问题、固定处方、所研究的 Hilbert/Fock sector、精确构造与渐近结果的不同含义。给出主结果的简明预览和全文路线，避免开头堆满未定义的数学名称。

建立统一符号表，特别区分 Newton 常数与 Gram matrix、标量质量参数与时空维数、primary 双度数与完整自由层双度数、pair labels 与径向/角动量 labels、正 residual \(A_N\) 与 stable pencil 的 \(\mathscr A,\mathscr B\)。旧记号到新记号的对应另存。

### 第二章：经典理论、自由模式与物理相空间

从作用量和必要的边界 completion 出发，说明变分问题、proper gauge quotient、保留的边界自由度、自由标量及引力模式、物理内积与 canonical variables。

沿用原工作的 CPS/Harlow–Wu 约定，不另换一套不相容的边界或 charge formalism。解释 off-shell mode expansion 与 on-shell 解空间的角色，何时施加约束或选择 gauge chart，不能通过提前删变量绕过原物理问题。

本章应让读者能明确重建后面 OFPT 的输入，不必抄写所有历史尝试。

### 第三章：从 unreduced OFPT 到有效 scalar 算子

在完整自由简并空间中写清

\[
H=H_0+\kappa V_1+\kappa^2V_2+\cdots,
\]

说明 cubic normal form、resonant projection 及 OFPT resolvent 的对应。由原文确定所有耦合、符号和量子化约定，不能仅因形式熟悉便套用公式。

分别论证：非 global Brown–Henneaux Ward identity 如何控制 boundary-oscillator mixing；global intertwiner 如何排除共振 \(1\leftrightarrow3\)；量子二次项、真空项及一体质量减除如何处理。这三件事不能压成一句“由对称性显然成立”。

在指定处方下推导粒子数保持的有效四腿算子及

\[
W_N=\sum_{i<j}w_{ij}.
\]

明确 connected four-leg 部分与一体 loop/ordering/subtraction 的不同来源。经典四次正规形不替代一体量子减除。

本章必须保留原问题中的两条计算路线。将直接 canonical \(\mathcal K_4\)/OFPT 计算作为可逐步追踪的推导；将 classical response/消元的比较放在明确小节中，说明共同 Hessian、observable、边界条件及 endpoint 的条件。

对有条件的 canonical-to-covariant 连续重建，逐项说明条件实际用在哪里、哪些结论依赖它。既不隐藏尚未完成的 lapse/shift 或 renormalized endpoint 控制，也不因一条替代路线未完成而把另一条已建立的 canonical 结论整体降级。

### 第四章：实际 Einstein 两体核与表示论字典

建立单粒子正离散表示、Bargmann 物理内积、两体 primary/descendant 分解、Bose 通道以及 \(\gamma_{k\ell}(\Delta)\) 的准确公式。

至少展示一条可核查的路径，从原约束积分与虚边界交换到两体数值系数，再说明 action-derived symmetry/recurrence 如何组织全部指标。不要从“存在 global symmetry”直接猜出动力学系数。

核对 \(\kappa^2\)、\(G\)、归一化 pair creators、averaged tensors 和标准 Fock states 之间的转换；对表面可去奇点先约分再专门求值。

在这里或下一章开头先给出算法需要的基本正分解引理：

\[
W_N=b_N(Q)I+A_N,\qquad A_N\ge0,
\]

以及相应的 pair-channel support。完整 logarithmic-kernel 分类留到后面，不要让有限谱算法必须先读完整套 arrangement theory 才能理解。

### 第五章：完整有限 scalar Fock 谱的构造

这是中心章节。先在完整有限 Bose-primary 空间中定义问题，建立无需依赖后续渐近定理的直接构造；再解释如何用 pair–spectator Gram、Racah recoupling、正像压缩和 all-N 编译器减少计算。

须明确给出：输入参数与合法域；真实对角 Bose 投影；物理 Gram；所有辅助依赖和零方向的处理；精确特征多项式；物理本征空间及谱投影；descendant 重建；完整自由能量壳中所有允许粒子数的组装和共同根重数合并。

区分有理、代数和一般实参数下输出“精确”的意义。对特殊质量重新处理 rank、square-free decomposition 和重数，不能把 generic pivot 或 generic multiplicity 直接带到特殊点。

区分 physical kernel、辅助 Gram 零模和微小正本征值。说明实际矩阵维数、压缩机制与实现代价；不能把“没有 N! 枚举”写成所有输入上的统一多项式复杂度。

稳定 N 的压缩可在本章简述并前指其后面的证明；本章一般算法的正确性不应循环依赖该特殊区间。

给出少量完整 worked examples，而不是大量列表。优先使用材料中已有的二粒子核对、一个小非手征混合块、一个真实饱和态块和一个含 primary/descendants/多个 N 的完整自由能量壳。大到十亿指标的算例适合展示编码与压缩，不宜代替读者能手算跟随的小例子。

### 第六章：精确谱结构

从正分解出发，说明逐对共同核、collision flags、Vandermonde 因子、完整 logarithmic-symbol 分类及 Hilbert series，最后恢复物理本征态与精确重数。

清楚区分手征 Jastrow 截面与完整非手征 kernel；后者的物理 Gram 和全部 ideal-power flags 不可省略。解释 Laughlin/pseudopotential 对应在哪个算子层面成立，不把它写成已建立 quantum Hall phase 或拓扑序。

纳入已有的精确本征态族、低通道/root-power 完整分类、特殊质量与端点、全塔上缘及精确 gap。按问题组织并合并重复证明。区别 Casimir-bound 饱和、固定块最低值、上缘 gap 和自由单粒子 mass gap。

### 第七章：固定右激发的高左激发谱

固定 \(N,Q,\Delta\)，令 \(P\to\infty\)。先解释有限原子经验谱，然后讨论其不能解析的稀疏 cluster 分支。

组织 endpoint Racah 衰减、重叠簇乘法、partition join/Möbius 连通函数演算、完整 recursive spectral-set theorem、奇偶选择、有限累积深度，以及远离更细阈值的最终精确重数。

四粒子的完整 cluster/Fredholm/Gamma 结果作为更精细的可解实例保留；一般 N 的谱集合定理并不以四粒子 Fredholm 为必要前提。保留“compact 不等于 Schatten”的区别。

内部簇必须使用实际右度数的 oriented baseline，不能在 p<q 时未经补偿交换手征。相等簇的外平方选择作用于内部源向量，不把它误称为基本标量统计改变。

### 第八章：双高激发、Grassmannian 与指数软谱

固定 \(N,\Delta\)，令 \(P,Q\to\infty\)、\(Q/P\to r\)。先说明高表示量子数极限中的几何空间来自什么，再给完整归一化谱分布定理。

明确辅助球谐表示、coherent resolution、真实 Bose 投影，以及 Einstein pair kernel 如何给出具体主符号。这里的半经典是高激发表示极限，不是直接令物理 G 或 \(\hbar\) 趋零。不能从经验谱律自动推出每条本征支、谱边缘或完整 Hamiltonian-flow 极限。

随后区分精确 kernel 比例、缩放谱律的零原子和严格正 soft 谱。将共同 flag/Riesz 搬运、concentration operator、大偏差及 min–max 组织成独立证明链；旧弱迹近似不能直接控制指数窗口。

完整陈述密度损失依赖的指数上界、次指数窗口计数、全有序正谱的质量间比较和已证的三粒子移动边界层。不要写成共同 action、匹配指数下界或率分布存在性已证。有限有理惯性证书只承担其具体区间的核验。

### 第九章：固定激发的大 N 谱

从 occupation counting 推导

\[
W_N=\binom N2\gamma_{00}I+N\mathscr A+\mathscr B,
\]

说明稳定范围、creation algebra 与有限 N 波函数乘法的区别、\(\mathscr A\) 的 derivation 结构及 \(\mathscr B\) 的微分阶数。

处理 N 依赖的物理 Gram、一般半整数解析展开、实际 Jordan 共振与泛型 leading linearization。有限 N 自伴性不等于非正交坐标中的极限 leading matrix 必半单。

再讲手征最低 leading-slope 代数、乘法性 retraction、cusp quotient、Gegenbauer 有效算子、已完成的首个 \(1/N\) 修正，以及该低簇整数幂展开的额外证明。不要把特殊低簇结论覆盖整个非手征 pencil。

对 Gegenbauer 参数和物理内积作准确说明，不能从特殊函数名称直接套用不适用的正权正交公式。

### 第十章：普适性——二体结构与 Einstein 动力学

把已有普适性定理作为结果而不是纯展望，分别列明：表示与 Bose 统计；守粒子数的有效二体性；相同严格正通道支撑；大通道增长与主符号；Einstein 的精确通道系数。

给出每个结构的已证充分条件，并配合已有反例说明不能反推的方向。特别保留首个正 affine defect 决定最低代数、通用 Gegenbauer 系数、同 kernel/同主符号但四生成元低代数的变形，以及审查补充的 signed-defect 必要性反例。

不要把抽象协变 pair Hamiltonian 自动称作来自某个局域 bulk quartic Lagrangian，也不要将充分条件写成完整必要充分分类。

### 第十一章：Discussion 与未解决问题

回到原物理问题：现在能确切计算什么、完整性是什么意思、哪些结构具有普适性，哪些仍依赖指定 Einstein 核与量子处方。

集中列出真正仍开放的深层 cluster 重数、统一截止误差、一般 determinant、soft 匹配下界与率分布、未覆盖联合极限、全质量 resonance 分类、统一有限谱解析解及明确保留的物理连续域问题。

已有 Gaudin/Kohno、Markov、Galois 或全局解析守恒量障碍须保留准确范围。不能由某个 ansatz 失败宣布整个模型不可积。

最终 Discussion 不再首次提出需要长证明的新定理；那些应在前面的谱分析章节中给出。

## 4. 正文、附录和阅读层次

读者可假定熟悉 GR、QFT、基本微扰论及 CPS，但不默认熟悉 logarithmic arrangements、higher Racah、Grassmann coherent states 或 partition C*-algebras。

每次引入较陌生的结构，依次回答：原谱问题遇到了什么困难；此处所需对象如何定义；它与原算子或物理内积有什么具体映射；由此得到什么可核查结论。

正文保留完整定理陈述、适用条件、关键证明步骤、短而核心的引理、代表性计算和解释。长径向积分、全指标代数恒等式、完整 arrangement/cluster/semiclassical 分析及独立验证细节，可以放入配套附录；附录仍须重写成连贯证明，不可直接粘贴多个旧 audit。

尤其不要把最难的一步删成“standard”“one can show”或“已由程序验证”。审查已经补出的关键步骤要融入对应证明，而不是要求读者跳回审查报告寻找。

正文与本次交付的完整附录合起来，应足以阅读全部核心证明，不需要旧聊天、旧文件绝对路径或再次调用 AI 解释。对标准外部数学定理可引用，但须陈述实际采用的版本并核对假设；不需要重写无关的基础教材。

不要预设页数，不以反复复述同一结果增加篇幅。以证明完整、阅读顺序清楚和无重复为准。

## 5. 把审查融入正文，而不是并列成绩单

逐条吸收三轮独立审查提供的补证、反例、规范修正和实现修复。主文呈现最终成立的论证；研究历史、被替换版本和审查 provenance 放入独立映射文件。

特别核对物理归一化、可去奇点、source reciprocity 的适用域、物理 Gram、对角 Bose、辅助零模、不同质量间的极限顺序、Fredholm 复域局部一致性、cluster 真谱投影秩比较、soft 全子空间估计，以及 determining jets 生效前的微分阶数定理。

如果某项原 claim 仍需条件，就在相关定理附近明示；如果某缺口只影响一条可选比较路线，就明确限定影响范围。不能让读者误以为所有结果无条件成立，也不能把整个项目笼统降成未证 conjecture。

发现新的真实矛盾时，尝试完成范围内的必要局部修复并记录；不能静默改假设、改结论或改原始数据。无法修复的明确降级并追踪受影响的后续命题，不扩张成新的开放研究计划。

## 6. 算法、复现与工程修复

从已有正确实现中选择清楚、可维护的一套主要入口，保留必要的独立后端作交叉核验。不要为整理而重写全部算法，也不要交付层层嵌套、反复复制旧研究包的目录。

只在新副本中集成已证实的修复，包括大零因子的压缩输出、normalization 说明、oriented baseline 转换，以及最新审查的 fail-closed 语义检查。

统一验证不能只看退出码零或 JSON 文件存在。应检查预期任务是否齐全、payload 状态、关键字段、物理/辅助维数、实际惯性是否严格夹住目标区间；不得在优化模式下悄悄禁用断言，也不得将未运行或缺依赖记成通过。

选择覆盖物理输入接口、有限谱、真实 kernel、特殊质量、cluster 奇偶、soft 精确区间和通用 effective-operator 系数的代表性回归。区分全符号恒等式、有限精确运算、高精度诊断、重新运行旧实现和真正独立实现。记录实际环境、耗时与未运行项；哈希只作 provenance，不作数学证明。

## 7. 来源、证明依赖与完成标准

为所有非重复主要结果分配稳定编号。在单独的 source/claim map 中记录：旧来源与位置、当前精确陈述、状态、直接依赖、吸收的审查补证、新章节位置、验证入口，以及“本轮实际重跑”或“继承旧记录”。

不得只凭名称相似宣称文献对应，不把已有数学定理重新包装成新发现，也不根据有限检索宣称首次。只为实际使用的数学输入核对一手文献，不另开大规模新颖性研究项目。

所有已保留的核心结果都应有证明归宿；合并、替换、只作例子或不纳入正文的旧结果，要有理由。不要为了行文顺滑悄悄丢掉 difficult theorem 或改变其量词。

定稿前做交叉检查：符号一致、所有前引后引有效、无循环依赖、定理与代码输出的对象一致、精确有限谱与渐近谱的层次一致。特别检查摘要中的每个强动词，能否指向正文或附录中的准确命题。

## 8. 最终交付

请至少交付以下三个对象：

**`ADS3_Einstein_Scalar_Master_Note.md`**：完整研究正文与按主题编排的证明附录。它是实际写成的 note，不是提纲、目录或旧报告摘要。

**`ADS3_Source_and_Claim_Map.md`**：旧结果到新章节的映射、证明依赖、审查修订记录、仍条件性的接口，以及未纳入内容的去向。让主文不必充满研究过程的自我说明。

**`ADS3_Master_Research_Package.zip`**：上述文档、必要代码与独立检查器、可移植复现说明、实际运行记录和去重 provenance。明确区分原件只读副本、本轮修订副本与新输出。

最终聊天回复说明主线、各大部分解决的问题、吸收了哪些重要补证与修复、尚存哪些明确限制，并链接交付文件。不要只提供下一轮写作建议。

验收问题是：一个了解 GR/QFT、但没有参与旧对话的研究者，能否凭本次交付从原作用量和量子处方出发，理解为何得到该两体算子，重建任意有限 scalar Fock 块的一阶谱，并逐项判断各种精确结构、谱极限与普适性究竟证明到了哪里？
