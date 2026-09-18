# 06｜精确模型 II：relative Maxwell 的完整平滑线性代数

**本篇的“完整”有精确定义：全部下面指定的平滑线性 Hamiltonian probes 及其有限 polynomial CCR / Weyl algebra，不是全部 distributional、thin-Wilson 或 interacting observables。该类分离本模型的全部 smooth physical Cauchy data，包含辐射模和相对平坦连接，因而不是 curvature-only 子代数。**

空间为 \(\Sigma=[0,L]\times T^2\)，横向面积 \(\mathcal V\)，平直 metric，有限条静止平行 cuts \(x=x_i\)，也允许在常数时间插入 Cauchy cuts。先做实线性 Maxwell / compact theory 的 infinitesimal cover；§6.9 再实施完整 compact U(1) large gauge。固定相对平凡的 boundary bundle sector，无 magnetic defects。

## 6.1 独立未切分边界问题

用实连接 \(a\)，作用量 \(-\frac1{2e^2}\int da\wedge *da\)。两条真实 timelike walls 固定
\[
 a_t=a_y=a_z=0.
\tag{6.1}
\]
proper infinitesimal gauge parameters 在两壁为零。可先用满足该条件的 gauge 置 \(a_t=0\)，再用一个 time-independent Dirichlet gauge transformation 置初始 \(\nabla\cdot a=0\)。Gauss 使该条件传播。

canonical electric variable 定为 \(E=e^{-2}\dot a\)，不是把 \(E\) 与 \(F_{0i}\) 的因子混同。物理初值为
\[
 \nabla\cdot a=\nabla\cdot E=0,\qquad
 a_{y,z}|_{\partial\Sigma}=E_{y,z}|_{\partial\Sigma}=0,
\]
加上保持所有时间导数所需的 smooth compatibility。由散度条件得到 \(\partial_xa_x=\partial_xE_x=0\) 在边界上。没有固定 \(E_x\) 的数值。

令 \(K=-\Delta\) 作用于 co-closed relative vector fields。其 eigenmodes 是 x 方向的 cosine \(a_x\)、sine \(a_y,a_z\) 与横向 Fourier modes 的组合，再施加散度为零：对 \(n\ge1\)，系数满足
\[
 -\frac{n\pi}{L}b_x+i p_yb_y+i p_zb_z=0.
\]
\(n=0\) 时仅有 cosine 的 x component；\(p\ne0\) 是真实传播模，\(n=p=0\) 是唯一 harmonic mode。选实正交基 \(v_\nu\)，\(Kv_\nu=\omega_\nu^2v_\nu\)。

定义 \(\mathscr S\)：mode coefficients 对 \(1+\omega_\nu\) 任意幂都快速衰减的实序列，按上述 basis 解释为向量场。它精确规定我们采用的 smooth compatible domain。physical Cauchy space 为 \(\mathscr S\oplus\mathscr S\)。

\[
 \Omega=\int_\Sigma\delta E^i\wedge\delta a_i
 =\sum_\nu\delta p_\nu\wedge\delta q_\nu,
 \quad H=\frac12\sum_\nu\left(e^2p_\nu^2+\frac{\omega_\nu^2}{e^2}q_\nu^2\right).
\tag{6.2}
\]
此 gauge slice 在本 Abelian 几何唯一：两个 representatives 的差 \(d\chi\) 满足 \(\Delta\chi=0,\chi|_\partial=0\)，积分 \(\int|d\chi|^2=0\) 给 \(\chi=0\)。这不是对一般 YM 宣称无 Gribov 问题。

## 6.2 全部 modes 的存在、唯一性与统一估计

