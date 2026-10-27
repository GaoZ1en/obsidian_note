---
paper id: 2610.30254v1
title: Fluids on null hypersurfaces and Carrollian hydrodynamics
authors:
  - Emil Have
publication date: 2026-10-21T18:00:04Z
abstract: |-
  We study intrinsic ideal fluids on null hypersurfaces and their realisations by causal fluids living in the ambient spacetime. An embedded null hypersurface is equipped with an induced Carrollian structure with a temporal Weyl symmetry inherited from rescalings of the null generator, and we develop the corresponding null submanifold and variational calculus. The intrinsic fluid phases are classified according to their realisation of Carroll boosts and temporal Weyl symmetry. If we demand that an ambient fluid be confined to a null hypersurface, the ambient fluid velocity must be null, which realises an intrinsic zero-temperature Carrollian phase with unbroken Carroll boosts. In general, timelike or null ambient fluids will cross a null hypersurface and lead to an open Carrollian system. On a null foliation, the sources correspond to transport between null leaves. We then show that there exists a decoupling limit of a timelike ambient fluid which gives rise to an autonomous Carrollian fluid with spontaneously broken Carroll boosts and no source terms. This decoupling limit corresponds to an infinite boost while keeping the enthalpy finite and nonzero, which leads to a divergent ambient energy-momentum tensor. Nevertheless, the induced Carrollian responses do not see the divergent term and remain finite, and an independent Carroll boost Goldstone emerges from a subleading component of the ambient fluid velocity in this limit.
comments: "65 pages, 5 figures"
url: https://arxiv.org/abs/2610.30254v1
summary: "固定 null embedding 的变分响应、跨叶输运与受控奇异热流体极限，区分响应闭合和环境重建。"
tags: []
---

# Fluids on null hypersurfaces and Carrollian hydrodynamics

## 主旨：闭合来自哪一个方程、哪一个极限

论文建立固定 null embedding 上的变分投影，并区分三个问题：

1. **速度受限于 null 面**：causal tangent vector 必须沿 null generator；aligned ambient null fluid 只给出零焓的 intrinsic ideal phase。
2. **速度穿过 null 面**：一般 timelike/null fluid 在每个 null leaf 上产生开放系统，其 Ward identity 的源是邻叶之间的 traction 输运。
3. **热 Carrollian 自主极限**：令穿越量 \(B=-v_\mu U^\mu=\epsilon b\to0\)，但保留有限非零 \(w_T\)。ambient stress 的 \(v^\mu v^\nu/\epsilon^2\) 项发散；允许的 null-preserving 变分看不见该项，intrinsic response 的等价类仍有限。混合项保留下次领先速度数据，成为 Carroll boost Goldstone。

核心式是
\[
\boxed{\mathcal W_a=-e^{-1}(\partial_u+\mathcal L_\zeta)
(e\widetilde{\mathcal F}_a)},\qquad
\widetilde{\mathcal F}_a=-w_TB^2\widetilde\tau_a.
\]
只有当右端在整个邻域连同所需导数一起趋零，leaf 才满足闭合的 ideal Ward identity。**某一张 leaf 上 traction 为零不够。**

这个构造可用于区域理论中检验“响应是否闭合”：先明确 source multiplet、允许变分、遗漏的 transverse equation，再讨论自主动力学。它没有证明 gravity CPS 的 symplectic reduction、边界 Hilbert-space factorization、完整 ambient reconstruction 或量子态 sewing。

## 全文章节树与阅读入口

