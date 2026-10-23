# φ³ 二阶谱：重整化、精确交换矩阵与全指标二体解

## 0. 已得到的结果

本篇继续 [一般多项式首阶研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md>)，但所需二阶定义与主要证明均在这里给出。结论是微扰谱，不假定实纯 cubic 势存在非微扰稳定真空。

1. 对每个 \(\Delta>1\)，\(PV_3P=0\)。二阶有效算符只有真空、二次和四次正规序项，**没有六体外腿项**；其完整共振部分仍然保持粒子数。后一个结论包括特殊整数 \(\Delta\) 下的完整跨粒子数简并空间，不只是非共振质量的算术结论。
2. 真空图有局域对数发散；一体 fish 则 UV 有限。一个明确的真空归零、物理 gap 固定处方，使完整二阶能移等于有限的连通二体交换算符及其任意 N 的 pair lift。没有偷偷加入有限 φ⁴ 项。
3. 任意 \(\Delta>1\) 的完整有限块可写成有限个收敛 \({}_5F_4(1)\) 的组合；正偶整数 \(\Delta\) 时径向和严格终止，矩阵为有理数乘 \(\lambda_3^2/(8\pi)\)。
4. 两粒子基态的连通束缚系数 \(b(\Delta)\) 已求成 \({}_4F_3(1)\)，并证明对所有 \(\Delta>1\) 严格为负。任意 N 的全 ground-mode 态及其 global descendants 的能移为 \(\lambda_3^2\binom N2b(\Delta)\)。
5. **在 \(\Delta=2\)，全部二体 primary 谱已解析求解。** 若自由 primary 标签为 \(P,Q\ge0\)，\(P+Q\) 偶，\(M=\max(P,Q)\)，则
   \[
   \boxed{\delta E_{P,Q}=\frac{\lambda_3^2}{16\pi}
   \left[-\frac1{(M+1)(M+2)}+
   \frac{\delta_{PQ}}{2(P+1)(P+2)(2P+3)}\right].}\tag{0.1}
   \]
   这不是有限数表拟合；§6 给全指标 Legendre 分解证明。

---

## 1. 作用量、模与重整化后的问题

取半径一、signature \((-++)\)、固定 global 时间，
\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
 \quad t\in\mathbb R,\quad\theta\sim\theta+2\pi,
\]
\[
 S_0=-\frac12\int\sqrt{-g}\,[(\nabla\phi)^2+\Delta(\Delta-2)\phi^2],
 \qquad S_{\rm int}=-\frac{\lambda_3}{6}\int\sqrt{-g}:\phi^3:_\Delta.
\]
始终取中心正则、source-free standard fast falloff \(r^{-\Delta}\)、\(\Delta>1\)，没有额外有限边界多迹作用。正规序相对于同一自由 global 真空。

写 \(I=(p,q)\)、\(\nu_I=\min(p,q)\)、\(\ell_I=p-q\)、\(w_j=(\Delta)_j/j!\)、\(d_I^2=w_{\max(p,q)}/w_{\min(p,q)}\)，以及 \(x=(1+r^2)^{-1}\)。使用仓库相位
\[
 u_I=\frac{d_I}{\sqrt{2\pi}}e^{-i\omega_It+i\ell_I\theta}
 x^{\Delta/2}(1-x)^{|\ell_I|/2}
 P_{\nu_I}^{(\Delta-1,|\ell_I|)}(1-2x),\quad
 \omega_I=\Delta+p+q.
\]
\[
 (u_I,u_J)_{\rm KG}=i\int\frac{r\,dr\,d\theta}{1+r^2}
 (u_I^*\partial_tu_J-u_J\partial_tu_I^*)=\delta_{IJ},
 \qquad \phi=\sum_I(a_Iu_I+a_I^\dagger u_I^*),\quad[a_I,a_J^\dagger]=\delta_{IJ}.
\]
Hamiltonian 顶角使用 \(r\,dr\,d\theta\)，**不是** KG 测度。令 \(f_I=u_I|_{t=0}\)，则 \(H_3=\lambda_3V\)、\(V=\int r\,dr\,d\theta:\phi^3:/6\)。与 \(y=1-x\) 中正原点 Jacobi 模的相位关系是 \(f_I^{\rm repo}=(-1)^{\nu_I}f_I^{y}\)。后文矩阵均用 repo 相位。

能量微扰遵循 [formalism:253–282](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L253-L282>)。本文最终谱的参数 \(\Delta\) 是**固定的物理一体 gap**；若坚持固定原作用量裸质量、不加有限质量反项，则须在每个 N 粒子块加回 §4 的 \(N\delta\Delta_{\rm loop}\)。这两种参数定义不能混用。

## 2. 完整简并投影与有效二体算符

### 2.1 为什么二阶没有六次项

对自由能量 E 的**完整**投影 \(P_E\)，令 \(Q_E=1-P_E\)。首阶 cubic 共振全部为零，故
\[
 \delta H_E^{(2)}=\lambda_3^2P_EVQ_E(E-H_0)^{-1}Q_EVP_E
       +P_E\delta H_{\rm ct}^{(2)}P_E.\tag{2.1}
\]
Q 不得只排除某个 selected-N 子块。共振分母对应的零顶角先投影去掉，不作数值 \(0/0\)。

