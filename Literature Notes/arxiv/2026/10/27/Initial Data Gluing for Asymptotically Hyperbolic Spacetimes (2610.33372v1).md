---
paper id: 2610.33372v1
title: Initial Data Gluing for Asymptotically Hyperbolic Spacetimes
authors:
  - Aren Martinian
publication date: 2026-10-23T23:53:08
abstract: |-
  The paper proposes a support-preserving Bogovskii construction for gluing small asymptotically hyperbolic vacuum initial data. It builds an inverse of the linearized constraints modulo Killing-initial-data obstructions, estimates the Hamiltonian and momentum inverses on anisotropic annuli, and uses separate fixed points for the nonlinear correction and the obstruction charges.
comments: "42 pages, 1 figure"
url: https://arxiv.org/abs/2610.33372v1
summary: "A full reconstruction of the constraint/charge gluing proposal, with checked linear identities and explicit failures in the coordinate, recovery and fixed-point bookkeeping."
tags: []
---

[[2026_10_27_overview|2026-10-27 overview]]

Reason codes: `T1-boundary; T2-model`.

**Not proven by the current source:** 本文的线性 constraint/adjoint/charge 结构有可复用且通过独立检查的部分；其定量拼接定理不能据印出的推导直接接受。特别是两个 annulus 坐标模型的径向尺度不一致，(3.6) 的 static potential 变换错误，坐标版 Hamiltonian 算子漏掉张量 connection 项，且角路径恢复公式已有精确反例。以下先重建完整方案，再给出这些失败的位置、修正候选及影响。没有由这些局部失败推断“所有渐近双曲 gluing 定理都错误”。

## Source tree and how to read this long paper

官方 v1 PDF 42 页，TeX 全文及两个附录均已读。论文自身的日期行写 October 27，官方 submission history 是 October 23；本日 placement 依据 October 27 的 cross-list issue。

| 源章节 | 目的、主要对象与后续依赖 |
|---|---|
| §1 Introduction，pp.1–3 | Corvino–Schoen 方法与 direct Bogovskii inverse；拟将 scalar inverse 的损失改为 \(\delta^{-2}\) |
| §1.1 Acknowledgements | 致谢与声明，无技术输入 |
| §2.1 Hyperbolic Metrics，pp.3–5 | 基准 \(b\)、负 \(\Lambda\)、trace shift、非线性 schematic equations |
| §2.2 Hyperbolic Annuli，p.5 | proper-radius annulus、Euclidean annulus \(A\)、stereographic cylinder \(C\) |
| §2.3 Sobolev Norms and Anisotropy，pp.5–6 | 角/径向不同尺度的 \(\widehat H^s\) 与张量分量权 |
| §2.4 Charges，pp.6–8 | \(\ker P^*\)、Green flux、averaged charges、admissible \(Q\)-family |
| §2.5 Graded Augmented Systems，pp.8–9 | 将 adjoint 方程变成有限阶一阶 prolongation，保证 recovery on curves |
| §3 theorem / Steps 1–3，pp.9–14 | 拼接目标、adjoint、cokernel、Prop.3.5 的 inverse/commutator bounds |
| §3.1 Augmented computations，pp.14–18 | 径向与角向 transport；局部 \(S^1\) 和 smoothing error |
| §3.2 Explicit \(\delta\)-bounds，pp.18–29 | 角向振子、Lemmas 3.7–3.10、momentum Prop.3.11、第二/第三 inverse |
| §3.3 Step 4，pp.29–32 | cutoff 初值、source error、分量加权 Picard iteration |
| §3.3 Step 5，pp.33–35 | 把余核方程化为有限维 \(Q=\check Q+n[Q]\) |
| Prop.3.2 的证明，pp.35–36 | Lipschitz dependence 与额外正则性，声称总损失 \(\delta^{-6}\) |
| Appendix A，pp.36–38 | trace-shifted 非线性方程的展开 |
| Appendix B，pp.38–41 | 引用的 integral-kernel、smoothing、support 和完全可积定理 |
| References，pp.41–42 | 技术输入 refs.[19]、[20] 等，本文未重新证明 |

先读 §2.1、§2.4 和 Theorem 3.1，再读 §3.1 的 prolongation；要评估定量结论，§2.2–2.3、§3.2 及两个 fixed points 都不可跳过。Appendix B 的条件不是可省略的背景。下文保留所有 \(\delta\)-权，不把极限 \(\delta\to0\) 默认为一致。

## 模型、边界和两个不同的 hyperbolic 含义

空间维数 \(d\geq2\)，真空初值 \((g,k)\) 满足

\[
R(g)+(\operatorname{tr}_g k)^2-|k|_g^2=2\Lambda,
\qquad
\nabla_g^i(k_{ij}-g_{ij}\operatorname{tr}_g k)=0,
\quad
\Lambda=-\frac{d(d-1)}2 .
\]

本文基准为

\[
b=dr^2+\sinh^2r\,g_{S^{d-1}},\qquad k_{\rm bg}=0,
\quad R(b)=-d(d-1),\quad\operatorname{Ric}(b)=-(d-1)b .
\]

这里 \(r\) 是 spatial hyperbolic proper radius；\(\delta\) 控制接近 conformal infinity 的 annulus。边界 matching 是在一个有厚度的 annulus 两侧保持各自初值，没有给出 timelike AdS boundary 上的完整动力学条件。

这与“在 \(\Lambda=0\) 的渐近平直时空里取 \(k\to\) 非零常数的 hyperboloidal slice”不是同一个 constraint problem。不能把本日另一篇 hyperboloidal 初值的自由数据直接代入本文的 \(k\to0,\Lambda<0\) 系统。本文也没有从 Einstein action 重建 CPS 或边界 symplectic form。

§2.1 的 Kottler 表示是

