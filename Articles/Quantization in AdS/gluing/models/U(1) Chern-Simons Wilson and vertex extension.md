# U(1) Chern–Simons Wilson／vertex 扩张

工作包 C。**Smooth endpoint densities 属于原 regular current/Weyl sector；sharp endpoint 不属于原 smooth Hamiltonian domain。量子 sharp limit 的正确对象是 charged intertwiner 的 mode operators 和 ordered insertion distributions。** 本文固定 free-boson normal ordering，证明 Ward identity、collision renormalization 和相容的 current-to-vertex sewing。未选择这种共同 prescription 的独立 regional Fock products 不在定理内。

## 1. 从 smooth regularization 开始

用 [disk 模型](<U(1) Chern-Simons disk and open-chord sewing.md>) 的 $\Omega(u,w)=-k\oint u\,dw/(2\pi)$。在不同 physical points $P,Q$ 取 smooth unit-integral approximate identities，令
$$
\rho_\epsilon=\rho_{Q,\epsilon}-\rho_{P,\epsilon},\qquad
L_\epsilon(\phi)=\int\rho_\epsilon\phi\,ds,
\qquad V_{q,\epsilon}=e^{iqL_\epsilon}.
$$
总 integral 为零，所以 $L_\epsilon$ 不依赖 $\phi$ 的常数。取唯一 mean-zero primitive
$$
\partial_s\alpha_\epsilon=-\frac{2\pi}{k}\rho_\epsilon.
$$
Integration by parts 给 $L_\epsilon=Q[\alpha_\epsilon]$，$X_{L_\epsilon}\phi=\alpha_\epsilon$，以及 complexified vector $X_{V_{q,\epsilon}}=iqV_{q,\epsilon}\alpha_\epsilon$。它们是实际 smooth Hamiltonian fields。

Sharp limit 的 primitive 是 jump function，故 $e^{iq[\phi(Q)-\phi(P)]}$ 虽是 smooth phase space 上的一个 scalar function，其 Hamiltonian vector 不在该 smooth tangent space 内。此 membership 障碍与场本身是否可取 point value 无关。

由原 current bracket 得
$$
\{Q[\beta],V_{q,\epsilon}\}=-iq\left(\int\rho_\epsilon\beta\right)V_{q,\epsilon},
\qquad
[\widehat Q[\beta],\widehat V_{q,\epsilon}]
=\hbar q\left(\int\rho_\epsilon\beta\right)\widehat V_{q,\epsilon}.
$$
后一式来自 central commutator 的 BCH，正则化时已经成立，不是从形式 sharp OPE 猜出的。

## 2. 未 renormalize 的 Weyl operators 没有 sharp 强极限

以下固定 $\hbar=1$、正偶整数 $k$。原 source-free disk current Fock sector 为 $\mathcal F_0$，$[J_n,J_m]=kn\delta_{n+m,0}$、$J_n^*=J_{-n}$、$J_{n>0}|0\rangle=0$。用 Poisson-kernel regulator $r=e^{-\epsilon}$，neutral pair 的 Gaussian variance 为
$$
\operatorname{Var}(qL_r)=\frac{q^2}{k}
\sum_{n>0}\frac{r^{2n}}n|e^{inQ}-e^{inP}|^2
=\frac{2q^2}{k}\log\frac1{1-r^2}+O(1),\quad P\ne Q.
$$
因而 $\langle0|e^{iqL_r}|0\rangle=e^{-\operatorname{Var}(qL_r)/2}\to0$。任意两个 finite-occupation vectors 的 matrix element 是这个因子乘一个仅依赖有限个 mode coefficients 的 polynomial；这些 coefficients 在 $r\uparrow1$ 有限。所以所有这类 matrix elements 趋零，unitarity 与稠密性给 weak operator limit 为零。每个 Weyl operator 在真空上的 norm 仍为一，故不可能 strong 收敛。这里并未把 weak zero 称为一个可用的 Wilson operator。