将 \(V=\sum_{\Omega\ne0}V_\Omega\)，其中 \([H_0,V_\Omega]=\Omega V_\Omega\)，定义反 Hermitian 的
\[
 S=\sum_{\Omega\ne0}V_\Omega/\Omega,\qquad [S,H_0]=-V.
\]
则 \(e^{\lambda_3S}He^{-\lambda_3S}\) 的共振二阶部分是
\[
 W_E=\tfrac12P_E[S,V]P_E.\tag{2.2}
\]
在交换子中，两个 cubic 的**零收缩六次正规序积相消**。一次、二次、三次收缩分别产生四次、二次、常数项。因而所谓 “两次 cubic 产生三体力” 在这一阶共振正规形中不成立；五粒子中间态仍必须保留，它参与四次连通项。

### 2.2 对所有质量的二阶粒子数守恒

取保持 AdS 对称的 regulator/反项。消去首阶并对二阶时间平均后，\(W\) 满足 \([H_0,W]=0\)。将完整 Killing 代数关系展开到二阶，再投影到左右 raising/lowering charge 的自由能量 transfer \(\pm1\)，得到
\[
 [W,L_\pm^{(0)}]=[W,\bar L_\pm^{(0)}]=0.\tag{2.3}
\]
理由是 \([H_0,L_\pm^{(2)}]\mp L_\pm^{(2)}\) 在该 transfer 子空间恰好相消；首阶正规形 Hamiltonian 为零。

唯一可能改变粒子数的共振四次项是 \(a^{\dagger3}a+\mathrm{h.c.}\)；纯产生项因正频率不能共振。若其系数非零，它会将一体最低权模 \((\Delta/2,\Delta/2)\) intertwine 到三体空间，而三体每个 primary 的左右最低权都至少为 \(3\Delta/2\)。不存在这样的 intertwiner。因此其在所有一体态上的作用为零，逐个正规序系数也为零。

于是
\[
 \boxed{[W,N]=0\quad\text{for every }\Delta>1.}\tag{2.4}
\]
这排除了带 spectator 的 \(N\leftrightarrow N+2\)，并非仅以“没有六外腿连通图”为由忽略它们。它也不声称高阶粒子数守恒。

另有不依赖这段表示论缩并的 [径向构造证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/README.md>)：对两个入射模的乘积源，在同频率的质量 \(2\Delta+2a\) 的有限 Jacobi 基中反演，其特征值差
\[
 (2\Delta+2a)(2\Delta+2a-2)-\Delta(\Delta-2)>0.
\]
再与第三入射模及共振出射模积分，剩余多项式次数至多为出射 Jacobi 次数减一。每个交换 channel 都为零。奇整数 \(\Delta\) 时这是无限非零项的精确抵消；有限 cutoff 未必显示零。

### 2.3 无歧义的四腿系数

将四个外变量拆成两个二次多重集 \(A,B\)。变量 \((+,I)\) 表示 \(a_I^\dagger\)，\((-,I)\) 表示 \(a_I\)。定义
\[
 \Omega_A=\sum_{(\sigma,I)\in A}\sigma\omega_I,\quad
 j_A=\sum_{(\sigma,I)\in A}\sigma\ell_I,\quad
 F_A=\prod_v m_A(v)!.
\]
外腿共振意味着 \(\Omega_A+\Omega_B=0\)、\(j_A+j_B=0\)。令
\[
 I_\nu=(\nu+\max(j_A,0),\nu+\max(-j_A,0)).
\]
记 \(\mathcal I(A;I_-)\) 为二次 A 再添一个内部 annihilator 的空间 cubic 积分，\(\mathcal I(B;I_+)\) 同理添 creator；积分中的 creator 对应 \(f^*\)。四次正规序单项式的系数为
\[
 \boxed{\sum_{A\sqcup B}\sum_{\nu\ge0}
 \frac{\mathcal I(A;I_-)\mathcal I(B;I_+)}
 {F_AF_B(\Omega_A-\omega_{I_\nu})}.}\tag{2.5}
\]
这里通过“选择 A”枚举每个不同二次子多重集一次；\(A\ne B\) 时两种次序均出现。**不能再除总四腿 factorial。** 内部共振项按 (2.1) 排除。

例如四个外腿及所取的内部腿都是 ground 模时，三个 A 类型给 \(1/(4\Delta)\)、\(-1/(12\Delta)\)、\(-1/\Delta\)，**这条内部模**的四次系数为 \(-5\mathcal I_{000}^2/(6\Delta)\)。乘 \(a^{\dagger2}a^2\) 的两粒子矩阵元 2，得到 \(-5\mathcal I_{000}^2/(3\Delta)\)。在 \(\Delta=2\) 仅此内部模存活；一般质量还要加其他径向模。这个例子同时检查重复外腿阶乘和 backward ordering。

等价的 pair kernel 是 s、t、u 三个空间顶角乘积配
\[
 D(\Omega,\omega)=\frac1{\Omega-\omega}-\frac1{\Omega+\omega}
 =\frac{2\omega}{\Omega^2-\omega^2}.
\]
s channel 使用总入射能量，t/u 使用外腿频率差。其第二个 s 分母来自五粒子中间态；\(D(0,\omega)=-2/\omega\) 的静态交换也不可丢掉。

