---
title: modern cosmology review
date: 2026-06-14
summary: "开卷期末总复习笔记，按背景宇宙学、热历史、微扰、结构形成、观测方法与 inflation 重组课程主线，并附 exam mapping 与高频延伸题。"
---

# 现代宇宙学开卷总复习

## 使用说明

这份笔记不是按题号，而是按知识模块组织。开卷考试时建议优先查：

- 如果题目问背景方程、FRW、理想流体、标量场：看第 1 节。
- 如果题目问热平衡、数密度、Saha、复合、退耦：看第 2-3 节。
- 如果题目问距离、SNIa、BAO、AP：看第 4 节和第 8 节。
- 如果题目问微扰、功率谱、$k_{\mathrm{eq}}$、结构形成：看第 5-6 节。
- 如果题目问 CMB 各向异性、弱透镜：看第 7 节。
- 如果题目问视界问题、暴涨、e-fold 数：看第 9 节。

默认记号：现在取 $a_0=1$，$H=\dot a/a$，共形时间下 $\mathcal{H}=a'/a$，若不特别说明则采用平直 FRW 背景与线性理论。

## 1. FRW 背景宇宙学

### 核心定义与物理量

宇宙学的背景假设是大尺度上的均匀各向同性，因此时空取 FRW 度规：
$$\mathrm{d}s^{2}=-\mathrm{d}t^{2}+a^{2}(t)\left[\frac{\mathrm{d}r^{2}}{1-k r^{2}}+r^{2}\left(\mathrm{d}\theta^{2}+\sin^{2}\theta\,\mathrm{d}\phi^{2}\right)\right].$$

其中：

- $a(t)$ 是尺度因子。
- $k=0,+1,-1$ 分别对应平直、正曲率、负曲率空间。
- $H\equiv \dot a/a$ 是 Hubble 参数。
- $1+z=a_0/a=1/a$ 是红移与尺度因子的关系。

若取平直宇宙 $k=0$，则
$$\mathrm{d}s^{2}=-\mathrm{d}t^{2}+a^{2}(t)\mathrm{d}\mathbf{x}^{2}.$$

共形时间 $\eta$ 由 $\mathrm{d}t=a\,\mathrm{d}\eta$ 定义，此时
$$\mathrm{d}s^{2}=a^{2}(\eta)\left(-\mathrm{d}\eta^{2}+\mathrm{d}\mathbf{x}^{2}\right),\qquad \mathcal{H}\equiv \frac{a'}{a}=aH.$$

### 必背公式

Christoffel 符号中最常考的是
$$\Gamma^1_{01}=\Gamma^1_{10}=\frac{\dot a}{a}=H,\qquad \Gamma^0_{11}=\frac{a\dot a}{1-k r^{2}}.$$

理想流体能动张量为
$$T_{\mu\nu}=(\rho+p)u_\mu u_\nu+p g_{\mu\nu}.$$

在共动系中
$$u^\mu=(1,0,0,0),\qquad T^\mu_{\ \nu}=\mathrm{diag}(-\rho,p,p,p).$$

Friedmann 方程与加速度方程：
$$H^{2}=\frac{8\pi G}{3}\rho-\frac{k}{a^{2}},$$
$$\frac{\ddot a}{a}=-\frac{4\pi G}{3}(\rho+3p).$$

能量动量守恒给出连续性方程：
$$\dot\rho+3H(\rho+p)=0.$$

若 $p=w\rho$，则
$$\rho\propto a^{-3(1+w)}.$$

常见组分的标度行为：

| 组分     |    $w$ | $\rho(a)$ | $a(t)$        |
| ------ | -----: | --------- | ------------- |
| 非相对论物质 |    $0$ | $a^{-3}$  | $t^{2/3}$     |
| 辐射     |  $1/3$ | $a^{-4}$  | $t^{1/2}$     |
| 真空能    |   $-1$ | 常数        | $e^{Ht}$      |
| 曲率项    | $-1/3$ | $a^{-2}$  | 不视为真实流体时只作有效项 |

### 最短必要推导

由 $\nabla_\mu T^{\mu 0}=0$ 可直接得到
$$\dot\rho+3H(\rho+p)=0.$$
若再代入 $p=w\rho$，则
$$\frac{\dot\rho}{\rho}=-3(1+w)\frac{\dot a}{a},$$
积分得
$$\rho\propto a^{-3(1+w)}.$$

### 物理图像与常见解释

- 物质的 $a^{-3}$ 来自数密度稀释。
- 辐射的 $a^{-4}$ 除了数密度稀释，还多一个光子红移带来的能量损失。
- 若 $\rho+3p<0$，则 $\ddot a>0$，宇宙加速膨胀。

### 标量场作为宇宙学流体

最小耦合标量场作用量
$$S=\int \mathrm{d}^{4}x\sqrt{-g}\left(\frac{R}{16\pi G}-\frac{1}{2}\nabla_\mu\phi\nabla^\mu\phi-V(\phi)\right).$$

其能量密度与压强为
$$\rho_\phi=\frac{1}{2}\dot\phi^{2}+V(\phi),\qquad p_\phi=\frac{1}{2}\dot\phi^{2}-V(\phi).$$

若 $\dot\phi^2\ll V(\phi)$，则
$$p_\phi\simeq -\rho_\phi,\qquad w_\phi\simeq -1,$$
表现得像宇宙学常数。

在平直 FRW 背景下，标量场方程为
$$\ddot\phi+3H\dot\phi+V'(\phi)=0.$$

### 易错点 / 常见变体

- $\Gamma^0_{11}$ 在球坐标 FRW 与直角坐标平直 FRW 中写法不同；球坐标下要带 $1-k r^2$。
- $T^\mu_{\ \nu}$ 与 $T_{\mu\nu}$ 的对角形式可能不同，不要混。
- $\dot H=-4\pi G(\rho+p)+k/a^2$ 是一般形式；平直宇宙才简化为 $\dot H=-4\pi G(\rho+p)$。

### 常见问法

- 写出 FRW 度规。
- 计算若干联络分量。
- 推导理想流体连续性方程。
- 用标量场解释为什么 $w\simeq -1$ 会导致加速膨胀。

### 一句话结论

FRW 背景宇宙学的核心就是：几何由 $a(t)$ 描述，动力学由 Friedmann 方程给出，物质演化由 $\dot\rho+3H(\rho+p)=0$ 控制。

## 2. 宇宙热历史与平衡统计

### 核心定义与物理量

早期宇宙通常处于局域热平衡，可用分布函数
$$f(E)=\frac{1}{\exp[(E-\mu)/T]\pm 1}$$
描述粒子，其中 $+$ 对应费米子，$-$ 对应玻色子。高温稀薄极限下可近似为 Maxwell-Boltzmann：
$$f(E)\simeq \exp\left[-\frac{E-\mu}{T}\right].$$

粒子数密度、能量密度、压强的一般表达式为
$$n=g\int\frac{\mathrm{d}^{3}p}{(2\pi)^3}f,\qquad \rho=g\int\frac{\mathrm{d}^{3}p}{(2\pi)^3}E f,\qquad p=g\int\frac{\mathrm{d}^{3}p}{(2\pi)^3}\frac{p^{2}}{3E}f.$$

### 必背公式

相对论极限 $T\gg m$：
$$n_\gamma=\frac{2\zeta(3)}{\pi^{2}}T^{3},\qquad \rho_\gamma=\frac{\pi^{2}}{15}T^{4},$$
$$n_\nu=\frac{3}{2}\frac{\zeta(3)}{\pi^{2}}T_\nu^{3},\qquad \rho_\nu=\frac{7}{8}\frac{\pi^{2}}{15}T_\nu^{4}.$$

一般相对论组分的能量密度常写为
$$\rho=\frac{\pi^{2}}{30}g_* T^{4},$$
其中 $g_*$ 是能量密度的有效自由度。

非相对论极限 $T\ll m$：
$$E\simeq m+\frac{p^{2}}{2m},$$
$$n=g\left(\frac{mT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu-m}{T}\right).$$

熵密度与共动熵守恒：
$$s=\frac{\rho+p-\mu n}{T},\qquad s=\frac{2\pi^{2}}{45}g_{*s}T^{3},\qquad s a^{3}=\text{const}.$$

辐射主导时期的 Hubble 参数：
$$H=1.66\sqrt{g_*}\frac{T^{2}}{M_{\mathrm{Pl}}}.$$

辐射主导时期的宇宙年龄数量级：
$$t\sim \frac{1}{2H}\propto T^{-2}.$$

### 最短必要推导

非相对论数密度的关键在于高斯积分：
$$n=g e^{(\mu-m)/T}\int\frac{\mathrm{d}^{3}p}{(2\pi)^3}\exp\left(-\frac{p^2}{2mT}\right),$$
因此
$$n=g\left(\frac{mT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu-m}{T}\right).$$

相对论组分的 $g_*$ 与 $g_{*s}$ 定义为
$$\rho=\frac{\pi^2}{30}g_* T^4,\qquad s=\frac{2\pi^2}{45}g_{*s}T^3.$$
若第 $i$ 个粒子种类与光子同温，则
$$g_*=\sum_{\text{boson}}g_i\left(\frac{T_i}{T}\right)^4+\frac{7}{8}\sum_{\text{fermion}}g_i\left(\frac{T_i}{T}\right)^4,$$
$$g_{*s}=\sum_{\text{boson}}g_i\left(\frac{T_i}{T}\right)^3+\frac{7}{8}\sum_{\text{fermion}}g_i\left(\frac{T_i}{T}\right)^3.$$

在常见宇宙学阶段：

- 光子单独贡献时：$g_*=g_{*s}=2$。
- 中微子退耦附近，$\gamma,e^\pm,\nu,\bar\nu$ 都相对论：  
  $$g_*=2+\frac{7}{8}(4+6)=\frac{43}{4}=10.75.$$
- $e^\pm$ 湮灭后但在中微子仍相对论时，光子与中微子温度不同：  
  $$g_{*,0}\simeq 2+\frac{7}{8}\times 6\left(\frac{4}{11}\right)^{4/3}\approx 3.36,$$
  $$g_{*s,0}\simeq 2+\frac{7}{8}\times 6\left(\frac{4}{11}\right)\approx 3.91.$$

### freeze-out / decoupling 的通用判断套路

热宇宙学题目里最常见的判断标准是比较
$$\frac{\Gamma}{H}.$$

- 若 $\Gamma/H\gg 1$，相互作用足够快，体系保持平衡。
- 若 $\Gamma/H\lesssim 1$，粒子来不及跟上膨胀，开始 freeze-out 或 decoupling。

一类非常典型的数量级题是：

1. 先写出反应率
$$\Gamma\sim n\langle \sigma v\rangle.$$
2. 再根据极限写 $n(T)$ 与 $\sigma(T)$ 的标度。
3. 最后令 $\Gamma\sim H$，解出退耦温度。

### 光子数密度、熵密度、重子光子比

今天的 CMB 温度为
$$T_{\gamma,0}\simeq 2.725\,\mathrm{K}.$$
因此
$$n_{\gamma,0}=\frac{2\zeta(3)}{\pi^2}T_{\gamma,0}^3\approx 411\,\mathrm{cm}^{-3}.$$

对光子，
$$s_\gamma=\frac{\rho_\gamma+p_\gamma}{T_\gamma}=\frac{4}{3}\frac{\rho_\gamma}{T_\gamma}=\frac{4\pi^2}{45}T_\gamma^3.$$
因此
$$\frac{s_\gamma}{n_\gamma}=\frac{4\pi^2/45}{2\zeta(3)/\pi^2}\approx 3.60.$$

重子光子比定义为
$$\eta\equiv \frac{n_B}{n_\gamma}\sim 6\times 10^{-10}.$$
因此每重子熵大约是
$$\frac{s_\gamma}{n_B}=\frac{s_\gamma/n_\gamma}{n_B/n_\gamma}\approx \frac{3.60}{6\times 10^{-10}}\approx 6\times 10^9.$$
这就是宇宙“每个重子对应大量光子”的精确表述，也是复合与 BBN 温标之所以远低于简单束缚能尺度的重要原因。

### 物理图像与常见解释

- $g_*$ 越大，同温度下总能量密度越大，因此膨胀越快。
- 热平衡是否维持由相互作用率 $\Gamma$ 与膨胀率 $H$ 竞争决定。
- 一般地，$\Gamma\gg H$ 时平衡能维持；$\Gamma\lesssim H$ 时发生 freeze-out 或 decoupling。
- 共动熵守恒不是说温度不变，而是说 $a^3 s$ 保持不变；若某些粒子对某一热浴加热，就会改变不同组分之间的温度比。

### 易错点 / 常见变体

- $g_*$ 用于能量密度，$g_{*s}$ 用于熵密度；二者在粒子种类都超相对论时相同，但一般不必强行相等。
- 非相对论极限的数密度有指数抑制 $e^{-m/T}$，是后面 Saha、退耦和丰度估算的基础。
- $\Gamma/H$ 的估算常常只要数量级，不要在常数因子上过度纠缠。
- 今天的 $g_{*,0}$ 与 $g_{*s,0}$ 不同，正是因为中微子温度低于光子温度。

### 常见问法

- 推导非相对论极限下的粒子数密度。
- 写出相对论粒子的 $n(T)$、$\rho(T)$。
- 说明 $g_*$、$g_{*s}$ 的意义。
- 用 $\Gamma\sim H$ 估计退耦温度。
- 解释为什么宇宙每个重子对应如此多光子。

### 一句话结论

热宇宙学的核心判断标准是：先写平衡分布，再看 $\Gamma/H$，最后用 $g_*$ 与熵守恒追踪温度和丰度的演化。

## 3. 复合、退耦与早期热过程

### 核心定义与物理量

本节集中处理三个高频过程：

- 中微子退耦
- 氢复合
- 光子退耦

它们共同决定 CMB、CNB 和可见宇宙热历史的关键转折点。

### 必背公式

中微子退耦由
$$\Gamma_\nu\sim G_F^2 T^5,\qquad H\sim 1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}}$$
决定，因此
$$T_{\nu,\mathrm{dec}}\sim \left(\frac{1.66\sqrt{g_*}}{G_F^2 M_{\mathrm{Pl}}}\right)^{1/3}\sim \mathcal{O}(1)\,\mathrm{MeV}.$$

