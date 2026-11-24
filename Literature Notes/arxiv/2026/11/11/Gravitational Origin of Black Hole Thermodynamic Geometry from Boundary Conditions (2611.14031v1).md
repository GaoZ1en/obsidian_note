---
paper id: 2611.14031v1
title: Gravitational Origin of Black Hole Thermodynamic Geometry from Boundary Conditions
authors:
  - Ling-Zheng Xia
  - Lixin Xu
publication date: 2026-11-10T13:00:45
abstract: |-
  In four-dimensional Euclidean Einstein-Maxwell-AdS gravity, radial symplectic flux pairs mass and charge with thermal and electric boundary sources. Horizon regularity selects a Lagrangian equilibrium submanifold, while boundary terms select ensemble polarizations and their Hessian metrics. The paper distinguishes fluctuation spinodals from Legendre response caustics and studies a capacitive mixed electric boundary condition.
comments: "30 pages, 1 figure, 1 table"
url: https://arxiv.org/abs/2611.14031v1
summary: "用可复现的 RN–AdS 计算区分不变的径向辛结构、边界极化、热力学 Hessian 和真正允许涨落的稳定性；Robin 源剪切移动 spinodal，而纯源反项不移动。"
tags: []
---

# 结果：边界项保持辛形式，却可以改变 Hessian 的物理含义

**在固定 $G=1$、固定 AdS 尺度、纯电、静态球对称、非极端 RN–AdS$_4$ 解族中，本文的核心链条成立，而且主要代数与几何公式已复现。** 最有用的结论不是又定义了一种热力学曲率，而是把四件事分开：

1. 外部解族上的径向二形式 $\Omega=\delta M\wedge\delta\beta-\delta Q\wedge\delta\mathcal A$；
2. 光滑 Euclidean filling 选出的 Lagrangian 平衡子流形；
3. 边界系综选出的源／响应极化及 Hessian；
4. 只在真正允许涨落方向上的 Gaussian 稳定性。

正则系综的二维极化 Hessian 可以有一个负方向，同时固定电荷后的允许能量涨落仍然稳定。另一方面，把电势与电通量混合成新源确实能改变物理稳定边界。这是当前 CPS／边界荷工作很具体的比较例。

