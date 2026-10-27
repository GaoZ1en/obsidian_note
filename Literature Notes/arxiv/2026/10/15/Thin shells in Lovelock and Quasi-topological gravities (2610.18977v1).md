---
paper id: 2610.18977v1
title: Thin shells in Lovelock and Quasi-topological gravities
authors:
  - Pablo Bueno
  - Pablo A. Cano
  - Robie A. Hennigar
  - Ángel J. Murcia
  - Aitor Vicente-Cano
publication date: 2026-10-13T18:00
abstract: |-
  We derive the junction conditions for spherically symmetric thin shells in Lovelock and Quasi-topological gravities along two independent routes: from the distributional form of the field equations, and from the boundary term that makes the variational problem well-posed in the non-null case. The former method is ambiguous as it stands, since the equations contain products of Heaviside step functions with a Dirac delta. We show that the singular parts of the field equations are exact differentials in the jumping variables, so that the Vol'pert chain rule for functions of bounded variation fixes these singular combinations uniquely and no products of two deltas survive for a single shell, finding that both routes then agree. The same rule yields the null junction conditions, for which no boundary term is available in Quasi-topological gravities, together with the mass conservation law of the shell. These results clarify recent questions concerning the existence of thin shells in these theories. In particular, we show that previous claims that the junction conditions force the shell mass to vary with radius are incorrect and arise from treating a trapezoidal approximation to the relevant distributional products as exact. Our results also provide a basis for the recent analyses of mass inflation in these theories.
comments: "23 pages, no figures"
url: https://arxiv.org/abs/2610.18977v1
summary: "球对称薄壳的 Volpert 原函数、non-null 边界动量与 null 质量平衡；有限多项式和约化变分检查。"
tags: []
---

# Thin shells in Lovelock and Quasi-topological gravities

本文最可复用的对象是球对称约化后的边界动量：non-null 情形可同时从作用量和场方程的奇异部分得到；null 情形目前只有分布式构造。处理单壳层时，先把奇异组合写成跳变量空间中的全微分，再取 BV/Vol'pert 极限。把端点算术平均代入非线性分布乘积一般会改变壳层质量。

