# Global AdS3 中 interacting scalar 的 tree solution 与 CPS 压力测试

日期：2026-07-09

## 0. 直接结论

本文是 global AdS3 scalar 的 finite-time classical retarded-tree 与 resonance benchmark，不是 quantum loop pipeline。实际 loop 计算使用 `../cps canonical quantization to loop corrections.md`；本文量子化公式取 $\hbar=1$，standard/Dirichlet boundary condition 是所讨论理论定义的一部分。

Global AdS3 是目前这套 formalism 的更强压力测试，结论分成两个层次。

1. **有限时间、固定初始数据的 retarded tree expansion：work。**
   对 standard/Dirichlet normalizable scalar，$\phi^3/\phi^4$ 的微扰解仍然是以自由 normal modes 为叶子、以 AdS retarded Green function 为内部线、以局部相互作用为顶点的 rooted trees。

2. **CPS symplectic pullback：在 retarded 初始数据坐标中全阶等于自由辛形式。**
   因为 $\phi^3/\phi^4$ 是无导数势能相互作用，$\Theta^\mu$ 没有 explicit coupling correction；若高阶修正在初始 Cauchy 面上取零，则

$$\begin{align}
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0.
\end{align}$$

3. **真正的压力点是 AdS 共振。**
   Global AdS3 的自由频率

$$\begin{align}
\omega_{n,m}=\Delta+2n+|m|
\end{align}$$

   是离散且等间距的。树图递归中的源项会产生频率组合。一旦源频率等于某个 normal mode 频率，retarded particular solution 出现 secular terms，例如 $t e^{-i\omega t}$。因此：
   - 有限时间 perturbation theory 没问题；
   - 试图构造长时间 quasi-periodic/dressed normal modes 时，必须做 Poincare-Lindstedt、normal form 或 resonant system；
   - 若继续用 naive tree expansion 表示“arbitrary perturbation level solution”，需要明确它是 finite-time retarded solution，不是自动给出全局时间均匀有效的 dressed spectrum。

这正是 global AdS3 比 4d flat 更好的 stress test：4d flat 的困难主要是 continuum/on-shell radiation；global AdS3 的困难是 reflecting boundary + discrete resonant spectrum。

## 1. 几何和场论

取 global AdS3 半径 $\ell=1$，坐标

$$\begin{align}
ds^2=\frac{1}{\cos^2 x} \left( -dt^2+dx^2+\sin^2x\,d\varphi^2 \right), \qquad 0\le x<\frac{\pi}{2},\quad \varphi\sim\varphi+2\pi.
\end{align}$$

也可用 $r=\tan x$：

$$\begin{align}
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\varphi^2.
\end{align}$$

考虑实标量

$$\begin{align}
S=\int d^3X\sqrt{-g}\, \left[ -\frac12g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi -\frac12m^2\phi^2 -\frac{g_3}{3!}\phi^3 -\frac{g_4}{4!}\phi^4 \right].
\end{align}$$

自由质量与边界维数关系为

$$\begin{align}
m^2=\Delta(\Delta-2), \qquad \Delta=1+\sqrt{1+m^2}.
\end{align}$$

本 note 先取 standard quantization/Dirichlet normalizable branch：

$$\begin{align}
\Delta>1,\qquad \phi\sim (\cos x)^\Delta.
\end{align}$$

$\Delta=1$ BF/log sector 和 $0<\Delta<1$ alternative/Robin quantization 需要额外 boundary counterterm 和边界条件，不放进这个第一轮压力测试。

EOM 写成

$$\begin{align}
(\Box-m^2)\phi -\frac{g_3}{2}\phi^2 -\frac{g_4}{3!}\phi^3=0.
\end{align}$$

等价积分方程为

$$\begin{align}
\phi(X)=\phi_0(X) +\int d^3Y\sqrt{-g(Y)}\, G_R(X,Y) \left[ \frac{g_3}{2}\phi(Y)^2 +\frac{g_4}{3!}\phi(Y)^3 \right],
\end{align}$$

