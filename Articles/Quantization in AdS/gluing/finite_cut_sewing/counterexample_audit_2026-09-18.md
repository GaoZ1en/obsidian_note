# 逐条反例审查：finite_cut_sewing（2026-09-18）

## 结论与判定口径

**发现一处仍留在当前正文中的错误证明步骤：引理 4.2 用三个独立源块覆盖全部相容输入域。下文给出本稿允许的正质量 Dirichlet 条带上的显式反例。这个反例否定该步骤，不否定改用完整相容元组后陈述的重建定理。** 该反例的机制已被本包及相邻主丛包承认；本次新增发现是它与引理 4.2 的现存文字直接冲突。

对其余主张，本次没有找到满足各自全部前提、却违反其结论的新增反例。这里的“没有找到”不是正确性认证，更不是对无限维分析、继承的 microlocal 输入或相互作用重整化的独立证明。已标作条件性、未构造或不包含的主张，没有被升级为无条件结果。

审查包含六篇 `notes/`、三份 `sources/` 快照、25 项 [CLAIMS.json](CLAIMS.json)、README、合稿、检查程序和记录。合稿中六篇正文均与分篇对应内容一致，因此相同陈述只计一次；下面另列快照中未进入 ledger 的陈述。定义本身检查一致性及例子的存在性；定理寻找满足全部前提的反例；证据陈述检查其实际覆盖范围。历史运行日志及引用文献不等于本次执行或重证。

## 1. FC-1：完整相容输入不能一般地拆成三个独立光滑响应

**判定：不正确。** 不正确的是引理 4.2 末尾的独立分块论证；完整 sourced comparison 的结论需要在联合允许域上证明。

位置：[notes/01_finite_cut_theorem.md](notes/01_finite_cut_theorem.md)，引理 4.2，审查时第 228 行。原句是：

> 分别选择任意 $(f,0,0)$、$(0,b,0)$、$(0,0,d_{\rm in})$ 并取 traces，即比较了全部 response data，而不只是 homogeneous $G$。

### 完全位于声明模型中的反例

取 $m>0$、$0\le t\le T$、$0\le x\le1$，

$$
L=\partial_t^2-\partial_x^2+m^2,
\qquad u(t,0)=u(t,1)=0.
$$

给定联合数据

$$
u(0,x)=q(x)=x(1-x),\qquad
\dot u(0,x)=0,\qquad
f(t,x)=2+m^2x(1-x),\qquad b=0.
$$

它有显式光滑解 $u(t,x)=q(x)$，因为 $Lq=2+m^2q=f$。全部角点相容性由这份实际光滑解保证；区域也是最简单的 admissible rectangle。

若把同一数据拆为 force-only 与 initial-only：

1. 对 $(f,0,0)$，零初值与 PDE 强制 $u_{tt}(0,0)=f(0,0)=2$。
2. 对 $(0,0,(q,0))$，PDE 强制 $u_{tt}(0,0)=q''(0)-m^2q(0)=-2$。

但每一份光滑 Dirichlet 解都必须满足 $u_{tt}(0,0)=0$。因此两份分量各自都不属于声明的光滑允许域，尽管其总数据属于允许域。

这不是一个无效的“挑了不相容输入”攻击：被测试的是**对一个相容输入进行原句所用分解**的合法性。把两个不光滑分量相加可能恢复光滑，也不能使这两个分量成为原光滑响应映射的合法输入。

### 影响到哪里

记完整允许域为 $\mathcal D_{\rm adm}\subset\mathcal J\times\mathcal B\times\mathcal D_{\rm in}$。上例表明

$$
\mathcal D_{\rm adm}\ne
(\mathcal D_{\rm adm}\cap(\mathcal J\times0\times0))+
(\mathcal D_{\rm adm}\cap(0\times\mathcal B\times0))+
(\mathcal D_{\rm adm}\cap(0\times0\times\mathcal D_{\rm in})).
$$

只比较坐标轴上的合法数据，不能据此覆盖整个联合域。受影响的是 **F06 的这一步证据**，并非已找到 F02、F07 或定理 F 的反例。引理前半段“在同一个完整相容元组上装配，再用唯一性比较”的路线不受此例推翻。

