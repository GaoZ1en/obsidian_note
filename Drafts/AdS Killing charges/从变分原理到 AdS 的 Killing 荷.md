# 从变分原理到 AdS 的 Killing 荷：直接 Noether 法与度规变分法

**在一个新的 AdS 场论中，先求哪个对象？** 先求在给定边界条件下生成对称变换的 Hamiltonian，而不是先选一个局域应力张量。能否把这个 Hamiltonian 写成纯体积分，是第二个问题。慢衰减标量提供了很好的判据：最小耦合的体能量本身可以发散，但同一作用量给出的角项恰好补全它；无需把“能量有限且守恒”作为调系数的附加公理。

**来源与约定。** Zhe Feng、Zi-en Gao、Jie-qiang Wu、Hongbao Zhang，[本地手稿 *Applying Noether’s Theorem to the Free Scalar Field in Global AdS…*](</Users/koishi/Library/Containers/com.tencent.xinWeChat/Data/Documents/xwechat_files/wxid_sezf6lc871x122_ee84/msg/file/2026-11/AdSScalar5(4).pdf>)，2026-11-16 生成的 87 页版本。下文式号均指该版本；正文第 $p$ 页是 PDF 第 $p+2$ 页。§4.2 在正文 12–13，§5 在 14–27，§6 在 27–51，§7 在 51–61，附录 D 在 73–77。与 [量子微扰笔记](<../../Articles/Quantization in AdS/perturbation/formalism.md>) 用同一号差 $(-,+,\ldots)$、同一未来向单位法矢 $\tau$ 和同一约定 $\omega=\delta\theta$。论文的 $Q_\xi$ 就是该笔记的 $H_\xi$；$\xi=\partial_t$ 时才特称为能量。这里先讨论经典荷，取 AdS 半径为 1。

## 1. 固定背景：从允许的变分读出荷（§§4.2、5）

**输入。** 指定背景 $g$、固定的外源、动力学场 $\Psi^a$，以及哪些渐近系数固定、哪些允许自由变分。记这一离壳配置空间为 $\mathcal C$。取有限时间带，径向截断在 $r=R$，其侧面为 $\Gamma_R$，时间截面为 $\Sigma_R$，两者相交于 $\partial\Sigma_R$。作用量是**一个**极限（下式的 $\boldsymbol L,\boldsymbol\ell$ 已含体积形式）：

$$
S=\lim_{R\to\infty}\left(\int_{M_R}\boldsymbol L+\int_{\Gamma_R}\boldsymbol\ell\right).
$$

边界项不仅可能抵消发散；它的有限部分也可能改变边界方程，即改变理论。在 $\mathcal C$ 上须检查作用量有限、允许的变分存在，且取极限、变分以及下述分部积分相容。仅在特定解上代回得到有限数值不够。

**第一步：作任意允许变分，不先用场方程。** 整理成 (4.17) 型：

$$
\delta S=\lim_{R\to\infty}\left[\int_{M_R}\!\sqrt{-g}\,E_a\delta\Psi^a+\mathcal B_R(\delta\Psi)\right]
       +\theta_{\Sigma_f}-\theta_{\Sigma_i}.
$$

此处及下文含 $\sqrt{|g|}$ 的积分简写省略坐标微元。$\mathcal B_R$ 是在 $\Gamma_R$ 上做完切向分部积分后剩下的边界变分；由该分部积分产生的端点已归入 $\theta_\Sigma$。$\theta_\Sigma$ 是**积分后**的场空间一形式，可以同时含 $\Sigma_R$ 和 $\partial\Sigma_R$ 项。括号中两项在离壳时未必分别收敛，不得提前拆开极限。

先用内点紧支撑变分读出 $E_a=0$。再固定初末端点、任意变动允许的边界数据，要求驻定，读出使剩余边界变分为零的边界方程。这有两种不同实现：边界数据已被固定，或自由变分的边界系数有自己的共轭方程。后一种情形中，**解空间的渐近条件比离壳条件强**。不要用它缩小第一步的变分。记同时满足体方程和相应边界条件的解集为 $\widetilde{\mathcal P}$。将 $\omega_\Sigma=\delta\theta_\Sigma$ 拉回到它，在两支线性化解上检验总辛通量为零（包括边界自由度和角项）；这给出截面无关的预辛形式。有规范对称时，只商去其核，不商去带非零边界荷的变换。

