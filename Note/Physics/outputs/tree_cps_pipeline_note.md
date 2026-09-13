# Tree-level perturbative solution 与 CPS quantization 的 pipeline note

日期：2026-07-09

## 0. 直接结论

这套 formalism 应该被写成一个两层 pipeline：

\[
\text{tree-level solution map}
\quad\longrightarrow\quad
\text{CPS pullback and quantization}
\]

必要时再加第三层：

\[
\text{dressed/canonical normal form}
\]

最短 slogan 是：

> Tree diagrams 构造微扰解映射 \(p_g:\mathcal S_0\to\mathcal S_g\)；CPS 量子化必须在拉回完整辛形式 \(p_g^*\Omega_g\) 之后进行。对有限时间 retarded Cauchy 演化，这个流程稳健；对 dressed modes、AdS 共振、导数相互作用、规范场或引力，必须额外处理 homogeneous ambiguity、边界条件、规范退化和 canonical normal form。

这句话比“用 Feynman rules 解任意阶微扰”更准确，因为它明确了三件事：

1. 树图不是直接量子规则，而是 classical solution map 的组合记账。
2. 辛结构不是自动等于自由辛结构，而是 \(p_g^*\Omega_g\)。
3. 长时间谱问题不是普通 retarded tree expansion 自动解决的。

## 1. 基本对象

给定作用量

\[
S_g[\phi]=\int L_g(\phi,\partial\phi,\ldots),
\]

EOM 写成

\[
E_g(\phi)=0.
\]

选一个自由理论

\[
E_0(\phi_0)=0
\]

和自由解空间

\[
\mathcal S_0.
\]

微扰论的核心对象不是单个 \(\phi_n\)，而是 solution map

\[
p_g:\mathcal S_0\to\mathcal S_g,
\qquad
\phi_0\mapsto \phi[\phi_0;g].
\]

写成级数：

\[
\phi[\phi_0;g]
=\phi_0+\sum_{n\ge1}g^n\phi_n[\phi_0].
\]

若有多个耦合 \(g_i\)，则

\[
\phi
=\sum_{\vec n\ge0}g^{\vec n}\phi_{\vec n}.
\]

这个 \(p_g\) 依赖：

- Green operator；
- 初始/边界条件；
- homogeneous solution 的选择；
- gauge fixing 或 reduced phase space；
- zero-mode/resonance prescription。

所以 \(p_g\) 不是纯局部 EOM 决定的。

## 2. Layer A: 定义自由问题

第一步总是固定自由方程：

\[
K\phi_0=0.
\]

同时固定自由 CPS symplectic form：

\[
\Omega_0
=\int_\Sigma \omega_0.
\]

若有模式展开：

\[
\phi_0
=\sum_I(a_Iu_I+a_I^*u_I^*),
\]

则归一化为

\[
\Omega_0
=-i\sum_I \delta a_I\wedge\delta a_I^*
\]

或等价 convention。量子化时对应

\[
[\hat a_I,\hat a_J^\dagger]=\delta_{IJ}.
\]

这一层必须明确：

1. 背景几何；
2. Cauchy surface 或 boundary；
3. falloff / boundary condition；
4. mode normalization；
5. gauge quotient 或 proper/large gauge 分解；
6. zero modes 是否存在。

## 3. Layer B: 选择 Green operator

把 EOM 写成

\[
K\phi=N_g(\phi).
\]

选择 Green operator \(G\)，定义积分方程：

\[
\phi=\phi_0+G\,N_g(\phi).
\]

不同 \(G\) 定义不同问题：

- \(G_R\)：retarded Cauchy problem；
- \(G_A\)：advanced problem；
- \(G_F\)：scattering/path-integral prescription；
- Euclidean Green function：elliptic boundary value problem；
- Dirichlet/Neumann/Robin Green function：固定边界条件；
- projected Green function：zero mode 被投影掉；
- gauge-fixed Green function：只在规范固定后的补空间上可逆。

推荐原则：

> 在写任何 tree rule 前先声明 Green operator。否则“内部线是什么”是不确定的。

## 4. Layer C: Tree-level solution map

展开

\[
\phi=\sum_{n\ge0}g^n\phi_n.
\]

递归形式为

\[
K\phi_n=S_n[\phi_0,\ldots,\phi_{n-1}],
\]

\[
\phi_n=G S_n+h_n,
\qquad Kh_n=0.
\]

图规则：

- root：输出点；
- leaf：自由解 \(\phi_0\)；
- internal line：\(G\)；
- vertex：EOM 中的 multilinear interaction；
- \(h_n\)：homogeneous ambiguity。

