# 全 scalar Fock space 的物理闭合与原 Hamiltonian 核查

本笔记另行生成；原材料未修改。输入版本为 `ff06682448838bcbb02b135bd61bc661b394cbba`，母稿为 `sources/frozen/Unreduced OFPT calculation.md`。以下“证明”均指固定有限外部能级的重整化形式微扰命题；没有声称在无限自由 Fock 空间上存在强极限酉 dressing。

## 1. 可以用于任意粒子数的准确命题

**命题（任意有限粒子数的 scalar branch）。** 采用原来的 minimal Einstein–real-scalar action、单位 AdS 半径、固定 boundary cylinder/time、regular center、Brown–Henneaux metric falloff、source-free fast scalar branch `Δ>1`。只商去 proper diffeomorphisms。采用原来的 canonical Liouville/Dirac measure、paired proper-constraint determinants、midpoint Weyl quantization、相容的 scalar-leg/paired-boundary Abel regulators、正调节参数下的完整 vacuum-stress subtraction、局部 kinetic subtraction，以及 physical gap `E_00^1p=Δ`；没有额外独立 order-G scalar interaction。

那么，在完成 cubic normal form 后，完整自由简并空间中的 zero-independent-graviton scalar Fock space 在 order G 下不变，而且

\[
H_{\phi,\mathrm{res}}=H_{\phi,0}+G\,W+o(G),\qquad
W|_{\operatorname{Sym}^N\mathcal H_1}=\sum_{i<j}w_{ij}.
\]

真空与一粒子分别有 `W=0`。`w` 是原两粒子 connected operator，已知的完整两体核因而足以唯一确定每个有限 N 的本轮能移。此命题没有把未经核查的非零物理混合项投影掉。

母稿最终文字主要强调一、二粒子，但其 §§71、76 的算子次数证明不依赖 N。本节将这个已含于原证明机制的推广写成显式任意-N 命题，不把 pairwise lift 本身当作本轮首次发现。

## 2. 从完整 OFPT，而非 scalar compression 出发

写 `κ²=16πG`，

\[
H=H_0+\kappa V_1+\kappa^2 V_2+\cdots.
\]

物理引力振子是两个 `m≥2` towers。lapse、shift、proper-gauge variables 不作为 Fock particles；`m=0,1` matter charge channels 仍留在约束逆中。

母稿 §16（lines 685–938）从空间约束和同一 boundary energy 得到

\[
Lu=\rho/2,\quad \bar D_jt^j{}_i=\chi\partial_i\phi/2,
\quad H_4^{\rm con}=\int\sqrt{\bar\sigma}\,y
 (t:t-u\chi^2+\mu u\phi^2-4u^2),
\]

其中 `L=-\barΔ+2`、`μ=Δ(Δ−2)`。非 global momentum sector 的条件是

\[
\lim_{r\to\infty}r^2B_m=0\quad(|m|\ge2).
\]

这不是把所有 center homogeneous coefficients 都置零。§16.4 的真实 mixed cubic 满足

\[
V_{g\phi^2}=\sum(a^\dagger F+F^\dagger a),\quad
F=mD+[H_\phi,D],\quad
V_{g\phi^2}=[H_0,S_{g\phi^2}],
\]

\[
S_{g\phi^2}=\sum(a^\dagger D-D^\dagger a).
\]

其共振分子 `m−Ω` 在除以分母前已经为零。还必须包含 pure-gravity cubic 的 normal-form generator。完整 `V_1=[H_0,S]` 给出

\[
\mathcal W_\kappa=\mathcal R\left(V_2+\tfrac12[S,V_1]\right).
\]

这里 `\mathcal R` 投影到完整自由能量块，而不是先取 `P_g`。在整个块上它严格等于 second-order OFPT：

\[
P_E\mathcal W_\kappa P_E=P_EV_2P_E+
P_EV_1Q(E-QH_0Q)^{-1}QV_1P_E.
\]

这是母稿 §70.1（8799–8830）已经证明的 finite-regulator algebra identity。`P_EV_1P_E=0` 排除了 order-κ splitting；若没有这个结论就不能直接使用上述 order-κ² 式。

## 3. boundary gravitons 为何不发生残留简并混合

对 `m≥2`，原 Brown–Henneaux charges 具有不可遗漏的首项

\[
L_{\pm m}=\kappa^{-1}\sqrt{2\pi m(m^2-1)}
(a_m\ \hbox{或}\ a_m^\dagger)+O(1),
\]

即 `L_m=κ^{-1}c_m a_m+O(1)`，`L_{−m}=κ^{-1}c_m a_m†+O(1)`。

把 Hamiltonian 和 charges 同时 normal-form transform。对一个自由 energy weight 为 s 的 charge，classical boundary-completed Ward identity 的相应次数为

