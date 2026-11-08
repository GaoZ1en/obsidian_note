# φ⁴ 的任意有限 N 一阶谱：显式系数、精确 CLI 与新结构

## 结论

**对任意给定的有限 \(N,P,Q\) 和有理 \(\Delta>1\)，完整 Bose shell、primary、Gram 矩阵、全部一阶本征值及物理 eigenspaces 都已具有显式有限构造，并已实现为可运行程序。** 这里“任意 \(N\)”不是只做到三体后再提出推广，也不是声称所有谱都存在统一根式公式。

设

\[
c_0=\frac1{8\pi(2\Delta-1)},\qquad
\widehat K_{N;P,Q}=\frac{\mathcal K_{N;P,Q}}{c_0}.
\]

若 \(\zeta\) 是下述有理矩阵 \(\widehat K\) 的本征值，则固定标签的一阶能量为

\[
\boxed{E=N\Delta+P+Q+\lambda c_0\,\zeta+o(\lambda).}
\tag{0.1}
\]

任意有限矩阵的 exact root 可以由有理不可约多项式与严格有理隔离区间指定；不必先获得根式。程序还输出每个根的 \(\mathbb Q(\alpha)\) eigenspace，而不只打印数值 eigenvalues。

实际执行已经超过三体：**602 个完整有限块、8579 项精确检查全部通过**。主范围为 \(N=2,\ldots,8\)、所有 \(P+Q\le6\)、\(\Delta=3/2,2,7/3\)；另有九个 balanced degree-eight 块和五个 chiral degree-eight 块。最大 full-shell 维数 105，最大 primary 维数 24。全部谱多项式可直接查 [精确谱表 CSV](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_spectra.csv>)，详细证明性残差见 [602 块证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_certification.json>)。

此外，在 \(P=Q\) 的 balanced sector 得到一个全指标结构：左右交换的 \(\pm\) parity 分解，以及它的独立 twisted-character 计数公式。这解释了若干高次特征多项式的分解，但不把有限因子分解误称为可积性。

## 1. 沿用的物理输入与本次新增的范围

作用量仍为固定 global AdS₃ 上的实标量：

\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\quad L=1,\quad\theta\sim\theta+2\pi,
\]

\[
S=-\frac12\int\sqrt{-g}\,[(\partial\phi)^2+\Delta(\Delta-2)\phi^2]
-\frac\lambda{4!}\int\sqrt{-g}\,\phi^4.
\tag{1.1}
\]

边界时间固定，中心正则，\(\phi=O(r^{-\Delta})\)、\(\Delta>1\)，采用同一 AdS-invariant 自由真空 Wick 减除
\(:\phi^4:_\Delta=\phi^4-6G_\epsilon\phi^2+3G_\epsilon^2\)，固定物理 scalar gap 和真空能量。量子化与谱终点遵循 [formalism 的 AdS 部分](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L229-L282>)，不是 global-AdS in/out S-matrix。

自由模标签 \(A=(p_A,q_A)\) 的能量、自旋为

\[
\omega_A=\Delta+p_A+q_A,\qquad j_A=p_A-q_A,
\]

振子满足 \([a_A,a_B^\dagger]=\delta_{AB}\)。与原 PDF 相同的 Jacobi 相位、KG 归一化、全指标 \(1\leftrightarrow3\) 共振零和 pair 系数的推导已在 [φ⁴ 一阶谱笔记](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md>) 中独立给出。本文沿用其已验证的物理输入

\[
\mathcal K_N=\sum_{i<j}\sum_{n\ge0}
\frac{\Pi_{ij}^{(n,n)}}{8\pi(2\Delta+2n-1)}.
\tag{1.2}
\]

