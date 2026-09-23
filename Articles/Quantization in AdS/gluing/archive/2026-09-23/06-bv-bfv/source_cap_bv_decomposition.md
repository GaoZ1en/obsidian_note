# Source histories 与自由 caps：相对 BV 分解和 residual kernel

2026-09-21。

**结果。** 从 WH 的 proper source/history 核及其 Noether 作用构造 minimal BV source model。在保留任意 polarized cap arguments 的条件下，给出连续、可逆的相对 cotangent 变换，提取真正的 minimal doublet；时间积分的 source 和 ghost momentum 留作 residual pair。该源核有明确的 normalized cylindrical state、mQME 和时间粘合。原 symmetric physical cap term 在这个模型中需要相应的 ghost cap term。

**范围。** 这里比较的是从 [WH](physical_wall_and_caps.md) 的 spatial-flat physical action 得到的源核及其 minimal completion。尚未给出从独立区域全部 bulk/corner BV fields 到此模型的积分，也没有把原 joint source domain 分解成独立因子。下文专门给出反例，说明为什么源核的成功仍不足以完成 G5。原 fields、actual gauge arrows 和 stabilizers 保留。

## 1. 先确定源核与原作用量的关系

取 I=γ=[0,1]，κ=k/(2π)>0。沿用 WH 的
e=(φ₁+φ₂)/2、r=φ₁−φ₂、p=κr_s；p 就是 WH 的 π，不另引入物理动量。实际 proper variation 的空间及其 smooth pairing partner 为
$$
 E_s=\{f\in C^\infty([0,1]):f(0)=f(1)=0\},
 \qquad F_s=C^\infty([0,1]).
 \tag{1.1}
$$
F_s 是弱积分配对的 partner，不是 E_s 的全部 distributional dual。

从既有 endpoint traces 选 smooth reference e_ref、q_ref，写
$$
 e=e_{\rm ref}+x,\qquad q=q_{\rm ref}+u,\qquad x,u\in C^\infty(I,E_s).
$$
参考项对共同 proper action 不变；这只是给 endpoint-zero fiber 选坐标，并未证明所有外部/source 资料独立可实现。令 Y 表示保留的其余 joint histories、outer fields 和 corners。

由 WH (2.2)，proper-dependent 的 canonical bulk 项恰为
$$
 S_{\rm src}^{\rm phys}=\int_{I\times\gamma}p(\dot x-u).
 \tag{1.2}
$$
原作用量还保留 S_ref[Y,p]、outer terms 及 cap/corner terms。由于 x 的空间端点为零，proper-dependent 的 symmetric cap generator 是
$$
 F_{\rm phys}=\frac{\kappa}{2}\int_\gamma x_s r
             =-\frac12\int_\gamma xp .
 \tag{1.3}
$$
剩余的 F_ref 和 WH 的 spatial endpoint covector 仍在原 joint data 中。特别是 r(1)=κ⁻¹∫p 与外部 primitive mismatch 相连，不可在固定外部数据时任意独立积分。

下面先把 (1.2) 作为独立定义的源模型。由它得到的 kernel 是原理论计算的 building block；重新接入 S_ref 与 joint constraints 是必要步骤，见 §7。

## 2. Minimal source BV model 及其 cap charge

由实际 proper 作用 Qx=c、Qu=dot c，给 (1.2) 的 minimal completion
$$
 S_{\rm can}=\int_{I\times\gamma}
       \bigl[p(\dot x-u)+x^+c+b\dot c\bigr],
 \qquad b=u^+ .
 \tag{2.1}
$$
x,p,u 为 even degree 0；c 为 odd degree 1；
x⁺,p⁺,b 为 odd degree −1；c⁺为 even degree −2。
x,u,c,p⁺ 取 E_s-valued histories，其余取 F_s-valued histories。所有时间 cap 值尚未限制。

按 [QT](quantum_cut_quartet.md) 的 even/odd Darboux pairs
(x,x⁺)、(p,p⁺)、(u,b)、(c⁺,c) 及 left odd derivatives，完整微分为
$$
 \begin{array}{llll}
 Qx=c,&Qu=\dot c,&Qp=0,&Qc=0,\\
 Qx^+=-\dot p,&Qp^+=\dot x-u,&Qb=-p,&Qc^+=-x^++\dot b .
 \end{array}
 \tag{2.2}
