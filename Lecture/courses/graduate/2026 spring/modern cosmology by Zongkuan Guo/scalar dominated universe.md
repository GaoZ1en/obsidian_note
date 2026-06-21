# 2. 标量场主导宇宙

## 2.1 作用量

标量场主导宇宙从 Einstein-Hilbert 作用量加上一个标量场开始：

$$\begin{align}
S_\phi=\int d^4x\sqrt{-g}\left[\frac{R}{16\pi G}-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi)\right].
\end{align}$$

这里

$$\begin{align}
\mathcal L_\phi=-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi).
\end{align}$$

其中 $V(\phi)$ 是标量场势能。

## 2.2 标量场运动方程

对 $\phi$ 变分。只看物质部分：

$$\begin{align}
S_{\phi,\text{matter}}=\int d^4x\sqrt{-g}\left[-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi)\right].
\end{align}$$

变分为

$$\begin{align}
\delta S_\phi=\int d^4x\sqrt{-g}\left[-g^{\mu\nu}\partial_\mu\phi\,\partial_\nu\delta\phi-V_\phi\delta\phi\right].
\end{align}$$

对第一项分部积分：

$$\begin{align}
-g^{\mu\nu}\partial_\mu\phi\,\partial_\nu\delta\phi\longrightarrow \frac{1}{\sqrt{-g}}\partial_\mu\left(\sqrt{-g}g^{\mu\nu}\partial_\nu\phi\right)\delta\phi.
\end{align}$$

于是运动方程为

$$\begin{align}
\boxed{\frac{1}{\sqrt{-g}}\partial_\mu\left(\sqrt{-g}g^{\mu\nu}\partial_\nu\phi\right)=V_\phi}.
\end{align}$$

等价地写作

$$\begin{align}
\boxed{\Box\phi-V_\phi=0}
\end{align}$$

或者

$$\begin{align}
\boxed{\Box\phi=V_\phi}.
\end{align}$$

注意符号取决于作用量号规约。这里使用的是

$$\begin{align}
\mathcal L_\phi=-\frac12(\partial\phi)^2-V.
\end{align}$$

## 2.3 在平直 FRW 背景下的 Klein-Gordon 方程

取平直 FRW：

$$\begin{align}
ds^2=-dt^2+a^2(t)d\mathbf x^2.
\end{align}$$

于是

$$\begin{align}
\sqrt{-g}=a^3.
\end{align}$$

假设宇宙学背景中标量场均匀：

$$\begin{align}
\phi=\phi(t),\qquad \partial_i\phi=0.
\end{align}$$

运动方程变成

$$\begin{align}
\frac1{a^3}\partial_t(-a^3\dot\phi)=V_\phi.
\end{align}$$

即

$$\begin{align}
-3H\dot\phi-\ddot\phi=V_\phi.
\end{align}$$

所以

$$\begin{align}
\boxed{\ddot\phi+3H\dot\phi+V_\phi=0}.
\end{align}$$

这一式子是标量场宇宙学最基本的方程。它和带摩擦的经典粒子运动很像：

$$\begin{align}
\ddot\phi+3H\dot\phi=-V_\phi.
\end{align}$$

其中 $3H\dot\phi$ 是由宇宙膨胀造成的 Hubble friction。

## 2.4 共形时间形式

定义共形时间：

$$\begin{align}
d\tau=\frac{dt}{a}.
\end{align}$$

记

$$\begin{align}
'=\frac{d}{d\tau},\qquad \mathcal H=\frac{a'}a.
\end{align}$$

因为

