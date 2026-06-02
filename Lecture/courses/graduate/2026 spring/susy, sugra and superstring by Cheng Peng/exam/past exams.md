# 超对称超引力超弦期末考试

## 2024.6.13

### 1 (10分) 弦论质量谱

1) 写出 $D = 26$ 玻色型开弦质量谱前三个物理态，给出它们的质量，以及对应的群表示(可以用对应态的自由度个数来刻画)。

2) 写出 $D = 10$ 超弦质量为零的物理态，以及对应的群表示(可以用对应态的自由度个数来刻画)。

### 2 (10分) ND型边界条件

考虑 ND (Neumann-Dirichlet) 型边界条件对于玻色型开弦，写出空间方向靶空间坐标的模式展开。

### 3 (10分) $D_{p}$ 膜 ($D_{p}$ brane)

考虑 $D_{p}$ 理论，指的是定义在"世界体"上的理论，有 $p$ 个空间方向，一个时间方向。其 Nambu-Goto 作用量为与弦论类似，证明：如下定义的 Polyakov 作用量与 Nambu-Goto 作用量是等价的，并求出的 $C_{p}$ 值。(提示：先假设 $C_{p}$ 与 $g_{ab}$ 无关，最后在验证这样的假设成立)

$$S_{\mathrm{NG}} = -\frac{T_{p}}{2}\int d^{p + 1}\sigma \sqrt{-\operatorname{det}\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu\nu}} \quad (1)$$

$$S_{p} = -\frac{T_{p}}{2}\int d^{p + 1}\sigma \sqrt{-\operatorname{det}g}\left(g^{ab}\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu \nu} + C_{p}\right) \quad (2)$$

### 4 (5分) 玻色化 (Bosonization)

考虑费米场 $\psi$, $\bar{\psi}$，满足如下 OPE 关系，证明：费米场可以写成如下形式，其中 $H\left(z\right)$ 是玻色场，OPE 为 $H\left(z_{1}\right)H\left(z_{2}\right)\sim -\log \left(z_{1} - z_{2}\right)$，并确定 $a,b$ 的取值。(提示：假设(4)(5)成立，代入(3),从而确定 $a,b$ 的取值)

$$\psi \left(z_{1}\right)\bar{\psi}\left(z_{2}\right)\sim \frac{1}{z_{1} - z_{2}},\quad \psi \left(z_{1}\right)\psi \left(z_{2}\right)\sim O\left(z_{1} - z_{2}\right),\quad \bar{\psi}\left(z_{1}\right)\bar{\psi}\left(z_{2}\right)\sim O\left(z_{1} - z_{2}\right) \quad (3)$$

$$\psi \left(z\right) = e^{aH\left(z\right)},\quad \bar{\psi}\left(z\right) = e^{bH\left(z\right)} \quad (4)$$

$$H\left(z_{1}\right)H\left(z_{2}\right)\sim -\log \left(z_{1} - z_{2}\right) \quad (5)$$

### 5 (15分) 鬼场 (Ghost Field)

考虑弦论中的鬼场。 $\beta$, $\gamma$ 都是手征玻色型鬼场，OPE 关系为

$$\beta \left(z_{1}\right)\gamma \left(z_{2}\right)\sim -\frac{1}{z_{1} - z_{2}},\quad \beta \left(z_{1}\right)\beta \left(z_{2}\right)\sim 0,\quad \gamma \left(z_{1}\right)\gamma \left(z_{2}\right)\sim 0 \quad (6)$$

此时能动张量为

$$T = (1 - \lambda)\left(\partial \beta \gamma\right) - \lambda \left(\beta \partial \gamma\right) \quad (7)$$

1) 计算 OPE: $T\left(z_{1}\right)\beta \left(z_{2}\right)$, $T\left(z_{1}\right)\gamma \left(z_{2}\right)$，并确定 $\beta$ 和 $\gamma$ 的共形维数。

2) 计算 OPE: $T\left(z_{1}\right)T\left(z_{2}\right)$，并确定该理论的中心荷。

3) 计算 $\beta$ 和 $\gamma$ 的模式展开，并计算模式之间的对易关系。

## 2025年春季学期

教师：彭程， pengcheng@ucas.ac.cn

考试时间：2025年6月12日19：00—21：40 · 共4题，50分


### 1 弦态能级（10分）

(1) 考虑 $D = 26$ 维时空中的玻色弦理论。写出开弦(NN边条件)的最低的2个能级上的物理态，指出它们的质量、群表示（可以用自由度的个数即群表示的维度标记即可)。(4分)

(2) 考虑 $D = 10$ 维时空中的 Type IIA 和 Type IIB 超对称弦理论。分别写出零质量物理态，指出它们的群表示（可以用自由度的个数即群表示的维度标记即可)。(6分)


### 2 Dirichlet边条件（5分）

考虑由 Polyakov 作用量描述的玻色开弦，若其两端在空间 $X^{i}$ 方向上分别满足 Dirichlet 边条件，写出这种情况下空间方向场 $X^{i}(\tau ,\sigma)$ 的模式展开（写出计算过程）。


### 3 D膜作用量（10分）

  
$\mathrm{Dp}$-膜与弦类似，是时空中的 $p + 1$ 维结构，具有 $p$ 个空间维度和1个时间维度。 $\mathrm{Dp}$-膜的一个作用量 $S_{NG}^{(p)}$ 是弦的 Nambu-Goto 作用量的推广，其中 $\sigma^{a}$， $a = 0,\ldots ,p$ 是 $p + 1$ 维世界体（2维世界面的推广）坐标。类似于玻色弦中的处理，证明这个作用量在经典层面上可以被改写为如下推广的 Polyakov 作用量，并确定 $C_{p}$ 和 $D_{p}$ 的取值，写出完整计算过程。(提示：1. 可以先假设 $C_{p}$ 和 $D_{p}$ 都与 $g_{ab}$ 无关，求解后检验这个假设确实得到满足即可；2. 不要照抄书上的过程，你可以比那里做得更好。)


