# Classical companion: retarded solution maps and CPS pullback

日期：2026-07-09

## 0. 直接结论

本文只处理 classical retarded solution map、其 CPS pullback，以及必要时的 dressed/canonical normal form。它不是 quantum loop calculation pipeline；实际量子计算统一使用 `../cps canonical quantization to loop corrections.md`。本文若写 commutator，同样采用 $\hbar=1$。Gauge theory、BV-BRST 和 dynamical gravity 暂不属于当前范围。

在这个 classical companion 内部，结构是两层：

$$\begin{align}
\text{tree-level solution map} \quad\longrightarrow\quad \text{CPS pullback and quantization}
\end{align}$$

必要时再加第三层：

$$\begin{align}
\text{dressed/canonical normal form}
\end{align}$$

最短 slogan 是：

> Tree diagrams 构造微扰解映射 $p_g:\mathcal S_0^{\mathcal B}\to\mathcal S_g^{\mathcal B}$；CPS 量子化必须在拉回完整辛形式 $p_g^*\Omega_g$ 之后进行。对有限时间 retarded Cauchy 演化，这个流程稳健；对 dressed modes、AdS 共振、导数相互作用或 boundary-flux problems，必须额外处理 homogeneous ambiguity、理论边界条件和 canonical normal form。

这句话比“用 Feynman rules 解任意阶微扰”更准确，因为它明确了三件事：

1. 树图不是直接量子规则，而是 classical solution map 的组合记账。
2. 辛结构不是自动等于自由辛结构，而是 \(p_g^*\Omega_g\)。
3. 长时间谱问题不是普通 retarded tree expansion 自动解决的。

## 1. 基本对象

给定作用量

$$\begin{align}
S_g[\phi]=\int L_g(\phi,\partial\phi,\ldots),
\end{align}$$

EOM 写成

$$\begin{align}
E_g(\phi)=0.
\end{align}$$

选一个自由理论

$$\begin{align}
E_0(\phi_0)=0
\end{align}$$

和自由解空间

$$\begin{align}
\mathcal S_0.
\end{align}$$

微扰论的核心对象不是单个 \(\phi_n\)，而是 solution map

$$\begin{align}
p_g:\mathcal S_0\to\mathcal S_g, \qquad \phi_0\mapsto \phi[\phi_0;g].
\end{align}$$

写成级数：

$$\begin{align}
\phi[\phi_0;g] =\phi_0+\sum_{n\ge1}g^n\phi_n[\phi_0].
\end{align}$$

若有多个耦合 \(g_i\)，则

$$\begin{align}
\phi =\sum_{\vec n\ge0}g^{\vec n}\phi_{\vec n}.
\end{align}$$

这个 \(p_g\) 依赖：

- Green operator；
- 初始/边界条件；
- homogeneous solution 的选择；
- 哪些初始或边界数据在微扰中保持固定；
- zero-mode/resonance prescription。

所以 \(p_g\) 不是纯局部 EOM 决定的。

## 2. Layer A: 定义自由问题

第一步总是固定自由方程：

$$\begin{align}
K\phi_0=0.
\end{align}$$

同时固定自由 CPS symplectic form：

$$\begin{align}
\Omega_0 =\int_\Sigma \omega_0.
\end{align}$$

若有模式展开：

$$\begin{align}
\phi_0 =\sum_I(a_Iu_I+a_I^*u_I^*),
\end{align}$$

则归一化为

$$\begin{align}
\Omega_0 =-i\sum_I \delta a_I\wedge\delta a_I^*
\end{align}$$

或等价 convention。在 $\hbar=1$ convention 下量子化时对应

$$\begin{align}
[\hat a_I,\hat a_J^\dagger]=\delta_{IJ}.
\end{align}$$

这一层必须明确：

1. 背景几何；
2. Cauchy surface 或 boundary；
3. falloff / boundary condition；
4. mode normalization；
5. 哪些初始或边界数据属于允许的 phase-space variations；
6. zero modes 是否存在。

## 3. Layer B: 选择 classical solution kernel

把 EOM 写成

$$\begin{align}
K\phi=N_g(\phi).
\end{align}$$

对 Lorentzian classical initial-value problem，选择与理论边界条件 $\mathcal B$ 相容的 right inverse $G_{\rm sol}^{\mathcal B}$，定义积分方程：

