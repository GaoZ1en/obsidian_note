---
paper id: 2611.15510v1
title: "1-loop partition function of 11d supergravity on AdS4 x S7/Zk: matching A(k) in ABJM free energy"
authors:
  - Stefan A. Kurlyand
  - Arkady A. Tseytlin
publication date: 2026-11-11T14:04:30Z
abstract: |-
  Square-integrable harmonic two-forms on Euclidean AdS4 generate a decoupled mixed sector of the eleven-dimensional three-form fluctuation operator, absent from the usual dualized KK spectrum. Its determinant combines with the KK characters, and a cyclic projection plus a specified Mellin zeta prescription reproduces the ABJM Airy constant A(k). The analogous singular ADHM quotient additionally requires localized seven-dimensional SU(p) vector multiplets. The fully normalized one-loop free energy still contains a finite zero-mode-measure constant.
comments: "44 numbered pages; PDF has 45 pages including an unnumbered title page"
url: https://arxiv.org/abs/2611.15510v1
summary: "漏掉的是Euclidean算符定义域中的离散harmonic sector，不是新的Lorentzian粒子；A(k)谱匹配很强，完整测度归一化仍有条件。"
tags: []
---

# 先补全 Euclidean 谱，再谈一圈自由能匹配

**在指定的谱域、超对称标量量子化和 Mellin–ζ 处方下，补上 harmonic sector 后的 $A(k)$ 匹配成立；完整配分函数的绝对归一化仍差一个未独立算出的有限测度常数。** 这篇最有价值的不是把一圈超引力再算一遍，而是指出“标准 Lorentzian KK 物理场谱”并不自动等于“完整 Euclidean gauge-fixed 行列式谱”。四维 Hodge 对偶化在连续谱上等谱，却会漏掉 $L^2$ harmonic 二形式。

我从 $SO(8)$ Weyl 公式和15组 KK conformal multiplets 重新求和，精确复现了 KK 与 harmonic 两个闭式、相消及双 fugacity 扩展；还用直接 Euclidean Plancherel 积分核验了前三个 KK level 的行列式，而不只检查最终答案。ADHM 固定点上的局域 vector multiplet 也逐 level 重算通过。

