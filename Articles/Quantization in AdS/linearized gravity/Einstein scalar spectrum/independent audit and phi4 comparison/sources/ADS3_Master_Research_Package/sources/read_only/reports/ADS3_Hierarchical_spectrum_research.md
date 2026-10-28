# Global AdS₃ Einstein–scalar Fock spectrum：递归簇谱、指数软谱与普适结构

**独立开放探索报告 · 2026-10-19**  
**研究对象：** 原 minimal Einstein–real-scalar 理论、原 Brown–Henneaux/scalar 边界条件、原量子化处方，固定 \(\Delta>1\) 的 \(O(G)\)、\(h=0\) scalar Fock branch。  
**本轮定位：** 最后一轮开放探索；为以后综合报告提供新定理、完整证明和明确依赖，本文件不重新整理或重复证明前几轮全部成果。

## 摘要：本轮真正推进了什么

本轮获得了两组主要的一般结果。

第一，建立了**任意粒子数、任意固定右激发的递归 cluster spectral-set theorem**。它同时给出必要上界与构造性下界，明确处理左右联合 Bose 投影、内部右激发预算以及相等大小簇的交换奇偶。其核心是一条真实算子恒等式：对全部粒子分区作 Möbius 求和，连续函数演算中的非连通相互作用项抵消，余项在总左激发趋于无穷时成为紧算子。由此得到完整的奇偶分辨 Hausdorff 谱极限、有限 Cantor–Bendixson 累积深度，以及**远离更细簇阈值的孤立谱簇的最终精确重数**。这已超出先前的 singleton inclusion，也不使用此前失败的 atomic-diagonal compact-comparison ansatz。

第二，证明先前发现的广延 soft 正谱具有**指数小上界**：固定 \(N\ge3,\Delta>1,r\in(0,1)\) 后，除去任意小的密度损失，整个 soft 正谱质量已经进入 \(e^{-cP}\) 窗口。任意次指数、次二次阈值都截取相同的渐近正谱比例，因此没有额外的正密度代数尺度层。证明还给出全部有序正本征值在不同物理质量间的多项式比较：若指数率分布存在，它必定与质量无关。对三粒子进一步得到 \(Q/P\to1\) 的一段严格联合边界层。

普适性方面，碰撞旗标、cluster 紧算子结构、stable-\(N\) 占据数结构和低能有效代数依赖不同的假设。我们给出包含 Einstein 核的无限维数学类，并证明一个新的 chiral affine-defect 定理：**第一个严格正的偶相对自旋缺陷决定整个最低 leading-slope 代数的生成元数目**。Gegenbauer 首层系数只取决于第四和第六相对自旋缺陷。一个保持原 logarithmic kernel 和 Grassmann 主符号的精确变形，却把最低代数从两个生成元变成四个，说明这些结构不能互相替代。

仍未解决的是：落在更深阈值上的全部重数与分裂、一般 Einstein cluster Fredholm determinant、单个 soft 本征值的匹配指数下界与率分布，以及完整有限 \((N,P,Q)\) 谱的统一特殊函数或 Bethe 型求解。本文不把这些问题改称已解，也不据此推断不可积性。

---

## 1. 输入、记号和证明边界

### 1.1 本轮阅读与保留的输入

已完成对以下交付的全文及证明附录阅读，研究包已解包、清点并按证明依赖读取相关源文件和验证材料：

- `ADS3_Fock_space_research.md`、对应研究包、quickstart 和 verification summary；
- `AdS3两轮结果独立审查与补证.md`，包括全部 A–G 附录；
- `ADS3_Analytic_spectrum_research.md`，包括全部 A–N 附录、研究包、quickstart 和验证摘要；
- `ADS3_Deep_structure_research.md`，包括全部 A–I 证明附录、研究包、quickstart 和验证文件。

Deep 验证文件的 22 个顶层字段和 15 个内嵌证书已完整解析并与源证书核对。阅读清单区分“全文阅读”“源文件一致性检查”“按需实现检查”，不会把 ZIP 哈希或程序通过说成独立数学证明。原始 Einstein 笔记和版本对照仍是物理推导的来源。本轮在独立目录工作；对原研究树的 893 个文件作前后内容哈希检查，结果无修改、无缺失。

以下旧结果作为输入，不计入本轮新成果：物理 scalar branch 闭合、Einstein 两体系数、正谱分解、完整 logarithmic kernel、正 Gram/Racah 压缩、stable-\(N\) affine pencil、Grassmann 谱律、四粒子 cluster/Fredholm 定理、旧 singleton 下界和 Einstein Gegenbauer 首层。

### 1.2 物理能量与数学谱

下文 \(P,Q\) 是 global-primary 的双度数，\(\mathcal P_N(P,Q)\) 是左右全局最低权条件下、**对角** \(S_N\) 不变的物理空间。完整 Fock branch 的后裔由原来的全局表示论规则恢复；不能把左右两侧分别投影到 Bose 空间。

对 primary 有

\[
E=N\Delta+P+Q+Gg+o(G),\qquad
g\in\sigma(W_N(P,Q)).
\]

我们研究的是已抽取的 \(G\) 系数 \(W_N\)。所有 \(P,Q,N\) 极限都是该系数的数学极限。旧审查关于余项的限定继续保留：现有证明不能自动把 \(o(G)\) 加强为 \(O(G^2)\)。

令

\[
C_k=(\Delta+k)(\Delta+k-1),\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).
\]

原精确算子恒等式为

\[
\boxed{W_N(P,Q)=b_N(Q)I+A_N(P,Q),\qquad A_N\ge0.}
\tag{1.1}
\]

其 pair residual 系数记为

\[
a_{k\ell}=\gamma_{k\ell}-4\Delta(\Delta-2)+8C_\ell.
\]

在允许的 \(k+\ell\) 偶通道上，

\[
a_{k\ell}>0\iff k\le\ell+2,
\qquad a_{k\ell}=0\iff k\ge\ell+4.
\tag{1.2}
\]

固定 \(Q\) 时只有有限集合

\[
\mathcal B_Q=\{(k,\ell):0\le\ell\le Q,\ 0\le k\le\ell+2,
\ k+\ell\text{ 偶}\}
\tag{1.3}
\]

参与残差算子。这个精确 support 条件是 cluster 定理和 soft 定理共有的动力学入口。

---

## 2. 第一项主要结果：完整递归 cluster 谱集合

### 2.1 递归对象包含全部低粒子数谱

定义

\[
\Sigma_{m,q}=
\overline{\bigcup_{p\ge0}\sigma(A_m(p,q))},\qquad
\Sigma_{1,0}=\{0\},\quad\Sigma_{1,q>0}=\varnothing.
\tag{2.1}
\]

