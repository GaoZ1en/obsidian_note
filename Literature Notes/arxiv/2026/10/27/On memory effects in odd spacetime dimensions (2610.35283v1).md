---
paper id: 2610.35283v1
title: On memory effects in odd spacetime dimensions
authors:
  - Ana-Maria Raclariu
  - Binsong Xiong
publication date: 2026-10-26
abstract: |-
  We establish the existence of a new electromagnetic memory effect in all odd spacetime dimensions. This effect is a universal property of electromagnetic fields sourced by charged particles of constant momenta, appears at the Coulombic order and is directly related to the Weinberg soft theorem. We provide a unified derivation of this effect in all higher dimensions by evaluating the Maxwell constraint on a null plane at large, finite distance. We observe that in odd spacetime dimensions, the lightray integral computing the memory effect does not commute with the large-r expansion. Our results necessarily assume that the lightray integral is taken prior to the r to infinity limit. The effect vanishes in the opposite order of limits, in agreement with previous results. We compute the Coulombic order electromagnetic memory effect for both massless and massive sources in all higher dimensions, explain its relation to the Fourier transform of the leading soft photon theorem and present a protocol for its measurement in a finite time parametrically larger than the distance of a detector from the sources. We conclude with comments on the generalization to gravity.
comments: "39 pages + appendices; retrieved PDF has 59 pages including references"
url: https://arxiv.org/abs/2610.35283v1
summary: "有限 null plane 上先做正则化时间积分再取远区极限得到 Coulombic memory；重建无质量与有质量源、soft factor 及有限时间测量，并区分可复算的有限部分与原文的分布和归一化缺口。"
tags: []
---

# On memory effects in odd spacetime dimensions

**结论先行。** 对直线带电粒子源，在固定有限 null plane 上计算时间积分的 retarded finite part，确实产生与偶维相同的横向 Green function：

\[
\mathcal M_A(y)=-\sum_{i\in\mathrm{out}}Q_i\partial_A G_{d-2}(y;z_i),
\qquad \partial^A\mathcal M_A=\sum_{i\in\mathrm{out}}Q_i\delta^{(d-2)}(y-z_i).
\]

这里必须明确：先完成 retarded distribution/finite-part 定义和固定半径的时间积分，最后取 \(r\to\infty\)；这不是把奇维远区级数的某个整数阶系数重新命名。普通的 \(u=0\) improper integral 在 \(d\ge5\) 发散，故有限结果不可省略正则化。Mathematica 复算支持核心 finite-part 积分、有限时间例子和 massive recurrence，但 Appendix C 的普通 δ 极限、若干递推系数及正文归一化按字面不成立；由此推出的无条件接触项消失与完整测量论证不能记为 Checked。

当天推荐与阅读次序：[[2026_10_27_overview]]。理由代码：`T1-symmetry; T1-boundary; T2-celestial-carrollian; T2-model`。

## How to read this long paper

必读链是 §2.2 → §3.2–3.3 → §4.2 → §6：先理解为何原来的逐阶 Coulombic memory 为零，再保留奇维 tail 的完整分母、incoming shock 和有限时间尺度。§4.1 是偶维对照；§5 与 Appendix D 将同一个场写成 leading soft factor 的位置空间形式。

要复用有质量源，接读 §7.1–7.3 与 Appendix E–F；只读 §7.72 的结果会漏掉有限半径因子、incoming/outgoing 抵消和 \(t=0\) 的 finite-part 处方。§8 的 primary wavefunctions 与线性引力为后续方向，不能代替 Maxwell 的边界/接触项分析。

以下页码为 PDF 印刷页码；文件物理页通常多一页。正文与 Appendix A–F 均已读取；公式按源 TeX 对照，关键位置另看 rendered PDF。

| 来源树 | 作用与后续依赖 |
|---|---|
| §1，pp.3–6 | 奇维 memory puzzle；区分 radiative 与 Coulombic order |
| §2.1，pp.7–9 | asymptotic charges、匹配、soft operator；原点正则性的作用 |
| §2.2，pp.9–10 | half-integer tower 无有限递推链到 Coulombic integer order |
| §3.1，pp.10–12 | 偶维 retarded cone distributions 与无质量直线源 |
| §3.2，pp.12–14 | 奇维 tail、worldline cutoff、retarded discontinuity |
| §3.3，pp.14–15 | \(x\cdot p=0\) shock，incoming cancellation 所必需 |
| §4.1，pp.16–18 | 固定 \(r\) Maxwell constraint 的偶维逐阶与分布推导 |
| §4.2，pp.19–20 | 奇维先时间积分得到横向 Green function |
| §5 / §5.1，pp.20–25 | leading soft Fourier transform，Ward identity，旧渐近展开对照 |
| §6，pp.25–27 | 有限开机时间、\(u_0/(r|y-z|^2)\) 两个区域 |
| §7.1，p.28 | massive roots 与 hyperbolic momentum variables |
| §7.2.1–7.2.2，pp.28–32 | 偶维 δ 导数、field strength、\(\mathcal P_n\)、Coulomb endpoint |
| §7.3.1–7.3.2，pp.32–37 | 奇维 incomplete Beta、\(\Phi_i\)、\(J_1,J_2\) 与有限部分 |
| §7.4，pp.37–38 | massive soft Fourier transform；retarded/advanced 组合仍需区分 |
| §8.1–8.2，pp.38–39 | sourced primary wavefunctions；线性引力方向 |
| Appendix A，pp.40–41 | Maxwell 分量、Bianchi 与远区递推；取 \(F_{AB}=0\) |
| Appendix B，pp.41–43 | Fourier–Bessel 生成 retarded Green function |
| Appendix C，pp.43–44 | 声称接触项不贡献；δ 极限的字面问题见下 |
| Appendix D.1–D.2，pp.44–46 | soft factor 全 \(r\) Fourier transform 与 eikonal current |
| Appendix E.1–E.4，pp.47–50 | quadratic δ、theta 链式求导、Maxwell 检查、large-\(r\) residue |
| Appendix F.1–F.2，pp.51–53 | contiguous identity、奇维 massive Maxwell cancellation |

## 全局约定：null plane、源和正则化

取 \(\eta_{\mu\nu}=\operatorname{diag}(-,+,\ldots,+)\)，\(F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu\)，Lorenz gauge。设