$$
例如 Q²c⁺=dot p−dot p=0，Q²p⁺=dot c−dot c=0。物理 Noether identity 为
E_x−∂tE_u=−dot p−∂t(−p)=0，未使用场方程。
完整 action 的 Q-variation 是
$$
 QS_{\rm can}=-\left[\int_\gamma pc\right]_{0}^{1}.
 \tag{2.3}
$$
因此它是带 caps 的 BV–BFV 源模型，不能把 closed-manifold QME 原样施于此 action。

由 kinetic terms 保留的 canonical cap potential 与 cap charge 是
$$
 \beta_{\rm can}=\int_\gamma(p\,\delta x+b\,\delta c),
 \qquad H_{\rm cap}=-\int_\gamma pc .
 \tag{2.4}
$$
固定 even BFV bracket {x,p}=1、{c,b}={b,c}=1，Q_cap={H_cap,−} 给
Q_cap x=c、Q_cap b=−p、Q_cap p=Q_cap c=0。
在 (x,c) polarization 中 p=−iħδ/δx，故
$$
 \Omega=i\hbar\int_\gamma c\,\frac{\delta}{\delta x},
 \qquad \Omega^2=0 .
 \tag{2.5}
$$
这明确说明 b 的 cap restriction 是 ghost momentum；它同时来自 bulk source antifield，但不应因此把全部 history BV pairing 与 degree-zero cap BFV pairing 混为一物。

## 3. 直接的 derivative change 为何失败

若直接令 a=u−dot x，odd cotangent one-form 中的相关项满足
$$
 \int_I(x^+\delta x+b\delta u)
 =\int_I\bigl[(x^+-\dot b)\delta x+b\delta a\bigr]
       +[b\,\delta x]_0^1 .
 \tag{3.1}
$$
这里及下文省略 γ 积分。最后一项是 degree −1 的 history cotangent defect；它不是 (2.4) 中 degree-zero 的 cap BFV potential。

取 δx=t、b=1，右侧 endpoint contribution 为1。相应 two-form 在 δ₁b=1、δ₂x=t 上同样非零。两者均可乘合法 spatial test functions，使其在 γ 端点为零。因此，忽略这一项并宣布自由-cap history 上的 smooth cotangent symplectomorphism，是错误的。

修补不需要把实际 cap values 设零。改为以任意 cap arguments (x_i,x_f,c_i,c_f) 为 base，只将 fiber fluctuations 取相对端点条件。

## 4. 相对 polarized cap base 的真实 doublet

定义
$$
 x_{\rm lin}=(1-t)x_i+tx_f,\qquad
 c_{\rm lin}=(1-t)c_i+tc_f,
$$
$$
 \sigma=\int_0^1u\,dt,\qquad
 \xi(t)=\int_0^t u\,d\tau-t\sigma,\qquad
 \eta=c-c_{\rm lin},\qquad
 z=x-x_{\rm lin}-\xi .
 \tag{4.1}
$$
ξ,η,z 的两个时间 cap 值为零；x_i,x_f,c_i,c_f 本身仍任意。逆变换是
u=σ+dot ξ、x=x_lin+ξ+z、c=c_lin+η。

定义 mean-zero absolute primitive
$$
 H_{\rm abs}f(t)=\int_0^t f(\tau)d\tau
                -\int_0^1(1-\tau)f(\tau)d\tau .
$$
它满足 ∂tH_abs f=f、∫H_abs f=0。取
$$
 z^+=x^+,\qquad \xi^+=x^+-\dot b,\qquad
 b_0=\int_0^1b\,dt,\qquad \eta^+=c^+ .
 \tag{4.2}
$$
逆变换为
$$
 b=b_0+H_{\rm abs}(z^+-\xi^+).
 \tag{4.3}
$$
所以这是真正可逆的 smooth-field 变换，不是只给出一个不可逆的 derivative projection。

固定 cap arguments 的 vertical variation 给
$$
 \vartheta_{\rm BV}^{\rm vert}
 =\int_I\bigl(z^+\delta z+\xi^+\delta\xi
                  +p^+\delta p+\eta^+\delta\eta\bigr)
                    +b_0\delta\sigma .
 \tag{4.4}