[Official source](https://arxiv.org/abs/2610.18977v1)；当日入口：[[2026_10_15_overview]]。理由：`T1-boundary; T1-Wald-CPS; T2-model`。以下先重建公式链，再记录独立检查。

## 结构与阅读路径

- I Introduction：薄壳存在性争议与错误端点平均。
- II Lovelock and Quasi-topological gravities：A 二维有效描述；B 场方程、vacuum solutions。
- III Warm-up: thin-shell limit of Vaidya：A Vol'pert chain rule；B trapezoidal approximation；C 其局限。
- IV Non-null shells：A distributional approach，依次 first matching、singular structure、Vol'pert prescription、二维与角向 second matching、mass conservation、singular Lagrangian/boundary term；B variational approach，依次 first matching、boundary equations、shell second matching、二维与角向条件、mass conservation。
- V Null shells：first matching、singular parts、null-generator equation、angular equation、mass conservation、potentials and null boundary term。
- VI Discussion：单壳层结果与后续多壳层问题的界限。
- Appendix A：non-null 与 null 的级数重求和；Appendix B：一般二维 Horndeski 的 field equations、non-null shells、null shells。

**How to read this long paper.** 23 页但公式链密集，按 monograph mode 使用。核心路径 II → III.A → IV.A 势函数 → IV.B 变分动量 → V。III.B–C 是错误 prescription 的必要对照；A 为重求和参考；B 为一般二维模型的参考；引言与讨论提供背景。全部章节均纳入本笔记；讨论中的 mass inflation 不是已证明的壳层交叉规则。

## II：从球对称高曲率引力到二维数据

取 $D\geq5$，球对称度规与不变量

$$ds_D^2=\gamma_{\mu\nu}dx^\mu dx^\nu+\phi^2d\Omega_{D-2}^2,
\quad X=(\nabla\phi)^2,\quad\psi=\frac{1-X}{\phi^2}.$$

$\mu,\nu$ 为二维指标，$i,j$ 为球面指标，$\phi>0$ 是面积半径。特征函数 $h(\psi)=\psi+\sum_{n\ge2}\alpha_n\psi^n$；$\alpha_n=\widetilde\alpha_n(D-2n)/(D-2)$。以下逐幂公式排除 $D=2n$ 的拓扑项，不能直接把分母置零。

记 $c=(D-2)\Omega_{D-2}/(16\pi G)$，约化作用量为

$$I_2=c\int\sqrt{-\gamma}\,\mathcal L\,d^2x,
\quad\mathcal L=G_2-G_3\Box\phi+G_4R-2G_{4X}[(\Box\phi)^2-\phi_{;\mu\nu}\phi^{;\mu\nu}],$$

$$G_2=\phi^{D-2}[(D-1)h-2\psi h'],\quad G_3=2\phi^{D-3}h',
\quad G_4=-\frac12\phi^{D-2}\psi^{(D-2)/2}\int d\psi\,\psi^{-D/2}h'.$$

逐项 $h=\alpha_n\psi^n$ 给出 $G_4=n\alpha_n\phi^{D-2n}(1-X)^{n-1}/(D-2n)$。关键恒等式

$$G_{4\phi}=G_3/2,\qquad G_{2X}=-G_{3\phi}/2$$

只属于这一理论族。它们把场方程压缩为

$$\mathcal E_{\mu\nu}=\frac{D-2}{\phi^{D-2}}\left[\frac{G_3}{2}(\gamma_{\mu\nu}\Box\phi-\phi_{;\mu\nu})-\frac{G_2}{2}\gamma_{\mu\nu}\right],$$

$$\mathcal E_{ij}=\frac{g_{ij}}{2\phi^{D-3}}\left[G_{3\phi}\Box\phi-G_{2\phi}-\frac12G_3R+G_{3X}((\Box\phi)^2-\phi_{;\mu\nu}\phi^{;\mu\nu})\right].$$

在 $ds_2^2=-N^2fdt^2+dr^2/f,\phi=r$，

$$\partial_r(r^{D-1}h)=-\frac{16\pi G}{D-2}r^{D-2}T^t{}_t,
\quad\frac{\partial_tf}{rf}=-\frac{16\pi G}{(D-2)h'}T_{tr},$$

$$\frac{\partial_rN}{rN}=\frac{8\pi G}{(D-2)fh'}(T^r{}_r-T^t{}_t).$$

真空有 $h((1-f)/r^2)=2\mathcal M/r^{D-1}$，$\mathcal M=8\pi GM/[(D-2)\Omega_{D-2}]$。$h'=0$ 分支和跨根反演不能从除以 $h'$ 后的式子判断；壳层条件应使用原始势函数。

## III：Vaidya 正则化选出 secant

令 $h(\psi_\epsilon)=2\mathcal M_\epsilon(v)/r^{D-1}$，$\mathcal M_\epsilon=\mathcal M_-+\Delta\mathcal M H_\epsilon$。平滑方程给出

$$T_{vv}=T^r{}_v=\frac{D-2}{8\pi Gr^{D-2}}\Delta\mathcal M\,\delta_\epsilon(v).$$

积分质量 $\Delta M=(D-2)\Omega_{D-2}\Delta\mathcal M/(8\pi G)$ 不随半径改变。先整体使用平滑链式法则：

$$h'(\psi_\epsilon)d\psi_\epsilon=d[h(\psi_\epsilon)]\longrightarrow[h]\delta,
\quad\langle h'\rangle_V=\int_0^1h'(\psi_-+s[\psi])ds=\frac{[h]}{[\psi]}.$$

$[F]=F_+-F_-$；$[\psi]=0$ 取连续极限。这不是分别取两个弱极限后相乘。端点梯形平均 $(h'_++h'_-)/2$ 一般产生

$$\Delta\mathcal M_{\rm trap}-\Delta\mathcal M=\frac{r^{D-1}[\psi]^3}{24}h^{(3)}(\psi_*).$$

$h=\psi+\alpha_3\psi^3$ 时误差恰为 $\alpha_3r^{D-1}[\psi]^3/4$。纯幂 $h=\alpha\psi^K$ 时错误答案甚至仍可不依赖 $r$；因此半径无关不能单独证明 prescription 正确。

null 路径中 $\psi$ 线性依赖跳变量，二次 $h$ 的梯形法恰好精确；non-null 的 $\psi=a+bH+cH^2$，即使 Gauss–Bonnet 项也不具备同样性质。

## IV：non-null 匹配的分布式与变分式构造

### 第一匹配与 rank-one 奇异项

法向 $n^2=\varepsilon=\pm1$ 从 minus 指向 plus，$h_{\tau\tau}=-\varepsilon$。$K$ 是二维边界外曲率迹，完整迹为 $K+(D-2)\phi_n/\phi$。第一匹配 $[\phi]=[h_{\tau\tau}]=0$ 保证切向导数连续，但 $u=\phi_n,K$ 可跳。令 $Y=-\varepsilon\dot\phi^2$，$X=Y+\varepsilon u^2$。

Hessian 奇异项为 $n_\mu n_\nu[u]\delta$，$R_{\rm sing}=-2\varepsilon[K]\delta$。反对称二阶组合中的 $\delta^2$ 系数为

$$[u]^2[(n^2)^2-n_\mu n_\nu n^\mu n^\nu]=0.$$

这是单法向的 rank-one 结果，不能直接推广到壳层交叉。余下 delta 项仍需通过跳变量的全微分定义。

### $F_3$、角向势与 second matching

定义

$$F_w(\phi,Y,u)=\int_0^uG_w(\phi,Y+\varepsilon z^2)dz,
\quad A=\Omega_{D-2}\phi^{D-2},\quad m=A\sigma,$$

$$(\mathsf m,\mathsf p)=\frac{8\pi G}{(D-2)\Omega_{D-2}}(m,p).$$

壳层应力 $S_{AB}=(\sigma+\varepsilon p)u_Au_B+ph_{AB}$。Eq. (85)/(133) 为

$$-[F_3]=2\mathsf m,
\qquad\int_{u_+}^{u_-}h'\!\left(\frac{1+\varepsilon\dot\phi^2-\varepsilon z^2}{\phi^2}\right)dz=\frac{\mathsf m}{\phi^{D-3}}.$$

由 $\partial_uF_3=G_3$，奇异二维方程积分成为端点原函数差。角向条件同时涉及 $u,K$：

$$\Phi_\phi=-\varepsilon(G_3K+F_{3\phi}+2\Box_h\phi F_{3Y}),
\qquad-[\Phi_\phi]=2\mathsf p\frac{dA}{d\phi}.$$

偏导保持其他变量固定。全微分才保证结果不依赖连接端点的路径；作为反例，$\int v\,du$ 沿 $v=u$ 和 $v=u^2$ 在相同端点间分别为 $1/2,1/3$。

GR 极限 $h=\psi$ 恢复 $[u]=-8\pi G\sigma\phi/(D-2)$ 和

$$[K]+\frac{D-3}{\phi}[u]=8\pi G\varepsilon p.$$

这里 $K$ 仍是二维 trace，不能替换成完整 trace 而不改其他项。

### 边界作用量与动量

从奇异 Lagrangian 抽出法向全导数，得到

$$B=\varepsilon\int d\tau\sqrt{|h|}(F_3+2G_4K+4\Box_h\phi F_{4Y}).$$

奇异体作用量为 $-c[B]$。两侧区域 outward normals 相反。加入边界项后固定 induced metric 与 $\phi$，法向导数的变分抵消，余下动量为

$$\Pi_{\tau\tau}=\frac{D-2}{2\phi^{D-2}}F_3,
\quad g^{ij}\Pi_{ij}=\frac{D-2}{2\phi^{D-3}}\Phi_\phi,
\quad-[\Pi_{AB}]=8\pi GS_{AB}.$$

约化变量的动量 $J_{\tau\tau}=cF_3/2$，另一表示为

$$J_\phi=\frac{c\varepsilon}{\dot\phi}\left(\frac{dF_3}{d\tau}-G_3\nabla_n\nabla_\tau\phi\right),
\quad\nabla_n\nabla_\tau\phi=\dot u-K\dot\phi.$$

$\dot\phi=0$ 时应使用无除法的角向势，不能据此表示式判定 turning point 奇异。

### 质量平衡

由 constraint 与 second matching，或壳层重参数化变分，Eq. (106)/(136) 为

$$\dot m+\varepsilon p\dot A-A[T_{\tau n}]=0.$$

只有零压、无净通量时 $m$ 恒定；有压壳层的面积功不能省略。

## V：null 势、frame 与守恒

取 $k^2=N^2=0,k\cdot N=-1$，$v=\phi_\lambda=k\cdot\nabla\phi$ 连续，$u=\phi_N=N\cdot\nabla\phi$ 可跳，$X=-2vu$。$C_{AB}=\tfrac12\mathcal L_Ng_{AB}$，$C_{\lambda\lambda}$ 记录 nonaffinity。原文归一化 $\zeta=-1/(-k\cdot u_{\rm obs})<0$，$T^{ab}_{\rm sing}=-\zeta S^{ab}\delta$，$S^{ab}=\mu k^ak^b+p\sigma^{ab}$；球对称切向电流为零。

Hessian 奇异项 $-\zeta k_\mu k_\nu[u]\delta$ 的 trace 为零，$R_{\rm sing}=-2\zeta[C_{\lambda\lambda}]\delta$。定义

$$\mathscr F_3=\int_0^uG_3(\phi,-2vz)dz
=\frac{\phi^{D-1}}v\left[h\!\left(\frac{1+2vu}{\phi^2}\right)-h\!\left(\frac1{\phi^2}\right)\right].$$

有 $-[\mathscr F_3]=2\mathsf m$，$m=A\mu$。$v\ne0$ 时

$$-\frac{\phi^{D-1}}{2v}[h]=\mathsf m,
\quad-[\mathscr M]=\mathsf m v,
\quad\mathscr M=\frac12\phi^{D-1}h(\psi).$$

$v\to0$ 用原始积分得 $\mathscr F_3\to G_3(\phi,0)u$。非膨胀壳层仍可携带质量；乘过 $v$ 的式子丢失了这一条件。

角向势为

$$\Phi_\phi=G_3(C_{\lambda\lambda}-\phi_{\lambda\lambda}/v)\quad(v\ne0),$$

或正则表示

$$\Phi_\phi=G_3C_{\lambda\lambda}+2\phi_{\lambda\lambda}\int_0^uG_{3X}(\phi,-2vz)dz,
\quad-[\Phi_\phi]=2\mathsf p\frac{dA}{d\phi}.$$

GR 极限 $[C_{\lambda\lambda}]=-8\pi Gp$。由质量定义先求导，再代入二维方程消去 Hessian：

$$d\mathscr M=\frac{G_2}{2}d\phi-\frac{G_3}{4}dX,$$

$$\nabla_\mu\mathscr M=\frac{8\pi GA}{(D-2)\Omega_{D-2}}(T_{\mu\nu}-T\gamma_{\mu\nu})\nabla^\nu\phi,$$

$T$ 为二维 trace。沿生成元取跳值得 Eq. (182)

$$\frac{d(mv)}{d\lambda}-A[T_{\lambda\lambda}\phi_N]+Av[T_{\lambda N}]=0.$$

真空、$\lambda=-\phi$ 选规下 $m=M_+-M_-$ 恒定。$k\to\alpha k,N\to N/\alpha$ 时 $\mu\to\mu/\alpha,p\to\alpha p$，所以 $mv$ 比 $m$ 更适合比较不同 null frame。不能忽略参数归一化而称 $m$ 是不变量。

这些势是 null 边界动量的候选；论文未构造 Quasi-topological null boundary action，也没有完成角点变分问题。

## Appendices：级数重求和与一般二维 Horndeski

A 使用 $\Theta^k\delta\mapsto\delta/(k+1)$，保留 Heaviside 幂后重求和为原函数。non-null 的 $\psi$ 含 $\Theta^2$，null 的路径为线性，因此梯形误差不同。无限塔另需收敛与极限交换条件；有限多项式检查不证明任意耦合序列成立。

B 允许独立 $G_2,G_3,G_4$，定义

$$P=G_2+X\partial_\phi(G_3-2G_{4\phi}),\quad Q=2G_{4\phi}-2X\partial_X(G_3-2G_{4\phi}),\quad W=P_X+Q_\phi/2.$$

二维方程的括号变成 $\tfrac Q2(\gamma_{\mu\nu}\Box\phi-\phi_{;\mu\nu})-\tfrac P2\gamma_{\mu\nu}+W\nabla_\mu\phi\nabla_\nu\phi$，角向表达式为

$$
(Q_\phi+2W)\Box\phi-P_\phi-\frac Q2R+Q_X[(\Box\phi)^2-\phi_{;\mu\nu}\phi^{;\mu\nu}]
+2XW_\phi+2W_X\nabla\phi\cdot\nabla X.
$$

non-null 势 $F_Q=\int_0^uQ(\phi,Y+\varepsilon z^2)dz$，角向势

$$-\varepsilon(QK+F_{Q\phi}+2\Box_h\phi F_{QY}+2uW).$$

null 势 $\mathscr F_Q=\int_0^uQ(\phi,-2vz)dz$，角向势

$$QC_{\lambda\lambda}+2\phi_{\lambda\lambda}\int_0^uQ_X(\phi,-2vz)dz+2vW.$$

原理论对应 $P=G_2,Q=G_3,W=0$。$v=\phi_{\lambda\lambda}=0$ 时保留条件 $-Q(\phi,0)[u]=2\mathsf m$，$Q[C_{\lambda\lambda}]=-2\mathsf pA'$，提供非膨胀界面的测试模型。

## 公式账本、依赖图与区域拼接

| Source cluster | 对象 | 依赖与界限 |
|---|---|---|
| II | $h\mapsto G_w$、二维场方程 | 球对称、拓扑分母、归一化 |
| III | $[h]/[\psi]$ | 整体平滑链式法则 |
| IV.A Eq. (85), (102)–(106) | $F_3,\Phi_\phi$、质量平衡 | 第一匹配、单壳层、全微分 |
| IV.B Eq. (133), (136) | $B,\Pi_{AB}$ | outward normals、non-null Dirichlet 数据 |
| V Eq. (169)–(182) | $\mathscr F_3,\mathscr M,mv$ | null frame、零膨胀取积分极限 |
| A/B | 级数、$P,Q,W$ | 收敛、一般模型额外 $W$ 项 |

全局符号：$\phi$ 为面积半径；$X,\psi,h,G_w$ 为 bulk 数据；$u,Y,K$ 为 non-null 跳变量与切向数据；$u,v,C_{\lambda\lambda}$ 为 null 数据；$m,p$ 为物理壳层数据，$\mathsf m,\mathsf p$ 含引力归一化；$\mathcal M,\mathscr M$ 为约化质量。

依赖图：球对称作用量 → $G$ 恒等式 → 简化场方程 → 第一匹配后的 rank-one 奇异项 → 全微分 → junction potentials。non-null 第二路径：作用量 → 导数变分抵消 → $\Pi_{AB}$ → 壳层 response 匹配。null 目前只有第一条路径；质量平衡从 constraints 与 matching 闭合。

迁移到 regional sewing 时，以 $(h_{AB},\phi)$ 为界面 configuration，以上 $\Pi$ 为 response，检查两侧动量及壳层 response 的和。若继续做 CPS，需从完整 variation 提取 $\theta$，处理切向全导数和角点，再讨论 $\omega=\delta\theta$ 的拼接。本文给出边界输入，没有证明 presymplectic reduction、edge-mode algebra 或量子 factorization。

## 独立检查与证据边界

**Source-derived:** 章节链、matching、BV 适用性主张及物理解释来自 v1；PDF 第 9、16 页的符号、原函数、null mass 另经渲染核对。文本提取仅用于导航。

**Verified / Checked:**

1. Mathematica 对四次有限多项式 $h$ 验证两个 $G$ 恒等式、质量梯度、secant、三次误差、null 原函数及 $v\to0$ 极限，残差均零。non-null 二次项梯形误差为 $\alpha_2\varepsilon(a-b)^3/(3\phi^2)$（从 $a$ 积分至 $b$），一般非零。
2. Gaussian 度规 $ds_2^2=-\varepsilon A(t,l)^2dt^2+\varepsilon dl^2$ 保留任意函数的 jet，直接变分 bulk 与 boundary。$D=5,7$、$\varepsilon=\pm1$、$h=\psi^n,n=1,2,3$ 的两个 bulk equations、两个法向导数 variation cancellation、两个 boundary momenta，共 **72 个零残差**。这是指定模型的符号恒等式检查，未穷尽所有维数、阶数、未固定度规的 constraints。
3. xCoba 检查 Gaussian $R=-2\varepsilon A_{ll}/A$（component run 取 $\varepsilon=+1$）；xTensor 的 trace、质量梯度 contraction、rank-one cancellation、mixed-Hessian 四项残差为零。
4. 对独立符号函数 $G_2,G_3,G_4$，同一 Gaussian gauge 在 $\varepsilon=\pm1$ 的两个 Euler–Lagrange 方程共 **4 个零残差**；Appendix B non-null/null 角向势导数系数亦通过。此项未替代 gauge-unfixed constraints。

**Assumptions:** $\phi>0$；单壳层；第一匹配；可定义的 BV/平滑正则化；固定法向与 null frame；函数在相关区间可微；有限多项式避开 $D=2n$；无穷塔另需收敛。

**Not verified / Not independently verified:** 任意曲率阶的原始 $D$ 维张量约化、一般 BV 存在唯一性定理、无限塔极限交换、非球对称壳层、多壳层交叉、mass inflation、null boundary action、corner-complete CPS gluing。没有尚未解决的工具阻塞；初次 xAct dummy-index 冲突已修正并重跑成功，没有据调试失败推断物理结论。

复现文件保存在本次临时目录：`check-algebra.wl`、`check-variation.wl`、`check-xact-final.wl`、`xact-checks.json`、`check-general-horndeski.wl`、`check-potentials.wl`，目录 `/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/arxiv-daily-20261015-refresh-h4e5w9ce/2610.18977v1/`。临时目录可被系统清理；本节条件、残差数量及检查范围是持久摘要。
