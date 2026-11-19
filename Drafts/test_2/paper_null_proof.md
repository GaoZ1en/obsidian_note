# Null 变形的 Killing 自旋子：8、4 与 0 超荷的解析证明

## 摘要

本文对一个明确的十一维 null 通量背景，给出不依赖矩阵秩计算的完整局部 Killing 自旋子计数。保持电通量系数为正，两个球的 Maurer–Cartan 符号为 \((s_+,s_-)\) 时，任意有限正半径和非零 null 幅度分别给出 \((+,+):8\)、\((-,-):4\)、混合符号：0 个局部实超荷。证明仅使用少数超曲率因式分解以及两个显式平坦的约化超联络。尤其四超荷支不是“找到了四个候选”的下界：超曲率依次强制 \(U\epsilon=0\)、\(H\epsilon=0\)、\(X\epsilon=-\epsilon\)，约化连接则直接给出充分性。

本文是对给定背景的自包含重建，不主张新背景或一般通量分类。场方程不是本证明的待证部分；下文完整给定度规和通量，以使 KSE 论证独立可读。

## 1. 背景、归一化与超联络

取 mostly plus 签名，正交指标依次为

\[
(0,1,2)_A,\qquad(3,4,5)_+,\qquad(6,7,8)_-,\qquad9=x,\quad10=y.
\]

设

\[
a=L^{-1}>0,\quad b=R_+^{-1}>0,\quad c=R_-^{-1}>0,
\qquad a^2=b^2+c^2.
\tag{1}
\]

注意电通量系数是 \((f_A,f_+,f_-)=(2a,2b,2c)\)，不是 \((a,b,c)\)。将 null 幅度写成 \(t\in\mathbb R\)，以免与 Clifford 元 \(B\) 混淆。取

\[
\begin{aligned}
e^0&=L\,dv+\frac L2(1+t^2)\frac{du}{z^2},&
e^1&=-L\,dv+\frac L2(1-t^2)\frac{du}{z^2},&
e^2&=L\frac{dz}{z},\\
n&=e^0+e^1=Lz^{-2}du,&z&>0.
\end{aligned}
\tag{2}
\]

两球取正交群标架

\[
de^i=-s_+b\,\varepsilon_{ijk}e^{jk}\quad(i,j,k\in\{3,4,5\}),
\qquad
de^i=-s_-c\,\varepsilon_{ijk}e^{jk}\quad(i,j,k\in\{6,7,8\}),
\tag{3}
\]

其中重复的 \(j,k\) 都求和；例如 \(de^5=-2s_+b e^{34}\)。另有 \(e^9=dx,e^{10}=dy\)。由 (2)，

\[
de^0=a(1+t^2)n\wedge e^2,\qquad
de^1=a(1-t^2)n\wedge e^2,\qquad de^2=0.
\tag{4}
\]

度规与通量为

\[
\begin{aligned}
g={}&L^2\left(\frac{dz^2-2du\,dv}{z^2}-\frac{t^2du^2}{z^4}\right)
+g(S^3_+,R_+)+g(S^3_-,R_-)+dx^2+dy^2,\\
F={}&2a e^{0129}+2b e^{3459}+2c e^{6789}\\
&-2t\,n\wedge\big(ae^{258}+s_+b e^{348}-s_-c e^{567}\big).
\end{aligned}
\tag{5}
\]

因此 \(F=F_0-t\,d(n\wedge e^5\wedge e^8)\)。两个球的符号是相对于固定的正电通量取向指定的，不是任意换标架即可消去的标签。

Gamma 矩阵满足

\[
\{\Gamma^i,\Gamma^j\}=2\eta^{ij},\qquad
\Gamma^{0\cdots10}=-\mathbf1.
\tag{6}
\]

异指标上标串表示按所列顺序相乘；\(\Gamma_i=\eta_{ii}\Gamma^i\)。为避免时向上下指标混淆，下文所有显式 Clifford 串均使用上标。定义

\[
\begin{gathered}
A=\Gamma^{012},\quad B=\Gamma^{345},\quad C=\Gamma^{678},
\quad X=\Gamma^9,\quad Y=\Gamma^{10},\\
H=aA+bB+cC,\qquad Q=\frac baAB+\frac caAC,
\qquad P_H=\frac{1-Q}{2},\\
U=\Gamma^0+\Gamma^1,\quad V=\Gamma^0-\Gamma^1,
\quad \Lambda=\Gamma^{01},\quad P_U=\frac{1+\Lambda}{2},
\quad N=U\Gamma^{58}.
\end{gathered}
\tag{7}
\]

