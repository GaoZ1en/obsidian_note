---
title: modern cosmology mock exams
date: 2026-06-14
summary: "基于 exam.md 和 review.md 整理的 10 套现代宇宙学模拟试题，附参考答案要点，覆盖背景宇宙学、热历史、距离、微扰、结构形成、CMB、观测方法和 inflation。"
---

# 现代宇宙学模拟试题（10 套，含参考答案）

## 使用说明

- 每套按 100 分左右的期末风格组织。
- 参考答案以“考试可直接书写的要点”为目标，不展开成研究笔记。
- 若要真正练习，建议先只看“题目”，写完后再对照“参考答案”。
- 题型来源以 [exam.md](/Users/koishi/Documents/Note/Lecture/courses/graduate/2026%20spring/modern%20cosmology%20by%20Zongkuan%20Guo/exam.md) 为主，并吸收 [review.md](/Users/koishi/Documents/Note/Lecture/courses/graduate/2026%20spring/modern%20cosmology%20by%20Zongkuan%20Guo/review.md) 中的高频延伸。

## 模拟试题 1

### 题目

1. `FRW 背景`（20 分）
   1. 写出 FRW 度规，并说明 $k=0,\pm 1$ 的意义。
   2. 计算 $\Gamma^1_{01}$ 和 $\Gamma^0_{11}$。
   3. 写出理想流体能动张量，并推出连续性方程。

2. `热历史`（20 分）
   1. 推导非相对论极限下的粒子数密度。
   2. 推导复合时期的 Saha 方程。
   3. 解释为什么复合温度远小于 $13.6\,\mathrm{eV}$。

3. `结构形成`（20 分）
   1. 写出从原初曲率扰动功率谱 $P_{\mathrm{ini}}(k)$ 到星系功率谱 $P_{gg}(k,z)$ 的关系。
   2. 说明在辐射主导时期进入视界的 CDM 扰动和辐射扰动分别如何演化。

4. `观测与 CMB`（20 分）
   1. 简述 CMB 原初各向异性的四种基本来源。
   2. 简述 AP 效应的原理。
   3. 简述 SNIa 如何测 $D_L$、BAO 如何测 $D_A$。

5. `Inflation`（20 分）
   1. 说明标准大爆炸中的视界问题。
   2. 解释 inflation 为什么能解决该问题。

### 参考答案

1. `FRW 背景`
   1. FRW 度规为
      $$\mathrm{d}s^2=-\mathrm{d}t^2+a^2(t)\left[\frac{\mathrm{d}r^2}{1-kr^2}+r^2(\mathrm{d}\theta^2+\sin^2\theta\,\mathrm{d}\phi^2)\right].$$
      其中 $k=0,+1,-1$ 分别对应平直、正曲率、负曲率空间。
   2. 由 Christoffel 定义
      $$\Gamma^\mu_{\nu\rho}=\frac{1}{2}g^{\mu\sigma}(\partial_\nu g_{\sigma\rho}+\partial_\rho g_{\sigma\nu}-\partial_\sigma g_{\nu\rho})$$
      可得
      $$\Gamma^1_{01}=\Gamma^1_{10}=\frac{\dot a}{a}=H,\qquad \Gamma^0_{11}=\frac{a\dot a}{1-kr^2}.$$
   3. 理想流体能动张量
      $$T_{\mu\nu}=(\rho+p)u_\mu u_\nu+pg_{\mu\nu}.$$
      在共动系中 $u^\mu=(1,0,0,0)$。由 $\nabla_\mu T^{\mu 0}=0$ 得
      $$\dot\rho+3H(\rho+p)=0.$$

2. `热历史`
   1. 在 Maxwell-Boltzmann 近似下
      $$n=g\int \frac{\mathrm d^3p}{(2\pi)^3}\exp\left[-\frac{E-\mu}{T}\right].$$
      非相对论极限 $E\simeq m+p^2/(2m)$，高斯积分后
      $$n=g\left(\frac{mT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu-m}{T}\right).$$
   2. 对反应
      $$e^-+p\rightleftharpoons H+\gamma$$
      用 $\mu_e+\mu_p=\mu_H$ 和上式，可得
      $$\frac{n_e n_p}{n_H}\simeq \left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T},\qquad E_0=13.6\,\mathrm{eV}.$$
      定义 $X_e=n_e/n_B$ 并用 $n_e=n_p$、$n_H=(1-X_e)n_B$，得
      $$\frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.$$
   3. 因为
      $$n_B=\eta n_\gamma,\qquad \eta\sim 10^{-10},$$
      光子远多于重子，所以即使 $T\ll 13.6\,\mathrm{eV}$，高能尾部仍可电离氢。必须等到
      $$e^{-E_0/T}$$
      足够小、克服 $1/\eta$ 的巨大因子后，中性氢才稳定形成，因此
      $$T_{\mathrm{rec}}\sim 0.3\,\mathrm{eV}.$$

3. `结构形成`
   1. 有
      $$\delta_m(k,z)=M(k,z)\mathcal R(k),\qquad M(k,z)=\frac{2k^2}{5\Omega_{m0}H_0^2}T(k)D(z),$$
      所以
      $$P_{mm}(k,z)=M^2(k,z)P_{\mathrm{ini}}(k),\qquad P_{gg}(k,z)=b_g^2(k,z)P_{mm}(k,z).$$
   2. 辐射主导时期进视界后：
      - CDM 扰动只作缓慢对数增长，
        $$\delta_m\propto \ln a,$$
        到物质主导时期才转为
        $$\delta_m\propto a.$$
      - 辐射扰动因压强作用发生声学振荡，
        $$\delta_r\sim \cos(kc_s\eta+\varphi),\qquad c_s\simeq \frac{1}{\sqrt 3}.$$

