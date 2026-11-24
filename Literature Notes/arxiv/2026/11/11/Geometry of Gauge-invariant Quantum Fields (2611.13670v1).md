---
paper id: 2611.13670v1
title: Geometry of Gauge-invariant Quantum Fields
authors:
  - Andrea Quadri
publication date: 2026-11-10T07:16:49
abstract: |-
  The paper identifies the inverse differential operator in a massless Abelian gauge-invariant representative with a contracting homotopy. An independent compensating scalar and a differential constraint make the field-level maps local. Auxiliary BRST fields, the Stückelberg mass deformation, possible non-Abelian homotopy transfer, and comparison with the FMS construction are discussed.
comments: "11 pages; proceedings of Group Theoretical Methods in Physics, Valladolid, July 2026"
url: https://arxiv.org/abs/2611.13670v1
summary: "给出规范约化的局域扩展模型；链收缩可验证，但特征零模、作用量/BV 结构与边界辛形式不能由形式逆算符或 doublet 论证直接略去。"
tags: []
---

# 结果：局域链收缩成立，完整物理量子等价尚未建立

**这篇短文最可用的部分是把“规范不变”“局域”“物理约化”拆成三个独立问题。** 在规定 $\Box^{-1}$、排除其 homogeneous／zero-mode 部分的形式域上，自由 Maxwell 复形的 transverse contraction 成立；扩大为 $(A_\mu,\psi)$ 后，规范参数与 $\psi$ 可以用完全局域的同伦分离。

但这不等于已经得到可直接用于 AdS 模式量子化的局域物理 Hilbert 空间。特别是：

- $\Box$ 的特征零模正是不能随意扔掉的辐射数据；把它们放回，给出的扩展链复形与 Maxwell 原复形的 field cohomology 并不自动相同。
- 带 multiplier 的实际作用量有额外 Euler 方程与边界势；它不等于只在方程栏手工添加一个 transversality equation。
- 非 Abelian interacting theory、BV 兼容转移、量子 Slavnov–Taylor 恒等式都仍是作者明说留待后续的内容。

直接用途是为当前 Maxwell／AdS 规范约化与区域 sewing 提供一个很小的测试场：**先选 Green 算符及其定义域，再约化；扩大场空间后重新求辛形式，而不是看到 BRST doublet 就认定边界与零模全不变。**

