# 有限边界 Hamiltonian 与源做功：canonical energy 的非线性母对象

2026-09-19。接续 [completed canonical energy](formalism.md)，保留其记号
$G,g=G+\epsilon h+\epsilon^2k,\Omega=\delta\theta$ 及
$\delta H_\xi=\Omega(\delta g,\mathcal L_\xi g)$ 的闭合扇区约定。
本文不以另一个二次型替代完整有限边界能量。

**选定对象是同一个有限作用量导出的边界荷—源做功对**

$$
\boxed{\mathscr H_R^\partial[\xi]
=\bigl(H_R^\partial[\xi],\mathcal F_{R,\xi}\bigr),\qquad
\Omega_R(\delta g,\mathcal L_\xi g)
=\delta H_R^\partial[\xi]+\mathcal F_{R,\xi}[\delta g].}
\tag{N1}
$$

$H^\partial$ 是函数，$\mathcal F$ 是场空间一形式；后者由作用量的源响应固定，
不是事后为 (N1) 自由指定的余项。在 Einstein–GHY/Dirichlet 处方中，
能量分量是选定边界时间下的 Brown–York 荷。开放时 (N1) 是变分生成律，
不声称 $H^\partial$ 独自生成自治的区域演化。共同的母数据是完整边界变分
$\beta=\Pi^{ij}\delta\gamma_{ij}$，而不是某个能量数值。

这不是新的、观察者无关的准局域质量提案。下面给出选取理由、条件唯一性、
非线性推导、opening/sewing，以及与旧二次量的准确关系。
具体计算见 [benchmarks](boundary-hamiltonian-benchmarks.md)，
实际执行范围见 [verification](boundary-hamiltonian-verification.md)。

## 1. 输入、范围与两种不同的“通量”

先取真空 Einstein 引力（可含 $\Lambda$），光滑 timelike 世界管
$\mathcal B$，紧且无边界的空间 cut $S=\partial\Sigma$。
采用一个实际的光滑解族及其切向变分，不假设任意边界函数均来自解。
本次局部 Brown–York 推导使用壁上正交的 collar 切片。对于同一壁 cut，
非正交 bulk 切片的 CPS 比较须保留其真实 boost/joint 项，或同步拉回到
正交参考描述；下面的壁应力张量公式不能替代这一步。开放 cut 或额外
joints 也须保留端点资料。本轮不构造一般移动壁的完整角点理论。

固定完整 EH+GHY、参考项和端点处方。参考项只在真实外边界使用，
或在人工界面上由同一可相消的处方给出；默认人工 seam 无独立作用量。
完整变分沿用原文 (4)–(6)：

$$
\delta L=E\delta g+d\Theta,\quad
(\Theta+\delta\ell)|_{\mathcal B}=dc+\beta,\quad
\Omega_\Sigma=\int_\Sigma\delta\Theta-\int_S\delta c.
\tag{N2}
$$

本文件中 $c$ 始终是 corner 一形式。为避免与它混淆，数值耦合另记
$C_N=(16\pi G_N)^{-1}$；benchmark 中的 $c$ 仅是该数值常数的旧记号。

$\xi$ 是场无关、切于整个世界管的向量，作用保持所用源历史空间。
**非线性公式不要求 $\xi$ 是 Killing。** 因为对完整解 $g$，
$\mathcal L_\xi g$ 是线性化方程的解；但在固定背景的线性理论中，
$h\mapsto\mathcal L_\xi h$ 的闭合仍需另检验，背景 Killing 是旧稿采用的充分条件。

把 $\beta$、$\delta\beta$ 和 $\mathcal F_\xi$ 区分开：

$$
\beta:\text{壁上的源变分一形式},\qquad
\delta\beta:\text{壁上的辛通量},\qquad
\mathcal F_\xi=-\int_S\iota_\xi\beta:\text{cut 上的源做功一形式}.
\tag{N3}
$$

能量的实际变化率是后者在相应演化方向上的负值；它与双线性的辛通量不是同一个对象。

## 2. 从作用量推导，而不是把余项命名为 flux

令 $I_\xi$ 表示场空间向量 $g\mapsto\mathcal L_\xi g$ 的插入，
$\iota_\xi$ 表示时空插入。on shell，Noether current
$J_\xi=I_\xi\Theta-\iota_\xi L=dQ_\xi$。固定参数取变分，得

