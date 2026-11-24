# arXiv 日读补记 — 2026-11-16

**本次优先阅读顺序：BMS 荷代数 → massive scalar 的保辛边界编码 → finite-$N$ giant-graviton 量子化。** 前两篇最贴近当前 CPS／边界与量子化，第三篇提供扩充空间、约束冗余和物理 quotient 的精确代数例子。

北京时间 **2026-11-16 14:00** 启动，三分类官方列表均为 **Monday, 16 November 2026**。[完整 inventory](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/16/2026_11_16_inventory.md>)共 **161个去重 ID：46 new、57仅 cross、58 replacement**；分类出现次数 hep-th 71、gr-qc 41、math-ph 74。已筛全部161项 metadata；清单附全部 ID 的官方 primary-first 分类补表，不把 helper 的排序 subjects 当 primary。

**同日输出的并发说明：** 写入与追加[当日总览](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/16/2026_11_16_overview.md>)期间，检测到另一个运行将它改成含 OPE 第三篇深读的版本，而本次第三篇是 giant graviton。为保护并发内容，本次不再覆盖／合并该总览，后续导航、短介与版本追踪独立保存在本补记。不能将另一运行的 OPE 计算算作本次独立复算。

## 本次完成的三篇深读

1. **[BMS charge algebras from Carrollian energy-momentum commutators](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/16/BMS charge algebras from Carrollian energy-momentum commutators (2611.17424v1).md>)** — [2611.17424v1](https://arxiv.org/abs/2611.17424v1)，Ecker、Montecchio、Prohazka、Salzer。重建源 Ward→seagull/contact→局域 bracket→BMS 荷的链。当前用途是区分 fixed-source bracket、shear flow、真正 flux、improvement 和 BT bracket。独立检查 anomaly 线性化、中心项／Jacobi、mass balance、非恒曲率几何及一个非零 cocycle 积分。**核心保留：** news 的一点函数字典不能无条件升级为普通单源 $W[C]$ 对任意源的梯度，Hessian 对称性有障碍；完整 quantum contact algebra 未定。

2. **[Projection of massive and interacting conformal theories to the future null infinity](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/16/Projection of massive and interacting conformal theories to the future null infinity (2611.17943v1).md>)** — [2611.17943v1](https://arxiv.org/abs/2611.17943v1)，Costeri、Dappiaggi、Ferrari，56页。Minkowski 固定质量 cutoff 的边界级数能量收敛，受控全局 cutoff removal 的分布极限却为零。time-slice＋past-compact switching 给保辛、注入编码，image 等于 massless image，但逐 observable 的字典和态仍依赖 switching。当前用途是明确“同 image／CCR 不等于同动力学、局域网或真空”。重建线性定理及 formal interacting 部分，复算边界归一化、stress 极化、Wick 系数与 switching mode。**公式保留：** (4.18)与(4.21)符号冲突、(4.19)系数冲突，已从前置 stress tensor 重建所需双线性表达；不影响 §3 的线性结果。

3. **[Geometric Quantization of the Giant Graviton Master Moduli Space](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/16/Geometric Quantization of the Giant Graviton Master Moduli Space (2611.18539v1).md>)** — [2611.18539v1](https://arxiv.org/abs/2611.18539v1)，Budzik、Gaiotto，37+21页。非 derived 层面，$N$-independent open loop equations 加 determinant degree 精确实现 finite-$N$ trace relations；derived BRST 还需 ghosts-for-ghosts、open-to-closed trace map 与指定 relative zeromodes。当前用途是检验扩充态空间如何避免 giant／closed string 重复计数。读完主文和附录 A–C，Sage 重算 OLE ranks，并增加四字母 sector，与 Schur–Weyl 维数一致；检查 Lie closure、generic $2\times2$ trace identity、CP1 flux、$k=1$ contour。**核心仍是猜想：** 大辅助秩 cohomology 完备性及 Murthy expansion categorification。index matching 不证明同调同构，作者全套 ghost-resolved tables 未在本次重算。

三篇均按主文逻辑及所用附录完成技术解释，不以摘要或 source map 代替深读；计算与来源主张的证据边界见各笔记。

## 十篇短介

以下为官方摘要／comments 级阅读，个别只为明确结论定点读导论。均未作全文分解、常规 CAS 或独立证明；结论归属作者，相关性与限制是本次判断。

1. **什么 probes 才能看见“连通”？** Balasubramanian、Nemoto、Shigemori，[2611.17404v1 — Superstars, quantum wormholes and von Neumann algebras](https://arxiv.org/abs/2611.17404v1)。另定点读了导论正文2–3页：作者报告 entangled heavy half-BPS states 的 large-$N$ coarse-probe algebra 为 Type I，fine bosonic／fermionic probes 可给 Type II∞ 或 Type IIIγ（γ非0、1），据既有 algebraic-connectivity 判据解释为 quantum wormhole。对 regional algebra／sewing 最有用的是“连通性判断依赖指定 probe algebra”，而非不依赖可观测量的几何标签。仅研究 BPS-sector probes，未复核完整 type classification，故保留短介。

2. **Microcausality 不只约束群速度。** Creminelli、Mancini、McBlain，[2611.17407v1 — Microcausality Bounds on Dispersion Laws](https://arxiv.org/abs/2611.17407v1)。在 tree-level、无耗散、低动量线性 dispersion 假设下，用 typically-real functions 和 Toeplitz determinant hierarchy 将 retarded singularities 的复动量因果性变成高阶系数双边界；声速趋1时允许修正收缩，并限制收敛半径／新态尺度。对当前 Green functions 和模式截断有用：低阶 subluminality 不足以保证复平面因果性。本次未核验 sharp bounds，也不扩展为任意耗散谱定理。

3. **AdS3 polar spectrum 的 contour 也是定义的一部分。** Lee、Li，[2611.17437v1 — Polar states in AdS3 holography](https://arxiv.org/abs/2611.17437v1)。作者提出 finite-$N$ Sym$^N$(K3) 每个 polar indexed degeneracy 可由有限组 asymmetric AdS3×S3 orbifolds 的一圈贡献精确恢复；supergravity 算经典荷，tensionless worldsheet 加 Gauss constraint 算 BPS partition function，grand-canonical genus 的 linear-pole residues／Farey chambers 指定依赖 charge 的 contour。对 AdS3 谱和约束计数有潜力，但指数、特定 tensionless 描述及 contour 条件均不能删去；今天没有重算55页的 spectrum／residue 链。

4. **同一个 dS 表示，不自动给归一化的边界字典。** Bajalan、Gazeau、Pejhan，[2611.17380v1 — Toward a Holographic Representation Theory of the Bosonic de Sitter Discrete Series](https://arxiv.org/abs/2611.17380v1)。对 dS4 非标量 bosonic discrete series，提出将 bounded-ball realization 与 gauge-reduced covariant spacetime realization 各自送到 S3，再构造带 invariant norm 的 unitary intertwiner。贡献主要是明确两套 boundary constructions 的 compatibility 问题与研究路线，不是已完成一般自旋的 holographic equivalence。对 AdS/dS 模式的规范 quotient、内积和 representation matching 有方法价值，但现阶段不直接替代现有辛归一化，故不升级深读。

5. **没有 conformal flatness，仍能有统一 correlator generator。** Xinan Zhou，[2611.17486v1 — Hidden Geometric Structure Beyond Conformal Flatness](https://arxiv.org/abs/2611.17486v1)。在6D (2,0) theory 的 half-BPS surface defect（dual M2-brane／AdS7×S4）中，报告无限 tower 的 tree-level supergravity two-point correlators 可由最低权重一个 correlator 生成；重组 rational terms 后生成函数是内部 S4 上的 weighted average，通过平移 spacetime cross ratios 作用。对 KK tower／模式和的统一表示有用，但不是一般曲背景 Green function 的共形映射，也未涉及本地 CPS 约束，暂作紧凑计算方法储备。

6. **QNM 谱如何重建复时间 singularity。** Valach、Vrbica，[2611.18520v1 — The Spectral Anatomy of Complex-Time Singularities](https://arxiv.org/abs/2611.18520v1)。从 Fourier space 推导边界 correlator 的奇异性，区分固定 $k/\omega^\gamma$ 与固定 $k/\omega$ 的两种 QNM scaling：前者恢复零空间分离的 bouncing-geodesic 信息，后者控制非零分离与 complexified bulk；给一般维数及更特殊 interiors 的指数和系数。对当前谱求和／解析延拓很合用，尤其提示不能用同一高频极限替代不同观测点的 asymptotics；但今天未复核其 QNM 完备性、contour 和适用几何，暂不直接作为现有一圈行列式算法。

7. **曲背景 OPE 的局部输入。** Chavda、Podo、Staunton，[2611.18415v1 — Gravitational Corrections to OPE Coefficients](https://arxiv.org/abs/2611.18415v1)。对任意背景、曲率一阶，在一般维数计算 interacting OPE 的短距离曲率修正，例子包括 cubic／quartic scalar 与强耦合 CFT，并报告对 observer-worldline 时间涂抹程序的检验。对当前 curved-space perturbation、Hadamard subtraction 和区域 observable 的短距离定义很贴近；但摘要不能替代 descendant basis、分布域和涂抹证明，故本次仅作短介。另一个并发运行已在同日总览列出它的深读，本次未复核那个计算，不能据此计为自己的第四篇。

8. **Nahm pole 与 Neumann＋边界 fermions 的镜像计数。** Okazaki，[2611.18118v1 — Mirror symmetry of N=(0,4) boundary conditions with Nahm poles](https://arxiv.org/abs/2611.18118v1)，152页。提出3D N=4 非 Abelian gauge theories 的边界 mirror duality，用 principal su(2) embedding 的 Higgsing 从 Dirichlet half-index 得 Nahm pole half-index，并与含 boundary Fermi multiplets 的 Neumann 结果匹配；twist limits 给 boundary VOA vacuum characters，写成 eta-quotients 乘 quasimodular forms。可为边界条件、额外边界自由度与受保护谱的比较提供实例，但 index agreement 不单独证明完整 boundary operator algebra／CPS 等价；与当前模型的直接接点尚需选定，今天只作短介，不因篇幅长而留下未完成 source map。

9. **Nilpotent gauge group 能看见几阶 linking？** Nicosanti、Putrov、Quenta-Raygada，[2611.18237v1 — Link invariants in nilpotent group gauge theories](https://arxiv.org/abs/2611.18237v1)。对3D untwisted Dijkgraaf–Witten theory，作者把 n-step nilpotency 与可探测至 n+1 components、但不再探测更高 components 的 Brunnian links 联系，并以 Milnor invariants 决定相关期望值；连续 nilpotent Chern–Simons theory 提供平行构造，跨有限／连续理论的 Lazard 对应仍是猜想加例证。可作为 CS／BF 量子化中“选定 line observables 能区分哪些拓扑信息”的测试模型；今天未重建61页的证明和非紧群积分定义，也不把 link-invariant 对应当一般边界 sewing 等价。

10. **Type III 上的局域可测量精度，不借假想 density matrix。** Fröb、Much，[2611.17948v1 — Local Quantum Metrology: Precision Limits for Observers in QFT](https://arxiv.org/abs/2611.17948v1)，primary quant-ph，cross hep-th／math-ph。用 Uhlmann transition probability 在任意 von Neumann algebra 上定义 SLD／Bures quantum Fisher information，证明 collective measurements 的 quantum Cramér–Rao bound，并报告其 sharpness 与区域内测量所得 classical Fisher information 最大值相等。对区域量子态与可访问 observable algebra 的操作定义很有价值，尤其避免把 Type III 的 normal states 写成带普通 trace 的 density matrices；但今天未核对可微性、无穷维 measurement／attainment 条件，暂不作为现有 sewing construction 的已验证定理。

## 版本追踪：旧短介／候选，不冒充旧详读

58个 replacement ID 与现有 `paper id` frontmatter 对照，未命中已建的详细笔记；与旧 daily overview 对照有下列相关条目。只核对官方最新摘要、comments 和 version history，不重读新版全文、不改旧笔记。旧记录未固定版本处明确标出，不能把元数据更新说成旧计算已经复核。

| 论文与旧本地记录 | 旧记录 → 官方最新 | 本次可确认的变化及用途 |
|---|---|---|
| Carrollian MMG，[11/09短介](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/09/2026_11_09_overview.md#L39>) | 旧短介未固定版本 → [2611.09209v2](https://arxiv.org/abs/2611.09209v2) | comments 仅说 added a reference；仍是 degenerate flavor metric 与 canonical surface charges 的后续候选，未显示今日新增技术结论。 |
| Quantum NSF Bondi balance，[10/14候选](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/10/14/2026_10_14_overview.md#L84>) | 元数据 v1 → [2610.14484v2](https://arxiv.org/abs/2610.14484v2) | **改题与实质摘要变化：** 新题强调 physical amplitudes 和 numerical energy-balance test；空间三动量守恒为主要解析结果，能量守恒仍开放，只在 unitary approximation／有限 cutoff 的 connected channels 作趋势检验。与当前 balance laws 相关，不能将数值 residual 减小当完整 quantum energy conservation。首次 abs 返回旧 v1，与新列表题名冲突；一次 fresh-query 官方页已确认 v2。 |
| Free-in-bulk fermion defects，[10/14候选](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/10/14/2026_10_14_overview.md#L78>) | 元数据 v1 → [2610.14176v2](https://arxiv.org/abs/2610.14176v2) | 仍为53页；abstract／comments 未说明此次具体改动。bulk Dirac constraints、双 shadow channels 与 interacting defect fixed point 仍有边界模式用途，但无法据 metadata 判定新技术增量，不因 replacement 自动升档。初次缓存为v1，已因其与 replacement 状态不符而用一次 fresh-query 确认v2。 |
| Regular AdS black-hole QNMs，[10/23候选](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/10/23/2026_10_23_overview.md#L120>) | 元数据 v1 → [2610.30915v2](https://arxiv.org/abs/2610.30915v2) | comments 明说 minor changes、references added；WKB／complex geodesics 与本日 spectral-anatomy 短介相邻，但不能据此认定一般量子引力已解析消除奇点，不因小修重读。 |
| Quadratic-gravity near-extremal EFT，[08/08候选](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/08/08/2026_08_08_overview.md#L235>) | 旧元数据未固定版本 → [2608.05268v2](https://arxiv.org/abs/2608.05268v2) | 更新至 PRD 刊本；abstract 强调有限曲率不变量不排除 infalling tidal forces 发散，near-horizon 与 asymptotically-flat exterior 的连接须另查。与极限控制相关，但 comments 不提供逐项技术改动，仍属次级候选。 |
| GS torus／collective superintegrability，[09/02元数据](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/09/02/2026_09_02_overview.md#L56>) | v2 → [2608.01878v3](https://arxiv.org/abs/2608.01878v3) | v3 accepted version 新增 examples subsection、解释及图；v2 对 Lemma 2.11 措辞的修正不是本次新增。可供有限维 momentum-map／reduction 例子参考，未据此建立引力场论 CPS 应用。 |
| Nicolai-map supergravity，[09/03元数据](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/09/03/2026_09_03_overview.md#L55>) | 旧记录未固定版本 → [2605.29990v3](https://arxiv.org/abs/2605.29990v3) | comments 标明 JHEP 刊本；perturbative map／determinant matching 至 $\kappa^2$ 的路线可作量子化方法储备，未读其76页，不能把受指定 ansatz／阶数约束的论断升级为任意 Einstein gravity 的一般 no-go。 |

## 留下的候选与本次边界

下列只筛了官方列表 metadata，**未读摘要或全文**；不是承诺下一次自动深读的队列。

- [2611.17370 — Algebra-Valued Yang-Mills-Type Theories](https://arxiv.org/abs/2611.17370)：若要寻找新的约束／规范代数测试模型，可再看其具体 action 与 invariant pairing；题名本身不保证存在可用的边界相空间。
- [2611.17457 — Pais–Uhlenbeck Poisson structures](https://arxiv.org/abs/2611.17457)：适合作高阶导数理论“同方程、不同 Poisson data”的有限维反例候选，需先确认其非退化性与量子化条件。
- [2611.17810 — sine-dilaton／JT](https://arxiv.org/abs/2611.17810)：与二维可算量子引力相邻；未因热门模型名直接升档，待有具体谱或边界约束需求再取正文。
- [2611.18555 — derived categories／line operators](https://arxiv.org/abs/2611.18555)：与本日 giant-graviton 的 derived／cohomology 问题方法上相邻，但 metadata 不足以建立两者对应。

全程主 agent 串行；没有用子代理作独立复核。深读中的 CAS／精确有限 sector 检验不代替一般定理，也没有重算作者未核验的全部表格。未改旧日笔记、未提交 Git；论文与计算中间产物均在 vault 外。

**最终聚焦复核已完成一次：** 重新读取当前三篇详读与本补记，核对结论力度、公式约定和并发边界；修复 BMS 笔记一处 `\tfrac` 被写成制表符的排版错误，未改理论内容。程序核对 inventory 的161个唯一 ID 与 primary-first 补表完全一致，46／57／58及三分类计数吻合；三篇详读和本补记的本地文件链接、display-math delimiters 均通过，短介10项、版本记录7项。未再覆盖共享总览，也未对并发 OPE 笔记作核验声明。
