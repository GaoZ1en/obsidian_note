---
title: modern cosmology cheat sheet
date: 2026-06-15
summary: "现代宇宙学开卷考试速查表，压缩 review.md、homework.md、exam.md 和 scalar dominated universe.md 的高频定义、公式、结论和易错点。"
---

# 现代宇宙学速查表

## 0. 开卷优先级

1. 背景题先写 $ds^2$、$H=\dot a/a$、$\dot\rho+3H(\rho+p)=0$。
2. 热历史题先写平衡分布、非相对论数密度、$\Gamma/H$。
3. 距离题先写 $H(z)$，再积分 $\chi(z)$，最后转 $D_L,D_A$。
4. 微扰题先判断尺度：$k\ll aH$ 还是 $k\gg aH$。
5. 结构形成题先写 $P_{\mathcal R}\to P_{mm}\to P_{gg}$。
6. CMB 题先分“最后散射面源项”和“传播途中积分项”。
7. inflation 题先写 $1/(aH)$ 在 inflation 期间减小。

## 1. FRW 与背景方程

FRW 度规：
$$ds^2=-dt^2+a^2(t)\left[\frac{dr^2}{1-kr^2}+r^2(d\theta^2+\sin^2\theta\,d\phi^2)\right].$$

平直形式：
$$ds^2=-dt^2+a^2(t)d\mathbf x^2.$$

常考联络：
$$\Gamma^1_{01}=\Gamma^1_{10}=\frac{\dot a}{a}=H,\qquad \Gamma^0_{11}=\frac{a\dot a}{1-kr^2}.$$

理想流体：
$$T_{\mu\nu}=(\rho+p)u_\mu u_\nu+pg_{\mu\nu},\qquad T^\mu_{\ \nu}=\mathrm{diag}(-\rho,p,p,p).$$

Friedmann 方程：
$$H^2=\frac{8\pi G}{3}\rho-\frac{k}{a^2},\qquad \frac{\ddot a}{a}=-\frac{4\pi G}{3}(\rho+3p).$$

连续性方程：
$$\dot\rho+3H(\rho+p)=0.$$

若 $p=w\rho$：
$$\rho\propto a^{-3(1+w)}.$$

常见组分：
$$w_m=0,\qquad \rho_m\propto a^{-3};\qquad w_r=\frac13,\qquad \rho_r\propto a^{-4};\qquad w_\Lambda=-1,\qquad \rho_\Lambda=\mathrm{const}.$$

## 2. 热统计与退耦

平衡分布：
$$f(E)=\frac{1}{e^{(E-\mu)/T}\pm 1},\qquad f_{\mathrm{MB}}\simeq e^{-(E-\mu)/T}.$$

非相对论数密度：
$$n=g\left(\frac{mT}{2\pi}\right)^{3/2}e^{(\mu-m)/T}.$$

光子：
$$n_\gamma=\frac{2\zeta(3)}{\pi^2}T^3,\qquad \rho_\gamma=\frac{\pi^2}{15}T^4.$$

有效自由度：
$$\rho=\frac{\pi^2}{30}g_*T^4,\qquad s=\frac{2\pi^2}{45}g_{*s}T^3.$$

辐射主导：
$$H=1.66\sqrt{g_*}\frac{T^2}{M_{\mathrm{Pl}}},\qquad t\simeq \frac{1}{2H}.$$

退耦判断：
$$\Gamma\sim n\langle\sigma v\rangle,\qquad \Gamma/H\gg 1\Rightarrow \mathrm{equilibrium},\qquad \Gamma/H\lesssim 1\Rightarrow \mathrm{decoupling}.$$

中微子退耦：
$$\Gamma_\nu\sim G_F^2T^5,\qquad T_{\nu,\mathrm{dec}}\sim \left(\frac{1.66\sqrt{10.75}}{G_F^2M_{\mathrm{Pl}}}\right)^{1/3}\sim 1\,\mathrm{MeV}.$$

$e^\pm$ 湮灭后：
$$\frac{T_{\nu,0}}{T_{\gamma,0}}=\left(\frac{4}{11}\right)^{1/3},\qquad T_{\nu,0}\simeq 1.95\,\mathrm K.$$