$$S_{NG}^{(p)} = -T_{p}\int d^{p + 1}\sigma \sqrt{-\operatorname{det}\left(\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu \nu}\right)}, \quad (1)$$


$$S_{p}^{(p)} = -D_{p}\int d^{p + 1}\sigma \sqrt{-\operatorname{det}g}\left(g^{ab}\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu \nu} + C_{p}\right), \quad (2)$$


### 4 弯曲时空中的弦（25分）


课上我们只考虑了在平直背景上的弦论。现在我们来考虑在3维反德西特(Anti de Sitter)时空(简记为AdS₃)中运动的弦。由于时间限制，我们只考虑闭弦。下面所有问题解答请写明计算步骤。


#### 4.1 三维时空与群流形（3分）


1. (1分) AdS₃ 可以视为 SL(2, $\mathbb{R}$) 群流形。SL(2, $\mathbb{R}$) 元素 $g$ 的一般表达式为


$$g = \begin{pmatrix} X_{-1} + X_{1} & X_{0} - X_{2} \\ -X_{0} - X_{2} & X_{-1} - X_{1} \end{pmatrix}, \qquad g \in SL(2, \mathbb{R}). \quad (3)$$


证明：如果将上面定义中的 $(X_{-1}, X_{0}, X_{1}, X_{2})$ 作为 $\mathbb{R}^{4}$ 的坐标，那么上式定义中取到的点落在一个三维双曲面上，后者即定义出 AdS₃ 时空。(提示：利用 SL(2, $\mathbb{R}$) 的定义，说明其中参数满足 $X_{-1}^{2} + X_{0}^{2} - X_{1}^{2} - X_{2}^{2} = 1$。)


2. (2分) 除了上述嵌入坐标 $(X_{-1}, X_{0}, X_{1}, X_{2})$ 外，我们还可以选 $(t, \phi , \rho)$ 作为 AdS₃ 的内禀坐标，分别对应时间、角向(周期是 $2\pi$)、径向等3个方向。用 $(t, \phi , \rho)$ 的参数化有如下表达式。问题：计算嵌入坐标 $\mathbb{R}^{4}$ 的 $(X_{-1}, X_{0}, X_{1}, X_{2})$ 与内禀坐标 $(t, \phi , \rho)$ 的关系，即确定 $X_{i} = X_{i}(t, \phi , \rho)$, $i = \{-1, 0, 1, 2\}$。


$$g = e^{i\omega \sigma_{2}}e^{i\rho \sigma_{3}}e^{i\omega \sigma_{2}}, \qquad u = \frac{t + \phi}{2}, \quad v = \frac{t - \phi}{2}, \quad (4)$$

$$\sigma_{1} = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad \sigma_{2} = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad \sigma_{3} = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}. \quad (5)$$


#### 4.2 Wess-Zumino-Witten模型（12分）


由上面分析可知， $g \in SL(2, \mathbb{R})$ 对应于 AdS₃ 中的坐标。因此类比于平直时空中的弦论，我们可以用 $g$ 定义一个由世界面到 AdS₃ 的嵌入映射 $g(\tau , \sigma)$。(这类似于平直时空中的 $X^{\mu}(\tau , \sigma)$。)换句话说，我们可以将 $g(\tau , \sigma)$ 视为世界面上的场。所以定义 AdS₃ 中的弦论可以由写下一个关于 $g(\tau , \sigma)$ 场的作用量开始。一个合适的选择是

$$S = \frac{k}{16\pi} \int_{\Sigma} d\xi^{2} \mathrm{Tr} \left(\partial^{a} g^{-1} \partial_{a} g\right) - \frac{ik}{24\pi} \int_{B} d y^{3} \epsilon_{\alpha \beta \gamma} \, g^{-1} \partial^{\alpha} g \, g^{-1} \partial^{\beta} g \, g^{-1} \partial^{\gamma} g. \quad (6)$$

其中 $\Sigma$ 是世界面， $(\xi^{0},\xi^{1}) = (\tau ,\sigma)$ 是其上坐标， $B$ 是以 $\Sigma$ 为边界的任意 3 维流形。作用量 $S$ 的第一项是动能，第二项是 Wess-Zumino 相互作用项 $S_{\mathrm{WZ}}$。


1. (2分) 对称性。容易发现， $S$ 具有如下对称性

$$g(\tau ,\sigma)\to \Omega_{L}g(\tau ,\sigma)\Omega_{R},\quad \Omega_{L},\Omega_{R}\in SL(2,\mathbb{R}). \quad (7)$$

问题：利用这个对称性的无穷小形式计算对应的守恒流。(提示： $\omega_{L}$ 和 $\omega_{R}$ 是独立的，所以应该得到两个守恒流，可以分别用 $J_{L}$ 和 $J_{R}$ 表示。)

$$\Omega_{L / R} = 1 + \omega_{L / R} + \ldots ,\qquad \delta g = \omega_{L}g + g\omega_{R}, \quad (8)$$

2. (2分) 计算世界面上的能动量张量，并找到能动量张量用上面守恒流表达的形式。

3. (2分) 计算 $g$ 的运动方程。(提示: Wess-Zumino 项 $S_{WZ}$ 虽然定义在三维时空，但是它的变分只在 2 维边界上有贡献。)

4. (+2分，选作) 证明：运动方程的通解具有以下形式(注：此步为选作，若选作并做对的话可以加 2 分；若跳过的话可以后面直接使用这个结果，不扣分。另外，为避免与泡利矩阵记号混淆，后面我们用 $x^{\pm}$，而不是 $\sigma^{\pm}$ 代表世界面的两个光锥方向。)