4. `观测与 CMB`
   1. 四种基本来源：内禀温度涨落、Sachs-Wolfe 引力红移、Doppler 效应、ISW 效应。
   2. AP 效应本质是：若用错误宇宙学把 $(\Delta\theta,\Delta z)$ 转成三维距离，则本征各向同性结构会表现出表观各向异性。横向与径向距离分别是
      $$\Delta r_\perp=(1+z)D_A(z)\Delta\theta,\qquad \Delta r_\parallel=\frac{c\,\Delta z}{H(z)}.$$
      所以约束的是
      $$F_{\mathrm{AP}}(z)=\frac{(1+z)D_A(z)H(z)}{c}.$$
   3. SNIa 用距离模数
      $$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right)$$
      测 $D_L$。BAO 用标准尺 $r_d$，横向关系为
      $$r_d=(1+z)D_A(z)\Delta\theta,$$
      从而测得 $D_A(z)$。

5. `Inflation`
   1. 无 inflation 时，辐射和物质主导时期
      $$\frac{1}{aH}$$
      随时间增大，因此最后散射面上的大角尺度区域在复合时并不因果连通，但 CMB 温度却近乎一致，这就是视界问题。
   2. inflation 期间满足
      $$\frac{\mathrm d}{\mathrm dt}\left(\frac{1}{aH}\right)<0,$$
      即共动哈勃半径减小，因此今天整个可观测宇宙在 inflation 前曾经属于同一个因果连通区域。

## 模拟试题 2

### 题目

1. `背景与距离`（25 分）
   1. 定义 deceleration 参数 $q$ 和 jerk 参数 $j$。
   2. 给出 $D_L(z)$ 在低红移的 $z^3$ 阶展开。
   3. 解释 $D_L=(1+z)^2D_A$ 的来源。

2. `数值题：平直 $\Lambda$CDM`（20 分）
   取 $\Omega_{m0}=0.3$、$\Omega_{\Lambda 0}=0.7$、$H_0=70\,\mathrm{km\,s^{-1}\,Mpc^{-1}}$，忽略辐射。
   1. 求 $z=1$ 时的 $H(z)$。
   2. 求 $D_L(z=1)$、$D_A(z=1)$。
   3. 求宇宙在 $z=1$ 时的年龄。

3. `中微子热史`（20 分）
   1. 说明中微子退耦的判断条件。
   2. 用数量级估计中微子退耦温度。
   3. 推导今天的 $T_{\nu,0}/T_{\gamma,0}$。

4. `线性扰动`（20 分）
   1. 写出带压强流体的牛顿线性扰动方程。
   2. 在辐射主导长波极限下求 $\delta\propto t^n$ 的指数 $n$。
   3. 写出 Jeans 波长和 Jeans 质量。

5. `早期宇宙`（15 分）
   1. 定义 e-fold 数 $N$。
   2. 写出单场 slow-roll inflation 下的两条基本方程。

### 参考答案

1. `背景与距离`
   1. 定义
      $$q\equiv -\frac{\ddot a}{aH^2},\qquad j\equiv \frac{a^{(3)}}{aH^3}.$$
   2. 低红移展开
      $$D_L(z)=\frac{c}{H_0}\left[z+\frac{1}{2}(1-q_0)z^2-\frac{1}{6}(1-q_0-3q_0^2+j_0)z^3+\mathcal O(z^4)\right].$$
   3. 因为光子能量红移给一因子 $1/(1+z)$，到达率时间膨胀再给一因子 $1/(1+z)$，所以
      $$F=\frac{L}{4\pi D_A^2(1+z)^2}=\frac{L}{4\pi D_L^2},$$
      因而
      $$D_L=(1+z)^2D_A.$$

2. `平直 $\Lambda$CDM`
   1. 有
      $$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{\Lambda 0}},$$
      故
      $$H(z=1)\approx 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}}.$$
   2. 已知
      $$\chi(z=1)\approx 3.30\,\mathrm{Gpc},$$
      所以
      $$D_L(z=1)\approx 6.61\,\mathrm{Gpc},\qquad D_A(z=1)\approx 1.65\,\mathrm{Gpc}.$$
   3. 宇宙年龄
      $$t(z)=\int_z^\infty \frac{\mathrm dz'}{(1+z')H(z')}$$
      在 $z=1$ 时约为
      $$t(z=1)\approx 5.75\,\mathrm{Gyr}.$$

3. `中微子热史`
   1. 退耦判断条件是
      $$\Gamma_\nu\sim H.$$
   2. 相对论极限下
      $$\Gamma_\nu\sim G_F^2T^5,\qquad H\sim 1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}},$$
      解得
      $$T_{\nu,\mathrm{dec}}\sim \left(\frac{1.66\sqrt{g_*}}{G_F^2M_{\mathrm{Pl}}}\right)^{1/3}\sim 1\,\mathrm{MeV}.$$
   3. 中微子先退耦，随后 $e^\pm$ 湮灭只加热光子。由光子-$e^\pm$ 热浴共动熵守恒得
      $$\frac{T_{\nu,0}}{T_{\gamma,0}}=\left(\frac{4}{11}\right)^{1/3},\qquad T_{\nu,0}\simeq 1.95\,\mathrm{K}.$$