$$\begin{align}
\phi=\phi_0+G_{\rm sol}^{\mathcal B}N_g(\phi).
\end{align}$$

不同 kernel 属于不同层，不能只因都称为 propagator 就互换：

- $G_R^{\mathcal B}$：retarded Cauchy problem 的 classical solution kernel；
- $G_A^{\mathcal B}$：advanced problem 的 classical solution kernel；
- $E^{\mathcal B}=G_R^{\mathcal B}-G_A^{\mathcal B}$：Peierls bracket 与 commutator kernel，不是 rooted retarded tree 的 internal line；
- $G_{\rm ell}^{\mathcal B}$：Euclidean elliptic boundary-value problem 的 inverse；
- $G_F^{\mathcal B}$：选定 state 后的 Lorentzian time-ordered contraction，属于 quantum/Wick pipeline，而不是 retarded Moller map；
- projected kernel：在所选 scalar boundary problem 中移除 zero mode 后的 inverse。

$G_F^{\mathcal B}$ 也可以编码 in-out boundary condition，但这定义的对象不是本文的 real retarded solution map。Euclidean diagrams 由 elliptic boundary problem 和 analytic continuation 定义，不能与 Lorentzian CPS evolution 无条件等同。

推荐原则：

> 在写 rooted-tree rule 前先声明 classical solution problem、$\mathcal B$ 和 $G_{\rm sol}^{\mathcal B}$；在写 loop rule 前另行声明 state 以及 $G_F^{\mathcal B}$ 或 $G_E^{\mathcal B}$。

## 4. Layer C: Tree-level solution map

展开

$$\begin{align}
\phi=\sum_{n\ge0}g^n\phi_n.
\end{align}$$

递归形式为

$$\begin{align}
K\phi_n=S_n[\phi_0,\ldots,\phi_{n-1}],
\end{align}$$

$$\begin{align}
\phi_n=G S_n+h_n, \qquad Kh_n=0.
\end{align}$$

图规则：

- root：输出点；
- leaf：自由解 \(\phi_0\)；
- internal line：$G_{\rm sol}^{\mathcal B}$；
- vertex：EOM 中的 multilinear interaction；
- \(h_n\)：homogeneous ambiguity。

对

$$\begin{align}
K\phi+\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3=0
\end{align}$$

或按相反号 convention 写成 \(K\phi=N_g(\phi)\)，有：

- \(\phi^3\) Lagrangian \(\Rightarrow\) EOM 中 binary rooted vertex；
- \(\phi^4\) Lagrangian \(\Rightarrow\) EOM 中 ternary rooted vertex。

多耦合递归可写为

$$\begin{align}
K\phi_{a,b} = \frac12
\sum_{\substack{a_1+a_2=a-1\\
b_1+b_2=b}} \phi_{a_1,b_1}\phi_{a_2,b_2} + \frac1{3!}
\sum_{\substack{a_1+a_2+a_3=a\\
b_1+b_2+b_3=b-1}} \phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\end{align}$$

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

$$\begin{align}
\delta L_g=E_g(\phi)\delta\phi+d\Theta_g(\phi;\delta\phi).
\end{align}$$

定义

$$\begin{align}
\omega_g(\phi;\delta_1\phi,\delta_2\phi) =\delta_1\Theta_g(\phi;\delta_2\phi) -\delta_2\Theta_g(\phi;\delta_1\phi).
\end{align}$$

完整 symplectic form 是

$$\begin{align}
\Omega_g=\int_\Sigma\omega_g.
\end{align}$$

在微扰坐标上的辛形式必须定义为

$$\begin{align}
\Omega_{\rm eff} =p_g^*\Omega_g.
\end{align}$$

展开为

$$\begin{align}
\Omega_{\rm eff} =\Omega^{(0)}+g\Omega^{(1)}+g^2\Omega^{(2)}+\cdots.
\end{align}$$

只有在计算或证明后，才能说

$$\begin{align}
\Omega_{\rm eff}=\Omega_0.
\end{align}$$

### 5.1 何时 \(\Omega_{\rm eff}=\Omega_0\)

对普通 potential interactions，例如 flat 或 AdS 上的 \(\phi^3/\phi^4\)，如果满足：

