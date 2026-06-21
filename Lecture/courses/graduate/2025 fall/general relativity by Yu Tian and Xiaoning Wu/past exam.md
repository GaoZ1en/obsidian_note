# exam 1

1. 半径为...$\displaystyle{M_{\odot}}$的中子星，其表面发出频率为$\displaystyle{5.1\times 10^{14}\mathrm{Hz}}$的光，求出因引力红移效应无穷远处观测者测得的频率。（取$\displaystyle{GM=\dots M_{\odot}}$）
*sol*.
设中子星质量为$\displaystyle{M}$，半径为$\displaystyle{R}$，发射频率为$\displaystyle{\nu _{e}}$，无穷远处观测到的频率为$\displaystyle{\nu _{\infty}}$。根据引力红移公式，有：

$$\begin{align}
\nu _{\infty} & =\nu _{e}\sqrt{ g_{tt} } \\
 & =\nu _{e}\sqrt{ 1-\frac{2GM}{R} }
\end{align}$$

2.
    1. 写出广义相对论三大实验验证
*sol*.
- 水星近日点进动
- 光线偏折
    - solar eclipse observation, Eddington 1919
- 引力红移
    1. $\displaystyle{\xi _{\mu}}$为Killing矢量场，$\displaystyle{T^{\mu \nu}}$为能动张量，证明$\displaystyle{T^{\mu \nu}\xi _{\nu}}$是守恒流
*sol*.

$$\begin{align}
\nabla _{\mu}(T^{\mu \nu}\xi _{\nu}) & =\nabla _{\mu}T^{\mu \nu}\xi _{\nu}+T^{\mu \nu}\nabla _{(\mu}\xi _{\nu)} \\
 & =0
\end{align}$$

1. 宇宙学
    1. 简述宇宙学原理
        1. 宇宙在大尺度上是各向同性且均匀的
    1. 写出FRW度规
*sol*.

$$\begin{align}
\mathrm{d}s^{2} & = -dt^{2}+a^{2}(t)\left[ \frac{\mathrm{d}r^{2}}{1-kr^{2}}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}) \right]
\end{align}$$

    1. 推导红移量的Hubble定律
*sol*.
在FRW度规下，物理距离为$\displaystyle{d=a(t)\chi}$，对时间求导，有：

$$\begin{align}
v & =\dot{v} \\
 & =\dot{a}(t)\chi +a(t)\dot{\chi}
\end{align}$$

对于共动物体，有$\displaystyle{\dot{\chi}=0}$，因此：

$$\begin{align}
v & =\dot{a}\chi \\
 & =\frac{\dot{a}}{a}(a\chi) \\
 & =H(t)d
\end{align}$$

1. RN黑洞
    1. 指出度规表达式中各参数的物理意义
*sol*. the metric is

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
f(r) & =1-\frac{2M}{r}+\frac{Q^{2}}{r^{2}} \\
A & = -\frac{Q}{r}\mathrm{d}t
\end{align}$$

where $\displaystyle{M}$ is the mass of the black hole, and $\displaystyle{Q}$ is the electric charge of the black hole.
    1. 求出Killing矢量场，并根据Killing矢量场分析守恒量，根据守恒量写出质点径向运动的方程
*sol*. Killing vectors are

$$\begin{align}
\xi _{t} & =\frac{\partial }{\partial t} \\
\xi _{\phi} & =\frac{\partial }{\partial \phi}
\end{align}$$

which lead to conserved quantities

$$\begin{align}
E & =-mg_{\mu \nu}\xi _{t}^{\mu}u^{\nu}-qA_{\mu}\xi _{t}^{\mu} \\
 & = m f(r)\dot{t}+\frac{qQ}{r} \\
L & = mg_{\mu \nu}\xi _{\phi}^{\mu}u^{\nu}+qA_{\mu}\xi _{\phi}^{\mu} \\
 & = m r^{2}\sin ^{2}\theta \dot{\phi}
\end{align}$$

since $\displaystyle{g_{\mu \nu}u^{\mu}u^{\nu}=-1}$, we have