读完 [v1](https://arxiv.org/abs/2611.15510v1) §1–6、附录 A–H，以及所用 [源文件](https://arxiv.org/src/2611.15510v1)。[PDF](https://arxiv.org/pdf/2611.15510v1) 实为45页，题名页无页码，**PDF页码＝正文印刷页码＋1**。已查看 PDF第13、20、22、28、39页，覆盖 harmonic 谱及解耦、总 integrand、Mellin 与零模归一化、Hodge complex、局域7D谱和 ADHM 合成。

## 1. 要匹配的量，以及固定的约定

取 Euclidean $H^4\times M_7$，$M_7=S^7/\mathbb Z_k$，$k\in\mathbb Z_{>0}$。$S^7$ 半径为 $L$，AdS 半径是 **$L/2$**：

$$
d\hat s^2=L^2\left(\tfrac14ds^2_{H^4}+ds^2_{S^7}\right),\qquad
\hat F_4=\frac{3i}{8}L^3\operatorname{vol}_{H^4},\qquad
2\kappa_{11}^2=(2\pi)^8\ell_p^9.
$$

右边两个度量为单位半径。Euclidean 通量的 $i$ 与作用量中的 $iC_3\wedge F_4\wedge F_4/6$ 相配，不可在变分中丢掉后又套用实 Lorentzian 通量符号。自由能约定 $F=-\log Z$，

$$S_E=\frac1{2\kappa_{11}^2}\left[\int\sqrt g\left(-R+\tfrac12|F_4|^2\right)+\frac i6\int C_3\wedge F_4\wedge F_4\right].$$

ABJM 固定 $k$、大 $N$ 的 perturbative 配分函数为

$$
Z_{\rm pert}=C^{-1/3}e^{A(k)}\operatorname{Ai}\left[C^{-1/3}(N-B)\right],\qquad
C=\frac2{\pi^2k},\quad B=\frac{k}{24}+\frac1{3k}.
$$

不含指数小的膜瞬子修正。Airy 大参数展开给

$$F=\frac23C^{-1/2}\hat N^{3/2}+\frac14\log(16\pi^2C\hat N)-A(k)+O(\hat N^{-3/2}),\qquad \hat N=N-B.$$

用作者的 charge-shifted radius $\mathsf L=L/\ell_p$，$\mathsf L^6=32\pi^2k[N-(k-k^{-1})/24]$，要匹配的 tension-zero-order 部分为

$$\mathcal F_1=\frac32\log(L/\ell_p)-\frac12\log(\pi k)-A(k).$$

局域 $R^4$ completion 则属于 $\mathsf L^3/k$ 阶，并非这里的 $A(k)$。ζ 处方丢弃幂发散，不表示11D超引力已成为 UV 完备理论。

## 2. 漏掉的谱：ordinary exact 不等于允许的小规范变换

在完整 $H^4$ 上，Hodge Laplacian $\Delta_p=dd^\dagger+d^\dagger d$ 的 $L^2$ 谱除 $p=2$ 外为连续谱；$p=2$ 还含无限维离散部分

$$\mathcal H^2(H^4)=\{\omega\in L^2:d\omega=d^\dagger\omega=0\}.$$

它不是“一条零模”。单位半径的 projector 对角密度 $\varrho=3/(4\pi^2)$，按与球边界相容的体积正则化 $\operatorname{Vol}_{\rm ren}(H^4)=4\pi^2/3$，得到的是 **重整化 trace**

$$n_2=\operatorname{Tr}_{\rm ren}P_{\mathcal H^2}=\varrho\operatorname{Vol}_{\rm ren}(H^4)=1,$$

每个自对偶 chirality 贡献 $1/2$。不能据此将无限维空间替换成一个普通有限维 Hilbert 空间。

一个可直接检查的代表是 ball 模型

$$ds^2=\frac{4\,dx^adx^a}{(1-|x|^2)^2},\qquad \omega=dx^1\wedge dx^2=d(x^1dx^2).$$

四维中二形式的 Hodge star 共形不变，故 $\omega$ closed、co-closed，且

$$\|\omega\|^2=\frac{\pi^2}{2}<\infty.$$

但 primitive $\alpha=x^1dx^2$ 的 cutoff 范数为

$$\|\alpha\|^2_{|x|<R}=\pi^2\left[R^2+2\log(1-R^2)+\frac1{1-R^2}-1\right]\longrightarrow\infty.$$

而且不仅是这个 primitive 不好：若存在允许的 $L^2$ primitive，Gaffney integration by parts 会给 $\|\omega\|^2=\langle\alpha,d^\dagger\omega\rangle=0$，矛盾。普通 de Rham exactness 因而不能将它删除为小规范方向。

本文选用完整流形上 $d,d^\dagger$ 的 $L^2$ spectral domain，包括这些 harmonic forms；它不等于在共形边界人为追加 relative 或 absolute 条件。标量 $m^2=-2$ 的 supersymmetric alternate quantization 则需另行指定，见下文。

## 3. 为什么这部分确实解耦，权重又为何如此

考虑11D三形式涨落

$$\widetilde C_{3,H}=\sum_l\omega^{(l)}\wedge v_{(l)},\qquad v_{(l)}\in\Omega^1(M_7).$$

规范参数为 $\Lambda_2=\sum_l\phi_{(l)}\omega^{(l)}$，$\phi$ 为内部 scalar，保留对应 ghost。由于 $d\omega=0$，$d\widetilde C_{3,H}=\omega\wedge d_7v$，在 $(H^4,M_7)$ bidegree 中为 $(2,2)$。

解耦不是仅靠“看起来 harmonic”：

- Chern–Simons coupling 已含 $(4,0)$ 的 $\hat F_4$，再含 $\omega$ 的两个外部指标，外部 wedge degree 超过4，故此 sector 的交叉项也为零。
- $h\cdot\hat F_4$ 至多将一个外部指标换为内部指标，只有 $(4,0)$ 或 $(3,1)$，与 $(2,2)$ 的 $d\widetilde C_{3,H}$ 正交。
- ghost–diffeomorphism mixing 配对 $(2,1)$ 的 $\omega\wedge d_7\bar b$ 与 $(3,0)$ 的 $\iota_\zeta\hat F_4$，同样为零。

Hodge Laplacian 则在这部分变成 $1\otimes\Delta^{M_7}_1$。Feynman gauge 固定内部 $v\mapsto v+d_7\phi$ 后，得到式(3.10)、(3.11)：

$$
F_H=\frac12\log\det{}'\Delta_1^{M_7}-\log\det{}'\Delta_0^{M_7}
=\frac12\log\det\Delta_{1,\perp}^{M_7}-\frac12\log\det{}'\Delta_0^{M_7}.
$$

这里 $b_1(M_7)=0$，第一式无 vector 零模；scalar 的常数模式须先 prime 掉。它作为2-form ghost 的真正零模最后另外积分。

### 用完整 ghost complex 再确认一次

三形式与 reducible ghosts 的热核权重是

$$K_C=K_3-2K_2+3K_1-4K_0.$$

记外部 scalar、co-exact vector、harmonic trace 为 $S,V,H_2$；内部非恒定 scalar、co-exact $p$-form 为 $s,v_p$。由 Hodge decomposition

$$K^{(4)}_0=S,\ K^{(4)}_1=V+S,\ K^{(4)}_2=2V+H_2,\ K^{(4)}_3=V+S,$$

$$K^{(7)}_0=s+1,\ K^{(7)}_1=v_1+s,\ K^{(7)}_2=v_2+v_1,\ K^{(7)}_3=v_3+v_2.$$

代入 product heat kernel，精确得到附录式(C.9)：

$$K_C=(Sv_3+Vv_2+Vv_1+Ss)+H_2(v_1-s-2).$$

前括号是常规对偶化 KK 内容；$H_2(v_1-s)$ 是漏掉的非零谱；$-2H_2$ 是 ghost 零模的 graded count，$n_0=-2n_2=-2$。这同时固定了相对行列式幂次，避免重复计入 harmonic 模。

若 $\Delta_1^{M_7}v=\lambda v$、$\lambda>0$，则总算符对 $\omega\wedge v$ 的本征值是 $\lambda$，**并非零模**；且 $d_{11}(\omega\wedge v)\ne0$，不是纯 gauge 三形式。$H^4$ 的 harmonic 仅指一个因子。更不能把它自动解释为一套额外 Lorentzian on-shell 粒子：两种实形式的酉表示空间和允许边界数据不同。

## 4. 从 Euclidean 热核到 character，不把 $\tau$ 当 proper time

每个 spin-$j$ conformal multiplet 的连续本征值为

$$\mathcal D_{E,j}\psi_\lambda=\frac4{L^2}(\lambda^2+\nu^2)\psi_\lambda,\qquad \nu=E-\tfrac32.$$

单位 $H^4$ 的 Plancherel density 是

$$\mu_j(\lambda)=\frac{2j+1}{8\pi^2}\lambda[\lambda^2+(j+\tfrac12)^2]\,T_j(\lambda),$$

其中 integer spin 用 $T_j=\tanh\pi\lambda$，half-integer 用 $\coth\pi\lambda$。统计记为 $c_j=(-1)^{2j}(2j+1)$，乘重整化体积后热核系数为 $c_j/6$。

用 Gaussian Fourier transform

$$e^{-4t\lambda^2}=\frac1{\sqrt{16\pi t}}\int_{\mathbb R}d\tau\,e^{-\tau^2/(16t)}e^{i\tau\lambda}$$

积分掉 $t,\lambda$，得到 $q=e^{-\tau}$ 下的式(4.16)、(4.17)：

$$\mathcal J^B_{E,j}=c_j\frac{1+q}{1-q}\left[\frac{q^E}{(1-q)^3}-\frac{j(j+1)}6\frac{q^{E-1}}{1-q}\right],$$

$$\mathcal J^F_{E,j}=c_j\frac{2q^{1/2}}{1-q}\left[\frac{q^E}{(1-q)^3}-\frac{(j-\frac12)(j+\frac32)}6\frac{q^{E-1}}{1-q}\right].$$

$F_{E,j}=-\tfrac12\int d\tau\,\mathcal J_{E,j}/\tau$，由解析延拓定义。$\tau$ conjugate to representation energy，**不是**乘11D kinetic eigenvalue 的 proper time $t$。相同的 $\sinh^{-2}$ 外形不构成一个 BPS 粒子 Schwinger worldline 推导。

### $E=1$ 标量不能只凭相同的 $\nu^2$ 忽略

$n=2$ multiplet 的 $35_s$ scalars 有 $m^2=-2$，$E=1,2$ 给同一个形式上的连续本征值 $\lambda^2+1/4$。本文使用超对称要求的 $E=1$；character integral 从 $E>3/2$ 解析延拓至该值。它与单纯 $L^2$ heat integral 的 $E=2$ 值确实不同：

$$F_{E=1,0}-F_{E=2,0}=-\frac12\zeta'(-2)=\frac{\zeta(3)}{8\pi^2}.$$

本次直接将 $T_j=1\mp2/(e^{2\pi\lambda}\pm1)$ 分解，解析积分 vacuum polynomial 部分、数值积分热分布部分；在共同的无量纲算符 $\lambda^2+\nu^2$ 单位下，独立得到：

| KK level | character subtotal $F'_n$ | 与直接 Plancherel 结果之差 |
|---|---:|---:|
| 2 | $5.8602047895080091\ldots$ | $<10^{-50}$，已加入35个 alternate-scalar 差项 |
| 3 | $-4.6571172927419165\ldots$ | $<10^{-50}$ |
| 4 | $-107.1879425170047412\ldots$ | $<10^{-50}$ |

这些是**尚未求和的 level subtotal**，不是完整物理自由能。

## 5. 真正重算 character tower：保留小 $n$ 的 null subtractions

采用论文的 triality：supercharges 在 $8_v$，$S^7$ 坐标在 $8_s$。Hopf generator $R_m=2R_2$，坐标 charge 为 $\pm1$；supercharge charge 为六个0、一个$+2$和一个$-2$。这也固定了用于商空间的超对称投影。

对 $b=(b_1,\ldots,b_4)$，$0\le b_1\le\cdots\le b_4\le2$，15组 conformal multiplets 为

$$E_b=\frac{n+\sum b_a}{2},\quad j_b=\frac12\#\{b_a=1\},\quad
\mathbf r_b=(n/2-b_1,n/2-b_2,n/2-b_3,-n/2+b_4).$$

求和 $n\ge2$。$n=2,3$ 不能简单删去所有负 Dynkin labels 后仍使用 unshortened character：Weyl 公式在非 dominant weights 上给出的 signed characters，恰好包含 conserved-current null-state subtractions。$n=1$ 是另外的 singleton，非传播 bulk KK 模。

### 可复现的独立求和方法

令 $\rho=(3,2,1,0)$、$p_j=n/2+\rho_j-b_j$。对单 Hopf fugacity，Weyl determinant 的三个 coincident arguments 做 confluent limit 后，可写成

$$\chi_{n,b}(v)=-\frac1{2(v^2+v^{-2}-2)^3}
\det\begin{pmatrix}
v^{2p_1}+v^{-2p_1}&\cdots&v^{2p_4}+v^{-2p_4}\\
2&\cdots&2\\
p_1^2&\cdots&p_4^2\\
p_1^2(p_1^2-1)/12&\cdots&p_4^2(p_4^2-1)/12
\end{pmatrix}.$$

它分解为 $v^nA_b(n,v)+v^{-n}B_b(n,v)$，其中 $A_b,B_b$ 都只是 $n$ 的三次多项式。因此用

$$\sum_{n\ge n_0}n^a z^n=(z\partial_z)^a\frac{z^{n_0}}{1-z}$$

可精确求**整个无限 tower**，无须有限截断拟合。与每组 $\mathcal J_{E_b,j_b}$ 组合，重算出式(4.27)；对 harmonic scalar／co-exact vector representations 同样求和，重算式(4.39)。

相应内部本征值分别为 $n(n+6),n\ge1$ 和 $n(n+4),n\ge2$；最低值7和12对应 scalar harmonic 与 Killing vector。把二者统一成 character integral 时表示的是本征值除4，与 AdS 半径 $L/2$ 的能量单位一致，最后必须恢复整体尺度项。

### multiplicative anomaly 的薄弱环节也核对了

每个 field integrand 的 $\tau^0$ 项中，$\nu$ 依赖为

$$a_2(j)\nu^2+a_4(j)\nu^4=-\frac{c_j(j+1/2)^2}{6}\nu^2+\frac{c_j}{12}\nu^4.$$

在上述 signed refined multiplets 内，$\sum\chi_b a_2\nu_b^2$、$\sum\chi_b a_4\nu_b^4$ 都精确为零。我分别核对了 $v^n$、$v^{-n}$ 两个 polynomial 部分，任意 $n$ 的残差为零，不是只检验若干 level。这里的取消支持谱ζ和 characterζ之间的比较；不需要假定每个单场的 factorization 都无 anomaly。

## 6. 相消发生在正则化之前

定义 $Q=1+q-(v+v^{-1})q^{1/2}$。KK 与 harmonic sector 中高次 $Q^{-3},Q^{-4}$ 项精确相消，得到式(4.40)：

$$\boxed{
\mathcal I(q,v)=q^2+q^3+
\frac{4q}{(1-q)(1-q^{1/2}v)(1-q^{1/2}v^{-1})}
-\frac{4q^{1/2}(v+v^{-1})+4q}{1-q}.
}$$

这是固定 $\tau>0$ 的有理函数恒等式，在任何 quotient／ζ prescription 之前成立。因此缺失项的作用不是任意调一个 regularization 来拟合答案。

Molien 投影 $v=e^{2\pi ip/k}$ 用到

$$\frac1k\sum_{p=0}^{k-1}\frac1{(1-t\omega^p)(1-t\omega^{-p})}
=\frac{1+t^k}{(1-t^2)(1-t^k)},\qquad t=q^{1/2}.$$

它由两重几何级数中保留 $m-n\in k\mathbb Z$ 直接得到。结果为

$$\mathcal I_k=\mathcal C_k+\mathcal R-\delta_{k1}\frac{8q^{1/2}}{1-q},$$

$$\boxed{\mathcal C_k(\tau)=\frac{\coth(k\tau/4)}{\sinh^2(\tau/2)},\qquad
\mathcal R(\tau)=e^{-2\tau}+e^{-3\tau}-\frac4{e^\tau-1}.}$$

$k=1$ 的最后一项必须用 free $\mathcal N=8$ singleton 补回，才对应完整 $U(N)_1\times U(N)_{-1}$ ABJM，而不是只取 interacting bulk sector。其 $S^3$ 自由能是 $2\log2$。$k\ge2$ 的投影已去掉该 singleton 项。

## 7. ζ 处方、$A(k)$ 与不能任意丢掉的常数

定义

$$\zeta_f(s)=\frac1{\Gamma(s)}\int_0^\infty d\tau\,\tau^{s-1}f(\tau),\qquad F'=-\frac12\zeta'_{\mathcal I}(0).$$

对 $\mathcal C_k$ 原积分在 $\Re s>3$ 收敛；其小 $\tau$ 展开为

$$\mathcal C_k=\frac{16}{k\tau^3}+\frac{k^2-4}{3k\tau}+O(\tau),$$

没有常数项，故 $\zeta_{\mathcal C_k}(0)=0$。一套不靠形式发散积分的重建是令 $a=16/k$、$b=(k^2-4)/(3k)$，写

$$
\frac12\zeta'_{\mathcal C_k}(0)=\frac12\left[
\int_0^1\frac{d\tau}{\tau}(\mathcal C_k-a\tau^{-3}-b\tau^{-1})
+\int_1^\infty\frac{d\tau}{\tau}\mathcal C_k-\frac a3-b\right].
$$

