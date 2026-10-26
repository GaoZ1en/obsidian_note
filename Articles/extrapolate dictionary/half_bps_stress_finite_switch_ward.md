# 有限 switching 的完整 curved-source Ward functional

## 1. 本文完成的系数与定义

本文固定 canonical Einstein–scalar/BF theory、边界锚定的 normal coordinates 与零源归一化 \(W=\log Z[j]/Z[0]\)。计算到 **两个 scalar insertion sources、一个 boundary metric source**，亦即 physical \(T\mathcal O_I\mathcal O_J\) 的 leading tree coefficient；unit-normalized stress 对应 \(N^{-1}\) 阶。取 \(\ell=1\)，canonical \(m^2=-4\)，unit scalar insertion 是 \(\mathcal U_a=\sqrt{2\pi^2}\,a^{-2}\Phi(a,X)\)。有限层源先用 smooth radial mollifiers，随后取 thin-layer limit。

新增的外部资料是 reference/anchor metric \(\bar g_{(0)}\) 与一个 **完整 bulk scalar profile** \(w(u,X)\)。物理 metric source 是 \(g_{(0)}\)。这两项资料给 finite switching 一个明确的 source functional。它们不把物理 metric derivative、reference derivative 与 causal TT projection 混为一个插入。

结果有三部分：

1. 下文 (F5) 给出完整的 \(h\,j^2\) functional，包含 TT、longitudinal、trace、BF endpoint、reference/anchor derivative 与 source subtraction。
2. (F10)–(F13) 给出带 switch force 的精确 boundary diffeomorphism/PBH identity。有限层 subtraction 的 PBH gradient anomaly 单独保留。
3. 对固定正径向层、Schwartz boundary metric/scalar sources，真实 Euclidean spacetime switching 与 radial cutoff 的 removal 满足 (F24) 的统一估计。随后可以使用既有 unswitched joint radial-boundary theorem。对应 source-free Lorentzian Wightman 的全部 null strata、完整 stress 与 causal TT 的识别另由 companion **half_bps_stress_full_ward_limit.md** 给出。

这里没有从一个三次顶点推断全阶 interacting generating functional、nonperturbative IIB 或 nonlinear source phase space。

## 2. 为什么必须保留 reference source

旧 anchored deformation 只切换 interaction difference，free scalar action 保留在 reference AdS 上。把 \(\chi\) 单独命名为 scalar spurion，仍不能使 physical metric derivative 满足通常的单一 metric Ward identity。

一个准确反例是 \(\chi\equiv0\)。此时 free scalar covariance 仍是非零的
\[
C_{ab}(q)=2\pi^2I_0(qa_<)K_0(qa_>),
\]
而该 scalar sector 对 physical metric 的 interaction derivative 等于零。普通 \(\langle T\mathcal U_a\mathcal U_b\rangle\) 的 divergence 要产生非零 scalar-source contact；\(\delta\chi=0\) 无法提供这一项。缺少的是固定 free action 与 coordinate anchors 所依赖的 reference geometry 的 derivative。

令 \(G^r\) 为拉回到固定 boundary-normal relational labels 的 physical bulk metric，\(\bar G\) 为同一 chart 中的 reference metric，\(\Phi\) 为 relational scalar。定义
\[
\begin{split}
S_w={}&S_{\mathrm{EH,GHY,ct}}[G]
+S_m[\bar G,\Phi]\\
&+\int du\,d^4X\,
w(u,X)\{\mathcal L_m[G^r,\Phi]-\mathcal L_m[\bar G,\Phi]\}\\
&+S_{\mathrm{BF}}[\bar G,\Phi]
+\int_{u=\epsilon}d^4X\,w_0(X)
\{\mathcal L_{\mathrm{BF}}[G^r,\Phi]
-\mathcal L_{\mathrm{BF}}[\bar G,\Phi]\}.
\end{split}
\tag{F1}
\]
这里 \(S_m\) 仅指 canonical bulk scalar action，BF term单独列出；\(S_{\mathrm{EH,GHY,ct}}\) 只包含 gravitational endpoint terms。在最后一行取 \(\epsilon\downarrow0\)、\(w_0=\lim_{u\downarrow0}w\)，并使用旧报告固定的 completed BF endpoint：
\[
S_{\mathrm{BF}}^E
=\frac12\int_{u=\epsilon}\sqrt\gamma
\left(2+\frac1{\log\epsilon}\right)\Phi^2.
\tag{F2}
\]
源作用量仍是 \(-\int da\,d^4X\,j(a,X)\mathcal U_a(X)\)。所有 volume densities 已包含在各 \(\mathcal L\) 中。不同 metrics 的 density 在共同 relational chart 中相减，因此 (F1) 固定本文的 anchored scalar functional。当前系数只取零 metric source处原 Gaussian inverse 的第一次 variation；没有假定任意非零 source 的全球 FG chart存在，也没有把可能增长的 FG representative 当作 uniformly small metric。

