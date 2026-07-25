# TODO

## Completed Paper-I extraction package

Current phase：the first reproducible manuscript proof package is complete；the next internal research task is the Paper-II nonlinear EH + GHY line-by-line audit chosen in `Drafts.md`。The completed Stage 0--8 and P0--P5 audit is preserved below。

- [x] Action: complete the novelty and prior-art labels in `results index.md`。
  Context: the registry now gives every result row a working novelty label and an imported-input anchor。
  Check: completed on 2026-07-25。The audit is explicitly bounded rather than advertised as exhaustive priority proof；M3 was split into proved M3a and audit-blocked M3b。

- [x] Action: freeze the scope and central theorem of Paper I in `Drafts.md`。
  Context: the internal working decision is Maxwell-first；advisor confirmation may change order but is not a proof dependency。
  Check: completed on 2026-07-25。The outline has one off-shell $C^2$ central theorem、a separate band-limited nonemptiness proposition、a polarized reduction corollary and an explicit exclusion list。

- [x] Action: extract the Paper-I proof dependency ledger。
  Context: `Paper I proof ledger.md` separates the D0--D6 off-shell branch from the S0--R0 on-shell/reduction branch。
  Check: completed on 2026-07-25。Every manuscript node has an authoritative section and the no-cycle table records that no Maxwell EOM enters the central action theorem。

- [x] Action: create a reproducible `checks/maxwell/` package for the decisive symbolic calculations。
  Context: the package contains a usage/coverage boundary and one clean Wolfram runner。
  Check: `checks/maxwell/run_all.wls` reports `25 passed, 0 failed` on 2026-07-25。It covers the requested finite identities and explicitly does not claim to prove uniform conormal estimates or counterterm-category completeness。

- [x] Action: perform a publication-grade audit of the Maxwell counterterm-completeness and actual-solution claims。
  Context: `Paper I proof audit.md` records direct verdicts for the strict no-go、extended $C^2$ theorem、lids/corners、actual solutions and reduction。
  Check: completed on 2026-07-25。The action theorem is retained under precise assumptions；Proposition 11.1 is retained；the conormal Proposition 11.2 and its image/principal-jet corollaries are downgraded to unproved candidate claims in both the audit and `3d Maxwell.md`。

- [x] Action: prepare the four advisor questions in `Drafts.md` for a scope decision。
  Context: each question now has a recommended answer and explicit accept/reject consequence。
  Check: the internal working decision `Maxwell first` is recorded。No external advisor response is fabricated；a later response changes packaging only，not the technical notes。

## Completed Stage 0--8 ledger

- [x] Action: 固定 Stage 0 的 off-shell function-space、relative variational problem、counterterm category、$C^2$ renormalization 和 maximality 定义。
  Context: 结果写在 `definitions.md`；没有使用 bulk EOM。
  Check: index-set 和 relative-complex 符号已对原始文献核对，径向 monomial derivative 已由 Mathematica 验证。

- [x] Action: 完成 3D Maxwell 的 candidate component index family。
  Context: 只从 arXiv:2311.09156 提取出现过的 powers/log positions，删除全部 EOM coefficient relations，并补入 derivative/product/gauge-integration closure 所需项。
  Check: `3d Maxwell.md` section 4 使用任意 finite log caps $K_m$；论文的 $n\leq\lceil m\rceil$ 只列为 on-shell information。

- [x] Action: 证明 3D Maxwell radial gauge $A_r=0$ 在所选 weighted space 上可达。
  Context: 显式求解 $\partial_r\lambda=-A_r$，检查 $r^{-1}$ resonance、log degree 和 endpoint behavior。
  Check: `3d Maxwell.md` section 5；对 gauge-saturated parent space 成立，residual parameter 满足 $\partial_r\lambda=0$；未使用 Maxwell EOM。

- [x] Action: 推导 3D Maxwell regulated action 的完整 abstract off-shell variation。
  Context: 先保留 $A_r$，固定所有 boundary/corner orientations；之后才 pull back 到 radial gauge。
  Check: `3d Maxwell.md` sections 2 and 6；bare theory 没有独立 corner density，corner term由 endpoint descent/counterterm 产生。

- [x] Action: 建立 Stage 1A 的 radial-weight ledger。
  Context: variations 先在 $u_\pm$ 附近消失。
  Check: `3d Maxwell.md` section 7；只有 $E^2$ boundary log 和 $\partial_u(C^2)$ endpoint log。

- [x] Action: 判定 strict intrinsic gauge-invariant category 并构造 extended renormalization。
  Context: 固定最大 tangential jet order 和 radial weight；不得使用 Maxwell EOM 或 radial gauge relations缩减 covariant basis。
  Check: `3d Maxwell.md` Proposition 8.1 给出 Coulomb-sector no-go；section 9 给出 gauge-invariant normal-field-strength counterterms 和 $C^2_{\mathrm{loc}}$ proof。

## Completed later gates

- [x] Stage 1B：恢复任意 endpoint variations，求完整 finite lid/corner canonical structure。
  Check: `3d Maxwell.md` section 10；flux-balance law 未在 off shell 提前使用。

- [x] Stage 1C：最后 impose Maxwell EOM，构造 formal $\widetilde{\mathcal S}_{\mathrm M}$，证明 evolution preserves the index family，并推导 symplectic flux-balance law。
  Check: `3d Maxwell.md` sections 11--12；对 actual solutions in the declared class 成立。任意 formal tower 的 global PDE realization 仍单列为 analytic open item。

- [x] Action: 完成 3D Maxwell large-$U(1)$ reduction。
  Context: 使用完整 $\Omega_{\mathrm{ren}}$ 判定 residual $\eta_0(u,\phi)$ 的 boundary pairing，不预设其 proper/large 身份。
  Check: `3d Maxwell.md` section 13；给出 cut charge、integrability、flux、proper/large distinction 和 abelian algebra。

- [x] Action: 判定 formal finite-log towers 的 actual-solution realization boundary。
  Context: 使用 3D Maxwell/scalar duality和 Fourier--Bessel representation；没有用 formal recursion 代替 PDE existence。
  Check: `3d Maxwell.md` Proposition 11.1 对 compact positive-frequency support 和 finite angular support 的 data class 证明 global smooth radiative existence、future-radiation representation 的 uniqueness 和 weighted-topology continuous dependence；section 11.10 把 arbitrary higher-log realization 精确定位为 zero-frequency threshold/inverse-transform problem，没有宣称 surjectivity。
