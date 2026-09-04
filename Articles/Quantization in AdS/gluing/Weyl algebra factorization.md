# Weyl Algebra Factorization

在 `gluing formalism.md` 的 **linear bosonic theory、完整经典重构、相同物理外边界条件与 exact action/CPS additivity** 条件下，粘合后的 universal Weyl $C^*$-algebra 与 global theory 的 Weyl algebra canonically isomorphic。对该文的 massive free scalar，可以直接在完整能量空间上构造并证明

$$\begin{align}
\boxed{ \left(\bigotimes_{i\in\mathcal I}\mathfrak A_i^{\mathrm{en}}\right)^{\widehat\Gamma} \cong \mathfrak W(\mathsf C_\infty,\sigma_\infty|_{\mathsf C_\infty}) \xrightarrow[\cong]{\ \alpha_{\mathrm{ass}}\ } \mathfrak A_M^{\mathrm{en}}.}
\end{align}$$

这里 $\mathfrak A_i^{\mathrm{en}}$ 是保留可变化 configuration trace 的 regional Cauchy-data Weyl algebra；$\mathsf C_\infty$ 是配置迹匹配的完整能量数据空间；$\widehat\Gamma$ 的作用和张量积范数将在下文精确定义。同构及逆同构在生成元上是

$$\begin{align}
\alpha_{\mathrm{ass}}\left(\bigotimes_i W_i(z_i)\right) &=W_M\!\left(\mathcal U_{\mathrm{ass}}(z_i)_i\right), && (z_i)_i\in\mathsf C_\infty,\\
\alpha_{\mathrm{ass}}^{-1}(W_M(z)) &=\bigotimes_i W_i(z|_{\Sigma_i}), &&z\in\mathcal S_M^{\mathrm{en}}.
\end{align}$$

全文不引入 finite mode cutoff、Galerkin approximation 或截断极限。有限的只是区域个数，每个区域保留全部无限维场数据。这是 `gluing formalism.md` Part I 的 reconstruction/Weyl statement、Part II 的 KG energy reconstruction 和 Part V B1.3 的 quotient-character fixed-point theorem 的独立完整证明。

**必须限定“子区域量子化”的含义。** 若仅给出 prescribed-history algebras $\mathfrak W_i[q_i]$，$q_i$ 只是固定的外部参数，尚未给出不同 histories 之间的量子粘合操作。上述结论不能被改写成“这些 fixed-history algebras 的裸张量积自动等于 global theory”。本证明所用的额外数据正是原文的 regional energy parent、action-derived sewing relation 与相应 fixed-point operation。它也不声称指定 regional Fock representations 的 Hilbert spaces 可以酉粘合。

## 1. 从作用量固定 Sewing、符号与理论范围

先证明原文的 real massive scalar。取 ultrastatic spacetime $M=\mathbb R\times\Sigma$，signature 为 $(-,+,\ldots,+)$；$\Sigma$ 是紧的光滑 Riemannian spatial domain，允许物理外边界。取 finite admissible Lipschitz partition $\Sigma=\bigcup_i\Sigma_i$，各区域内部不交，人工界面记作 $\Sigma_{ij}$。采用同一个 bulk metric、mass $m>0$ 与 scalar field identification；物理外边界取 homogeneous Dirichlet。没有物理界面作用量、独立界面场或未计入的 corner symplectic term。

在有限时间 slab $I$ 上，regional actions 为

$$\begin{align}
S_i[\phi_i] &=\frac12\int_I\mathrm dt\int_{\Sigma_i}\mathrm d\mu_\Sigma \left(\dot\phi_i^2-|\nabla\phi_i|^2-m^2\phi_i^2\right),\\
\delta S_i &=\int_{I\times\Sigma_i}(-\ddot\phi_i+\Delta\phi_i-m^2\phi_i)\delta\phi_i +\left[\int_{\Sigma_i}\dot\phi_i\,\delta\phi_i\right]_{t_-}^{t_+} +\sum_{j\in N(i)}\int_I\langle\Pi_{ij},\delta q_{ij}\rangle\,\mathrm dt,\\
q_{ij}&=\gamma_{ij}\phi_i, &\Pi_{ij}&=-\partial_{n_i}\phi_i.
\end{align}$$

所有空间积分均使用上式的 volume measure；$n_i$ 是 region $i$ 的 outward normal。最后的通量表达先在足够光滑的场上读，低正则性版本将在第 3 节用 weak identity 定义。

先令两侧 histories 相等，再释放其共同变分，得到

$$\begin{align}
q_{ij}=q_{ji}=q_e,\qquad \delta(S_i+S_j)|_{\Gamma_e} &=\int_I\langle\Pi_{ij}+\Pi_{ji},\delta q_e\rangle\,\mathrm dt,\\
\Pi_{ij}+\Pi_{ji}&=0.
\end{align}$$

因此 continuity 与 outward-flux matching 来自同一个 summed action。对 `formalism.md` 的 $y_1=x+L$、$y_2=L-x$，两坐标都朝切口增大，所以这条方程是 $\phi_1'(L)+\phi_2'(L)=0$。

保留原文 momentum-first CPS convention，并取 $\hbar=1$：

