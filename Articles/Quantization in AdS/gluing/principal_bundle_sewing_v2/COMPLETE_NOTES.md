# Principal-bundle gauge theory 的区域 observable algebra 与可再开放粘合

> 独立重写稿 · 2026-09-14 · 与分篇文件内容一致

精确范围、采用输入与未构造目标见第 00、10 篇；引用表位于末尾。


---

<!-- source: notes/00_problem_and_contract.md -->

# 00｜问题、目标与结论的精确强度

版本：2026-09-14，独立重写稿。本文不是旧稿加补丁；旧稿中的源域分拆、curvature 完备性及 CS 零模/归一化不作为证明输入。

## 0.1 要完成的不是一种形式上的 tensor product

给定一个 principal-bundle gauge theory、一类允许的区域、每块 timelike boundary 的物理边界条件，以及明确的观测量与量子化处方。研究如下操作：

\[
\text{独立闭合区域理论}
\xrightarrow{\text{只移除指定临时闭合}}
\text{相容的带源区域问题}
\xrightarrow{\text{连接、响应、规范与网络接合}}
\text{有完整外边界条件的新闭合理论}.
\]

这里“闭合”不表示没有空间边界，也不表示量子态纯，而表示当前没有未指定的 timelike 边界输入。固定的非零外部 source history 也可以定义一个非自治的闭合问题；默认的 autonomous benchmark 取零 history。

输出必须属于同一**允许对象类**，才能再次 opening。类不必包含所有 imaginable regions：例如一份只证明平直条带 IBVP 的模型，不据此接纳任意尖角、曲面、非线性背景。

目标代数首先在**未切分理论**中独立定义。sewing 成功意味着指定 source 的商与该 target 同构，且真实生成元、关系、括号/乘法、动力学均被比较。不能把 sewing map 的像再命名为“全部 target”。

## 0.2 三个不同的任务

(T) 理论装配：作用量、主丛、方程、边界条件和相容源问题的重建。

(A) 代数重建：相对于独立选定的 observable prescription，构造明确的 source、map、kernel 和 image。

(M) 最小性：在指定可遗忘数据的比较关系下，证明没有更少的数据能完成 (A)。

本文直接做 (T)、在明确模型中完成 (A)，并给 (M) 的必要性反例；**不声称已证明一个跨所有 YM/CS 模型的最小充分对象**。保存 action 的可重新开放对象是一种充分工作定义，不是压缩最优定理。

## 0.3 一个区域对象保存什么

记

\[
\mathfrak T_B(R)=\big(R,P,G,S_R,B,\mathcal G_{\rm prop},Q_\partial,u;
\mathscr O,\mathsf q\big).
\]

这些符号的物理含义如下。

- \(P\to R\) 是实际主丛，\(G\) 包含全局群形式；\(S_R\) 包含 bulk、真实边界、临时 closing、corner、matter/defect 项及各自标签。
- \(B\) 是每块 timelike face 的边界定律，连同角点相容性、Cauchy/characteristic 数据域和需要的正则性；\(\mathcal G_{\rm prop}\) 是声明要认同的规范变换群，含离散分支选择。
- \(Q_\partial,u\) 是需要时使用的边界参考主丛及与 \(P|_\partial\) 的同构；不是无条件假设边界丛平凡。
- \(\mathscr O\) 指定测试函数、Wilson/network 标签、flux、sector-changing insertions 和完成方式；\(\mathcal A_B\) 是在该 prescription 下的经典或量子代数。
- \(\mathfrak R\) 是由 action/domain 重新产生选中边界的**完整源关系**的规则；它不是仍在传播的一套隐藏端口变量。\(\mathsf q\) 是量子化、重整化、global sector、framing 等额外数据。

$\mathcal A_B$ 与 $\mathfrak R$ 由上述 action/domain/source/observable rules 生成，不再是独立输入或预先给好的成功证书。相应 source 存在、约束传播、kernel、image 与量子乘法仍按模型证明。完整 fields、proper 的实际作用和预辛退化方向在区域构造及 sewing 全程保留；不能用 gauge slice 或 coarse quotient 替代。第 05–07 篇的 quotient/PBW/Haar 只用于派生 observable/representation 的验收，完整未约化 source constructors 和比较见[修订证明 R3–R4](../audit_repair_2026-09-18/repair_proofs.md)。

暂时不用的 boundary source 不属于当前动力学自由度；保存其生成规则不违反 closed-intermediate 要求。由 PDE 决定的 non-characteristic jets、响应缓存、stabilizer 列表、Gram 矩阵等在条件满足时重算，具体依赖见[输入表](../audit_repair_2026-09-18/input_dependencies.md)。

## 0.4 不存在从一份裸闭合代数出发的无条件 reopening

同一个等时 CCR algebra 可以配不同的质量、势能或 reflecting walls；仅有代数不能恢复其边界响应。更直接地，旧 Dirichlet 区域的所有解在 cut 上满足 \(a_\parallel=0\)，未切分解的 restriction 一般不满足它。因此 restriction 通常不是

\[
\operatorname{Sol}_{B_{\rm out}}(R_1\cup R_2)\longrightarrow
\operatorname{Sol}_{B_1}(R_1)\times\operatorname{Sol}_{B_2}(R_2).
\]

正确箭头进入 **reopened source relation**。相应地，不承诺原来两份 autonomous algebras 各自以保持旧乘法和旧时间演化的方式嵌入全局代数。真正得到的是对完整区域对象的 composition。

## 0.5 本稿的结果层级

**E：文内给出构造和证明的精确结果。** 主丛的有同构数据装配；规范不变的 Wilson 拼接；compact YM2 的 holonomy–flux/PBW/Haar sewing、重新 opening 和三块结合；有限图的链路细分；固定平直 relative Maxwell 的全部平滑线性 Hamiltonian observables、polynomial CCR/Weyl sewing（包含谐和对）；U(1) disk 的 admissible current 数据、corrected symplectic/current algebra sewing 与 chiral opening；指定有限 CS Wilson 实现的关系与完整矩阵代数；固定 flat slab 的 coefficientwise formal classical YM source construction（不含其全部 nonlinear observable presentation）。

**C：条件性比较定理。** 对一般 YM/CS，只要具体区域源问题、variational matching、目标生成元 lifts 和量子 relations 已满足所列条件，就得到相应的 algebra comparison。条件中的存在性不由定理名称提供。

**I：采用的实现输入。** SU(2) 正整数 level 的 integrable/ribbon realization、其标准 cup/cap 和 coherence；一般 perturbative quantum theory 的重整化框架。采用它们不表示重新证明了任意 Lorentzian CS functional integral 与该实现等价。

**D：定义覆盖而尚无本稿完整构造。** 任意四维 interacting YM 的 thin Wilson/disorder algebra、任意非紧 CS、任意混合 null/corner IBVP、所有 state sewing。每项保留在目标矩阵中，不能为使定理变真而悄悄删去。

“覆盖某 observable”还要区分：几何定义有效、经典 Hamiltonian 准入已证、量子乘法已构造、sewing 已证。这四项不是同一标签。

## 0.6 物理上不可缺少的验收

一个主张“完整 framed algebra”的模型，至少要检测它实际具有的局域辐射、平坦 holonomy、共轭 electric flux、真实外边界 charges、允许的 Wilson endpoints、拓扑/charge sectors；CS 还要检测交叉 loops 和 channel-changing operators。不存在的自由度不能添加，例如无穿孔 flat disk 的非零总 current。

本文的强度来自明确可验收的等式，不来自抽象词汇数量。读者只需 differential forms、CPS、Hamiltonian constraints、群表示和 Fourier modes；额外词汇在第 11 篇按实际用途解释。

研究目标对照：Research Radar 的 framed-gauge 与 regional-quantum cards [U1]；CPS 的边界处理采用 [R1] 的逻辑，而不从该文推断任意 gauge IBVP 的存在性。


---

<!-- source: notes/01_bundles_gauge_and_anchors.md -->

# 01｜主丛、proper/large gauge 与 anchored observables

## 1.1 约定与不依赖平凡化的定义

先用矩阵 Lie group 的记号写公式（一般 Lie group 可用内在 connection/parallel-transport 定义；本包精确量子 benchmarks 固定 compact groups），使用
\[
 A^g=gAg^{-1}-dg\,g^{-1},\quad F=dA+A\wedge A,
 \quad U_\gamma[A]=\mathcal P\exp\!\left(-\int_\gamma A\right).
\]
从 \(x\) 到 \(y\) 的平行输运是 associated fibers 间的线性同构，且
\[
 U_\gamma[A^g]=g(y)U_\gamma[A]g(x)^{-1}.
\tag{1.1}
\]
只有选择两个 endpoint frames 后它才是一个数值矩阵。若所选非紧群没有足够的 finite-dimensional unitary representations，不宣称这些矩阵 coefficients 自动分离全部 group-valued transports；该模型须另定 admissible representation/function family。对 compact U(1) 单独写 \(A=-ia\)，则 \(a\mapsto a+d\lambda\)、\(U_\gamma=e^{i\int a}\)。

非平凡 \(P\) 上不得把 \(A\) 当全球 Lie-algebra-valued one-form；但 \(A-A_0\) 是全球 \(\operatorname{ad}P\)-valued one-form，因此线性化和测试泛函可以用一个明确参考连接定义。

## 1.2 固定 frame 与参考主丛

“边界 framing”在全边界丛不平凡时改写成
\[
 u:Q_B\xrightarrow{\sim}P|_B,
\]
其中 \(Q_B\) 是固定参考主丛。\(Q_B\) 只有在确实平凡时才能换成 \(B\times G\)。例如边界上的磁通不为零时，不能同时要求一份不存在的 global trivialization。

局部写 endpoint reference frames 为 \(u_x,u_y\)，则
\[
 W^{\rho}_{\gamma;u}=\rho(u_y)^{-1}\rho(U_\gamma)\rho(u_x).
\tag{1.2}
\]
在同时变换 \(A,u\mapsto A^g,gu\) 的描述中它规范不变；固定 \(u\) 的描述中只除保持这些 anchors 的 gauge。两种表述的等价，需要采用同一边界辛结构，不能仅因为加了变量 \(u\) 就自动成立。

主动改变参考 frame \(u_x\mapsto u_xk_x\) 给
\[
 W_{\gamma;u}\mapsto \rho(k_y)^{-1}W_{\gamma;u}\rho(k_x).
\]
这些给 retained endpoint charges 的候选作用，不应当在区域阶段全部 quotient。但只有保持当前固定 B/source 的 k 才是同一闭合理论的 symmetry；例如 A_t=0 的 endpoint 通常仅允许 time-independent k。任意 k(t) 往往是不同 source fibers 之间的变换，而不是同一 Hamiltonian 的守恒对称。

anchors 可以是外部几何参照，也可以是实际带电 matter。后者须把 matter 的作用量、charge、约束和 Hilbert sector 一起加入。\(\psi^\dagger(y)U_\gamma\psi(x)\) 与“固定两个 frame”是不同物理系统。

## 1.3 proper 不等于 small；large 不等于 physical

令 \(\mathcal G_B\) 为保持完整边界定律和 sector 数据的实际 bundle automorphisms。先指定 \(\mathcal G_{\rm prop}\subset\mathcal G_B\)，再检查其连续方向在完整 \(\Omega_B\) 上是否为零方向，或是否有已经声明的约束使其成为零方向。不能用一个过小 observable algebra 上作用平凡来反向定义 proper。要写 residual group \(\mathcal G_B/\mathcal G_{\rm prop}\) 时还要求后者为 normal subgroup；否则只在保持这项选择的 normalizer 内形成 quotient。

“小/大”说的是相对于明确群和 boundary restrictions 的连通分支；“proper/charged”说的是 theory 中的冗余/物理作用。一个 based large transformation 可以是冗余；一个与恒等连通、但在真实边界有非零 charge 的变换可以是物理作用。

以 U(1) 区间为例，\(g_n(x)=e^{2\pi inx/L}\) 两端恒等，仍不与恒等 through based maps 连通。只除 based identity component 时，\(Q=\int_0^L a_xdx\in\mathbb R\)；除全部 based maps 时，\(Q\sim Q+2\pi n\)，全球 observable 是 \(e^{iQ}\)，不是单值的 \(Q\)。

对 infinitesimal \(\delta_\epsilon a=d\epsilon\)，canonical \(\Theta=\int_\Sigma E^i\delta a_i\) 给
\[
 Q_\epsilon=\int_\Sigma E^i\partial_i\epsilon
 =-\int_\Sigma\epsilon\,\partial_iE^i+\int_{\partial\Sigma}\epsilon E_n.
\tag{1.3}
\]
Gauss on shell 后边界项一般不为零。非阿贝尔使用参数 \(g=e^{-t\epsilon}\)，故 \(\delta A=D_A\epsilon\)，相同推导把 \(\partial\) 换为 \(D_A\)；matter 有对应项。真实 boundary action 还可能修正 charge。

有限离散分支不能由 (1.3) 分类。量子时还需指定 large-gauge character、prequantum/determinant line 的 lift 及可能的 global anomaly。局部 BRST 只控制恒等分支附近，不能代替这些选择。[R2–R5]

## 1.4 seam identification 是实际变量/标签

给定 \(h_{21}:P_1|_\Gamma\to P_2|_\Gamma\)，有
\[
 a_2=h_{21}a_1h_{21}^{-1}-d_\Gamma h_{21}h_{21}^{-1},
 \qquad h_{21}\mapsto g_2h_{21}g_1^{-1}.
\tag{1.4}
\]
这里的允许 \(h\) 须能在所用 collar 和 corner 域中实现，且与固定输出 bundle sector 相容。不能默认为“所有 maps 都可延拓”，也不能默认为 \(h=1\)。

对于跨 seam 的路径 \(\gamma=\gamma_2\circ\gamma_1\)，
\[
 U_\gamma=U_{\gamma_2}\,h_{21}\,U_{\gamma_1}.
\tag{1.5}
\]
代入 (1.1)、(1.4)，中间 \(g_1,g_2\) 精确抵消，仅剩外 endpoints 的协变变换。相对于外 anchors，(1.5) 就是一个实际不变量 lift。多次 crossing 保持路径次序；回穿用 \(h^{-1}\)。Wilson network 在每个 junction 用指定 invariant tensor 收缩，不能把非阿贝尔矩阵任意交换。

## 1.5 transition cocycle、拓扑与 large seam maps

在真正三重交叠，按箭头 \(1\to2\to3\to1\) 约定，
\[
 h_{13}h_{32}h_{21}=1.
\tag{1.6}
\]
它保证普通主丛装配的一致性。非可缩大圈有非平凡平行输运不违反 (1.6)；平行输运包含 connection，不是单纯把小 triple overlap 条件延伸成“任意大圈 holonomy=1”。

U(1) 的 \(S^2\) 例子：
\[
 a_N=\frac n2(1-\cos\vartheta)d\varphi,\quad
 a_S=-\frac n2(1+\cos\vartheta)d\varphi,
 \quad a_S-a_N=-n\,d\varphi.
\]
故从 N frame 到 S frame 的 \(h_{SN}=e^{-in\varphi}\)，并且 \(\int_{S^2} da=2\pi n\)。两个局部平凡 bundle 的名称不能决定 \(n\)。注意不能让两片连接都取零再配非零 winding：那将违反 connection matching。

对 disk chord，gauge 在外弧恒等。一个 seam path \(e^{i\kappa(s)}\) 若与外弧闭合成非零 winding 的 circle map，就不能延拓到 disk。真正可延拓的路径有选择了的实 lift 满足 \(\kappa(P)=\kappa(Q)=0\)。仅有 group-valued endpoint values 等于 1 不够。

## 1.6 stabilizers、扇区与 disorder

平凡 connection 的 stabilizer 可以大于一般 connection 的 stabilizer。因此 \(\operatorname{Sol}/\mathcal G\) 不总是一份 smooth manifold。第 03 篇在正则 strata 上定义 Hamiltonian observables；遇到 singular loci，保留 invariant function presentation 或具体 Hilbert realization，不假设一个全局 gauge slice。

固定 \(P\) 的 theory、允许多个 \([P]\) 的 theory、允许改变 sector 的 disorder operators，是三个不同选择。只含 sector-preserving operators 时可取适当 direct sum/product；存在 sector-changing maps 时要保留 \(\mathcal A_{\alpha\beta}\) 及 composition，不能用每个 sector 内的 diagonal scalar algebra 替代。

't Hooft insertion 应先在删去 defect 的流形上规定 linking flux/transition class，再指定 defect dynamics 与量子关系。它不是原固定光滑 bundle 上的一份普通 polynomial in \(A\)。这些对象被正式保留，但其任意连续量子乘法未由本文构造。[R4,R5,R12]


---

<!-- source: notes/02_boundaries_sources_and_reopening.md -->

# 02｜每个区域先良定义，然后只开放选中的边界

## 2.1 一个 variational boundary condition 的检验

写
\[
 S=\int_R L+\int_{B}\ell+S_{\rm corner},\qquad
 \delta L=\mathcal E\cdot\delta\phi+d\theta.
\]
在 timelike boundary \(B\) 上，对允许 variations 要有
\[
 (\theta+\delta\ell)|_B=dC
\tag{2.1}
\]
（存在真正边界场时，先同时施加其边界 Euler–Lagrange 方程）。于是
\[
 \Theta_\Sigma=\int_\Sigma\theta-\int_{\partial\Sigma}C,
 \qquad \Omega_\Sigma=\delta\Theta_\Sigma
\tag{2.2}
\]
在同一固定源 fiber、满足边界及 corner 条件的解空间上，$\Omega_\Sigma$ 不依赖 Cauchy slice；$\Theta_\Sigma$ 一般不守恒，而有 $\Theta_{\Sigma_2}-\Theta_{\Sigma_1}=\delta S_{[\Sigma_1,\Sigma_2]}|_{\rm on\ shell}$（按本式的相对变分约定）。再取 $\delta$ 才得到 $\Omega$ 守恒。joint corners 的取向和 $C$ 必须配套；不能为要求 $\Theta$ 守恒而排除合法 Maxwell 模式。[R1]