- [x] Stage 2B：4D free spin-2 bridge。
  - [x] Model/gauge/index gate：在 `4d spin-2.md` 中固定 EH + GHY Hessian、gauge-saturated parent、linearized BS slice、residual smooth BMS stabilizer、componentwise finite-log family 和 first-log calculation window。
  - [x] 推导 exact quadratic action 和 outer-boundary canonical data。
    Check: `4d spin-2.md` section 4.4 从 EH + GHY Hessian 得到 exact $G^{(1)}$ bulk form 和 linearized Brown--York momentum；direct second-order subfamily check residual 为零。
  - [x] 完成 standard first-log window 的 off-shell radial divergence ledger 与 counterterm verdict。
    Check: bulk density 为 $\mathcal O(r^{-2}L^{K_*})$，outer potential finite，bulk + outer divergent sector 为空，bare outer scheme 足够；null lids/joints 和 leading-log shear 仍分别单列。
  - [x] 恢复 endpoints/corners，证明 finite $\Theta_{\mathrm{ren}}^{(2)}$ 和 $\Omega_{\mathrm{ren}}^{(2)}$。
    Check: `4d spin-2.md` section 4.7；null lids 的 exact divergent potential 是 field-space exact，并由 local fixed-frame generating functional 移走；null--timelike joint 的 $P(L)^2$ divergence 需要 fixed-normal extended $\eta^2$ corner subtraction。
  - [x] 最后 impose linearized Einstein equations，恢复 Ashtekar--Streubel sector 并判定 first-log extension。
    Check: `4d spin-2.md` section 5；first radial logs 不增加 local $\mathscr I$ radiative pair，proper compactly supported diffeomorphisms 是 degeneracies。
  - [x] 审计 leading-log shear nested class。
    Check: off shell 出现 $L_R^2\delta\dot C^{(1)}\wedge\delta C^{(1)}$，在当前 local finite-jet/no-edge-field category 中不是 endpoint descent；$K_0^{AB}=0$ 因而是 obstruction boundary，而非 on-shell 输入。
- [x] Stage 3：4D nonlinear vacuum GR 的 first-log sector。
  - [x] Stage 3A：从 minimal nonlinear Bondi ansatz 构造 multiplication/differentiation-closed off-shell index family，并逐项标注 gauge assumption、kinematical restriction 与 EOM relation。
  - [x] Stage 3B：在 endpoint-supported variations 下建立 EH + GHY 的 nonlinear radial divergence ledger，不 impose Penrose conditions 或 $E_{\rm div}=0$。
  - [x] Stage 3C：相对于预先固定的 intrinsic/extended category 求解 relative counterterm descent，并记录 obstruction。
  - [x] Stage 3D--3E：比较嵌套 off-shell spaces，最后才 impose Einstein equations 并与 Freidel--Riello/GLZ 建 dictionary。
    Check: `4d nonlinear gravity.md` Theorems 9.4、11.2 和 12.1。First-log target weights 上存在 fixed-frame $C^2$ relative scheme；显示的 counterterms on shell 全部消失；固定 $q$ 的 symplectic form 与 GLZ/Ashtekar--Streubel 一致。该结论明确是 finite-order，不是 all-order theorem。

- [x] Stage 4：任意固定 $N$ 的 radial polyhomogeneous hierarchy。
  - [x] 定义 $\mathcal E_N$、truncated topology 和 $N\to N+1$ completion rule。
  - [x] 证明 locality 给出逐 weight 的有限 counterterm complex，并审计 resonance。
  - [x] 给出 induction theorem 或首个 obstruction，且把 formal hierarchy 与 actual PDE realization 分开。
    Check: `all-order radial hierarchy.md` Theorem 8.1。Exact bulk/GHY/joint support implies Stage 3 已经穷尽 standard class 的全部 radial divergences；$N\to N+1$ 不产生新 counterterm。唯一 weight-zero obstruction 是 leading-log shear。Formal GLZ recursion closes；actual vacuum PDE realization、strict intrinsic completeness 和 $N\to\infty$ convergence 明确未被冒充为已证。

- [x] Stage 5：打开 $\delta q_{AB}\neq0$。
  - [x] 区分 external-source、boundary-variable 和 edge-mode 三种 variational problems。
  - [x] 推导 general-$q$ finite symplectic potential及其 canonical pairs。
  - [x] 判定 generalized BMS 的 canonical action与 local-covariant obstruction。
    Check: `dynamical celestial metric.md` Theorem 9.1。External-source 方案只得到 phase-space bundle；Freidel--Riello 给出 action-derived finite response；Flanagan--Prabhu--Shehzad 的 $\Omega^{-1}\delta q\wedge\delta N$ theorem 排除 strict local-covariant current；Campiglia--Peraza 与 cotangent edge sector 分别以 nonlocality 或 extra fields 绕开。Smooth Diff$(S^2)$ 与 meromorphic punctures 已明确分开。

- [x] Stage 6：matter 与 generic scattering 的 radial-local gate。
  - [x] 依次处理 massless scalar、Maxwell 和 massive matter 的 off-shell index families。
  - [x] 建立 mixed gravitational--matter divergence 和 counterterm ledger。
  - [x] 最后 impose coupled EOM，检查 backreaction、flux、constraint propagation 和 vacuum consistent truncation。
    Check: `matter coupling.md` Theorem 10.1。Massless scalar 只需要一个 endpoint/corner logarithmic subtraction；4D Maxwell 无 radial divergence；minimal mixed terms 不产生新 divergent weight。Leading-log scalar/Maxwell radiation 各自产生 $L_R^2$ symplectic obstruction。Pure null polyhomogeneous massive solution逐阶为零，非平凡 massive data 必须移到 $i^\pm$。Small-data PDE theorems只证明 solution space 非空，尚未给出到本文两变量 Bondi polyhomogeneous class 的完整映射；该 analytic gate 移交 Stage 7。

