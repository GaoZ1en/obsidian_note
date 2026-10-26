# 完整 anchored 源与 causal TT observable 的严格桥接

## 结论：必须固定的一项新物理定义

既有全插入 kernel 使用
\[
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)\,\Pi(p).
\]
若仅给定 free physical CPS modes，这一 retarded tensor inverse 尚未被唯一指定。直接的 \(\theta(t)\) 乘 physical-mode commutator 一般给出不同结果。本文展示其非零差项，并从完整 anchored Einstein–scalar action 的源响应定义一个明确的 observable，实现上述 kernel 在全部动量、包括 \(p=0\) 的既定 causal extension。

**桥接定理及其范围。** 在 half_bps_stress_gauge_completion.md 所给 cubic \(H\phi^2\) action、BF completion 与 UV/source convention 下，采用本文明确的 causal response class：完整守恒源、零过去数据、normalizable UV、outgoing TT radiation，并允许由约束决定的 FG non-TT tail。先求完整 sourced Einstein 弱解，再对 tangent metric 作唯一的 boundary-retarded TT projection。该 observable 的首阶 stress–scalar–scalar coefficient 等于原明确给定的 \(G_2^{\rm ret}\Pi_{\rm ret}\) 全插入 coefficient。投影由真实 retarded \(\square^{-1}\) 及其平方定义；它在 upper-half-frequency 域给出解析恒等式，因此恰实现
\(\mathcal N\,\partial_s^2\mathscr R/2\) 的全动量 causal distribution。

这项 source/observable specification 是物理桥接的一部分。有限 switch 下它不等同于裸 physical-mode \(\theta\)-commutator，也不等同于完整 curved-boundary-metric stress/PBH response。本文构造满足全部线性 Einstein equations 的有限径向区间弱解，明确允许其 FG non-TT pure-gauge/constraint tail；没有另加“所有 FG 分量在 IR 为零”的不相容条件。

**当前阶与全球相空间的区别。** 第 3 节另在一个明确的 dense free-CPS wave-packet domain 上证明本阶所需的 IR endpoint/symplectic 交叉配对为零，因而关闭该域上的 first-order weak-response / 三点 matrix-coefficient 桥接。将这个构造全局扩为完整 interacting Einstein covariant phase space，还需要两个 sourced tails 之间及更高阶的 flux/domain 控制；该 global identification 为 **B — conditional**。不能把当前系数的完成表述为无条件完成了全部物理 reconstruction。

## 1. Causal projection 的定义域与源耦合

令 \(\square=\eta^{ij}\partial_i\partial_j\)，\(\eta=(-,+,+,+)\)。设 \(E_{\rm ret}\) 是四维 Minkowski wave operator 的 retarded inverse，\(E_{\rm adv}=E_{\rm ret}^\dagger\)。它们先作用于 smooth compact sources，随后作用于标准 past/future-compact distributions；causal convolution 在该域上唯一。

在 past-compact symmetric tensors 上定义
\[
P_{ij}^{\rm ret}=\eta_{ij}-\partial_i\partial_jE_{\rm ret},\qquad
\Pi_{ij,kl}^{\rm ret}
=\tfrac12(P_{ik}^{\rm ret}P_{jl}^{\rm ret}
+P_{il}^{\rm ret}P_{jk}^{\rm ret})
-\tfrac13P_{ij}^{\rm ret}P_{kl}^{\rm ret}.
\tag{P1}
\]
指标按 \(\eta\) 升降。inverse 与常系数导数 commute，且 \(E_{\rm ret}\square=\square E_{\rm ret}=1\) 于该 causal 域，故 (P1) 是 transverse、traceless、idempotent projector。

实际 perturbative 历史域取
\[
H=H_0+h_{\rm ret},
\tag{P2}
\]
其中 \(H_0\) 属于既定 normalizable free CPS sector，\(h_{\rm ret}\) 为有限 spacetime switch 产生的 past-compact 响应。对 boundary-normal \(H_0\)，其 tangent metric 已为 TT；先取 divergence/trace 后再用 (P1) 中的 inverses，就得到 \(\Pi_{\rm ret}H_0=H_0\)。这无需把 inverse wave operator 任意作用于一个 stationary on-shell distribution。

