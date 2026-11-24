How to define energy in gr. Which time should we use.

"The spacetime must be asymptotically flat if there is to be any possibility to define energy and angular momentum"

Asymptotic symmetries are not mere redundancies

Dirac formlaism of constraints

The set of proper gauge transformations form an ideal, and the quotient algebra is the asymptotic symmetry

Observables are functionals of the canonical variables that are invariant under proper gauge transformations

BMS4 group, found on null infinity and appeared at spatial infinity

See Henneaux-Troessaert for the construction

$$\begin{align}
\mathrm{BMS}_{4} & =\mathcal{L}\rtimes\mathcal{A}
\end{align}$$

angular momentum ambiguity, see Fuentealba-Henneaux-Troessaert for resolving it

---

## 摘要

在带边界的引力理论中，允许的微分同胚、作用量的可微性与表面荷共同确定渐近对称性。本文依据 Marc Henneaux 在 SIMIS 的报告截图，重建从 proper gauge ideal 到四维空间无穷远 BMS 荷代数的论证，并补出 parity-twisted 边界条件消除辛结构对数发散的机制。随后利用 ordinary 与 logarithmic supertranslations 的中心配对，显式构造与 soft sector 对易的 Lorentz 荷。围绕报告引出的角动量问题，本文写出 Chen–Wang–Yau 准局域构造的输入与方程、其 null-infinity 修正项，以及 Mao–Wu–Wu 在 stationary electric-memory 端点上的对应；双星四极近似中的一致性被归结为球面上的一个积分恒等式。最后讨论作用量的 torsor/line-valued 结构怎样进入 timelike sewing，并将维数、量子群与 braid 的联想单列为附录。

**材料与约定。** 报告为 *Asymptotic symmetries in gauge theories with emphasis on gravity*，2026 年 11 月 5 日，SIMIS。以 **[S, n]** 表示原 PPT 的第 n 页。本次整理的 `slide.pdf` 共 30 页，包含原第 7–12、14–21、23–38 页；页码对照见附录 D。报告的主要构造置于第 2–5 节，memory 概述见第 6 节；第 7–8 节和附录展开讨论中的联想。补充文献与本文计算在使用处注明。时空号差取 $(-+++)$，$c=1$；第 3 节复述 ADM 展开时取 $16\pi G=1$，其余物理荷恢复 $G$。场空间微分记为 $\delta$，时空微分记为 $d$，约定

$$\begin{align}
\Omega=\delta\theta,\qquad \iota_{X_F}\Omega=-\delta F,\qquad \{F,G\}=\delta F(X_G). \tag{0.1}
\end{align}$$

# 1. 能量问题怎样转化为边界对称性问题

报告从渐近 Minkowski 结构所提供的时间平移出发 [S, 7–8]。对于给定的允许变换 $\xi$，问题是寻找其 Hamiltonian 荷 $H_\xi$；对于能量，还要决定哪个允许变换代表所选观察者的时间平移。这两步分别涉及相空间上的 Hamiltonian 实现与观察者的选择。

可以先保留整套平移荷 $P^\mu$，再对未来单位 timelike 向量 $u^\mu$ 定义

$$\begin{align}
E_u=-\eta_{\mu\nu}P^\mu u^\nu. \tag{1.1}
\end{align}$$

这样得到的是一族观察者能量。Poincaré 变换在无穷远的行为为 $\xi^\mu=a^\mu+\omega^\mu{}_\nu x^\nu$；常数项和线性增长项在适当边界条件下都可产生物理荷。这里决定其物理地位的是它们在相空间上的作用。与恒等连通的 Poincaré 变换已经给出了 improper gauge transformations 的例子。

听报告时提出的另一个想法是，从所有未来 timelike 向量场生成一个代数。对这一构造，边界可容许性是实质限制：在任意 time-oriented Lorentz 流形上，所有光滑未来 timelike 向量场的实线性张成已经等于全部光滑向量场。附录 A 给出分解证明。因此，保留整个荷代数的做法仍需先确定允许场、边界数据和可实现的 Hamiltonian 变换。这个顺序也使 dS 中的时间选择问题与一般向量场的存在性各有明确位置。

# 2. 从可微生成元到 Poisson 荷空间

## 2.1 表面项决定哪个变换具有物理荷

设 $\mathcal C$ 为一阶约束的零点集。报告采用的可微生成元为

$$\begin{align}
G[\epsilon] =\int_\Sigma\epsilon^a\mathcal G_a+B_\epsilon, \qquad \mathcal G_a\approx0. \tag{2.1}
\end{align}$$

$B_\epsilon$ 的作用是取消 $\delta\int\epsilon^a\mathcal G_a$ 中妨碍 Hamiltonian 可微性的边界项。在约束面上，$G[\epsilon]|_{\mathcal C}=B_\epsilon|_{\mathcal C}$，所以表面项直接保留了变换的物理内容 [S, 14–16]。

电磁学给出一个足以固定符号的例子。取 $\mathcal G=-\partial_i\pi^i$，参数 $\epsilon$ 与场独立，则

$$
\begin{aligned}
G[\epsilon]
&=-\int_\Sigma\epsilon\,\partial_i\pi^i
  +\int_{\partial\Sigma}\epsilon\pi^i\,dS_i\\
&=\int_\Sigma(\partial_i\epsilon)\pi^i,\\
\delta G[\epsilon]
&=\int_\Sigma(\partial_i\epsilon)\delta\pi^i.
\end{aligned}
\tag{2.2}
$$

由 $\Omega=\int_\Sigma\delta\pi^i\wedge\delta A_i$ 得到 $X_\epsilon A_i=\partial_i\epsilon$。在满足 Gauss 约束的场上，生成元成为电通量的加权边界积分。该计算同时说明：定义 proper 的零条件应当对整个允许约束面成立；某个带荷对称性的生成元在一个参考解上恰好为零，只是能量或电荷零点的性质。

## 2.2 Proper Ideal 的预辛证明

将 $\Omega$ 拉回约束面或协变解空间。proper 方向 $Z$ 满足 $\iota_Z\Omega=0$；允许的 Hamiltonian 变换 $X$ 满足 $\mathcal L_X\Omega=0$。于是

$$\begin{align}
\iota_{[X,Z]}\Omega =\mathcal L_X(\iota_Z\Omega)-\iota_Z(\mathcal L_X\Omega)=0. \tag{2.3}
\end{align}$$

因此退化方向在允许变换下形成 ideal，得到

$$\begin{align}
\mathfrak g_{\mathrm{as}} =\mathfrak g_{\mathrm{allow}}/\mathfrak g_{\mathrm{proper}}. \tag{2.4}
\end{align}$$

这给出了 [S, 17–18] 的几何表达。式 (2.3) 的前提包含切于所选场空间、保持边界条件及相应预辛结构。对 field-dependent 参数，变换的复合还要同时变分参数；在通常的残余微分同胚记号下，这一步由 adjusted bracket 表达。

可观测量 $O$ 满足 $Z[O]=0$，而 $X[O]$ 可以非零。因而能量、动量、角动量等本身就是可观测量，并可在其他 improper 变换下变化 [S, 20]。在 locally homogeneous 的引力扇区，局域曲率标量可以相同，而边界荷不同；要区分这些态，需要保留相对于边界结构定义的数据。

## 2.3 “These Generators Define a Poisson Manifold” 的准确用法

原 PPT 第 19 页先允许非线性或中心扩张的荷代数，随后使用上述表述。设一族荷 $Q_A$ 满足

$$\begin{align}
\{Q_A,Q_B\}=F_{AB}(Q). \tag{2.5}
\end{align}$$

在这些函数的独立值构成光滑坐标的局部层上，定义

$$\begin{align}
\Pi^{AB}(q)=F_{AB}(q),\qquad \{f,g\}_{\mathcal Q} =F_{AB}(q)\frac{\partial f}{\partial q_A} \frac{\partial g}{\partial q_B}. \tag{2.6}
\end{align}$$

相空间上的 Jacobi 恒等式给出 $\Pi$ 的 Jacobi 条件；若荷之间存在关系，应先将这些关系纳入 $\mathcal Q$ 的定义。荷映射

$$\begin{align}
\mu:\mathcal P\longrightarrow\mathcal Q, \qquad \mu(\phi)=(Q_A[\phi]) \tag{2.7}
\end{align}$$

在此定义下是 Poisson 映射，因为链式法则给出

$$\begin{align}
\{f\circ\mu,g\circ\mu\}_{\mathcal P} =\{f,g\}_{\mathcal Q}\circ\mu. \tag{2.8}
\end{align}$$

当 $F_{AB}=f_{AB}{}^CQ_C$ 时得到 Lie–Poisson 情形；加入常数中心项时得到相应 affine 结构。式 (2.5) 也允许一般非线性闭合。由此，报告这句话最直接指向的是生成元构成的 Poisson 结构；将 $\mathcal Q$ 进一步等同于完整物理相空间，需要证明荷的分辨能力。

这个问题可以用一个局部等式表述。在辛层上，记 $\mathcal D=\operatorname{span}\{X_{Q_A}\}$，则

$$\begin{align}
\ker d\mu=\mathcal D^{\perp_\Omega}. \tag{2.9}
\end{align}$$

证明是 $dQ_A(v)=\Omega(v,X_{Q_A})$。因而在有限维光滑情形，$\mathcal D=T\mathcal P$ 保证局部微分层面的完整性；全局分离不同态还需要考察 $\mu$ 的单射性。对场论，应另行规定切空间拓扑和荷的定义域。这是报告的 Poisson 结构与 symmetry-completeness 问题之间的具体连接。

## 2.4 与 Harlow–Wu 作用量构造的对应

取包含所选边界项的作用量

$$\begin{align}
S=\int_M L+\int_\Gamma\ell, \qquad \delta L=E\cdot\delta\phi+d\Theta. \tag{2.10}
\end{align}$$

在满足边界条件的变分上，若 $(\Theta+\delta\ell)|_\Gamma=dC$，则

$$\begin{align}
\theta_\Sigma=\int_\Sigma\Theta-\int_{\partial\Sigma}C, \qquad \Omega_\Sigma=\delta\theta_\Sigma. \tag{2.11}
\end{align}$$