本稿 §2.2 已明确禁止这种拆分；`notes/02_three_cut_calculus.md` §2.2 也保留了联合域限制。相邻包 `principal_bundle_sewing_v2/notes/02_boundaries_sources_and_reopening.md` §2.3 更已写出同一个多项式例子。因此应修正的是遗留证明句，而不是把它包装成此前无人知道的新障碍。

**建议改写：** 对每个完整相容 $(f,b,d_{\rm in})$ 直接比较解与全部 traces；仅在支撑远离 caps、各个分量分别相容的探针子域上，才分别读取 $G,H,\rho,D$ 等独立响应块。

Verified: Mathematica 精确返回 $Lq-f=0$、force-only 角点值 $2$、initial-only 角点值 $-2$。相邻主丛包原有 `compatible_corner_tuple_fails_componentwise_split` 检查也在本次重跑中通过。

Assumptions: 正质量、静态有限条带、齐次 Dirichlet walls、要求解在初始角点光滑；没有改变本包的 regularity。

Not verified: 此反例没有证明完整联合域上的 F06/F07 为假；本次未改写其证明，也没有构造新的通用 IBVP solver。

可复核的最小 Wolfram Language 输入：

```wl
Clear[x, m];
q = x (1 - x);
f = 2 + m^2 q;
{Simplify[-D[q, {x, 2}] + m^2 q - f],
 f /. x -> 0,
 (D[q, {x, 2}] - m^2 q) /. x -> 0}
(* {0, 2, -2} *)
```

## 2. 已有反例的复查：不能再次当作当前定理的漏洞

这些是本稿已经承认并用于限定范围的失败机制。本次复核后仍成立，但不计作新增反例。

| 攻击对象 | 显式见证及复核 | 对当前正文的判定 |
|---|---|---|
| Null trace/flux matching 足以保证光滑 | $A=\sum_{n\ge0}(-m^2/4)^nu^{n+1}v^n/[n!(n+1)!]$，$u_+=\theta(u)A$；场和切向跳跃为零，横向跳跃为 $1$。有限截断的实际末项残差已重跑检查；无限级数的局部收敛靠阶乘估计。 | 原文 F03 已承认；F04 要求全部 seeds，不能用这个被排除的 kink 推翻 F04。 |
| 不撤掉 Robin closing action 仍得到 transparent seam | 保留时产生 $\sigma_1+\sigma_2$ 的界面势；原脚本 `mutation_retained_Robin_is_detected` 本次得到非零 discrepancy 约 $0.0561$。 | F05 明确要求完整移除。 |
| 局部可积就没有 boundary Ward contact | $P_s(\tau)=s/[\pi(\tau^2+s^2)]$ 在 $s\downarrow0$ 时趋于 $\delta(\tau)$；其积分恒为 $1$。原有三个数值积分及独立 Mathematica 积分已核对。 | 支持 A02 的拒绝判断；不否定仅主张 potential-graph $L^1$ 延拓的 P02。 |
| 任意 compact $\eta$ 的 $\int j\cdot d\eta$ 都是非零局部通量 | 对无源守恒流，分部积分给零；加入独立窗口 $\chi$ 后 $\int\chi j\cdot dh$ 可非零。窗口 Stokes identity 和非零值均重跑通过。 | S03 已使用正确窗口。 |
| 不运输 normal ordering 仍可使用同一 interaction | $\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2$；有限 Wick 运输及 cocycle 检查通过。 | 原文已保留 finite scheme 与 insertion 运输。 |
| 任意 filled junction 的 transition product 都可接受 | 取 $J=\bigl(\begin{smallmatrix}0&-1\\1&0\end{smallmatrix}\bigr)$、$K=\operatorname{diag}(1,-1)$，则 $JKJ^{-1}K^{-1}=-I$。Sage 精确核对。 | 不满足普通光滑填入顶点的 cocycle；不能用来反驳满足 cocycle 的 F07。 |
| 把所有 classical null data 直接当 quantum traces | Null conormal 与二点函数的 wavefront 可相交，普通 pullback 条件失效。 | Q02 已排除；本次只核查准入条件，没有用有限数值声称完成分布 pullback 定理。 |

## 3. 25 项 ledger 的逐条攻击记录

“未找到反例”均指在该行列出的前提内。有限采样成功不替代正文中一般证明。

