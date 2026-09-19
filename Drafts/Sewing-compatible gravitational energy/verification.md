# 验证记录与复跑

2026-09-19。使用本机 Wolfram 14.3.0（Mac OS X ARM）与 Mathematica/xAct MCP；没有用 Python/SymPy 替代公式验证，也没有安装或更新依赖。

## 1. 实际执行结果

| 检查 | 结果 | 证明/验证了什么 | 没有证明什么 |
|---|---:|---|---|
| [algebra_and_counterexamples.wl](checks/algebra_and_counterexamples.wl) | 39/39 | cocycle、gauge 配对、Hamiltonian defect、TT flux、Gaussian sewing、负能量、边界脉冲、BY Hessian 与显式反例 | GR 全局相空间、真实全局 section、无限模极限 |
| [independent_audit.wl](checks/independent_audit.wl) | 17/17 | 开放 charge 的 curl、核的时间稳定性、同步 ambiguity、二阶 pullback、critical Hessian、null 极限、section 补偿 | 任意边界 gauge 参数的物理容许性 |
| [tt_einstein_xact.wl](checks/tt_einstein_xact.wl) | 5/5 残差为零 | 全部线性 Ricci、EH 二次密度及明确 divergence、三维 scalar constraint、GHY 壁响应、tidal Riemann | 非线性初边值适定性或一般二阶延拓 |
| 原 modular-wedge 脚本 | 15/15 | 指定单模、normalization、surface density、current divergence 与二阶 Einstein 点检；$32/105$ 与 $-16/105$ 的区别 | 全部模式、uniform joint regulator 极限；部分 current/Einstein 项是三个高精度点的检查 |
| 原 BTZ direct canonical-energy 脚本 | 8/8 | 径向 primitive 精确残差为零；两种半径×两种 collar 数值积分与目标一致 | 所有 BTZ perturbations 或四维 radiation |
| 原 BTZ outer-charge 脚本 | 14/14 | 同一模式 Brown–York/EH surface coefficient、$h^2/k$ 分解与 boundary descent | 未测试 sector 的 surface charge |
| 原 bifurcation Noether/area 脚本 | 8/8 | 固定 cut 的面积展开、$h_{kk}h_{ll}$ obstruction、$k$ 的消去 | 所有 moving extremal surfaces 的解存在 |
| 原 local-Rindler radiative 脚本 | 10/10 | Einstein–GHY 响应、TT 波方程、有限壁 Wronskian 与非零 null flux | exact AdS-Rindler 全模式或任意 null phase space |
| **合计** | **116/116** | 以上不同层级的实际 assertions | **不是 116 个独立定理** |

xAct 新检查使用 `components` profile，并显式载入 `xTras`。透明化简 pipeline 为 `ToCanonical → ContractMetric → ToCanonical → FullSimplification[]`。最终五项状态均为 `zero`，`unknownHeads`、`messages`、`loadErrors`、`setupMessages` 为空，未截断。原始结构化输出见 [xact-results.json](checks/xact-results.json)。

旧 BTZ direct 脚本含 50 位数值积分，沿用其 $10^{-25}$ 比较阈值；modular 脚本沿用点检的 $10^{-20}$ 阈值。此次没有放宽任何数值阈值。径向 primitive、密度公式、有限 TT 模型和新反例是精确代数检查。

## 2. 原始数据与失败记录

- [algebra-results.json](checks/algebra-results.json)、[audit-results.json](checks/audit-results.json)：每条断言的标签、通过状态和精确表达式。
- [btz-results.json](checks/btz-results.json)、[outer-results.json](checks/outer-results.json)：bulk 与 surface 两条独立路线。
- [modular-results.json](checks/modular-results.json)、[area-results.json](checks/area-results.json)、[rindler-results.json](checks/rindler-results.json)：既有几何标尺的此次结果。
- 相应 `*-tool-result.json`：保存 xAct 工具返回的 package、messages、耗时和截断状态。
- [requests.json](checks/requests.json)：同一组检查的复跑参数；[manifest.json](checks/manifest.json)：公式脚本和结果的 SHA-256 指纹。

初次新代数脚本为 37/39：compact polynomial pulse 的测试期望漏乘二，实际积分为 $262144c/45045$；BY Hessian 的最终 residual 化简未带 $R>2G_NM>0$ 等实域假设。修正期望和假设后 39/39。独立审计的首轮 14/16 中，两个 Hessian 测试使用 `SameQ` 比较未化简多项式；改成精确零 residual 后 16/16，加入合法 gauge section 的时间补偿检查后 17/17。对应修订没有改变一个失败的物理结论为“通过”。

没有复跑整个旧项目的所有脚本，也没有把旧 README 的历史“全部通过”计入本表。

## 3. 如何复跑

最直接的是把 [requests.json](checks/requests.json) 的每个条目交给对应 Mathematica/xAct 工具；每次使用 fresh kernel。请求中的路径指向本 vault 已存在的 source。新代数和独立审计分别用普通 Mathematica 的 `Get[...]` 运行；新的 tensor 文件由 `xact_verify_residuals` 的 setup 加载，再按五个标签验残差。

若相应 MCP 不可用，可使用已安装且能找到 xAct 的本机 `wolframscript`，不要下载新的依赖。两个普通代数脚本可直接运行：

```sh
rtk proxy wolframscript -file 'Drafts/Sewing-compatible gravitational energy/checks/algebra_and_counterexamples.wl'
rtk proxy wolframscript -file 'Drafts/Sewing-compatible gravitational energy/checks/independent_audit.wl'
```

tensor 脚本头部声明它需要 fresh xAct components 环境；不能在没有加载 xTensor/xCoba/xPert/xTras 的 kernel 中直接把 unevaluated 输出当作 pass。准确的 setup 与 normalization 参数保存在 requests.json。

## 4. 文本、仓库与来源核对

数学来源首先是本库的实际 source 与上述执行结果；主文的符号桥已直接核对现行 perturbation/formalism、gravitational-energy 的 finite-action/horizon 稿，以及旧 gravitational-sewing 稿的相反辛号数。旧项目最新 TODO/Drafts 中的无限模和 higher-dimensional 条件边界继续保留。

外部核对限于原始论文页面：[Harlow–Wu](https://arxiv.org/html/1906.08616v3)、[Hollands–Wald](https://arxiv.org/abs/1201.0463)、[Brown–York](https://arxiv.org/abs/gr-qc/9209012)、[Colin-Ellerin–Lin–Penington v2](https://arxiv.org/html/2501.08308v2)。此次读取 HTML/摘要，没有把数学 PDF 的未渲染公式声称为视觉核验；精确 mode/corner 公式的证据来自本地 source 与实际执行。

最终还检查本目录 Markdown 能被 Pandoc 解析、本地链接可解析、文本无控制字符/尾随空白；运行 vault policy 与差异空白检查。具体结果保存在 [text-validation.json](checks/text-validation.json)。没有改写、移动或合并旧笔记，没有生成旧项目的 TeX fragments，没有 commit 或 push。

Verified: 表中明确列出的计算，以及一般定理的逐步纸面证明与 42 项 claim audit。

Assumptions: 每个请求的模型、归一化、实域与 source 范围；新主定理的物理假设见 formalism §8。

Not verified: 全局/无限维/量子存在性、没有实际执行的旧回归测试、任何形式的穷尽性“无漏洞证明”。