设 \(\mathcal P H\) 是原 anchored radial-gauge map，\(\rho_a\) 为原 source-first radial layer。定义有限层 observable
\[
\boxed{
\mathcal T_{a}^{\rm ret}[j;H]
=\frac1\alpha\int du\,\rho_a(u)u^{-4}
\int d^4X\,j^{ij}(X)
\big[\Pi_{\rm ret}(\mathcal P H)\big]_{ij}(u,X).}
\tag{P3}
\]
其 boundary limit 仍按原先规定移除 layer 后取 \(a\downarrow0\)。scalar insertion 使用同一 relational \(\Phi\)、BF subtraction 与 conformal source measure。

式 (P3) 是完整 switched action 的源耦合：
\[
S_{w;j,f}=S_w^{\rm anc}+\mathcal T_a^{\rm ret}[j;H]
+\mathcal U_b[f;\Phi].
\tag{P4}
\]
其中 \(S_w^{\rm anc}\) 正是 half_bps_stress_gauge_completion.md (G16)。source variation 以前，(P3) 可以严格改写为
\[
\mathcal T_a^{\rm ret}[j;H]
=\frac1\alpha\int du\,\rho_a(u)u^{-4}
\int d^4X\,(\Pi_{\rm adv}j)^{ij}
(\mathcal P H)_{ij}.
\tag{P5}
\]
再变分 \(H\) 给出相应 \(\mathcal P^\dagger\) source，包括需要的 anchored constraint components。对 TT-projected insertion source，boundary divergence 与 trace 已为零，对应 radial pieces 本身也消失。

\(\Pi_{\rm adv}j\) 一般不再紧支撑，不能将它当作普通 compact source。对于 compact \(j\) 与 (P2) 的 past-compact correction，它的 advanced support 与响应的 past support 相交于 proper causal region，配对及分部积分合法。自由项直接用 \(\Pi H_0=H_0\) 定义。(P4) 在这里是 **insertion-source functional**，在 \(j=f=0\) 求导并按指定 Wightman ordering 配对；本文没有断言任意 advanced \(j\) 本身生成一个零过去数据的源演化。取 Schwartz tests 的延拓由完整 joint coefficient 的 tempered theorem 给出。retarded/advanced kernels 都是实的，故实 \(j\) 给出实 classical source functional 与 Hermitian smeared observable。

(P3)–(P5) 给出了插入的 off-shell completion。它是一种 causal history projection；没有把任意 null-supported tensor 加入一个仅在非零 timelike 动量上定义的 projector。

## 2. 完整守恒源与显式 Einstein 解

令 \(\ell=1\)，保留引力耦合 \(\kappa^2\)。在 free scalar equations 上，cubic completed action 的 metric source 为
\[
Q=\mathcal P^\dagger J,\qquad J_{ij}=wT_{ij},\quad w=\beta\chi.
\tag{P6}
\]
若 \(J\) 在 \(u<L\) 有径向支撑，其分量为
\[
\begin{aligned}
Q_{ij}&=J_{ij},\\
Q_{ui}&=u^3\int_u^Lds\,s^{-3}\partial^jJ_{ji}(s),\\
Q_{uu}&=u^2\int_u^Lds\,s^{-3}
\left[J^i_i(s)+\frac{s^2-u^2}{2}
\partial^i\partial^jJ_{ij}(s)\right].
\end{aligned}
\tag{P7}
\]
它满足完整 covariant conservation，而非仅 TT 投影后的 conservation。原完成作用量中 free-action compensation 与 BF/endpoint terms 是此式成立的组成部分；不可只保留 \(wT_{\mu\nu}\)。