\[
q(y)=\tfrac12(1+y^2,2y^A,1-y^2),\quad
n=\tfrac12(1,0^A,-1),\quad x=rq(y)+un.
\]

\[
q^2=n^2=0,\quad q(y)\cdot q(z)=-\tfrac12|y-z|^2,
\quad q\cdot n=-\tfrac12,\quad x^2=-ru,
\quad ds^2=-du\,dr+r^2\delta_{AB}dy^A dy^B.
\]

因此 \(g_{ur}=-1/2\)、\(g^{ur}=-2\)、\(\sqrt{|g|}=r^{d-2}/2\)。\(y\in\mathbb R^{d-2}\) 是平坦 celestial chart；这里的 \(D_A\) 不是额外放入 round-sphere connection。\(r=r_0>0\) 是 null plane/lightsheet，不能当作 spherical Bondi timelike cylinder。

| 符号 | 定义与限制 |
|---|---|
| \(d=2+2m\) | 时空维数；偶维 \(m\in\mathbb Z\)，奇维半整数；主要有限 Coulombic 公式取 \(d>4\) |
| \(F_{ab}^{(k)}\) | 指 \(r^{-k}\) 系数，不是张量阶数 |
| \(e_u,e_r,e_A\) | \(n,q,r\partial_Aq\)，是坐标 frame，\(e_A\) 有 \(r\) 因子 |
| \(p_i,Q_i\) | all outgoing：incoming 取 \((-p_i^{\rm in},-Q_i^{\rm in})\)；\(\sum_iQ_i=0\) |
| \(b_i\) | 相互作用区边缘 worldline 起点；主要公式设零，逐项以 \(x-b_i\) 恢复 |
| \(J_\mu\) | §3 约定 \(\Box A_\mu=-J_\mu\) 的物理源；§2/Appendix A 的 \(j_\mu=-J_\mu\) |
| \(\varepsilon\) | retarded complex boundary-value regulator，保留到 worldline 积分之后 |
| \(\epsilon_i\) | 实 worldline endpoint cutoff；发散幂不得直接丢掉而不声明 finite part |
| \(\epsilon\) | Green function 的大时间 damping；与上两种 regulator 不同 |
| \(\eta_i\) | §7.3：incoming 为 \(+1\)，outgoing 为 \(-1\)；不是 spacetime metric |
| \(\rho,z\) | massive unit velocity \(p=\rho^{-1}q(z)+\rho n\)，\(p^2=-1\)；电荷不含粒子质量 |
| \(\Delta\) | 主文 \(\tau_+-\tau_->0\)；Appendix F.2 改成反号，移用时必须改记号 |

总电流为

\[
J^\mu(x)=\sum_iQ_ip_i^\mu\int_0^\infty d\tau\,
\delta^{(d)}(x-b_i-p_i\tau).
\]

端点电流的 divergence 由 charge conservation 消去；孤立半条 worldline 不是独立守恒源。源的直线近似忽略 interaction region 的加速过程；leading soft/eikonal 结论也限于该阶。\(d=3\) 的 IR cutoff 与 infinite momentum memory 不由下面 \(d\ge5\) 的有限公式一并解决。

## §2 与 Appendix A：原来的零 memory 从何而来

先按 source-free 与 sourced 解分为 \(F^R,F^C\)；没有额外边界条件时这不是 canonical split。原来的 large-gauge charge 用

\[
Q_\epsilon^\pm=\int_{\mathcal I^\pm_\mp}d^{2m}y\,
\epsilon(y)F_{ru}^{(2m)}(y),
\]

并假定 radiative \(F_{ru}^R\sim r^{-m-1}\)、\(F_{uA}^R\sim r^{1-m}\)，Coulombic \(F_{ru}^C\sim r^{-2m}\)、\(F_{Au}^C\sim r^{1-2m}\)。

Appendix A 从 antisymmetric divergence 及 Bianchi identity 得到

\[
2\partial_uF_{ru}^{(m+n+1)}-D^AF_{Au}^{(m+n-1)}=0,
\]

\[
\partial_AF_{ru}^{(m+n+1)}-2(n+1)F_{uA}^{(m+n)}=0,
\]

从而

\[
2\partial_uF_{ru}^{(m+n+1)}+\frac{D^2}{2n}F_{ru}^{(m+n)}=0
\quad(0<n\le m-2).
\]

此处使用 Appendix A 的无磁分支 \(F_{AB}=0\) 和对应 source-free orders，不能当作任意 Maxwell 场的完整递推。在偶维，有限次递推把 radiative coefficient 连接到 Coulombic coefficient；奇维的 half-integer series 与 integer series 不通过有限次递推相接。

原点正则的 plane-wave 解可以额外关联两支。旧奇维 Coulombic coefficient 与 soft zero mode 的卷积形如

\[
F_{ur}^{R(2m)}(u,y)\propto\int d^{2m}z\,
\frac{\partial^AO_A^{(0)}(z)+\mathrm{h.c.}}{|y-z|^{4m-2}},
\]

但它与 \(u\) 无关。若此时先按渐近系数定义 memory，Coulombic constraint 给 \(D^AF_{Au}^{R(2m-2)}=0\)；soft charge 可以全由 \(\mathcal I^+_+\) 的 endpoint 承担。本文并未证明这种旧定义下的结论错误，而是改为先在有限 plane 上定义整体 lightray integral。

偶维则可递推

\[
\partial_u^{m-1}D^AF_{Au}^{(2m-2)}
=\frac{(-1)^{m-1}}{4^{m-1}(m-1)!}(D^2)^{m-1}D^AF_{Au}^{(m-1)}.
\]

leading radiative Fourier mode 的 \(\omega^m a_A(\omega)\) 经这有限链匹配 \(\omega a_A\) soft insertion。奇维没有这条有限整数阶链，就是问题的技术起点。

## §3 与 Appendix B：retarded 场先于远区展开

### Fourier–Bessel 到 cone/tail distributions

令 \(\sigma=-(x-y)^2\)，Green function 满足 \(\Box G_R=\delta^{(d)}\)，\(G_R=0\) 于过去。Fourier denominator 为 \((\ell^0+i\epsilon)^2-\vec\ell^2\)；先做 \(\ell^0\) residue，再做角向 Bessel integral 和带 \(\varepsilon\) 的径向 Mellin integral，得到

