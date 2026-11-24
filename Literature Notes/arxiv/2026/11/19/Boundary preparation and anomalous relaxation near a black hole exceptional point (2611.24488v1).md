---
paper id: 2611.24488v1
title: Boundary preparation and anomalous relaxation near a black hole exceptional point
authors:
  - Yu Shi
  - Sheng Long
publication date: 2026-11-18T14:21:08Z
abstract: |-
  Near a stable exceptional point of a Robin scalar on planar Schwarzschild–AdS, two source moments control the Jordan contribution to relaxation. With matched preparation a larger release energy can cross a common threshold sooner, without a faster exponential rate at the exceptional point. Gravitational heating limits the window in which the double-pole law describes the response.
comments: "14 pages, 3 figures, 2 tables"
url: https://arxiv.org/abs/2611.24488v1
summary: "A calculable AdS example linking a Robin variational boundary term, horizon flux, and preparation-dependent residues of a non-self-adjoint mode pencil."
tags: []
---

# Robin 能量是怎样读出 Jordan 尾部的？

同一个稳定 AdS 背景、同一 leading decay exponent，初始剩余能量较大的态仍可先达到共同的小阈值。控制的是 retarded transfer function 的**被激发极点阶数**，不是系统极点本身。对当前 AdS scalar 工作，这是一个能检验 bulk energy、Robin boundary term、吸收边界和谱分解是否匹配的例子；它也清楚标明何时不能把 QNM 当成封闭相空间中的正频正交基。下文定位均为 [v1 PDF](https://arxiv.org/pdf/2611.24488v1)，PDF 页与印刷页一致。

## 边界源不能从裸 EF 展开读出（§II，pp. 2–3）

四维 planar Schwarzschild–AdS，$F=1-(z/z_h)^3$，$ds^2=L^2z^{-2}[-Fdt_{\rm Sch}^2+dz^2/F+d\vec x_2^2]$，$T=3/(4\pi z_h)$。实、横向均匀的标量满足 $\mu^2L^2=-2$；$\Phi=z\alpha+z^2\beta+\cdots$ 在 Schwarzschild 坐标定义物理 $J=\beta-\kappa_{\rm phys}\alpha$。固定 $\kappa_{\rm phys}<0$（$q=|\kappa_{\rm phys}|$），Robin 项为 $-\mathcal N\int(\kappa_{\rm phys}\alpha^2/2+J\alpha)$，源共轭为 $-\mathcal N\alpha$。令 $x=\int_0^z d\zeta/F(\zeta)$、$t=t_{\rm Sch}-x$；在固定 $t_{\rm Sch}$ 展开 EF 的 $z a(t)+z^2 b(t)$，得 $\alpha=a,\beta=b-\dot a$。令 $f=\Phi/z$，$V=Fz/z_h^3$，于是

$$ f_{xx}-2f_{tx}-V f=0,\qquad f_x(t,0)-f_t(t,0)-\kappa_{\rm phys}f(t,0)=J(t). $$

在 horizon 只保留 EF 正则支；特征初值为零，$J$ 是支撑于 $[-\tau_p,0]$、端点消失的实源，释放后满足齐次 Robin。$2E=\int_0^\infty (f_x^2+Vf^2)dx+\kappa_{\rm phys}\alpha^2$。设正静态解 $u_c''=Vu_c$，归一化 $u_c(\infty)=1$、$u_c'(0)=\kappa_c u_c(0)$，$\kappa_c z_h=-3\Gamma(2/3)^3/\Gamma(1/3)^3$。代入 $f=u_c g$，交叉项与 $u_c'^2+Vu_c^2$ 合为 $\partial_x(u_c u_c'g^2)$，只剩 $-\kappa_c\alpha^2$，故 $2E=\int u_c^2g_x^2 dx+(\kappa_{\rm phys}-\kappa_c)\alpha^2$。这是稳定侧 $\kappa_{\rm phys}>\kappa_c$ 的正二次型，不能省略 Robin 项。

用 $f_t$ 乘方程积分，$f_{xx}$ 给 $[f_x f_t]-\partial_t\int f_x^2/2$，混合项给 $-[f_t^2]$，势项给 $-\partial_t\int Vf^2/2$。代入 driven 方程与 horizon 正则性：$\dot E=-J\dot\alpha-|\dot f_H|^2$。于是 $\mathcal W=\int\dot J\alpha=-\int J\dot\alpha=E(0)+\int_{-\tau_p}^0|\dot f_H|^2$；释放后若完全衰减，$E(t)=\int_t^\infty |\dot f_H|^2$。将 $Q[J]=\Delta^{-1}\int_0^\Delta\alpha_J(t)dt=A_0$（这里 $Q$ 是任务，不是电荷），$\mathcal B[J]=\int(J^2+\ell_b^2\dot J^2)dt$，以及 $\mathcal W$ 同时匹配。任务保证某一时刻 $|\alpha|\ge |A_0|$；单调性给 $E(0)\ge E_u=(\kappa_{\rm phys}-\kappa_c)A_0^2/2$。共同的无量纲振幅是 $D_J=\sqrt{E/E_u}$；两源即使同功，准备期间吸收不同仍可有不同 $E(0)$。

## 稳定的双极点，及它为何领先（§III A，App. A1，pp. 3, 10–11）

取 Laplace 模 $e^{pt}$（衰减 $\operatorname{Re}p<0$），horizon-regular $G_p''-2pG_p'-VG_p=0$, $G_p(\infty)=1$。响应

$$H_\kappa=G_p'(0)-(p+\kappa_{\rm phys})G_p(0),\quad m(p)=p-G_p'(0)/G_p(0),\quad \alpha/J=-1/(m+\kappa_{\rm phys}).$$

尾势 $V\sim e^{-\nu x}$，$\nu=3/z_h$；在 $\operatorname{Re}p>-\nu/2$ 用 Volterra 核 $K_p(s)=\int_0^s e^{-2pu}du$：$G_p(x)=1+\int_x^\infty K_p(y-x)V(y)G_p(y)dy$。对 $p=-a$，正核迭代给 $G>1$、$\partial_aG>0$。将 $p$ 微分的径向方程与原方程组成 Wronskian，$[e^{-2px}(G\partial_pG'-G'\partial_pG)]'=2e^{-2px}GG'$；右侧用 $G^2-1$ 分部积分，horizon 项消失。得 $m'(-a)=[1-2aS(a)]/G_{-a}(0)^2$，$S=\int_0^\infty e^{2ax}(G_{-a}^2-1)dx$。$S>0$、$S'>0$ 且在 $a\uparrow\nu/2$ 因非零势尾而发散，故恰有一个 $\gamma_*>0$ 令 $2\gamma_*S(\gamma_*)=1$，此处 $m''=2(S+\gamma_* S')/G^2>0$。令 $\kappa_*=-m(-\gamma_*)$。在 $z_h=1$ 的单位中，原文以首轮迭代和 $x(z)\ge -\log(1-z)/3+4z/9$ 得 $S(1/2)>1$；积分等式 $m(-a)G(0)=(\int VG+\int e^{2ax}VG)/2-a$ 随后给 $m(-\gamma_*)>0$。由 $m'>0$ 于 $(-\gamma_*,0]$ 知 $\kappa_c<\kappa_*<0$。

同一条径向积分方程令 $|G_{-a+i\omega}|<G_{-a}$（$\omega\ne0$）。论文用复 Wronskian 得任何非实衰减极点都必须满足 $2a\int e^{2ax}(|G|^2-1)=1$，故 $2aS(a)>1$：不可能比双极点慢。增长模被正能量排除，非零虚轴极点由 horizon Wronskian 排除。App. A1 再用大频率的 $G_p(0)=1+O(|p|^{-1})$、$H=-p+O(1)$ 及 $|G_p'|\le C e^{-\nu x}$，在谱缝中的 $\operatorname{Re}p=-a_r$ 上估计 $\|G_p/H\|_E\le C/(1+|\operatorname{Im}p|)$。因此有限脉冲的加权 Fourier 变换可用 Plancherel/Cauchy–Schwarz 控制；取双极点留数后，径向余项的能量范数 $O(e^{-a_rt}\|J\|_2)$，其中 $\gamma_*<a_r<\nu/2$。控制的是整个径向能量，不只是边界读数。

## 两个源矩、同一衰减指数、不同恢复时间（§III B–IV，pp. 4–7）

若 $-1/(m+\kappa_*)=b_*/(p+\gamma_*)^2+a_*/(p+\gamma_*)+\cdots$，$b_*=-2/m''$。有限脉冲的 $M_j=\int_{-\tau_p}^0 s^j e^{\gamma_*s}J(s)ds$ 给 $\widehat J(-\gamma_*)=M_0$ 和 $\widehat J'(-\gamma_*)=-M_1$，所以边界领先项为 $e^{-\gamma_*t}[(a_*M_0-b_*M_1)+b_*M_0t]$。$M_0=0, M_1\ne0$ 只取消响应的一阶时间多项式；系统分母仍是双零点。对 horizon 写 $y=(A_H+B_Ht)e^{-\gamma t}$、$\gamma=\gamma_*$，径向场是 $e^{-\gamma t}[(A_H+B_Ht)G_*+B_H\partial_p G_*]$；因为对 $e^{pt}H_\kappa(p)$ 微分时 $H=H'=0$，它也满足齐次边界条件。边界系数 $B=gB_H$、$C=gA_H+hB_H$，$g=G_*(0), h=\partial_p G_*(0)$。余项更快，使其在能量内积中的交叉项也次领先。

$y''+2\gamma y'+\gamma^2y=0$，故 $\partial_t[(\dot y^2+\gamma^2y^2)/(4\gamma)]=-\dot y^2$；积分到未来，$E_{\rm cl}$ 正是这个二次型。对滤波源 $S$（$B_{H,S}=0$）和参考 $R$（$B_{H,R}\ne0$），在 $s=\gamma t$ 有 $D_S\sim a_S e^{-s}$、$D_R\sim a_R s e^{-s}$，$a_S=\sqrt{\gamma/(2E_u)}|A_{H,S}|$、$a_R=|B_{H,R}|/\sqrt{2\gamma E_u}$。吸收分率 $-\partial_t\log E$ 对 $S$ 为 $2\gamma$，对 $R$ 为 $2\gamma-2/t+O(t^{-2})$。这点差异积分后足以反转严格的释放能量排序。例 $y_R=H_0(1+s)e^{-s}$、$y_S=aH_0e^{-s}$，$r=2a^2>1$，则 $E_R/E_S=(1+2s+2s^2)/r$，在 $s=(\sqrt{2r-1}-1)/2$ 交叉。

令 $\Lambda_\theta=\log(1/\theta)$。$S$ 的阈值给 $s_S=\Lambda_\theta+\log a_S+o(1)$；对 $R$ 则 $s_R=\Lambda_\theta+\log a_R+\log s_R+O(s_R^{-1})$，把首轮近似代回对数得到

$$\gamma(\tau_R-\tau_S)=\log\Lambda_\theta+\log\left|\frac{M_0[J_R]}{\gamma M_1[J_S]}\right|+O(\log\Lambda_\theta/\Lambda_\theta).$$

相对节约趋零。有限阈值下，由 $E_{\rm cl}$ 完全平方，$D_R=a_R e^{-s}\sqrt{(s+\zeta_R)^2+1/4}$，$\zeta_R=\gamma A_{H,R}/B_{H,R}-1/2$；用这个根而不是过早套双对数。App. A2 用 $\sin^2(\pi u_p)P_n(2u_p-1)$ 的六项基，$u_p=(t+\tau_p)/\tau_p$，以最小成本构造 $S$ 再匹配 $R$。在 $qz_h=0.2868269680251661$ 和 $\gamma_{\rm ref}/q=1.3567083943014633$，Chebyshev 径向点和准备段 DOP853 给 Table I：同功约 $5.53026$，释放能量 $S:0.222832>R:0.205310$（单位 $\epsilon^2 q^3$）；Fig. 2–3/附录的结论是有限窗口内 $S$ 更早，$\theta=10^{-2}$ 的容许扰动下 $q(\tau_R-\tau_S)>0.25$。作者以补偿矩阵指数扫阈值，分辨率 32/48/64 保留各自的小谱分裂，并用纠正 Robin 行后残量的正能量估计控制连续场；这些完整演化及区间误差界未重跑。

## 温升与熵：同一个 flux，不同的用途（§V–VI，pp. 8–10）

分裂 $p_\pm=-\gamma\pm d$ 后用 $y=e^{-\gamma t}(A_H\cosh(dt)+B_H\sinh(dt)/d)$，而非分别使用有奇异性的极点留数。$E_{\rm cl}=[\dot y^2+(\gamma^2-d^2)y^2]/(4\gamma)$ 对实的稳定双模保持正且导数仍为负通量。设 $\xi=d^2/\gamma_*^2$、$\eta_M=|B_{H,S}|/(\gamma_*|A_{H,S}|)$，深阈值下保留 EP 近似需 $|\xi|\Lambda_\theta^2\ll1$、$\eta_M\Lambda_\theta\ll1$；固定非零残留 $M_0[J_S]$ 即使在精确 EP 也最终令两条曲线都有线性多项式，时间差饱和为两 $|M_0|$ 比的对数除以 $\gamma_*$。

取标量动能归一化 $Z_\Phi$，$\mathcal N=Z_\Phi L^2$。假定均匀等向驱动、无独立引力扰动，终态为无标量毛的 Schwarzschild brane。$s=L^2/(4Gz_h^2)$，积分 $dm=Tds$ 给 $m=8\pi^2L^2T^3/(27G)$，实际单位面积边界功 $w=m(T_f)-m(T_i)$。固定物理 $\kappa$ 时，径向 $m(p,T)=\lambda m(p/\lambda,T_*)$（这里 $m$ 是阻抗而非质量密度，$\lambda=T/T_*$）；极点处 $m=q,m'=0$，故展开 $0=q(\lambda-1)+(m''/2)(p/\lambda+\gamma_*)^2+\cdots$，分裂平方的首项是 $d^2=-2q(\lambda-1)/m''$。于是从 $T_i=T_*$ 开始，$w=\epsilon^2\mathcal N\mathcal W_0+O(\epsilon^4)$ 给 $\Delta T/T_*\simeq w/(c_*T_*)$；受热侧是共轭极点，$|\operatorname{Im}p|=O(|\epsilon|)$，中心率偏移 $O(\epsilon^2)$。固定非零任务又有 $w\gtrsim\mathcal N E_u$，不能无限压低阈值而不看见分裂。预冷可令 $m(T_i)=m(T_*)-w$，但须 $T_i>T_c$ 且要在实际演化中重新匹配 $w$ 与源矩。

在引力首个非零阶，等向令剪切为零，展开平方为更高阶。发生在背景 horizon 的加权标量通量是 $\mathcal N|\dot f_H^{(1)}|^2$（$\Phi_H^{(1)}=z_hf_H^{(1)}$ 抵消面积因子中的 $z_h^{-2}$）；Raychaudhuri 给 $\ddot s_{\rm EH}^{(2)}-\kappa_H\dot s_{\rm EH}^{(2)}=-2\pi\mathcal N|\dot f_H^{(1)}|^2$，$\kappa_H=2\pi T$。故 $s_{\rm dyn}^{(2)}=s_{\rm EH}^{(2)}-\kappa_H^{-1}\dot s_{\rm EH}^{(2)}$ 满足 $T\dot s_{\rm dyn}^{(2)}=\mathcal N|\dot f_H^{(1)}|^2$，释放后的剩余熵差恰对应 $\mathcal N E[f^{(1)}]/T$。这是背景时间归一化下、到 $\epsilon^2$ 的关系，不是有限振幅的局域非线性定理。

## 可复用的谱检查与边界字典

在 $z_h=1$ 以 $y=1-z$ 展开 $G=\sum c_n y^n,c_0=1,c_{-1}=0$。径向方程变成 $F G_{yy}+(F_y+2p)G_y-(1-y)G=0$；故 $(n+1)[3(n+1)+2p]c_{n+1}=[3n(n+1)+1]c_n-n^2 c_{n-1}$。从边界 $y=1$ 读 $g=\sum c_n,m=p+\sum n c_n/g$；在 54 位工作精度，120/220 项给 $qz_h\simeq0.2868269680251661094$、$\gamma_*/q\simeq1.356708394301463196$、$g\simeq1.767376551562427$。独立积分 Table II 的源给 $M_{1,S}/\epsilon=0.2595939362$、$M_{0,R}/(\epsilon q)=-0.08080849961$、$C_{SR}=-1.47209794$、双方成本 $6.944348756$；$M_{0,S}$ 的机器精度积分在零附近告警，只确认在约 $3\times10^{-15}$ 的数值误差量级内消去，不声称以舍入系数实现精确零。组件内核直接从 EF metric 检查 KG 降维；Mathematica 中分裂振子、能量通量、温漂分裂首项与热力学质量均为零残差。全备制备演化、全反作用与稳定性证明并未由此重复。

对本库 $\theta=\int_\Sigma\Theta-\int_{\partial\Sigma}\theta_\partial$ 的习惯，先固定诱导边界数据为物理 $J$、而不是 EF 的 $f_x$；对边界配对用 $\alpha$ 与 $J$，并保留由固定 $\kappa$ 的 Robin variational problem 引入的能量项。这里切片是进向零切片，horizon 通量不消失，外部能量不是一个封闭 CPS 的守恒 Hamiltonian。可把 $G/H$ 的 double-pole Laurent 系数和 $\partial_pG$ 当作检验 retarded boundary-to-bulk Green function 的基准；若要量子化并缝合，需另外指定吸收侧数据或更大的守恒体系，不能直接代入本库正频模式的辛归一化式。