有

\[
H^2=0,\quad Q^2=1,\quad \ker H=\operatorname{im}P_H,
\quad U^2=N^2=0,\quad\ker U=\operatorname{im}P_U.
\tag{8}
\]

此外 \([H,\Lambda]=[Q,\Lambda]=[Q,X]=[Q,N]=0\)，\(\{N,X\}=0\)。这里 \(H\) 本身与 \(X\) 反对易。

取 \(de^k=-\tfrac12 C^k{}_{ij}e^{ij}\)，则 \([e_i,e_j]=C^k{}_{ij}e_k\)。KSE 为

\[
\mathscr D_i\epsilon=(e_i+D_i)\epsilon=0,
\qquad
D_i=\Omega_i+\frac1{12}\Gamma_i\slashed F
-\frac14\slashed{\iota_{e_i}F}.
\tag{9}
\]

斜杠不再带阶乘：对已按递增指标展开的形式，\(\slashed F=\sum_{i<j<k<l}F_{ijkl}\Gamma^{ijkl}\)。这等价于十一维 KSE 中完全反对称的五指标 gamma 约定。

为便于手算，所有 Levi–Civita 自旋连接为

\[
\begin{array}{lll}
\Omega_0=\frac a2(\Gamma^{02}+t^2U\Gamma^2),&
\Omega_1=\frac a2(-\Gamma^{12}+t^2U\Gamma^2),&
\Omega_2=-\frac a2\Lambda,\\[2pt]
\Omega_i=-\frac{s_+b}{2}\Gamma^iB\ (i=3,4,5),&
\Omega_i=-\frac{s_-c}{2}\Gamma^iC\ (i=6,7,8),&
\Omega_x=\Omega_y=0.
\end{array}
\tag{10}
\]

令

\[
W=a\Gamma^{258}+s_+b\Gamma^{348}-s_-c\Gamma^{567}.
\]

则

\[
\slashed F=2HX-2tUW.
\tag{11}
\]

若 \(W_i\) 是三形式 \(W\) 沿 \(e_i\) 收缩后的二形式斜杠，变形通量的收缩为

\[
\slashed{\iota_{e_i}F_d}=-2t\big[(\delta_{i0}+\delta_{i1})W-UW_i\big].
\tag{12}
\]

电通量的收缩分别为 \(2a\eta_{ii}\Gamma^iAX\)（\(i=0,1,2\)）、\(2b\Gamma^iBX\)（\(i=3,4,5\)）、\(2c\Gamma^iCX\)（\(i=6,7,8\)）、\(-2H\)（\(i=x\)）和 0（\(i=y\)）。这些公式完全确定十一条常系数矩阵 \(D_i\)。其超曲率是

\[
\mathcal R_{ij}=[D_i,D_j]-C^k{}_{ij}D_k.
\tag{13}
\]

第二项不能省略：所用标架不是坐标标架。任一 Killing 自旋子的初值均被所有 \(\mathcal R_{ij}\) 消去。

## 2. 非 \((+,+)\) 分支先强制 null 投影

定义非负量

\[
\Delta=b^2(1-s_+)+c^2(1-s_-).
\tag{14}
\]

在正半径域，\(\Delta=0\) 当且仅当 \((s_+,s_-)=(+,+)\)。将 (10)–(12) 代入 (13)，只需以下三个恒等式：

\[
\boxed{
U\mathcal R_{5y}=-\frac b{18}U Y\Gamma^5BH,
\qquad
\mathcal R_{xy}P_U=0,
\qquad
\mathcal R_{xy}P_H=\frac{t\Delta}{6}U\Gamma^{58}Y P_H.
}
\tag{15}
\]

这些是算子恒等式，而不是预先限制在候选自旋子上的方程。它们可直接用 \(U^2=0\)、\(a^2=b^2+c^2\) 及 (6) 化简；第一个式子的右因子 \(Y\Gamma^5B=Y\Gamma^{34}\) 可逆，并与 \(U\) 反对易。

现设 \(t\ne0\)、\(\Delta>0\)，且 \(\epsilon\) 是任一曲率共同零向量。第一个恒等式给出 \(UH\epsilon=0\)。这一结果**尚不允许直接写成 \(H\epsilon=0\)**；缺少的步骤如下。