$$g(\tau ,\sigma) = g_{+}(x^{+})g_{-}(x^{-}),\qquad x^{\pm} = \tau \pm \sigma . \quad (9)$$


5. (4分) 点粒子极限。首先考虑弦的点粒子极限，这时弦的空间延展可以忽略，弦的世界面退化为世界线，由单一参数 $\tau$ 进行参数化。问题：分别找到描述如下 2 种轨迹的运动方程的解 $g = g(\tau)$


(a) 静止在 $\rho = 0$ 处的点粒子的类时世界线；


(b) 在一个等时面，例如 $t = 0$，上的一条类空直线。

(提示：世界线用 $\tau$ 描述，因此可以先写出所求曲线的参数方程，转写为 $g(\tau)$，然后验证满足运动方程。)

6. (2分) 边界条件。由于 AdS₃ 靶空间是群流形，即 $g \in SL(2, \mathbb{R})$，因此沿着弦的空间方向绕一圈之后由(9)描述的左、右行模式 $g_{\pm}$ 不需要回到原来的取值，而是可以差一个 $SL(2, \mathbb{R})$ 变换，即

$$g_{+}(\tau , \sigma + 2\pi) = g_{+}(\tau , \sigma)M, \quad g_{-}(\tau , \sigma + 2\pi) = M^{-1}g_{-}(\tau , \sigma), \quad M \in SL(2, \mathbb{R}).$$

这里由于在同一 $SL(2, \mathbb{R})$ 的等价类中的 $M$ 可以通过 $SL(2, \mathbb{R})$ 变换进行联系，因此上述边条件中仅需考虑的 $M$ 的不同等价类，即

$|\mathrm{Tr}(M)| > 2$ (椭圆型);  $|\mathrm{Tr}(M)| = 2$ (抛物型);  $|\mathrm{Tr}(M)| < 2$ (双曲型).


问题：找到上面问题5中的两个解对应的边条件的等价类。


#### 4.3 经典弦的运动（10分）


1. (2分) 绕圈(winding)解。由前一节中的点粒子极限，我们得到描述世界线的运动方程的解。现在我们希望找到描述弦的世界面的运动方程的解。一个想法是将世界线沿着靶空间 AdS₃ 的角向 $\phi$ 方向转一圈，从而获得弦的空间延展 $\sigma$ 方向。注意到 $\phi$ 方向通过关系(4)进入场 $g$，所以我们可以考虑如下操作。证明：如果 $h = h_{+}(x^{+})h_{-}(x^{-})$ 是运动方程的一个解，那么也是运动方程的解。


$$g = g_{+}g_{-}, \qquad g_{+} = e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}h_{+}(x^{+}), \quad g_{-} = h_{-}(x^{-})e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}}, \quad (10)$$


2. (5分) Spectral flow。上述操作由一个解生成另一个新的解，因此有一个形象的名字叫 spectral flow。证明：按(10)由 $h$ 变为 $g$，对应于时空坐标的如下变换，由此确定 $w_{L / R}$ 的取值范围，并计算由4.2节问题1中得到的守恒流 $J_{L / R}$ 在 $g$ 和 $h$ 这两个解上的取值间的关系，由此说明 $h$ 和 $g$ 是不同的解。进一步计算解 $g$ 和 $h$ 对应的能动量张量的取值间的关系。(提示：第一步需要用到沿世界面转一圈 $\sigma \rightarrow \sigma +2\pi$ 后时空时间 $t$ 不变，时空角向 $\phi$ 可以允许转整数圈的性质。)

$$\begin{aligned} t &\to t+\frac{w_{L}+w_{R}}{2}\tau-\frac{w_{L}-w_{R}}{2}\sigma \\ \phi &\to \phi+\frac{w_{L}+w_{R}}{2}\sigma-\frac{w_{L}-w_{R}}{2}\tau. \end{aligned} \quad (11)$$


3. (3分) 长弦(long string)解。对前面4.2节问题4(b)中得到的类空直线解进行上述 spectral flow 操作，给出对应的新的解，可以用靶空间 AdS₃ 中的位置 $(t, \phi, \rho)$ 作为世界面坐标 $(\tau , \sigma)$ 的函数来表达，描述其物理含义，并计算这个解对应的守恒流。

## 2024.6.13 参考解答

### 1 弦论质量谱

#### 1.1 玻色型开弦前三个物理态

对 $D=26$ 的开弦，临界维数下法向序常数为 $a=1$，质量公式是