本小节取 field-independent $\xi$，并要求它保持这些数据、满足相应协变性条件。Harlow–Wu 给出 [HW, 式 (1.5)–(1.6)]

$$
\begin{aligned}
J_\xi&=\Theta(\mathcal L_\xi\phi)-\iota_\xi L,\\
H_\xi&=\int_\Sigma J_\xi
+\int_{\partial\Sigma}(\iota_\xi\ell-\iota_{X_\xi}C).
\end{aligned}
\tag{2.12}
$$

在微分同胚协变理论的解上 $J_\xi=dQ_\xi$，从而

$$\begin{align}
H_\xi=\int_{\partial\Sigma} \left(Q_\xi+\iota_\xi\ell-\iota_{X_\xi}C\right). \tag{2.13}
\end{align}$$

这正是从完整作用量得到表面 Hamiltonian 的路径。与式 (2.1) 比较时，要固定同一边界条件、角点项、参考常数和允许变换。式 (2.13) 中的三个项共同给出生成元。

对于开放边界，把条件推广为

$$\begin{align}
(\Theta+\delta\ell)|_\Gamma=\beta+dC. \tag{2.14}
\end{align}$$

此时 $\delta\beta$ 是边界辛通量密度。守恒辛结构和单个 cut 的可积荷随之成为需要另外满足的条件。第 6 节使用的辐射 balance law 应在这一开放系统语境下理解；第 8 节会保留 $\beta$ 来完成 timelike sewing。

# 3. 从有限作用量到空间无穷远的 BMS

报告引用 Vladimir A. Fock 关于边界条件与场方程同等重要的观点 [S, 24]，随后将它落实为两个要求：作用量有限，以及允许场空间至少在渐近 Poincaré 变换下保持不变 [S, 25]。这两个要求共同约束下面的 leading 数据。

## 3.1 对数发散来自哪里

取有限时间区间 $[t_1,t_2]$。报告的 ADM 作用量为 [S, 23; HT19, §II]

$$
\begin{aligned}
S=\int_{t_1}^{t_2}dt\left[
\int_\Sigma d^3x\left(\pi^{ij}\dot g_{ij}
-N\mathcal H-N^i\mathcal H_i\right)-B_\infty\right],\\
\mathcal H=-\sqrt g\,{}^{(3)}R
+\frac1{\sqrt g}\left(\pi^{ij}\pi_{ij}-\frac12\pi^2\right),
\qquad \mathcal H_i=-2\nabla_j\pi_i{}^j.
\end{aligned}
\tag{3.0}
$$

这里 $\pi=g_{ij}\pi^{ij}$；$B_\infty$ 包含所选 lapse/shift 的表面生成元。本节的有限性首先指这个时间区间内去掉空间径向截断的极限。

在渐近 Cartesian 坐标中，报告使用

$$\begin{align}
g_{ij}=\delta_{ij}+\frac{\bar h_{ij}(n)}r+O(r^{-2}), \qquad \pi^{ij}=\frac{\bar\pi^{ij}(n)}{r^2}+O(r^{-3}). \tag{3.1}
\end{align}$$

径向截断为 $R$ 时，辛形式的可能发散项是

$$\begin{align}
\Omega_R =\log\frac R{r_0}\int_{S^2} \delta\bar\pi^{ij}\wedge\delta\bar h_{ij}\,d\Omega +O(1). \tag{3.2}
\end{align}$$

这里 $r^2dr$、$r^{-2}$ 与 $r^{-1}$ 合起来产生 $dr/r$。相同幂次出现在 ADM 动能项 $\int\pi^{ij}\dot g_{ij}$ 中。因而只规定式 (3.1) 的幂次，通常还要补充条件以使作用量及辛结构有限 [S, 23–27]。

严格 Regge–Teitelboim 条件取

$$\begin{align}
\bar h_{ij}(-n)=\bar h_{ij}(n),\qquad \bar\pi^{ij}(-n)=-\bar\pi^{ij}(n). \tag{3.3}
\end{align}$$

式 (3.2) 的角向被积式成为奇函数，积分为零。与此同时，物理渐近荷代数缩为 Poincaré。要恢复 BMS，需要使被严格 parity 冻结的方向重新成为允许物理变分，并控制新出现的偶 parity 配对。

## 3.2 Leading 场的 Parity Twist

采用 Henneaux–Troessaert 的 Cartesian 表达 [HT19, §III]。只写 leading homogeneous terms：

$$
\begin{aligned}
h_{ij}&=J_{ij}+2\partial_i\partial_j(rU)+O(r^{-2}),\\
\pi^{ij}&=P^{ij}
+(\partial^i\partial^j-\delta^{ij}\Delta_0)V+O(r^{-3}),\\
J_{ij}&=r^{-1}\bar h^{\mathrm{even}}_{ij}(n),
\qquad
P^{ij}=r^{-2}\bar\pi^{\mathrm{odd}\,ij}(n).
\end{aligned}
\tag{3.4}
$$

$\Delta_0$ 是平直三维 Laplacian；$U(n)$ 为奇函数，$V(n)$ 为偶函数，均为 $O(1)$。$\zeta_i=\partial_i(rU)$ 是生成 metric twist 的 $O(1)$ 参数。metric twist 为 $O(r^{-1})$，momentum twist 为 $O(r^{-2})$，正好改变 leading parity。

这一边界类还包括渐近约束和 boost 可积性条件。文献所用的一个充分选择为

$$\begin{align}
\mathcal H=O(r^{-5}),\qquad \mathcal H_i=O(r^{-5}),\qquad g_{rA}=O(r^{-1}). \tag{3.5}
\end{align}$$

前两个估计在 Cartesian 坐标中成立；它们保证含 $O(r)$ lapse/shift 的 bulk Lorentz 生成元收敛。leading 约束具体化为

$$\begin{align}
\partial_iP^{ij}=0, \qquad \partial_i\partial_jJ_{ij}-\Delta_0J_{ii}=0. \tag{3.6}
\end{align}$$

$g_{rA}$ 条件同时限制 $J$ 的 leading mixed component，并将一般 $\zeta_i$ 约束为式 (3.4) 的梯度形式。这样，奇偶条件、约束衰减和 boost 可积性共同定义了所选场空间。

## 3.3 Twist 为什么保留有限辛形式

令

$$\begin{align}
U_{ij}=\partial_i\zeta_j+\partial_j\zeta_i, \qquad V^{ij}=(\partial^i\partial^j-\delta^{ij}\Delta_0)V. \tag{3.7}
\end{align}$$

考察环带 $r_0<r<R$。$\delta P\wedge\delta J$ 由 parity 消去。含 $U_{ij}$ 的项可写为

$$\begin{align}
\int\delta P^{ij}\wedge\delta U_{ij} =2\int_{\partial\mathrm{ann}}n_i\delta P^{ij}\wedge\delta\zeta_j\,dS -2\int\partial_i\delta P^{ij}\wedge\delta\zeta_j. \tag{3.8}
\end{align}$$

第二项由式 (3.6) 为零。第一项在每个球面上是 $r^0$，故其两端差含有限幂次贡献，对数系数为零。

对另一个交叉项，两次分部积分给出

$$
\begin{aligned}
\int_{\mathrm{ann}}\delta V^{ij}\wedge\delta J_{ij}
={}&\int_{\partial\mathrm{ann}}n_i\Big[
(\partial_j\delta V)\wedge\delta J_{ij}
-(\partial_i\delta V)\wedge\delta J_{kk}\\
&\hspace{24mm}-\delta V\wedge\partial_j\delta J_{ij}
+\delta V\wedge\partial_i\delta J_{kk}\Big]dS\\
&+\int_{\mathrm{ann}}\delta V\wedge
\delta(\partial_i\partial_jJ_{ij}-\Delta_0J_{ii}).
\end{aligned}
\tag{3.9}
$$

Bulk 项再次由式 (3.6) 消去。余下的球面项也是 $r^0$。最后，twist–twist 项满足恒等式

$$\begin{align}
\partial_iV^{ij}=0, \qquad \partial_i\partial_jU_{ij}-\Delta_0U_{ii}=0, \tag{3.10}
\end{align}$$

因而同样处理。式 (3.8)–(3.10) 说明 leading 辛对数发散如何消失；完整表面生成元的有限性与可积性还使用式 (3.5) 及次领先展开，见 [HT19, §VI]。

这段计算给出报告中“适当放松”的具体含义：加入由特定 improper diffeomorphisms 产生的 leading 数据，并用约束控制它们在辛形式中的配对。允许场在这一过程中确实增加了物理方向 [S, 28–29]。

## 3.4 Even–Odd 参数与 BMS 表示

报告以 Cartesian 示意式 $\xi\sim b_ix^i+T$、$\xi^i\sim b^i{}_jx^j+\partial^i(rW)$ 展示独立参数 [S, 30–31]。完整允许变换还含与 $T,W$ 同阶的 field-dependent boost 补偿。采用极坐标，其表达为 [HT19, 式 (VI.29)–(VI.32)]

$$
\begin{aligned}
\xi&=br+T-b\bar k+O(r^{-1}),\\
\xi^r&=W+O(r^{-1}),\\
\xi^A&=Y^A+\frac1r\left(D^AW+
\frac{2b}{\sqrt q}\bar\pi^{rA}\right)+O(r^{-2}).
\end{aligned}
\tag{3.11}
$$

这里 $b=b_in^i$，$Y^A$ 是 rotation Killing field，$q=\det q_{AB}$。定义 $g_{rr}=1+2\bar\lambda/r+O(r^{-2})$、$g_{AB}=r^2q_{AB}+r\bar h_{AB}+O(1)$、$\pi^{rA}=\bar\pi^{rA}/r+O(r^{-2})$，并令 $\bar k=\tfrac12q^{AB}\bar h_{AB}+2\bar\lambda$。极坐标中的 $\pi^{rA}$ 为张量密度。$-b\bar k$ 使 boost 生成元可积，角向补偿则保持式 (3.5) 的 mixed metric 条件。

