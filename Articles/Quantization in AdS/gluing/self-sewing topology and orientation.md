# Self-sewing: topology、orientation 与 theory descent

**固定时间的自粘合可以产生任意紧致 smooth surface，包括所有 genus 的可定向曲面及所有 crosscap 数的不可定向曲面。** 必须同时指定 face identifications、vertex links、商度量/函数域，以及 field/bundle/action 的下降数据。可实现的拓扑不等于某个固定平直多边形可实现的光滑度量，也不等于某个给定 theory 在该拓扑上可定义。

对普通 scalar 与 parity-even Yang–Mills，density action 不因空间不可定向而自动失效。对本项目的单份非零 level chiral Chern–Simons，orientation 是额外输入；它不能直接照搬 scalar 在 Klein bottle 上的下降。下文把这三个问题分开。

## 1. 自粘合数据与 manifold 判据

设有限个紧致 cells $R_i$ 构成切开的空间。每条 artificial face 记录两个 **occurrences**，即使它们属于同一个 $R_i$；指定 pairing diffeomorphism 及 collar transition。未配对的 faces 是 physical boundary。定义
$$
\Sigma=\left(\coprod_iR_i\right)/\sim,\qquad M=I\times\Sigma.
$$
时间不参与识别。Action 是 $\sum_iS_i$，每个物理区域只计一次；self-seam 不复制整个系统。

在二维 polygonal presentation 中，以下数据给可直接检查的局部判据：

1. 每条内部开边恰有两个 incident half-disks，边界开边恰有一个；
2. 每个原 corner 的 link 是一个区间；按 edge maps 识别这些区间的端点；
3. 每个 vertex orbit 的合成 link，内部须为一条圆，physical boundary 上须为一个区间。

有限 closed face identifications 给 Hausdorff 的紧商；加上这些 link 条件，每点分别有 disk 或 half-disk 邻域。因此是带可能边界的 topological surface。若 link 是两条圆，即使所有 open-edge conditions 都通过，该点仍是 pinch singularity。若 link 分叉，则是 branching space；都不能命名为 ordinary Cauchy surface。

这项判据关于拓扑。给定 topological surface 可选 smooth structure；但某个预先指定的 collar/metric 必须另查是否在 vertices 光滑。Higher-dimensional PL cell models 则要检查全部 strata 的 sphere/ball links，不能只查边或 Euler characteristic。这里不声称给出高维 smooth manifolds 的完整分类。

## 2. 二维的全部紧致连通 topology

记 $\Sigma_{g,b}$ 为 genus $g\ge0$ 的可定向曲面去掉 $b\ge0$ 个开圆盘；记 $N_{r,b}$ 为 $r\ge1$ 个 $\mathbb{RP}^2$ 的 connected sum 去掉 $b$ 个开圆盘。除去同胚重复，紧致连通曲面恰为这两类。球面是 $\Sigma_{0,0}$；disk 是 $\Sigma_{0,1}$。

| 类型 | 闭曲面的 polygon word | $\chi$ | $b=0$ 的 $H_1(-;\mathbb Z)$ | $b=0$ 的 $H_2(-;\mathbb Z)$ |
|---|---|---|---|---|
| $\Sigma_{g,b}$ | $\prod_{j=1}^{g} a_j b_j a_j^{-1} b_j^{-1}$，$g\ge1$ | $2-2g-b$ | $\mathbb Z^{2g}$ | $\mathbb Z$ |
| $N_{r,b}$ | $c_1c_1c_2c_2\cdots c_rc_r$ | $2-r-b$ | $\mathbb Z^{r-1}\oplus\mathbb Z_2$ | $0$ |

Word 的符号相对于 polygon boundary traversal；同名箭头按同方向识别。第一行每个 label 一正一负，第二行同名两次同号。闭 genus-$g$ 模型有一个 face、$2g$ 个 edges、一个 vertex，故 $\chi=2-2g$；闭 crosscap-$r$ 模型有一个 face、$r$ 个 edges、一个 vertex，故 $\chi=2-r$。链接逐条闭成一个 circle，保证它们是 surfaces。球面可由两张 disks 沿整个 boundary 拼合。

