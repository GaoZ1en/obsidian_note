# 引力拼接与关系时间：一个完整可解的最小量子力学模型

2026-09-10

## 1. 模型的结果与范围

取一个两能级系统 $A$ 和一个两能级边界系统 $B$，令

$$
H_A=\omega|1\rangle_A\langle1|,\qquad
H_{B,i}=-\omega|1\rangle_B\langle1|,\qquad
H_{B,o}=+\omega|1\rangle_B\langle1|,\qquad \omega>0.
$$

把界面共同变换规定为规范变换，施加

$$
C=H_A\otimes1+1\otimes H_{B,i}=0.
$$

由任意归一化初态 $|\psi\rangle_A=c_0|0\rangle+c_1|1\rangle$ 和等权的 $B$ 种子态，得到归一化物理态

$$
|\Phi_\psi\rangle=c_0|00\rangle+c_1|11\rangle.
$$

读取 $B$ 的相位时钟

$$
|t\rangle_B=\frac{|0\rangle+e^{i\omega t}|1\rangle}{\sqrt2},
\qquad t\in\mathbb R/T\mathbb Z,\qquad T=\frac{2\pi}{\omega},
$$

则 $A$ 的归一化条件态严格为

$$
\boxed{
|\psi_A(t)\rangle
=\sqrt2\,{}_B\langle t|\Phi_\psi\rangle
=c_0|0\rangle+c_1e^{-i\omega t}|1\rangle
=e^{-itH_A}|\psi\rangle.
}
$$

这是一个有限维、周期性的 Page–Wootters 模型。以下给出其作用量母模型、约束量子化、完整物理态空间、时钟测量、可观测量、两时刻传播、纠缠条件及外边界演化，并用有限 $d$ 能级推广辨认哪些条件是必要的。

**已经建立的是受约束量子力学模型内的结论。** “某个真实引力区域的拼接恰好约化成这个模型”仍需从具体引力作用量导出。这里将引力图像中最少的边界荷结构实现为一个明确的模型假设，不把它当作已证明的引力定理。

## 2. Setup：区域、边界与三种时间

设 $A$ 的外边界与环状区域 $B$ 的内边界相接，$B$ 还保留外边界：

$$
A\ \big|_{\Gamma}\ B\ \big|_{\Gamma_o}\ \text{外部参考系}.
$$

只保留每个区域的一个能量自由度及其相位，舍去空间传播、角向结构及其他界面荷。因此，本模型没有 QFT，也没有把“空间区域有限”推断成“Hilbert 空间有限”。两能级是单独指定的量子模型选择。

为同时处理最小模型和时钟分辨率，先写有限 $d\ge2$ 的统一形式：

$$
\mathcal H_{\mathrm{ext}}=\mathcal H_A\otimes\mathcal H_B,
\qquad \mathcal H_A\simeq\mathcal H_B\simeq\mathbb C^d,
$$

$$
h_A=\sum_{n=0}^{d-1}E_n|n\rangle_A\langle n|,
\quad h_B=\sum_{n=0}^{d-1}E_n|n\rangle_B\langle n|,
\quad E_n=n\omega.
$$

约定 $\hbar=1$，所有算符在有限维全空间上定义且自伴。定义

$$
H_A=h_A,\qquad H_{B,i}=-h_B,\qquad H_{B,o}=h_B,
$$

$$
C=h_A\otimes1-1\otimes h_B,
\qquad H_o=1\otimes h_B.
$$

这里的 $i,o$ 标记作用于同一个 $B$ 空间的两个边界荷，**不代表额外的 $\mathcal H_{B,i}\otimes\mathcal H_{B,o}$ 因子分解**。最小环状区域只有一份能量，内外荷采用相反取向。额外的外边界自由度不是恢复关系时间所必需的。

| 变量 | 含义 | 本模型中的地位 |
| --- | --- | --- |
| $s$ | 界面共同变换的参数，$e^{-isC}$ | 规范参数，取模 $T$ |
| $t$ | 对 $B$ 进行条件化的时钟读数 | 关系时间，取模 $T$ |
| $\tau$ | 保留外边界的演化参数 | 外部参考时间，由 $H_o$ 生成 |

负号 $H_{B,i}=-h_B$ 是本模型规定的对偶荷表示；正能量算符仍为 $h_B\ge0$。这不要求物质具有负能量。真实引力里是否得到此负号，还取决于边界取向、共同演化向量、lapse、边界项及能量参考值，不能只凭一幅嵌套区域图就断言。

## 3. 一个产生该约束的作用量母模型

### 3.1 先把共同界面相位变换规范化

用两个谐振子相平面作经典母模型。在 $I_A,I_B>0$ 的局部作用量—角坐标中取

$$
\{\theta_A,I_A\}=\{\theta_B,I_B\}=1,
\qquad \theta_A,\theta_B\in\mathbb R/2\pi\mathbb Z.
$$

相平面原点 $I=0$ 处角坐标失效，应改用笛卡尔坐标；这不影响振子量子化。定义一阶作用量

$$
S=\int d\tau\left[
I_A\dot\theta_A+I_B\dot\theta_B
-\lambda(\tau)\,\omega(I_A-I_B)-\omega I_B
\right].
$$

