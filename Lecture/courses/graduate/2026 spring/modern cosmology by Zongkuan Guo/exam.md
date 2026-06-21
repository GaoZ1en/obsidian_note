一、
（1）写出 FRW 度规（5 分）；
答案：FRW 度规可写为

$$\begin{align}
\mathrm{d}s^{2}=-\mathrm{d}t^{2}+a^{2}(t)\left[\frac{\mathrm{d}r^{2}}{1-k r^{2}}+r^{2}\left(\mathrm{d}\theta^{2}+\sin^{2}\theta\,\mathrm{d}\phi^{2}\right)\right],
\end{align}$$

其中 $a(t)$ 是尺度因子，$k=0,\pm 1$ 分别对应平直、正曲率、负曲率空间。若取平直情形 $k=0$，则

$$\begin{align}
\mathrm{d}s^{2}=-\mathrm{d}t^{2}+a^{2}(t)\,\mathrm{d}\mathbf{x}^{2}.
\end{align}$$

（2）计算联络 $\Gamma^1_{01}$ 和 $\Gamma^0_{11}$ 分量（5 分）；
答案：由

$$\begin{align}
\Gamma^\mu_{\nu\rho}=\frac{1}{2}g^{\mu\sigma}\left(\partial_\nu g_{\sigma\rho}+\partial_\rho g_{\sigma\nu}-\partial_\sigma g_{\nu\rho}\right)
\end{align}$$

可得

$$\begin{align}
\Gamma^1_{01}=\Gamma^1_{10}=\frac{\dot{a}}{a}=H,
\end{align}$$

以及

$$\begin{align}
\Gamma^0_{11}=\frac{a\dot{a}}{1-k r^{2}}.
\end{align}$$

若取平直直角坐标系 $k=0$，则进一步化为

$$\begin{align}
\Gamma^0_{11}=a\dot{a}.
\end{align}$$

（3）写出理想流体的能动张量，并推导理想流体的能量密度和压强满足的守恒方程（10 分）。
答案：理想流体的能动张量为

$$\begin{align}
T_{\mu\nu}=(\rho+p)u_{\mu}u_{\nu}+p g_{\mu\nu},
\end{align}$$

其中 $\rho$ 是能量密度，$p$ 是压强，$u^\mu$ 是四速度。在共动系中

$$\begin{align}
u^\mu=(1,0,0,0),\qquad T^\mu_{\ \nu}=\mathrm{diag}(-\rho,p,p,p).
\end{align}$$

能动张量守恒要求

$$\begin{align}
\nabla_\mu T^{\mu\nu}=0.
\end{align}$$

取 $\nu=0$ 分量，得到

$$\begin{align}
\dot{\rho}+3H(\rho+p)=0,
\end{align}$$

其中 $H=\dot{a}/a$。这就是 FRW 背景下理想流体的连续性方程。若再取状态方程

$$\begin{align}
p=w\rho,
\end{align}$$

则有

$$\begin{align}
\dot{\rho}+3H(1+w)\rho=0,
\end{align}$$

从而

$$\begin{align}
\rho\propto a^{-3(1+w)}.
\end{align}$$

二、
（1）在非相对论极限下，推导粒子数密度与温度的关系（5 分）；
答案：热平衡下

$$\begin{align}
n=g\int\frac{\mathrm{d}^{3}p}{(2\pi)^{3}}f(p),\qquad f(p)\simeq \exp\left[-\frac{E-\mu}{T}\right].
\end{align}$$

在非相对论极限 $T\ll m$ 下，

$$\begin{align}
E\simeq m+\frac{p^{2}}{2m},
\end{align}$$

因此

$$\begin{align}
n=g\,e^{(\mu-m)/T}\int\frac{\mathrm{d}^{3}p}{(2\pi)^{3}}e^{-p^{2}/(2mT)}.
\end{align}$$

高斯积分给出

$$\begin{align}
n=g\left(\frac{mT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu-m}{T}\right).
\end{align}$$

这就是非相对论极限下粒子数密度与温度的关系。若化学势在演化中近似固定，则主要标度为 $n\propto T^{3/2}e^{-m/T}$。

（2）宇宙复合时期，推导电离度满足的 Saha 方程（10 分）；
答案：复合反应为

