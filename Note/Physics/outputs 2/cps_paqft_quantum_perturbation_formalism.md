# CPS-based pAQFT quantum perturbation formalism

日期：2026-07-09

## 0. Direct verdict

目标不应是用 classical tree expansion 替代量子微扰论。正确目标是：

\[
\text{CPS}
\;\longrightarrow\;
\text{free Peierls/CCR algebra}
\;\longrightarrow\;
\text{renormalized Bogoliubov interacting fields}
\;\longrightarrow\;
\text{Ward identities, charges, anomalies}.
\]

先前的 rooted-tree solution 是这套结构的

\[
\hbar^0
\]

也就是 classical/tree shadow。真正的量子微扰来自：

1. free CPS symplectic form 的 inverse，即 Peierls causal propagator；
2. 由它定义的 CCR/\(\star\)-product；
3. renormalized time-ordered products；
4. Bogoliubov retarded products；
5. Ward identities 和 possible anomalies。

核心对象从 classical solution map

\[
p_g:\mathcal S_0\to\mathcal S_g
\]

升级为 interacting quantum observable

\[
R_V(F)
=\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}
\left[
S(V)^{-1}_{\star}\star S(V+\lambda F)
\right]
\right|_{\lambda=0},
\]

其中

\[
S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\]

等价地，对线性插入 \(F\) 可把导数记作

\[
R_V(F)
=S(V)^{-1}_{\star}\star\big(S(V)\cdot_T F\big),
\]

但严格定义应使用上面的 relative \(S\)-matrix derivative。

## 1. Classical CPS data

给定背景 spacetime \(M\)、边界条件和 classical action

\[
S[\phi]=S_0[\phi]+V[\phi].
\]

自由二次 action 给线性算子

\[
P\phi=0.
\]

在允许的边界条件下，假设存在 retarded/advanced Green operators

\[
P E_R=PE_A=\mathrm{id},
\]

并定义 causal propagator

\[
E:=E_R-E_A.
\]

Classical CPS symplectic form 是

\[
\Omega_\Sigma(\delta_1\phi,\delta_2\phi)
=\int_\Sigma \omega(\phi;\delta_1\phi,\delta_2\phi).
\]

在线性理论中，\(E\) 是 \(\Omega\) 的 inverse，意义是：

\[
\{F,G\}_{\rm P}
=\left\langle F^{(1)}, E\,G^{(1)}\right\rangle.
\]

对 smeared field

\[
\Phi(f)=\int_M f\phi,
\]

有

\[
\{\Phi(f),\Phi(g)\}_{\rm P}
=E(f,g).
\]

这是 CPS 在量子微扰论中的第一层作用：

> CPS 不只是给 mode normalization；它给出 Peierls bracket，也就是量子代数的 commutator kernel。

## 2. Free quantum algebra

选择一个 Hadamard two-point function 或 Hadamard parametrix \(H\)，满足 antisymmetric part 固定为 causal propagator：

\[
H(x,y)-H(y,x)=iE(x,y).
\]

定义 Wick/\(\star\)-product。对 regular functionals 可写为

\[
F\star_H G
=m\circ
\exp\left[
\hbar\left\langle H,
\frac{\delta}{\delta\phi}\otimes
\frac{\delta}{\delta\phi}
\right\rangle
\right]
(F\otimes G),
\]

其中 \(m\) 是 pointwise multiplication。归一化条件是

\[
[\Phi(f),\Phi(g)]_{\star_H}
=i\hbar E(f,g).
\]

注意：

- \(\Omega\) 或 \(E\) 固定 commutator；
- \(H\) 还包含 state/normal-ordering choice；
- 不同 \(H\) 给同构的 Wick algebras，但 normal ordering 形式不同。

因此 CPS 给出 canonical algebra 的 symplectic/commutator 部分；Hadamard choice 给出具体 Wick representation。

## 3. Time-ordered products and renormalization

量子微扰还需要 time-ordered product

\[
T_n(F_1,\ldots,F_n).
\]

对非重合支撑的 regular functionals，它由 Feynman contraction 给出。对 local functionals，点重合处需要 renormalized extension。

记

\[
F\cdot_T G:=T_2(F,G),
\]

并定义 time-ordered exponential

\[
S(V)
=\exp_T\left(\frac{i}{\hbar}V\right)
=\sum_{n\ge0}\frac{1}{n!}
\left(\frac{i}{\hbar}\right)^n
T_n(V^{\otimes n}).
\]

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