这个作用量也可以按边界源理解。拼接前，$A$ 的边界源、$B$ 的内边界源与外边界源分别耦合到 $\omega I_A,-\omega I_B,+\omega I_B$。拼接时把两个界面源识别为同一个 $\lambda$，并允许对它变分；外边界源仍固定为 $1$，就得到上式。若共同界面源只是一个始终固定的外部函数，则不能通过对它变分得到约束。因此，“识别界面”与“释放共同界面源为规范变量”是两个需要明确的步骤。

这里 $\lambda$ 是界面规范场；$\tau$ 的外边界 lapse 固定为 $1$，最后一项是外边界 Hamiltonian。变分取局部正则端点条件，并令规范参数在时间端点消失。规范变换为

$$
\delta_s\theta_A=\omega s,\qquad
\delta_s\theta_B=-\omega s,\qquad
\delta_s I_A=\delta_s I_B=0,\qquad
\delta_s\lambda=\dot s.
$$

代入得到

$$
\delta_s L
=\omega(I_A-I_B)\dot s-\omega(I_A-I_B)\dot s=0.
$$

因此，将原本的共同界面参考相位提升为局域规范冗余，会要求引入 $\lambda$。对它变分得到真正的相空间约束

$$
C_{\mathrm{cl}}=\omega(I_A-I_B)=0.
$$

这一步说明本模型的约束怎样由作用量得到。选择把哪一种边界变换规范化仍是 setup 的输入；这里没有从 Einstein 方程推出该选择。

完整的局部运动方程为

$$
\dot I_A=\dot I_B=0,\qquad
\dot\theta_A=\lambda\omega,\qquad
\dot\theta_B=(1-\lambda)\omega,
\qquad I_A=I_B.
$$

若把 $\lambda$ 也作为正则坐标，还有主约束 $p_\lambda=0$；其保持产生 $C_{\mathrm{cl}}=0$，二者为 first class，没有新的约束。

### 3.2 约化后的自由度和外边界能量

在 $I_A=I_B=I>0$ 上，规范不变量为

$$
\Theta=\theta_A+\theta_B\pmod{2\pi}.
$$

辛势与 Hamiltonian 约化为

$$
I_A\,d\theta_A+I_B\,d\theta_B=I\,d\Theta,
\qquad H_{\mathrm{red}}=\omega I,
$$

$$
S_{\mathrm{red}}=\int d\tau\,[I\dot\Theta-\omega I],
\qquad \dot\Theta=\omega.
$$

两个正则对经过一个 first-class 约束和商约化，留下一个正则对。原点是规范作用的固定点，不能把上面的 $I>0$ 坐标描述宣称为处处自由的光滑商。

在固定 $\tau$ 的规范轨道上，用 $\theta_B=-\omega t$ 作为时钟截面，得到

$$
\theta_A\big|_{\theta_B=-\omega t}=\Theta+\omega t.
$$

改变 $t$ 就是在比较不同的关系可观测量；沿规范轨道本身没有改变物理态。由于角坐标周期，截面只区分一周期内的读数。

### 3.3 量子化与有限能级选择

先对两个完整振子作 Dirac 量子化，取正规序能量 $h_A=\omega N_A$、$h_B=\omega N_B$。两侧相同的零点能在 $C$ 中抵消，外边界常数只产生整体相位。于是

$$
\widehat C=\omega(N_A-N_B),\qquad
\widehat H_o=\omega N_B.
$$

再选择 $0\le N_A,N_B\le d-1$ 的谱子空间，得到第 2 节的有限模型。这个子空间在 $C,H_o$ 及本文构造的有限矩阵关系可观测量下封闭，因此没有因演化造成的截断误差。

这不是把振子的正则对易关系精确实现于有限维，也不是说能级截断由约束自动选出。完整振子是作用量母模型；有限 $d$ 模型是选定能量带之后的独立、精确可解模型。最小非平凡选择是 $d=2$，而 $d=1$ 只有整体相位。

## 4. 施加约束：物理 Hilbert 空间与内积

在基 $|n,m\rangle=|n\rangle_A|m\rangle_B$ 中，

$$
C|n,m\rangle=\omega(n-m)|n,m\rangle.
$$

因此零荷子空间完整地等于

$$
\boxed{\mathcal H_{\mathrm{phys}}=\ker C
=\operatorname{span}\{|n,n\rangle:0\le n<d\}.}
$$

定义紧群平均

$$
P=\frac1T\int_0^T ds\,e^{-isC}.
$$

逐个本征向量积分：

$$
\frac1T\int_0^T ds\,e^{-i\omega(n-m)s}=\delta_{nm},
\qquad
P=\sum_{n=0}^{d-1}|n,n\rangle\langle n,n|.
$$

立即得到

$$
P=P^\dagger=P^2,\qquad CP=PC=0,\qquad
\operatorname{rank}P=d,\qquad
\ker P=\operatorname{span}\{|n,m\rangle:n\ne m\}.
$$

有限维物理内积就是 $\mathcal H_{\mathrm{ext}}$ 限制到 $\ker C$ 的内积，也可写为

$$
\langle\eta(\chi),\eta(\zeta)\rangle_{\mathrm{phys}}
=\langle\chi|P|\zeta\rangle_{\mathrm{ext}},\qquad \eta(\chi)=P\chi.
$$

若把左式从种子空间定义，须先商去 $\ker P$；约束态已经群不变，不再额外除一次群体积。

定义等距嵌入