定义 \(C_t=\cos(t\sqrt K)\)、\(S_t=\sin(t\sqrt K)/\sqrt K\)，在 \(K=0\) 上 \(S_t=t\)。
\[
 a(t)=C_ta_0+e^2S_tE_0,
 \qquad E(t)=-e^{-2}KS_ta_0+C_tE_0.
\tag{6.3}
\]
逐频率有
\[
 |C_t(\omega)|\le1,\quad |S_t(\omega)|\le |t|,
 \quad |\omega S_t(\omega)|\le1.
\tag{6.4}
\]
这里的频率估计可直接翻译成普通函数估计：在三维 rectangular Fourier basis 上，Cauchy–Schwarz 给
\[
 \|\partial^\alpha u\|_\infty\le C_r
 \left[\sum_\nu(1+\omega_\nu)^{2(|\alpha|+r)}|u_\nu|^2\right]^{1/2},
 \quad r>3/2,
\]
因为 \(\sum_\nu(1+\omega_\nu)^{-2r}<\infty\)；可以直接取 r=2。所谓 spectral Sobolev bound 在本篇仅指这个加权平方和。任意有限阶空间/时间导数仅增加 polynomial frequency factors；快速衰减抵消它们。故有限时间窗上 series 及所需所有导数收敛，保留完整 \(\mathscr S\)，并对数据连续依赖。差解的 conserved energy 以及 harmonic 初值给唯一性。对强迫 \(\ddot a+Ka=f\) 增加 \(\int_{t_0}^tS_{t-s}f(s)ds\)，同一 bounds 成立。

**这里没有“每个 mode 存在，所以全部 modes 自动可求和”的跳步。** 频率一致的 (6.4) 及导数多项式界承担了求和。也没有把 harmonic inverse 用 pseudoinverse 删除。

## 6.3 独立 target labels、零关系及 separation

对普通 Dirichlet scalar \(\chi\) 记 \(\chi|_{\partial\Sigma}=0\)，定义
\[
 P_Tg=g-d\chi_g,\qquad \Delta\chi_g=\nabla\cdot g,
 \quad \chi_g|_{\partial\Sigma}=0.
\tag{6.5}
\]
Dirichlet Laplacian 的 sine/Fourier eigenvalues 为负，绝对值至少 \(\pi^2/L^2\)，因此该 Poisson problem 唯一；它是一个用普通 Fourier 可计算的投影，不删除 relative harmonic \(dx\)。

测试域取
\[
 \mathcal L=\{(f,g):f\in\mathscr S,\ g\text{ smooth},\ P_Tg\in\mathscr S\}.
\]
等价地 \(g=g_T+d\chi\)，\(g_T\in\mathscr S\)、\(\chi\) smooth Dirichlet。独立目标泛函是
\[
 F_{f,g}(a,E)=\int_\Sigma(f\cdot a+g\cdot E).
\tag{6.6}
\]
\(f\) 散度为零且 proper parameters 在壁上为零，所以它 gauge invariant；\(d\chi\) 与 \(E\) 的配对因 Gauss 和 \(\chi|_\partial=0\) 消失。Hamiltonian vector field 为
\[
 X_{F_{f,g}}a=g_T,\qquad X_{F_{f,g}}E=-f.
\]
它确实保持 \(\mathscr S\oplus\mathscr S\)。括号为
\[
 \sigma((f,g),(f',g'))=
 \int_\Sigma(f\cdot g'-g\cdot f').
\tag{6.7}
\]

**完整线性 kernel：**
\[
 \boxed{\mathcal N=\{(0,d\chi):\chi|_\partial=0\}.}
\tag{6.8}
\]
证明：若 (6.6) 对所有物理数据为零，依次取 \(a=f,E=0\) 及 \(a=0,E=g_T\)，得到 \(\|f\|^2=\|g_T\|^2=0\)。反向由分部积分成立。故 reduced label space 是 \(\mathcal L/\mathcal N\simeq\mathscr S\oplus\mathscr S\)，\(\sigma\) 非退化。

classical target 为 \(\operatorname{Sym}_{\mathbb C}(\mathcal L/\mathcal N)\)，实现为 finite polynomials in (6.6)。没有额外 polynomial relations：有限个线性独立 labels 对某个足够大的有限 mode truncation 已有满 rank，其 evaluations 可取任意有限组实数；非零 polynomial 因而不可能对全部 smooth data 消失。**这也给出 separation：取每个 \(v_\nu\) 分别探测 a 和 E，能检测任意非零物理初值。**

## 6.4 显式修复遗漏的 holonomy–flux 对