- [x] Stage 7：联合处理 $u\to\pm\infty$、$i^0$ 和 $i^\pm$ 的 diagnostic gate。
  - [x] 定义 $(\Omega,\rho)$ normal-crossing/polyhomogeneous corner space，并检查两种极限的兼容性。
  - [x] 对 tails、memory 和 massive timelike data 重做 action、第一变分与 symplectic endpoint ledger。
  - [x] 判定 antipodal matching 的来源以及 superrotation $u$-moment divergence 是否可由 corner sector 吸收。
    Check: `spatial infinity and endpoints.md` Theorem 10.1。$1/u$ tail 保持 fundamental radiative symplectic form 和能量 flux 有限，但 $\int du\,uN$ 有 logarithmic anomaly。Maxwell/supermomentum/Lorentz matching 分别需要 Ashtekar--Hansen extension、regularity、EOM 和 fluxless restrictions，不能归因于 null EOM alone。$i^0$ 只连接 $\mathscr I^+_-$ 与 $\mathscr I^-_+$，不能吸收 $i^\pm$ endpoint divergences。Massive $H^3$ pair finite，但 matter-dependent drag 留下 coupled timelike-corner obstruction；因此只得到 conditional massless global sector，没有冒充 maximal generic massive action theorem。

- [x] Stage 8：在最终可用的 conditional phase space 上构造 charges、algebra、matching 和 Ward-identity diagnostic。
  - [x] 用完整 $\Omega_{\rm ren}$ 区分 proper gauge 与 nonzero-charge transformations。
  - [x] 对 ordinary BMS、smooth generalized BMS 和 punctured extended BMS 分别判定 finiteness/integrability/algebra。
  - [x] 明确 classical matching 能推出什么，以及 BRST、measure、IR prescription 缺失时不能宣称什么 quantum Ward identity。
    Check: `charges and Ward identities.md` Theorem 13.1 与 Obstruction 13.2。Ordinary smooth BMS $\ltimes$ large $U(1)$ 在 conditional massless matched sector 上有 finite WZ cut charges、flux、algebra 和 $i^0$ matching；global Lorentz 不受 $1/u$ tail 的 soft moment obstruction。Smooth generalized BMS 不是 fixed-$q$ fiber symmetry，known canonical constructions使用不同的 nonlocal/edge/end-point completion。Meromorphic extended BMS 需要 puncture boundaries。Quantum identity 只在 global action、BRST、measure、IR 和 $i^\pm$ hard sectors 全部补齐后作为 conditional theorem 成立。

## Stage-documentation verdict

- [x] Stage 0--8 的 action-first decision chain 已逐阶段写成独立 notes，并在 `roadmap.md` 汇总。
- [x] 每个 positive theorem 都列出 domain、counterterm category、assumptions 和 machine/source verification boundary。
- [x] 未把以下开放问题伪装成完成：strict intrinsic/conformal-covariant all-order counterterms、arbitrary formal series 的 global PDE realization、generic massive $i^\pm$ corner action、unique generalized/extended-BMS completion、quantum IR/BRST Ward theorem。

The checkboxes above mean that every diagnostic stage has a written verdict。They do not mean that every obstruction or analytic gate has been solved。The following list is the completed research-question audit that supports `results index.md`。

## Closed research-question backlog

### P0：state consistency

- [x] Action: 清理各 note 顶部遗留的 stale “尚未完成”列表，并逐项映射到后续 theorem 或本 backlog。
  Context: `4d spin-2.md` 和 `4d nonlinear gravity.md` 的开头仍描述早期中间状态，与文件后半部和本 TODO 不一致。
  Check: 两份 note 的 section 0 已逐项改成 cross-stage status；resolved items 指向对应后续 note/theorem，剩余项分别映射到 P1、P2、P4；全目录已无旧的“尚未完成”列表。

### P1：off-shell action 与 counterterm category

- [x] Action: 判定 4D nonlinear gravity 是否存在 strict intrinsic、local、conformal-frame-covariant 的 all-order action counterterm scheme，或在精确定义的 category 中证明 obstruction。
  Context: 当前 positive theorem 允许 explicit cutoff 和 finite normal jets；Freidel--Riello 重整化 Lagrangian/potential，但对 accessible off-shell space 使用 Penrose-type restrictions。
  Check: `dynamical celestial metric.md` Theorem 6.1 定义 $\mathfrak C_{\rm strict,conf}$：independent $\delta q,\delta N$、physical-metric local finite jets、无 preferred cuts/defining function/normal spurion/nonlocality/edge，并要求同一 domain 上的 $C^2$ action及 local spacetime-covariant potential。FPS 的 leading class是 $(32\pi G\Omega)^{-1}\epsilon_{\mathscr I}\delta q^{AB}\wedge\delta N_{AB}$；action counterterm不改变 $\omega$，而其 local-covariant $Y$ classification的两个候选均违反 field-space integrability。Obstruction 已在最低 radial weight，故 all-order deeper terms不能修复。Fixed-$q$、GLZ cut descent、FR fixed-$\Omega$ accessible space和 nonlocal/edge schemes均明确位于该 category 之外。

- [x] Action: 把 finite-$N$ 的 $C^2$ remainder control 从 topology assumption 升级为 estimate，并判定能否对 $N$ uniform。
  Context: `all-order radial hierarchy.md` 目前只证明 exact finite coefficient support；没有控制 $N\to\infty$。
  Check: `all-order radial hierarchy.md` sections 1.2--1.4 明确定义 fixed-$s$ weighted-conormal Banach norm和其 Fréchet projective limit；weighted Leibniz/Moser bound给出 $\ell=0,1,2$ 的 uniform-on-bounded-sets tail estimate，故 cutoff limit 与两次 variation 可交换。对 log degree $K$ 的 exact tail integral在 $R=r_0$ 等于 $r_0^{-\epsilon}K!/\epsilon^{K+1}$；GLZ caps 随 radial order 增长，故当前 unweighted finite-cap topology 不可能 $N$-uniform。Mathematica 分别在 $K\leq8$ 和 $K\leq12$ 检查 closed form 与 factorial specialization。