$$
V:\mathbb C^d\longrightarrow\mathcal H_{\mathrm{phys}},\qquad
V|n\rangle=|n,n\rangle.
$$

于是 $V^\dagger V=1$、$VV^\dagger=P$。所有物理密度算符唯一写成

$$
\rho_{\mathrm{phys}}=VrV^\dagger
=\sum_{n,m}r_{nm}|n,n\rangle\langle m,m|,
\qquad r\ge0,\quad\operatorname{Tr}r=1.
$$

对密度矩阵的约束应是 $\rho_{\mathrm{phys}}=P\rho_{\mathrm{phys}}P$，等价于 $C\rho_{\mathrm{phys}}=\rho_{\mathrm{phys}}C=0$；只有 $[C,\rho]=0$ 不足以选出零荷空间。

有限模型还允许精确的离散求和：

$$
P=\frac1d\sum_{k=0}^{d-1}e^{-ikTC/d}.
$$

原因是 $n-m$ 介于 $-(d-1)$ 与 $d-1$，只有零差能被 $d$ 整除。若引入更多能级，差值为 $d$ 的非零荷会混入，这个 $d$ 点公式就不再等于零荷投影。

## 5. 从直乘种子到物理态：相干投影的作用

取

$$
|\psi\rangle_A=\sum_n c_n|n\rangle_A,\qquad
|\alpha\rangle_B=\sum_n\alpha_n|n\rangle_B,
\qquad\sum_n|c_n|^2=\sum_n|\alpha_n|^2=1.
$$

相干群平均给出

$$
|\widetilde\Phi\rangle
=P|\psi,\alpha\rangle
=\sum_n c_n\alpha_n|n,n\rangle,
\qquad q=\|\widetilde\Phi\|^2=\sum_n|c_n\alpha_n|^2.
$$

只在 $q>0$ 时能归一化为物理态。等权种子

$$
|\alpha_0\rangle=\frac1{\sqrt d}\sum_n|n\rangle
$$

满足

$$
|\widetilde\Phi\rangle=\frac1{\sqrt d}V|\psi\rangle,
\quad q=\frac1d,
\quad |\Phi_\psi\rangle=V|\psi\rangle.
$$

因此，每个物理纯态都能由同一个等权时钟种子与适当的 $A$ 初态获得；约束只关联能量，并不决定系数 $c_n$。

对任意 $A$ 初态 $\rho$，定义 $D_\alpha=\sum_n\alpha_n|n\rangle\langle n|$，则

$$
P(\rho\otimes|\alpha\rangle\langle\alpha|)P
=V D_\alpha\rho D_\alpha^\dagger V^\dagger,
$$

$$
q=\operatorname{Tr}(D_\alpha\rho D_\alpha^\dagger),\qquad
r=\frac{D_\alpha\rho D_\alpha^\dagger}{q}.
$$

不等权种子实施能量过滤；它不破坏后续条件态的幺正演化，但一般改变要被演化的初态。若某个 $\alpha_n=0$，该能级的信息完全丢失。所有 $\alpha_n\ne0$ 只保证代数上的可逆过滤，不保证逆过滤能以确定性量子操作实现。

### 相干群平均不等于统计平均

必须区分

$$
\rho\longmapsto\frac{P\rho P}{\operatorname{Tr}(P\rho)}
$$

与遗忘规范参数的 twirling：

$$
\mathcal T(\rho)=\frac1T\int_0^T ds\,
e^{-isC}\rho e^{isC}.
$$

前者选出零荷振幅并保留其相干性；后者仅消除不同总荷扇区间的相干性，保留所有扇区的概率。这里 $e^{-isC}$ 是局域幺正算符的直乘，所以 twirling 还不能从可分态制造纠缠。

例如 $d=2$，$|+\rangle=(|0\rangle+|1\rangle)/\sqrt2$，

$$
P|+,+\rangle=\frac12(|00\rangle+|11\rangle),
$$

归一化后是 Bell 历史态；而

$$
\mathcal T(|+,+\rangle\langle+,+|)
=\frac14\left[
(|00\rangle+|11\rangle)(\langle00|+\langle11|)
+|01\rangle\langle01|+|10\rangle\langle10|
\right]
$$

在 $C\ne0$ 空间仍有 $1/2$ 的权重。它不满足物理支撑条件。

在实验室，$q$ 可以是测量总荷后选择零结果的成功概率；在 Dirac 量子化中，$P$ 是定义物理态的映射，$q$ 只是种子的投影范数。不能由此断言引力拼接在外部时间内以概率 $1/d$ 发生，或是一段真实的纠缠生成动力学。

## 6. 有限时钟的 POVM 与条件态

### 6.1 时钟态、归一化和分辨率

取

$$
|t\rangle=e^{-itH_{B,i}}|\alpha_0\rangle
=\frac1{\sqrt d}\sum_{n=0}^{d-1}e^{iE_nt}|n\rangle_B.
$$

定义正算符值测量

$$
E_B(dt)=F(t)dt,\qquad F(t)=\frac dT|t\rangle\langle t|,
\qquad \int_0^T F(t)dt=1_B.
$$

协变性为

$$
e^{-isH_{B,i}}F(t)e^{isH_{B,i}}=F(t+s).
$$

相邻读数并不连续正交。令 $\Delta=t'-t$，则

