---
references: https://arxiv.org/pdf/hep-th/9801105, https://arxiv.org/pdf/hep-th/9810119, https://arxiv.org/pdf/hep-th/0008045
---

直接结论是：

1. 格点化以后，关联函数是普通的有限维积分，可以直接用 transfer matrix、数值积分或 Monte Carlo 计算。
2. 连续极限存在，但必须把 **Hamiltonian ordering、time-slicing prescription、位置依赖测度和相应的有限局域反项** 作为同一个定义。单独把测度因子写成一个发散的“有效 Lagrangian 项”再忽略其余 contact terms，会得到错误答案。
3. 这个模型的 target space 只有一维。只要 $G(x)>0$，可以作一个精确的坐标变换把动能完全拉平。因此这里没有不可消除的量子异常；不同 regulator 中出现的非协变项必须在最终结果中相消。
4. 从低激发推到高激发的困难不是出现了一个新的物理 cutoff，而是固定阶 $\lambda$ 展开对激发数 $n$ 不一致收敛。时间格距、数值基底 cutoff 和物理激发数是三个不同的量。

以下暂时不使用 CPS formalism。

Consider the action

$$\begin{align}
L & =\dfrac{1}{2}G(x)\dot{x}^{2}-V(x) \\
G(x) & =m+\dfrac{\lambda}{2}x^{2} \\
V(x) & =\dfrac{1}{2}m\omega ^{2}x^{2}
\end{align}$$

## 1. 先固定一种正则量子化

经典动量和 Hamiltonian 是

$$\begin{align}
p=G(x)\dot{x}, \qquad H_{\mathrm{cl}}=\frac{p^{2}}{2G(x)}+V(x).
\end{align}$$

为了把 ordering 完全固定，选择配置空间 metric $G(x)\mathrm{d}x^{2}$ 的 Laplace--Beltrami 量子化：

$$\begin{align}
\mathcal{H}=L^{2}\!\left(\mathbb{R},\sqrt{G(x)}\,\mathrm{d}x\right), \qquad \widehat{H}_{\mathrm{LB}} =-\frac{\hbar ^{2}}{2\sqrt{G}} \partial _x\frac{1}{\sqrt{G}}\partial _x+V(x).
\end{align}$$

作幺正变换 $\psi(x)=G(x)^{1/4}\phi(x)$，把内积变成平坦的 $\int\mathrm{d}x\,|\psi|^{2}$。在这个表示中

$$\begin{align}
\widehat{H}_{x} =\frac{1}{2}G^{-1/4}\widehat{p}\,G^{-1/2} \widehat{p}\,G^{-1/4}+V(x), \qquad \widehat{p}=-i\hbar\partial _x.
\end{align}$$

它的 Weyl symbol 是

$$\begin{align}
H_{\mathrm{W}}(x,p) =\frac{p^{2}}{2G(x)}+V(x)+V_{\mathrm{TS}}(x),
\end{align}$$

其中 time-slicing 处方所需的有限局域项为

