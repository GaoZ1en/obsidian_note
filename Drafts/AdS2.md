## $H_2$ 上 Laplacian 的谱与本征函数（极坐标形式）

本节在二维双曲空间 $H_2$ 上，采用极坐标

$$\begin{align}
\mathrm{d}s^{2} = \mathrm{d}\eta ^{2}+\sinh ^{2}\eta \,\mathrm{d}\phi ^{2}, \qquad \eta \in[0,\infty),\; \phi \in[0,2\pi)
\end{align}$$

来显式推导 Laplace–Beltrami 算符的形式，解出其本征值谱、归一化本征函数以及正交完备关系。过程中如果用到一般性定理（如 Laplace–Beltrami 的一般公式、Sturm–Liouville 理论等），都会先给出表述再说明如何使用。

> 记号约定：本节完全在 $H_2$ 上讨论，拉普拉斯算符记为
> $$
> \Delta = \nabla^a \nabla_a
> $$
> 采用 $(+,+)$ 正定度规约定，因此 $-\Delta$ 是一个正算符，其谱为非负连续谱。

---

### 1. Laplace–Beltrami 算符的一般公式

**定理（Laplace–Beltrami 的坐标表示）** 设 $(M,g)$ 是一个带有度规 $g_{ij}$ 的黎曼流形，$g = \det(g_{ij})$，对任意光滑标量函数 $f$，Laplace–Beltrami 算符在局部坐标中的表达是

$$\begin{align}
\Delta f = \frac{1}{\sqrt{g}}\,\partial_i\bigl(\sqrt{g}\,g^{ij}\,\partial_j f\bigr),
\end{align}$$

其中 $g^{ij}$ 是 $g_{ij}$ 的逆矩阵，$
\sqrt{g} = \sqrt{\det(g_{ij})}$ 是体积元因子。

**使用方式：** 给定某一坐标系下的度规分量 $g_{ij}$，先求 $g^{ij}$ 和 $\sqrt{g}$，然后代入上式即可得到 $\Delta$ 的具体微分算符形式。

---

### 2. 在 $H_2$ 极坐标下的 Laplacian 形式

对 $H_2$ 的极坐标度规

$$\begin{align}
\mathrm{d}s^{2} = \mathrm{d}\eta ^{2}+\sinh ^{2}\eta \,\mathrm{d}\phi ^{2}
\end{align}$$

有

$$\begin{align}
g_{\eta\eta} = 1,\qquad g_{\phi\phi} = \sinh^2 \eta,\qquad g_{\eta\phi}=0.
\end{align}$$

因此

$$\begin{align}
g^{\eta\eta} = 1,\qquad g^{\phi\phi} = \frac{1}{\sinh^2\eta},\qquad g = \det(g_{ij}) = 1\cdot \sinh^2\eta = \sinh^2\eta.
\end{align}$$

于是

$$\begin{align}
\sqrt{g} = \sinh\eta.
\end{align}$$

代入 Laplace–Beltrami 一般公式

$$\begin{align}
\Delta f = \frac{1}{\sqrt{g}}\partial_i\bigl(\sqrt{g}\,g^{ij}\partial_j f\bigr)
\end{align}$$

得到

$$\begin{align}
\Delta f = \frac{1}{\sinh\eta}\partial_\eta\bigl(\sinh\eta\,\partial_\eta f\bigr) + \frac{1}{\sinh\eta}\partial_\phi\Bigl(\sinh\eta\,\frac{1}{\sinh^2\eta}\partial_\phi f\Bigr).
\end{align}$$

注意第二项中 $\sinh\eta$ 对 $\phi$ 无依赖，可以作为常数抽出：

$$\begin{align}
\frac{1}{\sinh\eta}\partial_\phi\Bigl(\sinh\eta\,\frac{1}{\sinh^2\eta}\partial_\phi f\Bigr) = \frac{1}{\sinh\eta}\cdot \sinh\eta\,\partial_\phi\Bigl(\frac{1}{\sinh^2\eta}\partial_\phi f\Bigr) = \frac{1}{\sinh^2\eta}\partial_\phi^2 f.
\end{align}$$

因此

$$\begin{align}
\boxed{\displaystyle \Delta = \partial_\eta^2 + \coth\eta\,\partial_\eta + \frac{1}{\sinh^2\eta}\,\partial_\phi^2 }
\end{align}$$

其中使用了

$$\begin{align}
\frac{1}{\sinh\eta}\partial_\eta(\sinh\eta) = \frac{\cosh\eta}{\sinh\eta} = \coth\eta.
\end{align}$$

对应的体积元为

$$\begin{align}
\mathrm{d}\mu = \sqrt{g}\,\mathrm{d}\eta\,\mathrm{d}\phi = \sinh\eta\,\mathrm{d}\eta\,\mathrm{d}\phi.
\end{align}$$

