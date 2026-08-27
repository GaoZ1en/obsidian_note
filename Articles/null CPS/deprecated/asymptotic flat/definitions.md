# Stage 0：off-shell 渐近配置空间与 action-level renormalization

## 0. 本文的任务和边界

本文固定后续各 stage 共用的数学语言。它只定义：

- regulated asymptotic geometry；
- off-shell polyhomogeneous configuration/history space；
- boundary/corner variational problem；
- counterterm category；
- $C^2$ action-level renormalization；
- obstruction 和 maximality。

本文不使用任何 bulk EOM，也不把由 EOM 得出的 radial recursion 纳入 $\mathcal F_{\mathrm{off}}$。具体模型中的 Bondi/radial gauge 是否可达、具体 counterterm basis 是否完备，以及对应 solution space 是否非空，必须分别在各 stage 中证明。

记号上：

- $\mathcal F_{\mathrm{off}}$ 是 histories 的空间；
- $\widetilde{\mathcal S}\subset\mathcal F_{\mathrm{off}}$ 是满足 EOM 和 boundary conditions 的 pre-phase space；
- $\mathcal S=\widetilde{\mathcal S}/\ker\Omega$ 才是 reduced phase space。

---

## 1. Regulated asymptotic collar

令 $\overline M$ 是带边界的 conformal compactification，$\Omega$ 是对应 $\mathscr I$ 的 boundary defining function：

$$\begin{align}
\mathscr I=\{\Omega=0\}, \qquad \Omega>0\ \text{in }M, \qquad d\Omega|_{\mathscr I}\neq0.
\end{align}$$

第一轮固定

$$\begin{align}
\delta\Omega=0.
\end{align}$$

在有限 retarded-time interval $I=[u_-,u_+]$ 上取 collar

$$\begin{align}
\mathcal U \simeq [0,\Omega_0]_\Omega\times I_u\times S,
\end{align}$$

其中 $S=S^1$ 或 $S^2$。令

$$\begin{align}
M_{\epsilon,I} = \{\epsilon\leq\Omega\leq\Omega_0,\ u_-\leq u\leq u_+\}, \qquad R=\epsilon^{-1}.
\end{align}$$

它的 relevant strata 为

$$\begin{align}
\mathcal B_\epsilon=\{\Omega=\epsilon\}, \qquad \Sigma_\pm=\{u=u_\pm\}, \qquad C_{\epsilon,\pm}=\mathcal B_\epsilon\cap\Sigma_\pm.
\end{align}$$

内侧 $\{\Omega=\Omega_0\}$ 不参与 asymptotic renormalization；或者固定其数据，或者把它的有限 boundary term 保留在 $S_{\mathrm{finite}}$ 中。

### 1.1 Radial-local problem

Stage 1A、2B 和 3A--3D 的第一轮使用

$$\begin{align}
\delta\Phi=0 \qquad \text{in neighborhoods of }\Sigma_\pm.
\end{align}$$

这消除了 endpoint variations，但不删除 $\Sigma_\pm$ 这个几何 strata。恢复一般 endpoint variations 后，必须重新加入 lids 和 corners；不能把 radial-local 结论直接称为 global scattering result。

---

## 2. Polyhomogeneous index sets

### 2.1 Completed index set

本文先只考虑 real powers。一个 completed index set 是

$$\begin{align}
E\subset\mathbb R\times\mathbb N_0
\end{align}$$

并满足：

1. 对任意 $N\in\mathbb R$，

$$\begin{align}
E_{<N}:=\{(p,k)\in E:p<N\}
\end{align}$$

   是有限集；
2. 若 $(p,k)\in E$ 且 $0\leq j\leq k$，则 $(p,j)\in E$；
3. 若 $(p,k)\in E$ 且 $n\in\mathbb N_0$，则 $(p+n,k)\in E$。

第一条排除了在任意有限 radial weight 以下无限堆积的 powers；第二条保证对 $\Omega\partial_\Omega$ 闭合；第三条保证定义不依赖 collar identification 或 smooth change of boundary defining function。

定义 shift 和 completed Minkowski sum：

$$\begin{align}
E+s := \operatorname{cl}\{(p+s,k):(p,k)\in E\},
\end{align}$$