$$
\Omega_\Sigma(a,\mathcal L_\xi g)
=\int_S\{\delta Q_\xi[a]-\iota_\xi\Theta[a]-\delta c(a,I_\xi)\}.
\tag{N4}
$$

使用场空间 Cartan 恒等式和完整处方的边界协变性，
$\delta c(a,I_\xi)=\delta(I_\xi c)[a]-\mathcal L_\xi c[a]$。
再代入 (N2) 和 $\mathcal L_\xi c=\iota_\xi dc+d\iota_\xi c$，便有

$$
\Omega_\Sigma(a,\mathcal L_\xi g)
=\delta\int_S(Q_\xi+\iota_\xi\ell-I_\xi c)[a]
-\int_S\iota_\xi\beta[a].
\tag{N5}
$$

这里唯一被积分掉的是 $\int_S d\iota_\xi c=0$，因 $S$ 无边界。
于是定义两个分别由作用量可计算的量

$$
H_R^\partial[\xi]=\int_S(Q_\xi+\iota_\xi\ell-I_\xi c)+H_{0,\xi},
\qquad \mathcal F_{R,\xi}=-\int_S\iota_\xi\beta,
\tag{N6}
$$

即证明 (N1)。$H_{0,\xi}$ 是在整个声明域上固定、随 $\xi$ 线性的校准常数。
不能把依赖边界源的参考减除误称为这种常数：它同时改变 $\beta$。
有显式非协变参考资料时，上面 Cartan 步骤会有额外响应/异常项；本定理不省略它们后继续适用。

### 2.1 为什么它确实是 Brown–York，而不只是借用了这个名字

对于裸 Einstein–GHY timelike 壁，令 $n$ 向外、$u$ 为壁内未来单位法向，
$\xi=N_\xi u+V_\xi$，取 $\epsilon_S=-\iota_u\epsilon_{\mathcal B}$。
以协变诱导度量为源，

$$
T^{ij}=2C_N(K\gamma^{ij}-K^{ij}),\qquad
\beta=\tfrac12 T^{ij}\delta\gamma_{ij}\,\epsilon_{\mathcal B}.
\tag{N7}
$$

在 Gaussian collar 的一个点取 $\gamma_{ij}=\operatorname{diag}(-1,1,1)$
及壁内正规坐标。$\xi^n|_{\mathcal B}=0$，但其正常延拓任意。直接计算给出

$$
Q_\xi|_S=C_N(\partial_n\xi^t-2K_{tj}\xi^j)\epsilon_S,
\quad \iota_\xi\ell|_S=-2C_NN_\xi K\epsilon_S,
\quad I_\xi c|_S=C_N\partial_n\xi^t\epsilon_S.
\tag{N8}
$$

最后一项来自 $c[a]|_S=-C_N a(n,u)\epsilon_S$。
正常延拓导数消去，余下的正是

$$
\boxed{H_R^\partial[\xi]
=\int_S\sqrt{\sigma}\,u_iT^{ij}\xi_j+H_{0,\xi}.}
\tag{N9}
$$

(N8) 是一个局部张量计算，故在任意壁内坐标成立；附带脚本独立核对其所有收缩。
对于内禀、协变的参考作用量，加入其 Euler 响应 $T_{\rm ref}^{ij}$；
若含切向导数，必须同时加入其端点势。对这个内禀作用量再次应用 Noether 恒等式，
在闭 $S$ 上得到同样的应力张量读出。不能只改 $T$ 而保留旧 corner/辛结构。

这没有证明法向移动或 bifurcation boost 的荷也只依赖 $\xi|_S$。
它们一般不切于整条 timelike 世界管，不满足这里的假设。

### 2.2 可直接使用的 source/response 公式

写壁度量为

$$
\gamma=-N^2dt^2+\sigma_{AB}(dy^A+V^Adt)(dy^B+V^Bdt),
\quad \Pi^{ij}=\frac{N\sqrt\sigma}{2}T^{ij}.
$$

对于坐标演化 $\xi=\partial_t$，用正的 $dt\,d^{D-2}y$ 密度写 (N6)：

$$
H^\partial_{\partial_t}=-2\int_S\Pi^{tj}\gamma_{jt}
=\int_S\sqrt\sigma(N\varepsilon-V^Aj_A),
\qquad \mathcal F_{\partial_t}=\int_S\Pi^{ij}\delta\gamma_{ij},
\tag{N10}
$$