这是所有内部左激发的真实物理谱闭包，已经包含低粒子数本身的 cluster 极限。空 primary 空间不贡献谱。两体起点是有限的：

\[
\Sigma_{2,q}=\{0\}\cup
\{a_{kq}:0\le k\le q+2,\ k+q\text{ 偶}\}.
\tag{2.2}
\]

令

\[
\mathfrak C_{N,Q}=
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\ \bigcup_{q_1+q_2\le Q}
\bigl(\Sigma_{a,q_1}+\Sigma_{N-a,q_2}\bigr).
\tag{2.3}
\]

所有右激发分配都必须满足 \(q_1+q_2\le Q\)。剩余右激发由两个簇之间的 Clebsch–Gordan 耦合携带；在 \(A_N\) 中没有另加的相对右 Casimir 能量。若使用 \(W_m\) 而未恢复各簇与目标的不同 baseline，会得到错误的递归值。

### 定理 H1：所有固定 \(Q\) 的必要充分 accumulation set

对任意固定 \(N\ge2,Q\ge0,\Delta>1\)，

\[
\boxed{
\sigma_{\mathrm{ess}}\!\left(\bigoplus_{P\ge0}A_N(P,Q)\right)
=\mathfrak C_{N,Q}.
}
\tag{2.4}
\]

并且在 \(P+Q\) 为偶数的子序列上，有限谱集合在 Hausdorff 距离中收敛到 \(\mathfrak C_{N,Q}\)。当 \(N\ge3\) 为奇数时，全部二分的两簇大小不同，所以结论对**所有充分大的整数 \(P\)** 成立。

这给出了全部高左激发 spectral accumulation points 的必要充分刻画；不只是构造其中若干点。式 (2.4) 的 essential spectrum 指有限 primary 矩阵的分级直和，与连续空间散射问题的物理解释无关。

### 2.2 相等大小簇与完整奇偶规则

若 \(N=2m\)，记不等大二簇集合为

\[
\mathcal U_{2m,Q}=
\bigcup_{a=1}^{m-1}\ \bigcup_{q_1+q_2\le Q}
\bigl(\Sigma_{a,q_1}+\Sigma_{2m-a,q_2}\bigr).
\]

在内部 Hilbert 空间

\[
\mathfrak h_{m,Q}=\bigoplus_{q=0}^{Q}\bigoplus_{p\ge0}
\mathcal P_m(p,q)
\]

上选取完整正交本征态列表 \((\lambda_i,p_i,q_i)\)，保留真实重数与不同内部度数。定义

\[
\begin{aligned}
E_{m,Q}^{+}
&=\overline{\{\lambda_i+\lambda_j:i\le j,\ q_i+q_j\le Q\}},\\
E_{m,Q}^{-}
&=\overline{\{\lambda_i+\lambda_j:i<j,\ q_i+q_j\le Q\}}.
\end{aligned}
\tag{2.5}
\]

### 定理 H2：完整奇偶分辨谱极限

对 \(N=2m\ge4\)，

\[
\boxed{
\lim_{\substack{P\to\infty\\(-1)^{P+Q}=\eta}}^{H}
\sigma(A_{2m}(P,Q))
=\mathcal U_{2m,Q}\cup E_{m,Q}^{\eta},\quad\eta=\pm1.
}
\tag{2.6}
\]

这里 \(+\) 是内部加法 Hamiltonian 的预算对称平方，\(-\) 是预算外平方。两个不同源态即使有相同本征值，也允许出现在 \(E^-\) 中；禁止的只是重复同一个源向量。\(N=2\) 的 \(P+Q\) 奇 primary 空间为空，另行处理。

这一外平方是 Bose 对称性的精确后果。若
\(D|_{(p,q)}=(-1)^{p+q}\)，簇交换在耦合映射 \(T_P\) 下满足

\[
U_{\rm swap}T_P=(-1)^{P+Q}T_PJ,
\quad J=(D\otimes D)\operatorname{Swap}
=(I\otimes D)\operatorname{Swap}(I\otimes D).
\tag{2.7}
\]

共轭映射保留内部 Hamiltonian 和左右预算，因而将允许的 \(J\) 特征空间精确化为式 (2.5)。它没有改变标量粒子的统计。

### 2.3 五粒子结论

特别地，对每个固定 \(Q\)，

\[
\boxed{
\lim_{P\to\infty}^{H}\sigma(A_5(P,Q))
=\bigcup_{q=0}^{Q}\Sigma_{4,q}
\ \cup\!
\bigcup_{q_1+q_2\le Q}(\Sigma_{3,q_1}+\Sigma_{2,q_2}).
}
\tag{2.8}
\]

在 \(Q=0\)，设

\[
a_0=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},
\qquad a_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)},
\]

则

\[
\boxed{\lim_{P\to\infty}^{H}\sigma(A_5(P,0))
=\Sigma_{4,0}\cup\bigl(\Sigma_{3,0}+\{0,a_0,a_2\}\bigr).}
\tag{2.9}
\]

一个具体比较算子是全部 \(A_4(p,q)\) 的直和，加上所有预算允许的 \(A_3(p,q_1)+\alpha I\)，\(\alpha\in\Sigma_{2,q_2}\)。这包含真实的低粒子数内部谱。重复的两体零源只在“谱集合”比较中可以合并，在重数问题中不能合并。

程序 `five_body_comparator.py` 实现内部左度数 \(p\le R\) 的截断，目标 \(P\) 不进入计算。其谱集合随 \(R\to\infty\) 收敛到式 (2.8)。本轮没有有效的统一 \(R(\varepsilon)\)，所以不能由此宣称给定误差下的完整复杂度瓶颈已经解决。

---

## 3. cluster 上界为什么成立：分区代数与 Möbius 函数演算

### 3.1 真正的比较结构

对粒子子集 \(S\)，全局表示分解把内部 primary multiplicities 与 descendant module 分开。固定右预算 \(Q\) 后，使用

\[
\mathcal C_S^{\le Q}
=c_0\!\operatorname{-}\bigoplus_{p\ge0,\,0\le q\le Q}
\operatorname{End}\bigl(V_S^L(p)\otimes V_S^R(q)\bigr).
\tag{3.1}
\]

算子在 descendants 上作用为恒等。内部不同 \((p,q)\) 对应不同不可约表示，不允许任意跨度数矩阵元。对一个分区 \(\pi\)，只保留 \(\sum_{S\in\pi}q_S\le Q\) 的实际像；超出预算的形式张量块被取零商。

新的分析引理是

