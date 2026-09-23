# Bulk、边界响应与 source release：实际 BV 比较的次序

2026-09-21。

**结果。** 从原 regional CS fields 构造一个满足全部区域方程、共同 source 为零而 response mismatch 非零的反例。这排除了把 [SC](source_cap_bv_decomposition.md) 的 source antifield 直接解释成 unreleased smooth bulk antifield 的变量替换。随后由原边界变分引入 release resolution，保留接口 antifield mismatch，给出到 SC 全部八类 BV coordinates 的显式连续 Q-map。原 ghost action 也直接产生相应 source terms，但带有必须保留的 cap term。

**完成范围。** 新结果是 actual off-shell cochain comparison 和 action-level ghost accounting。它不是 symplectic factorization 或完整 quantum BV pushforward。原 joint source domain、fields/arrows、stabilizers 及剩余 bulk/corner fields 全部保留；没有用 cohomology 的计算模型替换物理场对象。

## 1. 实际 on-shell 反例：bulk 方程没有施加 response matching

令 D 为 x²+y²≤1，γ 为 x=0、−1≤y≤1，方向从 P=(0,−1) 到 Q=(0,1)。D₁ 在左，D₂ 在右，故 ∂D₁=O₁+γ、∂D₂=O₂−γ。取
$$
 \phi_1=1-x^2-y^2,\qquad \phi_2=0,\qquad
 A_i=d_D\phi_i,\qquad A_{t,i}=q_i=0 .
 \tag{1.1}
$$
这些 fields 时间无关，dA_i=0。φ₁ 在真实外圆为零，其 tangential derivative 为零，所以 At=va_s 对任意 v>0 成立。端点、temporal caps 和原 joint source 条件均相容。

它们尚未满足 released interface equation：
$$
 r|_\gamma=1-y^2,\qquad
 p=\kappa(a_{1,y}-a_{2,y})=-2\kappa y .
 \tag{1.2}
$$
p 的积分为零，仍不是零函数。实际允许的 proper test χ=y(1−y²) 给
$$
 \mu_\chi=\int_{-1}^1\chi p\,dy=-\frac{8\kappa}{15}\ne0 .
 \tag{1.3}
$$
因此，不是 endpoint 值或非平凡 winding 造成这个反例。共同 source 的 variation 正好检测到它。

在 unreleased regional BV product 中，令 ghosts 和 antifields 为零。(1.1) 使 Qc=0、QA=dc=0、QA⁺=dA=0、Qc⁺=dA⁺=0，因此该点的整个 Q-vector 为零。若存在从这个 Q-space 到 SC 的 Q-map，且保留实际 response p，则它必须把该点映到 Q_SC=0 的点。但 SC 要求 Q_SC b=−p，而 (1.2) 非零，矛盾。

**BS1 的确切结论。** 不存在覆盖这个 unreleased configuration、又保留 response 的上述 Q-map；尤其不能把 SC 宣称为 unreleased bulk complex 的直接变量变换或独立 contractible factor。这个论证不排除 BV–BFV boundary-state pairing、derived release 或 quantum pushforward——它们是不同类型的操作。

## 2. 为什么 smooth bulk cotangent 本身不够

先令 q₁=q₂=q，仍不施加 p=0。原 regional actions 的总 source variation 是
$$
 \delta_q(S_1+S_2)=-\int_{I\times\gamma}p\,\delta q
 \quad\text{on regional solutions}.
 \tag{2.1}
$$
这份 boundary covector 一般不能表示为 smooth bulk density 与 δAt 的积分：若某 smooth density 表示它，对任意 compactly supported interior δAt 测试必迫使该 density 在内部为零；smoothness 再令它处处为零，而 (1.3) 给非零 boundary pairing。

因此，field coordinates 可以用 extension 写成 At=At⁰+Eq，并不意味着只含 smooth bulk antifields 的弱 cotangent space 已分成独立的 bulk 与 source cotangents。完整 continuous dual 包括 boundary-supported distributions；需要声明哪一类边界 covectors 被加入。

一个直接计算同样排除把 bulk A⁺ 的加权积分误当 release antifield。对 E_iχ|γ=χ、E_iχ|O_i=0，
$$
 \kappa\sum_i\int_{D_i}E_i\chi\,d_Da_i
 =\mu_\chi-\kappa\sum_i\int_{D_i}d_D(E_i\chi)\wedge a_i .
 \tag{2.2}