4. `线性扰动`
   1. 带压强流体满足
      $$\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\bar\rho\right)\delta=0.$$
   2. 辐射主导时期
      $$a\propto t^{1/2},\qquad H=\frac{1}{2t},\qquad \bar\rho=\frac{3}{32\pi Gt^2},\qquad c_s^2=\frac{1}{3}.$$
      长波极限下得到
      $$n^2-\frac{3}{8}=0,\qquad n=\pm \sqrt{\frac{3}{8}}.$$
   3. Jeans 波数和物理波长
      $$k_J^2=\frac{4\pi G\bar\rho a^2}{c_s^2},\qquad \lambda_J^{\mathrm{phys}}=c_s\sqrt{\frac{\pi}{G\bar\rho}},$$
      以及
      $$M_J\sim \frac{4\pi}{3}\bar\rho\left(\frac{\lambda_J^{\mathrm{phys}}}{2}\right)^3.$$

5. `早期宇宙`
   1. e-fold 数定义为
      $$N\equiv \ln\frac{a_{\mathrm{end}}}{a}=\int_t^{t_{\mathrm{end}}}H\,\mathrm dt.$$
   2. slow-roll 基本方程
      $$H^2\simeq \frac{V}{3M_{\mathrm{Pl}}^2},\qquad 3H\dot\phi\simeq -V'(\phi).$$

## 模拟试题 3

### 题目

1. `标量场宇宙学`（20 分）
   1. 写出最小耦合标量场的作用量。
   2. 写出其能量密度和压强。
   3. 说明为什么 $\dot\phi^2\ll V(\phi)$ 时会导致加速膨胀。

2. `复合与 BBN`（20 分）
   1. 解释“复合”和“光子退耦”为什么不是同一件事。
   2. 由 $n/p$ 比估算 $^4\mathrm{He}$ 质量丰度 $Y_p$。

3. `功率谱形状`（20 分）
   1. 解释 $k_{\mathrm{eq}}$ 的物理意义。
   2. 说明 $P_{mm}(k)$ 在 $k\ll k_{\mathrm{eq}}$ 和 $k\gg k_{\mathrm{eq}}$ 的渐近行为。

4. `CMB`（20 分）
   1. 解释 SW、早期 ISW、晚期 ISW 的差别。
   2. 什么是 Silk 阻尼。

5. `距离与观测`（20 分）
   1. 写出距离模数与光度距离的关系。
   2. 解释 BAO 为什么能作为标准尺。

### 参考答案

1. `标量场宇宙学`
   1. 作用量
      $$S=\int \mathrm d^4x\sqrt{-g}\left(\frac{R}{16\pi G}-\frac{1}{2}\nabla_\mu\phi\nabla^\mu\phi-V(\phi)\right).$$
   2. 能量密度和压强
      $$\rho_\phi=\frac{1}{2}\dot\phi^2+V(\phi),\qquad p_\phi=\frac{1}{2}\dot\phi^2-V(\phi).$$
   3. 若 $\dot\phi^2\ll V$，则
      $$p_\phi\simeq -\rho_\phi,\qquad w_\phi\simeq -1.$$
      因为
      $$\frac{\ddot a}{a}=-\frac{4\pi G}{3}(\rho+3p),$$
      当 $\rho+3p<0$ 时宇宙加速膨胀。

2. `复合与 BBN`
   1. 复合指
      $$e^-+p\to H+\gamma$$
      使中性氢大量形成；光子退耦指
      $$\Gamma_T=n_e\sigma_T c<H,$$
      即 Thomson 散射不再有效。时间顺序是先自由电子下降，再发生 photon decoupling。
   2. 弱冻结后到 BBN 开始前典型有
      $$(n/p)_{\mathrm{BBN}}\sim \frac{1}{7}.$$
      于是
      $$Y_p\simeq \frac{2(n/p)}{1+(n/p)}\simeq \frac{2/7}{1+1/7}\approx 0.25.$$

3. `功率谱形状`
   1. $k_{\mathrm{eq}}$ 是在物质辐射相等时进入视界的模的共动波数，
      $$k_{\mathrm{eq}}=a_{\mathrm{eq}}H_{\mathrm{eq}}.$$
      它控制物质功率谱的转折点位置。
   2. 对近乎标度不变原初谱：
      - $k\ll k_{\mathrm{eq}}$ 时
        $$T(k)\simeq 1,\qquad P_{mm}(k)\propto k^{n_s}\approx k.$$
      - $k\gg k_{\mathrm{eq}}$ 时
        $$T(k)\sim \frac{\ln(k/k_{\mathrm{eq}})}{(k/k_{\mathrm{eq}})^2},$$
        所以
        $$P_{mm}(k)\propto k^{n_s-4}\ln^2(k/k_{\mathrm{eq}})\approx k^{-3}\ln^2 k.$$

4. `CMB`
   1. SW 是最后散射面局域引力红移；早期 ISW 出现在辐射-物质交替时期，因为引力势仍在演化；晚期 ISW 出现在暗能量主导或曲率效应显著时期，因为引力势再次衰减。
   2. Silk 阻尼是由于复合前光子有有限平均自由程，会发生扩散，把小尺度各向异性抹平，因此高 $\ell$ 功率下降。

5. `距离与观测`
   1. 距离模数
      $$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right).$$
   2. BAO 是早期重子-光子流体声学振荡留下的声学视界遗迹，物理尺度 $r_d$ 已知，因此能作为标准尺，用来约束 $D_A(z)$ 和 $H(z)$。

## 模拟试题 4

### 题目

1. `相对论标量微扰`（25 分）
   1. 写出一般标量扰动的线元参数化。
   2. 写出规范变换下 $A,B,C,E$ 的变换公式。
   3. 定义 Bardeen potentials。

2. `规范不变量`（15 分）
   证明 $\Phi_B$ 与 $\Psi_B$ 在上述规范变换下不变。

