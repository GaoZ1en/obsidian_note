# 有限局域插入生成类的 time-slice 障碍

日期：2026-09-07。**结论：在当前指定的有限插入生成类和仅 $(\lambda,\hbar)$-adic completion 下，研究路线 D2 要求的 time-slice 满射不成立。** 反例已经出现在 $\lambda=\hbar=0$ 的 massive free scalar，空间是平坦二维环面。它不否定 [完整 Wick 分布核类的 time-slice](<scalar local structure implementation.md>)，也不否定采用额外分布拓扑完成的 perturbative AQFT。

## 1. 精确命题及其所针对的类

令 $M=I^\circ\times\mathbb T^2$，$0,T\in I^\circ$，$m>0$。沿用从区域 response release 构造的 $L=\partial_t^2-\Delta+m^2$ 及 smooth solution space $\mathrm{Sol}_0$。取完整 Cauchy 时间带
$$
N=(-\varepsilon,\varepsilon)\times\mathbb T^2.
$$
对 open $O$ 定义普通交换乘法的代数
$$
\mathcal B_0(O)=\operatorname{Alg}_{\mathbb C}
\left\{F|_{\mathrm{Sol}_0}:F(\phi)=\int_O f(x)P(j^r\phi(x))\,dx,
\ f\in C_c^\infty(O),\ r<\infty,\ P\text{ polynomial}\right\}.
$$
每个元素是有限和、有限乘积；允许任意有限 jet order、非齐次项与常数。这里没有 spacetime-kernel topology 的额外 completion，也没有把任意 Poisson bracket、$\hbar^{-1}$ 或 functional limits 作为额外生成操作。

**定理 1。** 存在 $f\in C_c^\infty(M)$，$f\ge0$，支撑在 $(T,0)$ 的任意充分小邻域，使
$$
F(\phi)=\frac1{4!}\int f\phi^4,
\qquad F|_{\mathrm{Sol}_0}\notin\mathcal B_0(N).
$$
该邻域可置于人工 seam 上，因此 $F$ 是路线明确允许的跨 seam quartic insertion。即使 $N$ 含完整 Cauchy 面，$\mathcal B_0(N)\to\mathcal B_0(M)$ 仍非满射。

## 2. 四个互不相交的早期数据包

选择 $T$ 小于环面 injectivity radius 的充分小比例，使整个构造位于一个无绕行的平直坐标圆盘。取
$$
(\epsilon_1,n_1)=(+,e_x),\quad
(\epsilon_2,n_2)=(+,-e_x),\quad
(\epsilon_3,n_3)=(-,e_y),\quad
(\epsilon_4,n_4)=(-,-e_y),
$$
$$
x_j=-\epsilon_jTn_j
=(-Te_x,Te_x,Te_y,-Te_y)_j.
$$
最小点距为 $\sqrt2T$。选 $\delta,\varepsilon>0$ 满足
$$
2(\delta+\varepsilon)<\sqrt2T.
$$
在 $x_j$ 附近选择非负 smooth bump $a_{j,0}(0,x)$，支撑于 $B_\delta(x_j)$，中心邻域严格正。下面构造**精确** KG 解 $u_j^{(\nu)}$，$\nu\to+\infty$，其初始位移和动量均支撑在同一 $B_\delta(x_j)$。

有限传播给，对所有 $|t|<\varepsilon$，这些精确解及其任何有限阶 jets 的空间支撑两两不交。因此任取 $j\ne k$、任意 multi-indices $\alpha,\beta$，
$$
(\partial^\alpha u_j^{(\nu)})(t,x)
(\partial^\beta u_k^{(\nu)})(t,x)=0
\quad\text{在 }N.
$$
这一步是严格零，不是仅高频近似。

## 3. 晚时汇合与精确解的误差估计

在上述坐标管内取线性 eikonal phases
$$
\theta_j(t,x)=n_j\cdot x-\epsilon_jt,
\qquad \sum_{j=1}^4\theta_j=0.
$$
向环面延拓时只在支撑所在坐标管上使用这些 phases，并对紧支撑 amplitudes 作平移周期化；不要求任意实 $\nu$ 是整个环面的 Fourier 模式。