$$\begin{align}
\dot\phi=\frac{d\phi}{dt}=\frac1a\frac{d\phi}{d\tau}=\frac{\phi'}a,
\end{align}$$

并且

$$\begin{align}
\ddot\phi=\frac1a\frac{d}{d\tau}\left(\frac{\phi'}a\right)=\frac1{a^2}\left(\phi''-\mathcal H\phi'\right).
\end{align}$$

同时

$$\begin{align}
H=\frac{\dot a}{a}=\frac{a'}{a^2}=\frac{\mathcal H}{a}.
\end{align}$$

代入

$$\begin{align}
\ddot\phi+3H\dot\phi+V_\phi=0
\end{align}$$

得到

$$\begin{align}
\frac1{a^2}(\phi''-\mathcal H\phi')+3\frac{\mathcal H}{a}\frac{\phi'}a+V_\phi=0.
\end{align}$$

整理：

$$\begin{align}
\boxed{\phi''+2\mathcal H\phi'+a^2V_\phi=0}.
\end{align}$$

---

# 3. 标量场的能量密度、压强和状态方程

## 3.1 能动张量

标量场能动张量为

$$\begin{align}
T_{\mu\nu}=\partial_\mu\phi\partial_\nu\phi-g_{\mu\nu}\left[\frac12 g^{\rho\sigma}\partial_\rho\phi\partial_\sigma\phi+V(\phi)\right].
\end{align}$$

对均匀标量场

$$\begin{align}
\phi=\phi(t),
\end{align}$$

有

$$\begin{align}
\partial_i\phi=0.
\end{align}$$

因此

$$\begin{align}
T_{00}=\frac12\dot\phi^2+V(\phi).
\end{align}$$

所以标量场能量密度为

$$\begin{align}
\boxed{\rho_\phi=\frac12\dot\phi^2+V(\phi)}.
\end{align}$$

空间分量给出压强：

$$\begin{align}
T_{ij}=a^2\delta_{ij}\left[\frac12\dot\phi^2-V(\phi)\right].
\end{align}$$

所以

$$\begin{align}
\boxed{p_\phi=\frac12\dot\phi^2-V(\phi)}.
\end{align}$$

## 3.2 状态方程参数

定义

$$\begin{align}
w_\phi=\frac{p_\phi}{\rho_\phi}.
\end{align}$$

代入得到

$$\begin{align}
\boxed{w_\phi=\frac{\frac12\dot\phi^2-V(\phi)}{\frac12\dot\phi^2+V(\phi)}}.
\end{align}$$

设

$$\begin{align}
K=\frac12\dot\phi^2.
\end{align}$$

则

$$\begin{align}
w_\phi=\frac{K-V}{K+V}.
\end{align}$$

几个极限很重要。

若势能主导：

$$\begin{align}
K\ll V,
\end{align}$$

则

$$\begin{align}
w_\phi\simeq -1.
\end{align}$$

这对应 quasi-de Sitter / dark energy / inflation-like 行为。

若动能主导：

$$\begin{align}
K\gg V,
\end{align}$$

则

$$\begin{align}
w_\phi\simeq 1.
\end{align}$$

这称为 stiff matter 或 ultra-hard matter。

若时间平均满足

$$\begin{align}
K\simeq V,
\end{align}$$

则

$$\begin{align}
w_\phi\simeq 0.
\end{align}$$

这类似非相对论物质。

---

# 4. 标量场主导时的 Friedmann 方程

平直宇宙中，标量场主导时：

$$\begin{align}
H^2=\frac{8\pi G}{3}\rho_\phi.
\end{align}$$

因此

$$\begin{align}
\boxed{H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right]}.
\end{align}$$

第二 Friedmann 方程为

$$\begin{align}
\dot H=-4\pi G(\rho_\phi+p_\phi).
\end{align}$$

因为

$$\begin{align}
\rho_\phi+p_\phi=\dot\phi^2,
\end{align}$$

所以

$$\begin{align}
\boxed{\dot H=-4\pi G\dot\phi^2}.
\end{align}$$

笔记中写成

$$\begin{align}
\dot H=-\frac{8\pi G}{2}\dot\phi^2.
\end{align}$$

这与上式相同。

共形时间形式可以写为

$$\begin{align}
\boxed{\mathcal H^2=\frac{8\pi G}{3}\left[\frac12\phi'^2+a^2V(\phi)\right]}
\end{align}$$

以及

$$\begin{align}
\boxed{\mathcal H'-\mathcal H^2=-4\pi G\phi'^2}.
\end{align}$$

---

# 5. 振荡标量场的平均状态方程

笔记讨论了势能为幂律形式的振荡标量场：

$$\begin{align}
V(\phi)=V_0\phi^n.
\end{align}$$

其中通常取 $n$ 为偶数，使得势能有稳定极小值。

标量场方程为

$$\begin{align}
\ddot\phi+3H\dot\phi+V_\phi=0.
\end{align}$$

当场在势阱中快速振荡，且振荡周期远小于 Hubble 时间：

$$\begin{align}
T_{\rm osc}\ll H^{-1},
\end{align}$$

可以在一个周期内求平均。乘以 $\phi$ 或用 virial theorem 得到

$$\begin{align}
\langle \dot\phi^2\rangle=\langle \phi V_\phi\rangle.
\end{align}$$

对于

$$\begin{align}
V(\phi)=V_0\phi^n,
\end{align}$$

有

$$\begin{align}
\phi V_\phi=nV.
\end{align}$$

所以

$$\begin{align}
\boxed{\langle\dot\phi^2\rangle=n\langle V\rangle}.
\end{align}$$

平均能量密度和压强为

$$\begin{align}
\langle\rho\rangle=\frac12\langle\dot\phi^2\rangle+\langle V\rangle=\frac n2\langle V\rangle+\langle V\rangle=\frac{n+2}{2}\langle V\rangle.
\end{align}$$

$$\begin{align}
\langle p\rangle=\frac12\langle\dot\phi^2\rangle-\langle V\rangle=\frac n2\langle V\rangle-\langle V\rangle=\frac{n-2}{2}\langle V\rangle.
\end{align}$$

因此平均状态方程为

$$\begin{align}
\boxed{w=\frac{\langle p\rangle}{\langle\rho\rangle}=\frac{n-2}{n+2}}.
\end{align}$$

几个例子：

- $n=0$：$w=-1$。
- $n=2$：$w=0$。二次势中振荡的标量场平均行为像冷暗物质。
- $n=4$：$w=\frac13$。四次势中振荡的标量场平均行为像辐射。

当

$$\begin{align}
n\to\infty,
\end{align}$$

有

$$\begin{align}
w\to1.
\end{align}$$

这接近 stiff matter。

---

# 6. Hamilton-Jacobi formulation

## 6.1 把 $H$ 看成 $\phi$ 的函数

从

$$\begin{align}
\dot H=-4\pi G\dot\phi^2
\end{align}$$

开始。若 $\phi(t)$ 单调，可以把

$$\begin{align}
H=H(\phi)
\end{align}$$

看成场的函数。

于是

$$\begin{align}
\dot H=H_{,\phi}\dot\phi.
\end{align}$$

因此

$$\begin{align}
H_{,\phi}\dot\phi=-4\pi G\dot\phi^2.
\end{align}$$

若 $\dot\phi\neq0$，则

$$\begin{align}
\boxed{\dot\phi=-\frac{1}{4\pi G}H_{,\phi}}
\end{align}$$

或写成

$$\begin{align}
\boxed{\dot\phi=-\frac{2}{8\pi G}H_{,\phi}}.
\end{align}$$

这就是 Hamilton-Jacobi 方法的基本关系。

## 6.2 HJ 方程

将

$$\begin{align}
\dot\phi=-\frac{1}{4\pi G}H_{,\phi}
\end{align}$$

代入 Friedmann 方程

$$\begin{align}
H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right].
\end{align}$$

得到

$$\begin{align}
H^2=\frac{8\pi G}{3}\left[\frac12\left(\frac{1}{4\pi G}\right)^2H_{,\phi}^2+V(\phi)\right].
\end{align}$$

整理为

$$\begin{align}
\boxed{\left[H_{,\phi}(\phi)\right]^2-12\pi G H^2(\phi)+32\pi^2G^2 V(\phi)=0}.
\end{align}$$

也可等价写作笔记中的形式：

$$\begin{align}
\boxed{[H_{,\phi}(\phi)]^2-\frac32(8\pi G)H^2(\phi)+\frac12(8\pi G)^2V(\phi)=0}.
\end{align}$$

因为

$$\begin{align}
\frac32(8\pi G)=12\pi G,\qquad \frac12(8\pi G)^2=32\pi^2G^2.
\end{align}$$

这就是标量场宇宙学的 Hamilton-Jacobi 方程。

它的意义是：如果指定

$$\begin{align}
H(\phi),
\end{align}$$

就可以反推出势能

$$\begin{align}
V(\phi).
\end{align}$$

然后通过

$$\begin{align}
\dot\phi=-\frac{1}{4\pi G}H_{,\phi}
\end{align}$$

求出 $\phi(t)$，进而得到

$$\begin{align}
H(t),\qquad a(t).
\end{align}$$

## 6.3 HJ 解的吸引子性质

考虑一个背景解

$$\begin{align}
\bar H(\phi).
\end{align}$$

加入小扰动

$$\begin{align}
H(\phi)=\bar H(\phi)+\delta H(\phi).
\end{align}$$

代入 HJ 方程并线性化。因为 $\bar H$ 满足背景 HJ 方程，一阶扰动满足

$$\begin{align}
2\bar H_{,\phi}\delta H_{,\phi}-3(8\pi G)\bar H\delta H=0.
\end{align}$$

即

$$\begin{align}
\bar H_{,\phi}\delta H_{,\phi}=\frac32(8\pi G)\bar H\delta H.
\end{align}$$

所以

$$\begin{align}
\frac{\delta H_{,\phi}}{\delta H}=\frac32(8\pi G)\frac{\bar H}{\bar H_{,\phi}}.
\end{align}$$

积分得到

$$\begin{align}
\boxed{\delta H(\phi)=\delta H(\phi_i)\exp\left[\frac32(8\pi G)\int_{\phi_i}^{\phi}d\phi\,\frac{\bar H(\phi)}{\bar H_{,\phi}(\phi)}\right]}.
\end{align}$$

在很多 inflationary rolling solution 中，场沿某一方向滚动时，上式指数为负，所以 $\delta H$ 随时间衰减。这说明 inflationary solution 往往是 attractor。

---

# 7. 例子：二次势 $V(\phi)=\frac12m^2\phi^2$

取

$$\begin{align}
V(\phi)=\frac12m^2\phi^2.
\end{align}$$

标量场方程为

$$\begin{align}
\boxed{\ddot\phi+3H\dot\phi+m^2\phi=0}.
\end{align}$$

Friedmann 方程为

$$\begin{align}
H=\sqrt{\frac{8\pi G}{3}\left[\frac12\dot\phi^2+\frac12m^2\phi^2\right]}.
\end{align}$$

代入得到一个关于 $\phi(t)$ 的非线性方程：

$$\begin{align}
\ddot\phi+3\sqrt{\frac{8\pi G}{3}\left[\frac12\dot\phi^2+\frac12m^2\phi^2\right]}\dot\phi+m^2\phi=0.
\end{align}$$

令 $\dot\phi$ 看作 $\phi$ 的函数：

$$\begin{align}
\ddot\phi=\frac{d\dot\phi}{dt}=\frac{d\dot\phi}{d\phi}\dot\phi.
\end{align}$$

于是

$$\begin{align}
\frac{d\dot\phi}{d\phi}=-\frac{1}{\dot\phi}\left[3H\dot\phi+m^2\phi\right].
\end{align}$$

代入 $H$：

$$\begin{align}
\frac{d\dot\phi}{d\phi}=-\frac1{\dot\phi}\left[3\sqrt{\frac{8\pi G}{3}\left(\frac12\dot\phi^2+\frac12m^2\phi^2\right)}\dot\phi+m^2\phi\right].
\end{align}$$

在动能主导区域

$$\begin{align}
\frac12\dot\phi^2\gg V(\phi),
\end{align}$$

可以近似

$$\begin{align}
H\simeq \sqrt{\frac{8\pi G}{3}\frac12\dot\phi^2}.
\end{align}$$

若考虑 $\phi>0,\dot\phi<0$，则可得到近似

$$\begin{align}
\frac{d\dot\phi}{d\phi}\simeq \sqrt{\frac32\,8\pi G}\,\dot\phi.
\end{align}$$

积分得

$$\begin{align}
\boxed{\dot\phi=C\exp\left[\sqrt{\frac32\,8\pi G}\,\phi\right]}.
\end{align}$$

这说明在相空间中，很多初始条件会迅速靠近慢滚吸引子轨道。

---

# 8. Power-law expansion 与指数势

笔记接着讨论如何由给定的尺度因子构造势能。

设宇宙作幂律膨胀：

$$\begin{align}
a(t)\sim t^p.
\end{align}$$

则

$$\begin{align}
H=\frac{\dot a}{a}=\frac{p}{t}.
\end{align}$$

所以

$$\begin{align}
\dot H=-\frac{p}{t^2}.
\end{align}$$

又由

$$\begin{align}
\dot H=-4\pi G\dot\phi^2
\end{align}$$

得到

$$\begin{align}
\dot\phi^2=\frac{p}{4\pi G}\frac1{t^2}=\frac{2p}{8\pi G}\frac1{t^2}.
\end{align}$$

因此

$$\begin{align}
\dot\phi=\sqrt{\frac{2p}{8\pi G}}\frac1t.
\end{align}$$

积分：

$$\begin{align}
\phi(t)=\sqrt{\frac{2p}{8\pi G}}\ln t+\text{const}.
\end{align}$$

反解：

$$\begin{align}
t=C\exp\left[\sqrt{\frac{8\pi G}{2p}}\phi\right].
\end{align}$$

Friedmann 方程给出

$$\begin{align}
H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right].
\end{align}$$

代入 $H=p/t$ 和 $\dot\phi^2=\frac{p}{4\pi Gt^2}$，可以解出

$$\begin{align}
V(t)=\frac{p(3p-1)}{8\pi G}\frac1{t^2}.
\end{align}$$

再把 $t(\phi)$ 代入：

$$\begin{align}
\boxed{V(\phi)=V_0\exp\left[-\sqrt{\frac{2\,8\pi G}{p}}\phi\right]}.
\end{align}$$

记

$$\begin{align}
\lambda=\sqrt{\frac{16\pi G}{p}},
\end{align}$$

则

$$\begin{align}
\boxed{V(\phi)=V_0e^{-\lambda\phi}}.
\end{align}$$

所以：

$$\begin{align}
\boxed{\text{指数势}\quad V(\phi)=V_0e^{-\lambda\phi}\quad\Longleftrightarrow\quad \text{幂律膨胀}\quad a(t)\propto t^p}.
\end{align}$$

并且

$$\begin{align}
p=\frac{16\pi G}{\lambda^2}
\end{align}$$

在此规范下成立。

若使用约化 Planck 质量 $M_P^{-2}=8\pi G$，常写作

$$\begin{align}
V(\phi)=V_0e^{-\lambda\phi/M_P},\qquad p=\frac{2}{\lambda^2}.
\end{align}$$

---

# 9. Scaling solution

## 9.1 加入物质场

接下来笔记讨论指数势标量场加上物质背景时的 scaling solution。

Friedmann 方程为

$$\begin{align}
\boxed{H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)+\rho_m\right]}.
\end{align}$$

第二 Friedmann 方程为

$$\begin{align}
\boxed{\dot H=-\frac{8\pi G}{2}\left[\dot\phi^2+\rho_m\right]}.
\end{align}$$

这里物质取 dust，即

$$\begin{align}
p_m=0.
\end{align}$$

标量场方程：

$$\begin{align}
\boxed{\ddot\phi+3H\dot\phi+V_\phi=0}.
\end{align}$$

物质守恒：

$$\begin{align}
\boxed{\dot\rho_m+3H\rho_m=0}.
\end{align}$$

也就是

$$\begin{align}
\rho_m\propto a^{-3}.
\end{align}$$

## 9.2 动力系统变量

定义无量纲变量

$$\begin{align}
\boxed{x=\frac{\sqrt{8\pi G}\dot\phi}{\sqrt6 H}}
\end{align}$$

$$\begin{align}
\boxed{y=\frac{\sqrt{8\pi G V}}{\sqrt3 H}}
\end{align}$$

$$\begin{align}
\boxed{z=\frac{\sqrt{8\pi G\rho_m}}{\sqrt3 H}}.
\end{align}$$

它们分别代表：

$$\begin{align}
x^2=\frac{\frac12\dot\phi^2}{\rho_{\rm tot}},\qquad y^2=\frac{V}{\rho_{\rm tot}},\qquad z^2=\frac{\rho_m}{\rho_{\rm tot}}.
\end{align}$$

所以 Friedmann 方程变成约束：

$$\begin{align}
\boxed{1=x^2+y^2+z^2}.
\end{align}$$

由第二 Friedmann 方程：

$$\begin{align}
\frac{\dot H}{H^2}=-3x^2-\frac32z^2.
\end{align}$$

常用 e-fold time：

$$\begin{align}
\boxed{N=\ln a}
\end{align}$$

作为动力系统时间变量，因为

$$\begin{align}
\frac{d}{dN}=\frac1H\frac{d}{dt}.
\end{align}$$

## 9.3 指数势

scaling solution 通常取指数势

$$\begin{align}
\boxed{V(\phi)=V_0e^{-\lambda\sqrt{8\pi G}\phi}}
\end{align}$$

或者在约化 Planck 单位中写成

$$\begin{align}
V(\phi)=V_0e^{-\lambda\phi/M_P}.
\end{align}$$

此时

$$\begin{align}
\frac{V_\phi}{V}=-\lambda\sqrt{8\pi G}.
\end{align}$$

系统会变成自治系统：

$$\begin{align}
\frac{dx}{dN}=F_x(x,y,z),\qquad \frac{dy}{dN}=F_y(x,y,z),\qquad \frac{dz}{dN}=F_z(x,y,z).
\end{align}$$

笔记中的黑板照片列出了具体方程，但照片分辨率太低，无法完全逐项确认。不过标准 dust 背景的二维形式为：

$$\begin{align}
\boxed{x'=-3x+\sqrt{\frac32}\lambda y^2+\frac32x(1+x^2-y^2)}
\end{align}$$

$$\begin{align}
\boxed{y'=-\sqrt{\frac32}\lambda xy+\frac32y(1+x^2-y^2)}
\end{align}$$

其中

$$\begin{align}
'=\frac{d}{dN}.
\end{align}$$

并且

$$\begin{align}
z^2=1-x^2-y^2.
\end{align}$$

## 9.4 固定点

笔记中列出了若干固定点。

### A：动能主导解

$$\begin{align}
\boxed{A_\pm=(\pm1,0,0)}.
\end{align}$$

此时

$$\begin{align}
x^2=1,\qquad y=0,\qquad z=0.
\end{align}$$

也就是 $\frac12\dot\phi^2$ 完全主导宇宙。状态方程

$$\begin{align}
w_\phi=1.
\end{align}$$

因此

$$\begin{align}
w_{\rm eff}=1.
\end{align}$$

宇宙膨胀为 stiff-fluid 行为：

$$\begin{align}
a(t)\propto t^{1/3}.
\end{align}$$

### B：标量场主导解

笔记中写为

$$\begin{align}
\boxed{B=\left(\frac{\lambda}{\sqrt6},\sqrt{1-\frac{\lambda^2}{6}},0\right)}.
\end{align}$$

存在条件：

$$\begin{align}
\boxed{\lambda^2<6}.
\end{align}$$

如果要求加速膨胀，则需要

$$\begin{align}
w_{\rm eff}<-\frac13.
\end{align}$$

对这个解，

$$\begin{align}
x^2=\frac{\lambda^2}{6},\qquad y^2=1-\frac{\lambda^2}{6}.
\end{align}$$

标量场状态方程为

$$\begin{align}
w_\phi=\frac{x^2-y^2}{x^2+y^2}=x^2-y^2=\frac{\lambda^2}{3}-1.
\end{align}$$

所以

$$\begin{align}
\boxed{w_{\rm eff}=\frac{\lambda^2}{3}-1}.
\end{align}$$

加速条件：

$$\begin{align}
\frac{\lambda^2}{3}-1<-\frac13
\end{align}$$

即

$$\begin{align}
\boxed{\lambda^2<2}.
\end{align}$$

这个解在指数势足够平缓时可对应 power-law inflation。

### C：物质主导解

笔记中写为

$$\begin{align}
\boxed{C=(0,0,1)}.
\end{align}$$

此时

$$\begin{align}
z^2=1.
\end{align}$$

所以宇宙完全由 dust matter 主导：

$$\begin{align}
w_{\rm eff}=0,\qquad a(t)\propto t^{2/3}.
\end{align}$$

### D：scaling solution

笔记中写为类似

$$\begin{align}
\boxed{D=\left(\frac{\sqrt{3/2}}{\lambda},\frac{\sqrt{3/2}}{\lambda},\sqrt{1-\frac{3}{\lambda^2}}\right)}.
\end{align}$$

注意：笔记最后一个分量可能漏写平方根。标准 dust scaling solution 是

$$\begin{align}
\boxed{x=\sqrt{\frac32}\frac1\lambda,\qquad y=\sqrt{\frac32}\frac1\lambda,\qquad z=\sqrt{1-\frac3{\lambda^2}}}.
\end{align}$$

存在条件：

$$\begin{align}
\boxed{\lambda^2>3}.
\end{align}$$

此时

$$\begin{align}
x^2=y^2=\frac{3}{2\lambda^2}.
\end{align}$$

所以

$$\begin{align}
\Omega_\phi=x^2+y^2=\frac{3}{\lambda^2},\qquad \Omega_m=z^2=1-\frac{3}{\lambda^2}.
\end{align}$$

标量场状态方程：

$$\begin{align}
w_\phi=\frac{x^2-y^2}{x^2+y^2}=0.
\end{align}$$

因此标量场平均上模仿 dust matter：

$$\begin{align}
\boxed{w_\phi=w_m=0}.
\end{align}$$

总状态方程：

$$\begin{align}
\boxed{w_{\rm eff}=0}.
\end{align}$$

这就是所谓 scaling solution：标量场能量密度和物质能量密度以相同比例随宇宙膨胀衰减，因而二者比例保持常数。

---

# 10. 1–4 页核心逻辑总结

这几页的主线可以压缩成如下结构。

首先，引入最小耦合标量场：

$$\begin{align}
S=\int d^4x\sqrt{-g}\left[\frac{R}{16\pi G}-\frac12(\partial\phi)^2-V(\phi)\right].
\end{align}$$

对 $\phi$ 变分得到 KG 方程：

$$\begin{align}
\ddot\phi+3H\dot\phi+V_\phi=0.
\end{align}$$

它在 FRW 中就是一个受 Hubble friction 阻尼的粒子滚动方程。

其次，标量场等效于理想流体：

$$\begin{align}
\rho_\phi=\frac12\dot\phi^2+V,\qquad p_\phi=\frac12\dot\phi^2-V,
\end{align}$$

$$\begin{align}
w_\phi=\frac{K-V}{K+V}.
\end{align}$$

势能主导给

$$\begin{align}
w\simeq -1,
\end{align}$$

可驱动 inflation / dark energy；动能主导给

$$\begin{align}
w\simeq 1.
\end{align}$$

如果标量场在幂律势

$$\begin{align}
V\propto \phi^n
\end{align}$$

中快速振荡，则平均状态方程为

$$\begin{align}
w=\frac{n-2}{n+2}.
\end{align}$$

特别地，二次势振荡像冷暗物质，四次势振荡像辐射。

然后，使用 Hamilton-Jacobi 形式，将

$$\begin{align}
H=H(\phi)
\end{align}$$

视为基本变量：

$$\begin{align}
\dot\phi=-\frac{1}{4\pi G}H_{,\phi},
\end{align}$$

$$\begin{align}
[H_{,\phi}]^2-12\pi G H^2+32\pi^2G^2V=0.
\end{align}$$

这个形式可以用来从给定的 $H(\phi)$ 构造 $V(\phi)$，也可以研究 inflationary attractor。

最后，指数势

$$\begin{align}
V(\phi)=V_0e^{-\lambda\phi}
\end{align}$$

对应幂律膨胀

$$\begin{align}
a(t)\propto t^p.
\end{align}$$

加入 dust matter 后，用

$$\begin{align}
x=\frac{\sqrt{8\pi G}\dot\phi}{\sqrt6H},\qquad y=\frac{\sqrt{8\pi GV}}{\sqrt3H},\qquad z=\frac{\sqrt{8\pi G\rho_m}}{\sqrt3H}
\end{align}$$

把系统写成自治动力系统，并得到几个固定点：动能主导、标量场主导、物质主导和 scaling solution。其中 scaling solution 满足

$$\begin{align}
\Omega_\phi=\frac{3}{\lambda^2},\qquad \Omega_m=1-\frac{3}{\lambda^2},\qquad w_{\rm eff}=0,
\end{align}$$

表示标量场能量密度按物质一样的方式随宇宙膨胀衰减。