\[
G_R=-\frac{i\Gamma((d-2)/2)}{4\pi^{d/2}}\Theta(x^0-y^0)e^{-\epsilon(x^0-y^0)}
\lim_{\varepsilon\to0^+}\left[
\bigl(-(x^0-y^0-i\varepsilon)^2+|\vec x-\vec y|^2\bigr)^{1-d/2}
-\mathrm{h.c.}\right].
\]

偶维分支差为 pole discontinuity，给

\[
G_R^{\rm even}=-\frac{\Theta(x^0-y^0)e^{-\epsilon(x^0-y^0)}}{2\pi^{(d-2)/2}}
\delta^{((d-4)/2)}(\sigma).
\]

奇维应保留 distribution derivative 的整体表达

\[
G_R^{\rm odd}=-\frac{\Theta(x^0-y^0)}{2\pi^{(d-1)/2}}
\left(\frac d{d\sigma}\right)^{(d-3)/2}
[\sigma^{-1/2}\Theta(\sigma)].
\]

远离 cone 的 finite tail 是

\[
N_d\Theta(x^0-y^0-|\vec x-\vec y|)\sigma^{1-d/2},
\qquad N_d=\frac{(-1)^{(d-1)/2}\Gamma((d-2)/2)}{2\pi^{d/2}}.
\]

后式在 \(d\ge5\) 不能按普通局部可积函数理解到 cone；省略的接触/finite-part completion 正是审计重点。Huygens failure 来自 cone 内非零 tail。

### 无质量 worldline integral 与 endpoint cutoff

由 \(A^\mu=-\int G_RJ^\mu\)，\(p^2=0\) 时

\[
-(x-p\tau)^2=-x^2+2x\cdot p\,\tau,
\quad \tau_0=\frac{x^2}{2x\cdot p}.
\]

incoming/outgoing 的 retarded integration range 不同。对 outgoing，在 \(\tau_0\) 前放 cutoff，积分为

\[
\int_0^{\tau_0-\epsilon_i}d\tau\,
(-x^2+2x\cdot p\,\tau)^{1-d/2}
=\frac{(-x^2)^{2-d/2}-(-2x\cdot p\,\epsilon_i)^{2-d/2}}
{(d-4)x\cdot p}.
\]

incoming 也有相应 endpoint divergence。先用带 \(i\varepsilon\) 的整体 Green function 做积分，再取 boundary value，或显式定义相应 Hadamard finite part，源文取有限势为

\[
A_{\rm fin}^\mu=-\frac{N_d}{d-4}
\sum_i\frac{Q_ip_i^\mu}{x\cdot p_i}
\Theta(-x^2)(-x^2)^{2-d/2}.
\tag{3.31}
\]

式号以原文为准。这里仍暂时避开 \(x\cdot p_i=0\)；原文 derivative identity 在有限 \(\varepsilon\) 时还应保留 \(x\cdot p+i\varepsilon p^0\) 分母。提前把这个 regulator 置零会漏掉 shock。

### Incoming shock 不是可选附加项

Sokhotski discontinuity 在 \(x\cdot p=0\) 产生 incoming shock。原文 §3.3 的势为

\[
A_\mu^{\rm shock}=
\frac{\Gamma((d-4)/2)}{4\pi^{d/2-1}}
\sum_{i\in\mathrm{in}}Q_ip_{i\mu}\,
\Theta(x^2)\delta(x\cdot p_i)(x^2)^{-(d-4)/2}.
\]

其来源是 worldline endpoint 项，源文另有一个需 discard 的发散端点。故完整 shock 的分布乘积与 finite-part 一致性保留 Source-derived。对于固定 \(r_0>0\)，投影后给

\[
F_{Au}^{\rm shock}=-\frac{\Gamma((d-2)/2)}{2\pi^{d/2-1}}
r_0^{4-d}\sum_{i\in\mathrm{in}}Q_i
\frac{(y-z_i)_A}{|y-z_i|^{d-2}}
\Theta(-u)\delta(u+r_0|y-z_i|^2).
\]

其 integrated transverse divergence 抵消 finite tail 中的 incoming contribution。几何原因是只有 outgoing worldlines 穿过 \(r=r_0>0\)；若换 timelike cylinder，两种 worldline 均穿过，flux 与 observable 的定义都须一起改。不能把两个 surface 的结论机械等同。

## §4：有限 hypersurface 的 constraint 和核心 memory

### 固定 \(r_0\) 的确切等式

使用 \(j=-J\)，\(\nabla^\mu F_{\mu u}=j_u\) 等价于

\[
2r_0^{d-2}\partial_uF_{ru}-r_0^{d-4}D^AF_{Au}
=-r_0^{d-2}j_u.
\tag{4.2}
\]

**Checked，xCoba：** 在五维平坦 null chart，令 \(F_{ru}=f\)、\(F_{xu}=g\)、\(F_{yu}=h\) 为任意函数，先取完整抽象 covariant derivative 再取分量，得到

\[
\nabla^\mu F_{\mu u}=-2\partial_uf+r^{-2}(\partial_xg+\partial_yh),
\quad R=0.
\]

即与 (4.2) 的负号和 \(r^{-2}\) 因子一致。积分有限区间 \([-U_-,U_+]\) 必须先保留

\[
r_0^{d-4}\int_{-U_-}^{U_+}du\,D^AF_{Au}
=2r_0^{d-2}[F_{ru}(U_+)-F_{ru}(-U_-)]
+r_0^{d-2}\int_{-U_-}^{U_+}du\,j_u.
\]

只有在该处方下证明 endpoints 消失后，才能把 memory 完全归于 flux。

### 偶维对照：有限 δ 递推链

设 \(s=(d-4)/2\)、\(Y=u(n\cdot p)/(r_0q\cdot p)\)。偶维场含

\[
F_{ru}=-\frac{Q(q\cdot n)}{2\pi^{(d-2)/2}}
\frac{1-Y}{1+Y}r_0^{-s-1}\delta^{(s)}(u),
\]

\[
F_{Au}=-\frac{Qr_0(\partial_Aq\cdot p)(n\cdot q)}{2\pi^{(d-2)/2}(q\cdot p)}
\frac{r_0^{-s-1}\delta^{(s)}(u)}{1+Y}.
\]

展开只需要有限项，因为

