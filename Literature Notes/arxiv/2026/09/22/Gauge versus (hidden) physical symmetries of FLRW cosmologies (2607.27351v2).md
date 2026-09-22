---
paper id: 2607.27351v2
title: "Gauge versus (hidden) physical symmetries of FLRW cosmologies"
authors:
  - "Calcinari, Andrea"
  - "Delhom, Adrià"
  - "Greco, Federico"
  - "Oriti, Daniele"
  - "Rivero, Néstor"
publication date: 2026-07-29
abstract: |-
  In generally covariant theories, evolution in coordinate time is a gauge transformation, so that a symmetry made manifest in a gauge-fixed description need not be a symmetry of the physical dynamics. At the same time, deparametrisation removes gauge redundancies but may hide physical symmetries, in particular those that depend on the chosen physical clock. We investigate the relation between gauge and hidden physical symmetries in flat FLRW geometry coupled to an arbitrary number $n$ of free massless scalar fields. We show that conformal Killing vectors of the minisuperspace metric generate conserved charges that are Dirac observables and hence gauge-invariant. Their Poisson algebra realises the maximal conformal algebra $\mathfrak{conf}(n,1)\simeq\mathfrak{so}(n+1,2)$, extending previous single-field results to arbitrary $n$. We then revisit the Eisenhart--Duval lift in a family of gauges and show that the resulting symmetry algebra is gauge dependent. Only in the harmonic gauge does the algebra enlarge to the Schr\"odinger algebra, which is thus not a physical symmetry. Finally, we show that deparametrisation maps the lifted charges to gauge-invariant Dirac observables, which always realise a subalgebra of $\mathfrak{conf}(n,1)$, recovering it in full in the harmonic gauge. Our results provide a systematic framework for disentangling gauge from physical symmetries in minisuperspace models, recovering charges to which reduced phase-space descriptions are structurally blind, and extending naturally to models with potentials.
comments: "25 pages + appendices + references; v2: matches published version"
url: https://arxiv.org/abs/2607.27351v2
summary: "Separates weak Dirac conformal charges from gauge-fixed ED symmetries, reconstructs relational trajectories, and checks the non-Poisson clock map and exceptional domains."
tags: []
---

# Gauge versus (hidden) physical symmetries of FLRW cosmologies

## 结论与适用域

**Source-derived:** 对 flat FLRW 加 $n\geq2$ 个 free massless scalar，minisuperspace 的共形 Killing 荷构成 $\mathfrak{so}(n+1,2)$ 的 weak Dirac observables。Eisenhart–Duval (ED) lift 在固定 lapse 后显示的守恒代数依赖 gauge：$N=\alpha z^\beta$ 的 generic $\beta\ne2$ 为 $\mathfrak{sl}(2,\mathbb R)\oplus\mathfrak{iso}(n)$；harmonic $\beta=2$ 才有 Lorentzian Schrödinger enhancement。后者含不是 Dirac observable 的显式坐标时间荷。

选用合适 clock、代入 clock-adapted 参数并重新计算像的 Poisson closure，可以恢复有限维共形荷。**这不是原 Schrödinger 代数的 Poisson homomorphism，也不是完整 GR 的对称分类。** $n=1$ 有无限维 local Witt$\oplus$Witt 例外；有限个 ED 荷的 closure 不能自动恢复整个无限维代数。主文已专门说明二维例外，摘要的“任意 $n$、maximal finite algebra”须据此收窄。

**Checked:** conformal-coordinate Poisson brackets、弱守恒、harmonic ED conservation、clock substitution、regular null-cone rank、二维/高维 curvature 区别。**Failed:** footnote 14 将 clock origin 改变说成仅差 constraint term，通常不成立；原 (4.13) 中间式的号与 (4.7)/(4.15) 不一致。以下不依赖这些错误。

## 全文章节树与分组阅读

34 页 PDF，正文页码 1–30 加参考文献；作为长文按三组顺序读取。

