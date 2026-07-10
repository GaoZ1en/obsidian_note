# CPS-pAQFT quantum perturbation theory: conceptual companion

日期：2026-07-09

## 0. Direct verdict

本文是概念伴随笔记和一致性后端，不是默认的实际计算 pipeline。固定背景标量的 loop 计算统一使用 `../cps canonical quantization to loop corrections.md` 中的 CPS-normalized modes、propagators 和 Wick contractions；本笔记负责说明这些计算对应的 off-shell algebra、local renormalization 和 Ward constraints。

具体计算统一取 $\hbar=1$。下文保留的显式 $\hbar$ 只用于 formal loop grading，在识别图的 loop order 后设为一。边界条件 $\mathcal B$、边界作用量和允许场空间共同定义理论；改变 $\mathcal B$ 会改变 CPS、mode spectrum 和 propagators。Gauge theory、BV-BRST 和 dynamical gravity 暂不属于当前范围。

在这个职责分工下，概念链条是：

$$\begin{align}
\text{CPS}
\;\longrightarrow\;
\text{free Peierls/CCR algebra}
\;\longrightarrow\;
\text{renormalized Bogoliubov interacting fields}
\;\longrightarrow\;
\text{Ward identities, charges, anomalies}.
\end{align}$$

Rooted-tree retarded solution 是这套结构的 formal classical sector，记作

$$\begin{align}
\hbar^0
\end{align}$$

具体计算虽取 $\hbar=1$，tree/loop order 仍由图拓扑区分。量子微扰的一致性数据来自：

1. free CPS symplectic form 的 inverse，即 Peierls causal propagator；
2. 由它定义的 CCR/\(\star\)-product；
3. renormalized time-ordered products；
4. Bogoliubov retarded products；
5. Ward identities 和 possible anomalies。

相对于 classical solution map

$$\begin{align}
p_g:\mathcal S_0\to\mathcal S_g
\end{align}$$

一致性后端使用 interacting quantum observable

$$\begin{align}
R_V(F) =\frac{\hbar}{i} \left. \frac{d}{d\lambda} \left[ S(V)^{-1}_{\star}\star S(V+\lambda F) \right] \right|_{\lambda=0},
\end{align}$$

其中

$$\begin{align}
S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\end{align}$$

等价地，对线性插入 \(F\) 可把导数记作

$$\begin{align}
R_V(F) =S(V)^{-1}_{\star}\star\big(S(V)\cdot_T F\big),
\end{align}$$

但严格定义应使用上面的 relative \(S\)-matrix derivative。

## 1. Classical CPS data

给定背景 spacetime $M$、作为理论定义一部分的边界条件 $\mathcal B$、相应边界作用量和 classical action

$$\begin{align}
S[\phi]=S_0[\phi]+V[\phi].
\end{align}$$

自由二次 action 给线性算子

$$\begin{align}
P\phi=0.
\end{align}$$

在允许的边界条件下，假设存在 retarded/advanced Green operators

$$\begin{align}
P E_R=PE_A=\mathrm{id},
\end{align}$$

并定义 causal propagator

$$\begin{align}
E:=E_R-E_A.
\end{align}$$

Classical CPS symplectic form 是

$$\begin{align}
\Omega_\Sigma(\delta_1\phi,\delta_2\phi) =\int_\Sigma \omega(\phi;\delta_1\phi,\delta_2\phi).
\end{align}$$

在线性理论中，\(E\) 是 \(\Omega\) 的 inverse，意义是：

$$\begin{align}
\{F,G\}_{\rm P} =\left\langle F^{(1)}, E\,G^{(1)}\right\rangle.
\end{align}$$

对 smeared field

$$\begin{align}
\Phi(f)=\int_M f\phi,
\end{align}$$

有

$$\begin{align}
\{\Phi(f),\Phi(g)\}_{\rm P} =E(f,g).
\end{align}$$

这是 CPS 在量子微扰论中的第一层作用：

> CPS 不只是给 mode normalization；它给出 Peierls bracket，也就是量子代数的 commutator kernel。