在 Hilbert 空间 $L^2(H_2,\mathrm{d}\mu)$ 上，$-\Delta$ 是自伴、非负算符，其谱为连续谱。

---

### 3. 本征值问题与变量分离

我们考虑标量场 $\Psi(\eta,\phi)$ 的本征方程

$$\begin{align}
-\Delta\,\Psi(\eta,\phi) = \lambda\,\Psi(\eta,\phi).
\end{align}$$

将上式展开：

$$\begin{align}
-\biggl(\partial_\eta^2 + \coth\eta\,\partial_\eta + \frac{1}{\sinh^2\eta}\,\partial_\phi^2\biggr)\Psi(\eta,\phi) = \lambda\,\Psi(\eta,\phi).
\end{align}$$

利用周期坐标 $\phi$ 的对称性（度规与 $\Delta$ 对 $\phi$ 平移不变），做**变量分离**：

> Ansatz：取
> $$
> \Psi(\eta,\phi) = R(\eta)\,Y(\phi).
> $$

带入方程并除以 $R(\eta)Y(\phi)$：

$$\begin{align}
-\frac{1}{R}\bigl(R'' + \coth\eta\,R'\bigr) - \frac{1}{\sinh^2\eta}\frac{1}{Y}Y'' = \lambda.
\end{align}$$

上式中第一项仅依赖 $\eta$，第二项含有 $\eta$ 和 $\phi$，但可将 $\phi$ 部分单独写出：

$$\begin{align}
\frac{1}{Y}Y'' = -m^2
\end{align}$$

其中 $m$ 为**分离常数**。这一步相当于将方程写成“只依赖 $\phi$ 的部分 + 只依赖 $\eta$ 的部分 = 常数”，利用变量分离的标准技巧：

> **变量分离的一般思想：** 若方程形如 $F_1(x) + F_2(y) = \text{常数}$，且 $x,y$ 独立，则 $F_1$ 与 $F_2$ 必须都等于各自的常数，从而引入分离常数（此处为 $-m^2$）。

---

### 4. 角向本征函数：圆上的 Fourier 模式

角向方程为

$$\begin{align}
Y''(\phi) + m^2 Y(\phi) = 0.
\end{align}$$

要求 $Y(\phi)$ 在 $\phi\in[0,2\pi)$ 上周期，即

$$\begin{align}
Y(\phi+2\pi) = Y(\phi),
\end{align}$$

这是一个标准的**圆上的 Sturm–Liouville 问题**，解为

$$\begin{align}
Y_m(\phi) = \frac{1}{\sqrt{2\pi}} e^{i m \phi},\qquad m\in \mathbb{Z},
\end{align}$$

对应的角向算符 $-\partial_\phi^2$ 的本征值是 $m^2$。

这些 $Y_m$ 在 $L^2([0,2\pi),\mathrm{d}\phi)$ 中构成正交规范基：

$$\begin{align}
\int_0^{2\pi} \!\mathrm{d}\phi\,Y_m(\phi)Y_{m'}^*(\phi) = \delta_{mm'}.
\end{align}$$

> 这里用到的是**Fourier 级数正交性**：
> $$
> \int_0^{2\pi} \frac{\mathrm{d}\phi}{2\pi}\,e^{i(m-m')\phi} = \delta_{mm'}.
> $$
> 这可以从复指数函数的积分直接计算得到。

---

### 5. 径向方程与连续谱

代入 $\frac{1}{Y}Y'' = -m^2$ 后，本征值方程变为

$$\begin{align}
-\bigl(R'' + \coth\eta\,R'\bigr) + \frac{m^2}{\sinh^2\eta} R = \lambda R.
\end{align}$$

这可以写成

$$\begin{align}
R'' + \coth\eta\,R' + \Bigl(\lambda - \frac{m^2}{\sinh^2\eta}\Bigr)R = 0.
\end{align}$$

**物理上常用的记号：** 在 $H_2$ 上，$-\Delta$ 的连续谱通常记作

$$\begin{align}
\lambda = \frac{1}{4} + \rho^2,\qquad \rho \in [0,\infty),
\end{align}$$

对应 principal series 表示。为方便后续，将本征值参数化为

$$\begin{align}
\lambda = \frac{1}{4} + \rho^2,\qquad \rho\ge 0.
\end{align}$$

于是径向方程是

$$\begin{align}
R'' + \coth\eta\,R' + \Bigl(\frac{1}{4}+\rho^2 - \frac{m^2}{\sinh^2\eta}\Bigr)R = 0.
\end{align}$$

这是一个带有“有效势”

$$\begin{align}
V_{\text{eff}}(\eta) = \frac{m^2}{\sinh^2\eta}
\end{align}$$

的一维径向方程。从 Sturm–Liouville 理论（如下）可以看出，对应能谱为连续谱。

> **定理（Sturm–Liouville 形式）** 如果二阶常微分方程可以写为
> $$
> -\frac{\mathrm{d}}{\mathrm{d}x}\bigl(p(x)\frac{\mathrm{d}y}{\mathrm{d}x}\bigr)+q(x) y = \lambda w(x) y,
> $$
> 其中 $p,q,w$ 合适（$p>0,w>0$），则不同本征值 $\lambda$ 对应的本征函数在权重 $w(x)$ 下正交，其本征函数系在适当条件下完备。
>
> **使用方式：** 将径向方程重写成上述形式，对比得到 $p,q,w$，即可套用一般正交性与完备性的结论。

径向方程可以写成 Sturm–Liouville 形式：

首先写成

$$\begin{align}
-\frac{1}{\sinh\eta}\frac{\mathrm{d}}{\mathrm{d}\eta}
	\bigl(\sinh\eta\,R'\bigr) + \frac{m^2}{\sinh^2\eta}R = \lambda R.
\end{align}$$

这等价于

$$\begin{align}
-\frac{\mathrm{d}}{\mathrm{d}\eta}\Bigl(\sinh\eta\,\frac{\mathrm{d}R}{\mathrm{d}\eta}\Bigr) + \frac{m^2}{\sinh\eta}R = \lambda\,\sinh\eta\,R.
\end{align}$$

因此

$$\begin{align}
p(\eta) = \sinh\eta,\quad q(\eta) = \frac{m^2}{\sinh\eta},\quad w(\eta) = \sinh\eta.
\end{align}$$

权重 $w(\eta)$ 正是 $H_2$ 的体积元中的径向部分。

---

### 6. 将径向方程化为超几何/关联 Legendre 方程

为了得到显式解，引入变量

$$\begin{align}
z = \cosh\eta \;\in [1,\infty).
\end{align}$$

注意

$$\begin{align}
\sinh^2\eta = z^2-1,\qquad \frac{\mathrm{d}z}{\mathrm{d}\eta} = \sinh\eta = \sqrt{z^2-1}.
\end{align}$$

设 $R(\eta) = F(z)$，则

$$\begin{align}
\frac{\mathrm{d}R}{\mathrm{d}\eta} = \frac{\mathrm{d}F}{\mathrm{d}z}\frac{\mathrm{d}z}{\mathrm{d}\eta} = \sqrt{z^2-1}\,F'(z),
\end{align}$$

再求一次导数：

\begin{align}
\frac{\mathrm{d}^2R}{\mathrm{d}\eta^2}
 &= \frac{\mathrm{d}}{\mathrm{d}\eta}\Bigl(\sqrt{z^2-1}\,F'(z)\Bigr) \\
 &= \frac{\mathrm{d}z}{\mathrm{d}\eta}\frac{\mathrm{d}}{\mathrm{d}z}\Bigl(\sqrt{z^2-1}\,F'(z)\Bigr) \\
 &= \sqrt{z^2-1}\,\Biggl(\frac{z}{\sqrt{z^2-1}}F'(z) + \sqrt{z^2-1}\,F''(z)\Biggr) \\
 &= z F'(z) + (z^2-1)F''(z).
\end{align}

另一方面，

$$\begin{align}
\coth\eta = \frac{\cosh\eta}{\sinh\eta} = \frac{z}{\sqrt{z^2-1}},
\end{align}$$

因此

$$\begin{align}
\coth\eta\,R'(\eta) = \frac{z}{\sqrt{z^2-1}}\cdot \sqrt{z^2-1}F'(z) = z F'(z).
\end{align}$$

将这些代入径向方程

$$\begin{align}
R'' + \coth\eta\,R' + \Bigl(\frac{1}{4}+\rho^2 - \frac{m^2}{\sinh^2\eta}\Bigr)R = 0
\end{align}$$

得到

$$\begin{align}
(z^2-1)F''(z) + 2z F'(z) + \Bigl(\frac{1}{4}+\rho^2 - \frac{m^2}{z^2-1}\Bigr)F(z) = 0.
\end{align}$$

这是一个标准的**关联 Legendre 方程的变体**。比较一般形式

$$\begin{align}
(1-x^2) y'' -2x y' + \Bigl(\nu(\nu+1) - \frac{\mu^2}{1-x^2}\Bigr) y = 0,
\end{align}$$

注意到这里自变量是 $z\ge 1$ 而不是 $|x|<1$，可以通过 $x\mapsto z$、整体乘上 $-1$ 来对比。将上式重写为

$$\begin{align}
(1-z^2)F''(z) - 2z F'(z) + \Bigl(-\frac{1}{4}-\rho^2 - \frac{m^2}{1-z^2}\Bigr)F(z) = 0.
\end{align}$$

若取参数

$$\begin{align}
\nu = -\frac{1}{2} + i\rho,\qquad \mu = m,
\end{align}$$

则

$$\begin{align}
\nu(\nu+1) = \Bigl(-\frac{1}{2}+i\rho\Bigr)\Bigl(\frac{1}{2}+i\rho\Bigr) = -\frac{1}{4} - \rho^2.
\end{align}$$

这与上式中的系数精确匹配，因此径向方程的解可以写成**关联 Legendre 函数** $P_\nu^{\pm m}(z)$ 的线性组合：

$$\begin{align}
F(z) = A\,P_{-\frac{1}{2}+i\rho}^{m}(z) + B\,P_{-\frac{1}{2}+i\rho}^{-m}(z),\qquad z=\cosh\eta\ge 1.
\end{align}$$

在 $H_2$ 上通常选择在 $\eta\to \infty$ 时满足一定“入射/出射”或归一化条件的线性组合，标准选择之一是

$$\begin{align}
R_{\rho m}(\eta) \propto P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta).
\end{align}$$

因此 $H_2$ 上的本征函数可写成

$$\begin{align}
\boxed{\displaystyle
\Psi_{\rho m}(\eta,\phi) = N_{\rho m}\,P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta)\,\frac{e^{i m \phi}}{\sqrt{2\pi}}, \quad \rho\ge 0,\; m\in\mathbb{Z},}
\end{align}$$

其中 $N_{\rho m}$ 为归一化常数。

---

### 7. 本征值谱的结构

从上面的参数化可知

$$\begin{align}
-\Delta\,\Psi_{\rho m} = \Bigl(\frac{1}{4}+\rho^2\Bigr)\Psi_{\rho m},
\end{align}$$

因此 $H_2$ 上 Laplacian 的谱为

$$\begin{align}
\sigma(-\Delta) = \left\{\frac{1}{4}+\rho^2\;\middle|\;\rho\in[0,\infty)\right\},
\end{align}$$

是从 $1/4$ 开始的连续谱。离散谱只在加入额外势或者考虑不同边界条件时才会出现，这里考虑的是完整的 $H_2$，因此没有离散本征值。

这一结果也可以从 $H_2\cong \mathrm{SL}(2,\mathbb{R})/\mathrm{SO}(2)$ 的群表示理论得到，其中 $-\Delta$ 对应 Casimir 算符，其在 principal series 表示上的本征值正是 $\frac{1}{4}+\rho^2$。此处我们采用的是微分方程的直接推导，不再展开表示论细节。

---

### 8. 正交关系与归一化

**Hilbert 空间与内积：** 在 $H_2$ 上考虑 Hilbert 空间

$$\begin{align}
L^2(H_2,\mathrm{d}\mu),\qquad \mathrm{d}\mu = \sinh\eta\,\mathrm{d}\eta\,\mathrm{d}\phi.
\end{align}$$

内积定义为

$$\begin{align}
\langle \Phi,\Psi\rangle = \int_0^{2\pi}\!\mathrm{d}\phi \int_0^{\infty}\!\mathrm{d}\eta\,\sinh\eta\,\Phi^*(\eta,\phi)\Psi(\eta,\phi).
\end{align}$$

将本征函数写作

$$\begin{align}
\Psi_{\rho m}(\eta,\phi) = N_{\rho m}\,P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta)\,Y_m(\phi),
\end{align}$$

其中 $Y_m(\phi)=\frac{e^{im\phi}}{\sqrt{2\pi}}$。利用角向正交性

$$\begin{align}
\int_0^{2\pi}\!\mathrm{d}\phi\,Y_m(\phi)Y_{m'}^*(\phi) = \delta_{mm'},
\end{align}$$

可将内积化简为纯径向部分：

$$\begin{align}
\langle \Psi_{\rho m},\Psi_{\rho' m'}\rangle &= \delta_{mm'}\,|N_{\rho m}|^2 \int_0^{\infty}\!\mathrm{d}\eta\,\sinh\eta\, P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta) P_{-\frac{1}{2}+i\rho'}^{|m|}(\cosh\eta)^*.
\end{align}$$

为了写出正交性，使用变量 $z=\cosh\eta\in[1,\infty)$，有

$$\begin{align}
\sinh\eta\,\mathrm{d}\eta = \mathrm{d}z,
\end{align}$$

于是径向积分变成

$$\begin{align}
\int_1^{\infty}\!\mathrm{d}z\, P_{-\frac{1}{2}+i\rho}^{|m|}(z)
 P_{-\frac{1}{2}+i\rho'}^{|m|}(z)^*.
\end{align}$$

关联 Legendre 函数在 $[1,\infty)$ 上满足一个连续谱的正交关系。为了写出**显式的归一化常数**，我们需要用到如下积分公式（可在 GR 积分表或特殊函数表中找到）：

> **公式（$P_{-\frac12+i\rho}^{m}$ 的正交性）** 对 $m\in\mathbb{Z}_{\ge 0}$，$\rho,\rho'\ge 0$ 有
> $$
> \int_1^{\infty}\!\mathrm{d}z\,
>  P_{-\frac{1}{2}+i\rho}^{m}(z)
>  P_{-\frac{1}{2}+i\rho'}^{m}(z)^*
>  = \frac{\pi}{2}\,\frac{\bigl|\Gamma(\tfrac12+m+i\rho)\bigr|^2}{\rho\,\tanh(\pi\rho)}\,\delta(\rho-\rho').
> $$

这里用到了 $P_{-\frac12+i\rho}^{m}(z)^* = P_{-\frac12-i\rho}^{m}(z)$ 的性质，因此右边出现了 $|\Gamma|^2$。令

$$\begin{align}
\mathcal{N}_m(\rho) = \frac{\pi}{2}\,\frac{\bigl|\Gamma(\tfrac12+m+i\rho)\bigr|^2}{\rho\,\tanh(\pi\rho)},
\end{align}$$

则有

$$\begin{align}
\int_1^{\infty}\!\mathrm{d}z\, P_{-\frac{1}{2}+i\rho}^{|m|}(z)
 P_{-\frac{1}{2}+i\rho'}^{|m|}(z)^* = \mathcal{N}_{|m|}(\rho)\,\delta(\rho-\rho').
\end{align}$$

回到 $\eta$ 变量，这正是

$$\begin{align}
\int_0^{\infty}\!\mathrm{d}\eta\,\sinh\eta\, P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta)
 P_{-\frac{1}{2}+i\rho'}^{|m|}(\cosh\eta)^* = \mathcal{N}_{|m|}(\rho)\,\delta(\rho-\rho').
\end{align}$$

因此，只要取

$$\begin{align}
N_{\rho m} = \left[\mathcal{N}_{|m|}(\rho)\right]^{-1/2} = \left[\frac{\pi}{2}\,\frac{\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2}{\rho\,\tanh(\pi\rho)}\right]^{-1/2},
\end{align}$$

就有

$$\begin{align}
\boxed{\displaystyle
\langle \Psi_{\rho m},\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\delta(\rho-\rho').}
\end{align}$$

> 上述径向正交关系是 Sturm–Liouville 理论在连续谱情形下的具体体现：$\rho$ 作为连续“本征值参数”，不同 $\rho$ 对应的本征函数在权重 $w(\eta)=\sinh\eta$ 下以 Dirac $\delta$ 形式正交。显式的 $\mathcal{N}_{|m|}(\rho)$ 则通过已知的特殊函数积分公式给出。

---

### 9. 完备关系

**定理（Sturm–Liouville 系统的完备性，连续谱版）** 对于自伴的 Sturm–Liouville 算符，其本征函数（离散谱 + 连续谱）在相应的 Hilbert 空间中构成完备系。连续谱部分的完备性以积分形式表现为“分辨率恒等式”：

$$\begin{align}
\int\!\mathrm{d}\lambda\,|\lambda\rangle\langle\lambda| = \mathbf{1}.
\end{align}$$

在 $H_2$ 的情形，对应到坐标空间中，完备关系可以写为

$$\begin{align}
\sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\, \Psi_{\rho m}(\eta,\phi) \Psi_{\rho m}^*(\eta',\phi') = \frac{1}{\sinh\eta}\,\delta(\eta-\eta')\,\delta(\phi-\phi').
\end{align}$$

下面给出这一关系的**详细推导**。

首先注意 $\Psi_{\rho m}$ 在 $L^2(H_2,\mathrm{d}\mu)$ 中已经按

$$\begin{align}
\langle\Psi_{\rho m},\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\delta(\rho-\rho')
\end{align}$$

规范化。对任意 $\Phi\in L^2(H_2,\mathrm{d}\mu)$，我们希望把它展开为

$$\begin{align}
\Phi(\eta,\phi) = \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\,c_{\rho m}\,\Psi_{\rho m}(\eta,\phi),
\end{align}$$

其中系数由投影给出

$$\begin{align}
c_{\rho m} = \langle\Psi_{\rho m},\Phi\rangle = \int_0^{2\pi}\!\mathrm{d}\phi'\int_0^{\infty}\!\mathrm{d}\eta'\,\sinh\eta'\, \Psi_{\rho m}^*(\eta',\phi')\,\Phi(\eta',\phi').
\end{align}$$

将 $c_{\rho m}$ 带回展开式：

$$\begin{align}
\Phi(\eta,\phi) &= \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\,\Psi_{\rho m}(\eta,\phi) \int_0^{2\pi}\!\mathrm{d}\phi'\int_0^{\infty}\!\mathrm{d}\eta'\,\sinh\eta'\, \Psi_{\rho m}^*(\eta',\phi')\,\Phi(\eta',\phi') \\
 &= \int_0^{2\pi}\!\mathrm{d}\phi'\int_0^{\infty}\!\mathrm{d}\eta'\,\sinh\eta'\, \Biggl[\sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\, \Psi_{\rho m}(\eta,\phi)\Psi_{\rho m}^*(\eta',\phi')\Biggr]\Phi(\eta',\phi').
\end{align}$$

将方括号中的核函数记为

$$\begin{align}
K\bigl((\eta,\phi);(\eta',\phi')\bigr) := \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\, \Psi_{\rho m}(\eta,\phi)\Psi_{\rho m}^*(\eta',\phi').
\end{align}$$

上式就成了

$$\begin{align}
\Phi(\eta,\phi) = \int_0^{2\pi}\!\mathrm{d}\phi'\int_0^{\infty}\!\mathrm{d}\eta'\,\sinh\eta'\, K\bigl((\eta,\phi);(\eta',\phi')\bigr)\,\Phi(\eta',\phi').
\end{align}$$

由于这对任意 $\Phi$ 都成立，$K$ 必须是关于测度 $\sinh\eta'\,\mathrm{d}\eta'\mathrm{d}\phi'$ 的 **Dirac 角标函数**，即满足

$$\begin{align}
\int_0^{2\pi}\!\mathrm{d}\phi'\int_0^{\infty}\!\mathrm{d}\eta'\,\sinh\eta'\, K\bigl((\eta,\phi);(\eta',\phi')\bigr)\,\Phi(\eta',\phi') = \Phi(\eta,\phi)
\end{align}$$

对任意 $\Phi$ 成立。这等价于

$$\begin{align}
K\bigl((\eta,\phi);(\eta',\phi')\bigr) = \frac{1}{\sinh\eta}\,\delta(\eta-\eta')\,\delta(\phi-\phi').
\end{align}$$

于是我们得到所需的完备性关系

$$\begin{align}
\boxed{\displaystyle \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\, \Psi_{\rho m}(\eta,\phi) \Psi_{\rho m}^*(\eta',\phi') = \frac{1}{\sinh\eta}\,\delta(\eta-\eta')\,\delta(\phi-\phi').}
\end{align}$$

> 这就是抽象 Hilbert 空间语言中“分辨率恒等式”
> $$
> \int\!\mathrm{d}\rho\,\sum_m |\Psi_{\rho m}\rangle\langle\Psi_{\rho m}| = \mathbf{1}
> $$
> 在具体坐标表象下的写法。

---

### 10. 小结

1. 在极坐标 $(\eta,\phi)$ 下，$H_2$ 上的 Laplace–Beltrami 算符为

$$\begin{align}
\Delta = \partial_\eta^2 + \coth\eta\,\partial_\eta + \frac{1}{\sinh^2\eta}\,\partial_\phi^2, \qquad \mathrm{d}\mu = \sinh\eta\,\mathrm{d}\eta\,\mathrm{d}\phi.
\end{align}$$

2. 本征值方程 $-\Delta\Psi = \lambda\Psi$ 可变量分离，角向部分给出 Fourier 模式 $Y_m(\phi)=e^{im\phi}/\sqrt{2\pi}$，径向部分经变换 $z=\cosh\eta$ 化为关联 Legendre 方程。
3. 径向解可写成关联 Legendre 函数 $P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta)$，本征值记作 $\lambda=\frac{1}{4}+\rho^2$，$\rho\in[0,\infty)$，构成自伴算符 $-\Delta$ 的连续谱。
4. 适当选择归一化常数 $N_{\rho m}$ 后，本征函数

$$\begin{align}
\Psi_{\rho m}(\eta,\phi) = N_{\rho m}\,P_{-\frac{1}{2}+i\rho}^{|m|}(\cosh\eta) \frac{e^{im\phi}}{\sqrt{2\pi}}
\end{align}$$

	在 $L^2(H_2,\mathrm{d}\mu)$ 中满足

$$\begin{align}
\langle\Psi_{\rho m},\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\delta(\rho-\rho'),
\end{align}$$

	并给出完备性关系

$$\begin{align}
\sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\, \Psi_{\rho m}(\eta,\phi) \Psi_{\rho m}^*(\eta',\phi') = \frac{1}{\sinh\eta}\,\delta(\eta-\eta')\,\delta(\phi-\phi').
\end{align}$$

上述推导给出了从度规出发，到 Laplacian 形式、再到本征值谱和本征函数以及正交完备关系的完整链条，并在关键步骤说明了所用一般定理（Laplace–Beltrami 公式、Sturm–Liouville 理论、Fourier 正交性、关联 Legendre 方程）的具体用法。

---

### 11. Plancherel 测度与谱密度

在前面的讨论中，我们把本征值写成

$$\begin{align}
\lambda = \frac{1}{4} + \rho^2,\qquad \rho\in[0,\infty),
\end{align}$$

谱参数选为 $\rho$，并给出了归一化条件

$$\begin{align}
\langle \Psi_{\rho m},\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\delta(\rho-\rho').
\end{align}$$

在这种归一化下，$\rho$ 空间上的积分本身已经包含了 **Plancherel 测度**（或称谱测度）的信息；也就是说，我们实际上是用“平测度” $\mathrm{d}\rho$，而把非平凡的因子吸收到了本征函数归一化常数 $N_{\rho m}$ 里。

#### 11.1 把测度写在谱参数一侧

Plancherel 测度可以有两种等价的“放置方式”：

1. **放在本征函数一侧：** 像我们现在这样，要求

$$\begin{align}
\langle \Psi_{\rho m},\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\delta(\rho-\rho')
\end{align}$$

	时，谱展开写成

$$\begin{align}
\Phi(\eta,\phi) = \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mathrm{d}\rho\,c_{\rho m}\,\Psi_{\rho m}(\eta,\phi),
\end{align}$$

	此时 Plancherel 测度等效于 **平的** $\mathrm{d}\rho$，而非平凡的因子在 $\Psi_{\rho m}$ 的归一化中体现（即 $N_{\rho m}$ 中的 Gamma 函数与 $\rho\tanh(\pi\rho)$ 等因子）。

2. **放在谱测度一侧：** 也可以选择一个“简单的”本征函数归一化（比如去掉 $N_{\rho m}$ 里复杂的 $\rho$ 依赖），改用非平的谱测度 $\mu_{\mathrm{Pl}}(\rho)\,\mathrm{d}\rho$ 来写展开

$$\begin{align}
\Phi(\eta,\phi) = \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mu_{\mathrm{Pl}}(\rho)\,\mathrm{d}\rho\, ilde c_{\rho m}\,\tilde\Psi_{\rho m}(\eta,\phi),
\end{align}$$

	其中 $\tilde\Psi_{\rho m}$ 比 $\Psi_{\rho m}$ 少了一些归一化因子，相应的 Plancherel 测度 $\mu_{\mathrm{Pl}}(\rho)$ 会显式出现。

我们当前的选择属于第 1 种：本征函数已经按 $\delta(\rho-\rho')$ 规范化，因此 Plancherel 测度被“平凡化”为 $\mathrm{d}\rho$。

#### 11.2 显式的 Plancherel 测度形式

如果希望把所有的 $\rho$ 依赖都写到谱测度里，可以反过来定义一个“未归一化”的本征函数

$$\begin{align}
ilde\Psi_{\rho m}(\eta,\phi) := P_{-\frac12+i\rho}^{|m|}(\cosh\eta)\,\frac{e^{im\phi}}{\sqrt{2\pi}},
\end{align}$$

此时内积为

$$\begin{align}
\langle \tilde\Psi_{\rho m},\tilde\Psi_{\rho' m'}\rangle = \delta_{mm'}\,\mathcal{N}_{|m|}(\rho)\,\delta(\rho-\rho'),
\end{align}$$

其中

$$\begin{align}
\mathcal{N}_{|m|}(\rho) = \frac{\pi}{2}\,\frac{\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2}{\rho\,\tanh(\pi\rho)}.
\end{align}$$

在这种表述下，如果我们把谱展开写成

$$\begin{align}
\Phi(\eta,\phi) = \sum_{m\in\mathbb{Z}}\int_0^{\infty}\!\mu_{\mathrm{Pl}}(\rho)\,\mathrm{d}\rho\, a_{\rho m}\,\tilde\Psi_{\rho m}(\eta,\phi),
\end{align}$$

为了让 Parseval/Plancherel 等式

$$\begin{align}
\|\Phi\|_{L^2(H_2)}^2 = \sum_m\int_0^{\infty}\!\mathrm{d}\rho\,|c_{\rho m}|^2
\end{align}$$

或等价的版本成立，谱测度必须补偿上面 $\mathcal{N}_{|m|}(\rho)$ 的因子，也就是

$$\begin{align}
\mu_{\mathrm{Pl}}(\rho) \propto \frac{1}{\mathcal{N}_{|m|}(\rho)} \propto \frac{\rho\,\tanh(\pi\rho)}{\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2}.
\end{align}$$

更常见的写法（忽略对 $m$ 的显式依赖，并吸收到本征函数定义中）是：对于标量场的 $H_2$ Laplacian，**Plancherel 测度**关于谱参数 $\rho$ 的密度（即“谱密度”）为

$$\begin{align}
\boxed{\displaystyle \mathrm{d}\mu_{\mathrm{Pl}}(\rho) \propto \rho\,\tanh(\pi\rho)\,\mathrm{d}\rho.}
\end{align}$$

群表示论语言下，这正是 $\mathrm{SL}(2,\mathbb{R})$ principal series 表示的 Plancherel 密度；而在我们采用的“$\delta(\rho-\rho')$ 规范化”下，这个因子已经被吸收到本征函数的规范化常数中，因此在谱积分里只剩下形式上“平”的 $\mathrm{d}\rho$。

> 总结来说：
> - 若选取本节中的规范化 $\langle \Psi_{\rho m},\Psi_{\rho' m'}\rangle=\delta_{mm'}\delta(\rho-\rho')$，则谱展开用 **平测度** $\mathrm{d}\rho$，但本征函数中带有非平凡的 $\rho$ 依赖。
> - 若愿意把本征函数“去掉”这些因子，则谱测度需要显式出现 $\rho\tanh(\pi\rho)$，这就是 $H_2$ 上 Laplacian 的 Plancherel 测度（谱密度）。

---

### 12. $\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2$ 的连乘形式

最后给出归一化常数中出现的 $\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2$ 的显式连乘形式，这有助于直接看出其作为 $\rho$ 多项式的结构。

首先利用共轭关系

$$\begin{align}
\Gamma\bigl(\tfrac12+|m|+i\rho\bigr)^* = \Gamma\bigl(\tfrac12+|m|-i\rho\bigr),
\end{align}$$

于是

$$\begin{align}
\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2 = \Gamma\bigl(\tfrac12+|m|+i\rho\bigr) \Gamma\bigl(\tfrac12+|m|-i\rho\bigr).
\end{align}$$

再用 Gamma 函数的递推关系

$$\begin{align}
\Gamma(z+n) = \prod_{k=0}^{n-1}(z+k)\,\Gamma(z),\qquad n\in\mathbb{N},
\end{align}$$

取 $z=\tfrac12+i\rho$、$n=|m|$，得到

$$\begin{align}
\Gamma\bigl(\tfrac12+|m|+i\rho\bigr) = \Biggl[\prod_{k=0}^{|m|-1}\bigl(\tfrac12+i\rho+k\bigr)\Biggr]\Gamma\bigl(\tfrac12+i\rho\bigr),
\end{align}$$

同理

$$\begin{align}
\Gamma\bigl(\tfrac12+|m|-i\rho\bigr) = \Biggl[\prod_{k=0}^{|m|-1}\bigl(\tfrac12-i\rho+k\bigr)\Biggr]\Gamma\bigl(\tfrac12-i\rho\bigr).
\end{align}$$

二者相乘得

\begin{align}
\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2
 &= \Biggl[\prod_{k=0}^{|m|-1}
	 \bigl(\tfrac12+i\rho+k\bigr)
	 \bigl(\tfrac12-i\rho+k\bigr)\Biggr]
	\Gamma\bigl(\tfrac12+i\rho\bigr)
	\Gamma\bigl(\tfrac12-i\rho\bigr) \\
 &= \Biggl[\prod_{k=0}^{|m|-1}
	 \bigl((k+\tfrac12)^2+\rho^2\bigr)\Biggr]
	\bigl|\Gamma(\tfrac12+i\rho)\bigr|^2.
\end{align}

最后再用特殊的 Beta/Gamma 恒等式

$$\begin{align}
\Gamma\bigl(\tfrac12+i\rho\bigr)\Gamma\bigl(\tfrac12-i\rho\bigr) = \frac{\pi}{\cosh(\pi\rho)},
\end{align}$$

得到所需的连乘形式

$$\begin{align}
\boxed{\displaystyle
\bigl|\Gamma(\tfrac12+|m|+i\rho)\bigr|^2 = \frac{\pi}{\cosh(\pi\rho)}
	\prod_{k=0}^{|m|-1}\bigl((k+\tfrac12)^2+\rho^2\bigr).}
\end{align}$$

对 $|m|=0$，积为空积，公式退化为

$$\begin{align}
\bigl|\Gamma(\tfrac12+i\rho)\bigr|^2 = \frac{\pi}{\cosh(\pi\rho)},
\end{align}$$

与上式完全一致。对一般 $|m|\ge 1$，可以清楚地看到额外的有限阶多项式因子 $\prod_{k=0}^{|m|-1}((k+\tfrac12)^2+\rho^2)$ 如何修正 $m=0$ 情形的谱密度。