\[
\boxed{\mathcal C_S\mathcal C_T\subset\mathcal C_{S\cup T}
\quad(S\cap T\ne\varnothing),\qquad
\mathcal C_\pi\mathcal C_\tau\subset\mathcal C_{\pi\vee\tau}.}
\tag{3.2}
\]

证明先固定内部左度数 cutoff。若 \(A=S\setminus T\)、\(C=S\cap T\)、\(B=T\setminus S\)，两边 cutoff 同时限制 \(A,C,B\) 的全部内部度数和重数。余下的重叠是一组**固定大小、固定端点**的三子树 Racah 矩阵，随并集内部度数 \(R\) 增长有

\[
F_{uv}^{(h_A,h_C,h_B;R)}=O(R^{-2h_C}).
\tag{3.3}
\]

右空间维数固定，不能引入新的增长；随后由 \(c_0\) 范数逼近去掉 cutoff。这里没有把增长的重数偷偷纳入一个固定端点常数。式 (3.2) 中只有一块分区的分量，才是整个总-primary 分级直和上的紧算子。

### 定理 H3：连通函数演算

令

\[
H_\pi=\sum_{S\in\pi}A_{|S|}^{(S)},\qquad
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
\]

对共同有界谱区间上的每个连续函数 \(f\)，

\[
\boxed{\mathfrak M_N(f):=
\sum_{\pi}\mu(\pi,1_N)f(H_\pi)
\quad\text{是总-primary 分级上的紧算子。}}
\tag{3.4}
\]

若 \(f\) 是次数不超过 \(N-2\) 的多项式，式 (3.4) **在每个有限度数精确为零**。

证明对 \(f(x)=x^r\) 展开有序 pair words。一个 word 的相互作用图连通分区为 \(\gamma\)，其总系数是

\[
\sum_{\pi\ge\gamma}\mu(\pi,1_N)=\mathbf1_{\gamma=1_N}.
\tag{3.5}
\]

所以只剩连通 words；式 (3.2) 将每一个送入全粒子紧分量。再用一致多项式逼近得到连续函数的结论。

若 \(p_B\) 是真实 Bose 投影，内部对角 Bose 投影 \(Q_\pi\) 满足
\(Q_\pi p_B=p_B\)。因此 \(p_B f(H_\pi)p_B\) 只看真实内部 Bose 谱。让 \(f\) 在全部 proper cluster 谱上为零，所有 proper 项精确消失，剩下 \(f(A_N)\) 紧。这就是谱上界。

下界由两个簇的左右 Clebsch–Gordan 耦合给出。不同二分的 cutoff 投影乘积属于全粒子紧分量，所以 Bose 平均后的 Gram 矩阵趋于正确的轨道常数乘恒等。极分解给出有限源族的等距嵌入。将全部多簇分区递归合并为二簇、应用有限 \(\varepsilon\)-net，便得到 H1–H2 的必要充分结论。

证明附录还保留一条独立的 C*-ideal filtration 上界证明，用来交叉审查上述 Bose 接口。它不假设所有 partition grades 线性独立，也不使用不受控制的抽象 crossed-product 稳定子表示。

### 3.2 递归谱不变量与 determinant 的边界

对非实 \(z\)，式 (3.4) 给出

\[
\boxed{R_N^{\rm conn}(z)=
\sum_\pi(-1)^{|\pi|-1}(|\pi|-1)!
(z-H_\pi)^{-1}\quad\text{紧}.}
\tag{3.6}
\]

在大 \(z\) 展开中，首个可能非零项是 \(z^{-N}\) 乘全部有序 spanning-tree pair words。这个连通 resolvent 和连续函数演算是实际的递归算子结构。

紧性本身不提供 Schatten 可和性。对一般 \(c_0\) pair 类，已有精确反例：两体偶通道取 \(v_k=1/\log(k+2)\)，则

\[
(z-V)^{-1}-z^{-1}I
\]

紧，但对任意有限 \(s>0\) 都不属于 \(\mathfrak S_s\)。因此，从 partition 紧性直接推出某阶 regularized Fredholm determinant 的一般论证是错误的。这个反例不排除 Einstein 有限通道子类的 determinant；后者仍需要新的 Schatten 估计。

---

## 4. 累积层级与可完成的孤立谱重数

### 定理 H4：有限累积深度

令 \(K^{(j)}\) 表示删除孤立点所得的第 \(j\) 次 Cantor–Bendixson 导集。对 Einstein 核和任意固定 \(N\ge2,Q\)，

\[
\boxed{
\Sigma_{N,Q}^{(N-2)}
\subset\widehat\Sigma_2(Q)
=\{0\}\cup\{a_{k\ell}:(k,\ell)\in\mathcal B_Q\},
\qquad \Sigma_{N,Q}^{(N-1)}=\varnothing.
}
\tag{4.1}
\]

因此全部内部激发谱闭包是**可数紧集，具有有限累积深度**，不会在固定 \(Q\) 极限中藏有一个连续区间或非空 perfect subset。这里的深度上界不声称最优。

证明使用 \(\Sigma_{N,Q}'\subset\mathfrak C_{N,Q}\)，以及紧实数集合的 Minkowski 和导集关系

\[
(K+L)^{(r)}\subset\bigcup_{i+j=r}(K^{(i)}+L^{(j)}).
\]

这是不同谱点的累积结论。一个精确零本征值在无限多个度数重复，不会因此在 Cantor–Bendixson 集合中获得额外点。它也不等价于 essential spectral multiplicity。

### 定理 H5：远离更细阈值的最终精确重数

对固定 \(N\ge3,Q\ge0,\Delta>1\)，令

\[
\mathfrak F_{N,Q}=
\bigcup_{\substack{\pi\text{ 分区}\\|\pi|\ge3}}
\ \bigcup_{\sum q_S\le Q}\ \sum_{S\in\pi}\Sigma_{|S|,q_S}.
\tag{4.2}
\]

它是至少三个簇形成的紧阈值集合。若

\[
\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q},
\tag{4.3}
\]

则 \(\lambda\) 是二簇谱集合的孤立点，所有产生该值的二簇内部谱投影之和有限秩。固定一个足够小的邻域，在每个指定的 \(P+Q\) 奇偶子序列上，其目标谱重数最终**恰好**等于每个二分轨道的允许内部 \(\lambda\) 源空间维数之和。相等簇使用 H2 的预算对称/外平方选择；如果该奇偶没有允许源态，最终重数为零。

这里按分区轨道计数，不乘 \(\binom Na\) 个标签划分，也不把同一有序源交换后的副本重复计数。