本文用 \(\Omega=\delta p\wedge\delta q\)，\(\iota_{X_F}\Omega=-\delta F\)，\(\{F,G\}=\delta F(X_G)\)，故 \(\{q,p\}=1\)。后面所有有限维归一化以此为准。

(2.1) 是变分良定性，不是 PDE well-posedness。要构造单值响应，还需分别证明存在、适当 gauge 意义下唯一、允许数据上的连续依赖与约束传播；完整未约化源关系可多值。这些是模型证明义务，不是独立物理输入，更不能强求每个 raw gauge representative 唯一。Robin 系数选错可产生不稳定模；任意把两种边界条件拼在尖角处不自动产生一个光滑 IBVP。

## 2.2 YM 的闭合与响应

\[
 S_{\rm YM}=-\frac1{2e^2}\int_R\langle F\wedge *F\rangle,
 \qquad
 \theta_{\rm YM}=-e^{-2}\langle\delta A\wedge *F\rangle.
\]
把真实 boundary covector 定义为
\[
 \lambda_A(\delta a)=-e^{-2}\int_B\langle\delta a\wedge *F\rangle.
\tag{2.3}
\]
这样不必对所有 signature/dimension 盲目使用同一个 normal-electric 分量符号。

固定参考 frame 后的 tangential Dirichlet \(a=a_0\) 使 \(\delta a=0\)，是一个可选 physical closure。它没有固定 \(E_n\)，也没有授权除去所有 external charges。电/Neumann 型 closure 要固定相应 covector，并在需要时加 Legendre boundary term；非阿贝尔背景 source 的 gauge covariance、source conservation 和 corner terms 均须检查。一般 Robin closure 来自明确的 boundary potential/kinetic action；不是任意公式都 gauge compatible 或稳定。

含 \(\theta\operatorname{tr}(F\wedge F)/(8\pi^2)\) 时，在该 trace normalization 下响应还含
\[
 \lambda_\theta(\delta a)=\frac{\theta}{4\pi^2}
 \int_B\operatorname{tr}(\delta a\wedge F).
\tag{2.4}
\]
真正的 \(\theta\) jump 或 retained boundary matter 是 physical interface，不是 temporary closing，不能在 opening 时删去。

## 2.3 正确的完整源对象是一条关系

对选中 faces \(\Gamma\subset B\)，撤去其 temporary closing 项/限制，保留其余所有真实边界条件。令 \(q\) 为选定边界极化下的输入 trace，\(\lambda\) 为共轭响应。定义
\[
 \mathfrak R_\Gamma=\{(j,q,d_{\rm in};\phi,\lambda,d_{\rm out}):
 \text{区域方程、约束、全部 corner compatibility 成立}\}.
\tag{2.5}
\]
它由区域自己的 action、domain 和 source convention 定义，不引用未切分解来定义。

关系不必是单值的 \(\lambda=\mathcal Dq\)：有 homogeneous modes、gauge directions、零频和不完整 characteristic data 时，DtN inverse 可能根本不存在。只有已经证明相应映射为单值且可逆的子域，才写 \(\mathcal D^{-1}\)。

合法输入域是
\[
 \mathcal D_{\rm adm}\subset\mathcal J\times\mathcal Q\times\mathcal D_{\rm in},
\]
而非默认直积。在 \(L=\partial_t^2-\partial_x^2+m^2\)、Dirichlet strip 中，\(q_0=x(1-x),\dot q_0=0,f=2+m^2x(1-x)\) 给光滑解。将该 tuple 拆成 force-only 和 initial-only 时，角点 \(\partial_t^2\phi\) 分别被强迫为 \(2\) 与 \(-2\)，各自违反 wall 条件。因而所有 reconstruction 比较都在**完整相容 tuple** 上进行。

## 2.4 opening 不是把不同 fibers 当同一 symplectic space

对每个固定 \(q\)，源问题可具有自己的 conserved CPS。改变 \(q\) 的 variation 一般会穿过边界携带 symplectic flux；所以 \(\bigcup_q\operatorname{Sol}_q\) 不能不加解释地赋予一份 conserved \(\Omega_B\)。

本稿使用 (2.5) 作为响应关系，在 sewing constraint 上相加完整 action，使内部 flux 相消。只有此时才形成新闭合系统的 \(\Omega\)。若要让 \(q\) 自己动力学化，必须加入它的 action/共轭量，那是另一种 extended physical theory。

## 2.5 透明 sewing 的方程

先用实际 \(h\) 做 (1.4) 的 connection matching；然后要求
\[
 \lambda_1(\delta a_1)+\lambda_2(\delta a_2)=0
\tag{2.6}
\]
对所有相容 variations 成立。存在保留的 interface action \(S_\Gamma\) 时，右式增加 \(\delta S_\Gamma\)，输出就不是 bare transparent interface。

变动 \(h\) 时，令 \(\eta=\delta h\,h^{-1}\)，则
\[
 \delta a_2=h\delta a_1h^{-1}-D_{a_2}\eta.
\tag{2.7}
\]
因此 \(h\) variation 同时检测界面的 Gauss/Ward balance 和 seam endpoints 的 corner charge。只检查固定 \(h\) 下的 conormal equation 可能漏掉这些条件。

切向 connection 和 conormal 的连续性给无 surface source 的弱方程，但**弱解不自动光滑**。本稿的光滑装配还要求所声明的 collar jets 可匹配，或另外使用一个明确的 regularity theorem。null 上要独立处理 characteristic constraints，不把 (2.6) 当成充分 Cauchy data。

## 2.6 真正 closed intermediate 的操作

先把 \(R_1,R_2\) 拼成 \(R_{12}\)：删除且只删除内 seam 上被标记的 temporary terms；形成 (2.5) 的完整 joint solution relation，保留所有解和本次内部 proper 的实际作用及退化方向；在所有 surviving timelike faces 保留它们的 \(B\)。输出保存 \(S_{12},P_{12},B_{\rm out},\mathscr O,\mathsf q\) 和 source-rule，并保留完整输出 fields、规范作用及预辛结构；内部 seam 不再是物理边界，但不能连同输出 bundle/holonomy/branch 信息一起遗忘。这里不执行 gauge reduction。

下一次与 \(R_3\) 拼接，**从 \(R_{12}\) 的 action/domain 重新生成**选中外面的 (2.5)。要求的比较是对任意共同 admissible external tuple，先 (12) 再 3 与先 1 再 (23) 给相同解、response、observable transport。只证明零源 Green kernel 相同不足以推出这个比较。

一个容易误删的量：若为了独立闭合而加入了 CS chiral wall 的 \(v j^2\)，透明 opening 必须明确删掉该临时 wall Hamiltonian；若它是实际保留的 edge matter Hamiltonian，就不能删除。两种物理任务从一开始必须分开标记。

## 2.7 物理边界、gauge fixing、人工 seam 三者不同

