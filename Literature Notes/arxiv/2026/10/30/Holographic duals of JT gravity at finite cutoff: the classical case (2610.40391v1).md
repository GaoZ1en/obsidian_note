---
paper id: 2610.40391v1
title: "Holographic duals of JT gravity at finite cutoff: the classical case"
authors:
  - Andreas Belaey
  - Thomas G. Mertens
  - Lorenzo Russo
  - Alex Tarana
publication date: 2026-10-29
abstract: |-
  The authors formulate finite-cutoff and end-of-the-world boundaries in JT/BF gravity, reduce the strip to boundary Hamiltonian systems, and construct a four-dimensional phase-space description of the finite-cutoff Schwarzian. The treatment is classical; quantization is deferred to a companion work.
comments: "49 pages + appendices; downloaded v1 PDF has 79 pages"
url: https://arxiv.org/abs/2610.40391v1
summary: "有限边界 BF reduction 的可复用模型；明确 endpoint charge、length momentum、平方根 Hamiltonian 的分支及其 classical limits。"
tags: []
---

# Holographic duals of JT gravity at finite cutoff: the classical case

结论：本文给出一条具体的 action → BF endpoint charge → symplectic reduction → finite-cutoff Hamiltonian 链。其主要有限维 formulas 已复算；它没有给出有限 cutoff 的量子 Hilbert space、路径积分 contour 或普遍 factorization theorem。适合用作 regional CPS 与有限边界条件的可算参照。Reason codes: T1-Wald-CPS; T1-boundary; T1-symplectic; T2-model。

## Source map、section tree 与阅读路线

使用官方 v1 PDF/TeX。下载 PDF 79 页；正文、参考文献后还有较长附件，不能按 comments 的 49 pages 省略后半。下表页码按印刷页，PDF index 通常多 1；PDF 28、40、67 已渲染并核对相应公式及文字。

| source cluster | 完整子结构 | 目的与依赖 |
|---|---|---|
| §1 | motivation、三个主要 actions | 先认识 two-sided 2d 与 one-sided 4d phase spaces |
| §2.1–2.3 | classical geometry；first-order review；EOW 与 cutoff boundary | 固定 action、法向和 BF normalization，必读 |
| §3.1–3.3 | bulk $T^*G$ reduction；moment-map constraints；length pair | 从 fields 到 endpoint phase space，必读 |
| §4.1.1–4.1.4 | hyperbolic patch；reduced potential；classical regimes；positivity | cutoff–cutoff 模型 |
| §4.2.1–4.2.3 | mixed patch；EOW reduction；classical potential | cutoff–EOW 模型 |
| §5.1.1–5.1.3 | Poincaré、Rindler/global frames、symmetries | finite-cutoff Schwarzian 的主要新结果 |
| §6 | supersymmetry；其他 cutoff descriptions；quantization/contours；flow；baby universe；dressing；dS；sine dilaton | extension proposals，不能计入已完成定理 |
| App A.1–A.2 | AdS orbit/coset、boundary-geodesic embedding | 几何与正负号参考 |
| App B.1–B.3.2 | gauge moment map；Hamiltonian flows；左右 algebra；两种 patch 的 explicit generators | charge 与 reduction 的技术依据 |
| App C.1–C.2 | second-order cutoff–cutoff 与 cutoff–EOW trajectories | 独立几何参照，尤其平方根分支 |

建议先读 §§2–3，再 §§4.1.2/4.2.2/5.1.1；查 charge signs 读完整 App B，查同侧边界读 App C。§6 的 Euclidean/quantum 问题保持开放。

## 全局符号和 convention dictionary

单位 $8\pi G_N=1$，AdS radius $=1$，bulk orientation $d\nu\wedge d\sigma$。$\Phi$ 为 dilaton；固定的 cutoff data 是 $\Phi_b^\pm$，EOW tension $\mu>0$。几何 horizon 参数与 Casimir 的关系写作

$$\mathcal C=2{\rm Tr}(\mathbf B^2)=\Phi_h^2,$$

但允许 $\mathcal C<0$ 时，$\Phi_h$ 只是代数标签，不是真实 horizon value。以下以 $\mathcal C$ 避免误称有 horizon。

