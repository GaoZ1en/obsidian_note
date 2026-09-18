# 传播非阿贝尔与辅助选择：执行记录

研究于 2026-09-18 开始，验证完成于北京时间 2026-09-19（UTC 2026-09-18）。对应两篇独立后续笔记：[传播 SU(2)](../nonabelian_propagating_sewing_2026-09-18.md)、[辅助选择](../auxiliary_choice_independence_2026-09-18.md)。原 56 项 suite 与 PR #10 的历史结果未改写。

## Mathematica：42/42

[nonabelian_sewing_checks.wl](nonabelian_sewing_checks.wl) 在 Wolfram **14.3.0 for Mac OS X ARM (64-bit)** 实际运行，42 项全部通过。脚本 SHA-256：

`157764135997cd519a7ea281a744ffdb51deba0a4d02ab0bb68da84a9199aecf`

每项都有 label、类型和实际 residual；失败退出码为 1。运行不写仓库文件。复现：

```bash
wolframscript -file "Articles/Quantization in AdS/gluing/principal_bundle_sewing_v2/checks/nonabelian_sewing_checks.wl"
```

| 检查组 | 项数 | 实际检查的表达式 |
|---|---:|---|
| SU(2) convention | 10 | 九个 $[T_a,T_b]$ 与正定 pairing |
| 原场/Coulomb frame | 1 | 任意矩阵参数下 $A^u$ 的首阶展开，含 $\chi_1$ 与非交换导数项 |
| 相互作用与约束 | 4 | 任意 first jets 的 cubic Euler derivative；Lorenz off-shell quadratic forcing；区间 Gauss 修正及 Dirichlet 势端点 |
| 三维实际相互作用 | 5 | Schwartz 背景散度、三次密度及非零积分、非线性力及其散度 |
| dressed electric algebra | 5 | mixed bracket、electric/electric bracket、Hamiltonian momentum vector、Jacobi、漏 frame variation 的项 |
| 有序输运 | 3 | 两段/三段到 $\kappa^2$ 的真实有序矩阵乘法，以及 cross-segment 项 |
| finite DtN | 4 | 两段 Schur、三段两种次序、三段总长度、零频模式 |
| 临时 closure | 3 | 含非线性项的完整 response 撤去、局部逆关系、未撤去 closure 的残项 |
| nonlinear quantum change | 4 | canonical shear、$\kappa\hbar^2$ Moyal 失败、一般符号的 cubic Egorov generator、修复后的实际乘法例 |
| free response reconstruction | 3 | D/N 反射项撤去与跨缝 resolvent |

非零见证行的 residual 为零，表示精确重现了文中给出的非零值，不表示相互作用或失败项消失。最后三项检验的是给出的 boundary-correction 公式；其作为 response solve 的来源由第二篇的解析推导承担。

最有区分力的值是

$$H_1=-\frac{\pi^{3/2}}{3\sqrt3}\quad(e=1),\qquad
P^2\star_{q,p}P-P^3=-\frac{\kappa\hbar^2}{2}.$$

第一个不是有限格点拟合；是整份三维 Schwartz 场的精确积分。第二个明确反驳“非线性 canonical change 自动保持原样 Moyal 公式”，并另检查 Egorov correction。有限 electric bracket 模型只验证颜色/变分符号，不模拟无限维 transverse projector。

## xAct：2/2

使用专用 xAct 工具、`core` profile，加载 xTensor/xPert/xTras；显式设置 `SetOptions[DefCovD, SymCovDQ -> True]`。验证 pipeline 为 `ToCanonical → ContractMetric → ToCanonical → FullSimplification[]`，协变双导数先 `SymmetrizeCovDs`。两个最终 residual 均精确为 0：

1. $\nabla^a\nabla^bF_{ab}=0$，$F_{ab}=-F_{ba}$，torsion-free metric connection。
2. 反对称结构系数与对称颜色二次式的收缩 $f_{cde}F^{ab,d}F_{ab}{}^e=0$。

第二项只使用第三槽的代数反对称性；复现脚本用 spectator slot，不将色指标的协变几何认作时空几何。这两个恒等式是 $D^\nu D^\mu F_{\mu\nu}=0$ 的反对称收缩步骤；它们不单独证明有边界 PDE 或全部 nonlinear Ward identities。

初次配置曾出现 `MakeRule` setup error；另一轮未启用 `SymCovDQ` 时未能规范化双导数。这些运行均未计作通过。上述是修正配置后实际得到的两个零残差。可复用 setup 见 [nonabelian_sewing_tensor_checks.wl](nonabelian_sewing_tensor_checks.wl)；需要本机可加载 xAct，不能只凭普通 Mathematica 已安装就假定它可运行。

同一独立脚本随后也通过本机 `wolframscript -file` 实际运行，退出码 0，最终输出 `{0, 0}`。五份新增/更新 Markdown 通过 Pandoc 解析；新增相对文件链接均可解析，公式编号无重复；`git diff --check` 和 vault policy audit 通过。这些是文档检查，不认证数学结论。

## 分析证明与测试边界

**Verified:** 上述 42 个代数/矩阵/积分 checks 与 2 个 tensor residuals 已实际执行。文中的新公式、非零项与有限辅助消元都有对应检查。

**Assumptions:** 两篇笔记声明的 formal 截断、衰减域、平行切口、actual proper maps、joint source/jet compatibility 和单 vertex observable 类。

**Not verified by finite tests:** Newton/wave 算子在声明域中的解析映射性质、源关系覆盖、无限维 polynomial polarization/kernel 证明、所有非微扰解、任意拓扑/奇异 strata、完整量子 UV/Ward/line-junction 处方。前三类具体解析义务须读两篇正文；后面的扩大目标保持开放，不能因为 44 个检查通过而升级。
