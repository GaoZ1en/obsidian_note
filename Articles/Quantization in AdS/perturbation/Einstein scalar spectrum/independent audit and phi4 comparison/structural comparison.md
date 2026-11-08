# Contact 与 Einstein residual：零模来自哪些结构？

## 结论与证据层级

本文独立研究给定的两体投影算子，不导入或调用归档 Einstein 引擎。物理输入只有 contact 的两体系数
\[
c_k^{\rm ct}=\frac{1}{8\pi(2\Delta+2k-1)}>0,\qquad \Delta>1,
\]
以及比较时明确引用的 Einstein **残差**通道支撑。前者是 \(H=H_0+\lambda W_{\rm ct}+O(\lambda^2)\) 中 \(\lambda\) 的系数；本文不重做 bulk 顶点推导。

主要结果如下。

1. **全指标定理，任意有限 \(N\)**：contact 在 \(Q=0\) 的完整核是 \(\mathcal V_N^2\) 乘平移不变对称多项式；其 Hilbert 级数为
   \[
   \frac{t^{N(N-1)}}{\prod_{r=2}^N(1-t^r)}.
   \]
   Einstein 的对应结论是残差 \(A_{\rm Ein}=W_{\rm Ein}-b_N(Q)I\) 的 \(\mathcal V_N^4\) 核，不是 Einstein 总系数的零模。
2. **有限指标、任意质量定理**：\(N=3,(P,Q)=(4,4)\) 时维数为 \(5\)、秩为 \(4\)，核由一个显式左右交换奇态生成，对所有 \(\Delta>1\) 成立。
3. **全 \(P\) 定理，\(N=3\)**：平衡块 \((P,P)\) 的全部左右交换奇态都受保护；但它们**不穷尽**核。\((6,6)\) 对所有 \(\Delta>1\) 恰有 \(2\) 个奇零模和 \(1\) 个偶零模。
4. **全指标定理**：\(N=3\) 时 \(\operatorname{rank}W_{\rm ct}\le\min(P,Q)+1\)，而所有平衡块 \(P\ge1\) 的秩**精确等于 \(P\)**，对所有 \(\Delta>1\) 成立。更一般地，对每个固定 \(N\ge3\)，平衡高次数块的非零谱维数比例为 \(\Theta_N(P^{-1})\)，故零模比例趋于 \(1\)。精确平衡秩和双边界的加强由独立复核提出，下面均已再次独立推导；它们已不是有限扫描支持的猜想。
5. **严格反例**：把核写成“所有 pair 都向左”的空间与“所有 pair 都向右”的空间之和不成立；平衡块中这两个空间都为零。\(N=4\) 时连全局左右交换奇性也不再保证零模，下面给出显式反例。
6. **非平衡部分仍是猜想**：三个质量 \(\Delta=3/2,2,7/3\)、所有 \(0\le Q\le P\le12\) 的 \(273\) 个块，以及 \(0\le P=Q\le24\) 的 \(75\) 个块，分别为末节的非平衡秩猜想及已证明的平衡秩定理提供精确回归检验；这些范围有重叠，不能把它们当成 \(348\) 个互异块。

复现源：[contact_structure.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/contact_structure.py>)；精确证书及完整扫描：[contact_structure.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/contact_structure.json>)。

## 1. 对象、内积与正性

单粒子表示为 \(D^+_{\Delta/2}\otimes D^+_{\Delta/2}\)，标号粒子多项式空间使用乘积内积
\[
\left\|\prod_{i=1}^Nz_i^{p_i}w_i^{q_i}\right\|^2
=\prod_i\frac{p_i!q_i!}{(\Delta)_{p_i}(\Delta)_{q_i}}.
\]
不同单项式正交。物理 Bose 空间继承此内积；下面的多项式范数不额外除以 \(N!\)。令
\[
U_{N,P}=\ker\Bigl(\sum_i\partial_{z_i}\Bigr)\cap\mathbb C[z_1,\ldots,z_N]_P,
\qquad
\mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N},
\]
其中 \(S_N\) 同时置换左右粒子标签。

采用
\[
J_- =\partial_z,\quad J_0=z\partial_z+\frac\Delta2,
\quad J_+=z^2\partial_z+\Delta z,
\]
故 \(J_-^\dagger=J_+\)。pair Casimir 为
\[
C_{ij}^L=-(z_i-z_j)^2\partial_i\partial_j
+\Delta(z_i-z_j)(\partial_i-\partial_j)+\Delta(\Delta-1),
\quad C_k=(\Delta+k)(\Delta+k-1).
\]
右侧同式。其谱投影记作 \(P^L_{ij,k},P^R_{ij,k}\)。\(\Delta>1\) 保证内积正定，且所有 \(C_k\) 互异。

定义
\[
v_{ij}=\sum_{k\ge0}c_kP^L_{ij,k}P^R_{ij,k},\qquad W_{\rm ct}=\sum_{i<j}v_{ij}.
\]
有限双次数块只含有限多个通道。只要所有 \(c_k>0\)，
\[
\ker W_{\rm ct}
=\bigcap_{i<j}\bigcap_k\ker(P^L_{ij,k}P^R_{ij,k}). \tag{1.1}
\]
这是正二次型之和的结论，不要求不同 pair 的投影彼此对易。只讨论核或秩时可取 \(c_k=1\)；比较非零本征值时不可这样替换。

约定与全局 AdS 能级问题的规范化取自 [formalism.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L253-L270>)：这里研究简并自由能级中的一阶有效算子，不把它等同于平直时空 in/out 散射振幅。

## 2. 手征块：\(\mathcal V_N^2\) 与 \(\mathcal V_N^4\) 分别说明什么