来源：[官方摘要](https://arxiv.org/abs/2610.30254v1)、[官方全文](https://arxiv.org/html/2610.30254v1)。官方 PDF 65 页；完整 TeX 的正文及全部技术段落已读取，无技术附录。下表页码是论文印刷页码（PDF 物理页约加一）。

| 节 | 页 | 定义、推导及后续依赖 |
|---|---:|---|
| 1 Introduction | 1–5 | Figure 1 的六类 intrinsic phases；两个大 boost 极限；区分 null confinement 与 \(c\to0\) |
| 2.1 Induced Carrollian geometry | 6–13 | embedding、rigging、projectors、temporal Weyl、volume、induced connection |
| 2.2 Variational calculus | 13–18 | 固定 null embedding 的 \(\delta g\)、三组 responses、ambiguity、单面 tangential/transverse equations |
| 2.3 Reference splittings | 19–22 | \(M^a=\tau-r\) 的意义；invariant inverse data；foliation 坐标 |
| 3.1 Broken Carroll boosts | 22–27 | Goldstone \(\theta^a\)、thermal vector、homogeneity、\(P=s_0T\) branch |
| 3.2 Unbroken boosts | 27–30 | 零温 phase；background/dynamical \(\Omega\) 与 explicit \(\kappa\) |
| 3.3 Both symmetries broken | 30–32 | 一般 thermal \(P\)、compensator response、两种 on-shell branches |
| 4.1 Causal confinement | 33 | 正半定 induced metric 排除 timelike tangent velocity |
| 4.2 Ideal null fluids | 34–35 | null velocity 的 normalization；\(T^{\mu\nu}=\widehat{\mathcal E}qq+\widehat P g\) |
| 4.3 Confined phase | 35–39 | \(\Omega^{-1}\) measure、零焓、遗漏的 null-density equation |
| 5.1 Open foliations | 41–45 | lapse/shift responses；density-valued transverse derivative；exact source |
| 5.2 Crossing fluids | 45–49 | timelike/null projected responses；有限 \(B\) 的 boost field 不是独立 Goldstone |
| 5.3 Decoupling | 49–51 | \(\epsilon\) 标度、finite quotient、与 regular null limit 的差别 |
| 5.4 Thermal recovery | 52–56 | 温度平方映射、entropy equation、\(A_{(-2)},A_{(0)}\) transport、emergent redundancy |
| 6 Discussion | 56–57 | null infinity、membrane、viscosity/entropy production、moving embedding 均留待研究 |
| References / acknowledgments | 58 起 | 历史与外部理论输入，不是本文新增的检查 |

**How to read this long paper.** 最短技术主线是 2.2 → 5.1 → 5.2–5.4；阅读 5.4 前必须补 3.3，理解 background \(\Omega\) 为什么没有自己的 equation of motion。2.1/2.3 是符号和 rigging 参考；4 是有限 ambient null-fluid limit 的对照；3.1/3.2 负责完整 phase classification，不能将其所有 phase 混作第五节热极限。引言图及第六节用于定位，不能替代上述计算。

## 全局记号与约定

ambient \(M\) 维数 \(d+2\)，null hypersurface \(N\) 维数 \(d+1\)，spatial rank \(d\)。\(\mu,\nu\) 为 ambient indices，\(a,b\) 为 intrinsic indices，\(A,B\) 为 spatial frame indices。Lorentzian signature 一负。所有 hydrodynamics 只到 ideal order，neutral equation of state；未加入 charge chemical potential 或 dissipative transport。

| 符号 | 意义与容易混淆之处 |
|---|---|
| \(X^\mu(\sigma),u^\mu_a=\partial_aX^\mu\) | 固定 embedding 与 tangent map；这里的 \(u^\mu_a\) 不是 fluid velocity |
| \(v_\mu,v^\mu,v^a\) | null normal covector、其 metric dual、intrinsic generator；\(v^\mu=u^\mu_av^a\) |
| \(\tau^\mu,\tau_a\) | auxiliary null rigging 与其 pulled-back covector；\(v\cdot\tau=-1\) |
| \(h_{ab},h^{ab}\) | degenerate ruler 与依赖 rigging 的 spatial inverse |
| \(K_{ab}=-\tfrac12\mathcal L_vh_{ab}\) | null extrinsic curvature/intrinsic torsion；不要与 Goldstone response \(K_a\) 混淆 |
| \(G_{ab},\omega_a\) | rigging extrinsic tensor、Hájiček form；都含 ambient/splitting 信息 |
| \(T^{\mu\nu}\) | ambient stress；\(\widetilde T^a,\widetilde{\mathcal T}^{ab},\widetilde{\mathcal F}_\mu\) 是无 measure 因子的 projections |
| \(T^a,\mathcal T^{ab},T^a{}_b\) | normalized intrinsic energy current、momentum-stress、mixed stress；normalization 因实现而异 |
| \(M^a\) | rigging 相对人为 reference splitting 的差；不是 dynamical Goldstone |
| \(\theta^a,\widetilde\theta^a\) | 独立 Carroll boost Goldstone、由有限 ambient velocity 决定的 boost field |
| \(\alpha,\lambda_a,\chi\) | temporal Weyl、Carroll boost、Goldstone time-component redundancy 参数 |
| \(\Omega,\kappa\) | Weyl compensator、explicit-breaking local scale；\(\kappa\) 不是温度或 surface gravity |
| \(k^a,u^a,T\) | thermal symmetry vector、normalized intrinsic velocity、intrinsic temperature |
| \(U^\mu,B,w_T,p_T,T_T\) | unit timelike parent velocity、crossing scalar、parent enthalpy/pressure/temperature |
| \(\mathcal N,\zeta^a,R,\mathfrak D_u\) | foliation lapse、shift、\(\partial_u+\zeta\)、transverse Lie transport |
| \(Q=w_TB^2,\rho=w_T/2-p_T\) | crossing response 参数；\(Q\) 不是 conserved charge |
| \(\epsilon,b,A_{(-2)},A_{(0)}\) | 明示的 boost limit 参数、有限幅度、不可见 ambient stress 的渐近系数 |

括号指标对称化含 \(1/2\)。因此 \(w_Tv^{(\mu}r^{\nu)}\) 的实际 cross term 系数是 \(w_T/2\)，而不是 \(w_T\)。这正是 \(w_C=\mathcal N w_T/2\) 的来源。本文不设 \(\mathcal N=1\) 直到所有 response 和 weight 已确定。

## 2.1 从 null embedding 到有 ambient 信息的 connection

诱导度规和 null normal 满足
\[
h_{ab}=u^\mu_au^\nu_bg_{\mu\nu},\quad
v_\mu u^\mu_a=0,\quad
v^\mu v_\mu=0,\quad h_{ab}v^b=0.
\]
选 \(\tau^\mu\) 使 \(\tau^2=0,v\cdot\tau=-1\)，分解
\[
g_{\mu\nu}=h_{\mu\nu}-2\tau_{(\mu}v_{\nu)},\qquad
h_{\mu\nu}v^\nu=h_{\mu\nu}\tau^\nu=0.
\]
在 \(N\) 上，
\[
\tau_av^a=-1,\quad
h^a{}_b=\delta^a_b+v^a\tau_b,\quad
h^{ac}h_{cb}=h^a{}_b,\quad h^{ab}\tau_b=0.
\]
无唯一 \(h^{ab}\)：它依赖 rigging。构造 inverse projection
\[
u^a_\mu=h^{ab}u^\nu_bg_{\mu\nu}-v^a\tau_\mu
\]
后有
\[
u^a_\mu u^\mu_b=\delta^a_b,\quad
u^\mu_au^a_\nu=\delta^\mu_\nu+\tau^\mu v_\nu,\quad
\tau^\mu u^a_\mu=0.
\]
因此 \((u^\mu_a,-\tau^\mu)\) 和 \((u^a_\mu,v_\mu)\) 是相应对偶基。

### null frame gauge 与 temporal Weyl

ambient null boosts/rotations 作用为
\[
\delta v^\mu=\alpha v^\mu,\quad
\delta\tau_\mu=-\alpha\tau_\mu+\lambda_\mu,\quad
\delta h_{\mu\nu}=2\lambda_{(\mu}v_{\nu)},
\quad \lambda\cdot v=\lambda\cdot\tau=0.
\]
固定 embedding 后诱导
\[
\delta v^a=\alpha v^a,\quad
\delta\tau_a=-\alpha\tau_a+\lambda_a,\quad
\delta h_{ab}=0,\quad
\delta h^{ab}=2v^{(a}\lambda^{b)},\quad
\delta u^a_\mu=\lambda^av_\mu.
\]
null rotation 成为 Carroll boost；null-generator rescaling 成为只缩放时间的 Weyl transformation，spatial ruler 不缩放。它不同于 Penrose conformal completion 的 Weyl rescaling。

volume form 是
\[
\epsilon_N=X^*(-i_\tau\epsilon_M)
=\tau\wedge e^1\wedge\cdots\wedge e^d=e\,d^{d+1}\sigma,
\quad \delta_\alpha e=-\alpha e.
\]
\(\epsilon_M|_N=v^\flat\wedge\widetilde\epsilon_N\) 是沿 \(N\) 的 ambient form identity，不能写成 ambient top-form 的 pullback，后者因维数为零。取局部正向 density 时 \(e=\sqrt{\det(\tau_a\tau_b+h_{ab})}\)。

### \(D\) torsion-free，但不 compatible with \((v,h)\)

由 ambient Levi–Civita 投影，
\[
\gamma^c_{ab}=u^c_\mu\partial_au^\mu_b
+u^\mu_au^\nu_bu^c_\rho\Gamma^\rho_{\mu\nu},
\quad
u^\nu_a\nabla_\nu u^\mu_b=u^\mu_c\gamma^c_{ab}-\tau^\mu K_{ab}.
\]
\(u^\mu_a=\partial_aX^\mu\) 的 integrability 使 \(\gamma^c_{[ab]}=0\)。normal covector 的 pullback 为零蕴含沿面 \(v\wedge dv=0\)，从而 \(v^\nu\nabla_\nu v_\mu=c_vv_\mu\)，且 \(v^aK_{ab}=0\)。若 normal 延拓只在面上 null，
\[
c_v=-v^\mu\alpha_\mu-\frac12\tau^\mu\partial_\mu(v^2),
\qquad dv=v\wedge\alpha;
\]
只有在邻域也保持 null 时才能删掉最后一项。

定义
\[
\omega_a=u^\mu_av^\nu\nabla_\mu\tau_\nu,\quad
G_{ab}=\frac12u^\mu_au^\nu_b\mathcal L_\tau g_{\mu\nu},\quad
a_a=\mathcal L_v\tau_a,\quad
F_{ab}=h^c{}_{[a}h^d{}_{b]}D_c\tau_d.
\]
则
\[
D_ah_{bc}=-2K_{a(b}\tau_{c)},\quad
D_av^b=-h^{bc}K_{ac}+v^b\omega_a,
\]
\[
D_a\tau_b=G_{ab}+F_{ab}+a_{[a}\tau_{b]},\qquad
D_ah^{bc}=2v^{(b}h^{c)d}
(G_{ad}+F_{ad}-\tfrac12a_d\tau_a).
\]
解出 connection：
\[
\gamma^c_{ab}=-v^c\partial_{(a}\tau_{b)}
+\frac12h^{cd}(\partial_ah_{bd}+\partial_bh_{ad}-\partial_dh_{ab})
+v^cG_{ab}.
\]
最后的 \(G_{ab}\) 是 ambient information，不能声称该 connection 完全由 intrinsic \((v,h)\) 决定。其变换
\[
\delta_\lambda\gamma^c_{ab}=\lambda^cK_{ab},\qquad
\delta\omega_a=\lambda^bK_{ab}+\partial_a\alpha
\]
表明选定 rigging 的 canonical projection 不等于 boost-invariant intrinsic connection。volume compatibility 则为
\[
D_ae:=\partial_ae-\gamma^b_{ab}e=-\omega_ae.
\]

## 2.2 变分不是把 ambient action 直接限制到低维

固定 \(\delta X^\mu=0\)，但保留 rigging 的 variation。由 completeness 和 \(\delta(\tau^2)=0\)，
\[
\delta g_{\mu\nu}|_N
=u^a_\mu u^b_\nu\delta h_{ab}
-2v_{(\mu}u^a_{\nu)}\delta\tau_a
+2v_{(\mu}g_{\nu)\rho}\delta\tau^\rho.
\]
因此
\[
\frac12T^{\mu\nu}\delta g_{\mu\nu}
=-\widetilde T^a\delta\tau_a
+\frac12\widetilde{\mathcal T}^{ab}\delta h_{ab}
+\widetilde{\mathcal F}_\mu\delta\tau^\mu,
\]
\[
\widetilde T^a=v_\mu u^a_\nu T^{\mu\nu},\quad
\widetilde{\mathcal T}^{ab}=u^a_\mu u^b_\nu T^{\mu\nu},\quad
\widetilde{\mathcal F}_\mu=v_\nu T^\nu{}_\mu.
\]
最后一项是 null traction。没有理由一般设为零；它正是只用 intrinsic Carroll sources 无法描述完整 ambient variation 的障碍。此式是局部 pairing，尚未选择 leaf measure，也尚未证明某个 lower-dimensional action 存在。

保持固定 surface 为 null 要求
\[
v^\mu v^\nu\delta g_{\mu\nu}=v^av^b\delta h_{ab}=0.
\]
故 response 只定义到
\[
\widetilde{\mathcal T}^{ab}\sim
\widetilde{\mathcal T}^{ab}+f v^av^b.
\]
这是**受限变分的 annihilator**，不是 ambient \(T^{\mu\nu}\) 的 gauge equivalence。transverse equation 仍看得见 \(f\)。

projection algebra 本身给出
\[
\widetilde T^a=h^{ab}\widetilde{\mathcal F}_b
-v^a\tau^\mu\widetilde{\mathcal F}_\mu,
\]
\[
\tau_a\widetilde T^a=\tau^\mu\widetilde{\mathcal F}_\mu,\qquad
h_{ab}\widetilde T^b=h^b{}_a\widetilde{\mathcal F}_b.
\]
这些等式可组织成 boost/Weyl response identities；它们在未指定 action、未施加 \(\nabla T=0\) 前就成立，不能误称为无源 intrinsic Ward identities。

定义
\[
\widetilde T^a{}_b=-\tau_b\widetilde T^a+
\widetilde{\mathcal T}^{ac}h_{cb},\quad
\widetilde{\mathcal W}_a=
e^{-1}\partial_b(e\widetilde T^b{}_a)
+\widetilde T^b\partial_a\tau_b
-\tfrac12\widetilde{\mathcal T}^{bc}\partial_ah_{bc}.
\]
将 ambient conservation 投影到单个 \(N\)：
\[
\widetilde{\mathcal W}_a=
\tau^\rho v_\mu u^\nu_a\nabla_\rho T^\mu{}_\nu
-\omega_b\widetilde T^b{}_a
+\widetilde T^bD_a\tau_b+G\widetilde{\mathcal F}_a,
\quad G=h^{ab}G_{ab}.
\]
右边含 transverse derivative，一般不能从单面的 intrinsic data 重建。另有独立 transverse equation
\[
0=-D_b(\widetilde{\mathcal T}^{bc}\tau_c)
+\widetilde{\mathcal T}^{bc}G_{bc}
+G\tau_b\widetilde T^b
+\tau^\rho\tau^\nu v_\mu\nabla_\rho T^\mu{}_\nu.
\]
两者一起才等价于 ambient conservation；不能只取第一式就宣布完整约化。

## 2.3 \(M^a\) 是 splitting data

另外选择 \(v_\mu r^\mu=-1\) 的 reference vector；它不必 null，可用 \(r_0=r+\tfrac12r^2v\) nullify。因为 \(\tau-r\) tangent，
\[
\tau^\mu-r^\mu=M^au^\mu_a,\quad
\delta M^a=-\alpha M^a+\lambda^a.
\]
若 \(r\) 对 rotations inert，则
\[
\widehat\tau_a=\tau_a-h_{ab}M^b=u^\mu_ar_\mu,\quad
\bar u^a_\mu=u^a_\mu-M^av_\mu,\quad
\bar h^{ab}=h^{ab}-2M^{(a}v^{b)}
\]
为 boost-invariant data。再定义
\[
\bar\Phi=-\tau_aM^a+\tfrac12h_{ab}M^aM^b=\tfrac12r^2,\quad
\widehat h^{ab}=\bar h^{ab}+2\bar\Phi v^av^b.
\]
\(\widehat h^{ab}\widehat\tau_b=0\)，而 \(\bar h\) 是 reference-projected ambient inverse，两者不能混用。

null foliation \(N_u\) 上 \(v^\flat=\mathcal Ndu\)，选
\(r=-\mathcal N^{-1}\partial_u\) 即得到
\[
\tau=-\mathcal N^{-1}\partial_u+M^a\partial_a,\quad
\widehat\tau_a=-g_{ua}/\mathcal N,\quad
\bar\Phi=g_{uu}/(2\mathcal N^2),\quad \bar h^{ab}=g^{ab}.
\]
\(M\) 来自选择 reference splitting；并不因 boost shift law 就自动成为 edge mode 或 Goldstone。

## 3.1 热 phase：Goldstone、响应和 homogeneity

broken Carroll boosts 的独立变量 \(\theta^a\) 满足
\[
\delta\theta^a=-\alpha\theta^a-h^{ab}\lambda_b+\chi v^a
\]
（另加 diffeomorphism Lie derivative）。\(\chi v^a\) 去除其 time component。构造
\[
\check\tau_a=\tau_a+h_{ab}\theta^b,
\quad
\check h^{ab}=h^{ab}
+v^av^b(\theta^2+2\tau_c\theta^c)+2v^{(a}\theta^{b)}.
\]
它们对 boost/\(\chi\) invariant；\(\check\tau\) weight \(-1\)，\(\check h\) weight \(0\)。

变分定义
\[
\delta S=\int e[-T^a\delta\tau_a+\tfrac12\mathcal T^{ab}\delta h_{ab}-K_a\delta\theta^a].
\]
off-shell symmetry identities：
\[
K_a=h_{ab}T^b,\quad v^aK_a=0,\quad
\tau_aT^a+K_a\theta^a=0.
\]
后一个等价于 \(\check\tau_aT^a=0\)。Goldstone equation \(K_a=0\) 后，空间与时间投影共同给 \(T^a=0\)。这是 unbroken temporal Weyl 下的特殊结果；不能带到一般 compensated thermal phase。

以 symmetry parameters 固定的 hydrostatic vector \(k^a\) 定义
\[
T=\frac{T_0}{\check\tau\cdot k},\quad
u^a=\frac{k^a}{\check\tau\cdot k},\quad
\check\tau\cdot u=1,\quad
u=-v+\vec u,\quad q:=\vec u^2=h_{ab}u^au^b.
\]
取 \(T_0>0,\check\tau\cdot k>0\)。\(T,u,q\) 的 temporal weights 是 \(1,1,2\)；\(k\) weight \(0\)。理想 hydrostatic functional
\[
S_{\rm HPF}=\int eP(T,q)
\]
因此要求
\[
(T\partial_T+2q\partial_q)P=P,\qquad
P=Tp(q/T^2).
\]
设 \(dP=s\,dT+\tfrac12m\,dq\)，\(w_*:=sT+mq\)，则变分给出
\[
T^a=Pv^a+w_*u^a,\quad
\mathcal T^{ab}=Ph^{ab}+mu^au^b-2w_*u^{(a}\theta^{b)},\quad
K_a=w_*h_{ab}u^b.
\]
符号 \(w_*\) 只是本段简写，原文直接写 \(sT+m\vec u^2\)。Weyl condition 使 \(w_*=P\)。在 \(P\neq0\) branch，\(K_a=0\Rightarrow\vec u=0\)，从而
\[
P=s_0T,\quad s_0=p(0),\quad m=2T^{-1}p'(0),\quad
T^a=0,\quad
\mathcal T^{ab}\sim s_0T(h^{ab}+2v^{(a}\theta^{b)}).
\]
\(m v^av^b\) 被 response equivalence 消去。这里不含 \(P=0\) exceptional branch。aligned hydrostatic \(k=\nu v\) 还由 \(\mathcal L_kh=0\) 要求 \(K_{ab}=0\)；这不应被推广成所有非平衡 thermal configurations 的背景要求。

## 3.2–3.3 零温、explicit scale 和 compensator 的不同角色

unbroken Carroll boosts 没有构造温度所需的独立 boost Goldstone。zeroth-order invariant 是 \(\vec k^2=h_{ab}k^ak^b\)，weight \(0\)；但 \(e\) weight \(-1\)，所以无额外 scale 时无法写非平凡 invariant ideal functional。

### 零温 compensated phase

取 \(\delta_\alpha\Omega=-\alpha\Omega\)，
\[
S_s^0=\int e\,\Omega^{-1}P_s(\vec k^2).
\]
响应为
\[
T^a=\Omega^{-1}P_sv^a,\quad
\mathcal T^{ab}=\Omega^{-1}(P_sh^{ab}+m_sk^ak^b),\quad
\mathcal O_\Omega=-\Omega^{-2}P_s,\quad
m_s=2\partial_{\vec k^2}P_s.
\]
于是 \(\varepsilon_s=\tau_aT^a=-\Omega^{-1}P_s\)，焓为零，且
\[
h_{ab}T^b=0,\qquad\tau_aT^a-\Omega\mathcal O_\Omega=0.
\]
若 \(\Omega\) 是 **background Stueckelberg field**，\(\mathcal O_\Omega\) 是 response，不要求零。若它是 **dynamical field**，必须施加 \(\mathcal O_\Omega=0\Rightarrow P_s=0\)；但一般 \(m_s\) 仍可非零。

aligned \(k=\nu v\) 时 \(m_s\nu^2vv\) 不可见，只剩
\[
T^a{}_b=\Omega^{-1}P_s(0)\delta^a_b.
\]
背景 \(\Omega\) 的 diffeo identity 含 \(-\mathcal O_\Omega\partial_a\Omega\)，恰好化为 \(\Omega^{-1}\partial_aP_s(0)=0\)。dynamical \(\Omega\) 则令该 aligned phase 完全平凡。

### 零温 explicit phase

\[
S_e^0=\int eP_e(\vec k^2,\kappa),\quad\mathcal L_k\kappa=0.
\]
\(\kappa\) 是 physical local hydrodynamic scale，求几何响应时固定；不是额外 background source，也不是温度。响应相应为 \(T^a=P_ev^a\)、\(\mathcal T^{ab}=P_eh^{ab}+m_ek^ak^b\)，\(\varepsilon_e=-P_e\)。aligned branch 的 equation 是
\[
\partial_aP_e(0,\kappa)=0.
\]
只有 \(\partial_\kappa P_e\neq0\) 时才能推出 \(\partial_a\kappa=0\)。

### 同时破坏两种 symmetry 的 thermal phase

explicit scale 情形 \(P_{b,e}(T,q,\kappa)\) 不服从 homogeneity，currents 保持上段 thermal 形式。Goldstone equation 给两个 branch：
\[
\vec u=0\quad\text{或}\quad sT+mq=0.
\]
compensated 情形定义
\[
\mathscr P(T,q,\Omega)=\Omega^{-1}P_{b,s}(\Omega T,\Omega^2q),
\]
\[
\widetilde s=\partial_T\mathscr P,\quad
\widetilde m=2\partial_q\mathscr P,\quad
\mathcal O_\Omega=\Omega^{-1}(\widetilde sT+\widetilde m q-\mathscr P).
\]
thermal currents 用 \(\mathscr P,\widetilde s,\widetilde m\) 替换，Weyl identity 是
\[
\tau_aT^a+K_a\theta^a-\Omega\mathcal O_\Omega=0.
\]
background \(\Omega\) 可 gauge fix 为 1，恢复一般 Carroll fluid；dynamical \(\Omega\) 则额外要求 \(\mathscr P=\widetilde sT+\widetilde m q\)。非零压力下又落到 aligned branch。令 \(y=\Omega T\)，其 equation
\[
\left.\frac d{dy}\frac{P_{b,s}(y,0)}y\right|_{y=\Omega T}=0
\]
若有正根 \(y_0\)，则 \(\Omega=y_0/T,\mathscr P=s_0T\)。这是 on-shell constitutive coincidence，off-shell theories 不相同。

| Carroll boosts | temporal Weyl | 非平凡 ideal 实现 |
|---|---|---|
| broken，\(\theta^a\) 独立 | unbroken | \(P\neq0\) branch：\(P=s_0T,T^a=0\) |
| unbroken | unbroken，无额外 scale | 无非平凡 ideal functional |
| unbroken | background \(\Omega\) | 零焓；aligned 情形 response 可非零但理想内禀动力学平凡 |
| unbroken | dynamical \(\Omega\) | \(P_s=0\)；aligned phase 平凡 |
| broken | explicit \(\kappa\) | 一般 \(P(T,q,\kappa)\)，两个 Goldstone branches |
| broken | background \(\Omega\) | 一般 compensated thermal phase，第五节极限实现其 aligned branch |
| broken | dynamical \(\Omega\) | 增加 compensator equation，非零压力时进一步 collapse |

## 4 受限 null 流体：速度约束与看不见的密度

对 tangent causal vector \(W=u_aW^a\)，
\[
W^2=h_{ab}W^aW^b\geq0,\qquad W^2\leq0
\Rightarrow W^2=0,\quad W^\mu\parallel v^\mu.
\]
因此 timelike velocity 不可能 tangent to a null hypersurface。单面 tangency 使 \(W^\flat\wedge dW^\flat|_N=0\)；要得到邻域 null foliation，需在邻域也 twistless 且 null，不能只由单面性质推出。

ideal ambient null fluid 的统一写法是
\[
T^{\mu\nu}=\widehat{\mathcal E}q^\mu q^\nu+\widehat Pg^{\mu\nu}.
\]
spontaneously/compensated null-boost 实现中 \(q=\varpi\mathsf v\)，\(\delta\varpi=-\alpha\varpi\)，\(\widehat{\mathcal E},\widehat P\) 是常数；explicit 实现中它们可依赖 \(\kappa\)。null fluid 无 rest frame。把零焓等同于 \(T_T\to0\) 还需要 parent EOS 在所有有限非零温度有正 entropy；论文明确指出特殊 EOS 可有其他极限温度。

aligned \(q|_N=\Omega v\) 时
\[
\widetilde T^a=\widehat Pv^a,\quad
\widetilde{\mathcal T}^{ab}=\widehat P h^{ab}
+\widehat{\mathcal E}\Omega^2v^av^b,\quad
\widetilde{\mathcal F}_\mu=\widehat Pv_\mu,\quad
\widetilde{\mathcal F}_a=0.
\]
注意完整 traction 未必为零，只是 tangential traction 为零。

若 \(q^\flat=\Lambda du\)，ambient measure 可写为
\[
\epsilon_M=q^\flat\wedge(\Omega^{-1}\epsilon_N).
\]
**相对 \(q^\flat\) 这个 transverse factor** 定义的 intrinsic currents 是
\[
T^a=\Omega^{-1}\widetilde T^a,\quad
\mathcal T^{ab}=\Omega^{-1}\widetilde{\mathcal T}^{ab}
\sim\Omega^{-1}\widehat Ph^{ab}.
\]
所以
\[
T^a{}_b=\Omega^{-1}\widehat P\delta^a_b,\quad
\varepsilon_C=-\Omega^{-1}\widehat P,\quad
\mathcal P_C=\Omega^{-1}\widehat P,\quad w_C=0.
\]
null energy density \(\widehat{\mathcal E}\) 完全落在响应不可见方向，无法从这些 intrinsic data 重建。

固定 \(q_\mu\) 的 variation 给 \(v_\mu\delta\tau^\mu=-\Omega^{-1}\delta\Omega\)，所以 traction pairing 变为
\[
\mathcal O_\Omega=-\Omega^{-2}\widehat P.
\]
这里 \(\Omega\) 是 background normalization field；不能额外施加 \(\widehat P=0\)。若 \(\mathsf v=fv\)，则 \(\Omega=f\varpi\)，只有 representatives 相同才有 \(\Omega=\varpi\)。

几何 geodesic equation \(q\nabla q=c_qq\) 将 conservation 写成
\[
0=\partial_\nu\widehat P+
q_\nu[\nabla_\mu(q^\mu\widehat{\mathcal E})+\widehat{\mathcal E}c_q].
\]
tangential projection 就是 \(\partial_a\widehat P=0\)，与第三节 aligned zero-temperature Ward identity 相符；但 transverse projection 仍要求
\[
\nabla_\mu(q^\mu\widehat{\mathcal E})+\widehat{\mathcal E}c_q
=\Omega^{-1}\tau^\nu\partial_\nu\widehat P.
\]
这条 equation 恰好包含 intrinsic theory 丢失的密度，说明“leaf 上闭合”远弱于“ambient theory 完全约化”。

## 5.1 null leaves 的输运源：measure 与 density 都不可省

使用与 fluid 无关的 foliation：
\[
v^\flat=\mathcal Ndu,\quad
\tau=-\mathcal N^{-1}R,\quad
R=\partial_u+\zeta^a\partial_a,\quad
\zeta^a=-\mathcal NM^a.
\]
\(\delta_\alpha\mathcal N=\alpha\mathcal N\)，\(\delta_\lambda\zeta^a=-\mathcal N\lambda^a\)。设 \(\vartheta^a=dx^a-\zeta^adu\)，则
\[
u^a_\mu dx^\mu=\vartheta^a,\quad
g=h_{ab}\vartheta^a\vartheta^b-2\mathcal Ndu\,\tau_a\vartheta^a,\quad
\sqrt{-g}=\mathcal Ne.
\]
固定 foliation/embedding 变分：
\[
\frac12\sqrt{-g}T^{\mu\nu}\delta g_{\mu\nu}
=e[-T^a\delta\tau_a+\tfrac12\mathcal T^{ab}\delta h_{ab}
+\mathcal O_\mathcal N\delta\mathcal N
-\widetilde{\mathcal F}_a\delta\zeta^a].
\]
现在相对 \(du\) 定义，而非第四节 \(q^\flat\)：
\[
T^a=\mathcal N\widetilde T^a,\quad
\mathcal T^{ab}=\mathcal N\widetilde{\mathcal T}^{ab},\quad
\mathcal O_\mathcal N=-\tau^\mu\widetilde{\mathcal F}_\mu.
\]
若改用 \(M\)，lapse response 变为
\(\mathcal O_\mathcal N+M^a\widetilde{\mathcal F}_a\)，\(M\) 的 response 是 \(\mathcal N\widetilde{\mathcal F}_a\)。source 坐标变换必须同时改变 conjugate response。

boost/Weyl identities：
\[
T^a=\mathcal N(h^{ab}\widetilde{\mathcal F}_b+v^a\mathcal O_\mathcal N),\quad
h_{ab}T^b=\mathcal Nh^b{}_a\widetilde{\mathcal F}_b,\quad
\tau_aT^a+\mathcal N\mathcal O_\mathcal N=0.
\]
定义含 lapse source 的 Ward expression
\[
\mathcal W_a=e^{-1}\partial_b(eT^b{}_a)
+T^b\partial_a\tau_b-\tfrac12\mathcal T^{bc}\partial_ah_{bc}
-\mathcal O_\mathcal N\partial_a\mathcal N.
\]
对 leaf-preserving \(\xi=\xi^a(u,x)\partial_a\)，
\[
\delta_\xi\zeta=-\partial_u\xi-[\zeta,\xi]
=-\mathfrak D_u\xi,\quad\mathfrak D_u=\partial_u+\mathcal L_\zeta.
\]
shift 是 leaf-diffeomorphism connection。对 variation 积分分部（compact support 或相应边界条件）得到 exact identity
\[
\mathcal Nu^\nu_a\nabla_\mu T^\mu{}_\nu
=\mathcal W_a+e^{-1}\mathfrak D_u(e\widetilde{\mathcal F})_a.
\]
这里 \(e\widetilde{\mathcal F}_a\) 是 weight-one covector density，明确地
\[
\mathfrak D_u(e\widetilde{\mathcal F})_a=
\partial_u(e\widetilde{\mathcal F}_a)
+\zeta^b\partial_b(e\widetilde{\mathcal F}_a)
+e\widetilde{\mathcal F}_b\partial_a\zeta^b
+e\widetilde{\mathcal F}_a\partial_b\zeta^b.
\]
漏掉最后的 density term 会得到错误 balance law。无源条件是其整体为零，而非仅 \(\widetilde{\mathcal F}_a=0\) 在一张 leaf 上。

transverse equation 仍保留：
\[
0=R^\nu\nabla_\mu T^\mu{}_\nu
=\frac1{\mathcal Ne}\partial_\mu(\mathcal Ne\,T^\mu{}_\nu R^\nu)
-\tfrac12T^{\mu\nu}\mathcal L_Rg_{\mu\nu},
\]
\[
T^\mu{}_\nu R^\nu=\mathcal O_\mathcal NR^\mu-u^\mu_a\mathcal T^{ab}\tau_b.
\]
它依赖 \(vv\) representative，不能用 intrinsic response equivalence 擅自删去。

## 5.2 crossing parent 与有限 \(B\) 的 boost field

任意 crossing causal \(W\) 决定 null direction
\[
r_W^\mu=-\frac{W^\mu}{v\cdot W}
+\frac{W^2}{2(v\cdot W)^2}v^\mu,\quad
r_W^2=0,\quad v\cdot r_W=-1.
\]
对 \(U^2=-1,B=-v\cdot U>0\)，写
\[
U=Av+B\tau+s,\quad s\cdot v=s\cdot\tau=0,\quad
A=\frac{1+s^2}{2B},\quad \widetilde\theta=s/B.
\]
于是
\[
U^\mu=\frac{v^\mu}{2B}+Br_{\widetilde\theta}^\mu,\qquad
r_{\widetilde\theta}=\tau+\widetilde\theta+\tfrac12\widetilde\theta^2v.
\]
\(\tau_a\widetilde\theta^a=0\) 来自定义，而非有限 \(B\) 下的 gauge fixing。由于 \(U\) invariant，
\[
\delta\widetilde\theta^a=-\alpha\widetilde\theta^a-\lambda^a
+(\lambda_b\widetilde\theta^b)v^a.
\]
它等于 \(\theta\) 在 gauge \(\tau\cdot\theta=0\)、residual \(\chi=\lambda\cdot\theta\) 下的变换，但有限 \(B\) 时仍由 \(U\) 决定，没有额外独立自由度。

令
\[
T^{\mu\nu}=w_TU^\mu U^\nu+p_Tg^{\mu\nu},\quad
Q=w_TB^2,\quad \rho=w_T/2-p_T,
\]
\[
\widetilde\tau_a=\tau_a+\widetilde\theta_a,\quad
\chi^a=\widetilde\theta^a+\tfrac12\widetilde\theta^2v^a.
\]
直接投影：
\[
\widetilde T^a=-\rho v^a-Q\chi^a,
\]
\[
\widetilde{\mathcal T}^{ab}=p_Th^{ab}
+\frac{w_T}{4B^2}v^av^b+w_Tv^{(a}\chi^{b)}+Q\chi^a\chi^b,
\quad
\widetilde{\mathcal F}_a=-Q\widetilde\tau_a.
\]
去掉 response-invisible \(vv\) 后
\[
\widetilde{\mathcal T}^{ab}\sim
p_Th^{ab}+w_Tv^{(a}\widetilde\theta^{b)}
+Q[\widetilde\theta^a\widetilde\theta^b+
\widetilde\theta^2v^{(a}\widetilde\theta^{b)}].
\]
mixed stress 与 lapse response：
\[
T^a{}_b=\mathcal Np_T\delta^a_b+
\mathcal N(\tfrac12w_Tv^a+Q\chi^a)\widetilde\tau_b,\quad
\mathcal O_\mathcal N=-\rho-\tfrac12Q\widetilde\theta^2.
\]
从而
\[
\mathcal W_a=e^{-1}\mathfrak D_u(eQ\widetilde\tau)_a,\quad
h_{ab}T^b=-\mathcal NQ\widetilde\theta_a.
\]
\(Q\) 直接控制开放性与 boost Ward source。

crossing null velocity 则是 \(q=B_qr_{\widetilde\theta_q}\)，没有 \(v/(2B)\) 项。设 \(Q_q=\widehat{\mathcal E}B_q^2\)，则
\[
\widetilde T^a=\widehat Pv^a-Q_q\chi_q^a,\quad
\widetilde{\mathcal T}^{ab}=\widehat Ph^{ab}+Q_q\chi_q^a\chi_q^b,
\]
\[
\widetilde{\mathcal F}_a=-Q_q\widetilde\tau_a^q,\quad
\mathcal O_\mathcal N=\widehat P-\tfrac12Q_q\widetilde\theta_q^2.
\]
null 速度本身并不意味着 intrinsic zero enthalpy；还须 aligned/confinement。\(Q_q\to0\) 得 aligned response 需其余 boost data/导数保持受控，不能同时令 \(\widetilde\theta_q\) 发散抵消小 \(Q_q\)。

## 5.3 两种无限 boost 与明确的极限次序

保留 \(\epsilon>0\)，设
\[
B=\epsilon b,\quad b>0,\quad
Q=\epsilon^2w_Tb^2.
\]
固定光滑 foliation geometry，并要求 \(b,p_T,w_T,\widetilde\theta\) 及所用 tangential/transverse derivatives 在邻域有限，\(b\) 不触零。先在有限 \(\epsilon\) 写完整 ambient equation，再投影到受限响应等价类，最后取 \(\epsilon\to0\)。不要先对 ambient stress 取有限极限，也不要把发散项当作一个无条件 subtraction counterterm。

ambient stress 的 exact 展开是
\[
T^{\mu\nu}
=\frac{w_T}{4\epsilon^2b^2}v^\mu v^\nu
+w_Tv^{(\mu}r_{\widetilde\theta}^{\nu)}
+p_Tg^{\mu\nu}
+\epsilon^2w_Tb^2r_{\widetilde\theta}^\mu r_{\widetilde\theta}^\nu.
\]

| 标度 | ambient stress | intrinsic phase |
|---|---|---|
| \(w_T=O(\epsilon^2)\)，\(w_T/(4\epsilon^2b^2)\to\widehat{\mathcal E}\) | 有限 \(\widehat{\mathcal E}vv+\widehat Pg\) | \(\widetilde\theta\) 消失，aligned null-fluid 零焓 phase |
| \(w_T\to w_{T,0}\neq0\)，其余数据受控 | \(vv/\epsilon^2\) 发散 | response quotient 有限，保留 boost field，thermal phase |

第二种标度下 \(\mathfrak D_u(e\widetilde{\mathcal F})=O(\epsilon^2)\)，因此 \(\mathcal W=0\)。其有限响应：
\[
T^a=-\varepsilon_Cv^a,\quad
\mathcal T^{ab}\sim p_Ch^{ab}+2w_Cv^{(a}\widetilde\theta^{b)},\quad
\mathcal O_\mathcal N=-\varepsilon_C/\mathcal N,
\]
\[
p_C=\mathcal Np_{T,0},\quad
\varepsilon_C=\mathcal N(w_{T,0}/2-p_{T,0}),\quad
w_C=\mathcal Nw_{T,0}/2.
\]
这是第三节的 \(u^a=-v^a\) branch，且 \(\Omega=\mathcal N^{-1}\) 为 **background** compensator。若把它提升为 dynamical variable，会额外施加 \(\varepsilon_C=0\)，改变理论。

小 traction 不自动代表小 source。一个 elementary illustration 是
\(f_\epsilon(u)=\epsilon^2\sin(u/\epsilon^2)\)：\(f_\epsilon\to0\)，但 \(\partial_uf_\epsilon\) 不趋零。这不是对论文的反例，因为它违反论文对 derivatives 的有界标度要求；它说明该要求不能省去。

## 5.4 温度平方映射、entropy 与 transverse completion

parent neutral thermodynamics：
\[
p_T=p_T(T_T),\quad s_T=p_T'(T_T)\neq0,\quad w_T=T_Ts_T.
\]
要求 limiting pressure 与 Euler relation 同时成立，
\[
p_C=\mathcal Np_T(T_T),\quad
s_C=\left.\partial_{T_C}p_C\right|_\mathcal N,\quad
T_Cs_C=w_C=\mathcal NT_Ts_T/2
\]
推出
\[
T_C\left.\frac{\partial T_T}{\partial T_C}\right|_\mathcal N=T_T/2
\Rightarrow T_C=F(\mathcal N)T_T^2.
\]
\(T_C\) weight \(+1\)、\(T_T\) weight \(0\)，以常数 \(T_\star>0\) 固定单位：
\[
\boxed{T_C=\frac{\mathcal NT_T^2}{T_\star}},\qquad
p_C(T_C,\mathcal N)=\mathcal Np_T
\left(\sqrt{\frac{T_\star T_C}{\mathcal N}}\right).
\]
因此
\[
s_C=\frac{T_\star s_T}{2T_T},\quad
\left.\partial_\mathcal Np_C\right|_{T_C}
=p_T-\tfrac12w_T=-\varepsilon_C/\mathcal N.
\]
这给出 \(dp_C=s_CdT_C+\mathcal O_\mathcal Nd\mathcal N\)。若 \(p_T=aT_T^k\)，则本笔记独立化简得到
\[
p_C=aT_\star^{k/2}\mathcal N^{1-k/2}T_C^{k/2},
\qquad \varepsilon_C=(k/2-1)p_C.
\]
\(k=2\) 恰好令 \(\mathcal O_\mathcal N=\varepsilon_C=0\)，恢复 \(p_C=aT_\star T_C\) 的 unbroken temporal Weyl phase。其他 EOS 不应被误写成 \(P=s_0T\)。

tangential Ward 的 temporal projection 为
\[
v^a\partial_a\varepsilon_C+
w_Ce^{-1}\partial_a(ev^a)+
\mathcal O_\mathcal Nv^a\partial_a\mathcal N=0.
\]
用 \(d\varepsilon_C=T_Cds_C-\mathcal O_\mathcal Nd\mathcal N\)，得到
\[
e^{-1}\partial_a(es_Cv^a)=0.
\]
按本文 time orientation，entropy current 写成 \(-s_Cv^a\)；整体负号不改变零散度。

### 发散的 ambient part 仍有方程

假设 coefficient admits even-\(\epsilon\) expansion：
\[
T^{\mu\nu}=\epsilon^{-2}A_{(-2)}v^\mu v^\nu+
[A_{(0)}v^\mu v^\nu+w_Tv^{(\mu}r^{\nu)}+p_Tg^{\mu\nu}]
+O(\epsilon^2),\quad A_{(-2)}=\frac{w_T}{4b^2}.
\]
因为 \(R(u)=1,v(u)=0\)，\([R,v]\) tangent，故
\(v^\mu v^\nu\mathcal L_Rg_{\mu\nu}=0\)。leading transverse equation 是
\[
e^{-1}\partial_a(e\mathcal N^2A_{(-2)}v^a)=0.
\]
使用
\[
\mathcal N^2A_{(-2)}
=\frac{T_\star}{2}s_C\left(\frac{T_C}{bT_T}\right)^2
\]
以及 entropy conservation，得到
\[
\mathcal L_v\left(\frac{T_C}{bT_T}\right)=0.
\]
这在 \(s_C\neq0\)、正温度/非零 \(b\) 的 branch 上给出 ambient amplitude 的 transport 条件。可局部选择
\(b=\mathcal NT_T/T_\star\)，使该 equation 与 entropy equation 一致；不是说 \(b\) 任意。

finite transverse equation：
\[
e^{-1}\partial_a(\mathcal N^2eA_{(0)}v^a)
=-\mathcal NR_\nu\nabla_\mu
(w_Tv^{(\mu}r^{\nu)}+p_Tg^{\mu\nu}).
\]
除以 leading conserved density 可写成
\[
\mathcal L_v(A_{(0)}/A_{(-2)})
=-\frac{R_\nu\nabla_\mu
(w_Tv^{(\mu}r^{\nu)}+p_Tg^{\mu\nu})}
{\mathcal NA_{(-2)}}.
\]
它是沿 generator 求 \(A_{(0)}\) 的 transport ODE。局部、允许选择 ambient 初值时，不额外限制已闭合的 intrinsic data。**这不是任意 global boundary/periodicity 条件下的 lifting theorem**；闭合轨道或指定两端数据可能产生 compatibility condition。论文也未给出所有高阶 \(\epsilon\) 方程的收敛解族或 backreacted Einstein solutions。其 autonomy 应理解为本次 ideal、局部 formal limit 的 Ward/constitutive closure。

### boost field 何时成为独立 Goldstone

有限 \(\epsilon\) 时
\[
U^\mu=\frac{v^\mu}{2\epsilon b}
+\epsilon b(\tau^\mu+\widetilde\theta^\mu
+\tfrac12\widetilde\theta^2v^\mu).
\]
\(\widetilde\theta\) 来自 subleading velocity；与 leading divergence 的乘积却保留有限 mixed stress。极限后 intrinsic equations 不再依赖 \(U\)，可独立保留 \(\theta^a\)。新增
\[
\delta_\chi\theta^a=\chi v^a
\]
只改变
\[
\delta_\chi\mathcal T^{ab}=2w_C\chi v^av^b,
\quad
\delta_\chi T^a=\delta_\chi T^a{}_b=
\delta_\chi\mathcal O_\mathcal N=0.
\]
所以这是 response-equivalence 意义上的 emergent redundancy。选 \(\tau_a\theta^a=0\) 才回到 ambient inherited representative。它不能倒推成有限 \(B\) parent theory 原来就有同一个 Stueckelberg symmetry。

## 公式账本、依赖关系与区域理论中的可复用对象

| 原文位置 | 关键对象 | 使用前提 / 后续用途 |
|---|---|---|
| (2.20)–(2.22) | \(u^a_\mu\)、completeness | 固定 rigging；所有 projections |
| (2.44)–(2.63) | \(K,G,\omega,\gamma\) | null embedding；单面 conservation 与 measure |
| (2.69)–(2.74) | \(\delta g\) pairing、\(vv\) ambiguity | fixed null embedding；热极限有限性的入口 |
| (2.90),(2.93) | 单面 tangential/transverse equations | arbitrary symmetric ambient stress；完整方程不能只留一半 |
| (3.20)–(3.35) | hydrostatics、homogeneity、collapsed branch | unbroken temporal Weyl；\(P\neq0\) 时 aligned |
| (3.40)–(3.60) | zero-temperature functionals | background/dynamical \(\Omega\) 与 \(\kappa\) 分开 |
| 3.3 | \(\mathscr P,\mathcal O_\Omega\) | fifth-section matching 的 thermodynamic target |
| (4.24)–(4.32) | confined responses、zero enthalpy | 相对 \(q^\flat\) 的 normalization |
| (5.13)–(5.30) | foliation responses、source、transverse equation | 相对 \(du\) 的 normalization，density Lie derivative |
| (5.38)–(5.51) | exact timelike decomposition/projection | \(U^2=-1,B>0\)，有限 \(B\) |
| (5.61)–(5.70) | two boost scalings | \(\epsilon\) 邻域和导数受控 |
| (5.71)–(5.89) | \(T_C\propto\mathcal NT_T^2\)、entropy | neutral smooth EOS、\(s_T\neq0\) |
| (5.90)–(5.106) | transverse completion 与 Goldstone | formal even expansion、局部 transport、quotient response |

总推导链是
\[
\text{embedding+rigging}\to
\text{variation pairing+annihilator}\to
\text{measure-normalized responses}\to
\text{tangential/transverse balance}\to
\text{controlled boost limit}\to
\text{thermal EOS+Goldstone}.
\]
若先从“null 面有 Carroll symmetry”直接跳到自主流体，就跳过了真正负责 closure 的 traction equation。

对区域 CPS 可立即复用的是 \(\widetilde{\mathcal F}_\mu\delta\tau^\mu\)、\(\widetilde{\mathcal F}_a\delta\zeta^a\) 的 source-response pairing，以及“允许变分的 annihilator 不等于环境自由度消失”的例子。还需要另外建立 action 的边界项、presymplectic current、可积 Hamiltonian、corner/embedding variation，才能讨论 CPS 的 reduction。这里没有 \(\delta X\)，故没有 shape equation；不能把 \(M^a\) 自行解释成 embedding edge mode。

## 独立检查与限制

**Verified / Checked**

- Mathematica，四维 null frame \(g=2du\,dt+dx^2+dy^2\)：任意 symmetric stress 与所有满足 \(\delta g_{tt}=0\) 的 metric variations，验证 \(\delta g\) 重构、三组 response pairing、projector completeness、boost/Weyl projection identities；所有 residual 为零。
- xAct components，非平直三维 family
  \[
  ds^2=2\mathcal N(u,t,x)du\,dt+
  a(u,t,x)^2[dx-z(u,t,x)du]^2,
  \quad \mathcal N,a>0,
  \]
  任意 smooth \(\mathcal N,a,z\) 及任意六个 symmetric \(T^{\mu\nu}(u,t,x)\) 分量。独立从 Levi–Civita 算出 induced \(\gamma,K,G,\omega\)，验证 \(Dh,Dv\)、显式 \(\gamma\)、\(D_ae=-\omega_ae\)、单面 tangential/transverse projection、foliation density Ward identity、transverse current decomposition；全部 residual 为零。这是有非零 shift/warp/derivatives 的 exact family check，不是全维数抽象 CAS 证明。
- Mathematica：reference-splitting \(r^2=2\bar\Phi\)、\(\bar u r=0\)、\(\bar h\)；Goldstone \(\check\tau,\check h\) 的 boost/\(\chi\) invariance 与 inverse identities，全部为零。
- Mathematica：固定 thermal vector 的 hydrostatic variation，独立从 \(\delta T=-Tu\cdot\delta\check\tau\)、\(\delta q=u^au^b\delta h_{ab}-2q\,u\cdot\delta\check\tau\) 计算三组 ideal currents；homogeneity 与 compensator derivative identities residual 为零。
- Mathematica：\(r_{\widetilde\theta}^2=0,U^2=-1\)，exact timelike/null crossing energy、momentum-stress、traction、lapse response；two regulated stress limits；全部 residual 为零。
- Mathematica：一般 differentiable \(p_T\) 的 Euler relation、\(\partial_\mathcal Np_C\)、\(T_C\) ODE、leading transverse/entropy coefficient matching；power EOS 得 \(\varepsilon_C/p_C=(k-2)/2\)。
- xAct：上述非平直 family 的任意 \(A(u,t,x)v^\mu v^\nu\) stress，tangential divergence projection 恒为零，transverse projection 精确等于 \((\mathcal Ne)^{-1}\partial_a(e\mathcal N^2Av^a)\)，并验证 \(vv\mathcal L_Rg=0\)。这解释为何该项对 intrinsic conservation 不可见，却仍受 transverse equation 约束。
- PDF 物理页 9、12、14、16、19、23、26、28、31、37、43、45、48、50、53、55、56、57 已渲染并视觉核对关键公式/标签。提取器有 font-type warning，渲染可读且 TeX 可用，不构成 blocker。

**Assumptions**

固定 smooth null embedding、指定 rigging/normalization、局部 oriented foliation；neutral ideal hydrodynamics；受限 variation 保持 null；source identities 的积分分部取 compact support 或适当 boundary conditions。thermal branch \(B=\epsilon b>0,T_T,T_C,T_\star,\mathcal N>0,w_{T,0}\neq0,s_T\neq0\)，邻域 derivatives 受控；finite transverse completion 假设 even-\(\epsilon\) expansion。

**Failed**

本次独立检查未发现核心投影/热极限公式的不可修复矛盾。首轮 geometry 脚本把 metric function 名称 \(a\) 与 Table index \(a\) 重用，出现 \(1[u,t,x]\) 等伪表达式；更名后全部 residual 为零，属于测试脚本缺陷，未作为论文失败。一般性结论仍限于下面列出的证据范围。

**Source-derived / Not independently verified**

完整 phase classification 的物理完备性及所依赖外部 effective-action construction；任意维数的抽象 \(G\)-structure intrinsic-torsion 分类；thermal Goldstone 的微观自发破缺解释；所有阶导数/viscosity、entropy production、quantum anomalies；global ambient lifting、渐近展开收敛与 backreaction。未证明此奇异极限对 dynamical gravity 保持 finite action/energy；没有用它推出 null infinity Bondi charges 或 membrane transport coefficients。

**Blocked**

没有未解决的检索或工具阻塞。\(p_T\) 未指定数值 EOS，所以不做无意义的 universal sound/stability 数值宣称；global boundary data 和 higher-order equations 不在源文给出的构造内。CAS 源码与结果在本次外部临时目录 H4 的 frame、geometry-corrected、single-surface、thermodynamics、transverse、limits 文件中，未向 vault 添加 PDF、TeX 或计算附件。

## 第六节的未来工作应怎样理解

null infinity 应用还需考虑 conformal completion 对 spatial metric 的 rescaling，它不是本文 temporal Weyl。gravitational news/connection、horizon membrane flux、first-order viscosity/entropy production、moving null embedding 的 shape equations 都是提出的后续问题，本文没有算出这些结果。可继续研究的具体入口是：在一个给定 null-boundary action 中识别 traction 的共轭变量，并检查投影响应的 closure 是否也能在 presymplectic 层面成立。