$$\begin{align}
\Omega_i&=\int_{\Sigma_i}\delta\dot\phi_i\wedge\delta\phi_i,\\
\sigma_i((u_i,v_i),(\widetilde u_i,\widetilde v_i)) &=(v_i,\widetilde u_i)_{H_i}-(\widetilde v_i,u_i)_{H_i},\\
W(z)W(w)&=e^{-\mathrm i\sigma(z,w)/2}W(z+w), &W(z)^*&=W(-z),\qquad W(0)=1.
\end{align}$$

后文的 $z=(u,v)$ 始终是上述 real symplectic space 的 **Weyl label**。不把 label 的 configuration trace 与未定义的 sharp quantum boundary operator 混为一物。

## 2. 完整 Regional Energy Data 与匹配空间

所有 Hilbert/Sobolev spaces 先取实数域。定义

$$\begin{align}
H_i&=L^2(\Sigma_i),\\
V_i&=\{u_i\in H^1(\Sigma_i):\gamma_{i0}u_i=0 \text{ on the physical outer boundary}\},\\
\mathcal S_i^{\mathrm{en}}&=V_i\oplus H_i,\\
V^{\mathrm{dup}}&=\bigoplus_i V_i, &H^{\mathrm{dup}}&=\bigoplus_i H_i,\\
\mathcal S_\infty^{\mathrm{dup}}&=V^{\mathrm{dup}}\oplus H^{\mathrm{dup}}, &\sigma_\infty&=\sum_i\sigma_i.
\end{align}$$

与 fixed-history homogeneous fluctuation space 不同，$V_i$ **不在 artificial interface 上施加零迹**。不同 regional incidences 的 traces 起初独立。这是 continuum parent 中保留边界数据的含义；没有为每个界面添加一个独立 canonical oscillator。

由 trace theorem，配置跳跃映射

$$\begin{align}
A_\infty:V^{\mathrm{dup}}&\longrightarrow\mathcal Q_{\mathrm{jump}}, &A_\infty u&=(\gamma_{ij}u_i-\gamma_{ji}u_j)_{e=\{i,j\}}
\end{align}$$

连续。可以把 $\mathcal Q_{\mathrm{jump}}$ 取为实际 joint trace range 并赋予 quotient norm；不假设各 face 上任意 $H^{1/2}$ 数据均能独立实现。由各个 trace kernel 的闭性，以下空间在 energy topology 中闭合：

$$\begin{align}
V^{\mathrm{conf}}&=\ker A_\infty,\\
\boxed{\mathsf C_\infty:=V^{\mathrm{conf}}\oplus H^{\mathrm{dup}}.}
\end{align}$$

这里 $v_i\in L^2$，没有界面点值或一般的 boundary trace；因此不能额外写 $\gamma v_i=\gamma v_j$ 作为该能量空间上的约束。空间法向导数的 matching 则由第 3 节的受限作用量/算子域实施，也不是此处的第二个 equal-time primary constraint。

目标 global data space 明确取为原文 B1.3 的能量实现：

$$\begin{align}
H&=L^2(\Sigma), &V&=H_0^1(\Sigma),\\
\mathcal S_M^{\mathrm{en}}&=V\oplus H, &\sigma_M((u,v),(\widetilde u,\widetilde v)) &=(v,\widetilde u)_H-(\widetilde v,u)_H.
\end{align}$$

若 $\partial\Sigma=\varnothing$，这里 $H_0^1(\Sigma)=H^1(\Sigma)$。这些 two-forms 在 energy topology 中一般是 weak symplectic；证明只用 algebraic nondegeneracy，不要求 $\sigma^\flat$ 满射到整个连续对偶。

## 3. 连续经典重构：证明而非假定

### 3.1 Sobolev Patching 与辛同构

**Lemma 1.** Piecewise assembly 给出 continuous linear bijection

$$\begin{align}
\mathcal U_{\mathrm{ass}}:\mathsf C_\infty&\longrightarrow\mathcal S_M^{\mathrm{en}},\\
((u_i)_i,(v_i)_i)&\longmapsto\left(\bigcup_i u_i,\bigcup_i v_i\right),
\end{align}$$

其逆是 restriction，且

$$\begin{align}
\boxed{\sigma_M(\mathcal U_{\mathrm{ass}}z,\mathcal U_{\mathrm{ass}}w) =\sigma_\infty(z,w).}
\end{align}$$

**Proof.** 先将 $u_i$ 拼成 $L^2$ function $u$。对任意内部支撑的 smooth vector field $X$，逐区 integration by parts 给

$$\begin{align}
-\int_\Sigma u\,\operatorname{div}X =\sum_i\int_{\Sigma_i}\nabla u_i\cdot X -\sum_i\int_{\partial\Sigma_i}\gamma u_i\,X\cdot n_i.
\end{align}$$

人工界面上的 normals 相反、两侧 traces 相等，故最后的界面项相消；外边界项因 $X$ 的支撑为零。于是 $u$ 的 distributional gradient 就是 piecewise $\nabla u_i\in L^2$，所以 $u\in H^1(\Sigma)$。外边界零迹又给 $u\in V$。该公式在 Lipschitz domains 上由 $H^1$ trace/Green identity 成立；不需逐点可微。

反过来，global $H^1$ function 的两侧 restrictions 具有相同 interface trace。这可由 global smooth approximation、restriction continuity 与 trace continuity 得到。故 $V^{\mathrm{conf}}$ 恰好是 $V$ 的 restriction image。Momentum 只需 $L^2$，按区域拼接与 restriction 已互逆。Finite partition 的积分可加性给

