# Global AdS₃ Einstein–scalar：完整 Fock 谱的进一步解析研究

**第三轮独立研究，2026-10-19。**  
理论：global AdS₃ minimal Einstein–real-scalar；原 Brown–Henneaux 与快速衰减 scalar 边界条件；原量子化处方；\(\Delta>1\)；没有独立 free gravitational excitations 的 scalar 分支。  
研究对象：每个固定有限粒子数和自由能级上的 \(O(G)\) 系数。原材料及以前的报告、程序未修改。

## 研究结论

本轮找到了支配完整谱的几种可精确建立的结构，但没有建立一个给出所有有限 \((N,P,Q)\) 正谱根的统一可积系统。

最实质的进展是：

1. **发现了适用于任意质量、任意左激发的非手征精确态，以及一个完整可分类的最低能级结构。** 有限 pair 支撑使二体动力学在这些态上等于左右 Casimir 的一次式；临界质量处的全部最低态重数由 simplex 的三次、四次根幂逆系统给出。这个结论不需要对角化完整谱块。
2. **完整两手征理论有一个精确的 Dirichlet/Jacobi 角变量实现。** 手征 Einstein 核可进一步写成真正的可逆二体碰撞生成元；由此与一个全手征算子比较，得到每个 \(N\) 的完整激发塔上最高能量修正、精确谱隙及其全部重数。
3. **对所有固定 \(N\ge4,Q,\Delta\)，完整非饱和 primary 谱具有有限原子型高左激发极限。** 不是只构造一个新矩阵：给出了全部正谱的极限分布、显式重数权重、\(W_2=O(P^{-1/2})\) 收敛率和偏离能级的计数界。
4. **四粒子可进一步确定全部孤立谱分支的极限与重数，并构造收敛的 Fredholm spectral determinant。** 对任意固定整数 \(\Delta\ge2\) 和有限 \(Q\)，这个无限乘积化为有限个多项式根与 Gamma 函数。\(\Delta=2,Q=0\) 已实际化成显式四次多项式的 Gamma 乘积；\(Q=1\) 的非手征 Gamma 构造也已完成。
5. **每个 stable-\(N\) 谱块都具有收敛的 \(N^{-1/2}\) 解析展开。** 这是包含所有激发指标、所有允许质量的定理。实际 Einstein 核在两个物理质量处产生极限 Jordan 块和精确 \(\sqrt N\) 分裂，否定了“总可以只用整数次 \(1/N\)”的加强猜想。
6. **若干自然简化路线已有精确定义的障碍。** 完整非手征核在自然 Dirichlet 正锥中不保持正性；以 Einstein pair residues 构造标准 Kohno/Gaudin 平坦连接，即使允许奇通道扩充和总 Casimir 平移，仍然失败；固定 \(Q\) 的小重叠机制也不能原样扩张到 \(P=Q\to\infty\)。

这些结果解释了为什么一部分复杂性能够消去，也指出了已知方法在何处真正失效。它们没有把“没有找到可积性”改称不可积性证明，也没有把仍需求根的有限矩阵重新命名为闭式解。

本报告正文给出物理识别、主要证明和结果之间的关系。后附本轮完整数学证明笔记、独立审查与精确计算说明；程序、数据和旧后端的只读副本包含在新的复现包中。


## 证明附录索引

- 附录 A：Dirichlet 实现、精确谱隙与全正谱渐近的完整证明。
- 附录 B：低 pair 通道、根幂理想与完整 Bose 重数分类。
- 附录 C：任意质量精确态、临界增强与有限 primary projector。
- 附录 D：四体 complete cluster limit 与 Fredholm/Gamma determinant。
- 附录 E：全粒子数 tree/F-move recoupling 与复杂度界。
- 附录 F：Stable-N pencil 的完整解析结构与谱曲线。
- 附录 G：物理闭合、原量子处方与反例模型审查。
- 附录 H：低通道定理的独立物理内积审查。
- 附录 I：根幂 kernel、全表示与有限 N 端点的独立证明审查。
- 附录 J：Kohno/Gaudin residues 的精确障碍。
- 附录 K：Stable-N Hermitian 解析定理的独立审查。
- 附录 L：原 pair ordering 与全激发谱隙的独立审查。
- 附录 M：固定右度全正谱原子极限的独立审查。
- 附录 N：Dirichlet 实现与非手征正性反例的独立审查。

---

## 1. 研究起点与审查后的物理问题

### 1.1 本轮实际阅读和核查的材料

已完整阅读上一轮的 ADS3_Fock_space_research.md、ADS3_Fock_quickstart.md 和 ADS3_Fock_verification_summary.json，并展开 ADS3_Fock_research_package.zip 审阅其证明、程序与数据。归档共有 109 个条目，其中清单列出的 108 个文件逐一通过 SHA-256 核查。本地对应材料的字节比较也没有不一致。

重新查看原仓库 Einstein scalar spectrum 目录及 mother note 的最终证明，尤其 §§71、76 与相关约束、Ward identity、量子二次项和两体核。仓库本轮查询到的 HEAD 仍为：

    ff06682448838bcbb02b135bd61bc661b394cbba

主要来源：

- [原研究仓库](https://github.com/GaoZ1en/obsidian_note)
- [固定提交下的 Einstein scalar spectrum 目录](https://github.com/GaoZ1en/obsidian_note/tree/ff06682448838bcbb02b135bd61bc661b394cbba/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum)

较早的 incomplete 标记对应历史证明路线，不覆盖后来的完成章节。本轮并未把完成声明当成证明：重新审查了其关键逻辑前提，另外重算了一项此前未使用的原始非手征四腿 vertex。旧程序积累的检查结果没有计入本轮新计算数量。

### 1.2 能量、态空间与量子处方

取 AdS 半径为一，\(d=\Delta\)。在 \(N\) 粒子 primary 块上，

\[
E=Nd+P+Q+Gg+o(G),\qquad
g\in\sigma(W_N).
\]

其左右 global descendants 增加自由能量，但继承同一个 \(g\)。\(P,Q\) 是 primary 激发度；同名完整 free level 还包括所有较低 primary 的 descendants，二者的重数必须区分。

原处方包括固定边界时钟、中心正则性、proper gauge 的正确商去、保留 Brown–Henneaux 非全局物理荷、配对约束行列式与 Darboux–Liouville 测度、midpoint Weyl 量子化及共同 Abel 正则化。真空和一体项按原定义处理，最后用物理 scalar gap 固定质量，使一粒子 \(O(G)\) 修正为零。这里不添加新的有限 quartic counterterm。

\(h=0\) 不是把某个混合矩阵的引力行列人为删除。它指在原理论的正规形与物理态识别下，没有独立 free gravitational excitation 的分支；matter-sourced response、constraints 及 virtual boundary gravitons 已经进入相互作用核。

### 1.3 为什么这一分支在本阶可以独立求谱

令 \(\kappa^2=16\pi G\)。在完整自由简并空间中，原三次项满足 \(V_1=[H_0,S]\)，正规形四次算符由

\[
\mathcal R\!\left(V_2+\frac12[S,V_1]\right)
\]

构造。这里的 resonant projection 先作用于完整空间。非全局 Brown–Henneaux 荷的 leading-linear Ward identity 消去四腿 resonant 符号中的独立引力振子。它比 global AdS covariance 更强。

剩余可能的 scalar \(1\leftrightarrow3\) 项，是

\[
\mathcal H_1\longrightarrow\operatorname{Sym}^3\mathcal H_1
\]

的 global intertwiner。一粒子最低态能量为 \(d\)，目标最低能量为 \(3d\)，故最低态被映到零；两个 raising operators 又生成整个源不可约模，故 intertwiner 恒为零。一个 normally ordered 四腿 \(b^{\dagger3}b\) 算符在一粒子态上的作用已经检测全部系数，所以添加旁观粒子不会恢复它。整数或有理数 \(d\) 不构成例外。

这一 tree 四腿结论没有代替量子二次项的检查。原材料单独处理了正则化 trace、ordering 与共同 mass subtraction；本轮保留这些物理输入。最终只有 number-preserving connected quartic：

\[
\boxed{W_N=\sum_{i<j}w_{ij},\qquad W_0=W_1=0.}
\]

没有同阶独立三体核。这个陈述使用了本阶的四腿次数界，不能无证明外推到 \(O(G^2)\)。

**独立反例审查。** 在 \(d=2\)，两 scalar ground module 与左右 \(m=2\) boundary-graviton pair module 都是 \(D_2^+\otimes D_2^+\)。它们之间存在全局协变的 resonant quartic intertwiner；因此“global covariance 自动保证 \(h=0\) 闭合”是错误命题。该反例违反原非全局 leading-linear Ward identity，所以不推翻原 Einstein 结论，反而准确识别了一个不可省略的输入。完整构造见物理审查附录。

### 1.4 后文使用的完整二体动力学输入

两粒子不可约模以 \((k,l)\) 标记，\(k,l\ge0\) 且 \(k+l\) 为偶。令 \(n=\min(k,l)\)、\(s=|k-l|\)、\(H=d+n\)、\(C=H(H-1)\)、\(\mu=d(d-2)\)、\(u_n=4\mu-8C\)。原核为

\[
\gamma_{kl}=g_{n,s},
\]

\[
\begin{aligned}
g_{n,0}&=u_n\frac{2H-2}{2H-1}
-\frac{2(C+\mu)^2}{(2H-3)(2H-1)(2H+1)},\\
g_{n,2}&=u_n+
\frac{(n+1)(n+2)(2d+n-1)(2d+n)}{(2H-1)(2H+1)(2H+3)},\\
g_{n,s\ge4}&=u_n.
\end{aligned}
\tag{1.1}
\]

\(n=0,d=3/2\) 的表面分母零须先作代数约消，值有限。Bose parity、两个 global Casimir 的无重数二体分解以及 (1.1)，唯一确定整个二体 operator；原始 constraint 与 virtual graviton 计算已给出这些动力学数值。后文的新谱定理从这里出发，而不是仅依靠 covariance 猜测 (1.1)。

---

## 2. 新的全指标实现：Dirichlet 角变量与非多项式 Casimir 核

对每个手征，

\[
\|z^p\|^2=\frac{p!}{(d)_p},\qquad
U_dz^p=\frac{p!}{(d)_p}L_p^{d-1}(x)
\]

给出到 Gamma 测度 \(x^{d-1}e^{-x}dx/\Gamma(d)\) 的酉映射。张量化后令 \(S=\sum x_i,\xi_i=x_i/S\)，测度分成径向 Gamma 和角向 \(\operatorname{Dirichlet}(d,\ldots,d)\)。Primary 是固定次数的角向 Jacobi 多项式；global descendants 是径向 Laguerre 塔。左右各用一套变量，Bose 对称仍是同时置换两个坐标。

最关键的算子恒等式是

\[
UC_{ij}U^{-1}=d(d-1)-\mathscr J_{ij},
\qquad
\mathscr J_{ij}=x_ix_j(\partial_i-\partial_j)^2
+d(x_j-x_i)(\partial_i-\partial_j).
\]

固定 pair sum，令 \(u=x_i/(x_i+x_j)\)，即

\[
\mathscr J_{ij}=u(1-u)\partial_u^2+d(1-2u)\partial_u.
\]

因此 pair label \(k\) 是条件 Jacobi 角向次数；对应 Casimir 为 \((d+k)(d+k-1)\)。这个映射对全部 \(N,P,Q\) 成立，并非仅为低能块寻找坐标。

令 \(\mu=d(d-2)\)，把两体谱中 spin 0、2 相对于其 plateau 的正修正记为 \(R_{ij}\)。整个物理算符可以写成

\[
\boxed{
W_N=2N\mu-4(C_{\rm tot}^L+C_{\rm tot}^R)
+4\sum_{i<j}|C_{ij}^L-C_{ij}^R|
+\sum_{i<j}R_{ij}.}
\tag{2.1}
\]

这里绝对值是同一 pair 上两个相互对易 Casimir 的谱函数。这个式子把一个真正的复杂性来源分离出来：非手征引力核包含 \(|C_L-C_R|\)，它不是普通的有限阶角向微分算符。手征 plateau 和低通道 pseudopotential 是此全指标结构的特例。

原来的 Jastrow/logarithmic-kernel 结构因而有自然的角向碰撞含义。不过它描述的是所有正局域项同时湮灭的空间；在正谱上，不同 pair 的角向投影不对易，这一几何识别不会自动对角化 Hamiltonian。

### 2.1 手征碰撞过程是精确映射

在 \(Q=0\) 的物理 Bose 空间，

\[
w=-4d^2I+a_0P_0+a_2P_2,\quad
a_0=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},\quad
a_2=\frac{4d}{(2d+1)(2d+3)}.
\]

以正的 ground descendant 作 Doob similarity，\(P_0\) 成为 beta-binomial average，

\[
\pi_T(a)=\binom Ta\frac{(d)_a(d)_{T-a}}{(2d)_T},
\]

而 \(P_2\) 是其二次 Hahn 多项式的投影。于是

\[
w-g_{00}I=a_0(P_0-I)+a_2P_2
\]

具有零行和、详细平衡和严格正的非对角 rates。正性不是猜测：二次 Hahn 核的最小乘积界给出统一余量

\[
a_0-\frac{2d+3}{2}a_2=\frac{2d(d+1)}{2d-1}>0.
\]

张量化碰撞过程的平衡分布为 Dirichlet-multinomial。它与已有 Kac/binary-collision 文献有实际算子关系；所用 clique-to-triangle 谱隙机制见 [Caputo, arXiv:0807.3415](https://arxiv.org/abs/0807.3415)。这里新证明的是本 Einstein 权重的实现与比较，不把已有概率论机制声称为新发明。

### 2.2 完整非手征理论有一个短小的 positivity 反例

这个随机过程解释不能原样推广。在两个角变量 \(X=2u-1,Y=2v-1\) 上，取

\[
F(X,Y)=X^2Y^2\ge0,\qquad F(0,0)=0.
\]

令 \(L=w-g_{00}I\)，则对所有 \(d>1\)，

\[
(LF)(0,0)=
-\frac{12(10d^3+29d^2+8d-14)}
{(2d-1)(2d+1)(2d+3)(2d+5)}<0.
\tag{2.2}
\]

这个函数在两边分别为偶，已经满足真实 Bose 条件。有限 Jacobi 展开使 \(e^{tL}F\) 在小正时间内于原点及其一个正测度邻域严格为负。故完整非手征核在自然 product-Dirichlet 正锥中不保持正性。

这比“某个矩阵出现负元素”更强，但范围仍清楚：它不排除与该正锥无关的非局域酉变换，更不是一般不可积性证明。

---

## 3. 新的任意粒子数精确能级：完整激发塔的最高分支与谱隙

设

\[
c=a_0-a_2=\frac{2d(2d^2+7d+2)}{(2d-1)(2d+3)}.
\]

**定理。** 对每个 \(N\ge2\)，在所有左右激发构成的固定 \(N\) Fock 塔上，

\[
g_{\mathrm{top}}=\binom N2g_{00},
\qquad
\boxed{\mathfrak g_N
=c\,\frac{Nd+1}{2d+1}.}
\tag{3.1}
\]

最高分支只含 \((0,0)\) primary 及其双 global descendants。紧接其下、与之相隔 \(\mathfrak g_N\) 的恰为 \((2,0)\)、\((0,2)\) 两个 primary 模，每个一次。故完整 free level \((P,Q)\) 中最高值重数为一，第一间隔处重数为

\[
\mathbf1_{P\ge2}+\mathbf1_{Q\ge2}.
\]

这是非饱和能级的全指标精确族，与已有低端 Jastrow 饱和态不同。

证明分三步。首先独立代数审查给出严格 pair band ordering

\[
g_{n0}>g_{n2}>u_n>g_{n+1,0},
\]

从而

\[
g_{00}-\gamma_{kl}\ge
c(\mathbf1_{k>0}+\mathbf1_{l>0}),
\]

等号只发生于 \((0,0),(2,0),(0,2)\)。

其次，对一边的 \(K_N=\sum_{i<j}(I-P_0^{ij})\)，三体 pair-zero Gram 的 off-diagonal 是

\[
r_J=(-1)^J\frac{(d)_J}{(2d)_J}.
\]

它给出所有 triple primary 度上的精确最低正值 \(\lambda_3=(3d+1)/(2d+1)\)。利用 disjoint pair projectors 的对易正性，

\[
K_N^2\ge[(N-2)\lambda_3-(N-3)]K_N
=\frac{Nd+1}{2d+1}K_N.
\]

最后

\[
\binom N2g_{00}-W_N\ge c(K_N^L+K_N^R).
\]

手征二次 primary

\[
\sum_i z_i^2-\frac1N\left(\sum_i z_i\right)^2
\]

达到界。Pair 等号条件和总 Casimir 恒等式排除其他 primary，证明全部重数。若左右 primary 度都正，右边至少是 \(2c(Nd+1)/(2d+1)\)。

这里的“最高”是 \(g\) 的最高值，不是说自由总能量有上界；也不要求每个 \(g\) 为负。大粒子数表达式始终只解释固定阶的微扰系数。

---

## 4. 所有 \(N\ge4\) 的完整正谱具有有限原子型极限

以下固定有限 \(N\ge4,Q\ge0,d>1\)，让 primary 左激发 \(P\to\infty\)。保留上一轮

\[
W_N=b_N(Q)I+A_N,\quad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1),\quad A_N\ge0.
\]

令

\[
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,\ k+l\text{ 偶}\},
\quad
a_{kl}=\gamma_{kl}-[4d(d-2)-8(d+l)(d+l-1)]>0.
\]

**全正谱定理。** 以 \(R_{N;P,Q}\) 记 \(A_N\) 的正 rank，有

\[
\frac1{R_{N;P,Q}}\sum_{\lambda_j>0}\delta_{\lambda_j}
\xrightarrow[W_2]{P\to\infty}
\sum_{(k,l)\in\mathcal B_Q}\omega_{kl}\delta_{a_{kl}},
\]

\[
\boxed{\omega_{kl}=
\frac{\binom{Q-l+N-3}{N-3}}
{\displaystyle\sum_{(r,v)\in\mathcal B_Q}\binom{Q-v+N-3}{N-3}}},
\qquad W_2=O(P^{-1/2}).
\tag{4.1}
\]

所有原子位置由原 Einstein pair dynamics 决定；其重数比例只由 Bose spectator 计数决定，与 \(d\) 无关。相同位置要合并权重。

若分母记为 \(Z_{N,Q}\)，则

\[
R_{N;P,Q}=
\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\]

距原子集合至少 \(\epsilon\) 的正能级数为 \(O(P^{N-4}/\epsilon^2)\)。因此绝大多数非饱和能级不需要解一个不断增长的多体矩阵来识别；例外能级少一个 \(P\) 的幂次。定理没有把这些例外逐个解出。

### 4.1 关键证明：重叠的复杂性少一个幂次

在物理正交 pair–spectator frame 上，精确 Bose Gram 是

\[
T=I+K,\quad K=2(N-2)R_1+\binom{N-2}{2}R_0,
\qquad B=\sqrt D(I+K)\sqrt D.
\]

\(D\) 的 entries 是 \(a_{kl}\)，\(B\) 的非零谱等于全部正物理谱。对任意相关 permutation \(U\)，

\[
\|F^*UF\|_{\rm HS}^2
\le\operatorname{Tr}(P_{12}^{\rm bad}P_{U(12)}^{\rm bad}).
\]

Disjoint-pair overlap 只剩 \(N-2\) 个有效表示的 coupling，阶数为 \(O(P^{N-4})\)。Shared-pair overlap 分解为 triple degree \(t\)；有界 pair labels 的 Racah 元素为 \(O(t^{-d})\)，平方可求和。因此

\[
\|K\|_{\rm HS}^2,\ \|B-D\|_{\rm HS}^2=O(P^{N-4}).
\tag{4.2}
\]

每个 pair label 的精确辅助重数是完整 spectator level dimension

\[
H_{N-2}(P-k,Q-l),
\]

其 Molien 主项为 \(P^{N-3}\)。每个辅助零根对应 \(K\) 的 \(-1\) eigenvalue，所以只有 \(O(P^{N-4})\) 个。Hoffman–Wielandt 加上这两项计数就证明 (4.1)。

这个论证还独立验证了正 rank 的主项，没有循环调用完整 logarithmic-kernel 分类来证明自身。

### 4.2 Spectral determinant 与完整 free level

对 \(s>0\)，

\[
\frac1R\log\det(sI+A_N|_{\operatorname{im}A_N})
\longrightarrow\sum_{kl}\omega_{kl}\log(s+a_{kl}).
\tag{4.3}
\]

它是所有正根的生成性信息，不需要逐根对角化。

若统计整个 free level 的全部 states，dominant 部分反而是各 primary 的饱和 descendants，极限变成

\[
\sum_{q=0}^{Q}
\frac{\binom{q+N-2}{N-2}}{\binom{Q+N-1}{N-1}}
\delta_{b_N(q)}.
\]

报告与代码严格区分这两种计数，不把 primary multiplicity 当作完整能级重数。

### 4.3 平衡高激发的精确障碍

当 \(P=Q=L\to\infty\)，

\[
d_{\rm phys}\sim\frac{L^{2N-4}}{N!((N-2)!)^2},\qquad
d_{\rm aux}\sim\frac{L^{2N-4}}{4((N-2)!)^3}.
\]

平衡块没有 baseline kernel：若每 pair 都满足 \(k_L\ge k_R+4\)，其 Casimir 差的和严格正，与左右 total Casimir 相等矛盾。因此

\[
\boxed{\liminf\frac{\|K\|_{\rm HS}^2}{d_{\rm aux}}
\ge1-\frac{2}{\binom N2}>0.}
\tag{4.4}
\]

对四粒子下界为 \(2/3\)。这证明大量 Gram 冗余方向在平衡极限中不可当作小扰动。它没有排除先精确商去依赖后使用另一参考算符，却排除了把 (4.2) 原样延伸到平衡扇区的路线。

---

## 5. Higher Racah：已完成的映射与实际复杂度改善

四粒子双 pair coupling \((12)(34)\to(13)(24)\) 的 overlap 已改写为三个标准 \(6j\) 的单次收缩：

\[
R_1^P(k,a;r,c)=
\sum_{t=\max(k,r)}^P
F^{(d+k,d/2,d/2;P-k)}_{t-k,a}
(-1)^{t+k+r}F^{(d/2,d/2,d/2;t)}_{k,r}
F^{(d+r,d/2,d/2;P-r)}_{t-r,c}.
\tag{5.1}
\]

完整两手征 overlap 是两个这样的乘积，附以已检查的同时 Bose phase。Disjoint permutation 变成带 \((-1)^{P+Q}\) 的 crossed Kronecker delta。

这里对应的特殊函数是 **Griffiths 型三 Racah 卷积**，不是 Tratnik 的两因子形式。与 [Crampé 等，Griffiths polynomials of Racah type](https://arxiv.org/html/2403.12148v2) 的精确参数映射为

\[
c_0=c_2=c_3=c_4=d-1,\qquad c_1=1-4d-2P,
\qquad(i,j,x,y)=(k,a,r,c),
\]

另乘已给出的正权重比平方根和 phase \((-1)^{P+k+r}\)。包括非整数 \(d\) 的全矩阵 entry 检查已通过。

新程序实际消除了展开高次 \(N\)-变量波函数、逐 monomial 做内积这一步。它没有消除最终一般多项式求根。一个直接可复现的精确比较是 \(N=4,d=2,P=10,Q=2\)：同一 64 维辅助矩阵，Racah 路线约 0.25 秒，原 sparse-polynomial 路线约 5.07 秒；二者矩阵哈希完全一致。启用同一内存追踪方式时，Python 分配峰值约为 2.52 MB 与 26.0 MB。计时是此运行环境的观测，不能当成无条件性能保证。

新计算还包括：

- \(N=4,d=2,(P,Q)=(6,2)\) 的完整精确正谱特征多项式；
- \(N=4,d=2,(32,0)\) 的完整精确特征多项式；
- \((256,0)\) 的 250 个正根，以及 \((512,2)\) 的 3263 个正根的正交 Racah 浮点计算。后一块完整 primary dimension 为 33153。

一般 binary coupling tree 的 elementary F-move 给出 higher-rank recoupling 的递推组织。令 \(d_N(P)=\binom{P+N-2}{N-2}\)，一个长度为 \(L\le2(N-2)+N(N-1)\) 的 tree/permutation 变换作用于一个 labelled 向量，cost 为

\[
O\!\left(L(P+Q+2)d_N(P)d_N(Q)\right).
\]

固定 \(N,Q\) 时逐辅助列构造给出 \(O_{N,Q}(LP^{2N-4})\) 的算术界；在明确的 dense-monomial comparison model 中，原直接重叠评估为 \(O(P^{3N-7})\)。这不是对一切可能 sparse 程序的下界。四体专用构造进一步达到固定 \(Q\) 的 \(O_Q(P^3)\) 时间、\(O_Q(P^2)\) 内存。**实际完成并验证的是四体专用实现；全 \(N\) tree/F-move 与 Bose fractional-parentage 的递推和复杂度证明已给出，尚未整合成同等优化的全 \(N\) 后端。**

这一组织确实避免回到原始 monomial 展开，但不能据此断言所有高 rank blocks 都有固定宽度：平衡左右激发的 admissible internal labels 和 Bose quotient 仍然增长。本轮的高阶复杂度说明与实际实现边界在 recoupling 附录单列。

Racah 差分方程对角化的是中间 Casimir；Einstein Hamiltonian 是几个不兼容 Casimir 的非多项式谱函数之和。因此识别到 Racah algebra 并不等于已经找到对这个 Hamiltonian 的 commuting charges。

---

## 6. 四粒子完整谱极限与 Fredholm determinant

固定 \(Q,d\)，并固定 parity \(\epsilon=(-1)^{P+Q}\)。在三体 bad-channel 辅助空间上令

\[
A^{(3),R}_{t,u}=D_{t,u}^{1/2}(I+2R^{(3)}_{t,u})D_{t,u}^{1/2},
\qquad 0\le u\le Q.
\]

它的正谱连同重数等于物理算符 \(W_3(t,u)-b_3(u)I\) 的正谱，但两个空间的零根数通常不同。下面 determinant 使用这个**辅助矩阵及其全部辅助零根**，不能换成完整物理 primary determinant。上标 \(R\) 提醒必须按固定右度减去 baseline：当 \(t<u\) 时，不能用交换手征后的 \(b_3(t)\) 代替。

### 6.1 全部孤立分支的极限

四粒子正 residual 谱的所有极限值组成

\[
\begin{aligned}
\mathfrak S_{Q,\epsilon}={}&
\{a_\alpha:\alpha\in\mathcal B_Q\}\\
&{}\cup\bigcup_{u=0}^Q\bigcup_{t=0}^\infty
\sigma_+(A^{(3),R}_{t,u})\\
&{}\cup
\{a_\alpha+a_\beta:\ l_\alpha+l_\beta\le Q,\
\alpha\ne\beta\ \text{或}\ \epsilon=+1\}.
\end{aligned}
\tag{6.1}
\]

两 pair 的最后一项按 unordered pair 计数。相同 cluster 只允许总偶 parity；不同 cluster 给一个正根和一个辅助零根。

远离有限原子集合的每个孤立值，其重数恰为右边所有 triple 和 double-pair contributions 的重数之和。没有其他谱污染。证明使用显式 polar isometry 把有限 cluster 部分嵌入不断变化的四体空间，得到 operator-norm approximation；不是从弱收敛直接推断谱收敛。

另一个不能省略的步骤是辅助零根计数。一个精确 Molien 恒等式证明，当 \(P>15+3Q\) 时，四体全部 auxiliary nullity 已被极限 triple 零根和 pair-pair 零根耗尽。故没有额外的正能级悄悄趋向零。这一步使 (6.1) 成为完整极限，而非只构造若干 quasimodes。

这样的高自旋 cluster 思路已有直接相关先例：[Derkachov–Manashov, hep-th/9604173](https://arxiv.org/abs/hep-th/9604173)。本轮新增的是本 Einstein residual 的完整四体固定-\(Q\) 范数分解、全部重数与零根排除，以及下面的 determinant；没有把整个引力理论等同于该文的 \(\phi^4\) Hamiltonian。

### 6.2 保留全部离散 cluster 信息的 determinant

对 \(s>0\)，以 \(n_\alpha(P,Q)\) 记该 channel 的辅助重数，定义

\[
\mathcal F_{P,Q}(s)=
\frac{\det(sI+B_{P,Q})}
{\prod_{\alpha}(s+a_\alpha)^{n_\alpha(P,Q)}}.
\]

则

\[
\boxed{
\mathcal F_{P,Q}(s)\longrightarrow
\prod_{u=0}^Q\prod_{t=0}^{\infty}
\frac{\det(sI+A^{(3),R}_{t,u})}
{\prod_{\alpha\in\mathcal B_{t,u}}(s+a_\alpha)}
\ \mathcal F_{22,Q,\epsilon}(s).}
\tag{6.2}
\]

有限 pair 因子为：不同 \(\alpha,\beta\) 每对贡献

\[
\frac{s(s+a_\alpha+a_\beta)}{(s+a_\alpha)(s+a_\beta)};
\]

相同 pair 在允许的右度内贡献

\[
\frac{s+(1+\epsilon)a_\alpha}{s+a_\alpha}.
\]

Triple overlap 为 \(O(t^{-d})\)，所以 \(d>1\) 保证 trace class 和绝对收敛，截断 tail 为 \(O(T^{1-d})\)。已知的辅助零根给出 \(s=0\) 的精确零阶；除去相应 \(s\) 幂就是正谱版本。它不是仅保留经验分布的归一化 determinant，而是保留全部孤立 cluster 零点及重数的解析函数。

### 6.3 整数 \(d\)：无限乘积化为有限 Gamma 函数

当 \(d=2,3,\ldots\)，

\[
\frac{(d)_t}{(2d)_t}=\frac{(d)_d}{(t+d)_d}.
\]

固定 \(u\) 和 \(t\) parity 后，(6.2) 的每个 triple determinant ratio 是 \(t\) 的有理函数，次数由固定 \(d,Q\) 控制。如果写成

\[
f(t;s)=\frac{\prod_j(t-\alpha_j(s))}
{\prod_j(t-\beta_j(s))},
\]

则在 \(m,m+2,m+4,\ldots\) 上

\[
\boxed{\prod_{n=0}^{\infty}f(m+2n;s)=
\prod_j\frac{\Gamma((m-\beta_j(s))/2)}
{\Gamma((m-\alpha_j(s))/2)}.}
\tag{6.3}
\]

首尾次数与根之和相等，正是消除无穷 cutoff 幂的条件。有限低阶 prefix 和 pair 因子补齐结果。因此每个固定整数 \(d,Q\) 的整个极限 determinant 都可由有限个多项式和 Gamma 函数计算。这一结论不依赖多项式能否用根式求解。

\(d=2,Q=0\) 已实际完成：用 \(C=(t+2)(t+3)\) 后，两个 parity 的 numerator 都只是 \(C\) 的四次多项式。完整系数、根映射和 Gamma 参数写在数学附录与程序中。60 位 Gamma 计算另与 \(t\le4000\) 的直接乘积比较；在 \(s=1,5,20\) 的对数差分别约 \(1.29\times10^{-6},4.13\times10^{-7},1.32\times10^{-7}\)，这是未包含 tail 的误差，不被称为 60 位独立验证。

非手征 \(d=2,Q=1,s=20,\epsilon=+1\) 也实际算得

\[
\log\mathcal F_{\infty,1,+}(20)
=-0.0358546286698960811729531052143874\ldots.
\]

其 \(u=1\) parity tail 在 Casimir 变量上是十次多项式，并通过 24 个完整有理块检查；\(t\le2000\) 的直接乘积与其对数相差约 \(1.84\times10^{-6}\)。有限四体 \(P=513,Q=1\) 的值为 \(-0.0358071434566\ldots\)，其余差反映尚未达到 \(P=\infty\)。API 对整数质量、非负 \(Q\)、正 \(s\) 与 parity 作显式检查，拒绝把非整数质量截断成整数。

### 6.4 一个此前没有的精确最低正 residual 极限

对 \(N=4,d=2,Q=0\)，无论左右总 parity，

\[
\boxed{\lim_{P\to\infty}\lambda_{\min,+}(A_4)
=\frac{33220-4\sqrt{66856729}}{15015}
=0.03420674817217488\ldots.}
\tag{6.4}
\]

它来自 triple \((t,u)=(9,0)\)。已用有理 trace/determinant 不等式检查全部 \(t\le128\)，并以显式 Racah tail bound 覆盖所有 \(t\ge129\)，证明没有漏掉更低分支；结合完整 cluster 定理得到极限。有限 \(P=256\) 的浮点值约为 \(0.034197413\)。Physical correction 仍需加 \(b_4(0)=-96\)。

---

## 7. Stable-\(N\) pencil 的全指标解析结构

上一轮的

\[
W_N=\binom N2g_{00}I+NA+B
\]

在每个固定 \((P,Q)\) 的稳定 primary 空间成立。本轮进一步发现，其全局 leading operator 是 centered creation algebra 上的**二次 derivation**：

\[
Ac_\alpha=\sigma_\alpha c_\alpha+
\sum_{\beta+\gamma=\alpha}V_{\alpha;\beta\gamma}c_\beta c_\gamma,
\qquad |\beta|,|\gamma|\ge2.
\tag{7.1}
\]

\(B\) 是至多二阶微分算符。所有 \(A\) 的作用由单生成元的二分裂 vertices 和 Leibniz rule 给出。寻找 polynomial eigengenerators 的方程是有限分级 Poincaré–Dulac homological equation，其除数为

\[
\sigma_\alpha-\sum_{\beta\in\lambda}\sigma_\beta.
\]

无共振时可以一次构造所有乘积的 leading eigenbasis；非零 forcing 的共振则是确切 obstruction。这个 normal form 不等于同时对角化 \(A,B\)。

### 7.1 所有 fixed blocks 的收敛半整数定理

用 averaged occupation coordinates 时，物理 Gram 为

\[
\Gamma_s(N)=\frac{g_s}{(N)_{\downarrow r_s}},
\qquad
g_s=\prod_\alpha n_\alpha!\left[
\frac{p_\alpha!q_\alpha!}{(d)_{p_\alpha}(d)_{q_\alpha}}
\right]^{n_\alpha}.
\]

其中 \(r_s\) 是非零 mode 的粒子数。这个 Gram 在 \(N=\infty\) 的不同 directions 以不同阶数退化，故不能从有限 \(N\) 自伴性推出坐标 \(A\) 可对角化。

**定理。** 对每个有限 \((P,Q)\)、每个固定 \(d>1\)，存在在 \(t=0\) 附近解析且 Hermitian 的有限矩阵 \(\widehat H(t)\)，其在 \(t=N^{-1/2}>0\) 的谱为

\[
\frac{g-\binom N2g_{00}}N.
\]

它满足

\[
\widehat H(-t)=\Pi\widehat H(t)\Pi,\qquad
\Pi_{\lambda\lambda}=(-1)^{r_\lambda}.
\]

因而所有 eigenvalues 与正交 eigenvectors 都有收敛 Taylor 展开：

\[
\boxed{g_j(N)=\binom N2g_{00}
+N\sum_{m=0}^{\infty}\lambda_{jm}N^{-m/2}.}
\tag{7.2}
\]

无须假定 \(A\) semisimple；不会出现分母大于二的 Puiseux 指数。

证明的关键是把每个 occupation 的平方根 Gram 写成

\[
t^{r_s}\sqrt{g_s\prod_{j<r_s}(1-jt^2)^{-1}},
\]

并把 centered primary embedding 的第 \(\lambda\) 列乘 \(t^{-r_\lambda}\)。所得 primary frame 在 \(t=0\) 仍满 rank，analytic Cholesky 给出不退化的正交 frame。二体项改变 excitation count 至多一，使所有矩阵 entries 仅有非负整数 \(t\) 次数。最后适用标准 Rellich theorem；其精确陈述见 [Barbarino–Noferini, Theorem 1.1](https://arxiv.org/pdf/2211.15539)。新内容是为实际 Einstein pencil 证明该定理的全部假设。

简单 leading slope 的 parity 固定该支，故奇数项消失，得到普通 \(1/N\) 级数。退化 slope 可以交换 branches；必须逐阶做 Hermitian cluster reduction，不能仅看到 odd matrix entry 就断言存在半整数能量项。附录给出无 cluster 内除零的 Feshbach/Bloch 递推和精确程序。

### 7.2 真实 Einstein Jordan resonance 与完整 \((4,1)\) 谱曲线

稳定 \((4,1)\) primary 空间维数三，\(N\ge5\)。设

\[
D_4=(2d-1)(2d+1)(2d+3)(2d+5),\quad
s=-\frac{d^2(70d^2+89d-20)}{(2d-1)(2d+1)(2d+3)},
\]

\[
\delta=\frac{d^2(2d^3-37d^2-11d+100)}{2D_4},\quad
v=\frac{3d^2(d+1)(d+4)}{(2d-1)(2d+3)(2d+5)},\quad
k=\frac{d(d+3)(2d^2+25d+36)}{2(2d+1)(2d+3)(2d+5)}.
\]

完整 pencil 有一个固定 invariant plane。在其上恰为

\[
\begin{pmatrix}
(s+\delta)N+b_{11}&k\\
v(N+6/d)&sN+b_{22}
\end{pmatrix},
\]

\[
b_{11}=-\frac{3d(38d^3+169d^2+131d-108)}{D_4},
\quad
b_{22}=\frac{3d(4d^4+20d^3+11d^2-39d-4)}{D_4}.
\]

因此三条能级修正 \(g=\binom N2g_{00}+\lambda\) 的非平凡部分是

\[
\lambda_0=sN-\frac{12d(2d^2+7d+2)}{(2d-1)(2d+1)(2d+3)},
\]

\[
\boxed{
\lambda_\pm=(s+\delta/2)N+\frac{b_{11}+b_{22}}2
\pm\frac12\sqrt{[\delta N+b_{11}-b_{22}]^2+4kv(N+6/d)}.}
\tag{7.3}
\]

这给出每个 \(d>1\)、每个稳定 \(N\) 的完整该块能级及可重建 eigenstates。

三次方程

\[
2d^3-37d^2-11d+100=0
\]

有两个物理根，约为 \(1.56348089012038\)、\(18.6511542250857\)。在两处 \(\delta=0\)，坐标 \(A\) 出现真正的 Jordan type \((2,1)\)，而 (7.3) 精确变为

\[
\lambda_\pm=sN+\bar b\pm\sqrt{kv\,N+\kappa},
\qquad
\kappa=6kv/d+(b_{11}-b_{22})^2/4>0.
\tag{7.4}
\]

所有有限物理 \(N\) 仍自伴且可对角化。Jordan 只在退化坐标 metric 的极限出现，其物理后果是实的 \(\sqrt N\) 分裂。

谱曲线的有限 branchpoints 在复 \(N\) 平面；这两个质量处有一个 branchpoint 移至无穷远。近共振的 \(d-d_c=u/\sqrt N\) detuning 有精确 crossover

\[
\frac{\lambda_+-\lambda_-}{\sqrt N}
\longrightarrow\sqrt{[\delta'(d_c)u]^2+4k(d_c)v(d_c)}.
\]

这比一个有限次 large-\(N\) fit 更强，也说明 naive \(1/N\) 分母为什么在这些质量处发散。

### 7.3 直接回到原 Einstein Hamiltonian 的新检验

为检查上述新分裂 vertex，重新求解六个原约束 polarizations，计算

\[
(0,0)+(4,1)\longrightarrow(2,0)+(2,1),\qquad d=2.
\]

没有加载旧 pair-integral cache。约束部分和 virtual boundary-density 部分分别为

\[
\frac{223186\sqrt5}{121275},\qquad
-\frac{176986\sqrt5}{121275}.
\]

相加为 \(8\sqrt5/21\)，换成 averaged creator normalization 后是 \(8/7=v(2)\)。两大贡献的抵消是原动力学计算直接给出的；抽象 pair 谱只用于最后比较。

这是一项新的独立四腿动力学验证，不声称在两个三次无理质量上重新做了全套径向积分。全质量 Jordan 证明来自已经建立的全质量两体核与精确 Casimir projectors。


---

## 8. 新的低 Casimir 通道机制：任意质量、任意激发的精确态

这一节是本轮后期得到的进一步结构。它把上一轮少数一维块的 Casimir 读谱方法，推进到维数持续增长的多体空间，并给出不依赖整个谱矩阵的实际态。

### 8.1 一个对任意全局协变二体核成立的引理

设某个 Bose seed \(T\) 在每对粒子上的谱支撑只涉及一个有限集合 \(\mathcal S\)。若在这些通道上

\[
\gamma_{kl}=a+\beta\{c_k-c_0\}+\eta\{c_l-c_0\},
\qquad c_k=(d+k)(d+k-1),
\tag{8.1}
\]

则其非零 global-primary 正交投影 \(\Phi=\Pi_{P,Q}T\) 是精确 eigenstate，且

\[
\boxed{g=\binom N2a+
\beta P(Nd+P-1)+\eta Q(Nd+Q-1).}
\tag{8.2}
\]

证明很短，但有两个不可替代的步骤。第一，每个 pair Casimir 与两边的 global raising/lowering operators 对易，所以 primary 投影保持每一对的通道支撑。第二，在一个 \((P,Q)\) primary 上，

\[
\sum_{i<j}(C_{ij}^{L}-c_0)=P(Nd+P-1),\qquad
\sum_{i<j}(C_{ij}^{R}-c_0)=Q(Nd+Q-1).
\]

故所有与 (8.1) 的偏差都逐对湮灭 \(\Phi\)，其余项的和就是 (8.2)。这既不要求各 pair 投影对易，也不要求整个 Hamiltonian 是 Casimir 的一次式。

这个引理的适用性取决于三个实际可检查的事项：seed 的全部 pair 支撑、动力学在这些通道上的取值，以及投影后的非零性。它不是把已知能谱反向塞入 Hamiltonian。

### 8.2 任意 \(d>1\) 的非手征精确族

令 \(a=\gamma_{00},b=\gamma_{20},c=\gamma_{11}\)，取

\[
T_1=\operatorname{Sym}\!left(z_1w_1z_2\cdots z_P\right),
\qquad\Phi_1=\Pi_{P,1}T_1.
\]

未列出的粒子处于 ground mode。任意 pair 的左总次数不超过二，右总次数不超过一；真实 Bose 条件是 \(k+l\) 为偶。因此其全部 pair 支撑恰包含于

\[
\{(0,0),(2,0),(1,1)\}.
\]

任意三个二体值都允许唯一的 Casimir 一次插值：

\[
\beta=\frac{b-a}{2(2d+1)},\qquad
\eta=\frac{c-a}{2d}-\beta.
\]

所以，对每个 \(P\ge1,N\ge P+1,d>1\)，

\[
\boxed{
g^{(1)}_{N,P}=\binom N2a+\frac N2(c-a)
+\frac{b-a}{2(2d+1)}(P-1)(Nd+P)
}
\tag{8.3}
\]

是一个精确非手征多体能级。这个结论甚至对任意具有这三个二体值的全局协变 Bose pair kernel 都成立，高通道的全部取值不影响它。左右互换给出 \((1,P)\) 族。

粒子数限制有物理内容：当 \(N=P\)，seed 正比于

\[
\left(\prod_{i=1}^N z_i\right)\left(\sum_{i=1}^N w_i\right),
\]

右 primary 投影为零。对 \(N\ge P+1\)，与显式 primary \(\sum_i(z_i-\bar z)^P(w_i-\bar w)\) 的相应非零系数配对证明 \(\Phi_1\ne0\)。不能把 (8.3) 不加条件地声称为所有 \(N,P\) 中存在的能级。

### 8.3 一个无需谱矩阵或 Gram 逆的有限本征态公式

记 \(D_L=\sum_i\partial_{z_i}\)，\(U_L=\sum_i(z_i^2\partial_{z_i}+dz_i)\)。固定总左次数 \(P\) 时，正交 primary projector 为

\[
\boxed{
\Pi_P^L=\sum_{j=0}^{P}
\frac{(-1)^j U_L^jD_L^j}
{j!(Nd+2P-j-1)_j}.}
\tag{8.4}
\]

右边同理，\(\Pi_{P,1}=\Pi_P^L(I-U_RD_R/(Nd))\)。所有分母在此物理范围内严格正。升降代数直接证明 \(D\Pi=0\)，而每项 \(U^jD^j\) 自伴、\(\Pi\) 在 primary 上为恒等，故它就是物理正交投影。

程序以 Horner 形式计算 (8.4)，每个手征至多使用其激发次数次 lowering 和同样多的 raising。它输出实际 averaged-occupation 系数及其精确物理 norm。输出波函数本身可能含很多项，但不必建立完整 Hamiltonian、计算其特征多项式或对角化，也不必先求整个 primary Gram 的逆。

### 8.4 临界质量的增强：第四个通道落在同一 Casimir 平面

第二个 seed 为

\[
T_2=\operatorname{Sym}\!left(z_1^2w_1z_2\cdots z_{P-1}\right),
\qquad\Phi_2=\Pi_{P,1}T_2.
\]

它仅比 \(T_1\) 多出 \((3,1)\) 通道。记 \(e=\gamma_{31}\)，该态与 \(\Phi_1\) 具有同一能级的充分条件是

\[
\boxed{(2d+3)(a-b)=(2d+1)(c-e).}
\tag{8.5}
\]

对整个 stable \(Q=1\) module 上这两个既定 coefficient functionals 的 scalar quotient，这个条件也是必要的；完整 \((N,P,Q)=(4,3,1)\) block 已给出非零的必要性证书。这不是对所有可能偶然简并的分类。

代入原 Einstein 二体核，(8.5) 的残差为

\[
-\frac{24d(2d^2+d-4)}{(2d-1)(2d+5)}.
\]

因而唯一物理质量是

\[
\boxed{d_*=(\sqrt{33}-1)/4=1.1861406616\ldots.}
\tag{8.6}
\]

对每个 \(P\ge3,N\ge P+1\)，两个投影态线性独立，具有共同修正

\[
\begin{aligned}
g_*={}&\binom N2\frac{13d_*-20}{4}\\
&+N\frac{(51P-911)d_*+604-108P}{64}
+\frac{3P(P-1)(4-9d_*)}{32}.
\end{aligned}
\tag{8.7}
\]

而 \(\Phi_2\) 自身的非零范围更宽：每个 \(P\ge3,N\ge P-1\) 都存在。故 \(N=P-1,P\) 仍有至少一个上述精确态。一个显式 primary 的目标系数正比于 \(N^2-3N+P>0\)，给出了独立非零证明。

在 stable centered basis \(c_{p1}\prod_i c_{a_i0}\) 上，这两个态的 Gram-dual functionals 是

\[
\ell_1=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2=(-1)^P\binom p2\prod_i(1-a_i).
\]

两行在 \(c_{P1}\) 与 \(c_{11}c_{P-1,0}\) 上的行列式为非零的 \(\binom P2(2-P)\)（可有共同约定号），故其独立性不依赖逐块数值 rank。对两行本身，另外以八种允许的低度 occupation defects 和四个 lowering Ward rows 验证了对符号 \(N,P,d\) 的恒等式；该独立计算直接重建微分 Casimir projectors，没有调用旧 pair-action 程序。

### 8.5 这些态还给出新的精确最低能级

令 \(r_{kl}\) 为二体核减去 (8.1) 后的残差。原 Einstein 核给出

\[
r_{40}=\frac{2d(d+4)}{2d-1}>0,
\]

\[
r_{31}=-\frac{24d(2d^2+d-4)}{(2d-1)(2d+1)(2d+5)},
\]

\[
r_{51}=\frac{2d(4d^3+4d^2+53d+44)}
{(2d-1)(2d+1)(2d+3)}>0.
\]

更高 \(k\) 的原核进入 plateau，而 \(\beta<0\)，故残差继续严格增长。

由此得到：在 \(Q=1\) 的每个固定 primary block，若 \(1<d\le d_*\)，则

\[
\boxed{W_N\ge g^{(1)}_{N,P}I.}
\tag{8.8}
\]

在上述投影态存在的范围内，它们达到界，故是该块最低的能量修正。临界点的双重态有明确机制：正残差的零通道从 \(\{00,20,11\}\) 扩张为 \(\{00,20,11,31\}\)。对 \(d>d_*\)，两粒子 \((3,1)\) 的 \(r_{31}<0\) 已反证这一算符下界；但 \(\Phi_1\) 的精确本征态性质仍然成立。

Chiral seed \(\operatorname{Sym}(z_1\cdots z_P)\) 的 primary 投影也只涉及 \(00,20\)。对每个 \(d>1,N\ge P\ge2\)，其精确修正为

\[
\boxed{g^{(0)}_{N,P}=\binom N2a+
\frac{b-a}{2(2d+1)}P(Nd+P-1),}
\tag{8.9}
\]

且是该 chiral primary 块的最低值。它与高次数 Jastrow 饱和族是不同的实际态。这些 minimum 陈述按固定 primary 度比较，不把较低 primary 的 descendants 混入后继续使用同一个 \(g(P,Q)\)。

### 8.5.1 完整重数：根幂逆系统与两个有限梯级

本轮还完整解出了上述正残差的 common kernel，因而不再停留于“至少一个/两个态”。结果为

\[
\boxed{
\begin{aligned}
K^{\rm ch}_N(x)&=1+x^2\frac{1-x^{N-1}}{1-x},\\
K^{Q=1}_{N,\,1<d<d_*}(x)&=x\frac{1-x^{N-1}}{1-x},\\
K^{Q=1}_{N,\,d=d_*}(x)&=(x+x^3)\frac{1-x^{N-1}}{1-x},
\end{aligned}\qquad N\ge2.}
\tag{8.10}
\]

系数是每个左 primary 度达到相应 affine 下界的**完整重数**，不是任意相互作用能级的总维数。最后一个式子给出两条梯级：\(\Phi_1\) 在 \(1\le P\le N-1\)，\(\Phi_2\) 在 \(3\le P\le N+1\)。因此稳定范围 \(P\ge3,N\ge P+1\) 的临界双重态重数**恰为二**；对 \(N\ge3\)，边界 \(P=N,N+1\) 重数为一。该公式自动包含 \(N=2\) 只有 \(P=1,3\) 的情形。

完整证明有一个与 Casimir 谱不同的代数组织。使用正 Fischer 实现

\[
z^p\mapsto\frac{x^p}{(d)_p},\qquad
\|x^\alpha\|^2=\prod_i\alpha_i!(d)_{\alpha_i},
\]

则 global lowering 变成 \(\mathcal L_d=\sum_i(x_i\partial_i^2+d\partial_i)\)，raising 变成 \(S=\sum_i x_i\)，而 \(S^\dagger=\mathcal L_d\)。Pair Jacobi 分解给出精确等价

\[
\text{每对左通道 }k\le r
\quad\Longleftrightarrow\quad
(\partial_i-\partial_j)^{r+1}F=0\quad\text{对所有 }i<j.
\tag{8.11}
\]

这些共同核同时被 \(S\) 与 \(\mathcal L_d\) 保持，故 primary 部分与除去 \(S\) 的商具有相同的分级 \(S_N\) 表示。问题化为根幂理想

\[
I_{r+1,N}=\langle(t_i-t_j)^{r+1}:i<j\rangle
\]

的逆系统。三次、四次幂的完整 Hilbert 多项式分别是

\[
\boxed{H_3(x)=(1+x)^N-x,\qquad
H_4(x)=(1+(N-1)x^2)(1+x)^{N-1}.}
\tag{8.12}
\]

这里是整个 labelled 左表示的维数。Bose 重数还需选取恰当的 \(S_N\) 成分；不能直接把 (8.12) 当物理谱重数。

具体地，以 \(M_P\) 记 \(P\)-子集的 permutation module，以 \(R_{P-1}\) 记带一个标记元素的 \((P-1)\)-子集模。三次逆系统在 \(P\ne1\) 是 \(M_P\)，\(P=1\) 是 standard representation；四次逆系统满足

\[
[\mathscr D_{3,N,P}]=[M_P]+[R_{P-1}]-[M_{P-1}].
\tag{8.13}
\]

右 \(Q=1\) primary 恰是 standard representation。由 subset/marked-subset stabilizer 的固定向量计数，立即得到 (8.10)。附录给出全部 \(S_N\) 表示及对任意 \(Q\) 的低-left-channel 交空间生成函数；那些更一般交空间未被自动当作物理本征空间。

为避免把已知的一般定理用到错误范围，(8.12) 是直接证明的。取 \(u_i=t_i-t_N\)。三次情形满足 \(u_i^3=0\)、\(u_i^2u_j=u_iu_j^2\)，故每个正常式至多有一个平方。四次情形满足

\[
u_i^4=0,\quad
2u_i^3u_j-3u_i^2u_j^2+2u_iu_j^3=0,
\quad u_i^3u_j^2=u_i^2u_j^3=0.
\]

所以正常式至多有一个平方或一个立方，给出维数上界。相反，\(S=0\) 上的 multiaffine 多项式，以及至多一个平方的多项式，分别提供三次和四次逆系统的下界；后者的 restriction kernel 恰为 \(S\) 乘 multiaffine 空间。上下界一致，证明没有漏掉高 \(N,P\) 的解。

这个结构与 uniform simplex matroid \(U_{N-1,N}\) 的 external zonotopal space 精确对应。相关定义与一般定理见 [Lenz, Theorem 3.2](https://arxiv.org/pdf/1011.1136)；四次有限根幂理想超出该文自动保证的有限生成元等同范围，因此这里的独立证明是必要步骤。

### 8.6 与已有理论的精确关系及推广边界

低 pair-channel 支撑、可解 Casimir 项与逐对湮灭的余项，构成了一个明确的局部湮灭算符机制。它与 partial dynamical symmetry 文献中的“Casimir Hamiltonian 加上湮灭指定态的相互作用”构造相关；见 [Leviatan, §2](https://arxiv.org/pdf/1004.5325)。本报告使用的是 (8.1)–(8.4) 的具体恒等式，没有仅凭术语给整个引力 Hamiltonian 指定某个额外对称群。

Chiral 族与旋转谐振子 Bose 气体的 universal elementary-symmetric yrast states 还有精确的表示收缩关系。令 \(x_i=\sqrt d\,z_i\)，则

\[
D_L/\sqrt d=\sum_i\partial_{x_i},\qquad
U_L/\sqrt d=\sum_i\left(x_i+\frac{x_i^2}{d}\partial_{x_i}\right).
\]

在固定次数下 \(d\to\infty\)，(8.4) 趋于中心坐标平移投影 \(F(x)\mapsto F(x-\bar x)\)，从而 chiral 态趋于 \(e_P(x_1-\bar x,\ldots,x_N-\bar x)\)。相关早期结果见 [Smith–Wilkin](https://arxiv.org/abs/cond-mat/0005230)、[Papenbrock–Bertsch, Eqs. (10)–(16)](https://arxiv.org/abs/cond-mat/0008286)。这是一条明确的数学联系；本轮的有限 \(d\)、双手征 \(Q=1\) 族及 Einstein 临界通道增强并不由这些谐振子结果直接给出。

最自然的下一种 seed 是把左、右单激发放到不同粒子上。其 pair 支撑多出 \(02\)，要求

\[
\gamma_{11}-\gamma_{00}=
\frac{2d}{2d+1}(\gamma_{20}-\gamma_{00}).
\]

实际 Einstein 两边之差为

\[
-\frac{12d^2(10d^2+9d-5)}{(2d-1)(2d+1)(2d+3)}<0
\quad(d>1).
\]

所以这条四点 Casimir 一次插值路线不能给出任意 \(P,Q\) 的直接推广。它不排除别的 seed、较高次代数关系或不是逐对湮灭的机制。

另一个具体障碍是：低通道交空间通常并不被原 Hamiltonian 保持。在 \(d=2,N=5,(P,Q)=(4,1)\)，其 \(k\le3\) 二维空间可以用 primary 列向量 \(v_1=(-10,80,99)^T\)、\(v_2=(95,290,-153)^T\) 张成，但

\[
\det[v_1,v_2,Wv_2]=10080000\ne0.
\]

所以不能在一般质量上逐层对角化这些 inverse systems 来得到完整谱。

连其最简单的高幂空间外推也会失败：在 \(S=0\) 上，\(F=(x_1\cdots x_N)^2\ne0\) 被所有第五次根方向导数湮灭，却有次数 \(2N\)。当 \(N\ge3\)，它不可能属于“external multiaffine space 乘至多二次多项式”，后者最高次数只有 \(N+2\)。因此三次、四次的完整答案并不自动延续到第五次。这些都是有明确数学对象和范围的障碍，不是一般不可积性结论。


---

## 9. 哪些路线确实失败了，哪些仍然开放

上一轮简单 Calogero/Dunkl 与 commuting-projector 候选的负结果继续按其原范围有效。本轮没有重复把它们当新发现；下面检查的是另一些更强或不同的具体构造。

### 9.1 标准 Kohno/Gaudin residues：允许自然修正后仍有障碍

设 pair residue \(\Omega_{ij}\) globally invariant，其偶通道等于 chiral Einstein pair 值，并允许任意奇通道 extension、共同 scalar shift 和 \(\beta C_{ij}\) 加法。标准平坦连接要求

\[
[\Omega_{12},\Omega_{13}+\Omega_{23}]=0.
\]

直接用微分 Casimir 和 Lagrange spectral projectors，而非旧 Racah 程序，得到：

- 除唯一 \(\beta_* =c/[2(2d+1)]\) 外，三粒子 degrees 2–4 已给非零必要残差；
- 在 \(\beta=\beta_*\) 时，degree 4 条件唯一固定两个奇值，degree 5 条件再固定第三个，但余下 commutator entry 为

\[
-\frac{6d^2(d+1)(d+4)^2(3d+8)}
{(2d-1)^2(2d+3)(2d+5)}\ne0.
\]

所有求解分母在 \(d>1\) 非零，故无隐藏的特殊质量例外。总 pair Casimir 加法只在 primary block 加一个已知 scalar，因此这项扩充确实涵盖一个保持 eigenstates 的自然 Gaudin 重组。

这排除的是指定 residues 的标准 infinitesimal-braid 平坦机制。其他 spectral-parameter Hamiltonians、非局域 charges、不同 Bethe 构造仍未被排除。相关一般背景见 [Millson–Toledano Laredo, math/0305062](https://arxiv.org/abs/math/0305062)。

### 9.2 已证明障碍与未建立结论的分界

| 路线或主张 | 本轮状态 | 精确范围 |
|---|---|---|
| 完整自然 Dirichlet realization 是 Markov | 已反证 | 所有 \(d>1\)，由 \(X^2Y^2\) 正性反例 |
| Einstein residues 经 odd extension/Casimir shift 后满足 Kohno flatness | 已反证 | 指定二体 residues 与标准平坦关系 |
| 固定 \(Q\) 的 \(I+K\) 小重叠近似可直接用于平衡极限 | 已反证 | 原 Gram frame；冗余占有限比例 |
| 实际 \(A\) 总 semisimple | 已反证 | 两个精确物理质量，完整 \((4,1)\) block |
| 所有 large-\(N\) branch 只需整数次 \(1/N\) | 已反证 | 有精确 \(\sqrt N\) 分裂 |
| 完整多体 Hamiltonian 不可积 | **未证明** | 已有负结果不足以推出 |
| 普适根式谱 | 上一轮已排除 | 实际 \(S_5,S_6\) Galois blocks；不排除特殊函数或 Bethe 描述 |
| 所有 \(N\ge5\) 的完整 cluster hierarchy | **未证明** | 已有全部正谱的 leading measure，少数离散 exceptions 未全解 |
| 平衡大 \(P,Q\) 的统一正谱分布/递推 | **未解决** | 本轮只证明一种现有路线的障碍 |

---

## 10. 独立审查、程序与仍待解决的核心问题

### 10.1 审查结论

本轮没有发现推翻原固定处方中 scalar Fock closure、完整 logarithmic-kernel classification、正 Gram 压缩或 stable-\(N\) affine theorem 的证据。

Logarithmic proof 的关键是完整 ideal-power flag，不能缩减成保持 Vandermonde 主理想。沿每个 collision hyperplane 的 linear prime 局域化时，自由 log frame 只有一个 normal factor；对称幂条件去掉各 possible denominator。多项式环的 UFD 性质排除额外的 codimension-two 极点。这里还必须用物理 Gram 把 normal symbol 条件对应到 pair projector；欧式系数内积不足够。

Gram 压缩必须保留同时 Bose projection、每个 channel 完整 spectator coupling 和所有辅助 dependencies。新全-\(N\) HS 证明与四体零根恒等式分别从不同角度再次检查这些接口。

Stable-\(N\) 定理需要唯一零激发 mode、number-preserving 且 bidegree-preserving 的二体作用；primary 限制还需 global covariance。旧 theorem 没有声称 \(A\) semisimple，本轮的 Jordan 反例因此修正的是一种更强猜想，不是推翻旧证明。

### 10.2 复现包提供的内容

新的复现包包含本轮全部证明笔记、精确程序、原始四腿新检查、输出 JSON、数值误差与计时说明，以及旧 Fock 后端和必要原始材料的只读副本。核心入口覆盖：

- 任意 \(N,Q,d\) 的极限原子、精确谱隙及有限 HS bound；
- 全有限四粒子 \(P,Q\) 的 \(6j/9j\) 精确与数值计算；
- 四体 cluster、auxiliary-zero 计数、Fredholm/Gamma determinant；
- 全 fixed blocks 的 stable-\(N\) Hermitian Taylor 与 cluster 递推；
- 无需谱矩阵的全质量 chiral/nonchiral 本征态、临界质量完整重数和根幂逆系统；
- 新质量共振、Gaudin、Markov 与非不变子空间的精确证书。

建议先使用附带 quickstart。默认验证在新的输出目录或临时目录中进行，不覆盖任何旧研究数据。精确有理/代数检查、浮点检验、有限扫描以及对所有指标的证明在 summary JSON 中分开列出。

### 10.3 证明、条件性结论与有限证据

| 类别 | 本轮最强结论 | 尚不能推出的内容 |
|---|---|---|
| 新的全指标定理 | 全 \(N\) 谱边缘与谱隙；低通道逆系统与全部 \(S_N\) 表示；所有固定块的收敛半整数展开；所有固定 \(N\ge4,Q\) 的正谱原子极限 | 全有限指标的每个正谱根 |
| 新的完整可解态族 | 全质量 chiral 与 \(Q=1\) 投影态；指定质量范围内的完整最低重数；critical 两个有限梯级；完整 \((4,1)\) 三分支 | 一般 \(Q=1\) 块的其他根 |
| 有自然充分条件的构造 | 有限支撑上 affine Casimir 插值；无 forcing 共振时的 polynomial eigengenerators；整数质量的有限 Gamma determinant | 任意二体核均满足 affine 条件；所有 leading slopes 都无共振 |
| 有限计算证据 | 初始 additive-slope/resonance 扫描；高 \(P\) 谱分布的数值收敛图；大型正交 eigensystem 残差 | 全指标无共振、误差未经界定的无限精度或完整可积性 |
| 已证明的障碍 | 标准 Kohno residues、自然 product-Dirichlet 正性、原 Gram 平衡小扰动、generic 低通道空间不变性、第五幂简单 zonotopal 外推 | 其他非局域积分、其他参考谱或其他高秩代数不存在 |

所有“新”均指相对于此前研究的推进。所用的一般 Rellich、Racah、power-ideal、binary-collision 与 partial-symmetry 构造在文献中有来源；本报告逐一给出本 Hamiltonian 的实际映射、适用假设或特化证明。\(N\ge5\) 的完整 cluster hierarchy 是值得继续研究的候选组织，目前未提升为定理。一般质量下全分级 additive slopes 是否具有更强的非共振性质，也仍未证明；本轮的收敛展开定理不依赖这个猜想。

### 10.4 对最终问题的回答

目前真正建立的深层结构，可以描述为：

\[
\boxed{
\begin{gathered}
\text{Dirichlet/Jacobi pair geometry}\\
\text{＋ 低通道 Casimir 插值与根幂逆系统}\\
\text{＋ 同时 Bose 投影的 Racah recoupling}\\
\text{＋ 固定手征高激发的紧 cluster/Fredholm 结构}\\
\text{＋ 稳定粒子数的分级 Hermitian 解析结构}.
\end{gathered}}
\]

这些结构共同支配完整理论的不同尺度。它们已给出以前没有的全粒子数精确谱边缘、任意激发的实际非手征本征态及最低重数、全部正谱的渐近分布、四体完整极限 determinant 和允许共振的全块解析展开。手征 Jastrow 现象是这个结构的一部分，但不足以支配非饱和谱的全部分裂。

仍没有一个把所有有限 \((N,P,Q)\) 的正谱根统一读出的方程。最重要的数学缺口有三个：平衡高激发时的无冗余谱几何；\(N\ge5\) 中重叠 cluster 的完整递归与全部离散 exceptions；以及能够同时控制这些 finite-channel Casimir 函数的 commuting/intertwining 代数。现有 Racah equations 并不自动闭合于它们，标准 Gaudin residues 的失败也不足以排除更一般构造。

因此，本轮的结论是**确实存在比无限多个矩阵更强的解析结构，并已实际用于求谱；完整有限指标正谱的统一解析解仍未建立**。

---

# 本轮完整数学证明与独立审查附录

以下附录是本轮研究的一部分。与正文重复的定义保留，以使每条证明在独立保存时仍可复核。附录中的文件路径按解压后的复现包根目录解释。


---

# 附录 A：Dirichlet 实现、精确谱隙与全正谱渐近的完整证明

独立原文件：`analytic_research/collisions/DIRICHLET_AND_BULK_THEOREMS.md`。本附录中的局部定理及公式编号按该原文件解释。

## Dirichlet collision geometry, the exact upper edge, and the positive spectral bulk

New research, 19 October 2026. The old source notes and programs are read-only inputs. Throughout, \(d=\Delta>1\), the AdS radius is one, and \(g\) denotes the coefficient of \(G\) in the energy. Statements about large \(N\) or large excitation degree are statements about this coefficient, not a uniform finite-\(G\) approximation.

### 1. The physical pair operator used here

The already audited physical reduction gives, on the scalar branch,

\[
E=N d+P+Q+Gg+o(G),\qquad W_N=\sum_{i<j}w_{ij}.
\]

The simultaneous Bose projection exchanges both chiral coordinates of a particle. A pair has left/right primary labels \(k,l\ge0\), with \(k+l\) even. Write

\[
n=\min(k,l),\quad s=|k-l|,\quad h=d+n,\quad C_n=h(h-1),\quad \mu=d(d-2),\quad u_n=4\mu-8C_n.
\]

The dynamical input is

\[
\begin{aligned}
g_{n0}&=u_n\frac{2h-2}{2h-1}
-\frac{2(C_n+\mu)^2}{(2h-3)(2h-1)(2h+1)},\\
g_{n2}&=u_n+\frac{(n+1)(n+2)(2d+n-1)(2d+n)}{(2h-1)(2h+1)(2h+3)},\\
g_{ns}&=u_n\quad(s\ge4),\qquad \gamma_{kl}=g_{n,s}.
\end{aligned}
\tag{1.1}
\]

At \(n=0\), cancel the removable factor before evaluating \(g_{00}\) at \(d=3/2\). In particular

\[
u_0=-4d^2,\quad
a_0=g_{00}-u_0=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},\quad
a_2=g_{02}-u_0=\frac{4d}{(2d+1)(2d+3)}.
\tag{1.2}
\]

This is not a spectrum reconstructed from symmetry alone. Equation (1.1) includes the original constraints and virtual boundary-graviton exchange. The source audit and its new raw four-leg check are in `../audit/`.

### 2. An exact unitary realization on two Dirichlet simplexes

The one-chirality positive discrete series has Bargmann monomial norm

\[
\|z^p\|^2=\frac{p!}{(d)_p},\qquad
L_-=\partial_z,\quad L_0=z\partial_z+d/2,\quad L_+=z^2\partial_z+dz.
\]

Define

\[
(U_d z^p)(x)=\frac{p!}{(d)_p}L_p^{d-1}(x),\qquad
d\gamma_d(x)=\frac{x^{d-1}e^{-x}}{\Gamma(d)}\,dx.
\tag{2.1}
\]

Laguerre orthogonality gives exactly the Bargmann norm, and the Laguerre polynomials are complete in \(L^2(\gamma_d)\). Thus \(U_d\) is unitary, not merely a triangular polynomial change of basis. Its \(N\)-fold tensor product commutes with particle permutations. The two-chirality map therefore preserves the simultaneous Bose subspace.

For the pair Casimir, direct differentiation gives the operator identity

\[
U C_{ij}U^{-1}=d(d-1)-\mathscr J_{ij},
\quad
\mathscr J_{ij}=x_i x_j(\partial_i-\partial_j)^2
+d(x_j-x_i)(\partial_i-\partial_j).
\tag{2.2}
\]

At fixed \(s=x_i+x_j\), put \(u=x_i/s\). The nonconstant part becomes

\[
\mathscr J_{ij}=u(1-u)\partial_u^2+d(1-2u)\partial_u.
\tag{2.3}
\]

This is the self-adjoint Jacobi operator for the beta law \(\mathrm{Beta}(d,d)\); its degree-\(k\) eigenvalue is \(-k(k+2d-1)\). Consequently every original pair projector is exactly a conditional Jacobi angular projector.

To separate global descendants, let \(S=\sum_i x_i\) and \(\xi_i=x_i/S\). The product Gamma measure factors into \(\mathrm{Gamma}(Nd,1)\) for \(S\) and \(\mathrm{Dirichlet}(d,\ldots,d)\) for \(\xi\). If \(f(z)\) is a homogeneous degree-\(P\) primary, \(\sum_i\partial_i f=0\), then the expansion

\[
U_d z^p=\sum_{j=0}^p(-1)^j\binom pj\frac{x^j}{(d)_j}
\]

shows that all terms of total degree below \(P\) cancel. Indeed their coefficients are derivatives of \(f\) at the common point \(z_i=1\), and translation invariance identifies these with derivatives at zero. Thus \(Uf=S^P Y_P(\xi)\), where \(Y_P\) is a degree-\(P\) Dirichlet orthogonal polynomial. Its descendants have the same angular polynomial and radial Laguerre factor of parameter \(Nd+2P-1\). Apply the construction independently to both chiralities.

This identifies the entire problem with a spectral multiplier of pair angular operators on two Dirichlet simplexes, followed by simultaneous permutation symmetry. The auxiliary \(x_i\) are representation coordinates, not physical radial coordinates in AdS. No boundary condition has changed.

For example, the lowest pair projector in the original Bargmann coordinates is the conditional beta average

\[
(P_0^{ij}f)(z)=\frac1{B(d,d)}\int_0^1
t^{d-1}(1-t)^{d-1}f(\ldots,\zeta,\ldots,\zeta,\ldots)\,dt,
\quad \zeta=t z_i+(1-t)z_j.
\tag{2.4}
\]

Equation (2.2), including every matrix column and the unitary Gram identity, is checked independently in `dirichlet_realization.py`.

#### 2.1 The full two-chirality multiplier

The commuting pair Casimirs have eigenvalues \(C_k,C_l\). Let \(R_{ij}\) be the positive correction supported on pair spin zero and two: its eigenvalues are \(g_{n0}-u_n\), \(g_{n2}-u_n\), or zero. Since

\[
\sum_{i<j}C_{ij}=C_{\rm tot}+N(N-2)\mu/4,
\]

the exact full operator can also be written as

\[
\boxed{
W_N=2N\mu-4(C^L_{\rm tot}+C^R_{\rm tot})
+4\sum_{i<j}|C^L_{ij}-C^R_{ij}|+\sum_{i<j}R_{ij}.}
\tag{2.5}
\]

The absolute value is spectral functional calculus for two commuting self-adjoint operators on the same pair. This formula explains both the Casimir bound and the limitation of a direct differential-operator analogy: away from a one-sided sector, the absolute value is an essential nonpolynomial angular multiplier.

### 3. A genuine chiral Markov generator, with a precise limit to that identification

On the physical maximally chiral Bose sector,

\[
w_{ij}=u_0 I+a_0P_0^{ij}+a_2P_2^{ij}.
\tag{3.1}
\]

For the purpose of a labelled collision process, extend (3.1) to odd pair channels with value \(u_0\). This extension is a choice outside the physical chiral Bose space; it makes no alteration inside that space.

At pair occupation total \(T\), similarity by the strictly positive ground-primary descendant turns \(P_0\) into averaging with

\[
\pi_T(a)=\binom Ta\frac{(d)_a(d)_{T-a}}{(2d)_T},\qquad 0\le a\le T.
\]

The degree-two projector becomes

\[
(P_2)_{ab}=\pi_T(b)q_2(a)q_2(b),\quad
q_2(a)=\frac{(2a-T)^2-m_2}{\sqrt{v_2}},
\]

\[
m_2=\frac{T(T+2d)}{2d+1},\quad
v_2=\frac{4Td(T-1)(T+2d)(T+2d+1)}{(2d+1)^2(2d+3)}.
\tag{3.2}
\]

For \(T<2\), use \(P_2=0\). These are the constant and quadratic Hahn projections, derived here from the exact Clebsch–Gordan vectors. The pair operator shifted by \(g_{00}\) is

\[
\mathcal L=a_0(P_0-I)+a_2P_2.
\tag{3.3}
\]

It has row sum zero and satisfies detailed balance for \(\pi_T\). Its off-diagonal entries are strictly positive. To prove the last assertion, the minimum possible product in (3.2) obeys

\[
q_2(a)q_2(b)\ge
\begin{cases}
-\dfrac{T(2d+3)}{2(T+2d+1)},&T\text{ even},\\
-\dfrac{(T-1)(2d+3)}{2(T+2d)},&T\text{ odd},
\end{cases}
\quad \ge-\frac{2d+3}{2}.
\]

This follows by taking the opposite extrema of the affine function of \((2a-T)^2\). Therefore

\[
a_0+a_2q_2(a)q_2(b)\ge
a_0-\frac{2d+3}{2}a_2
=\frac{2d(d+1)}{2d-1}>0.
\tag{3.4}
\]

Summing (3.3) over pairs gives a reversible binary collision generator on the complete graph. It is a beta heat-bath process with a specific quadratic angular memory. This is an exact realization of the Einstein kernel on the chiral Bose subspace, not an analogy based on a similar name.

#### Nonchiral obstruction

The same diagonal-similarity strategy fails already at \(N=2,P=Q=2,d=2\). In the orbit basis, take

\[
i=((0,0),(2,2)),\quad j=((0,1),(2,1)),\quad k=((1,0),(1,2)).
\]

The three directed matrix entries of the full physical \(W\) are

\[
W_{ij}=312/35,\quad W_{jk}=-528/35,\quad W_{ki}=416/35,
\]

and their product is \(-68530176/42875<0\). Every nonzero diagonal similarity, including arbitrary phases, preserves this cycle product. A matrix with nonnegative off-diagonal entries cannot have it. Subtracting a scalar diagonal does not help.

This proves an obstruction to Markovizing the complete nonchiral matrix by a diagonal similarity in this natural occupation basis. It does not exclude a different non-diagonal realization or constitute a no-go theorem for integrability.

#### An all-mass obstruction in the natural Dirichlet positive cone

The independent audit subsequently found a stronger, basis-geometric obstruction. It applies to every \(d>1\), with no numerical diagonalization.

For two particles let \(X=2u-1,Y=2v-1\) be the two relative Jacobi coordinates. Their beta second moment is \(m=1/(2d+1)\), and \(q_2(X)=X^2-m\) is a degree-two eigenfunction. Put \(b_{22}=g_{00}-\gamma_{22}\) and \(L=w-g_{00}I\). The nonnegative, separately pair-even function \(F=X^2Y^2\) has \(F(0,0)=0\), but

\[
(LF)(0,0)=m^2(2c-b_{22})
=-\frac{12(10d^3+29d^2+8d-14)}
{(2d-1)(2d+1)(2d+3)(2d+5)}<0.
\tag{3.5}
\]

The numerator of its negative, after \(d=1+x\), has only positive coefficients. More explicitly, on this finite angular subspace,

\[
(e^{tL}F)(0,0)=
\frac{1-2e^{-ct}+e^{-b_{22}t}}{(2d+1)^2}<0
\]

for all sufficiently small positive \(t\). The evolved polynomial is continuous, so it is negative on a neighborhood of positive beta measure, not just at one point. Therefore the natural product-Dirichlet realization is **not positivity preserving** in the complete nonchiral theory. At \(d=2\), (3.5) is \(-88/35\).

All functions used are separately even and hence satisfy simultaneous Bose symmetry. No unphysical odd extension is involved. This rules out the natural continuation of the chiral stochastic interpretation; an unrelated nonlocal unitary map to a different positive cone remains outside its scope. The exact polynomial and semigroup certificate are in the audit's dirichlet_markov_counterexample program and JSON.

### 4. Exact upper edge and exact gap on every fixed-\(N\) Fock tower

Put

\[
c=a_0-a_2=\frac{2d(2d^2+7d+2)}{(2d-1)(2d+3)}>0.
\]

**Theorem 4.1.** For every \(N\ge2\), every excitation degree, and every \(d>1\), the highest eigenvalue of the coefficient \(W_N\) is

\[
g_{\rm top}(N)=\binom N2g_{00}.
\]

It belongs only to the double global-descendant module of the \((0,0)\) primary. The exact separation from the rest of the fixed-\(N\) Fock spectrum is

\[
\boxed{\mathfrak g_N=c\frac{Nd+1}{2d+1}.}
\tag{4.1}
\]

The only primary modules at \(g_{\rm top}-\mathfrak g_N\) are \((2,0)\) and \((0,2)\), one of each. In a complete free level \((P,Q)\), their total multiplicity is \(\mathbf1_{P\ge2}+\mathbf1_{Q\ge2}\); the top eigenvalue has multiplicity one. For \(N=0,1\), all corrections are zero and this gap statement is inapplicable.

#### Step 1: a pair comparison valid in both chiralities

The all-mass pair inequalities

\[
g_{n0}>g_{n2}>u_n>g_{n+1,0}
\tag{4.2}
\]

have independent positive-polynomial certificates in `../audit/pair_ordering_certificate.py`. They imply

\[
g_{00}-\gamma_{kl}\ge c(\mathbf1_{k>0}+\mathbf1_{l>0}),
\tag{4.3}
\]

with equality only for \((k,l)=(0,0),(2,0),(0,2)\). The only nontrivial comparison is when both labels are positive. The strongest possible pair value then is \(g_{10}\), and

\[
g_{00}-g_{10}-2c=
\frac{8d(14d^3+9d^2-12d-1)}{(2d-1)(2d+1)(2d+3)}>0.
\tag{4.4}
\]

After \(d=1+x\), the numerator is \(112x^4+520x^3+792x^2+464x+80\), proving strict positivity throughout the physical interval.

#### Step 2: an exact collision gap for one chirality

Let \(D_{ij}=I-P_0^{ij}\) and \(K_N=\sum_{i<j}D_{ij}\) on the complete labelled tensor product. Its kernel is the global ground-primary module. One proof is that every pair Casimir is minimized there, so their sum minimizes the total Casimir; conversely every global descendant of the ground is fixed by every \(P_0\).

For three particles at total primary degree \(J\), the three normalized pair-zero channels have Gram matrix with diagonal one and off-diagonal

\[
r_J=(-1)^J\frac{(d)_J}{(2d)_J}.
\tag{4.5}
\]

This endpoint overlap follows directly by coupling a zero pair to its spectator: the spectator endpoint is one and either other endpoint is (4.5). The eigenvalues of the Gram are \(1+2r_J\), \(1-r_J\), \(1-r_J\). Its nonzero eigenvalues are those of \(\sum P_0\). At \(J=0\) only the ground line remains; at \(J=1\) the auxiliary symmetric vector vanishes and the physical gap is \(3/2\). Since \(|r_J|\) strictly decreases, for \(J\ge2\) the smallest positive eigenvalue of \(K_3\) is attained at \(J=2\), and is

\[
\lambda_3=\frac{3d+1}{2d+1}.
\tag{4.6}
\]

This controls every descendant as well, because all pair operators commute with the total global algebra.

On any \(N\)-particle tensor product, disjoint pair projections commute and their products are positive. A direct expansion gives

\[
K_N^2=\sum_{|T|=3}K_T^2-(N-3)K_N+
\sum_{\substack{e\ne f\\e\cap f=\varnothing}}D_eD_f.
\tag{4.7}
\]

Using \(K_T^2\ge\lambda_3K_T\) and \(\sum_TK_T=(N-2)K_N\),

\[
K_N^2\ge\frac{Nd+1}{2d+1}K_N.
\tag{4.8}
\]

For \(N=2\), \(K_2\) is a projector, giving the same value one. Thus every positive eigenvalue is at least \(\lambda_N=(Nd+1)/(2d+1)\).

Sharpness follows without a many-body diagonalization. The symmetric primary

\[
F_2=\sum_i z_i^2-\frac1N\left(\sum_i z_i\right)^2
\]

satisfies

\[
D_{ij}F_2=\frac{Nd+1}{N(2d+1)}(z_i-z_j)^2,
\qquad K_NF_2=\lambda_NF_2.
\tag{4.9}
\]

The clique-to-triangle mechanism (4.7) is an established method in binary collision theory; see Caputo, *On the spectral gap of the Kac walk and other binary collision processes*, [arXiv:0807.3415](https://arxiv.org/abs/0807.3415). The explicit all-\(d\) triple calculation and the comparison to the Einstein pair coefficients are supplied here.

#### Step 3: transfer to the entire two-chirality physical operator

Equation (4.3) gives

\[
\binom N2g_{00}-W_N\ge c(K_N^L+K_N^R).
\tag{4.10}
\]

Outside the double ground module the right side is at least \(c\lambda_N\). If both total-primary degrees are positive, it is at least \(2c\lambda_N\). Equality at the first gap therefore has precisely one ground chirality. On the other side (4.3) restricts every pair to labels zero or two. The pair-Casimir sum then gives

\[
2(2d+1)K_N=P(P+Nd-1).
\]

At \(K_N=\lambda_N\), the only nonnegative integer solution is \(P=2\). This symmetric primary is unique. Equations (4.9)–(4.10) prove the asserted complete multiplicities. No assertion about the sign of \(g_{00}\) is needed; it is positive in a small interval above \(d=1\).

### 5. Positive spectrum at fixed right degree: an all-\(N\) atomic limit

Fix \(N\ge4,Q\ge0,d>1\), and let the **global-primary** left degree \(P\to\infty\). These parameters are fixed independently; no uniformity in \(N,Q,d\) is claimed.

The previous exact lower bound is

\[
W_N=b_N(Q)I+A_N,\quad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1),\quad A_N\ge0.
\tag{5.1}
\]

Define the finite channel set and its positive pair values

\[
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,\ k+l\text{ even}\},
\quad a_{kl}=\gamma_{kl}-[4\mu-8C_l]>0.
\tag{5.2}
\]

**Theorem 5.1.** If \(R_{N;P,Q}\) is the positive rank of \(A_N\), its empirical positive measure converges in the quadratic Wasserstein metric:

\[
\boxed{
\frac1{R_{N;P,Q}}\sum_{\lambda_j(A_N)>0}\delta_{\lambda_j}
\xrightarrow[W_2]{}
\sum_{(k,l)\in\mathcal B_Q}\omega_{kl}\delta_{a_{kl}},
\quad
\omega_{kl}=\frac{\binom{Q-l+N-3}{N-3}}{Z_{N,Q}},}
\tag{5.3}
\]

where

\[
Z_{N,Q}=\sum_{(k,l)\in\mathcal B_Q}\binom{Q-l+N-3}{N-3}.
\]

The rate is \(W_2=O(P^{-1/2})\), and

\[
R_{N;P,Q}=\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\tag{5.4}
\]

For every fixed \(\epsilon>0\), the number of positive eigenvalues at distance at least \(\epsilon\) from the finite atom set is \(O(P^{N-4}/\epsilon^2)\). This is a statement about almost all positive levels and a controlled number of exceptional levels. It does not identify the individual exceptions.

#### 5.1 Gram geometry and finite estimates

Choose an orthonormal pair–spectator frame \(F\) in the labelled primary space, symmetric under \(S_2\times S_{N-2}\), with distinguished pair labels in (5.2). In this frame the exact Bose Gram is

\[
T=\binom N2F^*\Pi_{S_N}F=I+K,\quad
K=2(N-2)R_1+\binom{N-2}{2}R_0,
\tag{5.5}
\]

where \(R_1\) exchanges the distinguished pair with an overlapping pair and \(R_0\) with a disjoint pair. Let \(D\) act by \(a_{kl}\) in each pair-channel block. The auxiliary positive matrix

\[
B=\sqrt D(I+K)\sqrt D
\tag{5.6}
\]

has exactly the positive physical spectrum, with multiplicities. Its zero modes are Gram dependencies.

Let \(P_{\rm aux}=FF^*\). Since \(P_{\rm aux}\le P_{12}^{\rm bad}\), for either involutive representative \(U\),

\[
\|F^*UF\|_{\rm HS}^2
=\operatorname{Tr}(P_{\rm aux}UP_{\rm aux}U^{-1})
\le\operatorname{Tr}(P_{12}^{\rm bad}P_{U(12)}^{\rm bad}).
\tag{5.7}
\]

This uses monotonicity of the trace of two positive operators; no commutativity of overlapping pair projectors is assumed.

For disjoint pairs the upper trace is exactly

\[
S_0=\sum_{(k,l),(r,v)\in\mathcal B_Q}
\binom{P-k-r+N-4}{N-4}
\binom{Q-l-v+N-4}{N-4},
\tag{5.8}
\]

with an inadmissible binomial interpreted as zero. In particular \(S_0=O(P^{N-4})\).

For overlapping pairs decompose the three particles into total-primary labels \((t,u)\). If \(\mathcal R^{(t)}\) is the orthonormal triple Racah matrix, define

\[
c_{tu}=\sum_{(k,l),(r,v)\in\mathcal B_{t,u}}
|\mathcal R^{(t)}_{kr}\mathcal R^{(u)}_{lv}|^2,
\quad \mathcal B_{t,u}=\{(k,l)\in\mathcal B_u:k\le t\}.
\]

The upper trace is

\[
S_1=\sum_{t=0}^{P}\sum_{u=0}^{Q}
\binom{P-t+N-4}{N-4}\binom{Q-u+N-4}{N-4}c_{tu}.
\tag{5.9}
\]

For bounded \(k,r\), the terminating Racah formula has bounded rational factors times \((d)_t/(2d)_t\), so

\[
\mathcal R^{(t)}_{kr}=O((t+1)^{-d}).
\]

All right labels are bounded by fixed \(Q\); hence \(c_{tu}=O((t+1)^{-2d})\). This is summable, and (5.9) is \(O(P^{N-4})\). Thus

\[
\boxed{\|K\|_{\rm HS}^2=O(P^{N-4}),\qquad
\|B-D\|_{\rm HS}^2=O(P^{N-4}).}
\tag{5.10}
\]

An explicit finite bound implemented in `bulk_spectrum.py` is

\[
\|B-D\|_{\rm HS}^2\le
2a_{\max}^2\{4(N-2)^2S_1+\binom{N-2}{2}^{\!2}S_0\}.
\tag{5.11}
\]

These finite constants are deliberately conservative. The power reduction is the useful general result.

#### 5.2 Multiplicities and removal of auxiliary zeros

For a fixed pair channel, the exact auxiliary multiplicity is the full spectator Bose level dimension

\[
n_{kl}(P,Q)=H_{N-2}(P-k,Q-l).
\tag{5.12}
\]

The outer left/right coupling degrees sum all spectator primary multiplicities, which telescope to this full level dimension. Using only the spectator primary dimension would be incorrect.

For \(M=N-2\), the identity term of the spectator Molien sum gives

\[
H_M(p,q)=\frac{\binom{q+M-1}{M-1}}{M!(M-1)!}p^{M-1}+O(p^{M-2})
\tag{5.13}
\]

at fixed \(q\). Every other permutation or root-of-unity pole has lower order. Equations (5.12)–(5.13) give the multiplicities in (5.3).

Every auxiliary zero of \(T\) is an eigenvalue \(-1\) of \(K\). Its number is therefore at most \(\|K\|_{\rm HS}^2=O(P^{N-4})\). This argument proves the required rank asymptotic without using the full old logarithmic-kernel classification. The eigenvalues of \(B\) and \(D\) are uniformly bounded at fixed \(N,Q,d\), since \(0\le T\le\binom N2 I\). Hoffman–Wielandt and (5.10) give mean square matching cost \(O(P^{-1})\). Removing the \(O(P^{N-4})\) auxiliary zeros and replacing the exact channel weights by (5.3) change that cost by the same order. This proves Theorem 5.1, including its outlier estimate.

#### 5.3 Determinants, descendants, and a numerical test

For \(s>0\), a consequence with no individual root finding is

\[
\frac1{R_{N;P,Q}}\log\det\left(sI+A_N|_{\operatorname{im}A_N}\right)
\longrightarrow\sum_{kl}\omega_{kl}\log(s+a_{kl}).
\tag{5.14}
\]

The normalized resolvent converges to \(\sum\omega_{kl}/(s+a_{kl})\) as well.

The primary qualifier matters. For a **complete free level** \((P,Q)\), with all primary parents included, the empirical measure of all \(W_N\) eigenvalues instead tends to

\[
\sum_{q=0}^{Q}
\frac{\binom{q+N-2}{N-2}}{\binom{Q+N-1}{N-1}}\delta_{b_N(q)}.
\tag{5.15}
\]

The saturated states dominate that normalization. If only its nonsaturated descendants are counted, the atoms are \(b_N(q)+a_{kl}\), \(q\le Q,(k,l)\in\mathcal B_q\), with weights proportional to \(\binom{q-l+N-3}{N-3}\). These assertions follow by summing the primary asymptotics over both parent degrees.

For \(N=4,Q=2,d=2\), the residual atoms and weights are

| \((k,l)\) | \(a_{kl}\) | Weight |
|---|---:|---:|
| \((0,0)\) | \(24/5\) | \(3/13\) |
| \((2,0)\) | \(8/35\) | \(3/13\) |
| \((1,1)\) | \(312/35\) | \(2/13\) |
| \((3,1)\) | \(8/21\) | \(2/13\) |
| \((0,2)\) | \(2808/35\) | \(1/13\) |
| \((2,2)\) | \(64/5\) | \(1/13\) |
| \((4,2)\) | \(40/77\) | \(1/13\) |

The new recoupling code gives the following floating-point check of (5.3). These are tests, not the proof of the theorem.

| \(P\) | Positive rank | \(W_2\) | \(P W_2^2\) |
|---:|---:|---:|---:|
| 32 | 143 | 14.45596 | 6687.19 |
| 64 | 351 | 9.14573 | 5353.24 |
| 128 | 767 | 6.18496 | 4896.47 |
| 256 | 1599 | 4.28523 | 4700.98 |
| 512 | 3263 | 3.00002 | 4608.06 |

The relatively slow convergence is visible; this theorem is not a claim that every moderate-\(P\) level is already close to an atom. The exceptional levels are studied more precisely by the four-particle cluster determinant in `../recoupling/`.

### 6. A proved obstruction in balanced high excitation

**Theorem 6.1.** Fix \(N\ge4\), and take \(P=Q=L\to\infty\). For the same auxiliary Bose Gram \(T=I+K\),

\[
\liminf_{L\to\infty}\frac{\|K\|_{\rm HS}^2}{d_{\rm aux}}
\ge1-\frac{2}{\binom N2}>0.
\tag{6.1}
\]

Thus the small-overlap mechanism of Theorem 5.1 cannot extend unchanged to balanced degrees.

**Proof.** The identity Molien terms give

\[
d_{\rm phys}\sim\frac{L^{2N-4}}{N!((N-2)!)^2},\qquad
d_{\rm aux}\sim\frac{L^{2N-4}}{4((N-2)!)^3}.
\tag{6.2}
\]

For the second formula, sum the full spectator level asymptotic over the triangle \(0\le k\le l\le L\). Its integral is half a symmetric square, and the simultaneous pair parity gives another factor one half. The width-two strip only changes lower powers. Hence

\[
d_{\rm aux}/d_{\rm phys}\to\tfrac12\binom N2.
\]

There is no physical baseline kernel at \(P=Q\). Indeed equality would require every pair to have \(k_L\ge k_R+4\), hence \(C_{ij}^L-C_{ij}^R\ge8d+12\). But summing these differences on a \((L,L)\) primary gives \(C^L_{\rm tot}-C^R_{\rm tot}=0\), a contradiction. Thus \(T\) has exactly \(d_{\rm aux}-d_{\rm phys}\) zeros. The corresponding \(-1\) eigenvalues of \(K\) prove (6.1). □

For four particles this lower bound is \(2/3\). It reflects an extensive fraction of exact Bose Gram dependencies, not a failure of floating-point precision. A different representation after quotienting all dependencies, another limiting operator, or a new analytic structure is not ruled out.

### 7. Scope of the advances

The exact Dirichlet map, sharp upper edge, all-\(N\) fixed-right-degree positive measure, and balanced obstruction are independent of a conjecture of integrability. They give spectral information with no matrix of dimension growing as the full many-body space: the edge and gap are finite formulas, and the limiting positive measure requires only finitely many pair channels.

They do not give every finite-\((N,P,Q)\) positive root. The full exceptional spectrum for \(N\ge5\), and the positive bulk at simultaneous large left/right degree, remain unresolved analytically. The new finite recoupling algorithms remain useful there, but a new matrix representation by itself is not counted as an analytic solution.

### 8. Reproduction and provenance

From the research-package root, with Python, SymPy, NumPy and mpmath installed:

```bash
python3 analytic_research/collisions/dirichlet_realization.py --output /tmp/dirichlet.json
python3 analytic_research/collisions/collision_structure.py --verify --output /tmp/collisions.json
python3 analytic_research/collisions/bulk_spectrum.py --delta 2 --n 4 --q 2 --p 24 --output /tmp/bulk.json
python3 analytic_research/collisions/bulk_spectrum.py --delta 2 --n 5 --q 16 --p 16 --balanced --output /tmp/balanced.json
```

The collision tests compare direct Clebsch–Gordan projectors, exact Gram-weighted Bose matrices and the independent Laguerre differential realization. The finite overlap bound is a rational calculation. The independent proof audit is `../audit/FIXED_RIGHT_DEGREE_ATOMIC_LIMIT_AUDIT.md`. No old source or deliverable was changed.


---

# 附录 B：低 pair 通道、根幂理想与完整 Bose 重数分类

独立原文件：`analytic_research/recoupling/LOW_CHANNEL_POWER_IDEALS.md`。本附录中的局部定理及公式编号按该原文件解释。

## Exact low-pair-channel intersections from root power ideals

**Status.** The inverse-system and representation-theoretic classification below is proved for every finite \(N\), independently of a finite spectrum scan and independently of the scalar mass in the physical range \(\Delta>1\). Its yrast corollaries use the separately established affine lower bounds for the physical Einstein pair kernel. Exact small-\(N\) calculations are checks, not the proof.

### 1. Physical low channels and the primary quotient

Use the exact algebraic Fischer realization
\[
\mathfrak U_\Delta(\zeta^p)=\frac{x^p}{(\Delta)_p},
\qquad
\langle x^\alpha,x^\beta\rangle_{\rm F}
=\delta_{\alpha\beta}\prod_i\alpha_i!(\Delta)_{\alpha_i}.
\]
It is unitary from the original Bargmann monomial metric. Lowering becomes
\(\mathcal L_\Delta\), raising becomes multiplication by \(S\), and
\(S^\dagger=\mathcal L_\Delta\). The original pair Casimir becomes the same
conditional Jacobi differential operator as in the Gamma/Dirichlet construction.
For degree-\(P\) primaries this map and the previous Gamma–Laguerre map differ
only by \((-1)^P\). Using the explicit positive Fischer metric here avoids
confusing its homogeneous grading with the full Gamma \(L^2\) inner product.
Define
\[
S=\sum_i x_i,\qquad
\mathcal L_\Delta=\sum_i(x_i\partial_i^2+\Delta\partial_i),
\qquad E=\sum_i x_i\partial_i.
\]
A left primary of degree \(P\) is a homogeneous polynomial in \(\ker\mathcal L_\Delta\). At fixed \(x_i+x_j\), the pair Jacobi channels \(0,\ldots,r\) span exactly the polynomials of relative degree at most \(r\). Consequently
\[
\boxed{
P_{ij,k}F=0\ \hbox{for every }k>r
\quad\Longleftrightarrow\quad
(\partial_i-\partial_j)^{r+1}F=0.}
\tag{1}
\]
Arbitrary polynomial coefficients in the pair sum and spectator variables are permitted. Completeness and triangularity of the finite Jacobi basis prove (1).

Let \(\mathscr V_{r,N}\) be the simultaneous kernel of these derivatives before imposing primarity. Put
\[
V=\{x:\sum_i x_i=0\},\qquad z_i=x_i-S/N.
\]
Every root derivative kills \(S\), so
\[
\mathscr V_{r,N}=\mathbb C[S]\otimes\mathscr D_{r,N},
\qquad \mathscr D_{r,N}\subset\mathbb C[V].
\tag{2}
\]
The homogeneous primary slice has the same graded \(S_N\) representation as \(\mathscr D_{r,N}\). Indeed,
\[
[\mathcal L_\Delta,S]=2E+N\Delta,\qquad
[\mathcal L_\Delta,(\partial_i-\partial_j)^m]
=-m(\partial_i+\partial_j)(\partial_i-\partial_j)^m.
\tag{3}
\]
Both raising by \(S\) and lowering by \(\mathcal L_\Delta\) preserve the low-channel space. At degree \(P\), the finite extremal projector is
\[
\Pi^{\mathrm{hom}}_P=
\sum_{j=0}^{P}
\frac{(-1)^jS^j\mathcal L_\Delta^j}
{j!(N\Delta+2P-j-1)_j}.
\tag{4}
\]
Its denominators are nonzero in the physical range. It kills \(S\)-descendants, lands in \(\ker\mathcal L_\Delta\), and is the identity modulo \(S\). It therefore gives an \(S_N\)-equivariant isomorphism
\[
\boxed{
\mathscr D_{r,N,P}\simeq
\mathscr V_{r,N,P}\cap\ker\mathcal L_\Delta.}
\tag{5}
\]
The inverse is restriction modulo \(S\). The right degree-one primary space is the standard representation \(V\).

Equivalently, positivity and \(S^\dagger=\mathcal L_\Delta\) give the orthogonal decomposition
\[
\mathscr V_{r,N,P}
=(\mathscr V_{r,N,P}\cap\ker\mathcal L_\Delta)
\mathbin{\oplus^\perp}S\mathscr V_{r,N,P-1}.
\]
This proves the quotient identification directly; (4) also supplies its explicit inverse.

### 2. Two exact inverse systems

The apolar ideal dual to \(\mathscr D_{r,N}\) is
\[
I_{r+1,N}=
\left\langle(t_i-t_j)^{r+1}:i<j\right\rangle
\subset\operatorname{Sym}(V).
\tag{6}
\]
For elementary computations choose \(u_i=t_i-t_N\), \(i=1,\ldots,n=N-1\). Its generators become \(u_i^{r+1}\) and \((u_i-u_j)^{r+1}\). Apolarity identifies the graded dimensions of the quotient and the inverse system.

Write \(M_P\) for the permutation module on \(P\)-subsets of \([N]\), represented by squarefree monomials; set \(M_P=0\) outside \(0\le P\le N\). Write \(R_j\) for the permutation module on marked \(j\)-subsets \((A,i)\), \(i\in A\); set \(R_j=0\) outside \(1\le j\le N\).

#### Theorem A: cubic root powers, or all pair channels \(k\le2\)

\[
\boxed{
\mathscr D_{2,N}
=\operatorname{span}\left\{\prod_{i\in A}z_i:A\subseteq[N]\right\}.}
\tag{7}
\]
Its Hilbert polynomial and graded representation are
\[
\operatorname{Hilb}\mathscr D_{2,N}=(1+t)^N-t,\qquad
\mathscr D_{2,N,P}\simeq
\begin{cases}
V,&P=1,\\
M_P,&P\ne1.
\end{cases}
\tag{8}
\]

**Proof.** Modulo \(I_{3,N}\),
\[
u_i^3=0,\qquad u_i^2u_j=u_iu_j^2.
\tag{9}
\]
Multiplication by \(u_i\) gives \(u_i^2u_j^2=0\). Thus every surviving monomial is squarefree, or has exactly one doubled index, which can be moved to any position in its support. A spanning set has generating function
\[
(1+t)^n+t((1+t)^n-1)=(1+t)^N-t.
\]
This is an upper bound in every degree; independence has not been assumed.

Conversely, each polynomial in (7) has degree at most two in every root direction. Restriction of the squarefree polynomial space to \(S=0\) has kernel only \(\mathbb C S\), in degree one: if \(SG\) is multiaffine, then \(\deg_{x_i}(SG)=1+\deg_{x_i}G\le1\) for every \(i\), so \(G\) is constant. The explicit inverse-system polynomials attain the entire upper bound. Equality and the representation statement follow. \(\square\)

#### Theorem B: quartic root powers, or all pair channels \(k\le3\)

Let \(\mathcal E\) be the span of squarefree monomials and monomials having at most one squared variable, with every other exponent at most one. Then
\[
\boxed{\mathscr D_{3,N}=\mathcal E|_{S=0}.}
\tag{10}
\]
There is an exact graded \(S_N\)-equivariant sequence
\[
0\longrightarrow M_{P-1}
\mathop{\longrightarrow}^{\times S}
M_P\oplus R_{P-1}
\longrightarrow\mathscr D_{3,N,P}\longrightarrow0.
\tag{11}
\]
Therefore
\[
\boxed{
\operatorname{Hilb}\mathscr D_{3,N}
=(1+(N-1)t^2)(1+t)^{N-1},\qquad
[\mathscr D_{3,N,P}]=[M_P]+[R_{P-1}]-[M_{P-1}].}
\tag{12}
\]
In particular,
\[
\dim\mathscr D_{3,N,P}
=\binom NP+(P-2)\binom N{P-1},
\tag{13}
\]
with binomial coefficients zero outside their natural ranges.

**Proof.** The quartic generators imply
\[
u_i^4=0,\qquad
2u_i^3u_j-3u_i^2u_j^2+2u_iu_j^3=0.
\tag{14}
\]
Multiplication by \(u_i,u_j\) gives
\(-3u_i^3u_j^2+2u_i^2u_j^3=0\) and
\(2u_i^3u_j^2-3u_i^2u_j^3=0\).
Their determinant is five. Hence
\[
u_i^3u_j^2=u_i^2u_j^3=0,\qquad
u_i^2u_j^2=\tfrac23(u_i^3u_j+u_iu_j^3).
\tag{15}
\]
Three square factors vanish after reduction. Every monomial is spanned by three types: squarefree; one squared index and all remaining exponents one; one cubed index and all remaining exponents one. For support size \(s\), their counts are \(1,s,s\), in degrees \(s,s+1,s+2\). This gives the upper bound
\[
(1+t)^n+(t+t^2)nt(1+t)^{n-1}
=(1+nt^2)(1+t)^n.
\tag{16}
\]

For the matching lower bound, every monomial in \(\mathcal E\) has degree at most three in every pair of variables, and satisfies every fourth root derivative. If \(SG\in\mathcal E\), its degree in each variable is at most two, forcing \(G\) to be multiaffine. Conversely \(S\) times every multiaffine polynomial belongs to \(\mathcal E\). This proves the exact restriction kernel in (11). Its image has dimension
\[
\binom NP+(P-1)\binom N{P-1}-\binom N{P-1},
\]
which equals (16). The bounds coincide, proving completeness and the full representation statement. \(\square\)

For reference, the Frobenius character in (12) is
\[
h_Ph_{N-P}+h_1h_{P-2}h_{N-P+1}
-h_{P-1}h_{N-P+1},
\tag{17}
\]
with inadmissible terms omitted. This is an actual representation by (11); the subtraction is character bookkeeping.

There is also a positive direct-sum description. For \(P\ge2\), put
\(j=P-1\), and let \(V_j\) be the standard representation of \(S_j\)
(\(V_1=0\)). In its valid range,
\[
\mathscr D_{3,N,P}\simeq M_P\oplus
\operatorname{Ind}_{S_j\times S_{N-j}}^{S_N}(V_j\boxtimes\mathbf1).
\tag{17a}
\]
The marked-subset module is induced from the permutation representation of
\(S_j\), which splits as \(\mathbf1\oplus V_j\); semisimplicity and (11)
prove (17a). The two terms give the two standard-representation ladders
without a cancellation argument.

### 3. Exact Bose multiplicities

#### Chiral intersection

The trivial representation occurs once in every \(M_P\), \(0\le P\le N\). Thus
\[
\boxed{
\dim\{\text{Bose primaries, all pair }k\le2\}
=
\begin{cases}
1,&P=0\ \text{or }2\le P\le N,\\
0,&\text{otherwise}.
\end{cases}}
\tag{18}
\]
Explicit representatives are \(\Pi^{\mathrm{hom}}_Pe_P(z)\), and the constant at \(P=0\).

#### Right degree one: two finite ladders

Simultaneous Bose invariance pairs the right standard representation with its multiplicity in the left inverse system. Frobenius reciprocity gives
\[
[V:M_j]=\mathbf1_{1\le j\le N-1},\qquad
[V:R_j]=\mathbf1_{j\ge2}+\mathbf1_{j\le N-1}
\quad(1\le j\le N).
\tag{19}
\]
Indeed a vector fixed by the subset stabilizer is constant on its nonempty blocks, with one sum-zero condition. For \(M_j\) there are block sizes \(j,N-j\); for \(R_j\) they are \(1,j-1,N-j\).

For every \(N\ge2\), the exact generating functions are
\[
\boxed{
K_{\le2,N}(t)=t\,\frac{1-t^{N-1}}{1-t},\qquad
K_{\le3,N}(t)=(t+t^3)\,\frac{1-t^{N-1}}{1-t}.}
\tag{20}
\]
The second space comprises a ladder at \(P=1,\ldots,N-1\) and one at \(P=3,\ldots,N+1\). There are exactly \(2(N-1)\) such primaries after summing over \(P\).

Equivalently, for \(N\ge3\) its multiplicity is one at \(P=1,2,N,N+1\), two at \(3\le P\le N-1\), and zero elsewhere. For \(N=2\), (20) gives precisely \(P=1,3\); in particular there is no spurious \(P=2\) state. For \(N=1\) both spaces are zero.

#### Complete explicit primary vectors

Set \(\eta_i=y_i-\sum_jy_j/N\), and define
\[
A_P=\sum_i\eta_i z_i e_{P-1}(z_{\widehat i}),\qquad
B_P=\sum_i\eta_i z_i^2e_{P-2}(z_{\widehat i}).
\tag{21}
\]
An inadmissible elementary-symmetric index means zero. Both vectors are simultaneously Bose invariant, already right primary, and have left pair degree at most three. The \(A_P\) family has degree at most two in every left root direction.

For \(3\le P\le N-1\), the two vectors \(\Pi^{\mathrm{hom}}_PA_P,\Pi^{\mathrm{hom}}_PB_P\) form a basis of the complete space. At \(P=1\) use \(A_1\); at \(P=2\), \(A_2=-B_2\); at \(P=N,N+1\) use \(B_P\). In particular,
\[
B_{N+1}=\left(\prod_i z_i\right)\sum_i\eta_i z_i.
\tag{22}
\]

For an independence proof, suppose a combination of \(A_P,B_P\), before setting \(S=0\), equals \(SG\). The restriction-kernel argument makes \(G\) multiaffine. Its invariant right-standard component is unique when \(1\le P-1\le N-1\), and is a scalar multiple of
\[
D_{P-1}=\sum_{|C|=P-1}
\left(\sum_{i\in C}\eta_i\right)x_C.
\]
The squarefree part of \(SD_{P-1}\) is \((P-1)A_P\). Its squared marked coefficient \((C,i)\) is \(\sum_{j\in C}\eta_j\), while in \(B_P\) it is \(\eta_i\). For \(2\le|C|\le N-1\), these two linear forms are independent on \(\sum\eta_i=0\), when \(N\ge3\). Thus the relation is trivial, apart from the endpoint identities listed above. Homogeneous primary projection is injective on this quotient by (5).

### 4. Exact energy and yrast implications

Suppose the physical pair kernel on \(l=0,1\), with simultaneous parity, obeys
\[
g_{kl}=g_{00}+\alpha(c_k-c_0)+\beta(c_l-c_0)+\rho_{kl},
\qquad c_k=(\Delta+k)(\Delta+k-1).
\tag{23}
\]
Choose
\[
\alpha=\frac{g_{20}-g_{00}}{2(2\Delta+1)},\qquad
\beta=\frac{g_{11}-g_{00}}{2\Delta}-\alpha.
\]
The equality channels always include \(00,20,11\). The all-\(k\le2\) primary family therefore has an exact energy for any globally covariant pair kernel, without requiring the fourth channel to align. Its complete multiplicity as a low-channel family is the first polynomial in (20).

If \(\rho\ge0\), equality states are exactly the simultaneous pairwise zero-defect space. If the zero channels are precisely \(00,20,11\), this is the \(k\le2\) space; if they are precisely \(00,20,11,31\), it is the \(k\le3\) space. Positivity of the physical sum then proves completeness of the corresponding lowest eigenspace.

At the Einstein critical mass
\[
\Delta_*=(\sqrt{33}-1)/4,
\]
the fourth channel aligns and the remaining defects are strictly positive, as established independently in the affine-bound audit. The global Casimir identity
\[
\sum_{i<j}(C_{ij}-c_0)=P(N\Delta+P-1)
\tag{24}
\]
gives the exact attained \((P,1)\) correction
\[
\boxed{
g_{\rm low}(N,P)=\binom N2g_{00}
+\frac N2(g_{11}-g_{00})
+\frac{g_{20}-g_{00}}{2(2\Delta+1)}
  (P-1)(N\Delta+P).}
\tag{25}
\]
The critical protected doublet therefore has **exact multiplicity two** for \(3\le P\le N-1\), with all boundary cases in (20). The new endpoint states \(P=N,N+1\) are finite-\(N\) results beyond the previously used stable range. For \(P>N+1\), the affine bound is not attained; the remaining positive-defect spectrum is not claimed to have been diagonalized by this theorem.

### 5. Arbitrary right degree follows from the full module

The right primary representation at degree \(Q\) is \(\operatorname{Sym}^Q(V)\). Equations (8), (12) therefore determine the low-left-channel Bose intersection for arbitrary \(Q\), not just \(Q=0,1\).

For nonempty stabilizer block sizes \(b_1,\ldots,b_a\), put
\[
Z_{b_1,\ldots,b_a}(y)=
\frac{1-y}{\prod_{\nu=1}^{a}\prod_{j=1}^{b_\nu}(1-y^j)}.
\tag{26}
\]
This is the right primary invariant-ring Hilbert series: elementary symmetric functions within each block generate the invariant ring, and the one global linear coordinate is removed.

For \(k\le2\), degree \(P\ne1\) gives \(Z_{P,N-P}\), with zero-size blocks omitted; degree one gives \(Z_{1,N-1}-Z_N\). For \(k\le3\), the answer is
\[
Z_{P,N-P}+Z_{1,P-2,N-P+1}-Z_{P-1,N-P+1}.
\tag{27}
\]
An inadmissible module term is zero; zero-size blocks are omitted only within an admissible term. The coefficient of \(y^Q\) is the exact multiplicity. These formulas classify intersections; a physical energy additionally requires the kernel to be affine on all channels actually present.

### 6. Established mathematics and the precise new use

The configuration \(X=(x_1|_V,\ldots,x_N|_V)\) represents the uniform matroid \(U_{N-1,N}\). Its hyperplane normals are the roots \(e_i-e_j\), and only two elements of \(X\) are nonperpendicular to each normal. The cubic ideal is the external zonotopal power ideal; its inverse space is spanned by products of subsets of \(X\). The quartic answer is that external space together with its products by linear forms.

Primary references: Matthias Lenz, [Hierarchical zonotopal power ideals, arXiv:1011.1136](https://arxiv.org/pdf/1011.1136), and Ardila–Postnikov, [Combinatorics and geometry of power ideals](https://math.mit.edu/~apost/papers/PowerIdeals.pdf).

Lenz's general equality between the all-directions ideal and its finite hyperplane-normal version is guaranteed in the indicated \(k\le0\) range. The quartic root-only ideal lies one step beyond that general guarantee. The elementary straightening plus matching-dimension proof above establishes this simplex case directly. It neither invokes an inapplicable theorem nor infers a commuting family for the complete Einstein Hamiltonian from a finite intersection classification.

#### A sharp failure at the next root power

For every \(N\ge3\), the polynomial
\[
F(z)=\left(\prod_{i=1}^{N}z_i\right)^2
\quad\hbox{on }\sum_i z_i=0
\]
is nonzero of degree \(2N\) and satisfies
\((\partial_i-\partial_j)^5F=0\): only the two factors \(z_i^2,z_j^2\)
vary along that root, so the directional degree is four. It therefore
belongs to the inverse system of the fifth powers of all roots.

But the external simplex space in (7), multiplied by arbitrary
polynomials of degree at most two, has total degree at most \(N+2\).
Since \(2N>N+2\) for \(N\ge3\), it cannot contain \(F\). Thus the simple
pattern “successive polynomial multiples of the external space” fails at
the very next order. The cubic and quartic classifications are complete
theorems; this explicit counterexample prevents their automatic
extension to all higher low-channel cutoffs.

### 7. Independent exact checks

The accompanying **verify_power_ideals.py** builds Macaulay matrices directly from the original generators \(u_i^m,(u_i-u_j)^m\), rather than using the straightened relations in the proofs. It computes the actual induced \(S_N\) action by polynomial substitution and exact reduction modulo these matrices, and compares its character on every conjugacy class with (8) and (12).

The retained **power_ideal_verification.json** records all 70 exact checks for \(N=2,\ldots,6\), \(m=3,4\), and \(0\le P\le N+2\). Every dimension and every conjugacy-class character agrees. A separate original-generator calculation gives a one-dimensional trivial module for \(N=3,m=5,P=6\), and explicit differentiation checks the nonzero inverse vector \((z_1z_2z_3)^2\). These finite calculations independently test the classifications and the next-power obstruction; the arbitrary-\(N\) conclusions follow from the proofs above.


---

# 附录 C：任意质量精确态、临界增强与有限 primary projector

独立原文件：`analytic_research/pencil/ALL_P_PROTECTED_DOUBLETS.md`。本附录中的局部定理及公式编号按该原文件解释。

## Exact low-channel eigenstates and protected quotients at all excitation degrees

Research continuation, 2026-10-19. The earlier calculation supplied the physical two-body kernel and small-block Casimir sum identities. The new construction preserves low pair-channel support under global primary projection. It produces an exact nonchiral family at every physical mass, a protected doublet family on a precise codimension-one locus, a finite direct state generator, and complete lowest-eigenspace multiplicities from the independently proved low-channel intersection classification. Original files are unchanged.

### 1. The theorem and its physical meaning

Use the same global AdS₃ Einstein–scalar boundary conditions, boundary-graviton prescription, one-body subtraction, and scalar branch as the previous reports.

**Universal single-family theorem.** Let \(\Delta>1\), \(P\ge1\), and \(N\ge P+1\). Write \(a=g_{00}\), \(b=g_{20}\), \(c=g_{11}\). The complete \(Q=1\) primary space contains the nonzero exact eigenstate

\[
\Phi_1=\Pi_{\rm prim}\operatorname{Sym}
\left(z_1w_1 z_2\cdots z_P\right),
\]

with correction

\[
\boxed{
g_{\rm univ}(P,N;\Delta)
=a\binom N2+\frac N2(c-a)
+\frac{(b-a)(P-1)(N\Delta+P)}{2(2\Delta+1)}.
}
\tag{1.0}
\]

Here \(\operatorname{Sym}\) denotes the averaged Bose symmetrization, with the remaining particles in their ground modes. This theorem holds for every globally invariant Bose two-body kernel with those low channel values; it does not require the Einstein formulas, a special mass, or an integrable Hamiltonian.

A second state
\(\Phi_2=\Pi_{\rm prim}\operatorname{Sym}(z_1^2w_1 z_2\cdots z_{P-1})\)
joins the same level on the exact relation

\[
(2\Delta+3)(a-b)=(2\Delta+1)(c-g_{31}).
\]

For the Einstein kernel, this relation has the unique physical solution
\(\Delta_*=(\sqrt{33}-1)/4\).
Sections 2.1 and 6.1 give the direct Casimir proof and the precise necessary-and-sufficient scope.

At this critical mass, set

\[
\Delta_*=\frac{\sqrt{33}-1}{4}>1,\qquad
a=g_{00}=\frac{13\Delta_*-20}{4},
\]

\[
\sigma_{20}=\frac{3(17\Delta_*-36)}{32},\qquad
\sigma_{11}=-\frac{215\Delta_*-124}{16},\qquad
K=\frac{3(4-9\Delta_*)}{32}.
\tag{1.1}
\]

**Theorem.** For every integer \(P\ge3\), every integer \(N\ge P+1\), and right degree \(Q=1\), the complete Bose primary Hamiltonian has a lowest eigenspace of exactly two dimensions with the exact correction

\[
\boxed{
g_P(N)=\binom N2a+
N\left(\sigma_{11}+\frac{P-1}{2}\sigma_{20}\right)
+K P(P-1).
}
\tag{1.2}
\]

Thus their energies are

\[
E=N\Delta_*+P+1+Gg_P(N)+o(G).
\]

The chirality-reflected assertion holds at left degree one and arbitrary right degree. Global descendants retain the corresponding primary correction. This is a theorem at each finite \(N,P\); it does not assume a uniform weak-coupling limit as \(N\) grows.

At \(P=1,2\), the same formula gives the single primary level in each stable block. The earlier exact characteristic computations at \(P=3,4,5,6\) independently found multiplicity two. The subsequent common-pair-support classification proves the exact multiplicity at every finite particle number:

\[
\boxed{\sum_{P\ge0}m_*(N,P)x^P
=(x+x^3)\frac{1-x^{N-1}}{1-x},\qquad N\ge2.}
\tag{1.3}
\]

Thus for \(N\ge3\), the multiplicity is one at \(P=1,2,N,N+1\), two at \(3\le P\le N-1\), and zero elsewhere. At \(N=2\), only \(P=1,3\) occur, each once. A zero means that the affine lower bound is not attained; it does not say that the full primary block is empty. In particular the \(P=N,N+1\) states are exact finite-\(N\) boundary results beyond the stable range. Section 6.2 explains why there can be no further states at this lowest energy.

This is more than repeated low-degree diagonalization. Two explicit coefficient functionals define a quotient of the entire \(Q=1\) primary creation module, on which the Hamiltonian is the scalar Euler operator in Section 6. No other eigenvalues need be computed to obtain this family.

### 2. Precise state coordinates and the finite physical input

Let \(a_{pq}\) be formal creation coordinates with \(a_{00}=1\). A monomial with \(r\) nonzero modes represents the averaged symmetric \(N\)-particle tensor with \(N-r\) ground modes. Products here are products of creation variables, not pointwise products of averaged wavefunctions.

The global lowerings are

\[
D_La_{pq}=p a_{p-1,q},\qquad D_Ra_{pq}=q a_{p,q-1}.
\]

The stable primary algebra is freely generated by centered moments

\[
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij},
\qquad p+q\ge2.
\tag{2.1}
\]

Every \(Q=1\) primary monomial is therefore uniquely of the form

\[
c_{p,1}\prod_i c_{a_i,0},\qquad
p\ge1,\quad a_i\ge2,\quad p+\sum_i a_i=P.
\tag{2.2}
\]

The complete resonant interaction is \(W_N=\sum_{i<j}w_{ij}\). The four pair eigenvalues needed in this proof, before setting the mass, are

| Pair channel | Physical eigenvalue |
|---|---|
| \((0,0)\) | \(-2\Delta^2(8\Delta^2-2\Delta-7)/[(2\Delta-1)(2\Delta+1)]\) |
| \((2,0)\) | \(-4\Delta(\Delta+1)(4\Delta^2+4\Delta-1)/[(2\Delta+1)(2\Delta+3)]\) |
| \((1,1)\) | \(-2\Delta^2(8\Delta^2+46\Delta+47)/[(2\Delta+1)(2\Delta+3)]\) |
| \((3,1)\) | \(-4\Delta(\Delta+3)(4\Delta^2+20\Delta+19)/[(2\Delta+3)(2\Delta+5)]\) |

These are the already derived Einstein values, including constraints and virtual boundary-graviton contributions. They are dynamical input, not inferred from the protected spectrum.

For reproducible conversion to mode entries, the pair Casimir in either chirality is

\[
C_{12}=-(z_1-z_2)^2\partial_1\partial_2
+\Delta(z_1-z_2)(\partial_1-\partial_2)
+\Delta(\Delta-1).
\]

On pair degree \(d\), its distinct eigenvalues are \(c_k=(\Delta+k)(\Delta+k-1)\), \(0\le k\le d\), so

\[
\Pi_k=\prod_{\substack{0\le j\le d\\j\ne k}}
\frac{C_{12}-c_j}{c_k-c_j},\qquad
w=\sum_{k+\ell\ {\rm even}}g_{k\ell}\Pi_k^{L}\Pi_\ell^{R}.
\tag{2.3}
\]

All denominators are nonzero in the physical domain. Summing the two labelled outputs gives the averaged creation-coordinate entry for an unordered output pair. Multiplying by the number of source pairs gives the many-body entry: \(n_\alpha n_\beta\) for distinct source modes and \(n_\alpha(n_\alpha-1)/2\) for identical ones. This is exactly the original pair-action lift.

#### 2.1 Direct proof by preserved pair-channel support

There is a useful general principle behind both families.

**Affine-support lemma.** Let \(\Psi\ne0\) be a Bose global primary of degrees \((P,Q)\). Suppose that, on every pair channel appearing in \(\Psi\),

\[
g_{k\ell}
=a+\beta(C_k-C_0)+\eta(C_\ell-C_0),
\quad
C_k=(\Delta+k)(\Delta+k-1),\quad C_0=\Delta(\Delta-1).
\tag{2.4}
\]

Then \(\Psi\) is an exact eigenstate of the complete two-body Hamiltonian, with

\[
g=a\binom N2+
\beta P(N\Delta+P-1)+
\eta Q(N\Delta+Q-1).
\tag{2.5}
\]

**Proof.** Functional calculus for the pair Casimirs replaces each \(w_{ij}\) by the affine expression (2.4) when acting on \(\Psi\). The exact total-Casimir identity is

\[
\sum_{i<j}(C_{ij}^L-C_0)=P(N\Delta+P-1)I,
\]

on the left global primary of degree \(P\), with the analogous right identity. It follows from
\(\sum_{i<j}C_{ij}=C_{\rm total}+(N-2)\sum_i C_i\);
the single-particle weight is \(\Delta/2\).
Summing the affine expression proves (2.5). □

This lemma does not require \(w\) to be affine on all channels. Arbitrary interactions in channels absent from \(\Psi\) are allowed.

Let \(\Pi_{\rm prim}\) be the physical orthogonal global-primary projector at fixed degrees. Each pair Casimir commutes with the global raising and lowering operators, hence with \(\Pi_{\rm prim}\). Primary projection therefore preserves an initial restriction on every pair's channel support.

The seed
\(\operatorname{Sym}(z_1w_1z_2\cdots z_P)\)
has only pair channels \(00,20,11\). After primary projection it still has only those channels. Any three values \(a,b,c\) fit (2.4), uniquely, with

\[
\beta=\frac{b-a}{2(2\Delta+1)},\qquad
\eta=\frac{c-a}{2\Delta}-\beta.
\tag{2.6}
\]

Equation (2.5) at \(Q=1\) gives (1.0). This proves the universal single-family theorem without an intermediate-state sum, a primary-matrix diagonalization, or a Ward-row elimination.

The second seed
\(\operatorname{Sym}(z_1^2w_1z_2\cdots z_{P-1})\)
adds only the channel \(31\). It obeys the same affine formula exactly when

\[
g_{31}=c+\frac{2\Delta+3}{2\Delta+1}(b-a),
\]

which is the stated codimension-one relation. Projection preserves these four channels, and (2.5) gives the second eigenstate at the same level. Nonvanishing, independence, and a direct finite projector are proved in Section 5.

The chiral seed \(\operatorname{Sym}(z_1\cdots z_P)\) has only channels \(00,20\). For every \(N\ge P\ge2\), its nonzero primary projection gives

\[
\boxed{
g_{\rm chiral}
=a\binom N2+
\frac{b-a}{2(2\Delta+1)}P(N\Delta+P-1).
}
\tag{2.7}
\]

For nonvanishing, pair the seed with the explicit primary \(\sum_i Z_i^P\), where \(Z_i=z_i-N^{-1}\sum_jz_j\). The coefficient of \(z_1\cdots z_P\) in this primary is
\((-1)^P P!(1-P)/N^{P-1}\), which is nonzero in the stated range.

The earlier report STABLE_N_THEOREM.md, Section 5, already used the total-Casimir identity for the one-dimensional chiral \(P=2,3\) and nonchiral \(P=1,2\), \(Q=1\) blocks. Those low-degree formulas are not new results here. The new step is preserving limited pair support by global primary projection, which constructs actual states at arbitrary \(P\) even when the full block has many levels. The chiral family and (1.0) extend those earlier formulas.

### 3. Two elementary coefficient functionals

On a homogeneous creation polynomial of degrees \((P,1)\), define

\[
\ell_1=[a_{10}^{P-1}a_{11}],\qquad
\ell_2=[a_{10}^{P-2}a_{21}],
\tag{3.1}
\]

where brackets extract that monomial's coefficient. For a primary basis monomial (2.2), direct expansion of (2.1) gives the closed formulas

\[
\boxed{
\ell_1\left(c_{p1}\prod_i c_{a_i0}\right)
=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2\left(c_{p1}\prod_i c_{a_i0}\right)
=(-1)^P\binom p2\prod_i(1-a_i).
}
\tag{3.2}
\]

The theorem reduces to proving

\[
\ell_jW_N=g_P(N)\ell_j
\quad\hbox{on }\ker D_L\cap\ker D_R,\qquad j=1,2.
\tag{3.3}
\]

These are left eigenfunctionals. Section 5 converts them to physical right eigenstates using the exact positive Gram. No artificial projection or removal of a physical mixing matrix element is involved.

### 4. The four Ward identities: a finite all-P proof

Let

\[
X=17\Delta_*-36,\quad Y=911\Delta_*-604,\quad
Z=917\Delta_*-436.
\]

Define four Ward functionals, all acting on source degree \((P,1)\):

\[
L_j=[a_{10}^{P-1-j}a_{j,1}]D_L,\quad j=0,1,2,
\qquad R=[a_{10}^{P}]D_R.
\tag{4.1}
\]

Every primary polynomial is annihilated by them. Direct occupation counting with (2.3) yields the exact identities

\[
\boxed{
\ell_1(W_N-g_P)=
-\frac{3X}{64}\left[L_0+(N-P+1)L_1\right]
+\frac{PY}{64}R,
}
\tag{4.2}
\]

\[
\boxed{
\ell_2(W_N-g_P)=
\frac{Y L_0+Z L_1-6X(N-P+2)L_2-PY R}{128}.
}
\tag{4.3}
\]

Equations (4.2)–(4.3) immediately imply (3.3). They are identities for symbolic \(P,N\), not polynomial interpolation from finitely many values.

#### 4.1 Why this calculation is finite and complete

The two target occupations in (3.1) contain only modes \(00,10,11,21\). A two-body term can alter only two target particles when its incoming row is reconstructed. Its pair degrees are consequently at most \((3,1)\), and a purely chiral active pair has degree at most two. Therefore only the four channels in Section 2 can enter, irrespective of \(P\) or \(N\).

Encode a source by its defect multiset, omitting \(00\) and \(10\). If the defects have total left degree \(s\) and cardinality \(r\), their spectator populations are

\[
n_{10}=P-s,\qquad n_{00}=N-P+s-r.
\tag{4.4}
\]

There are only eight possible generic source defects. The extra one, \(\{01,30\}\), enters through the mode transition \(01+30\to10+21\), whose complete unordered coefficient is

\[
-\frac{18\Delta^2(2\Delta^2+\Delta-4)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)}.
\tag{4.5}
\]

It vanishes exactly at \(\Delta_*\). At that mass, the union of both incoming row supports is contained in the following seven defects. The entire Ward matrix on these sources is displayed; omitted entries are zero.

| Source defects | \(L_0\) | \(L_1\) | \(L_2\) | \(R\) |
|---|---:|---:|---:|---:|
| \(\{01\}\) | \(P\) | 0 | 0 | 1 |
| \(\{01,20\}\) | 2 | 0 | 0 | 0 |
| \(\{11\}\) | 1 | \(P-1\) | 0 | 1 |
| \(\{11,20\}\) | 0 | 2 | 0 | 0 |
| \(\{21\}\) | 0 | 2 | \(P-2\) | 0 |
| \(\{20,21\}\) | 0 | 0 | 2 | 0 |
| \(\{31\}\) | 0 | 0 | 3 | 0 |

Thus the complete verification is two seven-entry row identities. The factors \(N-P+1\) and \(N-P+2\) in (4.2)–(4.3) are actual ground/spectator occupation counts. Larger \(P\) introduces no new source type.

The program edge_functional.py reconstructs the incoming rows directly from the original pair_action backend and proves (4.2)–(4.3) in the exact field \(\mathbb Q(\Delta_*)[P,N]\), using the minimal polynomial \(2\Delta^2+\Delta-4\). Its machine-readable certificate is all_P_protected_certificate.json. The initial automated search used a larger set of fourteen defects and eleven Ward rows; the resulting proof simplifies to the seven defects and four functionals above.

#### 4.2 The endpoints P = 3 and P = 4

For \(P\ge4\), every source in the table has nonnegative \(n_{10}\), and \(N\ge P+1\) supplies nonnegative ground population. Thus the displayed support proof applies directly, including \(P=4\).

At \(P=3\), the source \(\{20,21\}\) does not exist. The complete primary space has basis \((c_{31},c_{11}c_{20})\). Its exact shifted matrix at general mass is

\[
NA+B=(s_{31}N+b_*)I+
\delta_{31}
\begin{pmatrix}N&\beta\\3N+9\beta&0\end{pmatrix},
\]

\[
\delta_{31}=-\frac{6\Delta^2(2\Delta^2+\Delta-4)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)},\qquad
\beta=\frac{\Delta+2}{\Delta}.
\]

At \(\Delta_*\), \(\delta_{31}=0\), \(s_{31}=\sigma_{11}+\sigma_{20}\), and \(b_*=6K\). Hence the full block is exactly \(g_3(N)I\) after adding its ground term. This is checked again in the same certificate, not extrapolated from the large-\(P\) proof.

### 5. Independence, physical states, and projectors

Introduce a useful evaluation map on the entire primary \(Q=1\) module:

\[
\mathcal E(c_{a0})=(1-a)(-t)^a,
\]

\[
\mathcal E(c_{p1})
=p(-t)^{p-1}u+
\binom p2(-t)^{p-2}(v+2tu).
\tag{5.1}
\]

For \(p=1\), the term with the zero binomial coefficient is interpreted as zero. The map is obtained from the uncentered substitution

\[
a_{00}=1,\quad a_{10}=t,\quad a_{01}=0,\quad
a_{11}=u,\quad a_{21}=v+2tu,
\]

with all other nonzero creation variables zero. At degree \(P\),

\[
\mathcal E(f)=
(\ell_1(f)+2\ell_2(f))\,t^{P-1}u+
\ell_2(f)\,t^{P-2}v.
\tag{5.2}
\]

The two functionals are independent for every \(P\ge3\). It suffices to evaluate them on \(c_{P1}\) and \(c_{11}c_{P-1,0}\). The resulting \(2\times2\) determinant is

\[
\det L\big|_{\{c_{P1},\,c_{11}c_{P-1,0}\}}
=\binom P2(2-P)\ne0.
\]

This proves rank two uniformly, including the \(P=3\) endpoint.

Let \(L\) be the \(2\times d\) matrix (3.2), in the complete centered primary basis. Let \(\Gamma\) be its physical Gram. In the full averaged occupation basis,

\[
\Gamma_s=\frac{\prod_\alpha n_\alpha!h_\alpha^{n_\alpha}}
{(N)_{\downarrow r_s}},\qquad
h_{pq}=\frac{p!q!}{(\Delta_*)_p(\Delta_*)_q},
\]

and restriction by the centered embedding gives \(\Gamma>0\) for every stable physical integer \(N\).

Since \(W^\dagger\Gamma=\Gamma W\), (3.3) implies that the columns of

\[
\boxed{\Psi=\Gamma^{-1}L^\dagger}
\tag{5.3}
\]

are two independent right eigenstates at \(g_P\). Their positive \(2\times2\) Gram is \(L\Gamma^{-1}L^\dagger\). The physical orthogonal projector onto this complete lowest eigenspace is

\[
\boxed{
\Pi_{\rm protected}=
\Gamma^{-1}L^\dagger
(L\Gamma^{-1}L^\dagger)^{-1}L.
}
\tag{5.4}
\]

It has rank two, is idempotent, is self-adjoint in the physical metric, and commutes with \(W\). The complete intersection theorem in Section 6.2 proves that (5.4) is the whole eigenspace projector in the stated stable range.

#### 5.1 Physical nonvanishing, boundaries, and a finite projector

The direct projected states do not require the inverse of a growing primary Gram matrix. On fixed left degree \(P\), write \(H=N\Delta/2+P\). The exact extremal projector is the finite sum

\[
\boxed{
\Pi_P^L=
\sum_{k=0}^{P}
\frac{(-1)^k(L_+)^k(L_-)^k}
{k!\,(N\Delta+2P-k-1)_k}.
}
\tag{5.5}
\]

Here the denominator is a rising Pochhammer symbol. In polynomial coordinates,
\(L_-=\sum_i\partial_{z_i}\) and
\(L_+=\sum_i(z_i^2\partial_{z_i}+\Delta z_i)\).
There is an identical right expression, and
\(\Pi_{\rm prim}=\Pi_P^L\Pi_Q^R\).

For completeness, commuting \(L_-\) through the \(k\)-th term gives the recurrence
\(a_{k+1}=-a_k/[(k+1)(2H-k-2)]\), \(a_0=1\).
This is exactly the coefficient in (5.5), so \(L_-\Pi_P^L=0\).
The sum fixes any primary, and every term is physically self-adjoint because \(L_+^\dagger=L_-\). Thus it is the physical orthogonal projector. Its denominators are positive in the stated domain. Commutation with all pair Casimirs follows term by term.

In sparse averaged occupations, lowering a mode gives coefficient \(n_{pq}p\). Raising gives \(n_{pq}(p+\Delta)\), together with the ground term \(\Delta(N-r)a_{10}\), where \(r\) is the number of excited particles. Horner evaluation of (5.5) uses at most \(P\) lowerings and \(P\) raisings. The number of vector coefficients can grow with \(P\), but no Hamiltonian, nullspace, or Gram inverse is constructed.

The projected seeds are proportional to the Gram-dual vectors (5.3), with positive proportionality constants

\[
\Gamma_{T_1}=\frac{(P-1)!}{\Delta^{P+1}(N)_{\downarrow P}},
\qquad
\Gamma_{T_2}=\frac{2(P-2)!}{\Delta^P(\Delta+1)(N)_{\downarrow(P-1)}}.
\tag{5.6}
\]

These are simply the norms of the averaged seed occupations.

A physical polynomial proof also determines the endpoint ranges. The polynomial
\(F_P=\sum_i Z_i^P W_i\), with both coordinates centered, is a global primary. Its coefficients at the two seed monomials are

\[
[z_1w_1z_2\cdots z_P]F_P
=\frac{(-1)^P P!(P-N)}{N^P},
\]

\[
[z_1^2w_1z_2\cdots z_{P-1}]F_P
=\frac{(-1)^P P!(N^2-3N+P)}{2N^P}.
\tag{5.7}
\]

Therefore \(\Phi_1\ne0\) for every \(N\ge P+1\). At \(N=P\), its seed factors as
\((\prod_i z_i)\sum_jw_j/N\), and its right-primary projection is zero. The seed does not exist for \(N<P\). This makes its range sharp.

For \(P\ge3\), \(\Phi_2\ne0\) throughout its full existence range \(N\ge P-1\). Indeed \(N^2-3N+P\ge N^2-3N+3>0\) for \(N\ge2\). Thus on the codimension-one locus there is also a nonzero state at the boundary values \(N=P-1,P\). For the physical Einstein kernel at \(\Delta_*\), the complete multiplicity theorem proves that the corresponding boundary eigenspaces are exactly one-dimensional. The energy remains (1.0). Only when \(N\ge P+1\) are the two independent states both present. The earlier stable-Gram proof is not used outside that range.

The independent audit established (5.7) directly in physical particle polynomials. The new direct projector program checks the \(P=3,N=2\) and \(P=4,N=4\) boundary states against the full original pair Hamiltonian.

### 6. A quotient across all excitation degrees

The evaluation (5.1) has one-dimensional homogeneous images at \(P=1,2\) and two-dimensional images at every \(P\ge3\). Define the weighted left-degree Euler operator

\[
\mathcal D=t\partial_t+u\partial_u+2v\partial_v.
\]

The Ward theorem, together with the directly checked one-dimensional \(P=1,2\) blocks, gives the single graded intertwining identity

\[
\boxed{
\mathcal E W_N=
\left[
\binom N2a+
N\left(\sigma_{11}+\frac{\sigma_{20}}2(\mathcal D-1)\right)
+K\mathcal D(\mathcal D-1)
\right]\mathcal E
}
\tag{6.1}
\]

on the entire stable \(Q=1\) creation module. Here \(N\) is a formal parameter; each degree has its physical realization in the stated stable range.

Consequently \(\ker\mathcal E\) is an invariant graded submodule. The protected eigenvalues are the exact spectrum of this explicit quotient. This identifies a reason for the repeated degeneracy without assuming a global commuting family or integrability.

The protection depends only on \(g_{00},g_{20},g_{11},g_{31}\): any globally covariant two-body kernel preserving those four values has the same incoming rows and retains this quotient. Higher pair channels can alter the complementary spectrum while leaving (6.1) intact. This observation concerns a mathematical class of two-body operators; the physical theory studied here retains its full original kernel.

The same evaluation has not been proved to intertwine the general \(Q\ge2\) Hamiltonian. Equation (6.1) therefore does not solve the complementary \(Q=1\) spectrum or all nonchiral sectors. It is an exact infinite eigenfamily inside the complete finite-block algorithm.

#### 6.1 The general codimension-one condition and the universal single quotient

The doublet does not require four particular numerical values. Treat
\(a=g_{00},b=g_{20},c=g_{11},e=g_{31}\) as independent parameters at any \(\Delta>1\), and define

\[
\mathscr R=(2\Delta+3)(a-b)-(2\Delta+1)(c-e).
\tag{6.2}
\]

For the two displayed functionals to give a common scalar quotient on the entire stable \(Q=1\) creation module, the necessary and sufficient condition is

\[
\boxed{\mathscr R=0.}
\]

Sufficiency follows from the affine-support proof in Section 2.1. For necessity it suffices to examine \(P=3,N\ge4\), where the primary dimension is two. On that whole block,

\[
W-g_{\rm univ}I
=\frac{\mathscr R}{2\Delta+1}\sum_{i<j}\Pi_{31}^{(ij)}.
\]

The positive operator on the right is nonzero. The Bose primary
\(\operatorname{Sym}[(z_1-z_2)^3(w_1-w_2)]\)
is nonzero: after setting \(w=z\), its polynomial is proportional to \(\sum_{i<j}(z_i-z_j)^4\). Its inner product with the unsymmetrized pair-primary term is its own positive norm, so at least one pair-\(31\) projection is nonzero. Two independent eigenfunctionals at the same level would force this two-dimensional block to be scalar. Hence \(\mathscr R=0\). This proves necessity without a generic-\(N\) division.

The independent generic-channel elimination in general_low_channel_quotient.py confirms the same condition and complete eigenvalue (1.0), without inserting the Einstein values. It also checks a complete \(P=3,N=4\) block. This condition concerns the displayed quotient across all degrees; it is not a classification of every possible degeneracy in an individual block.

For the actual Einstein kernel,

\[
\mathscr R_{\rm Einstein}
=-\frac{24\Delta(2\Delta^2+\Delta-4)}
{(2\Delta-1)(2\Delta+5)}.
\tag{6.3}
\]

Its unique physical zero is \(\Delta_*\).

The first functional alone needs no relation. Let
\(\sigma=\Delta(b-a)/(2\Delta+1)\) and
\(\tau=\sigma/2-(c-a)/2\). For arbitrary values of all four low channels,

\[
\ell_1(W-g_{\rm univ})
=-\frac{\sigma}{2}[L_0+(N-P+1)L_1]+P\tau R.
\tag{6.4}
\]

Thus \(\ell_1\) is the universal single-family left eigenfunctional at every mass. A corresponding one-dimensional graded evaluation is

\[
\mathcal E_1(c_{a0})=(1-a)(-t)^a,\qquad
\mathcal E_1(c_{p1})=p(-t)^{p-1}u.
\]

With \(\mathcal D=t\partial_t+u\partial_u\),

\[
\mathcal E_1W=
\left[
a\binom N2+\frac N2(c-a)
+\frac{b-a}{2(2\Delta+1)}
(\mathcal D-1)(N\Delta+\mathcal D)
\right]\mathcal E_1.
\tag{6.5}
\]

On \(\mathscr R=0\), the second Ward identity takes the mass-independent form

\[
\ell_2(W-g_{\rm univ})=
\frac{\tau}{2}L_0+
\left[\frac{\tau}{2}-\frac{(\Delta+1)\sigma}{2\Delta}\right]L_1
-\frac{\sigma}{2}(N-P+2)L_2-\frac{P\tau}{2}R.
\]

At the Einstein critical mass these are exactly (4.2)–(4.3).

#### 6.2 Which exact levels are lowest?

For the Einstein kernel, the affine-support construction also gives a rigorous lower bound in two important regimes. Let the affine plane be (2.4), with (2.6), and denote its residual by
\(\rho_{k\ell}=g_{k\ell}-a-\beta(C_k-C_0)-\eta(C_\ell-C_0)\).
Direct algebra gives

\[
\rho_{40}=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,
\]

\[
\rho_{31}=
-\frac{24\Delta(2\Delta^2+\Delta-4)}
{(2\Delta-1)(2\Delta+1)(2\Delta+5)},
\]

\[
\rho_{51}=
\frac{2\Delta(4\Delta^3+4\Delta^2+53\Delta+44)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0.
\tag{6.6}
\]

The low residuals \(\rho_{00},\rho_{20},\rho_{11}\) vanish. For \(k\ge4,\ell=0\) and \(k\ge5,\ell=1\), the Einstein channel values are constant in \(k\), whereas \(\beta<0\) and \(C_k\) increases. The respective residuals are therefore bounded below by \(\rho_{40}\) and \(\rho_{51}\).

It follows that the chiral family (2.7) is a lowest \(O(G)\) level in the whole \((P,0)\) block whenever \(N\ge P\ge2\), for every \(\Delta>1\). In the \(Q=1\) block, all residuals are nonnegative for \(1<\Delta\le\Delta_*\). Hence (1.0) is a lowest level for \(N\ge P+1\) in that mass interval. At \(\Delta_*\), both independent protected states are lowest; the single boundary state from \(\Phi_2\) also attains the same bound.

These are operator inequalities: the remainder is a sum of nonnegative pair spectral projectors. They do not assume that individual pair projectors commute. The complete kernel is now known, by [LOW_CHANNEL_POWER_IDEALS.md](../recoupling/LOW_CHANNEL_POWER_IDEALS.md), with an independent proof audit in [LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md](../audit/LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md).

The proof uses an exact change of representation, not a spectrum scan. In one chirality, send the Bargmann monomial to

\[
z^p\longmapsto\frac{x^p}{(\Delta)_p},\qquad
\langle x^p,x^q\rangle_F=\delta_{pq}p!(\Delta)_p.
\]

This is unitary; total raising becomes multiplication by \(S=\sum_i x_i\), and lowering becomes \(\sum_i(x_i\partial_i^2+\Delta\partial_i)\). Jacobi-channel triangularity gives the exact equivalence

\[
\text{all pair left channels }k\le r
\quad\Longleftrightarrow\quad
(\partial_i-\partial_j)^{r+1}F=0\quad\text{for every }i<j.
\]

The simultaneous derivative kernel is \(\mathbb C[S]\) times an inverse system on \(S=0\). Its physical primary slice is equivariantly isomorphic to that inverse system: the positive Fischer metric decomposes it orthogonally into primaries and \(S\)-descendants. For cubic root powers, the inverse system is the restriction of squarefree polynomials. For quartic root powers it is the restriction of squarefree monomials and monomials with exactly one squared variable and all other exponents at most one. Elementary straightening in the corresponding power ideals gives upper bounds matched by these explicit polynomial spaces, so the description is complete.

Let \(M_P\) be the permutation module on \(P\)-subsets, and \(R_j\) the module on marked \(j\)-subsets. The quartic inverse system has the exact graded character

\[
[\mathscr D_{3,N,P}]=[M_P]+[R_{P-1}]-[M_{P-1}].
\]

The right degree-one primary is the standard representation of \(S_N\). Its multiplicity in these modules follows by counting nonempty blocks of the subset stabilizer. This gives

\[
K_{\le2,N}(x)=x\frac{1-x^{N-1}}{1-x},\qquad
K_{\le3,N}(x)=(x+x^3)\frac{1-x^{N-1}}{1-x}.
\tag{6.7}
\]

For the Einstein kernel, strict positivity of every residual outside the equality channels turns these intersection dimensions into the **full physical lowest-eigenspace dimensions**:

* For every \(\Delta>1\), the chiral affine level has exact multiplicity one at \(P=0\) and \(2\le P\le N\), and zero at other degrees. In particular the projected chiral family is the unique lowest state in each of its stated blocks.
* For \(1<\Delta<\Delta_*\), the \(Q=1\) affine level has exact multiplicity one for \(1\le P\le N-1\), and zero otherwise. The universal state is the unique lowest state throughout its range.
* At \(\Delta_*\), its exact multiplicity is the coefficient of \(K_{\le3,N}\), giving (1.3). The two projected seeds span the entire lowest eigenspace on their overlap; the second seed spans the endpoint eigenspaces.

For a nonempty primary block outside these degree ranges, the respective affine bound is strict. These statements concern primaries; global descendants inherit the corresponding energies in their own free-energy blocks. For \(\Delta>\Delta_*\), the universal state still exists and its low-channel family has dimension one, but the negative \(\rho_{31}\) prevents this positivity proof. Except for the one-dimensional \(P=1,2\) primary blocks, its complete energy multiplicity is not determined here and is asserted only to be at least one.

#### 6.3 A concrete limit of the low-channel construction

The low-channel spaces do not generally form invariant spectral blocks away from the special affine-support relation. For example, at \(\Delta=2,N=5,(P,Q)=(4,1)\), use the centered basis
\((c_{41},c_{11}c_{30},c_{20}c_{21})\).
The two projected seeds, rescaled to primitive integer columns, are

\[
v_1=(-10,80,99)^T,\qquad v_2=(95,290,-153)^T.
\]

Both have no left pair channel above three. The covector
\(r=(-78,15,-20)\) annihilates both, but direct application of the complete original pair Hamiltonian gives

\[
rWv_2=19200,\qquad
\det[v_1,v_2,Wv_2]=10080000\ne0.
\tag{6.8}
\]

Thus \(\operatorname{rank}[V,WV]=3>\operatorname{rank}V=2\): this two-dimensional low-channel space is not invariant at generic mass. The universal line \(v_1\) survives, while \(Wv_2\) leaves the space. This is an exact counterexample to treating a low-channel or zonotopal filtration as a general diagonalization of the interacting operator.

The state vectors were produced by the direct primary projector, then tested with the old complete pair-action lift. No eigenvalue fitting is involved. The script and certificate are low_channel_noninvariance.py and low_channel_noninvariance.json.

### 7. Executable states and independent checks

The new program protected_family.py provides both the universal families and the critical doublet:

* universal_energy(Delta, P, N=None, pair_values=None): the universal nonchiral level (1.0), with optional arbitrary values of the three relevant low channels.
* universal_state(Delta, P, N): its direct projected sparse physical state, obtained without any Hamiltonian or Gram inverse.
* universal_chiral_energy/state: the corresponding all-degree chiral family.
* protected_second_state(P, N): the direct second state at the critical mass, including the physical boundary values \(N=P-1,P\).
* protected_projected_states(P, N): both critical-mass states in the stable range by the finite projector.
* critical_q1_multiplicity(P, N): the exact all-finite-N multiplicity (1.3), including degrees where the affine bound is not attained.
* protected_energy(P, N=None): the exact full coefficient (1.2), in constant arithmetic complexity with respect to \(P,N\); no basis is generated.
* protected_covectors(P): the actual centered primary labels and the two closed integer rows (3.2). It generates only \(Q=1\) primary partitions, not a Hamiltonian.
* protected_states(P, N, projector=False): the exact Gram-dual basis of the complete critical lowest eigenspace, its physical Gram, and optionally the full eigenspace projector (5.4), for a finite stable integer \(N\). The matrix work grows with excitation degree, independently of the numerical size of \(N\).

The low-level primary_projector.py module is independent of the old Hamiltonian and implements the finite sum (5.5) directly. Its low_channel_state(Delta,P,N,which=1 or 2) and chiral_low_channel_state(Delta,P,N) return sparse averaged-occupation vectors. The older Gram-dual state generator is retained as an independent verification route.

Examples, from the package root:

    python3 analytic_research/pencil/edge_functional.py
    python3 analytic_research/pencil/protected_family.py --delta 2 --p 100000 --n 100001
    python3 analytic_research/pencil/protected_family.py --delta 2 --p 5 --n 6 --states
    python3 analytic_research/pencil/primary_projector.py --delta '(sqrt(33)-1)/4' --p 3 --n 2 --which 2
    python3 analytic_research/pencil/protected_family.py --p 100000 --n 100001
    python3 analytic_research/pencil/protected_family.py --p 6 --covectors
    python3 analytic_research/pencil/protected_family.py --p 4 --n 5 --projector

The critical-mass command with \(P=100000,N=100001\) evaluates the exact level without any finite block construction. Its value is

\[
g_{100000}(100001)=
\frac{-10769804996673+1009929799089\sqrt{33}}{256}.
\]

The finite incoming-row algorithm was independently compared with every column of the old complete \((P,Q)=(6,1)\), \(N=8\), \(\Delta=2\) occupation lift; all thirty columns agreed. That check validates normalization and spectator counting at a generic rational mass. The all-\(P\) critical-mass result is the separate exact Ward identity in the algebraic coefficient field.

The closed covectors were independently compared with direct centered expansions for every \(P=1,\ldots,8\); their ranks matched the theorem. At \((P,Q,N)=(4,1,5)\), the Gram-dual states were checked against the complete physical pair Hamiltonian, and their rank-two projector was verified to be idempotent and physically self-adjoint. The records are protected_family_verification.json. Exact all-\(N\) multiplicity checks at \(P=5,6\) are in critical_P5_Q1_spectrum.json and critical_P6_Q1_spectrum.json.

The direct projector was separately checked against the entire original pair-action Hamiltonian on six states: three nonchiral universal states at two rational masses, the chiral \(P=N=4\) state, and the critical second states at \(P=3,N=2\) and \(P=4,N=4\). The implementation also agrees with both independent Gram-dual vectors at \(P=3,N=4\), including the seed-norm factors (5.6). These records are primary_projector_verification.json and can be reproduced by verify_primary_projector.py.

The independent physics audit reconstructs the two-body action from differential Casimir interpolation without importing pair_action or pencil_tools; it confirms all Ward identities and the complete small-degree boundary block. Its records are in analytic_research/audit/protected_doublet_independent.json.

These checks supplement the algebraic proof; they are not used as interpolation evidence for its all-degree claim. The complementary \(Q=1\) spectrum and general \(Q\ge2\) sectors still require the full finite-block algorithms. The explicit families do not imply integrability or solve the remaining spectrum.

### 8. Relation to the rotating-boson exact-state literature

Papenbrock and Bertsch, *Exact solutions for interacting boson systems under rotation*, [cond-mat/0008286v3](https://arxiv.org/abs/cond-mat/0008286), already constructed interaction-independent elementary-symmetric states in a lowest-Landau-level setting for a broad two-body class. Their center-of-mass projection gives \(e_P(z_i-z_{\rm cm})\), with exact energies determined by low interaction coefficients; see their equations (10)–(16). Their Section 5 also explains why the higher annihilator spaces need not remain invariant under the Hamiltonian. Thus universal special states and the failure of a naive higher filtration are established phenomena, not general principles first invented here.

There is a precise connection to the present chiral states. Set \(x_i=\sqrt{\Delta}\,z_i\) and hold finite \(N,P\) fixed. Then the one-particle norms satisfy
\(\|x^p\|^2=\Delta^p p!/(\Delta)_p\to p!\), and

\[
\frac{L_-}{\sqrt{\Delta}}\longrightarrow\sum_i\partial_{x_i},
\qquad
\frac{L_+}{\sqrt{\Delta}}\longrightarrow\sum_i x_i.
\]

Consequently the finite primary projector (5.5) contracts to

\[
\Pi_P\longrightarrow
\sum_{k=0}^{P}\frac{(-x_{\rm cm})^k}{k!}
\left(\sum_i\partial_{x_i}\right)^k,
\qquad x_{\rm cm}=N^{-1}\sum_i x_i.
\]

Applied to the elementary seed, this is exactly the center-translation projector producing the cited rotating-boson state. At finite \(\Delta\), the physical \(\mathfrak{sl}(2)\) raising operator and norm differ, and ordinary coordinate centering is not in general the orthogonal projector.

The new conclusions here are the finite-\(\Delta\) AdS realization, the nonchiral universal \(Q=1\) family, its exact four-channel doublet condition and boundary states, and the application of the actual Einstein residuals and power-ideal intersections to complete lowest-eigenspace classification. We do not claim that every aspect of the underlying projection or low-channel principle is new to mathematical physics.


---

# 附录 D：四体 complete cluster limit 与 Fredholm/Gamma determinant

独立原文件：`analytic_research/recoupling/FOUR_BODY_CLUSTER_FREDHOLM_THEOREM.md`。本附录中的局部定理及公式编号按该原文件解释。

## Four-body recoupling, complete fixed-chirality cluster limits, and a Fredholm determinant

**Status.** The theorems below are proved under the physical input and the all-index kernel theorem established in the preceding research package. No original Hamiltonian, quantum prescription, or old file is changed. The new finite-P Racah implementation is checked against the original Bargmann polynomial overlaps. Floating-point spectra are identified as such; exact determinants and exact inequality certificates are separate artifacts.

The parameter is the renormalized scalar gap \(d=\Delta>1\). We study \(N=4\), fixed finite right primary degree \(Q\), and \(P\to\infty\). This is an unbalanced high-excitation limit, not a simultaneous large-left/right limit and not a large-particle-number limit. The energy expansion remains \(E=4d+P+Q+G\gamma+o(G)\).

### 1. Physical operator and the distinction between a residual and an energy

Write the established interaction as

\[
 W_4=b_4(Q)I+A_4,\qquad
 b_4(Q)=8d(d-2)-8(2d+Q)(2d+Q-1),
\]

\[
 A_4=\sum_{i<j}\sum_{\alpha=(k,l)\in\mathcal B_Q}
 a_\alpha P^L_{ij,k}P^R_{ij,l},
\qquad
 \mathcal B_Q=\{(k,l):0\le l\le Q, 0\le k\le l+2, k+l\ {\rm even}\}.
\]

Every \(a_\alpha=\gamma_{kl}-[4d(d-2)-8(d+l)(d+l-1)]\) is strictly positive. The pair energy \(\gamma_{kl}\) is the original Einstein two-body answer, including constraints, virtual boundary gravitons, and the fixed one-body subtraction. It is imported unchanged. Cluster additivity below concerns **the positive residual \(A\)**. Converting it to a physical energy requires adding \(b_4(Q)\); gravitational Casimir baselines do not disappear at large \(P\).

Use the orthonormal pair-pair coupled primary states

\[
 F_{k,l;a,b}^{P,Q}
 =\bigl[((12)_k(34)_a)_P\bigr]_L
  \otimes\bigl[((12)_l(34)_b)_Q\bigr]_R,
\]

where \(k+l\) and \(a+b\) are even, \(k+a\le P\), and \(l+b\le Q\). Retain the bad channels \((k,l)\in\mathcal B_Q\). Their orthonormal auxiliary space is \(\mathcal K_{P,Q}\). On it the positive Gram matrix is

\[
 B_{P,Q}=D^{1/2}(I+4R_1+R_0)D^{1/2},
 \qquad D_{k,l;a,b}=a_{kl},
\tag{1}
\]

where \(R_1\) and \(R_0\) are the compressed permutations \((23)\) and \((13)(24)\). Its strictly positive eigenvalues, with multiplicity, are precisely those of \(A_4\). Its zero eigenvalues are auxiliary dependencies, **not** the physical Casimir-baseline eigenspace. The latter multiplicity remains the proved logarithmic-kernel coefficient.

The construction also recovers states without expanding degree-\(P\) polynomials. If \(Bv=\lambda v\), \(\lambda>0\), and \(v^*v=1\), then the normalized physical primary is
\[
 \Psi_v=\sqrt{\frac6\lambda}\,
 \Pi_{S_4}\sum_{\alpha;\beta}\sqrt{a_\alpha}\,
                  v_{\alpha;\beta}F_{\alpha;\beta}^{P,Q}.
\tag{1a}
\]
Indeed \(6S^*S=I+4R_1+R_0\) for \(S(F)=\Pi_{S_4}F\), while
\(A_4=6SDS^*\). These identities prove both the eigen-equation and the normalization in (1a). The finite binary CG rule below defines every vector in the formula. The six-coset symmetrization can be retained as a compact state expression.

### 2. A fully normalized three-\(6j\) expression for the \(9j\) overlap

For lowest-weight vectors \(A,B\) of weights \(h_A,h_B\), fix

\[
 \mathcal C_m(A,B)=\sum_{r=0}^m(-1)^r\binom mr
 \frac{R_A^r A\,R_B^{m-r}B}{(2h_A)_r(2h_B)_{m-r}}.
\tag{2}
\]

Let \(F^{(s_1,s_2,s_3;M)}_{u,v}\) be the real orthogonal overlap of \(((12)_u3)_M\) and \((1(23)_v)_M\), with normalization (2). Put \(c_i=2s_i-1\). Then

\[
 F_{u,v}=\sqrt{\Omega(u;c_3,c_2,c_1;M)
                         \Omega(v;c_1,c_2,c_3;M)}
 {}_4F_3\!\left(\begin{matrix}-v,v+c_2+c_3+1,-u,u+c_1+c_2+1\\
 c_2+1,M+2+c_1+c_2+c_3,-M\end{matrix};1\right),
\tag{3}
\]

\[
 \Omega(n;c_1,c_2,c_3;M)=\binom Mn(2n+c_2+c_3+1)
 \frac{(c_2+1)_n(M+2+c_1+c_2+c_3)_n(c_1+1)_{M-n}}
 {(c_3+1)_n(c_2+c_3+n+1)_{M+1}}.
\]

The formula follows by diagonalizing the intermediate Casimir: its difference equation is the Racah Jacobi equation, its spectrum is \(v(v+c_2+c_3+1)\), and positivity of the endpoint CG coefficients fixes the phases. It is also the standard univariate normalization in [Crampé et al., 2024, §2](https://arxiv.org/html/2403.12148v2).

For one chirality of four identical leaves, \(h=d/2\), the exact overlap is

\[
 \boxed{
 R_1^{P}(k,a;r,c)=\sum_{t=\max(k,r)}^P
 F^{(d+k,h,h;P-k)}_{t-k,a}
 (-1)^{t+k+r}F^{(h,h,h;t)}_{k,r}
 F^{(d+r,h,h;P-r)}_{t-r,c}.}
\tag{4}
\]

**Proof.** Insert the common triple-123 total-degree basis. First rotate \((12)(34)\) to \(((12)3)4\); exchange leaves 2 and 3 within the fixed triple; then rotate \(((13)2)4\) to \((13)(24)\). The first and last rotations are the first and third factors. The middle exchange is \((-1)^{t+k+r}F^{(h,h,h;t)}_{k,r}\). Triple total degree \(t\) is the only summed label. Completeness gives (4), with no infinite-mode sum or polynomial overlap.

In the original polynomial convention each pair seed is \((z_1-z_2)^k\), instead of the canonical \((z_2-z_1)^k\). Thus its one-chirality overlap differs by \((-1)^{k+a+r+c}\). This phase cancels in the simultaneous left/right Bose channels. The complete physical overlap is simply the product of the two canonical versions of (4).

The other permutation is

\[
 R_0^P(k,a;r,c)=(-1)^{P-r-c}\delta_{k,c}\delta_{a,r}.
\]

Consequently, on the simultaneous Bose auxiliary space,

\[
 (R_0)_{\alpha;\beta,\alpha';\beta'}
 =\epsilon\,\delta_{\alpha,\beta'}\delta_{\beta,\alpha'},
 \qquad \epsilon=(-1)^{P+Q}.
\tag{5}
\]

It is nonzero only when **both** pair labels are bad. Its rank is bounded independently of \(P\).

#### Exact relation to the Griffiths family

The overlap is a Griffiths-type, three-Racah convolution, rather than a Tratnik two-factor overlap. In the notation of [Crampé et al., equations (4.2)–(4.5)](https://arxiv.org/html/2403.12148v2), set

\[
 c_0=c_2=c_3=c_4=d-1,\qquad c_1=1-4d-2P,
 \quad i=k, j=a, x=r, y=c.
\]

Writing \(G\) for their Griffiths polynomial, \(w_{r,c}=\Lambda(c;c_3,c_0;P)\Omega(r;c_1,c_2,c_4;P-c)\), and \(n_{k,a}=\Lambda(a;c_4,c_0;P)\Omega(k;c_1,c_2,c_3;P-a)\), one obtains

\[
 R_1^P(k,a;r,c)=(-1)^{P+k+r}\sqrt{w_{r,c}/n_{k,a}}\,G_{k,a}(r,c).
\tag{6}
\]

The weight and norm have the same overall sign \((-1)^P\), so their ratio is positive. The finite convolution range is \(0\le x\le\min(P-a,P-c)\), equivalently the unambiguous ranges in their (4.2)/(4.3) with out-of-grid polynomials zero. `griffiths_mapping.py` verifies the parameter map, normalization, and phase exactly at all entries of five independent blocks, including nonintegral \(d\).

These Racah polynomials diagonalize *intermediate Casimirs*. The Einstein operator contains finite-channel spectral projectors of several incompatible Casimirs. Neither (4) nor (6) supplies a commuting family for that sum. The preceding commutant and Galois obstructions remain in force.

### 3. The changing-space issue and the correct compact decomposition

Temporarily enlarge the auxiliary space by imposing Bose symmetry only on pair 12. Couple the first three particles before the fourth. Its basis is indexed by

\[
 (t,u;\alpha),\qquad 0\le t\le P,\quad 0\le u\le Q,
 \quad\alpha=(k,l)\in\mathcal B_Q,\quad k\le t, l\le u.
\]

Call this space \(\mathcal X_{P,Q}\). In this basis the pair-34 Bose projection is

\[
 H_P=(I+J_P)/2,\qquad J_P=U_{34}|_{\mathcal X_{P,Q}}.
\]

Both \(H_P\) and \(J_P\) commute with \(D\), since they preserve pair-12 labels. The first exchange compresses to

\[
 R=\bigoplus_{t=0}^{P}\bigoplus_{u=0}^{Q} R^{(3)}_{t,u},
 \qquad
 (R^{(3)}_{t,u})_{(k,l),(r,v)}
 =(-1)^{t+u+k+l+r+v}F^{(h,h,h;t)}_{k,r}F^{(h,h,h;u)}_{l,v}.
\tag{7}
\]

The exact four-body matrix on \(\operatorname{ran}H_P\) is

\[
 B_{P,Q}=D+4H_PD^{1/2}R D^{1/2}H_P+W_P K_{22}^{\epsilon}W_P^*.
\tag{8}
\]

Here \(W_P\) is the isometric inclusion of the finite pair-pair space
\(\mathcal E_{22}=\operatorname{span}\{\alpha;\beta:\alpha,\beta\in\mathcal B_Q, l_\alpha+l_\beta\le Q\}\), and

\[
 K_{22}^{\epsilon}=D_{22}^{1/2}(\epsilon S)D_{22}^{1/2},
 \qquad S(\alpha;\beta)=(\beta;\alpha).
\]

In (8), \(D_{22}\) acts by \(a_\alpha\) on the **ordered** pair label \((\alpha;\beta)\).

#### Three elementary decay facts

For fixed \(Q\), only bounded \(k,r,l,v\) occur.

1. The equal-leaf factor satisfies \(F^{(h,h,h;t)}_{k,r}=O(t^{-d})\), from \((d)_t/(2d)_t\) and a fixed terminating Racah sum. Thus
   \[
   \|R^{(3)}_{t,u}\|=O_Q(t^{-d}),\qquad
   \sum_{t,u}\|R^{(3)}_{t,u}\|_1<\infty.
   \tag{9}
   \]
   Compactness needs \(d>0\); the trace-class assertion used below needs \(d>1\).
2. On a fixed finite triple-degree subspace, \(J_P\to0\). Indeed its left entry at fixed pair label \(k\), with \(M=P-k\), is
   \[
   (-1)^{M+r+s}F^{(h,d+k,h;M)}_{r,s}
      =O(P^{-2d-2k}).
   \]
   The right factor stays finite. This is **finite-section/weak convergence**. Since \(J_P\) is an involution, it emphatically does not converge to zero in operator norm on the full changing space.
3. The overlap between a fixed triple-degree state and a fixed pair-pair state is a product of two side factors in (4). The left endpoint asymptotic is
   \[
   F^{(d+k,h,h;P-k)}_{t-k,a}=O(P^{-d})
   \tag{10}
   \]
   for fixed \(t,k,a\). For example its vacuum prefactor is the square root of a ratio with powers \(P^{2k}\) and \(P^{-2d-2k}\). The finite Racah factors do not alter this exponent.

All three statements follow directly from (3), finite products, and the elementary gamma-ratio asymptotic. They hold for each fixed \(d>1\), not just integral \(d\).

#### Finite-section norm approximation

Fix \(T\), and let \(E_T\) include the triple blocks \(t\le T,u\le Q\). Set

\[
 V_P=\sqrt2 H_PE_T,\qquad Y_P=(V_P,W_P).
\]

By (9)–(10), \(Y_P^*Y_P\to I\) on this fixed finite-dimensional domain. For large \(P\) take its polar isometry

\[
 U_P=Y_P(Y_P^*Y_P)^{-1/2}.
\]

Every construction respects the diagonal \(D\), so \(U_P\) intertwines \(D\) exactly. Define

\[
 A^{(3),R}_{t,u}=D_{t,u}^{1/2}(I+2R^{(3)}_{t,u})D_{t,u}^{1/2},
 \qquad A_{22}^{\epsilon}=D_{22}+K_{22}^{\epsilon}.
\tag{11}
\]

Then (8), polar continuity, and the tail estimate give

\[
 \left\|B_{P,Q}-\left[
 U_P\left(\bigoplus_{t\le T,u\le Q}A^{(3),R}_{t,u}
                    \oplus A_{22}^{\epsilon}\right)U_P^*
 +D(I-U_PU_P^*)\right]\right\|
 \le4\|D\|\sup_{t>T,u\le Q}\|R^{(3)}_{t,u}\|+o_{P,T}(1).
\tag{12}
\]

This is a genuine operator-norm approximation, after explicit embeddings. It does not infer spectral convergence from weak convergence alone.

For an explicit error, let \(\delta=\|Y_P^*Y_P-I\|<1\). The polar replacement costs at most

\[
 2\|D\|(\sqrt{1+\delta}+1)
 \frac{\delta}{1+\sqrt{1-\delta}}.
\tag{13}
\]

Every entry of the small Gram \(Y_P^*Y_P\) uses fixed-index \(6j\) coefficients. Thus a chosen finite cluster cutoff supplies an approximation and an error estimate without building the full \(P\)-dependent four-body matrix.

**Fixed-right and auxiliary-space warning.** The matrix in (11) is an auxiliary Gram operator. Its positive spectrum, including multiplicity, satisfies
\[
 \sigma_+(A^{(3),R}_{t,u})=\sigma_+\bigl(W_3(t,u)-b_3(u)I\bigr),
\]
but its zero multiplicity need not equal that of the physical primary operator on the right. If \(t<u\), one must not replace the fixed-right baseline by the routinely optimized, chirality-exchanged subtraction \(b_3(t)\). The *physical* kernel is counted by the oriented series \(K_3\) below and vanishes for \(t<u\). The *auxiliary* nullity is counted by \(Z_3\), and can be nonzero there: at \((t,u)=(0,1)\), (11) is the one-dimensional zero matrix although the physical Bose-primary space has dimension zero. The code and the determinants below retain all auxiliary zeros explicitly.

### 4. Complete cluster-limit theorem, with multiplicities

Let \(\sigma_+\) retain positive eigenvalues with multiplicity. Along the parity subsequence \((-1)^{P+Q}=\epsilon\), the limiting positive residual spectrum is the closed set

\[
 \boxed{
 \mathfrak S_{Q,\epsilon}
 =\{a_\alpha:\alpha\in\mathcal B_Q\}
 \cup\bigcup_{u=0}^{Q}\bigcup_{t=0}^{\infty}\sigma_+(A^{(3),R}_{t,u})
 \cup\{a_\alpha+a_\beta:l_\alpha+l_\beta\le Q,
              \ \alpha\ne\beta\ {\rm or}\ \epsilon=+1\}.}
\tag{14}
\]

The last set is indexed by **unordered** pairs. A repeated cluster label is allowed only on the even parity subsequence. Distinct labels contribute one positive root; the corresponding two-dimensional ordered-pair block also has one auxiliary zero.

For every isolated value away from the finite atomic set \(\{a_\alpha\}\), the number of four-body positive eigenvalues in a sufficiently small neighborhood eventually equals the sum of its multiplicities in the three-body blocks and pair-pair blocks of (14). Coincident cluster values are counted together. Every such isolated value is attained as a limit. There are no further limiting outliers and no spectral pollution. All non-atomic accumulation points of these discrete branches lie in the finite atomic set.

**Proof apart from zero.** For a fixed distance from the atomic set, (9) leaves only finitely many relevant three-body blocks. Formula (12), Weyl's eigenvalue inequality, and the exact diagonal bulk show convergence and multiplicity stability. First choose \(T\), then \(P\), then send \(T\to\infty\). The pair-pair eigenvalues follow from the blocks
\[
 \begin{pmatrix}a_\alpha&\epsilon\sqrt{a_\alpha a_\beta}\\
 \epsilon\sqrt{a_\alpha a_\beta}&a_\beta\end{pmatrix},
 \qquad (1+\epsilon)a_\alpha
\]
for distinct and identical labels, respectively. To conclude that no additional *positive* eigenvalues can approach zero requires the following exact count; positivity alone would not suffice.

#### The auxiliary-zero identity

Define

\[
 \mathcal B(x,y)=\frac{1+x^2-x^2y^2}{(1-y^2)(1-xy)},
 \qquad \mathcal A(y)=\mathcal B(1,y)=\frac{2-y^2}{(1-y)(1-y^2)}.
\]

Let \(\mathcal M_n\) be the usual two-variable Bose-primary Molien series, and

\[
 K_3=\frac{x^{12}}{(1-x^2)(1-x^3)(1-xy)(1-x^2y)},\qquad
 K_4=\frac{x^{24}}{(1-x^2)(1-x^3)(1-x^4)
                         (1-xy)(1-x^2y)(1-x^3y)}.
\]

The oriented three-body auxiliary-nullity series is

\[
 Z_3(x,y)=\frac{\mathcal B(x,y)}{(1-x)(1-y)}-\mathcal M_3(x,y)+K_3(x,y).
\]

After exact cancellation its denominator, apart from a harmless sign, is
\((1-y)^2(1-xy)(1-x^2y)(1+y+y^2)\), and its numerator has \(x\)-degree seven. Hence each coefficient \([y^u]Z_3\) has degree at most \(2u+7\). In particular there are finitely many three-body auxiliary zeros, and

\[
 z_3(y):=Z_3(1,y)
 =\frac{3y^4-5y^3-2y+6}{(1-y)^4(1+y+y^2)}.
\tag{15}
\]

For four particles,

\[
 Z_4=\frac{\mathcal B\,\mathcal M_2}{(1-x)(1-y)}-\mathcal M_4+K_4.
\]

Its nontransient part is exactly

\[
 Z_4(x,y)=\frac{C(y)}{1-x}+\frac{E(y)}{1+x}+\mathcal R(x,y),
\quad
 C=\frac{z_3}{1-y}+\frac{\mathcal A(y)^2}{2(1-y)},
 \quad E=-\frac{\mathcal A(y^2)}{2(1+y)}.
\tag{16}
\]

The remainder's numerator has \(x\)-degree 15, and its only \(x\)-dependent denominator factors are \((1-xy)(1-x^2y)(1-x^3y)\). Thus \([y^Q]\mathcal R\) has degree at most \(15+3Q\). For **every** \(P>15+3Q\), the exact auxiliary nullity is therefore

\[
 \boxed{
 Z_{4;P,Q}=[y^Q]\left\{
 \frac{z_3(y)}{1-y}
 +\frac{\mathcal A(y)^2-\epsilon\mathcal A(y^2)}{2(1-y)}\right\}.}
\tag{17}
\]

The first term counts every zero of every \(A^{(3),R}_{t,u}\), \(u\le Q\). The second counts one zero for every distinct unordered pair and, for \(\epsilon=-1\), one for every identical pair. It is exactly the zero multiplicity of the limit decomposition. Consequently the eigenvalues near zero supplied by (12) are exhausted by exact auxiliary zeros. No positive four-body sequence can approach zero.

Equations (15)–(17) are symbolic rational identities, not fitted rank data. `verify_cluster_counts.py` stores their full numerators/denominators and independently checks 63 coefficients through \(Q=20\). At \(Q=0\) the two nullities are 7 and 9; at \(Q=2\) they are 64 and 68.

### 5. Atomic counting measure and spectral determinants per positive rank

For a bad label \(\alpha=(k,l)\), its auxiliary multiplicity is

\[
 n_\alpha(P,Q)=\sum_{b=0}^{Q-l}\#\{0\le a\le P-k:a+b\ {\rm even}\}
 =\tfrac12(Q-l+1)P+O_Q(1).
\]

The auxiliary nullity is bounded, so the same leading count governs the physical positive rank \(r_{P,Q}\). Formula (12), or trace-norm approximation directly, proves

\[
 \frac1{r_{P,Q}}\sum_{\lambda>0}\delta_\lambda
 \ \Longrightarrow\ 
 \sum_{\alpha=(k,l)\in\mathcal B_Q}
 \frac{Q-l+1}{\sum_{\beta=(r,v)\in\mathcal B_Q}(Q-v+1)}\delta_{a_\alpha}.
\tag{18}
\]

Repeated atom locations have their weights added. Outside any fixed neighborhood of the atoms there are only \(O_{Q,\varepsilon}(1)\) positive outliers. The full primary-space normalized measure, including the much larger exact baseline eigenspace, instead tends to a point mass at \(b_4(Q)\).

Stieltjes transforms and all fixed positive moments converge to the corresponding finite atomic expressions. The no-positive-root-to-zero conclusion gives also

\[
 \lim\frac1{r_{P,Q}}\log\det A_{4,+}
 =\sum_\alpha w_\alpha\log a_\alpha,
\]

with \(w_\alpha\) from (18). These leading normalized statements discard all finitely weighted cluster outliers. The next theorem retains them.

### 6. The full limiting Fredholm determinant

For real \(s>0\), define the **auxiliary** determinant ratio

\[
 \mathcal F_{P,Q}(s)=
 \frac{\det(sI+B_{P,Q})}{\prod_{\alpha\in\mathcal B_Q}(s+a_\alpha)^{n_\alpha(P,Q)}}.
\tag{19}
\]

Its limit along \((-1)^{P+Q}=\epsilon\) exists and equals

\[
 \boxed{
 \mathcal F_{Q,\epsilon}(s)=
 \prod_{u=0}^{Q}\prod_{t=0}^{\infty}
 \frac{\det(sI+A^{(3),R}_{t,u})}
      {\prod_{\alpha\in\mathcal B_{t,u}}(s+a_\alpha)}
 \ \times\ \mathcal F_{22,Q,\epsilon}(s).}
\tag{20}
\]

Here \(\mathcal B_{t,u}=\{(k,l):l\le u,k\le\min(t,l+2),k+l\ {\rm even}\}\). The finite pair factor is

\[
 \mathcal F_{22,Q,\epsilon}(s)=
 \prod_{\substack{\{\alpha,\beta\}\subset\mathcal B_Q\\
 \alpha\ne\beta, l_\alpha+l_\beta\le Q}}
 \frac{s(s+a_\alpha+a_\beta)}{(s+a_\alpha)(s+a_\beta)}
 \prod_{\substack{\alpha\in\mathcal B_Q\\2l_\alpha\le Q}}
 \frac{s+(1+\epsilon)a_\alpha}{s+a_\alpha}.
\tag{21}
\]

**Proof.** Normalize (8) by \((s+D)^{-1/2}\), which commutes with all embeddings used above. The perturbation of the identity is trace class uniformly in the changing finite spaces. Its triple tail has trace norm bounded by a constant times \(\sum_{t>T,u}\|R^{(3)}_{t,u}\|_1=O(T^{1-d})\). For fixed \(T\), polar orthogonalization of \((V_P,W_P)\) makes the normalized perturbation converge in trace norm to the direct sum of the normalized finite triple blocks and the pair-pair block. Fredholm determinants are continuous in trace norm. Send \(P\to\infty\), then \(T\to\infty\). This proves (20); absolute convergence follows from \(d>1\).

An explicit tail majorant is available. If \(a_t=(d)_t/(2d)_t\), then

\[
 \sum_{t=T}^\infty a_t=a_T\frac{T+2d-1}{d-1}.
\tag{22}
\]

The finite remaining weight and Racah factors admit monotone rational upper bounds for \(t\ge T\); `cluster_spectrum.py` implements one. Equation (22) follows either by telescoping or by summing the beta-integral representation of \(a_t\). It supplies a computable trace-tail error, not merely a formal convergence assertion.

The zero of (20) at \(s=0\) has order (17). Removing that known power gives the corresponding normalized positive pseudodeterminant. On complex domains separated from \(-a_\alpha\), the same proof gives the usual analytic Fredholm determinant; zeros encode all isolated cluster eigenvalues with their total multiplicities. One should not extend a logarithm across those zeros without specifying a branch.

The existence of additive high-spin cluster branches is related to [Derkachov–Manashov, hep-th/9604173](https://arxiv.org/abs/hep-th/9604173), which construct such limits for the one-loop scalar \(\phi^4\) operator. The present result additionally specifies the **complete fixed-\(Q\) four-body limit**, excludes further outliers by a norm approximation, identifies auxiliary zeros, and gives the determinant. It concerns the Einstein finite-channel residual, not an identification of the original full gravitational Hamiltonian with the \(\phi^4\) operator.

### 7. Integral gap: the infinite product is a finite Gamma expression

Assume \(d\in\{2,3,\ldots\}\). For \(t\ge Q+2\), all bad-channel sets in (20) have fixed size. On either parity of \(t\), the rationally gauged three-body matrix has entries rational in \(t\), because

\[
 \frac{(d)_t}{(2d)_t}=\frac{(d)_d}{(t+d)_d}
\]

and every remaining Racah product has bounded length. Therefore

\[
 f_{u,\eta}(t;s):=
 \frac{\det(sI+A^{(3),R}_{t,u})}{\prod_{\alpha\in\mathcal B_{\infty,u}}(s+a_\alpha)}
 =\frac{\prod_j(t-\alpha_j(s))}{\prod_j(t-\beta_j(s))},
 \qquad \eta=(-1)^t,
\tag{23}
\]

after common factors cancel. Equal degrees and unit leading ratio follow from \(f\to1\). Since \(f=1+O(t^{-d})\) with \(d\ge2\), the root sums are equal as well. For the first \(m\ge Q+2\) of the required parity,

\[
 \boxed{
 \prod_{n=0}^{\infty} f_{u,\eta}(m+2n;s)
 =\prod_j\frac{\Gamma((m-\beta_j(s))/2)}
                   {\Gamma((m-\alpha_j(s))/2)}.}
\tag{24}
\]

This is just the finite Gamma-product identity followed by cancellation of the large-cutoff power. It holds with root multiplicities; apparent coincidences are handled by limits. For \(s>0\) no factor sampled on the physical grid vanishes. Complex roots are paired consistently. The finite low-\(t\) prefix and (21) complete the formula.

Thus, for every fixed integer \(d\) and finite \(Q\), **the entire limiting four-body Fredholm determinant is determined by finitely many polynomial roots and Gamma functions**. No arbitrarily high three-body level or four-body matrix has to be formed. This is not a finite-\(P\) closed energy formula. For nonintegral \(d>1\), (20) is the established general result; an analogous finite Gamma reduction has not been proved.

This finite construction also has an explicit degree bound. For a fixed \(u\), let \(K=u+2\) and \(r_u=|\mathcal B_{\infty,u}|\). A common denominator for every rationally gauged Racah entry divides, up to constants,
\[
 \mathcal D(t)=(t+d)_d(t+d-K)_K(t+2d)_K
                    (-t)_K(t+3d-1)_K.
\]
Its degree is \(d+4K\). Clearing this denominator in the \(r_u\)-dimensional determinant gives numerator and denominator degree at most \(r_u(d+4K)\). Cancelling common factors can only reduce this bound. Thus the number of algebraic roots and Gamma factors is bounded solely by \(d,Q\), with a conservative \(O(Q^4)\) total bound at fixed \(d\), rather than by the four-body excitation \(P\). Polynomial-domain determinants implement this procedure exactly in `integer_gamma_tail.py`.

#### Explicit completed example: \(d=2,Q=0\)

The two atoms are \(a_0=24/5\), \(a_2=8/35\), each with limiting weight \(1/2\). Put \(C=(t+2)(t+3)\), \(L(s)=(5s+24)(35s+8)\). For \(t\ge2\),

\[
 f_{0,\eta}(t;s)=\frac{N_\eta(C;s)}{L(s)C^2(C-2)(C-6)},
\]

\[
\begin{aligned}
N_\eta(C;s)={}&L(s)C^2(C-2)(C-6)\\
&+\eta\bigl[16800s\,C(C^2-32C+396)
          +34560C(C^2-64C+908)\bigr]\\
&-19353600(C-18).
\end{aligned}
\tag{25}
\]

Let \(C_{\eta,j}(s)\), \(j=1,\dots,4\), be the four roots of this explicit quartic. Its eight total-degree roots are
\(\alpha_{\eta,j,\pm}=(-5\pm\sqrt{1+4C_{\eta,j}})/2\). The denominator roots are \(0,-1,-2,-2,-3,-3,-4,-5\). In (24) take \(m=2\) for \(\eta=+1\), \(m=3\) for \(\eta=-1\), multiply both parity factors, and multiply the prefix

\[
 \frac{s+72/5}{s+24/5}\frac{s}{s+24/5}
\]

and the pair factor (21). This is a fully explicit finite special-function expression for the limiting determinant, for either four-particle parity.

`fredholm_determinant.py` verifies (25) as a full two-variable rational identity in \(t,s\), separately for both parities, and also checks 22 exact three-body blocks independently. It evaluates the Gamma formula at 60 digits. Independent products through \(t=4000\) agree with its logarithm up to the expected omitted tail; the observed discrepancies at \(s=1,5,20\) are approximately \(1.29\times10^{-6}\), \(4.13\times10^{-7}\), and \(1.32\times10^{-7}\), for both parities. These are truncation errors, not claimed 60-digit checks of the infinite product.

#### Completed nonchiral Gamma calculation

The construction has also been carried out at \(d=2,Q=1,s=20\). In addition to the preceding \(u=0\) quartics, each \(u=1\) parity requires one degree-ten polynomial in \(C=(t+2)(t+3)\); the common denominator is
\[
49512859\,C^4(C-12)(C-6)^2(C-2)^3.
\]
Both exact numerators are saved in `nonchiral_gamma_verification.json`. The finite prefix consists of \(t=0,1,2\); its three factors are \(25/31\), \(8875/7843\), and \(1413125/1388211\). The even tail starts at \(t=4\) and the odd tail at \(t=3\). The pair atoms are
\[
a_{00}=24/5,\qquad a_{20}=8/35,\qquad
a_{11}=312/35,\qquad a_{31}=8/21.
\]
Combining both \(u\) sectors and the pair factor gives, for \(\epsilon=+1\),
\[
\log\mathcal F_{1,+}(20)
=-0.0358546286698960811729531052143874137590\ldots.
\]
This value uses only finite polynomial roots and Gamma functions. Twenty-four exact block identities check the tail construction independently. The direct three-body product through \(t=2000\) gives \(-0.03585278663652159\), whose \(1.8420\times10^{-6}\) difference is the omitted tail. The computed finite four-body matrix at \(P=513,Q=1\) gives \(-0.035807143456622725\); it differs from the limiting Gamma value by \(4.7485\times10^{-5}\). The limits and the finite-\(P\) calculation are mathematically different objects and are labelled accordingly.

### 8. A new exact asymptotic energy separation

For \(d=2,Q=0\), along **either** parity,

\[
 \boxed{\lim_{P\to\infty}\lambda_{\min,+}(A_4)
 =\frac{33220-4\sqrt{66856729}}{15015}
 =0.03420674817217488399\ldots.}
\tag{26}
\]

It is the lower eigenvalue of the three-body \((t,u)=(9,0)\) block. Its exact polynomial is
\(825825x^2-3654200x+124032\). The proof is not based on scanning a finite spectrum: all other positive three-body blocks through \(t=128\) are bounded below by the rational \(7/200\) using exact traces and determinants. For every \(t\ge129\), the explicit bound
\[
 \|R^{(3)}_{t,0}\|\le\frac{13289}{1752256}
\]
implies
\[
 \lambda_{\min}(A^{(3),R}_{t,0})
 \ge\frac8{35}-2\frac{24}{5}\frac{13289}{1752256}
 =\frac{597059}{3833060}>\frac7{200}.
\]

The atoms and two-pair branches are also above \(7/200\). The complete cluster theorem therefore proves (26). The exact rational certificate is reproducible in `cluster_minimum_certificate.json`. At \(P=256\), the computed floating-point minimum is \(0.0341974129880\), already close to the limiting value. The corresponding physical correction is \(b_4(0)+\lambda\), with \(b_4(0)=-96\).

### 9. What is solved and what is not

The original high-degree polynomial-overlap stage has been eliminated for all finite \(N=4,P,Q\). The new engine returns exact rational matrices and exact characteristic polynomials, or fast orthonormal numerical spectra. Fixed \(Q\) all-outlier asymptotics, multiplicities, the positive-root exclusion at zero, the positive counting measure, and the limiting Fredholm determinant are established. Integral \(d\) gives the additional finite Gamma representation.

Numerical validation is separate from these proofs. At \(d=2,P=512,Q=2\), the complete 3327-dimensional auxiliary matrix has 3263 positive roots. Its computed eigensystem has Frobenius eigen-equation residual \(7.58\times10^{-12}\) and orthogonality residual \(1.85\times10^{-13}\). These are floating-point backward-error diagnostics. Independently, the 65-dimensional \(P=64,Q=0\) matrix has a **rigorous forward operator-norm error bound** \(1.052\times10^{-13}\), obtained by exact rational square-root intervals against every exact CG-normalized entry. Full data and the certificate are in `numerical_cluster_checks.json` and `numeric_matrix_forward_certificate.json`.

The generic finite-\(P\) positive four-body characteristic polynomial still has degree growing linearly with \(P\); the prior \(S_5/S_6\) examples rule out a universal radical formula. The Racah bispectral equations do not close on the truncated Einstein operator as a scalar three-term spectral recurrence. No integrability claim is made. The present results identify a genuine high-excitation mathematical structure and a substantially better finite algorithm without replacing the remaining finite-spectrum problem by a claim of closed-form diagonalization.

The companion `ALL_N_F_MOVES.md` gives the exact arbitrary-\(N\) binary-tree construction, a finite move bound, reachable channels, Bose fractional parentage without factorial permutation enumeration, and arithmetic/contraction-width complexity. The complete new optimized backend is presently \(N=4\); an arbitrary-\(N\) tree compiler and fractional-parentage backend have not been implemented here.

#### Reproduction and primary references

All commands should be run with `PYTHONDONTWRITEBYTECODE=1` and the supplied dependency path, so old material remains unchanged. Main files: `su11_recoupling.py`, `four_body_racah.py`, `verify_recoupling.py`, `verify_four_body.py`, `cluster_spectrum.py`, `verify_cluster_counts.py`, `fredholm_determinant.py`, and `griffiths_mapping.py`.

- Genest–Vinet, [The Generic Superintegrable System on the 3-Sphere and the 9j Symbols of su(1,1), SIGMA 10 (2014), 108](https://sigma-journal.com/2014/108/): the positive-discrete four-leaf 9j problem and recurrence structure.
- Post, [Racah Polynomials and Recoupling Schemes of su(1,1), SIGMA 11 (2015), 057](https://sigma-journal.com/2015/057/): intermediate-Casimir recoupling and multivariate Racah algebras.
- Crampé et al., [Griffiths polynomials of Racah type, arXiv:2403.12148v2](https://arxiv.org/html/2403.12148v2): the exact three-Racah convolution and its normalization used in (6).
- Derkachov–Manashov, [Generic scaling relation in the scalar phi4 model, hep-th/9604173](https://arxiv.org/abs/hep-th/9604173): constructive high-spin cluster-limit precedent. Their [hep-th/9505110](https://arxiv.org/abs/hep-th/9505110) treats the original scalar anomalous-dimension spectral problem; it does not by itself diagonalize the present Einstein pseudopotential.


---

# 附录 E：全粒子数 tree/F-move recoupling 与复杂度界

独立原文件：`analytic_research/recoupling/ALL_N_F_MOVES.md`。本附录中的局部定理及公式编号按该原文件解释。

## Binary-tree Racah recoupling for every finite particle number

**Scope.** This note gives an exact constructive replacement for polynomial overlaps at arbitrary finite \(N\). The local \(F\)-move evaluator and the complete \(N=4\) contraction are implemented and independently verified in this package. The arbitrary-\(N\) tree traversal and Bose fractional-parentage stages described below are a specified algorithm; they are not advertised as an already optimized, integrated arbitrary-\(N\) numerical backend.

The construction concerns the established Einstein two-body projector sum on scalar primaries. It does not change the quantum prescription or remove any gravitational contribution. It also does not provide a commuting family for that sum.

### 1. States and reachable channels

Let every leaf carry a positive-discrete lowest-weight module \(D^+_h\), \(h=\Delta/2>1/2\). A rooted ordered binary tree specifies a coupled primary basis. At an internal vertex \(v\), with children \(A,B\), choose the relative excitation

\[
n_v\in\mathbb Z_{\ge0},\qquad h_v=h_A+h_B+n_v.
\]

At fixed total primary degree \(P\), the sum of all \(N-1\) internal relative excitations is \(P\). Hence the labelled one-chirality primary multiplicity is exactly

\[
d_N(P)=\binom{P+N-2}{N-2}.
\tag{1}
\]

There is no upper-spin triangle bound in a positive-discrete tensor product. The exact admissibility condition is \(h_v-h_A-h_B\in\mathbb Z_{\ge0}\). The finite upper bounds in a fixed-\(P\) calculation come entirely from the total-degree budget. This distinction prevents an inappropriate use of compact \(su(2)\) channel ranges.

The two chiral trees are coupled by simultaneous Bose symmetry. Imposing separate left and right symmetry would lose physical states. A temporary labelled basis has size \(d_N(P)d_N(Q)\); symmetry is imposed on its diagonal \(S_N\) action.

### 2. Two local rules suffice

Consider a local reassociation

\[
((A B)_u C)_{M-u}\longleftrightarrow
(A(B C)_v)_{M-v}.
\]

All internal labels inside \(A,B,C\) and outside this three-subtree region are spectators. Once those labels are fixed, \(h_A,h_B,h_C\) and \(M\) are fixed, and the change of basis is the orthogonal matrix

\[
F^{(h_A,h_B,h_C;M)}_{u,v},\qquad 0\le u,v\le M,
\tag{2}
\]

given with its normalization and phase in equation (3) of the companion four-body theorem. Exchanging the two children of a vertex gives

\[
\mathcal C_n(B,A)=(-1)^n\mathcal C_n(A,B).
\tag{3}
\]

Equations (2)–(3) completely determine any overlap of two coupling trees, including trees with different leaf order. Insert the intermediate complete coupled basis after every move. The resulting finite sum of products is a higher \(3nj\) coefficient. Orthogonality of each \(F\) matrix proves independence from the chosen move path; the pentagon and permutation identities follow because both paths are the same change of an actual orthonormal basis.

This is the usual coupling-tree interpretation of positive-discrete \(su(1,1)\) \(3nj\) symbols, made explicit here in the physical primary normalization. See Lievens–Van der Jeugt, *J. Math. Phys.* **43** (2002), 3824–3849, [author-deposited full text](https://backoffice.biblio.ugent.be/download/324023/453015), DOI [10.1063/1.1482149](https://doi.org/10.1063/1.1482149). The recoupling principle itself is established representation theory, not a new integrability result.

#### A finite move bound

For a tree with a fixed leaf order, successively exposing its left spine converts it to a left comb in at most \(N-2\) rotations. An adjacent transposition in a comb uses at most two \(F\) moves and one child-swap phase: rotate the adjacent leaves to a common pair, exchange them, and rotate back. At most \(N(N-1)/2\) adjacent transpositions reorder any permutation. Thus any two trees can be connected using at most

\[
L\le 2(N-2)+N(N-1)
\tag{4}
\]

nontrivial \(F\) moves, plus phases. This is a constructive upper bound, not a claim of optimal rotation distance. The sparse exchanges needed by the Einstein frame normally require far fewer moves.

### 3. Exact arithmetic and complexity

Every \(F\) entry is a rational terminating Racah expression times a square root of a positive rational, when the weights are rational. One can retain the square-root normalization externally and work in the original rational CG gauge. Products then have the exact Gram metrics required for physical overlaps.

A whole \(q\times q\) \(F\) block can be generated in \(O(q^2)\) arithmetic operations using the three-term Jacobi recurrence at the known eigenvalues \(v(v+c_2+c_3+1)\). This is preferable to evaluating a separate \(O(q)\)-term hypergeometric sum for every entry. The implemented floating-point routine uses the symmetric tridiagonal Jacobi problem as a stable evaluator; its eigenvalues are already known analytically. It is not diagonalizing the Einstein Hamiltonian at this stage.

For one local move the blocks have sizes \(q_b\le P+1\), and \(\sum_b q_b=d_N(P)\). Applying that move to a full labelled primary vector costs

\[
\sum_b O(q_b^2)\le O((P+1)d_N(P)).
\tag{5}
\]

A two-chirality move path therefore has the safe bound

\[
O\!\left(L(P+Q+2)d_N(P)d_N(Q)\right)
\tag{6}
\]

arithmetic operations per transformed vector, with vector storage \(O(d_N(P)d_N(Q))\), plus the chosen cached local blocks. At fixed \(N,Q\), this is \(O(LP^{N-1})\). The bound permits streaming rather than forming an entire dense change-of-basis matrix.

The positive Einstein pair frame has \(r_{\rm aux}=O_{N,Q}(P^{N-3})\) columns at fixed \(Q\). Transforming every column separately gives a safe generic overlap bound

\[
O_{N,Q}(LP^{2N-4}),
\tag{7}
\]

once the Bose spectator coefficients are available. Shared contractions improve this bound. In particular the implemented four-body three-\(F\) formula shares complete transforms and obtains \(O_Q(P^3)\) floating-point arithmetic and \(O_Q(P^2)\) memory. Equation (7) is not intended as the optimal \(N=4\) estimate.

These are arithmetic-operation counts. Rational numerator/denominator bit lengths grow with \(P,\Delta,N\); exact bit complexity also includes the cost of multiplication and gcd reduction. There is no claim that a full degree-\(P\) exact determinant has constant bit cost.

#### Tensor contraction width

For a chosen move path, regard each \(F\) factor as a tensor with the channel labels on its incident edges. Prune domains using the nonnegative relative-degree conditions before contraction. If a variable-elimination order has induced width \(w\), and every remaining channel has at most \(D\) values, standard contraction gives time \(O(LD^{w+1})\) and storage \(O(D^w)\). With separate left/right channels, the sharper bound replaces \(D^{w+1}\) by the product of their actual domain sizes, bounded by powers of \(P+1\) and \(Q+1\).

The width depends on the two trees, the chosen move path, and \(N\). It is not uniformly bounded for arbitrary \(N\). A short move path and a small contraction width are related optimization goals, but neither alone guarantees the other. This states precisely where exponential dependence can survive.

#### Comparison with polynomial overlaps

A generic degree-\(P\) polynomial in \(N\) labelled left variables has \(\binom{P+N-1}{N-1}=O(P^{N-1})\) possible monomials. A dense, termwise evaluation of every pair of \(O(P^{N-3})\) frame columns therefore has an \(O(P^{3N-7})\) inner-product stage at fixed \(N,Q\), before coefficient construction. Equation (7) removes this termwise overlap stage, and the dedicated \(N=4\) contraction improves further. This is a comparison with that explicit dense expansion model, not a lower bound against every conceivable sparse polynomial implementation.

The measured exact comparisons use the previous sparse code, with independently identical rational matrices:

| \(P,Q\), \(N=4,\Delta=2\) | Racah seconds | Polynomial seconds | Racah peak Python allocation | Polynomial allocation |
|---|---:|---:|---:|---:|
| \(12,0\) | 0.0420 | 0.1288 | 0.400 MB | 1.835 MB |
| \(16,0\) | 0.0753 | 0.3988 | 0.626 MB | 4.873 MB |
| \(10,2\) | 0.2523 | 5.0737 | 2.515 MB | 26.018 MB |

Timing and allocation were measured in separate passes; allocation tracing was not included in the reported timings. The raw data, environment, and matching exact matrix hashes are in the exact benchmark attachment.

### 4. Bose fractional parentage without \(N!\) enumeration

Suppose an orthonormal or rational-metric basis of \(\operatorname{Sym}^{n-1}\mathcal H_1\) is already available. Couple an additional leaf using the binary CG rule. On the subspace symmetric in the first \(n-1\) leaves, the full symmetrizer is

\[
\Pi_n=\frac1n\sum_{i=1}^n U_{(i\,n)}\Pi_{n-1}.
\tag{8}
\]

This follows by decomposing \(S_n\) into \(n\) cosets of \(S_{n-1}\), so it requires \(n\) permutation transforms at that step. Each transform is a path of local \(F\) moves. Select a basis of its image, using the actual positive Gram metric, and continue recursively. This produces exact coefficients of fractional parentage and enforces simultaneous left/right Bose symmetry.

The image selection remains a real linear-algebra task. Formula (8) eliminates factorial group enumeration; it does not make the multiplicity spaces one-dimensional or prove a uniform low-cost algorithm as \(n\) grows.

For the Einstein frame, apply the same recursion to the \(N-2\) spectator particles. The overlap \(R_1=(23)\) is particularly economical after splitting one spectator leaf from the remaining \(N-3\) cluster: the shared cluster labels are conserved, and the active recoupling involves four effective subtrees with generally unequal weights. Its contraction is again a sequence of local \(F\) moves. For \(R_0=(13)(24)\), split two spectator leaves or their pair from the remaining \(N-4\) cluster. At most five effective subtrees participate; the rest are conserved spectator labels.

Thus arbitrary-\(N\) overlaps are not fundamentally new high-degree integrals. Their extra complexity is the number of spectator multiplicity labels and the contraction graph, both explicitly visible in this construction.

### 5. Why the Racah recurrence does not immediately solve the physical spectrum

Intermediate Casimirs have polynomial or Jacobi eigenfunctions in an appropriate coupled basis. The physical residual is a sum of *spectral projectors* of incompatible pair Casimirs, with several unequal coefficients \(a_{kl}\). The bad-channel cutoff is not preserved by the ordinary Racah difference operators: shifts cross its boundary. After Bose projection, different recoupling channels also mix.

For \(N=4\), the exact result is nevertheless stronger than an arbitrary growing matrix. In the triple-degree basis its exchange is block diagonal in bounded three-body matrices, while the pair-34 Bose involution mixes those blocks and the pair-pair exchange has finite rank. This gives the norm and Fredholm theorems in the companion note. It does not yield a finite-\(P\), fixed-width scalar spectral recurrence with coefficients already determined by a standard orthogonal-polynomial family.

Any finite Hermitian matrix admits a Lanczos tridiagonalization; invoking that fact alone would just rewrite the same spectral problem. The previous explicit commutant and Galois calculations also remain applicable: they obstruct particular coefficient-independent charges and universal radical formulas, not every possible notion of integrability.

### 6. Reproducible scope of the new implementation

- Arbitrary positive unequal-spin local \(F\) blocks: implemented exactly and numerically, with phase and orthogonality checks.
- All finite four-particle pair-pair overlaps and complete finite spectra: implemented, including nonchiral sectors, exact rational determinants, and fast numerical evaluation.
- General binary-tree recoupling, the finite move bound, reachable-channel rules, and complexity estimates: proved constructive algorithm.
- An optimized arbitrary-\(N\) tree compiler plus Bose fractional-parentage backend: not implemented in this round. The previous arbitrary-\(N\) exact spectrum program remains available, and this note specifies how its polynomial overlap stage can be replaced.

The distinction matters: the all-\(N\) representation-theoretic construction is exact, while the demonstrated acceleration and complete new recoupling backend are presently \(N=4\).


---

# 附录 F：Stable-N pencil 的完整解析结构与谱曲线

独立原文件：`analytic_research/pencil/ANALYTIC_PENCIL_RESEARCH.md`。本附录中的局部定理及公式编号按该原文件解释。

## Stable-N Einstein scalar pencils: analytic normal form, genuine resonances, and protected degeneracies

Research continuation, 2026-10-19. All earlier reports and programs were treated as read-only inputs. The new executable work is in this directory. This note studies the already determined coefficient of \(G\); it does not assert a uniform large-\(N\) weak-coupling expansion.

### 1. Precise problem and new conclusions

Fix finite left/right excitation degrees \((P,Q)\), \(\Delta>1\), the earlier boundary conditions and quantum prescription, and the scalar branch without independent free gravitational excitations. Write

\[
 E=N\Delta+P+Q+Gg+o(G),\qquad
 W_N=\binom N2 a+N A+B,\qquad a=g_{00}.
\]

The stable primary pencil exists for every integer \(N\ge\max(1,P+Q)\). Its matrices depend on \((P,Q,\Delta)\), not on \(N\). Constraints, sourced metric response, and virtual boundary-graviton exchange remain in the pair kernel from which it is constructed.

The earlier work gave the complete characteristic polynomial of this pencil and all eigenvalues of \(A\), counted algebraically. It explicitly did not prove that \(A\) is diagonalizable. The present work resolves that issue negatively and establishes the appropriate replacement.

**Proved new results.**

1. On the stable centered creation algebra, \(A\) is a quadratic derivation. One-generator splitting vertices determine its action at every excitation degree. Polynomial eigengenerators, when they exist, diagonalize all products at once. Their obstructions are finite Poincare–Dulac resonance equations.
2. For every fixed finite block and every fixed physical \(\Delta>1\), the normalized pencil has an analytic Hermitian realization in \(t=N^{-1/2}\), including at \(t=0\). Consequently all spectral branches have **convergent** expansions in integer powers of \(t\). No fractional exponents with denominator greater than two in \(1/N\) are needed. A precise parity relation pairs possible odd terms.
3. The actual Einstein kernel has nonzero resonant splitting vertices. In the complete stable \((4,1)\) primary block, \(A\) has Jordan type \((2,1)\) at each of the two physical roots of
   \[
   2\Delta^3-37\Delta^2-11\Delta+100=0.
   \]
   The exact finite-\(N\) spectrum has a pair \(g=\binom N2a+N\sigma+\bar b\pm\sqrt{cN+\kappa}\), with \(c>0\). Thus an integer-only \(1/N\) claim is false for the physical Einstein theory.
4. Every stable \(Q=1\) block has an explicit universal eigenstate for every physical mass, obtained by projecting a seed with only three pair channels. At \(\Delta_*=(\sqrt{33}-1)/4\), a fourth channel fits the same affine Casimir plane, giving a lowest eigenspace of exactly two dimensions for all \(P\ge3,N\ge P+1\). The precise doublet condition is proved for arbitrary global two-body kernels. The finite projector constructs these states without a Hamiltonian or Gram inverse; four Ward identities give a separate verification.
5. A constructive Hermitian Taylor and Feshbach recursion determines any prescribed order, including degenerate leading slopes. An implementation and exact checks are supplied. In particular, neither semisimplicity of \(A\), nor the mere presence of an odd matrix coefficient, is used as a substitute for the required branch analysis.

The protected doublets were first observed in finite exact computations, then proved at every excitation degree by a symbolic spectator-counting Ward identity. The full proof and physical state formula are in [ALL_P_PROTECTED_DOUBLETS.md](ALL_P_PROTECTED_DOUBLETS.md).

### 2. Inputs and normalization

The one-particle Bargmann norm is

\[
 h_{pq}=\frac{p!q!}{(\Delta)_p(\Delta)_q}.
\]

Let a stable occupation label \(s\) contain \(r_s\) nonzero modes, with multiplicities \(n_\alpha\). The averaged symmetric tensor basis has diagonal physical Gram

\[
 \Gamma_s(N)=\frac{g_s}{(N)_{\downarrow r_s}},\qquad
 g_s=\prod_\alpha n_\alpha!\,h_\alpha^{n_\alpha}.
 \tag{2.1}
\]

This normalization matters: changing the number of excited particles changes the power of \(N\) in the metric. It is exactly why one cannot deduce diagonalizability of the coordinate matrix \(A\) from self-adjointness of \(W_N\).

The pair eigenvalues used throughout are the earlier, independently audited physical \(g_{k\ell}\), \(k+\ell\) even. For reference, put \(n=\min(k,\ell)\), \(j=|k-\ell|\), \(h=\Delta+n\), \(\mu=\Delta(\Delta-2)\), \(C=h(h-1)\), and \(u=4\mu-8C\). Then

\[
g_{k\ell}=\begin{cases}
-4\Delta^2+\dfrac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},&n=j=0,\\[4pt]
u\dfrac{2h-2}{2h-1}-\dfrac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},&j=0, n\ge1,\\[4pt]
u+\dfrac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}{(2h-1)(2h+1)(2h+3)},&j=2,\\[4pt]
u,&j\ge4.
\end{cases}
\tag{2.2}
\]

No new local interaction or mass counterterm is introduced here. \(a=g_{00}\). The fixed physical one-body gap has already removed the one-body renormalization ambiguity.

The exact one-mode leading slopes can be written

\[
 \sigma_{pq}=2\sum_{\substack{0\le k\le p,\ 0\le\ell\le q\\k+\ell\ \mathrm{even}}}
 \alpha_{pk}\alpha_{q\ell}(g_{k\ell}-a),
\quad
 \alpha_{pk}=\binom pk\frac{(\Delta)_p}
 {(2\Delta+k-1)_k(2\Delta+2k)_{p-k}},
 \tag{2.3}
\]

for \(p+q>0\), with \(\sigma_{00}=0\). In particular, \(\sigma_{10}=\sigma_{01}=0\). The primary labels are multisets of modes with \(p+q\ge2\), and their leading slopes are the sums of the corresponding \(\sigma_{pq}\).

### 3. A global quadratic derivation

Introduce formal creation variables \(a_{pq}\), with \(a_{00}=1\). Their products mean creation-operator products; they are not pointwise products of averaged \(N\)-variable wavefunctions. The two global lowering derivations are

\[
 D_La_{pq}=p a_{p-1,q},\qquad D_Ra_{pq}=q a_{p,q-1}.
\]

The common kernel is freely generated, in the stable range, by centered moments

\[
 c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
 \binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij},
 \qquad p+q\ge2.
 \tag{3.1}
\]

This statement follows by the invertible translation \(a_{pq}\leftrightarrow(c_{pq},a_{10},a_{01})\): in these coordinates \(D_L=\partial_{a_{10}}\) and \(D_R=\partial_{a_{01}}\).

Let \(K_{\alpha\beta}^{\gamma\eta}\) be the labelled pair-action coefficients, including the Bose-even extension used by the original code, and define

\[
 F_\alpha(a)=\sum_{\gamma,\eta}
 K_{0\alpha}^{\gamma\eta}a_\gamma a_\eta,
 \qquad
 F_{\alpha\beta}(a)=\sum_{\gamma,\eta}
 K_{\alpha\beta}^{\gamma\eta}a_\gamma a_\eta.
\]

Here \(0=(0,0)\). Let \(R=\sum_{\alpha\ne0}a_\alpha\partial_{a_\alpha}\). Occupation counting gives the exact global differential operator

\[
\begin{split}
 W_N={}&\frac a2(N-R)(N-R-1)
       +\left(\sum_{\alpha\ne0}F_\alpha\partial_{a_\alpha}\right)(N-R)\\
     &+\frac12\sum_{\alpha,\beta\ne0}
                  F_{\alpha\beta}\partial_{a_\alpha}\partial_{a_\beta}.
\end{split}
\tag{3.2}
\]

The order of the mixed factor in (3.2) is significant: \(N-R\) acts on the source occupation first. Subtracting \(aN(N-1)/2\) yields

\[
 \boxed{A=\sum_{\alpha\ne0}(F_\alpha-a a_\alpha)\partial_{a_\alpha}},
\qquad
 B=-AR-\frac a2R(R-1)+\frac12\sum_{\alpha,\beta\ne0}
 F_{\alpha\beta}\partial_{a_\alpha}\partial_{a_\beta}.
 \tag{3.3}
\]

Thus \(A\) is a derivation, while \(B\) has differential order at most two. Conservation of the two nonnegative excitation degrees excludes a ground-ground pair from producing excited modes. That is the elementary reason that no higher power of \(N\) survives after the ground subtraction.

Because \(A\) commutes with both lowerings and annihilates \(a_{10},a_{01}\), translating (3.3) and setting the two translation coordinates to zero gives

\[
 \boxed{
 A c_\alpha=\sigma_\alpha c_\alpha+
 \sum_{\substack{\beta+\gamma=\alpha\\|\beta|,|\gamma|\ge2}}
 V_{\alpha;\beta\gamma}c_\beta c_\gamma.
 }
 \tag{3.4}
\]

The coefficient \(V\) is exactly the sum of the two labelled outputs of \(w_{12}|0,\alpha\rangle\), with the usual single term when the two outputs coincide. It is implemented in `generator_splittings`. Applying the Leibniz rule reconstructs every leading primary matrix without an occupation lowering nullspace or a primary-matrix inversion. `splitting_A` has been compared against the independent full pair lift.

#### 3.1 Polynomial normal coordinates and precise obstructions

Seek

\[
 u_\alpha=c_\alpha+\sum_{\substack{\lambda\text{ a nontrivial multiset}\\
                                  \sum_{\beta\in\lambda}\beta=\alpha}}
 u_{\alpha\lambda}c_\lambda,
 \qquad Au_\alpha=\sigma_\alpha u_\alpha.
 \tag{3.5}
\]

Order monomials by the number of factors. At a label \(\lambda\), the equation divides its already determined forcing by

\[
 \sigma_\alpha-\sum_{\beta\in\lambda}\sigma_\beta.
 \tag{3.6}
\]

If every divisor is nonzero through the chosen excitation cutoff, (3.5) has a unique finite polynomial solution. The substitution \(c\mapsto u\) is triangular and invertible. All products \(u_\lambda\) are then eigenvectors of \(A\), simultaneously in every block under that cutoff. This is an actual common construction, rather than separate diagonalizations of growing matrices.

If a divisor vanishes, the corresponding forcing must vanish; otherwise there is a genuine obstruction. Zero forcing leaves a free resonant coordinate. Later equations must retain those freedoms if they can influence solvability. The supplied simple generator routine fixes them to zero and reports this choice; a reported later obstruction in that gauge is not automatically a gauge-independent impossibility. The full finite equation \((A-\sigma_\alpha)u=0\), with the coefficient of \(c_\alpha\) fixed to one, decides it without that ambiguity. A nonzero first binary obstruction has no earlier free coordinate and is decisive.

For this graded algebra, the existence of eigengenerators for every generator is also necessary for semisimplicity on all finite homogeneous blocks. Indeed, the subspace of decomposable monomials is \(A\)-invariant, and the one-generator quotient carries eigenvalue \(\sigma_\alpha\). A semisimple operator splits that quotient, providing an eigenvector lift. The triangular lifts generate the algebra.

This is the finite graded form of the standard Poincare–Dulac homological construction. We use that existing language, and prove the particular derivation (3.3) and the physical resonance certificates separately. A search of symbolic binary divisors through total degree ten found many physical roots; finite scans at \(\Delta=2,3/2,7/3\) through degree twelve found no one-generator resonance. Those scans do not prove a theorem for all degrees or all physical masses.

### 4. Analytic Hermitian realization at \(N=\infty\)

#### Theorem 4.1: the universal local parameter is \(t=N^{-1/2}\)

For every fixed finite \((P,Q)\) and fixed \(\Delta>1\), there is a matrix \(\widehat H(t)\), analytic and Hermitian for all real \(t\) in a neighborhood of zero, whose eigenvalues for positive \(t=N^{-1/2}\) are

\[
 \frac{g-\binom N2a}{N}.
\]

Its value at zero is diagonal, with entries the primary occupation sums (2.3). Furthermore there is a diagonal involution \(\Pi\) such that

\[
 \widehat H(-t)=\Pi\widehat H(t)\Pi,\qquad
 \Pi_{\lambda\lambda}=(-1)^{r_\lambda}.
 \tag{4.1}
\]

Therefore, by the classical Rellich theorem, all eigenvalues and orthonormal eigenvectors admit convergent Taylor expansions in \(t\) near zero. For the physical \(G\)-coefficient,

\[
 \boxed{g_j(N)=\binom N2a+N\sum_{m=0}^{\infty}\lambda_{jm}N^{-m/2}.}
 \tag{4.2}
\]

This theorem allows coincident slopes, Jordan blocks in \(A\), and exact finite-\(N\) degeneracies.

#### Proof

Write the full averaged-occupation Gram (2.1) as

\[
 \Gamma_s=t^{2r_s}g_s f_{r_s}(t^2),\qquad
 f_r(u)=\prod_{j=0}^{r-1}(1-ju)^{-1}.
\]

Choose the analytic signed square root

\[
 U_s(t)=t^{r_s}\sqrt{g_sf_{r_s}(t^2)}.
\]

For positive \(t\), this is the physical square root of the Gram. In the full occupation basis,

\[
 H_{\rm full}(t)=U(t)(A+t^2B)U(t)^{-1}.
\]

The leading \(A\) either keeps a label unchanged or splits one excitation into two. \(B\) can change the number of excitations by at most one. Thus every nonzero matrix entry has a nonnegative power of \(t\). The same-number part of \(A\) is diagonal, so \(H_{\rm full}(0)\) is diagonal. All the remaining factors \(f_r(t^2)^{\pm1/2}\) are analytic near zero.

The exact physical adjoint relation holds at every integer \(N\ge P+Q\). Since the unscaled relation is an identity of rational functions of \(N\), it holds wherever those functions are defined. It follows that \(H_{\rm full}(t)\) is Hermitian for all sufficiently small positive real \(t\), and then for negative real \(t\) by analytic continuation. Changing \(t\) to \(-t\) multiplies row and column \(s\) by \((-1)^{r_s}\), giving the full-space parity relation.

It remains to control the physical primary subspace, whose unscaled metric becomes singular at infinity. Let \(C\) be the integer embedding matrix of products of centered moments into full occupations, with primary columns labelled \(\lambda\). A column has a distinct leading occupation with \(r_s=r_\lambda\); all its other occupations have \(r_s>r_\lambda\). Thus

\[
 V(t)=U(t)C\operatorname{diag}(t^{-r_\lambda})
\]

is analytic and has full column rank at zero. Its Gram \(K(t)=V(t)^*V(t)\) is analytic positive definite near zero, with \(K(0)=\operatorname{diag}(g_\lambda)\). An analytic Cholesky factor \(K=L L^*\) gives an analytic orthonormal frame \(E=V L^{-*}\). Compressing \(H_{\rm full}\) to that frame gives the stated \(\widehat H(t)\). The primary subspace is exactly invariant at positive integer \(N\), hence by the same rational/analytic identity for all relevant \(t\).

The unique positive-diagonal Cholesky factor respects the parity relation of \(K\), so (4.1) survives compression. Rellich now applies to this finite analytic Hermitian family. This proves (4.2) without assuming diagonalizability of the singularly normalized coordinate matrix \(A\). □

Rellich's theorem is an established input; a precise statement is Theorem 1.1 of Barbarino–Noferini, *On the Rellich eigendecomposition of para-Hermitian matrices*, [arXiv:2211.15539](https://arxiv.org/abs/2211.15539). Our new step is the nonsingular centered primary frame and its grading, which establish its hypotheses for the Einstein pencil.

#### 4.2 Consequences and scope

If a leading slope is simple, parity maps its unique local spectral branch to itself. Every odd coefficient in that branch vanishes, and an ordinary convergent \(1/N\) expansion follows.

For a degenerate slope, parity can exchange branches. Odd coefficients are then allowed. If the entire leading eigenspace has a single parity, its exact Hermitian cluster reduction is even in \(t\), and all of its branches can again be expanded in \(1/N\). More generally, one resolves successive nonscalar cluster coefficients; a splitting at an even order can distinguish branches before a later odd coupling appears. Hence merely finding an odd off-diagonal entry does not prove half-integer energy terms.

If the first nonscalar cluster coefficient appears at odd order, it anticommutes with the cluster parity. Its nonzero eigenvalues occur in opposite pairs. Its zero eigenspace has dimension at least the absolute difference between the two parity dimensions. This gives a general count of branches not split at that first odd order.

All statements hold for the coefficient \(g\). They neither require nor imply that \(GN\), or \(GN^2\), remains perturbatively small uniformly as \(N\to\infty\).

There are no physical exceptional points at real \(N>P+Q-1\): the continued Gram is positive there, so the finite pencil is locally analytically diagonalizable and has real eigenvalues. Branchpoints of its algebraic spectral curve can occur elsewhere in the complex \(N\)-plane. At infinity their ramification order is at most two by (4.2).

### 5. The exact protected \((3,1)\) doublet

Use the complete stable primary basis

\[
 (c_{31},\ c_{11}c_{20}),\qquad N\ge4.
\]

Put \(D_4=(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)\),

\[
 \delta_{31}=\sigma_{31}-\sigma_{11}-\sigma_{20}
 =-\frac{6\Delta^2(2\Delta^2+\Delta-4)}{D_4},
 \qquad \beta=\frac{\Delta+2}{\Delta},
\]

and

\[
 b_*=-\frac{6\Delta(10\Delta^3+39\Delta^2+33\Delta-14)}{D_4},
 \qquad s_{31}=\sigma_{11}+\sigma_{20}.
\]

The full shifted pencil is exactly

\[
 N A+B=(s_{31}N+b_*)I+
 \delta_{31}\begin{pmatrix}N&\beta\\3N+9\beta&0\end{pmatrix}.
 \tag{5.1}
\]

Its two eigenvalues are

\[
 \lambda_1=\sigma_{31}N+b_*+3\beta\delta_{31},\qquad
 \lambda_2=s_{31}N+b_*-3\beta\delta_{31}.
 \tag{5.2}
\]

The entire discriminant is the square \(\delta_{31}^2(N+6\beta)^2\). At

\[
 \Delta_*=(\sqrt{33}-1)/4>1,
\]

both off-diagonal interactions vanish with the slope difference, and (5.1) is scalar. Its exact energy correction, with multiplicity two, is

\[
\boxed{
 g_*=\binom N2\frac{-93+13\sqrt{33}}{16}
       +N\frac{939-379\sqrt{33}}{128}
       +\frac{225-81\sqrt{33}}{64},\qquad N\ge4.
}
\tag{5.3}
\]

The two displayed centered basis states span its full eigenspace. Their physical Gram, given explicitly in `pencil_verification.json`, is positive at every physical stable \(N\), so this is a genuine two-dimensional eigenspace. It is not a Jordan collision.

At \(N=3\), the \((3,1)\) primary space has dimension one, and direct finite-\(N\) computation gives the one surviving specialization of (5.3). The stable two-dimensional state space must not be continued through its rank change at \(N=3\). At \(N=2\), its primary dimension is also one.

#### 5.1 The all-degree protected quotient

The low-degree scalar block is the first member of a now-proved infinite family. There is also a universal single family at every physical mass, before imposing the doublet condition. Put \(a=g_{00},b=g_{20},c=g_{11}\). For \(P\ge1,N\ge P+1\),

\[
g_{\rm univ}
=a\binom N2+\frac N2(c-a)
+\frac{(b-a)(P-1)(N\Delta+P)}{2(2\Delta+1)}.
\]

Its physical state is the global-primary projection of
\(\operatorname{Sym}(z_1w_1z_2\cdots z_P)\).
The seed has only pair channels \(00,20,11\), primary projection preserves that support, and any three channel values lie on an affine plane in the two Casimirs. The total-Casimir identity then reads off the exact energy. This mechanism extends the earlier small one-dimensional blocks to arbitrary excitation degree.

The second projected seed \(\operatorname{Sym}(z_1^2w_1z_2\cdots z_{P-1})\) adds only the channel \(31\). It shares the same energy precisely on
\((2\Delta+3)(a-b)=(2\Delta+1)(c-g_{31})\), understood as a statement about these two functionals on the whole stable \(Q=1\) module.

At \(\Delta_*\), put

\[
a=\frac{13\Delta_*-20}{4},\quad
\sigma_{20}=\frac{3(17\Delta_*-36)}{32},\quad
\sigma_{11}=-\frac{215\Delta_*-124}{16},\quad
K=\frac{3(4-9\Delta_*)}{32}.
\]

For every \(P\ge3\), \(N\ge P+1\), the complete stable \(Q=1\) primary block has exactly two physical eigenstates at its lowest correction

\[
\boxed{
g_P=\binom N2a+
N\left[\sigma_{11}+\frac{P-1}{2}\sigma_{20}\right]+KP(P-1).
}
\tag{5.4}
\]

On a centered basis monomial \(c_{p1}\prod_i c_{a_i0}\), with \(a_i\ge2\) and \(p+\sum_i a_i=P\), the two universal left eigenfunctionals are

\[
\ell_1=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2=(-1)^P\binom p2\prod_i(1-a_i).
\tag{5.5}
\]

Their exact physical Gram duals are independent right eigenstates. This is a uniform spectral quotient, not an extrapolation of low-degree characteristic polynomials. The complete proof reduces the two incoming Hamiltonian rows to four Ward jets; only seven source defects survive, and no new source type appears when \(P\) increases. Only \(g_{00},g_{20},g_{11},g_{31}\) enter that calculation.

The dedicated [all-\(P\) proof](ALL_P_PROTECTED_DOUBLETS.md) gives the direct affine-support argument, the four independent Ward identities, a finite raising/lowering primary projector, sharp state-existence ranges, and the physical states. It also proves when these levels are lowest using positive pair residuals, relates the chiral family to the rotating-boson literature, and gives an exact counterexample to generic low-channel invariance. The new programs generate energies without a block and states without a Hamiltonian or Gram inverse. The common-pair-support classification now proves the exact critical multiplicity for all finite \(N\):

\[
\sum_{P\ge0}m_*(N,P)x^P
=(x+x^3)\frac{1-x^{N-1}}{1-x},\qquad N\ge2.
\]

Thus the stable doublet has exactly two states; the \(P=N,N+1\) endpoints each have one. For \(1<\Delta<\Delta_*\), the universal family is the unique lowest state at \(1\le P\le N-1\). The chiral projected family is likewise the unique lowest state for every physical mass in its stated range. The proof and independently audited inverse-system classification are [LOW_CHANNEL_POWER_IDEALS.md](../recoupling/LOW_CHANNEL_POWER_IDEALS.md) and [LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md](../audit/LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md). The earlier exact characteristic checks through \(P=6\) remain independent verification data. For \(\Delta>\Delta_*\), the universal line persists, but its full energy multiplicity at higher degrees is not determined by this classification.

### 6. A physical Jordan resonance and the complete \((4,1)\) curve

The stable primary basis, now of dimension three, is

\[
 (c_{41},\ c_{11}c_{30},\ c_{20}c_{21}),\qquad N\ge5.
\]

Set

\[
 s=\sigma_{11}+\sigma_{30}=\sigma_{20}+\sigma_{21}
   =-\frac{\Delta^2(70\Delta^2+89\Delta-20)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)},
\]

\[
 \delta=\sigma_{41}-s
 =\frac{\Delta^2F(\Delta)}{2D_4},\qquad
 F(\Delta)=2\Delta^3-37\Delta^2-11\Delta+100.
 \tag{6.1}
\]

The exact leading matrix is

\[
 A=\begin{pmatrix}s+\delta&0&0\\v_2&s&0\\v&0&s\end{pmatrix},
 \tag{6.2}
\]

where

\[
 v_2=-\frac{2\Delta^2(2\Delta^3+35\Delta^2+25\Delta-44)}{D_4},
 \qquad
 v=\frac{3\Delta^2(\Delta+1)(\Delta+4)}{(2\Delta-1)(2\Delta+3)(2\Delta+5)}>0,
 \qquad v_2+v=2\delta.
 \tag{6.3}
\]

The cubic \(F\) is irreducible over \(\mathbb Q\). It has exactly two roots above one, isolated for example in

\[
 \left(\frac{1563}{1000},\frac{391}{250}\right),\qquad
 \left(\frac{18651}{1000},\frac{4663}{250}\right),
\]

approximately \(1.56348089012038\) and \(18.6511542250857\). Sturm root counts are recorded in the verification program.

At either root, \(v_2=-v\ne0\), so

\[
 A-sI=v\begin{pmatrix}0&0&0\\-1&0&0\\1&0&0\end{pmatrix},
 \qquad (A-sI)^2=0,\qquad\operatorname{rank}(A-sI)=1.
 \tag{6.4}
\]

This is the promised exact Jordan certificate in \(\mathbb Q[\Delta]/(F)\). The hypothesis that the actual Einstein \(A\) is always diagonalizable is therefore false.

#### 6.1 Exact invariant subspace and all three energy branches

There is a common left eigenvector of \(A\) and \(B\),

\[
 \ell=(-2,1,1),\qquad
 \ell(NA+B)=\lambda_0\ell,
\]

with

\[
 \lambda_0=sN+b_0,\qquad
 b_0=-\frac{12\Delta(2\Delta^2+7\Delta+2)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
 \tag{6.5}
\]

The invariant plane \(\ker\ell\) has the \(N\)-independent basis

\[
 S=\begin{pmatrix}1&0\\2&-1\\0&1\end{pmatrix}.
\]

The restriction is exactly

\[
 H_2(N)=\begin{pmatrix}
 (s+\delta)N+b_{11}&k\\
 v(N+6/\Delta)&sN+b_{22}
 \end{pmatrix},
 \tag{6.6}
\]

where

\[
\begin{split}
 b_{11}&=-\frac{3\Delta(38\Delta^3+169\Delta^2+131\Delta-108)}{D_4},\\
 b_{22}&=\frac{3\Delta(4\Delta^4+20\Delta^3+11\Delta^2-39\Delta-4)}{D_4},\\
 k&=\frac{\Delta(\Delta+3)(2\Delta^2+25\Delta+36)}{2(2\Delta+1)(2\Delta+3)(2\Delta+5)}>0.
\end{split}
 \tag{6.7}
\]

Let \(\bar b=(b_{11}+b_{22})/2\) and \(d=b_{11}-b_{22}\). The other two branches are

\[
 \boxed{\lambda_\pm=(s+\delta/2)N+\bar b
 \pm\frac12\sqrt{(\delta N+d)^2+4kv(N+6/\Delta)}.}
 \tag{6.8}
\]

Add \(\binom N2a\) to each \(\lambda\) to obtain \(g\). The three eigenstates are recovered without new mode sums: on the invariant plane take an eigenvector of (6.6) and multiply by \(S\); for the remaining eigenline use its physical dual \(\Gamma_{\rm prim}^{-1}\ell^T\), away from the explicitly described degeneracy. At degeneracy use the full nullspace or the exact spectral projector onto the repeated root.

This is a complete analytic solution of this three-dimensional family for all stable \(N\) and every physical \(\Delta\). It was derived from the full Bose pair lift, not fitted from sample particle numbers.

#### 6.2 The exact half-integer expansion

At either root of \(F\), define

\[
 c=kv>0,\qquad \kappa=\frac{6kv}{\Delta}+\frac{d^2}{4}>0.
\]

Equation (6.8) becomes the exact formula

\[
 \boxed{\lambda_\pm=sN+\bar b\pm\sqrt{cN+\kappa},\qquad
        \lambda_0=sN+b_0.}
 \tag{6.9}
\]

In particular,

\[
 \lambda_\pm=sN+\bar b\pm\sqrt c\,N^{1/2}
 \sum_{j=0}^{\infty}\binom{1/2}{j}
       \left(\frac{\kappa}{cN}\right)^j,
 \qquad |N|>\kappa/c.
 \tag{6.10}
\]

Both physical roots have this behavior. The middle branch has the exact \(O(1)\) correction \(b_0\), and the split pair shares the exact \(O(1)\) term \(\bar b\). Finite-\(N\) Hamiltonians remain physically self-adjoint and diagonalizable. The Jordan form occurs in a coordinate limit with a singular metric; its measurable consequence is the real square-root splitting, not complex energies or a physical Jordan Hamiltonian.

#### 6.3 Branchpoints, avoided crossings, and another protected doublet

Let \(\mathcal D(N)=(\delta N+d)^2+4kv(N+6/\Delta)\). Because \(k,v>0\), the two roots (6.8) are strictly separated for every real \(N>-6/\Delta\), which contains the whole physical stable range.

For generic mass, \(\mathcal D\) is quadratic in \(N\). Its discriminant with respect to \(N\) factors as

\[
\operatorname{disc}_N\mathcal D=
\frac{1728\Delta^6(\Delta+1)(\Delta+3)(\Delta+4)
 (2\Delta^2+\Delta-4)(2\Delta^2+25\Delta+36)
 (2\Delta^4+31\Delta^3+77\Delta^2+47\Delta-4)}
 {(2\Delta-1)^3(2\Delta+1)^3(2\Delta+3)^4(2\Delta+5)^4}.
 \tag{6.11}
\]

Thus for \(1<\Delta<\Delta_*\) the two finite branchpoints are a complex conjugate pair; for \(\Delta>\Delta_*\), away from \(F=0\), they are real and lie outside \(N>-6/\Delta\). At \(\Delta_*\) they coalesce and the radical is a perfect square. At a root of \(F\), one branchpoint moves to infinity, and the remaining one is

\[
 N_b=-\kappa/c=-6/\Delta-d^2/(4kv)<0.
\]

This directly explains why \(N=\infty\) requires a square-root local parameter at the resonant masses.

There is an additional exact identity,

\[
\det(H_2-\lambda_0 I)=
-\frac{18\Delta^2(\Delta+3)(\Delta+4)(2\Delta^2+\Delta-4)
 [5\Delta^2N+12\Delta^2+7\Delta N+60\Delta+60]}
 {(2\Delta-1)^2(2\Delta+1)(2\Delta+3)^2(2\Delta+5)^2}.
 \tag{6.12}
\]

At \(\Delta_*\), one branch of the plane coincides with \(\lambda_0\) for every stable \(N\). Exact rank-one minors show that the full \(3\times3\) matrix minus \(\lambda_0I\) has rank one. Its eigenspace is therefore two-dimensional. This is a second all-\(N\) protected primary doublet, now in the \((4,1)\) block.

Finally, near either root \(\Delta_c\) of \(F\), a detuning \(\Delta=\Delta_c+u/\sqrt N\) gives

\[
 \frac{\lambda_+-\lambda_-}{\sqrt N}
 \longrightarrow\sqrt{[\delta'(\Delta_c)u]^2+4k(\Delta_c)v(\Delta_c)}.
 \tag{6.13}
\]

This is a controlled local crossover of the exact \(G\)-coefficient. It explains the divergent ordinary \(1/N\) denominators when one approaches the mass resonance at fixed large \(N\).

### 7. Uniform recursive calculation of all expansion orders

The new program avoids guessing the expansion scale. It first builds the analytic Hermitian series guaranteed by Theorem 4.1.

1. Construct the full pair-action pencil and the centered embedding \(C\) from the old backend.
2. Rescale each centered column by \(t^{-r_\lambda}\). Its coordinate Hamiltonian is \(\operatorname{diag}(t^{r_\lambda})(A+t^2B)\operatorname{diag}(t^{-r_\lambda})\).
3. Generate the scaled Gram coefficients from the finite scalar functions \(f_r(t^2)\). Its constant term is positive diagonal.
4. Obtain its analytic Cholesky factor order by order. At order \(m\), solve \(L_0L_m^*+L_mL_0^*=R_m\); lower triangularity makes this an entrywise division by positive entries of \(L_0\).
5. Conjugate by \(L^*\). The result is Hermitian and obeys (4.1) coefficient by coefficient.

These operations are exact and need no particle labels proportional to \(N\). For a requested series order \(M\), matrix arithmetic is polynomial in \(M\) and the fixed block dimension, apart from rational/algebraic coefficient growth. They do not remove the separate difficulty of growing balanced excitation degree.

#### 7.1 Simple branch recursion

Let \(H(t)=D+\sum_{m\ge1}H_mt^m\), \(D\) diagonal, and take a simple slope \(\sigma=D_{ii}\). Set \(v_0=e_i\), \(e_i^*v_m=0\) for \(m>0\). With \(\lambda(t)=\sigma+\sum_{m\ge1}\lambda_mt^m\),

\[
 \lambda_m=e_i^*\sum_{j=1}^mH_jv_{m-j},
\]

\[
 (v_m)_k=-\frac{\left[\sum_{j=1}^mH_jv_{m-j}
                    -\sum_{j=1}^m\lambda_jv_{m-j}\right]_k}
                    {D_{kk}-\sigma},\quad k\ne i.
 \tag{7.1}
\]

The program verifies the eigenvalue equation to every computed order. Parity implies zero odd energy coefficients here.

#### 7.2 Degenerate clusters

Let \(P\) project onto an entire eigenspace of \(D\) with eigenvalue \(\sigma\), \(Q=1-P\), \(V=H-D\), and \(R=(Q(D-\sigma)Q)^{-1}\). The wave operator \(\Omega=P+\chi\), \(Q\chi P=\chi\), satisfies

\[
 \chi=-R\{QVP+QV\chi-\chi PVP-\chi PV\chi\}.
 \tag{7.2}
\]

Since \(V(0)=\chi(0)=0\), this is a recursive equation in powers of \(t\). It never divides by differences of slopes inside the cluster. The Bloch matrix is

\[
 H_{\rm B}=\sigma P+PV(P+\chi).
\]

Its metric is \(M=P+\chi^*\chi\). Applying the same analytic Cholesky normalization makes this reduced matrix Hermitian. It has exactly the cluster branches, not merely their first several asymptotic terms. This is a finite-dimensional Feshbach/Bloch construction; the standard isospectral Schur-map principle and convergent local perturbation expansion are discussed in Dusson–Sigal–Stamm, [arXiv:2105.02058](https://arxiv.org/abs/2105.02058), Theorem 1.2 and Remark 5. Equation (7.2) is derived directly from \(H\Omega=\Omega H_{\rm B}\).

To resolve a remaining degeneracy, subtract scalar terms, factor the first nonscalar power of \(t\), diagonalize that finite Hermitian coefficient, and apply (7.2) again to any repeated eigenvalue. This supplies a general exact recursion to any requested finite order. Exact persistent degeneracies can be detected by square-free factorization of the original finite pencil; one need not wait forever for a splitting coefficient. For generic algebraic roots, coefficient-field arithmetic or polynomial spectral projectors replace radical formulas.

The supplied code implements the Hermitian Taylor series, simple branches, and the cluster recursion as composable primitives. It does not claim a universal closed radical expression for every cluster coefficient.

#### 7.3 Actual calculations beyond the counterexample

For \((P,Q)=(2,2)\), \(\Delta=2\), the normalized primary series begins with

\[
 H_0=\operatorname{diag}(-104/5,-128/35,-976/35),\quad
 H_1=\begin{pmatrix}
 0&248/35&-264\sqrt2/35\\
 248/35&0&0\\-264\sqrt2/35&0&0
 \end{pmatrix}.
\]

The complete three branch expansions were generated through \(t^6\), with exact zero odd energy coefficients. For example the branch with slope \(-104/5\) has

\[
 \frac{g-\binom N2a}{N}
 =-\frac{104}{5}
 -\frac{140528}{81375N}
 +\frac{345227209184}{62840390625N^2}
 +\frac{13569440355840389504}{2377841106005859375N^3}
 +O(N^{-4}).
\]

This uses the new uniform recursion, with exact matrix residual checks; the underlying block spectrum was already available in the previous report.

For the chiral \((6,0)\) block at \(\Delta=2\), the labels \(c_{30}^2,c_{20}^3\) have the same slope \(-192/35\) but opposite parities. Their exact cluster expansion gives

\[
 H_1^{\rm eff}=0,\quad
 H_2^{\rm eff}=\operatorname{diag}(-4632/1099,-96/7),\quad
 H_3^{\rm eff}=\begin{pmatrix}0&55680/1099\\55680/1099&0\end{pmatrix}.
\]

The even second order already distinguishes the two branches; the odd third-order coupling consequently does not produce odd eigenvalue powers. This is an explicit test of the need for recursive branch analysis.

### 8. Independent verification and remaining questions

`verify_pencil.py` records source hashes, full generic-\(\Delta\) matrices, exact Gram identities, characteristic factorizations, algebraic mass isolation, Jordan and rank certificates, Taylor residuals, and high-precision diagonalization of the complete \(3\times3\) matrix at both cubic masses. It compares the new derivation (3.4) with the independently constructed full occupation pair lift.

The physics audit independently recomputed the decisive raw vertex \(00+41\to20+21\) at \(\Delta=2\), from the original spatial constraints and boundary-density response, without using the pair-integral cache. In physical normalized states, the constraint contribution is \(223186\sqrt5/121275\), and the boundary contribution is \(-176986\sqrt5/121275\). Their sum is \(8\sqrt5/21\). The averaged-creation normalization multiplies by \(3/\sqrt5\), giving \(8/7=v(2)\), exactly the nonzero splitting vertex (6.3). The audit is in `analytic_research/audit/raw_jordan_vertex.py` and its JSON. This is an independent new dynamical check at a rational mass; it is not described as a fresh all-mass radial integration at the two cubic roots.

The full generic-\(\Delta\) proof uses the already established physical pair spectrum and exact Casimir projectors. Thus the algebraic mass specializations require no extrapolation from that numerical check.

The exploration has not established a classification of every physical mass resonance at arbitrary excitation degree, or of all protected families. One infinite protected family is now completely explicit by (5.4)–(5.5). Those are distinct from the now-proved general local analytic form and the executable finite recursion. In particular:

* Generic one-generator nonresonance has been checked to finite degree, not proved for all degree.
* The \(\Delta_*\) lowest family is completely classified at every finite \(N\), including exact multiplicities and boundary states. The complementary \(Q=1\) spectrum, the full multiplicity of the universal level at higher masses and degrees, and possible energy analogues at \(Q\ge2\) remain open.
* A polynomial normal form for \(A\) is not a simultaneous diagonalization of \(A\) and \(B\), and does not prove integrability of the full many-body operator.
* Even complete semisimplicity of \(A\) would not by itself replace the higher-order parity/cluster analysis. The universal theorem uses the physical Gram and Rellich, not that unproved shortcut.

These limitations do not weaken the counterexample: the all-mass semisimplicity claim and the universal integer-only \(1/N\) claim are both definitively disproved by (6.4) and (6.9).

### 9. Literature positioning

The nonlinear homological equations are part of established Poincare–Dulac theory, including its freedom at resonances; see G. Gaeta, *Algorithmic reduction of Poincare–Dulac normal forms and Lie algebraic structure*, [math-ph/0102037](https://arxiv.org/abs/math-ph/0102037). Our graded setting makes each excitation cutoff finite, so the algebraic generator construction does not depend on a convergence theorem for an infinite change of variables.

Analytic Hermitian eigendecomposition is Rellich's theorem, not a new result of this work. The nonsingular physical primary frame, the parity constraint, and its application to a coordinate pencil with actual Jordan slopes are the new ingredients here.

The excitation-number rescaling is closely related to number-conserving condensate extraction in Bogoliubov analysis; for the exact excitation-space unitary in a different many-body setting see Lewin–Nam–Serfaty–Solovej, *Bogoliubov spectrum of interacting Bose gases*, [arXiv:1211.2778](https://arxiv.org/abs/1211.2778). We use this as a structural comparison. Their many-body limit hypotheses are not assumed for the gravitational coefficient studied here, and their spectrum convergence theorem is not imported into this proof.

Feshbach/Bloch reduction supplies the recursive cluster mechanism. The relevance here is that the correct small parameter and physical state metric have first been established, so the recursion applies to the actual Einstein branches, including the resonant ones.



---

# 附录 G：物理闭合、原量子处方与反例模型审查

独立原文件：`analytic_research/audit/COUNTERMODELS_AND_ASSUMPTIONS.md`。本附录中的局部定理及公式编号按该原文件解释。

## Adversarial audit: assumptions that cannot be silently removed

Date: 2026-10-19. The previous reports, archive, source notes and programs are read-only inputs. This note distinguishes a counterexample **to a tempting generalization** from a counterexample to the specified Einstein theory. No counterexample to the latter's stated order-`G` closure was found in this audit.

### 1. What has been read and retained

The previous final report `deliverables/ADS3_Fock_space_research.md`, its quickstart and verification summary were read again in full. Relevant proof/code copies were compared with `ADS3_Fock_research_package.zip`; 91 directly corresponding local Markdown, Python and JSON files agree byte for byte. The archive contains 109 entries. This comparison is provenance work, not a new run of their spectral tests.

The original physical premises were checked directly in the frozen mother note:

- §71.1: complete degree list `g^3`, `g φ²`, `g⁴`, `g² φ²`, `φ⁴`; no four-scalar loop trace in the connected tree coefficient.
- §71.2, equations (71.3)--(71.4): the **non-global**, leading-linear Brown--Henneaux charge identity and the full resonant projection.
- §71.4, equations (71.8)--(71.10): a cutoff trace does not inherit the tree Ward identity; its internal-boundary term is generally nonzero.
- §§76.1--76.4, equations (76.1)--(76.4): paired proper-constraint determinants, the stated midpoint Weyl chart, cubic Moyal degree, and the separate quadratic quantum audit.
- §§76.5--76.7: the computed common one-body subtraction, physical mass condition, complete pair spectrum and exact scope.

The old Fock report's §§2, 5, 6 and 9 were then checked against these inputs and their included detailed proofs. The logical roles below remain essential.

### 2. A genuine resonant mixing model with all global AdS symmetries

Global AdS covariance, scalar parity, positive energy and quartic degree **do not by themselves** imply that the zero-independent-graviton branch is invariant. Here is an explicit countermodel.

Set the scalar dimension to `Δ=2`. The normalized two-scalar ground primary and its descendants form

\[
\mathcal H_{\phi\phi}^{00}\simeq D_2^+\otimes D_2^+.
\]

Write the normalized creation operators for that module as

\[
B_{P,Q}^\dagger=
\frac{(\operatorname{ad}L_+)^P(\operatorname{ad}\bar L_+)^Q
       (b_{00}^\dagger)^2}
 {\sqrt{2P!(4)_P Q!(4)_Q}}.
\]

Their states have energy `4+P+Q`, spin `P−Q`, and ladder coefficients
`sqrt((P+1)(P+4))` and `sqrt((Q+1)(Q+4))`.

The free boundary-graviton tower starts at `m=2`. Its left one-graviton module has global weight 2, and the right tower has the corresponding right weight. Thus

\[
G_{P,Q}^\dagger=a_{P+2,L}^\dagger a_{Q+2,R}^\dagger
\]

has exactly the same two global module weights, free energy, spin and ladder coefficients. Define the normally ordered quartic

\[
T=\sum_{P,Q\ge0}G_{P,Q}^\dagger B_{P,Q},
\qquad \delta W=\eta(T+T^\dagger),\qquad\eta\in\mathbb R.
\]

The sum is well-defined on every fixed finite free-energy block. It has type `g² φ²`, is Hermitian, preserves scalar parity and commutes with free energy and angular momentum. It also commutes with the full free global `sl(2)_L ⊕ sl(2)_R`: in the commutator with a raising generator, the two sums telescope using the identical ladder coefficients. The lowering assertion follows by adjunction.

Nevertheless its matrix element between the two scalar ground state and the left/right `m=2` graviton pair is `η`. These two states lie in the same free `E=4,J=0` block. The added operator therefore produces nonzero physical mixing and eigenvalues `±η` on their two-dimensional span if the other order-`G` terms are set to zero.

#### The exact missing premise

It is impossible to retain the original leading-linear **non-global** charge Ward identity for this deformation. For instance,

\[
[T,a_{2,L}]=-
\sum_{Q\ge0}a_{Q+2,R}^\dagger B_{0,Q}\ne0.
\]

Every term on the right already has the required free weight `−2`. Hence it cannot be canceled, after resonant projection, by a correction of the form `[H0,Q1]−s Q1`. This is precisely the obstruction used in original equation (71.4).

This is an algebraic canonical countermodel; no local generally covariant bulk action realizing this extra term is asserted. It changes the interactions and violates the boundary-completed Einstein Noether data. It is **not** a counterexample to the original minimal action with its admitted Brown--Henneaux charges. Its purpose is to prove that replacing the non-global Ward premise by “the interaction is globally conformal” would be incorrect, even at tree level and even with correct particle/energy counting.

### 3. Why the one-to-three statement survives this attack

For the single scalar species of the original theory,

\[
\operatorname{Hom}_{sl(2)_L\oplus sl(2)_R}
  (\mathcal H_1,\operatorname{Sym}^3\mathcal H_1)=0.
\]

An intertwiner must kill the one-particle lowest state because its energy is `Δ`, below the three-particle threshold `3Δ`. Commutation with both raising generators then kills the entire irreducible source module. This is the original proof mechanism, now checked separately from the graviton-closure claim. Its use on a normal-ordered `b†³b` coefficient is faithful: action on the one-particle sector exhausts all its coefficients, so adding spectators cannot restore a coupling.

The irreducible-single-species premise matters. If one adds another scalar `χ` with `Δχ=3Δφ`, the `χ` module and the three-`φ` ground-primary module have identical global weights. A quartic `χ φ³` interaction can then give a resonant intertwiner. That is a different theory, not an exceptional rational mass of the original single scalar.

Likewise, the quartic external-degree bound matters for arbitrary particle number. At higher order a six-leg operator can map an excited two-particle primary module to a four-particle ground module when their global weights coincide. Nothing in the single-source-module argument excludes such multi-source intertwiners. The previous report correctly limited its Fock closure to the order-`G` coefficient.

### 4. Quantum prescription and regularization: the retained boundary

The classical Noether proof fixes the highest four-leg coefficient. It does not prove that an arbitrary partial trace or cutoff mass subtraction is covariant. The exact defect identity (71.8), and its nonzero cutoff example (71.11)--(71.12), rule out that shortcut directly.

The original theory avoids it by specifying paired finite-regulator proper-constraint determinants, the physical Darboux--Liouville measure and midpoint Weyl quantization, then evaluating the regulated scalar quadratic terms and their common local subtraction in §§73--76. A cubic/cubic Weyl commutator has degrees four and zero, not an extra arbitrary degree-two term; changing the quartic ordering changes lower degrees and requires a prescription. The final physical mass condition is used only after the mode-independent finite remainder has been established.

The all-particle Fock lift may therefore be retained **in this prescription**. It is not a claim that classical reduction commutes with every independently chosen quantum measure, ordering, regulator or finite quartic counterterm.

### 5. Mathematical interfaces re-examined

The logarithmic proof survived attempts to exploit intersections of collision hyperplanes. Its free frame has determinant proportional to the reduced Vandermonde. Localization at each linear prime gives one normal factor `δ` and all other directions units. The symmetric-power condition removes each possible denominator prime; the polynomial ring is a UFD, so no extra codimension-two poles remain. This argument requires the full ideal-power flag, not only preservation of the principal Vandermonde ideal, and uses the physical Gram to identify the right pair projectors.

The Gram formula requires positive pair residuals, completeness of the pair-spectator frame, and `D` scalar on each nontrivial Gram block. With these conditions, `D G^{-1}T` and the positive principal-submatrix reduction are correctly oriented. Dropping Gram dependencies without the positive-semidefinite hypothesis would be unjustified; the physical Gram supplies it.

The stable-`N` proof requires a unique zero-excitation one-particle mode and a **two-body**, number- and bidegree-preserving interaction. Its averaged-tensor coordinates are essential: normalized occupation states have square-root ground-occupation factors instead. The stated invariant primary restriction additionally requires global covariance; arbitrary number-preserving two-body operators only satisfy the full-level affine statement. No violation of these conditions occurs in the Einstein operator.

**Retained conclusion:** the previous strongest theorems stand in their stated domain. The new explicit mixing countermodel identifies one indispensable symmetry premise; it does not replace a failed proof by a weaker target.


---

# 附录 H：低通道定理的独立物理内积审查

独立原文件：`analytic_research/audit/PROTECTED_LOW_CHANNEL_THEOREM_AUDIT.md`。本附录中的局部定理及公式编号按该原文件解释。

## Exact states from bounded pair channels: independent proof and audit

Date: 2026-10-19. All original material remains unchanged. This note audits and
strengthens the new `pencil/edge_functional.py` result. It separates the
established physical pair kernel from new representation-theoretic arguments.
The dynamics input is the Einstein pair spectrum in the frozen mother
note `sources/frozen/Unreduced OFPT calculation.md`, §76.6, equation (76.7),
equivalently the previous Fock report's §3, equations (3.2)–(3.5).

### 1. Conclusions and exact scope

Let the one-particle representation be
\(D^+_{\Delta/2}\otimes D^+_{\Delta/2}\), with \(\Delta>1\). Let
\(W_N=\sum_{i<j}w_{ij}\) be any permutation-invariant, self-adjoint, globally
\(\mathfrak{sl}(2)_L\oplus\mathfrak{sl}(2)_R\)-invariant pair operator. Write

\[
a=\gamma_{00},\qquad b=\gamma_{20},\qquad
c=\gamma_{11},\qquad e=\gamma_{31}.
\]

Higher pair-channel eigenvalues are unrestricted. Left-right reflection
symmetry is not required for the following \(Q=1\) statements.

**Universal one-state theorem.** For every integer \(P\ge1\) and
\(N\ge P+1\), a nonzero primary eigenstate has the exact eigenvalue

\[
g_{N,P}=a\binom N2+\frac N2(c-a)
 +\frac{(b-a)(P-1)(N\Delta+P)}{2(2\Delta+1)}.                 \tag{1}
\]

No relation between \(a,b,c,e\) is required. The projected seed defining this
state exists for \(N\ge P\), but it vanishes identically at \(N=P\).

**Additional-state theorem.** Suppose

\[
R=(2\Delta+3)(a-b)-(2\Delta+1)(c-e)=0.                       \tag{2}
\]

For every \(P\ge3\), a second explicit projected seed is a nonzero eigenstate
with (1) throughout its entire existence range \(N\ge P-1\). If
\(N\ge P+1\), the two states are independent, so (1) has multiplicity at
least two. At \(N=P-1\) or \(N=P\), this construction guarantees one state.
These are lower bounds on multiplicity, not a complete classification of
coincident levels.

For the established Einstein pair kernel, (2) becomes

\[
R=-\frac{24\Delta(2\Delta^2+\Delta-4)}
 {(2\Delta-1)(2\Delta+5)}.                                  \tag{3}
\]

Its unique physical zero is
\(\Delta_*=(\sqrt{33}-1)/4\). At this mass, (1) is precisely

\[
\binom N2g_{00}
 +N\left[\sigma_{11}+\frac{P-1}{2}\sigma_{20}\right]
 +\frac{3P(P-1)}{32}(4-9\Delta_*).                          \tag{4}
\]

Equation (2) is the condition for the particular four-channel affine
interpolation used here. It is not asserted to classify all possible
degeneracies of \(W_N\).

### 2. Physical polynomial representation and the primary projector

Use labelled Bargmann variables \((z_i,w_i)\). The chiral monomial norm is
\(\|z^p\|^2=p!/(\Delta)_p\). On the left copy,

\[
D_L=\sum_i\partial_{z_i},\qquad
U_L=\sum_i(z_i^2\partial_{z_i}+\Delta z_i),\qquad
H_L=\frac{N\Delta}{2}+\sum_i z_i\partial_{z_i}.
\]

Here \(D_L^\dagger=U_L\) and \([D_L,U_L]=2H_L\). The right copy is
identical. On homogeneous left degree \(P\), the orthogonal projector to
\(\ker D_L\) is the finite operator

\[
\Pi_L(P)=\sum_{j=0}^{P}
 \frac{(-1)^j U_L^jD_L^j}
 {j!\prod_{r=0}^{j-1}(N\Delta+2P-r-2)}.                    \tag{5}
\]

All denominators in (5) are nonzero in the stated domain; the empty product
is one. In degree \(Q=1\),

\[
\Pi_R(1)=1-\frac{U_RD_R}{N\Delta},\qquad
\Pi_{P,1}=\Pi_L(P)\Pi_R(1).                                \tag{6}
\]

For completeness, if \(h=N\Delta/2+P\), the coefficient of
\(U_L^{j-1}D_L^j\) in \(D_LU_L^jD_L^j\) is
\(j(2h-j-1)\). The consecutive coefficients in (5) therefore cancel in
\(D_L\Pi_L\). The operator is the identity on \(\ker D_L\); each term is
self-adjoint. This proves that it is the orthogonal projector, with no
choice of a Gram basis or inverse Gram matrix required.

Every pair Casimir commutes with the total generators and hence with (5)
and (6). The projector also commutes with particle permutations.

### 3. The two seeds and their bounded pair-channel support

Let \(\operatorname{Av}\) denote the average over distinct particle
permutations, with the remaining variables in their ground mode. Define

\[
T_1=\operatorname{Av}(z_1w_1z_2\cdots z_P),\qquad
T_2=\operatorname{Av}(z_1^2w_1z_2\cdots z_{P-1}),
\]

\[
\Phi_1=\Pi_{P,1}T_1,\qquad \Phi_2=\Pi_{P,1}T_2.             \tag{7}
\]

For any fixed particle pair, every monomial in \(T_1\) has left degree at
most two and right degree at most one. A two-particle representation with
pair label \(k\) starts at degree \(k\), so its spectral projector
annihilates a polynomial of smaller pair degree. Simultaneous exchange
parity further requires \(k+\ell\) to be even. Thus the only possible pair
channels in \(T_1\) are

\[
(k,\ell)=(0,0),(2,0),(1,1).                                \tag{8}
\]

For \(T_2\), the left pair degree is at most three; its only extra allowed
channel is \((3,1)\). Because the primary projector commutes with each
pair Casimir, these support statements hold for \(\Phi_1,\Phi_2\) as well.
The same argument holds for every pair separately. It does not require
the distinct pair projectors to commute with each other.

### 4. Affine interpolation and the total-Casimir identity

Set \(c_0=\Delta(\Delta-1)\) and

\[
\beta=\frac{b-a}{2(2\Delta+1)},\qquad
\eta=\frac{c-a}{2\Delta}-\beta.
\]

The affine pair operator

\[
w^{\rm aff}_{ij}=a+
 \beta(C^L_{ij}-c_0)+\eta(C^R_{ij}-c_0)                    \tag{9}
\]

matches the three values in (8) for arbitrary \(a,b,c\). It matches
\(\gamma_{31}=e\) if and only if (2) holds. Therefore

\[
w_{ij}\Phi_1=w^{\rm aff}_{ij}\Phi_1
\]

always, and the corresponding equality for \(\Phi_2\) follows from (2).
No information from higher pair channels enters these equalities.

The universal representation identity

\[
\sum_{i<j} C_{ij}=C_{\rm tot}+(N-2)\sum_i C_i
\]

implies, on a primary of degree \((P,Q)\),

\[
\sum_{i<j}(C^L_{ij}-c_0)=P(N\Delta+P-1),\qquad
\sum_{i<j}(C^R_{ij}-c_0)=Q(N\Delta+Q-1).                  \tag{10}
\]

At \(Q=1\), summing (9) gives

\[
a\binom N2+\beta P(N\Delta+P-1)+\eta N\Delta,
\]

which is (1). This proves the eigenstate claims before any mode sum,
recoupling matrix, or primary matrix diagonalization is performed.

### 5. Exact nonzero ranges and independence

The existence of a seed is not sufficient: a seed can be a pure descendant.
For \(T_1\), the boundary \(N=P\) is precisely such a case:

\[
T_1=\left(\prod_{i=1}^N z_i\right)\frac{\sum_i w_i}{N},
\qquad \Pi_R(1)T_1=0.                                    \tag{11}
\]

This vanishing holds for every parity of \(P\).

An explicit physical test primary works uniformly in \(N\):

\[
F_P=\sum_i Z_i^P W_i,\qquad
Z_i=z_i-\bar z,\quad W_i=w_i-\bar w.
\]

The coefficients of the two seed monomials in this polynomial are

\[
[z_1\cdots z_Pw_1]F_P
 =\frac{(-1)^P P!}{N^P}(P-N),                              \tag{12}
\]

\[
[z_1^2z_2\cdots z_{P-1}w_1]F_P
 =\frac{(-1)^P P!}{2N^P}(N^2-3N+P).                       \tag{13}
\]

These formulas follow directly by expanding
\(Z_1^P-N^{-1}\sum_i Z_i^P\), the coefficient of \(w_1\) in \(F_P\).
Because the physical monomial Gram is diagonal and positive, a nonzero
coefficient proves a nonzero inner product with the averaged seed and
therefore a nonzero primary projection.

Equation (12), together with (11), proves that \(\Phi_1\ne0\) exactly for
\(N\ge P+1\) within the seed's existence range. For \(P\ge3\),
\(N^2-3N+P\ge N^2-3N+3>0\); hence (13) proves
\(\Phi_2\ne0\) throughout \(N\ge P-1\).

To prove independence when both states are present, encode averaged
occupation states by formal creation variables \(a_{pq}\), with
\(a_{00}=1\). At degree \(P+1\le N\), these monomials are independent.
Their products are formal occupation products, not pointwise products of
averaged wavefunctions. The centered creation generators are

\[
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
 {p\choose i}{q\choose j}(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij}.
\]

They lie in the common lowering kernel. Define coefficient functionals

\[
\ell_1=[a_{10}^{P-1}a_{11}],\qquad
\ell_2=[a_{10}^{P-2}a_{21}].
\]

On \(c_{p1}\prod_i c_{a_i0}\), where \(p+\sum_i a_i=P\),

\[
\ell_1=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2=(-1)^P{p\choose2}\prod_i(1-a_i).
\]

Apply the two functionals to the two independent primaries
\(c_{P,1}\) and \(c_{1,1}c_{P-1,0}\). The determinant is

\[
\det=\binom P2(2-P)\ne0\qquad(P\ge3).                    \tag{14}
\]

Thus the two restricted functionals, and therefore their physical
Gram-dual projected states, are independent. This avoids separate
partition arguments for small and large \(P\).

### 6. Gram convention and actual state construction

If \(B\) is any independent primary basis and \(\Gamma=B^\dagger
\Gamma_{\rm full}B\), the coordinate vectors

\[
v_i=\Gamma^{-1}\ell_i^\dagger
\]

are right eigenvectors. Formula (7) computes proportional physical states
directly through the finite operator (5), so a full Gram inverse is optional.
The proportionality constants are the diagonal norms of the seeds:

\[
\|T_1\|^2=\frac{(P-1)!}{\Delta^{P+1}(N)_{\underline P}},
\qquad
\|T_2\|^2=\frac{2(P-2)!}
 {\Delta^P(\Delta+1)(N)_{\underline{P-1}}}.
\]

If the two-state construction applies, an explicit orthogonal projector
onto this chosen two-dimensional eigensubspace is

\[
\Pi_{\rm protected}=\Gamma^{-1}L^\dagger
 (L\Gamma^{-1}L^\dagger)^{-1}L,
\qquad L=\begin{pmatrix}\ell_1\\\ell_2\end{pmatrix}.
\]

It is not necessarily the complete spectral projector onto eigenvalue (1),
because other states can share that energy.

### 7. Independent local verification and support completeness

The new `protected_doublet_independent.py` imports neither `pair_action`,
`pencil_tools`, `edge_functional`, nor any saved certificate. It reconstructs
the local two-body matrix by spectral interpolation of

\[
C_{12}=-(z_1-z_2)^2\partial_1\partial_2
 +\Delta(z_1-z_2)(\partial_1-\partial_2)+\Delta(\Delta-1).
\]

Its eigenvalues are \((\Delta+k)(\Delta+k-1)\); Lagrange interpolation
therefore produces each pair projector directly. Sixteen necessary local
coefficients were recalculated, including their Bose output sums.

The hand-derived reverse-pair enumeration is exhaustive: an outgoing pair
in the two target occupations must be ground-ground, ground-bulk,
bulk-bulk, ground-right-carrier, or bulk-right-carrier. There is exactly one
right-carrier. Nonnegative pair degrees leave precisely eight generic
source defects:

\[
01,\quad01+20,\quad11,\quad11+20,\quad21,\quad20+21,
\quad31,\quad01+30.
\]

The last coefficient is

\[
K_{10,21;30,01}=
-\frac{18\Delta^2(2\Delta^2+\Delta-4)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)},
\]

and vanishes exactly at \(\Delta_*\) in the physical domain. The interacting
pair never exceeds degree \((3,1)\). The largest *defect* left degree is
four; these are different statements.

For a defect multiset \(D\), the exact spectator occupations are

\[
n_{10}=P-\sum_{\alpha\in D}p_\alpha,\qquad
n_{00}=N-P+\sum_{\alpha\in D}p_\alpha-|D|.
\]

The independent code uses these closed factors, not a fit in \(P,N\).
All four Ward-jet identities hold symbolically in both variables. For
\(P=3\), the complete seven-dimensional free-level matrix was also
independently reconstructed at symbolic \(N\); its two-dimensional primary
block is exactly the scalar (4). At \(N=P+1\), the source \(01\) has zero
ground occupation; nonnegative, rather than strictly positive, ground
occupation is the correct boundary statement.

`generic_low_channel_audit.py` repeats the reconstruction with four free
pair eigenvalues. It proves the first functional identity without any
relation and proves that every remaining coefficient in the second
identity has the common divisor (2). This independently verifies the
affine-Casimir argument. The original fixed physical pair kernel is still
the dynamics input; these checks do not purport to rederive the whole
Einstein constraint calculation.

### 8. Exact minimum energies in the positive-residual range

For the Einstein kernel, define the pair remainder from (9),

\[
\mathcal R_{k\ell}=\gamma_{k\ell}-a
 -\beta[(\Delta+k)(\Delta+k-1)-c_0]
 -\eta[(\Delta+\ell)(\Delta+\ell-1)-c_0].
\]

Direct exact simplification gives

\[
\beta=-\frac{\Delta(2\Delta^2+7\Delta+2)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)}<0,
\]

\[
\mathcal R_{40}=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,
\]

\[
\mathcal R_{31}=-\frac{24\Delta(2\Delta^2+\Delta-4)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+5)},
\]

\[
\mathcal R_{51}=
\frac{2\Delta(4\Delta^3+4\Delta^2+53\Delta+44)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0.
\]

On the pair plateaus, increasing the left label by two changes the
remainder by

\[
\mathcal R_{k+2,\ell}-\mathcal R_{k\ell}
 =-2\beta(2\Delta+2k+1)>0.
\]

This applies for even \(k\ge4,\ell=0\), or odd \(k\ge5,\ell=1\).
The three low remainders \(\mathcal R_{00},\mathcal R_{20},
\mathcal R_{11}\) vanish identically. Since a total \(Q=1\) state permits
only right pair labels zero and one, these formulas prove

\[
W_N\big|_{\mathcal P_{N;P,1}}\ \ge\ g_{N,P}I
\qquad(1<\Delta\le\Delta_*).                              \tag{15}
\]

For \(1<\Delta<\Delta_*\), its common pair kernel permits precisely
\(00,20,11\). At \(\Delta_*\), channel \(31\) is additionally allowed.
The projected seeds prove that this lower bound is attained when
\(N\ge P+1\); at the critical mass, \(\Phi_2\) additionally proves
attainment for \(P\ge3,N\ge P-1\). Independence gives at least two
minimizers when \(P\ge3,N\ge P+1\).

These are fixed-*primary* minimum energies. Descendants of different
primaries inside a common free-energy level need not obey (15) with the
same numerical right-hand side. The separate kernel-classification step
has now been proved and independently audited in
`LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md`: its exact multiplicity generating
functions, for fixed \(N\ge2\), are

\[
\sum_P m_{<,N,P}t^P=t\frac{1-t^{N-1}}{1-t},\qquad
\sum_P m_{*,N,P}t^P=(t+t^3)\frac{1-t^{N-1}}{1-t}.
\]

Thus the two critical seed ladders exhaust the entire minimum eigenspace.
This completeness uses the root-power inverse-system classification, in
addition to the positive-residual argument.

The mass range is substantive: for \(\Delta>\Delta_*\),
\(\mathcal R_{31}<0\). Already the two-particle primary \((P,Q)=(3,1)\)
violates (15). This does not destroy the all-mass universal eigenstate
where that seed is nonzero; it destroys the proposed universal lower
bound.

### 9. A chiral corollary and a failed nonchiral extension

For any pair kernel, the chiral projected seed

\[
\Psi_P=\Pi_L(P)\operatorname{Av}(z_1\cdots z_P),
\qquad N\ge P\ge2,
\]

is nonzero and has energy coefficient

\[
g^{\rm ch}_{N,P}=a\binom N2+
 \frac{(b-a)P(N\Delta+P-1)}{2(2\Delta+1)}.
\]

For the Einstein kernel it is an exact minimum in each such primary block
for every \(\Delta>1\): the positive remainder \(\mathcal R_{40}\) and
the increasing even plateau sequence prove the lower bound, while this
seed attains it. The annihilating pair channels are exactly zero and two.
Their independently audited inverse-system classification proves that
this minimum is unique at \(P=0,2,\ldots,N\), and that the affine bound is
not attained in any other nonempty chiral primary block.

Only pair labels zero and two occur. Nonvanishing follows, for example,
from the coefficient \((-1)^P(1-P)\) of \(a_{10}^P\) in the centered
creation generator \(c_{P0}\). This is a distinct finite pair-support
mechanism from the high-degree Jastrow baseline states.

A tempting extension uses disjoint unit left and right excitations,
\(\operatorname{Av}(z_1\cdots z_P w_{P+1}\cdots w_{P+Q})\). Its four possible
pair channels are \(00,20,02,11\). For a left-right-symmetric kernel, affine
Casimir interpolation would require

\[
\gamma_{11}-\gamma_{00}
 =\frac{2\Delta}{2\Delta+1}(\gamma_{20}-\gamma_{00}).
\]

For Einstein gravity the difference between the two sides is

\[
-\frac{12\Delta^2(10\Delta^2+9\Delta-5)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)}<0\qquad(\Delta>1).
\]

There is no physical mass satisfying this interpolation condition. This
rules out the specified extension by one affine pair-Casimir polynomial;
it neither proves that the projected seed can never be an eigenstate by
another mechanism nor excludes other exact nonchiral families.

### 10. Reproduction and status

```bash
python3 analytic_research/audit/protected_doublet_independent.py

python3 analytic_research/audit/generic_low_channel_audit.py

python3 analytic_research/audit/low_channel_variational_certificate.py
```

All three programs completed successfully. Their JSON files contain the exact
new local matrix elements, symbolic identities, and scope statements. The
primary-projection, nonvanishing, independence, and total-Casimir arguments
above are proofs, not numerical evidence. They explain a particular
infinite family of exact states; they do not solve every non-saturated
many-body block or imply general integrability.


---

# 附录 I：根幂 kernel、全表示与有限 N 端点的独立证明审查

独立原文件：`analytic_research/audit/LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md`。本附录中的局部定理及公式编号按该原文件解释。

## Independent audit of the complete low-pair-channel kernel

Date: 2026-10-19. Audited source:
`analytic_research/recoupling/LOW_CHANNEL_POWER_IDEALS.md`, §§1–6, including
the revision that makes the positive Fischer realization explicit.

**Verdict:** the complete inverse-system classification and its physical
minimum-energy multiplicities are proved. The principal bridges can be
verified directly, without importing a numerical rank calculation or a
general zonotopal theorem. This note supplies those independent checks.

### 1. An exact unitary algebraic representation, with no measure ambiguity

The one-particle Bargmann norm is
\(\|\zeta^p\|^2=p!/(\Delta)_p\). The map

\[
\mathfrak U(\zeta^p)=\frac{x^p}{(\Delta)_p},\qquad
\langle x^p,x^q\rangle_F=\delta_{pq}p!(\Delta)_p
\]

is unitary. Its tensor product is permutation-equivariant and sends

\[
\partial_\zeta\longmapsto B=x\partial_x^2+\Delta\partial_x,
\qquad
\zeta^2\partial_\zeta+\Delta\zeta\longmapsto x.
\]

Thus the total raising operator is multiplication by
\(S=\sum_i x_i\), the lowering operator is
\(B_N=\sum_i(x_i\partial_i^2+\Delta\partial_i)\), and
\(S^\dagger=B_N\). The norm is strictly positive for \(\Delta>0\), hence
throughout the physical range \(\Delta>1\).

The Fischer scalar product is not asserted to be the full product-Gamma
integration scalar product on arbitrary homogeneous polynomials. That
distinction is now explicit in the audited note. For a primary homogeneous
polynomial of degree \(P\), the Laguerre and homogeneous maps do differ only
by \((-1)^P\): the tensor Laguerre map equals
\(\mathfrak U[F(1-\zeta)]\), while translation invariance and homogeneity
give \(F(1-\zeta)=F(-\zeta)=(-1)^PF(\zeta)\).

### 2. Why the root derivative condition is exactly the pair-channel cutoff

Let \(D_{ij}=\partial_i-\partial_j\). Direct substitution into the pair
Casimir gives

\[
C_{ij}=-x_ix_jD_{ij}^2+\Delta(x_i-x_j)D_{ij}
       +\Delta(\Delta-1).
\]

For \(s=x_i+x_j\) and \(u=x_i/s\), one has \(D_{ij}s=0\),
\(D_{ij}u=1/s\), and therefore

\[
C_{ij}=-u(1-u)\partial_u^2+
\Delta(2u-1)\partial_u+\Delta(\Delta-1).
\]

On pair-homogeneous degree \(T\), the Jacobi eigenvectors are
\(s^T J_k(u)\), \(0\le k\le T\), with \(J_k\) of exact degree \(k\).
Their distinct eigenvalues are \((\Delta+k)(\Delta+k-1)\). Consequently

\[
P_{ij,k}F=0\ \forall k>r
\quad\Longleftrightarrow\quad D_{ij}^{r+1}F=0.
\]

This is true before imposing primarity. Arbitrary spectator coefficients
are harmless: expand in spectator monomials and pair total degree, then
apply the finite triangular Jacobi basis in each summand. No cancellation
between distinct summands can conceal a higher pair channel.

### 3. The harmonic space really is the quotient modulo the total sum

Define the graded common kernel

\[
\mathscr K_m=\bigcap_{i<j}\ker D_{ij}^{m}.
\]

The identities

\[
[D_{ij}^m,S]=0,\qquad
[D_{ij}^m,B_N]=m(\partial_i+\partial_j)D_{ij}^m
\]

show that both raising and lowering preserve it. There is a particularly
short positive-metric proof of the required quotient identification:

\[
\mathscr K_{m,P}
 =\left(\mathscr K_{m,P}\cap\ker B_N\right)
   \mathbin{\perp} S\mathscr K_{m,P-1}.
\]

Indeed, the orthogonal complement of \(S\mathscr K_{m,P-1}\) inside
\(\mathscr K_{m,P}\) consists exactly of the vectors whose lowering is
zero, because \(B_N\) maps that space into \(\mathscr K_{m,P-1}\).
Thus

\[
\mathscr K_{m,P}\cap\ker B_N
 \simeq \mathscr K_{m,P}/S\mathscr K_{m,P-1}
\]

as an \(S_N\)-module. The root derivatives act only in the sum-zero
directions, so
\(\mathscr K_m=\mathbb C[S]\otimes\mathscr D_{m-1,N}\).
The quotient is precisely the inverse system on the sum-zero hyperplane.

This proves the primary identification with its physical Gram. The
extremal-projector formula in the source is a compatible explicit inverse,
not an unproved extra equivalence assumption.

### 4. Independent normal-form upper bounds

Let \(n=N-1\), choose root coordinates \(t_i=e_i-e_N\) in the algebra of
commuting differential operators, and consider the ideal generated by
\(t_i^m,(t_i-t_j)^m\). These variables are coordinates in the operator
algebra; their normal forms need not be permutation-equivariant. Only the
dimension upper bound is extracted from them.

#### Cubic root powers

The generators imply
\(t_i^3=0\), \(t_i^2t_j=t_it_j^2\), and
\(t_i^2t_j^2=0\). Every surviving monomial is squarefree or has one square.
The square can be moved to any index of its nonempty support. Hence the
upper Hilbert polynomial is

\[
(1+t)^n+t((1+t)^n-1)=(1+t)^N-t.
\]

This argument proves a spanning bound; it does not assume that the chosen
normal forms are independent.

#### Quartic root powers

Besides \(t_i^4=0\), the generator gives

\[
2t_i^3t_j-3t_i^2t_j^2+2t_it_j^3=0.
\]

Multiplication by \(t_i,t_j\) produces the two equations
\(-3A+2B=0\), \(2A-3B=0\), where
\(A=t_i^3t_j^2\), \(B=t_i^2t_j^3\). The determinant is five, so both
monomials vanish over characteristic zero. A double square reduces to

\[
t_i^2t_j^2=\frac23(t_i^3t_j+t_it_j^3).
\]

Three squares therefore vanish. All monomials reduce to squarefree,
exactly one square, or exactly one cube, with all other exponents one.
The degree-\(P\) spanning count is

\[
\binom nP+(P-1)\binom n{P-1}+(P-2)\binom n{P-2}
=\binom NP+(P-2)\binom N{P-1}.
\]

Equivalently, the upper Hilbert polynomial is
\((1+(N-1)t^2)(1+t)^{N-1}\). Endpoint degrees are interpreted by the
actual three monomial types; the binomial convention gives the same
answer, including degrees zero and one.

### 5. Matching lower bounds and the full permutation module

Let \(M_P\) be the squarefree degree-\(P\) polynomial space in all \(N\)
coordinates, and let \(R_j\) be the marked-\(j\)-subset space. Every member
of \(M_P\) obeys all cubic root derivatives. If \(SG\) is multiaffine,
then
\(\deg_{x_i}(SG)=1+\deg_{x_i}G\le1\) for every \(i\), forcing \(G\)
to be constant. Its restriction therefore loses exactly the invariant
linear polynomial \(S\), in degree one. This attains the cubic upper bound.

For quartic powers, let
\(\mathcal E_P=M_P\oplus R_{P-1}\), represented by squarefree monomials
and monomials with one square. Each such monomial has degree at most three
along every root direction. If \(SG\in\mathcal E_P\), then
\(\deg_{x_i}G\le1\) for every \(i\), so \(G\in M_{P-1}\).
Conversely, \(S M_{P-1}\subset\mathcal E_P\). Thus the exact sequence is

\[
0\longrightarrow M_{P-1}\xrightarrow{\times S}
 M_P\oplus R_{P-1}\longrightarrow\mathscr D_{3,N,P}
\longrightarrow0.
\]

Its lower dimension equals the independently proved upper bound. This
completes both the vector-space and representation classification. The
notation
\([M_P]+[R_{P-1}]-[M_{P-1}]\) is a character identity for this actual
quotient representation, not a vector space with negative summands.

### 6. Exact multiplicities and their physical use

The standard representation occurs once in \(M_j\) for
\(1\le j\le N-1\), and never at \(j=0,N\). The marked-subset stabilizer
has nonempty orbit blocks of sizes \(1,j-1,N-j\); its invariant standard
subspace has dimension

\[
\mathbf1_{j\ge2}+\mathbf1_{j\le N-1}.
\]

Frobenius reciprocity therefore gives, for every \(N\ge2\),

\[
K_{\le2,N}(t)=t\frac{1-t^{N-1}}{1-t},\qquad
K_{\le3,N}(t)=(t+t^3)\frac{1-t^{N-1}}{1-t}.
\]

These are the Bose multiplicities after tensoring with the right
degree-one primary, which is precisely the standard representation.
For the chiral cubic-cutoff intersection, the trivial representation gives

\[
K_{\rm chiral,N}(t)=1+t^2\frac{1-t^{N-1}}{1-t}.
\]

The formulas include the exceptional \(N=2\) case: the quartic-cutoff
right-degree-one states occur only at \(P=1,3\). For \(N=1\), only the
chiral degree-zero primary remains, and both right-degree-one intersections
are zero.

Combined with the separately proved positive Einstein residuals:

- In a fixed chiral primary block, the affine lower eigenvalue has exact
  multiplicity one at \(P=0,2,\ldots,N\), and zero elsewhere.
- For \(1<\Delta<\Delta_*\), the fixed \((P,1)\) affine lower eigenvalue
  has multiplicity one at \(1\le P\le N-1\), and zero elsewhere.
- At \(\Delta_*\), its exact multiplicity is the coefficient of
  \((t+t^3)(1-t^{N-1})/(1-t)\). This proves the complete two-ladder
  classification, including the \(P=N,N+1\) boundary states.

No further state can share that energy inside the same primary block:
the residual is a sum of positive pair operators, so its zero eigenspace
is exactly the simultaneous zero-channel intersection just classified.
For a nonempty block outside the listed degrees, the bound is strict.

The two projected seed families in the previous independent note have
exactly the two indicated nonzero ranges and are independent on their
overlap. They consequently give a complete explicit basis of this lowest
eigenspace, rather than only a lower bound on its dimension.

### 7. Arbitrary right degree and limits of the result

At degree \(Q\), the right primary representation is
\(\operatorname{Sym}^Q(V)\). The exact module identities above can therefore
be paired with it for every finite \(Q\). For a Young subgroup with
nonzero block sizes \(b_1,\ldots,b_a\), the required invariant Hilbert
series is

\[
\frac{1-y}{\prod_{\nu=1}^a\prod_{j=1}^{b_\nu}(1-y^j)}.
\]

The numerator removes the single global sum variable; division is valid
because it is an invariant polynomial coordinate and a nonzero divisor.
Frobenius reciprocity then gives the source's arbitrary-\(Q\) formulas.
This is an intersection classification, not an assertion that the
physical kernel is affine on all of its additional right channels.

Likewise, neither \(\mathscr D_{r,N}\) nor the increasing family of pair
cutoffs is asserted to be invariant under a generic physical sum of pair
operators. Noncommutativity between overlapping pairs obstructs that
extrapolation. The root's generic-kernel counterexample is compatible with
this proof, which needs an invariant total-primary space and a positive
residual, not an invariant cutoff filtration.

### 8. Literature and audit status

The source's attribution to Lenz's [*Hierarchical Zonotopal Power Ideals*](https://arxiv.org/pdf/1011.1136),
Definitions 3.1 and Theorem 3.2, was checked directly.
The stated caveat is correct: equality with the finite hyperplane-normal
ideal is guaranteed there in the specified \(k\le0\) range, while the
quartic root-only case uses the independent simplex proof above. The
underlying inverse-system pairing is described in that paper's §2.
The new proof does not require an extrapolation of the literature theorem
beyond its hypotheses.

No pre-existing finite spectra were rerun or counted as new proof. The
audit independently checked the representation intertwiner, root-derivative
criterion, positive harmonic quotient, normal-form upper bounds, exact
restriction kernels, permutation characters, small-particle endpoints,
and the passage from a positive residual to the complete physical
eigenspace. No remaining gap was found in these claims.


---

# 附录 J：Kohno/Gaudin residues 的精确障碍

独立原文件：`analytic_research/audit/KOHNO_RESIDUE_OBSTRUCTION.md`。本附录中的局部定理及公式编号按该原文件解释。

## A strengthened obstruction to Einstein pair kernels as Kohno-flat residues

Date: 2026-10-19. The root researcher first found an obstruction with the even Einstein pair values held fixed. This audit independently reconstructs it using differential Casimirs, then strengthens it to allow a common pair-Casimir addition. The latter addition preserves many-body eigenvectors on each global-primary block, so it is a meaningful extra freedom to check.

### 1. Exact scope of the theorem

Consider identical labelled positive-discrete-series factors with one-particle weight \(\Delta/2\), \(\Delta>1\). Each globally invariant two-site operator is diagonal in the multiplicity-free pair relative degree \(k\). Its even-channel eigenvalues are prescribed by the chiral Einstein kernel:

\[
w_0=g_{00},\qquad w_2=g_{02},\qquad
w_{2m}=-4\Delta^2\quad(m\ge2).
\]

Its odd values \(w_1,w_3,w_5,\ldots\) are completely free. Allow also

\[
\Omega_{ij}=w_{ij}+\beta C_{ij}+\alpha I,
\tag{1}
\]

where \(\alpha,\beta\) are common constants. They can depend on the fixed mass. The necessary infinitesimal braid relation for the proposed flat residues is

\[
[\Omega_{12},\Omega_{13}+\Omega_{23}]=0.
\tag{2}
\]

**Theorem.** No such odd completion and no \(\alpha,\beta\) satisfy (2) on the full labelled tensor product, for any \(\Delta>1\). A nonzero common rescaling of \(w\) does not help, since it can be divided out of (1).

This excludes the specified kernel as flat two-site residues, including the natural reorganization by a total-Casimir scalar. It does not exclude every spectral-parameter construction, every form of Bethe ansatz, unrelated commuting many-body operators, or arbitrary nonlocal transformations. In particular it is not a general nonintegrability theorem.

The shift \(\beta C_{ij}\) is relevant because
\(\sum_{i<j}C_{ij}=C_{\rm tot}+(N-2)\sum_iC_i\); its many-body sum is known and scalar in each global-primary block.

### 2. Independent finite differential construction

On three-particle translation-invariant homogeneous polynomials of degree \(J\), put \(x=z_1-z_3,y=z_2-z_3\). The derivatives are
\(\partial_1=\partial_x,\partial_2=\partial_y,\partial_3=-\partial_x-\partial_y\), and

\[
C_{ij}=-(z_i-z_j)^2\partial_i\partial_j
+\Delta(z_i-z_j)(\partial_i-\partial_j)+\Delta(\Delta-1).
\tag{3}
\]

Its pair eigenvalues are \(c_k=(\Delta+k)(\Delta+k-1)\), \(0\le k\le J\). Spectral interpolation gives every pair residue from (3):

\[
w_{ij}=\sum_{k=0}^J w_k
\prod_{l\ne k}\frac{C_{ij}-c_lI}{c_k-c_l}.
\tag{4}
\]

The code `kohno_differential_audit.py` constructs (3) and (4) directly. It does not import the old Racah implementation. For the degree-five continuation, the code independently generates pair-coupled columns by differential raising and implements the literal variable permutation \(z_2\leftrightarrow z_3\). The code verifies the Casimir eigenvalue equation and that this permutation squares to one.

Both methods use the complete labelled primary space of dimension \(J+1\), including pair-odd channels. Projecting to Bose states before asking for the labelled flatness relation would not test (2).

### 3. Generic Casimir shift: the old obstruction survives

The scalar \(\alpha\) drops out. By the three-site Casimir identity,

\[
C_{13}+C_{23}=C_{\rm tot}+\sum_iC_i-C_{12},
\]

so it is diagonal in the pair-12 basis. Hence the off-diagonal part of \(\Omega_{13}+\Omega_{23}\) is unchanged by \(\beta\). The \((0,2)\) commutator prefactor is

\[
c-2\beta(2\Delta+1),\qquad c=g_{00}-g_{02}>0.
\]

Unless

\[
\beta=\beta_*:=\frac{c}{2(2\Delta+1)}
=\frac{\Delta(2\Delta^2+7\Delta+2)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)},
\tag{5}
\]

the \(J=2,3\) \((0,2)\) equations force the same odd values as in the unshifted calculation:

\[
w_1=-\frac{2\Delta^2(\Delta+1)(16\Delta^2+6\Delta-19)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)},
\]

\[
w_3=-\frac{2\Delta(16\Delta^4+26\Delta^3+7\Delta^2+6\Delta+6)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\]

With these values, the unshifted \(J=4\) \((0,2)\) commutator in the independently generated coupled normalization equals

\[
\frac{3\Delta^2(\Delta+2)(\Delta+3)(\Delta+4)(3\Delta+5)
 (2\Delta^2+7\Delta+2)}
 {(2\Delta-1)^2(2\Delta+3)^2(2\Delta+5)^2}>0.
\tag{6}
\]

The shifted entry is (6) multiplied by
\([c-2\beta(2\Delta+1)]/c\), which is nonzero in this case. Thus only (5) remains to examine.

### 4. The exceptional shift really needs a new calculation

At \(\beta_*\), the shifted even residues for \(k=0,2\) coincide. The former \((0,2)\) argument loses its force and cannot be cited as an obstruction. This was initially a genuine unclosed branch of the investigation.

However their difference from the shifted \(k=4\) residue is

\[
\Omega_0-\Omega_4=\Omega_2-\Omega_4
=-\frac{2\Delta(\Delta+4)}{2\Delta-1}\ne0.
\tag{7}
\]

The \(J=4\) \((0,4)\) and \((2,4)\) off-diagonal conditions are therefore necessary. Their coefficient determinant as a linear system for \((w_1,w_3)\) is exactly
\(-3\Delta/(2\Delta+3)\), nonzero throughout the physical domain. They force, with
\(D_4=(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)\),

\[
w_1=-\frac{\Delta^2(\Delta+1)(64\Delta^3+182\Delta^2-25\Delta-194)}{D_4},
\]

\[
w_3=-\frac{\Delta(64\Delta^5+262\Delta^4+277\Delta^3+81\Delta^2+80\Delta+60)}{D_4}.
\tag{8}
\]

These values also make the shifted odd residues \(k=1,3\) equal. Consequently the degree-three odd condition is automatically satisfied. This failed shorter route is preserved in `kohno_casimir_shift.json`; it is not misreported as a successful counterexample.

Proceed to \(J=5\). The \((0,4)\) condition has nonzero coefficient

\[
\frac{(\Delta+1)(3\Delta+8)}{8(2\Delta+5)(2\Delta+7)}
\]

on the remaining free \(w_5\), and forces

\[
w_5=-\frac{\Delta(64\Delta^5+230\Delta^4-75\Delta^3
-1239\Delta^2-1800\Delta-640)}{D_4}.
\tag{9}
\]

After (8)–(9), the \((2,4)\) entry of \(w_{13}+w_{23}\) is still

\[
\frac{3\Delta(\Delta+1)(\Delta+4)(3\Delta+8)}
 {(2\Delta-1)(2\Delta+3)(2\Delta+5)}>0.
\]

Multiplying by the nonzero residue difference (7) gives the complete Kohno commutator

\[
\boxed{
[\Omega_{12},\Omega_{13}+\Omega_{23}]_{2,4}^{J=5}
=-\frac{6\Delta^2(\Delta+1)(\Delta+4)^2(3\Delta+8)}
 {(2\Delta-1)^2(2\Delta+3)(2\Delta+5)}<0.}
\tag{10}
\]

At \(\Delta=2\), this is \(-64\). Equations (7)–(10) close the exceptional branch for every \(\Delta>1\); no degree-six computation is needed. The explicit coefficient determinant and single-variable coefficient show that this is a pointwise all-mass proof, not a generic symbolic argument that might miss isolated physical masses.

### 5. Reproduction

The completed chain is generated by three scripts in order:

```bash
python3 analytic_research/audit/kohno_differential_audit.py

python3 analytic_research/audit/kohno_casimir_shift.py

python3 analytic_research/audit/kohno_shift_higher_degree.py
```

The JSON attachments preserve the exact entries, unique odd values, basis-normalization ratio to the root Racah calculation, and the final all-mass obstruction. These calculations test a concrete proposed organizing algebra; they do not amount to a classification of every possible integrable structure.


---

# 附录 K：Stable-N Hermitian 解析定理的独立审查

独立原文件：`analytic_research/audit/STABLE_PENCIL_ANALYTIC_AUDIT.md`。本附录中的局部定理及公式编号按该原文件解释。

## Audit of the new analytic stable-N pencil theorem and physical Jordan example

Date: 2026-10-19. This note audits `analytic_research/pencil/ANALYTIC_PENCIL_RESEARCH.md`, especially §§3–4 and §6, and its new verification data. The earlier stable-N proof is a read-only input. No statement that the old report had proved semisimplicity or an integer-power expansion is made: it had expressly left those properties open.

### 1. The Hermitian half-power construction has the necessary hypotheses

For fixed finite \((P,Q)\), the established stable basis contains excited occupations \(s\) with particle counts \(r_s\), independent of \(N\) once \(N\ge P+Q\). Its Gram is

\[
\Gamma_s(N)=\frac{g_s}{(N)_{\downarrow r_s}},\qquad g_s>0.
\]

Set \(t=N^{-1/2}\) and

\[
U_s(t)=t^{r_s}\sqrt{g_s\prod_{j=0}^{r_s-1}(1-jt^2)^{-1}}.
\]

The signed analytic square root is essential: for negative \(t\), using \(|t|^{r_s}\) would destroy analyticity. On positive \(t\), the displayed function is exactly the physical Gram square root.

After the ground subtraction, the full coordinate pencil is \(N A+B\). Unique zero-excitation mode, nonnegative bidegrees and a two-body interaction imply:

| Term | Possible output count minus input count | Power after \(U(A+t^2B)U^{-1}\) |
|---|---|---|
| \(A\), same count | zero, only the diagonal mode assignment | \(t^0\) |
| \(A\), ground-plus-excited splitting | one | \(t^1\) |
| \(B\), two-excited merger into one excited mode | minus one | \(t^1\) |
| \(B\), same count | zero | \(t^2\) |
| \(B\), splitting | one | \(t^3\) |

There is no transition decreasing the count by two: two excited particles cannot become two ground particles while preserving the positive total excitation. There is no count-preserving off-diagonal term in \(A\): a ground-plus-one-excited pair returning a ground particle must return the same other mode by bidegree conservation. Thus the transformed matrix is analytic at zero and its value there is diagonal.

The finite-
\(N\) adjoint relation is an identity of rational functions of \(N\). Its validity at all sufficiently large integers therefore continues it to real \(N>P+Q-1\). The transformed family is Hermitian for real \(t\) near zero. This step is not based on fitting a finite list of particle numbers.

For primary restriction, each product of centered generators has a distinct leading occupation of count \(r_\lambda\), and every correction has strictly larger count. Therefore

\[
V(t)=U(t)C\operatorname{diag}(t^{-r_\lambda})
\]

is analytic with full column rank at zero. Its Gram is positive there, so analytic Cholesky orthonormalization applies. This prevents the singular original primary Gram from invalidating a Rellich argument.

Parity is also preserved. With the count involutions \(\Pi_{ss}=(-1)^{r_s}\),
\(V(-t)=\Pi_{\rm full}V(t)\Pi_{\rm prim}\). The unique Cholesky factor with positive diagonal inherits the corresponding relation, and the orthonormal primary matrix obeys

\[
\widehat H(-t)=\Pi_{\rm prim}\widehat H(t)\Pi_{\rm prim}.
\]

All hypotheses of the finite analytic Hermitian spectral theorem are therefore established. Its use yields convergent Taylor eigenbranches in \(t\), not merely formal perturbation coefficients. This proves that the ramification in \(1/N\) is at most two. A simple leading slope has an even branch by parity. Degenerate slopes require the cluster analysis described in the new pencil note; finding an odd matrix entry alone would not settle their individual eigenvalue series.

This proof concerns the already computed order-\(G\) coefficient. It does not assert a uniform large-\(N\) weak-coupling regime. It also does not make a physically singular coordinate limit into a Jordan Hamiltonian at any finite physical particle number.

### 2. The actual (4,1) Jordan obstruction is decisive

The complete stable primary basis is
\((c_{41},c_{11}c_{30},c_{20}c_{21})\), for \(N\ge5\). The new exact matrix has

\[
A=\begin{pmatrix}s+\delta&0&0\\v_2&s&0\\v&0&s\end{pmatrix},
\quad
\delta=\frac{\Delta^2F(\Delta)}{2D_4},
\quad
F=2\Delta^3-37\Delta^2-11\Delta+100,
\]

where
\(D_4=(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)\),
\(v_2+v=2\delta\), and

\[
v=\frac{3\Delta^2(\Delta+1)(\Delta+4)}
 {(2\Delta-1)(2\Delta+3)(2\Delta+5)}>0.
\]

At either physical root of \(F\), the nilpotent part has one nonzero column \((0,-v,v)^T\), square zero and rank one. This is exactly Jordan type \((2,1)\), not a numerical failure of eigenvector conditioning.

The common left eigenvector \((-2,1,1)\) gives an invariant plane with basis

\[
S=\begin{pmatrix}1&0\\2&-1\\0&1\end{pmatrix}.
\]

The plane restriction has the form

\[
H_2(N)=\begin{pmatrix}
(s+\delta)N+b_{11}&k\\
v(N+6/\Delta)&sN+b_{22}
\end{pmatrix},
\]

with
\(k=\Delta(\Delta+3)(2\Delta^2+25\Delta+36)/[2(2\Delta+1)(2\Delta+3)(2\Delta+5)]>0\).
Thus at \(F=0\), the two exact eigenvalues are

\[
sN+\frac{b_{11}+b_{22}}2
\ \pm\sqrt{kvN+6kv/\Delta+(b_{11}-b_{22})^2/4}.
\]

The square-root coefficient is strictly positive at both masses. The finite-
\(N\) eigenvalues remain real and distinct on this plane throughout the physical stable range. The third branch is supplied by the common covector and is included in the complete three-dimensional result. The additional protected doublet at the different mass \((\sqrt{33}-1)/4\) is consistent with physical self-adjointness and does not invalidate the plane formula.

### 3. A newly executed original-Hamiltonian check of its key vertex

An independent dynamical check was requested because comparing two representations of the pair spectrum would not alone test the raw gravitational interaction. The new script `raw_jordan_vertex.py` therefore directly re-solves the old spatial scalar and momentum constraints, with their original boundary conditions, for the incoming pair \((0,0)+(4,1)\) and outgoing pair \((2,0)+(2,1)\), at \(\Delta=2\). It reads no saved raw-pair cache and no pair eigenvalue formula.

The six constraint polarizations give separate normalized-pair entries

\[
C=\frac{223186\sqrt5}{121275},\qquad
X=-\frac{176986\sqrt5}{121275},
\qquad C+X=\frac{8\sqrt5}{21}.
\]

Here \(X\) is the virtual boundary-density exchange contribution. The strong cancellation demonstrates why the sourced constraint response alone is not the physical check.

With \(h_{pq}=1/[(p+1)(q+1)]\) at this mass, converting normalized pair states to averaged creation coordinates multiplies by

\[
\sqrt{\frac{h_{00}h_{41}}{h_{20}h_{21}}}=\frac3{\sqrt5}.
\]

The total output coefficient is therefore \(8/7\), exactly the new formula for \(v\) at \(\Delta=2\). This is fresh original-Hamiltonian evidence for the crucial nonzero splitting vertex. It is not described as a raw all-mass derivation of the two algebraic resonance roots; those follow from the already proved all-mass pair kernel and the new exact algebra.

Reproduction:

```bash
python3 analytic_research/audit/raw_jordan_vertex.py
```

The exact result and elapsed time are preserved in `raw_jordan_vertex.json`.


---

# 附录 L：原 pair ordering 与全激发谱隙的独立审查

独立原文件：`analytic_research/audit/PAIR_ORDERING_AND_GAP_AUDIT.md`。本附录中的局部定理及公式编号按该原文件解释。

## Complete pair ordering and an independent audit of the sharp upper-edge gap

Date: 2026-10-19. All previous research files are read-only inputs.

**Status.** The pair ordering, its positive polynomial certificates, the strengthened pair comparison, the Beta-projector formula and the short endpoint derivation of the three-body Gram are new derivations in this audit. The triangle reduction and proposed Einstein gap were supplied by the root researcher and independently checked here. The statements below are proved from the established Einstein pair kernel; they are not inferred from sampled many-body spectra.

The physical input remains the minimal Einstein–scalar action, standard fast falloff \(d=\Delta>1\), Brown–Henneaux boundary data and the fixed canonical measure, ordering and physical mass prescription of mother note §§75–76. In that prescription the connected coefficient is \(W_N=\sum_{i<j}w_{ij}\), after the separate one-body subtraction. The kernel used here is mother §76.6, equation (76.7), reproduced in the previous Fock report §3.1. Its derivation from the constraints and virtual boundary-graviton exchange is an input to this new spectral argument.

“Gap” below means a gap between coefficients of the order-\(G\) energy correction, measured downwards from the upper edge of \(W_N\). It does not mean the free scalar mass gap or an assertion about a uniform large-\(N\) weak-coupling expansion.

### 1. The complete pair bands are strictly ordered

Write \(n=\min(k,l)\), \(s=|k-l|\), with the Bose condition \(k+l\) even. Set

\[
\mu=d(d-2),\qquad h=d+n,\qquad u_n=4\mu-8h(h-1).
\]

The three pair branches are

\[
g_{n,0}=u_n\frac{2h-2}{2h-1}
-\frac{2[h(h-1)+\mu]^2}{(2h-3)(2h-1)(2h+1)},
\]

\[
g_{n,2}=u_n+
\frac{(n+1)(n+2)(2d+n-1)(2d+n)}
 {(2h-1)(2h+1)(2h+3)},
\qquad g_{n,s}=u_n\quad(s\ge4).
\]

At \(n=0\), cancel the removable factor before specialization:

\[
g_{00}=-4d^2+\frac{2d^2(2d+5)}{(2d-1)(2d+1)}.
\]

**Theorem 1.** For all \(d>1\) and all integers \(n\ge0\),

\[
\boxed{g_{n,0}>g_{n,2}>u_n>g_{n+1,0}.}
\tag{1}
\]

The middle inequality is immediate from the positive product in \(g_{n,2}-u_n\). For the other two, the freshly generated file `pair_ordering_certificates.json` records exact numerator and denominator identities. A compact fully explicit certificate is as follows.

For \(n\ge1\), substitute \(d=x+1,n=y+1\). The numerator of \(g_{n,0}-g_{n,2}\), over
\((2d+2n-3)(2d+2n-1)(2d+2n+3)\), becomes

\[
\begin{aligned}
&8x^4+80x^3y+128x^3+156x^2y^2+532x^2y+438x^2\\
&\quad+116xy^3+606xy^2+938xy+448x\\
&\quad+29y^4+202y^3+469y^2+448y+130.
\end{aligned}
\]

Every coefficient is positive and the denominator is positive. The remaining \(n=0\) difference is the explicit positive number

\[
c:=g_{00}-g_{02}
=\frac{2d(2d^2+7d+2)}{(2d-1)(2d+3)}>0.
\tag{2}
\]

For \(u_n-g_{n+1,0}\), substitute \(d=x+1,n=y\). Its numerator, over
\((2d+2n-1)(2d+2n+1)(2d+2n+3)\), is

\[
\begin{aligned}
&120x^4+432x^3y+584x^3+608x^2y^2+1632x^2y+950x^2\\
&\quad+392xy^3+1572xy^2+1852xy+628x\\
&\quad+98y^4+524y^3+926y^2+628y+142.
\end{aligned}
\]

This completes an all-index, all-mass proof of (1). No fitted inequality or large-index limit is used.

#### A sign distinction

The highest pair eigenvalue is

\[
g_{00}=-\frac{2d^2(8d^2-2d-7)}{(2d-1)(2d+1)}.
\]

It is positive for
\(1<d<(1+\sqrt{57})/8\), zero at that threshold and negative above it. Consequently a blanket assertion that every order-\(G\) correction is negative would be false on the full allowed mass interval. None of the ordering or gap arguments requires that assertion.

### 2. Strong comparison to two separate chiral collision generators

Let \(P_{ij,0}^{L,R}\) denote the physical orthogonal projector onto pair relative degree zero in one chirality. Put

\[
K_N^\chi=\sum_{i<j}(I-P_{ij,0}^{\chi}),\qquad \chi=L,R.
\]

**Theorem 2.** On the Bose pair channels,

\[
\boxed{g_{00}-\gamma_{kl}\ge
c(\mathbf1_{k>0}+\mathbf1_{l>0}),}
\tag{3}
\]

with equality exactly for \((k,l)=(0,0),(2,0),(0,2)\).

If just one label is positive, Bose parity makes it an even integer at least two. Equation (1) gives (3), with equality only at two. If both labels are positive, \(n\ge1\), so (1) gives \(\gamma_{kl}\le g_{10}\). The additional exact identity

\[
g_{00}-g_{10}-2c
=\frac{8d(14d^3+9d^2-12d-1)}
 {(2d-1)(2d+1)(2d+3)}>0
\tag{4}
\]

settles this case strictly. Under \(d=x+1\), the numerator in (4) is
\(112x^4+520x^3+792x^2+464x+80\).

Therefore on the complete Bose space,

\[
\boxed{\binom N2g_{00}I-W_N\ge c(K_N^L+K_N^R).}
\tag{5}
\]

The chiral collision operators in (5) may be studied on the full labelled tensor product first. Their sum preserves diagonal Bose symmetry. The Einstein pair comparison itself is needed only on the simultaneous pair-even subspace, where its physical kernel is defined. It does not assume a particular extension of \(\gamma_{kl}\) to unphysical pair-odd states.

### 3. The pair-zero projector is a Beta averaging operator

In one chirality use the previous report §3.2 realization

\[
L_-=\partial_z,\quad L_0=z\partial_z+d/2,\quad
L_+=z^2\partial_z+dz,\qquad
\|z^a\|^2=\frac{a!}{(d)_a}.
\]

On pair total degree \(T\), the pair-zero line is generated by

\[
\psi_{T,0}=(L_{+,1}+L_{+,2})^T1
=\sum_{a+b=T}\binom Ta(d)_a(d)_b z_1^az_2^b,
\]

with \(\|\psi_{T,0}\|^2=T!(2d)_T\). For any monomial \(z_1^az_2^b\) of that degree,

\[
\langle\psi_{T,0},z_1^az_2^b\rangle=T!,\qquad
P_{12,0}(z_1^az_2^b)=\frac{\psi_{T,0}}{(2d)_T}.
\tag{6}
\]

Hence the complete polynomial operator is

\[
\boxed{
(P_{12,0}f)(z_1,z_2,\ldots)
=\frac1{B(d,d)}\int_0^1 t^{d-1}(1-t)^{d-1}
f(\zeta,\zeta,\ldots)\,dt,
\quad\zeta=tz_1+(1-t)z_2.}
\tag{7}
\]

Indeed the Beta moment of \(\zeta^T\) reproduces (6). This is an identity on the physical Bargmann space, not a change to the Euclidean polynomial inner product. Idempotence also follows directly because setting \(z_1=z_2\) leaves the diagonal unchanged. Self-adjointness follows from (6) and the physical norm. The distinction matters in collision-projector manipulations elsewhere in this research.

### 4. Three labelled particles: an endpoint proof of the Gram entry

Fix total chiral primary degree \(J\). Let \(F_i^{(J)}\) denote the primary with the other two particles coupled to pair degree zero, normalized to have spectator endpoint coefficient \([z_i^J]F_i=1\). For spectator three,

\[
F_3^{(J)}=
\sum_{r=0}^J(-1)^r\binom Jr
\frac{(L_{+,1}+L_{+,2})^r1}{(2d)_r}
z_3^{J-r}.
\tag{8}
\]

The total lowering operator kills (8) by neighboring-term cancellation. The three \(F_i\) are obtained by permutations and therefore have equal positive norms.

The coefficient of \(z_3^J\) in \(F_2\) is

\[
r_J=(-1)^J\frac{(d)_J}{(2d)_J}.
\tag{9}
\]

The pair projector \(P_{12,0}\) commutes with total lowering; its image in degree-\(J\) primaries is the one-dimensional span of \(F_3\). It preserves the coefficient of \(z_3^J\), since that term has pair total degree zero. Thus

\[
P_{12,0}F_2=r_JF_3.
\]

Self-adjointness and equal norms imply that (9) is exactly the normalized off-diagonal Gram entry. This proves the phase, including the negative sign at odd \(J\), without importing a complete Racah formula.

Let \(U_3=P_{12,0}+P_{13,0}+P_{23,0}\). Its auxiliary three-column Gram has diagonal one and off-diagonal \(r_J\), with eigenvalues

\[
1+2r_J,\qquad 1-r_J\quad\text{twice}.
\tag{10}
\]

Only the nonzero auxiliary eigenvalues enter the physical spectrum of \(U_3\). This is essential at the first two degrees:

- \(J=0\): the three columns coincide; Gram rank one and physical \(U_3=3\), so \(K_3=0\).
- \(J=1\): \(r_1=-1/2\), \(F_1+F_2+F_3=0\); Gram rank two and physical \(K_3=3/2\) twice. The symmetric auxiliary zero is not an additional physical state.
- \(J\ge2\): the three columns are independent. Their physical \(K_3=3I-U_3\) eigenvalues are \(2-2r_J\) once and \(2+r_J\) twice. Any remaining primary complement has \(K_3=3\).

Since \(|r_{J+1}|/|r_J|=(d+J)/(2d+J)<1\), the smallest nonzero value is reached in the symmetric \(J=2\) sector:

\[
\boxed{K_3^2\ge\lambda_3K_3,
\qquad \lambda_3=\frac{3d+1}{2d+1}.}
\tag{11}
\]

Odd-degree sectors have their lowest value at least \(3/2>\lambda_3\). Global descendants carry the same coefficients, so (11) holds on the entire three-fold labelled chiral tensor product. It can therefore be tensored with arbitrary spectators; a proof confined to three-boson primaries would not suffice for that use.

### 5. The triangle identity and its positivity audit

Write \(D_e=I-P_{e,0}\) for each unordered pair \(e\), and \(K_T=\sum_{e\subset T}D_e\) for a three-element set \(T\). The exact identity is

\[
K_N^2=\sum_{|T|=3}K_T^2-(N-3)K_N
+\sum_{\substack{e,f\text{ disjoint}\\e\ne f\text{ ordered}}}D_eD_f.
\tag{12}
\]

Its combinatorics can be checked without assuming commuting overlapping projectors. In the first sum, a diagonal \(D_e^2=D_e\) occurs \(N-2\) times; each ordered overlapping pair occurs once. The subtraction corrects the diagonal multiplicity to one. The last sum restores exactly the ordered disjoint terms.

Disjoint pair projectors act on disjoint tensor factors and commute. Their complements are projections, so \(D_eD_f\ge0\). Equation (11) on each labelled triple and \(\sum_TK_T=(N-2)K_N\) now yield

\[
K_N^2\ge[(N-2)\lambda_3-(N-3)]K_N
=\lambda_NK_N,
\qquad
\boxed{\lambda_N=\frac{Nd+1}{2d+1}.}
\tag{13}
\]

For \(N=2\), (13) follows separately from \(K_2\) being a projection, with \(\lambda_2=1\). On every finite level the operators are self-adjoint finite matrices, so (13) says that the nonzero spectrum lies at or above \(\lambda_N\). No convergence of an infinite matrix and no uniform-in-level perturbative estimate is needed.

### 6. Kernel, sharpness and Einstein equality states

The kernel of \(K_N\) consists of the global module generated by the constant polynomial. One proof uses the pair Casimir identity

\[
\sum_{i<j}C_{ij}=C_{\mathrm{tot}}+(N-2)\sum_i C_i.
\tag{14}
\]

Each pair-zero module has \(C_{ij}=d(d-1)\). Equation (14) then fixes total Casimir to the minimal tensor-product value
\((Nd/2)(Nd/2-1)\). Among total primary degrees \(P\ge0\),
\(C_{\mathrm{tot}}=(Nd/2+P)(Nd/2+P-1)\), which is strictly increasing on this domain. Only \(P=0\) is possible. The converse follows because every pair projector commutes with the global raising generator and fixes the constant.

The unique symmetric degree-two primary is

\[
F_2(z)=\sum_i z_i^2-\frac1N\left(\sum_i z_i\right)^2.
\tag{15}
\]

Formula (7), using \(\mathbb E\zeta=\sigma\) and
\(\mathbb E\zeta^2=\sigma^2+\delta^2/[4(2d+1)]\), gives the exact local identity

\[
(I-P_{ij,0})F_2
=\frac{Nd+1}{N(2d+1)}(z_i-z_j)^2.
\]

Summing and using \(\sum_{i<j}(z_i-z_j)^2=NF_2\) gives
\(K_NF_2=\lambda_NF_2\). Every pair has only degrees zero and two in this Bose polynomial. Therefore (3) is also saturated and

\[
\boxed{
W_N[F_2(z)\otimes1]
=\left[\binom N2g_{00}-c\frac{Nd+1}{2d+1}\right]
 [F_2(z)\otimes1].}
\tag{16}
\]

The right-handed mirror is another exact eigenstate family.

The two collision generators commute. Their common kernel is the ground-primary global \(sl(2)_L\oplus sl(2)_R\) module; it has one state at every full excitation level \((P,Q)\). Combining (5) and (13) proves

\[
\boxed{\sup\sigma(W_N)=\binom N2g_{00},\qquad
\mathrm{gap}_{\rm upper}(W_N)
=\frac{2d(2d^2+7d+2)}{(2d-1)(2d+3)}
  \frac{Nd+1}{2d+1},\quad N\ge2.}
\tag{17}
\]

For the equality classification, equality in (5) forces every pair into channels \((0,0),(2,0),(0,2)\). Equality in the tensor sum gap allows only a left-excited/right-ground summand or its mirror; superpositions of those two possibilities are allowed. On a left primary of degree \(P>0\), where every pair degree is zero or two, (14) gives

\[
K_N^L=\sum_{i<j}P_{ij,2}^L
=\frac{P(Nd+P-1)}{2(2d+1)}.
\]

Setting this equal to \(\lambda_N\) forces \(P=2\). Bose symmetry makes that primary one-dimensional. Thus the only primary equality modules are exactly \((2,0)\) and \((0,2)\). This argument also handles \(N=2\), where the collision operator alone has many additional gap states that fail the strict Einstein comparison.

At a fixed full \((P,Q)\) level, the top coefficient has multiplicity one. The coefficient in (16) has multiplicity

\[
\mathbf1_{P\ge2}+\mathbf1_{Q\ge2}.
\tag{18}
\]

If both labels are below two, that second branch may be absent. In particular the non-ground \((1,1)\) primary has a strictly larger penalty; (17) is a sharp bound over the complete correction spectrum, not an assertion that every small level contains an attaining state.

### 7. A positive hierarchy beyond the first comparison

The full band ordering yields an exact positive-projector resolution that may be useful for bounds on the remaining non-saturated spectrum. On the physical pair space define

\[
Q_n=\sum_{\min(k,l)\ge n}P_{kl},\quad
A_n=P_{nn},\quad B_n=P_{n+2,n}+P_{n,n+2}.
\]

Then

\[
\begin{aligned}
g_{00}I-w={}&\sum_{n\ge0}(g_{n,0}-g_{n,2})(Q_n-A_n)\\
&+\sum_{n\ge0}(g_{n,2}-u_n)(Q_n-A_n-B_n)\\
&+\sum_{n\ge0}(u_n-g_{n+1,0})Q_{n+1}.
\end{aligned}
\tag{19}
\]

Every coefficient and projector on the right is nonnegative. On each channel the sum telescopes to the left side, and on each finite level it is finite. Formula (19) is an exact structure statement. It does not assert that the sums of these projectors for different particle pairs commute or that the rest of the spectrum has thereby been diagonalized.

### 8. Reproduction and scope of independence

Run the new all-mass symbolic certificates with:

```bash
python3 analytic_research/audit/pair_ordering_certificate.py
```

The resulting JSON records four exact positive numerator certificates. These are newly generated in this research round. Old finite-matrix and raw-constraint checks were not relabeled as new tests.

The pair formula is a physically derived input, and the original reports supply independent constraint-integral checks of that input. Equations (6)–(13) then derive the collision gap without supplying an Einstein many-body eigenvalue as input. Equations (3)–(5) restore the complete Einstein pair dynamics, including its virtual boundary-graviton contribution. The theorem concerns each finite free-energy block of the prescribed order-\(G\) theory and claims neither an all-orders Hamiltonian nor quantum-prescription independence.


---

# 附录 M：固定右度全正谱原子极限的独立审查

独立原文件：`analytic_research/audit/FIXED_RIGHT_DEGREE_ATOMIC_LIMIT_AUDIT.md`。本附录中的局部定理及公式编号按该原文件解释。

## Independent audit of the fixed-right-degree atomic spectral limit

Date: 2026-10-19. The root researcher proposed the asymptotic theorem below. This audit checks its dimension counting, projector domains, overlap bounds, removal of auxiliary zeros and descendant extension. It finds no missing leading multiplicity or projection in the proof, subject to the explicit fixed-parameter assumptions below.

This is a theorem about the non-saturated spectrum in the specified Einstein pair theory. It is not a uniform asymptotic for simultaneous growth of \(N,Q,\Delta\), nor a claim that the exceptional levels outside the limiting bands have been diagonalized.

### 1. Precise block and positive auxiliary operator

Fix \(N\ge4\), \(Q\ge0\), and \(d=\Delta>1\), and let the left **global-primary** degree \(P\to\infty\). The previous Fock report §§5–6 gives

\[
W_N-b_N(Q)I\ge0,\qquad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1).
\]

The finite pair set is

\[
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,
\ k+l\equiv0\pmod2\},
\]

with strictly positive pair residuals

\[
a_{kl}=\gamma_{kl}-\{4d(d-2)-8(d+l)(d+l-1)\}>0.
\]

Choose a complete **orthonormal** pair–spectator frame in the subspace symmetric under \(S_2\times S_{N-2}\), with the distinguished pair in \(\mathcal B_Q\), and project onto the total-primary degrees \((P,Q)\). Let \(F\) be its isometric inclusion into the complete labelled primary space. Then the old Gram construction becomes

\[
T=\binom N2F^\dagger\Pi_{S_N}F=I+K,
\]

\[
K=2(N-2)R_1+\binom{N-2}{2}R_0,
\qquad R_i=F^\dagger\sigma_iF,
\]

where \(\sigma_1\) maps the distinguished pair to an overlapping pair and \(\sigma_0\) maps it to a disjoint pair. Representatives can be taken to be involutions. If \(D\) is diagonal with value \(a_{kl}\) on every corresponding spectator block, the positive auxiliary operator is

\[
B=\sqrt D(I+K)\sqrt D.
\tag{1}
\]

Its positive eigenvalues, with multiplicities, are exactly those of the physical \(W_N-b_N(Q)I\). Its zero eigenvalues are auxiliary dependencies and must be removed before normalizing a physical positive-spectrum measure.

The orthonormalization here is legitimate because the old frame Gram is positive and \(D\) is scalar on each of its blocks. Applying a Euclidean Frobenius norm directly to an arbitrary unnormalized coordinate matrix would not prove the bound below.

### 2. Projector domination is valid in the labelled primary space

Write \(P_{\rm aux}=FF^\dagger\). Let \(P_{12}^{\rm bad}\) be the sum of the distinguished pair projectors with labels in \(\mathcal B_Q\), restricted to the complete labelled global-primary space. The pair projectors commute with the total global algebra, so this restriction is well-defined and remains an orthogonal projector. Completeness of the frame gives

\[
P_{\rm aux}\le P_{12}^{\rm bad},\qquad
\sigma_iP_{\rm aux}\sigma_i^{-1}\le P_{\sigma_i(12)}^{\rm bad}.
\]

Consequently

\[
\|R_i\|_{\rm HS}^2
=\operatorname{Tr}(P_{\rm aux}\sigma_iP_{\rm aux}\sigma_i^{-1})
\le\operatorname{Tr}(P_{12}^{\rm bad}P_{\sigma_i(12)}^{\rm bad}).
\tag{2}
\]

The trace inequality does not require the two overlapping projectors to commute. For positive operators \(P\le A,Q\le C\), use
\(\operatorname{Tr}(PQ)\le\operatorname{Tr}(AQ)\le\operatorname{Tr}(AC)\).
All traces are finite because \((P,Q)\) is fixed during this step.

#### Disjoint pairs

Fixing the two pair primary labels leaves two pair modules and \(N-4\) scalar modules to couple. There are \(N-2\) effective positive-discrete-series factors. Their left total-primary multiplicity is
\(\binom{P-k-k'+N-4}{N-4}\), where a negative excitation gives zero. Right multiplicities and all pair labels are bounded because \(Q\) is fixed. Hence

\[
\operatorname{Tr}(P_{12}^{\rm bad}P_{34}^{\rm bad})=O(P^{N-4}).
\tag{3}
\]

For \(N=4\) the binomial is one whenever allowed, giving the required bounded rank. Thus the edge case has not lost a factor of \(P\).

#### Overlapping pairs

Decompose the three particles in the union into triple primary labels \((t,u)\). The remaining \(N-3\) particles are labelled spectators. The multiplicity for coupling the triple module and those spectators to \((P,Q)\) is exactly

\[
\binom{P-t+N-4}{N-4}
\binom{Q-u+N-4}{N-4}.
\tag{4}
\]

At fixed \((t,u)\), the local trace is a finite sum of products
\(|\mathcal R^{(t)}_{kk'}|^2|\mathcal R^{(u)}_{ll'}|^2\), over the admitted low pair strips. The orthonormal three-body Racah entries have

\[
\mathcal R^{(t)}_{kk'}=(-1)^t\frac{(d)_t}{(2d)_t}
\sqrt{w_k(t)w_{k'}(t)}\,\mathscr R_{kk'}(t).
\]

For bounded \(k,k'\), the finite rational functions satisfy
\(w_k(t)=O(1)\) and \(\mathscr R_{kk'}(t)=O(1)\), while
\((d)_t/(2d)_t=O(t^{-d})\). After absorbing finitely many small degrees into the constant,

\[
|\mathcal R^{(t)}_{kk'}|^2\le C(1+t)^{-2d}.
\tag{5}
\]

Equation (5) uses the orthonormal matrix, or the correctly Gram-adjusted rational Racah matrix. Squaring arbitrary rational-similarity entries without their physical weight would require a separate argument.

Since \(d>1\), the \(t\)-series is absolutely summable. Equations (4)–(5), summed over \(0\le t\le P,0\le u\le Q\), prove

\[
\operatorname{Tr}(P_{12}^{\rm bad}P_{13}^{\rm bad})=O(P^{N-4}).
\tag{6}
\]

Combining (2), (3), and (6), with \(N\) fixed,

\[
\boxed{\|K\|_{\rm HS}^2=O(P^{N-4}),\qquad
\|B-D\|_{\rm HS}^2=O(P^{N-4}).}
\tag{7}
\]

### 3. Exact auxiliary dimension and its leading coefficient

Let \(H_M(p,q)\) be the complete Bose level dimension for \(M=N-2\) spectator particles. The auxiliary dimension in pair channel \((k,l)\) is exactly

\[
d_{kl}(P,Q)=H_{N-2}(P-k,Q-l).
\tag{8}
\]

Indeed the pair-to-spectator coupling allows independent nonnegative left and right coupling degrees. Summing spectator **primary** multiplicities over their two labels is precisely the complete spectator level dimension. This is the same two-variable telescoping that reconstructs global descendants; a primary spectator multiplicity without the coupling sums would undercount by powers of \(P\).

The identity term of the spectator Molien series is
\(1/[M!(1-x)^M(1-y)^M]\). All other permutations have smaller order of the \(x=1\) pole, and possible other roots of unity give only lower powers at fixed \(M\ge2\). Thus

\[
d_{kl}(P,Q)=
\frac{\binom{Q-l+N-3}{N-3}}
 {(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\tag{9}
\]

Let

\[
\mathcal Z_{N,Q}=\sum_{(k,l)\in\mathcal B_Q}
\binom{Q-l+N-3}{N-3}.
\]

Then \(d_{\rm aux}=\sum d_{kl}\) has the same leading expression with the binomial replaced by \(\mathcal Z_{N,Q}\). The mass parameter remains \(d=\Delta\).

### 4. Zeros, the Wasserstein rate and outlier counting

Since \(D\) is uniformly positive for these fixed parameters,
\(\ker B\) and \(\ker(I+K)\) have equal dimensions. Every vector in the latter is a \(-1\) eigenvector of the Hermitian \(K\). Therefore

\[
z_{\rm aux}:=\dim\ker B\le\|K\|_{\rm HS}^2=O(P^{N-4}).
\tag{10}
\]

This independently bounds auxiliary dependencies; the logarithmic full-kernel theorem is not a premise of (10). The positive physical rank is consequently \(d_{\rm aux}-O(P^{N-4})\).

Hoffman–Wielandt applied to the Hermitian \(B,D\) matches their eigenvalues with total squared displacement bounded by (7). Divide by \(d_{\rm aux}\asymp P^{N-3}\). Equation (9) also shows that the atomic multiplicity weights of \(D\) differ from their limits by \(O(P^{-1})\). Finally, deleting the \(O(P^{N-4})\) auxiliary zeros and renormalizing changes the measure by mass \(O(P^{-1})\). All eigenvalues lie in a parameter-dependent compact interval because \(0\le B\le\binom N2\|D\|I\).

Thus the physical positive-residual empirical measure obeys

\[
\boxed{
\mathsf W_2\!\left(\mu_{N,P,Q}^{+},
\sum_{(k,l)\in\mathcal B_Q}
\frac{\binom{Q-l+N-3}{N-3}}{\mathcal Z_{N,Q}}
\,\delta_{a_{kl}}\right)=O(P^{-1/2}).}
\tag{11}
\]

Coincident atoms at particular masses are automatically combined as measures; no assumed separation between distinct \(a_{kl}\) is needed. The number of positive physical eigenvalues more than \(\epsilon\) away from the finite atom set is

\[
O(P^{N-4}/\epsilon^2).
\tag{12}
\]

Equation (12) leaves a nontrivial exceptional spectrum and does not give its individual levels. For \(N=4\) it permits a bounded number of fixed-distance outliers. For larger \(N\), it permits a lower-order growing number.

### 5. Full free-level descendants: a further analytic consequence

The preceding theorem is for primary blocks. Summing their global descendants gives a distinct statement for the complete free level \((P,Q)\). In that level the right primary label can be any \(0\le q\le Q\), and its baseline is \(b_N(q)\).

The old Molien character gives primary multiplicity

\[
m_N(p,q)=\frac{\binom{q+N-2}{N-2}}
 {N!(N-2)!}p^{N-2}+O(p^{N-3}).
\]

Summing \(p\le P\) and then \(q\le Q\), while using that non-saturated dimensions are one power smaller, proves the normalized **entire full-level** correction-spectrum limit

\[
\boxed{
\mu^{\rm full}_{N,P,Q}\longrightarrow
\sum_{q=0}^Q
\frac{\binom{q+N-2}{N-2}}{\binom{Q+N-1}{N-1}}
\,\delta_{b_N(q)}.}
\tag{13}
\]

If instead only the full-level non-saturated states are normalized, with saturation identified within each primary module before descendant summation, the atoms are

\[
b_N(q)+a_{kl},\qquad 0\le q\le Q,\quad(k,l)\in\mathcal B_q,
\]

with weights proportional to \(\binom{q-l+N-3}{N-3}\). The same \(O(P^{-1/2})\) Wasserstein rate follows by summing the primary squared-error bounds:
\(\sum_{p\le P}O(p^{N-4})=O(P^{N-3})\), while the total non-saturated dimension is \(\asymp P^{N-2}\). Finitely many blocks with \(p<q\) do not affect these limits.

Equation (13) must not be replaced by a single atom at \(b_N(Q)\); that would discard the lower-right-primary descendant modules. This distinction is the principal state-counting qualification added by this audit.

### 6. An exact obstruction to extrapolating the same mechanism to balanced degrees

Now keep \(N\ge4\) and \(\Delta>1\) fixed but set \(P=Q=L\to\infty\). The previous normalized-Hilbert–Schmidt approximation \(T=I+K\simeq I\) cannot hold in this regime. This is an obstruction to that specific approximation, not an integrability or computational-complexity no-go theorem.

The physical primary dimension has leading term

\[
d_{\rm phys}(L,L)\sim
\frac{L^{2N-4}}{N!((N-2)!)^2}.
\tag{14}
\]

For the auxiliary dimension, put \(M=N-2\). The identity Molien term for the full spectator level gives
\(H_M(L-k,L-l)\sim (L-k)^{M-1}(L-l)^{M-1}/[M!((M-1)!)^2]\).
The leading bad-pair domain is \(0\le k\le l\le L\); the extra strip of width two only affects lower powers. Its continuum integral is half of the symmetric square, and simultaneous pair parity adds a factor of one half. Thus

\[
\begin{aligned}
d_{\rm aux}(L,L)
&\sim\frac{L^{2M}}{2M!((M-1)!)^2}
\int_{0\le u\le v\le1}(1-u)^{M-1}(1-v)^{M-1}\,du\,dv\\
&=\frac{L^{2N-4}}{4((N-2)!)^3},
\end{aligned}
\tag{15}
\]

and consequently

\[
\frac{d_{\rm aux}}{d_{\rm phys}}\longrightarrow
\frac{N(N-1)}4=\frac12\binom N2.
\tag{16}
\]

There is no physical baseline kernel at \(P=Q\). This fact can be checked without invoking the full logarithmic-kernel theorem. Baseline equality would require every pair to have \(k_L\ge k_R+4\). On that support,

\[
C_{ij}^{L}-C_{ij}^{R}\ge 8\Delta+12>0.
\]

But the pair Casimir sum identity implies
\(\sum_{i<j}(C_{ij}^{L}-C_{ij}^{R})=C_{\rm tot}^{L}-C_{\rm tot}^{R}=0\)
on a \((L,L)\) primary. Taking its expectation is a contradiction. The positive physical residual therefore has full rank \(d_{\rm phys}\), and \(T\) has exactly \(d_{\rm aux}-d_{\rm phys}\) auxiliary zeros.

Accordingly \(K=T-I\) has that many exact \(-1\) eigenvalues, yielding

\[
\boxed{
\liminf_{L\to\infty}
\frac{\|K\|_{\rm HS}^2}{d_{\rm aux}}
\ge1-\frac{2}{\binom N2}>0.}
\tag{17}
\]

For \(N=4\), the auxiliary-to-physical ratio tends to three and the lower bound in (17) is \(2/3\). The fixed-right-degree proof cannot simply be copied with \(Q=P\). Removing the dependencies before choosing another reference operator, or finding a different limit with its own state weights, remains possible.


---

# 附录 N：Dirichlet 实现与非手征正性反例的独立审查

独立原文件：`analytic_research/audit/DIRICHLET_REALIZATION_AND_MARKOV_OBSTRUCTION.md`。本附录中的局部定理及公式编号按该原文件解释。

## Dirichlet realization: the chiral Markov theorem and a sharp nonchiral failure

Date: 2026-10-19. This audits the root scripts `collisions/collision_structure.py` and `collisions/dirichlet_realization.py`, and adds a new exact positive-polynomial obstruction. The obstruction applies for every physical scalar dimension, already for two particles.

### 1. The Laguerre/Jacobi dictionary uses the physical inner product

The one-variable map

\[
z^p\longmapsto \frac{p!}{(\Delta)_p}L_p^{(\Delta-1)}(x)
\]

is unitary from the polynomial Bargmann norm
\(\|z^p\|^2=p!/(\Delta)_p\) to the Gamma measure
\(x^{\Delta-1}e^{-x}dx/\Gamma(\Delta)\). This follows directly from Laguerre orthogonality; tensoring gives the labelled scalar representation. The auxiliary variables \(x_i\) are representation coordinates, not altered AdS boundary data.

The pair Casimir becomes

\[
C_{ij}=\Delta(\Delta-1)
-x_ix_j(\partial_i-\partial_j)^2
-\Delta(x_j-x_i)(\partial_i-\partial_j).
\]

At fixed \(S=x_i+x_j\), put \(u=x_i/S\). Then

\[
C_{ij}=\Delta(\Delta-1)
-u(1-u)\partial_u^2-\Delta(1-2u)\partial_u.
\]

The conditional measure is \(\operatorname{Beta}(\Delta,\Delta)\). Pair-zero projection is conditional Beta averaging; pair degree two is the orthogonal degree-two Jacobi projection. These formulas intertwine the actual operators, rather than merely reproducing a list of eigenvalues. The root code's differential Casimir identity and Gram normalization match them.

The continuous Beta projector here is related by the unitary transform to the Bargmann collision formula in `PAIR_ORDERING_AND_GAP_AUDIT.md`. The pointwise positive cones are distinct; unitarity alone does not identify positivity.

### 2. The chiral positive-rate claim is valid

Write

\[
a_0=g_{00}+4\Delta^2
=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},
\qquad
a_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
\]

In the chiral sector,
\(w-g_{00}I=a_0(P_0-I)+a_2P_2\).
For the discrete Doob realization at pair total excitation \(T\), the invariant distribution is Beta-binomial. Let
\(q_2(a)=((2a-T)^2-m_2)/\sqrt{v_2}\), with the mean and variance used in the root code. Its minimum product over two arguments is bounded by

\[
q_2(a)q_2(b)\ge
\begin{cases}
-T(2\Delta+3)/[2(T+2\Delta+1)],&T\text{ even},\\
-(T-1)(2\Delta+3)/[2(T+2\Delta)],&T\text{ odd}.
\end{cases}
\]

These follow by multiplying the extreme values of the centered square. In particular the off-diagonal kernel has the uniform strictly positive lower bound

\[
a_0+a_2q_2(a)q_2(b)
\ge a_0-a_2\frac{2\Delta+3}{2}
=\frac{2\Delta(\Delta+1)}{2\Delta-1}>0.
\tag{1}
\]

The continuum Jacobi kernel has the same limiting bound. For labelled \(N\)-particle degree \(P\), the discrete Doob stationary distribution is

\[
\pi_P(p_1,\ldots,p_N)
=\frac{P!}{(N\Delta)_P}
\prod_i\frac{(\Delta)_{p_i}}{p_i!},
\quad\sum_i p_i=P.
\]

The global positive ground-descendant similarity reduces locally to the pair Doob similarity, so the pair generators sum correctly. Passing to Bose occupations uses the permutation quotient and its orbit multiplicities.

The all-chirality upper-edge gap proved elsewhere uses a positive operator comparison with the two separate collision generators. It does not assume that the full nonchiral Einstein operator is itself Markov.

### 3. New theorem: the natural nonchiral product cone fails for every mass

Use left and right relative variables
\(X=2u-1,Y=2v-1\in[-1,1]\), with product measure proportional to
\((1-X^2)^{\Delta-1}(1-Y^2)^{\Delta-1}dX,dY\).
The physical pair Bose condition is invariance under
\((X,Y)\mapsto(-X,-Y)\). Write the pair eigenvalue using the relative-label notation \(\gamma_{kl}\).

Let

\[
L=w-\gamma_{00}I,\quad
c=\gamma_{00}-\gamma_{20}>0,\quad
b_{22}=\gamma_{00}-\gamma_{22},\quad
m=\frac1{2\Delta+1}.
\]

The complete pair comparison proved in this audit gives \(b_{22}>2c\). The degree-two Jacobi functions are proportional to
\(q(X)=X^2-m\) and \(q(Y)=Y^2-m\). Consequently the everywhere nonnegative polynomial

\[
F(X,Y)=X^2Y^2
=m^2+m(q(X)+q(Y))+q(X)q(Y)
\]

has

\[
LF=-cm(q(X)+q(Y))-b_{22}q(X)q(Y).
\]

At its interior zero \((X,Y)=(0,0)\),

\[
\boxed{
LF(0,0)=\frac{2c-b_{22}}{(2\Delta+1)^2}
=-\frac{12(10\Delta^3+29\Delta^2+8\Delta-14)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)}<0.}
\tag{2}
\]

The numerator of minus (2), after \(\Delta=1+x\), is
\(120x^3+708x^2+1152x+396\), a strict positive certificate. At \(\Delta=2\), the value is exactly \(-88/35\).

There is no domain or isolated-point loophole. The semigroup acts on this finite Jacobi sum explicitly:

\[
\boxed{(e^{tL}F)(0,0)
=\frac{1-2e^{-ct}+e^{-b_{22}t}}{(2\Delta+1)^2}.}
\tag{3}
\]

Its derivative at zero is strictly negative. Hence (3) is negative for all sufficiently small positive \(t\). The evolved function is a continuous polynomial in \(X,Y\), so it is negative on an open set of positive product measure. A positivity-preserving Markov semigroup is impossible.

The test function is separately even in both variables and therefore lies in the physical Bose cone. Only pair channels \((0,0),(2,0),(0,2),(2,2)\) enter; no choice of unphysical pair-odd extension can repair this failure.

**Scope.** This theorem excludes the natural product-Gamma/Dirichlet pointwise positive cone for the full nonchiral Einstein pair operator, already at \(N=2\), and therefore excludes a universal all-Fock Markov identification using that cone. It does not exclude an unrelated nonlocal unitary realization with a different positive cone. The representation variables and the Markov interpretation are auxiliary mathematical tools, not a change to the quantum theory or a claim that physical AdS evolution is classical stochastic motion.

### 4. Independent structural reason: bounded margins and unbounded mixed cost

An initially explored second proof explains why the failure is not an accidental low polynomial. Suppose the self-adjoint \(L\) were Markov in this product cone. The elementary semigroup difference identity gives its Dirichlet form the product inequality

\[
\mathcal E(fg,fg)
\le2\|f\|_\infty^2\mathcal E(g,g)
 +2\|g\|_\infty^2\mathcal E(f,f).
\tag{4}
\]

Indeed expand \(f(x)g(x)-f(y)g(y)\), square it using
\((a+b)^2\le2a^2+2b^2\), integrate against the stationary Markov transition measure, divide by \(2t\), and take \(t\downarrow0\). No locality or diffusion assumption is required.

Take \(f_n(X)=T_{2n}(X)\), \(g_n(Y)=T_{2n}(Y)\). They are even polynomials bounded by one. Their squared norms tend to one half, and their overlaps with each fixed low Jacobi polynomial tend to zero by the cosine integral after \(X=\cos\theta\). Marginal costs are uniformly bounded because \(\gamma_{k0}\) reaches the fixed chiral plateau for even \(k\ge4\).

In contrast, for any fixed even \(M\), the fraction of the product norm in channels \(k,l\ge M\) tends to one quarter. The complete band ordering gives
\(\gamma_{00}-\gamma_{kl}\ge\gamma_{00}-g_{M,0}\) there, and
\(g_{M,0}\to-\infty\). Thus the mixed product cost is unbounded, contradicting (4). The finite test (2) is the sharper explicit version of this structural obstruction.

### 5. The discrete negative-cycle statement has a different scope

The root code also gives exact negative off-diagonal cycle products in a nonchiral occupation matrix, at the recorded masses. A cycle product is invariant under every invertible diagonal similarity; scalar shifts leave it unchanged. It therefore excludes a nonnegative-off-diagonal generator of the form \(S^{-1}(H-\lambda I)S\) in that occupation basis.

That finite cycle argument alone does not exclude arbitrary changes of basis, a different positive cone, or every other sign convention. The new theorem (2)–(3) separately settles the natural Dirichlet realization and should not be presented as a consequence of the discrete cycle test.

The new exact polynomial certificate is generated by:

```bash
python3 analytic_research/audit/dirichlet_markov_counterexample.py
```

Its all-mass rational identity and the \(\Delta=2\) value are preserved in the adjacent JSON file.