$$
在 (1.1) 中左侧为零，第二个 bulk 项恰等于 μχ，不能删掉。具体取 E₁χ=y(1−x²−y²)，积分给 −8κ/15。由此 Q(κ∑∫E_iχ A_i⁺|D_i)=0，而不是 −μχ。

## 3. 从真实 charge 和 source variation 引入 release resolution

以下 γ 重标为 [0,1]，所有 densities 按坐标运输。先在原 regional Q-space 中识别共同 q 和共同 proper ghost χ=c_i|γ，χ(0)=χ(1)=0；外墙 ghost 为零。尚不匹配 tangential a 或 A⁺。

将原 BV fields 分解为
$$
 A_i=A_{t,i}dt+a_i,\qquad
 A_i^+=B_i+dt\wedge\eta_i,\qquad
 c_i^+=dt\wedge C_i .
$$
B_i、C_i 是 spatial two-forms，η_i 是 spatial one-form。κ 的 normalization 仍取原 CS convention。逐分量的原 Q 为
$$
 QB_i=d_Da_i,\qquad
 Q\eta_i=\dot a_i-d_DA_{t,i},\qquad
 QC_i=\dot B_i-d_D\eta_i .
 \tag{3.1}
$$
定义实际 interface jumps
$$
 p=\kappa(a_{1,s}-a_{2,s}),\qquad
 N=\kappa(\eta_{1,s}-\eta_{2,s}).
 \tag{3.2}
$$
共同 ghost 和 q 给
$$
 Qp=0,\qquad QN=\dot p .
 \tag{3.3}
$$
这是原 restriction maps 的计算，N 不是为了得到 nilpotency 任意补入的符号。

在 spatial-flat CPS 上，共同 proper action 满足
ι_Xχ(Ω₁+Ω₂)=−δμχ，μχ=∫χp。
两片 cut charge 的 central terms 分别为 ±κ∫χdψ，故对角 action 的 constraints 彼此 commute。它们由原 action/CPS 决定，而非从 SC 反向定义。非零的单片 cocycle 在 (1.3) 的多项式 tests 上也被核对。

释放 q 时，其 stationarity equation 是 p=0。增加该 source 的 degree −1 boundary covector β，并为共同 ghost 的 cotangent 增加 degree −2 coordinate ζ。相应 resolution 为
$$
 Q\beta=-p,\qquad Q\zeta=\dot\beta+N .
 \tag{3.4}
$$
β、ζ 分别 odd、even；它们属于辅助 BV/Noether data，没有增加 ghost-zero point oscillator。全部原 fields 和 gauge arrows 仍在对象中。
由 (3.3)，Q²ζ=−dot p+dot p=0。若只加 Qζ=dot β，则在一般 off-shell p 上 Q²ζ=−dot p，直接失败。

(3.4) 的来源也可从 source-covariant action 看出：新 β 与 δq 配对，并加入 β dot χ；共同 ghost 的变分同时读出 seam antifield jump N。因此不是把一个未匹配的 physical mode 宣称为已存在的 quartet，而是对实际 release equation 及其 Noether relation 作 resolution。

这一步确实改变 observable complex。有限原型
Q_pre=c∂x 在 R[x,p]⊗Λ(c) 上有 H⁰=R[p]；加入 b 后 Q_post=c∂x−p∂b，使 p=−Q_post b。它不应被叫作原 unreleased complex 的 quasi-isomorphism。这是计算模型的辨别，不是对原 physical fields 作 quotient。

## 4. 原区域数据到 SC 的全部 BV coordinates

选 time-independent neat collars 给连续 extension E_i:E_s→C∞(D_i)，在 γ 上为 identity、在 O_i 上为零。可在 collar (s,n) 取 E_i h=ρ(n)h(s)，ρ 在 collar 外端为零，保留两侧 corners。相应 integral adjoints 将 smooth densities 送到 γ 上 smooth densities；不使用任意 distributional inverse。

用实际 integral pairing 定义
$$
 \mathcal B=\kappa\sum_i E_i^*B_i,\qquad
 \mathcal C=\kappa\sum_i E_i^*C_i,\qquad
 \mathcal F=\kappa\sum_i E_i^*(d_Da_i),
$$
$$
 \int_\gamma\mathcal X h
       =\kappa\sum_i\int_{D_i}\eta_i\wedge d_D(E_i h),
 \qquad h\in E_s .
 \tag{4.1}