$$
M^{2}=\frac{1}{\alpha'}(N-1).
$$

前三个能级分别是：

1. $N=0$：

$$
\ket{0;k},\qquad M^{2}=-\frac{1}{\alpha'}.
$$

这是 tachyon，对应 massive little group $SO(25)$ 的标量表示，自由度数为 $1$。

2. $N=1$：

$$
\alpha_{-1}^{i}\ket{0;k},\qquad i=1,\dots,24,\qquad M^{2}=0.
$$

这是质量为零的矢量态，对应无质量 little group $SO(24)$ 的向量表示，自由度数为 $24$。

3. $N=2$：

$$
\alpha_{-2}^{i}\ket{0;k},\qquad \alpha_{-1}^{i}\alpha_{-1}^{j}\ket{0;k},\qquad M^{2}=\frac{1}{\alpha'}.
$$

总自由度数为

$$
24+\frac{24\cdot 25}{2}=324.
$$

它们重组为 massive little group $SO(25)$ 的对称无迹二阶张量表示，其维数正好是

$$
\frac{25\cdot 26}{2}-1=324.
$$

#### 1.2 $D=10$ 超弦的零质量物理态

对单个左移或右移扇区，零质量态来自：

- NS 扇区第一激发：

$$
\psi_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}},
$$

对应 $SO(8)$ 的向量表示 $8_{v}$。

- R 扇区基态：

$$
\ket{s;k}_{\mathrm{R}},
$$

由零模 Clifford 代数生成，对应 $SO(8)$ 的手征旋量表示 $8_{s}$ 或 $8_{c}$。

如果考虑闭弦，则零质量态由左右扇区张量积得到：

- NS-NS：$8_{v}\otimes 8_{v}=35\oplus 28\oplus 1$，对应 graviton、$B_{\mu\nu}$、dilaton。
- NS-R 与 R-NS：给出 gravitino 和 dilatino。
- R-R：给出各种 Ramond-Ramond 形式场。

### 2 ND 型边界条件

设该方向在 $\sigma=0$ 端满足 Neumann，在 $\sigma=\pi$ 端满足 Dirichlet：

$$
\partial_{\sigma}X^{i}(\tau,0)=0,\qquad X^{i}(\tau,\pi)=y^{i}.
$$

波动方程是

$$
(\partial_{\tau}^{2}-\partial_{\sigma}^{2})X^{i}=0.
$$

满足上述边界条件的本征函数应满足

$$
\partial_{\sigma}f(0)=0,\qquad f(\pi)=0.
$$

因此可以取

$$
f_{r}(\sigma)=\cos(r\sigma),\qquad r\in \mathbb{Z}+\frac{1}{2},
$$

因为

$$
\partial_{\sigma}\cos(r\sigma)\big|_{\sigma=0}=0,\qquad \cos(r\pi)=0.
$$

故模式展开为

$$
X^{i}(\tau,\sigma)=y^{i}+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\cos(r\sigma).
$$

若边界条件反过来是 DN，则改为

$$
X^{i}(\tau,\sigma)=y^{i}+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\sin(r\sigma).
$$

要点是：ND 或 DN 都导致半整数模，而且没有该方向的动量零模。

### 3 $D_{p}$ 膜作用量

先记诱导度规

$$
\gamma_{ab}=\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu\nu}.
$$

题中的 Polyakov 型作用量可写为

$$
S_{p}=-\frac{T_{p}}{2}\int d^{p+1}\sigma \sqrt{-g}\left(g^{ab}\gamma_{ab}+C_{p}\right).
$$

对 $g^{ab}$ 变分，利用

$$
\delta \sqrt{-g}=-\frac{1}{2}\sqrt{-g}\, g_{ab}\delta g^{ab},
$$

得到

$$
\delta S_{p}=-\frac{T_{p}}{2}\int d^{p+1}\sigma \sqrt{-g}
\left[
\gamma_{ab}-\frac{1}{2}g_{ab}(g^{cd}\gamma_{cd}+C_{p})
\right]\delta g^{ab}.
$$

因此 $g_{ab}$ 的运动方程是

$$
\gamma_{ab}-\frac{1}{2}g_{ab}(g^{cd}\gamma_{cd}+C_{p})=0.
$$

取迹得

$$
g^{ab}\gamma_{ab}-\frac{p+1}{2}(g^{cd}\gamma_{cd}+C_{p})=0,
$$

即

$$
(1-p)g^{ab}\gamma_{ab}=(p+1)C_{p}.
$$

若希望极值点满足

$$
g_{ab}=\gamma_{ab},
$$

则有

$$
g^{ab}\gamma_{ab}=p+1.
$$

代回上式得到

$$
(1-p)(p+1)=(p+1)C_{p},
$$

故

$$
C_{p}=-(p-1).
$$

此时运动方程化为

$$
\gamma_{ab}-g_{ab}=0,
$$

所以 on shell 有 $g_{ab}=\gamma_{ab}$。代回作用量：

$$
S_{p}\big|_{g=\gamma}
=-\frac{T_{p}}{2}\int d^{p+1}\sigma \sqrt{-\gamma}\left((p+1)-(p-1)\right)
=-T_{p}\int d^{p+1}\sigma \sqrt{-\gamma}.
$$

这正是标准的 Nambu-Goto 型 $p$-brane 作用量。

题面说明：这里标准等价给出的结论是

$$
C_{p}=-(p-1).
$$

但题面中的 $S_{\mathrm{NG}}$ 比标准写法多了一个整体 $1/2$。若按标准归一化，$S_{\mathrm{NG}}$ 的前系数应为 $-T_{p}$ 而不是 $-T_{p}/2$。也就是说，真正自洽的是常数项答案，上式的整体系数应视为题面笔误。

### 4 玻色化

已知

$$
H(z_{1})H(z_{2})\sim -\log(z_{1}-z_{2}),
$$

因此顶点算子的 OPE 是

$$
e^{aH(z_{1})}e^{bH(z_{2})}\sim (z_{1}-z_{2})^{-ab}e^{(a+b)H(z_{2})}.
$$

由

$$
\psi(z)=e^{aH(z)},\qquad \bar{\psi}(z)=e^{bH(z)}
$$

可得

$$
\psi(z_{1})\bar{\psi}(z_{2})\sim (z_{1}-z_{2})^{-ab}.
$$

要满足

$$
\psi(z_{1})\bar{\psi}(z_{2})\sim \frac{1}{z_{1}-z_{2}},
$$

必须有

$$
ab=1.
$$

另一方面

$$
\psi(z_{1})\psi(z_{2})\sim (z_{1}-z_{2})^{-a^{2}},\qquad
\bar{\psi}(z_{1})\bar{\psi}(z_{2})\sim (z_{1}-z_{2})^{-b^{2}}.
$$

要这两个 OPE 在 $z_{1}\to z_{2}$ 时没有极点、并且首项是正幂的 regular term，需要

$$
a^{2}=b^{2}=-1.
$$

于是

$$
a=\pm i,\qquad b=\mp i.
$$

通常取

$$
\psi=e^{iH},\qquad \bar{\psi}=e^{-iH}.
$$

### 5 鬼场

#### 5.1 $T(z)\beta(w)$ 与 $T(z)\gamma(w)$

给定