**第二步：用对称变分而非任意变分求端点函数。** 令 $X_\xi\Psi=\mathcal L_\xi\Psi$（若场需要提升或补偿变换，应明定）。检查它保持 $\mathcal C$、背景和固定源，再在**离壳**验证

$$
X_\xi\cdot\delta S=\alpha_\xi[\Sigma_f]-\alpha_\xi[\Sigma_i]+\beta_\xi[M],\qquad \delta_{\Psi}\beta_\xi=0.
$$

$\alpha_\xi$ 也可含角项。这里 $\beta_\xi$ 表示整个时间带上与动力学配置无关的余项，可以来自边界；不是任意漏出的通量。将这次计算与第一步沿 $X_\xi$ 的取值相比较，§4 的 Noether 定理给出

$$
H_\xi=X_\xi\cdot\theta_\Sigma-\alpha_\xi[\Sigma],\qquad
(H_{\xi,f}-H_{\xi,i})|_{\widetilde{\mathcal P}}=\beta_\xi[M],\qquad
\iota_{X_\xi}\omega|_{\widetilde{\mathcal P}}=-\delta(H_\xi|_{\widetilde{\mathcal P}}).
$$

三个检查分别是：$X_\xi$ 切于解空间（也保持边界方程）；荷满足平衡式；其变分确实生成指定变换。论文 §5 的 Killing 荷有 $\beta_\xi=0$。若两个候选表达只验出同一生成方程，它们还可在解空间每个连通分支上差常数；须选同一参考解比较。此法并不要求每一种对称都有度规变分的表示。

## 2. 扩展背景：何时能把同一个荷写成应力积分？（§6）

1. **先扩展，后固定。** 把同一物质理论延拓为不同背景度规上的协变作用量族 $S_{\rm ext}[\Psi;g]$。在延拓的配置空间可变 $g$；在“扩展解空间”只解物质的体、边界方程，**不**令 $\delta S/\delta g=0$。延拓不唯一；判别它们是否代表同一原问题的条件是拉回原背景后具有相同的作用量、允许变分和端点约定。
2. **对完整作用量取度规响应。** 在 §6.3.2 的情形，分部积分后，除物质变分和 $\theta^{\rm ext}_f-\theta^{\rm ext}_i$ 外，剩下

   $$
   \tfrac12\lim_{R\to\infty}\left[\int_{M_R}\sqrt{-g}\,T^{\mu\nu}\delta g_{\mu\nu}
             +\int_{\Gamma_R}\sqrt{-\gamma}\,t^{AB}\delta\gamma_{AB}\right].
   $$

   $A,B$ 是侧面的切向指标；$t$ 是**全部变分**的切向度规响应，不只是孤立地变分边界反项的结果。端点也可能含 $\delta g$。(6.81) 展示了含 $\delta K$ 时如何先整理法向导数，再读出 $T,t$ 和角势。若另有独立边界源、法向导数或边界场，须另列响应；不能假装上式已穷尽它们。
3. **同一微分同胚算两次。** 在一族背景上取 $\delta_\xi(\Psi,g)=(\mathcal L_\xi\Psi,\mathcal L_\xi g)$。先直接变换体及边界拉氏量，读出端点 $\alpha^{\rm ext}_\xi$ 与可能的侧面余项；再代入一般变分，用 $\mathcal L_\xi g_{\mu\nu}=2\nabla_{(\mu}\xi_{\nu)}$ 做体、面分部积分。**此时不要先令 $\xi$ 为 Killing 场**，否则度规响应整项为零，读不出它与荷的关系。允许的 $\xi$ 在内点可任取，在边界服从规定渐近式；(6.46) 允许独立检验切向与径向的领先系数。取物质在壳后比较：在无其他源时，内点给 $\nabla_\mu T^{\mu\nu}=0$；切向系数检验 $n_\mu T^{\mu A}-D_Bt^{BA}$，法向系数检验 $n_\mu n_\nu T^{\mu\nu}+K_{AB}t^{AB}$ 的渐近衰减。它们不是要求有限截断上两式恒为零，见 (6.118)–(6.121)。端点系数给出荷的表示。
4. **最后拉回原理论。** 令 $g=g_0$、$\mathcal L_\xi g_0=0$，并要求 $\xi$ 保持其余固定数据。若无额外响应且上述边界余项按假设消失，(6.122) 对应的结果是

   $$
   H_\xi\big|_{\widetilde{\mathcal P}}=\lim_{R\to\infty}\left[
   \int_{\Sigma_R}\sqrt\sigma\,\tau^\mu\xi^\nu T_{\mu\nu}
   +\int_{\partial\Sigma_R}\sqrt h\,\widetilde\tau^A\xi_\parallel^B t_{AB}\right]_{\widetilde{\mathcal P}}.
   $$

   $n$ 是侧面外法矢，$\xi_\parallel$ 是 $\xi$ 在侧面的投影，$\widetilde\tau$ 是沿侧面、垂直于角截面的未来向单位法矢。**为什么与第一条路线可比？** 记固定背景的嵌入为 $j$。因扩展变换在这里与 $j_*X_\xi$ 相同，且 $j^*\theta^{\rm ext}=\theta$、$j^*\alpha^{\rm ext}_\xi=\alpha_\xi$（同一端点约定），所以 $j^*H^{\rm ext}_\xi=H_\xi$。这正是 (6.73)–(6.74)、(6.123)–(6.124) 前逐项核对的内容。§6.1 给出的是**无空间边界**的一般论证；带渐近边界时 §6.3 做的是标量模型。可以推广上面四步，但不能把最后的两项式不加检查地提升为一般定理。

