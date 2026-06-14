# 2. 标量场主导宇宙

## 2.1 作用量

标量场主导宇宙从 Einstein-Hilbert 作用量加上一个标量场开始：
$$S_\phi=\int d^4x\sqrt{-g}\left[\frac{R}{16\pi G}-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi)\right].$$

这里
$$\mathcal L_\phi=-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi).$$

其中 $V(\phi)$ 是标量场势能。

## 2.2 标量场运动方程

对 $\phi$ 变分。只看物质部分：
$$S_{\phi,\text{matter}}=\int d^4x\sqrt{-g}\left[-\frac12 g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi-V(\phi)\right].$$

变分为
$$\delta S_\phi=\int d^4x\sqrt{-g}\left[-g^{\mu\nu}\partial_\mu\phi\,\partial_\nu\delta\phi-V_\phi\delta\phi\right].$$

对第一项分部积分：
$$-g^{\mu\nu}\partial_\mu\phi\,\partial_\nu\delta\phi\longrightarrow \frac{1}{\sqrt{-g}}\partial_\mu\left(\sqrt{-g}g^{\mu\nu}\partial_\nu\phi\right)\delta\phi.$$

于是运动方程为
$$\boxed{\frac{1}{\sqrt{-g}}\partial_\mu\left(\sqrt{-g}g^{\mu\nu}\partial_\nu\phi\right)=V_\phi}.$$

等价地写作
$$\boxed{\Box\phi-V_\phi=0}$$

或者
$$\boxed{\Box\phi=V_\phi}.$$

注意符号取决于作用量号规约。这里使用的是
$$\mathcal L_\phi=-\frac12(\partial\phi)^2-V.$$

## 2.3 在平直 FRW 背景下的 Klein-Gordon 方程

取平直 FRW：
$$ds^2=-dt^2+a^2(t)d\mathbf x^2.$$

于是
$$\sqrt{-g}=a^3.$$

假设宇宙学背景中标量场均匀：
$$\phi=\phi(t),\qquad \partial_i\phi=0.$$

运动方程变成
$$\frac1{a^3}\partial_t(-a^3\dot\phi)=V_\phi.$$

即
$$-3H\dot\phi-\ddot\phi=V_\phi.$$

所以
$$\boxed{\ddot\phi+3H\dot\phi+V_\phi=0}.$$

这一式子是标量场宇宙学最基本的方程。它和带摩擦的经典粒子运动很像：
$$\ddot\phi+3H\dot\phi=-V_\phi.$$

其中 $3H\dot\phi$ 是由宇宙膨胀造成的 Hubble friction。

## 2.4 共形时间形式

定义共形时间：
$$d\tau=\frac{dt}{a}.$$

记
$$'=\frac{d}{d\tau},\qquad \mathcal H=\frac{a'}a.$$

