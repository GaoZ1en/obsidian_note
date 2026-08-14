# AdS Scalar Boundary Conditions and Unitarity

这篇说明回答上传原稿 `AdSscalar2(1).tex` 所引出的边界条件问题。背景固定为 global AdS$_{d+1}$，度规号差为 $(-,+,\dots,+)$，AdS 半径记为 $L$。除专门说明外，讨论的是固定背景上的自由实标量

$$\begin{align}
S_{\mathrm{bulk}} =-\frac12\int_M\mathrm d^{d+1}x\sqrt{-g} \left[(\nabla\phi)^2+m^2\phi^2\right].
\end{align}$$

## 结论先行

1. **边界条件的选择不能由“辛形式有限”单独决定。** 合理的筛选顺序是：渐近解空间 $\to$ 作用量变分与零辛通量 $\to$ 自伴动力学 $\to$ 正能量/无不稳定模 $\to$ 正频内积正定与幺正性。辛形式有限只通过了其中一层。
2. **混合边界条件确实存在。** 在 $0<\nu<1$ 的窗口内，Dirichlet、Neumann 和一族 Robin 条件都可能给出自伴动力学；但是只有其中一个子集使空间算子为正。一般 Robin 条件破坏完整的 AdS 共形群，却仍可保留 global time translation 和旋转。
3. **低于 BF bound 时，确实存在光滑紧支撑初始位形，其势能为负。** 更强地，空间算子的二次型无下界。下面给出一个靠近共形边界、但对每个固定参数仍为紧支撑的显式试探函数族。
4. **若“准确在 BF bound”指 $m^2L^2=-d^2/4$，那么“理论不能在渐近 AdS 实现”是不正确的。** 此时两根合并并出现对数支；log-free 的 Friedrichs 理论是允许的，保留对数支的理论也可以构造，但必须改变渐近条件、反项和（耦合引力时的）度规回馈分析。
5. **若所指其实是 alternative window 的另一端 $\nu=1$，即 $\Delta_-=(d-2)/2$，则这是 CFT scalar unitarity bound 的饱和点，不是 BF bound。** 饱和要求 $\Box\mathcal O$ 成为零模，理论退化为 free scalar/singleton；它不是把通常的慢支 bulk scalar 原封不动延伸到端点。
6. **“有限辛形式但不幺正”有具体的 AdS 标量例子。** AdS$_4$ 中的无质量标量取窗口外的重整化 Neumann 条件时，辛形式有限，但正频模 $e^{-it}\sin\rho\,Y_{1m}$ 的重整化范数为 $-3\pi/2$，所以它是 ghost。

## 1. 先固定参数：BF Bound、两根和原稿的 $\Delta$

令

$$\begin{align}
\nu:=\sqrt{\frac{d^2}{4}+m^2L^2}, \qquad \Delta_\pm:=\frac d2\pm\nu,
\end{align}$$

则

$$\begin{align}
m^2L^2=\Delta_\pm(\Delta_\pm-d), \qquad \Delta_++\Delta_-=d.
\end{align}$$

在 Fefferman--Graham 坐标 $z\to0$ 下，非整数 $2\nu$ 的通解具有形式

$$\begin{align}
\phi(z,x) =z^{\Delta_-}\bigl(\alpha(x)+\cdots\bigr) +z^{\Delta_+}\bigl(\beta(x)+\cdots\bigr).
\end{align}$$

本文约定：

- $\alpha$ 是慢支数据，$\beta$ 是快支数据；
- sourceless standard/Dirichlet quantization 指 $\alpha=0$；
- sourceless alternative/Neumann quantization 指 $\beta=0$；
- mixed/Robin quantization 指 $\alpha$ 与 $\beta$ 之间的非平凡关系。

不同文献可能交换“Dirichlet/Neumann”对 $\alpha,\beta$ 的命名，因此真正不含歧义的是“固定哪一个渐近系数”。上传原稿在快支一节使用 $\Delta=\Delta_+>d/2$，在慢支一节使用 $\Delta=\Delta_-<d/2$。

这里有两种不同层次的 “Robin”，需要特别区分。有限 cutoff 上，alternative regulator

$$\begin{align}
\left.(n\!\cdot\!\nabla+\Delta_-)\phi\right|_{r=r_0}=0
\end{align}$$