对

\[
K\phi+\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3=0
\]

或按相反号 convention 写成 \(K\phi=N_g(\phi)\)，有：

- \(\phi^3\) Lagrangian \(\Rightarrow\) EOM 中 binary rooted vertex；
- \(\phi^4\) Lagrangian \(\Rightarrow\) EOM 中 ternary rooted vertex。

多耦合递归可写为

\[
K\phi_{a,b}
=
\frac12
\sum_{\substack{a_1+a_2=a-1\\ b_1+b_2=b}}
\phi_{a_1,b_1}\phi_{a_2,b_2}
+
\frac1{3!}
\sum_{\substack{a_1+a_2+a_3=a\\ b_1+b_2+b_3=b-1}}
\phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\]

这里的 \(h_n\) 不是可忽略项。它负责：

1. 初始数据固定；
2. 边界条件；
3. normalizability；
4. 模式归一化；
5. 频率重整；
6. 共振项消除；
7. canonical normal form。

## 5. Layer D: CPS pullback

从完整 Lagrangian 读出

\[
\delta L_g=E_g(\phi)\delta\phi+d\Theta_g(\phi;\delta\phi).
\]

定义

\[
\omega_g(\phi;\delta_1\phi,\delta_2\phi)
=\delta_1\Theta_g(\phi;\delta_2\phi)
-\delta_2\Theta_g(\phi;\delta_1\phi).
\]

完整 symplectic form 是

\[
\Omega_g=\int_\Sigma\omega_g.
\]

在微扰坐标上的辛形式必须定义为

\[
\Omega_{\rm eff}
=p_g^*\Omega_g.
\]

展开为

\[
\Omega_{\rm eff}
=\Omega^{(0)}+g\Omega^{(1)}+g^2\Omega^{(2)}+\cdots.
\]

只有在计算或证明后，才能说

\[
\Omega_{\rm eff}=\Omega_0.
\]

### 5.1 何时 \(\Omega_{\rm eff}=\Omega_0\)

对普通 potential interactions，例如 flat 或 AdS 上的 \(\phi^3/\phi^4\)，如果满足：

1. 相互作用不含导数，所以 \(\Theta_g=\Theta_0\)；
2. 用 retarded Cauchy map；
3. 高阶修正在初始面上取零；
4. boundary symplectic flux 消失；

则

\[
\Omega_{\rm eff}=\Omega_0
\]

全阶成立。

证明只需：

- full symplectic current on shell conserved；
- 初始面上高阶修正为零；
- 因此任意面上的 \(\Omega_{\rm eff}\) 等于初始面的 \(\Omega_0\)。

### 5.2 何时不能直接说 \(\Omega_{\rm eff}=\Omega_0\)

以下情况必须显式计算：

1. derivative interaction；
2. higher-derivative EFT；
3. velocity-dependent perturbation，例如 2606.24442 toy model；
4. gauge field with edge modes；
5. gravity/diffeomorphism；
6. non-vanishing boundary flux；
7. dressed-mode variables；
8. canonical normal form 后的新变量；
9. alternative/Robin quantization 或 BF/log branch。

此时正确问题是：

\[
\Omega_{\rm eff}=?
\]

然后做 order-by-order Darboux：

\[
\Omega_{\rm eff}
\xrightarrow{\text{canonical coordinates}}
-i\sum_I\delta A_I\wedge\delta A_I^*.
\]

## 6. Layer E: 量子化

量子化不是在自由变量上自动进行，而是在 Darboux 化后的变量上进行。

若

\[
\Omega_{\rm eff}
=-i\sum_I\delta A_I\wedge\delta A_I^*,
\]

则

\[
[\hat A_I,\hat A_J^\dagger]=\delta_{IJ}.
\]

如果还停留在旧变量 \(a_I\)，必须说明：

1. \(a_I=A_I\)；
2. 或 \(\Omega_{\rm eff}\) 在 \(a_I\) 中已经 canonical；
3. 或给出 \(a\mapsto A\) 的 canonical transformation。

推荐写法：

\[
\text{first compute }p_g^*\Omega_g,
\quad
\text{then quantize }(p_g^*\Omega_g)^{-1}.
\]

这避免把自由 commutator 误用到相互作用坐标上。

## 7. Layer F: Hamiltonian 和 Noether charges

对连续对称性 \(X_\lambda\)，CPS 定义是

\[
\delta H_\lambda
=\iota_{X_\lambda}\Omega_g.
\]

在微扰坐标上：