$$\begin{align}
E\oplus F := \operatorname{cl}
\{(p+q,k+\ell):(p,k)\in E,\ (q,\ell)\in F\},
\end{align}$$

其中 $\operatorname{cl}$ 表示补入上述第二、三条所要求的元素。

### 2.2 $b$-vector fields

令 $\mathcal V_b(\overline M)$ 是与 $\mathscr I$ 相切的 smooth vector fields。在 collar coordinates 中，

$$\begin{align}
\mathcal V_b = \operatorname{span}_{C^\infty} \left\{ \Omega\partial_\Omega,\, \partial_u,\, \partial_A \right\}.
\end{align}$$

使用 $\mathcal V_b$ 而不是裸的 $\partial_\Omega$，是因为前者保持 radial weight。

### 2.3 Polyhomogeneous conormal sections

设 $V\to\overline M$ 是一个 smooth vector bundle。若一个 section $f$ 在 $\Omega>0$ smooth，并具有 expansion

$$\begin{align}
f \sim
\sum_{(p,k)\in E} \Omega^p(\log\Omega)^k f_{p,k}(u,x),
\end{align}$$

其中 $f_{p,k}$ 是 $V|_{\mathscr I}$ 的 smooth sections，则记

$$\begin{align}
f\in\mathcal A_{\mathrm{phg}}^E(\overline M;V).
\end{align}$$

这里的 $\sim$ 包括 remainder estimates：对每个 $N\in\mathbb R$，定义

$$\begin{align}
T_N f := \sum_{\substack{(p,k)\in E\\
p\leq N}} \Omega^p(\log\Omega)^k f_{p,k}, \qquad \mathcal R_N f:=f-T_Nf.
\end{align}$$

要求对任意有限个 $V_i\in\mathcal V_b$ 和任意 compact $K\subset I\times S$，

$$\begin{align}
\sup_{0<\Omega\leq\Omega_0}
\sup_{(u,x)\in K} \Omega^{-N} \left| V_1\cdots V_m\mathcal R_Nf \right|
<\infty.
\end{align}$$

系数的 $C^m(K)$ seminorms 与所有这些 remainder seminorms 给出本文采用的 Fréchet topology。

### 2.4 Field multiplet 和 component weights

不同 tensor components 不应被强迫使用同一个表面 power。对 field multiplet $\Phi=(\Phi^A)$，指定 index family

$$\begin{align}
\mathbf E=(E_A)_A, \qquad \mathcal F_{\mathrm{off}}^{\mathbf E}
\subset \prod_A\mathcal A_{\mathrm{phg}}^{E_A}(\overline M;V_A).
\end{align}$$

physical metric、conformal metric 和 Bondi component 的显式 $\Omega$ weights 必须在具体模型的 weight ledger 中给出；不能用一个统一的 $O(r^{-p})$ 代替。

在 $\mathcal F_{\mathrm{off}}^{\mathbf E}$ 中，各个允许的 coefficient

$$\begin{align}
\Phi^A_{p,k}(u,x)
\end{align}$$

彼此独立。任何 coefficient relation 都必须另行标记为：

- algebraic parametrization identity；
- gauge condition；
- boundary condition；
- bulk EOM；
- boundary EOM。

---

## 3. Index algebra 与 closure

### Proposition 3.1

设 $E,F$ 是 completed index sets，则：

$$\begin{align}
V_b\mathcal A_{\mathrm{phg}}^E \subset \mathcal A_{\mathrm{phg}}^E, \qquad V_b\in\mathcal V_b,
\end{align}$$

$$\begin{align}
\partial_\Omega \mathcal A_{\mathrm{phg}}^E \subset \mathcal A_{\mathrm{phg}}^{E-1},
\end{align}$$

$$\begin{align}
\mathcal A_{\mathrm{phg}}^E \cdot \mathcal A_{\mathrm{phg}}^F \subset \mathcal A_{\mathrm{phg}}^{E\oplus F}.
\end{align}$$

在 $\delta\Omega=0$ 且 variations 只作用于 coefficients 时，

$$\begin{align}
\delta\mathcal A_{\mathrm{phg}}^E \subset \mathcal A_{\mathrm{phg}}^E.
\end{align}$$

#### Proof

对一个 basis monomial，