### 2.1 Contact 核的完整证明

当 \(Q=0\)，每个右 pair 都只有 \(k_R=0\)。固定左 pair 的总次数 \(n\)，其分解由
\[
(J_{+,i}+J_{+,j})^{n-k}(z_i-z_j)^k,\qquad k=0,\ldots,n
\]
给出。\(J_{+,i}+J_{+,j}\) 保持每个理想 \((z_i-z_j)^k\)，故所有 \(k>0\) 的态在 \(z_i=z_j=t\) 上消失；而
\[
\left.(J_{+,i}+J_{+,j})^n1\right|_{z_i=z_j=t}
=(2\Delta)_n t^n\ne0.
\]
对 spectators 的系数逐项使用此论证，得到
\[
P^L_{ij,0}f=0\quad\Longleftrightarrow\quad (z_i-z_j)\mid f.
\]
若 \(f\) 为 Bose 对称多项式，则关于法向坐标 \(z_i-z_j\) 为偶函数，因而实际有 \((z_i-z_j)^2\mid f\)。不同碰撞线性因子是互不相伴的不可约元，唯一分解于是给出
\[
\boxed{\ker W_{\rm ct}\big|_{P,0}
=\mathcal V_N(z)^2\,
\mathbb C[z_1,\ldots,z_N]^{S_N,\mathrm{translation}}_{P-N(N-1)},}
\quad
\mathcal V_N=\prod_{i<j}(z_i-z_j). \tag{2.1}
\]
不需要也不能把相交碰撞理想假设成互素理想。\(\mathcal V_N^2\) 本身平移不变，因此商多项式仍为 primary。令 \(X_i=z_i-N^{-1}\sum_jz_j\)，剩余环自由生成于 \(e_2(X),\ldots,e_N(X)\)，从而
\[
\boxed{\sum_{P\ge0}\dim\ker W_{\rm ct}|_{P,0}\,t^P
=\frac{t^{N(N-1)}}{\prod_{r=2}^N(1-t^r)}.} \tag{2.2}
\]
即把 \(P-N(N-1)\) 分拆为 \(2,\ldots,N\) 的个数；负次数时为零。\(N=1\) 采用空乘积，只有 \(P=0\) 的 primary，与 \(W=0\) 相符。

### 2.2 与 Einstein 残差的有条件比较

