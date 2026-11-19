# Warped AdS₃ × S³₊ × S³₋ × ℝ²：显式解、超对称、超代数与荷

## 结果与对原摘要的判定

**可以构造并完整验证所需的三种局部变形，但原摘要必须加上 ansatz、相对手性和全局条件。尤其“不论通量如何，两球变形必相等”不成立：下面给出恰有八个实超荷的不等球反例。**

本稿完成 [原摘要](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) 中可由局部十一维理论确定的构造和检验，保留原文不动。结果为：

1. 一个明确的同侧三 Hopf 变形族，spacelike 和 timelike 的所有规则非零变形均**恰保留八个实超荷**；零变形恢复十六个。
2. 该族含单个实形式的 \(\mathfrak d(2,1;\alpha)\)，其偶部为 \(\mathfrak{sl}(2,\mathbb R)\oplus\mathfrak{su}(2)_+\oplus\mathfrak{su}(2)_-\)。本文定义 \(\alpha=R_-^2/R_+^2\)，它不随变形变化。
3. 一个正则 null 族，两个球保持圆形。非零 null 幅度下，随两个球 Hopf 方向的相对手性，完整局部超荷数分别是 **8、4、0、0**。这不是只检查有限半径比：已给出全参数投影及无零点的秩子式。
4. “两球 squash 相等”是一个**受限六项通量 ansatz 的必要性定理**，不是超对称解的一般定理。
5. 原始 \(\mathbb R^2\) 上可计算通量密度，却没有所用的紧致四／七维荷周期。额外选取合适 \(T^2\) 商才有用于膜荷量子化的紧致周期；整数化还限制半径和周期。未指定边界数据时，warped 能量、角动量和中心荷没有唯一待计算的数值。

以下均为经典两导数、无源、局部解。没有查阅外部文献，因此**不宣称文献意义上的首创性**。可复现证据与独立审稿索引见 [核验记录](</Users/koishi/Documents/Note/Drafts/test_2/verification.md>)。

## 1. 理论、符号与未变形背景

采用 mostly plus，正交标架顺序

\[
(0,1,2)_A,\quad(3,4,5)_+,\quad(6,7,8)_-,\quad9=x,\quad10=y,
\]

十一维取向为 \(e^{0\cdots10}\)。记 \(e^{a_1\cdots a_p}=e^{a_1}\wedge\cdots\wedge e^{a_p}\)，\(F^2=F_{MNPQ}F^{MNPQ}\)。场方程为

\[
\boxed{dF=0,\qquad d\star F+\tfrac12F\wedge F=0,\qquad
R_{MN}=\frac1{12}\left(F_{MPQR}F_N{}^{PQR}-\frac1{12}g_{MN}F^2\right).}\tag{1}
\]

Killing 自旋子满足

\[
\boxed{\mathscr D_M\epsilon=\nabla_M\epsilon+
\frac1{288}(\Gamma_M{}^{NPQR}-8\delta_M^N\Gamma^{PQR})F_{NPQR}\epsilon=0.}\tag{2}
\]

这里五指标 gamma **完全反对称**，故也可写

\[
\mathscr D_M=\nabla_M+\frac1{12}\Gamma_M\slashed F-\frac14\slashed{\iota_MF}.
\]

不能把五指标符号改成未反对称的乘积而仍保持显式 \(-8\) 不变。计算使用 \(\Gamma^{0\cdots10}=-1\) 的不可约表示；这在有非零 CS 项时必须连同取向跟踪。

种子为

\[
g_0=g_A(L)+g_+(R_+)+g_-(R_-)+dx^2+dy^2,
\]
\[
F_0=(f_Av_A+f_+v_++f_-v_-)\wedge dx,\qquad
f_A=\frac2L,\quad f_\pm=\frac2{R_\pm},
\]
\[
\boxed{f_A^2=f_+^2+f_-^2\quad\Longleftrightarrow\quad
L^{-2}=R_+^{-2}+R_-^{-2}.}\tag{3}
\]

\(v_i\) 是相应**种子物理半径**的体积形式，\(\int_{S^3_\pm}v_\pm=2\pi^2R_\pm^3\)。不要求 \(R_+=R_-\)。