中微子质量：
$$\Omega_{\nu,0}h^2\simeq \frac{\sum_f m_{\nu_f}}{94\,\mathrm{eV}}.$$

## 3. 复合、Saha 与 BBN

Saha 反应：
$$e^-+p\rightleftharpoons H+\gamma,\qquad \mu_e+\mu_p=\mu_H.$$

Saha 方程：
$$\frac{n_en_p}{n_H}\simeq \left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T},\qquad E_0=13.6\,\mathrm{eV}.$$

电离度形式：
$$X_e=\frac{n_e}{n_B},\qquad \frac{X_e^2}{1-X_e}=\frac{1}{n_B}\left(\frac{m_eT}{2\pi}\right)^{3/2}e^{-E_0/T}.$$

复合温度远低于 $13.6\,\mathrm{eV}$：
$$n_B=\eta n_\gamma,\qquad \eta\sim 10^{-10}.$$

结论：
$$T_{\mathrm{rec}}\sim 0.3\,\mathrm{eV},\qquad z_{\mathrm{dec}}\sim 1100.$$

光子退耦：
$$\Gamma_T=n_e\sigma_Tc=X_en_B\sigma_Tc,\qquad \Gamma_T\lesssim H.$$

BBN：
$$\frac{n}{p}\simeq e^{-Q/T},\qquad Q=m_n-m_p=1.293\,\mathrm{MeV}.$$

氦丰度：
$$Y_p\simeq \frac{2(n/p)}{1+(n/p)}\sim 0.25.$$

## 4. 距离与背景观测

平直宇宙：
$$\chi(z)=\int_0^z\frac{c\,dz'}{H(z')}.$$

距离关系：
$$D_A=\frac{\chi}{1+z},\qquad D_L=(1+z)\chi=(1+z)^2D_A.$$

距离模数：
$$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right).$$

标准 $H(z)$：
$$H^2(z)=H_0^2\left[\Omega_{r0}(1+z)^4+\Omega_{m0}(1+z)^3+\Omega_{k0}(1+z)^2+\Omega_{\Lambda0}\right].$$

平直 $\Lambda$CDM：
$$H(z)=H_0\sqrt{\Omega_{m0}(1+z)^3+\Omega_{\Lambda0}}.$$

低红移展开：
$$q=-\frac{\ddot a}{aH^2},\qquad j=\frac{a^{(3)}}{aH^3},$$
$$D_L(z)=\frac{c}{H_0}\left[z+\frac12(1-q_0)z^2-\frac16(1-q_0-3q_0^2+j_0)z^3+\mathcal O(z^4)\right].$$

宇宙年龄与 lookback time：
$$t(z)=\int_z^\infty\frac{dz'}{(1+z')H(z')},\qquad t_L(z)=\int_0^z\frac{dz'}{(1+z')H(z')}.$$

常用数值：
$$\Omega_{m0}=0.3,\qquad H_0=70\,\mathrm{km\,s^{-1}\,Mpc^{-1}},\qquad z=1,$$
$$H\simeq 123.25\,\mathrm{km\,s^{-1}\,Mpc^{-1}},\qquad \chi\simeq 3.30\,\mathrm{Gpc},$$
$$D_L\simeq 6.61\,\mathrm{Gpc},\qquad D_A\simeq 1.65\,\mathrm{Gpc},\qquad t(z=1)\simeq 5.75\,\mathrm{Gyr}.$$

## 5. 线性微扰

牛顿版：
$$\dot\delta+\frac{1}{a}\nabla\cdot\mathbf v=0,\qquad \dot{\mathbf v}+H\mathbf v=-\frac{1}{a}\nabla\Phi,\qquad \nabla^2\Phi=4\pi Ga^2\bar\rho\,\delta.$$

增长方程：
$$\ddot\delta_m+2H\dot\delta_m-4\pi G\bar\rho_m\delta_m=0.$$

物质主导：
$$\delta_m\propto a,\qquad \delta_{\mathrm{decay}}\propto t^{-1}.$$