来源 [physics.md:887–917](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics.md#L887-L917>) 给出的对象是
\[
W_{\rm Ein}=b_N(Q)I+A_{\rm Ein},\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),
\]
且在选定左向基线后，\(A_{\rm Ein}\) 的 pair 系数严格正当且仅当 \(k_L\le k_R+2\)，为零当且仅当 \(k_L\ge k_R+4\)。在此**支撑与正性输入**下，重复上述理想过滤证明立即得到
\[
\ker A_{\rm Ein}|_{P,0}
=\mathcal V_N^4\,\mathbb C[e_2,\ldots,e_N]_{P-2N(N-1)},
\quad
\sum_P\dim\ker A_{\rm Ein}|_{P,0}t^P
=\frac{t^{2N(N-1)}}{\prod_{r=2}^N(1-t^r)}. \tag{2.3}
\]
与原文 [exact_chapter.md:37–104](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/exact_chapter.md#L37-L104>) 的手征截面一致。本文独立证明这一数学推论，但没有以 contact 计算替代 Einstein 通道系数的物理审计。

| 对象 | \(Q=0\) 被排除的 Bose 通道 | 碰撞阶数 | 对总一阶系数的含义 |
|---|---|---|---|
| \(W_{\rm ct}\) | \(k_L=0\) | \(\mathcal V_N^2\) | 系数为 \(0\) |
| \(A_{\rm Ein}=W_{\rm Ein}-b_NI\) | \(k_L=0,2\) | \(\mathcal V_N^4\) | 系数为 \(b_N(0)\)，不是 \(0\) |

因此 \(\mathcal V_N^4\) 的出现来自所排除通道比 contact 多一层，而不是 Bose 对称本身。共同的对称多项式计数环才是表示论与 Bose 统计的共同部分。

## 3. \(N=3,(4,4)\)：一个短而完整的证书

对三粒子取
\[
X_i=z_i-\frac13\sum_jz_j,\qquad Y_i=w_i-\frac13\sum_jw_j,
\qquad p_{ab}=\sum_iX_i^aY_i^b.
\]
\(U_{3,4}=\operatorname{Sym}^4(\mathrm{std}_{S_3})\cong\mathbf1\oplus2\,\mathrm{std}\)，故
\[
\dim\mathcal H_{3;4,4}=1^2+2^2=5.
\]
以下五个多项式构成基：
\[
B=(p_{20}^2p_{02}^2,\ p_{20}p_{02}p_{11}^2,\ p_{11}^4,
\ p_{20}p_{12}^2,\ p_{02}p_{21}^2).
\]
显式零模是
\[
\boxed{\Psi=p_{20}p_{12}^2-p_{02}p_{21}^2.} \tag{3.1}
\]
它也可写成
\[
\Psi=2\det\begin{pmatrix}1&1&1\\X_1&X_2&X_3\\Y_1&Y_2&Y_3\end{pmatrix}
\prod_{i<j}(X_iY_i-X_jY_j). \tag{3.2}
\]
两个因子各自对粒子交换反对称，故乘积 Bose 对称；左右交换仅令行列式变号。平移不变性和双次数也直接可见。

在 \(\Delta=2\)，令 \(u=z_1-z_2,v=z_1+z_2-2z_3\)。\(C_{12}\) 在左 degree-four primary 空间的一组本征基为
\[
\begin{aligned}
F_0&=v^4+\tfrac65u^2v^2+\tfrac3{35}u^4,&
F_1&=uv^3+\tfrac37u^3v,\\
F_2&=u^2v^2+\tfrac19u^4,&F_3&=u^3v,&F_4&=u^4.
\end{aligned}
\]
展开 \(\sum_ja_jB_j\) 于 \(F_k(z)F_\ell(w)\)。其 \(k=\ell=0,1,2,3\) 系数，依次乘 \(7776,648,5400,294\)，就是
\[
M a,\qquad
M=\begin{pmatrix}
6&6&6&1&1\\
0&3&6&-1&-1\\
96&51&231&16&16\\
0&9&25&4&4
\end{pmatrix}.
\]
前四列行列式为 \(30240\ne0\)。唯一可能核向量为 \((0,0,0,1,-1)\)。由于 \(\Psi\) 左右交换为奇，而 \(F_k(z)F_k(w)\) 为偶，最后的 \(k=4\) 对角系数也消失。Bose 对称把这一 pair 的结论传到其余两对。因此
\[
\boxed{\operatorname{rank}W_{\rm ct}=4,\qquad\ker W_{\rm ct}=\mathbb C\Psi.} \tag{3.3}
\]

相同未缩放四阶子式在一般 \(\Delta\) 下精确等于
\[
\boxed{\frac{\Delta(\Delta+2)}{6^{10}(2\Delta+1)(2\Delta+3)}>0.} \tag{3.4}
\]
这使 (3.3) 成为任意 \(\Delta>1\) 的有限指标定理，而非仅三个质量的数值外推。

在题设的继承内积、\(\Delta=2\) 下，
\[
\|\Psi\|^2=\frac{44}{243},\qquad
\Psi_{\rm unit}=\sqrt{\frac{243}{44}}\,\Psi.
\]
独立的六变量微分实现使用
\[
P_{ij,k}=\prod_{\ell=0,\ell\ne k}^{4}\frac{C_{ij}-C_\ell}{C_k-C_\ell}
\]
验证了全部 \(3\times5=15\) 个等通道投影为零、物理 Gram 矩阵正定，以及两套权重下的 Gram 自伴性与秩。

**非零谱不作隐式重标度。** 若明确记 \(\widehat W=8\pi W_{\rm ct}\)，则 \(\Delta=2,(4,4)\) 的物理 contact 特征多项式为
\[
\det(xI-\widehat W)
=x\left(x^4-\frac{1219}{1155}x^3+\frac{8474}{24255}x^2
-\frac{20786}{509355}x+\frac4{3087}\right). \tag{3.5}
\]
真正的 \(\lambda\) 系数本征值为这里四个正根各除以 \(8\pi\)，以及一个零。取 \(c_k=1\) 会得到不同的非零谱；完整两套矩阵均保存在精确结果中。

## 4. 三粒子所有平衡次数的奇零模

对一般 \(P\)，\(U_{3,P}\) 有维数 \(P+1\)。在上述 \(u,v\) 坐标中
\[
C_{12}=u^2\partial_u^2-u^2\partial_v^2+2\Delta u\partial_u+\Delta(\Delta-1).
\]
它在 \(u^av^{P-a}\) 基中为三角矩阵，对角元为 \(C_a\)。因此每个 pair 标签 \(k=0,\ldots,P\) 的本征空间都是**一维**。记本征向量为 \(F_{P,k}\)。

当 \(P=Q\)，等通道投影的像为
\[
\mathbb C\,F_{P,k}(z)F_{P,k}(w),
\]
完全位于全局左右交换偶子空间。任何左右交换奇的 physical 态在任意 pair 的等通道投影均为零。故
\[
\boxed{\mathcal H_{3;P,P}^{\rm odd}\subseteq\ker W_{\rm ct}
\quad(\Delta>1,\ P\ge0).} \tag{4.1}
\]
这一证明不使用 contact 系数的具体大小，但确实使用等通道支撑、三粒子 multiplicity-one 及左右相同次数；它不是只凭宇称守恒就能成立的陈述。

### 4.1 显式重数公式

令
\[
\epsilon_P=\mathbf1_{P\ {m even}},\qquad
c_P=(1,-1,0)_{P\bmod3}.
\]
\(\operatorname{Sym}^P(\mathrm{std})\) 在恒等、换位、三循环上的字符分别是 \(P+1,\epsilon_P,c_P\)。于是三个实型不可约表示的重数为
\[
m_{\bf1}(P)=\frac{P+1+3\epsilon_P+2c_P}{6},\quad
m_{\rm sgn}(P)=\frac{P+1-3\epsilon_P+2c_P}{6},\quad
m_{\rm std}(P)=\frac{P+1-c_P}{3}. \tag{4.2}
\]
所有 \(S_3\) 不可约表示的唯一不变双线性形式都是对称的。左右交换的奇偶性因此落在重数空间，而不是给不可约表示添一个任意符号：
\[
\begin{aligned}
d_3(P,Q)&=\sum_\rho m_\rho(P)m_\rho(Q)
=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2c_Pc_Q}{6},\\
d_{\rm odd}(P)&=\sum_\rho\binom{m_\rho(P)}2,\qquad
d_{\rm even}(P)=\sum_\rho\binom{m_\rho(P)+1}2.
\end{aligned} \tag{4.3}
\]
这是奇零模族的完整计数，不是整个核的计数。

## 5. 正秩界：为什么高次数有宏观零空间

### 5.1 一对约束已经决定 Bose 核，不能再乘 pair 数

