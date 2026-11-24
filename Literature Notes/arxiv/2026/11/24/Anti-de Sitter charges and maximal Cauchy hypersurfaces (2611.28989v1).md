---
paper id: 2611.28989v1
title: Anti-de Sitter charges and maximal Cauchy hypersurfaces
authors:
  - A. Rod Gover
  - Jarosław Kopiński
  - Andrew Waldron
publication date: 2026-11-21T19:02
abstract: |-
  在四维负宇宙常数真空 Einstein 时空中，从 maximal Cauchy 片的 Hamiltonian 和 momentum constraints 提取边界 Neumann 数据，重建 Ashtekar–Das 荷。即使截面不是 Willmore、切片有 polyhomogeneous 对数项，荷用到的投影组合仍然有限。
comments: "26 pages"
url: https://arxiv.org/abs/2611.28989v1
summary: "给 AdS 引力能量提供一个不依赖参考度规的初值算法，并固定与通常 Hamiltonian 能量比较的归一化。"
tags: []
---

# 从约束的临界法向系数读出 AdS 荷

给定一个 AdS 时空初值片，能否不先演化到完整时空、也不选参考度规，就算出时样无穷远的荷？[v1](https://arxiv.org/pdf/2611.28989v1) 的答案是：对四维真空 Einstein 解、物理 maximal 片和时样共形无穷远，可以。真正需要的是约束方程的两个 Neumann 组合，分别提取定义函数的四阶 jet 和外曲率的投影二阶 jet。这里不是在求新的 CPS 生成元，而是用已经定义的 Ashtekar–Das 荷检验另一条初值计算路线。下文正文页码等于 PDF 页码。

## 物理 maximality 如何变成边界条件（§§1–5，pp. 1–11）

取 $(-+++)$、AdS 半径为 1、$\mathrm{Ric}(g^o)=-3g^o$。光滑 ambient compactification 写作 $g=s^2g^o$，$\mathscr I=\{s=0\}$；$M$ 为 spacelike maximal slice，$S=\partial M\subset\mathscr I$。波浪号表示 $M$ 上的几何，横线表示 $\mathscr I$ 上的几何。$r=\tilde s=s|_M$，$\tilde g^o=r^{-2}\tilde g$。$H$ 为归一化平均曲率（trace 除以 hypersurface dimension），$K=\mathring{\mathrm{II}}^M$ 为 **compactified** 外曲率的无迹部分；物理 maximal 片的全外曲率就是 $r^{-1}K$。$\hat n$ 指向 $s$ 增大，$\hat m$ 是 $M$ 的未来单位时样法向；两者在 $S$ 正交，所以也是两条边界嵌入的法向 $\hat{\tilde n}$、$\hat{\bar m}$。

设 $P=(\mathrm{Ric}-Jg)/(d-2)$、$J=R/[2(d-1)]$，$n=ds$，$\rho=-(\Delta_g+J)s/4$。把 Einstein 方程乘以最小的共形幂次得 $sP+\nabla n+\rho g=0$；对应的 maximal 条件是 $sH^M-n(\hat m)=0$。取 $s=0$ 立刻得到正交。第一式在边界给出 $\mathscr I$ umbilic；第二式及其边界导数则给 $\mathrm{II}^{S\hookrightarrow M}=H^{\mathscr I} \tilde{\bar g}$、$K(\hat{\tilde n},\cdot)|_S=0$、$i^*K=\mathring{\mathrm{II}}^{S\hookrightarrow\mathscr I}$。特别是 $S\hookrightarrow M$ umbilic **不等于** $S\hookrightarrow\mathscr I$ Willmore。

三维 compactified constraints 是 Eq. (10)：

$$
 |dr|_{\tilde g}^2-\frac{2r}{3}(\tilde\Delta+\tilde J)r=1-\frac{r^2}{6}|K|_{\tilde g}^2,
 \qquad \mathcal M_a(K)=r\tilde\nabla^bK_{ba}-2\tilde\nabla^b r\,K_{ba}=0 .
$$

第一个式子来自 $R[r^{-2}\tilde g]=r^2\tilde R+4r\tilde\Delta r-6|dr|^2=-6+r^2|K|^2$。第二个来自物理散度 $\tilde\nabla_{(o)}^b(r^{-1}K_{ba})$：用 $\hat\Gamma^a{}_{bc}-\tilde\Gamma^a{}_{bc}=-(\delta^a_b\partial_c r+\delta^a_c\partial_b r-\tilde g_{bc}\partial^a r)/r$，再用 $\operatorname{tr}K=0$ 得到上式。不是任意指定 $r,K$：问题欠定，常规 York 方法可以额外给 seed data；作者只对一个已满足约束、来自所假定 Einstein 时空的解定义荷，不宣称局部 Dirichlet 数据唯一给出所有初值。

## 读出 $h_4^{\rm ren}$ 和 $p_2^{\rm ren}$（§§4、6、8，Apps. A–B）

用 $N=\hat{\tilde n}$、$H=H^{S\hookrightarrow M}$、$D=\tilde\nabla$、$D_S$ 为 $S$ 的联络，$\Pi_S$ 为切向投影。定理 1（p. 3）、Eqs. (17)、(29)、(40) 给出：

$$
\begin{aligned}
 h_4^{\rm ren}&=\frac13\big[N^aN^bN^cN^dD_aD_bD_cD_d r+H(2\tilde P_{NN}-|K|^2)+3N^aN^bN^cD_a\tilde P_{bc}\big]_S,\\
 p_2^{\rm ren}&=\Pi_S\big[\tfrac12 N^bN^cN^dD_bD_cK_{d\cdot}+\tfrac32H D_S^b(i^*K)_{b\cdot}-\tfrac12(i^*K)_{b\cdot}D_S^b H\big]_S .
\end{aligned}
$$

这里的 $H$ 不应提前置零：maximal 是物理 $g^o$ 下的 $M$，并不意味着 $\tilde g$ 下 $S$ totally geodesic。Hamiltonian 的临界阶可从平直 collar 的主部看出：在 $r=x+u$、$|dx|^2=1$ 附近，$|dr|^2-2r\Delta r/3$ 的线性法向主部为 $2\partial_xu-2x\partial_x^2u/3$，对 $x^k$ 给 $2k(4-k)x^{k-1}/3$。四阶不再能由局部递推解出。作者使用边界曲率标量 $\tilde\pi_j$ 将系数变成共形密度。具体地，$D_aD_b r|_S=H\tilde g_{ab}$ 使 $\tilde\pi_1=1,\tilde\pi_2=0$；式 (38) 是 $\tilde\pi_3=(H^M)^2-2P_{NN}+2\tilde P_{NN}$，Gauss 给 $P_{NN}-\tilde P_{NN}=(H^M)^2/2+|K|^2/4$，故 $\tilde\pi_3=-|K|^2/2$。这正是 Eqs. (17)、(40) 中 $-H|K|^2$ 的来源，不能把约束当作纯 singular Yamabe，直接令 $\tilde\pi_3=0$。

对动量，写 $K=K^{(0)}+rK^{(1)}+r^2K^{(2)}+\cdots$，取 $K^{(0)}$ 在整个 collar 满足 $dr\cdot K^{(0)}=0$。代入 $\mathcal M$ 时一项 $k r^k dr\cdot K^{(k)}$ 来自微分，另一项 $-2r^k dr\cdot K^{(k)}$ 来自乘法，因此一阶给 $dr\cdot K^{(1)}=D\cdot K^{(0)}$，二阶 $K^{(2)}$ 的系数消失而留下 obstruction $L$。这也解释了 $\mathcal M(r^2 A)=r^3 D\cdot A$，为何 smooth 的二阶系数不由边界局部确定（pp. 12–13, Eq. 52）。

与时空荷的匹配不是把 $h_4,p_2$ 当新的定义强加上去。四维真空时 $\mathscr I$ 的第四共形基本形式 $\mathring{\mathrm{IV}}^\mathscr I$ 是切向投影的 Cotton 分量 $C_{\hat n ab}$，也等价于重标度 Weyl electric datum（Eq. 13）。Appendix A 用 $\rho|_{\mathscr I}=-H^\mathscr I$、$\nabla_{\hat n}\rho=P_{\hat n\hat n}$，在 almost-Einstein 方程上取两次法向导数。由此 $\nabla_{\hat n}^4s$ 的收缩与 $2H^\mathscr I P_{\hat n\hat n}+3\nabla_{\hat n}P_{\hat n\hat n}$ 相消（Eq. 43）；将 ambient jet 换成 $M$ 的 jet 时还必须对切向 projector 求导（Eq. 44）。Gauss/Codazzi 化简之后，Eq. (45) 等于 $C_{N\hat{\bar m}\hat{\bar m}}$（Eq. 47）。

Appendix B 先用一阶动量 jet $\Pi_S(D_NK_{N\cdot})=D_S^b(i^*K)_{b\cdot}$、$D_N K_{NN}=0$（法向在此作为收缩，不是再对延拓的 $N$ 求导），将 $\Pi_S C_{N\hat{\bar m}\cdot}$ 化为 $\tfrac12\Pi_S N^b D_bD^cK_{c\cdot}+H D_S\cdot i^*K-(i^*K)(D_SH,\cdot)$，见 Eq. (50)。把散度拆成 normal 与 tangential 两块，二阶约束（Eq. 51）的切向块正补上 $\tfrac12 H D_S\cdot i^*K+\tfrac12(i^*K)(D_SH,\cdot)$，得到 $p_2^{\rm ren}$。于是沿 $S$ 取 $\bar\xi=\nu\hat{\bar m}+\tilde{\bar\xi}$，$\nu=-\bar g(\bar\xi,\hat{\bar m})$，有

$$
 Q_{\bar\xi}=-\int_S(\nu h_4^{\rm ren}+p_2^{\rm ren}(\tilde{\bar\xi}))\,d\mathrm{vol}_S .
$$

两个分量的权重分别 $-3,-2$；$\nu$ 权重 $+1$，切向 $\bar\xi$ 权重 0，所以 $\Omega^2$ 的面积权重抵消。闭 cut 之间的守恒来自 $\bar\nabla_a(\mathring{\mathrm{IV}}^a{}_b\bar\xi^b)=0$：$\mathring{\mathrm{IV}}$ 的散度、迹都为零，CKV 的对称导数是 pure trace。不需要 $\bar\xi$ 延拓为物理解的精确 Killing 场。

## 非 Willmore 截面：发散的 jet 为什么不进入荷（§7，Apps. C–D）

若 $S\hookrightarrow\mathscr I$ 的 Willmore 变分密度不为零，设 smooth 近似 maximal defining function 的残差是 $b r^3$。pullback 到真实 $M$ 后，首阶法向算符为 $\partial_r-(r/3)\partial_r^2$，作用在 $r^k$ 上给 $k(4-k)r^{k-1}/3$。四次幂不能拟合残差；作用在 $r^4\log r$ 上却给 $-4 r^3/3$，故 $t_{\rm as}|_M=-3b r^4\log r/4+O(r^4)$。对它取两次导数产生 $(12\log r+7)r^2$。于是 Eq. (61) 的首个 $K$ 对数项是 $9b r^2\log r\,Q_{ab}$，$Q_{ab}=N_aN_b-\tilde g_{ab}/3$、$N$ 取单位 level-set 延拓。代入 $\mathcal M$，$(r\partial_r-2)(r^2\log r)=r^2$、$N^bQ_{ab}=2N_a/3$，故产生 $6br^2 N_a$，恰抵消 $L|_S=-6bN$。二阶导数的奇异部分只沿 $N$，而 $\Pi_S(Q\cdot N)=0$；剩余的 $r\log r$ 项消失，所以 $p_2$ 有良好极限，不需要主张完整二阶 jet 连续。

$h_4$ 的保护机制不同。正交性使 $\tilde g$ 的首个 log 推迟到 $r^4\log r$。Hamiltonian 的纯内禀 Willmore 项因 $S\hookrightarrow M$ umbilic 而掉出，余下的潜在三阶 obstruction 是 rigidity $|K|^2$ 的 Robin 导数 $(D_N+2H)|K|^2/2$（前面整体符号按文中 §7），在 maximal 真空嵌入上由 Codazzi 与边界 Weyl 消失而为零。直接从 Eq. (62) 可见 $D^2r=-rP|_{TM}-\rho\tilde g+rH^M\mathrm{II}^M$，最后一项即使含 $K$ 的 log，也从 $r^3\log r$ 才起；再取两次导数仍连续。因而 App. A 的有限组合不依赖把不光滑项人为删去。论文不证明任意指定的非 Willmore cut 都存在全局 maximal 填充。

## Schwarzschild–AdS 验算与当前用途（§8.1，pp. 15–16）

在 $\tilde g=dr^2+(1-r^2/4)^2\gamma_{S^2}+r^3\tilde g^{(3)}+\cdots$、$K=r^2\kappa^\circ+\cdots$ 的例子中，$H=0$ 且 $D_N^kr=0$（$k\ge2$）。写 $L_{AB}=\tfrac12\partial_r\tilde g_{AB}$；由 $\mathrm{Ric}_{rr}=-\partial_r\mathrm{tr}L-|L|^2$，三阶项给 $\partial_r\mathrm{Ric}_{rr}|_S=-3\operatorname{tr}\tilde g^{(3)}$，标量曲率给 $\partial_r R|_S=-6\operatorname{tr}\tilde g^{(3)}$。因为三维 $\tilde P=\mathrm{Ric}-R\tilde g/4$，$h_4=-3\operatorname{tr}\tilde g^{(3)}/2$；而 $p_2=\Pi_S\kappa^\circ(N,\cdot)$。取 Einstein cylinder 的 $t=0$ cut，$\partial_t,\omega^i\partial_t,-D_S\omega^i,2\omega^{[i}D_S\omega^{j]}$ 分别抽出能量、动量、质心、角动量。论文的裸 Hamiltonian charge 是裸 Ashtekar–Das 荷两倍；恢复 $1/(16\pi G)$ 与 $1/(8\pi G)$ 后相等。

对静态 Schwarzschild–AdS，$f(R)=1+R^2-2m/R$，$dR/dr=-\sqrt f/r$。令 $R=r^{-1}+ar+br^2$，配比给 $a=-1/4,b=m/3$；因此 compactified angular metric 的三阶系数为 $(2m/3)\gamma$，$h_4=-2m$、$p_2=0$。对于 $\nu=1$，$Q/(8\pi G)=m/G$，纯 AdS 则为零。这是 vault 使用未来全局时间、真空扣除的 $H_\xi$ 时可直接复用的符号和归一化测试。对 Einstein–scalar 项目，下一步应比较 backreaction 后的 normalizable metric coefficient 与 CPS 生成元，再单列 scalar source/response 和边界变分项；不能把真空 Eq. (10) 当成带标量的约束，也不能把全局 closed cut 的荷直接视为任意子区域可积 Hamiltonian。

复算范围：xAct 从共形联络差重得 trace-free momentum 算符；Mathematica 检查四阶 resonance 与 $-4/3$ 对数系数、投影特例、圆截面 $\partial_n\tilde P_{nn}$ 与 Schwarzschild–AdS 三阶系数。一般的 Cotton 逐项消去和非 Willmore 存在性不在独立计算范围内；前者依赖原文 Apps. A–D 的光滑 ambient 真空假设，后者不是定理的结论。