- [x] Action: 构造 reparametrization-invariant 的 null-lid/joint completion，或证明 fixed-normal $\eta^2$ scheme 必然选择 boundary clock/normalization。
  Context: Stage 2B/3 的 subtraction 在 fixed null normal 下成立。
  Check: `4d spin-2.md` section 4.7 和 `4d nonlinear gravity.md` section 11.4。对 $k\mapsto e^\varsigma k$ exact 跟踪 $\kappa,\Theta,\eta$：bare null + joint residual 是 $(8\pi G)^{-1}\int\sqrt\sigma\,\Theta\varsigma$，LMPS term 或 independent clock $\varphi\mapsto\varphi+\varsigma$ 均精确消去它。Cut-only local density 的 pointwise shift argument证明非平凡 $\eta^2$ 不可能独自 invariant；clock completion以 $\widehat\eta=\eta-\varphi$ 保留原 subtraction，unitary gauge中给出同一 finite action。Dynamical clock 的额外 pair 是 $(8\pi G)^{-1}\int_C\delta\sqrt\sigma\wedge\delta\varphi$；corner generating-function two-form仍为零。Mathematica 对 hatted transformation laws、LMPS residual、clock residual及 linearized $\Theta,\widehat\eta$ expansion 全部返回零 residual。

- [x] Action: 在 general $q_{AB}$ 上建立 Freidel--Riello 与 GLZ 的 off-shell action-level dictionary。
  Context: 当前只对 potentials/solution data 做 source-derived comparison。
  Check: `dynamical celestial metric.md` section 5.1 给出精确 verdict。Exact field map是 $\Omega=1/r$、$b_{\rm FR}=2\beta$、$\Upsilon_{\rm FR}=U$、$\Phi_{\rm FR}=-V/(2r^2)$及 conformal angular metric map；Mathematica检查 metric、$\Phi_1=R/4,\Phi_2=-M$和 log signs。On $\mathcal F_{\rm FR}^{\rm acc}\subset\mathcal F_{\rm D}^{\rm off}$，同一 EH action和 physical-outer orientation 下有 $L_{\rm FR}-L_{\rm D}=-d(\ell_{\rm FR}+B_{\rm D})$ 及对应 exact $\Theta$ relative identity，FR 的两级 $\ell,\vartheta$均显式列出。GLZ source则先解完整 Einstein hierarchy，只有 $\mathcal S_{\rm GLZ}\hookrightarrow\mathcal F_{\rm FR}^{\rm acc}$ 上的 EH potential/two-form，没有 GLZ off-shell $L_{\rm ren}$；其 Cauchy corner及 $D_{AB}$ endpoint one-form已显式给出。故三方“same off-shell action”作为原文对象不存在且不能由 $\Omega_{\rm GLZ}$ 唯一反演；正确 dictionary是 Dirichlet$\leftrightarrow$FR exact off shell，FR$\to$GLZ on-shell pullback加 corner polarization。

- [x] Action: 判定 leading-log shear/scalar/Maxwell obstruction 在允许 nonlocal counterterms 或 edge fields 后能否完成。
  Context: 当前 no-go 只在 local finite-jet/no-edge category 中成立。
  Check: `matter coupling.md` section 4.3 和 `4d spin-2.md` section 4.8。三种 spin 的 class统一为 $c_XL_R^2\int du\,\langle\delta\dot X\wedge\delta X\rangle$；endpoint-vanishing test variations给出 $-1/30$，证明 relative horizontal/field-space class 非零。任意 local/nonlocal $C^2$ action counterterm仍有 $\delta^2B=0$；任何保留 $(\delta X,\delta e=0)$ product tangents 的 finite-action edge extension也不能消去该 restriction。Auxiliary-collar WZ action显式给出 $\Pi_Y=-c_XL_R^2\partial_uY$ 和 gluing $\Pi_X^{\rm div}+\Pi_Y=0$，但其 EOM为 $\partial_\rho\partial_uY=0$：fixed inner edge推出 $\dot X=0$，dynamical inner edge则把 anomaly搬到另一端。故不存在保留 generic $X(u,x)$ 的 sink-free $C^2$ completion；reduced fixed-inner branch回到 standard radiative $\Omega$ 加无 WZ conjugate 的 time-independent soft datum。Mathematica检查 WZ momentum、EOM、cancellation及 $-1/30$ test。

- [x] Action: 完成 EH + GHY Hessian 与一个明确 integrated-by-parts Fierz--Pauli representative 的 relative-action dictionary。
  Context: `4d spin-2.md` 目前只使用 action-derived Hessian。
  Check: `4d spin-2.md` section 4.4.1 固定一阶导数 $\mathcal K_{\rm FP}$，给出 exact $V^\mu$ 使 $hG_{(1)}=\mathcal K_{\rm FP}+\bar\nabla_\mu V^\mu$；xAct residual为零。Outer completion显式包含 $\iota^*(\star V)+h_{ij}\mathcal P_{(1)}^{ij}$，affine null lids包含 $\iota^*(\star V)$，LMPS joint保持不变；finite-cutoff relative actions及其 $\Theta,\Omega$ 因而完全相同。

### P2：formal hierarchy 到 actual solutions

- [x] Action: 审计 3D Maxwell zero-frequency threshold data 及 higher-log Fourier--Bessel realization claim。
  Context: compact positive-frequency support只实现 log-free radiative class。
  Check: `3d Maxwell.md` sections 11.11--11.15 and `Paper I proof audit.md` A5。Exact Bessel--Laplace transform给出 candidate radiation/threshold coefficient dictionary和 $\mathsf T_\nu(\alpha)$ Gamma coefficient；Mathematica检查其 half-integer poles、integer $m\geq\nu$ simple zeros及 nonzero residues。Publication audit判定：这些 coefficientwise checks 不证明 continuous forward polyhomogeneity、artificial-cutoff cancellation、uniform-in-$u,\ell$ conormal remainder、Borel extension或 closed image topology。故原 Proposition 11.2、higher-log principal-jet realization及 full image/kernel/cokernel formula均降级为 candidate；完成的是 proof-status classification，不是该 analytic theorem。