$$
分部积分的 [b δξ] 消失，是因为 fluctuation ξ 的定义，不是限制原 cap 值。全部 smooth history spaces 上的正反映射均由有限次积分、微分、trace 和插值组成，故连续。

**完整 variation 仍要保留 horizontal terms。**
相对于 (4.4)，原 one-form 还有
$$
 \vartheta_{\rm hor}
       =\int_I(z^+\delta x_{\rm lin}+\eta^+\delta c_{\rm lin}).
 \tag{4.5}
$$
不能把相对 canonical map 写成无条件的全空间 cotangent product decomposition。

连同 base differential Qx_i=c_i、Qx_f=c_f，实际 total differential 变成
$$
 \begin{array}{llll}
 Q\xi=\eta,&Q\eta=0,&Q\xi^+=0,&Q\eta^+=-\xi^+,\\
 Qz=0,&Qz^+=-\dot p,&Q\sigma=c_f-c_i,&Qb_0=-p_0,\\
 Qp=0,&Qp^+=\dot z+x_f-x_i-\sigma,&
 p_0=\displaystyle\int_0^1p\,dt .
 \end{array}
 \tag{4.6}
$$
Q²p⁺=c_f−c_i−Qσ=0；这一步必须包括 cap-base differential。

直接代入 action 并对 η 分部积分，得到
$$
 S_{\rm can}=
 \int_I\bigl[p(\dot z+x_f-x_i-\sigma)+\xi^+\eta
                               +z^+c_{\rm lin}\bigr]
                   +b_0(c_f-c_i).
 \tag{4.7}
$$
其中 z⁺c_lin 正是 (4.5) 在 Q_base 上的 contraction。
将 (4.7) 当作纯 vertical Hamiltonian 会误得 Qz=c_lin。
相对 connection 扣除这一项后，vertical Hamiltonian 加 Q_base 才给 (4.6)。这不是删除 action 的真实 cap dependence，而是明确区分 pulled-back action 与相对 Hamiltonian。

因此 (ξ,η,ξ⁺,η⁺) 是这个相对模型中的独立 minimal BV doublet，action 为 ∫ξ⁺η。在连续有限次数多项式上
$$
 h_{\rm der}=\int\left(\xi\frac{\delta}{\delta\eta}
                         -\eta^+\frac{\delta}{\delta\xi^+}\right)
$$
与 Q 的 anticommutator 为 doublet-degree operator。
正 degree 上除以该 degree，即得保持其余变量和 polarized cap arguments 的 cochain contraction。

加入 nonminimal pair 后，可应用 QT 的 canonical gauge fixing 和 normalized quantum contraction。此时原 b 及其 cap values 必须通过 (4.3) 和该 canonical shift 一起运输，不能擅自令 b_i=b_f=b₀，或声称所有 unpolarized cap observables 均被原样保留。

**原 C∞ 域的基底。** 用 QT 的 integrated Legendre v_n 及 smooth dual w_n，在 ξ,η 等两方向端点为零的 spaces 上取 v_m(t)v_n(s)，duals 取 w_m(t)w_n(s)，m,n≥1。QT 的连续完备性证明逐方向适用。保留在 base 中的自由 caps 不参加这个 projection，没有给原 histories 添加 cap jet 条件。