分解

\[
\epsilon=\epsilon_++\epsilon_-,\qquad
\Lambda\epsilon_\pm=\pm\epsilon_\pm.
\]

由 \([H,\Lambda]=0\) 和

\[
VU=-2(1-\Lambda),
\tag{16}
\]

\(U\) 在 \(\Lambda=-1\) 子空间上单射，故 \(UH\epsilon=0\) 给出 \(H\epsilon_-=0\)，即 \(P_H\epsilon_-=\epsilon_-\)。又因 \(U\epsilon_+=0\)，(15) 后两式给出

\[
0=\mathcal R_{xy}\epsilon
=\mathcal R_{xy}\epsilon_-
=\frac{t\Delta}{6}U\Gamma^{58}Y\epsilon_-.
\tag{17}
\]

\(\Gamma^{58}Y\) 可逆且与 \(\Lambda\) 对易，所以 (16) 再次给出 \(\epsilon_-=0\)。因此

\[
\boxed{U\epsilon=0.}
\tag{18}
\]

最后，在 \(\ker U\) 上，\(\mathcal R_{5y}\) 的所有变形项都消失，留下

\[
\mathcal R_{5y}P_U=-\frac b{18}Y\Gamma^5BH P_U.
\tag{19}
\]

由于右侧左因子可逆、\(b>0\)，得到

\[
\boxed{H\epsilon=0.}
\tag{20}
\]

故所有非 \((+,+)\) 分支的候选初值都在八维空间

\[
\operatorname{im}P,\qquad P=P_HP_U.
\tag{21}
\]

整个过程没有假设 \(H\epsilon=0\) 后再倒推它，也没有使用一般参数处的矩阵秩来排除特殊半径。

## 3. \((-,-)\)：四超荷的必要性与充分性

### 3.1 第三个投影是超曲率的必要条件

在 \((s_+,s_-)=(-,-)\) 时，剩下的一条超曲率因式分解是

\[
\boxed{
\mathcal R_{0x}P=\frac{a^2t}{3}\Gamma^{58}(1+X)P.
}
\tag{22}
\]

\(a,t\) 非零且 \((\Gamma^{58})^2=-1\)，所以每个 Killing 自旋子必须满足

\[
H\epsilon=0,\qquad U\epsilon=0,\qquad X\epsilon=-\epsilon.
\tag{23}
\]

相应投影为

\[
\Pi_4=\frac18(1-Q)(1+\Lambda)(1-X).
\tag{24}
\]

三个因子彼此对易。除了恒等算子之外，展开式内的每个 Clifford 串均无迹，故

\[
\Pi_4^2=\Pi_4,\qquad\operatorname{tr}\Pi_4=32/8=4.
\tag{25}
\]

这给出四维复初值空间的严格上界；实维数见第 6 节。

### 3.2 约化联络可直接手算，且确实平坦

在 (23) 上，\(\slashed F\epsilon=0\)。球方向的变形收缩含 \(UW_i\)，因 \(W_i\) 为纯横向偶次 Clifford 元，也消去 \(\epsilon\)。电通量项与 (10) 相加，直接给出

\[
\boxed{
\begin{aligned}
D_0\Pi_4=D_1\Pi_4=D_2\Pi_4=D_x\Pi_4=D_y\Pi_4&=0,\\
D_i\Pi_4=b\Gamma^iB\Pi_4\quad &(i=3,4,5),\\
D_i\Pi_4=c\Gamma^iC\Pi_4\quad &(i=6,7,8).
\end{aligned}}
\tag{26}
\]

其中 \(D_0,D_1\) 的消去值得明确说明：在本分支

\[
W=a\Gamma^{258}-b\Gamma^{348}+c\Gamma^{567},
\qquad
(W-\Gamma^{58}H)P_U=0.
\tag{27}
\]

因此 \(W\epsilon=0\)；余下的 AdS 项正比于 \(U\Gamma^2\epsilon\) 或在 \(D_2\) 中成对抵消。这就消除了可能误以为残留的线性 \(tW\) 项。

(26) 中的球矩阵都是相应三维块内的二次 gamma 元，故与 \(H,\Lambda,X\) 对易，保持 \(\operatorname{im}\Pi_4\)。以第一个球为例，

\[
D_3=b\Gamma^{45},\qquad
D_4=-b\Gamma^{35},\qquad
D_5=b\Gamma^{34},
\]