| 组 | 原节 | 实际内容与依赖 |
|---|---|---|
| 约束与钟 | 1 Introduction | full superspace 的 strata/空间导数障碍，限定 minisuperspace |
| 约束与钟 | 2 Time-reparametrisation invariance and relational observables | 一阶约束、gauge flow、complete observables、deparametrisation、clock-adapted lapse |
| 约束与钟 | 2.1 Constrained mechanics with a field space metric | null supermetric dynamics、square-root Hamiltonian、退化 Legendre map、选钟后的 manifest isometries |
| 物理荷 | 3.1 Relational dynamics of flat FLRW cosmology | matter clock 与 geometric clock 的显式轨道 |
| 物理荷 | 3.2 Hidden symmetries via conformal Killing vectors | CKV 荷、canonical conformal coordinates、共形代数、$n=1$ 例外 |
| gauge 与投影 | 4.1 The lift in a family of gauges | power-law lapse、curvature filter、generic projectable 荷 |
| gauge 与投影 | 4.2 Harmonic gauge and Schrödinger enhancement | flat gauge、Bargmann central term、二维例外 |
| gauge 与投影 | 4.3 Deparametrisation and gauge-invariant content | matter/log-volume clocks、像与新增 closure、$z$ clock 的小子代数 |
| 展望 | 5 Conclusion and outlook | Bianchi I、非零势、量子 ordering 与 full theory 边界 |
| 构造补充 | A Brief review of the ED lift | 两个新坐标、null constraint、projectability、lapse filter |
| 重构补充 | B Counting charges and reconstructing relational dynamics | restricted Jacobian rank、独立荷选择、代数恢复轨道 |

## 全局记号与约束层次

$z=a^{3/2}>0$，$l_p=\sqrt{12\pi G}$、$c=V_0/l_p^3$；$\chi^i$ 是 $n$ 个 scalar。$t$ 是 gauge coordinate time，$T$ 是内部 clock，$h\approx0$ 是约束；$H=Nh$ 不等于 relational Hamiltonian $H_r$。$P_z=zp_z$ 是荷，与原 canonical $p_z$ 区分。本文另有 gauge exponent $\beta$，不是 scalar 或 velocity。

约束系统的 weak Dirac 条件是 $\{Q,h\}\approx0$，strong 为全相空间上严格零。完整 observable 由求解 $A_h^\tau(T)=t_*$ 的 $\tau_T$ 后取 $A_h^{\tau_T}(f)$ 得到。这里 $t_*$ 是指定 clock reading；clock 需 $\{T,h\}\ne0$，一般只是局部 chart，不保证全局单调或覆盖所有轨道。

解约束为 $p_T=-H_r(q^A,p_A,T)$ 后，$Q_r$ 守恒的正确条件是

$$\partial_TQ_r+\{Q_r,H_r\}_{red}=0.$$

因此显式 clock dependence 与物理守恒兼容。若只搜索与钟无关、线性动量的 Killing 荷，才会漏掉这类 symmetries；一般 reduced Hamiltonian 方法本身并非原则上无法找到它们。

## 从 null supermetric 到 FLRW 轨道

$S=\int[(2N)^{-1}g_{ab}\dot\phi^a\dot\phi^b-NU]dt$，本模型 $U=0$。variation of $N$ 强制 null condition；$p_N\approx0$ 是 primary，$h=\tfrac12g^{ab}p_ap_b\approx0$ 是 secondary。消去 lapse 的 degree-one action 说法在 massless/null 情形须小心：$U=0$ 时 lapse 方程给 null constraint，不能代数唯一解出 $N$。本笔记直接使用合法的 lapse formulation。

FLRW reduction 给

$$S={cl_p\over2}\int{dt\over N}\left[l_p^2z^2\sum_i(\dot\chi^i)^2-4\dot z^2\right],$$
$$g_{zz}=-4cl_p,\quad g_{ij}=cl_p^3z^2\delta_{ij},\quad h={\sum_ip_i^2\over2cl_p^3z^2}-{p_z^2\over8cl_p}.$$

约束 $\sum_iP_i^2=l_p^2P_z^2/4$。排除零动量 cone vertex，选 $P_n\ne0$ 的 matter-clock patch，

$$H_r^{matter}=\pm\sqrt{{l_p^2z^2p_z^2\over4}-\sum_{i<n}p_i^2}=-P_n.$$

常量 $P_z,P_i$ 给 $z(\chi^n)=z_0\exp[l_p^2P_z(\chi^n-\chi_0^n)/(4H_r)]$、$p_z=P_z/z$、$\chi^i=\chi_0^i-P_i(\chi^n-\chi_0^n)/H_r$。

若用 $z$ 作钟，$H_r^{geom}=\pm2\sqrt{\sum_ip_i^2}/(l_pz)$，$\chi^i(z)=\chi_0^i-4P_i\log(z/z_0)/(l_p^2P_z)$。平方根分支必须与 $p_T=-H_r$ 以及轨道方向固定；不能只凭“正频率”同时确定所有 clock 的膨胀分支。

## 共形坐标与完整的动量线性物理荷

