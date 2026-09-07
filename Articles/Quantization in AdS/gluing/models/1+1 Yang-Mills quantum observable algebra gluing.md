# 1+1 Yang–Mills Quantum Observable Algebra Gluing

本文在 [classical model](<1+1 Yang-Mills classical observable algebra gluing.md>) 的同一 continuum action、proper-gauge policy 和 endpoint framing 下，构造独立的 regional/global holonomy–flux quantum algebras。主要结论为
$$
\boxed{
\mathscr D_{G^2,\hbar}^{G_\Gamma}/\mathscr J_\Gamma
\xrightarrow{\;\cong\;}\mathscr D_{G,\hbar}.
}
$$
这里是有显式 kernel、section、involution 和 classical specialization 的算符核定理。固定实际 $\hbar>0$ 后，另有 Hamiltonian、prescribed-history evolution 和指定 dynamical algebra 的 exact comparison。

## 1. Action、边界与可量子化的经典类

取非平凡、紧、连通、单连通 Lie group $G$，$\mathfrak g$ 带正定 Ad-invariant pairing。空间为两个按同一物理方向定向的区间 $I_1,I_2$，长度分别为 $\ell_1,\ell_2>0$；原模型是 $\ell_1=\ell_2=L$。Pure YM 无 matter、无 interface charge/action，真实外端保留 frames 且 $A_t=0$。

一阶 action 和约定为
$$
S_I=\int dt\,dx\left[
\langle E,\dot A_x-D_xA_t\rangle-\frac{e^2}{2}\langle E,E\rangle
\right],\qquad
\Omega=\delta\Theta,\qquad \iota_{X_F}\Omega=-dF.
$$
先只 quotient 在区域两端为恒等的 proper gauge。由 continuum Gauss law $D_xE=0$，取 $u'=-A_xu$、$u(a)=1$，得到
$$
U=u(b),\qquad p=-E(a),\qquad
\Theta_I=\langle p,U^{-1}\delta U\rangle,\qquad
H_I=\frac{e^2\ell}{2}\langle p,p\rangle.
$$
这些是 classical note Y1–Y2 的实际 quotient，既没有以离散 link 替代 action，也没有增加 cut oscillator。Endpoint moments 和 cut release 是
$$
J_a=-p,\qquad J_b=\operatorname{Ad}_Up,\qquad
\mu_\Gamma=\operatorname{Ad}_{U_1}p_1-p_2.
$$
后者来自共同 $q=A_t|_\Gamma$ 的 action variation。约化后的 full smooth classical algebra 是 $C^\infty(T^*G)$。

本次选择其中的 Poisson $*$-subalgebra
$$
\mathscr R(G)=\operatorname{span}_{\mathbb C}
\{D_\rho(U)_{ab}:\rho\text{ 为有限维 unitary representation}\},
\qquad
\mathscr P_G=\mathscr R(G)\otimes S(\mathfrak g_{\mathbb C}).
$$
所有线性组合与动量次数均有限。Matrix coefficients 的乘积来自 tensor representations，共轭来自 dual representations，因此 $\mathscr R(G)$ 是 unital $*$-algebra。它在左右 invariant derivatives 下闭合。结合
$$
\{p_\xi,p_\eta\}=-p_{[\xi,\eta]},\qquad
\{f,p_\xi\}=L_\xi f
$$
证明 $\mathscr P_G$ Poisson 闭合。

它包含全部有限表示的 framed Wilson matrices、任意有限 electric insertions 及总能量。一般的 smooth momentum functions 和有限时间演化后的 observables 不因此属于这个 polynomial core。本文的 quantization/sewing 交换定理针对 $\mathscr P_G$；不将它认作整个 $C^\infty(T^*G)$。

## 2. 独立的 regional/global quantum algebra

定义导数，固定左右名称：
$$
L_\xi f(U)=\left.\frac d{ds}f(Ue^{s\xi})\right|_0,\qquad
R_\xi f(U)=\left.\frac d{ds}f(e^{s\xi}U)\right|_0.
$$
于是
$$
[L_\xi,L_\eta]=L_{[\xi,\eta]},\quad
[R_\xi,R_\eta]=-R_{[\xi,\eta]},\quad [L_\xi,R_\eta]=0.
$$

对每个区间独立定义 $\mathscr D_{G,\hbar}$：它是 $\mathbb C[\hbar]$ 上由 $M_f$、$f\in\mathscr R(G)$ 和线性的 $\widehat p_\xi$ 生成的 algebra，满足
$$
M_fM_g=M_{fg},\qquad
[M_f,\widehat p_\xi]=i\hbar M_{L_\xi f},\qquad
[\widehat p_\xi,\widehat p_\eta]=-i\hbar\widehat p_{[\xi,\eta]}.
$$
Involution 为
$$
M_f^*=M_{\bar f},\qquad \widehat p_\xi^*=\widehat p_\xi
\quad(\xi\in\mathfrak g),\qquad \hbar^*=\hbar.
$$
这是 representative-coefficient differential operators 的 Rees algebra；实际 realization 是 $\widehat p_\xi=-i\hbar L_\xi$。Hamiltonian 作为额外的长度/coupling 数据给定为
$$
\widehat H_\ell=\frac{e^2\ell}{2}\sum_{j=1}^{\dim G}\widehat p_{T_j}^{\,2},
$$
其中 $T_j$ 为 pairing 的正交归一基。这里固定此 Casimir ordering，不添标量 quantum energy shift。

从完整未切分区间的 action 独立作同一 Gauss quotient，再用以上 generators/relations 和长度 $\ell_1+\ell_2$ 定义 $\mathscr D_{M,\hbar}$ 与 $\widehat H_M$。它们不是下面 quotient 的像定义。区域 package 还保留两个 endpoint actions、moments 和 prescribed-history Hamiltonian；裸 algebra 不记录长度或何处是 cut。