这不是从 Einstein pair 系数导入的公式。生产程序仅复用之前独立 [φ⁴ 检查程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_checks.py>) 中的 `radial_integral` 与 `weight`；occupation 枚举、一般 \(N\) 的矩阵作用、primary、谱投影和 descendant 重建都是本次的新实现。没有导入原 Einstein 研究包引擎、缓存或参考矩阵；旧的 978-check 记录及已有笔记未作改动。

## 2. 任意 N 的显式有理作用公式

这一节给出可逐项生成矩阵的系数，而不以“然后对角化”替代算符定义。

### 2.1 无根号的物理 occupation 基

令

\[
w_p=\frac{(\Delta)_p}{p!},\qquad v_A=w_{p_A}w_{q_A},
\]

并使用

\[
|\mathbf n\rangle_B=
\prod_A\left(\frac{a_A^\dagger}{\sqrt{v_A}}\right)^{n_A}|0\rangle,
\quad
G_{\mathbf n\mathbf n'}=\delta_{\mathbf n\mathbf n'}
\prod_A\frac{n_A!}{v_A^{n_A}}.
\tag{2.1}
\]

这不是正交归一基，但 Gram 为明确的正对角有理矩阵。为书写作用，定义

\[
c_A^+=a_A^\dagger/\sqrt{v_A},\qquad c_A^-=\sqrt{v_A}\,a_A,
\quad[c_A^-,c_B^+]=\delta_{AB}.
\]

\(c_A^+\) 与 \(c_A^-\) 不互为物理 Hilbert adjoint；物理 adjoint 由 (2.1) 的 Gram 实现。采用这个坐标基只是消去根号，没有改变 Bose 统计或物理内积。

固定 \((N,P,Q)\) 的完整 shell 由

\[
\sum_A n_A=N,\qquad \sum_Ap_A n_A=P,\qquad
\sum_Aq_A n_A=Q
\tag{2.2}
\]

的全部非负 occupation 给出。每个出现的模满足 \(0\le p_A\le P\)、\(0\le q_A\le Q\)，因而这是有限集合。

### 2.2 直接径向积分的有限 beta 系数

对每个模 \(A\)，定义

\[
\nu_A=\min(p_A,q_A),\qquad \mu_A=\max(p_A,q_A),
\qquad \ell_A=|p_A-q_A|.
\]

在 \(y=r^2/(1+r^2)\) 中，去掉时角因子后的 KG 模为

\[
e_A=\frac{(-1)^{\nu_A}}{\sqrt{2\pi}}
\sqrt{\frac{w_{\mu_A}}{w_{\nu_A}}}
 y^{\ell_A/2}(1-y)^{\Delta/2}
 P_{\nu_A}^{(\ell_A,\Delta-1)}(1-2y).
\tag{2.3}
\]

共振与角动量守恒要求

\[
p_A+p_B=p_C+p_D,\qquad q_A+q_B=q_C+q_D.
\tag{2.4}
\]

令 \(s=(\ell_A+\ell_B+\ell_C+\ell_D)/2\)。在 (2.4) 下，\(s\) 是非负整数。设

\[
\prod_{I=A,B,C,D}P_{\nu_I}^{(\ell_I,\Delta-1)}(1-2y)
=\sum_h b_h y^h.
\]

则全部径向积分由有限和给出：

\[
\boxed{I_{AB;CD}
=\int_0^1dy\,y^s(1-y)^{2\Delta-2}\sum_hb_hy^h
=\sum_hb_h\frac{(s+h)!}{(2\Delta-1)_{s+h+1}}.}
\tag{2.5}
\]

需要时，Jacobi 多项式本身可用有限二项式定义生成：

\[
P_n^{(a,b)}(1-2y)=\sum_{h=0}^n
\binom{n+a}{n-h}\binom{n+b}{h}(-y)^h(1-y)^{n-h}.
\tag{2.6}
\]

因此有理 \(\Delta>1\) 时，不需要数值积分、Gamma 函数浮点值或特殊函数拟合。

### 2.3 无序 pair 系数与矩阵逐项作用

