# AdS₃ Einstein–scalar 层级谱研究：阅读与复现指南

本包交付本轮新增的一般证明、独立审查和可复现证书。研究范围仍是原
minimal Einstein–real-scalar 理论、原边界条件与量子处方，固定
`Delta>1` 的 `O(G)`、`h=0` scalar Fock branch。

**最直接的使用方式：**解压后进入包根，安装 `requirements.txt`，然后运行
`python run_verification.py --output-dir ./verification_out`。
默认执行 **11 项任务**；全部新输出写入指定目录，包内既有证书与保留的
旧 backend 不会被程序改写。无限指标结论的依据是完整证明附录；进程
退出成功只确认其标明范围内的有限或符号证书通过。

## 1. 从包根运行

本轮记录的执行环境使用 Python 3.12。依赖是 `sympy`、`python-flint`、
`numpy`、`scipy` 和 `mpmath`；具体版本由包内 `requirements.txt` 与实际
生成的 `reproduction_summary.json` 记录。

可在独立虚拟环境中安装：

```sh
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

Windows 用户使用虚拟环境对应的 `Scripts` 激活命令，随后 Python 命令
相同。默认复现：

```sh
python run_verification.py --output-dir ./verification_out
```

扩展复现：

```sh
python run_verification.py --full --output-dir ./verification_full
```

`--full` 保持同一组任务，并把 `bose_clusters` 的精确五体 quasimode
目标左激发从 `P=12,24` 扩展为 `P=12,24,48`。它不代表自动检验了所有
无限维定理，也不会重跑前几轮全部研究。

统一 runner 会给子进程设置 `PYTHONDONTWRITEBYTECODE=1` 和
`OPENBLAS_NUM_THREADS=1`。程序通过包根相对路径寻找依赖，不需要本轮
原始机器的绝对路径。请保留 `hierarchy_research/`、`new_research/`、
`prior/` 和 `prior_analytic/` 的交付布局；后三者在本包中保留的是所需
的冻结旧代码。

### 如何判断一次运行的结果

检查输出目录中的 `reproduction_summary.json`：

- `status` 给出整体通过或失败；失败时进程返回非零。
- `certificate_count` 与 `checks` 列出本次实际完成的任务。
- 每项记录退出码、实际耗时、执行源文件、源哈希、证书哈希和验证范围。
- 每个任务都有自己的 `.json`、`.stdout.log` 和 `.stderr.log`。
- runner 在首个失败处停止；先读该项错误日志，再决定重跑哪项。

本指南不预填最终打包复现的总耗时或包哈希；以随包验证记录及读者实际
运行产生的数据为准。若再次使用同一个输出目录，同名新运行结果会被
覆盖；使用另一个 `--output-dir` 即可保留两次结果。

## 2. 先读什么：主要新结果与保留的旧输入

包根提供 `ADS3_Hierarchical_spectrum_research.md` 主报告和
`ADS3_Hierarchical_spectrum_proofs.md` 完整证明附录。各原文、源码和
证书同时保留在 `hierarchy_research/` 中，便于逐条审查。

| 关注问题 | 本轮新增内容 | 保留的旧输入 | 对应证明原文 |
|---|---|---|---|
| 固定 `N,Q`、`P` 任意高激发 | 完整递归 cluster 谱集合、Bose 奇偶规则、Möbius 连通函数演算和有限累积深度 | Einstein pair 核、全局协变、固定端点 Racah 衰减 | `cluster/ALL_FIXED_Q_PARTITION_RECURSION.md`；详细手征构造在 `cluster/PARTITION_ALGEBRA_AND_FIVE_BODY_HVZ.md` |
| cluster 阈值的重数 | 远离至少三簇阈值的孤立谱簇，最终重数恰等于有限 binary source 总维数；手征顶支最终简单 | 新 cluster 上界与紧性；旧 singleton 固定源误差 | `cluster/ISOLATED_CLUSTER_MULTIPLICITIES.md` |
| 双高激发下的 soft 正谱 | 广延严格正谱的指数上界；次指数、次二次阈值的精确比例；全有序谱的质量无关指数率比较 | 完整 logarithmic kernel、Grassmann 主谱律与零原子 | `soft/EXPONENTIAL_SOFT_SPECTRUM.md` |
| `N=3,Q/P→1` | 统一群迹界支持的一段受控移动比例边界层 | 旧三体零原子端点渐近与本轮 soft 方法 | `soft/N3_JOINT_BOUNDARY_LAYER.md` |
| stable-`N` 的普适条件 | 首个正 affine defect 决定低代数生成元数；通用 Gegenbauer 系数；同 support 的精确变形反例 | 已建立的 stable affine coordinates 与创建算子结构 | `universality/UNIVERSALITY_LAYERS_AND_CHIRAL_PHASES.md` |
| 最强主张的独立检查 | 受限 primary 度量、Bose 投影、预算与交换、谱投影秩等接口的独立审查 | 原物理约束消去与量子处方仍是物理前提 | `audit/FINAL_ADVERSARIAL_AUDIT_RECORD.md` 及各专项 audit |

表中原文路径均相对于 `hierarchy_research/`。完整附录包含这些证明，
阅读主报告时无需通过代码猜测一般定理的适用范围。

所有程序中的谱值指残差 `A_N`，除非字段另有说明。物理 `G` 系数为

\[
W_N(P,Q)=b_N(Q)I+A_N(P,Q),\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).
\]

内部簇始终减去其**实际右度数**的 `b_m(q)`，即使内部 `p<q`。
`oriented_comparator` 的六个精确交叉检查专门验证这一接口。不能把旧
backend 为方便交换两侧后使用的 `b_m(min(p,q))` 直接代入新递归。

## 3. 默认 11 个任务究竟验证什么

| 任务名 | 默认计算内容 | 证据性质 |
|---|---|---|
| `independent_flags` | 独立多项式 Gram、微分 Casimir、全部 pair 的旗标搬运，含扩展模式 | 精确有理／符号证书，不导入旧谱引擎 |
| `coherent_bounds` | 全质量 pair 权界、`N=3,4,5` one-slot 恒等式、12 个 coherent 有理尾概率 | 精确有理／符号证书 |
| `boundary_layer` | 有限 signed-permutation 群、primary/kernel 数及移动边界层常数 | 精确有限组合与符号证书 |
| `universal_chiral` | 通用 `d,v,w` projector、六个 determining jets、同 support 的变形反例 | 独立符号证书 |
| `partition_hierarchy` | `N=2,...,6` 分区、join、Möbius、normalizer 与 overlap 实现 | 组合恒等式精确；Racah overlap/SVD 数值字段单独标明 |
| `fixed_q_exchange` | 双手征 CG 交换、右预算、对角 Bose 与对称／外平方；实际 `N=5,Q=1` 源 | 精确证书；默认 quasimode 目标 `P=6,12` |
| `bose_clusters` | 五体 `4+1` 与两个 `3+2` 手征源的 Bose 范数、Rayleigh 值、残差范数平方 | 精确有理证书；默认 `P=12,24` |
| `soft_inertia_P16Q8` | `Delta=2` 的三体块、精确 kernel 与辅助零模分离 | 有理惯性严格认证 `1/5<lambda_min^+<1/3` |
| `soft_inertia_P32Q16` | 同一方法在更高三体块的真实微小正谱 | 有理惯性严格认证 `1/6000<lambda_min^+<1/5000` |
| `oriented_comparator` | 六个内部 `p<q` 块的完整特征多项式，与独立 orbit Hamiltonian 精确比较 | 多项式恒等式精确；附带浮点 trace 只作诊断 |
| `finite_comparator_smoke` | `Delta=2,Q=1,R=4` 的有限低粒子数比较算子 | 内部维数和重复标量重数精确；谱值为 binary64 诊断 |

### 三种证据不能混用

**精确有理证书**可以确认其特定有限恒等式、秩或有理阈值两侧的谱数。
例如惯性脚本分别计算物理 kernel 与辅助 Gram 零模；它不会把小的
浮点本征值一概删掉。上述两个严格区间是实际正谱证书，但不被用于
拟合或证明指数衰减率。

**浮点 overlap 与 comparator 诊断**检查实现，并展示有限截断。
它们不是区间认证的根隔离，也不承担极小正谱与精确零的判断。
`five_body_comparator.py` 构造的是内部左激发 `p<=R` 的递归比较谱，
不是目标有限 `(N=5,P,Q)` Hamiltonian。其代码刻意不输入目标 `P`。

**无限维和全指标结论**来自附录中的算子恒等式、紧性、局部有限秩、
精确度量搬运、大偏差与谱投影论证。有限程序全部通过，不等于这些
证明已经被机器形式化验证。

## 4. 三个可单独运行的例子

以下命令从包根运行。先确保输出目录存在：

```sh
mkdir -p verification_out
```

### A. 重建真实微小正谱的严格有理区间

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python -B hierarchy_research/soft/exact_soft_inertia.py --left 32 --right 16 --thresholds 1/6000,1/5000 --output ./verification_out/independent_inertia.json
```

