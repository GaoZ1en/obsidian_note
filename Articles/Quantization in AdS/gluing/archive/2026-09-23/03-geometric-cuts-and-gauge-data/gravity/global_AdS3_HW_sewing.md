# Global AdS₃ 的直径切分：Harlow–Wu 协变相空间、区域模式与透明粘合

**范围：** 三维纯 Einstein 引力，负宇宙常数，Brown–Henneaux 外边界条件，global AdS₃ 的光滑真空扇区；求解线性化场空间、其完整预辛结构及自由量子能谱。
**日期：** 2026-09-14。
**约定：** 时空号差 $(-++)$，$G>0,\ell>0$，$\hbar=1$，$\Omega=\delta\theta$，$\iota_{X_F}\Omega=-\delta F$，$\{F,G\}=dF(X_G)$。

---

## 0. 结果及其精确范围

这个模型可以做成一个明确的、作用量先行的 timelike sewing 基准。本文选择的区域边界条件是：**在人工界面上固定 Brown–York 动量密度，而不是固定诱导度规。** 固定为零时，界面是全测地的；每个半区是一个独立的反射问题。随后把两份相反取向的动量源识别为同一个变量，再在区域作用量之和中释放它。

由此得到：

$$\begin{align}
\boxed{ \omega_n=\frac n\ell,\qquad n=2,3,\ldots, \qquad\text{粘合后每个 }n\text{ 有两个独立物理模式。}
}
\tag{0.1}
\end{align}$$

每个**零源的闭合半区**只有一组反射模式。两份闭合半区直接匹配仍只得到反射偶扇区；另一组全局模式来自**打开界面后的非零响应**。因此不能把两份闭合区域的振子直接改名为左右运动的全局振子。

在全局正频 Fock 表示中，正规序的自由 Hamiltonian 为

$$\begin{align}
\boxed{ H^{(2)}=\frac1\ell\sum_{n=2}^{\infty} n\big(a_n^\dagger a_n+\bar a_n^\dagger\bar a_n\big).
}
\tag{0.2}
\end{align}$$

如果以经典重整化 Brown–York 真空能作为能量零点的绝对约定，则

$$\begin{align}
E_{\mathrm{AdS}}=-\frac1{8G},\qquad E=E_{\mathrm{AdS}}+\frac1\ell\sum_{n\ge2}n(N_n+\bar N_n). \tag{0.3}
\end{align}$$

这里的绝对真空能采用树级约定；本文没有计算量子反项或中心荷重整化。谱差与自由振子计数不依赖这个加法常数。

本文同时保留三种不同层次：

| 层次 | 本文得到的结果 |
|---|---|
| 场与作用量 | 独立的区域变分问题；全部光滑线性解的参数化；界面释放导出的传输条件 |
| CPS 与可观测量 | 保留退化方向的预辛粘合；物理边界引力子的正规 Hamiltonian 多项式/CCR 核心比较 |
| 表示与能谱 | 粘合后选择全局时间的正频表示，得到两组 $n\ge2$ 振子 |

**不把以上结果称为完整非微扰 AdS₃ 量子引力、任意 regional operator algebra 的重构定理，或任意区域态的量子粘合定理。** BTZ、锥缺陷、拓扑求和、额外 brane matter、Wick 复合算符与相互作用重整化不在本模型中。

### 与 Gluing 工作区的接口

本文采用工作区的“独立区域作用量—规定界面 history—释放共同 history—比较独立全局理论”的顺序。区域构造和 sewing 中**不对 gauge 方向取商**；模式归一化只在已经识别出的非退化 Hamiltonian 子代数上进行。退化方向继续作为完整预相空间中的方向保留。

所读取的仓库文件及 Research Radar 条目列在文末。仓库 `main` 在读取时未锁定 commit；本文是一个独立输出文件，没有修改仓库。

---

## 1. 先固定理论，而不是先猜模式

### 1.1 全局背景和外边界条件

取 universal cover 的 global AdS₃：

$$\begin{align}
d\bar s^2=\ell^2\left[-\cosh^2\rho\,d\tau^2+d\rho^2 +\sinh^2\rho\,d\phi^2\right], \quad \tau\in\mathbb R,\quad \rho\ge0,\quad\phi\sim\phi+2\pi, \quad t=\ell\tau. \tag{1.1}
\end{align}$$

空间拓扑是 disk，没有 puncture、内边界或缺陷。外边界固定共形度规

$$\begin{align}
g^{(0)}=-d\tau^2+d\phi^2. \tag{1.2}
\end{align}$$

允许的扰动满足 Brown–Henneaux 衰减；不允许改变外边界度规的非正规源，也不加入 logarithmic modes。这里的“Cauchy surface”指**指定 AdS 外边界条件之后**的初边值问题，而不是说没有边界条件的裸 AdS 是 globally hyperbolic。

全局作用量为

$$\begin{align}
S_M=\frac1{16\pi G}\int_M\sqrt{-g} \left(R+\frac2{\ell^2}\right)d^3x +\frac1{8\pi G}\int_{B_\infty}\sqrt{-\gamma} \left(K-\frac1\ell\right)d^2y. \tag{1.3}
\end{align}$$

积分按通常的渐近截断、加反项、去截断次序理解。时间初末面的变分保留为 CPS potential。若另加时间端点泛函，应同步改变 $\theta$，而不是改变 bulk equations 或擅自删除 corner 项。

### 1.2 切分和一个容易误判的“角点”

令

$$\begin{align}
R_A:\ 0\le\phi\le\pi, \qquad R_B:\ \pi\le\phi\le2\pi. \tag{1.4}
\end{align}$$

它们的共同人工边界为

$$\begin{align}
\Gamma=\{\phi=0\}\cup\{\phi=\pi\}.
\end{align}$$

**这不是两张互不相关的 timelike 边界。** 它们在 $\rho=0$ 连成一张光滑 timelike AdS₂。用有符号坐标

$$
s=\begin{cases}\rho,&\phi=0,\\-\rho,&\phi=\pi,\end{cases}
$$

得到

$$\begin{align}
d\bar s_\Gamma^2=\ell^2\left[-\cosh^2s\,d\tau^2+ds^2\right], \qquad -\infty<s<\infty, \qquad \bar K_{ab}=0. \tag{1.5}
\end{align}$$

所以 $s=0$ 不是额外的物理 corner，也不是允许放置独立振子的 junction。所有数据在那里必须是同一光滑场的迹。

真正需要处理的空间 joints 是人工边界与渐近外边界相交的两条 timelike worldlines。它们对应外边界上的 $\phi=0,\pi$。

### 1.3 正则性与扇区

场在中心的正则性用

$$\begin{align}
X=\sinh\rho\cos\phi,\qquad Y=\sinh\rho\sin\phi \tag{1.6}
\end{align}$$

这样的正规坐标判断，不能用极坐标分量“看起来有限”代替。在各区域的闭包上采用光滑场，渐近端满足固定的 Brown–Henneaux 展开。

界面 histories 必须是这些区域场的**联合迹**：包括中心的光滑连接、两个外端点的兼容性、时间导数和必要的 normal/tangential jets。不能把两条半径上的任意函数、两个外端点的数据和初始数据独立相乘。

本文始终停留在 AdS 真空的光滑 disk 扇区。稍后将直接检验它如何排除看似允许的 $n=0,\pm1$ 应力扰动。

---

## 2. Harlow–Wu 变分公式和区域作用量

### 2.1 Einstein 引力的边界变分

令 $h_{\mu\nu}=\delta g_{\mu\nu}$。采用 [HW] 的 Einstein–Hilbert potential：

$$\begin{align}
\Theta(g;h)=\theta^\mu(g;h)\,\iota_{\partial_\mu}\epsilon, \qquad \theta^\mu=\frac1{16\pi G} \left(\nabla_\nu h^{\mu\nu}-\nabla^\mu h\right), \quad h=g^{\mu\nu}h_{\mu\nu}. \tag{2.1}
\end{align}$$

对 outward spacelike unit normal $n$，令 $\gamma$ 是 timelike 边界的诱导度规。GHY 项满足

$$\begin{align}
\left.(\Theta+\delta\ell_D)\right|_\Gamma =\pi^{ab}\delta\gamma_{ab}\,d^2y+dC, \tag{2.2}
\end{align}$$

其中

$$\begin{align}
\boxed{ \pi^{ab}=\frac{\sqrt{-\gamma}}{16\pi G} \left(K\gamma^{ab}-K^{ab}\right), \qquad C=\iota_c\epsilon_\Gamma, \qquad c^\mu=-\frac1{16\pi G}\gamma^{\mu\nu}n^\alpha h_{\nu\alpha}.
}
\tag{2.3}
\end{align}$$

这里 $\pi^{ab}$ 是与**协变**诱导度规 $\gamma_{ab}$ 配对的张量密度；若改用逆度规作坐标，动量符号会相应改变。

特别注意：$\bar K=0$ 不意味着 $C=0$。$C$ 含有 mixed normal–tangential 扰动，不能因为背景全测地就先删掉它。

### 2.2 固定动量源的独立区域理论

先为单个区域定义带人工 Dirichlet GHY 项的作用量

$$\begin{align}
S_{D,i}=\frac1{16\pi G}\int_{R_i}\sqrt{-g} \left(R+\frac2{\ell^2}\right) +\frac1{8\pi G}\int_{\Gamma_i}\sqrt{-\gamma}\,K +\frac1{8\pi G}\int_{B_i}\sqrt{-\gamma}\left(K-\frac1\ell\right) +S_{\mathrm{joint},i}. \tag{2.4}
\end{align}$$

**人工界面上没有 $-1/\ell$ 反项。** 那个反项只属于真实的渐近外边界；在两份人工边界上都加它，会在粘合后留下错误的界面张力。

对规定的外部张量密度 history $p_i^{ab}$，取

$$\begin{align}
\boxed{ S_i[g_i;p_i]=S_{D,i}[g_i] -\int_{\Gamma_i}p_i^{ab}\gamma_{i,ab}\,d^2y.
}
\tag{2.5}
\end{align}$$

其变分在人工面上为

$$\begin{align}
\delta S_i=\int_{R_i}E^{\mu\nu}\delta g_{\mu\nu} +\int_{\Gamma_i}(\pi_i^{ab}-p_i^{ab})\delta\gamma_{i,ab} -\int_{\Gamma_i}\gamma_{i,ab}\delta p_i^{ab} +\theta_i^f-\theta_i^i. \tag{2.6}
\end{align}$$