本文式(5.9)将其识别为局域化的

$$\boxed{A(k)=\frac{2\zeta(3)}{\pi^2k}\left(1-\frac{k^3}{16}\right)
+\frac{k^2}{\pi^2}\int_0^\infty dx\,\frac{x\log(1-e^{-2x})}{e^{kx}-1}.}$$

同一 Mellin transform 也等于

$$\zeta_{\mathcal C_k}(s)=4\zeta(s-1)+8\zeta_3\left(s,1+\tfrac k2\mid1,1,\tfrac k2\right).$$

本次没有把该已知 Barnes 解析延拓恒等式仅凭有限数值当作新证明；独立核验如下：

- $k=1$ 可精确化为 $2^s\zeta(s-2)-(2^s-1)\zeta(s)$，$k=2$ 为 $4\zeta(s-2)$，故
  $A(1)=\log2/4-\zeta(3)/(8\pi^2)$、$A(2)=-\zeta(3)/(2\pi^2)$。
- 对任意整数 $k$，将 Barnes lattice 两个 step-1 方向按模 $k$、step-$k/2$ 方向按奇偶分组，可化成 $2k^2$ 个 equal-step Barnes ζ，再用

$$\zeta_3(s,a\mid1,1,1)=\frac12[\zeta(s-2,a)+(3-2a)\zeta(s-1,a)+(a^2-3a+2)\zeta(s,a)].$$

  $k=3$ 的这一有限 Hurwitz 计算，与上式的独立 finite-part 数值一致。