$$\begin{align}
\Omega\partial_\Omega \left[ \Omega^p(\log\Omega)^k \right] = p\,\Omega^p(\log\Omega)^k + k\,\Omega^p(\log\Omega)^{k-1},
\end{align}$$

其中 $k=0$ 时第二项不存在。completed index set 对降低 log degree 闭合，所以 $\Omega\partial_\Omega$ 保持 $E$。Tangential derivatives 只作用于 smooth coefficients，故所有 $b$-derivatives 保持 $E$。由于

$$\begin{align}
\partial_\Omega = \Omega^{-1}(\Omega\partial_\Omega),
\end{align}$$

ordinary radial derivative 将 powers 整体平移到 $E-1$。

两个 basis monomials 的乘积为

$$\begin{align}
\left[ \Omega^p(\log\Omega)^k \right] \left[ \Omega^q(\log\Omega)^\ell \right] = \Omega^{p+q}(\log\Omega)^{k+\ell},
\end{align}$$

故 product 的 index set 是 $E\oplus F$。Left-finiteness 保证任意给定 radial order 以下只有有限项参与。最后，

$$\begin{align}
\delta \left[ \Omega^p(\log\Omega)^k\Phi_{p,k} \right] = \Omega^p(\log\Omega)^k\delta\Phi_{p,k}
\end{align}$$

使用了 $\delta\Omega=0$，因此 field-space variation 保持 $E$。Remainder estimates 对相同操作稳定，结论成立。$\square$

### 3.1 非多项式 local expressions 的额外条件

Proposition 3.1 自动控制有限次 products 和 derivatives，但不自动控制任意 analytic composition。若

$$\begin{align}
\Phi=\Phi^{(0)}+\varphi, \qquad \varphi=O(\Omega^\eta(\log\Omega)^K), \qquad \eta>0,
\end{align}$$

则 inverse metric、determinant 等在 $\Phi^{(0)}$ 附近的 formal analytic expansion 在每个 fixed radial order 只收到有限项贡献，因此仍是 left-finite polyhomogeneous expansion。

若进入 analytic expression 的 perturbation 已含 weight-zero logarithms，则任意高次 products 可能在同一 power 产生无界 log degree。此时必须：

1. 证明具体 nonlinearity 实际只涉及有限次数；
2. 扩大 function category；
3. 或把相应 weight-zero log 排除为 off-shell restriction。

不能仅凭“polyhomogeneous functions 对乘法闭合”跳过这个检查。

---

## 4. Gauge slice：统一判据和模型义务

令 $\mathcal G^{\mathbf E}$ 是保持 $\mathcal F_{\mathrm{off}}^{\mathbf E}$ 的 gauge transformations， infinitesimal generator 写成

$$\begin{align}
R_\Phi(\lambda)\in T_\Phi\mathcal F_{\mathrm{off}}^{\mathbf E}.
\end{align}$$

设 gauge-fixing map 为

$$\begin{align}
\chi: \mathcal F_{\mathrm{off}}^{\mathbf E} \longrightarrow \mathcal Y.
\end{align}$$

在线性化层次定义 Faddeev--Popov operator

$$\begin{align}
\mathcal M_\Phi := D\chi_\Phi\circ R_\Phi.
\end{align}$$

### Gauge-slice criterion

若在选定的 weighted Banach completion 上：

1. $\mathcal M_\Phi$ 有满足指定 boundary behavior 的 continuous right inverse；
2. 该 right inverse 保持所选 index family，或其 image 落在事先声明的 enlarged family；
3. nonlinear gauge action 在该 completion 上足够光滑；

则普通 implicit-function theorem 给出局部 gauge slice。若直接在 Fréchet space 上工作，还需给出 tame estimates 并使用相应的 Nash--Moser 型结论。

Residual gauge parameters 为

$$\begin{align}
\ker\mathcal M_\Phi.
\end{align}$$

每个具体 stage 必须另外证明：

- gauge parameter 的求解不会产生未纳入的 powers/logs；
- residual transformations 保持 boundary polarization；
- gauge fixing 只用于选择 representative，不被用于删除 off-shell-independent coefficients；
- 任何 model-specific global obstruction 均已排除或记录。

