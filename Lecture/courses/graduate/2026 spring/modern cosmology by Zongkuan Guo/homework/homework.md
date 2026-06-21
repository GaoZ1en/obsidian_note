## 1. 3.9 第一次作业

### 1.1 由作用量推导运动方程

题目：作用量

$$\begin{align}
S=\int \mathrm{d}^4x\sqrt{-g}\left(\frac{f(R)}{16\pi G}+\mathcal L_{\rm SM}\right)
\end{align}$$

推导此作用量下的方程。

Hints：运动方程为

$$\begin{align}
f'(R)R_{\mu\nu}-\frac12 f(R)g_{\mu\nu}-(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box)f'(R)=8\pi G T_{\mu\nu}.
\end{align}$$

其中

$$\begin{align}
f'(R)=\frac{\mathrm{d}f}{\mathrm{d}R},\qquad \Box f'(R)=g^{\mu\nu}\nabla_\mu\nabla_\nu f'(R),
\end{align}$$

$$\begin{align}
T_{\mu\nu}=-2\frac{\delta \mathcal L_{\rm SM}}{\delta g^{\mu\nu}}+g_{\mu\nu}\mathcal L_{\rm SM}.
\end{align}$$

解答：对度规做变分。利用

$$\begin{align}
\delta(\sqrt{-g})=-\frac12 \sqrt{-g}\,g_{\mu\nu}\delta g^{\mu\nu},
\end{align}$$

以及

$$\begin{align}
\delta R=R_{\mu\nu}\delta g^{\mu\nu}+g_{\mu\nu}\Box\delta g^{\mu\nu}-\nabla_\mu\nabla_\nu\delta g^{\mu\nu},
\end{align}$$

可得引力部分的变分