$$\begin{align}
-1 & =-f(r)\dot{t}^{2}+\frac{\dot{r}^{2}}{f(r)}+r^{2}\dot{\phi}^{2} \\
 & =-\frac{1}{m^{2}f(r)}\left( E-\frac{qQ}{r} \right)^{2}+\frac{\dot{r}^{2}}{f(r)}+\frac{L^{2}}{m^{2}r^{2}}
\end{align}$$

    1. 求出视界位置，并说明为什么那里是视界
*sol*. The horizons are located at

$$\begin{align}
f(r_{h}) & =0 \\
\implies r_{\pm} & =M\pm \sqrt{ M^{2}-Q^{2} }
\end{align}$$

at $\displaystyle{r=r_{h}}$，$\displaystyle{g_{tt}=0}$，光锥翻转，因此是视界位置。
    1. 推导热力学第一定律
*sol*. we have

$$\begin{align}
\kappa & =\frac{1}{2}\left| \frac{\mathrm{d}f}{\mathrm{d}r} \right| _{r=r_{+}} \\
 & =\frac{\sqrt{ M^{2}-Q^{2} }}{r_{+}^{2}} \\
\Phi & =\frac{Q}{r_{+}} \\
A & =4\pi r_{+}^{2}
\end{align}$$

therefore,

$$\begin{align}
\mathrm{d}M & =\frac{\kappa}{8\pi}\mathrm{d}A+\Phi \mathrm{d}Q
\end{align}$$

1. 考虑负质量史瓦西时空
    1. 写出度规
*sol*.

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1+\frac{2|M|}{r} \right)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+\frac{2|M|}{r}}+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

    1. 是否存在视界？
*sol*. 不存在视界，因为$\displaystyle{g_{tt}=-\left( 1+\frac{2|M|}{r} \right)}$在$\displaystyle{r>0}$时恒小于0。
    1. 写出径向类光测地线的方程，根据光锥坐标$\displaystyle{U=t-r^{*},V=t+r^{*}}$，求出乌龟坐标$\displaystyle{r^{*}}$
*sol*. 径向类光测地线方程为：

$$\begin{align}
\mathrm{d}s^{2} & =0\implies \frac{\mathrm{d}r}{\mathrm{d}t}=\pm \left( 1+\frac{2|M|}{r} \right) \\
\implies t & =\pm r^{*}+\mathrm{const} \\
r^{*} & =\int \frac{\mathrm{d}r}{1+\frac{2|M|}{r}} \\
 & =r-2|M|\ln \left( 1+\frac{r}{2|M|} \right)
\end{align}$$

    1. 做坐标变换$\displaystyle{U=\tan \frac{\pi x}{2}, V=\tan \frac{\pi y}{2}}$，画出Penrose图，表出奇点，过去类光无穷远和未来类光无穷远
since $\displaystyle{r^{*}}$ is finite at $\displaystyle{r=0}$, the Penrose diagram is similar to Minkowski spacetime, with a timelike singularity at $\displaystyle{r=0}$
1. 双黑洞合并
    1. 估算末态黑洞质量最大值和最小值
*sol*. 最大值在两个黑洞完全没有能量损失的情况下，即$\displaystyle{M_{final,max}=M_{1}+M_{2}}$。最小值在两个黑洞合并过程中辐射出最大能量的情况下，根据Hawking面积定理，有：

$$\begin{align}
A_{final} & \geq A_{1}+A_{2}
\end{align}$$

取到等号时，末态黑洞质量最小值为

$$\begin{align}
M_{final,min} & =\sqrt{ M_{1}^{2}+M_{2}^{2} } \\
\end{align}$$

    1. 估算引力辐射能量上限
*sol*. 引力辐射能量上限为两个黑洞初始质量和末态黑洞质量之差，即

$$\begin{align}
E_{radiation,max} & =M_{1}+M_{2}-\sqrt{ M_{1}^{2}+M_{2}^{2} } \\
\end{align}$$

# exam 2

1. 电磁场
    1. 写出电磁场方程，并给出电电场、磁场和电磁场张量的数学联系
*sol*.

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =0 \\
E_{\mu} & =F_{\mu \nu}Z^{\nu} \\
B_{\mu} & =\frac{1}{2}\varepsilon _{\mu \nu \rho \sigma}F^{\nu \rho}Z^{\sigma}
\end{align}$$