因此 Stage 0 不宣称存在一个适用于所有模型的 Bondi slice；它只固定证明该命题所需的精确 hypotheses。

---

## 5. Relative boundary/corner variational problem

### 5.1 Regulated action

取 oriented boundary components $\mathcal B_a$ 和 corners $C_c$。Regulated action 写成

$$\begin{align}
S_\epsilon[\Phi] = \int_{M_{\epsilon,I}}L + \sum_a\int_{\mathcal B_a}\ell_a + \sum_c\int_{C_c}c_c.
\end{align}$$

采用 relative de Rham convention

$$\begin{align}
\Omega^n(M,\partial M) = \Omega^n(M)\oplus\Omega^{n-1}(\partial M),
\end{align}$$

$$\begin{align}
\underline d(\alpha,\beta) = \left( d\alpha,\, \iota^*\alpha-d_\partial\beta \right), \qquad \int_{(M,\partial M)}(\alpha,\beta) := \int_M\alpha-\int_{\partial M}\beta.
\end{align}$$

因此带正号的 boundary action 对应 relative pair $(L,-\ell)$。Lids 和 corners 可由迭代 relative pair 统一描述；具体 orientation signs 由各 boundary component 的 induced orientation 决定。

### 5.2 Abstract off-shell variation

先在未 gauge-fixed 的 local field space 上写

$$\begin{align}
\delta L = E_I(\Phi)\delta\Phi^I+d\theta(\Phi;\delta\Phi).
\end{align}$$

在每个 boundary component 上定义

$$\begin{align}
\alpha_a := \iota_a^*\theta+\delta\ell_a.
\end{align}$$

对 tangential derivatives 做 boundary integration by parts 后，

$$\begin{align}
\alpha_a = \mathcal E_{a,I}\delta Q_a^I + d_a\vartheta_a.
\end{align}$$

于是

$$\begin{align}
\delta S_\epsilon = \int_{M_{\epsilon,I}}E_I\delta\Phi^I + \sum_a\int_{\mathcal B_a}\mathcal E_{a,I}\delta Q_a^I + \sum_c\int_{C_c} \left( \delta c_c + \sum_{a\supset c}\sigma_{ac}\vartheta_a \right),
\end{align}$$

其中 $\sigma_{ac}$ 是 orientation incidence sign。

这个顺序是固定的：

$$\begin{align}
\text{abstract variation} \longrightarrow
\text{boundary integration by parts} \longrightarrow
\text{gauge/coordinates} \longrightarrow
\text{asymptotic expansion}.
\end{align}$$

Bulk EOM 只能在得到上述 off-shell identity 以后施加。

---

## 6. Differentiability、stationarity 与 PDE well-posedness

这三个命题必须分开。

### 6.1 Differentiability

$S_{\mathrm{ren}}$ differentiable 指其第一变分在允许的 off-shell tangent vectors 上是有限、连续的 field-space one-form，并具有局域 bulk/boundary/corner decomposition。

它不要求 boundary one-form 自动为零。

### 6.2 Boundary polarization 和 stationarity

在 cutoff boundary field space 上，将有限 boundary variation 写成

$$\begin{align}
\mathcal A_{\partial} = \int_{\mathcal B} P_I\,\delta Q^I + \int_C p_\alpha\,\delta q^\alpha.
\end{align}$$

一个 boundary polarization $\mathcal P$ 指定允许固定的 configuration variables 或更一般的 boundary Lagrangian submanifold。Variational principle stationary 的条件是

$$\begin{align}
\iota_{\mathcal P}^* \mathcal A_{\partial} = 0
\end{align}$$

或等于事先声明的 finite source-work term。

因此“允许 $Q$ 作为 source 在不同 histories 之间变化”与“求 stationary point 时允许任意 $\delta Q$”不是同一句话。

### 6.3 PDE well-posedness

由 stationary action 得到的 bulk/boundary equations 是否具有存在性、唯一性和连续依赖，是另一个 analytic theorem。Action differentiability 本身不能证明 characteristic initial-boundary value problem well posed。

---

## 7. Counterterm category

Counterterm completeness 总是相对于预先固定的 category。令 $K$ 是最大 tangential jet order，$J$ 是最大 normal jet order，$W$ 是本轮需要处理的 radial weight range。