对 $\mathcal L_\xi g=\varphi g$，$Q_\xi=\xi^ap_a$ 满足 $\{Q_\xi,h\}=\varphi h$；若 $N$ 依相空间，还多 $\{Q,N\}h$，仍只 weakly 零。**Checked:** xAct 对称收缩 CKV relation 给该局部动力学系数；此计算不证明任何 global group action 完备性。

canonical transformation

$$X^0=-{2\over l_p}\log z,\quad X^i=\chi^i,\quad P_0=-{l_p\over2}zp_z,\quad P_i=p_i$$

把 supermetric 写成 $cl_p^3e^{-l_pX^0}\eta_{\mu\nu}dX^\mu dX^\nu$，$\eta=\mathrm{diag}(-,+,\ldots,+)$；$h=e^{l_pX^0}\eta^{\mu\nu}P_\mu P_\nu/(2cl_p^3)$。

标准荷为

$$P_\mu,\qquad M_{\mu\nu}=X_\mu P_\nu-X_\nu P_\mu,\qquad D=X^\mu P_\mu,$$
$$K_\mu=X_\mu D-\tfrac12P_\mu X^2.$$

本文 special conformal normalization 比常见定义少因子 2。核心 brackets 是 $\{D,P_\mu\}=P_\mu$、$\{D,K_\mu\}=-K_\mu$、$\{K_\mu,P_\nu\}=\eta_{\mu\nu}D+M_{\mu\nu}$，Lorentz 作用按 tensor indices。$n\geq2$ 时共 $(n+2)(n+3)/2$ 个线性独立函数，非 functionally independent。

原变量的重要表示：

$$B_i={l_p\over2}P_z\chi^i+{2\over l_p}P_i\log z,\quad D=P_z\log z+\sum_i\chi^iP_i,$$
$$K_z={l_pP_z\over4}\left[\sum_i(\chi^i)^2+{4\over l_p^2}\log^2z\right]+{2\log z\over l_p}\sum_i\chi^iP_i,$$
$$K_i=\chi^i\sum_j\chi^jP_j-\tfrac12P_i\sum_j(\chi^j)^2+P_z\chi^i\log z+{2P_i\over l_p^2}\log^2z.$$

**Checked:** 在三维 minisuperspace ($n=2$) 逐个计算 $\{K_\mu,P_\nu\}$ 的九个 residual 都为 0；例如 $\{K_1,h\}/h=(2-l_pX^0)X^1$，明确是 weak 而非 strong conservation。

### 单标量与全局作用的例外

$n=1$ 时 minisuperspace 二维，local CKVs 是任意左右移动函数，形成 Witt$\oplus$Witt。$x_\pm=ze^{\pm l_p\chi/2}$ 显示原 metric 平坦，strict isometries 是 $iso(1,1)$。有限 $so(2,2)$ 只是 global/Möbius 子代数，不能与无限 local conformal algebra 等同。$n\geq2$ 的有限维最大数目公式不适用二维。

即使 $n\geq2$，CKV 的局部 Hamiltonian vector fields/荷代数也不证明每个 special conformal flow 在全部 $z>0$、所有时间上完备，或保持选定 clock patch。本文可用结论是 regular chart 上的 Dirac 荷，而非不附条件的全局 conformal group identification。

## ED lift：它扩大了哪个系统

附录 A 先固定 $\widetilde g=g/N,\widetilde V=NV$，加 $(u,w)$：

$$ds^2_{ED}=\widetilde g_{ab}d\phi^ad\phi^b+2du\,dw-2\widetilde Vdu^2,$$
$$h_{ED}=p_up_w+\tfrac12\widetilde g^{ab}p_ap_b+\widetilde Vp_w^2.$$

$p_w=1,h_{ED}=0$ 给 $p_u=-Nh$；投影 $u=t$ 恢复 gauge-fixed mechanical evolution，**并未自动施加原 $h=0$**，原 cosmology 还需该限制。由于 transverse metric 本身不正定，这个 ED metric 一般有两个 timelike directions；不能把此模型的 lifted signature 一概称为普通单时 Lorentzian。

保留 $[\Xi,\partial_w]=0$ 的 projectable CKVs，荷投影为 $Q=\Xi^w-Nh\Xi^u+\xi^ap_a$。其中含 $h$ 的项可能二次于原动量；“lifted 荷线性”与“投影后对原动量线性”也须区分。projectability 给 $\Xi^u=\Xi^u(u)$、$\Omega=\partial_u\Xi^u$，free 模型的时间重参数扇区为 $\{1,u,u^2\}$。原 CKV 通过 $\mathcal L_\xi\widetilde g=[\varphi-\xi(\log N)]\widetilde g$ 被 lapse 筛选；完整 mixed equations 还限制时间依赖部分。

