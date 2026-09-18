# 05｜精确模型 I：compact YM2 与有限图

## 5.1 独立未切分目标

取 compact connected \(G\)、正定 invariant pairing、平凡时空 cylinder/strip bundle、trivial large-gauge character。空间区间长 \(\ell\)，两条 timelike endpoints 取固定 \(A_t=0\)，endpoint frames 保留。只除 based gauge maps，包含其全部分支。

\(1+1\) pure YM 的 canonical action 是
\[
 S=\int dt\int_0^\ell dx\left[\langle E,\dot A_x-D_xA_t\rangle
 -\frac{e^2}{2}\langle E,E\rangle\right]
\]
（与第 01 篇 convention 相应的 Lie-algebra electric variable）。Gauss \(D_xE=0\) 使 electric field 沿区间平行。令 \(U=\mathcal P e^{-\int A_xdx}\)，选取 reduced momentum 的符号使
\[
 \Theta=\langle p,U^{-1}\delta U\rangle,
 \quad H_\ell=\frac{e^2\ell}{2}\langle p,p\rangle,
 \quad J_a=-p,\quad J_b=\operatorname{Ad}_Up.
\tag{5.1}
\]
可通过用 endpoint-fixed gauge 将 \(A_x\) 放到一条给定 holonomy path、再对 canonical potential 积分分部得到 (5.1)；\(p\) 与 \(E\) 的方向取决于上式对 \(U\) 的 minus convention。具体地，若 E 的参考值取在左端，以上 convention 给 p=-E(0)；这固定了符号，而非任意改写。J_a,J_b 是 boundary action g=exp(η) 的 generators；第 01 篇写 δA=Dε 时用的是 η=-ε，故相应 charge 符号反向。无需全球 group logarithm。任意两个同 holonomy 的区间连接由 based gauge 联系，反之明显，因此 configuration quotient 是 \(G\)，phase space 是 \(T^*G\)。

独立 classical target 取 representative functions（有限维连续 unitary representations 的 matrix coefficients）与 fiber-polynomial momenta 的代数
\[
 \mathscr P_G=\mathscr R(G)\otimes\operatorname{Sym}(\mathfrak g).
\]
令 \(L_\xi f(U)=\partial_s f(Ue^{s\xi})|_0\)，则
\[
 \{f,p_\xi\}=L_\xi f,\qquad
 \{p_\xi,p_\eta\}=-p_{[\xi,\eta]}.
\tag{5.2}
\]
这不是全体 \(C^\infty(T^*G)\)，但包含全部 finite-representation holonomies 与 polynomial fluxes，分离 \(T^*G\) 的点。

## 5.2 两段的 classical map、完整 kernel 与 section

seam frame action 是
\[
 (U_1,U_2)\mapsto(kU_1,U_2k^{-1}),\qquad
 \mu=\operatorname{Ad}_{U_1}p_1-p_2=0.
\tag{5.3}
\]
该条件由撤去两内端 \(A_t=0\)、识别其任意共同 history、变分该 history 得到；不是手工要求两份 closed solutions 满足透明条件。

使用全球坐标
\[
 U=U_2U_1,\quad a=U_2,\quad p_U=p_1,\quad
 p_a=p_2-\operatorname{Ad}_{U_1}p_1.
\]
直接计算
\[
 \langle p_1,U_1^{-1}\delta U_1\rangle+
 \langle p_2,U_2^{-1}\delta U_2\rangle
 =\langle p_U,U^{-1}\delta U\rangle+
 \langle p_a,a^{-1}\delta a\rangle.
\tag{5.4}
\]
因此约束为 \(p_a=0\)，cut action 在 \(a\) 上传递，输出正好 \((U,p_U)\)。在 invariant fiber-polynomial algebra 的适配表达中，限制 \(p_a=0\) 是满 Poisson map；kernel 是正 vertical-momentum degree 部分，section 是只依赖 \((U,p_U)\) 的函数。这个 kernel 是实际算出来的，不能在取 invariants 前对全代数强行设 \(p_a=0\)。