CMR 的 [interval propagator，Appendix C.2](https://arxiv.org/html/1507.01221v2#A3) 同样区分两端相同 polarization 的 relative interval complex 及非空 residual fields；其 kernel Θ(t−τ)−t 与 (4.1) 的积分算子一致。这是结构对照，本文具体 source coordinates、配对和约束由上面的计算给出。

## 5. 保留 residual pair 的 canonical source kernel

只对 (2.1) 的源模型执行以下 normalized cylindrical integration。Doublet/nonminimal sector 用 QT；取 z⁺=p⁺=0 的剩余 fluctuation Lagrangian。对 relative z 展开
z(t)=∑_{n≥1}z_n v_n(t)，对 p 用完整 orthonormal Legendre expansion。
由于
$$
 \int_0^1 e_m(t)\dot v_n(t)\,dt=\delta_{mn},
 \qquad m,n\ge1,
$$
每个 normalized z_n Fourier integral 强制非零时间 mode p_n=0。p₀、其 BV partner p₀⁺ 以及 (σ,b₀) 暂留；在 p₀⁺=0 上积分 p₀。

对一份 finite spatial canonical mode，准确的 residual phase 和 state 是
$$
 S_{\rm res}=p_0(x_f-x_i-\sigma)+b_0(c_f-c_i),
$$
$$
 Z_{\sigma,b_0}(x_f,x_i;c_f,c_i)
   =e^{i b_0(c_f-c_i)/\hbar}\,
                         \delta(x_f-x_i-\sigma).
 \tag{5.1}
$$
Fourier convention 是 ∫dp₀ exp(ip₀a/ħ)/(2πħ)=δ(a)，ordinary cap pairing 使用 dx_i。有限多 modes 取兼容的 canonical products 与既定取向。这里没有新定义无限维 Lebesgue 或 Berezin measure。

令 Δ_res=∂σ∂b₀，incoming transpose 由 dual cap pairing 固定。
在 (5.1) 的 even kernels 上，
Ω_f−Ω_i^T=iħ(c_f−c_i)∂x_f。因此
$$
 \left[\hbar^2\Delta_{\rm res}
                +\Omega_f-\Omega_i^T\right]Z_{\sigma,b_0}=0 .
 \tag{5.2}
$$
证明直接使用 ∂σδ=−∂x_fδ 和 left derivative
∂b₀ exp[i b₀(c_f−c_i)/ħ]=(i/ħ)(c_f−c_i)exp[i b₀(c_f−c_i)/ħ]。
相应 quantum operator 的平方为零。若删掉 ghost exponential 而保留非平凡 translation kernel，boundary term 不再抵消。

状态的 ordinary action 是 U_σf(x)=f(x−σ)。在 smooth cylindrical tests 上，任意 finite projection 的 distributions 相容；U_σ 对完整 smooth history coordinates 的 translation 也有明确意义。这只给该核的 cylindrical/formal interpretation，不给完整 local/mixed BV insertion 的重整化域。

σ 是 source 的时间积分，其常数时间 mode 不在 ξ 中。χ 的 arbitrary cap transformation 改变 σ，Qσ=c_f−c_i；b₀=0 的 slice 在 p₀≠0 时也不 Q-invariant。故不能在保持同一 cap problem 的前提下将 (σ,b₀) 一并用 QT 删掉。

## 6. 时间粘合确实需要 residual pushforward

两个相邻 interval 的 ordinary kernels 满足
U_σ₂U_σ₁=U_(σ₁+σ₂)。
中间 ghost cap 的积分仍留下一个 odd residual constraint；一份 mode 上，按 left derivative convention，
$$
 i\hbar\partial_{c_m}\left[
 e^{i b_2(c_f-c_m)/\hbar}
 e^{i b_1(c_m-c_i)/\hbar}\right]
  =(b_1-b_2)e^{i b(c_f-c_i)/\hbar},
 \qquad b=\frac{b_1+b_2}{2}.
 \tag{6.1}
$$
右侧等式利用 (b₁−b₂)²=0。令
$$
 \sigma=\sigma_1+\sigma_2,\quad
 \rho=\frac{\sigma_1-\sigma_2}{2},\quad
 b=\frac{b_1+b_2}{2},\quad d=b_1-b_2 .
$$
这是实际 residual canonical change，
$$
 \Delta_1+\Delta_2=\partial_\sigma\partial_b+\partial_\rho\partial_d .
$$
在 ρ=0、d free 的 residual Lagrangian 上再作 ∂d 积分，(6.1) 给
exp[i b(c_f−c_i)/ħ]，恰好恢复 (5.1)。
Bare ghost integral ∂c_m1=0；所以把每一步积分事先归一成1会得到错误的组合。

这项 binary operation 在上述 state family 中封闭；重复使用同一取向，三次组合由 source integrals 相加得到相同结果。原 theory 的 cap/corner phase 和 determinant lines 仍需随 dual pairing 运输，本核的结合性不证明完整量子 G4。

## 7. 回到原域时的两个额外反例

**联合源约束不能先忘掉。** 若保留的 outer data 将一个 response coordinate 固定为 p=a，则实际 source integral 是
$$
 \int\frac{du}{2\pi\hbar}e^{-iua/\hbar}=\delta(a).
 \tag{7.1}
$$
若无依据地把 p 也变成独立 integration variable，则 ∫dp δ(p)=1，丢失对 a 的限制。
Gaussian regularization 给
δ_ε(a)=exp[−a²/(2ε)]/√(2πε)；它在 test exp[−(a−a₀)²] 上趋于 exp(−a₀²)，不是常数1。
因此 (5.1) 只能与真实 joint constraints、S_ref 和剩余 corner terms 一起代回原问题。单独将其称为完整 regional state 的一因子，尚未证明。

**仅运输 bosonic cap phase 也不够。** 在本 source model 中，将 canonical kinetic terms 同时改写为 symmetric form，需要
$$
 F_{\rm cap}=-\frac12\int_\gamma(px+bc),\qquad
 S_{\rm sym}=S_{\rm can}+[F_{\rm cap}]_0^1 .
 \tag{7.2}
$$
ghost kinetic term 变为 (b dot c−dot b c)/2。由 Q_cap b=−p，
$$
 Q_{\rm cap}(px)=pc,\qquad Q_{\rm cap}(bc)=-pc,\qquad
 Q_{\rm cap}F_{\rm cap}=0 .
 \tag{7.3}
$$
仅取 WH 的 F_phys 则给 −pc/2，不能声称它是完整 BFV frame 的不变变换。b=0 的 physical slice 也不是未释放 constraint 前的 Q-invariant slice。

F_cap 依赖 momenta p,b，故 exp(iF_cap/ħ) 是 prequantum frame 运输资料，polarization 和 dual cap pairing 必须一起运输；不能把它无条件当作同一 x-wavefunction space 上的乘法算子。对原 full CS ghost/antifield 的 pushforward 如何产生这里的 b 及此 cap term，仍未证明。

## 8. Claims、完成边界和下一条推导

- **SC1：** 本 minimal source model 在任意 polarized cap base 上有显式连续相对 cotangent/chain decomposition；(ξ,η,ξ⁺,η⁺) 的 classical doublet 及其 nonminimal QT completion 保留 base 和 residuals。原 unrestricted-cap 全 cotangent product claim 被 (3.1) 反驳。
- **SC2：** canonical source kernel 在声明的 normalized cylindrical distributional 域满足 mQME，且实际 interface 加 residual integration 保持 state family。删除 σ,b₀ 或 ghost phase 的无条件版本不成立。
- **SC3：** 本源模型的 symmetric cap frame 需要完整 boson/ghost generator (7.2)，其 Q_cap variation 为零；不由此声称完成原 CS full cap polarization transport。

下一条实际工作是从独立 regional bulk/corner BV action 作空间 constraint pushforward，识别这里的 source/antifield coordinates；整个过程保留 Y,p 的联合域及全部 cap terms。随后才能将本核与 retained sector 配对并验收完整 mQME、mixed insertions、determinant transport 和 QD products。G1–G5 仍 partial，G6 仍 open。

**后续 BS 修订：** [原区域与 source release](bulk_boundary_source_release.md) 已给上述 coordinates 的 actual off-shell Q-map，但必须先加入由真实 source variation 决定的 release resolution。直接从 unreleased bulk 寻找同一比较被一个 Q-fixed-point 反例排除。BS 还给原 ghost action 的 cap correction 与 canonical source momentum 的 curvature contribution；剩余工作是该映射的相对 BV pairing/fiber 和完整量子 pushforward，不能由 cochain 成功推论。

**Verified:** 17项 Mathematica、19项 Sage、4项 xAct/xTras 最终检查通过，见 [执行与回攻记录](checks/source_cap_bv_verification.md)。解析连续性、一般 doublet homotopy 和 distributional identities 由正文给出；有限检查核对符号、非零见证与有限 mode models。

**Assumptions:** WH 的 spatial-flat source kernel；smooth endpoint-zero proper fibers；任意 polarized cap arguments；指定 relative splitting、left odd derivatives、同步 canonical normalization 和取向。量子 state 限于上述 cylindrical/formal 域。

**Not verified:** 原 full bulk/source/corner BV pushforward 到本模型的识别、联合域的积分分解、完整 regional states 与所有 local/mixed insertions、global determinant/anomaly、一般 topology/reopening 和传播非阿贝尔模型。
