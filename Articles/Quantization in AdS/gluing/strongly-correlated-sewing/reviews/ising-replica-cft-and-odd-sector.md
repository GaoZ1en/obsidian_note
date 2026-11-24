# Ising 双区间 n=2：CFT 独立核对、FH 条件代数与 odd-sector 消失证明

日期：2026-11-07。

**结果。** Full nonchiral Ising CFT 的规范化比值为
\[
 R_2(x)=\frac{1+x^{1/4}+(1-x)^{1/4}}{2(1-x)^{1/8}}.
\]
对下文精确定义的半填充、四弧有限格点 FCS，另有不依赖 Fisher–Hartwig（FH）渐近的估计
\[
 \frac{|T_3|}{T_0}\le C_\eta N^{-\delta},\qquad
 \delta=\frac14-\frac{4\log2-2}{\pi^2}
 =0.171720396193944\ldots>0.
 \tag{0.1}
\]
这里四弧长度比例均有正下界 \(\eta\)，常数允许依赖该下界；该速率不主张最优。

## 0. 证据性质与阶段边界

1. **第一阶段：独立 CFT 核对。** 从题设 \(c_L=c_R=1/2\)、二重覆盖模参数与 Ising torus partition function 出发，未读取主代理本轮推导，独立校准 twist、Weyl 因子、自旋结构比和端点极限。这是 CFT 内部恒等式，不因自身成立就证明格点收敛。
2. **第二阶段：独立 FH 代数。** 给定 scalar multi-jump envelope 后，独立求距离比与整数极小表示。此阶段始终是条件代数，不将广义离散 FH 定理当作已证。
3. **第三阶段：协作完成 odd-sector 证明。** 接受研究任务提供的 exact finite FCS identification 后，构造有限网格近零向量；与主代理给出的 \(T_0\) 谱下界结合，闭合 (0.1)。本阶段有来回交换关键论证，不能冒充整段都是 blind independent review。最终证明采用乘积多项式截断，避开 Darboux 余项、aliasing 级数交换和 FH 定理。
4. 本报告补上的是 \(T_3/T_0\to0\)。其与另外完成的 \(T_0,T_1\) Fredholm 极限、\(T_2\) purification duality 及 exact finite spin/FCS identities 的组合，属于完整 \(n=2\) 格点到 CFT 论证；本报告不重做那些独立部分。一般 \(n\)、合并端点的双标度极限与 \(n\to1\) 交换不由本报告证明。

**Verified:** 下文解析推导；Schwarzian、theta/eta、FH 指数与 chord 恒等式；有限投影、精确 leakage、FCS 模平方、近零试探向量及不等式的 CAS 检查。

**Assumptions:** CFT 部分为无限直线真空；有限格点部分为 \(2N\) auxiliary sites、\(N\) 个连续 NS 占据模、四个连续且比例有正下界的弧、指定 centered FCS phases。centering 仅改变单位模相位。

**Not verified here:** 独立报告承担的其他偶扇区极限与 exact spin/FCS identification；一般 \(n\) 的空间 replica 收敛；最优 odd-sector 衰减指数。

## 1. CFT：twist 权重与几何因子

约定 \(c=c_L=c_R=1/2\)。通常 Rényi 公式中的 \(c\) 是这个单个手征中心荷，不是 \(c_L+c_R=1\)。

\[
 h_n=\frac{c}{24}\left(n-\frac1n\right),\qquad
 h_2=\bar h_2=\frac1{32},\qquad
 \Delta_2=h_2+\bar h_2=\frac1{16}.
\]

因此单区间
\[
 \operatorname{Tr}\rho_{[u,v]}^2
 =c_2\left(\frac{v-u}{\epsilon_{\rm UV}}\right)^{-2\Delta_2}
 =c_2\left(\frac{v-u}{\epsilon_{\rm UV}}\right)^{-1/8}.
\]

设 \(u_1<v_1<u_2<v_2\)，并记
\[
 \ell_1=v_1-u_1,\quad \ell_2=v_2-u_2,\quad
 a=u_2-u_1,\quad b=v_2-v_1,\quad
 d=v_2-u_1,\quad s=u_2-v_1.
\]
则
\[
 x=\frac{\ell_1\ell_2}{ab},\qquad 1-x=\frac{ds}{ab}.
\]
标准四点归一化为
\[
 \operatorname{Tr}\rho_{A_1\cup A_2}^2
 =c_2^2\epsilon_{\rm UV}^{4\Delta_2}
 \left[\frac{ab}{\ell_1\ell_2ds}\right]^{2\Delta_2}F_2(x),
\]
从而
\[
 R_2=(1-x)^{-1/8}F_2(x).
 \tag{1.1}
\]
这里几何指数是 \(1/8\)，不是 \(1/4\) 或 \(1/16\)。

