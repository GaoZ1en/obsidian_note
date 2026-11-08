# AdS3 Einstein scalar 两轮结果独立审查

## 总结

这次审查的对象是两轮 AdS3 Einstein–scalar 与 scalar Fock space 研究报告，不是为原有结论寻找支持例子。原报告、原程序及其 Library 版本均不修改。以下将可以接受的命题、需要补足的证明、实际缺陷与超出既有证明的结论分开。

在报告明确限定的理论、边界条件、量子处方和固定有限自由能级上，本次没有找到推翻所给 **一阶 O(G) 标量谱** 的反例。这个结论不是“27 项测试都过了”的改写：审查重新推导了关键接口、以不同实现攻击了若干有限块，并对最容易跳步的全指标论证另写了补证。

不过，“结果目前站得住”不等于可以原封不动接受所有措辞。确认需要修正或补明的事项包括：

1. 第一轮部分公式的 O(G²) 余项，比已展示的证明强；第二轮使用 o(G) 更合适。这里没有发现真实模型中非零的 G^(3/2) 系数，只是指出其排除尚未由现有证据无条件完成。
2. 通用 Gram 后端会生成带大量零系数的完整特征多项式列表，与“baseline 的巨大重数不展开”的绝对表述不一致。它是实现复杂度问题，不改谱，也不影响三粒子十亿激发的 Racah 路径。独立修复与回归验证已给出，但未写回原程序。
3. averaged tensor 与标准归一化产生算符的对应，除 1/√N! 外，还需要单模范数因子。实际矩阵与 Gram 使用的约定一致，问题在文字约定不够明确，而不是谱算错。
4. canonical particular response 与 covariant stress-response 的桥，在有限调节和有界准周期代表上可以补证；连续极限中完整 lapse/shift 映射与重整化 endpoint 的存在性未在本轮无条件构造完成。这是不能藏在“同一作用量”四个字里的条件。
5. 几处证明需要把隐含结构明确写出，包括物理 Gram 的 tensor–Hom 识别、局部 frame 的完整性、全局无分母的理由、primary 限制的 intertwining 条件。它们可以补全，本报告已补，而不是将其列为待办。

这里的接受是有范围的：固定 Δ>1、既定物理 gap 与量子减除处方，考虑没有独立自由引力子占据的标量谱支，在固定有限自由能级求 O(G) 系数及 leading eigenspaces。这些首先是固定阶形式微扰系数的结论；用 o(G) 记余项也不另行证明无限维理论的收敛性或实际谱渐近存在。它不认证有限 G 完整理论、统一的大 N 微扰控制、全阶闭合、所有旧 secular gauge 代表，或原有无限中间态的一体计算已在此次全部重跑。

## 一 最需要划清的逻辑层次

### 1 动力学输入不能被后面的漂亮数学反向证明

两体算子正确、标量分支在本阶闭合，是多体谱组织的物理输入。Gram、Racah、logarithmic 自由模或 stable-N 结构即使全部成立，也不能反过来证明 Einstein 的边界项、量子反项或原始两体动力学必然正确。

因此审查分开处理了三层：

- 从完整 Hamiltonian、边界荷和简并块到 O(G) 标量 quartic 算子；
- 从两体算子到任意有限 N 的 pairwise Fock lift；
- 从这个算子到完整有限块的能量、重数与态。

物理接口的结论见附录 A，第一轮动力学递推与 intertwiner 见附录 B，核和谱组织见附录 C–F。每一部分的证据边界都保留，不能把互相依赖的验证当作多次独立证明。

### 2 完整有限谱不等于根式或快速算法

报告确实给出了矩阵元、完备基、内积、置换重叠和态映射，不是只写“取一个 determinant”就结束。因此“全部有限块可有效构造”是有内容的。

但完整精确代数输出允许用多项式及其根隔离描述能量。它不要求所有根都有根式，也不意味着 balanced high-excitation blocks 或 spectator 多项式展开都便宜。“三个 double cosets”去掉的是外层 Bose 平均，并未自动消灭代码内所有阶乘规模展开。

## 二 最强结果为何没有被这轮攻击推翻

### 1 Fock 闭合有全指标论证

在完整自由简并块上先做 normal form，而不是先把 graviton states 删掉。非 global Ward identity 的指定 weight 投影确实给出 resonant quartic symbol 与所有引力振子坐标的 Poisson 对易，故该最高四次项独立于它们。

整数 Δ 的 1→3 候选也不是靠有限例子猜零：global Ward 使其成为最低权模之间的 intertwiner，一粒子最低态无法映入最低能量更高的三粒子空间；与两个 raising operators 对易后，整条一粒子模上的映射都为零。这一步的完整投影、次数与 spectators 论证已另行展开。

但一体收缩与量子减除不是 tree theorem 的免费附赠。其零能移继续依赖原先指定并计算的量子处方。

### 2 logarithmic 完备性不是只构造了一族态

先将每对正余项的共同核写成 pair-channel 条件，再提取 Vandermonde 四次方。用右侧真实 Bargmann Gram，将剩余波函数转成保持全部碰撞理想幂的线性映射。

这一步需要明确：若多项式系数矩阵为 C、物理 Gram 为 G，则对应映射是 A=CG，逆向恢复是 C=AG⁻¹。自伴 projector 满足 PᵀG=GP，所以右侧投影恰转成右复合 AP。复系数时还必须说明天然实结构与复双线性延拓，不能把反线性的 Hermitian Riesz map 当作无说明的复线性同构。

接下来的局部化也确实能补严：在每个碰撞超平面的 height-one prime 处，frame 系数矩阵可写为 T U，其中 T 的唯一法向因子是该超平面方程，det U 为 unit，故 U 可逆。这证明是完整局部基，不只是同秩子模。展开系数起初就只能有 Vandermonde 因子作分母；逐个排除这些极点后，UFD 性质保证系数为多项式，不会再藏一个仅支持在 codimension two 的有理分母。

这条全指标证明经过第二视角交叉检查，另外用不调用原 generator 的完整线性约束系统攻击了有限次数空间，没有找到反例。

### 3 剩余正谱有真实物理态映射

Gram 压缩不只保持非零本征值。正性保证 auxiliary 零根没有 Jordan 块；选取独立列后，得到的正谱矩阵是原物理正像上的真实基底表示，并有明确的 Gram 与 lift。由此补全了“矩阵根对应哪个物理态”和“重数是否漏计”的论证。

三粒子 Racah 阈值、primary/descendant 聚合、跨 N 壳根合并与 Galois 证书也分别核查。有限测试没有替代完备性证明。

### 4 stable-N 不是拟合

固定激发后，N 只通过 ground occupation N−r 进入。两条激发腿给常数，一条 ground 腿给线性项，两条 ground 腿由非负双次数守恒只能仍输出 ground–ground。减去共同的 binomial(N,2) baseline 后，矩阵严格 affine in N。

限制到 primary 空间还需要 lowering intertwining；不能只凭双次数守恒就跳过去。centered creation coordinates 给出与 N 无关的完备 primary 基，exact complex 则给出全部 leading-slope 重数。这些步骤已补成解析证明。

阈值必须保留。例如 (P,Q)=(2,2) 的稳定三维矩阵只在其物理稳定范围适用；将它代入 N=2 会多出假的二重能级。这是对误用的反例，不是报告原命题的反例。

## 三 实际问题与独立修复

### A 余项强度不能自动提升

仅知道 order-κ² 的分支闭合，不排除在相同低阶能移的完整简并块中出现 κ³ 混合。κ→−κ 同谱只约束谱集，可以交换两条分支。因此不能仅凭这个对称性把 O(G) 后的余项自动写成 O(G²)。

独立补证给出了下一阶可用的充分条件：同时完成 Hamiltonian 与非 global charges 的量子 Ward 展开，在相同 W₂ 本征值的完整子块中投影。若完整量子 W₂ 与引力振子对易，下一阶 Ward 可使该子块上的 W₃ 与引力振子对易；结合相应 parity，排除奇引力子部分。这比“也许对称性会保证”具体得多。

但原稿展示的 quartic 最高 symbol 结论，还不足以无条件替代所需的完整量子荷与反项控制。因此本审查保留条件性补证，建议在现有证据层级使用 o(G)。不把一般矩阵反例冒充真实 AdS3 非零高阶分裂。

### B 通用 Gram 输出的零系数展开

原通用后端在主入口只需要正谱系数时，仍先产生含完整 baseline 零因子的 dense coefficient list。例如 N=4、P=10000、Q=0 的维数为 2,085,834，而正 rank 为 9,994；多出来约 207 万个零系数并非必要输出。

独立修复把输出保持为“零根重数 + 正谱多项式系数”，需要旧 dense 输出时再显式恢复。四组有理参数回归中，其余物理字段、态与 Gram 不变，且可精确重建旧系数列表。修复只存在于审查附件，没有写回原程序。

三粒子十亿 P 的例子使用另一个 Racah 后端，不触发此问题。不能用这个实现缺陷否定该例，也不能忽略它而声称所有后端都始终压缩存储。

### C 产生算符的归一化约定

对 polynomial-normalized 单模 vα，记 hα=⟨vα,vα⟩，而标准 b†α 创造 vα/√hα。averaged tensor 与未归一化 creation powers 的正确对应还带 ∏α hα^(nα/2)。这只是 N 无关的对角换基，不改变 affine-N 定理或实际谱；但若不写明，读者独立重建态或内积时会错。

### D 特殊质量的零 trace 不等于零 stress

第一轮全指标补证中，Δ=3/2、n=0 是一个容易被草率处理的点。应先约分、再取连续极限，相关 scalar potential 趋于 3F/16；能移的零来自 trace pairing，而不是整个 stress source 消失。这在独立补证中写明，不以表面零因子直接删除 source。

### E 协变响应桥仍有明确的条件性

两个响应之间的 Hessian Green identity 可以直接给出准周期平均下的 source-subspace reciprocity，不必假装已经有全 off-shell 自伴逆。有限调节、autonomous regular gauge chart 下，也能证明有限自由模的 endpoint 有界。

但这些补证不能替代连续极限中 lapse/shift 重建、重整化 endpoint 存在性及其极限控制；原报告也未逐项构造这些对象。本报告把所能补成的命题与这项尚存输入分开，并保留旧 secular 代表需要连同 observable 与 endpoint 一起变换的限制。不以“没有找到反例”冒充已完成这一解析构造。

## 四 本轮实际做了什么与没有做什么

除了此前的有限复现，这轮新增了不同实现的 Casimir/projector 检查、完整碰撞 flag 线性系统、局部 frame 交叉攻击、一般参数符号恒等式、stable occupation 与 slope 推导、投影/态 Gram 核验以及实现修复回归。各附录列出准确参数、脚本和结果。不同分工可能检查相同低阶块，不能把所有数字简单相加为独立物理实验总数。

本轮没有重新执行母稿的一切无限中间态证书，也没有完成真正的 G² 理论或给全部旧 secular gauges 逐一构造 endpoint transport。它没有做穷尽式优先权检索，因而不构成学术新颖性认证。

结论可以说得强而准确：**在已声明输入下，核心 O(G) 谱结构经受住了这轮独立攻击；几处关键跳步能够补全，并已补全。确有应修的实现与表述问题，但目前没有证据把它们升级为“一阶多体谱算错”。**

## 附录与复核材料

后续附录保留完整推导、反例和具体源文位置。原报告节号以两份被审查文档为准：

- 第一轮：ADS3_Einstein_scalar_research(2).md。
- 第二轮：ADS3_Fock_space_research.md。
- 代码基线：第二轮配套 Fock reproducibility package。

独立验证包只包含本轮审查材料、脚本、结果和未应用的修复，不替换原研究包。运行脚本前请依各脚本说明定位原包；不得将共享动力学输入的算法测试误称为重新积分全部 Einstein 约束。


## 附录 A 物理接口与完整共振块

### AdS₃ 两轮报告：物理接口、共振闭合与消元等价的独立审查

审查日期：2026-10-19。原报告与原程序只读。本文件是另外撰写的审查，不是对原报告的修订。

#### 结论先行

在两轮报告实际限定的 minimal Einstein–real-scalar、Δ>1 fast branch、regular center、固定 boundary cylinder/time、Brown–Henneaux falloff，以及指定的 canonical Weyl/调节/减除处方内，**我没有找到能否定 order-G scalar Fock pairwise lift 的物理反例**。最容易被误判为“跳步”的两项，即 boundary-graviton 共振消失与整数 Δ 的 1→3 消失，可以补成真正的全指标证明，不能用“只检查了40例”来否定。

但有三项必须严格区分：

1. **第一轮的 O(G²) 余项比本轮已证明的物理闭合更强。** 第二轮改用 o(G) 是正确的降级。并不是发现了实际 AdS₃ 的 G^(3/2) 非零系数，而是不能由 order-G closure 自动保证它不存在。见 §8 的明确反例。
2. **response/OFPT 等价是相同边界完成 Hessian、同一 observable 与 bounded endpoint 代表下的等价。** 它确实成立，但不是所有旧的 secular gauge 公式都已获得验证。把“同一作用量”替代这些数据，会删掉真正可能改变 secular coefficient 的项。
3. **单粒子零能移是指定量子处方的计算结论，不是经典 tree theorem 的后果。** 新报告继承母稿 §§73–76。审查可把其解析依赖链核对清楚，但不能把母稿所有证书未重跑的部分称作本次独立复算。下文明确区分新推导与继承输入。

本文件负责物理接口；两体闭式公式本身的全指标 Einstein/Casimir 计算以及新多体代数分类应与另份专门审查合读。

#### 1. 实际阅读范围与证据等级

直接检查：第一轮主报告 §§2–5、7–8、11–14；第二轮 §§1–3；第二轮 physics/FULL_FOCK_PHYSICAL_CLOSURE.md；冻结母稿 Unreduced OFPT calculation.md §§17、70–71、73–76 的相关完整推导链（其中 §74 的渐近分析逐项核查，未重跑其全部外部证书）。

新建独立检查脚本 independent_checks.py：
- 用与原代码不同的简短 SymPy Poisson-bracket 实现，重算 paired toy 的 cubic homological identity、quartic gravity-vacuum symbol 与 κ³ resonant coefficient；
- 用含任意 block-diagonal generator 的具体四维简并矩阵，检查 BCH 与 projected resolvent 的符号/分母；
- 下文的全指标 Ward、number-changing、pairwise-lift 证明是解析证明，不依赖这些有限测试。

旧包中审读记录仅用于定位原文已意识到哪些限制，不能充当此次独立验证。

#### 2. 完整自由块上的 normal form：补出所有简并细节

设 H=H₀+κV₁+κ²V₂+…，S†=−S，V₁=[H₀,S]。则

H̃=e^(κS)He^(−κS)=H₀+κ²W+…，W=V₂+[S,V₁]/2。