\[
u^\alpha\delta^{(\beta)}(u)=(-1)^\alpha
\frac{\beta!}{(\beta-\alpha)!}\delta^{(\beta-\alpha)}(u)
\quad(0\le\alpha\le\beta).
\]

overleading 的第一项与 \(p\) 无关，靠 \(\sum Q_i=0\) 消去。其余 source-free orders 由

\[
D^A\left[\frac{p\cdot\partial_Aq}{q\cdot p}
\left(\frac{n\cdot p}{q\cdot p}\right)^{k-1}\right]
=2(d-2-2k)\left(\frac{n\cdot p}{q\cdot p}\right)^k
\]

消去；此式在 \(y\ne z\) 成立。到 \(k=s+1\) 时，普通 divergence 为零但原点 delta 保留：

\[
D^A\frac{2(y-z)_A}{|y-z|^{d-2}}
=2\Omega_{d-3}\delta^{(d-2)}(y-z),
\quad\Omega_{d-3}=\frac{2\pi^{(d-2)/2}}{\Gamma((d-2)/2)}.
\]

这一等式可由包围源点的小球通量直接证明，不能只做 punctured-space differentiation。加上 incoming shock 后只剩 outgoing flux。

### 奇维：先保留完整分母再积分

无质量源取 \(p=\omega q(z)\)，则

\[
x\cdot p=-\frac\omega2(u+r|y-z|^2),\qquad
\partial_Aq\cdot p=-\omega(y-z)_A.
\]

有限 tail 给

\[
F_{Au}^{\rm fin,i}=-N_dQ_i\Theta(u)
\frac{r^{3-d/2}u^{1-d/2}(y-z_i)_A}{u+r|y-z_i|^2}.
\tag{4.29--4.32}
\]

令 \(a=r|y-z|^2>0\)，先在收敛条带 \(2<\Re d<4\) 计算

\[
\int_0^\infty du\,\frac{u^{1-d/2}}{u+a}
=a^{1-d/2}\Gamma(2-d/2)\Gamma(d/2-1)
=-\pi a^{1-d/2}\csc(\pi d/2).
\]

然后解析延拓到奇数 \(d\ge5\)，与指定 retarded finite part 配对。\(r\) 的总幂为

\[
(d-4)+(3-d/2)+(1-d/2)=0.
\]

故

\[
r^{d-4}\operatorname{FP}\int_0^\infty F_{Au}^{\rm fin,i}du
=\frac{Q_i\Gamma((d-2)/2)}{2\pi^{(d-2)/2}}
\frac{(y-z_i)_A}{|y-z_i|^{d-2}}
=-Q_i\partial_AG_{d-2}(y;z_i),
\]

\[
G_{d-2}(y;z)=\frac{|y-z|^{4-d}}{(d-4)\Omega_{d-3}},
\quad D^2G_{d-2}=-\delta^{(d-2)}.
\]

**Checked：** Mathematica 在收敛条带给上述 Beta integral，\(d=5,7,9\) 归一化 residual 全为零。另保留实 cutoff，取 \(a=1\)：

\[
\int_\delta^\infty\frac{u^{-3/2}}{1+u}du
=2\delta^{-1/2}-\pi+2\delta^{1/2}+O(\delta^{3/2}),
\]

\[
\int_\delta^\infty\frac{u^{-5/2}}{1+u}du
=\tfrac23\delta^{-3/2}-2\delta^{-1/2}+\pi+O(\delta^{1/2}).
\]

这独立显示 finite parts 为 \(-\pi,+\pi\)，也显示原积分绝不收敛。须先注明减去哪些发散幂，再讨论有限 observable。

如果反而先展开

\[
\frac{r^{3-d/2}u^{1-d/2}}{u+r|y-z|^2}
=r^{2-d/2}\sum_{\ell\ge0}
\frac{(-1)^\ell u^{\ell+1-d/2}}{r^\ell|y-z|^{2\ell+2}},
\]

它只在 \(u<r|y-z|^2\) 区域是几何级数，不能交换到 \(u\in(0,\infty)\)。奇维 half-integer powers 中没有所需 Coulombic integer term；此事实与完整积分的非零有限部分并不矛盾。

## §5 与 Appendix D：leading soft factor 的位置空间桥梁

以 \(\mathcal A_\mu(x)=\langle\mathrm{out}|A_\mu^{\rm out}S-SA_\mu^{\rm in}|\mathrm{in}\rangle\) 为对象，在 leading soft/eikonal order：

\[
\frac{\mathcal A_\mu}{\langle S\rangle}\simeq
\sum_iQ_ip_{i\mu}\int\frac{d^{d-1}q}{2q^0(2\pi)^{d-1}}
\left[\frac{e^{iq\cdot x}}{p_i\cdot q-i0}
+\frac{e^{-iq\cdot x}}{p_i\cdot q+i0}\right].
\]

Appendix D 用 Schwinger parameter

\[
\frac1{p\cdot q-i\epsilon}=i\int_0^\infty ds\,
e^{-is(p\cdot q-i\epsilon)}
\]

和 on-shell Fourier integral 计算；对无质量 \(p\)，\((x-sp)^2=x^2-2sx\cdot p\)。源文 (5.8) 的系数是

\[
C_d=-\frac{i2^{d-3}\pi^{d/2-1}\Gamma(d/2-1)}{d-4}.
\]

因此位置空间答案为

\[
\frac{C_d}{(2\pi)^{d-1}}\sum_i\frac{Q_ip_{i\mu}}{x\cdot p_i}
\left[(x^2+i0x^0)^{2-d/2}-(x^2-i0x^0)^{2-d/2}\right].
\tag{5.9}
\]

偶维转成 cone δ derivatives；奇维用 branch discontinuity

\[
(x^2+i0x^0)^{2-d/2}-(x^2-i0x^0)^{2-d/2}
=-2i\sin(\pi d/2)\Theta(-x^2)(-x^2)^{2-d/2}
\quad(x^0>0).
\]

直接相乘重得 (3.31) 的系数。**Checked：** \(d=5,7,9\) 的 (5.9) 与 classical finite potential 系数比为 1。但印刷 (5.14) 另把 \(x\cdot p\) 写成 \(2x\cdot p\)，会给 1/2；这处不得一边照抄一边声称精确相等。

Appendix D.2 用 scalar current 的 \(a^\dagger a\) 项和 \(k=p+\ell\)、\(p\cdot\ell\simeq0\) 得

