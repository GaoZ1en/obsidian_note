---
paper id: 2602.11900v2
title: "The total geodesic curvature and the $(2+1)$-dimensional hyperbolic mass"
authors:
  - "He, Xiaokai"
  - "Wu, Xiaoning"
  - "Xie, Naqing"
publication date: 2026-02-12
abstract: |-
  In this paper, we derive a novel geometric inequality involving the total geodesic curvature, serving as an analogue of the Brown-York mass in the setting of $(2+1)$-dimensional gravity. The asymptotic behaviour of this newly defined quasi-local mass is examined for large ellipses in the time-symmetric slices of the Ba\~{n}ados-Teitelboim-Zanelli black hole solutions. Moreover, we establish an improved upper bound for the $(2+1)$-dimensional hyperbolic Bartnik mass.
comments: "Introduction rewritten; an improved upper bound estimate of the Bartnik mass added"
url: https://arxiv.org/abs/2602.11900v2
summary: "构造 K=-1 外延并核验两条质量单调性与 Bartnik 上界；大椭圆部分遗漏弧长换元测度，修正后数值极限 2.2975346402，小形变系数为 (m+4)/8。"
tags: []
---

# The total geodesic curvature and the (2+1)-dimensional hyperbolic mass

## 结论与阅读位置

本文的可用核心是：给定一条闭曲线的长度和正 geodesic curvature，用 quasi-spherical scalar-curvature PDE 构造 $K=-1$ 外延，并由加权 curvature deficit 的单调性控制 Hamiltonian mass。第二种 BTZ reference 的单调性还能优化出
$$
H^0(g_u)\le 1+r_0^2-r_0^2\bar k^2\le1+r_0^2.
$$
本次独立核验了 scalar-curvature 公式、两条单调性的代数及该优化。

**Incorrect as printed:** 大椭圆部分把原始极角与等长圆的弧长角混同，遗漏积分测度的权重。因此文中的 $2.8848$ 和小椭圆系数 $3(m+4)/8$ 不对应其最初定义的 quasi-local mass。直接从原始几何定义计算给出
$$
\mathfrak m_\infty(1,1)=2.297534640227\ldots,\qquad
\mathfrak m_\infty(m,\epsilon)
=m+1+\frac{m+4}{8}\epsilon^2+O(\epsilon^3).
$$
“非圆大曲线的极限一般不是 $m+1$”这一质性现象仍在，但不能采用原文的定量曲线。

这是 time-symmetric Riemannian exterior construction 与 quasi-local/Hamiltonian normalization 的论文；不包含 Lorentzian CPS reduction、一般旋转 BTZ 的动力学数据或量子谱。

## 来源、完整章节树与阅读指南