$$\begin{align}
e^{-}+p\rightleftharpoons H+\gamma.
\end{align}$$

热平衡要求化学势满足

$$\begin{align}
\mu_{e}+\mu_{p}=\mu_{H},\qquad \mu_\gamma=0.
\end{align}$$

对电子、质子、氢原子分别使用上一问的非相对论数密度公式：

$$\begin{align}
n_i=g_i\left(\frac{m_iT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu_i-m_i}{T}\right).
\end{align}$$

于是

$$\begin{align}
\frac{n_e n_p}{n_H}=\frac{g_e g_p}{g_H}\left(\frac{m_e m_p}{m_H}\frac{T}{2\pi}\right)^{3/2}\exp\left[-\frac{m_e+m_p-m_H}{T}\right].
\end{align}$$

取 $g_e=g_p=2$，$g_H=4$，并记氢的束缚能

$$\begin{align}
E_0=m_e+m_p-m_H=13.6\,\mathrm{eV},
\end{align}$$

再利用 $m_H\simeq m_p$，得到

$$\begin{align}
\frac{n_e n_p}{n_H}\simeq \left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.
\end{align}$$

定义电离度

$$\begin{align}
X_e\equiv \frac{n_e}{n_B},\qquad n_B=n_p+n_H,
\end{align}$$

并利用电中性条件 $n_e=n_p$，可写成

$$\begin{align}
n_e=n_p=X_e n_B,\qquad n_H=(1-X_e)n_B.
\end{align}$$

代回即得 Saha 方程

$$\begin{align}
\frac{X_e^{2}}{1-X_e}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.
\end{align}$$

（3）解释为什么复合温度远低于氢的束缚能（5 分）。
答案：将

$$\begin{align}
n_B=\eta n_\gamma,\qquad n_\gamma=\frac{2\zeta(3)}{\pi^{2}}T^{3}
\end{align}$$

代入 Saha 方程，可得

$$\begin{align}
\frac{X_e^{2}}{1-X_e}=\frac{\pi^{2}}{2\zeta(3)\eta}\left(\frac{m_e}{2\pi T}\right)^{3/2}e^{-E_0/T}.
\end{align}$$

由于重子光子比

$$\begin{align}
\eta\sim 10^{-10}
\end{align}$$

极小，因此前面的因子 $1/\eta$ 极大，意味着即使温度已经远低于 $13.6\,\mathrm{eV}$，光子海中的高能尾部仍有足够多的光子去电离新形成的氢原子。必须等到指数因子

$$\begin{align}
e^{-E_0/T}
\end{align}$$

足够小、克服 $1/\eta$ 的巨大增强后，中性氢才稳定存在，因此复合温度只会出现在

$$\begin{align}
T_{\mathrm{rec}}\sim \frac{E_0}{\ln(\eta^{-1})+\mathcal{O}(1)}\sim 0.3\,\mathrm{eV},
\end{align}$$

显著低于氢的束缚能 $13.6\,\mathrm{eV}$。

三、
（1）给出从原初曲率扰动功率谱 $P_{\mathrm{ini}}(k)$到某红移 z 处的星系星系功率谱 $P_{gg}(k,z)$ 的关系，并具体描述表达式中各项的意义以及各项应该如何计算（5 分）；
答案：先把原初曲率扰动 $\mathcal{R}$ 映射到物质密度扰动：

$$\begin{align}
\delta_m(k,z)=M(k,z)\mathcal{R}(k),\qquad M(k,z)=\frac{2k^{2}}{5\Omega_{m0}H_0^{2}}\,T(k)\,D(z).
\end{align}$$

因此物质功率谱为

$$\begin{align}
P_{mm}(k,z)=M^{2}(k,z)\,P_{\mathrm{ini}}(k),
\end{align}$$

而在线性、实空间、线性偏置近似下，

$$\begin{align}
P_{gg}(k,z)=b_g^{2}(k,z)\,P_{mm}(k,z)=b_g^{2}(k,z)\left[\frac{2k^{2}}{5\Omega_{m0}H_0^{2}}\,T(k)\,D(z)\right]^{2}P_{\mathrm{ini}}(k).
\end{align}$$

各项的意义与计算方法如下：
- $P_{\mathrm{ini}}(k)$：原初曲率扰动功率谱，若定义为有量纲功率谱，则常写为