在 FG representative 写 tangent relative metric \(h_{ij}\)，并定义
\[
\tau=\eta^{ij}h_{ij},\qquad
D_i=\partial^jh_{ji},\qquad L_h=\partial^iD_i.
\]
令 \(K_{\mu\nu}=\delta(G_{\mu\nu}-6g_{\mu\nu})\)。直接由 \(g=u^{-2}(du^2+\eta+h)\) 的 Christoffels 得到两个完整约束：
\[
\boxed{
K_{uu}=-\frac3{2u}\tau'
-\frac12(L_h-\square\tau),\qquad
K_{ui}=\frac12(D_i'-\partial_i\tau').}
\tag{P8}
\]
它们应等于 \(\kappa^2Q_{u\mu}\)。

令
\[
I_i(u)=\int_0^uQ_{ui}(v)\,dv.
\]
固定平坦 UV metric、无新增 source/edge data 后，约束被下列解精确满足：
\[
\boxed{
\tau'(u)=-\frac{2\kappa^2u}{3}
\big[Q_{uu}(u)+\partial^iI_i(u)\big],\quad
\tau(0)=0,\quad
D_i(u)=\partial_i\tau(u)+2\kappa^2 I_i(u).}
\tag{P9}
\]
所有径向积分只在同一 boundary spacetime point 上进行；有限 \(\chi\) 时所得量仍 past-compact。

任意给定 \(\tau,D\) 的 causal non-TT metric 可显式写为
\[
\begin{aligned}
h^{\rm nt}_{ij}={}&
\partial_iE_{\rm ret}D_j+\partial_jE_{\rm ret}D_i
-\partial_i\partial_jE_{\rm ret}^2L_h\\
&+\frac13(\eta_{ij}-\partial_i\partial_jE_{\rm ret})
(\tau-E_{\rm ret}L_h).
\end{aligned}
\tag{P10}
\]
其 trace、divergence 分别是 \(\tau,D_i\)，且
\(\Pi_{\rm ret}h^{\rm nt}=0\) 精确成立，包括零质量分布。

切向 Einstein equation 的 TT projection 为
\[
L_{2,\square}h^{\rm TT}_{ij}
=-2\kappa^2\,\Pi^{\rm ret}_{ij,kl}J^{kl},
\qquad
L_{2,\square}=\partial_u^2-3u^{-1}\partial_u+\square.
\tag{P11}
\]
因此取
\[
h^{\rm TT}(v)
=-2\kappa^2\int_0^\infty du\,u^{-3}
G_{2,\rm ret}(v,u)\Pi_{\rm ret}J(u).
\tag{P12}
\]
这里选择 normalizable UV、零过去数据与 Poincaré outgoing radiative solution。该 scalar radial Green function 在 upper-half-frequency 域有显式 \(I_2K_2\) 表达式，见第 4 节；其 derivative jump 是 \(u^3\)。

令 \(h=h^{\rm TT}+h^{\rm nt}\)。它满足全部 Einstein equations，而非只满足投影方程。证明如下：残差 \(K-\kappa^2Q\) 的 \(u\mu\) 分量由 (P9) 为零。线性 Bianchi identity 的 radial component 随即强制 tangent trace 为零，tangent components 强制 tangent divergence 为零。故剩余残差本身为 TT；其 TT part 又由 (P11) 为零。这给出完整受约束解，且 causal inverses 和 radiative radial solution 的唯一性排除额外 homogeneous data。

在 canonical BF 归一化 \(\phi=u^2U/\sqrt{C_0}\)、\(C_0=2\pi^2\)、\(\kappa^2=4\pi^2/N^2\) 下，
\[
J^{TT}=\frac{u^4}{C_0}
\Pi_{\rm ret}\big[\beta\chi:\partial U\partial U:\big],
\]
所以 (P11) 恰为原
\[
L_2\gamma^{TT}
=-\frac4{N^2}u^4\beta\,
\Pi_{\rm ret}\big[\chi:\partial U\partial U:\big].
\tag{P13}
\]
BF boundary metric vertex 是 trace term，在该 projection 下为零。source counterterm 和完整 trace/PBH 数据仍须保留在未投影的 functional 中。

## 3. IR domain：受约束 FG tail 与 outgoing radiation 分开规定