where $\displaystyle{Z^{\mu}}$ is the observer's four-velocity.
    1. 写出电磁场的能量动量张量
*sol*.

$$\begin{align}
T_{\mu \nu} & =F_{\mu \rho}F_{\nu}^{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}
\end{align}$$

    1. 证明上述能动张良满足散度为0的条件
*sol*.

$$\begin{align}
\nabla _{\mu}T^{\mu \nu} & =\nabla _{\mu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right) \\
 & =F^{\mu \rho}\nabla _{\mu}F^{\nu}_{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\nabla _{\mu}F^{\rho \sigma} \\
 & =\frac{1}{2}F_{\mu \rho}\left(\nabla ^{\mu}F^{\nu \rho}+\nabla ^{\rho}F^{\mu \nu}+\nabla ^{\nu}F^{\rho \mu}\right) \\
 & =0
\end{align}$$

in the last step we have used the Bianchi identity.
1. Rindler度规
    1. 计算非零克氏符
*sol*. the metric is

$$\begin{align}
\mathrm{d}s^{2} & =-x^{2}\mathrm{d}t^{2}+\mathrm{d}x^{2}
\end{align}$$

then we have

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{\rho \sigma}\mathrm{d} g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2} \\
\Gamma ^{t}_{~tx} & = \frac{1}{x} \\
\Gamma ^{x}_{~tt} & =x
\end{align}$$

    1. 计算非零Riemann曲率张量
*sol*. Rindler space is actually a coordinate patch of flat Minkowski spacetime, therefore all Riemann curvature components are zero.
    1. 写出其中类光测地线方程并求通解
*sol*.

$$\begin{align}
\mathrm{d}s^{2} & =0\implies -x^{2}\mathrm{d}t^{2}+\mathrm{d}x^{2}=0 \\
\implies \frac{\mathrm{d}x}{\mathrm{d}t} & =\pm x \\
\implies x(t) & =x_{0}e^{\pm t}
\end{align}$$

light rays asymptotically approach $\displaystyle{x=0}$ as $\displaystyle{t\to \infty}$ or $\displaystyle{t\to -\infty}$.
1. 黑洞
    1. 画出史瓦西节在Kruskal坐标下最大延拓的Penrose图，并标出各个区域的物理意义
*sol*. see the following diagram:
    1. Kerr度规。陈述Penrose过程，并
        1. 证明可以提取能量
        1. 证明导致黑洞角动量减小
        1. 证明导致黑洞不可约质量$\displaystyle{\bar{M}=\left[ \frac{M(M+\sqrt{ M^{2}-a^{2} })}{2} \right]^{1/2}}$增加
*sol*.
Penrose process occurs in the ergosphere of a rotating black hole, where a particle can split into two$\displaystyle{A\to B+C}$, with $\displaystyle{B}$ falling into the black hole with negative energy (as measured at infinity) and $\displaystyle{C}$ escaping to infinity with more energy than the original particle.
to have energy extraction, we need $\displaystyle{L_{B}}$ to be sufficiently negative, which is possible in the ergosphere due to frame dragging.
we have

$$\begin{align}
M_{\text{irr}}\propto \sqrt{ A }
\end{align}$$

since $\displaystyle{\delta A\geqslant 0}$, $\displaystyle{M_{\text{irr}}}$ increases.
1. 引力波
    1. 解释引力波是以光速传播的横波
the eom for linearized gravity in vacuum is

$$\begin{align}
\partial ^{2}\bar{h}_{\mu \nu} & =0 \\
\bar{h}_{\mu \nu} & = h_{\mu \nu}-\frac{1}{2}\eta _{\mu \nu}h
\end{align}$$

this is a wave equation with wave speed equal to the speed of light. also, we can choose a gauge such that $\displaystyle{\nabla _{\mu}h^{\mu \nu}=0}$ and $\displaystyle{h^{\mu}_{~\mu}=0}$, which shows that gravitational waves are traceless and transverse.
    1. 证明在适当规范选择下，引力波只有两种独立偏振模式
*sol*. in the transverse-traceless (TT) gauge, we have

$$\begin{align}
h_{0\mu} & =0 \\
h^{i}_{~i} & =0 \\
\partial _{i}h^{ij} & =0
\end{align}$$

