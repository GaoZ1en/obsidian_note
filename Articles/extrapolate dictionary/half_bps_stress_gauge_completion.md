# 首阶 stress–scalar–scalar 系数的 boundary-anchored switching completion

本报告以固定提交 `ba8a9a5161a538c0d1addf7215c20cf64f4ddb79` 为起点，补充 genuine spacetime switching 与受约束 Einstein–scalar 理论之间的一条明确连接。讨论阶数是一个 metric perturbation、两个 canonical BF scalar 的 cubic sector，即 unit-normalized stress–scalar–scalar 的首个 $N^{-1}$ tree coefficient。

**主要结果。** 在边界锚定的 relational variables 中定义 switch，可以构造一个首阶 anchored-gauge-invariant deformation。其额外项精确修复朴素 switched stress 的 Bianchi defect，并在 normal FG representative 中给出原有 reduced TT vertex。物理桥接还需要一项明确的插入定义：对完整 sourced Einstein 响应作同一 boundary-retarded TT projection。该 causal-history observable 的首阶三点系数等于原明确指定的 \(G_2^{\rm ret}\Pi_{\rm ret}\) coefficient。裸 \(\theta(t)\) 乘 free physical-mode commutator 一般具有不同的 off-shell inverse；不能仅凭相同 free CPS modes 断言两者相等。具体 source definition、非零差项、全部 null prescription 与当前阶 IR domain 见 half_bps_stress_causal_source_bridge.md。

## 1. 约定、阶数与边界契约

取

$$
\bar g_{\mu\nu}=\frac{\ell^2}{u^2}\eta^{(5)}_{\mu\nu},\qquad
\eta^{(5)}=\operatorname{diag}(1,-1,1,1,1),\qquad
\delta g_{\mu\nu}=\frac{\ell^2}{u^2}H_{\mu\nu},
\tag{G1}
$$

其中 $\mu=(u,i)$，边界 signature 为 $(-,+,+,+)$。canonical scalar 的 $m^2=-4/\ell^2$，其 Lorentzian quadratic action 为

$$
S_0[\phi]=-\frac12\int_M\sqrt{-\bar g}\,
\big[(\bar\nabla\phi)^2-4\phi^2/\ell^2\big]+S_{\mathrm{BF},0}.
\tag{G2}
$$

$S_{\mathrm{BF},0}$ 采用 `half_bps_mixed_ward.md` (7) 所固定 completion 的 Lorentzian continuation；采用相同 outward normal 时，UV term 为

$$
S_{\mathrm{BF},\varepsilon}^{L}
=-\frac1{2\ell}\int_{u=\varepsilon}\sqrt{-\gamma}
\left(2+\frac1{\log(\varepsilon/\ell)}\right)\phi^2.
\tag{G3}
$$

保留 logfree BF vacuum、固定 UV coordinate/Weyl frame、相同 source subtraction，以及原始 source-first radial mollification。引力 action 保留 Einstein–Hilbert、GHY 与对应 counterterms。下文仅展开其中 $H\phi^2$ 部分；pure-graviton interactions 在本三点 coefficient 的该阶没有 scalar Wick contractions。

记

$$
E\phi=(\bar\Box+4/\ell^2)\phi,\qquad
T_{\mu\nu}=\partial_\mu\phi\,\partial_\nu\phi
-\frac12\bar g_{\mu\nu}\big[(\bar\nabla\phi)^2-4\phi^2/\ell^2\big].
\tag{G4}
$$

采用 active convention $\delta_\zeta\phi=\zeta^\mu\partial_\mu\phi$、$\delta_\zeta g=\mathcal L_\zeta g$。真正 quotient 的 gauge parameters 满足 $\zeta^u/u\to0,\ \zeta^i\to0$；IR/time endpoint flux 取零，或保留由同一边界 action 给出的端点项。非零 boundary diffeomorphism/Weyl parameters 是作用于 anchors 的物理变换。