## 2. Free quantum algebra

选择一个 Hadamard two-point function 或 Hadamard parametrix \(H\)，满足 antisymmetric part 固定为 causal propagator：

$$\begin{align}
H(x,y)-H(y,x)=iE(x,y).
\end{align}$$

定义 Wick/\(\star\)-product。对 regular functionals 可写为

$$\begin{align}
F\star_H G =m\circ \exp\left[ \hbar\left\langle H, \frac{\delta}{\delta\phi}\otimes \frac{\delta}{\delta\phi} \right\rangle \right] (F\otimes G),
\end{align}$$

其中 \(m\) 是 pointwise multiplication。归一化条件是

$$\begin{align}
[\Phi(f),\Phi(g)]_{\star_H} =i\hbar E(f,g).
\end{align}$$

注意：

- \(\Omega\) 或 \(E\) 固定 commutator；
- \(H\) 还包含 state/normal-ordering choice；
- 不同 \(H\) 给同构的 Wick algebras，但 normal ordering 形式不同。

因此 CPS 给出 canonical algebra 的 symplectic/commutator 部分；Hadamard choice 给出具体 Wick representation。

## 3. Time-ordered products and renormalization

量子微扰还需要 time-ordered product

$$\begin{align}
T_n(F_1,\ldots,F_n).
\end{align}$$

对非重合支撑的 regular functionals，它由 Feynman contraction 给出。对 local functionals，点重合处需要 renormalized extension。

记

$$\begin{align}
F\cdot_T G:=T_2(F,G),
\end{align}$$

并定义 time-ordered exponential

$$\begin{align}
S(V) =\exp_T\left(\frac{i}{\hbar}V\right) =\sum_{n\ge0}\frac{1}{n!} \left(\frac{i}{\hbar}\right)^n T_n(V^{\otimes n}).
\end{align}$$

Time-ordered products 必须满足：

1. causal factorization；
2. microlocal spectrum condition；
3. locality/covariance, when applicable；
4. unitarity；
5. field independence；
6. Action Ward identity；
7. renormalization freedom controlled by local counterterms。

这是 quantum perturbation layer 的真正位置。Classical tree expansion 不包含这些 extension/counterterm choices。

## 4. Interacting observables: Bogoliubov map

Interaction \(V\) 先取 compact support，或加 cutoff \(\chi\)：

$$\begin{align}
V_\chi[\phi]=\int_M \chi(x)\mathcal L_{\rm int}(x).
\end{align}$$

定义 relative \(S\)-matrix：

$$\begin{align}
S_V(F):=S(V)^{-1}_\star\star S(V+F).
\end{align}$$

Interacting observable 定义为

$$\begin{align}
R_V(F) =\frac{\hbar}{i} \left. \frac{d}{d\lambda}S_V(\lambda F) \right|_{\lambda=0}.
\end{align}$$

展开为 retarded products：

$$\begin{align}
R_V(F) =\sum_{n\ge0}\frac{1}{n!} R_{n,1}(V^{\otimes n};F).
\end{align}$$

这个公式取代了单纯的 classical solution map。它同时包含：

- retarded support；
- time ordering；
- \(\star\)-inverse；
- quantum contractions；
- renormalization。

Bogoliubov map 首先定义在 off-shell functionals 上。若 time-ordered products 满足 field-equation normalization 和 Action Ward Identity，则

$$\begin{align}
R_V\!\left(\left\langle\frac{\delta S_0}{\delta\phi},f\right\rangle+\left\langle\frac{\delta V}{\delta\phi},f\right\rangle\right)
=\left\langle\frac{\delta S_0}{\delta\phi},f\right\rangle.
\end{align}$$

只有在商掉 free EOM ideal 之后，右端才等于零。因此 $R_V(\delta(S_0+V)/\delta\phi)=0$ 是 on-shell quotient statement，不是 off-shell identity；composite-field normalization、cutoff derivatives 和 boundary terms 仍须按具体例子加入。