附录对一般几何说“仅 flat metric 可有 transverse time-dependent charges”需要额外范围；这里只使用实际解出的 FLRW power-lapse family，不把它提升为所有 Bargmann 几何的定理。

## Power-lapse family 与 harmonic enhancement

$N=\alpha z^\beta$（$\alpha\ne0$，时向/正 lapse 按所选 patch），

$$\widetilde g={cl_p^3\over\alpha}e^{-l_p(2-\beta)X^0/2}\eta.$$

在 $n\geq2$，$\beta\ne2$ 的 metric 弯曲，projectable 荷为 $P_i,J_{ij}$ 及

$$\mathcal H=\alpha z^\beta h,\quad\mathcal D=\mathcal Ht+{P_z\over\beta-2},$$
$$\mathcal K={4cl_pz^{2-\beta}\over\alpha(\beta-2)^2}-{P_z t\over\beta-2}-{\mathcal Ht^2\over2}.$$

它们满足带显式 $t$ 的 conservation，不等于分别与 $h$ weakly commute。不能在 $\beta=2$ 直接代这些奇异系数，须重解 flat case。

在 harmonic gauge，令 $m=cl_p^3/\alpha$（此处是 Bargmann 常数，不是宇宙物质质量），可统一写

$$\mathcal H={P^2\over2m},\quad\mathcal D=t\mathcal H-\tfrac12D,\quad
\mathcal K=-{mX^2\over4}+{tD\over2}-{t^2\mathcal H\over2},\quad\mathcal G_\mu=tP_\mu-mX_\mu.$$

连同 $P_\mu,M_{\mu\nu}$ 构成 Lorentzian Schrödinger 代数；$\{P_\mu,\mathcal G_\nu\}=m\eta_{\mu\nu}$。**Checked:** Mathematica 验证 $\partial_t\mathcal D+\{\mathcal D,\mathcal H\}=0$、$\partial_t\mathcal K+\{\mathcal K,\mathcal H\}=0$、$\{\mathcal H,\mathcal K\}=-\mathcal D$。守恒包含 explicit derivative，因而不是 Dirac 检验。

对 $e^{2aX^0}\eta$ 直接从 Christoffels 计算，维数 $d=2,3,4$ 的 scalar curvature 分别为 $0,2a^2e^{-2aX^0},6a^2e^{-2aX^0}$。二维 conformal-flat metric 的曲率张量由 scalar 决定，故这个 power-lapse family 全部平坦；不能改说“任意函数 lapse”都平坦。高维结果显示此族仅 $a=0$、即 $\beta=2$ 平坦。

## Clock substitution 的像与重新闭合

选 $T=\chi^n=X^n$，$P_n\ne0$，clock-adapted $\alpha=cl_p^3/P_n$，于是 $m\to P_n$，$t\to X^n$，再限制 $h=0$：

$$\mathcal G_\mu\mapsto X^nP_\mu-P_nX_\mu=M^n{}_{\mu},\quad
\mathcal H\mapsto0,\quad\mathcal D\mapsto-\tfrac12D,\quad\mathcal K\mapsto\tfrac12K_n.$$

translations/Lorentz 已在像里；一个 $K_n$ 与 Lorentz brackets 再生成其余 $K_\mu$。因此是**像的 Poisson closure** 恢复 finite conformal algebra，不是直接线性像已经含全部生成元。用 $X^0\propto\log z$ 作钟得到 timelike special conformal seed；直接用 $z$ 作钟则适配 $\beta=1$，只留下 $P_z,P_i,J_{ij}$ 的小子代数，不能靠自身 brackets 生出缺失的 boosts/$K$。

**Checked / 重要边界:** 此代入不是 Poisson map：原 $\{\mathcal H,\mathcal K\}=-\mathcal D$，但像的 bracket $\{0,K_n/2\}=0$，原 bracket 的像却是 $D/2$，通常非零。Mathematica 给出该差 $D/2$。把原常数 $m$ 提升为动量 $P_n$ 后必须重新求 bracket；central generator 因此也不再 central。这是过程本身的结构边界，不否定所得各像是 Dirac observable。

**Failed, (4.13):** 从 (4.7) 的 $\mathcal G_0=-l_pP_zt/2-2cl_p^2\log z/\alpha$ 代入，应得 $-l_pP_z\chi^n/2-2P_n\log z/l_p=-B_n$；中间式印出第二项为正，与该代入和 (4.15) 的 $-M_{0n}$ 不一致。这里统一按 covariant $X_0=-X^0$ 保留负号。