因此在每个区域内先固定 $p_i$，同时允许 $\gamma_i$ 变化，得到

$$\begin{align}
R_{\mu\nu}+\frac2{\ell^2}g_{\mu\nu}=0, \qquad \pi_i^{ab}=p_i^{ab}\quad\text{on }\Gamma_i. \tag{2.7}
\end{align}$$

这就是本文的区域理论；它没有通过限制某个全局模式空间来定义。

当 $p_i=0$ 时，在二维人工边界上取迹得到 $K=0$，继而

$$\begin{align}
\boxed{K_{ab}=0.} \tag{2.8}
\end{align}$$

时间平移保持这个零源边界问题，因而可以讨论其自主的正常模式。

**与 Neumann 半 GHY 作用量的关系。** 若把 Neumann trace 条件 $\pi=p$ 直接写进允许场类，Legendre 形式是

$$\begin{align}
S_N=S_D-\int\pi^{ab}\gamma_{ab}.
\end{align}$$

由于在三维 bulk 中

$$\begin{align}
\pi^{ab}\gamma_{ab}=\frac{\sqrt{-\gamma}}{16\pi G}K,
\end{align}$$

人工面的净系数成为半个 GHY。这与 [NR] 一致。本文使用 (2.5) 的外部源形式，是因为它把区域边界方程和随后释放源的变分都写得更直接；不能把“在 Neumann trace 类上等价”误说成两个不加条件的 off-shell 泛函处处相同。

### 2.3 Joints 的具体约定

在渐近截断面与人工面相交的 timelike joint 上，两个法向量张成正定平面。用按 outward 取向定义的外转角 $\alpha$，取

$$\begin{align}
S_{\mathrm{joint},i} =\frac1{8\pi G}\sum_{P,Q}\int\sqrt{-\sigma} \left(\alpha_i-\frac\pi2\right)d\tau. \tag{2.9}
\end{align}$$

其符号也可以操作性地定义为：把折角以小圆弧平滑化，取该圆弧 GHY 积分的极限。减去 $\pi/2$ 选定了本模型的可加参考常数。

这个项必须**先变分再取背景值**。尽管背景 $\alpha_i=\pi/2$，其中的 $\delta\alpha_i$ 正好参与消去相邻 faces 的 joint variation。渐近共形 joint 度规固定；正规扰动导致 $\delta\sqrt{-\sigma}=O(e^{-\rho_c})$，相应剩余项在去截断时消失。

粘合后外边界在 joint 处光滑，有

$$\begin{align}
\alpha_A+\alpha_B=\pi, \qquad (\alpha_A-\pi/2)+(\alpha_B-\pi/2)=0. \tag{2.10}
\end{align}$$

所以没有残留的人工 corner 张力。时间初末面上的 corner contribution 则完整留在下面的 $\theta_i$；额外选择的时间端点 action 只产生对应的 $\delta$-exact potential shift。

### 2.4 预相空间与 History 响应

以 $\widetilde{\mathcal S}_i[p_i]$ 表示满足区域方程、给定 source 和上述联合迹条件的解空间，**不取 gauge 商**。Harlow–Wu potential 和预辛形式是

$$\begin{align}
\theta_i=\int_{\Sigma_i}\Theta-\int_{\partial\Sigma_i}C, \qquad \boxed{\Omega_i=\delta\theta_i.} \tag{2.11}
\end{align}$$

真实外边界部分按 (1.3) 重整化，空间 joints 按 (2.9) 处理。

在整个“解—source”关系上，而不只在某一固定 source fibre 上，on-shell variation 为

$$\begin{align}
\delta S_{i,\mathrm{on}}=\theta_i^f-\theta_i^i+\Lambda_i, \qquad \boxed{\Lambda_i=-\int_{\Gamma_i}\gamma_{i,ab}\,\delta p_i^{ab}.} \tag{2.12}
\end{align}$$

于是

$$\begin{align}
\boxed{ \Omega_i^f-\Omega_i^i=-\delta\Lambda_i =-\int_{\Gamma_i}\delta p_i^{ab}\wedge\delta\gamma_{i,ab}.
}
\tag{2.13}
\end{align}$$

固定 source 时右边为零；允许 source 变化时一般不为零。$\Lambda_i$ 的系数还依赖区域初始解，不是独立于理论定义的新输入，也不是只依赖 $p_i$ 的一个普适单值函数。

---

## 3. 全部区域线性解，以及显式界面响应

### 3.1 为什么所有解都可以用一个向量场描述

线性方程是

$$\begin{align}
\delta R_{\mu\nu}+\frac2{\ell^2}h_{\mu\nu}=0. \tag{3.1}
\end{align}$$

三维 Riemann 张量由 Ricci 张量决定，因此纯 Einstein 解局部具有常曲率。在无缺陷、可缩区域上，每个光滑线性扰动可以写为

$$\begin{align}
\boxed{h_{\mu\nu}=\mathcal L_\xi\bar g_{\mu\nu}.} \tag{3.2}
\end{align}$$

这不意味着所有扰动都应删掉：$\xi$ 在真实外边界的非平凡值可产生 Brown–Henneaux charges；在人工面上的值也需要按具体 source 问题处理。

一种验证完整性的方式是引入辅助的平坦联络 $A^\pm=\omega\pm e/\ell$。线性 Einstein 方程等价于相应的线性平坦性。可缩区域内 $\delta A^\pm=D\lambda^\pm$，再用可逆 triad 把平移部分写成 diffeomorphism。这里仅用它证明参数化的完整性，**辛结构仍从 metric 的 Harlow–Wu action 导出**，没有把 CS 的边界极化偷换进来。

向量场参数化本身有有限维冗余：给 $\xi$ 加一个背景 Killing vector 不改变 $h$。这是同一 metric variation 的两种写法，不是对非零 metric perturbations 取 gauge 商。

### 3.2 切面的切向和法向数据

在人工面上分解

$$\begin{align}
\xi|_{\Gamma_i}=\zeta_i+f_i n_i, \qquad n_i\cdot\zeta_i=0. \tag{3.3}
\end{align}$$

设 $D_a$ 是 (1.5) 的 Levi–Civita 导数。由于背景 $\bar K_{ab}=0$，诱导度规和外曲率的线性变化为

$$\begin{align}
\boxed{ q_{i,ab}:=h_{ab}|_\Gamma=2D_{(a}\zeta_{i,b)}, } \tag{3.4}
\end{align}$$

$$\begin{align}
\boxed{ \delta K_{i,ab}=-D_aD_bf_i+\frac1{\ell^2}\bar\gamma_{ab}f_i, \qquad \delta K_i=-D^2f_i+\frac2{\ell^2}f_i.
}
\tag{3.5}
\end{align}$$

所以线性动量响应为

$$\begin{align}
\boxed{ p_i^{ab}= \frac{\sqrt{-\bar\gamma}}{16\pi G} \left[D^aD^bf_i-\bar\gamma^{ab}D^2f_i +\frac1{\ell^2}\bar\gamma^{ab}f_i\right].
}
\tag{3.6}
\end{align}$$

式 (3.4)–(3.6) 是这个模型里具体的界面关系；不是“也许需要一个 edge mode”的占位符。$f_i$ 记录 cut 在局部 AdS development 中的法向相对位移，$\zeta_i$ 记录切向重参数化。它们是已有 metric solution 的参数，不另加 brane kinetic action。

还要保留 $\xi$ 的完整 collar jet：只给出 $f,\zeta$ 的点值不足以计算任意 mixed metric 分量或验证 $C$ 的粘合。

### 3.3 数据约束不是任意 Tensor Histories

(3.6) 自动满足线性 Codazzi 条件

$$\begin{align}
D_a\left(\frac{p_i^{ab}}{\sqrt{-\bar\gamma}}\right)=0. \tag{3.7}
\end{align}$$

因为

$$\begin{align}
D_aD^aD^bf-D^bD^2f=R^b{}_cD^cf=-\ell^{-2}D^bf.
\end{align}$$

它的迹为

$$\begin{align}
\frac{16\pi G}{\sqrt{-\bar\gamma}}\bar\gamma_{ab}p_i^{ab} =-D^2f_i+\frac2{\ell^2}f_i. \tag{3.8}
\end{align}$$

诱导度规则满足 $\delta R[\bar\gamma;q_i]=0$。这些是 on-shell constraints，不能把任意三分量函数 $p^{ab}(\tau,s)$ 都宣称为可实现的 source。

本文的可实现 source 类可以直接、区域性地规定为：存在光滑的区域向量场 $\xi_i$，其外边界满足 Brown–Henneaux 条件，其人工边界数据按 (3.3)–(3.6) 给出，并满足全部 joint jets。给定这样的 $\xi_i$，(3.2) 就构造了对应区域解。

反过来，3.1 的完整性保证每个区域线性解都被这个参数化覆盖。这个描述给出的是**实际的光滑解/history 关系**，不是未经证明的任意-history Sobolev 初边值适定性声明。

### 3.4 响应算子的核必须保留

零动量条件给出

$$\begin{align}
D_aD_bf=\ell^{-2}\bar\gamma_{ab}f. \tag{3.9}
\end{align}$$

其光滑解恰为

$$\begin{align}
\boxed{ f=A\cosh s\cos\tau+B\cosh s\sin\tau+C\sinh s.
}
\tag{3.10}
\end{align}$$

完整性可由“$f$ 和 $D_af$ 在一点的三个初始值，借 (3.9) 沿曲线唯一运输”看出。这三个函数正是相应 ambient AdS isometries 在切面上的法向分量。

因此可通过给 $\xi$ 加一个不改变 $h$ 的背景 Killing vector，选择 $f=0$ 的参数代表。**不能用伪逆把这些核方向不加说明地设置成零。** 这里能选择代表，是因为明确知道它们属于 $\xi\mapsto h$ 的 Killing 冗余。

一个对照说明了为什么本文不直接选 Dirichlet 半区：在全测地背景上，$q_{ab}=0$ 对法向函数 $f(\tau,s)$ 没有线性限制，而其外曲率响应一般不为零。只检查 Dirichlet pullback、然后宣布得到了一个完整离散振子谱，会漏掉这个退化/边界响应问题。本文用 (2.7) 的 Neumann 问题避免以这种不充分的检查定义区域模式空间。

### 3.5 给定动量 Source 后，怎样实际重建法向响应