## 3. 从无限虚模和到精确有限矩阵

### 3.1 正偶整数质量：严格有限支撑

若 \(\Delta=2m\)，任一 cubic 积分中内部径向指标满足
\[
 \nu_I\le\nu_1+\nu_2+
 \frac{|\ell_1|+|\ell_2|-|j_A|}{2}+m-1.\tag{3.1}
\]
这是将内部 Jacobi 的正交权提出后，余下多项式的次数。交换图取两个顶角界的较小值。共振内部模恰好处于零支撑区，因此没有需要人为移动的 pole。

[有理交换引擎](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/cubic_effective.py>) 实现 (2.5) 和此界。它也允许其他有理质量的显式 cutoff，但这种输出只是一段部分和。

### 3.2 一般质量：有限个 \({}_5F_4(1)\)

令 \(l=|j_A|\)，两个外腿的 source polynomial 为
\[
 F(x)=J_1(x)J_2(x)(1-x)^K,\quad
 K=(|\ell_1|+|\ell_2|-l)/2,\quad
 J_i=P_{\nu_i}^{(\Delta-1,|\ell_i|)}(1-2x).
\]
它相对于权 \(x^{3\Delta/2-2}(1-x)^l\) 是有限多项式。写 \(F=\sum_kF_kx^k\)。定义
\[
 a_k=3\Delta/2-1+k,\quad b_k=1-\Delta/2-k,\quad
 z=(\Delta+l-\Omega)/2.
\]
Pfaff–Saalschütz 恒等式给
\[
 R_n[x^k]:=\int_0^1x^{3\Delta/2-2+k}(1-x)^l
 P_n^{(\Delta-1,l)}(1-2x)dx
 =B(a_k,l+1)\frac{(l+1)_n(b_k)_n}{n!(a_k+l+1)_n}.\tag{3.2}
\]
内部归一化为 \(d_n^2=(\Delta)_{n+l}n!/[(n+l)!(\Delta)_n]\)。因此每个 monomial pair 的和是
\[
\begin{split}
 \mathcal S_{kj}(\Omega,l)
 &=\sum_{n\ge0}\frac{d_n^2R_n[x^k]R_n[x^j]}{\Omega-\Delta-l-2n}\\
 &=-\frac{(\Delta)_lB(a_k,l+1)B(a_j,l+1)}{2l!z}
 {}_5F_4\!\left(\begin{matrix}l+1,\Delta+l,b_k,b_j,z\\
 \Delta,a_k+l+1,a_j+l+1,z+1\end{matrix};1\right).\tag{3.3}
\end{split}
\]
任意 source 的答案是有限和 \(\sum_{k,j}F_kG_j\mathcal S_{kj}\)。上下参数和之差为
\[
 4\Delta-2+2k+2j>2,
\]
故 (3.3) 是绝对收敛级数在 1 的值，不涉及绕 branch cut 的约定。只要 \(\Delta\notin2\mathbb Z_{>0}\)，物理频率就不会令 \(z\) 为非正整数；偶整数情形直接使用 (3.1)，不要让 CAS 取消共振参数后替代 Q 投影。

[一般质量精确引擎](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/cubic_hypergeometric.py>) 以 (3.3) 返回有限特殊函数表达式，没有径向 cutoff。程序目前接受有理 \(\Delta,E\)；解析公式允许一般实 \(\Delta>1\)。精确矩阵元表示不等于已经符号求完任意 N 的全部本征值；数值求值也与“具有严格误差区间的计算”不同。

从算符角度也可证明收敛：\((1+r^2)f_i^{(*)}f_j^{(*)}\) 属于 KG 径向 Hilbert 空间，因为边界范数积分为 \(\int_0 x^{2\Delta-3}dx\)。离散自伴径向算符的 reduced resolvent 有界；Cauchy–Schwarz 给交换模和的绝对收敛。固定外标签时还由 (3.2) 得 \(R_n=O(n^{1-2\Delta})\)，完整 summand 为 \(O(n^{1-4\Delta})\)。

### 3.3 完整 Fock 块与态恢复

对给定 E,J，列出所有满足
\[
 P_N=(E-N\Delta+J)/2,\quad Q_N=(E-N\Delta-J)/2
 \in\mathbb Z_{\ge0}
\]
的 N，并列出相应 occupation。有限块不能先假定只有一个 N；(2.4) 是构造后得到的分块定理。

使用有理代数基
\[
 |\mathbf m\rangle_B=\prod_I
 \left(\frac{a_{pq}^\dagger}{\sqrt{w_pw_q}}\right)^{m_I}|0\rangle,
 \quad G_{\mathbf m}=\prod_I\frac{m_I!}{(w_pw_q)^{m_I}}.
\]
引擎返回 \(A\)，使 \(\delta H^{(2)}=\lambda_3^2 A/(8\pi)\)，且 \(GA=A^TG\)。对本征向量 v，normalized-Fock 系数是
\[
 \frac{\sqrt{G_{\mathbf m}}v_{\mathbf m}}{\sqrt{v^\dagger Gv}}.
\]
任意 N 的作用是所有 unordered pairs 的同一二体算符之和；不存在额外的 N-dependent 三体顶角。两个程序都从正规序 occupation 因子实现此 lift。

