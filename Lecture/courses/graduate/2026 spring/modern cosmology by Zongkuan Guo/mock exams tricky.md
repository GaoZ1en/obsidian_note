---
title: modern cosmology tricky mock exams
date: 2026-06-15
summary: "10 套刁钻版现代宇宙学模拟题，题目集中放在前半部分，参考答案集中放在文件末尾，用于查缺补漏和覆盖边角考点。"
---

# 现代宇宙学模拟题（10 套）

## 使用说明

- 前半部分只有题目，答案统一放在文末。
- 题目故意混合概念辨析、条件判断、公式变形和短推导。
- 每套默认 100 分，可按开卷考试节奏练习。

# 题目

## 模拟题 1：背景方程与距离陷阱

1. `FRW 与联络`（15 分）
   写出一般曲率 FRW 度规。若题目给出的是球坐标径向分量 $g_{rr}=a^2/(1-kr^2)$，计算 $\Gamma^r_{0r}$ 与 $\Gamma^0_{rr}$。说明为什么不能直接把 $\Gamma^0_{rr}$ 写成 $a\dot a$。

2. `连续性方程反用`（15 分）
   已知某一组分密度满足 $\rho_X\propto a^{-2}$。若把它形式上看作理想流体，求其 $w_X$，并说明它为什么常被称为“曲率项的有效状态方程”。

3. `距离关系辨析`（25 分）
   某同学说：“因为 $D_L=(1+z)\chi$，所以任何宇宙中 $D_A=\chi/(1+z)$。”判断此说法是否正确，并写出一般曲率下应如何修正。

4. `低红移展开`（20 分）
   给出 $D_L(z)$ 到 $z^3$ 阶的展开。指出哪个项最容易写错号，并说明如果题目保留 $c$，公式如何变化。

5. `数值题的单位`（25 分）
   在平直 $\Lambda$CDM 中取 $\Omega_{m0}=0.3$、$H_0=70\,\mathrm{km\,s^{-1}\,Mpc^{-1}}$、忽略辐射。写出 $z=1$ 时 $H$、$\chi$、$D_L$、$D_A$、$t(z)$ 的标准结果，并说明 $p_\Lambda=-\rho_\Lambda$ 在 SI 压强单位下应如何理解。

## 模拟题 2：热历史与数量级误区

1. `非相对论数密度`（20 分）
   从 Maxwell-Boltzmann 分布推导
   $$n=g\left(\frac{mT}{2\pi}\right)^{3/2}e^{(\mu-m)/T}.$$
   说明这个公式在哪些条件下不能直接使用。

2. `Saha 方程错误排查`（20 分）
   某答案写出
   $$\frac{1-X_e}{X_e^2}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.$$
   判断是否正确。若错误，给出正确形式并说明电中性条件如何进入。

3. `复合与退耦`（20 分）
   解释为什么“氢开始复合”不等于“CMB 光子立刻自由传播”。写出光子退耦的判断条件。

4. `中微子温度`（20 分）
   推导 $T_{\nu,0}/T_{\gamma,0}=(4/11)^{1/3}$。说明为什么熵守恒只对光子-$e^\pm$ 热浴使用，而不是把中微子也一起算进去。

5. `BBN 辨析`（20 分）
   为什么 BBN 不在 $T\simeq 2.2\,\mathrm{MeV}$ 开始？从 $n/p$ 比估算 $Y_p$，并说明哪个物理过程会在弱冻结后继续改变 $n/p$。

## 模拟题 3：扰动论规范与方程

1. `一般标量扰动`（20 分）
   写出含 $A,B,C,E$ 的一般标量扰动线元，并定义 $D_{ij}$。

2. `规范变换`（20 分）
   在 $\eta\mapsto \eta+\xi^0$、$x^i\mapsto x^i+\partial^iL$ 下写出 $A,B,C,E$ 的变换。证明 $B-E'$ 的变换形式。

3. `Bardeen potentials`（20 分）
   定义 $\Phi_B,\Psi_B$，并用一两行说明它们为什么规范不变。

4. `Newtonian gauge 方程`（25 分）
   写出 Newtonian gauge 条件，并写出 `00`、`0i`、`ij` 无迹方程。说明各向异性张力为零时有什么结论。