令 P=P_E 是整个 H₀ 能量 E 子空间，不预先删去 graviton 或其他 scalar-number states。对 a,c∈P，b∉P，

S_ab=V_ab/(E−E_b)，S_bc=V_bc/(E_b−E)。

所以

([S,V₁]/2)_ac=Σ_(b∉P) V_ab V_bc/(E−E_b)。

b∈P 的项为零，因为 V₁|_P=0。即使 S 有非零 block-diagonal 部分，也只乘到这个零：因此没有遗漏 resonance 时任意 homogeneous S 所带来的二阶能量变化。这证明第一轮(4.6)、第二轮(2.5)的完整简并版本。

“V₁=[H₀,S]”的输入不是无条件可除。mixed cubic 的 F_m=mD_m+[Hφ,D_m] 给出其分子在 m+ν=0 时先为零；pure-gravity cubic 的无共振部分则须由同一完整经典 Ward identity 得到，不能只拿 mixed S 充当全 S。原报告明确保留了这一点。

**有限维与场论的界线。** 在固定自由 E、Δ>1 时，N≤E/Δ，graviton mode m≤E，能级空间有限。离块中间态仍可无限多，故 loop resolvent contraction 需要调节；不能因 P 有限就说所有中间求和自动有限。四外腿 tree 内部 angular momentum 则由固定外腿约束，有限性问题简单得多。这也说明为什么本结论是 fixed-energy formal spectrum，不是无限 Fock 空间强酉对角化。

#### 3. Boundary Ward 投影为什么真的消掉全部 graviton 四次项

原文关键句是第二轮§2.2：

“在能量差 s 的完整自由块之间投影，前两项消失”以及“完整 resonant quartic symbol 独立于 gravitational oscillators”。

这一步正确，但可补得更透明。对任意 polynomial A 定义其 free-energy weight 分解 A=Σ_ω A_ω，满足 [H₀,A_ω]_cl=ωA_ω。对 weight-s charge Q₋₁=c a（或 c a*），有

weight([A_ω,Q₋₁])=ω+s。

因此投影到 weight s 并不是把括号丢掉，而是精确挑出 [A₀,Q₋₁]。Ward identity

(ad_H₀−s)Q̃₁^[3]+[W^[4],Q₋₁^[1]]_cl=0

在该 weight 上成为

[RW^[4],a]=[RW^[4],a*]=0。

在非退化 oscillator symplectic coordinates 中，这两个等式分别是对 a*、a 的偏导数为零，所以 RW^[4] 完全不依赖该 oscillator。对所有 m≥2 和左右两支逐一应用，得到 scalar-only quartic。不能把“在 a=0 上数值为零”冒充这个强得多的结果。

同样，在 cubic 阶投影得到 RV₁ 与全部引力线性变量对易；剩余 scalar-only cubic 被 φ→−φ 排除。这样可先构造完整 S，再推 quartic，逻辑并不循环。

**为什么可使用经典 Ward 而不用预先证明量子 Virasoro 全代数？** 四次最高 symbol 的 commutator 与线性 a 恰等于 Poisson bracket，不存在第三导数 Moyal 项。其量子修正至多落到 degree two/zero；这些低次项另论。中央项对 [L₀,L_m] 为零，因此这里没有漏掉 Brown–Henneaux central term。

**真正需要的输入。** 经典 charge 必须来自原带边界 action 的 canonical phase space；固定 fast scalar boundary condition 使 radial symplectic flux O(r^(2−2Δ)) 消失。不能给任意截断/任意 counterterm 宣称同一 Ward 恒等式。母稿§71.2使用的是无 loop 四外腿的经典 Noether 论证，恰好足够，不等同于全量子 regulator Ward restoration。

##### 3.1 二次量子项不会重开 graviton mixing

总 polynomial degree≤4：cubic-cubic 的 Poisson term degree4，Moyal 第三导数项 degree0；quartic ordering 只加 degree2/0。二次项中：
- gφ 被 scalar parity 排除；
- aa、a*a*、bb、b*b* 的 H₀ weight 非零；
- a*a 的任何 number-preserving 组合都杀掉 graviton vacuum；
- b_I* b_K 同时守恒 E,J 时，p_I=p_K、q_I=q_K，故为对角一体项；
- 常数已由 vacuum-energy subtraction 去掉。

因而 zero-independent-graviton scalar Fock domain 在 order κ² 不变；这里没有要求纯引力二次系数全都计算完。这一点在原文中成立。

注意：将 RW^[4] 先 Weyl quantize 与任意不相容的截断再重排不必逐项相同。需要保留同一 canonical prescription。报告并未宣称 regulator independence。

#### 4. 整数质量的 scalar-number-changing：完整补证

一入三出同时守恒 E 与 J，得到

p_in−p₁−p₂−p₃=Δ，q_in−q₁−q₂−q₃=Δ。

因此 Δ∉Z 时没有候选；Δ∈Z,Δ>1 时有运动学候选，不能因“generic Δ 不共振”而直接跳过。

设 A 为正常排序后的 b*³b 部分。全 scalar quartic 与两个 free global sl(2) 对易；这些 global generators 是 number-preserving bilinear，其作用保持每个 normal-ordered monomial 的产生/湮灭次数。因此 A 自己也是 intertwiner。

令 v₀ 为一粒子 lowest vector，E(v₀)=Δ。A v₀ 必属于三粒子空间的能量 Δ 子空间。但其最小能量为3Δ，所以 A v₀=0。每个一粒子 |p,q〉是非零常数乘 L_+^p L̄_+^q v₀。故

A|p,q〉=L_+^p L̄_+^q A v₀=0。

把 A 写成 Σ_(IJK;L) C_IJK;L b_I* b_J* b_K* b_L，并对 IJK 完全对称化。对固定 |L〉作用，normalized unordered triple states 线性独立，所以每个对称化 coefficient 都是零。这正是物理 bosonic polynomial 的所有 coefficient；不能再靠加 spectators 恢复任何项。A†同理，40/04则正能排除。

这不是“单粒子上为零所以一般算子为零”的错误泛化：关键是 A 的 annihilation degree 恰为一。若有 b*⁴b² 等高次项，该推论就失效。因此证明只属于当前 order-G、degree-four 层次。

另一种表示论说法：D_(Δ/2)^+⊗D_(Δ/2)^+ 的一个单粒子双手征 irreducible module，不出现在三粒子最低权分解中，其最低能至少3Δ。但最低态+raising 的证明已足够，不需要假设整个三粒子 spectrum 已知。

#### 5. 为什么两体输入唯一决定整个 finite-particle lift

令 B_IJ*=b_I*b_J*/sqrt(1+δ_IJ)，I≤J；|IJ〉=B_IJ*|0〉。对正常排序 quartic A，所有 matrix coefficients 由二粒子限制唯一决定：

A=Σ_(I≤J,K≤L) M_IJ;KL B_IJ* B_KL。

因为 B_KL|MN〉=δ_(KL),(MN)|0〉，在二粒子空间立即恢复 M；正常排序 quartic 若其所有二粒子矩阵元为零，其所有系数也为零，不存在“只对三粒子起作用”的隐藏 quartic。

在 N 粒子对称张量上，两次 annihilation 选取一个 unordered particle pair，两次 creation 替换它，其 factorial 正好给 Σ_(i<j)w_ij。特别单模检验：若 M_00;00=m，则 A=(m/2)b*²b²，在 |N〉上为 m N(N−1)/2，不是 mN(N−1)。这也验证了原文的 sqrt(1+δ) 归一化。

独立三体 coefficient 在本阶不存在的原因是 minimal action 的 degree/coupling counting，不是“gravity 只会两体相互作用”的普遍物理陈述。κ²阶四标量tree只有两个 mixed cubic（各带两 scalar）或一个 scalar quartic constraint contact；不能生成六 scalar external legs。原OFPT产品的总 degree6 中包含 graviton variables，BCH commutator把最高普通乘积项消掉，不能拿它当六scalar contact。

#### 6. Paired symplectic response：检查而非口号

第一轮§8.1取 D₊=D，D₋=D*，Fσ=mDσ−i dot Dσ，aσ=−κDσ。其 graviton symplectic pullback 是

iκ²(dD*∧dD+dD∧dD*)=0。

两个正范数振子依然独立；所选 response 图只落在 a₋=a₊* 的 Lagrangian real plane 中，没有把整个 graviton phase space 商掉。反辛 involution 只作用在 graviton factor，不是说整个 scalar+gravity phase space 反辛。

pullback能量：H_g→+2κ²m|D|²，κV_mix→−4κ²m|D|²（dot D 项逐对相消）。所以 H_red=Hφ+κ²(U−2Σm|D|²)。原 quantum K4 的 anticommutator已经把两chirality合并，classical symbol是2|D|²；不可再乘一次2。

**补上 dynamics 细节。** 在原 x-equation 中对 x 微分时先固定 a，再代入 a=−κD。两支使 force contribution恰为−2κ²m d|D|²；没有漏掉由图的 x-dependence产生的项。引力方程 (i∂t−m)aσ=κFσ在自由x流上严格成立。x反馈为κ²，乘图中的κ后产生κ³ normal mismatch，因此图足够控制κ²能量，却不是全阶 invariant manifold。

真实EH系统另外有κg³和κ²g²φ²：图上a=O(κφ²)，它们的 scalar energy从κ⁴φ⁶开始；对a求导的首个残差为κ³。因此把简化引理用于当前阶是合法的，但不能把这些真实顶点永久删除。

##### 6.1 Covariant pairing的系数与端点

同一boundary-completed reciprocal Hessian给

S₄=κ²[−〈k,Ek〉/2+〈T,k〉/2]，Ek=T/2。

stationary substitution为 +κ²〈T,k〉/4。canonical first-order action的响应图没有额外graviton symplectic term，故resonant Hamiltonian为 −κ²〈T,k〉/4，符合第一轮(8.14)。不是直接将任意time-nonlocal Lagrangian取负。

若两种canonical/covariant scalar坐标相差κ²f，free action差为free EOM乘f加endpoint。对自由外腿EOM项消失；只有当endpoint B(t)满足 B(T)/T→0，time average才消失。bounded quasiperiodic representative是充分条件。

对k的bounded homogeneous差δk=L_ζg₀，conserved free stress给

〈T,L_ζg₀〉=2∫∂M dΣ_μ T^{μν}ζ_ν。

regular center消去内端，fast falloff给外径向O(r^(2−2Δ))，时间端bounded/T→0。因此这种large diffeo差也不改平均；它仍是物理large transformation，不是proper gauge。

**反例与未覆盖域。** 若ζ=tζ₀且边界primitive含tC₀，则平均d(tC₀)/dt=C₀，不为零。因此“都是total derivative”不够。原报告自己明确排除任意旧secular代表。它也不比较改变boundaryclock、引入BTZ/conical homogeneous参数或另选retarded inverse的理论。

**仍缺的实际交付，不是假定错误：** 这份证明没有把所有旧de Donder/secular representative的endpoint逐个写出来；若用户要对这些旧公式逐字证明等价，仍需另做transport。当前bounded canonical theorem不能充当其自动证明。

##### 6.1 Canonical graph 到 covariant response：已经建立什么，尚未展示什么

无需先证明任意 off-shell Green operator 全域自伴，就能补出本题需要的 reciprocity。对有限 quasiperiodic 自由 scalar 外腿所生成的 source T₁,T₂，若 canonical reconstruction 给出同一固定边界作用量的 bounded metric response k₁,k₂，且 E k_i=T_i/2，则 Hessian Green identity 给

〈k₁,E k₂〉−〈E k₁,k₂〉=spacetime boundary flux。

在同一 renormalized Hessian 与 boundary completion 下，regular center 消内端，固定 BH 边界条件与 Δ>1 消去或正确完成径向 flux，时间端点除以 averaging time 趋零。因此

〈T₁,k₂〉_res=〈k₁,T₂〉_res。

这是所需 source 子空间的 averaged reciprocity，足以支持 stationary quadratic elimination 的 1/4 pairing 因子，而不承诺任意 inverse prescription 等价。

其存在性仍要区分三层。母稿的 maximal-slice constraints、spatial canonical pullback 和 paired oscillator graph 给出了 time-local reduced phase-space construction；在有限调节、正则且不显含时间的 stationary chart 内，finite-mode bounded orbit 经光滑 chart 得 bounded coordinates，自治且有限的 endpoint 也有 B(T)/T→0。可是 oscillator bounded 本身不逻辑蕴含完整 lapse/shift bounded：还须给出 gauge-preservation elliptic inverse，在允许边界域中无未处理 kernel，并验证重建 metric 和 renormalized endpoint 的有限性。新报告采用 bounded canonical representative 作为 theorem 的限定；本次未把连续任意模式下该全部存在性逐式重做。

因此应分别标注：reduced paired graph 的辛拉回及同阶 Hamiltonian 是已重建的代数证明；canonical-to-covariant response reciprocity 是以上明确存在/边界条件下已补的证明；完整 lapse/shift 与连续去调节存在性是仍需该 chart 输入的部分；旧 secular de Donder 代表的 endpoint transport 是另外未逐项验证的工作。后两项不能靠“来自同一 action”自动消掉，也不能反过来否定条件成立时的等价 theorem。

#### 7. 一体量子处方与分析链：哪些确实补上了，哪些未在本次重算

第一轮§7/第二轮§1.2不是把groundmass减掉就宣布各模为零。母稿的实际链是：

1. §17以virial identity消去gravitational seagull + energy-weighted cubic部分，径向端O(y^(2−2Δ))；
2. §§73–74利用双独立thermal times的adjoint-Casimir transfer，从ground-external trace重构任意固定(p,q)；
3. §74把ground exchange的非解析endpoint expansion按同次次数分类，证明无direction-dependent degree-zero项；其isotropic常数另行计算为零；
4. §75证明每个外模s_X=−C_I/τ+o(1)，并由free radial matrix-element/Casimir identity把C_I匹配到同一个local kinetic insertion；
5. 正τ下先减完整vacuumstress再反演constraint，Hartree source精确抵消；
6. 相同external-leg weight保留到最后，得到e^(−τω_I)(s_X+C_I/τ)→0；finite mass insertion由physical gap固定。

这套链比“自由global symmetry所以无自能”强，也避免fixed-radius UV展开漏掉large-radius finite part。

##### 7.1 我核查的两个关键解析点

(a) thermal partialtrace equivariance不是凭循环迹形式乱搬无限算子。对finite support R，V的global invariance给[q,E(R)]=E([q,R])。在t_L,t_R>0、固定外腿时，polynomial energy growth被指数压制，cutoff boundary terms消失，才可搬运adjointCasimir。随后仅取固定外部次数的有限微分多项式。不能反向说τ=0时trace也循环。