电子正电子湮灭后，由熵守恒得到
$$\frac{T_{\nu,0}}{T_{\gamma,0}}=\left(\frac{4}{11}\right)^{1/3},\qquad T_{\nu,0}\simeq 1.95\,\mathrm{K}.$$

复合反应
$$e^-+p\rightleftharpoons H+\gamma$$
在热平衡下满足 Saha 方程：
$$\frac{n_e n_p}{n_H}\simeq \left(\frac{m_e T}{2\pi}\right)^{3/2}e^{-E_0/T},\qquad E_0=13.6\,\mathrm{eV}.$$

定义电离度
$$X_e\equiv \frac{n_e}{n_B},\qquad n_B=n_p+n_H,\qquad n_e=n_p,$$
则可写成
$$\frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_e T}{2\pi}\right)^{3/2}e^{-E_0/T}.$$

### 最短必要推导

Saha 方程来自非相对论密度公式和化学平衡条件
$$\mu_e+\mu_p=\mu_H,\qquad \mu_\gamma=0.$$

对电子、质子、氢原子分别写
$$n_i=g_i\left(\frac{m_i T}{2\pi}\right)^{3/2}\exp\left(\frac{\mu_i-m_i}{T}\right),$$
再取比值即可得到上式。

中微子温度关系来自电子正电子湮灭前后的共动熵守恒：
$$g_{*s,\mathrm{before}}(aT)^3_{\mathrm{before}}=g_{*s,\mathrm{after}}(aT)^3_{\mathrm{after}},$$
其中
$$g_{*s,\mathrm{before}}=2+\frac{7}{8}\times 4=\frac{11}{2},\qquad g_{*s,\mathrm{after}}=2.$$

### 中微子退耦的完整数量级推导

中微子在 $MeV$ 量级时仍通过弱相互作用和电子正电子热浴交换能量。此时典型反应有
$$\nu+\bar\nu\leftrightarrow e^++e^-,\qquad \nu+e^\pm\leftrightarrow \nu+e^\pm.$$

相对论电子的数密度标度为
$$n_{e^\pm}\sim T^3.$$
弱相互作用截面由费米常数给出，数量级为
$$\sigma_{\mathrm{weak}}\sim G_F^2 E^2\sim G_F^2 T^2.$$
因此
$$\Gamma_\nu\sim n\langle \sigma v\rangle \sim T^3\times G_F^2 T^2=G_F^2 T^5.$$

辐射主导时期
$$H=1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}}.$$
在中微子退耦附近
$$g_*=2+\frac{7}{8}(4+6)=10.75.$$
令 $\Gamma_\nu\sim H$，得到
$$G_F^2 T_{\nu,\mathrm{dec}}^5\sim 1.66\sqrt{10.75}\frac{T_{\nu,\mathrm{dec}}^2}{M_{\mathrm{Pl}}},$$
从而
$$T_{\nu,\mathrm{dec}}\sim \left(\frac{1.66\sqrt{10.75}}{G_F^2 M_{\mathrm{Pl}}}\right)^{1/3}\approx 1.5\,\mathrm{MeV}.$$
因此标准结论通常记为
$$T_{\nu,\mathrm{dec}}\sim 1\,\mathrm{MeV}.$$

### $e^\pm$ 湮灭前后的熵守恒

中微子退耦后，电子正电子继续和光子保持热平衡，而中微子已经只随膨胀冷却：
$$T_\nu\propto a^{-1}.$$

随后 $e^\pm$ 在 $T\sim m_e$ 附近湮灭，把熵注入光子热浴。对光子-电子正电子体系用共动熵守恒：
$$g_{*s,\mathrm{before}}a^3 T_{\gamma,\mathrm{before}}^3=g_{*s,\mathrm{after}}a^3 T_{\gamma,\mathrm{after}}^3.$$
湮灭前
$$g_{*s,\mathrm{before}}=2+\frac{7}{8}(2+2)=\frac{11}{2},$$
湮灭后
$$g_{*s,\mathrm{after}}=2.$$
因此
$$\frac{11}{2}T_{\gamma,\mathrm{before}}^3=2T_{\gamma,\mathrm{after}}^3,$$
即
$$T_{\gamma,\mathrm{after}}=\left(\frac{11}{4}\right)^{1/3}T_{\gamma,\mathrm{before}}.$$

因为在湮灭开始前光子与中微子温度相同，而之后中微子不被加热，所以
$$T_{\nu,\mathrm{after}}=T_{\gamma,\mathrm{before}}.$$
于是得到
$$\frac{T_\nu}{T_\gamma}=\left(\frac{4}{11}\right)^{1/3},\qquad T_{\nu,0}\simeq 1.95\,\mathrm{K}.$$

### 复合与光子退耦：不是同一件事

复合指反应
$$e^-+p\to H+\gamma$$
开始使中性氢大量形成，即自由电子数密度显著下降。

光子退耦指 Thomson 散射率
$$\Gamma_T=n_e\sigma_T c$$
变得小于膨胀率 $H$，因此光子自由程变得和 Hubble 尺度相当，开始自由传播。

所以时间顺序是：

1. 先由 Saha 方程决定 $X_e(T)$ 从接近 1 开始快速下降。
2. 因为 $n_e=X_e n_B$ 下降，Thomson 散射率也下降。
3. 当 $\Gamma_T<H$ 时才发生 photon decoupling。

### 从 $X_e(T)$ 到 $\Gamma_T<H$ 的估算

由 Saha 方程
$$\frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_e T}{2\pi}\right)^{3/2}e^{-E_0/T},$$
再用
$$n_B=\eta n_\gamma=\eta\frac{2\zeta(3)}{\pi^2}T^3,$$
可得
$$\frac{X_e^2}{1-X_e}\propto \frac{1}{\eta}\left(\frac{m_e}{T}\right)^{3/2}e^{-E_0/T}.$$

因为 $\eta\sim 10^{-10}$ 很小，所以即使 $T\ll E_0$，高能尾部仍足以保持较高电离度。只有当
$$T_{\mathrm{rec}}\sim 0.3\,\mathrm{eV}$$
附近时，$X_e$ 才开始明显下降。

之后 Thomson 散射率
$$\Gamma_T=n_e\sigma_T c=X_e n_B \sigma_T c$$
随 $X_e$ 降低而迅速减小。由于
$$H\sim H_0\sqrt{\Omega_{m0}}(1+z)^{3/2}$$
在复合附近变化较慢，因此当 $X_e$ 下降一到两个数量级后，很快便达到
$$\Gamma_T\lesssim H.$$
这对应于
$$z_{\mathrm{dec}}\sim 1100,\qquad T_{\mathrm{dec}}\sim 0.26\,\mathrm{eV}.$$

### BBN：从 $n/p$ 到 $^4\mathrm{He}$ 丰度