### 3.4 半整数质量的精确算术结构

若 \(2\Delta\in\mathbb Z\) 且 \(\Delta\) 不是偶整数，置 \(L_k=2\Delta+l+2k-1\)，则 (3.2) 进一步成为 n 的有理函数：
\[
 R_n[x^k]=B(a_k,l+1)\frac{(n+1)_l}{l!}
                   \frac{(b_k)_{L_k}}{(n+b_k)_{L_k}},
 \qquad d_n^2=\frac{(n+\Delta)_l}{(n+1)_l}.
\]
因此可以先作有限 partial fractions，再用 polygamma 求无限和。简单 pole 的 residues 总和必须为零，合并成 \(-\sum_\rho c_{\rho,1}\psi(\rho)\)，不能给每个发散 harmonic sum 单独赋值；高阶 pole 使用
\[
 \sum_{n\ge0}(n+\rho)^{-r}
 =\frac{(-1)^r}{(r-1)!}\psi^{(r-1)}(\rho),\qquad r\ge2.
\]
代码的 `--half-integer-closed` 就实现这个分支，避免在 argument=1 上强制 hypergeometric 展开产生伪 \(0/0\)。

对**物理 on-shell 四腿矩阵**还可证明更强的结论：在 B 基、剥去 \(\lambda_3^2/(8\pi)\) 后，每个有限块都是
\[
 \boxed{\begin{array}{ll}
 A=A_0,&\Delta\in2\mathbb Z_{>0},\\
 A=A_0+\pi A_1,&\Delta\in\mathbb Z+\tfrac12,\quad\Delta>1,\\
 A=A_0+\zeta(3)A_1,&\Delta\in2\mathbb Z_{>0}+1,
 \end{array}\quad A_0,A_1\text{ 为有理矩阵}.}\tag{3.4}
\]
这是矩阵元结论，不声称全部本征值仍为线性组合。

