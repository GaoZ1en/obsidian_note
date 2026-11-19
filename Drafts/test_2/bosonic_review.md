# 独立 bosonic 核查：显式齐次解与“两球必等”的反例

## 结论

1. **在一个明确、受限的六项四形式 ansatz 内，两个球的 squash 必相等，而且等于 AdS 的非零范数 fiber warp。** 下文给出必要性证明，不能把它升级成所有不变通量的分类定理。
2. **若允许一般十一维四形式，“两球形变必相等”不成立。** 第 3 节给出严格直积度规的显式反例：AdS 和 S³₊ 同时变形，S³₋ 保持圆球；没有把交叉纤维项伪装成 squash。Bianchi、完整 Maxwell–Chern–Simons 方程和 Einstein 方程均通过直接检验。
3. 等 squash 的 spacelike/timelike 家族确实存在；null 家族可由已验证家族的光滑极限严格获得。
4. **追加的精确 Clifford 计算证明：第 3 节 spacelike 不等球反例在 (f₀,f₊,f₋)=(10,6,8)、(q,t)=(3/5,4/5) 时恰有 8 个局部实超荷。** 这是严格的超对称反例，不只是数值提示；第 7 节给出计算与充分性证明。未声称整个不等球参数族的超荷数，也未计算 Killing superalgebra 或 conserved charges。

本核查没有联网。读取了本目录 [goal.md](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) 及适用的 [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>)；未以摘要断言作为证明。Mathematica 用于自包含代数计算，不读取其他用户资料。超对称反例先由 susy 子代理独立数值发现，随后本子任务用独立 Wolfram 精确矩阵实现复核；bosonic 方程给出完整可复算的解析和符号证据。

## 1. 约定和显式几何

采用 mostly plus，定向 e¹∧⋯∧e¹¹，

\[
dF=0,\qquad d\star F+\tfrac12F\wedge F=0,\qquad
R_{MN}=\frac1{12}\left(F_{MPQR}F_N{}^{PQR}-\frac1{12}g_{MN}F^2\right).
\]

记 e^{ijk\cdots}=e^i∧e^j∧e^k∧⋯。三个三维因子依次编号 (123),(456),(789)，fiber 分别为 3,6,9，平直方向 e¹⁰=dx、e¹¹=dy。所有常数 f₀,f₊,f₋>0，aᵢ=fᵢ⁻¹；圆球/未变形 AdS 的几何半径为 Rᵢ=2aᵢ，而不是 aᵢ。

每个球用
\[
u^1=a\,d\vartheta,\quad u^2=a\sin\vartheta\,d\phi,
\quad\theta=a(d\psi-\cos\vartheta\,d\phi),\quad
 d\theta=f\,u^1\wedge u^2.
\]
其度规是 (u¹)²+(u²)²+q²θ²，正交 fiber eᶠ=qθ；q=1 是圆球。

AdS 的两种非 null 选择：

- **Spacelike fiber，η=+1**：
  \[
  u^1=a_0\cosh\rho\,dt,\quad u^2=a_0d\rho,\quad
  \theta_0=a_0(d\psi-\sinh\rho\,dt),
  \quad ds_0^2=-(u^1)^2+(u^2)^2+q_0^2\theta_0^2.
  \]
- **Timelike fiber，η=−1**：
  \[
  u^1=a_0d\rho,\quad u^2=a_0\sinh\rho\,d\phi,\quad
  \theta_0=a_0(dt+\cosh\rho\,d\phi),
  \quad ds_0^2=(u^1)^2+(u^2)^2-q_0^2\theta_0^2.
  \]

两者都有 dθ₀=f₀u¹∧u²，且 q₀=1 时局部为 AdS₃。上述坐标只需局部使用；关于时间覆盖、球 Hopf 周期和通量量子化的额外全局要求不包含在本结果中。

以下在 invariant 子代数内使用
\[
 d(e^{12})=d(e^{45})=d(e^{78})=0,\quad
 de^3=c_0e^{12},\quad de^6=c_+e^{45},\quad de^9=c_-e^{78},
\qquad c_i=q_if_i.
\]
这不意味着单独的 base coframe 都是闭的；实际计算只对成对出现的 base 面积形式使用闭性。

