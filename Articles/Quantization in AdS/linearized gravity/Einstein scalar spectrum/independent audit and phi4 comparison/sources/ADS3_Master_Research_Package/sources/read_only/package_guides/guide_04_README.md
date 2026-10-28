# Global AdS3 Einstein–scalar: complete finite-level O(G) Fock spectrum

本包继续此前研究，覆盖所有有限粒子数、全部左右激发，以及原量子处方下没有独立 free gravitational occupation 的 scalar branch。完整报告为 **ADS3_Fock_space_research.md**。

采用

\[
E=N\Delta+P+Q+Gg+o(G),\qquad \Delta>1.
\]

Constraints、matter backreaction 和 virtual boundary-graviton exchange 都在动力学输入中。一体物理 gap 固定为 Delta；没有添加新的独立 quartic coupling。这里的构造针对固定有限自由能级的形式微扰系数。

## 安装与统一入口

在解压包根目录运行：

~~~bash
python3 -m pip install -r fock_research/requirements.txt
python3 fock_research/fock_spectrum.py --help
~~~

核心依赖是 SymPy 和 mpmath。核心和 integration checks 已在 Python 3.12 验证。three/asymptotic_checks.py 另需 NumPy；安装后可选运行这一高精度渐近检查。所有算法均不需要访问 GitHub 或下载原笔记。

~~~bash
# 四粒子 nonchiral primary 的完整精确谱及物理投影
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 4 --p 2 --q 2 --roots --projectors \
  --output n4_p2_q2.json

# 全部 N、primaries、descendants 和相同根的累加重数
python3 fock_research/fock_spectrum.py shell \
  --delta 2 --energy 10 --spin 0 --roots --output shell.json

# 固定 N 的整个自由激发层
python3 fock_research/fock_spectrum.py level \
  --delta 3/2 --n 4 --p 3 --q 2 --roots --output full_level.json

# 一个公式处理所有 N>=4，并保留 Delta
python3 fock_research/fock_spectrum.py stable \
  --delta symbolic --p 2 --q 2 --output all_n.json

# 不分配十亿个粒子标签
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 1000000000 --p 2 --q 2 --projectors \
  --output billion_particles.json

# 十亿维 primary 空间的谱只需23阶正谱多项式
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 3 --p 1000000000 --q 6 --states --output billion_level.json

# 全部 exact Casimir-bound states
python3 fock_research/fock_spectrum.py bound \
  --delta 2 --n 4 --p 27 --q 3 --verify --output bound.json
~~~

## 如何阅读输出

| 字段 | 解释 |
|---|---|
| primary_dimension | 完整 Bose global-primary 空间维数 |
| baseline_g, baseline_multiplicity | 闭式 Casimir 下界能移及其全部重数 |
| positive_rank | 其余本征值的总重数 |
| positive_shift_coefficients_descending | 以 x=g−baseline_g 为变量的 exact polynomial |
| remaining_g_spectrum | 直接以 g 为变量的 square-free root sets 及每根重数 |
| real_roots | 可选的有理隔离区间及近似值 |
| state_construction | 有限 generator、坐标、physical Gram 与代数本征空间规则 |
| positive_spectral_projector | 对任一代数根有效的精确矩阵多项式投影 |
| combined_spectrum | 完整层/壳中经 gcd 合并的相同根和物理重数 |

Baseline 的大量重数压缩保存，不展开为巨大重复特征因子。正谱不强求根式；真实块的 Galois 群已经达到 S5/S6。Projectors 自动附带状态坐标解释，避免提供没有物理 embedding 的坐标矩阵。

有理 Delta 可直接隔离全部实根。symbolic 模式返回 rational functions；先代入特殊 Delta 再重算 square-free factors、pivots、gcd 和 projectors。不要把 generic multiplicity 当作特殊参数处的 multiplicity。

命令行自动选择 stable、Racah、Gram 或 orbit 后端；也可用 --method 指定适用后端。三粒子 Racah 的优势在固定较小手征度，stable 的优势在固定总激发、增大粒子数。通用 Gram 后端已给出全部有限块的可执行构造；平衡高激发仍有实际维数与 bit-complexity 成本。

## 关键数学与程序

| 目录/文件 | 内容 |
|---|---|
| ADS3_Fock_space_research.md | 独立、自洽报告：物理闭合、全部定理和证明、文献与实际新谱 |
| fock_spectrum.py | 完整 primary/level/shell 谱接口 |
| main/counts.py | 全指标维数与 kernel 的二进制递推 |
| main/pair_gram.py | 三个 permutation double cosets 的 Gram 压缩 |
| general/fock_exact.py | 独立 differential-Casimir/Bose orbit reference |
| general/stable_n.py | 任意 stable N 的 affine pencil、centered creation basis、slopes |
| general/logarithmic_states.py | 任意 N,Q 的完整 logarithmic kernel |
| three/ | 任意左右三粒子谱、极高激发、新 Galois 证书和渐近 |
| physics/ | 原约束 Hamiltonian、边界项、特殊共振和物理独立审查 |
| main/*.json, general/*.json, three/*.json | 本轮实际算出的精确谱和验证数据 |

## 复现与独立验证

首先运行最终接口检查：

~~~bash
python3 fock_research/verify_package.py
~~~

它比较全部 18 个原始 Hamiltonian 低能 block 与最终 primary/descendant 接口，检查代数 projector、全能量壳重数、528 个 coefficient recurrences、特殊 Delta 和两种十亿尺度输入。输出记录在 main/integration_results.json。

要独立重算原来的 spatial constraints 和 radial integrations：

~~~bash
python3 fock_research/physics/raw_fock_checks.py \
  --particles 3,4 --max-p 2 --max-q 2 --recompute
~~~

不加 --recompute 时，使用这轮已经独立生成的 exact pair-integral cache，重新建立 many-body matrices 并验证完整 Ward/descendant identities。这种缓存运行的用时不是 radial integration 用时。详见 physics/README.md。

其它独立验证：

~~~bash
python3 fock_research/physics/number_change_checks.py
python3 fock_research/physics/logarithmic_kernel_audit.py
python3 fock_research/general/verify_general.py
python3 fock_research/general/verify_stable_n.py
python3 fock_research/three/verify_nonchiral.py
python3 fock_research/three/verify_racah_states.py
python3 fock_research/three/verify_galois.py
python3 fock_research/main/galois_certificate.py
~~~

报告明确区别原积分计算、不同算法交叉验证、数值渐近证据和解析证明。Saved data 不替代 theorem，也没有用目标 eigenvalues 修改原动力学。

## 原始资料与保存

压缩包 inputs/previous 保存此前报告及原压缩包；inputs/source_notes 保存原十三份笔记。全部原材料保持原字节。physics/provenance.json 记录 Git commit、原 Git object hashes、上一轮 ZIP 比较及末尾换行区别。根目录 MANIFEST.sha256 列出所有研究与输入文件的摘要。

未修改原仓库、此前报告或原验证程序。raw_canonical.py 是原验证器的独立副本。

## 精确适用范围

这里解决的是每个固定有限自由能级的 O(G) coefficient、重数和 leading eigenspaces；原变量中的虚引力 dressing 由报告的 inverse normal form 恢复。没有据此断言全无限 Fock 空间的强酉 dressing、高阶 h=0 闭合、任意 regulator/ordering 的处方无关性或随 N 增长的统一弱耦合控制。

没有完整 commuting family/Bethe ansatz 的证明。已得到可运行的全指标 exact spectrum construction；没有将一般有限矩阵的形式定义当作计算简化，也没有将“没有找到可积性”作为结论。