- [x] Action: 完成 4D linearized Bondi hierarchy的 all-order recursion、Coulombic cut data和 actual-solution map。
  Context: Stage 2B 的 explicit calculation停在 first-log window。
  Check: `4d spin-2.md` sections 5.5--5.9。Exact component equations化为 $\mathsf D_p=\partial_L-p$ 的三条 all-order polynomial recursions；唯一 radial kernels在 $V_1$、$A_0$ 留下 angular-momentum和mass aspects，任意 fixed order/log cap由 triangular induction闭合。Supplementary equations给出 $M,\mathcal J_A$ evolution，全部 $C_n(u_0,L)$ 被明确识别为 formal cut data。STF tensor harmonics上递归化为 $\dot c_{n+1}=n[\ell(\ell+1)-n(n+1)]/[2(n+2)(n-1)]c_n$。Compact positive-frequency helicity-$2$ TT amplitudes经 global plane-wave solution、explicit radial gauge integrals和 stationary phase给出 injective continuous radiation-field map及 conormal remainder estimate；stationary harmonic multipoles补上 exterior Coulomb image。Actual image严格小于 arbitrary formal tower，故没有把 formal recursion误当 surjectivity。Mathematica检查全部 $\mathsf D_p$ factorization、trace compatibility、harmonic coefficient和 $\mathcal J_A=-2L_A$ normalization。

- [x] Action: 建立 harmonic-gauge PDE solutions 到 luminosity-radius Bondi polyhomogeneous histories 的 nonlinear map。
  Context: Kádár--Kehrberger 给出 semiglobal harmonic-gauge polyhomogeneity，但当前 action theorem 在 Bondi gauge。
  Check: `4d nonlinear gravity.md` sections 12.7--12.11。Input明确限制为 small KK harmonic vacuum class、fixed round conformal frame、fixed optical clock/BMS origin；依次解 exact eikonal、generator transport和 $R^4=\det\gamma/\det q$，得到 normalized nonlinear Bondi functor。Angular Jacobi matrix、cut determinant和 $\partial_\lambda R$ 的 smallness给出 explicit no-caustic exterior domain。Proposition 12.2证明 harmonic/Bondi compactifications之间是 polyhomogeneous $b$-diffeomorphism，mixed face indices落入 product/addition/primitive saturated hull；(12.18)--(12.19)给 finite-order conormal remainder和 local-Lipschitz estimate。用 physical $U,R$ level sets同步变换 cutoff后，EH+faces exact diffeomorphism invariant，finite-jet counterterms及 $\Theta,\Omega$ 的 pullback为 continuous $C^2$。不声称穿过 caustic、two-variable maximality或 uniform-$N$ convergence。Mathematica检查 $\lambda\mapsto R$ 保持 $g_{RR}=g_{RA}=0$及 determinant-root expansion。

- [x] Action: 判定 nonlinear/matter radial formal series 的 convergence、Borel summability或纯 asymptotic status。
  Context: fixed-$N$ theorem不蕴含 $N\to\infty$。
  Check: `all-order radial hierarchy.md` section 9。严格区分 polyhomogeneous asymptoticity、series convergence、Borel-jet realization和 Borel summability。自由 cut data取 $E_n=(n!)^2T$ 给 zero convergence radius，且 first Borel transform仍为 $\sum n!\zeta^n$，所以 formal hierarchy不可能推出 universal convergence/Borel-$1$；Borel extension只产生 nonunique smooth representative modulo $O(\rho^\infty)$，不自动解 PDE。Actual KK/Bondi bridge只给 every-fixed-$N$ remainder。独立的 action primitive bound $K!/\epsilon^{K+1}$ 排除当前 norms的 uniform-$N$ limit，故不能普遍交换 $N\to\infty$、$R\to\infty$、$\delta,\delta^2$。给出 exponential/$k!$ coefficient norm和 Gevrey-$\sigma$ criterion作为严格更小的 sufficient research categories，但 analytic continuation、Stokes和 Laplace-PDE estimates均未证明。Vacuum、massless和 massive timelike sectors分别给出 verdict；当前精确结论是 pure asymptotic。

- [x] Action: 扩展 actual-solution gate 到 coupled massless/massive matter及 generic endpoint tails。
  Context: 现有 small-data theorems只证明其他 gauge/norm 中的 nonempty solution classes。
  Check: `matter coupling.md` sections 9.1--9.7 与 Proposition 9.1。结论不是虚构一个统一 theorem，而是证明 gate 必须 stratify。Lindblad--Rodnianski/Kauffman--Lindblad 给 massless global Cauchy class，Ionescu--Pausader/LeFloch--Ma 给 massive EKG global/timelike class；每个 fixed $N$、compact $u$-slab 上，已有 nonlinear harmonic-to-Bondi functor连同 Maxwell radial-gauge primitive给 continuous actual map，mass-loss backreaction及 vacuum inclusion组成 commuting continuous diagram。Massive modified-scattering主项在 fixed-$u$ null face无 stationary point，pure null polyhomogeneous jet若存在则逐阶为零，但公开 nonlinear remainder theorem并非 all-order $O(r^{-\infty})$。Generic $1/u$ endpoint stratum保持 fundamental $\Omega$ finite，并固定 $M=M^\pm+(4u)^{-1}D_AD_BC^{(1)\pm AB}+\cdots$；Mathematica核验 news、mass tail、soft logarithm、radial gauge和 massive velocity gap。KK systems framework所需的新 matter weak-null logarithmic approximate solution已显式写出，但 coupled tame/Nash--Moser estimate、simultaneous massless+massive global theorem和 $i^\pm$ prescribed-tail preservation没有现成证明；因此 maximal source-supported gate是“global finite-slab + conditional $i^0$ + timelike massive profile”，而不是 arbitrary formal/two-sided endpoint surjectivity。这个 negative/stratified verdict解决了原问题的逻辑歧义，并把剩余 PDE work精确隔离，未把它冒充已证。

### P3：$i^0/i^\pm$ global action

