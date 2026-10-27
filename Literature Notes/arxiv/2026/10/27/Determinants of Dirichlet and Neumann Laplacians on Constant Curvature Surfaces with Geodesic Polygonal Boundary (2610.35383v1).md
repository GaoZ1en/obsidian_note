---
paper id: 2610.35383v1
title: Determinants of Dirichlet and Neumann Laplacians on Constant Curvature Surfaces with Geodesic Polygonal Boundary
authors:
  - Victor Kalvin
publication date: 2026-10-26T13:05:02
abstract: |-
  Dirichlet and Neumann zeta determinants on a compact constant-curvature surface with geodesic polygonal boundary are reconstructed from the determinant on its conical double. Their ratio is fixed by a Reidemeister-to-L2 torsion quotient and explicit corner-angle factors. A relative BFK identity controls the parity restrictions and the constant zero mode; applications include Euclidean polygons and curved triangles.
comments: "Official comments field empty; inspected PDF: 30 pages."
url: https://arxiv.org/abs/2610.35383v1
summary: "A determinant gluing formula with explicit corner and cohomology factors, reconstructed through radial modes, relative jump operators and zero-mode limits."
tags: []
---

[[2026_10_27_overview|2026-10-27 overview]]

Reason codes: `T1-boundary; T2-spectral; T3-math`.