5. `Poisson 极限`（15 分）
   从相对论 Poisson 方程说明何时可退化为 $\nabla^2\Phi\simeq 4\pi Ga^2\delta\rho$。

## 模拟题 4：增长、Jeans 与功率谱

1. `牛顿增长方程`（20 分）
   从连续方程、Euler 方程、Poisson 方程推出
   $$\ddot\delta+2H\dot\delta-4\pi G\bar\rho\,\delta=0.$$

2. `带压强扰动`（20 分）
   写出带压强流体扰动方程，并在辐射主导时期化成
   $$\ddot\delta+\frac{1}{t}\dot\delta+\left(\frac{k^2}{3a^2}-\frac{3}{8t^2}\right)\delta=0.$$

3. `长波指数`（15 分）
   在 $k\to0$ 下设 $\delta\propto t^n$，求 $n$。

4. `Jeans 尺度`（20 分）
   写出 $k_J$、$\lambda_J^{\mathrm{phys}}$、$M_J$。说明为什么要区分物理波长和共动波长。

5. `功率谱转折`（25 分）
   解释 $k_{\mathrm{eq}}$ 左右两侧的 $P_{mm}(k)$ 行为，并说明为什么 $k_{\mathrm{eq}}$ 不是 BAO 波数。

## 模拟题 5：关联函数、CMB 统计与透镜

1. `相关函数与功率谱`（20 分）
   定义 $\xi(\mathbf r)$ 和 $P(k)$。推导统计各向同性下
   $$\xi(r)=\int\frac{k^2dk}{2\pi^2}P(k)\frac{\sin kr}{kr}.$$

2. `星系功率谱观测式`（20 分）
   写出线性偏置下 $P_{gg}$ 与 $P_{mm}$ 的关系。若考虑 Kaiser RSD 和 shot noise，写出常用观测式并解释 $\mu$ 的意义。

3. `CMB cosmic variance`（20 分）
   从 $\hat C_\ell=(2\ell+1)^{-1}\sum_m|a_{\ell m}|^2$ 写出 cosmic variance。解释为什么低 $\ell$ 的相对误差大。

4. `CMB 源项辨析`（20 分）
   区分内禀温度涨落、SW、Doppler、ISW。说明哪几项是最后散射面局域项，哪一项是传播积分项。

5. `弱透镜`（20 分）
   写出 $\phi,\mathbf d,\kappa,\gamma$ 的关系，并比较星系弱透镜与 CMB 弱透镜的测量方法。

## 模拟题 6：观测方法的互相伪装

1. `SNIa`（20 分）
   解释 SNIa 为什么是标准化烛光而不是绝对标准烛光。写出距离模数公式。

2. `BAO`（20 分）
   横向 BAO 和径向 BAO 分别测什么？若只做各向同性平均，常得到哪个组合距离？

3. `AP 效应`（20 分）
   某结构本征各向同性，但用错误宇宙学参数转成三维距离后显得各向异性。写出横向、径向距离和 $F_{\mathrm{AP}}$。

4. `三者混合题`（20 分）
   判断：SNIa 直接测 $H(z)$；径向 BAO 直接测 $D_A(z)$；AP 只测 $D_L(z)$。逐条改正。

5. `误差与系统学`（20 分）
   简述 BAO、SNIa、弱透镜各自最核心的“标准量”或“观测量”，以及一个可能的系统误差来源。

## 模拟题 7：inflation 与再热细节

1. `视界问题`（20 分）
   用共动哈勃半径解释视界问题，并说明 inflation 的解决机制。

2. `slow-roll 方程`（15 分）
   从标量场方程和 Friedmann 方程写出 slow-roll 近似下的两条基本方程。

3. `e-fold 估算`（25 分）
   若 inflation 结束能标为 $10^{15}\,\mathrm{GeV}$，再热前 $w=0$，再热温度 $10^5\,\mathrm{GeV}$，写出估算 $N_{\min}$ 的拆分步骤和数量级结果。

4. `标量谱和张量谱`（20 分）
   写出 $\Delta_{\mathcal R}^2$、$\Delta_t^2$ 和 $r$。说明 $r$ 为什么能反映 inflation 能标。