Gauge fixing 用于给退化 Hessian 建立计算逆，不应改变 gauge-invariant observables；physical boundary conditions 改变系统；opening 改变当前 physical boundary problem，但期望删除的是本次人工切割引入的限制。旧 \(G_B\) 与新 \(G_{\#}\) 的差一般不是一份全球 smooth Wick shift，也不保证二者的 vacuum representations unitarily equivalent。

这里不需要每个 intermediate vacuum 与全局 vacuum 相同；需要每个 theory 的 algebra 和 source problem 自己良定义。states 的组合另见第 09 篇。


---

<!-- source: notes/03_classical_and_quantum_observable_algebras.md -->

# 03｜什么才叫 classical / quantum observable algebra

## 3.1 首先固定物理对象，不从 curvature polynomial 开始定义全部

固定 \(\mathfrak T_B\)。令 \(\mathcal S_B\) 为满足全部方程、边界/角点和 sector 条件的完整解空间，并保留 \(\mathcal G_{\rm prop}\) 的实际作用、stabilizers 与 \(\Omega_B\) 的全部退化方向。区域构造和 sewing 不形成 \(\mathcal S_B/\mathcal G_{\rm prop}\)。下文 invariant functions 与 label 零关系用于观测量，而不删去场空间的 gauge directions；regular reduced expressions 仅作另列的派生验收。

在 \(\mathcal S_B\) 上，一个 regular Hamiltonian observable 是满足以下条件的复泛函 \(F\)：它对 proper gauge 不变，其 variation 在所选测试域有意义，并存在合法线性化解 \(X_F\) 使
\[
 \iota_{X_F}\Omega_B=-\delta F.
\tag{3.1}
\]
零方向只造成 \(X_F\) 的冗余，不改变 \(\{F,G\}=\delta F(X_G)\)。取闭合于复共轭、有限和积及合法括号的指定子类，得到 \(\mathcal A^{\rm cl}_{B,\mathscr O}\)。当所有所用泛函满足 (3.1) 且域稳定，Leibniz 与 Jacobi 由 \(\delta\Omega=0\) 推出。

这不是宣称无限维 \(C^\infty(\mathcal P)\) 的每个元素都有 Hamiltonian vector field。\(\mathscr O\) 的任务正是给出物理上够用、数学上准入的类。本文不承诺一个模型无关的唯一“最大 quantum algebra”。

## 3.2 必須列出的 generator families

局域量可以从 \(\int f\,\mathrm{tr}(F^2)\)、\(\mathrm{tr}(FDF\cdots)\)、matter invariants、stress/current smearings 开始。但它们通常不分离全部 gauge orbits。

完整的 framed 目标还要依据模型加入：anchored transports 及 Wilson networks；normal electric response 及其带适当参照的 non-Abelian smearing；非平凡 cycle 的 holonomy；声明允许的 topological/charge sector detectors 和 sector-changing maps；真实 physical-edge observables。CS 的 local on-shell curvature 几乎没有信息，故必须从 currents 与 global/network labels 出发。

对 Abelian 线性场，合法线性 connection probe 的条件是
\[
 \langle f,d\epsilon\rangle=0\quad
 \forall\epsilon\in\operatorname{Lie}\mathcal G_{\rm prop}.
\tag{3.2}
\]
不能未经证明把它缩成 \(f=\delta\beta\)。后者会漏掉部分 cohomological/relative directions。对 compact gauge group，指数型 probes 还必须满足 large-gauge integrality；presymplectic Abelian **group** 而非 vector space 的 Weyl 关系在此有实际用途。[R4,R5]

## 3.3 Hamiltonian 准入不是纯几何可写性

Wilson holonomy 是光滑经典 connection 上有意义的几何泛函。但它的 functional derivatives 支撑在路径上。它是否有声明域中的 Hamiltonian vector field、两个 sharp insertions 的 bracket 是否存在、量子乘积是否可定义，是额外问题。

因此维护两张清单：geometric observable catalog 与已经准入的 Hamiltonian/operator algebra。thin Wilson 不准入既有 microcausal algebra 时，必须为它构造合适的 line/junction prescription；不得从目标清单删除它，再宣称原来的 smaller algebra 已经完成完整问题。本文的 Maxwell 精确结果采用 smooth smearings，不伪装成全部 thin Wilson 的量子化；它确实保留检测 relative holonomy 的平滑 generator。

非阿贝尔 electric flux \(\int_S E_n\) 本身也需比较不同 fibers：使用 frame、parallel transport dressing 或使测试 section 同时变换。其 brackets 包含 dressing 的 variation；不是把每个 color 当独立 Abelian flux。

## 3.4 first-class reduction 与普通理想商

在一个给定 Poisson algebra \(\mathcal A\) 中，约束理想 \(I\) 若为 first class，projectable algebra 是
\[
 N(I)=\{F:\{F,I\}\subset I\},\qquad
 \mathcal A_{\rm red}=N(I)/(N(I)\cap I).
\tag{3.3}
\]
在正则 Hamiltonian 群作用例子，可用 invariants 后再限制约束。不能对全部 \(\mathcal A\) 直接 quotient 任意约束理想，因为它未必是 Poisson ideal。

更不能假设所有 transmission conditions 都是 first class。某些 matching 是 second class，或根本不是旧 smooth phase space 中可微的 sharp boundary functionals。本稿的一般操作在 variational matching locus 上 pull back 完整 \(\Omega\)，并保留其已识别的 gauge null directions 与 active cut action；需要 Dirac bracket 的具体有限模型必须显式计算。(3.3) 仅是 YM2、线性 current 等已验证情形的派生 observable presentation，不是区域场空间的构造步骤。

量子时 \([q,p]=i\hbar\) 且把 \(q=0\) 作全代数的两侧理想商，会把单位元一起消掉。可用保持 constraint-state domain 的 operators 及其作用 kernel：
\[
 \mathcal A_{\rm red}^{\rm q}=
 \mathcal A_{\rm proj}/\ker(\mathcal A_{\rm proj}\curvearrowright\mathcal H_{\rm phys}).
\tag{3.4}
\]
(3.4) 是一般 prescription，不是已经算出 kernel。第 05、06、07 篇分别给实际 normal forms 或完整线性关系。

## 3.5 量子 observable algebra 的工作定义

先给一个实现无关的 generator/relation \(*\)-algebra，或给一个实际 Hilbert space、公共不变域 \(\mathcal D\) 及在其上作用的 operators。记录所取 completion：algebraic CCR、Weyl C*-algebra、有限阶 differential operators、von Neumann realization、formal \(\hbar\)-series 都不互相自动相等。

固定 observable prescription 的 quantization 至少满足：

1. 指定的 unit、adjoint 和 products 合法，规范/EOM relations 不产生 inconsistency；
2. 所声明的 classical correspondence 在共同准入生成元上成立，如 \([\widehat F,\widehat G]=i\hbar\widehat{\{F,G\}}+O(\hbar^2)\)，不要求对全部经典函数 exact；
3. 真实 large-gauge、global group、level、spin/framing、allowed representations 与 anomaly 数据被实施；
4. 所需 dynamics 保持代数或进入一个明确定义的 dynamical extension。

普通线性模型：对实线性 labels \(\ell\) 及反对称形式 \(\sigma\)，
\[
 [\Phi(\ell),\Phi(m)]=i\hbar\sigma(\ell,m)1,
 \quad \Phi(\ell)^*=\Phi(\ell),
\]
或者
\[
 \mathcal W(\ell)\mathcal W(m)=
 e^{-i\hbar\sigma(\ell,m)/2}\mathcal W(\ell+m),
 \quad \mathcal W(\ell)^*=\mathcal W(-\ell).
\tag{3.5}
\]
定义取 \(\mathcal W(\ell)=e^{i\Phi(\ell)}\)。symplectic radical 不自动是 gauge：可能是物理中心。只对实际 EOM/gauge null labels 作商，不把每个 central observable 设为常数。

## 3.6 compact harmonic coordinate 必须换成 rotor

完整 compact U(1) relative sector 中，\(Q\in\mathbb R/2\pi\mathbb Z\)，取
\[
 U=e^{iQ},\quad P=-i\hbar\partial_Q,
 \quad [P,U]=\hbar U.
\tag{3.6}
\]
\(V(s)=e^{isP/\hbar}\) 满足 \(V(s)UV(s)^*=e^{is}U\)。trivial sector 在 \(L^2(S^1)\) 实现；\(\Psi(Q+2\pi)=e^{i\vartheta}\Psi(Q)\) 的 flat-line sector 给 \(P=\hbar(n+\vartheta/2\pi)\)。在固定 ϑ 的 Weyl realization 中还实施 \(V(2\pi)=e^{i\vartheta}1\)；若不固定这个 central value，描述的是一族 sectors，而不是指定的一份表示。一份实直线 Gaussian 不是这个 compact rotor 的全球量子化。

若基于 fixed bundle 的小场展开只保留 infinitesimal gauge，实线 \(Q\) 的 CCR 完全合法，但必须标注线性 cover。不同 \(\vartheta\) 可以是同一较小抽象代数的不同表示；不能把它们的差异从该代数中凭空恢复。

## 3.7 algebra、state、representation、amplitude 分开

一个 algebra isomorphism 不决定 vacuum、temperature 或 entanglement。一个 Haar/conformal-block amplitude identity 不自动给 operator-algebra isomorphism。Hilbert spaces 同维不自动 intertwine Wilson/flux operators。只在给出具体 maps、domains 和关系之后才可连接这些层次。

整体向量相位不改变代数态或密度矩阵；相位敏感的对象是指定的向量 lift、群实现或带插入振幅。固定 cups 后只翻转 F 不构成第二份合法 realization；正 Gram 也不自动给 onto。相应完整比较及新攻击见[修订证明 R5](../audit_repair_2026-09-18/repair_proofs.md)。

以上区分不是降低目标，而是防止以较弱命题冒充较强命题。observable completeness 的操作性定义，是对本模型保留的物理解/sector 具有足够 separation witnesses，并覆盖事先要求的生成元，而不是测试通过的数量。


---

<!-- source: notes/04_sewing_comparison_principle.md -->

# 04｜有内容的通用比较原则：先装配 fields，再验收 algebras

## 4.1 独立的 source，不是目标的逆像

对有限分片，区域输入给出各自的 (2.5)。cut source 的 classical configurations 是
\[
 \mathcal C_\Gamma=\{(\phi_i,h_{ji},q_i,\lambda_i):
 \text{每片属于自身源关系；满足 (1.4)、(1.6)、(2.6)、joint jets}\}.
\tag{4.1}
\]
保留完整 fields、variations 与 gauge arrows，不在 (4.1) 上先 quotient。局部 $g_i$ 满足 $h'_{ji}=g_jh_{ji}g_i^{-1}$、connection/source covariance 后，先装配实际 bundle map。写到固定 output bundle 上时，用与真外 frames 相容的 presentation identification $\kappa:P_h\to P$，令
$$g_{\rm as}=\kappa'\operatorname{Desc}(g_i)\kappa^{-1}.$$
cut arrow 标为 proper 当且仅当 $g_{\rm as}\in\mathcal G_{\rm prop}$，不能只检查局部可缩或外端取值。presentation 改变须同时运输该标记；对固定带标签 target，nonproper 改变是物理作用，不能当无害 choice 遗忘。U(1) based identity component 的精确判据是总 winding 为零；原全部 based-components 模型不改政策。构造、必要充分性及显式同伦见[修订证明 R3](../audit_repair_2026-09-18/repair_proofs.md)。

消去 source/cut history 时保存完整作用关系而不是选定解；不通过 pseudoinverse 删除零模，也不删除 proper 的作用信息。

## 4.2 几何—经典装配定理 G（修订）

**前提。** 有限普通 collar-compatible 几何与实际 principal bundles/cocycle 给定，呈现预先固定的 output sector。fields/variations 各自在声明域光滑到 face；connection、source、typed transmission 和共同 corner atlas 满足所列匹配。非特征 on-shell 高阶 jets 可由共同 PDE 与最低阶 matching 递推时，不另作输入；null 保留未由其余数据决定的 seeds。真实保留项与所移除 closing 由 action 标签固定，arrows 使用 §4.1 的实际 global proper 标记。

**关系结论。** matched 区域源关系与独立未切分源关系在实际 bundle presentations、arrows 和 stabilizers 层通过 restriction/assembly 比较。固定同一 presentation 后，场的限制与装配互逆；改变 presentation 则使用明确的 bundle map，不宣称所有 frame choices 的 raw fields 与固定 target 一一对应。两边可以为空或多值；本关系定理不假设或证明一般 IBVP 的非空、唯一、连续性。具体模型另由自身 source constructor 完成这些义务，不把未证明的“well posed”写入输入后宣称完成。

**预辛结论。** 对已作实际 action/corner transport 计算的模型，在完整未约化 matched space 上有
\[
 J^*\Omega_{\rm out}=\Omega_{\rm sew}.
\tag{4.2}
\]
YM/Maxwell 的证明是将 (2.7) 代入 canonical potential 并用 Gauss 积分分部；U(1) CS 是 (7.3a) 的实际差式。具体未约化 constructors、保留的 gauge fibers 与 seam signs 见[修订证明 R4](../audit_repair_2026-09-18/repair_proofs.md)。一般 action 未完成相应运输计算时，本式仍是待证事项而非新增成功假设。$J$、$dJ$ 的 onto 及 Hamiltonian tangent lifts 必须另证；仅有 pullback 式不保证它们，也不假定商光滑。对 Maxwell 的 real chain，R4.3 在实际 smooth collar representatives 和固定 cutoffs 上构造连续线性 $J$，$\lambda=0$ restriction 给显式线性 section；不从抽象无限 jets 的可延拓性推出 smooth section。对已经提升的合法 $X_F$，(3.1) 直接给相同括号。

**关系部分的证明。** 实际 $h$ 识别 collars 上的 fields；cocycle 给三重一致性，typed matching/PDE jet recursion 给所需光滑性。local EOM 与 variational balance 消去 seam sources。反向限制独立 global 解，给每片自身的 actual sources，而非旧 homogeneous B 的解。在固定 bundle presentation 内两过程互逆；换 presentation 时保留 §4.1 的 $\kappa$ 比较。普通 bundle-map descent 先构造箭头；§4.1 的成员检查保证其属于原 proper 群。反向限制任意 global proper map，代回装配公式恢复原 map，stabilizers 同理。全程不作 coarse quotient。证毕。

该定理不是裸 $\mathcal A_{B_1}\otimes\mathcal A_{B_2}$ 的定理。它将几何关系比较、模型 source 存在性、预辛计算与 algebra presentation 分开；任何未完成层保留为开放问题。

## 4.3 observable presentation 的额外验收

在未切分理论中独立给出 target generators \(\mathsf g\)、允许 products 和 relations \(\mathsf R\)。在区域一侧用其已声明的测试函数、开放网络腿、transition/anchor 和源数据建立 \(\mathcal E_\Gamma\)。新增跨 seam label 的规则必须提前规定，例如：

- 一条路径按实际几何切成有限段，插入 \(h\)，用 (1.5) 收缩；
- 一份平滑测试密度由区域测试密度加显式 jet-matching 条件装配；
- 一个多点 distribution 必须在**预先选择**的 joint test/distribution space 中给出，不借一句 partition of unity 冒充有限 tensor decomposition。

先由每个 actual cut word 的几何/场评价定义到独立 target 的 map，验证 source relations 全部评价为零。对每个 \(g\in\mathsf g\) 再写 actual lift \(\widetilde g\)，并检查 \(\Theta(\widetilde g)=g\)，由此证明满射。injectivity 另由完整零关系与 normal-form 独立性等证明。只给生成元名字或“满足 Ward identity”不够；更不能把 image 改名为 target。

经典若直接使用 matching locus 上 Hamiltonian functions，则 restriction 的 kernel 是消失理想。这是有效描述，但除非算出其生成关系，不把它说成已计算的 presentation kernel。第 05/06/07 篇是这里真正算出 kernel 的模型。

## 4.4 一个量子比较准则 Q

给定明确的 cut generator algebra 和独立 target。若：actual cut-word evaluation 保持全部 source relations，从而定义到 target 的同态；每个 target generator 有实际 lift；任意 cut word 能归约到已写出的 normal form；这些 normal forms 的 target images 线性独立；adjoint 和公共域保持；则 \(\Theta\) 诱导 onto faithful \(*\)-isomorphism。若含 dynamics，还需检验 generating evolution/response 的 intertwining。

证明是三步有限代数论证：relations 使 map 良定义；target generators 的 lifts 给满射；normal-form 独立性给零 kernel。该准则不是“量子化与约化总可交换”的定理。CS integrability 或 anomaly 都可能改变 relations；一般 interacting theory 可能根本还没有合法 cut words。

## 4.5 finite regrouping 与重新 opening

固定同一装配后的 geometry、bundle、所有真实 boundary/defect couplings、observable 和量子处方。每个 intermediate 从自身 action/domain 重新定义源关系。在上述几何关系定理适用时，两种合法 binary paths 都通过 restriction/assembly 比较到同一最终关系；不需要单值性。要比较因果响应映射，还需具体模型已经证明其 source 存在与相应唯一性，并只对完整相容 tuple 使用该结果。一般源构造未完成时，不把“再次 opening 成功”当输入掩盖缺口。

对于 \(\Theta_{(12)3}\) 和 \(\Theta_{1(23)}\)，比较 map 可写
\[
 \mathfrak a=\Theta_{1(23)}^{-1}\Theta_{(12)3}.
\tag{4.3}
\]
(4.3) 是已构造 maps 的简写，不是生成它们的方法。为了不是 tautology，必须在区域上独立给出其作用：YM2 是三个 holonomies 的乘积；Maxwell 是 joint tests 与 transitions 的重分组；CS 是 normalized F-move。四个对象的五种括号化之间还要满足 pentagon；quantum phase/lift 见第 08 篇。

## 4.6 three causal types 不共享一个输入空间

Timelike：开放边界极化，匹配 connection、conormal 和规范/角点数据。

Spacelike：匹配完整 Cauchy data 与约束，使用 evolution；不是把前后两套初值作为同时独立的张量因子。

Null：必须给足够的 characteristic surfaces、radiation、corner flux seeds 和 transport constraints。例如在 \(ds^2=-2du\,dv+dy^2+dz^2\)、\(u=0,A_v=0\) 上，纯 YM 满足
\[
 \partial_vF_{uv}+D^A\partial_vA_A=0.
\tag{4.4}
\]
\(A_A(v)\) 不决定初始 \(F_{uv}(v_0)\)；但指定二者后它们又不是任意独立的 histories。本文对一般 null 网络给出此输入约束与 failure tests，不宣称已从 timelike slab 的证明获得任意 nonlinear null sewing。

## 4.7 为什么不要求无条件 injective isotony

一个带真实 reflecting boundary 的区域不是仅仅全局 theory 的 open subregion；而含 global/topological charges 的 gauge observable 也可能在不同嵌入下发生额外 relations。本文因此不预设所有几何包含都给 injective algebra embeddings。[R4–R6] 要研究局域 net 时另固定合适区域类和 boundary-free inclusion prescription，不能与当前 boundary-changing composition 混同。


---

<!-- source: notes/05_YM2_and_finite_graphs.md -->

# 05｜精确模型 I：compact YM2 与有限图

**未约化对象与本篇坐标计算。** 区域与 sewing 保留全部满足 Gauss 的 $(A_x,E)$、规范 histories、实际 based action 及预辛退化方向；其 source constructor 见[修订证明 R4.4](../audit_repair_2026-09-18/repair_proofs.md)。下文 $T^*G$、reduced coordinates、invariant/PBW/Haar 表达用于派生 observable/representation 的验收，不替代完整区域场对象。

## 5.1 独立未切分目标

取 compact connected \(G\)、正定 invariant pairing、平凡时空 cylinder/strip bundle、trivial large-gauge character。空间区间长 \(\ell\)，两条 timelike endpoints 取固定 \(A_t=0\)，endpoint frames 保留。proper 政策包含 based gauge maps 的全部分支；下文 invariant target 对该完整作用不变，场空间中仍保留这些作用方向。

\(1+1\) pure YM 的 canonical action 是
\[
 S=\int dt\int_0^\ell dx\left[\langle E,\dot A_x-D_xA_t\rangle
 -\frac{e^2}{2}\langle E,E\rangle\right]
\]
（与第 01 篇 convention 相应的 Lie-algebra electric variable）。Gauss \(D_xE=0\) 使 electric field 沿区间平行。令 \(U=\mathcal P e^{-\int A_xdx}\)，选取 reduced momentum 的符号使
\[
 \Theta=\langle p,U^{-1}\delta U\rangle,
 \quad H_\ell=\frac{e^2\ell}{2}\langle p,p\rangle,
 \quad J_a=-p,\quad J_b=\operatorname{Ad}_Up.
\tag{5.1}
\]
可通过用 endpoint-fixed gauge 将 \(A_x\) 放到一条给定 holonomy path、再对 canonical potential 积分分部得到 (5.1)；\(p\) 与 \(E\) 的方向取决于上式对 \(U\) 的 minus convention。具体地，若 E 的参考值取在左端，以上 convention 给 p=-E(0)；这固定了符号，而非任意改写。J_a,J_b 是 boundary action g=exp(η) 的 generators；第 01 篇写 δA=Dε 时用的是 η=-ε，故相应 charge 符号反向。无需全球 group logarithm。任意两个同 holonomy 的区间连接由 based gauge 联系，反之明显，因此 configuration quotient 是 \(G\)，phase space 是 \(T^*G\)。

独立 classical target 取 representative functions（有限维连续 unitary representations 的 matrix coefficients）与 fiber-polynomial momenta 的代数
\[
 \mathscr P_G=\mathscr R(G)\otimes\operatorname{Sym}(\mathfrak g).
\]
令 \(L_\xi f(U)=\partial_s f(Ue^{s\xi})|_0\)，则
\[
 \{f,p_\xi\}=L_\xi f,\qquad
 \{p_\xi,p_\eta\}=-p_{[\xi,\eta]}.
\tag{5.2}
\]
这不是全体 \(C^\infty(T^*G)\)，但包含全部 finite-representation holonomies 与 polynomial fluxes，分离 \(T^*G\) 的点。

## 5.2 两段的 classical map、完整 kernel 与 section

seam frame action 是
\[
 (U_1,U_2)\mapsto(kU_1,U_2k^{-1}),\qquad
 \mu=\operatorname{Ad}_{U_1}p_1-p_2=0.
\tag{5.3}
\]
该条件由撤去两内端 \(A_t=0\)、识别其任意共同 history、变分该 history 得到；不是手工要求两份 closed solutions 满足透明条件。

使用全球坐标
\[
 U=U_2U_1,\quad a=U_2,\quad p_U=p_1,\quad
 p_a=p_2-\operatorname{Ad}_{U_1}p_1.
\]
直接计算
\[
 \langle p_1,U_1^{-1}\delta U_1\rangle+
 \langle p_2,U_2^{-1}\delta U_2\rangle
 =\langle p_U,U^{-1}\delta U\rangle+
 \langle p_a,a^{-1}\delta a\rangle.
\tag{5.4}
\]
因此约束为 \(p_a=0\)，cut action 在 \(a\) 上传递，输出正好 \((U,p_U)\)。在 invariant fiber-polynomial algebra 的适配表达中，限制 \(p_a=0\) 是满 Poisson map；kernel 是正 vertical-momentum degree 部分，section 是只依赖 \((U,p_U)\) 的函数。这个 kernel 是实际算出来的，不能在取 invariants 前对全代数强行设 \(p_a=0\)。

能量在 constraint locus 上变为
\[
 H_1+H_2=\frac{e^2(\ell_1+\ell_2)}2\langle p_U,p_U\rangle.
\tag{5.5}
\]

## 5.3 quantum operator presentation

在 \(L^2(G,dU)\) 上用 normalized Haar，公共域 \(C^\infty(G)\)。定义
\[
 \widehat p_\xi=-i\hbar L_\xi,\quad M_f\psi=f\psi,
 \quad [M_f,\widehat p_\xi]=i\hbar M_{L_\xi f},
 \quad [\widehat p_\xi,\widehat p_\eta]=-i\hbar\widehat p_{[\xi,\eta]}.
\tag{5.6}
\]
有限 words 给 \(\mathscr D_{G,\hbar}\)。按 Lie basis 排序后 PBW form 唯一：最高微分符号是全球 tangent frame 的独立 monomials，逐阶消去即可。\(*\) 用 Haar adjoint；\(\widehat p_\xi\) 对实 \(\xi\) 为对称的标准 self-adjoint generator 的限制。

两段中，与 cut right translations of \(a\) 对易的 vertical derivatives 可取 \(\widehat r=-i\hbar R^a\)，其中 \(R_\xi f(a)=\partial_s f(e^{s\xi}a)|_0\)。在 \((a,U)\) 排序，invariance 使所有 coefficients 独立于 \(a\)。故每个 invariant operator 唯一为
\[
 D=\sum_\alpha \widehat r^\alpha D_\alpha(U),\qquad
 Q(D)=D_0(U).
\tag{5.7}
\]
vertical enveloping algebra 的 augmentation \(\widehat r\mapsto0\) 是 algebra homomorphism，因而
\[
 \boxed{\mathscr D_{G^2,\hbar}^{G_\Gamma}/\ker Q\simeq
 \mathscr D_{G,\hbar},\quad \ker Q=\{D:D_0=0\}.}
\tag{5.8}
\]
实际 section 为 \(D_U\mapsto1\otimes D_U\)。这里没有对 continuum gauge group 作 Haar；Haar 只用于所指定的有限维 endpoint-group 表示。Gauss/based invariants 给出这些派生坐标，完整场空间及 gauge histories 仍由 R4.4 保留。

## 5.4 Hilbert map 不是维数计数

\[
 (V\psi)(U_1,U_2)=\psi(U_2U_1).
\tag{5.9}
\]
Haar invariance 给 \(\|V\psi\|=\|\psi\|\)。任何 invariant function 在 \((a,U)\) 中不依赖 \(a\)，故 V onto cut-invariant subspace。对 normalized matrix coefficients \(e^\rho_{mn}=\sqrt{d_\rho}D^\rho_{mn}\)，
\[
 Ve^\rho_{mn}=\frac1{\sqrt{d_\rho}}
 \sum_r e^\rho_{rn}(U_1)\otimes e^\rho_{mr}(U_2).
\tag{5.10}
\]
它给 operator intertwining \(DV=VQ(D)\)，包括 Wilson multiplication 和 flux。不是单纯 partition-function sewing。

\[
 \widehat H_\ell=-\frac{e^2\ell\hbar^2}{2}\Delta_G,\qquad
 (\widehat H_1+\widehat H_2)V=V\widehat H_{\ell_1+\ell_2}.
\tag{5.11}
\]
后一恒等式来自两条腿的 bi-invariant Laplacian 对 \(\psi(U_2U_1)\) 都给同一 \(\Delta_G\psi\)。functional calculus 给 unitary evolution intertwining。有限阶 differential algebra 不对有限时间 evolution 自动闭合，因此 dynamical algebra 另定义为由 (5.6)、其时间演化及明确的 smooth time smearings 生成的代数。

## 5.5 完整 endpoint histories 与真正再开放

对任意 smooth anti-Hermitian histories \(q_a(t),q_b(t)\)，reduced Hamiltonian 为
\[
 H_q=H_\ell-\langle q_a,J_a\rangle-\langle q_b,J_b\rangle,
\]
给
\[
 \dot p=-[q_a,p],\qquad
 \dot U=e^2\ell Up+Uq_a-q_bU.
\]
令 \(\dot g_a=-q_ag_a\)、\(\dot g_b=-q_bg_b\)，初值为 1，则
\[
 p(t)=g_ap_0g_a^{-1},\qquad
 U(t)=g_bU_0e^{e^2\ell(t-t_0)p_0}g_a^{-1}.
\tag{5.12}
\]
任意 source variations 由有限维 ODE 的变分得到，不限制 histories 对易。

两段 seam 的共同 q 在 \(\partial_t(U_2U_1)\) 中抵消，(5.3) 把剩余项合为长度相加的同一 ODE。于是先形成 closed \(I_{12}\)、再开放其外端，与两段在完整相容 histories 下直接重建完全相同。三段两种顺序都给 \(U_3U_2U_1\)、同一 p、同一外源 ODE。对源微分后所有响应也相同。这是 E 级 fresh-reopening 结果，不只零源比较。量子时 endpoint charges 是左右 regular representations 的 self-adjoint generators，与 bi-invariant Casimir 对易；任意 histories 的 driven propagator 因而由各端 time-ordered group translations 与 free Casimir evolution 构成。在 V 的 image 上共同 seam translations 抵消，(5.11) 又处理自由部分，故同样得到 driven unitary intertwining。这个结论不依赖把不同时刻的 q 当对易数。

## 5.6 circle、large sectors 与不能错误因子化的情形

self-sewing 只复制边界 occurrences，不复制整份 field：
\[
 \operatorname{Ad}_Up-p=0,\qquad (U,p)\sim(gUg^{-1},gpg^{-1}).
\]
trivial quantum sector 为 \(L^2(G)^G\)，由 characters 张成。指定 circle algebra 由 character multiplication、Casimir 和 dynamics 生成。不声称本文求出了所有 singular quotient 上任意 differential-operator ideal。

若 \(\pi_1(G)\ne0\)，可选非平凡 large-gauge character；对应波函数是 cover 上 equivariant functions，或 G 上 flat line bundle 的 sections。\(L^2(G)\) 仅是 trivial choice。本篇 (5.8) 的全域陈述固定该 choice；不把其他 sectors 作为“已被 Haar 自动包含”。

## 5.7 有限图：同一证明真正扩大了哪些模型

给有限 oriented graph，edge variables \(U_e\in G\)、phase space \(\prod_eT^*G\)、Hilbert space \(L^2(G^E)\)。内部 vertices 施加 Gauss，外部 vertices 保留 frames。把一条 edge 分成两条，(5.4)–(5.10) 逐条给 exact edge-subdivision sewing；多条 disjoint subdivisions 的 cut group 是 product，maps 因 group multiplication 结合而 coherent。

Hamiltonian 若含 plaquette \(\operatorname{Re}\operatorname{tr}(\prod_{e\subset f}U_e)\)，跨 cut 的 plaquette 必须通过区域 open-path words 组装。裸 closed-region Hamiltonians 若没有这些 paths，不会自己生成该 interaction。enriched action/network 数据保存后，逐个 plaquette multiplication 与 V intertwine；kinetic coefficients 按约定在子链路相加。

这是任意有限 graph regulator 中有 non-Abelian Wilson/flux/interaction 的精确结果，不是四维 continuum limit。graph 的拓扑和额外 magnetic bundle-sector labels 必须独立给出；一个 graph 自动丢失的二维 cocycle 不能由 edge subdivision 凭空恢复。

二维 YM 的 representation/area 量子理论和 corners 可参照 [R7,R8]；以上 operator proof 由本文给出，不以 amplitude 公式代替。


---

<!-- source: notes/06_Maxwell_full_smooth_algebra.md -->

# 06｜精确模型 II：relative Maxwell 的完整平滑线性代数

**本篇的“完整”有精确定义：全部下面指定的平滑线性 Hamiltonian probes 及其有限 polynomial CCR / Weyl algebra，不是全部 distributional、thin-Wilson 或 interacting observables。该类分离本模型的全部 smooth physical Cauchy data，包含辐射模和相对平坦连接，因而不是 curvature-only 子代数。**

区域场对象保留 $a=a_T+d\chi$ 中的全部 Dirichlet $\chi$ 及相应 gauge histories；下文 transverse/Coulomb coordinates 是派生验收坐标，$\mathcal L/\mathcal N$ 是 label 零关系，二者都不替代完整预辛场空间。[修订证明 R4.3](../audit_repair_2026-09-18/repair_proofs.md) 给出保持这些 fibers 的 source constructor 和实际 collar 装配。

空间为 \(\Sigma=[0,L]\times T^2\)，横向面积 \(\mathcal V\)，平直 metric，有限条静止平行 cuts \(x=x_i\)，也允许在常数时间插入 Cauchy cuts。先做实线性 Maxwell / compact theory 的 infinitesimal cover；§6.9 再实施完整 compact U(1) large gauge。固定相对平凡的 boundary bundle sector，无 magnetic defects。

## 6.1 独立未切分边界问题

用实连接 \(a\)，作用量 \(-\frac1{2e^2}\int da\wedge *da\)。两条真实 timelike walls 固定
\[
 a_t=a_y=a_z=0.
\tag{6.1}
\]
proper infinitesimal gauge parameters 在两壁为零。可先用满足该条件的 gauge 置 \(a_t=0\)，再用一个 time-independent Dirichlet gauge transformation 置初始 \(\nabla\cdot a=0\)。Gauss 使该条件传播。

canonical electric variable 定为 \(E=e^{-2}\dot a\)，不是把 \(E\) 与 \(F_{0i}\) 的因子混同。物理初值为
\[
 \nabla\cdot a=\nabla\cdot E=0,\qquad
 a_{y,z}|_{\partial\Sigma}=E_{y,z}|_{\partial\Sigma}=0,
\]
加上保持所有时间导数所需的 smooth compatibility。由散度条件得到 \(\partial_xa_x=\partial_xE_x=0\) 在边界上。没有固定 \(E_x\) 的数值。

令 \(K=-\Delta\) 作用于 co-closed relative vector fields。其 eigenmodes 是 x 方向的 cosine \(a_x\)、sine \(a_y,a_z\) 与横向 Fourier modes 的组合，再施加散度为零：对 \(n\ge1\)，系数满足
\[
 -\frac{n\pi}{L}b_x+i p_yb_y+i p_zb_z=0.
\]
\(n=0\) 时仅有 cosine 的 x component；\(p\ne0\) 是真实传播模，\(n=p=0\) 是唯一 harmonic mode。选实正交基 \(v_\nu\)，\(Kv_\nu=\omega_\nu^2v_\nu\)。

定义 \(\mathscr S\)：mode coefficients 对 \(1+\omega_\nu\) 任意幂都快速衰减的实序列，按上述 basis 解释为向量场。它精确规定我们采用的 smooth compatible domain。physical Cauchy space 为 \(\mathscr S\oplus\mathscr S\)。

\[
 \Omega=\int_\Sigma\delta E^i\wedge\delta a_i
 =\sum_\nu\delta p_\nu\wedge\delta q_\nu,
 \quad H=\frac12\sum_\nu\left(e^2p_\nu^2+\frac{\omega_\nu^2}{e^2}q_\nu^2\right).
\tag{6.2}
\]
此 gauge slice 在本 Abelian 几何唯一：两个 representatives 的差 \(d\chi\) 满足 \(\Delta\chi=0,\chi|_\partial=0\)，积分 \(\int|d\chi|^2=0\) 给 \(\chi=0\)。这不是对一般 YM 宣称无 Gribov 问题。

## 6.2 全部 modes 的存在、唯一性与统一估计

定义 \(C_t=\cos(t\sqrt K)\)、\(S_t=\sin(t\sqrt K)/\sqrt K\)，在 \(K=0\) 上 \(S_t=t\)。
\[
 a(t)=C_ta_0+e^2S_tE_0,
 \qquad E(t)=-e^{-2}KS_ta_0+C_tE_0.
\tag{6.3}
\]
逐频率有
\[
 |C_t(\omega)|\le1,\quad |S_t(\omega)|\le |t|,
 \quad |\omega S_t(\omega)|\le1.
\tag{6.4}
\]
这里的频率估计可直接翻译成普通函数估计：在三维 rectangular Fourier basis 上，Cauchy–Schwarz 给
\[
 \|\partial^\alpha u\|_\infty\le C_r
 \left[\sum_\nu(1+\omega_\nu)^{2(|\alpha|+r)}|u_\nu|^2\right]^{1/2},
 \quad r>3/2,
\]
因为 \(\sum_\nu(1+\omega_\nu)^{-2r}<\infty\)；可以直接取 r=2。所谓 spectral Sobolev bound 在本篇仅指这个加权平方和。任意有限阶空间/时间导数仅增加 polynomial frequency factors；快速衰减抵消它们。故有限时间窗上 series 及所需所有导数收敛，保留完整 \(\mathscr S\)，并对数据连续依赖。差解的 conserved energy 以及 harmonic 初值给唯一性。对强迫 \(\ddot a+Ka=f\) 增加 \(\int_{t_0}^tS_{t-s}f(s)ds\)，同一 bounds 成立。

**这里没有“每个 mode 存在，所以全部 modes 自动可求和”的跳步。** 频率一致的 (6.4) 及导数多项式界承担了求和。也没有把 harmonic inverse 用 pseudoinverse 删除。

## 6.3 独立 target labels、零关系及 separation

对普通 Dirichlet scalar \(\chi\) 记 \(\chi|_{\partial\Sigma}=0\)，定义
\[
 P_Tg=g-d\chi_g,\qquad \Delta\chi_g=\nabla\cdot g,
 \quad \chi_g|_{\partial\Sigma}=0.
\tag{6.5}
\]
Dirichlet Laplacian 的 sine/Fourier eigenvalues 为负，绝对值至少 \(\pi^2/L^2\)，因此该 Poisson problem 唯一；它是一个用普通 Fourier 可计算的投影，不删除 relative harmonic \(dx\)。

测试域取
\[
 \mathcal L=\{(f,g):f\in\mathscr S,\ g\text{ smooth},\ P_Tg\in\mathscr S\}.
\]
等价地 \(g=g_T+d\chi\)，\(g_T\in\mathscr S\)、\(\chi\) smooth Dirichlet。独立目标泛函是
\[
 F_{f,g}(a,E)=\int_\Sigma(f\cdot a+g\cdot E).
\tag{6.6}
\]
\(f\) 散度为零且 proper parameters 在壁上为零，所以它 gauge invariant；\(d\chi\) 与 \(E\) 的配对因 Gauss 和 \(\chi|_\partial=0\) 消失。Hamiltonian vector field 为
\[
 X_{F_{f,g}}a=g_T,\qquad X_{F_{f,g}}E=-f.
\]
它确实保持 \(\mathscr S\oplus\mathscr S\)。括号为
\[
 \sigma((f,g),(f',g'))=
 \int_\Sigma(f\cdot g'-g\cdot f').
\tag{6.7}
\]

**完整线性 kernel：**
\[
 \boxed{\mathcal N=\{(0,d\chi):\chi|_\partial=0\}.}
\tag{6.8}
\]
证明：若 (6.6) 对所有物理数据为零，依次取 \(a=f,E=0\) 及 \(a=0,E=g_T\)，得到 \(\|f\|^2=\|g_T\|^2=0\)。反向由分部积分成立。故 reduced label space 是 \(\mathcal L/\mathcal N\simeq\mathscr S\oplus\mathscr S\)，\(\sigma\) 非退化。

classical target 为 \(\operatorname{Sym}_{\mathbb C}(\mathcal L/\mathcal N)\)，实现为 finite polynomials in (6.6)。没有额外 polynomial relations：有限个线性独立 labels 对某个足够大的有限 mode truncation 已有满 rank，其 evaluations 可取任意有限组实数；非零 polynomial 因而不可能对全部 smooth data 消失。**这也给出 separation：取每个 \(v_\nu\) 分别探测 a 和 E，能检测任意非零物理初值。**

## 6.4 显式修复遗漏的 holonomy–flux 对

定义
\[
 Q=\frac1{\mathcal V}\int_\Sigma a_x\,d^3x,
 \qquad P=\frac1L\int_\Sigma E_x\,d^3x.
\tag{6.9}
\]
两者的测试向量都是合法 harmonic directions，故
\[
 \{Q,P\}=1,\qquad H_0=\frac{e^2L}{2\mathcal V}P^2,
 \quad Q(t)=Q_0+\frac{e^2L}{\mathcal V}P_0(t-t_0).
\tag{6.10}
\]
Gauss 给每个 x 截面的 \(\int_{T^2}E_x=P\)。在均匀 harmonic family，\(Q=\int_0^L a_xdx\)，\(e^{iQ}\) 就是 boundary-to-boundary transport；对一般场，\(e^{iQ}\) 是**平均连接积分的指数**，不是平均 thin Wilson。它是准确的平滑厚探针，能检测遗漏的相对平坦坐标。

\[
 \{e^{iQ},P\}=ie^{iQ}.
\tag{6.11}
\]
\(a=(Q/L)dx\) 的常数 Q 在 \(F=0\) 时仍物理可见。全曲率代数看不见它，但 (6.9) 看得见。\(Q\) 不是被 (6.8) 除掉的梯度，因为产生 \(dx\) 的 scalar 不能同时在两端为零。

## 6.5 区域 source data 与不可遗漏的 seam term

每个独立小 slab 先取自己的 relative walls，含全部自己的 modes。opening 后，初值可有任意合法内部 boundary traces；它们不再被小 slab 的 homogeneous relative domain 限制。

在切分的 Cauchy slice 上，区域 fields \((a_i,E_i)\) 各自满足 Gauss；在每个 seam 选择 real transition \(\lambda_i\)，满足 tangential \(a_{i+1}=a_i+d\lambda_i\)、flux balance 及全部 collar jet matching。\(\lambda_i\) 有可延拓的 collar jets；只其 seam value 进入下式。以 left slab 的 normal \(+\partial_x\) 取向，matched canonical potential 是
\[
 \boxed{\Theta_{\rm cut}=\sum_i\int_{\Sigma_i}E_i\cdot\delta a_i
       +\sum_i\int_{\Gamma_i}E_x\,\delta\lambda_i.}
\tag{6.12}
\]
这是 gauge matching 的 corner contribution，不是添加一份自由 oscillator。

在 \(a_i\mapsto a_i+d\epsilon_i\)、\(\lambda_i\mapsto\lambda_i+\epsilon_{i+1}-\epsilon_i\) 下，bulk potential 的变化为 \(\sum\int E_x\delta(\epsilon_i-\epsilon_{i+1})\)，与 seam term 精确抵消（Gauss、外部 \(\epsilon=0\) 已用）。因此 \(\delta\Theta_{\rm cut}\) 正确地下降。

由于 cuts 是一个 interval chain、线性 transition 无 winding obstruction，可用固定 smooth collar 实现运输到 \(\lambda_i=0\) 的共同 frame；之后 fields 及 jets 全局拼成一份 a,E，所有输入 fields、transitions 与改变实现的 proper maps 仍保留。不同 extensions 可给不同 raw global representative，由实际全局 proper 联系；不把它们直接当相同场。\(\lambda=0\) 的 global restriction 给该装配 map 的 section，不声称是任意 frame presentation 上的双侧逆。用 (6.5) 计算 transverse coordinates 时仍保存 \(\chi\)。由 (6.12) 与运输后的完整 potential 得未约化预辛比较，(6.2) 则是其 transverse 表达；连续性及 tangent section 的精确 collar 域见 R4.3。

## 6.6 每个 target probe 的独立区域 lift、kernel 和量子商

区域 test labels 的定义不使用 solution restriction image：取每片自己的 smooth \(f_i,g_i\)，要求它们在 seam 的全部 jets 匹配；组装后的 f 是 co-closed relative rapid-mode test，g 满足 (6.5) 的明确投影准入条件。这个条件可由 geometry、局部 jets 和 Dirichlet Poisson equation 检查，不依赖任何全局解。它是一份预先规定的 **joint smooth test space**，不是旧 regional polynomial algebras 的 algebraic tensor product。

定义实际 source observable
\[
 \widetilde F_{\{f_i,g_i\}}=
 \sum_i\int_{\Sigma_i}(f_i\cdot a_i+g_i\cdot E_i)
 +\sum_i\int_{\Gamma_i}\lambda_i f_x.
\tag{6.13}
\]
由于 \(\nabla\cdot f_i=0\)，gauge variation 的 bulk endpoint terms 与最后一项相消；所以它在 matched gauge quotient 上定义。置 \(\lambda=0\) 后它等于 assembled (6.6)。反之，对任何未切分 (6.6)，按区间分段其 tests 就产生 (6.13)；这是明确 preimage，而不是给 target 一个新名字。

全部 source linear kernel 可实际计算：拼接 f,g，解 (6.5)，其 null 当且仅当
\[
 f_i=0\ \forall i,\qquad g_i=(d\chi)|_{\Sigma_i}
\tag{6.14}
\]
对**同一份** smooth \(\chi\) 且 \(\chi\) 在真正外边界为零。等价计算为 \(P_Tg=0\)。不能只要求每片 g 局部 exact；局部 primitives 的 boundary constants / periods 不匹配可能保留物理 harmonic label。

利用 §6.3 的有限-rank argument，polynomial kernel 恰好是由 (6.14) 的线性 generators 生成的理想，没有隐藏的高次 relation。\(\Theta_{\rm cut}\) 的计算给 bracket 正好 (6.7)。于是得到
\[
 \boxed{\mathcal A^{\rm cl}_{\Gamma}/I_{\mathcal N_\Gamma}
      \simeq\mathcal A^{\rm cl}_{\rm Maxwell,smooth}.}
\tag{6.15}
\]

在独立 source label space 上先用 (6.7) 定义 CCR，不用旧 closed propagators 定义新乘法。加入 null relations \(\Phi(n)=0\)；或在 Weyl 版本加入 \(\mathcal W(n)=1\)。由于 null labels 与全部 labels 的 \(\sigma\) 配对为零，这些商一致。线性 bijection、(6.7) 和 CCR 的 PBW/universal Weyl relations 给
\[
 \boxed{\mathcal A^{\rm CCR}_{\Gamma}/\langle\Phi(n)\rangle
  \simeq \mathcal A^{\rm CCR}_{\rm out},\quad
  \mathcal W_\Gamma/\langle\mathcal W(n)-1\rangle\simeq\mathcal W_{\rm out}.}
\tag{6.16}
\]
这里量子 kernel 是指定线性 null ideal；并非把全部 flux constraints 在旧 unconstrained CCR 中作危险的两侧理想商。

固定非零相容 source tuple 时，解空间为 affine。选一份 particular solution，线性观测量变为 \(\Phi_{\rm hom}(F)+F(\phi_{\rm part})1\)，Weyl generator 乘相应 c-number phase。换 particular solution 只作一个明确的 affine translation。完整 sourced assembly 同时匹配 fluctuation bracket 和这些 c-numbers，故不是仅比较零源 CCR；但并不从中挑出一个 canonical vacuum。

(6.13) 还明确显示 smooth global observable 的区域来源要包括 boundary response labels。某个 \(f_i\) 在人工 wall 上不满足旧 autonomous Hamiltonian domain 时，它不是旧 \(\mathcal A_{B_i}\) 内的一个生成元；它属于该 region 已声明的 reopening/test 数据。本文不隐瞒这种 enrichment。

## 6.7 完整 timelike source problem 的构造，非仅 interior Ward identity

为计算 response，可用 Lorenz gauge。令 \(L=\partial_t^2-\partial_x^2-\Delta_\perp\)，每个分量满足 \(La_\mu=f_\mu\)。要求
\[
 -\partial_tf_t+\partial_xf_x+\partial_yf_y+\partial_zf_z=0.
\]
在每壁给 tangential histories \(b_t,b_y,b_z\)，并取
\[
 a_{t,y,z}=b_{t,y,z},\qquad
 \partial_xa_x=\partial_tb_t-\partial_yb_y-\partial_zb_z.
\tag{6.17}
\]
此处两壁均写坐标导数 \(\partial_x\)，不是同号 outward derivative。Lorenz constraint \(C=-\partial_ta_t+\nabla\cdot a\) 因而在壁上为零；\(LC=0\)，加上 cap 的 \(C=\dot C=0\)，Dirichlet wave 唯一性给 \(C=0\)。\(\dot C=0\) 包含相应 Gauss/source compatibility。全部 data 同属 joint domain，不能独立乱选四个 scalar 初值。

**源域明确化。** 对 scalar \(Lu=f\)，记 wall 的 normal jets \(c_r=\partial_x^r u|_B\)，必须有
\[
 c_{r+2}=(\partial_t^2-\Delta_\perp)c_r-\partial_x^rf|_B.
\tag{6.18}
\]
Dirichlet 指定 \(c_0=b\)，Neumann 指定 \(c_1=b\)；其余 jets 用 recurrence 和未指定的另一列种子给出。cap 初值的 jets 与这些 relations 及它们的时间导数相容，是 \(\mathcal D_{\rm adm}\) 的定义。

**存在性的直接 reduction。** 在每壁构造 smooth lift \(w\)，其全部 normal jets 为上述 \(c_r\)，并在另一壁用不相交 collars 构造另一个 lift。这样的 smooth jet extension 可用 \(\sum_r c_r(t,y,z)x^r\chi(x/\varepsilon_r)/r!\) 构造：逐步把 \(\varepsilon_r\) 取得足够小，使每个固定阶导数的尾和收敛；不要求 Taylor series analytic。然后 \(f-Lw\) 在壁上所有 normal jets 为零，属于 homogeneous spectral smooth domain；\(u_0-w_0,\dot u_0-\dot w_0\) 的 D/N parity jets 因 cap compatibility 满足 homogeneous domain。对 \(u-w\) 使用 §6.2 的 Fourier/Duhamel construction。能量给唯一性。这里的 infinite-jet extension 仅用于给每份 smooth tuple 证明存在，不把它误称为在任意 jet-product topology 上连续的 canonical linear lift。

连续依赖可逐个 finite regularity 检查：欲控制 m 阶输出，选一个足够大的整数 s，使 spectral Sobolev bound 控制这些 derivatives；只延拓 (6.18) 的前 2s+2 个 jets，用固定 collar cutoff 的有限多项式。余下 forcing、cap data 满足所需有限阶 D/N parity conditions，(6.4) 的能量与 spectral bounds 给
\[
 \sup_{t_0\le t\le T}\|u(t)\|_{C^m}\le C_{m,T}
 (\|u_0\|_{C^{M(m)}}+\|u_1\|_{C^{M(m)}}+\|f\|_{C^{M(m)}}+\|b\|_{C^{M(m)}})
\]
对某个有限 M(m) 成立（本篇不追求 sharp derivative count）。右边的时空 norms 在同一个有限 cylinder 上取；每个 normal jet 由有限次原始数据求导产生，固定 cutoff 不依赖横向频率。这证明 joint smooth data topology 中的 continuous dependence，而非把逐模 existence 当成统一估计。

将此分别用于 (6.17) 的 D/D/D/N 分量，配合 C 的传播，得到在本几何和明确 joint smooth domain 上的真实物理源问题。这超过 compact-interior Green identity；却**不声称**已构造一个全 off-shell boundary-source BRST complex。

在 seam 先用 collar gauge 匹配 \(a_x\)，再用 tangential matching 和 conormal balance；结合 C=0 得全部分量的 normal matching。附加已声明的 joint jets 后，所有 scalar sourced fields 光滑组装。反向 restriction 给每片合法的 (6.17)，而不是其旧 homogeneous B。

## 6.8 response、Peierls、fresh opening 与三块一致性

对每个 mode，action Hessian 是 \(J=-e^{-2}(\partial_t^2+\omega^2)\)。其 retarded minus advanced inverse 给
\[
 \Delta(t,t')=e^2\frac{\sin\omega(t'-t)}\omega,
\]
零频取 \(e^2(t'-t)\)。这恰好是由 (6.2) 计算的 \(\{q(t),q(t')\}\)。故本域的 physical Peierls bracket 与 (6.7) 一致，不需要用 ghost positivity 替代 physical reduction。对 equal-time 标签及其时间导数，合法性由 smooth spatial coefficients 的快速衰减与该公式的频率多项式界直接保证；这里不把任何任意分布标签都宣称为可配对。