\[
J_\mu(x)|p\rangle\simeq Q\frac{p_\mu}{p^0}
\delta^{(d-1)}\left(\vec x-\frac{\vec p}{p^0}x^0\right)|p\rangle.
\]

这里 \(Q\) 必须保留，原文最终等式漏写。before/after interaction 的 theta functions 重建半直线 current。原文把该桥梁写成 Yang–Feldman 类 Ward relation，再投影并积分得到 memory/flux identity。leading-soft approximation 不能因此提升为完整 arbitrary-current 或 loop-level 等价证明；singular Fourier coefficient 的分布 completion 与 shock 仍需一致处理。

## §6：有限测量时间仍必须说明 finite part

定义 \(U=u_0>0\)、\(x=U/[r_0|y-z|^2]\)。原文在有限 \([-U,U]\) window 的答案用

\[
I(x)=\frac{2x}{4-d}\,{}_2F_1(1,2-d/2;3-d/2;-x)
\]

表示，且

\[
\widehat{\mathcal M}_A^i
=-N_dQ_ir_0^{3-d/2}U^{1-d/2}(y-z_i)_AI(x).
\]

小 \(x\) 是先 large-\(r\) 的区间；大 \(x\) 才得到 \(r_0^{4-d}\) Coulombic profile。对固定 transverse separation，等待条件为

\[
U\gg r_0|y-z|^2,
\]

不是对全部 celestial angles 一致的单个 \(U\gg r_0\)。尺度 \(|y-z|\) 与选定 chart/测量区必须一同给出。

独立可复算的 \(d=5\) 例子更透明。对 \(a=r_0|y-z|^2\)：

\[
\operatorname{FP}\int_0^Udu\,\frac{u^{-3/2}}{u+a}
=-\frac{2}{a\sqrt U}-\frac{2}{a^{3/2}}\arctan\sqrt{U/a}.
\]

**Checked：** 对 \(U\) 求导正好返回 integrand；\(U\to\infty\) 给 \(-\pi a^{-3/2}\)。当 \(a=1\)，有限值与极限的比在 \(U=1,10,100,1000\) 分别约为 1.13662、1.00633、1.000211、1.00000671；差值首项为 \(-2/(3U^{3/2})\)。这确认完整 finite-part profile 会饱和到非零值。

但 lower endpoint \(u=0\) 仍有发散；“finite time”本身不是 ultraviolet/impulsive-source regulator。把这一形式测量积分等同于平滑散射源、有限尺寸 timelike charged detector 的实际 velocity kick，还需 source switching、probe trajectory 与分布 completion 的共同控制。本文给出 null probe 的方案，并讨论 timelike 推广；未提供这些一般条件下的独立实测模型。

## §7.1–7.2 与 Appendix E：massive source 的偶维分支

取 \(p^2=-1\)，有

\[
\tau_\pm=-x\cdot p\pm\sqrt{(x\cdot p)^2+x^2},
\quad\Delta=\tau_+-\tau_-.
\]

\[
p(\rho,z)=\rho^{-1}q(z)+\rho n,
\quad q(y)\cdot p=-\frac{\rho^2+|y-z|^2}{2\rho},
\quad n\cdot p=-\frac1{2\rho}.
\]

future retarded support 为 outgoing 取 \(\tau_-\)、incoming 取 \(\tau_+\)；在 \(x^0>0\) 区域分别要求 \(x^2<0\) 和 \(x^2>0\)。大 \(r\) 固定 \(u\) 时 \(\tau_-\sim\rho u/(\rho^2+|y-z|^2)\)，另一根为 \(O(r)\)。

Appendix E.1 以 \(f=(\tau-\tau_+)(\tau-\tau_-)\) 和 \(f+\lambda\) 的 roots，证明

\[
\int_Ig(\tau)\delta^{(n)}(f)d\tau
=\left.\partial_\lambda^n\sum_{\tau_\alpha(\lambda)\in I}
\frac{g(\tau_\alpha(\lambda))}{\sqrt{\Delta^2-4\lambda}}\right|_{\lambda=0}.
\]

这里 \(p^2=-1\) 给 \(-(x-p\tau)^2=\tau^2+2x\cdot p\,\tau-x^2=f\)，与 (7.1) 的符号一致。source 的 \(\lambda\) deformation 必须沿用这个正号。

令 \(n=(d-4)/2\)，theta differentiation/resummation 得

\[
\left.\partial_\lambda^n\frac{\Theta(\tau_\pm(\lambda))}{\sqrt{\Delta^2-4\lambda}}\right|_0
=\sum_{j=0}^n\frac{(2n-j)!}{j!(n-j)!}
\frac{(\mp1)^j\delta^{(j-1)}(\tau_\pm)}{\Delta^{2n-j+1}},
\quad\delta^{(-1)}=\Theta.
\]

乘上 \(Qp^\mu/(2\pi^{(d-2)/2})\) 给势。以 \(p_{[\mu}x_{\nu]}=p_\mu x_\nu-x_\mu p_\nu\)（无 1/2）求导，场强是 \(\Theta\) 项与有限 δ-derivative tower，系数

\[
a_j=(\mp1)^{j-1}\frac{(2n-j+1)!}{(j+1)!(n-j)!},\qquad -1\le j\le n.
\]

Appendix E.3 用 homogeneity 和 \(p\cdot\partial\tau_\pm=1\) 将 divergence 化为动量无关的 cone contacts；总电荷守恒消去相应 overleading terms。E.4 用 \(u=-\tau(\tau+2rq\cdot p)/(r+2n\cdot p\,\tau)\) 展开 δ composition，再作 residue/Vandermonde sum 提取 Coulombic 系数。

所得 outgoing coefficients 为

\[
F_{ru}^{(d-2)}=\frac{Q}{2\pi^{(d-2)/2}}
\frac{(d-3)!}{n!}\frac{\Theta(u)}{(-2p\cdot q)^{d-2}},
\]

\[
F_{Au}^{(d-4)}=\frac{Q}{2\pi^{(d-2)/2}}
\frac{p\cdot\partial_Aq}{(-2p\cdot q)^{d-3}}
\mathcal P_n(z)\delta(u),\quad
z=-(2p\cdot q)(p\cdot n),
\]

