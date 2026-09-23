# Proper cut quartet：完整 BV 微分、局域插入与归一化积分

2026-09-21。

**结果。** 在原 open chord 的实际 endpoint-zero proper-history 空间上，为 WH2 留下的 proper fiber 构造包含全部 antifields 的自由 BV quartet。给出保持自由 temporal caps 的连续双基底、量子微分的显式 Gaussian conjugation、包含局域多项式的重整化相容族、实际 Fourier/Berezin pushforward 与连续 cochain contraction。指定的辅助 Wick 乘积和有限次积分也相容。

**范围。** 这是该 proper fiber 的 canonical minimal/nonminimal BV 补全。WH2 只在 physical phase 层完成 source release；原 regional bulk/source/corner BV complex 在全 cochain 层是否分解出本块，仍须证明。本文不把 QB 的一般 residual pair 自动改名为 contractible quartet，不删除原场、规范箭头或稳定子，也不声称完成了完整 regional quantum state。

## 1. 实际 proper 空间与四组配对

把有限 time interval 和 chord 坐标各自重标到 [0,1]，密度和对偶场随坐标运输。令
$$
 E=\{\chi\in C^\infty([0,1]^2):\chi(t,0)=\chi(t,1)=0\},
 \qquad F=C^\infty([0,1]^2).
 \tag{1.1}
$$
E 是 [WH](physical_wall_and_caps.md) 的共同 proper parameter/history fiber；时间两端没有附加条件。F 与 E 以普通积分配对，非退化但不是将 F 认作 E 的全部 distributional dual。

| coordinate | ghost degree | parity | space |
|---|---:|---|---|
| χ, c | 0, 1 | even, odd | E |
| bar c, B | −1, 0 | odd, even | F |
| χ⁺, c⁺ | −1, −2 | odd, even | F |
| bar c⁺, B⁺ | 0, −1 | even, odd | E |

将 canonical even/odd pairs 按
(χ,χ⁺)、(c⁺,c)、(bar c⁺,bar c)、(B,B⁺) 排列；odd derivatives 一律从左作用。后文有限维 BV Laplacian 对每个这样的 pair 是 ∂even∂odd，固定了全部符号。

从 Qχ=c、Qbar c=B 得到 minimal/nonminimal action
$$
 S_0=\int(\chi^+c+\bar c^+B).
$$
取实际 gauge-fixing fermion Ψ=∫bar c χ。对应 canonical shift 为
χ⁺↦χ⁺−bar c、bar c⁺↦bar c⁺+χ，其余不变；Berezinian 为1。新 action 为
$$
 S_\Psi=\int(\chi^+c+\bar c^+B+\chi B-\bar c c).
 \tag{1.2}
$$
在 antifields=0 的 Lagrangian 上，正是 WH 的 Bχ−bar c c。这里的 gauge fixing 是量子积分资料；没有把 classical field object 换成 quotient。

定义由 (1.2) 产生的 BV differential：
$$
 \begin{array}{llll}
 Q_\Psi\chi=c,&Q_\Psi c=0,&Q_\Psi\bar c=B,&Q_\Psi B=0,\\
 Q_\Psi\chi^+=B,&Q_\Psi c^+=-\chi^++\bar c,&
 Q_\Psi\bar c^+=-c,&Q_\Psi B^+=\bar c^++\chi .
 \end{array}
 \tag{1.3}
$$
它逐项保持 (1.1) 的空间与实际 endpoint 条件；Q²=0。Action 没有时空导数，故这个辅助块不产生新的 cap flux。原 bulk/source 的 cap flux 必须在其自身构造中处理，不能借此推论其消失。

## 2. 不附加 cap jet 条件的连续基底

普通 Dirichlet heat smoothing 会附加偶数阶 spatial endpoint jet 条件；例如 s(1−s) 的二阶导数在端点为−2，不能在 C² 中由正 heat time 的齐次 Dirichlet 解逼近。Neumann heat smoothing 在 temporal caps 上令一阶导数为0，也不能在 C¹ 中逼近 t。它们可用于不同拓扑或不同域，但不能无说明地替代 (1.1)。

取 shifted orthonormal Legendre polynomials
$$
 e_n(s)=\sqrt{2n+1}\,P_n(2s-1),\qquad
 v_n(s)=\int_0^s e_n(u)\,du,\quad
 w_n(s)=-e_n'(s),\qquad n\ge1.
 \tag{2.1}
$$
v_n 两端为零，而 w_n 光滑且不要求两端为零。分部积分给
$$
 \int_0^1v_n w_\ell\,ds=\delta_{n\ell}.
 \tag{2.2}
