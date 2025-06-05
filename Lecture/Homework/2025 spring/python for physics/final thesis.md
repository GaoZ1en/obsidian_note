# 宇宙弦的演化模拟

## 引言

宇宙弦是理论物理学中预言的一维拓扑缺陷，其形成源于宇宙早期高能相变过程中的对称性自发破缺。简单来说，宇宙弦通常可以用复标量场$\displaystyle{\phi}$的自发对称性破缺来描述：

$$\mathcal{L} = |\partial_\mu\phi|^2 - \frac{\lambda}{4}(|\phi|^2 - \eta^2)^2$$

当宇宙冷却时，$\displaystyle{\phi}$场从对称相（$\displaystyle{\phi=0}$）向破缺相（$\displaystyle{\phi=\eta}$）转变，形成了线状的拓扑缺陷。

宇宙弦在理论物理和宇宙学中具有多重重要性：
1. **早期宇宙探针**：作为相变的"化石"证据，宇宙弦可能保存着早期宇宙物理条件的信息，为我们提供了接触超高能标度的可能性。
2. **引力波源**：振荡的宇宙弦环和弦交叉事件可产生特征性引力波信号，这些信号与其他天体源（如黑洞合并）产生的信号具有不同特征。
3. **结构形成**：虽然现代观测表明宇宙弦不是大尺度结构形成的主导因素，但它们仍可能对特定区域的物质密度分布产生影响。

宇宙弦研究已经历了近半个世纪的发展：
- 20世纪70年代，T.W.B. Kibble首次提出宇宙弦概念^cite{Kibble1976}，引发了理论物理学界的广泛兴趣。
- 80-90年代，宇宙弦一度被视为大尺度结构形成的有力候选机制，但随着宇宙微波背景辐射(CMB)观测精度的提高，宇宙弦作为主导结构形成机制的可能性逐渐被排除。
- 目前观测对宇宙弦张力设置了严格上限。普朗克卫星的CMB数据给出$$G\mu/c^4 < 1.5 \times 10^{-7}$$^cite{Planck2013}，而脉冲星计时阵列和引力波探测器的最新结果将这一限制进一步推进到$$G\mu/c^4 < 10^{-11}$$量级^cite{PPTA2018}。

虽然宇宙弦存在的可能性已经相当有限，但是研究其演化仍然是一个有趣的课题。下面我们首先推导宇宙弦的运动方程，再进行编程模拟。

## 宇宙弦的运动方程

宇宙弦的演化可由Nambu-Goto action描述

$$\tag{2.1}
\begin{align}
S & =-T\int \mathrm{d}^{2}\xi \sqrt{ -g_{\mu \nu} \eta ^{ab}\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }
\end{align}
$$

其中$\displaystyle{T}$为宇宙弦的张力，$\displaystyle{g_{\mu \nu}}$为宇宙弦所处背景时空的度规张量，$\displaystyle{\xi ^{a},a=1,2}$为宇宙弦世界面上的坐标。这里动力学变量为$\displaystyle{X^{\mu}}$。我们对$\displaystyle{X^{\mu}}$作变分，得到

$$\tag{2.2}
\begin{align}
\delta S & =-T\int \mathrm{d}^{2}\xi  \frac{-g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}\delta X^{\nu}}{\mathrm{d}\xi ^{b}}-\partial _{\rho}g_{\mu \nu}\eta ^{\mu \nu} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}}\delta X^{\nu}}{2\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }} \\
 & =
\end{align}
$$

这里我们注意到作用量(2.1)具有世界面上的微分同胚不变性，因此我们可以选择$\displaystyle{\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}}= }}$

## 附录A：代码


## 参考文献

1. Kibble, T.W.B. (1976). "Topology of cosmic domains and strings." J. Phys. A: Math. Gen., 9(8), 1387-1398.
2. Planck Collaboration (2013). "Planck 2013 results. XXV. Searches for cosmic strings and other topological defects." Astron. Astrophys., 571, A25.
3. Parkes Pulsar Timing Array (2018). "The NANOGrav 11-year Data Set: New Constraints on the Stochastic Gravitational-wave Background." Astrophys. J., 859(1), 47.
4. Hindmarsh, M. et al. (2017). "Scaling from gauge and scalar radiation in Abelian Higgs string networks." Phys. Rev. D, 96, 023525.
5. Vilenkin, A. & Shellard, E.P.S. (2000). "Cosmic Strings and Other Topological Defects." Cambridge University Press.

# 宇宙弦运动方程的推导

## Nambu-Goto作用量

宇宙弦的动力学可以从Nambu-Goto作用量出发进行描述：

$$S = -\mu \int d\tau d\sigma \sqrt{-\gamma}$$

其中$$\mu$$是弦的线密度（等同于张力），$$\gamma = \det(\gamma_{ab})$$是弦世界面上诱导度规的行列式，$$\tau$$和$$\sigma$$是描述弦世界面的参数。诱导度规$$\gamma_{ab}$$由背景时空度规$$g_{\mu\nu}$$诱导得到：

$$\gamma_{ab} = g_{\mu\nu} \frac{\partial X^\mu}{\partial \xi^a} \frac{\partial X^\nu}{\partial \xi^b}$$

其中$$X^\mu(\tau,\sigma)$$描述弦在四维时空中的位置，$$\xi^a = (\tau,\sigma)$$。

## 在膨胀宇宙中的运动方程

考虑平坦FLRW宇宙背景，度规为：

$$ds^2 = -dt^2 + a^2(t)(dx^2 + dy^2 + dz^2)$$

其中$$a(t)$$是宇宙尺度因子。选择参数化使得$$\tau$$与宇宙时间$$t$$相同，并引入物理坐标$$\mathbf{x} = (x, y, z)$$。

对作用量变分并应用欧拉-拉格朗日方程，得到：

$$\frac{d}{dt}\left(\frac{\gamma_{ab}\dot{X}^b}{\sqrt{-\gamma}}\right) - \frac{1}{2}\partial_a(\gamma_{cd})\frac{\gamma^{cd}}{\sqrt{-\gamma}} = 0$$

经过代数化简，在宇宙膨胀背景下的运动方程可表示为：

$$\ddot{\mathbf{x}} + 2\frac{\dot{a}}{a}\dot{\mathbf{x}}(1-\dot{\mathbf{x}}^2) = \frac{1}{\epsilon}(\mathbf{x}'' \cdot \dot{\mathbf{x}})\dot{\mathbf{x}} + \frac{\mathbf{x}''}{\epsilon}$$

其中点表示对时间$$t$$的导数，撇号表示对参数$$\sigma$$的导数，而$$\epsilon$$为：

$$\epsilon = \frac{a^2\sqrt{\mathbf{x}'^2}}{1-\dot{\mathbf{x}}^2}$$

这个方程捕捉了宇宙弦在膨胀宇宙中的关键动力学特征，包括宇宙膨胀带来的阻尼效应。方程中第二项描述了宇宙膨胀对弦运动的影响，右侧则反映了弦自身的张力效应。