5. `概念陷阱`（20 分）
   判断：“inflation 解决视界问题的原因是 $a(t)$ 增大很多。”这句话是否完整？应如何改写？

## 模拟题 8：标量场专题

1. `标量场流体`（20 分）
   写出 $\rho_\phi,p_\phi,w_\phi$。分别讨论势能主导、动能主导、$K\simeq V$ 三个极限。

2. `振荡标量场`（20 分）
   对 $V(\phi)=V_0\phi^n$，用 virial 关系推导平均状态方程 $w=(n-2)/(n+2)$。给出 $n=2,4$ 的物理意义。

3. `Hamilton-Jacobi`（20 分）
   若 $\phi(t)$ 单调，把 $H=H(\phi)$，推导 $\dot\phi=-H_{,\phi}/(4\pi G)$ 和 HJ 方程。

4. `指数势`（20 分）
   对 $a(t)\propto t^p$，由 $\dot H=-4\pi G\dot\phi^2$ 反推 $V(\phi)$ 的指数形式，并写出 $p$ 与 $\lambda$ 的关系。

5. `scaling solution`（20 分）
   对指数势加 dust，定义 $x,y,z$，写出 Friedmann 约束和 scaling fixed point。说明它为什么叫 scaling。

## 模拟题 9：附录边角题

1. `$f(R)$`（20 分）
   从作用量
   $$S=\int d^4x\sqrt{-g}\frac{f(R)}{16\pi G}+S_m$$
   写出场方程。说明 $f(R)=R$ 时如何退回 Einstein 方程。

2. `共形变换`（20 分）
   给出 $\hat g_{\mu\nu}=\Omega^2g_{\mu\nu}$ 下 $D$ 维 Ricci 标量变换公式，并写出 $D=4$ 的简化形式。

3. `LTB`（15 分）
   写出 LTB 度规，说明它相比 FRW 放松了什么对称性。

4. `张量模式`（25 分）
   写出张量扰动二阶作用量、规范化变量、模方程和 Bunch-Davies 初态。说明总张量谱为什么比单偏振谱多一个因子 $2$。

5. `边角题优先级`（20 分）
   在开卷考试中，若时间不够，如何判断 $f(R)$、LTB、共形变换、张量谱中哪些应优先答？给出理由。

## 模拟题 10：混合纠错卷

1. `纠错 1`（20 分）
   纠正下列说法：“复合发生在 $T\simeq13.6\,\mathrm{eV}$，因为氢束缚能就是 $13.6\,\mathrm{eV}$。”

2. `纠错 2`（20 分）
   纠正下列说法：“无各向异性张力时 $\Phi=-\Psi$，所以相对论 Poisson 方程右边变号。”

3. `纠错 3`（20 分）
   纠正下列说法：“小尺度 $P(k)$ 被压低是因为小尺度进入视界更晚。”

4. `纠错 4`（20 分）
   纠正下列说法：“cosmic variance 可以通过更好的探测器无限降低。”

5. `综合判断`（20 分）
   给出一个 8 行以内的总复习框架，把 FRW、热历史、扰动、观测和 inflation 串成一条因果链。

# 参考答案

## 模拟题 1 答案

1. FRW 度规为
   $$ds^2=-dt^2+a^2(t)\left[\frac{dr^2}{1-kr^2}+r^2d\Omega_2^2\right].$$
   常考分量：
   $$\Gamma^r_{0r}=H,\qquad \Gamma^0_{rr}=\frac{a\dot a}{1-kr^2}.$$
   只有在平直直角坐标或 $k=0$ 的径向形式下，才可简化为 $a\dot a$。

2. 由 $\rho\propto a^{-3(1+w)}$ 与 $\rho_X\propto a^{-2}$ 得
   $$-3(1+w_X)=-2,\qquad w_X=-\frac13.$$
   曲率项在 Friedmann 方程中按 $a^{-2}$ 标度，所以形式上像 $w=-1/3$ 的有效流体。

3. 不完全正确。一般曲率下先求横向共动距离 $D_M$，再写
   $$D_A=\frac{D_M}{1+z},\qquad D_L=(1+z)D_M.$$
   平直时 $D_M=\chi$，才有 $D_A=\chi/(1+z)$。