(b) §74.2 endpoint scaling中权重ε^(2d+2)乘核ε^(−2d)再乘ds=εdz，确为ε³，对任意d>1都不是ε^(fractional d)。相对hyperbolic corrections只加偶次，作用0/2/4阶微分后非解析项为−1,1,3,…，不能产生常数。可能log项经matched subtraction处理；degree3 polynomial的log系数经四阶微分为零，故不产生(logτ)/τ。Hartree远区另有fractional2d−2余项，但d>1时为正，degree-preserving reconstruction不能把它变成degree0。以上解释为何“沿一条τ_L=τ_R路径为零”能够扩展，关键不是单路径本身而是已给出的two-time kernel。

##### 7.2 必须保留的条件与不可夸大的审查结论

- Zτ=−4G/(τN₀)依赖regulatorclock，finiteτ下不是独立isometry-invariant counterterm；本报告没有证明与任意manifestlycovariant scheme相同。
- 完整vacuumstress first variation给本阶tadpole subtraction，不等于已构造任意阶nonlinear metric completion。
- 量子measure的paired determinant cancellation要求regular proper-constraint/gauge chart与相同有限调节；不能声称一般全局Gribov问题已解决。
- Moyal cubic/cubic correction只能是constant；这一点确实排除本阶新quadratic Egorov项，却不排除原quartic的Weyl trace。报告有区分。
- 我未重跑母稿全部xAct/Mathematica/radial证书，因此本次对整套一体数字的最高证据等级是“解析依赖链审查与局部恒等式检查”，不是“从原EH action独立重算全部loop积分”。不能把它在综合报告中升级。

“原作用量唯一决定量子谱”仍不成立；固定量子处方是额外物理输入。原报告已明确这一点，所以这里是范围，不是反例。

#### 8. 真正需要改弱的余项：O(G²)与o(G)

第一轮(6.14)、(7.4)、(10.4附近)与若干新三粒子谱写O(G²)。第二轮开头改成E=E₀+Gg+o(G)，并说“不额外宣称已证明更高阶的scalar/graviton sector闭合”。后一版本是当前证明支持的共同强度。

反例说明“κ→−κ等价”不足以补这个洞。取一个完整简并二态块，U=diag(1,−1)，

H(κ)=E₀I+κ²λI+κ³vσ_x。

则H(−κ)=U H(κ) U⁻¹，κ² normal form完全不mix两个sector，但精确能量为E₀+κ²λ±κ³v。κ→−κ只交换两个分支；对G=κ²，下一项为±G^(3/2)v而不是O(G²)。

这不是AdS₃反例，不能据此断言其实际κ³项非零。它证明的是原推论不充分：要保留具体谱支的O(G²)，需进一步证明相关higher-orderresonantmatrix消失或可合法排除，或由完整对称性/isolatedbranch解析性控制。单粒子最低态可能另有独立保护（其奇scalarsector最低自由态无简并），但不能把这一理由自动推广到任意多体简并primary。

第一轮§14.6自己的pairedtoy已经强调leadinggraph不能自动延伸κ³，故普遍写O(G²)尤其需要补充论证。**严重程度：中等的结论强度问题，影响误差阶与高阶宣称，不改本次任何g系数。** 第二轮已修正，因此不应将此算成第二轮核心结论失败。

##### 8.1 能补出的更强结果：下一阶完整 Ward 足以排除 κ³ 分裂，但现有输入尚不足

这不是只能说“需要更高阶研究”。具体充分条件和证明如下。完成二阶非共振消元后写

H̃=H₀+κ²W₂+κ³W₃+…，Q̃_s=κ⁻¹c_s a_s+q₀,s+κq₁,s+κ²q₂,s+…，

其中 [H₀,a_s]=s a_s，c_s≠0，且 Q 是同一重整化理论的精确非 global boundary charge。阶 κ⁰ 的 Ward identity 给 q₀,s 的自由 weight s。阶 κ² 的 identity 为

(ad H₀−s)q₂,s+[W₂,q₀,s]+[W₃,c_s a_s]=0。

向 weight s 投影，假设 W₂ 已完全 resonant，得到

c_s[R W₃,a_s]=−[W₂,q₀,s]。

现在必须增加一个比已证 quartic-symbol closure 更强的输入：完整量子 W₂（包括所有 quadratic contraction、pure-gravity one-body 项和有限 counterterm）与每个 a_s 及其 adjoint 对易。在跨自由能量空间的共同 W₂ 本征空间 P_λ 上，a_s 保持该空间，故

[P_λ R W₃ P_λ,a_s]=−c_s⁻¹P_λ[W₂,q₀,s]P_λ=0。

这里 P_λ 不能只取单个 E 块后把 ladder 截断；应在代数有限粒子域上取同 λ 的各 E 块直和，再取需要的 E。对所有 oscillator 及 adjoint 对易的算符在不可约 gravity Fock 因子上为恒等。另一方面，κ→−κ 与 gravity-field parity 使 W₃ 为 gravity-parity odd；P_λ 因 W₂ parity even 与 parity 相容。恒等 gravity 算符不可能 parity odd，所以 P_λ R W₃ P_λ=0。于是同 λ 简并支无 κ³ splitting。不同 λ 间的 κ³ mixing 最早产生 κ⁴ correction。这在相应固定能量有限矩阵的正规微扰条件下足以得到 O(κ⁴)=O(G²) 余项。

**为何尚不能把此证明直接盖到原报告所有谱支上？** 第二轮证明的是 [W₂^[4],a_s]=0，并以次数与真空作用说明低次数项不破坏 scalar vacuum-graviton sector 的 order-κ² invariance；这不等于完整 W₂ 与 a_s 对易。特别是 pure-gravity quadratic 项即使 annihilate gravity vacuum，也可能使 descendant 的 λ 改变，破坏 P_λ a_s=a_sP_λ。所需补证恰是：

1. 完整 renormalized W₂ 的 gravity-oscillator commutant 性质，而非仅最高四次 symbol；
2. 非 global quantum charge identity 至 κ²，包括 q₂,s 的存在、所需 counterterm 的 charge completion，以及 κ³ Hamiltonian 中由 order-κ² counterterm 的 metric completion 产生的 gφ² 等低次数项；
3. 同一 regulator/subtraction 下 Ward 恒等式在去调节后成立，且没有异常有限余项。

母稿的一体 cancellation 与指定 kinetic/tadpole 处方并不自行给出以上完整下一阶 identity。本次没有发现其已逐式完成，故此段是一个可执行的条件性补证，不是已证实际 AdS₃ 产生 κ³ 的指控，也不是无条件宣告实际 κ³ 为零。对另有孤立谱支或精确 descendant 保护的特殊能级，可另行提升余项，不能据此推广所有 many-body primary。

#### 9. 一般tree-transfer、Feshbach及全阶formal symbol

##### 9.1 Tree-transfer证明可以成立，但不是自动消去物理kernel

第一轮§11条件中，K在所选complement有reciprocal inverse，I_y提高完备filtration。Picard迭代每次增加次数，故逐阶有限且唯一；每一−G是一条rooted y edge，Taylor coefficient是vertex。source derivative标记xleg，stationarity清除δy*/δx项，积分回x给出正确unrooting/对称因子。

full tree中仅由yedges连通的maximal component仍为tree，缩成effectivevertex与展开是双射。先消u再消v的stationary方程等于原联合方程，需两次均在同一域唯一可解。

真正物理on-shellkernel不能仅投影丢掉：它要留作retained变量，或其homogeneousdata固定且剩余kernelequation满足。原文把这一条件列出来了，没有以formal inverse掩盖共振。

observable insertion通过S+ηO再stationarytransfer，单次导数为O[x,y*]，多次导数包含inducedcontacts。不能只匹配action而保留未transport的boundaryenergy或externalstate。

##### 9.2 Feshbach符号与状态norm

解Q部分：ψ_Q=(E−QHQ)⁻¹QHPψ_P。代回P部分得K_P(E)。精确projectedresolvent要求E−H与E−QHQ都可逆；谱点只能用Schurkernelequivalence，原文有正确区分。

因为∂_E(E−QHQ)⁻¹=−(E−QHQ)⁻²，

||ψ||²=〈ψ_P,[1−∂_E K_P(E)]ψ_P〉。

原文(12.3)的负号是正确的，不应误改为加号。两timeorderings的1/(2Ω)和给1/(ν²−Ω²)也正确，前提是同一prescription及相关Legendrecontact一起保留。

##### 9.3 “全阶”只有leadingWeylsymbol

H₀二次使其starcommutator精确等于Poissonhomologicaloperator。固定同一resonantprojection、inverse与resonantgenerator convention后，按couplingdegree归纳：量子starbracket的leadingℏ⁰项是经典Poissonbracket，所以leading symbol各阶相同。

这个证明不推出fixedoccupationenergies相同，不控制contractions，不控制continuum/strongunitarylimit，不保证形式级数收敛。原文均有这些限制，因此一般命题没有明显越界。

#### 10. 第一轮κ³toy：实际独立复算

以{b,b*}=−i、两graviton振子同样约定，m=4ω，D=b²+βb*b。我重新生成S=A D−D* a+C D*−D c与V=[H₀,S]_cl，未调用原toy程序。

独立结果：
- [H₀,S]_cl−V=0；
- W₂|_(a=c=0)=−8ω|D|²，恰等于−2m|D|²；
- W₃=[S,[S,V]]/3中A b⁴ coefficient为−16βω，符合第一轮(14.9)。

在ω=β=1时，完成Q与P的平方后，裸quartic最负系数为−34|b|⁴；加35κ²|b|⁴确实留下正quartic，所以“toy可下有界”不是靠忽略动量平方。该U产生的额外[S,U]没有a* b⁴这一monomial，故不改变所展示resonance。

这个反例只否定“固定当前leadinggraph可无条件全阶延伸”。扩大resonantblock或更换leadinghomogeneouschoice仍可能修复。原文也如此限定，因此其反例本身没有夸大。

#### 11. 建议综合结论的措辞

可以说：
“在明确的minimalaction、边界和量子处方下，order-G physical scalar-sector closure的关键Ward与次数证明经独立重建未发现错误；两体quartic的唯一Focklift成立。pairedresponse确实解释了treeK4/OFPT/covariantpairing的同阶等价，但只适用于匹配的boundary/observable/endpoint数据。现有材料并未证明任意高阶closure或所有旧secularrepresentative逐式等价。第一轮普遍O(G²)余项需补证或改成第二轮的o(G)。”

不可以说：
“所有重整化处方都一样”“已独立复算全部一体loop”“不需要boundarygravitons”“fullgravity与scalarFock非微扰等价”“不存在任何高阶三体力”或“证明O(G)就自动知道余项O(G²)”。


## 附录 B 第一轮动力学递推与 intertwiner

### 第一轮 Einstein–Casimir / Racah / Jastrow 审查与补证

审查对象：`ADS3_Einstein_scalar_research(2).md` §§6、9、10，以及后轮包固定的原笔记 §72。原件未改。本文只审此范围；边界响应与量子物理态闭合由并行审查负责。

#### 结论先行

这部分未发现足以推翻给定二体谱或手征 Jastrow/三体压缩的代数错误。不能把“没有推翻”说成从 Einstein action 到量子全谱的所有接口已经由此复核。关键动态输入仍是同一边界处方下的 reciprocal tree pairing 与其 Casimir equation。

1. §9 的全次数 intertwiner 是可完整证明的，不只是有限次数拟合。独立符号程序完成任意 n,r 的 Newton 恒等式、任意 hypergeometric 系数的 crossed Casimir 恒等式、两条双对易关系，以及 crossed 谱在全部带上的一般参数恒等式。
2. §6 的原始 ground–J 积分、自由 CG 的三角反演、contact source 的任意 n 归一化，均可补成透明证明，见下文。不是先输入最终谱再“验证”。
3. §9.3 单 stress block 路线确实没有独立证明全部有限 spin；Regge arc 与完整 correlator 的假设仍不可省。原报告已经主动承认，所以这是该快捷路线的条件性，不是对 bulk 初始行+递推法的反例。
4. “同一 Racah 代数”不等于两个完整物理 Hilbert 问题已酉等价；本文的变换只在多项式上可逆。原报告已作限定，不能宣传成全局谱分解。
5. Jastrow 与 2×2 压缩是给定 pair kernel 后的表示论推论，不能用这些成功再反过来证明 pair kernel 的 Einstein 来源。该依赖方向在原报告中正确。

#### A. 原始 canonical 初始行积分：无需目标谱

置 d=Δ，s=r²，f=1+s，R²=c_J² s^J f^(−d−J)，c_J²=(d)_J/(2π J!)。直接微分得到

K_J=R² (J²/s+d²)/f，
e_J=2R²[J²/s+d(d−1)]。

将 M₀=d(1−f^(1−d))/(2π)、D₀=d f^(−d)/(4π) 代回 §6.2 的定义，且 r dr=ds/2，得到

D_J=−8π d c_J² { J² B(J,d+1)+d² B(J+1,d)−d B(J+1,2d−1) }。

推导中来自 D₀e_J 与 M₀K_J 的两个 J²B(J,2d) 恰相消。对 J≥1 使用 J²B(J,d+1)=Jd B(J+1,d)，随后

[(d)_J/J!](J+d)B(J+1,d)=1，
[(d)_J/J!]B(J+1,2d−1)=(d)_J/[(2d−1)(2d)_J]，

便得到报告的 D_J=−4d²+4d²(d)_J/[(2d−1)(2d)_J]。

J=0 不能写零乘发散 beta；直接从 K₀、e₀ 积分，等价于先删除 J² 项，再得到同一个公式。d>1 保证所需积分端点可积。

自由 product state |0,J⟩ 对 pair k=0 module 的概率为 (d)_J/(2d)_J：它就是归一化 (L₋₁¹+L₋₁²)^J|0,0⟩ 的 endpoint 系数平方。对最高 k=J module 的概率为 (d)_J/(2d+J−1)_J>0。于是线性方程的每一行确实三角、非退化。候选 x₀₀=−4d²(2d−2)/(2d−1)，x_{k0}=−4d² (k≥1) 代入，恰只剩 k=0 权重；三角性证明其唯一，不要求其余 CG 权重逐个计算。

#### B. 难点不是“scalar/vector fiber”四个字：补全部 source 归一化

在归一化单支 D⁺_{d/2} 基中，degree K 的 pair primary 系数 c_a^(K) 可取交错实号，其平方是

(c_a^(K))² = binom(K,a) (d)_K² / [(d)_a (d)_{K−a} (2d+K−1)_K]。

这是 (z₁−z₂)^K 配上 monomial norm a!/(d)_a 后的直接表达；Vandermonde 恒等式给 Σ_a c_a²=1。其 lowering 关系为

c_{a+1}^(K)√[(a+1)(d+a)]=−c_a^(K)√[(K−a)(d+K−a−1)]。

##### B1. Scalar source

