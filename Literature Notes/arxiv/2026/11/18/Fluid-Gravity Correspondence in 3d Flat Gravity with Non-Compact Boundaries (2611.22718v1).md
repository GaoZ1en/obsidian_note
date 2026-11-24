---
paper id: 2611.22718v1
title: Fluid/Gravity Correspondence in 3d Flat Gravity with Non-Compact Boundaries
authors:
  - H. Adami
  - R. Espíndola
  - K. Lara
  - A. Latifi
publication date: 2026-11-17T12:56:21+00:00
abstract: |-
  本文研究空间边界为实线的三维平直引力 Cartan 子相空间，将两个手征电流映射到二维共形流体。非紧边界的整体信息由端点与 Schrödinger 散射数据描述，讨论两种边界条件、Pöschl–Teller 电流、Weyl 代数量子化，以及保持底层引力数据不变时 stress tensor 的有限径向流。
comments: "27 pages, including references"
url: https://arxiv.org/abs/2611.22718v1
summary: "一个能同时追踪 cut/endpoint 辛结构、连续电流量子化和有限径向流的三维引力试验模型。"
tags: []
---

# 实线边界上的荷、端点辛结构与两套手征电流

[原文 v1](https://arxiv.org/abs/2611.22718v1)（hep-th 主类，gr-qc 交叉）的 PDF 页码与印刷页码相同。最值得借用的不是一般的“fluid/gravity”口号，而是三个具体对象：带空间端点的 symplectic decomposition、$\mathbb R$ 上的 Weyl 电流代数、以及固定引力数据后可显式积分的径向 stress-tensor map。它们可分别用于 regional sewing、边界量子化和有限 cutoff 的比较。

这是 **restricted Cartan phase space** 的分析，不是一般三维平直引力解空间的全分类，也没有给出完整量子引力 Hilbert 空间或量子径向形变。文件名以连字符代替题名中的斜杠，避免生成子目录。

## 1. 为什么所有局部解都平直，边界却仍有自由度（§II–VI）

作者使用 $\mathfrak{isl}(2,\mathbb R)$ Chern–Simons 引力，$[L_m,L_n]=(m-n)L_{m+n}$、$[L_m,M_n]=(m-n)M_{m+n}$、$[M_m,M_n]=0$。归一化采用 $k=2\pi$、$8\pi G=1$，不能把下述数值系数直接当作任意 CS level 的公式。

在 radial gauge $A=b^{-1}(d+a)b$ 中，仅保留

$$
a=\mathcal A^L L_0+\mathcal A^M M_0,\qquad
\mathcal A^L=2\mu\,dt+\tfrac12\mathcal L\,dx,\quad
\mathcal A^M=2\nu\,dt+\tfrac12\mathcal P\,dx.
\tag{16–17}
$$

Cartan 生成元彼此对易，所以 $F=0$ 直接成为

$$\partial_t\mathcal L=4\partial_x\mu,\qquad
\partial_t\mathcal P=4\partial_x\nu.\tag{18}$$

这里 $\mathcal L,\mathcal P$ 是状态数据，$\mu,\nu$ 是 chemical potentials；边界条件决定后者是固定源、零模函数，还是状态的局部函数。局部势表示

$$\mathcal L=2\partial_xT,\quad\mathcal P=2\partial_xX,
\qquad\mu=\tfrac12\partial_tT,\quad\nu=\tfrac12\partial_tX\tag{27–28}$$

使 $\mathcal A^L=dT$、$\mathcal A^M=dX$。选择原文 (24) 的径向群元后，metric 为

$$ds^2=dr^2-r^2dT^2+dX^2.\tag{29}$$

用 $Y^0=r\sinh T$、$Y^1=r\cosh T$，有 $-(dY^0)^2+(dY^1)^2=dr^2-r^2dT^2$，所以这是局部 Minkowski metric。必须保留坐标映射非退化条件

$$r>0,\qquad \mu\mathcal P-\nu\mathcal L\ne0,\qquad
\sqrt{-g}=r|\mu\mathcal P-\nu\mathcal L|.$$

局部平直不表示所有边界变换都是零荷规范变换。残余参数 $\epsilon=2\zeta L_0+2\xi M_0$ 给出

$$\delta_\epsilon\mathcal L=4\zeta',\quad
\delta_\epsilon\mathcal P=4\xi',\quad
\delta_\epsilon\mu=\dot\zeta,\quad\delta_\epsilon\nu=\dot\xi.$$

例如 $T\mapsto T+2\zeta$、$X\mapsto X+2\xi$ 可以改变边界物理数据。零模记录两端势的差：

$$\mathcal L_0=2[T]_{-\infty}^{+\infty},\qquad
\mathcal P_0=2[X]_{-\infty}^{+\infty}.\tag{31}$$

取 $\mu(+\infty)=\mu(-\infty)$、$\nu(+\infty)=\nu(-\infty)$ 可使这两个零模守恒；要求对称性保持零模则需 $\zeta(+\infty)=\zeta(-\infty)$、$\xi(+\infty)=\xi(-\infty)$。守恒条件与场空间是否允许 $\delta\mathcal P_0,\delta\mathcal L_0$ 非零，是不同问题。

## 2. 先有可积的 smeared charge，再有手征分解（§VII–VIII）

加上原文 (10) 的 radial boundary term 后，restricted symplectic potential 为

$$
\Theta_{\rm ren}=-\int_{\mathcal B}(\mu\,\delta\mathcal P+\nu\,\delta\mathcal L)dt\,dx
+\tfrac12\delta\int_{\mathcal B}(\mu\mathcal P+\nu\mathcal L)dt\,dx,
$$
$$\Omega_{\rm ren}=-\int_{\mathcal B}(\delta\mu\curlywedge\delta\mathcal P+
\delta\nu\curlywedge\delta\mathcal L)dt\,dx.\tag{21}$$

$\curlywedge$ 表示场空间反对称乘积。$\mathcal B$ 是二维 timelike 边界条带，不是等时 cut；这两个积分切勿混为同一个 canonical symplectic form。场无关参数的等时 surface charge 是

$$\delta Q=\int_\Sigma(\xi\,\delta\mathcal L+\zeta\,\delta\mathcal P)dx,
\qquad Q=\int_\Sigma(\xi\mathcal L+\zeta\mathcal P)dx.\tag{22,35}$$

用 $\{Q_1,Q_2\}=\delta_{\epsilon_2}Q_1$ 得

$$\{\mathcal L(x),\mathcal P(y)\}=4\partial_x\delta(x-y),\quad
\{\mathcal L,\mathcal L\}=\{\mathcal P,\mathcal P\}=0.\tag{37}$$

定义

$$J_\pm=\tfrac12(\mathcal P\pm\mathcal L),\quad
\mu_\pm=\mu\pm\nu,\quad\eta_\pm=\zeta\pm\xi,$$

则 $Q=\int(\eta_+J_++\eta_-J_-)dx$，并且

$$\partial_tJ_\pm=\pm2\partial_x\mu_\pm,\qquad
\{J_\pm(x),J_\pm(y)\}=\pm2\partial_x\delta(x-y),\quad\{J_+,J_-\}=0.\tag{39,43}$$

相反中心项来自同一混合电流括号的线性对角化，不是一个扇区有负范数。Mathematica 对相应中心系数矩阵做基变换，精确得到 $\operatorname{diag}(2,-2)$。

## 3. 流体字典及其适用支（§IX–X）

参考半径 $r=1$ 上，Weyl-rescaled 边界 metric 为

$$d\gamma^2=-N^2dt^2+(dx+N^xdt)^2,$$
$$N=\frac{4(\mu\mathcal P-\nu\mathcal L)}{\mathcal P^2-\mathcal L^2},
\qquad N^x=\frac{4(\nu\mathcal P-\mu\mathcal L)}{\mathcal P^2-\mathcal L^2}.\tag{45}$$

选定未来方向 $N>0$，取 $u^a=N^{-1}(1,-N^x)$、$s^a=(0,1)$，写

$$T^{ab}=\rho u^au^b+p s^as^b+2j u^{(a}s^{b)}.$$

把引力的 $\Theta_{\rm ren}$ 与 $-\frac12\int\sqrt{-\gamma}\,T^{ab}\delta\gamma_{ab}$ 对应，得到

$$\rho=p=\frac{\mathcal P^2+\mathcal L^2}{8},\qquad
j=-\frac{\mathcal L\mathcal P}{4}.\tag{53}$$

这一步可实际复算：把 $T^{ab}$ 和 $\gamma_{ab}$ 写成 $2\times2$ 矩阵，对 $(\mathcal P,\mathcal L,\mu,\nu)$ 分别求导。流体变分的四个系数恰好为

$$(-\mu/2,-\nu/2,\mathcal P/2,\mathcal L/2),$$

与上面的引力 potential **连同 exact-variation 项**一致；Mathematica 四个残差均为零。删掉该 exact term 虽不改 $\Omega$，却会改这个具体 response matching。$\nabla_bT^{ab}=0$ 与引力演化的对应是作者的流体动力学解释；本次独立复算了 variational matching，没有另做所有任意源的协变守恒分量展开。

总能量、动量与手征二次荷为

$$H_\pm=\tfrac14\int J_\pm^2dx,\quad
E=H_++H_-,\quad\mathcal J=-H_++H_-.$$

所以 $E\ge|\mathcal J|$ 直接来自 $H_\pm\ge0$。这个代数不等式本身并不需要正 Weyl factor。要使本文采用的空间 cut 和 fluid normalization 正则，还须更强的点态条件

$$W(1)=\tfrac14(\mathcal P^2-\mathcal L^2)>0.$$

原文把能量界与这一几何条件联系起来，但不能反过来以积分能量界证明 $W>0$，也不能把 $W=0$ 当作正常的 timelike fluid frame。

实线上的稳健选择是 $J_\pm\in L^1(\mathbb R)\cap L^2(\mathbb R)$：前者保证零模和两端势差，后者保证二次能量有限。原文也明确指出，条件收敛的零模积分不必属于 $L^1$，因此 $L^1$ 是采用的充分控制条件，而不是单凭“积分有限”就能推出的必要定理。

## 4. 端点项不能随“分部积分”一起消失（§XI）

在壳用 $T,X$ 改写，$\Omega_{\rm ren}$ 是边界轮廓上的

$$\Omega_{\rm ren}=-\int_{\partial\mathcal B}\delta T\curlywedge d\delta X.$$

条带有两条等时 cut 和两个空间端点，故

$$\Omega_{\rm ren}=\Omega_\Sigma(t_f)-\Omega_\Sigma(t_i)+\Omega_{\rm end},$$
$$\Omega_\Sigma(t)=-\tfrac12\int\delta T\curlywedge\delta\mathcal P\,dx,
\qquad\Omega_{\rm end}=2\left[\int_{t_i}^{t_f}\delta T\curlywedge\delta\nu\,dt\right]_{-\infty}^{+\infty}.\tag{68–69}$$

满足端点 matching 时，作者给出 $\Omega_{\rm end}=-\frac12\delta X_0\curlywedge\delta\mathcal L_0$，其中 $X_0=X(t_f,+\infty)-X(t_i,+\infty)$。若 boundary ensemble 固定 $X_0$，这个方向没有独立变分；不能既宣称固定，又把它当成任意独立 canonical coordinate。

还可以把一个总端点项在 cut 与 endpoint 之间重新分配。令

$$\widetilde T=T-T(t,+\infty),\quad
T_0=T(t_f,+\infty)-T(t_i,+\infty),$$

则

$$\widetilde\Omega_\Sigma=-\tfrac12\int\delta\widetilde T\curlywedge\delta\mathcal P\,dx,
\qquad
\widetilde\Omega_{\rm end}=-\tfrac12(\delta T_0\curlywedge\delta\mathcal P_0+
\delta X_0\curlywedge\delta\mathcal L_0).\tag{74}$$

直接展开 $\delta\widetilde T$，cut 的新增项为 $\frac12\delta T(+\infty)\curlywedge\delta\mathcal P_0$；其终减初正好被 endpoint 的变化抵消。因此这是同一总辛结构的不同 decomposition，不是物理上凭空添加边缘自由度。采用原文 Poisson 约定，反演 cut form 得

$$\{\widetilde T(x),\mathcal P(y)\}=2\delta(x-y),$$

再用 $\mathcal L=2\partial_x\widetilde T$ 恢复混合电流括号。对 sewing 最直接的提醒是：必须一起指定两侧 cut orientation、端点 ensemble 和可变零模；只匹配局部 $\partial_x\delta$ 代数不能确定全局缝合。

## 5. 用散射而不是圆周 monodromy 描述整体信息（§XII）

对足够快衰减的实电流（此节采用 Schwartz 类），定义

$$S_\pm=-\partial_x^2+\frac{12\pi}{c_\pm}J_\pm(x),\qquad
S_\pm\psi=\lambda_\pm^2\psi.\tag{78–79}$$

$c_\pm$ 在这里是选定的谱势归一化参数，不能未经字典就与任意 Virasoro central charge 认同。写 $\chi=(\psi,\psi')^T$，则

$$\chi'=U\chi,\qquad U=\begin{pmatrix}0&1\\12\pi J/c-\lambda^2&0\end{pmatrix}.$$

$\operatorname{tr}U=0$ 说明 Wronskian 与传播矩阵行列式不随 $x$ 变化。对于实势、$\lambda^2\in\mathbb R$，实初值传播矩阵属于 $SL(2,\mathbb R)$；改到复平面波系数基后不能再称矩阵元素全实。

两端展开 $\psi\sim A^{L/R}e^{i\lambda x}+B^{L/R}e^{-i\lambda x}$，以 $C^R=\Xi C^L$ 定义 scattering connection。有限端点的传播矩阵 $\mathcal U(x_2,x_1)$ 与它的关系是

$$\Xi=M(x_2)^{-1}\mathcal U(x_2,x_1)M(x_1),\quad
M(x)=\begin{pmatrix}e^{i\lambda x}&e^{-i\lambda x}\\i\lambda e^{i\lambda x}&-i\lambda e^{-i\lambda x}\end{pmatrix},$$

最后在合适 Jost normalization 下取渐近极限；$\lambda=0$ 时需另处理退化的基。原文 (97) 的同一点共轭写法是基变换示意，不能用它代替两个不同端点的传播式。实 $\lambda\ne0$ 的通量守恒给 $|R|^2+|T|^2=1$；$\lambda=i\kappa$ 的束缚态要求左端增长系数 $A^L=0$、右端增长系数 $B^R=0$。这些数据取代周期问题的 monodromy。

## 6. 两类边界条件、第一定律及一个可解谱例子（§XIII–XIV）

**Heisenberg-like。** $\mu,\nu$ 在时空上常数，$\mathcal L,\mathcal P$ 静态。如果进一步取 $\mu=\partial F/\partial\mathcal P_0$、$\nu=\partial F/\partial\mathcal L_0$，则 $\delta F=\mu\delta\mathcal P_0+\nu\delta\mathcal L_0$。要求上述 specific potential 本身消失给 Euler 条件

$$2F=\mathcal P_0F_{\mathcal P_0}+\mathcal L_0F_{\mathcal L_0},\qquad
F=\mathcal P_0^2 f(\mathcal L_0/\mathcal P_0).$$

这是边界 ensemble 和 potential 选择产生的齐次约束，不是由平直 Einstein 方程单独推出的熵计数。

**Dirichlet-like。** 固定 lapse/shift 为常数 $N_\circ,N_\circ^x$：

$$\mu=\tfrac14(N_\circ\mathcal P+N_\circ^x\mathcal L),\quad
\nu=\tfrac14(N_\circ\mathcal L+N_\circ^x\mathcal P),\quad
\mu_\pm=\tfrac12v_\pm J_\pm,\quad v_\pm=N_\circ\pm N_\circ^x.$$

于是 $J_\pm=J_\pm(z^\pm)$，$z^\pm=x\pm v_\pm t$，谱势只是刚性平移。$D_\pm=v_\pm\partial_x$ 给出 $\partial_tS_\pm=\pm[D_\pm,S_\pm]$，所以保持算子域的演化是等谱的。

若允许 ensemble 参数随全局荷变分，并要求 $N_\circ=\mathcal S_E/(2\pi)$、$N_\circ^x=-\mathcal S_{\mathcal J}/(2\pi)$，再要求 potential 消失，则

$$\mathcal S=E\mathcal S_E+\mathcal J\mathcal S_{\mathcal J},\quad
\delta E=\frac1{2\pi N_\circ}\delta\mathcal S+
\frac{N_\circ^x}{N_\circ}\delta\mathcal J.$$

这构造一个热力学形式；它仍没有独立的微观熵证明。

原文给出 kink 与电流脉冲

$$\Phi_\pm=C_\pm+\frac{J_0^\pm}{4}\tanh(a_\pm z^\pm),\quad
a_\pm=\frac{12H_\pm}{(J_0^\pm)^2},\quad
J_\pm=\frac{6H_\pm}{J_0^\pm}\operatorname{sech}^2(a_\pm z^\pm).\tag{123–124}$$

$H_\pm>0$、$J_0^\pm\ne0$。不应只凭形状声称归一化正确：利用

$$\int\operatorname{sech}^2(az)dz=2/a,\qquad
\int\operatorname{sech}^4(az)dz=4/(3a)$$

（全实线，$a>0$）可得 $\int J_\pm=J_0^\pm$、$\frac14\int J_\pm^2=H_\pm$。两式均已由 Mathematica 复算。

选 $J_0^\pm=-\beta_\pm H_\pm^{1/3}$、$\beta_\pm>0$，以及

$$Z_\pm=\frac{12H_\pm^{1/3}}{\beta_\pm^2}z^\pm,
\quad c_\pm=\frac{\pi\beta_\pm^3}{2\ell_\pm(\ell_\pm+1)},$$

谱方程化成

$$[-\partial_Z^2-\ell(\ell+1)\operatorname{sech}^2Z]\psi
=\varepsilon^2\psi,\qquad
\varepsilon=\frac{\beta^2\lambda}{12H^{1/3}}.\tag{129–130}$$

Mathematica 检验了 rescaling 的系数。整数 $\ell\ge0$ 的 reflectionless 性质是原文使用的已知可解势结果；本次额外复算 $\ell=1$：$\psi_k=(k+i\tanh Z)e^{ikZ}$ 满足谱方程，两端只有同向平面波，故 $R=0$、$T=(k+i)/(k-i)$；$\psi_b=\operatorname{sech}Z$ 的能量为 $-1$。这只是一个明确实例，不冒充所有整数 $\ell$ 的独立谱证明。

## 7. 量子化：局部电流代数不是完整的零模理论（§XV）

对实测试函数 $\eta_\pm\in C_0^\infty(\mathbb R)$，量子电流满足

$$[\widehat J_\pm(\eta_1),\widehat J_\pm(\eta_2)]
=i\sigma_\pm(\eta_1,\eta_2),\qquad
\sigma_\pm=\pm2\int\eta_1\partial_x\eta_2\,dx.$$

分部积分的端点项因紧支撑而消失。若 $\sigma(\eta,\chi)=0$ 对所有 $\chi$ 成立，则 $\eta'=0$；紧支撑迫使 $\eta=0$，所以这个测试函数空间上的辛形式非退化。常函数不在其中，**积分零模不是这个论证已经包含的算符**。

采用 $W(\epsilon)=e^{i\widehat Q(\epsilon)}$，BCH 公式给

$$W(\epsilon_1)W(\epsilon_2)=e^{-i\sigma(\epsilon_1,\epsilon_2)/2}W(\epsilon_1+\epsilon_2).$$

这首先定义抽象 Weyl $C^*$-algebra。指定正的 quasi-free covariance 后才选出态和 GNS 表示；一般需要 $S+i\sigma/2$ 的适当正性，不能仅把一条二变量不确定性不等式当作全部多变量正性条件。本文随后给出的 Fock covariance 为该条件提供具体实现。

在 $J_p=\int dx\,\widehat J(x)e^{-ipx}$ 的约定下，分布积分给

$$[J_p^\pm,J_q^\pm]=\mp4\pi p\delta(p+q).$$

因此对 $p>0$ 选择

$$a_p^\pm=\frac{J_{\mp p}^\pm}{\sqrt{4\pi p}},\qquad
(a_p^\pm)^\dagger=\frac{J_{\pm p}^\pm}{\sqrt{4\pi p}}$$

使两个扇区均有 $[a_p,a_q^\dagger]=\delta(p-q)$。这解释了负手征中心号不导致负范数。按原文 (158)，

$$\mathcal H_0=\mathcal F_s(L^2(\mathbb R_+,dp))\otimes\mathcal F_s(L^2(\mathbb R_+,dp)),
\qquad \widehat H=d\Gamma(p\oplus p).$$

实际态应是波包，单个 $|p\rangle$ 只是广义本征矢。注意 PDF 19 的 (159) 把两项都印为 $+$ 扇区；与 (158) 和双扇区 mode 定义一致的展开应包含 $a_+^\dagger a_++a_-^\dagger a_-$，这里不重复那处排印错误。

原文真空 covariance 为

$$S_0(\epsilon_1,\epsilon_2)=\frac1\pi\int_0^\infty dp\,p\,
\operatorname{Re}(\overline{\eta_{1,p}^+}\eta_{2,p}^++\overline{\eta_{1,p}^-}\eta_{2,p}^-).$$

由上述 oscillator normalization 可恢复其系数，$\langle Q_1Q_2\rangle=S_0+i\sigma/2$。局部 interval von Neumann algebra 与全局 Fock algebra 要分开；KMS 态的存在不等于无限体积中存在 trace-class Gibbs density matrix。本文没有给出全局零模的量子极限处方，也没有证明不同 classical kink sector 的完整量子叠加结构。

## 8. 径向 boost 究竟变的是什么（§XVI–XVII）

此处固定 $(t,x,\mathcal P,\mathcal L,\mu,\nu)$，只改变显式半径。$W(r)=(\mathcal P^2-r^2\mathcal L^2)/4$，并有

$$\rho(r)=p(r)=\frac{\mathcal P^2+r^2\mathcal L^2}{8r},\qquad
j(r)=-\frac{\mathcal P\mathcal L}{4}.$$

在 $\mathcal P^2>r^2\mathcal L^2$ 的正则支上，正平方根为

$$R(r)=\sqrt{\rho^2-j^2}=\frac{\mathcal P^2-r^2\mathcal L^2}{8r}.$$

xAct 在二维 Lorentz metric、$u^2=-1$、$s^2=1$、$u\cdot s=0$ 下独立收缩验证了 $T^a{}_a=0$ 和 $\tfrac12T^{ab}T_{ab}=\rho^2-j^2$。因此此处的平方根与作者 stress invariant 一致。

令 $\tau=\ln r$，直接求导得到

$$\partial_\tau\rho=-R,\qquad\partial_\tau R=-\rho,\qquad\partial_\tau j=0,$$

所以

$$\binom{\rho(r)}{R(r)}=
\begin{pmatrix}\cosh\tau&-\sinh\tau\\-\sinh\tau&\cosh\tau\end{pmatrix}
\binom{\rho(1)}{R(1)},\qquad \rho^2-R^2=j^2.\tag{168–169}$$

Mathematica 检验了三个微分残差、有限 boost 和不变量。正文 (168–169) 将第二变量写成 $S$，但此前定义的是 $R$；这里统一写 $R$，避免与热力学熵 $\mathcal S$ 混淆。

平方根不能无条件替换成一个有符号多项式：越过 $W=0$ 后，正根会变成绝对值的另一支，而 fluid frame 已经退化。上述 boost 只在整个路径保持 admissible 的半径区间内成立。它是**同一经典引力配置的 quasilocal observables 比较**，还不是量子 $\sqrt{T\bar T}$ deformation 的构造。

对当前工作的最小可用输入是 (74) 的完整 cut-plus-endpoint 辛结构、紧支撑测试函数上的 Weyl form，以及明确标注正则支的径向 map。本次复算了核心归一化、potential 字典、脉冲与一个谱例子、tensor invariant 和径向流；未独立重证一般逆散射理论、所有 KdV trace identities、GNS/type-III 定理或完整 CS 作用量的全局边界变分。这些边界不妨碍将该模型用作局部计算试验场，但不能被当作已经完成的 quantum sewing。