$$
\beta(z)\gamma(w)\sim -\frac{1}{z-w},
$$

以及

$$
T=(1-\lambda)(\partial\beta\,\gamma)-\lambda(\beta\,\partial\gamma).
$$

直接做 Wick 收缩可得

$$
T(z)\beta(w)\sim \frac{\lambda\,\beta(w)}{(z-w)^{2}}+\frac{\partial\beta(w)}{z-w},
$$

$$
T(z)\gamma(w)\sim \frac{(1-\lambda)\,\gamma(w)}{(z-w)^{2}}+\frac{\partial\gamma(w)}{z-w}.
$$

所以共形维数是

$$
h_{\beta}=\lambda,\qquad h_{\gamma}=1-\lambda.
$$

#### 5.2 $T(z)T(w)$ 与中心荷

对两个能动张量做双收缩，得到标准形式

$$
T(z)T(w)\sim \frac{c/2}{(z-w)^{4}}+\frac{2T(w)}{(z-w)^{2}}+\frac{\partial T(w)}{z-w},
$$

其中

$$
c=2-12\lambda(1-\lambda)=12\lambda^{2}-12\lambda+2.
$$

这正是 commuting $\beta\gamma$ 系统的中心荷。特别地，当 $\lambda=\frac{3}{2}$ 时，

$$
c=11,
$$

这就是超弦超共形鬼场的结果。

#### 5.3 模式展开与对易关系

按共形维数写成

$$
\beta(z)=\sum_{r}\beta_{r}z^{-r-\lambda},
\qquad
\gamma(z)=\sum_{r}\gamma_{r}z^{-r-(1-\lambda)}.
$$

其中 $r$ 的取值取决于所选 spin structure；在一般抽象讨论中只需记成同一套模指标即可。由 OPE

$$
\beta(z)\gamma(w)\sim -\frac{1}{z-w}
$$

推出模式代数

$$
[\beta_{r},\gamma_{s}]=-\delta_{r+s,0},
$$

并且

$$
[\beta_{r},\beta_{s}]=0,\qquad [\gamma_{r},\gamma_{s}]=0.
$$

## 2025 年春季学期参考解答

### 1 弦态能级

#### 1.1 玻色开弦最低两个能级

对 $D=26$ 的 NN 型开弦，

$$
M^{2}=\frac{1}{\alpha'}(N-1).
$$

- 最低能级 $N=0$：

$$
\ket{0;k},\qquad M^{2}=-\frac{1}{\alpha'},
$$

是标量 tachyon，自由度数 $1$。

- 第二个能级 $N=1$：

$$
\alpha_{-1}^{i}\ket{0;k},\qquad i=1,\dots,24,\qquad M^{2}=0,
$$

是无质量矢量，对应 $SO(24)$ 的向量表示，自由度数 $24$。

#### 1.2 Type IIA 与 Type IIB 的零质量态

先写共同的 NS-NS 扇区：

$$
8_{v}\otimes 8_{v}=35\oplus 28\oplus 1,
$$

分别对应 graviton、Kalb-Ramond 二形式、dilaton。

再看混合扇区：

- IIA：

$$
8_{v}\otimes 8_{c}=8_{s}\oplus 56_{s},\qquad
8_{s}\otimes 8_{v}=8_{c}\oplus 56_{c}.
$$

它们给出两套相反手征的 gravitino 与 dilatino。

- IIB：

$$
8_{v}\otimes 8_{s}=8_{c}\oplus 56_{c},\qquad
8_{s}\otimes 8_{v}=8_{c}\oplus 56_{c},
$$

两套 gravitino 具有相同手征性。

R-R 扇区：

- IIA：

$$
8_{s}\otimes 8_{c}=8_{v}\oplus 56,
$$

对应十维超引力中的奇阶形式势 $C_{1},C_{3}$。

- IIB：

$$
8_{s}\otimes 8_{s}=1\oplus 28\oplus 35_{+},
$$

对应偶阶形式势 $C_{0},C_{2},C_{4}^{+}$。

### 2 Dirichlet 边条件

若两端都满足 Dirichlet：

$$
X^{i}(\tau,0)=y_{0}^{i},\qquad X^{i}(\tau,\pi)=y_{\pi}^{i},
$$

则需解

$$
(\partial_{\tau}^{2}-\partial_{\sigma}^{2})X^{i}=0
$$

并满足两端固定。把静态拉伸部分与振动部分分开，

$$
X^{i}(\tau,\sigma)=X_{\mathrm{cl}}^{i}(\sigma)+X_{\mathrm{osc}}^{i}(\tau,\sigma).
$$

经典部分由边界值唯一决定：

$$
X_{\mathrm{cl}}^{i}(\sigma)=y_{0}^{i}+\frac{y_{\pi}^{i}-y_{0}^{i}}{\pi}\sigma.
$$

振动部分满足齐次边界条件

$$
X_{\mathrm{osc}}^{i}(\tau,0)=X_{\mathrm{osc}}^{i}(\tau,\pi)=0,
$$

故本征函数是 $\sin(n\sigma)$。最终模式展开是

$$
X^{i}(\tau,\sigma)
=y_{0}^{i}+\frac{y_{\pi}^{i}-y_{0}^{i}}{\pi}\sigma
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{i}}{n}e^{-in\tau}\sin(n\sigma).
$$

这里没有该方向的动量零模；取而代之的是端点分离给出的线性拉伸项。

### 3 D 膜作用量

记

$$
\gamma_{ab}=\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu\nu}.
$$

题中的 Polyakov 型作用量是

$$
S_{p}^{(p)}=-D_{p}\int d^{p+1}\sigma \sqrt{-g}\left(g^{ab}\gamma_{ab}+C_{p}\right).
$$

对 $g^{ab}$ 变分得到

$$
\gamma_{ab}-\frac{1}{2}g_{ab}(g^{cd}\gamma_{cd}+C_{p})=0.
$$