带压强：
$$\ddot\delta+2H\dot\delta+\left(\frac{c_s^2k^2}{a^2}-4\pi G\bar\rho\right)\delta=0.$$

辐射主导长波：
$$n^2-\frac38=0,\qquad \delta\propto t^{\pm\sqrt{3/8}}.$$

Jeans 尺度：
$$k_J^2=\frac{4\pi G\bar\rho a^2}{c_s^2},\qquad \lambda_J^{\mathrm{phys}}=c_s\sqrt{\frac{\pi}{G\bar\rho}},\qquad M_J\sim \frac{4\pi}{3}\bar\rho\left(\frac{\lambda_J^{\mathrm{phys}}}{2}\right)^3.$$

一般标量扰动：
$$ds^2=a^2(\eta)\left[-(1+2A)d\eta^2+2\partial_iB\,d\eta dx^i+\left((1+2C)\delta_{ij}+2D_{ij}E\right)dx^idx^j\right].$$

Bardeen potentials：
$$\Phi_B=A+\frac{1}{a}[a(B-E')]',\qquad \Psi_B=-C+\frac13\nabla^2E-\mathcal H(B-E').$$

Newtonian gauge：
$$B=E=0,\qquad A=\Phi,\qquad C=-\Psi.$$

Einstein 方程常用形式：
$$\nabla^2\Psi-3\mathcal H(\Psi'+\mathcal H\Phi)=4\pi Ga^2\delta\rho,$$
$$\partial_i(\Psi'+\mathcal H\Phi)=4\pi Ga^2(\bar\rho+\bar p)v_i,$$
$$\partial_i\partial_j(\Phi-\Psi)-\frac13\delta_{ij}\nabla^2(\Phi-\Psi)=8\pi Ga^2\Sigma_{ij}.$$

若 $\Sigma_{ij}=0$：
$$\Phi=\Psi.$$

相对论 Poisson 方程：
$$\nabla^2\Phi-3\mathcal H(\Phi'+\mathcal H\Phi)=4\pi Ga^2\delta\rho.$$

Bardeen equation：
$$\Phi''+3(1+c_s^2)\mathcal H\Phi'+\left[2\mathcal H'+(1+3c_s^2)\mathcal H^2-c_s^2\nabla^2\right]\Phi=0.$$

## 6. 结构形成与功率谱

原初谱：
$$\Delta_{\mathcal R}^2(k)=A_s\left(\frac{k}{k_*}\right)^{n_s-1},\qquad P_{\mathcal R}(k)=\frac{2\pi^2}{k^3}\Delta_{\mathcal R}^2(k).$$

曲率到物质：
$$\delta_m(k,z)=M(k,z)\mathcal R(k),\qquad M(k,z)=\frac{2k^2}{5\Omega_{m0}H_0^2}T(k)D(z).$$

星系谱：
$$P_{mm}=M^2P_{\mathcal R},\qquad P_{gg}=b_g^2P_{mm}.$$

RSD：
$$P_{gg}^{\mathrm{obs}}(k,\mu,z)\simeq [b_g(z)+f(z)\mu^2]^2P_{mm}(k,z)+P_{\mathrm{shot}}.$$

关联函数：
$$\xi(r)=\int\frac{k^2dk}{2\pi^2}P(k)\frac{\sin kr}{kr},\qquad P(k)=4\pi\int r^2dr\,\xi(r)\frac{\sin kr}{kr}.$$

相等尺度：
$$k_{\mathrm{eq}}=a_{\mathrm{eq}}H_{\mathrm{eq}}\simeq 0.073\,\Omega_{m0}h^2\,\mathrm{Mpc}^{-1}.$$

功率谱形状：
$$k\ll k_{\mathrm{eq}}:\quad T(k)\simeq 1,\qquad P_{mm}\propto k^{n_s}.$$
$$k\gg k_{\mathrm{eq}}:\quad T(k)\sim \frac{\ln(k/k_{\mathrm{eq}})}{(k/k_{\mathrm{eq}})^2},\qquad P_{mm}\propto k^{n_s-4}\ln^2k.$$

物理图像：
$$\delta_m\propto \ln a\quad \mathrm{in\ radiation\ era},\qquad \delta_m\propto a\quad \mathrm{in\ matter\ era}.$$

## 7. CMB 与弱透镜

四个 CMB 源项：
$$\Theta_{\mathrm{obs}}\sim \Theta_0+\Psi+\hat{\mathbf n}\cdot\mathbf v_b+\int(\Phi'+\Psi')d\eta.$$

球谐展开：
$$\Theta(\hat{\mathbf n})=\sum_{\ell m}a_{\ell m}Y_{\ell m}(\hat{\mathbf n}),\qquad C_\ell=\langle |a_{\ell m}|^2\rangle.$$

估计量：
$$\hat C_\ell=\frac{1}{2\ell+1}\sum_{m=-\ell}^{\ell}|a_{\ell m}|^2.$$

Cosmic variance：
$$\frac{\Delta C_\ell}{C_\ell}=\sqrt{\frac{2}{2\ell+1}}.$$

Silk damping：光子扩散抹平小尺度涨落，高 $\ell$ 功率下降。

星系透镜：
$$\gamma=(\gamma_1,\gamma_2),\qquad \kappa,\qquad \xi_\pm(\theta),\qquad C_\ell^{\kappa\kappa}.$$

CMB 透镜：
$$\mathbf d=\nabla\phi,\qquad \kappa=-\frac12\nabla^2\phi.$$

剪切：
$$\gamma_1=\frac12(\partial_1^2-\partial_2^2)\phi,\qquad \gamma_2=\partial_1\partial_2\phi.$$

## 8. BAO / SNIa / AP

SNIa：
$$\mu=m-M=5\log_{10}\left(\frac{D_L}{10\,\mathrm{pc}}\right).$$

BAO 横向：
$$r_d=(1+z)D_A(z)\Delta\theta,\qquad D_A=\frac{r_d}{(1+z)\Delta\theta}.$$

BAO 径向：
$$r_d=\frac{c\Delta z}{H(z)}.$$

AP：
$$\Delta r_\perp=(1+z)D_A(z)\Delta\theta,\qquad \Delta r_\parallel=\frac{c\Delta z}{H(z)},$$
$$F_{\mathrm{AP}}(z)=\frac{(1+z)D_A(z)H(z)}{c}.$$

## 9. Inflation 与标量场

Inflation 条件：
$$\ddot a>0,\qquad \frac{d}{dt}\left(\frac{1}{aH}\right)<0.$$

Slow-roll：
$$H^2\simeq \frac{V}{3M_{\mathrm{Pl}}^2},\qquad 3H\dot\phi\simeq -V'.$$

参数：
$$\epsilon_V=\frac{M_{\mathrm{Pl}}^2}{2}\left(\frac{V'}{V}\right)^2,\qquad \eta_V=M_{\mathrm{Pl}}^2\frac{V''}{V},\qquad \epsilon_H\simeq \epsilon_V.$$

e-fold：
$$N=\ln\frac{a_{\mathrm{end}}}{a}=\int_t^{t_{\mathrm{end}}}Hdt,\qquad N_{\min}\simeq \ln\left(\frac{a_{\mathrm{end}}H_{\mathrm{end}}}{a_0H_0}\right).$$

本课程再热题典型结果：
$$\rho_{\mathrm{end}}^{1/4}=10^{15}\,\mathrm{GeV},\qquad w=0,\qquad T_{\mathrm{rh}}=10^5\,\mathrm{GeV},\qquad N_{\min}\approx 50.1.$$

标量与张量谱：
$$\Delta_{\mathcal R}^2\simeq \frac{H^2}{8\pi^2\epsilon M_{\mathrm{Pl}}^2},\qquad \Delta_t^2\simeq \frac{2H^2}{\pi^2M_{\mathrm{Pl}}^2},\qquad r\simeq 16\epsilon.$$

张量规范化变量：
$$S_T^{(2)}=\frac{M_P^2}{8}\int d\tau d^3x\,a^2\left[(h'_{ij})^2-(\partial_kh_{ij})^2\right],\qquad v_\lambda=\frac{aM_P}{2}h_\lambda.$$

模方程：
$$v_{\lambda,k}''+\left(k^2-\frac{a''}{a}\right)v_{\lambda,k}=0.$$

## 10. 标量场专题

标量场流体：
$$\rho_\phi=\frac12\dot\phi^2+V,\qquad p_\phi=\frac12\dot\phi^2-V,\qquad w_\phi=\frac{K-V}{K+V}.$$

KG 方程：
$$\ddot\phi+3H\dot\phi+V_\phi=0,\qquad \phi''+2\mathcal H\phi'+a^2V_\phi=0.$$

振荡幂律势：
$$V(\phi)=V_0\phi^n,\qquad \langle\dot\phi^2\rangle=n\langle V\rangle,\qquad w=\frac{n-2}{n+2}.$$

例子：
$$n=2\Rightarrow w=0,\qquad n=4\Rightarrow w=\frac13.$$

Hamilton-Jacobi：
$$\dot\phi=-\frac{1}{4\pi G}H_{,\phi},$$
$$[H_{,\phi}]^2-12\pi GH^2+32\pi^2G^2V=0.$$

指数势与幂律膨胀：
$$V(\phi)=V_0e^{-\lambda\phi},\qquad a(t)\propto t^p,\qquad p=\frac{16\pi G}{\lambda^2}.$$

约化 Planck 单位：
$$V(\phi)=V_0e^{-\lambda\phi/M_P},\qquad p=\frac{2}{\lambda^2}.$$

指数势固定点：
$$A_\pm=(\pm1,0,0),\qquad w_{\mathrm{eff}}=1.$$
$$B=\left(\frac{\lambda}{\sqrt6},\sqrt{1-\frac{\lambda^2}{6}},0\right),\qquad w_{\mathrm{eff}}=\frac{\lambda^2}{3}-1,\qquad \lambda^2<2\Rightarrow \mathrm{acceleration}.$$
$$C=(0,0,1),\qquad w_{\mathrm{eff}}=0.$$
$$D=\left(\sqrt{\frac32}\frac1\lambda,\sqrt{\frac32}\frac1\lambda,\sqrt{1-\frac3{\lambda^2}}\right),\qquad \Omega_\phi=\frac3{\lambda^2},\qquad w_{\mathrm{eff}}=0.$$

## 11. 低优先级附录

$f(R)$ 方程：
$$f'(R)R_{\mu\nu}-\frac12f(R)g_{\mu\nu}-(\nabla_\mu\nabla_\nu-g_{\mu\nu}\Box)f'(R)=8\pi GT_{\mu\nu}.$$

共形变换：
$$\hat g_{\mu\nu}=\Omega^2g_{\mu\nu},$$
$$\hat R=\Omega^{-2}\left[R-2(D-1)\Box\ln\Omega-(D-1)(D-2)(\nabla\ln\Omega)^2\right].$$

四维：
$$\hat R=\frac{1}{\Omega^2}R-\frac{6}{\Omega^3}\Box\Omega.$$

LTB：
$$ds^2=-dt^2+X^2(t,r)dr^2+Y^2(t,r)(d\theta^2+\sin^2\theta\,d\phi^2).$$

## 12. 易错点

- $X_e$ 的 Saha 方程左边是 $X_e^2/(1-X_e)$。
- $g_*$ 和 $g_{*s}$ 不要混用。
- $D_L=(1+z)^2D_A$ 是一般 reciprocity relation；$D_L=(1+z)\chi$ 只是在平直情形直接使用。
- $t(z)$ 是当时宇宙年龄，$t_L(z)$ 是 lookback time。
- $T(k)$ 负责尺度依赖，$D(z)$ 负责时间增长。
- $k_{\mathrm{eq}}$ 是功率谱转折尺度，$r_d$ 是 BAO 标准尺。
- 无各向异性张力才有 $\Phi=\Psi$。
- Fourier 空间里 $-\nabla^2\to k^2$。
- 张量谱总谱包含两个偏振，单偏振少一个因子 $2$。
- 解决视界问题靠 $1/(aH)$ 减小，不是单纯 $a$ 增大。