固定模的 lexicographic 顺序 \((p,q)\)，仅求和 \(A\le B\)、\(C\le D\)。定义

\[
\boxed{
t_{AB;CD}=
\frac{2(2\Delta-1)(-1)^{\nu_A+\nu_B+\nu_C+\nu_D}}
{(1+\delta_{AB})(1+\delta_{CD})}
\frac{w_{\mu_A}w_{\mu_B}}{w_{\nu_C}w_{\nu_D}}
I_{AB;CD}.}
\tag{2.7}
\]

不满足 (2.4) 的系数取零。\(\delta_{AB}\) 表示两个模完全相同。归一化后的算符和 occupation 作用为

\[
\widehat K=
\sum_{\substack{A\le B,\ C\le D\\\text{满足 }(2.4)}}
 t_{AB;CD}\,c_A^+c_B^+c_C^-c_D^-,
\]

\[
\boxed{\widehat K|\mathbf n\rangle_B=
\sum_{A\le B,C\le D} t_{AB;CD}\,
 n_C(n_D-\delta_{CD})
 |\mathbf n+\mathbf e_A+\mathbf e_B-\mathbf e_C-\mathbf e_D\rangle_B.}
\tag{2.8}
\]

这里已经包含 \(1/4!\)、六个 \(2\to2\) Wick 排列、两边无序 pair 的重数和重复模因子；不能再手工加一个 \(1/2\)。例如四个 ground 模有

\[
I_{00;00}=\frac1{2\Delta-1},\qquad t_{00;00}=\frac12,
\]

所以 \(N\) 个 ground 粒子的 \(\widehat K\) 本征值正好为 \(N(N-1)/2\)。这固定了 (0.1) 的绝对归一化。

(2.5)–(2.8) 是任意有限 \(N,P,Q\) 的显式解算输入：所有求和都有限，且每个矩阵元在 \(\mathbb Q(\Delta)\) 中。没有隐藏的无限中间态求和，因为这里只计算已经证明 number-preserving 的一阶共振算符。

## 3. 完整 Bose primary、Gram 与精确 eigenspaces

### 3.1 正确的 Bose 空间和独立维数公式

空间是

\[
\operatorname{Sym}^N(D^+_{\Delta/2}\otimes D^+_{\Delta/2}),
\]

不是两个分别 Bose 对称化的 chiral 空间之积。记完整 shell 维数为 \(d_N(P,Q)\)，则

\[
\sum_{P,Q}d_N(P,Q)x^Py^Q
=[u^N]\prod_{p,q\ge0}(1-u x^py^q)^{-1}.
\tag{3.1}
\]

在基 (2.1) 中，总 lowering 的作用完全有理：

\[
L_-|\mathbf n\rangle_B=\sum_{p,q}p\,n_{pq}
|\mathbf n-\mathbf e_{pq}+\mathbf e_{p-1,q}\rangle_B,
\]

\[
\bar L_-|\mathbf n\rangle_B=\sum_{p,q}q\,n_{pq}
|\mathbf n-\mathbf e_{pq}+\mathbf e_{p,q-1}\rangle_B.
\tag{3.2}
\]

primary 是两个 lowering 的共同核。对 \(N\ge1\)，无 global null descendants，故其维数为

\[
m_N(P,Q)=d_N(P,Q)-d_N(P-1,Q)-d_N(P,Q-1)+d_N(P-1,Q-1).
\tag{3.3}
\]

程序用受总激发预算限制的 excited-multiset 递归枚举 occupation，把剩余粒子填入 ground；另用独立的三变量生成函数系数 DP 计算 (3.1)，而非从同一张基表重复计数。\(N=0\) 真空单独处理；\(N=1\) 仅 ground 是 primary，所有一阶 shift 为零。这两个端点也实际执行过。

### 3.2 有限 Hermitian 问题的坐标形式

设 \(X\) 的列为共同 lowering 核的一组有理基，则

