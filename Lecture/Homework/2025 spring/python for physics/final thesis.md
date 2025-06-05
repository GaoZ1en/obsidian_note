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
 & =-\frac{T}{2}\int \mathrm{d}^{2}\xi g_{\mu \nu}\eta ^{ab}\left(\frac{\mathrm{d}^{2}X^{\mu}}{\mathrm{d}\xi ^{a}\mathrm{d}\xi ^{b}}+\Gamma ^{\mu}_{~\rho \sigma} \frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\sigma}}{\mathrm{d}\xi ^{b}}\right)\delta X^{\nu}+(\text{ boundary terms })
\end{align}
$$

这里我们注意到作用量(2.1)具有世界面上的微分同胚不变性，因此我们可以选择$\displaystyle{\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }=1}$。这样我们就得到了运动方程

$$\tag{2.3}
\begin{align}
\eta ^{ab}\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}\mathrm{d}\xi ^{b}}+\Gamma ^{\mu}_{\rho \sigma} \eta ^{ab}\frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\sigma}}{\mathrm{d}\xi ^{b}}=0
\end{align}
$$

其中$\displaystyle{\Gamma ^{\mu}_{~\rho \sigma}=\frac{1}{2}g^{\mu \nu}(\partial _{\rho}g_{\nu \sigma}+\partial _{\sigma}g_{\rho \nu}-\partial _{\nu}g_{\rho \sigma}) }$为背景时空中的克氏符。在平直时空中$\displaystyle{g_{\mu \nu}=\eta _{\mu \nu},\Gamma ^{\mu}_{~\rho \sigma}=0}$，进一步做在世界面上做共形变换，就可以将运动方程转化为

$$\tag{2.4}
\begin{align}
-\ddot{X}^{\mu}+X''^{\mu}=0
\end{align}
$$

以及约束

$$\tag{2.5}
\begin{align}
\eta _{\mu \nu}\dot{X}^{\mu}X'^{\nu} & =0 \\
\eta _{\mu \nu}(\dot{X}^{\mu}\dot{X}^{\nu}+X'^{\mu}X'^{\nu}) & =0
\end{align}
$$

其中$\displaystyle{\dot{X}^{\mu}}$表示对$\displaystyle{\xi ^{0}=\tau}$的导数，$\displaystyle{X'^{\mu}}$表示对$\displaystyle{\xi ^{1}=\sigma}$的导数。我们知道波动方程(2.4)的通解可以写为

$$\tag{2.6}
\begin{align}
X^{\mu}(\tau,\sigma) & =\frac{1}{2}[a^{\mu}(\tau+\sigma)+b^{\mu}(\tau-\sigma)]
\end{align}
$$

这样(2.5)成为

$$\tag{2.7}
\begin{align}
\eta _{\mu \nu}a'^{\mu}a'^{\nu}=\eta _{\mu \nu}b'^{\mu}b'^{\nu}=1
\end{align}
$$

## 编程模拟

现在我们希望针对闭弦（即具有周期条件$\displaystyle{X^{\mu}(\tau,\sigma+2\pi)=X^{\mu}(\tau,\sigma)}$的弦）的运动进行模拟。


## 附录A：代码


## 参考文献

1. Kibble, T.W.B. (1976). "Topology of cosmic domains and strings." J. Phys. A: Math. Gen., 9(8), 1387-1398.
2. Planck Collaboration (2013). "Planck 2013 results. XXV. Searches for cosmic strings and other topological defects." Astron. Astrophys., 571, A25.
3. Parkes Pulsar Timing Array (2018). "The NANOGrav 11-year Data Set: New Constraints on the Stochastic Gravitational-wave Background." Astrophys. J., 859(1), 47.
4. Hindmarsh, M. et al. (2017). "Scaling from gauge and scalar radiation in Abelian Higgs string networks." Phys. Rev. D, 96, 023525.
5. Vilenkin, A. & Shellard, E.P.S. (2000). "Cosmic Strings and Other Topological Defects." Cambridge University Press.