对 $b>0$，
$$
H_1(\Sigma_{g,b};\mathbb Z)=\mathbb Z^{2g+b-1},\qquad
H_1(N_{r,b};\mathbb Z)=\mathbb Z^{r+b-1},\qquad H_2=0.
$$
Boundary circles 不应再作为 artificial ports 全部 quotient；它们需要自己的 physical conditions/charges。

**完整性输入与构造。** 使用紧曲面的 triangulation 与标准 surface-classification theorem。给任意紧连通 smooth surface，先三角剖分，再沿 dual spanning tree 合并 faces，得到一个 polygonal schema；边识别化简为上表两个 normal words，边界分量保留。反向由这些 words 与 link 检查构造对应曲面。Fundamental-group/cellular calculations 可参见 [Hatcher, Algebraic Topology, Chapters 1–2](https://pi.math.cornell.edu/~hatcher/AT/ATchapters.html)。这里引用分类定理作为已知 topology 输入；有限枚举不证明它。

典型例子为
$$
\Sigma_{0,0}=S^2,\quad \Sigma_{1,0}=T^2,\quad
\Sigma_{0,2}=\text{annulus},\quad
N_{1,0}=\mathbb{RP}^2,\quad N_{2,0}=K,\quad
N_{1,1}=\text{Möbius strip}.
$$
因此 [rectangle benchmark](<models/rectangle scalar self-gluing.md>) 的四种闭 topology 只是“不细分四条整边”的有限子问题。增加 faces 或细分边界后，不能继续把 $S^2,\mathbb{RP}^2,T^2,K$ 当作一般性的完整列表。

## 3. Orientation 是 transition cocycle

对每个 cell 先任意选 orientation。跨一对 faces 的 collar transition 决定 orientation transport 的符号。试图给每个 cell 重新选择一个符号，使所有 glued collars 上 orientation 相容：

- 若可以做到，$\Sigma$ orientable；
- 若沿某条 closed cell path 的符号乘积为 $-1$，全局选择不可能。

该 obstruction 是 $w_1(T\Sigma)\in H^1(\Sigma;\mathbb Z_2)$。在单个 polygon 中，所有 paired edges 反转 boundary traversal 才能延拓面内 orientation；这解释上表 words 的区别。多 cell presentation 必须允许先翻转整个 cell 的 orientation，不能根据某一条 seam 的局部正负单独决定。

Orientation-reversing holonomy 沿不可收缩 loop 可以存在；一个收缩到 ordinary vertex 的 collar cycle 却必须产生一致的局部 chart。两者不能混淆。Klein bottle 的 glide reflection 属于前者，错误的 vertex link 或不闭合局部 transition 属于后者。

对于 connected nonorientable surface，orientation double cover 有 deck involution $\tau$。闭 $N_r$ 的 cover 是 orientable genus $r-1$ surface，因为
$$
\chi(\widetilde N_r)=2(2-r)=2-2(r-1).
$$
当有 $b$ 个 boundary components 时，cover 有 $2b$ 个 boundary components，仍为 genus $r-1$。普通 scalar 的下降要求 $\tau^*\phi=\phi$；twisted fields 则按自己的 bundle involution 下降，不能统一替换成 ordinary even functions。

## 4. 拓扑实现与固定度量实现不同

给定任意上述 smooth $\Sigma$，可以先选 smooth Riemannian metric $h$，再切开它。由该 metric 的真实 restriction 得到的 regional actions/collars 自然相容；这说明 topology 本身没有把 genus 限制在 rectangle 的范围内。

反过来，若各 cells 的 metric 已先固定，face maps 至少须保持 tangential metric，并在 collar 中匹配完整 metric jets，才能无 defect 地恢复同一个 smooth theory。仅匹配 field 值和 flux 不证明这个背景几何条件。

对 piecewise-flat surface，顶点总角为
$$
\alpha_v=\sum_{\text{corners in }[v]}\alpha_{i,v}.
$$
内部 smooth flat vertex 必须为 $2\pi$；smooth geodesic physical boundary 点为 $\pi$。其余角度给 cone/boundary-corner geometry，要另选允许域。闭 piecewise-flat surface 满足
$$
\sum_v(2\pi-\alpha_v)=2\pi\chi(\Sigma).
$$
所以所有顶点都 smooth flat 的紧闭曲面必须 $\chi=0$：orientable 时只有 $T^2$，nonorientable 时只有 $K$。这是固定 flat geometry 的限制，不是 topology 的禁止。

高 genus 可以用 curved cells。曲率 $-1$ 的 genus-$g$、$g\ge2$ 闭 orientable surface，可由一个 $4g$-gon、每个内角 $\pi/(2g)$ 的标准 pairing 构造；总顶点角为 $2\pi$，面积 $4\pi(g-1)$。闭 nonorientable $N_r$、$r\ge3$ 可用相应 $2r$-gon、角 $\pi/r$，面积 $2\pi(r-2)$。球面和 $\mathbb{RP}^2$ 使用正曲率几何。它们改变 regional background metric，不能说从同一个 Euclidean rectangle action 原样得到。

## 5. Field、gauge 与 bundle 的 joint descent

普通 scalar 在任意 orientability 上可用 density 写 action：
$$
S=\frac12\int_I dt\int_\Sigma d\mathrm{vol}_h\,
\big(\dot\phi^2-|d\phi|_h^2-m^2\phi^2\big).
$$
Momentum 和 CPS 使用同一个正 density，
$$
\Theta=\int_\Sigma p\,\delta\phi\,d\mathrm{vol}_h,\qquad
\Omega=\delta\Theta.
$$
这些表达式不要求选 spatial orientation。Green flux 使用 outward conormal 与 boundary density；不可定向性不取消成对的 conormal signs。

对一般 Sobolev 类，histories 是各区域 bulk space 的联合 trace image。Smooth 类要求沿 identified charts 匹配全部 field jets；energy 类则使用其实际 trace/form domain。两种条件不可互相替换。在 cone 模型，Friedrichs domain 是 action/form 的一个明确选择，不等于全部 self-adjoint extensions，也不提供自动的 Wick/renormalization theorem。

Gauge theory 还须给 transition functions
$$
A_j=h_{ij}^{-1}A_ih_{ij}+h_{ij}^{-1}dh_{ij},
\qquad h_{ij}h_{jk}h_{ki}=1
$$
（在对应共同 frame 下），以及实际 extendible gauge trace group。Incident faces/corners 上的 $h_{ij}$ 不是任意独立函数。Contractible chart cycles 的 cocycle 要闭合，非收缩 loops 则可保留 gauge holonomy。只选 $h=1$ 的一张 chart 可能遗漏 bundle sectors。

例如 closed surface 上 $U(1)$ bundles 按 $H^2(\Sigma;\mathbb Z)$ 分类：
$$
H^2(\Sigma_{g,0};\mathbb Z)=\mathbb Z,\qquad
H^2(N_{r,0};\mathbb Z)=\mathbb Z_2.
$$
后者来自 $H_1(N_r;\mathbb Z)$ 的 torsion 与 universal coefficient theorem；$H_2(N_r;\mathbb Z)=0$ 不意味着所有 line bundles 平凡。$b>0$ 的紧 surfaces 则 $H^2(-;\mathbb Z)=0$。即使 bundle 平凡，flat connections 仍可有非平凡 cycle holonomies。一般 field content 还可能需要 orientation local system、spin 或 Pin data；这些由该 theory 的定义决定。

在 parity-even Yang–Mills 中，$\langle F_{\mu\nu},F^{\mu\nu}\rangle$ 乘 density 可以直接下降；这不自动证明其 nonlinear IBVP 或 quantum sewing。1+1 YM 的 connected compact spatial one-manifold 只有 interval 或 circle；三价以上 graph vertices 不再是 ordinary one-manifold，必须另给 junction dynamics。

## 6. Chern–Simons 的 orientability obstruction

对 ordinary single $U(1)$ connection，$A\wedge dA$ 是 untwisted 3-form。若 $\Sigma$ 不可定向且时间方向固定，$I\times\Sigma$ 也不可定向，没有所需的 ordinary integration orientation。Orientation reversal 将有向 CS action 送到其负值，即把 level $k$ 送到 $-k$。Charge conjugation $A\mapsto-A$ 保持 $A\wedge dA$，不能补偿此符号。因此
$$
\boxed{\text{单份 }k\ne0\text{ 的 ordinary chiral }U(1)\text{ CS，
不能以 scalar 的同一规则下降到不可定向 }\Sigma.}
$$
在 orientation double cover 上把 connection 简单设为 $\tau$-invariant，会使 oriented integral 两个 sheets 相消；得到的零 action 不是原 chiral CS 的定义。

一个不同而可明确研究的 classical theory 是 doubled Abelian CS。令 $A$ 为多分量 connection、$K$ 为非退化 symmetric level matrix，orientation-reversing overlap 同时作 $A\mapsto RA$。要使局部 top form 按 orientation local system 下降，须满足
$$
\boxed{R^T K R=-K.}
$$
若要求 compact gauge lattice 保持，则 $R\in GL(n,\mathbb Z)$；对一个 involutive descent 还要求 $R^2=1$。例如
$$
K=\begin{pmatrix}k&0\\0&-k\end{pmatrix},\qquad
R=\begin{pmatrix}0&1\\1&0\end{pmatrix}
$$
满足条件。在 double cover 施加 $\tau^*A=RA$ 后，$A^T K\,dA$ 是 anti-invariant top form，定义 quotient 上的 twisted density，积分可用 cover 积分的一半表示。参见 [Chan–Teo–Ryu 的 parity-twisted Abelian CS 构造](https://arxiv.org/html/1509.03920)。

这证明 local classical action 的下降条件；完整 compact quantum theory 还需 level lattice、boundary polarization 和 parity/anomaly 数据。一个 anti-isometry 矩阵检验不证明全部 quantum sewing。特别地，[open-chord CS benchmark](<models/U(1) Chern-Simons disk and open-chord sewing.md>) 是 oriented disk 上的单份 current theorem，与 doubled nonorientable theory 是两个明确不同的模型。

## 7. Topology 如何进入 observable sewing

| 输入 | 对 regional/global algebra 的实际影响 |
|---|---|
| Face occurrences 与 pairings | 决定哪些 histories 共用、response 如何拉回，以及 self-seam 的 action 计数 |
| Vertex links / collar maps | 决定商是否为 manifold、是否留有 geometric defect |
| Orientation cocycle | 决定 action/fields 可否下降，或是否须使用 twisted/doubled theory |
| Joint trace 与 operator domain | 决定 admissible Hamiltonian derivatives、flux pairing、quantum test class |
| Bundle cocycles 与非收缩 cycles | 决定 gauge sectors、Wilson loops、flat/harmonic 数据；局部 constraints 不能删掉它们 |
| Residual gauge stabilizers | 决定 reduction 是否奇异；与 geometric corners 是另一项问题 |

同一个 topology 不唯一决定 algebra：metric、coupling、physical boundary conditions、bundle sector 和 quantization prescription 仍属于模型。反过来，topology 增加 cycle 时不能只按局部 flux matching 推断 target 没有额外 holonomy generators。

以闭曲面 flat-connection sector 为例，global holonomies 须满足
$$
\prod_{j=1}^{g}[A_j,B_j]=1
\quad(\Sigma_g),\qquad
\prod_{j=1}^{r}C_j^2=1
\quad(N_r),
$$
再按 global gauge conjugation quotient，并保留所选 bundle/representation sectors。后式本身是 flat-connection topology 的表达，不是宣称 ordinary chiral CS 已能放在 $N_r$ 上。

有限多 seam 的 relation composition 可以逐条施加同一批 identifications；但 Poisson/quantum associativity 还要求每个中间对象保留尚未释放的 charges、transition/holonomy 和 joint-domain 数据。不能先分别 quotient 成只剩局部 cut-invariants，再用 topology 的 associativity 恢复已丢失的 crossing observables。

## 8. 空间自粘合不等于时间中的 topology change

本笔记选定一个 quotient $\Sigma$ 后使用 $M=I\times\Sigma$。对任意紧致 smooth $\Sigma$，无论 orientability，选 Riemannian $h$ 后
$$
g=-dt^2+h
$$
给静态 time-oriented spacetime；无边界时各 $\{t\}\times\Sigma$ 为 Cauchy surfaces。这个事实不保证任意 theory 可定义，但说明 Lorentzian metric 不单独禁止 nonorientable spatial topology。有 timelike physical boundary 时须采用带边界的因果/IBVP 版本。

若要求在同一个光滑 globally hyperbolic evolution 中，不同时间的 Cauchy surfaces 改变 genus 或 orientability，则已离开这里的 product problem。Cauchy temporal flow 把各 slices 互相微分同胚，因而其 topology 固定。把两个 ports 自粘合得到另一个静态系统，与在原系统有限时间内真的改变 Cauchy topology，不是同一断言。

## 9. 其他空间维数

一般的 $\Sigma$ 不限于 CS 所需的二维。对 compact smooth manifolds，可先 triangulate，再以 simplices 为独立 cells；沿 dual spanning tree 合并，可把闭连通情形组织成一个 ball 的 boundary-face identifications。必须保留所有 lower-dimensional identifications 与 links。这是一个构造方式，不是以某个数值 invariant 分类全部高维 manifolds。

| 空间维数 | 这里可以给出的 topology statement |
|---|---|
| $1$ | 紧连通 manifold 是 circle 或 closed interval；非定向情形不存在 |
| $2$ | §2 给出含边界的完整 orientable/nonorientable 分类 |
| $3$ | 可构造 $S^3,T^3,S^1\times S^2$、lens spaces，以及 nonorientable $S^1\times\mathbb{RP}^2$ 等；单个 genus 或 Euler 数不能分类 |
| $\ge4$ | 一般 cell/handle、orientation 与 action-descent 条件仍适用；smooth structure 还可能是独立于 homeomorphism type 的数据 |

因此研究某个 higher-dimensional field theory 时，应固定目标 manifold、bundle 与 cell presentation，再核验其 regional reconstruction；本笔记不把二维 polygon words 宣称为所有维数的 topology classification。

## 10. 证明与检查范围

**Verified:** 二维 presentation 的 link/orientation 判据、两类 standard words 的 Euler/homology 计算、metric 与 action descent 的区别、CS 的 orientation obstruction 和 doubled classical anti-isometry 条件；surface-classification 与 smoothability 使用上述标准 topology 输入。[Sage checks](<numerics/ym_circle_self_sewing_topology_checks.sage>) 验证 $g=1,\ldots,6$ 和 $r=1,\ldots,8$ 的 vertex links、Euler 数及 cellular Smith data；[Mathematica checks](<numerics/ym_circle_cs_corner_checks.wl>) 验证 doubled $K$ 恒等式。具体结果见 [verification record](<numerics/ym circle and CS corner verification.md>)。

**Assumptions:** 有限 compact smooth/PL cell presentations、指定 physical boundary 和 pairwise face/collar data；polygon classification 部分为空间维数二；时间不参与识别。

**Not verified:** 高维 manifolds 的完整分类、任意原固定 metric 的光滑下降、每个 topology 的 PDE/quantum existence、general gauge reduction、nonorientable quantum CS anomaly cancellation、singular/conic Wick renormalization、真正的 temporal topology-changing dynamics。拓扑分类本身不替代任何一个 model 的 domain/kernel/image 证明。