若希望 on shell 有

$$
g_{ab}=\gamma_{ab},
$$

则必须满足

$$
C_{p}=-(p-1).
$$

此时代回作用量，

$$
S_{p}^{(p)}\big|_{g=\gamma}
=-D_{p}\int d^{p+1}\sigma \sqrt{-\gamma}\left((p+1)-(p-1)\right)
=-2D_{p}\int d^{p+1}\sigma \sqrt{-\gamma}.
$$

要与

$$
S_{NG}^{(p)}=-T_{p}\int d^{p+1}\sigma \sqrt{-\gamma}
$$

相同，就需要

$$
D_{p}=\frac{T_{p}}{2}.
$$

所以答案是

$$
C_{p}=-(p-1),\qquad D_{p}=\frac{T_{p}}{2}.
$$

### 4 弯曲时空中的弦

#### 4.1 三维时空与群流形

##### 4.1.1 AdS\(_3\) 双曲面条件

由

$$
g=\begin{pmatrix}
X_{-1}+X_{1} & X_{0}-X_{2}\\
-X_{0}-X_{2} & X_{-1}-X_{1}
\end{pmatrix}\in SL(2,\mathbb{R})
$$

可得

$$
\det g=(X_{-1}+X_{1})(X_{-1}-X_{1})-(X_{0}-X_{2})(-X_{0}-X_{2}).
$$

化简得

$$
\det g=X_{-1}^{2}+X_{0}^{2}-X_{1}^{2}-X_{2}^{2}.
$$

而 $g\in SL(2,\mathbb{R})$ 要求 $\det g=1$，故

$$
X_{-1}^{2}+X_{0}^{2}-X_{1}^{2}-X_{2}^{2}=1.
$$

这正是嵌入在 $\mathbb{R}^{2,2}$ 中的 AdS\(_3\) 双曲面。

##### 4.1.2 内禀坐标与嵌入坐标

题面这一问的群元写法有排版歧义。与后面的 $u=(t+\phi)/2$、$v=(t-\phi)/2$ 一致、并且能导出标准 AdS\(_3\) 参数化的写法应理解为

$$
g=e^{iu\sigma_{2}}e^{\rho\sigma_{3}}e^{iv\sigma_{2}}.
$$

先算矩阵乘积，可得

$$
g=
\begin{pmatrix}
e^{\rho}\cos u\cos v-e^{-\rho}\sin u\sin v &
e^{-\rho}\sin u\cos v+e^{\rho}\cos u\sin v \\
-e^{\rho}\sin u\cos v-e^{-\rho}\cos u\sin v &
e^{-\rho}\cos u\cos v-e^{\rho}\sin u\sin v
\end{pmatrix}.
$$

再代入

$$
u=\frac{t+\phi}{2},\qquad v=\frac{t-\phi}{2},
$$

就得到

$$
X_{-1}=\cosh\rho\,\cos t,\qquad
X_{0}=\cosh\rho\,\sin t,
$$

$$
X_{1}=\sinh\rho\,\cos\phi,\qquad
X_{2}=\sinh\rho\,\sin\phi.
$$

#### 4.2 Wess-Zumino-Witten 模型

下面用

$$
j_{a}^{L}=\partial_{a}g\,g^{-1},\qquad
j_{a}^{R}=g^{-1}\partial_{a}g
$$

记左右 Maurer-Cartan 流。

##### 4.2.1 守恒流

把 $\omega_{L},\omega_{R}$ 取为世界面上的局域参数，代入

$$
\delta g=\omega_{L}g+g\omega_{R},
$$

并对作用量变分。整理边界项后得到

$$
\delta S
=-\frac{k}{4\pi}\int d^{2}\xi\,
\operatorname{Tr}\!\left[
(\partial_{-}\omega_{L})(\partial_{+}g\,g^{-1})
+(\partial_{+}\omega_{R})(g^{-1}\partial_{-}g)
\right].
$$

因此 Noether 流可以取为

$$
J_{L,+}=\frac{k}{2\pi}\partial_{+}g\,g^{-1},\qquad J_{L,-}=0,
$$

$$
J_{R,-}=\frac{k}{2\pi}g^{-1}\partial_{-}g,\qquad J_{R,+}=0.
$$

守恒方程是

$$
\partial_{-}J_{L,+}=0,\qquad \partial_{+}J_{R,-}=0.
$$

也就是说，这两个流分别只依赖于 $x^{+}$ 和 $x^{-}$。

##### 4.2.2 能动量张量

Wess-Zumino 项与世界面度规无关，所以 $T_{ab}$ 只来自 kinetic term：

$$
T_{ab}=\frac{k}{8\pi}\operatorname{Tr}
\left(
g^{-1}\partial_{a}g\,g^{-1}\partial_{b}g
-\frac{1}{2}\eta_{ab}\,g^{-1}\partial_{c}g\,g^{-1}\partial^{c}g
\right).
$$

在光锥坐标下，

$$
T_{++}=\frac{k}{8\pi}\operatorname{Tr}\!\left[(g^{-1}\partial_{+}g)^{2}\right],
\qquad
T_{--}=\frac{k}{8\pi}\operatorname{Tr}\!\left[(g^{-1}\partial_{-}g)^{2}\right],
\qquad
T_{+-}=0.
$$

用上面的守恒流表示，就是

$$
T_{++}=\frac{\pi}{2k}\operatorname{Tr}(J_{L,+}^{2}),
\qquad
T_{--}=\frac{\pi}{2k}\operatorname{Tr}(J_{R,-}^{2}).
$$

##### 4.2.3 运动方程

对 $g$ 做任意变分，记

$$
\delta g=g\,\epsilon
\quad\text{或}\quad
\delta g=\epsilon g,
$$

都可得到等价的 Euler-Lagrange 方程。整理后标准结果是