## 2. CFT：Weyl 归一化的独立校准

将 twist 的二点 OPE 系数归一为 1，定义 canonical 四点函数
\[
 \mathcal G(x)=\lim_{z_4\to\infty}|z_4|^{2\Delta_2}
 \langle\mathcal T_2(0)\bar{\mathcal T}_2(x)
 \mathcal T_2(1)\bar{\mathcal T}_2(z_4)\rangle.
\]
在 \(0<x<1\) 上，
\[
 \mathcal G(x)=[x(1-x)]^{-1/8}F_2(x).
\]

覆盖曲线与周期归一化为
\[
 y^2=z(z-1)(z-x),\qquad
 w'(z)=\frac1{4K(x)y},\qquad
 \tau=i\frac{K(1-x)}{K(x)}.
\]
令 \(p(z)=z(z-1)(z-x)\)。Schwarzian 为
\[
 \{w,z\}=\frac38\left(\frac{p'}p\right)^2-\frac12\frac{p''}p.
\]
其在 \(z=x\) 的二阶极点系数为 \(3/8\)，一阶极点系数为
\[
 -\frac14\left(\frac1x+\frac1{x-1}\right).
\]
两张 sheet 的 stress tensor 变换给出
\[
 \langle T_{\rm sum}(z)\rangle
 =2(w')^2\langle T(w)\rangle+\frac c6\{w,z\},\qquad
 \langle T(w)\rangle=2\pi i\,\partial_\tau\log Z.
\]
二阶极点立即给 \(h_2=(c/6)(3/8)=c/16=1/32\)。再用
\[
 \frac{d\tau}{dx}=-\frac{i\pi}{4x(1-x)K(x)^2},
\]
Ward identity 对一阶极点的匹配并连同 antiholomorphic 部分积分，得
\[
 \mathcal G(x)=C[x(1-x)]^{-c/12}Z(\tau).
\]
当 \(x\to0\)，\(q=e^{i\pi\tau}\sim x/16\)，且 vacuum 给
\(Z\sim(16/x)^{c/6}\)。要求 \(\mathcal G\sim x^{-c/4}\) 固定
\[
 C=16^{-c/6}=2^{-1/3}.
\]
故
\[
 \boxed{\mathcal G(x)=2^{-1/3}[x(1-x)]^{-1/24}Z_{\rm Ising}(\tau)},
\]
\[
 \boxed{F_2(x)=\left[\frac{x(1-x)}{16}\right]^{1/12}Z_{\rm Ising}(\tau)}.
 \tag{2.1}
\]
\(-1/24\) 是 canonical 四点函数的 Weyl 指数；不能与 (1.1) 中的几何指数混淆。

## 3. CFT：自旋结构与极限

在正虚轴上 \(\theta_2,\theta_3,\theta_4,\eta\) 为实正数。Jacobi 恒等式为
\[
 \frac{\theta_2}{\theta_3}=x^{1/4},\qquad
 \frac{\theta_4}{\theta_3}=(1-x)^{1/4},\qquad
 2\eta^3=\theta_2\theta_3\theta_4,
\]
而 odd theta constant \(\theta_1(0|\tau)=0\)。题设
\[
 Z_{\rm Ising}=\frac{\theta_2+\theta_3+\theta_4}{2\eta}
\]
与 (2.1) 给出
\[
 F_2(x)=\frac{1+x^{1/4}+(1-x)^{1/4}}2.
\]

相对不含 GSO 权重 \(1/2\) 的 \(\theta_3/\eta\) 参考项，四项为

| 项 | 相对参考项 |
|---|---:|
| \(\theta_3\) | \(1\) |
| \(\theta_2\) | \(x^{1/4}\) |
| \(\theta_4\) | \((1-x)^{1/4}\) |
| \(\theta_1\) | \(0\) |

裸参考项满足 \(F_{2,3}=1\)、\(R_{2,3}=(1-x)^{-1/8}\)；物理 Ising 和式中各项另乘 \(1/2\)。

\[
 F_2(0)=F_2(1)=1,\qquad F_2(x)=F_2(1-x).
\]
\[
 R_2(x)=1+\frac12x^{1/4}+\frac1{16}x^{5/4}
 +\frac1{128}x^2+O(x^{9/4}),\qquad x\to0.
\]
线性 \(x\) 项恰好抵消。令 \(\varepsilon=1-x\)，则
\[
 R_2(x)=\varepsilon^{-1/8}
 \left[1+\frac12\varepsilon^{1/4}-\frac18\varepsilon+O(\varepsilon^2)\right].
\]
在 \(x\to0\) 时，加权 \(\theta_3,\theta_4\) 各趋 \(1/2\)；在 \(x\to1\) 时，加权 \(\theta_3,\theta_2\) 各主导为 \(\frac12\varepsilon^{-1/8}\)，而 \(\theta_4\) 项为 \(\frac12\varepsilon^{1/8}\to0\)。

\[
 R_2(1/2)=1.462257909537300061\ldots.
\]
这些极限是 CFT 内部的陈述；在固定格距下把间隙降至 UV 尺度，不由这些公式控制。

## 4. 独立 FH 代数：定义与 circle chord

本节仅假定 envelope 的形式，不假定离散 determinant 具有该渐近。

令 \(\theta_1<\theta_2<\theta_3<\theta_4<\theta_1+2\pi\)，并定义正的 unit-circle chords
\[
 d_{ij}=|e^{i\theta_i}-e^{i\theta_j}|=2\sin\frac{\theta_j-\theta_i}{2},\quad i<j,
\]
\[
 E_\beta(N)=N^{-S_\beta}\prod_{i<j}d_{ij}^{2\beta_i\beta_j},
 \qquad S_\beta=\sum_i\beta_i^2.
\]
Ptolemy 恒等式给
\[
 d_{13}d_{24}=d_{12}d_{34}+d_{14}d_{23},\qquad
 x=\frac{d_{12}d_{34}}{d_{13}d_{24}},\quad
 1-x=\frac{d_{14}d_{23}}{d_{13}d_{24}}.
 \tag{4.1}
\]
直接验证可令 \(a,b,c\) 为三个连续角间隙之半，使用
\[
 \sin(a+b)\sin(b+c)=\sin a\sin c+\sin b\sin(a+b+c).
\]
不能把 (4.1) 用于任意六个独立距离而不检查循环次序。

### 4.1 三个非退化表示

\[
 \beta_0=\tfrac14(-1,1,-1,1),\quad
 \beta_1=\tfrac14(1,-1,-1,1),\quad
 \beta_2=\tfrac14(-1,-1,1,1).
\]
三者均有 \(S=1/4\)，且
\[
 E_0=N^{-1/4}\left[\frac{d_{13}d_{24}}{d_{12}d_{14}d_{23}d_{34}}\right]^{1/8},
\]
\[
 E_1=N^{-1/4}\left[\frac{d_{14}d_{23}}{d_{12}d_{13}d_{24}d_{34}}\right]^{1/8},\qquad
 E_2=N^{-1/4}\left[\frac{d_{12}d_{34}}{d_{13}d_{14}d_{23}d_{24}}\right]^{1/8}.
\]
因此
\[
 \frac{E_1}{E_0}=(1-x)^{1/4},\qquad
 \frac{E_2}{E_0}=x^{1/4}.
\]
与两个单区间 envelope \(N^{-1/8}d_{12}^{-1/8}\)、\(N^{-1/8}d_{34}^{-1/8}\) 相除，\(E_0\) 给 \((1-x)^{-1/8}\)。这仍只是所假定 FH 形式的代数结果。

### 4.2 odd 表示及所有整数极小表示

\[
 \beta_3=\tfrac14(1,-3,1,1),\qquad S_3=3/4,
\]
\[
 E_3=N^{-3/4}\left[\frac{d_{13}d_{14}d_{34}}{d_{12}^3d_{23}^3d_{24}^3}\right]^{1/8},
\qquad
 \frac{E_3}{E_0}=N^{-1/2}
 \left[\frac{d_{14}d_{34}}{d_{12}d_{23}d_{24}^2}\right]^{1/4}.
\]

对任意 \(n\in\mathbb Z^4\)、\(\sum n_i=0\)，写
\[
 \beta_3+n=\tfrac14\mathbf1+m,\qquad m=n-e_2,\qquad\sum m_i=-1.
\]
则
\[
 \sum_i(\beta_{3i}+n_i)^2=\sum_i m_i^2-\frac14\ge\frac34.
\]
等号当且仅当 \(m=-e_j\)。因此全部四个极小表示恰为
\[
 \beta^{(j)}=\tfrac14\mathbf1-e_j,\qquad n=e_2-e_j,\quad j=1,2,3,4.
\]
非极小表示有 \(S\ge11/4\)，因为 \(\sum m_i^2\equiv\sum m_i\equiv1\pmod2\)。这个 gap 只描述不同整数表示的幂，不排除每个表示内部的其他渐近修正。

各极小表示满足 \(E_{\beta^{(j)}}/E_0=N^{-1/2}r_j\)，其中
\[
\begin{aligned}
 r_1&=\left[\frac{d_{23}d_{34}}{d_{12}d_{14}d_{13}^2}\right]^{1/4},&
 r_2&=\left[\frac{d_{14}d_{34}}{d_{12}d_{23}d_{24}^2}\right]^{1/4},\\
 r_3&=\left[\frac{d_{12}d_{14}}{d_{23}d_{34}d_{13}^2}\right]^{1/4},&
 r_4&=\left[\frac{d_{12}d_{23}}{d_{14}d_{34}d_{24}^2}\right]^{1/4}.
\end{aligned}
\]
统一写法为
\[
 r_j=[x(1-x)]^{1/4}\sqrt{\frac{d_{13}d_{24}}{\prod_{k\ne j}d_{jk}}}.
\]

若另采用纯 jump 的标准 Barnes 因子
\(C_\beta=\prod_jG(1+\beta_j)G(1-\beta_j)\)，则前三者常数相同，四个 odd 极小表示也彼此相同，且
\[
 \frac{C_3}{C_0}
 =\frac{G(7/4)G(1/4)}{G(5/4)G(3/4)}
 =\frac{\Gamma(3/4)}{\Gamma(1/4)}.
\]
实际 determinant 的广义 FH 表示还需保留四项各自的振荡相位；envelope 的正和不是实际 determinant。前三者的 spread 为 \(1/2\)，而 odd 的极小表示 spread 为 1，不能套用 spread \(<1\) 的单表示结论。

尺度约定也必须固定：若把 \(d\) 统一放大 \(\lambda\)，由于 \(\sum\beta_i=0\)，距离积已经带来 \(\lambda^{-S_\beta}\)。物理 chord 内若已包含大长度尺度，不应再次重复乘同一个尺度的 \(N^{-S_\beta}\)。从 \(d=\sin\) 改成 \(d=2\sin\) 对前两个比抵消，对 odd 比乘 \(2^{-1/2}\)；反向改变则乘 \(2^{1/2}\)。

## 5. 不用 FH 的有限格点 odd-sector 定理

### 5.1 有限对象、规范与命题

令 \(L=2N\)，\(z_s=e^{2\pi i s/L}\)，\(s=0,\ldots,L-1\)。采用归一化离散内积
\[
 \langle u,v\rangle_L=\frac1L\sum_s\overline{u_s}v_s.
\]
令 \(P\) 是到 \(\operatorname{span}\{1,z,\ldots,z^{N-1}\}\) 的正交投影，\(Q=1-P\)。半填充 NS 占据的 \(N\) 个连续 Fourier 模，可用一个与所有位置对角矩阵对易的对角 unitary gauge 变换成此形式，故下面的 compression determinants、奇异值和 kernel 模不变。

圆周四弧按 \((A_1,B,A_2,C)\) 排列。各弧 auxiliary 长度至少 \(\eta L\)，并各为连续格点集合。题设每 physical site 对应两个 auxiliary sites；证明本身不额外使用弧长为偶数。

定义
\[
 g_3=(i,-1,-i,1),\qquad g_0=(i,1,i,1)
\]
在四弧上的分段常值 profile，\(D_g\) 为乘法矩阵，并记
\[
 M_g=(PD_gP)|_{\operatorname{Ran}P}.
\]
exact centered FCS identification 给
\[
 |T_3|=|\det M_{g_3}|,\qquad
 T_0=|\det M_{g_0}|=|\chi_A(\pi/2)|,\quad A=A_1\cup A_2.
\]
centering 因子为单位模，故不进入下列界。

**命题。** 在这些有限格点定义和固定分离条件下，存在 \(C_\eta\) 使 (0.1) 对充分大的 \(N\) 成立。此命题不假设任何 scalar、generalized 或 discrete FH 渐近。

### 5.2 精确 quarter-turn 分解

把四个 jump 点 \(\zeta_j\) 放在相应 auxiliary bond 的 midpoint。于是
\[
 \zeta_j^L=-1,
\]
且没有奇点落在采样点上。定义 disk 内解析分支
\[
 h_j(z)=(1-z/\zeta_j)^{-1/4},\quad h_j(0)=1,\qquad
 f(z)=\prod_{j=1}^4h_j(z).
\]
当 \(\theta\) 正向越过 \(\arg\zeta_j\)，\(\arg h_j(e^{i\theta})\) 跳 \(+\pi/4\)。在不含 jump 的弧上，\(\partial_\theta\arg f=-1/2\)。因此
\(z f/\bar f\) 在每弧常值，经过每个 jump 恰乘 \(i\)，且模长为 1。存在 \(|c|=1\) 使所有样点上精确成立
\[
 g_3=c\,z\frac f{\bar f},\qquad
 \overline{g_3}f=\bar c\,z^{-1}\bar f.
 \tag{5.1}
\]
这一步是显式分支计算，不是把 winding 直觉当作 index theorem。

### 5.3 乘积截断的离散误差界

写
\[
 h_j(z)=\sum_{n=0}^\infty a_n(z/\zeta_j)^n,\qquad
 a_n=\frac{(1/4)_n}{n!}.
\]
\(a_n\) 正、单调递减，且 \(a_n\le C(n+1)^{-3/4}\)。对 \(|z|=1,z\ne\zeta_j\)，Dirichlet 求和给
\[
 |h_j(z)-h_{j,m}(z)|
 \le\frac{C m^{-3/4}}{|z-\zeta_j|},\qquad
 h_{j,m}(z)=\sum_{n=0}^m a_n(z/\zeta_j)^n.
 \tag{5.2}
\]
这里 boundary series 在非奇点处收敛，等于 disk 解析分支的径向边界值。

取
\[
 m=\left\lfloor\frac{N-1}{4}\right\rfloor,\qquad
 p_N(z)=\prod_{j=1}^4h_{j,m}(z).
\]
则 \(\deg p_N\le N-1\)，\(p_N(0)=1\)。固定分离保证任一点至多接近一个 \(\zeta_j\)。远离所有根时，每个 \(h_j,h_{j,m}\) 一致有界。靠近 \(\zeta_j\) 时，将乘积之差写成
\[
 f-p_N=(h_j-h_{j,m})\prod_{k\ne j}h_k
 +h_{j,m}\left(\prod_{k\ne j}h_k-\prod_{k\ne j}h_{k,m}\right).
\]
用 (5.2) 及
\[
 |h_{j,m}|\le|z-\zeta_j|^{-1/4}
 +C m^{-3/4}|z-\zeta_j|^{-1},
\]
得一致点态界
\[
 |f(z)-p_N(z)|\le C_\eta m^{-3/4}
 \sum_{j=1}^4|z-\zeta_j|^{-1}.
 \tag{5.3}
\]
对 midpoint 的精确有限和为
\[
 \sum_{s=0}^{L-1}|z_s-\zeta_j|^{-2}
 =\frac{L^2}{4}=N^2.
 \tag{5.4}
\]
例如可由 \(\sum_{s=0}^{L-1}\csc^2(t+s\pi/L)=L^2\csc^2(Lt)\) 在 \(t=\pi/(2L)\) 得到。因而
\[
 \|f-p_N\|_L^2\le C_\eta m^{-3/2}N
 \le C_\eta N^{-1/2},\qquad
 \|f-p_N\|_L\le C_\eta N^{-1/4}.
 \tag{5.5}
\]
这直接估计有限样点误差，不需要 Fourier aliasing 的条件级数交换。

### 5.4 有限 compression 的近零奇异向量

定义反线性等距映射
\[
 (Ju)(z_s)=z_s^{-1}\overline{u(z_s)}.
\]
它精确把模式 \(z^k\)、\(0\le k<N\)，送到 \(z^{L-1-k}\)，故交换 \(\operatorname{Ran}P\) 与 \(\operatorname{Ran}Q\)。特别地 \(PJp_N=0\)。由 (5.1)，
\[
 PD_{\bar g_3}p_N
 =PD_{\bar g_3}(p_N-f)+\bar c\,PJ(f-p_N).
\]
因此
\[
 \|PD_{\bar g_3}p_N\|_L\le2\|f-p_N\|_L
 \le C_\eta N^{-1/4}.
\]
离散 Fourier 正交性与 \(p_N(0)=1\) 给
\[
 \|p_N\|_L^2=\sum_{k=0}^{\deg p_N}|(p_N)_k|^2\ge1.
\]
故
\[
 s_{\min}(M_{g_3})=s_{\min}(M_{g_3}^*)\le C_\eta N^{-1/4}.
 \tag{5.6}
\]
所有步骤均在有限 \(2N\) 网格上完成。

### 5.5 精确 leakage 关系

对任意单位模 profile，定义
\[
 \mathcal L_g=\operatorname{Tr}(PD_g^*QD_gP)
 =\sum_{k=1}^N(1-s_k(M_g)^2).
\]
有限矩阵恒等式为
\[
 \mathcal L_g=\frac12\sum_{r,s}|P_{rs}|^2|g_r-g_s|^2.
 \tag{5.7}
\]
令 \(K_A\) 是 \(P\) 限制到 \(A\) 的 correlation matrix，并记
\[
 V_A=\operatorname{Var}(N_A)
 =\operatorname{Tr}K_A(1-K_A)
 =\sum_{r\in A,s\notin A}|P_{rs}|^2.
\]
对 \(g_0\)，\(\mathcal L_0=2V_A\)。比较四弧的六类 pair，四类相邻弧均有 \(|\Delta g_3|^2=|\Delta g_0|^2=2\)；两类对弧 \((A_1,A_2)\)、\((B,C)\) 则从 0 变成 4。故精确地
\[
 \boxed{\mathcal L_3
 =2V_A+4\|P_{A_1,A_2}\|_{\rm HS}^2
       +4\|P_{B,C}\|_{\rm HS}^2\ge2V_A.}
 \tag{5.8}
\]
这不是 asymptotic，也不要求 cross-block kernels 彼此相邻时为 HS；这里两个附加 cross blocks 恰为固定分离的对弧。

### 5.6 variance 与 leakage 的对数系数

在 NS gauge 前后，kernel 模相同。对于非零差 \(d=r-s\)（按周期理解），
\[
 |P_{rs}|=
 \begin{cases}
 [2N|\sin(\pi d/(2N))|]^{-1},&d\text{ 为奇数},\\
 0,&d\text{ 为偶数}.
 \end{cases}
\]
取 \(d\le c_\eta N\)，小于所有弧长。每个 \(A/A^c\) 边界在给定正距离 \(d\) 有恰 \(d\) 对跨界格点，四个边界互不重复计数。并且一致地
\[
 \frac1{4N^2\sin^2(\pi d/(2N))}
 =\frac1{\pi^2d^2}+O_\eta(N^{-2}).
\]
所以短距离部分给
\[
 V_A=\frac4{\pi^2}\sum_{\substack{1\le d\le c_\eta N\\d\ \mathrm{odd}}}\frac1d+O_\eta(1)
 =\frac2{\pi^2}\log N+O_\eta(1).
 \tag{5.9}
\]
其余 cross pairs 的圆周距离为 \(\Omega_\eta(N)\)，各 kernel 平方为 \(O_\eta(N^{-2})\)，总贡献为 \(O_\eta(1)\)。同一理由给 (5.8) 两个对弧 HS 平方为 \(O_\eta(1)\)，从而
\[
 \mathcal L_3=\frac4{\pi^2}\log N+O_\eta(1).
\]
因此 leakage 的系数确为 \(4/\pi^2\)，不是 variance 的 \(2/\pi^2\)。

### 5.7 不借 absolute FH 的上下界闭合

若 \(\lambda\in[0,1]\) 是 \(K_A\) 的本征值，令 \(u=\lambda(1-\lambda)\in[0,1/4]\)。精确 FCS 模平方为
\[
 T_0^2=\det[1-2K_A(1-K_A)].
\]
凹函数 \(\log(1-2u)\) 位于其端点弦上方，因此
\[
 \log(1-2u)\ge-4(\log2)u,
 \qquad T_0\ge e^{-2(\log2)V_A}>0.
 \tag{5.10}
\]

对 \(M_{g_3}\)，令 \(s_1\le\cdots\le s_N\le1\)。若 \(s_1=0\)，结论立即成立；否则使用 \(\log s\le-(1-s^2)/2\)，
\[
 |\det M_{g_3}|
 \le s_1\exp\left[-\frac12\sum_{k=2}^N(1-s_k^2)\right]
 \le e^{1/2}s_1e^{-\mathcal L_3/2}.
\]
结合 (5.6)、(5.8)、(5.10)，
\[
 \frac{|T_3|}{T_0}
 \le C_\eta N^{-1/4}\exp[(2\log2-1)V_A].
\]
最后代入 (5.9)，即得
\[
 \frac{|T_3|}{T_0}
 \le C_\eta N^{-1/4+(4\log2-2)/\pi^2}
 =C_\eta N^{-\delta}\longrightarrow0.
\]
这就证明了命题。**此处已不再是第 4 节的 FH 条件推断。** 特别没有假定 \(T_0\sim cN^{-1/4}\)。

## 6. 实际 CAS 核验与复现

程序：[ising_odd_sector_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_odd_sector_checks.wl>)。程序自含定义，向 stdout 打印 Markdown，不导出 JSON，也不改研究笔记。复现方式：

```wolfram
Get["/Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_odd_sector_checks.wl"]
```

2026-11-07 实际运行：**47 项断言全部 PASS，Wolfram messages 为 `{}`，最终返回 `PASS`。**

- CFT：精确检查 twist、Schwarzian 两个极点、crossing 和两个端点展开；以独立 eta 乘积 \(q^{1/12}\prod_{m\ge1}(1-q^{2m})\) 检查 theta/Weyl 关系。
- FH：精确检查四个 squared norms、六个 pair exponents、四个最小表示的距离比与 Ptolemy 恒等式。有限 shift box 只作交叉检查；极小表示的完备性由第 4 节的整数平方和证明承担。
- 有限网格：检查相位分解、midpoint 平方倒数和、\(J\) 交换 occupied/empty halves、试探向量范数与 residual 界、精确 leakage (5.8)、FCS 模平方及三个 determinant 不等式。

CFT 数值输入精度为 60 位；在 \(x=10^{-4},0.1,0.5,0.9,1-10^{-4}\) 上，theta/eta/Weyl/\(\tau'\) 最大残差均小于 \(10^{-45}\)，实际精度约为 \(10^{-52}\) 或更小。

有限网格采用弧比例 \((1/5,1/4,3/10,1/4)\)，矩阵输入 35 位，奇异值计算 25 位：

| \(N\) | \(\|f-p_N\|_L\) | \(s_{\min}\) | trial residual / norm | \(\mathcal L_3\) | \(V_A\) | \(|T_3|/T_0\) |
|---:|---:|---:|---:|---:|---:|---:|
| 20 | 0.249207075482 | 0.166610461446 | 0.313589056627 | 1.945941302184 | 0.832010678164 | 0.265173849758 |
| 40 | 0.194421227759 | 0.116509837197 | 0.248595985523 | 2.227077717402 | 0.972902511197 | 0.189419985787 |
| 80 | 0.202405535852 | 0.081809608105 | 0.236222790541 | 2.508053622762 | 1.113473968891 | 0.134589525982 |

相位关系和 (5.8) 的 residual 约为 \(10^{-32}\)；程序统一采用 \(10^{-25}\) 的通过阈值。样点误差无需随每个有限 \(N\) 单调下降；定理要求的是一致 \(O(N^{-1/4})\) 界。有限表格只核查实现及归一化，不承担极限证明。

## 7. 适用范围与未解决之处

- odd-sector 消失是针对指定 half-filled finite FCS 的解析定理，不依赖 CFT 目标式，也不依赖第 4 节的 FH 猜测。
- 常数在固定分离的四弧配置上可一致控制；任一弧缩至 UV 尺度时，分支点分离和 variance 的一致估计必须重新处理。
- 本报告的 exact finite FCS identification 作为题设输入；完整 Ising spin replica 定理需与其已另证的有限代数及三个偶扇区极限一起引用。
- 不据此宣称一般 \(n\) 已证，不据此交换 \(n\to1\) 与 cutoff limit，也不把有界 \(n=2\) replica ratio 误称为全部强关联 quantum sewing 的一般定理。