即使 (P7) 在 \(u>L\) 满足 \(Q_{u\mu}=0\)，一般仍有
\[
I_i(\infty)=\frac14\int_0^Lds\,s\,\partial^jJ_{ji}(s)\ne0.
\tag{P14}
\]
因此
\[
\tau'(u)=-\frac{2\kappa^2u}{3}\partial^iI_i(\infty),
\qquad u>L.
\tag{P15}
\]
FG non-TT components 可有 \(u^2\) tail。它与 (P12) 的 outgoing TT radiation 是不同部分，不能同时要求整个 FG metric 的各分量在 IR 为零。

该 exterior non-TT tail 确为 pure-gauge form。真空 FG residual diffeomorphism
\[
\xi^u=u\sigma(X),\qquad
\xi^i=v^i(X)-\frac{u^2}{2}\partial^i\sigma(X)
\]
产生
\[
h^{\rm tail}_{ij}
=\partial_iv_j+\partial_jv_i-2\sigma\eta_{ij}
-u^2\partial_i\partial_j\sigma.
\tag{P16}
\]
其 trace/divergence obey
\[
\tau_{\rm tail}=2\partial\!\cdot v-8\sigma-u^2\square\sigma,
\quad
D_i-\partial_i\tau_{\rm tail}
=\square v_i-\partial_i\partial\!\cdot v+6\partial_i\sigma .
\]
取
\[
\sigma=\frac{\kappa^2}{3}E_{\rm ret}\partial\!\cdot I(\infty)
\]
并选 \(v\) 的 transverse part 解
\[
v_i^T=2\kappa^2E_{\rm ret}
\big[I_i(\infty)-\partial_iE_{\rm ret}\partial\!\cdot I(\infty)\big],
\]
其 longitudinal part 用 \(2\partial\!\cdot v-8\sigma=\tau\) 的常数径向项固定，即精确再现 (P9) 的 exterior trace/divergence。由 (P10) 的唯一 causal decomposition，它再现全部 non-TT tail。

本文的弱解使用允许这一 constrained FG representative 的 response class。在有限 source/measurement slab 外，可以构造在 UV 和该 slab 上为零的 smooth radial cutoff diffeomorphism，移除 exterior pure-gauge tail；transition region 出现 lapse/shift。这个局部构造本身不证明该 diffeomorphism 在完整 global symplectic domain 中属于零 charge 的 gauge direction。

对于本阶 projected insertion，还有更直接的恒等式：
\[
\Pi_{\rm ret}(\mathcal P H)_{ij}
=\Pi_{\rm ret}H_{ij}.
\tag{P16a}
\]
两者之差仅含 \(\partial_{(i}\xi_{j)}\) 与 \(\eta_{ij}\xi^u/u\)，在 past-compact causal domain 中被 (P1) 精确消去。因此可在 regular representative 中定义 observable，无须先把一个 IR-growing \(\xi\) 宣告为可商掉的 gauge vector。

要把弱解提升为完整 global action/CPS realization，仍须选择并验证其 IR domain；不能仅用“无额外 edge sector”替代这一证明。当前阶所实际需要的弱配对可以进一步关闭如下。

**本阶 dense-domain IR lemma。** 取自由 scalar 与 TT graviton 的谱 wave packets，其 amplitudes 属于 \(C_c^\infty(\mu,\mathbf k)\)，支撑满足 \(0<\mu_0\le\mu\le\mu_1\) 与有界 \(\mathbf k\)。这些 packets 及其有限粒子代数张成的空间在原 positive free CPS/Fock Hilbert space 中稠密；自由谱没有额外的 \(\mu=0\) 原子 sector。