(3.6) 不必留作一个未求解的二阶方程。定义

$$\begin{align}
\mathcal P_{ab}:=\frac{16\pi G}{\sqrt{-\bar\gamma}} \bar\gamma_{ac}\bar\gamma_{bd}p^{cd},\qquad \mathcal P=\bar\gamma^{ab}\mathcal P_{ab},\qquad T_{ab}=\mathcal P_{ab}-\bar\gamma_{ab}\mathcal P. \tag{3.11}
\end{align}$$

令 $v_a=D_af$。原方程等价于一个三分量的一阶输运系统：

$$\begin{align}
D_af=v_a,\qquad D_av_b=\ell^{-2}\bar\gamma_{ab}f+T_{ab}. \tag{3.12}
\end{align}$$

在 $y=(\tau,s)$ 坐标中，写 $w=(f,v_\tau,v_s)^T$，以及

$$
b_a=(0,T_{a\tau},T_{as})^T,\qquad
W(\tau,s)=
\begin{pmatrix}
\cosh s\cos\tau&\cosh s\sin\tau&\sinh s\\
-\cosh s\sin\tau&\cosh s\cos\tau&0\\
\sinh s\cos\tau&\sinh s\sin\tau&\cosh s
\end{pmatrix}.
\tag{3.13}
$$

$W$ 的三列就是 (3.10) 及其两个导数；$\det W=\cosh s>0$。对满足 Codazzi 的光滑 source，有