来源为 [arXiv v1](https://arxiv.org/abs/2611.13670v1)。11页 PDF，PDF 页与印刷页相同；阅读覆盖全部正文 §§1–7。实际页面核对 PDF 2、4、6–7、9–10。下文采用本地 Lorentzian signature $\eta=(-,+,+,+)$、$\Box=\partial^\mu\partial_\mu$；代数结论不依赖整体 signature 翻转。论文未显式统一写出 signature，其 Stückelberg 质量项的符号在下文另行说明。

# 1. Maxwell 自由复形：先明确作用量归一化

原作用量（2）是

$$S_M=-\frac14\int d^4x\,F^{\mu\nu}F_{\mu\nu},
\qquad F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu,
\qquad\delta_\Lambda A_\mu=\partial_\mu\Lambda.$$

由反对称性，

$$\delta S_M=-\frac12\int F^{\mu\nu}\delta F_{\mu\nu}
=-\int F^{\mu\nu}\partial_\mu\delta A_\nu
=\int(\partial_\mu F^{\mu\nu})\delta A_\nu
-\int\partial_\mu(F^{\mu\nu}\delta A_\nu).$$

因此取下指标方程变量时，标准线性算符为

$$({\cal E}A)_\mu=\Box A_\mu-\partial_\mu\partial\!\cdot\!A.$$

**PDF 2，式（3）把 $\delta S/\delta A^\mu$ 写成了上式的 $1/2$，与（2）不一致。** xAct 的实际变分给系数1；减去标准 $\partial F$ 的残差为零，减去半倍式则留下半倍 Maxwell 算符。原文紧接的（5）、（24）已经使用无 $1/2$ 的 $\mathcal E$，故这是局部归一化问题，不影响下述按（5）重建的链结构。

自由复形的次数为

$$X_1\xrightarrow{\partial_1}X_0\xrightarrow{\partial_0}X_{-1}\xrightarrow{\partial_{-1}}X_{-2},$$

$$\partial_1\Lambda=\partial_\mu\Lambda,
\qquad\partial_0A={\cal E}A,
\qquad\partial_{-1}E=\partial\!\cdot\!E.$$

两条复形恒等式 $\mathcal E\partial=0$ 与 $\partial\!\cdot\!\mathcal E=0$ 分别是 gauge invariance 与 Noether identity。物理解方程空间还要在 $\ker\partial_0$ 中 quotient 掉 $\operatorname{im}\partial_1$；仅从 off-shell 横向条件不能数出两个 photon polarizations。

# 2. 非局域性准确地在哪里

§2.1 选形式 Green 算符 $G$，要求在所选域上

$$\Box G=G\Box=1,\qquad[G,\partial_\mu]=0.$$

定义

$$\psi=G\partial\!\cdot\!A,
\qquad\widetilde A_\mu=A_\mu-\partial_\mu G\partial\!\cdot\!A,
\qquad P_T=1-\partial G\partial\!\cdot.$$

由 $G\Box\Lambda=\Lambda$ 得 $\delta_\Lambda\psi=\Lambda$、$\delta_\Lambda\widetilde A=0$；由 $\Box G=1$ 得 $\partial\!\cdot\!\widetilde A=0$，从而 $P_T^2=P_T$。同时

$$\mathcal EA=\Box\widetilde A.$$

这里作者保留 Lorentz covariance，却失去显式时空局域性。空间分解 $A_i=\widehat A_i+\partial_i\psi$、$\psi=\Delta^{-1}\partial_iA_i$ 可保持时间局域，但需换成空间 Laplacian 的边界／零模问题；两者不是同一个 Green prescription。

§2.2 的投影在 field、equation 次数都为 $P_T$，inclusion 是 transverse vectors 的自然嵌入，端点约化空间为0。同伦为

$$h_0A=G\partial\!\cdot\!A,
\qquad h_{-1}=0,
\qquad(h_{-2}f)_\mu=\partial_\mu Gf.$$

逐次数验证

$$pi=1,\qquad1-ip=\partial h+h\partial.$$

在 field 次数，右侧是 $\partial G\partial\!\cdot A$；equation 次数是 $\partial G\partial\!\cdot E$；在两个端点分别用 $G\Box=1$、$\Box G=1$。这解释了为什么需要**整个复形**的定义域，不只是画出 $A\mapsto\widetilde A$。

为独立检验，Sage 在 $\mathbb Q(k_0,k_1,k_2,k_3)$ 上设 $\eta=\operatorname{diag}(-1,1,1,1)$，$k$ 为下指标列，$k^\sharp{}^T=k^T\eta$，$s=k^T\eta k$，并构造

$$E=s1-kk^T\eta,\qquad P_T=1-kk^T\eta/s.$$

精确验证了 $Ek=0$、$k^T\eta E=0$、$P_T^2=P_T$、两个非平凡同伦式与两个端点恒等式。这里是微分符号代数，省略 Fourier 的 $i$ 不改变链复形秩与这些恒等式；$s=0$ 不在该有理函数域逆算符的定义范围。

# 3. 独立补偿标量给出局域收缩，但保留了什么

§3 不再把 $\psi$ 视为 $A$ 的函数，而是扩展为独立场，令

$$\delta_\Lambda(A_\mu,\psi)=(\partial_\mu\Lambda,\Lambda),
\quad B_\mu=A_\mu-\partial_\mu\psi,
\quad C=\Box\psi-\partial\!\cdot\!A=-\partial\!\cdot\!B.$$

$B$ 与 $C$ 都 gauge invariant。坐标变换 $(A,\psi)\leftrightarrow(B,\psi)$ 本身是局域三角变换；规范只作用于 $\psi$。

作者把 extended complex 定义为

$$X_1^{\rm ext}=\mathcal S,
\quad X_0^{\rm ext}=\mathcal V\oplus\mathcal S,
\quad X_{-1}^{\rm ext}=\mathcal V\oplus\mathcal S,
\quad X_{-2}^{\rm ext}=\mathcal S,$$

$$\partial_1^{\rm ext}\Lambda=(\partial\Lambda,\Lambda),$$
$$\partial_0^{\rm ext}(A,\psi)=(\mathcal EA,\Box\psi-\partial\!\cdot A),
\qquad\partial_{-1}^{\rm ext}(E,c_{\rm eq})=\partial\!\cdot E.$$

此处 equation 变量 $c_{\rm eq}$ 与后面的 ghost $c$ 不同。改成 $B$ 后，规范参数与 $\psi$ 组成 $\mathcal S\xrightarrow{1}\mathcal S$，retained complex 为

$$0\longrightarrow B\xrightarrow{\bar\partial_0}
(E,c_{\rm eq})\xrightarrow{\bar\partial_{-1}}f,
\qquad\bar\partial_0B=(\mathcal EB,-\partial\!\cdot B).$$

局域 maps 是

$$p_0^{\rm loc}(A,\psi)=A-\partial\psi,
\quad i_0^{\rm loc}B=(B,0),
\quad h_0^{\rm loc}(A,\psi)=\psi,$$

equation 和 identity 次数的 $p,i$ 都为单位。故

$$(1-i^{\rm loc}p^{\rm loc})(A,\psi)=(\partial\psi,\psi)
=\partial_1^{\rm ext}h_0^{\rm loc}(A,\psi).$$

Sage 对一般符号 $k$ 精确核验 extended 的两条 $\partial^2=0$、两条 chain-map 关系、$pi=1$、收缩式及 $hi=ph=0$；全部成立。这是本文最干净的局域代数结果。

但它是 **extended $\leftrightarrow$ retained-local** 的同伦等价，不是无需条件的 **original Maxwell $\leftrightarrow$ retained-local** 同伦等价。要回到原 nonlocal representative，还必须用同一个 $G$ 解 $C=0$ 并明确排除 $\psi_h\in\ker\Box$：

$$\psi=G\partial\!\cdot A+\psi_h,
\qquad B=\widetilde A-\partial\psi_h.$$

# 4. 一个与物理模式直接相关的精确检验

在一个非零 null covector 上取 $k_\mu=(-1,1,0,0)$，$k^2=0$。原 Maxwell 符号为 $E=-kk^T\eta$，rank 为1。因此

$$\dim H_0^{\rm Maxwell}=\dim\ker E-\dim\operatorname{im}k=3-1=2.$$

局域 retained 复形的方程符号是

$$\bar\partial_0=\begin{pmatrix}E\\-k^T\eta\end{pmatrix}.$$

它仍只有 rank 1，却没有 field-level gauge image，故

$$\dim H_0^{\rm loc}=4-1=3.$$

extended 复形则有5个 field variables、rank-1 equation symbol、rank-1 gauge image，给同样的 $5-1-1=3$。Sage 的有理精确秩计算复现以上数字。在非特征 $k=(-2,1,0,0)$、$k^2=-3$ 时，两者 field cohomology 都为0，与形式逆算符域中的收缩相容。

多出的代表可取 $B_\mu=k_\mu\sigma$，满足 $k\!\cdot B=0$、$F[B]=0$。在原 Maxwell 描述中它是纯规范，在扩展 $B$ 坐标中却不会被 $\delta(A,\psi)=(\partial\Lambda,\Lambda)$ 改变。这不是已经证明“多了一个正范数传播粒子”：该方向也可能是作用量辛形式的 null direction，需要进一步 quotient 或由完整 BRST/BV 数据处理。它证明的是 **仅凭本文局域链收缩，不能在把 homogeneous modes 放回以后声称完整物理解空间相同**。

作者第3页已主动声明丢弃 homogeneous／zero modes，所以这个检验不反驳该形式域内的投影恒等式；它定位的是将形式域结果借到真实 photon／AdS normal modes 时必须补的输入。严格把 $\Box$ 在全部 field space 上当作双边可逆，甚至会把横向 $\Box\widetilde A=0$ 的解也排光。要保留辐射，可以区分源空间上的 Green inverse 与解空间、加入核投影，或改用有明确定义域的空间 Hodge 分解，而不是对所有对象写同一个 $1$。

# 5. 辅助作用量与 BRST：哪些结论是代数的

§4 加 multiplier $X$：

$$S_{\rm aux}=\int X(\Box\psi-\partial\!\cdot A).$$

形式上先积 $X$ 给 $\delta[C]$，再积 $\psi$ 得 $|\det\Box|^{-1}$。在**固定背景、固定边界、固定 Green 处方且无零模**时，它不依赖 $A$，可作为归一化因子处理。若背景度规或边界条件在变化，这个 determinant 依赖它们，不能在引力／边界配分函数中无条件抛掉。

规范 BRST 是

$$sA_\mu=\partial_\mu\omega,\quad s\psi=\omega,
\quad s\omega=0,\quad sB=0.$$

另一个 constraint differential 记为 $q_c$，按原文（54）

$$q_c\bar c=C,\qquad q_cX=c,\qquad q_cc=0,$$

其余场上为0。由于 $sC=q_cC=0$，两者各自 nilpotent，适当赋予两个 ghost 次数后相容。Grassmann Leibniz 规则给

$$q_c\int\bar cX=\int(XC-\bar cc).$$

这确实同时 $s$-与 $q_c$-invariant。$(\psi,\omega)$、$(X,c)$ 在相应代数中为 doublets，因而其独立 doublet 变量不产生新 cohomology。但 $\bar c\mapsto C=-\partial\!\cdot B$ 中的 $C$ 是其他场的微分，不是可随意替换成独立坐标的新变量；“去掉 doublet”不自动证明局域算符代数、壳上解空间和边界 Hilbert 空间与原 Maxwell 全部同构。作者在第9、11页也仍要求完整 extended equation／BV 与 quantum 分析。

## 实际 Euler 方程与局域边界势

从作用量而不是手工 equation complex 出发，$S_M+S_{\rm aux}$ 的独立变分给

$$\mathcal EA+\partial X=0,
\qquad\Box X=0,
\qquad C=0.$$

这不是简单的 $\mathcal EA=0,C=0$，还出现 $X$ 的方程。对辅助部分两次分部积分得到

$$\delta S_{\rm aux}=\int\left[C\delta X+(\partial^\mu X)\delta A_\mu+(\Box X)\delta\psi\right]
+\int\partial_\mu\theta_{\rm aux}^{\mu},$$

$$\boxed{\theta_{\rm aux}^{\mu}=X\partial^\mu\delta\psi-(\partial^\mu X)\delta\psi-X\delta A^\mu.}$$

xAct 对此完整变分减去 bulk 项与边界散度的残差为零。这是当前 CPS 工作可以直接继续用的结果：新变量虽可在形式 bulk cohomology 中为辅助，它们的边界势仍须根据允许变分与边界条件处理。本文没有证明该势对任意 finite-region／AdS 边界都不贡献，也没有由此求出完整物理辛商。

# 6. Stückelberg 与 FMS：局域变量并非同一个局域算符代数

有独立 $\psi$ 后，$B=A-\partial\psi$ 是局域 gauge invariant，故 $B^2$ 可以成为局域 deformation。消去 $\psi$ 后它变成

$$B_\mu=A_\mu-\partial_\mu G\partial\!\cdot A,$$

相同 deformation 在原 $A$ 变量中非局域。这不与“纯 Maxwell 的局域 gauge invariants 由 $F$ 及其导数生成”矛盾，因为局域 field algebra 已经扩大。

论文（57）写 $+m^2B^2/2$。若采用 mostly-minus signature，这是标准 healthy Proca 质量符号；转换到本地 $(-,+,+,+)$ 时 $B^2$ 变号，应写 $-m^2B_\mu B^\mu/2$。原文未明确 signature，因此这里只使用质量项的 gauge invariance，不从其印刷正号单独断言稳定性。质量非零的 Stückelberg extension 也不是原 massless theory 的纯变量替换。

§6 比较的 FMS 构造反而有实际 Higgs 场

$$\phi=(v+\sigma+i\chi)/\sqrt2,\quad D_\mu=\partial_\mu-ieA_\mu,
\quad v\ne0.$$

其 gauge-invariant composite 为

$$a_\mu=\frac{i}{ev^2}\left[2\phi^\dagger D_\mu\phi-\partial_\mu(\phi^\dagger\phi)\right]
=\frac{e[(v+\sigma)^2+\chi^2]A_\mu-(v+\sigma)\partial_\mu\chi+\chi\partial_\mu\sigma}{ev^2}.$$

在线性阶 $a_\mu=A_\mu-\partial_\mu\chi/(ev)+O(\text{fluctuation}^2)$。Mathematica 直接展开复数标量，复现完整复合式；用 $\delta\sigma=-e\chi\Lambda$、$\delta\chi=e(v+\sigma)\Lambda$、$\delta A=\partial\Lambda$ 及其一阶导数独立检验 infinitesimal gauge variation 为零。

所以两者都出现补偿标量的结构，却不是同一输入：FMS 从 $v\ne0$ 的 Higgs 背景展开，本文从独立 auxiliary scalar 和微分约束出发。$v\to0$ 不能在 FMS 线性公式中直接取；也不能据 leading composite 等于 elementary vector 就无条件认定所有 gauge group／scalar sector 的谱完全一样。

# 7. 非 Abelian homotopy transfer：定理有条件，本文只作路线图

§5 使用 shifted homological convention：$\ell_n:S^nX\to X$ graded symmetric，degree 为 $-1$，$\ell_1=\partial$，没有 $\ell_0$。场 $a\in X_0$ 与参数 $\Lambda\in X_1$ 满足

$$F(a)=\sum_{n\geq1}\frac1{n!}\ell_n(a^n),
\qquad\delta_\Lambda a=\sum_{n\geq0}\frac1{n!}\ell_{n+1}(\Lambda,a^n).$$

在 coaugmented symmetric coalgebra 上的 coderivation $Q=\sum_n\widehat\ell_n$ 满足 $Q^2=0$；其各 arity 分量同时给自由复形、Jacobi 与 nonlinear Noether identities。给定 **所有次数上**的链收缩，transfer theorem 产生

$$\bar\ell_1=p\ell_1i,
\qquad\bar\ell_2(x_1,x_2)=p\ell_2(ix_1,ix_2),$$

更高项由原括号作顶点、$h$ 作内边、$i$ 作输入、$p$ 作输出的树构成。$p,i$ 本身也需修正为 $\mathcal P= p+P_2/2+\cdots$、$\mathcal I=i+I_2/2+\cdots$。

每个固定 perturbative order 只有有限次复合；如果所有输入 bracket 和 contraction map 都是局域微分算符，该阶扩展变量里的结果局域。但求解辅助微分约束后仍可重新出现 $G$。此外，转移 field equations 不等于转移 action，需要 BV pairing／cyclic structure；经典 $Q^2=0$ 不证明 quantum ST identities 或 renormalized equivalence。

## 一个独立补上的一阶可算构造

原文只写 $\delta\psi=\Lambda+O(g)$、$B=A-\partial\psi+O(g)$。可取矩阵群元 $U=e^{-g\psi}$，用约定

$$A\mapsto h^{-1}Ah+g^{-1}h^{-1}dh,
\qquad U\mapsto h^{-1}U,
\qquad h=e^{g\Lambda}.$$

则

$$B=U^{-1}AU+g^{-1}U^{-1}dU$$

严格 gauge invariant，展开得

$$\delta\psi=\Lambda+\frac g2[\psi,\Lambda]+O(g^2),$$

$$B=A-d\psi+g\left([\psi,A]-\tfrac12[\psi,d\psi]\right)+O(g^2).$$

Sage 在自由非交换代数中，将 $\delta_0A=d\Lambda$、$\delta_0\psi=\Lambda$ 代入，验证 $O(g)$ 的 $\delta B$ 残差精确为零。此处是**本次补充的场级例子**，不是作者已经完成的 nonlinear transfer；它仍未固定 nonlinear constraint、完整 BV data、允许局域项的幂计数与 renormalization。

# 8. 接到本地 AdS/CPS 前的最小要求

[本地 formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) 先把 gauge degeneracies 商掉，再以含 corner 数据的 $\omega=\delta\theta$ 规范化正频模式。本文给的 field-level projector 还不能替代这一步，特别是不能同时“排除所有 $\Box$ homogeneous modes”又把剩余空间叫正常的 on-shell photon 模式空间。

可落地的研究问题是：在固定 AdS boundary condition 下，选择一个保持该条件的空间 Hodge／Green 算符，显式保留其 harmonic sector；把上面 $\theta_{\rm aux}$ 与 Maxwell 势一起拉回约束面，比较 quotient 前后的 $\omega$，最后检验物理模式范数与 boundary charge。非紧致或带边界时，$[G,\nabla]$、kernel projector、残余 gauge 与真正 edge modes 都可能非零；这些不是本论文已经解决的附带小事。

**Verified:** Maxwell 作用量归一化；形式非局域 projector／全次数同伦；局域 extended contraction／chain maps；null 与 nonnull covector 上的精确 cohomology 维数比较；辅助作用量 Euler 方程与边界势；FMS 完整展开与变换；独立一阶非 Abelian compensator。代数／复形用 Sage，张量变分用 xAct，FMS 多项式用 Mathematica。早先 xAct 变分调用有一次无结构化输出、一次符号定义失败，均未计为证据；重设安全符号、实际 `VarD` 并完成 metric contraction／full simplification 后，标准系数残差为零而半倍系数残差非零。

**Assumptions:** 平直背景的 commuting derivatives；形式 $G$ 有指定双边逆域；严格区分 off-shell field complex、on-shell quotient 与 BRST/BV；$v\ne0$ 的 FMS 展开；本次 null 检验采用 $(-,+,+,+)$。

**Not verified:** 含全部 homogeneous／boundary modes 的物理 BRST 等价、辅助 sector 的完整 BV/量子 measure、AdS 自伴边界问题、全非 Abelian transfer 与 renormalization、质量 deformation 的完整谱稳定性。本文应读成一套有用的局域扩展与待完成的量子路线，不是已证明的局域 gauge-invariant Yang–Mills 量子化。