带源方程的 piecewise assembly 和独立 uncut problem 有同一完整 tuple；§6.7 的唯一性给全部 source responses 相同。对任意二元分组重复该论证。中间区域仍是 relative slab，故属于同一对象类；下一次 opening 由其自己的 (6.17)–(6.18) 重新构造。三块均给相同 assembled f,g、同一 global proper class、同一 response。

直观的 harmonic 子验收：设小段长度 \(\ell_i\)，先在 \(h=1\) gauge，
\[
 Q=\sum_iQ_i,\quad P_i=P,\qquad
 \sum_i\delta P_i\wedge\delta Q_i=\delta P\wedge\delta Q,
 \quad\sum_iH_i=\frac{e^2\sum_i\ell_i}{2\mathcal V}P^2.
\tag{6.19}
\]
一般 seam frame 下必须写
\[
 Q_{\rm cut}=\sum_iQ_i+\frac1{\mathcal V}\sum_i\int_{\Gamma_i}\lambda_i.
\tag{6.20}
\]
这正是 (6.13)；漏掉它会破坏 independent regional gauge invariance。

在 \(N\) 段 harmonic phase space，适配坐标 \(Q=\sum Q_i,r_j=Q_{j+1},P=P_1,\pi_j=P_{j+1}-P_1\) 给
\[
 \sum_iP_i\delta Q_i=P\delta Q+\sum_j\pi_j\delta r_j.
\]
因此 invariant polynomial/finite differential algebra 的 kernel 为正 \(\pi\)-degree，section 为只用 Q,P。对实线 harmonic cover，不声称 \(L^2(\mathbb R)\to L^2(\mathbb R^N)\) 的 constant-in-r map 是 normalized isometry；gauge volume 无限。compact rotor 版本才有 normalized Haar isometry。