$$
𝓑、𝓧 为 degree −1，𝓒 为 −2，𝓕 为0。
h 的端点为零，故将 h_s 分部积分不会产生额外 endpoint distributions，𝓧 仍 smooth。

由 Stokes、共同 q 和相反 seam orientations，
$$
 Q\mathcal B=\mathcal F,\qquad
 Q\mathcal X=\dot{\mathcal F}-\dot p,\qquad
 Q\mathcal C=\dot{\mathcal B}-\mathcal X-N .
 \tag{4.2}
$$
第二式中的 ∑∫dAt_i∧d(E_i h) 变为两侧相反的 ∫γq dh，恰好相消；第一、第三式不能提前使用 spatial flatness。

定义 spatial endpoint interpolation Lf=(1−s)f(0)+sf(1)，P=1−L，以及
$$
 H_{\rm rel}g(s)=\int_0^s g(\sigma)d\sigma
                    -s\int_0^1g(\sigma)d\sigma .
$$
先从 tangential fields 直接取
$$
 e(s)=\frac12\int_0^s(a_{1,s}+a_{2,s})d\sigma,\qquad
 x=Pe,\qquad u=Pq,\qquad c=\chi .
 \tag{4.3}
$$
这不需要预先令 d_Da_i=0。在 spatial-flat 支撑上，它与 WH 的 based primitives 和 SC 的 endpoint reference choice 一致。其余 endpoint data 仍作为 Y 保留。

SC 的四种 antifields 现在有实际表达式：
$$
 b_{\rm SC}=\beta,\qquad
 x_{\rm SC}^+=\mathcal X-\dot{\mathcal B},\qquad
 c_{\rm SC}^+=\zeta+\mathcal C,\qquad
 p_{\rm SC}^+=H_{\rm rel}\!\left(\frac{\eta_{1,s}+\eta_{2,s}}2\right).
 \tag{4.4}
$$
所有坐标的 Q 逐项给
$$
 \begin{array}{llll}
 Qx=c,&Qu=\dot c,&Qp=0,&Qc=0,\\
 Qx_{\rm SC}^+=-\dot p,&Qb_{\rm SC}=-p,&
 Qc_{\rm SC}^+=-x_{\rm SC}^++\dot b_{\rm SC},&
 Qp_{\rm SC}^+=\dot x-u .
 \end{array}
 \tag{4.5}
$$
最后一式来自
H_rel ∂s(dot e−q)=P(dot e−q)。
因此 (4.3)–(4.4) 是从已识别 q/ghost 并作 release resolution 的原区域数据，到 SC 的实际 off-shell continuous Q-map；不只是另写一份同形的 source action。

其结构是
$$
 \mathcal F_{\rm regional}^{q,\chi}
 \ \xleftarrow{\ \mathrm{forget}\ \beta,\zeta\ }
 \mathcal F_{\rm release}
 \ \xrightarrow{\ \Phi\ }
 \mathcal F_{\rm SC}.
 \tag{4.6}
$$
左箭头不声称 quasi-isomorphism。右箭头目前证明的是 Q-intertwining；它的纤维、完整 pairing、量子插入与 determinant 仍须分析。只读该图不能得出 full quantum equivalence。

## 5. Ghost action 的实际展开与不能省掉的 cap

这里固定 coefficients-left 的 component order：Grassmann coefficients 反交换，spacetime wedge 使用 form-degree signs。所读出的 canonical covectors 为
κB（对 At）、−κη_y（对 a_x）、κη_x（对 a_y）、κC（对 c）。由 action 的 left odd variation 读出的 gauge/antifield equations与 (3.1) 和 QA=dc 一致；不能将此 component calculation 与未展开的 superfield wedge 随意混用。

原 symmetric ghost action 的 temporal/spatial 展开为
$$
 S_{\rm gh}^{\rm sym}
 =\frac\kappa2\sum_i\int_I dt\int_{D_i}
       \bigl(B_i\dot c_i+c_i\dot B_i
                      +\eta_i\wedge d_Dc_i-c_i d_D\eta_i\bigr).
$$
由于 c_i dot B_i=−dot B_i c_i，
$$
 S_{\rm gh}^{\rm sym}
 =S_{\rm gh}^{\rm can}
 -\frac\kappa2\left[\sum_i\int_{D_i}B_i c_i\right]_0^1
 -\frac\kappa2\sum_i\int_I dt\int_{\partial D_i}c_i\eta_i ,
 \tag{5.1}