- [x] Action: 证明 two-variable $(\Omega,\rho)$ index family 的 completeness/maximality，并构造 full relative corner counterterm complex。
  Context: `spatial infinity and endpoints.md` 目前给出 candidate normal-crossing class与 conditional restriction theorem。
  Check: `spatial infinity and endpoints.md` sections 12--13 与 Theorem 17.1。Literal two-variable product ansatz不完整：real blow-up产生 front、null、spatial三个 faces，$\Omega/(\Omega+\rho)$ 正是 smooth front-face coefficient。定义 $\operatorname{Sat}_N(\mathbf E_{\rm seed})$ 为对 finite products、$b$-derivatives、inverse-metric expansion、gauge/eikonal primitives、restriction/pushforward和两次 field variation闭合的最小 index triple，证明它在 fixed window内 locally finite且 operation-complete。Unrestricted poset中任意 admissible family都可加入高于 action/Hessian support的新实指数并保持 $C^2$，故不存在 category-independent maximal/maximum family；maximality只有在预设 discrete lattice后才有意义。构造全部 strata 的 incidence-relative complex $\mathcal C_{\rm rel}^p=\bigoplus_{|J|=r}\Omega^{p-r}(S_J)$、$\mathbb D=\delta_{\rm inc}+(-1)^rd$，显式给 bulk/face/corner differential并证明 $\mathbb D^2=0$。Normal homotopy逐 face 抽取 divergence，incidence mismatch下降到 corner；nonzero relative class作为 obstruction保留。Positive three-face remainder gaps给 $j=0,1,2$ uniform bound，从而 joint limit、iterated limits和 $C^2$ exchange一致。Mathematica检查 blown-up vector fields、resonant/nonresonant homotopy及 remainder primitives。

- [x] Action: 构造 coupled massive $i^\pm$ variational principle并消去 matter-dependent drag divergence。
  Context: null-only gravitational corner term不能处理 nonzero endpoint mass。
  Check: `spatial infinity and endpoints.md` section 14 与 Theorem 14.1。严格答案是 original no-edge category中的 no-go加一个 conditional enlarged template。Regulated coupled potential写成 $\Theta_T=\Theta_{\rm fin}+\log T\,\alpha_{\rm drag}+\Theta^m_{H^3}+o(1)$；若 $\Omega_{\rm drag}=\delta\alpha_{\rm drag}\neq0$，任意 existing-field $C^2$ scalar counterterm只加 $\delta B$、不能改变 $\Omega$，故不可能消去 divergence。引入 coupled Coulomb--$H^3$ data的 cotangent/Dollard collar action
  $S_{\rm edge,T}=\int ds[P_A\dot z^A-H_{\rm edge}-\log T\,\alpha_{{\rm drag},A}\dot z^A]$，
  可从同一 action给出 opposite two-form、momentum gluing及 total flux balance。它是充分的 conditional completion，但非已完成 Einstein--KG theorem：GLZ只给 universal coordinate-shift structure并把 massive coefficient交给 unpublished companion，Choi--Laddha--Puhm也明确把 separate drag term留待后续；因此 explicit nonlinear off-shell $\alpha_{\rm drag}$、combined $C^2$ estimate和 $i^-$ compatibility缺失。此项以“严格 counterterm no-go + 最小 enlarged construction + exact missing input”解决，未伪称已消去未知系数。

- [x] Action: 判定 antipodal matching 能否由 corner variation导出而非作为 regularity restriction。
  Context: multiplier action可强制 matching，但尚未由 bulk limit导出。
  Check: `spatial infinity and endpoints.md` section 15 与 Theorem 15.1。若 $\Phi_+^{i^0},\Phi_-^{i^0}$ 独立且 action无 cross-corner sector，则 mixed Hessian $\delta_+\delta_-S=0$，boundary EOM zero locus局部是 product；antipodal matching却是 diagonal graph，非平凡时二者不可能相等。Spatial-face field的两个 traces可因 Ashtekar--Hansen regularity/parity/fluxless restriction而匹配，但这是 configuration-space trace condition；spatial variation只导出 EOM和momentum/flux gluing。要把 configuration equality变成 boundary EOM必须显式加入 multiplier/cross coupling；或由 global PDE scattering map证明其 image落在 matching graph。故 matching不从 unrestricted bulk corner variation自发产生，给出所需 independence/no-go。

- [x] Action: 判定 generic $1/u$ tail 的 superrotation finite part是否存在 unique physical normalization。
  Context: minimal subtraction留下 $\mu$ dependence。
  Check: `spatial infinity and endpoints.md` section 16 与 Theorem 16.1。$H_Y^{\rm ren}$ obeys $\mu\partial_\mu H_Y^{\rm ren}=-\mathcal Q_Y^{\log}$，且 $H_Y^{\rm ren}\mapsto H_Y^{\rm ren}+c\mathcal Q_Y^{\log}$ 等价于 $\mu\mapsto e^{-c}\mu$ 或 finite local tail-corner term。Locality和 Poincaré covariance均允许该 shift；$i^0$ matching至多固定两侧 relative scale而不能固定 common absolute scale，$i^\pm$ 可引入 state-dependent impact parameter却不给 universal scale；log soft theorem只固定 $\log\omega$ coefficient $\mathcal Q_Y^{\log}$，不固定 reference scale。故 generic sector的 finite parts形成 affine torsor $H_Y^{\rm ren}+\mathbb R\mathcal Q_Y^{\log}$，scheme-independent datum是 anomaly/RG equation。Global Lorentz pairing为零，所以该子群无此 ambiguity，而不是 criteria替它选了 normalization。Mathematica检查 RG derivative和 scale shift。

### P4：reduction 与 enlarged asymptotic symmetries

- [x] Action: 完成 3D Maxwell full renormalized $\Omega$ 的 zero-mode quotient和 reduced phase space。
  Context: large-$U(1)$ cut charges已知，但所有 Coulomb/radiative zero modes尚未分类。
  Check: `3d Maxwell.md` section 14 与 Theorem 14.1。先证明 $\Omega_{\mathscr I}$ 只是两 cuts 之间的 flux而非独立 phase-space form；完整 null-lid form是 $\int drd\phi\,\delta(\partial_rA_\phi/r)\wedge\delta A_\phi$。对任意 compact characteristic test variation，kernel equation为 $2r\partial_rv-v=0$，fixed inner pullback强制 $v=0$；补上 homogeneous $A_u$ 后，parent-space kernel恰为 boundary-trivial proper gauge。Radial constraint给 $\partial_\phi\Pi=E-E_{\rm in}$，逐 Fourier mode分开 nonzero large-$U(1)$、constant reducibility charge、fixed total-charge leaf和 annular $(Q_0,\Pi_0)$ pair。Flux-only kernel严格等于 $\int_Ig\,du=0$ 的 endpoint-trivial $G$ gauge；common $C$ shift与 memory配对，只有 fixed-memory polarization才成为 kernel。Proper-gauge、zero-integral-$G$ 和 fixed-memory quotients均由 continuous complemented slices给出 Hausdorff Fréchet topology；每个 fixed-charge leaf weakly symplectic，跨 leaves 则必须加入 conjugate edge phase。Mathematica检查 Wronskian identity、$\sqrt r$ kernel、affine endpoint pair和 soft-memory contraction。