其中

$$\begin{align}
(\Box_X-m^2)G_R(X,Y) =\frac{\delta^{(3)}(X-Y)}{\sqrt{-g(X)}}
\end{align}$$

并取 retarded support。

## 2. 自由 normal modes

自由方程

$$\begin{align}
(\Box-m^2)\phi_0=0
\end{align}$$

的 normalizable modes 可写为

$$\begin{align}
u_{n,m}(t,x,\varphi) =e^{-i\omega_{n,m}t}e^{im\varphi}R_{n,m}(x), \qquad n=0,1,\ldots,\quad m\in\mathbb Z,
\end{align}$$

频率为

$$\begin{align}
\omega_{n,m}=\Delta+2n+|m|.
\end{align}$$

径向函数取

$$\begin{align}
R_{n,m}(x)= N_{n,m} (\cos x)^\Delta (\sin x)^{|m|} P_n^{(|m|,\Delta-1)}(\cos 2x).
\end{align}$$

在 $r=\tan x$ 中，

$$\begin{align}
R_{n,m}(r)= N_{n,m} r^{|m|} (1+r^2)^{-\frac{\Delta+|m|}{2}} P_n^{(|m|,\Delta-1)} \left(\frac{1-r^2}{1+r^2}\right).
\end{align}$$

KG/CPS product 为

$$\begin{align}
(u,v)_{\rm KG} =i\int_{\Sigma_t}d\Sigma^\mu \left(u^*\nabla_\mu v-v\nabla_\mu u^*\right).
\end{align}$$

在 global time slice 上

$$\begin{align}
d\Sigma^t=\tan x\,dx\,d\varphi =\frac{r}{1+r^2}\,dr\,d\varphi.
\end{align}$$

归一化要求

$$\begin{align}
(u_{n,m},u_{n',m'})_{\rm KG} =\delta_{nn'}\delta_{mm'}.
\end{align}$$

这给

$$\begin{align}
N_{n,m}^2 = \frac{n!\,\Gamma(n+|m|+\Delta)} {2\pi\,\Gamma(n+|m|+1)\Gamma(n+\Delta)}.
\end{align}$$

代表性数值检查：取 $\Delta=2,n=1,|m|=2$，直接积分

$$\begin{align}
2\omega_{n,m}\,2\pi\int_0^{\pi/2}dx\,\tan x\,R_{n,m}(x)^2
\end{align}$$

得到 $0.9999999999999999$，与 KG norm $1$ 一致。

对应自由场展开为

$$\begin{align}
\phi_0 =\sum_{n,m} \left[ a_{n,m}u_{n,m} +a_{n,m}^*u_{n,m}^* \right].
\end{align}$$

自由 CPS 辛形式可写为

$$\begin{align}
\Omega_0 =-i\sum_{n,m} \delta a_{n,m}\wedge\delta a_{n,m}^*
\end{align}$$

或按相反 wedge convention 写成 $i\,\delta a^*\wedge\delta a$。量子化时

$$\begin{align}
[\hat a_{n,m},\hat a_{n',m'}^\dagger] =\delta_{nn'}\delta_{mm'}.
\end{align}$$

## 3. Retarded Green function 的模式展开

用 KG 归一化 modes，Pauli-Jordan kernel 为

$$\begin{align}
\Delta_{\rm PJ}(X,Y) =i\sum_\alpha \left[ u_\alpha(X)u_\alpha^*(Y) -u_\alpha^*(X)u_\alpha(Y) \right],
\end{align}$$

其中 $\alpha=(n,m)$。Retarded Green function 是

$$\begin{align}
G_R(X,Y)=\theta(t_X-t_Y)\Delta_{\rm PJ}(X,Y).
\end{align}$$

等价地，若只看每个 oscillator mode，它就是