\[
b=\frac{dR^2}{R^2+\kappa}+R^2\widehat b,\qquad
\operatorname{Ric}(\widehat b)=\kappa(d-2)\widehat b .
\]

若 \(\widehat b\) 是单位 round sphere，必须取 \(\kappa=+1\)；整个 \(b\) 的 sectional curvature 才是 \(-1\)。源 p.3 把这两个曲率参数混同为 \(\kappa=-1\)。**Checked / Failed as printed:** xCoba 在 \(d=3\) 得

\[
R\!\left(\frac{dR^2}{R^2+\kappa}+R^2d\Omega^2\right)
=-6+\frac{2(1-\kappa)}{R^2};
\]

\(\kappa=-1\) 配 round sphere 并非标准 hyperbolic metric。
后续实际使用的 \(dr^2+\sinh^2r\,d\Omega^2\) 是正确的标准背景。
同页附近“\(k=0\) 所以 \(\operatorname{Ric}(g)=-(d-1)g\)”也超出了约束所给的 scalar-curvature 条件；本文定理应以靠近 \(b\) 的初值理解，不能额外把任意 time-symmetric 数据当 Einstein metric。

## Trace shift：正确的线性 constraint 与不完整的非线性余项

设 \(h=g-b\)，所有本节 raising、trace 和 \(\nabla\) 都用固定背景 \(b\)：

\[
\sigma_{ij}=h_{ij}-b_{ij}\operatorname{tr}_b h,\qquad
\pi_{ij}=k_{ij}-b_{ij}\operatorname{tr}_b k .
\]

它们不是 trace-free tensors。逆变换为

\[
h_{ij}=\sigma_{ij}-\frac{b_{ij}}{d-1}\operatorname{tr}_b\sigma,
\qquad
k_{ij}=\pi_{ij}-\frac{b_{ij}}{d-1}\operatorname{tr}_b\pi.
\]

一阶 scalar curvature 是

\[
DR_b[h]=-\Delta_b\operatorname{tr}_b h+
\nabla_i\nabla_jh^{ij}+(d-1)\operatorname{tr}_b h .
\]

因此本文真正要反演的两个算子为

\[
P_R\sigma=\nabla_i\nabla_j\sigma^{ij}-b_{ij}\sigma^{ij},
\qquad
(P_M\pi)^j=\nabla_i\pi^{ij}.
\]

**Checked:** xPert 独立产生 \(DR_b[h]\)，再作 trace shift、代入
\(\operatorname{Ric}(b)=-2b\)（\(d=3\)），与 \(P_R\sigma\) 的差式为零。
trace-shift 的代数关系对一般 \(d>1\) 同样直接成立。

源 (2.8)、Appendix A 把非线性写成

\[
\begin{aligned}
P_R\sigma&=M_\sigma^{(0)}(\pi,\pi)
+M_\sigma^{(1)}(\nabla\sigma,\nabla\sigma)
+M_\sigma^{(2)}(\sigma,\nabla^2\sigma),\\
P_M\pi&=N_\sigma^{(1)}(\sigma,\nabla\pi)
+N_\sigma^{(0)}(\nabla\sigma,\pi).
\end{aligned}
\]

\(M,N\) 表示由对小 \(\sigma\) 光滑、导数有界的系数收缩所得的项，不是可忽略的误差符号。momentum 的 schematic 结构符合 connection difference 和 inverse-metric difference 的形式。

**Failed — Appendix A 的 scalar 余项列表不完整:** 非零背景曲率还产生无导数的 \(O(\sigma^2)\) 项。取 \(g=(1+t)b\)，\(h=tb\)、\(k=0\)，则 \(\nabla h=\nabla^2h=0\)，但

\[
R((1+t)b)=-\frac{d(d-1)}{1+t},\qquad
Q_R(tb)=R((1+t)b)-R(b)-DR_b[tb]
=-\frac{d(d-1)t^2}{1+t}\neq0.
\]

xCoba 在 \(d=3\) 给 \(-6t^2/(1+t)\)。
因此仅列 \(\nabla h\nabla h\) 和 \(h\nabla^2h\) 不能表达 off-shell curvature remainder。建议的结构修正是增加背景曲率驱动的 \(M_\sigma^{(3)}(\sigma,\sigma)\)，并重新估计它。此例检验的是展开恒等式，不是假称 \(g=(1+t)b,k=0\) 在 \(t\neq0\) 时满足真空约束。

## Adjoint、KIDs 与可用于拼接的边界 flux

对背景体积 \(d\mu_b\) 的配对，trace-shift 后的 adjoint 为

\[
(P_R^*V)_{ij}=\nabla_i\nabla_jV-b_{ij}V,\qquad
(P_M^*Y)_{ij}=-\nabla_{(i}Y_{j)} .
\]

不要与未 trace-shift 的
\(DR_b^*V=\operatorname{Hess}V-b\Delta V+(d-1)Vb\)
混为同一个作用在相同变量上的算子。

把 \(\mathbb H^d\) 嵌入 \(\mathbb R^{d,1}\)，

\[
y^0=\cosh r,\qquad y^i=\sinh r\,\theta^i,\qquad
-(y^0)^2+\sum_i(y^i)^2=-1,
\]

\(\ker P_R^*\) 由 \(y^\mu,\ \mu=0,\dots,d\) 张成。
\(\ker P_M^*\) 是 hyperbolic Killing fields：\(d\) 个 ambient boosts 和 \(d(d-1)/2\) 个 rotations，总维数 \(d(d+1)/2\)。合起来

\[
N_{\rm obs}=(d+1)+\frac{d(d+1)}2=\frac{(d+1)(d+2)}2 .
\]

**Checked:** 在 \(d=3\) 的精确 hyperboloid metric 中，四个 static potentials 的 \(P_R^*\) residual 全为零；三 boosts、三 rotations 的 Killing residual 也全为零。本文把这些称为 Poincaré-type generators，但 flux 及维数本身没有证明 Hamiltonian charge algebra 的 Lie brackets。