关键的新论证是：如果一个与 \(\mathfrak F\) 分离的紧窗口包含无限多个内部源态，就能令至少一个内部左度数趋于无穷，利用更低粒子数的 H1 把其极限拆为更多簇，矛盾。因此源投影确实有限。选取局部 \(f\) 后，Möbius 恒等式只剩二分投影；联合极分解将它们转成真实有限秩正交投影。它与目标谱投影的算子范数差趋于零，小于一后秩必须相同。

这不是单纯的 quasimode 重数下界，也不声称本征值对离散 \(P\) 有某种未证明的解析展开。

在 \(N=5,Q=0\)，

\[
\mathfrak F_{5,0}=\Sigma_{3,0}+(\{0\})
\ \cup\ (\Sigma_{2,0}+\Sigma_{2,0}).
\]

对 \(\lambda\notin\mathfrak F_{5,0}\) 的实际 cluster 谱点，最终重数为

\[
\boxed{
\sum_{p\ge0}\operatorname{mult}_{A_4(p,0)}(\lambda)
+\sum_{\alpha\in\{a_0,a_2\}}\sum_{p\ge0}
\operatorname{mult}_{A_3(p,0)}(\lambda-\alpha).
}
\tag{4.4}
\]

这些和在条件 (4.3) 下确实有限。零 pair 通道不出现在第二项，因为它会把 \(\lambda\) 放入 \(\Sigma_{3,0}\subset\mathfrak F_{5,0}\)。

### 推论 H6：所有粒子数的 chiral 顶谱支最终简单

对每个固定 \(N\ge3,\Delta>1\)，

\[
\boxed{
\lambda_{\max}(A_N(P,0))
=\binom{N-1}{2}a_0+O(P^{-\Delta}),
\quad\text{且对充分大的 }P\text{ 为简单本征值。}
}
\tag{4.5}
\]

唯一产生最大极限值的源是 \((N-1)\) 粒子内部 ground primary 加一个 singleton。因为 \(a_2<a_0\)，内部上界取等要求每一对都处于相对自旋零；Casimir 求和恒等式随即强迫内部 primary 度数为零。该值与三簇阈值分离，所以 H5 给最终简单性；误差阶来自旧的固定 ground-source singleton 估计。

一般落在 \(\mathfrak F_{N,Q}\) 上的谱支仍可能有递归重叠、增长重数或趋零正谱。H5 没有解决这些更深阈值。

---

## 5. 第二项主要结果：soft 正谱的指数上界

### 5.1 严格分开三种“零”

令

\[
d_{P,Q}=\dim\mathcal P_N(P,Q),\qquad
\kappa_{P,Q}=\dim\ker A_N.
\]

\(\kappa\) 来自旧的精确 logarithmic theorem，不来自数值阈值。在 \(P,Q\to\infty\)、\(Q/P\to r\in(0,1)\) 时，旧 Grassmann 律给出

\[
A_N/P^2\ \leadsto\ 8\sum_e(r^2Y_e-X_e)_+.
\]

令独立 Haar 定向二平面的 Plücker 坐标为 \(B_e,B'_e\)，\(X_e=B_e^2\)、\(Y_e=(B'_e)^2\)，并记