对 $|n|=1$ 直接计算
$$
L(e^{i\nu\theta}a)
=e^{i\nu\theta}\left[-2i\nu\epsilon
(\partial_t+\epsilon n\cdot\nabla)a+La\right].
$$
取任意固定足够大的整数 $J$，令
$$
v_j^{(\nu)}=e^{i\nu\theta_j}\sum_{r=0}^J\nu^{-r}a_{j,r},
$$
$$
(\partial_t+\epsilon_jn_j\cdot\nabla)a_{j,0}=0,
\quad
(\partial_t+\epsilon_jn_j\cdot\nabla)a_{j,r+1}
=\frac{La_{j,r}}{2i\epsilon_j},
\quad a_{j,r+1}(0,\cdot)=0.
$$
这是沿直线的实际 transport recursion。每阶 amplitude 和它的初始时间导数仍在相应平移 bump tube 中；有限时间上全部 smooth seminorm 有界，界不依赖 $\nu$。于是
$$
Lv_j^{(\nu)}=\nu^{-J}e^{i\nu\theta_j}La_{j,J}.
$$
现在以 $v_j^{(\nu)}$ 的**完整初始数据**解精确 KG 方程，得到 $u_j^{(\nu)}$。误差 $w_j=u_j^{(\nu)}-v_j^{(\nu)}$ 初值为零。对二维 torus 的能量估计，在固定时间窗上
$$
\sup_t\bigl(\|w_j(t)\|_{H^3}+\|\dot w_j(t)\|_{H^2}\bigr)
\le C\|Lv_j^{(\nu)}\|_{L^1_tH^2}
\le C_J\nu^{2-J}.
$$
取 $J\ge3$，Sobolev embedding 给 $w_j=O(\nu^{-1})$ 于 $C^0$。故在目标邻域，
$$
u_j^{(\nu)}
=e^{i\nu\theta_j}a_{j,0}+O(\nu^{-1}).
$$
所有 leading amplitudes 在 $(T,0)$ 附近相遇且严格正。选择非零非负 $f$ 支撑于该共同正区域，则
$$
\begin{split}
D^4F(0)[u_1^{(\nu)},u_2^{(\nu)},u_3^{(\nu)},u_4^{(\nu)}]
&=\int f\prod_{j=1}^4u_j^{(\nu)}\\
&=\int f\prod_{j=1}^4a_{j,0}+O(\nu^{-1})
\longrightarrow c_f>0.
\end{split}
$$
没有用波包图像代替证明：phase cancellation、transport recursion 和精确能量误差分别给出了显示极限。$m>0$ 保留在每阶 $La_{j,r}$ 中，主 eikonal equation 不依赖质量。

## 4. 任何早期有限插入表达都给零极限

先看 early local polynomial insertion $A$ 在零解处的 $k$ 阶导数。它是有限个同点 jets 的涂抹。对互不相同的 $j_1,\ldots,j_k$，若 $k\ge2$，§2 的严格支撑分离给
$$
D^kA(0)[u_{j_1}^{(\nu)},\ldots,u_{j_k}^{(\nu)}]=0.
$$
若 $k=1$，时间／空间分部积分把它写成 $\ell_h$，$h\in C_c^\infty(N)$。CPS identity 把 $\ell_h(u_j^{(\nu)})$ 写成 $E h$ 的 smooth Cauchy data 与该高频初值的配对。每个初值都是固定 compact smooth amplitude、有限的 $\nu$ 次幂与 $e^{i\nu n_j\cdot x}$ 的有限和。沿 $n_j$ 反复分部积分，得
$$
DA(0)[u_j^{(\nu)}]=O(\nu^{-q})
\quad\text{对每个 }q>0.
$$
固定测试函数的重要性在此：候选的有限表达一旦给出，其中的 coefficients 与 $\nu$ 无关。

对任意 $G\in\mathcal B_0(N)$，将 $D^4G(0)$ 展开为有限 Leibniz 和。每项对应四个方向在有限个 local factors 间的 partition。某个 factor 收到至少两个方向时该项严格为零；若每个非空 block 都是 singleton，则该项是上述 rapidly decreasing quantities 与固定常数的乘积。因此
$$
D^4G(0)[u_1^{(\nu)},u_2^{(\nu)},u_3^{(\nu)},u_4^{(\nu)}]
=O(\nu^{-q})\quad\forall q.
$$
它不可能等于 §3 的正极限，证明定理 1。使用 complex wave packets 合法：实 polynomial identity 的多线性 polarization 可复线性延拓；不需要把复场另立为物理模型。初始方向的高频范数增大也不妨碍论证，它们是零解处的 tangent directions；即使只在任意零解邻域声称函数恒等，其第四导数仍必须相等。$\square$