独立 supertranslation 参数仍是偶函数 $T$ 与奇函数 $W$。$T_{\ell=0}$ 和 $W_{\ell=1}$ 给出四维 translations，其余模式给出物理 supertranslations；另一组 $T$ 奇、$W$ 偶的参数在此实现中属于 proper 方向。

例如 boost 参数 $b=b_in^i$ 对这两个函数的作用为 [HT19, 式 (VII.6)–(VII.7)]

$$\begin{align}
\delta_bT=-3bW-D_AbD^AW-bD^2W, \qquad \delta_bW=-bT. \tag{3.12}
\end{align}$$

由于 $b$ 为奇函数，这个变换保持 $T$ 偶、$W$ 奇的组合。将参数沿空间无穷远附近的演化方程延拓到 null infinity，得到通常由一个任意球面函数表示的 BMS supertranslation。这个对应包含 Lorentz 表示的基底变换；仅把两个函数相加只给出向量空间层面的 even–odd 分解。

报告最后强调，边界条件可能隐含对 improper 方向的固定 [S, 38]。这里的“恢复 BMS”是对所选渐近孤立系统的场空间进行构造。其他物理边界问题仍由其自身允许数据定义；比较不同问题时应同时比较作用量、解空间与荷。

# 4. Poincaré 嵌入与角动量的 Supertranslation 依赖

## 4.1 一个 Boost 就能看见混合项

在 null-infinity 的标准参数化中，令 $Y^A$ 为单位球面的全局 conformal Killing field，$f$ 为 supertranslation 参数。其 Lorentz 作用为

$$\begin{align}
\rho_Yf=Y^AD_Af-\frac12(D_AY^A)f. \tag{4.1}
\end{align}$$

取 $z=\cos\theta$，$Y=D^Az\,\partial_A$，则 $D_AY^A=-2z$。对轴对称函数，

$$\begin{align}
\rho_Yf=(1-z^2)f'(z)+zf(z). \tag{4.2}
\end{align}$$

直接作用在 Legendre 多项式上得到

$$\begin{align}
\rho_YP_0=P_1,\qquad \rho_YP_1=P_0,\qquad \rho_YP_2=\frac85P_1-\frac35P_3. \tag{4.3}
\end{align}$$

前两式体现 translation 子空间的 Lorentz 不变性；最后一式显示按 $\ell\ge2$ 选出的 pure-supertranslation 补空间会产生 translation 分量。式 (4.3) 同时列入随文符号检验。

## 4.2 子代数、Ideal 与参考截面的变化

把报告的记号写成

$$
\begin{aligned}
\{M_a,M_b\}&=f_{ab}{}^cM_c,\\
\{M_a,T_i\}&=R_{ai}{}^jT_j,\\
\{M_a,S_\alpha\}&=A_{a\alpha}{}^iT_i
+B_{a\alpha}{}^\beta S_\beta,\\
\{T_i,T_j\}&=\{T_i,S_\alpha\}=\{S_\alpha,S_\beta\}=0.
\end{aligned}
\tag{4.4}
$$

$T_i$ 表示四个 translations，$S_\alpha$ 表示选定补空间中的 pure supertranslations。Poincaré 生成元 $M_a,T_i$ 在彼此括号下闭合，而与一般 $S_\alpha$ 的括号包含新的 $S$ 分量。这就是 [S, 33–35] 的 ideal 问题。

给定 supertranslation $S_f$，由它作用于 Lorentz 生成元所得的新嵌入为

$$\begin{align}
M_a^{(f)}=M_a+\{M_a,S_f\}. \tag{4.5}
\end{align}$$

因为 supertranslation sector 为 Abelian，高阶重复括号为零。两套 Lorentz 子代数因而相差平移型生成元。在有辐射的渐近几何中，这一变化同时表现为 cuts 与 shear 零模的变化。

对角动量应保留两种不同的协变性要求。普通平移改变原点，角动量应按通常轨道角动量规律变化；希望消去的 additional ambiguity 是 $\ell\ge2$ 的 pure-supertranslation 依赖。第 5 节通过扩展荷代数实现这一要求，第 7 节则通过准局域参考结构实现它。

# 5. Logarithmic Supertranslations 与 Lorentz 荷的显式重定义

## 5.1 中心配对提供新的共轭变量

原第 36 页引入 logarithmic generators $L^\alpha$，并陈述它们与 $S_\beta$ 的中心配对。以下把 [FHT, §9.1] 的代数输入写全：在式 (4.4) 外增加

$$\begin{align}
\{L^\alpha,S_\beta\}=\delta^\alpha{}_{\beta},\qquad \{M_a,L^\alpha\}=-B_{a\beta}{}^\alpha L^\beta, \tag{5.1}
\end{align}$$

以及 $\{L,L\}=\{T,L\}=0$。原始中心双线性型记作 $\sigma_{\alpha\beta}$ 时，$L^\alpha=\sigma^{\alpha\beta}L_\beta$；取逆是在 pure 模式对应的非退化部分进行。有限维 translations 仍作为独立 sector 保留。

这个代数来自进一步放松空间无穷远的边界条件，使特定 logarithmic diffeomorphisms 成为允许变换。完整引力构造包括其渐近展开、约束与有限可微生成元 [FHT, §§3–8]。下面只使用式 (4.4)、(5.1)，将报告省略的重定义及闭合证明算出。

## 5.2 取消 Soft Sector 的 Lorentz 作用

记

$$\begin{align}
C_{a\alpha}=A_{a\alpha}{}^iT_i+B_{a\alpha}{}^\beta S_\beta, \qquad K_a=L^\alpha C_{a\alpha}. \tag{5.2}
\end{align}$$

定义

$$\begin{align}
\boxed{\widetilde M_a=M_a-K_a =M_a-L^\alpha\{M_a,S_\alpha\}.} \tag{5.3}
\end{align}$$

先计算它对 $S$ 的作用：

$$\begin{align}
\{K_a,S_\gamma\} =\{L^\alpha,S_\gamma\}C_{a\alpha} =C_{a\gamma} =\{M_a,S_\gamma\}. \tag{5.4}
\end{align}$$

再计算对 $L$ 的作用：

$$\begin{align}
\{K_a,L^\gamma\} =L^\alpha B_{a\alpha}{}^\beta
\{S_\beta,L^\gamma\} =-L^\alpha B_{a\alpha}{}^\gamma =\{M_a,L^\gamma\}. \tag{5.5}
\end{align}$$

两项相减后得到

$$\begin{align}
\{\widetilde M_a,S_\alpha\}=0, \qquad \{\widetilde M_a,L^\alpha\}=0, \qquad \{\widetilde M_a,T_i\}=R_{ai}{}^jT_j. \tag{5.6}
\end{align}$$

最后一个等式使用 $K_a$ 与 translations 对易。

## 5.3 为什么 Lorentz 括号也保留下来

定义闭合差

$$\begin{align}
D_{ab}:=\{\widetilde M_a,\widetilde M_b\} -f_{ab}{}^c\widetilde M_c. \tag{5.7}
\end{align}$$

由式 (5.6) 和 Jacobi 恒等式，$D_{ab}$ 与全部 $S_\alpha,L^\alpha$ 对易。将式 (5.3) 代入，原有 $\{M_a,M_b\}=f_{ab}{}^cM_c$ 抵消，余下各项是 $T,S,L$ 的多项式，且每项至少含一个 $L$。式 (5.1) 给出

$$\begin{align}
\{D_{ab},S_\alpha\} =\frac{\partial D_{ab}}{\partial L^\alpha}=0. \tag{5.8}
\end{align}$$

所以 $D_{ab}$ 与 $L$ 无关；在 $L=0$ 上它又等于零，故 $D_{ab}=0$。因此

$$\begin{align}
\boxed{ \{\widetilde M_a,\widetilde M_b\} =f_{ab}{}^c\widetilde M_c.} \tag{5.9}
\end{align}$$

这一证明直接处理有限代数表达式；在引力的无穷模实现中，式 (5.2) 的收缩应理解为文献给出的球面函数泛函，收敛与可微性由相应边界条件控制。随文代码另构造了一个具有非零 $T$–$S$ 混合的有限 Lorentz 模型，核对式 (5.3)–(5.9) 的符号。

在新生成元下，Poincaré sector 与由 $S,L$ 及中心元组成的 Heisenberg 型 sector 对易。这里发生的是 Poisson 可观测量代数中的非线性坐标变换。相空间仍保留 $S,L$ 这对物理变量，$\widetilde M$ 则扣除了它们对旧 Lorentz 荷的贡献。

## 5.4 Field-Dependent 变换的实际内容

式 (5.3) 的变分为

$$
\begin{aligned}
\delta\widetilde M_a={}&\delta M_a
-C_{a\alpha}\delta L^\alpha\\
&-L^\alpha A_{a\alpha}{}^i\delta T_i
-L^\alpha B_{a\alpha}{}^\beta\delta S_\beta.
\end{aligned}
\tag{5.10}
$$

因此其 Hamiltonian 向量场是

$$
\begin{aligned}
X_{\widetilde M_a}={}&X_{M_a}
-C_{a\alpha}X_{L^\alpha}\\
&-L^\alpha A_{a\alpha}{}^iX_{T_i}
-L^\alpha B_{a\alpha}{}^\beta X_{S_\beta}.
\end{aligned}
\tag{5.11}
$$

这给出一个由场决定系数的 Lorentz 加平移、ordinary supertranslation 和 logarithmic supertranslation 的组合。处理其时空参数时，式 (5.10) 的乘积法则必须一并保留。

报告还陈述了相应 null-infinity 构造与 spatial/null matching [S, 36]。2026 年文献 [FHRZ] 对应这一后续方向；本笔记使用截图中的结论作为报告记录，而式 (5.1)–(5.11) 的具体推导以已读取的 [FHT] 为依据。

# 6. Memory、通量与 Soft Charge 的同一个约束方程

报告第 32 页只概述 BMS Ward identity、soft theorem 和 memory 的联系。下面固定 Bondi 约定，将听报告时关于 flux 的联想写成 balance law；它属于文献补充与计算 [CWWY; SZ]。

取 $q_{AB}$ 为单位圆球面度规，$D_A$ 为其联络，并规定