设 χ₀=−1、χ₊=χ₋=+1。曲率公式为
\[
 R_{ab}^{(i)}=\chi_i f_i^2(1-q_i^2/2)g_{ab},\qquad
 R_{ff}^{(i)}=\chi_i f_i^2q_i^2g_{ff}/2.
\]
可由二维 base 的 Kᵢ=χᵢfᵢ² 与常曲率圈纤维 KK 公式得到；q=1 给 Rμν=±gμν/(2a²)=±2gμν/R²。所有平直方向 Ricci 为零。

## 2. 等 squash 家族及其受限必要性

取
\[
f_0^2=f_+^2+f_-^2,\quad q^2=1-\eta t^2>0,\qquad q_0=q_+=q_-=q.
\]
显式正交标架四形式为
\[
\boxed{
F=f_0e^{123\,10}+f_+e^{456\,10}+f_-e^{789\,10}
+\eta t\left(f_0e^{1269}-f_+e^{3459}+f_-e^{3678}\right).
}
\]
这是严格直积 warped AdS₃×squashed S³₊×squashed S³₋×R²。

这里 spacelike 分支 |t|<1、0<q≤1；timelike 分支 t∈R、q≥1。t=0 回到标准背景；q=0 是退化边界，不是有效度规。

令三个混合项系数依次为 T₀,T₊,T₋（包括上式中 T₊ 的负号）。Bianchi 条件是
\[
T_0c_++T_+c_0=0,\quad -T_0c_-+T_-c_0=0,\quad
-T_+c_--T_-c_+=0.
\]
F∧F=0，F²=0；Maxwell 唯一非平凡条件比例于
\[
-c_0T_0-c_+T_++c_-T_-=0,
\]
对 timelike fiber 整体翻号而不改变零点。代入后都归结于 f₀²=f₊²+f₋²。Einstein 的 base/fiber 两个特征值直接等于第 1 节曲率。

### 受限必要性命题

固定第 1 节的严格直积几何，允许 qᵢ 独立，但**只允许上面这六个四形式分量**，其电系数记 Eᵢ，混合系数记 Tᵢ；不加入其他 invariant flux。

两个 flat Einstein 方程首先给 F²=0、电/磁各自的零范数关系。随后每个因子的 base 与 fiber Einstein 方程给
\[
 E_i^2=f_i^2,\qquad T_i^2=\eta f_i^2(1-q_i^2).
\]
Bianchi 又要求
\[
\frac{T_0}{q_0f_0}=-\frac{T_+}{q_+f_+}
=\frac{T_-}{q_-f_-}=\lambda.
\]
因此
\[
\eta\frac{1-q_i^2}{q_i^2}=\lambda^2,
\qquad
\boxed{q_i^2=(1+\eta\lambda^2)^{-1}.}
\]
这证明了该 ansatz 内的必要相等性，包括 λ=0 的未变形分支；不需要预先令半径相等。第 3 节表明删除“只允许六项”这一假设会使结论失效。

## 3. 严格直积且两个球不等的显式反例

仍取 f₀²=f₊²+f₋² 与 q²=1−ηt²>0，但现在取
\[
\boxed{q_0=q_+=q,\qquad q_-=1.}
\]
**四形式不是第 2 节的六项 ansatz，而是**
\[
\boxed{\begin{aligned}
F={}&f_0e^{123\,10}+f_+e^{456\,10}+qf_-e^{789\,10}\\
&+\eta t f_0e^{126\,11}-\eta t f_+e^{345\,11}
+t f_-e^{1245}.
\end{aligned}}
\]
除 t=0 外，S³₊ 真正 squashed，S³₋ 保持 round。两球的 Ricci 特征值比不同，因而不是坐标选择产生的假差异。度规完全直积，没有 AdS–sphere 或 sphere–flat 的交叉项。

### 3.1 Bianchi 和完整 Maxwell–Chern–Simons 方程

