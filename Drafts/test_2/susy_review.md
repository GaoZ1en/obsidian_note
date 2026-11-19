# 独立超对称与 Killing 超代数审查

## 结论与证据等级

**原摘要的超对称数和 Killing 超代数断言，不能仅凭摘要得到证明。** 这里不是把“没有写 ansatz”误判成“所有这些结论都是假的”：以下给出一个可证明的非空候选族，支持非 null 的八超荷结构，同时指出 lightlike 的四与八可属于不同分支。

1. **未变形背景：成立。** 在题给通量与半径关系下，局部恰有 **16 个实超荷**；奇生成的局部 Killing 超代数为两个实形式的 \(\mathfrak d(2,1;\alpha)\)，其每个偶部为 \(\mathfrak{sl}(2,\mathbb R)\oplus\mathfrak{su}(2)\oplus\mathfrak{su}(2)\)。下面给出从 KSE 导出必要半投影的直接计算。
2. **任意均匀 warped 几何都必有指定超荷数：一般不成立。** 几何等距群只约束可能的超代数，不能代替含通量的 KSE；圆方向的左右选择、额外通量、全局辨识都会改变结果。零变形端点已有 16 而非 8。摘要中“generic”是否指特定族，需要 ansatz 才能判断。
3. **同侧三 Hopf 方向的一个具体非 null 族：所有规则非零变形局部恰为 8；零变形恰为16。** 这里不用时向双重性作为证明：已经精确验证 rank-eight 平坦超协变子丛，并用两个全参数超曲率因式分解证明任何 Killing 自旋子必须落在该子丛。非零变形不存在额外增强 locus。
4. **同侧等 squash 候选族的单个 \(\mathfrak d(2,1;\alpha)\) 因子：已证明。** 已精确验证 seed 到变形背景的全参数自旋子传输恒等式，并解析证明三组物理向量双线性只改变同一个整体归一化。因此 odd bracket 与 seed 单个异常因子同构，\(\alpha\) 不随变形变化；按本文定义 \(\alpha=R_-^2/R_+^2\)。这仍是指定族的结论，不能无条件推广到摘要未限定的所有 warp。
5. **null 的 generic 四不是普遍上界。** 对三独立生成元的 seed 自旋子不变性计数，同侧为 8；AdS null 与两个球的 Hopf 均反侧时为 4；两球选择混合左右时为 0。它们是满足相应变形构造条件时的保留候选／充分下界，不能不经完整 KSE 就当作最终完整计数。特别是同侧八超荷的平滑正则 null 极限不能凭空只剩四。
6. **不加 ansatz 限制的“超对称解两球 squash 必相等”：不成立。** 一个 spacelike 不等球有理样点已由独立实现精确证明恰为八超荷，详见第 5 节；不能再以可能存在未加说明的 SUSY 条件来挽救这个无条件命题。

本审查从本目录的 [goal.md](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) 与适用的 [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>) 独立开始；后续只在同目录内读取新增候选和本地核验源。没有联网，没有调用 CPS 或读取外部 formalism。原摘要未改动。非 null 候选是在审查过程中由主研究者明确提出后独立检验的，不是从摘要中推断出来的。

## 1. 约定与未变形背景的必要投影

取正交标架 \((0,1,2)\)、\((3,4,5)\)、\((6,7,8)\)、\(9=x\)、\(10=y\)，\(\eta=\mathrm{diag}(-,+,\ldots,+)\)。令

\[
a=L^{-1}>0,\qquad b=R_+^{-1}>0,\qquad c=R_-^{-1}>0,\qquad a^2=b^2+c^2,
\]
\[
A=\Gamma^{012},\quad B=\Gamma^{345},\quad C=\Gamma^{678},\quad X=\Gamma^9,\quad Y=\Gamma^{10},\quad H=aA+bB+cC.
\]

Gamma 上标为正交逆变指标，特别是 \((\Gamma^0)^2=-1\)。于是

\[
A^2=1,\quad B^2=C^2=-1,\quad \{A,B\}=\{A,C\}=\{B,C\}=0,\quad H^2=0.
\]

对五指标完全反对称的 \(\Gamma_M{}^{NPQR}\)，题给 KSE 等价于