\[
[H_0,\widetilde Q_1^{[3]}]_{\rm cl}-s\widetilde Q_1^{[3]}
+[W^{[4]},Q_{-1}^{[1]}]_{\rm cl}=0.
\]

在能量差 s 的两个完整自由块之间投影，前两项自动消失，所以

\[
[\mathcal R W^{[4]},a_{m,\sigma}]_{\rm cl}
=[\mathcal R W^{[4]},a_{m,\sigma}^*]_{\rm cl}=0.
\]

于是完整 resonant quartic symbol 独立于所有 gravitational oscillators。这包含原本看似独立的 `g²φ²` 和 `g⁴` quartic 的抵消；不能只在 `g=0` 下作一次代入便宣称证明它。

同样的 leading non-global Ward projection 先排除所有 resonant cubic gravity dependence，scalar parity 排除 scalar-only cubic。mixed cubic 的直接 `m−Ω` 又提供独立 dynamical check。

上述结论来自原 action、boundary-completed CPS charges 和 vanishing scalar boundary flux（`r^{2−2Δ}`），不是对任意切断方式下 quantum Virasoro Ward algebra 的假设。证明在母稿 §71.2，lines 9041–9084；完整量子闭合在 §76.4，lines 10220–10239。线性振子的 Weyl commutator 没有高阶 Moyal 修正，所以四次最高 symbol 的结论也就是 quantum four-leg coefficient 的结论。

### 3.1 为什么 quantum lower-degree terms 不重新打开 mixing

order-κ² 的完整 normal form 最高 degree 为四。Weyl-order contractions 只可产生 degree two 或 vacuum constant；两个 cubic 的第三导数 Moyal term 只是常数。

在 lower-degree resonant remainder 中：

- `φ→−φ` 排除 `gφ` bilinear。
- 正能排除纯两个产生或两个湮灭的 resonance。
- scalar `b_I†b_K` 同时守恒 E、J 强制 `I=K`。
- pure-gravity number-preserving quadratic 在 graviton vacuum 上为零，vacuum constant 已扣除。

因此无论外部有多少 finite scalar spectators，quartic 和 quadratic 都不能把 `|0_g>⊗F_φ` 送到 occupied-graviton states。这证明的是完整简并算子的 invariant sector；不需要、也不声称已证明全部 pure-gravity loop spectrum。

## 4. scalar number changing：整数质量碰撞与一般消失定理

### 4.1 精确的运动学候选条件

把 scalar mode 写为 `(p,q)`，能量 `Δ+p+q`，spin `p−q`。一个 `1→3` 单顶点若同时守恒 E 与 J，必须满足

\[
p_{\rm in}-\sum_{r=1}^3p_r=\Delta,
\qquad q_{\rm in}-\sum_{r=1}^3q_r=\Delta.
\]

所有 p、q 为非负整数，所以 `Δ>1` 域中的候选 `31` resonance 只可能出现在整数 Δ。一般 rational Δ 会让较远粒子数扇区发生 free-energy coincidences，但 order-G degree≤4 没有足够外腿将它们直接相连。只看 E 而漏看 J，会夸大 special-mass resonance 集合。

### 4.2 任意整数 Δ 的候选系数仍全部为零

scalar global charges 是 free number-preserving bilinears，故它们对 normal-ordered quartic 的作用精确保留产生/湮灭次数。`\mathcal W_{31}` 单独是 `sl(2)_L⊕sl(2)_R` intertwiner。

一粒子 lowest-weight vector 的 free energy 是 Δ，三粒子任何态的能量至少 `3Δ>Δ`，所以

\[
\mathcal W_{31}|0,0\rangle=0.
\]

一粒子 module 中的每个态都由左右 free raising 产生。将 intertwiner 与 raising 对易，得其在整个一粒子 module 上为零。作用在任一一粒子 basis vector 上，输出三粒子 creation monomials 线性独立，因此这穷尽并消去了**每一个** `b†b†b†b` 系数。它的 adjoint 同样为零。

向同一 monomial 加 spectators 不能恢复一个已为零的 coefficient。这就排除了所有 `N↔N±2` 的 order-G mixing。`40`、`04` 由正能非共振，quadratic scalar `20/02` 也一样。结论在整个 Δ>1 域成立，不需要先假设 Δ generic。

second-order product `V_1 Q(E−H_0)^{-1}QV_1` 中的形式最高 degree-six 指全部 scalar/gravitational oscillators 的总次数；本理论 cubic 只有 `g³`、`gφ²`，两个这样的顶点本来就至多含四条 scalar legs。合并 placements 为 commutator 后，总 degree-six products 也精确抵消，normal form 最高 degree four。因而不能从带 spectators 的 OFPT 分项、或总 oscillator degree-six，误读出新的 six-scalar/三体 interaction。