$$
\langle t|t'\rangle
=\frac1d\sum_{n=0}^{d-1}e^{in\omega\Delta}
=e^{i(d-1)\omega\Delta/2}
\frac{\sin(d\omega\Delta/2)}{d\sin(\omega\Delta/2)},
$$

分母为零时取原有限和的连续极限。离散时刻 $t_k=kT/d$ 给出 $d$ 个正交钟态。

这说明本时钟有 $d$ 个可完全区分的等间隔相位读数，其重叠核尺度约为 $T/d$；不能把这个尺度直接当成所有估计方案的普适精度下界。连续 POVM 仍然合法，但一次读数不能无误地区分任意邻近时刻，也无法区分 $t$ 与 $t+T$。

整个构造不要求存在自伴时间算符 $\widehat t$ 满足 $[\widehat t,H_{B,i}]=i1$。有限维中对该式取迹会得到 $0=id$，所以这样的正则共轭对不可能存在；相位 POVM 避开了这个不相容要求。

### 6.2 纯态与混态的精确演化

对归一化物理态 $V|\psi\rangle$，

$$
{}_B\langle t|V|\psi\rangle
=\frac1{\sqrt d}\sum_n c_ne^{-iE_nt}|n\rangle_A
=\frac1{\sqrt d}U(t)|\psi\rangle,
\quad U(t)=e^{-ith_A}.
$$

由于使用的 POVM 密度是 $d|t\rangle\langle t|/T$，时钟读数概率密度为

$$
p(t)=\operatorname{Tr}[(1\otimes F(t))\rho_{\mathrm{phys}}]=\frac1T.
$$

混态计算同样直接：

$$
\sigma_A(t)
=\operatorname{Tr}_B[(1\otimes F(t))VrV^\dagger]
=\frac1T\sum_{n,m}r_{nm}e^{-i(E_n-E_m)t}|n\rangle\langle m|.
$$

因此

$$
\boxed{\rho_A(t)=\frac{\sigma_A(t)}{p(t)}=U(t)rU(t)^\dagger,}
\qquad
i\partial_t\rho_A(t)=[h_A,\rho_A(t)].
$$

写作 $(1\otimes F)\rho$ 的偏迹等于用 $F^{1/2}$ 在 $B$ 两侧夹乘后再偏迹，因此确实是正算符。这描述联合测量中的条件统计；关系可观测量的规范不变表述见第 9 节。

这里没有使用 $\langle t|t'\rangle=\delta(t-t')$，也没有大 $d$ 或半经典近似。有限能量支撑与协变 POVM 已足以给出精确的周期演化。

### 6.3 历史展开及物理机制

等距编码还可写成

$$
V|\psi\rangle
=\frac{\sqrt d}{T}\int_0^T dt\,
U(t)|\psi\rangle_A\otimes|t\rangle_B
=\frac1{\sqrt d}\sum_{k=0}^{d-1}
U(t_k)|\psi\rangle_A\otimes|t_k\rangle_B.
$$

连续式是过完备展开，不能把每个直乘项都当作彼此排斥的分支。离散式使用正交钟态，可以用通常的条件概率解释。两者都不需要额外假设“观察者只能感受到某个直乘分量”。

中间的机制可以逐步说明：约束选择相同的正能量标签 $n$；不同 $n$ 之间原有的相干性留在 $A$ 与 $B$ 的关联中；时钟 POVM 在这些能量之间作相干读出；其矩阵元 $e^{-iE_nt}$ 把关联转换成 $A$ 的相对相位。未读时钟时，

$$
\operatorname{Tr}_B\rho_{\mathrm{phys}}=\sum_n r_{nn}|n\rangle\langle n|,
$$

而平均所有时钟结果也给出同一状态。条件化没有改变这个无条件结果。

## 7. 哪些条件是必要的，哪些不是

### 7.1 谱匹配与周期投影

对任意有限维的自伴 $H_A,H_{B,i}$，无论是否等间距，

$$
\ker(H_A\otimes1+1\otimes H_{B,i})
=\bigoplus_{E+\epsilon=0}
\mathcal H_{A,E}\otimes\mathcal H_{B,i,\epsilon}.
$$

至少有一个匹配能量才有非零物理态；至少两个不同的匹配 $A$ 能量及它们之间的相干性，才可能出现本模型意义下非平凡的时间依赖。恢复整个指定 $A$ Hilbert 空间的任意初态，需要每个 $A$ 能量在时钟侧都有匹配。

周期积分 $T^{-1}\int_0^T e^{-isC}ds$ 是零荷正交投影的充要条件为：$C$ 的每个非零本征值 $c$ 都满足 $cT\in2\pi\mathbb Z\setminus\{0\}$。本模型通过整数谱实现它。任意给一个积分上限 $T$ 并不够。

不满足共同周期时，有限维中仍可直接用零谱投影，或采用

$$
P_0=\lim_{L\to\infty}\frac1{2L}\int_{-L}^Lds\,e^{-isC}.
$$

这是归一化平均的极限；不能把未归一化的 $\int_{\mathbb R}ds$ 当成有限矩阵投影。相应的时钟参数空间和归一化 POVM 也必须重新建立，不能继续无条件使用本模型的一周期公式。

### 7.2 所有协变时钟：演化与读出保真度不同

在第 2 节的非简并谱上，一个一般的协变 POVM 密度写成

$$
F(t)=e^{ith_B}F_0e^{-ith_B},\qquad
F_0\ge0,\qquad (F_0)_{nn}=\frac1T.
$$