能量在 constraint locus 上变为
\[
 H_1+H_2=\frac{e^2(\ell_1+\ell_2)}2\langle p_U,p_U\rangle.
\tag{5.5}
\]

## 5.3 quantum operator presentation

在 \(L^2(G,dU)\) 上用 normalized Haar，公共域 \(C^\infty(G)\)。定义
\[
 \widehat p_\xi=-i\hbar L_\xi,\quad M_f\psi=f\psi,
 \quad [M_f,\widehat p_\xi]=i\hbar M_{L_\xi f},
 \quad [\widehat p_\xi,\widehat p_\eta]=-i\hbar\widehat p_{[\xi,\eta]}.
\tag{5.6}
\]
有限 words 给 \(\mathscr D_{G,\hbar}\)。按 Lie basis 排序后 PBW form 唯一：最高微分符号是全球 tangent frame 的独立 monomials，逐阶消去即可。\(*\) 用 Haar adjoint；\(\widehat p_\xi\) 对实 \(\xi\) 为对称的标准 self-adjoint generator 的限制。

两段中，与 cut right translations of \(a\) 对易的 vertical derivatives 可取 \(\widehat r=-i\hbar R^a\)，其中 \(R_\xi f(a)=\partial_s f(e^{s\xi}a)|_0\)。在 \((a,U)\) 排序，invariance 使所有 coefficients 独立于 \(a\)。故每个 invariant operator 唯一为
\[
 D=\sum_\alpha \widehat r^\alpha D_\alpha(U),\qquad
 Q(D)=D_0(U).
\tag{5.7}
\]
vertical enveloping algebra 的 augmentation \(\widehat r\mapsto0\) 是 algebra homomorphism，因而
\[
 \boxed{\mathscr D_{G^2,\hbar}^{G_\Gamma}/\ker Q\simeq
 \mathscr D_{G,\hbar},\quad \ker Q=\{D:D_0=0\}.}
\tag{5.8}
\]
实际 section 为 \(D_U\mapsto1\otimes D_U\)。这里没有对 continuum gauge group 作 Haar；它早已通过 Gauss/based quotient 约成有限维 endpoint group。

## 5.4 Hilbert map 不是维数计数

\[
 (V\psi)(U_1,U_2)=\psi(U_2U_1).
\tag{5.9}
\]
Haar invariance 给 \(\|V\psi\|=\|\psi\|\)。任何 invariant function 在 \((a,U)\) 中不依赖 \(a\)，故 V onto cut-invariant subspace。对 normalized matrix coefficients \(e^\rho_{mn}=\sqrt{d_\rho}D^\rho_{mn}\)，
\[
 Ve^\rho_{mn}=\frac1{\sqrt{d_\rho}}
 \sum_r e^\rho_{rn}(U_1)\otimes e^\rho_{mr}(U_2).
\tag{5.10}
\]
它给 operator intertwining \(DV=VQ(D)\)，包括 Wilson multiplication 和 flux。不是单纯 partition-function sewing。

\[
 \widehat H_\ell=-\frac{e^2\ell\hbar^2}{2}\Delta_G,\qquad
 (\widehat H_1+\widehat H_2)V=V\widehat H_{\ell_1+\ell_2}.
\tag{5.11}
\]
后一恒等式来自两条腿的 bi-invariant Laplacian 对 \(\psi(U_2U_1)\) 都给同一 \(\Delta_G\psi\)。functional calculus 给 unitary evolution intertwining。有限阶 differential algebra 不对有限时间 evolution 自动闭合，因此 dynamical algebra 另定义为由 (5.6)、其时间演化及明确的 smooth time smearings 生成的代数。

## 5.5 完整 endpoint histories 与真正再开放