$$\begin{align}
g_{uu}=-1+\frac{2m}{r}+O(r^{-2}),\qquad g_{AB}=r^2q_{AB}+rC_{AB}+O(1),\qquad q^{AB}C_{AB}=0. \tag{6.1}
\end{align}$$

News 为 $N_{AB}=\partial_uC_{AB}$。假设所用端点极限存在，则 displacement memory 是

$$\begin{align}
\Delta C_{AB}=C_{AB}(+\infty)-C_{AB}(-\infty) =\int_{-\infty}^{+\infty}N_{AB}\,du. \tag{6.2}
\end{align}$$

在远区，自由落体探测器的 transverse separation 的 leading 永久变化正比于 $\Delta C_{AB}/(2r)$。在这一定义中，memory 是 radiation history 的线性积分。

Einstein 方程的 Bondi 约束为

$$\begin{align}
\partial_um =\frac14D_AD_BN^{AB} -\frac18N_{AB}N^{AB}-4\pi G\,\mathcal T_{uu}, \qquad \mathcal T_{uu}:=\lim_{r\to\infty}r^2T_{uu}. \tag{6.3}
\end{align}$$

对 $u$ 积分，得到

$$\begin{align}
\boxed{ D_AD_B\Delta C^{AB} =4\Delta m+ \int du\left(\frac12N_{AB}N^{AB}+16\pi G\mathcal T_{uu}\right).} \tag{6.4}
\end{align}$$

因而 permanent shear 与初末 Coulombic 数据以及辐射能量通量共同满足约束。$N^2$ 是引力波自身的能量贡献，产生 nonlinear null memory；初末物质和质量分布的改变则进入端点数据。单独的总辐射能量只给出其中一个角向投影。

为看清可逆部分，将 shear 分解为 electric 和 magnetic parity：

$$
\begin{aligned}
C_{AB}&=\mathcal E_{AB}c+\mathcal B_{AB}\widetilde c,\\
\mathcal E_{AB}c&=D_AD_Bc-\frac12q_{AB}D^2c,\\
\mathcal B_{AB}\widetilde c
&=\frac12\left(\epsilon_A{}^CD_CD_B\widetilde c
+\epsilon_B{}^CD_CD_A\widetilde c\right).
\end{aligned}
\tag{6.5}
$$

取 $c,\widetilde c$ 只含 $\ell\ge2$ 模式，以固定势的核。球面交换关系给出

$$\begin{align}
D^BC_{AB}^{\mathrm{electric}} =\frac12D_A(D^2+2)c, \qquad D_AD_B\mathcal E^{AB}c =\frac12D^2(D^2+2)c, \tag{6.6}
\end{align}$$

而 $D_AD_B\mathcal B^{AB}\widetilde c=0$。在 $Y_{\ell m}$ 上，最后一个 electric 算子的本征值为

$$\begin{align}
\frac12(\ell-1)\ell(\ell+1)(\ell+2).
\tag{6.7}
\end{align}$$

式 (6.4) 的 $\ell\ge2$ 部分因此决定 electric memory，$\ell=0,1$ 部分则成为能动量 balance。这个分解也解释了为何角动量修正中使用 $c$，并将 ordinary translations 单独保留。

对任意与 $u$ 无关的 supertranslation smearing $f$，令

$$\begin{align}
Q_f(u)=\frac1{4\pi G}\int_{S^2}f\,m(u)\,d\Omega. \tag{6.8}
\end{align}$$

式 (6.3) 直接积分为

$$
\begin{aligned}
\Delta Q_f={}&\frac1{16\pi G}
\int_{S^2}fD_AD_B\Delta C^{AB}\,d\Omega\\
&-\int du\,d\Omega\,f\left(
\frac{N_{AB}N^{AB}}{32\pi G}+\mathcal T_{uu}\right).
\end{aligned}
\tag{6.9}
$$

第一项是 soft、零频 shear 数据，第二项是 hard 能量通量。把 $\mathscr I^-$ 和 $\mathscr I^+$ 的端点数据按所选 matching 条件连接，再量子化相应荷，得到 scattering Ward identity；leading soft-graviton theorem 是这一恒等式的振幅表达 [HLMSt]。memory 则保留了同一零频信息的经典探测器效应。这样，五月 LOOP 报告中记住的 flux 图像和本次报告的对称性图像，由式 (6.9) 接在了一起。

# 7. 三种角动量构造的比较

## 7.1 CWY 的参考结构由什么方程选出

Chen–Wang–Yau 从闭合 spacelike 二曲面 $S$ 的几何数据出发。设 $\sigma$ 是诱导度规，$H$ 为 spacelike 平均曲率向量，$\alpha_H$ 为 mean-curvature gauge 中的 normal-bundle connection。用 Minkowski 空间中的等距嵌入 $X:S\to\mathbb R^{3,1}$ 和常未来单位向量 $T_0$ 作为参考数据，定义

$$\begin{align}
\tau=-\langle X,T_0\rangle, \qquad X^*\eta=\sigma. \tag{7.1}
\end{align}$$

参考曲面的量记作 $H_0,\alpha_{H_0}$。所有梯度和 Laplacian 都使用 $\sigma$，并令 [CWY14, §2]

$$\begin{align}
\rho= \frac{ \sqrt{|H_0|^2+\dfrac{(\Delta_\sigma\tau)^2}{1+|\nabla\tau|^2}} -\sqrt{|H|^2+\dfrac{(\Delta_\sigma\tau)^2}{1+|\nabla\tau|^2}}
}{\sqrt{1+|\nabla\tau|^2}}, \tag{7.2}
\end{align}$$

$$\begin{align}
j_a=\rho\nabla_a\tau -\nabla_a\operatorname{arsinh} \left(\frac{\rho\Delta_\sigma\tau}{|H_0||H|}\right) -(\alpha_{H_0})_a+(\alpha_H)_a. \tag{7.3}
\end{align}$$

Optimal isometric embedding equation 为

$$\begin{align}
\nabla^aj_a=0. \tag{7.4}
\end{align}$$

在满足可容许性要求并选定一个解 $(X,T_0)$ 后，对 Minkowski Killing field $K$ 定义

$$\begin{align}
\mathcal Q_S[K] =-\frac1{8\pi G}\int_S \left(\langle K,T_0\rangle\rho+K^{\top a}j_a\right)dS_\sigma. \tag{7.5}
\end{align}$$

于是旋转与 boost 由同一个参考构造给出。以 $K=T_0$ 检查归一化：$T_0^\top=-\nabla\tau$，故

$$\begin{align}
\mathcal Q_S[T_0] =\frac1{8\pi G}\int_S(\rho+\nabla^a\tau j_a) =\frac1{8\pi G}\int_S\rho, \tag{7.6}
\end{align}$$

最后一步使用闭合性与式 (7.4)。式 (7.1)–(7.5) 明确了选择参考系的方程；对任意曲面求其存在性和选支属于该椭圆问题的分析。下面采用其 null-infinity 大球极限公式作为已知输入，继续计算修正项的物理作用。

## 7.2 Null Infinity 的修正项及不变性的适用范围

为固定 angular aspect 的定义，采用 [CWWY] 的 Bondi–Sachs 展开：

$$
\begin{aligned}
ds^2={}&-UV\,du^2-2U\,du\,dr
+r^2h_{AB}(dx^A+W^Adu)(dx^B+W^Bdu),\\
V={}&1-\frac{2m}{r}+O(r^{-2}),
\qquad h_{AB}=q_{AB}+\frac{C_{AB}}r+O(r^{-2}),\\
W^A={}&\frac{D_BC^{AB}}{2r^2}
+\frac1{r^3}\left(
\frac23\mathcal N^A-\frac1{16}D^A(C_{BC}C^{BC})
-\frac12C^{AB}D^DC_{BD}\right)+O(r^{-4}).
\end{aligned}
\tag{7.7}
$$

这里 $\mathcal N_A$ 是 angular aspect，$N_{AB}$ 仍表示 news。对球面 rotation Killing field $Y^A$，恢复共同的 $1/(8\pi G)$ 归一化后，定义

$$
\begin{aligned}
J_{\mathrm B}[Y]
&=\frac1{8\pi G}\int_{S^2}Y^A
\left(\mathcal N_A-\frac14C_{AB}D_DC^{DB}\right)d\Omega,\\
J_{\mathrm{CWY}}[Y]
&=J_{\mathrm B}[Y]
-\frac1{8\pi G}\int_{S^2}cY^AD_Am\,d\Omega.
\end{aligned}
\tag{7.8}
$$

本文的 $J_{\mathrm B}$ 专指式 (7.8) 第一行这个 conventional Bondi 型表达式；其他文献若重新定义 angular aspect，应先按式 (7.7) 转换。准局域参考结构在大球极限中产生的额外项是 $-cD_Am$ [CWWY, 式 (5)]。

CWWY 对 total flux 的定理使用 news 衰减

$$\begin{align}
N_{AB}=O(|u|^{-1-\varepsilon}),\qquad\varepsilon>0, \tag{7.9}
\end{align}$$

以及所需角向正则性与端点极限。令 $u=\bar u+f(x)$，并将切于两套 cuts 的 rotation fields 配对为

$$\begin{align}
\bar Y=Y+Y(f)\partial_u. \tag{7.10}
\end{align}$$

对 $\Delta J=J(+\infty)-J(-\infty)$，其变换规律为

$$\begin{align}
\Delta J_{\mathrm{CWY}}[\bar Y] -\Delta J_{\mathrm{CWY}}[Y] =-\frac1{4\pi G}\int_{S^2} f_{\ell\le1}Y^AD_A\Delta m\,d\Omega. \tag{7.11}
\end{align}$$

右端只含 ordinary translations，保留了改变原点时的预期规律。对 pure supertranslations，总 flux 相同。处于 nonradiative 时段时，文献另外给出 cut 荷的相应变换定理。一般 radiative 中间 cuts 的比较应同时保留其位置与通量。

修正项的机制在端点上很直接：$\bar c=c-2f_{\ell\ge2}$，而 $m_\pm$ 在上述坐标对应下相同。因此 $-cD_Am$ 给 conventional total flux 的变换增加