### 定理 QY1：PBW、闭合与忠实的 classical specialization

对固定有序基 $T_1,\ldots,T_d$，每个元素唯一写为
$$
D=\sum_\alpha M_{f_\alpha(\hbar)}\widehat p_1^{\alpha_1}\cdots
\widehat p_d^{\alpha_d},\qquad f_\alpha(\hbar)\in\mathscr R(G)[\hbar],
$$
其中只有有限项。因此
$$
\boxed{\mathscr D_{G,\hbar}/\hbar\mathscr D_{G,\hbar}
\cong\mathscr P_G.}
$$
商的 involution 为复共轭，$[D,E]/(i\hbar)$ 的零阶 symbol 是上述 Poisson bracket。

**证明。** Commutation relations 把每个 word 排为此形式，重排仍只产生 representative coefficients。对 uniqueness，把 $\widehat p$ 实现为 $-i\hbar L$；最高 differential order 的 symbols 是 cotangent fibers 上独立的 monomials，因 $L_{T_j}$ 是全局 frame，最高阶 coefficients 必须为零。逐阶归纳，且 $\mathbb C[\hbar]$ 无 torsion，得唯一性。闭合与关联性来自 differential-operator composition；Haar divergence 为零给所列 $*$，并与 relations 相容。

Representative functions 足以检测这些 operators：紧 Lie group 有 faithful finite-dimensional representation，matrix coefficients 的实虚部提供每点的局部坐标；这些函数的有限 polynomials 实现任意有限 jet。因此在全部 $\mathscr R(G)$ 上为零的有限阶 differential operator 本身为零。这里没有用 density 代替 jet argument。

PBW basis 使 $\hbar=0$ 的内禀商保留全部 $p$-monomials；首阶 commutators 在 generators 上给 Poisson relations，再由 Leibniz rule 扩张。∎