默认 `Delta=2`。该块物理维数为 94、精确物理 kernel 为 4、辅助
Gram 零模为 8。阈值 `0,1/6000,1/5000` 的惯性依次为
`(90,0,8)`、`(90,8,0)`、`(89,9,0)`，顺序是正、负、零。
这是最小严格正残差区间的直接证据。

### B. 重建双手征 Bose 与固定右预算接口

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python -B hierarchy_research/cluster/verify_fixed_q_exchange.py --output ./verification_out/independent_fixed_q.json
```

这里保留每侧分别反对称、但联合为 Bose-even 的 `(1,1)` pair 源。
默认也验证实际五体 `Q=1` quasimodes。需要只做代数接口时可加
`--only-algebra`；指定目标左激发使用实际参数 `--bose-degrees`。

### C. 构造一个非手征五体有限比较谱

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python -B hierarchy_research/cluster/five_body_comparator.py --Delta 2 --Q 1 --R 4 --output ./verification_out/comparator_Q1_R4.json
```

`R` 限制内部簇的左激发，`Q` 是固定右预算。旧 backend 的路径默认
按包根布局寻找，也可用 `--analytic-root` 指向其他保留的 Analytic
包。若只验证内部右定向 subtraction，将比较程序改用
`--verify-oriented-only`。