记
\[
E_m=qf_-,\quad T_0=\eta tf_0,\quad T_+=-\eta tf_+,
\quad M=tf_-,\quad c_0=qf_0,\quad c_+=qf_+.
\]
所有剩余方程恰好是
\[
\begin{array}{rl}
dF=0:& c_+T_0+c_0T_+=0,\\[2pt]
d\star F+\tfrac12F\wedge F=0:&
E_mM-\eta(c_0T_0+c_+T_+)=0,\\
&-\eta c_0M+E_mT_0=0,\\
&\eta c_+M+E_mT_+=0.
\end{array}
\]
第一条 Maxwell 是 qt(f₋²−f₀²+f₊²)=0，其余恒等为零。

这里 F∧F **不为零**，不能丢掉 CS 项。按第 1 节定向，它的三个非零独立系数（已除以 2）为
\[
E_mM\,e^{1245789\,10},\qquad
E_mT_0\,e^{126789\,10\,11},\qquad
E_mT_+\,e^{345789\,10\,11}.
\]
Hodge 导数分别提供以上 Maxwell 方程中的其余项。

### 3.2 Einstein 验证

直接四形式收缩得到
\[
\boxed{F^2=-72\eta t^2 f_-^2.}
\]
代入完整、包含 trace 项的 Einstein 方程，得到
\[
\begin{array}{c|cc}
 & R_{\rm base}/g_{\rm base} & R_{\rm fiber}/g_{\rm fiber}\\ \hline
\mathrm{AdS}_3 &-f_0^2(1-q^2/2)&-f_0^2q^2/2\\
S^3_+& f_+^2(1-q^2/2)& f_+^2q^2/2\\
S^3_-& f_-^2/2& f_-^2/2
\end{array}
\]
且 R₁₀,₁₀=R₁₁,₁₁=0。所有非对角通量 stress 都为零：所列任意两个不同四形式指标集合最多共有两个指标，不可能在三个收缩指标上重合。

**机器证据：** Mathematica 以 antisymmetric 四形式的独立系数为输入，使用 F²=24Σ_I (∏_{i∈I}ηᵢ)F_I² 与
\[
R_{jj}=\frac1{12}\left(6\sum_{I\ni j}\left[\prod_{i\in I\setminus\{j\}}\eta_i\right]F_I^2
-\frac{\eta_j}{12}F^2\right)
\]
计算 stress。spacelike η-frame=(-,+,+,+,…,+) 与 timelike η-frame=(+,+,−,+,…,+) 各 11 个 Einstein 残差，在 f₀²=f₊²+f₋²、q²=1−ηt² 下均严格为 0。独立的 exterior-product/Hodge 代码得到 3.1 节的全部方程。最初一版 exterior-form 收集器有嵌套列表错误，已修复；此处只采用修复后的规范化输出。

完全有理的检验点可取 f₀=5,f₊=3,f₋=4：spacelike (q,t)=(3/5,4/5)，timelike (q,t)=(5/3,4/3)。这些是完整解析家族的特殊例，而非用有限例子代替证明。

### 3.3 与三方向变形的关系（不是证明前提）

此反例可理解为对 (AdS Hopf,S³₊ Hopf,y) 做十一维三方向变形。相对于对 (AdS Hopf,S³₊ Hopf,S³₋ Hopf) 变形，这时 i_A i_+ i_y *F₀ 非零，恰好产生不可省略的 M e¹²⁴⁵ 磁通项。**本节成立依据是直接 EOM，而不是仅引用 U-duality 名称。**

因此摘要若要保留“两个球必等”，必须明确限定通量 ansatz 或补充其他必要假设（例如某类 supersymmetry）；bosonic EOM 本身不强制该结论。

## 4. Null 家族：由无奇异极限得到

令 g₀,F₀ 为标准未变形背景；在三个三维因子选互相对易的常范数 Hopf Killing K₀,K₊,K₋，记 kᵢ=g₀(Kᵢ,·)、nᵢ=g₀(Kᵢ,Kᵢ)、Δ=n₀n₊n₋。

第 2 节非 null 解的另一个归一化表达是
\[
G=(1+\gamma^2\Delta)^{-1},\quad
 g'=G^{-1/3}\left[g_0+(G-1)\sum_i\frac{k_i\otimes k_i}{n_i}\right],
\]
\[
F'=F_0+\gamma d(G k_0\wedge k_+\wedge k_-).
\]
这与第 2 节相差常数整体尺度及平直坐标重标度；在归一化转换中度规乘 λ 时 F 必须乘 λ^{3/2}。该三方向选择的 i₀i₊i₋*F₀=0。

