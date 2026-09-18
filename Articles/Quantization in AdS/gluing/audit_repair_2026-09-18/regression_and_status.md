# 回测、新攻击与修订后的证明状态

本记录对应基线 `6940ab5243b7d8f74bcfc2f2cf0138eeed50b240` 的八份 active source 修订，以及本目录 R0–R5。它不是原 audit 的改写，也不把旧 PASS 当本次执行。旧 FC/PB 分别 86/56 项 suites 本轮没有运行；不能据本页宣称全部旧例子重新验收。

## 实际执行

`verify_repair.py` 在 Python 3.13.5、SymPy 1.14.0 执行，63/63 个明确断言通过，完整名称、类型、计算残差和 UTC 时间见 `checks_result.json`。脚本 SHA-256 为 `bf461913265ce2b87bbcbbf8a876171084e3e513ff8ff733c37270ff3273d817`。其中 residual 是“实际表达式减预期表达式”；反例行 residual 为零不表示被攻击命题成立，而是正确重现预期的非零差异。脚本遇到失败会抛异常并保留已执行结果。

另外实际执行了：八份精确基线正文的 Git blob 校验、`git diff --check`、patch 的反向/正向 `git apply --check` 和完整应用后的逐文件 blob 校验。两份 FC 正文经 API 保存时末尾无换行，已按实际返回的 blob 修正校验，不把它算数学修改。

`sync_reading_copies.py` 在实际 FC 合稿上验证了三篇修订块替换、重复运行幂等以及非预期 snapshot 拒绝；没有在 PB 完整合稿上执行。远程两份历史合稿本次未重写。该脚本默认 dry run，仅在显式 `--write` 时更新选中的合稿，不更新历史 audit、manifest、ZIP 或原运行记录。

## 原反例回测：到底否定什么

| 见证 | 回测结果及修订应答 | 不得外推 |
|---|---|---|
| FC-1 联合数据 $q=x(1-x),f=2+m^2q$ | 完整 tuple 解方程；纯块角点加速度为 $2,-2$。R1 只比较完整 tuple，原错误分块句已删除 | 不是线性叠加原理错误，也不反驳每块本来合法的 probe 子域 |
| PB-1 合法 Maxwell 单模 | 模式范数、散度、特征值核对；$\Theta_{\pi/4}(\partial_{q_0})=-1/2$，$\Omega$ 守恒。正文改为只有 $\Omega$ 切片独立 | 不要求所有 potential choices 有同样时间依赖 |
| PB-2 局部 small 组装 winding 1 | 总 winding 精确为 1，局部 homotopies 的 seam 比值 $e^{-2\pi is}$。R3 拒绝该箭头属于 identity-component proper | 不反驳全部 based components 已为 proper 的原 compact YM2 模型；cut-frame maps 不称旧人工壁上的 proper |
| PB-3 $S^2$ monopole | 完整曲率积分恢复 n；正文删除其强必要性解释 | 不给唯一 raw connection，不删除 gauge fibers；普通 unanchored sphere 的结论不推广所有拓扑 |
| massive null kink | 截断级数有精确非零末项残差，trace 为零、横向 jump 为 1。完整级数结论另由阶乘收敛和递推证明，R2 仍保留未定 seeds | 有限截断不是精确 massive 解；kink 不满足完整 smooth matching 前提 |
| 删除 $p\delta\lambda$ | 四维 matched 空间上正确形式 rank=2、两个 proper 方向仍 null；遗漏项给 $(-\alpha+\beta)\delta p$ | 不说明必须新增独立 oscillator；corner 项按 action/transport 导出 |
| 正 Gram 不推出 onto | $Cz=(z,0)$ 的 Gram 为 1、image rank 为 1。R5.3 分开 Gram、完成、闭像、通道检验 | 此 toy 不满足完整 C05 的通道前提，不是其直接反例 |
| fixed-cup $F\mapsto-F$ | 共轭作用不变，$\sqrt2F_{00}$ 从 −1 变 +1 | 翻转后不是固定完整 cups 的合法第二份 realization；只攻击弱 braid/Ad 验收 |
| Robin 符号/正性 | 平方完成及 $e^{\alpha x}$ 的特征值 $m^2-\alpha^2$ 精确成立 | 不自动扩展原全部 boundary quantum theorem；正谱与有限时间 PDE 分开 |
| 相同 marginals 的两态 | 几何级数直接验归一化、跨区关联 ±15/16，covariance 正定和纯性通过 | 只证明未指定联合准备的一般 extension 不唯一；不是所有空间 sewing 条件内的反例 |
| Wick quartic 运输 | 得 $\phi^4+6\hbar c\phi^2+3\hbar^2c^2$ | 对不同 E 的 boundary dynamics 不用 smooth Wick shift |
| 原 whole-CCR 两侧约束商 | $[\partial_q,q]=1$ 使含 q 的两侧理想含 1 | 本次 label 评价零关系不是这个非法场约化 |

## 针对修复的新攻击