$$\begin{align}
G_R\sim \theta(t-t') \frac{\sin\omega_\alpha(t-t')}{\omega_\alpha}
\end{align}$$

乘上相应空间 eigenfunction projector。这个表达式最适合看共振：强迫项频率若等于 $\omega_\alpha$，时间积分产生 secular term。

## 4. Tree recursion

写双耦合展开

$$\begin{align}
\phi=\sum_{a,b\ge0}g_3^ag_4^b\phi_{a,b}, \qquad \phi_{0,0}=\phi_0.
\end{align}$$

则

$$\begin{align}
(\Box-m^2)\phi_{a,b}=S_{a,b},
\end{align}$$

其中

$$\begin{align}
S_{a,b} = \frac12
\sum_{\substack{a_1+a_2=a-1\\
b_1+b_2=b}} \phi_{a_1,b_1}\phi_{a_2,b_2} +\frac1{3!}
\sum_{\substack{a_1+a_2+a_3=a\\
b_1+b_2+b_3=b-1}} \phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\end{align}$$

Retarded solution：

$$\begin{align}
\phi_{a,b}(X) =\int_{t_0}^{t_X} d^3Y\sqrt{-g(Y)} G_R(X,Y)S_{a,b}(Y), \qquad (a,b)\ne(0,0).
\end{align}$$

这等价于规定

$$\begin{align}
\phi_{a,b}|_{\Sigma_{t_0}}=0, \qquad \partial_t\phi_{a,b}|_{\Sigma_{t_0}}=0 \quad (a,b)\ne(0,0).
\end{align}$$

图规则：

- root：观测点 $X$；
- internal edge：AdS3 $G_R$；
- $\phi^3$ Lagrangian：EOM 中二叉顶点，因子 $g_3/2$；
- $\phi^4$ Lagrangian：EOM 中三叉顶点，因子 $g_4/3!$；
- leaf：free normal mode $u_{n,m}$ 或 $u_{n,m}^*$；
- vertex integral：$\int d^3Y\sqrt{-g(Y)}$。

## 5. Mode-space vertex coefficients

若把源投影到自由 modes 上，顶点由 AdS overlap integrals 给出。

三点 overlap：

$$\begin{align}
C_{\alpha\beta\gamma} =\int d^3X\sqrt{-g}\, u_\alpha^*(X)u_\beta(X)u_\gamma(X)
\end{align}$$

在时间积分前可拆成

$$\begin{align}
\int dt\, e^{i(\omega_\alpha-\sigma_\beta\omega_\beta-\sigma_\gamma\omega_\gamma)t} \times \int_0^{\pi/2}dx\,d\varphi\, \frac{\sin x}{\cos^3x}\, R_\alpha R_\beta R_\gamma
e^{i(-m_\alpha+\sigma_\beta m_\beta+\sigma_\gamma m_\gamma)\varphi}.
\end{align}$$

角向积分给 selection rule：

$$\begin{align}
m_\alpha=\sigma_\beta m_\beta+\sigma_\gamma m_\gamma.
\end{align}$$

四点 overlap 类似：

$$\begin{align}
C_{\alpha\beta\gamma\delta} =\int d^3X\sqrt{-g}\, u_\alpha^*u_\beta u_\gamma u_\delta,
\end{align}$$

角向 selection rule 为

$$\begin{align}
m_\alpha=\sigma_\beta m_\beta+\sigma_\gamma m_\gamma+\sigma_\delta m_\delta.
\end{align}$$

这里 $\sigma=\pm1$ 表示 leaf 是 $u$ 还是 $u^*$。这些 overlap 是 Jacobi 多项式积分；通常不需要先求闭式，作为 vertex coefficient 保留即可。

## 6. CPS symplectic form

变分 Lagrangian 给

$$\begin{align}
\delta L =E(\phi)\delta\phi\,{\rm vol} +d\Theta,
\end{align}$$