$$\begin{aligned}
V_{\mathrm{TS}}(x) &=\frac{\hbar ^2}{8}G^{xx} \left(\Gamma ^x{}_{xx}\right)^{2} \\
&=\frac{\hbar ^2[G'(x)]^{2}}{32G(x)^{3}} =\frac{\hbar ^2\lambda ^2x^{2}} {4(2m+\lambda x^{2})^{3}}.
\end{aligned}$$

这里一维 target 的 Ricci scalar 恒为零。$V_{\mathrm{TS}}$ 仍然非零，是因为 time slicing 本身不是 target-space coordinate covariant 的；它从 $O(\lambda ^2)$ 才开始贡献。换一种 ordering 会改变这个 $O(\hbar ^2)$ 局域势，因此那将是另一个量子理论，而不只是换了一种计算记号。

## 2. Hamiltonian 直接给出的格点路径积分

转到 Euclidean time，令 $\beta=N\epsilon$，并考虑 periodic paths $x_N=x_0$。定义

$$\begin{align}
\bar{x}_{n}=\frac{x_{n+1}+x_n}{2}, \qquad \Delta x_n=x_{n+1}-x_n.
\end{align}$$

中点短时核是

$$\begin{aligned}
T_{\epsilon}(x_{n+1},x_n) &= \sqrt{\frac{G(\bar{x}_{n})}{2\pi\hbar\epsilon}} \\
&\quad\times \exp\left[ -\frac{G(\bar{x}_{n})(\Delta x_n)^{2}}{2\hbar\epsilon} -\frac{\epsilon}{\hbar} \left(V(\bar{x}_{n})+V_{\mathrm{TS}}(\bar{x}_{n})\right) \right].
\end{aligned}$$

因此

$$\begin{align}
Z_N(\beta)=\int\prod_{n=0}^{N-1}\mathrm{d}x_n
\prod_{n=0}^{N-1}T_{\epsilon}(x_{n+1},x_n).
\end{align}$$

格点关联函数没有额外的形式困难。例如

$$\begin{align}
\left\langle \mathcal{T}_{\tau}x_{n_1}\cdots x_{n_r} \right\rangle _N =\frac{1}{Z_N}
\int\prod_{n=0}^{N-1}\mathrm{d}x_n\, x_{n_1}\cdots x_{n_r}
\prod_{n=0}^{N-1}T_{\epsilon}(x_{n+1},x_n).
\end{align}$$

等价地，把 $T_\epsilon(x',x)$ 离散成一个矩阵以后，可以计算

$$\begin{align}
\frac{\operatorname{Tr} \left(T_\epsilon^{N-n}X\,T_\epsilon^nX\right)}
{\operatorname{Tr}T_\epsilon^N}.
\end{align}$$

所以“能不能直接算”的答案是肯定的。对于 $\lambda\geq 0$ 的 Euclidean 模型，权重为正，数值计算也没有 real-time sign problem。需要注意的是：上面的短时核在有限 $\epsilon$ 时是 Hamiltonian evolution 的近似，而 $\epsilon\to0$ 才收敛到所选的 $\widehat H_{\mathrm{LB}}$。

## 3. 位置依赖测度与 Cutoff-Dependent Cancellation

对每一时间片的动量作 Gaussian 积分会产生

$$\begin{align}
\prod_n\sqrt{G(\bar{x}_n)}.
\end{align}$$

若把相对于自由测度的部分强行吸收到 Euclidean action 中，

$$\begin{align}
\prod_n\sqrt{\frac{G(\bar{x}_n)}{m}} =\exp\left[ \frac{1}{2}\sum_n\log\frac{G(\bar{x}_n)}{m} \right],
\end{align}$$

就得到

$$\begin{align}
S_{\mathrm{measure},E} =-\frac{\hbar}{2}\delta_\epsilon(0) \int\mathrm{d}\tau\, \log\frac{G(x)}{m}, \qquad \delta_\epsilon(0)\sim\frac{1}{\epsilon}.
\end{align}$$

展开到前两阶，

$$\begin{align}
S_{\mathrm{measure},E} =\int\mathrm{d}\tau\left[ -\frac{\hbar\lambda}{4m}\delta_\epsilon(0)x^{2} +\frac{\hbar\lambda ^2}{16m^{2}}\delta_\epsilon(0)x^{4} +O(\lambda ^3) \right].
\end{align}$$

在 Lorentzian 路径积分中，相同测度写成

$$\begin{align}
S_{\mathrm{measure},M} =-\frac{i\hbar}{2}\delta_\epsilon(0) \int\mathrm{d}t\,\log\frac{G(x)}{m}.
\end{align}$$

因此它看起来确实是一个虚的、cutoff-dependent 的 Lagrangian 项。但是这个项不能单独解释为新的物理势。

例如用对称频率 cutoff $\Lambda$ 示意一阶 cancellation，自由传播子给出

$$\begin{aligned}
\left\langle\dot{x}^{2}\right\rangle _{0,\Lambda} &=\frac{\hbar}{m} \int_{-\Lambda}^{\Lambda}\frac{\mathrm{d}k}{2\pi} \frac{k^{2}}{k^{2}+\omega ^2} \\
&=\frac{\hbar}{m} \left[ \frac{\Lambda}{\pi} -\frac{\omega}{\pi}\arctan\frac{\Lambda}{\omega} \right].
\end{aligned}$$

记 $\delta_\Lambda(0)=\Lambda/\pi$。Euclidean perturbative weight 中，导数顶点

$$\begin{align}
\frac{\lambda}{4}\int\mathrm{d}\tau\,x^{2}\dot{x}^{2}
\end{align}$$

把两条 $\dot{x}$ 收缩以后产生的发散部分是

$$\begin{align}
-\frac{\lambda}{4\hbar} \left\langle\dot{x}^{2}\right\rangle _{0,\Lambda} \int\mathrm{d}\tau\,x^{2} \supset -\frac{\lambda}{4m}\delta_\Lambda(0) \int\mathrm{d}\tau\,x^{2}.
\end{align}$$

测度在指数中产生的顶点恰好是

$$\begin{align}
+\frac{\lambda}{4m}\delta_\Lambda(0)
\int\mathrm{d}\tau\,x^{2},
\end{align}$$

两者相消。更高阶还要同时保留更高阶测度顶点、$V_{\mathrm{TS}}$ 和同一 regulator 所规定的 equal-time contact rules。

所以正确的说法是：

- 单张图和单个 contact term 可以依赖 regulator；
- 对固定的 Hamiltonian，把同一 scheme 的全部图、测度和反项相加后，分离点关联函数的连续极限不应依赖 regulator；
- 改变 ordering 所留下的有限 $O(\hbar ^2)$ 差异不是 regulator dependence，而是量子理论定义的差异。

实际计算时，比起把 $\delta(0)$ 裸写进 Lagrangian，更安全的做法是保留离散测度，或用 Lee--Yang measure ghosts 把它局域化。

## 4. 这个一维模型有一个更强的精确检验

定义新坐标

$$\begin{align}
\frac{\mathrm{d}y}{\mathrm{d}x} =\sqrt{\frac{G(x)}{m}}.
\end{align}$$

当 $\lambda>0$ 时，

$$\begin{align}
y(x) =\frac{x}{2}\sqrt{1+\frac{\lambda x^{2}}{2m}} +\sqrt{\frac{m}{2\lambda}}\, \operatorname{arsinh} \left(x\sqrt{\frac{\lambda}{2m}}\right).
\end{align}$$

于是

$$\begin{align}
\frac{1}{2}G(x)\dot{x}^{2} =\frac{1}{2}m\dot{y}^{2},
\end{align}$$

而所选 Hamiltonian 精确地变成

$$\begin{align}
\widehat H_y =-\frac{\hbar ^2}{2m}\partial_y^{2} +\frac{1}{2}m\omega ^2x(y)^{2}.
\end{align}$$

这同时给出一个不含位置依赖测度的 regulator：

$$\begin{aligned}
Z_N &=\int\prod_n \left(\sqrt{\frac{m}{2\pi\hbar\epsilon}}\,\mathrm{d}y_n\right) \\
&\quad\times \exp\left[ -\frac{1}{\hbar}\sum_n \left( \frac{m(\Delta y_n)^2}{2\epsilon} +\epsilon V\!\left(x(\bar y_n)\right) \right) \right].
\end{aligned}$$

它和上一节的 $x$-space time-slicing regulator 在有限格距上不同，但连续极限给出同一个 Hamiltonian。

小 $\lambda$ 展开为

$$\begin{aligned}
y(x) &=x+\frac{\lambda}{12m}x^{3} -\frac{\lambda ^2}{160m^{2}}x^{5} +O(\lambda ^3), \\
x(y) &=y-\frac{\lambda}{12m}y^{3} +\frac{13\lambda ^2}{480m^{2}}y^{5} +O(\lambda ^3),
\end{aligned}$$

从而

$$\begin{align}
\frac{1}{2}m\omega ^2x(y)^2 =\frac{1}{2}m\omega ^2y^{2} -\frac{\lambda\omega ^2}{12}y^{4} +\frac{11\lambda ^2\omega ^2}{360m}y^{6} +O(\lambda ^3).
\end{align}$$

连续微扰论因此退化成普通 anharmonic-oscillator 微扰论，只是原来的位置算符也要展开成复合算符 $x(y)$。注意截断到 $O(\lambda)$ 的 quartic potential 对 $\lambda>0$ 是负的，不能把这个截断势当成一个全局稳定的非微扰模型；精确的 $V(x(y))$ 仍然是束缚势。

## 5. 一个显式的一阶两点函数

取零温、分离的 Euclidean times。自由 $y$ 传播子为

$$\begin{align}
\Delta(\tau) =\left\langle\mathcal{T}_{\tau}y(\tau)y(0)\right\rangle _0 =\frac{\hbar}{2m\omega}e^{-\omega|\tau|}.
\end{align}$$

一阶 action interaction 和 observable expansion 分别给出

$$\begin{aligned}
\delta G_{\mathrm{action}}(\tau) &=\frac{\lambda\omega ^2}{\hbar}\Delta(0) \int_{-\infty}^{\infty}\mathrm{d}s\, \Delta(\tau-s)\Delta(s), \\
\delta G_{\mathrm{observable}}(\tau) &=-\frac{\lambda}{2m}\Delta(0)\Delta(\tau).
\end{aligned}$$

这里第二项来自

$$\begin{align}
x(y)=y-\frac{\lambda}{12m}y^{3}+O(\lambda ^2).
\end{align}$$

利用

$$\begin{align}
\int_{-\infty}^{\infty}\mathrm{d}s\, \Delta(\tau-s)\Delta(s) =\left(\frac{\hbar}{2m\omega}\right)^{2} e^{-\omega|\tau|} \left(|\tau|+\frac{1}{\omega}\right),
\end{align}$$

两个常数项相消，得到

$$\begin{align}
\boxed{ \left\langle\mathcal{T}_{\tau}x(\tau)x(0)\right\rangle =\frac{\hbar}{2m\omega}e^{-\omega|\tau|} \left[ 1+\frac{\lambda\hbar}{4m^{2}}|\tau| \right] +O(\lambda ^2)
}.
\end{align}$$

同一个结果可由能谱检查。普通定态微扰论给出

$$\begin{align}
E_n =\hbar\omega\left(n+\frac{1}{2}\right) -\frac{\lambda\hbar ^2}{16m^{2}} \left(2n^{2}+2n+1\right) +O(\lambda ^2),
\end{align}$$

所以

$$\begin{align}
E_1-E_0 =\hbar\omega-\frac{\lambda\hbar ^2}{4m^{2}} +O(\lambda ^2),
\end{align}$$

恰好解释了两点函数指数衰减率的一阶修正。

## 6. 少激发、高激发和经典极限

首先，这个模型只有一个量子力学自由度。自由理论的 $\lvert n\rangle$ 可以解释为 oscillator occupation-number states，但它们不是具有相对位置和散射数据的真正多粒子态。相互作用也不保持自由 occupation number。

路径积分本身已经包含完整能谱。例如

$$\begin{align}
\left\langle x(\tau)x(0)\right\rangle =\sum_n \left|\langle 0|x|n\rangle\right|^{2} e^{-(E_n-E_0)|\tau|/\hbar}.
\end{align}$$

但是仅靠 $x$ 的两点函数只能看到与 $x|0\rangle$ 有非零 overlap 的态。要重建更多高激发态，需要加入 $x^{2},x^{3},\ldots$ 的关联矩阵，或直接对 transfer matrix/Hamiltonian 对角化。这是 observable-basis 问题，不是新的 UV cutoff。

真正需要额外处理的是高激发下微扰参数会变大。第 $n$ 个态的典型振幅满足

$$\begin{align}
\langle x^{2}\rangle _n \sim\frac{\hbar n}{m\omega},
\end{align}$$

所以有效展开参数是

$$\begin{align}
g_n\sim \frac{\lambda\hbar n}{m^{2}\omega}.
\end{align}$$

即使 $g_1\ll1$，当 $n\gtrsim g_1^{-1}$ 时，固定阶微扰也会失效。此时应使用精确的 $y$-coordinate Hamiltonian、WKB、数值对角化或适合大振幅的重求和，而不是再引入一个物理 cutoff。

格点计算还有一个简单但重要的顺序问题。若要解析第 $n$ 个能级，需要

$$\begin{align}
\epsilon\frac{E_n-E_0}{\hbar}\ll1.
\end{align}$$

因此不能在固定 $\epsilon$ 下无限增大 $n$。应先在固定物理态上作 $\epsilon\to0$ 外推，或让 $\epsilon$ 随目标能量一起缩小。数值上若再截断 oscillator basis 到 $n_{\max}$，还要独立作 $n_{\max}\to\infty$ 外推；它与 time-slicing cutoff 不是同一个量。

经典极限应理解为

$$\begin{align}
\hbar\to0, \qquad n\to\infty, \qquad I=\hbar n\ \text{固定}.
\end{align}$$

Ordering 和 $V_{\mathrm{TS}}$ 是 $O(\hbar ^2)$，在这个极限中从经典方程里消失；但经典非线性参数

$$\begin{align}
\frac{\lambda I}{m^{2}\omega}
\end{align}$$

可以保持有限。因此“经典极限看不到 regulator”是正确的，但这不意味着量子计算时可以省略 regulator 所要求的测度、contact rules 和反项。

## 7. 建议的计算顺序

1. 以精确的 $y(x)$ 变换或 $y$-space transfer matrix 作为 benchmark，先计算有限格距的两点函数和低能谱。
2. 对 $\epsilon\to0$ 作外推，并与上面的 $O(\lambda)$ 解析结果比较。
3. 再回到 $x$ 变量做 derivative-interaction Feynman graphs；保留离散测度，或引入 measure ghosts，不要单独丢弃 $\delta(0)$ 项。
4. 到 $O(\lambda ^2)$ 时加入 $V_{\mathrm{TS}}$，逐项核对不同 regulator 中的局域差异在总关联函数中相消。
5. 研究高激发时监控 $g_n$，不要把低激发的固定阶展开直接外推到 $n\to\infty$。

## References

- F. Bastianelli, K. Schalm and P. van Nieuwenhuizen, [Mode regularization, time slicing, Weyl ordering and phase space path integrals for quantum mechanical nonlinear sigma models](https://arxiv.org/abs/hep-th/9801105).
- F. Bastianelli and O. Corradini, [On Mode Regularization of the Configuration Space Path Integral in Curved Space](https://arxiv.org/abs/hep-th/9810119).
- F. Bastianelli, O. Corradini and P. van Nieuwenhuizen, [Dimensional regularization of nonlinear sigma models on a finite time interval](https://arxiv.org/abs/hep-th/0008045).

## Verification Status

- **Verified:** Mathematica gives zero residual for the Weyl-symbol identity defining $V_{\mathrm{TS}}$, for the mutually inverse $x(y)$ and $y(x)$ series through $O(\lambda ^2)$, and for the transformed potential through $O(\lambda ^2)$.
- **Verified:** Mathematica reproduces the measure--derivative-vertex cancellation, the convolution entering the separated-time two-point function, and the $O(\lambda)$ spectral gap shift. Finite oscillator matrices agree with the stated $E_n^{(1)}$ formula for $0\leq n\leq8$.
- **Assumptions:** $m>0$, $\omega>0$, and $\lambda\geq0$ when the model is regarded as a globally defined theory on $x\in\mathbb{R}$. For $\lambda<0$, $G(x)$ vanishes at finite $x$ and a domain/boundary-condition choice is additionally required.
- **Not verified:** No numerical transfer-matrix extrapolation was run here, and no $O(\lambda ^2)$ correlation function was evaluated. Rigorous self-adjoint-domain and Trotter-convergence proofs are not supplied.