- 对 $k=1,2,3,4,7,10,32$，比较减除后的 Mellin 积分和收敛的 localization 积分，全部至少一致44位。最弱点 $k=32$ 的差约 $3.92\times10^{-45}$，与小区间只保留到 $\tau^{15}$ 后首个遗漏项的估计一致；没有将它标成精确零。

余项 $\mathcal R$ 则有

$$\zeta_{\mathcal R}(s)=2^{-s}+3^{-s}-4\zeta(s),\quad \zeta_{\mathcal R}(0)=4,\quad
-\frac12\zeta'_{\mathcal R}(0)=\log\frac{\sqrt6}{2\pi}.$$

恢复物理 scale 后（式(5.11)）

$$F'_1=-A(k)+\log\frac{\sqrt6}{2\pi}-2\log(\mu L/2).$$

注意 character integrand 是二阶本征值的两个线性因子，其 Mellin ζ 在零点是二阶算符 ζ 的两倍；因此这里 scale coefficient 是 $-\tfrac12\zeta_{\mathcal I}(0)=-2$，与 $n_0=-2$ 相容。不能把4直接当作11D算符的 $\zeta(0)$。

仅凭 $\int dt'[(e^{kt'}-1)\sinh^2t']^{-1}/t'$ 的形式会漏掉 $k$-independent 有限项：同一ζ处方下那个差项并不为零。论文的“精确 $A(k)$”使用的是上述完整 $\coth$ kernel 和已指定处方。