全局二维 primary (n,n) 的左右系数各是一份 c^(n)。中心只有各粒子的 p=q 模非零。每个中心 radial 模幅值是 (−1)^a/√(2π)，所以 local product 的中心系数是 (−1)^n Σ_a c_a²/(2π)=(−1)^n/(2π)。Lowest-weight PDE 随后固定它为 F_n=(−1)^n e^(−2iht) f^(−h)/(2π)，h=d+n。

因此 ∫r dr dθ |F_n|²=1/[4π(2h−1)]，并非从目标谱抽出的 normalization。

##### B2. Vector source

primary (n+1,n) 的中心一阶梯度只来自一粒子 j=0、另一粒子 j=1。j=1 模的中心梯度幅值为 (−1)^a √[(a+1)(d+a)]/√(2π)。J=a db−b da 的两类项由 lowering 恒等式变成相同的和。

决定全部 n 的等式是

[c_a^(n+1)/c_a^(n)]² (n+1−a)(d+n−a)
= h(n+1)(2d+n−1)/[2(2h−1)] = ρ₁²，

右侧与 a 无关。故求和只留下 ρ₁ Σ c_a²=ρ₁；|A₁|²=ρ₁²/π²，正是报告数值。

##### B3. Spin-two annihilation source

primary (n+2,n) 的中心 spin-two tensor 只由两个 j=1 梯度产生。相应任意 a 的恒等式为

[c_{a+1}^(n+2)/c_a^(n)]² (a+1)(d+a)(n−a+1)(d+n−a)
= h(h+1)(n+1)(n+2)(2d+n−1)(2d+n) / [4(2h−1)(2h+1)] = ρ₂²。

相同实标量的 √2 因子使 |A₂|²=ρ₂²/(2π²)，恰得到 §6.4。

这三个恒等式都来自同一个 free CG 系数，不借助 interacting spectrum。

##### B4. Tensor norms / local contact source

对报告 W^(E,s)，其 complex one-form v=dt−dθ+i dr/(rf) 满足 v·v*=2/(r²f)，故 W:W*=2^s f^(−E−s)。积分立即得到 π2^s/(E+s−1)。尤其 s=1、2 的 source norms 无隐藏无限和。

局域恒等式 K=T[a,c]:T[b,d]−trT[a,c] trT[b,d] 可以直接展开四条梯度验证：dJ=2 da∧db；dF·dF̃+J·J̃=2(ac db·dd+bd da·dc)。这给报告 (6.5) 的全部系数，包括容易错的 −μ/4 与 −3μ²/2。

在 scalar sector J=0，□F=4C F，∇a·∇b=(2C−μ)F。积分 −μ dF·dF*/4 经分部积分成为 +μ C |F|²。于是 K 的系数是 (2C−μ)²/2+μC−3μ²/2=(C−μ)(2C+μ)。

在 vector sector F=0，∫dJ:dJ*=−8h²∫J·J*，故 K=(2h²−μ)∫J·J*/4。乘 16π 与上述任意 n norms 就得到 S_nn 与 S_{n+1,n}。

这些分部积分仍要求同一个 reciprocal pairing 的端点流消失；本节不能替代对该物理条件的独立审查。

#### C. 从 differential Casimir 到离散系数：补任意项证明

令 b_q(h)=(h)_q²/[(2h)_q q!]，k_h(z)=Σ_q b_q(h)z^(h+q)。crossed differential operator D_t 作用单项 z^p 给

(p−d)² z^(p−1)+(−2p²+2dp−d)z^p+p²z^(p+1)。

因此 z^(h−1+q) 的系数为

(h+q−d)²b_q+[-2(h+q−1)²+2d(h+q−1)−d]b_{q−1}+(h+q−2)²b_{q−2}。

将其除以 b_q，所需比值为

b_{q−1}/b_q=q(2h+q−1)/(h+q−1)²，
b_{q−2}/b_q=q(q−1)(2h+q−2)(2h+q−1)/[(h+q−2)²(h+q−1)²]，
b_q(h−1)/b_q(h)=(h−1)²(2h+q−2)(2h+q−1)/[(h+q−1)²(2h−2)(2h−1)]，
b_{q−2}(h+1)/b_q(h)=2h(2h+1)q(q−1)/[h²(h+q−1)²]。

代入通分即证明原笔记 (72.13)，无需抽样 h 或 q。q=0、1 直接删除负下标项；h>1，无 k_{h−1} 参数奇点。

在 Σ_n p_n x_n k_{d+n} 中收集 k_{d+n}，升指标贡献为 (n+1)²p_{n+1}/p_n=a_n；降指标贡献同样为 c_n；central coefficient=(μ−C_n)/2=−a_n−c_n。因此离散 ℒ 并非 spectrum ansatz。取 logarithmic secular coefficient 时，微分击中 log 只产生不带 log 项，这一步不会污染所取系数。

但还必须证明被作用对象就是相同 Einstein tree pairing 的 preparation correlator；该接口是物理前提，不由上述 hypergeometric 恒等式自动保证。

#### D. 求解与唯一性：所有标签，不是高自旋渐近

给定整条 row 0，递推中的 a_l>0 可解出 row l+1：

a_l x_{k,l+1}=S_{kl}−ℒ_k x_{kl}−(b_l−2)x_{kl}−c_l x_{k,l−1}。

这是离散初值问题，l=0 时 c₀=0，无额外负行。两个同初始行解之差因此全零，即使不假设无穷远增长性质。

在 k≥l+2 的区域 source=0，且已知 row l 的上三角尾部为常数 u_l，故 ℒ_k 项消失。ℒ1=0、ℒC=2C−μ 使 u_l=4μ−8C_l 满足全部尾部方程。对角方程唯一给 x_nn=u_n(2h−2)/(2h−1)。独立程序确认对角、相邻与距离≥2 各带的一般 n,d 残差恒等于零。

g_{00} 在 d=3/2 的表面极点：C+μ=d(2d−3)，故 numerator 带 (2d−3)²，约分后 annihilation term 连续为零，crossed 值 −9/2。不能数值直接把原未约分式在 d=3/2 代入。

#### E. 全次数 Racah intertwiner 的真正内容

设 N_r(C_n)=n^(falling r)(n+2d−1)_r/(d)_r²。比值是

N_r(n+1)/N_r(n)=(n+1)(n+2d+r−1)/[(n−r+1)(n+2d−1)]，
N_r(n−1)/N_r(n)=(n−r)(n+2d−2)/[n(n+2d+r−2)]，
N_{r−1}/N_r=(d+r−1)²/[(n−r+1)(n+2d+r−2)]。

代入 ℒ 后通分，得到 ℒN_r=r(r+1)N_r+r²N_{r−1}。比值只在稠密集合使用，清分母后恢复多项式恒等式，因此 n<r 的零点不能构成反例。

令 t=z/(1−z)，A=t^d。D_s t^(d+r)=C_r t^(d+r)+(d+r)² t^(d+r+1)。所以 ∏_{j<r}(D_s−C_j)A=(d)_r² A t^r。映射 T[P]=A^(−1)P(D_s)A 严格将 Newton 基送至 monomial 基，因而在多项式上双射。

其 Y-image 为 t(t+1)∂²+(2t+1)∂；X-image 是报告给出的 A^(−1)D_s A。R_m 的 Newton 系数递推等价于 Legendre 多项式 P_m(1+2t)。于是 (9.8) 对每个有限 m 精确成立，两条双对易可在任意光滑测试函数上直接计算，均为零残差。

限制：这种双射不提供 n≥0 上的正交测度、完备性、domain、收敛或酉性。它也不把一种边界条件自动变成另一种。若说“整个 bulk 与 boundary 物理谱已由此等价”便超出证明；现报告的有限多项式措辞可接受。

#### F. Jastrow 与三体：对证明薄弱处的检查

pair raising 对 δ^k Q 的作用保持 δ^k 整除，因为 (z_i²∂_i+z_j²∂_j)δ=k(z_i+z_j)δ。固定 degree d_pair，偶 k≥4 的 descendants 个数是 floor(d_pair/2)−1，正等于 degree d_pair−4 的 pair-symmetric polynomial 维数；并且不同 Casimir eigenspaces 线性独立。因此无 P₀/P₂ 分量确实等价于 δ⁴ 整除，而不只是一边的包含。

多 pair 因子不需要 comaximal：在特征零 UFD 上每个不相伴线性不可约因子的指数至少四，等价于 Vandermonde⁴ 整除。原报告特意避免了把 ideals 错当 comaximal 的常见错误。乘 Vandermonde⁴ 不等距，报告已说明，不能把 shifted parameter 当真实质量。

三体固定 J 的 pair channel multiplicity 为一，Bose 投影后 shifted Hamiltonian =3v₀|u₀⟩⟨u₀|+3v₂|u₂⟩⟨u₂|。AA†/A†A 的非零谱同一，而零谱必须用物理空间维数补计，原报告的小 J 规则正确。J=13 虽大于阈值仍没有新的 Jastrow primary，原报告也正确指出。

这是一条可信、非平凡但条件性的推论链：输入 Einstein pair kernel 与固定 scalar branch 的闭合。不能用自身再为该输入背书。有限 J 测试不替代此理想/维数证明，但这里确实存在该证明。

#### G. 分类与下游影响

- **已补齐的简写**：ground–J beta 积分；source scalar/vector/spin-two 全 n normalization；crossed differential operator 的任意系数证明；递推的全标签唯一性；Newton 全次数代数。
- **保留条件性**：Einstein reciprocal pairing 的边界/observable 接口；boundary stress inversion 的 Regge arc；formal polynomial 与 operator Hilbert completion 的区分。
- **没有发现的严重问题**：没有找到这部分系数、奇偶性、Jastrow 次数或三体秩计数的反例。
- **不能据此作出的认证**：未穷尽文献新颖性；未独立复核所有历史 self-energy/counterterm；未证明 G² 或全阶闭合；不把所有 finite validation 当 general proof。

可复现文件 `check_independent.py` 与 `independent_results.json`。它不导入作者谱求值程序；16项恒等式皆为本轮重新构造后 SymPy exact simplification。上文 B 的 source normalization 与 A 的积分是另外的解析补证，不应谎称为独立 PDE 数值求解。


##### 附加容易误读的 exceptional point

在 d=3/2,n=0，trace source 的系数 C+μ 为零，并不意味着整个 τ 为零。S_n 的比值应先约分：(C+μ)/[2(4C−3)]=d/[2(2d+1)]（n=0），极限为 3/16。故 τ=𝒟S 可以非零且 traceless，q=−gS 依然是有限 particular response；其 trace pairing 为零才使 annihilation 能移为零。这是“generic weight 由 trace 唯一重构”在 exceptional point 必须由原 source 的连续极限补完的精确含义。原报告已有极限指示，但若实现中直接以零 trace 推断零 source，会实际犯错。


## 附录 C 完整 logarithmic 核及其计数

### 对两轮 AdS₃ 报告的独立敌意审查：正分解、完整饱和核与计数

日期：2026-10-19。审查对象为第二轮报告 §§4–5、7，以及第一轮 §10 的 Jastrow 定理。所有新分析与程序均另存，未修改两轮报告、原笔记或其代码。

#### 结论先行

在接受报告 §§2–3 的物理输入，即 scalar branch 的 order-G 闭合、唯一两体提升及所列完整 pair eigenvalues 后，我没有发现本部分的致命反例。最容易“困难处一笔带过”的链条，确实可以补成全 N、全 Q 的证明：

1. pair Casimir 的完整 spectral flag 等于碰撞超平面的消失阶过滤；
2. 除去 Vandermonde 四次幂之后，真实 Bargmann Gram 把问题转成保留所有碰撞 flags 的线性映射；
3. 固定一次输入次数 Q 就足以确定一个唯一的 pure-order-Q normal operator；它的系数逐项满足法向整除条件；
4. type-A 的显式自由 frame 与逐 height-one prime 的整除性，真正排除了额外 codimension-two 缺口；
5. Bose invariance 变成每个自由系数分别对称，从而得到所称 Hilbert series。

这不是对全文正确性的认证，也不是从“程序都通过”推出定理。尤其本文不独立验证引力 Ward closure、原始两体核、重整化一体自能或完整正谱构造。以下补证只证明在其明示动力学输入下，这套 kernel 几何与计数成立。

#### 1. 缺口与严重程度清单

| 项目 | 原文位置 | 裁决 | 影响与修复 |
|---|---|---|---|
| Hermitian 内积直接写 tensor→Hom | 第二轮 5.6 | 轻微但必须明确的复线性约定 | 若直接用 Riesz，同构涉及共轭空间。必须取标准实系数结构再作复双线性延拓；附件已有说明，主文可以更显式。不会改谱或计数。 |
| 固定次数 flags 如何推出全部 ideal powers | 第二轮 5.7–5.9 | 原文太短，但可以完整补证 | 不是任意延拓都成立；是唯一 pure-order-Q normal 延拓成立。第 4 节给出必要充分证明。 |
| height-one 是否遗漏交叉碰撞点 | 第二轮 5.11 | 经独立检查成立 | 不是“局部正则所以随便粘合”；关键是全局有理展开的唯一性、分母只有 Vandermonde、逐素因子排除分母。第 5 节补足。 |
| 个别 pair projectors 是否作用在 Bose 子空间内部 | 第二轮 4.3、4.7 | 需避免错误解释 | 单个 P_ij 通常不保持全 S_N 对称子空间；可在 labelled Hilbert 空间中把它视为正算子，再限制其二次型。和保持 Bose，对零空间论证无影响。 |
| Q=2 核公式是否只是猜测 | 第二轮 5.17 | 可直接全 N 证明 | 第 7 节给出显式 Gram 推导与绝对归一化，不靠 N=4 测试。 |
| N=4 的单位根振荡是否污染主项 | 第二轮 7.2 | 所称相消正确 | 第 8 节独立计算 x=-1 的双极点。N≥5 的其他单位根也确实低一阶。 |
| 第一轮写 O(G²)，第二轮改 o(G) | 第一轮 10.8、10.10 等；第二轮开头 | 有实质意义的范围收紧 | 本部分只推出 order-G coefficient。未经更高阶闭合/简并谱解析性证明，不能凭本定理恢复第一轮的 O(G²) 余项。核心线性系数不受影响。 |
| 从 kernel 完备性推出全部正谱、可积性或物理全谱 | 两报告的读者可能误读 | 不允许 | 本结论只完整解出一个 Casimir-bound eigenspace；其余谱仍依赖独立 Gram/Racah 构造及动力学输入。原第二轮已基本作出正确限定。 |

没有发现需要删除该 kernel 定理的错误，也没有把可补齐的短证明冒充反例。

#### 2. 正性与 baseline：独立验算

令 C_j=(Δ+j)(Δ+j−1)，μ=Δ(Δ−2)。在允许的 pair channels k+l 偶数上，定义

a_kl=γ_kl−(4μ−8C_l)。

当 k≥l+4 时，所给 s≥4 分支直接给 a_kl=0。当 k=l+2 时，spin-2 修正的每个因子在 Δ>1 下均正。当 k=l=n 时，要检验的是