定义
\[
 Q=\frac1{\mathcal V}\int_\Sigma a_x\,d^3x,
 \qquad P=\frac1L\int_\Sigma E_x\,d^3x.
\tag{6.9}
\]
两者的测试向量都是合法 harmonic directions，故
\[
 \{Q,P\}=1,\qquad H_0=\frac{e^2L}{2\mathcal V}P^2,
 \quad Q(t)=Q_0+\frac{e^2L}{\mathcal V}P_0(t-t_0).
\tag{6.10}
\]
Gauss 给每个 x 截面的 \(\int_{T^2}E_x=P\)。在均匀 harmonic family，\(Q=\int_0^L a_xdx\)，\(e^{iQ}\) 就是 boundary-to-boundary transport；对一般场，\(e^{iQ}\) 是**平均连接积分的指数**，不是平均 thin Wilson。它是准确的平滑厚探针，能检测遗漏的相对平坦坐标。

\[
 \{e^{iQ},P\}=ie^{iQ}.
\tag{6.11}
\]
\(a=(Q/L)dx\) 的常数 Q 在 \(F=0\) 时仍物理可见。全曲率代数看不见它，但 (6.9) 看得见。\(Q\) 不是被 (6.8) 除掉的梯度，因为产生 \(dx\) 的 scalar 不能同时在两端为零。

## 6.5 区域 source data 与不可遗漏的 seam term

每个独立小 slab 先取自己的 relative walls，含全部自己的 modes。opening 后，初值可有任意合法内部 boundary traces；它们不再被小 slab 的 homogeneous relative domain 限制。

在切分的 Cauchy slice 上，区域 fields \((a_i,E_i)\) 各自满足 Gauss；在每个 seam 选择 real transition \(\lambda_i\)，满足 tangential \(a_{i+1}=a_i+d\lambda_i\)、flux balance 及全部 collar jet matching。\(\lambda_i\) 有可延拓的 collar jets；只其 seam value 进入下式。以 left slab 的 normal \(+\partial_x\) 取向，matched canonical potential 是
\[
 \boxed{\Theta_{\rm cut}=\sum_i\int_{\Sigma_i}E_i\cdot\delta a_i
       +\sum_i\int_{\Gamma_i}E_x\,\delta\lambda_i.}
\tag{6.12}
\]
这是 gauge matching 的 corner contribution，不是添加一份自由 oscillator。

在 \(a_i\mapsto a_i+d\epsilon_i\)、\(\lambda_i\mapsto\lambda_i+\epsilon_{i+1}-\epsilon_i\) 下，bulk potential 的变化为 \(\sum\int E_x\delta(\epsilon_i-\epsilon_{i+1})\)，与 seam term 精确抵消（Gauss、外部 \(\epsilon=0\) 已用）。因此 \(\delta\Theta_{\rm cut}\) 正确地下降。

由于 cuts 是一个 interval chain、线性 transition 无 winding obstruction，可用区域 gauge extensions 置全部 \(\lambda_i=0\)；之后 fields 及 jets 全局拼成一份 a,E。再用 (6.5) 的外部 Dirichlet gauge 取 Coulomb slice。这给出**显式解装配与逆**。不同 extensions 的差是全局 proper gauge，故不依赖选择。限制全局初值则给反向 map。由 (6.12) 在 \(\lambda=0\) gauge 中直接得到 (6.2)，从而是 symplectic comparison。

## 6.6 每个 target probe 的独立区域 lift、kernel 和量子商

区域 test labels 的定义不使用 solution restriction image：取每片自己的 smooth \(f_i,g_i\)，要求它们在 seam 的全部 jets 匹配；组装后的 f 是 co-closed relative rapid-mode test，g 满足 (6.5) 的明确投影准入条件。这个条件可由 geometry、局部 jets 和 Dirichlet Poisson equation 检查，不依赖任何全局解。它是一份预先规定的 **joint smooth test space**，不是旧 regional polynomial algebras 的 algebraic tensor product。