- [x] Action: 为 Campiglia--Peraza sphere sector 构造 local boundary action，或证明其 nonlocal symplectic form没有此类 local primitive。
  Context: canonical generalized BMS phase space已知，但不是当前 bulk action的 local boundary completion。
  Check: `dynamical celestial metric.md` section 11 与 Theorem 11.1。先纠正前提：Campiglia--Peraza eqs. (5.22)--(5.23) 已给 nonlocal field-space primitive。Round-sphere endpoint map显式为 $c_\pm=-[D^2(D^2+2)]^{-1}D^AD^BC^\pm_{AB}$，kernel是 $\ell=0,1$；uniformization linearization为 $\delta\psi=-\frac12(D^2+2)^{-1}\delta R$，kernel是 $\ell=1$。因此 original-field、finite-sphere-jet category不可能有 local primitive：其 harmonic symbol是 polynomial，而 $\Omega_{\rm CP}$ 的 mixed endpoint/$q$ block含 $[\lambda_\ell(\lambda_\ell-2)]^{-1}$。允许 auxiliaries后，引入 $(\psi,T_{AB},c_\pm)$、uniformization/Geroch/electric-endpoint constraints和 local $u$-moment field，构造 explicit first-order parent action；constraint reduction精确恢复 $\delta\Theta_{\rm CP}=\Omega_{\rm CP}$。Bulk trace/moment multipliers给 $C^\pm=\iota_\pm^*C$、${}^1N=\int uN$，interface variation给 $\pi_{\rm bulk}^{AB}+\sigma[p^{AB}+((\mathcal D_qT)^*\Pi)^{AB}]=0$。该 parent只在 enlarged fixed-area sphere category局域，不是 physical 4D-metric local action，也尚未打开 generic $|u|^{-2}$ tail。Mathematica检查 spin-2 Hessian eigenidentity、linearized Liouville inverse和 canonical exterior derivative。

- [x] Action: 推导 edge momentum的 bulk gluing equation。
  Context: cotangent lift使 Diff$(S^2)$ kinematically canonical，但 $\pi_q^{AB}$ 尚未由 gravity确定。
  Check: `dynamical celestial metric.md` section 12 与 Theorem 12.1。固定 finite-$u$、fixed-area、Freidel--Riello accessible off-shell domain及 GLZ Cauchy-corner polarization后，恢复标准归一化得到
  $p_{\rm grav}^{AB}=-(64\pi G)^{-1}\int_Idu(2R-\Delta)C^{AB}-(32\pi G)^{-1}[uC^{AB}-D^{AB}]_-^+$；前项直接来自 FR renormalized bulk action，后项只在 GLZ solution pullback上成立，并由 explicit auxiliary-collar transgression action实现，未冒充 GLZ off-shell scalar counterterm。Cotangent edge action与 interface multiplier的四组变分给 $\dot Q=0,\dot P=0,P+\Lambda=0,p_{\rm grav}-\Lambda=0$，故 $P_{\rm ren}^{AB}+p_{\rm grav}^{AB}=0$ 是 endpoint EOM，且 gluing pullback上 $\delta p_{\rm grav}\wedge\delta q+\delta P\wedge\delta Q=0$。Cutoff $\Omega=\epsilon$处加入 independent $(Q,\mathcal N)$ 的 Wess--Zumino transgression，endpoint two-form恰为 $-(32\pi G\epsilon)^{-1}\delta q^{AB}\wedge\delta N_{AB}$，抵消 FPS leading obstruction；这通过改变 field category和固定 conformal/Bondi frame实现，不违反 original-field local-covariant no-go。Finite corner canonical transformations相反地平移两侧 momentum，故 gluing constraint scheme invariant而各 momentum本身不是。Mathematica检查 endpoint elimination、two-form cancellation和 WZ wedge sign；Pandoc与 whitespace检查通过。All-order physical-covariant transgression、unique edge Hamiltonian、generic endpoint tails和 punctures明确留在后续项。

- [x] Action: 建立 meromorphic extended-BMS puncture action和 counterterms。
  Context: punctures把 $S^2$ 改成有额外 boundary circles的 manifold。
  Check: `dynamical celestial metric.md` section 13 与 Theorem 13.1，并同步更新 `charges and Ward identities.md` sections 9--10。严格结论是 nonunique defect completion而非 smooth-sphere symmetry。对固定 puncture set，$Y^w=O(w^{-n})$ 使 inhomogeneous shear含 $D_w^3Y^w=O(w^{-n-3})$；且 $[w^{-m}\partial_w,w^{-n}\partial_w]=(m-n)w^{-m-n-1}\partial_w$，故任何 fixed pole cap都不闭合。定义 finite Laurent/polyhomogeneous strata及其 strict direct limit；每个 finite stratum的 angular density按 $\rho^\alpha(\log\rho)^ke^{im\phi}$展开，只有 $m=0$发散，explicit primitive $\mathcal P_{\alpha k}$给全部 power/log small-circle counterterms，mixed $(\Omega,\rho)$项由 incidence-relative corner descent处理。Bulk leakage用 auxiliary-$\tau$ inflow transgression抵消；Virasoro cotangent/coadjoint-orbit collar action及 configuration multiplier从 endpoint variation给 $\mathcal T_i+\mathcal J_{{\rm bulk},i}^{\rm ren}=0$。Finite charge是 bulk Hadamard finite part加 $\sum_i\operatorname{Res}(Y\mathcal T_i\,dw)$；optional Gelfand--Fuchs term给 $K_i(L_m,L_n)=c_i(m^3-m)\delta_{m+n,0}/12$，同时保留 bulk field-dependent extension。Sewing要求 orientation-reversed Laurent-jet/frame matching、opposite momentum、equal levels、projective-connection Schwarzian matching及 counterterm cancellation；否则 seam是实际 defect。Mathematica检查 pole bracket、third derivative、$w^a$ Schwarzian、counterterm primitives、Bol covariance、mode cocycle和Jacobi；Pandoc/whitespace通过。Nguyen--Salzer source明确留下 puncture holonomy且未从 EH action确定 $t$，所以 $(b_i,c_i,\mathfrak p_i)$、monodromy与 finite scheme必须作为额外数据；不存在 uniform finite counterterm list或唯一 extended-BMS phase space。

