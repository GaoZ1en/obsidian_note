# 04｜有内容的通用比较原则：先装配 fields，再验收 algebras

## 4.1 独立的 source，不是目标的逆像

对有限分片，区域输入给出各自的 (2.5)。cut source 的 classical configurations 是
\[
 \mathcal C_\Gamma=\{(\phi_i,h_{ji},q_i,\lambda_i):
 \text{每片属于自身源关系；满足 (1.4)、(1.6)、(2.6)、joint jets}\}.
\tag{4.1}
\]
其箭头为相容的 \(g_i\)，满足 \(h'_{ji}=g_jh_{ji}g_i^{-1}\)；外边界只允许声明的 proper 作用。保留这些箭头是避免丢失 stabilizers 和 gluing identifications 的最低限度，不要求先学习高阶范畴。

当一个 source 或 cut history 被 integrated out 时，必须保存其完整作用结果/关系，而不是只留一个所选解。多值关系允许存在；不通过任意 pseudoinverse 固定本应物理的模式。

## 4.2 几何—经典装配定理 G

**假设。** 分片是有限 collar-compatible 的普通流形装配；实际 principal bundles 与 transition cocycle 给定；所有匹配场及 variations 在声明域内可光滑装配；剩余边界项与 corner 项一致；每个发生的闭合/source 问题均在声明 gauge 意义下良定义。

**结论。** (4.1) modulo compatible proper transformations 与未切分 \(\mathcal S_{B_{\rm out}}\) 的 gauge groupoid 等价。在 regular reduced strata，装配 map \(J\) 满足
\[
 J^*\Omega_{\rm out}=\Omega_{\rm sew}.
\tag{4.2}
\]
因此全部在两侧共同准入的 Hamiltonian functionals 按 pullback 作 Poisson comparison。

**证明。** 用 \(h_{ji}\) 识别 collars 上的 fields；cocycle 保证三重交叠一致，jet 条件保证得到声明的 smooth field。local EOM 与 variational balance 消去 seam-supported source。反向限制一个全局解给每片自己的 q 与 response，而非错误地给旧 homogeneous B 的解。bundle automorphism 的相同 restriction/assembly 给 arrows 的双向对应，因此不只得到 orbit 个数相同。相加 \(\delta S_i\)，内部边界响应及相应 corner primitives 相消，仅剩输出的 cap potential；再取 \(\delta\) 得 (4.2)。最后用 (3.1) 推导括号一致。证毕。

该定理不包含其假设中所有新 PDE 的存在证明。它也不是从 \(\mathcal A_{B_1}\otimes\mathcal A_{B_2}\) 出发的裸代数定理；它给的是 action/source-enriched classical composition。

## 4.3 observable presentation 的额外验收

在未切分理论中独立给出 target generators \(\mathsf g\)、允许 products 和 relations \(\mathsf R\)。在区域一侧用其已声明的测试函数、开放网络腿、transition/anchor 和源数据建立 \(\mathcal E_\Gamma\)。新增跨 seam label 的规则必须提前规定，例如：

- 一条路径按实际几何切成有限段，插入 \(h\)，用 (1.5) 收缩；
- 一份平滑测试密度由区域测试密度加显式 jet-matching 条件装配；
- 一个多点 distribution 必须在**预先选择**的 joint test/distribution space 中给出，不借一句 partition of unity 冒充有限 tensor decomposition。

对每个 \(g\in\mathsf g\)，实际写出 lift \(\widetilde g\in\mathcal E_\Gamma\)。定义 map \(\Theta(\widetilde g)=g\)。surjectivity 从所有 target generators 有 lifts 推出；injectivity 要另外由 normal form、完整 linear null space、Gram radical 或 faithful realization 证明。仅有“满足 Ward identity”不够。

经典若直接使用 matching locus 上 Hamiltonian functions，则 restriction 的 kernel 是消失理想。这是有效描述，但除非算出其生成关系，不把它说成已计算的 presentation kernel。第 05/06/07 篇是这里真正算出 kernel 的模型。

## 4.4 一个量子比较准则 Q

给定明确的 cut generator algebra 和独立 target。若：区域 lifts 满足 target 的全部定义关系；任意 cut word 能归约到已写出的 normal form；这些 normal forms 的 target images 线性独立；adjoint 和公共域保持；则 \(\Theta\) 诱导 onto faithful \(*\)-isomorphism。若含 dynamics，还需检验 generating evolution/response 的 intertwining。

证明是三步有限代数论证：relations 使 map 良定义；target generators 的 lifts 给满射；normal-form 独立性给零 kernel。该准则不是“量子化与约化总可交换”的定理。CS integrability 或 anomaly 都可能改变 relations；一般 interacting theory 可能根本还没有合法 cut words。

## 4.5 finite regrouping 与重新 opening

固定同一装配后的 geometry、bundle、所有真实 boundary/defect couplings、observable 和量子处方。若上述源问题对每个发生的 intermediate 闭合于再次 opening，则任意两种合法 binary paths 的 classical assembly 由同一个 final field 的 restriction 互相比较。对任意相容 external sourced tuple 使用唯一性，而不是把 tuple 拆成独立 blocks。

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
