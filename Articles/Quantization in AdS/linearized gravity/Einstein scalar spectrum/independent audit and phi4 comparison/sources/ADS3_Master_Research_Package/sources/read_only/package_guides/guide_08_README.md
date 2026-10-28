# AdS₃ scalar Fock 谱：第三轮解析研究复现指南

完整推导在 ADS3_Analytic_spectrum_research.md。新程序在 analytic_research/，上一轮后端及数据原样保存在 fock_research/；必要原始笔记在 sources/frozen/，上一轮四份交付文件在 deliverables/。本轮未修改原研究材料。

## 1. 环境与能量约定

解压 ADS3_Analytic_research_package.zip，进入最外层 ADS3_Analytic_research_package 目录后执行：

```bash
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -r requirements.txt
mkdir -p outputs
```

验证环境为 Python 3.12.14、SymPy 1.14.0、NumPy 2.5.4、SciPy 1.17.0、mpmath 1.3.0。Matplotlib 3.10.8 仅重画图时需要。后端不需要联网，也不需要下载整个原仓库。建议在命令前加 `PYTHONDONTWRITEBYTECODE=1`，如需稳定比较浮点计时，可另设 `OPENBLAS_NUM_THREADS=1`。

所有程序报告的是 \(E=E_0+Gg+o(G)\) 中的 \(g\)。AdS 半径为一，scalar gap 为 \(\Delta>1\)。两体值已经包含原约束和 virtual boundary gravitons；不是忽略了引力的自由 scalar 模型。Primary 的左右 descendants 继承同一 \(g\)。部分程序另报告正 residual \(\lambda=g-b_N(Q)\)，字段中会明确区分。

新入口的帮助：

```bash
python3 analytic_research/ads3_analytic.py --help
```

## 2. 不建立谱矩阵，生成新的任意激发本征态

任意质量的 \(Q=1\) 精确族，\(P\ge1,N\ge P+1\)：

```bash
python3 analytic_research/ads3_analytic.py family --delta 2 --N 100001 --P 100000 --Q 1 --output outputs/universal_large_P.json
```

这是直接代入已证明的有限公式，不创建十万阶矩阵。若要实际 occupation 波函数，用有限 primary projector：

```bash
python3 analytic_research/ads3_analytic.py family --delta 3/2 --N 6 --P 5 --Q 1 --state --output outputs/universal_state.json
```

Chiral 族要求 \(N\ge P\ge2\)，对所有质量是该 primary 块的唯一最低态：

```bash
python3 analytic_research/ads3_analytic.py family --delta 2 --N 4 --P 4 --Q 0 --state --output outputs/chiral_state.json
```

在 \(\Delta_*=(\sqrt{33}-1)/4\)，全部最低态的重数是

\[
[x^P](x+x^3)(1-x^{N-1})/(1-x).
\]

下面第一例具有精确重数二，第二例是稳定范围之外的一个精确边界态：

```bash
python3 analytic_research/ads3_analytic.py protected --N 100 --P 17 --output outputs/critical_doublet.json
python3 analytic_research/ads3_analytic.py protected --N 3 --P 4 --state --output outputs/critical_endpoint.json
```

`family` 的 `is_sector_minimum_proved` 只在已证范围为 true；一般 \(\Delta>\Delta_*\) 的 \(Q=1\) 态仍精确，但不一定最低，其全部能量简并不能从低通道维数推出。`protected` 固定质量，故无需 `--delta`。

## 3. 全粒子数谱边缘与正谱原子极限

```bash
python3 analytic_research/ads3_analytic.py edge --N 8 --delta 3/2 --output outputs/edge.json
python3 analytic_research/ads3_analytic.py bulk --N 7 --Q 3 --delta 2 --output outputs/atoms.json
python3 analytic_research/ads3_analytic.py bulk --N 4 --Q 2 --P 32 --delta 2 --output outputs/finite_overlap_bound.json
python3 analytic_research/ads3_analytic.py bulk --N 4 --Q 16 --P 16 --delta 2 --balanced --output outputs/balanced_obstruction.json
```

`edge` 给每个固定 \(N\) 完整激发塔的最高修正、精确谱隙及重数。`bulk` 给固定 \(N\ge4,Q\)、\(P\to\infty\) 的完整正谱极限原子与权重；它的渐近数值不是有限 \(P\) 的精确根。加 `--P` 可计算证明使用的有限有理 HS 界。

## 4. 新的完整四粒子 Racah 后端

```bash
python3 analytic_research/ads3_analytic.py four --delta 2 --P 6 --Q 2 --exact --output outputs/four_exact.json
python3 analytic_research/ads3_analytic.py four --delta 2 --P 32 --Q 0 --exact --output outputs/four_32_exact.json
python3 analytic_research/ads3_analytic.py four --delta 2 --P 512 --Q 2 --diagnostics --output outputs/four_512_numeric.json
```

`--exact` 输出完整有理特征多项式、baseline 重数和辅助零根处理；没有把数值近零根当作符号零根。`--matrix` 可附完整精确辅助矩阵。无 `--exact` 时使用正交 Racah frame 的 binary64 求谱。

最后一例已在本轮实际完成：完整 primary dimension 为 33153，辅助 dimension 为 3327，正 residual rank 为 3263。该例需要比默认小例更多计算资源。保存数据在 recoupling/four_512_2_numeric.json；误差范围和数值残差另在 verification 文件中。

精确的中等规模矩阵前向误差证书与大型数值特征残差是不同层次的证据，本包没有混淆它们。

## 5. 四体极限 spectral determinant：有限 Gamma 构造