### 7.1 Intrinsic category

$$\begin{align}
\mathfrak C_{\mathrm{int}}^{K,W}
\end{align}$$

包含 $\mathcal B_\epsilon$ 上由以下数据局域构造的 densities：

- pullback fields；
- induced boundary geometry；
- tangential covariant derivatives，最高到 $K$ 阶；
- 允许的 background/rigging data；
- 有限个

$$\begin{align}
\epsilon^\lambda[\log(\mu\epsilon)]^k
\end{align}$$

  coefficients。

必须另外声明 $k$ 的 coefficient category：

- polynomial-log：$k\in\mathbb N_0$；
- Laurent-log：$k\in\mathbb Z$，但在任意给定 counterterm 中只有有限个负 powers。

这两个 category 不等价；例如 Stage 1 中的 $A_u^2/\log R$ 只属于 Laurent-log category。

它们必须满足该 stage 指定的 tangential diffeomorphism 和 internal-gauge covariance。

### 7.2 Extended category

$$\begin{align}
\mathfrak C_{\mathrm{ext}}^{K,J,W}
\end{align}$$

还允许：

- extrinsic curvature；
- electric/radial momentum；
- normal derivatives，最高到 $J$ 阶。

进入 $\mathfrak C_{\mathrm{ext}}$ 可能改变 boundary polarization。由 normal momentum 构造的 finite 或 divergent term 不能自动称为 Dirichlet scheme change；必须检查它是否实现 canonical transformation 或 mixed/Neumann variational problem。

### 7.3 Stage 0 的排除项

第一轮不允许：

- inverse tangential differential operators；
- nonlocal integrals along $\mathscr I$；
- 未声明的新 boundary/edge fields；
- 用 bulk EOM 或 radial recursion 缩减 invariant basis；
- 只在某个 background 上成立的 accidental identities。

若 intrinsic category 出现 obstruction，后续按以下顺序扩大：

$$\begin{align}
\mathfrak C_{\mathrm{int}} \longrightarrow
\mathfrak C_{\mathrm{ext}} \longrightarrow
\text{new boundary fields} \longrightarrow
\text{controlled nonlocality}.
\end{align}$$

每次扩大都构成不同 theorem，不能混写。

---

## 8. $C^2$ action-level renormalization

令 $C_\epsilon\in\mathfrak C$ 是所有 boundary/corner counterterms 的和，并定义

$$\begin{align}
\widehat S_\epsilon := S_\epsilon+C_\epsilon.
\end{align}$$

### Definition 8.1

称 $(\mathcal F_{\mathrm{off}}^{\mathbf E},\mathfrak C,\mathcal P)$ 是 action-renormalizable 的，如果 $\widehat S_\epsilon$ 在 $\epsilon\to0$ 时于 $\mathcal F_{\mathrm{off}}^{\mathbf E}$ 上 $C^2_{\mathrm{loc}}$ 收敛：

$$\begin{align}
S_{\mathrm{ren}} = \lim_{\epsilon\to0}\widehat S_\epsilon,
\end{align}$$

$$\begin{align}
DS_{\mathrm{ren}} = \lim_{\epsilon\to0}D\widehat S_\epsilon, \qquad D^2S_{\mathrm{ren}} = \lim_{\epsilon\to0}D^2\widehat S_\epsilon.
\end{align}$$

操作性地说，这三个 limits 对每个 configuration 的足够小 neighborhood，以及其中 bounded families of one/two tangent variations，一致存在。

这个定义直接保证

$$\begin{align}
\delta\lim_{\epsilon\to0}\widehat S_\epsilon = \lim_{\epsilon\to0}\delta\widehat S_\epsilon,
\end{align}$$

而不是把这条交换关系当作未经证明的形式操作。

### 8.1 Renormalized CPS data

在 $\widetilde{\mathcal S}$ 上，取 action-derived finite potential

$$\begin{align}
\Theta_{\mathrm{ren},\Sigma} = \lim_{\epsilon\to0} \left[ \int_{\Sigma_\epsilon}\theta + \int_{\partial\Sigma_\epsilon}\vartheta_{\mathrm{add}} \right],
\end{align}$$

并定义