3. `Newtonian gauge`（20 分）
   1. 写出 Newtonian gauge 的条件。
   2. 写出该规范下的一阶 Einstein 方程 `00`、`0i` 和 `ij` 无迹部分。

4. `相对论 Poisson 方程`（20 分）
   1. 说明何时有 $\Phi=\Psi$。
   2. 写出 relativistic Poisson equation。
   3. 说明其如何在亚视界极限退化为牛顿 Poisson 方程。

5. `Bardeen equation`（20 分）
   对绝热扰动写出 Bardeen equation，并解释其物理意义。

### 参考答案

1. `相对论标量微扰`
   1. 一般线元
      $$\mathrm ds^2=a^2(\eta)\left[-(1+2A)\mathrm d\eta^2+2\partial_iB\,\mathrm d\eta\,\mathrm dx^i+\left((1+2C)\delta_{ij}+2D_{ij}E\right)\mathrm dx^i\mathrm dx^j\right],$$
      其中
      $$D_{ij}=\partial_i\partial_j-\frac{1}{3}\delta_{ij}\nabla^2.$$
   2. 规范变换
      $$\eta\mapsto \eta+\xi^0,\qquad x^i\mapsto x^i+\partial^iL$$
      下，
      $$\tilde A=A-\mathcal H\xi^0-(\xi^0)',\qquad \tilde B=B+\xi^0-L',$$
      $$\tilde C=C-\mathcal H\xi^0-\frac{1}{3}\nabla^2L,\qquad \tilde E=E-L.$$
   3. Bardeen potentials
      $$\Phi_B=A+\frac{1}{a}[a(B-E')]',\qquad \Psi_B=-C+\frac{1}{3}\nabla^2E-\mathcal H(B-E').$$

2. `规范不变量`
   关键在于
   $$B-E'\mapsto B-E'+\xi^0.$$
   所以
   $$\frac{1}{a}[a(B-E')]' \mapsto \frac{1}{a}[a(B-E')]'+\mathcal H\xi^0+(\xi^0)',$$
   恰好抵消 $A$ 的变换，因此 $\Phi_B$ 不变。对 $\Psi_B$，$\nabla^2L$ 项和 $\mathcal H\xi^0$ 项也完全抵消，因此 $\Psi_B$ 不变。

3. `Newtonian gauge`
   1. 规范条件
      $$B=E=0,\qquad A=\Phi,\qquad C=-\Psi.$$
   2. 一阶 Einstein 方程可写成
      $$\nabla^2\Psi-3\mathcal H(\Psi'+\mathcal H\Phi)=4\pi G a^2\delta\rho,$$
      $$\partial_i(\Psi'+\mathcal H\Phi)=4\pi G a^2(\bar\rho+\bar p)v_i,$$
      $$\partial_i\partial_j(\Phi-\Psi)-\frac{1}{3}\delta_{ij}\nabla^2(\Phi-\Psi)=8\pi G a^2\Sigma_{ij}.$$

4. `相对论 Poisson 方程`
   1. 若各向异性张力为零，即
      $$\Sigma_{ij}=0,$$
      则
      $$\Phi=\Psi.$$
   2. 相对论 Poisson 方程
      $$\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi G a^2\delta\rho.$$
   3. 在 $k\gg aH$ 且势变化缓慢时，可忽略时间导数项，退化为
      $$\nabla^2\Phi\simeq 4\pi G a^2\delta\rho.$$

5. `Bardeen equation`
   对绝热扰动 $\delta p=c_s^2\delta\rho$，有
   $$\Phi''+3(1+c_s^2)\mathcal H\Phi'+\left[2\mathcal H'+(1+3c_s^2)\mathcal H^2-c_s^2\nabla^2\right]\Phi=0.$$
   Fourier 空间中
   $$\Phi_k''+3(1+c_s^2)\mathcal H\Phi_k'+\left[c_s^2k^2+2\mathcal H'+(1+3c_s^2)\mathcal H^2\right]\Phi_k=0.$$
   物理上它描述相对论引力势在膨胀背景中的传播、阻尼与压强响应。

## 模拟试题 5

### 题目

1. `关联函数与功率谱`（20 分）
   1. 定义 $\xi(\mathbf r)$ 和 $P(k)$。
   2. 推导它们的 Fourier 关系。
   3. 在统计各向同性下写出 $\xi(r)$ 与 $P(k)$ 的关系。

2. `星系功率谱`（20 分）
   1. 写出 $P_{gg}(k,z)$ 与 $P_{mm}(k,z)$ 的关系。
   2. 解释线性偏置 $b_g$ 的物理意义。
   3. 简述 Kaiser 红移空间畸变项。

3. `弱引力透镜`（20 分）
   1. 写出透镜势、偏折角、会聚、剪切之间的关系。
   2. 解释星系弱透镜和 CMB 透镜的测量差异。

4. `CMB 统计量`（20 分）
   1. 定义球谐系数 $a_{\ell m}$ 和角功率谱 $C_\ell$。
   2. 写出无偏估计量 $\hat C_\ell$。
   3. 推导 cosmic variance 的相对误差。

5. `标准尺与标准烛光`（20 分）
   1. 区分标准尺、标准烛光、标准警报器。
   2. 说明 BAO 横向和径向分别给出什么信息。

### 参考答案

1. `关联函数与功率谱`
   1. 定义
      $$\xi(\mathbf r)=\langle \delta(\mathbf x)\delta(\mathbf x+\mathbf r)\rangle,$$
      $$\langle \delta(\mathbf k)\delta(\mathbf k')\rangle=(2\pi)^3\delta^{(3)}(\mathbf k+\mathbf k')P(k).$$
   2. 用
      $$\delta(\mathbf x)=\int \frac{\mathrm d^3k}{(2\pi)^3}\delta(\mathbf k)e^{i\mathbf k\cdot \mathbf x}$$
      代回，可得
      $$\xi(\mathbf r)=\int \frac{\mathrm d^3k}{(2\pi)^3}P(k)e^{i\mathbf k\cdot\mathbf r}.$$
   3. 各向同性下
      $$\xi(r)=\int \frac{k^2\,\mathrm dk}{2\pi^2}P(k)\frac{\sin kr}{kr},$$
      反变换为
      $$P(k)=4\pi\int r^2\,\mathrm dr\,\xi(r)\frac{\sin kr}{kr}.$$

2. `星系功率谱`
   1. 在线性、实空间、线性偏置近似下
      $$P_{gg}(k,z)=b_g^2(k,z)P_{mm}(k,z).$$
   2. $b_g$ 描述星系分布相对于总物质分布的响应强度。在线性尺度上常近似为常数。
   3. 若考虑红移空间畸变，
      $$P_{gg}^{\mathrm{obs}}(k,\mu,z)\simeq [b_g(z)+f(z)\mu^2]^2P_{mm}(k,z)+P_{\mathrm{shot}},$$
      其中 $f=\mathrm d\ln D/\mathrm d\ln a$。

3. `弱引力透镜`
   1. 关系式
      $$\mathbf d=\nabla\phi,\qquad \kappa=-\frac{1}{2}\nabla^2\phi,$$
      $$\gamma_1=\frac{1}{2}(\partial_1^2-\partial_2^2)\phi,\qquad \gamma_2=\partial_1\partial_2\phi.$$
   2. 星系透镜直接测大量背景星系的形状统计；CMB 透镜则通过温度/偏振模耦合和 E-to-B 转换重建透镜势。

4. `CMB 统计量`
   1. 定义
      $$\Theta(\hat{\mathbf n})=\sum_{\ell m}a_{\ell m}Y_{\ell m}(\hat{\mathbf n}),\qquad C_\ell=\langle |a_{\ell m}|^2\rangle.$$
   2. 无偏估计量
      $$\hat C_\ell=\frac{1}{2\ell+1}\sum_{m=-\ell}^{\ell}|a_{\ell m}|^2.$$
   3. 若 $a_{\ell m}$ 高斯，
      $$\mathrm{Var}(\hat C_\ell)=\frac{2}{2\ell+1}C_\ell^2,$$
      所以
      $$\frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$

5. `标准尺与标准烛光`
   1. 标准尺：已知物理长度，如 BAO；标准烛光：已知绝对光度，如 SNIa；标准警报器：已知引力波振幅标度，如双中子星并合。
   2. BAO 横向给 $D_A(z)/r_d$，径向给 $c/[H(z)r_d]$。

## 模拟试题 6

### 题目

1. `FRW 与流体`（20 分）
   1. 写出 Friedmann 方程和加速度方程。
   2. 对 $p=w\rho$ 推出 $\rho(a)$ 的标度。
   3. 给出物质、辐射、真空能的 $w$。

2. `数值模板`（20 分）
   1. 写出平直 $\Lambda$CDM 中 $H(z)$ 的公式。
   2. 说明如何计算 $\chi(z)$、$D_A(z)$、$D_L(z)$、$t(z)$。
   3. 代入 $z=1$、$\Omega_{m0}=0.3$、$H_0=70$ 给出结果。

3. `热历史`（20 分）
   1. 写出辐射主导时期的 $H(T)$。
   2. 解释 $g_*$ 和 $g_{*s}$ 的物理意义。
   3. 说明为什么今天 $g_{*,0}\neq g_{*s,0}$。

4. `微扰与结构形成`（20 分）
   1. 从连续方程、Euler 方程、Poisson 方程写出物质增长方程。
   2. 解释为什么小尺度模在今天被压低。

5. `inflation 扰动`（20 分）
   1. 写出标量谱和张量谱的无量纲振幅。
   2. 写出张量-标量比 $r$ 与 slow-roll 参数的关系。

### 参考答案

1. `FRW 与流体`
   1. Friedmann 方程与加速度方程
      $$H^2=\frac{8\pi G}{3}\rho-\frac{k}{a^2},\qquad \frac{\ddot a}{a}=-\frac{4\pi G}{3}(\rho+3p).$$
   2. 连续性方程
      $$\dot\rho+3H(\rho+p)=0$$
      配合 $p=w\rho$ 得
      $$\rho\propto a^{-3(1+w)}.$$
   3. 物质 $w=0$，辐射 $w=1/3$，真空能 $w=-1$。

2. `数值模板`
   1. 平直 $\Lambda$CDM：
      $$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{\Lambda 0}}.$$
   2. 有
      $$\chi(z)=\int_0^z\frac{c\,\mathrm dz'}{H(z')},\qquad D_A=\frac{\chi}{1+z},\qquad D_L=(1+z)\chi,$$
      $$t(z)=\int_z^\infty \frac{\mathrm dz'}{(1+z')H(z')}.$$
   3. 对给定参数，
      $$H(z=1)\approx 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}},$$
      $$\chi(z=1)\approx 3.30\,\mathrm{Gpc},\qquad D_L(z=1)\approx 6.61\,\mathrm{Gpc},\qquad D_A(z=1)\approx 1.65\,\mathrm{Gpc},$$
      $$t(z=1)\approx 5.75\,\mathrm{Gyr}.$$

3. `热历史`
   1. 辐射主导时期
      $$H=1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}}.$$
   2. $g_*$ 定义总能量密度，
      $$\rho=\frac{\pi^2}{30}g_*T^4,$$
      而 $g_{*s}$ 定义熵密度，
      $$s=\frac{2\pi^2}{45}g_{*s}T^3.$$
   3. 今天中微子温度低于光子温度，因此能量密度和熵密度加权方式不同，故
      $$g_{*,0}\neq g_{*s,0}.$$

4. `微扰与结构形成`
   1. 三条方程
      $$\dot\delta+\frac{1}{a}\nabla\cdot\mathbf v=0,\qquad \dot{\mathbf v}+H\mathbf v=-\frac{1}{a}\nabla\Phi,\qquad \nabla^2\Phi=4\pi G a^2\bar\rho\,\delta,$$
      合并得
      $$\ddot\delta+2H\dot\delta-4\pi G\bar\rho\,\delta=0.$$
   2. 小尺度模更早在辐射主导时期进入视界，只能经历
      $$\delta_m\propto \ln a$$
      的缓慢增长，因此比大尺度模更受压低。

5. `inflation 扰动`
   1. 有
      $$\Delta_{\mathcal R}^2(k)\simeq \frac{H^2}{8\pi^2\epsilon M_{\mathrm{Pl}}^2}\bigg|_{k=aH},\qquad \Delta_t^2(k)\simeq \frac{2H^2}{\pi^2M_{\mathrm{Pl}}^2}\bigg|_{k=aH}.$$
   2. 张量-标量比
      $$r\equiv \frac{\Delta_t^2}{\Delta_{\mathcal R}^2}\simeq 16\epsilon.$$

## 模拟试题 7

### 题目

1. `中微子与光子背景`（20 分）
   1. 估算中微子退耦温度。
   2. 写出今天的中微子背景温度。
   3. 说明中微子总质量与 $\Omega_{\nu,0}h^2$ 的关系。

2. `复合、退耦、最后散射`（20 分）
   1. 说明从 Saha 方程到 $X_e(T)$ 再到 $\Gamma_T<H$ 的逻辑链条。
   2. 给出复合温度和退耦红移的数量级。

3. `BBN`（20 分）
   1. 说明为什么 BBN 不是在 $T\sim 2.2\,\mathrm{MeV}$ 就开始。
   2. 说明 deuterium bottleneck 的物理意义。
   3. 从 $n/p$ 比解释 $Y_p\sim 0.25$ 的来源。

4. `视界问题`（20 分）
   1. 解释“共动哈勃半径在标准大爆炸中增大”为什么导致视界问题。
   2. 说明 inflation 的解决机制。

5. `再热与 e-fold`（20 分）
   1. 若题目给出 inflation 结束能标、再热温度、再热阶段 $w$，说明估算 $N_{\min}$ 的通用套路。
   2. 对本课程现有题面参数，写出 $N_{\min}$ 的典型结果。

### 参考答案

1. `中微子与光子背景`
   1. 由
      $$\Gamma_\nu\sim G_F^2T^5,\qquad H\sim 1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}},$$
      解得
      $$T_{\nu,\mathrm{dec}}\sim 1\,\mathrm{MeV}.$$
   2. 有
      $$T_{\nu,0}=\left(\frac{4}{11}\right)^{1/3}T_{\gamma,0}\simeq 1.95\,\mathrm K.$$
   3. 若今天非相对论，
      $$\Omega_{\nu,0}h^2\simeq \frac{\sum_f m_{\nu_f}}{94\,\mathrm{eV}}.$$