在初等边值问题的意义下当然是 Robin 条件；但把它作用到两支渐近展开后，$r_0\to\infty$ 的主导条件是 $\beta=0$，所以它在渐近数据空间中是 pure Neumann/alternative endpoint。文献通常把有限非零关系 $\beta=\kappa\alpha$ 称为 mixed boundary condition。若把所有零通量 Lagrangian 关系统一称为 generalized Robin，那么 standard、alternative 和 finite-$\kappa$ mixed 条件确实属于同一个大族；“alternative 不是 mixed”只是较窄的术语约定，而不是数学上的绝对分界。

BF bound 是

$$\begin{align}
m^2L^2\geq -\frac{d^2}{4} \quad\Longleftrightarrow\quad \nu^2\geq0.
\end{align}$$

Standard quantization 的 $\Delta_+$ 自动满足 $\Delta_+\geq d/2$。alternative quantization 的通常窗口为

$$\begin{align}
0<\nu<1 \quad\Longleftrightarrow\quad -\frac{d^2}{4}<m^2L^2<-\frac{d^2}{4}+1 \quad\Longleftrightarrow\quad \frac{d-2}{2}<\Delta_-<\frac d2.
\end{align}$$

最后一个下界是 **CFT scalar unitarity bound**，不是 BF bound。

## 2. 为什么必须讨论边界条件

Global AdS 的共形边界是类时的，因果信号可以在有限 global time 内到达边界再返回。因此常数 $t$ 的空间切片不是整个时空的 Cauchy surface；只给初值并不能自动决定边界返回什么。

把 Klein--Gordon 方程写成

$$\begin{align}
\partial_t^2\phi=-A\phi,
\end{align}$$

其中 $A$ 是空间微分算子。一个满足局部方程、时间平移/反演对称并具有合适守恒正能量的动力学，对应于 $A$ 的一个**正的自伴扩张** $A_E$：

$$\begin{align}
\phi(t) =\cos(tA_E^{1/2})\phi_0 +A_E^{-1/2}\sin(tA_E^{1/2})\dot\phi_0.
\end{align}$$