## 5. Classical limit and tree diagrams

当 \(\hbar\to0\) 时，

$$\begin{align}
R_V(F) =R_V^{\rm cl}(F)+O(\hbar).
\end{align}$$

这里 \(R_V^{\rm cl}\) 等于 classical retarded Moller map 对 observable 的作用：

$$\begin{align}
R_V^{\rm cl}(F)=F\circ r_V,
\end{align}$$

其中 \(r_V\) 是由 interacting EOM 到 free EOM 的 retarded classical map，或其 inverse convention。

因此：

$$\begin{align}
R_V(F) = \text{classical retarded trees} +\hbar\,\text{one-loop} +\hbar^2\,\text{two-loop} +\cdots.
\end{align}$$

之前的 rooted-tree diagrammatics 正是

$$\begin{align}
R_V(F)\big|_{\hbar^0}.
\end{align}$$

它不是错的；它只是 quantum interacting observable 的 classical shadow。

## 6. Where CPS enters nontrivially

CPS 在这套量子 formalism 中至少有五个明确作用。

### 6.1 It defines the Peierls bracket

$$\begin{align}
\Omega_\Sigma^{-1}=E.
\end{align}$$

这决定

$$\begin{align}
[\Phi(f),\Phi(g)]=i\hbar E(f,g).
\end{align}$$

没有这一步，\(\star\)-product 的 antisymmetric part 没有 canonical 来源。

### 6.2 It fixes mode normalization

若

$$\begin{align}
\Omega_0=-i\sum_I\delta a_I\wedge\delta a_I^*,
\end{align}$$

则

$$\begin{align}
[\hat a_I,\hat a_J^\dagger]=\delta_{IJ}.
\end{align}$$

散射振幅中的 external state normalization、LSZ residue、AdS normal mode algebra 都依赖这一点。

### 6.3 It controls boundary conditions

Boundary condition 决定：

1. allowed phase space；
2. symplectic flux 是否消失；
3. \(E_R,E_A,E\) 是否存在；
4. Hadamard two-point functions 的 admissible class；
5. possible edge modes and boundary charges。

在 AdS 或 finite boundary 问题中，这一步不是装饰，而是量子代数定义的一部分。

### 6.4 It detects degeneracy and constraints

若 \(\Omega\) 有 kernel，则必须：

- quotient proper gauge；
- or use BV-BRST；
- or keep edge/large gauge modes。

没有处理 kernel 时，\(\Omega^{-1}\) 不存在，\(\star\)-product 也无定义。

### 6.5 It provides the charge variation

Classically:

$$\begin{align}
\delta H_\lambda=\iota_{X_\lambda}\Omega.
\end{align}$$

Quantum mechanically, this becomes Ward identity and charge commutator 的 classical input。

## 7. Local Ward identities and conditional quantum charges

设 classical symmetry variation 为

$$\begin{align}
\delta_\lambda\phi=X_\lambda\phi.
\end{align}$$

Classical Noether current 满足

$$\begin{align}
\nabla_\mu J_\lambda^\mu =-E(\phi)X_\lambda\phi
\end{align}$$

up to boundary terms and improvement terms。只有当 $X_\lambda$ 保持理论定义的边界条件且 $\iota_{X_\lambda}\Omega$ 在所选 phase space 上是 exact one-form 时，classical charge 才存在。量子理论中先定义 local interacting current

$$\begin{align}
J_{\lambda,V}^{\mu} =R_V(J_\lambda^\mu)+J_{\lambda,\rm ct}^{\mu}.
\end{align}$$

Counterterm $J_{\lambda,\rm ct}^{\mu}$ 是 renormalization scheme 和 Ward normalization 的一部分。选择 Ward-preserving normalization 后，on-shell local identity 写成

$$\begin{align}
\nabla_\mu J_{\lambda,V}^{\mu}=a_{\lambda,V}+b_{\lambda,V},
\end{align}$$