在 $T\gtrsim 1\,\mathrm{MeV}$ 时，弱相互作用
$$n+\nu_e\leftrightarrow p+e^-,\qquad n+e^+\leftrightarrow p+\bar\nu_e,\qquad n\leftrightarrow p+e^-+\bar\nu_e$$
保持中子和质子的化学平衡，因此
$$\frac{n_n}{n_p}\simeq \exp\left(-\frac{Q}{T}\right),\qquad Q\equiv m_n-m_p=1.293\,\mathrm{MeV}.$$

当这些弱反应冻结时，取
$$T_f\sim 0.8\,\mathrm{MeV},$$
则
$$\left(\frac{n}{p}\right)_f\simeq e^{-Q/T_f}\approx e^{-1.293/0.8}\approx 0.20.$$

从弱冻结到真正核合成开始之间，中子还会发生一部分 $\beta$ 衰变，因此到 deuterium bottleneck 解开时，常用估算是
$$\left(\frac{n}{p}\right)_{\mathrm{BBN}}\sim \frac{1}{7}\text{ 到 }\frac{1}{6}.$$

当温度降到
$$T_D\sim 0.1\,\mathrm{MeV}$$
时，氘能够稳定存在，随后几乎所有剩余中子都会迅速被锁进 $^4\mathrm{He}$。因为 $^4\mathrm{He}$ 每个核含两个中子、两个质子，故其质量丰度近似为
$$Y_p\equiv \frac{4n_{\mathrm{He}}}{n_B}\simeq \frac{2(n/p)}{1+(n/p)}.$$
若取 $(n/p)\sim 1/7$，则
$$Y_p\simeq \frac{2/7}{1+1/7}=\frac{2}{8}\approx 0.25.$$
这就是标准宇宙学里 $^4\mathrm{He}$ 质量丰度约 $25\%$ 的经典数量级解释。

### 物理图像与常见解释

- 为什么复合温度 $0.3\,\mathrm{eV}$ 远低于氢束缚能 $13.6\,\mathrm{eV}$：
  因为 $\eta=n_B/n_\gamma\sim 10^{-10}$ 极小，光子远多于重子，所以高能光子的尾部在温度已经很低时仍能高效电离氢，必须等到指数尾部足够稀薄时中性氢才能稳定存在。
- 复合不等于光子立刻退耦：先有电子结合成原子、自由电子减少，然后 Thomson 散射率下降，光子才在 $z\sim 1100$ 左右 decouple。
- BBN 之所以不是在 $T\sim 2.2\,\mathrm{MeV}$ 就开始，是因为虽然氘束缚能是 $2.2\,\mathrm{MeV}$，但大量高能光子会立刻把刚形成的氘打碎，必须等到更低温度 $T\sim 0.1\,\mathrm{MeV}$ 才能越过 deuterium bottleneck。

### 高频结论

- 中微子退耦温度：$T_{\nu,\mathrm{dec}}\sim 1\,\mathrm{MeV}$。
- 复合温度：$T_{\mathrm{rec}}\sim 0.3\,\mathrm{eV}$。
- 光子退耦红移：$z_{\mathrm{dec}}\sim 1100$。
- 当前中微子背景温度：$T_{\nu,0}\simeq 1.95\,\mathrm{K}$。
- 弱冻结后到 BBN 开始前，$n/p$ 从约 $1/5$ 下降到约 $1/7$。
- $^4\mathrm{He}$ 质量丰度的标准数量级是 $Y_p\sim 0.25$。

### BBN 与早期宇宙的简要补充

若考到更早的热历史，常见的简答主线是：

- 中微子退耦发生在 $MeV$ 量级。
- 随后弱相互作用冻结，$n/p$ 比随 $e^{-\Delta m/T}$ 下降。
- 氘瓶颈解除后发生原初核合成，形成 $^4\mathrm{He}$ 等轻元素。
- 若要写到数量级，最常见链条就是 $T_f\sim 0.8\,\mathrm{MeV}$、$T_D\sim 0.1\,\mathrm{MeV}$、$Y_p\sim 0.25$。

### 易错点 / 常见变体

- Saha 方程左边是 $X_e^2/(1-X_e)$，不是其倒数。
- $T_{\nu,0}/T_{\gamma,0}$ 的推导用的是光子-电子正电子体系的熵守恒，而不是把中微子也一起当作始终热接触。
- $\Gamma\sim n_e\sigma_T$ 的光子退耦判断是粗略估算，精确重组史要用 Boltzmann 方程。
- BBN 的氘瓶颈与氢复合是两件不同的事；一个在 $0.1\,\mathrm{MeV}$，一个在 $0.3\,\mathrm{eV}$。
- 中微子退耦温度的数量级常记成 $1\,\mathrm{MeV}$，不同近似下写成 $1$ 到 $2\,\mathrm{MeV}$ 都常见。

### 常见问法

- 推导 Saha 方程。
- 解释为什么复合温度远低于氢束缚能。
- 估计中微子退耦温度。
- 推导现在的中微子背景温度。
- 解释复合与光子退耦的区别。
- 从 $n/p$ 估计 $^4\mathrm{He}$ 丰度。

### 一句话结论

本节最重要的链条是：$MeV$ 量级中微子退耦，$e^\pm$ 湮灭抬高光子温度，$eV$ 量级氢复合，随后自由电子减少导致光子退耦。

## 4. 宇宙学距离与背景观测量

### 核心定义与物理量

背景观测最常见的四种距离是：

- 共动距离 $\chi$
- 横向共动距离 $D_M$
- 光度距离 $D_L$
- 角直径距离 $D_A$

对平直宇宙，
$$\chi(z)=\int_0^z \frac{c\,\mathrm{d}z'}{H(z')}.$$

一般曲率下，横向共动距离写成
$$D_M=
\begin{cases}
\frac{c}{H_0\sqrt{\Omega_{k0}}}\sinh\left(\sqrt{\Omega_{k0}}H_0\chi/c\right), & \Omega_{k0}>0, \\
\chi, & \Omega_{k0}=0, \\
\frac{c}{H_0\sqrt{|\Omega_{k0}|}}\sin\left(\sqrt{|\Omega_{k0}|}H_0\chi/c\right), & \Omega_{k0}<0.
\end{cases}$$

### 必背公式

红移与尺度因子：
$$1+z=\frac{1}{a}.$$

光度距离定义：
$$F=\frac{L}{4\pi D_L^2},\qquad D_L=\sqrt{\frac{L}{4\pi F}}.$$

角直径距离定义：
$$D_A=\frac{\text{物理横向尺度}}{\text{张角}}.$$

Etherington reciprocity relation：
$$D_L=(1+z)^2 D_A.$$

平直宇宙中
$$D_L=(1+z)\chi,\qquad D_A=\frac{\chi}{1+z}.$$

距离模数：
$$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right).$$

$H(z)$ 的标准形式：
$$H^2(z)=H_0^2\left[\Omega_{r0}(1+z)^4+\Omega_{m0}(1+z)^3+\Omega_{k0}(1+z)^2+\Omega_{\Lambda 0}\right].$$

### 最短必要推导

从 FRW 径向 null geodesic 出发，令 $\mathrm{d}s^2=0$、$\mathrm{d}\Omega=0$，则
$$0=-c^2\mathrm{d}t^2+a^2(t)\frac{\mathrm{d}r^2}{1-k r^2}.$$
若取平直情形，得到
$$\mathrm{d}r=\frac{c\,\mathrm{d}t}{a(t)}.$$
结合
$$\frac{\mathrm{d}z}{\mathrm{d}t}=-(1+z)H(z),$$
可写成
$$r=\int_{t_e}^{t_0}\frac{c\,\mathrm{d}t}{a(t)}=\int_0^z \frac{c\,\mathrm{d}z'}{H(z')}\equiv \chi(z).$$

若在平直宇宙中定义横向物理距离为 $a r$，而光路积分得到共动半径 $r=\chi$，则
$$D_A=\frac{a r}{\theta}=\frac{\chi}{1+z},\qquad D_L=(1+z)^2 D_A=(1+z)\chi.$$

### $D_L=(1+z)^2D_A$ 的来源分解

这一定律最好不要死记，考试里可以按三步解释：

1. 单个光子的能量红移一因子 $1/(1+z)$。
2. 光子到达率因为时间膨胀再多一因子 $1/(1+z)$。
3. 波前面积由角直径距离控制，面积标度是 $4\pi D_A^2$。

因此观测到的流量为
$$F=\frac{L}{4\pi D_A^2(1+z)^2},$$
与光度距离定义
$$F=\frac{L}{4\pi D_L^2}$$
比较，即得
$$D_L=(1+z)^2 D_A.$$

### 物理图像与常见解释

- $D_L$ 回答“看起来多暗”。
- $D_A$ 回答“看起来多大”。
- $\chi$ 是沿视线累积得到的几何距离。
- $D_L$ 与 $D_A$ 的不同，本质来自宇宙膨胀对光子能量和到达率的双重影响。

### 统一的距离字典

若先求出 $\chi(z)$，则：

- 横向共动距离是 $D_M$。
- 角直径距离是
$$D_A=\frac{D_M}{1+z}.$$
- 光度距离是
$$D_L=(1+z)D_M=(1+z)^2 D_A.$$
- 体积平均距离常用于 BAO：
$$D_V(z)\equiv \left[D_M^2(z)\frac{cz}{H(z)}\right]^{1/3}.$$

因此开卷时最稳的路线是：先求 $H(z)$，再积分得 $\chi(z)$，最后根据几何情形转成 $D_M,D_A,D_L$。

### 低红移展开

若定义 deceleration 参数和 jerk 参数，并默认忽略曲率项的低红移修正，
$$q\equiv -\frac{\ddot a}{aH^2},\qquad j\equiv \frac{a^{(3)}}{aH^3},$$
则在 $z=0$ 附近，
$$H(z)=H_0\left[1+(1+q_0)z+\frac{1}{2}(j_0-q_0^2)z^2+\mathcal{O}(z^3)\right],$$
从而
$$D_L(z)=\frac{c}{H_0}\left[z+\frac{1}{2}(1-q_0)z^2-\frac{1}{6}(1-q_0-3q_0^2+j_0)z^3+\mathcal{O}(z^4)\right].$$

这是低红移宇宙学距离展开的高频结果。

### 宇宙年龄与 lookback time