令 \(\Pi_B\) 为 simultaneous-Bose 正交投影，令
\[
Q_{12}=\sum_kP^L_{12,k}P^R_{12,k}
\]
为一对粒子的等通道正交投影。对 \(f\in\mathcal H_{N;P,Q}\)，所有 pair 由置换共轭且 \(f\) 固定，所以
\[
\langle f,W_{\rm ct}f\rangle
=\binom N2\langle f,v_{12}f\rangle.
\]
正性给出
\[
\ker(W_{\rm ct}|_{\mathcal H})=\ker(Q_{12}|_{\mathcal H}),\qquad
\boxed{\operatorname{rank}(W_{\rm ct}|_{\mathcal H})
=\operatorname{rank}(Q_{12}|_{\mathcal H}).} \tag{5.1}
\]
这里两边秩相等是由相同定义域上的相同核推出的；不声称单独的 pair 投影保持 Bose 子空间。取伴随还得到
\[
\operatorname{rank}(Q_{12}|_{\mathcal H})
=\operatorname{rank}(\Pi_B|_{\operatorname{im}Q_{12}}).
\]
因此秩的上界是**一对**等通道空间的维数，不需要额外的 \(\binom N2\)。三粒子时立即有
\[
\operatorname{rank}W_{\rm ct}\le\min(P,Q)+1. \tag{5.2}
\]

### 5.2 三粒子平衡块的精确秩与完整计数