$$
再取
$$
 U_{mn}(t,s)=e_m(t)v_n(s),\qquad
 V_{mn}(t,s)=e_m(t)w_n(s),\quad m\ge0,\ n\ge1 .
 \tag{2.3}
$$
E 使用 U，F 使用 V；每个 conjugate pair 的 coefficient 因而真正 canonical。

**连续完备性的证明。** 算子 L=−∂s[s(1−s)∂s] 的 e_n eigenvalue 为 n(n+1)。对任意 smooth function 反复分部积分时，s(1−s) 消去 boundary terms，因此 Legendre coefficients 快速衰减，不要求函数满足额外端点条件。e_n 的任意固定阶导数只有 polynomial growth，故快速衰减系数反过来给 C∞ 收敛。

对 χ∈E 展开 ∂sχ；其常数 coefficient 为 χ(1)−χ(0)=0，逐项积分便得到 U expansion。对 p∈F，取 smooth primitive P(s)=∫₀ˢp；由
∫pv_n=−∫Pe_n，得到 p=∑(∫pv_n)w_n，也在 C∞ 收敛。时间方向用完整 Legendre basis，不固定 cap 值或导数。上述积分和导数估计也给连续正反映射。

因此两边都连续等价于 rapidly decreasing coefficient sequences。原积分配对是绝对收敛的 coefficient pairing。取有限矩形 Λ={0≤m≤M,1≤n≤N} 并同步投影全部 quartet coordinates，得到与 QΨ 相容的连续 finite-rank regularization，随 M,N 增大在原 C∞ 域收敛。它不定义原区域，只用于已定义量子积分的计算。

## 3. 全部 antifields 上的量子微分

以下先取任意有限 Λ。用 a 代表 (m,n)，定义
$$
 \Delta_\Lambda=\sum_{a\in\Lambda}
 \left(
 \partial_{\chi_a}\partial_{\chi_a^+}
 +\partial_{c_a^+}\partial_{c_a}
 +\partial_{\bar c_a^+}\partial_{\bar c_a}
 +\partial_{B_a}\partial_{B_a^+}\right),
 \tag{3.1}
$$
$$
 R_\Lambda=-\sum_{a\in\Lambda}
 \left(\partial_{\chi_a}\partial_{B_a}
              +\partial_{c_a}\partial_{\bar c_a}\right).
 \tag{3.2}
$$
R 是 degree-zero Gaussian contraction；不能把它与 odd Δ 混同。由 (1.3) 逐项交换得到
$$
 [Q_\Psi,R_\Lambda]=\Delta_\Lambda,\quad
 [R_\Lambda,\Delta_\Lambda]=0,\quad
 Q_\Psi\Delta_\Lambda+\Delta_\Lambda Q_\Psi=0,\quad
 \Delta_\Lambda^2=0 .
 \tag{3.3}
$$
例如 Q 与 R 的两组 χ/bar c mixed derivatives 相消；如果 bosonic 与 ghost 使用不相容的 pair cutoff，这个抵消不能直接沿用。

取 formal degree-zero parameter τ，Lorentzian integral 对应 τ=−iħ。令
$$
 D_\Lambda=Q_\Psi+\tau\Delta_\Lambda,\qquad
 N_\Lambda=e^{-\tau R_\Lambda}.
$$
则
$$
 D_\Lambda=N_\Lambda Q_\Psi N_\Lambda^{-1},
 \qquad D_\Lambda^2=0.
 \tag{3.4}
$$
R 降低 polynomial degree 2，故每个 finite-degree polynomial 上的 exponent 实际终止；对 formal τ series 则逐 coefficient 有定义。Finite truncation 的 SΨ 满足
{SΨ,SΨ}=0、ΔΛSΨ=0，所以其 finite Gaussian BV state 确实满足 QME。这是本 quartet 的全部 antifield equation，不仅是 physical-sector Ward identity。

## 4. 实际 Gaussian/Berezin 积分与 cochain contraction

对一个 canonical pair，按 WH 的约定用
dχ dB/(2πħ) 的 Fourier normalization 和 iħ∂c∂bar c 的 odd normalization。SΨ 在 Lagrangian 上等于 χB−bar c c，直接积分给
$$
 \langle1\rangle=1,\qquad
 \langle\chi^pB^q\rangle
   =\delta_{pq}\,p!(-\tau)^p,\qquad
 \langle\bar c c\rangle=-\tau .
 \tag{4.1}
$$
普通 moments 可由 δ 的 derivatives 计算；odd moment 来自完整非零 Berezin exponential。它们独立确定 Wick contraction (3.2)。