\[
D_M\epsilon=\nabla_M\epsilon+
\left(\frac1{12}\Gamma_M\slashed F-\frac14\slashed F_M\right)\epsilon=0,
\quad
\slashed F=\frac1{4!}F_{NPQR}\Gamma^{NPQR},\quad
\slashed F_M=\frac1{3!}F_{MNPQ}\Gamma^{NPQ}.
\]

如果另用“\(\Gamma_M\Gamma^{NPQR}\)”作为 \(\Gamma_M{}^{NPQR}\) 的定义，必须先更正显式 delta 项；不能在两种记号间保持 \(-8\) 不变而照搬下面计算。

给定 \(F_0=2(a\,\mathrm{vol}_{A}+b\,\mathrm{vol}_{+}+c\,\mathrm{vol}_{-})\wedge e^9\)，有

\[
\slashed F_0=2HX,\qquad
D_x=\partial_x+\frac13H,\qquad
D_y=\partial_y+\frac16YHX.
\]

在某个三维因子内，记其系数与体积 Clifford 元为 \((r,V)=(a,A),(b,B),(c,C)\)，则

\[
D_i=\nabla_i+\Gamma_i\left(\frac16H-\frac r2V\right)X.
\]

**决定性的混合超曲率：** 因为 product 几何中的 \(H,X,Y\) 平行，并且 \(\{H,V\}=2rV^2\)，直接展开得

\[
[D_y,D_i]=\frac r{18}\,Y\Gamma_iVH.
\]

每个固定非零 \(r\) 对应的 \(Y\Gamma_iV\) 可逆，因此任何 Killing 自旋子必满足

\[
\boxed{H\epsilon=0.}
\]

这一步**没有假设** \(\epsilon\) 与 \(x,y\) 无关。反而由必要投影再得到 \(\partial_x\epsilon=\partial_y\epsilon=0\)。

写

\[
Q=\frac baAB+\frac caAC,\qquad Q^2=1,\qquad \mathrm{tr}\,Q=0,
\]

则 \(AH=a(1+Q)\)，故 \(H\epsilon=0\iff Q\epsilon=-\epsilon\)，实解空间维数为 16。

在此子丛上，KSE 化为

\[
\nabla_i\epsilon=\frac r2\Gamma_iVX\epsilon.
\]

该子丛被方程保持。各因子的曲率分别是 \(-a^2,+b^2,+c^2\)，其 spin 曲率与右端的交换子抵消；不同因子的混合曲率也为零。故得到 rank-16 平坦超协变子丛，在局部单连通区域恰有 16 个实解。这里的“恰有”既有混合曲率给出的上界，也有平坦子丛给出的下界。

## 2. 未变形 Killing 超代数及参数

在两个相关的左右群作用下，16 个自旋子的表示分解为

\[
\mathcal S=\mathcal S_L\oplus\mathcal S_R,
\qquad
\mathcal S_L=(\mathbf2,\mathbf2,\mathbf2;\mathbf1,\mathbf1,\mathbf1),
\quad
\mathcal S_R=(\mathbf1,\mathbf1,\mathbf1;\mathbf2,\mathbf2,\mathbf2),
\]

每一项为八实维，括号前后分别指 \(SL(2,\mathbb R)\times SU(2)_+\times SU(2)_-\) 的两套作用。每个八维块的奇奇括号产生三个简单偶因子，Jacobi 相容于

\[
(-1,\gamma_+,\gamma_-),\qquad
\gamma_+=\frac{L^2}{R_+^2},\quad
\gamma_-=\frac{L^2}{R_-^2},\quad
\gamma_++\gamma_-=1.
\]

这给出 \(\mathfrak d(2,1;\alpha)_L\oplus\mathfrak d(2,1;\alpha)_R\)。为了避免参数命名歧义，可直接用上述三个相对系数；若定义 \(\alpha=\gamma_+/\gamma_-\)，则

\[
\alpha=\frac{R_-^2}{R_+^2}.
\]

交换两个球给 \(\alpha\mapsto\alpha^{-1}\)；另外一些文献将 \(\gamma_+\in(0,1)\) 本身叫作 alpha，这不是同一个参数。

