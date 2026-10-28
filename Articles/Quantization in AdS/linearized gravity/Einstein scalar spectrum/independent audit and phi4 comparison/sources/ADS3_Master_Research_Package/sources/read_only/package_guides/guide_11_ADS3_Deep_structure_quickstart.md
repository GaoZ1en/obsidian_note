# ADS3 Deep structure 研究复现指南

本包研究固定处方、Δ>1、global AdS₃ Einstein–real-scalar 的完整 O(G) scalar Fock branch。能量写作 E=NΔ+P+Q+Gg+o(G)。所有渐近都是一次系数 g 的数学结论。

## 1. 先阅读什么

| 文件 | 内容 |
|---|---|
| ADS3_Deep_structure_research.md | 中文主报告与九份完整证明／审查附录 |
| ADS3_Deep_structure_verification.json | 已执行验证、输入完整性、证据等级和保留问题 |
| ADS3_Deep_structure_overview.png | Grassmann bulk law、软正谱与有限度趋近 |
| manifest.json | 包内每个交付文件的字节数和 SHA-256 |
| run_verification.py | 在工作副本中执行验证的统一入口 |
| verify_manifest.py | 不需第三方依赖的文件完整性检查 |
| requirements.txt | 本次实际运行环境的固定依赖版本 |

完整旧输入位于 inputs、additional_inputs、prior 和 prior_analytic。两个旧 ZIP 的解包文件分别为 109 和 240 个，逐文件 byte comparison 全部一致。原仓库定位和输入 hashes 位于 context_sources。原输入仅作只读参照；本轮新文件集中在 new_research。

## 2. 安装与最小复现

解压后进入 ADS3_Deep_structure_package 目录。验证环境为 Python 3.12.14；建议使用 Python 3.12 建立独立环境。

~~~bash
python3.12 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python verify_manifest.py
.venv/bin/python run_verification.py --profile smoke --output ./runs/smoke
~~~

smoke 覆盖独立球谐／Casimir 符号恒等式、解析守恒量 obstruction、一个五粒子非手征 exact block、一个闭式手征低簇分支，以及第二份独立 charge 证书。

统一入口会把新研究代码和必要的旧依赖复制到指定输出目录的 work 子目录，再运行副本；旧依赖副本设为只读。新的 JSON、数组数据、stdout 和 stderr 都写入输出目录，不覆盖本包中已经交付的证书。每个命令、退出状态和运行时长记录在 verification_summary.json。任何失败都使统一入口返回非零退出码。--output 应指定新的或空的目录；不同运行使用不同目录。

本轮已分别实际执行各研究模块的验证，并另外执行了打包路径下的集成 smoke。完整 profile 的命令清单经过接口核对；验证摘要明确区分单模块已执行记录与集成运行范围，不把未重复执行的整个 profile 标作再次通过。

## 3. 重跑主要独立验证

~~~bash
.venv/bin/python run_verification.py --profile standard --output ./runs/standard
~~~

standard 包含 smoke，并执行：

- N=3、Δ=5/4,2,3、P=16,32,64,96 的有限谱与 Haar bulk law；
- 每个 N≥4 的 soft-atom 证明所用独立矩与 N=4 显式积分证书；
- generic Δ 的低簇 determining jets、不同构造的 C2 系数比较；
- all-N Racah recurrence、Coxeter relations、11 个完整物理特征多项式；
- 12 个 exact cluster quasimodes 与 9 组 endpoint asymptotics；
- 原 Einstein 约束中的 Δ=2,3 非圆对称 1→3 contact/boundary 相消。

这包括符号推导和非平凡精确有理计算，耗时随 SymPy 后端和机器而变。

~~~bash
.venv/bin/python run_verification.py --profile full --output ./runs/full
~~~

full 另重生成 generic-Δ 的第三阶有效算子，随后核对四个闭式 rational rates，并重跑新／旧 Gram backend 的四组比较计时。generic symbolic derivation 比直接调用已证明的闭式公式更慢。

## 4. 直接计算新的解析手征分支

这些调用不需要旧代码，也不需要对角化一个随 P 增长的矩阵。

~~~bash
.venv/bin/python new_research/stable/chiral_edge.py --delta 2 --p 12
.venv/bin/python new_research/stable/chiral_edge.py --delta 2 --p 12 --b 4 --expand-state
.venv/bin/python new_research/stable/chiral_edge.py --delta symbolic --p 12 --b 2
~~~

输入 b 是 octupole occupation，a=(P−3b)/2 必须为非负整数。不指定 b 时，输出整个最低 leading-slope 簇的紧凑参数化。每条分支返回 exact minimum、常数能隙、首个 1/N 系数，以及 Gegenbauer 多项式的紧凑表示；只有 --expand-state 才展开多项式。

在 Δ=2、P=12 时，允许 b=0,2,4，常数阶能隙是 0、10440/1099、62640/1099。b=4 的 1/N 系数为 −9620027665536/24732486163。