### 4.3 本轮实际原式验证

`number_change_checks.py` 对 Δ=2、3、4、5，三个 outgoing circular radial labels 取 `0≤n_1≤n_2≤n_3≤2`，令 `n_in=Δ+n_1+n_2+n_3`，直接生成原 scalar/momentum constraints 的六个 signed-leg pairings。40 个 normalized `1→3` coefficient 全部精确为零；**每个 case 都含非零的 individual pairings**。JSON 保存每一项，未输入 Ward identity 或 candidate spectrum。

这些 circular external legs 的 boundary four-leg term 由 angular selection 为零。它们检验 integer-Δ resonant contact cancellation；非 circular general proof仍是上面的 intertwiner argument，不能把40例说成全指标证明。

## 5. 一体 subtraction 与 irreducible manybody interaction 的次数

在原处方下，gravitational seagull、embedding contraction 和 mixed-cubic energy-weighted term 用 free radial virial identity 相消；boundary/scalar tower 的 joint regulator limit 由母稿 §39 控制。余下 scalar Weyl trace 的 Hartree piece 在 positive regulator 下以完整 vacuum stress source 相消，之后才反演约束并取径向极限。exchange pole 由同一个 local kinetic insertion 匹配：

\[
Z_\tau(x)=-\frac{4G}{\tau\sqrt{1+r^2}}.
\]

bare 与 counterterm 的 external-leg factors 必须相同。最终每个固定外模的余项仅是共同 finite mass insertion；physical ground gap condition 将其设为零（母稿 §§75–76.5）。这是已经完成的一体量子计算，不能被 tree reduction 定理替代。

恢复 loop grading可清楚看出：一个 quartic vertex 或两个 cubic vertices 的 connected four-external-scalar graph 是 tree；同阶两外腿图含 loop。它们均可为 O(G)。因而本轮多体 connected operator 是 tree，但完整 O(G) 谱还用到了先前已完成的 one-body loop/ordering/renormalization。

对任意 N，所有 one-body insertions 都是同一 `δΔ N_φ`。物理质量条件只固定一次；不存在新的 N-dependent mass subtraction。order-G 没有 six-scalar connected vertex；也没有可独立调节的 quartic counterterm。若另加 `Gλφ⁴`，则确实改变 w 和所有 manybody energies，那属于另一理论。

## 6. 规范化的唯一 Fock lift

令 unordered normalized pair creator

\[
B_{IJ}^\dagger=\frac{b_I^\dagger b_J^\dagger}{\sqrt{1+\delta_{IJ}}},\qquad I\le J.
\]

设原计算的 normalized pair matrix 为 `M_{IJ;KL}=<IJ|W|KL>`。则整个 finite-particle domain 上唯一相应 connected quartic 为

\[
\boxed{W=\sum_{I\le J,K\le L}M_{IJ;KL}B_{IJ}^\dagger B_{KL}.}
\]

只保留 pair E、J 相等的 coefficient。在 N=2 上该式恰给 M；在 N 粒子对称张量上它恰等于 `Σ_{i<j}w_ij`。证明可直接作用于 normalized occupation basis：两次 annihilation 和两次 creation 的平方根 occupation factors，除以两对 `sqrt(1+δ)`，正好枚举每个 unordered physical pair 一次。

此式不仅给 eigenvalues 的形式定义：它给每个 matrix coefficient 的唯一归一化，供独立验证多体算法。主报告中的一般谱压缩以这个已从原 action 确定的 operator 为输入。

## 7. 一个非最大手征的任意-N 精确 primary

对 `N≥2`，总 excitation `(P,Q)=(1,1)` 的整个 Bose Fock block 只有两态：

\[
|A_N\rangle=\frac{(b_{00}^\dagger)^{N-1}b_{11}^\dagger}{\sqrt{(N-1)!}}|0\rangle,
\qquad
|B_N\rangle=\frac{(b_{00}^\dagger)^{N-2}b_{10}^\dagger b_{01}^\dagger}{\sqrt{(N-2)!}}|0\rangle.
\]

这里 subscripts是 `(p,q)`。设 `a=(g_{00}+g_{10})/2`、`b=(g_{00}−g_{10})/2`，原 pair block由两个动力学系数给出。逐个做 occupation contraction 得

\[
W_N^{(1,1)}=
\begin{pmatrix}
\binom{N-1}{2}g_{00}+(N-1)a&\sqrt{N-1}\,b\\
\sqrt{N-1}\,b&\frac{(N-2)(N+1)}2g_{00}+a
\end{pmatrix}.
\]