for a wave propagating in the z-direction, the only non-zero components are $\displaystyle{h_{xx}=-h_{yy}}$ and $\displaystyle{h_{xy}=h_{yx}}$, corresponding to the two polarization modes.

$$\begin{align}
\varepsilon _{\mu \nu}^{+} & =\begin{pmatrix}
0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix} \\
\varepsilon ^{-}_{\mu \nu} & =\begin{pmatrix}
0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix}
\end{align}$$

1. 热力学定律
    1. 给出黑洞热力学四定律。论证为什么黑洞不能分裂成两个小黑洞
*sol*.
- 第零定律：在稳态黑洞中，视界的表面引力处处相等。
- 第一定律：黑洞质量变化与视界面积变化、角动量变化和电荷变化之间的关系

$$\begin{align}
\mathrm{d}M & =\frac{\kappa}{8\pi}\mathrm{d}A+\Omega _{H}\mathrm{d}J+\Phi \mathrm{d}Q
\end{align}$$

- 第二定律：在经典引力理论中，黑洞视界面积不会减少。
- 第三定律：不可能通过有限步骤将黑洞冷却到绝对零度。
    - or we cannot overcharge or overspin a black hole to create a naked singularity.
    1. 以史瓦西黑洞为例，给出通过霍金辐射所导致的黑洞质量随时间的变换关系。比较两黑洞（$\displaystyle{\sim 10M_{\odot}}$和原初黑洞$\displaystyle{\sim 10^{-9}M_{\odot}}$）的蒸发时间
*sol*.
the temperature of a Schwarzschild black hole is

$$\begin{align}
T & =\frac{1}{8\pi M}
\end{align}$$

here we choose units with $\displaystyle{G=\hbar =c=k_{B}=1}$. the power radiated by the black hole is

$$\begin{align}
P & =-\frac{\mathrm{d}M}{\mathrm{d}t} \\
 & =\sigma AT^{4} \\
 & =\frac{\sigma}{256\pi^{3}M^{2}}
\end{align}$$

here $\displaystyle{\sigma}$ is the Stefan-Boltzmann constant

$$\begin{align}
\sigma & =\frac{\pi^{2}}{60}
\end{align}$$

therefore, we have

$$\begin{align}
\frac{\mathrm{d}M}{\mathrm{d}t} & =-\frac{1}{15360\pi M^{2}} \\
\implies t_{\text{evap}} & =5120\pi M^{3}
\end{align}$$

for a stellar-mass black hole with $\displaystyle{M\sim 10M_{\odot}}$, the evaporation time is approximately $\displaystyle{10^{64}}$ years, while for a primordial black hole with $\displaystyle{M\sim 10^{-9}M_{\odot}}$, the evaporation time is approximately the age of the universe, $\displaystyle{10^{10}}$ years.

# exam 3

1.
    1. 说明什么是度规和联络适配
*sol*. a metric-compatible connection is one that satisfies the condition

$$\begin{align}
\nabla _{\lambda}g_{\mu \nu} & =0
\end{align}$$

    1. Rindler度规
        1. 求出非零克氏符号、Riemann曲率张量
        1. 求沿x正向和负向的类光测地线
*sol*. exam 2, question 2
        1. 说明$\displaystyle{x=0}$处是否是坐标奇性
*sol*. $\displaystyle{x=0}$ is a coordinate singularity, as the Riemann curvature tensor is zero everywhere, indicating that the spacetime is flat.
1. 质点
    1. 求观者$\displaystyle{Z^{a}}$观测到的质点能量和三动量

$$\begin{align}
E & =-p_{a}Z^{a} \\
P^{a} & =h^{a}_{~b}p^{b} \\
h^{a}_{~b} & =g^{a}_{~b}+Z^{a}Z_{b}
\end{align}$$

    1. 给出观者观测到的电场、磁场与电磁场张量的关系

$$\begin{align}
E_{a} & =F_{ab}Z^{b} \\
B_{a} & =\frac{1}{2}\varepsilon _{abcd}F^{bc}Z^{d}
\end{align}$$

    1. 什么是主能量条件
the dominant energy condition states that for any future-directed timelike vector $\displaystyle{V^{a}}$, the energy-momentum tensor satisfies