\(\mathbb R^2\) 平移是保通量的 bosonic spectator 对称，在自旋子上的作用为零。必须区分“奇生成 Killing 超代数”和“包括所有保通量 Killing 向量的完整对称超代数”；后一种记法可以额外写平移因子。不能未经定义把 \(\mathfrak d^2\) 当成完整 bosonic 对称列表。这里只讨论局部背景；离散商及 spin structure 可能进一步减少全局超荷。

## 3. 独立检验的具体非 null 族

### 3.1 完整局部 ansatz 与尺度映射

取种子群流形的正交一形式 \(\theta^i\)，三个三维因子采用同一取向的 Maurer–Cartan 约定

\[
d\theta^i=-\frac12 f^i{}_{jk}\theta^j\wedge\theta^k,
\qquad
f^i{}_{jk}=2r\eta^{ii}\varepsilon_{ijk}
\]

（指标限制在各自三维因子内，\(r=a,b,c\)）。选择球 fiber 指标 5、8；AdS spacelike fiber 取 2，timelike fiber 取 0。令其指标为 \(f_A\)，并设

\[
\delta=\eta_{f_Af_A}=\pm1,\qquad
\Theta=\theta^{f_A}\wedge\theta^5\wedge\theta^8,
\qquad
P=\Gamma^{f_A58},\quad P^2=-\delta.
\]

记 \(g_{\mathrm{base}}\) 是种子度规去掉这三个 fiber 后的部分，包含 \(dx^2+dy^2\)。被核验的场是

\[
\begin{split}
g'&=G^{-1/3}g_{\mathrm{base}}+
G^{2/3}\left[\delta(\theta^{f_A})^2+(\theta^5)^2+(\theta^8)^2\right],\\
F'&=F_0+\widehat\gamma\,\delta G\,d\Theta,
\qquad G=(1+\delta\widehat\gamma^2)^{-1}>0.
\end{split}
\]

若原坐标形式为 \(D\phi_A,D\phi_+,D\phi_-\)，\(\Delta_{\mathrm{coord}}\) 是三个 fiber metric 系数的有符号乘积，则 \(\widehat\gamma=\gamma\sqrt{|\Delta_{\mathrm{coord}}|}\)。这样 \(\gamma G\Delta_{\mathrm{coord}}D\phi_A\wedge D\phi_+\wedge D\phi_- =\widehat\gamma\delta G\Theta\)。这一步说明为何 timelike 通量有 \(\delta\) 符号。

设

\[
\lambda=\sqrt G>0,\quad q=\widehat\gamma\sqrt G,\quad s=G^{-1/6},\qquad
\boxed{\lambda^2+\delta q^2=1.}
\]

实际正交标架为 base 的 \(s\theta^i\)、三个 fiber 的 \(s\lambda\theta^f\)。把 KSE 整体乘常数 \(s\)，等价于在总体尺度移除后的标架计算；此时通量的 Clifford 收缩为