这些条件恰好保证正性和一周期归一化。定义

$$
G_{nm}=T(F_0)_{mn}.
$$

矩阵 $G\ge0$、$G_{nn}=1$，设 $\circ$ 表示逐元素乘积，则同样的偏迹计算给出

$$
\boxed{\rho_A^F(t)=U(t)(r\circ G)U(t)^\dagger,\qquad p(t)=1/T.}
$$

所以每个这样的协变时钟，都使其读出的初态 $r\circ G$ 严格幺正演化。一般时钟的代价是一次固定的相干性过滤，而不是自动产生随读数增长的非幺正演化。

在这个明确的非简并、全谱匹配 setup 中，条件可以完整列出：

| 所要求的性质 | 充要条件 |
| --- | --- |
| 给定种子投影后存在归一化物理态 | $q>0$ |
| 对给定 $r$，读出具有非平凡时间依赖 | 存在 $n\ne m$ 使 $r_{nm}G_{nm}\ne0$ |
| 对每个物理 $r$，读出恰为 $U(t)rU(t)^\dagger$ | $G_{nm}=1$ 对所有 $n,m$ 成立 |
| 对每个纯 $r$，条件态仍为纯态 | $G$ 为秩一；此时仅施加一个固定对角幺正相位 |
| 等权标准时钟下，对每个输入 $\rho$ 原样恢复初态 | $D_\alpha=e^{i\chi}1/\sqrt d$ |

最后一条允许对种子和读出一起校准时，可放宽为

$$
\alpha_n=\frac{e^{ia_n}}{\sqrt d},\qquad
G_{nm}=e^{-i(a_n-a_m)}.
$$

它恰好抵消 $D_\alpha$ 的相位。等价地，制备种子和秩一时钟种子取同一组能量相位。若仅允许一个固定的对角幺正校准，则平坦模长和秩一读出就足够。

这些必要性可由能级投影、两能级混合态和 $|n\rangle+|m\rangle$ 的相干叠加逐一测试得到：不同模长会改变混合态权重；$G_{nm}\ne1$ 会改变该对能级的相干性；秩大于一的 $G$ 对全支撑纯态产生混态。这里没有声称协变性是在所有任意测量族中的必要条件；上表讨论的是已声明的协变 POVM 类。

若谱有简并，时钟的时间平均保留整个简并块，归一化条件相应变为 $(F_0)_{EE}=1_E/T$；不能沿用“每个对角元等于 $1/T$ 就够”的非简并判据。一个秩一 seed 也不能覆盖维数大于一的完整简并块。本模型已明确排除此情形。

### 7.3 有限读数窗口

用固定的周期概率核 $w(u)$ 描述读数误差，$w\ge0$、$\int_0^T w(u)du=1$，定义

$$
F_w(t)=\int_0^Tdu\,w(u)F(t-u).
$$

得到

$$
[\rho_A^w(t)]_{nm}
=r_{nm}e^{-i(E_n-E_m)t}\widehat w(E_n-E_m),\qquad
\widehat w(\nu)=\int_0^Tdu\,w(u)e^{i\nu u}.
$$

宽度为 $\Delta\le T$、以零为中心并周期延拓的均匀读数窗口给出

$$
\widehat w(\nu)=\operatorname{sinc}(\nu\Delta/2),\qquad
\operatorname{sinc}x=\frac{\sin x}{x},\quad \operatorname{sinc}0=1.
$$

它降低干涉可见度，但仍是固定过滤后的幺正轨道。若误差核随演化时间变化，或实际测量使时钟扰动累积，那是需要另设动力学的不同模型。

## 8. 两能级模型的全部矩阵与可测信号

按 $|00\rangle,|01\rangle,|10\rangle,|11\rangle$ 排序，

$$
C=\operatorname{diag}(0,-\omega,\omega,0),\quad
P=\operatorname{diag}(1,0,0,1),\quad
H_o=\operatorname{diag}(0,\omega,0,\omega).
$$

所有物理密度矩阵都写成

$$
\rho_{\mathrm{phys}}=
\begin{pmatrix}
p&0&0&z\\
0&0&0&0\\
0&0&0&0\\
z^*&0&0&1-p
\end{pmatrix},\qquad
0\le p\le1,\quad |z|^2\le p(1-p).
$$

标准钟的 POVM 密度为

$$
F(t)=\frac1T\begin{pmatrix}
1&e^{-i\omega t}\\ e^{i\omega t}&1
\end{pmatrix}.
$$

条件态为

$$
\rho_A(t)=\begin{pmatrix}
p&ze^{i\omega t}\\ z^*e^{-i\omega t}&1-p
\end{pmatrix}.
$$

一般协变时钟可写成

$$
F_g(t)=\frac1T\begin{pmatrix}
1&g^*e^{-i\omega t}\\ ge^{i\omega t}&1
\end{pmatrix},\qquad |g|\le1,
$$

它将上式中的 $z$ 换成 $gz$。因此这个模型的全部单时刻关系统计由 $p,z,g,\omega$ 决定。

选择最直观的 $p=1/2,z=1/2,g=1$，即

$$
|\Phi_+\rangle=\frac{|00\rangle+|11\rangle}{\sqrt2},\qquad
|\psi_A(t)\rangle=\frac{|0\rangle+e^{-i\omega t}|1\rangle}{\sqrt2},
$$