$$\begin{align}
\Omega_{\mathrm{ren},\Sigma} = \delta\Theta_{\mathrm{ren},\Sigma}.
\end{align}$$

需要另外证明：

- $\Omega_{\mathrm{ren},\Sigma}$ 对所有 tangent solutions 有限；
- $\delta\Omega_{\mathrm{ren},\Sigma}=0$；
- hypersurface dependence 正好由 finite flux-balance law 给出；
- proper gauge directions 对所有 tangent variations 都位于 kernel。

$S_{\mathrm{ren}}$ 数值有限不自动推出这些结论。

---

## 9. Local obstruction

在某个 radial/log weight $(\lambda,k)$，令 outer-boundary variation 的 divergent coefficient 为

$$\begin{align}
\alpha_{\lambda,k} \in \Omega_{\mathrm{loc}}^{1,d-1},
\end{align}$$

其中上标分别是 field-space degree 和 boundary horizontal degree。允许加入的 local counterterm/corner potential 必须满足

$$\begin{align}
\alpha_{\lambda,k} + \delta\ell_{\lambda,k}^{\mathrm{add}}
- d_\partial\vartheta_{\lambda,k}^{\mathrm{add}} = 0
\end{align}$$

或在选定 polarization 上满足其 pullback：

$$\begin{align}
\iota_{\mathcal P}^* \left( \alpha_{\lambda,k} + \delta\ell_{\lambda,k}^{\mathrm{add}}
- d_\partial\vartheta_{\lambda,k}^{\mathrm{add}} \right) = 0.
\end{align}$$

因此 obstruction 位于指定 counterterm category 内的 relative local class

$$\begin{align}
[\alpha_{\lambda,k}] \in H_{\mathrm{loc}}^{1,d-1} (\delta\mid d_\partial;\mathfrak C).
\end{align}$$

需要分别记录：

1. class 在 source-extended tangent space 上为零；
2. class 只在固定-source polarization 上为零；
3. class 在 $\mathfrak C_{\mathrm{int}}$ 非零但在 $\mathfrak C_{\mathrm{ext}}$ 为零；
4. class 在当前 category 中非零。

第四种才是严格的 no-go statement。不能用“尚未找到 counterterm”代替 nontriviality proof。

---

## 10. Equivalence relations

下列操作的逻辑地位不同。

### 10.1 Relative-exact equivalence

在 convention

$$\begin{align}
\underline d(\alpha,\beta) = (d\alpha,\iota^*\alpha-d_\partial\beta)
\end{align}$$

下，加入 relative-exact local form 不改变固定 strata 上的 action。

### 10.2 Integration by parts 与 algebraic identities

分类 invariant basis 时允许：

- tangential integration by parts；
- Bianchi identities；
- dimension-dependent algebraic identities；
- 已声明 gauge parametrization 的纯代数 identities。

不允许使用 bulk/boundary EOM。

### 10.3 Finite counterterms

Finite local counterterms 是 renormalization-scheme freedom，但只有在保持同一 boundary polarization 时才能视为同一 variational problem。改变 canonical one-form 的 finite term 可能实现 canonical transformation，也可能定义不同 boundary theory；必须单独判断。

---

## 11. Admissibility 与 maximality

固定：

- candidate index-family poset $\mathfrak I$；
- counterterm category $\mathfrak C$；
- boundary polarization $\mathcal P$；
- covariance requirements $\mathfrak G$。

定义

$$\begin{align}
\operatorname{Adm}
(\mathfrak C,\mathcal P,\mathfrak G) \subset \mathfrak I
\end{align}$$

为满足下列条件的 index families：

1. off-shell class 对所需 local operations 闭合；
2. gauge slice 的 model-specific hypotheses 成立；
3. $S_{\mathrm{ren}}$ 存在并 $C^2_{\mathrm{loc}}$；
4. renormalized boundary/corner variation 与 $\mathcal P$ 相容；
5. induced $\Omega_{\mathrm{ren}}$ 在 solution space 上有限且闭合。

若

$$\begin{align}
\mathcal F_{\mathrm{off}}^{\mathbf E_1}
\subseteq \mathcal F_{\mathrm{off}}^{\mathbf E_2},
\end{align}$$

记 $\mathbf E_1\preceq\mathbf E_2$。

