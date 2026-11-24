# n=3 signed-permutation sewing：RH／tau 文献条件审查

## 结论与证据边界

**在下文明确的算子域、全局可解邻域及归一化条件下成立。** 两个不相交圆周上的 graph determinant 恰是 Cafasso–Gavrylenko–Lisovyy（CGL）的 Definition 3.1 Fredholm determinant；CGL Theorem 3.4 配合本题直接端点残数，给出 **global JMU tau 除以两个 local tau**。Korotkin 的 quasi-permutation 构造明确允许光滑覆盖上的三阶 ramification；在本题的无额外 meromorphic twist、即其参数 $r_m^{(j)}=0$ 的 specialization，spin 依赖是 theta 常数一次幂。

不能省略以下桥梁：

1. $Q_i$ 是 $H_{i,+}\to H_{i,-}$ 的 restricted graph map，不是未限制的全 $L^2$ 算子。
2. 局部 inverse 不推出 global dual RHP 可解；先在 $x\to0$ 的 cross trace-norm 小邻域建立 global inverse。
3. CGL §3.3 的 generic intermediate-spectrum 假设在这里失败；应使用一般 Theorem 3.4 加本题残数，而非直接套其 linear-pants 例子。
4. $r=0$、reference spin 和 signed flat twist 必须从实际 covering/sewing 识别；不得把三个矩阵符号直接当作 canonical characteristic。
5. tau 微分只给出参数无关的乘法常数。$x\to0$ 时 Fredholm determinant 与两个 theta 常数的共同归一化才把相对常数固定为 $1$。
6. 全实区间结论由 Fredholm 解析性和已选定分支的解析延拓得到；不把待证的全区间非零性作为起点。