从而

\[
[D_3,D_4]=-2b^2\Gamma^{34}
=C^5{}_{34}D_5,
\qquad C^5{}_{34}=-2b.
\tag{28}
\]

其余循环置换相同，第二球将 \(b\) 换为 \(c\)。两个球的二次 gamma 元彼此对易；其余约化矩阵为零。因此全部约化曲率严格为零。

这不是只证明“曲率共同核有四维”：投影子丛被联络保持，而且限制联络平坦。局部单连通邻域内，每个 \(\operatorname{im}\Pi_4\) 中的初值唯一延拓为 Killing 自旋子。与上界结合即得**恰四个局部实超荷**。

## 4. 混合符号：可逆的代数矛盾

混合符号同样先得到 (21)。这时无需分别求出两个不相容的 \(X\) 投影；单个曲率夹乘已经足够：

\[
\boxed{
H\Gamma^{58}Y\mathcal R_{0y}P
=-\frac{(s_+-s_-)abc\,t}{3}XY P.
}
\tag{29}
\]

左乘 \(H\Gamma^{58}Y\) 不需要它可逆，也没有假设其与曲率对易：任一曲率零向量当然仍被左侧消去。另一方面，混合符号下 \(s_+-s_-=\pm2\)，且 \(abc\,t\ne0\)、\((XY)^2=-1\)。因此右侧强制 \(P\epsilon=\epsilon=0\)。

这证明两个混合分支都没有局部 Killing 自旋子，且不存在漏掉的特殊正半径比。

## 5. \((+,+)\)：八超荷

### 5.1 两条曲率方程给出完整上界

本分支 \(\Delta=0\)，不能沿用第 2 节的 \(U\) 投影。正确的第一条恒等式更强：

\[
\boxed{\mathcal R_{5y}=-\frac b{18}Y\Gamma^5BH.}
\tag{30}
\]

所以仍有 \(H\epsilon=0\)，但不强制 \(U\epsilon=0\)。令

\[
J=(1-tN)X.
\tag{31}
\]

由 \(N^2=0\)、\(\{N,X\}=0\)，有 \(J^2=1\)。第二条曲率恒等式为

\[
\boxed{
\mathcal R_{02}P_H=
\frac{a^2t}{2}\Gamma^{258}(1+2\Lambda)(1+tN)(1-J)P_H.
}
\tag{32}
\]

全部前因子可逆：

\[
(\Gamma^{258})^2=-1,\qquad
(1+2\Lambda)^{-1}=\frac{2\Lambda-1}{3},\qquad
(1+tN)^{-1}=1-tN.
\tag{33}
\]

故非零 \(t\) 时必有 \(J\epsilon=\epsilon\)。完整候选投影是

\[
\Pi_8=\frac14(1-Q)(1+J),\qquad
\Pi_8^2=\Pi_8,\qquad \operatorname{tr}\Pi_8=8.
\tag{34}
\]

### 5.2 用显式平坦连接给出充分性

设

\[
\Pi_0=P_H\frac{1+X}{2},\qquad
S=1-\frac t2N,\qquad S^{-1}=1+\frac t2N.
\tag{35}
\]

\([Q,N]=0\) 及 \(SXS^{-1}=J\) 给出 \(\Pi_8=S\Pi_0S^{-1}\)。将 (10)–(12) 直接限制在 \(S\operatorname{im}\Pi_0\) 上，得到十一条统一的连接关系

\[
D_iS\Pi_0=SM_i\Pi_0,
\tag{36}
\]

其中

\[
\begin{aligned}
M_0=M_1&=\frac a2V\Gamma^2,&
M_2&=-a\Lambda,\\
M_i&=-b\Gamma^iB\quad(i=3,4,5),&
M_i&=-c\Gamma^iC\quad(i=6,7,8),\\
M_x=M_y&=0.
\end{aligned}
\tag{37}
\]

这是可逐项代入的连接表，而不是“全部 KSE 已由 CAS 通过”的替代说法。所有 \(M_i\) 都保持 \(\Pi_0\)。不同三维块的矩阵对易；球曲率像 (28) 一样消失，只是连接和结构常数同时反号。

AdS 部分也无需隐藏的种子解公式。由 \([V\Gamma^2,\Lambda]=2V\Gamma^2\)，

\[
[M_0,M_2]=-2aM_0,
\qquad
C^0{}_{02}M_0+C^1{}_{02}M_1
=-a(1+t^2)M_0-a(1-t^2)M_1=-2aM_0.
\tag{38}
\]