在 SL(2,R) Lie algebra 中取一族常范数 Killing K₀(δ)，光滑趋于非零 null Killing K_N，n₀(δ)→0。利用
\[
\frac{G-1}{n_0}=-\gamma^2n_+n_-G,
\]
得到有限、无退化极限
\[
\boxed{g_N=g_0-\gamma^2n_+n_-\,k_N\otimes k_N,\qquad
F_N=F_0+\gamma d(k_N\wedge k_+\wedge k_-).}
\]
两球保持 round。这个极限在非退化 Lorentz 度规空间中光滑；已验证的微分 EOM 连续，因此它是解析证明，不是把无限 boost 当未经检验的生成技巧。

例如
\[
ds^2_{\mathrm{AdS}}=L^2\frac{dz^2-2du\,dv}{z^2},\quad
K_N=\partial_v,\quad k_N=-L^2z^{-2}du,
\]
故额外项为
\[
-\gamma^2n_+n_-L^4z^{-4}du^2.
\]
这是齐次 z=2 null-warp/Schrödinger 型局部度规；该表述没有要求 θ_N=k_N/n_N 这类 null 时奇异对象。尚未另做一套坐标 Christoffel 的 null 独立数值检验；成立依据是已直接验证非 null 家族的光滑极限。

## 5. 适用范围与仍未证明之处

- 已证明局部 bosonic 解及上述受限 ansatz 的相等性；已有明确的更一般 bosonic 反例。
- 第 7 节已严格核定一个 spacelike 不等球解恰有 8 个局部超荷。因此单独补充“supersymmetric”或“8 超荷”不能恢复普遍相等性；仍可能通过更强的指定投影、超代数或通量 ansatz 限制得到相等定理。一般参数的 Killing spinor 分类尚未完成。
- 没有算 charges、Killing superalgebras、通量量子化、全局因果结构或完整不变通量分类。
- 单个 WZW Hopf 与平直方向做某些 twist/T-duality 后出现的表面 fiber 压缩可能只是局部坐标旋转；本核查未把这种未确证构造当反例。第 3 节反例通过曲率特征值和全套 EOM 排除了这一问题。

## 6. 可复现核验源与最终运行记录

自包含 Wolfram 源：[bosonic_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_verify.wl>)。运行工具为 `mcp__mathematica__evaluate_mathematica`，调用 `Get["/Users/koishi/Documents/Note/Drafts/test_2/bosonic_verify.wl"]`；不加载包或其他文件。最后一次实际运行输出为：

```text
space / equal
F2 = 0
Einstein diagonal residuals = {0,0,0,0,0,0,0,0,0,0,0}
Offdiagonal zero = True
dF: 3 independent coefficients all 0
Maxwell + CS: 1 independent coefficient 0
ALL PASS = True

space / unequal
F2 = -72 fm^2 t^2
Einstein diagonal residuals = {0,0,0,0,0,0,0,0,0,0,0}
Offdiagonal zero = True
dF: 1 independent coefficient 0
Maxwell + CS: 3 independent coefficients all 0
ALL PASS = True

time / equal
F2 = 0
Einstein diagonal residuals = {0,0,0,0,0,0,0,0,0,0,0}
Offdiagonal zero = True
dF: 3 independent coefficients all 0
Maxwell + CS: 1 independent coefficient 0
ALL PASS = True

time / unequal
F2 = 72 fm^2 t^2
Einstein diagonal residuals = {0,0,0,0,0,0,0,0,0,0,0}
Offdiagonal zero = True
dF: 1 independent coefficient 0
Maxwell + CS: 3 independent coefficients all 0
ALL PASS = True
```

上述为符号恒等检验，使用且仅使用 q²=1−ηt² 和 f₀²=f₊²+f₋²。随后已补做**独立的坐标 Christoffel→Ricci 计算**，不借用 KK 曲率公式：从第 1 节三个显式 3×3 度规直接计算，在 a>0、q>0 的一般参数下，sphere、spacelike AdS、timelike AdS 三个 Ricci 残差矩阵均为严格零矩阵。该检查也已加入核验源，最后一次完整 `Get` 同时重跑全部 EOM 与这三个曲率检查，全部通过。