\[
V_\chi[\phi]=\int_M \chi(x)\mathcal L_{\rm int}(x).
\]

定义 relative \(S\)-matrix：

\[
S_V(F):=S(V)^{-1}_\star\star S(V+F).
\]

Interacting observable 定义为

\[
R_V(F)
=\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}S_V(\lambda F)
\right|_{\lambda=0}.
\]

展开为 retarded products：

\[
R_V(F)
=\sum_{n\ge0}\frac{1}{n!}
R_{n,1}(V^{\otimes n};F).
\]

这个公式取代了单纯的 classical solution map。它同时包含：

- retarded support；
- time ordering；
- \(\star\)-inverse；
- quantum contractions；
- renormalization。

## 5. Classical limit and tree diagrams

当 \(\hbar\to0\) 时，

\[
R_V(F)
=R_V^{\rm cl}(F)+O(\hbar).
\]

这里 \(R_V^{\rm cl}\) 等于 classical retarded Moller map 对 observable 的作用：

\[
R_V^{\rm cl}(F)=F\circ r_V,
\]

其中 \(r_V\) 是由 interacting EOM 到 free EOM 的 retarded classical map，或其 inverse convention。

因此：

\[
R_V(F)
=
\text{classical retarded trees}
+\hbar\,\text{one-loop}
+\hbar^2\,\text{two-loop}
+\cdots.
\]

之前的 rooted-tree diagrammatics 正是

\[
R_V(F)\big|_{\hbar^0}.
\]

它不是错的；它只是 quantum interacting observable 的 classical shadow。

## 6. Where CPS enters nontrivially

CPS 在这套量子 formalism 中至少有五个明确作用。

### 6.1 It defines the Peierls bracket

\[
\Omega_\Sigma^{-1}=E.
\]

这决定

\[
[\Phi(f),\Phi(g)]=i\hbar E(f,g).
\]

没有这一步，\(\star\)-product 的 antisymmetric part 没有 canonical 来源。

### 6.2 It fixes mode normalization

若

\[
\Omega_0=-i\sum_I\delta a_I\wedge\delta a_I^*,
\]

则

\[
[\hat a_I,\hat a_J^\dagger]=\delta_{IJ}.
\]

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

\[
\delta H_\lambda=\iota_{X_\lambda}\Omega.
\]

Quantum mechanically, this becomes Ward identity and charge commutator 的 classical input。

## 7. Quantum charges and Ward identities

设 classical symmetry variation 为

\[
\delta_\lambda\phi=X_\lambda\phi.
\]

Classical Noether current 满足

\[
\nabla_\mu J_\lambda^\mu
=-E(\phi)X_\lambda\phi
\]

up to boundary terms and improvement terms。量子理论中，interacting current 应写为

\[
J_{\lambda,V}^{\mu}
=R_V(J_\lambda^\mu)+J_{\lambda,\rm ct}^{\mu}.
\]

Counterterm \(J_{\lambda,\rm ct}^{\mu}\) 是 renormalization scheme 和 Ward identity 要求的一部分。

Quantum Ward identity 的形式是

\[
\delta_\lambda R_V(F)
=\frac{i}{\hbar}
\left[Q_{\lambda,V}^{\rm ren},R_V(F)\right]_\star
+\mathcal A_\lambda(F).
\]

若

\[
\mathcal A_\lambda(F)=0,
\]

则对称性可量子实现。若不为零，就是 anomaly。

局部形式可写为

\[
\nabla_\mu J_{\lambda,V}^{\mu}
=\mathcal A_\lambda.
\]

ABJ anomaly、gravitational anomaly、boundary anomaly 都属于这一层；它们不可能从 classical tree solution 本身产生。

## 8. Scattering, correlators, and the adiabatic limit

在 flat spacetime 且有合适 mass gap/IR control 时，可尝试移除 cutoff：

\[
\chi\to1.
\]

散射矩阵由 \(S(V)\) 或相对 \(S\)-matrix 给出。Correlation functions 由 state \(\omega\) 作用于 interacting observables：

\[
\omega\big(R_V(F_1)\star\cdots\star R_V(F_n)\big).
\]

普通 Feynman diagrams 的来源：

- vertices 来自 \(V\)；
- propagators 来自 time-ordered contractions；
- commutators/causal support 来自 \(E\)；
- loops 来自 \(\star\)- and \(T\)-contractions；
- counterterms 来自 renormalized \(T_n\)。