在任意固定 \(|t|\le T\) 上，Bessel 大 \(u\) 展开中的 phases 是
\[
\pm\mu u-\sqrt{\mu^2+|\mathbf k|^2}\,t .
\]
它们的 \(\mu\) 导数绝对值至少为 \(u-T\)。当 \(u>2T+1\) 时反复对 \(\mu\) 分部积分，端点项因 compact smooth amplitudes 消失。Bessel expansion 的任意阶 remainder 具有同一控制。因此对任意 \(M,N\) 及固定有限导数，
\[
\sup_{|t|\le T,\mathbf X}
(1+|\mathbf X|)^M
\left|\partial_u^a\partial_X^\beta
(\phi_0,\gamma_0)(u,X)\right|
\le C_{M,N,a,\beta,T}(1+u)^{-N}.
\tag{P16b}
\]
空间 Schwartz weights 用独立的 \(\mathbf k\) 分部积分获得；\(\mu\) 的 gap 保证所有 mode normalization 与 polarization derivatives 有界。

有限 \(\chi,\beta\) 的 sourced non-TT tail 由 (P15)–(P16) 最多为 \(u^2\)，其必要 gauge vector 与有限导数也至多 polynomial。TT retarded response 在固定时间窗内具有径向 causal support；超出从 compact vertex 区间可达的径向距离后为零。于是本阶 EH/GHY symplectic 或 endpoint currents 中，一个 sourced correction 与一个 free physical variation 的每一项，都是有限次 \(u\) 幂乘 (P16b) 的快速衰减因子，其 IR limit 为零。scalar free-action compensation 的边界 current 至少含自由 scalar packets，故同样为零。对应 pure-gauge charge 的这一阶 weak pairing 也为零。

这个论证所需的时间窗确为有限：compact insertion test \(j\) 的 advanced adjoint 与 finite-switch past-compact response 仅在 \([t_{\rm switch,min},t_{j,\max}]\) 配对。对于直接的 projected insertion adjoint，径向 \(G_2\) 的 advanced causal support还使其在这个时间窗上具有有限径向可达范围。

因此 (P3) 的当前阶弱响应和三点 matrix coefficient 在上述 dense domain 上具有实际的零 IR 交叉 flux；这不是一个仅列出假设的结论。常数允许依赖固定时间窗 \(T\) 与质量 gap；这与先在固定 spacetime switch 下移除径向 cutoff、随后移除 spacetime switch 的顺序相容。对这些 packets，source 的径向 moments 本身快速衰减，所以固定 \(T\) 下所需 moments 也可对 bounded radial cutoffs 一致控制。

随后主报告的 tempered coefficient theorem 给出规定 Schwartz tests 上的 trilinear distribution。该全动量延拓由同一 causal radial prescription 与 (P19) 独立固定，不能仅由 Hilbert-space 稠密性推出或排除 null-supported additions。它仍是 coefficient/distribution theorem，未自动给出全 interacting operator 的共同定义域。

本引理不控制两个 sourced constraint tails 彼此的 symplectic pairing、任意非紧时间极限、额外 IR charges 或更高扰动阶。完整 interacting global CPS 的这些部分仍需要独立 endpoint theorem，故保持条件性。

若另行施加 finite-wall 所有 \(h_{\mu\nu}=0\)，(P14)–(P15) 给出额外 compatibility requirements；一般 switch 不满足它们。本文不采用这一边值问题，也不从“zero past”推断径向 endpoint 自动为零。

## 4. Analytic retarded identity 固定全部 null terms

取 \(p^0\) 位于 upper half-plane，空间动量实，写
\[
s=(p^0)^2-|\mathbf p|^2,\qquad
\kappa_p=\sqrt{-s},\quad\operatorname{Re}\kappa_p>0.
\]
于是 \(s\ne0\)，全部 projectors 是普通解析函数。scalar boundary kernel 与 metric radial inverse 分别为
\[
\mathscr R_p(0,u)=-K_0(\kappa_pu),
\]
\[
G_{2,p}(v,u)=-(vu)^2
I_2(\kappa_pv_<)K_2(\kappa_pv_>).
\tag{P17}
\]
Wronskian 给出 radial jump \(+u^3\)。metric boundary transfer 是
\[
H(s,u):=\lim_{v\to0}v^{-4}G_{2,p}(v,u)
=\frac{su^2}{8}K_2(\kappa_pu)
=\frac{s^2}{2}\partial_s^2\mathscr R_p(0,u).
\tag{P18}
\]