Normal ordering 乘回 $e^{\operatorname{Var}/2}$ 后，matrix elements 可有非零 distributional limit，但 norm 不再有界。这说明必须重新声明对象和 domain。

## 3. Charge lattice、common core 与明确的 vertex

选择 integer charges $n,q\in\mathbb Z$ 和
$$
\mathcal H_{\rm ch}=\bigoplus_{n\in\mathbb Z}\mathcal F_n,
\qquad p|\mathcal F_n=n,
\qquad R_q:\mathcal F_n\to\mathcal F_{n+q},
\qquad[p,R_q]=qR_q.
$$
$\mathcal F_n$ 的 oscillator algebra 与 $\mathcal F_0$ 相同；$L_0=p^2/(2k)+\sum_{m>0}J_{-m}J_m/k$。Dense domain $\mathcal D_{\rm fin}$ 是 finite charge、finite oscillator-energy vectors 的 span。$R_q$ 在此 direct sum 上 unitary。固定 radial ordering、logarithm branch，以及 $R_qR_r=R_{q+r}$ 的 charge convention。

定义 planar field
$$
\begin{aligned}
V_q(z)&=E_q^-(z)R_q z^{qp/k}E_q^+(z),\\
E_q^-(z)&=\exp\left(\frac qk\sum_{m>0}\frac{J_{-m}}m z^m\right),\\
E_q^+(z)&=\exp\left(-\frac qk\sum_{m>0}\frac{J_m}m z^{-m}\right).
\end{aligned}
$$
对于 $0<|z|<1$，它作用于 $\mathcal D_{\rm fin}$ 有定义：annihilation exponential 在每个 finite-energy vector 上截断，creation exponential 的 one-particle norm 为 $q^2\sum|z|^{2m}/(km)<\infty$。多个 fields 在 $1>|z_1|>\cdots>|z_N|>0$ 上的 ordered product 同样有定义，contractions 的级数绝对收敛。

每个 formal Laurent coefficient $V_q[\nu]$ 把 finite-energy vector 送到一个固定 energy grade；这个 grade 只有有限个 oscillator partitions，故该 coefficient 是 $\mathcal D_{\rm fin}\to\mathcal D_{\rm fin}$ 的实际 operator。Exponents 可为 rational，按 charge sector 使用固定 branch/cover，不能不加说明地当作 integer-moded vacuum field。

Adjoint identity 为
$$
V_q(z)^*=\bar z^{-q^2/k}V_{-q}(1/\bar z)
$$
（按 radial matrix elements 理解）。它使每个 mode 的 adjoint 包含另一个明确 mode 在 $\mathcal D_{\rm fin}$ 上的 restriction，所以 mode operators 可闭。Cylinder field $\Phi_q(s)=z^{q^2/(2k)}V_q(z)$、$z=e^{is}$ 满足 $\Phi_q(s)^*=\Phi_{-q}(s)$。有限 mode words 组成一份共同 invariant dense core 上的 $*$-algebra。

但是 $V_q(e^{is})$ 本身不是该 domain 上的 point operator。对真空，
$$
\|V_q(r)|0\rangle\|^2=(1-r^2)^{-q^2/k}\longrightarrow\infty\quad(q\ne0).
$$
逐 finite-energy input 的 coefficients 有 polynomial energy growth：vacuum coefficients 的平方和由 $(1-x)^{-q^2/k}$ 的 binomial coefficients 给出；插入有限个 oscillators 只增加有限阶 polynomial factors。这给每个 $\mathcal D_{\rm fin}$ input 的 smooth angular smearing 一个 Hilbert vector，并给 $\mathcal D_{\rm fin}\times\mathcal D_{\rm fin}$ 上的 boundary distributions。它**不**单独证明任意 smeared products 保持一个共同 Sobolev domain。本文实际 algebra 使用 invariant mode core；ordered distribution products 则使用下面明示的 prescription。