\[
G_P=X^T G_{\rm Fock}X>0,
\qquad \widehat K X=XK_P,
\qquad G_PK_P=K_P^T G_P.
\tag{3.4}
\]

也可使用对称 generalized pencil

\[
A_P=X^TG_{\rm Fock}\widehat KX,
\qquad\det(A_P-\zeta G_P)=0.
\tag{3.5}
\]

\(K_P\) 不是通常 Euclidean 内积下的对称矩阵并不表示非厄米。物理 Gram 不能在取 primary 后丢掉。

对有理 \(\Delta\)，\(K_P\) 和 \(G_P\) 都在 \(\mathbb Q\) 中；\(G_P>0\) 保证全部根为实数、矩阵可对角化。程序输出完整 monic 特征多项式、不可约因子和每个因子的重数。

### 3.3 “完整 eigenspaces”不依赖根式

写

\[
\chi_P(z)=\prod_f f(z)^{m_f},\qquad
\mu(z)=\prod_f f(z).
\tag{3.6}
\]

每个不可约 \(f\) 的所有实根都是本征值，且每根的本征空间维数均为 \(m_f\)。程序通过精确有理区间隔离每个根，而不是用浮点间距判断重根。

对 \(q_f=\mu/f\)，求扩展 Euclid 恒等式

\[
u_fq_f+v_ff=1.
\]

则

\[
\mathsf P_f=[u_fq_f\bmod\mu](K_P)
\tag{3.7}
\]

是该不可约因子全部共轭实根之和的**有理物理谱投影**。程序验证
\(\mathsf P_f^2=\mathsf P_f\)、\(G_P\mathsf P_f=\mathsf P_f^TG_P\)、\(\sum_f\mathsf P_f=1\)、\(\mu(K_P)=0\)。

请求 `--eigenspaces` 时，对 \(\deg f>1\) 构造

\[
F_f=\mathbb Q(\alpha),\quad f(\alpha)=0,
\qquad V_f=\ker_{F_f}(K_P-\alpha\mathbf1).
\tag{3.8}
\]

在每个隔离区间指定的实 embedding \(\alpha\mapsto\alpha_j\) 下，同一组列向量给出该根的完整 eigenspace；\(XV_f\) 给出原 occupation 坐标。线性因子直接在 \(\mathbb Q\) 上计算。程序也对完整 shell 而不只是 primary 输出这些数据。

这是精确谱描述，不是统一根式解，也不需要预先断言高次多项式的 Galois 群。

## 4. 全部 descendants 与 multiplicities 的重建

一阶 Ward 恒等式使 \(\widehat K\) 与总 \(L_\pm,\bar L_\pm\) 对易。因此一个 \((p,q)\) primary 到目标 \((P,Q)\) 的 lift 为

\[
R_{p,q}^{P,Q}=L_+^{P-p}\bar L_+^{Q-q}X_{N;p,q},
\qquad p\le P,\ q\le Q.
\tag{4.1}
\]

在 (2.1) 基中，raising 的系数分别是 \((p_A+\Delta)n_A\)、\((q_A+\Delta)n_A\)。其 Gram 倍数可全指标写出：

\[
(R_{p,q}^{P,Q})^TG_{N;P,Q}R_{p,q}^{P,Q}
=(P-p)!(N\Delta+2p)_{P-p}
 (Q-q)!(N\Delta+2q)_{Q-q}\,G_{N;p,q}^{\rm primary}.
\tag{4.2}
\]

不同 \((p,q)\) module 的 Gram 交叉块为零。把所有 \(R_{p,q}^{P,Q}\) 拼成 \(R\)，有

\[
\widehat K_{N;P,Q}R
=R\bigoplus_{p\le P,q\le Q}K_{N;p,q}^{\rm primary},
\quad \operatorname{rank}R=d_N(P,Q).
\tag{4.3}
\]

