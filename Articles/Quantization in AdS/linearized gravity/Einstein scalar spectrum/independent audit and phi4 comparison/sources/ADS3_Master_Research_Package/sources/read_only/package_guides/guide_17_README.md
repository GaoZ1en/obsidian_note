# 本轮 Racah / cluster 子研究交付

## 真正新增的结果

本目录以两份既有研究为输入：最初 `ADS3_Fock_space_research.md`，以及随后已完成的 `ADS3_Analytic_spectrum_research.md`。后者的四体完整 cluster/Fredholm 定理、全 \(N\) tree/F-move 方案与 fixed-\(Q\) 原子经验谱律均是既有结果，本目录没有将它们重新算作发现。

1. **全粒子数 singleton inheritance 定理。** 对任意固定 \((N-1,p,q)\) 源本征态、固定 \(Q\ge q\)，在新增一粒子并令左相对激发趋于无穷时，存在物理 Bose 等距嵌入，满足

   \[
   \|A_N^{\to}(P,Q)U_P-U_P\Lambda\|=O(P^{-\Delta}).
   \]

   定理同时处理任意有限源态族，Bose Gram 为 \(I+O(P^{-(N-2)\Delta})\)，并保留有限重数。源残余始终按右侧 \(q\) 定向减去 \(b_{N-1}(q)\)。

2. **两次 singleton 插入后的谱重数增长。** 任意 \(m\ge2\) 的固定正残余本征值 \(\lambda\in\sigma_+(A_m^{\to}(p,q))\)，在任意 \(N\ge m+2\)、固定 \(Q\ge q\) 下，任意 \(\epsilon>0\) 都满足

   \[
   \#\{\sigma_+(A_N^{\to}(P,Q))\cap(\lambda-\epsilon,\lambda+\epsilon)\}\longrightarrow\infty.
   \]

   这是包含重数的下界，没有给出完整谱支持或增长率。

3. **\(N\ge5\) 的精确 compactness obstruction。** 三体 ground residual \(\lambda_*=3a_{00}\) 在 \(Q=0\) 严格高于两个原子 \(a_{00},a_{20}\)，而它附近的高激发本征值数趋于无穷。因此，物理正谱或其辅助 Gram 在只减去 atomic diagonal 后，不能具有 uniformly compact remainder；所有有限 Schatten \(p\ge1\) 范数发散。这仅排除了这种四体 Fredholm 结构的直接延伸，不是不可积性定理。

完整证明、显式 Racah endpoint 常数、有限度的 ground quasimode 有理误差上界及限定条件见 `CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md`。

## 新完成的实现

`all_n_recoupling.py` 补齐此前仍未实现的 arbitrary-\(N\) compiler 与 Bose fractional-parentage backend。使用 canonical comb basis、完全有理的局部 Racah 三项递推、\(O(N^3)\) adjacent-word Bose 投影、spectator rank 压缩与坐标读取 Gram。程序独立于旧代码运行；全正谱特征多项式及 baseline 重数均精确输出。

数学映射、完整公式、算术次数和 bit complexity 的区分、与特定 dense-polynomial 模型的复杂度比较，以及有快有慢的实际测时见 `ALL_N_COMPILED_RECOUPLING.md`。它不是对增长矩阵根的统一闭式解。

## 文件

| 文件 | 内容 |
|---|---|
| `CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md` | 新一般定理及严格限制 |
| `ALL_N_COMPILED_RECOUPLING.md` | all-\(N\) 算法、恒等式和复杂度证明 |
| `all_n_recoupling.py` | 独立全粒子数精确谱 backend |
| `cluster_inheritance.py` | 高度 endpoint evaluator、精确 quasimode 检查 |
| `verify_recoupling_backend.py` | 与旧 differential pair-Casimir 构造的独立精确比对 |
| `benchmark_general_recoupling.py` | 与旧 polynomial-Gram evaluator 的实测比对 |
| `recoupling_verification.json` | 4 组 local 参数、Coxeter 关系、11 完整物理块的证书 |
| `cluster_endpoint_checks.json` | 9 endpoint 配置、12 精确 quasimode 的记录 |
| `general_recoupling_benchmark.json` | 4 组精确谱相同、实际时长比较 |
| `manifest.json` | 文件摘要、依赖与结果状态 |

`n4_p4_q2.json`、`n5_p3_q2.json`、`n5_p8_q0.json`、`n5_p12_q0.json` 和 `n6_p3_q1.json` 是少量示范精确块，旨在展示输出格式，而非用增加低度谱表代替结构分析。

## 复现

本目录独立运行需要 Python 3、`sympy`、`mpmath`。示例：

```bash
PYTHONDONTWRITEBYTECODE=1 python all_n_recoupling.py --delta 2 --n 5 --p 12 --q 0 --verify --output n5_p12_q0.json
PYTHONDONTWRITEBYTECODE=1 python cluster_inheritance.py --exact
```

与旧构造交叉验证时，`ADS3_PRIOR_ROOT` 指向未经修改的最初解压包根，下面应存在 `fock_research/general/fock_exact.py` 和 `fock_research/main/pair_gram.py`：

```bash
PYTHONDONTWRITEBYTECODE=1 ADS3_PRIOR_ROOT=/absolute/path/to/prior python verify_recoupling_backend.py
PYTHONDONTWRITEBYTECODE=1 ADS3_PRIOR_ROOT=/absolute/path/to/prior python benchmark_general_recoupling.py
```

验证程序只读导入旧程序；关闭 bytecode 写入以维持旧材料不变。当前运行环境使用 Python 3.12.14、SymPy 1.14.0、mpmath 1.3.0；详细版本写入 `manifest.json`。

## 未解决部分

这里证明的是单侧 cluster spectral inclusion、重数下界及一个明确的 compactness 障碍。一般 \(N\ge5\) 的完整 cluster hierarchy、全部离散例外、重叠 cluster 的有效减法、增长率和递归 determinant 仍未建立。没有把未找到 commuting charges 当作 no-go，也没有将已完成的 all-\(N\) 矩阵构造称为完整解析求解。