原 disk 的 physical observable sector 是 charge-zero words 在 $\mathcal F_0$ 上的作用。单个 $V_q$ 是 $\mathcal F_n\to\mathcal F_{n+q}$ 的 intertwiner，不是 source-free disk vacuum algebra 内的算符；非零 $n$ 是扩大的 charged representation data，不能说原 smooth flat disk 已包含这些 classical sectors。偶整数 $k$ 时 charges $q\in k\mathbb Z$ 可组成通常 even-lattice local extension；全部 integer $q$ 的 charged fields 一般带 braid phases，不是一套共同 local bosonic fields。

## 4. Ward identity、OPE 与 renormalized collision

直接与 creation、annihilation、zero-mode factors 对易给
$$
[J_m,V_q(z)]=qz^mV_q(z),\qquad [p,V_q(z)]=qV_q(z).
$$
所以对 neutral pair（同一 cylinder convention）
$$
\boxed{[\widehat Q[\alpha],\Phi_q(Q)\Phi_{-q}(P)]
=q[\alpha(Q)-\alpha(P)]\Phi_q(Q)\Phi_{-q}(P).}
$$
这是 mode/distribution identity；恢复 $\hbar$ 后右边乘 $\hbar$。它与第 1 节每个 regulator 的恒等式一致。

对 $|z|>|w|$，BCH contraction 是
$$
E_q^+(z)E_r^-(w)=(1-w/z)^{qr/k}E_r^-(w)E_q^+(z).
$$
Zero-mode reordering 再给 $z^{qr/k}$。由此定义一致的 radial normal ordering，并得到
$$
V_q(z)V_r(w)=(z-w)^{qr/k}:V_q(z)V_r(w):,
\qquad
\lim_{z\to w}(z-w)^{-qr/k}V_q(z)V_r(w)=V_{q+r}(w).
$$
最后的 limit 是在固定 branch 上的 ordered OPE / coefficientwise finite-energy matrix-element limit，不是 Hilbert norm limit。其 derivatives 给所有 descendant counterterms；它指定了碰撞时的 renormalized product。

对多点，contraction 为 $\prod_{i<j}(z_i-z_j)^{q_iq_j/k}$。严格 radial domains 中 BCH 证明关联性；再按同一 analytic continuation branch 取得 boundary distributions。交叉不同 branch 会得到由这些 powers 明确确定的 braid phase。故“不同 ordering 一律相等”是错误的；相等的是相同 contour/order/branch prescription 下的两种 sewing。