$$
\Pi^{ij}\delta\gamma_{ij}
=\sqrt\sigma\left(-\varepsilon\,\delta N+j_A\delta V^A
+\frac N2s^{AB}\delta\sigma_{AB}\right).
\tag{N11}
$$

$\varepsilon=T^{ij}u_i u_j$，$j_A=-\sigma_{Ai}T^{ij}u_j$，
$s^{AB}$ 是空间应力。这里的 $\varepsilon$ 不同于扰动参数 $\epsilon$。
对一般固定切向 $\xi$，(N10) 的 $\gamma_{jt}$ 换成 $\gamma_{jk}\xi^k$，
$\mathcal F$ 的积分核乘 $\xi^t$。

因此 lapse、shift、压力与剪切都来自**同一个**源响应。
全体 cut 上的 $H[\xi]$ 读出能量和动量，仍不单独替代完整的空间应力响应。

## 3. 平衡律、闭合扇区和真正的唯一性

在本真空问题中，动量约束/Codazzi 给 $D_iT^{ij}=0$。
于是

$$
D_i(T^{ij}\xi_j)=\tfrac12T^{ij}\mathcal L_\xi\gamma_{ij},
\qquad H^\partial(S_2)-H^\partial(S_1)
=-\int_{\mathcal B_{12}}\frac12T^{ij}\mathcal L_\xi\gamma_{ij}\,dV_{\mathcal B}.
\tag{N12}
$$

此处 $dV_{\mathcal B}$ 表示沿未来时间的正壁体积。
对于 $\xi=\partial_t$，也可直接将 (N1) 取 $a=\mathcal L_\xi g$：
$\dot H^\partial=-\mathcal F_\xi[\mathcal L_\xi g]$。
它是同一平衡律，不得再叠加一次未经独立定义的“source work”。

记 $\alpha_\xi=\Omega(\cdot,\mathcal L_\xi g)$。固定 $\xi$ 时

$$
\delta\alpha_\xi=\delta\mathcal F_\xi=-\int_S\iota_\xi\delta\beta.
\tag{N13}
$$

所以开放域上 $H^\partial$ 是良定义的荷函数，但 $\alpha_\xi$ 一般非闭。
在固定源的 Dirichlet 叶上 $\mathcal F=0$，且 $\xi$ 保持该叶时，
$H^\partial$ 才是通常的 Hamiltonian。更一般地，若叶上
$\mathcal F=\delta B$，则局部生成元是 $H^\partial+B$；闭一形式的全局周期仍需检验。

**条件唯一性。** 固定完整 $\Omega,\beta,\xi$ 及校准点，并在连通域内工作。
若两个函数均满足 (N1) 且使用同一个 (N3) 的 $\mathcal F$，
则 $\delta(H_1-H_2)=0$，故它们相等。这里存在性已由 (N6) 构造，
不是把“所需 Hamiltonian 存在”写成假设。

但固定 $\Omega,\xi$ 或固定 sewing 仍不够。任意

$$
H\mapsto H+b,\qquad \mathcal F\mapsto\mathcal F-\delta b
\tag{N14}
$$

保持 $\alpha$。边界势 $\ell_{\rm ref}=\lambda\epsilon_{\mathcal B}$ 就给出真实例子：
$\Delta H_{\partial_t}=-\lambda\int N\sqrt\sigma$，
$\Delta\mathcal F_{\partial_t}=\delta\int\lambda N\sqrt\sigma$，
而不含导数的该势不改变 $\Omega$。故 $\alpha$ 单独不足以恢复校准过的能量读数。
本稿**不把所有 (N14) 商掉后宣称已经定义质量**；物理读数须保留选定的源/参考处方。

自然性据此是“相对于独立物理输入的 action-selected”，不是 universal mass uniqueness。

## 4. 独立闭区域如何 opening，以及什么真的在 sewing 时相消

每侧先以 $\gamma_i$ 为固定源构造闭合叶，但保留原作用量对源的依赖。
Opening 指重新允许共同源 $\gamma$ 变分，而不是从一个已约化的能量函数猜回响应。
在分片光滑的 off-shell 场域上，