主结果把有限区域上的两种边界谱分开算清楚。设
\(D_X=\det{}'\Delta_{X,m}\) 是 closed conical double 的非零模行列式，
\(A=\operatorname{Area}(M,m)\)，
\(Q=\|v\|_{\tau_0}^2/\|v\|_{L^2\text{-det}}^2\)，则

\[
\boxed{
D_D=\left(\frac{D_X}{Q}\right)^{1/2}
\prod_j\alpha_j^{1/4},
\qquad
D_N'=(D_XQ)^{1/2}\prod_j\alpha_j^{-1/4}.
}
\]

角点的实际内角为 \(\pi\alpha_j\)。独立检查通过了局部径向 reduction、角点比值的代数链、square/cylinder/hemisphere 三种谱与拓扑测试；没有把一般 Fredholm/trace-class 和 torsion 比较定理当作 CAS 已证明的结果。

## Source tree and reading guide

官方 PDF 共 30 页、无附录。七节及各主要 lemma/proposition 已完整检查。

| 源位置 | 目的、关键式与后续依赖 |
|---|---|
| §1，pp.1–4，Theorem 1.1 | double、Friedrichs 域、determinant line，最终的乘积与比值 |
| §2，pp.4–8，Prop.2.1，(2.1)–(2.8) | 固定小圆盘内平滑 conical metric；奇偶角模相消，只剩径向零角模 |
| §3，pp.8–14，Lemma 3.1，(3.1)–(3.25) | relative Neumann jump 的 trace-class analyticity 与大 spectral parameter 归一化 |
| §4，pp.14–19，Prop.4.1，(4.1)–(4.11) | 用 resolvent/relative zeta contour 证明 parity-restricted relative BFK |
| §5，pp.19–25，Prop.5.1，Lemmas 5.2–5.4 | \(\lambda\to0\)、偶零模面积因子、smooth torsion calibration，完成主定理 |
| §6，pp.25–26，(6.1) | torsion quotient 的 harmonic Gram 表达；直接在 conical cut 上定义 jump determinant 的限制 |
| §7，pp.26–28，(7.1)–(7.5) | Aurell–Salomonson 多边形公式、曲率非零的三角形及 stationarity |
| References，pp.28–30 | Lesch、BFK、Lück–Vishik、已有 closed-double determinant 的输入 |

若只想使用公式，读 Theorem 1.1、§6 的 Gram matrix 和下面的独立 square/cylinder 检查；要理解 corner exponent，§2 不可省；要确定零模及 gluing normalization，需读 §§3–5。本文没有用“单个奇偶 jump 的大质量渐近”去猜常数，而是先作 relative comparison。

## 空间、反射、operator domain 和零模

\(M\) 是连通 compact Riemann surface，genus \(g\)，有
\(\ell\geq1\) 个 boundary components。metric \(m\) 在内部光滑、曲率常数 \(K\)，边界除有限 vertices 外均为 geodesic，所有
\(\alpha_j>0\)。double

\[
X=M\cup_{\partial M}\overline M,\qquad
g_X=2g+\ell-1
\]

把每个 boundary corner 变为总角 \(2\pi\alpha_j\) 的 cone point。
\(\iota\) 是交换两半的 isometric antiholomorphic involution。
geodesic-edge 假设使普通边界点的反射 metric 光滑，不能直接换成有任意 geodesic curvature 的截断边界。

使用非负 Laplacian。\(X\) 上取 cone points 处的 Friedrichs extension；
\(M\) 上分别取 Dirichlet 和 natural Neumann form domains，并在 vertices 取 Friedrichs 类型行为。特别是径向临界模式保留 regular branch，排除 logarithmic branch。
这里的 Neumann 域不能理解成只把 interior \(C_c^\infty\) 的 quadratic form 作闭包；后者会给 Dirichlet 域。

本笔记统一写 prime：

\[
\zeta_\Delta(s)=\sum_{\lambda_k>0}\lambda_k^{-s},
\quad \Re s>1,\qquad
\det{}'\Delta=\exp[-\partial_s\zeta_\Delta(0)]
\]

其中 \(s=0\) 值由 analytic continuation 定义。
\(D_D=\det\Delta^D\) 没有零模；
\(D_N'=\det{}'\Delta^N\)、\(D_X=\det{}'\Delta_X\) 各删掉一个 constant zero mode。
源对这些行列式统一写 \(\det\)，prime 是其定义中已有的删模，而非额外 subtraction。

反射 projectors

\[
\Pi^D=\frac12(I-\iota^*),\qquad
\Pi^N=\frac12(I+\iota^*)
\]

把 closed spectrum 分为 odd/Dirichlet 和 even/Neumann。
在 \(\Re s>1\) 的收敛区域先有
\(\zeta_X=\zeta_D+\zeta_N\)，再延拓，所以

\[
D_X=D_DD_N'.
\]

这是一个直接谱直和分解，没有把两个独立 regularized operators 相乘而引入未知的 multiplicative anomaly。

### 全局符号与 regulator 字典

| 符号 | 含义及保留条件 |
|---|---|
| \(\epsilon>0,\mathcal U^j\) | 互不相交的固定小圆盘；不是最后必须取零的 cutoff |
| \(m,\widetilde m\) | 原 conical metric 与同一 conformal class 中的局部 rotational smoothing；两者在圆盘 cuts 的固定 collar 完全相同 |
| \(\beta\) | 局部 \(f(r)\sim\beta r\) 的 cone coefficient；原 metric 为 \(\alpha_j\)，smoothed 为 1 |
| \(\lambda>0\) | spectral mass shift，先保证所有 jump operators 可逆；之后才取 \(\lambda\to0^+\) |
| \(s\) | zeta analytic regulator；收敛区域先配对/相消，再延拓到 0 |
| \(R_h(\lambda)\) | 小圆盘 cuts 上的 Neumann jump，不是原 polygon 边界上的 DtN |
| \(T(\lambda)=R_{\widetilde m}R_m^{-1}\) | \(I+\) trace-class 的 relative jump，用 Fredholm determinant |
| \(Q\) | torsion-to-\(L^2\) determinant-line squared norm quotient；一般不是面积 |

## Cohomology 因子为何不能丢掉

普通 de Rham cohomology 配 complex coefficients：

\[
H^0(M)=\mathbb C,\quad
\dim H^1(M)=2g+\ell-1,\quad H^2(M)=0.
\]

作者沿用的 determinant-line convention 是

\[
\det H^\bullet(M)=(\det H^0(M))^{-1}\otimes\det H^1(M).
\]

\(H^1\) 由 absolute harmonic forms 表示：
\(d\omega=d(*\omega)=0\)，且 \(*\omega\) 在边界的 pullback 为零。
\(H^0\) 常数函数的 squared norm 为 \(A\)。

选择由 cellular collapse 给出的 integral cycles \(\gamma_i\)，令
\(\int_{\gamma_i}\omega_j=\delta_{ij}\)，定义

\[
G_{ij}=\int_M\omega_i\wedge*\overline{\omega_j}.
\]

对 \(v=1^{-1}\otimes\bigwedge_j[\omega_j]\)，源 §6 的 combinatorial normalization 给
\(\|v\|_{\tau_0}^2=1\)，而

\[
\|v\|_{L^2\text{-det}}^2=\frac{\det G}{A},\qquad
Q=\frac{A}{\det G}.
\]

empty Gram determinant 取 1，因此 disk 才有 \(Q=A\)。
这个约定也决定全局 constant zero mode 的 area normalization；
不先指定 cohomology basis/norm 就写“determinant ratio 等于面积”会遗漏拓扑数据。

## §2：局部平滑如何只留下一个径向行列式

在 cone vertex 附近，constant curvature 与初值
\(\mathsf s_K(0)=0,\mathsf s_K'(0)=1\) 使 metric 写成

\[
m=dr^2+\alpha_j^2\mathsf s_K(r)^2d\theta^2,
\quad \theta\sim\theta+2\pi,
\]

\[
\mathsf s_K(r)=
\begin{cases}
\sin(\sqrt K r)/\sqrt K,&K>0,\\
r,&K=0,\\
\sinh(\sqrt{-K}r)/\sqrt{-K},&K<0.
\end{cases}
\]

**Checked:** xCoba 对 \(dr^2+f(r)^2d\theta^2\) 给
\(R=-2f''/f\)，故 Gaussian curvature 是 \(-f''/f\)；
对任意 radial \(u\) 和角波数 \(k\)，非负 scalar Laplacian 精确为

\[
L_k=-\frac1f\partial_r(f\partial_r)+\frac{k^2}{f^2}.
\]

先固定 \(\epsilon\) 和 disk boundary，再用 conformal radius

\[
\rho(r)=\exp\!\left[-\int_r^\epsilon
\frac{dt}{\alpha_j\mathsf s_K(t)}\right],
\qquad
m=\rho^{2\alpha_j-2}e^{2\phi(\rho)}|dz|^2,\quad z=\rho e^{i\theta},
\]

用 cutoff 将 conformal factor 在 vertex 附近改成平的，靠近
\(\rho=1\) 完全不变。smoothed metric \(\widetilde m\) 一般不再 constant-curvature；证明不要求它仍然 constant-curvature。

reflection \(\theta\mapsto-\theta\) 的 odd modes 是
\(\sin k\theta,\ k\geq1\)，even modes 是 \(1,\cos k\theta\)。
disk 外圆在两种 parity 中都施加 Dirichlet；quotient sector 的两条径向边才分别是 D 或 N。因此

\[
\Delta_{\mathcal U,h}^D\simeq\bigoplus_{k\geq1}L_k,\qquad
\Delta_{\mathcal U,h}^N\simeq L_0\oplus\bigoplus_{k\geq1}L_k,
\]

\[
\zeta_{\mathcal U,h}^{D,N}
=\tfrac12(\zeta_{\mathcal U,h}\mp\zeta_{0,h}),\qquad
F_j(h):=\frac{\det\Delta_{\mathcal U,h}^N}
{\det\Delta_{\mathcal U,h}^D}=\det L_0 .
\]

这里的 \(L_0\) 没有全局 constant zero mode，因为在 outer arc 有 Dirichlet 条件；“零角模”不是“零 eigenvalue”。

### Unitary reduction 与 critical endpoint

作 \(y=\sqrt f\,u\)，使
\(L^2(f\,dr)\to L^2(dr)\)，则

\[
H_f=-\partial_r^2+\frac{(\sqrt f)''}{\sqrt f}.
\]

若 \(f(r)=\beta r(1+r^2a(r))\)，则 potential 为
\(-1/(4r^2)+V_f(r)\)，\(V_f\) 光滑。
\(\nu_0=0\) 的 Friedrichs branch 是 \(y\sim\sqrt r\)，不是
\(\sqrt r\log r\)。normalized zero-energy solution 为

\[
\phi_f(r)=\sqrt{f(r)/\beta}.
\]

regular outer endpoint 的 terminal solution 满足
\(\psi_f(\epsilon)=0,\psi_f'(\epsilon)=-1\)，所以
\(W(\psi_f,\phi_f)=\phi_f(\epsilon)\)。
Lesch 的 regular-singular determinant formula 给

\[
\det H_f=
\frac{\pi W}{2^{1/2}\Gamma(1)\Gamma(3/2)}
=\sqrt{2\pi}\sqrt{\frac{f(\epsilon)}{\beta}}
=\sqrt{\frac{\operatorname{Length}(\partial\mathcal U,h)}{\beta}}.
\]

两种 metrics 在 cut collar 相同，boundary lengths 相同，故

\[
\frac{F_j(m)}{F_j(\widetilde m)}=\alpha_j^{-1/2}.
\]

**Checked:** Mathematica 检查 unitary conjugation、\(H_f\phi_f=0\)、
Gamma/endpoint coefficient 和上述 ratio，残差均为零。
对 \(f=\sin r\)、\(\sinh r\)，potential 分别为
\(-[1+\csc^2r]/4\)、\([1-\operatorname{csch}^2r]/4\)；
二者近零点均有相同 critical \(-1/(4r^2)\) 主部。
一般 Lesch 定理仍是外部 analytic 输入，不能用检查一个 zero-energy solution 代替它。

### 独立恢复 flat critical radial constant

对 flat cone，\(L_0\) 的 eigenvalues 是 \(j_{0,n}^2/\epsilon^2\)，
与 \(\beta\) 无关。由 \(I_0(t)=\prod_n(1+t^2/j_{0,n}^2)\)，

\[
\zeta_{0,1}(s)=\frac{\sin\pi s}{\pi}
\int_0^\infty t^{-2s}\frac{I_1(t)}{I_0(t)}dt,
\qquad \tfrac12<\Re s<1 .
\]

将积分在 1 分开，并在大 \(t\) 段减去 \(1-1/(2t)\)，得到
\(\zeta_{0,1}(0)=-1/4\)，及

\[
\zeta_{0,1}'(0)=
\lim_{t\to\infty}
\left[\log I_0(t)-t+\tfrac12\log t\right]
=-\tfrac12\log(2\pi).
\]

Mathematica 的 Bessel asymptotic limit 给此精确常数；有限
\(t=20,80,320\) 的表达式分别为
\(-0.912523435,-0.917366138,-0.918547296\)，只作为向极限的有限检查。
保留 \(\epsilon\)-scale 后
\(\zeta_{0,\epsilon}(s)=\epsilon^{2s}\zeta_{0,1}(s)\)，所以

\[
\det L_0=\sqrt{2\pi\epsilon}.
\]

这独立核对 flat 情形的绝对 radial constant，且说明不能把有限谱乘积或未减去大 \(t\) 主部的积分当作 zeta determinant。

## §3：relative jump 的 trace-class 结构

把所有小圆盘记为 \(\mathcal U=\bigcup_j\mathcal U^j\)，
\(X_\epsilon=X\setminus\operatorname{Int}\mathcal U\)。
对 \(h=m,\widetilde m\)，解

\[
(\Delta_h+\lambda)u_h=0
\quad\text{on }X\setminus\partial X_\epsilon,\qquad
u_h|_{\partial X_\epsilon}=\varphi ,
\quad \lambda>0 .
\]

\(\nu\) 从 disks 指向 exterior，jump 取

\[
R_h(\lambda)\varphi=
\partial_\nu u_h|_{\mathcal U}
-\partial_\nu u_h|_{X_\epsilon}.
\]

这个 sign 使 real \(\lambda>0\) 的 \(R_h\) 为正。
两 metrics 的 common collar 固定 boundary density、normal、Sobolev spaces。
\(R_h:H^1\to L^2\) 是 first-order elliptic，且与 reflection projectors 交换。定义

\[
T(\lambda)=R_{\widetilde m}(\lambda)R_m(\lambda)^{-1},
\quad
T=T^D\oplus T^N .
\]

选择 \(\chi=1\) 于 cut 附近、\(\chi=0\) 于两 metrics 不同处；
再选 \(\eta\) 支持在 commutator 附近，避开 cuts 和 cone points。
由 Poisson/resolvent identity 得

\[
T-I=
-\bigl[\partial_\nu(\Delta_{\mathcal U,\widetilde m}+\lambda)^{-1}\eta\bigr]
[\Delta_m,\chi]\,
\bigl[\eta(\Delta_m+\lambda)^{-1}
(\,\cdot\,\otimes\delta_{\partial X_\epsilon})\bigr].
\]

Lemma 3.1 的证明在固定 sector
\(S_\delta=\{\Re\lambda>0,|\Im\lambda|<\delta\Re\lambda\}\) 中逐项控制：

- boundary trace 把 \(L^2(\partial X_\epsilon)\) 放入 form-dual \(H^{-1}(X,m)\)；spectral theorem 给右 resolvent factor 到局部 \(H^1\) 的 uniform bound。
- commutator 是 away from vertex/cut 的一阶 smooth operator，\(H^1\to L^2\)。
- 左 resolvent 的 source 与 boundary separated；用 \(2n+2\) 次 nested collar estimates 每次获得 \(|\lambda|^{-1/2}\)，再提高到 \(H^4\)，normal trace 后可落入 boundary \(H^2\)。
- cut 是一维，\(H^2\hookrightarrow L^2\) 的 embedding trace-class；由 ideal property 得 \(\|T-I\|_{\mathfrak S_1}\leq C_n|\lambda|^{-n}\) 对每个 \(n\)。

同样的估计可直接限制到 D/N parity，因此

\[
\det_FT^\sharp(\lambda)\to1,\qquad
\log\det_FT^\sharp(\lambda)\to0
\]

并且 logarithm 的这条 branch 在整个 sector 中固定。
这是 relative normalization 的关键。每个 \(C_n\) 依赖固定的 smoothing/collar；论文不主张该估计在 \(\epsilon\to0\) 时一致。
本次重建了 estimates 的依赖链，没有把一般 trace-class/elliptic estimates 标成 machine-verified。

## §4：relative BFK 恒等式及 contour 常数

Poisson extension \(\mathcal P_h(\lambda)\) 与 jump 满足

\[
(\Delta_h^\sharp+\lambda)^{-1}
-(\Delta_{\partial X_\epsilon,h}^\sharp+\lambda)^{-1}
=\mathcal P_h(R_h^\sharp)^{-1}\mathcal P_h^* ,
\]

\[
\partial_\lambda R_h^\sharp
=\mathcal P_h^*(\bar\lambda)\mathcal P_h(\lambda).
\]

这里 \(\Delta_{\partial X_\epsilon,h}\) 是沿 small-circle cuts 施加 Dirichlet 后的 disconnected operator。两 resolvent 的差是 trace-class，trace cycling 给

\[
\operatorname{Tr}\bigl[
(\Delta_h^\sharp+\lambda)^{-1}
-(\Delta_{\partial X_\epsilon,h}^\sharp+\lambda)^{-1}
\bigr]
=\operatorname{Tr}[(\partial_\lambda R_h^\sharp)(R_h^\sharp)^{-1}].
\]

先取 smooth/conical 两种 metric 的差，再引入 relative zeta：

\[
\zeta_{\rm rel}^\sharp=
(\zeta_{\widetilde m}^\sharp-\zeta_{\partial,\widetilde m}^\sharp)
-(\zeta_m^\sharp-\zeta_{\partial,m}^\sharp).
\]

在 \(\Re s>1\) 已绝对收敛时，common exterior \(X_\epsilon\) 的 spectral series 先相消，剩下 disks。不能先分别给每个 cornered exterior determinant 赋值，再假设未知 constants 抵消。

对绕 \([\lambda,\infty)\) 的 clockwise contour \(\mathcal C_\lambda\)，

\[
\zeta_{\rm rel}^\sharp(s;\lambda)=
-\frac{s}{2\pi i}\int_{\mathcal C_\lambda}
(\lambda-\mu)^{-s-1}\log\det_FT^\sharp(\mu)\,d\mu.
\]

大 \(\mu\) decay 消去 integration-by-parts boundary terms；
在 \(s=0\) 延拓后，clockwise Cauchy formula 给

\[
\partial_s\zeta_{\rm rel}^\sharp(0;\lambda)
=-\log\det_FT^\sharp(\lambda).
\]

因此 Prop.4.1 的精确恒等式是

\[
\boxed{
\frac{\det(\Delta_{\widetilde m}^\sharp+\lambda)}
{\det(\Delta_m^\sharp+\lambda)}
\frac{\det(\Delta_{\mathcal U,m}^\sharp+\lambda)}
{\det(\Delta_{\mathcal U,\widetilde m}^\sharp+\lambda)}
=\det_FT^\sharp(\lambda).
}
\]

没有未定的额外 BFK constant。

**Checked, finite analogue only:** 用
\(A_a(\lambda)=\begin{pmatrix}a+\lambda&1\\1&5+\lambda\end{pmatrix}\)，
interior block \(a+\lambda\)、Poisson column
\(P=(-1/(a+\lambda),1)^T\)、Schur jump
\(R_a=5+\lambda-1/(a+\lambda)\)，Mathematica 精确复现
\(A_a^{-1}-\operatorname{diag}((a+\lambda)^{-1},0)=PR_a^{-1}P^T\)、
\(R_a'=P^TP\)，以及两种 \(a\) 的 relative determinant 恒等式。
这是 sign/order 的有限矩阵检查；连续谱的 trace-norm analyticity 和 contour continuation 仍依赖上述 analytic proof。

## §5：偶零模留下的面积因子

二维 harmonic equation conformally invariant，且 cuts collar 相同，故

\[
R_m(0)=R_{\widetilde m}(0).
\]

odd sector 没有 constant harmonic function，因此 \(R^D(0)\) 可逆，
\(T^D(0)=I\)，\(\det_FT^D(\lambda)\to1\)。

even sector 的 kernel 恰是一维常数。设趋于零的 jump eigenvalue 为
\(\mu_h^N(\lambda)\)，用
\(R_h'(0)=\mathcal P_h^*(0)\mathcal P_h(0)\) 配对 boundary constant：

\[
\mu_h^{N\,\prime}(0)\operatorname{Length}(\partial X_\epsilon)
=\|\mathcal P_h(0)1\|_{L^2(X,h)}^2
=\operatorname{Area}(X,h).
\]

因此

\[
\mu_h^N(\lambda)=
\lambda\,\frac{\operatorname{Area}(X,h)}
{\operatorname{Length}(\partial X_\epsilon)}
+O(\lambda^2).
\]

source 进一步保留 Riesz projector：

\[
(R_m^N(\lambda))^{-1}
=\frac{L_\epsilon}{\lambda A_X(m)}\mathsf P^N+G_m(\lambda),
\]

其中 \(G_m\) analytic。于是 \(T^N-I\) 的极限是 rank one，
Fredholm determinant lemma 给

\[
\lim_{\lambda\to0}\det_FT^N(\lambda)
=\frac{A_X(\widetilde m)}{A_X(m)} .
\]

**Checked, rank-one algebra:** 对具有共同零阶矩阵
\(\operatorname{diag}(0,2,3)\) 的
\(R_m=\operatorname{diag}(0,2,3)+\lambda B_m\)、
\(R_{\widetilde m}=\operatorname{diag}(0,2,3)+\lambda B_{\widetilde m}\)，
允许非零 off-diagonal entries，精确矩阵极限可不是 diagonal，
但其 determinant 仍为
\((B_{\widetilde m})_{00}/(B_m)_{00}\)。
这核对了 projector/rank-one 步骤，不能仅把两个 singular inverses 当作在零点的普通 inverse 相除。

global shifted determinants 同时满足

\[
\det(\Delta_h^D+\lambda)\to D_D(h),\qquad
\det(\Delta_h^N+\lambda)=\lambda D_N'(h)(1+o(1)).
\]

relative zeta 中两个 \(\lambda^{-s}\) constant-mode contributions 先抵消。然后可把 contour 在零点附近作统一变形，locally uniformly 延拓 \(s\to0\)，再通过
\(\lambda\to0^+\) 获得 Prop.5.1：

\[
\frac{D_D(m)}{D_D(\widetilde m)}
=\frac{D_{D,\mathcal U}(m)}{D_{D,\mathcal U}(\widetilde m)},
\]

\[
\frac{D_N'(m)/A_X(m)}
{D_N'(\widetilde m)/A_X(\widetilde m)}
=\frac{D_{N,\mathcal U}(m)}{D_{N,\mathcal U}(\widetilde m)}.
\]

面积因子来自 jump 的小 eigenvalue，不是临时添加的零模“renormalization”。

## Smooth torsion calibration 与最终合成

先在 product collar 的 smooth metric \(m_0\) 上用 Lück–Vishik 比较。
absolute de Rham spectra 的非零部分满足

\[
\zeta_0=\zeta_N,\qquad
\zeta_1=\zeta_N+\zeta_D,\qquad
\zeta_2=\zeta_D.
\]

源 convention 的 analytic torsion squared norm 是

\[
\|v\|_{T_0}^2=
\|v\|_{L^2\text{-det}}^2
\exp\!\left[\sum_{q=0}^2(-1)^qq\zeta_q'(0)\right]
=\|v\|_{L^2\text{-det}}^2\frac{D_N'}{D_D}.
\]

与 combinatorial norm 比较后，
smooth case 得 \(D_N'/D_D=Q\)。
再用 Polyakov/Polyakov–Alvarez comparison 及二维
\(H^1\) norm 的 conformal invariance，把这个 calibration 传给
\(\widetilde m\)；\(H^0\) 的 area 变化必须保留。

最后 combine §2 和 Prop.5.1：

\[
\frac{D_N'(m)}{A(m)D_D(m)}
=
\frac{D_N'(\widetilde m)}
{A(\widetilde m)D_D(\widetilde m)}
\prod_j\alpha_j^{-1/2},
\]

\[
\frac{D_N'(m)}{D_D(m)}=Q\prod_j\alpha_j^{-1/2}.
\]

与 \(D_X=D_DD_N'\) 联立，即得开头两个 \(\pm1/4\) exponents。
Mathematica 检查联立后的 product 和 ratio，两个 residual 为零。
一般 torsion 比较、conical Hodge/domain 理论与 Polyakov 公式是 **Source-derived analytic inputs**，没有通过几次 determinant 代数就变成独立证明。

### 极限与 regularization 的次序

1. 固定 \(\epsilon\)、cuts 和两 metrics 的 common collar；定义 compact Friedrichs operators。
2. 先在 \(\Re s>1,\lambda>0\) 构造 relative spectral series，消去 common exterior。
3. 用 \(|\lambda|\to\infty\) 的 trace-class decay 固定 \(\log\det_FT\to0\) 的 branch 和 relative constant。
4. 用 contour continuation 定义 \(s=0\) 的 relative zeta derivative。
5. 分离 even constant mode，在 relative expression 中抵消 \(\lambda^{-s}\)，再取 \(\lambda\to0^+\) 并删去 global zero eigenvalue。
6. \(\epsilon\) 不需要趋于零：在任意允许的固定 disks 内，所有 smoothing dependence 已在 relative ratios 中消去。没有声称不同 limits 可随意交换。

## §6：torsion、DtN 与 corner cuts 的区别

对 smooth reflection-invariant metric，沿真正的 \(\partial M\) 切 double，
jump \(\mathcal R\) 与单侧 DtN \(\mathcal N\) 有 \(\mathcal R=2\mathcal N\)。
其 zeta determinants 的 scale factor 要计入 \(\zeta_{\mathcal N}(0)\)，不能把
\(\det(2\mathcal N)\) 当作 \(2\det\mathcal N\)。
源给

\[
\frac{\det{}'\mathcal R}{\operatorname{Length}(\partial M)}
=\frac{D_X/A_X}{D_D^2}
=\frac12\frac{Q}{A}
=\frac1{2\det G}.
\]

在 smooth case 的 convention 中
\(\det{}'\mathcal R=\frac12\det{}'\mathcal N\)。
原 polygon 的 boundary 穿过 conical points 时，
\(\mathcal R\) 已不是普通 smooth-boundary classical elliptic pseudodifferential operator，
故不能未经 domain/regularization 定义就对它套用这个 zeta determinant。
论文的 relative BFK 正是在避开 vertices 的 small-circle cuts 上进行；最终 bulk determinant ratio 有明确角因子，不能据此宣称 singular-cut DtN determinant 已按普通 smooth theory 定义。

## 独立全局谱检查：角点、topology 和曲率

### Square：四个直角的绝对归一化

边长 \(L>0\) 的 flat square 有 \(\alpha_j=1/2\)、
\(Q=A=L^2\)。设
\(\beta_{\rm D}(s)=4^{-s}[\zeta(s,1/4)-\zeta(s,3/4)]\)，
直接按整数 lattice modes 得

\[
\begin{aligned}
\zeta_D(s)&=(L/\pi)^{2s}
[\zeta_R(s)\beta_{\rm D}(s)-\zeta_R(2s)],\\
\zeta_N(s)&=\zeta_D(s)+2(L/\pi)^{2s}\zeta_R(2s),\\
\zeta_X(s)&=2(L/\pi)^{2s}\zeta_R(s)\beta_{\rm D}(s).
\end{aligned}
\]

最后一个也由 torus 的 inversion quotient（flat pillowcase double）得到。
它们在零点分别为 \(1/4,-3/4,-1/2\)，明确包括删掉的一个 Neumann/closed zero mode。

用 \(\zeta_R'(0)=-\log(2\pi)/2\) 和
\(\beta_{\rm D}'(0)=-\log2+\log\Gamma(1/4)-\log\Gamma(3/4)\)，
独立得到

\[
D_D=\frac{\Gamma(1/4)}
{2^{3/2}\pi^{3/4}\sqrt L},\qquad
\frac{D_N'}{D_D}=4L^2.
\]

\(L=1\) 时 \(D_D=0.543217405606654\ldots\)。
Theorem 1.1 的 \(\prod\alpha_j^{-1/2}=4\) 精确匹配，D/N 两条 log-determinant residual 均为零。
这同时检查了角点 exponent、面积因子和 absolute constant，没有用主定理反推输入谱。

### Flat cylinder：不能把 \(Q\) 一律换成面积

取 \([0,L]\times S^1_C\)，circle circumference \(C\)。
两条 boundary 都是 geodesic、无角点。
N/D 的正横向模式相同，ratio 只剩 transverse \(n=0\) 的非零 circle modes：

\[
\zeta_{\rm circle}(s)=2(C/(2\pi))^{2s}\zeta_R(2s),
\quad
\det{}'\Delta_{\rm circle}=C^2 .
\]

period-normalized absolute harmonic form 是 \(\omega=dx/C\)，
其 Gram entry \(G=L/C\)，area \(A=LC\)，故
\(Q=A/G=C^2\)，与直接谱比值相符且不依赖 \(L\)。
若用 \(Q=A\)，这个测试一般立即失败。

### Hemisphere：曲率与 constant zero mode

半径 \(R\) 的 round hemisphere 是 smooth disk，无角点，
\(Q=A=2\pi R^2\)。
spherical harmonic 的 equatorial reflection 在每个 \(l\geq1\) 上给
N multiplicity \(l+1\)、D multiplicity \(l\)，故差 zeta 为

\[
\zeta_N(s)-\zeta_D(s)
=R^{2s}\sum_{l=1}^\infty[l(l+1)]^{-s}.
\]

以 binomial/Hurwitz expansion 延拓，零点值为 \(-1\)，导数为
\(-\log(2\pi)+2\log R\cdot(-1)\)，因此
\(D_N'/D_D=2\pi R^2\)。
独立有限检查将
\(\sum_{k=2}^\infty(-1)^k[\zeta_R(k)-1]/k
=\gamma-1+\log2\)
截到 \(k=80\)：余项绝对界 \(1.047\times10^{-26}\)，实算差
\(3.418\times10^{-27}\)。\(R=1\) 时所得 determinant ratio 与
\(2\pi\) 相差 \(2.148\times10^{-26}\)。
这些数字是保留截断后的检查，不是无限精度数值声明。

## §7：Aurell–Salomonson 与 curved polygons

对 simply connected Euclidean polygon，normalized Schwarz–Christoffel coordinate 给

\[
m=\prod_{j=1}^N|z-p_j|^{2\alpha_j-2}|dz|^2,
\quad p_j\in\mathbb R,\quad
0<\alpha_j<2,\quad \sum_j\alpha_j=N-2 .
\]

定义 source 的 corner function

\[
C(\alpha)=2\zeta_B'(0;\alpha,1,1)-2\zeta_R'(-1)
-\frac{(\alpha-1)^2}{6\alpha}\log2
-\frac{\alpha-1}{12}+\frac12\log\alpha .
\]

其中 \(\zeta_B(s;\alpha,1,1)\) 的收敛定义是
\(\sum_{m,n\geq0}(\alpha m+n+1)^{-s}\)，随后作 analytic continuation。
把已有 closed-double formula 代入 disk case，
source (7.5) 是

\[
\begin{aligned}
\log D_D={}&
\frac1{12}\sum_j\sum_{i\neq j}
\frac{(\alpha_i-1)(\alpha_j-1)}{\alpha_j}\log|p_i-p_j|
-\frac12\sum_j C(\alpha_j)\\
&+\frac14\sum_j\log\alpha_j
-2\zeta_R'(-1)+\frac1{12}
-\frac16\log2-\frac12\log\pi .
\end{aligned}
\]

关键中间式为
\(\log D_D=\frac12\log(D_X/A_X)+\frac12\log2+
\frac14\sum_j\log\alpha_j\)；
\(\log2\) 来自 \(A_X=2A\)，不是可删的 normalization。
Mathematica 检查 (7.3) 到 (7.5) 的 constant combination，residual 为零。

另有 exact special-angle checks：

\[
C(1)=0,\qquad
\zeta_B(s;\tfrac12,1,1)=
2^{s-1}\zeta_R(s-1)+(\tfrac12-2^{s-1})\zeta_R(s),
\]

\[
C(\tfrac12)=\frac1{24}-\zeta_R'(-1)-\frac16\log2 .
\]

第二式可在 \(\Re s>2\) 按 even/odd lattice rows 重排得到，再延拓；
由它求导得到最后一式。没有数值拟合 Barnes constant。

对 constant-curvature triangle，令 \(\Sigma_\alpha=\alpha_1+\alpha_2+\alpha_3\)，
Gauss–Bonnet 给

\[
A=\frac{\pi(\Sigma_\alpha-1)}K,\qquad
A_X=2A,\quad K\neq0.
\]

正面积要求 \(K\) 与 \(\Sigma_\alpha-1\) 同号。源以 Ref.[14] 的 closed three-cone determinant 为输入，再用
\(D_D=\sqrt{D_X/A}\prod\alpha^{1/4}\)、
\(D_N'=\sqrt{AD_X}\prod\alpha^{-1/4}\)。
任意 triangles/Belyi examples 的 closed-double expressions 未在本次独立重推；它们保留为外部 source input。

固定 \(K,A\) 时，\(\sum_j\delta\alpha_j=0\)。
在 equal angles，
\(\delta\sum_j\log\alpha_j=\alpha^{-1}\sum_j\delta\alpha_j=0\)。
所以若 double 的 determinant 已由所引定理知为 stationary，boundary determinants 也 stationary。
这个角因子的第一变分已核对；它不证明 maximum、minimum 或完整 Hessian 的符号。

## Equation ledger and direct use in boundary spectral work

\[
\begin{aligned}
&\text{reflection / Friedrichs form domains}
\Rightarrow D_X=D_DD_N',\\
&\text{rotational disk spectra}
\Rightarrow F_j=\det L_0
\Rightarrow F_j(m)/F_j(\widetilde m)=\alpha_j^{-1/2},\\
&\text{common-collar relative resolvent}
\Rightarrow T-I\in\mathfrak S_1
\Rightarrow\text{relative BFK with fixed constant},\\
&\text{odd invertibility + even rank-one zero mode}
\Rightarrow\text{area-normalized smoothing comparison},\\
&\text{smooth torsion calibration}
\Rightarrow D_N'/D_D=Q\prod\alpha_j^{-1/2},\\
&\text{product + ratio}\Rightarrow\text{Theorem 1.1}.
\end{aligned}
\]

对区域 gluing 与谱计算，直接可复用的是：
一个 compact 二维、massless scalar、带 geodesic corners 的可检验模型，
其中 corner normalization、zero-mode removal 与 cohomology measure 都可显式追踪。
在 Euclidean Gaussian action
\(I=\tfrac12\int_M|d\phi|^2\) 的非零模部分，
\(Z_D=D_D^{-1/2}\)、\(Z_N'=(D_N')^{-1/2}\)，所以

\[
\frac{Z_N'}{Z_D}=Q^{-1/2}\prod_j\alpha_j^{1/4}.
\]

完整 Neumann path integral 还需单独指定 constant-mode 积分及其 measure；
不能把 prime determinant 的 quotient 当成整个 partition function。
也不能直接替换为 massive/Robin fields、noncompact AdS、三维 graviton determinant，
或把结果解释为 CPS 的 symplectic sewing；这些都需要新的 operator/domain 和 boundary-action 分析。

## Verification record

- **Verified / Checked:** xCoba rotational curvature 与 scalar radial reduction；Mathematica unitary transformation、critical zero solution、Wronskian/Gamma coefficient、local angle ratio；flat Bessel/zeta radial constant；finite Schur-complement resolvent/relative determinant；rank-one zero-mode determinant algebra；square 的独立 D/N/closed zeta与绝对常数；flat cylinder harmonic Gram 与 spectral ratio；hemisphere 带 explicit \(k=80\) tail bound 的曲率/零模检查；Aurell–Salomonson constants 和 \(C(1),C(1/2)\) 的代数核对。
- **Assumptions:** 连通 compact 二维 surface、constant-curvature interior、geodesic edges、\(\alpha_j>0\)、反射 symmetry、Friedrichs cone domain；所有 global constant modes 明确删除；local smoothing 留 fixed cut collar；zeta continuation 与 \(\lambda\to0\) 按上面的顺序。
- **Source-derived:** 一般 regular-singular determinant theorem、trace-norm/elliptic estimates、relative contour argument、Lück–Vishik torsion comparison、Polyakov calibration、所有拓扑的 Hodge 理论和外部 closed-double determinant formulas。
- **Failed:** 本次执行的检查未发现矛盾；这不声称对全部 functional-analytic 定理作了独立证明。
- **Blocked:** 无检索或计算工具阻塞。
- **Not independently verified:** 所有 cone/domain analytic estimates 的一般证明、完整 infinite-dimensional Fredholm determinant 的直接计算、任意 \(g,\ell\) 的数值谱、曲率非零任意 triangles/Belyi doubles 的外部公式，以及 stationarity 之外的 extremality。

正文与所有证明段已重建；PDF pp.3、6–7、14、19–20、23、25、27–29 的公式/常数已渲染核对。text extraction 的 font warning 由 TeX 与渲染互校解决。全部 PDF、TeX、renders 和 CAS logs 位于 vault 外临时目录。