## 6.9 实施完整 compact U(1) 而不再丢失 Q

在 compact 描述中先选择一个等价的 liftable-seam presentation：允许的输出 relative bundle 已固定为平凡，故存在与外部 framing 相容的 global trivialization；用它可把 seam maps 置为 1。presentation 内的 gauge arrows 保持 liftable transitions，非 liftable 过渡图可先变换入该 presentation；不把任意 topology 的 h 擅自写成单值实 λ。不同 λ lifts 相差 2π 整数，下面的 integer-character 条件使指数探针不依赖 lift。

本固定相对 sector 中，based large gauge 只把 harmonic \(Q\) 平移 \(2\pi n\)，nonzero transverse modes 保留。phase space 的 harmonic factor 变成 \(T^*S^1\)，使用 (3.6) rotor；radiation 仍用其独立 CCR/Weyl algebra。本段的具体 Haar realization 固定 trivial large-gauge character ϑ=0，Weyl 版本相应固定 \(V(2\pi)=1\)。不固定该中心关系的 universal group-Weyl algebra 包含不同 ϑ sectors，不能与此一份 Hilbert realization 混同。

对于 \(e^{iF_{f,g}}\)，large-gauge invariance 要求跨每个截面的 \(\int_{T^2}f_x\) 是整数；散度为零使该数与 x 无关。零 harmonic coefficient 的 radiative smearings 不受此离散条件限制。由此得到明确的 Abelian-group label 版本，而不是在全线性 CCR 中强行令 Q 周期化。

(6.13) 的指数把区域 transports 与 \(e^{i\lambda}\) 接合；同一个整数 character 在所有分段都合法。harmonic Hilbert sewing 用
\[
 (V\psi)(Q_1,\ldots,Q_N)=\psi(Q_1+\cdots+Q_N)
\]
及 normalized circle measures，image 为相邻 flux 相等的 subspace。\(V\) intertwines U、P 和 (6.19) 的 Hamiltonian。

**范围总结。** 本篇严格证明固定 flat slab class 的 smooth linear/rotor-plus-radiation algebra composition，含所有 modes、actual lifts、完整 kernel、Poisson/CCR 和 fresh opening。没有证明任意 moving/null cuts、任意 nontrivial magnetic sector、任意 thin Wilson product、局域 Wick stress 的所有 boundary contacts；这些在第 10 篇保留为不同验收项，不能冒充已经完成。


---

<!-- source: notes/07_CS_currents_Wilson_and_channels.md -->

# 07｜Chern–Simons：current、bulk extendibility、Wilson 与 channel maps

**必须区分三个 quantum targets：带物理 timelike wall 的 current algebra、闭曲面的有限 Wilson algebra、有 punctures 的 charged-channel operator algebra。它们可由同一 CS action 引导，却不是不经选择就相同的代数。** 本篇给第一者的一个完整线性 sewing，第二者的独立精确 presentation，第三者的指定 unitary realization 与实际非对角 operators。后两者的 topological quantization 是额外输入，不冒充从任意 Lorentzian wall PDE 推导而来。[R9,R10,U2,U3]

区域 disk 对象保留全部 flat bulk fields 及内部 proper directions；boundary currents、下文 reduced action 和 channel operators 是派生描述。[修订证明 R4.5](../audit_repair_2026-09-18/repair_proofs.md) 用全部 smooth bulk extensions 实现 current 解，不在区域构造或 sewing 时把这些 extensions quotient 掉。

本篇 quantum CS 的公式取 ℏ=1；k 是所采用 realization 的 integer level。

## 7.1 一个真正独立的 source-free disk 理论

取 compact U(1)，无 puncture、无 Wilson source，空间为 smooth disk D；选**可延拓到 disk 的外边界 framing**与其 relative zero sector。用实连接 a，
\[
 S_{\rm bulk}=\frac{k}{4\pi}\int_{\mathbb R\times D}a\wedge da.
\]
下面 classical current calculation 只需 k 非零；quantum compact examples 固定正偶数 k，避免隐含 spin choice。允许 odd k 时必须另给 spin theory 数据，不能只改一个整数。[R17]

选正向 boundary coordinate s、时空 orientation \(dt\wedge dx\wedge dy\)。用普通 \(dt\,ds\) 而非 induced timelike orientation 写 closing/source term：
\[
 S_B[b]=\frac{k}{4\pi}\int dt\,ds\,
 (a_ta_s-v a_s^2-2b a_s),\qquad v>0.
\tag{7.1}
\]
其总变分在 wall 上为
\[
 \delta(S_{\rm bulk}+S_B)|_B
 =\frac{k}{2\pi}\int [(a_t-v a_s-b)\delta a_s-a_s\delta b].
\]
因此独立理论的边界条件是 \(a_t-v a_s=b\)，固定 b 时变分良定义；b=0 为初始 closure。这里的 v 是真实 wall dynamics 的参数。用人工 wall 拼接时，只有该人工面上的 closing action 被撤去；真正外壁的 v 不消失。

由 bulk flatness，\(a|_D=d\phi\)。在上述 extendible framing 内，\(\phi\) 是 single-valued smooth scalar，常数不给不同连接。故
\[
 j=\partial_s\phi,\qquad \oint j\,ds=0,
 \quad \phi\in C^\infty(S^1)/\mathbb R.
\tag{7.2}
\]
这不是任意 boundary PDE 的解空间。\(j=c\ne0\) 虽满足 homogeneous transport equation，却不能成为当前 sector 的 bulk trace。Annulus、punctures、Wilson charges，或者故意选不可延拓的 boundary framing，会改变这个结论的前提，必须另开 sector；不能把它们偷放进 (7.2)。

