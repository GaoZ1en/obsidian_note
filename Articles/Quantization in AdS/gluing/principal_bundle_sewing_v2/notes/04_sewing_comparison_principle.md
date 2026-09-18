# 04｜有内容的通用比较原则：先装配 fields，再验收 algebras

## 4.1 独立的 source，不是目标的逆像

对有限分片，区域输入给出各自的 (2.5)。cut source 的 classical configurations 是
\[
 \mathcal C_\Gamma=\{(\phi_i,h_{ji},q_i,\lambda_i):
 \text{每片属于自身源关系；满足 (1.4)、(1.6)、(2.6)、joint jets}\}.
\tag{4.1}
\]
保留完整 fields、variations 与 gauge arrows，不在 (4.1) 上先 quotient。局部 $g_i$ 满足 $h'_{ji}=g_jh_{ji}g_i^{-1}$、connection/source covariance 后，先装配实际 bundle map。写到固定 output bundle 上时，用与真外 frames 相容的 presentation identification $\kappa:P_h\to P$，令
$$g_{\rm as}=\kappa'\operatorname{Desc}(g_i)\kappa^{-1}.$$
cut arrow 标为 proper 当且仅当 $g_{\rm as}\in\mathcal G_{\rm prop}$，不能只检查局部可缩或外端取值。presentation 改变须同时运输该标记；对固定带标签 target，nonproper 改变是物理作用，不能当无害 choice 遗忘。U(1) based identity component 的精确判据是总 winding 为零；原全部 based-components 模型不改政策。构造、必要充分性及显式同伦见[修订证明 R3](../../audit_repair_2026-09-18/repair_proofs.md)。

消去 source/cut history 时保存完整作用关系而不是选定解；不通过 pseudoinverse 删除零模，也不删除 proper 的作用信息。

## 4.2 几何—经典装配定理 G（修订）

**前提。** 有限普通 collar-compatible 几何与实际 principal bundles/cocycle 给定，呈现预先固定的 output sector。fields/variations 各自在声明域光滑到 face；connection、source、typed transmission 和共同 corner atlas 满足所列匹配。非特征 on-shell 高阶 jets 可由共同 PDE 与最低阶 matching 递推时，不另作输入；null 保留未由其余数据决定的 seeds。真实保留项与所移除 closing 由 action 标签固定，arrows 使用 §4.1 的实际 global proper 标记。

**关系结论。** matched 区域源关系与独立未切分源关系在实际 bundle presentations、arrows 和 stabilizers 层通过 restriction/assembly 比较。固定同一 presentation 后，场的限制与装配互逆；改变 presentation 则使用明确的 bundle map，不宣称所有 frame choices 的 raw fields 与固定 target 一一对应。两边可以为空或多值；本关系定理不假设或证明一般 IBVP 的非空、唯一、连续性。具体模型另由自身 source constructor 完成这些义务，不把未证明的“well posed”写入输入后宣称完成。

**预辛结论。** 对已作实际 action/corner transport 计算的模型，在完整未约化 matched space 上有
\[
 J^*\Omega_{\rm out}=\Omega_{\rm sew}.
\tag{4.2}
\]
YM/Maxwell 的证明是将 (2.7) 代入 canonical potential 并用 Gauss 积分分部；U(1) CS 是 (7.3a) 的实际差式。具体未约化 constructors、保留的 gauge fibers 与 seam signs 见[修订证明 R4](../../audit_repair_2026-09-18/repair_proofs.md)。一般 action 未完成相应运输计算时，本式仍是待证事项而非新增成功假设。$J$、$dJ$ 的 onto 及 Hamiltonian tangent lifts 必须另证；仅有 pullback 式不保证它们，也不假定商光滑。对 Maxwell 的 real chain，R4.3 在实际 smooth collar representatives 和固定 cutoffs 上构造连续线性 $J$，$\lambda=0$ restriction 给显式线性 section；不从抽象无限 jets 的可延拓性推出 smooth section。对已经提升的合法 $X_F$，(3.1) 直接给相同括号。

**关系部分的证明。** 实际 $h$ 识别 collars 上的 fields；cocycle 给三重一致性，typed matching/PDE jet recursion 给所需光滑性。local EOM 与 variational balance 消去 seam sources。反向限制独立 global 解，给每片自身的 actual sources，而非旧 homogeneous B 的解。在固定 bundle presentation 内两过程互逆；换 presentation 时保留 §4.1 的 $\kappa$ 比较。普通 bundle-map descent 先构造箭头；§4.1 的成员检查保证其属于原 proper 群。反向限制任意 global proper map，代回装配公式恢复原 map，stabilizers 同理。全程不作 coarse quotient。证毕。

该定理不是裸 $\mathcal A_{B_1}\otimes\mathcal A_{B_2}$ 的定理。它将几何关系比较、模型 source 存在性、预辛计算与 algebra presentation 分开；任何未完成层保留为开放问题。