来源为 [arXiv v1](https://arxiv.org/abs/2611.14031v1)，PDF 共30页；PDF页码与正文页码相同。阅读覆盖 §§II–VI、附录 A、B；实际页面核对了 PDF 7、9、13、17、24–25 的辛势、缺陷恒等式、极化表、Robin 与响应／曲率公式。下面使用论文的 $\delta$ 表示外部解族上的外微分，$d$ 表示拉回平衡子流形后的外微分。

# 1. 为何单有辛形式不能决定热力学度量

§II 取 $2n$ 维空间 $\mathcal V$，坐标为广延量 $X^a$ 和其共轭强度 $\lambda_a$，

$$\Omega=\delta X^a\wedge\delta\lambda_a.$$

熵 $S(X)$ 给出平衡子流形 $\mathcal L$：

$$\lambda_a=\partial_aS,\qquad dS=\lambda_a dX^a,
\qquad j^*\Omega=dX^a\wedge d\lambda_a=0.$$

最后一式来自 Hessian 对称性。它说明 $\mathcal L$ 是 Lagrangian，**没有因此得到一个非退化度量**。

选源与响应后，两个固定源／固定响应切空间给出 $K^2=1$ 的极化，且

$$\Omega(Ku,v)+\Omega(u,Kv)=0,
\quad\eta(u,v)=\Omega(u,Kv),
\quad g=-\tfrac12j^*\eta.$$

论文约定对称乘积 $\alpha\beta=(\alpha\otimes\beta+\beta\otimes\alpha)/2$，因而不会在交叉项漏掉2。巨正则的 Liouville 势为 $\Theta=X^a\delta\lambda_a$，$K$ 在响应方向取 $-1$、源方向取 $+1$，给

$$g_{\rm gc}=-dX^a d\lambda_a=-S_{ab}dX^a dX^b.$$

在 reservoir 固定 $\lambda$ 时，off-shell 函数 $I_*(X;\lambda)=\lambda_aX^a-S(X)$ 的二次项正是 $g_{\rm gc}/2$，所以局域 Gaussian 正定要求 $-S_{ab}>0$。若 $D=\partial X/\partial\lambda$，则 $D=(S'')^{-1}$，在源坐标中 $g=-D_{ab}d\lambda_a d\lambda_b=-\operatorname{Hess}_{\lambda}I$，而在荷坐标中 covariance 是 $(-S'')^{-1}=-D$。这两种坐标中的矩阵不能不经 Jacobian 就互换。

若把一部分 $\lambda_k$ 换成固定 $X^k$，加入 $-\delta(\lambda_kX^k)$ 后

$$\Theta=X^i\delta\lambda_i-\lambda_k\delta X^k,
\qquad g=-dX^i d\lambda_i+dX^k d\lambda_k.$$

在 $X$ 坐标中代入 $d\lambda_a=S_{ab}dX^b$，mixed 项 $-S_{ik}+S_{ki}$ 抵消，得到

$$g=-S_{ij}dX^i dX^j+S_{kl}dX^k dX^l.$$

被固定荷的负块是 Legendre 极化效应。真正的涨落度量要再限制到 $dX^k=0$，不能对扩展后的全部 $g$ 机械要求正定。

# 2. Euclidean 电场轮廓与四参数外部解族

§III 与附录 A 使用 Lorentzian 作用量

$$S_L=\frac1{16\pi}\int\sqrt{-g}\,(R-2\Lambda-F_L^2),
\qquad\Lambda=-3/\ell^2.$$

Lorentzian 势记为 $A_L=-a(r)dt$。取 $t=-i\tau$ 后真实 Euclidean saddle 的电势是虚的；作者把它改写成实变量 $A=a(r)d\tau$，故计算用的作用量是

$$I_{\rm bulk}=-\frac1{16\pi}\int\sqrt g\,(R-2\Lambda+F^2).$$

这里的 $+F^2$ 是 electric contour 的记账，不是宣称任意实 Euclidean Maxwell 场的通常正定作用量也如此。场方程为

$$\nabla_\mu F^{\mu\nu}=0,
\qquad G_{\mu\nu}+\Lambda g_{\mu\nu}
=-2F_{\mu\rho}F_\nu{}^\rho+\tfrac12g_{\mu\nu}F^2.$$

以周期为1的 $\tau$ 写

$$ds^2=e^{2\psi(r)}f(r)d\tau^2+f(r)^{-1}dr^2+r^2d\Omega_2^2.$$

Maxwell 方程给 $(r^2e^{-\psi}a')'=0$。电应力满足 $T^\tau{}_\tau=T^r{}_r$，Einstein 方程差给 $2f\psi'/r=0$；在外部 $f>0$ 上得到 $e^\psi=N>0$。随后

$$(rf)'-1-3r^2/\ell^2=-Q^2/r^2$$

积分出

$$f=1-\frac{2M}r+\frac{Q^2}{r^2}+\frac{r^2}{\ell^2},
\qquad a=a_0-\frac{NQ}r.$$

在尚不要求 bolt 光滑的外部解空间 $\mathcal V$ 上，$(M,Q,N,a_0)$ 独立。选边界球半径为 $\ell$ 的 conformal representative，

$$\gamma^{(0)}=N^2d\tau^2+\ell^2d\Omega_2^2,
\qquad\beta=N,\qquad\mathcal A=\oint A^{(0)}=a_0.$$

必须把 $\mathcal A$（holonomy）与 $\Phi=Q/r_+$（电势）分开，只有平衡时 $\mathcal A=\beta\Phi$。$\lambda=(\beta,-\mathcal A)$ 才是 Boltzmann 权重 $e^{-\beta M+\mathcal A Q}$ 的自然线性源。

xAct/xCoba 直接计算这一四维度规的曲率，得到

$$R=-\frac{-2+2f+4rf'+r^2f''}{r^2},
\qquad G^r{}_r=\frac{-1+f+rf'}{r^2}.$$

代入 RN–AdS 后，$R+12/\ell^2$ 与 $G^r{}_r-3/\ell^2+Q^2/r^4$ 的残差均为零。

# 3. 由 Lee–Wald 势得到径向 Darboux 对

论文的密度化 Euclidean 势为（18）

$$\theta_g^\mu=-\frac{\sqrt g}{16\pi}(\nabla_\nu h^{\mu\nu}-\nabla^\mu h),
\quad \theta_A^\mu=-\frac{\sqrt g}{4\pi}F^{\mu\nu}\delta A_\nu,
\quad h_{\mu\nu}=\delta g_{\mu\nu}.$$

在固定半径 $r$、沿参数变化时，

$$\delta f=-2\delta M/r+2Q\delta Q/r^2,
\quad h=2\delta N/N,
\quad\nabla_\nu h^{r\nu}=2\delta M/r^2-f'\delta N/N,
\quad\nabla^rh=0.$$

xCoba 以实际 connection 升指标并计算散度，复现最后两条。再用 $F^{r\tau}=Q/(Nr^2)$ 和 $\delta A_\tau=\delta a_0-Q\delta N/r-N\delta Q/r$，沿 $S^1_\tau\times S^2$ 积分得

$$\Theta_g=-\tfrac12N\delta M+\tfrac14r^2f'\delta N,
\qquad
\Theta_A=-Q\delta a_0+\frac{Q^2}r\delta N+\frac{NQ}r\delta Q.$$

因此

$$\Theta_{\Sigma_r}=-\tfrac12\beta\delta M
+\tfrac12\left(M+\frac{Q^2}r+\frac{r^3}{\ell^2}\right)\delta\beta
-Q\delta\mathcal A+\frac{\beta Q}r\delta Q.$$

最值得留意的消项是

$$\delta\left[\frac{Q^2}{2r}\delta\beta+\frac{\beta Q}r\delta Q\right]=0.$$

它本来就是 $\delta(\beta Q^2/2r)$；$r^3\delta\beta/(2\ell^2)$ 在固定 $r$ 也 exact。剩下

$$\boxed{\Omega=\delta\Theta_{\Sigma_r}=\delta M\wedge\delta\beta-\delta Q\wedge\delta\mathcal A.}$$

Mathematica 直接对四分量势外微分，得到 $(M,Q,\beta,\mathcal A)$ 顺序下矩阵

$$\Omega_{AB}=\begin{pmatrix}0&0&1&0\\0&0&0&-1\\-1&0&0&0\\0&1&0&0\end{pmatrix}.$$

径向独立和 $\Theta\to\Theta+\delta I_{\rm bdy}$ 的不变性在此闭 cylinder 上都明确成立。这里没有空间边界的边界，不能据此推广成有限区域中 $dY$ 改善永远不产生 corner 数据。

## 荷的归一化为何要固定源

附录 A.3 继续到 Lorentzian $\epsilon_{tr\theta\phi}=Nr^2\sin\theta$，给固定 $(\partial_t,\chi)$ 的表面变分

$$\delta H_{\partial_t,\chi}=N\delta M+(\chi-a_0)\delta Q.$$

在固定 $(N,a_0)$ 的叶上，单位 proper-time 生成元为

$$(\xi_\beta,\chi_\beta)=(N^{-1}\partial_t,a_0/N),$$

于是 $\delta H_{\xi_\beta,\chi_\beta}=\delta M$，单位 gauge shift 给 $\delta H_{0,1}=\delta Q$，真空参考选 $H=M,Q$。如果改成让源也变化，就要跟踪生成元场依赖及 $Q_{\delta\epsilon}$ 类型的修正；不能把固定生成元表面公式直接当作整个四维空间上无需修正的 Hamiltonian 定理。

# 4. bolt 正则性：为何平衡子流形是 Lagrangian

取最大根 $r=r_+$，且 $T>0$，

$$M=\frac{r_+}2\left(1+\frac{Q^2}{r_+^2}+\frac{r_+^2}{\ell^2}\right),
\quad T=\frac{1-Q^2/r_+^2+3r_+^2/\ell^2}{4\pi r_+},
\quad\Phi=Q/r_+,
\quad\mathscr A_+=4\pi r_+^2.$$

一般外部解在 cap 上有两个缺陷：

$$c=1-\beta T,\qquad a_+=\mathcal A-\beta\Phi.$$

$c$ 的锥缺角是 $2\pi c$；$a_+$ 是可收缩热圆上的残余 holonomy。质量微分满足

$$\delta M=\frac T4\delta\mathscr A_++\Phi\delta Q.$$

将它代入 $\Omega$，并对 $c,a_+$ 外微分，整理得（25）

$$\Omega=\frac14\delta c\wedge\delta\mathscr A_+-\delta Q\wedge\delta a_+.$$

Mathematica 在 $(r_+,Q,\beta,\mathcal A)$ 坐标直接验证两侧矩阵差为零。这里非缺陷项的抵消利用了上述几何第一定律，不是只靠一句 Stokes。

令 $r-r_+=f'_+\rho^2/4$，角度为 $2\pi\tau$；$c=a_+=0$ 时

$$\beta=1/T,\qquad\mathcal A=\beta\Phi,$$

$$ds^2=d\rho^2+4\pi^2\rho^2d\tau^2+r_+^2d\Omega_2^2+O(\rho^2),
\qquad A=\frac{\pi Q}{r_+^2}\rho^2d\tau+O(\rho^4)d\tau.$$

在 $(x,y)=(\rho\cos2\pi\tau,\rho\sin2\pi\tau)$ 中 $\rho^2d\tau=(xdy-ydx)/(2\pi)$，场与随动切向变分都光滑。光滑 filling 的拓扑 $D^2\times S^2$ 无内边界，故 $\int_{\Sigma_r}\omega=\int_{M_r}d\omega=0$；也可直接从缺陷式看出 $j^*\Omega=0$。

由几何质量式积分得

$$dS=\beta dM-\mathcal A dQ,\qquad S=\pi r_+^2=\mathscr A_+/4$$

（加性常数由指定作用量／参考固定）。**$j^*\Omega=0$ 自身只给闭合性，并不单独固定面积系数或熵常数。** 极端 $T=0$ 的 Euclidean topology 与盘坐标另论，不在此推导域内。

# 5. 三种边界极化与可复现的重整化

## Dirichlet：固定热周期和 holonomy

加入 GHY 与 AdS$_4$ 的标准反项

$$I_{\rm GHY}=-\frac1{8\pi}\int\sqrt hK,
\qquad I_{\rm ct}=\frac1{8\pi\ell}\int\sqrt h\left(2+\frac{\ell^2}2R[h]\right).$$

在半径 $R$ 处，它们化为

$$I_{\rm GHY}=-\frac\beta2\left(\frac{R^2f'}2+2Rf\right),
\qquad I_{\rm ct}=\frac\beta2\sqrt f\left(\frac{2R^2}\ell+\ell\right).$$

把其参数变分加到上一节 $\Theta_{\Sigma_R}$，再取 $R\to\infty$，得到

$$\Theta_{\rm gc}=M\delta\beta-Q\delta\mathcal A.$$

这一步的四个系数由 Mathematica 独立取极限为 $(0,0,M,-Q)$。直接积分 bulk 的径向部分并加 GHY／ct，亦复现

$$I_{\rm gc}=\frac\beta2\left(M-\frac{r_+^3}{\ell^2}-\frac{Q^2}{r_+}\right)
=\beta M-\mathcal A Q-S.$$

巨正则极化因此给

$$g_{\rm gc}=-dM\,d\beta+dQ\,d\mathcal A
=\frac1T(dT\,dS+d\Phi\,dQ)=-\operatorname{Hess}_{(M,Q)}S.$$

## Maxwell Legendre 项：固定 $Q$

Hawking–Ross 项为

$$I_Q=\frac1{4\pi}\lim_{R\to\infty}\int\sqrt h\,n_\mu F^{\mu\nu}A_\nu=Q\mathcal A.$$

于是

$$\Theta_{\rm can}=M\delta\beta+\mathcal A\delta Q,
\quad I_{\rm can}=\beta M-S,
\quad g_{\rm can}=-dM\,d\beta-dQ\,d\mathcal A.$$

以 $\beta=S_M,\ \mathcal A=-S_Q$ 展开，交叉项抵消：

$$g_{\rm can}=\frac{dM^2}{T^2C_Q}+S_{QQ}dQ^2,
\qquad C_Q=T(\partial S/\partial T)_Q.$$

当 $C_Q>0,S_{QQ}<0$ 时这是 $(+,-)$，但在允许方向 $dQ=0$ 上

$$g_{\rm can}|_{dQ=0}=dM^2/(T^2C_Q)=dS^2/C_Q>0.$$

微正则再减 $\beta M$，有 $\Theta_{\rm mc}=-\beta\delta M+\mathcal A\delta Q$、$I_{\rm mc}=-S$、$g_{\rm mc}=-g_{\rm gc}$；此时两种荷都固定，没有把整个负定矩阵读成热不稳定的理由。

# 6. 哪些反项不改变物理，哪些真的改变边界条件

§IV C 的一般纯源项 $W(\lambda)$ 使

$$X'^a=X^a+\partial_{\lambda_a}W,
\quad\Omega'=\Omega,
\quad g_W-g=-W_{,ab}d\lambda_a d\lambda_b.$$

这是一种响应剪切。非线性 $W$ 可以改变极化 Hessian，却不改变固定源下归一化概率，因为 $e^{-W(\lambda)}$ 在分子分母中抵消；物理荷 covariance 仍保持原值。因而不能把任意 counterterm-shifted $-\operatorname{Hess}I$ 都叫 Fisher metric。

本文球对称边界的局域规范不变反项更受限：$F^{(0)}=0$，所有内禀曲率只由固定 $\ell$ 的球面决定，热圆整体长度只通过体积因子 $\beta$ 出现。故允许的这类有限局域项是 $W=c_1\beta$，只平移参考能量，$W''=0$，度量和 spinodal 都不变。这个判断针对所选静态源和规范不变局域项；不推广到任意非局域 holonomy functional、不同边界源或任意高导数边界动力学。

相反，依赖响应 $Q$ 的 Robin 项会剪切固定源方向，不能当作纯源 normalization 消掉。

# 7. RN–AdS 的两种 caustic：完整公式与极限

用 $r=r_+$ 简写，定义

$$\begin{aligned}
\Delta_T&=\ell^2(r^2-Q^2)+3r^4,\\
\Delta_\Phi&=\ell^2(Q^2-r^2)+3r^4,\\
\Delta_Q&=\ell^2(3Q^2-r^2)+3r^4,\\
\Xi&=3\ell^4Q^4+\ell^4r^4+12\ell^2Q^2r^4+6\ell^2r^6+9r^8.
\end{aligned}$$

物理域为 $r>0,\ell>0,\Delta_T>0$。在 $(r,Q)$ 坐标中

$$g_{\rm gc}=\frac{2\pi}{\Delta_T}
\begin{pmatrix}\Delta_Q&-2\ell^2Qr\\-2\ell^2Qr&2\ell^2r^2\end{pmatrix},$$

$$g_{\rm can}=\frac{2\pi}{\Delta_T^2}
\begin{pmatrix}
\Delta_T\Delta_Q&2\ell^2Qr\Delta_Q\\
2\ell^2Qr\Delta_Q&-2\ell^2r^2(\Delta_T+4\ell^2Q^2)
\end{pmatrix}.$$

附录 B 的关键不是形式复杂，而是两个投影 Jacobian：

$$\det\frac{\partial(M,Q)}{\partial(r,Q)}=\frac{\Delta_T}{2\ell^2r^2},
\qquad
\det\frac{\partial(\beta,-\mathcal A)}{\partial(r,Q)}
=\frac{16\pi^2\ell^4r^4\Delta_\Phi}{\Delta_T^3},$$

$$\det\frac{\partial(\beta,Q)}{\partial(r,Q)}
=-\frac{4\pi\ell^2r^2\Delta_Q}{\Delta_T^2}.$$

以 Jacobian 矩阵乘法求 $D_{\rm gc},D_{\rm can}$，再把度量转换到 $(M,Q)$，Mathematica 重现

$$\det g_{\rm gc}=\frac{32\pi^2\ell^6r^6\Delta_\Phi}{\Delta_T^4},
\qquad
\det g_{\rm can}=-\frac{32\pi^2\ell^6r^6\Xi\Delta_Q}{\Delta_T^6},$$

$$S_{QQ}=-\frac{4\pi\ell^2r^2\Xi}{\Delta_T^3}<0,
\qquad C_Q=2\pi r^2\frac{\Delta_T}{\Delta_Q}.$$

因此三种区域非常清楚：

- $\Delta_\Phi>0$：巨正则稳定；正则允许能量涨落也稳定，尽管其二维 $g_{\rm can}$ 不定。
- $\Delta_Q>0>\Delta_\Phi$：固定电荷稳定，固定电势不稳定；正则响应在 $\Delta_\Phi=0$ 上没有奇异。
- $\Delta_Q<0$：负热容，两个系综都存在热不稳定。

在微正则极化中，$\Delta_\Phi=0$ 只是 response projection 的退化。比较曲率时也必须带着这个信息。令 $C=\ell^2Q^2+3r^4$、

$$P_{\rm can}=3\ell^4Q^4-7\ell^4Q^2r^2+12\ell^2Q^2r^4-5\ell^2r^6+9r^8,$$

附录（B9）为

$$R_{\rm gc}=-\frac{9r^2C(\Delta_\Phi-2r^4)}{\pi\Delta_T\Delta_\Phi^2},
\qquad R_{\rm can}=\frac{9r^2\Delta_T^3P_{\rm can}}{\pi\Xi^2\Delta_Q^2}.$$

xAct/xCoba 分别以两套二维 metric 直接重算 Ricci scalar，两条残差都为零。于是“某个 Hessian 曲率发散”不是脱离极化的普遍物理相变判据。

特殊例也一致：$Q=0$ 的 Schwarzschild–AdS 在 $r=\ell/\sqrt3$ 发生局域 spinodal，但 Hawking–Page 是另一个位置 $r=\ell$ 的全局 action crossing。$\ell\to\infty$ 时 $\Delta_\Phi/\ell^2\to Q^2-r^2<0$，非极端 flat RN 在固定电势系综全不稳定；固定 $Q$ 的 Davies 点为 $r=\sqrt3|Q|$，$|Q|<r<\sqrt3|Q|$ 的正热容并不能稳定巨正则电荷涨落。

# 8. Robin 电容：不改变 $\Omega$，却移动物理 spinodal

§V C 固定新电源

$$\Phi_\kappa=\Phi+\kappa Q,\quad
\mathcal A_\kappa=\mathcal A+\kappa\beta Q,
\quad\kappa\geq0,\quad[\kappa]=L^{-1}.$$

边界项为 $I_\kappa=I_{\rm gc}-\kappa\beta Q^2/2$。看起来有负号，却不能说它给了负电容能：重新整理 Liouville 势得到

$$\Theta_\kappa=M_\kappa\delta\beta-Q\delta\mathcal A_\kappa,
\qquad M_\kappa=M+\tfrac12\kappa Q^2.$$

于是作用量仍有正确的形式

$$I_\kappa=\beta M_\kappa-\mathcal A_\kappa Q-S.$$

从微分直接看消项：

$$\begin{aligned}
g_\kappa&=-dM_\kappa d\beta+dQd\mathcal A_\kappa\\
&=-dM d\beta-\kappa QdQd\beta
+dQd\mathcal A+\kappa\beta dQ^2+\kappa QdQd\beta\\
&=g_{\rm gc}+\frac\kappa T dQ^2.
\end{aligned}$$

正 stiffness 抑制电荷涨落。Rank-one 更新给

$$\det_{(M,Q)}g_\kappa
=\det g_{\rm gc}+\frac\kappa{T^3C_Q}
=\frac{32\pi^2\ell^6r^6\Delta_\kappa}{\Delta_T^4},
\quad\Delta_\kappa=\Delta_\Phi+\kappa r\Delta_Q.$$

$\Delta_Q>0>\Delta_\Phi$ 的不稳定楔区在 $\kappa>|\Delta_\Phi|/(r\Delta_Q)$ 后稳定。$\kappa=0$ 回到巨正则；刚性极限趋向固定电荷。数学极化的变化与真正 reservoir coupling 在这里是同一个可算对象。

从源 Jacobian 反演还得到

$$\left(\frac{\partial Q}{\partial\mathcal A_\kappa}\right)_\beta
=\frac{\Delta_T\Delta_Q}{4\pi\ell^2r^2\Delta_\kappa},
\qquad
C_{\Phi_\kappa}=2\pi r^2\frac{(1+\kappa r)\Delta_T}{\Delta_\kappa}.$$

第一条已独立求 Jacobian 验证。刚性稳定域中其极限为 $T/\kappa$，与被压制的 charge variance 一致。

## 临界点应极值化 reservoir 电压，而不是 $Q$

先在 spinodal 上解出

$$Q^2(r)=\frac{r^2(\ell^2-3r^2)(1+\kappa r)}{\ell^2(1+3\kappa r)}.$$

由此

$$\Phi_\kappa^2(r)=\frac{(1+\kappa r)^3(\ell^2-3r^2)}{\ell^2(1+3\kappa r)},
\qquad
T(r)=\frac{\kappa\ell^2+3r+6\kappa r^2}{2\pi\ell^2(1+3\kappa r)}.$$

对 $\Phi_\kappa^2$ 求导，除去物理域内非零因子，得到

$$6\kappa^2r^2+4\kappa r+1-\kappa^2\ell^2=0.$$

正根存在当且仅当 $\kappa\ell>1$：

$$r_c(\kappa)=\frac{\sqrt{6\kappa^2\ell^2-2}-2}{6\kappa}.$$

Mathematica 复现该导数因式与临界数值；$\kappa\ell=2$ 时

$$(r_c/\ell,Q_c/\ell,T_c\ell)
\simeq(0.22420131,0.16236689,0.22230846).$$

$\kappa\ell\to1^+$ 时 $r_c,Q_c\to0$、$T_c\to1/(2\pi\ell)$。刚性极限为

$$(r_c,Q_c,T_c)\to(\ell/\sqrt6,\ell/6,\sqrt6/(3\pi\ell)).$$

还可直接求出

$$\frac{dT_c}{d\kappa}
=\frac{1+2\sqrt2/\sqrt{3\kappa^2\ell^2-1}}{6\pi\ell^2\kappa^2}>0,$$

补足正文关于临界温度单调上升的论述。所有极限最后均在不含极限变量的显式假设下成功重跑，无消息。

# 9. 对当前 CPS 工作真正可借用的范围

按 [本地 formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>)，Lorentzian signature 为 $(-,+,+,+)$，$\theta$ 包含由边界变分整定出的 corner 项，$\omega=\delta\theta$ 是 Cauchy 面上的预辛形式。本文的 $\Theta_{\Sigma_r}$ 是**闭的 Euclidean 径向 cylinder 上积分的势**；$\Omega$ 是允许源变化的四参数静态外部解族上的径向 flux 二形式，不是完整辐射 CPS 的物理辛结构，也不是已经 quotient 后的 AdS 正频模式内积。

因此可取走的是：

- 外部解族、正则 filling、指定源叶必须分别定义；同一场方程或同一平衡曲线并不决定 $K$ 与 Hessian。
- 先写清被固定的源，再判断某个 charge variation 是否在允许切空间内；固定 $Q$ 后，不应把扩展 $dQ$ 方向的负号读成物理负范数。
- 纯源响应剪切、源剪切和 Legendre 交换是三种不同操作；它们都可以保持 $\Omega$，但对度量与稳定性的作用不同。
- 局域反项不改变本例 Hessian，依赖的是边界源结构强迫 $W$ 线性，不是所有 $\delta$-exact 改善在所有边界问题中都不重要。

spinodal 的 source Jacobian 有零向量，沿 $\mathcal L$ 的参数变分因而给保持源的一阶静态变形；bolt 随动坐标保证局部光滑。但从这条有限维变形到完整 Euclidean gauge-fixed 二阶算符的 normalizable 零模／负模，需要处理边界定义域、引力 conformal-factor contour 与非球谐扇区。论文引用了相应稳定性文献，并没有在这里算出 RN–AdS Robin 全谱。因此本笔记把稳定结论限定为指定 thermodynamic/charge sector，不升级成完整动力学谱稳定性定理。

## 已复现与未完成的物理推广

**Verified:** 四维 RN–AdS 曲率及径向 Einstein 方程、参数变分的 trace 与协变散度、径向势外微分、GHY／ct 极限、有限作用量及 Legendre 关系、bolt 缺陷二形式、第一定律、两个极化 metric／projection Jacobian／determinant／$S_{QQ}$／$C_Q$、两套二维 Ricci scalar、Robin rank-one 更新与 susceptibility、临界方程／数值／极限／温度单调性。张量与曲率用 xAct/xCoba，代数／极限用 Mathematica。首次尝试在同一 chart 上连续 `SetCMetric` 两次被 xCoba 拒绝，随后两套曲率在各自新内核中独立计算成功；没有把失败调用算作检验。

**Assumptions:** $G=1$、$\ell$ 固定、实 electric-contour 变量、纯电静态球对称、外部 $f>0$、$r_+>0$、$T>0$；指定参考能量、边界 conformal frame、固定源时的 charge generator；Robin 常数 $\kappa\geq0$。

**Not verified:** 完整 Iyer–Wald 荷的所有一般 tensor 分量、超出静态四参数族的全 CPS、完整 Euclidean negative-mode 谱、量子涨落与一圈配分函数、极端 bolt、Kerr–Newman–AdS、变化 $\Lambda$ 或有限 cavity 的推广。热 AdS 在此约化经典 metric 中退化不意味着其一圈场涨落不存在。
