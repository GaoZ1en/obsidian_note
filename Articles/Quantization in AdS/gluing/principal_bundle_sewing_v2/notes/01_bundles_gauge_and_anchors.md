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