$$
\delta(S_L+S_R)|_{\mathcal B_S}
=\int_{\mathcal B_S}(\Pi_L^{ij}+\Pi_R^{ij})\delta\gamma_{ij}.
\tag{N15}
$$

不添加独立 seam 作用量并释放全部 $\delta\gamma$，给出
$\Pi_L+\Pi_R=0$。这是作用量的结果，不需要假设 on-shell trace 变分满射。
施加 bulk 方程后，在实际光滑匹配族上采用共同 frame、时间归一化和完整响应。
下式取 $H_{0,\xi}=0$，或采用从同一参考处方限制而来的可加校准常数。于是逐点有

$$
H_S^L[\xi]+H_S^R[\xi]=0,\qquad
\mathcal F_S^L[\xi]+\mathcal F_S^R[\xi]=0,\qquad
\delta\beta_L+\delta\beta_R=0.
\tag{N16}
$$

证明分别是将 $\Pi_L+\Pi_R=0$ 代入 (N10)、(N11)，以及在该匹配域上取场空间外微分。
因完整作用量/角项也相容，$\Omega$ 的空间可加性给出
$\alpha_{L\cup R}=\alpha_L+\alpha_R$。有限重复切割仅是内部面成对消去。

这里仍需要完整几何匹配；(N16) 的能量等式不是几何拼接的充分条件。
对非 null $\gamma$、$D>2$，可去掉独立的 $K$ 输入：减去固定参考响应后令
$P^{ij}=\Pi^{ij}-\Pi_{\rm ref}^{ij}$，则

$$
K=\frac{\gamma_{ij}P^{ij}}{(D-2)C_N\sqrt{-\gamma}},\qquad
K^{ij}=K\gamma^{ij}-\frac{P^{ij}}{C_N\sqrt{-\gamma}}.
\tag{N17}
$$

这只重建第一正常几何，不是从某时刻边界读数重建全部 bulk 状态。
一般 timelike 初边值适定性、区域商及任意网络的重建仍由原 sewing 项目负责。

若保留不相消的参考势/界面 tension，(N15) 多出其 Euler 响应；
须计入界面能量和动力学。每侧孤立选择的“真空能量零点”不能自动相消。
把这样的壁拆除是一次显式的作用量改变，不能称为对同一闭系统能量的无损相加。

## 5. 旧 canonical energy 是这个对象的带源修正的二阶变化

现在才引入平稳背景 $G$、固定 $\xi$ 且 $\mathcal L_\xi G=0$。
令 $g(\epsilon)=G+\epsilon h+\epsilon^2k+\cdots$ 是实际二阶解曲线。
沿曲线对 (N1) 微分一次，得到