## 8. 零模、ensemble 与真正尚未固定的归一化

ghost 零模为 $\omega^{(l)}\otimes1$。四维二形式范数对 AdS scale 不变，11D范数的额外部分来自 $L^7\operatorname{Vol}(M_7)$，而 $\operatorname{Vol}(M_7)=\pi^4/(3k)$。

**假定测度的 $(L,k)$ 依赖仅来自此范数及 $\kappa_{11}$**，得到

$$F_{\rm zm}=2\log(\mu L)+\frac32\log(L/\ell_p)-\frac12\log k+c_{\rm zm}.$$

$\mu$ 与 $F'_1$ 中的依赖消去，式(5.14)为

$$\boxed{F_1=\frac32\log(L/\ell_p)-A(k)-\frac12\log k+c_0,\qquad
c_0=\log\frac{2\sqrt6}{\pi}+c_{\rm zm}.}$$

与 Airy localization 完全一致还要求 $c_0=-\tfrac12\log\pi$，即这套常数定义中的 $c_{\rm zm}=\tfrac12\log(\pi/24)$。**这是匹配所要求的测度归一化，不是论文从第一原理独立算出的常数。** $k$ 依赖的谱匹配与绝对归一化应分别评价。

### grand-canonical 边界问题没有被解决

固定 $N$ 是 canonical；固定 boundary $C_3$ 与 chemical potential 对应 grand-canonical。Laplace transform 的 Gaussian 因子解释 $\tfrac32\log(L/\ell_p)-\tfrac12\log k$，而 $A(k)$ 在两种 ensemble 都存在。