$$E=\begin{pmatrix}0&1\\0&0\end{pmatrix},\quad F=\begin{pmatrix}0&0\\1&0\end{pmatrix},\quad
H=\tfrac12{\rm diag}(1,-1),\quad P_0=(E-F)/2,\ P_1=H,\ P_2=(E+F)/2.$$

${\rm Tr}(P_IP_J)=\eta_{IJ}/2,\eta={\rm diag}(-,+,+)$，
$[P_0,P_2]=P_1,[P_1,P_2]=P_0,[P_0,P_1]=-P_2$。
$\mathbf A=e^0P_0+e^1P_1+\omega P_2$，
$\mathbf B=-\phi^0P_0-\phi^1P_1+\Phi P_2$。

本文约定 $\Theta=p_i\delta q^i,\Omega=-\delta\Theta=dq^i\wedge dp_i$，$\iota_{X_H}\Omega=\delta H$，$\dot F=\{F,H\}$。与使用 $\Omega=+\delta\Theta$ 的 CPS notes 接口时必须整体转换 Hamiltonian contraction sign；不能仅抄写一个 bracket。

空间 interval 从 $-$ 到 $+$，holonomy
$g=\mathcal P\exp(-\int_-\!^+\mathbf A_\sigma d\sigma)$。
right endpoint 的 gauge transformation 从左作用；left endpoint 从右作用并带 inverse。$L$ 是连接两边界的 spacelike geodesic 长度；$\ell$ 是 one-sided Poincaré radial coordinate，二者不是同一变量。

## §2：变分原理决定 Hamiltonian，不是直接取 Casimir

cutoff–EOW action 为

$$S=\frac12\int_M\sqrt{-g}\,\Phi(R+2)
+\int_{\partial_{\rm cut}}\sqrt{-h}\,\Phi_b(K-1)
+\int_{\rm EOW}\sqrt{-h}\,(\Phi K-\mu).$$

outward unit normal 的方向固定，bulk equations 为 $R=-2,\nabla_\mu\nabla_\nu\Phi=g_{\mu\nu}\Phi$。cutoff 固定 $\Phi_b,h_{\tau\tau}$；EOW 固定 $K=0,n\cdot\nabla\Phi=\mu$。Brown–York energy 是

$$H_{\rm cut}=\Phi_b-n\cdot\nabla\Phi,\qquad H_{\rm EOW}=\mu-n\cdot\nabla\Phi=0.$$

counterterm $-\Phi_b$ 影响 energy 的零点，不可删后仍称相同 Hamiltonian。global solution
$ds^2=\csc^2\sigma(-d\nu^2+d\sigma^2)$，
$\Phi=\Phi_h\cos\nu/\sin\sigma$。
cutoff timelike branch 要求 $\Phi_b^2>\mathcal C$。

Checked：xCoba 得 $R+2=0$，四个 Hessian residual $\nabla_i\nabla_j\Phi-g_{ij}\Phi=0$。参数 $\Phi_h$ 显式声明为 constant；未声明 constant 的第一次辅助计算只产生它的 covariant derivatives，修正后全部为零。

BF bulk action 是 $-2\int{\rm Tr}(\mathbf B\mathbf F)$。其 equations $\mathbf F=0,D\mathbf B=0$ 分别给 torsion-free AdS geometry 和 dilaton equation。EOW 左端加 $+2\int{\rm Tr}(\mathbf B\mathbf A_\partial)$；cutoff 右端加

$$S_{\partial_+}=-2\int{\rm Tr}(\mathbf B\mathbf A_\partial)-\int d\tau_+\,H_+.$$