| ID | 尝试的反例或失效机制 | 结果与限制 |
|---|---|---|
| F01 | 因果曲线越过 cap 后返回；phantom wall 反射重新影响内部；Robin 负模。 | $t-\tau_\pm(x)$ 沿未来因果曲线单调，阻止前两项；负 Robin 被 $\sigma\ge0$ 排除。未找到域内反例。 |
| F02 | 不相容 wall/cap jets、任意无限 jets、把相容总数据拆开。 | 联合相容性和 off-shell extendibility 排除前两类；FC-1 攻击拆分步骤，不否定声明的联合存在域。没有独立重证全部 extension estimates。 |
| F03 | 加正质量是否消除原 massless kink。 | 上节 massive 收敛级数仍给横向跳跃，支持其反例结论。 |
| F04 | 零 trace 但非零高阶 transverse jump；多面顶点额外 delta。 | 全部 junction seeds 与递推消去该跳跃；兼容 smooth jets 排除额外缺陷。未找到满足全部 seeds 的反例。 |
| F05 | 九种 D/N/R source charts；漏删一项 Robin 势。 | 九种完整移除检查通过，漏删确实改变结果；未找到完整移除后的反例。 |
| F06 | 只比较 $G$；外源响应遗漏；完整 tuple 的非法分解。 | 本次外部 quartet 检查通过，但 **FC-1 否定现有证明末句**；一般 tuple 必须直接比较。 |
| F07 | T/C、T/N、C/N 顺序改变；不合法 intermediate；junction holonomy。 | 合法几何的重组未找到反例；坏 intermediate 和不平凡可缩 holonomy 违反前提。原数值例不覆盖全部程序。 |
| F08 | 运动墙、任意高维或 pinching 几何。 | ledger 已明确未证明，不能把超出范围的失败当作当前肯定命题的反例。 |
| Q01 | reflected wavefront、方程理想不保持 Wick 乘法、旧 tensor product 缺少 crossing labels、不同真空。 | joint collars、同一最终 $W$ 和输入 Q 正是必要限制。未找到在这些输入全部成立时的反例；没有独立认证一般边界 microlocal calculus。 |
| Q02 | Sharp null composite pullback。 | 原文明确不包含；这一失败机制支持范围限制。 |
| Q03 | 相同区域 marginals、不同跨区关联。 | 原文没有 canonical state-sewing 主张；相邻包两振子见证本次重跑通过。 |
| S01 | Robin source/response 混合、只匹配场而遗漏 improvement、带 twist 的不匹配参数。 | 全变分/source/junction covariance 会排除这些候选；未找到域内反例。 |
| S02 | 漏 surface energy；massive constant shift；Peierls 符号；不完整空间截面。 | 能量/source-work 与 shift generator 检查通过；允许的 shift 必须满足 $Ls=0$，并保留真实边界能量。未发现新增反例。 |
| S03 | 令窗口为全梯度，或令厚度趋零。 | 前者可能为零，后者未被准入；固定独立平滑窗口的陈述未被推翻。 |
| S04 | 以 observable kernel 定义 proper gauge。 | 本包明确推迟 gauge 分类；不对未作出的 gauge 定理下结论。 |
| P01 | 实际耦合 blow-up 或发散级数；不相容高阶初值。 | 只声明合法源域上的形式系数；实际耦合反例不反驳逐阶归纳。式 (2.5) 另有排版损坏，见 §6。 |
| P02 | 多条 reflected light-cone logarithms 同时碰撞，或多顶点积变得不可积。 | 有限个 log 因子分别属于任意有限 $L^p$，Hölder 保持 $L^1$；导数顶点及未固定 self-contractions 不在本命题内。未找到域内反例。 |
| P03 | 用 sharp indicator 乘 $\delta'$ contact。 | 这种乘积确实不能任意定义，但 P03 只把分区用于已有 $L^1$ graph；实际 contacts 使用 smooth collars。 |
| P04 | 漏 stress/potential 双收缩，错把 $P''$ 当零。 | $\phi^4,\phi^6$ 和 polynomial commutator 检查通过；原文只作短距离 chiral 计算，不是完整 massive boundary stress。 |
| P05 | $n\ge2$ 的 proper subcollision；边界单顶点 Ward defect。 | 明确假定低阶 subcollisions 已按一致 scaling/Ward bounds 处理；未找到满足这些假定的 primitive 反例。该假定未由本次数值证明。 |
| P06 | 要求当前文本给出全部 boundary stress/force contacts。 | 已明确未构造；不能因图级 checks 通过而升级。 |
| P07 | 在缺 P06、缺某个 intermediate extension 时要求全量相互作用粘合。 | 不满足比较定理前提；完整无条件构造仍未验证。 |
| A01 | 丢失 field/action/source labels，只保留抽象 closed algebra。 | Dirichlet 零 trace class 无法记住新开放的 trace；支持原文拒绝裸代数充分性的判断。 |
| A02 | 用 $L^1$ 证明没有 boundary contact。 | 单位质量 Poisson kernel 复核成功；支持拒绝判断。 |
| A03 | 由有限 checks 推出所有连续分析假设。 | 测试程序实际只作指定符号、核值、积分与几何检查；支持拒绝判断。 |