$$\begin{align}
\|u\|_{H^1(\Sigma)}^2&=\sum_i\|u_i\|_{H^1(\Sigma_i)}^2, &\|v\|_H^2&=\sum_i\|v_i\|_{H_i}^2.
\end{align}$$

因此 maps 在所用 norms 下有界且互逆。对 $H$ pairing 同样分区积分，即得 displayed symplectic identity。

最后核验 nondegeneracy。若 $(u,v)$ 与所有 $(\widetilde u,\widetilde v)\in V\oplus H$ 的 pairing 为零，先任取 $\widetilde v\in H$ 得 $u=0$，再用 $V$ 在 $H$ 中稠密得 $v=0$。故 $\sigma_M$ nondegenerate，$\sigma_\infty|_{\mathsf C_\infty}$ 亦然；对各 $V_i\subset H_i$ 同理。$\square$

### 3.2 为什么得到的是同一个 Global Dynamics

仅有某个抽象辛空间同构不足以辨认物理理论；现在从 summed action 确定 evolution。设

$$\begin{align}
\mathfrak a^{\mathrm{dup}}[u,w] &=\sum_i\int_{\Sigma_i}\left(\nabla u_i\cdot\nabla w_i+m^2u_iw_i\right),\\
\mathfrak a_M[u,w] &=\int_\Sigma\left(\nabla u\cdot\nabla w+m^2uw\right).
\end{align}$$

由 Lemma 1，configuration assembly 把 $\mathfrak a^{\mathrm{dup}}|_{V^{\mathrm{conf}}}$ **逐字认同**为 domain $V$ 上的 $\mathfrak a_M$。它是 densely defined、closed、positive form，且 $\mathfrak a_M\ge m^2\|\cdot\|_H^2$。由 closed-form representation theorem，所对应的 positive self-adjoint operator 唯一，正是 global Dirichlet realization

$$\begin{align}
K_M&=-\Delta_\Sigma+m^2.
\end{align}$$

这已经固定了 flux transmission。具体地，在 regional elliptic graph domain 上对 form identity 分部积分，得到

$$\begin{align}
\sum_i\mathfrak a_i[u_i,w_i] &=\sum_i(\mathcal K_i u_i,w_i)_{H_i} +\sum_e\langle\partial_{n_i}u_i+\partial_{n_j}u_j,\gamma_e w\rangle.
\end{align}$$

无界面 source 的 operator equation 要求右侧最后一项对所有 matched tests 为零，正是 $\Pi_{ij}+\Pi_{ji}=0$ 的 weak form。在 smooth interfaces 的 $H^2$ core 上，这恢复通常的法向导数条件；在一般 Lipschitz 情形用 generalized conormal pairing，不能无条件宣称整个 operator domain 都是 piecewise $H^2$。

任意 $(u,v)\in V\oplus H$ 都给出唯一 global energy solution

$$\begin{align}
\phi(t) &=\cos(tK_M^{1/2})u+K_M^{-1/2}\sin(tK_M^{1/2})v,\\
\dot\phi(t) &=-K_M^{1/2}\sin(tK_M^{1/2})u+\cos(tK_M^{1/2})v.
\end{align}$$