$$\begin{align}
\Theta^\mu=-\nabla^\mu\phi\,\delta\phi.
\end{align}$$

相互作用是势能项，所以 $\Theta^\mu$ 没有 $g_3,g_4$ 修正。Symplectic current 为

$$\begin{align}
\omega^\mu =\delta_1\phi\nabla^\mu\delta_2\phi -\delta_2\phi\nabla^\mu\delta_1\phi.
\end{align}$$

在 normalizable Dirichlet 条件下，边界 symplectic flux 消失：

$$\begin{align}
\lim_{x\to\pi/2}\int dt\,d\varphi\,\sqrt{-\gamma}\,n_\mu\omega^\mu=0.
\end{align}$$

因此 full $\Omega$ 在 Cauchy slice 之间守恒：

$$\begin{align}
\Omega_\Sigma =\int_\Sigma d\Sigma_\mu\,\omega^\mu.
\end{align}$$

拉回到 retarded 初始数据坐标：

$$\begin{align}
\Omega_{\rm eff} =p_{g_3,g_4}^*\Omega_{\rm int}.
\end{align}$$

在初始面 $\Sigma_{t_0}$，高阶修正及其时间导数为零，所以

$$\begin{align}
\Omega_{\rm eff} =\Omega_{\rm int}\big|_{\Sigma_{t_0}} =\Omega_0.
\end{align}$$

这是一个强的一致性检查：尽管任意晚时刻的 $\phi_{a,b}$ 含有复杂树图和可能的 secular terms，只要 retarded solution 仍在给定有限时间区间内定义，CPS symplectic form 不应产生 coupling correction。

## 7. Hamiltonian 和 AdS charges

Global time translation $\partial_t$ 的 Hamiltonian 为

$$\begin{align}
H=\int_{\Sigma_t}N\sqrt{h}\, \left[ \frac12N^{-2}(\partial_t\phi)^2 +\frac12h^{ij}\partial_i\phi\partial_j\phi +\frac12m^2\phi^2 +\frac{g_3}{3!}\phi^3 +\frac{g_4}{4!}\phi^4 \right],
\end{align}$$

其中 $N=\sec x$。自由部分为

$$\begin{align}
H_0=\sum_{n,m}\omega_{n,m} \left(a_{n,m}^*a_{n,m}+\frac12\right)
\end{align}$$

量子化后有零点能；经典讨论中去掉 $\frac12$。

对 AdS isometry $\xi\in\mathfrak{so}(2,2)$，

$$\begin{align}
\delta H_\xi=\iota_{X_\xi}\Omega, \qquad X_\xi\phi=\mathcal L_\xi\phi=\xi^\mu\nabla_\mu\phi.
\end{align}$$

无导数相互作用保持 AdS isometry，所以

$$\begin{align}
H_\xi=\int_\Sigma d\Sigma_\mu\,T^{\mu\nu}\xi_\nu
\end{align}$$

可积且守恒，前提是 boundary flux 消失。这里与引力 perturbation 不同：背景固定，标量的 $X_\xi$ 没有 $\kappa^{-1}$ 型 inhomogeneous term。

## 8. 共振：这个压力测试真正非平凡的地方

Global AdS3 的自由频率为

$$\begin{align}
\omega_{n,m}=\Delta+N,\qquad N:=2n+|m|\in\mathbb Z_{\ge0}.
\end{align}$$

因此频率差是整数，而许多频率和满足代数关系。源项中出现的频率为

$$\begin{align}
\Omega_{\rm source} =\sum_i\sigma_i\omega_{\alpha_i}, \qquad \sigma_i=\pm1.
\end{align}$$

投影到 mode $\alpha$ 后，若

$$\begin{align}
\Omega_{\rm source}=\omega_\alpha
\end{align}$$

且角动量 selection rule 与 radial overlap 不为零，则 oscillator 方程