因为
$$\dot\phi=\frac{d\phi}{dt}=\frac1a\frac{d\phi}{d\tau}=\frac{\phi'}a,$$

并且
$$\ddot\phi=\frac1a\frac{d}{d\tau}\left(\frac{\phi'}a\right)=\frac1{a^2}\left(\phi''-\mathcal H\phi'\right).$$

同时
$$H=\frac{\dot a}{a}=\frac{a'}{a^2}=\frac{\mathcal H}{a}.$$

代入
$$\ddot\phi+3H\dot\phi+V_\phi=0$$

得到
$$\frac1{a^2}(\phi''-\mathcal H\phi')+3\frac{\mathcal H}{a}\frac{\phi'}a+V_\phi=0.$$

整理：
$$\boxed{\phi''+2\mathcal H\phi'+a^2V_\phi=0}.$$

---

# 3. 标量场的能量密度、压强和状态方程

## 3.1 能动张量

标量场能动张量为
$$T_{\mu\nu}=\partial_\mu\phi\partial_\nu\phi-g_{\mu\nu}\left[\frac12 g^{\rho\sigma}\partial_\rho\phi\partial_\sigma\phi+V(\phi)\right].$$

对均匀标量场
$$\phi=\phi(t),$$

有
$$\partial_i\phi=0.$$

因此
$$T_{00}=\frac12\dot\phi^2+V(\phi).$$

所以标量场能量密度为
$$\boxed{\rho_\phi=\frac12\dot\phi^2+V(\phi)}.$$

空间分量给出压强：
$$T_{ij}=a^2\delta_{ij}\left[\frac12\dot\phi^2-V(\phi)\right].$$

所以
$$\boxed{p_\phi=\frac12\dot\phi^2-V(\phi)}.$$

## 3.2 状态方程参数

定义
$$w_\phi=\frac{p_\phi}{\rho_\phi}.$$

代入得到
$$\boxed{w_\phi=\frac{\frac12\dot\phi^2-V(\phi)}{\frac12\dot\phi^2+V(\phi)}}.$$

设
$$K=\frac12\dot\phi^2.$$

则
$$w_\phi=\frac{K-V}{K+V}.$$

几个极限很重要。

若势能主导：
$$K\ll V,$$

则
$$w_\phi\simeq -1.$$

这对应 quasi-de Sitter / dark energy / inflation-like 行为。

若动能主导：
$$K\gg V,$$

则
$$w_\phi\simeq 1.$$

这称为 stiff matter 或 ultra-hard matter。

若时间平均满足
$$K\simeq V,$$

则
$$w_\phi\simeq 0.$$

这类似非相对论物质。

---

# 4. 标量场主导时的 Friedmann 方程

平直宇宙中，标量场主导时：
$$H^2=\frac{8\pi G}{3}\rho_\phi.$$

因此
$$\boxed{H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right]}.$$

第二 Friedmann 方程为
$$\dot H=-4\pi G(\rho_\phi+p_\phi).$$

因为
$$\rho_\phi+p_\phi=\dot\phi^2,$$

所以
$$\boxed{\dot H=-4\pi G\dot\phi^2}.$$

笔记中写成
$$\dot H=-\frac{8\pi G}{2}\dot\phi^2.$$

这与上式相同。

共形时间形式可以写为
$$\boxed{\mathcal H^2=\frac{8\pi G}{3}\left[\frac12\phi'^2+a^2V(\phi)\right]}$$

以及
$$\boxed{\mathcal H'-\mathcal H^2=-4\pi G\phi'^2}.$$

---

# 5. 振荡标量场的平均状态方程

笔记讨论了势能为幂律形式的振荡标量场：
$$V(\phi)=V_0\phi^n.$$

其中通常取 $n$ 为偶数，使得势能有稳定极小值。

标量场方程为
$$\ddot\phi+3H\dot\phi+V_\phi=0.$$

当场在势阱中快速振荡，且振荡周期远小于 Hubble 时间：
$$T_{\rm osc}\ll H^{-1},$$

可以在一个周期内求平均。乘以 $\phi$ 或用 virial theorem 得到
$$\langle \dot\phi^2\rangle=\langle \phi V_\phi\rangle.$$

对于
$$V(\phi)=V_0\phi^n,$$

有
$$\phi V_\phi=nV.$$

所以
$$\boxed{\langle\dot\phi^2\rangle=n\langle V\rangle}.$$

平均能量密度和压强为
$$\langle\rho\rangle=\frac12\langle\dot\phi^2\rangle+\langle V\rangle=\frac n2\langle V\rangle+\langle V\rangle=\frac{n+2}{2}\langle V\rangle.$$

$$\langle p\rangle=\frac12\langle\dot\phi^2\rangle-\langle V\rangle=\frac n2\langle V\rangle-\langle V\rangle=\frac{n-2}{2}\langle V\rangle.$$

因此平均状态方程为
$$\boxed{w=\frac{\langle p\rangle}{\langle\rho\rangle}=\frac{n-2}{n+2}}.$$

几个例子：

- $n=0$：$w=-1$。
- $n=2$：$w=0$。二次势中振荡的标量场平均行为像冷暗物质。
- $n=4$：$w=\frac13$。四次势中振荡的标量场平均行为像辐射。

当
$$n\to\infty,$$

有
$$w\to1.$$

这接近 stiff matter。

---

# 6. Hamilton-Jacobi formulation

## 6.1 把 $H$ 看成 $\phi$ 的函数

从
$$\dot H=-4\pi G\dot\phi^2$$

开始。若 $\phi(t)$ 单调，可以把
$$H=H(\phi)$$

看成场的函数。

于是
$$\dot H=H_{,\phi}\dot\phi.$$

因此
$$H_{,\phi}\dot\phi=-4\pi G\dot\phi^2.$$

若 $\dot\phi\neq0$，则
$$\boxed{\dot\phi=-\frac{1}{4\pi G}H_{,\phi}}$$

或写成
$$\boxed{\dot\phi=-\frac{2}{8\pi G}H_{,\phi}}.$$

这就是 Hamilton-Jacobi 方法的基本关系。

## 6.2 HJ 方程

将
$$\dot\phi=-\frac{1}{4\pi G}H_{,\phi}$$

代入 Friedmann 方程
$$H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right].$$

得到
$$H^2=\frac{8\pi G}{3}\left[\frac12\left(\frac{1}{4\pi G}\right)^2H_{,\phi}^2+V(\phi)\right].$$

整理为
$$\boxed{\left[H_{,\phi}(\phi)\right]^2-12\pi G H^2(\phi)+32\pi^2G^2 V(\phi)=0}.$$

也可等价写作笔记中的形式：
$$\boxed{[H_{,\phi}(\phi)]^2-\frac32(8\pi G)H^2(\phi)+\frac12(8\pi G)^2V(\phi)=0}.$$

因为
$$\frac32(8\pi G)=12\pi G,\qquad \frac12(8\pi G)^2=32\pi^2G^2.$$

这就是标量场宇宙学的 Hamilton-Jacobi 方程。

它的意义是：如果指定
$$H(\phi),$$

就可以反推出势能
$$V(\phi).$$

然后通过
$$\dot\phi=-\frac{1}{4\pi G}H_{,\phi}$$

求出 $\phi(t)$，进而得到
$$H(t),\qquad a(t).$$

## 6.3 HJ 解的吸引子性质

考虑一个背景解
$$\bar H(\phi).$$

加入小扰动
$$H(\phi)=\bar H(\phi)+\delta H(\phi).$$

代入 HJ 方程并线性化。因为 $\bar H$ 满足背景 HJ 方程，一阶扰动满足
$$2\bar H_{,\phi}\delta H_{,\phi}-3(8\pi G)\bar H\delta H=0.$$

即
$$\bar H_{,\phi}\delta H_{,\phi}=\frac32(8\pi G)\bar H\delta H.$$

所以
$$\frac{\delta H_{,\phi}}{\delta H}=\frac32(8\pi G)\frac{\bar H}{\bar H_{,\phi}}.$$

积分得到
$$\boxed{\delta H(\phi)=\delta H(\phi_i)\exp\left[\frac32(8\pi G)\int_{\phi_i}^{\phi}d\phi\,\frac{\bar H(\phi)}{\bar H_{,\phi}(\phi)}\right]}.$$

在很多 inflationary rolling solution 中，场沿某一方向滚动时，上式指数为负，所以 $\delta H$ 随时间衰减。这说明 inflationary solution 往往是 attractor。

---

# 7. 例子：二次势 $V(\phi)=\frac12m^2\phi^2$

取
$$V(\phi)=\frac12m^2\phi^2.$$

标量场方程为
$$\boxed{\ddot\phi+3H\dot\phi+m^2\phi=0}.$$

Friedmann 方程为
$$H=\sqrt{\frac{8\pi G}{3}\left[\frac12\dot\phi^2+\frac12m^2\phi^2\right]}.$$

代入得到一个关于 $\phi(t)$ 的非线性方程：
$$\ddot\phi+3\sqrt{\frac{8\pi G}{3}\left[\frac12\dot\phi^2+\frac12m^2\phi^2\right]}\dot\phi+m^2\phi=0.$$

令 $\dot\phi$ 看作 $\phi$ 的函数：
$$\ddot\phi=\frac{d\dot\phi}{dt}=\frac{d\dot\phi}{d\phi}\dot\phi.$$

于是
$$\frac{d\dot\phi}{d\phi}=-\frac{1}{\dot\phi}\left[3H\dot\phi+m^2\phi\right].$$

代入 $H$：
$$\frac{d\dot\phi}{d\phi}=-\frac1{\dot\phi}\left[3\sqrt{\frac{8\pi G}{3}\left(\frac12\dot\phi^2+\frac12m^2\phi^2\right)}\dot\phi+m^2\phi\right].$$

在动能主导区域
$$\frac12\dot\phi^2\gg V(\phi),$$

可以近似
$$H\simeq \sqrt{\frac{8\pi G}{3}\frac12\dot\phi^2}.$$

若考虑 $\phi>0,\dot\phi<0$，则可得到近似
$$\frac{d\dot\phi}{d\phi}\simeq \sqrt{\frac32\,8\pi G}\,\dot\phi.$$

积分得
$$\boxed{\dot\phi=C\exp\left[\sqrt{\frac32\,8\pi G}\,\phi\right]}.$$

这说明在相空间中，很多初始条件会迅速靠近慢滚吸引子轨道。

---

# 8. Power-law expansion 与指数势

笔记接着讨论如何由给定的尺度因子构造势能。

设宇宙作幂律膨胀：
$$a(t)\sim t^p.$$

则
$$H=\frac{\dot a}{a}=\frac{p}{t}.$$

所以
$$\dot H=-\frac{p}{t^2}.$$

又由
$$\dot H=-4\pi G\dot\phi^2$$

得到
$$\dot\phi^2=\frac{p}{4\pi G}\frac1{t^2}=\frac{2p}{8\pi G}\frac1{t^2}.$$

因此
$$\dot\phi=\sqrt{\frac{2p}{8\pi G}}\frac1t.$$

积分：
$$\phi(t)=\sqrt{\frac{2p}{8\pi G}}\ln t+\text{const}.$$

反解：
$$t=C\exp\left[\sqrt{\frac{8\pi G}{2p}}\phi\right].$$

Friedmann 方程给出
$$H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)\right].$$

代入 $H=p/t$ 和 $\dot\phi^2=\frac{p}{4\pi Gt^2}$，可以解出
$$V(t)=\frac{p(3p-1)}{8\pi G}\frac1{t^2}.$$

再把 $t(\phi)$ 代入：
$$\boxed{V(\phi)=V_0\exp\left[-\sqrt{\frac{2\,8\pi G}{p}}\phi\right]}.$$

记
$$\lambda=\sqrt{\frac{16\pi G}{p}},$$

则
$$\boxed{V(\phi)=V_0e^{-\lambda\phi}}.$$

所以：
$$\boxed{\text{指数势}\quad V(\phi)=V_0e^{-\lambda\phi}\quad\Longleftrightarrow\quad \text{幂律膨胀}\quad a(t)\propto t^p}.$$

并且
$$p=\frac{16\pi G}{\lambda^2}$$

在此规范下成立。

若使用约化 Planck 质量 $M_P^{-2}=8\pi G$，常写作
$$V(\phi)=V_0e^{-\lambda\phi/M_P},\qquad p=\frac{2}{\lambda^2}.$$

---

# 9. Scaling solution

## 9.1 加入物质场

接下来笔记讨论指数势标量场加上物质背景时的 scaling solution。

Friedmann 方程为
$$\boxed{H^2=\frac{8\pi G}{3}\left[\frac12\dot\phi^2+V(\phi)+\rho_m\right]}.$$

第二 Friedmann 方程为
$$\boxed{\dot H=-\frac{8\pi G}{2}\left[\dot\phi^2+\rho_m\right]}.$$

这里物质取 dust，即
$$p_m=0.$$

标量场方程：
$$\boxed{\ddot\phi+3H\dot\phi+V_\phi=0}.$$

物质守恒：
$$\boxed{\dot\rho_m+3H\rho_m=0}.$$

也就是
$$\rho_m\propto a^{-3}.$$

## 9.2 动力系统变量

定义无量纲变量
$$\boxed{x=\frac{\sqrt{8\pi G}\dot\phi}{\sqrt6 H}}$$
$$\boxed{y=\frac{\sqrt{8\pi G V}}{\sqrt3 H}}$$
$$\boxed{z=\frac{\sqrt{8\pi G\rho_m}}{\sqrt3 H}}.$$

它们分别代表：
$$x^2=\frac{\frac12\dot\phi^2}{\rho_{\rm tot}},\qquad y^2=\frac{V}{\rho_{\rm tot}},\qquad z^2=\frac{\rho_m}{\rho_{\rm tot}}.$$

所以 Friedmann 方程变成约束：
$$\boxed{1=x^2+y^2+z^2}.$$

由第二 Friedmann 方程：
$$\frac{\dot H}{H^2}=-3x^2-\frac32z^2.$$

常用 e-fold time：
$$\boxed{N=\ln a}$$

作为动力系统时间变量，因为
$$\frac{d}{dN}=\frac1H\frac{d}{dt}.$$

## 9.3 指数势

scaling solution 通常取指数势
$$\boxed{V(\phi)=V_0e^{-\lambda\sqrt{8\pi G}\phi}}$$

或者在约化 Planck 单位中写成
$$V(\phi)=V_0e^{-\lambda\phi/M_P}.$$

此时
$$\frac{V_\phi}{V}=-\lambda\sqrt{8\pi G}.$$

系统会变成自治系统：
$$\frac{dx}{dN}=F_x(x,y,z),\qquad \frac{dy}{dN}=F_y(x,y,z),\qquad \frac{dz}{dN}=F_z(x,y,z).$$

笔记中的黑板照片列出了具体方程，但照片分辨率太低，无法完全逐项确认。不过标准 dust 背景的二维形式为：
$$\boxed{x'=-3x+\sqrt{\frac32}\lambda y^2+\frac32x(1+x^2-y^2)}$$
$$\boxed{y'=-\sqrt{\frac32}\lambda xy+\frac32y(1+x^2-y^2)}$$

其中
$$'=\frac{d}{dN}.$$

并且
$$z^2=1-x^2-y^2.$$

## 9.4 固定点

笔记中列出了若干固定点。

### A：动能主导解

$$\boxed{A_\pm=(\pm1,0,0)}.$$

此时
$$x^2=1,\qquad y=0,\qquad z=0.$$

也就是 $\frac12\dot\phi^2$ 完全主导宇宙。状态方程
$$w_\phi=1.$$

因此
$$w_{\rm eff}=1.$$

宇宙膨胀为 stiff-fluid 行为：
$$a(t)\propto t^{1/3}.$$

### B：标量场主导解

笔记中写为
$$\boxed{B=\left(\frac{\lambda}{\sqrt6},\sqrt{1-\frac{\lambda^2}{6}},0\right)}.$$

存在条件：
$$\boxed{\lambda^2<6}.$$

如果要求加速膨胀，则需要
$$w_{\rm eff}<-\frac13.$$

对这个解，
$$x^2=\frac{\lambda^2}{6},\qquad y^2=1-\frac{\lambda^2}{6}.$$

标量场状态方程为
$$w_\phi=\frac{x^2-y^2}{x^2+y^2}=x^2-y^2=\frac{\lambda^2}{3}-1.$$

所以
$$\boxed{w_{\rm eff}=\frac{\lambda^2}{3}-1}.$$

加速条件：
$$\frac{\lambda^2}{3}-1<-\frac13$$

即
$$\boxed{\lambda^2<2}.$$

这个解在指数势足够平缓时可对应 power-law inflation。

### C：物质主导解

笔记中写为
$$\boxed{C=(0,0,1)}.$$

此时
$$z^2=1.$$

所以宇宙完全由 dust matter 主导：
$$w_{\rm eff}=0,\qquad a(t)\propto t^{2/3}.$$

### D：scaling solution

笔记中写为类似
$$\boxed{D=\left(\frac{\sqrt{3/2}}{\lambda},\frac{\sqrt{3/2}}{\lambda},\sqrt{1-\frac{3}{\lambda^2}}\right)}.$$

注意：笔记最后一个分量可能漏写平方根。标准 dust scaling solution 是
$$\boxed{x=\sqrt{\frac32}\frac1\lambda,\qquad y=\sqrt{\frac32}\frac1\lambda,\qquad z=\sqrt{1-\frac3{\lambda^2}}}.$$

存在条件：
$$\boxed{\lambda^2>3}.$$

此时
$$x^2=y^2=\frac{3}{2\lambda^2}.$$

所以
$$\Omega_\phi=x^2+y^2=\frac{3}{\lambda^2},\qquad \Omega_m=z^2=1-\frac{3}{\lambda^2}.$$

标量场状态方程：
$$w_\phi=\frac{x^2-y^2}{x^2+y^2}=0.$$

因此标量场平均上模仿 dust matter：
$$\boxed{w_\phi=w_m=0}.$$

总状态方程：
$$\boxed{w_{\rm eff}=0}.$$

这就是所谓 scaling solution：标量场能量密度和物质能量密度以相同比例随宇宙膨胀衰减，因而二者比例保持常数。

---

# 10. 1–4 页核心逻辑总结

这几页的主线可以压缩成如下结构。

首先，引入最小耦合标量场：
$$S=\int d^4x\sqrt{-g}\left[\frac{R}{16\pi G}-\frac12(\partial\phi)^2-V(\phi)\right].$$

对 $\phi$ 变分得到 KG 方程：
$$\ddot\phi+3H\dot\phi+V_\phi=0.$$

它在 FRW 中就是一个受 Hubble friction 阻尼的粒子滚动方程。

其次，标量场等效于理想流体：
$$\rho_\phi=\frac12\dot\phi^2+V,\qquad p_\phi=\frac12\dot\phi^2-V,$$
$$w_\phi=\frac{K-V}{K+V}.$$

势能主导给
$$w\simeq -1,$$

可驱动 inflation / dark energy；动能主导给
$$w\simeq 1.$$

如果标量场在幂律势
$$V\propto \phi^n$$

中快速振荡，则平均状态方程为
$$w=\frac{n-2}{n+2}.$$

特别地，二次势振荡像冷暗物质，四次势振荡像辐射。

然后，使用 Hamilton-Jacobi 形式，将
$$H=H(\phi)$$

视为基本变量：
$$\dot\phi=-\frac{1}{4\pi G}H_{,\phi},$$
$$[H_{,\phi}]^2-12\pi G H^2+32\pi^2G^2V=0.$$

这个形式可以用来从给定的 $H(\phi)$ 构造 $V(\phi)$，也可以研究 inflationary attractor。

最后，指数势
$$V(\phi)=V_0e^{-\lambda\phi}$$

对应幂律膨胀
$$a(t)\propto t^p.$$

加入 dust matter 后，用
$$x=\frac{\sqrt{8\pi G}\dot\phi}{\sqrt6H},\qquad y=\frac{\sqrt{8\pi GV}}{\sqrt3H},\qquad z=\frac{\sqrt{8\pi G\rho_m}}{\sqrt3H}$$

把系统写成自治动力系统，并得到几个固定点：动能主导、标量场主导、物质主导和 scaling solution。其中 scaling solution 满足
$$\Omega_\phi=\frac{3}{\lambda^2},\qquad \Omega_m=1-\frac{3}{\lambda^2},\qquad w_{\rm eff}=0,$$

表示标量场能量密度按物质一样的方式随宇宙膨胀衰减。