$$\begin{align}
P_{\mathrm{ini}}(k)=\frac{2\pi^{2}}{k^{3}}A_s\left(\frac{k}{k_\ast}\right)^{n_s-1},
\end{align}$$

其参数由 inflation 模型或 CMB 拟合给出。
- $T(k)$：转移函数，编码模在进入视界后直到晚期的线性演化，通常用 `CAMB`、`CLASS` 等 Boltzmann 程序求得。
- $D(z)$：线性增长因子，满足线性增长方程，归一化为 $D(0)=1$；给定背景宇宙学参数后可数值求解。
- $b_g(k,z)$：星系偏置，描述星系分布相对于物质分布的响应；在线性尺度上常近似取常数，由观测拟合或 halo 模型给出。
- 若考虑真实观测，还常需加入红移空间畸变和泊松噪声，例如

$$\begin{align}
P_{gg}^{\mathrm{obs}}(k,\mu,z)\simeq [b_g(z)+f(z)\mu^{2}]^{2}P_{mm}(k,z)+P_{\mathrm{shot}}.
\end{align}$$

（2）描述在辐射为主时期重新进入到视界内的非相对论性物质扰动和相对论性辐射扰动在进入视界后的在辐射为主时期和物质为主时期的演化行为（10 分）；
答案：考虑某一模在辐射为主时期重新进入视界，即 $k>aH$ 时开始亚视界演化。

- 非相对论性物质扰动（如 CDM）：
  在辐射为主时期，背景由辐射主导，物质虽然已经在视界内，但其自引力效应不能主导势阱形成，因此增长很慢，只呈对数增长，

$$\begin{align}
\delta_m\propto \ln a.
\end{align}$$

  到了物质为主时期，势阱由物质本身主导，密度扰动开始标准线性增长，

$$\begin{align}
\delta_m\propto a.
\end{align}$$

- 相对论性辐射扰动：
  在辐射为主时期进入视界后，辐射压不可忽略，扰动不能像冷物质那样持续增长，而是发生声学振荡，

$$\begin{align}
\delta_r\sim \cos(k c_s\eta+\varphi),\qquad c_s\simeq \frac{1}{\sqrt{3}}.
\end{align}$$

  势扰动在进入视界后衰减。到了物质为主时期，亚视界辐射扰动依然受压强支撑，不能形成持续增长，只能继续振荡或由于自由传播而逐渐衰减，对大尺度结构增长贡献很小。

因此，凡是在辐射为主时期进入视界的小尺度物质模，都会因为早期只有对数增长而在今天相对于大尺度模受到压低，这正是物质功率谱在大 $k$ 端被压制的原因。

（3）手绘红移 $0$ 处的物质功率谱 $P_{mm}(k,z=0)$ 的曲线，并标出在物质辐射相等时期进入视界的共动波数，解释该波数左侧和右侧的曲线行为产生的物理机制（5 分）。
答案：其典型形状可示意为

```text
P_mm(k, z=0)
^
|                    /
|                  /
|                /
|              /
|            _/
|         __/
|      __/
|_____/
+------------------------------> k
      k_eq
```

其中

$$\begin{align}
k_{\mathrm{eq}}=a_{\mathrm{eq}}H_{\mathrm{eq}}\simeq 0.073\,\Omega_{m0}h^{2}\,\mathrm{Mpc}^{-1}.
\end{align}$$

对近乎标度不变的原初谱 $n_s\simeq 1$：
- 在 $k\ll k_{\mathrm{eq}}$ 一侧，这些模到物质辐射相等时还没有进入视界，直到物质为主时期才开始真正的亚视界演化，因此几乎不受辐射压抑制，转移函数 $T(k)\simeq 1$，故

$$\begin{align}
P_{mm}(k)\propto k^{n_s}\approx k.
\end{align}$$

- 在 $k\gg k_{\mathrm{eq}}$ 一侧，这些模在辐射为主时期就已进入视界，只能经历物质扰动的对数增长，直到相等后才转入 $\delta_m\propto a$ 的线性增长，因此小尺度功率被显著压低。此时

$$\begin{align}
T(k)\sim \frac{\ln(k/k_{\mathrm{eq}})}{(k/k_{\mathrm{eq}})^{2}},
\end{align}$$