### 对 null 脚本的独立只读审稿

另已只读核查 [null_check.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl>)，未修改该脚本。其结构常数给 n=e¹+e²、m=e¹−e² 满足 dn=10n∧e³、dm=10b²n∧e³、de³=0。因此局部可取 e³=dr、n=e^(−10r)du、m=dv+b²n，得到 ds³²=dr²−n dv−b²n²；b=0 的 AdS 半径是 1/5=2/f₀，z=e^(5r) 后是标准 z=2 null warp。球 MC 约定是 de⁶=−6s₊e⁴⁵、de⁹=−8s₋e⁷⁸，故脚本混合通量恰为 −b d(n∧e⁶∧e⁹)，与第 4 节无奇异构造一致（gamma 的整体符号/归一化需相应映射）。Koszul 连接、fully antisymmetric five-gamma 的 KSE 通量系数、[Dₐ,D_b]−Cᶜ_abD_c 与 curvature-kernel 的连接稳定性判据也均正确。这是代码/约定独立审稿；本文未自行重新运行其超对称计数，计数由整合者报告。

## 7. 不等球反例的精确 8-BPS 升级

本节限于一个足以反驳普遍命题的有理参数点，不把它夸大成全参数分类。取第 3 节 spacelike 分支
\[
(f_0,f_+,f_-)=(10,6,8),\qquad (q,t)=(3/5,4/5).
\]
三个群的 MC 手性选为与第 1 节 dθᶠ=+f base 面积一致；在完整左不变正交 frame 中
\[
C^a{}_{bc}=-f_i\eta^{aa}\epsilon_{abc}\frac{s_a}{s_bs_c},
\quad s_3=s_6=q,\quad s_a=1\ (a\ne3,6),
\]
仅同一个三维块内非零。这里 e⁹ 所属圆球不变形。

采用 32×32 Clifford 表示 Γ¹ timelike、Γ¹⋯Γ¹¹=−1，以及 fully antisymmetric five-gamma 的十一维 KSE。常系数超协变连接为
\[
D_a=\frac14\omega_{a bc}\Gamma^{bc}
+\frac1{12}\Gamma_a\slashed F-\frac14\slashed{\iota_aF},
\quad\slashed F=\sum_{i<j<k<l}F_{ijkl}\Gamma^{ijkl}.
\]
定义 P=Γ³⁶¹¹、X=Γ¹⁰，以下两个线性条件给一个 8 维子空间：
\[
\left[5\Gamma^{123}+3\Gamma^{456}+4(q+tP)\Gamma^{789}\right]\epsilon=0,
\qquad (q+tP)X\epsilon=-\epsilon.
\]
自包含精确实现为 [bosonic_bps_counterexample.wl](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_bps_counterexample.wl>)；所有输入均为整数、有理数及精确 I，不使用浮点阈值。

计算全部 55 个超曲率矩阵
\[
\mathcal R_{ab}=[D_a,D_b]-C^c{}_{ab}D_c
\]
并进行精确 RowReduce，实际输出：

```text
central volume = -1: True
exact curvature/stable dimensions = {8, 8}
projector dimension = 8; same row space = True
```

“stable”不是额外必要条件的猜测：设 B 是全部超曲率的独立行空间基，核 K=ker B；计算 rank[B;BD₁;…;BD₁₁]=rank B=24，严格证明 DₐK⊂K。故 K 定义一个由连接保持的秩 8 子丛，其上曲率恒为零；在单连通局部 patch 上，平坦连接恰有 8 个独立平行截面。任何 Killing spinor 又必须属于超曲率核，故数量恰为 8，而不只是至少 8。十一维 Majorana 实结构由实 bosonic 背景保持，复 Clifford 实现的 8 维核对应 8 个实 Majorana 超荷。

这与 susy 子代理的独立数值实现相符，但结论依赖的是上述精确有理矩阵检验及平坦子丛论证。它足以严格否定不加 ansatz 限定的“超对称解两球 squash 必相等”；不等球族其他参数、timelike 取向以及 Killing superalgebra 仍需另行分析。