于是完整 shell 的特征多项式严格满足

\[
\boxed{\chi^{\rm shell}_{N;P,Q}(z)
=\prod_{p=0}^P\prod_{q=0}^Q\chi^{\rm primary}_{N;p,q}(z).}
\tag{4.4}
\]

同一个不可约因子若出现在不同 primary 层，其 full-shell multiplicity 要相加；不能仅比较“不同能量值的集合”。程序实际验证 (4.2)–(4.4)，并输出 \(R\) 及各 component 的列区间，所以可以恢复态而不只是恢复计数。

若只固定总激发 \(S=P+Q\) 而不固定自旋，应再取所有 \(P+Q=S\) 的直和。若有理 \(\Delta\) 使不同 \(N\) 的自由能量相同，已证明的一阶 number conservation 允许按 \(N\) 直和；这不代表高阶也不会混合。

## 5. 新的精确谱实例：四至八粒子

以下特征多项式变量 \(z\) 一律表示 \(\widehat K=\mathcal K/c_0\) 的本征值。\(\Delta=2\) 时 \(c_0=1/(24\pi)\)。每个实例的 full-shell eigenspaces、Gram、root intervals 和 descendant map 均已导出，不只存在表中多项式。

### 5.1 \(P=Q=2\)：四、五、六粒子

这三种情况的 full-shell 维数均为 9，primary 维数均为 3。

\[
\chi^{\rm primary}_{4;2,2}
=z^3-\frac{76}{7}z^2+\frac{6708}{175}z-\frac{7704}{175},
\tag{5.1}
\]

\[
\chi^{\rm primary}_{5;2,2}
=z^3-\frac{741}{35}z^2+\frac{25902}{175}z-\frac{298944}{875},
\tag{5.2}
\]

\[
\chi^{\rm primary}_{6;2,2}
=z^3-\frac{1207}{35}z^2+\frac{69037}{175}z-\frac{1309701}{875}.
\tag{5.3}
\]

完整 shell 的精确 multiplicity 分别为

\[
\chi^{\rm shell}_{4;2,2}=(z-6)(z-26/5)(z-21/5)^4\chi^{\rm primary}_{4;2,2},
\]

\[
\chi^{\rm shell}_{5;2,2}=(z-10)(z-9)(z-39/5)^4\chi^{\rm primary}_{5;2,2},
\]

\[
\chi^{\rm shell}_{6;2,2}=(z-15)(z-69/5)(z-62/5)^4\chi^{\rm primary}_{6;2,2}.
\tag{5.4}
\]

对应结果：[四粒子](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N4_P2_Q2_D2_certified.json>)、[五粒子](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N5_P2_Q2_D2.json>)、[六粒子](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N6_P2_Q2_D2.json>)。这些是逐 \(N\) 的精确有限结果；本文没有从三个点拟合一个“已证明”的 symbolic-\(N\) 公式。

### 5.2 八粒子 \(P=Q=3\)

full-shell 维数为 31，primary 维数为 8，且

\[
\chi^{\rm primary}_{8;3,3}(z)=(z-698/35)F_7(z),
\]

\[
\begin{aligned}
F_7(z)={}&z^7-\frac{15464}{105}z^6+\frac{34112812}{3675}z^5
-\frac{13915105992}{42875}z^4\\
&+\frac{6121266601088}{900375}z^3
-\frac{2688764472364192}{31513125}z^2\\
&+\frac{6239553019946496}{10504375}z
-\frac{92942375977436928}{52521875}.
\end{aligned}
\tag{5.5}
\]

[八粒子完整输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N8_P3_Q3_D2.json>) 对全部七次根给出严格隔离区间与 \(\mathbb Q(\alpha)\) eigenspaces；其所有 full-shell 根及重数也同时恢复。没有用浮点对角化来猜测 (5.5)。

### 5.3 已执行的更大 mixed 块