1. 相互作用不含导数，所以 \(\Theta_g=\Theta_0\)；
2. 用 retarded Cauchy map；
3. 高阶修正在初始面上取零；
4. boundary symplectic flux 消失；

则

$$\begin{align}
\Omega_{\rm eff}=\Omega_0
\end{align}$$

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

$$\begin{align}
\Omega_{\rm eff}=?
\end{align}$$

然后做 order-by-order Darboux：

$$\begin{align}
\Omega_{\rm eff} \xrightarrow{\text{canonical coordinates}} -i\sum_I\delta A_I\wedge\delta A_I^*.
\end{align}$$

## 6. Layer E: 量子化

量子化不是在自由变量上自动进行，而是在 Darboux 化后的变量上进行。

若

$$\begin{align}
\Omega_{\rm eff} =-i\sum_I\delta A_I\wedge\delta A_I^*,
\end{align}$$

则

$$\begin{align}
[\hat A_I,\hat A_J^\dagger]=\delta_{IJ}.
\end{align}$$

如果还停留在旧变量 \(a_I\)，必须说明：

1. \(a_I=A_I\)；
2. 或 \(\Omega_{\rm eff}\) 在 \(a_I\) 中已经 canonical；
3. 或给出 \(a\mapsto A\) 的 canonical transformation。

推荐写法：

$$\begin{align}
\text{first compute }p_g^*\Omega_g, \quad \text{then quantize }(p_g^*\Omega_g)^{-1}.
\end{align}$$

这避免把自由 commutator 误用到相互作用坐标上。

## 7. Layer F: Hamiltonian 和 Noether charges

对连续对称性 \(X_\lambda\)，CPS 定义是

$$\begin{align}
\delta H_\lambda =\iota_{X_\lambda}\Omega_g.
\end{align}$$

在微扰坐标上：

$$\begin{align}
\delta H_{\lambda,{\rm eff}} =\iota_{X_{\lambda,{\rm eff}}}\Omega_{\rm eff}.
\end{align}$$

若展开

$$\begin{align}
\Omega_{\rm eff} =\sum_ng^n\Omega^{(n)}, \qquad X_{\lambda,{\rm eff}} =\sum_mg^mX_\lambda^{(m)},
\end{align}$$

则

$$\begin{align}
\delta H_\lambda^{(N)} =\sum_{n+m=N} \iota_{X_\lambda^{(m)}}\Omega^{(n)}.
\end{align}$$

对普通固定背景标量场，

$$\begin{align}
X_\xi\phi=\mathcal L_\xi\phi
\end{align}$$

没有 inhomogeneous perturbative term。对引力扰动则可能有 Laurent expansion，例如

$$\begin{align}
X_\xi=\kappa^{-1}X_\xi^{[-1]}+X_\xi^{[0]}+\cdots.
\end{align}$$

这两种情况不能混写。

如果 charge 是边界型：

$$\begin{align}
\delta H_\lambda=\int_{\partial\Sigma}k_\lambda,
\end{align}$$

则还要检查：

1. integrability；
2. flux；
3. corner term；
4. central extension；
5. proper gauge vs large gauge。

## 8. Layer G: Long-time / dressed-mode normal form

Retarded tree expansion 给的是有限时间 Cauchy 解。它不自动给长期有效的 dressed spectrum。

在离散谱背景，例如 global AdS，有

$$\begin{align}
\omega_\alpha=\Delta+N_\alpha.
\end{align}$$

源项频率

$$\begin{align}
\Omega_{\rm source}=\sum_i\sigma_i\omega_{\alpha_i}
\end{align}$$

可能满足

$$\begin{align}
\Omega_{\rm source}=\omega_\alpha.
\end{align}$$

此时 particular solution 含 secular term：

$$\begin{align}
t e^{-i\omega_\alpha t}.
\end{align}$$

要构造长期有效解，需要额外层：

1. Poincare-Lindstedt frequency shift；
2. multiple-scale expansion；
3. canonical normal form；
4. resonant system；
5. dressed variables。

Quartic AdS resonant system 的典型形式是

$$\begin{align}
i\frac{dA_\alpha}{d\tau} = \sum_{\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma} \mathcal C_{\alpha\beta\gamma\delta} A_\beta A_\gamma A_\delta^*.
\end{align}$$

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