\[
\omega_N(r)=\Pr\{|B_e|\ge r|B'_e|\ \forall e\},\qquad
k_N(r)=\lim\kappa_{P,Q}/d_{P,Q}.
\tag{5.1}
\]

这里 \(\omega\) 是缩放谱律的零原子，\(k\) 是精确 kernel 的比例。两者之差才是 soft 严格正谱的质量。旧研究已证明 \(N=3\) 的每个 \(0<r<1\) 都有 \(\omega>k\)，并证明较大 \(N\) 的一段充分小固定比例区间；本轮没有擅自扩大全 \(N\) 的这个正性区间。

### 定理 S1：指数小正谱体积界

定义严格零腔室

\[
\Omega_\delta(r)=\{|B_e|-r|B'_e|>\delta\ \forall e\},
\qquad\omega_\delta(r)=\Pr(\Omega_\delta(r)).
\]

对任意固定 \(N\ge3,\Delta>1,0<r<1,\delta>0\)，

\[
\boxed{
\liminf\frac{\#\{0<\lambda(A_N)\le e^{-\delta^2P/32}\}}{d_{P,Q}}
\ge\max\{0,\omega_\delta(r)-k_N(r)\}.
}
\tag{5.2}
\]

而且

\[
0\le\omega_N(r)-\omega_\delta(r)
\le K_N\delta,\qquad K_N=\binom N2(N-2).
\tag{5.3}
\]

所以对每个允许密度损失 \(\eta>0\)，可以取
\(c_\eta=\eta^2/(32K_N^2)\)，使至少渐近比例
\(\omega-k-\eta\) 的全部 primary 态成为满足
\(0<\lambda\le e^{-c_\eta P}\) 的严格正谱。

这回答了尺度问题的一大部分：原有广延 soft 质量没有停留在 \(P\)、常数或某个更小的代数尺度。但它只是上界；没有证明所有单独能级共享同一个指数率。

### 定理 S2：每个次指数窗口都截取同一正谱比例

对任意 \(t_{P,Q}>0\) 满足

\[
\log t_{P,Q}=o(P),\qquad t_{P,Q}/P^2\to0,
\]

都有

\[
\boxed{
\frac{\#\{0<\lambda(A_N)\le t_{P,Q}\}}{d_{P,Q}-\kappa_{P,Q}}
\longrightarrow
z_{+,N}(r):=\frac{\omega_N(r)-k_N(r)}{1-k_N(r)}.
}
\tag{5.4}
\]

这包含所有固定 \(P^\alpha\)、\(\alpha<2\)，所有固定正阈值，以及 \(e^{-P^\theta}\)、\(0<\theta<1\)。任意两个这样的窗口之间只有 \(o(d_{P,Q})\) 个正本征值。

仍允许零密度的不同尺度、超指数小的特殊族，以及靠近腔室边界时趋零的指数率。不能把式 (5.4) 改写成每个正本征值的统一渐近等式。

### 5.2 为什么能够控制指数窗口

旧的主符号或 \(O(P^{-1})\) 归一化迹比较无法控制指数小谱。本轮使用的是精确旗标与一个共同的度量搬运。

在 labelled primary 多项式空间中，pair 高相对自旋旗标满足

\[
F_e(K)=V_P\cap(z_i-z_j)^K\mathbb C[z]_{P-K}
=\bigoplus_{k\ge K}E_e(k;\Delta).
\tag{5.5}
\]

左侧与质量无关。令 \(M_Q(\Delta)\) 是物理 Bargmann 内积相对辅助参数 \(\Delta_0=1/2\) 的**受限 primary Riesz 算子**，则

\[
T=I_L\otimes M_Q(\Delta)^{-1}
\tag{5.6}
\]

同时、精确地搬运所有 pair-good 子空间。其条件数只按 \(P,Q\) 的固定幂增长。

辅助参数只用于正定表示与度量，绝不在那里计算有极点的 Einstein \(\gamma_{00}\)。在该辅助球谐实现中，

\[
C_e=\tfrac14J_e^2-\tfrac14,
\qquad R_e=\mathbf1_{|J_e^L|-|J_e^R|\le4}
\tag{5.7}
\]

恰好是完整 bad-support 投影。在 null-tensor coherent 态上，\(J_e\) 是 \(2P\) 个取值于 \(\{-1,0,1\}\) 的独立有界变量之和；它的大偏差估计是有限维精确概率问题。严格腔室内

\[
\langle\Psi,R_e\Psi\rangle\le4e^{-P\delta^2/16}.
\]

最后使用 Bose 投影后的 coherent concentration operator：其迹给子空间维数，正性和谱阈值给该**整个子空间**的统一 Rayleigh 商。这样避免把许多不正交 coherent 态误当作同样多的独立低能态。搬运回物理质量后，只损失多项式因子；减去精确有限 \(\kappa\)，得到 S1。

### 定理 S3：全部有序正谱的质量无关指数率

写 \(b=\Delta-1/2\)、

\[
m_P=e^{-2Nb}2^{-Nb}(P+1)^{-Nb}.
\]

令 \(B_0\) 是辅助表示中的单位 bad-support 和，则全部有序本征值，包括精确零模，满足

\[
\boxed{
a_{\min}m_Pm_Q\lambda_j(B_0)
\le\lambda_j(A_N(\Delta))
\le\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0),
}
\tag{5.8}
\]

并有全 \(\Delta>1\)、全通道的显式界

\[
(2\Delta+3)^{-3}\le a_{\min},\qquad
a_{\max}\le20(\Delta+Q)^2.
\tag{5.9}
\]

因此对两种物理质量，

\[
\boxed{
\sup_j\left|
\frac{\log\lambda_j^+(\Delta_1)}P-
\frac{\log\lambda_j^+(\Delta_2)}P\right|
=O(\log P/P).
}
\tag{5.10}
\]

这个结论作用于整个有序正谱。任何存在的指数率分布或同一激发子序列上的率分布极限，都与质量无关；本轮没有证明该分布存在，也没有排除在无穷指数率处出现概率质量。

### 5.3 一个显式比例及两个严格有限证书

在 \(N=3,r=1/2\)，旧正项级数与新 margin 界给出

\[
\boxed{
\liminf\frac{\#\{0<\lambda\le e^{-P/(1152\pi^4)}\}}
{d_{P,Q}-\kappa_{P,Q}}
\ge\frac{2}{3\pi^2}\approx6.75\%.
}
\tag{5.11}
\]

这是保守的渐近常数，不是有限低激发 onset 的估计。为了独立确认实际 Einstein 矩阵中的小正谱，另作有理数 Sylvester inertia 计算：

| \(\Delta=2,N=3\) | 物理维数 | 精确物理 kernel | 辅助 Gram 零模 | 严格最小正本征值区间 |
|---|---:|---:|---:|---|
| \((P,Q)=(16,8)\) | 26 | 0 | 8 | \(1/5<\lambda_{\min}^+<1/3\) |
| \((P,Q)=(32,16)\) | 94 | 4 | 8 | \(1/6000<\lambda_{\min}^+<1/5000\) |

没有浮点根、近零阈值或指数拟合参与这些判断。第二个矩阵在 \(0,1/6000,1/5000\) 的惯性分别是 \((90,0,8),(90,8,0),(89,9,0)\)，次序为正、负、零。有限证书只证明所列区间；指数定理来自前面的独立证明。

---

## 6. 三粒子 \(r\to1\) 的严格联合边界层

固定比例证明的 dominated convergence 本身不能处理收缩的腔室。本轮对 \(N=3\) 的 signed-permutation coherent 迹建立了统一界。

设 \(r=Q/P\in[1/2,1)\)、

\[
\mu(r)=\omega_3(r)-\frac{(1-r)^2}{2r}>0.
\]

令 \(D=(4P+1)(4Q+1)\)。对任意可测腔室 \(\Omega\)，其 Bose concentration operator 满足

\[
\left|\frac{\operatorname{Tr}C_\Omega}{d_{P,Q}}-
\operatorname{vol}\Omega\right|
\le\frac{160}{\min(P,Q)}.
\tag{6.1}
\]

证明使用 384 元双手征 sign/Bose 群，四个中心恒等元，以及每个非中心立方体旋转至少 \(\pi/2\) 的旋转角。中心化后的迹差被 \((1_\Omega-\operatorname{vol}\Omega)\) 直接控制，所以常数对移动区域也统一。

### 定理 S4：移动比例的有限与渐近界

如果 \(\mu\ge1280/\min(P,Q)\)，至少 \(\mu d_{P,Q}/2\) 个严格正本征值满足

\[
\boxed{
\lambda\le
\frac{96D\,a_{\max}}{\mu m_Pm_Q}
\exp[-P\mu^2/2304].
}
\tag{6.2}
\]

这里 \(m_L\) 取式 (5.8) 的 \(N=3\) 值。若
\(P\mu(r_P)^2/\log P\to\infty\)，可吸收全部前因子为
\(\lambda\le\exp[-P\mu(r_P)^2/4608]\)。

利用旧的精确 endpoint 体积渐近，若

\[
1-Q/P=cP^{-\beta}(1+o(1)),\qquad c>0,
\quad0<\beta\le1/4,
\]

则至少

\[
\boxed{
\left(\frac{c^2\beta^2}{8\pi^2}+o(1)\right)
P^{2-2\beta}\log^2P
}
\tag{6.3}
\]

个严格正本征值满足

\[
\boxed{
\lambda\le\exp\!\left[-
\left(\frac{c^4\beta^4}{2048\pi^4}+o(1)\right)
P^{1-4\beta}\log^4P\right].
}
\tag{6.4}
\]

在 \(\beta=1/4\) 仍有 \(\exp[-C\log^4P]\) 上界，比任意逆幂更小；态数至少为 \(P^{3/2}\log^2P\) 阶。它占总维数 \(\asymp P^2\) 的比例趋零，因此不与严格平衡 \(r=1\) 的无零原子谱律冲突。

\(\beta\le1/4\) 是本方法证明的充分范围，不是最优相变点。\(\beta>1/4\)、精确 \(P=Q\) 的微观 soft 谱，以及 \(r\to0\) 时与固定 \(Q\) 的统一匹配，仍未解决。

---

## 7. 一个包含 Einstein 的普适类，以及真正的动力学区别

### 7.1 同一 kernel 与 Grassmann 主符号的无限维类

在同一个标量表示上定义抽象对称 pair 核

\[
w_{k\ell}=u-c\min(C_k,C_\ell)
+\epsilon_{|k-\ell|}(\min(k,\ell)),\quad c>0,
\tag{7.1}
\]

其中 \(\epsilon_0(n),\epsilon_2(n)>0\)，其余允许偶自旋差 \(\ge4\) 的修正为零。Einstein 是 \(u=4\Delta(\Delta-2),c=8\) 的特殊成员。

这个定义是数学上的算子类，不把抽象变形宣称为新的 minimal Einstein 物理理论。其结构依赖如下：

| 结构 | 本轮明确的充分条件 | 不能由此推出 |
|---|---|---|
| 完整 logarithmic kernel、Gram rank | 同一表示、相同严格正 bad support | 正本征值的数值或意外简并 |
| Grassmann min law | 规定的 min-Casimir 主项，\(\sup_{n\le L}\epsilon_j(n)=o(L^2)\) | 微观谱隙或全部率分布 |
| 指数 soft 上界 | 精确碰撞旗标、度量多项式比较、正权重多项式上界 | 匹配指数下界 |
| 全正谱 log-rate 比较 | 再加正 pair 权重的双边多项式控制 | 极限率分布自动存在 |
| 固定 \(Q\) 递归 cluster 定理 | 自伴、全局协变、Bose，加 residual pair 属 \(c_0\) 内部通道代数 | Schatten determinant |
| 式 (4.1) 的较强有限深度 | 进一步要求固定 \(Q\) 两体谱有限；Einstein 有有限 support | 深度上界最优 |
| stable-\(N\) affine coordinates | 唯一零激发模式、非负双度数、守粒子数两体作用；primary 限制需协变 | \(\mathsf A,\mathsf B\) 同时对角化 |
| 最低 chiral leading algebra | 非负 affine-Casimir 缺陷及其首个正通道 | 始终只有两个生成元 |
| 非退化 Gegenbauer 首层 | 全部 affine 缺陷非负，且 \(r_4,r_6>0\) | 完整有限 \(N\) 谱可积 |

cluster 一行不需要残差正性，也不需要 Einstein 精确系数。有限 support 是它的一个充分特例。若仅假设相对自旋尾部为 \(c_0\)，有限深度仍有较弱版本：
\(\widehat\Sigma_N(Q)^{(N-1)}\subset\{0\}\)、
\(\widehat\Sigma_N(Q)^{(N)}=\varnothing\)。这与有限两体谱时改进一阶的式 (4.1) 不应混同。

stable-\(N\) 的结构尤其广：占据数计数本身就给出

\[
W_N=\binom N2g_{00}I+N\mathsf A+\mathsf B,
\]

其中 \(\mathsf A\) 是 creation algebra 上的 derivation，\(\mathsf B\) 至多是二阶微分算子。该结论不需要 positivity、Einstein support 或高激发增长假设。

### 定理 U1：首个正 affine 缺陷决定整个最低代数

在 chiral 扇区，令 \(\gamma_k\) 为任意真实协变 pair 通道值，取经过 \(k=0,2\) 的 Casimir 仿射线

\[
L(C)=\gamma_0+s(C-C_0),\qquad
s=\frac{\gamma_2-\gamma_0}{2(2\Delta+1)},\qquad
r_k=\gamma_k-L(C_k).
\tag{7.2}
\]

假设所有偶 \(k\) 的 \(r_k\ge0\)，第一个严格正者为 \(k_*=2m+2\)。则 stable 主导残差
\(\mathsf K=\mathsf A-s\Delta\mathsf E\) 的**完整** graded kernel 是

\[
\boxed{\ker\mathsf K=\mathbb C[c_2,c_3,\ldots,c_{2m+1}].}
\tag{7.3}
\]

每个固定度数上零是半单的，其余本征值严格正，且
\(\lim_{t\to\infty}e^{-t\mathsf K}\) 是到该低代数的 algebra retraction。

证明来自正的端点 projector 权重

\[
\sigma_p-s\Delta p
=2\sum_{k\ {\rm even}}\alpha_{p,k}r_k,
\quad\alpha_{p,k}>0\ (k\le p),
\]

以及 derivation 的 creation-factor 三角结构。低生成元是实际零向量，其个数正好实现全部零的代数重数，所以不留下隐藏零 Jordan 块。这是全指标定理，不是有限 leading-slope 扫描。

### 定理 U2：cusp 与 Gegenbauer 的普适部分

任意协变 chiral pair 核都有来自 elementary primary 的精确 character

\[
\mathcal L(c_p)=(1-p)t^p.
\]

它不依赖 Einstein 系数。若低代数为 \(\mathbb C[x,y]\)，\(x=c_2,y=c_3\)，则

\[
\ker\mathcal L=(y^2+4x^3).
\]

当 \(v=r_4>0\)、\(w=r_6\ge0\)、全部缺陷非负时，降阶后的首个有限 gap 算子必为

\[
\boxed{\mathsf B_{\rm low}
=s\mathsf E(\mathsf E-1)
+\frac{\varepsilon(\Delta;v,w)}2
(y^2+4x^3)\partial_y^2,}
\tag{7.4}
\]

其中独立符号计算给出

\[
\boxed{
\varepsilon(\Delta;v,w)=
\frac{27vw(\Delta+3)(\Delta+4)(2\Delta+9)}
{2(2\Delta+5)[15(2\Delta+7)(\Delta+5)v
+(2\Delta+3)(\Delta+2)w]}.
}
\tag{7.5}
\]

二阶算子阶数、权重和 cusp ideal 强迫式 (7.4) 的全度数形式；第四、第六通道的六个 determining jets 确定其唯一系数。高于第六通道的值不进入这个系数。

\(w>0\) 时获得原来的参数 \(-1/2\) Gegenbauer 多项式及简单首层谱，固定 \(P\) 的该低谱簇有收敛的整数 \(1/N\) 展开。\(w=0\) 时首层 gap 系数精确为零；即使最低代数仍为两变量，也不能用同一简单首层论证完成后续分裂。

### 定理 U3：相同 kernel 不强迫相同低能代数

式 (7.1) 的 chiral 相边界是

\[
\frac{\epsilon_2(0)}{\epsilon_0(0)}
=\frac{2\Delta+5}{4\Delta+6}.
\tag{7.6}
\]

低于此比值有 \(r_4,r_6>0\)，最低代数为 \(\mathbb C[c_2,c_3]\)；取等时 \(r_4=0,r_6>0\)，最低代数变为
\(\mathbb C[c_2,c_3,c_4,c_5]\)。高于此比值，第四生成元已低于 elementary leading branch，原非负 affine-bound 定理不再适用。

一个精确例子是 \(\Delta=2\)，取

\[
w_{k\ell}=16-8\min(C_k,C_\ell)
+\begin{cases}1,&|k-\ell|=0,\\9/14,&|k-\ell|=2,\\0,&|k-\ell|\ge4.\end{cases}
\tag{7.7}
\]

它保持完整 logarithmic kernel、Grassmann 主符号和 fixed-\(Q\) cluster 机制，却有四生成元低代数。所有 \(N\ge4\) 的完整 \((P,Q)=(4,0)\) primary 块都精确等于

\[
\boxed{W_N=\left[\binom N2-\frac{2N}{7}-\frac37\right]I_2.}
\tag{7.8}
\]

这证明“相同 support、positivity 与主符号自动推出 Einstein 的两生成元简单 Gegenbauer 低谱”这一强主张失败。更广的 cusp quotient 仍然存在，没有被此反例否定。

此外，旧 all-degree generic leading linearization 的二进赋值证明，只需有理通道族在辅助 \(\Delta=1/2\) 处唯一的非零 ground-channel 简单极点。这个充分条件也已从 Einstein 系数中抽离；它不等于所有物理质量都无 resonance 或 Jordan 问题。

---

## 8. 独立审查：哪些主张经受了什么检查

### 8.1 物理接口继续保留其原有条件

本轮未发现推翻原 scalar-number closure 或 Einstein pair identification 的证据。旧独立审查中最重要的限定继续保留：

- quartic 正规形中独立 boundary oscillator 的消失，使用的是完整 cubic normal form 和领先 non-global Brown–Henneaux charge 恒等式；
- 正规序 \(1\leftrightarrow3\) 项的消失另由全局协变 intertwiner 论证：源最低态被正能量条件杀死，继而全部 descendants 被杀死；spectators 不能恢复一个已为零的正规序系数；
- 较低 quantum degree 的支保持与一体 subtraction 有自己的证明和处方，不能从经典 quartic 一项直接推出；
- canonical 配对图到 bounded covariant response 的连续重建，仍需要先前明确写出的边界域、lapse/shift 和 renormalized endpoint 假设。本轮的谱定理没有填补这一连续域问题。

新数学证明以实际 pair operator 为输入，不能反过来替代原 Einstein 约束消去和量子处方的证明。

### 8.2 最关键的新审查点

| 风险 | 独立核对结果 |
|---|---|
| 高激发 overlap 中藏有增长重数 | 先限制并集三个子簇全部内部度数，再应用固定端点 Racah；乘法引理通过 |
| 右预算张量代数过大 | 使用实际 \(\sum q_S\le Q\) 像；不可实现块被取零商 |
| Bose 误投影 | 始终左右对角投影；显式包含每侧各自反对称的 \((1,1)\) pair 源 |
| equal-block 重数重复 | 先选 twisted exchange 特征空间，再取源正交基；按轨道计数 |
| 上界只是另一个 quasimode | Möbius 连续函数演算与独立 C*-filtration 分别给真实谱上界 |
| 孤立谱重数只有下界 | 有限源投影与目标谱投影范数趋近，给最终相同秩 |
| 指数窗依赖旧弱迹近似 | 使用精确共同旗标搬运和多项式条件数，不使用弱迹误差控制小谱 |
| 很多 coherent 态不独立 | concentration operator 的谱子空间提供统一 Rayleigh 界与维数 |
| kernel 与近零正谱混淆 | 先用精确 Hilbert 系数减去 kernel；有限证书采用有理惯性 |
| 移动比例偷换固定比例极限 | 新统一 signed-permutation 迹界与有限 kernel 上界单独证明 |
| 更一般 Gegenbauer 系数只是拟合 | 新独立 projector 程序符号验证全部 determining jets；全度数形式先由算子阶数证明 |

另发现并处理一个新比较程序接口：旧四体数值 backend 会把内部 \(p<q\) 换为 \(q,p\)，使用 \(b_4(\min(p,q))\)。新递归固定右度数 \(q\)，必须补回精确位移
\(b_4(\min(p,q))-b_4(q)\)，连原 baseline 的物理重数一起处理。原 backend 未修改。

### 8.3 可复现程序与证据等级

研究包包含独立 polynomial/Casimir 旗标审查、全质量 pair 系数不等式、有理 coherent tails、Möbius/normalizer 组合证书、双手征交换预算证书、精确 Bose quasimodes、两个严格正谱惯性证书和通用 chiral defect 程序。统一 runner 在独立输出目录中执行，保留每一步的标准输出、错误日志、证书和源哈希。

少量 overlap SVD 和有限 comparator 值使用浮点数，已在 JSON 中明确标记为非区间认证的诊断；它们不参与微小正谱判断，也不承担一般定理证明。核心代数身份、kernel 数、交换符号、Rayleigh 平方和惯性使用精确运算。报告的验证 JSON 区分执行通过与手工证明覆盖。

---

## 9. 新旧结果对应与证明依赖

| 本轮结果 | 依赖的旧结果 | 新的不可省步骤 | 证明位置 |
|---|---|---|---|
| H1–H2 全 fixed-\(Q\) cluster 谱集合 | pair kernel、协变、Racah fixed-endpoint 估计 | 任意 overlap 子簇乘法；真实 Bose 上界；预算与交换平方 | 证明附录 A–B |
| H3 连通函数演算 | 同上 | partition Möbius 消去有序非连通 words；连续函数扩展 | 附录 A–B |
| H4 有限累积深度 | H1–H2、有限两体 support | 谱导集与 Minkowski 递归 | 附录 B |
| H5 孤立非深阈值最终重数 | H1–H3 | 内部谱投影局部有限秩；目标投影范数比较 | 附录 C |
| H6 顶支最终简单与误差 | H5、旧 singleton 固定源误差 | 最大源唯一性及阈值分离 | 附录 C |
| S1–S2 指数窗与计数律 | 完整 kernel、Grassmann 零原子及主谱律 | 精确旗标/Riesz 搬运；大偏差；广延子空间 min-max | 附录 D |
| S3 全正谱 log-rate universality | pair 精确 support | 双边有限谱比较和全通道显式权界 | 附录 D |
| S4 moving-ratio 边界层 | 旧 N3 endpoint 体积渐近、S1 方法 | 对移动区域统一的群迹误差和有限 kernel 上界 | 附录 E |
| U1–U3 低代数及 Gegenbauer 普适类 | stable affine coordinates、全局协变 | 首正缺陷完整核；通用有限 jets；同 support 相边界反例 | 附录 F |

H1 不依赖旧四体 Fredholm 定理才成立；四体结果是其低粒子数输入的进一步解析实现与一致性检查。S1 的尺度论证也不依赖把旧 leading semiclassical trace theorem 加强成未证明的指数精度版本。

## 10. 已证明失败的推理、仍未解决的问题

### 10.1 本轮保留或新增的精确障碍

1. **旧 atomic-diagonal compact ansatz 的反例仍有效。** 新比较包含全部较低粒子数内部谱，并使用 partition 函数演算处理重叠；没有恢复旧假设。
2. **紧性不蕴含 Schatten 可和性。** 上述 \(1/\log(k+2)\) 的自伴两体例子排除了从一般 \(c_0\) 结构直接推出任意有限阶 regularized determinant 的推理。
3. **support 和主符号不决定低能相。** 式 (7.7)–(7.8) 是严格保持原 support 的反例。
4. **简单 leading algebra 不保证非退化首层 gap。** \(r_4>0,r_6=0\) 时通用 \(\varepsilon\) 精确为零；必须继续做更高阶分析。
5. **主符号零腔室不自行决定微观率。** 本轮补上了指数上界机制；匹配下界和完整 action 分布仍没有从中推出。

旧的简单 Calogero/Dunkl、Kohno/Gaudin、commuting-projector 负结果未被回避，也没有在原假设不变时重新尝试同一候选。它们的局部 no-go 不被放大成普遍不可积定理。

### 10.2 仍然开放，不能称为完成

- **更深 cluster 阈值上的完整谱支和重数。** H5 只覆盖 \(\mathfrak C\setminus\mathfrak F\)。当 \(N\ge3\) 时，\(\lambda=0\) 总在更细阈值中；完整谱集合含零不能排除额外正本征值趋零。
- **有效的递归误差与截断复杂度。** 固定源的误差受控，但内部 cutoff 增长时缺少统一估计，因而没有一般有效 \(R(\varepsilon)\)。
- **Einstein 一般 cluster determinant。** 已有 connected resolvent，但尚无所需 Schatten 估计、完整重数组织和递归 determinant 因子化。
- **soft 的实际微观 action。** 没有匹配指数下界、共同率函数或率分布存在定理；不排除零密度的额外尺度或超指数族。
- **边界层匹配。** \(r\to0\) 与固定 \(Q\) 的统一连接、\(r\to1\) 的更窄层和严格平衡微观谱仍开放。
- **全质量 stable resonance/Jordan 分类、更高阶 Gegenbauer 有效算子及相边界低代数的继续求解。** 本轮给出最小条件和反例，没有完成这些分类。
- **完整有限多体谱的统一解析解。** 没有普适 Bethe 方程、完备 commuting charges 或将所有正谱化为已识别特殊函数的证明。

## 11. 对最后总问题的回答，以及以后综合时应保留的核心

本轮支持一个更精确的回答：**剩余多体复杂性确实受到一个普适的层级结构约束，但这个层级尚未给出每个有限块和每个微观能级的闭式解。**

在固定 \(Q\) 的方向，组织谱的是分区 join 代数、Möbius 连通函数演算、二簇递归与 Bose 的对称/外平方规则。它们确定全部渐近谱集合，控制有限累积深度，并完成远离更深阈值的孤立重数。

在双高激发方向，组织 soft 谱的是同一组碰撞旗标在两个不同内积中的相对位置，以及 Grassmann 零腔室内 coherent 态的大偏差局域化。指数上界由精确 support 和几何给出；全有序谱的指数率比较说明质量只造成多项式失真。把这种机制称为已证明的 tunnelling Hamiltonian 或可积有效模型仍然过早。

在 stable-\(N\) 方向，组织最低谱的是 creation derivation、正 affine-Casimir 缺陷的首个通道和 exact cusp quotient。Einstein 精确系数选择了一个具有两生成元低代数与正 Gegenbauer gap 的区域；同 support 的其他算子可以落在不同区域。

以后综合报告值得保留的主干是：原物理闭合与处方边界；精确 pair 核及完整 logarithmic kernel；Gram/Racah 的可复现谱算法；Grassmann 主谱律；本轮完整 fixed-\(Q\) 递归及非深阈值重数；指数 soft 谱与质量无关率比较；stable affine pencil、cusp/Gegenbauer 及其精确 universality 条件。各项应按上面的依赖关系衔接，避免把多个不同层面的“可解”混为一谈。

---

## 参考：外部理论的实际用途

外部理论只承担下列明确角色；本报告的 Einstein 映射和新算子恒等式均在证明附录中给出。

1. S. E. Derkachov, A. N. Manashov, *Generic scaling relation in the scalar phi-four model*, J. Phys. A 29 (1996), 8011–8024, [hep-th/9604173](https://arxiv.org/abs/hep-th/9604173)。它提供不同标量模型中谱和产生极限点的严格构造性先例；不替代本轮必要上界与 Bose 预算证明。
2. M. Damak, V. Georgescu, *On the spectral analysis of many-body systems*, [arXiv:0911.5126](https://arxiv.org/abs/0911.5126)。半格 C*-algebra 与多体 essential spectrum 的一般方法背景。本轮直接证明 conformal 内部度数分量的乘法规则，没有直接搬用欧氏平移 cluster 假设。
3. H. De Bie, P. Iliev, W. van de Vijver, L. Vinet, *The Racah algebra: An overview and recent results*, [arXiv:2001.11195](https://arxiv.org/abs/2001.11195)。正离散表示的中间 Casimir、Racah 代数与多变量 recoupling 背景。
4. W. Hoeffding, *Probability Inequalities for Sums of Bounded Random Variables*, JASA 58 (1963), 13–30, [DOI](https://doi.org/10.1080/01621459.1963.10500830)。本轮使用实际 coherent 张量中独立有界变量的尾界。
5. E. H. Lieb, *The Classical Limit of Quantum Spin Systems*, CMP 31 (1973), 327–340, [DOI](https://doi.org/10.1007/BF01646493)。coherent resolution 和大自旋经典极限的背景；指数窗的物理质量搬运由本轮另证。

完整证明、独立审查和实际执行证书随 `ADS3_Hierarchical_spectrum_proofs.md` 与研究包一并交付。