定义实际 source observable
\[
 \widetilde F_{\{f_i,g_i\}}=
 \sum_i\int_{\Sigma_i}(f_i\cdot a_i+g_i\cdot E_i)
 +\sum_i\int_{\Gamma_i}\lambda_i f_x.
\tag{6.13}
\]
由于 \(\nabla\cdot f_i=0\)，gauge variation 的 bulk endpoint terms 与最后一项相消；所以它在 matched gauge quotient 上定义。置 \(\lambda=0\) 后它等于 assembled (6.6)。反之，对任何未切分 (6.6)，按区间分段其 tests 就产生 (6.13)；这是明确 preimage，而不是给 target 一个新名字。

全部 source linear kernel 可实际计算：拼接 f,g，解 (6.5)，其 null 当且仅当
\[
 f_i=0\ \forall i,\qquad g_i=(d\chi)|_{\Sigma_i}
\tag{6.14}
\]
对**同一份** smooth \(\chi\) 且 \(\chi\) 在真正外边界为零。等价计算为 \(P_Tg=0\)。不能只要求每片 g 局部 exact；局部 primitives 的 boundary constants / periods 不匹配可能保留物理 harmonic label。

利用 §6.3 的有限-rank argument，polynomial kernel 恰好是由 (6.14) 的线性 generators 生成的理想，没有隐藏的高次 relation。\(\Theta_{\rm cut}\) 的计算给 bracket 正好 (6.7)。于是得到
\[
 \boxed{\mathcal A^{\rm cl}_{\Gamma}/I_{\mathcal N_\Gamma}
      \simeq\mathcal A^{\rm cl}_{\rm Maxwell,smooth}.}
\tag{6.15}
\]

在独立 source label space 上先用 (6.7) 定义 CCR，不用旧 closed propagators 定义新乘法。加入 null relations \(\Phi(n)=0\)；或在 Weyl 版本加入 \(\mathcal W(n)=1\)。由于 null labels 与全部 labels 的 \(\sigma\) 配对为零，这些商一致。线性 bijection、(6.7) 和 CCR 的 PBW/universal Weyl relations 给
\[
 \boxed{\mathcal A^{\rm CCR}_{\Gamma}/\langle\Phi(n)\rangle
  \simeq \mathcal A^{\rm CCR}_{\rm out},\quad
  \mathcal W_\Gamma/\langle\mathcal W(n)-1\rangle\simeq\mathcal W_{\rm out}.}
\tag{6.16}
\]
这里量子 kernel 是指定线性 null ideal；并非把全部 flux constraints 在旧 unconstrained CCR 中作危险的两侧理想商。

固定非零相容 source tuple 时，解空间为 affine。选一份 particular solution，线性观测量变为 \(\Phi_{\rm hom}(F)+F(\phi_{\rm part})1\)，Weyl generator 乘相应 c-number phase。换 particular solution 只作一个明确的 affine translation。完整 sourced assembly 同时匹配 fluctuation bracket 和这些 c-numbers，故不是仅比较零源 CCR；但并不从中挑出一个 canonical vacuum。

(6.13) 还明确显示 smooth global observable 的区域来源要包括 boundary response labels。某个 \(f_i\) 在人工 wall 上不满足旧 autonomous Hamiltonian domain 时，它不是旧 \(\mathcal A_{B_i}\) 内的一个生成元；它属于该 region 已声明的 reopening/test 数据。本文不隐瞒这种 enrichment。

## 6.7 完整 timelike source problem 的构造，非仅 interior Ward identity

为计算 response，可用 Lorenz gauge。令 \(L=\partial_t^2-\partial_x^2-\Delta_\perp\)，每个分量满足 \(La_\mu=f_\mu\)。要求
\[
 -\partial_tf_t+\partial_xf_x+\partial_yf_y+\partial_zf_z=0.
\]
在每壁给 tangential histories \(b_t,b_y,b_z\)，并取
\[
 a_{t,y,z}=b_{t,y,z},\qquad
 \partial_xa_x=\partial_tb_t-\partial_yb_y-\partial_zb_z.
\tag{6.17}
\]
此处两壁均写坐标导数 \(\partial_x\)，不是同号 outward derivative。Lorenz constraint \(C=-\partial_ta_t+\nabla\cdot a\) 因而在壁上为零；\(LC=0\)，加上 cap 的 \(C=\dot C=0\)，Dirichlet wave 唯一性给 \(C=0\)。\(\dot C=0\) 包含相应 Gauss/source compatibility。全部 data 同属 joint domain，不能独立乱选四个 scalar 初值。