从
$$\mathrm{d}t=-\frac{\mathrm{d}z}{(1+z)H(z)}$$
可得
$$t(z)=\int_z^\infty \frac{\mathrm{d}z'}{(1+z')H(z')},$$
以及
$$t_L(z)\equiv t_0-t(z)=\int_0^z \frac{\mathrm{d}z'}{(1+z')H(z')}.$$

这两个积分在数值题里都很常见：

- $t(z)$ 是“宇宙在该红移时已经活了多久”。
- $t_L(z)$ 是“我们现在回看这个红移时回溯了多久”。

### $\Lambda\mathrm{CDM}$ 的标准计算模板

若题目给定 $\Omega_{m0}$、$H_0$，并让你算某个红移 $z$ 的距离或宇宙年龄，标准模板是：

1. 写
$$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{r0}(1+z)^4+\Omega_{k0}(1+z)^2+\Omega_{\Lambda 0}}.$$
2. 若可忽略辐射与曲率，就简化成
$$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{\Lambda 0}}.$$
3. 再按题意做积分：
$$\chi(z)=\int_0^z \frac{c\,\mathrm{d}z'}{H(z')},\qquad t(z)=\int_z^\infty \frac{\mathrm{d}z'}{(1+z')H(z')},\qquad t_L(z)=\int_0^z \frac{\mathrm{d}z'}{(1+z')H(z')}.$$
4. 最后转换：
$$D_L=(1+z)D_M,\qquad D_A=\frac{D_M}{1+z}.$$

例如在平直 $\Lambda\mathrm{CDM}$ 中取
$$\Omega_{m0}=0.3,\qquad \Omega_{\Lambda 0}=0.7,\qquad H_0=70\,\mathrm{km\,s^{-1}\,Mpc^{-1}},\qquad z=1,$$
则
$$H(z=1)\approx 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}},$$
$$\chi(z=1)\approx 3.30\,\mathrm{Gpc},\qquad D_L(z=1)\approx 6.61\,\mathrm{Gpc},\qquad D_A(z=1)\approx 1.65\,\mathrm{Gpc},$$
$$t(z=1)\approx 5.75\,\mathrm{Gyr},\qquad t_L(z=1)\approx 7.72\,\mathrm{Gyr}.$$

### 易错点 / 常见变体

- 若不取自然单位，距离公式前面要保留 $c$。
- $D_L=(1+z)\chi$ 和 $D_A=\chi/(1+z)$ 只对平直宇宙直接成立；一般情形需先写 $D_M$。
- 低红移展开的 $z^3$ 项最容易写错号，开卷时最好直接抄完整公式。
- $t(z)$ 和 $t_L(z)$ 经常被混淆；一个是“那时宇宙多大岁数”，一个是“回看了多久”。

### 常见问法

- 写出几种宇宙学距离并给出相互关系。
- 推导或解释 $D_L=(1+z)^2 D_A$。
- 给出 $\Lambda\mathrm{CDM}$ 中 $H(z)$、$\chi(z)$、$D_L(z)$、$D_A(z)$。
- 对 $D_L$ 做低红移展开。
- 计算某个红移下的宇宙年龄与 lookback time。

### 一句话结论

背景观测宇宙学的主干是：先由 $H(z)$ 积分得到 $\chi(z)$，再由 $\chi$ 转成 $D_A$、$D_L$ 和距离模数。

## 5. 线性微扰基础

### 核心定义与物理量

宇宙学微扰论研究的是背景量之上的小起伏，例如
$$\rho(t,\mathbf{x})=\bar\rho(t)+\delta\rho(t,\mathbf{x}),\qquad p(t,\mathbf{x})=\bar p(t)+\delta p(t,\mathbf{x}),\qquad \mathbf{v}=\bar{\mathbf{v}}+\delta\mathbf{v}.$$

密度对比定义为
$$\delta\equiv \frac{\delta\rho}{\bar\rho}.$$