但是：若对 $C_3$ 和 ghost 同时施加严格 relative 条件 $\iota^*C_3=\iota^*b_2=0$，它不只删掉 $\omega\otimes1$ 的 ghost 零模，也删掉 $\omega\wedge v_1$ 的**非零** harmonic sector，因为其 tangential pullback 非零；后者恰是本计算恢复 $A(k)$ 的关键。不能只删零模、保留其余公式后宣布 ensemble 已转换。

因此，区分内部 constant mode 与 nonzero-eigenvalue mode 的边界条件、BRST complex、自伴性及超对称相容性，仍需另外构造；这种区分通常涉及内部 spectral projector，在11D是非局域的。论文明确将固定-$C_3$ 计算如何恢复 $A(k)$ 留作开放问题。这比“再换一种ζ处方”更值得接入现有边界相空间研究。

## 9. ADHM：orbifold 固定点的额外谱不能靠投影凭空产生

ADHM 商作用为 $(w_1,w_2,w_3,w_4)\mapsto(w_1,w_2,\omega w_3,\omega^{-1}w_4)$，$p>1$ 固定一个 $S^3$，不同于 ABJM 的 free Hopf quotient。固定 locus $H^4\times S^3$ 的横向 $A_{p-1}$ 奇点支持7D $SU(p)$ vector multiplet。