其中 $a_{\lambda,V}$ 是 genuine anomaly density，$b_{\lambda,V}$ 是 switching function 或固定边界数据造成的 explicit breaking。把这个 identity 插入 time-ordered products 时才出现 contact terms；这些 contact terms 生成其他 insertions 的对称变换，不是额外的守恒破坏。

对边界为 $\Sigma_2-\Sigma_1+\mathcal T$ 的区域 $\mathcal R$，真正的 integrated statement 是 balance law

$$\begin{align}
Q_{\lambda,V}^{\rm ren}[\Sigma_2]-Q_{\lambda,V}^{\rm ren}[\Sigma_1]
+\int_{\mathcal T}d\Sigma_\mu\,J_{\lambda,V}^{\mu}
=\int_{\mathcal R}d^dx\,(a_{\lambda,V}+b_{\lambda,V}).
\end{align}$$

只有当 surface integral finite 或存在 controlled smeared limit、adiabatic/IR limit 存在、operator domain 已指定，并且 $a=b=0$ 与 $\mathcal T$ flux vanishes 时，integrated charge 才与 $\Sigma$ 无关并可作为 global generator：

$$\begin{align}
\delta_\lambda R_V(F)=i\left[Q_{\lambda,V}^{\rm ren},R_V(F)\right]_\star,
\end{align}$$

这里已经使用 $\hbar=1$。否则 local Ward identity 和 balance law 仍有意义，但不能声称已经构造出 integrated symmetry generator。ABJ 和 boundary anomaly 属于 local Ward layer；它们不可能从 classical tree solution 本身产生。

## 8. Scattering, correlators, and the adiabatic limit

在 flat spacetime 且有合适 mass gap/IR control 时，可尝试移除 cutoff：

$$\begin{align}
\chi\to1.
\end{align}$$

散射矩阵由 \(S(V)\) 或相对 \(S\)-matrix 给出。Correlation functions 由 state \(\omega\) 作用于 interacting observables：

$$\begin{align}
\omega\big(R_V(F_1)\star\cdots\star R_V(F_n)\big).
\end{align}$$

普通 Feynman diagrams 的来源：

- vertices 来自 \(V\)；
- propagators 来自 time-ordered contractions；
- commutators/causal support 来自 \(E\)；
- loops 来自 \(\star\)- and \(T\)-contractions；
- counterterms 来自 renormalized \(T_n\)。

Tree amplitudes 是 \(\hbar^0\) 或 leading connected contribution；loop amplitudes 是更高 \(\hbar\)。

## 9. Deferred scope marker: gauge theory and gravity

以下内容仅保留为未来扩展的范围提示，不属于当前 formalism 的 object chain、examples 或 completion criteria。

对 gauge theory 或 gravity，上述 formalism 必须升级为 BV-BRST。

原因：

1. classical \(\Omega\) presymplectic，有 gauge kernel；
2. linearized operator gauge-degenerate，不可直接取 inverse；
3. ghost/antifield sector 参与 Ward identities；
4. physical observables 是 BRST cohomology；
5. anomalies 是 quantum master equation 的 obstruction。

BV version 的层级是：

$$\begin{align}
\text{BV phase space} \rightarrow
\text{gauge-fixed propagators} \rightarrow
\text{BRST-invariant time-ordered products} \rightarrow
\text{quantum master Ward identities}.
\end{align}$$

对引力，还要额外处理：

- diffeomorphism charge；
- boundary/corner symplectic structure；
- edge modes；
- asymptotic symmetry algebra；
- possible central extensions and anomalies。

## 10. AdS and boundaries

AdS 中必须先解决 classical CPS boundary problem：

1. choose standard/alternative/mixed boundary condition；
2. add necessary boundary counterterms to make variational principle well-defined；
3. ensure symplectic flux condition；
4. define \(E_R,E_A\) respecting boundary condition；
5. choose admissible Hadamard two-point function；
6. define renormalized \(T_n\) with boundary-compatible extensions；
7. treat boundary/local counterterms and edge modes。

然后才能定义

$$\begin{align}
R_V(F)
\end{align}$$

和 interacting charges。