$$
\partial_{-}(\partial_{+}g\,g^{-1})=0,
$$

等价地，

$$
\partial_{+}(g^{-1}\partial_{-}g)=0.
$$

##### 4.2.4 通解

由

$$
\partial_{-}(\partial_{+}g\,g^{-1})=0
$$

知 $\partial_{+}g\,g^{-1}$ 只依赖于 $x^{+}$，故存在只依赖于 $x^{+}$ 的矩阵 $A(x^{+})$ 使

$$
\partial_{+}g=A(x^{+})g.
$$

对固定的 $x^{-}$，这是一个一阶线性方程，因此可写成

$$
g(x^{+},x^{-})=g_{+}(x^{+})g_{-}(x^{-}).
$$

这就是所求通解。

##### 4.2.5 点粒子极限

点粒子极限时，世界面退化成世界线，方程化为

$$
\frac{d}{d\tau}(g^{-1}\dot g)=0,
$$

故解是一个一参数子群。

1. 静止在 $\rho=0$ 处的类时世界线

此时

$$
\rho=0,\qquad \phi=\text{const}.
$$

取 $\phi=0$，再把世界线参数取成 $t=\tau$，由上面的嵌入关系可得

$$
X_{-1}=\cos\tau,\qquad X_{0}=\sin\tau,\qquad X_{1}=X_{2}=0.
$$

相应的群元是

$$
g(\tau)=
\begin{pmatrix}
\cos\tau & \sin\tau\\
-\sin\tau & \cos\tau
\end{pmatrix}
=e^{i\tau\sigma_{2}}.
$$

2. 等时面 $t=0$ 上的一条类空直线

取

$$
t=0,\qquad \phi=0,\qquad \rho=\tau.
$$

则

$$
X_{-1}=\cosh\tau,\qquad X_{1}=\sinh\tau,\qquad X_{0}=X_{2}=0,
$$

故

$$
g(\tau)=
\begin{pmatrix}
e^{\tau} & 0\\
0 & e^{-\tau}
\end{pmatrix}
=e^{\tau\sigma_{3}}.
$$

这同样满足一参数子群方程。

##### 4.2.6 边界条件等价类

把上面的两条世界线嵌入一般解

$$
g=g_{+}(x^{+})g_{-}(x^{-})
$$

后，考察 $\sigma\to \sigma+2\pi$ 导致的 monodromy。

1. 对静止类时世界线，

$$
g=e^{i\tau\sigma_{2}}
=e^{i x^{+}\sigma_{2}/2}e^{i x^{-}\sigma_{2}/2}.
$$

因此可取

$$
M=e^{i\pi\sigma_{2}}=-I,
$$

故

$$
|\operatorname{Tr}M|=2.
$$

2. 对类空直线，

$$
g=e^{\tau\sigma_{3}}
=e^{x^{+}\sigma_{3}/2}e^{x^{-}\sigma_{3}/2},
$$

因此可取

$$
M=e^{\pi\sigma_{3}},
$$

于是

$$
|\operatorname{Tr}M|=2\cosh\pi>2.
$$

所以按题面给出的 trace 判据，这两条轨迹分别落在

$$
|\operatorname{Tr}M|=2,\qquad |\operatorname{Tr}M|>2
$$

这两类中。

#### 4.3 经典弦的运动

##### 4.3.1 winding 解与 spectral flow 的保解性

若

$$
h=h_{+}(x^{+})h_{-}(x^{-})
$$

已经满足运动方程，则定义

$$
g_{+}=e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}h_{+}(x^{+}),
\qquad
g_{-}=h_{-}(x^{-})e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}},
$$

仍然分别只依赖于 $x^{+}$ 与 $x^{-}$。于是

$$
g=g_{+}g_{-}
$$

依然是形如 $g_{+}(x^{+})g_{-}(x^{-})$ 的因式分解解，因此仍满足运动方程。

##### 4.3.2 坐标变换、允许的 $w_{L/R}$、流与能动量

设

$$
h=e^{iu\sigma_{2}}e^{\rho\sigma_{3}}e^{iv\sigma_{2}},
\qquad
u=\frac{t+\phi}{2},\quad v=\frac{t-\phi}{2}.
$$

则 spectral flow 后

$$
u\to u+\frac{w_{R}x^{+}}{2},
\qquad
v\to v+\frac{w_{L}x^{-}}{2}.
$$

因此

$$
t=u+v\to
t+\frac{w_{R}x^{+}+w_{L}x^{-}}{2}
=t+\frac{w_{L}+w_{R}}{2}\tau-\frac{w_{L}-w_{R}}{2}\sigma,
$$

$$
\phi=u-v\to
\phi+\frac{w_{R}x^{+}-w_{L}x^{-}}{2}
=\phi+\frac{w_{L}+w_{R}}{2}\sigma-\frac{w_{L}-w_{R}}{2}\tau.
$$

这就是题目给出的变换。

对闭弦，沿世界面空间圈

$$
\sigma\to \sigma+2\pi
$$

时，时空时间 $t$ 必须单值，因此

$$
\Delta t=-\pi(w_{L}-w_{R})=0
\quad\Longrightarrow\quad
w_{L}=w_{R}.
$$

再要求角坐标只允许绕整数圈，

$$
\Delta\phi=\pi(w_{L}+w_{R})=2\pi w
$$

故

$$
w_{L}=w_{R}=w,\qquad w\in \mathbb{Z}.
$$

对守恒流，直接代入定义得到

$$
J_{L,+}(g)
=e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}
J_{L,+}(h)
e^{-i\frac{w_{R}x^{+}\sigma_{2}}{2}}
+\frac{k}{2\pi}\,\partial_{+}\!\left(e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}\right)
e^{-i\frac{w_{R}x^{+}\sigma_{2}}{2}},
$$

