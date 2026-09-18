# 07｜Chern–Simons：current、bulk extendibility、Wilson 与 channel maps

**必须区分三个 quantum targets：带物理 timelike wall 的 current algebra、闭曲面的有限 Wilson algebra、有 punctures 的 charged-channel operator algebra。它们可由同一 CS action 引导，却不是不经选择就相同的代数。** 本篇给第一者的一个完整线性 sewing，第二者的独立精确 presentation，第三者的指定 unitary realization 与实际非对角 operators。后两者的 topological quantization 是额外输入，不冒充从任意 Lorentzian wall PDE 推导而来。[R9,R10,U2,U3]

本篇 quantum CS 的公式取 ℏ=1；k 是所采用 realization 的 integer level。

## 7.1 一个真正独立的 source-free disk 理论

取 compact U(1)，无 puncture、无 Wilson source，空间为 smooth disk D；选**可延拓到 disk 的外边界 framing**与其 relative zero sector。用实连接 a，
\[
 S_{\rm bulk}=\frac{k}{4\pi}\int_{\mathbb R\times D}a\wedge da.
\]
下面 classical current calculation 只需 k 非零；quantum compact examples 固定正偶数 k，避免隐含 spin choice。允许 odd k 时必须另给 spin theory 数据，不能只改一个整数。[R17]

选正向 boundary coordinate s、时空 orientation \(dt\wedge dx\wedge dy\)。用普通 \(dt\,ds\) 而非 induced timelike orientation 写 closing/source term：
\[
 S_B[b]=\frac{k}{4\pi}\int dt\,ds\,
 (a_ta_s-v a_s^2-2b a_s),\qquad v>0.
\tag{7.1}
\]
其总变分在 wall 上为
\[
 \delta(S_{\rm bulk}+S_B)|_B
 =\frac{k}{2\pi}\int [(a_t-v a_s-b)\delta a_s-a_s\delta b].
\]
因此独立理论的边界条件是 \(a_t-v a_s=b\)，固定 b 时变分良定义；b=0 为初始 closure。这里的 v 是真实 wall dynamics 的参数。用人工 wall 拼接时，只有该人工面上的 closing action 被撤去；真正外壁的 v 不消失。

由 bulk flatness，\(a|_D=d\phi\)。在上述 extendible framing 内，\(\phi\) 是 single-valued smooth scalar，常数不给不同连接。故
\[
 j=\partial_s\phi,\qquad \oint j\,ds=0,
 \quad \phi\in C^\infty(S^1)/\mathbb R.
\tag{7.2}
\]
这不是任意 boundary PDE 的解空间。\(j=c\ne0\) 虽满足 homogeneous transport equation，却不能成为当前 sector 的 bulk trace。Annulus、punctures、Wilson charges，或者故意选不可延拓的 boundary framing，会改变这个结论的前提，必须另开 sector；不能把它们偷放进 (7.2)。