| \(\Delta=2\) | full-shell 维数 | primary 维数 | primary 的左右 parity 维数 \((+,−)\) |
|---|---:|---:|---:|
| \(N=4,P=Q=3\) | 27 | 6 | \((5,1)\) |
| \(N=6,P=Q=3\) | 31 | 8 | \((7,1)\) |
| \(N=8,P=Q=3\) | 31 | 8 | \((7,1)\) |
| \(N=4,P=Q=4\) | 74 | 13 | \((10,3)\) |
| \(N=5,P=Q=4\) | 95 | 19 | \((14,5)\) |
| \(N=6,P=Q=4\) | 105 | 24 | \((17,7)\) |

所有这些块的 primary kernel 在该质量下均为空；这是表中有限块的结果，不是任意 balanced degree 的零空间定理。完整高次特征多项式放在 [谱表](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_spectra.csv>) 中，避免正文堆叠长系数。

## 6. 任意 N 的左右 parity 分解及 twisted character

### 6.1 对称性与投影

空间反射 \(\theta\mapsto-\theta\) 交换模标签 \((p,q)\mapsto(q,p)\)。在 \(P=Q=J\) 时，它在同一 shell 内定义线性 involution \(\mathcal R\)：

\[
\mathcal R^2=1,\qquad
\mathcal R^TG\mathcal R=G,\qquad
[\mathcal R,\widehat K]=0.
\tag{6.1}
\]

\(\mathcal R\) 交换两个 lowering 算符，所以保持它们的共同核。故 primary 可严格分解为

\[
\mathcal P_{N;J,J}=\mathcal P_+\oplus\mathcal P_-,
\qquad\mathsf P_\pm=(1\pm\mathcal R)/2,
\]

\[
\chi^{\rm primary}_{N;J,J}=\chi_+\chi_-.
\tag{6.2}
\]

这是一个对全部有限 \(N,J\) 和 \(\Delta>1\) 成立的结构，不依赖某个低块出现偶然有理根。一般 \(P\ne Q\) 时，反射给两个不同 shell 的等谱对应，而非同一 shell 内的 parity 分裂。

### 6.2 独立的全指标 parity 计数

在 occupation 基中，\(\mathcal R\) 是置换矩阵，trace 只数反射不动的 occupation。固定模 \((p,p)\) 可独立占据；二元轨道 \((p,q),(q,p)\)、\(p<q\) 要有相同 occupation 才贡献 trace。用 \(s^J\) 记录 balanced bidegree \((J,J)\)，得到

\[
\boxed{F_{\mathcal R}(u,s)=
\prod_{p\ge0}\frac1{1-u s^p}
\prod_{0\le p<q}\frac1{1-u^2s^{p+q}}.}
\tag{6.3}
\]

\([u^Ns^J]F_{\mathcal R}\) 是完整 balanced shell 的 parity trace，而不只是维数。

若一个 primary 的左右次数不同，它与反射后的 module 成对交换，因此在 balanced descendant shell 中的 trace 为零。若 primary 次数为 \((j,j)\)，其到 \((J,J)\) 的 descendant 使用相同次数的左右 raising；交换两者没有额外符号，parity trace 保持不变。因此对 \(N\ge1\)，

\[
\boxed{\tau_N(J):=\operatorname{tr}_{\mathcal P_{N;J,J}}\mathcal R
=[u^Ns^J](1-s)F_{\mathcal R}(u,s),}
\]

\[
\boxed{m_\pm(N,J)=\frac{m_N(J,J)\pm\tau_N(J)}2.}
\tag{6.4}
\]

\(N=0\) 真空单独处理。这个公式只依赖自由 Bose 表示，因此 parity 维数与 \(\Delta\) 无关；它不固定 parity 块内部的能量。

程序通过独立二变量生成函数 DP，核对了九个已构造 parity 矩阵的维数，**9/9 精确通过**，见 [twisted-character 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_parity_character.json>)。实际 \(\pm\) 基、Gram 和限制矩阵见 [parity 分块结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_parity.json>)。