$$
J_{R,-}(g)
=e^{-i\frac{w_{L}x^{-}\sigma_{2}}{2}}
J_{R,-}(h)
e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}}
+\frac{k}{2\pi}\,e^{-i\frac{w_{L}x^{-}\sigma_{2}}{2}}
\partial_{-}\!\left(e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}}\right).
$$

因此 currents 不只是共轭变换，还多出一个常数移位项，所以 $g$ 与 $h$ 不是同一个全局对称变换下的等价解，而是真正不同的经典解。

能动量张量则相应发生谱流平移：

$$
T_{++}(g)
=T_{++}(h)
+\frac{k w_{R}}{8\pi}\operatorname{Tr}\!\left(\sigma_{2}\partial_{+}h\,h^{-1}\right)
+\frac{k w_{R}^{2}}{16\pi}\operatorname{Tr}(\sigma_{2}^{2}),
$$

$$
T_{--}(g)
=T_{--}(h)
+\frac{k w_{L}}{8\pi}\operatorname{Tr}\!\left(\sigma_{2}h^{-1}\partial_{-}h\right)
+\frac{k w_{L}^{2}}{16\pi}\operatorname{Tr}(\sigma_{2}^{2}).
$$

由于 $\operatorname{Tr}(\sigma_{2}^{2})=2$，最后一项是 $w^{2}$ 型常数平移。这正是 spectral flow 改变解的能量和角动量数据的原因。

##### 4.3.3 长弦解

把 4.2.5(b) 的类空直线解

$$
h=e^{\tau\sigma_{3}}
=e^{x^{+}\sigma_{3}/2}e^{x^{-}\sigma_{3}/2}
$$

做等左右谱流 $w_{L}=w_{R}=w\in \mathbb{Z}$，得到

$$
g=e^{i\frac{w x^{+}\sigma_{2}}{2}}e^{\tau\sigma_{3}}e^{i\frac{w x^{-}\sigma_{2}}{2}}.
$$

与标准参数化

$$
g=e^{iu\sigma_{2}}e^{\rho\sigma_{3}}e^{iv\sigma_{2}}
$$

比较可知

$$
u=\frac{w x^{+}}{2},\qquad v=\frac{w x^{-}}{2},\qquad \rho=\tau.
$$

于是

$$
t=u+v=w\tau,\qquad
\phi=u-v=w\sigma,\qquad
\rho=\tau.
$$

所以长弦解可以写成

$$
t(\tau,\sigma)=w\tau,\qquad
\phi(\tau,\sigma)=w\sigma,\qquad
\rho(\tau,\sigma)=\tau.
$$

它的物理意义是：弦沿角向绕行 $w$ 圈，同时径向向边界伸展；因此它不是局域在 AdS 中心附近的短弦，而是能够延伸到大 $\rho$ 区域的 long string。

对应的守恒流可直接由 4.3.2 的一般公式代入 $h=e^{\tau\sigma_{3}}$ 得到：

$$
J_{L,+}(h)=\frac{k}{4\pi}\sigma_{3},
\qquad
J_{R,-}(h)=\frac{k}{4\pi}\sigma_{3},
$$

所以

$$
J_{L,+}(g)
=\frac{k}{2\pi}
\left(
\frac{i w}{2}\sigma_{2}
+e^{i\frac{w x^{+}\sigma_{2}}{2}}\frac{\sigma_{3}}{2}e^{-i\frac{w x^{+}\sigma_{2}}{2}}
\right),
$$

$$
J_{R,-}(g)
=\frac{k}{2\pi}
\left(
\frac{i w}{2}\sigma_{2}
+e^{-i\frac{w x^{-}\sigma_{2}}{2}}\frac{\sigma_{3}}{2}e^{i\frac{w x^{-}\sigma_{2}}{2}}
\right).
$$

## 可能的出题规律

从这两套题看，复习时最值得押的主线有下面几条：

1. 弦谱题几乎必考截距、质量公式和 little group 表示。
   玻色弦要记住

$$
M^{2}_{\text{open}}=\frac{N-1}{\alpha'},
\qquad
M^{2}_{\text{closed}}=\frac{4(N_{L}-1)}{\alpha'},
$$

   超弦要记住 NS 与 R 的零质量态、以及 Type IIA/IIB 的 chirality 区别。

2. 边界条件题高频考模式展开。
   核心不是死记，而是先解波动方程，再由边界条件选基函数：
   NN 用 $\cos n\sigma$，DD 用 $\sin n\sigma$ 加线性拉伸项，ND/DN 用半整数模。

3. $Dp$-brane 题几乎就是“引入辅助世界体度规，再把它消掉”。
   标准答案始终是

$$
C_{p}=-(p-1),
\qquad
D_{p}=\frac{T_{p}}{2}
$$

   或其等价归一化版本。

4. 二维 CFT 题的套路非常固定。
   先由基本 OPE 算 $T(z)\mathcal{O}(w)$，读出共形维数；再算 $T(z)T(w)$ 读出中心荷；最后写模式展开与模代数。

5. bosonization 与 ghost 题常常连在一起考。
   需要熟记

$$
e^{aH(z)}e^{bH(w)}\sim (z-w)^{-ab}e^{(a+b)H(w)},
$$

   以及 commuting $\beta\gamma$ 系统的中心荷

$$
c=2-12\lambda(1-\lambda).
$$

6. AdS\(_3\) 大题的结构很明显。
   先考群流形参数化，再考 WZW 守恒流和应力张量，再考通解分解

$$
g=g_{+}(x^{+})g_{-}(x^{-}),
$$

   最后用 spectral flow 生成 winding/long string 解。

7. 如果今年继续沿这个风格出题，最值得优先背熟的是：
   玻色弦与超弦低能谱、三种开弦边界条件的模式展开、$Dp$-brane 的辅助度规推导、以及 WZW/spectral flow 的标准公式。