阅读固定 [2602.11900v2](https://arxiv.org/abs/2602.11900v2)、[17 页 PDF](https://arxiv.org/pdf/2602.11900v2) 与 [官方完整源码](https://arxiv.org/src/2602.11900v2)。源码入口 MZ-2026-166-R2.tex，含图的 EPS source；正文四节全部覆盖，无附录。视觉确认 PDF 第 10–11 页 ellipse curvature/measure/mass limit，第 15–16 页 BTZ comparison、优化与 horizon boundary。

| 章节簇 | 目的、定义及依赖 |
|---|---|
| §1 Introduction | ADM/Brown–York/Bartnik 背景；二维 ALH 质量采用指定 hyperbolic reference |
| §2.1 Total geodesic curvature | 用弧长将任意一维 boundary metric 等距映到双曲圆；Theorem 1 |
| §2.2 Prescribed scalar curvature | lapse $u$、parabolic PDE、ODE barriers 与渐近行为 |
| §2.3 Mass expression | 固定 background coframe，$H^0=(2\pi)^{-1}\int(\mu_{22}+2\mu_{11})$ |
| §2.4 Monotonicity | curvature deficit 的下降公式，连接 boundary 与 infinity |
| §3 Large ellipses | BTZ slice、形状依赖；原文在参数换元和系数上出错 |
| §4 Hyperbolic Bartnik mass | admissible extension、BTZ weighted monotonicity、优化上界、$k=0$ horizon |

**How to read this long paper:** 先把 §2.1 的“按弧长识别角度”记清，再读 §2.2–2.4 和 §4 的两条 monotonicity；它们是主要可复用技术。§3 必须同时看本笔记的测度修正；§1 为背景，不把其类比当成 action-defined charge 的证明。

## 1. 符号、normal 与 reference

闭曲线 $\Sigma$ 的长度为 $L=2\pi r_0$，弧长记 $s$。对一个填充 disk 的 outward normal $e_2$，
$$
k=g(\nabla_{e_1}e_2,e_1).
$$
标准双曲 metric、reference circle 与 reference curvature 为
$$
g_{-1}=\frac{dr^2}{1+r^2}+r^2d\varphi^2,\qquad
F(\Sigma)=\{r=r_0\},\qquad
\hat k=\frac{\sqrt{1+r_0^2}}{r_0}.
$$
$F$ 必须用 $\varphi=s/r_0$ 定义；任意原始角坐标只有在常速参数化时才能直接识别为这个 $\varphi$。一维 metric 只记录总长度，故等距圆嵌入存在；这不是二维 surface 的 Weyl embedding theorem，也没有保存原曲线在 ambient space 中的形状。

本文固定曲率半径为一：$K=-1,R=-2$。外延 annulus 上 boundary curvature 仍按指向增大 $r$ 的 normal 取值，即朝外延方向的 fill-in normal；它与 exterior manifold 在其内边界的 Stokes outward normal 相反。使用边界 variation 或 corner 符号时必须另行翻译。

定义
$$
\mathfrak m(\Sigma)
=\frac{\sqrt{1+r_0^2}}{\pi}\int_\Sigma(\hat k-k)\,ds
=2(1+r_0^2)-\frac{\sqrt{1+r_0^2}}{\pi}\int_\Sigma k\,ds.
$$
它带特定 static weight，且 reference 由长度选定。作者将其称为 Brown–York 类质量；这里并未从完整 gravitational action 与 observer time flow 导出此表达式。Theorem 1 的结论是 $H^0(g_u)\le\mathfrak m(\Sigma)$，不是无条件的 $\mathfrak m\ge0$ 定理。

## 2. 曲率约束化为 parabolic exterior construction

保持圆叶的 intrinsic metric，只改变 radial lapse：
$$
g_u=\frac{u(r,\varphi)^2}{1+r^2}dr^2+r^2d\varphi^2,\qquad u>0.
$$
scalar curvature 为
$$
R(g_u)=-\frac2{u^3}
\left(u+\frac{u^2u_{\varphi\varphi}}{r^2}
-\frac{1+r^2}{r}u_r\right).
$$
**Checked:** 独立定义二维 chart 与 CTensor metric，使用 xAct/xCoba 计算 Ricci scalar；与此式之差精确为零。MCP 多次超时后，经本地 wolframscript 加载同一 xCoba 完成了计算，没有把失败调用当作通过。

要求 $R=-2$，得到
$$
u_r=\frac{u^2}{r(1+r^2)}u_{\varphi\varphi}
+\frac r{1+r^2}(u-u^3).
$$
以 $r$ 作演化变量，它对正 $u$ 为 parabolic。叶子的 curvature
$$
k_u=\frac{\sqrt{1+r^2}}{ru},
\qquad
u(r_0,\varphi)=\frac{\sqrt{1+r_0^2}}{r_0k(\varphi)}
$$
将指定 $k>0$ 转成正初始数据。这里的 PDE 是 Riemannian scalar-curvature prescription，不是物理时间的 Einstein evolution。

去掉 angular term 后的 ODE 解为
$$
f_K(r)=\left(1+\frac K{1+r^2}\right)^{-1/2}.
$$
用初值最大/最小值选择 $K_1,K_2$，maximum principle 给 $u$ 的正上下界，防止有限 $r$ 的退化；文中采用 $\min\{1,f_2\}\le u\le f_1$。这给出 $u=1+O(r^{-2})$。

严格说，仅靠这两个 $C^0$ barrier 不足以一句话推出 $r^2(u-1)$ 的 smooth limit。可补充一个有用的 formal reduction：设 $v=r^2(u-1)$，则
$$
v_r=
\frac{(1+v/r^2)^2v_{\varphi\varphi}+2v-3v^2-v^3/r^2}
{r(1+r^2)}.
$$
这是经 Mathematica 代换残差为零的等式。再用 $d\tau/dr=[r(1+r^2)]^{-1}$ 把 infinity 放到有限 $\tau$，可用适当的 parabolic regularity 来控制极限；这些函数空间与导数估计不是本次符号计算证明的内容。存在、唯一及 smooth ALH asymptotics 保留为 **Source-derived** 的 PDE 层结论，而非机器核验层。

唯一性也只针对这个固定 foliation/gauge 的 $u$ 问题，不是“所有允许的 ALH exterior 唯一”，更不等于 Bartnik minimizing extension 唯一。

## 3. Hamiltonian mass 与第一条单调性

固定 reference coframe
$$
\theta^1=r\,d\varphi,\qquad
\theta^2=\frac{dr}{\sqrt{1+r^2}},
$$
对
$$
g=g_{-1}+r^{-2}\mu_{ij}\theta^i\theta^j+O(r^{-3}),
\qquad
H^0=\frac1{2\pi}\int_0^{2\pi}(\mu_{22}+2\mu_{11})d\varphi.
$$
在 $u=1+v/r^2$、$v\to v_\infty$ 下，$\mu_{22}=2v_\infty,\mu_{11}=0$，所以
$$
H^0(g_u)=\frac1\pi\int_0^{2\pi}v_\infty\,d\varphi.
$$
此 normalization 使 hyperbolic vacuum $m=-1$ 的 $H^0$ 为零；不能与采用 BTZ parameter $m$ 或 $m/(8G)$ 的能量不加转换地比较。

定义沿 constructed round foliation 的质量
$$
\mathfrak m(r)=\frac1\pi\int_0^{2\pi}(1+r^2)(1-u^{-1})\,d\varphi.
$$
代入 PDE 后，正确的局部导数为
$$
\partial_r[(1+r^2)(1-u^{-1})]
=-r(u+u^{-1}-2)+\frac1r u_{\varphi\varphi}.
$$
原文中间行把 $u_{\varphi\varphi}/r$ 写成 $u_{\varphi\varphi}$；**Checked correction:** Mathematica 对修正式的残差为零。由于 $r$ 在 angular 积分中恒定且 $\varphi$ 周期，两式积分后的 angular term 都为零，所以该局部笔误不改变最后的单调性：
$$
\mathfrak m'(r)
=-\frac r\pi\int_0^{2\pi}(u+u^{-1}-2)d\varphi
=-\frac r\pi\int_0^{2\pi}\frac{(u-1)^2}{u}d\varphi\le0.
$$
在已建立 ALH asymptotics 的前提下，$\lim\mathfrak m=H^0$，于是
$$
H^0(g_u)\le\mathfrak m(r_0).
$$
若沿整个外延等号且足够光滑，耗散项迫使 $u=1$。这只是在该构造中的 equality diagnostic，不能据此直接声称任意 fill-in 的全局 rigidity。

## 4. BTZ model 与大椭圆的几何数据

time-symmetric nonrotating BTZ slice 为
$$
g_m=\frac{dr^2}{r^2-m}+r^2d\varphi^2,\qquad H^0(g_m)=m+1.
$$
$m>0$ 时 $r=\sqrt m\cosh\rho$ 给 funnel 与 geodesic horizon；$m=0$ 为 trumpet，$r=0$ 不在流形内；$m=-1$ 为标准 $H^2$；其他负 $m$ 的局部 curvature 仍为 $-1$，但补上原点时有角度 $2\pi\sqrt{-m}$ 的 cone。

大椭圆用原始 polar angle $\varphi$ 参数化：
$$
r=Rq(\varphi),\qquad
q(\varphi)=
\left(\cos^2\varphi+\frac{\sin^2\varphi}{(1+\epsilon)^2}\right)^{-1/2}.
$$
固定 $\epsilon>-1$，$R\to\infty$。记 $p=q',w=q''$，直接从 induced metric 与 geodesic curvature 得
$$
dl=\left[Rq+\frac{q'^2}{2Rq^3}+O(R^{-3})\right]d\varphi,
$$
$$
k=1-\frac{k_2}{R^2}+O(R^{-4}),\qquad
k_2=\frac m{2q^2}+\frac{q''}{q^3}-\frac{3q'^2}{2q^4}.
$$
检查使用的有限 $R$ 表达式也明确保留：
$$
f=R^2q^2-m,\quad V=\sqrt{R^2q^2+R^2q'^2/f},
$$
$$
k=\frac{Rq}{\sqrt f}\,
\frac{Rqf+(2/(Rq)+Rq/f)R^2q'^2-Rq''}{V^3},
\qquad dl=V\,d\varphi.
$$
**Checked:** 对归一化的有理根式作 $R^{-2}$ 展开，Mathematica 返回
$(mq^2+2qq''-3q'^2)/(2q^4)$。圆形 $q=1$ 时得到 $k_2=m/2$。

原文长 $k_2$ 分子还存在独立笔误：两处 $m\epsilon^3$ 项与正确展开不符。在 $\varphi=0,\epsilon=1/2,m=1$ 的非退化测试点，印刷式为 $83/81$，实际为 $19/18$，差 $-5/162$。本笔记采用上面紧凑的 $q,q',q''$ 公式，未悄悄将源文长式当作已修正公式。

## 5. 大椭圆极限：测度权重的关键修正

令
$$
c=\frac1{2\pi}\int_0^{2\pi}q\,d\varphi,\qquad
R_0=\frac L{2\pi}=cR+O(R^{-1}).
$$
等长 reference circle 的角坐标应另记为
$$
d\psi=\frac{dl}{R_0}
=\frac{q(\varphi)}c\,d\varphi+O(R^{-2}).
$$
把质量定义写成 $R_0\int(\hat k-k)\,d\psi$ 是合法的；若继续用 $k_2(\varphi)$，就必须同时保留这条 Jacobian。原文直接写 $R_0\,d\varphi$，导致错误的
$1+c^2\pi^{-1}\int k_2\,d\varphi$。

从最初的 invariant definition 出发，正确极限是
$$
\mathfrak m_\infty
=1+\frac c\pi\int_0^{2\pi}qk_2\,d\varphi
=1+\frac c{2\pi}
\left[m\int_0^{2\pi}\frac{d\varphi}{q}
+\int_0^{2\pi}\frac{q'^2}{q^3}d\varphi\right].
$$
第二个表达式使用周期积分分部
$\int q''/q^2=2\int q'^2/q^3$。它直接展示 angular deformation 的贡献，也避免依赖印刷长 $k_2$。

**Checked:** Mathematica 展开给
$$
c=1+\frac\epsilon2-\frac{3\epsilon^2}{16}+O(\epsilon^3),
$$
$$
\mathfrak m_\infty=m+1+\frac{m+4}{8}\epsilon^2+O(\epsilon^3).
$$
若故意去掉测度权重，同一个正确 $k_2$ 会给出原文
$m+1+3(m+4)\epsilon^2/8$。这定位的是换元问题，不能以 round-circle regression 通过来排除；圆形恰好 $d\psi=d\varphi$。

在 $m=\epsilon=1$，正确积分为 $2.29753464022732035\ldots$，无权重积分为 $2.88480086897809177\ldots$，后者精确重现作者报告的 $2.8848$。本次还直接以有限 $R$ 的 $dl,k,L$ 计算原始质量：

| $R$ | 原始几何质量 | 与正确极限的差 |
|---:|---:|---:|
| 20 | 2.299675650635664 | $2.1410\times10^{-3}$ |
| 100 | 2.297620243696408 | $8.5603\times10^{-5}$ |
| 500 | 2.297538064307126 | $3.4241\times10^{-6}$ |

使用 35 位工作精度，差按 $R^{-2}$ 衰减。这是有限样本和渐近代数的互相核对，不是用数值证明所有 $\epsilon,m$ 的渐近定理。图中三条原始数值曲线依赖错误 measure，不能作为修正质量的曲线引用。

## 6. Bartnik admissibility 与第二条单调性

boundary data 为 $(\Sigma,r_0,k)$。作者定义 hyperbolic Bartnik mass 为具有相同 boundary metric/curvature、$K\ge-1$、ALH infinity 且满足非退化条件的 extensions 中 $H^0$ 的 infimum。常见非退化条件是无 enclosing closed geodesic 或 boundary outer-minimizing；若另加其他条件，须重新检查，不应将“满足两种常见条件”写成“满足任意条件”。

对本文 $g_u$，圆叶 $k_u>0$ 给 barrier，可排除外部 enclosing geodesic。外部任意围绕一次的曲线沿 $\varphi$ 投影到 $r_0$ 圆，因 $r\ge r_0$，其长度至少 $2\pi r_0$，提供 outer-minimizing 的直接理由。此处只有一个显式 admissible competitor，因此结论是 Bartnik 上界，不是 infimum 已被它取得。

固定同一 $u$，另选任意 $m<r_0^2$ 的 BTZ reference：
$$
k_m=\frac{\sqrt{r^2-m}}r,\qquad
N(r)=\sqrt{\frac{r^2-m}{1+r^2}},
$$
$$
Q_m(r)=\int_{\Sigma_r}(k_m-k_u)N(r)\sqrt{1+r^2}\,ds.
$$
因为 $m$ 只换 reference，不重解 physical $u$，可以最后优化它。计算给
$$
Q'_m(r)=-
\int_0^{2\pi}
\frac r{u\sqrt{r^2-m}\sqrt{r^2+1}}
\left(u\sqrt{r^2-m}-\sqrt{r^2+1}\right)^2d\varphi\le0.
$$
中间还有 $N(r)u_{\varphi\varphi}/r$，其周期积分为零。**Checked:** 将 PDE 代入 $Q_m$ integrand 的导数，与 square 加 angular derivative 的表达式之差精确为零，条件 $r>0,r^2>m,u>0$。

infinity 的归一化为
$$
\lim_{r\to\infty}Q_m(r)/\pi=H^0(g_u)-(m+1).
$$
原文证明中将
$$
N=1-\frac{m+1}{2r^2}+O(r^{-4})
$$
的系数二漏掉；正确二项展开已由 Mathematica 核准。使用修正式仍得到作者的最终 $H^0-(m+1)$，所以这处笔误不破坏下面的 bound。

## 7. 优化上界与零 curvature boundary

令 $\bar k=(2\pi)^{-1}\int k\,d\varphi=L^{-1}\int_\Sigma k\,ds$，在 boundary 上
$$
H^0(g_u)\le m+1+2(r_0^2-m)-2r_0\bar k\sqrt{r_0^2-m}.
$$
取 $t=\sqrt{r_0^2-m}>0$，配方为
$$
(t-r_0\bar k)^2+1+r_0^2-r_0^2\bar k^2.
$$
对 $k>0$，可选 $t=r_0\bar k$，即 $m=r_0^2(1-\bar k^2)<r_0^2$。因此实际得到比正文 Theorem 2 所突出结果更强的
$$
\mathfrak m_{\rm HB}\le H^0(g_u)
\le1+r_0^2-r_0^2\bar k^2
\le1+r_0^2.
$$
**Checked:** 配方残差为零，reference parameter 的选择符合允许区间。常数 $k$ 时可直接取
$$
g=\frac{dr^2}{r^2-m_*}+r^2d\varphi^2,\qquad
m_*=r_0^2(1-k^2),
$$
其 boundary curvature 是 $k$，$H^0=m_*+1$，实现上述 competitor bound；是否等于 Bartnik infimum 仍需下界证明。

对 $k\equiv0$，初值 $u_0$ 发散，不能硬套正初值 PDE。作者改取
$$
g_{r_0^2}=\frac{dr^2}{r^2-r_0^2}+r^2d\varphi^2
=d\rho^2+r_0^2\cosh^2\rho\,d\varphi^2.
$$
boundary $\rho=0$ 是 geodesic，$H^0=1+r_0^2$；$\rho>0$ 的叶 curvature 为 $\tanh\rho>0$。因此原文“全部叶正 curvature”必须改为“外部叶为正、horizon boundary 为零”。Theorem 2 不覆盖一般 $k\ge0$ 而局部有零点的混合数据。

## 8. 方程账本、核验与未证明部分

| 对象 / 命题 | 证据等级 | 使用边界 |
|---|---|---|
| 圆 reference 的 intrinsic isometry | Source-derived；定义重建 | 必须按弧长识别 angle，不保存原始 polar angle |
| $R(g_u)$ 与 parabolic PDE | Checked | xAct/xCoba Ricci scalar 残差零 |
| positive exterior existence/uniqueness、smooth ALH limit | Source-derived / Not independently verified | 标准 PDE 存在及正则性，不由 finite algebra 证明 |
| 第一条积分单调性 | Checked | 局部 angular term 修为 $u_{\varphi\varphi}/r$，积分结论不变 |
| ellipse $k_2$ 长式 | Failed at a stated point | 紧凑独立公式已重建 |
| ellipse mass measure、$2.8848$、小形变系数 | Failed as printed / Checked correction | $d\psi=(q/c)d\varphi$ 必须保留 |
| BTZ weighted monotonicity 和优化 bound | Checked algebra / conditional PDE input | infinity normalization 的中间展开需补因子 $1/2$ |
| Bartnik infimum、minimizer 或 rigidity | Not independently verified | 这里只建立显式 competitor 的上界 |

**Verified:** xCoba scalar curvature；Mathematica 的 normalized curvature expansion、局部单调性残差、BTZ square identity、reference expansion、配方；ellipse 加权/无权重级数与高精度积分；三个有限半径原始几何回归；formal $v$-PDE 代换。

**Assumptions:** unit hyperbolic radius，指定 Hamiltonian background 与角度周期 $2\pi$，$r_0>0$，smooth positive $k$ 或单独的 $k\equiv0$ branch，smooth periodic angular data，外延正 lapse，固定有限 $\epsilon>-1$，大 $R$ 在 $r^2>m$ 区域。Bartnik 比较采用文中可验证的常见 admissibility 条件。

**Blocked / recovery:** 本篇 MCP xAct 多次报 20/45 秒 timeout，Mathematica 一次 transport closed；已改用本地 wolframscript 与 xAct/xCoba 成功完成所列代数/曲率检查。没有剩余的公式计算工具 blocker；PDE theorem 和 Hamiltonian background 的一般协变证明仍不是此次计算覆盖的内容。

**Not verified:** smooth exterior PDE 的完整 functional-analytic 证明、所有 admissible extensions 的 infimum、positivity/rigidity 的额外 theorem、非 time-symmetric constraints、旋转 BTZ、一般 cut-independent Hamiltonian limit、action boundary/corner term 与 CPS bracket。

## 9. 对本地研究的具体用途

这篇提供的 gluing 是 Riemannian scalar-curvature extension，并以 boundary metric 与 curvature 匹配为接口。它可以作为“构造一个满足约束的外延，再比较其 charge”的模型；不能直接称为 Lorentzian solution-space symplectic gluing。

最值得保留的三个对象是 radial lapse PDE、非负 square 形式的质量耗散、可优化的 reference family。大椭圆失败则提醒：intrinsic isometric reference map 与坐标恒等映射不同；任何 boundary integral 在更换界面参数时都须一起搬运 observable 和 measure。该检查先于讨论极限是否是同一个 Hamiltonian charge。

返回今日总览：[[2026_09_03_overview]]。