一般 even-lattice VOA 的全体 polynomial energy bounds 可参见 [Carpi–Tomassini, Proposition 4.2](https://link.springer.com/article/10.1007/s11005-023-01682-y)。这项外部 theorem 不被用来替代本文对全部 integer-charge intertwiners 的 domain 声明，也不把逐 input 的估计升级为未验证的 uniform bound。

## 5. 与 corner-compatible current sewing 的比较

先从 regional actions 得到 open-chord 的 $C,K,r$，或工作包 A 的 $C_Y,K_Y,r$；其定义只使用 regional traces、face identification 与 physical outer coordinate。以下实际 invariant mode algebra 使用 $r$ 下 finite Fourier labels 的原像，加上全部 central cut labels。任意 smooth current smearings 另按 insertion forms 理解，不声称它们保持 $\mathcal D_{\rm fin}$。固定一个已证明存在的连续 linear section $s$。对 Fourier label 定义 regional lifts
$$
J_n^C=Q_C[s(e^{ins})],\qquad n\ne0.
$$
它们的 commutators 正好为 $kn\delta_{n+m,0}$；cut currents 与它们对易。采用与第 3 节相同的 charge lattice、radial ordering 和 positive frequencies，从这些 regional lifted currents **构造** $E_q^{C,\pm}$、$V_q^C$。这里的额外 quantum input 是共同的 oscillator/charge prescription，不是任意两份 regional vacua。

选定 source realization 保留 central cut currents 为 independent polynomial variables，vertex modes 用刚构造的 lifted oscillators 和 $R_q$ 作用。所有元素只有有限 cut-polynomial degree 和有限 mode-word length。PBW 给 oscillator 与 central cut factors 的分离；实际 mode relations 则由同一 explicit coefficient operators 决定。独立 target 在第 3 节的 global $\mathcal H_{\rm ch}$ 上预先定义。其 comparison 把 $J_n^C,R_q$ 送到 $J_n,R_q$，cut currents 送零。因 finite cut-polynomial coefficients 的唯一性，
$$
\ker\mathcal Q=\langle Q_C[K]\rangle,\qquad
\operatorname{im}\mathcal Q=\mathcal A^{\rm vertex\ modes}_{\rm global}.
$$
这是 **所选 common-prescription matched source** 的完整 kernel；不声称 raw universal vertex symbols 或任意 independent regional vertex tensor product 只有这一个 ideal。Charge-zero words 在 $\mathcal F_0$ 上也给同样的 comparison，双方均按实际 operator relations 取 realization。

对每个 $r<1$，regularized fields 用 convergent oscillator series 构造，comparison 逐 coefficient 成立。在 strict radial domains，收敛的 BCH products 给相同 analytic functions；按固定 prescription 取 distributional boundary values，sewing identity 继续成立。改变 section 只增加 central cut labels，商后不改变每个 fixed mode 或已定义的 boundary distribution。这里没有要求在未约束的 central directions 上构造一个有界 Fock limit。

Cross-seam Wilson 的 endpoint cancellation 可以直接验收。把路径在 artificial point $Z$ 切成两段，中间 charges 为 $-q,+q$，则
$$
\lim_{z\to w}(z-w)^{q^2/k}
V_q(Q)V_{-q}(z)V_q(w)V_{-q}(P)
=V_q(Q)V_{-q}(P),
$$
其中其他 insertions 与 $Z$ 分离，所有 quantities 按同一 radial order/branch 解释。中间 OPE 的 identity coefficient 为一，descendants 的正 powers 消失；其余 contractions 在极限中逐对抵消。多个 cuts 的 endpoint cancellations 因同一个多点 product formula 一致。省略 $(z-w)^{q^2/k}$ 就没有这个 sewing limit。

在 [annulus](<U(1) Chern-Simons annulus sewing.md>) 上，使用 paired charge spaces $\bigoplus_n\mathcal F_n\otimes\mathcal F_{-n}$ 与两份 endpoint variables；period/zero-mode algebra 另从 annulus CPS 得到。两个 independent mode coefficients 保持 finite-energy domain。Annulus note §5.1 已给出同一 equal-time angle 的解析 pullback theorem：非零 charge 满足 $q^2/k<1/2$ 时，smooth spatial smearing 在每个 finite-energy input 上有 Hilbert limit且可闭；$q^2/k\ge1/2$ 时任何非零 spatial smearing 都不具有真空域。该阈值不改变本节完整 mode/ordered-distribution algebra 的定义。

## 6. 验收范围

**Verified:** smooth membership 与 Ward identity；未 renormalize Weyl 的 weak-zero/no-strong-limit 结论；charged mode domain 与 adjoint；radial products、OPE collision prescription；共同 prescription 下的 matched-source kernel/image 与 neutral endpoint sewing。有限 BCH、norm generating function 等由 [验算记录](<../numerics/CS and YM five work packages verification.md>) 核对。

**Assumptions:** $\hbar=1$、偶整数 $k>0$、integer charge lattice、free current Fock modules、固定 radial branch/normal ordering、finite mode algebra 与声明的 insertion distributions。

**Not verified:** 任意 sharp point operators、任意 smeared-word completion、任意 independent regional normal orderings 的自动一致、CS Wilson framing 的所有拓扑 extension、annulus thin smeared operators 的任意共同乘积域。点算符的真空 norm 发散与 annulus 的电荷阈值均是已证明的 obstruction。