从而

$$\begin{align}
P_{mm}(k)\propto k^{n_s-4}\ln^{2}(k/k_{\mathrm{eq}})\approx k^{-3}\ln^{2}k.
\end{align}$$

四、
（1）简述星系巡天和宇宙微波背景辐射巡天观测中与弱引力透镜相关的观测量及其测量方法（5 分）；
答案：
- 在星系巡天中，弱透镜的主要观测量是剪切 $\gamma=(\gamma_1,\gamma_2)$ 和会聚 $\kappa$。实际观测中通过测量大量背景星系的形状椭率、位置角和数密度放大效应，经 PSF 校正后做统计平均，重建 cosmic shear 的两点函数 $\xi_\pm(\theta)$ 或角功率谱 $C_\ell^{\kappa\kappa}$，并可按红移层析分析。
- 在 CMB 巡天中，弱透镜的主要观测量是透镜势 $\phi(\hat{\mathbf{n}})$、偏折角 $\mathbf{d}=\nabla\phi$ 和会聚 $\kappa=-\nabla^{2}\phi/2$。它们通过 CMB 温度与偏振图中的模耦合、以及透镜将 E 模转换为 B 模的效应来重建，常用二次估计量或迭代极大似然方法。

（2）简述 Alcock-Paczynski（AP）效应的原理（5 分）；
答案：AP 效应的核心是：若把观测到的角向分离 $\Delta\theta$ 和红移分离 $\Delta z$ 转换为三维距离时采用了错误的宇宙学模型，则一个本征上各向同性的天体或相关函数会表现出人为的各向异性。横向和径向距离分别为

$$\begin{align}
\Delta r_\perp=(1+z)D_A(z)\Delta\theta,\qquad \Delta r_\parallel=\frac{c\,\Delta z}{H(z)}.
\end{align}$$

因此 AP 效应测量的是组合量

$$\begin{align}
F_{\mathrm{AP}}(z)=\frac{(1+z)D_A(z)H(z)}{c}.
\end{align}$$

通过要求星系团、BAO 环或相关函数在统计上恢复各向同性，就可以约束 $D_A(z)$ 和 $H(z)$。

（3）简述产生原初 CMB 各向异性的 4 种基本过程（5 分）；
答案：可概括为以下四种基本来源：
- 内禀温度涨落：最后散射面上光子温度本身的空间起伏，即 $\Theta_0=\delta T/T$。
- Sachs-Wolfe 引力红移：光子从最后散射面势阱中爬出时发生引力红移，给出普通 SW 项。
- Doppler 效应：最后散射面上重子-光子流体的本征速度沿视线方向的分量引起频移。
- Integrated Sachs-Wolfe（ISW）效应：光子传播途中若引力势随时间演化，则会额外获得净红移或蓝移，贡献沿线积分项。

（4）简述利用 SNIa 测量光度距离的方法，利用 BAO 测量角直径距离的方法（5 分）。
答案：
- SNIa 测量光度距离：Ia 型超新星可通过光变曲线宽度和颜色校正后作为标准烛光，得到其绝对星等 $M$。观测给出视星等 $m$，从而得到距离模数

$$\begin{align}
\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right),
\end{align}$$

进而反推出光度距离 $D_L(z)$。
- BAO 测量角直径距离：BAO 的标准尺是拖曳时期留下的声学视界 $r_d$。若在某红移处观测到横向 BAO 角尺度 $\Delta\theta$，则有

$$\begin{align}
r_d=(1+z)D_A(z)\Delta\theta,
\end{align}$$

因此

$$\begin{align}
D_A(z)=\frac{r_d}{(1+z)\Delta\theta}.
\end{align}$$

若再结合径向 BAO 尺度 $\Delta z$，还可测得

$$\begin{align}
r_d=\frac{c\,\Delta z}{H(z)}.
\end{align}$$

五、
（1）阐述大爆炸宇宙学的视界问题（10 分）；
答案：在没有 inflation 的标准大爆炸宇宙学中，共动哈勃半径

$$\begin{align}
\frac{1}{aH}
\end{align}$$