由于 \(F_0\wedge F_0=0\)、\(F_0^2=24(-f_A^2+f_+^2+f_-^2)=0\)，各因子的 Einstein 方程给出 \(-2/L^2,2/R_+^2,2/R_-^2\) 的 Ricci 特征值；flat 两方向的方程给出同一个半径约束。

定义

\[
a=L^{-1},\quad b=R_+^{-1},\quad c=R_-^{-1},\qquad
A=\Gamma^{012},\ B=\Gamma^{345},\ C=\Gamma^{678},\ X=\Gamma^9,\ Y=\Gamma^{10},
\]
\[
H=aA+bB+cC,\qquad Q=\frac baAB+\frac caAC.
\]

有 \(H^2=0\)、\(Q^2=1\)，且 \(H\epsilon=0\iff Q\epsilon=-\epsilon\)。未变形混合超曲率强制这一 rank-16 投影；限制到其核的超联络平坦。因此 seed 局部**恰十六个实超荷**，而非只得到十六个候选。详见 [未变形 KSE 推导](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md#L16-L87>)。

## 2. Spacelike 与 timelike 的同侧三纤维族

### 2.1 完整 ansatz 和尺度约定

在种子三个群流形上取正交 Maurer–Cartan 一形式 \(\theta^i\)，每个三维块内

\[
d\theta^i=-\frac12c^i{}_{jk}\theta^{jk},\qquad
c^i{}_{jk}=f_i\eta^{ii}\varepsilon_{ijk},\tag{4}
\]

这里每块的 \(f_i\) 分别是 \(f_A,f_+,f_-\)，不是逐指标变化的数。球 fiber 选 5、8；AdS fiber 选

\[
f=2\ \text{(spacelike)},\qquad f=0\ \text{(timelike)},\qquad
\delta=\eta_{ff}=+1\ \text{或}\ -1.
\]

这组相对 Maurer–Cartan 手性是超对称结论的组成部分。特别是 timelike 时 \(d\theta^0=+f_A\theta^{12}\)，两个球仍为 \(d\theta^5=-f_+\theta^{34}\)、\(d\theta^8=-f_-\theta^{67}\)。

设 \(\Theta=\theta^f\wedge\theta^5\wedge\theta^8\)，\(g_{\mathrm{base}}\) 是移除三个 fiber 后的种子度规，包含 \(dx^2+dy^2\)。取无量纲实参数 \(\widehat\gamma\)，定义

\[
G=(1+\delta\widehat\gamma^2)^{-1}>0,
\]
\[
\boxed{g'=G^{-1/3}g_{\mathrm{base}}+
G^{2/3}\big[\delta(\theta^f)^2+(\theta^5)^2+(\theta^8)^2\big],
\qquad F'=F_0+\delta\widehat\gamma G\,d\Theta.}\tag{5}
\]

三个 fiber-to-base 长度比均为 \(\lambda=\sqrt G\)。两球尺度仍可以不同。

为直接检验，移除常数整体尺度

\[
s=G^{-1/6},\qquad t=\widehat\gamma\sqrt G,\qquad
\lambda^2+\delta t^2=1,
\]
\[
\widetilde g=s^{-2}g'=g_{\mathrm{base}}+
\lambda^2\big[\delta(\theta^f)^2+(\theta^5)^2+(\theta^8)^2\big],
\]
\[
\boxed{\widetilde F=s^{-3}F'=\lambda F_0+\delta\lambda^2t\,d\Theta.}\tag{6}
\]

Einstein–四形式方程在 \((g,F)\mapsto(s^2g,s^3F)\) 下不变；不能只缩放度规。式 (6) 的正交标架为 base 的 \(e^i=\theta^i\)、fiber 的 \(e^f=\lambda\theta^f\)。以后 KSE 的常系数计算采用这份移除总体尺度的标架；荷则用式 (5)，不混用周期和尺度。

参数域：spacelike 为 \(0<\lambda\le1,\ |t|<1\)；timelike 为 \(\lambda\ge1,\ t\in\mathbb R\)，等价于 \(|\widehat\gamma|<1\)。\(t=0\) 是 seed，\(\lambda=0\) 不属于非退化解。

### 2.2 场方程的解析核查

\(d\widetilde F=0\) 由构造成立。所有原电通量项和新增项的 wedge product 均因重复指标而消失，故

\[
\widetilde F\wedge\widetilde F=0,\qquad \widetilde F^2=0.
\]

Maxwell 的唯一独立标量条件正比于

\[
f_A^2-f_+^2-f_-^2=0.
\]

设 \(\chi_A=-1\)、\(\chi_\pm=+1\)。三个 Berger 因子的 Ricci 为

\[
R_{ab}^{(i)}=\chi_i f_i^2\left(1-\frac{\lambda^2}{2}\right)g_{ab},\qquad
R_{ff}^{(i)}=\frac12\chi_i f_i^2\lambda^2g_{ff}.\tag{7}
\]

四形式收缩给出完全相同的两个特征值，且两个 flat 方程为零。新增通量分量在正交标架中的幅度是 \(t f_i\)（符号由 (4) 决定）；\(t^2=\delta(1-\lambda^2)\) 正是曲率各向异性所需的应力。

[独立 bosonic 推导](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md#L11-L109>) 给出逐项外代数和 Einstein 残差；[核验源](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_verify.wl>) 还从坐标 Christoffel 独立重算了 (7)。改变 Hopf 相对手性不改变这个 bosonic 检验，却可能改变 KSE 结果。

### 2.3 为什么非零变形恰有八个超荷

令

\[
P=\Gamma^{f58},\qquad P^2=-\delta,\qquad
J=(\lambda+\delta tP)X,
\]
\[
\boxed{\Pi=\tfrac14(1-Q)(1+J),\qquad
H\epsilon=0,\quad J\epsilon=\epsilon.}\tag{8}
\]

\([Q,J]=0\)、\(J^2=1\)，故 \(\Pi\) 是 rank-eight 实投影。全参数精确 Clifford 恒等式证明该子丛被十一条超协变导数保持，且全部 55 个超曲率在其上消失。这给八个局部解的**充分下界**。

上界不是从有限数值点猜出来的。在式 (6) 标架中有

\[
\mathcal R_{5y}=-\frac{b\lambda^2}{18}Y\Gamma_5BH,\tag{9}
\]

故 \(b>0,\lambda>0\) 时任何解都满足 \(H\epsilon=0\)。再令 \(\Pi_H=(1-Q)/2\)，有

\[
\mathcal R_{34}\Pi_H=
\delta b^2t\,\Gamma^{34}P(\lambda-\delta tP)(1-J)\Pi_H.\tag{10}
\]

\(\Gamma^{34}\)、\(P\) 都可逆，并且

\[
(\lambda-\delta tP)(\lambda+\delta tP)=1.
\]

因此任意 \(t\ne0\) 强制第二个投影。上下界匹配：

\[
\boxed{N_{\mathrm{local}}=8\quad(t\ne0),\qquad N_{\mathrm{local}}=16\quad(t=0).}\tag{11}
\]

两种签名各 94 条精确恒等式均通过；见 [全参数证书](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py>)。这包含 timelike 分支，不借助“时向双重性当然保实超对称”的假设。

### 2.4 Killing 超代数和不变的 α

seed 的 \(H\epsilon_0=0,X\epsilon_0=\epsilon_0\) 八维扇区经

\[
\boxed{\epsilon'=S\epsilon_0,\qquad
S=\frac{1+\lambda+\delta tP}{\sqrt{2(1+\lambda)}}}\tag{12}
\]

映到完整的变形 Killing 自旋子。精确验证了所有方向的连接传输，而不只是点上的投影同构。

对 Majorana 配对 \(\bar\epsilon=\epsilon^T\mathcal C\)，有 \(P^T\mathcal C=\mathcal CP\)。base 向量双线性不变；fiber 双线性变成原来的 \(\lambda\) 倍，因为额外的 \(\bar\epsilon_{01}\Gamma^fP\epsilon_{02}\) 由 \(X\epsilon_{0i}=\epsilon_{0i}\) 恒等为零。结合逆标架得到物理向量

\[
K'(S\epsilon_{01},S\epsilon_{02})=s^{-1}K_0(\epsilon_{01},\epsilon_{02}).\tag{13}
\]

统一重标奇生成元即可消去 \(s^{-1}\)。三个简单因子的 odd bracket 相对系数仍为

\[
(-1,\gamma_+,\gamma_-),\qquad
\gamma_+=\frac{L^2}{R_+^2},\quad\gamma_-=\frac{L^2}{R_-^2},\quad
\gamma_++\gamma_-=1.
\]

这证明奇生成的超代数为

\[
\boxed{\mathfrak d(2,1;\alpha),\qquad
\alpha:=\gamma_+/\gamma_-=R_-^2/R_+^2.}\tag{14}
\]

这里明确以三个括号系数定义实形式和参数，而非仅引用名称。若用 \(\gamma_+\in(0,1)\) 本身作参数，须写 \(\gamma_+=\alpha/(1+\alpha)\)；交换球给 \(\alpha\mapsto\alpha^{-1}\)。

“奇生成超代数”与“包括所有保通量 Killing 向量的完整对称超代数”不同。非零变形还有三个残余 fiber 方向及两条 flat 平移的阿贝尔 spectator 对称；它们不由这八个奇生成元产生。局部通常写为异常因子加这些阿贝尔偶因子，是否为圆群还由全局周期决定。

## 3. Null 家族：四、八与零超荷的精确区分

### 3.1 无奇异 ansatz

取 \(z>0\)，无量纲坐标 \(u,v,z\)，以及实幅度 \(B\)：

\[
\boxed{ds_N^2=L^2\left(\frac{dz^2-2du\,dv}{z^2}-\frac{B^2du^2}{z^4}\right)
+ds^2(S^3_+,R_+)+ds^2(S^3_-,R_-)+dx^2+dy^2.}\tag{15}
\]

用正交标架

\[
e^0=Ldv+\frac L2(1+B^2)\frac{du}{z^2},\quad
e^1=-Ldv+\frac L2(1-B^2)\frac{du}{z^2},\quad e^2=L\frac{dz}{z},
\]
\[
n=e^0+e^1=Lz^{-2}du,\qquad dn=f_A n\wedge e^2.
\]

两个球可独立选 \(s_\pm=\pm1\) 的 Maurer–Cartan 手性：

\[
de^i=-\frac{s_\pm f_\pm}{2}\varepsilon_{ijk}e^{jk}
\quad\text{（相应球块内）},
\quad de^5=-s_+f_+e^{34},\quad de^8=-s_-f_-e^{67}.
\]

保持三个电通量体积的正系数，定义

\[
\boxed{F_N=f_Ae^{0129}+f_+e^{3459}+f_-e^{6789}
-B\,d(n\wedge e^5\wedge e^8).}\tag{16}
\]

明确展开为

\[
F_d=-B\big[f_Ane^{258}+s_+f_+ne^{348}-s_-f_-ne^{567}\big].
\]

式 (15)–(16) 不使用 \(k_N/|K_N|^2\) 之类 null 时发散的 fiber 一形式。也可写成种子上的 Kerr–Schild 构造

\[
g_N=g_0-\gamma^2|K_+|^2|K_-|^2k_N^2,\qquad
F_N=F_0+\gamma d(k_N\wedge k_+\wedge k_-),
\]

其中 \(K_N=\partial_v\)、\(k_N=-L^2z^{-2}du\)；选择单位范数球 Killing 场时 \(B=\gamma L\)。所有选中的 Killing 场及其取向必须与 (16) 对齐。

### 3.2 场方程与完整计数

\(dF_N=0\)、\(F_N\wedge F_N=0\)、\(F_N^2=0\)。新增 null 通量只增加 null-null 应力。Einstein 的对应新增分量与 (15) 的 null warp 匹配；Maxwell 再给 (3)。这对四种 \((s_+,s_-)\) 均成立。

令 \(U=\Gamma^0+\Gamma^1\)，于是 \(U^2=0\)。在 \((+,+)\) 分支定义

\[
J_N=(1-BU\Gamma^{58})X,\qquad
\Pi_8=\tfrac14(1-Q)(1+J_N).\tag{17}
\]

在 \((-,-)\) 分支则为

\[
\boxed{H\epsilon=0,\quad U\epsilon=0,\quad X\epsilon=-\epsilon,\qquad
\Pi_4=\tfrac18(1-Q)(1+\Gamma^{01})(1-X).}\tag{18}
\]

这两个投影分别 rank 8、rank 4，且均定义平坦、连接保持的子丛。上界通过原始超曲率矩阵子式证明：参数化

\[
(f_A,f_+,f_-)=k(1+w^2,1-w^2,2w),\quad k>0,\quad0<w<1
\]

覆盖所有正半径比；所构造 24、28、32 阶子式在整个开区间无零点。具体因式列于 [null 全参数秩证书](</Users/koishi/Documents/Note/Drafts/test_2/verification.md>)。因此

| \(B\ne0\) 时球手性 | \((+,+)\) | \((-,-)\) | \((+,-)\) | \((-,+)\) |
|---|---:|---:|---:|---:|
| 局部实超荷数 | 8 | 4 | 0 | 0 |

\(B=0\) 时全部回到十六超荷的同一个 round seed（手性只是其标架选择）。任意非零 \(B\) 局部可用 \(u'=Bu,v'=v/B\) 归一化，但对有固定周期或边界时间归一化的全局问题不能随意这样做。

相对手性是**保持正电通量取向以后**选择的 Hopf 作用侧，不是随便翻转标架而让超荷数改变。同侧 null 族可看成八超荷非 null 族的正则极限；反侧的四超荷支不是让同一个八维正则自旋子空间突然丢掉一半。

### 3.3 Null Killing 超代数

八超荷支有显式映射

\[
S_N=1-\frac B2U\Gamma^{58},\qquad \epsilon_N=S_N\epsilon_0.
\]

已直接核验全部 KSE 传输和**坐标向量**双线性不变，因此其奇生成超代数同样为 (14) 的单个异常因子。

四超荷支则不同。式 (18) 强制任意两解的向量双线性只沿 \(N=\partial_v\)；配对在四维实奇空间非退化，两个完整球 SU(2) 分别作用为双重态。可将奇生成元记为 \(Q_{a\dot a}\)，满足相应实条件，并选统一归一化使

\[
\boxed{\{Q_{a\dot a},Q_{b\dot b}\}
=\varepsilon_{ab}\varepsilon_{\dot a\dot b}\,N,\qquad[N,Q]=0.}\tag{19}
\]

球 \(\mathfrak{su}(2)_+\oplus\mathfrak{su}(2)_-\) 按 \((\mathbf2,\mathbf2)\) 作用。故包含 R-symmetry 的部分是

\[
(\mathfrak{su}(2)_+\oplus\mathfrak{su}(2)_-)\ltimes\mathfrak h_{1|4},
\]

其中 \(\mathfrak h_{1|4}\) 表示四个奇生成元及一个中心偶生成元 \(N\)，奇奇括号为 (19)。**它不是 \(\mathfrak d(2,1;\alpha)\)**，后者至少有八个奇生成元。null 几何剩余的 \(\mathfrak{sl}(2,\mathbb R)\)、两个 Hopf 阿贝尔方向及 flat 平移，是可另外列入的偶 spectator 对称；它们在这四个奇生成元上作用平凡。这里“奇生成”严格只产生 \(N\)；SU(2) 因子是额外作用在奇部的偶对称。

spectator 作用平凡也有独立的代数证明：这些生成元保通量，且与两个完整 SU(2) 及 \(N\) 对易；\((\mathbf2,\mathbf2)\) 的四维实形式是绝对实不可约表示。因此任意 spectator 在奇部只能作用为实标量 \(a\,1\)，而 Jacobi 与非退化的 (19) 强制 \(2a=0\)。其中 Schrödinger 的三个生成元可取

\[
\partial_u,\qquad u\partial_u+\tfrac12z\partial_z,\qquad
u^2\partial_u+uz\partial_z+\tfrac12z^2\partial_v,
\]

三者均保持 \(n=Ldu/z^2\)，并与 \(N=\partial_v\) 对易。

关键非退化配对、双 SU(2) Casimir 和双线性限制由 [null 超代数核验](</Users/koishi/Documents/Note/Drafts/test_2/null_algebra.wl>) 全半径符号计算验证，而非只按维数猜代数。[最终独立复核](</Users/koishi/Documents/Note/Drafts/test_2/final_review.md>) 又直接验证了 SL(2,R)、Hopf 及 flat 的 spinorial Lie 导数在四维解空间上为零。

## 4. 两球相等：受限定理与超对称反例

### 4.1 真正成立的必要性命题

先允许三个 squash 比 \(q_A,q_+,q_-\) 独立，固定严格直积 Berger 几何、平直 \(x,y\)，并**只允许**三项 \(v_i\wedge dx\) 电通量和三项“一个 base 面积 × 另外两个 fiber”的混合通量。各正交分量记 \(E_i,T_i\)，吸收 Hopf 取向符号后：

- flat Einstein 方程给 \(F^2=0\) 及电、磁各自的零范数关系；
- 每个因子的 base/fiber 方程给
  \[
  E_i^2=f_i^2,\qquad T_i^2=\delta f_i^2(1-q_i^2);
  \]
- Bianchi 强制 \(T_i/(q_if_i)\) 除已知取向符号外为同一常数 \(\zeta\)。

于是

\[
\delta\frac{1-q_i^2}{q_i^2}=\zeta^2,\qquad
\boxed{q_A^2=q_+^2=q_-^2=(1+\delta\zeta^2)^{-1}.}\tag{20}
\]

这证明的是**该六项 ansatz 内的必要性**。若只从式 (5) 已经相等的 ansatz 出发，不能反过来宣称完成了必要性证明。

### 4.2 严格直积、八超荷、不等球的反例

本小节明确改用反向群 MC 约定

\[
c^i{}_{jk}=-f_i\eta^{ii}\varepsilon_{ijk},
\]

因此所选 spacelike fiber 满足 \(d\theta^2=+f_A\theta^{01}\)、\(d\theta^5=+f_+\theta^{34}\)、\(d\theta^8=+f_-\theta^{67}\)。这是单独的解族，不能把本节与第 2 节的同侧投影不作转换地混用。

令 \(q^2=1-t^2>0\)，只缩放 AdS fiber 2 和球 fiber 5：

\[
e^2=q\theta^2,\quad e^5=q\theta^5,\quad e^8=\theta^8,
\qquad q_A=q_+=q,\quad q_-=1.
\]

其余正交形式不变。四形式为

\[
\boxed{\begin{aligned}
F_{\mathrm u}={}&f_Ae^{0129}+f_+e^{3459}+qf_-e^{6789}\\
&+tf_Ae^{015\,10}-tf_+e^{234\,10}+tf_-e^{0134}.
\end{aligned}}\tag{21}
\]

(21) 的最后一项是先前六项 ansatz 所排除的磁通。现在

\[
F_{\mathrm u}^2=-72t^2f_-^2,\qquad F_{\mathrm u}\wedge F_{\mathrm u}\ne0.
\]

保留完整 Maxwell–CS 与 Einstein trace 项后，全部场方程成立；详见 [反例逐项推导](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md#L111-L184>)。

取完全有理的点

\[
\boxed{(f_A,f_+,f_-)=(10,6,8),\qquad(q,t)=(3/5,4/5).}\tag{22}
\]

此时第一个球的 fiber/base 比为 \(3/5\)，第二球为 1。曲率特征值不同，差别不是坐标伪影。精确 32×32 超曲率的共同核为八维，且全部超协变连接保持该核。因此局部**恰八个实超荷**。这一精确点就足以否定“两球在超对称解中普遍必等”；不需要先证明整个不等球族的 SUSY 分类。

可用以下条件表述该点的八维核：

\[
P_{\mathrm u}=\Gamma^{2,5,10},\quad
H_{\mathrm u}=aA+bB+c(q+tP_{\mathrm u})C,
\]
\[
H_{\mathrm u}\epsilon=0,\qquad(q+tP_{\mathrm u})X\epsilon=-\epsilon.
\]

[精确反例证书](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_bps_counterexample.wl>) 已由两方实现交叉复核。整体放大尺度保持该结论，因此它不依赖半径接近 Planck 尺度。

## 5. 可以确定的守恒通量，以及不能默认的紧化

### 5.1 定义和非紧致限制

取

\[
2\kappa_{11}^2=(2\pi)^8\ell_p^9=16\pi G_{11}.
\]

对适当定向紧致闭周期定义

\[
N_5=\frac1{(2\pi\ell_p)^3}\int_{\Sigma_4}F,
\qquad
Q_2^{\mathrm{Page}}=\frac1{(2\pi\ell_p)^6}
\int_{\Sigma_7}\left(\star F+\tfrac12C_3\wedge F\right).\tag{23}
\]

Page 形式局部闭合，但一般有大规范变换歧义；Maxwell 荷规范不变，却在 \(F\wedge F\ne0\) 时一般不闭合。二者不能随便混同，更不是能量或角动量。

原始内部空间 \(S^3_+\times S^3_-\times\mathbb R^2\) 的 \(H_4,H_7\) 都为零。在 seed，\(C_3=-x(f_Av_A+f_+v_++f_-v_-)\) 是全局势。\(S^3\times I_x\) 等开链积分仅定义指定规范／调节下的密度：

\[
\rho_{5,\pm}=\frac{R_\pm^2}{2\pi\ell_p^3},\qquad
\rho_2=\frac{R_+^3R_-^3}{8\pi^2L\ell_p^6}.\tag{24}
\]

第二式取下述正电周期取向，是 Maxwell 密度；对开链 Page 积分还须固定端点规范。不存在把这些密度自动称为整数膜荷的理由。

### 5.2 额外选择矩形 T² 后的整数荷

**仅本小节另加** \(x\sim x+\ell_x,\ y\sim y+\ell_y\)，并要求场与所需自旋结构能下降。\(\ell_x,\ell_y\) 是种子 proper 周长；式 (5) 变形后的实际 flat 周长为 \(s\ell_x,s\ell_y\)。保持同一坐标周期时，(5) 的整数荷为

\[
\boxed{N_{5,\pm}=\frac{R_\pm^2\ell_x}{2\pi\ell_p^3},\qquad
N_2=\frac{R_+^3R_-^3\ell_y}{8\pi^2L\ell_p^6}.}\tag{25}
\]

式 (25) 首先是经典周期积分；量子理论还须另施 \(N_{5,\pm},N_2\in\mathbb Z_{>0}\)，不是任何实参数在做商后都自动成为整数。特别地

\[
\frac{R_+^2}{R_-^2}=\frac{N_{5,+}}{N_{5,-}}\in\mathbb Q,\qquad
\alpha=\frac{N_{5,-}}{N_{5,+}}.
\]

若半径平方比为无理数，就没有同一个非零 \(\ell_x\) 能使两磁荷同时整数化；可选择的紧化必须满足这一限制。给定相容磁荷后，还须用 \(\ell_y\) 等数据满足电荷量子化。下文的通量不变性因此也意味着式 (5) 在固定量子化数据下的连续变形保持这些荷。

磁周期为 \(S^3_\pm\times S^1_x\)。电周期为 \(S^3_+\times S^3_-\times S^1_y\)，选择与 \(-v_+\wedge v_-\wedge dy\) 一致的方向，使本文十一维取向下电荷为正。[独立荷审查](</Users/koishi/Documents/Note/Drafts/test_2/charges_review.md>) 使用反转的十一维取向和正乘积电周期，得到同一正数；这里显式给出约定映射。

等 squash 族中，新增通量无 \(dx\) 且在电周期上拉回为零；Page 修正也为零。原电项的四个逆度规贡献 \(G^{1/3}\)，十一维体积贡献 \(G^{-1/3}\)，恰好抵消。因此 (25) **随式 (5) 的变形不变**。不能仅以“新增通量 exact”证明电荷不变，还必须作这一步 Hodge 检验。

null 族的 Kerr–Schild 改变不改变 AdS 行列式，新增四形式及其对偶同样不贡献这些周期，故 (25) 也不变。这不需要预设 null 超荷数。

对式 (21) 的另一种、已移除总体尺度的归一化，若 \(\ell_x,\ell_y\) 是其 proper flat 周长，则指定周期荷是

\[
N_{5,\pm}^{\mathrm u}=q\frac{R_\pm^2\ell_x}{2\pi\ell_p^3},\qquad
N_2^{\mathrm u}=q\frac{R_+^3R_-^3\ell_y}{8\pi^2L\ell_p^6}.\tag{26}
\]

这里第二球虽未 squash，但其电磁分量有显式 \(q\)，不能仅看体积来推荷。式 (26) 是该 bosonic 场的周期积分；不自动证明任意 torus 商保留其局部八超荷。

非零磁荷要求势作局部拼接；对其他周期、平坦 \(C_3\) 模或大规范代表不能默认 Page 荷唯一。球面与环面切丛平行化，相关磁通量子化的 \(p_1/4\) 位移在这里为零。

### 5.3 未变形 AdS 中心荷及 warped E、J 的缺失输入

在额外紧化、两导数作用量和通常 AdS Brown–Henneaux 边界条件下，seed 有

\[
G_{11}=16\pi^7\ell_p^9,\qquad
V_8=4\pi^4R_+^3R_-^3\ell_x\ell_y,\qquad G_3=G_{11}/V_8,
\]
\[
\boxed{c_L=c_R=\frac{3L}{2G_3}
=\frac{6N_2N_{5,+}N_{5,-}}{N_{5,+}+N_{5,-}}.}\tag{27}
\]

这是 **seed 的** 中心荷，不是 warped 中心荷证明。原始 \(\mathbb R^2\) 体积发散，只能谈调节密度，不能直接得到有限二维中心荷。

原摘要没有指定 warped 的：全局商、时间与角生成元及归一化、积分面、边界衰减条件、允许变化、边界作用量／反项、参考零点。这些数据不同，\(E,J\) 可以不同；仅重标时间或移动参考能量就已经排除了唯一数值。因此这里的明确结论是：**输入尚未定义 warped 的能量和角动量，而非它们已经被算出或必须为零。** 膜通量和局部 Killing 超代数不能补足这些数据。本稿未使用协变相空间方法。

## 6. 全局条件、极限与适用边界

- **零变形：** 式 (5) 的 \(\widehat\gamma=0\) 和式 (15) 的 \(B=0\) 恢复 seed、完整十六超荷及两个异常因子。
- **等半径检查：** \(R_+=R_-=R\) 给 \(L=R/\sqrt2\)、\(\alpha=1\)。式 (27) 化为 \(c=3N_2N_5\)。这没有要求一般解取等半径。
- **退化边界：** \(\lambda=0\) 不是 Lorentz 非退化解；\(w=0,1\) 对应某球半径发散，不包含于有限正半径的完整计数定理。大半径收缩代数须另做极限，不把异常因子参数端点当普通点。
- **Timelike 因果性：** 局部八超荷不保证无闭合类时曲线。取在双曲平面原点正则的时间连接 \(dt+(\cosh\rho-1)d\phi\)，\(\phi\sim\phi+2\pi\)。固定时间的 \(\phi\) 圈有
  \[
  g_{\phi\phi}=\frac{s^2L^2}{4}(\cosh\rho-1)
  [(1-\lambda^2)\cosh\rho+(1+\lambda^2)].
  \]
  对所有非零 timelike 变形 \(\lambda>1\)，当 \(\cosh\rho>(\lambda^2+1)/(\lambda^2-1)\) 时为负。这是标准完整选择下的全局障碍；不能把“局部超对称解”写成“已证明全局因果良好”。
- **商与自旋结构：** 局部平坦 Killing 子丛不保证任意离散商后仍有同数目的全局自旋子。荷的整数化同样依赖合法周期。
- **分类范围：** 已完成列出的解族与必要性命题，未声称分类所有均匀四形式、所有相对 Hopf 选择或所有 global completions。一个精确反例已足够否定原摘要的普遍相等性。

## 7. 可使用的准确摘要

以下是另行提供的、与已完成证据一致的摘要；**没有替换原文**：

> We construct explicit lightlike, spacelike and timelike deformations of the half-BPS AdS₃ × S³₊ × S³₋ × ℝ² background of eleven-dimensional supergravity. A specified same-side three-fiber ansatz has equal squashing parameters but independent sphere radii. Its regular non-null deformations preserve exactly eight real supercharges and an exceptional d(2,1;α) Killing-superalgebra factor with an unchanged radius-ratio parameter. The null ansatz has distinct eight-, four- and zero-supercharge branches, determined by the relative Hopf chiralities. Equality of the sphere squashing parameters follows within a restricted six-component flux ansatz, but is not universal: we exhibit an exact eight-supercharge unequal-sphere counterexample. We determine the relevant flux densities and, under an additional torus compactification, the corresponding membrane and five-brane charges. Warped energy, angular momentum and asymptotic central charges require separately specified global and boundary data.

**Verified:** 上述明确局部解的完整 EOM、完整 KSE 计数、奇括号、受限必要性与精确反例、所列周期荷及 seed 中心荷。

**Assumptions:** 经典两导数、无源；指定取向与 MC 手性；正半径、非退化参数；局部单连通；紧化及边界条件只在明确声明处加入。

**Not verified / not fixed by the input:** 首创性；任意全局商下的超荷；任意不变通量的完整分类；未指定边界条件的 warped \(E,J,c\)。这些限制不以猜测或默认紧化补齐。