保留 $u^{2R_1}v^{2R_2}$ 两个 fugacity，投影取 $(u,v)=(e^{\pi il/p},e^{-\pi il/p})$。从 Weyl 公式重新做两个 coincident arguments 的 confluent limit，精确求和得到 bulk KK 加 singleton 及 harmonic 两部分；再作投影，得到

$$\mathcal I^{\rm bulk}_p=\tfrac12(\mathcal C_p+\mathcal C_1)+\mathcal R.$$

它只给 $\tfrac12[A(p)+A(1)]$，少的不是一种投影技巧，而是固定点局域自由度。

对每个 $SU(p)$ generator，附录 Table 2 的局域 conformal multiplets 在 level $n\ge2$ 给

$$\begin{aligned}
\mathcal I_{V,n}=(n-1)[&(n+1)\mathcal J_{n/2,0}+2n\mathcal J_{(n+1)/2,1/2}
+3(n-1)\mathcal J_{(n+2)/2,0}\\
&+(n-1)\mathcal J_{(n+2)/2,1}
+2(n-2)\mathcal J_{(n+3)/2,1/2}+(n-3)\mathcal J_{(n+4)/2,0}].
\end{aligned}$$

$n=2$ 最后一项是 $-\mathcal J_{3,0}$，正好扣掉 conserved-current null descendant，不是负 multiplicity 的物理粒子。重算得到

$$\mathcal I_{V,n}=\frac{2(n-1)q^{n/2}}{1-q},\qquad
\sum_{n\ge2}\mathcal I_{V,n}=\frac12\mathcal C_1.$$

于是加上 $p^2-1$ 个 adjoint 自由 multiplets，得到

$$\mathcal I_p^{\rm ADHM}=\tfrac12(\mathcal C_p+p^2\mathcal C_1)+\mathcal R,$$

$$A_{\rm ADHM}(p)=\tfrac12[A(p)+p^2A(1)].$$

同一零模测度假设下 $F^{\rm ADHM}_1=\tfrac32\log(L/\ell_p)-A_{\rm ADHM}(p)-\tfrac12\log p+c_0$。这是给定已知局域7D谱后的重建；没有将它夸大成从奇异11D路径积分独立固定全部测度和 UV completion。

双 fugacity 结果还精确验证了论文式(1.25)与所比较的12D equivariant index character 的关系：$2\mathcal K_W=\mathcal I_{\rm KK}+\mathcal I_H+\mathcal I_{\rm singleton}-\mathcal R$。这是 character identity；与完整规范化配分函数相等仍须处理上节的有限常数及不同 ensemble。

## 10. 两个易错的极限／可观测量

**Casimir energy 为零不推出球自由能为零。** 我用同一 Weyl/geometric-sum 方法、额外 level fugacity $s$，重算附录 F 的

$$\sum_{n\ge2}s^n\chi^{(-)}_{\mathcal M_n}(\tau,v)
=\frac{s^2(4c^2-2sc-1)}{1-2cs+s^2}+0\cdot\tau+O(\tau^2),\qquad c=\tfrac12(v+v^{-1}).$$

线性 $\tau$ 系数精确为零，故各 level 的 projected Casimir energy 为零；但 $S^3$ determinant 是另一个积分 functional。Lorentzian cylinder vacuum energy 和 Euclidean sphere normalization 不是同一个量。