**共同 smooth source 不能漏。** 取两侧 $\phi_-=0,\phi_+=x^2$。场和第一 normal derivative 在 seam 匹配，但二阶差为 2；两侧 forcing 不光滑相接。它不反驳 R2 的完整前提，却说明把“共同 smooth source”删掉后递推失效。该条件在原 smooth 目标中保留；改成有限正则性/弱解目标可另定更弱条件，不能暗中换目标。

**全部 corner jets 不等于完整 characteristic trace。** 令 $g(u)=e^{-1/u^2}$（$u>0$），在 $u\le0$ 为零。每阶导数是 $1/u$ 的多项式乘原指数，因此在原点全为零，而 $g(1)>0$。对原正质量双-null Volterra 问题取一张 trace 为零、另一张为 g、forcing 为零；与零解有同 corner jets/第一张完整 trace，但第二张 trace 和内部解不同。因此不能用一个 corner 的无限 Taylor 缓存替代另一张完整 sheet。代码只核对 0–4 阶，所有阶的证明是上面的指数衰减；R1 的完整 incoming data 没有被删除。

**等价通道会击穿“每个投影非零就 onto”。** $C:v\mapsto(v,v)/\sqrt2$ 是等距、在两份相同表示的对角作用下有 reducing range，每个 channel projection 非零，却不 onto。代码得到第一通道投影离开对角像的范数平方为 $1/4$。R5.3 要求实际 channel projections 保像，或直接证明 multiplicity image 满秩；互不等价不可约只是一组足够的实现条件，不是所有 sewing 的必要输入。

**Ad 严格不等于 lift 无障碍。** Pauli X,Z 给 $XZX^{-1}Z^{-1}=-1$，Ad 却对所有 $M_2$ 基元素严格对易。它比原一维 characters 更准确地区分 projective obstruction；一维 characters 的 multiplier 全平凡。整体向量相位仍不改变代数态。

**不能把一个形式选择误叫全局 gauge section。** YM2 的 holonomy 若有全局连续 connection section，在 U(1) 就给每个圆点连续选择一条从 1 出发的 path，推出圆可缩。R4.4 不作这种假设：从实际 Gauss 初值和任意合法 $A_t$ 构造全部 fields。代码另用 $E_0=i\sigma_x,g=\operatorname{diag}(e^{itx},e^{-itx})$ 的非交换例子直接检查 $F_{tx}=e^2E,D_xE=0,D_tE=0$。任意 histories 的证明来自 R4.4 的 ODE/协变计算，不来自这一个样本。

**raw coefficient assembly 不是单射。** overlap 上 $(t,-t)$ 评价为零。FC 定理 F 现给出明确 overlap relations 和 contracting formula；三块符号检验反对称性与零和重建。一般有限 cover 的证明使用 $\sum\chi=1$，而非三块样本外推。合法分布乘积、boundary Q 和无限谱极限仍各自验收。

## 修订后的命题状态与未证目标

| 目标／原 claim 范围 | 当前交付 | 仍缺及影响 |
|---|---|---|
| FC F06/F07 complete sourced reopening | 正文改为 joint tuple 的双向关系证明；在原已构造 source 域升级响应比较 | 不提供更广几何的 IBVP/任意参数族 smooth dependence |
| FC Q01 既定 polynomial/Wick target | 原目标不变；补局部系数 overlap kernel、preimage 和原 Q 依赖 | 全 reflecting-boundary microlocal 输入未重证；新 sharp null products 未构造 |
| PB G02/G03 几何、箭头、预辛比较 | actual bundle descent、global proper 成员检查；完整未约化 Ω 比较 | 一般 G/拓扑的有效 branch 算法、奇异空间全部 tangent/Hamiltonian lifts 未构造 |
| PB YM2、Maxwell、U1 disk | R4 给 full-field constructors，保留 proper 作用与退化；旧 invariant/PBW/Haar 目标保留为下游 | 不用 reduced benchmark 认证更广 continuum theory |
| PB C04/C05 矩阵/charged channel | 纠正 fixed-cup 反例层级及 Gram/onto 充分准则 | adopted charged-transport 分析和全部 higher ribbon coherence 未重证 |
| FC P06/P07、一般 interacting YM | formal/graph 层原结论保留 | 全部 boundary Ward contacts、removal coherence、thin-line UV、非微扰收敛未完成；不能列为已满足输入 |
| 一般 mixed/null、states/representation/amplitudes | 目标完整保留、必要数据分层 | 一般模型仍开放；algebra 同构不选态或完成 amplitude sewing |
| 原 claim ledger 的文件身份 | FC 前轮已恢复匹配原 hash；本次用新修订记录说明状态 | PB 原 claims.json 不在固定仓库中，本次没有伪造恢复原 ledger |

## 建议执行而未执行

在干净完整 checkout 中，可重跑旧 FC/PB suites，并在满足其依赖后同步两份合稿。以上建议不是已通过记录。PB 全合稿同步、旧所有历史图/geometry tests、Mathematica/xAct/Sage 以及通用 PDE/UV/ribbon theorem 验证都没有被记成本轮执行。

本轮没有删除原 physical targets，也没有声称所有失败都已修复为无条件定理。有限 PASS 和没有找到反例都不是证明；可用证明的精确范围见 `repair_proofs.md`。