在辐射和物质为主时期都是随时间增大的，因此今天 CMB 最后散射面上相距很远的两个区域，在复合时实际上对应于彼此没有因果联系的许多小块。换言之，它们之间没有足够时间交换信息达到热平衡，但观测却显示 CMB 温度在全天空范围内都几乎相同，仅有 $10^{-5}$ 量级起伏，这就是视界问题。Inflation 通过让 $aH$ 在早期快速增大、即共动哈勃半径减小，使得今天整个可观测宇宙在 inflation 前都处于一个因果连通区域内，从而解决这一问题。

（2）设 inflation 结束时能标是 $10^{15}\,\mathrm{GeV}$，之后宇宙进入了一个物态参数为 $w=0$ 的演化，在 $10^5\,\mathrm{GeV}$ 时才进入辐射为主时期，若其最终演化成为是一个可观测宇宙，计算解决视界问题的 inflation efolds 数是多少（10 分）。
答案：要求今天的哈勃尺度在 inflation 开始前位于视界之内，最小 e-fold 数满足

$$\begin{align}
N_{\min}\simeq \ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right).
\end{align}$$

下面逐项估计。

在 inflation 结束时，取能量密度尺度

$$\begin{align}
\rho_{\mathrm{end}}^{1/4}=10^{15}\,\mathrm{GeV},
\end{align}$$

于是

$$\begin{align}
H_{\mathrm{end}}\simeq \sqrt{\frac{\rho_{\mathrm{end}}}{3M_{\mathrm{Pl}}^{2}}}\simeq \frac{(10^{15}\,\mathrm{GeV})^{2}}{\sqrt{3}\,M_{\mathrm{Pl}}}.
\end{align}$$

从 inflation 结束到再热完成，题目给出 $w=0$，故

$$\begin{align}
\rho\propto a^{-3(1+w)}=a^{-3}.
\end{align}$$

因此

$$\begin{align}
\frac{a_{\mathrm{rh}}}{a_{\mathrm{end}}}=\left(\frac{\rho_{\mathrm{end}}}{\rho_{\mathrm{rh}}}\right)^{1/3}
=\left(\frac{10^{15}}{10^{5}}\right)^{4/3},
\end{align}$$

也即

$$\begin{align}
\frac{a_{\mathrm{end}}}{a_{\mathrm{rh}}}=\left(\frac{10^{5}}{10^{15}}\right)^{4/3}=10^{-40/3}.
\end{align}$$

再热后进入辐射为主时期并满足熵守恒，所以

$$\begin{align}
\frac{a_{\mathrm{rh}}}{a_0}=\frac{T_0}{T_{\mathrm{rh}}}\left(\frac{g_{*s,0}}{g_{*s,\mathrm{rh}}}\right)^{1/3}.
\end{align}$$

取

$$\begin{align}
T_0\simeq 2.35\times 10^{-13}\,\mathrm{GeV},\qquad T_{\mathrm{rh}}=10^{5}\,\mathrm{GeV},\qquad g_{*s,0}\simeq 3.91,\qquad g_{*s,\mathrm{rh}}\simeq 106.75,
\end{align}$$

得到

$$\begin{align}
\frac{a_{\mathrm{end}}}{a_0}=\frac{a_{\mathrm{end}}}{a_{\mathrm{rh}}}\frac{a_{\mathrm{rh}}}{a_0}
\simeq 10^{-40/3}\times \frac{T_0}{10^{5}\,\mathrm{GeV}}\left(\frac{3.91}{106.75}\right)^{1/3}.
\end{align}$$

于是

$$\begin{align}
N_{\min}\simeq \ln\left(\frac{H_{\mathrm{end}}}{H_0}\right)+\ln\left(\frac{a_{\mathrm{end}}}{a_0}\right).
\end{align}$$

代入

$$\begin{align}
H_0\simeq 1.44\times 10^{-42}\,\mathrm{GeV},\qquad M_{\mathrm{Pl}}=2.435\times 10^{18}\,\mathrm{GeV},
\end{align}$$

可得

$$\begin{align}
N_{\min}\approx 50.1.
\end{align}$$

因此本题所需的 inflation e-fold 数大约为

$$\begin{align}
N_{\min}\simeq 50,
\end{align}$$

按不同常数取值与近似方式，写成 $50\text{--}52$ 也可接受，但中心值约为 $50$。