相对论标量微扰最一般的线元可写为
$$\mathrm{d}s^2=a^2(\eta)\left[-(1+2A)\mathrm{d}\eta^2+2\partial_i B\,\mathrm{d}\eta\,\mathrm{d}x^i+\left((1+2C)\delta_{ij}+2D_{ij}E\right)\mathrm{d}x^i\mathrm{d}x^j\right],$$
其中
$$D_{ij}\equiv \partial_i\partial_j-\frac{1}{3}\delta_{ij}\nabla^2,\qquad \mathcal H\equiv \frac{a'}{a}.$$

Newtonian gauge 取
$$B=E=0,\qquad A=\Phi,\qquad C=-\Psi,$$
于是
$$\mathrm{d}s^2=a^2(\eta)\left[-(1+2\Phi)\mathrm{d}\eta^2+(1-2\Psi)\mathrm{d}\mathbf{x}^2\right].$$

Bardeen potentials 定义为
$$\Phi_B\equiv A+\frac{1}{a}\left[a(B-E')\right]',\qquad \Psi_B\equiv -C+\frac{1}{3}\nabla^2E-\mathcal H(B-E').$$
在 Newtonian gauge 中它们就退化为 $\Phi_B=\Phi$、$\Psi_B=\Psi$。若无各向异性应力，通常有 $\Phi=\Psi$。

### 必背公式

牛顿版微扰中，亚视界、非相对论物质主导时的连续方程、Euler 方程与 Poisson 方程为
$$\dot\delta+\frac{1}{a}\nabla\cdot\mathbf v=0,\qquad \dot{\mathbf v}+H\mathbf v=-\frac{1}{a}\nabla\Phi,\qquad \nabla^2\Phi=4\pi G a^2\bar\rho\,\delta.$$
它们合并为
$$\ddot\delta_m+2H\dot\delta_m-4\pi G\bar\rho_m\delta_m=0.$$

物质主导时期的增长模：
$$\delta_m\propto a.$$

若流体有压强，线性扰动方程改写为
$$\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\bar\rho\right)\delta=0.$$

对辐射主导时期，
$$a\propto t^{1/2},\qquad H=\frac{1}{2t},\qquad \bar\rho=\frac{3}{32\pi G t^2},\qquad c_s^2=\frac{1}{3},$$
因此
$$\ddot\delta+\frac{1}{t}\dot\delta+\left(\frac{k^2}{3a^2}-\frac{3}{8t^2}\right)\delta=0.$$
在长波极限 $k\to 0$ 下设 $\delta\propto t^n$，得到
$$n^2-\frac{3}{8}=0,\qquad n=\pm \sqrt{\frac{3}{8}}.$$

Jeans 波数、Jeans 物理波长和 Jeans 质量分别为
$$k_J^2=\frac{4\pi G\bar\rho\,a^2}{c_s^2},\qquad \lambda_J^{\mathrm{phys}}=\frac{2\pi a}{k_J}=c_s\sqrt{\frac{\pi}{G\bar\rho}},$$
$$M_J\sim \frac{4\pi}{3}\bar\rho\left(\frac{\lambda_J^{\mathrm{phys}}}{2}\right)^3.$$

定义线性增长因子 $D(z)$：
$$\delta_m(k,z)=D(z)\delta_m(k,0),\qquad D(0)=1.$$

原初曲率扰动 $\mathcal{R}$ 的功率谱定义为
$$\langle \mathcal{R}(\mathbf{k})\mathcal{R}(\mathbf{k}')\rangle=(2\pi)^3\delta^{(3)}(\mathbf{k}+\mathbf{k}')P_{\mathcal{R}}(k).$$

无量纲功率谱定义为
$$\Delta^2(k)\equiv \frac{k^3}{2\pi^2}P(k).$$

对近乎标度不变的原初谱，
$$\Delta_{\mathcal{R}}^2(k)=A_s\left(\frac{k}{k_*}\right)^{n_s-1},\qquad P_{\mathcal{R}}(k)=\frac{2\pi^2}{k^3}A_s\left(\frac{k}{k_*}\right)^{n_s-1}.$$

相对论标量微扰在规范变换
$$\eta\mapsto \tilde\eta=\eta+\xi^0,\qquad x^i\mapsto \tilde x^i=x^i+\partial^iL$$
下满足
$$\tilde A=A-\mathcal H\xi^0-(\xi^0)',\qquad \tilde B=B+\xi^0-L',$$
$$\tilde C=C-\mathcal H\xi^0-\frac{1}{3}\nabla^2L,\qquad \tilde E=E-L.$$
因此
$$\Phi_B=A+\frac{1}{a}\left[a(B-E')\right]',\qquad \Psi_B=-C+\frac{1}{3}\nabla^2E-\mathcal H(B-E')$$
都是规范不变量。

在 Newtonian gauge 中，一阶 Einstein 方程可整理成
$$\nabla^2\Psi-3\mathcal H(\Psi'+\mathcal H\Phi)=4\pi G a^2\delta\rho,$$
$$\partial_i(\Psi'+\mathcal H\Phi)=4\pi G a^2(\bar\rho+\bar p)v_i,$$
$$\Psi''+\mathcal H(\Phi'+2\Psi')+\left(2\mathcal H'+\mathcal H^2\right)\Phi-\frac{1}{3}\nabla^2(\Phi-\Psi)=4\pi G a^2\delta p,$$
$$\partial_i\partial_j(\Phi-\Psi)-\frac{1}{3}\delta_{ij}\nabla^2(\Phi-\Psi)=8\pi G a^2\Sigma_{ij}.$$
若各向异性张力为零，即 $\Sigma_{ij}=0$，则
$$\Phi=\Psi.$$

这时相对论 Poisson 方程为
$$\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi G a^2\delta\rho,$$
在亚视界极限 $k\gg aH$ 且势变化缓慢时退化为
$$\nabla^2\Phi\simeq 4\pi G a^2\delta\rho.$$

对绝热扰动 $\delta p=c_s^2\delta\rho$，Bardeen equation 可写为
$$\Phi''+3(1+c_s^2)\mathcal H\Phi'+\left[2\mathcal H'+(1+3c_s^2)\mathcal H^2-c_s^2\nabla^2\right]\Phi=0,$$
Fourier 空间中即
$$\Phi_k''+3(1+c_s^2)\mathcal H\Phi_k'+\left[c_s^2k^2+2\mathcal H'+(1+3c_s^2)\mathcal H^2\right]\Phi_k=0.$$

### 最短必要推导

先看牛顿版。对连续方程再取时间导数，并用 Euler 方程消去 $\mathbf v$，得到
$$\ddot\delta+\frac{1}{a}\nabla\cdot\dot{\mathbf v}-\frac{\dot a}{a^2}\nabla\cdot\mathbf v=0.$$
再用连续方程 $\nabla\cdot\mathbf v=-a\dot\delta$ 和 Poisson 方程代回，即得
$$\ddot\delta+2H\dot\delta-4\pi G\bar\rho\,\delta=0.$$
若保留压强项 $\delta p=c_s^2\delta\rho$，则同样可得到
$$\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\bar\rho\right)\delta=0.$$
辐射主导长波极限下设 $\delta\propto t^n$，立刻得到
$$n(n-1)+n-\frac{3}{8}=0\qquad \Longrightarrow\qquad n=\pm \sqrt{\frac{3}{8}}.$$

再看相对论版。规范变换下
$$B-E'\mapsto B-E'+\xi^0,$$
因此
$$\frac{1}{a}\left[a(B-E')\right]'\mapsto \frac{1}{a}\left[a(B-E')\right]'+\mathcal H\xi^0+(\xi^0)'.$$
这恰好抵消 $A$ 的变换
$$A\mapsto A-\mathcal H\xi^0-(\xi^0)',$$
所以 $\Phi_B$ 不变；$\Psi_B$ 的不变性同理。Newtonian gauge 只是把这两个规范不变量直接写成 $\Phi,\Psi$。

### 超视界与亚视界

判断一个模是否在视界内，比较 $k$ 与 $aH$：

- $k\ll aH$：超视界。
- $k\gg aH$：亚视界。

超视界时，局域压强和引力尚不能在一个波长内建立完整的因果响应，因此很多量近似冻结；亚视界后，不同成分的压力与引力竞争才真正决定其演化。

### 不同宇宙学时期的基本行为

- 超视界、辐射主导：曲率扰动近似守恒，势扰动缓慢演化。
- 亚视界、辐射主导：辐射模发生声学振荡，CDM 只缓慢增长，带压强流体存在 Jeans 尺度。
- 超视界、物质主导：势扰动近似常数。
- 亚视界、物质主导：物质扰动增长为 $\delta_m\propto a$。

### 物理图像与常见解释

- 超视界模在早期主要“冻结”，亚视界模才真正开始感受局域压力和引力竞争。
- 非相对论物质无压强支撑，能在物质主导时期持续增长。
- 相对论组分有压强，进入视界后会振荡而非持续增长。
- 相对论微扰里最稳的思路是：先写规范不变量，再进 Newtonian gauge 抄 Einstein 方程。
- 无各向异性应力时 $\Phi=\Psi$，这能大幅简化考试中的方程组。

### 易错点 / 常见变体

- $D(z)$ 是时间演化，$T(k)$ 是尺度依赖，两者不要混。
- $P(k)$ 与 $\Delta^2(k)$ 差一个 $k^3/(2\pi^2)$。
- 题目如果写的是“原初曲率扰动功率谱”，不要直接当成“物质功率谱”。
- 一般标量扰动里 $A,B,C,E$ 不是都物理；可观测的是规范不变量。
- $Bardeen$ 方程中的 Laplacian 项号最容易写错，Fourier 空间要用 $-\nabla^2\to k^2$。
- Jeans 波长是物理波长，不是共动波长；两者差一个 $a$。

### 常见问法

- 定义密度对比与功率谱。
- 写出物质线性增长方程。
- 写出一般标量扰动参数化与规范变换。
- 证明 Bardeen potentials 是规范不变量。
- 写出 Newtonian gauge 下的 `00/0i/ij` 一阶 Einstein 方程。
- 说明为什么无各向异性应力时有 $\Phi=\Psi$。
- 解释超视界与亚视界模的差别。
- 给出原初曲率扰动与后期物质扰动的联系。
- 从连续方程、Euler 方程、Poisson 方程推导增长方程。
- 在辐射主导时期估计 Jeans 波长和长波指数。

### 一句话结论

线性微扰论的核心是：牛顿版负责建立增长直觉，相对论版负责处理规范与大尺度势扰动，而所有观测到的结构都来自原初曲率扰动在不同尺度上的后期演化。

## 6. 结构形成与功率谱

### 核心定义与物理量

原初曲率扰动通过转移函数 $T(k)$ 与增长因子 $D(z)$ 映射到物质功率谱，再通过偏置 $b_g$ 映射到星系功率谱。

### 必背公式

常用写法是
$$\delta_m(k,z)=M(k,z)\mathcal{R}(k),\qquad M(k,z)=\frac{2k^2}{5\Omega_{m0}H_0^2}T(k)D(z).$$

因此
$$P_{mm}(k,z)=M^2(k,z)P_{\mathcal{R}}(k).$$

在线性、实空间、线性偏置近似下，
$$P_{gg}(k,z)=b_g^2(k,z)P_{mm}(k,z).$$

若考虑 Kaiser 红移空间畸变，则
$$P_{gg}^{\mathrm{obs}}(k,\mu,z)\simeq [b_g(z)+f(z)\mu^2]^2 P_{mm}(k,z)+P_{\mathrm{shot}},$$
其中
$$f(z)\equiv \frac{\mathrm{d}\ln D}{\mathrm{d}\ln a}.$$

物质辐射相等时进入视界的共动波数为
$$k_{\mathrm{eq}}=a_{\mathrm{eq}}H_{\mathrm{eq}}\simeq 0.073\,\Omega_{m0}h^2\,\mathrm{Mpc}^{-1}.$$

### 最短必要推导

物质功率谱的结构可以压缩成一条链：
$$P_{\mathcal{R}}(k)\xrightarrow{\ T(k)\ }\ P_{mm}(k,z)\xrightarrow{\ b_g\ }\ P_{gg}(k,z).$$

更明确地，
$$P_{gg}(k,z)=b_g^2(k,z)\left[\frac{2k^2}{5\Omega_{m0}H_0^2}T(k)D(z)\right]^2 P_{\mathcal{R}}(k).$$

这里各项的意义要分清：

- $P_{\mathcal R}(k)$：原初曲率扰动功率谱，维度是长度的三次方。
- $M(k,z)$：把曲率扰动转换为物质密度对比的传递核，本身无量纲。
- $T(k)$：记录某个 $k$ 模从超视界到后期线性演化中被早期宇宙效应如何改写。
- $D(z)$：纯时间依赖的线性增长因子，通常取 $D(0)=1$。
- $b_g(k,z)$：星系偏置，描述可见星系如何追踪总物质。

### 关联函数与功率谱的双向关系

定义密度场的 Fourier 变换为
$$\delta(\mathbf x)=\int \frac{\mathrm d^3k}{(2\pi)^3}\,\delta(\mathbf k)e^{i\mathbf k\cdot\mathbf x}.$$
功率谱定义为
$$\langle \delta(\mathbf k)\delta(\mathbf k')\rangle=(2\pi)^3\delta^{(3)}(\mathbf k+\mathbf k')P(k).$$
两点关联函数定义为
$$\xi(\mathbf r)\equiv \langle \delta(\mathbf x)\delta(\mathbf x+\mathbf r)\rangle.$$
由 Fourier 变换直接得到
$$\xi(\mathbf r)=\int \frac{\mathrm d^3k}{(2\pi)^3}P(k)e^{i\mathbf k\cdot\mathbf r}.$$
若宇宙在统计上各向同性，则只依赖于 $r=|\mathbf r|$，从而
$$\xi(r)=\int \frac{k^2\,\mathrm dk}{2\pi^2}P(k)\frac{\sin kr}{kr}.$$
反过来，
$$P(k)=4\pi\int r^2\,\mathrm dr\,\xi(r)\frac{\sin kr}{kr}.$$
这就是“相关函数和功率谱是一对 Fourier-Bessel 变换”的最标准结论。

### 为什么 CDM 在辐射主导时期只对数增长

在辐射主导时期，背景总能量密度由辐射主导，因此 Hubble 阻尼很强，而 Poisson 方程右边真正主导势阱的是辐射而非 CDM 本身。对亚视界 CDM 扰动，增长方程中的引力源项不能像物质主导时期那样有效克服膨胀阻尼，因此其增长非常慢，只得到
$$\delta_m\propto \ln a.$$
这段缓慢增长称为 Mészáros 效应。

一旦进入物质主导时期，CDM 自身主导引力势阱，才恢复
$$\delta_m\propto a.$$

### $T(k)$ 的物理来源

如果所有模都永远超视界或都在同一背景中进入视界，那么 $T(k)$ 就不会有显著尺度依赖。真正造成 $T(k)$ 结构的是：

- 小尺度模先在辐射主导时期进入视界，受到增长压制。
- 大尺度模晚一些进入视界，往往在物质主导时期才开始亚视界演化。
- 重子和光子耦合会带来 BAO 结构。
- 中微子自由流动、重子压强等也会修改小尺度行为。

因此 $T(k)$ 本质上是“不同尺度在不同宇宙学阶段进入视界”的历史记录。

### 物理图像与常见解释

若一个模在辐射主导时期进入视界：

- 非相对论物质扰动在辐射主导时期只能对数增长：
$$\delta_m\propto \ln a.$$
- 到物质主导时期才转为
$$\delta_m\propto a.$$
- 辐射扰动由于压强效应会发生声学振荡：
$$\delta_r\sim \cos(k c_s\eta+\varphi),\qquad c_s\simeq \frac{1}{\sqrt{3}}.$$

因此，小尺度模因为更早进入辐射主导时期的视界而被压制，这就是 $P_{mm}(k)$ 在大 $k$ 端下降的根本原因。

### $P_{mm}(k)$ 的典型形状

典型示意图：

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

若原初谱近乎标度不变 $n_s\simeq 1$：

- 在 $k\ll k_{\mathrm{eq}}$：
$$T(k)\simeq 1,\qquad P_{mm}(k)\propto k^{n_s}\approx k.$$
- 在 $k\gg k_{\mathrm{eq}}$：
$$T(k)\sim \frac{\ln(k/k_{\mathrm{eq}})}{(k/k_{\mathrm{eq}})^2},$$
因此
$$P_{mm}(k)\propto k^{n_s-4}\ln^2(k/k_{\mathrm{eq}})\approx k^{-3}\ln^2 k.$$

### $k_{\mathrm{eq}}$、BAO 尺度与声学视界的区别

这三个尺度经常被混：

- $k_{\mathrm{eq}}$：物质辐射相等时进入视界的波数，控制功率谱转折点。
- $r_s$ 或 $r_d$：声学视界，是光子-重子流体在拖曳时期之前传播过的最大共动距离，控制 BAO 标准尺。
- BAO wiggles：$P(k)$ 上的振荡结构，其频率由 $r_d$ 决定，而不是由 $k_{\mathrm{eq}}$ 决定。

因此：

- $k_{\mathrm{eq}}$ 决定“整条谱在哪里拐弯”。
- $r_d$ 决定“谱上细小振荡的周期”。

### BAO 的结构形成意义

重子-光子耦合流体在复合前发生声学振荡，冻结后在物质功率谱与星系相关函数中留下 BAO 特征尺度。它本质上是早期宇宙声学视界 $r_d$ 在晚期结构中的“标准尺”遗迹。

### 易错点 / 常见变体

- $P_{gg}$ 和 $P_{mm}$ 只在最简单线性偏置下差一个 $b_g^2$，非线性尺度上不再成立。
- $k_{\mathrm{eq}}$ 的物理意义是“在物质辐射相等时进入视界的波数”，不是 BAO 波数。
- $D(z)$ 是只依赖时间的增长因子，而 $T(k)$ 保留了早期不同尺度进入视界时的历史记忆。
- $P_{\mathcal R}(k)$ 是原初曲率谱，不是密度谱；中间必须经过 $M(k,z)$。

### 常见问法

- 从 $P_{\mathrm{ini}}(k)$ 写到 $P_{gg}(k,z)$。
- 定义 $\xi(r)$ 与 $P(k)$，并写出二者关系。
- 描述辐射主导时期进入视界的物质模与辐射模如何演化。
- 解释 $k_{\mathrm{eq}}$ 左右两侧 $P_{mm}(k)$ 的形状。
- 区分 $k_{\mathrm{eq}}$、BAO 尺度和声学视界。

### 一句话结论

结构形成的所有尺度依赖，本质上都来自“不同 $k$ 模在不同宇宙学时代进入视界”这一件事。

## 7. CMB 各向异性与弱引力透镜

### 核心定义与物理量

CMB 各向异性描述的是天空方向 $\hat{\mathbf{n}}$ 上温度涨落
$$\Theta(\hat{\mathbf{n}})\equiv \frac{\delta T}{T}(\hat{\mathbf{n}}).$$

弱引力透镜描述的是光线在弱引力势中传播时的微小偏折，可用透镜势、偏折角、剪切与会聚表征。

### 产生原初 CMB 各向异性的四种基本过程

高频标准答案就是以下四项：

1. 内禀温度涨落：最后散射面上 $\Theta_0=\delta T/T$ 本身的空间起伏。
2. Sachs-Wolfe 引力红移：光子离开势阱时发生引力红移。
3. Doppler 效应：最后散射面上重子-光子流体本征速度沿视线方向的投影。
4. Integrated Sachs-Wolfe 效应：光子传播过程中若引力势随时间演化，则沿线积分产生额外红蓝移。

压缩写法常记为
$$\Theta_{\mathrm{obs}}\sim \Theta_0+\Psi+\hat{\mathbf{n}}\cdot \mathbf{v}_b+\int(\Phi'+\Psi')\,\mathrm{d}\eta.$$

### 最后散射前后的物理时间顺序

考试里若要写得完整，可以按下列顺序组织：

1. 很早时光子、电子、重子紧耦合，形成重子-光子流体。
2. 原初扰动进入视界后，流体在引力和辐射压作用下发生声学振荡。
3. 复合使自由电子显著减少。
4. Thomson 散射率下降，光子退耦，形成最后散射面。
5. 退耦后的 CMB 光子基本自由传播，但沿途仍受引力势变化与弱透镜影响。

### 四个 CMB 源项与 line-of-sight 的对应

line-of-sight 思想是：今天看到的各向异性由“最后散射面局域源项 + 传播途中积分源项”共同组成。

- 内禀温度涨落 $\Theta_0$：最后散射面局域项。
- Sachs-Wolfe 项 $\Psi$：最后散射面局域引力红移。
- Doppler 项 $\hat{\mathbf n}\cdot \mathbf v_b$：最后散射面流体速度投影。
- ISW 项 $\int(\Phi'+\Psi')\,\mathrm{d}\eta$：传播途中引力势随时间变化的积分贡献。

写长答时，最标准的结构就是“前三项在最后散射面给出，最后一项沿视线积分给出”。

### 角功率谱与 cosmic variance

把温度涨落展开成球谐函数：
$$\Theta(\hat{\mathbf n})=\sum_{\ell=0}^\infty\sum_{m=-\ell}^{\ell}a_{\ell m}Y_{\ell m}(\hat{\mathbf n}).$$
若统计各向同性成立，则
$$\langle a_{\ell m}\rangle=0,\qquad \langle a_{\ell m}a_{\ell' m'}^*\rangle=C_\ell\,\delta_{\ell\ell'}\delta_{mm'}.$$
因此角功率谱定义为
$$C_\ell=\langle |a_{\ell m}|^2\rangle.$$
一个无偏估计量为
$$\hat C_\ell=\frac{1}{2\ell+1}\sum_{m=-\ell}^{\ell}|a_{\ell m}|^2.$$
若 $a_{\ell m}$ 服从高斯统计，则
$$\mathrm{Var}(\hat C_\ell)=\frac{2}{2\ell+1}C_\ell^2,$$
于是
$$\Delta C_\ell=\sqrt{\frac{2}{2\ell+1}}\,C_\ell,\qquad \frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$
这就是 cosmic variance。它说明低 $\ell$ 处可用的 $m$ 模数太少，因此即使实验无噪声也存在不可消除的统计误差。

### CMB 声学峰与阻尼的物理图像

- 大尺度低 $\ell$：主要是 SW/ISW。
- 中等尺度：重子-光子流体的声学振荡形成峰谷结构。
- 小尺度高 $\ell$：Silk damping 抑制各向异性。

若只考简答，通常写出“内禀涨落 + 引力红移 + Doppler + ISW”即可。

更完整的解释是：

- 压缩峰：流体落入势阱后被压缩到最大时形成温度峰。
- 稀疏峰：流体从压缩态反弹到最大稀疏态时形成另一类峰。
- 重子负载：重子增加流体惯性，使压缩峰与稀疏峰高度不对称。
- Silk damping：光子在最后散射前有有限平均自由程，小尺度涨落被扩散抹平。

### 弱引力透镜：星系巡天

星系弱透镜的主要观测量：

- 剪切 $\gamma=(\gamma_1,\gamma_2)$
- 会聚 $\kappa$
- 由 magnification 引起的数密度变化

测量方法：

- 测量大量背景星系的椭率和位置角。
- 做 PSF 校正、shape measurement 和统计平均。
- 构造 $\xi_\pm(\theta)$、$C_\ell^{\kappa\kappa}$ 等两点统计量。
- 做 tomography 时按红移层进行分层。

### 弱引力透镜：CMB 巡天

CMB 透镜的主要观测量：

- 透镜势 $\phi(\hat{\mathbf{n}})$
- 偏折角 $\mathbf{d}=\nabla\phi$
- 会聚 $\kappa=-\nabla^2\phi/2$

测量方法：

- 透镜会在温度与偏振图中引入模耦合。
- 透镜还能把 E 模部分转换为 B 模。
- 实际重建常用 quadratic estimator 或迭代极大似然方法。

### 透镜势、偏折角、会聚、剪切之间的关系

若把透镜写成二维势 $\phi(\hat{\mathbf n})$，则
$$\mathbf d=\nabla\phi$$
是偏折角。

放大矩阵由二阶导数决定，其中
$$\kappa=-\frac{1}{2}\nabla^2\phi$$
描述各向同性放大或缩小，而剪切描述形状被拉伸成椭圆。常写为
$$\gamma_1=\frac{1}{2}(\partial_1^2-\partial_2^2)\phi,\qquad \gamma_2=\partial_1\partial_2\phi.$$

因此：

- $\phi$ 是最基础的投影势。
- $\mathbf d$ 是一阶导。
- $\kappa,\gamma$ 是二阶导控制的可观测畸变。

### 星系透镜与 CMB 透镜的差别

- 星系透镜：直接测大量背景星系的形状统计，主要观测量是椭率、剪切和 magnification。
- CMB 透镜：不直接看“单个物体形状”，而是看温度/偏振场的模耦合与 E-to-B 转换。
- 星系透镜可做红移层析；CMB 透镜源面基本固定在最后散射面。

### 易错点 / 常见变体

- 星系弱透镜主要是测形状畸变；CMB 弱透镜主要是测温度/偏振模耦合。
- $\kappa$ 不是直接测得，而是由剪切场或透镜势重建出来。
- CMB 原初各向异性与 CMB 透镜是两个不同层次：前者是源的生成，后者是传播过程中的再加工。

### 常见问法

- 简述 CMB 各向异性的四种基本来源。
- 定义 $a_{\ell m}$、$C_\ell$ 和 cosmic variance。
- 说明星系巡天和 CMB 巡天中的弱透镜观测量与测量方式。
- 解释声学峰为什么有峰谷结构，以及为什么高 $\ell$ 会被阻尼。
- 写出 $\phi,\mathbf d,\kappa,\gamma$ 的关系。

### 一句话结论

CMB 给出的是“最后散射面与沿线传播”的信息，弱透镜给出的是“沿视线投影的引力势”信息，两者都把早期扰动与晚期结构连接起来。

## 8. BAO / SNIa / AP 等观测方法

### SNIa：标准烛光

Ia 型超新星经光变曲线宽度与颜色校正后可视为标准化烛光。观测流程是：

- 测视星等 $m$
- 由校准关系获得绝对星等 $M$
- 得距离模数
$$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right)$$
- 反推出光度距离 $D_L(z)$

SNIa 直接敏感于背景膨胀史，因此最常用来约束晚期暗能量。

标准答题链条是：

1. 通过局域样本校准 $M$。
2. 对高红移 SNIa 测 $m(z)$。
3. 得到 $\mu(z)=m(z)-M$。
4. 再由
$$\mu(z)=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right)$$
得到 $D_L(z)$。
5. 与理论模型 $D_L^{\mathrm{th}}(z;\Omega_{m0},\Omega_{\Lambda 0},w,\dots)$ 拟合，约束宇宙学参数。

### BAO：标准尺

BAO 的标准尺是拖曳时期留下的声学视界 $r_d$。

若测到横向角尺度 $\Delta\theta$，则
$$r_d=(1+z)D_A(z)\Delta\theta.$$
因此
$$D_A(z)=\frac{r_d}{(1+z)\Delta\theta}.$$

若测到径向红移间隔 $\Delta z$，则
$$r_d=\frac{c\,\Delta z}{H(z)}.$$

实际观测常同时利用横向和径向 BAO，分别约束 $D_A(z)$ 与 $H(z)$。

更完整地说，BAO 的观测量到推断量链条是：

1. 由 CMB 或早期宇宙理论给出标准尺 $r_d$。
2. 在星系两点相关函数或功率谱中测到 BAO 特征尺度。
3. 横向 BAO 给出 $D_A(z)/r_d$。
4. 径向 BAO 给出 $c/[H(z)r_d]$。
5. 若只做各向同性平均，常得到组合量 $D_V(z)/r_d$。

### AP 效应

Alcock-Paczynski 效应的核心思想是：

- 若真实目标在统计上本征各向同性，
- 但你用错误宇宙学模型把 $(\Delta\theta,\Delta z)$ 转成三维距离，
- 就会人为引入横向与径向的形变差异。

横向与径向距离分别为
$$\Delta r_\perp=(1+z)D_A(z)\Delta\theta,\qquad \Delta r_\parallel=\frac{c\,\Delta z}{H(z)}.$$

因此 AP 效应约束的是
$$F_{\mathrm{AP}}(z)=\frac{(1+z)D_A(z)H(z)}{c}.$$

AP 题最标准的表述是：  
“本征各向同性结构在错误宇宙学下会被映射成表观各向异性，因此通过恢复统计各向同性即可约束 $D_A(z)$ 与 $H(z)$ 的组合。”

### 标准尺 / 标准烛光 / 标准警报器

- 标准烛光：已知光度，测 $D_L$，典型是 SNIa。
- 标准尺：已知物理长度，测 $D_A$ 或 $H(z)$，典型是 BAO。
- 标准警报器：已知引力波波形振幅标度，直接测 $D_L$，典型是双致密星并合。

### 常见问法

- 用 SNIa 如何测 $D_L$。
- 用 BAO 如何测 $D_A$。
- AP 效应的原理是什么。
- 说明 BAO 为何能同时约束横向与径向距离。
- 区分标准烛光、标准尺与标准警报器。

### 一句话结论

这类题的共同套路是：先明确“标准量”是什么，再把角尺度、红移尺度或流量与 $D_A$、$D_L$、$H(z)$ 对应起来。

## 9. Inflation 与早期宇宙问题

### 核心定义与物理量

Inflation 是一段近似指数膨胀阶段，满足
$$\ddot a>0,\qquad \frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{1}{aH}\right)<0.$$

也就是说，共动哈勃半径 $1/(aH)$ 在 inflation 期间减小。

### 为什么需要 inflation

标准大爆炸宇宙学中的两个经典问题：

- 视界问题：最后散射面上大角尺度区域在无 inflation 时互不因果连通，但温度却几乎相同。
- 平坦性问题：若无 inflation，今天看上去极接近平直需要极端精细的初值调节。

Inflation 通过让当前可观测宇宙在早期曾处于同一小因果连通区域内，从而解决视界问题；同时快速膨胀也会压平曲率，从而缓解平坦性问题。

### 标量场暴涨的最小框架

若由标量场驱动暴涨，则
$$\rho_\phi=\frac{1}{2}\dot\phi^2+V(\phi),\qquad p_\phi=\frac{1}{2}\dot\phi^2-V(\phi).$$

slow-roll 条件下
$$\dot\phi^2\ll V,\qquad |\ddot\phi|\ll 3H|\dot\phi|,$$
因此
$$H^2\simeq \frac{8\pi G}{3}V,\qquad 3H\dot\phi\simeq -V'(\phi).$$

slow-roll 参数常定义为
$$\epsilon\equiv \frac{M_{\mathrm{Pl}}^2}{2}\left(\frac{V'}{V}\right)^2,\qquad \eta\equiv M_{\mathrm{Pl}}^2\frac{V''}{V}.$$

暴涨条件大致要求 $\epsilon\ll 1$。

### slow-roll 如何从动力学方程导出

标量场在 FRW 中满足
$$\ddot\phi+3H\dot\phi+V'(\phi)=0,$$
同时 Friedmann 方程给出
$$H^2=\frac{1}{3M_{\mathrm{Pl}}^2}\left(\frac{1}{2}\dot\phi^2+V\right).$$

若势能主导且场缓慢滚动，即
$$\dot\phi^2\ll V,\qquad |\ddot\phi|\ll 3H|\dot\phi|,$$
则上两式分别近似成
$$H^2\simeq \frac{V}{3M_{\mathrm{Pl}}^2},\qquad 3H\dot\phi\simeq -V'.$$
这就是 slow-roll 近似最常用的两条方程。

### $\epsilon_H$ 与 $\epsilon_V$

几何 slow-roll 参数可定义为
$$\epsilon_H\equiv -\frac{\dot H}{H^2}.$$
对标量场，
$$\dot H=-\frac{\dot\phi^2}{2M_{\mathrm{Pl}}^2},$$
因此
$$\epsilon_H=\frac{\dot\phi^2}{2M_{\mathrm{Pl}}^2 H^2}.$$

再用 slow-roll 近似
$$\dot\phi\simeq -\frac{V'}{3H},\qquad H^2\simeq \frac{V}{3M_{\mathrm{Pl}}^2},$$
可得
$$\epsilon_H\simeq \frac{M_{\mathrm{Pl}}^2}{2}\left(\frac{V'}{V}\right)^2\equiv \epsilon_V.$$
所以在 slow-roll 阶段，几何定义与势能定义近似一致。

### e-fold 数

定义
$$N\equiv \ln\frac{a_{\mathrm{end}}}{a}=\int_t^{t_{\mathrm{end}}}H\,\mathrm{d}t.$$

在 slow-roll 下，
$$N\simeq \frac{1}{M_{\mathrm{Pl}}^2}\int_{\phi_{\mathrm{end}}}^{\phi}\frac{V}{V'}\,\mathrm{d}\phi.$$

解决视界问题通常需要
$$N\sim 50\text{--}60,$$
但精确数值依赖 inflation 结束能标和再热历史。

### 视界问题的尺度比较链条

没有 inflation 时，在辐射和物质主导时期
$$\frac{1}{aH}$$
随时间增大，因此今天可观测宇宙中的两个相距很远区域，在复合时对应于多个彼此不因果连通的小块。

Inflation 期间则相反：
$$\frac{\mathrm d}{\mathrm dt}\left(\frac{1}{aH}\right)<0.$$
这意味着今天的大尺度模在早期曾经位于视界内：

1. 先在 inflation 前或 inflation 早期处于 $k>aH$ 的因果连通区。
2. inflation 使其被拉到 $k<aH$ 的超视界区。
3. 晚期辐射/物质主导时，共动哈勃半径重新增大，这些模再进入视界。

因此 inflation 让今天的大尺度结构都可以起源于一个早期因果连通区域。

### 题面中常见的 e-fold 估算套路

若题目给定 inflation 结束能标、再热阶段的 $w$ 和再热温度，则通常按
$$N_{\min}\simeq \ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right)$$
来估算，并把
$$\frac{a_{\mathrm{end}}}{a_0}=\frac{a_{\mathrm{end}}}{a_{\mathrm{rh}}}\frac{a_{\mathrm{rh}}}{a_0}$$
拆成：

- inflation 结束到再热完成：用 $\rho\propto a^{-3(1+w)}$。
- 再热完成到今天：用熵守恒 $aTg_{*s}^{1/3}=\text{const}$。

对本次 $exam.md$ 的参数，
$$\rho_{\mathrm{end}}^{1/4}=10^{15}\,\mathrm{GeV},\qquad w=0,\qquad T_{\mathrm{rh}}=10^5\,\mathrm{GeV},$$
估算得到
$$N_{\min}\approx 50.1.$$

把数量级拆得更细一点：

1. inflation 结束时
$$H_{\mathrm{end}}\simeq \sqrt{\frac{\rho_{\mathrm{end}}}{3M_{\mathrm{Pl}}^2}}\simeq \frac{(10^{15}\,\mathrm{GeV})^2}{\sqrt{3}\,M_{\mathrm{Pl}}}.$$
2. 若再热前 $w=0$，则
$$\rho\propto a^{-3},\qquad \frac{a_{\mathrm{rh}}}{a_{\mathrm{end}}}=\left(\frac{\rho_{\mathrm{end}}}{\rho_{\mathrm{rh}}}\right)^{1/3}=\left(\frac{10^{15}}{10^5}\right)^{4/3}.$$
3. 再热后熵守恒给出
$$\frac{a_{\mathrm{rh}}}{a_0}=\frac{T_0}{T_{\mathrm{rh}}}\left(\frac{g_{*s,0}}{g_{*s,\mathrm{rh}}}\right)^{1/3}.$$
4. 最后代入
$$N_{\min}\simeq \ln\left(\frac{H_{\mathrm{end}}}{H_0}\right)+\ln\left(\frac{a_{\mathrm{end}}}{a_0}\right)$$
即可得到约 $50$ 个 e-fold。

### 暴涨扰动的高频补充

若考到 inflation 如何产生原初扰动，可记住：

- 标量曲率扰动的无量纲谱振幅近似为
$$\Delta_{\mathcal{R}}^2(k)\simeq \frac{H^2}{8\pi^2\epsilon M_{\mathrm{Pl}}^2}\bigg|_{k=aH}.$$
- 张量扰动谱近似为
$$\Delta_t^2(k)\simeq \frac{2H^2}{\pi^2 M_{\mathrm{Pl}}^2}\bigg|_{k=aH}.$$
- 因而
$$r\equiv \frac{\Delta_t^2}{\Delta_{\mathcal{R}}^2}\simeq 16\epsilon.$$
- 标量谱指数
$$n_s-1\simeq -6\epsilon+2\eta.$$

其中：

- $A_s$ 控制原初标量谱振幅大小。
- $n_s$ 描述谱是否精确标度不变；$n_s=1$ 对应 Harrison-Zel'dovich 谱。
- $r$ 比较张量与标量的相对强度，因此直接反映暴涨能标与 slow-roll 斜率。

若题目问“为什么 inflation 产生近乎标度不变谱”，最标准的答法是：  
因为在 quasi-de Sitter 背景中，不同 $k$ 模穿越视界时 $H$ 和 $\epsilon$ 变化都很慢，所以各尺度获得的涨落振幅几乎相同，只留下小的 tilt，即 $n_s-1$ 由 slow-roll 参数控制。

### 张量模式的最短推导骨架

若只保留张量扰动，自由度写成
$$\mathrm d s^2=a^2(\tau)\left[-\mathrm d\tau^2+\left(\delta_{ij}+h_{ij}\right)\mathrm d x^i\mathrm d x^j\right],\qquad \partial^i h_{ij}=0,\qquad h^i_{\ i}=0.$$
把 Einstein-Hilbert 作用量展开到二阶，得到
$$S_T^{(2)}=\frac{M_P^2}{8}\int \mathrm d\tau\,\mathrm d^3x\,a^2\left[(h'_{ij})^2-(\partial_k h_{ij})^2\right].$$
对每个偏振模式引入规范化变量
$$v_\lambda\equiv \frac{aM_P}{2}h_\lambda,$$
则作用量化成
$$S_T^{(2)}=\frac{1}{2}\sum_\lambda\int \mathrm d\tau\,\mathrm d^3k\left[|v_\lambda'|^2-\left(k^2-\frac{a''}{a}\right)|v_\lambda|^2\right].$$
于是模方程为
$$v_{\lambda,k}''+\left(k^2-\frac{a''}{a}\right)v_{\lambda,k}=0.$$
在 de Sitter 近似下
$$a(\tau)=-\frac{1}{H\tau},\qquad \frac{a''}{a}=\frac{2}{\tau^2},$$
所以
$$v_k''+\left(k^2-\frac{2}{\tau^2}\right)v_k=0.$$
取 Bunch-Davies 初态
$$v_k\to \frac{e^{-ik\tau}}{\sqrt{2k}}\qquad (-k\tau\to\infty),$$
对应解可写为
$$v_k=\frac{1}{\sqrt{2k}}\left(1-\frac{i}{k\tau}\right)e^{-ik\tau}.$$
在超视界极限 $|k\tau|\ll 1$，
$$\Delta_{t,\lambda}^2(k)\equiv \frac{k^3}{2\pi^2}|h_k|^2=\frac{H^2}{\pi^2M_P^2},$$
加上两个偏振后得到
$$\Delta_t^2(k)=\frac{2H^2}{\pi^2M_P^2}\bigg|_{k=aH}.$$
这就是作业里张量谱题最短但完整的答题骨架。

### 再热时期振荡标量场的有效状态方程

若势能 $V(\phi)\propto \phi^n$，快速振荡时间平均后
$$w=\frac{n-2}{n+2}.$$

特别地：

- $n=2$ 时 $w=0$，像尘埃。
- $n=4$ 时 $w=1/3$，像辐射。

这在理解再热后膨胀史时很有用。

### 易错点 / 常见变体

- 解决视界问题靠的是 $1/(aH)$ 在 inflation 期间减小，不是单纯说“$a$ 变大”。
- $N$ 的具体需要值依赖再热历史，不要机械背死 $60$。
- 视界问题与平坦性问题是两个不同问题，答题时最好分别写一句。
- $\epsilon_H$ 和 $\epsilon_V$ 不是定义上完全相同，而是在 slow-roll 近似下相等。

### 常见问法

- 什么是视界问题，inflation 如何解决。
- 什么是 slow-roll。
- 写出 $N$ 的定义并估算 e-fold 数。
- 说明为什么暴涨产生近乎标度不变原初扰动。
- 推导 $\epsilon_H\simeq \epsilon_V$。

### 一句话结论

Inflation 的本质不是“宇宙膨胀得很快”这么简单，而是“共动哈勃半径缩小”，从而把今天的大尺度结构放回到早期的因果连通区域内。

## 10. 补充与高频延伸题

### 10.1 $\Lambda\mathrm{CDM}$ 在 $z=1$ 的典型数值

取
$$\Omega_{m0}=0.3,\qquad \Omega_{\Lambda 0}=0.7,\qquad H_0=70\,\mathrm{km\,s^{-1}\,Mpc^{-1}},$$
忽略辐射，则
$$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{\Lambda 0}}.$$

在 $z=1$：
$$H(z=1)\approx 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}},$$
$$\chi(z=1)\approx 3.30\,\mathrm{Gpc},\qquad D_L(z=1)\approx 6.61\,\mathrm{Gpc},\qquad D_A(z=1)\approx 1.65\,\mathrm{Gpc}.$$

从大爆炸到 $z=1$ 的宇宙年龄约为
$$t(z=1)\approx 5.75\,\mathrm{Gyr}.$$

### 10.2 现在的光子与中微子背景

现在的 CMB 温度约为
$$T_{\gamma,0}\simeq 2.725\,\mathrm{K}.$$

对应的光子数密度与能量密度近似为
$$n_{\mathrm{CMB}}\approx 411\,\mathrm{cm}^{-3},\qquad \Omega_{\gamma,0}\approx 2.47\times 10^{-5}.$$

中微子背景温度为
$$T_{\nu,0}=\left(\frac{4}{11}\right)^{1/3}T_{\gamma,0}\simeq 1.95\,\mathrm{K}.$$

### 10.3 中微子质量的宇宙学约束

若中微子今天非相对论，则
$$\Omega_{\nu,0}h^2\simeq \frac{\sum_f m_{\nu_f}}{94\,\mathrm{eV}}.$$

这给出中微子总质量与宇宙学能量密度之间的直接联系。

### 10.4 $f(R)$ 理论与 LTB 模型

这几类题都出现在作业里，但不属于本次期末主线。若老师临时扩题，可以只记主结论，把它们当作“附录速查”而不是主体复习线：

$f(R)$ 引力场方程：
$$f'(R)R_{\mu\nu}-\frac{1}{2}f(R)g_{\mu\nu}-\left(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box\right)f'(R)=8\pi G T_{\mu\nu}.$$

共形变换
$$\hat g_{\mu\nu}=\Omega^2 g_{\mu\nu}$$
下，$D$ 维 Ricci 标量的一般公式为
$$\hat R=\Omega^{-2}\left[R-2(D-1)\Box\ln\Omega-(D-1)(D-2)(\nabla\ln\Omega)^2\right].$$
在四维时空中可改写成
$$\hat R=\frac{1}{\Omega^2}R-\frac{6}{\Omega^3}\Box\Omega.$$

LTB 模型是球对称但非均匀的尘埃宇宙学解，其度规为
$$\mathrm{d}s^2=-\mathrm{d}t^2+X^2(t,r)\mathrm{d}r^2+Y^2(t,r)\left(\mathrm{d}\theta^2+\sin^2\theta\,\mathrm{d}\phi^2\right).$$

若没明确考广义相对论专题，这些项在开卷时应放低优先级。

## Exam Mapping

| $exam.md$ 题目 | 对应章节 | 开卷时先看什么 |
|---|---|---|
| 一（1）FRW 度规 | 第 1 节 | FRW 度规、$k=0,\pm1$、共形时间版本 |
| 一（2）联络分量 | 第 1 节 | $\Gamma^1_{01}$、$\Gamma^0_{11}$ |
| 一（3）理想流体守恒 | 第 1 节 | $T_{\mu\nu}$、连续性方程 |
| 二（1）非相对论数密度 | 第 2 节 | Maxwell-Boltzmann 近似、高斯积分 |
| 二（2）Saha 方程 | 第 3 节 | 化学平衡 + 非相对论密度 |
| 二（3）复合温度为何远低于 13.6 eV | 第 3 节 | $\eta\sim 10^{-10}$ 与高能尾部 |
| 三（1）$P_{\mathrm{ini}}\to P_{gg}$ | 第 5-6 节 | $P_{\mathcal{R}}$、$T(k)$、$D(z)$、$b_g$ |
| 三（2）辐射主导时期进视界后的演化 | 第 6 节 | $\delta_m\propto \ln a$、$\delta_r$ 声学振荡 |
| 三（3）$P_{mm}(k)$ 曲线与 $k_{\mathrm{eq}}$ | 第 6 节 | $k_{\mathrm{eq}}$、小尺度压制机制 |
| 四（1）弱引力透镜 | 第 7 节 | 星系透镜与 CMB 透镜观测量 |
| 四（2）AP 效应 | 第 8 节 | $F_{\mathrm{AP}}(z)$ 与各向异性形变 |
| 四（3）原初 CMB 各向异性的 4 种过程 | 第 7 节 | 内禀 + SW + Doppler + ISW |
| 四（4）SNIa 与 BAO | 第 8 节 | 距离模数、$r_d$、$D_A$ 与 $H(z)$ |
| 五（1）视界问题 | 第 9 节 | $1/(aH)$ 在标准大爆炸中增大 |
| 五（2）e-fold 数估算 | 第 9 节 | $N_{\min}$、再热历史、熵守恒 |

## Verification Status

以下条目已做 Mathematica 级别的快速机检或数值核对：

- $Verified:$ FRW 的 $\Gamma^1_{01}$ 与 $\Gamma^0_{11}$。
- $Verified:$ FRW 理想流体连续性方程 $\dot\rho+3H(\rho+p)=0$。
- $Verified:$ 非相对论极限数密度 $n=g(mT/2\pi)^{3/2}e^{(\mu-m)/T}$。
- $Verified:$ 中微子退耦附近 $g_*=43/4=10.75$。
- $Verified:$ Saha 方程中 $n_e n_p/n_H$ 的质量与指数结构。
- $Verified:$ $T_{\nu,0}=(4/11)^{1/3}T_{\gamma,0}\simeq 1.95\,\mathrm{K}$ 的数值结果。
- $Verified:$ 每重子熵 $s_\gamma/n_B\sim 6\times 10^9$ 的数量级。
- $Verified:$ 取 $T_f\sim 0.8\,\mathrm{MeV}$ 时 $(n/p)_f\approx 0.20$，进一步估算 $Y_p\sim 0.25$ 的数量级。
- $Verified:$ $\Omega_{m0}=0.3$、$H_0=70$ 时 $z=1$ 的 $H$、$\chi$、$D_L$、$D_A$ 与宇宙年龄数量级。
- $Verified:$ 同一组参数下 $z=1$ 的 lookback time $t_L\approx 7.72\,\mathrm{Gyr}$。
- $Verified:$ slow-roll 近似下 $\epsilon_H\simeq \epsilon_V$ 的代数化简。
- $Verified:$ 本次题目中给定再热历史时 $N_{\min}\approx 50.1$。
- $Verified:$ Bardeen potentials 在给定规范变换下的代数抵消。
- $Verified:$ 辐射主导长波极限的指数方程给出 $n=\pm \sqrt{3/8}$。
- $Verified:$ cosmic variance 的相对误差化为 $\Delta C_\ell/C_\ell=\sqrt{2/(2\ell+1)}$。
- $Verified:$ 单个偏振张量谱的归一化 $\Delta_{t,\lambda}^2=H^2/(\pi^2M_P^2)$，总谱为两倍。

仍应视为讲义整理、而非机器可直接判定真假的内容：

- $Not verified:$ 第 5-8 节中的概念性物理解释、CMB 声学峰的口头图像与弱透镜观测学表述。
- $Not verified:$ 第 5 节中 Newtonian gauge 下一阶 Einstein 方程、relativistic Poisson 方程与 Bardeen equation 的完整张量分量在本次未逐项机检，但写法采用标准宇宙学结果。
- $Not verified:$ 低红移 $D_L(z)$ 展开、功率谱大尺度/小尺度渐近式、$\xi(r)$ 与 $P(k)$ 的 Fourier-Bessel 对关系，以及 inflation 扰动谱与 $n_s,r$ 关系式在本次未逐项机检，但写法采用标准宇宙学结果。
- $Not verified:$ 共形变换下 $\hat R$ 的一般 $D$ 维公式和 LTB 附录部分在本次作为作业附录速查保留，未做新的机器验证。

数值与公式在考试中若要进一步精细化，应以老师课堂记号和题目设定为准。