$$\begin{align}
\frac1{4\pi G}\int f_{\ell\ge2}Y^AD_A\Delta m\,d\Omega, \tag{7.12}
\end{align}$$

恰好取消 pure-supertranslation 部分。这样，式 (7.8) 的额外项有一个可计算的用途。

## 7.3 双星四极近似：修正项为何为零

He–Wu–Xie [HWX] 检验的是 **linearized quadrupole approximation**。把含引力常数的 STF radiative quadrupole 记作 $Q_{ij}(u)$；在标准慢源约定下 $Q_{ij}=G\ddot I^{\mathrm{STF}}_{ij}$。设 $n^i$ 为单位径向向量，$e_A^i=D_An^i$，$P_{ij}=\delta_{ij}-n_in_j$，则

$$\begin{align}
Q^{\mathrm{TT}}_{ij} =\left(P_i{}^kP_j{}^l-\frac12P_{ij}P^{kl}\right)Q_{kl}. \tag{7.13}
\end{align}$$

该近似的 shear 和 electric potential 可写成

$$\begin{align}
C_{AB}=2e_A^ie_B^jQ^{\mathrm{TT}}_{ij}, \qquad c=Q_{ij}n^in^j. \tag{7.14}
\end{align}$$

利用 $D_AD_Bn^i=-q_{AB}n^i$，直接得到

$$\begin{align}
D_AD_Bc=2Q_{ij}e_A^ie_B^j-2q_{AB}c, \qquad D^2c=-6c. \tag{7.15}
\end{align}$$

因此 $\mathcal E_{AB}c=2Q_{ij}e_A^ie_B^j+q_{AB}c$，恰好是式 (7.14) 的 TT 投影。linearized Bondi 约束给出文中对应的 mass aspect

$$\begin{align}
m=m_0+3c, \tag{7.16}
\end{align}$$

其中 $m_0$ 在球面上为常数。将它代入角动量差，得到

$$
\begin{aligned}
J_{\mathrm{CWY}}[Y]-J_{\mathrm B}[Y]
&=-\frac3{8\pi G}\int cY^AD_Ac\,d\Omega\\
&=-\frac3{16\pi G}\int D_A(Y^Ac^2)\,d\Omega=0.
\end{aligned}
\tag{7.17}
$$

此处只使用闭合球面和 $D_AY^A=0$。式 (7.15) 已对一般含五个独立分量的 STF $Q_{ij}$ 作 SymPy 检查。结果所覆盖的近似阶就是式 (7.13)–(7.16)；更高 PN 阶需要重新计算相应 Bondi 数据。

## 7.4 一个比四极更一般的线性消失判据

由式 (6.3)、(6.6)，在线性近似且去掉该阶物质通量源后，

$$\begin{align}
m(u)=m_*+\mathcal Ac(u),\qquad \mathcal A=\frac18D^2(D^2+2), \tag{7.18}
\end{align}$$

$m_*$ 是由初始数据决定的角向积分常数。$\mathcal A$ 对球面 $L^2$ 内积自伴，并与 rotation $Y=Y^AD_A$ 对易；$Y$ 则是反自伴的。故

$$
\begin{aligned}
I:=\langle c,Y\mathcal Ac\rangle
&=-\langle Yc,\mathcal Ac\rangle\\
&=-\langle\mathcal AYc,c\rangle
=-\langle Y\mathcal Ac,c\rangle=-I,
\end{aligned}
\tag{7.19}
$$

从而 $I=0$，并得到

$$\begin{align}
J_{\mathrm{CWY}}[Y]-J_{\mathrm B}[Y] =-\frac1{8\pi G}\int cY^AD_Am_*\,d\Omega. \tag{7.20}
\end{align}$$

当 $m_*$ 为常数时，任意线性 electric 多极都满足这一消失判据。它是从 linearized constraint 推出的条件性恒等式，四极结果对应 $\mathcal A|_{\ell=2}=3$。

同一计算还定位了非线性偏差的来源。对完整式 (6.3) 定义