2. `复合、退耦、最后散射`
   1. 先由化学平衡和非相对论数密度得到 Saha 方程，进而求电离度 $X_e(T)$；再由
      $$n_e=X_e n_B,\qquad \Gamma_T=n_e\sigma_T c$$
      与 $H$ 比较。当 $\Gamma_T<H$ 时光子退耦。
   2. 典型数量级是
      $$T_{\mathrm{rec}}\sim 0.3\,\mathrm{eV},\qquad z_{\mathrm{dec}}\sim 1100.$$

3. `BBN`
   1. 因为虽然氘束缚能是 $2.2\,\mathrm{MeV}$，但高能光子尾部会立刻打碎新形成的氘。
   2. deuterium bottleneck 指必须等到温度降到
      $$T\sim 0.1\,\mathrm{MeV}$$
      左右，氘才足够稳定，后续核合成才能真正开始。
   3. 弱冻结后到 BBN 开始前通常有
      $$(n/p)\sim \frac{1}{7},$$
      所以
      $$Y_p\simeq \frac{2(n/p)}{1+(n/p)}\sim 0.25.$$

4. `视界问题`
   1. 在辐射和物质主导时期
      $$\frac{1}{aH}$$
      随时间增大，所以今天大角尺度在复合时对应许多彼此不因果连通的小块。
   2. inflation 让
      $$\frac{1}{aH}$$
      在早期减小，于是今天的大尺度模在 inflation 前曾处于同一因果连通区域。

