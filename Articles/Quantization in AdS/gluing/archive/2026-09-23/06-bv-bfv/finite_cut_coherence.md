# 有限切口、交点与相对比较的相容性

**结果 FC1。** 在下面明确的有限 conical cut geometry 中，保留全部区域 forms、实际 source relation 与相容 trace 的匹配复形，与独立 smooth global complex 有显式连续、保持真实 exterior 的 chain homotopy equivalence。可包括多条切口的共同交点与非单连通的空间曲面。此处不将区域场商成 cohomology。

**结果 FC2。** 对同一 M 的有限个合法 refinements，§5 与 [非线性构造](nonabelian_relative_descent.md) 给比较 maps、比较之间的 homotopies 及其高阶 fillers。结论适用于这些 fully opened matching models 的形式 CS 比较。它没有自动完成任意 intermediate physical closure 的 reopening，也没有覆盖 compact bundle transitions 或量子 associator。

## 1. 几何、源域与独立目标

令 M=I×Σ，其中 I 为紧时间区间，Σ 为有光滑边界的紧定向曲面；也允许闭 Σ。固定有限嵌入切口图。各 cell 是嵌入的光滑带角曲面；每个 vertex 有一个共同的 ambient chart，在该 chart 中所有 incident edges 都是径向直线段。Boundary vertex 使用半平面 chart，真实 wall 对应半平面的直边。时间方向始终取 product。切口的非 vertex 部分有共同 smooth normal collars。

这些是本定理实际采用的几何输入。没有证明任意高价、任意弯曲的边族都能在同一个 smooth chart 中同时拉直。Refinement 也必须在同类 chart/collar 域中。

独立目标 G 是 Ω(M)，或 [CD1](corner_descent.md) 的 physical subcomplex G_L：真实外墙取 proper ghost 为零、A_t=v a_s，时间 caps 未固定。对一般 Σ 可在各真实边界分支指定同类固定 chiral realization；这里不使用 disk 的 cohomology contraction。

区域对象是各 cell cylinder 的完整 Ω，携带原 action、ghosts、antifields、actual proper arrows、带 orientation 的 face/corner traces。定义 P_𝒢 为它们的匹配子复形：

- 每条 seam 两侧的切向 form pullbacks 相同，incident edge traces 的 worldline pullbacks 相容。
- 所有 surviving exterior faces 的 assembled traces 光滑，且在真实 corners 联合相容。
- 若使用 physical realization，assembled exterior 属于独立指定的 L。

P_𝒢 的拓扑是有限个 C∞ Fréchet 空间之积上的上述 closed trace 条件。没有添加“每个内部 transverse jet 预先相同”的条件；它通常包含不能原样 smooth assembly 的 fields。限制到每条切口的全部 ambient jets 都相同的子域，才得到 raw smooth assembly。两种域不可互换。

内部 seam histories 已经 release，可以随比较 map 运输。真实 exterior data 在本构造中原样保留。若还要求某份内部 history 原样不变，就必须单独检验其 joint extension 域，不能从 P_𝒢 的定义推出。

## 2. 三条线的导数反例

在一个 vertex chart 中考虑 x 轴、y 轴和对角线。分别规定标量 trace
$$
f_1(t)=t,\qquad f_2(t)=t,\qquad f_3(t)=0.
\tag{2.1}
$$
三者在原点值相同。然而若存在共同 smooth F，则
$$
\partial_xF(0,0)=1,\qquad \partial_yF(0,0)=1,\qquad
\frac{d}{dt}F(t,t)\big|_{t=0}=2,
$$
与第三条 trace 的导数为零矛盾。六个 sector 上可分别用线性函数实现相邻两条 ray 的资料，因此它确实检测 piecewise matched data 与共同 smooth extension 的区别。

这里可以把修复也写成显式公式。对于三条线的任意 smooth traces，若
$$
f_1(0)=f_2(0)=f_3(0)=f_0,\qquad
f_3'(0)=f_1'(0)+f_2'(0),
\tag{2.2}
$$
置 r(t)=f_3(t)-f_1(t)-f_2(t)+f_0，则
$$
h(t)=\int_0^1(1-u)r''(ut)\,du,\qquad
F(x,y)=f_1(x)+f_2(y)-f_0+xyh(x).
\tag{2.3}
$$
Taylor integral remainder 给 r(t)=t²h(t)，故 (2.3) 的三条 restrictions 正好是所给 traces。它在 C∞ seminorms 下连续，允许有限阶 derivative loss。不能在 t=0 直接代入未经延拓的 r(t)/t²。