\[
\mathcal P_n(z)=\sum_{k=0}^n(-1)^{k+1}2^k\frac{(2n-k)!}{(n-k)!}z^k.
\]

其 constraint 简化到

\[
z(1+2z)\mathcal P_n'-(2n+2nz+1)\mathcal P_n
=\frac{(2n+1)!}{n!}.
\]

**Checked：** Mathematica 对 \(n=0,\ldots,6\) 的 residual 全为 0；\(\partial_\lambda^n(\Delta^2-4\lambda)^{-1/2}|_0\) 的 factorial coefficient 同范围通过。general \(n\) 的 resummation 仍为 Source-derived，有限检查不等于全阶证明。

此时在 \(\mathcal I^+\) 没有 massive particle flux，memory 由 endpoint 决定：\(D^A\mathcal M_A=2\Delta F_{ru}^{(d-2)}\)。\(\rho\to0\) 时 bulk-to-boundary kernel 趋向 δ，\(2\Delta F_{ru}\to Q\delta^{(d-2)}\)。这里先 \(r\to\infty\) 的偶维 endpoint 叙述，须与下一节固定有限 plane 的 flux 叙述区分。

## §7.3 与 Appendix F：massive odd tail、Beta 项和 incoming 抵消

### 势和场强的全 \(r\) 构造

令

\[
H(z)={}_2F_1(1,4-d;3-d/2;z),\qquad
J(\tau_+,\tau_-)=\frac{2(\tau_-\tau_+)^{2-d/2}}{(d-4)(\tau_--\tau_+)}
H\left(\frac{\tau_-}{\tau_--\tau_+}\right).
\]

quadratic worldline integral 的原函数也可写 incomplete Beta：

\[
I(\alpha)=\Delta^{3-d}[B_{z(\alpha)}(2-d/2,d-3)-B_{z(0)}(2-d/2,d-3)],
\quad z(\alpha)=\frac{\alpha-\tau_+}{\alpha-\tau_-}.
\]

approaching roots 的 cutoff powers 需扣除；在无穷远还保留

\[
I(\infty)=J+(\tau_--\tau_+)^{3-d}B(2-d/2,d-3).
\]

有限势的 outgoing 部分是 \(-N_dQp^\mu\Theta(-x^2)J\)；incoming 部分是 \(-N_dQp^\mu[I(\infty)-\Theta(x^2)J]\)。后者的 Beta tail 是 incoming cancellation 所必需，不能删除。

F.1 用 contiguous identity 将 \(p_{[\nu}\partial_{\mu]}J\) 化为单个 shifted hypergeometric function。记

\[
\widetilde H(z)={}_2F_1(1,2-d;2-d/2;z),
\]

则

\[
\left[2-d/2+2z(z-1)+(2z-1)z(z-1)\partial_z\right]H(z)
=(2-d/2)\widetilde H(z).
\]

最终 \(F_{\mu\nu}=\sum_i(x_\mu p_{i\nu}-x_\nu p_{i\mu})\Phi_i\)，其中

\[
\Phi_i=-N_d\left[
2Q_i\Theta(-x^2)\frac{(\tau_+^i\tau_-^i)^{1-d/2}}{\tau_-^i-\tau_+^i}
\widetilde H\left(\frac{\tau_-^i}{\tau_-^i-\tau_+^i}\right)
+2(2-d)Q_i\mathbf1_{i\in\mathrm{in}}B(2-d/2,d-2)(\tau_-^i-\tau_+^i)^{1-d}
\right].
\]

投影为

\[
F_{ru}=\tfrac12\sum_i(rq\cdot p_i-un\cdot p_i)\Phi_i,
\qquad F_{Au}=\tfrac{r^2}2\sum_i\partial_A(q\cdot p_i)\Phi_i.
\]

F.2 用 degree \(1-d\) homogeneity、\(p\cdot\partial\Delta=0\) 和

\[
(1-2z)\widetilde H(z)+\frac{2z(z-1)}{d-2}\widetilde H'(z)=1
\]

把 source-free divergence 归结为 \(\sum Q_i=0\)。**Checked：** 上述两条 hypergeometric identities 在 \(d=5,7,9\) 都严格化为零 residual。检查限于离开 \(x^2=0\) 与 source trajectories 的普通函数；未由此验证全部 distribution contacts。

### \(J_1,J_2\) 的时间积分

设 \(\lambda=|y-z|^2/\rho^2>0\)、\(t=u/(r\rho^2)\)、\(\eta=+1\) incoming、\(-1\) outgoing。则

\[
\tau_--\tau_+=-r\rho\sqrt{(t-1+\lambda)^2+4\lambda},
\quad
\frac{\tau_-}{\tau_--\tau_+}=\tfrac12+\frac{\eta(1+\lambda+t)}{2\sqrt{(t-1+\lambda)^2+4\lambda}}.
\]

define incoming integrand

\[
f_d(t,\lambda)=\frac{t^{1-d/2}}{\sqrt{(t-1+\lambda)^2+4\lambda}}
\widetilde H\left(\tfrac12+\frac{1+\lambda+t}{2\sqrt{(t-1+\lambda)^2+4\lambda}}\right).
\]

single-step identity (7.64) 为

\[
f_{d+2}=\frac2{d-2}(\partial_\lambda-\partial_t)f_d.
\]

**Checked：** Mathematica 对 \(d=3,5,7\) 的 exact residual 全为零。正确迭代应为

\[
f_{2k+1}=\frac{2^{k-1}}{(2k-3)!!}
(\partial_\lambda-\partial_t)^{k-1}f_3,
\]

而非原文 (7.65) 的 \(\prod_{j=1}^{k}2/(2j-1)\)。基底可直接化为

\[
f_3=-\frac{1+\lambda+t}{\sqrt t[(t-1+\lambda)^2+4\lambda]},
\qquad\int_0^\infty f_3dt=-\frac\pi{\sqrt\lambda}.
\]

后一积分在 \(\lambda=2\) 用 35-digit numerical integration 与 \(-\pi/\sqrt2\) 相符。对高维递推，在 \(t\in[\delta,L]\) 上先积分；\(L\to\infty\) 的端点项消失，\(\delta\to0^+\) 的幂发散须明确取 finite part。这才得到

\[
J_1(\eta)=(-1)^{(d-3)/2}\eta\pi
r^{2-d}\rho^{3-d}\lambda^{1-d/2}.
\]