5. `再热与 e-fold`
   1. 用
      $$N_{\min}\simeq \ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right),$$
      并拆成
      $$\frac{a_{\mathrm{end}}}{a_0}=\frac{a_{\mathrm{end}}}{a_{\mathrm{rh}}}\frac{a_{\mathrm{rh}}}{a_0}.$$
      前一段用
      $$\rho\propto a^{-3(1+w)},$$
      后一段用熵守恒
      $$aTg_{*s}^{1/3}=\mathrm{const}.$$
   2. 对本课程给定参数，典型结果是
      $$N_{\min}\approx 50.1,$$
      即大约 $50$ 个 e-fold。

## 模拟试题 8

### 题目

1. `牛顿扰动与相对论扰动比较`（20 分）
   1. 说明牛顿微扰适用的物理条件。
   2. 说明为什么大尺度和早期宇宙必须使用相对论微扰。

2. `Bardeen 势与物理含义`（20 分）
   1. 写出 $\Phi_B$、$\Psi_B$。
   2. 说明它们在 Newtonian gauge 中分别对应什么。
   3. 说明无各向异性应力时为什么可以令两者相等。

3. `辐射主导时期的扰动行为`（20 分）
   1. 解释为什么辐射模进入视界后发生振荡。
   2. 解释为什么 CDM 模只作对数增长。
   3. 说明 Jeans 尺度在这里的作用。