$$\begin{align}
\ddot q_\alpha+\omega_\alpha^2 q_\alpha =F_\alpha e^{-i\omega_\alpha t}
\end{align}$$

给出

$$\begin{align}
q_\alpha^{\rm particular}\sim \frac{F_\alpha}{2i\omega_\alpha}\,t\,e^{-i\omega_\alpha t}.
\end{align}$$

这就是 secular growth。

### 8.1 $\phi^4$ 的一阶共振

$\phi^4$ Lagrangian 在 EOM 中给 cubic source $\phi_0^3$。其中有频率组合

$$\begin{align}
\omega_{\beta}+\omega_{\gamma}-\omega_{\delta} = \Delta+\big(N_\beta+N_\gamma-N_\delta\big).
\end{align}$$

这与某个

$$\begin{align}
\omega_\alpha=\Delta+N_\alpha
\end{align}$$

同型。因此只要

$$\begin{align}
N_\alpha=N_\beta+N_\gamma-N_\delta
\end{align}$$

并且角动量满足

$$\begin{align}
m_\alpha=m_\beta+m_\gamma-m_\delta,
\end{align}$$

就可能出现共振。也就是说 $\phi^4$ 在 AdS 中一般从 $O(g_4)$ 就会出现 resonant terms。

### 8.2 $\phi^3$ 的共振

$\phi^3$ Lagrangian 在 EOM 中给 quadratic source $\phi_0^2$。一阶频率组合为

$$\begin{align}
\pm\omega_\beta\pm\omega_\gamma.
\end{align}$$

对 generic non-integer $\Delta$，一阶共振不一定存在；若 $\Delta$ 为整数或满足特殊有理条件，会更容易出现。但即使一阶没有，二阶 $\phi_0\phi_{1,0}$ 已经含三频组合，通常会进入与 $\phi^4$ 类似的 resonant structure。因此 $\phi^3$ 只是在共振出现的阶数和 selection rule 上更细。

## 9. 如何处理 secular terms

这里有两个不同问题，不能混在一起。

### 9.1 有限时间 Cauchy 解

若目标是给定初始数据，在有限时间区间内构造解，则 retarded tree expansion 是正确对象。Secular terms 只是说明有效时间尺度有限，例如

$$\begin{align}
g\,t\ll1
\end{align}$$

或更具体由 resonance order 决定。此时 CPS 仍然用

$$\begin{align}
\Omega_{\rm eff}=\Omega_0
\end{align}$$

量子化初始数据。

### 9.2 长时间 dressed modes

若目标是构造长期有效的 dressed normal modes 或能谱，则必须消除 secular terms。常用方式：

1. **Poincare-Lindstedt**：令频率依赖振幅，

$$\begin{align}
\omega_\alpha\to\omega_\alpha+g\,\delta\omega_\alpha+\cdots.
\end{align}$$

2. **Normal form/canonical transformation**：用 canonical transformation 消去非共振项，保留共振 Hamiltonian。
3. **Two-time/resonant system**：引入慢时间 $\tau=g t$ 或 $\tau=g^2t$，令

$$\begin{align}
a_\alpha(t)\to A_\alpha(\tau)e^{-i\omega_\alpha t}.
\end{align}$$

对 quartic resonances，典型结构是

$$\begin{align}
i\frac{dA_\alpha}{d\tau} = \sum_{\beta,\gamma,\delta}^{\rm resonant} \mathcal C_{\alpha\beta\gamma\delta} A_\beta A_\gamma A_\delta^*,
\end{align}$$

其中 resonance condition 是

$$\begin{align}
\omega_\alpha+\omega_\delta =\omega_\beta+\omega_\gamma, \qquad m_\alpha+m_\delta=m_\beta+m_\gamma.
\end{align}$$

这个 resonant system 是 Hamiltonian 的，且应使用由 $\Omega_0$ 诱导的 Poisson bracket。若用 dressed amplitudes 作为相空间坐标，必须重新计算或声明 canonical transformation；不能直接假设旧 $a_\alpha$ 仍是 Darboux 坐标，除非构造保证 canonical。