\((1,2)\) 相同，\((0,1)\) 两项均为零。关键是 \(M_0=M_1\)：因此标架结构常数中的 \(t^2\) 改变完全抵消。约化联络在变形标架中本身就是平坦的，不必借助奇异的 null 极限。

由 (36)，\(\Pi_8\) 定义被超联络保持的平坦子丛。在局部单连通邻域内得到八个独立解，与第 5.1 节上界匹配。

## 6. 实结构、零幅度与适用范围

为明确复矩阵计算与实超荷的关系，可用以下 \(32\times32\) 表示。令 \(\sigma_1,\sigma_2,\sigma_3\) 为通常 Pauli 矩阵，先定义

\[
\widetilde\Gamma^{2j}=\sigma_3^{\otimes j}\otimes\sigma_1\otimes\mathbf1_2^{\otimes(4-j)},
\qquad
\widetilde\Gamma^{2j+1}=\sigma_3^{\otimes j}\otimes\sigma_2\otimes\mathbf1_2^{\otimes(4-j)}
\quad(j=0,\ldots,4).
\tag{39}
\]

取 \(\Gamma^0=i\widetilde\Gamma^0\)，其余 \(\Gamma^i=\widetilde\Gamma^i\)（\(1\le i\le9\)），并取 \(\Gamma^{10}=\sigma_3^{\otimes5}\)。直接相乘给出 (6)。反线性算子

\[
\rho(\epsilon)=B_M\overline\epsilon,
\qquad B_M=\Gamma^{2468\,10},
\tag{40}
\]

满足

\[
B_M\overline{B_M}=1,
\qquad B_M\overline{\Gamma^i}=\Gamma^iB_M.
\tag{41}
\]

全部背景系数为实数，故 \(\rho\) 与超联络及本文投影相容。\(\rho^2=1\)，每个复解空间都是其 Majorana 固定子空间的复化。因此上面得到的复维数 8、4、0 正是局部实超荷数，而不是还要乘以二。

当 \(t=0\) 时，(22)、(29)、(32) 中用于减半的项消失。此时 (30) 对所有符号成立并给出唯一的 \(H\) 投影；两种 \(X\) 扇区的种子连接均平坦，共有 16 个实超荷。不能把非零幅度的上界连续代入 \(t=0\)。

综上，在 \(a,b,c>0\)、\(a^2=b^2+c^2\)、\(t\ne0\) 和局部单连通条件下，

\[
\boxed{
N_{\mathrm{local}}(+,+)=8,\qquad
N_{\mathrm{local}}(-,-)=4,\qquad
N_{\mathrm{local}}(+,-)=N_{\mathrm{local}}(-,+)=0.
}
\tag{42}
\]

证明直接保留任意实 \(t\ne0\)，不需要归一化幅度或改变周期。没有讨论半径发散边界 \(b=0\) 或 \(c=0\)，也不宣称任意离散商保留这些局部自旋子；全局自旋结构和周期必须另行检查。

## 7. 验算的作用与复现

解析证明的核心是 (15)、(19)、(22)、(29)、(30)、(32) 以及连接表 (26)、(36)–(37)。每个算子的定义已在 (2)–(13) 给出；式 (39) 还提供完全固定的矩阵表示。因此这里没有无法辨认行列来源的 determinant，也不把一般参数下的秩当成全域定理。

两个不同实现用于检查这些有限恒等式：

- [null_clifford_proof.py](</Users/koishi/Documents/Note/Drafts/test_2/null_clifford_proof.py>)：Python 标准库实现的稀疏 Clifford 乘法与有理多项式商环，直接使用关系 \(a^2=b^2+c^2\)、\(\Gamma^{0\cdots10}=-1\)。它不调用先前矩阵检查器。
- [paper_null_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_verify.wl>)：独立的显式 \(32\times32\) 矩阵实现，令 \((a,b,c)=(1+w^2,1-w^2,2w)\)，保持 \(w,t\) 为符号，检验以上决定性恒等式、两张连接表及 Majorana 结构。\(0<w<1\) 连同整体正尺度覆盖全部正半径比；本证明中的矩阵恒等式也在整个符号环成立。

这些验算用于发现符号与系数错误，不承担维数结论本身。维数来自可逆因子、明确投影迹和局部平坦联络定理。