4. `CMB 与弱透镜`（20 分）
   1. 写出 $\Theta(\hat{\mathbf n})$ 的球谐展开。
   2. 写出 $C_\ell$ 与 cosmic variance。
   3. 说明弱透镜如何“再加工”原初 CMB。

5. `结构形成`（20 分）
   1. 区分 $T(k)$ 和 $D(z)$。
   2. 解释 BAO wiggles 与 $k_{\mathrm{eq}}$ 转折点的不同来源。

### 参考答案

1. `牛顿扰动与相对论扰动比较`
   1. 牛顿微扰适用于亚视界、速度非相对论、势弱、时空曲率效应可忽略的情形。
   2. 超视界模、辐射主导时期、规范依赖问题和 CMB 大角尺度都必须用相对论微扰处理。

2. `Bardeen 势与物理含义`
   1. 定义
      $$\Phi_B=A+\frac{1}{a}[a(B-E')]',\qquad \Psi_B=-C+\frac{1}{3}\nabla^2E-\mathcal H(B-E').$$
   2. Newtonian gauge 中
      $$B=E=0,\qquad \Phi_B=\Phi,\qquad \Psi_B=\Psi.$$
   3. 若
      $$\Sigma_{ij}=0,$$
      则 Einstein 方程的无迹部分给出
      $$\Phi=\Psi.$$

3. `辐射主导时期的扰动行为`
   1. 因为辐射有压强，且
      $$c_s^2=\frac{1}{3},$$
      所以进入视界后压强与引力竞争，解表现为声学振荡。
   2. CDM 虽无压强，但背景由辐射主导，无法主导势阱形成，只能缓慢增长为
      $$\delta_m\propto \ln a.$$
   3. Jeans 尺度区分了压强支撑主导与引力坍缩主导的波长范围。短于 Jeans 尺度更倾向振荡，长于 Jeans 尺度更可能增长。

4. `CMB 与弱透镜`
   1. 球谐展开
      $$\Theta(\hat{\mathbf n})=\sum_{\ell m}a_{\ell m}Y_{\ell m}(\hat{\mathbf n}).$$
   2. 定义
      $$C_\ell=\langle |a_{\ell m}|^2\rangle,\qquad \frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$
   3. CMB 透镜在传播途中通过透镜势诱导模耦合，并把一部分 E 模转换为 B 模，所以它不是原初源项，而是后期传播修饰。

5. `结构形成`
   1. $T(k)$ 是尺度依赖的早期演化遗留，$D(z)$ 是纯时间依赖的晚期线性增长。
   2. $k_{\mathrm{eq}}$ 决定整条功率谱在哪里拐弯；BAO wiggles 来自声学视界 $r_d$，决定的是谱上细小振荡周期。

## 模拟试题 9

### 题目

1. `inflation 动力学`（20 分）
   1. 写出 slow-roll 参数 $\epsilon_V$、$\eta_V$。
   2. 说明 $\epsilon_H\simeq \epsilon_V$ 如何得到。

2. `张量模式`（20 分）
   1. 写出张量扰动的横向无迹条件。
   2. 写出张量二阶作用量。
   3. 定义规范化变量 $v_\lambda$ 并写出模方程。

3. `Bunch-Davies 与张量谱`（20 分）
   1. 写出 Bunch-Davies 初态。
   2. 给出超视界极限下的单偏振和总张量谱。

4. `观测联系`（20 分）
   1. 写出标量谱指数 $n_s-1$ 与 slow-roll 参数的关系。
   2. 说明 $r$ 的物理意义。

5. `综合题`（20 分）
   1. 为什么说 inflation 的本质不是“单纯膨胀得很快”，而是“共动哈勃半径减小”？
   2. 这一定义如何同时关联视界问题和原初谱的产生？

### 参考答案

1. `inflation 动力学`
   1. 势能 slow-roll 参数
      $$\epsilon_V=\frac{M_{\mathrm{Pl}}^2}{2}\left(\frac{V'}{V}\right)^2,\qquad \eta_V=M_{\mathrm{Pl}}^2\frac{V''}{V}.$$
   2. 由
      $$\epsilon_H=-\frac{\dot H}{H^2},\qquad \dot H=-\frac{\dot\phi^2}{2M_{\mathrm{Pl}}^2},$$
      再用 slow-roll
      $$\dot\phi\simeq -\frac{V'}{3H},\qquad H^2\simeq \frac{V}{3M_{\mathrm{Pl}}^2}$$
      得
      $$\epsilon_H\simeq \epsilon_V.$$

2. `张量模式`
   1. 条件
      $$\partial^i h_{ij}=0,\qquad h^i_{\ i}=0.$$
   2. 二阶作用量
      $$S_T^{(2)}=\frac{M_P^2}{8}\int \mathrm d\tau\,\mathrm d^3x\,a^2\left[(h'_{ij})^2-(\partial_k h_{ij})^2\right].$$
   3. 定义
      $$v_\lambda=\frac{aM_P}{2}h_\lambda,$$
      则
      $$v_{\lambda,k}''+\left(k^2-\frac{a''}{a}\right)v_{\lambda,k}=0.$$

3. `Bunch-Davies 与张量谱`
   1. 深亚视界时
      $$v_k\to \frac{e^{-ik\tau}}{\sqrt{2k}}\qquad (-k\tau\to\infty).$$
   2. 超视界极限下
      $$\Delta_{t,\lambda}^2(k)=\frac{H^2}{\pi^2M_P^2},\qquad \Delta_t^2(k)=\frac{2H^2}{\pi^2M_P^2}\bigg|_{k=aH}.$$

4. `观测联系`
   1. 有
      $$n_s-1\simeq -6\epsilon+2\eta.$$
   2. $r$ 定义为
      $$r=\frac{\Delta_t^2}{\Delta_{\mathcal R}^2}\simeq 16\epsilon,$$
      表征张量与标量扰动的相对强度，因此能反映暴涨能标与 slow-roll 斜率。

5. `综合题`
   1. 仅说“$a$ 增大得很快”不足以区分普通减速膨胀与 inflation；真正关键是
      $$\frac{\mathrm d}{\mathrm dt}\left(\frac{1}{aH}\right)<0.$$
   2. 这保证今天的大尺度模在早期曾位于视界内，从而解决视界问题；同时这些模后来被推出视界，再在晚期重新进入视界，留下近乎标度不变的原初谱。

## 模拟试题 10

### 题目

1. `综合背景题`（20 分）
   1. 写出 FRW 度规、理想流体能动张量、连续性方程。
   2. 说明物质、辐射、真空能的 $\rho(a)$ 标度。

2. `综合热历史题`（20 分）
   1. 推导非相对论粒子数密度。
   2. 写出 Saha 方程。
   3. 写出 $T_{\nu,0}/T_{\gamma,0}$。

3. `综合微扰与结构形成题`（20 分）
   1. 写出物质增长方程。
   2. 写出从 $P_{\mathrm{ini}}(k)$ 到 $P_{gg}(k,z)$ 的关系。
   3. 写出 $\xi(r)$ 与 $P(k)$ 的关系。

4. `综合 CMB 与观测题`（20 分）
   1. 写出 CMB 温度涨落的球谐展开和 $C_\ell$ 的定义。
   2. 写出 cosmic variance。
   3. 解释 SNIa、BAO、AP 分别测什么。

5. `综合 inflation 题`（20 分）
   1. 说明视界问题。
   2. 写出最小 e-fold 估算公式。
   3. 写出张量谱公式。

### 参考答案

1. `综合背景题`
   1. FRW 度规
      $$\mathrm ds^2=-\mathrm dt^2+a^2(t)\left[\frac{\mathrm dr^2}{1-kr^2}+r^2\mathrm d\Omega_2^2\right],$$
      理想流体
      $$T_{\mu\nu}=(\rho+p)u_\mu u_\nu+pg_{\mu\nu},$$
      连续性方程
      $$\dot\rho+3H(\rho+p)=0.$$
   2. 对 $p=w\rho$，
      $$\rho\propto a^{-3(1+w)}.$$
      所以物质 $\rho_m\propto a^{-3}$，辐射 $\rho_r\propto a^{-4}$，真空能为常数。

2. `综合热历史题`
   1. 非相对论粒子数密度
      $$n=g\left(\frac{mT}{2\pi}\right)^{3/2}\exp\left(\frac{\mu-m}{T}\right).$$
   2. Saha 方程
      $$\frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.$$
   3. 中微子背景温度比
      $$\frac{T_{\nu,0}}{T_{\gamma,0}}=\left(\frac{4}{11}\right)^{1/3}.$$

3. `综合微扰与结构形成题`
   1. 物质增长方程
      $$\ddot\delta_m+2H\dot\delta_m-4\pi G\bar\rho_m\delta_m=0.$$
   2. 有
      $$P_{gg}(k,z)=b_g^2(k,z)\left[\frac{2k^2}{5\Omega_{m0}H_0^2}T(k)D(z)\right]^2P_{\mathrm{ini}}(k).$$
   3. 关联函数和功率谱
      $$\xi(r)=\int \frac{k^2\,\mathrm dk}{2\pi^2}P(k)\frac{\sin kr}{kr},\qquad P(k)=4\pi\int r^2\,\mathrm dr\,\xi(r)\frac{\sin kr}{kr}.$$

4. `综合 CMB 与观测题`
   1. 球谐展开
      $$\Theta(\hat{\mathbf n})=\sum_{\ell m}a_{\ell m}Y_{\ell m}(\hat{\mathbf n}),\qquad C_\ell=\langle |a_{\ell m}|^2\rangle.$$
   2. cosmic variance
      $$\frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$
   3. SNIa 测光度距离 $D_L$；BAO 测标准尺对应的 $D_A$ 和 $H(z)$；AP 测
      $$F_{\mathrm{AP}}(z)=\frac{(1+z)D_A(z)H(z)}{c}.$$

5. `综合 inflation 题`
   1. 视界问题是：无 inflation 时，最后散射面上大角尺度区域在复合时彼此不因果连通，但观测到几乎相同的温度。
   2. 最小 e-fold 估算写作
      $$N_{\min}\simeq \ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right).$$
   3. 张量谱
      $$\Delta_t^2(k)\simeq \frac{2H^2}{\pi^2M_P^2}\bigg|_{k=aH}.$$
