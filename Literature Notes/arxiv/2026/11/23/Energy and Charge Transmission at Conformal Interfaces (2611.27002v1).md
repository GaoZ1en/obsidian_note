---
paper id: 2611.27002v1
title: "Energy and Charge Transmission at Conformal Interfaces: Relations and Bounds"
authors:
  - Yuma Furuta
  - Yuya Kusuki
  - Toshiki Onagi
  - Yin Tang
publication date: 2026-11-20T02:31
abstract: |-
  Across a unitary interface between WZW models preserving the diagonal affine symmetry, the stress-tensor and current transmission coefficients are proportional. Averaged null energy bounds rule out complete energy transmission at unequal levels in pure WZW models. Extra coset sectors can carry additional energy, within bounds. The current coefficient also fixes linear charge conductance, equilibrium charge fluctuations, and the leading scaling dimension of a boundary-condition-changing operator under a relative rotation.
comments: "14 pages"
url: https://arxiv.org/abs/2611.27002v1
summary: "A sewing benchmark with an explicit Ward identity, positive-energy constraints, and a finite-size observable that measures charge transmission."
tags: []
---

# 折叠界面：何时同一条拼接条件同时决定荷与能量？

关键不是“两侧总能量和荷都守恒”，而是**对角仿射 gluing** 加上**两侧完整应力张量都由这些 currents 生成**。在这个条件下，跨 cut 的两个二点函数只剩一个自由系数。若另有中性 coset，能量得到一个额外的非负贡献；一个 matching current algebra 并不能决定整个能量核。§VII 给这个区别一个可测的 sewing observable：相对旋转一侧时，折叠条带基态能的二阶变化直接读出 $k_{LR}$。页码按 [arXiv v1 PDF](https://arxiv.org/pdf/2611.27002v1)，文件页与印刷页一致。

## 从折叠的 mode gluing 到传输关系 (§§II–III, pp. 2–4)

设 $G$ 为紧单群，$h=h^\vee$，$d=\dim G$，$k_L,k_R>0$。取 $f^{acd}f^{bcd}=2h\delta^{ab}$，$J_i^a(z)J_i^b(0)\sim k_i\delta^{ab}/z^2+if^{ab}{}_c J_i^c/z$。所以 $T_i=:J_i^aJ_i^a:/[2(k_i+h)]$，$c_i=d k_i/(k_i+h)$。欧氏 $z=\tau-ix$；折右半平面交换 $J_R,\bar J_R$。边界态 $B$ 满足
$$\begin{aligned}
 (L_{L,n}+L_{R,n}-\bar L_{L,-n}-\bar L_{R,-n})|B\rangle&=0,\\
 (J_{L,n}^a+J_{R,n}^a+\bar J_{L,-n}^a+\bar J_{R,-n}^a)|B\rangle&=0.
\end{aligned}$$
圆上的 current gluing 为加号，和直线上的 normal-current conservation 不矛盾。简记 $\langle A\rangle_B=\langle0|A|B\rangle/\langle0|B\rangle$。跨侧定义 $-\langle J_{L,1}^a\bar J_{R,1}^b\rangle_B=k_{LR}\delta^{ab}$、$\langle L_{L,2}\bar L_{R,2}\rangle_B=c_{LR}/2$。例如在 current gluing 中击上 $\langle0|J_{L,1}^a$，将 $\bar{\mathcal J}_{1}$ 换成 $-\mathcal J_{-1}$，中央项给 $k_L$，所以同侧振幅对应 $k_L-k_{LR}$；Virasoro 同法得到 $(c_L-c_{LR})/2$。这两者在原平面的分离点相关函数具有正号约定。

令 $\mathcal J=J_L+J_R$。异侧 modes 对易，真空 bra 上求和的正规序二次项只有两个 $J_1$ 能留在 level 2，故
$$\langle0|\sum_a(J_{L,1}^a-J_{R,1}^a)\mathcal J_1^a=2\langle0|[(k_L+h)L_{L,2}-(k_R+h)L_{R,2}].$$
在右边放 $\bar L_{R,2}|B\rangle$：按 Sugawara 得 $(k_L+h)c_{LR}-(k_R+h)(c_R-c_{LR})$；按 gluing 将 $\mathcal J_1$ 换成 $-\bar{\mathcal J}_{-1}$，移过 $\bar L_{R,2}$ 时 $[\bar L_{R,2},\bar{\mathcal J}_{-1}]=\bar J_{R,1}$，其余被真空 bra 杀死。于是同一个矩阵元为 $-\sum_a\langle(J_{L,1}^a-J_{R,1}^a)\bar J_{R,1}^a\rangle_B=(2k_{LR}-k_R)d$。利用 $(k_R+h)c_R=k_R d$ 得
$$D_k c_{LR}=2d k_{LR},\qquad K=k_L+k_R,\quad D_k=K+2h.$$
$\mathcal T_Q=2k_{LR}/K$、$\mathcal T_E=2c_{LR}/(c_L+c_R)$ 是双向归一化量，**单侧**入射的能量分数是 $c_{LR}/c_i$。当 $k_{LR}>0$，$\mathcal T_E/\mathcal T_Q=1+h(k_L-k_R)^2/[D_k(2k_L k_R+hK)]$；非阿贝尔且 levels 不等，能量比荷传得更充分是这个双向归一化下的陈述。若 gluing 扭曲为 $R_L(J_L-\Omega_L\bar J_L)=R_R(J_R-\Omega_R\bar J_R)$，则应比较共同基底的 $R_L M R_R^T=k_{LR}\mathbf1$，其中 $M^{ab}=-\langle J_{L,1}^a\bar J_{R,1}^b\rangle_B$ 用折叠的指标。另一对 chirality 有 $\Omega$ 因子，Sugawara 不变。对一个单侧轴转 $\pi$ 的 $SU(2)$ identity interface，$M=\mathrm{diag}(k,-k,-k)$，原基底的 trace 显然不能代替 $k_{LR}$。

### 正性约束的是能量，不是 current 振幅的符号

取入射和出射各两条 unit current packets，范数由 $k_i/(2\epsilon)^2$ 固定。它们各自正交，交叉块为
$$S=\mathbf1-k_{LR}vv^T,\qquad v=(k_L^{-1/2},-k_R^{-1/2})^T.$$
四态 Gram 矩阵的 Schur complement 是 $\mathbf1-S^\dagger S\ge0$；$S$ 的固定特征向量为 $(\sqrt{k_L},\sqrt{k_R})^T$，另一特征值为 $1-k_{LR}K/(k_Lk_R)$。从绝对值不大于一，得到 $0\le k_{LR}\le2k_L k_R/K$。Mathematica 复算了特征多项式和以下 stronger bound 的化简。

附录 A 用应力张量 Ward identity 得到固定 $a$ 的 OPE singlet $J_i^a(z)J_i^a(0)\supset(2k_i/c_i)T_i(0)$；与对侧 $T$ 的三点函数相除给能量分数 $c_{LR}/c_i$。使用作者引入的 interface scattering/ANEC prescription：同能量 profile、$E>0$、宽度趋零时，对侧 current packet 是 $E_j$ 的本征值 $E$ 的态。将入射态投影到它，写成 $a|\mathrm{out},j\rangle+|\perp\rangle$，$|a|^2=k_{LR}^2/(k_Lk_R)$；交叉矩阵元消失，余态 $E_j\ge0$。从两侧入射因此有
$$\frac{k_{LR}^2}{k_L k_R}\le\min_i\frac{c_{LR}}{c_i},\qquad
k_{LR}\le\frac{2(k_Lk_R+h\min(k_L,k_R))}{D_k},\qquad
c_{LR}\le\min_i c_i\left(1-\frac{(k_L-k_R)^2}{D_k^2}\right).$$
第二式用 $c_i$ 中较大者作分母，第三式再除以较小侧的 $c_i$。因此只要 levels 不等，就不能让低 $c$ 一侧完全传能。这里 ANEC 的 scattering 识别依赖作者引用的窄能宽极限，不是仅从边界态 Gram 正性推出的结论。

## 中性自由度能补多少？(§IV, pp. 4–7)

允许 $T_i=T_i^G+T_i^\perp$，$c_i^G=dk_i/(k_i+h)$，$c_i^\perp=c_i-c_i^G$。设 $\mathcal T=T^G[\mathcal J_K]$，$T_0=T_L^G+T_R^G-\mathcal T$；区分这个**对角 coset**与**bulk 中性的额外两块**。$c_0=d k_Lk_R D_k/[(k_L+h)(k_R+h)(K+h)]$。记 $R(A,A')=\langle A_2\bar A'_2\rangle_B$，$b_i=2R(T_i^\perp,T_j)$（$j\ne i$）。重跑上一段的双重计算时，$L_{i,2}$ 替为 $L^G_{i,2}=L_{i,2}-L^\perp_{i,2}$，而另一侧仍用完整 $L$（与 current 的 commutator 不变）。结果为
$$\Delta:=c_{LR}-2d k_{LR}/D_k=\mu_R b_L+\mu_L b_R,\quad \mu_L=(k_R+h)/D_k,\quad\mu_R=(k_L+h)/D_k.$$
取 charge-orthogonal current $\mathcal K=k_R J_L-k_L J_R$。把 $J_L=(k_L\mathcal J+\mathcal K)/K,\ J_R=(k_R\mathcal J-\mathcal K)/K$ 代入 Sugawara，分解为 $T_i^G=(k_i/K)\mathcal T+\mu_i T_0\pm V$，$V=:\!\mathcal J\cdot\mathcal K\!:\!/(KD_k)$，左正右负。对 $A=T_L^\perp,T_R^\perp,T_0$，$R(A,\mathcal T)=0$；$R(A,V)=0$ 是因 gluing 把 $\bar{\mathcal J}_1$ 移到 holomorphic $\mathcal J_{-1}$，与 $A_2$ 和 $\bar{\mathcal K}_1$ 对易后杀真空 bra。于是 $R(A,T_i^G)=\mu_i R(A,T_0)$。

三块 commuting Virasoro 的归一化 overlap $P_{AB}=2R(A,B)$ 构成一个非负矩阵，和为 $\sum_B P_{AB}=c_A$、$\sum_A P_{AB}=c_B$：总应力 gluing 给行列和，分扇区 ANEC 给逐项非负。故
$$\Delta=\mu_R^2 P_{L0}+\mu_L^2P_{R0}+\mu_R P_{LR}+\mu_L P_{RL}.$$
用 $\mu_i=\mu_i^2+\mu_L\mu_R$，前两块和各自同向 cross 用行和约束，剩余 cross 各不超过较小中性中心荷。若 $c_L^\perp\ge c_R^\perp$，得 $\Delta\le c_R^\perp+\mu_R^2(c_L^\perp-c_R^\perp)$。另一路把 $P_{L0}$ 用列和 $c_0$ 约束，写余项用右侧行、列和，得 $\Delta\le c_R^\perp+\mu_R^2c_0$。合为
$$0\le\Delta\le c_R^\perp+\mu_R^2\min(c_L^\perp-c_R^\perp,c_0),$$
以及 $L\leftrightarrow R$ 的版本。这个上界是必要条件，不保证存在达到相应矩阵的 boundary state。

左为纯 $G_{k_L}$，$k_R>k_L$，假定 $c_{LR}=c_L$。左反射能量零，故 $|1-k_{LR}/k_L|^2\le 1-c_{LR}/c_L=0$，所以 $k_{LR}=k_L$。右 current 入射能量分数 $a_R=k_L/k_R$（$k_La_L+k_Ra_R=2k_{LR}$，左 $a_L=1$），$b_R=c_L^G-c_R^G k_L/k_R$；另一方面 $b_R=\mu_L P_{R0}\le\mu_L\min(c_0,c_R^\perp)$。因此 $c_R^\perp\ge d k_L(k_R-k_L)D_k/[(k_L+h)(k_R+h)^2]$。Mathematica 给 $SU(2)_1$ 对 $SU(2)_3$ 为 $16/25$，对 $SU(2)_5$ 为 $40/49$。这排除右侧仅加一份 Ising $c^\perp=1/2$ 的后一个模型；前一个模型可以用右 $SU(2)_1\times SU(2)_2$、反射 2 层而透射共享 1 层，右对角 level 3 的 $c_R^\perp=7/10$。若只保留一个 $U(1)$，等 levels 时 $\mathcal T_Q\le c_{LR}\le\mathcal T_Q+c-1$；$SU(2)_2$ 的三 Majorana 实现中 $J^3=\sqrt2 i\chi^1\chi^2$，若前两条的相同概率为 $\mathcal T_1$、第三条为 $\mathcal T_3$，Wick contraction 给 $k_{LR}/k=\mathcal T_1$，$c_{LR}=\mathcal T_1+\mathcal T_3/2$。这是对本文最贴近 Ising sewing 的例子：中性 Majorana 的能流可透射而不带所测 Cartan 荷。它不是从一个 Ising replica kernel 推出整个 WZW 界面。

若不要求这条 $U(1)$ 守恒，仍可给两点函数定义 $k_{LR}$。左 $T_L^J$ 的中心荷是 1，$c_{LR}=a_L+b_L$，其中 $a_L\ge |k_{LR}|^2/(k_L k_R)$ 由同一 outgoing channel 投影，$b_L\ge0$ 来自 coset 能量。因此只保留**二次**下界；自由 boson 例 $k_{LR}/k=t,\ c_{LR}=t^2$ 排除普适正的一次下界。此时 $k_{LR}$ 不是守恒荷 DC conductance。

## 模块 S 矩阵给出具体 cut 数据 (§V 与附录 C, pp. 7–8, 12)

从两个单侧 Cardy 态的乘积 $B_0$ 出发，用对角 level $K$ 的拓扑缺陷 $L_\rho$ 将第 $\nu$ 个分量乘以 $S_{\rho\nu}/S_{0\nu}$。因为 $\mathcal K_{-1}^a|0\rangle$ 的 positive $\mathcal J$ modes 杀它（central term 恰好对消），它是仿射 adjoint primary；$\mathcal J$ 所在真空模块归一化则由 $S_{\rho0}/S_{00}$ 出来。记 $-\langle\mathcal K_1^a\bar{\mathcal K}_1^b\rangle_B=\omega_\rho k_Lk_R K\delta^{ab}$，$B_0$ 时 $\omega=1$。混合 $\mathcal J$–$\mathcal K$ overlap 为零，代回 $J_L,J_R$ 即得
$$\omega_\rho=\frac{S_{00}S_{\rho,\mathrm{adj}}}{S_{\rho0}S_{0,\mathrm{adj}}},\qquad k_{LR}=\frac{k_L k_R}{K}(1-\omega_\rho).$$
Sage 用 60 次单位根重算 $SU(2)_4$ 的 $S_{jj'}\propto\sin[(2j+1)(2j'+1)\pi/6]$：$j=0,1/2,1$ 给 $\omega=1,0,-1/2$；在 $(k_L,k_R)=(1,3)$ 后两行给 $(k_{LR},c_{LR})=(3/4,9/16),(9/8,27/32)$。第二个的反射 current 振幅 $-1/8$，但反射**总能量** $5/32$，没有负能问题。$SU(3)$ 用 $\chi_\mathrm{adj}=|\chi_3|^2-1$；若最高权为 $(a,b)$，三对 torus 相位差对应 $(a+1,b+1,a+b+2)/(K+3)$。Sage 精确得 $\omega_{(1,0)}=0$ 在 $K=3$、$-(3-\sqrt5)/2$ 在 $K=2$；前者给 $(2/3,32/27)$，后者给 $((5-\sqrt5)/4,(5-\sqrt5)/2)$。这复算了 modular ratios 和归一化，不等同重新构造并分类全部 conformal boundary states。

## 把小角度相对旋转变成有限尺寸测量 (§§VI–VIII，附录 B；pp. 8–12)

单位范数 generator 的跨 cut $j_Q=(J^X-\bar J^X)/(2\pi)$、$j_E=(T-\bar T)/(2\pi)$。同点界面方向分离时间 $\tau$ 后，$j_Q$ 的四项相减分子是 $2k_i-2(k_i-k_{LR})=2k_{LR}$；$j_E$ 同法给 $c_{LR}$，故二点系数分别为 $k_{LR}/(2\pi^2\tau^2)$ 和 $c_{LR}/(4\pi^2\tau^4)$。$\mu=0$ 时 weight-1 和 weight-2 的二点混合由共形对称性杀掉；圆柱的 Schwarzian 在 $T-\bar T$ 抵消。令 $a=\pi T>0$，实时间点分裂 $0<a\epsilon<\pi$；解析延拓 $[a/\sin(a\tau)]^{2n}$ 到 $\tau=\epsilon+it$ 后得 $(-1)^n a^{2n}\operatorname{csch}^{2n}(a(t-i\epsilon))$。Mathematica 核对原函数 $-\coth/a$ 和 $(\coth-\coth^3/3)/a$，两端极限之差分别为 $-2/a$、$4/(3a)$。据此，采用附录的双边对称 noise（anticommutator 除二）与 $S_Q(0)=2TG_Q,\ S_E(0)=2T^2\kappa$，有
$$G_Q=k_{LR}/(2\pi),\qquad \kappa/T=\pi c_{LR}/6,\qquad \frac{\kappa}{TG_Q}=\frac{2\pi^2d}{3D_k}\quad(G_Q>0).$$
末式为两个 bulk ratio $\pi^2 c_i/(3k_i)$ 的调和平均；加 coset 后，用 $\pi\Delta/6$ 夹住超出的 $\kappa/T$。有限窗内把点分裂的零温 $-k_{LR}\operatorname{Re}(t-i\epsilon)^{-2}/(2\pi^2)$ 与三角形权重相积，得 $k_{LR}\ln(1+t^2/\epsilon^2)/(2\pi^2)$，长时即 $k_{LR}\log(t/\epsilon)/\pi^2$；热圆柱换成 $\log[\sinh(\pi T t)/(\pi T\epsilon)]$ 的领先形式，长时斜率 $2TG_Q$。

相对旋转只作用在右侧两个 chiralities，在边界线上取一段 $(s,t)$，以 $\theta\int_s^t j_Q$ 生成。假设折叠 boundary spectrum 离散且 identity 唯一，跟踪 $h_{\rm BCC}(0)=0$ 的 branch。对 $\log Z_\theta(s,t)$ 做二阶 connected 展开，$\theta^2/2$ 乘双积分；$-\partial_s\partial_t$ 同时作用去掉长度反项和端点自归一化，并将两个有序端点留下的因子 2 抵消 $1/2$。对 $\log Z=-2h_{\rm BCC}\log(t-s)+\cdots$ 做同一操作，得到
$$\frac{2h_{\rm BCC}}{(t-s)^2}=\theta^2\langle j_Q(s)j_Q(t)\rangle_c+o(\theta^2),\quad h_{\rm BCC}=\frac{k_{LR}\theta^2}{4\pi^2}+o(\theta^2).$$
条带宽 $\ell$、速度一时 $E_0(\theta)-E_0(0)=\pi h_{\rm BCC}/\ell$，即 $k_{LR}=2\pi\ell E''_0(0)$。换成范数 $\|X\|$ 的 generator，方差、conductance、$h''$ 乘 $\|X\|^2$，$c_{LR}$ 不动。比如标准 $SU(2)$ 自旋 $J^3/\sqrt2$ 的 conductance 只有单位范数值的一半。非平凡角度的谱和微观实现（§VIII）不限于 $k_{LR}$，亦未由上述二阶反应求出。

**可带回 sewing 的检验。** 对一个具体的两侧转角核，先固定折叠方向与 generator 归一化，比对 strip gap 的 $E_0''(0)$ 和两点 overlap 读出的 $k_{LR}$；再用能量 overlap 看是否需要额外中性传播，而不是强制能量和荷都乘一个 transmission factor。$SU(2)_2$ 的 charged pair 与 neutral Majorana 可作为拆分实验，对照本库 Ising 缝合中的 fermion parity 条件时，必须另行检查选的 spin sector 与边界态；本文没有给多区间 replica spin-structure 的求和公式。以上独立复算了低阶 mode 代数的系数、ANEC 不等式的代数化简、modular ratios 和响应归一化；未从微观模型证明一般散射极限或独立构造所有饱和界面。