$$
\begin{aligned}
\mu(u,x)={}&m(u_0,x)-\mathcal Ac(u_0,x)\\
&-\int_{u_0}^{u}du'\left(
\frac18N_{AB}N^{AB}+4\pi G\mathcal T_{uu}\right)(u',x).
\end{aligned}
\tag{7.21}
$$

则 $m=\mathcal Ac+\mu$，式 (7.19) 仍是每个 cut 上的球面恒等式。因此

$$\begin{align}
\boxed{J_{\mathrm{CWY}}[Y]-J_{\mathrm B}[Y] =-\frac1{8\pi G}\int cY^AD_A\mu\,d\Omega.} \tag{7.22}
\end{align}$$

这将差异归结为 electric shear 与独立初始质量数据、累积 hard flux 的角向配对。式 (7.22) 使用了式 (6.3) 的 Bondi 展开及光滑球面数据；它为实际高阶波形计算提供了直接检验量。

例如采用辐射振幅展开 $c=\varepsilon c_1+O(\varepsilon^2)$、$N=\varepsilon N_1+O(\varepsilon^2)$，并选定球面常数 $\mu_0=M$ 及 $\mu_1=0$。若该阶为真空，则

$$
\begin{aligned}
\mu_2(u)&=\mu_2(u_0)-\frac18\int_{u_0}^{u}N_{1,AB}N_1^{AB}\,du',\\
J_{\mathrm{CWY}}-J_{\mathrm B}
&=-\frac{\varepsilon^3}{8\pi G}\int c_1Y\mu_2\,d\Omega
+O(\varepsilon^4).
\end{aligned}
\tag{7.22a}
$$

在这些初态条件下，修正的首个可能贡献由三阶振幅数据给出。这里的 $\varepsilon$ 是辐射振幅计数；将其换成具体双星的 PN 计数，还需使用该源的波形与尺度关系。

一个具体的球面数据检验取

$$\begin{align}
c=A\,n_xn_z,\qquad m=m_0+B\,n_yn_z, \qquad Y=\partial_\phi. \tag{7.23}
\end{align}$$

于是 $Ym=B n_xn_z$，并有

$$\begin{align}
\int cYm\,d\Omega=\frac{4\pi}{15}AB, \qquad J_{\mathrm{CWY}}-J_{\mathrm B}=-\frac{AB}{30G}. \tag{7.24}
\end{align}$$

此例证明修正泛函在光滑球面数据上可取非零值。将这组数据嵌入具体辐射 spacetime，还需给出满足全部约束、端点条件和 bulk 正则性的演化。

## 7.5 MWW 的 Memory Subtraction 如何恢复 CWY

Mao–Wu–Wu 的修订稿 [MWW, v3, §3] 已经给出与 CWY 的对应。其比较设定是：初态选 shear-free good cut，辐射通过后回到 stationary 状态，新增 shear 是 electric memory，普通 translation 自由度单独固定。

在 MWW 的 $u'=u+f$ 约定下，消去最终 shear 的 supertranslation 满足

$$\begin{align}
f=-\frac c2, \qquad C_{AB}=\mathcal E_{AB}c=-2\mathcal E_{AB}f. \tag{7.25}
\end{align}$$

他们将最终数据变换到 good cut，处理 Weyl 分量及 cut 坐标的变换后，积分中的角动量表达式成为

$$\begin{align}
J_{\mathrm{MWW}}[Y] =\frac1{8\pi G}\int Y^A \left(\mathcal N_A-2mD_Af\right)d\Omega. \tag{7.26}
\end{align}$$

使用式 (7.25)，再沿 rotation 分部积分，得到

$$\begin{align}
J_{\mathrm{MWW}}[Y] =\frac1{8\pi G}\int Y^A \left(\mathcal N_A-cD_Am\right)d\Omega. \tag{7.27}
\end{align}$$

剩下要比较的是 CWY 的 quadratic shear 项。令 $q_c=(D^2+2)c$，对 electric shear 由式 (6.6) 有 $D^BC_{AB}=D_Aq_c/2$。于是

$$
\begin{aligned}
\int Y^AC_{AB}D_DC^{BD}
&=\frac12\int Y^AC_{AB}D^Bq_c\\
&=-\frac12\int q_c\left[(D^BY^A)C_{AB}
+Y^AD^BC_{AB}\right]\\
&=-\frac14\int q_cY^AD_Aq_c
=-\frac18\int D_A(Y^Aq_c^2)=0.
\end{aligned}
\tag{7.28}
$$

第二行中的第一项因 $C_{AB}$ 对称、$D_BY_A$ 反对称而消失。故在上述 stationary electric-memory 端点条件下，

$$\begin{align}
J_{\mathrm{MWW}}[Y]=J_{\mathrm{CWY}}[Y]. \tag{7.29}
\end{align}$$

这段对应使用 good-cut 的实际 supertranslation 和式 (7.28)，为两种构造之间给出了可重建的连接。magnetic shear、一般辐射中间 cut 以及完整 Lorentz boost 荷的比较应带着各自额外条件进行。

## 7.6 FHT 与 CWY 之间具体还要比较什么

FHT 的输入是扩展渐近相空间及 $S,L$ 中心配对；CWY 的输入是曲面的参考嵌入与 electric shear potential。两者都能消去指定 pure-supertranslation 依赖，而一个共同的对易性条件仍允许多个不同泛函。

选定共同的解类、观察者、角向 frame 与 cuts 后，比较的对象应是拉回同一场空间的

$$\begin{align}
\Delta J[Y] =J_{\mathrm{CWY}}[Y] -\left(M_Y-L^\alpha\{M_Y,S_\alpha\}\right). \tag{7.30}
\end{align}$$

要计算它，首先需要从 FHT 渐近数据到 Bondi 数据 $(m,\mathcal N_A,c,\widetilde c)$ 的明确映射，并标明 logarithmic 模式在该映射下对应的变量。其次要将参考零点和角点项统一。若两边在同一 $\Omega$ 上都是 Hamiltonian，则

$$\begin{align}
\delta\Delta J[Y] =-\iota_{X_{J_{\mathrm{CWY}}}-X_{\widetilde M_Y}}\Omega. \tag{7.31}
\end{align}$$

式 (7.31) 将比较变成一个具体检验：两个构造是否生成同一个 dressed rotation；若差异仅为预辛退化方向，则 $\Delta J$ 在连通分支上为常数，再由参考解固定。当前笔记已完成 FHT 重定义、MWW–CWY 端点对应以及 CWY–Bondi 的四极和一般球面检验；FHT 到 Bondi 数据的完整映射是进一步完成式 (7.30) 的主要输入。

# 8. 作用量的 Torsor 结构与 Timelike Sewing

## 8.1 有限性与几何取值空间

报告中的 finite action 要求涉及径向极限和允许变分 [S, 25–29]。Deligne–Freed 则说明，在带 gauge/topological 耦合的系统中，作用量的内禀取值可以是边界 torsors 之间的态射 [DF, §6.1]。两者分别规定解析极限和全局几何对象。

以带电粒子的 connection 耦合为例，选定局部平凡化后可以将 $-q\int_\gamma A$ 写成实数；更内禀的指数化对象是起末端关联线之间的平行移动

$$\begin{align}
U_\gamma:\mathcal L_{x_i}\longrightarrow\mathcal L_{x_f}.
\tag{8.1}
\end{align}$$

边界平凡化改变时，数值代表随之改变，而态射仍具有明确的变换规律。Deligne–Freed 同时讨论 $\mathbb R$-torsor 与指数化后的 circle torsor；具体使用哪一种取决于作用量的周期和耦合归一化。

在具有 prequantum line 的相空间描述中，局部 potential 可作为 connection 的代表。例如取 $\nabla=\delta+i\theta/\hbar$，其曲率为 $i\Omega/\hbar$。选择平凡化为 $\theta$ 提供局部表示；gluing 要使用这些表示之间的过渡数据。

对于非紧边界，若一个 cutoff action 的局部代表具有发散，仍要规定反项与极限：

$$\begin{align}
S_{\mathrm{ren}} =\lim_{R\to\infty}(S_R+S_{\mathrm{ct},R}). \tag{8.2}
\end{align}$$

Torsor/line 结构负责不同代表的相容性，式 (8.2) 负责所选代表的解析收敛。两项条件在同一个理论中可以同时出现。

## 8.2 时间复合与沿界面的对偶配对

当边界被分成 initial/final surfaces 时，式 (8.1) 给出时间复合 $U_{21}U_{10}$。沿空间方向切开的两个区域则共享一张界面 $\Gamma$，它们对 $\Gamma$ 诱导相反取向。Freed 的 Chern–Simons gluing law 因而采用对偶配对 [F92, 式 (45)]：对已经匹配的界面配置 $a$，

$$\begin{align}
\mathcal L_{\bar\Gamma,a}\simeq\mathcal L_{\Gamma,a}^{*}, \qquad \mathcal A_M =\langle\mathcal A_{M_1},\mathcal A_{M_2}\rangle_{\mathcal L_{\Gamma,a}}. \tag{8.3}
\end{align}$$

这里 $\mathcal A$ 表示指数化的经典作用量；其他外边界的 line factors 继续保留。该拓扑构造按取向定义配对。将它用于具有时空度规的 timelike interface 时，还要说明该模型的边界数据、角点和相应 line 的构造。

尤其应区分式 (8.3) 与量子路径积分中的共享数据积分。后者的形式为

$$\begin{align}
Z_M\;\sim\;\int\mathcal D a\, \langle Z_{M_1}[a],Z_{M_2}[a]\rangle, \tag{8.4}
\end{align}$$

其定义还包含 measure、gauge fixing 或 quotient、允许的 trace 数据以及 corner matching。下面在经典引力中显式展示释放共享数据的一步。

## 8.3 固定动量 History 后释放界面数据

沿 timelike 人工界面 $\Gamma$ 切开 $M=M_1\cup_\Gamma M_2$。在已经选定的界面识别下，$\gamma_{i,ab}$ 是诱导度规，$\pi_i^{ab}$ 是相对于各自 outward 法向、与协变 $\gamma_{ab}$ 配对的 Brown–York 动量密度：

$$\begin{align}
\pi_i^{ab} =\frac{\sqrt{-\gamma_i}}{16\pi G} \left(K_i\gamma_i^{ab}-K_i^{ab}\right). \tag{8.5}
\end{align}$$

包含 GHY 和必要 joints 的区域 Dirichlet action 满足

$$\begin{align}
\left.\delta S_{D,i}\right|_\Gamma =\int_\Gamma\pi_i^{ab}\delta\gamma_{i,ab} +\text{时间端点与角点项}. \tag{8.6}
\end{align}$$

采用现有 AdS$_3$ timelike sewing 笔记的源约定 [Gluing]，定义

$$\begin{align}
S_i[g_i;p_i]=S_{D,i}[g_i] -\int_\Gamma p_i^{ab}\gamma_{i,ab}. \tag{8.7}
\end{align}$$

于是界面变分成为

$$\begin{align}
\delta S_i|_\Gamma =\int_\Gamma \left[(\pi_i^{ab}-p_i^{ab})\delta\gamma_{i,ab} -\gamma_{i,ab}\delta p_i^{ab}\right] +\text{角点项}. \tag{8.8}
\end{align}$$

先固定 $p_i$ 定义独立区域问题，得到 $\pi_i=p_i$。随后识别

$$\begin{align}
p_1=p,\qquad p_2=-p \tag{8.9}
\end{align}$$

并释放共同 $p$。两侧 on-shell 变分之和为

$$\begin{align}
\delta(S_1+S_2)|_\Gamma =\int_\Gamma(\gamma_{2,ab}-\gamma_{1,ab})\delta p^{ab} +\text{角点项}. \tag{8.10}
\end{align}$$

因此 stationary sewing 给出

$$\begin{align}
\boxed{\gamma_1=\gamma_2,\qquad\pi_1+\pi_2=0.} \tag{8.11}
\end{align}$$

第一式来自释放共同源，第二式来自各区域方程和相反 outward orientation。在无界面物质源的设置下，它们是诱导几何与第一正常响应的匹配。若改从 Dirichlet histories 开始，先匹配 $\gamma$ 再释放它，则由 $(\pi_1+\pi_2)\delta\gamma$ 得到同一动量条件。

## 8.4 辛通量、角点与 Shape Data

由式 (8.6) 取场空间外微分，在 matching locus 上有

$$\begin{align}
\delta\pi_1^{ab}\wedge\delta\gamma_{1,ab} +\delta\pi_2^{ab}\wedge\delta\gamma_{2,ab}=0. \tag{8.12}
\end{align}$$

这给出人工 timelike 面的辛通量抵消。完整区域 potential 仍为式 (2.11)，所以界面端点的 $C$ 与 joint variations 也应一同匹配。对本文的 Einstein–GHY 约定，其局部表达为 [HW; Gluing]

$$\begin{align}
C=\iota_{\mathfrak c}\epsilon_\Gamma, \qquad \mathfrak c^\mu=-\frac1{16\pi G} \gamma^{\mu\nu}n^\alpha\delta g_{\nu\alpha}. \tag{8.13}
\end{align}$$

在 AdS$_3$ 直径模型中，背景界面全测地使 $K_{ab}=0$；式 (8.13) 则直接保留 mixed normal–tangential 度规变分。区域辛结构的比较因而同时使用式 (8.12) 与这个 corner potential。

若界面嵌入也变化，应先选择抽象界面及嵌入 $\chi_i:\Gamma\to M_i$，把式 (8.11) 写成 $\chi_1^*g_1=\chi_2^*g_2$ 以及相应动量匹配。连接理论还需要 bundle/frame transporter。于是 sewing 的实际输入包含允许的 timelike histories、嵌入与 frame 识别、正常响应以及 corners。

这确定了作用量的对偶配对在此 sewing 构造中的位置：它处理 gauge 平凡化与取向的全局相容性；式 (8.8)–(8.12) 处理界面释放及动力学匹配。regional charge algebra 的完备性则进一步涉及这些数据能否由所选荷重建。仓库的线性 AdS$_3$ 直径基准已将非零界面响应用于恢复全局模式；一般非线性 Einstein 初边值问题的可解性需要独立分析。

# 9. 从本次报告留下的三个具体计算任务

报告的两次扩展有一个共同结构：先允许新的边界物理数据，再验证作用量与生成元，最后计算新的荷代数。第一次扩展由 parity twist 恢复 BMS，第二次扩展由 logarithmic modes 提供中心共轭变量，并使 Lorentz 荷可以按式 (5.3) 重定义。基于已经写出的公式，后续计算可以集中在以下三个对象。

**同一解上的角动量差。** 以式 (7.30) 为目标，选一个带明确 soft 与 log 数据的共同渐近解类，建立 FHT–Bondi 场变量映射；再同时计算 $\widetilde M_Y$ 与 $J_{\mathrm{CWY}}[Y]$。式 (7.31) 可以先用于比较变分，参考解再固定常数。

**产生非零 CWY 修正的辐射历史。** 由式 (7.22) 出发，给定满足 constraints 的 news 与初态，计算 $\mu$ 的角向部分及其与 $c$ 的配对。式 (7.24) 提供一个非零函数泛函的目标值；把它实现为可容许辐射解，才会推进到 [HWX] 所讨论的物理例子。

**Timelike sewing 的边界几何对象。** 以现有区域作用量和 joint prescription 为输入，构造界面 line/torsor 的过渡律，检验其对偶配对是否重现式 (8.10) 与完整 corner potential。这个比较直接涉及界面 histories 和 shape/frame data；第 2.3 节的 Poisson 荷空间可用于检验所选生成元究竟分辨了其中哪些数据。

这些任务共用一个要求：比较具体场空间上的函数、变分和 Hamiltonian 向量场。报告所提供的代数结构因此既能组织这些问题，也给出了可直接计算的等式。

# 附录 A. Timelike 向量场、观察者能量与 dS

本附录补全听报告时提出的“考虑所有未来 timelike 向量生成的代数”。在 $1+1$ Minkowski 空间取

$$\begin{align}
X=\partial_t,\qquad Y=\partial_t+\frac12\sin t\,\partial_x. \tag{A.1}
\end{align}$$

二者未来 timelike，因为 $g(Y,Y)=-1+\sin^2t/4\le-3/4$。其括号为

$$\begin{align}
[X,Y]=\frac12\cos t\,\partial_x, \tag{A.2}
\end{align}$$

在 $\cos t\ne0$ 处是 spacelike。更强的结论如下。

**命题 A.1。** 在光滑、time-oriented、paracompact、至少二维的 Lorentz 流形上，所有光滑未来 timelike 向量场的实线性张成是全部光滑向量场。

**证明。** 取光滑未来单位 timelike 场 $T$。任意光滑场 $Z$ 唯一分解为

$$\begin{align}
Z=aT+V,\qquad a=-g(Z,T),\qquad g(V,T)=0. \tag{A.3}
\end{align}$$

定义光滑正函数

$$\begin{align}
\lambda=1+\sqrt{1+a^2}+\sqrt{1+g(V,V)}. \tag{A.4}
\end{align}$$

它满足 $\lambda>|a|+\sqrt{g(V,V)}$。于是 $\lambda T$ 与 $(\lambda+a)T+V$ 都未来 timelike，而

$$\begin{align}
Z=(\lambda T+Z)-\lambda T. \tag{A.5}
\end{align}$$

这就给出所需线性分解。$\square$

该命题采用全部光滑向量场；固定 asymptotic falloff、边界保持条件或 Hamiltonian 可积性后，应重新判断式 (A.4) 的两个场是否属于允许类。因而“由 timelike 场生成代数”的物理内容来自这些额外可容许条件。

在 global dS$_D$ 中，

$$\begin{align}
ds^2=-d\tau^2+\ell^2\cosh^2(\tau/\ell)d\Omega_{D-1}^2 \tag{A.6}
\end{align}$$

已给出全局未来 timelike 场 $\partial_\tau$。同时，全局 timelike Killing 场的障碍可直接从嵌入看出。将 dS 写成

$$\begin{align}
-(X^0)^2+\sum_{i=1}^{D}(X^i)^2=\ell^2, \qquad X^0=\ell\sinh(\tau/\ell),\quad X^i=\ell\cosh(\tau/\ell)n^i. \tag{A.7}
\end{align}$$

其 Killing 场由 ambient Lorentz 生成元给出 $K^A=\omega^A{}_BX^B$。在 $\tau=0$ 上，未来法向分量为

$$\begin{align}
K^0=\ell\omega^0{}_in^i. \tag{A.8}
\end{align}$$

这是球面上的奇函数；若非零则在 antipodal 点变号，并在某些点为零；若恒零则 $K$ 在该切片处处切向。因此每个 Killing 场都会在这张切片的某处成为 spacelike 或零向量。一个 static-patch 时间生成元仍可在其 patch 内 timelike，并在视界上变为 null。这里需要区分的是全局 causal vector field、global isometry 与选定区域的 Hamiltonian 时间。

# 附录 B. LQG 的维数选择与三维量子群

这条讨论来自对 LQG 文献为何多以四维为目标的观察，属于报告之外的补充。研究者的署名与论文采用的量子化路线应分别判断；例如关于 null infinity 的经典几何工作可以独立于 loop 构造。

## B.1 三空间维的特殊 Connection 变量

在三空间维，$\mathfrak{so}(3)$ 的反对称内指标可用 $\epsilon^i{}_{jk}$ 对偶为一个向量指标，由此形成熟悉的 Ashtekar–Barbero 连接

$$\begin{align}
A_a^i=\Gamma_a^i+\gamma K_a^i. \tag{B.1}
\end{align}$$

一般空间维 $D$ 中，$\dim\mathfrak{so}(D)=D(D-1)/2$ 与向量维数 $D$ 相等的非平凡情形是 $D=3$。因此保持式 (B.1) 的指标结构会特别选择 $3+1$ 维。

Bodendorfer–Thiemann–Thurn [BTT] 通过扩展相空间，采用高维 connection 与 simplicity constraints 构造任意维变量。simplicity surface 上的典型动量形状为

$$\begin{align}
\pi^{aIJ}=2n^{[I}E^{a|J]},\qquad n_IE^{aI}=0. \tag{B.2}
\end{align}$$

其 gauge 与 simplicity reduction 恢复对应维数的 ADM 数据。这个结果提供高维 loop 运动学的起点；动力学约束及物理内积仍需在具体量子模型中处理。

## B.2 三维 Hamiltonian 约束与 Quantum-Group 数据

三维 loop 构造中，宇宙学常数改变 holonomy 的代数结构。Noui–Perez–Pranzetti [NPP] 从正 $\Lambda$ 的 $2+1$ 维 canonical holonomies 得到与 Kauffman crossing 相关的量子交换规则。Bonzom–Dupuis–Girelli [BDG] 则在 Euclidean 三维、负 $\Lambda$、实 $q$ 的框架中，将离散 Hamiltonian 约束写成 spin 标签的差分方程，其局部解由 quantum $6j$ 数据组织。

这些构造的直接对象是具体签名、实形式和表示类别中的离散约束。与 Lorentzian AdS$_3$ 比较时，应同时转换 gauge group、表示选择、内积与边界条件；仅有相同维数和 $\Lambda<0$ 仍保留这些比较步骤。

Dupuis–Freidel–Girelli–Osumanu–Rennert [DFGOR] 进一步讨论连续经典变量的选择怎样显出依赖宇宙学常数的对称结构。离散化后首先出现 classical Poisson–Lie 数据，量子化才将其实现为 quantum-group 数据。这使“选择经典变量—离散化—量子化”成为一条可逐项比较的路线。

## B.3 Fock–Rosly 的选择保留在哪一层

对 Chern–Simons 的 graph-holonomy 描述，Fock–Rosly [FR] 使用 classical $r$-matrix，其对称部分由作用量的不变双线性型固定。写成

$$\begin{align}
\frac12(r+r^{21})=t, \tag{B.3}
\end{align}$$

其中 $t$ 是所选约定下对应的 Casimir 张量。graph 上的未约化 Poisson bracket 含 $r$ 的选择；在满足构造条件并约化到 gauge-invariant flat-connection moduli 后，得到相应 Goldman bracket。

因此，比较区域数据时要区分 unreduced graph variables、reduced observables 与量子 braiding。相同 reduced classical bracket 可以来自不同扩展描述；量子层面的等价还涉及表示、framing 和可能的 twist。这里的 V. V. Fock 是 [FR] 的作者；报告引用边界条件观点的则是 Vladimir A. Fock。

# 附录 C. AdS$_3$ 的 Braid、Topological Spin 与 Chiral 配对

上午关于 pure braids 的讨论与三维引力的量子化在这里相接。以下给出可直接验算的两个层次：holonomy 的 classical braid action，以及量子态的 chiral monodromy 配对。

## C.1 从 Twist 到 Mutual Braiding

在 toric-code 例子中，$e$、$m$ 的 topological spins 都为 $+1$，但 $e$ 绕 $m$ 一圈产生 $-1$。用 string operators 表达时，$e$、$m$ 路径相交一次，交点处的 Pauli $X,Z$ 反对易，直接给出这个符号 [Kitaev]。这说明单个激发的 twist 与两个激发的 mutual monodromy 是分别需要计算的数据。

相同区分适用于 chiral 配对。外部 scalar 的 $h=\bar h$ 固定其左右 spin 差；要判断 pure braid 对整个多粒子态空间的作用，还须确定中间通道与 monodromy representation。

## C.2 Hurwitz Action 的一个精确检验

固定 $SL(2,\mathbb R)$ holonomy 的 braid convention

$$\begin{align}
\sigma_1:(A,B)\longmapsto(ABA^{-1},A).
\tag{C.1}
\end{align}$$

两次作用后，令 $H=AB$，直接相乘得到

$$\begin{align}
\sigma_1^2:(A,B)
\longmapsto(HAH^{-1},HBH^{-1}).
\tag{C.2}
\end{align}$$

对两个 punctures，若模去同时共轭，这个 pure braid 在该 unframed character variety 上作用平凡。加入第三个 holonomy 后，

$$\begin{align}
(A,B,C)\longmapsto(HAH^{-1},HBH^{-1},C).
\tag{C.3}
\end{align}$$

第三项固定，因而可以用跨越第一、第三个 punctures 的 trace 观察作用。取

$$
A=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\quad
B=\begin{pmatrix}0&-4\\1/4&0\end{pmatrix},\quad
C=\begin{pmatrix}1&-2\\1&-1\end{pmatrix}.
\tag{C.4}
$$

三者均满足 determinant 为 $1$、trace 为 $0$，属于 elliptic conjugacy classes。计算得到

$$\begin{align}
\operatorname{tr}(AC)=-3, \qquad \operatorname{tr}(HAH^{-1}C)=-\frac{513}{16}. \tag{C.5}
\end{align}$$

总乘积 $ABC$ 保持不变，个别 conjugacy classes 也保持不变，而式 (C.5) 的 gauge-invariant trace 改变。因此这个 pure braid 在三 punctures 的相应 character variety 上作用非平凡。

这里使用的是一般 elliptic-holonomy representation space。将该例用于某个正几何或 conical-defect Teichmüller component，需要另行检验其几何实现、总锥角条件与边界 framing。它提供的是一个明确的 holonomy 检验，而具体 AdS$_3$ 扇区需要自己的数据。

## C.3 BFK 的 Pure-Braid 步骤需要怎样的量子输入

Bourne–Fliss–Knighton [BFK, §4.2] 从

$$\begin{align}
1\longrightarrow P_n\longrightarrow B_n \longrightarrow S_n\longrightarrow1
\tag{C.6}
\end{align}$$

出发，其中 $P_n$ 是端点 permutation 为恒等的 pure braids。该文使用 pure braid 在 chiral 波函数上产生相位、并由 scalar 左右 weights 相等使其抵消的论证，随后用 $S_n$ 平均代替 braid 平均。这是该文的具体约化步骤。

检验它所需的量子对象可以写得很明确。设某个 pure braid 在 chiral 空间上由 $U$ 表示，另一侧由 $\bar U$ 表示，则完整张量积上的作用为 $U\otimes\bar U$。例如

$$
U=\begin{pmatrix}1&0\\0&e^{i\alpha}\end{pmatrix}
\quad\Longrightarrow\quad
U\otimes\bar U
=\operatorname{diag}(1,e^{-i\alpha},e^{i\alpha},1).
\tag{C.7}
$$

如果实际选定整个 chiral 空间上都具有同一相位，则配对后作用平凡；如果存在不同通道相位，则要指定保留哪些左右配对。四点 block 的局部形式

$$\begin{align}
\mathcal F_p(z)=z^{h_p-h_1-h_2}(1+O(z)) \tag{C.8}
\end{align}$$

已经显示中间权重 $h_p$ 对 monodromy 的影响。换通道还涉及 fusion transformation。

完整 correlator 的单值性是另一种精确条件。对

$$\begin{align}
G=\mathcal F^\dagger K\mathcal F, \qquad U^\dagger KU=K, \tag{C.9}
\end{align}$$

配对保持不变；式 (C.7) 则可同时在整个张量积上作用非平凡。quantum Teichmüller theory 与 Liouville blocks 的 mapping-class-group 联系 [Teschner] 为比较这些表示提供了工具，其适用表示与参数范围需随模型固定。

普通标量 Fock space 的 Bose symmetrization 规定了运动学上的 permutation statistics。conical defects 的量子化还带有 holonomy、framing 和可能的 gravitational dressing 数据。针对 [BFK] 的进一步检查应明确实际 $\mathcal H_n$、所用 chiral representation、左右配对与 gauging 后子空间，并在那里计算 $P_n$。这种检验同时尊重 ordinary scalar 的 Bose 输入和几何量子化中额外出现的结构。

# 附录 D. 截图索引、验证范围与文献

## D.1 截图索引

| 上传 PDF 页码 | 原 PPT 页码 | 内容 |
|:--|:--|:--|
| 1–6 | 7–12 | 能量、proper/improper、允许变换与约束 |
| 7–14 | 14–21 | 表面生成元、ideal、Poisson 荷结构、observables、BMS |
| 15–23 | 23–31 | ADM action、Fock、有限性、parity twist、空间无穷远 BMS |
| 24–27 | 32–35 | soft/memory、BMS 模结构、角动量 ambiguity |
| 28 | 36 | logarithmic 扩展、中心配对、Lorentz 重定义 |
| 29–30 | 37–38 | 总结与 improper gauge fixing |

原第 13、22 页及开头 1–6 页位于此次截图范围之外。原第 35 页已包含在上传 PDF 第 27 页。本文使用截图实际出现的公式；它们省略的技术步骤由带出处的文献补充或本文明确列出的计算承担。

## D.2 随文符号检查

`verify_formulas.py` 使用 SymPy 进行 exact arithmetic，检查式 (4.3) 的 boost 混合、一般 STF quadrupole 的式 (7.15)、式 (7.24) 的球面积分、FHT 重定义的有限 Lorentz 实现，以及式 (C.2)–(C.7) 的 holonomy 和张量积恒等式。脚本将逐项结果写入 `verification_results.json`。

连续相空间上的发散估计、Einstein 初边值问题、无限模求和的函数空间以及文献之间的完整等价，分别由正文注明的解析条件控制。代码检验的对象是这些推导中展示的有限表达式。

## D.3 参考文献

**[S]** Marc Henneaux, *Asymptotic symmetries in gauge theories with emphasis on gravity*, SIMIS, Shanghai, 5 November 2026. 本次报告的 30 页截图 PDF；原页码见 D.1。

**[HW]** Daniel Harlow and Jie-qiang Wu, *Covariant phase space with boundaries*. ArXiv:1906.08616，使用 v4。重点为式 (1.3)–(1.6)、Einstein gravity 例子和 asymptotic boundaries 讨论。
<https://arxiv.org/abs/1906.08616>

**[HT18]** Marc Henneaux and Cédric Troessaert, *BMS Group at Spatial Infinity: the Hamiltonian (ADM) approach*, arXiv:1801.03718。
<https://arxiv.org/abs/1801.03718>

**[HT19]** Marc Henneaux and Cédric Troessaert, *The asymptotic structure of gravity at spatial infinity in four spacetime dimensions*, arXiv:1904.04495，使用 v2，尤其 §§III、VI、VII。本文的 Cartesian twisted-parity 公式取自该综述。
<https://arxiv.org/abs/1904.04495>

**[FHT]** Oscar Fuentealba, Marc Henneaux and Cédric Troessaert, *Logarithmic supertranslations and supertranslation-invariant Lorentz charges*, JHEP 02 (2023) 248, arXiv:2211.10941，使用 v2；尤其 §9.1，式 (220)–(230)。
<https://arxiv.org/abs/2211.10941>

**[FHRZ]** Oscar Fuentealba, Marc Henneaux, Sébastien Robert and Céline Zwikel, *Logarithmic supertranslations as asymptotic symmetries of gravity at null infinity*, arXiv:2609.11785。此条作为原第 36 页相关后续阅读；本文对 null-infinity 延拓的记录依据报告，详细证明留待全文核对。
<https://arxiv.org/abs/2609.11785>

**[SZ]** Andrew Strominger and Alexander Zhiboedov, *Gravitational Memory, BMS Supertranslations and Soft Theorems*, JHEP 01 (2016) 086, arXiv:1411.5745。
<https://arxiv.org/abs/1411.5745>

**[HLMSt]** Temple He, Vyacheslav Lysov, Prahar Mitra and Andrew Strominger, *BMS supertranslations and Weinberg’s soft graviton theorem*, JHEP 05 (2015) 151, arXiv:1401.7026。
<https://arxiv.org/abs/1401.7026>

**[CWY14]** Po-Ning Chen, Mu-Tao Wang and Shing-Tung Yau, *Conserved quantities in general relativity: from the quasi-local level to spatial infinity*, arXiv:1312.0985，使用 v2，§2。
<https://arxiv.org/abs/1312.0985>

**[CWWY]** Po-Ning Chen, Mu-Tao Wang, Ye-Kai Wang and Shing-Tung Yau, *Supertranslation invariance of angular momentum*, arXiv:2102.03235，尤其式 (1)、(3)、(5) 及 Theorems 1–2。原文整体省略的 $1/(8\pi G)$ 在本文统一恢复。
<https://arxiv.org/abs/2102.03235>

**[HWX]** Xiaokai He, Xiaoning Wu and Naqing Xie, *On the angular momentum of compact binary coalescence*, Communications in Theoretical Physics 75 (2023) 045403, arXiv:2201.12824，使用 v2。
<https://arxiv.org/abs/2201.12824>

**[MWW]** Pujian Mao, Jun-Bao Wu and Xiaoning Wu, *Angular momentum and memory effect*, Physical Review D 107 (2023) L101501, arXiv:2301.08032，使用 v3，§3，式 (9)–(16)。
<https://arxiv.org/abs/2301.08032v3>

**[DF]** Pierre Deligne and Daniel S. Freed, *Classical Field Theory*, in *Quantum Fields and Strings: A Course for Mathematicians* (1999)，尤其 §1.1 及 §6.1，印刷页 216–217。
<https://publications.ias.edu/sites/default/files/79_ClassicalFieldTheory.pdf>

**[F92]** Daniel S. Freed, *Lectures on Topological Quantum Field Theory*, 9 December 1992，尤其 locality/gluing 式 (45) 与随后 Hamiltonian 讨论。
<https://people.math.harvard.edu/~dafr/OldTQFTLectures.pdf>

**[Gluing]** GaoZ1en/obsidian_note, *Global AdS₃ 的直径切分：Harlow–Wu 协变相空间、区域模式与透明粘合*，文件日期 2026-09-14，读取于 2026-11-05。本文采用其作用量及 outward 动量约定。 [仓库源文件](https://github.com/GaoZ1en/obsidian_note/blob/main/Articles/Quantization%20in%20AdS/gluing/archive/2026-09-23/03-geometric-cuts-and-gauge-data/gravity/global_AdS3_HW_sewing.md)

**[BTT]** Norbert Bodendorfer, Thomas Thiemann and Andreas Thurn, *New Variables for Classical and Quantum Gravity in all Dimensions. I. Hamiltonian Analysis*, arXiv:1105.3703。
<https://arxiv.org/abs/1105.3703>

**[NPP]** Karim Noui, Alejandro Perez and Daniele Pranzetti, *Canonical quantization of non-commutative holonomies in 2+1 loop quantum gravity*, JHEP 10 (2011) 036, arXiv:1105.0439。
<https://arxiv.org/abs/1105.0439>

**[BDG]** Valentin Bonzom, Maïté Dupuis and Florian Girelli, *Towards the Turaev–Viro amplitudes from a Hamiltonian constraint*, Physical Review D 90 (2014) 104038, arXiv:1403.7121。
<https://arxiv.org/abs/1403.7121>

**[DFGOR]** Maïté Dupuis, Laurent Freidel, Florian Girelli, Abdulmajid Osumanu and Julian Rennert, *Origin of the quantum group symmetry in 3d quantum gravity*, arXiv:2006.10105。
<https://arxiv.org/abs/2006.10105>

**[FR]** V. V. Fock and A. A. Rosly, *Poisson structure on moduli of flat connections on Riemann surfaces and the r-matrix*, arXiv:math/9802054。
<https://arxiv.org/abs/math/9802054>

**[Teschner]** Jörg Teschner, *Quantum Liouville theory versus quantized Teichmüller spaces*, Fortschritte der Physik 51 (2003) 865–872, arXiv:hep-th/0212243。该短文宣布相应 mapping-class-group 表示联系的证明。
<https://arxiv.org/abs/hep-th/0212243>

**[BFK]** Robert Bourne, Jackson R. Fliss and Bob Knighton, *What’s the Matter with 3D Gravity?*, ArXiv:2607.01319，使用 v1，尤其 §4.2。
<https://arxiv.org/abs/2607.01319v1>

**[Kitaev]** Alexei Kitaev, *Fault-tolerant quantum computation by anyons*, Annals of Physics 303 (2003) 2–30, arXiv:quant-ph/9707021。
<https://arxiv.org/abs/quant-ph/9707021>