例如 \(J=3,\Delta=2\) 时，\(N=4,6,8\) 的 odd-primary 块均为一维，系数依次为

\[
\zeta_-=\frac{12}{7},\quad\frac{309}{35},\quad\frac{698}{35}.
\tag{6.5}
\]

相应 even 块的特征多项式次数为 5、7、7。这解释了 (5.5) 的线性因子与七次因子来源，**不**证明它们在其他参数处都不可约，也不从三个 \(N\) 值推出普遍 eigenvalue 公式。

## 7. 其他全指标结构与适用边界

由正 pair 系数立即有

\[
0\le\widehat K_N\le\binom N2\mathbf1.
\tag{7.1}
\]

因此所有输出变量 \(\zeta\) 位于 \([0,\binom N2]\)。有限证书不是仅通过数值根验证这一点，而是对 \(G_PK_P\) 与 \(\binom N2G_P-G_PK_P\) 做精确有理 Schur-complement 正半定检查，包括零 pivot 的处理。

核是所有正 pair 接触约束的共同核。手征 \(Q=0\) 时 \(\widehat K_N=\sum_{i<j}\Pi_{ij}^{(0,0)}\)，与之前已证明的 Vandermonde-squared 零态条件一致。本文不重复一般 mixed kernel 分类，也不以本次低能块恰好无零态推断高能空间没有零态。

不同重叠粒子对的 projectors 一般不交换；明确的任意有限 \(N\) 算法和高次多项式谱并不等于可积性。固定激发次数、symbolic \(N\) 的 pencil 及低块闭式公式是另一个层次的问题，应独立从符号作用证明，不能从本次数值 \(N\) 表拟合后当成定理。

有限算法的完整性和成本需要分开：给定有限标签总能终止，但 occupation 数随激发预算增长，精确数域和多项式系数也会膨胀。本次没有进行无上限的高能扫描；已认证范围止于下一节列出的 602 块。

物理能量一直采用 (0.1) 的固定标签 \(o(\lambda)\) 记法。有限线性矩阵 pencil 的精确谱、第一阶 secular 系数的全指标证明，与连续相互作用 QFT 的自伴域、UV 极限、真实谱分支存在和 \(N,P,Q\) 一致余项估计是不同命题。高阶 number-changing、零态保护、\(\lambda\to0\) 与大 \(N\)/大激发极限的交换并未由本程序解决。

## 8. 可用 CLI、导入接口与复现记录

### 8.1 单个完整谱块

主程序：[phi4_nbody_spectrum.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_spectrum.py>)。在本文目录，用户可运行：

```bash
sage --nodotsage -python scripts/phi4_nbody_spectrum.py \
  --N 6 --P 2 --Q 2 --Delta 2 \
  --eigenspaces --descendants \
  --output results/phi4_nbody_my_N6_P2_Q2_D2.json
```

- `--N --P --Q`：非负整数；非真空 \(N=0\) 输入拒绝。
- `--Delta`：精确有理数，如 `3/2`、`2`、`7/3`，必须大于 1。
- 默认输出完整 shell 与 primary 矩阵、Gram、特征多项式和有理谱投影。
- `--eigenspaces`：加上 primary 与 full shell 的逐根数域 eigenbasis、原 occupation 坐标和严格根隔离区间。
- `--descendants`：加上完整 descendant 变换、Gram 倍数与重数重建。
- `--compact`：省略大矩阵，保留精确谱与认证结果。
- `--output` 必须是一个**尚不存在**的 `phi4_nbody_*.json` 文件；程序明确拒绝覆盖。省略时输出 JSON 到 stdout。

本次实际执行通过 Sage MCP 完成，而非另起本机 CLI；上述 CLI 是同一 `main(argv)` 接口的用户入口。MCP 中可用如下方式运行同一命令，不需要安装包：

