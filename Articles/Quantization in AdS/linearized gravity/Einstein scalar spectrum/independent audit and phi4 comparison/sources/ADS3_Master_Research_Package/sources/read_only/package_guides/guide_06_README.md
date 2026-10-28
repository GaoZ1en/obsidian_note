# AdS₃ Einstein–scalar 独立研究包

研究日期：2026-10-18。原仓库及 Space 原文件均未修改。

## 阅读入口

- `ADS3_Einstein_scalar_research.md`：完整研究报告。第一部分重建最终理论与一、二体谱；第二部分给出辛响应图、Racah 双谱代数、任意粒子数 Jastrow 空间和完整三粒子最大手征谱；第三部分给出一般 tree-transfer、Hamiltonian/谱接口、反例及未完成问题。
- `research_simplification/three_body_chiral_spectrum.md`：完整三粒子谱、全指标归一化与低通道重耦合推导。
- `research_simplification/jastrow_chiral_family.md`：任意固定 N 的完整饱和 ideal、阈值、计数与 global-module 映射。
- `research_equivalence/THEOREM_AND_BRIDGE.md`：一般命题及 AdS 边界、辛结构和端点的详细接口。
- `research_equivalence/HIGHER_ORDER_OBSTRUCTION.md`：固定 leading graph 不能无条件延伸的三阶共振反例。
- `research_audit/`：原始输入审计、最终复核、三体压缩独立审查及来源清单。
- `ADS3_verification_summary.json`：本次实际验证的结构化索引。

主报告使用 `$...$` / `$$...$$` 数学定界符，可直接保存进 Obsidian。独立推导附件保留研究时的 `\(...\)` / `\[...\]` 定界符；若某 Markdown 阅读器只接受 dollar 定界符，可优先阅读主报告中的同一推导。

## 直接计算完整三粒子最大手征 primary 谱

需要 Python 3.10+ 与 SymPy。整包在 Python 3.12.14、SymPy 1.14.0、NumPy 2.5.4、mpmath 1.3.0 环境实际计算。

```bash
python3 -m pip install -r requirements.txt
python3 ADS3_three_body_spectrum.py --delta 2 --j 12 --digits 20
python3 ADS3_three_body_spectrum.py --delta 7/3 --j 18 --output spectrum.json
```

输出约定为 `E = E_free + G * g3 + O(G^2)`。Delta 是固定的物理一粒子 gap。程序给 exact 根式、数值及所有物理重数。J=1 没有新 primary；小 J 的辅助矩阵零方向会被删除，物理 Jastrow 零模另按完整 ideal 计数。其他 global descendants 继承对应 primary 的同一个 correction。

这个计算器调用已证明的闭式，因此它本身不是独立验证。独立验证代码列在下一节。

## 复算命令

下面每个命令可从本目录单独运行；脚本把 JSON 输出写回对应研究子目录。各份已执行的结果已包含在包中。完整 Fock 和部分符号计算比闭式计算器慢。

| 命令 | 验证的对象 |
|---|---|
| `python3 research_audit/verification.py` | 从自由模式和 Einstein 空间约束独立计算，含非零边界交换与直接径向 quadrature |
| `python3 research_simplification/direct_k4_benchmark.py` | 另一套 Fraction-only 有限有理 K₄ 算法和自由 CG 重构 |
| `python3 research_equivalence/verify_equivalence.py` | 辛图、完整简并 OFPT、动态/静态响应、辛形式和 Weyl 反例 |
| `python3 research_main/paired_graph_checks.py` | 另一份成对图和 finite-Fock OFPT 核验 |
| `python3 research_simplification/racah_bispectral_checks.py` | Newton、Racah、Legendre 的全指标证书与有限 degree 检查 |
| `python3 research_main/bispectral_independent.py` | 任意测试函数上的双对易关系与 local φ⁴ 控制 |
| `python3 research_simplification/jastrow_exact_checks.py` | 两种独立 pair projector 对 Jastrow 四次幂的作用及二次幂反向控制 |
| `python3 research_simplification/three_body_chiral_checks.py` | 85 个质量/自旋 cases 的直接 primary 波函数、范数、交换矩阵 |
| `python3 research_simplification/three_body_racah_symbolic.py` | 六项一般 Delta、J 的 Racah-entry 代数证书 |
| `python3 research_audit/three_particle_recoupling_check.py` | 独立 differential Casimir 与完整 Bose-primary 矩阵 |
| `python3 research_main/chiral_fock_checks.py` | 完整 19 维 Fock 块、Jastrow kernel 与 primary 特征多项式 |
| `python3 research_equivalence/higher_order_obstruction.py` | 三阶图像障碍、Lie 变换及完整简并 OFPT |

`direct_k4_benchmark.py`、`jastrow_exact_checks.py`、`three_body_chiral_checks.py` 只使用 Python 标准库。其余按根目录 requirements 安装依赖。`higher_order_obstruction.py` 需要同目录的 `verify_equivalence.py`，包内已保留该相对关系。

精确代数残差、有限矩阵对照和高精度 quadrature 分开记录；有限案例不替代报告的全指标推导。45 位 quadrature 的 observed error 不是区间算术误差界。

## 来源身份及原始材料

`research_audit/provenance.json` 是完整来源记录：13 份当前核心文件、12 份九月历史文件、5 份 Space 文本和 1 份一般 formalism。当前仓库冻结于 `ff06682448838bcbb02b135bd61bc661b394cbba`，历史冻结于 `6dcf60e2e870a1f6df969ae5cd92229e5e3f4b11`。

`sources/` 保留实际阅读的只读研究副本。26 份 Git 副本都比原 blob 多一个末尾 LF；去掉这一字节后的 Git hash 逐份精确吻合。五份 Space 文件是文本读取重建，未声称远端字节身份。以上变换和本地 SHA-256 均在清单中记录。旧脚本、旧结果和含 incomplete 标记的材料是历史证据，不计入本次执行的验证数量。

`research_main/REPORT_PART_I.md` 等三个分稿是本次报告的编辑来源，也一并保留。`FILE_MANIFEST.json` 对本包除自身外的所有文件记录 SHA-256；它不混同于原仓库 blob 身份。

## 已证明与未完成的边界

- 最终一体量子谱仍使用原工作的调节、ordering、tadpole、kinetic subtraction 和 physical-gap 条件。O(G) 不等于全部为 tree。
- 新图像只消去物质激发的特定阶数响应；完整理论保留 boundary gravitons。旧 secular gauge representative 仍须连同 endpoint 和 observable 一起识别。
- 三粒子最大手征谱完整求得；N≥4 的非饱和谱、非最大手征谱、G² 分裂和真正 AdS 高阶共振源仍未完成。
- tree-transfer、Schrieffer–Wolff、Feshbach、Racah、Bose Gram、Jastrow/pseudopotential 及 multi-twist 大自旋机制均有先例。报告把新应用与这些已有结构严格分开，不作已穷尽文献的优先权声明。