$$
\boxed{\mathcal E_R[h;\xi]
=\Omega_{R,G}(h,\mathcal L_\xi h)
=(H_R^\partial[\xi])''(0)
+\left.\frac d{d\epsilon}\mathcal F_{R,\xi,g(\epsilon)}[g'(\epsilon)]\right|_0.}
\tag{N18}
$$

$\mathcal L_\xi G=0$ 消去 $\delta\Omega$ 和 $g''$ 在左侧的项，
但**不消去单独的 $H''$、$\mathcal F'$ 中的二阶资料**。
在固定坐标壁、$\xi=\partial_t$ 时，特别具体地有

$$
\mathcal F'=\int_S\bigl(\delta\Pi^{ij}[h]\,h_{ij}+2\Pi_0^{ij}k_{ij}\bigr).
\tag{N19}
$$

这是完整密度公式，已经包含 measure 的变分。若规定二阶壁源为零，第二项才消失；
这种 affine-source 条件不自动保证相应二阶 Einstein 解存在。

参考框架版本在完整作用量上取 $\widehat g=X^*g$；所有式子在 reference domain 使用固定 $\xi$。
于是
$\widehat h=h+\mathcal L_uG$，
$\widehat k=k+\mathcal L_u h+\tfrac12\mathcal L_u^2G+\mathcal L_vG$。
将它们一同代入 (N18)–(N19)，便恢复原稿的 completed canonical energy。
联合重标记 $(g,X)\mapsto(\varphi^*g,\varphi^{-1}\circ X)$ 不改变 $\widehat g$；
改变物理 frame 或 clock 则不在这个不变性内。

在固定源、可积闭合扇区，$\mathcal F=0$，故
$\mathcal E=(H^\partial)''=2H^{\partial[2]}$，且 $\mathcal E/2$ 生成线性时间流。
开放时不把 $\mathcal E/2$ 替代 $H^{\partial[2]}$。

## 6. 与能量、参考系及 clock 的关系

Brown–York 是本处方的有限边界读出，而非只在极限中出现。
固定合适渐近源和参考减除后，空间无穷远的极限联系 ADM/AdS 渐近荷；
下面的球对称 benchmark 明确检验了归一化。带内边界时保留其荷，
再在正确 horizon gauge 下得到 Hollands–Wald 的质量/角动量/面积二阶组合。
AdS-Rindler 的 relative-entropy Hessian 是另一个需指定模流与态族的特例。
这些是已知结构的联系，不是本 PR 证明了任意极限或量子对应；分别参见
[Hollands–Wald, 1201.0463](https://arxiv.org/abs/1201.0463) 和
[Lashkari–Van Raamsdonk, 1508.00897](https://arxiv.org/abs/1508.00897)。

时钟在这里具体表现为边界 lapse/shift 和参考时间的归一化。
$\varepsilon$ 是 lapse 的响应，但 **lapse source 不是已经构造出的 canonical clock variable**。
没有由 (N11) 推出 $\{T,E\}=1$、全局 deparametrization 或关系 Schrödinger 方程。
若改用场依赖的单位 proper-time 向量，必须调整变分：

$$
\Omega(\delta g,\mathcal L_{\xi[g]}g)
=\delta H_{\xi[g]}-H_{\delta\xi}+\mathcal F_{\xi[g]}[\delta g].
\tag{N20}
$$

这只是固定参数的 (N1) 加上链式法则。不能漏掉 $H_{\delta\xi}$。

## 7. 输入依赖与未完成的物理目标

| 独立输入/选择 | 派生结构 | 不能据此宣称 |
|---|---|---|
| EH、边界 ensemble、完整参考/端点作用量 | $\Theta,c,\beta,\Omega$ | 单凭协变性选出唯一参考能量 |
| 实际区域解及边界嵌入 | $\gamma,\Pi$，再由 (N17) 重建 $K$ | 边界某时刻的一阶数据决定 bulk 波包 |
| 固定参考时钟 $\xi$ | $H^\partial,\mathcal F_\xi$、Ward 平衡 | 已找到动力学 clock pair |
| 共同识别映射及全响应 matching | (N16)、区域动力学对的可加性 | 能量匹配足以重建几何 |
| 背景、线性扰动 | $\mathcal E$ | 存在对应二阶解或单独确定 $H''$ |
| 实际二阶解/边界源加速度 | (N18)–(N19) 的边界读出 | 无需 $k$ 的完整非线性能量 |

当前仍未完成：一般 Einstein 源族的适定构造；AdS4 全模式及二阶受控源族的能量矩阵；
任意移动/倾斜/null 壁与角点网络；规范约化后的全局光滑相空间；量子 sewing 和动态时钟。
这些仍是目标，不被“存在实际光滑族”的条件定理替代。
本轮推进到的是：一个不丢失静态质量、能明确处理开放源功、且由同一作用量组合的母对象。

## 8. 文献定位与检查

[Brown–York, gr-qc/9209012](https://arxiv.org/abs/gr-qc/9209012) 给出有限边界作用量响应和能量；
[Harlow–Wu, 1906.08616](https://arxiv.org/abs/1906.08616) 给出完整边界/CPS Hamiltonian 处方；
[Chandrasekaran–Flanagan–Shehzad–Speranza, 2111.11974](https://arxiv.org/abs/2111.11974)
明确讨论由变分原则固定的 localized charge/flux。这里不宣称首次发明荷—通量结构。
新增的是本项目的符号一致推导、opening/sewing 用法、源加速度的显式桥梁和下列可复算标尺。

Verified: (N8) 的独立局部收缩、完整 ADM 源分解、精确 Rosen 的四维 Ricci/非线性平衡、
两极化二阶比较、球对称质量/时钟极限，以及两个 AdS4 模式的全线性 Einstein 与有限壁响应。

Assumptions: 本文 §1 与各 benchmark 的真空方程、光滑有限域、完整作用量、参考归一化和真实匹配族。

Not verified: 上述全局/全模式/二阶初边值/量子问题；未复跑原 116 项 Mathematica/xAct 套件。