测量 $A$ 的 $X$ 基得到

$$
\boxed{p(+\mid t)=\frac{1+\cos\omega t}{2},\qquad
p(-\mid t)=\frac{1-\cos\omega t}{2}.}
$$

联合概率密度是 $p(+,t)=p(+\mid t)/T$。在 $t=0$ 条件结果是 $|+\rangle$，在 $t=T/2$ 是 $|-\rangle$，在 $t=T$ 回到 $|+\rangle$。未读时钟时 $\rho_A=1/2$，$p(+)=1/2$。

均匀窗口误差将 $\cos\omega t$ 的系数乘上 $\operatorname{sinc}(\omega\Delta/2)$。读数覆盖整个周期时该信号消失。

## 9. 规范不变的可观测量与两时刻传播

### 9.1 条件化等价于物理空间上的矩阵代数

单独的钟效应 $1\otimes F(t)$ 通常不与 $C$ 对易。不能把它说成在物理空间上独立测量的局域 Dirac observable。对标准秩一钟，定义约化映射

$$
R_t=\sqrt d(1_A\otimes{}_B\langle t|)P=U(t)V^\dagger.
$$

于是

$$
R_tR_t^\dagger=1_A,\qquad R_t^\dagger R_t=P.
$$

对任意 $A$ 上的算符 $O$，定义“钟为 $t$ 时的 $O$”为

$$
\boxed{\mathcal O_t
=R_t^\dagger O R_t
=dP(O\otimes|t\rangle\langle t|)P
=VU(t)^\dagger OU(t)V^\dagger.}
$$

它满足

$$
[C,\mathcal O_t]=0,\qquad
\operatorname{Tr}_{\mathrm{phys}}(\rho_{\mathrm{phys}}\mathcal O_t)
=\operatorname{Tr}_A(\rho_A(t)O).
$$

而且在物理空间上

$$
\mathcal O_t\mathcal Q_t=\mathcal{(OQ)}_t,\qquad
\mathcal{1}_t=P=1_{\mathrm{phys}},\qquad
\mathcal O_t^\dagger=\mathcal{(O^\dagger)}_t.
$$

因此每个固定读数给出完整物理可观测代数 $M_d(\mathbb C)$ 的一种表示。非对角元素由联合跃迁 $|n,n\rangle\langle m,m|$ 实现；只允许 $O_A\otimes1$ 且要求其规范不变，则 $[O_A,h_A]=0$，只能看到能量对角部分。

这也限定了“我们在 $A$ 内看到时间”的操作含义：必须能以 $B$ 作为参考定义或实现联合关系测量。仅有物理态及一个只读局域能量的实验者，并不能自动获得相位时钟。这里没有用规范选择替代实际的读出资源。

### 9.2 两时刻传播与测量更新

不同截面之间的传播子为

$$
\boxed{K(t_2,t_1)=R_{t_2}R_{t_1}^\dagger
=U(t_2-t_1).}
$$

所以

$$
K(t_3,t_2)K(t_2,t_1)=K(t_3,t_1),\qquad
K(t_1,t_2)=K(t_2,t_1)^\dagger.
$$

仅有单时刻 POVM 不会自动指定连续两次测量的扰动。若在关系时刻 $t_1,t_2$ 明确选择通常的量子测量 instrument，Kraus 算符分别为 $M_a,N_b$，则其物理实现取

$$
\mathcal M_{a,t_1}=R_{t_1}^\dagger M_aR_{t_1},\qquad
\mathcal N_{b,t_2}=R_{t_2}^\dagger N_bR_{t_2}.
$$

它们保持物理空间，并在各自结果求和时满足物理空间上的完备性。由乘法得到顺序概率

$$
p(a,b)=\operatorname{Tr}\left[
N_bU_{21}M_a\rho_A(t_1)M_a^\dagger U_{21}^\dagger N_b^\dagger
\right],\qquad U_{21}=U(t_2-t_1).
$$

这恢复标准量子力学的顺序测量规则；所需的测量更新已经明确指定，不把两次简单的钟态重叠冒充传播子。这个周期模型本身也没有记录“这是第几圈”的存储器。

## 10. 纠缠在这里究竟起什么作用

### 10.1 纯态

对 $|\Phi_\psi\rangle=\sum_nc_n|n,n\rangle$，扩展空间分解下的 Schmidt 权重是 $|c_n|^2$，故

$$
S_A=S_B=-\sum_n|c_n|^2\log|c_n|^2.
$$

在本模型的非简并谱上，纯态可分当且仅当只有一个 $c_n\ne0$；这时条件演化只有不可测的整体相位。非平凡纯态关系演化要求至少两个能量相干，因此要求该扩展分解下的纠缠。

约束并不强迫所有物理态都纠缠：$|n,n\rangle$ 就是反例，也没有理由强迫最大纠缠或选定某组 $c_n$。

### 10.2 所有物理混态

对 $\rho_{\mathrm{phys}}=\sum r_{nm}|n,n\rangle\langle m,m|$，在 $B$ 上作部分转置：

$$
\rho_{\mathrm{phys}}^{T_B}
=\sum_{n,m}r_{nm}|n,m\rangle\langle m,n|.
$$