## 3. 标量校准：快支、慢支和 BF 点

令 $L_0=-\tfrac12(\nabla\phi)^2-\tfrac12\Delta(\Delta-d)\phi^2$，$T_{0;\mu\nu}=\nabla_\mu\phi\nabla_\nu\phi+g_{\mu\nu}L_0$。这里 $\Delta$ 是所选衰减指数；慢支时它是较小根。文中的 $o(r^k)$ 按 (2.17) 带正幂余量，并控制所需导数，不是普通逐点小 $o$。

| 分支 | 离壳输入与边界驻定 | 直接荷与度规响应的比对 |
|---|---|---|
| 快支 $\Delta>d/2$ | $\phi=o(r^{-d/2})$；用 $L_0$ 即可，侧面变分消失。 | (5.18) 是 $T_0$ 的纯体积分。改进项积分分部后的角项趋零，所以对任意 $\lambda$，(5.26) = (6.74)。 |
| 慢支 $d/2-1<\Delta<d/2$ | $\phi=r^{-\Delta}\psi+o(r^{-d/2})$，$\delta\psi$ 自由；加 $\ell_0=-\Delta\phi^2/2$。由驻定得 $\phi|_{\widetilde{\mathcal P}}=r^{-\Delta}\psi+o(r^{\Delta-d})$：独立快系数为零，不是事先固定 $\psi$〔(5.29)–(5.37)〕。 | (5.52) 是最小耦合体项加角项，同一截断下求和才取极限。(6.124) 在 $\lambda=0$ 重现此式；在 $\lambda_*$ 才得到 (5.60) 的纯改进体积分。 |
| BF 点 $\Delta=d/2$ | §5.3、§6.3.3 取**不含领先对数支**的 $r^{-d/2}\psi+o(r^{-d/2})$，保留二次边界项；侧面变分已趋零，无须再加强条件。 | 体与边界作用量、荷的体与角项此时可分别有限。**有限不等于为零**。这不是对允许 $r^{-d/2}\log r$ 的理论的证明。 |

**慢支的关键细节。** 在固定背景上，(5.37) 的 $\theta=\int_\Sigma\sqrt\sigma\,\tau^\mu\nabla_\mu\phi\,\delta\phi$ 没有显式角项。角项来自 $X_\xi\cdot\delta S$ 在侧面作切向分部积分后得到的 $\alpha_\xi$〔(5.48)、(5.51)〕；这就是为什么“辛势是纯体的”不意味着“荷是纯体的”。若简称 $I_R[T]=\int_{\Sigma_R}\sqrt\sigma\,\tau^\mu\xi^\nu T_{\mu\nu}$，则 (5.52) 为

$$
H_\xi=\lim_{R\to\infty}\left[I_R[T_0]-\frac{\Delta}{2}\int_{\partial\Sigma_R}\sqrt h\,(\widetilde\tau\cdot\xi_\parallel)\phi^2\right]_{\widetilde{\mathcal P}}.
$$

