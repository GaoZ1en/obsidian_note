# 逐条反例审查：principal_bundle_sewing_v2（2026-09-18）

## 结论与判定口径

**确认一处字面错误：式 (2.2) 后若把 $\Theta_\Sigma$ 也说成与 Cauchy slice 无关，则一个完全合法的自由 Maxwell 模式就给反例。保持切片无关的是 $\Omega_\Sigma=\delta\Theta_\Sigma$。**

**另发现一个必须明确写出的条件：只把全局 based identity component 当 proper 时，不能把每片在人工 seam 上分别允许的规范变换全部当成全局 proper 箭头。** 下文给出局部可缩、装配后 winding 为 $1$ 的 $U(1)$ 见证。它否定“只检查局部/外边界限制就足够”的解释；若定理 G 的 “compatible proper” 已经包括装配后全局分支的检查，则该例不反驳加强后的定理。普通主丛的 descent 本身没有被推翻。

31 项 [claims.json](claims.json)、12 篇正文、README、合稿、references/provenance 和检查代码都纳入审查。合稿的正文是分篇内容的汇集，相同 statements 不重复计数。每条 ledger 及正文额外陈述的攻击记录见后文。定义检查其相容性和实例；定理寻找满足全部前提的反例；条件性结果保留其前提；历史和 adopted inputs 不冒充本次独立验证。

对声明范围内的 YM2、Maxwell smooth algebra、disk current、torus Wilson 和固定四点 SU(2)₂ presentation，本次未找到新增的反例；**这不等于已独立证明全部无限维 PDE、所有 ribbon coherence、所有拓扑扇区或全部量子边界理论。**

## 1. PB-1：辛势一般不守恒，辛形式才守恒

**判定：原句若同时指 $\Theta$ 和 $\Omega$，则不正确。** 若作者本意只指 $\Omega$，也需要把主语写清楚。

位置：[notes/02_boundaries_sources_and_reopening.md](notes/02_boundaries_sources_and_reopening.md) §2.1，式 (2.2) 及其后一句，审查时第 17–21 行：

$$
\Theta_\Sigma=\int_\Sigma\theta-\int_{\partial\Sigma}C,
\qquad\Omega_\Sigma=\delta\Theta_\Sigma
$$

> 在同一解和同一固定源 fiber 内不依赖 Cauchy slice。

### 在本稿 Maxwell 域内的显式反例

使用 §6 的 $\Sigma=[0,1]\times T^2$，两个环坐标 $y,z$ 的周期均取 $2\pi$，$e^2=1$，两壁固定 $a_t=a_y=a_z=0$。取归一化 real mode

$$
v=\frac{\cos y}{\sqrt2\,\pi}\,dx,
\qquad \int_\Sigma |v|^2=1,
\qquad \nabla\cdot v=0,
\qquad Kv=v.
$$

它的 tangential boundary components 为零，$\partial_xv_x=0$，全部 compatibility 成立。这正是 §6.1 允许的 $n=0,p_y=1$ 辐射模，不是被排除的 gauge 或 thin distribution。

在完整 Maxwell 预辛空间中考虑这族解及相应 variations：

$$
a(t)=q(t)v,\qquad E(t)=p(t)v,\qquad a_t=0.
$$

只需把原辛势拉回这族解，无须在此次审查中先做任何 gauge quotient。该模式的 action 和辛势是

$$
S=\frac12\int(\dot q^2-q^2)\,dt,\qquad
p=\dot q,\qquad\Theta_t=p(t)\,\delta q(t).
$$

固定同一 solution-space coordinates $(q_0,p_0)$，有

$$
q(t)=q_0\cos t+p_0\sin t,\qquad
p(t)=-q_0\sin t+p_0\cos t.
$$

在同一个解 $(q_0,p_0)=(1,0)$、同一个 variation $V=\partial_{q_0}$ 上比较两张切片：

$$
\Theta_0(V)=0,\qquad
\Theta_{\pi/4}(V)=-\frac12.
$$

源始终为零、所有 wall conditions 保持、variation 始终在同一固定源 fiber 内。因此固定源这一限制不能挽救辛势的切片独立性。

相反，直接计算