\(J_2\) 则是普通收敛积分

\[
J_2=r^{2-d}\rho^{3-d}\int_{-\infty}^\infty
[(t-1+\lambda)^2+4\lambda]^{(1-d)/2}dt
\]

\[
=r^{2-d}\rho^{3-d}\sqrt\pi
\frac{\Gamma((d-2)/2)}{\Gamma((d-1)/2)}(2\sqrt\lambda)^{2-d}.
\]

**Checked：** \(d=5,7,9\) 的 reduced integrals 依次为 \(\pi/(16\lambda^{3/2})\)、\(3\pi/(256\lambda^{5/2})\)、\(5\pi/(2048\lambda^{7/2})\)。乘 \((2-d)B(2-d/2,d-2)\) 后恰给与 incoming \(J_1\) 相反的项。原文 (7.69) integrand 漏掉了整个指数 \(1-d\)，印成 square root；其后 Gamma 答案对应这里恢复的 integrand。

把 \(\int\Phi_i\) 与 \(r^2\partial_A(q\cdot p_i)/2\) 相乘，\(\rho\) 幂精确消去，incoming 也抵消；outgoing 剩

\[
\int du\,F_{Au}=
r^{4-d}\sum_{i\in\mathrm{out}}\frac{Q_i\Gamma((d-2)/2)}{2\pi^{(d-2)/2}}
\frac{(y-z_i)_A}{|y-z_i|^{d-2}}.
\]

故 **scaled** memory 的 divergence 为 \(\sum Q_i\delta^{(d-2)}\)。原文 (7.72) 把 unscaled \(\int D^AF_{Au}du\) 直接写成 radius-independent δ，少了 \(r^{4-d}\)；应补此因子，或在定义中乘 \(r^{d-4}\)。这是从 (7.50)、(7.71) 已能直接核对的尺度问题。

## §7.4 与 §8：soft、primary 及 gravity 的边界

massive Fourier transform 的 Schwinger denominator 变成

\[
x^2-2sx\cdot p-s^2\pm i0(x^0-sp^0),
\]

与 retarded worldline construction 相比没有显式 \(\Theta(x^0-sp^0)\)。源文承认得到 retarded/advanced 的线性组合。因此 massive soft matrix element 和选定 retarded memory 之间，还需要指定相应线性组合与边界条件；不能把 massless 的精确匹配用语直接推广。

§8.1 从 one-form Lie derivative 的 Lorentz covariance

\[
\mathcal L_{M_{\rho\sigma}}A_\mu(x;p)
=-(p_\rho\partial_{p^\sigma}-p_\sigma\partial_{p^\rho})A_\mu(x;p)
\]

解释无质量 \(\Delta=1\) sourced primary wavefunctions，并提出 massive hyperboloid-parametrized kernels 及其 celestial integral。它们离开源才满足 homogeneous wave equation；有源 Green function 与正常 homogeneous basis 不可混称。与 AdS bulk-to-boundary propagators 的关系为结构性提议，未构造本文的 AdS boundary phase space。

§8.2 在 leading soft graviton factor 中以 \(Q_ip_{i\mu}\) 替换为 \((\kappa/2)p_{i\mu}p_{i\nu}\) 来推测线性引力 Coulombic memory。源文没有完成 geodesic-deviation observable、gravitational constraints、gauge completion 或 nonlinear Christodoulou memory 的相应推导；这些均为 Source-derived 的方向，不能列入本笔记的验证结果。

## 与 CPS / null boundary 工作的具体接口

可复用对象首先是有限 \(\Sigma_{r_0}\) 上的 exact constraint，而非预先选择的 asymptotic coefficient。取 Maxwell action 的约定与 \(j=-J\) 一致后，先写

\[
2r_0^{d-2}\Delta F_{ru}-D^A\left[r_0^{d-4}\int du\,F_{Au}\right]
=-r_0^{d-2}\int du\,j_u.
\]

对横向 test function \(\epsilon(y)\) smear 并做 integration by parts，必须保留横向边界项或要求 \(\epsilon\) 紧支撑；源点周围小球通量给 charge insertion。于是可把 \(G_{d-2}\) 当作恢复 longitudinal memory profile 的显式 kernel。这个有限 surface identity 可以作为构造 charge-balance observable 的模型。

若要进入 CPS，还必须另外给 \(\Theta\)、\(\Omega_\Sigma\)、允许变分、端点和横向 corner 边界条件，并检验 soft charge 的可积性。本文未计算这些对象；记忆场的非零值不自动证明存在某个新 edge-mode algebra 或新的 Hamiltonian large-gauge generator。

对 regulated observable 应保留三层次序：先决定 retarded distribution/接触项 completion，再在 \(u\in[-U_-,U_+]\)、固定 \(r_0\) 积分，随后以 \(U_+/(r_0|y-z|^2)\to\infty\) 取长时极限，最后 \(r_0\to\infty\)。在源点另用 test function 或小球 cutoff。先远区展开给出的另一 observable 不应被静默替换。

## 方程 ledger 与依赖审计

| 方程/构造 | 输入 → 输出 | 本次证据 |
|---|---|---|
| (2.1)–(2.24), A | fall-offs + Bianchi → even finite recursion / odd split | Source-derived；分量 constraint 已由 xCoba Checked |
| (3.8)–(3.9), B | retarded Fourier prescription → cone / tail | Source-derived 的分布构造；未独立证明完整 extension |
| (3.25)–(3.31) | regulated worldline → finite massless potential | reconstructed；endpoint prescription 必须保留 |
| §3.3 / (4.23) | pole locus → incoming shock cancellation | Source-derived；singular contact products 未独立完成 |
| (4.2) | finite null plane → exact balance | Checked，xCoba 任意函数分量 |
| (4.32) | Beta continuation → Green-function memory | Checked，convergent strip + d=5,7,9 + explicit cutoffs |
| (5.8)–(5.14) | soft factor → classical finite field | 系数乘法 Checked；(5.14) Failed factor 2 |
| (6.1)–(6.7) | finite time → two scaling regions | d=5 primitive、limit、numerical saturation Checked；general detector conditional |
| (7.11)–(7.30), E | quadratic δ → massive even Coulomb data | factorial/polynomial n=0..6 Checked；general residue proof Source-derived |
| (7.44)–(7.51), F | contiguous identity → massive odd \(\Phi\) | d=5,7,9 Checked away from singular loci |
| (7.64)–(7.72) | dimension recursion + Beta → outgoing memory | one-step Checked；printed iteration、J2 integrand、r scaling Failed |
| §7.4 / §8 | massive soft boundary conditions / gravity | Source-derived，未完成 retarded matching / gravitational observable |