对任意 smooth anti-Hermitian histories \(q_a(t),q_b(t)\)，reduced Hamiltonian 为
\[
 H_q=H_\ell-\langle q_a,J_a\rangle-\langle q_b,J_b\rangle,
\]
给
\[
 \dot p=-[q_a,p],\qquad
 \dot U=e^2\ell Up+Uq_a-q_bU.
\]
令 \(\dot g_a=-q_ag_a\)、\(\dot g_b=-q_bg_b\)，初值为 1，则
\[
 p(t)=g_ap_0g_a^{-1},\qquad
 U(t)=g_bU_0e^{e^2\ell(t-t_0)p_0}g_a^{-1}.
\tag{5.12}
\]
任意 source variations 由有限维 ODE 的变分得到，不限制 histories 对易。

两段 seam 的共同 q 在 \(\partial_t(U_2U_1)\) 中抵消，(5.3) 把剩余项合为长度相加的同一 ODE。于是先形成 closed \(I_{12}\)、再开放其外端，与两段在完整相容 histories 下直接重建完全相同。三段两种顺序都给 \(U_3U_2U_1\)、同一 p、同一外源 ODE。对源微分后所有响应也相同。这是 E 级 fresh-reopening 结果，不只零源比较。量子时 endpoint charges 是左右 regular representations 的 self-adjoint generators，与 bi-invariant Casimir 对易；任意 histories 的 driven propagator 因而由各端 time-ordered group translations 与 free Casimir evolution 构成。在 V 的 image 上共同 seam translations 抵消，(5.11) 又处理自由部分，故同样得到 driven unitary intertwining。这个结论不依赖把不同时刻的 q 当对易数。

## 5.6 circle、large sectors 与不能错误因子化的情形

self-sewing 只复制边界 occurrences，不复制整份 field：
\[
 \operatorname{Ad}_Up-p=0,\qquad (U,p)\sim(gUg^{-1},gpg^{-1}).
\]
trivial quantum sector 为 \(L^2(G)^G\)，由 characters 张成。指定 circle algebra 由 character multiplication、Casimir 和 dynamics 生成。不声称本文求出了所有 singular quotient 上任意 differential-operator ideal。

若 \(\pi_1(G)\ne0\)，可选非平凡 large-gauge character；对应波函数是 cover 上 equivariant functions，或 G 上 flat line bundle 的 sections。\(L^2(G)\) 仅是 trivial choice。本篇 (5.8) 的全域陈述固定该 choice；不把其他 sectors 作为“已被 Haar 自动包含”。

## 5.7 有限图：同一证明真正扩大了哪些模型

给有限 oriented graph，edge variables \(U_e\in G\)、phase space \(\prod_eT^*G\)、Hilbert space \(L^2(G^E)\)。内部 vertices 施加 Gauss，外部 vertices 保留 frames。把一条 edge 分成两条，(5.4)–(5.10) 逐条给 exact edge-subdivision sewing；多条 disjoint subdivisions 的 cut group 是 product，maps 因 group multiplication 结合而 coherent。

Hamiltonian 若含 plaquette \(\operatorname{Re}\operatorname{tr}(\prod_{e\subset f}U_e)\)，跨 cut 的 plaquette 必须通过区域 open-path words 组装。裸 closed-region Hamiltonians 若没有这些 paths，不会自己生成该 interaction。enriched action/network 数据保存后，逐个 plaquette multiplication 与 V intertwine；kinetic coefficients 按约定在子链路相加。

这是任意有限 graph regulator 中有 non-Abelian Wilson/flux/interaction 的精确结果，不是四维 continuum limit。graph 的拓扑和额外 magnetic bundle-sector labels 必须独立给出；一个 graph 自动丢失的二维 cocycle 不能由 edge subdivision 凭空恢复。

二维 YM 的 representation/area 量子理论和 corners 可参照 [R7,R8]；以上 operator proof 由本文给出，不以 amplitude 公式代替。