ground descendant是 `(1,√(N−1))/√N`，其能移仍为 `binom(N,2)g00`。与之正交的唯一 global primary 为

\[
|\Psi_N\rangle=\frac{-\sqrt{N-1}|A_N\rangle+|B_N\rangle}{\sqrt N},
\]

\[
\boxed{E_N^{(1,1)}=N\Delta+2+
\frac{GN}{2}\big[(N-2)g_{00}+g_{10}\big]+o(G).}
\]

两个 free lowering 都杀掉它；该态有 genuine nonchiral/radial excitations。Bargmann polynomial是 `Σ_i(z_i−\bar z)(w_i−\bar w)`。其能量对 Δ>1 皆有定义，包括 Δ=3/2，原 g00 的可去因子必须先约掉。

Δ=2 时，N=3 给 `8−528G/7+o(G)`，N=4 给 `10−4304G/35+o(G)`。

## 8. 本轮原约束 manybody checks 的范围

`raw_canonical.py` 是前轮原式求解器的原样副本，没有更改其物理输入。`raw_fock_checks.py` 从它的 scalar modes、full spatial differential equations、regular center、boundary momentum condition 求每个 polarized response，再积分 `H4_con` 和 boundary-density anticommutator。normalized occupation algebra 生成完整 N=3、4 blocks；**这些 matrices 不由 g_{n,ℓ} 填充**。

只在原 matrix 已得到之后，程序另用已知完整 pair spectrum 和 free CG coefficients 作后验比较。primary 空间由两个 free lowering 的共同 kernel 求出。每个 case 保存 constraint matrix、boundary matrix、完整 total matrix、primary basis、primary/full characteristic polynomials。

本轮发现并纠正了一个实现假设：曾额外乘 `(-1)^min(p,q)` 的 mode phase。原 solver 的 Jacobi mode 已经与 source-prescription 中 `ψ_pq=c_pq u_nj` 的正 ladder phases 匹配；额外 phase 使第一 nonchiral block 的 off-diagonal 错号，被后验 matrix comparison 立即检出。最终实现不加它，并以 raw inter-energy ladders 核查。它是检验有效的负控制，不是物理不一致。

实际完成 Δ=2、N=3 与4、`0≤P,Q≤2` 的18个完整 blocks；原约束直接给出39个独立 normalized pair entries，其中21个有非零 boundary exchange。通过24条 inter-energy global lowering Ward identities，以及18个“完整 characteristic polynomial 等于所有 lower-primary characteristic polynomials 的乘积”检验。全部结果见 `raw_fock_results.json`。

这里还保留有物理意义的负控制：只用 constraint contact C 会破坏 global covariance；加回 X 才恢复。例如 N=3、`(P,Q)=(1,1)` 到 `(0,1)` 的 left lowering，按保存的 normalized occupation basis，`C_(0,1)L_-−L_-C_(1,1)=(0,−96/25)`，而 `(C+X)_(0,1)L_-−L_-(C+X)_(1,1)=0`。这直接排除了“h=0 就无需 virtual boundary contribution”的错误解释。

新 primary polynomial 的两个非平凡例子为

\[
\begin{aligned}
N=3,\ (P,Q)=(2,2):\quad&
\lambda^2+\frac{34480}{175}\lambda+\frac{1484288}{175},\\
N=4,\ (P,Q)=(2,2):\quad&
\lambda^3+\frac{19080600}{42875}\lambda^2+
\frac{2733198720}{42875}\lambda+
\frac{125343737856}{42875}.
\end{aligned}
\]

其根是 order-G coefficients，free energies 分别为10与12。JSON 中同时保存实际 primary basis 和 primary matrix；这些 basis 一般不正交，故显示的 restriction matrix 应与 `B^T B` 的 Gram metric 一起理解。

## 9. 证据边界

已证明的是 fixed finite energy 的形式 perturbative spectrum；对每个这样的块，N有有限上界且 state multiplicity有限。不能由此宣称 global nonperturbative factorization `H_g⊗F_φ`，也不能声称 `h=0` 的原未变换态字面不含 virtual gravitons。normal-form eigenvector 需经 `exp(−κS)` 返回 retained-graviton variables，得到 physical dressed state。

未证明且本轮不需要：full pure-gravity quantum Ward algebra、任意 regulator/ordering的处方无关性、Δ≤1/BF/alternate boundary problem、Δ=(1+√5)/2 下额外 no-log de Donder代表的存在、O(G²) 的 genuine三体顶点、uniform N→∞ 弱耦合控制。辅助 no-log gauge obstruction 不影响当前 maximal-slice operator；Δ=3/2 的 pair formula pole是可去的，既不是新自由度也不是需要 principal value 的 resonance。