令 ε₀ 为全部 auxiliary coordinates 取零，但保留任何物理 coefficient。Finite-mode 插入的真正 Gaussian pushforward 是
$$
 \Pi_\Lambda=\epsilon_0e^{\tau R_\Lambda},\qquad
 \Pi_\Lambda D_\Lambda=0,\qquad
 \Pi_\Lambda1=1 .
 \tag{4.2}
$$
对于含未积分 modes 的函数，这个公式先仅给 finite Gaussian operation 加剩余 coordinates 的零截面 evaluation；其 continuum 解释在 §5 通过相容族定义，不假装已经存在无限维平坦 measure。

还有显式 contraction，而非只验证 ΠD=0。对 classical polynomial，令
$$
 h_{\rm der}=
 \sum_a\left(
 \chi_a\partial_{c_a}
 +\bar c_a\partial_{B_a}
 -c_a^+\partial_{\chi_a^+}
 +B_a^+\partial_{\bar c_a^+}\right).
 \tag{4.3}
$$
它是 continuous linear contraction 的诱导 derivation；无限和也可直接理解为沿连续 linear vector field 的 derivative。QΨhder+hderQΨ 是 auxiliary polynomial-degree operator。对正 auxiliary degree d 置 h=hder/d，对 degree zero 置0，得
$$
 Q_\Psi h+hQ_\Psi=1-\iota\epsilon_0.
$$
于是
$$
 h_\Lambda=N_\Lambda hN_\Lambda^{-1},\qquad
 D_\Lambda h_\Lambda+h_\Lambda D_\Lambda
                 =1-\iota\Pi_\Lambda .
 \tag{4.4}
$$
ι 保留原物理 coefficients 并令其不依赖 quartet。这里只收缩计算 complex；classical full fields/arrows 仍在原区域对象中。

## 5. 局域插入的重整化相容族

取 quartet smooth space 上的全部 continuous finite-degree polynomials，记作 Oaux，定义与 [O1](continuous_observables.md) 相同。它包括局域多项式及固定有限阶 derivatives，毋须假设每个插入只有有限个 modes。

对任意 normal symbol F∈Oaux[[τ]]，构造整族
$$
 F_\Lambda=N_\Lambda F .
 \tag{5.1}