展开到一个 relative metric \(H\) 时，(F1) 恰好是既有 gauge-completion note 的 \(S_0[\Phi]+S_3[w;H^r,\Phi]\)，连同其 retained BF vertex。\(w=1\) 时 reference terms 消去并恢复原 action；\(w=0\) 时 scalar 只响应 reference geometry。完整 nonlinear interpolation 不是本文计算的对象。

同一展开也可写成一个 effective scalar metric
\[
G_{\mathrm{eff}}=\bar G+w(G^r-\bar G)+O(H^2).
\tag{F3}
\]
这是 **一个 metric variation 的 identity**。把 (F3) 当作任意高阶的原 action，会新增未计算的 vertices。

### 2.1 Switch 的 PBH variation

在 flat reference background，boundary diffeomorphism/PBH generator 为
\[
\zeta^u=-u\sigma,\qquad
\zeta^i=v^i+\frac{u^2}{2}\partial^i\sigma.
\]
两种 boundary metrics 一起作 \(\delta g_{(0)ij}=\delta\bar g_{(0)ij}
=\partial_iv_j+\partial_jv_i+2\sigma\eta_{ij}\)；bulk profile 是 scalar：
\[
\delta w=v^i\partial_iw-u\sigma\,\partial_uw
+\frac{u^2}{2}\partial_i\sigma\,\partial_iw.
\tag{F4}
\]
因此 \(w=\beta_B(u)\chi(X)\) 的 factorized family 不在一般 PBH 下封闭。应先对完整 \(w(u,X)\) 变分，再代入 factorized regulator。(F4) 中 \(-u\sigma\beta'_B\chi\) 和 \(u^2\beta_B\,\partial\sigma\cdot\partial\chi/2\) 都是实际 source variations。

固定 boundary anchors 的 bulk gauge transformation 与 (F4) 的外部 frame/source transformation 是两种不同操作。前者由既有 relational map \(\mathcal P\) 与 conserved source \(\mathcal P^\dagger(wT)\) 控制；后者产生本文的 reference/anchor Ward response。

## 3. 可直接求导的完整首阶 functional

令 \(\phi_j\) 是原 Gaussian scalar solution，固定源符号使其满足 \(E\phi_j=-J_j\)。其 Fourier form 是
\[
\phi_j(u,q)=\sqrt{2\pi^2}\,u^2
\int da\,I_0(q\min(u,a))K_0(q\max(u,a))\,j_a(q),
\quad V_j=\lim_{u\downarrow0}u^{-2}\phi_j.
\]
令 \(\mathcal E[h]_{ij}(u,X)\) 是 regular linearized AdS Dirichlet response 的 relative FG metric。其 TT part 为
\(H_p(u)h^{TT}_{ij}\)，\(H_p=p^2u^2K_2(pu)/2\)；boundary gauge/PBH part 为
\(\partial_iv_j+\partial_jv_i+2\sigma\eta_{ij}+u^2\partial_i\partial_j\sigma\)。
IR-growing PBH vector 依旧先截断并使用 anchored map；本文不把它默认为全球 null gauge vector。

定义
\[
\mathcal B_w[h;j]
=\frac12\int du\,d^4X\,u^{-3}w\,
T_{ij}[\phi_j]\,\mathcal E[h]^{ij}
-\frac12\int d^4X\,w_0V_j^2\,\operatorname{tr}h.
\]
则对 \(g_{(0)}=\eta+h,\bar g_{(0)}=\eta+\bar h\)，
\[
\boxed{
W_w[h,\bar h,j]
=\frac12jCj+\mathcal B_1[\bar h;j]
+\mathcal B_w[h-\bar h;j]+W_{\mathrm{ct},w}
+O(h^2,j^3,\text{higher perturbative orders}).
}
\tag{F5}
\]
这是从 (F1) 的 Gaussian variation 得到的系数，不是先指定 Ward tensor 再人为补齐。Euclidean \(\delta S_m=-\frac12\int u^{-3}T_{ij}H^{ij}\)，而 \(W=+\log Z\) 使用 \(e^{-S}\)，因此 bulk term 为正号。BF action 的 metric variation 为 \(+\frac12V_j^2\operatorname{tr}h\)，故 \(W\) 中为负号。

两条 canonical insertion lines 的 cross variation 为
\[
\delta C_{\mathrm{bulk}}
=\pi^2\int du\,u^{-3}w\,b_{ij}\mathcal E[h]^{ij},
\qquad
\delta C_{\mathrm{BF}}
=-2\pi^2w_0\,\operatorname{tr}h\,K_0(qa)K_0(rb).
\tag{F6}
\]
因此在 physical \(2\delta C/\delta h_{ij}\) 中，BF vertex 是
\(-4\pi^2w_0\eta_{ij}K_0(qa)K_0(rb)\)，与原 mixed Ward normalization 一致。它在 finite switching 中同样存在。

物理和 reference/anchor metric coefficients 分别是
\[
K^{\mathrm{phys}}_w=K[\mathcal B_w],\qquad
K^{\mathrm{anc}}_w=K[\mathcal B_1-\mathcal B_w].
\tag{F7}
\]
在未加有限 source redefinitions 的 prescription 下，两者之和精确等于 unswitched coefficient，连同下面的 counterterms。此式说明有限 switching 的 physical stress 与 diagonal source stress 的差别；它并不把 anchor derivative解释为另一个独立 CFT stress tensor。

对完整 profile 的 functional force 也已确定：
\[
\frac{\delta W_w}{\delta w(u,X)}
=\frac12u^{-3}T_{ij}[\phi_j]\,
\mathcal E[h-\bar h]^{ij}
\quad(u>0),
\]
\[
\frac{\delta W_w}{\delta w_0(X)}
=-\frac12V_j^2\operatorname{tr}(h-\bar h)
+\frac{\delta W_{\mathrm{ct},w}}{\delta w_0}.
\tag{F8}
\]
在 \(h=\bar h=0\) 时，minimal prescription 中两者均为零。对 metric 再求导时，它们给出实际 switch-force terms。(F8) 将 force 与 anchor derivatives 一起固定，不能只保留 \(\partial\chi\) 而遗漏 metric/source dependence。

## 4. Diffeomorphism 与 PBH identity

对连续径向 density source，保持原有限层 insertion law：
\[
\delta_v j=\partial_i(v^ij),\qquad
\delta_\sigma j
=\sigma(j-a\partial_a j)
+\frac{a^2}{2}\partial_i(j\partial_i\sigma).
\tag{F9}
\]
固定 delta-layer family 不在 (F9) 下封闭；它的变换包含 moving layers 或径向导数源。

令 \(t_{ij}=2\delta W/\delta g_{(0)ij}\)、
\(\bar t_{ij}=2\delta W/\delta\bar g_{(0)ij}\)、
\(U_a=\delta W/\delta j_a\)，
\(F=\delta W/\delta w\)、\(F_0=\delta W/\delta w_0\)。
这些是 coordinate densities；下式在 flat source background、本文计算的 order 适用。由 (F4)、(F9) 的完整 functional variation：
\[
\boxed{
\partial^i(t_{ij}+\bar t_{ij})
=\int_0^\infty du\,F\,\partial_jw
+F_0\partial_jw_0
-\int_0^\infty da\,j_a\partial_jU_a.
}
\tag{F10}
\]
\[
\boxed{\begin{split}
\operatorname{tr}(t+\bar t)
={}&\mathcal A_j
-\int da\,j_a(2+a\partial_a)U_a
-\frac12\partial_i\int da\,a^2j_a\partial_iU_a\\
&+\int du\,u(\partial_uw)F
+\frac12\partial_i\int du\,u^2F\partial_iw .
\end{split}}
\tag{F11}
\]
Boundary \(w_0\) 是 Weyl weight zero，故 trace identity 没有独立 \(F_0\,\delta_\sigma w_0\) 项。它的 metric dependence已经包含在 \(t,\bar t\) 中。

例如 (F11) 的 radial source term来自
\(\int U\,\sigma(j-a\partial_a j)
=\int\sigma\,j(2+a\partial_a)U\)；
PBH gradient term来自对 \(\partial_i\sigma\) 的一次分部积分。这两个 adjoints 固定了符号。

在 \(h=\bar h=0\) 时 \(F=F_0=0\)，所以完整 diagonal metric response 满足原有限层 Ward identity。physical response 单独的 force/anchor correction由 (F7)–(F8) 决定。(F10)–(F11) 是受源 Euclidean identity；其 delta contacts 不是 source-free Wightman conservation equation 中的额外项。

### 4.1 Physical metric derivative 的显式 source 与 force terms

可以不借 diagonal Ward identity，直接对 (F5) 的 physical \(h\) 作纯 diffeomorphism/PBH variation。以下先写 bare coefficient；记 \(U_a^{(0)}=\sqrt{2\pi^2}a^{-2}\phi_j(a)\)，而 bulk source满足
\(J_j=\sqrt{2\pi^2}\,u^3j_u\)。canonical stress conservation是
\[
\begin{split}
\partial_u(u^{-3}T_{ui})+u^{-3}\partial^jT_{ji}
&=-u^{-5}J_j\partial_i\phi_j,\\
u^{-3}T^i_i+\frac1{2u}\partial^i\partial^jT_{ij}
&=-\partial_u\mathcal Q
-u^{-4}J_j\partial_u\phi_j
-\frac1{2u^3}\partial_i(J_j\partial_i\phi_j),\\
\mathcal Q&=u^{-2}T_{uu}+\frac1{2u}\partial^iT_{ui}.
\end{split}
\tag{F11a}
\]
UV endpoints是 \(u^{-3}T_{ui}\to\partial_iV_j^2\)、\(\mathcal Q\to4V_j^2\)。retained BF vertex恰好消去它们。于是
\[
\boxed{\begin{split}
\partial^it^{\mathrm{phys,bare}}_{ij}
={}&-\int da\,w(a,X)j_a\partial_jU_a^{(0)}\\
&+\int du\,u^{-3}
\{(\partial_uw)T_{uj}+(\partial^iw)T_{ij}\}
-(\partial_jw_0)V_j^2 .
\end{split}}
\tag{F11b}
\]
\[
\boxed{\begin{split}
\operatorname{tr}t^{\mathrm{phys,bare}}
={}&-\int da\,w(a,X)j_a(2+a\partial_a)U_a^{(0)}
-\frac12\int da\,w(a,X)\,
\partial_i(a^2j_a\partial_iU_a^{(0)})\\
&+\int du\,(\partial_uw)\mathcal Q
+\int du\,u^{-1}(\partial^iw)\partial^jT_{ij}
+\frac12\int du\,u^{-1}(\partial^i\partial^jw)T_{ij}.
\end{split}}
\tag{F11c}
\]
若把 (F11c) 的第二项移成一个总 \(\partial_i\)，必须同时保留
\(+\frac12\int da\,a^2(\partial_iw)j_a\partial_iU_a^{(0)}\)。
这些式子包括任意 smooth radial profile、finite layer contacts及所有一、二阶 switch derivatives。

令 \(\mathcal C_j(X)=\int da\,db\,c_{ab}j_aj_b\)。加入下节 source subtraction时，
\[
\partial^it^{\mathrm{phys,ct}}_{ij}
=-\frac12\partial_j(w_0\mathcal C_j),\qquad
\operatorname{tr}t^{\mathrm{phys,ct}}=-2w_0\mathcal C_j .
\tag{F11d}
\]
将 (F11b)–(F11d) 相加就是本 prescription 的完整 physical Ward data；reference/anchor data等于 unswitched expressions减去它们。\(w=1\) 时得到原有限层 Ward identities及 (F13) anomaly；\(j=0\) 的 Lorentzian normal-ordered bilinear coefficient则成为 companion 的 \(\bar M,N,r_B\) force formulas。本文没有使用缺少 switch force的单一 physical-metric Ward identity。

### 4.2 BF/source subtraction 的全部有限层 anomaly

在一阶 metric expansion 中定义
\[
W_{\mathrm{ct},w}
=\frac12\int d^4X\,da\,db\,c_{ab}j_aj_b
\left[
\frac{1-w_0}{\sqrt{\bar g_{(0)}}}
+\frac{w_0}{\sqrt{g_{(0)}}}
\right],
\quad
c_{ab}=2\pi^2\log\frac{\max(a,b)}{\ell}.
\tag{F12}
\]
方括号在本阶等于 \(1/\sqrt{g_{\mathrm{eff},(0)}}\)。
physical counterterm coefficient是 \(-w_0c_{ab}\eta_{ij}\)，reference coefficient是
\(-(1-w_0)c_{ab}\eta_{ij}\)。它们的和等于原 source subtraction。

在 flat background，(F12) 对 (F9) 的完整 PBH variation给出
\[
\boxed{
\mathcal A_j
=\pi^2\left(\int da\,j_a\right)^2
+\frac12\partial_i\int da\,db\,c_{ab}a^2j_a\partial_i j_b .
}
\tag{F13}
\]
第二项是 finite-radius gradient-source contact，不能在 finite layers 时省略。对 \(j_a,j_b\) 作两次 variation，
\[
\mathcal A_{ab}
=2\pi^2\delta_w^x\delta_w^y
+\frac{c_{ab}}2\partial_w^i
\left[
a^2\delta_w^x\partial_w^i\delta_w^y
+b^2\delta_w^y\partial_w^i\delta_w^x
\right].
\tag{F14}
\]
Fourier transform 后最后一项恰是
\(c_{ab}(a^2p\cdot k_2+b^2p\cdot k_1)/2\)，复现原 mixed Ward (5) 的有限层 correction。

证明中，\(a\partial_a+b\partial_b\) 作用于 \(c_{ab}\) 给 \(2\pi^2\)，其余 density-source Weyl weights 与 metric determinant 抵消。PBH gradient 对 (F12) 的 variation 是
\(-\frac12\int c_{ab}a^2j_a\partial_i j_b\,\partial_i\sigma\)，再分部积分得到 (F13) 第二项。两个步骤都可以直接从 source functional 重建。

当 \(a,b\downarrow0\) 时，\(a^2\log\max(a,b)\)、\(b^2\log\max(a,b)\) 同时趋零，剩下 universal \(+2\pi^2\) trace contact。没有把这个 time-ordered/source anomaly移植到 Lorentzian positive-energy Wightman cut。

## 5. 有限 local counterterms 的分类与固定方案

Ward identity 本身不唯一确定 source contacts。本文的 **minimal prescription** 是 (F12)，不另加有限 derivative source terms；允许更换 \(\ell\) 仅产生预先声明的 constant \(j^2\) contact。

为了使这项选择可核验，下面给出局部自由度的准确范围。对 boundary scalar source \(J=j/\sqrt g\)、dimensionless \(w_0\)，在一个 effective metric、parity-even、quadratic in \(J\)、至多两项 boundary derivatives 的限制下，一个 modulo integration by parts 的生成集是
\[
\begin{split}
W_{\mathrm{fin}}=\frac12\int\sqrt g\{&
f_0(w_0)J^2\\
&+\ell^2[
f_1(w_0)RJ^2
+f_2(w_0)(\nabla w_0)^2J^2
+f_3(w_0)(\Box w_0)J^2
+f_4(w_0)(\nabla J)^2]\}.
\tag{F15}
\end{split}
\]
没有 derivative-order bound 时，允许的有限 local terms 为无限族。有限 radial layers 还允许 \(a,b\) 的 coefficient functions；它们也必须由 scheme额外指定。

若 physical/reference metrics 独立，令
\(S^i{}_j=\bar g^{ik}g_{kj}-\delta^i{}_j\)。
在一个 relative metric 的 order，新增 terms 都能由
\(\int\sqrt{\bar g}\,S^{ij}B_{ij}\) 表示；先把作用于 \(S\) 的 derivatives 分部积分。至多二阶 derivatives 时，\(B_{ij}\) 可由下列 local tensors 及其任意 \(w_0\)-dependent coefficients 生成：
\[
\begin{gathered}
\bar g_{ij}J^2,\quad
\bar R_{ij}J^2,\quad\bar g_{ij}\bar RJ^2,\quad
\nabla_iJ\nabla_jJ,\quad\bar g_{ij}(\nabla J)^2,\\
J\nabla_i\nabla_jJ,\quad\bar g_{ij}J\Box J,\quad
J\nabla_{(i}J\nabla_{j)}w_0,\quad
\bar g_{ij}J\nabla J\cdot\nabla w_0,\\
J^2\nabla_i\nabla_jw_0,\quad
\bar g_{ij}J^2\Box w_0,\quad
J^2\nabla_iw_0\nabla_jw_0,\quad
\bar g_{ij}J^2(\nabla w_0)^2 .
\end{gathered}
\tag{F16}
\]
这是 spanning set，未声明每项在所有 IBP relations 下独立。例如
\(f(w_0)\operatorname{tr}S\,J^2\) 在 flat equal-metric covariance 中完全不可见，却能给 physical 和 anchor trace 加上相反 local contacts。即使要求 \(f(0)=f(1)=0\)，有限 \(w_0\) 时仍有这一自由度。

若要求 finite-switch flat covariance 对所有 \(w_0\) 都等于原 \(C_{ab}\)，则改变该 covariance 的 \(f_0(w_0)\)、gradient-\(w_0\) terms 等已被排除；原 logarithmic subtraction也固定了额外 \(p^2\) contact。本文进一步把 (F15)–(F16) 的未固定有限 coefficients 取零。这是一项明确 source prescription，因而 finite-switch full response可复现。

在 boundary Weyl variation \(\delta J=-2\sigma J\)、\(\delta w_0=0\) 下，\(f_0J^2\) 是 Weyl invariant。其余四类的 anomaly shifts 为
\[
\begin{split}
\delta\mathcal A_{\mathrm{fin}}
=\frac{\ell^2}{2}\{&
-2f_1RJ^2-6\Box(f_1J^2)
-2f_2J^2(\nabla w_0)^2\\
&-2f_3J^2\Box w_0
-2\nabla_i(f_3J^2\nabla^iw_0)\\
&-2f_4(\nabla J)^2
+4\nabla_i(f_4J\nabla^iJ)\}.
\tag{F17}
\end{split}
\]
这些是 derivative/trivial local anomalies，不能改变 (F13) 的 universal nonderivative \(\pi^2J^2\) coefficient。

## 6. 真正的 Euclidean IR removal

本节证明 (F5) 的实际 integrals 收敛。限定 radial sources 的 support 为
\(0<a_{\min}\le a\le a_{\max}<\infty\)，boundary \(j_a(X),h(X),\bar h(X)\) 取 Schwartz；有限多个 positive thin layers 也适用。常数可以依赖该 compact radial interval。

### 6.1 一个准确的 position-space kernel

采用 Fourier inverse \(d^4q/(2\pi)^4\)，
\[
\mathcal F^{-1}[K_0(qu)](X)
=\frac1{2\pi^2(u^2+|X|^2)^2}.
\tag{F18}
\]
由二维 Bessel addition theorem，
\[
I_0(qa_<)K_0(qa_>)
=\int_0^{2\pi}\frac{d\theta}{2\pi}
K_0\!\left(q|u-ae^{i\theta}|\right).
\]
因此其四维 position kernel 精确为
\[
\boxed{
\mathcal F^{-1}[I_0(qa_<)K_0(qa_>)](X)
=\frac1{2\pi^2}
\frac{A}{(A^2-4u^2a^2)^{3/2}},
\quad A=|X|^2+u^2+a^2 .
}
\tag{F19}
\]
在 \(u=a,X=0\) 的分布源奇点仍按原 Green function 解释；对 Schwartz \(j\) 的卷积良定义。式 (F19) 也可由
\(\langle(A-B\cos\theta)^{-2}\rangle_\theta
=A(A^2-B^2)^{-3/2}\) 直接验证。

当 \(u>2a_{\max}\) 时，\(A^2-4u^2a^2\ge cA^2\)。对 (F19) 求导并与 Schwartz source 卷积，得到
\[
|\phi_j(u,X)|\le Cp(j)\,u^{-2}(1+|X|/u)^{-4},
\]
\[
|\partial_u\phi_j|+|\partial_X\phi_j|
\le Cp(j)\,u^{-3}(1+|X|/u)^{-4}.
\tag{F20}
\]
这些是固定 power-law bounds，并未误称为任意阶 spatial Schwartz decay。对 Schwartz source 的 convolution 通过 \(|Y|\le|X|/2\) 与补集分开即可保留这些界。由 canonical scalar stress 的定义，
\[
|T_{ij}[\phi_j](u,X)|
\le Cp(j)^2\,u^{-6}(1+|X|/u)^{-8}.
\tag{F21}
\]

对 boundary metric extension，\(0<H_p(u)\le1\)，Euclidean TT projector 是 bounded angular multiplier；PBH/longitudinal coefficients 的必要 inverse powers 在四维 \(p=0\) 局部可积。因此
\[
\|\mathcal E[h](u,\cdot)\|_\infty
\le C\,p(h)(1+u^2).
\tag{F22}
\]
这里允许 normal-FG representative 的 \(u^2\) gauge tail；不要求其每个 component 在 IR 衰减。

在 \(u<a_{\min}/2\)，\(\phi_j=u^2V_j+O(u^4)\)。stress 中
\((\partial_u\phi)^2-4\phi^2/u^2\) 的 \(u^2\) 项精确抵消，所以 \(T_{ij}=O(u^4)\)，且其空间 tail 可由 \((1+|X|)^{-8}\) 控制。中间 compact radial interval 的 source jumps只使 first radial derivative分段光滑；smooth-mollifier limit仍由共同有界函数控制。BF term 是 \(\int w_0V_j^2\operatorname{tr}h\)，其中 \(V_j=O((1+|X|)^{-4})\)。

### 6.2 统一估计与拓扑

令 \(\beta_B=1\) 于 \(0<u<B\)、在 \(u>2B\) 消失，且 \(|\beta_B|\le C\)；令 \(\chi_R(X)=\chi(X/R)\)，\(\chi\in C_c^\infty\)、在原点邻域恒一。对 \(u>2a_{\max}\)，(F21)–(F22) 给
\[
\int d^4X\,u^{-3}|T_{ij}\mathcal E[h]^{ij}|
\le Cp(j)^2p(h)\,u^{-3}.
\tag{F23}
\]
所以 radial tail 为 \(O(B^{-2})\)，常数对全部 \(\chi_R\) 一致。

对 \(|X|>cR\)，空间 tail改善为
\(\int_{|X|>cR}|T_{ij}|\le Cu^{-2}\min(1,(u/R)^4)\)。
因此
\[
\int_1^\infty du\,u^{-3}\min(1,(u/R)^4)
=O(R^{-2}).
\]
UV、compact-radial 部分与 BF endpoint 的 error至少为 \(O(R^{-4})\)；source-counterterm error因 \(j,h\) Schwartz 而 rapid。于是
\[
\boxed{
|\mathcal B_{\beta_B\chi_R}[h;j]
-\mathcal B_1[h;j]|
\le C\,p(h)p(j)^2(B^{-2}+R^{-2}).
}
\tag{F24}
\]
polarization 给任意两个独立 scalar tests。误差是共同 finite product seminorm bound，因此由 nuclear Schwartz kernel theorem 与 Montel 性，它给一般 joint boundary tests 上的 **strong tempered convergence**，并允许 \(B,R\to\infty\) 的任意共同路径。source derivatives/Fourier momentum insertions通过更高 finite seminorm作相同估计。

这是实际 source integral 的证明，不是从形式 Ward identity 猜测 IR 极限。F5 的 physical derivative趋于完整 unswitched response，reference/anchor derivative趋零；其 switch-force distribution也由同一连续 functional variation趋于对应极限。

本节常数允许依赖 \(a_{\min}\)。因此这里证明的 Euclidean limit顺序是：固定有限 insertion radii，去除 \(B,R\)，随后应用既有 mixed Ward theorem 的 independent \(a,b\downarrow0\) 与 prescribed source subtraction。没有据此宣称所有 Euclidean \(a,b,B,R\) 的任意共同路径。source-free Lorentzian Wightman companion 的质量-fiber proof则直接对 bounded scalar radii一致，属于另一项已单独证明的结论。

## 7. 与 physical full stress、causal TT、Wightman ordering 的关系

(F5) 对 physical metric source 的 derivative经 Einstein Green identity等于 renormalized Brown–York response，加 retained BF metric vertex和 (F12) source contact。有限 radial wall 上这是同一 action的二次 variation；(F23)–(F24) 使 Euclidean IR endpoint在当前系数消失。Lorentzian sourced response的 fixed-support endpoint pairing由 companion sourced-endpoint theorem单独处理。

在 source-free Lorentzian flat background，metric normalizable coefficient写作 \(h_{ij}=u^4h_{4ij}+\cdots\)，\(\phi=u^2v+\cdots\)。physical full stress是
\[
T^\chi_{ij}
=\frac2{\kappa^2}(h^\chi_{4ij}-\eta_{ij}\operatorname{tr}h^\chi_4)
-\chi\,\eta_{ij}:v^2: .
\tag{F25}
\]
其 causal TT projection \(\Pi_{\mathrm{ret}}T^\chi\) 是前轮 source bridge 明确规定的 causal-history observable；这里的 full \(T^\chi\) 还包含真实 non-TT force响应。其 difference由
\[
\partial^jT^\chi_{ji}=(\partial^j\chi)\bar M_{ji},\qquad
\operatorname{tr}T^\chi
=(\partial^i\chi)\partial^jN_{ij}
+\frac12(\partial^i\partial^j\chi)N_{ij}
\]
以及同一 retarded inverse唯一恢复。**half_bps_stress_full_ward_limit.md** 从实际 radial cutoff证明 \(M,N\) 的全 null extension，保留 \(I_3\) 的 \(+2\delta(x)\delta(y)\) corner，并证明 retarded non-TT lift在 genuine \(\chi_R\) 下趋零。

该 Wightman theorem使用 stress 位于最左的 ordering；scalar-induced outer stress中两条 free scalar momenta均未来，其他 insertion terms含 free TT stress。改变 ordering需按对应 Wightman analytic/permutation rule处理，不把 Euclidean time-ordered derivative contacts直接附加到 positive-energy distribution。

当前三点 sector 的 scalar flavor dependence是 orthonormal \(20'\) basis 的 \(\delta_{IJ}\)。不同 polarization projection只是在该张量上收缩；本文未将此结论代替 generic four-scalar tensor calculation。

## 8. 证据强度与未计算部分

本轮实际检查位于 [verification directory](checks/dictionary_extensions/README.md)：**ward_source_checks.py**、**ward_source_results.json** 与 **ward_moment_checks.py**、**ward_moment_results.json**。source script实际运行 **23 个精确零 residuals、10 项 50-digit numerical quadratures**，独立检查 (F19)、PBH adjoints、(F11a)–(F11d) 的 sourced primitives、finite-layer anomaly、counterterm Weyl variations和 radial/Gaussian integrals；moment script的 **50 个精确 residuals** 检查 Brown–York/BF、finite-\(\beta\) primitives、Hankel corner、future fibers和 retarded logarithmic primitives。合计 73 项精确检查与 10 项数值积分；对应完整运行日志分别是 ward_source_checks.log、ward_moment_checks.log。

(F5)、(F10)–(F17) 是当前 order 的 action/source derivation；(F24) 是给定 source class 上的 analytic IR theorem。完整 all-orders source functional、arbitrary finite curved backgrounds 的 global Einstein solution、nonlinear quantum BRST/CPS domain、loops与全部 IIB string corrections不由这些首阶恒等式推出。

## Executable verification links

- [ward_source_checks.py](checks/dictionary_extensions/ward_source_checks.py) and [actual output](checks/dictionary_extensions/ward_source_results.json).
- [ward_moment_checks.py](checks/dictionary_extensions/ward_moment_checks.py) and [actual output](checks/dictionary_extensions/ward_moment_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