4. 展开式为
   $$D_L(z)=\frac{c}{H_0}\left[z+\frac12(1-q_0)z^2-\frac16(1-q_0-3q_0^2+j_0)z^3+\mathcal O(z^4)\right].$$
   最容易错的是 $z^3$ 项整体负号和括号内 $j_0$ 的符号。若取 $c=1$，前因子写成 $1/H_0$。

5. 标准数值：
   $$H(z=1)\simeq 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}},\quad \chi\simeq 3.30\,\mathrm{Gpc},$$
   $$D_L\simeq 6.61\,\mathrm{Gpc},\quad D_A\simeq 1.65\,\mathrm{Gpc},\quad t(z=1)\simeq 5.75\,\mathrm{Gyr}.$$
   $p_\Lambda=-\rho_\Lambda$ 是 $c=1$ 记号；若写 SI 压强，要把能量密度写成 $\mathrm{J/m^3}$，压强单位为 $\mathrm{Pa}$。

## 模拟题 2 答案

1. 用
   $$n=g\int\frac{d^3p}{(2\pi)^3}e^{-(E-\mu)/T},\qquad E\simeq m+\frac{p^2}{2m}$$
   得
   $$n=ge^{(\mu-m)/T}\int\frac{d^3p}{(2\pi)^3}e^{-p^2/(2mT)}=g\left(\frac{mT}{2\pi}\right)^{3/2}e^{(\mu-m)/T}.$$
   它要求非相对论、稀薄 Maxwell-Boltzmann 近似；相对论或简并体系不能直接用。

2. 错。正确形式为
   $$\frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.$$
   电中性给 $n_e=n_p=X_en_B$，且 $n_H=(1-X_e)n_B$。

3. 复合是中性氢形成，自由电子数下降；光子退耦是 Thomson 散射率小于膨胀率：
   $$\Gamma_T=n_e\sigma_Tc=X_en_B\sigma_Tc\lesssim H.$$
   二者相近但不是同一个物理条件。

4. 中微子退耦后 $T_\nu\propto a^{-1}$。随后 $e^\pm$ 湮灭只加热光子，光子-$e^\pm$ 热浴熵守恒：
   $$\frac{11}{2}T_{\gamma,\mathrm{before}}^3=2T_{\gamma,\mathrm{after}}^3.$$
   所以
   $$\frac{T_\nu}{T_\gamma}=\left(\frac{4}{11}\right)^{1/3}.$$
   中微子已经 decouple，所以不再参与该热浴的熵交换。

5. 氘束缚能虽为 $2.2\,\mathrm{MeV}$，但高能光子尾部会打碎氘，需等到 $T\sim0.1\,\mathrm{MeV}$。弱冻结后中子继续 $\beta$ 衰变，使 $n/p$ 下降。典型
   $$(n/p)\sim\frac17,\qquad Y_p\simeq\frac{2(n/p)}{1+(n/p)}\sim0.25.$$

## 模拟题 3 答案

1. 一般标量扰动：
   $$ds^2=a^2(\eta)\left[-(1+2A)d\eta^2+2\partial_iB\,d\eta dx^i+\left((1+2C)\delta_{ij}+2D_{ij}E\right)dx^idx^j\right],$$
   $$D_{ij}=\partial_i\partial_j-\frac13\delta_{ij}\nabla^2.$$

2. 变换：
   $$\tilde A=A-\mathcal H\xi^0-(\xi^0)',\quad \tilde B=B+\xi^0-L',$$
   $$\tilde C=C-\mathcal H\xi^0-\frac13\nabla^2L,\quad \tilde E=E-L.$$
   因此
   $$\tilde B-\tilde E'=B+\xi^0-L'-(E'-L')=B-E'+\xi^0.$$