### P5：quantum completion

- [x] Action: 构造 BRST-stable polyhomogeneous boundary conditions、ghost/edge action和renormalized measure。
  Context: classical proper-gauge degeneracy不等于 quantum BRST theorem。
  Check: `charges and Ward identities.md` section 15 与 Theorem 15.1。先限定唯一有定义的量子范畴：fixed regulator、finite radial/Laurent window、fixed loop/derivative order的 Lorentzian pAQFT/BV--BFV gravitational EFT；“measure”严格指 formal renormalized time-ordered products/local $S$-matrices，不是不存在的无限维 Lebesgue measure。Ghost leading map的 kernel定义 proper ideal，large BMS/generalized/puncture transformations保留为 BRST cohomology上的 global action。Bulk $sg=\mathcal L_cg,sc=c\cdot\nabla c$，smooth edge采用 fixed-area Diff$(S^2)$ cotangent lift，puncture采用 $sf=\eta f',s\eta=\eta\eta',s\mathcal T=\eta\mathcal T'+2\eta'\mathcal T-c\eta'''/12$；Sage exterior algebra检查 $s^2f=s^2\mathcal T=0$。Metric/ghost/antifield index families对 products、$b$-derivatives、Lie derivative/bracket、pullback、incidence及两次 variation作共同 saturation，给 finite-window BRST-stable class。明确写出 gauge-fixing fermion、BV canonical gauge fixing及 modified classical identity $\iota_Q\omega_{\rm BV}=\delta S_{\rm BV}+\pi^*\alpha_{\rm BFV}$；opposite orientations、edge momentum、antipodal ghost matching和 puncture sewing消去 internal BFV charges。Quantum failure由 relative class $[\mathcal A_{\rm BV}]\in H_{\rm rel}^{1,4}(s|d)$测量；只有该类消失时 $\widehat s_{\rm ren}^2=0$。Bulk local cohomology、boundary/Weyl、puncture Gelfand--Fuchs及 IR anomaly严格分开。Antipodal matching在 $c_+=\mathcal A^*c_-$ 时形成 BRST ideal。结论是 order-by-order conditional theorem；full null/punctured Green hyperbolicity、具体 matter spectrum的 relative anomaly cancellation、nonperturbative measure与 uniform all-loop/infinite-pole renormalization明确未声称。

- [x] Action: 在明确的 dressed或inclusive IR prescription中证明 global Ward identity。
  Context: undressed 4D gravitational Fock $S$-matrix infrared divergent。
  Check: `charges and Ward identities.md` section 16 与 Theorem 16.1。选定 BMS-compatible Faddeev--Kulish dressed operator
  $\mathcal S_{\rm dr}=\lim_{\lambda\to0}\mathscr W_+^\dagger\mathcal S_\lambda\mathscr W_-$，并把 external charge 分成 $\mathscr I^\pm$ soft/null-hard、$i^\pm$ dressed-hard和 puncture residue。Regulated BV change of variables给出 exact anomaly-valued identity：零右端之外分别保留 relative-BV、IR dressing、$i^0$ tail matching、$i^\pm$ hard/corner gluing和 puncture sewing五类 remainder。Ordinary supertranslation在 conditional massless matched FK sector、QME无 anomaly时给 zero-remainder Ward theorem；generic $1/u$-tail superrotation则不能无条件置零，因为 arXiv:2309.11220 明确只假设尚未证明的 angular-momentum-aspect matching，并同样假设 $H^3$ massive charge等于 null top-corner charge。先以 Goldstone cloud factor从 $\mathcal S_{\rm dr}$ 重构 finite-resolution resolved amplitude，再在 $\lambda\ll\omega\ll E_{\rm hard}$ 的 one-loop/first-log window中用三个 projector逐项分离 $S^{(0)}$、finite $S^{(1)}$ 和 $S^{(\log)}$；没有把标准 soft theorem错误地直接施加到 cloud-stripped hard amplitude或把三个 projector冒充为 all-loop formula。$C^{(0)}\mathcal N^{(0)}$给 $\widehat\sigma'\widehat S^{(0)}$，dressed $i^\pm$ charge给 $S^{(1)J}\sigma$，puncture residue只在选定 defect theory后是 contour Ward insertion。Mathematica检查三个 projector、finite-part RG equation和 charge scale shift。此项以“positive ordinary-BMS branch + exact generic-sector obstruction identity”闭合，未把文献中明确假设的 matching冒充为证明。

## Backlog closure audit

As of 2026-07-25，both the Paper-I extraction package above and the completed research-question backlog below have no unchecked action。A checked research-question item has exactly one of the following meanings：

1. a positive theorem was proved on a declared domain；
2. a sufficient enlarged/conditional construction was given with every extra hypothesis displayed；
3. an obstruction or nonuniqueness theorem showed that the requested stronger object does not exist in the declared category，and the minimal missing external input was identified。

It does not mean that the following independent research problems have disappeared：

- global realization of every formal nonlinear polyhomogeneous tower；
- a fully coupled action-derived massive $i^\pm$ drag one-form；
- generic-tail angular-momentum-aspect matching through $i^0$；
- a unique puncture/meromorphic superrotation completion；
- null/punctured Green hyperbolicity、relative quantum-anomaly cancellation and a nonperturbative gravitational measure。

These are now theorem hypotheses or explicit obstruction outputs，not hidden unchecked steps in the action-first chain。