$$
这给出一个由 actual Gaussian (4.1) 指定的重整化处方，不是任意指定 Δ 的 finite part。对任意两份 finite pair cutoffs，定义
$$
 T_{\Lambda'\leftarrow\Lambda}
     =N_{\Lambda'}N_\Lambda^{-1}
     =e^{\tau(R_\Lambda-R_{\Lambda'})}.
 \tag{5.2}
$$
相容族满足 FΛ′=TΛ′←ΛFΛ。各 T 直接保持 quantum differential，并且
$$
 T_{\Lambda''\leftarrow\Lambda'}
 T_{\Lambda'\leftarrow\Lambda}=T_{\Lambda''\leftarrow\Lambda},
 \qquad
 \Pi_{\Lambda'}T_{\Lambda'\leftarrow\Lambda}=\Pi_\Lambda .
 \tag{5.3}
$$
相容族的 quantum differential 是
DΛFΛ=NΛQΨF，pushforward 是 ε₀F，contraction 为 (4.4)。故这个明确的 renormalized complex 的 cohomology 仅在 degree zero，为 R[[τ]]；加入外部物理 coefficients 时相应保留它们。这是连续 polynomial class 上的解析构造，有限检查只核对其代数恒等式。

**局域 counterterms 并非零。** 对 F=∫χB，NΛF=F+τ|Λ|；对 ∫bar c c 也是同一 counterterm，两者在 gauge-fixing action χB−bar c c 中相消。带 smooth smearing 的局域插入则产生 paired projector kernel 的 coincidence values，带 derivatives 时取相应 kernel derivatives。有限 Λ 时这些均为实际 smooth functions。

孤立 mixed observable ∫χχ⁺ 仍满足 ΔΛF=|Λ|；没有把 trace 设为0。其 quantum derivative 中的 divergent scalar 正是 QΨF 的 normal-family counterterm。相容族及其 pushforward 有意义，并不要求每个 FΛ 在未经运输的普通 polynomial space 中有 Λ→∞ 极限。

[QB](quantum_collar_and_corners.md) 的 σ,b 包含尚未鉴别的 residual data；不能为消去 Δ∫σb 而擅自给它们补进 contractible partners。本节只解决已经明确识别的 proper quartet。完整 bulk/residual renormalization 仍须另外完成。

## 6. 乘积与重复积分也须运输

普通 pointwise multiplication 不是 cutoff-transport morphism。一个 mode 已有
N(χB)=χB+τ，而 Nχ NB=χB。Gaussian expectation 对普通乘积同样不乘法。

辅助块的 Gaussian Wick multiplication 定义为
$$
 F_\Lambda\diamond_\Lambda G_\Lambda
  =N_\Lambda\left[
       (N_\Lambda^{-1}F_\Lambda)
       (N_\Lambda^{-1}G_\Lambda)\right].
 \tag{6.1}
$$
这与 (4.1) 的正常序规则一致。它结合、graded commutative，DΛ 对它是 derivation，T 和 Π 都保持此乘积。普通乘法仍用于 (3.1) 的 BV antibracket；DΛ 在普通乘法下是 second-order differential。两种运算没有混写。

物理 current 的非交换产品仍来自 [QD](quantum_observable_domain.md)，不由辅助 ⋄ 替代。对有限和 P_Q⊗Oaux 的 physical/auxiliary 插入，用 QD⋆ 与 (6.1) 的 tensor product，所得 Π 严格保留物理产品、* 的物理部分与 WH 的时间演化。对物理 coefficient 而言 Π 是 identity。更一般 mixed distribution kernels 需要另给共同域，本节不从 algebraic tensor product 外推。

对两个独立 proper blocks，R₁、R₂ 交换，完整 finite Fourier/Berezin integration 等于 ε₀exp[τ(R₁+R₂)]。由实际 moments，先积分任一块结果相同；(5.3) 同时保证 finite repeated pushforward 的 cutoff choices 相容。尚未证明原 regional cut/source/corner 分解在每个 intermediate 上都产生这些独立 blocks。

## 7. 再攻击：determinant line 的取向不能省略

若 gauge-fixing 改成 BᵀKχ−bar cᵀKc，使用固定正 Lebesgue density 和固定 Berezin ordering，则 finite integral 为
$$
 Z_K=\frac{\det K}{|\det K|}.
 \tag{7.1}
$$
例如 K=−1 给−1，反驳“boson/ghost determinants 不论资料如何都自动给1”。在与 identity 相连的 det K>0 component 中 ZK=1；跨取向分支时要运输相应 orientation/determinant-line trivialization，不能丢弃这个符号。若 ghost/boson 截止维数不同，即使 K=μ1、μ>0，也留下 μ^(Nghost−Nboson)。

因此本页的归一化与选择相容限于同步 canonical pairs 和明确的取向运输。一般 bulk determinant lines、global auxiliary loops 的 holonomy 或新增 anomaly 没有由 quartet 的局部 cancellation 得证。

§5 比较的是同一 QΨ 下的 cutoff choices；(7.1) 本身不是任意 gauge-fixing family 的独立性证明。改变 Ψ 时，action、antifields、propagator 和 determinant-line 资料必须一起运输。

## 8. 与完整目标的连接

- QT1：实际 proper-history/antifield spaces 的连续 biorthogonal presentation 与 cutoff 已构造，temporal caps 未固定。
- QT2：canonical quartet 的完整 BV action、QME、量子微分和 Gaussian cochain contraction 已构造。
- QT3：局域插入进入明确的 renormalized compatible families；产品、截止运输和 normalized pushforward 相容。
- QT4：WH 物理 coefficients 在本 auxiliary pushforward 下保留；有限次独立块积分相容，determinant orientation 的反例明确限定其适用域。

下一步必须从原 regional bulk/source/corner BV action 实际导出到本 canonical block 与 surviving physical data 的 cochain-level pushforward；尤其 source-dependent canonical transformation 的 cap terms、bulk determinant、remaining residuals 和混合局域插入域仍在 G5。一般 reopening/topology 与传播非阿贝尔模型继续保留。

来源对照：[Gwilliam–Rabinovich–Williams](https://arxiv.org/html/2001.07888v3) 给出有边界自由理论的量子 observable 构造和 Abelian CS/WZW 比较；其引言明确限定 perturbative/Lie-algebraic 范围，并区分所用 boundary condition 与完整 BV–BFV boundary foliation。本文不把该结果当成原 Lorentzian chord/cap state theorem；QT 的矩阵、积分与连续域论证在上面独立给出。本次读取为 HTML。

**Verified:** 20项 Mathematica 和29项 Sage 检查全部通过，见 [执行记录](checks/quantum_cut_quartet_verification.md)。连续完备性与任意 finite-degree/任意 cutoff 的陈述由上述证明承担。

**Assumptions:** WH 的实际 endpoint-zero proper fiber；finite smooth rectangular histories、自由 canonical quartet、同步 conjugate/ghost cutoffs、明确 normalization/orientation；量子 complex 使用 formal τ series，物理 coefficient 使用 QD 的既有域。

**Not verified:** 原完整 regional BV complex 的实际分解与全 pushforward、source/cap canonical transport、一般 bulk/residual renormalization、所有 mixed insertions、global determinant holonomy、一般 topology/reopening 和传播模型。