reduced action、symplectic form 与 Hamiltonian 为
\[
 S_{\rm edge}=\frac{k}{4\pi}\int[\phi'\dot\phi-v(\phi')^2-2b\phi'],
 \quad \Omega=\frac{k}{4\pi}\oint\delta\phi'\wedge\delta\phi,
 \quad H_b=\frac{kv}{4\pi}\oint j^2+\frac{k}{2\pi}\oint bj.
\tag{7.3}
\]
本包的 \(\iota_{X_F}\Omega=-\delta F\) convention 给
\[
 J[f]=\frac{k}{2\pi}\oint f j,
 \quad X_{J[f]}\phi=f\pmod{\mathbb R},
 \quad \{J[f],J[g]\}=\frac{k}{2\pi}\oint f g'.
\tag{7.4}
\]
常数 f 正好是全部 linear kernel。非退化性来自：若 \(\oint fg'=0\) 对所有 smooth periodic g，便有 f'=0。

## 7.2 源域、全部 modes 与可再开放性

源问题是
\[
 (\partial_t-v\partial_s)j=\partial_s b,
\quad j(t_0)=j_0,\quad\oint j_0=0.
\]
对完整 smooth periodic data，唯一解为
\[
 j(t,s)=j_0(s+v(t-t_0))+
 \int_{t_0}^t\partial_s b(u,s+v(t-u))du.
\tag{7.5}
\]
所有 derivatives 的估计直接由平移与积分给出；没有高频增长难题。平均值保持零。给定 j，用 boundary primitive 再作 smooth disk extension，可构造 flat bulk connection；不同 extensions 由实际 bulk proper maps 联系，全部保留在完整场对象中。current observables 不依赖这种 choice。marked corners 的 boundary values/derivatives 必须与同一 periodic smooth function 相容。

这是一份每个 disk 都能独立运行的 timelike source rule。人工 chord 两侧先各自有完整 closed boundary circles 与自己的 (7.1)；opening 时撤去两侧 chord 的 closure，允许该面的完整 trace/transition relation，而非要求旧 chiral homogeneous solutions 已经透明匹配。输出仍以其整个真实 outer circle 的 (7.1)、(7.5) 闭合，故可再次 opening。

## 7.3 两个 disks 沿 open chord：actual current lifts 与完整 kernel

只取使输出仍为同一 relative zero-sector disk 的 chord gluing。固定 compatible outer framings；seam transition \(h=e^{i\lambda}\) 的 real lift 在 corners 与外部 framing 相容且无 relative winding。采用全部 collar jets 匹配。若换成有 winding 的 sector，下面的 gauge extension 步骤需另行审查，不能照搬。

记 C 的方向为 \(\partial D_1\) 的 seam 方向。matching 为
\[
 a_2=a_1+d\lambda,\qquad
 \lambda\mapsto\lambda+\epsilon_2-\epsilon_1.
\]
proper \(\epsilon_i\) 在真正外弧为零。可把相容的 \(-\lambda\) 延拓入一侧 disk 且在外弧为零，将 \(\lambda=0\)；再调整不影响 a 的 scalar constants，使 \(\phi_1,\phi_2\) 在 chord 相同。于是 smooth flat bulk fields 组装为一个 disk field。反向限制提供 inverse，不同 extensions 仅差 proper gauge。

在任意 seam frame 下不能直接把旧 \(\Omega_1+\Omega_2\) 作商。选 scalar constants 使 \(\phi_2=\phi_1+\lambda\) 在 C 上成立，令
\[
 \Theta_i=\frac{k}{4\pi}\oint_{\partial D_i}\phi_i'\,\delta\phi_i,
 \quad \Theta_\Gamma=\frac{k}{4\pi}\int_C
 (\phi_1'\delta\lambda+\lambda'\delta\phi_1+\lambda'\delta\lambda).
\tag{7.3a}
\]
\(\Theta_\Gamma\) 恰好是把第二侧 potential 运输到同一 seam frame 产生的差：
\(\phi_2'\delta\phi_2-\phi_1'\delta\phi_1\)。所以
\[
 \Theta_{\rm sew}=\Theta_1+\Theta_2+\Theta_\Gamma
 =\frac{k}{4\pi}\oint_{\partial D_{\rm out}}\phi'\delta\phi.
\]
内部 proper gauge 在右侧恒等，故 \(\delta\Theta_{\rm sew}\) 确实下降；在 \(\lambda=0,\delta\lambda=0\) gauge 上 correction 消失，旧 seam terms 因取向相反抵消。该恒等式也证明没有凭空生成新的 circle zero mode。corner 的 \(\lambda=0\) 和 compatible jets 是这里采用的 sector 条件；换 sector 时不能忽略额外 endpoint terms。

**独立 source tests。** 在 cut boundary network 上给 smooth real test functions \(\hat f_i\)，两侧 chord 上等于同一 \(f_C\)，在 corners 有共同值及可由 smooth collar extension 产生的 jets。该条件只依赖 network geometry。定义
\[
 \widetilde J[\hat f_1,\hat f_2]
 =J_1[\hat f_1]+J_2[\hat f_2]
 +\frac{k}{2\pi}\int_C f_C\,d\lambda.
\tag{7.6}
\]
因为 \(a_2-a_1=d\lambda\)，两份 chord terms 与最后一项抵消；剩下的是 outer current smear。式 (7.6) 也在 independent regional gauge 下不变。对任意 target f，先从外圈将 f smooth 延拓到 cut network，就得到显式 preimage。

**全部 linear kernel：** source tests 的 outer restriction 是常数，当且仅当 (7.6) 在所有允许 fields 上为零。证明是把它化到 (7.4)，再用 arbitrary zero-mean j；任意 purely internal test extension 的选择差也在此 kernel 内。finite polynomial algebra 的完整 kernel 由这些 linear null labels 生成，理由与 §6.3 的有限组独立线性坐标相同。

在匹配后 symplectic space 上 (7.4) 给 bracket；由此定义源 CCR/Weyl algebra 后，null ideal 商与输出 current CCR/Weyl algebra 同构。这个 assertion 是 **regular smooth current algebra** 的完整 classical/quantum comparison。选择某个 positive-energy Hilbert representation、vacuum state 或充电 vertex operators，是后续且不同的扩张；此处没有把它们自动装入 CCR。

多条 compatible chords：共同 gauge 后所有内部弧的 \(\Omega\) 与 (7.6) seam terms 成对取消，只留下同一 outer data。任意分组再 opening 使用 (7.5) 的同一个独立输出源问题；故在此 disk 类中 three-cell coherence 成立。

## 7.4 corner cocycle 不能用尖锐弧 cutoff 糊过去

closed circle 上 \(\int f g'\) 反对称；单独开弧 I 上却有
\[
 \int_I fg'+\int_I gf'=[fg]_{\partial I}.
\tag{7.7}
\]
因此直接把 closed-current bracket 限制到任意 endpoints 非零的 sharp arc tests，甚至会破坏 antisymmetry。合法选择是在旧独立 theory 使用 smooth full-circle tests，或者显式给 endpoint degrees/constraints 及 corner correction；(7.6) 用的是前者加 matching transition。

两侧 opposite orientations 且同 level k 的 seam anomaly 取消。如果 levels 为 \(k_1,k_2\)，剩余 coefficient 为 \(k_1-k_2\)；一般不再能把 diagonal seam symmetry 当无 anomaly 的 proper gauge。必须给 interface dynamics/anomaly inflow，或承认该透明 sewing 不存在。这个 failure 不是“多加一个 edge mode 总能解决”。

## 7.5 闭 torus：独立的有限 Wilson algebra 与完整 presentation

在 U(1) CS 的 flat torus zero-mode phase space，取 cycles x,y、angles \(Q_x,Q_y\) 周期 \(2\pi\)。本篇 orientation 给
\[
 \Omega=\frac{k}{2\pi}\delta Q_y\wedge\delta Q_x,
 \qquad \{Q_x,Q_y\}=\frac{2\pi}{k}.
\]
采用 level-k topological quantization 与 trivial central characters。令 \(q=e^{2\pi i/k}\)，指定 generators 满足
\[
 X^k=Y^k=1,\quad X^*=X^{-1},\quad Y^*=Y^{-1},
 \quad XY=q^{-1}YX.
\tag{7.8}
\]
在独立 \(\mathcal H_{T^2}=\mathbb C^k\) 上取
\[
 X|r\rangle=q^r|r\rangle,\qquad Y|r\rangle=|r-1\rangle,
 \quad r\in\mathbb Z/k\mathbb Z.
\tag{7.9}
\]
全部 words 归约到 \(X^mY^n\), \(0\le m,n<k\)。这些 k² 个矩阵在 trace inner product 下正交，故 image 为 \(M_k(\mathbb C)\)，kernel **恰好**由 (7.8) 的 relations 生成。

以整数而非模 k 的 Weyl labels 写
\[
 W_{m,n}=e^{\pi i mn/k}X^mY^n,
\quad W_{m,n}W_{m',n'}=
 e^{-\pi i(mn'-nm')/k}W_{m+m',n+n'}.
\tag{7.10}
\]
注意 \(W_{m+k,n}=(-1)^nW_{m,n}\)：不能同时无条件宣布所有 Weyl labels 按 k 严格周期。

切开 torus 的 handle，在选定 topological quantization 中 charge channel r 的 handle state 给 (7.9) 的 \(|r\rangle\)；纵向 Wilson 测量 r，横向 crossing Wilson 移动 r。只保存逐 r 的 scalar blocks 会漏掉 Y。这里给出了该 topological realization 的 generators、relations 与实际 operators；**没有证明任意 Lorentzian disk current representations 经某个未指定 contraction 就必然产生 (7.9)**。若以它为目标，handle-channel realization 和 framing 必须作为 quantum prescription 明列。

## 7.6 SU(2)₂：实际 channels、非对角 Wilson 与固定 cups

采用 unitary SU(2) level-2 CS/WZW realization；simple labels 为 \(0,\sigma,\psi\)，
\[
 \sigma\otimes\sigma=0\oplus\psi,\quad d=(1,\sqrt2,1),
 \quad \theta=(1,e^{3\pi i/8},-1).
\]
该 realization 的存在及 charge fusion 是采用的标准输入 [R10]，而不是由本包的新边界 PDE 定理证明。固定 oriented cup/cap、unit maps 和 ribbon framing。

四个 \(\sigma\) 总 charge 0 的 target space 为二维。\(s_0,s_\psi\) 是两对 punctures 通过实际 normalized trivalent maps 产生的 orthonormal channel vectors；\(t_0,t_\psi\) 使用另一条切法。cup vacuum channel 的 pseudo-real sign 由
\[
 \nu_\sigma=\frac1{4}\sum_{a,b}N_{ab}^{\sigma}d_ad_b
       (\theta_a/\theta_b)^2=-1
\tag{7.11}
\]
确定 [R11]。用同一 cups，vacuum overlap 为 \(F_{00}=\nu_\sigma/d_\sigma\)。将非真空 channel phases 选为正 off-diagonal overlaps，则
\[
 F=\frac1{\sqrt2}\begin{pmatrix}-1&1\\1&1\end{pmatrix},
 \quad R=\operatorname{diag}(-e^{-3\pi i/8},e^{\pi i/8}).
\tag{7.12}
\]
\(F^*=F=F^{-1}\)。unitarity 与 \(R^2=\theta_{\rm channel}/\theta_\sigma^2\) 都成立；\(B_1=R,B_2=FRF\) 满足 braid relation。还须保留 \(\sqrt2F_{00}=-1\) 这项 cup-sensitive 检验。\(F\mapsto-F\) 不影响 FRF，说明 braid test 单独看不到全部 duality 信息。[U2]

围住不同 puncture pairs 的 \(\sigma\)-Wilson operators 是
\[
 A=W_{12}=\sqrt2\begin{pmatrix}1&0\\0&-1\end{pmatrix},
 \quad B=W_{23}=FAF=-\sqrt2\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\tag{7.13}
\]
实际 operator source 可用自由 \(*\)-algebra \(\mathbb C\langle A,B\rangle\) 给出，sewing 的 Wilson presentation map 发到 (7.13)。其**完整 kernel**由
\[
 A^*=A,\quad B^*=B,\quad A^2=B^2=2,\quad AB+BA=0
\tag{7.14}
\]
生成：每个 word 可化为 \(1,A,B,AB\)，四个 image matrices 独立。因此 output 是 \(M_2(\mathbb C)\)，不是 \(\mathbb C\oplus\mathbb C\)。所需 source preimages 分别是切开 closed loop 得到的 anchored line segments，经 trivalent channel maps/cups 接合；另一切法的 segment endpoints 必须用同一 F 运输，不能丢掉 B。

(7.14) 是这个**四 puncture Wilson algebra**的完整 presentation，不是整个 CS field algebra 的 kernel，也不是单靠 \(N_{ab}^c\) 推出的 continuum edge contraction。

## 7.7 不把真正的 quantum edge contraction 降格为维数匹配

在采用的 positive-energy loop-group representation 中，可用 localized bounded charged operators x,y 构造 cut states。其具体 source 不是普通 \(H_1\otimes H_2\)，而是 finite sums \(z=\sum_i x_i\otimes y_i\) 带上可测量的 Gram pairing
\[
 G(z,z')=\sum_{i,j}\langle y_i\Omega,
       \pi_\sigma(x_i^*x'_j)y'_j\Omega\rangle.
\tag{7.15}
\]
采用该 representation 的 transport identity
\[
 \pi_\sigma(x^*x')=\sum_{a=0,\psi}\lambda_a x_a^*x'_a,
 \quad\lambda_a>0,
\]
实际 channel maps 是
\[
 C_a z=\sum_i\sqrt{\lambda_a}\,(x_i)_a y_i\Omega,
 \quad \|Cz\|^2=G(z,z).
\tag{7.16}
\]
所以 \(\ker C\) 恰好是 Gram radical，而非先猜一个 fusion multiplicity 后任意丢掉 states。完成 source 去 radical 后得到 isometry。若每个目标 irreducible channel 的像非零且 range 对相关 observable action reducing，则其闭 range 包含整个 channel；这给 onto。**这些 boundedness、transport identity、irreducibility 条件属于被采用的具体 realization，本文不声称重新证明其分析定理。** [R10,U2]

(7.15)–(7.16) 是额外结构为何必要的物理解释：seam 两边存在有电荷的 operators，共同 current action 决定它们怎样内积与收缩。读者不必先学习一般 von Neumann bimodule theory 才能理解这个 source、kernel 与 map；需要推广到任意 nets 时再学习其 completion。

**本篇完成度：** disk 的 regular current sewing 为 E；torus 与四 puncture Wilson presentations 为 E，指定 topological/charged realization 为 I；一般 Lorentzian CS wall 与所有这些 quantum realizations 的统一 equivalence 仍需另证。三个层次不混算。


---

<!-- source: notes/08_multiple_sewing_topology_and_homotopies.md -->

# 08｜多次粘合：哪些额外数据真的必要

“需要 homotopy data”不是允许无限追加抽象的许可证。本篇把可能的差异拆成可计算的问题。普通 principal G-bundle 用 transition maps、它们的 compatibility、以及 gauge automorphisms 足以陈述 classical descent；只有某个实际 comparison 不能严格相等时，才记录控制那个差异的进一步数据。[R9,R15]

## 8.1 先保留 objects、arrows、stabilizers，而非只留 orbit names

切分输入是 \((P_i,A_i,h_{ji})\)。isomorphism 是一族实际 bundle maps \(g_i\)，满足
\[
 A_i'=A_i^{g_i},\qquad h'_{ji}=g_jh_{ji}g_i^{-1}.
\tag{8.1}
\]
记住一份 field 有哪些 stabilizers，不等于给它增加新的 physical coordinates。这样做避免：两个已经取成 orbit 的片段可能有几种不等价的 seam identifications，而粗 orbit sets 无法再辨别它们。

一个最简单的例子是把 interval 的两个 endpoints 自粘为 circle。必须只取**一份** interval field，同时给两个 boundary occurrences 和一个 identification；若复制成两份 interval phase space 再 quotient，就改变了问题。circle Wilson 是原 interval transport 与这个 identification 的组合。

在 triple overlap 上，按第 01 篇的方向约定要求
\[
 h_{13}h_{32}h_{21}=1.
\tag{8.2}
\]
这个 cocycle 是同一 fibre 的三个坐标转换的一致性，不是要求任意 spatial closed-loop holonomy 等于 1。curvature、非可缩 loops 的 holonomy，以及 defects 的 monodromy 仍可非平凡。

## 8.2 两种 binary order 为什么可相同，何时不该相同

固定同一 geometric quotient、同一 allowed bundle sectors、同一 external boundary data、同一 collar identifications 与 defects。先在所有片上写一次全体 matching equations，再按不同顺序消去内部变量。若每一步都保留同一 solution/gauge data，(8.1)–(8.2) 保证最终 fields 与 bundle maps 相同；第 04 篇的 comparison 给同一 CPS/algebra map。

这不是说“所有切法都给 identity”。把一条 Wilson line 绕过另一条、对 boundary 做 Dehn twist、改变 knot framing 或让一条 path 穿过 defect，通常改变了几何操作本身。其 braid、mapping-class 或 framing operator 应当保留，而不是被作为不结合误差删除。

因此每个三块检验都应明确：比较的是**同一 gluing 的 regrouping**，还是两个不同 isotopy classes 的 gluing。YM2 中矩阵乘法结合检验前者；CS 中 braid operator 往往表示后者。

## 8.3 几个会强迫增加数据的具体失败

**bundle topology。** 第 01 篇的两个局部平凡 bundle 名称不能决定 monopole n；但若保留 $S^2$ 上的完整曲率与取向，则 $n=(2\pi)^{-1}\int_{S^2}F$ 已可重建。同曲率的差连接在普通 unanchored $S^2$ 上为 exact；这不恢复唯一 raw representative，更不授权丢掉本稿的 gauge directions。真正同剩余局部数据的见证是：同一 interval 的 $a=0$ self-sew，identification $h=1,-1$ 给不同 circle Wilson。仅当其余数据尚未固定该 identification 时，它才证明信息不可删。完整 $h$ 已给时，cocycle、sector 归属和 winding 是需计算的检查，不是额外自由参数。proper 箭头另须执行第 04 篇的 global branch 检查。

**reference frames 与 flux。** Maxwell 的 \(\int E_n\delta\lambda\) 和 \(\int\lambda f_n\) 分别由 symplectic descent 与 gauge invariance 强迫出现。它们不是为了美观加的新的 phase-space factor。删掉它们即可用 independent regional gauge variation 得到反例。

**charged channel transport。** 三个边界 charge 的两种 grouping 给不同 intermediate bases。需要实际 unitary matrix F 连接，并运输全部 operators。只列 \(N_{ab}^{c}\) 不足；第 07 篇的 B 是必要的 off-diagonal witness。

**residual symmetry。** reducible field 的 stabilizer 影响 constraint rank 与 measure。在不同 strata 间强行套用单一 regular symplectic quotient，可能丢掉 center、产生多余零模或错数 state multiplicities。可以分 strata 给结果，不要求先发展一般 derived geometry；但必须把失去 regularity 的地方写出来。

## 8.4 F、pentagon 与 cups：最少应记录到哪里

对三个 charge 的两种 brackets，记实际 basis change
\[
 F_{abc}^{d}:\bigoplus_eV_{ab}^{e}\otimes V_{ec}^{d}
 \longrightarrow\bigoplus_fV_{bc}^{f}\otimes V_{af}^{d}.
\]
每个 \(V_{ab}^{c}\) 是有具体 trivalent maps 和 inner product 的有限维 channel space，不是一个整数。四个 charges 有五种 grouping，沿不同路径重关联所得 map 必须相同；这就是 pentagon。它只表示“同一个四段接合不依赖用哪串 F 改括号”。有 crossing lines 时再要求 F 与 R 的两条换路相容，即 hexagon。cups/caps 表示创建/消去共轭端点，其 normalization 还必须与 F,R 同时相容。

在 channel bases 重相位 \(v_{ab}^{c}\mapsto u_{ab}^{c}v_{ab}^{c}\) 下，F 的每个 entry 会乘上对应 input/output basis 因子；由这些 maps 定义的 Wilson、cups、evaluation 也须一起运输。不能只把一个四点 F 换成更好看的矩阵，同时说其它 maps 全部固定。

本包只对实际列出的 SU(2)₂ 四点 operators 作显式矩阵检验。**全部 higher-charge pentagon/hexagon/coherent channel maps 是所采用 unitary realization 的输入，不由那几个 2×2 tests 证明。** 要独立构造一套新的 realization，就应扩大 tests/解析证明覆盖每个实际使用的 admissible label tuple，而不是宣称 braid relation 已足够。

## 8.5 action、prequantum line 与 projective phases

在 CS 或带 topological terms 的模型，boundary 上的 exponentiated action 有时自然是某条一维 complex line 的向量，而非预先有公共相位的复数。两边 opposite orientations 对应互为 dual 的 lines，sewing 使用它们的 pairing。[R9]

不想先学 line bundles，可以这样理解：每个 boundary configuration 先有一个仅差整体相位的 amplitude slot；换 gauge/trivialization 会按已知相位转换。若不记录这个转换，不同 patch 的 amplitudes 不能比较。

令 group/gauge maps 在 quantum states 上满足
\[
 U(g)U(h)=\alpha(g,h)U(gh).
\]
算符乘法本来严格结合，因此
\[
 \alpha(g,h)\alpha(gh,k)=\alpha(h,k)\alpha(g,hk).
\tag{8.3}
\]
重新选择 phase \(U(g)\mapsto\beta(g)U(g)\) 改变 \(\alpha\) 为相应 coboundary。其不能被这种重相位消去的部分才是实际 projective obstruction。若 \(\alpha\) 是 scalar，\(\operatorname{Ad}_{U(g)}\) 在 observable algebra 上可能严格作用，但向量 lift、群实现和带插入振幅仍可记得 phase；代数态/密度矩阵不随整体向量相位改变。**所以“observable conjugation 没发现问题”不证明 quantum theory 全层次没有 anomaly。**

ordinary regrouping 若实际得到 phase，需要说明：是 choice artifact、framing/metaplectic correction，还是 uncancelled anomaly。后者可能阻止把 seam symmetry 当 proper gauge；不能用“homotopy coherence”一词把不一致掩盖成成功。

## 8.6 BRST homotopies 是另一个层次，不要混同 geometric isotopy

用 s 表示 gauge differential，\(s^2=0\)。若两份 chain maps 对物理 classes 应相同，能构造
\[
 R'-R=sH+Hs
\tag{8.4}
\]
就保证它们在 cohomology 上相同。H 是具体把差异写为 gauge-exact 的 correction map；在多次接合中若这些 H 的组合还有非平凡差异，才需要更高 correction。

这是一个实用充分条件，不是要求每个模型都先提交无限塔。若目标仅是 degree-zero observable algebra 的同构，可以直接在 \(H^0\) 上构造 inverse，并不必须先证明整个复形的 chain-homotopy equivalence。例如零微分复形 \(C^0=D^0=\mathbb R,C^1=\mathbb R,D^1=0\) 的投影在 H⁰ 上同构，但 H¹ 不同。

本文 YM2、linear Maxwell 和 U(1) disk 使用完整未约化 fields、实际规范作用及其 invariant observable presentation，已足以作所声明比较；第 05–07 篇的 reduced 坐标只作派生验收，不为这些证明再增加 BRST。non-Abelian interacting/renormalized theory 确实需要 s 与 Ward data 时，再把它加入，并在 source/boundary/corner domains 上实际检查 (8.4)。

## 8.7 最小记录表，不是一个普遍最高结构

每个模型至少记录：seam maps 及 allowed components；triple compatibility；outer-frame identifications；哪些 regroupings 与哪些 physical moves 被比较；quantum realization 的 cup/F/R/phase conventions；若使用 gauge fixing/BRST，记录比较 maps 及实际所需的 corrections。

只对已出现的 obstruction 增加下一项。例如只有 Abelian interval chain 且无 large sectors，不需要一般 modular category；但含 SU(2) charged punctures 的相应目标必须能恢复实际 F/cups。若它们已由完整 quantum realization 确定，则可删独立缓存；只翻转 F 而固定杯帽，不是第二份满足完整条件的合法实例。对 topology-changing/self-gluing，不能只保留 tree-shaped cuts 的证明。

**“最小性”的可证形式**是删除数据后出现一对输入，它们在剩余数据下完全一样，却有不同的目标 Wilson/flux、bracket、operator 或 phase。第 10 篇列出这样的 witnesses。本文给必要性实例，不宣称已对全部 principal-bundle gauge theories 求得唯一最小 package。


---

<!-- source: notes/09_interactions_null_quantization_and_states.md -->

# 09｜传播 YM、null cuts、量子重整化与 states：不能被通用符号遮住的工作

前面精确模型决定 formalism 至少要携带什么；本篇则测试它是否会对更广的目标撒谎。目标仍包括 non-Abelian propagation、anchored Wilson、physical boundary/corner operators，不因某项难以构造就把它从 ontology 删除。但“在定义中保留该目标”不等于已经构造它的 algebra。

## 9.1 non-Abelian theory 的边界条件先过两关

对一般 smooth background connection \(\bar A\)，变分原理选择的条件，还必须使 gauge-fixed linearized operator 有足够好的 causal source problem，且 constraints 能传播。第一关是 action/symplectic flux，第二关是 equation/domain；两者不能互相代替。

例如 \(\delta A_\parallel=0\) 可以令 YM 的 wall variation 消失，却未单独决定 normal component、ghost、initial Gauss、corner jets。若另加全部 \(A_n=0\) 以求“保险”，可能过约束；若根本不给 constraint-preserving completion，又可能不唯一。真正的 model entry 要明确一份完整的 B 与可变 source relation。

第 06 篇在 Abelian flat slab 已实际做完这一点。它不是一般 background 非阿贝尔 theorem。CS 的 first-order/chiral problem 也不能照搬 Maxwell 的 D/D/D/N prescription。含 fermions 的 first-order equations 更不能任意把全部 boundary spinor components 置零，而必须选与其 boundary flux 相容的 admissible subspace。

## 9.2 一个可以实际构造的扩大：formal classical YM response

在第 06 篇同一 flat slab 上，取 trivial bundle sector、background 0、Lie algebra 的 invariant pairing。引入 amplitude parameter ε，求
\[
 A=\sum_{n\ge1}\varepsilon^n A^{(n)}.
\]
这是 coefficientwise formal series，不把 convergence 当已证。取 Lorenz function \(C=\partial^\mu A_\mu\)，gauge-fixed equations 为
\[
 D^\mu F_{\mu\nu}+D_\nu C=0.
\tag{9.1}
\]
展开后 principal part 是普通 wave，其余是 A 与一阶导数的 quadratic/cubic expressions。

在 order n，\(A^{(n)}\) 满足第 06 篇的四分量 linear sourced problem；右边仅由低阶 \(A^{(r)},r<n\) 构造。物理 wall \(A_\parallel=b\) 逐阶施加，normal completion 仍由 \(C|_B=0\) 给出。**输入是 formal initial/boundary data，其每阶满足 nonlinear Gauss 展开及全部 cap–wall compatibility；不是任选四份初值。**

Noether identity \(D^\nu D^\mu F_{\mu\nu}=0\) 与 (9.1) 给
\[
 D^\nu D_\nu C=0.
\tag{9.2}
\]
若低阶 C 已为零，order n 的 C 满足 homogeneous scalar wave、zero Dirichlet wall、zero compatible initial data，因此也为零。于是归纳得到每阶真实 YM equations，而非仅 gauge-fixed equations。

每阶 forcing smooth，第 06 篇的完整 source lift、spectral construction 与 uniqueness 给 coefficientwise solution。每个固定 order、固定有限时间窗的 construction 都存在；不要求不同 n 的估计可求和。nonlinear products 会产生非零高阶 normal jets，**不能坚持所有高阶 coefficients 仍有自由理论的 odd/even reflection parity**；必须使用 §6.7 的 inhomogeneous joint jet prescription。这是反查后保留的重要修订。

对于 compatible cuts，piecewise equations 与 matching jets 在每阶组装成同一个 linear sourced problem；uniqueness 归纳给 formal classical response 的 grouping independence。这个结果在声明的 formal data class 中是构造性的，不只说“假设所有 Green functions 存在”。

它还没有提供完整 nonlinear observable presentation 的 kernel，也不证明 series 收敛、任意大数据全局存在、任意 moving/null wall、quantum renormalization。若加 external adjoint current J，必须联合满足 \(D_A^\nu J_\nu=0\)；不能把 ordinary divergence-free J 当作对任意 A 独立合法的 source。

## 9.3 anchored Wilson 的 classical identity 与 Hamiltonian admission 是两件事

对路径 \(\gamma:[0,1]\to R\)，parallel transport 的 variation 精确为
\[
 \delta U_\gamma=-\int_0^1 U_{1,s}
 [\delta A_\mu(\gamma(s))\dot\gamma^\mu(s)]U_{s,0}\,ds.
\tag{9.3}
\]
连同第 01 篇的 endpoint anchors，它给 gauge invariant matrix-valued function。把 path 切成若干段并插入 h，ordinary matrix composition 是 exact classical sewing identity。

但 (9.3) 的 derivative 支持在 curve 上，通常不是第 03 篇 regular smooth Hamiltonian domain。对某些两条 lines/surfaces，其 Peierls contraction 可定义；对 tangencies、coincident supports、null curves、endpoints，必须检查 distributional products 与边界项。几何上存在一个 U，并不保证它对所有其它 U 都有可定义 Poisson bracket。

因此采用三个不同的 admission entries：有限 graph 上的 link Wilson（第 05 篇精确）；continuum 的明确 smooth thick probes（第 06 篇已含 Abelian 必需 flat holonomy）；thin line/charged network 作为带特定 distributional/renormalization prescription 的扩展。后者仍是目标，但没有通过准入的 pairing 不可以写进一个声称封闭的 Poisson/quantum algebra。

非阿贝尔 electric flux 的 colour 也必须有比较 fibre 的 transport，例如
\[
 E_{S,u}[\xi]=\int_S\langle\xi,u^{-1}E_nu\rangle,
\]
其中 u 是声明的 boundary frame，或实际 dynamical dressing。若 u 依赖 A，variation 中必须包括 \(\delta u\)；把它当固定常数会漏掉 bracket terms。多个 anchors 并非无限增加新可观测量：它们的关系由已给 boundary reference bundle 和可实现的 transports 决定。

## 9.4 quantum local product、boundary contacts 与 Wilson junctions

一般 interacting prescription 可以用 formal \(\hbar\)、coupling series 的 renormalized products。其构造至少应给：有物理 BC 的 propagators，明确支持/波前准入的 labels，local counterterms 的允许位置，boundary/corner Ward normalization，以及与 changes of prescription 的 maps。[R13,R14]

Hollands 的局域微扰 YM 结果为此提供重要输入，但不是本包所有真实 timelike boundaries 与 thin networks 的现成 existence theorem。[R13] BV–BFV 框架提供 boundaries 与 residual fields 的组合策略，也不能用一个框架名称替代实际 action/domain/measure 构造。[R14]

对一条在 seam 形成 cusp 的 renormalized Wilson，独立 segments 的乘积通常还要一个 junction renormalization；在有多个可重连 routings 时它是 matrix mixing。一个最简单的 Euclidean angular witness 是
\[
 \cos\varphi\int_0^\infty
 \frac{du}{1+u^2+2u\cos\varphi}=\varphi\cot\varphi,
 \quad0<\varphi<\pi.
\tag{9.4}
\]
减去 smooth continuation 的值 1 后，出现非零 \(\varphi\cot\varphi-1\)。在常用一圈 QCD normalization，cusp anomalous dimension 对应
\(\Gamma^{(1)}=g^2C_R(\varphi\cot\varphi-1)/(4\pi^2)\)。本包仅用该角度依赖说明“普遍 endpoint 常数”不足，不由此声称解决任意 Wilson product 的重整化。[R18] intersecting-loop mixing 的实际例子见 [R16]。

在 artificial seam 被撤去后，同一条真正 smooth line 不应凭空获得物理 cusp；这要求两侧 regulator/junction counterterms 与 smooth target 的 normalization 对齐。反之，真实 cusp 不应因“sewing independence”被删去。field-strength two-point kernel equality 检验不到这件事。

## 9.5 BRST：精确的适用范围和 comparison obligation

可以取 \(sA=D_Ac,\ sc=-\tfrac12[c,c]\)，并加入 matter、antifields 或辅助 fields。其 convention 可与第 01 篇通过 c 对应 infinitesimal ε 统一。离散 large transformations 不由此生成，仍须另行 quotient 或选择 equivariant sector。

若 \(\mathcal B\) 为实际定义的 graded quantum algebra，s 是 nilpotent derivation，则
\[
 \mathcal A^{\rm q}_{\rm phys}=H^0(\mathcal B,s)
\tag{9.5}
\]
是一个可采用的 prescription。它不自动是全部 Wilson/defect sectors；那些必须先成为 \(\mathcal B\) 或其 charged-module data 中的合法对象。也不自动给 positive Hilbert state。

构造 sewing chain map R 后，必须逐项检查：R 保持实际 source/support domains；Rs=sR；product 与 star 运算在 physical classes 上相容；关键 physical generators 有 preimages；零像只来自已算出的 gauge/equation/null relations。若使用 chain homotopies证明 inverse，需要给出这些 maps，而不是只写 \(LR-1=sh+hs\) 然后宣布存在性完成。

若 quantum Ward identity 出现不可消去的 seam anomaly，(9.5) 可能根本不能在预定方式下下降。禁止先假定物理量子代数存在，再把 anomaly 放进“未来的细节”。

## 9.6 spacelike 与 null cuts 不能一概叫 boundary matching

**spacelike Cauchy cut。** 要传递完整 constrained initial pair 及 bundle/frame data，而不是给它施加 reflecting timelike BC。orientation 使相邻 cap potentials 抵消。第 05、06 篇已经有这一类实际 evolution maps；corners 与 timelike walls 的 joint compatibility 仍保留。

**null cut。** characteristic surface 一般没有独立的“场+任意法向导数”两套数据。最基本反例：二维波方程 \(\partial_u\partial_v\phi=0\) 的解 \(\phi=f(u)+g(v)\)，只知 u=0 上 \(f(0)+g(v)\)，不能决定 f(u)。因此一张一般有限 null sheet 不是完整 Cauchy source；需相交的第二张 sheet、另一个 boundary、或其它补充条件。

对 YM，在 null gauge \(A_v=0\) 的 sheet u=0 上，\(F_{vA}=\partial_vA_A\)。constraint equations 含 \(D^AF_{Av}\) 等项；即使 transverse dependence 为零，\([A_A,\partial_vA_A]\) 一般不为零。例如 \(A_y=\cos v\,T_1+\sin v\,T_2\)，有
\[
 [A_y,\partial_vA_y]=[T_1,T_2].
\tag{9.6}
\]
故不能把每个 colour 的 Abelian radiative data 自由复制为完整 non-Abelian null data；electric/corner integration constants 受 constraint 控制。

本包对 null 部分给出数据结构与可检查的 failure witnesses，而不宣称已构造完整 null Peierls/quantum sewing。把一个 incomplete sheet 作为区域对象，会先违反“每个 region 理论良定义”，不能由后面的同调语言补救。

## 9.7 quantum algebra 不决定 state sewing

即使得到 \(\Theta:\mathcal A_\Gamma/I\cong\mathcal A_R\)，也没有从两份 regional states 唯一确定 global state。以两个 harmonic oscillators 为例，两份 oppositely squeezed pure Gaussian states 都有同一 local covariance
\[
 A=B=\tfrac12\cosh(2r)\,1_2,
\]
但 cross blocks 分别为
\[
 C_\pm=\pm\tfrac12\sinh(2r)\operatorname{diag}(1,-1).
\tag{9.7}
\]
两者各自满足 uncertainty relation，local restrictions 相同，全局 cross correlators 不同。

所以 state sewing 必须额外指定 cross correlations、boundary-state preparation、amplitude/pairing 或其它足够的数据。YM2 的 Haar isometry 是所选 Hilbert realization 的明确结果，不意味着所有 continuum QFT regions 自带 Hilbert tensor factorization。反射壁撤去后，旧 ground state 一般也不是新 Hamiltonian 的 ground state。

## 9.8 matter、magnetic defects、higher-form symmetry 与 nongauge comparison

加入 charged matter 时 Gauss 改为 \(D_iE^i=\rho\)，Wilson endpoints 可由真实 matter operators 而非外部 frames 承担。boundary charged matter 的 action/BC 必须随 region 保存；不能在 reopening 时把它误删为 artificial edge bookkeeping。

magnetic/'t Hooft defects 改变的是 bundle/connection 允许的奇性及 linking 数据，不只是给光滑 A 的 polynomial algebra 加一个词。若 target 包含它们，source 必须包含相应 disorder/transition sectors、junction rules 与 mutual locality 条件。generalized symmetries 的 charged lines/surfaces也说明只用局域 curvature polynomials 不足。[R12] 本包固定光滑 bundles 的 exact examples 并不自动完成这些 defect algebras。

对 nongauge scalar，同样需要真实 timelike BC、joint corner-source domain、完整响应、量子 contacts、独立 state data；这些不是 gauge 独有。gauge theory 额外强迫加入 Gauss/proper quotient、bundle transitions、anchors、large components、charged maps 与可能的 anomalies。最好的统一方式是保留共同的边界/源/代数检验步骤，再只对实际出现的 gauge obstruction 加相应数据，而非把 nongauge 也强制包装进无必要的高阶结构。


---

<!-- source: notes/10_adversarial_review_and_model_matrix.md -->

# 10｜模型反查、实际修订与剩余边界

本篇不是声称已经获得外部同行评审，而是记录本轮构造中对自己的反例检查。精确结果的前提、adopted input 与未完成项共同构成可审核的结论；任何数值 PASS 都不能把后两者自动升级为 E。

## 10.1 固定 target 后的模型矩阵

| 模型/区域类 | 未切分 target 与必需 probes | 本包实际结果 | 不随之获得的结论 |
|---|---|---|---|
| compact connected YM2 interval，trivial large character | representative holonomy functions、polynomial flux、Casimir dynamics | §5.1–5.5：完整 invariant-PBW kernel、Haar onto map、driven reopening、三块比较，E | 任意 circle singular differential ideal、其它 large sectors |
| 有限 non-Abelian graph regulator | link Wilson/flux、跨 cut plaquette words | §5.7：逐 link subdivision 的 operators 与 dynamics，E | 任意四维 continuum limit、自动恢复缺失二维 bundle cocycles |
| relative Maxwell flat slabs，线性 cover | 全部声明的 smooth Hamiltonian linear probes、radiation、Q/P | §6.1–6.8：all-mode source、transition lifts、完整 linear/polynomial/CCR kernel、CPS–Peierls、fresh opening，E | 任意 sharp line/surface products、局域 Wick stress/corner contacts |
| 同几何 compact U(1)，relative trivial sector | rotor U/P 加 radiation，全部 based components | §6.9：integer characters、Haar harmonic sewing，E | 任意磁通/relative winding sector、未经声明的 theta representation |
| source-free U(1) disk，extendible boundary framing | zero-mean smooth current 及其 CCR/Weyl | §7.1–7.4：源演化、corrected seam potential、current lifts、完整 null kernel，E | 带 punctures 的 arbitrary current mean、任意 charged vertex operators |
| compact U(1) CS torus | X,Y crossing Wilson，固定中心 character | §7.5：relations 完整生成 kernel，image M_k，E；topological realization I | 从任意 Lorentzian disk-current representation 推出的 handle contraction |
| SU(2)₂ 四 punctures，总 charge 0 | 两种切法的 actual channel maps，W12/W23 | §7.6：fixed-cup F/R 与 M2 Wilson presentation，E；unitary realization I | 用 2×2 tests 认证所有 labels 的 pentagon，或全部 field algebra |
| positive-energy charged CS edge | 真实 localized charged operators、Gram pairing、maps C_a | §7.7：在明确 transport/irreducibility 输入下 kernel=Gram radical、onto criterion，C/I | 从 multiplicity numbers 单独构造这份分析实现 |
| formal small-amplitude YM on flat slab | formal source solutions、Gauss、boundary histories | §9.2：coefficientwise sourced existence/uniqueness与组装，E in stated formal domain | series convergence、完整 nonlinear observable-presentation kernel、quantum loops |
| 一般 principal bundles / nontrivial topology | h、cocycles、allowed sectors、anchors、global Wilson | 第 01/04/08 篇：几何装配与条件性 symplectic comparison，E/C | 每个拓扑上每套 physical IBVP 都存在、任意 disorder algebra |
| null/mixed causal networks | 足够 characteristic sheets、corner flux seeds、constraints | §4.6/9.6：输入要求及反例，D 对一般构造 | 单 sheet 当 Cauchy、从 timelike proof 自动推广 |
| 任意 interacting quantum YM、matter/defects | local/Wilson/disorder/junction/stress operators | 第 03/09 篇：明确 ontology 与准入义务，C/D | 已构造全部 boundary renormalization 或 global anomalies 已取消 |
| states/amplitudes | cross correlations、preparation、phase lines | 第 08/09 篇：独立结构与必要性反例 | 由两份 regional marginal states 唯一恢复 global state |

“E in stated domain”包括该域真正的所有 modes/labels，不把任意 distribution completion 或新的 topological sector 偷塞进“所有”一词。

## 10.2 反向修改记录

**第一轮：先尝试删掉不必要数据，再看什么坏掉。** curvature-only 无法检测 flat Q，因此把 Maxwell target 改为全部 admissible connection/electric linear labels；compact case 同时改成 integer-character/rotor，而非在实线 Gaussian 上口头识别 Q 的周期。相应地增添了实际 seam lift，不能仅修改生成元清单。

**第二轮：检查 source 与 boundary ontology。** 保留 joint tuple，删除 componentwise decomposition；disk current 必须来自 flat bulk，零平均不是可选 gauge-fixing。相同原则也用于 null constraints 和 matter boundary components，防止发明不存在的数据。

**第三轮：检查 symplectic/quantum comparison。** Maxwell 增加 \(\int E_n\delta\lambda\) 与 \(\int\lambda f_n\)；CS 增加 §7.3 的 explicit \(\Theta_\Gamma\)，而不是直接 quotient 两份旧 forms。YM2 使用 invariant/PBW normal form，避免全量子代数的两侧 constraint ideal。SU(2)₂ 检查 cup-sensitive FS sign，不仅检查 braid matrices。

**第四轮：检查“严格”“全部”“最小”的范围。** all-mode Maxwell 用实际 frequency bounds 与 finite-jet lifts，未把 Borel extension 当任意 jet topology 上的连续 linear right inverse；formal YM 不沿用错误的 Abelian reflection parity；跨 seam smooth tests 明列为 enriched source，未说它们属于旧 algebraic tensor product；generic theorem 保留为 C，不冒充存在性；所有 state 与 UV extensions 另列。

**第五轮：检查 global conventions 与再粘合。** fixed-source symmetry 与改变 source fibre 的 time-dependent frame changes 分开；compact sector 中仅在 equivalent liftable-seam presentation 使用实 λ；self-sewing 只复制 boundary occurrences；pentagon 比较四个对象的五种括号化；CS 的 fixed cups、ribbon phases 与 Weyl quasi-periodicity 都固定在文件和代码中。

这些修订落实在正文，不只是此处列一张“注意事项”。

## 10.3 删除数据后的必要性 witnesses

| 删除什么 | 剩余数据无法区分 / 无法实现什么 | 结果 |
|---|---|---|
| connection/relative holonomy，只留 curvature | Q 与 Q+c，P 相同 | 丢失 \(\{e^{iQ},P\}=ie^{iQ}\) |
| based large components | Q∈R 与 Q∈S1 的不同 global theory | 错误 observable/representation |
| seam transition λ/h | 各片 independent gauge 后的同一 global transport | lift 不再 gauge invariant |
| joint corner source domain | 完整相容 tuple 与两个不相容分量 | 不存在声明的 smooth source solution |
| bulk extendibility | disk boundary PDE 的非零 current mean | 增加虚假的 physical mode |
| actual channel maps，只留 sectors | W23/Y 的 sector-changing 作用 | 只得到过小的 diagonal algebra |
| cup/evaluation normalization | 相同 braid conjugation 下不同 vacuum overlap | ribbon realization 不一致 |
| reopening rule/action/domain | 相同 abstract CCR、不同 masses/walls/responses | 无法恢复新边界问题 |
| boundary phase/anomaly data | 相同 Ad action、不同 state/amplitude phases | algebra 检验漏掉 quantum obstruction |
| cross-state data | 同 marginals、不同 C_± | state sewing 不唯一 |

这证明了多类数据的必要性，但并不证明本包携带的每一条 action/source 信息都是不可压缩的。求真正最小 response package 应另给“允许遗忘哪些数据”的偏序，再逐项研究。

## 10.4 仍最值得继续攻击的证明接口

Maxwell 的精确域采用 static flat slabs 与 compatible smooth labels；因此下一次审查应先攻击边界变形下的参数一致 estimates、一般 source trace completion 及目标 stress/line extensions，而不是反复检查已闭合的 oscillator algebra。当前有限阶 estimates 没有声称最优 regularity 或无 derivative loss。

CS disk 的 exact proof 使用可延拓 outer framing、零 relative winding 与 compatible chord corners。改变这些 topology choices，可能必须增加 monodromy 与新的 endpoint terms；不能只把“disk”换成“annulus”沿用证明。

SU(2) channel contraction 的 analytic transport data 是采用的输入，不是本包重证。任何 independent realization 应实际构造 bounded operators、验证 Gram positivity/radical 和 onto，不可以引用一个 2D Hilbert dimension。

formal YM 的递归给 fields/responses，不自动给全部非线性 gauge-invariant Hamiltonian labels 的 presentation。要扩大 algebra result，须构造有 domain control 的 nonlinear dressing/Peierls labels，并重新检查 Wilson junction 的 UV extensions。

## 10.5 测试怎样解释

`checks/run_checks.py` 的每项有三个类型之一：`exact_identity`（SymPy 或有限代数恒等式）；`counterexample`（成功重现应排除的错误主张）；`finite_diagnostic`（非交换矩阵/频率/响应/积分采样）。输出记录实际环境、容差、scope 与 proof section。

程序不能证明 infinite-dimensional functional analysis，不认证 arbitrary ribbon coherence，不是一个 hidden full Yang–Mills solver。其价值是把容易再次出错的符号、零模、source 与非对角 observables 转成可复现的回归测试。完整证明强度仍由正文假设和推导决定。


---

<!-- source: notes/11_reader_guide_and_notation.md -->

# 11｜读法、符号与最少需要补的数学

## 11.1 推荐的两条阅读顺序

先读 **00 → 01 → 02 → 03 → 05 → 06**：这条线从物理问题到两个实际算出 kernel 的模型。之后读 04，把通用 comparison 原则与已知实例对照；再读 07、08，看 CS 与 topology 为什么需要不同附加数据；09、10 标明扩大到 interacting/null/state 时仍需做什么。

更短的审查路径是 **00.2 → 05.2–5.5 → 06.3–6.9 → 07.3/7.6 → 10.1**。它直接检查研究目标、完整 kernel、关键缺失 observable 的 lift 及条件强度。

本包文本采用 Markdown + LaTeX，可直接在 Obsidian 中读取。`COMPLETE_NOTES.md` 是同一内容的串联合稿，不是另一个版本；分篇文件更适合修改。编号固定为 00–11，公式以篇号开始。

## 11.2 “源域”并不要求先学抽象 PDE

它只是“哪些输入可以同时来自一份允许的解”。Dirichlet 波方程要求初值在 endpoint 为零，还要求其二阶时间导数与 forcing 相容；第 02 篇的 x(1−x) 例子已经展示全部要点。更高 regularity 只是继续对边界条件求导。不同来源的数据不是自动独立坐标。

well-posedness 的内容是存在、唯一（或模声明的 gauge 唯一）、对数据连续依赖。与它不同，variational well-definedness 仅说 δS 的边界项在允许 variations 上消失。二者都要检查。

## 11.3 Hamiltonian domain 与 weak symplectic 的具体含义

有限维非退化 Ω 总能解 \(\iota_X\Omega=-dF\)。无限维时，F 的 derivative 可能是一份过于奇异的 distribution，所需 X 不属于声明的 smooth solution space。因此先指定测试类，再求 X。

例如 Maxwell 的 smooth f,g 给 \(X_Fa=P_Tg,X_FE=-f\)，逐项检查它们属于 \(\mathscr S\) 即可；thin curve delta 不满足同一条件，需要另开 domain。本文所有关于“完整”的 statements 都相对于这些明确 labels，而不是全体形式可写表达式。

## 11.4 kernel、presentation、normal form

map 的 kernel 是所有映成零的输入。写“kernel 是所有映成零的输入”只是定义，不是计算。

一种真正的计算方法是 normal form：例如 quantum YM2 把 vertical derivatives 全部排到一侧，\(D=\sum r^\alpha D_\alpha(U)\)；restriction 只保留 D₀，kernel 就是 D₀=0。又如 SU(2)₂ Wilson words 全部化成 1,A,B,AB；四个实际矩阵独立，便没有遗漏的关系。

PBW 在这里仅表示 Lie generators 的 ordered monomials 构成 basis；其作用是把“可能有隐藏的 operator relations”转成一个可检查的排序问题，不要求先读完一般 enveloping algebra theory。

## 11.5 为何用 Weyl generator

Φ(f) 是通常的 smeared quantum field，常为 unbounded operator。\(\mathcal W(f)=e^{i\Phi(f)}\) 把 canonical commutator 编码成 unitary multiplication rule，便于讨论 representation-independent algebra。

compact Q 是角度，不能用全局单值的 Q；其整数 characters e^{inQ} 才全球合法。此时 label 的加法是一个 Abelian group，不一定是实 vector space。这是使用稍微一般的 Weyl 关系的具体理由，不是无条件增加代数抽象。

## 11.6 groupoid、Gram radical、homotopy 各解决一个不同问题

groupoid 在本包仅表示“保留每份 field 与把它变到另一份的实际 gauge maps”；这样同一个 orbit 的 stabilizers 与 seam identifications 不会丢失。

Gram radical 是 norm/inner product 为零的 source vectors。若实际 map C 满足 \(\|Cz\|^2=G(z,z)\)，radical 就是它的 kernel；完成后的 onto 还需证明，不由 norm identity 单独给出。

chain homotopy H 是把两个 maps 的差写成 \(sH+Hs\)；geometric isotopy 则是连续移动路径/切面而不穿越 defect；ribbon F-move 是 channel basis change。这三个概念都可能出现，但不能互相替代。

## 11.7 记号与方向总表

| 符号 | 本包约定 |
|---|---|
| \(A^g\) | \(gAg^{-1}-dg\,g^{-1}\) |
| \(U_\gamma\) | \(\mathcal P e^{-\int_\gamma A}\)，path composition 右边先走 |
| U(1) a | \(A=-ia\)，\(a\mapsto a+d\lambda\)，\(U=e^{i\int a}\) |
| \(h_{21}\) | 从片 1 fibre 到片 2 fibre；\(U_{21}=U_2h_{21}U_1\) |
| \(\Omega\) | \(\delta p\wedge\delta q\)，不是相反号 |
| \(X_F\) | \(\iota_{X_F}\Omega=-\delta F\)；\(\{F,G\}=\delta F(X_G)\) |
| Maxwell E | \(e^{-2}\dot a\)，canonical electric variable |
| Maxwell Q,P | \(Q=\mathcal V^{-1}\int a_x\)，\(P=L^{-1}\int E_x\) |
| YM2 p | left-trivialized cotangent variable，\(p=-E(0)\) 对本 holonomy convention |
| \(G^R-G^A\) | 从 action Hessian 的 inverse 定义；§6.8 明确检查符号 |
| \(\mathcal G_{\rm prop}\) | 指定的冗余群，包含明确的 disconnected-component policy |
| closed region | 全部当前 timelike inputs 已固定；不是“没有边界” |
| E/C/I/D | 精确结果 / 条件性准则 / 采用的实现输入 / 保留目标但未完整构造 |

最后一个实际阅读原则：每次看到“可观测量”“相同”“完整”，先问清楚是哪一个 domain、哪两个 maps、哪些 generators 与哪些 relations。这样可以在不用额外高阶语言的前提下，发现大部分 ontology 和 sewing 错误。


---

# 文献、用户研究来源与证据边界

检索日期：2026-09-14。引文用于已有框架、实现和外部物理事实；本包新的 elementary calculations、model-specific presentations 与反例在正文中推导。没有声称重证所有文献定理。文献的无真实边界范围，不能自动推广成本文任意 timelike IBVP。

## 主要文献

**[R1]** Daniel Harlow, Jie-qiang Wu, *Covariant phase space with boundaries*, arXiv:1906.08616。使用：boundary variational principle、corner potential、CPS/Peierls 的比较逻辑。查看 HTML 正文。不是任意 gauge PDE 存在性输入。

**[R2]** William Donnelly, Laurent Freidel, *Local subsystems in gauge theory and gravity*, arXiv:1601.04744。使用：boundary reference frames、charges 与 subsystem 的物理动机；不采用“加 frames 自动等价于任何 fixed-boundary theory”的过宽命题。

**[R3]** Aldo Riello, *Symplectic reduction of Yang–Mills theory with boundaries: from superselection sectors to edge modes, and back*, arXiv:2010.15894。使用：flux sectors 与 edge-mode extension 不是同一种选择。题名和范围经 arXiv 核对。

**[R4]** Marco Benini, Claudio Dappiaggi, Alexander Schenkel, *Quantized Abelian principal connections on Lorentzian manifolds*, arXiv:1303.2515v2。使用：完整 gauge group、topological observables、compact factors 中某些线性 observable algebras 不 separating。

**[R5]** Marco Benini, Claudio Dappiaggi, Thomas-Paul Hack, Alexander Schenkel, *A C*-algebra for quantized principal U(1)-connections on globally hyperbolic Lorentzian manifolds*, arXiv:1307.3052v2。使用：separating exponential observables、presymplectic Abelian group 和 locality 的拓扑限制。查看 HTML 与 abstract；不是本文 reflecting-wall quantization 的现成证明。

**[R6]** Christopher J. Fewster, Benjamin Lang, *Dynamical locality of the free Maxwell field*, arXiv:1403.7083。使用：universal/reduced Maxwell、topological information 与 locality 的区分。

**[R7]** Edward Witten, *Two Dimensional Gauge Theories Revisited*, arXiv:hep-th/9204083。使用：二维 YM 的精确量子背景；本包的 PBW/Haar/operator proof 独立写出，不以 partition function formula 代替。

**[R8]** Riccardo Iraso, Pavel Mnev, *Two-Dimensional Yang-Mills Theory on Surfaces With Corners in Batalin-Vilkovisky Formalism*, arXiv:1806.04172v3。使用：有 boundaries/corners 的 YM2 量子组合背景；其 amplitude construction 与本包 operator target 分开。

**[R9]** Daniel S. Freed, *Classical Chern-Simons Theory, Part 1*, arXiv:hep-th/9206021。使用：boundary prequantum lines 与 gluing；该 Part 1 的群范围为 connected/simply connected，不能把其 scope 偷改为任意 compact/非紧群。

**[R10]** Antony Wassermann, *Operator Algebras and Conformal Field Theory III. Fusion of Positive Energy Representations of LSU(N) Using Bounded Operators*, arXiv:math/9806031。使用：charged fusion 的采用实现。本文展示 Gram/map obligations，未重证该工作的全部分析理论。

**[R11]** Peter Bantay, *The Frobenius–Schur Indicator in Conformal Field Theory*, arXiv:hep-th/9610192v2，式 (1)。查看 HTML 正文，并在代码中把 SU(2)₂ 的 fusion/dimension/twist 实际代入。

**[R12]** Davide Gaiotto, Anton Kapustin, Nathan Seiberg, Brian Willett, *Generalized Global Symmetries*, arXiv:1412.5148。使用：line/surface charged objects 与局域 curvature catalog 的区别。

**[R13]** Stefan Hollands, *Renormalized Quantum Yang-Mills Fields in Curved Spacetime*, arXiv:0705.3340。使用：局域微扰 quantum YM/BRST 的 scope，不扩张为任意 physical-wall/Wilson sewing existence theorem。

**[R14]** Alberto S. Cattaneo, Pavel Mnev, Nicolai Reshetikhin, *Perturbative Quantum Gauge Theories on Manifolds with Boundary*, arXiv:1507.01221。使用：量子 boundary/residual-field 的组合框架；不把框架名称算作具体 model 的完成证明。

**[R15]** Marco Benini, Alexander Schenkel, Richard J. Szabo, *Homotopy Colimits and Global Observables in Abelian Gauge Theory*, arXiv:1503.08839v2。使用：local-to-global 时保留 gauge comparison data 的背景；本文对普通 bundle 先用实际 cocycles/arrows，不默认要求读者掌握该文全部语言。

**[R16]** Matthias Berwein et al., *Renormalization of the Cyclic Wilson Loop*, arXiv:1212.4413。使用：intersections 会要求 operator mixing 的具体例子；不是本文所有 junction prescriptions 的 construction。

**[R17]** Takuya Okuda, Koichi Saito, Shuichi Yokoyama, *U(1) Spin Chern-Simons Theory and Arf Invariants in Two Dimensions*, arXiv:2005.03203。使用：odd-level compact U(1) CS 需要 spin 数据；本包 finite torus examples 选择正偶 k。

**[R18]** Andrey G. Grozin, Johannes M. Henn, Gregory P. Korchemsky, Peter Marquard, *The Three-Loop Cusp Anomalous Dimension in QCD and Its Supersymmetric Extensions*, arXiv:1510.07803v3。使用：一圈 Euclidean cusp 的角度依赖及其 smooth limit；查看 HTML。本文不借此报告最新多圈进展，也不声称本包重整化到三圈。

## 用户研究上下文

**[U1]** Research Radar：`https://research-radar.gao-zien.chatgpt.site/problems`。本轮实际访问，目标卡含 framed gauge algebra、crossing Wilson、holonomy–electric brackets、实际 kernel/image 与三块比较，以及 classical/algebra/state 层次区分。

**[U2]** GaoZ1en/obsidian_note，当前 main 的 `Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/SU(2) Chern-Simons charged sewing and channel maps.md`。本轮实际读取 raw main；借鉴其 fixed-cup convention、实际 Gram/channel maps 与非对角 Wilson 检验。它不只是列 fusion multiplicities。本包把所依赖的关键约定和采用输入完整写在 §7.6–7.7，不要求运行时联网。

**[U3]** 同仓库当前 main 的 `Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons disk and open-chord sewing.md`。本轮实际读取 raw main；对照 source-free zero-charge disk 的 sector 选择。

在线仓库根：`https://github.com/GaoZ1en/obsidian_note`。本轮没有取得可独立验证的 commit pin，**不声称**当前 main 是旧 ZIP 声明的历史版本，也不虚构 commit hash。采用的公式已固化在本包；在线原文的逐 byte snapshot 不作为本包自包含证明的一部分。

## 当前对话输入

上传的 `gauge_sewing_exploration_bundle.zip` 与 `gauge_sewing_strict_audit.zip`，以及审查报告 `strict_audit_zh.md`。实际输入文件的 SHA256 记录在 `provenance/input_manifest.json`。旧稿在本包中仅是问题来源和反例回归依据，不被当作已验证的 scalar/quantum theorem。