**Failed, footnote 14:** 若替换 $t=T-T_0$，$\overline{\mathcal G}_i$ 比 $T_0=0$ 多 $-T_0P_i$，一般不是 constraint multiple。clock origin 改变可重新标记守恒荷基，但不能说两个荷 weakly 相等。

## 附录 B：独立荷不是所有生成元

regular constraint surface 去掉 gauge orbit 后维数 $2n$。在 $P_nP_z\ne0$ patch，可选 $P_1,\ldots,P_n,J_{1n},\ldots,J_{n-1,n},D$。其余 $J,B,K$ 由约束及 Lagrange identity 重构，例如

$$J_{ij}={P_jJ_{in}-P_iJ_{jn}\over P_n},\quad B_i={2\over l_pP_z}\left(P_iD+\sum_jJ_{ij}P_j\right),$$
$$K_z={D^2+\sum_{i<j}J_{ij}^2\over l_pP_z},\quad K_i={2(B_iD-P_iK_z)\over l_pP_z}.$$

前者需 $P_n\ne0$，后者需 $P_z\ne0$；constraint 的平方根还需选择 cone sheet。这些不是覆盖 cone vertex 的全局坐标。

固定荷后，$\chi^i=(P_i/P_n)\chi^n+J_{in}/P_n$，

$$\log z={1\over P_z}\left(D-\sum_{i<n}{J_{in}P_i\over P_n}\right)-{l_p^2P_z\over4P_n}\chi^n,$$

代回 $H_r=-P_n$ 就重现 §3.1，无需另解 ODE。**Checked:** Sage 在 $n=2$ 的 exact rational regular sample 上，kinematical Jacobian rank 为 6；先限制到 null-cone tangent chart 后 rank 为 4；零动量点 ambient Jacobian rank 为 3，说明不能把 regular count 当全局 rank 定理。本次未以有限样本证明任意 $n$ 的 rank assertion。

## How to read / 如何用于当前问题

先读 §2 的 $\partial_TQ_r+\{Q_r,H_r\}=0$，然后从 §3.2 的 canonical conformal coordinates 自己重算荷。把 §4 作为比较两种不同 phase-space constructions 的工具，而不是“看到更大代数就发现更多物理对称”。最后用附录 B 检查荷是否实际分离 regular gauge orbits；即使在这里成立，也依赖具体表示、约束、cone sheet 与 clock patch。

有势时直接 CKV 方法并非逻辑上完全失效：若 $h=\tfrac12g^{ab}p_ap_b+U$，$\mathcal L_\xi g=\varphi g$，则 $\{Q_\xi,h\}=\varphi h-(\xi U+\varphi U)$；满足 $\xi U+\varphi U=0$ 的 CKV 仍给 weak Dirac 荷。ED 是系统化候选方法，不能称为唯一可能的方法。相同抽象代数本身也不确定动力学；还须指定 phase-space realization、symplectic form、constraint、域和 observables。

## 核查与未验证部分

Verified: Mathematica 的九个 conformal brackets、一个显式 weak constraint factor、三项 ED identities、clock-image 与非 Poisson witness；直接 coordinate curvature 的 $d=2,3,4$ 检查。xAct 对称 CKV contraction residual 0。Sage exact rational rank 样本 6/4，明确 regularity 与 restriction-before-differentiation。

Source-derived: 全部章节和 A/B 结构、任意 $n$ CKV 分类、generic lapse projectable 解、全部 functional relations 与量子展望。官方 [v2](https://arxiv.org/abs/2607.27351v2)、[PDF](https://arxiv.org/pdf/2607.27351v2)、[source](https://arxiv.org/src/2607.27351v2) 成功；PDF physical p.23 / printed p.22 已渲染核对 (4.15)–(4.17) 与 closure 解释，其余 TeX/PDF 文本逐节阅读。提取的 font mismatch warning 不影响该页公式确认。

Assumptions: $n\geq2$ 的有限最大代数；free massless、flat FLRW、$z>0$、非零动量 regular cone、有效 clock patch；lapse family 为 power law。$n=1$、零动量、一般 lapse、full GR 单独处理。

Not independently verified: 任意维全部 CKV PDE 的完备分类、一般 Bargmann metric 的强断言、全局群作用完备性、所有 clock patch 的拼接、quantum conformal Laplacian 的自伴域/physical inner product、ordering anomaly、非均匀 full superspace 或一般势的分类。Blocked: 无检索或计算阻塞；本次保存已定位的号与 clock-origin 失败，不依赖它们扩展结论。