每个 $|n,n\rangle$ 给出本征值 $r_{nn}$；每对 $n<m$ 的子空间 $\{|n,m\rangle,|m,n\rangle\}$ 给出 $\pm|r_{nm}|$。所以只要有一个非零的非对角元，部分转置就有负本征值，状态必然纠缠。反之，所有非对角元都为零时，状态显然是 $|n,n\rangle$ 的可分混合。

因此，在已声明的物理态族中严格成立

$$
\boxed{
\rho_{\mathrm{phys}}\text{ 纠缠}
\ \Longleftrightarrow\ \exists n\ne m:r_{nm}\ne0
\ \Longleftrightarrow\ [h_A,r]\ne0
\ \Longleftrightarrow\ \rho_A(t)\text{ 非恒定}
}
$$

最后一个等价使用标准的完整相干读出 $G_{nm}=1$。一般读出还要求 $r_{nm}G_{nm}\ne0$；例如 $F(t)=1_B/T$ 完全不读相位，即使存在 Bell 纠缠也没有可见关系演化。

两能级情形的 negativity 是 $|z|$，$X$ 基干涉信号为 $p(+\mid t)=1/2+\operatorname{Re}(ze^{i\omega t})$。这给出模型内直接的纠缠—干涉关系。

以上纠缠均相对于选定的 $\mathcal H_A\otimes\mathcal H_B$ 扩展分解而言。物理空间本身只有 $d$ 维，没有因此得到两个独立的局域物理矩阵代数。它不是不依赖分解的“时间由纠缠产生”定理。

## 11. 外边界 Hamiltonian 为什么没有被约束消掉

本模型满足

$$
[H_o,C]=0,\qquad V^\dagger H_oV=h_A.
$$

因此外边界演化保持物理空间：

$$
|\Phi_\psi(\tau)\rangle=e^{-i\tau H_o}V|\psi\rangle
=VU(\tau)|\psi\rangle.
$$

同一时钟读数上的条件态为

$$
\boxed{\rho_A(t;\tau)=U(t+\tau)rU(t+\tau)^\dagger.}
$$

这里的加号由 $H_{B,i}=-h_B$、$|t\rangle=e^{ith_B}|\alpha_0\rangle$ 和 $H_{B,o}=+h_B$ 共同决定。内界面规范平移 $e^{-isC}$ 保持物理态完全不变；外边界演化 $e^{-i\tau H_o}$ 一般改变它。二者不同。

特别地，由于 $h_A$ 非简并，若另外要求

$$
[H_o,\rho_{\mathrm{phys}}]=0,
$$

就得到 $r_{nm}=0$ 对所有 $n\ne m$，本模型的非平凡条件演化随之消失。故本文中的“静止历史态”只能指对界面约束 $C$ 不变，不能同时无条件宣称对非零外边界 Hamiltonian 也静止。

约束本身也不唯一决定外边界动力学。若一个只作用于 $B$ 的自伴算符要保持整个匹配子空间，则它必须在 $|n\rangle_B$ 基中对角，可写成有限谱上的 $f(h_B)$。它在物理空间中成为 $f(h_A)$。选择 $f(E)=E$ 是最小模型的额外输入；若 $f(E)=\kappa E+E_0$，条件态依赖 $t+\kappa\tau$；一般非线性 $f$ 则不能用一次统一的时钟平移表示外部演化。

所以 $H_A+H_{B,i}=0$ 不意味着整个有外边界的系统 Hamiltonian 为零。若要讨论完全封闭宇宙，还需改变 setup，加入额外约束或外部时钟，不能直接删除本节的区别。

## 12. 两个容易破坏模型的改动

### 12.1 把内边界荷也写成正能量

若改为 $C_+=h_A\otimes1+1\otimes h_B$，则

$$
\ker C_+=\operatorname{span}\{|0,0\rangle\}.
$$

两能级历史的激发部分消失。若两者严格正定，零荷空间甚至为空。统一能量参考值后必须检查谱匹配，不能用“约束总能量为零”替代它。

### 12.2 任意小的失配也可能改变精确约束空间

取 $d=2$，把 $B$ 的正能量改成 $h_B=\operatorname{diag}(0,\omega+\delta)$，$0<|\delta|\ll\omega$，则

$$
C_\delta=\operatorname{diag}(0,-\omega-\delta,\omega,-\delta),
\qquad\ker C_\delta=\operatorname{span}\{|00\rangle\}.
$$

所以精确零荷投影不对任意谱扰动连续保持维数。有限时长平均会对失配能量给出 sinc 权重，但不再满足 $CP=0$ 与 $P^2=P$；它是近似约束的另一模型，必须单独给出误差界和物理理由。

本模型也未加入 $A$ 与 $B$ 的独立相互作用项。若它改变约束或不保持物理子空间，本文的匹配与传播证明需要重新检查；不能只把这种变化称为“钟不理想”后沿用原结果。

## 13. 最小嵌套一致性检查

为检验嵌套区域语言，增加一层相同能谱的环状区域 $D$，仅在本节使用第三个因子。定义

$$
C_1=h_A-h_B,\qquad C_2=h_B-h_D,\qquad H_{\mathrm{out}}=h_D,
$$

省略各项的单位算符。二者对易，因此其零荷投影满足

$$
P_1P_2=P_2P_1
=\sum_n|n,n,n\rangle\langle n,n,n|.
$$