(2.1) 反驳的是“保留任意内部 trace 且输出 smooth field”。下面的 homotopy 会运输 released internal traces，因而没有承诺这个不可能的性质。对更多 rays、曲线、forms 或 prescribed jets，不能只照抄 (2.2) 作为完整判据。

## 3. 先处理 vertex，再处理 edge

先在各 vertex 的互不相交小 chart 中处理全部 incident seams。以空间径向缩放、时间不动的映射
$$
\varphi_\tau(t,x,y)=(t,\tau x,\tau y),\qquad 0\leq\tau\leq1
$$
定义 usual de Rham homotopy K_v，即取 φ*ω 的 dτ 分量再积分。它逐 cell 作用且保持 incident traces，因为每条 ray 在缩放下不变。Vertex worldline 的 pullback 在各 cell 上相同，故
$$
dK_v+K_vd=1-P_v,
\tag{3.1}
$$
其中 P_v 为先限制到该 worldline、再沿空间常值延拓。P_vω 在 vertex 邻域是共同 smooth form。

取一个共同 ambient smooth cutoff χ_v，等于 1 于较小 vertex 邻域，支撑于该 chart。令 H_{v,0}=χ_vK_v，则
$$
1-dH_{v,0}-H_{v,0}d
=(1-\chi_v)1+\chi_vP_v-d\chi_v\wedge K_v.
\tag{3.2}
$$
因此它在较小邻域同时消除所有 incident seams 的非光滑性。

令 r 为完整真实 exterior trace，E 为 [H1](relative_homotopy.md) 的连续 graded extension，rE=1。其目标是 global smooth forms，一般 Ed≠dE。Product 时间和 boundary half-plane chart 使 φ_τ 保持真实 faces，所以 rH_{v,0} 将 smooth exterior joint traces 送到同类 traces。定义
$$
H_v=(1-Er)H_{v,0},\qquad F_v=1-dH_v-H_vd.
\tag{3.3}
$$
于是 rH_v=0、rF_v=r。F_v 与 (3.2) 之差是 global smooth forms，仍具有所需 vertex smoothness。H_v 保持原 smooth global subspace。

再在删去较小 vertex 邻域后的每条 compact edge 上，使用 H1 的 normal integration。其 cutoff 在已经 smooth 的 vertex 邻域内渐退到零；取足够窄的 edge collars，使它们不遇见其他 edges。Vertex 与 edge 处理的重叠只发生在先前已经 smooth 的区域。在那里 normal homotopy 由同一个 ambient smooth collar 定义，因而不会重新制造 seam。闭合而无 vertex 的 edge 直接用 tubular collar。每一步仍作 (1-Er) 的相对修正。

这个顺序不是任意假设：vertex smoothing 解决多条 edge collars 在交点处无法独立使用的问题；edge smoothing 只需处理剩余互不相交的部分。径向积分、normal integration、cutoff、trace、E 和有限次微分在上述 Fréchet spaces 上均连续。

## 4. 实际合成 maps、配对与 action

按已说明的合法顺序将所有步骤记为 H_1,…,H_N，F_a=1-dH_a-H_ad。置
$$
F=F_N\cdots F_1,\qquad
H=\sum_{a=1}^N H_aF_{a-1}\cdots F_1,
\tag{4.1}
$$
a=1 时空乘积为 1。Telescoping 逐项给
$$
1-F=dH+Hd,\qquad rH=0,\qquad rF=r.
\tag{4.2}
$$
§3 保证 F 的像为 global smooth forms。令 i:G→P_𝒢 为独立目标的 restriction，令 p:P_𝒢→G 为 F 的 smooth 输出，则
$$
ip=F,\qquad 1-ip=dH+Hd,\qquad
1-pi=dH_G+H_Gd,\qquad Hi=iH_G,
\tag{4.3}
$$
其中 H_G 是 H 在 smooth inputs 上的 restriction。没有使用 pi=1。

这证明 FC1。它只在局部消除切口，(4.2) 保留 M 的全部 de Rham cohomology；Σ 的 handles 和 holes 没有被整体收缩成一个 disk 或一点。因此线性的非平凡 holonomy classes 仍存在。这不等于已经加入所有 compact periods 与 nontrivial principal bundles。

配对使用所有 cells 的积分之和。每条内部 face 在两个 cell boundary 上的 orientation 相反；共同 traces 使 Stokes defects 相消。在 vertex，保留全部 incidence relations 后 boundary-of-boundary terms 也逐项抵消，没有额外独立支撑在 vertex 的 distributional fields。