§6 选 $L_\lambda=L_0+\lambda[\mathcal R+d(d+1)]\phi^2$ 延拓，慢支还取 $\ell_\lambda=\ell_0+2\lambda(K-d)\phi^2$〔(6.49)–(6.50)、(6.76)–(6.80)；$\mathcal R$ 为时空标量曲率〕。后一个附加项的积分在此窗口趋零，但有助整理度规变分。固定 global AdS 后 $\mathcal R=-d(d+1)$；不同延拓给同一原作用量，但其**度规导数**不必相同。由 (6.124)，在该背景上

$$
\begin{aligned}
T_{\lambda;\mu\nu}&=T_{0;\mu\nu}+2\lambda(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box+d\,g_{\mu\nu})\phi^2,\\
H_\xi&=\lim_{R\to\infty}\left[I_R[T_\lambda]+\int_{\partial\Sigma_R}\sqrt h\,(\widetilde\tau\cdot\xi_\parallel)
\left(-\tfrac\Delta2\phi^2+2\lambda(n\cdot\nabla\phi^2-\phi^2)\right)\right]_{\widetilde{\mathcal P}}.
\end{aligned}
$$

由于 $n\cdot\nabla\phi^2\sim-2\Delta\phi^2$，显式角项的领先系数是 $-\Delta/2-2\lambda(2\Delta+1)$。选 $\lambda_*=-\Delta/[4(2\Delta+1)]$，再用**在壳的强衰减**控制余项，角项才消失。$\lambda_*$ 选的是一个方便的纯体代表，不是理论中由守恒律测出的新耦合。§3 的旧方法从候选改进体能量出发再要求有限、守恒，时间平移时虽得到同一数值，推理方向相反。在不满足同样曲率恒等式的渐近 AdS 背景上，即使仍有 Killing 场，也不能直接搬用这个 $\lambda_*$；可从原作用量或最小延拓重新做（§7.1）。

**一个独立的符号与极限检查。** 取 $\xi=\partial_t$、球对称剖面，$F=1+r^2,\ u=\phi^2$，略去单位球面积。$I_R[T_\lambda]-I_R[T_0]$ 的径向被积函数为 $2\lambda\,\partial_r[r^{d-1}(F\partial_r u-r u)]$。假定原点正则；上端点再加 (6.124) 角项中正比于 $\lambda$ 的部分，只剩

$$
2\lambda R^{d-1}(\sqrt{1+R^2}-R)u(R)=O(R^{d-2-2\Delta})\longrightarrow0.
$$

这直接检验了角项的相对符号，也说明相等的是**极限后的总荷**，不必在有限 $R$ 逐点相等。一般 Killing 场的论证仍是前述拉回，而不是用球对称例子代替它。

**复算时的一处排印问题。** 正文 45（PDF 47）的 (6.107) 两行交叉项都印有 $\partial_r(\phi-r^{-\Delta}\psi)$。令 $v=\phi-r^{-\Delta}\psi$：取 $\lambda=0$，由同页 (6.101)、(6.109) 的 $\phi^2$ 展开，角项的交叉项应正比于 $r^{d-\Delta}\psi v$，不是 $r^{d-\Delta}\psi\partial_r v$；由 (6.78) 也得到与它抵消的体项。应删去两行**括号内**作用在 $v$ 上的 $\partial_r$，第一行括号外的总径向导数保留。两者不能混作高阶余项：允许的离壳剖面 $v=r^{-s}$、$d/2<s<d-\Delta$ 令前者的径向因子发散、后者趋零。这影响该行所写的离壳抵消检验，不改变由完整泛函拉回得到的 (6.124)。

## 4. 与原有量子微扰 formalism 的接口