这一契约与 `formalism.md` 第 1–27 行的 boundary action、$\omega=\delta\theta$ 及 gauge quotient 相容，也保留其第 231 行要求的统一 boundary condition。该参考原始 blob 为 `ba7966efd03d1f41fb246f05c1767fd4ab34fc88`，共 332 行。关于 AdS boundary-anchored dressing 的几何背景，可参照 Giddings–Kinsella, [arXiv:1802.01602](https://arxiv.org/abs/1802.01602), §II.B。下列 completion 与估计由本报告直接推导。

## 2. 朴素 switch 的精确 Bianchi obstruction

令 $w(u,X)=\beta(u)\chi(X)$ 为实 smooth switch，$\beta$ 初始具有紧径向支撑。原 canonical cubic metric vertex 是

$$
V[H,\phi]=\frac12\int\sqrt{-\bar g}\,T^{\mu\nu}\delta g_{\mu\nu}
=\frac{\ell^3}{2}\int du\,d^4X\,u^{-3}T_{\mu\nu}H^{\mu\nu}.
\tag{G5}
$$

最后一个配对用 $\eta^{(5)}$ 升 relative indices。暂以 $V_w$ 表示在其 integrand 中乘 $w$。

直接使用 scalar equation 的 off-shell identity，

$$
\bar\nabla^\mu T_{\mu\nu}=(E\phi)\partial_\nu\phi,
\qquad
\bar\nabla^\mu(wT_{\mu\nu})
=w(E\phi)\partial_\nu\phi+(\partial^\mu w)T_{\mu\nu}.
\tag{G6}
$$

在线性 metric gauge variation 下，保留积分分部的 surface current，得到

$$
\delta_\zeta(S_0+V_w)
=\int\sqrt{-\bar g}
\left[(1-w)(E\phi)\zeta^\nu\partial_\nu\phi
-(\partial^\mu w)T_{\mu\nu}\zeta^\nu\right]
+\text{endpoint flux}+O(H\phi^2\zeta).
\tag{G7}
$$

因此，free scalar on shell 时仍有 $\partial w\cdot T$。线性 Einstein operator 的 Bianchi identity 要求其 source 守恒，故裸 $wT_{\mu\nu}$ 对一般 switch 不能作为完整 Einstein source。

这有严格 timelike 的反例。令 $\ell=1$，

$$
\phi(u,t)=u^2J_0(u)\cos t,\qquad E\phi=0,
\qquad s(p)=1.
$$

在 $\partial_t w=1$ 的一个开邻域、$t=\pi/2$，

$$
(\partial^\mu w)T_{\mu t}
=-\frac12u^6J_0(u)^2.
\tag{G8}
$$

这在一般 $u>0$ 非零；相应 local jet 可放入 smooth compact switch，正频 wave packets 也保留开邻域中的非零值。

将 $\chi$ 宣告为 external scalar spurion 会给 Noether identity 增添 $(\delta S/\delta\chi)\partial_\nu\chi$，并不会自动提供补偿的 gravitational source。例如将整个 matter action 乘 $w$ 时，

$$
E_w\phi=wE\phi+(\partial^\mu w)\partial_\mu\phi,
$$
$$
\bar\nabla^\mu(wT_{\mu\nu})
=(E_w\phi)\partial_\nu\phi
-\frac12\big[(\bar\nabla\phi)^2-4\phi^2/\ell^2\big]\partial_\nu w.
\tag{G9}
$$

即使采用新的 scalar equation，最后一项仍需由额外 dynamics 或 completion 承担。原 `half_bps_stress_switching.md` 已明确限定 reduced TT interaction；这里的反例针对把它直接称为完整 covariant switched Einstein action 的额外主张。

## 3. 一个明确的首阶 relational completion

### 3.1 Anchored normal coordinates

将 `half_bps_gravitational_dressing.md` (4)–(7) 改写为 Lorentzian signature：

$$
(\mathcal R\zeta)_{uu}=2\partial_u\zeta^u-2\zeta^u/u,\quad
(\mathcal R\zeta)_{ui}=\eta_{ij}\partial_u\zeta^j+\partial_i\zeta^u,
$$
$$
(\mathcal R\zeta)_{ij}
=\partial_i\zeta_j+\partial_j\zeta_i-2\eta_{ij}\zeta^u/u.
\tag{G10}
$$

定义

$$
\xi^u[H](u)/u=-\frac12\int_0^u\frac{H_{uu}(s)}s\,ds,\qquad
\xi^i[H](u)=-\int_0^u ds\,\eta^{ij}
\big[H_{uj}(s)+\partial_j\xi^u(s)\big],
\tag{G11}
$$
$$
H^{\mathrm r}=\mathcal P H=H+\mathcal R\xi[H],\qquad
\Phi=\phi+\xi^\mu[H]\partial_\mu\phi.
\tag{G12}
$$

在上述 anchored domain 上，

$$
\xi[H+\mathcal R\zeta]=\xi[H]-\zeta,\qquad
\delta_\zeta H^{\mathrm r}=0,\quad
\delta_\zeta\Phi=O(H\zeta).
\tag{G13}
$$

这里 $H^{\mathrm r}_{u\mu}=0$。与 Euclidean 公式相比，(G11) 中的 $\eta^{ij}$ 对 time component 的符号必要。

这里使用的 field domain 还要求 $\xi[H]$ 是允许的 gauge vector，或其 IR endpoint contribution 已显式纳入 action。一个充分且非空的严格 domain 是：从 normal FG representative 出发，只作满足 §1 条件且在 IR/time endpoints 为零的 anchored gauge transformations；此时 $\xi=-\zeta$，所有端点恒等式成立。对于更一般的 finite-wall metric，任意 radial-length perturbation 可能阻止这样的 representative，正如原 dressing 报告 §3 已指出。本文的 first-order theorem 始终保留该 domain 条件。

### 3.2 自由 action 的补偿是 completion 的一部分

令

$$
D[H,\phi]:=\left.\frac{d}{d\epsilon}
S_0[\phi+\epsilon\,\xi[H]\cdot\partial\phi]\right|_{\epsilon=0}.
\tag{G14}
$$

这是已完成 boundary action 的 variation；其 bulk 部分是 $\int\sqrt{-\bar g}(E\phi)\xi\cdot\partial\phi$。无 switch 的 diffeomorphism identity 给出

$$
V[\mathcal P H,\phi]=V[H,\phi]-D[H,\phi],
\tag{G15}
$$

其中 endpoint contributions 按 §1 契约同时保留。

定义首阶 deformed action

$$
\boxed{
S_w^{\mathrm{anc}}
=S_{\mathrm{EH}}[g]+S_0[\Phi]
+V_w[H^{\mathrm r},\Phi]+O(H^2\phi^2).
}
\tag{G16}
$$

其展开是 $S_{\mathrm{EH}}+S_0[\phi]+D+V_w[\mathcal P H,\phi]$。因此：

1. 对任意固定 $w$，(G13) 使 (G16) 在所列阶数下对 anchored bulk gauge invariant。
2. 当 $w=1$ 时，(G15) 给出原 Einstein–scalar action 的 $H\phi^2$ 展开。
3. 在 normal FG representative，$\xi=0$，故 scalar source、action 与 finite-radius insertion 均化为原坐标表示。

单独将 $\chi$ 写成 anchored-coordinate function，同时保留 $S_0[\phi]$ 并用 $V_w[\mathcal P H,\phi]$，会遗漏 (G14)。遗漏后的 free scalar variation 正是 $(E\phi)\zeta\cdot\partial\phi$，这是一个 off-shell defect。

把 (G16) 写回原 coordinate fields，可得到可直接变分的最小修复：

$$
\boxed{
S_w^{\mathrm{anc}}
=S_{\mathrm{EH}}+S_0[\phi]+V_w[H,\phi]
+\int\sqrt{-\bar g}\left[
(1-w)(E\phi)\xi^\nu\partial_\nu\phi
-(\partial^\mu w)T_{\mu\nu}\xi^\nu
\right]+\text{endpoint completion}
+O(H^2\phi^2).
}
\tag{G17}
$$

$\delta\xi=-\zeta$ 使方括号的 variation 恰为 (G7) 的相反数。第一个新增项保证 off-shell gauge identity；第二个新增项承担 switch force。在 normal FG gauge 中二者的数值为零，其 metric variation 仍然提供 radial constraint source。

此 construction 使用既定 anchors，径向上非局域。在有限 $w$ 下，它是原理论在物理 relational variables 上的指定 deformation；它的定义包括这些 reference data。它恢复 $w=1$ 的原 action 到本报告所控制的阶数。

### 3.3 Finite insertion 由同一 source functional 给出

以

$$
S_j=\int da\,d^4x\,j(a,x)\,
\mathcal N(a/\ell)^{-2}\Phi(a,x),\qquad
\mathcal N^2=2\pi^2/\ell
\tag{G18}
$$

定义 observable，先使用 smooth radial layers。其展开正是

$$
\mathcal U_a=U_a+
\left[\xi^u(\partial_u+2/u)U+\xi^i\partial_iU\right]_{u=a}.
\tag{G19}
$$

因此 source variation 产生 dressing contacts，与 bulk variation 同源。该论证使用 finite-radius bulk source functional；边界算符只在随后 prescribed limit 中出现。

## 4. Radial constraints：守恒 completion 的完整公式

### 4.1 Adjoint map

令 $J_{ij}=wT_{ij}$，所有 tangent contractions 使用 $\eta$。由 (G11) 进行 radial Fubini 与 tangential integration by parts，

$$
\langle J,\mathcal P H\rangle_{u^{-3}}
=\langle Q,H\rangle_{u^{-3}},\qquad Q=\mathcal P^\dagger J,
$$

其中

$$
\boxed{
\begin{aligned}
Q_{ij}(u)&=J_{ij}(u),\\
Q_{ui}(u)&=u^3\int_u^L ds\,s^{-3}\partial^jJ_{ji}(s),\\
Q_{uu}(u)&=u^2\int_u^L ds\,s^{-3}
\left[J^i{}_i(s)+\frac{s^2-u^2}{2}
\partial^i\partial^jJ_{ij}(s)\right].
\end{aligned}}
\tag{G20}
$$

$L$ 在 vertex cutoff 的支撑之外，采用 $Q_{u\mu}(L)=0$。直接微分给出

$$
(\partial_u-3/u)Q_{ui}+\partial^jQ_{ji}=0,
$$
$$
(\partial_u-2/u)Q_{uu}+\partial^iQ_{iu}+Q^i{}_i/u=0,
\tag{G21}
$$

即 $\bar\nabla^\mu Q_{\mu\nu}=0$。这同时控制 radial momentum 与 Hamiltonian constraints。有限源的 scalar equation 与 (G18) 一起变分时，$(E\phi+J_\phi)\delta\Phi/\delta H$ 消去；剩余的 metric source 正是 (G20)。其中包含原 insertion strings 和新 switch-force strings。

给定 tangent $J$、上述 endpoint 条件，并要求新增 tangent tensor 为零，(G20) 唯一。放松 endpoint 条件时存在

$$
\Delta Q_{ui}=u^3c_i,\qquad
\Delta Q_{uu}=u^2c_0-\frac12u^4\partial^ic_i.
\tag{G22}
$$

这些是必须由 endpoint/edge prescription 决定的数据；本报告沿用原研究的零附加-sector 选择。

### 4.2 直接补偿一个非守恒 source

若先写 $\widetilde Q=wT$，定义其 flat-relative divergence

$$
F_i=(\partial_u-3/u)\widetilde Q_{ui}
+\partial^j\widetilde Q_{ji},
\quad
F_u=(\partial_u-2/u)\widetilde Q_{uu}
+\partial^i\widetilde Q_{iu}+\widetilde Q^i{}_i/u.
$$

在 free scalar on shell 时，

$$
F_\nu=(\partial_u w)T_{u\nu}+(\partial^i w)T_{i\nu}.
\tag{G23}
$$

径向修复 $R=Q-\widetilde Q$ 为

$$
R_{ij}=0,\qquad R_{ui}=u^3\int_u^Lds\,s^{-3}F_i(s),
$$
$$
R_{uu}=u^2\int_u^Lds\left[
\frac{F_u(s)}{s^2}
+\frac{s^2-u^2}{2s^3}\partial^iF_i(s)\right].
\tag{G24}
$$

(G21) 与 (G24) 已用 arbitrary-function tensor source 独立符号验证。对于 sourced scalar，(G23) 另含 $(\ell^2/u^2)w(E\phi)\partial_\nu\phi$；source dressing 与之共同恢复 (G20)。

## 5. 与已有 reduced TT calculation 的精确关系

### 5.1 Vertex 与 projector

定义 $U=\mathcal N(u/\ell)^{-2}\phi$、$C_0=2\pi^2$。对物理 free normalizable metric，$H_{u\mu}=0$、$H_{ij}=\gamma_{ij}^{TT}$。BF metric vertex 为 trace term；对该 metric，其 TT contraction 为零，normalizable endpoint variation 也趋零。因此 (G5) 直接给出

$$
V_w^{TT}
=\frac1{2C_0}\int du\,d^4X\,u\,\beta(u)\chi(X)
\gamma^{ij}\partial_iU\partial_jU,
\tag{G25}
$$

恰是 `half_bps_stress_switching.md` (3)，包括符号和 $1/2$。

Scalar variation 给出

$$
\mathcal D U_{1,\chi}
=\beta\,\partial_i(\chi\gamma_0^{ij}\partial_jU_0).
\tag{G26}
$$

Metric variation 先给完整 output source $J_{ij}=\chi T_{ij}$。对 §5.2 明确定义的完整 retarded Einstein response 作 causal TT projection 后，其方程为

$$
L_2\gamma^{TT}_{1,ij}
=-\frac4{N^2}u^4\beta\,
\Pi_{ij,kl}\big[\chi:\partial^kU_0\partial^lU_0:\big].
\tag{G27}
$$

这里 $\Pi$ 的 Fourier momentum 是最终 output momentum。一个 exact counterexample 可见其必要性：取 $k=(2,0,0,0)$、$\Omega=(0,1,0,0)$、$p=k+\Omega$、$q=(3,0,1,0)$。正确 source $\Pi(p)qq$ 满足 $p^iJ_{ij}=0$；若以 $\chi\Pi(k)qq$ 代替，所得 divergence 是 $(0,-1/3,0,0)$。

### 5.2 有限 regulator 的 source/coefficient 桥接与 causal observable

定义 \(\Pi_{\rm ret}\) 由 boundary wave operator 的 retarded inverse 及其平方构成。它先作用于 divergence/trace，再作用于 causal inverses。在 affine histories \(H=H_0+h_{\rm ret}\) 上，free normalizable TT 部分 \(H_0\) 被保持，有限 switch 的 correction 为 past-compact。有限径向层的 metric insertion 定义为
\[
\mathcal T_a^{\rm ret}[j]
=\frac1\alpha\int du\,\rho_a(u)u^{-4}
\int d^4X\,j^{ij}\,[\Pi_{\rm ret}\mathcal P H]_{ij}.
\]
其真实 source adjoint 是 \(\Pi_{\rm adv}j\)，自由项由 TT identity 定义，受源项按 proper causal pairing 定义。这里 \(j\) 是在零值处求导的 insertion source，未被假定为一个从无穷过去开启的普通 compact force。

**命题。** 对 (G16) 的完整守恒 source \(Q=\mathcal P^\dagger(wT)\)，采用零过去数据、normalizable UV、outgoing TT radiation，保留由完整约束决定的 non-TT response。上述 causal observable 的三点 coefficient 等于原明确给定的 \(G_2^{\rm ret}\Pi_{\rm ret}\) 全插入 coefficient。在具有光滑紧谱振幅、质量 gap 的 dense free-CPS domain 上，本阶 IR cross flux 也为零。

**证明的关键步骤。** half_bps_stress_causal_source_bridge.md (P8)–(P12) 从完整 Einstein constraints 显式构造 trace/divergence 与 non-TT metric，并由 Bianchi identity 验证全部 sourced equations。对该完整解投影后，方程恰为 (G27)，其中 projector 是 \(\Pi_{\rm ret}\)。retarded radial uniqueness 给出 \(G_2^{\rm ret}\Pi_{\rm ret}J\)，其 upper-half-frequency identity
\[
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)\Pi_{\rm ret}(p)
=\tfrac12[s(p)^2\Pi(p)]\,\partial_{s(p)}^2\mathscr R_p(0,u)
\]
固定全部 null terms。middle/right scalar insertions 仍由 (G26) 给出；normal FG 中 free scalar dressing 与 physical cubic vertex 的既有论证保持成立。三个插入的共同 regulators、radial jump、输出 momentum 与 Wick factors 均相同。