v₀(n)=[8h(h−1)−4μ]/(2h−1)−2[h(h−1)+μ]²/[(2h−3)(2h−1)(2h+1)]，h=Δ+n。

n=0 时必须先约掉形式上的 2Δ−3，得到

v₀(0)=2Δ²(2Δ+5)/[(2Δ−1)(2Δ+1)]>0。

这在 Δ=3/2 完全正规，相应原 g₀₀=−9/2。n≥1 时置 r=Δ−1>0、j=n−1≥0，分母三个因子都正。独立符号展开分子为

8r⁴+80r³j+120r³+160r²j²+480r²j+362r²
+120rj³+540rj²+772rj+348r
+30j⁴+180j³+386j²+348j+98。

全部系数严格正，故没有隐藏的质量区间失败。k<l 时以较小标签 k 为 baseline 的非负修正之外，还增加 8(C_l−C_k)>0。因此零条件恰为 k≥l+4。

对右 Casimir，直接展开总生成元的二次型得

Σ_(i<j) C_ij = C_tot+(N−2)Σ_i C_i，C_i=μ/4。

于是常数项为 4μ·N(N−1)/2−8(N−2)Nμ/4=2Nμ，最终

b_N(Q)=2Nμ−8(NΔ/2+Q)(NΔ/2+Q−1)
=−2N(N−1)Δ²−8Q(NΔ+Q−1)。

有限次数、正 Bargmann 内积下，每个 pair defect 是正半定。即使它们不对易，也有

⟨ψ,(Σ A_ij)ψ⟩=Σ ||A_ij^(1/2)ψ||²。

所以 sum kernel 等于每个 labelled pair defect 的共同 kernel；没有可由不同 pair 间抵消产生的额外零态。此步骤不要求 individual P_ij 保持全 Bose 子空间。

#### 3. spectral flags=ideal powers：在 primary 空间中的完整证明

取 R=C[V]，V={Σ Z_i=0}，R_q 为 q 次齐次多项式；这是 labelled primary 空间，尚未施加 Bose 对称。固定 pair，令 δ=z_i−z_j，σ=(z_i+z_j)/2。原 Casimir 写成

C_ij=δ²∂_δ²+2Δδ∂_δ−(δ²/4)∂_σ²+Δ(Δ−1)。

C_ij 与全局 lowering Σ∂_i 对易，因此保持 R_q。对 I_r=δ^r R_(q−r)，每一项都保持 δ-adic filtration，且在 I_r/I_(r+1) 上恰作用为标量

λ_r=(Δ+r)(Δ+r−1)。

原因是第三项至少多给两次 δ，前两项在 δ^r f(t) 上的最低阶系数为 r(r−1)+2Δr。对 Δ>1，各 λ_r 严格不同。

还需解释“quotient 上不同本征值”为什么足以得到 direct sum，而不能只喊三角化：对有限维 R_q，C 自伴，故可正交对角化；每个 invariant I_r 同时是 reducing subspace。由其 associated graded 上的 λ_s (s≥r) 得知 I_r 只能包含这些本征空间，并且逐层重数恰等于对应 graded quotient 的维数。故

I_r = ⊕_(s≥r) E_s。

N=2 时 R_q 只有 δ^q，I_0=…=I_q=R_q、I_(q+1)=0，中间 quotient 可为零；结论仍成立，只剩 E_q，不能要求每个 s 都有非零 channel。

由 pair 条件 P_l^R ψ ∈ δ_z^(l+4)R 得到 ψ 每对至少 δ_z⁴ 整除。不同 δ_ij 是互不相伴不可约线性因子，故所有整除条件的交为乘积 V_N⁴ 的主理想。这里只用 UFD，不用错误的 comaximal 假设。商 F=ψ/V_N⁴ 仍对左右平移不变、仍 simultaneous Bose invariant。

#### 4. 真正的 Hom 同构与从一次 Q 到所有 ideal powers

##### 4.1 先把共轭约定说清楚

选 R_Q 的实系数基 f_a、R_p 的实系数基 e_b，令 G 为右侧物理 Bargmann Gram。真实 Hermitian inner product 在这个实基中的矩阵 G 实对称且正定。使用其复双线性延拓 B(u,v)=uᵀGv，而不是把 antilinear Riesz 误作线性映射。

若 F(z,w)=Σ C_ba e_b(z)f_a(w)，对应的复线性 map 的矩阵是

A=C G，逆向 C=A G^(-1)。

这说明 reproducing kernel 的 G^(-1) 是正确方向。若右 projector 的矩阵为 P，自伴性给 PᵀG=GP。右变量投影把 C 变成 CPᵀ，从而 A 变成 AP。S_N 也因其物理内积不变性得到相同 equivariance。因此真实 projector 条件确实等价于 A(E_l)⊂δ^lR_p。

由上一节 I_r=⊕_(l≥r)E_l，条件等价于所有 0≤r≤Q 的

A(δ^r R_(Q−r))⊂δ^rR_(p−r)。

反向也成立：E_l⊂I_l，故 A(E_l)⊂I_l。这里没有把正交 eigenspace 等同于单项式 δ^l；只把完整 flag 等同于 ideal filtration。

##### 4.2 固定齐次次数的 map 唯一确定 normal symbol

取任意线性坐标 x。对 A:R_Q→R_p，定义

D_A=Σ_(|α|=Q) [A(x^α)/α!]∂_x^α。

在次数恰为 Q 的输入上，∂^α x^β=α! δ_αβ，所以 D_A 的确等于 A，并且在“仅 order Q、系数次数 p”的限制下唯一。线性坐标变换不会产生 lower-order derivatives；因此可对每个 hyperplane 单独改用 δ,t 坐标而不破坏该定义。

写 D_A=Σ_(r+|β|=Q) c_(rβ)(x)∂_δ^r∂_t^β。对每个 monomial δ^r t^β，A 的输出就是 r!β! c_(rβ)。输入本身属于 I_r，故 flags 必要地要求 δ^r | c_(rβ)。反过来，若每个系数都有该整除性，则输入 I_s 内的次数-Q monomial 其法向指数 r≥s，因此相应输出含 δ^r，从而含 δ^s。必要充分性成立。

更进一步，同一 D_A 对任意次数输入 δ^s f 都保持理想 (δ^s)：含 r 次法向导数的一项，对 s≥r 时至少剩 δ^(s−r)，再乘系数中的 δ^r 恰恢复 δ^s；s<r 时系数本身至少含 δ^r，足够。切向导数不改变 δ 次数。

这就是从固定次数的有限 flags 到“保存全部 ideal powers”的合法延拓。它不是说任意 extension 都自动保理想，也不允许把变系数 vector fields 顺序复合而漏掉 lower-order terms。

#### 5. 自由 frame 与 codimension-two：把最危险的一步补全

设 n=N−1，R=C[x_1,…,x_n]，K=Frac(R)。在 centered ambient coordinates，定义切向向量

v_a(Z)_i=Z_i^a−(1/N)Σ_jZ_j^a，a=1,…,N−1。

对应 symbols θ_a=Σ_i v_a,i ξ_i；取 Σξ_i=0 可省略均值项。对任意 δ_ij，

v_a(δ_ij)=Z_i^a−Z_j^a=δ_ij Σ_(r=0)^(a−1) Z_i^(a−1−r)Z_j^r。

所以所有 v_a 都在每个 collision hyperplane 上对数切向。

取常数切向基，系数矩阵记 B。将常数向量 1 与这些列拼成 N×N 矩阵，对后面的列减去第一列的倍数，即回到 1,Z,…,Z^(N−1) 的 Vandermonde 矩阵；常数法向/切向基变换的 determinant 非零。因此 det B=cV_N，c≠0。

任意 ξ-degree-Q symbol C 可在 K 上唯一展开为 Σ_(|ν|=Q)c_ν θ^ν。因为 B^(-1)=adj(B)/(cV_N)，每个 c_ν 属于 R[V_N^(-1)]，潜在分母只有 collision factors，至多某个有限幂。

固定一个 δ=δ_ij，局部环 R_(δ) 是 DVR。其余 collision factors 为 units。相对于 normal/tangent basis，所有 B 列都属于

M_δ=R_(δ)·δ∂_δ ⊕ Σ R_(δ)·∂_t。

写 B=diag(δ,1,…,1)U。U 的条目属于 R_(δ)，且 detU=(detB)/δ 是 unit，所以 U 可逆。这比仅说“Smith form 具有 valuation one”更直接：B 的列确实是整个 M_δ 的基，不只某个同秩真子模。

第 4 节的法向整除条件恰是 C∈Sym^Q M_δ。在基 B 下，它的唯一系数 c_ν 因此全在 R_(δ)。对每个 δ_ij 都如此。由于 c_ν 原来只可能含 V_N 分母，约分后若仍有非恒定分母，就必含某个 δ_ij 的负 valuation，与该处正则矛盾。故 c_ν∈R。

这彻底处理了 hyperplane intersections：不是把局部数据粘合成可能有点状 torsion 的新 sheaf，而是在固定 K-basis 中逐个检查已经唯一确定的有理函数。一个非多项式有理函数不可能只在 codimension≥2 支集有分母。这个论证也不需要未经证明地使用“对称幂与交集交换”。

所有 θ_a simultaneous-S_N invariant，展开又在 K 上唯一。因此 C invariant 当且仅当每个 c_ν invariant；而 R^(S_N)=C[e₂,…,e_N]。全解遂是这个 polynomial ring 上自由的 θ^ν 组合。此处自由性来自 K 上基的独立性，不是有限数值 rank 猜测。

#### 6. Hilbert series、最低态及边界情形

每个 θ_a 的双次数为 (a,1)，每个 e_r 的双次数为 (r,0)，再乘 V_N⁴ 增加 left degree J_N=2N(N−1)。所以

Σ κ_N(P,Q)x^Py^Q = x^(J_N)/[Π_(r=2)^N(1−x^r) Π_(a=1)^(N−1)(1−yx^a)]。

这是 polynomial coefficient modules 的真正自由基，因此既无少算，也无多算。对固定 Q，最小 left degree 为 J_N+Q，只可能 θ₁^Q，故唯一。与 Δ 无关的是维数，不是具体波函数；Gram 同构依赖 Δ。

N=2 时该式为 x⁴/[(1−x²)(1−yx)]。系数非零恰在 P=4+Q+2m，重数为一；这与只有一对、Bose parity P+Q 偶数且 k=P≥Q+4 完全一致。Q=0 恢复第一轮 V_N⁴ C[e₂,…,e_N]。N=0,1 不在此定理声明中，不能把空乘积随意套进含非零 Casimir baseline 的结论。Δ=3/2 不例外；Δ≤1 不由本报告的物理前提覆盖，不能从本节延伸过去。

对于 P<Q 应交换左右，选择依赖较小次数的较强 baseline。原定向 series 在 P<Q 本来就无饱和态；没有两个分支重复计数，因为支持区分别满足 P≥Q+J_N 或 Q≥P+J_N，N≥2 时不相交。

#### 7. 任意 N 的 Q=2 reproducing kernel：完全展开的补证

令 P₀=I−11ᵀ/N 为标准中心化投影。每个 labelled translation-invariant 二次型都唯一可写成 f_A(z)=zᵀAz，其中 A=Aᵀ、A1=0。使用单站 Bargmann norm ||z||²=1/Δ、||z²||²=2/[Δ(Δ+1)]，直接比较 diagonal 与 off-diagonal monomials 可得实结构诱导的双线性 pairing

B(f_A,f_B)=(2/Δ²)[tr(AB)−Σ_i A_ii B_ii/(Δ+1)]。

记 Z²=ΣZ_i²、S_A=ΣZ_i² A_ii。对于报告的三个 invariants，视作 w 二次型，它们的矩阵分别为

I₂: B=ZZᵀ； I₃: B=P₀ diag(Z_i²)P₀； I₁: B=Z²P₀。

于是对任意 A，

B_w(I₂,f_A)=(2/Δ²)[f_A(z)−S_A/(Δ+1)]；
B_w(I₃,f_A)=(2/Δ²)[(Δ+2/N)S_A/(Δ+1)−Z²trA/(N²(Δ+1))]；
B_w(I₁,f_A)=(2/Δ²)[(Δ+1/N)Z²trA/(Δ+1)]。

代入 T=I₃+(Δ+2/N)I₂+I₁/[N(NΔ+1)]，S_A 和 Z²trA 两类非重现项分别精确相消，得到

B_w(T,f_A)=2(Δ+2/N)f_A(z)/Δ²。

因此绝对归一化后的真实 reproducing kernel 是

K_(Δ,2)=Δ² T/[2(Δ+2/N)]。

这对所有 N≥2、Δ>1 成立，包括低 N 下 I₁,I₂,I₃ 可能线性相关的情况。故 5.17 并非仅在若干 sample 上成立的经验公式。相反，单用 I₂ 通常有额外的 S_A 项，解释了 Euclidean pairing 为什么不是物理 kernel。

#### 8. rank 与渐近：独立推导

因为每个 finite block self-adjoint，rank=d_N−κ_N。这只决定正谱的维数，不决定其能量。Molien identity term 在 x→1 的最高 pole 是 L/(N! (1−x)^(N−1))，L=binom(Q+N−2,N−2)。transpositions 给次高 pole c_N τ/[2N!(1−x)^(N−2)]。

核的 denominator 展开为 N!(1−x)^(N−1)[1−c_N(1−x)/2+…]；h_Q(x,…,x^(N−1)) 的一阶变化为 −(NQ/2)L(1−x)；x^(J_N) 的为 −4c_N(1−x)。最高 pole 相消，下一项系数为

[(7c_N+NQ)L+c_Nτ]/(2N!)。

再取 coefficient 得报告的 ρ=[(7c_N+NQ)L+c_Nτ]/[2N!(N−3)!]。不能只做 x=1 就宣称 unaveraged asymptotic，必须检查其他根：N≥5 时任何非平凡单位根的 pole order≤floor(N/2)≤N−3，故其系数阶≤P^(N−4)。N=4 的 x=−1 双极点确是唯一竞争项：Molien coefficient 为 1/16·[y^Q]1/[(1−y)(1+y)²]；核为 h_Q(−1,1,−1)/16，二者相等。其余极点都只贡献有界振荡，故主项无 residue-class 依赖。

N=3 时非平凡单位根 poles 全部相消；若把 fixed-Q Molien numerator 写到 (1−x²)(1−x³) 上，其次数≤3，而 kernel numerator 次数=12+2Q。除掉 (1−x)(1+x)(1+x+x²) 后剩 numerator 次数≤8+2Q、denominator 1−x。因此 P≥2Q+8 后 rank 为常数 [(Q+7)(Q+1)+1_(Q even)]/4。这个阈值的 degree argument 正确，不能误替换成所有 P 下固定辅助矩阵维数。

#### 9. 第一轮 Jastrow 结果的独立核查