| 现有笔记的步骤 | 本文补足的条件，以及对下游计算的影响 |
|---|---|
| [作用量、端点势与预相空间（行 7–27）](<../../Articles/Quantization in AdS/perturbation/formalism.md#L7-L27>) | 约定相同。若边界方程由驻定给出，宜在化为仅有端点的式子**之前**保留 $\mathcal B_R$；若体、面分别发散，保留合并极限。这样可从离壳数据推得笔记所需的无通量解空间，而非预设它。 |
| [离壳对称与生成元（行 29–52）](<../../Articles/Quantization in AdS/perturbation/formalism.md#L29-L52>) | $H_\xi=X_\xi\cdot\theta-\alpha_\xi$ 可直接沿用。检查角项时不仅看 $\theta$，也看 $\alpha_\xi$。笔记用 $\beta_\xi|_\Gamma$ 表示边界异常，论文 (4.22) 写时间带上的总余项 $\beta_\xi|_M$；两者对本文无异常的标量无区别。 |
| [Killing 哈密顿量与 Hilbert 张量（行 106–130）](<../../Articles/Quantization in AdS/perturbation/formalism.md#L106-L130>) | 此处原本就有 “under some reasonable assumptions”。纯体公式成立的一个充分条件是对应的角积分消失；另一个是证明它已被吸收入某个改进体积分。否则 $-2\delta S/(\sqrt{-g}\,\delta g^{\mu\nu})$ 的**体部**不能代表完整响应。慢支 (5.52) 是漏掉后者就算错的具体例子。 |
| [物理模与量子化（行 54–83、132–150）](<../../Articles/Quantization in AdS/perturbation/formalism.md#L54-L150>)；[AdS 微扰（行 229–282）](<../../Articles/Quantization in AdS/perturbation/formalism.md#L229-L282>) | $H_{\partial_t}$ 与 $\omega$ 是量子化的**输入**。还须在物理相空间上证明有合适的自伴演化、稳定正频分解与完备模，用完整 $\omega$ 归一化后才有 $[a_I,a_J^\dagger]=\delta_{IJ}$。相互作用改变边界作用量时须重新推导边界条件和 $H=H_0+V$；$V$ 不必是纯体顶点。之后才接有限时间 Dyson、简并混合与能隙，不引入通常的 global-AdS in/out S 矩阵。 |

所以这份 formalism 补的是从 **$(S,\mathcal C)\to(\widetilde{\mathcal P},\omega,H_\xi)$** 的一段，不是另一套量子微扰论。经典荷存在亦不保证谱下有界、幺正或 UV 完备（§7.4）。

## 5. 如何开始 §7 的推广：先改变边界作用量

**已知基准：附录 D 的 Robin 理论。** 保留慢支窗口，记两项在壳系数为 $\phi=r^{-\Delta}\psi+r^{-(d-\Delta)}b+\cdots$。$\widehat\gamma$ 为固定的边界度规代表。有限边界作用量 $-(d/2-\Delta)\int_\Gamma\sqrt{-\widehat\gamma}\,\kappa\psi^2$ 使驻定条件成为 $b=\kappa\psi$。若 $\zeta$ 是 bulk Killing 场在边界诱导的共形 Killing 场，协变变换整个理论族时

$$
\delta_\xi\kappa=\zeta^A\widehat D_A\kappa+\frac{d-2\Delta}{d}(\widehat D_A\zeta^A)\kappa,
\qquad H_{\xi,f}-H_{\xi,i}=\Big(\tfrac d2-\Delta\Big)\int_\Gamma\sqrt{-\widehat\gamma}\,\psi^2\delta_\xi\kappa.
$$

这是 (D.11)–(D.18)，不是说对每个固定 $\kappa$ 都有全部 AdS 对称。$\delta_\xi\kappa=0$ 的变换才是该单一理论的对称；$\xi=\partial_t$ 且 $\dot\kappa\ne0$ 时右侧是外源做功，依赖 $\psi$，不是 (4.22) 的配置无关异常。

**可算的下一步：非线性的混合边界条件（以下是推广，不是原稿定理）。** 限定为同一无相互作用、无 log 的 bulk 标量，取固定的光滑局域势 $W(\psi)$，无边界导数、无显式坐标依赖。用 $-(d-2\Delta)\int_\Gamma\sqrt{-\widehat\gamma}\, W(\psi)$ 替代上述 Robin 有限项。代入两支渐近解后，固定背景的有限侧面变分是

$$
(d-2\Delta)\int_\Gamma\sqrt{-\widehat\gamma}\,[b-W'(\psi)]\,\delta\psi.
$$

因为 $\delta\psi$ 自由，$b=W'(\psi)$；两支切变分的辛通量正比于 $\delta b\wedge\delta\psi$，在此图像上为零。可是**零通量只保证保辛，不保证整个 Killing 群保边界条件**。$\psi,b$ 的共形权分别为 $\Delta,d-\Delta$；令 $\chi=\widehat D_A\zeta^A/d$，在 $b=W'$ 上，$\delta_\xi(b-W')=\chi[(d-\Delta)W'-\Delta\psi W'']$。因此一般的 $W$ 仍可有时间平移，而要保留 $\chi\ne0$ 的生成元，括号也须为零。

例如 global AdS$_4$、$m^2=-2$、$\Delta=1$，取 $W=g\psi^3/3$：$b=g\psi^2$ 恰有权 2，且 $W$ 是权 3 的密度因子；没有外源做功。对时间平移，边界势没有时间导数，不改变 $\theta$；其端点贡献使完整 Hamiltonian 在 (5.52) 的**体加角表达式**上另加 $\int_{S^2}\sqrt{\bar h}\,W(\psi)$（边界圆柱单位 lapse）。此处各项要在新的 $b=g\psi^2$ 解上计算，不是把两种理论的两条不同解相减。$W=\kappa\psi^2/2$ 则退回附录 D，并可检验上式的符号。这个例子完成了边界变分、切向性与能量项的检验；三次势并非下有界，不能据此宣称全局适定、真空稳定或量子理论已构造。

还可以在这个例子中**实际对比两种能量表示**。取球对称剖面、$\xi=\partial_t$、$\lambda_*=-1/12$，将 $u=\phi^2=r^{-2}\psi^2+2r^{-3}\psi b+o(r^{-3})$ 代入第 3 节的径向原函数。扣除 (5.52) 中已有的角项后，改进体能量比该体加角泛函多出每单位立体角 $\psi b/3$。于是

$$
E_W=\lim_{R\to\infty}I_R[T_{\lambda_*}]+\int_{S^2}\sqrt{\bar h}\,[W(\psi)-\psi W'(\psi)/3].
$$

对三次势，方括号恰为零；对一般 $W$，不能只保留同一个改进体积分。这个检验也说明：推广时若先套用原稿的强条件 $b=0$，会把所要研究的有限差值整个删掉。

**其余推广应在哪一步停下来检查？**

- **费米子、向量场、带规范约束的物质：** 先从一阶或受约束变分读出可独立指定的边界数据。费米子需选边界自旋分量与 Killing 变换的自旋提升；向量场须区分规范核、边界电荷与外源。必要时对标架或背景规范场也取响应，而非只对 $g$ 变分。成功标志是对全部物理扰动满足生成方程，不只是算出一个有限能量。
- **对数支、规定边界源、动力学引力：** 对数支须重新求离壳反项、尺度依赖及有限通量，BF 无 log 的结果不够。有源时区分守恒荷、源的功和配置无关的异常。动力学引力的度规方程与约束属于第一条路线；不能把第二条路线中的非动力度规响应直接称为引力体能量。
- **有限 cutoff 与 cutting/gluing（§§7.5–7.6）：** 即使 $\xi$ 是精确 Killing 场，$n\cdot\xi\ne0$ 也会移动有限调节面；此时应保留位移响应，不把有限截断的余项叫作量子异常。把 $\Sigma$ 切成两块时，可先用自由标量试验：界面场连续，两侧外法向动量之和为零，使两侧侧面变分相消；再算两侧角项和能流是否按同一约定相消，比较 $H_L+H_R$ 与未切开的 $H$。无穷远允许丢掉的改进表面项，在内部界面一般不为零。经典可加性尚不是量子 Hilbert 空间因子化或路径积分粘合定理。

**核查范围。** **Verified:** 原稿关键公式按 PDF 页面核对；Wolfram 对上文球对称能量的径向原函数、剩余角项、$\lambda_*$、混合边界的共轭系数和齐次势权重作了符号检查；xAct/xTras 在四维对 $\sqrt{-g}\,u(\mathcal R+k)$ 的体度规变分核对 (6.83) 相应改进，残差为零。**Assumptions:** 上述例子在精确 global AdS、光滑原点、手稿幂次与导数控制、同一截断和同一能量零点下比较；混合例子另假设无其他边界源。**Not verified:** 未逐项机器复算 §6 的所有渐近系数；没有证明非线性边界问题的全局演化、含 log 或引力的普遍度规表示，以及量子粘合。

## 最后的判断：§5 和 §6 的方法是否一致？

**原理一致，操作不同；在本文同一变分问题上，总荷一致。** §5 在固定背景上直接求 $X_\xi\cdot\theta-\alpha_\xi$；§6 在背景族上用两种方式计算同一次微分同胚变分，把这个荷写成体与边界的度规响应，再拉回固定背景。最有区分力的是慢支：(6.124) 取 $\lambda=0$ 得 (5.52)，取 $\lambda_*$ 得 (5.60)。相同的是完整 Hamiltonian，不是两种变分、局域应力张量，或任一被单独截取的体积分。