## 10. 与前两个 stress tests 的比较

### 2606.24442 toy model

- 难点：kinetic perturbation 改变 $\Theta$ 和约束结构；
- tree structure：线性模型，退化为 unary chains；
- 检验重点：$p_\lambda^*\Omega_\lambda$ 是否正确抵消；
- 结果：低能分支全阶 canonical，但源文有一个精确低能 $[x,y]$ 符号不一致。

### 4d flat $\phi^3/\phi^4$

- 难点：真正分叉 tree recursion；
- 谱：连续，主要问题是 on-shell radiation 和 wave packet；
- CPS：retarded 初始数据坐标中 $\Omega_{\rm eff}=\Omega_0$；
- 长时间问题：散射/辐射，而非封闭盒共振。

### Global AdS3 interacting scalar

- 难点：分叉 trees + 离散共振谱；
- 谱：$\omega_{n,m}=\Delta+2n+|m|$，高共振；
- CPS：有限时间 retarded 初始数据坐标中仍有 $\Omega_{\rm eff}=\Omega_0$；
- 长时间问题：必须进入 resonant normal form 或 dressed-mode perturbation theory。

所以这个压力测试给出的修正不是“CPS formalism 错了”，而是：

> 原来的 arbitrary-order tree solution 需要标注适用域：它给的是有限时间 retarded Cauchy 解。若目标是 global AdS 中长期有效的 mode expansion、能谱或量子化相互作用 normal modes，必须在 tree expansion 基础上再做共振重整/normal form。

## 11. 对总 formalism 的修改建议

需要在总 note 中加入以下限定：

1. 在有离散共振谱的背景上，tree-level solution 的每阶表达式可能含 secular terms。
2. Retarded Green function 给出的初始数据 map 仍是 symplectic 的，但不保证级数在 $t\to\infty$ 一致有效。
3. 若改用 dressed modes 作为自由变量，homogeneous ambiguity 不再只是“归一化常数”，而是承担频率重整、resonance removal 和 canonical normal form 的任务。
4. CPS 量子化时应区分：

$$\begin{align}
\text{bare initial-data coordinates} \quad\text{vs.}\quad \text{dressed resonant coordinates}.
\end{align}$$

   前者 $\Omega=\Omega_0$；后者必须证明 canonical 或显式拉回 $\Omega$。

## 12. 最短公式集

Mode frequencies:

$$\begin{align}
\omega_{n,m}=\Delta+2n+|m|.
\end{align}$$

Mode functions:

$$\begin{align}
u_{n,m}=e^{-i\omega_{n,m}t}e^{im\varphi} N_{n,m}(\cos x)^\Delta(\sin x)^{|m|} P_n^{(|m|,\Delta-1)}(\cos2x).
\end{align}$$

Normalization:

$$\begin{align}
N_{n,m}^2 = \frac{n!\,\Gamma(n+|m|+\Delta)} {2\pi\,\Gamma(n+|m|+1)\Gamma(n+\Delta)}.
\end{align}$$

Tree recursion:

$$\begin{align}
\phi_{a,b}=G_R S_{a,b}.
\end{align}$$

CPS:

$$\begin{align}
\Omega_{\rm eff}=\Omega_0
\end{align}$$

for retarded initial-data normalization.

Resonance condition:

$$\begin{align}
\sum_i\sigma_i\omega_{\alpha_i}=\omega_\alpha, \qquad \sum_i\sigma_i m_{\alpha_i}=m_\alpha.
\end{align}$$

Quartic resonant system schematic:

$$\begin{align}
i\dot A_\alpha = \sum_{\omega_\alpha+\omega_\delta=\omega_\beta+\omega_\gamma} \mathcal C_{\alpha\beta\gamma\delta} A_\beta A_\gamma A_\delta^*.
\end{align}$$
