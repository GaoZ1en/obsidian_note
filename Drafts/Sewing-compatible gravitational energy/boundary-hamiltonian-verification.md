# 边界 Hamiltonian—源做功扩展：检查与证据边界

2026-09-19。基线提交 `067249a6e2e698fbfd4a5b8687cc5fff784b51c4`。
本轮只新增 [母对象推导](boundary-hamiltonian.md)、[具体标尺](boundary-hamiltonian-benchmarks.md)
和本文件/脚本，并给 README 增加入口；不替换旧 formalism，不改 AdS4 模式项目。

## 1. 本轮真正执行的计算

| 新脚本 | 通过 | 范围 |
|---|---:|---|
| [boundary_hamiltonian_checks.py](checks/boundary_hamiltonian_checks.py) | 30/30 | 完整 lapse/shift/stress 源分解；Gaussian collar 的 Noether+GHY+corner 到 BY；完整四维 Rosen Ricci、精确非线性 Ward、两极化二阶约束；球对称参考作用量、质量与时间归一化；能量/源改进 |
| [ads4_boundary_checks.py](checks/ads4_boundary_checks.py) | 27/27 | 两个指定低模的全部线性 Einstein 分量、非零 Weyl、TT/RW 区分；两条路线的有限壁外曲率变分；完整密度响应、线性 Ward、角积分、两点独立矩阵导数与 S/V 交叉项 |
| **本 PR 新检查合计** | **57/57** | 不把一个张量的每个零分量另算一条定理 |

原始结果为 [boundary_hamiltonian_results.json](checks/boundary_hamiltonian_results.json)
和 [ads4_boundary_results.json](checks/ads4_boundary_results.json)。失败检查使脚本以非零状态退出。
JSON 保留每组 residual；AdS4 文件还保留完整的 $h,\delta K,\delta\Pi$ 及积分核，
不是只给一个 `passed=true`。

运行环境为 Python 3 和 SymPy 1.14.0。此环境没有可调用的 Mathematica/xAct/Sage，
因此这些是独立 SymPy 计算，**不是原 116 项 Mathematica/xAct 的复跑**。
没有安装或升级依赖。曲率直接从输入 metric/Christoffel 计算，而不是从预期能量公式定义。

复跑命令（仓库根目录）：

```sh
python 'Drafts/Sewing-compatible gravitational energy/checks/boundary_hamiltonian_checks.py'
python 'Drafts/Sewing-compatible gravitational energy/checks/ads4_boundary_checks.py'
```

脚本不联网、不读取其它项目的私有绝对路径；结果写回各自旁边的 JSON。
AdS4 的耗时字段会随机器变化，其余代数残差可直接比较。

## 2. 哪些是解析证明，哪些只是有限检查

主文 (N4)–(N6) 是完整 Noether/Cartan 恒等式的推导；(N12) 来自 Codazzi/Ward；
(N16) 是实际匹配域上完整响应的相消；(N18) 是对同一解族的生成律微分。
这些证明都须使用主文声明的作用量、协变性、域、取向与 corner 输入。
有限矩阵检查不是一般 Einstein 初边值适定性的证明。

Rosen 检查先从任意对称二乘二横向 metric 计算整个四维 Ricci，再由壁几何独立计算 BY/源项。
两极化真空族的存在由 $\gamma_\epsilon=a_\epsilon^2e^{\epsilon Q}$ 和一个平滑系数 ODE 构造；
ODE 在有限区间、小扰动下的存在/非退化是解析论证，不是数值扫描。
未把 $z$ 周期化，也未声称绕过紧空间的 Taub 障碍。

AdS4 的全线性 Einstein、外曲率路线比较、Ward、积分核是符号恒等式。
额外的精确矩阵逆/行列式导数只在 $(R,\mu)=(1,1/3),(2,-1/2)$ 检查，
不将这两个点单独称为一般证明。Weyl 非零也保留一个明确非零的精确点。

S 模式原坐标存在 $h_{tr}$；本轮没有计算该非正交切片的完整 boost/corner 辛积分。
(B17) 是一般恒等式的实例化，不是已独立验证的 AdS4 canonical-energy 数值。
两个模式的完整二阶 $k$、全模 CPS normalization 及所有径向 overtone 均未求出。

## 3. 对修复的攻击与保留的限制

| 攻击 | 结果及处理 |
|---|---|
| 给 $H$ 加任意边界函数，同时改源一形式 | (N14) 保持生成一形式但改变读数；只在完整作用量/源处方固定后证明条件唯一性 |
| 静态质量变化使 canonical energy 为零 | 不删除这类物理变化；有限 BY 读出 (B7) 保留质量，内壁/源项补足恒等式 |
| 真正辐射的 canonical energy 为零 | 两极化 Rosen 中 $p=e^v$ 仍给非零二阶 BY；差额是完整源项，不修补成正定二次型 |
| 仅知一阶壁数据便宣布二阶能量 | AdS4 中显式保留 $2\Pi_0^{ij}k_{ij}$；未知 $k$ 不设为零 |
| 把奇宇称代表当作 TT | 直接检验完整 Einstein；不对 RW 模式使用 TT current |
| 忽略非正交切片 | 明列 S 模式 $h_{tr}$ 与完整 corner 要求；没有删除角项后宣称 CE 已验算 |
| 两侧各自选择参考真空再自动相加 | 保留作用量 opening 与相容校准；不相消参考势视作真实接口作用量 |
| 把 proper-time clock 当固定参数变分 | (N20) 保留 $H_{\delta\xi}$；没有构造动态 clock pair |

整理过程中发现 benchmark 的 RW 径向重建文字漏写一个 $1/f$；度量输入本身正确。
已补回该因子，并新增 `V20_RW_seed_reconstruction` 的精确测试。
没有通过降低数值阈值或跳过失败断言来取得最终结果。

作为额外回归，此对话上一轮附件中的独立 audit 脚本也复跑为 43/43；
它不在上面 57 项的合计中，也不等于库中 116 项旧套件。
本 PR 的自足执行证据是随本次提交保存的两套新脚本及 JSON。

## 4. 来源与文本检查

参考了本库原 formalism/benchmarks/反例审计、general gravitational sewing 的完整响应定义，
以及 Harlow–Wu、Brown–York 和 CFSS 的原始论文页面。
网页用于文献定位；本文明确公式的证据是给出的推导和实际计算，不把摘要读取称为全文公式核验。
Research Radar `/problems` 本次仍无法访问，未以其内容作依据。

新 Markdown 已作 Pandoc 语法解析；文本检查覆盖数学定界符配对、控制字符与尾随空格。
仓库全局 policy/所有旧回归没有运行；本地隔离目录与 GitHub connector 不等于用户原始工作树。

Verified: 本文列出的 57 组新精确检查、所述解析推导与限定域的非线性例子。

Assumptions: 主文 §1 和 benchmark 各节的完整作用量、源处方、固定参数、正则/非退化域及匹配条件。

Not verified: 一般初边值/全局 gauge section；AdS4 全模式与二阶受控源族；任意 null/moving/corner 网络；
无限模或渐近联合极限；量子代数/时钟；原 116 项 xAct 重跑；第三方独立审稿。