适用范围是固定 P≥2、固定 Δ>1、整数 N≥P 的稳定区间，以及 N→∞ 时的收敛展开。b=0 或 1 给出 exact minimum；其他分支通常还有 O(N⁻²) 后续能移。输出的 Gegenbauer 多项式是有效算子的本征多项式／物理态的领先向量，不是一般有限 N 下没有混合的精确态。程序可以代入很大的固定 P；这不代表余项对 P 随 N 增长一致。

## 5. 直接运行 all-N 精确 Racah 编译器

~~~bash
.venv/bin/python new_research/racah/all_n_recoupling.py --delta 2 --n 5 --p 4 --q 2 --verify --output n5_p4_q2_new.json
.venv/bin/python new_research/racah/all_n_recoupling.py --delta 3/2 --n 6 --p 3 --q 1 --verify --output n6_p3_q1_new.json
~~~

精确输入 Δ 使用有理数字符串，N≥3，P≥Q≥0。输出包括真实 primary dimension、精确 kernel multiplicity、positive rank、压缩维数和特征多项式。--states 会附加坐标资料，可明显增加文件大小。

该编译器完全使用局部 Racah 三项递推与 Bose fractional parentage，不依赖多变量波函数展开。它解决 matrix-element / overlap bottleneck，但没有把一般高次特征根转化成普适根式或一个已经证明可积的谱族。小块时旧 occupation/orbit 程序仍可能更快，原始比较计时没有删去不利案例。

## 6. 直接生成 Grassmann bulk 数据和图

~~~bash
.venv/bin/python new_research/balanced/balanced_spectrum.py --samples 250000 --max-degree 96 --output ./runs/bulk
.venv/bin/python new_research/balanced/plot_new_structure.py --input ./runs/bulk --output ./runs/figures
~~~

核心接口还可直接导入，用 Haar 正交标架采样固定任意 N≥3 的大激发极限。采样 cost 为每次 O(N²)，不随 P,Q 增长；闭式均值和精确核比例无需采样。总览图使用指定输入目录中的 NPZ 和 JSON，并在指定输出目录生成 PNG 与 PDF。图 A 和 D 要求包含 max-degree=96 的完整记录；默认输入是包内已保存的记录。

必须区分三种误差：

1. Haar sampling 的 standard error；
2. 有限 P,Q 与极限分布之间的渐近差；
3. 双精度对极小正本征值的分辨率。

物理 rank 总是由精确维数和 logarithmic-kernel theorem 决定，浮点阈值不决定零空间。缩放后落到零的 strictly positive levels 不被算成新的 exact kernel。对于软谱只证明了迭代极限下的原子质量，尚未证明它们的共同次级尺度或指数律。

## 7. 证明与程序的对应

| 报告结果 | 独立证明源文件 | 主要程序／证书 |
|---|---|---|
| Grassmann 完整 bulk、kernel spline、determinant | balanced/GRASSMANN_SPECTRAL_LAW.md | balanced_spectrum.py |
| 全局解析 charge 障碍 | balanced/ANALYTIC_CHARGE_OBSTRUCTION.md | verify_charge_obstruction.py；audit/analytic_charge_audit.py |
| N=3 全比值 soft atom | audit/GRASSMANN_AND_SOFT_ATOM_AUDIT.md | grassmann_edge_audit.py |
| 任意 N≥4 小比值 soft atom | audit/ALL_N_SOFT_ATOM_THEOREM.md | all_n_soft_atom.py |
| cluster inheritance 与 compactness 障碍 | racah/CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md | cluster_inheritance.py |
| all-N 有理 recoupling | racah/ALL_N_COMPILED_RECOUPLING.md | all_n_recoupling.py；verify_recoupling_backend.py |
| 泛型 leading linearization、Gegenbauer／cusp、首阶 1/N | stable/NEW_STABLE_ANALYTIC_STRUCTURES.md | chiral_edge.py；effective_second.py；独立 verification scripts |
| physical closure、旧 kernel 与 Gram audit | audit/PHYSICAL_AND_KERNEL_REAUDIT.md | raw_nonchiral_resonance.py |
| 第三种独立低簇 projector 推导 | audit/STABLE_PENCIL_INDEPENDENT_AUDIT.md | stable_retraction_audit.py |

表中所有目录都相对于 new_research。一般证明由文中推导承担，有限计算只是对应证书，不替代全指标证明。

## 8. 未解决范围

完整有限 (N,P,Q) 正谱尚无统一逐根解析解；一般 N≥5 的完整 cluster/HVZ 上界与 recursive determinant 未建立；非手征 stable pencil 的全部特殊质量、谱曲线及简并尚未分类。N≥4 的 soft atom 已证明在足够小的固定 Q/P 存在，但全比值区间仍开放。

本包没有建立普遍可积性，也没有建立普遍不可积性。报告逐项保留了 obstruction 的具体假设、已证明失败的 ansätze、有限证据和开放问题。