## 4. 正文及三份来源快照的额外覆盖

这张表补足 ledger 没有逐项命名的 statements；相同公式的重复出现沿用同一个判定。

| 文件与部分 | 额外攻击点 | 审查结果 |
|---|---|---|
| `notes/01` §§1–5；`notes/02` §§1–6 | $\Pi=-\partial_n\phi$ 的取向；Green feedback 的正负号；Cauchy 的两份数据；Goursat 的 $dt\,dx$ 与 $du\,dv$ 因子；mixed kernels。 | 对照 action、角点递推和现有检查；未找到新增符号反例。FC-1 保留为确定问题。 |
| `notes/01` 后续范围与证明接口 | 非凸 cells 的任意合并、self-sewing 复制整份场、量子 state 唯一性。 | 正文均有限定；不把这些较强命题归给它。 |
| `notes/03` 全篇 | 形式递推、graph 延拓唯一性、finite scheme、stress contact、power counting、条件性 all-order theorem。 | P01–P07 覆盖；不能用引入导数顶点后的失败推翻无导数命题。 |
| `notes/04` 全篇 | 离壳 Ward 定义、affine 参数匹配、窗口流、表面能量、shift generator 与 central term。 | 完整 improvement、合法 support 与 source transport 是有效限制；未找到新增反例。 |
| `notes/05`、`notes/06`、README | 已修复反例是否仍被无条件主张；测试是否冒充证明；术语和阅读指引。 | 保留 FC-1 的文本冲突；已有反例归入 §2，开放问题保持开放。 |
| `sources/observable_first_sewing.md` §§1–4 | Fixed-history 商、action-first transmission、boundary quartet、source polarization。 | 普通固定-history 商确会丢响应；本快照已引入响应与合法 trace 域。未发现新的域内反例。 |
| 同上 §§5–7、附录 A | Polynomial/microcausal 闭合；physical-boundary collar；joint labels 不是有限 tensor 分解；on-shell ideal。 | 不能用被排除的旧任意 history-family 来反驳本函数类；量子结论仍依赖其声明的核输入。 |
| 同上 §§8–10 | Coincidence subtraction、Robin energy、显式 interval kernels、closing removal。 | 沿用已重跑的 Wick、energy、D/N/R 诊断；未独立重跑该快照提及而本包未附的所有历史脚本。 |
| 同上 §§11–12、附录 B | Renormalization contacts、形式性、有限 checks 的证明力。 | 原文分开条件性 theorem 与已算 sector；无条件全相互作用结论未成立，也未被其正确范围宣称。 |
| `sources/standalone_binary_observable_sewing.md` §§0–6 | 独立 standalone ontology、完整源响应、真正 closed intermediate、binary associativity。 | 攻击只存 $G$、偷用目标核、未删除 closing；原文均要求 action/source-enrichment，未找到另外的反例。 |
| 同上 §§7–10 | 混合 D/N/R、twisted self-sewing、Q 输入、Wick composite、表面能量和 Casimir subtraction。 | 逐项检查取向与范围；没有把不同动力学的 $W$ 差当作 smooth Wick shift。一般 Casimir 数值没有在本次另作高精度复算。 |
| 同上 §11 | Nonlinear source map 的 chart singularity；齐次 well-posed 不蕴含 opening 正则。 | 只在共同 smooth sourced-map 存在域成立；奇异 chart 正是原文已排除/指出的机制。 |
| 同上 §12 | Boundary potential graphs 的对数乘积；导数插入；永恒 coupling；all-order Ward。 | 有限窗、无导数、固定 tadpole 等限制阻止这些越界反例；未独立证明全部 extension 输入。 |
| 同上 §§13–16 | Time-slice representative 符号、null feed-forward、corner seeds、辅助量子 trace。 | 原文已区分三种 causal 类型；Bessel/Goursat 与 Cauchy 诊断通过。 |
| `sources/symmetry_and_closed_sewing.md` §§0–6 | Fractional-linear quartet 变换、Robin mixing、twisted diagonal、完整 Ward descent。 | Invertibility 只在指定源域使用；保留缺失 improvement 会构成失败，但原文已要求它。 |
| 同上 §§7–9 | Charge balance、surface-energy subtraction、solution shifts、Heisenberg cocycle、高阶局域 symmetry $\partial_x^3$。 | 检查 $Ls=0$、完整 operator domain、circle/interval 区别；把 circle 的空间平移套到 Dirichlet interval 不合法。未发现域内反例。 |
| 同上 §§10–11 | Moving presentation 与 moving wall；twist 顺序；network holonomy centralizer。 | 固定输出几何的 presentation 变换不等于真实运动墙；centralizer 结论只在声明的常内对称与 transition 条件下检查。 |
| 同上 §§12–16、附录 A | Wick prescription、renormalization cocycle 与 anomaly、gauge 延续、局部无限小作用是否已有有限流。 | 原文保留 adopted inputs 与未决 gauge 问题；没有据有限检查认证全量 anomaly cancellation。 |