因此 H2 的 tensor homotopy proof 原样适用 (4.3)。对于 CS，先移除所选择 artificial closing terms，再相加区域 BV actions；真实 wall realization 保留。CD2 的积分 additivity、真实 exterior defect 和 compact interior test 的弱非退化证明也适用。这个步骤未给每一个辅助 resolution 坐标新增物理 pairing。

## 5. 比较选择与有限 refinement coherence

两种实际构造给 p,H 和 p',H'。它们一般不是相同 raw map，甚至 smoothing 的次序就可能改变 raw 输出。和 H1 一样，
$$
R=pH'-H_Gp',\qquad p-p'=dR+Rd,\qquad rR=0.
\tag{5.1}
$$
矩阵检查使用确实不交换的两个 F_a，排除了只在相同输出时验证 (5.1) 的空泛检查。

(5.1) 本身只给两两 homotopy。完整的高阶处理使用 [NR1–NR3](nonabelian_relative_descent.md) 实际构造的相对 path object Z(P) 及其 endpoint-kernel contraction。

若 cut diagram β 细化 α，restriction 给 strict map
$$
j_{\beta\alpha}:P_\alpha\longrightarrow P_\beta,\qquad
j_{\beta\alpha}i_\alpha=i_\beta.
\tag{5.2}
$$
这里 P_α、P_β 都是同一 M、同一真实 exterior realization 的 fully opened matching model；箭头源侧只要求对其自身未切 cells 光滑。它们不是任意独立固定-source fibers 的乘积。

在 Z(P_β) 中，S_βj_{βα} 与由 j_{βα} 作用在 S_α 的 path 分量所得的 map，都提升同一个 endpoint map j_{βα}。因此 NR3 的 kernel homotopy 递归给
$$
p_{\beta,\infty}j_{\beta\alpha}\simeq p_{\alpha,\infty}
\quad\text{over the same exterior}.
\tag{5.3}
$$
对于 α→β→γ，两条复合比较的 boundary 都提升同一个 j_{γα}。在 Z(P_γ) 的 acyclic endpoint kernel 中作 triangle filler，就比较直接与分步的 homotopy。对有限 composable chains，继续使用 parameter simplex 的 face extension 与同一 kernel contraction，给每个更高 simplex 的相容 filler。这是逐层可执行的构造，不是由 (5.1) 两两关系直接推断 pentagon。

取 λ=0 得线性版本；formal non-Abelian CS 使用 NR 的全部 Taylor coefficients。对指定 continuous polynomial cohomology，(5.3) 使 induced maps 相同，有限 refinement 的合成在 cohomology 上严格相容。这里的参数 simplex 记录辅助选择的 homotopies，不是额外 spacetime/corner fields。

## 6. 对这次扩展的回攻和保留边界

- 固定所有内部 traces 会遇到 §2 的反例；本构造保持真实 exterior，运输已经 released 的内部资料。
- 改变 cutoff/处理次序确实改变 raw map；§5 给实际比较和 finite-diagram fillers，不声称 raw equality。
- 一般 linear p 不是 Lie map；不能直接把本页的 p 套进 nonlinear Q。NR2 逐 arity 修正此 defect。
- Full matching model 的 refinement coherence 不能直接作为 arbitrary intermediate closure 的 reopening theorem。若一组区域合并后，尚未释放的外部 traces 在新接点不光滑，A22/§2 仍会阻止该 intermediate object。必须在实际完整 source relation 上说明每一步的合法域。
- 本页在共同 trivial frame 中工作。Annulus 的线性 cohomology 不会丢，但 compact transition sectors、finite large-gauge comparison、self-sewing 的 bundle cocycle 和 singular stabilizers 仍需实际构造。
- 没有把 formal λ-series 在 λ=1 的收敛、renormalized quantum products 或 propagating Yang–Mills 算入结论。

**Verified:** 连续 vertex/edge maps、(4.1)–(4.3) 与相对配对有正文证明；§5 的高阶 fillers 由 NR3 的显式 acyclic-kernel 递归构造。Mathematica 检验三线反例及 extension，Sage 检验不交换顺序的 telescoping/choice identities。

**Assumptions:** 有限共同 conical charts 与 neat collars；smooth joint true-exterior traces；共同 frame；完整 source relations；明确的 physical realization；formal nonlinear 层使用 NR 的函数与过滤域。

**Not verified:** 任意 curved cut stratification 的几何延拓、任意 intermediate closure/reopening、compact bundle/gauge sectors、非形式非线性收敛、量子与传播模型。G1–G6 的未完成部分继续保留在 [programme](programme.md)。