Q=0 时每个 pair 只有右 label 0；pair defect 只留下正的 P₀、P₂，故共同核确为 V_N⁴ 乘对称多项式。primary 条件再把系数环收缩为中心化对称环，因 V_N⁴ 自身整体 translation invariant。

乘 V_N⁴ 的 global sl(2) intertwiner 使用 Δ_alg=Δ+4(N−1)：lowering 用平移不变；L₀ 增加 J_N；raising 的额外项为

Σ_i z_i²∂_i log V_N⁴=4Σ_(i<j)(z_i+z_j)=4(N−1)Σ_i z_i。

所以第一轮 10.11 代数上成立，但此映射不是相应标准 Bargmann product norms 间的等距映射，也不改变原物理质量。

我从原三变量 monomials 独立展开，在 Δ=2 的范数 ||z_1^a z_2^b z_3^c||²=1/[(a+1)(b+1)(c+1)] 下得到 ||V₃⁴||²=15158/49。再直接用 differential C₁₂ 和 spectral interpolation 构造 P₂，得到 ||P₂V₃²||²=182/99。二者与第一轮一致。此测试不是在其给定 eigenvectors 或缓存 matrices 上重复读取。

#### 10. 实际执行的独立测试及其局限

另存的 independent_flags.py 完全不 import 原报告的任何程序。它以所有 homogeneous A:R_Q→R_p 的矩阵 entries 为未知量，直接对每个 collision linear form、每个 1≤r≤Q、每个输入 δ^r 单项式列出输出整除条件，再独立施加 adjacent transpositions 的等变条件 A R_in=R_out A，使用 QQ 上精确 rank 求解。它没有用 θ frame 生成答案，也没有用 Hilbert series 构造约束。

执行 82 组：N=2 时 Q=0…4、p=0…6；N=3 时 Q=0…3、p=0…6；N=4 时 Q=0…2、p=0…4，另 (p,Q)=(3,3),(4,3)；N=5 时 (p,Q)=(2,2),(3,2)。全部 nullity 与自由模块计数相同。包含 p<Q 的零空间、Q=0 边界及多个 hyperplane intersections。这些只是对 conventions 和实现的负面检验；全指标结论来自第 3–6 节证明。

independent_algebra.py 独立执行 spin-zero numerator 展开与 Δ=3/2 可去奇点、上述两个 Jastrow norms、100 个 N=3 eventual-rank exact counts（Q=0…9，各阈值之后 10 个 P），以及 N=4、Q=0…4 的 exact linear-leading periodic remainder 检验。全部通过。详细逐案记录在同目录 JSON；不把这些有限测例写成无限定理证明。

#### 11. 文献与最终可信范围