这是 [Ishibashi--Wald](https://arxiv.org/abs/hep-th/0402184) 分类的核心。由此可见：

- 边界条件首先决定 $A$ 的定义域，即决定动力学；
- 自伴性保证合适的守恒结构和实谱，但不自动保证 $A\geq0$；
- 正性才排除 $\omega^2<0$ 的指数增长模并给出正能量；
- 量子理论还要检查正频子空间上的内积是否正定。

所以“为了适定初值问题而选边界条件”是正确的一部分，但不是完整答案。若 $\nu\geq1$，有限能量框架通常只留下唯一的快支扩张；此时不是“不需要边界条件”，而是可接受的定义域没有连续选择自由度。

## 3. 零辛通量给出什么，又没有给出什么

对两个线性化解，bulk Klein--Gordon 辛流为

$$\begin{align}
j^\mu(\delta_1\phi,\delta_2\phi) =\delta_1\phi\nabla^\mu\delta_2\phi -\delta_2\phi\nabla^\mu\delta_1\phi.
\end{align}$$

代入两支渐近展开，径向通量的有限部分为

$$\begin{align}
\mathcal F_{\partial M} =2\nu L^{d-1}\int_{\partial M} \left(\delta_1\alpha\,\delta_2\beta -\delta_2\alpha\,\delta_1\beta\right),
\end{align}$$

整体符号随外法向约定改变，但边界相空间上的二形式不变。零通量要求允许的边界数据在 $(\alpha,\beta)$ 空间中形成 Lagrangian 子空间或子流形。典型选择包括

$$\begin{align}
\alpha=0, \qquad \beta=0, \qquad \beta=\kappa\alpha, \qquad \beta=\frac{\delta W[\alpha]}{\delta\alpha}.
\end{align}$$

最后一种正是 multi-trace/designer boundary condition。若关系来自边界泛函 $W$，则作用量变分与零通量条件相容。

但是辛形式是反对称双线性形式，恒有 $\Omega(v,v)=0$；它本身没有“正”或“负”的概念。量子一粒子内积需要额外选择与时间演化相容的复结构 $J$：

$$\begin{align}
g(v,w):=\Omega(v,Jw).
\end{align}$$

有限性只说明 $g$ 的候选表达式没有发散，并不说明 $g(v,v)>0$。边界反项甚至可以用负号消掉一个正的 bulk 发散，留下有限但不定号的 $g$。这正是后面 ghost 例子的机制。

## 4. 混合边界条件为什么常被省略

### 4.1 它们在动力学上真实存在

对 $0<\nu<1$，空间算子有一参数自伴扩张族；在渐近数据语言中就是 generalized Robin 条件。Dirichlet 与 Neumann 只是两个特殊点。并且不是所有 Robin 参数都使扩张为正；存在临界参数，越过它会出现负本征值/不稳定模。

因此不能说“混合边界条件不存在”，只能说某篇工作**选择不研究**它们，或它们不满足该工作的额外对称性/稳定性要求。

### 4.2 一般线性 Robin 条件破坏完整共形对称性

在边界尺度变换下，$\alpha$ 与 $\beta$ 的权重分别为 $\Delta_-$ 与 $\Delta_+$。线性关系

$$\begin{align}
\beta=\kappa\alpha
\end{align}$$

要求

$$\begin{align}
[\kappa]=\Delta_+-\Delta_-=2\nu.
\end{align}$$

当 $\nu>0$ 时，有限非零的常数 $\kappa$ 引入尺度，所以通常只保留时间平移和旋转，而不保留完整 $SO(d,2)$。$\kappa=0$ 与 $\kappa=\infty$ 是两个线性共形不动点，对应 alternative 与 standard quantization。

但“共形对称性只允许两种条件”仍需加限定，因为非线性齐次关系

$$\begin{align}
\beta=c\,\alpha^{\Delta_+/\Delta_-}
\end{align}$$

在适当定义域内也可与尺度变换相容；相应边界势满足 $W(\alpha)\propto\alpha^{d/\Delta_-}$。耦合引力、局域性、光滑性和量子反常会进一步限制这类条件。

在 AdS/CFT 中，一般 $W$ 对应 multi-trace deformation，而线性 Robin 条件对应 double-trace coupling；它通常描述从 alternative fixed point 流向 standard fixed point 的 RG flow，见 [Witten](https://arxiv.org/abs/hep-th/0112258)。

## 5. $\Delta$ 范围应如何论证

不能把所有范围都归因于同一个“可积性”。下面各层结论不同。

| 参数区间      | 渐近行为与动力学                                  | 稳定性/幺正性结论                                                                          |                     |                      |
| --------- | ----------------------------------------- | ---------------------------------------------------------------------------------- | ------------------- | -------------------- |
| $\nu^2<0$ | 指数变成 $d/2\pm i                            | \nu                                                                                | $；空间二次型在紧支撑定义域上已无下界 | 低于 BF bound；没有正的自伴扩张 |
| $\nu=0$   | $z^{d/2}(\alpha\log z+\beta)$；端点需单独处理     | log-free Friedrichs 条件可稳定；一般 log/mixed 条件需另查正性                                     |                     |                      |
| $0<\nu<1$ | 两支都进入通常的自伴扩张分类；存在 Robin 一参数族              | 只有正扩张子集稳定；standard 与 alternative 两端均可幺正                                            |                     |                      |
| $\nu=1$   | 慢支的普通 KG 范数对数发散；出现导数反项和端点对数               | $\Delta_-=(d-2)/2$ 饱和 CFT bound；普通 bulk Neumann 延拓并不自动幺正，singleton 极限需 quotient/缩放 |                     |                      |
| $\nu>1$   | 通常有限能量 Hilbert 空间只允许快支；若强行用反项保留慢支，可使辛形式有限 | global AdS 中重整化 Neumann 理论出现 ghosts；只看有限性会误判                                       |                     |                      |

### 5.1 Bulk 论证：正的自伴扩张

[Ishibashi--Wald](https://arxiv.org/abs/hep-th/0402184) 的结论比“辛形式有限”更强：

- $\nu^2>1$ 时，通常 Hilbert 空间中只有唯一正的自伴扩张；
- $0<\nu^2<1$ 时有一参数自伴扩张族，但只有满足一个参数不等式的子集为正；
- $\nu^2=0$ 时仍有一参数族，正性条件需用对数渐近数据表达；
- $\nu^2<0$ 时，初始对称算子本身已无下界，所有自伴扩张都无下界。

因此 BF bound 来自空间算子的 Hardy 型正性，而 alternative window 的上端 $\nu=1$ 来自第二支的可接受性和量子正性；两者不是同一个边界。

### 5.2 Boundary 论证：CFT Scalar Unitarity Bound

若 bulk slow quantization 对应一个 $d$ 维标量 primary $\mathcal O$，径向量子化中 descendant 的范数由共形代数决定。对 $\Delta>0$，二级标量 descendant 满足

$$\begin{align}
\left\|P^2|\mathcal O\rangle\right\|^2 =8d\Delta\left(\Delta-\frac{d-2}{2}\right) \langle\mathcal O|\mathcal O\rangle,
\end{align}$$

所以上述范数非负要求

$$\begin{align}
\Delta\geq\frac{d-2}{2}.
\end{align}$$

取 $\Delta=\Delta_-=d/2-\nu$ 就得到 $\nu\leq1$。这不是渐近积分是否收敛的论证，而是 Hilbert 空间正定性的表示论论证。

当等号成立时，$P^2|\mathcal O\rangle$ 是 null state。在一个幺正理论中必须把它 quotient 掉，于是

$$\begin{align}
\Box\mathcal O=0.
\end{align}$$

这说明饱和 unitarity bound 的标量是 free field。bulk 对偶是 singleton：物理自由度局域在边界，普通 bulk 模在适当极限中变成 null 并被 quotient。有关 global AdS 上如何取这个极限，见 [Ohl--Uhlemann](https://arxiv.org/abs/1204.2054)。

上述通常的“饱和即自由标量”陈述以 $d>2$ 为标准语境。$d=2$ 时形式下界为 $\Delta\geq0$，但 $\Delta=0$ 的局域标量 primary、真空表示以及非紧 free boson 的零模有额外特殊性；AdS$_3$ 的 $\nu=1$ 端点仍应单独做 singleton/logarithmic 分析，而不应从高维结论直接略去这些问题。

### 5.3 Bulk 模范数论证

在静态背景上，若 $A_E$ 是正自伴算子，可用其谱分解定义正频模。对一个频率 $\omega>0$ 的模 $u$，应检查

$$\begin{align}
(u,u)_{\mathrm{KG/ren}}>0.
\end{align}$$

若某个正频模范数为负，它是 ghost；若 $A_E$ 有负本征值，则有指数增长模并且能量无下界；若出现复频率，时间平移不能在正定一粒子 Hilbert 空间上对角化为自伴生成元。这三种病态不应混为一谈，但都不能由“辛形式有限”排除。

术语上还要再区分一次：一个自伴但无下界的 Hamiltonian 在抽象 Hilbert 空间中仍可能生成范数保持的 unitary group；它失败的是正能量表示、稳定真空和通常的 QFT 谱条件。本文所说的“幺正可接受理论”同时要求正定 Hilbert 内积、自伴时间平移以及能谱下有界。第 6 节主要击中稳定性/正能量，第 8 节的负范数模则直接击中 Hilbert 空间正定性。

## 6. 低于 BF Bound：紧支撑负势能位形

这一问的答案是：**能，而且可以给出控制良好的试探函数族。**

用 global 坐标

$$\begin{align}
\mathrm ds^2 =L^2\sec^2\rho \left(-\mathrm dt^2+\mathrm d\rho^2+\sin^2\rho\,\mathrm d\Omega_{d-1}^2\right), \qquad 0\leq\rho<\frac\pi2.
\end{align}$$

在 $t=0$ 取球对称初值

$$\begin{align}
\phi=q(\rho), \qquad \partial_t\phi=0.
\end{align}$$

去掉正因子 $L^{d-1}\operatorname{Vol}(S^{d-1})/2$ 后，势能二次型为

$$\begin{align}
Q[q] =\int_0^{\pi/2}\mathrm d\rho\,\tan^{d-1}\rho \left[(q')^2+m^2L^2\sec^2\rho\,q^2\right].
\end{align}$$

令

$$\begin{align}
y=-\log(\cos\rho), \qquad q(\rho)=e^{-dy/2}g(y), \qquad s(y)=\sqrt{1-e^{-2y}}.
\end{align}$$

则可以精确改写为

$$\begin{align}
Q[q] =\int_0^\infty\mathrm dy\left[ s^d\left(g'-\frac d2g\right)^2 +m^2L^2s^{d-2}g^2 \right].
\end{align}$$

把支撑整体推到 $y\gg1$，有 $s=1+O(e^{-2y})$，所以对紧支撑的 $g$，主导二次型为

$$\begin{align}
Q_\infty[g] =\int\mathrm dy\left[ (g')^2 +\left(\frac{d^2}{4}+m^2L^2\right)g^2 \right].
\end{align}$$

这里使用了紧支撑条件把全导数 $-\frac d2(g^2)'$ 积掉。若

$$\begin{align}
m^2L^2=-\frac{d^2}{4}-\varepsilon, \qquad \varepsilon>0,
\end{align}$$

则

$$\begin{align}
Q_\infty[g]=\int\mathrm dy\left[(g')^2-\varepsilon g^2\right].
\end{align}$$

取 $g_T$ 在长度为 $T$ 的区间上等于 $1$，并在两端固定宽度内光滑降为 $0$。于是

$$\begin{align}
\int(g_T')^2=O(1), \qquad \int g_T^2=T+O(1),
\end{align}$$

所以 $T$ 足够大时 $Q_\infty[g_T]<0$。再把整个支撑平移到充分大的有限 $y=Y$，精确二次型与 $Q_\infty$ 的差被 $O(e^{-2Y})$ 控制，故仍有 $Q[q]<0$。

对每个固定的 $Y,T$，支撑位于

$$\begin{align}
Y\leq-\log(\cos\rho)\leq Y+T+O(1),
\end{align}$$

它与 $ ho=\pi/2$ 保持正距离，因此在空间切片内确实是光滑紧支撑。把振幅乘以常数即可把势能送到 $-\infty$。

这也解释了为什么“$m^2<0$”本身并不等于不稳定：当 $m^2$ 仍高于 BF bound 时，径向梯度的 Hardy 项 $d^2/4$ 可以补偿负质量项；只有越过 BF bound，长对数径向平台才赢过边缘梯度能。

## 7. 准确在两个端点发生什么

### 7.1 真正的 BF 点：$\nu=0$

此时

$$\begin{align}
m^2L^2=-\frac{d^2}{4}, \qquad \Delta_+=\Delta_-=\frac d2,
\end{align}$$

一般渐近展开为

$$\begin{align}
\phi=z^{d/2}\left(\alpha\log z+\beta+\cdots\right).
\end{align}$$

上节试探函数的主导二次型变成 $\int(g')^2\geq0$，说明恰在端点并没有低于 BF 时的负平台方向。log-free 条件 $\alpha=0$ 给出正的 Friedrichs 扩张，是完全可以实现的固定背景理论。

在这个端点，standard 与 alternative 的两个幂律标签已经合并；log-free 理论不应再被描述成两个彼此不同的量子化之一。

若保留 $\alpha\neq0$，尺度变换会使 $\beta$ 与 $\alpha$ 混合，反项和边界条件必须含对数。耦合引力时，对数支还会使度规回馈变慢；但这不是“不存在”，而是必须扩展渐近条件和 Hamiltonian charge。显式构造见 [Henneaux--Martinez--Troncoso--Zanelli](https://arxiv.org/abs/hep-th/0404236)，非线性能量下界问题见 [Amsel--Roberts](https://arxiv.org/abs/1112.3964)。

因此上传原稿若把 Case III 限定为 **fixed AdS、log-free sector**，可以继续做；若要声称涵盖一般 BF-bound asymptotically AdS theory，则尚未证明。

### 7.2 Alternative Window 的 Unitarity 端点：$\nu=1$

此时

$$\begin{align}
m^2L^2=-\frac{d^2}{4}+1, \qquad \Delta_- =\frac{d-2}{2}.
\end{align}$$

这不是 BF 点。慢支的普通 KG 范数对数发散，重整化需要含边界导数的反项；同时 CFT descendant $\Box\mathcal O$ 变成 null。若要得到幺正端点，必须取 singleton/free-field 极限并 quotient null bulk modes。直接把 $0<\nu<1$ 的普通 Neumann bulk 理论代入 $\nu=1$，并不能自动得到这个幺正极限。

## 8. 显式反例：辛形式有限，但正频模是 Ghost

取 global AdS$_4$，所以 $d=3$，并取无质量标量

$$\begin{align}
m^2L^2=0, \qquad \nu=\frac32, \qquad \Delta_-=0, \qquad \Delta_+=3.
\end{align}$$

这已经在通常 alternative window 之外。若仍添加边界导数反项并施加重整化 Neumann 条件，可以把慢支的作用量和辛形式重整化为有限。考虑 $L=1$ 以及归一化为 $\int_{S^2}|Y_{1m}|^2=1$ 的模

$$\begin{align}
u(t,\rho,\Omega) =e^{-it}\sin\rho\,Y_{1m}(\Omega).
\end{align}$$

它满足 $\Box u=0$，在原点正则，频率为 $\omega=1>0$，并且在边界

$$\begin{align}
\sin\rho=1-\frac12\cos^2\rho+\cdots
\end{align}$$

只有慢支及其局域 descendant，没有 $(\cos\rho)^3$ 快支，因此满足该 Neumann 条件。

未重整化的正频 KG 范数径向部分是

$$\begin{align}
2\omega\int_0^{\pi/2-\epsilon} \mathrm d\rho\,\tan^2\rho\,\sin^2\rho.
\end{align}$$

边界导数反项对辛形式的贡献正好减去其正发散 $2\omega\cot\epsilon$。因此

$$\begin{aligned}
(u,u)_{\mathrm{ren}} &=2\omega\lim_{\epsilon\to0^+} \left[ \int_0^{\pi/2-\epsilon} \mathrm d\rho\,\tan^2\rho\,\sin^2\rho -\cot\epsilon \right]\\
&=2\left(-\frac{3\pi}{4}\right) =-\frac{3\pi}{2}.
\end{aligned}$$

所以：

- 重整化辛形式是有限且守恒的；
- 该模具有确定的正频率；
- 但其一粒子范数为负。

这就是“辛形式有限但是理论不幺正”的直接例子。它不是抽象可能性，而是窗口外重整化 Neumann AdS scalar 的实际 ghost。一般 $1<\nu<2$ 的 global AdS 模范数分析见 [Andrade--Marolf](https://arxiv.org/abs/1105.6337)。

还应区分另一个更初等的反例：低于 BF bound 时，任意一对紧支撑初值的 canonical 辛形式当然有限，但上节已经证明能量无下界。这个例子说明“有限辛形式不推出稳定正能量”；本节的负范数模进一步说明“有限重整化辛形式不推出 Hilbert 空间正定”。

## 9. 对上传原稿应如何表述

上传原稿的主体任务是：**在已经选择 standard 或 alternative 边界条件之后，用 boundary-complete Noether formalism 推导有限 Hamiltonian。** 它不是对所有 admissible boundary conditions 的分类。建议在解释文章范围时明确以下几点：

1. “两种量子化”应改读为“保持完整 AdS 共形对称性的两个线性固定点”，而不是“所有可能的适定边界条件”。原稿 Discussion 中关于 multi-trace/mixed boundary conditions 的段落已经承认更一般条件存在。
2. 慢支范围

$$\begin{align}
\frac{d-2}{2}<\Delta<\frac d2
\end{align}$$

   不应只用 action 或 symplectic finiteness 解释。更可靠的组合论证是：$0<\nu<1$ 的自伴扩张分类、正扩张条件、正频 KG norm，以及 dual scalar primary 的 unitarity bound。
3. 原稿推导出的 Hamiltonian “有限、守恒并生成对称性”仍不等于已经证明 quantum unitarity。若要在文中使用“allowed quantization”，最好说明还采用了 Breitenlohner--Freedman/Ishibashi--Wald 的正能量结果或显式模范数结果。
4. $\Delta=d/2$ 的 log-free fixed-background sector 可以成立，但它只覆盖 BF 点的一部分边界条件。generic logarithmic branch 和 dynamical gravity backreaction 必须单列。
5. 若将来加入 mixed condition $\beta=W'(\alpha)$，Noether charge 需要连同新的有限边界泛函及其 corner contribution 一起重算；不能只把渐近关系代入当前 standard/alternative charge。

## 10. 给老板问题的逐条短答

- **质量平方低于 BF bound 能不能有紧支撑位形使势能小于零？** 能。第 6 节给出光滑紧支撑试探函数族；空间二次型实际上无下界。
- **渐近行为的选择规则是什么？** 先由 EOM 找两支，再要求变分原理良定、辛通量为零、自伴演化、空间算子为正、正频范数正定；若还要求完整 AdS 对称性，再施加共形协变条件。
- **是不是为了适定初值问题才选边界条件？** 是重要原因，但不充分。自伴但非正的扩张仍可能不稳定；有限且守恒的重整化辛结构仍可能有 ghost。
- **为什么没有混合边界条件？** 它们存在。论文没有研究它们，是因为主体只处理两个线性共形固定点；一般 Robin 条件引入尺度并对应 multi-trace deformation/RG flow。
- **$\Delta$ 范围怎么论证？** BF bound 给 $\nu^2\geq0$；alternative window 的 $\nu<1$ 可由自伴/普通 KG normalizability 与 CFT scalar unitarity bound 共同说明；端点 $\nu=0,1$ 必须单独处理。
- **不接受只用辛形式有限，怎样综述幺正性？** 用“正自伴 $A$ + 正频内积正定 + Hamiltonian 下有界 + 无复频/ghost”作为 bulk 判据，并用 CFT descendant norm 给出独立的表示论判据。
- **准确在 BF bound 是否不能实现？** 不正确。$\nu=0$ 可以实现；特殊之处是对数支。若想问的是 $\nu=1$，那是 unitarity-bound/singleton 端点，不是 BF 点。

## 参考文献入口

- [Breitenlohner--Freedman, *Positive Energy in anti-De Sitter Backgrounds and Gauged Extended Supergravity*](https://doi.org/10.1016/0370-2693(82)90643-8)
- [Ishibashi--Wald, *Dynamics in Non-Globally-Hyperbolic Static Spacetimes III: Anti-de Sitter Spacetime*](https://arxiv.org/abs/hep-th/0402184)
- [Klebanov--Witten, *AdS/CFT Correspondence and Symmetry Breaking*](https://arxiv.org/abs/hep-th/9905104)
- [Witten, *Multi-Trace Operators, Boundary Conditions, And AdS/CFT Correspondence*](https://arxiv.org/abs/hep-th/0112258)
- [Henneaux--Martinez--Troncoso--Zanelli, *Asymptotically Anti-de Sitter Spacetimes and Scalar Fields with a Logarithmic Branch*](https://arxiv.org/abs/hep-th/0404236)
- [Andrade--Marolf, *AdS/CFT beyond the unitarity bound*](https://arxiv.org/abs/1105.6337)
- [Ohl--Uhlemann, *Saturating the unitarity bound in AdS/CFT*](https://arxiv.org/abs/1204.2054)
- [Amsel--Roberts, *Stability in Einstein-Scalar Gravity with a Logarithmic Branch*](https://arxiv.org/abs/1112.3964)

## 核查状态

- **Verified:** 用 Mathematica 核查了 $m^2L^2=\Delta(\Delta-d)$、第 6 节 $\rho\to y$ 的精确二次型变换和分部积分恒等式。
- **Verified:** 用 Mathematica 核查了 AdS$_4$ 模 $e^{-it}\sin\rho\,Y_{1m}$ 的 Klein--Gordon 方程残差为零，以及其重整化径向有限部分为 $-3\pi/4$、正频范数为 $-3\pi/2$。
- **Verified:** 用渐近代数核查了径向辛通量系数为 $2\nu(\delta\alpha\wedge\delta\beta)$。
- **Assumptions:** 固定 global AdS 背景、自由标量、标准时间平移；mixed condition 的一般讨论假定边界关系是 time-local 且变分可积。
- **Not verified:** 上传原稿的全部 cutoff cancellation、Case III 的一般 logarithmic sector，以及耦合 Einstein--scalar 后每一种 mixed boundary condition 的非线性正能量。