证明的关键是内部指标反射 \(n'=-n-s\)、\(s=\Delta+l\)：
\[
 d_{n'}^2=1/d_n^2,\qquad R_{n'}[F]=(-1)^{2\Delta-1}d_n^2R_n[F].
\]
每个 monomial 的 denominator \((n+b_k)_{L_k}\) 都以 \(-s/2\) 为中心，故同一反射关系适用于整个 source polynomial。于是 \(d_n^2R_n[F]R_n[G]\) 是偶函数；配对的两个 time orderings \(D(\Omega,\Delta+l+2n)\) 是奇函数。最终 rational summand 的 partial-fraction 系数满足
\[
 c_{s-\rho,r}=(-1)^{r+1}c_{\rho,r}.
\]
所有 double-pole 系数之和为零，最高 pole 阶数至多为三。

在同号 s channel，物理两端 source 的次数都不超过 K，其中 \(\Omega=2\Delta+l+2K\)。source denominator 的 shifts 位于 \([b_K,a_K+l]\)，两个 time-ordering poles 则恰在它们外侧 \(b_K-1,a_K+l+1\)。所以没有 triple pole；simple/double polygammas 均抵消，s channel 为有理数。这条结论需要 source 与同一物理频率兼容，不能套到任意无关 F,G,Ω。

在 mixed channel，额外 pole 的 shift 为 \(\Delta/2\) 加整数。若 \(\Delta\) 是半奇整数，它与 source poles 的 \(1-\Delta/2\) 模整数类不同，没有 triple pole；只剩两个 quarter-argument digamma 的差，给 \(\pi\)。若 \(\Delta\) 为奇整数，所有 poles 都是半整数；simple/double 部分抵消，可能的 triple 部分只给 \(\psi^{(2)}(1/2)=-14\zeta(3)\)。最后 B 基的外腿和 occupation prefactors 均为有理数，证明 (3.4)。

## 4. 真空、一体修正和明确的物理处方

### 4.1 一体 fish 有限，但不为零

Euclidean 标准 propagator 在测地距离 s 上为
\[
 G_\delta(s)=\frac{e^{-(\delta-1)s}}{4\pi\sinh s}
 =\frac{q^\delta}{2\pi(1-q^2)},\quad q=e^{-s}.
\]
由几何级数
\[
 G_\Delta^2=\frac1{2\pi}\sum_{a\ge0}G_{2\Delta+2a}.
\]
令 \(M_a^2=(2\Delta+2a)(2\Delta+2a-2)\)、\(m^2=\Delta(\Delta-2)\)，则 on-shell 质量修正是
\[
 \delta m^2_{\rm loop}=-\frac{\lambda_3^2}{4\pi}
 \sum_{a\ge0}\frac1{M_a^2-m^2}
 =-\frac{\lambda_3^2[\psi(3\Delta/2-1)-\psi(\Delta/2)]}
 {16\pi(\Delta-1)},\tag{4.1}
\]
\[
 \delta\Delta_{\rm loop}=\delta m^2_{\rm loop}/[2(\Delta-1)].
\]
分母 \((2a+\Delta)(2a+3\Delta-2)>0\)，级数尾为 \(a^{-2}\)。它不是质量 UV 发散，也没有物理共振 pole。在 \(\Delta=2\)，\(\delta\Delta_{\rm loop}=-\lambda_3^2/(32\pi)\)。

符号和因子可由直接 OFPT 检查：
\[
 \delta\omega_i=\frac{\lambda_3^2}{2}\sum_{j,k}
 \left|\int r\,dr\,d\theta\,f_i f_j^*f_k^*\right|^2
 \left[\frac1{\omega_i-\omega_j-\omega_k}
 -\frac1{\omega_i+\omega_j+\omega_k}\right].\tag{4.2}
\]
第二项是 \(1\to4\) 中去除真空 bubble 后的 stimulated 连通部分。把它一起丢掉会算错质量。

### 4.2 真空对数发散与无限体积不是同一件事

正规序后仍有 \(\langle:\phi^3(x)::\phi^3(y):\rangle=6G_\Delta(x,y)^3\)。用不变测地 cutoff \(s>\epsilon\)，真空作用密度为
\[
 \rho_{\rm loop}(\epsilon)=-\frac{\lambda_3^2}{192\pi^2}
 \int_\epsilon^\infty\frac{e^{-3(\Delta-1)s}}{\sinh s}ds
 =-\frac{\lambda_3^2}{192\pi^2}\log(1/\epsilon)+O(1).\tag{4.3}
\]
这是局域 UV 发散；另外全 AdS 的 lapse-weighted 体积满足 \(\mathrm{Vol}/T=\pi R^2\)，即使 UV 密度有限仍随 \(R\to\infty\) 发散。这里 R 只是体积记账 cutoff，不是另加一个物理反射墙。

### 4.3 本文采用的处方

- 用 normalized vacuum functional 除去全部真空 bubbles，等价于加局域 identity 密度反项 \(\delta\rho=-\rho_{\rm loop}\)，令微扰真空能为零。
- 加有限、正规序质量反项
  \[
  S_{\rm ct,m}=-\frac{\delta m^2_{\rm ct}}2\int\sqrt{-g}:\phi^2:,
  \qquad \delta m^2_{\rm ct}=-\delta m^2_{\rm loop}.\tag{4.4}
  \]
  由于每个归一化模都有 \(\int r\,dr\,d\theta|f_I|^2=1/[2(\Delta-1)]\)，同一个反项固定整个一体 module，不是只匹配 ground 模。
- 保持 canonical 短距离场归一化，不加独立的 order-\(\lambda_3^2\) φ⁴ 相互作用。此阶无需 UV-divergent wavefunction、mass 或 quartic 反项；两 cubic 的腿数奇偶性也排除了新的线性反项。

有限质量反项不消除 off-shell dressing。令 \(c=\lambda_3^2/(4\pi)\)、\(D_a=M_a^2-m^2\)，resolvent partial fractions 给
\[
 G_{\rm ren}=(1-c\sum_aD_a^{-2})G_\Delta
       +c\sum_aD_a^{-2}G_{2\Delta+2a}+O(\lambda_3^4).
\]
物理 pole 固定，有限 residue 和 composite 权重仍在。

锐利 global 模 cutoff 在有限 cutoff 下破坏 descendant 等能移。它可以用于同一 regulator 的连通减除检查，但不能要求一个质量反项消掉所有有限-cutoff 伪差。完整标量 module cutoff 或上述不变 point splitting 避免这点。详细推导、四个不同一体模的直接无限 OFPT 求和见 [独立重整化报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/README.md>)。

## 5. 任意质量的 ground pair 与全 N 精确族

令 \(|N\rangle=(a_{00}^\dagger)^N|0\rangle/\sqrt{N!}\)，定义连通组合
\[
 E_2^{(2)}-2E_1^{(2)}+E_0^{(2)}=\lambda_3^2 b(\Delta).
\]
它在同一有限 regulator 下先减除，再去 cutoff。identity 与所有 quadratic 项在第二差分中严格消失。

只有 spin-zero 内模参与。以 repo 相位定义
\[
 q_n=\int r\,dr\,d\theta\,f_{nn}^*f_{00}^2
 =\frac{(1-\Delta/2)_n}{2\sqrt{2\pi}(3\Delta/2-1)_{n+1}},
 \qquad\omega_n=\Delta+2n.
\]
所有 time orderings 合起来给
\[
 b(\Delta)=\sum_{n\ge0}q_n^2
 \left[\frac1{2(2\Delta-\omega_n)}-\frac2{\omega_n}
       -\frac1{2(2\Delta+\omega_n)}\right].\tag{5.1}
\]
在 \(\Delta=2m\)，共振 \(n=m\) 的 \(q_m=0\)，且所有 \(n\ge m\) 都为零；这是 Q 投影，不是填一个小 imaginary part。

一个关键解析简化是对 \(J=f_{00}^2=x^\Delta/(2\pi)\)，
\[
 \mathcal D_\Omega=4x^2[(1-x)\partial_x^2-\partial_x]+\Omega^2x-m^2,
 \qquad \mathcal D_{2\Delta}J=\Delta(3\Delta-2)J.
\]
KG 归一化的 resolvent 展开于是给
\[
 \sum_n\frac{\omega_nq_n^2}{4\Delta^2-\omega_n^2}
 =\frac1{8\pi\Delta(3\Delta-2)(2\Delta-1)}.
\]
剩下的静态和是单个 \({}_4F_3\)。记
\[
 F_\Delta={}_4F_3\!\left(\begin{matrix}1,1-\Delta/2,1-\Delta/2,\Delta/2\\
 3\Delta/2,3\Delta/2,1+\Delta/2\end{matrix};1\right),
\]
则
\[
 \boxed{b(\Delta)=\frac{(3\Delta-2)/[8(2\Delta-1)]-F_\Delta}
 {\pi\Delta(3\Delta-2)^2}<0.}\tag{5.2}
\]
每个超几何级数项非负，所以 \(F_\Delta\ge1\)；第一项严格小于 \(3/16\)，证明所有 \(\Delta>1\) 的吸引性。

\[
 b(2)=-\frac5{192\pi},\qquad
 b(3/2)=\frac{15\pi-58}{120\pi},\qquad
 b(4)=-\frac{127}{60480\pi}.
\]
右 BF 极限为 \((1-7\zeta(3))/(8\pi)\)，但这不是对 \(\Delta=1\) 另一边界问题的宣称。裸质量处方的一体 gap 修正反而在 BF 端点非一致；其原因是质量—维数关系的双根，不是 UV 发散。

由 pair lift 与 (2.4)，在本文重整化条件下
\[
 \boxed{\delta E_{N,\mathrm{ground}}^{(2)}
       =\lambda_3^2\binom N2 b(\Delta),}\tag{5.3}
\]
其全部左右 global descendants 同值。纯 ground 态在 fixed N 的最低 shell 唯一；特殊跨 N 自由简并不破坏这个二阶本征态。

单振子组合和有 nonground 内模的四种 Fock sector 的逐项减除、\(\Delta=3/2\) 的 elementary telescoping 求和以及独立五模 OFPT，见 [ground binding 完整推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-ground/report.md>)。

## 6. \(\Delta=2\) 的全部 pair-primary 谱：全指标证明

### 6.1 质量零交换恰好化成 shifted contact integral

这里只将边界相关函数当作同一 bulk 谱的辅助分解，不假定另一个微观 CFT，也不用 global in/out S-matrix。Euclidean Poincaré 坐标 \((\zeta,\mathbf x)\) 中定义未归一化 kernel
\[
 K_\delta(X,x_i)=\left(\frac\zeta{\zeta^2+|\mathbf x-x_i|^2}\right)^\delta.
\]
由 canonical propagator 的边界极限，本阶 tree 图所需的**自由外腿**单位归一化是
\[
 \mathcal O=\sqrt{2\pi}\lim_{\zeta\to0}\zeta^{-2}\phi,
 \quad\langle\mathcal O(x)\mathcal O(0)\rangle=|x|^{-4},
 \quad\langle\phi(X)\mathcal O(x_i)\rangle=K_2/\sqrt{2\pi}.
\]
这明确补上 bulk CPS 到边界 OPE 的自由归一化映射。若要求含 loop 的完整边界两点函数仍为单位系数，应再除以 §4 的 pole residue 的平方根；该有限 order-\(\lambda_3^2\) 外腿重标定不改变这里的 order-\(\lambda_3^2\) 连通四点能移。

直接计算 Laplacian 得
\[
 \Box(K_1(X,x_i)K_1(X,x_j))=-4x_{ij}^2K_2(X,x_i)K_2(X,x_j).
\]
因此 \((-\Box)^{-1}\) 的 Dirichlet 卷积恰等于 \(K_1K_1/(4x_{ij}^2)\)。无额外 homogeneous 项：在边界插入点邻域的 Green-identity flux 为 \(O(\epsilon^2\log\epsilon)\)，其余位置由 fast falloff 消失。K₁ 只是辅助函数，不是引入 alternate-quantized 新场。

令 \(D_{1122}=\int dX\sqrt g K_1K_1K_2K_2\)。四点 exchange 的一个 channel 于是为
\[
 \frac{\lambda_3^2}{16\pi^2 x_{12}^2}D_{1122},
\]
加另外两种 pairing。四个外腿、inverse 的 \(1/4\)、cubic 顶角的因子均已计入。独立归一化检查是 \(C_{\mathcal O\mathcal O\mathcal O}^2=\lambda_3^2/(32\pi)\)。

### 6.2 用一个实积分提取全部 log 系数

取边界点 \((0,z,1,\infty)\)，记 \(u=z\bar z\)、\(v=(1-z)(1-\bar z)\)。Schwinger 参数三角积分
\[
 D=u\alpha_1\alpha_2+\alpha_1\alpha_3+v\alpha_2\alpha_3,
 \quad I_0=\int_{\sum\alpha_i=1}\frac{d^2\alpha}{D},\quad
 I_i=\int_{\sum\alpha_i=1}\frac{\alpha_i d^2\alpha}{D}
\]
给 reduced connected correlator
\[
 \mathcal G^{(2)}=\frac{\lambda_3^2}{32\pi}
 [uI_3+u^2I_2-u^2\partial_vI_0].
\]
令 \(\alpha_1=s\xi,\alpha_2=s(1-\xi),\alpha_3=1-s\)，以及
\[
 A=u\xi(1-\xi),\quad B=\xi+v(1-\xi),\quad
 C=A-B=-(1-z+z\xi)(1-\bar z+\bar z\xi).
\]
只做 elementary 的 s 积分就可取出 \(\log u\)：
\[
 [I_0]_{\log u}=\int_0^1\frac{d\xi}{C},\quad
 [I_3]_{\log u}=\int_0^1\frac{A\,d\xi}{C^2},\quad
 [I_2]_{\log u}=-\int_0^1\frac{(1-\xi)B\,d\xi}{C^2}.
\]
用 \(\partial_\xi[\xi(1-\xi)/C]=[\xi^2-v(1-\xi)^2]/C^2\) 的零边界项，将 crossed 两项合并为 \(-u^2\int_0^1d\xi/C^2\)。令 \(X=2/z-1\)、\(Y=2/\bar z-1\)、\(t=1-2\xi\)，得到
\[
 \boxed{[\mathcal G^{(2)}]_{\log u}=\frac{\lambda_3^2}{16\pi}
 \int_{-1}^1\frac{(1-t^2)-4}{(X-t)^2(Y-t)^2}dt.}\tag{6.1}
\]
其中加权部分来自 s，常数 \(-4\) 来自 t+u。

### 6.3 Legendre 展开直接给所有 P,Q

在 \(X,Y>1\) 用一致收敛的 Neumann 展开
\[
 \frac1{(X-t)^2}=\sum_{l\ge1}(2l+1)Q_l(X)P_l'(t).
\]
两个全指标正交恒等式为
\[
 \int_{-1}^1P_l'P_m' dt=
 \begin{cases}\min(l,m)[\min(l,m)+1],&l+m\text{ even},\\0,&l+m\text{ odd},\end{cases}
\]
\[
 \int_{-1}^1(1-t^2)P_l'P_m'dt=\frac{2l(l+1)}{2l+1}\delta_{lm}.
\]
前者由 \(P_l'=\sum_{k<l,\,l-k\,\mathrm{odd}}(2k+1)P_k\) 求出，后者由 Legendre Sturm–Liouville 方程得出。

记 \(k_{2h}(z)=z^h{}_2F_1(h,h;2h;z)\)、\(a_P=(2)_P^2/[P!(P+3)_P]\)。在 \(l=P+1\)，
\[
 a_Pk_{2P+4}(z)=2(2l+1)l(l+1)Q_l(X).
\]
自由四点函数的 pair OPE 系数为 \([1+(-1)^{P+Q}]a_Pa_Q\)。能移 \(\gamma_{P,Q}\) 改变左右权各 \(\gamma/2\)，故其 \(\log u\) 系数恰为 \(\gamma_{P,Q}a_Pa_Q\)。

将 (6.1) 按上述两恒等式展开，crossed 部分给
\(-\lambda_3^2/[16\pi(M+1)(M+2)]\)，direct 部分给
\(\lambda_3^2\delta_{PQ}/[32\pi(P+1)(P+2)(2P+3)]\)。这证明 (0.1)。每个允许 pair primary multiplicity 为一，且 §2 已排除跨 N 混合，所以这里读出的是**个别本征值**，不是未解简并的平均 anomalous dimension。

完整边界通量论证、CG 态、有限独立 OFPT 及 crossing 检查见 [独立全指标证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/derivation.md>)。

## 7. 一个完整输入到谱的例子

取 \(\Delta=2,E=6,J=0\)，不能只保留两粒子。完整 normalized-Fock 基为
\[
 |1\rangle=a_{22}^\dagger|0\rangle,\quad
 |2\rangle=a_{00}^\dagger a_{11}^\dagger|0\rangle,\quad
 |3\rangle=a_{01}^\dagger a_{10}^\dagger|0\rangle,\quad
 |4\rangle=(a_{00}^\dagger)^3|0\rangle/\sqrt6.
\]
在本文重整化条件与 repo 相位下，
\[
 \boxed{\delta H^{(2)}=\frac{\lambda_3^2}{960\pi}
 \begin{pmatrix}0&0&0&0\\0&-17&-8&0\\0&-8&-17&0\\0&0&0&-75\end{pmatrix}.}\tag{7.1}
\]
因此四个能移为
\[
 0,\quad-\frac{5\lambda_3^2}{192\pi},\quad
 -\frac{3\lambda_3^2}{320\pi},\quad-\frac{5\lambda_3^2}{64\pi}.
\]
相应态是 \(|1\rangle\)、\((|2\rangle+|3\rangle)/\sqrt2\)、\((|2\rangle-|3\rangle)/\sqrt2\)、\(|4\rangle\)。第二个是 ground-pair descendant，第三个是 \((P,Q)=(1,1)\) scalar primary。

输出 [完整四维证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_D2_E6_J0.json>) 在代数 B 基中保存，Gram 为 \((1/9,1/4,1/4,6)\)。其特征多项式以 \(\lambda_3^2/(8\pi)\) 为单位是
\[
 z(z+3/40)(z+5/24)(z+5/8).
\]
正原点 y-Jacobi 相位会把二体非对角项写成 \(+8\)；两者由二体基的 \(\operatorname{diag}(-1,1)\) 共轭联系，不能把它误报为物理符号矛盾。

### 一个真正非整数质量的完整块

取 \(\Delta=3/2,E=5,J=0\)。完整空间只有 \(a_{00}^\dagger a_{11}^\dagger|0\rangle\)、\(a_{01}^\dagger a_{10}^\dagger|0\rangle\) 两个 normalized-Fock 态，矩阵精确为
\[
 \delta H^{(2)}=\frac{\lambda_3^2}{8\pi}
 \begin{pmatrix}
 -1843/630+25\pi/32&-593/630+7\pi/32\\
 -593/630+7\pi/32&-1843/630+25\pi/32
 \end{pmatrix}.
\]
对称态的系数是 \(\pi-58/15\)，恰好等于 (5.2) 的 ground descendant；反对称 scalar primary 的系数是 \(9\pi/16-125/63\)。这使用完整无限虚模和，不是 finite cutoff 拟合。

另一个严格无限和例子是 \(\Delta=3\) ground pair：
\[
 b(3)=\frac1{8\pi}\left[\frac{89653}{215040}-\frac{1575}{4096}\zeta(3)\right].
\]
\(\Delta=3,E=8,J=0\) 的二体块在同样单位下为 \(\left(\begin{smallmatrix}a&c\\c&a\end{smallmatrix}\right)\)，其中
\[
 a=\frac{3707411}{5160960}-\frac{20475}{32768}\zeta(3),\qquad
 c=-\frac{1555739}{5160960}+\frac{7875}{32768}\zeta(3).
\]
这些特殊函数约化、完整 Ward 和一个未预先施加选择定则的 \(\Delta=3\) 无限 1↔3 抵消，都保存在 [一般质量证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_hypergeometric_01.json>)。

## 8. 推论、极限与尚未解决的结构

**严格负谱与核。** 在 \(\Delta=2\)，每个二体 primary 系数严格负，最负者为 \(b(2)\)，所有其他系数大于它。任意 N≥2 的有限块由 pair lift 满足
\[
 \binom N2 b(2)\,\mathbf1\ \le\ K_N^{(2)}\ <0,
 \qquad \delta H_N^{(2)}=\lambda_3^2K_N^{(2)}.
\]
下界由全 ground-mode module 取得。因此 fixed-gap 处方下，有限能量的二阶核只有 N=0,1；φ⁴ 接触作用的多粒子零模并不受这个 cubic 交换保护。此处结论具体是 \(\Delta=2\)，没有从 ground-pair 吸引性推断一般 \(\Delta\) 的全部谱皆负。

**高激发。** 对 \(n=\min(P,Q)\)、偶 spin \(\ell=|P-Q|\)，非零 spin 的式子是
\[
 \delta E_{n,\ell}=-\lambda_3^2/[16\pi(n+\ell+1)(n+\ell+2)].
\]
固定 n 大 spin、固定 spin 大 n，系数都按二次幂衰减。scalar s-channel 的修正仅为 \(O(n^{-3})\)。这是完整 pair 结果，尚非任意 N 全谱的普遍 gap 定理。

**大 N。** (5.3) 精确给首个非零系数 \(\sim\lambda_3^2b(\Delta)N^2/2\)，自然提出 \(\lambda_3^2=g/N\) 的弱耦合 mean-field 标度。它并不自动证明高阶余项对 N 一致，也不稳定本来无下界的纯实 cubic 势。

**处方与物理相互作用。** 若另加 \(\lambda_4=c_4\lambda_3^2\)，ground-pair 系数改变 \(c_4/[8\pi(2\Delta-1)]\)。这是一个额外物理 quartic deformation，不是本篇有限 tree exchange 的必需 UV scheme ambiguity。

仍开放：一般 \(\Delta\) 的全部 pair-primary 特殊函数能否化成更简单闭式、其非零 spin 符号定理；任意 N 的非平凡交换谱族与 cluster 渐近；高阶破坏 emergent N 守恒的首个机制；φ⁵ 及更高顶角二阶所需的 EFT 反项数据。这些问题不影响本篇给出的二阶有限矩阵定义与已证明谱族。

## 9. 复算与证据定位

主实现的 [103 项精确报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_effective_exact_01.json>) 包括：同一 one-mode cutoff 下直接原始 Fock OFPT 的真空/一体减除，七个完整块的 Gram/左右 Ward，25 个 \(\Delta=2\) pair-primary 比较，40 个共振 1↔3 零。全指标结论依靠正文证明，而非这份有限报告。

一般质量另有 [170 项精确、3 项数值检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_hypergeometric_01.json>)；独立 Rodrigues/超几何推导与配对算术定理的条件、scope stress test、带显式 tail bound 的无限和检验保存在 [独立径向求和报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-hypergeometric/README.md>)。它不替代外腿和 Bose 因子核验，后者由主构造与独立原始 Fock 算法完成。

最小命令与全部独立实现清单另见 [验证与运行说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Validation and reproduction.md>)。运行输出统一区分 \(\lambda_3^2/(8\pi)\) 与物理能移；已有证书不会被覆盖。