这些示例都显式指定 `--output`。若单独运行采用默认输出位置的其他
程序，也应加上 `--output` 指向自己的目录，以保留交付证书原件。

## 5. 九个冻结旧 backend：确切路径与用途

独立包按原相对路径保留以下九个源文件。它们是运行所需的最小旧代码
依赖；本轮没有修改它们，也不把这些旧算法重新记作新发现。

| 包根相对路径 | 用途 |
|---|---|
| `new_research/racah/all_n_recoupling.py` | 旧全粒子数 comb/Racah backend，供实际 Bose quasimode 的精确 pair 作用 |
| `prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/su11_recoupling.py` | 正离散表示的规范化 CG/Racah 系数 |
| `prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/four_body_racah.py` | 旧四体精确及数值 Gram/Racah 压缩 |
| `prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/cluster_spectrum.py` | 比较算子使用的三体数值矩阵与右定向计数 |
| `prior_analytic/ADS3_Analytic_research_package/fock_research/main/pair_gram.py` | 原 Einstein pair residual 与 Gram 辅助接口 |
| `prior_analytic/ADS3_Analytic_research_package/fock_research/main/counts.py` | 精确物理 primary 与相关计数 |
| `prior_analytic/ADS3_Analytic_research_package/fock_research/general/fock_exact.py` | 独立 differential/orbit Hamiltonian；定向特征多项式交叉验证所需 |
| `prior_analytic/ADS3_Analytic_research_package/fock_research/three/three_body_nonchiral.py` | Analytic backend 原依赖链中的精确三体实现 |
| `prior/fock_research/three/three_body_nonchiral.py` | 新惯性脚本与原始精确三体引擎的独立算术交叉核对 |

最后一个文件的交叉核对覆盖 `(P,Q)=(8,4)` 的 196 个精确矩阵项；
高块惯性本身使用新脚本独立录入的 FLINT 有理递推。
`fock_exact.py` 也被 `pair_gram.py` 的原依赖链导入，不能仅因为主要
使用 pair 系数就删除它。

新增程序分布于 `hierarchy_research/soft/`、`cluster/`、`audit/` 和
`universality/`。输入阅读台账、历史文件完整性记录和原有结果证书
作为冻结研究记录保留。它们不属于默认 11 项数值／符号任务：若要
重新生成“前几轮全部输入已完整读取”的来源一致性证书，必须另外
提供相应完整历史输入快照；运行本轮默认验证不需要那份完整旧工作区。

## 6. 结果解释与尚未解决的边界

使用本包时应保留以下区分，它们直接决定一个结论能否应用：

- **固定 `Q` 的 cluster 递归**适用于 `N,Q,Delta` 固定而 `P→∞`。
  它确定完整极限谱集合及奇偶选择，不是每个有限 `P` 的根式公式。
  正规孤立阈值的精确重数只适用于远离至少三簇谱和的点。
- **零阈值与更深 cluster 阈值**仍可能有额外重数、分裂和严格正
  能级趋零。存在完整谱集合上界不能替代这些计数；本轮没有一般
  Einstein cluster Fredholm determinant 或所需 Schatten 估计。
- **soft 指数窗**给出广延正谱的指数上界及阈值计数律。单个态的
  匹配指数下界、最优 action、完整率分布的存在性仍未证明；超指数
  或零密度特殊族也未被排除。
- **有限 comparator 的截断复杂度**不等于认证无限集合的总复杂度。
  固定 `Q` 下已有 `O_Q(R^4)` 常规算术与 `O_Q(R^2)` 工作存储界，
  但没有有效统一 `R(epsilon)`；精确位数和条件数成本另计。
- **普适变形类**是与 Einstein 核有精确算子关系的数学类。保持
  support、kernel 或主符号，并不保证相同低能代数，也不意味着每个
  变形来自原 gravitational action。
- **物理闭合与量子处方**沿用原证明及其已记录的连续域限定。本轮
  新谱定理不取代约束消去或 counterterm 推导，也没有将研究扩张为
  有限 `G`、`O(G^2)` 或独立 gravitational excitations。

继续研究时，优先从主报告的“新旧结果对应与证明依赖”表和各附录的
开放问题进入。重数、微观指数率、有效截断和完整有限谱解析解是不同
层面的问题；本包给出了它们之间现已严格建立的联系和仍缺少的步骤。