定义

\[
J_R^i[V,\sigma]=V\nabla_j\sigma^{ij}
-\sigma^{ij}\nabla_jV,\qquad
J_M^i[Y,\pi]=\pi^{ij}Y_j .
\]

其 Green identities 是

\[
\nabla_iJ_R^i
=V P_R\sigma-\sigma^{ij}(P_R^*V)_{ij},
\qquad
\nabla_iJ_M^i
=Y_j(P_M\pi)^j-\pi^{ij}(P_M^*Y)_{ij}.
\]

第一式由 xAct 对任意对称 \(\sigma\)、任意 \(V\) 复算，差式为零；第二式直接由乘法法则和 \(\pi\) 的对称性得到。因此 KIDs 的 pairing 把 annulus 内的 source 投影变成两侧 flux 差：

\[
\int_{\mathcal A}(VP_R\sigma+Y_j(P_M\pi)^j)d\mu_b
=\int_{\partial_{\rm out}\mathcal A}(J_R+J_M)\cdot\nu
-\int_{\partial_{\rm in}\mathcal A}(J_R+J_M)\cdot\nu .
\]

这是目前最可直接复用的对象。源分别命名为 \(\mathbf E,\mathbf C^i,\mathbf P^i,\mathbf J^{ij}\)，没有固定 \(G\)、\(16\pi\) 等物理归一化；本笔记保留 invariant \(V,Y\) 写法，避免源个别分量式的重复指标和 \(r/r_1\) 笔误。