## 5. 本次实际执行的检查及其边界

1. **原始文件身份。** 添加报告前，`BUILD_MANIFEST.json` 列出的 21 个文件全部匹配其 SHA-256；`COMPLETE_NOTE.md` 含六篇正文的对应完整文本。审查入口 `CLAIMS.json` 的 SHA-256 为 `73c8c3ac7ec5115a582ec90be8f1898d21962a82c805b92fd09839c9bf0e30a2`。
2. **本次重跑 73 项原程序非几何检查：73/73。** 使用临时副本，仅去掉 Shapely 两个 imports，并从执行列表移除 `test_geometry`；其余函数保持原样。原文件及归档结果没有被运行覆盖。环境为 Python 3.14.3、NumPy 2.4.4、SciPy 1.17.1、SymPy 1.14.0。
3. **13 项几何/代数对应复核：13/13。** 环境缺 Shapely，未安装依赖，故没有声称原 86 项脚本原封不动重跑。用 SageMath 10.9 的精确有理 `Polyhedron` 按原有三种顺序切 $[-1,1]^2$，切线为 $x=0,t=0,t=x,t=-x$；均得 8 个 cells、总面积 $4$、两两重叠面积 $0$、完全相同的顶点集合。再检查原几何函数中的 5 项面类型与矩阵关系。它认证这些指定 arrangement，不认证一般 PDE。
4. **新审查见证。** FC-1 的三个精确残差为 `{0,2,-2}`。对 Poisson kernel 的全实线积分，Mathematica 在 $s>0$ 假设下给 $1$。
5. **历史证据。** 包内 `results/checks.json` 记载的是原始 86/86，不能与本次 73 加 13 项对应复核混称同一次原脚本执行。来源快照列出的外部/历史检查未全部重新执行。

Verified: 上述有限计算、给出的显式反例以及审查前的文件身份。

Assumptions: 所有未找到反例的判断严格保留各条的几何、光滑度、源域、态/处方和继承输入。

Not verified: 未独立重建全部边界 microlocal theorem、全部 smooth-extension estimates、任意 mixed-program PDE、全部 Ward normalization 或引用文献的全部证明；“未找到反例”不能替代这些证据。

## 6. 非反例的文本问题与修改范围

`notes/03_quantum_and_renormalization.md` 式 (2.5)，审查时第 65–73 行，多个预期的 `^\rho` 已变成换行后的 `ho`。这是公式源码的可读性问题，**不是** Neumann/Green 展开错误的数学反例。原 manifest 的“display delimiters 成对”检查并不能认证这类公式内容。此处保留记录，未修改原公式。

本次仅新增本报告并在本目录 README 增加入口；未改正文、来源、claim 状态或旧结果。原 manifest 对应审查前版本，README 的新增入口及本报告不在那份历史 manifest 的范围内。