\[
\boxed{\mathcal F:=s\slashed F'=2H(X-\delta qP).}
\]

这里 \(s\slashed F'\) 指在实际正交标架计算 \(\slashed F'\) 后乘 \(s\)，不是把坐标四形式直接乘 \(s\)。该区分避免 warp 因子遗漏。

### 3.2 全参数 rank-eight 平坦子丛

定义

\[
\boxed{J=(\lambda+\delta qP)X,\qquad
\Pi=\frac14(1-Q)(1+J).}
\]

因为 \(P\) 与 \(A,B,C\) 交换而与 \(X\) 反交换，

\[
J^2=\lambda^2+\delta q^2=1,\qquad [Q,J]=0,\qquad \mathrm{tr}\,\Pi=8.
\]

\(\Pi\) 是实 rank-eight 投影，等价条件为

\[
\boxed{H\epsilon=0,\qquad J\epsilon=\epsilon.}
\]

在以下两个有理样点，独立的 32×32 直接计算先发现该子丛；随后使用精确多项式 Clifford 运算对**全部参数**验证：

\[
H D_i\Pi=0,\qquad (J-1)D_i\Pi=0,\qquad
\mathcal R_{ij}\Pi=0\qquad(0\leq i,j\leq10).
\]

由于使用非坐标群标架，超曲率是

\[
\mathcal R_{ij}=[D_i,D_j]-f'^k{}_{ij}D_k,
\qquad
f'^i{}_{jk}=f^i{}_{jk}\frac{t_i}{t_jt_k},\quad
 t_i=\begin{cases}\lambda&i\text{ 为所选 fiber},\\1&\text{ 否则}.\end{cases}
\]

不能漏掉 \(-f'D\) 项。上述恒等式证明子丛被完整 KSE 保持且限制超联络平坦。因此：

> 对这个明确的局部 ansatz，任意 \(a,b,c>0\)、\(a^2=b^2+c^2\)、\(\lambda>0\)、\(\lambda^2+\delta q^2=1\)，均存在至少八个局部实 Killing 自旋子。时向情形同样是直接 KSE 结论，无须假定时向 T/U 双重性保持普通实十一维理论。

这里证明的是 KSE；场方程需要单独检验。即使一般的 KSE integrability 定理可以帮助，也不应省略其 Bianchi/Maxwell 与可能的 null Einstein 分量假设。

### 3.3 全部非零变形的严格上界与精确证据

在第 3.2 节的总体尺度移除后标架中，\(5\) 是第一个球的 fiber，\(3,4\) 是其两个 base 方向。直接精确 Clifford 化简给出

\[
\boxed{\mathcal R_{5y}=-\frac{b\lambda^2}{18}\,Y\Gamma_5BH.}
\]

因为 \(b>0\)、\(\lambda>0\)，且 \(Y\Gamma_5B\) 可逆，任何 Killing 自旋子都必须满足 \(H\epsilon=0\)。再记 \(\Pi_H=(1-Q)/2\)，有第二个精确恒等式

\[
\boxed{\mathcal R_{34}\Pi_H=
\delta b^2q\,\Gamma^{34}P(\lambda-\delta qP)(1-J)\Pi_H.}
\]

\(\Gamma^{34}\) 和 \(P\) 可逆，且
\((\lambda-\delta qP)(\lambda+\delta qP)=1\)。因此 **任意非零 \(q\)** 都进一步强制 \(J\epsilon=\epsilon\)。结合已经证明的 rank-eight 平坦子丛，得到

\[
\boxed{N=8\quad(q\ne0,\ \lambda>0),\qquad N=16\quad(q=0).}
\]

这不是 generic 推断，而是任意允许的有限正半径、任意规则非零变形的精确计数；没有剩余的非零参数增强 locus。下面有限域秩证书是早期独立交叉检验，不再承担完整上界的证明。

精确核验脚本 [susy_exact_check.py](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py>) 仅使用 Python 内建整数运算，无外部包、无文件读取、无联网。它实现：

- 稀疏实 Clifford 乘法，\((\Gamma^0)^2=-1\)；
- 多项式商环关系 \(a^2=b^2+c^2\)、\(\lambda^2=1-\delta q^2\)；
- 为避免除法计算 \(E_i=12\lambda D_i\) 和 \(4a\Pi\)；
- 两种 \(\delta\) 各 94 条精确恒等式：四条投影关系、22 条联络保持关系、55 条曲率关系、下一节的 11 条 seed 自旋子传输恒等式，以及上述两条给出全参数上界的曲率因式分解。

实际运行结果：

```text
Delta = 1 checks = 94 failed = {}
Exact finite-field curvature rank = 24 mod 1009
Delta = -1 checks = 94 failed = {}
Exact finite-field curvature rank = 24 mod 1009
```

有限域计算分别取有理参数

\[
(a,b,c)=(5,3,4),\quad
(\lambda,q)=(3/5,4/5)\ (\delta=+1),\quad
(\lambda,q)=(5/3,4/3)\ (\delta=-1).
\]

在 \(\mathbb F_{1009}\) 中存在 \(\sqrt{-1}\)，故可用 32 维 Clifford 表示精确计算叠置的 55 个超曲率矩阵之秩。模素数秩为 24 证明有一个非零的 24 阶 minor；有理数域上的秩至少 24。全参数平坦 rank-eight 子丛又给出秩至多 24。因此在这些样点恰有八个局部 Killing 自旋子，并且该 minor 不是恒零多项式。

有限域证书本身已经给出非空 Zariski 开集上的严格八超荷结论；本节开头的两个因式分解进一步消除了可能的非零增强 locus，将结论提升为所有 \(q\ne0\) 均恰为八。

独立浮点脚本 [susy_clifford_check.py](</Users/koishi/Documents/Note/Drafts/test_2/susy_clifford_check.py>) 给出相同秩，并增加了 spacelike \((\lambda,q)=(4/5,3/5)\) 的检验。该脚本还显示非零变形下此左不变标架的**常数**自旋子核为零、超曲率核为八。这不矛盾：保留的是另一群作用侧的、坐标依赖的自旋子。只寻找常数分量会错误漏掉全部八个解。

### 3.4 自旋子传输、向量双线性与不变的 alpha

该同侧 ansatz 保留完整另一侧的 \(SL(2,\mathbb R)\times SU(2)_+\times SU(2)_-\)。以下给出比“八维 tri-fundamental 表示与 Jacobi”更强的直接奇奇括号证明。

令 seed 的八维子空间满足 \(H\epsilon_0=0\)、\(X\epsilon_0=\epsilon_0\)，定义实可逆矩阵

\[
S=\frac{1+\lambda+\delta qP}{\sqrt{2(1+\lambda)}},\qquad
S^2=\lambda+\delta qP,\quad SXS^{-1}=J,\quad [S,H]=0.
\]

以 \(\Omega_i\) 表示总体尺度移除后的超协变导数的代数联络部分，\(\Omega_i^{(0)}\) 表示 seed 对应部分。精确检查得到全部十一条

\[
\boxed{t_i\Omega_i S\Pi_0=S\Omega_i^{(0)}\Pi_0},\qquad
\Pi_0=\tfrac14(1-Q)(1+X).
\]

其核验不需要平方根：用 \(1+\lambda+\delta qP\) 代替 \(S\)，乘 \(12\lambda\) 消去分母即可。因为实际微分方向也按 \((s t_i)^{-1}\) 缩放，这证明

\[
\boxed{\epsilon'=S\epsilon_0}
\]

是完整局部 Killing 自旋子映射，不只是点上的投影映射。

取 Majorana 配对 \(\bar\epsilon=\epsilon^T\mathcal C\)，令 \((\Gamma^i)^T\mathcal C=-\mathcal C\Gamma^i\)。三阶 Clifford 元满足 \(P^T\mathcal C=\mathcal C P\)，从而 \(S^T\mathcal C=\mathcal C S\)。对非 fiber 指标 \(i\)，\(\{P,\Gamma^i\}=0\)；对 fiber 指标 \(f\)，\([P,\Gamma^f]=0\)。因此

\[
\bar\epsilon'_1\Gamma^i\epsilon'_2=\bar\epsilon_{01}\Gamma^i\epsilon_{02}\quad(i\text{ 非 fiber}),
\]
\[
\bar\epsilon'_1\Gamma^f\epsilon'_2=
\lambda\bar\epsilon_{01}\Gamma^f\epsilon_{02}
+\delta q\bar\epsilon_{01}\Gamma^fP\epsilon_{02}.
\]

最后一项严格为零：\([X,\Gamma^fP]=0\)，而 \(X\epsilon_{0j}=\epsilon_{0j}\)、\(X^T\mathcal C=-\mathcal C X\)，故该配对等于自身的负数。实际逆标架在 base 为 \(1/s\)，fiber 为 \(1/(s\lambda)\)，于是所有坐标向量双线性统一满足

\[
\boxed{K'(S\epsilon_{01},S\epsilon_{02})=s^{-1}K_0(\epsilon_{01},\epsilon_{02}).}
\]

再将所有变形自旋子乘同一常数 \(\sqrt s\)，奇奇括号完全等于 seed 对应八维扇区的奇奇括号。保留简单群的作用与 \(S\) 映射等变，所以 odd-even 括号也相同。因此：

> 此同侧候选族含一个实 \(\mathfrak d(2,1;\alpha)\) Killing 超代数因子，三个偶部系数相对比仍为 \((-1,\gamma_+,\gamma_-)\)，\(\alpha=\gamma_+/\gamma_-=R_-^2/R_+^2\)，与变形参数无关。对所有规则 \(q\ne0\)，这就是奇生成超代数；仅 \(q=0\) 恢复 seed 的第二个异常因子。

这同时证明三个简单因子的 odd bracket 系数不为零（有限正半径），不是仅从 Jacobi 猜测。三个残余 Hopf 对称及平移 spectator 应按所用“完整超对称代数”定义另行列入。本论证未借助时向双重性。

## 4. Hopf 不变性与 null 四／八分支

对保通量的 Killing 向量 \(K\)，使用 spinorial Lie derivative

\[
\mathcal L_K\epsilon=K^M\nabla_M\epsilon+\frac14(\nabla_MK_N)\Gamma^{MN}\epsilon.
\]

若一个解生成构造要求对**三个独立**圆／线方向均不变，应取三个算子的共同核；这与只要求某一个对角线性组合不变不同。

在 seed 的 \(\mathcal S_L\oplus\mathcal S_R\) 表示中：

- 一个非零 \(SU(2)\) Hopf 生成元在其作用的 \(\mathbf2\) 上无零特征值；它杀掉整块对应侧八维自旋子不变性，但不作用于另一侧。
- 非 null 的 spacelike hyperbolic 或 timelike elliptic \(\mathfrak{sl}(2,\mathbb R)\) 元，在其作用的二重态上同样无核。
- 非零 null/nilpotent 元 \(N\) 满足 \(N^2=0\)、\(\mathrm{rank}\,N=1\)，在对应八维块上保留 \(1\times2\times2=4\) 维共同候选。

固定 AdS 生成元属于 L 侧，得到下表（球方向指独立的两个 Hopf 生成元）：

| AdS 类型 | 两球选择 | seed 的三个 Lie 导数共同核 |
|---|---|---:|
| spacelike / timelike | L,L | R 块，8 |
| spacelike / timelike | R,R | 0 |
| 任意上述类型 | L,R 或 R,L | 0 |
| null | L,L | R 块，8 |
| null | R,R | L 块的 nilpotent 核，4 |

这是**表示论的精确计数**，不是完整变形 KSE 的无条件分类：不变性条件可成为某个已证解生成构造的充分条件，但不能用于排除变形后额外超对称。混合左右时共同核为零也只意味着该继承机制不提供超荷，并不是所有具有该 bosonic ansatz 的解均不超对称。

对于提出的 null 候选

\[
g'=g_0-\gamma^2|K_+|^2|K_-|^2k_0^2,
\qquad F'=F_0+\gamma\,d(k_0\wedge k_+\wedge k_-),\quad
k_i=g_0(K_i,\cdot),\quad K_0^2=0,
\]

本审查确认上述不变性计数适用作为研究路线；没有在本文件对应的非 null 脚本中验证其完整超曲率。null fiber 是退化方向，不可把 \(\Delta=0\) 生硬代入依赖非退化三维 fiber metric 的推导。独立直接 null KSE 检验应使用正则 null 标架。

若有一个正则、光滑的八维 Killing 自旋子子丛沿参数趋向某个 null 背景，且归一化及局部标架保持非奇异，则极限至少保留八个解。秩可在极限下降从而增强，但不会由正则有限维核极限使超荷数下降。若需要额外无限 boost／奇异坐标重标度，必须另外检查上述正则性。

四个超荷不可能容纳一个完整 \(\mathfrak d(2,1;\alpha)\) 的八维奇部。null 四超荷分支的超代数必须另算，不能把非 null 分支的异常超代数名字直接沿用。

## 5. 补充：不等球候选与取向警告

审查后半段又读取了同目录的 [bosonic_review.md](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md>)，仅为核对其新增不等球候选；这不改变上面独立推导所依据的 ansatz。独立数值脚本 [susy_unequal_check.py](</Users/koishi/Documents/Note/Drafts/test_2/susy_unequal_check.py>) 按该文第 3 节的通量和所有 fiber 的 \(d\theta=+f\,\mathrm{area}\) 约定，得到：

| 候选 | 参数 \((a,b,c)=(5,3,4)\) | 超曲率共同核 | 加入联络保持条件后的核 |
|---|---|---:|---:|
| seed | \((\lambda,t)=(1,0)\) | 16 | 16 |
| 不等球 spacelike | \((3/5,4/5)\) | 8 | 8 |
| 不等球 timelike | \((5/3,4/3)\) | 0 | 0 |

本脚本这一阶段使用浮点矩阵。随后独立 bosonic 审查者在同一 spacelike 有理样点完成了精确复核，见 [精确 8-BPS 反例](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md#L274-L314>) 及 [精确核验源](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_bps_counterexample.wl>)。本审查随后只读复核了该源的 Koszul、KSE、非坐标曲率及保持性公式，与上述独立实现一致。精确输出为曲率核／稳定核维数 \(\{8,8\}\)，且与以下投影的行空间严格相同：

\[
P_{\rm u}=\Gamma^{2,5,10},\quad
H_{\rm u}=aA+bB+c(\lambda+tP_{\rm u})C,\quad
H_{\rm u}\epsilon=0,\quad
(\lambda+tP_{\rm u})X\epsilon=-\epsilon.
\]

该计算选 \(\Gamma^{0\cdots10}=-1\)，与题给定向的物理 Clifford 对偶约定需共同跟踪。精确复核证明这个 rank-eight 子丛被连接保持且平坦，并以曲率核给出上界，因此该有理样点**恰有八个实超荷**。结合已核验的 bosonic 方程，它已经严格反驳不加 ansatz 限制的“超对称解两个球 squash 必相等”。这仍不是不等球族的全参数 SUSY 分类；timelike 行仍只是当前取向下的数值检验。

**取向警告：** 本文第 3 节的 same-side timelike 族在同一群 Maurer–Cartan 约定下是 AdS timelike fiber 的 \(d\theta_A=+2a\,\mathrm{area}_A\)、两个球 fiber 的 \(d\theta_\pm=-2r_\pm\,\mathrm{area}_\pm\)。若把三者都选成正号，同时保留正的三个 \(F_0\) 体积系数，就可能选择了不同的相对左右作用。不能只凭“timelike + 两球 squash”将八超荷证书挪用到另一通量/取向分支。上述不等球 timelike 零核正说明应显式核对这件事。

## 6. 对摘要建议的精确降格

将结论严格限定到本审查已经核验的 ansatz 后，可以表述为：

> We identify a same-side three-fiber deformation ansatz whose regular non-null branches preserve precisely eight local real supercharges for every nonzero deformation, enhancing to sixteen at the undeformed point. An explicit Killing-spinor map preserves the vector bilinears up to a common normalization, establishing a single exceptional Killing-superalgebra factor with the undeformed radius-ratio parameter. Null choices admit distinct inherited four- and eight-supercharge sectors, depending on the relative left/right choices of the selected generators.

这不是建议直接改写原文；原摘要保持不动。尤其“两个球的 deformation parameters 必须相等”在本审查的候选族里是共同 \(G\) 的**构造条件**，不能提升成没有限定 ansatz 的场方程必要性定理。

**Verified:** 未变形混合超曲率投影与16维局部解；非 null 同侧候选的全参数 rank-eight 平坦 KSE 子丛；两签名所有非零变形恰八的精确曲率因式分解及有理样点秩交叉检验；全参数自旋子传输与向量双线性证明的单个异常超代数及不变半径比参数；seed Hopf/null 表示论共同核计数；不等球 spacelike 有理样点的独立精确八超荷证书（本审查完成其独立数值实现及精确源只读复核）。

**Assumptions:** mostly plus；五指标完全反对称 gamma 约定；指定通量取向与 Maurer–Cartan 取向；正半径且满足 seed 半径关系；局部单连通区域；非 null ansatz 的 \(G>0\)；无额外离散商。

**Not verified here:** 非 null 场方程；null 候选的完整 KSE／场方程（主研究者另有独立计算，不在本文件的证书内）；全局 spin structure；摘要的守恒荷及所谓普遍的双球参数相等必要性。