这是 self-adjoint functional calculus，无须求出或截断 eigenmodes。解属于 $C(\mathbb R;V)\cap C^1(\mathbb R;H)\cap C^2(\mathbb R;V')$。

为了在完整能量类上表述 regional history gluing，对 regional solutions 要求相同 configuration traces，并要求对每个 $\eta\in C_c^\infty(I;V)$ 及其 restrictions $\eta_i$ 有

$$\begin{align}
\boxed{\sum_i\int_I\left[-(\dot\phi_i,\dot\eta_i)_{H_i} +\mathfrak a_i[\phi_i,\eta_i]\right]\mathrm dt=0.}
\end{align}$$

这条 identity 定义 full energy class 的 weak flux matching；无需单独为每个时刻定义 normal derivative。Assembly 把它变成 global weak KG equation。反过来，global weak equation 用内部 tests 给 regional equations，用全部 matched tests 给这条 identity。因此 regional matched solutions 与 global solutions 确实双向对应，不是把“已知 global solution 的 restrictions”作为定义来回避 surjectivity。

两侧 CPS flux 相消，或直接用上面的 functional calculus，可得 global energy evolution $U_M(t)$ 保持 $\sigma_M$。强正则数据上的微分证明是

$$\begin{align}
\frac{\mathrm d}{\mathrm dt}\left[(\dot\phi,\psi)_H-(\dot\psi,\phi)_H\right] =-\mathfrak a_M[\phi,\psi]+\mathfrak a_M[\psi,\phi]=0;
\end{align}$$

由强正则数据的 energy density 与解映射连续性，恒等式延拓至全部 energy solutions。故由 regional variational problem 得到的 glued evolution 满足

$$\begin{align}
U_{\mathrm{glued}}(t) &=\mathcal U_{\mathrm{ass}}^{-1}U_M(t)\mathcal U_{\mathrm{ass}}.
\end{align}$$

这里没有把 unconstrained regional Neumann/Dirichlet dynamics 直接限制到一个不变子空间。Connected dynamics 来自 **受限 form 的 self-adjoint operator**；该算子一般不同于未粘合 regional operator 的简单限制。

## 4. 无限维 Weyl Functor 与 Regional Tensor Product

### 4.1 同构和嵌入所需的精确 $C^*$ 事实

$\mathfrak W(\mathcal S,\sigma)$ 表示全部 $z\in\mathcal S$ 的 Weyl generators 所生成的 universal unital $C^*$-algebra。此定义不要求 $z\mapsto W(z)$ 对 energy norm 连续，也不选 complex structure 或 state。Finite Weyl polynomials 的 norm closure 是整个代数。

使用一条标准 CCR 定理：**任意 algebraically nondegenerate real symplectic space 的 universal Weyl algebra 都是 simple；无需有限维或 strong symplectic 假设。** 这是 Slawny theorem 的 simplicity consequence，可参照 [Petz, Chapter 4, Theorem 4.2 及 p. 34](https://math.bme.hu/~petz/CCR.pdf)。该文 Weyl phase 为 $e^{+\mathrm i\sigma_{\mathrm{Petz}}}$；与本文比较时取 $\sigma_{\mathrm{Petz}}=-\sigma/2$，不会改变 nondegeneracy。

**Lemma 2.** 若 $T:(\mathcal S_1,\sigma_1)\to(\mathcal S_2,\sigma_2)$ 是 linear symplectic bijection，则

$$\begin{align}
\mathfrak W(T)(W_1(z))=W_2(Tz)
\end{align}$$

唯一延拓为 isometric $*$-isomorphism。若 $T$ 是 symplectic injection 且 $\sigma_1$ nondegenerate，同一公式给 isometric $*$-embedding。

**Proof.** $T$ 的线性与保辛性给

$$\begin{align}
W_2(Tz)W_2(Tw) &=e^{-\mathrm i\sigma_2(Tz,Tw)/2}W_2(T(z+w))\\
&=e^{-\mathrm i\sigma_1(z,w)/2}W_2(T(z+w)).
\end{align}$$

Adjoint relation 同样保持。Universal property 给 unital $*$-homomorphism。Bijective 情形对 $T^{-1}$ 重复构造，两次复合在每个生成元上是 identity，故在整个 $C^*$-algebra 上是 identity。一般 injective 情形，kernel 是 simple source algebra 的 proper closed ideal，因 map unital，kernel 只能为零。Injective $*$-homomorphism 自动 isometric。$\square$

第一种情形甚至不需 simplicity；explicit inverse 已经证明 injectivity。特别地，不能只验 Weyl relations 后就跳过 injectivity/surjectivity 的证明。

### 4.2 先量子化每个完整 Regional Data Space

定义

$$\begin{align}
\mathfrak A_i^{\mathrm{en}}&=\mathfrak W(\mathcal S_i^{\mathrm{en}},\sigma_i),\\
\mathfrak A_\infty^{\mathrm{dup}} &=\mathfrak W(\mathcal S_\infty^{\mathrm{dup}},\sigma_\infty).
\end{align}$$

**Lemma 3.** 存在 canonical $C^*$-isomorphism

$$\begin{align}
\iota_\otimes:\bigotimes_i^{\max}\mathfrak A_i^{\mathrm{en}} &\xrightarrow{\ \cong\ }\mathfrak A_\infty^{\mathrm{dup}},\\
\bigotimes_i W_i(z_i)&\longmapsto W_{\mathrm{dup}}((z_i)_i).
\end{align}$$

本情形 maximal 与 minimal tensor norms 相同。

**Proof.** 不同 summands 的 symplectic pairing 为零，所以相应 Weyl subalgebras 在 parent 中 commute。Maximal tensor-product universal property 给 $\iota_\otimes$。反方向，$z=(z_i)_i\mapsto\bigotimes_iW_i(z_i)$ 满足

$$\begin{align}
\left(\bigotimes_iW_i(z_i)\right)\left(\bigotimes_iW_i(w_i)\right) =e^{-\mathrm i\sum_i\sigma_i(z_i,w_i)/2}\bigotimes_iW_i(z_i+w_i),
\end{align}$$

因此 Weyl universal property 给 inverse；两次复合在生成元上等于 identity。由 $\sigma_\infty$ nondegenerate，parent algebra simple。Canonical quotient 从 maximal tensor product 到 minimal tensor product 是 nonzero unital map，故经上述识别后其 kernel 为零。于是两种 norms 相同；后文省去 tensor norm 下标。$\square$

该证明允许每个 summand 都无限维。它建立的是独立 regional **parent data** 的 tensor product；下一步才实施物理 matching。

## 5. 在已量子化的 Regional Parent 上实施 Sewing

### 5.1 定义 Quotient-Character Action

只在这里把加法商群

$$\begin{align}
\Gamma:=\mathcal S_\infty^{\mathrm{dup}}/\mathsf C_\infty
\end{align}$$

赋予 **discrete topology**。它与 configuration jump 的实际 range 在加法群意义下同构。此处不使用 energy quotient topology。令

$$\begin{align}
\widehat\Gamma=\operatorname{Hom}(\Gamma,\mathbb T)
\end{align}$$

带 pointwise-convergence topology。它是 compact Abelian group：在 compact product $\mathbb T^\Gamma$ 中，character equations 定义闭子群。它有 normalized Haar measure $\mathrm d\vartheta$。

非零商类能被 characters 分离。这里甚至可直接用实线性代数证明：给定 $[z]\ne0$，在 real vector space $\Gamma$ 上取 $\ell$ 使 $\ell([z])=1$，则 $\vartheta([w])=e^{\mathrm i\pi\ell([w])}$ 是一个使 $\vartheta([z])=-1$ 的 character；由于 $\Gamma$ discrete，无额外连续性障碍。

对 $\vartheta\in\widehat\Gamma$ 定义

$$\begin{align}
\boxed{\beta_\vartheta(W_{\mathrm{dup}}(z)) =\vartheta([z])W_{\mathrm{dup}}(z).}
\end{align}$$

Character multiplicativity 保持 Weyl multiplication，$\vartheta(-[z])=\overline{\vartheta([z])}$ 保持 adjoint。Universal property 因此给 $*$-automorphism，inverse 为 $\beta_{\vartheta^{-1}}$。

此 compact group action 是 point-norm continuous。事实上，对 finite polynomial $p=\sum_{a=1}^n c_a W(z_a)$，

$$\begin{align}
\|\beta_\vartheta(p)-\beta_{\vartheta'}(p)\| \le\sum_{a=1}^n|c_a|\,|\vartheta([z_a])-\vartheta'([z_a])|.
\end{align}$$

右侧连续。对一般 $a$，取 $\|a-p\|<\epsilon$，利用 automorphisms isometric，将误差控制为 $2\epsilon$ 加上 displayed bound 即可。

### 5.2 固定点恰好是匹配数据的 Weyl Algebra

定义 quantum sewing operation 为取 $\beta$ 的固定点；其 canonical conditional expectation 是

$$\begin{align}
E(a)&=\int_{\widehat\Gamma}\beta_\vartheta(a)\,\mathrm d\vartheta.
\end{align}$$

上节的 point-norm continuity 保证该 Bochner integral 合法。作为 automorphisms 的 normalized positive average，它 unital、completely positive、contractive，且为 fixed algebra 的 bimodule map。

**Lemma 4.**

$$\begin{align}
E(W_{\mathrm{dup}}(z))
&=\begin{cases}
W_{\mathrm{dup}}(z),&z\in\mathsf C_\infty,\\
0,&z\notin\mathsf C_\infty,
\end{cases}\\
&\boxed{(\mathfrak A_\infty^{\mathrm{dup}})^{\widehat\Gamma} =\mathfrak W(\mathsf C_\infty,\sigma_\infty|_{\mathsf C_\infty}).}
\end{align}$$

右侧通过 Lemma 2 认同为 parent 中的 concrete $C^*$-subalgebra。

**Proof.** 若 $z\in\mathsf C_\infty$，所有 characters 在 $[z]=0$ 上等于 1。否则取 $\vartheta_0$ 使 $\vartheta_0([z])\ne1$；由 Haar translation invariance，

$$\begin{align}
\int\vartheta([z])\,\mathrm d\vartheta =\vartheta_0([z])\int\vartheta([z])\,\mathrm d\vartheta,
\end{align}$$

故积分为零。这证明 generator formula。

每个 matched generator 都 fixed，故它们生成的闭代数包含于左侧。反过来，设 $a$ fixed，取任意 finite Weyl polynomials $p_n\to a$ in norm。则 $E(a)=a$ 且

$$\begin{align}
\|E(p_n)-a\|\le\|p_n-a\|\longrightarrow0.
\end{align}$$

每个 $E(p_n)$ 只保留 matched labels，因此 $a$ 位于右侧。这证明整个 completed $C^*$-algebra 的等式，而非仅 algebraic Weyl span 的等式。$\square$

这里有限 polynomials 的逼近是任意 $C^*$-algebra 元素的定义性 norm completion；每个 polynomial 中的 label 本身可以包含无限多个 modes。它没有把场数据限制到某个有限维空间。

## 6. 主定理：Quantize First、Sew 与 Global Theory 同构

**Theorem.** 在第 1 节的 free-scalar hypotheses 下，取第 2 节的全部能量数据，并用第 5 节的 character action 在已量子化的 regional tensor product 上实施 sewing。则

$$\begin{align}
\mathfrak A_{\mathrm{glued}} &:=\left(\bigotimes_i\mathfrak A_i^{\mathrm{en}}\right)^{\widehat\Gamma},\\
\mathfrak A_M^{\mathrm{en}} &:=\mathfrak W(\mathcal S_M^{\mathrm{en}},\sigma_M),\\
&\boxed{\alpha_{\mathrm{ass}}:\mathfrak A_{\mathrm{glued}} \xrightarrow{\ \cong\ }\mathfrak A_M^{\mathrm{en}}}
\end{align}$$

是 canonical、isometric、unital $*$-isomorphism。

**Proof.** Lemma 3 把 regional tensor product 认同为 duplicate parent。Lemma 4 将其 fixed algebra 认同为 $\mathfrak W(\mathsf C_\infty)$。Lemma 1 给出全部 matched energy labels 与全部 global energy labels 之间的 symplectic bijection。应用 Lemma 2，得到

$$\begin{align}
\alpha_{\mathrm{ass}}(W_{\mathrm{dup}}(z)) &=W_M(\mathcal U_{\mathrm{ass}}z),\qquad z\in\mathsf C_\infty.
\end{align}$$

具体核验如下：

1. **Well-definedness 与乘法。** $\sigma_M(\mathcal U_{\mathrm{ass}}z,\mathcal U_{\mathrm{ass}}w)=\sigma_\infty(z,w)$，故 multiplication 的 Weyl phase 完全相同；adjoint 和 unit 也保持。
2. **Surjectivity。** 任意 global label $z\in V\oplus H$ 的 restrictions 属于 $\mathsf C_\infty$，故每个 $W_M(z)$ 都在 image 中。$*$-homomorphism 的 image 是闭 $C^*$-subalgebra，所以 image 是全部 target。
3. **Injectivity。** Restriction 给逆映射 $W_M(z)\mapsto W_{\mathrm{dup}}(\operatorname{Res}z)$。两次复合在生成元上恒等，因而在 norm completion 上恒等。
4. **Canonicity。** Assembly 与 restriction 由 geometric partition 和同一个场的认同决定；证明没有选择 eigenbasis、lifting、complex structure 或真空。

这证明所需 full continuum $C^*$-isomorphism。$\square$

第 3.2 节同时给相应 quantum dynamics 的 intertwining。定义

$$\begin{align}
\tau_t^M(W_M(z))&=W_M(U_M(t)z),\\
\tau_t^{\mathrm{glued}}(W_{\mathrm{dup}}(c)) &=W_{\mathrm{dup}}(U_{\mathrm{glued}}(t)c), \qquad c\in\mathsf C_\infty.
\end{align}$$

则

$$\begin{align}
\boxed{\alpha_{\mathrm{ass}}\circ\tau_t^{\mathrm{glued}} =\tau_t^M\circ\alpha_{\mathrm{ass}}.}
\end{align}$$

这是 Weyl automorphism groups 的等式。它不要求这些 groups 在 universal Weyl norm 上 point-norm continuous，也不声称 $E$ intertwines 未粘合 parent dynamics。

## 7. 与一般 Linear Reconstruction Theorem 的连接

对 `gluing formalism.md` 中更一般的 linear bosonic theory，设 $\mathcal S_M$ 是固定 boundary conditions 下的 physical solution space，$\mathcal S_{\mathfrak P}$ 是完整 sewn regional solution space。只要实际证明了

$$\begin{align}
\operatorname{Res}:\mathcal S_M&\xrightarrow{\ \sim\ }\mathcal S_{\mathfrak P}, &\operatorname{Res}^*\sigma_{\mathfrak P}&=\sigma_M,
\end{align}$$

Lemma 2 立即、无截断地给

$$\begin{align}
\mathfrak W(\mathcal S_M,\sigma_M) &\xrightarrow{\ \cong\ }\mathfrak W(\mathcal S_{\mathfrak P},\sigma_{\mathfrak P}),\\
W_M(F)&\longmapsto W_{\mathfrak P}(\operatorname{Res}F).
\end{align}$$

**一般理论的 precise conditions** 是：regional/global equations 与 data domains 相容；完整 transmission 条件可从 action 推导；piecewise solutions 可拼成 global solutions；每个 global solution 的 restriction 都进入所声明的 regional class；uniqueness 给 inverse；action、boundary potentials 与 corner completions 的 additivity 给 CPS equality。必须核查所有 physical/gauge sectors 均包含在上述双向映射中。

若有 genuine presymplectic radical，必须先规定物理约化。对于已经给定的 linear presymplectic space $(\mathcal C,\sigma_{\mathcal C})$，令

$$\begin{align}
\mathcal R&=\{r\in\mathcal C:\sigma_{\mathcal C}(r,c)=0\ \forall c\in\mathcal C\}.
\end{align}$$

只有当 $\mathcal R$ 的确是应消去的物理冗余，而非需保留的 central charge/sector，才取 trivial-character quotient

$$\begin{align}
\mathfrak W(\mathcal C,\sigma_{\mathcal C})\Big/ \overline{\langle W(r)-1:r\in\mathcal R\rangle} \cong\mathfrak W(\mathcal C/\mathcal R,\overline\sigma).
\end{align}$$

这个等式也由 universal property 直接证明：$W(c)\mapsto W([c])$ 杀掉该 ideal；反方向 $[c]\mapsto[W(c)]$ 不依赖代表元，因为 $\sigma(c,r)=0$ 且 $[W(r)]=1$。两次复合恒等。之后还须证明 $\mathcal C/\mathcal R$ 与 global physical symplectic space 同构。Scalar 主定理已证明 radical 为零，无需这一步。

因此，一般 Weyl lifting 是严格的 conditional theorem；第 3 节则把所需的 PDE/energy reconstruction 在声明的 scalar class 中真正闭合。若还要求一般理论的 literal quantize-first realization，需要另外给出其 regional parent 和 quantum sewing operation，不能仅用 classical-to-Weyl lifting 代替这一构造。

Nonlinear phase space 的全部 observable algebra 一般不是一套由 constant bilinear form 定义的 Weyl CCR；上述结论只直接作用于 free/linear theory 或已声明背景上的 linearized theory。Dirac 应用 CAR；带 gauge redundancy、非平凡 holonomy 或边界电荷的模型不能直接代入 scalar parent。

## 8. 多区域 Associativity、状态与 Label Domain

### 8.1 Associativity 与 Artificial Refinement

在同一个 full parent 中，对任何部分接口集合 $F$，令 $\mathsf C_F$ 为只实施这些接口 continuity 的空间，$E_F$ 为相应 character expectation。其 generator formula 给

$$\begin{align}
E_F E_G(W(z)) &=\mathbf1_{\mathsf C_F}(z)\mathbf1_{\mathsf C_G}(z)W(z)\\
&=E_{F\cup G}(W(z)),\\
&\boxed{E_F E_G=E_G E_F=E_{F\cup G}.}
\end{align}$$

最后一步使用 finite Weyl span density 与 contractivity。故每条人工接口都被实施、且中间步骤保留剩余完整数据时，sewing 顺序不改变最终 fixed algebra。这允许有 cycles 的有限接口图；不需把它替换成一棵只保留部分 edges 的树。

对两个均满足上述 patching hypotheses 的 partitions $\mathfrak P,\mathfrak P'$，以各自与 global theory 的同构定义

$$\begin{align}
\alpha_{\mathfrak P\to\mathfrak P'} &=\alpha_{\mathrm{ass},\mathfrak P'}^{-1}\alpha_{\mathrm{ass},\mathfrak P}.
\end{align}$$

这些 maps 满足 exact cocycle identity。因而结果对 admissible artificial refinement canonical invariant；这并未给出移动切口时的 uniform estimates 或未声明的 corner/gauge extension。

### 8.2 状态在同构下如何对应

任意 global state $\omega_M$ 给 glued state

$$\begin{align}
\omega_{\mathrm{glued}}=\omega_M\circ\alpha_{\mathrm{ass}}.
\end{align}$$

这是 state spaces 的双射。对任意有限个 matched labels $c_1,\ldots,c_n$，所有 Weyl correlations 满足

$$\begin{align}
\omega_{\mathrm{glued}}\!\left(\prod_{a=1}^nW_{\mathrm{dup}}(c_a)\right) =\omega_M\!\left(\prod_{a=1}^nW_M(\mathcal U_{\mathrm{ass}}c_a)\right).
\end{align}$$

由同构配对的两个 states，其 GNS representations canonically unitarily equivalent；这只比较 **被该同构拉回的同一个 state**，不比较任意预先指定的 regional product vacuum。

把 glued algebra 认同为 parent fixed algebra 后，还有 invariant extension

$$\begin{align}
\widetilde\omega=\omega_{\mathrm{glued}}\circ E.
\end{align}$$

若 $z\notin\mathsf C_\infty$，则对每个 $s\ne0$ 都有 $sz\notin\mathsf C_\infty$，所以

$$\begin{align}
\widetilde\omega(W(sz))
=\begin{cases}1,&s=0,\\
0,&s\ne0.\end{cases}
\end{align}$$

它在 transverse one-parameter Weyl directions 上 nonregular。于是，fixed-point theorem 本身不能提供一个 regular regional product-Fock 中的 sharp constraint vector。这与原文的表示层边界一致。

### 8.3 Energy Labels 与通常 Test-Function Labels

主定理的 global algebra 明确是 $\mathfrak W(V\oplus H,\sigma_M)$。若选用较小的 smooth-solution 或 spacetime-test-function CCR algebra，必须在两侧同时使用对应的 label space。

例如给定 nondegenerate symplectic subspace $\mathcal S_M^0\subset\mathcal S_M^{\mathrm{en}}$，令 $\mathsf C^0=\operatorname{Res}\mathcal S_M^0$，则同一个 assembly map 给

$$\begin{align}
\mathfrak W(\mathsf C^0,\sigma_\infty|_{\mathsf C^0})
\cong\mathfrak W(\mathcal S_M^0,\sigma_M|_{\mathcal S_M^0}).
\end{align}$$

它们分别是相应 energy Weyl algebras 的子代数。把 spacetime test functions modulo equations 与该 solution-label space 认同，还要使用同一 boundary condition 下的 causal propagator/Green theorem。这里只证明已经明确的 symplectic-label statements，不把 energy completion、smooth core 和 test-function quotient 当作同一个 algebraic vector space。

## 9. 无限维论证中不能替换的步骤

**第一，$E$ 是 conditional expectation，不是 quotient homomorphism。** 若 $z$ transverse，则

$$\begin{align}
E(W(z))E(W(-z))=0,\qquad E(W(z)W(-z))=E(1)=1.
\end{align}$$

所以不能把本证明说成“将不匹配的 Weyl generators 在 algebra quotient 中置零”。也不能在 nondegenerate parent 中任意实施 $W(z)=1$：由

$$\begin{align}
W(w)W(z)W(w)^*=e^{-\mathrm i\sigma(w,z)}W(z),
\end{align}$$

选择 $w$ 使 phase 不为 1，就会在该 quotient 中推出 $1=0$。第 7 节的 radical quotient 合法，恰因为那些 generators 是 central 且其 directions 已被明确认定为冗余。

**第二，完整能量空间没有 finite-type symplectic normal factor。** 在 scalar parent 中

$$\begin{align}
\boxed{\mathsf C_\infty^{\sigma_\infty}=\{0\}.}
\end{align}$$

证明：若 $(a,b)$ 与所有 $(u,v)\in V^{\mathrm{conf}}\oplus H^{\mathrm{dup}}$ 正交，任取 $v$ 得 $a=0$；$V^{\mathrm{conf}}$ 在 $H^{\mathrm{dup}}$ 中稠密，再得 $b=0$。只要有非平凡 cut，$\mathsf C_\infty$ 又是 proper subspace。因此不存在 $\mathcal S_\infty^{\mathrm{dup}}=\mathsf C_\infty\oplus^\sigma\mathcal N$ 的补空间分解。本文 factorization 的准确内容是 **regional parent tensor product 的 sewing fixed algebra**，不是 continuum physical/normal tensor factorization。

**第三，不能用 energy density 冒充 full Weyl norm closure。** 对 nondegenerate Weyl algebra，$z\ne w$ 时

$$\begin{align}
\|W(z)-W(w)\|=2.
\end{align}$$

证明：将差乘以 unitary 后得到 $1-e^{\mathrm i\theta}W(h)$，其中 $h\ne0$。Nondegeneracy 与 $W(k)$ 的 conjugation 使 $W(h)$ 的 spectrum 对所有圆周转动不变，故其 spectrum 是整个 $\mathbb T$；norm 因此为 2。

更强地，若 $\mathcal S_0\subsetneq\mathcal S$ 是 proper algebraic subspace，取 real linear functional $\ell$ 使 $\ell|_{\mathcal S_0}=0$ 而 $\ell(z_*)\ne0$。Characters 给 automorphisms

$$\begin{align}
W(z)\longmapsto e^{\mathrm it\ell(z)}W(z).
\end{align}$$

它们逐点固定 $\mathcal S_0$-labelled Weyl generators 及其 norm closure，却不固定某个 $W(z_*)$。因此即使 $\mathcal S_0$ energy-dense，其 Weyl norm closure 仍非整个 $\mathfrak W(\mathcal S)$。主定理从第一步就使用全部 continuum labels，故不依赖这种错误的截断闭包推断。

## 10. Verification 与 Claim Boundary

**Verified:** 本文 Lemmas 1–4 与主定理给出了所声明 scalar class 的完整解析证明：Sobolev patching、双向 energy reconstruction、CPS equality、regional tensor-product identification、compact character action、整个 $C^*$ fixed algebra 的识别、explicit inverse，以及 action-derived dynamics 的 intertwining。一般 linear theory 的 Weyl lifting 与 radical quotient 则在第 7 节的明确前提下证明。无限维结论依赖这些解析论证，不由有限矩阵测试推出。

**Checked symbolically:** Mathematica 核查了 scalar first-variation integration-by-parts identity、momentum-first antisymmetric pairing、Weyl cocycle/commutator phase、character multiplicativity 和 paired interface-flux cancellation；对应 residuals 均为零。以下是可复现的核心检查，无场 mode cutoff：

```wolfram
ClearAll[sg, u, v, up, vp, upp, vpp, x, y, z,
  t, m, f, eta, th, q1, q2, r1, r2, dp, dp2, dq, dq2];
sg[x_, y_] := x[[2]] y[[1]] - y[[2]] x[[1]];
x = {u, v}; y = {up, vp}; z = {upp, vpp};
phaseChecks = {
  Expand[sg[x,y] + sg[x+y,z] - sg[y,z] - sg[x,y+z]],
  Expand[x.{{0,-1},{1,0}}.y - sg[x,y]],
  Expand[-sg[x,y]/2 - sg[x+y,-x]/2 + sg[x,y]]
};
Clear[x];
firstVariation = (D[f[t,x],t] D[eta[t,x],t]
  - D[f[t,x],x] D[eta[t,x],x] - m^2 f[t,x] eta[t,x]);
greenResidual = Expand[firstVariation
  - (-D[f[t,x],{t,2}] + D[f[t,x],{x,2}] - m^2 f[t,x]) eta[t,x]
  - D[D[f[t,x],t] eta[t,x],t] + D[D[f[t,x],x] eta[t,x],x]];
characterResidual = FullSimplify[
  Exp[I th(q1-q2)] Exp[I th(r1-r2)]
  - Exp[I th((q1+r1)-(q2+r2))]];
fluxResidual = Expand[dp dq2 - dp2 dq + (-dp) dq2 - (-dp2) dq];
Print[{phaseChecks, greenResidual, characterResidual, fluxResidual}];
(* {{0,0,0}, 0, 0, 0} *)
```

**Assumptions:** Linear real scalar、$m>0$、ultrastatic background、finite admissible Lipschitz partition、相同 bulk coefficients 与 homogeneous physical Dirichlet condition、无 genuine interface/corner dynamics、trace/Green identities，以及标准 positive closed-form 与 universal CCR theorems。Petz PDF 的 Chapter 4 theorem statement、Weyl normalization 和 simplicity statement 已作文本提取与页面核对；本文符号按第 1 节固定。

**Not verified / not claimed:** 任意 nonlinear/gauge theory 的量子粘合；未完成的 boundary/gauge/corner sectors；任意 null-horizon data 的 global surjectivity；仅靠 fixed-history algebra family 的内部 sewing；指定 regional product-Fock 的酉实现；sharp boundary operator 或无限维 history integration measure；full Weyl norm 下的截断收敛。上述内容均不是 scalar 主定理的隐藏前提。