**先取 $k\to\infty$ 会删掉有限贡献。** 固定 $\tau>0$ 时 $\mathcal C_k\to\mathcal C_\infty=\sinh^{-2}(\tau/2)$，只保留中性 IIA sector；带 charge $kr$ 的项在固定 $\tau$ 指数小，却在 $\tau\lesssim1/k$ 集体贡献

$$A(k)=-\frac{\zeta(3)}{8\pi^2}k^2-\frac16\log\frac{k}{4\pi}+2\zeta'(-1)
+\frac{\pi^2}{90k^2}-\frac{2\pi^4}{2835k^4}+\frac{8\pi^6}{42525k^6}+\cdots.$$

三个逆幂系数已从收敛 integral 的小 $x$ 展开独立算出。中性 sector 的 $\zeta_{\mathcal C_\infty}(0)=-1/3$ 被带电 sector 的 $+1/3$ 抵消；删掉后不能再声称复现了完整11D有限结果。附录 G 的中性 scale term $+\tfrac16\log(\mu L/2)$ 是否含 Euler-type topological 来源，作者也没有完成检验。

## 11. 检验记录与研究取舍

- **精确代数：** Hodge heat complex；单场 spin-character 微分算符；15组 signed KK Weyl characters 的完整无限求和；单／双 fugacity harmonic 求和与相消；all-level Casimir generating identity；refined $\nu^2,\nu^4$ anomaly 系数；局域7D multiplet 的任意 level 简化，全部 residual 为零。
- **独立谱／数值：** $n=2,3,4$ 的直接 Euclidean Plancherel 行列式与 characterζ一致，明确处理 alternate scalar；七个 $k$ 的两种收敛积分比较及 $k=3$ Barnes/Hurwitz 第三路交叉检验；ABJM、ADHM 各10个群阶和两个 fugacity 点的40组有限群平均吻合。
- **特殊例和反例边界：** $k=1$ singleton 必须加入；$k=2$ Mellin 闭式；ordinary exact 但没有 $L^2$ primitive 的 harmonic form；relative 条件会同时排除所需的非零 harmonic 模；大 $k$ 极限与积分不交换。
- **未独立完成：** 完整11D ghost／全局规范群测度的有限归一化；固定-$C_3$ ensemble 的相容边界 complex；更一般 $M_7$ 的全部 KK谱与 determinant；UV supersymmetric invariant 的通量 completion。本次不把任何一项算作已解决。

主要原始结果在 vault 外：[Weyl、Hodge、anomaly 与 Casimir 重算](</Users/koishi/.codex/mcp-results/evaluate_mathematica-i9xYHT/result.txt>)、[双 fugacity 与 index identity](</Users/koishi/.codex/mcp-results/evaluate_mathematica-3cjLPh/result.txt>)、[Mellin／Hurwitz／群平均数值](</Users/koishi/.codex/mcp-results/evaluate_mathematica-ABwj8c/result.txt>)、[直接 Plancherel 检验与极限系数](</Users/koishi/.codex/mcp-results/evaluate_mathematica-I7zcM3/result.txt>)。可重放输入为 [character](</private/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/koishi-arxiv-2026-11-13-reading-fq5t5cfd/abjm-character-checks.wl>)、[双 fugacity](</private/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/koishi-arxiv-2026-11-13-reading-fq5t5cfd/abjm-two-fugacity-checks.wl>)、[Mellin](</private/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/koishi-arxiv-2026-11-13-reading-fq5t5cfd/abjm-mellin-checks.wl>)、[Plancherel](</private/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/koishi-arxiv-2026-11-13-reading-fq5t5cfd/abjm-spectral-checks.wl>)。全程主 agent 串行，未使用子代理。

**优先保留：对偶化之前先检查完整 $L^2$ complex；比对热核局域系数和离散 projector；将边界定义域与 measure 作为一圈计算输入。** 对现有 AdS／CPS 研究，最有内容的下一步是构造 canonical 与 fixed-$C_3$ 边界问题的 BRST-compatible 变换并计算其边界 determinant，而不是先假定两者只差一个零模因子。推广到正 Ricci 的光滑紧致 $M_7$ 时，Bochner 保证 $b_1=0$、同样的 harmonic determinant 结构仍可用，但完整长 multiplet 谱及其求和并未由此自动解决。