把 (P1) 用同一 upper-half-frequency resolvent 表示，其 Fourier symbol 是
\[
P_{ij}(p)=\eta_{ij}+\frac{p_ip_j}{s}.
\]
若 \(\mathfrak P_{ij,kl}(p)=s^2\Pi_{ij,kl}(p)\) 表示其 polynomial expansion，则在整个解析域
\[
\boxed{
H(s,u)\Pi_{ij,kl}(p)
=\frac12\,\mathfrak P_{ij,kl}(p)
\,\partial_s^2\mathscr R_p(0,u).}
\tag{P19}
\]
两边来自已构造的零过去数据完整 Einstein 响应与同一 observable source，因此其 tempered causal boundary value 必须相等。没有“先在实质量上相乘两个奇异分布”的步骤。

右侧已由六维 causal Green function 定义：
\[
\mathcal F_4^{-1}\big[\partial_s^2\mathscr R_p(0,u)\big]
=-\frac{\theta(T)\theta(T^2-|\mathbf X|^2-u^2)}{16\pi}.
\tag{P20}
\]
(P19) 把它唯一识别为 (P3) 的实际 retarded tensor response，包括非零 null cone 与 \(p=0\)。causal support、原 source equation、UV/IR radiation data 和零过去数据共同固定延拓；单独规定 transversality 或同次性并不足够。

与 scalar momenta \(q,r\) 收缩后，(P19) 就是
\[
H\Pi(qr)=\frac12\mathcal N(p;q,r)\partial_s^2\mathscr R_p.
\tag{P21}
\]
外 stress source 系数 \(-\alpha/10\)，两个 scalar Wick contractions 为 \(2(2\pi^3)^2\)；合并 (P21) 的 \(1/2\) 后，得到原完整核统一系数
\(-2\alpha\pi^6/5\)。middle/right insertions 的 scalar variation 则仍是
\(\partial_i(\chi\gamma_0^{ij}\partial_jU_0)\)；free \(\gamma_0\) 在 (P1) 下不变。

因此三个 insertions 的 source、switch derivative、radial jump、normalization 与 null prescription 同时被完整 action/source construction 固定。真实 spacetime switch 与共同径向 cutoff 按主定理证明的次序移除。

## 5. 裸 physical-mode retarded kernel 的明确差值

这一区别可在一个非零 spatial tensor component 上独立算出。固定空间动量 \(p=(\omega,k,0,0)\)，则
\[
\Pi_{11,11}(p)
=\frac23\left(1+\frac{k^2}{s}\right)^2
=A+\frac B s+\frac C{s^2},
\quad
A=\frac23,\ B=\frac{4k^2}3,\ C=\frac{2k^4}3.
\tag{P22}
\]

metric boundary transfer 的零质量 Taylor coefficients 是
\[
H_0=-\frac14,\qquad H'_0=-\frac{u^2}{16}.
\tag{P23}
\]
直接从 Bessel \(K_2\) 的展开或 Abel moments
\[
\int_0^\infty vJ_2(v)\,dv=2,\qquad
\int_0^\infty \frac{J_2(v)}v\,dv=\frac12
\]
均可获得它们；第一个积分采用同一 Abel prescription。