**源域明确化。** 对 scalar \(Lu=f\)，记 wall 的 normal jets \(c_r=\partial_x^r u|_B\)，必须有
\[
 c_{r+2}=(\partial_t^2-\Delta_\perp)c_r-\partial_x^rf|_B.
\tag{6.18}
\]
Dirichlet 指定 \(c_0=b\)，Neumann 指定 \(c_1=b\)；其余 jets 用 recurrence 和未指定的另一列种子给出。cap 初值的 jets 与这些 relations 及它们的时间导数相容，是 \(\mathcal D_{\rm adm}\) 的定义。

**存在性的直接 reduction。** 在每壁构造 smooth lift \(w\)，其全部 normal jets 为上述 \(c_r\)，并在另一壁用不相交 collars 构造另一个 lift。这样的 smooth jet extension 可用 \(\sum_r c_r(t,y,z)x^r\chi(x/\varepsilon_r)/r!\) 构造：逐步把 \(\varepsilon_r\) 取得足够小，使每个固定阶导数的尾和收敛；不要求 Taylor series analytic。然后 \(f-Lw\) 在壁上所有 normal jets 为零，属于 homogeneous spectral smooth domain；\(u_0-w_0,\dot u_0-\dot w_0\) 的 D/N parity jets 因 cap compatibility 满足 homogeneous domain。对 \(u-w\) 使用 §6.2 的 Fourier/Duhamel construction。能量给唯一性。这里的 infinite-jet extension 仅用于给每份 smooth tuple 证明存在，不把它误称为在任意 jet-product topology 上连续的 canonical linear lift。

连续依赖可逐个 finite regularity 检查：欲控制 m 阶输出，选一个足够大的整数 s，使 spectral Sobolev bound 控制这些 derivatives；只延拓 (6.18) 的前 2s+2 个 jets，用固定 collar cutoff 的有限多项式。余下 forcing、cap data 满足所需有限阶 D/N parity conditions，(6.4) 的能量与 spectral bounds 给
\[
 \sup_{t_0\le t\le T}\|u(t)\|_{C^m}\le C_{m,T}
 (\|u_0\|_{C^{M(m)}}+\|u_1\|_{C^{M(m)}}+\|f\|_{C^{M(m)}}+\|b\|_{C^{M(m)}})
\]
对某个有限 M(m) 成立（本篇不追求 sharp derivative count）。右边的时空 norms 在同一个有限 cylinder 上取；每个 normal jet 由有限次原始数据求导产生，固定 cutoff 不依赖横向频率。这证明 joint smooth data topology 中的 continuous dependence，而非把逐模 existence 当成统一估计。

将此分别用于 (6.17) 的 D/D/D/N 分量，配合 C 的传播，得到在本几何和明确 joint smooth domain 上的真实物理源问题。这超过 compact-interior Green identity；却**不声称**已构造一个全 off-shell boundary-source BRST complex。

在 seam 先用 collar gauge 匹配 \(a_x\)，再用 tangential matching 和 conormal balance；结合 C=0 得全部分量的 normal matching。附加已声明的 joint jets 后，所有 scalar sourced fields 光滑组装。反向 restriction 给每片合法的 (6.17)，而不是其旧 homogeneous B。

## 6.8 response、Peierls、fresh opening 与三块一致性

对每个 mode，action Hessian 是 \(J=-e^{-2}(\partial_t^2+\omega^2)\)。其 retarded minus advanced inverse 给
\[
 \Delta(t,t')=e^2\frac{\sin\omega(t'-t)}\omega,
\]
零频取 \(e^2(t'-t)\)。这恰好是由 (6.2) 计算的 \(\{q(t),q(t')\}\)。故本域的 physical Peierls bracket 与 (6.7) 一致，不需要用 ghost positivity 替代 physical reduction。对 equal-time 标签及其时间导数，合法性由 smooth spatial coefficients 的快速衰减与该公式的频率多项式界直接保证；这里不把任何任意分布标签都宣称为可配对。