对 global AdS resonances，classical retarded tree layer 仍然存在，但 long-time dynamics 需要 resonant normal form。Quantum pAQFT layer 还要额外面对：

- discrete mode sums；
- possible secular terms in real-time perturbation；
- boundary counterterms；
- finite-volume-like perturbation theory；
- relation to CFT boundary correlators。

## 11. Relation to previous tree/CPS notes

旧 formalism：

$$\begin{align}
p_g:\mathcal S_0\to\mathcal S_g, \qquad \Omega_{\rm eff}=p_g^*\Omega_g.
\end{align}$$

新 formalism：

$$\begin{align}
\Omega_0
\Rightarrow E
\Rightarrow \star_H
\Rightarrow S(V)
\Rightarrow R_V(F)
\Rightarrow \text{Ward identity}.
\end{align}$$

二者关系：

$$\begin{align}
R_V(F)\big|_{\hbar^0} =F\circ r_V.
\end{align}$$

因此旧 notes 保留为：

- classical/tree layer；
- finite-time retarded solution construction；
- CPS mode normalization；
- check of boundary conditions and resonances。

新 note 增加：

- quantum algebra；
- time-ordered products；
- loops；
- renormalization；
- Ward identities/anomalies。

## 12. Minimal axioms for the program

一个模型要进入这套 CPS-pAQFT formalism，至少要给出以下数据。

### Classical data

1. \(S_0,V\)；
2. allowed configurations；
3. boundary conditions；
4. CPS \(\Omega\)；
5. retarded/advanced Green operators；
6. Peierls bracket \(E\)。

### Quantum free algebra

1. Hadamard two-point function \(H\)；
2. \(\star_H\)-product；
3. field algebra and commutator；
4. state or representation, if needed。

### Perturbative interaction

1. compactly supported \(V_\chi\)；
2. renormalized \(T_n\)；
3. \(S(V)\)；
4. \(R_V(F)\)；
5. adiabatic limit or finite-region interpretation。

### Symmetry layer

1. classical \(X_\lambda\)；
2. classical current \(J_\lambda^\mu\)；
3. renormalized current \(J_{\lambda,V}^{\mu}\)；
4. Ward identity；
5. anomaly \(\mathcal A_\lambda\)。

## 13. pAQFT backend audit workflow

实际 diagram calculation 使用 canonical/Wick pipeline。对每个模型，本笔记只做以下 consistency audit：

1. Check that the theory-defining $\mathcal B$ gives a well-posed variational problem, closed CPS, and boundary-compatible $E$.
2. Check that the canonical mode sum has antisymmetric part $iE$ and that the chosen $G_F$ or $G_E$ obeys the same $\mathcal B$.
3. Check that loop ambiguities are precisely allowed local bulk/boundary counterterms.
4. Check PPA/split independence after matched renormalization conditions when a quadratic term is moved between $S_0$ and $V$.
5. Check the off-shell EOM, on-shell quotient, Schwinger-Dyson identity, and local Ward identity.
6. If a global charge is claimed, separately check integrability, finiteness, adiabatic/IR limits, and flux.
7. Only then take scattering, AdS boundary, or long-time limits.

## 14. First check: 4d flat \(\phi^3/\phi^4\)

The first check uses the simplest nontrivial setting:

$$\begin{align}
V =-\int d^4x\,\chi(x) \left( \frac{g_3}{3!}\phi^3 +\frac{g_4}{4!}\phi^4 \right).
\end{align}$$

The check is recorded in `flat4_phi3_phi4_paqft_check.md`. It verifies:

1. \(R_V(\phi(x))|_{\hbar^0}\) reproduces retarded classical \(\phi^3/\phi^4\) tree solution.
2. \(S(V)\) gives the standard four-point tree amplitude:

$$\begin{align}
\mathcal M_4^{\rm tree} = -g_4 -g_3^2 \left[ \frac{1}{s-m^2} +\frac{1}{t-m^2} +\frac{1}{u-m^2} \right]
\end{align}$$

   with the usual \(i\epsilon\) prescription and sign convention tied to \(V\).