$$\begin{align}
\delta S_g=\frac{1}{16\pi G}\int \mathrm{d}^4x\,\sqrt{-g}\left[f'(R)\delta R-\frac12 f(R)g_{\mu\nu}\delta g^{\mu\nu}\right].
\end{align}$$

把 $\delta R$ 代入，并对含有 $\nabla\nabla \delta g^{\mu\nu}$ 的项分部积分，忽略边界项，得到

$$\begin{align}
\delta S_g=\frac{1}{16\pi G}\int \mathrm{d}^4x\,\sqrt{-g}\left[f'(R)R_{\mu\nu}-\frac12 f(R)g_{\mu\nu}-(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box)f'(R)\right]\delta g^{\mu\nu}.
\end{align}$$

物质部分的变分为

$$\begin{align}
\delta S_{\rm SM}=-\frac12\int \mathrm{d}^4x\,\sqrt{-g}\,T_{\mu\nu}\delta g^{\mu\nu}.
\end{align}$$

总变分

$$\begin{align}
\delta S=\delta S_g+\delta S_{\rm SM}
\end{align}$$

对任意 $\delta g^{\mu\nu}$ 都应为零，因此得到场方程

$$\begin{align}
f'(R)R_{\mu\nu}-\frac12 f(R)g_{\mu\nu}-(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box)f'(R)=8\pi G T_{\mu\nu}.
\end{align}$$

若取 $f(R)=R$，则立刻退化回 Einstein 场方程

$$\begin{align}
R_{\mu\nu}-\frac12 R g_{\mu\nu}=8\pi G T_{\mu\nu}.
\end{align}$$

### 1.2 共形变换

题目：在对度规的共形变换下

$$\begin{align}
\hat g_{\mu\nu}=\Omega^2(x)g_{\mu\nu},
\end{align}$$

推导 Ricci 标量。

Hints：结果为

$$\begin{align}
\hat R=\frac{1}{\Omega^2}R-\frac{6}{\Omega^3}\Box\Omega.
\end{align}$$

有能力的同学可以尝试把结论推广到 $D$ 维时空。

解答：记

$$\begin{align}
\hat g_{\mu\nu}=\Omega^2 g_{\mu\nu},\qquad \hat g^{\mu\nu}=\Omega^{-2}g^{\mu\nu}.
\end{align}$$

两套联络之差定义为

$$\begin{align}
C^\rho_{\mu\nu}\equiv \hat\Gamma^\rho_{\mu\nu}-\Gamma^\rho_{\mu\nu}.
\end{align}$$

直接计算可得

$$\begin{align}
C^\rho_{\mu\nu}=\delta^\rho_\mu \partial_\nu\ln\Omega+\delta^\rho_\nu \partial_\mu\ln\Omega-g_{\mu\nu}\nabla^\rho\ln\Omega.
\end{align}$$

再由

$$\begin{align}
\hat R_{\mu\nu}=R_{\mu\nu}+\nabla_\rho C^\rho_{\mu\nu}-\nabla_\nu C^\rho_{\mu\rho}+C^\rho_{\rho\lambda}C^\lambda_{\mu\nu}-C^\rho_{\nu\lambda}C^\lambda_{\mu\rho}
\end{align}$$

可得一般 $D$ 维结果

$$\begin{align}
\hat R=\Omega^{-2}\left[R-2(D-1)\Box\ln\Omega-(D-1)(D-2)(\nabla\ln\Omega)^2\right].
\end{align}$$

在四维时空 $D=4$，

$$\begin{align}
\hat R=\Omega^{-2}\left[R-6\Box\ln\Omega-6(\nabla\ln\Omega)^2\right].
\end{align}$$

再利用恒等式

$$\begin{align}
\Box\ln\Omega+(\nabla\ln\Omega)^2=\Omega^{-1}\Box\Omega,
\end{align}$$

可以把它改写成

$$\begin{align}
\hat R=\frac{1}{\Omega^2}R-\frac{6}{\Omega^3}\Box\Omega.
\end{align}$$

这就是题目给出的形式。

### 1.3 LTB 洋葱瓣模型

题目：模型的度规为

$$\begin{align}
\mathrm{d}s^2=-\mathrm{d}t^2+X^2(t,r)\mathrm{d}r^2+Y^2(t,r)\left(\mathrm{d}\theta^2+\sin^2\theta\,\mathrm{d}\phi^2\right).
\end{align}$$

试求解 LTB 模型的 Einstein 张量。

Hints：若使用程序计算，请提供所使用的程序截图 pdf 和计算结果。

解答：直接手算非常冗长，最稳妥的方法是先由该度规求联络与 Ricci 张量，再构造

$$\begin{align}
G_{\mu\nu}=R_{\mu\nu}-\frac12 R g_{\mu\nu}.
\end{align}$$

把结果整理后，非零分量为

$$\begin{aligned}
G_{tt}&=\frac{2Y X'Y'-X\!\left(Y'^2+2YY''\right)+2X^2Y\dot X\dot Y+X^3\!\left(1+\dot Y^2\right)}{X^3Y^2},\\
G_{tr}&=\frac{2Y'\dot X-2X\dot Y'}{XY},\\
G_{rr}&=\frac{Y'^2-X^2\!\left(1+\dot Y^2+2Y\ddot Y\right)}{Y^2},\\
G_{\theta\theta}&=-\frac{Y\left[X'Y'+X\left(-Y''+X\left(\dot X\dot Y+Y\ddot X+X\ddot Y\right)\right)\right]}{X^3},\\
G_{\phi\phi}&=\sin^2\theta\,G_{\theta\theta}.
\end{aligned}$$

其中

$$\begin{align}
\dot X\equiv \partial_t X,\qquad X'\equiv \partial_r X,\qquad \dot Y\equiv \partial_t Y,\qquad Y'\equiv \partial_r Y.
\end{align}$$

若用程序验证，可用 `xAct`/`xTras` 按坐标分量直接输出 Einstein 张量分量。

## 2. 3.23 第二次作业

### 2.1 急动参数

题目：定义宇宙学减速参数 $q$、急动参数 $j$ 为

$$\begin{align}
q\equiv -\frac{a^{(2)}}{aH^2}=-\frac{aa^{(2)}}{(a^{(1)})^2},
\end{align}$$

$$\begin{align}
j\equiv \frac{a^{(3)}}{aH^3}=\frac{a^2a^{(3)}}{(a^{(1)})^3}.
\end{align}$$

将光度距离 $d_L$ 在 $z=0$ 处展开到 $z^3$ 阶。其中 $a^{(i)}$ 表示尺度因子对坐标时间 $t$ 的导数。取 $z=0$ 时刻的

$$\begin{align}
a=1,\qquad q=q_0,\qquad j=j_0.
\end{align}$$

Hint：结果为

$$\begin{align}
D_L(z)=\frac{1}{H_0}\left[z+\frac12(1-q_0)z^2-\frac16(1-q_0-3q_0^2+j_0)z^3+O(z^4)\right].
\end{align}$$

解答：由

$$\begin{align}
1+z=\frac{1}{a}
\end{align}$$

以及

$$\begin{align}
\frac{\mathrm{d}z}{\mathrm{d}t}=-(1+z)H
\end{align}$$

可把 $H$ 在 $z=0$ 附近展开为

$$\begin{align}
H(z)=H_0+\left.\frac{\mathrm{d}H}{\mathrm{d}z}\right|_0 z+\frac12\left.\frac{\mathrm{d}^2H}{\mathrm{d}z^2}\right|_0 z^2+O(z^3).
\end{align}$$

由 $q=-1-\dot H/H^2$ 可得

$$\begin{align}
\left.\frac{\mathrm{d}H}{\mathrm{d}z}\right|_0=(1+q_0)H_0.
\end{align}$$

再利用 jerk 参数，可得

$$\begin{align}
\left.\frac{\mathrm{d}^2H}{\mathrm{d}z^2}\right|_0=(j_0-q_0^2)H_0.
\end{align}$$

因此

$$\begin{align}
H(z)=H_0\left[1+(1+q_0)z+\frac12(j_0-q_0^2)z^2+O(z^3)\right].
\end{align}$$

平直情形下

$$\begin{align}
d_L(z)=(1+z)\int_0^z \frac{\mathrm{d}z'}{H(z')}.
\end{align}$$

把上式做倒数展开：

$$\begin{align}
\frac{1}{H(z)}=\frac{1}{H_0}\left[1-(1+q_0)z+\left(1+2q_0+\frac32 q_0^2-\frac12 j_0\right)z^2+O(z^3)\right].
\end{align}$$

积分后再乘上 $(1+z)$，得到

$$\begin{align}
d_L(z)=\frac{1}{H_0}\left[z+\frac12(1-q_0)z^2-\frac16(1-q_0-3q_0^2+j_0)z^3+O(z^4)\right].
\end{align}$$

若保留单位 $c$，则应写成

$$\begin{align}
d_L(z)=\frac{c}{H_0}\left[z+\frac12(1-q_0)z^2-\frac16(1-q_0-3q_0^2+j_0)z^3+O(z^4)\right].
\end{align}$$

### 2.2 设计宇宙

题目：取标准宇宙学模型 $\Lambda$CDM，必要宇宙学参数

$$\begin{align}
\Omega_m=0.3,\qquad H_0=70\,{\rm km/s/Mpc},
\end{align}$$

辐射忽略不计。计算红移 $z=1$ 时刻的：

1. 密度 $\rho(z=1)$，压强 $p(z=1)$，哈勃参数 $H(z=1)$；
1. 从大爆炸起开始计算的宇宙年龄 $t(z=1)$；
1. 光度距离 $D_L(z=1)$，角直径距离 $D_A(z=1)$。

解答：忽略辐射后，平直 $\Lambda$CDM 中

$$\begin{align}
H(z)=H_0\sqrt{\Omega_m(1+z)^3+\Omega_\Lambda},
\end{align}$$

其中

$$\begin{align}
\Omega_\Lambda=1-\Omega_m=0.7.
\end{align}$$

于是

$$\begin{align}
H(z=1)=70\sqrt{0.3\times 2^3+0.7}\,{\rm km/s/Mpc}\approx 123.25\,{\rm km/s/Mpc}.
\end{align}$$

总能量密度为

$$\begin{align}
\rho(z)=\frac{3H^2(z)}{8\pi G}.
\end{align}$$

代入上式得到

$$\begin{align}
\rho(z=1)\approx 1.7\times 10^{-26}\,{\rm kg/m^3}.
\end{align}$$

压强由物质和宇宙学常数共同给出。物质无压强，故

$$\begin{align}
p(z)=p_\Lambda=-\rho_\Lambda=-\frac{3H_0^2}{8\pi G}\Omega_\Lambda,
\end{align}$$

从而

$$\begin{align}
p(z=1)\approx -6.3\times 10^{-27}\,{\rm kg/m^3}
\end{align}$$

这里写的是 $c=1$ 记号下与能量密度同量纲的“等效质量密度”形式；若改写成 SI 压强单位，则

$$\begin{align}
p(z=1)\approx -5.7\times 10^{-10}\,{\rm Pa}.
\end{align}$$

宇宙在红移 $z$ 时的年龄为

$$\begin{align}
t(z)=\int_z^\infty \frac{\mathrm{d}z'}{(1+z')H(z')}.
\end{align}$$

数值积分得

$$\begin{align}
t(z=1)\approx 5.75\,{\rm Gyr}.
\end{align}$$

共动距离为

$$\begin{align}
\chi(z)=\int_0^z \frac{c\,\mathrm{d}z'}{H(z')}.
\end{align}$$

数值积分得

$$\begin{align}
\chi(z=1)\approx 3.30\,{\rm Gpc}.
\end{align}$$

平直宇宙中

$$\begin{align}
D_L=(1+z)\chi,\qquad D_A=\frac{\chi}{1+z},
\end{align}$$

因此

$$\begin{align}
D_L(z=1)\approx 6.61\,{\rm Gpc},\qquad D_A(z=1)\approx 1.65\,{\rm Gpc}.
\end{align}$$

## 3. 3.30 第三次作业

本次作业不交，发给大家用来期末复习参考。

### 3.1 中微子温度

题目：假设中微子有三代且其反粒子为自身。基于热大爆炸宇宙模型，中微子退耦之后在宇宙中形成中微子背景，即宇宙中微子背景，cosmic neutrino background，简写为 CNB 或 C$\nu$B。

1. 计算中微子退耦时的温度为多少 MeV？
1. 已知现今宇宙中的背景光子温度为 $2.73\,{\rm K}$，求现今宇宙中的背景中微子温度是多少 K？

计算时约化普朗克质量取

$$\begin{align}
M_P=2.44\times 10^{18}\,{\rm GeV},
\end{align}$$

费米常数取

$$\begin{align}
G_F=1.16\times 10^{-5}\,{\rm GeV}^{-2}.
\end{align}$$

解答：中微子退耦条件是

$$\begin{align}
\Gamma_\nu\sim H.
\end{align}$$

相对论极限下，弱相互作用截面数量级为

$$\begin{align}
\sigma_{\rm weak}\sim G_F^2 T^2,
\end{align}$$

相对论粒子数密度数量级为

$$\begin{align}
n\sim T^3,
\end{align}$$

因此

$$\begin{align}
\Gamma_\nu\sim n\langle \sigma v\rangle \sim G_F^2 T^5.
\end{align}$$

辐射主导时期

$$\begin{align}
H=1.66\sqrt{g_*}\frac{T^2}{M_P}.
\end{align}$$

在中微子退耦附近，有

$$\begin{align}
g_*=2+\frac78(4+6)=\frac{43}{4}=10.75.
\end{align}$$

令 $\Gamma_\nu\sim H$，得到

$$\begin{align}
G_F^2 T_{\rm dec}^5\sim 1.66\sqrt{g_*}\frac{T_{\rm dec}^2}{M_P},
\end{align}$$

从而

$$\begin{align}
T_{\rm dec}\sim \left(\frac{1.66\sqrt{g_*}}{G_F^2M_P}\right)^{1/3}.
\end{align}$$

代入数值可得

$$\begin{align}
T_{\rm dec}\approx 2.55\,{\rm MeV}.
\end{align}$$

数量级上通常记为

$$\begin{align}
T_{\rm dec}\sim 1\text{--}3\,{\rm MeV}.
\end{align}$$

中微子退耦后，电子正电子湮灭只加热光子热浴，不再加热中微子。由光子-电子正电子体系的熵守恒，

$$\begin{align}
\frac{T_{\nu,0}}{T_{\gamma,0}}=\left(\frac{4}{11}\right)^{1/3}.
\end{align}$$

因此

$$\begin{align}
T_{\nu,0}=\left(\frac{4}{11}\right)^{1/3}\times 2.73\,{\rm K}\approx 1.95\,{\rm K}.
\end{align}$$

## 4. Homework-4

### 4.1 密度扰动线性阶段膨胀背景下的牛顿微扰理论

题目：对于辐射为主的膨胀宇宙，推导相对密度扰动

$$\begin{align}
\delta=\frac{\delta\rho}{\rho}
\end{align}$$

随时间的演化方程。假设相对密度扰动的解的形式为

$$\begin{align}
\delta\propto t^n,
\end{align}$$

计算长波极限 $k\to 0$ 下的 $n$ 值。辐射扰动相应的 Jeans 波长和 Jeans 质量是多少？

解答：在线性牛顿近似中，具有压强的流体密度扰动满足

$$\begin{align}
\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\rho\right)\delta=0.
\end{align}$$

对辐射，

$$\begin{align}
p=\frac13\rho,\qquad c_s^2=\frac{\partial p}{\partial\rho}=\frac13.
\end{align}$$

辐射主导时期

$$\begin{align}
a(t)\propto t^{1/2},\qquad H=\frac{1}{2t},\qquad \rho=\frac{3}{32\pi G t^2}.
\end{align}$$

代回得到

$$\begin{align}
\ddot\delta+\frac{1}{t}\dot\delta+\left(\frac{k^2}{3a^2}-\frac{3}{8t^2}\right)\delta=0.
\end{align}$$

在长波极限 $k\to 0$，设

$$\begin{align}
\delta\propto t^n,
\end{align}$$

则

$$\begin{align}
n(n-1)t^{n-2}+\frac{1}{t}nt^{n-1}-\frac{3}{8t^2}t^n=0.
\end{align}$$

约去公共因子后得

$$\begin{align}
n^2-\frac38=0,
\end{align}$$

因此

$$\begin{align}
n=\pm \sqrt{\frac38}=\pm \frac12\sqrt{\frac32}.
\end{align}$$

增长模为

$$\begin{align}
n=+\sqrt{\frac38}\approx 0.612,
\end{align}$$

衰减模为

$$\begin{align}
n=-\sqrt{\frac38}\approx -0.612.
\end{align}$$

Jeans 波数由压强项与引力项平衡给出：

$$\begin{align}
\frac{c_s^2k_J^2}{a^2}=4\pi G\rho.
\end{align}$$

故

$$\begin{align}
k_J^2=\frac{4\pi G\rho a^2}{c_s^2}.
\end{align}$$

Jeans 物理波长为

$$\begin{align}
\lambda_J^{\rm phys}=\frac{2\pi a}{k_J}=c_s\sqrt{\frac{\pi}{G\rho}}.
\end{align}$$

对辐射 $c_s=1/\sqrt3$，故

$$\begin{align}
\lambda_J^{\rm phys}=\frac{1}{\sqrt3}\sqrt{\frac{\pi}{G\rho}}.
\end{align}$$

对应的 Jeans 质量取为一半 Jeans 波长内的质量数量级：

$$\begin{align}
M_J\sim \frac{4\pi}{3}\rho\left(\frac{\lambda_J^{\rm phys}}{2}\right)^3.
\end{align}$$

在辐射主导时期，$\lambda_J^{\rm phys}$ 与 Hubble 半径同阶，因此 Jeans 质量也与视界质量同阶。

### 4.2 密度扰动线性阶段的相对论微扰理论

以下为第 2–5 题的共同背景。

仅考虑度规的一阶标量扰动自由度。线性阶下标量扰动、矢量扰动和张量扰动无耦合，因此可以单独讨论。其线元为

$$\begin{align}
\mathrm{d}s^2=g_{\mu\nu}\mathrm{d}x^\mu\mathrm{d}x^\nu=a^2(\tau)\left[-(1+2A)\mathrm{d}\tau^2+2\partial_iB\,\mathrm{d}\tau \mathrm{d}x^i+\left((1+2C)\delta_{ij}+2D_{ij}E\right)\mathrm{d}x^i\mathrm{d}x^j\right],
\end{align}$$

其中

$$\begin{align}
D_{ij}=\partial_i\partial_j-\frac13\delta_{ij}\nabla^2,
\end{align}$$

共形时间定义为

$$\begin{align}
\mathrm{d}\tau=\frac{\mathrm{d}t}{a}.
\end{align}$$

### 4.2.1 规范变换与标量扰动变量的变换

题目：研究规范变换。考虑坐标变换

$$\begin{align}
x^\mu \mapsto \tilde x^\mu=x^\mu+\xi^\mu,\qquad \xi^i=\partial^iL+L^i.
\end{align}$$

根据线元不变性

$$\begin{align}
\mathrm{d}s^2=g_{\mu\nu}\mathrm{d}x^\mu \mathrm{d}x^\nu=\tilde g_{\mu\nu}\mathrm{d}\tilde x^\mu \mathrm{d}\tilde x^\nu,
\end{align}$$

证明标量扰动 $A,B,C,E$ 的变换为

$$\begin{align}
\tilde A=A-\frac{a'}{a}\xi^0-(\xi^0)',
\end{align}$$

$$\begin{align}
\tilde B=B+\xi^0-L',
\end{align}$$

$$\begin{align}
\tilde C=C-\frac{a'}{a}\xi^0-\frac13\nabla^2L,
\end{align}$$

$$\begin{align}
\tilde E=E-L.
\end{align}$$

并证明 Bardeen potentials

$$\begin{align}
\Phi=A+\frac{1}{a}[a(B-E')]',\qquad \Psi=-C+\frac13\nabla^2E-\frac{a'}{a}(B-E')
\end{align}$$

为规范不变量。

解答：一阶规范变换的通式是

$$\begin{align}
\widetilde{\delta g}_{\mu\nu}=\delta g_{\mu\nu}-\bar\nabla_\mu\xi_\nu-\bar\nabla_\nu\xi_\mu,
\end{align}$$

其中带横线的协变导数由背景 FRW 度规给出。把

$$\begin{align}
\xi^\mu=(\xi^0,\partial^iL)
\end{align}$$

代入，并与标量扰动参数化逐项比较，就得到

$$\begin{align}
\tilde A=A-\mathcal H\xi^0-(\xi^0)',
\end{align}$$

$$\begin{align}
\tilde B=B+\xi^0-L',
\end{align}$$

$$\begin{align}
\tilde C=C-\mathcal H\xi^0-\frac13\nabla^2L,
\end{align}$$

$$\begin{align}
\tilde E=E-L,
\end{align}$$

其中

$$\begin{align}
\mathcal H\equiv \frac{a'}{a}.
\end{align}$$

下面证明规范不变量。先看

$$\begin{align}
B-E'.
\end{align}$$

在规范变换下

$$\begin{align}
\widetilde{(B-E')}=(B+\xi^0-L')-(E'-L')=B-E'+\xi^0.
\end{align}$$

因此

$$\begin{align}
\frac{1}{a}\left[a(B-E')\right]'
\end{align}$$

在变换时会多出

$$\begin{align}
\frac{1}{a}(a\xi^0)'=\mathcal H\xi^0+(\xi^0)'.
\end{align}$$

于是

$$\begin{align}
\tilde\Phi=\tilde A+\frac{1}{a}[a(\tilde B-\tilde E')]'=A-\mathcal H\xi^0-(\xi^0)'+\frac1a[a(B-E'+\xi^0)]'=\Phi.
\end{align}$$

再看 $\Psi$：

$$\begin{align}
\tilde\Psi=-\tilde C+\frac13\nabla^2\tilde E-\mathcal H(\tilde B-\tilde E').
\end{align}$$

代入上面的变换式，

$$\begin{align}
\tilde\Psi=-\left(C-\mathcal H\xi^0-\frac13\nabla^2L\right)+\frac13\nabla^2(E-L)-\mathcal H(B-E'+\xi^0)=\Psi.
\end{align}$$

因此 $\Phi,\Psi$ 都是规范不变量。

### 4.3 牛顿规范下的线性阶几何量

题目：对于空间平坦宇宙 $K=0$，在牛顿规范下

$$\begin{align}
B=E=0,
\end{align}$$

因此

$$\begin{align}
A=\Phi,\qquad C=-\Psi.
\end{align}$$

计算线性阶下的联络

$$\begin{align}
\Gamma^\alpha_{\mu\nu},
\end{align}$$

里奇张量

$$\begin{align}
R_{\mu\nu},
\end{align}$$

以及爱因斯坦张量

$$\begin{align}
G_{\mu\nu}.
\end{align}$$

解答：牛顿规范下一阶标量扰动度规写为

$$\begin{align}
\mathrm{d}s^2=a^2(\tau)\left[-(1+2\Phi)\mathrm{d}\tau^2+(1-2\Psi)\delta_{ij}\mathrm{d}x^i\mathrm{d}x^j\right].
\end{align}$$

记

$$\begin{align}
\mathcal H\equiv \frac{a'}{a},\qquad \nabla^2=\delta^{ij}\partial_i\partial_j.
\end{align}$$

背景非零联络为

$$\begin{align}
\bar\Gamma^0_{00}=\mathcal H,\qquad \bar\Gamma^0_{ij}=\mathcal H\delta_{ij},\qquad \bar\Gamma^i_{0j}=\mathcal H\delta^i_j.
\end{align}$$

线性阶修正为

$$\begin{align}
\delta\Gamma^0_{00}=\Phi',
\qquad
\delta\Gamma^0_{0i}=\partial_i\Phi,
\end{align}$$

$$\begin{align}
\delta\Gamma^0_{ij}=-\left[2\mathcal H(\Phi+\Psi)+\Psi'\right]\delta_{ij},
\end{align}$$

$$\begin{align}
\delta\Gamma^i_{00}=\partial^i\Phi,
\qquad
\delta\Gamma^i_{0j}=-\Psi'\delta^i_j,
\end{align}$$

$$\begin{align}
\delta\Gamma^i_{jk}=-\delta^i_j\partial_k\Psi-\delta^i_k\partial_j\Psi+\delta_{jk}\partial^i\Psi.
\end{align}$$

Ricci 张量的一阶非零分量可整理为

$$\begin{align}
\delta R_{00}=\nabla^2\Phi+3\Psi''+3\mathcal H(\Phi'+\Psi'),
\end{align}$$

$$\begin{align}
\delta R_{0i}=2\partial_i(\Psi'+\mathcal H\Phi),
\end{align}$$

$$\begin{align}
\delta R_{ij}=\partial_i\partial_j(\Psi-\Phi)+\left[-\Psi''-\mathcal H(\Phi'+5\Psi')-2(\mathcal H'+2\mathcal H^2)(\Phi+\Psi)+\nabla^2\Psi\right]\delta_{ij}.
\end{align}$$

更常用的是爱因斯坦张量的一阶分量。写成混合指标形式最简洁：

$$\begin{align}
\delta G^0_{\ 0}=-\frac{2}{a^2}\left[3\mathcal H(\Psi'+\mathcal H\Phi)-\nabla^2\Psi\right],
\end{align}$$

$$\begin{align}
\delta G^0_{\ i}=\frac{2}{a^2}\partial_i(\Psi'+\mathcal H\Phi),
\end{align}$$

$$\begin{align}
\delta G^i_{\ j}=\frac{1}{a^2}\left\{\left[2\Psi''+2\mathcal H(\Phi'+2\Psi')+(2\mathcal H'+\mathcal H^2)\Phi-\nabla^2(\Phi-\Psi)\right]\delta^i_j-\partial^i\partial_j(\Phi-\Psi)\right\}.
\end{align}$$

这些就是后面线性微扰 Einstein 方程的几何部分。

### 4.4 线性阶能量–动量张量

题目：流体的能量–动量张量一般形式为

$$\begin{align}
T^{\mu\nu}=(\rho+p)U^\mu U^\nu+pg^{\mu\nu}+\Sigma^{\mu\nu},
\end{align}$$

其中无迹张量 $\Sigma^{ij}$ 为各向异性张力，$U^\mu$ 为四速度，其空间分量为

$$\begin{align}
a u^i=v^i=\frac{\mathrm{d}x^i}{\mathrm{d}\tau}.
\end{align}$$

结合前述扰动度规计算线性阶的

$$\begin{align}
T^\mu_{\ \nu}.
\end{align}$$

解答：在牛顿规范中取

$$\begin{align}
\rho=\bar\rho+\delta\rho,\qquad p=\bar p+\delta p.
\end{align}$$

四速度满足归一化条件

$$\begin{align}
g_{\mu\nu}U^\mu U^\nu=-1.
\end{align}$$

到线性阶有

$$\begin{align}
U^0=\frac{1}{a}(1-\Phi),\qquad U^i=\frac{1}{a}v^i.
\end{align}$$

于是

$$\begin{align}
T^0_{\ 0}=-(\bar\rho+\delta\rho),
\end{align}$$

$$\begin{align}
T^0_{\ i}=(\bar\rho+\bar p)v_i,
\end{align}$$

$$\begin{align}
T^i_{\ 0}=-(\bar\rho+\bar p)v^i,
\end{align}$$

$$\begin{align}
T^i_{\ j}=(\bar p+\delta p)\delta^i_j+\Sigma^i_{\ j}.
\end{align}$$

其中

$$\begin{align}
\Sigma^i_{\ i}=0
\end{align}$$

表示各向异性张力无迹。若是理想流体，则

$$\begin{align}
\Sigma^i_{\ j}=0.
\end{align}$$

### 4.5 一阶微扰爱因斯坦方程与 Bardeen 方程

题目：结合第 3 题与第 4 题的结果：

1. 由一阶微扰爱因斯坦场方程

$$\begin{align}
\delta G^\mu_{\ \nu}=8\pi G\delta T^\mu_{\ \nu}
\end{align}$$

得到一阶微扰方程组。
1. 假设第 4 题中的各向异性张力为 0，则

$$\begin{align}
\Phi=\Psi.
\end{align}$$

由这些方程组给出相对论下的 Poisson 方程以及 Bardeen Equation。这里假设为绝热扰动，因此

$$\begin{align}
\delta p=c_s^2\delta\rho.
\end{align}$$

解答：把第 4.3 节和第 4.4 节的结果代入 Einstein 方程，得到：

`00` 分量：

$$\begin{align}
\nabla^2\Psi-3\mathcal H(\Psi'+\mathcal H\Phi)=4\pi G a^2\delta\rho.
\end{align}$$

`0i` 分量：

$$\begin{align}
\partial_i(\Psi'+\mathcal H\Phi)=4\pi G a^2(\bar\rho+\bar p)v_i.
\end{align}$$

`ij` 的迹部分：

$$\begin{align}
\Psi''+\mathcal H(\Phi'+2\Psi')+\left(2\mathcal H'+\mathcal H^2\right)\Phi-\frac13\nabla^2(\Phi-\Psi)=4\pi G a^2\delta p.
\end{align}$$

`ij` 的无迹部分：

$$\begin{align}
\partial_i\partial_j(\Phi-\Psi)-\frac13\delta_{ij}\nabla^2(\Phi-\Psi)=8\pi G a^2 \Sigma_{ij}.
\end{align}$$

若各向异性张力为零，即

$$\begin{align}
\Sigma_{ij}=0,
\end{align}$$

则由无迹部分得到

$$\begin{align}
\Phi=\Psi.
\end{align}$$

这时广义相对论下的 Poisson 方程可以写成

$$\begin{align}
\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi G a^2\delta\rho.
\end{align}$$

在亚视界极限 $k\gg aH$ 且势变化缓慢时，退化为熟悉的牛顿形式

$$\begin{align}
\nabla^2\Phi\simeq 4\pi G a^2\delta\rho.
\end{align}$$

若进一步利用动量守恒方程和绝热条件

$$\begin{align}
\delta p=c_s^2\delta\rho,
\end{align}$$

可把引力势的演化整理成 Bardeen 方程

$$\begin{align}
\Phi''+3(1+c_s^2)\mathcal H\Phi'+\left[2\mathcal H'+(1+3c_s^2)\mathcal H^2-c_s^2\nabla^2\right]\Phi=0.
\end{align}$$

在 Fourier 空间中写成

$$\begin{align}
\Phi_k''+3(1+c_s^2)\mathcal H\Phi_k'+\left[c_s^2k^2+2\mathcal H'+(1+3c_s^2)\mathcal H^2\right]\Phi_k=0.
\end{align}$$

这是一个带阻尼的波动方程。

## 5. Homework-5

### 5.1 CMB 温度各向异性角功率谱与宇宙方差

题目：推导 CMB 温度各向异性角功率谱 $C_l$，并计算宇宙方差 cosmic variance：

$$\begin{align}
\left(\frac{\Delta C_l}{C_l}\right)^2,
\end{align}$$

其中

$$\begin{align}
\Delta C_l=\sqrt{\left\langle (C_l-\hat C_l)^2\right\rangle }.
\end{align}$$

解答：把 CMB 温度涨落展开成球谐函数：

$$\begin{align}
\Theta(\hat{\mathbf n})\equiv \frac{\delta T}{T}(\hat{\mathbf n})=\sum_{l=0}^\infty \sum_{m=-l}^{l} a_{lm}Y_{lm}(\hat{\mathbf n}).
\end{align}$$

若宇宙在统计上各向同性，则不同 $(l,m)$ 模满足

$$\begin{align}
\langle a_{lm}\rangle =0,\qquad \langle a_{lm}a^*_{l'm'}\rangle=C_l\,\delta_{ll'}\delta_{mm'}.
\end{align}$$

这就定义了角功率谱

$$\begin{align}
C_l=\langle |a_{lm}|^2\rangle.
\end{align}$$

一个无偏估计量是

$$\begin{align}
\hat C_l=\frac{1}{2l+1}\sum_{m=-l}^{l}|a_{lm}|^2.
\end{align}$$

显然

$$\begin{align}
\langle \hat C_l\rangle=C_l.
\end{align}$$

若 $a_{lm}$ 服从高斯分布，则

$$\begin{align}
\mathrm{Var}(\hat C_l)=\left\langle (\hat C_l-C_l)^2\right\rangle =\frac{2}{2l+1}C_l^2.
\end{align}$$

因此宇宙方差为

$$\begin{align}
\Delta C_l=\sqrt{\frac{2}{2l+1}}\,C_l,
\end{align}$$

从而

$$\begin{align}
\left(\frac{\Delta C_l}{C_l}\right)^2=\frac{2}{2l+1},
\end{align}$$

或者

$$\begin{align}
\frac{\Delta C_l}{C_l}=\sqrt{\frac{2}{2l+1}}.
\end{align}$$

这说明低多极矩处宇宙方差很大，是因为每个 $l$ 只有有限个 $m$ 模可供平均。

### 5.2 概念题

题目：思考并回答：

1. 什么是重子声学振荡？
1. 什么是 Sachs-Wolfe，SW，效应？什么是积分 Sachs-Wolfe，Integrated Sachs-Wolfe，ISW，效应？并解释早期积分 Sachs-Wolfe 效应和晚期积分 Sachs-Wolfe 效应。
1. 什么是 CMB 的多普勒效应？
1. 什么是 Silk 阻尼？

解答：

1. 重子声学振荡（BAO）
   早期宇宙中，光子与重子通过 Thomson 散射紧耦合，形成重子-光子流体。原初密度扰动进入视界后，在引力和辐射压作用下发生声学振荡。复合后光子退耦，重子保留这套声学尺度，在后期星系相关函数和物质功率谱中留下特征尺度，这就是 BAO。

1. SW 与 ISW
   Sachs-Wolfe 效应是最后散射面上光子从引力势阱中爬出时发生的引力红移。
   Integrated Sachs-Wolfe 效应是光子在传播途中，如果引力势随时间变化，就会沿途累积净红移或蓝移。
   早期 ISW 发生在辐射与物质交替时期，因为此时引力势仍在演化。
   晚期 ISW 发生在暗能量主导或曲率显著时期，因为这时引力势再次随时间衰减。

1. CMB 的多普勒效应
   最后散射面上重子-光子流体存在本征速度，沿视线方向的速度分量使得光子频率发生 Doppler shift，因此在 CMB 温度各向异性中出现

$$\begin{align}
\Theta_{\rm Doppler}\propto \hat{\mathbf n}\cdot \mathbf v_b.
\end{align}$$

1. Silk 阻尼
   复合前光子平均自由程并非严格为零，因此会发生扩散，把足够小尺度的涨落抹平。这种由光子扩散造成的高 $l$ 小尺度 CMB 各向异性衰减称为 Silk 阻尼。

### 5.3 星系关联函数与功率谱

题目：不考虑偏置效应 bias，对于位置随机的星系，推导星系的关联函数 galaxy-galaxy correlation function

$$\begin{align}
\xi_g(r),
\end{align}$$

并作傅里叶变换得到功率谱

$$\begin{align}
P_g(k).
\end{align}$$

解答：定义星系数密度涨落

$$\begin{align}
\delta_g(\mathbf x)=\frac{n_g(\mathbf x)-\bar n_g}{\bar n_g}.
\end{align}$$

两点关联函数定义为

$$\begin{align}
\xi_g(\mathbf r)=\left\langle \delta_g(\mathbf x)\delta_g(\mathbf x+\mathbf r)\right\rangle.
\end{align}$$

若宇宙在统计上各向同性，则只依赖于 $r=|\mathbf r|$，记为

$$\begin{align}
\xi_g(r).
\end{align}$$

把涨落场做 Fourier 展开：

$$\begin{align}
\delta_g(\mathbf x)=\int \frac{\mathrm{d}^3k}{(2\pi)^3}\,\delta_g(\mathbf k)e^{i\mathbf k\cdot \mathbf x}.
\end{align}$$

定义功率谱

$$\begin{align}
\langle \delta_g(\mathbf k)\delta_g^*(\mathbf k')\rangle =(2\pi)^3\delta^{(3)}(\mathbf k-\mathbf k')P_g(k).
\end{align}$$

则

$$\begin{align}
\xi_g(r)=\int \frac{\mathrm{d}^3k}{(2\pi)^3}P_g(k)e^{i\mathbf k\cdot \mathbf r}.
\end{align}$$

利用各向同性积分可得

$$\begin{align}
\xi_g(r)=\frac{1}{2\pi^2}\int_0^\infty \mathrm{d}k\,k^2P_g(k)\frac{\sin kr}{kr}.
\end{align}$$

反过来，

$$\begin{align}
P_g(k)=\int \mathrm{d}^3r\,\xi_g(r)e^{-i\mathbf k\cdot \mathbf r}
=4\pi\int_0^\infty \mathrm{d}r\,r^2\xi_g(r)\frac{\sin kr}{kr}.
\end{align}$$

这就是星系两点关联函数与功率谱之间的 Fourier 对偶关系。

## 6. Homework-6

### 6.1 热大爆炸理论的视界疑难

题目：微波背景辐射的观测表明宇宙早在光子退耦时就非常均匀和各向同性。这说明当今的可观测宇宙在早期应该处于同一个因果联系区域内，即当时的哈勃视界大于现今可观测宇宙在当时的大小，也即当时的哈勃视界大于当时的粒子视界，可以通过某些相互作用使早期宇宙中的流体具有均匀性和各向同性。

试计算：

1. 现今可观测宇宙在复合时期 $z=1100$ 有多少个不相关的因果联系区域？
1. 假设暴胀发生在能标

$$\begin{align}
T=10^{14}\,{\rm GeV},
\end{align}$$

则暴胀时期至少需要多少个 e-folding 数才能解决视界疑难？计算时取

$$\begin{align}
1\,{\rm GeV}=1.16\times 10^{13}\,{\rm K}.
\end{align}$$

解答：先估算复合时期当前可观测宇宙的物理尺度。今天可观测宇宙的共动半径数量级可取

$$\begin{align}
\chi_0\sim 14\,{\rm Gpc}.
\end{align}$$

复合时期的尺度因子为

$$\begin{align}
a_{\rm rec}=\frac{1}{1+z_{\rm rec}}=\frac{1}{1101}.
\end{align}$$

因此当前可观测宇宙在复合时对应的物理半径约为

$$\begin{align}
R_{\rm rec}\sim a_{\rm rec}\chi_0\approx \frac{14\,{\rm Gpc}}{1101}\approx 12.7\,{\rm Mpc}.
\end{align}$$

另一方面，复合时期的 Hubble 半径为

$$\begin{align}
d_H^{\rm rec}\sim \frac{c}{H_{\rm rec}}.
\end{align}$$

取物质主导近似

$$\begin{align}
H_{\rm rec}\approx H_0\sqrt{\Omega_m(1+z_{\rm rec})^3},
\end{align}$$

代入 $H_0=70\,{\rm km/s/Mpc}$、$\Omega_m=0.3$、$z_{\rm rec}=1100$，得到

$$\begin{align}
d_H^{\rm rec}\approx 0.214\,{\rm Mpc}.
\end{align}$$

故线性尺度比约为

$$\begin{align}
\frac{R_{\rm rec}}{d_H^{\rm rec}}\approx 59.4.
\end{align}$$

如果按三维 Hubble 体积来数，不相关因果区个数约为

$$\begin{align}
N_{\rm causal}^{\rm 3D}\sim \left(\frac{R_{\rm rec}}{d_H^{\rm rec}}\right)^3\approx 2.1\times 10^5.
\end{align}$$

如果只看最后散射面上的二维天空角区，则典型因果角尺度约为

$$\begin{align}
\theta_H\sim \frac{d_H^{\rm rec}}{R_{\rm rec}}\sim \frac{1}{59.4}\approx 0.03\,{\rm rad}\approx 1.7^\circ,
\end{align}$$

因此天空上大约有

$$\begin{align}
N_{\rm causal}^{\rm 2D}\sim \frac{4\pi}{\pi\theta_H^2}\approx 4.4\times 10^3
\end{align}$$

个互不相关区域。CMB 视界问题通常更常说这一二维角尺度版本，但三维体积计数约为 $10^5$ 量级。

下面估算所需的 e-folding 数。若暴胀结束后快速再热到同一能标 $10^{14}\,{\rm GeV}$，最小 e-fold 数可估成

$$\begin{align}
N_{\min}\simeq \ln\left(\frac{a_{\rm end}H_{\rm end}}{a_0H_0}\right).
\end{align}$$

取

$$\begin{align}
\rho_{\rm end}^{1/4}\sim 10^{14}\,{\rm GeV},
\end{align}$$

则

$$\begin{align}
H_{\rm end}\sim \frac{(10^{14}\,{\rm GeV})^2}{\sqrt3\,M_P}.
\end{align}$$

再由熵守恒

$$\begin{align}
\frac{a_{\rm end}}{a_0}\simeq \frac{T_0}{T_{\rm rh}}\left(\frac{g_{*s,0}}{g_{*s,\rm rh}}\right)^{1/3},
\end{align}$$

并取快速再热

$$\begin{align}
T_{\rm rh}\sim 10^{14}\,{\rm GeV},
\end{align}$$

可得

$$\begin{align}
N_{\min}\approx 55.5.
\end{align}$$

因此通常写作

$$\begin{align}
N_{\min}\sim 56,
\end{align}$$

不同常数与再热历史假设下，写成

$$\begin{align}
N_{\min}\sim 55\text{--}60
\end{align}$$

都可以接受。

### 6.2 张量模式的原初扰动

题目：考虑仅含张量扰动自由度的一阶扰动度规，其线元为

$$\begin{align}
\mathrm{d}s^2=a^2(\tau)\left[-\mathrm{d}\tau^2+(\delta_{ij}+h_{ij})\mathrm{d}x^i\mathrm{d}x^j\right],
\end{align}$$

其中 $\tau$ 为 conformal time，定义为

$$\begin{align}
\mathrm{d}\tau=\frac{\mathrm{d}t}{a},
\end{align}$$

$a$ 为标度因子。$h_{ij}$ 具有横向无迹性：

$$\begin{align}
\partial^i h_{ij}=0,\qquad h^i_{\ i}=0.
\end{align}$$

并且

$$
h_{ij}=
\begin{pmatrix}
h_+ & h_\times & 0\\
h_\times & -h_+ & 0\\
0 & 0 & 0
\end{pmatrix}.
$$

1. 计算张量扰动的二阶作用量；
1. 计算暴胀背景下张量扰动的无量纲原初扰动功率谱，初始条件取 Bunch-Davies vacuum。

解答：从 Einstein-Hilbert 作用量

$$\begin{align}
S=\frac{M_P^2}{2}\int \mathrm{d}^4x\,\sqrt{-g}\,R
\end{align}$$

对张量扰动展开到二阶。由于 $h_{ij}$ 横向无迹，二阶作用量可以整理成

$$\begin{align}
S_T^{(2)}=\frac{M_P^2}{8}\int \mathrm{d}\tau\,\mathrm{d}^3x\,a^2\left[(h'_{ij})^2-(\partial_k h_{ij})^2\right].
\end{align}$$

对每个偏振模式做 Fourier 展开：

$$\begin{align}
h_{ij}(\tau,\mathbf x)=\sum_{\lambda=+,\times}\int \frac{\mathrm{d}^3k}{(2\pi)^3}\,e_{ij}^{(\lambda)}(\hat{\mathbf k})\,h_\lambda(\tau,\mathbf k)e^{i\mathbf k\cdot \mathbf x},
\end{align}$$

其中极化张量满足

$$\begin{align}
e_{ii}^{(\lambda)}=0,\qquad k^ie_{ij}^{(\lambda)}=0.
\end{align}$$

对每个偏振引入规范化变量

$$\begin{align}
v_\lambda\equiv \frac{aM_P}{2}h_\lambda.
\end{align}$$

则作用量化成

$$\begin{align}
S_T^{(2)}=\frac12\sum_\lambda\int \mathrm{d}\tau\,\mathrm{d}^3k\left[|v_\lambda'|^2-\left(k^2-\frac{a''}{a}\right)|v_\lambda|^2\right].
\end{align}$$

因此模方程为

$$\begin{align}
v_{\lambda,k}''+\left(k^2-\frac{a''}{a}\right)v_{\lambda,k}=0.
\end{align}$$

在近似 de Sitter 暴胀背景下，

$$\begin{align}
a(\tau)=-\frac{1}{H\tau},\qquad \frac{a''}{a}=\frac{2}{\tau^2}.
\end{align}$$

于是

$$\begin{align}
v_k''+\left(k^2-\frac{2}{\tau^2}\right)v_k=0.
\end{align}$$

取 Bunch-Davies 真空，深亚视界初态满足

$$\begin{align}
v_k\to \frac{e^{-ik\tau}}{\sqrt{2k}}\qquad (-k\tau\to \infty).
\end{align}$$

对应解为

$$\begin{align}
v_k=\frac{1}{\sqrt{2k}}\left(1-\frac{i}{k\tau}\right)e^{-ik\tau}.
\end{align}$$

因此

$$\begin{align}
h_k=\frac{2v_k}{aM_P}.
\end{align}$$

在超视界极限 $|k\tau|\ll 1$，

$$\begin{align}
|h_k|^2\to \frac{2H^2}{M_P^2 k^3}
\end{align}$$

（这里是单个偏振模式）。

单个偏振的无量纲功率谱为

$$\begin{align}
\Delta_{t,\lambda}^2(k)\equiv \frac{k^3}{2\pi^2}|h_k|^2=\frac{H^2}{\pi^2 M_P^2}.
\end{align}$$

加上两种偏振后，总张量无量纲原初扰动功率谱为

$$\begin{align}
\Delta_t^2(k)=2\Delta_{t,\lambda}^2(k)=\frac{2H^2}{\pi^2 M_P^2}\bigg|_{k=aH}.
\end{align}$$

这就是标准单场慢滚暴胀下的张量原初谱。

## 验证说明

以下结果做了 Mathematica 级别的快速核对：

- `Verified:` 第 2.1 题的 $d_L(z)$ 到 $z^3$ 阶展开结构。
- `Verified:` 第 2.2 题在 $\Omega_m=0.3$、$H_0=70\,{\rm km/s/Mpc}$、$z=1$ 时的 $H$、$\chi$、$D_L$、$D_A$、$t(z=1)$ 数值。
- `Verified:` 第 3.1 题在给定 $M_P$、$G_F$ 下的中微子退耦温度数量级与 $T_{\nu,0}\approx 1.95\,{\rm K}$。
- `Verified:` 第 4.1 题长波极限的指数方程 $n^2-3/8=0$。
- `Verified:` 第 6.1 题中复合时期线性尺度比约 $59.4$、三维因果区数量级约 $2.1\times 10^5$、快速再热近似下 $N_{\min}\approx 55.5$。
- `Verified:` 第 6.2 题单个偏振张量谱的归一化 $\Delta_{t,\lambda}^2=H^2/(\pi^2 M_P^2)$，总谱为两倍。

以下部分主要是标准讲义整理，而不是逐项机器验证：

- `Not verified:` 第 4.2–4.5 题中的规范变换、Bardeen 方程与几何量分量的全部细节。
- `Not verified:` 第 5.1–5.3 的统计推导步骤和第 5.2 的概念解释。