适配 boundary frame 后，cutoff variation 为
$(\phi^{//}-\Phi)\delta e^{//}-\delta\Phi(e^{//}+\omega)$，Dirichlet 两项为零。由 $\phi^\perp=-t\cdot\nabla\Phi=0$ 与 BF norm，

$$\mathcal C=\Phi_b^2-(\phi^{//})^2,\qquad
H=\Phi_b-\epsilon\sqrt{\Phi_b^2-\mathcal C},\quad
\epsilon={\rm sgn}(n\cdot\nabla\Phi).$$

main text 常先取 $\epsilon=+1$；App C 明确保留 $-1$ branch。同侧 interval 的内边界通常取 $\epsilon=-1$，不能把同一个 minus-root action 用遍所有几何。

## §3 与 App B：bulk gauge 与 endpoint symmetry 的精确区别

canonical BF potential 和 constraint 为

$$\Theta_{\rm unred}=-2\int_-^+{\rm Tr}(\mathbf B\,\delta\mathbf A_\sigma)d\sigma,\qquad D_\sigma\mathbf B=0.$$

令 $U'=-\mathbf A_\sigma U,U(-)=1$，则 $\mathbf B(\sigma)=U\mathbf B_-U^{-1}$，$g=U(+)$，$\delta\mathbf A_\sigma=-D_\sigma(\delta U U^{-1})$。分部积分并 quotient endpoint-trivial gauge 得

$$\Theta_{\rm red}=2{\rm Tr}(\mathbf B_+\delta g g^{-1})
=2{\rm Tr}(\mathbf B_-g^{-1}\delta g),\qquad
\mathbf B_+=g\mathbf B_-g^{-1}.$$

这是六维 $T^*\widetilde{\rm SL}(2,\mathbb R)$。非零 endpoint parameters 不能在此阶段一并 quotient：App B 的 differentiable generator 是

$$\mathcal G[\varepsilon]=-2\int_-^+{\rm Tr}(\varepsilon D_\sigma\mathbf B)
-2{\rm Tr}(\varepsilon_-\mathbf B_-)+2{\rm Tr}(\varepsilon_+\mathbf B_+).$$

它产生 $\delta g=\varepsilon_+g-g\varepsilon_-$，moment maps 为
$\mu^+=\mathbf B_+,\mu^-=-\mathbf B_-$。raw endpoint components $B_I^\pm$ 的左右 algebras 符号相反；换成 $\mu^\pm$ 后两边同为 $\mathfrak{sl}_2$，cross brackets 为零。

固定 cutoff moment level $2{\rm Tr}(\mathbf B P_2)=\Phi_b$ 后，其 conjugate SO(1,1) flow 在 level set 上成为 null direction；EOW 固定 $2{\rm Tr}(\mathbf B_-P_0)=-\mu$，quotient universal cover of SO(2)。两个 regular 一维 reductions 给 $6-2-2=2$，只有一端被约束时给 $6-2=4$。这些是 regular patch 的维数，不能不查 stabilizer 就跨 singular strata 使用。

取 geodesic-adapted $e^0=0,e^1=ds,\omega=0$，则 $g_\gamma=e^{-LH}$ 且

$$\Theta_{\rm red}=\phi^1\delta L=p_L\delta L,\quad
\Omega_{\rm red}=\delta L\wedge\delta p_L,\quad\{L,p_L\}=1.$$

boundary stabilizer 改变 potential 的量为 $b_+\delta\alpha_+-b_-\delta\alpha_-$，在固定 $b_\pm$ 时 exact；若将 boundary data 本身变成 dynamical variables，就不能再删掉对应 canonical pairs。

## §4.1 与 B.3.1：两端 cutoff 的完整 algebra 与 potential

patch 为 $g=e^{\beta(E+F)}e^{-LH}e^{\gamma(E+F)}$，$L>0$。Darboux coordinates 为 $(\beta,L,\gamma;p_\beta,p_L,p_\gamma)$。记 $X=E+F,Y=E-F$，右端 maps 是

$$
\begin{aligned}
\mu_X^+&=p_\beta,\\
\mu_H^+&=\tfrac12\coth L\sinh2\beta\,p_\beta-\cosh2\beta\,p_L-\frac{\sinh2\beta}{2\sinh L}p_\gamma,\\
\mu_Y^+&=\coth L\cosh2\beta\,p_\beta-2\sinh2\beta\,p_L-\frac{\cosh2\beta}{\sinh L}p_\gamma.
\end{aligned}
$$

左端 maps 是

$$
\begin{aligned}
\mu_X^-&=-p_\gamma,\\
\mu_H^-&=\frac{\sinh2\gamma}{2\sinh L}p_\beta+\cosh2\gamma\,p_L-\tfrac12\coth L\sinh2\gamma\,p_\gamma,\\
\mu_Y^-&=-\frac{\cosh2\gamma}{\sinh L}p_\beta-2\sinh2\gamma\,p_L+\coth L\cosh2\gamma\,p_\gamma .
\end{aligned}
$$

Checked：canonical bracket 给每侧
$\{\mu_H,\mu_X\}=\mu_Y,\{\mu_H,\mu_Y\}=\mu_X,\{\mu_Y,\mu_X\}=4\mu_H$，六个 residual 皆零；九个 cross residual 皆零。两边的
$\mu_H^2+\frac14\mu_X^2-\frac14\mu_Y^2$ 均等于

$$\mathcal C=p_L^2+
\frac{2\cosh L\,p_\beta p_\gamma-p_\beta^2-p_\gamma^2}{4\sinh^2L}.$$

施加 $p_\beta=2\Phi_b^+,p_\gamma=2\Phi_b^-$ 得

$$\mathcal C=p_L^2+V_{DD}(L),\quad
V_{DD}=\frac{2AB\cosh L-A^2-B^2}{\sinh^2L},\quad A=\Phi_b^-,B=\Phi_b^+.$$

独立 bulk-ODE derivation：$\phi^1=p_L,\phi^0=\Phi',\Phi''=\Phi$，固定两端值有

$$\Phi(s)=A\cosh s+\frac{B-A\cosh L}{\sinh L}\sinh s.$$

Checked：ODE、endpoint values、$\Phi^2-(\Phi')^2=V_{DD}$ 恒等式残差零，故 Casimir 不随 $s$ 变化。

$A=B=\Phi_b$ 时 $V_{DD}=\Phi_b^2/\cosh^2(L/2)$。$0<A<B$ 时

$$V_{DD}\sim-\frac{(A-B)^2}{L^2}+\frac{A^2+AB+B^2}{3},\quad
L_0=\log(B/A),\quad L_{\max}=\operatorname{arccosh}(B/A),\quad V(L_{\max})=A^2.$$

Checked：zero、stationary point、height、short-distance expansion。$L>0$、两端 timelike 条件与 chosen normal signs 一起限定 physical region；不能只看 $V$ 而忘 $p_L$ 和 root branch。

## §4.1.3 与 App C.1：几何分类和时间选择

真正 evolution Hamiltonian 为

$$H_\lambda=\frac{d\tau_-}{d\lambda}\,[A-\epsilon_-\sqrt{A^2-\mathcal C}]
+\frac{d\tau_+}{d\lambda}\,[B-\epsilon_+\sqrt{B^2-\mathcal C}].$$

若两端 equal proper-time foliation 且 $\tau=\tau_-+\tau_+$，则 $H_\tau=(H_-+H_+)/2$；equal cutoff、相同 root branch 时才简化成一个 $H$。这个 factor 2 来自 clock choice，不能当成 Hamiltonian mismatch。

App C 的 exact trajectories 用 $\cosh L=AB/\mathcal C\pm
\sqrt{(A^2-\mathcal C)(B^2-\mathcal C)}\cosh(\omega\tau)/\mathcal C$。
opposite exteriors 取加号及 $\omega=\frac{\sqrt{\mathcal C}}2[(A^2-\mathcal C)^{-1/2}+(B^2-\mathcal C)^{-1/2}]$；same exterior 取减号及两 inverse roots 的差。负 Casimir 对应 trigonometric continuation，spacelike geodesic chart 在 $L=0$ 处失效，不能直接把边界继续穿过去。

Checked：将以上表达式微分、用 Hamilton equation 定义 $p_L$，消去 $\cosh(\omega\tau)$ 后，momentum identity 与 $\mathcal C=p_L^2+V_{DD}$ 残差零；不是只重新代入 source 的 $p^2$。

Failed — 印刷 p27（PDF p28）将 $p_L=0$ 的 Casimir-sign 分类推广到任意动量：source 最后说 $0<L<L_0$ 意味 global AdS。实际上只保证 $V_{DD}<0$，不保证 $\mathcal C=p_L^2+V_{DD}<0$。取

$$A=1,\quad B=2,\quad L=\tfrac12<\log2,\quad p_L=\tfrac32,$$

Mathematica 得 $V=-1.8026646792184$，$\mathcal C=0.4473353207816>0$，且 $\mathcal C<A^2<B^2$，两端都 timelike。$\Phi'(0)=1.67411608893,\Phi'(L)=2.40887207614$，因此这是 App C 的 same-exterior root branch（$\epsilon_-=-1,\epsilon_+=+1$），不是 horizonless solution。正确表述：Casimir sign 决定 horizon sector，$L$ 相对 $L_{\max}$ 决定 endpoint outward-gradient signs；$L_0$ 单独只能在 turning-point slice $p_L=0$ 上分类 Casimir sign。此处不否定 positive-root-only sector 的 action。

## §4.1.4：positive patch 与 positivity proposal 的范围

取 $C_0=\frac1{\sqrt2}\begin{pmatrix}1&1\\-1&1\end{pmatrix}$，明确计算得到

$$C_0gC_0^{-1}=
\begin{pmatrix}
e^{\beta+\gamma}\cosh(L/2)&e^{\beta-\gamma}\sinh(L/2)\\
e^{-\beta+\gamma}\sinh(L/2)&e^{-\beta-\gamma}\cosh(L/2)
\end{pmatrix}.$$

Checked：matrix residual 全零；$L>0,\beta,\gamma\in\mathbb R$ 时四项正。反向也成立：positive determinant-one matrix 有 $g_{11}g_{22}>1$，可恢复 $L>0$ 和两 diagonal parameters。这给此 patch 的正半群解释，不是一般 Lorentzian geometry 量子路径积分 measure 的证明。

source 随后提出所有 $B_I\ge0$。这比 $\Phi>0$、spatial proper length 正更强，是额外 proposal，不是上式推论。$\mathbf B$ components 依赖 frame 与 orientation；同一 DD profile 的 $\Phi'(s)$ 可跨零，$p_L$ 也可取两种符号。没有给出在完整 endpoint gauge action 下保持所有 components 非负的全局条件，故不把该 proposal 当作已证约束或自伴 operator inequalities。

## §4.2、B.3.2 与 C.2：EOW mixed reduction

mixed patch $g=e^{\beta(E+F)}e^{-LH}e^{\theta(E-F)}$。App B 用 complex basis change 将 $L'=L+i\pi/2,\gamma'=i\theta,p_{\gamma'}=-ip_\theta$ 关联到 DD patch；这是 canonical analytic continuation，实 physical domain 仍须另外指定。

固定 $\mu_X^+=p_\beta=2\Phi_b$，$\mu_Y^-=-p_\theta=2\mu$，即 $p_\theta=-2\mu$，得到

$$\mathcal C=p_L^2+V_{DN},\qquad
V_{DN}=\frac{2\mu\Phi_b\sinh L+\Phi_b^2-\mu^2}{\cosh^2L}.$$

Checked：mixed patch 两侧全部六个 algebra residual、九个 cross residual、两个 Casimir residual 均零。独立 geodesic derivation 用 $\Phi'(0)=-\mu,\Phi(L)=\Phi_b$：

$$\Phi(s)=\frac{\Phi_b+\mu\sinh L}{\cosh L}\cosh s-\mu\sinh s.$$

ODE、Neumann/Dirichlet data、Casimir constancy 全通过。此 geodesic 对 EOW 正交；不是任意指定端点的 distance。

$$V(0)=\Phi_b^2-\mu^2,\quad
L_{\max}=\operatorname{arcsinh}(\mu/\Phi_b),\quad V(L_{\max})=\Phi_b^2.$$

若 $\mu>\Phi_b$，zero 在 $L_0=\log(\mu/\Phi_b)$；potential 不含 $-1/L^2$ singularity。turning points 满足

$$\sinh L_T^\pm=
\frac{\mu\Phi_b\pm\sqrt{(\Phi_b^2-\mathcal C)(\mu^2+\mathcal C)}}{\mathcal C}.$$

App C 的轨迹把 radical 项乘 $\cosh(\sqrt{\mathcal C}\tau/\sqrt{\Phi_b^2-\mathcal C})$；negative $\mathcal C$ 换 cos。Checked：消去时间后 $p_L^2=\mathcal C-V_{DN}$ 的动态关系残差零。source 描述的同侧/跨 horizon 轨迹仍要用相应 $\epsilon$；零 EOW Hamiltonian 并非 EOW 没有 boundary conditions 或 tension data。

## §5：one-sided finite-cutoff Schwarzian

释放一个 endpoint constraint 后，留下四维 phase space。用 $z=e^{-\ell}>0$，

$$ds^2=d\ell^2-e^{2\ell}df^2,\quad
c=e^{-\ell H}e^{fF}=\begin{pmatrix}\sqrt z&0\\f/\sqrt z&1/\sqrt z\end{pmatrix},\quad
\mathbf A=-dc\,c^{-1}=H\,d\ell-e^\ell F\,df.$$

Checked：matrix differentiation 与 flat Maurer form 一致。设 $g=e^{\eta P_2}c$，则

$$\Theta=\Phi_b\delta\eta+p_\ell\delta\ell+p_f\delta f.$$

只在固定 $\Phi_b$ 且 quotient $\eta$ 后，才去掉第一项。得到

$$\mathcal C=p_\ell^2+2\Phi_b z p_f-z^2p_f^2,\qquad
H=\Phi_b-\sqrt{(\Phi_b-zp_f)^2-p_\ell^2},$$

$$S=\int d\tau\,[p_\ell\dot\ell+p_f\dot f-H].$$

所选 physical branch 的严格 domain 是

$$\Phi_b-zp_f>|p_\ell|,\qquad p_f>0.$$

因此 $0<\mathcal C<\Phi_b^2$，平方根实且 $H\ge0$。这不是在全 $T^*{\rm AdS}_2$ 无限制使用的函数。Hamilton equations 为

$$\dot\ell=\frac{p_\ell}{D},\quad
\dot f=\frac{z(\Phi_b-zp_f)}D,\quad
\dot p_f=0,\quad\dot p_\ell=p_f\dot f,\quad
D=\sqrt{(\Phi_b-zp_f)^2-p_\ell^2}.$$

Checked：直接微分 $H$，并验证 $e^{2\ell}\dot f^2-\dot\ell^2=1$，所以 $\tau$ 确为 proper time；domain 给 $\dot f>0$。这些是 classical on-shell statements，不自动限制 Euclidean off-shell paths 单调。

surviving right moment maps 是

$$\mu_F=-p_f,\quad
\mu_H=p_\ell-fp_f,\quad
\mu_E=-2z\Phi_b-2p_\ell f+p_f(f^2+z^2).$$

Checked：$\{\mu_H,\mu_E\}=\mu_E,\{\mu_H,\mu_F\}=-\mu_F,
\{\mu_E,\mu_F\}=2\mu_H$；$\mu_H^2+\mu_E\mu_F=\mathcal C$，三个 Casimir brackets 全零。geometric generators 需用 source 的 raw $B^-=-\mu^-$ convention，得到 $\partial_f,f\partial_f+z\partial_z,-(f^2+z^2)\partial_f-2fz\partial_z$。这些流是 local patch symmetries；没有证明每条有限 SL(2,R) 轨道始终留在所选 domain。

## cutoff ledger、其他坐标与 §6 extensions

所有推导先保留有限 $\Phi_b$。

| system | 固定的 renormalized variables | 受检极限 |
|---|---|---|
| DD equal cutoff | $L=L_r+2\log\Phi_b$；同时 rescale 两侧 clock | $\mathcal C\to p_L^2+4e^{-L_r}$ |
| DN | $L=L_r+\log\Phi_b$，固定 $\mu$ | $\mathcal C\to p_L^2+4\mu e^{-L_r}+4e^{-2L_r}$ |
| one-sided | $\ell=\ell_r+\log\Phi_b,\tau=\Phi_b u$ | $\Phi_bH\to p_\ell^2/2+p_fe^{-\ell_r}$ |

Checked：上述三个 exact symbolic limits。one-sided finite expression 是

$$\Phi_bH=\epsilon^{-2}\left[1-\sqrt{1-\epsilon^2(p_\ell^2+2p_fe^{-\ell_r})
+\epsilon^4p_f^2e^{-2\ell_r}}\right],\quad\epsilon=1/\Phi_b.$$

不能忽略 $\epsilon^4$ 项后便声称是某固定 Schwarzian Hamiltonian 的全阶 square-root deformation。DD potential 也保留 $(1+\epsilon^2e^{-L_r})^{-2}$。source §6 已明确指出 off-shell comparison 仍需推导。

§5.1.2 的 Rindler representative $e^{-\ell H}e^{\gamma(E+F)}$ 给 $ds^2=d\ell^2-4\sinh^2\ell\,d\gamma^2$，global representative 用 $E-F$。其无限 cutoff Hamiltonians 分别是
$\frac12p_\ell^2+p_\gamma e^{-\ell_r}-2e^{-2\ell_r}$ 与
$\frac12p_\ell^2-p_\gamma e^{-\ell_r}+2e^{-2\ell_r}$；
对应 Schwarzian 的 $\tanh\gamma$、$\tan\gamma$ chain rule。这里的 finite-temperature periodicity 由所用 $\gamma$ normalization 决定；不能直接当作一般 boundary inverse temperature。

§6 的 dS proposal 交换 causal interpretation，$\Phi''=-\Phi$，给

$$\mathcal C=-p_L^2+
\frac{A^2+B^2-2AB\cos L}{\sin^2L},\qquad 0<L<\pi.$$

Checked：trigonometric profile 的 $\Phi^2+(\Phi')^2$ 等于所列 potential。dS patch off-diagonal entries 异号，不在乘法下封闭；geodesic chart 还可能在有限时间消失，不是现成的正半群 gluing theory。sine-dilaton 的 proposed $W(\Phi)$ 与 square-root energy 还需固定 primitive constant、counterterm 与实/复分支；本文未据此完成另一理论的量子模型。

## 当前项目的具体接口与 verification boundary

可复用的是 BF potential 的 endpoint reduction、differentiable generator 的两端补项、固定 moment level 后 symmetry 变 gauge 的机制，以及 boundary-clock dependent Hamiltonian。DD/DN profile 还给 relational bulk observable $\Phi(L,s)$，适合检验“bulk 量如何依赖两侧数据”，但不等于已建立独立 matter algebra 的 locality。

- Source-derived：全部 §§1–6 与 Apps A/B/C 的几何解释、general functional reduction、未执行的 embedding/global assertions。
- Checked：global AdS curvature 与 dilaton Hessian（xCoba）；DD 和 DN 各两套 explicit moment maps 的 algebra、cross brackets、Casimir（Mathematica）；两种 profile 的 ODE/data/constant invariant；potential zeros/maxima/limits；App C 动态消元；positive patch conjugation；one-sided Maurer form、完整三个 charges、Hamilton equations、proper-time identity 与 regulated asymptotic limit。
- Failed：p27 把 $L<L_0$ 推广成任意动量下 negative Casimir/global AdS 的必要结论。已给 timelike same-exterior counterexample；不否定 p=0 分类或 root-domain 内的 Hamiltonian。
- Blocked：本文没有提供 finite-cutoff quantum operator domains、self-adjoint square-root prescription、Euclidean contour/convergent measure、inequalities 的量子实现；companion paper 未检索。经典 algebra 不认证这些量子结论。
- Assumptions：regular local reduction patch、invertible zweibein、spacelike connecting geodesic、specified endpoint normals、fixed $\Phi_b,\mu$、chosen clock and root branches。cutoff removal 在固定 renormalized variables 后执行，未证明 uniformity 或与 quantization 可交换。
- Not independently verified：全部 boundary variations 的一般 functional proof、全局 quotient 的 Hausdorff/stratum 问题、quantum factorization/entropy、dS/sine-dilaton extensions。提出所有 $B_I\ge0$ 仍是额外 proposal。
- 所有 PDF/source/CAS artifacts 在 vault 外。PDF font warning 用 TeX 与渲染核对；辅助 CAS 第一次 cutoff limit 漏同步替换 $\Phi_b$，修正后得到上表有限极限，未误判成 source failure。