$$
\Omega_t=\delta p(t)\wedge\delta q(t)
=\delta p_0\wedge\delta q_0
$$

确实不随 $t$ 变化。对这族解还有

$$
\frac{d\Theta_t}{dt}
=\delta\!\left(\frac{p(t)^2-q(t)^2}{2}\right),
\qquad
\Theta_{t_2}-\Theta_{t_1}=\delta S_{[t_1,t_2]}\big|_{\rm on\ shell}.
$$

右边通常不是零。再次取 $\delta$ 才得零；角点改进负责相容的边界公式，也不会把这个无边界通量的 oscillator 反例消掉。[Harlow–Wu 的 CPS 构造](https://arxiv.org/abs/1906.08616) 中相应守恒对象是预辛形式；这与本例的直接计算一致。

### 影响与改写

建议改为：“在固定源、满足边界及角点条件的解空间上，$\Omega_\Sigma$ 与 Cauchy slice 无关；$\Theta_\Sigma$ 一般随 slice 改变一项场空间 exact form。” 若要选取与时间无关的另一份 potential，须另写其 exact 改进和基准切片，不能从原式直接得到。

此反例针对 §2.1 的表述，**不反驳** §6 的 conserved $\Omega$、CPS/Peierls bracket 或定理 G 的 $J^*\Omega_{\rm out}=\Omega_{\rm sew}$。原来只检查 $\Omega$ 的程序通过，与这个反例并不矛盾。

Verified: Mathematica 给 $\Theta_0$ 的系数 `{p0,0}`、上述 $\Theta_{\pi/4}(V)=-1/2$、$dq_0\wedge dp_0$ 的 $\Omega$ 系数为 $-1$，以及 $d\Theta/dt-\delta[(p^2-q^2)/2]=\{0,0\}$。模式的归一化和 Maxwell 条件另经显式积分/微分核对。

Assumptions: 原文 signature 与 $\Omega=\delta p\wedge\delta q$；$e^2=1$；静态 relative walls；smooth 单个模式；同一解与同一线性化解比较。

Not verified: 没有声称所有 potential choices 都必须具有这份时间依赖；反例针对原式所定义的 potential，也没有否定 conserved presymplectic form。

最小 Wolfram Language 检查：

```wl
Clear[t, q0, p0];
q = q0 Cos[t] + p0 Sin[t];
p = -q0 Sin[t] + p0 Cos[t];
th = {p D[q, q0], p D[q, p0]};
lag = (p^2 - q^2)/2;
{th /. t -> 0,
 Simplify[th[[1]] /. {t -> Pi/4, q0 -> 1, p0 -> 0}],
 Simplify[D[th[[2]], q0] - D[th[[1]], p0]],
 FullSimplify[D[th, t] - {D[lag, q0], D[lag, p0]}]}
(* {{p0,0}, -1/2, -1, {0,0}} *)
```

## 2. PB-2：局部 small 不保证装配后属于全局 proper 分支

**判定：只靠局部可缩性和外边界取值不足；按这个弱条件理解的 groupoid 比较不正确。** 这是缺失条件的见证，不是普通主丛 descent 的反例。

位置：[notes/04_sewing_comparison_principle.md](notes/04_sewing_comparison_principle.md) §4.1–4.2，尤其审查时第 11 行对箭头的说明，以及第 26 行从 bundle automorphism 装配直接推得箭头双向对应的步骤。第 01 篇 §1.3 明确允许只选 based identity component 为 proper，因此一般定理需要处理这个选择。

### 先固定全局理论，不改变 proper 的定义

取 compact $U(1)$、空间区间 $I=[0,L]$、固定两端 frames、$a_t=0$。只声明

$$
\mathcal G_{\rm prop}(I)
=\{g:I\to U(1):g(0)=g(L)=1,\ \operatorname{wind}(g)=0\}
$$

为 proper。对区间两端 based maps，winding 指把两端合为基点后的绕数。与 §1.3 相同，此时

$$
Q=\int_0^L a_x\,dx\in\mathbb R
$$

保留为全局量；没有把 $Q$ 识别模 $2\pi$。比较两份光滑静态场

$$
a=0,\qquad a'=\frac{2\pi}{L}\,dx,\qquad E=E'=0.
$$

两者曲率、约束、壁源、所有 smooth jets 均合法。但 $Q(a)=0$、$Q(a')=2\pi$，没有全局 proper 箭头联系二者。

### 切开后出现的局部箭头

在 $c=L/2$ 切开，两份对象均取 transition $h=1$。定义

$$
g_1(x)=e^{2\pi ix/L}\quad (0\le x\le c),\qquad
g_2(x)=e^{2\pi i(x/L-1)}\quad(c\le x\le L).
$$

它们在各自真正外端等于 $1$，在 seam 均等于 $-1$，因此

$$
h'=g_2(c)h\,g_1(c)^{-1}=1.
$$

而 $a_i\mapsto a_i+d\lambda_i$ 在每片都把 $0$ 送到 $(2\pi/L)dx$。它们在 collars 上也正好是同一个光滑 group-valued map，故没有 cocycle、jet 或场方程障碍。

分别固定每片真正外端，有明确的收缩

$$
g_{1,s}(x)=e^{2\pi isx/L},\qquad
g_{2,s}(x)=e^{2\pi is(x/L-1)},\qquad 0\le s\le1.
$$

但是中途的 seam 比值是

$$
g_{2,s}(c)g_{1,s}(c)^{-1}=e^{-2\pi is},
$$

在 $s=1/2$ 等于 $-1$。因此这两份局部收缩不是一份固定 transition 的全局 based 收缩。装配后的 map 是

$$
g(x)=e^{2\pi ix/L},\qquad
\operatorname{wind}(g)=\frac1{2\pi i}\int_0^L g^{-1}dg=1.
$$

它正是全局理论保留为非 proper 的分支。若 §4.1 的 cut arrows 仅要求所写的 transition covariance 和外边界限制，它就会联系两个全局理论中不等价的对象，所谓“装配给全局 proper 箭头”甚至没有定义好。

### 缺的条件是什么

对选定的 proper subgroup，必须另检验：每个允许的 cut 箭头装配后确实落在 $\mathcal G_{\rm prop}(I)$，且全局 proper 箭头可被相容地限制。**局部 automorphism 的 descent 不会自动证明关于其全局连通分支的这条陈述。**

在这个例子中，可以要求装配后的总 winding 为零；也可以在数据中保留足够的实 lift/相容 homotopy 信息来实施同一要求。实 lift 直接显示被丢掉的整数：

$$
\lambda_1(c)=\pi,\qquad \lambda_2(c)=-\pi,
\qquad \lambda_h'=\lambda_2(c)-\lambda_1(c)=-2\pi.
$$

若保留 $\lambda_h'$，则 $Q_1'+Q_2'+\lambda_h'=0$，没有把原物理量偷偷变为 $2\pi$；只记 $h'=e^{i\lambda_h'}=1$ 并把 lift 又置零，就丢掉了这项区别。这里给的是作用在完整场及 transition 数据上的失效见证，没有另行构造 gauge reduction。

另一种选择是从一开始把全部 based components 都声明为 proper；那时 $Q\sim Q+2\pi$，该反例消失，但那是 §1.3 已说明的另一种全局理论，不能在证明中悄悄替换。

### 对 ledger 的精确影响

- **G02：** 普通主丛连同全部适当 automorphisms 的 descent 未被推翻；错误是未经检查就把它用于选定的 proper 子群。
- **G03：** 若 “compatible proper” 包含上面的全局分支条件，则本例不反驳定理；按仅局部/外边界条件的字面构造，结论不成立。应明确补出这一输入及每个模型的核验。
- **G05：** 本例支持其“proper/large 与 small/charged 不同”的判断，同时说明这个区别必须进入后续装配。
- **Y01–Y06、M07：** 其具体 compact 实现已明确使用全部 based components 和指定 large character，不能把本例错报成这些 benchmarks 的反例。实线性 Maxwell 也保留实 $\lambda$，不是本例中遗忘整数的 group-valued presentation。
- **H01、O01：** 再粘合还须保持同一全局分支选择；仅有普通 cocycle 不代替这一要求。

Verified: Mathematica 精确给出总 winding $1$、局部收缩的 seam 比值 $e^{-2\pi is}$，以及 $s=1/2$ 时的 $-1$。两个 $Q$ 值由直接积分给出；所有场均 flat，取 $E=0$，不存在 PDE/regularity 陷阱。

Assumptions: 全局 proper 只含 based identity component；人工 seam 上允许 §4.1 所写的相容局部 frame changes；不得在装配后改成全部 based gauge 理论。

Not verified: 没有把定理中可能隐含的强解释判成错误；也未声称局部 BRST 或 ordinary bundle cocycle 本身错误。本例指出的是需要额外写明、不能由普通 descent 自动推出的群分支条件。

## 3. PB-3：$S^2$ monopole 不能见证“相同完整曲率、不同 Chern 数”

**判定：若把 §8.3 的第一段读成“两个半球的完整曲率仍不能决定 $n$”，则该说法不正确；按“构造 connection 装配仍需给出实际 transition”的较弱读法，则没有反例。** 这项不计作一个已推翻通用定理的反例。

位置：`notes/08_multiple_sewing_topology_and_homotopies.md` §8.3，审查时第 33 行，把第 01 篇 monopole 例子用于说明局部 gauge-invariant curvature 数据不能替代 equatorial transition winding。

对该例实际给出的

$$
F=da_N=da_S=\frac n2\sin\vartheta\,d\vartheta\wedge d\varphi,
\qquad n=\frac1{2\pi}\int_{S^2}F,
$$

一旦两片的**完整曲率二形式**及拼接几何已知，$n$ 就已经确定。$n=0$ 与 $n=1$ 不具有相同的剩余曲率数据；所以它们不是“删去 transition 后输入完全一样”的见证。固定曲率的两个 $U(1)$ 连接在 $S^2$ 上也没有额外 $H^1(S^2;U(1))$ flat ambiguity。

这不表示可以一般删除 transition、anchors 或拓扑数据。第 01 篇更窄的原句“两个局部平凡 bundle 的名称不能决定 $n$”正确；本稿 Maxwell 区间的 flat $Q$ 也确实是曲率相同、anchored transport 不同的有效见证。应区分“只有局部 bundle 名称”“保留全部曲率”“提供实际 transition 作为装配 presentation”这三个问题。

Verified: 对上述二形式的积分为 $2\pi n$，与原有 `monopole_flux_transition_winding` 精确检查一致。

Assumptions: 普通 compact $U(1)$、完整无 puncture 的 $S^2$、固定曲率二形式及几何；不是一般带锚点或非单连通流形。

Not verified: 没有据此否定 O01 中那些真正保留相同剩余数据的例子；也没有宣称一般规范场能只由 curvature 恢复。

## 4. 原稿已有的有效反例：本次复查仍成立

以下机制已被正文承认或用作排除条件，不计为此次新发现。

| 被否定的较强主张 | 见证 | 本次证据与当前范围 |
|---|---|---|
| Curvature-only probes 分离全部物理数据 | $a=(Q/L)dx$、固定 $P$，改变 $Q$ 不改变 $F$。 | 原有 harmonic bracket、$Q/P$ 归一化与 curvature blindness 检查通过；M02–M03 已保留 $Q$。 |
| 逐片 exact 就是全局 Dirichlet gauge | $dx=d x$，但 primitive 不能在两端同时为零。 | `locally_exact_dx_is_not_global_Dirichlet_gauge` 通过；支持 M04 的同一全局 primitive 条件。 |
| 完整相容 source tuple 可独立拆分 | $q=x(1-x)$、$f=2+m^2q$；拆开给角点 $u_{tt}=\pm2$。 | 本次精确重算；本包 §2.3 已正确处理，邻包引理 4.2 的遗留句另写在对应报告。 |
| DtN 的零模可用 pseudoinverse 直接删除 | 零频 homogeneous solution 不因 response radical 而消失。 | 原有零频见证与 Maxwell harmonic evolution 检查通过；M01 保留零模。 |
| Disk 的 boundary transport PDE 自动保证来自平滑 flat bulk | 常数非零 $j$ 可满足 boundary PDE，但 $\oint a=2\pi j\ne0$，与无 puncture、extendible framing 的 flat disk 不符。 | 原有反例通过；C01 明确要求零平均。 |
| Open arc 可以直接使用闭圆 current cocycle | $\int_I f g'$ 的反对称化留下 endpoint term。 | Endpoint defect 与非反对称性检查通过；C02 加入 corner transport。 |
| 不同 CS levels 也自动透明匹配 | 两侧 current cocycle 留下 $(k_1-k_2)$ 项。 | 原有反例通过；C02 固定同 level。 |
| Torus Weyl labels 可无相位地按 $k$ 取模 | Weyl quasi-periodicity 留下符号/中心相位。 | 原有反例通过；C03 给完整固定 character 的关系。 |
| 只通过 braid relation 就可以任意改 $F$ 的整体符号、同时保持 cups 不变 | Braid conjugation 看不见整体符号，vacuum overlap 和 FS 指标能看见。 | 固定 cup 的 $F/R$、FS $-1$ 与反例检查通过；不证明所有 labels 的 coherence。 |
| 一个 null sheet 的 radiation trace 决定全部解 | 缺 transverse/constraint integration data；non-Abelian constraint 还含 colour commutator。 | 原有单 sheet 反例与 null colour 项检查通过；N03 仍是一般构造目标。 |
| 两个 regional marginal states 决定全局 state | 两份 opposite squeezing 的 Gaussian states 有相同局部 covariance，跨区 covariance 符号相反。 | 原有 covariance 见证通过；支持 S01，不给出 canonical state sewing。 |

## 5. 31 项 ledger 的逐条攻击记录

“未找到反例”仅表示本次搜索未成功，严格保留 scope/exclusions。特别地，有限检查通过不把 I/C/D 改写成 E。

| ID | 尝试的反例或失效机制 | 结果与限制 |
|---|---|---|
| G01 | 非交换 transports 的次序；反向穿越；遗漏外 anchors；非紧群 representations 不分离。 | 实际 $h$ 与 endpoint factors 按次序抵消；非紧表示完备性已排除。非交换有限矩阵检查通过，未找到域内反例。 |
| G02 | 不平凡 cocycle、非可延拓 seam、局部 small 但全局 large。 | 前两项违反明确前提；**PB-2 要求另核验 proper subgroup 的全局分支**。普通 bundle descent 没被反驳。 |
| G03 | 不光滑弱解、漏 corner primitive、source fiber 混淆、proper 箭头装配错误。 | 光滑/边角/source 前提必须保留；PB-2 使弱解释失败。PB-1 仅否定 $\Theta$ 的守恒，不否定 $\Omega$ 比较。 |
| G04 | 只给 relations/满射却无 kernel；operator domain 不共同；naive constraints 两侧理想。 | 比较准则明确要求 normal-form 独立性、实际 lifts、adjoint/domains；在这些前提成立时未找到反例。不是一般 quantization theorem。 |
| G05 | Based winding map；小但带外端 charge 的变换；随时间变化的 source。 | 这些实例支持原来的区分；PB-2 说明不能在后续证明中遗忘该区分。 |
| Y01 | Holonomy 的全局 logarithm 不存在；$p=-E(0)$ 符号；非平凡 large character。 | 构造无需全局 log；取向和 cotangent potential 一致；不同 character 已排除。未找到指定 compact 模型内反例。 |
| Y02 | 非交换乘法下 adapted momenta 错配；先在全代数把 constraint 设零。 | Cotangent identity 检查通过；kernel 仅在 invariant algebra 中断言，避开错误全商。 |
| Y03 | Vertical PBW normal form 遗漏 commutator 的低阶项；augmentation 不保乘法。 | Vertical enveloping 的 augmentation 与横向算子相容；正 vertical degree 不产生常数项。原 U(1) exact 与 SU(2) 诊断未发现反例；一般 PBW 仍是解析论证。 |
| Y04 | Haar map 非满；Casimir 长度系数；无界算子共同域。 | 适配变量给 invariant functions 独立于 cut coordinate；有限 SU(2) Haar、Laplacian 检查通过。未把无限维 gauge group 当可作 Haar 的紧群。 |
| Y05 | Endpoint histories 非交换；中间闭合后外源丢失；只比较零源 evolution。 | 对显式 ODE 解微分保留时间次序；原非交换及三段 source 检查通过。一般 histories 靠 ODE 推导，不靠常数源采样证明。 |
| Y06 | 跨 cut plaquette 遗漏；kinetic coefficients 不相加；图中没有二维 cocycle。 | 原文要求 enriched open paths 与约定 coefficients；continuum limit 和缺失磁扇区已排除。未发现声明的 subdivision 反例。 |
| M01 | 零频被删除；$n=0,p\ne0$ 被误当 harmonic；高频序列不可求和。 | 零模与非零横向模都保留；快速衰减和频率多项式界控制有限窗。符号/采样检查通过，不等于任意 wall theorem。 |
| M02 | Curvature blindness；gradient primitive 有不同边界常数；非 Hamiltonian 分布 label。 | $f,g$ 与 $P_T$ 的明确域排除后两项，保留 harmonic $Q$ 排除第一项。选 $a=f,E=g_T$ 的 kernel 论证未被推翻。 |
| M03 | $L,\mathcal V,e$ 归一化错误；把 averaged exponent 当 average Wilson。 | $\{Q,P\}=1$ 精确检查通过；原文已区分两种平均。未找到域内反例。 |
| M04 | 删去 $\lambda f_n$；只要求各片 exact；把 joint tests 误说成旧 tensor product；隐藏高次 polynomial relation。 | Transition variation 抵消；全局 Dirichlet primitive 与有限 rank argument 保留。实线性 $\lambda$ 不遭受 PB-2 的整数遗忘；未找到指定域内反例。 |
| M05 | 任意 independent source components；初始角点不相容；Lorenz constraint 不传播；无限 jets 的虚假连续线性 section。 | 原文使用联合域、$LC=0$、wall $C=0$ 和初始 $C=\dot C=0$；不声称任意 jet-product topology 有连续 section。有限阶 estimates 未被有限 tests 独立认证。 |
| M06 | Hessian/Peierls 符号；harmonic 极限；只比较 homogeneous kernel；不同 regrouping 漏外源。 | Peierls sign/zero limit 与非零 source 三段检查通过；一般 smooth responses 仍依赖 M05。没有域内反例。 |
| M07 | 把 $Q$ 在实线 CCR 内硬设周期；非整数 probe；遗漏 nontrivial character。 | 使用 group labels、integer characters 及明确中心关系；全部 based components 固定。PB-2 所选的另一 proper subgroup 不在该实现内。 |
| C01 | 非零平均 disk current；nonextendible framing；punctures/annulus；$v\le0$。 | 这些均被声明的几何/sector/$v>0$ 条件排除。源 variation 检查通过，无指定域内反例。 |
| C02 | Open-arc cocycle endpoint；非零 winding chord；漏 $\Theta_\Gamma$；level mismatch。 | 原文保留 endpoint potential、可延拓零 winding、同 level；对应反例与 corrected identity 检查通过。未找到完整条件下反例。 |
| C03 | 中心 character 不固定；odd level/spin choice；漏 Weyl 相位；clock-shift span 不满。 | 仅声明正偶 $k$ 与固定拓扑量子实现；被测有限 $k$ 的 relations/span 通过。一般 $M_k$ 结论仍依赖已给出的 normal-form 论证。 |
| C04 | 把 $F$ 换成 positive Hadamard 而 cups 不动；只看 diagonal Wilson；由 braid test 推全 coherence。 | 反例支持其 fixed-cup 与 off-diagonal 选择；$M_2$ presentation 检查通过；全部 higher-label coherence 未声称由本计算认证。 |
| C05 | Gram radical 之外还有 kernel；image 不闭合/非 reducing；有 channel 实际为零。 | 条件中要求相应正性、非零 transport、inequivalent irreducible channels、reducing-range 输入；没有在满足全部输入时构成反例。采用的分析实现未重证。 |
| H01 | 把 braid/twist 与 regrouping 混同；self-gluing 复制整份 field；丢 large 分支。 | 前两项已明确区分；PB-2 提醒每次装配须核对同一全局 proper choice。 |
| H02 | Scalar projective cocycle 在 $\operatorname{Ad}$ 中消失，但 states 仍带 phase。 | 这正是原命题，不是反例。没有据此证明全层次 anomaly cancellation。 |
| H03 | $H^0$ 同构却非 chain-homotopy equivalence。 | 原文零微分 $C^1=\mathbb R,D^1=0$ 例子有效；supports sufficient-not-necessary 结论，不供应新的 BRST maps。 |
| N01 | Non-Abelian odd/even reflection parity 失效；nonlinear Gauss不相容；级数不收敛。 | 正文逐阶展开并要求 nonlinear joint data，不把 Abelian parity 当证明；只声明形式存在。未找到合法 formal recursion 的反例。 |
| N02 | Thin Wilson cusp/junction UV、任意 disorder/stress products。 | 已列为 D；角度依赖的 cusp 诊断不能提供一般 renormalization theorem。 |
| N03 | 单 null sheet 缺电通量 seed；退化 conormal 当完整 Cauchy 数据。 | 原文明确承认失败，未将 static slab 证明升级成一般 null networks。 |
| S01 | 同 marginals、不同 global Gaussian correlations。 | 原有显式见证复查通过；支持原来的非唯一性判断。 |
| O01 | 逐项删 topology/anchors/source/channel 数据；检查“剩余数据一样”是否真的满足。 | 多个有效见证见 §4；PB-3 限定 monopole 例子的证明力。没有唯一 universal minimal package 定理。 |

## 6. 未单列进 ledger 的正文 statements 与证据审查

| 文件与部分 | 额外检查 | 结果及未覆盖边界 |
|---|---|---|
| `notes/00` 全篇 | 独立 target 是否先给出；E/C/I/D 是否在摘要中偷换；observable/domain/kernel 义务。 | 定义与验收标准不自动供应存在性，正文也作此限制。没有把 ontology catalog 当已构造代数。 |
| `notes/01` §§1.1–1.6 | $A^g$、transport 端点方向；参考 bundle 不平凡；fixed-source frame symmetry；normalizer；winding、disk extendibility、stabilizer、disorder sectors。 | 符号及有限例子未出现新反例。PB-2 把 proper 分支限制带入后续 theorem；非 liftable transitions 不能擅自写实 $\lambda$。 |
| `notes/02` §§2.1–2.7 | 边界 variation 与 PDE 良定性是否混淆；$\theta$ 项响应；joint source relation；跨 source fibers 的 flux；$h$ variation；closed intermediate。 | **PB-1** 是确定的辛势问题。联合域在本包正确；透明 matching 还需完整 jets，正文已说明。 |
| `notes/03` 全篇 | Presymplectic Hamiltonian 条件、degeneracies；first-class constraints 的普通两侧理想；allowed quantum generators；rotor 中心 character。 | 没有把所有分布、所有 nonlinear functional 或任意 completion 纳入已证域；明确的 CCR/Weyl 与 rotor 区别未被反例推翻。 |
| `notes/04` §§4.1–4.7 | Geometric descent 是否同时保证 proper-arrow descent；actual lift 与 kernel 是否独立；reopening；null constraint；injective isotony。 | **PB-2** 给缺失条件的见证。其它 comparison 前提必须保留；不要求所有 boundary-changing inclusion 都 injective。 |
| `notes/05` §§5.1–5.7 | Flux moment-map 符号、adapted potential、PBW/Haar、arbitrary endpoint ODE、circle singular locus、finite graph interaction。 | 指定 compact/trivial-character benchmark 未发现新增反例。没有认证所有 circle singular ideals 或 continuum limit。 |
| `notes/06` §§6.1–6.9 | 全 modes 与 harmonic modes、Hodge 投影、separation、actual seam lifts、CCR kernel、affine sources、Lorenz recurrence、compact large sectors。 | 表中 M01–M07 给逐项攻击；PB-1 的反例模式本身属于该允许域，且其 $\Omega$ 守恒完全正确。 |
| `notes/07` §§7.1–7.7 | CS action/corner signs、mean-zero 条件、chord winding、Weyl quasi-periodicity、cup/FS、cross-channel operators、Gram/onto 前提。 | 已有符号与有限代数检查通过；没有把有限四点计算当整个 modular/ribbon realization 的证明。C05 仍有外部分析输入。 |
| `notes/08` §§8.1–8.7 | 普通 cocycle 与 global holonomy 区别；binary regrouping 与物理 moves；必要性 witnesses；pentagon 的四对象五括号；scalar phases；$H^0$ 与 chain equivalence。 | **PB-2、PB-3** 对应未能省略的全局条件及较弱 monopole 见证。其余区分在声明范围内未被推翻。 |
| `notes/09` 全篇 | Formal YM source 的 constraint propagation；non-Abelian reflection；UV/BRST/null 扩张；matter/defect 数据；state nonuniqueness。 | 不收敛或不存在任意量子 completion 不反驳 formal field recursion；一般量子与 null 扩张仍未构造。 |
| `notes/10`、`notes/11`、README | 模型矩阵与 ledger 是否一致；历史“修订落实”是否仍有遗留；术语、取向和测试等级。 | 本报告明确保留 §2.1 的遗留问题及 theorem G 的分支歧义；有限检查只认证其实际输入。 |
| `REFERENCES.md`、provenance、脚本及 results | Adopted realization 与原创证明区分；文件身份；历史日志与本次重跑；格式 build 能否认证数学。 | 原 manifest 审查前匹配，56 项本次重跑通过；没有把 references 的列出当作其全部命题已逐页重证。build 的格式/打包通过不保证数学正确。 |

## 7. 本次执行、可复核值及修改范围

**文件身份。** 添加本报告前，`provenance/file_manifest.json` 的 24 项文件哈希全部匹配；合稿包含 12 篇正文的对应完整文本。入口 `claims.json` 的 SHA-256 为 `71babf2bfefaceb2f90bcaa4753298b67164750f6b0b0f2f36b7f5d48ba7bf0a`。

**原检查程序完整重跑：56/56，通过，0 失败。** 在临时副本执行未修改的 `checks/run_checks.py`，避免覆盖本包归档 results。环境：Python 3.14.3、NumPy 2.4.4、SciPy 1.17.1、SymPy 1.14.0。计数来自实际本次运行，而非仅阅读旧日志。

**新增精确检查：**

| 检查 | 实际结果 | 证明力 |
|---|---|---|
| Maxwell 反例模式的 $L^2$ norm、divergence、$Kv-v$、wall tangential components、normal derivative、wave residual | Mathematica：$1,0,(0,0,0),(0,0),0,(0,0,0)$。 | 反例确实处于 smooth relative Maxwell 域。 |
| 同一解上辛势两切片比较 | $0$ 与 $-1/2$。 | 否定原 potential 的 slice independence。 |
| 同一族解的 $\Omega$ 与 potential evolution | $dq_0\wedge dp_0$ 系数 $-1$；$d\Theta/dt-\delta L=0$。 | 同时确认反例没有破坏辛形式守恒。 |
| 局部 small maps 的装配 winding | $1$；homotopy seam 比值 $e^{-2\pi is}$，中点 $-1$。 | 局部可缩性不能代替全局 proper 分支条件。 |
| Monopole flux | $2\pi n$。 | 完整曲率确定这个 $S^2$ 例子的 Chern 数。 |
| Triangulated $S^2$ 的 $H_1$ | SageMath 10.9：$0$。 | 与该普通球面上没有额外 flat $U(1)$ ambiguity 一致；不是一般拓扑结论。 |

Verified: 上述反例计算、指定模式/拓扑的有限精确检查、原程序本次 56 项及审查前文件身份。

Assumptions: 保留每条 scope、allowed proper group、boundary-source fiber、smooth domain、topological sector、large character、cup/F/R 和 operator-domain 选择。

Not verified: 未独立构造全部 infinite-mode IBVP estimates、一般 boundary deformations、adopted charged-channel analytic transport、全部 pentagon/hexagon、general BRST maps、thin-Wilson renormalization、任意 null/mixed networks 或全量 state sewing。任何“未找到反例”均不认证这些未完成事项。

本次只新增本报告并在本目录 README 增加入口；未修改原正文、claim 状态、合稿、checks 或 results。原 manifest 是审查前版本的记录；新增 README 入口及本报告不属于该历史 manifest。没有运行 build 重写整包，也没有提交仓库改动。