$$\begin{align}
\boxed{ w(y)=W(y)\left[ \alpha+\int_{y_0}^{y}W(y')^{-1}b_a(y')\,dy'^a \right],\qquad \alpha\in\mathbb R^3.
}
\tag{3.14}
\end{align}$$

这里沿界面上的任意光滑路径积分；在这个单连通界面内，$d(W^{-1}b)=0$ 恰是动量守恒条件的改写，因此结果与路径无关。三个常数显式保留了齐次核，没有使用伪逆。对复 Fourier 模式相应地复化这些数据。

这给出了 $p\mapsto f$ 的实际求解步骤。随后按第 6.2 节解两个外端点的 history 关系，选择与它们相容的 $\zeta$ 和 smooth collar extension，再代入 (3.2)、(3.4)。仍须检查 Brown–Henneaux 衰减和全部 joint jets；不能仅凭 Codazzi 就把不满足这些渐近条件的 source 纳入区域理论。$p$ 本身也不决定唯一的 $q$：初始解、反射齐次模式以及 proper 参数继续保留在响应关系中。

---

## 4. 由区域方程求闭合半区模式

### 4.1 渐近解和两个 Chiral Functions

定义

$$\begin{align}
x^+=\tau+\phi,\qquad x^-=\tau-\phi,\qquad R=\frac12e^\rho. \tag{4.1}
\end{align}$$

靠近渐近边界，解可写在 Bañados 坐标中：

$$\begin{align}
ds^2=\ell^2\left[ \frac{dR^2}{R^2}+L_+(dx^+)^2+L_-(dx^-)^2 -\left(R^2+\frac{L_+L_-}{R^2}\right)dx^+dx^- \right]. \tag{4.2}
\end{align}$$

背景为

$$\begin{align}
\bar L_+=\bar L_-=-\frac14. \tag{4.3}
\end{align}$$

线性 boundary diffeomorphism 参数 $\epsilon_\pm(x^\pm)$ 导致

$$\begin{align}
\boxed{ \delta L_\pm=-\frac12\left(\epsilon_\pm'''+\epsilon_\pm'\right).
}
\tag{4.4}
\end{align}$$

撇号对各自的 $x^\pm$ 求导。相应的局部演化是

$$\begin{align}
(\partial_\tau-\partial_\phi)\delta L_+=0, \qquad (\partial_\tau+\partial_\phi)\delta L_-=0. \tag{4.5}
\end{align}$$

(4.2) 只用于参数化和计算，不作为中心正则性的判据。[BH3] 提供这一渐近解族与 charges 的标准参照。

### 4.2 零动量边界条件给反射，而不是两个独立 Chirality

由 3.4 可选 $\xi$ 在人工面上切向。在两个外端点，这要求

$$\begin{align}
\epsilon_+(\tau)=\epsilon_-(\tau), \qquad \epsilon_+(\tau+\pi)=\epsilon_-(\tau-\pi). \tag{4.6}
\end{align}$$

所以存在一个函数 $\epsilon$，使

$$\begin{align}
\boxed{ \epsilon_+=\epsilon_-=: \epsilon, \qquad\epsilon(x+2\pi)=\epsilon(x).
}
\tag{4.7}
\end{align}$$

这是从**区域 Neumann 边界问题**得到的反射条件，不是先把全局 Hilbert space 限制到反射偶态。

也可在 Gaussian collar 内检查：常曲率且 $K_{ab}=0$ 的边界附近，metric 可以写为

$$\begin{align}
ds^2=dy^2+\cosh^2(y/\ell)\,\gamma^{(\Gamma)}_{ab}dx^adx^b. \tag{4.8}
\end{align}$$

因此沿 $y=0$ 反射延拓是光滑的。这个 doubling 性质是边界方程的结果，不是区域理论的定义。

### 4.3 中心光滑的显式 Bulk 模式

在背景 (4.3) 上，定义 $\Delta_R=R^4-1/16$。产生 (4.4) 的向量场可取

$$
\begin{aligned}
\xi^R&=-\frac R2(\epsilon_+'+\epsilon_-'),\\
\xi^+&=\epsilon_+
 +\frac{R^2\epsilon_-''-\frac14\epsilon_+''}{2\Delta_R},\\
\xi^-&=\epsilon_-
 +\frac{R^2\epsilon_+''-\frac14\epsilon_-''}{2\Delta_R}.
\end{aligned}
\tag{4.9}
$$

这个坐标表达式在 $R=1/2$ 不宜直接使用。选一个平滑径向函数 $\chi(\rho)$，在 $\rho\le\rho_0$ 为零，在 $\rho\ge\rho_1>\rho_0>0$ 为一，并定义

$$\begin{align}
\boxed{h[\epsilon_+,\epsilon_-]=\mathcal L_{\chi\xi[\epsilon_+,\epsilon_-]}\bar g.} \tag{4.10}
\end{align}$$

它在中心邻域恒为零，在渐近端具有所需 charges，并且**精确满足线性 Einstein 方程**：对任何平滑 $\chi\xi$，这都直接来自 diffeomorphism covariance。

不同 $\chi$ 的差是外边界平凡的光滑 diffeomorphism 方向；它们仍保留在预相空间里，但不影响物理模式的辛配对。

令

$$\begin{align}
h_n^+=h[e^{-inx^+},0],\qquad h_n^-=h[0,e^{-inx^-}]. \tag{4.11}
\end{align}$$

闭合半区的模式是

$$\begin{align}
\boxed{\psi_{i,n}^{N}=(h_n^++h_n^-)|_{R_i},\qquad n\ge2.} \tag{4.12}
\end{align}$$

它们的复共轭为负频模式。关于为什么物理编号从二开始，见第 8 节。

在 $\chi=1$ 的渐近区域，全部非零 metric 分量由

$$\begin{align}
\frac h{\ell^2}=\delta L_+(dx^+)^2+\delta L_-(dx^-)^2 +\frac{\delta L_++\delta L_-}{4R^2}\,dx^+dx^- \tag{4.13}
\end{align}$$

给出；在 cutoff 过渡区则直接使用

$$\begin{align}
h_{\mu\nu}=\chi\xi^\alpha\partial_\alpha\bar g_{\mu\nu} +\bar g_{\alpha\nu}\partial_\mu(\chi\xi^\alpha) +\bar g_{\mu\alpha}\partial_\nu(\chi\xi^\alpha). \tag{4.14}
\end{align}$$

因此本文给出的是可逐分量计算的 bulk 模式，而不只是边界 Fourier 标签。

### 4.4 “全部模式”还包括任意的退化解

每个零源半区解可写为

$$\begin{align}
\boxed{ h_i=\sum_{n\ge2}\left(z_{i,n}\psi_{i,n}^{N} +z_{i,n}^*\psi_{i,n}^{N*}\right) +\mathcal L_{\eta_i}\bar g.
}
\tag{4.15}
\end{align}$$

最后一项包括区域允许的 proper diffeomorphisms，以及低 Fourier 参数所产生的零-charge 代表；$\eta_i$ 在真实外边界没有 Brown–Henneaux charge，并保留使其满足区域 source 条件的完整人工面数据。

对本文的光滑解类，(4.15) 中的物理 Fourier 系数取快速衰减序列：对每个整数 $k\ge0$，$n^kz_{i,n}\to0$。这保证模式和全部导数在紧集上一致收敛；一般的 proper 项则直接作为光滑向量场保留。后续的有限能量或量子 Hilbert 完备化不是在这里暗中放宽经典场的 joint 正则性。

这些方向没有物理谐振子归一化，不能把它们当成额外的 $n=0$ 振子；也不能为了写一个离散模式列表而将它们从预相空间删除。它们可以有任意坐标时间依赖，所以“全体 gauge 模式也有一套离散物理能谱”本身不是这里应当要求的命题。

---

## 5. 辛归一化与独立定义的可观测量

### 5.1 从 HW Charges 得到全局目标的预辛形式

定义经典 Brown–Henneaux 中心荷

$$\begin{align}
c=\frac{3\ell}{2G}. \tag{5.1}
\end{align}$$

从 (1.3)、(2.1)–(2.3) 的重整化 Brown–York charge 得到

$$\begin{align}
Q[\epsilon_+,\epsilon_-] =\frac{c}{12\pi}\int_0^{2\pi} (\epsilon_+L_++\epsilon_-L_-)d\phi, \tag{5.2}
\end{align}$$

加法常数按 AdS 真空能约定固定。由

$$\begin{align}
\delta Q[\epsilon_2](h[\epsilon_1]) =\Omega_M(h[\epsilon_1],h[\epsilon_2]) \tag{5.3}
\end{align}$$

和 (4.4)，对非退化边界数据得到

$$\begin{align}
\boxed{ \Omega_M^{(0)} =\frac{c}{48\pi}\sum_{\sigma=\pm}\int_0^{2\pi} \delta\epsilon_\sigma\wedge (\partial_\sigma^3+\partial_\sigma)\delta\epsilon_\sigma\,d\phi.
}
\tag{5.4}
\end{align}$$

例如单一 chirality 上，其双线性形式为

$$\begin{align}
\Omega^{(0)}(u,v)=\frac{c}{24\pi}\int_0^{2\pi}u(v'''+v')dx. \tag{5.5}
\end{align}$$

这里先从**未切分的作用量**定义目标 CPS。后面证明区域相加给出它，而不是拿它反过来定义区域 bracket。

式 (5.4) 是完整 HW 形式在这一参数族上的 pullback，不是宣称 $\Omega_M$ 在整个预相空间可逆。对任意 admissible proper $\eta$，仍有

$$\begin{align}
\Omega_M^{(0)}(\mathcal L_\eta\bar g,h)=0, \tag{5.6}
\end{align}$$

这些方向仍在 $\widetilde{\mathcal S}_M$ 中。

### 5.2 逐个模式归一化

对 $n>0$，

$$\begin{align}
(\partial_x^3+\partial_x)e^{-inx} =i n(n^2-1)e^{-inx}. \tag{5.7}
\end{align}$$

令

$$\begin{align}
\boxed{C_n=\frac c{12}n(n^2-1).} \tag{5.8}
\end{align}$$

则

$$\begin{align}
i\Omega_M^{(0)}(h_n^\sigma,h_m^{\sigma'*}) =C_n\delta_{nm}\delta_{\sigma\sigma'}, \qquad n,m\ge2. \tag{5.9}
\end{align}$$

因此真正归一化的全局正频模式是

$$\begin{align}
\boxed{\Phi_n^\pm=\frac{h_n^\pm}{\sqrt{C_n}}.} \tag{5.10}
\end{align}$$

若 $\epsilon_+=\sum_{n\ge2}(z_ne^{-inx^+}+z_n^*e^{inx^+})$，另一个 chirality 类似，则

$$\begin{align}
\Omega_M^{(0)} =i\sum_{n\ge2}C_n\left( \delta z_n^*\wedge\delta z_n+ \delta\bar z_n^*\wedge\delta\bar z_n\right). \tag{5.11}
\end{align}$$

取 $a_n=\sqrt{C_n}z_n$、$\bar a_n=\sqrt{C_n}\bar z_n$，得到

$$\begin{align}
\Omega_M^{(0)} =i\sum_{n\ge2}(\delta a_n^*\wedge\delta a_n +\delta\bar a_n^*\wedge\delta\bar a_n), \qquad \{a_n^*,a_m\}=i\delta_{nm}. \tag{5.12}
\end{align}$$

这与工作区的正频及 CCR 约定一致。

### 5.3 半区的辛归一化不是“中心荷除以二”

对零源半区，(4.7) 把两条 chiral 外边界弧展开为一个长 $2\pi$ 的圆：

$$\begin{align}
[\tau,\tau+\pi]\ \cup\ [\tau-\pi,\tau].
\end{align}$$

用 HW 的完整 boundary charge identity，人工面内部的零动量 charge 为零，而两端 contributions 按这个展开相接，得到

$$\begin{align}
\boxed{ \Omega_i^{(0)}[p_i=0] =\frac{c}{48\pi}\int_0^{2\pi} \delta\epsilon_i\wedge(\partial^3+\partial)\delta\epsilon_i\,dx =i\sum_{n\ge2}C_n\delta z_{i,n}^*\wedge\delta z_{i,n}.
}
\tag{5.13}
\end{align}$$

故

$$\begin{align}
\boxed{ i\Omega_i^{(0)}(\psi_{i,n}^{N},\psi_{i,m}^{N*}) =C_n\delta_{nm}.
}
\tag{5.14}
\end{align}$$

独立半区只有一组这样的模式，而不是两组范数各减半的模式。也可检查：$h_n^++h_n^-$ 的全局范数是 $2C_n$，其两半各贡献 $C_n$。

令 $b_{i,n}=\sqrt{C_n}z_{i,n}$，每个零源半区的正规多项式 Hamiltonian 核心由 $b_{i,n},b_{i,n}^*$ 的有限多项式组成，满足

$$\begin{align}
\{b_{i,n}^*,b_{i,m}\}=i\delta_{nm}. \tag{5.15}
\end{align}$$

完整 $\widetilde{\mathcal S}_i[0]$ 仍包括 (4.15) 的退化方向。

### 5.4 不反演整个预辛形式的可观测量定义

对每个固定 $p_i$，定义区域正规 Hamiltonian 可观测量为满足

$$\begin{align}
\exists\,X_F\text{ tangent to }\widetilde{\mathcal S}_i[p_i], \qquad \iota_{X_F}\Omega_i=-\delta F \tag{5.16}
\end{align}$$

的光滑泛函，并要求其向量场满足同一联合迹和边界条件。两个 $X_F$ 可以相差退化方向；这不会改变

$$\begin{align}
\{F,G\}=dF(X_G)=-\Omega_i(X_F,X_G). \tag{5.17}
\end{align}$$

这里没有反演一个退化矩阵，也没有把所有 $\Omega$-radical 自动当成 gauge 取商。

在全局目标中同样独立定义这类泛函。本文具体比较其**自由边界引力子多项式核心**：有限多个线性 charge modes 的有限多项式。相应量子核心由线性、伴随和 CCR 关系定义，尚不指定态。

固定 $p_i$ 时它是外部 history，而不是该 fibre 内一个可以任意提升为量子算符的中心变量。相邻 fibres 的比较必须使用 (2.12) 的响应；不能把“一族固定-source 代数”误写成 source 方向也带同一 Poisson bracket 的直积。

---

## 6. 打开的区域：完整 Source 解与反射响应

### 6.1 一般 Fibre 是仿射解族

只要 $p_i$ 属于第 3 节的可实现 history 类，任选一个通过 (3.2)–(3.6) 构造的特解 $h_i^{\mathrm{part}}[p_i]$。线性性给出

$$\begin{align}
\boxed{ \widetilde{\mathcal S}_i[p_i] =h_i^{\mathrm{part}}[p_i]+\widetilde{\mathcal S}_i[0].
}
\tag{6.1}
\end{align}$$

因此全部 source 解包括：由 $f_i,\zeta_i$ 和其 collar extension 构造的特解、(4.12) 的齐次物理模式、(4.15) 的退化解。不存在尚待补上的局域传播引力极化。

这个式子不说不同 fibres 已经是同一个 symplectic space；对特解的 source 微分必须保留 (2.13) 的 flux。

### 6.2 一个显式的端点 History 传输关系

以区域 $A$ 为例。选 outward normal 在 $\phi=0$ 指向 $-\partial_\phi$，在 $\phi=\pi$ 指向 $+\partial_\phi$。法向函数的渐近 leading coefficients 给出

$$
\begin{aligned}
d_0(\tau)&:=\epsilon_+(\tau)-\epsilon_-(\tau)
=-\frac4\ell\lim_{s\to+\infty}e^{-s}f_A(\tau,s),\\
d_\pi(\tau)&:=\epsilon_+(\tau+\pi)-\epsilon_-(\tau-\pi)
=\frac4\ell\lim_{s\to-\infty}e^{s}f_A(\tau,s).
\end{aligned}
\tag{6.2}
$$

这些关系来自 $f=n\cdot\xi$ 和 (4.9) 的 leading Brown–Henneaux 向量场，不是新添的边界运动方程。

写 $F(u)=\epsilon_+(u)$、$G(u)=\epsilon_-(u)$，则

$$\begin{align}
G(u)=F(u)-d_0(u),
\end{align}$$

$$\begin{align}
\boxed{ F(u+2\pi)-F(u)=d_\pi(u+\pi)-d_0(u).
}
\tag{6.3}
\end{align}$$

这就是一个可直接使用的区域 round-trip 响应方程。给定一个长度 $2\pi$ 的初始片段及与其全部 endpoint jets 兼容的 source，可以递推到所有时间。齐次方程的自由度恰是一个 $2\pi$-周期函数，即第 4 节的一组反射模式。

对谐波 source $d_a(u)=d_{a,\nu}e^{-i\nu u}$，非共振处有

$$\begin{align}
\boxed{ F_\nu= \frac{e^{-i\pi\nu}d_{\pi,\nu}-d_{0,\nu}} {e^{-2\pi i\nu}-1}, \qquad G_\nu=F_\nu-d_{0,\nu}.
}
\tag{6.4}
\end{align}$$

分母的整数零点是区域反射共振。此处不能使用一个把零模抹掉的逆算子：必须保留齐次解与 source compatibility。$\nu=0,\pm1$ 是否产生物理模式还要通过第 8 节的 metric/stabilizer 检验。

式 (3.6)、(3.4)、(6.2)–(6.4) 连同 $\Lambda_i=-\int\gamma_i\delta p_i$，给出本模型实际需要的 bulk-cut 响应和外边界 history 传输；它们全部来自同一个区域理论。

### 6.3 缺失的全局奇模式具体长什么样

取

$$\begin{align}
\psi_n^{\mathrm{odd}}=h_n^+-h_n^-. \tag{6.5}
\end{align}$$

在人工面上其切向参数为零，所以

$$\begin{align}
q_{ab}^{\mathrm{odd}}=0, \tag{6.6}
\end{align}$$

但法向参数不为零。对 $A$ 侧、$s=\rho>0$、$\chi=1$，由 (4.9) 得

$$\begin{align}
\boxed{ f_{A,n}^{\mathrm{odd}} =-\ell\big(\sinh s+n^2e^{-s}\big)e^{-in\tau}.
}
\tag{6.7}
\end{align}$$

于是 (3.5) 给出一个特别简单的非零分量：

$$\begin{align}
\boxed{ \delta K_{\tau s}^{\mathrm{odd}} =\frac{i\ell n(n^2-1)}{\cosh s}e^{-in\tau}, \qquad n\ge2.
}
\tag{6.8}
\end{align}$$

因此奇模式不在零 Neumann source fibre 内。它必须通过非零 $p_A$ 和相反取向的 $p_B$ 出现。这就精确定位了“打开边界”所恢复的那一组模式。

在另一条半径上，同一个光滑模式具有由 $s<0$ 和 $(-1)^n$ 决定的相容值；在中心附近使用同一个 $\chi$，不再加独立 junction 数据。

### 6.4 为什么两个零源 Fock 空间直接拼不对

若在全过程强行保留 $p_A=p_B=0$，那么两边只有

$$\begin{align}
h_i=z_{i,n}(h_n^++h_n^-)|_{R_i}+\mathrm{c.c.}
\end{align}$$

这样的物理模式。度规连续性对非退化模式要求

$$\begin{align}
z_{A,n}=z_{B,n}. \tag{6.9}
\end{align}$$

只剩一个反射偶振子，而不是两组。其全局归一化系数为 $\sqrt{2}\,b_{A,n}$。反对称的 $b_A-b_B$ 不是第二个全局振子：它不满足同一个光滑 metric 的匹配条件。

第二组是 (6.5)，其 source 必须按 (6.8) 打开。即使两个闭合半区的振子“总数”碰巧等于全局两组振子的数目，也不能据此定义一个正确的 sewing map。

---

## 7. 在作用量中释放 History：传输、Frames 和 CPS 粘合

### 7.1 同一个 Off-Shell 变分一次导出全部界面方程

用同一个界面坐标和明确的 density pullback 识别两侧，规定

$$\begin{align}
p_A=p,\qquad p_B=-p. \tag{7.1}
\end{align}$$

这里的相反号来自 outward normals 的相反取向。先分别定义的区域作用量相加为

$$\begin{align}
\boxed{ S_{\mathrm{pair}}[g_A,g_B,p] =S_{D,A}[g_A]+S_{D,B}[g_B] -\int_\Gamma p^{ab}(\gamma_{A,ab}-\gamma_{B,ab}).
}
\tag{7.2}
\end{align}$$

现在才释放 $p$。变分分别给出

$$\begin{align}
\boxed{ \gamma_{A,ab}=\gamma_{B,ab},\qquad \pi_A^{ab}=p^{ab},\qquad \pi_B^{ab}=-p^{ab}.
}
\tag{7.3}
\end{align}$$

即

$$\begin{align}
\boxed{\gamma_A=\gamma_B,\qquad \pi_A+\pi_B=0.} \tag{7.4}
\end{align}$$

由于公共二维度规可逆，第二个方程等价于

$$\begin{align}
K_{A,ab}+K_{B,ab}=0. \tag{7.5}
\end{align}$$

这是没有薄壳 stress tensor 的 Einstein transmission condition。线性化后是

$$\begin{align}
\boxed{q_A=q_B,\qquad \delta K_A+\delta K_B=0.} \tag{7.6}
\end{align}$$

重要的是，(7.3) 来自 **off-shell source action** 的变分。若先只在满足 Codazzi 的 on-shell histories 上变分，允许的 $\delta p$ 不是任意 tensor，不能不经分析就从它推出所有 metric 分量逐项相等。

### 7.2 光滑匹配比弱 Junction Conditions 多什么

(7.4) 给出度规及其共轭 normal response 的匹配，消去 delta-function 薄壳。本文的全局目标还要求光滑，因此 sewing 的 domain 同时保留：

- 在同一正规 collar 图中的完整 metric jets；
- $s=0$ 处两条半径来自同一个光滑界面场；
- 两个外端点处，使外边界成为同一个光滑圆的全部切向/time jets。

这些是预先声明的光滑目标理论的场域条件，不是“连续性显然蕴含任意阶光滑”的偷换。选共同 Gaussian collar 可以把 $\gamma,K$ 的几何匹配写成度规和一阶法向导数的匹配；这只是验证匹配的坐标工具，不删除任何 gauge 方向。

### 7.3 不同 Cut Frames 与 Active Cut Transformations

独立区域可以使用不同 collar frames。此时 (7.3) 中的 $\gamma_B,\pi_B$ 都先经指定 transition map 的 pullback 再比较。线性地，改变相对识别会出现

$$\begin{align}
h_A-\psi^*h_B=\mathcal L_\eta\bar g \tag{7.7}
\end{align}$$

这样的 frame 项；相应的 $q,p,C$ 和所有 jets 必须一起变换。

这里需要保留的是**可由实际区域 smooth diffeomorphisms 延拓的 transition 数据**，不是任意的两端点标签。两个外端点的取值若属于物理 Brown–Henneaux symmetry，不能作为 proper cut gauge 删去。

在选定一个共同 collar 图后，可以令 transition 的坐标表达为恒等；这只选了比较图。区域和全局的 $\mathcal L_\eta\bar g$ 退化解仍保留在场空间中。

对实际共同 cut deformation，有 $n_B=-n_A$，因而

$$\begin{align}
f_B=-f_A,\qquad \zeta_B=\zeta_A \tag{7.8}
\end{align}$$

是一个相容的参数代表；(3.4)–(3.6) 立即给出 (7.6)。参数的 Killing 冗余也必须匹配，不能把 $\phi=0$ 与 $\phi=\pi$ 当成两个有独立 holonomy 的接口。

### 7.4 作用量和预辛形式的可加性

在 (7.3) 上，显式 source 项为零；人工面的两份 GHY 项因相反 outward 外曲率而相消；两个外端点的 joint 参考项按 (2.10) 相消。故

$$\begin{align}
\boxed{S_{\mathrm{pair}}|_{\mathrm{matching}}=S_M.} \tag{7.9}
\end{align}$$

从完整变分，而不是只从 bulk symplectic current，得到

$$\begin{align}
\boxed{ \left.(\Omega_A+\Omega_B)\right|_{\mathrm{matching}} =r^*\Omega_M.
}
\tag{7.10}
\end{align}$$

其中 $r$ 是共同 smooth atlas 中的 tensor 拼接。人工切面上的 $C$ contributions 按其 incidence orientations 抵消；mixed normal–tangential variations 在这个步骤之前没有被设置成零。

对源变化的 flux 也可以独立检查：

$$\begin{align}
\delta p_A\wedge\delta\gamma_A+ \delta p_B\wedge\delta\gamma_B =\delta p\wedge\delta\gamma- \delta p\wedge\delta\gamma=0. \tag{7.11}
\end{align}$$

这说明只有在共同 history 被释放并满足匹配后，区域预辛形式之和才是全局守恒的形式。不能在这一步之前把不同 source fibres 当成已经共享一个闭合辛结构。

### 7.5 保留 Gauge 退化方向的逐项检查

对固定 background 向量场 $\xi$，记

$$\begin{align}
Q_\xi=-\frac1{16\pi G}\star d\xi^\flat, \qquad k_\xi[h]=\delta_hQ_\xi-\iota_\xi\Theta[h]. \tag{7.12}
\end{align}$$

在解上，$\omega(h,\mathcal L_\xi\bar g)=dk_\xi[h]$。HW 形式给出

$$\begin{align}
\Omega_i(h,\mathcal L_\xi\bar g) =\int_{\partial\Sigma_i}k_\xi[h] -\int_{\partial\Sigma_i}\delta C(h,\mathcal L_\xi\bar g). \tag{7.13}
\end{align}$$

这可直接用于判断某个方向是否退化，而不是仅凭“它是 diffeomorphism”判断。

固定 fibre 中只允许保持 source 的变换。打开 source 后，一些原本连接不同 fibres 的共同 cut transformations 成为全局外边界平凡的 diffeomorphisms；其两侧 surface charges 及 corner 项在 (7.13) 中相消。因此它们在全局 $\Omega_M$ 中退化，但**仍然保留为非零场方向**。

相反，具有非零 Brown–Henneaux charge 的外边界变换不会因人工面消失而变成 gauge。这正是最终两组物理振子的来源。

---

## 8. 不预设全局 Fourier 展开，直接从传输恢复频率

### 8.1 开放端点是透明传输，不是反射

人工切面消失以后，外边界上的 $\delta L_+$ 和 $\delta L_-$ 分别沿自己的 characteristic 穿过两个接点。它们不是在接点互相识别。

考虑 $e^{-i\omega t}$ 的解，令 $\nu=\ell\omega$。由独立区域的方程 (4.5)，沿长度 $\pi$ 的边界弧的传输系数为

$$\begin{align}
\boxed{P_+(\nu)=e^{-i\pi\nu},\qquad P_-(\nu)=e^{+i\pi\nu}.} \tag{8.1}
\end{align}$$

对一个固定 chirality，令 $A$ 为进入区域 $A$ 的振幅，$B$ 为进入区域 $B$ 的振幅。两个接点的透明匹配给

$$\begin{align}
B=P_\sigma A,\qquad A=P_\sigma B. \tag{8.2}
\end{align}$$

所以

$$
\det\begin{pmatrix}1&-P_\sigma\\-P_\sigma&1\end{pmatrix}
=1-P_\sigma^2=0.
\tag{8.3}
$$

即

$$\begin{align}
\boxed{e^{\mp2\pi i\nu}=1\quad\Longrightarrow\quad\nu\in\mathbb Z.} \tag{8.4}
\end{align}$$

这一步只使用区域 characteristic transport 和从 metric sewing 得到的端点连续性。两个 chirality 分别满足自己的方程，所以每个整数频率有两组候选振幅。

### 8.2 为什么还必须检查中心 Holonomy

整数频率还不是最后的物理模式列表。光滑 disk 的真空扇区要求 contractible circle 的 AdS holonomy 不改变。

可以把这一约束写成一个很小的矩阵计算。对一个 chirality，在常用的 polar boundary frame 中选

$$
a_0=\begin{pmatrix}0&1/4\\-1&0\end{pmatrix},
\qquad
L_{-1}=\begin{pmatrix}0&1\\0&0\end{pmatrix},
\qquad
\delta a=-\delta L(\phi)L_{-1}\,d\phi.
\tag{8.5}
$$

由于 $a_0^2=-\tfrac14\mathbf1$，背景 holonomy 为

$$\begin{align}
e^{2\pi a_0}=-\mathbf1. \tag{8.6}
\end{align}$$

这里的中心元属于所用 polar/spin frame 的真空约定；在 adjoint metric 数据上它是平凡的。本文要求的是同一个光滑真空扇区的**线性 holonomy 变化为零**，不是独立增加一个 Wilson-loop 自由度。

线性条件是

$$\begin{align}
\int_0^{2\pi}e^{-a_0\phi}\delta a(\phi)e^{a_0\phi}=0. \tag{8.7}
\end{align}$$

直接计算

$$
e^{-a_0\phi}L_{-1}e^{a_0\phi}
=\begin{pmatrix}
-\sin\phi&(1+\cos\phi)/2\\
-2(1-\cos\phi)&\sin\phi
\end{pmatrix}.
\tag{8.8}
$$

所以 (8.7) 恰要求

$$\begin{align}
\boxed{ \int\delta L\,d\phi=0,\qquad \int\delta L\cos\phi\,d\phi=0,\qquad \int\delta L\sin\phi\,d\phi=0.
}
\tag{8.9}
\end{align}$$

两边 chirality 各有这一组约束。故 $\delta L$ 的 $n=0,\pm1$ Fourier 系数不属于光滑真空扇区的切空间。

区域计算时可以等价地把 (8.7) 写成两条区域边界弧的积分之和，并用实际共同 cut frame 运输到同一个起点；完整界面是一个连通 AdS₂，因此不能给两条半径独立指定额外 holonomies。

### 8.3 Stabilizer 与能量生成元不能混淆

同一结论也体现在

$$\begin{align}
\ker(\partial_x^3+\partial_x) =\operatorname{span}\{1,\cos x,\sin x\}. \tag{8.10}
\end{align}$$

这些 $\epsilon$ 参数在背景上产生 Killing/stabilizer 方向；它们不产生非零 $\delta L$。使用 (4.10) 的 cutoff 代表时，它们可能产生非零但零-charge 的 proper metric variations，这些仍保留在预相空间。

然而不能说“$SL(2,\mathbb R)$ 的所有生成元都被删掉了”。它们稳定的是**背景点**；它们仍作用于扰动，Hamiltonian 等 charges 从二阶开始非零。特别地，线性 $\delta L_0=0$ 不等于扰动的能量为零。

因此最后的物理正频列表是

$$\begin{align}
\boxed{n=2,3,\ldots,\qquad\omega_n=n/\ell,\qquad\Phi_n^+,\Phi_n^-.} \tag{8.11}
\end{align}$$

这与 Brown–Henneaux 真空边界引力子的一般描述一致 [BH3, CJ]；本文的额外内容是从独立区域和可释放 source 中构造它。

---

## 9. Sewing Map 的 Domain、Kernel、Image 与代数比较

### 9.1 场层面：不要把 Gauge Kernel 和拼接 Kernel 混为一谈

令 $\mathcal C$ 是下列数据的集合：两个独立区域解、它们实际实现的相反 source、(7.3) 的传输条件，以及 7.2 的全部 smooth-joint 条件。共同 atlas 和界面取向在定义 $\mathcal C$ 前已经指定。

在这个固定 atlas 中定义

$$\begin{align}
r:\mathcal C\longrightarrow\widetilde{\mathcal S}_M, \qquad r(h_A,h_B,p)=h_A\cup h_B. \tag{9.1}
\end{align}$$

**Domain：** 上述真实光滑匹配解/history 关系，而不是 $\widetilde{\mathcal S}_A[0]\times\widetilde{\mathcal S}_B[0]$。

**Image：** 全部光滑、Brown–Henneaux、真空 disk 扇区的全局线性解。任意全局解限制到两半都满足 (7.3)，其 source 由其外曲率给出；反过来，联合 jets 使匹配的区域 tensors 拼成同一个光滑 tensor，局部 Einstein 方程即成为全局方程。

**Kernel：** 在这个固定 atlas 的 tensor 数据层面为零；source 由 metric response 决定。全局 proper diffeomorphism 解不是 $r$ 的 kernel，而是映成一个真实的、非零的全局退化解。只有再投影到 charge coefficients 时，它们才进入该**观测投影**的 kernel。

若把不同 atlas/transition presentation 都作为额外记录保留，$r$ 的不同记录可以描述同一个 tensor；这是 presentation 冗余，不能误计为新的物理振子。

这个构造没有进行预相空间的 gauge quotient。它满足已经从作用量证明的 (7.10)。

### 9.2 从区域数据构造联合 Charges

在各自的外边界弧上，由各自 metric 的渐近展开独立读出 $\delta L_{i,\sigma}$。在匹配 relation 上定义

$$\begin{align}
\boxed{ \mathcal Q_n^\sigma =\frac{c}{12\pi}\sum_{i=A,B}\int_{I_i} e^{in x^\sigma}\delta L_{i,\sigma}\,d\phi, \qquad n\in\mathbb Z.
}
\tag{9.2}
\end{align}$$

构造它只需区域应力数据、两条实际外边界弧和共同端点识别，不需要输入一个全局 Fock state。

单个弧积分不被宣称为任意固定-source fibre 上的 Hamiltonian observable。真正的 Hamiltonian 准入在完整联合变分上检查：用 (7.13) 对两区域相加，人工面和 joint terms 抵消，剩下的正好是 (9.2) 的变分。生成向量由 (4.9) 对应的相容区域向量场给出；它允许 source 按同一物理扰动变化。

因此 $\mathcal Q_n^\sigma$ 在 sewn 预辛关系上是正规 Hamiltonian 可观测量，不是把全局 bracket 人为搬运回来赋予它的。

### 9.3 为什么不能把圆上的 Cocycle 生硬切半

记 $D=\partial^3+\partial$。在开弧上有

$$\begin{align}
\boxed{ \int_a^b(uDv+vDu)dx =\left[u v''-u'v'+u''v+uv\right]_a^b.
}
\tag{9.3}
\end{align}$$

因此 $\int_IuDv$ 对允许任意端点值的参数**不是一个反对称的 Poisson cocycle**。只把整圆公式积分范围改成 $[0,\pi]$，并遗漏 HW/corner/trace 数据，会在最基本的反对称性上失败。

本文中，这些端点项在完整的 regional boundary identity 中保留，并在满足 joint jets 的两条物理外弧相接后抵消。这是必须保留 corner 信息的一个可逐项验算的原因；不需要为此凭空添加 point oscillator。

### 9.4 精确可证明的自由代数核心

取由 (9.2) 的有限多项式生成的正规 Hamiltonian 核心。真空 regularity 给出

$$\begin{align}
\mathcal Q_0^\sigma=\mathcal Q_1^\sigma =\mathcal Q_{-1}^\sigma=0 \quad\text{在线性 charge 层面}. \tag{9.4}
\end{align}$$

其余生成元满足

$$\begin{align}
(\mathcal Q_n^\sigma)^*=\mathcal Q_{-n}^\sigma,
\end{align}$$

$$\begin{align}
\boxed{ \{\mathcal Q_n^\sigma,\mathcal Q_{-m}^{\sigma'}\} =-iC_n\delta_{nm}\delta_{\sigma\sigma'}, \qquad n,m\ge2.
}
\tag{9.5}
\end{align}$$

这是**线性 charge 的自由 Poisson algebra**。非中心的 Virasoro 项需要 charges 的更高阶表达，不能把线性 bracket (9.5) 写成已经包含全部非线性 Virasoro 结构。

独立全局 theory 用 (5.2) 定义 $Q_{M,n}^\sigma$，得到同样的正规多项式核心。比较映射是

$$\begin{align}
\boxed{\Phi_{\mathrm{cl}}:\mathcal Q_n^\sigma\longmapsto Q_{M,n}^\sigma.}
\tag{9.6}
\end{align}$$

它的精确性质为：

- 在已经满足 (9.4) 的上述核心上，$\ker\Phi_{\mathrm{cl}}=0$。
- 它的 image 是全部独立定义的全局自由边界引力子多项式核心。
- 若从包含所有整数编号的自由交换多项式生成元出发，其到这个核心的 kernel 恰由每个 chirality 的 $Q_0,Q_1,Q_{-1}$ 生成。

证明不需要预设 spectrum：对任何有限组 $|n|\ge2$ 的系数，(4.9)–(4.10) 构造一个光滑 metric solution，并由 (7.3) 取得相容的区域 source；这些系数可独立变化。因此不存在额外有限多项式关系。用 (7.13) 得到的 bracket 又证明 (9.6) 保 Poisson 结构。

这里的“生成元关系”不是对场空间的 gauge quotient。所有 proper metric variations 仍留在 $\mathcal C$ 和 $\widetilde{\mathcal S}_M$ 中，只是这些正规 Hamiltonian observables 沿它们不变。

### 9.5 量子核心及其限制

以独立区域/全局经典核心各自的线性、伴随和 CCR 关系定义量子多项式核心：

$$\begin{align}
\boxed{ [\widehat{\mathcal Q}_n^\sigma, \widehat{\mathcal Q}_{-m}^{\sigma'}] =C_n\delta_{nm}\delta_{\sigma\sigma'}\mathbf1.
}
\tag{9.7}
\end{align}$$

相同的 generator map 给出自由 CCR 核心的 $*$-同构；在有限支持的实线性 labels 上也给出相应 Weyl 关系的同构。这里没有选择态，也没有对 source histories 进行任意 Haar 平均。

**本节没有证明更大的命题：** 未给出任意未匹配 regional metric field algebra 的完整 operator ideal；未证明任意 unbounded composite operators 或某个 von Neumann completion 的 sewing；也没有证明两个任意区域态的 tensor product 经某种投影自动变为全局真空。

这些限制不影响全部自由物理模式及其能谱，因为在本模型中它们恰由上述非退化 charge coefficients 参数化。

### 9.6 本例中结合性的精确含义

在**已经给定完整光滑匹配条件**的有限区域 relation 上，先施加一组面的匹配、再施加另一组，与同时施加全部局部匹配给出同一个 tensor relation。共同 history 的取向符号保持不变；真正外边界上的 charge integrals 按弧相加，与分组无关。因此本文的场拼接与有限 charge 核心比较，在这个条件下具有结合性。

这不是关于任意新切分的无条件变分定理。特别是，若再切分制造了新的有限位置多面 joint，必须先规定其 joint action、joint source 和允许变分；不能把本例渐近直角 joint 的常数 $\pi/2$ 原样复制到任意夹角，也不能由源 $p^{ab}$ 的 face 匹配自动推出新的 joint 方程。本文没有额外构造这种多交界区域理论。

对当前两半盘的问题，没有这样的有限位置多面 joint：中心是同一张光滑人工面上的普通点。第 7 节的作用量、CPS 和端点抵消已经覆盖实际出现的全部界面。

---

## 10. 二阶 Hamiltonian：线性零能量不等于没有能谱

### 10.1 从预辛形式得到 Canonical Energy

背景由 $\partial_t$ 保持，故物理扰动的能量从二阶开始。定义

$$\begin{align}
\boxed{ H^{(2)}[h]=\frac12\Omega_M^{(0)} \left(h,\mathcal L_{\partial_t}h\right).
}
\tag{10.1}
\end{align}$$

这满足 $\iota_{X_t^{(1)}}\Omega_M^{(0)}=-\delta H^{(2)}$。有些文献把右侧不含 $1/2$ 的双线性量称作 canonical energy；它相应是这里二阶能量系数的两倍，必须区分这个约定。

因为 $\mathcal L_{\partial_t}h_n^\pm=-i(n/\ell)h_n^\pm$，由 (5.11) 得

$$\begin{align}
\boxed{ H^{(2)}=\frac1\ell\sum_{n\ge2}nC_n (|z_n|^2+|\bar z_n|^2) =\frac1\ell\sum_{n\ge2}n (|a_n|^2+|\bar a_n|^2).
}
\tag{10.2}
\end{align}$$

对 $G>0$、$\ell>0$，所有 $n\ge2$ 模式均为正能量。

同理，独立零源半区有

$$\begin{align}
H_i^{(2)}[0]=\frac1\ell\sum_{n\ge2}n|b_{i,n}|^2. \tag{10.3}
\end{align}$$

但在实际透明粘合中 $p$ 一般非零。不能用 (10.3) 的两个闭合 Hamiltonians 相加来代替具有 history 响应的完整 sewing。

### 10.2 从二阶边界 Metric 独立复核

对一个 chirality 的小重参数化 $f(x)=x+\epsilon(x)$，真空轨道上

$$\begin{align}
L_f=-\frac14(f')^2-\frac12\{f,x\}, \qquad \{f,x\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2. \tag{10.4}
\end{align}$$

展开至二阶：

$$\begin{align}
L_f=-\frac14-\frac12(\epsilon'+\epsilon''') -\frac14(\epsilon')^2 +\frac12\epsilon'\epsilon''' +\frac34(\epsilon'')^2+O(\epsilon^3). \tag{10.5}
\end{align}$$

对光滑周期函数积分，$\int\epsilon'\epsilon'''=-\int(\epsilon'')^2$，所以

$$\begin{align}
\int\left(L_f+\frac14\right)dx =\frac14\int\big[(\epsilon'')^2-(\epsilon')^2\big]dx +O(\epsilon^3). \tag{10.6}
\end{align}$$

由 (5.2)，

$$\begin{align}
\boxed{ H^{(2)}= \frac{c}{48\pi\ell}\sum_{\sigma=\pm}\int_0^{2\pi} \big[(\epsilon_\sigma'')^2-(\epsilon_\sigma')^2\big]d\phi, } \tag{10.7}
\end{align}$$

其 Fourier 系数正是 $nC_n/\ell$，与 CPS 推导一致。

这个检验解释了为什么不能只读 (4.13) 的线性 $\delta L_0$ 来寻找能量：光滑边界引力子有 $\delta L_0=0$，但其二阶 $L_0$ 一般严格为正。

### 10.3 能量与界面 Source 的相加

总 action 在 matching 上等于全局 action，完整 Noether variation 因而也相加。人工源项、取向相反的人工 GHY 项和已匹配的 joints 不留下额外界面能量。

若单独某个区域的 prescribed $p_i(\tau)$ 随时间变化，时间平移不再是该**固定 source** theory 的对称性，不能宣布其 Brown–York 能量单独守恒。它与 source 交换能量；总体系的守恒来自两侧相反的响应和 (7.11)，而不是要求每个驱动区域分别有一套守恒正常模式。

---

## 11. 粘合之后的自由量子能谱

### 11.1 在此处才选择表示

先有 (9.7) 的 algebra，随后用全局 $t$ 的正频模式 (5.10) 选 Fock 表示。由工作区的 $[F,G]=i\{F,G\}$ 约定，

$$\begin{align}
[a_n,a_m^\dagger]=[\bar a_n,\bar a_m^\dagger]=\delta_{nm}, \qquad [a_n,\bar a_m]=[a_n,\bar a_m^\dagger]=0. \tag{11.1}
\end{align}$$

令 $a_n|0\rangle=\bar a_n|0\rangle=0$。所有有限粒子态构成共同稠密定义域，正规序 Hamiltonian 在该域上为

$$\begin{align}
\boxed{ \widehat H^{(2)}= \frac1\ell\sum_{n\ge2}n (a_n^\dagger a_n+\bar a_n^\dagger\bar a_n).
}
\tag{11.2}
\end{align}$$

它在 occupation-number 基底上是非负对角算符；闭包的定义域是满足能量平方可和条件的态。故这里的能谱不仅是一个 formal determinant，也由显式正规算符给出。

没有给完整预相空间中的退化变量建立“零频振子”。本表示是非退化 Hamiltonian observable 核心的表示；那些退化 metric directions 仍在之前的 classical sewing 数据中。

### 11.2 谱、角动量和配分函数

取 $N_n,\bar N_n\in\mathbb N_0$，有限粒子态能量为

$$\begin{align}
\boxed{ E=-\frac1{8G}+\frac1\ell\sum_{n\ge2}n(N_n+\bar N_n).
}
\tag{11.3}
\end{align}$$

以 $Q_{\partial_\phi}$ 的左右差约定定义角动量，则

$$\begin{align}
J=\sum_{n\ge2}n(N_n-\bar N_n). \tag{11.4}
\end{align}$$

单粒子 gap 为 $2/\ell$；每个 $n\ge2$ 有两个 chirality。自由多粒子计数为

$$\begin{align}
\boxed{ Z_{\mathrm{osc}}(\beta) =\prod_{n=2}^{\infty}\frac1{(1-e^{-\beta n/\ell})^2}.
}
\tag{11.5}
\end{align}$$

令 $q=e^{-\beta/\ell+i\vartheta}$、$\bar q=e^{-\beta/\ell-i\vartheta}$，包括经典真空能约定后

$$\begin{align}
\boxed{ Z_{\mathrm{vac,free}}(q,\bar q) =q^{-c/24}\bar q^{-c/24}
\prod_{n=2}^{\infty}\frac1{(1-q^n)(1-\bar q^n)}.
}
\tag{11.6}
\end{align}$$

这是通常真空边界引力子/微扰真空 character 的自由计数 [CJ]。这里不从它反推区域 theory，也不把它称为已求得整个 AdS₃ 引力的非微扰配分函数。特别是，本文没有检验特殊有限中心荷表示的附加 null relations。

前几个总 level $N=\ell(E-E_{\mathrm{AdS}})$ 的简并度是

| $N$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| $d_N$ | 1 | 0 | 2 | 2 | 5 | 6 | 13 | 16 | 30 | 40 | 66 | 90 | 142 |

两个反射半区自由计数的乘积在零角势时可能给出相同的数字；**计数相同不构成 sewing map 的证明**。第 6.4 节已经显示，保持零 source 直接匹配会丢掉奇扇区。

---

## 12. 这个模型具体解决了什么

这里恢复的不是新的 AdS₃ 真空能谱，而是一个可检查的区域重构机制：

$$
\begin{gathered}
\text{每个半区：独立的 Neumann-source action 与完整预相空间}\\
\Downarrow\\
\text{零源反射模式 + 法向/切向 history 响应 + joint 数据}\\
\Downarrow\quad \text{在作用量中释放共同 }p\\
\gamma_A=\gamma_B,\quad \pi_A+\pi_B=0\\
\Downarrow\\
\text{透明 chiral 传输、真空 holonomy、HW 预辛形式相加}\\
\Downarrow\\
\text{两组 }n\ge2\text{ 的正规 Hamiltonian/CCR 模式及自由能谱。}
\end{gathered}
\tag{12.1}
$$

在这个过程中必须保留的 gravitational subtleties 是：中心处两条半径其实是同一光滑面；诱导度规与取向动量的成对匹配；法向 cut deformation 的响应；$C$ 及 joint angle variation；可延拓的相对 frames；背景 stabilizer 与物理二阶 generators 的区别；以及 contractible holonomy 所固定的真空扇区。

**结论没有使用“先扔掉 gauge，再把剩下的振子 tensor-product 起来”的步骤。** 也不需要给每个切面或端点无条件添加独立 oscillator。真正进入 sewing 的额外数据是原区域作用量已经决定的 history response 和相容的 cut/corner traces。

### 12.1 核验与未覆盖事项

**已执行的计算核验：** Appendix A 的 14 组符号恒等式，以及 Appendix B 的完整 Bañados Lie derivative 检查，全部通过；同时计算了表中 level $0$ 至 $12$ 的简并度。

**解析证明而非软件穷举：** 3D 可缩域上纯 diffeomorphism 参数化的完整性；HW 变分与内部边界对消；联合 smooth jets 的拼接；有限 charge 核心的满射/无附加多项式关系。正文给出了各自的论证与前提。

**没有执行或声称执行：** Mathematica/xAct 计算；任意 rough-history gravitational IBVP 定理；任意 regional operator algebra 或 von Neumann algebra 的完整 sewing；非线性引力的全阶及量子反项分析；非真空拓扑/holonomy 扇区。现有数值/符号测试不被当成这些更强命题的证明。

---

## 参考与项目来源

**[HW]** Daniel Harlow and Jie-qiang Wu, *Covariant phase space with boundaries*, JHEP 10 (2020) 146, arXiv:1906.08616，本文查阅 v3 HTML，尤其 §2、§3.5、§3.6。用于完整边界变分、$C$、Hamiltonian 与 Brown–York 的对应。

**[NR]** Chethan Krishnan and Avinash Raju, *A Neumann Boundary Term for Gravity*, Mod. Phys. Lett. A 32 (2017) 1750077, arXiv:1605.01603。用于核对固定 canonical momentum 的 Neumann 极化和三维半 GHY 系数；本文的带外部源形式及释放方程在第 2、7 节直接推导。

**[BH3]** G. Compère, P. Mao, A. Seraj and M. M. Sheikh-Jabbari, *Symplectic and Killing Symmetries of AdS₃ Gravity: Holographic vs Boundary Gravitons*, JHEP 01 (2016) 080, arXiv:1511.06079。用于核对 Bañados 族、Virasoro 真空轨道和 stabilizer 的几何解释。

**[CJ]** Jordan Cotler and Kristan Jensen, *A theory of reparameterizations for AdS₃ gravity*, JHEP 02 (2019) 079, arXiv:1808.03263。用于真空 boundary-graviton 量子计数的独立对照；不以其 path-integral construction 替代本文的 HW 区域 action。

**项目文件，读取于 2026-09-14，`GaoZ1en/obsidian_note` 的 `main`：**

- `AGENTS.md`；`Articles/Quantization in AdS/AGENTS.md`。
- `Articles/Quantization in AdS/gluing/AGENTS.md`、`README.md`、`TODO.md`。
- `Articles/Quantization in AdS/gluing/classical_gluing_formalism.md` 的区域作用量、联合迹与响应定义部分。
- `Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons disk and open-chord sewing.md` 的 source release、corner 与 Hamiltonian 准入部分。此旧模型部分使用了 quotient 表述；本文按当前 gluing 的明确要求保留完整退化预相空间，未照搬该步骤。
- `Articles/Quantization in AdS/perturbation/formalism.md` 的 CPS、正频归一化与 CCR 约定。

**Research Radar：** 查阅 `/problems`，以及 “Regional quantum observables and composition” 与 “Non-vacuum Virasoro orbit from bulk covariant phase space” 两个条目。本文件只处理用户指定的 smooth global-AdS vacuum 直径切分，不把 non-vacuum orbit 或 null-gravity 的其他目标混入本例。

---

## Appendix A. 可独立运行的 SymPy 核验

以下代码只依赖 SymPy 和 Python 标准库。它检查二维界面的响应张量、核、Codazzi、开弧端点缺陷、模式范数和能量系数、传输行列式、真空 holonomy、Schwarzian 展开与奇模式的非零外曲率。代码使用 derivative placeholders 处理多变量导数的三角化简，不对 $f(\tau,s)$ 作特定 ansatz。

```python
import sympy as s
import json
T,x,l=s.symbols('tau s ell', real=True, nonzero=True)
coords=(T,x)
g=s.diag(-l**2*s.cosh(x)**2,l**2); gi=s.simplify(g.inv())
Gamma=[[[s.simplify(sum(gi[a,d]*(s.diff(g[d,c],coords[b])+s.diff(g[d,b],coords[c])-s.diff(g[b,c],coords[d]))/2 for d in range(2))) for c in range(2)] for b in range(2)] for a in range(2)]
def clean(z):
 ds=sorted(z.atoms(s.Derivative),key=str)
 mp={d:s.Dummy() for d in ds}
 return s.simplify(s.expand_trig(z.xreplace(mp)).rewrite(s.exp)).xreplace({v:k for k,v in mp.items()})
def Hess(f):
 return s.Matrix(2,2,lambda a,b:clean(s.diff(f,coords[a],coords[b])-sum(Gamma[c][a][b]*s.diff(f,coords[c]) for c in range(2))))
def simp(z):return s.simplify(s.together(s.expand(z.rewrite(s.exp))))
def zero_mat(m):return all(simp(z)==0 for z in m)
checks={}
checks['normal_response_kernel']=all(zero_mat(Hess(f)-g*f/l**2) for f in [s.cosh(x)*s.cos(T),s.cosh(x)*s.sin(T),s.sinh(x)])
W=s.Matrix([[s.cosh(x)*s.cos(T),s.cosh(x)*s.sin(T),s.sinh(x)],[-s.cosh(x)*s.sin(T),s.cosh(x)*s.cos(T),0],[s.sinh(x)*s.cos(T),s.sinh(x)*s.sin(T),s.cosh(x)]])
AT=s.Matrix([[0,1,0],[-s.cosh(x)**2,0,s.sinh(x)*s.cosh(x)],[0,s.tanh(x),0]])
AS=s.Matrix([[0,0,1],[0,s.tanh(x),0],[1,0,0]])
checks['response_transport_fundamental']=(zero_mat(W.diff(T)-AT*W) and zero_mat(W.diff(x)-AS*W) and simp(W.det()-s.cosh(x))==0)

f=s.Function('f')(T,x); H=Hess(f); box=clean(s.trace(gi*H)); P=H-g*box+g*f/l**2
# Codazzi: divergence of the response tensor, with both indices lowered.
div=[]
for b in range(2):
 val=0
 for a in range(2):
  for c in range(2):
   nab=s.diff(P[a,b],coords[c])-sum(Gamma[d][c][a]*P[d,b]+Gamma[d][c][b]*P[a,d] for d in range(2))
   val+=gi[a,c]*nab
 div.append(clean(val))
checks['response_divergence_zero']=all(v==0 for v in div)
checks['response_trace']=clean(s.trace(gi*P)+box-2*f/l**2)==0
# Green identity for the third order vacuum orbit operator.
u=s.Function('u')(x);v=s.Function('v')(x)
D=lambda f:s.diff(f,x,3)+s.diff(f,x)
B=u*s.diff(v,x,2)-s.diff(u,x)*s.diff(v,x)+s.diff(u,x,2)*v+u*v
checks['interval_boundary_defect']=s.simplify(s.diff(B,x)-u*D(v)-v*D(u))==0
n,c=s.symbols('n c', real=True, positive=True)
checks['mode_operator']=s.simplify(D(s.exp(-s.I*n*x))-s.I*n*(n*n-1)*s.exp(-s.I*n*x))==0
Cn=c*n*(n*n-1)/12
checks['symplectic_norm']=s.simplify(c/(48*s.pi)*(2*s.pi)*(2*s.I*n*(n*n-1))-s.I*Cn)==0
checks['energy_normalization']=s.simplify(c/(48*s.pi)*(4*s.pi)*(n**4-n*n)-n*Cn)==0
z=s.symbols('z')
checks['transport_determinant']=s.Matrix([[1,-z],[-z,1]]).det()==1-z*z
# Linearized vacuum monodromy: three independent Fourier moments only.
a=s.Matrix([[0,s.Rational(1,4)],[-1,0]]);Lm=s.Matrix([[0,1],[0,0]])
U=s.eye(2)*s.cos(x/2)+2*a*s.sin(x/2)
V=s.eye(2)*s.cos(x/2)-2*a*s.sin(x/2)
Ad=s.simplify(V*Lm*U)
Ad_expected=s.Matrix([[-s.sin(x),(1+s.cos(x))/2],[-2*(1-s.cos(x)),s.sin(x)]])
checks['vacuum_holonomy']=zero_mat(a*a+s.eye(2)/4) and zero_mat(U.subs(x,2*s.pi)+s.eye(2))
checks['adjoint_moments']=zero_mat(Ad-Ad_expected)
# Schwarzian energy expansion at second order, before integration by parts.
e=s.symbols('e');fun=x+e*u
Sch=s.diff(fun,x,3)/s.diff(fun,x)-s.Rational(3,2)*(s.diff(fun,x,2)/s.diff(fun,x))**2
Lf=-s.diff(fun,x)**2/4-Sch/2
series=s.series(Lf,e,0,3).removeO().expand()
expected=-s.Rational(1,4)-e*D(u)/2+e*e*(-s.diff(u,x)**2/4+s.diff(u,x)*s.diff(u,x,3)/2+3*s.diff(u,x,2)**2/4)
checks['Schwarzian_second_order']=s.simplify(series-expected)==0
# Two-colour partitions with parts >=2, no truncation in level <=12.
N=12;deg=[1]+[0]*N
for part in range(2,N+1):
 for colour in range(2):
  for j in range(part,N+1):deg[j]+=deg[j-part]
# Verify the shear of h++ and h-- under the reflection.
R=s.symbols('R',positive=True)
Dden=R**4-s.Rational(1,16)
checks['odd_normal_profile']=s.simplify((R-s.Rational(1,4)/R)*(1+n*n/(2*(R*R-s.Rational(1,4))))-(R-s.Rational(1,4)/R+n*n/(2*R)))==0
fodd=-l*(s.sinh(x)+n*n*s.exp(-x))*s.exp(-s.I*n*T)
kodd=-Hess(fodd)+g*fodd/l**2
checks['odd_mixed_extrinsic_curvature']=simp(kodd[0,1]-s.I*l*n*(n*n-1)*s.exp(-s.I*n*T)/s.cosh(x))==0
print(json.dumps({'checks':checks,'all_pass':all(checks.values()),'degeneracies':deg,'normal_response_divergence':[str(v) for v in div],'adjoint_matrix':str(Ad)},ensure_ascii=False,indent=2))
assert all(checks.values())
```

本次执行结果：14 个 `checks` 均为 `true`，`all_pass = true`；二维 response divergence 的两个分量均为 `0`；简并度为

```text
[1, 0, 2, 2, 5, 6, 13, 16, 30, 40, 66, 90, 142]
```

## Appendix B. Bañados 向量场的逐分量验证

这段代码直接检查 (4.9) 对背景 metric 的 Lie derivative 是否等于 (4.13)，包括所有 radial 分量。未把该检查称为任意 nonlinear curvature calculation。

```python
import sympy as s,json
R,x,y=s.symbols('R x y',positive=True)
F=s.Function('F')(x);G=s.Function('G')(y)
co=[R,x,y];delta=R**4-s.Rational(1,16)
g=s.Matrix([[1/R**2,0,0],[0,-s.Rational(1,4),-(R**2+s.Rational(1,16)/R**2)/2],[0,-(R**2+s.Rational(1,16)/R**2)/2,-s.Rational(1,4)]])
z=s.Matrix([-R*(s.diff(F,x)+s.diff(G,y))/2,F+(R**2*s.diff(G,y,2)-s.diff(F,x,2)/4)/(2*delta),G+(R**2*s.diff(F,x,2)-s.diff(G,y,2)/4)/(2*delta)])
h=s.Matrix(3,3,lambda a,b:s.factor(sum(z[c]*s.diff(g[a,b],co[c])+g[c,b]*s.diff(z[c],co[a])+g[a,c]*s.diff(z[c],co[b]) for c in range(3))))
u=-(s.diff(F,x)+s.diff(F,x,3))/2;v=-(s.diff(G,y)+s.diff(G,y,3))/2
expected=s.Matrix([[0,0,0],[0,u,(u+v)/(8*R**2)],[0,(u+v)/(8*R**2),v]])
checks={'exact_Banados_Lie_derivative':all(s.simplify(a)==0 for a in h-expected)}
print(json.dumps({'checks':checks,'all_pass':all(checks.values()),'h_over_ell2':str(h)},indent=2))
assert all(checks.values())
```

本次执行结果：`exact_Banados_Lie_derivative = true`。在 $\chi\ne1$ 的过渡区，(4.14) 额外包含 $d\chi$ 项；它们没有被这个渐近检查省略为零，而是由 (4.10) 的完整 Lie derivative 定义保留。对任意光滑 $\chi\xi$，线性 Einstein 方程成立的理由是 diffeomorphism covariance。