当前主线已经记录这些步骤，见 [独立 RH／spin／CFT 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md#L209-L564>)。本审查在完成两篇文献及 CGL block 匹配后，才读取该推导的当前版本，以保存已补齐的证明链。其 Thomae 原始文献、lattice 极限及全部无限维分析没有在本审查中重新独立证明。

**Verified:** 指定 PDF 页的实际视觉核对；版本与编号；CGL actual blocks 的解析匹配；本题直接 JMU 残数推导；signed matrices 与有限维 Schur/block 代数的 Sage exact checks。

**Assumptions:** 割线分离；标准 $L^2$ 端点类；固定局部 exponents；analytic/invertible direct factors；先在 global dual 可解邻域使用对数微分；同一 marking、cover 和局部坐标；沿指定实区间连续选择 theta 分支。

**Not verified here:** Thomae 定理的原始书籍全文；本题所有 lattice sectors 的极限；absolute zeta-determinant normalization；lattice Pfaffian orientation。本文不会把 theta 一次幂自动改成模平方或新增 species。

## 1. 被审查的对象与约定

设 $a<b<c<d$，两割线 $I_1=(a,b)$、$I_2=(c,d)$，各由一个逆时针、不相交的圆周 $\mathcal C_i$ 包围。取

\[
P=\begin{pmatrix}0&0&1\\1&0&0\\0&1&0\end{pmatrix},\qquad
S=\operatorname{diag}(-1,1,1),\qquad
J_1=SPS,\quad J_2=P.
\]

交比约定为

\[
x=\frac{(b-a)(d-c)}{(c-a)(d-b)}\in(0,1).
\]

这些是**割线**的 constant jumps；下文 CGL 的圆周 jump 另记 $\mathcal J_i$。局部 exponents 为

\[
\operatorname{spec}\Theta_e=\{-1/3,0,1/3\},\qquad
\operatorname{Tr}\Theta_e^2=\frac29.
\]

同一端点的 exponent 差为 $1/3,2/3$，不为整数；最大绝对值 $1/3<1/2$，与所选 $L^2$ 端点类相容。每条割线两端的 monodromies 互逆。

记

\[
H_i=L^2(\mathcal C_i,\mathbb C^3)=H_{i,+}\oplus H_{i,-},
\]

其中 $H_{i,+}$ 为圆内 Hardy 空间，$H_{i,-}$ 为圆外且在无穷远消失的 Hardy 空间，投影为 $\Pi_{i,\pm}$。令 $Y_i(\infty)=I$ 为单割线 normalized local solution；$Y_i,Y_i^{-1}$ 在各圈外部及圈的 collar 上 holomorphic。定义

\[
V_{ij}:H_{j,-}\longrightarrow H_{i,+}
\]

为圆外解析延拓后在另一圈上的 restriction，并定义

\[
\boxed{
Q_i=(Y_i\Pi_{i,+}Y_i^{-1}-I)\big|_{H_{i,+}}
:H_{i,+}\longrightarrow H_{i,-}.
}
\tag{1.1}
\]

待识别的对象是

\[
\boxed{
D=\det_{H_{1,-}}(I-Q_1V_{12}Q_2V_{21}).
}
\tag{1.2}
\]

本文不从一个未定义的全局 diagonal determinant 相除来定义 $D$。原实线算子到 (1.2) 的 Sylvester 恒等式及 $Q_i=-R_iL_i^{-1}E_i$，见 [独立推导 §5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md#L209-L305>)；本审查的文献匹配从这些有明确 domain 的 maps 开始。

## 2. 版本、页码和编号纠正

### 2.1 CGL

M. Cafasso, P. Gavrylenko, O. Lisovyy, *Tau functions as Widom constants*，**[arXiv:1712.08546v1](<https://arxiv.org/abs/1712.08546v1>)，22 Dec 2017**。本次检索只有 v1；PDF 共 26 页，相关 PDF 页码与正文印刷页码相同。

| 内容 | PDF／正文页码 | 精确定位 |
|---|---:|---|
| general ovals、faces、analytic direct factors | 17–18 | §3.1 |
| actual Fredholm operators | 18 | Definition 3.1，(3.1) |
| general tau logarithmic differential | 20–21 | Theorem 3.4，(3.6) 及证明中的 (3.7b) |
| Fuchsian system、local 和 intermediate spectrum 条件 | 22 | §3.3，(3.8) 及其后 |
| direct factors 与 relative JMU identification | 23 | (3.9)–(3.10) |

### 2.2 Korotkin

D. Korotkin, *Matrix Riemann–Hilbert problems related to branched coverings of* $\mathbb{CP}^1$，**[arXiv:math-ph/0106009v2](<https://arxiv.org/abs/math-ph/0106009v2>)，3 Aug 2001**。v1 为 13 Jun 2001、29 页；v2 为 28 页。以下主要按 v2 actual PDF；相关 PDF 页码与正文印刷页码相同。

| 内容 | v2 PDF／正文页码 | 正确编号 |
|---|---:|---|
| 任意 ramification 的 Rauch residue formulas | 13 | Theorem 3.5，(3.34)–(3.35) |
| modified Szegő construction 与 Abel shift | 15 | (4.42)–(4.45) |
| normalized nondegenerate RHP solution | 16 | Theorem 4.7，monodromy (4.47) |
| $r=0$ Szegő specialization | 17 | Remark 4.8，(4.48) |
| 固定 $p,q,r$ 的 Schlesinger deformation | 17 | Theorem 4.9，(4.49)–(4.50) |
| 任意 non-singular branched covering | 17 | Remark 4.10 |
| tau factorization | 20 | **Theorem 5.11，(5.60)** |
| simple-branch projective connection | 20 | Lemma 5.12，(5.62) |
| higher-ramification 修改 | 21 | **Remark 5.13** |
| Malgrange divisor iff theta divisor | 21 | **Theorem 5.15** |

因此，**Theorem 5.15 不是 tau 因子定理**。v1 对应的 tau theorem 是 Theorem 5.12；higher-ramification remark 是 Remark 5.14；Malgrange theorem 是 Theorem 5.16。对两个 arXiv PDF 的全文编号检索均未见 Remark 5.18：v2 最后是 Remark 5.16，v1 最后是 Remark 5.17。另一 reviewer 已说明错误标签来自 experimental HTML 自动转换后的计数，见 [其版本说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md#L645-L656>)；正式引用统一采用 actual PDF 的编号。

## 3. CGL Theorem 3.4 实际说了什么

### 3.1 direct factorization 不等于 global dual solution

CGL 设 $\Gamma$ 为有限个不相交 smooth closed ovals，互补 faces 二着色为 $+$、$-$，orientation 使正色面在正侧。对每个 circle，给定

\[
\Psi_{\mathcal C,\pm}:\mathcal C\to GL(N,\mathbb C),
\]

可解析延拓到相应整个侧域 $\varphi_\pm(\mathcal C)$。其 **direct factorization** 是

\[
\mathcal J_\mathcal C
=\Psi_{\mathcal C,-}^{-1}\Psi_{\mathcal C,+}.
\]

需要另解的 **dual RHP** 是

\[
\mathcal J_\mathcal C=\bar\Psi_+\bar\Psi_-^{-1},
\qquad \bar\Psi_+=\mathcal J_\mathcal C\bar\Psi_-.
\tag{3.1}
\]

这是左乘 jump。局部 direct factors 的存在不等于全局 dual RHP 已可解。

### 3.2 Definition 3.1 的 operators

令 $H_\pm=\bigoplus_\mathcal C H_{\mathcal C,\pm}$。定义

\[
\tau[\mathcal J]=\det_H(I+L),\qquad
L=\begin{pmatrix}0&A_{+-}\\A_{-+}&0\end{pmatrix},
\tag{3.2}
\]

其中 $A_{\pm\mp}$ 按共享 face 求和，其 summands 是

\[
A_{\mathcal C,\pm;\mathcal C',\mp}
=\Psi_{\mathcal C,\pm}
\Pi_{\mathcal C\leftarrow\mathcal C',\mp}
\Psi_{\mathcal C',\pm}^{-1}
-\delta_{\mathcal C,\mathcal C'}\Pi_{\mathcal C',\mp}.
\tag{3.3}
\]

这里 $\Pi_{\mathcal C\leftarrow\mathcal C',\mp}$ 是先取 Hardy component、解析延拓、再在目标 circle 上 restriction。共享 face、orientation、domain 与 subtraction 都是定义的一部分；不能只凭 kernel 中有 $1/(z-w)$ 就声称已匹配此 determinant。

### 3.3 Theorem 3.4

若 individual direct factors 平滑依赖 deformation parameter $t$，且 global dual solution $\bar\Psi$ 存在并平滑依赖 $t$，则

\[
\boxed{
\partial_t\log\tau[\mathcal J]
=\sum_\mathcal C\frac1{2\pi i}\oint_\mathcal C
\operatorname{Tr}\!\left\{
\mathcal J_\mathcal C^{-1}\partial_t\mathcal J_\mathcal C
\left[
(\partial_z\bar\Psi_{\mathcal C,-})\bar\Psi_{\mathcal C,-}^{-1}
+\Psi_{\mathcal C,+}^{-1}\partial_z\Psi_{\mathcal C,+}
\right]\right\}dz.
}
\tag{3.4}
\]

这是 general jump variation formula。它本身不是没有任何 local-factor contribution 的 JMU identity。参数变动时，可在 separated-endpoint 的一个小邻域固定 circles；analytic kernels 使 trace-class 与微分交换的条件可直接检查。

## 4. 与本题 graph determinant 的精确匹配

令两个圆内 face 为正、共同外部 face 为负。取

\[
\Psi_{\mathcal C_i,+}=I,\qquad
\Psi_{\mathcal C_i,-}=Y_i,\qquad
\mathcal J_i=Y_i^{-1}.
\tag{4.1}
\]

(3.3) 的共同外部 face 产生 cross restrictions；两个单独内部 face 各产生 (1.1)。因此

\[
A_{+-}=V=\begin{pmatrix}0&V_{12}\\V_{21}&0\end{pmatrix},
\qquad A_{-+}=Q=\operatorname{diag}(Q_1,Q_2).
\]

两次 Schur determinant 恒等式给

\[
\boxed{
\tau[\mathcal J]
=\det\begin{pmatrix}I&V\\Q&I\end{pmatrix}
=\det(I-QV)
=\det_{H_{1,-}}(I-Q_1V_{12}Q_2V_{21})=D.
}
\tag{4.2}
\]

本题所有 kernel 在圈的 collar 上 analytic，不同圈有正距离；这里所用 Fredholm products 的 trace-class 性不是由形式 block algebra 猜测的。

### 4.1 为什么 $Q_i$ 必须限制 domain

因为 $Y_i,Y_i^{-1}$ 在整个圈外解析，它们保持 $H_{i,-}$。相对 $H_{i,+}\oplus H_{i,-}$，乘法算子有下三角形式

\[
Y_i=\begin{pmatrix}a_i&0\\c_i&d_i\end{pmatrix}.
\]

于是

\[
Y_i\Pi_{i,+}Y_i^{-1}-I
=\begin{pmatrix}0&0\\c_i a_i^{-1}&-I\end{pmatrix}.
\tag{4.3}
\]

限制到 $H_{i,+}$ 后才是 graph map $Q_i=c_i a_i^{-1}$。若保留全 $H_i$，其 $H_{i,-}$ 上的 $-I$ 不是所称 graph map；在无限维情形也不是 compact。

### 4.2 左／右 jump 转换

CGL §3.3 使用右作用微分系统 $\Phi'=\Phi A$，对应左 monodromy。Korotkin 使用 $\Psi'=A\Psi$ 和右 monodromy。取 $\Psi=\Phi^T$，则

\[
\Psi'\Psi^{-1}=(\Phi^{-1}\Phi')^T,
\]

故 trace-square Hamiltonian 不变。不得把 $\Phi'\Phi^{-1}$ 和 $\Phi^{-1}\Phi'$ 当作同一个 rational connection。

若原割线 RHP 写成右 jump $Y_+=Y_-J_i$，本题还可取交换 sheet 2、3 的矩阵 $R$，满足 $R^2=I$、$J_i^T=RJ_iR$。于是 $\Phi=RY^TR$ 满足同一 $J_i$ 的左 jump。canonical local $Y_i$ 是 $J_i$ 的解析函数，所以 $RY_i^TR=Y_i$；该转换不改变本题 local graph 数据。若采用其他 basis 或 endpoint convention，应重新写出对应映射。

## 5. JMU identification：generic pants 的限制与直接残数

### 5.1 不能原封不动套 §3.3 的 linear-pants 例子

CGL p.22 的 Fuchsian example 除 local residues diagonalizable／nonresonant 外，还要求 partial monodromy products

\[
M_{0\to k}=M_0\cdots M_k
=S_k^{-1}e^{2\pi i\mathfrak S_k}S_k
\]

的 exponent eigenvalues **pairwise distinct modulo $\mathbb Z$**，并规定 trace matching。其 pp.22–23 的 explicit direct factors 来自 three-point local systems。最终得到

\[
\tau[\mathcal J]
=\frac{\tau_{\rm JMU}^{\rm global}}
{\prod_k\tau_{\rm JMU}^{[k]}},
\qquad
\tau_{\rm JMU}^{[k]}
=\text{const}\cdot
 a_k^{\frac12\operatorname{Tr}(\mathfrak S_k^2-\mathfrak S_{k-1}^2-\Theta_k^2)}.
\tag{5.1}
\]

本题每条完整割线的 composite monodromy 是 $I$，重复谱不满足该 intermediate-spectrum 假设。**这排除直接援引该 generic pants example，不排除一般 Theorem 3.4。**

### 5.2 本题的 direct endpoint residue

设 $\Phi$ 是全局割线左-jump solution。定义

\[
\bar\Psi=\Phi\quad\text{在共同外部},\qquad
\bar\Psi=Y_i^{-1}\Phi\quad\text{在第 }i\text{ 个圆内}.
\tag{5.2}
\]

内部 ratio 去除割线 jump，且给出 (3.1)。固定某端点 $e$，其 local monodromy 与 exponent 不随其他端点变动，局部写成

\[
Y_i=C_e(z-e)^{\Theta_e}g_i(z),\qquad
\Phi=C_e(z-e)^{\Theta_e}G(z),
\]

其中 $g_i,G$ holomorphic invertible，$C_e$ 可选为与 deformation 无关。固定 circles 后，$A_{+-}=V$ 随端点不变，只有 $Q_i$ 随该端点变化。按 CGL Theorem 3.4 证明中的 (3.7b) 形式（PDF／正文 p.21），

\[
\partial_e\log D
=-\operatorname*{res}_{z=e}
\operatorname{Tr}\{\partial_z(Y_i^{-1}\Phi)\Phi^{-1}\partial_eY_i\}.
\]

代入 $Y_i^{-1}\Phi=g_i^{-1}G$，得到

\[
\partial_e\log D
=\operatorname{Tr}\left\{\Theta_e
\bigl[G'(e)G(e)^{-1}-g_i'(e)g_i(e)^{-1}\bigr]\right\}
=H_e^{\rm global}-H_e^{\rm local,i}.
\tag{5.3}
\]

此处

\[
H_e^{\rm global}
=\frac12\operatorname*{res}_{z=e}
\operatorname{Tr}(\Phi^{-1}\Phi')^2
\]

是对应 convention 的 JMU Hamiltonian。若直接使用 (3.4) 的圆周表达式而不先改写 (3.7b)，circle 内另一个端点的 residue 不能漏掉：它正产生 local subtraction，详见 [主线的两个端点计算](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md#L359-L438>)。

因此，在 global dual 可解且 $D\ne0$ 的参数邻域，

\[
\boxed{
d\log D=d\log\tau_{\rm global}
-d\log\tau_1-d\log\tau_2.
}
\tag{5.4}
\]

这段是根据原文 general theorem 对本题作的短推导，不冒充原文已经逐字列出的 two-cut special-case theorem。

canonical two-end system 的 residues 为互相相反的常矩阵，故

\[
\tau_i=\text{const}\cdot(b_i-a_i)^{-\operatorname{Tr}\Theta_i^2}
=\text{const}\cdot(b_i-a_i)^{-2/9}.
\]

所以裸 $D$ 与裸 global tau 并不相等：

\[
D=C\,\tau_{\rm global}
[(b-a)(d-c)]^{2/9}.
\tag{5.5}
\]

mixed 与 same-sign 的 local systems 只差常数共轭，local taus 在相同比值中抵消。

## 6. Korotkin：factorization 的真实条件

### 6.1 参数和 theta argument

Korotkin 的 period matrix 记作 $\mathbf B$；其 $\Omega$ **不是 period matrix**，而是

\[
\Omega=\sum_{m,j}r_m^{(j)}U(\lambda_m^{(j)}).
\tag{6.1}
\]

$p,q\in\mathbb C^g$ 一般不要求为 half-characteristic；同一个 ramification point 上重合 sheets 的 $r_m^{(j)}$ 相等，并要求 $\sum_{m,j}r_m^{(j)}=0$。modified Szegő kernel 为

\[
\widehat S(P,Q)=
\frac{\Theta[p;q](U(P)-U(Q)+\Omega\mid\mathbf B)}
{\Theta[p;q](\Omega\mid\mathbf B)E(P,Q)}
\prod_{m,l}
\left[\frac{E(P,\lambda_m^{(l)})}{E(Q,\lambda_m^{(l)})}\right]^{r_m^{(l)}}.
\tag{6.2}
\]

Theorem 4.7 的 normalized RHP solution 要求 $\Theta[p;q](\Omega\mid\mathbf B)\ne0$。Theorem 4.9 进一步要求 $p,q,r$ 独立于 branch positions 才给 Schlesinger deformation。

Theorem 5.11 的一般 tau 含 $r$-dependent endpoint power factors，theta argument 也可以非零；不能仅由 quasi-permutation 就删去这些项。**当所有 $r_m^{(j)}=0$ 时**，Remark 4.8 给 ordinary Szegő kernel，且 factorization 简化为

\[
\boxed{\tau_\kappa=F(\{\lambda_m\})\Theta[\kappa](0\mid\mathbf B),}
\tag{6.3}
\]

其中 $F$ 不依赖 characteristic。不同 sectors 之间比较时，cover、marking、局部坐标及选取的积分常数体系必须相容；微分等式仍需相对归一化。

### 6.2 三阶 ramification 可以适用什么

Remark 4.10，v2 PDF／正文 p.17，明确说明 (4.42) 对任意 quasi-permutation representation 对应的 **non-singular branched covering** 仍成立，simple-branch assumption 非本质；(4.47) 中 $k_m^{(j)}$ 应解释为该点相接的 sheet 数目。

Theorem 3.5，p.13，明确声明 Rauch residue formulas 对 arbitrary multiplicities 有效，但正文展开证明只写 simple case。Remark 5.13，p.21，说明 higher ramification 时，simple formula

\[
\partial_{\lambda_m}\log F=R(\lambda_m)/24
\]

须改成 projective connection 的适当导数。**本题不把 $R/24$ 原样用于 cubic branch。** 只使用 spin-independent $F$ 在同一 cover 比值中抵消的结果。

本题矩阵 $J_1,J_2$ 的 determinant 都是 $1$、order 都是 $3$、characteristic polynomial 都是 $\lambda^3-1$。underlying permutation cover connected/transitive，四个 ramification indices 都为 $3$，故

\[
2g-2=3(-2)+4(3-1)=2,\qquad g=2.
\]

三阶 ramification 不是 nodal degeneration；应在 algebraic model 的光滑 normalization 上工作。

对于 $r=0$ 的 $k$-fold branch，令 $z-e=u^k$，Szegő half-form pushforward 的局部指数为

\[
\frac{j-(k-1)/2}{k},\qquad j=0,\ldots,k-1.
\]

$k=3$ 时恰为 $-1/3,0,1/3$。这给出与所用端点类的相容性检查；具体 signed sector 仍需实际 spin transport。

### 6.3 divisor statement 不是 factorization statement

Theorem 5.15 说：branch positions 落在 Malgrange divisor，当且仅当 $\mathbf Bp+q+\Omega$ 落在 theta divisor。它可以定位 normalized RHP 失效之处，但不能单独替代 (6.3)，也不能固定 tau 的乘法常数。

若 half-characteristic 为 odd，则 theta constant 在原点恒为零；不能一面使用其 normalized Szegő inverse，一面假设该 inverse 无条件存在。对数微分先限于非零邻域，再按相应解析对象作延拓。

### 6.4 actual PDF 的印刷风险

视觉核对 v2 p.20 后发现，(5.60) 的 endpoint product 实际印为 $m,n=1,\ldots,M$，包含对角；(5.61) 实际出现两次 $(d\lambda)^{-2}$，并用 $j\ne k$。这些与前页 Hamiltonian 展开的排版／计数存在不一致，**不是本次文本提取的伪影**。本文不静默修正或复制一般 $r\ne0$ 的印刷式作为新的定理；本题仅引用无此额外因子的 $r=0$ specialization、spin independence 及明确的 higher-ramification remarks。

## 7. 主线已补齐的应用步骤：不能再压缩成 local inverse ⇒ global theta

本节保存委托者随后报告、且已在 [当前独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md>) 中实际读取到的桥梁。它们与上面的文献适用条件逐项相接，而不是由文献名称代替证明。

### 7.1 小交比的 global inverse

实线模型取

\[
H_{ij}(u,v)=\frac1{\pi(v-u)},\qquad
A_t=\begin{pmatrix}0&1&\sqrt2t\\1&0&0\\\sqrt2t&0&0\end{pmatrix},
\quad t=\pm1,
\]

\[
L_i=I+A_{t_i}\otimes H_{ii},\qquad
X_{ij}=A_{t_j}\otimes H_{ij}.
\]

$A_t$ Hermitian、$H_{ii}$ skew-adjoint 给 $\|L_i^{-1}\|\le1$。这仍然只是 local statement。设两区间长度为 $\ell_1,\ell_2$、间距为 $g_0>0$。因为 $\|A_t\|_{\rm HS}^2=6$，有直接的充分估计

\[
\|L_1^{-1}X_{12}L_2^{-1}X_{21}\|_1
\le \|X_{12}\|_2\|X_{21}\|_2
\le \frac{6\ell_1\ell_2}{\pi^2g_0^2}.
\tag{7.1}
\]

取一个 $x\to0$ 的缩短区间或分离区间 family，使右端趋零。于是 global Schur complement $I-K$ 中 cross product $K$ 的 operator norm 小于 $1$，Neumann series 给 full inverse，$D\to1$。再通过 actual singular-integral／Hardy graph correspondence 得到 global dual RHP 可解且参数依赖光滑。这里的逻辑是 **cross norm 小 + local inverses ⇒ global inverse**，不是 local inverse 单独推出 global inverse。

### 7.2 从 covering 定义 $r=0$ 与 spin，而非反猜 characteristic

光滑 covering 是

\[
\pi:\Sigma\to\mathbb{CP}^1,\qquad
w^3=\frac{(z-a)(z-c)}{(z-b)(z-d)}.
\]

四个 ramification points 记作 $p_a,p_b,p_c,p_d$。reference spin 为

\[
\boxed{
\kappa_0=\pi^*\mathcal O_{\mathbb{CP}^1}(-1)
\otimes\mathcal O_\Sigma(p_a+p_b+p_c+p_d).
}
\tag{7.2}
\]

Riemann–Hurwitz 立即给 $\kappa_0^2=K_\Sigma$；若四端点有限，$dz$ 在每个 ramification point 零阶为 $2$、在三个 infinity points 极阶为 $2$，与此 half-form divisor 一致。

$SPS$ 的三条 seam signs 为 $(-,+,-)$，乘积 $+1$。它们定义可延伸过 ramification points 的 flat $2$-torsion line bundle $\eta$，mixed spin 是

\[
\kappa=\kappa_0\otimes\eta.
\tag{7.3}
\]

这里没有在 spin half-form 之外加入额外 meromorphic prime-form powers，所以对应 Korotkin 的 $r_m^{(j)}=0$。这比仅核对 local exponent spectrum 更强。

$\eta$ 在 vanishing $a$-cycles 上 trivial，在相应桥循环上给非平凡 signs。因此在 degeneration-adapted marking 中，相对 spin 属于 $\varepsilon=0$、$\delta\ne0$ 的三个元素轨道。不同 canonical basis 的具体标签仍应按 cycle transport 转换，不能逐个照抄矩阵 signs。项目中 canonical transport 的独立记录见 [spin-structure transport 审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-spin-structure-transport.md>)。

### 7.3 先保留常数，再由退化极限固定

(5.4) 和 (6.3) 首先只给

\[
\frac{D_{-+}}{D_{++}}
=C\,\frac{\Theta[\kappa](0\mid\mathbf B)}
{\Theta[\kappa_0](0\mid\mathbf B)}.
\tag{7.4}
\]

same/mixed 的两 local taus 相同；同一 cover 上的 $F$ 相同，故都抵消。$x\to0$ 时，(7.1) 给两个 Fredholm determinants 都趋于 $1$。两个 spins 在 vanishing cycles 上都有 $\varepsilon=0$，theta 常数均以 $1$ 起始，故其比值也趋于 $1$。因此 **$C=1$**。这里没有把不同 monodromy sectors 的 JMU integration constants 先验设为相同。

### 7.4 Thomae 比值及全区间延拓

主线通过 genus-two hyperelliptic model

\[
v^2=w^6+2(1-2x)w^3+1
\]

和标准 Thomae 公式得到

\[
\boxed{
B(x):=\frac{\Theta[\kappa](0\mid\mathbf B)}
{\Theta[\kappa_0](0\mid\mathbf B)}
=\sqrt{\frac{1+2\cos\!\left(\frac43\arcsin\sqrt x\right)}3},
\qquad 0<x<1.
}
\tag{7.5}
\]

平方根以 $x\to0$ 的正值 $1$ 选支。其三个非零 $\delta$ sectors 由 deck $\mathbb Z_3$ 对称互换。具体 branch partitions 与 Vandermonde ratio 见 [独立推导 §9](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-rh-cft-independent.md#L504-L564>)；本审查没有重新查阅 Thomae 原始书籍。

因为 $0<\frac43\arcsin\sqrt x<2\pi/3$，根号内在 $0<x<1$ 严格正。映射到固定区间 Hilbert 空间后，separated-endpoint cross kernels 及其 Fredholm determinant 解析。先在小 $x$ 可逆邻域证明 (7.4)，再用解析恒等延拓到整个 $0<x<1$；不是让 $d\log D$ 跨越未经处理的零点。

结合主线给定的 $D_{++}=(1-x)^{-2/9}$，得到

\[
D_{-+}(x)=(1-x)^{-2/9}B(x).
\tag{7.6}
\]

这里的对象仍是明确定义的一个 relative Fredholm determinant。与 nonchiral amplitude、lattice word 或 Pfaffian 的对应要保留各自独立的证明，不从 (7.6) 擅自推广到未计算的 sectors。

## 8. actual evidence：PDF、页面与 CAS

### 8.1 文件及校验值

原始 PDF、选页渲染与编号检索文本均保存在本次独立证据目录；没有改写这些 PDF，也没有移动原证据。

| 原文件 | 页数 | SHA256 |
|---|---:|---|
| [CGL v1 PDF](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-1712.08546v1.pdf>) | 26 | `f9deab26988e1a7cf0fdd71559f178f49770141c6ad69f131f41bd9de9d64666` |
| [Korotkin v1 PDF](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-0106009v1.pdf>) | 29 | `336f960de946f6fc306775afbe13a1e3599bf214a3d0fbe8d124b809feb0508b` |
| [Korotkin v2 PDF](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-0106009v2.pdf>) | 28 | `9ce76f8fe62844abbbc6367b74b22920d8af8afabca62f505cc38ace5bcc3f55` |

### 8.2 真正渲染并查看过的页面

以下不仅运行了 renderer，而且实际调用图像读取工具逐页查看：

- CGL：[p.17](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p17.png>)、[p.18](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p18.png>)、[p.20](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p20.png>)、[p.21](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p21.png>)、[p.22](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p22.png>)、[p.23](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/cgl-p23.png>)。
- Korotkin v2：[p.13](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p13.png>)、[p.14](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p14.png>)、[p.15](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p15.png>)、[p.16](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p16.png>)、[p.17](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p17.png>)、[p.20](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p20.png>)、[p.21](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-p21.png>)。

Korotkin v1 用于选页文本及编号交叉定位，**本次没有把它列为逐页视觉核对版本**。完整提取仅作编号检索索引：[v1 索引文本](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v1-index-text.txt>)、[v2 索引文本](</Users/koishi/.dsh/research-results/rhp-tau-audit.DPFytA/korotkin-v2-index-text.txt>)。本审查不声称通读两篇全部内容，也不把仅渲染而未查看的页算作证据。

### 8.3 Sage 实际成功运行

成功的 exact calculation：[Sage 实际结果](</Users/koishi/.codex/mcp-results/sage_run-OCVARL/result.txt>)。

检查包括：

- $\det J_1=\det J_2=1$，两者 order $3$，同 characteristic polynomial $\lambda^3-1$；
- 每条割线两端的逆对乘积为 $I$；
- $\operatorname{Tr}\Theta^2=2/9$，Riemann–Hurwitz 给 $g=2$；
- 有理矩阵 model 中 (4.3) 的 graph block 与全 $H_-$ 上的 $-I$；
- 非平凡有理 $Q_i,V_{ij}$ 例中，CGL $8\times8$ block determinant 与 $\det(I-Q_1V_{12}Q_2V_{21})$ 精确同为 `12623300/12623809`。

所有 assertions 通过。这些有限矩阵 checks 支持符号、block placement 和归一化；**它们不是 trace-class、global RHP solvability 或 lattice asymptotics 的证明**。

### 8.4 失败／限制记录

1. 第一次 Sage 调用对 $\mathbb Q$ 上的矩阵调用 `multiplicative_order()`，内核报 `NotImplementedError: multiplicative order is only implemented for matrices over finite fields or ZZ`，随后检查未执行。失败原始结果保留于 [首次 Sage 输出](</Users/koishi/.codex/mcp-results/sage_run-QHJMW5/result.txt>)。最终把整数 signed-permutation matrices 定义在 $\mathbb Z$，其他 block matrices 仍在 $\mathbb Q$，重新实际运行成功；不引用失败调用作为通过证据。
2. 初始只按提取文字定位公式，不把该阶段声称为 visual verification；完成上述页面实际查看后才确认 theorem statements、编号及印刷风险。
3. generic pants intermediate-spectrum 条件在本题不满足，已明确放弃直接套 (3.10)，改用 general Theorem 3.4 与 (5.3) 的本题残数。
4. 本次子代理已达到 delegation depth 上限，不能再开新的独立 reviewer。因此这里的直接残数推导和 block 解析匹配没有在本子会话内另开 fresh agent 复核；与主线独立推导的后续对照不冒充预先未知结论的再次独立审查。
5. 没有手工新建 JSON；MCP 工具自行保存的机器响应不被当作人工制作的验证结果。PDF 渲染 background job 已收取，exit code 为 $0$；没有遗留相关后台作业。

## 9. 本次保存范围

本次授权仅新增这份文献条件审查。没有修改主文、其他 reviews、既有 spin-transport 报告或 README。上文引用的主线步骤按实际读取的当前文件保存其论证位置，并标明哪些属于本次文献核验、哪些依赖已另行完成的主线证明。