## 4.3 observable presentation 的额外验收

在未切分理论中独立给出 target generators \(\mathsf g\)、允许 products 和 relations \(\mathsf R\)。在区域一侧用其已声明的测试函数、开放网络腿、transition/anchor 和源数据建立 \(\mathcal E_\Gamma\)。新增跨 seam label 的规则必须提前规定，例如：

- 一条路径按实际几何切成有限段，插入 \(h\)，用 (1.5) 收缩；
- 一份平滑测试密度由区域测试密度加显式 jet-matching 条件装配；
- 一个多点 distribution 必须在**预先选择**的 joint test/distribution space 中给出，不借一句 partition of unity 冒充有限 tensor decomposition。

先由每个 actual cut word 的几何/场评价定义到独立 target 的 map，验证 source relations 全部评价为零。对每个 \(g\in\mathsf g\) 再写 actual lift \(\widetilde g\)，并检查 \(\Theta(\widetilde g)=g\)，由此证明满射。injectivity 另由完整零关系与 normal-form 独立性等证明。只给生成元名字或“满足 Ward identity”不够；更不能把 image 改名为 target。

经典若直接使用 matching locus 上 Hamiltonian functions，则 restriction 的 kernel 是消失理想。这是有效描述，但除非算出其生成关系，不把它说成已计算的 presentation kernel。第 05/06/07 篇是这里真正算出 kernel 的模型。

## 4.4 一个量子比较准则 Q

给定明确的 cut generator algebra 和独立 target。若：actual cut-word evaluation 保持全部 source relations，从而定义到 target 的同态；每个 target generator 有实际 lift；任意 cut word 能归约到已写出的 normal form；这些 normal forms 的 target images 线性独立；adjoint 和公共域保持；则 \(\Theta\) 诱导 onto faithful \(*\)-isomorphism。若含 dynamics，还需检验 generating evolution/response 的 intertwining。

证明是三步有限代数论证：relations 使 map 良定义；target generators 的 lifts 给满射；normal-form 独立性给零 kernel。该准则不是“量子化与约化总可交换”的定理。CS integrability 或 anomaly 都可能改变 relations；一般 interacting theory 可能根本还没有合法 cut words。

## 4.5 finite regrouping 与重新 opening

固定同一装配后的 geometry、bundle、所有真实 boundary/defect couplings、observable 和量子处方。每个 intermediate 从自身 action/domain 重新定义源关系。在上述几何关系定理适用时，两种合法 binary paths 都通过 restriction/assembly 比较到同一最终关系；不需要单值性。要比较因果响应映射，还需具体模型已经证明其 source 存在与相应唯一性，并只对完整相容 tuple 使用该结果。一般源构造未完成时，不把“再次 opening 成功”当输入掩盖缺口。

对于 \(\Theta_{(12)3}\) 和 \(\Theta_{1(23)}\)，比较 map 可写
\[
 \mathfrak a=\Theta_{1(23)}^{-1}\Theta_{(12)3}.
\tag{4.3}
\]
(4.3) 是已构造 maps 的简写，不是生成它们的方法。为了不是 tautology，必须在区域上独立给出其作用：YM2 是三个 holonomies 的乘积；Maxwell 是 joint tests 与 transitions 的重分组；CS 是 normalized F-move。四个对象的五种括号化之间还要满足 pentagon；quantum phase/lift 见第 08 篇。

## 4.6 three causal types 不共享一个输入空间

Timelike：开放边界极化，匹配 connection、conormal 和规范/角点数据。

Spacelike：匹配完整 Cauchy data 与约束，使用 evolution；不是把前后两套初值作为同时独立的张量因子。

Null：必须给足够的 characteristic surfaces、radiation、corner flux seeds 和 transport constraints。例如在 \(ds^2=-2du\,dv+dy^2+dz^2\)、\(u=0,A_v=0\) 上，纯 YM 满足
\[
 \partial_vF_{uv}+D^A\partial_vA_A=0.
\tag{4.4}
\]
\(A_A(v)\) 不决定初始 \(F_{uv}(v_0)\)；但指定二者后它们又不是任意独立的 histories。本文对一般 null 网络给出此输入约束与 failure tests，不宣称已从 timelike slab 的证明获得任意 nonlinear null sewing。

## 4.7 为什么不要求无条件 injective isotony

一个带真实 reflecting boundary 的区域不是仅仅全局 theory 的 open subregion；而含 global/topological charges 的 gauge observable 也可能在不同嵌入下发生额外 relations。本文因此不预设所有几何包含都给 injective algebra embeddings。[R4–R6] 要研究局域 net 时另固定合适区域类和 boundary-free inclusion prescription，不能与当前 boundary-changing composition 混同。