3. One-loop corrections arise from contractions in \(T_n\), not from the classical tree map.
4. CPS enters by fixing

$$\begin{align}
[\hat\phi(f),\hat\phi(g)]=i\hbar E(f,g)
\end{align}$$

   and therefore external normalization and propagator antisymmetric part.

This check makes the following consistency requirements mandatory:

1. The interaction functional \(V\) must carry the action sign. For

$$\begin{align}
S=S_0-\int\left(\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4\right),
\end{align}$$

   one uses

$$\begin{align}
V=-\int\left(\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4\right).
\end{align}$$

   This simultaneously gives the retarded EOM sign and the standard \(-ig\) Feynman vertex.
2. CPS fixes \(E\), not the full Wick two-point function:

$$\begin{align}
\Omega\Rightarrow E, \qquad (E,H)\Rightarrow \star_H.
\end{align}$$

   Treating \(H\) as determined by \(\Omega\) is incorrect.
3. Classical rooted trees and Feynman tree amplitudes are related but not identical objects. The former are \(\hbar^0\) terms in the Bogoliubov interacting field; the latter arise after time ordering, external contractions, and LSZ/amputation.
4. A switching function \(\chi\) is part of the local construction. Exact spacetime Ward identities hold either with explicit \(\partial\chi\) breaking terms or after a controlled adiabatic limit.

If future checks fail, the most likely failure points are:

- wrong \(V\) sign relative to EOM convention；
- using \(\Omega_0\) without proving it defines the correct \(E\) under the chosen boundary conditions；
- ignoring cutoff/adiabatic-limit effects；
- forgetting that local time-ordered products require renormalized extension at coincident points。

## 15. Second check: quantum EOM and Ward identity

The second check is recorded in `flat4_phi3_phi4_quantum_eom_ward_check.md`. It tests whether the formalism can express the interacting equation of motion and translation Ward identity, not just scattering amplitudes.

For the same model, the desired renormalized quantum EOM is

$$\begin{align}
K R_V(\phi) = R_V\!\left( \frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3 \right) +\text{local counterterm insertions}.
\end{align}$$

Off shell, the equivalent smeared identity is

$$\begin{align}
R_V\!\left( \left\langle \frac{\delta S_0}{\delta\phi},f\right\rangle +\left\langle \frac{\delta V}{\delta\phi},f\right\rangle \right)
=\left\langle \frac{\delta S_0}{\delta\phi},f\right\rangle
\end{align}$$

after imposing the Action Ward Identity and choosing renormalized composite fields. Its right-hand side vanishes only in the free-EOM quotient. The check confirms:

1. At \(\hbar^0\), this reduces to the classical retarded EOM and the previous rooted-tree solution.
2. Acting with \(K_x\) on the two-point function gives the Schwinger-Dyson equation:

$$\begin{align}
K_xG_2(x,y) = i\delta^{(4)}(x-y) +\left\langle T\,R_V\!\left[ \frac{g_3}{2}\phi(x)^2+\frac{g_4}{3!}\phi(x)^3 \right]R_V(\phi(y)) \right\rangle +\text{ct}.
\end{align}$$

3. The \(\phi^4\) tadpole and \(\phi^3\) bubble are generated by renormalized time-ordered contractions, not by the classical tree map.
4. Translation Ward identities with compact switching satisfy

$$\begin{align}
\partial_\mu T^{\mu\nu}_{V,\chi} = -(\partial^\nu\chi)\mathcal L_{\rm int,V}.
\end{align}$$

   This is the on-shell local identity after counterterms have been included in the renormalized stress tensor. Time-ordered insertions add contact terms. Exact global translation conservation additionally requires a controlled adiabatic/infrared limit and vanishing flux.

This check adds a stricter requirement to the formalism:

> A usable CPS-pAQFT formalism must define renormalized local composite fields, not only \(R_V(F)\) for regular or linear observables.

The backend consistency ladder is therefore:

$$\begin{align}
\Omega
\Rightarrow E
\Rightarrow \star_H
\Rightarrow T_n^{\rm ren}
\Rightarrow R_V(F)
\Rightarrow
\text{renormalized EOM and Ward identities}.
\end{align}$$

For scalar $\phi^3/\phi^4$ in flat spacetime there is no local translation anomaly; remaining local normalization freedom is absorbed into counterterms or improvements. Gauge theory, BV-BRST, and gravity are outside the present scope. Boundary flux remains a separate condition in bounded scalar theories.

## 16. Third check: stress tensor and translation charge

The third check is recorded in `flat4_phi3_phi4_stress_tensor_charge_check.md`. It tests whether the CPS charge relation actually becomes the quantum charge commutator.

Classically,

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega.
\end{align}$$

For the free scalar algebra this becomes

$$\begin{align}
i[P_\xi^{(0)},\phi(x)]_\star =\xi^\mu\partial_\mu\phi(x).
\end{align}$$

For smeared fields,

$$\begin{align}
i[P_\xi^{(0)},\Phi(f)]_\star =-\Phi(\partial_\mu(\xi^\mu f)).
\end{align}$$

This is a direct check that the CPS symplectic form is doing real work: its inverse fixes the commutator kernel \(E\), and \(\delta P_\xi=\iota_X\Omega\) fixes the charge normalization and sign.

In the interacting theory the stress tensor must be renormalized:

$$\begin{align}
T_{V,\chi}^{\mu\nu} =R_{V_\chi}(T_\chi^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\end{align}$$

With compact support switching,

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu} =-(\partial^\nu\chi)\mathcal L_{\rm int,V}.
\end{align}$$

This is the on-shell local identity. The companion note gives the time-ordered contact terms and the integrated balance law separately.

After a controlled adiabatic limit, flat scalar translation symmetry has no anomaly:

$$\begin{align}
\mathcal A_{\rm translation}^{\nu}=0.
\end{align}$$

Only if the adiabatic/infrared limit exists, the surface integral is finite or controllably smeared, an operator domain is fixed, and spatial flux vanishes can the corresponding integrated charge satisfy

$$\begin{align}
\delta_\xi R_V(F) = i[P_{\xi,V}^{\rm ren},R_V(F)]_\star + \mathcal A_\xi(F), \qquad \mathcal A_\xi(F)=0
\end{align}$$

for the flat scalar translation case. The note verifies the free generator and local Ward/balance structure; the interacting global statement is conditional on these existence assumptions.

## 17. Fourth check: internal \(U(1)\) current

The fourth check is recorded in `flat4_complex_phi4_u1_current_check.md`. It tests a genuine internal continuous symmetry using a complex scalar with

$$\begin{align}
V_\chi =-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\end{align}$$

The symmetry vector is

$$\begin{align}
X_\alpha\phi=i\alpha\phi,\qquad X_\alpha\phi^*=-i\alpha\phi^*.
\end{align}$$

The CPS symplectic form

$$\begin{align}
\Omega_0 =\int_{\Sigma_t}d^3\mathbf x\, \left[ \delta\dot\phi^*\wedge\delta\phi +\delta\dot\phi\wedge\delta\phi^* \right]
\end{align}$$

fixes both the nonzero charged commutator and the charge normalization. The charge satisfying

$$\begin{align}
\delta Q_\alpha=\iota_{X_\alpha}\Omega
\end{align}$$

acts in the quantum algebra as