带源方程的 piecewise assembly 和独立 uncut problem 有同一完整 tuple；§6.7 的唯一性给全部 source responses 相同。对任意二元分组重复该论证。中间区域仍是 relative slab，故属于同一对象类；下一次 opening 由其自己的 (6.17)–(6.18) 重新构造。三块均给相同 assembled f,g、同一 global proper class、同一 response。

直观的 harmonic 子验收：设小段长度 \(\ell_i\)，先在 \(h=1\) gauge，
\[
 Q=\sum_iQ_i,\quad P_i=P,\qquad
 \sum_i\delta P_i\wedge\delta Q_i=\delta P\wedge\delta Q,
 \quad\sum_iH_i=\frac{e^2\sum_i\ell_i}{2\mathcal V}P^2.
\tag{6.19}
\]
一般 seam frame 下必须写
\[
 Q_{\rm cut}=\sum_iQ_i+\frac1{\mathcal V}\sum_i\int_{\Gamma_i}\lambda_i.
\tag{6.20}
\]
这正是 (6.13)；漏掉它会破坏 independent regional gauge invariance。

在 \(N\) 段 harmonic phase space，适配坐标 \(Q=\sum Q_i,r_j=Q_{j+1},P=P_1,\pi_j=P_{j+1}-P_1\) 给
\[
 \sum_iP_i\delta Q_i=P\delta Q+\sum_j\pi_j\delta r_j.
\]
因此 invariant polynomial/finite differential algebra 的 kernel 为正 \(\pi\)-degree，section 为只用 Q,P。对实线 harmonic cover，不声称 \(L^2(\mathbb R)\to L^2(\mathbb R^N)\) 的 constant-in-r map 是 normalized isometry；gauge volume 无限。compact rotor 版本才有 normalized Haar isometry。

## 6.9 实施完整 compact U(1) 而不再丢失 Q

在 compact 描述中先选择一个等价的 liftable-seam presentation：允许的输出 relative bundle 已固定为平凡，故存在与外部 framing 相容的 global trivialization；用它可把 seam maps 置为 1。presentation 内的 gauge arrows 保持 liftable transitions，非 liftable 过渡图可先变换入该 presentation；不把任意 topology 的 h 擅自写成单值实 λ。不同 λ lifts 相差 2π 整数，下面的 integer-character 条件使指数探针不依赖 lift。

本固定相对 sector 中，based large gauge 只把 harmonic \(Q\) 平移 \(2\pi n\)，nonzero transverse modes 保留。phase space 的 harmonic factor 变成 \(T^*S^1\)，使用 (3.6) rotor；radiation 仍用其独立 CCR/Weyl algebra。本段的具体 Haar realization 固定 trivial large-gauge character ϑ=0，Weyl 版本相应固定 \(V(2\pi)=1\)。不固定该中心关系的 universal group-Weyl algebra 包含不同 ϑ sectors，不能与此一份 Hilbert realization 混同。

对于 \(e^{iF_{f,g}}\)，large-gauge invariance 要求跨每个截面的 \(\int_{T^2}f_x\) 是整数；散度为零使该数与 x 无关。零 harmonic coefficient 的 radiative smearings 不受此离散条件限制。由此得到明确的 Abelian-group label 版本，而不是在全线性 CCR 中强行令 Q 周期化。

(6.13) 的指数把区域 transports 与 \(e^{i\lambda}\) 接合；同一个整数 character 在所有分段都合法。harmonic Hilbert sewing 用
\[
 (V\psi)(Q_1,\ldots,Q_N)=\psi(Q_1+\cdots+Q_N)
\]
及 normalized circle measures，image 为相邻 flux 相等的 subspace。\(V\) intertwines U、P 和 (6.19) 的 Hamiltonian。

**范围总结。** 本篇严格证明固定 flat slab class 的 smooth linear/rotor-plus-radiation algebra composition，含所有 modes、actual lifts、完整 kernel、Poisson/CCR 和 fresh opening。没有证明任意 moving/null cuts、任意 nontrivial magnetic sector、任意 thin Wilson product、局域 Wick stress 的所有 boundary contacts；这些在第 10 篇保留为不同验收项，不能冒充已经完成。