在 mode dispersion integral 中，polarization projector 的分母是该 mode 的质量 \(\mu^2\)，不是外部 \(s\)。只要保留同一径向 smoothing/Abel definition，代数恒等式
\[
\frac1{\mu^2(s-\mu^2)}
=\frac1s\left(\frac1{s-\mu^2}+\frac1{\mu^2}\right)
\]
及其二阶版本给出裸 \(\theta(t)\)-mode response
\[
H_{\rm mode}
=AH+B\frac{H-H_0}{s}
+C\frac{H-H_0-sH'_0}{s^2}.
\tag{P24}
\]
所有 \(s\) 分母取 retarded boundary value。因而完整 causal projection 与裸 mode prescription 的差是
\[
\boxed{
H_{\rm causal}-H_{\rm mode}
=\frac{BH_0}{s_{\rm ret}}
+\frac{C(H_0+sH'_0)}{s_{\rm ret}^2}
=-\frac{k^2}{3s_{\rm ret}}
-\frac{k^4}{6s_{\rm ret}^2}
-\frac{k^4u^2}{24s_{\rm ret}}.}
\tag{P25}
\]

在严格 timelike 点 \(s=2,k=1,u=1\)，差为 \(-11/48\)，所以它并非仅存在于 null cone 上的细小歧义。它包含 determined massless retarded constraint contributions，具有相应 principal-value 与 spectral-null parts；不能全部称为局部 spacetime contact。

(P25) 不否定原明确指定的 \(G_2\Pi\) kernel。它否定的是“相同 free CPS modes 自动推出相同 off-shell retarded response”这一步。原 anchored completion 的早期 §5.2/G34 曾使用这一不足论证，现已用本文的完整 source definition、约束解与 (P19) 替换。若选择裸 mode observable 而不附加本文的 causal-history completion，原全插入公式及其 CFT identification 需要重新计算。

## 6. 与完整 Ward response 的边界

(P3) 的 source 是 projected relational insertion，属于明确的 radiative observable。它不把任意边界 metric variation 都投影掉后称作完整 stress functional。原 (G29)–(G30) 的 anchor flux、longitudinal/trace response、BF contact anomaly 与 source counterterm convention 仍属于完整 curved-source problem。

在有限 switch 时，profile 是 anchor/reference data 的一部分；boundary diffeomorphism/PBH variation 需要同时变动它。本文构造并控制完整 bulk conserved source，但未由此宣称已经给出所有 finite-switch curved-boundary source derivatives。其 adiabatic TT correlator 的物理意义由明确的 (P3) 定义和主报告的独立 boundary CFT matching 支持。

因此本文提供的是指定 causal observable 的首阶 source/coefficient 桥接，以及完整 global action/CPS identification 的精确条件。它保留 anchor、endpoint、normal ordering 和扰动阶数等契约。它不证明所有 gravitational dressings 或所有 retarded/CPS prescriptions 具有相同结果。

| 结论 | 证据等级与范围 |
|---|---|
| 完整线性 Einstein constraints、有限径向弱解、non-TT causal decomposition | A；(P7)–(P12) 显式构造 |
| causal projected insertion 的源/adjoint 定义与 \(H\Pi=\mathfrak P R''/2\) | A；明确 past-compact response class、原层源顺序 |
| 与裸 \(\theta\)-mode inverse 的非零差项 | A；(P25) 精确反例 |
| 当前阶 dense free-CPS domain 上的 weak-response / 三点 IR 配对 | A；(P16b) 的 nonstationary-phase estimate 与 polynomial tail |
| 完整 interacting 全局 Einstein/CPS realization | B；仍需 sourced–sourced pairing、更高阶及完整 endpoint/horizon domain theorem |
| 任意 finite-switch curved-source/PBH functional 的完成 | 未由本文建立；仍是独立任务 |

## 7. 实际独立验证

causal_tt_source_bridge_checks.py 从五维 conformally flat metric 的 Christoffels 独立线性化 Ricci/Einstein tensor，对任意 symmetric \(h_{ij}(u)e^{ipx}\) 检验五条 constraints、十条 tangent equations 和五条 linearized Bianchi identities。另检验 (P10) 的 trace/divergence/TT decomposition、(P18) 的 Bessel identity、两项零质量 jets、Abel moments、mode dispersion subtractions，以及 (P16) 的全部 pure-gauge tail components。

实际执行得到 **63 个精确零 residuals**，结果在 causal_tt_source_bridge_results.json 与 [captured stdout/stderr](checks/stress_completion/execution_record.json)。它们支持方程、因子和反例；causal domain、source adjoint、有限径向完整约束解与解析 boundary-value identification 由上述推导承担。未以这些代数检查替代尚缺的 global endpoint theorem。


## Reproducible verification files

- [causal_tt_source_bridge_checks.py](checks/stress_completion/causal_tt_source_bridge_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