这段 source/constraint 论证是必要的。对 \(\Pi_{11,11}=A+B/s+C/s^2\)，裸 mode dispersion 与上述 inverse 的差为 \(BH_0/s+C(H_0+sH'_0)/s^2\)，其中 \(H_0=-1/4,H'_0=-u^2/16\)。例如 \(p=(\omega,k,0,0)\) 的差为
\[
-\frac{k^2}{3s_{\rm ret}}
-\frac{k^4}{6s_{\rm ret}^2}
-\frac{k^4u^2}{24s_{\rm ret}},
\]
并在 \(s=2,k=u=1\) 等于 \(-11/48\)。原先仅凭 free physical modes 断定相同 retarded inverse 的论证被此处替换；本文没有对裸 \(\theta\)-commutator 声称相同结果。

完整 global interacting CPS 仍需控制 sourced–sourced symplectic pairing 与更高阶 endpoint domain；当前命题是指定 causal observable、指定 dense free test domain 上的首阶 weak/coefficient theorem。

对应的 radiative boundary stress 使用原归一化

$$
\widehat T^{TT}=\frac1\alpha\lim_{u\to0}u^{-4}\gamma^{TT}(u),
\qquad \alpha=2\sqrt{10}/N.
\tag{G28}
$$

BF counterterm 的直接 scalar-squared metric vertex 在 TT projection 下为零。此处的 observable 是固定 boundary-normal dressing 的 radiative TT stress；完整 varying-boundary-metric response 同时含下一节的 anchor/trace data。

## 6. Ward data、端点与 adiabatic remainder

### 6.1 Bulk constraints 与 boundary Ward 的接口

由 (G20)，若 $Q_{ui}=u^3A_i+o(u^3)$、$Q_{uu}=u^2C+o(u^2)$，与 gauge metric 的配对为

$$
\langle Q,\mathcal R\zeta\rangle_{u^{-3}}
=2\left[\int d^4X\,u^{-3}Q_{u\nu}\zeta^\nu
\right]_{\mathrm{UV}}^{\mathrm{IR}}.
\tag{G29}
$$

Anchored parameters 使 UV term 为零。对于 boundary $v,\sigma$，$\zeta^i\to v^i$、$\zeta^u/u\to-\sigma$，UV contribution 为

$$
-2\int d^4X\,(A_iv^i-C\sigma).
\tag{G30}
$$

因此 (G21) 是完整 bulk constraint identity，而 (G30) 记录了非零 boundary anchor response。对 $w=1$，保留 BF metric vertex 与 covariant density-source subtraction 后，它衔接 `half_bps_mixed_ward.md` (9)–(16) 的 PBH/source Ward identities。对有限 switch，变动 anchor/frame 时还必须变动该外部 profile 所代表的 reference data。把有限 $\chi$ 的 radiative projection 直接称为完整 curved-source stress response，会漏掉这些信息。

本报告为这一接口给出可计算的 source formula。完整有限-$\chi$ curved-source functional 的 specification、PBH variation 与其边界分布极限应作为单独对象保留；(G16) 的 anchored-gauge invariance本身控制的是 gauge quotient。

### 6.2 Switch 与 adjoint 的交换子只有一阶、二阶导数

令 $J=\beta T_{ij}$，$Q_1=\mathcal P^\dagger J$。则

$$
\Delta Q_\chi:=\mathcal P^\dagger(\chi J)-\chi\mathcal P^\dagger J
$$

满足

$$
\Delta Q_{ij}=0,\qquad
\Delta Q_{ui}
=u^3\int_u^Lds\,s^{-3}(\partial^j\chi)J_{ji}(s),
\tag{G31}
$$
$$
\Delta Q_{uu}
=u^2\int_u^Lds\,s^{-3}(s^2-u^2)
\left[(\partial^i\chi)\partial^jJ_{ij}
+\frac12(\partial^i\partial^j\chi)J_{ij}\right].
\tag{G32}
$$

这两式准确描述额外 radial switching sources，也给出 (G30) 的 finite-switch correction。它们没有新的 momentum inverse。

### 6.3 固定径向 regulator 下的 rapid local estimate

令 $\chi_R(X)=\chi(X/R)$，$\chi\in C_c^\infty$ 且在原点邻域恒为 1。保留固定紧径向 vertex cutoff、smooth external radial layers；使用 free Wick contraction 的独立谱动量与 $\Omega$ 作为全 nonstationary momentum variables。则 free cone indicators 与 $\Omega$ 无关，而 (G31)–(G32) 的 switch-free coefficients 在 $\Omega$ 中是 polynomial，或在 compact momentum/radial sets 上具有一致有界的有限阶导数。

对于 $K\Subset\mathbb R^{12}$ 和任意 $M$，由

$$
\int d\nu(v)\,\widehat\chi(v)=1,\qquad
\int d\nu(v)\,v^\beta\widehat\chi(v)=0\quad(|\beta|>0)
$$

及 Taylor remainder 可得

$$
\boxed{
\left|\langle\Delta Q_{\chi_R},\Psi\rangle\right|
\le C_{\beta,K,M}\,R^{-M}
\max_{|\nu|\le M+2}\|\partial_\Omega^\nu\Psi\|_\infty .
}
\tag{G33}
$$

此式也适用于固定的 smooth radial pairing，以及对应 finite-regulator boundary-flux moments。$(\chi_R-1)Q_1$ 具有相同 approximate-identity bound。角点/null strata 不引入 $\Omega$ 导数，因为 derivative 全作用在 polynomial numerator 与 test 上。

**估计的精确界限。** 常数允许依赖 radial cutoff。$u$ 的 IR moments 在单个 Lorentzian generalized mode 上可能增长或形成振荡分布；仅凭 $\partial\chi_R=O(R^{-1})$ 不能推出移去 radial regulator 后的同一界。要先移去径向 cutoff，需要该径向 pairing 的 uniform distributional estimate。对本报告的 causal projected coefficient，完整 Einstein 解中的 non-TT constraint response 被 \(\Pi_{\rm ret}\) 精确消去，TT equation 的 tangent source 保持 (G27)；其中从完整 response 继承的 massless terms 已保留，不能换成裸 mode inverse。完整 boundary stress/charge response则需要跟踪 radial moments。即使 \(Q_{u\mu}\) 在 source 区外为零，\(I_i(\infty)\) 一般非零，FG non-TT metric 可有 \(u^2\) pure-gauge tail；其当前阶 dense-domain IR 配对与更广的 global endpoint 条件见 half_bps_stress_causal_source_bridge.md §3。

## 7. 对完整物理 identification 的精确推论

令 $W^{TT,\mathrm{anc,ret}}_{\chi,\beta}$ 是 (G16) 加上 §5.2 明确 causal insertion source 定义的 first-order coefficient，$W^{TT,\mathrm{prescribed}}_{\chi,\beta}$ 是已有明确使用 \(G_2^{\rm ret}\Pi_{\rm ret}\) 的 coefficient。完整 source/constraint 证明给出共同有限 regulators 下的

$$
W^{TT,\mathrm{anc,ret}}_{\chi,\beta}
=W^{TT,\mathrm{prescribed}}_{\chi,\beta}.
\tag{G34}
$$

因此，凡是右侧已经建立的 regulator limit，左侧具有相同极限。特别是原 `half_bps_stress_switching.md` 的 all-null boundary-subtracted local theorem 立即具有本报告指定的 anchored gauge-consistent realization。

进一步，若在**同一** retarded prescription、normal ordering、BF/source scheme 和不增添独立 edge distributions 的规则下证明：

1. complete switched boundary corner trace 在全部 null strata 上的 distributional adiabatic limit 存在，并等于独立 CFT Wightman cut；
2. complete finite-radius kernel 的 homogeneous/Volterra cancellation 满足所需 global tempered estimate；

则 (G34) 把该 mathematical limit 识别为这里明确的 causal-history relational TT coefficient 的 regulator limit，并在指定 dense free-CPS domain 上给出当前阶 weak matrix coefficient。此推论无需另行把 external imaginary shifts、complex-frequency Abel 或 Gram truncation 宣告为相同 regulator。它也不把裸 mode \(\theta\)-commutator 与 causal projected full response 识别为相同 observable。

完整 mixed boundary stress 的物理识别还要给出 compatible curved-source/anchor extension，核对 (G30) 的所有 longitudinal/trace data 与既定 PBH/BF scheme。对应 Ward defect 的 uniform IR estimate 或等价完整 action-source 论证，应在其独立证明中明确出现。本文完成的是一个 cubic-order anchored-gauge bridge；nonlinear gauge algebra、interacting positivity、全部 particle-number blocks、loops 与全阶 BRST construction 属于后续阶数。

## 8. 实际独立执行记录

本报告新程序为 `gauge_completion_checks.py`，机器输出为 `gauge_completion_results.json`，完整执行日志为 [captured stdout/stderr](checks/stress_completion/execution_record.json)。使用 Python 与 SymPy 1.14.0，最终执行得到 **46 个精确零残差**，包括：

| 检查 | 方法与结果 |
|---|---|
| 五维 AdS scalar Noether identity | 从 $g=u^{-2}\eta$ 的 Christoffels 对 arbitrary $\phi(u,t,x,y,z)$ 直接计算，5 个零残差 |
| Switched Bianchi defect | 对 arbitrary $w$ 独立计算 $\nabla(wT)$，5 个零残差 |
| Action variation 与 endpoint current | 任意五分量 $\zeta$ 的 Lie derivative 直接进入 metric vertex，精确恢复 (G7) |
| 物理 timelike 反例 | $\phi=u^2J_0(u)\cos t$ 的 BF equation 与 (G8) 精确通过 |
| Lorentzian anchored map | 对任意边界函数构造纯 gauge $H=\mathcal R\zeta$，全部五分量 $\xi=-\zeta$ |
| $\mathcal P^\dagger$ constraints、terminal data、switch commutator | 对 arbitrary symmetric tensor functions 与非平凡径向 profile 独立积分/微分，全部 residual 为零 |
| 任意 radial force 的修复 | 独立代入 (G24)，全部五个 constraint residual 为零 |
| TT projector 的位置 | 正确 output projector 的 divergence/trace 为零，错误位置给出明确非零 vector |
| Canonical/BF scalar normalization | 原 $\ell^3u^{-3}H\,\partial\phi\,\partial\phi/2$ 精确化为 $u\gamma\,\partial U\,\partial U/(2C_0)$ |

这些计算核验代数、变分、normalization 与 finite-regulator constraints。(G33) 的任意 test、任意 $M$ 结论由 §6 的解析 moment argument 支持。其余未完成的 limit hypotheses 按 §7 保留。

## 9. 本报告的结果等级

| 新命题 | 分类 | 条件 |
|---|---|---|
| 朴素 switch 的 Bianchi obstruction 与严格 timelike 反例 | A | Canonical BF scalar 与非恒定 switch |
| (G16)/(G17) 的 cubic-order anchored gauge completion | A | 指定 anchor、同一 completed endpoint action、限定 $H\phi^2$ 阶 |
| Conserved $\mathcal P^\dagger$ source 与约束公式 | A | 固定 radial endpoint prescription |
| 有限 regulator 的 causal projected TT source/coefficient 桥接 | A | §5.2 的明确 source；完整 constraints；零过去数据、normal UV、outgoing TT；当前阶 dense wave-packet IR domain |
| 固定 radial cutoff 的 rapid local switching remainder | A | Plateau scaling、compact full-momentum test topology |
| 该 causal observable 的 adiabatic/CFT identification | B，随独立 limit theorem 完成而闭合 | §7 所列同一 canonical boundary trace 与 global coefficient estimates |
| 完整 global interacting Einstein/CPS identification | B | sourced–sourced pairing、更高阶和完整 horizon/endpoint theorem 仍独立保留 |

该 construction 的实质贡献是给出“真实 spacetime switch 如何与 constraints 相容”的一种实现，并通过新增的明确 causal insertion specification 实现已计算的 first-order kernel。其选择的 anchor、causal projection、endpoint/domain 与扰动阶数构成结论的一部分。

## Reproducible verification files

- [gauge_completion_checks.py](checks/stress_completion/gauge_completion_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
