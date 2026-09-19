# Sewing-compatible gravitational energy

2026-09-19。承接“读ega”对话的最后一个设想：从已有 canonical energy、finite-action corner 与 gravitational sewing 计算，构造一个可以组合的有限区域二次引力能量。

**当前结果：有限平稳区域的条件定理已写出并完成三轮反例复核。** 正确定义为

$$
\mathcal E_R[h,u;\xi]
=\Omega_R(h+\mathcal L_uG,\mathcal L_\xi(h+\mathcal L_uG))
=E_{\rm can,R}[h;\xi]+C_{\partial R}[h,u;\xi].
$$

在声明的作用量、光滑解/frame 域和背景 Killing 流下，它对容许的联合 gauge 变换不变，满足完整源/corner 通量平衡，并在透明空间拼接时相加。另有无通量、可积性与二阶可延拓条件时，它才给出已知 Hamiltonian 的二阶变分。

| 文件 | 内容 |
|---|---|
| [formalism.md](formalism.md) | 定义、finite-action 推导、四项性质、主定理与证明，§8 是精确命题 |
| [benchmarks.md](benchmarks.md) | 四维 TT 波包的有限区域计算；BTZ、modular wedge、面积标尺；二阶约束反例 |
| [counterexample-audit.md](counterexample-audit.md) | 42 个概念/claim 的攻击、判定、修订与停止标准 |
| [verification.md](verification.md) | 实际检查、计数、原始结果、复跑方式与证据边界 |
| [checks/](checks/) | 新的 Mathematica/xAct 输入、旧标尺复跑结果及请求/文件指纹 |

原设想中必须改写的三点：

1. **它是二次能量，不是完整准局域质量。** whole-region 极限对应 Brown–York/Brown–Henneaux 荷的 Hessian；BTZ 的因子二已从 bulk 与 surface 两条路线核实。
2. **开放区域保留通量。** 一个定义良好的二次函数不自动生成该区域自身的时间演化；源曲率可能阻碍 Hamiltonian 可积性。
3. **边界一阶读数不够。** 内部紧支撑引力波包有正 canonical energy，却可令边界上一阶场及全部 jets 为零。边界读出需二阶反作用或额外历史信息。

另需保留真正的 boundary jets、proper-gauge 条件、frame 的时间相容性，以及完整 shear/momentum/pressure 响应匹配。原来三个来源目录只作读取和计算复用，本次工作全部放在此新目录。

Verified: 116 项已执行检查通过，包含 5 组 xAct 张量/作用量残差；一般命题另有纸面证明。42 项审计不是 42 个新引力模型，也不把矩阵测试当作无限维存在定理。

Assumptions: 主文 §2、§6、§7 列出的解域、边界处方、时间流、frame 与拼接条件。

Not verified: 无限制的“永远没有漏洞”、全局 HW section、任意线性解的二阶延拓、任意 null/无限模极限或量子引力 sewing。最终审计在已声明范围内未留下已知未解决矛盾；它不是第三方审稿的替代品。