Tree amplitudes 是 \(\hbar^0\) 或 leading connected contribution；loop amplitudes 是更高 \(\hbar\)。

## 9. Gauge theory and gravity

对 gauge theory 或 gravity，上述 formalism 必须升级为 BV-BRST。

原因：

1. classical \(\Omega\) presymplectic，有 gauge kernel；
2. linearized operator gauge-degenerate，不可直接取 inverse；
3. ghost/antifield sector 参与 Ward identities；
4. physical observables 是 BRST cohomology；
5. anomalies 是 quantum master equation 的 obstruction。

BV version 的层级是：

\[
\text{BV phase space}
\rightarrow
\text{gauge-fixed propagators}
\rightarrow
\text{BRST-invariant time-ordered products}
\rightarrow
\text{quantum master Ward identities}.
\]

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

\[
R_V(F)
\]

和 interacting charges。

对 global AdS resonances，classical retarded tree layer 仍然存在，但 long-time dynamics 需要 resonant normal form。Quantum pAQFT layer 还要额外面对：

- discrete mode sums；
- possible secular terms in real-time perturbation；
- boundary counterterms；
- finite-volume-like perturbation theory；
- relation to CFT boundary correlators。

## 11. Relation to previous tree/CPS notes

旧 formalism：

\[
p_g:\mathcal S_0\to\mathcal S_g,
\qquad
\Omega_{\rm eff}=p_g^*\Omega_g.
\]

新 formalism：

\[
\Omega_0
\Rightarrow E
\Rightarrow \star_H
\Rightarrow S(V)
\Rightarrow R_V(F)
\Rightarrow \text{Ward identity}.
\]

二者关系：

\[
R_V(F)\big|_{\hbar^0}
=F\circ r_V.
\]

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

## 13. Recommended workflow

For each test model:

1. Build classical CPS and identify \(E\).
2. Define the free \(\star\)-algebra.
3. Define \(V\) with cutoff.
4. Construct \(S(V)\) and \(R_V(F)\).
5. Take \(\hbar^0\) limit and compare with classical rooted trees.
6. Compute the first quantum correction and identify loop diagrams.
7. Check Ward identities.
8. If a charge is involved, construct \(J_{\lambda,V}^{\mu}\) plus counterterms.
9. If boundaries exist, check boundary Ward identity and flux/anomaly.
10. Only then discuss scattering, spectrum, or correlators.

## 14. First check: 4d flat \(\phi^3/\phi^4\)

The first check uses the simplest nontrivial setting:

\[
V
=-\int d^4x\,\chi(x)
\left(
\frac{g_3}{3!}\phi^3
+\frac{g_4}{4!}\phi^4
\right).
\]

The check is recorded in `flat4_phi3_phi4_paqft_check.md`. It verifies:

1. \(R_V(\phi(x))|_{\hbar^0}\) reproduces retarded classical \(\phi^3/\phi^4\) tree solution.
2. \(S(V)\) gives the standard four-point tree amplitude:
   \[
   \mathcal M_4^{\rm tree}
   =
   -g_4
   -g_3^2
   \left[
   \frac{1}{s-m^2}
   +\frac{1}{t-m^2}
   +\frac{1}{u-m^2}
   \right]
   \]
   with the usual \(i\epsilon\) prescription and sign convention tied to \(V\).
3. One-loop corrections arise from contractions in \(T_n\), not from the classical tree map.
4. CPS enters by fixing
   \[
   [\hat\phi(f),\hat\phi(g)]=i\hbar E(f,g)
   \]
   and therefore external normalization and propagator antisymmetric part.

This check makes the following consistency requirements mandatory:

1. The interaction functional \(V\) must carry the action sign. For
   \[
   S=S_0-\int\left(\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4\right),
   \]
   one uses
   \[
   V=-\int\left(\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4\right).
   \]
   This simultaneously gives the retarded EOM sign and the standard \(-ig\) Feynman vertex.
2. CPS fixes \(E\), not the full Wick two-point function:
   \[
   \Omega\Rightarrow E,
   \qquad
   (E,H)\Rightarrow \star_H.
   \]
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

\[
K R_V(\phi)
=
R_V\!\left(
\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3
\right)
+\text{local counterterm insertions}.
\]

Equivalently, smeared:

\[
R_V\!\left(
\left\langle \frac{\delta S_0}{\delta\phi},f\right\rangle
+\left\langle \frac{\delta V}{\delta\phi},f\right\rangle
\right)=0
\]

after imposing the Action Ward Identity and choosing renormalized composite fields. The check confirms:

1. At \(\hbar^0\), this reduces to the classical retarded EOM and the previous rooted-tree solution.
2. Acting with \(K_x\) on the two-point function gives the Schwinger-Dyson equation:
   \[
   K_xG_2(x,y)
   =
   i\hbar\delta^{(4)}(x-y)
   +\left\langle
   T\,R_V\!\left[
   \frac{g_3}{2}\phi(x)^2+\frac{g_4}{3!}\phi(x)^3
   \right]R_V(\phi(y))
   \right\rangle
   +\text{ct}.
   \]
3. The \(\phi^4\) tadpole and \(\phi^3\) bubble are generated by renormalized time-ordered contractions, not by the classical tree map.
4. Translation Ward identities with compact switching satisfy
   \[
   \partial_\mu T^{\mu\nu}_{V,\chi}
   =
   -(\partial^\nu\chi)\mathcal L_{\rm int,V}
   +\text{contact terms}
   +\text{counterterms}.
   \]
   Exact translation conservation requires a controlled adiabatic limit or an explicitly invariant setup.

This check adds a stricter requirement to the formalism:

> A usable CPS-pAQFT formalism must define renormalized local composite fields, not only \(R_V(F)\) for regular or linear observables.

The practical ladder is therefore:

\[
\Omega
\Rightarrow E
\Rightarrow \star_H
\Rightarrow T_n^{\rm ren}
\Rightarrow R_V(F)
\Rightarrow
\text{renormalized EOM and Ward identities}.
\]

For scalar \(\phi^3/\phi^4\) in flat spacetime there is no translation anomaly; remaining local terms are ordinary counterterms or improvements. In gauge theory, gravity, or boundary problems, the same slot may contain genuine anomalies or boundary flux terms.

## 16. Third check: stress tensor and translation charge

The third check is recorded in `flat4_phi3_phi4_stress_tensor_charge_check.md`. It tests whether the CPS charge relation actually becomes the quantum charge commutator.

Classically,

\[
\delta P_\xi=\iota_{X_\xi}\Omega.
\]

For the free scalar algebra this becomes

\[
\frac{i}{\hbar}[P_\xi^{(0)},\phi(x)]_\star
=\xi^\mu\partial_\mu\phi(x).
\]

For smeared fields,

\[
\frac{i}{\hbar}[P_\xi^{(0)},\Phi(f)]_\star
=-\Phi(\partial_\mu(\xi^\mu f)).
\]

This is a direct check that the CPS symplectic form is doing real work: its inverse fixes the commutator kernel \(E\), and \(\delta P_\xi=\iota_X\Omega\) fixes the charge normalization and sign.

In the interacting theory the stress tensor must be renormalized:

\[
T_{V,\chi}^{\mu\nu}
=R_V(T_\chi^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\]

With compact support switching,

\[
\partial_\mu T_{V,\chi}^{\mu\nu}
=-(\partial^\nu\chi)\mathcal L_{\rm int,V}
+\text{contact terms}
+\text{counterterms}.
\]

After a controlled adiabatic limit, flat scalar translation symmetry has no anomaly:

\[
\mathcal A_{\rm translation}^{\nu}=0.
\]

The corresponding integrated charge satisfies

\[
\delta_\xi R_V(F)
=
\frac{i}{\hbar}
[P_{\xi,V}^{\rm ren},R_V(F)]_\star
+
\mathcal A_\xi(F),
\qquad
\mathcal A_\xi(F)=0
\]

for the flat scalar translation case. This verifies the charge/Ward layer for the simplest spacetime symmetry.

## 17. Fourth check: internal \(U(1)\) current

The fourth check is recorded in `flat4_complex_phi4_u1_current_check.md`. It tests a genuine internal continuous symmetry using a complex scalar with

\[
V_\chi
=-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\]

The symmetry vector is

\[
X_\alpha\phi=i\alpha\phi,\qquad
X_\alpha\phi^*=-i\alpha\phi^*.
\]

The CPS symplectic form

\[
\Omega_0
=\int_{\Sigma_t}d^3\mathbf x\,
\left[
\delta\dot\phi^*\wedge\delta\phi
+\delta\dot\phi\wedge\delta\phi^*
\right]
\]

fixes both the nonzero charged commutator and the charge normalization. The charge satisfying

\[
\delta Q_\alpha=\iota_{X_\alpha}\Omega
\]

acts in the quantum algebra as

\[
\frac{i}{\hbar}[Q_\alpha,\phi]_\star=i\alpha\phi,
\qquad
\frac{i}{\hbar}[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\]

In the interacting theory,

\[
j^\mu_{V,\rm ren}=R_V(j^\mu)+j^\mu_{\rm ct}
\]

can be chosen to satisfy the \(U(1)\) Ward identity. The switching function \(\chi\) does not break this internal symmetry, and scalar vector \(U(1)\) has no anomaly:

\[
\mathcal A_{U(1)}=0.
\]

This check closes the simplest internal-current gate and confirms that the same CPS principle works for both spacetime and internal symmetries:

\[
\delta Q=\iota_X\Omega
\quad\Longrightarrow\quad
\delta A=\frac{i}{\hbar}[Q,A]_\star.
\]

## 18. Fifth check: ABJ anomaly

The fifth check is recorded in `flat4_abj_anomaly_cps_paqft_check.md`. It tests a real anomaly example using a Dirac fermion in a background \(U(1)\) gauge field.

For a massless Dirac fermion, the classical axial current is

\[
j_5^\mu=\bar\psi\gamma^\mu\gamma_5\psi,
\]

and classically

\[
\partial_\mu j_5^\mu=0.
\]

The graded CPS structure gives the causal Dirac propagator and CAR:

\[
\{\psi(f),\bar\psi(g)\}_\star
=i\hbar\langle f,Sg\rangle.
\]

After renormalizing composite current insertions while preserving vector gauge Ward identities, the axial Ward identity becomes

\[
\partial_\mu j_{5,\rm ren}^\mu
=
\frac{q^2}{16\pi^2}
F_{\mu\nu}\widetilde F^{\mu\nu}
\]

for \(m=0\), with \(2im\bar\psi\gamma_5\psi\) added when \(m\ne0\). Thus the anomaly term in the general formula is concrete:

\[
\mathcal A_5
=
\frac{q^2}{16\pi^2}
F_{\mu\nu}\widetilde F^{\mu\nu}.
\]

This check confirms that \(\mathcal A_\lambda\) is not a placeholder. It is the local obstruction to implementing a classical symmetry as a quantum Ward identity. It also clarifies that anomaly examples live in the renormalized current/time-ordered-product layer, not in the classical retarded tree map.

This closes the genuine-anomaly-example gate at the background-field level. It does not close the full dynamical gauge-theory gate, which still requires BV-BRST and the quantum master equation.

## 19. Current status and remaining completion gates

The formalism is now consistent at six tested levels:

1. **Classical limit:** \(R_V(F)|_{\hbar^0}\) reproduces retarded rooted trees.
2. **Scattering:** \(S(V)\) reproduces standard \(\phi^3/\phi^4\) tree amplitudes.
3. **Quantum EOM/correlators:** tadpoles, bubbles, self-energy, and Schwinger-Dyson terms arise from \(T_n^{\rm ren}\) and local counterterms.
4. **Translation charge/Ward layer:** the CPS charge relation becomes the correct \(\star\)-commutator generator, and the flat scalar stress tensor has no translation anomaly after ordinary renormalization.
5. **Internal \(U(1)\) current layer:** the CPS charge relation generates phase rotations, the quartic interaction preserves charge flow, and the scalar \(U(1)\) Ward identity has no anomaly.
6. **Anomaly layer:** the ABJ example realizes \(\mathcal A_\lambda\ne0\) as a genuine renormalized Ward-identity obstruction.

It is not yet complete for the full target program. Remaining gates:

1. formulate the BV-BRST version for gauge theory/gravity, where CPS is presymplectic;
2. construct gauge/gravitational currents beyond scalar global symmetries;
3. formulate boundary-compatible \(T_n^{\rm ren}\) for AdS/CPS;
4. connect global AdS resonant normal form to the quantum \(R_V\) layer.

## 20. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
- S. Hollands and R. M. Wald, *Axiomatic quantum field theory in curved spacetime*, arXiv:0803.2003, https://arxiv.org/abs/0803.2003
- S. Hollands, *The operator product expansion for perturbative quantum field theory in curved spacetime*, arXiv:gr-qc/0605072, https://arxiv.org/abs/gr-qc/0605072