- $\mathbf E$ 是 maximal：不存在 admissible 的严格更大 $\mathbf F$；
- $\mathbf E$ 是 maximum：所有 admissible $\mathbf F$ 都满足 $\mathbf F\preceq\mathbf E$。

不预设 maximum 存在。实际证明先限制到 fixed radial order $N$ 和 fixed log/jet bounds 的 candidate lattice，并证明 finite-order maximality；随后再研究 $N\to N+1$。

---

## 12. Stage 0 gate

| 项目 | 当前状态 | 后续证明位置 |
|---|---|---|
| Regulated collar 和 strata | 已定义 | 各模型固定 orientation 和 boundary terms |
| Polyhomogeneous space 和 topology | 已定义 | Stage 1 给出 Maxwell component index family |
| $b$-derivative、product、variation closure | 已证明 | 非多项式 nonlinearities 需逐模型补证 |
| Gauge slice | 已给出统一判据 | Stage 1 证明 $A_r=0$ 可达及 residual gauge |
| Relative boundary/corner variation | 已定义 | Stage 1 写 Maxwell 的完整实例 |
| Counterterm categories | 已定义 | Stage 1 枚举 fixed weight/jet basis |
| $C^2$ renormalization | 已定义 | Stage 1 首次证明存在或 obstruction |
| Maximality | 已定义 | Stage 1 在 finite candidate lattice 中检验 |

Stage 0 的 formal definitions 已闭合。它没有、也不应声称任何具体 field theory 已经 action-renormalizable。

---

## 13. Stage 1 interface

3D Maxwell 必须首先补齐以下 model data：

1. $\Phi=(A_\Omega,A_u,A_\phi)$ 各 component 的 candidate index sets；
2. radial gauge map 与 gauge-parameter index set；
3. $S_\epsilon$ 的 abstract off-shell variation；
4. cutoff Dirichlet polarization；
5. $\mathfrak C_{\mathrm{int}}^{K,W}$ 的最小 $K,W$；
6. 每个 divergence coefficient $\alpha_{\lambda,k}$；
7. 对应 local class是否为零。

只有完成 1--7，才能开始讨论 Maxwell EOM 所选出的 $\widetilde{\mathcal S}_{\mathrm M}$。

---

## 14. Sources and verification

定义依据：

- Daniel Grieser, [*Basics of the b-calculus*](https://arxiv.org/abs/math/0010314)，Definition 2.3、Remarks 2.4 和 manifold-with-corners extension；
- Juan Margalef-Bentabol and Eduardo J. S. Villaseñor, [*Geometric formulation of the Covariant Phase Space methods with boundaries*](https://arxiv.org/abs/2008.01842)，relative de Rham complex、relative bicomplex 与 corner action；
- Daniel Harlow and Jie-qiang Wu, [*Covariant phase space with boundaries*](https://arxiv.org/abs/1906.08616)，configuration space、boundary stationarity condition 和 action-derived boundary contribution。

Verified:

- Grieser 的 index-set、remainder 和 coordinate-completion 条件已由 PDF 原页检查；
- relative differential

$$\begin{align}
\underline d(\alpha,\beta) = (d\alpha,\iota^*\alpha-d_\partial\beta)
\end{align}$$

  及 relative integral 的符号已由 PDF 原页检查；
- $\Omega\partial_\Omega[\Omega^p(\log\Omega)^k]$ 的公式由 Mathematica 在 $\Omega>0$、$p\in\mathbb R$、$k\in\mathbb N_0$ 下验证。

Assumptions:

- 第一轮只允许 real radial powers；
- $\delta\Omega=0$；
- tangential coefficient functions 在有限 $u$-slab 上 smooth；
- ordinary implicit-function theorem 的 gauge-slice statement 仅在选定 Banach completion 中使用。

Not verified:

- 任何具体 Maxwell 或 gravitational index family 的 closure；
- Bondi/radial gauge 在这些具体 spaces 上的 global accessibility；
- 任一具体 counterterm basis 的 completeness；
- 任一具体 $S_{\mathrm{ren}}$、$\Theta_{\mathrm{ren}}$ 或 $\Omega_{\mathrm{ren}}$ 的有限性；
- polyhomogeneous formal expansion 对应的 PDE solution existence。