整数 \(\Delta\ge2\)、任意固定有限 \(Q\)：

```bash
python3 analytic_research/ads3_analytic.py fredholm --delta 2 --Q 1 --s 20 --parity 1 --gamma --digits 50 --output outputs/nonchiral_gamma.json
```

该命令构造精确 parity-tail 有理多项式，再求有限个多项式根和 Gamma 函数。结果是 \(P\to\infty\) 的 determinant，不能误认为某个有限 \(P\) 谱块的 determinant。复杂度随 \(Q,\Delta\) 增长，但不随四体 \(P\) 增长。

非整数 \(\Delta>1\) 可以直接计算收敛 Fredholm 乘积的截断：

```bash
python3 analytic_research/ads3_analytic.py fredholm --delta 3/2 --Q 1 --s 20 --parity 1 --cutoff 1000 --output outputs/noninteger_fredholm.json
```

此模式明确报告 \(O(T^{1-\Delta})\) 的 tail 阶数；不把截断值称为精确无限乘积。输入验证会拒绝非正 \(s\)、非法 parity，以及把非整数质量传给有限 Gamma 模式的请求。

## 6. 任意固定激发的 stable-N 解析展开

```bash
python3 analytic_research/ads3_analytic.py pencil --delta 2 --P 2 --Q 2 --order 6 --charpoly --output outputs/pencil.json
```

输出包括 \(NA+B\)、其精确特征多项式、物理 Hermitian \(t=N^{-1/2}\) Taylor 系数，以及 simple leading branches 的递推结果。退化 slope 单独列出，使用 pencil_tools.py 的 cluster/Feshbach 接口，不以小分母公式硬除零。

完整任意质量 \((P,Q)=(4,1)\) 谱曲线、两个真实 Jordan 质量及精确 \(\sqrt N\) 分裂，见报告 §7 和 pencil/ANALYTIC_PENCIL_RESEARCH.md。固定块、固定质量的展开收敛，不宣称对所有 \(P,Q\) 或所有 \(N\) 有同一个收敛半径。

## 7. 尚未有闭式解的其他有限块

保留上一轮完整后端，仍可精确生成所有有限指标。其 `primary`、`level`、`shell` 分别处理 primary、完整 descendant level、完整 rational free-energy/spin shell：

```bash
python3 fock_research/fock_spectrum.py primary --n 5 --p 4 --q 2 --delta 2 --roots --states --output outputs/general_primary.json
python3 fock_research/fock_spectrum.py level --n 4 --p 4 --q 2 --delta 2 --roots --output outputs/full_level.json
python3 fock_research/fock_spectrum.py counts --n 8 --p 20 --q 7 --output outputs/counts.json
```

这部分属于原来已完成的精确算法，不被列为本轮新闭式解。全 \(N\) tree/F-move 编译器的递推与复杂度已有证明，但本轮尚未将它整合成与四体专用实现同等优化的完整后端。

## 8. 独立验证入口

从新解压目录做轻量交付检查（核对全部清单，并实际运行精确态、四体、Gamma、pencil 及旧后端入口）：

```bash
python3 analytic_research/verify_delivery.py --output outputs/delivery_check.json
```

这项检查用于确认文件和接口可复现，不能代替下面的独立数学验证。

下面的新程序会重算各自目录中的新证书，不会更改 fock_research 或 sources 的原材料。需要保留归档证书时，在解压副本中执行。

```bash
python3 analytic_research/pencil/verify_primary_projector.py
python3 analytic_research/recoupling/verify_power_ideals.py
python3 analytic_research/audit/generic_low_channel_audit.py
python3 analytic_research/audit/low_channel_variational_certificate.py
python3 analytic_research/audit/kohno_shift_higher_degree.py
python3 analytic_research/audit/dirichlet_markov_counterexample.py
python3 analytic_research/collisions/verify_global_structure.py
python3 analytic_research/recoupling/verify_recoupling.py
python3 analytic_research/recoupling/verify_four_body.py
python3 analytic_research/recoupling/verify_cluster_counts.py
python3 analytic_research/pencil/verify_pencil.py
```

特别重要的动力学独立检查：

```bash
python3 analytic_research/audit/raw_jordan_vertex.py
```

它从原 Einstein 约束 solver 重新计算 \(00+41\to20+21\) 的六个 polarizations，分别输出 constraint contribution 与 virtual boundary exchange，再与抽象核比较，不加载旧 pair-integral cache。它是最耗时的验证之一；本轮已保存其完整结果。

`verify_power_ideals.py` 从原始根幂的 Macaulay 矩阵与真实 \(S_N\) 置换 action 重算字符，不调用证明中的正常式维数公式构建矩阵。70 个有限检查只作为全指标证明的独立复核。

## 9. 文件与论断状态

- 完整报告：ADS3_Analytic_spectrum_research.md，正文加全部新数学证明与审计。
- 机器可读索引：ADS3_Analytic_verification_summary.json。
- 原子极限、Jordan 分裂和平衡障碍示意：ADS3_Analytic_structure.png / .svg。
- 根幂与完整新重数：analytic_research/recoupling/LOW_CHANNEL_POWER_IDEALS.md。
- 直接有限本征态：analytic_research/pencil/primary_projector.py。
- 包内 MANIFEST.sha256 记录全部条目的 SHA-256（清单自身除外）。

本轮没有证明完整有限指标谱可积，没有给出所有 \(N\ge5\) 的完整孤立 cluster hierarchy，也没有求出平衡高激发的一般正谱分布。已证明的精确家族、完整渐近定理、严格障碍与仍待求解的部分在报告中分别标注。