## Verification log

### Checked

- xCoba 五维 null-chart metric 的 \(R=0\) 与完整 \(\nabla^\mu F_{\mu u}\) 分量，任意 \(f,g,h\)，返回与 (4.2) 一致的 sign/powers；无 xAct load error 或消息。
- Mathematica 收敛条带 Beta integral、\(d=5,7,9\) memory normalization、\(d=5,7\) 实 endpoint-cutoff 的发散幂与 finite parts。
- \(d=5\) finite-time primitive 的 derivative residual 为 0；长时极限与四组数值饱和比复算。
- (5.9) 与 finite classical potential 的系数比在 \(d=5,7,9\) 为 1；用于判断 (5.14) 多出的 2。
- massive even \(\mathcal P_n\) identity 与 \(\lambda\) derivative factorial，在 \(n=0,\ldots,6\) residual 为零。
- massive odd contiguous / last hypergeometric identity，在 \(d=5,7,9\) residual 为零；dimension-step identity 在 \(d=3,5,7\) residual 为零。
- \(f_3\) 的 closed simplification、\(\lambda=2\) 的 35-digit convergent integral，以及 \(J_2\) 三个 odd dimensions 和 Beta cancellation。
- 以上 CAS 的输入、原始输出与 rendered PDF 均存于 vault 外的本次临时目录；不是新增附件。

### Failed：原文按字面不成立的位置

1. **Appendix C (C.5)，印刷 p.44；§5.1 的相同 δ 展开。**
   \(\epsilon^{4-d}/(\epsilon^2+|v|^2)\) 在 \(d>4\) 不作为普通分布收敛到一个有限 δ。在离原点有正距离的 test support 上，它已按 \(\epsilon^{4-d}\) 发散。以 \(d=5\)、\(1<|v|<2\) 的径向积分作显式例子，Mathematica 给积分乘 \(\epsilon\) 的极限为 \(4\pi\)，而 δ 在此支撑上为零；任何非负光滑 annulus test function 同样保留发散。必须先减去 nonlocal divergent terms，再指定 finite-part/distribution expansion。故 (C.5) → (C.6) 不能单独证明所有 contacts 不贡献；这项结论保留 conditional。
2. **(5.14)，印刷 p.22。** 与 (5.9)、(3.31) 相比多出 \(1/2\)；应把该处 \(Q_ip_i/(2x\cdot p_i)\) 改为 \(Q_ip_i/(x\cdot p_i)\)，或调整前面的整体系数。这里只记录建议，不修改原文。
3. **(7.65)–(7.66)，印刷 p.36。** single-step (7.64) 正确，但迭代乘积应止于 \(k-1\)，系数为 \(2^{k-1}/(2k-3)!!\)，不是印刷 \(\prod_{j=1}^k2/(2j-1)\)。\(d=5\) 时正确值 2、印刷值 4/3，原式 residual 非零。使用正确系数可重新得到所述 \(J_1\) finite part；不能依赖错误的中间行。
4. **(7.69)，印刷 p.36。** \(J_2\) integrand 印成 \(\sqrt{(t-1+\lambda)^2+4\lambda}\)，其双向无穷积分发散。正确指数为 \((1-d)/2\)，才与 Gamma 答案一致。
5. **(7.72)，印刷 p.36。** 从 (7.50)、(7.71) 得 unscaled memory 有 \(r^{4-d}\)，原式漏写。radius-independent δ 是 scaled memory 的 divergence。
6. **Appendix E.4。** 所用变量映射有 \(g'(0)=-2p\cdot q\)，不是 1。Mathematica 对后者直接求导确认。它们不自动推翻 root locations 或 \(r\) 幂次结论，但不能用于无条件 normalization 证明。
7. **Appendix D.2 / (5.17) 的 eikonal current 最后一行。** 漏了电荷 \(Q\)，应保持 current 与 source coupling 的线性关系。

### Blocked / Not independently verified

没有尚未解决的下载或 CAS 服务阻塞。一次附加 Mathematica consistency batch 因不完整表达式返回 `ToExpression::sntxi`；已拆小重跑 Jacobian、\(f_3\) 和有限时间项，成功输出，未将失败 batch 当作证据。

精确未闭合边界是：原文 (C.5) 未给 ordinary limit 所需的 subtraction；因此全部 singular contacts、shock endpoint discard 与测量模型在同一 retarded regulator 下的一致 completion 未被本次证明。保留这个缺口之后，本文给出的核心 finite-part integral 与 ordinary-function identities 仍有上面的独立正面证据。

一般奇数维的所有分布延拓、完整任意电流 Ward identity、平滑相互作用区及 timelike detector 的普适 velocity kick、massive retarded/advanced matching、引力推广均为 Source-derived 或 Not independently verified。有限维代数样本与数值积分没有被升级成全维数或完整物理可观测量的证明。

**Verified:** 上列明确 CAS 与 elementary finite-part/scaling checks。**Assumptions:** flat spacetime、Lorenz gauge、all-outgoing charge conservation、retarded prescription、straight worldlines、固定 \(r_0>0\)、smearing/避开源点、\(d\ge5\) 的指定 finite part。**Not verified:** 完整 contact extension、一般探针与引力结论；这些条件在技术正文中保留，不用末尾免责声明替代推导。

## Sources

- [Official abstract and pinned version](https://arxiv.org/abs/2610.35283v1).
- [Official PDF](https://arxiv.org/pdf/2610.35283v1) 与 [official TeX source](https://arxiv.org/src/2610.35283v1)，全文及 Appendix A–F 已读取。关键式 (4.29)–(4.33)、(5.8)–(5.14)、§6、§7.1、(7.49)–(7.52)、(7.64)–(7.72)、(C.5) 已对照 rendered pages。
- source 是 `Arxiv-submission.tex` 与 bibliography；下载、抽取、图像及 CAS 日志均留在临时目录。没有为 medium/deferred candidates 预取技术来源，也没有修改旧笔记。