averaged charge 是径向 smooth average 的 flux。若
\(\eta\in C_c^\infty((0,\log4))\)，要覆盖从 \(r_0\) 开始的 annulus，应取
\(\eta_{r_0}(r')=\eta(r'-r_0)\)。
**Failed as printed:** p.7 写成 \(\eta(r'+r_0)\)，其支集在
\((-r_0,\log4-r_0)\)；当 \(r_0>\log4\) 时全部位于负半轴，无法平均正半径 annulus。以下 averaged flux/fixed-point 思路以修正平移方向后的定义理解。

## Annulus 与 cylinder：必须先修正的尺度问题

作者选择

\[
\mathcal A_\delta=
\{\log(2/\delta)\leq r\leq\log(8/\delta)\},
\qquad
\widetilde{\mathcal A}_\delta=
\{\log(1/\delta)\leq r\leq\log(16/\delta)\}.
\]

proper radial width 分别为 \(\log4,\log16\)，角截面的几何尺寸是 \(O(\delta^{-1})\)。

§2.2 又定义 Euclidean annulus

\[
A=\{\delta^{-1}\leq |x|\leq\delta^{-1}+1\},
\]

并在 Lemma 3.4 中明确令 \(x^i=y^i\)，故 \(R=|x|=\sinh r\)。
**Checked / Failed:** 这两个 annuli 不是同一个径向尺度：

\[
\begin{aligned}
\sinh\log(2/\delta)&=\delta^{-1}-\delta/4,\\
\sinh\log(8/\delta)&=4\delta^{-1}-\delta/16,\\
\Delta R(\mathcal A_\delta)&=3/\delta+3\delta/16,
\end{aligned}
\]

而所定义 \(A\) 的 proper width 是

\[
\operatorname{arsinh}(\delta^{-1}+1)-\operatorname{arsinh}(\delta^{-1})
=\delta-\tfrac12\delta^2+O(\delta^3).
\]

因此“fixed proper thickness”到“unit Euclidean thickness”之间有未记录的径向 \(\delta\)-缩放。若改用 \(x_{\rm radial}=r-\log(2/\delta)\) 可以得到 unit cylinder，但就不能同时使用 \(x^i=y^i\) 及后面的 inverse stereographic 公式。不能在同一估计里交替使用这两种解释。

另一个较小的 endpoint 问题是 Poincaré radius \(R_{\rm P}=\tanh(r/2)\)：
源称 \(\sqrt{1-8\delta}\leq R_{\rm P}\leq\sqrt{1-2\delta}\)
精确变为上面的 \(\mathcal A_\delta\)。实际端点渐近为
\(\log(1/(2\delta))+O(\delta)\) 与 \(\log(2/\delta)+O(\delta)\)；
同阶宽度不代表相同的 annulus。

### Stereographic transport 及 (3.6) 的反例

在 \(d=3\) 写 cylinder 坐标为 \(z=(u,v,z_3)\)，
\(R=\delta^{-1}+z_3\)、\(D=1+u^2+v^2\)。逆变换为

\[
x^1=\frac{2Ru}{D},\quad
x^2=\frac{2Rv}{D},\quad
x^3=R\frac{u^2+v^2-1}{D}.
\]

所以正确的 static potential 是

\[
V_0(z)=\sqrt{1+(\delta^{-1}+z_3)^2}.
\]

**Failed:** 源 (3.6) 把它写成 \(\sqrt{1+z_3^2}\)，并把最后一个 spatial component 也错误地按普通 stereographic numerator 处理。对该精确 pullback metric

\[
b=\frac{4R^2}{D^2}(du^2+dv^2)+\frac{dz_3^2}{1+R^2},
\]

xCoba 得错误 \(V_{\rm print}=\sqrt{1+z_3^2}\) 在 \(u=v=z_3=0\) 的 residual

\[
(P_R^*V_{\rm print})_{ij}=
\operatorname{diag}\left(-4\delta^{-2},-4\delta^{-2},
(1+\delta^2)^{-1}\right).
\]

修正的四个 \(V_\mu\) 均给零。尤其未重标度的真实 \(V_0\) 及一般 \(V_i\) 是 \(O(\delta^{-1})\)，不符合 Step 5 使用的 scalar cokernel \(O(1)\) 断言。可选择重标度的 KID basis，但那必须同步改变 charge coordinates、admissibility 和 smallness ball；本文没有给出一致的重标度链。

## 各向异性范数的意图及精确等号的边界

作者定义

\[
\|u\|_{\widehat H^k(A)}^2=
\delta^{d-1}\!
\sum_{|\alpha'|+\alpha_r\leq k}
\|\delta^{-|\alpha'|}\partial_{x'}^{\alpha'}
\partial_{x_r}^{\alpha_r}u\|_{L^2(A)}^2 .
\]

每个 raised angular tensor index 再乘一因子 \(\delta\)，
lower angular index 乘 \(\delta^{-1}\)；
这是 \(z'\sim\delta x'\) 的 tensor Jacobian bookkeeping。
unit \(C\) 中使用普通 \(H^s\)，以免每次 Sobolev product estimate 都带上维数依赖的 \(\delta\)-损失。

这可作为在 uniform coordinate patches 上定义等价范数的方案，但 Prop.2.8 的精确
\(\|T\|_{\widehat H^k(A)}=\|T\|_{H^k(C)}\)
不能从所写 constant weights 与 nonlinear stereographic map 自动得到。
例如 \(d=3\) 的 Euclidean volume pullback 是

\[
dx=\frac{4R^2}{(1+u^2+v^2)^2}\,du\,dv\,dz_3,
\quad
\delta^2\,dx=
\frac{4(1+\delta z_3)^2}{(1+u^2+v^2)^2}\,du\,dv\,dz_3 .
\]

系数并非 1；在远离 chart 边界的有界 patch 上可得到一致的双边常数。若要精确等号，应直接以 pullback 定义范数并保留完整密度。更严重的 radial-scale 问题不能只靠这个有界因子修正。源的 Besov projector 定义还有缺少作用在 \(u\) 上、径向 dyadic 指标复用等排版问题；本次不把该未清楚定义的 Besov 版本当作已检查的工具。

## Theorem 3.1 实际想证明的内容

令 \(s>\max(d/2,2)\)、\(0<\delta\ll1\)，给一组初值
\((\check g,\check k)\) 以及由 \(Q\in\mathcal Q\subset\mathbb R^{N_{\rm obs}}\)
参数化的另一组初值 \((g_Q,k_Q)\)。\(\mathcal Q\)-admissible 要求：

1. 每个成员解真空约束，并有 \((H^1\cap C^0)\times L^2\) 基本正则性；
2. 具有 \(H^s\times H^{s-1}\) 正则性；
3. \(Q\mapsto(g_Q,k_Q)\) 为 Lipschitz；
4. averaged charge 精确读回 \(Q\)。

源要求的 contravariant、非 unit-normalized angular 分量层级为：

| 分量 | 输入 metric difference | 输入 \(k\) | 声称的输出 metric difference | 声称的输出 \(k\) |
|---|---:|---:|---:|---:|
| \(AB\) | \(\delta^8\epsilon\) | \(\delta^9\epsilon\) | \(\delta^6\epsilon\) | \(\delta^5\epsilon\) |
| \(rA\) | \(\delta^6\epsilon\) | \(\delta^7\epsilon\) | \(\delta^4\epsilon\) | \(\delta^5\epsilon\) |
| \(rr\) | \(\delta^6\epsilon\) | \(\delta^7\epsilon\) | \(\delta^4\epsilon\) | \(\delta^3\epsilon\) |

metric 在 \(\widehat H^s\)，\(k\) 在 \(\widehat H^{s-1}\)；两组输入和整族都须满足相应界，且 \(\epsilon,K\epsilon<\epsilon_c(s)\)。
目标是解约束、在 thickened annulus 的两端分别等于原有两组数据，并允许选择 \(Q\) 来抵消 finite-dimensional obstruction。
它不是任意两组固定 charges 都能拼接的结论。

源 Theorem 3.1 还写
\(B_{\delta^9M_c\epsilon^2}(\check Q)\subset\mathcal Q\)，
但 Step 5 实际使用
\(\operatorname{dist}_w(\check Q,\partial\mathcal Q)>
\delta^6M_c\epsilon^2\)。
这两者的区别会在后面的 closure 检查中保留，不能默默改写 theorem 的假设。

## Graded prolongation：可复算的有限维核心

记 \(F_{ij}=P_R^*f\)、\(M_{ij}=P_M^*Y\)、
\(\alpha_i=\nabla_if\)、\(\eta_{ij}=\nabla_{[i}Y_{j]}\)。
在 constant curvature \(-1\) 上可写为

\[
\begin{aligned}
\nabla_if&=\alpha_i,\\
\nabla_i\alpha_j&=F_{ij}+b_{ij}f,\\
\nabla_iY_j&=\eta_{ij}-M_{ij},\\
\nabla_i\eta_{jk}&=b_{ij}Y_k-b_{ik}Y_j
+\nabla_kM_{ij}-\nabla_jM_{ki}.
\end{aligned}
\]

最后一式显式给出曲率符号，等价于源的 Riemann 记号。
**Checked:** xCoba 对任意三个 covector component functions 计算最后一式，27 个分量 residual 全为零。

变量 \(f,Y\) 的 grade 为 0，\(\alpha,\eta\) 为 \(-1\)；
未知的数目正好分别是 \(d+1\)、\(d+d(d-1)/2\)。
这给出完全可积的 finite-jet transport：在 \(F=M=0\) 时，某点的 augmented data 决定 KID；有 source 时，沿曲线用 source jets 恢复端点数据。该结构支撑 support-preserving integral inverse 的构造。

### 径向与角向 transport

径向的 \((f,\alpha_r)\) 是 \(f''-f=F_{rr}\)，
\(\alpha_A'=\coth r\,\alpha_A+F_{rA}\)；
在 proper length \(O(1)\) 的区间上系数有界。
源以此为局部 inverse 的正则性输入。

对固定 \(r\) 的一条 unit-sphere great circle，取 \(g_{AA}=1\)、
\(\theta(t)=\theta_0-\Omega t\)，\(S=\sinh r,C=\cosh r\)。
Hamiltonian 齐次系统的矩阵为

\[
\frac d{dt}
\begin{pmatrix}f\\\alpha_r\\\alpha_A\end{pmatrix}
=
B_R
\begin{pmatrix}f\\\alpha_r\\\alpha_A\end{pmatrix},
\quad
B_R=
\begin{pmatrix}
0&0&-\Omega\\
0&0&-\Omega C/S\\
-\Omega S^2&\Omega SC&0
\end{pmatrix}.
\]

momentum 的 \((Y_r,Y_A,\eta_{Ar})\) 齐次矩阵为

\[
B_M=
\begin{pmatrix}
0&-\Omega C/S&-\Omega\\
\Omega SC&0&0\\
-\Omega S^2&0&0
\end{pmatrix}.
\]

**Checked:** Mathematica 对两者均给

\[
\det(\lambda I-B)=\lambda(\lambda^2+\Omega^2),\quad
B^3=-\Omega^2B,\quad
e^{tB}=I+\frac{\sin(\Omega t)}{\Omega}B+
\frac{1-\cos(\Omega t)}{\Omega^2}B^2 .
\]

所以不需要粗糙的 \(e^{c/\delta^2}\) Grönwall 估计。
\(B_R^2\) 有 \(O(\delta^{-2})\) 分量；
\(B_M^2\) 具有 \((SC)^2=O(\delta^{-4})\) 的分量。
这是作者 polynomial-loss 思路的具体来源；该有限维检查还没有证明所有 derivative/kernel bounds。

### 恢复公式的精确 sign 检查

源 p.18 的 \(\alpha_A\) equation 是

\[
\alpha_A''+\Omega^2\alpha_A
=-\Omega\,\partial_tF_{AA}-\Omega^2SC\,F_{Ar}
=:\mathcal N(t).
\]

terminal Green solution 应包含
\(\int_1^t\sin(\Omega(t-s))\mathcal N(s)/\Omega\,ds\)。
**Failed:** 印出的 \(\int_t^1\) 版本反号；对常数 \(\mathcal N=1\)，
\((\partial_t^2+\Omega^2)\int_t^1\sin(\Omega(t-s))/\Omega\,ds=-1\)。

再由 \(f'=-\Omega\alpha_A\)，无 source 时正确的是

\[
f(0)=f(1)+\sin\Omega\,\alpha_A(1)
+\frac{\cos\Omega-1}{\Omega}\alpha_A'(1).
\]

源对后两项取了相反符号。取真实 KID
\(f=\sinh r\cos\theta\)，直接代入源恢复式，残差为

\[
4\sinh r\,\sin(\Omega/2)\sin(\theta_1+\Omega/2),
\]

一般不为零；修正式 residual 为零。即使 sign 不改变某些 absolute-value estimates，也会影响“构造的 \(S\) 正好满足 \(PS=I-\Pi\)”的恒等式，不能只引用 bound 跳过它。

## 三个 Bogovskii operators 与 \(\delta\)-bound 链

Prop.3.5 目标是有 support、gain regularity 的

\[
PS h=h-\Pi h,\qquad
\Pi h=\sum_{A=1}^{N_{\rm obs}}w_A\langle Z^A,h\rangle ,
\]

以及

\[
\|S_f\|_{\widehat H^t\to\widehat H^{t+2}}\lesssim\delta^{-2},
\qquad
\|S_Y\|_{\widehat H^t\to\widehat H^{t+1}}\lesssim\delta^{-4}.
\]

构造按三个尺度步骤进行：

1. \(S^1\)：从每个 \(y\) 到同一角方向的 radial-center 小球，使用局部 path average \(\eta_1(y,y_1)\)。声称 \(PS^1=I-B_1\)，\(B_1\) smoothing，先得到 ordinary Sobolev 的 uniform derivative gain。
2. \(S^2\)：把 \(B_1h\) 沿半球上的长角路径送到 north/south averaging patches，\(PS^2B_1=B_1-B_2B_1\)。这里求解振子而非使用指数型 ODE bound。
3. \(S^3\)：另选 chart 覆盖两个 patches，把它们送到同一 patch，令剩余项为全局 KID projection \(\Pi\)，消去两半球 basis 不一致的问题。

若这些 exact identities 都成立，三者相加 telescopes 为 \(I-\Pi\)，compact source 的 correction 保持在 annulus 内；pairing \(\langle Z,B_1h\rangle=\langle Z,h\rangle\) 来自 \(P^*Z=0\) 与 support。不是把两个任意 local charges 直接相加就能完成 global compatibility。

### Lemma 3.6 的 symmetry 推理不够

SO\((d)\)-equivariance 只推出与 infinitesimal rotations 的交换，不能推出与所有 angular vector fields 或每个 tensor component 的 coordinate derivative 交换。
**Checked counterexample to the implication:** \(P_0\) 是球面平均投影，rotation-equivariant 且 infinitely smoothing。取
\(f=\cos\theta\)、\(X=\sin\theta\,\partial_\theta\)，则

\[
P_0(Xf)=-2/3,\qquad X(P_0f)=0 .
\]

所以源 p.17 从 equivariance 得出
\([S^1,\partial_\omega]=0\) 对所有角方向成立的论证不成立。
这没有单独证明所构造的某个 \(S^1\) 不可能有其他更弱的 commutator estimates。
可行的修正方向是使用 rotation generators 定义等价 Sobolev norms、保留 tensor Lie action，并逐项估计 chart coefficients；源的 sharp \(\delta\)-bound 仍需要这一步。

### Lemmas 3.7–3.10 的 smoothing 机制

作者的局部角向 operator 模型为

\[
T_k f(a)=\int \eta(b)\int_0^1
s^kL(s,a,b)
f\!\left(\frac{a-sb}{1-s}\right)
\frac{ds\,db}{(1-s)^{d-1}} .
\]

Lemma 3.7 以 \(D=\partial_a+\partial_b\) 将 derivative 转到 \(\eta\) 和 source，避免反复产生不可积的 \(1/(1-s)\)。
Lemma 3.9 再用角 Fourier 变量 \(\zeta\)，得到示意表达

\[
\widehat T_kf(\zeta)=
\int s^k\widehat\eta(s\zeta-\mu)
\widehat L(s,\lambda,\mu)
\widehat f((1-s)\zeta-\lambda)
\,ds\,d\lambda\,d\mu .
\]

当完整局部 kernel 及其 derivatives 有足够 uniform decay 时，
\(\widehat\eta(s\zeta-\mu)\) 将高频主贡献局限在 \(s=O(|\zeta|^{-1})\)。
先估
\(\int_0^1s^{2k}\langle s|\zeta|\rangle^{-N}ds
=O(|\zeta|^{-2k-1})\)，
再处理第二个 Cauchy–Schwarz 因子，可产生 \(k+1\) 个角向 derivatives。

**Checked, only model scaling:** 对 Gaussian averaging，
\(\int_0^\infty s^ke^{-|\zeta|^2s^2}ds\) 在 \(k=0,1,2\) 分别为
\(\sqrt\pi/(2|\zeta|)\)、\(1/(2|\zeta|^2)\)、\(\sqrt\pi/(4|\zeta|^3)\)。
这支持 \(k+1\) 的局部 order 机制，不是完整 Lemma 3.9 的认证。

源的 Hamiltonian \(Ar\) kernel 含
\(SC\,s^2(\cos(\Omega s)-1)/(\Omega s)^2\)，
\(AA\) kernel 含 \(s\sin(\Omega s)/(\Omega s)\)；
据此分别声称足够的三阶/二阶角 smoothing，避免把局部 inverse 的 \(\delta^{-2}\) 损失再乘一次。
momentum 的 \(Ar\) 最差只有一阶 smoothing，而 \(rr\) 可带 \((SC)^2\)，故声称 \(\delta^{-4}\)。
remainder \(B_{2,f}\) 声称 uniform，\(B_{2,Y}\) 声称 \(\delta^{-2}\)。
commutator 则把 derivative 落到 smooth averaging function；这些 estimate 是高阶正则性的后续输入。

**Not independently verified:** 由所定义 gnomonic maps、所有 chart Jacobians、tensor transport 和 support 得到一致的 \(\widehat L\) decay。源的 gnomonic “向量除法”定义不明确，Fourier proof 的 statement/proof 使用的 Jacobian 次数和 \(\alpha\) 定义也不一致。完整证明需要一套明确的 uniform charts 与密度，不能用上面的 Gaussian integral 代替。Prop.3.11 中还把与 \(r\) 无关的频率 \(\Omega\sqrt{g_{AA}}\) 的 sine kernel 写出一个含 \(\sinh2r\) 的 radial derivative；按它自己的固定角坐标约定该 derivative 应为零，需先澄清参数依赖。

## 坐标版 Hamiltonian 算子不是 tensor double divergence

这是从 geometric identities 到 Steps 4–5 时另一处独立的障碍。源 Lemma 3.4 的证明、(3.19)、(3.21)、(3.24) 把

\[
\nabla_i\nabla_j\sigma^{ij}
\quad\hbox{替换为}\quad
\partial_i\partial_j\sigma^{ij}
-\Gamma^k_{ij}\partial_k\sigma^{ij}.
\]

右侧是把 scalar Hessian 模式套到 tensor components，漏掉了多个 connection 及其导数项。

**Checked / Failed:** 在 \(d=3\) 的 hyperboloid Cartesian coordinates，
\(b_{ij}=\delta_{ij}-x_ix_j/(1+|x|^2)\)，
取 \(\sigma^{ij}=b^{ij}\)。由 \(\nabla b^{-1}=0\)，

\[
P_R\sigma=-3 .
\]

xCoba 对印出的坐标式却得到

\[
P_{\rm print}\sigma=11-\frac2{1+|x|^2},
\qquad
(P_{\rm print}-P_R)\sigma=
14-\frac2{1+|x|^2}\neq0.
\]

可乘任意小参数使 \(\sigma\) 小，差异仍是一阶，不能把它丢进 quadratic remainder。这直接阻断了使用印出 coordinate equations 证明完整约束的路径。修正需要保留完整 \(\nabla_i\nabla_j\) 展开，再审查各 \(\delta\)-权；本次不替作者宣称该修补已经完成。

## 第一个 fixed point：支持、分量层级与非线性

概念上应先定义

\[
(\bar\sigma_Q,\bar\pi_Q)
=(1-\chi)(\sigma_{\rm in;Q},\pi_{\rm in;Q})
+\chi(\sigma_{\rm out;Q},\pi_{\rm out;Q}),
\]

使两端精确 matching。源 (3.20) 的印式为
\((1-\chi)[(\sigma_{\rm in},\pi_{\rm in})+\chi(\sigma_{\rm out},\pi_{\rm out})]\)，
在 \(\chi=1\) 时为零而非外侧数据。
**Failed as printed:** correction 被要求 compactly supported，无法补回这个边界错误。上面的加法是必要的修正候选。

令 \(\mathcal Q_H,\mathcal Q_M\) 为完整的非线性，naive residual 取

\[
F_Q=\mathcal Q_H(\bar\sigma_Q,\bar\pi_Q)-P_R\bar\sigma_Q,\quad
G_Q=\mathcal Q_M(\bar\sigma_Q,\bar\pi_Q)-P_M\bar\pi_Q .
\]

correction 满足

\[
(\widetilde\sigma,\widetilde\pi)=
\bigl(S_f(F_Q+\Delta\mathcal Q_H),
S_Y(G_Q+\Delta\mathcal Q_M)\bigr).
\]

因 \(PS=I-\Pi\)，这个迭代先只能解 projected constraints。声称在 unit picture 中
\(F_Q=O_{H^{s-2}}(\delta^6\epsilon)\)、
\(G_Q=O_{H^{s-2}}(\delta^7\epsilon)\)，
对应 correction 的 ball

\[
\begin{array}{c|ccc}
&rr&rA&AB\\ \hline
\widetilde\sigma\text{ in }H^s&
\delta^4\epsilon&\delta^4\epsilon&\delta^6\epsilon\\
\widetilde\pi\text{ in }H^{s-1}&
\delta^3\epsilon&\delta^5\epsilon&\delta^5\epsilon
\end{array}
\]

以及 componentwise inverse 的损失

\[
\begin{array}{c|ccc}
&rr&rA&AB\\ \hline
S_f&\delta^{-2}&\delta^{-2}&1\\
S_Y&\delta^{-4}&\delta^{-2}&\delta^{-2}
\end{array}.
\]

在这些 estimate **作为前提** 时，low-order power counting 是有意义的：

| 示意 worst term | 输入幂减 coefficient conversion | source 幂 |
|---|---:|---:|
| \(\sigma^{AB}\sigma^{CD}\)（Hamiltonian） | \(6+6-4\) | 8 |
| \(\sigma^{rA}\sigma^{rB}\) | \(4+4-2\) | 6 |
| \(\pi^{rr}\pi^{rr}\) | \(3+3\) | 6 |
| \(\pi^{AB}\pi^{CD}\) | \(5+5-4\) | 6 |
| \(\sigma^{rr}\pi^{rr}\)（momentum） | \(4+3\) | 7 |
| \(\sigma^{AB}\pi^{CD}\) | \(6+5-3\) | 8 |

故 worst sources 的 \(\delta^6\epsilon^2,\delta^7\epsilon^2\)
经 component inverse 后回到该 ball。Mathematica 只检查了这张幂次算术；没有证明被省略的全体 tensor terms 都符合所给 coefficient bounds。
尤其前面缺失的 \(O(\sigma^2)\) curvature 项与坐标连接项必须纳入。

Moser/product estimates 的目标是以 \(s>\max(d/2,2)\) 控制
\(\sigma\nabla^2\sigma\in H^{s-2}\)、
\(\pi\pi\in H^{s-2}\)、
\(\sigma\nabla\pi\in H^{s-2}\)。
要得到 contraction，使用各分量除以其 ball 权重的 maximum norm，而不是直接把 raw difference norm 前乘 \(\delta^6\epsilon\)。
在修正后的几何和 inverse estimates 未成立前，本文第一 fixed point 仍为 **Source-derived / conditional**。

## 第二个 fixed point：charge mismatch 与 theorem 假设的缺口

用 KIDs pairing 及 corrected averaged flux，projected solution 的 obstruction 应为

\[
\mathbf Q_{\rm in}-\mathbf Q_{\rm out}+n[Q].
\]

对 exterior gluing，
\(\mathbf Q_{\rm in}=\check Q,\mathbf Q_{\rm out}=Q\)，
所以要解

\[
Q=\check Q+n[Q].
\]

源声称 \(n_H=O(\delta^6\epsilon^2)\)、
\(n_M=O(\delta^5\epsilon^2)\)，以及 Lipschitz matrix

\[
\epsilon
\begin{pmatrix}1&\delta\\\delta^{-1}&1\end{pmatrix}.
\]

**Checked, conditional algebra:** 设
\(|Q|_w=|Q_H|+\delta|Q_M|\)，\(W=\operatorname{diag}(1,\delta)\)，则

\[
W\begin{pmatrix}1&\delta\\\delta^{-1}&1\end{pmatrix}W^{-1}
=\begin{pmatrix}1&1\\1&1\end{pmatrix}.
\]

因此 matrix bookkeeping 的确允许 \(\delta\)-independent contraction constant（吸收常数后要求 \(K\epsilon\) 足够小），
并给 \(|n[Q]|_w=O(\delta^6\epsilon^2)\)。
这个代数不认证声称的 source pairing bounds，特别是 scalar KID 的实际 \(O(\delta^{-1})\) 尺寸。

**Not proven — ball closure:** theorem p.9 的
\(B_{\delta^9M_c\epsilon^2}(\check Q)\subset\mathcal Q\)
不能推出 proof p.35 使用的 weighted distance
\(>\delta^6M_c\epsilon^2\)。
单独检验该逻辑：取 \(\delta=0.1,M_c\epsilon^2=1\)，
\(\mathcal Q=(-2\delta^9,2\delta^9)\)、\(\check Q=0\)，
以及常值 \(n(Q)=\delta^6/2\)。小 ball 条件、所声称的 \(n\) 大小界和零 Lipschitz constant 都成立，但 map 不能留在 \(\mathcal Q\)。
这不是 GR gluing 的 counterexample；它说明引用的 bounds 不足以完成当前 theorem 的 fixed-point closure。
修正候选是以一致的 KID/charge normalization 明确假设一个足够大的 weighted ball，再重新推导其半径。

## 更高正则性与 Appendix B 的依赖

Prop.3.2 对 differentiated fixed-point equation 写

\[
(I-SD\mathcal Q)\,\partial^\alpha
(\widetilde\sigma,\widetilde\pi)
=S\partial^\alpha(F,G)+[\partial^\alpha,S](F+M,G+N)
+\text{lower derivative terms}.
\]

源以 inverse/commutator bounds 得 forcing 损失 \(\delta^{-6}\)；
unweighted component estimate 的最坏系数为
\(\delta^{4-2-4}\epsilon=\delta^{-2}\epsilon\)，
故额外取 \(\epsilon=\delta^2\epsilon_c\) 来吸收，或改用带更差常数的 rescaled norm。
这是 persistence of regularity 的方案，不是从有限阶解自动推出无条件 smoothness。
本次没有证明修正几何下的完整 commutator bounds，故不把该 persistence 命题标成 Checked。

Appendix B 的技术输入可分为：

| 输入 | 作用及需保留的条件 |
|---|---|
| Theorem B.1 | recovery kernel 的局部 integrability、order \(-m_K\) symbol bounds；控制 path-speed \(A_x\)、source coefficient \(A_S\)、averaging \(A_\eta\) 及其有限阶 derivatives |
| Lemma B.2 | \(y\)-dependent averaging 后 \(B_\eta\) smoothing，support 落在 averaging patch；需要 path/star-shaped 与全套 smoothness 条件 |
| Theorem B.3 | connected bounded domain 上的 inverse modulo finite cokernel；利用有限秩逼近/patch compatibility |
| Theorem B.4 | \(\eta=\eta(y_1)\)、完全可积、path-star-shaped 时把剩余项明确写为 \(\sum w_A\langle Z^A,\cdot\rangle\)，同时给 support 和 quantitative norm |

**Blocked as quoted:** B.1 p.38 还印出
\(\bar U\cap\overline{\bigcup_{y\in U}\operatorname{supp}_{y_1}\eta(y,y_1)}
=\varnothing\)，
而 §3.1 的 \(\eta_1\) 明确支撑在 annulus \(U\) 内，不能满足它。
引用外部正确版本或说明此条件适用的局部集合，是运用该定理前的必要步骤。B.3 的 strict open-set inclusion 也需要区分 source compact support 与 domain closure 的端点。没有因为外部 theorem 名称存在，就把本文的适用条件判为成立。
本次按用户日更边界没有展开成对 ref.[19] 的另一篇全文审计。

## Global equation ledger and local use

\[
\begin{aligned}
&\text{Einstein constraints around }(b,0)
\longrightarrow \text{trace-shifted }P,\\
&P^*\text{ 的 finite jets}
\longrightarrow \text{KIDs / Green flux}
\longrightarrow \text{recovery on curves},\\
&\text{local smoothing + long angular transport + global cokernel patch}
\longrightarrow S,\Pi,\\
&\text{component bounds + nonlinear ball}
\longrightarrow \text{projected constraint solution},\\
&\text{averaged charge mismatch}
\longrightarrow Q\text{ fixed point}
\longrightarrow \text{unprojected gluing}.
\end{aligned}
\]

最后三条箭头依赖 source 中尚未修正的 coordinate、kernel、charge-normalization 和 closure 问题。不能在后续计算中引用其 \(\delta^{-2}/\delta^{-4}\) inverse 与 improved smallness 当作本次已经确立的输入。

对当前 regional/AdS 工作，可以可靠抽出的结构是：
先明确约束 adjoint kernel，写出 invariant flux pairing，知道需要调哪些 finite-dimensional data 才能消除 localized constraint obstruction。
这与“区域 CPS 上可直接 sewing states/observables”仍有距离；还需 action 的 boundary completion、允许变分、gauge quotient 和 symplectic compatibility。
若要使用本文作为 AdS 初值构造的定量工具，应先修正 annulus 模型，保留完整 tensor covariant operator，并重作 uniform inverse/charge estimates。

## Verification record

- **Verified / Checked:** \(d=3\) xPert trace-shifted scalar operator；任意 \(\sigma,V\) 的 Green identity；精确 hyperbolic cylinder 中四个 static KIDs；hyperboloid Cartesian 中六个 Killing fields；任意 covector 的 27 个 prolongation 分量；两个 angular transport matrices 的 characteristic polynomial 与 cubic identity；局部 model smoothing order、component 幂次算术、weighted Lipschitz similarity transform。
- **Assumptions:** constant-curvature spatial background、\(k_{\rm bg}=0\)、负 \(\Lambda\)；background raising/traces 与体积；所有 \(\delta\)-dependent norms、charts、分量和 charge basis 必须一致；CAS 的 explicit tensor checks 在 \(d=3\)，不是全维数 PDE 证明。
- **Failed:** round-sphere Kottler 曲率参数；annulus 尺度/坐标 transport；(3.6) 的 \(V_0\)；坐标版 tensor double divergence；p.18 的 terminal Green/recovery signs；Appendix A 缺少 algebraic curvature quadratic term；(3.20) 的外边界 matching；averaging 平移方向。均给出了明确 witness 或 residual。
- **Not proven by the source argument:** rotation equivariance 推出所有 angular derivatives commute；theorem 的 \(\delta^9\) ball 足以闭合 proof 的 \(\delta^6\) weighted fixed point。
- **Blocked:** Appendix B quoted hypothesis 与 chosen support 不相容；完整 uniform chart/kernel/cokernel-normalization bounds 缺少一致的定义链。没有未解决的检索或 CAS 服务故障。
- **Not independently verified:** Theorem 3.1 的 quantitative improvement、全维数 nonlinear gluing、完整 Lemma 3.9 和 Prop.3.11、persistence of regularity 的最终常数及 generalized Kottler 的推广。

全文 TeX 与 PDF text 已检查，pp.3、5、7、9、12、17、18、21、30、34、36、38 已渲染核对关键公式。检索及 CAS 日志在 vault 外临时目录。发现的问题属于源公式/推理边界；本笔记没有改写原论文，也没有编辑任何旧文献笔记。