$$
$$
 S_{\rm gh}^{\rm can}
 =\kappa\sum_i\int_I dt\int_{D_i}
                 (B_i\dot c_i+\eta_i\wedge d_Dc_i).
$$
Sage 以独立 odd coefficients 核对了完整 local divergence identity。选择 canonical ghost frame 时要运输 (5.1) 的 boundary potential；side term 在 N 尚未匹配时不能删掉。

在该 frame 写 c_i=ĉ_i+E_iχ，ĉ_i 在完整 spatial boundary 上为零。加入 source-covariant term ∫β dot χ 后，与共同 ghost 有关的 action 恰为
$$
 \int_I dt\int_\gamma
     \bigl[\mathcal X\chi+(\mathcal B+\beta)\dot\chi\bigr]
 =\int_I dt\int_\gamma
     \bigl[x_{\rm SC}^+\chi+b_{\rm SC}\dot\chi\bigr]
                  +\left[\int_\gamma\mathcal B\chi\right]_0^1 .
 \tag{5.2}
$$
其余 terms 是原 ĉ_i sector，并非被删去。右侧是 SC 的实际 ghost action 加 cap term。取 𝓑=t bar θ、χ=θ（再乘合法 spatial tests），最后一项为非零 bar θθ；忽略它会改变 action。

与共同 source 直接配对的 canonical covector 是
$$
 b_{\rm can}=\beta+\mathcal B,\qquad
 Qb_{\rm can}=\mathcal F-p .
 \tag{5.3}
$$
这也直接等于原 physical action 对 q 的 derivative：bulk curvature contribution 加 seam response。SC 的 b=β 与 b_can 不同。把 𝓕、𝓑 连同其 cap pairing 分离，是后续 spatial BV pushforward 必须实际完成的工作；不能仅凭 (4.5) 就赋予 Φ 一个尚未证明的 symplectic 性质。

## 6. 修订后的完整比较路线

现在可区分三件已有实际内容的工作：

- 原区域作用量给 p 的 source variation 和 first-class diagonal charge；
- release resolution 保留 p、N 及其 Noether relation，产生 (3.4)；
- 原区域 projections (4.1) 与 trace primitives 给 SC 的全部 Q-coordinates，ghost terms 精确到保留的 cap functional。

量子比较仍应从独立 regional states 出发，执行带完整 boundary operators 的 interface pairing，再作必要的 residual pushforward；不是要求原 unreleased field complex 自己变成 SC。CMR 的 [§2.3 与 §3.6](https://arxiv.org/html/1507.01221v2) 将 boundary operator、mQME、state pairing 和 residual integration 分别列为结构资料；这一框架与上述类型区分相容，但没有替我们证明此 open-chord 的具体积分。

下一步须在同一 actual joint domain 上，给 Φ 的 retained sector、相对 odd pairing 与其 cap correction；从空间 curvature/ghost sectors 实际形成 normalized BV pushforward，验证它连同 boundary pairing 产生 SC/WH 的 state，而不遗漏 𝓕、N 或 boundary-supported covectors。G1–G6 继续按原范围验收。

**BS1：** actual unreleased solution 给 Q-fixed-point obstruction；smooth bulk cotangent 也不能代表非零 pure boundary response。

**BS2：** action-derived release resolution (3.4) 与连续 projections (4.1)–(4.4) 给 actual off-shell Q-map，包含 SC 全部 coordinates。

**BS3：** 原 CS ghost action 在声明的 component frame 中精确产生 SC ghost terms与(5.1)–(5.2)的 boundary/cap corrections；(5.3)保留 curvature 而不宣称 canonical factorization。

**Verified:** 13项 Mathematica、17项 Sage、3项 xAct/xTras 最终检查通过，见 [检查与反例记录](checks/bulk_source_release_verification.md)。一般 no-go、连续性和 Q-map 由正文解析证明承担。

**Assumptions:** 原 source-free trivial U(1) disk/chord，真实 chiral wall，平滑 joint domain；共同 q 和共同 endpoint-zero ghost；固定 time-independent neat extensions；明确增加 source/ghost boundary covectors及其 resolution，保留所有原 fields/arrows。

**Not verified:** release resolution 与完整严格 matching 的全域 equivalence、Φ 的 symplectic/BV fiber decomposition、完整 quantum state/pushforward、所有 mixed local insertions、determinant/anomaly 和 G1–G6 的其他剩余项。