reduced action、symplectic form 与 Hamiltonian 为
\[
 S_{\rm edge}=\frac{k}{4\pi}\int[\phi'\dot\phi-v(\phi')^2-2b\phi'],
 \quad \Omega=\frac{k}{4\pi}\oint\delta\phi'\wedge\delta\phi,
 \quad H_b=\frac{kv}{4\pi}\oint j^2+\frac{k}{2\pi}\oint bj.
\tag{7.3}
\]
本包的 \(\iota_{X_F}\Omega=-\delta F\) convention 给
\[
 J[f]=\frac{k}{2\pi}\oint f j,
 \quad X_{J[f]}\phi=f\pmod{\mathbb R},
 \quad \{J[f],J[g]\}=\frac{k}{2\pi}\oint f g'.
\tag{7.4}
\]
常数 f 正好是全部 linear kernel。非退化性来自：若 \(\oint fg'=0\) 对所有 smooth periodic g，便有 f'=0。

## 7.2 源域、全部 modes 与可再开放性

源问题是
\[
 (\partial_t-v\partial_s)j=\partial_s b,
\quad j(t_0)=j_0,\quad\oint j_0=0.
\]
对完整 smooth periodic data，唯一解为
\[
 j(t,s)=j_0(s+v(t-t_0))+
 \int_{t_0}^t\partial_s b(u,s+v(t-u))du.
\tag{7.5}
\]
所有 derivatives 的估计直接由平移与积分给出；没有高频增长难题。平均值保持零。给定 j，用 boundary primitive 再作 smooth disk extension，可构造 flat bulk connection；bulk proper gauge 消除 extension choice。marked corners 的 boundary values/derivatives 必须与同一 periodic smooth function 相容。

这是一份每个 disk 都能独立运行的 timelike source rule。人工 chord 两侧先各自有完整 closed boundary circles 与自己的 (7.1)；opening 时撤去两侧 chord 的 closure，允许该面的完整 trace/transition relation，而非要求旧 chiral homogeneous solutions 已经透明匹配。输出仍以其整个真实 outer circle 的 (7.1)、(7.5) 闭合，故可再次 opening。

## 7.3 两个 disks 沿 open chord：actual current lifts 与完整 kernel

只取使输出仍为同一 relative zero-sector disk 的 chord gluing。固定 compatible outer framings；seam transition \(h=e^{i\lambda}\) 的 real lift 在 corners 与外部 framing 相容且无 relative winding。采用全部 collar jets 匹配。若换成有 winding 的 sector，下面的 gauge extension 步骤需另行审查，不能照搬。

记 C 的方向为 \(\partial D_1\) 的 seam 方向。matching 为
\[
 a_2=a_1+d\lambda,\qquad
 \lambda\mapsto\lambda+\epsilon_2-\epsilon_1.
\]
proper \(\epsilon_i\) 在真正外弧为零。可把相容的 \(-\lambda\) 延拓入一侧 disk 且在外弧为零，将 \(\lambda=0\)；再调整不影响 a 的 scalar constants，使 \(\phi_1,\phi_2\) 在 chord 相同。于是 smooth flat bulk fields 组装为一个 disk field。反向限制提供 inverse，不同 extensions 仅差 proper gauge。

在任意 seam frame 下不能直接把旧 \(\Omega_1+\Omega_2\) 作商。选 scalar constants 使 \(\phi_2=\phi_1+\lambda\) 在 C 上成立，令
\[
 \Theta_i=\frac{k}{4\pi}\oint_{\partial D_i}\phi_i'\,\delta\phi_i,
 \quad \Theta_\Gamma=\frac{k}{4\pi}\int_C
 (\phi_1'\delta\lambda+\lambda'\delta\phi_1+\lambda'\delta\lambda).
\tag{7.3a}
\]
\(\Theta_\Gamma\) 恰好是把第二侧 potential 运输到同一 seam frame 产生的差：
\(\phi_2'\delta\phi_2-\phi_1'\delta\phi_1\)。所以
\[
 \Theta_{\rm sew}=\Theta_1+\Theta_2+\Theta_\Gamma
 =\frac{k}{4\pi}\oint_{\partial D_{\rm out}}\phi'\delta\phi.
\]
内部 proper gauge 在右侧恒等，故 \(\delta\Theta_{\rm sew}\) 确实下降；在 \(\lambda=0,\delta\lambda=0\) gauge 上 correction 消失，旧 seam terms 因取向相反抵消。该恒等式也证明没有凭空生成新的 circle zero mode。corner 的 \(\lambda=0\) 和 compatible jets 是这里采用的 sector 条件；换 sector 时不能忽略额外 endpoint terms。

**独立 source tests。** 在 cut boundary network 上给 smooth real test functions \(\hat f_i\)，两侧 chord 上等于同一 \(f_C\)，在 corners 有共同值及可由 smooth collar extension 产生的 jets。该条件只依赖 network geometry。定义
\[
 \widetilde J[\hat f_1,\hat f_2]
 =J_1[\hat f_1]+J_2[\hat f_2]
 +\frac{k}{2\pi}\int_C f_C\,d\lambda.
\tag{7.6}
\]
因为 \(a_2-a_1=d\lambda\)，两份 chord terms 与最后一项抵消；剩下的是 outer current smear。式 (7.6) 也在 independent regional gauge 下不变。对任意 target f，先从外圈将 f smooth 延拓到 cut network，就得到显式 preimage。

**全部 linear kernel：** source tests 的 outer restriction 是常数，当且仅当 (7.6) 在所有允许 fields 上为零。证明是把它化到 (7.4)，再用 arbitrary zero-mean j；任意 purely internal test extension 的选择差也在此 kernel 内。finite polynomial algebra 的完整 kernel 由这些 linear null labels 生成，理由与 §6.3 的有限组独立线性坐标相同。

在匹配后 symplectic space 上 (7.4) 给 bracket；由此定义源 CCR/Weyl algebra 后，null ideal 商与输出 current CCR/Weyl algebra 同构。这个 assertion 是 **regular smooth current algebra** 的完整 classical/quantum comparison。选择某个 positive-energy Hilbert representation、vacuum state 或充电 vertex operators，是后续且不同的扩张；此处没有把它们自动装入 CCR。

多条 compatible chords：共同 gauge 后所有内部弧的 \(\Omega\) 与 (7.6) seam terms 成对取消，只留下同一 outer data。任意分组再 opening 使用 (7.5) 的同一个独立输出源问题；故在此 disk 类中 three-cell coherence 成立。

## 7.4 corner cocycle 不能用尖锐弧 cutoff 糊过去

closed circle 上 \(\int f g'\) 反对称；单独开弧 I 上却有
\[
 \int_I fg'+\int_I gf'=[fg]_{\partial I}.
\tag{7.7}
\]
因此直接把 closed-current bracket 限制到任意 endpoints 非零的 sharp arc tests，甚至会破坏 antisymmetry。合法选择是在旧独立 theory 使用 smooth full-circle tests，或者显式给 endpoint degrees/constraints 及 corner correction；(7.6) 用的是前者加 matching transition。

两侧 opposite orientations 且同 level k 的 seam anomaly 取消。如果 levels 为 \(k_1,k_2\)，剩余 coefficient 为 \(k_1-k_2\)；一般不再能把 diagonal seam symmetry 当无 anomaly 的 proper gauge。必须给 interface dynamics/anomaly inflow，或承认该透明 sewing 不存在。这个 failure 不是“多加一个 edge mode 总能解决”。

## 7.5 闭 torus：独立的有限 Wilson algebra 与完整 presentation

在 U(1) CS 的 flat torus zero-mode phase space，取 cycles x,y、angles \(Q_x,Q_y\) 周期 \(2\pi\)。本篇 orientation 给
\[
 \Omega=\frac{k}{2\pi}\delta Q_y\wedge\delta Q_x,
 \qquad \{Q_x,Q_y\}=\frac{2\pi}{k}.
\]
采用 level-k topological quantization 与 trivial central characters。令 \(q=e^{2\pi i/k}\)，指定 generators 满足
\[
 X^k=Y^k=1,\quad X^*=X^{-1},\quad Y^*=Y^{-1},
 \quad XY=q^{-1}YX.
\tag{7.8}
\]
在独立 \(\mathcal H_{T^2}=\mathbb C^k\) 上取
\[
 X|r\rangle=q^r|r\rangle,\qquad Y|r\rangle=|r-1\rangle,
 \quad r\in\mathbb Z/k\mathbb Z.
\tag{7.9}
\]
全部 words 归约到 \(X^mY^n\), \(0\le m,n<k\)。这些 k² 个矩阵在 trace inner product 下正交，故 image 为 \(M_k(\mathbb C)\)，kernel **恰好**由 (7.8) 的 relations 生成。

以整数而非模 k 的 Weyl labels 写
\[
 W_{m,n}=e^{\pi i mn/k}X^mY^n,
\quad W_{m,n}W_{m',n'}=
 e^{-\pi i(mn'-nm')/k}W_{m+m',n+n'}.
\tag{7.10}
\]
注意 \(W_{m+k,n}=(-1)^nW_{m,n}\)：不能同时无条件宣布所有 Weyl labels 按 k 严格周期。

切开 torus 的 handle，在选定 topological quantization 中 charge channel r 的 handle state 给 (7.9) 的 \(|r\rangle\)；纵向 Wilson 测量 r，横向 crossing Wilson 移动 r。只保存逐 r 的 scalar blocks 会漏掉 Y。这里给出了该 topological realization 的 generators、relations 与实际 operators；**没有证明任意 Lorentzian disk current representations 经某个未指定 contraction 就必然产生 (7.9)**。若以它为目标，handle-channel realization 和 framing 必须作为 quantum prescription 明列。

## 7.6 SU(2)₂：实际 channels、非对角 Wilson 与固定 cups

采用 unitary SU(2) level-2 CS/WZW realization；simple labels 为 \(0,\sigma,\psi\)，
\[
 \sigma\otimes\sigma=0\oplus\psi,\quad d=(1,\sqrt2,1),
 \quad \theta=(1,e^{3\pi i/8},-1).
\]
该 realization 的存在及 charge fusion 是采用的标准输入 [R10]，而不是由本包的新边界 PDE 定理证明。固定 oriented cup/cap、unit maps 和 ribbon framing。

四个 \(\sigma\) 总 charge 0 的 target space 为二维。\(s_0,s_\psi\) 是两对 punctures 通过实际 normalized trivalent maps 产生的 orthonormal channel vectors；\(t_0,t_\psi\) 使用另一条切法。cup vacuum channel 的 pseudo-real sign 由
\[
 \nu_\sigma=\frac1{4}\sum_{a,b}N_{ab}^{\sigma}d_ad_b
       (\theta_a/\theta_b)^2=-1
\tag{7.11}
\]
确定 [R11]。用同一 cups，vacuum overlap 为 \(F_{00}=\nu_\sigma/d_\sigma\)。将非真空 channel phases 选为正 off-diagonal overlaps，则
\[
 F=\frac1{\sqrt2}\begin{pmatrix}-1&1\\1&1\end{pmatrix},
 \quad R=\operatorname{diag}(-e^{-3\pi i/8},e^{\pi i/8}).
\tag{7.12}
\]
\(F^*=F=F^{-1}\)。unitarity 与 \(R^2=\theta_{\rm channel}/\theta_\sigma^2\) 都成立；\(B_1=R,B_2=FRF\) 满足 braid relation。还须保留 \(\sqrt2F_{00}=-1\) 这项 cup-sensitive 检验。\(F\mapsto-F\) 不影响 FRF，说明 braid test 单独看不到全部 duality 信息。[U2]

围住不同 puncture pairs 的 \(\sigma\)-Wilson operators 是
\[
 A=W_{12}=\sqrt2\begin{pmatrix}1&0\\0&-1\end{pmatrix},
 \quad B=W_{23}=FAF=-\sqrt2\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\tag{7.13}
\]
实际 operator source 可用自由 \(*\)-algebra \(\mathbb C\langle A,B\rangle\) 给出，sewing 的 Wilson presentation map 发到 (7.13)。其**完整 kernel**由
\[
 A^*=A,\quad B^*=B,\quad A^2=B^2=2,\quad AB+BA=0
\tag{7.14}
\]
生成：每个 word 可化为 \(1,A,B,AB\)，四个 image matrices 独立。因此 output 是 \(M_2(\mathbb C)\)，不是 \(\mathbb C\oplus\mathbb C\)。所需 source preimages 分别是切开 closed loop 得到的 anchored line segments，经 trivalent channel maps/cups 接合；另一切法的 segment endpoints 必须用同一 F 运输，不能丢掉 B。

(7.14) 是这个**四 puncture Wilson algebra**的完整 presentation，不是整个 CS field algebra 的 kernel，也不是单靠 \(N_{ab}^c\) 推出的 continuum edge contraction。

## 7.7 不把真正的 quantum edge contraction 降格为维数匹配

在采用的 positive-energy loop-group representation 中，可用 localized bounded charged operators x,y 构造 cut states。其具体 source 不是普通 \(H_1\otimes H_2\)，而是 finite sums \(z=\sum_i x_i\otimes y_i\) 带上可测量的 Gram pairing
\[
 G(z,z')=\sum_{i,j}\langle y_i\Omega,
       \pi_\sigma(x_i^*x'_j)y'_j\Omega\rangle.
\tag{7.15}
\]
采用该 representation 的 transport identity
\[
 \pi_\sigma(x^*x')=\sum_{a=0,\psi}\lambda_a x_a^*x'_a,
 \quad\lambda_a>0,
\]
实际 channel maps 是
\[
 C_a z=\sum_i\sqrt{\lambda_a}\,(x_i)_a y_i\Omega,
 \quad \|Cz\|^2=G(z,z).
\tag{7.16}
\]
所以 \(\ker C\) 恰好是 Gram radical，而非先猜一个 fusion multiplicity 后任意丢掉 states。完成 source 去 radical 后得到 isometry。若每个目标 irreducible channel 的像非零且 range 对相关 observable action reducing，则其闭 range 包含整个 channel；这给 onto。**这些 boundedness、transport identity、irreducibility 条件属于被采用的具体 realization，本文不声称重新证明其分析定理。** [R10,U2]

(7.15)–(7.16) 是额外结构为何必要的物理解释：seam 两边存在有电荷的 operators，共同 current action 决定它们怎样内积与收缩。读者不必先学习一般 von Neumann bimodule theory 才能理解这个 source、kernel 与 map；需要推广到任意 nets 时再学习其 completion。

**本篇完成度：** disk 的 regular current sewing 为 E；torus 与四 puncture Wilson presentations 为 E，指定 topological/charged realization 为 I；一般 Lorentzian CS wall 与所有这些 quantum realizations 的统一 equivalence 仍需另证。三个层次不混算。