先拼哪一个界面都得到同一个 $d$ 维物理空间；相应嵌入为 $V_3|n\rangle=|n,n,n\rangle$。这只是所给 Abelian 有限模型内的顺序一致性，没有推及一般引力约束代数。

对纯态 $\sum_nc_n|n,n,n\rangle$，同时读取 $B,D$ 的钟态得到

$$
d\,{}_B\langle t_B|{}_D\langle t_D|V_3|\psi\rangle
=U(t_B+t_D)|\psi\rangle.
$$

但是只读取 $B$ 而把 $D$ 丢弃，$A$ 的条件态成为 $\sum_n|c_n|^2|n\rangle\langle n|$，相干性消失。未读出的 $D$ 保留了能量记录。

这说明选择“把外部系统当成钟”时，需要说明读取的是整个互补系统的哪一组相干变量。随意附加一个携带能量记录的不可访问环境，并不自动保留原先的关系时间读出。

## 14. 回到 Wu 的引力图像

本模型给出了以下已完成的逻辑链：

$$
\text{选定并规范化共同界面相位}
\ \Longrightarrow\ C=h_A-h_B=0
\ \Longrightarrow\ \mathcal H_{\mathrm{phys}}=\operatorname{span}|n,n\rangle
\ \Longrightarrow\ \text{相干时钟读出}
\ \Longrightarrow\ \rho_A(t)=e^{-ith_A}r e^{ith_A}.
$$

约束把能量标签关联起来，输入相干性决定是否存在可见历史，时钟效应把联合相干性转成条件态的相位。约束、相干性和读出三者缺一不可；任意纠缠、任意钟，或任意群统计平均都不够。

若要把它落实为具体的有限引力区域，需要从所选作用量建立以下对应：

| 本文的输入 | 引力模型中须实际得到的对象 |
| --- | --- |
| 一个共同界面 $U(1)$ 荷 | 指定边界条件下可积的 Hamiltonian 荷及其生成向量；真实时间平移未必是紧群 |
| $h_A-h_B=0$ | 包含边界项、共同 lapse 与参考能量的匹配方程，以及其余约束的相容消去 |
| $\mathcal H_A\otimes\mathcal H_B$ | 明确的扩展态空间和界面参考变量，而非预设物理 Hilbert 空间因子分解 |
| $H_{B,o}=h_B$ | 约化后保留下来的外边界荷与真实 Hamiltonian |
| 可用的相位 POVM | 可解释、可操作的边界时钟变量及它的读出方式 |

这里没有引力场方程、反作用或约束代数异常的计算，也没有证明特定边界条件下这些对象必然存在。后续真正与一般 Page–Wootters 构造有区别的任务，是从一个具体引力作用量完成这些对应，而不是再次演示已经成立的有限维条件化公式。

抽象的静止态与时钟条件演化机制来自 Page–Wootters；与 Dirac observable、量子约化的联系已有系统论述。有限周期钟也有专门处理。引力有限边界参考场与关系薛定谔方程已有邻近工作，因此本文不作新颖性声明。

## 15. 来源与验证边界

本稿从用户引用的“引力纠缠时间构想”讨论抽取问题，所有本模型公式在本稿中重新推导。下列文献用于定位已有结构；核对了官方摘要与书目信息，没有把文献的引力结论当作本模型假设的证明。

1. Don N. Page and William K. Wootters, *Evolution without evolution: Dynamics described by stationary observables*, Phys. Rev. D **27**, 2885 (1983), [DOI 与官方摘要](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.2885)。静止态中的内部时钟条件动力学。
2. Philipp A. Höhn, Alexander R. H. Smith and Maximilian P. E. Lock, *The Trinity of Relational Quantum Dynamics*, [arXiv:1912.00033](https://arxiv.org/abs/1912.00033)。关系可观测量、Page–Wootters 与量子约化的联系，包括协变 POVM。
3. Leonardo Chataignier, Philipp A. Höhn, Maximilian P. E. Lock and Fabio M. Mele, *Relational Dynamics with Periodic Clocks*, [arXiv:2409.06479](https://arxiv.org/abs/2409.06479)。周期钟的关系演化与一周期描述的边界。
4. Viktoria Kabel, Časlav Brukner and Wolfgang Wieland, *Quantum Reference Frames at the Boundary of Spacetime*, [arXiv:2302.11629](https://arxiv.org/abs/2302.11629)。有限边界引力的二阶微扰分析，把边界模作为参考系并得到相应量子约束。

Verified: Mathematica 共 85 项精确检查通过：经典局部规范抵消与约化、$d=2,3,4,5,6$ 的投影/核维数/时钟/传播、一般两能级混态及协变 POVM、种子过滤、关系算符、部分转置、外边界演化、谱失配及两层拼接。通用有限 $d$ 结论依赖正文逐项证明，不把有限维样本检查当成所有 $d$ 的证明。详见 [验证记录](verification.md)。

Assumptions: $\hbar=1$；有限非简并匹配整数谱；选定的界面相位规范对称性；$C=h_A-h_B$；物理态支撑于 $\ker C$；指定协变时钟 POVM；外边界 Hamiltonian 按 setup 选择；顺序测量使用第 9 节指定的 instrument。

Not verified: 从具体引力作用量导出该截断、完整引力荷代数及量子异常、非紧非周期时钟、实际装置的测量反作用与累计误差。本稿的有限量子力学分析已经闭合；这些是更强物理实现的边界。