在 \(P=Q\) 时，用物理的实双线性内积把 \(U_{3,P}\otimes U_{3,P}\) 识别为 \(\operatorname{End}(U_{3,P})\)。这是线性 tensor–Hom 对应，不是反线性 Riesz 映射。\(\operatorname{im}Q_{12}\) 对应 \(C_{12}\) 本征基中的全部对角算子；Bose 投影对应
\[
\mathcal R(T)=\frac16\sum_{\sigma\in S_3}U_\sigma TU_\sigma^{-1}.
\]
Casimir 恒等式为
\[
\sum_{i<j}C_{ij}=C_{\rm tot}+(N-2)\sum_iC_i.
\]
对三粒子 degree \(P\) primary，右端等于
\[
s_P I,\qquad s_P=P(P+3\Delta-1)+3\Delta(\Delta-1).
\]
于是
\[
\mathcal R\left(C_{12}-\frac{s_P}{3}I\right)=0.
\]
\(P\ge1\) 时括号内是非零对角算子，因为 pair 谱至少有两个不同本征值。这给出 \(P+1\) 个等通道向量之间的一条非零关系，故
\[
\boxed{\operatorname{rank}W_{\rm ct}|_{P,P}\le P\quad(P\ge1).} \tag{5.3}
\]
以下证明这就是唯一关系，从而将上界提升到等式。这一步由 [fresh contact structure review.md:183–251](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md#L183-L251>) 提出，已从微分表示再次独立核对；复现脚本还在 \(P=6\)、符号 \(\Delta\) 下逐项验证了三对角系数、Casimir 和与所用带宽恒等式。

**引理：另外两个 pair Casimir 构成不可约三对角结构。** 置
\[
A=C_{12},\qquad B=C_{23},\qquad C=C_{13},\qquad A+B+C=s_PI.
\]
改用 \(r=z_1-z_2\)、\(u=(z_1+z_2)/2-z_3\)；这里的 \(u\) 是上面 \(v\) 的一半，不沿用 (3.3) 前相对坐标的命名。归一化 \(A\) 的本征向量使
\[
f_k=r^ku^{P-k}+O(r^{k+2}),\qquad Af_k=\lambda_kf_k,
\quad\lambda_k=(\Delta+k)(\Delta+k-1).
\]
直接代入得
\[
B=-(u-r/2)^2\left(\partial_r\partial_u-\tfrac12\partial_u^2\right)
+\Delta(u-r/2)\left(-\partial_r+\tfrac32\partial_u\right)+\Delta(\Delta-1).
\]
\(B\) 最多降低一次 \(r\) 的消失阶数，故其 \(f_k\) 基矩阵满足 \(B_{jk}=0\) 当 \(j<k-1\)。物理自伴性和 \(f_k\) 的正交性又排除 \(j>k+1\)。而
\[
B_{k-1,k}=-k(P-k+\Delta)\ne0,\qquad1\le k\le P:
\]
此系数只来自 \(-u^2\partial_r\partial_u-\Delta u\partial_r\) 作用于首项，更高 \(r\) 次数不可能贡献。因此在实正交归一基中，\(B\) 是不可约实对称三对角矩阵。

**引理：对角算子的 Bose 平均只有一个核方向。** \(A\) 有 \(P+1\) 个互异本征值，所以每个对角算子唯一写作 \(f(A)\)，其中 \(\deg f\le P\)。Bose 平均为零等价于
\[
f(A)+f(B)+f(C)=0. \tag{5.4a}
\]
设 \(f(t)=a_mt^m+a_{m-1}t^{m-1}+\cdots\)、\(a_m\ne0\)。\(C=s_PI-A-B\) 的非对角元是 \(B\) 的相反数。

- 若最高次数 \(m\ge2\) 为偶数，取距主对角线 \(m\) 的矩阵元。\(f(A)\) 无贡献，低次项也无贡献，而 \(f(B)+f(C)\) 给出
  \[
  2a_m\prod_{j=i}^{i+m-1}B_{j,j+1}\ne0,
  \]
  与 (5.4a) 矛盾。
- 若最高次数 \(m\ge3\) 为奇数，取距主对角线 \(m-1\) 的矩阵元。\(m\) 次幂的路径只能包含一次对角停留；令 \(b_j=B_{jj}\)，其在 \(B^m+C^m\) 中的对角贡献为 \(b_j+(s_P-\lambda_j-b_j)=s_P-\lambda_j\)。因此 (5.4a) 要求
  \[
  \left(\prod_{j=i}^{i+m-2}B_{j,j+1}\right)
  \left[a_m\sum_{j=i}^{i+m-1}(s_P-\lambda_j)+2a_{m-1}\right]=0.
  \]
  因为 \(m\le P\)，至少存在相邻的两个允许起点 \(i,i+1\)。它们的括号之差为
  \(a_m(\lambda_i-\lambda_{i+m})\ne0\)，同样矛盾。

所以非零核多项式只能是一次式。由 \(A+B+C=s_PI\)，它恰为 \(f(t)=a(t-s_P/3)\)。这证明对角空间的 Bose 平均核恰为一维，结合 (5.1) 得
\[
\boxed{\operatorname{rank}W_{\rm ct}|_{P,P}=P
\quad(N=3,\ \Delta>1,\ P\ge1).} \tag{5.4b}
\]
\(P=0\) 的块为一维且秩为 \(1\)。于是平衡块已有**全指标完整计数**：
\[
\boxed{\dim\ker W_{\rm ct}=d_3(P,P)-P,
\qquad\dim(\ker W_{\rm ct})_{\rm even}=d_{\rm even}(P)-P
\quad(P\ge1).} \tag{5.4c}
\]
奇零模计数仍为 (4.3)。在 \(P=6\)，\((m_{\bf1},m_{\rm sgn},m_{\rm std})=(2,1,2)\)，故 \(d=9,d_{\rm odd}=2,d_{\rm even}=7\)，恰有一个偶零模。\(P\le5\) 的核由奇族穷尽；\(P\ge6\) 都有额外偶零模。最后一句可由 (4.2) 直接计算：先检验 \(P=6,\ldots,11\)，再用 \(m(P+6)=m(P)+(1,1,2)\) 得 \([d_{\rm even}(P+6)-(P+6)]-[d_{\rm even}(P)-P]=P>0\)。完整计数不等同于已经给出偶核的显式多项式基。

### 5.3 固定任意 \(N\ge3\) 的零模比例定理

取相对坐标 \(\delta=z_1-z_2\) 及另外 \(N-2\) 个平移不变坐标。Casimir 保持 \((\delta)^k\) 过滤，关联分次上的本征值为 \(C_k\)。因此 pair 标签 \(k\) 在 \(U_{N,P}\) 中的重数恰是
\[
a_N(P,k)=\binom{P-k+N-3}{N-3}.
\]
谱自伴且各 \(C_k\) 互异，故关联分次的重数就是实际谱重数。这给出全指标上界
\[
\boxed{\operatorname{rank}W_{\rm ct}|_{P,Q}
\le\sum_{k=0}^{\min(P,Q)}
\binom{P-k+N-3}{N-3}\binom{Q-k+N-3}{N-3}.} \tag{5.5}
\]

设 \(D_N(P)=\dim U_{N,P}=\binom{P+N-2}{N-2}\)。写 \(U_{N,P}=\bigoplus_\rho M_\rho\otimes\rho\)，\(m_\rho=\dim M_\rho\)。对称群不可约表示皆为实型，故平衡 physical 维数为 \(d_N(P,P)=\sum_\rho m_\rho^2\)。由 Cauchy 不等式及 \(\sum_\rho(\dim\rho)^2=N!\)，
\[
D_N(P)^2=\left(\sum_\rho m_\rho\dim\rho\right)^2
\le N!\,d_N(P,P). \tag{5.6}
\]
另一方面，固定 \(N\ge3\) 后，(5.5) 的平衡右端为
\[
\sum_{\ell=0}^P\binom{\ell+N-3}{N-3}^2
=\frac{P^{2N-5}}{(2N-5)((N-3)!)^2}\left(1+O_N(P^{-1})\right).
\]
结合 (5.6)，
\[
\boxed{\frac{\operatorname{rank}W_{\rm ct}}{d_N(P,P)}
\le\frac{N!(N-2)^2}{(2N-5)P}\left(1+O_N(P^{-1})\right),\qquad
\frac{\dim\ker W_{\rm ct}}{d_N(P,P)}\longrightarrow1.} \tag{5.7}
\]
这是 **\(N\) 固定、\(P\to\infty\)** 的结论，不是关于同时大 \(N\) 的一致估计。没有由此推出热力学极限、统一谱隙或高阶微扰保护。\(N=2\) 不在此定理内：平衡 primary 本身就是等通道，contact 核为空。

### 5.4 独立复核加强：固定 \(N\) 的双边阶数

以下加强由 [fresh contact structure review.md:71–174](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md#L71-L174>) 提出；这里重新给出推导及所需的实性条件。只在平衡块 \(P=Q\)、左右相同 \(\Delta\) 下使用它。

令 \(m=N-2\)、\(\mathcal T=\binom N2\)，以 \(\mathrm{perm}_m\) 表示 \(S_m\) 的 \(m\) 维置换表示，定义
\[
R_N(P)=\sum_{n=0}^P
\dim\left[\operatorname{Sym}^n(\mathrm{perm}_m)
\otimes\operatorname{Sym}^n(\mathrm{perm}_m)\right]^{S_m}.
\]
则有精确有限维界
\[
\boxed{\left\lceil\frac{R_N(P)}{\mathcal T}\right\rceil
\le\operatorname{rank}W_{\rm ct}
\le\min\{d_N(P,P),R_N(P)\}.} \tag{5.8}
\]

**上界。** pair \((12)\) 的稳定子是 \(H=S_2\times S_m\)。一侧 pair 标签 \(k\) 的本征空间 \(E_k\)，作为 spectator 的 \(S_m\) 表示，等价于
\(\operatorname{Sym}^{P-k}(\mathrm{perm}_m)\)：可在碰撞过滤的关联分次上取 spectator 坐标 \(z_a-(z_1+z_2)/2\)，\(a=3,\ldots,N\)，它们恰被置换。\((12)\) 在 \(E_k\) 上为 \((-1)^k\)，在 \(E_k\otimes E_k\) 上因此恒为 \(+1\)。又因 \(Q_{12}\) 与稳定子作用对易，
\[
Q_{12}\mathcal H\subseteq(\operatorname{im}Q_{12})^H,
\qquad \dim(\operatorname{im}Q_{12})^H=R_N(P),
\]
这比不取 spectator 不变量的 (5.5) 更强。

**下界。** 在单侧 primary 空间选择实的物理正交基。置换矩阵 \(U_g\) 为实正交矩阵，pair 投影 \(P_k\) 为实对称矩阵。写 \(Q=\sum_kP_k\otimes P_k\)、\(S=\Pi_B\)，有
\[
\operatorname{Tr}(QS)=\frac1{N!}\sum_{g\in S_N}\sum_k
\bigl[\operatorname{Tr}(P_kU_g)\bigr]^2. \tag{5.9}
\]
这里是实数的平方，故每一项非负；不是任意复表示下可不加检验照搬的恒等式。仅保留 \(g\in H\) 并用 \(S_m\) 字符正交性，即得
\[
\operatorname{Tr}(QS)\ge\frac{|H|}{N!}R_N(P)=\frac{R_N(P)}{\mathcal T}.
\]
\(QSQ\) 是正半定压缩投影，谱在 \([0,1]\)，且
\[
\operatorname{rank}(QSQ)=\operatorname{rank}W_{\rm ct},\qquad
\operatorname{Tr}(QSQ)=\operatorname{Tr}(QS).
\]
因此秩不小于其迹，得到 (5.8) 的下界。全部正权重可以改变正谱值，但不会改变这里的秩论证。

再对 \(S_m\) 用 Cauchy 不等式：若 \(b_n=\binom{n+m-1}{m-1}\)，则
\[
\frac1{m!}\sum_{n=0}^Pb_n^2\le R_N(P)\le\sum_{n=0}^Pb_n^2.
\]
故固定 \(N\ge3\) 时
\[
R_N(P)=\Theta_N(P^{2N-5}),\quad
d_N(P,P)=\Theta_N(P^{2N-4}),
\]
从而严格得到
\[
\boxed{\operatorname{rank}W_{\rm ct}=\Theta_N(P^{2N-5}),\qquad
\frac{\operatorname{rank}W_{\rm ct}}{d_N(P,P)}=\Theta_N(P^{-1}).} \tag{5.10}
\]
再次强调：这是固定粒子数的双边阶数，不是跨所有 \(N\) 的一致估计，也不是任何正本征值大小的下界。\(N=3\) 时 \(R_3(P)=P+1\)，所以下界为 \(\lceil(P+1)/3\rceil\)；三粒子特有的三对角论证已将其加强为 (5.4b) 的精确秩 \(P\)。

### 5.5 真实 contact 系数：正谱也整体变软，但不是新增精确零模

下面采用**实际** \(c_k=[8\pi(2\Delta+2k-1)]^{-1}\)，不改成 \(c_k=1\)，并固定 \(N\ge3\) 与 \(\Delta>1\)。该推论来自 [fresh contact structure review.md:319–401](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md#L319-L401>)，其低秩分解与加权迹论证已独立复核。

记 \(r_N(P)=\operatorname{rank}W\)，只在严格正本征值上定义经验测度
\[
\mu_P^+=\frac1{r_N(P)}\sum_{e_j(P)>0}\delta_{e_j(P)}.
\]
对固定 cutoff \(K\)，分解 \(W=W_{\le K}+W_{>K}\)。稳定子上界与投影正性给出
\[
\operatorname{rank}W_{\le K}\le\sum_{k=0}^{\min(K,P)}b_{N-2}(P-k)
=O_{N,K}(P^{2N-6}),\qquad
\|W_{>K}\|\le\mathcal T\sup_{k>K}c_k,
\]
其中 \(b_m(n)=\dim[(\operatorname{Sym}^n\mathrm{perm}_m)^{\otimes2}]^{S_m}\)。先取 \(K\) 使尾部范数小于给定阈值，再用 min–max 及 \(r_N(P)=\Theta_N(P^{2N-5})\)，得到
\[
\boxed{\mu_P^+\Rightarrow\delta_0.} \tag{5.11}
\]
它是排除了所有精确零模之后的独立弱极限定理；有限 \(P\) 的这些软本征值仍严格为正。

均值还能定阶。令
\[
R_c(P)=\sum_{k=0}^Pc_k\,b_{N-2}(P-k).
\]
在 (5.9) 中加入正权重，保留稳定子项给出下界；上界使用 Bose 投影 \(S\le S_H\) 及 \(Q_c=\sum_kc_kP_k\otimes P_k\ge0\)。因此
\[
R_c(P)\le\operatorname{Tr}_{\rm phys}W
=\mathcal T\operatorname{Tr}(SQ_c)\le\mathcal T R_c(P). \tag{5.12}
\]
令 \(a=\Delta-1/2\)、\(d=2N-6\)。恒等字符项给出
\(b_{N-2}(n)=n^d/[(N-2)!((N-3)!)^2]+O_N(n^{d-1})\)（\(N=3\) 时直接用 \(b_1(n)=1\)），而
\(\sum_{k=0}^P(P-k)^d/(k+a)=P^d\log P+O_{N,\Delta}(P^d)\)（\(d=0\) 时分子恒取 \(1\)）。于是
\[
R_c(P)=\frac{P^{2N-6}\log P}{16\pi(N-2)!((N-3)!)^2}
+O_{N,\Delta}(P^{2N-6}),
\]
并严格推出
\[
\boxed{\frac1{r_N(P)}\sum_{e_j>0}e_j
=\Theta_{N,\Delta}\!\left(\frac{\log P}{P}\right).} \tag{5.13}
\]
这确定的是**正本征值的平均值阶数**，不是典型本征值尺度、最小正本征值、重标度谱极限或谱隙；迹夹逼也不给出均值的精确领先系数。此处 \(1/(16\pi)\) 来自题设的物理 contact 归一化，不能省略。

## 6. 任意 \(\Delta\) 的 \((6,6)\) 偶零模证书

为了把“至少一个偶零模”提升到精确计数，使用如下小矩阵，而不是归档 Racah 引擎。

在 \(u^av^{P-a}\) 基中令 \(A_P\) 的第 \(k\) 列为 \(F_{P,k}\)，归一化其 \(u^kv^{P-k}\) 系数为 \(1\)。系数递推为
\[
(A_P)_{k,k}=1,\qquad
(A_P)_{a,k}=\frac{(P-a+2)(P-a+1)}{C_a-C_k}(A_P)_{a-2,k}.
\]
\(T_P\) 由线性代换 \((u,v)\mapsto((u+v)/2,(3u-v)/2)\) 直接二项式展开，代表换位 \((23)\)。置 \(R_P=A_P^{-1}T_PA_P\)。令 \(m=\min(P,Q)\)，定义
\[
K_{jk}=\frac{\delta_{jk}+2(R_P)_{jk}(R_Q)_{jk}}3,
\qquad0\le j,k\le m. \tag{6.1}
\]
这是 Bose 投影在等通道空间的压缩坐标矩阵。两个非平凡 coset 的贡献相同，是因为输入和输出等通道都在 \((12)\) 下为偶。非归一化本征基的正对角物理 Gram 矩阵乘上 \(K\) 后，得到真正的正半定 Gram 矩阵；所以
\[
\operatorname{rank}K=\operatorname{rank}W_{\rm ct}.
\]
不把 (6.1) 误认为任意坐标下的 Euclidean 对称矩阵。

对 \(P=Q=6\)，\(\det K=0\)，而指标 \(0,\ldots,5\) 的主子式精确等于
\[
\frac{25\Delta(\Delta+1)(\Delta+4)(\Delta+5)(\Delta+2)^2(\Delta+3)^2
(3\Delta+7)(3\Delta+8)(3\Delta+10)^2 q_6(\Delta)}
{2048(2\Delta+5)^6(2\Delta+3)^4(2\Delta+7)^4(2\Delta+1)^2(2\Delta+9)^2}, \tag{6.2}
\]
其中
\[
q_6(\Delta)=281\Delta^6+4215\Delta^5+25699\Delta^4+81365\Delta^3
+140600\Delta^2+125000\Delta+44280.
\]
所有因子在 \(\Delta>1\) 为正。这是有限阶有理函数恒等式的精确证书，故
\[
\boxed{d_3(6,6)=9,\quad\operatorname{rank}W_{\rm ct}=6,\quad
\dim\ker W_{\rm ct}=3=2_{\rm odd}+1_{\rm even}\quad(\Delta>1).} \tag{6.3}
\]
这不声称偶核的实际多项式随 \(\Delta\) 不变；相同支撑下改变正系数不会改变核，但改变 \(\Delta\) 会改变谱投影本身。

## 7. 两类容易混淆的“奇性”论证及其反例

### 7.1 共同左向空间加共同右向空间不够

Bose 态在一个 pair 上只能有 \(k_L+k_R\) 偶数。因此 contact 允许的非对角通道确实分为
\(k_L\ge k_R+2\) 或 \(k_R\ge k_L+2\)。但
\[
\bigcap_{i<j}(\mathcal L_{ij}\oplus\mathcal R_{ij})
\ne\left(\bigcap_{i<j}\mathcal L_{ij}\right)
+\left(\bigcap_{i<j}\mathcal R_{ij}\right)
\]
一般不能交换交集与直和。

更强地，对任意 \(N\ge2\)，两个共同一侧空间在 \(P=Q\) 都为零。因为
\[
\sum_{i<j}(C^L_{ij}-C^R_{ij})
=(P-Q)(N\Delta+P+Q-1)I. \tag{7.1}
\]
若每个 pair 都满足 \(k_L\ge k_R+2\)，则每一项在该态上的期望至少是
\[
C_{k_R+2}-C_{k_R}=4(\Delta+k_R)+2\ge4\Delta+2>0
\]
乘其范数平方，与 (7.1) 在平衡块为零矛盾。右向同理。因此 (3.1) 已是这一穷尽方案的严格反例，(6.3) 还说明漏掉的不只奇态。

### 7.2 \(N\ge4\) 的 spectators 确实破坏全局奇性保护

三粒子的关键是 pair 标签没有 multiplicity。\(N\ge4\) 时，等通道扇区具有
\(a_N(P,k)a_N(Q,k)\) 维，平衡时其中本身可以包含左右交换奇向量。因此“pair 标签相等”不再意味着“全局左右交换为偶”。

具体取 \(N=4\)，以四粒子中心化坐标定义相同的 \(p_{ab}\)，令
\[
\Xi=p_{20}p_{13}-p_{02}p_{31}\in\mathcal H_{4;3,3}.
\]
它是 Bose 不变、primary、左右交换奇态。但是在
\[
X=(1,1,0,-2),\qquad Y=(0,0,1,-1)
\]
上，两个 chirality 的 pair \((12)\) 都相撞，而 \(\Xi=-4\ne0\)。所有 \(k>0\) 的 pair 成分在相应碰撞面消失，所以
\[
P^L_{12,0}P^R_{12,0}\Xi\ne0.
\]
此结论对所有 \(\Delta>1\) 成立。故 \(\Xi\notin\ker W_{\rm ct}\)：这不仅指出三粒子证明失效，而且给出了更高粒子数命题的真正反例。

## 8. 有界精确探索与下一步可证命题

所有扫描使用 \(\mathbb Q\) 精确算术，不以浮点阈值决定秩。三个质量的全部扫描秩相同。下表现在全部由 (5.4b)–(5.4c) 对所有 \(\Delta>1\) 严格保证；有限计算成为定理的回归检验，而非全质量结论的唯一证据。

| \(P=Q\) | physical 维数 | 秩 | 奇零模 | 偶零模 |
|---:|---:|---:|---:|---:|
| 3 | 3 | 3 | 0 | 0 |
| 4 | 5 | 4 | 1 | 0 |
| 5 | 6 | 5 | 1 | 0 |
| 6 | 9 | 6 | 2 | 1 |
| 7 | 11 | 7 | 3 | 1 |
| 8 | 14 | 8 | 4 | 2 |
| 10 | 21 | 10 | 7 | 4 |
| 12 | 29 | 12 | 10 | 7 |
| 18 | 61 | 18 | 24 | 19 |
| 24 | 105 | 24 | 44 | 37 |

几个真正非平衡例子（同样在三个质量均成立）：

| \((P,Q)\) | physical 维数 | 秩 | 核维数 |
|---|---:|---:|---:|
| \((5,4)\) | 5 | 4 | 1 |
| \((6,2)\) | 4 | 3 | 1 |
| \((8,4)\) | 8 | 5 | 3 |
| \((12,6)\) | 16 | 7 | 9 |
| \((12,11)\) | 26 | 11 | 15 |

**只对非平衡块保留猜想。** 对 \(N=3,\Delta>1,P>Q\)，
\[
\operatorname{rank}W_{\rm ct}\stackrel{?}=\min\left\{
 d_3(P,Q),\ Q+1-\mathbf1_{P-Q=1}\right\}. \tag{8.1}
\]
扫描范围没有反例，但尚未证明：

- \(P=Q+1\) 的普遍那一条关系；
- 非平衡时除该关系外，不存在更多等通道的 Bose 平均关系；
- 一般非平衡 \(P,Q\) 下不会在其他 \(\Delta>1\) 出现额外秩下降。

平衡问题则已经由 §5.2 的不可约三对角论证解决，不能继续列为猜想。下一步应将这一结构移到 \(\operatorname{Hom}(U_{3,Q},U_{3,P})\) 的矩形等通道算子：先解释 \(P-Q=1\) 的普遍关系，再寻找适当的带宽或端点论证，排除其余核方向。另一个独立问题是为已知维数的平衡偶零模给出显式多项式基；精确秩定理并未自动完成这一构造。

## 9. 结构归因与验证边界

| 结论 | 真正使用的输入 | 不使用／不能推出的输入 |
|---|---|---|
| physical 维数、重数公式 | translation-primary 表示与 simultaneous Bose 对称 | 不依赖两体系数 |
| 正和的共同核 | 正内积与所有受罚系数严格正 | 不要求 overlapping pair 对易 |
| contact 手征 \(\mathcal V_N^2\) | 只罚 \(k_L=k_R=0\)，再加 Bose 偶性 | 不固定任何非零本征值 |
| Einstein residual 手征 \(\mathcal V_N^4\) | 另外罚 \(k_L=2,k_R=0\) | 不是 Einstein 总系数零模 |
| 三粒子奇零模 | 等标签支撑、pair multiplicity-one、\(P=Q\) | 仅有左右交换对称性不够 |
| 全 \(N\) 高次数大核 | 等标签支撑、单 pair 约束及 Bose 维数下界 | 不保证 \(N\) 同时增长时的一致极限 |
| 接触非零谱 | 实际 \(c_k=[8\pi(2\Delta+2k-1)]^{-1}\) 和物理 Gram | 不能用 \(c_k=1\) 的谱替代 |
| 正谱经验测度趋零、均值 \(\Theta(\log P/P)\) | 等通道秩定理与实际系数的 \(1/k\) 尾部 | 不是只由支撑推出，也不确定典型尺度或谱隙 |

**Verified:** 所有数学断言上面分别给出解析证明或精确有限证书；脚本验证 \((4,4)\) 的两条独立实现、全部等通道投影、范数与 Gram 自伴性；\((4,4)\)、\((6,6)\) 的全质量子式；\(N=4\) 反例；三个有理质量的有界扫描。小块及选定中块另比较了压缩矩阵秩与未压缩 Bose 平均列矩阵秩。结果含脚本 SHA-256 与 Sage 版本，便于识别实际运行的源。

**Assumptions:** \(\Delta>1\)、有限次数、给定正定表示内积、同时 Bose 置换、contact 系数全部正；bulk 一阶 pair 系数作为独立物理输入。与 Einstein 的数学比较以明确写出的残差通道支撑为条件。

**Not verified:** (8.1) 的全指标成立性、一般非手征核的显式完整基、更高阶相互作用是否提升这些零模、跨粒子数或同时大 \(N\) 极限。本文并不把有限扫描或奇族定理改名为完整核分类。

复现命令（从本目录运行）：

```bash
sage --nodotsage scripts/contact_structure.py \
  --output results/contact_structure.json --grid-max 12 --balanced-max 24
```

此脚本只读取自身并生成指定 JSON；不读取、修改或执行来源包内的引擎。