```python
import sys, importlib.util
from pathlib import Path
sys.dont_write_bytecode = True
p = Path('/absolute/path/to/scripts/phi4_nbody_spectrum.py')
spec = importlib.util.spec_from_file_location('phi4_nbody', p)
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)
m.main(['--N','6','--P','2','--Q','2','--Delta','2',
        '--eigenspaces','--descendants',
        '--output','/absolute/path/to/results/phi4_nbody_new_run.json'])
```

### 8.2 稳定的 Python/Sage 导入接口

| API | 返回内容 |
|---|---|
| `occupation_basis(N,P,Q)` | 完整 occupation tuples，按 `labels(P,Q)` 排列 |
| `character_dimension(N,P,Q)` | 独立生成函数系数计数 |
| `hamiltonian(N,P,Q,Delta)` | 完整 \(\widehat K\) 的精确有理矩阵 |
| `gram(N,P,Q,Delta)` | (2.1) 的物理 Gram |
| `ladder(N,P,Q,Delta,axis=0,up=False)` | 左/右、升/降映射 |
| `primary_block(N,P,Q,Delta)` | `basis,labels,X,K,G,H,G_fock` 等字段 |
| `descendant_reconstruction(N,P,Q,Delta)` | \(R\)、block matrix、Gram、component 信息及验证 |
| `spectral_resolution(K,G,X,eigenspaces=True)` | 完整 exact roots、重数和数域 eigenspaces |

其中 `primary_block` 的 `K` 是 primary 限制，`H` 是 full shell；两者均以 \(c_0\) 为单位。`X` 的列在 occupation 基中；`G` 为 primary Gram，`G_fock` 为完整 Gram。返回缓存矩阵设为 immutable，使用者若需修改，应显式复制。

### 8.3 实际认证范围及来源保全

认证程序：[phi4_nbody_certify.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_certify.py>)。
示例与 parity 程序：[phi4_nbody_examples.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_examples.py>)。
独立 twisted character：[phi4_nbody_parity_character.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_parity_character.py>)。

| 范围 | 完整块数 |
|---|---:|
| \(N=2,\ldots,8\)，所有 \(P+Q\le6\)，\(\Delta=3/2,2,7/3\) | 588 |
| \(N=4,5,6\)，\(P=Q=4\)，同三种质量 | 9 |
| \(N=4,\ldots,8\)，\((P,Q)=(8,0)\)，\(\Delta=2\) | 5 |
| **合计** | **602** |

每块检查：独立 Bose character 维数、primary character 维数、full/primary Gram Hermiticity、primary invariance、两个 lowering Ward 关系（存在时）、左右反射、primary Gram 正性、上下界正半定、semisimplicity，以及完整 descendant 基和特征多项式乘积。**8579 个显式布尔检查全部通过，0 失败。**

其中 168 个 \(N=2,3\) 块与旧独立径向积分矩阵逐元素一致；114 个块还与旧 978-check JSON 的已存多项式一致。复用源脚本 SHA-256 与旧证书一致，新引擎、认证程序、旧结果的 hashes 全部记录在 [认证 metadata](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_certification.json#L1-L68>)。

四个最终示例输出均含 actual eigenspaces；九个 parity 分块另有独立 character 检验。\(N=0,1\)、非法输入拒绝与“不覆盖既有结果”的负控制见 [API smoke 记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_api_smoke.json>)。实现时修复过 Sage immutable 单块拼接和矩阵复制的 API 边界问题；最终认证记录对应修复后的 source hash，而非把首次失败算作通过。

这些有限检查针对新实现和归一化链；全指标结论仍由 (2.5)–(2.8)、正定表示论、Ward 恒等式和 (4.1)–(4.4) 的论证承担。它们不把 602 个实例变成“所有能级都已枚举”，也不把软件完成度变成未证明的连续物理结论。