$$\begin{align}
i[Q_\alpha,\phi]_\star=i\alpha\phi, \qquad i[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\end{align}$$

In the interacting theory,

$$\begin{align}
j^\mu_{V,\rm ren}=R_V(j^\mu)+j^\mu_{\rm ct}
\end{align}$$

is required to satisfy the $U(1)$ Ward identity after a suitable finite current counterterm is chosen. The switching function $\chi$ does not break this internal symmetry, and scalar vector $U(1)$ has no anomaly obstruction:

$$\begin{align}
\mathcal A_{U(1)}=0.
\end{align}$$

This check verifies the free generator and diagrammatic charge-flow rule. It does not explicitly construct the current counterterm or an integrated interacting charge. The shared free CPS principle is

$$\begin{align}
\delta Q=\iota_X\Omega \quad\Longrightarrow\quad \delta A=i[Q,A]_\star.
\end{align}$$

## 18. Separate background-field illustration: ABJ anomaly

This illustration is recorded in `flat4_abj_anomaly_cps_paqft_check.md`. It is not part of the present scalar completion claim; it only shows that the local anomaly slot is nonempty in a Dirac fermion model with a nondynamical background $U(1)$ field.

For a massless Dirac fermion, the classical axial current is

$$\begin{align}
j_5^\mu=\bar\psi\gamma^\mu\gamma_5\psi,
\end{align}$$

and classically

$$\begin{align}
\partial_\mu j_5^\mu=0.
\end{align}$$

The graded CPS structure gives the causal Dirac propagator and CAR:

$$\begin{align}
\{\psi(f),\bar\psi(g)\}_\star =i\hbar\langle f,Sg\rangle.
\end{align}$$

After renormalizing composite current insertions while preserving vector gauge Ward identities, the axial Ward identity becomes

$$\begin{align}
\partial_\mu j_{5,\rm ren}^\mu = \frac{q^2}{16\pi^2} F_{\mu\nu}\widetilde F^{\mu\nu}
\end{align}$$

for \(m=0\), with \(2im\bar\psi\gamma_5\psi\) added when \(m\ne0\). Thus the anomaly term in the general formula is concrete:

$$\begin{align}
\mathcal A_5 = \frac{q^2}{16\pi^2} F_{\mu\nu}\widetilde F^{\mu\nu}.
\end{align}$$

This check confirms that \(\mathcal A_\lambda\) is not a placeholder. It is the local obstruction to implementing a classical symmetry as a quantum Ward identity. It also clarifies that anomaly examples live in the renormalized current/time-ordered-product layer, not in the classical retarded tree map.

This is a background-field illustration of the anomaly slot. It is not part of the present scalar completion claim, and dynamical gauge theory remains outside the current scope.

## 19. Current status and remaining in-scope checks

The conceptual backend is formulated and benchmarked at six levels:

1. **Classical limit:** \(R_V(F)|_{\hbar^0}\) reproduces retarded rooted trees.
2. **Scattering:** \(S(V)\) reproduces standard \(\phi^3/\phi^4\) tree amplitudes.
3. **Quantum EOM/correlators:** tadpoles, bubbles, self-energy, and Schwinger-Dyson terms arise from \(T_n^{\rm ren}\) and local counterterms.
4. **Translation Ward layer:** the free CPS charge generates translations; the interacting benchmark records the local Ward/balance structure, while the global interacting charge is conditional on adiabatic, infrared, domain, and flux assumptions.
5. **Internal $U(1)$ layer:** the free CPS charge and perturbative charge-flow rule are checked; a Ward-preserving interacting current has no anomaly obstruction, but its integrated global charge is not explicitly constructed.
6. **Anomaly layer:** the ABJ example separately illustrates a nonzero local anomaly in a background-field model.

The remaining in-scope checks are:

1. formulate boundary-compatible renormalized products for the chosen AdS scalar boundary condition;
2. check PPA/split independence explicitly in the AdS mass-resummation examples;
3. connect global AdS resonant normal form to the canonical loop pipeline;
4. construct and test an interacting global charge only in examples where the required existence and flux conditions can be proved.

Gauge theory, BV-BRST, and gravity are deferred outside this scope rather than counted as completion gates.

## 20. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
- S. Hollands and R. M. Wald, *Axiomatic quantum field theory in curved spacetime*, arXiv:0803.2003, https://arxiv.org/abs/0803.2003
- S. Hollands, *The operator product expansion for perturbative quantum field theory in curved spacetime*, arXiv:gr-qc/0605072, https://arxiv.org/abs/gr-qc/0605072