3. 定义
   $$\Phi_B=A+\frac1a[a(B-E')]',\qquad \Psi_B=-C+\frac13\nabla^2E-\mathcal H(B-E').$$
   $B-E'$ 的额外 $\xi^0$ 正好抵消 $A$、$C$ 中的 $\xi^0$ 与 $L$ 项，所以二者规范不变。

4. Newtonian gauge：
   $$B=E=0,\qquad A=\Phi,\qquad C=-\Psi.$$
   方程：
   $$\nabla^2\Psi-3\mathcal H(\Psi'+\mathcal H\Phi)=4\pi Ga^2\delta\rho,$$
   $$\partial_i(\Psi'+\mathcal H\Phi)=4\pi Ga^2(\bar\rho+\bar p)v_i,$$
   $$\partial_i\partial_j(\Phi-\Psi)-\frac13\delta_{ij}\nabla^2(\Phi-\Psi)=8\pi Ga^2\Sigma_{ij}.$$
   若 $\Sigma_{ij}=0$，则 $\Phi=\Psi$。

5. 相对论 Poisson 方程为
   $$\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi Ga^2\delta\rho.$$
   当 $k\gg aH$ 且势变化缓慢时，时间导数项相对 Laplacian 可忽略。

## 模拟题 4 答案

1. 从
   $$\dot\delta+\frac1a\nabla\cdot\mathbf v=0,\quad \dot{\mathbf v}+H\mathbf v=-\frac1a\nabla\Phi,\quad \nabla^2\Phi=4\pi Ga^2\bar\rho\delta$$
   消去 $\mathbf v,\Phi$ 得
   $$\ddot\delta+2H\dot\delta-4\pi G\bar\rho\delta=0.$$

2. 带压强：
   $$\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\bar\rho\right)\delta=0.$$
   辐射主导用 $H=1/(2t)$、$\bar\rho=3/(32\pi Gt^2)$、$c_s^2=1/3$ 即得题中形式。

3. $k\to0$ 时设 $\delta=t^n$：
   $$n(n-1)+n-\frac38=0,\qquad n=\pm\sqrt{\frac38}.$$

4. Jeans：
   $$k_J^2=\frac{4\pi G\bar\rho a^2}{c_s^2},\qquad \lambda_J^{\mathrm{phys}}=\frac{2\pi a}{k_J}=c_s\sqrt{\frac{\pi}{G\bar\rho}},$$
   $$M_J\sim\frac{4\pi}{3}\bar\rho\left(\frac{\lambda_J^{\mathrm{phys}}}{2}\right)^3.$$
   共动波长和物理波长差一个 $a$。

5. $k_{\mathrm{eq}}$ 是相等时进入视界的波数。$k\ll k_{\mathrm{eq}}$ 的模进入视界晚，$T(k)\simeq1$；$k\gg k_{\mathrm{eq}}$ 的模在辐射主导时早入视界，只对数增长，故小尺度功率被压低。BAO 由声学视界 $r_d$ 控制，不是 $k_{\mathrm{eq}}$。

## 模拟题 5 答案

1. 定义
   $$\xi(\mathbf r)=\langle\delta(\mathbf x)\delta(\mathbf x+\mathbf r)\rangle,$$
   $$\langle\delta(\mathbf k)\delta(\mathbf k')\rangle=(2\pi)^3\delta^{(3)}(\mathbf k+\mathbf k')P(k).$$
   代入 Fourier 展开得
   $$\xi(\mathbf r)=\int\frac{d^3k}{(2\pi)^3}P(k)e^{i\mathbf k\cdot\mathbf r}.$$
   角向积分后得题中公式。

2. 线性偏置：
   $$P_{gg}=b_g^2P_{mm}.$$
   RSD 观测式：
   $$P_{gg}^{\mathrm{obs}}(k,\mu,z)\simeq[b_g(z)+f(z)\mu^2]^2P_{mm}(k,z)+P_{\mathrm{shot}}.$$
   $\mu$ 是 $\mathbf k$ 与视线方向夹角余弦。

3. 高斯情况下
   $$\mathrm{Var}(\hat C_\ell)=\frac{2}{2\ell+1}C_\ell^2,\qquad \frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$
   低 $\ell$ 只有少量 $m$ 模，样本数少。

4. $\Theta_0$ 是最后散射面内禀温度起伏；SW 是局域引力红移；Doppler 是局域速度投影；ISW 是传播过程中势随时间变化的积分项。

5. 关系：
   $$\mathbf d=\nabla\phi,\qquad \kappa=-\frac12\nabla^2\phi,$$
   $$\gamma_1=\frac12(\partial_1^2-\partial_2^2)\phi,\qquad \gamma_2=\partial_1\partial_2\phi.$$
   星系透镜测背景星系形状统计；CMB 透镜测温度/偏振模耦合和 E-to-B 转换。

## 模拟题 6 答案

1. SNIa 需经光变曲线宽度、颜色等校正后才成为标准化烛光。距离模数：
   $$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right).$$

2. 横向 BAO：
   $$r_d=(1+z)D_A\Delta\theta.$$
   径向 BAO：
   $$r_d=\frac{c\Delta z}{H(z)}.$$
   各向同性平均常给 $D_V/r_d$。

3. 
   $$\Delta r_\perp=(1+z)D_A\Delta\theta,\qquad \Delta r_\parallel=\frac{c\Delta z}{H(z)},$$
   $$F_{\mathrm{AP}}=\frac{(1+z)D_AH}{c}.$$

4. 三句都错。SNIa 主要测 $D_L(z)$；径向 BAO 测 $H(z)$；AP 测 $D_AH$ 的组合，不是 $D_L$。

5. BAO 的标准量是 $r_d$，系统误差包括非线性结构和重构误差；SNIa 的标准量是校准后绝对星等，系统误差包括尘埃和演化；弱透镜的观测量是剪切/会聚，系统误差包括 PSF、光度红移和 intrinsic alignment。

## 模拟题 7 答案

1. 标准大爆炸中 $1/(aH)$ 随时间增大，所以复合时远距离 CMB 区域不因果连通。Inflation 使
   $$\frac{d}{dt}\left(\frac1{aH}\right)<0,$$
   让今天的大尺度在早期曾处于同一因果区域。

2. Slow-roll：
   $$H^2\simeq\frac{V}{3M_{\mathrm{Pl}}^2},\qquad 3H\dot\phi\simeq -V'.$$

3. 用
   $$N_{\min}\simeq\ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right),$$
   且
   $$\frac{a_{\mathrm{end}}}{a_0}=\frac{a_{\mathrm{end}}}{a_{\mathrm{rh}}}\frac{a_{\mathrm{rh}}}{a_0}.$$
   $w=0$ 再热前 $\rho\propto a^{-3}$，再热后用熵守恒 $aTg_{*s}^{1/3}=\mathrm{const}$。本课程参数给
   $$N_{\min}\approx50.1.$$

4. 
   $$\Delta_{\mathcal R}^2\simeq\frac{H^2}{8\pi^2\epsilon M_{\mathrm{Pl}}^2},\qquad \Delta_t^2\simeq\frac{2H^2}{\pi^2M_{\mathrm{Pl}}^2},\qquad r\simeq16\epsilon.$$
   $\Delta_t^2$ 直接依赖 $H^2$，而 $H^2$ 由 inflation 能标控制。

5. 不完整。应改为：inflation 期间共动哈勃半径 $1/(aH)$ 减小，使今天大尺度模在早期处于因果连通区域。

## 模拟题 8 答案

1. 
   $$\rho_\phi=\frac12\dot\phi^2+V,\qquad p_\phi=\frac12\dot\phi^2-V,\qquad w_\phi=\frac{K-V}{K+V}.$$
   $K\ll V$ 时 $w\simeq-1$；$K\gg V$ 时 $w\simeq1$；$K\simeq V$ 时 $w\simeq0$。

2. Virial 关系：
   $$\langle\dot\phi^2\rangle=\langle\phi V_\phi\rangle=n\langle V\rangle.$$
   所以
   $$w=\frac{\frac n2\langle V\rangle-\langle V\rangle}{\frac n2\langle V\rangle+\langle V\rangle}=\frac{n-2}{n+2}.$$
   $n=2$ 像冷暗物质，$n=4$ 像辐射。

3. 若 $H=H(\phi)$，
   $$\dot H=H_{,\phi}\dot\phi=-4\pi G\dot\phi^2,$$
   故
   $$\dot\phi=-\frac{1}{4\pi G}H_{,\phi}.$$
   代入 Friedmann 得
   $$[H_{,\phi}]^2-12\pi GH^2+32\pi^2G^2V=0.$$

4. $a\propto t^p$ 给 $H=p/t$、$\dot H=-p/t^2$。由 $\dot H=-4\pi G\dot\phi^2$ 得 $\phi\propto\ln t$，再由 Friedmann 得
   $$V(\phi)=V_0e^{-\lambda\phi},\qquad p=\frac{16\pi G}{\lambda^2}.$$
   约化 Planck 单位中 $p=2/\lambda^2$。

5. 
   $$x=\frac{\sqrt{8\pi G}\dot\phi}{\sqrt6H},\qquad y=\frac{\sqrt{8\pi GV}}{\sqrt3H},\qquad z=\frac{\sqrt{8\pi G\rho_m}}{\sqrt3H},$$
   $$1=x^2+y^2+z^2.$$
   Dust scaling point：
   $$x=y=\sqrt{\frac32}\frac1\lambda,\qquad z=\sqrt{1-\frac3{\lambda^2}},$$
   $$\Omega_\phi=\frac3{\lambda^2},\qquad w_{\mathrm{eff}}=0.$$
   它叫 scaling 是因为标量场和 dust 以相同比例随膨胀衰减，能量密度比例保持常数。

## 模拟题 9 答案

1. 
   $$f'(R)R_{\mu\nu}-\frac12f(R)g_{\mu\nu}-(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box)f'(R)=8\pi GT_{\mu\nu}.$$
   若 $f(R)=R$，则 $f'(R)=1$，导数项消失，得到 Einstein 方程。

2. 
   $$\hat R=\Omega^{-2}\left[R-2(D-1)\Box\ln\Omega-(D-1)(D-2)(\nabla\ln\Omega)^2\right].$$
   $D=4$ 时
   $$\hat R=\frac{1}{\Omega^2}R-\frac{6}{\Omega^3}\Box\Omega.$$

3. 
   $$ds^2=-dt^2+X^2(t,r)dr^2+Y^2(t,r)(d\theta^2+\sin^2\theta d\phi^2).$$
   它保持球对称，但允许径向非均匀，比 FRW 放松了空间均匀性。

4. 
   $$S_T^{(2)}=\frac{M_P^2}{8}\int d\tau d^3x\,a^2[(h'_{ij})^2-(\partial_kh_{ij})^2],\qquad v_\lambda=\frac{aM_P}{2}h_\lambda,$$
   $$v_{\lambda,k}''+\left(k^2-\frac{a''}{a}\right)v_{\lambda,k}=0,\qquad v_k\to\frac{e^{-ik\tau}}{\sqrt{2k}}.$$
   单偏振
   $$\Delta_{t,\lambda}^2=\frac{H^2}{\pi^2M_P^2},$$
   两个偏振相加：
   $$\Delta_t^2=\frac{2H^2}{\pi^2M_P^2}.$$

5. 优先级取决于题面。若题目在 inflation/CMB 中出现张量谱，优先答张量谱；若题目在作业附录或 GR 变体中出现，答 $f(R)$ 或共形变换；LTB 若无明确要求最低优先级，因为它偏 GR 专题且不在期末主线。

## 模拟题 10 答案

1. 错。复合温度远低于束缚能，因为 $\eta=n_B/n_\gamma\sim10^{-10}$，光子远多于重子，高能尾部会持续电离氢。典型
   $$T_{\mathrm{rec}}\sim0.3\,\mathrm{eV}.$$

2. 错。无各向异性张力时是
   $$\Phi=\Psi,$$
   不是 $\Phi=-\Psi$。相对论 Poisson 方程为
   $$\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi Ga^2\delta\rho.$$

3. 错。小尺度 $k$ 大，进入视界更早，通常在辐射主导时期进入，只能对数增长，因此功率被压低。

4. 错。Cosmic variance 来自只观测到一个宇宙、每个低 $\ell$ 的 $m$ 模数有限：
   $$\frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac2{2\ell+1}}.$$
   它不是仪器噪声，不能靠更好探测器无限降低。

5. 一个合格框架：FRW 给背景几何和 $H(a)$；热历史决定粒子退耦、复合与 CMB 最后散射面；inflation 产生原初扰动并解决视界问题；线性微扰把原初曲率扰动演化成物质扰动；转移函数和增长因子生成 $P_{mm}$；偏置给 $P_{gg}$；CMB、BAO、SNIa、AP 和弱透镜把背景和扰动投影成观测量；参数拟合再反推宇宙学模型。