$$\begin{align}
p_\lambda^*\Omega_\lambda=-i\delta a\wedge\delta a^\dagger
\end{align}$$

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

$$\begin{align}
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0.
\end{align}$$

教训：

> 对普通势能相互作用，CPS 的非平凡性不在 \(\Omega\)，而在 solution map、Hamiltonian 和 in/out map。

### 9.3 Global AdS3 interacting scalar

检验对象：分叉 trees + 离散共振谱。

特点：

- normal modes 离散：

$$\begin{align}
\omega_{n,m}=\Delta+2n+|m|;
\end{align}$$

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

$$\begin{align}
\phi_n=G S_n+h_n.
\end{align}$$

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

$$\begin{align}
\Omega_{\rm eff}=p_g^*\Omega_g.
\end{align}$$

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

$$\begin{align}
\delta H_\lambda=\iota_{X_\lambda}\Omega_{\rm eff}
\end{align}$$

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

### 错误 2：把不同层的 Green kernels 当成同一个内部线

修正：classical retarded map 使用 $G_R^{\mathcal B}$；quantum time-ordered contractions 使用 $G_F^{\mathcal B}$；Euclidean boundary problem 使用 $G_E^{\mathcal B}$。三者共享同一理论边界条件但承担不同任务。

### 错误 3：把 \(\Omega_0\) 自动用于相互作用变量

修正：先算

$$\begin{align}
p_g^*\Omega_g.
\end{align}$$

### 错误 4：忽略 homogeneous ambiguity

修正：把 \(h_n\) 当作 formalism 的一部分。它控制初始数据、边界条件和 normal form。

### 错误 5：把 finite-time expansion 当成 long-time spectrum

修正：检查 secular terms。AdS 背景尤其要做 resonant system。

### 错误 6：混淆 bare coordinates 和 dressed coordinates

修正：bare initial data 通常 canonical；dressed variables 必须证明 canonical。

### 错误 7：把本文的固定背景标量结论外推到规范场或引力

修正：这些系统需要独立的 reduced/BV 和 boundary analysis，当前笔记不作外推。

## 12. 推荐下一步项目

最自然的下一步是 global AdS3 quartic scalar 的 resonant Hamiltonian。

目标：

1. 从

$$\begin{align}
H_4=\frac{g_4}{4!}\int_\Sigma N\sqrt h\,\phi_0^4
\end{align}$$

   投影到 resonant sector。
2. 得到

$$\begin{align}
H_{\rm res} = \sum_{\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma} \mathcal C_{\alpha\beta\gamma\delta} A_\alpha^*A_\delta^*A_\beta A_\gamma.
\end{align}$$

3. 用

$$\begin{align}
i\dot A_\alpha=\frac{\partial H_{\rm res}}{\partial A_\alpha^*}
\end{align}$$

   推出 resonant system。
4. 验证这个 normal form 使用继承的 \(\Omega_0\)。
5. 检查 selection rules：

$$\begin{align}
\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma, \qquad m_\alpha+m_\delta=m_\beta+m_\gamma.
\end{align}$$

这会把目前的 finite-time tree formalism 推进到真正的 AdS long-time dynamics。

## 13. 最终推荐表述

建议以后把 formalism 写成：

> Given a free scalar phase space $\mathcal S_0^{\mathcal B}$, a theory-defining boundary condition $\mathcal B$, and a classical solution kernel $G_{\rm sol}^{\mathcal B}$, the interacting equation defines a perturbative map $p_g:\mathcal S_0^{\mathcal B}\to\mathcal S_g^{\mathcal B}$. Rooted trees compute $p_g$ order by order. The covariant phase space structure on the perturbative variables is pulled back, $\Omega_{\rm eff}=p_g^*\Omega_g$, rather than assumed. In finite-time retarded Cauchy problems with potential interactions, $\Omega_{\rm eff}=\Omega_0$. Boundary flux, derivative interactions, or dressed long-time variables require an explicit CPS calculation and, when needed, a canonical normal form. Quantum loops are then computed in the separate canonical/Wick pipeline.

中文压缩版：

> 树图负责构造解映射，CPS 负责定义这个解映射上的辛结构；有限时间 retarded 初值问题中这套方法很稳，长时间共振和 dressed 模式需要再加 canonical normal form。