此处的 $\hbar=0$ 是 Rees algebra 自己的 quotient，不能先在 ambient $\mathscr D(G)[\hbar]$ 中令 $\hbar=0$；后一操作把 $-i\hbar L$ 一起消掉。需要 formal series 时可对这个 PBW module 作 $\hbar$-adic completion；实际非零 $\hbar$ 的 specialization 在未完成的 Rees algebra 上进行。PBW 与 compact-group matrix-coefficient 的标准输入可参见 [Etingof, §§11、35–36](https://math.mit.edu/~etingof/lnlg.pdf)；本模型的 quotient 将在下文直接计算。

## 3. Cut action、quantum moment 与联合不变算符

区域 product 是
$$
\mathscr D_{12,\hbar}
=\mathscr D_{G,\hbar}\otimes_{\mathbb C[\hbar]}\mathscr D_{G,\hbar}
=\mathscr D_{G^2,\hbar}.
$$
这里确有 algebraic tensor identity，因为 compact product group 的 finite-dimensional irreducibles 是两个因子的 tensor products，故 $\mathscr R(G^2)=\mathscr R(G)\otimes\mathscr R(G)$；这不是 classical full-smooth algebra 的 tensor assertion。

Cut action 为
$$
k:(U_1,U_2)\longmapsto(kU_1,U_2k^{-1}).
$$
Endpoint quantum moments 和 cut moment 为
$$
\widehat J_a(\xi)=-\widehat p_\xi=i\hbar L_\xi,\qquad
\widehat J_b(\xi)=-i\hbar R_\xi,\qquad
\boxed{\widehat\mu_\Gamma(\xi)=-i\hbar(R_{1,\xi}-L_{2,\xi}).}
$$
其 principal symbols 正是第 1 节的 classical moments，并有
$$
[\widehat\mu_\Gamma(\xi),\widehat\mu_\Gamma(\eta)]
=i\hbar\widehat\mu_\Gamma([\xi,\eta]).
$$
没有额外 central term。

用此群作用的 conjugation 定义
$$
\mathscr D_{12,\hbar}^{G_\Gamma}.
$$
由于 $G$ 连通，且 Rees algebra 无 $\hbar$ torsion，这等价于与全部 $\widehat\mu_\Gamma(\xi)$ 对易。先取此 joint invariant algebra，再实施约束。

## 4. Kernel、section 与 exact quantum reduction

取适配坐标
$$
a=U_2,\qquad U=U_2U_1,\qquad
U_1=a^{-1}U,\quad U_2=a.
$$
这是全局 diffeomorphism；group multiplication/inversion 保持 representative functions，其 cotangent map 和导数变换均保持上述有限 PBW 类。Cut action 变为
$$
(a,U)\longmapsto(ak^{-1},U).
$$
在该坐标中定义 invariant vertical derivatives
$$
\widehat r_\xi=-i\hbar R^a_\xi,\qquad
[\widehat r_\xi,\widehat r_\eta]
=i\hbar\widehat r_{[\xi,\eta]}.
$$
它们与所有 $U$ operators 对易。记这个 positive-sign enveloping algebra 为 $\mathcal U_\hbar^+(\mathfrak g)$。

### 定理 QY2：联合不变 algebra 的完整 normal form

$$
\boxed{
\mathscr D_{12,\hbar}^{G_\Gamma}
\cong\mathcal U_\hbar^+(\mathfrak g)
\otimes_{\mathbb C[\hbar]}\mathscr D_{G,\hbar},
\qquad
D=\sum_\alpha\widehat r^\alpha D_\alpha(U).
}
$$

**证明。** 在 $(a,U)$ 上用 $R^a$ 与 $L^U$ 组成的全局 frame 作唯一的 PBW 展开。它们都与 cut right translations 对易，因此 invariant $D$ 的每个 coefficient 必须 invariant。群在 $a$ 上 transitive，使 coefficients 与 $a$ 无关；其余 coefficients 正好属于 $\mathscr R(G_U)[\hbar]$。反过来此形式的每个算符均 invariant。Uniqueness 仍由最高 symbols 逐阶给出。∎

定义 augmentation 与显式 section：
$$
\boxed{
Q_\hbar(D)=D_0(U),\qquad
S_\hbar(D_U)=1\otimes D_U,\qquad Q_\hbar S_\hbar=1.
}
$$
$\epsilon(\widehat r_\xi)=0$、$\epsilon(1)=1$ 给 $\mathcal U_\hbar^+\to\mathbb C[\hbar]$ 的 $*$-homomorphism，因此 $Q_\hbar=\epsilon\otimes1$ 是 surjective $*$-homomorphism。其完整 kernel 为
$$
\boxed{
\mathscr J_\Gamma
=\left\{\sum_{|\alpha|>0}\widehat r^\alpha D_\alpha(U)\right\}
=\ker\epsilon\otimes\mathscr D_{G,\hbar}.
}
$$
这给主定理
$$
\boxed{
\mathscr D_{12,\hbar}^{G_\Gamma}/\mathscr J_\Gamma
\xrightarrow[\ [D]\mapsto D_0\ ]{\cong}
\mathscr D_{M,\hbar}.
}
$$
Surjectivity 是每个 $D_U$ 的实际 lift；injectivity 是上述唯一 normal form。没有 Hilbert dimension 或 dense-image 论证。

它也等于熟悉的 quantum moment reduction。令左理想
$$
\mathscr L_\Gamma
=\sum_j\mathscr D_{12,\hbar}\widehat\mu_\Gamma(T_j).
$$
在适配坐标中 $\widehat\mu_\Gamma(\xi)=i\hbar L^a_\xi$，而
$$
\widehat r_\xi
=-\sum_jM_{\langle T_j,\operatorname{Ad}_{a^{-1}}\xi\rangle}
\widehat\mu_\Gamma(T_j).
$$
这里 coefficients 放左，不需除以 $\hbar$。所以每个正 vertical degree 项属于 $\mathscr L_\Gamma$。反向，$\mathscr L_\Gamma$ 消去所有与 $a$ 无关的 wavefunctions；由 $U$-operator representation 的忠实性，其 invariant 元素的 $D_0$ 必须为零。于是
$$
\boxed{\mathscr J_\Gamma
=\mathscr D_{12,\hbar}^{G_\Gamma}\cap\mathscr L_\Gamma
=\operatorname{Ann}_{\mathrm{inv}}.}
$$
$\mathscr L_\Gamma$ 本身一般不是 two-sided $*$-ideal；$\mathscr J_\Gamma$ 是 joint invariant algebra 内的 two-sided $*$-ideal。这个区别是 reduction 所必需的。

## 5. Quantization 与 classical sewing 交换

适配坐标的 cotangent variables 为
$$
p=p_1,\qquad
\nu=\operatorname{Ad}_{U_2}p_2-\operatorname{Ad}_{U}p_1
=-\operatorname{Ad}_{a}\mu_\Gamma.
$$
直接代入 potential：
$$
\Theta_1+\Theta_2
=\langle p,U^{-1}\delta U\rangle
+\langle\nu,\delta a\,a^{-1}\rangle.
$$
所以 $\nu_\xi$ 是 $\widehat r_\xi$ 的 symbol，$\nu$ 在 cut action 下 invariant，约束正好是 $\nu=0$。特别地
$$
\mathscr P_{G^2}^{G_\Gamma}
\cong S(\mathfrak g_{\mathbb C})_\nu\otimes\mathscr P_G,
\qquad Q_{\mathrm{cl}}F=F|_{\nu=0}.
$$
其 kernel 是正 $\nu$ degree 项，section 是不依赖 $\nu$ 的同一个 polynomial。由此得到
$$
\boxed{
\frac{\mathscr P_{G^2}^{G_\Gamma}}
{I(\mu_\Gamma^{-1}(0))\cap\mathscr P_{G^2}^{G_\Gamma}}
\cong\mathscr P_G.
}
$$
这是 classical full-smooth sewing 的一个双向封闭的 polynomial subtheorem。

把第 4 节的 PBW coefficients 模 $\hbar$，$\widehat r^\alpha D_\alpha$ 变为 $\nu^\alpha\sigma_\hbar(D_\alpha)$，因此
$$
\boxed{
\sigma_\hbar Q_\hbar=Q_{\mathrm{cl}}\sigma_\hbar,\qquad
\sigma_\hbar S_\hbar=S_{\mathrm{cl}}\sigma_\hbar.
}
$$
且
$$
\boxed{
(\mathscr D_{12,\hbar}^{G_\Gamma}/\mathscr J_\Gamma)
\big/\hbar(\mathscr D_{12,\hbar}^{G_\Gamma}/\mathscr J_\Gamma)
\cong \mathscr P_G.
}
$$
PBW split quotient 在所有参数上显式自由，故此处不用另假设 scalar image-generated algebra 的 saturation 条件。这证明先 quantize 每个 based-reduced interval 再 cut-reduce，与先 classical cut-sew 再按同一 Rees prescription quantize，给同一个 algebra；其 classical specialization 也交换。它没有比较 continuum proper gauge 的“先量子化再约化”。

## 6. Haar realization、定义域与 Wilson generators

以下固定实际 $\hbar>0$，先定义
$$
\mathcal H_I=L^2(G,dU),\qquad
\mathcal D_I=\mathscr R(G),\qquad \int_GdU=1.
$$
$\mathcal D_I$ 是 Peter–Weyl finite span，稠密且被每个 core operator 及其 formal adjoint 保持。可同时在 $C^\infty(G)$ 上计算；这里的 $*$ 指这些共同 domain 上的 Hilbert formal adjoint，不声称每个 symmetric polynomial word 都 essentially self-adjoint。

区域 product 使用 $\mathcal D_{12}=\mathscr R(G^2)$。定义
$$
(\mathcal K\psi)(U_1,U_2)=\psi(U_2U_1).
$$
Haar invariance 给
$$
\|\mathcal K\psi\|_{L^2(G^2)}^2
=\int da\,dU\,|\psi(U)|^2=\|\psi\|_{L^2(G)}^2.
$$
Invariant functions 在 $(a,U)$ 中与 $a$ 无关，故
$$
\boxed{\mathcal K:\mathcal H_M\xrightarrow{\mathrm{unitary}}
\mathcal H_{12}^{G_\Gamma},\qquad
\mathcal K\mathcal D_M=\mathcal D_{12}^{G_\Gamma}.}
$$
它实现已独立证明的 algebra quotient：
$$
D\mathcal K=\mathcal K Q_\hbar(D)
\quad(D\in\mathscr D_{12,\hbar}^{G_\Gamma}).
$$

对 orthonormal basis $|\rho,a,b\rangle=\sqrt{d_\rho}D_\rho(U)_{ab}$，
$$
\mathcal K|\rho,a,b\rangle
=\frac1{\sqrt{d_\rho}}\sum_c
|\rho,c,b\rangle_1\otimes|\rho,a,c\rangle_2.
$$
这是 normalized Haar/Peter–Weyl contraction；interval embedding 的相关表示组织可与 [Donnelly](https://arxiv.org/abs/1406.7304) 比较，但 QY2 的算符 kernel 和 onto 另由 PBW 证明。

Wilson sewing 为
$$
Q_\hbar\left(\sum_c
M_{D_\rho(U_2)_{ac}}M_{D_\rho(U_1)_{cb}}\right)
=M_{D_\rho(U)_{ab}}.
$$
第一段的 left-trivial flux 与最后一段的 right-trivial flux 分别满足
$$
\widehat p_{1,\xi}\mathcal K=\mathcal K\widehat p_\xi,\qquad
\widehat J_{b,2}(\xi)\mathcal K=\mathcal K\widehat J_b(\xi).
$$
因而对任意有序 finite word，
$$
Q_\hbar\!\left(
M_{f(U_2U_1)}\widehat p_{1,\xi_1}\cdots\widehat p_{1,\xi_m}
\right)
=M_f\widehat p_{\xi_1}\cdots\widehat p_{\xi_m}.
$$
这给全部 core electric insertions 的显式 lift。改变 multiplication/flux ordering 时必须用第 2 节的 commutators，不能把 classical insertion formula 当作任意 quantum ordering 都严格相同。

若两 cut frames 以指定 $k$ 比较，则用 $U=U_2kU_1$，中间 contraction 插入 $D_\rho(k)$。固定 comparison time 上的 group translation 保持 Haar、representative coefficients 和 PBW class，故同一定理协变成立；$k$ 不另带独立动量。

## 7. Hamiltonian 与共同 history 的实际演化

令
$$
\Delta_G=\sum_j L_{T_j}^2=\sum_j R_{T_j}^2,\qquad
\widehat H_\ell=-\frac{e^2\ell\hbar^2}{2}\Delta_G.
$$
对每个 irreducible representation，
$$
-\Delta_GD_\rho=C_2(\rho)D_\rho,\qquad
E_\rho(\ell)=\frac{e^2\ell\hbar^2}{2}C_2(\rho).
$$
Peter–Weyl finite sum 上的这个实非负 diagonal operator essentially self-adjoint；其 closure domain 是 $\sum_\rho E_\rho^2\|\psi_\rho\|^2<\infty$。这给所有有限时间的 unitary dynamics。Unitary 在各表示块只乘 phase，故保持 $\mathscr R(G)$ 和 $C^\infty(G)$。

两区域 Hamiltonian 为
$$
\widehat H_{12}=\widehat H_{\ell_1}\otimes1+1\otimes\widehat H_{\ell_2}.
$$
Chain rule 给 $\Delta_1\mathcal K=\mathcal K\Delta_G$。第二段导数在 $U$ 上变成 $L^U_{\operatorname{Ad}_{U_1^{-1}}\xi}$；对第二段微分时 $U_1$ 固定，Ad-invariance 因而给 $\Delta_2\mathcal K=\mathcal K\Delta_G$。也可直接用上节的 Peter–Weyl contraction：两段表示均为 $\rho$。因此
$$
\boxed{
\widehat H_{12}\mathcal K=\mathcal K\widehat H_{\ell_1+\ell_2},\qquad
e^{-it\widehat H_{12}/\hbar}\mathcal K
=\mathcal K e^{-it\widehat H_{\ell_1+\ell_2}/\hbar}.
}
$$
前式先在共同 core 成立，后式由每个 spectral block 成立，故是实际 Hilbert-space identity。

对 prescribed real endpoint histories，沿用 action-derived ordering
$$
\widehat H_I[q_a,q_b]
=\widehat H_\ell+\widehat p_{q_a}-\widehat J_b(q_b).
$$
两区域共同 cut history $q(t)$ 给
$$
\boxed{\widehat H_{12}[q](t)=\widehat H_{12}
-\widehat\mu_\Gamma(q(t)).}
$$
每段 Casimir 与 cut moments 对易。令
$$
(\mathcal T_\Gamma(k)\Psi)(U_1,U_2)
=\Psi(k^{-1}U_1,U_2k),\qquad
\dot k=-qk,\quad k(t_0)=1.
$$
则实际 propagator 为
$$
\mathcal U_{12,q}(t,t_0)
=\mathcal T_\Gamma(k(t))e^{-i(t-t_0)\widehat H_{12}/\hbar}.
$$
群 ODE 在任意 finite smooth history 上存在；在每个 finite representation block 可直接求导验证 Schrödinger equation。由于 $\mathcal T_\Gamma(k)\mathcal K=\mathcal K$，
$$
\boxed{\mathcal U_{12,q}(t,t_0)\mathcal K
=\mathcal K e^{-i(t-t_0)\widehat H_M/\hbar}.}
$$
因此 common history 消去和 global dynamics 的恢复均是算符恒等式；没有把 Haar unitary alone 当作动力学证明。

## 8. 有限时间 dynamical algebra

### No-go：有限阶 differential core 不保持全部 Heisenberg evolution

取非恒定实的 Casimir eigenfunction $f\in\mathscr R(G)$，$\widehat H_\ell f=E_f f$、$E_f>0$；任意非平凡 representation 的某个实或虚 matrix coefficient 可提供它。令
$$
\alpha_t(D)=e^{it\widehat H_\ell/\hbar}De^{-it\widehat H_\ell/\hbar}.
$$
$\alpha_t(M_f)$ 有界且 self-adjoint。若它在 $\mathscr R(G)$ 上等于一个 finite-order differential operator $D$，先以 $\varphi,\psi\in\mathscr R(G)$ 作 formal-adjoint pairing，$L^2$-density 给 $D^*\varphi=\alpha_t(M_f)^*\varphi$；再固定 $\varphi$、取任意 smooth $\psi$，同一 pairing 给 $D\psi=\alpha_t(M_f)\psi$。因此此相等延至 smooth tests。有界的 differential operator 只能是零阶：正阶非零 principal symbol 对局部高频 test functions 给无界增长。故它必须为 $M_g$，且 $g$ 实。但常数函数满足 $\widehat H_\ell1=0$，所以
$$
g=\alpha_t(M_f)1=e^{itE_f/\hbar}f,
$$
在 $tE_f/\hbar\notin\pi\mathbb Z$ 时不实，矛盾。因此
$$
\boxed{\alpha_t(\mathscr D_G)\not\subset\mathscr D_G
\quad\text{对上述一般时刻}.}
$$
$\widehat H\in\mathscr D_G$ 与 $[\widehat H,\mathscr D_G]\subset\mathscr D_G$ 不足以推出 finite-time closure。

### 定理 QY3：指定 dynamical envelope 的 exact comparison

在各自 Peter–Weyl domain 上定义实际 $*$-algebras
$$
\mathfrak A_M^{\mathrm{dyn}}
=\operatorname{Alg}^{*}\{\alpha_{M,t}(D):
D\in\mathscr D_M,\ t\in\mathbb R\},
$$
$$
\mathfrak A_{12}^{\mathrm{dyn}}
=\operatorname{Alg}^{*}\{\alpha_{12,t}(D):
D\in\mathscr D_{12}^{G_\Gamma},\ t\in\mathbb R\}.
$$
此处 $\mathscr D$ 指固定 $\hbar>0$ 的 actual specialization。$\operatorname{Alg}^{*}$ 仅取有限 sums/products，未取 operator-norm closure。源是由**已经 joint invariant 的 core operators** 的时间演化生成；它由 regional Hamiltonians 与 cut data 定义，不借 global algebra。没有把它未经证明地认同“先演化任意 charged regional words 再取全部 invariants”的更大对象。

所有 generators 及其 adjoints 保持各自 Peter–Weyl domain，finite words 因而有共同定义域。$\widehat H_{12}$ 与 cut group 对易，使源中每个 operator 保持 invariant domain 及其正交补。在此定义
$$
Q_{\mathrm{dyn}}(A)=\mathcal K^{-1}A\mathcal K.
$$
Hamiltonian intertwining 给可逐 word 使用的公式
$$
\boxed{
Q_{\mathrm{dyn}}\!\left(\sum_w c_w
\prod_{j=1}^{m_w}\alpha_{12,t_{wj}}(D_{wj})\right)
=\sum_w c_w\prod_{j=1}^{m_w}
\alpha_{M,t_{wj}}\!\left(Q_\hbar D_{wj}\right).
}
$$
这是 well-defined $*$-homomorphism，因为左式是实际 domain restriction；不同 word presentations 得同一个 operator。其像恰为独立定义的 $\mathfrak A_M^{\mathrm{dyn}}$：每个 target generator 的 lift 是 $\alpha_{12,t}(S_\hbar D)$，再逐 word lift。其 kernel 是
$$
\mathfrak J_{\mathrm{dyn}}
=\{A\in\mathfrak A_{12}^{\mathrm{dyn}}:
A\mathcal K\mathscr R(G)=0\}.
$$
该 kernel 还有明确的 cut representation-block 判据：在
$L^2(G_a)\otimes L^2(G_U)$ 的 Peter–Weyl decomposition 中，源 operators 与 $a$ 的 right regular action 对易；$\mathfrak J_{\mathrm{dyn}}$ 正好是 **trivial cut representation block 为零**的元素。这个 block 就是上式右端。其各 matrix elements 可由 finite-representation multiplication coefficients、flux matrices 和 phases $e^{it(E_\rho-E_\sigma)/\hbar}$ 计算；要求对所有 global Peter–Weyl basis vectors 为零等价于整个 block 为零。

因此
$$
\boxed{
\mathfrak A_{12}^{\mathrm{dyn}}/\mathfrak J_{\mathrm{dyn}}
\cong\mathfrak A_M^{\mathrm{dyn}}.
}
$$
它的 kernel 是 restriction annihilator，不未经证明地替换成“evolved core ideal 的代数生成理想”；一般时间演化后不再使用有限阶 vertical PBW 展开。

此代数包含任意有限时刻的 full-interval framed Wilson matrices 及其 finite electric words。例如外端 $A_t=0$ 时，一条先在 $t_0$ 向右、在 $t_1$ 向左返回的矩形，采用如下有序 operator 定义：
$$
\widehat W_\rho(t_1,t_0)
=\operatorname{tr}_{V_\rho}\!
\left(\widehat U_\rho(t_1)^\dagger\widehat U_\rho(t_0)\right),
\qquad
\widehat U_\rho(t)=\alpha_{M,t}\!\left(M_{D_\rho(U)}\right).
$$
这里 $\dagger$ 同时取 auxiliary matrix adjoint 与 Hilbert adjoint。它是该代数内的 bounded、外端 frame-invariant element，$t_1=t_0$ 时等于 $d_\rho1$；上述 comparison 逐有序 factor intertwine。这个 prescription 不等于把 classical $\operatorname{tr}\exp(e^2p\,\mathrm{area})$ 中的非对易 $\widehat p$ 作无序代入。一般 spacetime curves 的独立 Wilson-loop construction 不是本定理的输入或结论。

这里没有为 actual dynamical envelope 声称 QY1 的 Rees flatness、形式 specialization 或全函数类量子化。

## 9. 有限多 cuts 与 endpoint covariance

对 $N$ 段，保留每个未释放端点的 cut action，令
$$
U_{\mathrm{tot}}=U_N\cdots U_1,\qquad
(\mathcal K_N\psi)(U_1,\ldots,U_N)=\psi(U_{\mathrm{tot}}).
$$
取 partial products $c_j=U_j\cdots U_1$、$a_j=c_j^{-1}$，$j<N$。第 $j$ 个 cut 只作用为 $a_j\mapsto a_jk_j^{-1}$，总 $U$ 不变。这个 triangular coordinate change 保持 product Haar 与 representative class。故 QY2 逐 vertical factor 给
$$
\mathscr D_{G^N,\hbar}^{G^{N-1}}
\cong\left(\bigotimes_{j=1}^{N-1}\mathcal U_\hbar^+(\mathfrak g)\right)
\otimes\mathscr D_{G,\hbar}.
$$
各 augmentation 作用于不同 tensor factors，彼此交换。所有 bracketings 因而给相同 quotient、相同 $U_N\cdots U_1$ 和相同 algebra map；这是从 regional tuple 得到的 reduction by stages。Hamiltonians 同时给
$$
\left(\sum_i\widehat H_{\ell_i}\right)\mathcal K_N
=\mathcal K_N\widehat H_{\sum_i\ell_i}.
$$
Finite-time words 随之满足同样的 comparison。外端 group actions 与所有内部 cut reductions 对易，故 endpoint covariance 保留。若保留额外 marked interior frames，得到相应 finite-marked observable system；释放这些 frames 时仍须先形成 joint invariant contractions。

此有限 cut theorem 本身不包含 circle 自粘合。Circle 的 conjugation action 有 stabilizers，不能再使用本节的自由 vertical group coordinates；$SU(2)$ 的独立计算见第 11 节。

## 10. Haar compression 的 no-go 与证明范围

**Haar averaging 不是 raw algebra homomorphism。** 令 $P_\Gamma$ 为 invariant orthogonal projector；在适配坐标中它对 $a$ 积分。取非平凡 irreducible representation 的单个 matrix coefficient $f(a)$，Schur orthogonality 给
$$
P_\Gamma M_fP_\Gamma=0,\qquad
P_\Gamma M_{\bar f}M_fP_\Gamma=\frac1{d_\rho}P_\Gamma\ne0.
$$
所以 $A\mapsto P_\Gamma AP_\Gamma$ 在 raw regional algebra 上不保持乘法。Joint invariant algebra 上则每个 $D$ 与 $P_\Gamma$ 对易，restriction 才是 $*$-homomorphism。这也说明为什么不能先各自抹去 cut charges：跨 cut 的 Wilson index 必须保留到 joint contraction。

**Verified:** QY1–QY3 的 PBW/restriction proofs、全部 core kernel/image/section、classical specialization、Wilson/ordered electric words、Casimir 与共同 history intertwining、有限 cut associativity 均在正文给出。可复现的 [Mathematica checks](<../numerics/ym_1p1_quantum_sewing_checks.wl>) 有 30 组；[Sage checks](<../numerics/ym_1p1_quantum_sewing_checks.sage>) 有 9 组，包含 $SU(2)$ 最高权 $n=0,\ldots,8$ 的 Casimir、唯一 singlet kernel 与 normalization，以及 $n,m=0,\ldots,6$ 的 Schur multiplicities。[结果](<../numerics/ym_1p1_quantum_sewing_results.json>) 记录全部通过。有限检查不证明一般 compact-$G$、microlocal 或 analytic theorems。

**Assumptions:** 本文 action、外端 framing、proper based quotient、无 charged matter/interface action、紧连通单连通 $G$、正定 invariant pairing；选定 representative/polynomial Rees class、Casimir ordering、normalized Haar realization；actual dynamical algebra 使用正文指定的共同 Peter–Weyl domain 和 joint-invariant generators。

**Not verified:** 全 $C^\infty(T^*G)$ 的量子化、任意 charged multitime regional envelope 的 invariant algebra、所有 spacetime curves 的 Wilson construction、dynamical envelope 的 flat formal deformation、任意 bounded completion、一般群的 circle singular quantum reduction、高维 YM、CS、无限 refinement。这里已约化为有限维 $T^*G$ 后的 finite differential products 不需 scalar Epstein–Glaser extension；这不证明 continuum gauge quantization 与 proper-gauge reduction 交换，也不排除另外的量子化 prescription。

## 11. $SU(2)$ circle 的全局 quantum reduction

使用 [classical note §12](<1+1 Yang-Mills classical observable algebra gluing.md>) 的圆周模型与 normalization $C_2(j)=j(j+1)$。自粘合只释放同一个 interval 的共同端点 frame；其量子约束为
$$
\widehat\mu_j=-i\hbar(R_{T_j}-L_{T_j}),\qquad
\mathscr A_\hbar=\mathscr D_{SU(2),\hbar}^{\operatorname{Ad}SU(2)},
\qquad
\rho_\hbar:\mathscr A_\hbar\longrightarrow
\operatorname{End}_{\mathbb C[\hbar]}(\mathbb C[x][\hbar]).
$$
这里 $x=\tfrac{1}{2}\operatorname{tr}U$，$\mathscr R(SU(2))^{SU(2)}=\mathbb C[x]$，$\rho$ 是在 class functions 上的实际 restriction。下一步独立给出 target 与完整 kernel；不把 $\operatorname{im}\rho$ 当作 target 的定义。

### 11.1 独立的 torus algebra 与 Weyl-denominator representation

在 $T=S^1$ 上取 Laurent coefficients、$P=-i\hbar\partial_\theta$，定义其 differential Rees algebra $\mathscr D_{T,\hbar}$。Weyl 作用是
$$
\theta\mapsto-\theta,\qquad P\mapsto-P.
$$
独立定义
$$
\mathscr B_\hbar=\mathscr D_{T,\hbar}^W.
$$
它作用于 anti-invariant Laurent polynomials。设 $s=\sin\theta$，则
$$
\mathbb C[e^{i\theta},e^{-i\theta}]^{-W}=s\,\mathbb C[x].
$$
因为每个反不变 monomial 是 $z^n-z^{-n}$，可被 $z-z^{-1}$ 整除。于是
$$
\boxed{\mathscr B_\hbar^{\mathrm{class}}
=\{s^{-1}Bs:B\in\mathscr B_\hbar\}
\subset\operatorname{End}(\mathbb C[x][\hbar])}
$$
是一个全局定义的 class-function algebra。$s^{-1}$ 只表示上述整除映射，未在 $\theta=0,\pi$ 删除点或允许任意 poles。它是对圆周 classical target $(T\times\mathfrak t)/W$ 的固定 Rees prescription，附带从原 $SU(2)$ Haar 理论选择的 anti-invariant realization。

与文献对照时须运输 conventions：[Ginzburg §1.1, (1.2)–(1.4)](https://arxiv.org/html/2103.13594#S1.SS1) 使用 dot Weyl action 和 $\delta=\prod_{\alpha>0}(e^{-\alpha}-1)$。对 $SL_2$，再共轭 $e^\rho$ 后 $e^\rho\delta$ 是 $s$ 的非零常数倍，才得到这里的 ordinary Weyl action。下述 rank-one kernel 与 filtration 另外直接证明，不把未分级的文献同构自动升级为 Rees flatness。

### 11.2 生成元、全局 image 与严格 kernel

在 source 中定义
$$
X=M_x,\qquad K=4\sum_j\widehat p_j^2,
\qquad W=K+\hbar^2,
\qquad V=\frac{[K,X]}{2i\hbar},
\qquad Z=\sum_j\widehat\mu_j^2.
$$
Commutator 可在 Rees algebra 内被 $\hbar$ 整除，故 $V$ 的定义没有 localization。$W$ 的移位用来表示径向 algebra generator；物理 Hamiltonian 仍是 $e^2\ell K/8$。

在 class functions 上，先作 $s$ 共轭，得到
$$
\begin{aligned}
\mathcal R_\hbar(X)&=\cos\theta,\\
\mathcal R_\hbar(V)&=\tfrac12(sP+Ps)
=-i\hbar(s\partial_\theta+x/2),\\
\mathcal R_\hbar(W)&=P^2.
\end{aligned}
$$
这是普通 Weyl 不变的三个全局 finite-order operators。其 symbols 是
$$
x=\cos\theta,\qquad v=s\varpi,\qquad w=\varpi^2,
\qquad F=(1-x^2)w-v^2.
$$

**Symbol 与 filtered-generation 引理。** 在 source，compact averaging 与 differential-order filtration 交换。两个 $SO(3)$ 向量的 Gram invariant calculation 给
$$
\operatorname{gr}_{\mathrm{ord}}\mathscr A
=\mathbb C[x,v,w],\qquad \deg(x,v,w)=(0,1,2).
$$
右端的三个 symbols 分别由 $X,V,W$ lift。逐 differential order 消去最高 symbol，证明它们生成全部 invariant differential operators。相同论证对 Laurent monomials 的 Weyl invariants 给
$$
\operatorname{gr}_{\mathrm{ord}}\mathscr B
=\mathbb C[x,v,w]/(F).
$$
这里可直接看 monomials：偶数 momentum degree 的 Weyl invariants 使用 $z^n+z^{-n}$，它是 $x$ 的 polynomial；奇数 degree 使用 $z^n-z^{-n}$，除以 $z-z^{-1}$ 后也是 $x$ 的 polynomial。因此目标 symbols 由 $x,v,w$ 生成且只有 relation $F$。目标的三个同名 operators 因而生成整个 $\mathscr B_\hbar$。每一步保留 coefficients 中的 $\hbar$ 多项式，且 lower-order terms 具有相应 $\hbar$ 因子；所以这是 filtered/Rees 满射，并未通过除以 $\hbar$ 才取得 onto。

**全局 moment-Casimir 恒等式。** 在 source 中有
$$
\boxed{
Z=(1-X^2)W-V^2-2i\hbar XV
+\hbar^2\left(\tfrac12+\tfrac14X^2\right).}
$$
其 symbol 是 $\|\mu\|^2=F$。直接用 $L,R$ 算子展开即可核对；这是全部二阶 differential coefficients 的恒等式，不只是 character eigenvalue 检查。$Z$ 与整个 $\mathscr A_\hbar$ 对易，因为每个 invariant operator 都与全部 $\widehat\mu_j$ 对易。右式经过径向映射为零。

**Kernel 证明。** 若 invariant $D$ 消去全部 class polynomials，在 $-1<x<1$ 上以这些 polynomials 检测任意有限阶 transverse jet，其最高 symbol 在 commuting locus 上消失。Gram invariant ring 中这个 locus 的理想是不可约多项式 $(F)$；故最高 symbol 是 $F b$。用上一引理把 invariant $b$ lift 为 $B$，减去 $ZB$，严格降低 differential order。反复操作，零阶剩余只能为零。对 $\hbar$ 多项式逐系数实行同一消去；全过程不除 $\hbar$。因此
$$
\ker\rho_\hbar=(Z)\subset\mathscr A_\hbar.
$$
令 $\mathscr L=\sum_j\mathscr D_{SU(2),\hbar}\widehat\mu_j$。它消去 class functions，而 $Z\in\mathscr L$，所以两边夹逼给
$$
\boxed{
\ker\rho_\hbar
=\mathscr A_\hbar\cap\mathscr L
=(Z),\qquad
\mathscr A_\hbar/(Z)\xrightarrow{\cong}\mathscr B_\hbar^{\mathrm{class}}.}
$$
目标 algebra 的 onto 是三个生成元的显式 lifts，加上 filtered induction。Kernel 的证明覆盖 Weyl divisor；没有从 regular-torus 公式推断 singular points 可忽略。$\mathscr L$ 仍只是 raw algebra 的左理想，$(Z)$ 才是 invariant algebra 内的 two-sided $*$-ideal。

### 11.3 Relations、involution 与 classical specialization

在 quotient 中，同名 $X,V,W$ 满足
$$
\begin{aligned}
[X,V]&=i\hbar(X^2-1),\\
[X,W]&=-2i\hbar V,\\
[V,W]&=i\hbar(XW+WX-\hbar^2X/2),\\
(1-X^2)W-V^2-2i\hbar XV
+\hbar^2(\tfrac12+X^2/4)&=0.
\end{aligned}
$$
$X,V,W$ 都为 formal self-adjoint；class realization 用 Haar weight，torus anti-invariant realization 用 flat measure，$s$ 共轭运输二者的 $*$。这个结论关于共同 polynomial domain，不宣称任意 symmetric word 都 essentially self-adjoint。

Rees construction 与 finite Weyl averaging 给
$$
\boxed{
(\mathscr A_\hbar/(Z))/\hbar(\mathscr A_\hbar/(Z))
\cong\mathbb C[x,v,w]/(F)=\mathscr P_{S^1}.}
$$
特别地 $(Z)$ 对 $\hbar$ saturated：商同构于 torsion-free $\mathscr B_\hbar$。$[\ ,\ ]/(i\hbar)$ 在 $\hbar=0$ 恢复 classical note §12 的三个 brackets。这里证明的是指定 polynomial Rees core 的 quantization/reduction compatibility；它不量子化整个 singular smooth algebra。

### 11.4 实际 Hamiltonian domain 由原理论固定

固定 $\hbar>0$。独立的圆周 Hilbert realization 是 $L^2(SU(2))^{\operatorname{Ad}SU(2)}$，由 Weyl integration 得
$$
\mathcal H_{S^1}
=L^2\left([0,\pi],\frac2\pi\sin^2\theta\,d\theta\right).
$$
Class functions 的完整 orthonormal character basis 为
$$
\chi_{n/2}(\theta)=\frac{\sin((n+1)\theta)}{\sin\theta},\qquad n=0,1,\ldots.
$$
原 interval Casimir restriction 是
$$
\widehat H_{S^1}
=-\frac{e^2\ell\hbar^2}{8}
(\partial_\theta^2+2\cot\theta\,\partial_\theta).
$$
Unitary map $\mathcal{J}f=\sqrt{2/\pi}\sin\theta\,f$ 把它变为
$$
\boxed{
\mathcal J\widehat H_{S^1}\mathcal J^{-1}
=-\frac{e^2\ell\hbar^2}{8}(\partial_\theta^2+1),
\qquad
\mathcal D=H^2(0,\pi)\cap H_0^1(0,\pi).}
$$
证明不是只比较几个 eigenvalues：完整 characters 被 $\mathcal J$ 送到完整正弦基，有限 span 上 Casimir 非负且 essentially self-adjoint；closure 的 graph norm 要求 $\sum_{n\ge0}[n(n+2)]^2|c_n|^2<\infty$，正好是所列 Dirichlet domain。能量为
$$
E_j=\frac{e^2\ell\hbar^2}{2}j(j+1).
$$
常数 character 的能量仍为零。径向式中的常数项来自 Haar/Casimir 运输，不是另选的 quantum shift。$\theta=0,\pi$ 是 conjugacy-space singular endpoints；任意另选 Robin/self-adjoint extension 会改变原圆周 YM，不能称为同一个 sewing。

共同 history Hamiltonian $\widehat H[q]=\widehat H-\widehat\mu(q)$ 与 Casimir 对易；在每个 finite Peter–Weyl block 中其 propagator 是 Casimir phase 乘 conjugation transport。在 class block 后者为恒等，故 restriction 与全部实际时间的 Casimir evolution intertwine。Character finite span 被三个径向 core generators 及演化保持为共同 domain；每个算符的 finite-time conjugate 仍可在此域定义，但一般不再是 finite-order differential operator。仍须保留第 8 节的 dynamical-envelope 范围区分。

**Verified:** 全局 rank-one invariant-symbol/kernel/image 证明、moment-Casimir identity、Rees specialization 和完整谱域论证如上；[Mathematica](<../numerics/ym_circle_cs_corner_checks.wl>) 与 [Sage](<../numerics/ym_circle_self_sewing_topology_checks.sage>) 核验可计算恒等式及 elimination，结果见 [verification record](<../numerics/ym circle and CS corner verification.md>)。**Assumptions:** $SU(2)$、全部 periodic gauge quotient、零 moment、原 Casimir ordering、representative/polynomial coefficients 与有限 order，smooth classical extension 使用 classical note 的明确 theorem 输入。**Not verified:** 任意紧群的此项 kernel 证明、全 smooth quantum algebra、任意 charged multitime invariants、vertex insertions、任意 operator completion 或完整 continuum quantize-before-proper-reduction。
