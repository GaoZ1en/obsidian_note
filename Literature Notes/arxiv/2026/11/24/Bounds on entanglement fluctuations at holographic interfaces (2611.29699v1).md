---
paper id: 2611.29699v1
title: Bounds on entanglement fluctuations at holographic interfaces
authors:
  - Pallab Basu
  - Vishnu Jejjala
publication date: 2026-11-22T18:59
abstract: |-
  对反射对称的单标量 AdS3 wall，固定物理边界数据后计算半直线 replica susceptibility。将容量写成透射给定的几何项减去正的标量响应，并用背景 Einstein 方程控制减项，得到 c_eff ≤ c_cap ≤ c_eff²/c_LR。
comments: "25 PDF pages including supplement and references"
url: https://arxiv.org/abs/2611.29699v1
summary: "固定 source 的 Einstein–scalar 响应把界面的 replica 二阶量拆成几何与标量两项，适合作 sewing 核中独立谱数据的校准。"
tags: []
---

# 模谱的宽度不是熵：固定 source 的 replica 响应

[Basu–Jejjala v1](https://arxiv.org/pdf/2611.29699v1) 在一类经典 AdS$_3$ scalar walls 中证明 $c_{\rm eff}\le c_{\rm cap}\le c_{\rm eff}^2/c_{LR}$。更实用的结果是一个可以复用的分解：穿过长喉的**边界归一化几何项**可以很大，即使支撑壁的标量算符一直有隙；因此大容量不必归因于轻模或失稳。正文 pp. 1–5 与 PDF 页码相同，supplement 的印刷页码为 PDF 页码减 5；以下 supplement 引用都给 PDF 页码及 S 编号。

## 三个量和固定的边界数据

令 $F(n)=\log\operatorname{Tr}\rho_A^n$，区域 $A$ 是终止在界面的半直线，$\ell=\log(L/\epsilon)$。则 $S=-F'(1)=c_{\rm eff}\ell/6+O(1)$，容量 $C_A=F''(1)=\operatorname{Var}(-\log\rho_A)=c_{\rm cap}\ell/6+O(1)$。escort 态 $\rho_A(n)=\rho_A^n/e^{F(n)}$ 的熵是 $F-nF'$，方差（以其自己的 modular Hamiltonian 定义）是 $n^2F''$，故 $\tilde S'(n)=-nF''(n)$。这是熵和容量分别探测一阶与二阶 replica 数据的原因。$c_{LR}$ 则来自跨界面的 stress-tensor correlator，透明界面时三者都等于同一个 $c$，并不构成一般界面的恒等式。

欧氏作用量取 $I=-(16\pi G)^{-1}\int\sqrt g\,[R-(\partial\phi)^2-V(\phi)]+I_{\rm bdy}$，AdS 半径 1。背景

$$
 ds^2=d\mu^2+f(\mu)(dv^2+\cosh^2v\,d\tau^2),\quad f=e^{2A},\quad c=3/(2G),\quad \Phi=(\phi'_0)^2=1/f-A''.
$$

$\tau$ 是边界对数尺度坐标；$\mu\to\pm\infty$ 到左右半平面，$|v|\to\infty$ 到界面。用 $R_{\mu\mu}=-2(A''+A'^2)$ 与 $R_{vv}/g_{vv}=-f^{-1}-A''-2A'^2$ 相减得 $\Phi$，后者本身等于 $V$。$f$ 偶、$\phi_0$ 奇且严格单调，$\Phi>0$，$f(0)$ 全局最小。设 $s_*=\sqrt{f(0)}$；RT geodesic 是 $\mu=v=0$，所以 $c_{\rm eff}=cs_*$。两端 $A'(\pm\infty)=\pm1$，把背景式从 0 积到 $\infty$ 得 $B\equiv \int_0^\infty f^{-1}d\mu=1+\int_0^\infty\Phi d\mu$。原文调用光滑 wall 的传输公式 $c_{LR}=c/B$；不能用薄界面、任意边界态的传输定义替代这个输入。

replica quotient 上 cosmic brane tension 为 $(1-1/n)/(4G)$。若每单位 $\tau$ 的 brane 长度为 $N_*(n)$，Dong 公式给 $\tilde S=(c/6)\ell N_*(n)$，故 $c_{\rm cap}=-cN_*'(1)$。在 $g_{\tau\tau}=f\cosh^2v[1+2(n-1)h_\tau+\cdots]$ 下，$N_*'(1)=s_*h_\tau(0,0)$。这里固定的是 quotient cylinder 的**物理**度规与 scalar sources，不是 uniform-scalar 坐标中的任意同名 cutoff。假设 replica 与反射对称的 saddle 存在、占优并在 $n=1$ 可微；只讨论 classical leading order。

## 从 Einstein 约束到标量 Green 算符（S2–S3；PDF pp. 7–12）

用单调标量作 gauge，$\delta\phi=0$，$g_{\mu\mu}=1+2(n-1)\eta$，$g_{vv}=f[1+2(n-1)h_v]$。定义 $\Delta_2=\partial_v^2+\tanh v\,\partial_v$、$q=f'/f$，并令 $h_v=\psi+\partial_v^2 E,\ h_\tau=\psi+\tanh v\,\partial_v E$。$E_{\mu v}=0$ 给 $\partial_v(\psi'+E'-q\eta/2)=0$；两个切向 Einstein 分量作差后给 $(\partial_v^2-\tanh v\,\partial_v)(E''+qE'+\eta/f)=0$。取文中的 angular representative（保留 endpoint 对物理 lapse 的条件，不硬设辅助场有界），这些式子及剩余约束为

$$
 (fE')'=-\eta,\quad \psi'=q\eta/2-E',\quad (\Delta_2-2)\Psi=-2f\Phi\eta,\qquad \Psi=2\psi+f'E'.
$$

利用 $f''-f'^2/f-2=-2f\Phi$ 得 $\Psi'=-2f\Phi E'$，于是 $(\Psi'/\Phi)'=2\eta=-(\Delta_2-2)\Psi/(f\Phi)$。对该式施加 $\Delta_2-2$，以 $\zeta=f\Phi\eta$ 作未知量，即得 homogeneous master equation。tip 附近真实 quotient 的二维锥因子为 $|\tilde w|^{2(1/n-1)}$，$\tilde w\propto\mu+i s_*v$，所以 $\eta\sim-\tfrac12\log(\mu^2+s_*^2v^2)$；由二维 Green 对数与 $\delta(s_*v)=\delta(v)/s_*$ 得归一化：

$$
 \left[-\partial_\mu\Phi^{-1}\partial_\mu+\frac{2-\Delta_2}{f\Phi}\right]\zeta=2\pi s_*\delta(\mu)\delta(v).
$$

这一步把 $V$ 的导数吸收到背景几何与 $\Phi$；不是把 scalar fluctuation 丢掉。若 $\phi_0'\sim e^{-\Delta\mu}$，正常支 $\zeta=O(e^{-2\Delta\mu}),\eta=O(e^{-2\mu})$。另一支 $\zeta\to Z_s(v)$ 导致 $\eta\sim Z_s e^{2(\Delta-1)\mu}$，将 $d\mu_{\rm FG}\simeq(1+(n-1)\eta)d\mu$ 代回 $\phi_0$ 便改变 independent scalar source；$\Delta=1$ 时变成 $\mu_{\rm FG} e^{-\mu_{\rm FG}}$ 的 BF 对数项。故只用标准量子化 $\Delta>1$ 或 BF 点无对数源。S3 在恢复边界度规时的径向位移 $\delta\mu_{\rm FG}=\xi_\infty(v)-\int_\mu^\infty\eta(\mu',v)d\mu'$ 有限；角 endpoint 的物理 arc 条件还约束 homogeneous mode。不能在展开前简单令所有 gauge 分量在端点为零。

轴上 $(f h_\tau')'=\tfrac12(f'\eta)'+\eta$，积分从 tip 到外部得

$$
 h_{\tau,\infty}-h_\tau(0,0)=\int_0^\infty\big[A'(\mu)+\int_\mu^\infty f^{-1}d\mu'\big]\eta(\mu,0)d\mu.
$$

括号的导数为 $-\Phi$，极限为 1，故是 $1+\Xi(\mu)$，$\Xi=\int_\mu^\infty\Phi$。径向积分的 master equation 中，tip 贡献 $\pi s_*\delta(v)$，尚有边界 flux $j(v)$；用 $(2-\Delta_2)w=\pi\delta(v)$ 后，$\int_0^\infty\eta(\mu,0)d\mu=s_* -\pi^{-1}\int \cosh v\,w j\,dv$。边界 Einstein equation 恰给 $h_{\tau,\infty}(0)=\pi^{-1}\int\cosh v\,w(\zeta_\infty-j)dv$，所以 $j$ 在**相加之后**消去，固定源使 $\zeta_\infty=0$。这就得到 $c_{\rm cap}/c_{\rm eff}=s_*+\int\Xi\eta$（S41）。S3 另从 fixed arc 的变化得到同一 transport term；不是要求 $j$ 本身消失。

## 精确分解与比较试函数（S3E、S4–S5；PDF pp. 11–15）

用 $Y_p(0)=1$ 的偶 angular partial waves，$-\Delta_2Y_p=(p^2+1/4)Y_p$，$\delta(v)=\int_0^\infty\rho(p)Y_p(v)dp$，$\rho(p)=p\sinh(\pi p)|\Gamma(1/4+ip/2)|^4/(4\pi^3)$。设 $k_p^2=p^2+9/4$、$L_p=-\partial_\mu\Phi^{-1}\partial_\mu+k_p^2/(f\Phi)$，$G_p=L_p^{-1}$ 取固定源支。因 $\Phi^{-1}\partial_\mu\Xi(|\mu|)=-\operatorname{sgn}(\mu)$，

$$
 L_p\Xi(|\mu|)=2\delta(\mu)+k_p^2\Xi/(f\Phi),\qquad
 \int_{\mathbb R}G_p(0,\mu)\frac{\Xi}{f\Phi}d\mu=\frac{\Xi(0)-2G_p(0,0)}{k_p^2}.
$$

后式用固定源支去掉 Green 边界项。$\int\rho/k_p^2=1/\pi$（在 $v=0$ 取 $w(0)=1$）。将 $\zeta_p=2\pi s_*G_p(\mu,0)$ 代回半线积分，利用偶对称和 $B=1+\Xi(0)$：

$$
 \frac{c_{\rm cap}}c=s_*^2(B-\mathcal J),\qquad \mathcal J=2\pi\int_0^\infty\frac{\rho(p)}{k_p^2}G_p(0,0)dp\ge0.
$$

$L_p$ 的二次型是 $\int \Phi^{-1}[(g')^2+k_p^2g^2/f]$，因此对角 Green 正；上界随即成立。下界需要 $\mathcal J\le B-1/s_*$。定义 $\mathcal C=A'^2+1/f$、$T=A'/\sqrt{\mathcal C}$，则 $(\sqrt{\mathcal C})'=-T\Phi$；从 $1/s_*$ 积到 1 给 $B-1/s_*=\int \Phi(1-T)$。这提供几何侧的可比较权重，不假设 $A$ 全局单调。

令 $g_p=G_p(\mu,0)$，$-2g'_p(0^+)/\Phi(0)=1$，$\int_0^\infty[(g_p')^2+k_p^2g_p^2/f]/\Phi=g_p(0)/2$。对 $\alpha_p(0)=1$ 且 $\alpha_pg_p(\infty)=0$，$g_p(0)=-\int_0^\infty(\alpha_pg_p'+\alpha_p' g_p)d\mu$。用加权 Cauchy–Schwarz 除以 $g_p(0)>0$，得

$$
 G_p(0,0)\le\tfrac12\int_0^\infty \Phi(\alpha_p^2+f\alpha_p'^2/k_p^2)d\mu.
$$

极小 trial 是 $-2g_p'/\Phi$。真正的比较使用同一组 pure-AdS angular trials：$y=\sinh v$，$z=\tanh m=\sin x$，$w_z(y)=\int_z^1 u^2/(y^2+u^2)du$。算符 $2-\Delta_2=2-\partial_y(1+y^2)\partial_y$ 把 integrand 变为 $-\partial_u[2u^3(1-u^2)/(y^2+u^2)^2]$，故 $(2-\Delta_2)w_z=2z^3(1-z^2)/(y^2+z^2)^2\to\pi\delta(y)$，$\partial_xw_z=-z^2\sqrt{1-z^2}/(y^2+z^2)$。取 $\hat\alpha_p=k_p^2(w_z)_p/\pi$；Parseval 把谱加权范数和导数能量换成 $(1/\pi)\int w_z(2-\Delta_2)w_zdy=Z$ 和 $(1/\pi)\int (\partial_xw_z)^2dy=H$。直接积分给 $Z=1-3z/2+z^3/2$、$H=z(1-z^2)/2$，相加为 $1-z$。$z=0$ 的 trace 以 $L^2(\pi\rho dp/k_p^2)$ 收敛，$z=1$ 时 trial 消失；不需实现文中不可积的 formal comparison wall。

推广到 wall 时令 $\tilde\mu=\operatorname{artanh}T$，$m(\mu)=\max_{0\le t\le\mu}\tilde\mu(t)$，$U=\tanh m$。在 running maximum 上升的区间，$f=\cosh^2m/\mathcal C$ 且 $m'/\sqrt{\mathcal C}=1-\Phi/\mathcal C\equiv\upsilon\in[0,1]$；在平台导数为 0，取 $\upsilon=0$（不把上一条 $f$ 等式延拓到平台）。因此同一 trial 在实际 wall 的谱加权能量是 $Z(U)+\upsilon^2H(U)$，逐点比 $1-T$ 小 $(U-T)+(1-\upsilon^2)H(U)\ge0$。乘 $\Phi$ 积分即得所需下界。在非平凡 wall 上可严格分离；S71 还把差值写成这个几何缺口加上 trial 偏离极小函数的正二次型。反射对称用于半线的 $1/2$ 系数，不能靠同一证法直接涵盖两个异质半线。

## 两个极限与独立 CFT 判据（S6–S9；PDF pp. 15–24）

- **Janus：** $V=-2$, $f=(1+\kappa\cosh2\mu)/2$, $\kappa=\sqrt{1-2\gamma^2}$, $\Phi=\gamma^2/f^2$。弱 jump 时 $s_*=1-\gamma^2/4+\cdots$，$B=\operatorname{artanh}(\sqrt2\gamma)/(\sqrt2\gamma)=1+2\gamma^2/3+\cdots$。文中的 response 给 $c_{\rm cap}/c=1-\gamma^2/6+0.08025\gamma^4+\cdots$；quartic 是谱法和极坐标数值两路交叉。强 jump 时长喉 $f\to1/2$、$\Phi\to2$，$L_p\to-\partial_\mu^2/2+k_p^2$，因此 $G_p(0,0)\to1/(\sqrt2 k_p)$。减项保持有限，增长来自 $B\sim\Delta\phi/\sqrt2$。作者得到 $c_{\rm cap}/c=\Delta\phi/(2\sqrt2)-0.287536\ldots+o(1)$，$c_{\rm eff}/c\to1/\sqrt2$。先在固定参数对 $n$ 求导，然后才去长喉极限。
- **Cosine potential：** $f=b^2\cosh^2\mu$，$\phi_0=\alpha_b\arctan(\sinh\mu)$，$\alpha_b=\sqrt{1-b^2}/b$，$V=-2-\alpha_b^2\cos^2(\phi/\alpha_b)$。属于无 log source 的 BF 分支。$c_{\rm eff}=bc$、$c_{LR}=b^2c$。把 $G_p$ 除以 $\phi'_0$ 后得到 $-\partial_\mu^2+1+(k_p^2/b^2)\operatorname{sech}^2\mu$，用衰减 Legendre 解与 $\mu=0$ 跳跃取得对角值。用 $\hat R=1+(k_p/b-1)\operatorname{sech}^2\mu$ 配方给 $1-4b(1-b^2)/9<c_{\rm cap}/c<1$。$b\to0$ 时容量趋于 1，而熵、透射都消失；这个极限在改变 bulk potential，且中心曲率变大，不能在固定有限 $c$ 下当成平滑界面。
- **CFT 对照：** 在恒等界面附近沿 exactly marginal **bulk jump** 的 centered analytic branch，S8 的二阶积分续接可写 $\mathcal J_{\rm CFT}(n)=n[\Sigma(n)-\Sigma(1)]$，$\Sigma(n)=\int_0^\infty dt\,[\tfrac12\coth(t/2)-1/t]/[2\sinh(nt/2)]$。一、二阶导数分别 $-\pi^2/16,\pi^2/24$；若 $\mathcal R=1-c_{LR}/c$，则 $c_{\rm eff}/c=1-3\mathcal R/8+O(\mathcal R^2)$，$c_{\rm cap}/c=1-\mathcal R/4+O(\mathcal R^2)$。这与弱 Janus 的 $\mathcal R=2\gamma^2/3+\cdots$ 一致。localized marginal line perturbation 的容量斜率反而是 $+1/2$；S114 给差值 $c_{\rm cap}-c_{\rm eff}^2/c_{LR}=2\pi^2Y-\pi^2X/2+O(q^3)$，$X,Y$ 分别是 bulk jump 与 line coupling 的二点范数。纯 line tangent（$X=0$）弱耦合即违反上界。S120 则证明 free Majorana／Dirac 的 $c_{\rm cap}c_{LR}>c_{\rm eff}^2$ 对每个 $0<s<1$ 都成立，$s$ 为透射振幅，$c_{LR}/c=s^2$；同归一化的自由紧致玻色子遵守严格反向不等式。这些对照排除了把上界当作一般 QFT 约束。这里使用物理 regulator 固定、并假设 analytic continuation 落在指定 holomorphic/growth class，不把整数 replica 数据本身当作唯一的续接处方。

## 可带回 sewing 的检验

给定同样的 $S=-F'(1)$，用相同的 UV/IR 割法单独算 $F''(1)$，再用 stress correlator 或能量通道测 $c_{LR}$。三个数能区分只调整熵的 sewing prescription 与真正改变 modular spectrum 的 prescription；弱界面的容量斜率还能区分 bulk jump 与纯 line coupling。在临界 Ising／格点模型不要把这个 holographic 上界当约束。对 vault 中的 Einstein–scalar 工作，可借用的是固定物理 Dirichlet 数据下先消去约束、再定义 source-preserving Green 函数的次序；此欧式静态逆算符不是 Lorentzian Peierls 或 retarded propagator，也未构造区间 Hilbert-space 因子化。

复算：在 xAct 的 Wolfram 内核由分量 Ricci 重得两条背景方程；Mathematica 验证 angular 恒等式和 $Z,H$ 的积分、弱 Janus 的 $s_*,B$、CFT 续接核的两阶导数（高精度数值）。截到 $p=320$ 得 $\pi\int^{320}\rho/k_p^3=0.4066325361$；剩余尾部为 $O(320^{-2})$，与文中 $0.4066374189$ 一致，但未独立确认其末位。未另求一般 wall 的全套 replica tensor 边值问题、quartic 数值谱或 saddle dominance；正文的界在给定假设与边界支内成立。