\[
\delta H_{\lambda,{\rm eff}}
=\iota_{X_{\lambda,{\rm eff}}}\Omega_{\rm eff}.
\]

若展开

\[
\Omega_{\rm eff}
=\sum_ng^n\Omega^{(n)},
\qquad
X_{\lambda,{\rm eff}}
=\sum_mg^mX_\lambda^{(m)},
\]

则

\[
\delta H_\lambda^{(N)}
=\sum_{n+m=N}
\iota_{X_\lambda^{(m)}}\Omega^{(n)}.
\]

对普通固定背景标量场，

\[
X_\xi\phi=\mathcal L_\xi\phi
\]

没有 inhomogeneous perturbative term。对引力扰动则可能有 Laurent expansion，例如

\[
X_\xi=\kappa^{-1}X_\xi^{[-1]}+X_\xi^{[0]}+\cdots.
\]

这两种情况不能混写。

如果 charge 是边界型：

\[
\delta H_\lambda=\int_{\partial\Sigma}k_\lambda,
\]

则还要检查：

1. integrability；
2. flux；
3. corner term；
4. central extension；
5. proper gauge vs large gauge。

## 8. Layer G: Long-time / dressed-mode normal form

Retarded tree expansion 给的是有限时间 Cauchy 解。它不自动给长期有效的 dressed spectrum。

在离散谱背景，例如 global AdS，有

\[
\omega_\alpha=\Delta+N_\alpha.
\]

源项频率

\[
\Omega_{\rm source}=\sum_i\sigma_i\omega_{\alpha_i}
\]

可能满足

\[
\Omega_{\rm source}=\omega_\alpha.
\]

此时 particular solution 含 secular term：

\[
t e^{-i\omega_\alpha t}.
\]

要构造长期有效解，需要额外层：

1. Poincare-Lindstedt frequency shift；
2. multiple-scale expansion；
3. canonical normal form；
4. resonant system；
5. dressed variables。

Quartic AdS resonant system 的典型形式是

\[
i\frac{dA_\alpha}{d\tau}
=
\sum_{\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma}
\mathcal C_{\alpha\beta\gamma\delta}
A_\beta A_\gamma A_\delta^*.
\]

重要原则：

> 一旦进入 dressed variables，就必须重新检查这些变量是否 canonical。不能把 bare initial-data \(\Omega_0\) 自动带过去。

## 9. 三个 stress tests 的结论

### 9.1 2606.24442 toy model

检验对象：velocity-dependent perturbation。

特点：

- \(\Theta\) 本身有 \(\lambda\) correction；
- \(\lambda=0\) 和 \(\lambda>0\) 的约束结构不同；
- full theory 有 non-analytic fast mode；
- 低能 branch 需要归一化选择。

结论：

\[
p_\lambda^*\Omega_\lambda=-i\delta a\wedge\delta a^\dagger
\]

对低能分支全阶成立。该文 v2 的精确低能 \([x,y]\) 有一个符号不一致；修正后 CPS 微扰与精确低能理论一致。

教训：

> kinetic/symplectic deformation 不能偷用自由辛形式；必须显式拉回完整 \(\Omega_\lambda\)。

### 9.2 4d flat \(\phi^3/\phi^4\)

检验对象：真正分叉的 tree recursion。

特点：

- 相互作用是 potential；
- \(\Theta\) 没有 coupling correction；
- retarded initial-data map 是 symplectomorphism；
- tree solution 对应 ordinary classical tree diagrams。

结论：

\[
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0.
\]

教训：

> 对普通势能相互作用，CPS 的非平凡性不在 \(\Omega\)，而在 solution map、Hamiltonian 和 in/out map。

### 9.3 Global AdS3 interacting scalar

检验对象：分叉 trees + 离散共振谱。

特点：

- normal modes 离散：
  \[
  \omega_{n,m}=\Delta+2n+|m|;
  \]
- tree recursion work；
- \(\Omega_{\rm eff}=\Omega_0\) 在 retarded 初始数据坐标中仍成立；
- secular terms 真实出现。

结论：

> finite-time retarded formalism work；long-time dressed spectrum 需要 resonant normal form。

教训：

> arbitrary perturbation order 不等于 uniformly valid for all time。

## 10. 推荐的标准工作流

对一个新模型，按下面顺序做。

### Step 1: 定义 theory and boundary data

写清：

- action；
- background；
- field content；
- boundary condition；
- allowed phase space；
- gauge quotient。

### Step 2: 解自由理论

给出：

- free EOM；
- mode basis；
- mode normalization；
- \(\Omega_0\)；
- free charges。

### Step 3: 选 Green operator

明确：

