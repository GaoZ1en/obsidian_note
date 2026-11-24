---
paper id: 2611.23392v1
title: Scalar/axion Wormholes and Boundary Conditions in Gravitational Path Integrals
authors:
  - Jason Hallsten
  - Jesse Held
  - Zhenyu Heng
  - Donald Marolf
  - Zhencheng Wang
publication date: 2026-11-17T19:00:26Z
abstract: |-
  In JT gravity coupled to a scalar, toroidal asymptotically AdS gravity and spherical asymptotically flat gravity, the authors compare Dirichlet and Neumann wormhole partition functions by integrating over constrained geometries. Although the two ensembles can be related by an integral transform, the saddles that contribute are generally different.
comments: "34 pages, 3 figures"
url: https://arxiv.org/abs/2611.23392v1
summary: "A cut-and-glue example in which matching classical boundary data and Legendre transforming the action does not transport the contributing saddle cycle."
tags: []
---

# 变换边界极化，不等于搬运 saddle 集合

对 regional sewing，本文最值得借用的是三步分开：先写各半空间在 cut 上的变分边界项；再识别可以跳跃的共轭量；最后才对 seam 数据或外边界极化作积分。前两步只能确定可用的经典场族，不决定第三步的 integration cycle。本文用 JT、toroidal AdS$_3$ 与平坦端球对称三个受限 wormhole toy integrals 具体显示这一点，且给出一个二阶稳定性分析看不到的缝合模。来源为 [v1 PDF](https://arxiv.org/pdf/2611.23392v1)；下文写印刷页，PDF 页码为印刷页加一。

## 共轭数据及计算顺序（§1，印刷 pp. 1–5）

Euclidean 作用量取实 scalar/axion **正**动能，靶空间非紧；平滑 throat 通常需虚 axion。两端均匀，只对 scalar 零模作 Neumann 变换，不能当成所有 AdS 动量模式的 alternate quantization。按 outward normals，守恒通量 $q_R=-q_L$，所以总共同 shift 不与通量耦合，只剩端值差 $k=\chi_R-\chi_L$。在固定几何数据下，$S_D$ 的径向边界项形如 $p\delta k$；$S_N=S_D-pk$ 把它改成 $-k\delta p$，$p$ 含周期、体积及动能归一化。本文先固定 $A_0$、以 Lagrange multiplier 允许 seam 跳跃，再积分 $e^{-S_{\rm CWH}}$；只保留特定受限 saddle。Euclidean 实 $q$ 给实指数核，未必可积；令 $q=iQ$ 得振荡 Fourier 核，在实 $Q$ 上定义后才解析延拓。$\delta_{A_0}S=0$ 对应释放约束，但还需要真实 cycle 的上升流交数来判断这个解是否被计数。

## JT：切面连续的是曲率数据，跳跃的是 dilaton 法向导数（§2，印刷 pp. 5–16）

取 AdS$_2$ 半径一，$t_E\sim t_E+\beta$，$S_{\rm JT}=-\tfrac12\int\sqrt g\,\Phi(R+2)-\int\sqrt h\,\Phi(K-1)$，cylinder 的 Euler 项为零；scalar 动能为 $\tfrac12\int\sqrt g(\partial\chi)^2$。切面定义在反对称 $\chi=0$ 或（不固定整体 scalar shift 时）$K=0$，本族中二者同在 $r=0$。$A_0$ 固定让诱导 metric、$\Phi$ 和 $K$ 连续，却允许 $\Phi'$ 跳跃。远端 $\sqrt h\sim\epsilon^{-1}$、$\Phi\sim\phi_b/\epsilon$，$\phi_b>0$。

写 $ds^2=dr^2+w(r)^2 dt_E^2$。$R=-2w''/w=-2$，以 throat 为原点得 $w=2c_1\cosh r$、$2c_1\beta=A_0$。右侧 $w\chi'=q$ 且 $\chi(0)=0$，故 $\chi=(q/c_1)[\arctan(e^r)-\pi/4]$、$k=\pi q/(2c_1)=\pi\beta q/A_0$。右侧 dilaton 为

$$\Phi=-\frac{q^2}{8c_1^2}[1+2\sinh r\arctan(e^r)]-2c_3\sinh r,\qquad c_3=-\phi_b c_1-\frac{\pi q^2}{16c_1^2}.$$

从 $\Phi/e^r\to\phi_b c_1$ 得第二式。独立代入验证 $w'\Phi'/w-\Phi=\chi'^2/2$、$\Phi''-\Phi=-\chi'^2/2$。左侧取偶延拓；右导数 $\Phi'_+(0)=\phi_b A_0/\beta+k^2/(4\pi)$ 为零时两半可光滑拼接。此跳变涉及 JT 中 induced metric 的共轭数据，不等于高维 Einstein 的 $K$ 跳跃。

JT 体项因 $R+2=0$ 消失；两个远端 $K-1\sim-2e^{-2r}$、$\sqrt h\sim c_1 e^r$，给 $S_{\rm JT}=4\beta\phi_bc_1^2=\phi_b A_0^2/\beta$。scalar 体项由 $w\chi'=q$ 化为 $\beta qk/2$，Neumann 边界减 $\beta qk$。于是 (2.25–26) 为

$$S_D=uA_0^2+bA_0,\qquad S_N=uA_0^2-\frac{\pi\beta^2q^2}{2A_0},\qquad u=\phi_b/\beta,\quad b=k^2/(2\pi).$$

固定 $A_0$ 时 $\partial_k S_D=\beta q$，Legendre 变换给 $S_N$。$S_D$ 驻点 $A_D=-b/(2u)$ 正是无跳跃条件；实 $k$ 时它在负实轴，原始 $A_0>0$ 积分取端点。完成平方可得 $Z_D=\sqrt\pi\,e^{b^2/(4u)}\operatorname{erfc}(b/(2\sqrt u))/(2\sqrt u)$，实 $k$ 大时仅以 $k^{-2}$ 衰减。论文给出 $|\operatorname{Im}k|>|\operatorname{Re}k|$ 时 saddle 贡献，在虚轴的 $\pi/8$ 内主导。实 $q\ne0$ 下 $e^{-S_N}$ 在 $A_0\to0$ 指数发散；在无固定点的时间 isometry 下 $S_N=\beta E$，此受限族的 $E\to-\infty$。$q=iQ$ 则近端抑制，可从正虚轴延拓，保持近端 $\arg A_0=2\arg q-\pi$、远端仍向正实无穷。

Neumann 三根满足 $A_0^3=-\pi\beta^3q^2/(4\phi_b)$，驻点动作 $3uA_0^2$。从正虚轴顺时针到 $q>0$，Fig. 2（印刷 p. 13／PDF p. 14）只交右下根 $A_0^2$ 的上升流；右上根 $A_0^0$ 的经典匹配值 $k=\pi\beta q/A_0$ 有 $\arg k=-\pi/3$，在 $Z_D$ 贡献、在该 $Z_N$ 不贡献。反过来继续到 $\arg q=3\pi/2$：Fig. 1 的 cycle 交两左根，$\arg k=\pi/6,5\pi/6$ 的两解却不在 $Z_D$。三根动作按 $q^{4/3}$ 乘三次单位根，虚部两两相等给 Stokes 方向 $\arg q=(2j+1)\pi/8$；增加 $\pi$ 时三个根只是置换，积分的近端却另绕 $A_0=0$ 一圈。

**测度改变奇性。** 对平坦 $dA_0$ 的 $Z_N(iQ)$，令 $s=\pi\beta^2Q^2/2$，$s\downarrow0$ 时 $Z_N(s)-Z_N(0)=s\log s+O(s)$：对 $s$ 微分后 $s\ll A_0\ll1$ 的 integrand 是 $-1/A_0$。若先对使用 $dA_0$ 的 $Z_D$ 做 $k$ 的 Fourier Gaussian，反而会得到 $\pi A_0^{-1/2}/\sqrt{2\pi}$（采用单位 Fourier 归一化）；对这一测度，近端积分的首个非解析于 $s$ 的项为 $-2\sqrt{\pi s}$（未乘整体常数），在 $Q$ 上自正实 $Q$ 延拓只是线性。论文进一步用双层 cover 的成对贡献说明 winding 抵消。不能同时对两个表象都取 flat measure 又把它们当成精确 Fourier pair；这里的 Gaussian 也不是完整 one-loop 测度。

## Toroidal AdS$_3$：有 Fourier 恒等式，也有分支临界点（§3，印刷 pp. 16–23）

$\kappa^2=8\pi G$；体项 $-(2\kappa^2)^{-1}\int\sqrt g[R+2/\ell^2-(\partial\chi)^2/2]$，外端 $-\kappa^{-2}\int\sqrt h K+(\kappa^2\ell)^{-1}\int\sqrt h$，Neumann 再减 $(2\kappa^2)^{-1}\int\sqrt h\,\chi n\cdot\partial\chi$。$\theta\sim\theta+2\pi,\ \tau\sim\tau+\beta$，$ds^2=dr^2+(A/2\pi\beta)(d\theta^2+d\tau^2)$。右侧 $A\chi'=2\pi\beta q$；切向给 $A''=4A/\ell^2$，径向给 $A'^2=4A^2/\ell^2+4\pi^2\beta^2q^2$。实 $q>0$ 解 $A=\pi\ell\beta q\sinh(2r/\ell)$ 在 $r=r_0>0$ 截断，积分给 $\chi=\log[\coth(r_0/\ell)\tanh(r/\ell)]$ 和 $\chi_R=\log\coth(r_0/\ell)$。另一半镜像拼接，诱导 metric 连续但 $K$ 跳跃。虚 $q$ 可用 $A=\pm i\pi\ell\beta q\cosh(2r/\ell)$，在 $A'=0$ 有平滑支。

迹使体作用量括号变成 $-4/\ell^2$；与远端 GHY、counterterm 合并后，右半有限值是 $-\pi\beta q\cosh(2r_0/\ell)/\kappa^2$。切面右半 outward normal 为 $-\partial_r$，故内端 GHY 为 $+A'(r_0)/\kappa^2$；两半内端总项 $+4\pi\beta q\cosh(2r_0/\ell)/\kappa^2$。加两个外侧体加边界有限值，得 $S_D=2\pi\beta q\cosh(2r_0/\ell)/\kappa^2$。用 $q=A_0\sinh\chi_R/(\pi\ell\beta)$，

$$S_D=\frac{2A_0}{\kappa^2\ell}\cosh\chi_R,\qquad p_{\chi_R}=\partial_{\chi_R}S_D=\frac{2\pi\beta q}{\kappa^2},\qquad S_N=S_D-p_{\chi_R}\chi_R.$$

代 $\chi_R=\operatorname{arsinh}(\pi\ell\beta q/A_0)$ 得 (3.18)。**近端的精确限制：** 实 $q\ne0$ 时 $S_N=(2\pi\beta |q|/\kappa^2)\log A_0+O(1)$（对数可补固定面积尺度）；能量确实无下界，但以 $dA_0$ 积分只在 $2\pi\beta|q|/\kappa^2\ge1$ 时不可积。印刷 p. 20 的无条件发散说法需此限定；固定非零 $q$、小 $\kappa^2$ 的 semiclassical 结论不变。小实 $q$ 的固定通量实轴积分即使可积，也不能认成此文的 Fourier-continuation 定义。

取 $dA_0$ 得 $Z_D=\kappa^2\ell/(2\cosh\chi_R)$；只有 $\chi_R=i(\pi/2+\pi j)$ 才使 $S_D$ 对 $A_0$ 平坦，非紧模空间给出极点。设 $q=iQ$、$\sigma=2\pi\beta Q/\kappa^2$，用 $v=e^{2\chi_R}$ 将 $\int d\chi_R\,e^{i\sigma\chi_R}/\cosh\chi_R$ 变成 $\int_0^\infty v^{i\sigma/2-1/2}/(1+v)dv=\pi\operatorname{sech}(\pi\sigma/2)$，故

$$Z_N(q)=\sqrt{\pi/2}\,\frac{\kappa^2\ell}{2}\sec(\pi^2\beta q/\kappa^2)$$

在 $Q=-iq$ 延拓成立。若先积分 $\chi_R$，固定 $A_0$ 得 $\sqrt{2/\pi}\,K_{i\sigma}(a)$，$a=2A_0/(\kappa^2\ell)$。对 $Q>0$，鞍点条件 $\sinh\chi_R=i\sigma/a$：$a>\sigma$ 选择 $\chi_R=i\arcsin(\sigma/a)$，指数动作 $S=\sqrt{a^2-\sigma^2}+\sigma\arcsin(\sigma/a)$；$a<\sigma$ 两支 $\chi_R=i\pi/2\pm\operatorname{arcosh}(\sigma/a)$ 都贡献，共同实指数 $\pi\sigma/2$、相反的相位 $\sigma\operatorname{arcosh}(\sigma/a)-\sqrt{\sigma^2-a^2}$。非退化二次鞍给 $|a^2-\sigma^2|^{-1/4}$ 的 prefactor 和振荡的 $\pi/4$ 相位，但不能这样跨过合并点。因为 $\partial_aS=\sqrt{a^2-\sigma^2}/a$，$S-S_{\rm crit}=(2\sqrt2/3\sqrt\sigma)(a-\sigma)^{3/2}+\cdots$，$A_{\rm crit}=\pi\ell\beta Q$ 不是普通 Gaussian saddle。

Fig. 3（印刷 p. 23／PDF p. 24；图轴标签省 $\ell$，正文公式保留）把 $0<A_0<A_{\rm crit}$ 的两支变形为反向绕行的下降路，经过多张 sheet 上的正负临界点。$\operatorname{sech}(\pi\sigma/2)=2\sum_{n\ge0}(-1)^n e^{-(2n+1)\pi\sigma/2}$ 确认指数层级，但不单独证明各 sheet 的交数。$Z_N$ 的复 cycle 含负 $A$ 解，$Z_D$ 原积分只包含正 $A$，这是与 JT 的 log winding 不同的 mismatch。

## 平坦端与未被线性稳定性分析检出的缝合模（§§4–5，印刷 pp. 23–31）

$d>2$，$ds^2=dr^2+a(r)^2d\Omega_{d-1}^2$，$V_{d-1}$ 是单位球体积，$A_0=V_{d-1}a_0^{d-1}$。scalar flux $q=a^{d-1}\chi'$（右端 outward）；Einstein trace $R=(\partial\chi)^2/2$ 使体项为零。$R_{rr}=-(d-1)a''/a=\chi'^2/2$ 与角向 $(d-2)(1-a'^2)-aa''=0$ 给

$$a'^2=1+q^2/[C^2a^{2(d-2)}],\qquad C=\sqrt{2(d-1)(d-2)}.$$

实 $q$ 没有最小面，仍可在 $a=a_0$ 粘接两半。远端减同诱导 metric 的 flat reference GHY，差为 $O(a^{-(d-2)})$；内端两份 GHY 给 $S_D=2(d-1)V_{d-1}a_0^{d-2}\sqrt{1+\psi^2}/\kappa^2$，$\psi=q/(C a_0^{d-2})$。用 $v=q/(C a^{d-2})$ 积分两半 $\partial_a\chi=\chi'/a'$ 得 $k=2\sqrt{2\alpha_d}\operatorname{arsinh}\psi$，$\alpha_d=(d-1)/(d-2)$。把根号改写成固定 $k$ 的 cosh 后，$\partial_k S_D=V_{d-1}q/(2\kappa^2)$；减去该系数乘 $k$ 就是 $S_N$。实通量的小 throat 仍给负对数，能否积分由系数与测度决定。两端平滑已固定角周期，不像 torus 有独立的热 $\beta$，不在这里用 $S/\beta$ 推物理热能。

选 $B=a_0^{d-2}$ 和测度 $dB$，不是把 $dA_0$ 简单换元；$Z_D=\kappa^2\operatorname{sech}[k/(2\sqrt{2\alpha_d})]/[2(d-1)V_{d-1}]$。用 $e^{iV_{d-1}kQ/(2\kappa^2)}$ 作不含 $1/\sqrt{2\pi}$ 的 Fourier 变换，得 $Z_N=\pi\kappa^2\sqrt{2\alpha_d}\sec[\pi\sqrt{2\alpha_d} V_{d-1}q/(2\kappa^2)]/[(d-1)V_{d-1}]$。重标 $k,B$ 就是 toroidal 核，临界 $B=\pm Q/C$；$q=iQ$ 的正实 throat 对应 $a'=0$，负 $B$ 只在 Fourier 后的复 cycle 贡献。

固定虚 $q$，由 $a'^2\propto a-a_{\min}$ 近 throat 得 $a_0-a_{\min}=O(r_0^2)$，这里 $r_0$ 是有符号的 proper displacement。总长度变化 $\delta L\sim r_0$、$K$ 跳量 $\Delta K\sim a'/a_0\sim r_0$；torus 用 $A\propto\cosh(2r/\ell)$ 有同样阶数。所以 $(\delta A_0,\delta S_N)$ 分别是 $\delta L$ 的二阶和三阶，$\delta A_0\sim\delta L^2\sim\Delta K^2$，$\delta S_N\sim(\delta A_0)^{3/2}\sim\delta L^3$。每一半都是 on-shell 截片，任一侧局域 gauge invariant 不会看见 cut 的移动；总长度和曲率跳跃却区分出一族。光滑二阶稳定性看不见它，既不是替本文积分选择 cycle 的证据，也不等于可以把它作为 pure gauge 除掉。

## 检查与可借用的对象

xAct/Wolfram 分量环境从 metric 复算了 JT 的 $R=-2$、torus 的径向及切向 Ricci、平坦端的 $d=4$ 分量；一般 $d$ 用 warped-product 公式推导。Mathematica 检查 JT 两个 dilaton 分量、$\chi$ 通量、切点导数、Legendre/驻点代数、torus 分支的几何和标量约束、驻点指数和 $3/2$ 展开、flat $k(a_0)$ 的原函数导数及共轭系数。另用 Gamma 反射和数值积分核对 Fourier 核和 $\int_0^\infty K_{i\sigma}(a)da=\pi\operatorname{sech}(\pi\sigma/2)/2$ 的实频例。几何检查在各实正面积支、$r>r_0$ 上做，复杂支由文中解析延拓获得；没有独立计算所有 sheet 的交数、one-loop measure 或完整引力积分。

用于本库：以 $(k,p)$ 作外端的边界极化对，cut 两边保留各自 outward orientation。对 JT 检查 induced metric、$K$、dilaton 值及其共轭的法向导数；对 Einstein 模型先补两份内 GHY，再问哪条约束支持跃变。Legendre 项把 $p\delta k$ 改为 $-k\delta p$，但 endpoint、measure 与 integration cycle 并不会由此自动匹配。可算的下一步是比较固定 $A_0$ 与固定有符号 $\delta L$ 的 seam kernel，保留 $dA_0/d\delta L$ 及两支相位，对临界点用统一近似而不是单支 Gaussian determinant。