原报告把 logarithmic derivations 的自由性视作已知数学，是正确的定位。查阅一手资料 [Suárez-Álvarez, arXiv:1806.05410](https://arxiv.org/abs/1806.05410)，其摘要确实说明自由 hyperplane arrangement 的 tangent differential-operator algebra 由 arrangement derivations 生成，并追溯 Calderón-Moreno。本文实际采用的是上面的独立 elementary frame/UFD 证明，故不把一个引用当成缺失的物理映射，也不需要依赖全文未核对的附加条件。

可以认可的最强结论是：在所给 Einstein pair spectrum 与 finite scalar sector 的物理输入成立时，报告所称完整 Casimir-bound kernel、全 N/Q Hilbert series、最低态唯一性及 fixed-Q rank asymptotic 有完整可补齐的数学依据。不能由此认证原始引力 reduction/renormalization，更不能推断 higher-order closure、全 Hamiltonian 可积性或文献首创性。


## 附录 D Gram 压缩与全部谱组织

### 两轮 AdS₃ 谱构造独立敌意审查

#### 结论先行与证据界限

本审查负责第二轮 §§6–8、10–11、第一轮 §10 的三粒子 rank-two 结论，并检查实际谱入口与物理态映射。结论是：**在两体动力学输入正确、标量 Fock 分支在本阶闭合、第二轮 §5 的完整核定理成立这些明确前提下，谱压缩的线性代数、三粒子 Racah 公式、primary/descendant 重数及跨粒子数壳聚合均通过此次审查。没有发现改变这些谱值的反例。** 不是仅凭已有 27 项测试得出这一判断。

“任意有限块的完整精确代数算法”在这里有实质内容，不是遗漏矩阵元后写一个 det 就宣布解决：cluster primary、多项式内积、置换重叠、正像及态映射都被有效定义。但这不等于普遍闭式根式、不等于原 Einstein 动力学已被本审查独立证明，也不等于所有输入规模下快速。报告已给出的这些限制必须保留。

发现一个可复现的实现问题：**通用 Gram 后端仍会展开含大量零根的完整稠密特征系数表**，与“巨大重复 baseline 因子始终不展开”的绝对表述冲突。它影响内存/输出复杂度，不改变谱；已在独立副本修复并做回归，原文件完全未改。另有两项需要准确表述的限制：三 double cosets 去掉的是外层全 Bose 平均，并不自动去掉 spectator 多项式展开的阶乘规模；“给出全部态”包括有限递推/索引族定义，并非实际展开十亿维基底。后者原报告已经基本说清。

本审查没有重新计算原始径向引力积分、loop/renormalization 或 §5 logarithmic module 证明；这些应与其他审查合并，不能将本审查的 conditional pass 外推为物理总证明通过。

#### 1. 补全 cluster 完备性，而不只验证 CG 公式

记单粒子每一手征为正离散最低权模 D⁺(Δ/2)，Δ>1。两粒子张量积在一侧分解为 ⊕_{k≥0} D⁺(Δ+k)，每个 k 重数一。右侧独立同理。交换两粒子的本征值为 (−1)^(k+l)，所以 H=S₂×S_{N−2} 不变空间的 pair 只留 k+l 偶数；不能分别要求 k、l 偶数。

对 spectator 的 Bose Hilbert 空间作其自身 global-primary 分解。每个 spectator primary f_{ρ;a,b} 生成最低权 ((N−2)Δ/2+a,(N−2)Δ/2+b) 的模；ρ 是真正的左右同时对称化重数。再将 pair 与 spectator 两个最低权模耦合，每侧总 degree 固定时只有一次 CG 耦合，额外 degree 分别为 m_L=P−k−a、m_R=Q−l−b。这证明 §6.1 的 labels 穷尽 H 不变 total-primary 空间中所需 pair channels，并没有遗漏 spectator descendant：它们恰在 CG 耦合的 raising 中出现。

最低权 A、B 的 lowering identity 为 L₋ R_A^r A=r(2h_A+r−1)R_A^(r−1)A。代入

C_m=Σ_{r=0}^m (−1)^r binom(m,r) R_A^r A R_B^(m−r)B /[(2h_A)_r(2h_B)_(m−r)]

后相邻项逐项抵消。不同 r 的 cluster energies 不同而正交，且 ||R_A^r A||²=r!(2h_A)_r||A||²，故 norm sum 为

m! Σ_r binom(m,r)/[(2h_A)_r(2h_B)_(m−r)]
= m!(2h_A+2h_B+m−1)_m/[(2h_A)_m(2h_B)_m]。

这补全 (6.2) 的来源。全部 h>0，norm 无物理域零点/负值。不同 k,l,a,b 的 cluster Casimirs 不同，因此 G 只在 ρ 重数空间内非对角。D=a_{kl}I 在每个这种块为标量，从而 DG=GD 是结构结论，不是额外假设。

#### 2. 三 double cosets 的系数和“没有 N!”的准确含义

由于 F 的每列已 H 不变，<Fα,U_h1 g h2 Fβ>=<Fα,U_g Fβ>。右 cosets S_N/H 可与 unordered target pairs 一一对应。相对 (12)，target pairs 有三类：相同的 1 个、共一个指标的 2(N−2) 个、不相交的 binom(N−2,2) 个。代表可选 e、(23)、(13)(24)。因此

binom(N,2) F†Π_B F=G+2(N−2)R₁+binom(N−2,2)R₀=T。

这是精确公式，N=3 最后一项不存在。两代表都是 involution，R₀、R₁ Hermitian，与代码只算上三角再镜像一致。

应限定宣传：不必做 N! 次独立外层 Bose 平均。但 main/pair_gram.py 的 spectator_primaries 会把 spectator orbit basis 展成 distinct_permutations；所有单粒子标签不同的 orbit 可有 (N−2)! 项。该实现仍有大稀疏多项式成本，报告 §6.4/14.4 的限制必要。不能据三 double cosets 单独宣称全算法对 N 多项式时间。本审查不将这一已部分披露的实现成本误报成谱错误。

#### 3. 补全正像、无 Jordan 零块、去依赖和物理内积

令 c=binom(N,2)，S=Π_B F，K=DG⁻¹。由 G>0、D>0、DG=GD，有 K>0。在 Bose primary 空间

A=c S K S†，M=K T，T=c S†S。

M 与 K^(1/2) T K^(1/2) 相似，后者 Hermitian 非负。这不仅证明非零谱相同，也证明 auxiliary 零特征值没有 Jordan 块。因此剥掉 charpoly 的零根次数等于剥掉 auxiliary kernel 维数，不会误减 generalized eigenvectors。

A 的 kernel=(im S)^⊥；其正像=im S。取 T 的 independent columns I，则 S_I 线性无关，T_II=c S_I†S_I>0。由于所有 S 列均落在 span S_I，唯一坐标矩阵是 C=T_II⁻¹ T_I,:，故 S=S_I C。再由 AS=SM 得

A S_I=S_I C M_:,I=S_I M₊。

M₊ 就是 A 在一个真实 physical basis 的矩阵，metric 是 T_II/c；其 eigenvectors 不得用普通 Euclidean norm 归一。报告给出的 norm 正确。至此不需要核分类就能算出实际 rank 和物理非零谱。**核分类的作用是把 d−rank 预先闭式算出和构造全部 baseline 态，不是 Gram 非零谱算法本身的必要条件。** 若 §5 被推翻，仍可以从 Gram rank 获得 baseline multiplicity，但其巨大压缩/闭式态结论要重审。

#### 4. 三粒子 rational Racah 实现与状态映射

R_J(k,r) 的正交归一版本含 sqrt(ω_kω_r)；取 U=diag sqrt(ω_k^P ω_l^Q)，有理版本恰为 U⁻¹ R U，矩阵元中的单边 ω_r 不是遗漏平方根。设 B=3S†S，D=diag a，报告代码的 M=U⁻¹ B U D。定义 L=S D U，则

A L=L M，L†L=D U² M/3。

推导用 A=3S D S† 和 DU=UD。后式同时表明 ker L=ker M。M 与 Hermitian 非负矩阵相似，故 im M∩ker M=0；选 E 为 im M 的任意基，Φ=L E 是完整正谱 physical basis，不会把 auxiliary zero vectors 当物理态。其 metric E†DΩME/3 正定。

已检查三粒子输出的 chirality exchange 标记：主入口先令 P≥Q，但明确要求最终交换 z,w；不是静默交付错误手征态。辅助 compact_states 单独接口也有该标记。

第一轮 Q=0 时只有 k=0,2 两个 channels，以上立即退化为 rank≤2 的 Hermitian Gram 系统。基底总数 m₃(J)=[t^J](1−t²)⁻¹(1−t³)⁻¹，若 chiral Vandermonde⁴ kernel 已证，则 rank=m₃(J)−m₃(J−12)。J=2,3,4,5,7 rank1，J=6,8,9,10,11 rank2，J≥12恒2；J=0需单独ground，J=1无primary。原文均有处理，不存在把auxiliary零根误算为第三条态的问题。第一轮 O(G²) 余项强于第二轮 o(G)，已请物理闭合审查单独判断，这不影响本处一阶系数代数。

#### 5. primary/descendant 与自由简并全壳的完整性

对于 N≥1，每个 lowest-weight module 的两侧 raising 没有 null descendants，因为 h_L,h_R>0。固定 total bidegree(P,Q)，一个(a,b) primary恰产生一个 descendant：L₊^(P−a) R₊^(Q−b)Ψ。于是 full Fock dimension=Σ_{a≤P,b≤Q} d_N(a,b)。每个primary的能移在其整个module中相同，前提是本阶W与自由global generators对易。

Molien 系数用 simultaneous S_N 作用，而不是左右分别对称化；(1−x)(1−y) 正好去掉 center-of-mass 两个translation变量。N=0必须例外，真空不带raising tower；入口有此处理。N=1仅(0,0)primary且全部descendants能移零。

固定 rational Δ、E₀、integer J，N≤floor(E₀/Δ)有限，P,Q=(E₀−NΔ±J)/2 必须为非负整数。入口 shell 纳入全部这样的N，并聚合各块。不同N无mixing不是计数能证明的，必须依赖 §2 的物理closure/number-change证明；若该前提不成立，shell multiset union即无效，不能以计数完全取代物理证明。

聚合代码采用 square-free root-polynomial gcd。若 pieces 已两两互素，把新remaining与每一old取gcd、拆出shared及old-only，再从remaining除去shared，保持互素并给shared加multiplicity。这是有效归纳算法，既不漏根也不靠浮点容差。已用人为相交根集合(1,2,3),(2,3,4),(1,4,5),(2)及不同重数攻击，最终重数(7,12,5,8,5)精确正确。

#### 6. 谱投影、特殊参数与算法意义

有限M在指定Δ>1下与self-adjoint算子相似，其minimal polynomial就是charpoly的square-free part m。对根a，p_a(t)=m(t)/[(t−a)m′(a)]满足p_a(b)=δ_ab，所以p_a(M)投影到整个a-eigenspace，包括degenerate multiplicities。对于非orthonormal physical basisΦ、metricG，完整Hilbert空间的orthogonal projector应为 Φ p_a(M) G⁻¹ Φ†，不是仅把coordinate projector当成Euclidean正交矩阵。报告 compact-state lift给出的正是这一式。

特殊Δ先specialize再重做square-free、gcd、pivots/projectors是必要的，报告明确披露，不能批评它没有让generic projector自动适用collision。定点有理Δ路径自动重算。任意不可计算实Δ不属于exact numeric接口；symbolic结果是Q(Δ)有理函数charpoly，不声称所有实数输入都可作exact isolation。

#### 7. rank渐近和阈值的补足核查

在核生成函数成立前提下，N≥4的rank是Molien减kernel。在x=1，identity项pole阶N−1，transposition项N−2，其余阶更低；kernel最高阶相消。展开x^J_N、∏(1−x^a)及h_Q得到报告ρ系数，没有丢掉该阶常数。N≥5非平凡单位根pole阶≤floor(N/2)≤N−3，只进O(P^(N−4))。N4例外的−1双pole：Molien系数(1/16)[y^Q](1−y)⁻¹(1+y)⁻²，kernel相同，正好相消。因此不是仅平均渐近。

N3中−1与primitive cube roots所有非trivial poles抵消。共同denominator degree5，kernel numerator最高degree12+2Q；除掉总degree4的cyclotomic因子后，余numerator degree≤8+2Q，故系数从P≥2Q+8恒定。此阈值是统一足够阈值，不必声称每个Q的最小阈值。已独立核对Q=0…100、每个25个阈值后P，共2525个整数案例，全部匹配。测试不代替前述生成函数论证。

固定Q的Racah渐近也成立：ω_k(P)分子分母的1/P项都为k(3Δ−1)，故相消；有限hypergeometric sum的t≥1项为O(P⁻²)。Gamma ratio给a_P=(−1)^P Γ(2Δ)/Γ(Δ)P^−Δ[1−Δ(3Δ−1)/(2P)+…]。有限维Hermitian perturbation+Weyl bound遂给全部root multiset趋向diag a_kl，误差O(P^−Δ)。这要求Δ、Q固定；不支持Q随P增长或有限G的uniform高能结论，原文没有作该外推。

#### 8. Galois障碍不是空话，但也不是不可积性

独立对文中f₅、f₆做finite-field factorization，并对每个返回factor用Frobenius irreducibility判据重新核验：x^(p^degree)−x余零，且对degree的每个prime divisor q，gcd(x^(p^(degree/q))−x,factor)=1。结果：f₅ mod17=(2,3)、mod23=(5)；f₆ mod13=(1,2,3)、mod17=(1,5)、mod31=(6)，均square-free、leading coefficient未消失。

f₅ irreducible degree5作用primitive，(2,3)元素三次方transposition。f₆的6-cycle给transitivity，5-cycle排除blocks of size2或3：其对block set的作用必须trivial，继而在每个size2/3 block内不可能有order5。两者皆primitive含transposition。共轭transpositions生成图的连通分量构成block system；primitive迫使整图连通，边transpositions生成S_n。因此S5、S6论证成立。还验证f₅确为(6,3)Racah压缩的非零charpoly，不是任取无关多项式证明不可根式。此结论只排除普遍根式，不推出nonintegrability。

#### 9. 确认的实现缺陷及已验证修复

原文件 main/pair_gram.py:312：

shifted_coefficients_descending=[str(v) for v in Poly(physical,x).all_coeffs()]

其中physical=x^(d−r)det(xI−M₊)。这会分配d+1项，而真正非零谱多项式只需r+1项。统一入口 fock_spectrum.py:210–213 调用它后仅取 nonzero_coefficients_descending，故多余展开仍已发生。

例如N4,P10000,Q0有d=2,085,834、r=9,994、κ=2,075,840。即使前面的overlap/charpoly已完成，该行仍额外生成两百多万零条目。固定N,Q时列表长度O(P^(N−2))，不是正谱degree O(P^(N−3))。这不否定矩阵降一阶，但否定“始终不展开”及相关绝对内存表述。N3十亿P示例走Racah后端，不受此问题影响。

独立修复：删除此dense字段，改存{zero_root_multiplicity:κ, nonzero_coefficients_descending:[…]}。矩阵、状态、Gram、原显示表达式保持原样。附 compact_output.patch 和 pair_gram_compact_copy.py；绝未改原始文件。check_compact_patch.py 对Δ=3/2,2,5/4,7/3及N3/4/5四块比较：除时间/替换字段外所有字段完全相同；通过补κ个零可重构原dense列表。含真实κ>0的N3,P12,Q0案例。使用者若确需dense输出，应显式opt-in并警告长度。

#### 10. 实际独立测试清单

independent_check.py 从头实现 labeled polynomial Casimir

C_ij=−(z_i−z_j)²∂i∂j+Δ(z_i−z_j)(∂i−∂j)+Δ(Δ−1)，

用其有限谱Lagrange projectors装配Σpair w_ij，直接作用在distinct simultaneous orbit sums上；未导入原多体Hamiltonian/projector实现，只共享已声明two-body eigenvalues作为被审输入。随后比较完整level charpoly与主入口全部primary/descendant聚合结果：

- Δ=101/100,N3,(2,2)，dim8；
- Δ=3/2,N3,(3,2)，dim12；
- Δ=7/3,N3,(4,1)，dim9；
- Δ=2,N3,(5,2)，dim24；
- Δ=3/2,N4,(2,2)，dim9；
- Δ=5/4,N4,(3,1)，dim7；
- Δ=7/3,N5,(2,1)，dim4。

七块全部exact charpoly相等。包含接近Δ下界、表面singular质量3/2、非整数Δ、非手征和不同粒子数。

additional_checks.py又验证5个三粒子块的M E=E H、physical Gram Sylvester正定、H†G=GH，并在exact minimal polynomial模下验证projector幂等、(H−a)Π=0及G-selfadjoint。另有上述2525rank计数、五个Galois modular证书和聚合反例测试。结果保存 independent_results.json、additional_results.json；修复回归为compact_patch_results.json。

未执行的事项不包装成完成：未做所有高P/Q矩阵、未重跑原Einstein径向积分、未证明本阶物理branch闭合、未以本侧测试替代完整logarithmic核定理。若上述上游接口出错，本报告应保留为谱引擎本身的条件性正确性结论。


## 附录 E 稳定粒子数与 leading slopes

### 独立审查：stable-N pencil、leading slopes、小次数族与验证范围

#### 裁决先行

在固定 two-body operator、固定量子处方以及相应 Fock closure **作为输入**的意义下，第二轮 §9 的 affine-N 定理、centered creation primary basis、全部 leading slopes 与小次数表成立。本轮没有找到改变这些结果的数学反例。这里不能反过来以 §9 的漂亮数学结构证明 §2 的引力闭合或原始两体动力学正确。

发现一处应补明的归一化歧义，以及若干容易被过度解读的边界。没有修改任何原报告或程序。

- §9.2 “等价于 unnormalized creation-power basis 除以 √N!” 若沿用正文的标准 normalized oscillator b†，还需要单模范数因子 ∏hα^(nα/2)。若其 creation-power 已指多项式归一化 creation，则没有错误，但必须说明。它是 N 无关对角变换，不改变 affine 定理，实际程序的 averaged tensor 约定与 Gram 一致。
- N≥P+Q 是统一充分条件，不能将得到的多项式简单延拓到 N<P+Q 当作物理谱；此时基底出现有限粒子数关系，Gram 退化/不存在。原报告正确保留此限制。
- 任何 number/bidegree preserving two-body operator 都有 full-space affine 结构，但 **primary restriction** 额外需要 global lowering intertwining。原引力算子声称具备它；不能将最后一句一般化理解为任意 bidegree preserving 算子自动作用于 primary 子空间。
- 全部 leading slopes 是固定 (P,Q) 下形式 O(G) 系数的 N→∞ 极限，不是有限 G 的大 N 引力结论。原报告正确说明这一点；不应在摘要传播中丢失。
- §12 的“24 个 stable exact checks”是多类有限检验之和，不是 24 次独立原约束计算。它依赖同一个 pair input，不能为该 input 提供新的动力学证明。

#### 1. 从 quartic lift 补齐占据数证明

令 vα=z^p w^q，hα=⟨vα,vα⟩=p!q!/((Δ)p(Δ)q)，v0=1。令标准 b†α 创造 vα/√hα，满足标准 Bose commutator。对激发多重集 s，r=Σα≠0 nα，n0=N−r，准确的映射是

 e_s = (∏α≠0 hα^(nα/2))/√N! · (b†0)^(N−r)∏α≠0(b†α)^nα |0⟩.

这是同一 N-particle tensor product 的 symmetrizer image，等于 distinct-label monomial orbit 的平均而不是 orbit sum。由标准 Fock norm 立即得

 Γ_s(N)=(N−r)!∏α≠0 nα!hα^nα/N!
       =∏α nα!hα^nα/[N(N−1)…(N−r+1)].

没有隐藏的 N 依赖模式归一化。

写 labelled two-body operator 的 ordered matrix kernel K。二次量子化为 W=(1/2)Σ K^{γη}_{αβ} B†γ B†η Bβ Bα，其中 B 对 polynomial-normalized modes 的对偶规范定义；改用 normalized b 仅添 N-independent √h 因子。作用于未归一化 creation powers 时，annihilation 只给 nαnβ 或 nα(nα−1)，creation 本身不产生额外 occupation factor。因此 unordered occupied pairs 给 nαnβ (α≠β) 与 binomial(nα,2)。这也可直接从 averaged symmetrizer 得到。

唯一依赖 N 的 n0=N−r。因此：

1. 两条 excited input legs：N-independent。
2. 一条 ground 一条 excited：线性 (N−r)nα。
3. 两条 ground：双次数非负且守恒，唯一输出仍为 ground–ground，故只贡献 binomial(N−r,2)g00 在对角。

减去 binomial(N,2)g00 后第三项成为 [−rN+r(r+1)/2]g00，全部矩阵元 affine。此证明不需要波函数展开，不需要从几个 N 猜多项式，也不需要 spectral nondegeneracy。

N≥D=P+Q 保证所有 excited multisets r≤D 都存在，并且 Γ_s>0。D=0 取 N≥1；N=0 真空另行定义，不能使用此公式的 falling-factorial分母。

#### 2. lowering 不带额外 ground occupation，以及 primary 完备性

对 averaged tensor e_s，Σ_i∂_{z_i} 将每一种 α 改成 α−(1,0)，系数 nα pα。若恰改成 ground，轨道平均抵消任何看似出现的 N−r+1。因此两 lowering 矩阵与 N 无关。

如果 W_N intertwines lowering，则扣去所有双次数块共有的 binomial(N,2)g00 后，对无限多个整数 N 的恒等式逐项比较可得 A、B 分别 intertwine lowering。于是固定 common kernel 是 A、B 的共同不变子空间。在任一固定列基 C 上，由取独立行构造固定左逆 C_L，restriction A_p=C_LAC、B_p=C_LBC 不引入 N 分母；其 invariance 必须检验 AC=CA_p、BC=CB_p，而不是仅做压缩。本包确实检验了对应 full*basis=basis*h。

引入 formal variables a_pq（a00=1），这是对每个 stable bidegree 的 vector-space identification，并非固定 N 的波函数乘法。D_L a_pq=p a_(p−1,q)，D_R a_pq=q a_(p,q−1)。令 u=a10、v=a01。报告的 c_pq 恰是 exp(−uD_L−vD_R)a_pq 的有限 binomial translation。

D_Lu=D_Rv=1，D_Lv=D_Ru=0，且直接计算 D_Lc=D_Rc=0。inverse translation a_pq=Σ binomial(p,i)binomial(q,j)u^(p−i)v^(q−j)c_ij（c00=1,c10=c01=0）证明这是自由多项式坐标变换。因此 joint kernel 恰为 C[c_pq:p+q≥2]，不是只找到若干 independent states。对每个固定双次数，monomials in c 给完备 primary 基。变换矩阵整数、N-independent、Δ-independent，所以特殊 Δ>1 不会造成 primary 基退化。

#### 3. leading slope 权重：省略的 endpoint 计算

单手征 pair degree T 的 C eigenvalue 为 C_k=(Δ+k)(Δ+k−1)，k=0,…,T。取

 v_(T,k)=(L_-^(1)+L_-^(2))^(T−k)(z1−z2)^k.

它在 z1^0 z2^T 的 endpoint coefficient 是 (−1)^k(Δ+k)_(T−k)。其 norm 为

 k!(2Δ+k−1)_k/(Δ)_k² × (T−k)!(2Δ+2k)_(T−k).

endpoint monomial norm 为 T!/(Δ)_T。因此该 monomial 的 orthogonal projector diagonal 为

 α_(T,k)=binomial(T,k)(Δ)_T/[(2Δ+k−1)_k(2Δ+2k)_(T−k)].

这补齐原报告 “follows immediately” 中真正用到的三个归一化量。所有分母在 Δ>1 正，Σ_k α=1。左右 tensor product 后，交换两粒子的 parity 是 (−1)^(k+l)。对任意非零 mode (p,q)，两个 endpoint monomials 1⊗z^pw^q 与 z^pw^q⊗1 正交，故 Bose-even projection 的总权重恰为 1/2；平均 ground–excited unordered pair 的 diagonal 是 2Σ_even α_pk α_ql γ_kl。减去 baseline g00 即报告 σ_pq。

ground–excited source 只能保持一条 excited particle 或分裂成两条，因此 A 按 excited particle 数递增排序为 triangular；其 diagonal 是 Σα∈s σα。两条 excited 合并只出现在 B，不在 A。σ10=σ01=0 来自相应 pair channel 只能是 pair ground representation 的 descendant，而非经验消去。

#### 4. 为什么去掉两个 descendant modes 仍保留谱重数

不能只以 primary dimension 的 Hilbert series 推导谱！需要 intertwining exact complex，原附件有这一正确机制。这里补齐 exactness：在自由坐标 u,v,c 中，D_L=∂u、D_R=∂v。对 homogeneous component，

0→P_(P,Q)→V_(P,Q)→V_(P−1,Q)⊕V_(P,Q−1)→V_(P−1,Q−1)→0

由多项式积分的 Poincare lemma 精确：第二个箭头为 (∂u,∂v)，第三个为 (∂v,−∂u)。最后一个箭头满射，因为对 u 积分即可；closed polynomial one-form 以先积分 f 再补 v-only项构造 potential。所有 c 系数都是旁观者。

A intertwines 此 complex，故有限维 invariant subspace 的 characteristic polynomials 可乘，无须 A diagonalizable。等价地 trace exp(tA) 在 short exact sequences 中可加。于是 full triangular occupation character乘(1−x)(1−y)，正好去掉两种零 slope modes (10),(01)。得到报告(9.11)的所有 roots及algebraic multiplicities。

对 H'_N/N=A+B/N，特征多项式系数连续，roots unordered multiset 收敛至 A 的 roots。原文谨慎地不宣称统一 O(1) remainder 是正确的。一般 affine families 的 Jordan degeneracy 可以产生 Puiseux 次阶，不能由矩阵 affine 推出逐本征值 affine。

#### 5. 小次数表的完整推导

令 X_kl=Σ_(i<j)Π_kl^(ij)。所有允许 pair channels满足 k+l even 且 k≤P,l≤Q。global primary 上

 Σ(C_k−C_0)X_kl=P(NΔ+P−1)I

及右手征对应式。它由 ΣC_ij=C_total+(N−2)ΣC_i减去 ground degree值得到。

- (1,1)：仅00,11。右式给2ΔX11=NΔ，故X11=N/2。
- (2,0)：仅00,20。2(2Δ+1)X20=2(NΔ+1)，故X20=(NΔ+1)/(2Δ+1)。
- (3,0)：仍仅00,20（30被Bose parity排除）。X20=3(NΔ+2)/[2(2Δ+1)]。
- (2,1)：仅00,11,20。右式先得X11=N/2；左式2ΔX11+2(2Δ+1)X20=2(NΔ+1)，故X20=(NΔ+2)/[2(2Δ+1)]。

总 Hamiltonian 为 binomial(N,2)g00+X11(γ11−g00)+X20(γ20−g00)。这逐项得到表中公式，不需要任何小 N 拟合。唯一 primary 的存在/维数：N≥2时degree2 centered invariants每双次数一维；degree3需要N≥3，N=2奇次 centered invariant消失。因此表的阈值准确，而N≥P+Q的全空间stable阈值并非每个孤立小块最小阈值。

#### 6. 新执行的独立 attack，而非只跑旧测试

代码 independent_check.py 自己从 differential Casimir

 C_T=(T+Δ)(T+Δ−1)I−L_-L_+

构造全部 Lagrange spectral projectors Π_k=∏_(j≠k)(C−C_j)/(C_k−C_j)，没有调用原 chiral_pair_vectors、pair_action、orbit_hamiltonian。使用同一明确 γ_kl 作为待接受的 dynamical input，生成 labelled pair operator，然后对 averaged orbit 的每一个标记单项式、每一对粒子显式作用，并和 stable_hamiltonian 比较。

已实际通过以下 exact comparisons，包括 Gram self-adjointness：

- Δ=1001/1000,N=4,(P,Q)=(2,2)，9维；靠近物理区间边界攻击。
- Δ=3/2,N=4,(2,2)，9维；表面可去奇点质量。
- Δ=7/3,N=5,(2,2)，9维；非整数质量。
- Δ=2,N=5,(3,2)，16维。
- Δ=2,N=3,(3,0)，3维；stable边缘。
- Δ=2,N=2,(1,1)，2维。

另以Δ=1001/1000,3/2,7/3，T=0,…,6的直接 Casimir projectors精确检验84个 endpoint α_(T,k)公式。结果保存在 independent_results.json。

限制：basis multiset enumeration 使用了原 excited_basis 辅助函数，但未用其 Hamiltonian coefficients；本检查不独立重算 Einstein radial response，也不检验 Fock closure。六个 finite blocks不是全指标证明，全指标由上述 occupation argument完成。

#### 7. (2,2), Δ=2 的额外精确结论与反误用测试

直接对报告的3×3矩阵重算 charpoly，与(9.9)一致。两 affine coefficients的commutator determinant（使用未除35的矩阵）为 −123638208528384，因此满rank。不存在共同本征基，不能把每条完整能移写成Nσ+β。

其 t-cubic discriminant为

736362496 (N−2) [21622500N^5+96434236N^4+143979925N^3+94075920N²+28280549N+3260774].

因此整个物理stable范围N≥4，三条roots严格不同；无需担心此例的谱投影碰撞。其slopes为−104/5,−128/35,−976/35。

但是 N=2 的formal stable continuation charpoly含 (5g+416)(7g+312)^2/245，而实际N=2,(2,2)只有一个primary，即γ22=−416/5；多出来的二重−312/7不是physical states。N=3 formal continuation同样多一个root，故“方程为N多项式”不授权低于阈值使用。这是一个具体 negative control，不是原报告的错误（原报告已排除）。

#### 8. §§12–13 的证据强度与没有被证明的事项

§12 已认真区分新raw integrations与cached rerun，并明确39 pair entries/18 blocks/40 circular1→3checks不替代all-indexproof。这一界限必须保留。Stable-N自带24 checks组合了centeredbasis、固定N相似、Gram、slopes及低次数恒等式；多个计算共享two-body kernel，不能称为24个独立物理验证。

§13 的负面结论均保持了适当范围：非对易U0/U2与scalar common commutant排除系数独立的共同对角化，不排除special Einstein coupling下的charges；[D1,D2]=D2的非零principal symbol不能被zeroth-order项抵消，但不排除更广的Dunkl构造；固定rational f(C)在无限多互异C_k上为零而仅k0,2非零确实不可能，有限截断interpolation不等于全tower固定阶算子。

本审查没有发现这些范围声明自身的逻辑错误。真正的上游风险仍是 §2的完整Ward/resonance closure及two-body operator identity；这些需要由专门物理审查完成，不能用此处归纳的精确谱算法遮蔽。


## 附录 F 核完备性的交叉复核

### 对 §5 kernel 证明的第二视角交叉攻击

这是 stable-N 审查者对 kernel 专项的独立交叉检查，不替代 kernel 主报告。

#### 结果

没有发现 Hom/Bargmann → flag maps → normal symbols → 全局自由模链条的实质漏洞。尤其“height-one只说明一般位置，可能漏collision intersections”的攻击在这里不成立：所有候选系数从一开始位于 R[V^{-1}]，分母只能有 Vandermonde 的线性因子；每一个线性因子的valuation已被排除，UFD中不可能再剩一个仅支撑在codimension≥2的有理分母。

#### 1. Hom 转换必须实际写出的矩阵

取右primary空间的实系数基，物理Gram为实对称正定G。F(z,w)=Σ C_ab f_a(z)f_b(w)对应 A=C G。因此右projector对F作用后系数为 C P^T，而自伴性 P^T G=G P 给出 A_new=C P^TG=A P。逆构造是 C=A G^{-1}，所以 reproducing kernel 必须用 G^{-1}。

复系数情形的同构使用由实系数多项式结构诱导的复双线性extension B(v,h)=v^TGh；若机械地用Hermitian Riesz map，则该map的一个变量是反线性的，不能不加解释地称complex-linear tensor/Hom同构。这个实结构在本问题天然存在，Casimir、S_N作用、Gram都是实的，故是表述补足而非反例。

此链既不要求左侧Gram，也不能任意换成Euclidean pairing。左侧先除掉V^4没有影响右侧projector；对每个pair约去其δ^4以后，其余Vandermonde因子与δ互素，故可逐个取消。

#### 2. 局部 frame → 全局的精确理由

设M_δ=R_(δ)δ∂δ⊕ΣR_(δ)∂t。每个θ列都在M_δ中；detB=cV在R_(δ)的valuation为1。取M_δ标准frame T=diag(δ,1,…,1)，则B=T U，U的entries均在R_(δ)，detU是unit。因此U可逆，θ是完整M_δ的basis，不只是一个同rank子模。

Sym^Q保持此basis等价性。normal degree r的coefficient divisible δ^r恰是Sym^Q M_δ的条件。故θ-products展开的唯一rational coefficients在每一个δ-prime正则；因其原本只能有V分母，全部coefficients都属于R。Bose invariance随后通过θ的逐个invariance与展开唯一性作用到coefficients，不需要额外假设取invariants与任意非平坦base-change交换。

#### 3. 新的独立有限维攻击

cross_frame.py 不用原 logarithmic generators，也不生成其声称的basis，而在完整ambient homogeneous symbol空间逐列施加每一个collision hyperplane的normal coefficient divisibility线性约束，直接求共同核rank。它检验全部labelled symbols，尚未取Bose invariants，所以直接针对局部到全局frame这一步。

已计算的参数及共同核维数：
- N=3,p=4,Q=2：ambient15，kernel6；
- N=3,p=4,Q=3：ambient20，kernel3；
- N=4,p=4,Q=2：ambient90，kernel11；
- N=4,p=3,Q=3：ambient100，kernel1；
- N=4,p=2,Q=3：ambient60，kernel0。

均与自由frame预言 Σ_(|ν|=Q) dim R_(p−Σaν_a) 相等；包含多个超平面交点以及低于最低允许次数的零空间测试。结果见 cross_frame_results.json。此处的p是除去V^4后的left degree，不是原P。

与kernel主审查者独立获得的flag-map维数结果一致。没有新的高严重度问题需要合并；建议把上面的A=CG约定和局部U可逆的一行补证保留在独立审查报告，而不要修改用户原件。


## 附录 G 协变响应与余项的交叉复核

### Cross-check: response bridge, bounded representatives, and the stated remainder

Scope: first report §§8.4, 11–14; second report §2. Original files unchanged. This is a focused supplement, not a replacement for the physical-closure 专项审查's audit.

#### 1. What the paired graph actually proves

The paired graph a₊=−κD, a₋=−κD* is a genuine symplectic embedding to the stated order: the two oscillator symplectic potentials cancel, and the induced Hamiltonian is Hφ+κ²(H₄con−2Σm|D|²). Its leading gravity equation holds because F=(m+energy derivation)D; a resonant Fourier component does not require division by zero. This is more than a numerical equality.

It proves a bounded solution for the boundary oscillator coordinates for finite free external modes. By itself it does NOT yet display all components of the spacetime metric: lapse and shift still have to be reconstructed from preservation of the proper gauge section. The report's companion text explicitly says they are reconstructed by those equations, but does not write their inverse or an endpoint functional B.

#### 2. A useful repair: establish only the reciprocity that is needed

One need not demand a globally defined off-shell reciprocal inverse merely to prove the stated resonant four-linear identity. Let k₁,k₂ be the bounded canonical reconstructions of two polarized, conserved free scalar sources, with E^(1)k_i=T_i/2. Suppose both obey the same renormalized Hessian variational domain and fixed Brown–Henneaux boundary metric. The Hessian Green identity gives

⟨k₁,E k₂⟩−⟨E k₁,k₂⟩ = spatial flux + temporal endpoint.

The renormalized spatial flux vanishes on this common domain. For finite quasiperiodic fields, dividing the temporal endpoint by averaging time T and taking T→∞ gives zero. Thus

⟨T₁,k₂⟩_res = ⟨k₁,T₂⟩_res.

This directly proves reciprocity on the source subspace used in the calculation. It is enough for stationary substitution and polarization of the quartic action. It does not assert invertibility on all metric perturbations, nor remove physical homogeneous boundary gravitons.

For bounded homogeneous differences k→k+L_ζg, conservation reduces the change to 2∇(Tζ). Fast falloff d>1 kills the radial term; bounded quasiperiodic time endpoints vanish in the same average. Consequently the source-space pairing is independent of these representatives, including bounded large transformations, without mislabeling them proper gauge.

This is a clean route to the needed bridge, provided the existence/regularity conditions below have actually been supplied.

#### 3. Does boundedness follow, or is it an assumption?

At a finite regulator, with a regular autonomous local canonical/gauge-fixed chart, it follows by an ordinary finite-order argument:

1. Free external histories are finite sums of bounded exponentials.
2. Spatial constraints and gauge-preservation multipliers are solved using time-independent invertible linear operators on the specified proper complement. Their coefficients therefore retain those finite frequencies; there is no integration ∫dt of a resonant source.
3. The boundary oscillator particular solution is the explicit polynomial D, hence bounded even at its canceled resonance.
4. A time-independent finite canonical generating function and the induced endpoint functional, evaluated on such histories, are bounded at each finite order.
5. Canonical evolution plus all constraints in a valid gauge-fixed chart is equivalent to the original Euler–Lagrange equations; then E k=T/2 follows, rather than being another ansatz.

For the continuum statement, each inverse must map the actual smooth fast-falloff sources into the stated domain; renormalized B must be finite and autonomous there. The oscillator formula alone does not prove these facts. The report explicitly puts bounded B into the hypothesis. It also explicitly excludes raw secular representatives. Thus the honest status is a conditional bridge with an explicit leading oscillator construction, not an unconditional proof for every previously written response kernel.

It would be unfair to demand a global Hilbert-space theorem if the claim is finite external formal coefficients. But it is equally unfair to advertise existence of every continuum bounded endpoint as already proved merely because the chart 'comes from the same action.'

A source-dependent homogeneous choice also need not itself define a reciprocal off-shell inverse. The averaged Green-identity argument above avoids that stronger and unnecessary claim.

#### 4. A real logical gap to check: O(G²) remainder

The second report proves that the O(κ²)=O(G) effective operator preserves the zero-independent-graviton scalar branch. This suffices to determine its leading coefficient. It does not, without an additional argument, prove that every corresponding exact/formal energy branch has remainder O(κ⁴)=O(G²).

Within a free degenerate block, write H_eff=E₀I+κ²W₂+κ³W₃+… . If a scalar state and another state share an eigenvalue λ of W₂, an off-diagonal κ³ coupling inside that λ-eigenspace can produce a κ³ splitting. The elementary countermodel is

H_eff=(E₀+λκ²)I+κ³ [[0,1],[1,0]].

With U=diag(1,−1), U H(κ) U=H(−κ). Nevertheless its two energies are E₀+λκ²±κ³. Thus κ-sign/graviton parity symmetry of the spectrum as a set does not prove evenness of each degenerate branch.

This is NOT a counterexample to actual AdS₃ Einstein–scalar dynamics. It demonstrates a missing inference. The first report's explicit third-order resonant toy is already a warning that the leading paired graph cannot settle this issue.

##### A conditional Ward-based repair

Suppose the complete quantum normal form and transported charge satisfy the next-order Ward identity, not only its quartic classical leading-symbol truncation. Schematically,

(ad_H₀−s) Q₂ + [W₂,Q₀]+[W₃,Q₋₁]=0,

where Q₋₁ is proportional to a boundary oscillator. After free-energy projection, and then projection on the same W₂-eigenvalue λ, the middle term vanishes. If W₂ fully commutes with the leading oscillators (including its quantum lower-degree terms), then the λ-projection is compatible with their ladder action and

[P_λ W₃ P_λ,a]=[P_λ W₃ P_λ,a†]=0.

Hence this compressed W₃ is independent of the gravity oscillator factor. But κ³ terms are odd under graviton parity, so its compression is zero. This rules out the κ³ splitting and restores an O(κ⁴) remainder.

The qualifications matter: the argument needs the next-order QUANTUM charge identity, compatibility of the λ-projection with the leading oscillators, and the full W₂ lower-degree treatment. The report establishes its needed O(G) classical degree-four Ward identity and correctly declines a general quantum Virasoro proof; it cannot silently use the stronger result for the remainder.

For a λ isolated from all other parity sectors, ordinary perturbation theory plus odd parity can also kill the diagonal κ³ term. That does not establish the claim uniformly over all N,Δ,J and degeneracies.

##### Conservative conclusion

Keep the computed order-G coefficient. Unless the additional Ward argument is proved in the stipulated quantization, state the result as E=E₀+Gλ+o(G), or O(G^(3/2)) at a finite analytic-κ regulator; alternatively label O(G²) as conditional on absence of the next odd-order resonant splitting. This is a claim-strength issue, not evidence that λ is wrong.

#### 5. General transfer theorem itself

The rooted-tree transfer in §11 is valid as a formal theorem when the filtration is complete and I_y raises degree, the specified inverse acts on every generated source, and the kernel equations are retained. The report explicitly lists those requirements. It is not a way to prove their realization in the actual model: treating the general theorem as such would be circular.

Likewise, the projected resolvent identity in §12 is exact only on its invertibility/domain locus and uses a full degenerate block. The report treats this correctly. Its all-order leading-Weyl-symbol statement is not an all-order quantum energy theorem, also correctly stated. These valid abstract arguments do not fill the continuum endpoint or next-order quantum Ward debts identified above.