## 5. 对原 formal interacting 目标的必然结果

当前 [Qn §4](<phin renormalized quantum observable algebra gluing.md>) 的精确定义为
$$
\mathfrak Q_V^{\mathrm{fin}}(O)
=\overline{\operatorname{Alg}_{\star}^{*}
\{\sigma_0\mathcal R_V^q(F):F\in\mathcal P_{\mathrm{loc}}(O)\}}^{(\lambda,\hbar)},
\qquad V=-\frac\lambda{4!}\int g\phi^4.
$$
每个有限 formal jet 来自有限 words，没有额外 spacetime coefficient completion。由 $\mathcal R_V^q(F)=F+O(\lambda)$、$\star=\cdot+O(\hbar)$，任意这类元素的 $(\lambda^0\hbar^0)$ coefficient 在 $\mathcal B_0(O)$ 中。

若 $\mathfrak Q_V^{\mathrm{fin}}(N)\to\mathfrak Q_V^{\mathrm{fin}}(M)$ 满射，晚时生成元 $\sigma_0\mathcal R_V^q(F)$ 必有 early finite-formal-word representative。取其 $(0,0)$ coefficient，得到 $F\in\mathcal B_0(N)$，与定理 1 矛盾。故
$$
\boxed{\mathfrak Q_V^{\mathrm{fin}}(N)\longrightarrow
\mathfrak Q_V^{\mathrm{fin}}(M)\ \text{不是满射。}}
$$
这个失败与 $g$ 是否在早期窗为零无关，也不靠 loop anomaly。保持 classical normalization 的 Wick changes 和 finite renormalization 无法消去这个零阶障碍。给传播再增加正确 contact terms、算到更多 loops 或收小 $\lambda$ 均不能修复它。

## 6. 修复目标需要改变什么

自由完整 Wick 类的 $\tau_\chi^{\otimes4}f_4$ 是合法 early compact distribution kernel，因而定理 1 不与其 time-slice 矛盾。它在 early variables 中包含有限同点插入乘积无法表达的关联核。若要保留 time-slice，应明确加入这些核及其被允许的极限／拓扑；单纯 $(\lambda,\hbar)$-adic completion 不会添加任何新的零阶系数。

已核对的 [Chilian–Fredenhagen §3](https://arxiv.org/html/0802.1642) 使用 **sequentially closed** 的 relative-$S$ algebra；其 free base 是完整 Wick algebra。它还包括 relative $S$ 的多插入系数。两者都是与本笔记 $\mathfrak Q_V^{\mathrm{fin}}$ 不同的数据，不能省略后引用该文的 time-slice 结论。

可评审的后续修复是：以完整 Wick coefficient topology 为 free base，明确 relative-$S$ 多插入的共同 renormalization，并逐系数加入相应 sequential completion；用 compact torus 的 interaction splitting 构造实际 inverse。需要证明该 completion 上的乘积与这些 maps 连续、完整 kernel 闭合、因果／refinement 比较保持它。目标须独立定义，不能把它直接命名为某个未经证明的 Møller map 的像。

这项修复扩大了原路线 D2 的 observable class／completion。本文将它与原来失败的命题分开；不把“建议改类”记为已实现，也不把目标未调整时的整条路线标成完成。

**Verified:** 四相位严格相消、eikonal transport 恒等式、finite propagation 后的支撑分离、精确 KG 能量误差及有限 Leibniz 排除论证；相关 Mathematica residuals 见 [验证记录](<numerics/scalar local structure verification.md>)。四点的最小距离及 conormal conservation 另有代数检查，但证明不依赖有限模态拟合。

**Assumptions:** $2+1$ flat smooth torus、$m>0$、小于绕行时间的目标圆盘；finite-jet local polynomial generators；有限乘加及仅 formal completion；自然局域包含；classical normalization。

**Not verified:** 本 no-go 不证明扩大的 relative-$S$ 类的全阶实现，须另看 [completed relative-S construction](<scalar completed relative-S local structure.md>) 的独立论证及假设；也不能从本 no-go 推断完整 Wick／其他拓扑完成失败。无限或 $\nu$-dependent 插入表达、额外 Poisson closure、带负 $\hbar$ 次数的 saturation 不在本定理的源类中。