$$\begin{align}
T_{ab}V^{a}V^{b} & \geq 0
\end{align}$$

    1. 证明电磁场的能量动量张量满足主能量条件
we need to prove that

$$\begin{align}
T_{\mu \nu}Z^{\mu}Z^{\nu} & = \left( F_{\mu \rho}F_{\nu}^{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right)Z^{\mu}Z^{\nu} \\
 & = \frac{1}{2}\left( E_{\mu}E^{\mu}+B_{\mu}B^{\mu} \right)\geqslant 0
\end{align}$$

1. Kerr黑洞
    1. 视界附近存在坐标拖曳，计算并解释这一现象
*sol*. the Kerr metric is

$$\begin{align}
\mathrm{d}s^{2} & = -\left( 1-\frac{2Mr}{\Sigma} \right)\mathrm{d}t^{2}-\frac{4Mar\sin ^{2}\theta}{\Sigma}\mathrm{d}t\mathrm{d}\phi +\frac{\Sigma}{\Delta}\mathrm{d}r^{2}+\Sigma \mathrm{d}\theta ^{2}+\left( r^{2}+a^{2}+\frac{2Ma^{2}r\sin ^{2}\theta}{\Sigma} \right)\sin ^{2}\theta \mathrm{d}\phi ^{2} \\
\Sigma & =r^{2}+a^{2}\cos ^{2}\theta \\
\Delta & =r^{2}-2Mr+a^{2}
\end{align}$$

the off-diagonal term $\displaystyle{g_{t\phi}\neq 0}$, which means the zero angular momentum obversers must rotate with angular velocity $\displaystyle{\Omega=-\frac{g_{t\phi}}{g_{\phi \phi}}}$ to stay stationary.
    1. 解释Penrose过程
*sol*. Penrose process occurs in the ergosphere of a rotating black hole, where a particle can split into two$\displaystyle{A\to B+C}$, with $\displaystyle{B}$ falling into the black hole with negative energy (as measured at infinity) and $\displaystyle{C}$ escaping to infinity with more energy than the original particle.
    1. 为什么Schwarzschild黑洞不能进行Penrose过程
*sol*. Schwarzschild black holes do not have an ergosphere, as there is no frame dragging effect. Therefore, particles cannot have negative energy states outside the event horizon, making the Penrose process impossible.
1. killing
    1. 求证$\displaystyle{R_{ab}k^{b}\propto \varepsilon _{abcd}\nabla ^{d}\varepsilon ^{bcef}\nabla _{e}k _{f}}$
*sol*.

$$\begin{align}
R_{ab}k^{b} & =\nabla _{b}\nabla _{a}k^{b} \\
 & =\nabla _{b}\left( \frac{1}{2}\varepsilon _{a}^{~bcd}\varepsilon _{cdef}\nabla ^{e}k^{f} \right) \\
 & \propto \varepsilon _{abcd}\nabla ^{d}\varepsilon ^{bcef}\nabla _{e}k _{f}
\end{align}$$

    1. 什么是Komar质量
the Komar mass is defined as

$$\begin{align}
M_{\text{Komar}} & =-\frac{1}{8\pi}\oint _{S}\nabla ^{\mu}\xi ^{\nu}\mathrm{d}S_{\mu \nu}
\end{align}$$

    1. 证明在稳态、渐进平坦且没有黑洞的情况下，时空是平坦的
*sol*. in a stationary, asymptotically flat spacetime without black holes, the Komar mass is zero. since the Ricci tensor is proportional to the energy-momentum tensor, which is zero in vacuum, the spacetime must be flat.
1. 宇宙学
    1. 宇宙学原理

    1. 满足宇宙学原理的一般性度规，即FRW度规

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+a^{2}(t)\left(\frac{\mathrm{d}r^{2}}{1-kr^{2}}+r^{2}\mathrm{d}\Omega _{2}^{2}\right)
\end{align}$$

    1. 解释视界疑难，平坦性疑难
*sol*.
the horizon problem arises from the observation that regions of the universe that are causally disconnected (i.e., outside each other's particle horizons) have nearly identical properties, such as temperature. this suggests that there must have been some mechanism in the early universe that allowed these regions to come into thermal equilibrium.