- retarded / Feynman / Euclidean / boundary Green；
- zero-mode prescription；
- gauge-fixing prescription；
- boundary support。

### Step 4: 写 tree recursion

不要只画图。先写递归：

\[
\phi_n=G S_n+h_n.
\]

再说明图规则。

### Step 5: 固定 homogeneous ambiguity

明确 \(h_n\) 如何选：

- 初始面为零；
- normalizable；
- no source boundary condition；
- frequency renormalization；
- canonical normalization；
- resonant projection。

### Step 6: 拉回 CPS form

计算或证明：

\[
\Omega_{\rm eff}=p_g^*\Omega_g.
\]

给出是：

- exactly \(\Omega_0\)；
- \(\Omega_0+O(g)\)；
- 需要 Darboux；
- 有 boundary flux；
- 有 degeneracy。

### Step 7: Quantize

只在 canonical/Darboux variables 上写 commutator。

### Step 8: Compute charges

用

\[
\delta H_\lambda=\iota_{X_\lambda}\Omega_{\rm eff}
\]

而不是先猜 charge。

### Step 9: Check long-time validity

检查是否有：

- resonances；
- secular growth；
- IR tail；
- boundary flux；
- breakdown time scale。

若有，进入 normal form。

## 11. 常见错误和修正

### 错误 1：把 tree-level solution 说成 quantum tree amplitudes

修正：tree-level solution 是 classical EOM 的解。只有经过 LSZ/amputation/on-shell projection 才变成 scattering tree amplitudes。

### 错误 2：没有声明 Green function

修正：先声明 \(G_R,G_F,G_E\) 或 boundary Green function。不同 \(G\) 给不同 \(p_g\)。

### 错误 3：把 \(\Omega_0\) 自动用于相互作用变量

修正：先算

\[
p_g^*\Omega_g.
\]

### 错误 4：忽略 homogeneous ambiguity

修正：把 \(h_n\) 当作 formalism 的一部分。它控制初始数据、边界条件和 normal form。

### 错误 5：把 finite-time expansion 当成 long-time spectrum

修正：检查 secular terms。AdS 背景尤其要做 resonant system。

### 错误 6：混淆 bare coordinates 和 dressed coordinates

修正：bare initial data 通常 canonical；dressed variables 必须证明 canonical。

### 错误 7：把标量固定背景经验套到引力

修正：引力中 \(X_\xi\) 可能有 \(\kappa^{-1}\) 级 inhomogeneous term，boundary/corner terms 也不可忽略。

## 12. 推荐下一步项目

最自然的下一步是 global AdS3 quartic scalar 的 resonant Hamiltonian。

目标：

1. 从
   \[
   H_4=\frac{g_4}{4!}\int_\Sigma N\sqrt h\,\phi_0^4
   \]
   投影到 resonant sector。
2. 得到
   \[
   H_{\rm res}
   =
   \sum_{\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma}
   \mathcal C_{\alpha\beta\gamma\delta}
   A_\alpha^*A_\delta^*A_\beta A_\gamma.
   \]
3. 用
   \[
   i\dot A_\alpha=\frac{\partial H_{\rm res}}{\partial A_\alpha^*}
   \]
   推出 resonant system。
4. 验证这个 normal form 使用继承的 \(\Omega_0\)。
5. 检查 selection rules：
   \[
   \omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma,
   \qquad
   m_\alpha+m_\delta=m_\beta+m_\gamma.
   \]

这会把目前的 finite-time tree formalism 推进到真正的 AdS long-time dynamics。

## 13. 最终推荐表述

建议以后把 formalism 写成：

> Given a free phase space \(\mathcal S_0\), a choice of Green operator \(G\), and admissible boundary conditions, the classical interacting solution defines a perturbative map \(p_g:\mathcal S_0\to\mathcal S_g\). Rooted trees compute \(p_g\) order by order. The covariant phase space structure on the perturbative variables is not assumed but pulled back, \(\Omega_{\rm eff}=p_g^*\Omega_g\). Quantization is performed using \(\Omega_{\rm eff}^{-1}\). In finite-time retarded Cauchy problems with potential interactions, \(\Omega_{\rm eff}=\Omega_0\). In derivative theories, gauge/gravity systems, boundary-flux problems, or dressed long-time variables, this equality must be replaced by an explicit CPS calculation and, when needed, a canonical normal form.

中文压缩版：

> 树图负责构造解映射，CPS 负责定义这个解映射上的辛结构；有限时间 retarded 初值问题中这套方法很稳，长时间共振和 dressed 模式需要再加 canonical normal form。
