# Nonuniform Periodic Scalar Lattice

Date: 2026-07-31

## 0. Direct Verdict

老板的设想是可行的，但 statement 必须写成一族 regulator，而不是一个固定的有限格点系统：取一列周期非均匀网格，使最大格距趋于零，并用每个格点的 dual-cell width 归一化正则坐标和动量。这样可以同时做到

1. 每个格点只有一对标准正则算符 $q_j,p_j$，满足 $[q_j,p_k]=i\delta_{jk}$；
2. 由这些算符构造的场满足

$$\begin{align}
   [\phi_N(t,x),\pi_N(t,y)]&=i\delta_N(x,y),
\end{align}$$

   其中 $\delta_N$ 是一个 finite-rank projector kernel；它不 pointwise 等于 Dirac $\delta$，但与任意固定光滑测试函数卷积后趋于 continuum canonical commutator；
3. 离散 Hamiltonian 是一个显式的正定 coupled-oscillator quadratic form，可以在每个有限 $N$ 上 exact diagonalize；
4. 对固定的低能 mode，在 $h_{\max}\to0$ 且网格退化受控时，频率趋于

$$\begin{align}
   \omega_r&=\sqrt{m^2+\left(\frac{2\pi r}{L}\right)^2}, &r&\in\mathbb Z,
\end{align}$$

   即长度为 $L$ 的平直空间圆周上的 massive periodic scalar spectrum。

不均匀网格在有限 cutoff 下显式破坏 spatial translation symmetry，所以有限 $N$ 的非零频率通常不再成 exact doublets。这不是一个新的物理 background；只有在 continuum limit 中低能 doublets 恢复后，才能说构造了 translation-invariant flat-space field theory。若稀疏区域的最大格距不趋于零，或者把所有格点都用相同权重而忽略不均匀 quadrature measure，得到的就不是目标 continuum theory。

下面先给出最直接的 mass-lumped finite-volume construction，再给出 consistent piecewise-linear finite-element construction 作为独立检查。数值实现位于 `nonuniform_periodic_scalar.py`，exact symbolic residuals 位于 `nonuniform_periodic_scalar_checks.wl`。

## 1. Continuum Target and the Periodic Mesh

目标 theory 是长度为 $L$ 的 spatial circle 上的 real massive scalar：

$$\begin{align}
S&=\frac12\int \mathrm dt\int_0^L\mathrm dx\left[\dot\phi^2-(\partial_x\phi)^2-m^2\phi^2\right],\\
\pi&=\dot\phi,\\
H&=\frac12\int_0^L\mathrm dx\left[\pi^2+(\partial_x\phi)^2+m^2\phi^2\right],\\
[\phi(t,x),\pi(t,y)]&=i\delta_{S_L^1}(x-y).
\end{align}$$

本文假设 $m>0$。这避开了 periodic massless constant mode 的 non-Fock subtlety；它与 `gluing Dirichlet pieces into a periodic field theory.md` 第 6.3 节的 zero-mode 问题相同。

取 $N$ 个按物理坐标 $x$ 排序的 sites，

$$\begin{align}
0=x_1<x_2<\cdots<x_N<L,\qquad x_{N+1}=x_1+L,
\end{align}$$

并定义 cyclic edge lengths

$$\begin{align}
h_j&:=x_{j+1}-x_j>0, &\sum_{j=1}^Nh_j&=L.
\end{align}$$

格点 $x_j$ 的 periodic dual cell 是相邻 edge midpoints 之间的区间

$$\begin{align}
C_j&=\left[\frac{x_{j-1}+x_j}{2},\frac{x_j+x_{j+1}}{2}\right),\\
w_j&:=|C_j|=\frac{h_{j-1}+h_j}{2}, &\sum_{j=1}^Nw_j&=L,
\end{align}$$

其中跨越 $x=0$ 的 cell 在 circle 的 universal cover 上理解。$w_j$ 而不是某个统一的 $\varepsilon$，是第 $j$ 个 canonical pair 对应的 physical volume。

一个直接的 two-density family 是：把圆周分成两个固定长度的 regions，第一区域放 $N_1$ 个等距 sites，第二区域放 $N_2$ 个等距 sites，并在 refinement 时保持 $N_1/N_2$ 固定而令 $N_1,N_2\to\infty$。这允许一部分区域始终比另一部分稠密，但仍有 $h_{\max}\to0$。

也可以用 uniform computational coordinate $\xi\sim\xi+1$ 与一个单调 periodic lift $x=X(\xi)$ 来生成 mesh。此时 flat-space action 写成

$$\begin{align}
S=\frac12\int\mathrm dt\int_0^1\mathrm d\xi\left[ X'(\xi)\dot\phi^2 -\frac1{X'(\xi)}(\partial_\xi\phi)^2 -m^2X'(\xi)\phi^2 \right].
\end{align}$$

$X'$ 的 position dependence 只是 physical measure 与 inverse metric 在 computational coordinate 中的 Jacobian factors，不代表一个 position-dependent physical coupling。第 3 节中的 $w_j$ 与 $h_j^{-1}$ 正是它们的离散版本。若在 uniform $\xi$ lattice 上把这些 factors 丢掉，就会模拟另一套 inhomogeneous medium，而不是用不均匀采样逼近同一个 flat theory。

## 2. From Site Operators to Operator-Valued Distributions

在每个 site 引入一对 canonical operators。按本项目约定省略 operator hats：

$$\begin{align}
[q_j,p_k]&=i\delta_{jk}, & [q_j,q_k]&=[p_j,p_k]=0.
\end{align}$$

定义 dual-cell orthonormal functions

$$\begin{align}
e_j(x)&:=\frac{\mathbf 1_{C_j}(x)}{\sqrt{w_j}}, & \int_0^L\mathrm dx\,e_j(x)e_k(x)&=\delta_{jk}.
\end{align}$$

格点场算符取为

$$\begin{align}
\phi_N(t,x)&:=\sum_{j=1}^N e_j(x)q_j(t),\\
\pi_N(t,x)&:=\sum_{j=1}^N e_j(x)p_j(t).
\end{align}$$

因此在 $C_j$ 内，场和 momentum-density samples 分别是

$$\begin{align}
\phi_j&=\frac{q_j}{\sqrt{w_j}}, & \pi_j&=\frac{p_j}{\sqrt{w_j}}.
\end{align}$$

这一步中的 $\sqrt{w_j}$ 是关键。若直接把 $q_j$ 当作 $\phi(x_j)$，同时仍要求 $[q_j,p_k]=i\delta_{jk}$，则 continuum measure 与 canonical delta normalization 都会错误。

有限格点 equal-time commutator 是

$$\begin{align}
[\phi_N(t,x),\pi_N(t,y)] &=i\delta_N(x,y),\\
\delta_N(x,y) &:=\sum_{j=1}^Ne_j(x)e_j(y) =\sum_{j=1}^N\frac{\mathbf 1_{C_j}(x)\mathbf 1_{C_j}(y)}{w_j}.
\end{align}$$

$\delta_N$ 是从 $L^2(S_L^1)$ 到 dual-cell piecewise-constant functions 的 orthogonal-projector kernel。它没有有意义的 pointwise Dirac-delta limit；正确的 statement 必须 smeared。

对 $f,g\in C^1(S_L^1)$，定义

$$\begin{align}
\phi_N[f]&:=\int_0^L\mathrm dx\,f(x)\phi_N(x), & \pi_N[g]&:=\int_0^L\mathrm dx\,g(x)\pi_N(x),\\
\overline f_j&:=\frac1{w_j}\int_{C_j}\mathrm dx\,f(x), & \overline g_j&:=\frac1{w_j}\int_{C_j}\mathrm dx\,g(x).
\end{align}$$

则 exact finite-$N$ commutator 是

$$\begin{align}
[\phi_N[f],\pi_N[g]] &=i\sum_{j=1}^Nw_j\overline f_j\overline g_j.
\end{align}$$

它与 continuum answer 的误差可以直接控制。每个 cell 上有 identity

$$\begin{align}
\int_{C_j}\mathrm dx\,f(x)g(x)-w_j\overline f_j\overline g_j =\frac1{2w_j}\int_{C_j}\mathrm dx\int_{C_j}\mathrm dy\, [f(x)-f(y)][g(x)-g(y)].
\end{align}$$

因此若 $w_{\max}:=\max_jw_j$，则

$$\begin{align}
\left| \frac1i[\phi_N[f],\pi_N[g]]-\int_0^L\mathrm dx\,f(x)g(x) \right| &\leq \frac{Lw_{\max}^2}{12} \lVert f'\rVert_{\infty}\lVert g'\rVert_{\infty}.
\end{align}
\end{align}$$

所以 $w_{\max}\to0$ 时，

$$\begin{align}
[\phi_N[f],\pi_N[g]]&\longrightarrow i\int_0^L\mathrm dx\,f(x)g(x),\\
[\phi_N[f],\phi_N[g]]&=[\pi_N[f],\pi_N[g]]=0.
\end{align}$$

这正是所要求的 operator-valued-distribution 意义下的 canonical commutator。对一般 two-variable test function，可先对 finite sums $F(x,y)=\sum_a f_a(x)g_a(y)$ 使用上式，再由 test-function topology 的稠密性延拓。

## 3. Nonuniform Lattice Action and Hamiltonian

先把 $\phi_j$ 当作 $x_j$ 附近 cell 的 field sample。continuum action 的 mass-lumped discretization 是

$$\begin{align}
S_N=\frac12\int\mathrm dt\left\{ \sum_{j=1}^Nw_j\dot\phi_j^2 -\sum_{j=1}^N\left[ \frac{(\phi_{j+1}-\phi_j)^2}{h_j} +m^2w_j\phi_j^2 \right]\right\}, \qquad \phi_{N+1}=\phi_1.
\end{align}$$

Site coordinate $\phi_j$ 的 integrated canonical momentum 是

$$\begin{align}
P_j&:=\frac{\partial L_N}{\partial\dot\phi_j}=w_j\dot\phi_j.
\end{align}$$

从 $[\phi_j,P_k]=i\delta_{jk}$ 出发，定义 unit-normalized canonical variables

$$\begin{align}
q_j&:=\sqrt{w_j}\phi_j, & p_j&:=\frac{P_j}{\sqrt{w_j}}=\sqrt{w_j}\dot\phi_j.
\end{align}$$

这与第 2 节的 field reconstruction 完全一致。finite-dimensional CPS form 也保持标准形式：

$$\begin{align}
\Omega_N&=\sum_{j=1}^N\delta P_j\wedge\delta\phi_j =\sum_{j=1}^N\delta p_j\wedge\delta q_j.
\end{align}$$

Hamiltonian 是

$$\begin{align}
H_N &=\frac12\sum_{j=1}^N\left(p_j^2+m^2q_j^2\right) +\frac12\sum_{j=1}^N\frac1{h_j} \left(\frac{q_{j+1}}{\sqrt{w_{j+1}}} -\frac{q_j}{\sqrt{w_j}}\right)^2.
\end{align}$$

令 $W=\operatorname{diag}(w_1,\ldots,w_N)$，并定义 periodic stiffness matrix

$$\begin{align}
S_{jj}&=\frac1{h_{j-1}}+\frac1{h_j},\\
S_{j,j+1}&=-\frac1{h_j}, & S_{j,j-1}&=-\frac1{h_{j-1}},
\end{align}$$

其余 entries 为零，indices cyclic。则

$$\begin{align}
H_N&=\frac12\left(\boldsymbol p^T\boldsymbol p +\boldsymbol q^TA_N\boldsymbol q\right),\\
A_N&=m^2\boldsymbol 1+W^{-1/2}SW^{-1/2}.
\end{align}$$

Positivity 是 manifest 的：

$$\begin{align}
\boldsymbol q^T(A_N-m^2\boldsymbol 1)\boldsymbol q &=\sum_{j=1}^N\frac{(\phi_{j+1}-\phi_j)^2}{h_j}\geq0.
\end{align}$$

所以 $m>0$ 时 $A_N$ positive definite，所有 frequencies 都满足 $\omega_r\geq m$。此外任意非均匀网格都有 exact constant-field eigenvector

$$\begin{align}
q_j^{(0)}&=\sqrt{\frac{w_j}{L}}, & A_N\boldsymbol q^{(0)}&=m^2\boldsymbol q^{(0)}.
\end{align}$$

因此 spatial constant mode 的 frequency 在任意 cutoff 上都恰好是 $m$，不是只在 continuum limit 才恢复。

离散 equation of motion 也有直接的 flux form。定义 edge flux

$$\begin{align}
F_{j+1/2}&:=\frac{\phi_{j+1}-\phi_j}{h_j},
\end{align}$$

则

$$\begin{align}
w_j\left(\ddot\phi_j+m^2\phi_j\right) &=F_{j+1/2}-F_{j-1/2}.
\end{align}$$

因此 dense 与 sparse regions 的交界处不需要额外 defect condition：相邻 edge lengths 已经进入同一个 discrete divergence。若人为在交界处另外乘一个未由 action 导出的 coupling，就会改变 continuum interface physics。

### 3.1 Relation to the Previous Dirichlet/Neumann Gluing Problem

这个 construction 可以直接重写成两个 nonuniform chains 的 gluing。考虑被 cut 的一条 periodic edge，左右 endpoint sites 记为 $\ell,r$，其 physical edge length 为 $h_X$。完整 periodic Hamiltonian 在这条 edge 上的能量是

$$\begin{align}
H_X^P&=\frac1{2h_X}(\phi_r-\phi_\ell)^2.
\end{align}$$

若 reference theory 是两个 Dirichlet pieces，就用同一 ghost-edge length 把两个 endpoints 分别 pin 到零：

$$\begin{align}
H_X^D&=\frac1{2h_X}(\phi_\ell^2+\phi_r^2).
\end{align}$$

于是 exact finite-lattice identity 是

$$\begin{align}
H_X^P&=H_X^D+V_{D,X},\\
V_{D,X}&=-\frac{\phi_\ell\phi_r}{h_X} =-\frac{q_\ell q_r}{h_X\sqrt{w_\ell w_r}}.
\end{align}$$

圆周有两个 cuts，所以对两个 $X$ 求和。均匀情形 $h_X=w_\ell=w_r=\varepsilon$ 立即恢复旧笔记中的

$$\begin{align}
V_{D,X}&=-\frac{q_\ell q_r}{\varepsilon^2}.
\end{align}$$

若 reference theory 是两个 Neumann pieces，则 cut edge 完全不存在，不加 endpoint pinning。gluing interaction 就是把 spring 本身加回来：

$$\begin{align}
H_X^P&=H_X^N+V_{N,X},\\
V_{N,X}&=\frac1{2h_X} \left(\frac{q_r}{\sqrt{w_r}}-\frac{q_\ell}{\sqrt{w_\ell}}\right)^2.
\end{align}$$

所以 Dirichlet 与 Neumann reference descriptions 都能在任意有限非均匀 lattice 上 exact reconstruct 同一个 periodic Hamiltonian；它们只是不同的 reference quadratic forms。Dirichlet interaction 取消两项 pinning 后留下 cross coupling，Neumann interaction 则添加完整 cross-edge spring。

这并不推翻旧问题中的 continuum Fock obstruction。finite lattice 上的 identity 永远合法；取 $N\to\infty$ 时，是否存在作用在某个 continuum product Fock representation 上的 unitary，仍是单独的 Shale--Stinespring/domain question。非均匀 regulator 提供新的 computational coordinates，不会自动把两个 strict homogeneous boundary-condition theories 变成同一个 continuum representation。

上面两个 exact reference decompositions 都保留完整 periodic mesh 的 $w_j$，只替换 cut-edge gradient term。若两条 chains 是先彼此独立离散、并各自赋予了不同的 endpoint cell volumes，就必须先把它们映射到同一组 $q_j,p_j$ 与同一个 global quadrature measure；否则还会出现 kinetic/mass normalization mismatch，不能只补一个 cross spring。

## 4. Exact Finite-Dimensional Diagonalization

因为 $A_N$ 是 real symmetric positive definite，存在 orthogonal matrix $O$ 使

$$\begin{align}
O^TO&=\boldsymbol 1, & O^TA_NO&=\operatorname{diag}(\omega_0^2,\ldots,\omega_{N-1}^2).
\end{align}$$

定义 normal coordinates

$$\begin{align}
\boldsymbol Q&=O^T\boldsymbol q, & \boldsymbol\Pi&=O^T\boldsymbol p,
\end{align}$$

则 transformation 是 canonical，并且

$$\begin{align}
H_N&=\frac12\sum_{r=0}^{N-1}\left(\Pi_r^2+\omega_r^2Q_r^2\right).
\end{align}$$

引入

$$\begin{align}
b_r&=\frac1{\sqrt2}\left(\sqrt{\omega_r}Q_r +\frac{i}{\sqrt{\omega_r}}\Pi_r\right),\\
[b_r,b_s^\dagger]&=\delta_{rs},
\end{align}$$

便得到

$$\begin{align}
H_N&=\sum_{r=0}^{N-1}\omega_r \left(b_r^\dagger b_r+\frac12\right).
\end{align}$$

定义 normalized lattice mode profiles

$$\begin{align}
u_{r,N}(x)&:=\sum_{j=1}^Ne_j(x)O_{jr}, & \int_0^L\mathrm dx\,u_{r,N}(x)u_{s,N}(x)&=\delta_{rs}.
\end{align}$$

Field operators 可写成

$$\begin{align}
\phi_N(t,x) &=\sum_{r=0}^{N-1}\frac{u_{r,N}(x)}{\sqrt{2\omega_r}} \left(b_re^{-i\omega_rt}+b_r^\dagger e^{i\omega_rt}\right),\\
\pi_N(t,x) &=-i\sum_{r=0}^{N-1}\sqrt{\frac{\omega_r}{2}}u_{r,N}(x) \left(b_re^{-i\omega_rt}-b_r^\dagger e^{i\omega_rt}\right).
\end{align}$$

Mode completeness 给出

$$\begin{align}
\sum_{r=0}^{N-1}u_{r,N}(x)u_{r,N}(y)&=\delta_N(x,y),
\end{align}$$

所以 diagonalized field 与第 2 节的 smeared CCR 完全一致。finite-lattice vacuum two-point function 是

$$\begin{align}
W_N(t,x;t',y) &=\sum_{r=0}^{N-1}\frac{u_{r,N}(x)u_{r,N}(y)}{2\omega_r} e^{-i\omega_r(t-t')},
\end{align}$$

而 equal-time canonical covariances 可直接由 $A_N$ 算出：

$$\begin{align}
\langle0|\boldsymbol q\boldsymbol q^T|0\rangle &=\frac12A_N^{-1/2}, & \langle0|\boldsymbol p\boldsymbol p^T|0\rangle &=\frac12A_N^{1/2}.
\end{align}$$

这些量提供比只比较 eigenvalues 更强的后续检验：把 $W_N$ 或 covariance 与固定测试函数 smear 后，应趋于 continuum massive-circle two-point distribution。

### Uniform-Grid Baseline

若 $h_j=w_j=\varepsilon=L/N$，$A_N$ 恢复 circulant nearest-neighbor matrix，exact frequencies 是

$$\begin{align}
\omega_r^2 &=m^2+\frac4{\varepsilon^2}\sin^2\left(\frac{\pi r}{N}\right), &r&=0,\ldots,N-1.
\end{align}$$

固定 continuum label $r\in\mathbb Z$ 后取 $N\to\infty$，得到

$$\begin{align}
\omega_r^2&\longrightarrow m^2+\left(\frac{2\pi r}{L}\right)^2.
\end{align}$$

非均匀情形不再有 discrete Fourier eigenvectors，但 real-symmetric matrix diagonalization 已经是完整答案。

## 5. Consistent Piecewise-Linear Finite-Element Control

Mass-lumped construction 最直接地实现了“一点一对 $q,p$”与 dual-cell projector kernel。为了检查结果不依赖这个特定 quadrature，可以在同一个 mesh 上使用 periodic hat functions $\psi_j(x)$，令

$$\begin{align}
\phi_N(x)&=\sum_{j=1}^N\psi_j(x)\Phi_j.
\end{align}$$

Consistent mass matrix 与 stiffness matrix 是

$$\begin{align}
M_{jj}&=\frac{h_{j-1}+h_j}{3}, & M_{j,j+1}&=\frac{h_j}{6},\\
S_{jj}&=\frac1{h_{j-1}}+\frac1{h_j}, & S_{j,j+1}&=-\frac1{h_j},
\end{align}$$

加上 cyclic symmetric entries。离散 Lagrangian、canonical momentum 与 Hamiltonian 是

$$\begin{align}
L_N^{\rm FE} &=\frac12\dot{\boldsymbol\Phi}^TM\dot{\boldsymbol\Phi} -\frac12\boldsymbol\Phi^T(S+m^2M)\boldsymbol\Phi,\\
\boldsymbol P&=M\dot{\boldsymbol\Phi}, & [\Phi_j,P_k]&=i\delta_{jk},\\
H_N^{\rm FE} &=\frac12\boldsymbol P^TM^{-1}\boldsymbol P +\frac12\boldsymbol\Phi^T(S+m^2M)\boldsymbol\Phi.
\end{align}$$

Momentum density 的 consistent reconstruction 是

$$\begin{align}
\pi_N(x)&=\boldsymbol\psi(x)^TM^{-1}\boldsymbol P.
\end{align}$$

因此

$$\begin{align}
[\phi_N(x),\pi_N(y)] &=i\boldsymbol\psi(x)^TM^{-1}\boldsymbol\psi(y).
\end{align}$$

右边是到 periodic piecewise-linear finite-element space 的 $L^2$ orthogonal-projector kernel。若

$$\begin{align}
(b_f)_j&:=\int_0^L\mathrm dx\,\psi_j(x)f(x),
\end{align}$$

则 exact smeared commutator 是

$$\begin{align}
[\phi_N[f],\pi_N[g]] &=i\boldsymbol b_f^TM^{-1}\boldsymbol b_g =i\langle P_Nf,P_Ng\rangle_{L^2},
\end{align}$$

其中 $P_N$ 是该 finite-element space 的 $L^2$ projector。由 orthogonal decomposition，

$$\begin{align}
\langle P_Nf,P_Ng\rangle-\langle f,g\rangle &=-\langle(1-P_N)f,(1-P_N)g\rangle.
\end{align}$$

因此只要这些 spaces 在 $L^2(S_L^1)$ 中变得 dense，smeared CCR 同样收敛。frequencies 来自 generalized eigenvalue problem

$$\begin{align}
(S+m^2M)\boldsymbol v_r &=\omega_r^2M\boldsymbol v_r, & \boldsymbol v_r^TM\boldsymbol v_s&=\delta_{rs}.
\end{align}$$

把 $M$ mass-lump 为 $W=\operatorname{diag}(w_j)$ 后，matrix Hamiltonian 回到第 3 节的 $A_N$。两种 schemes 的 finite-cutoff UV spectra 不同，但应给出相同的 continuum low-energy spectrum。

## 6. Continuum-Limit Conditions and Numerical Benchmark

要把一族不均匀 lattices 称为 flat-space field-theory regulator，至少固定以下条件：

1. $L$ 与 $m>0$ 固定；
2. $h_{\max}:=\max_jh_j\to0$，所以圆周上没有保持有限 physical size 的 sparse cell；
3. 为使用标准稳定性与 spectral-convergence estimates，取 shape-regular family，例如存在与 $N$ 无关的常数 $R$ 使 $h_{\max}/h_{\min}\leq R$；
4. 先固定测试函数的 physical wavelength 或固定 continuum mode label，再取 $N\to\infty$；接近 lattice cutoff 的 modes 不应与 continuum dispersion 比较；
5. finite-$N$ translation breaking 只允许作为 regulator artifact。低能 $r$ 与 $-r$ frequency splitting 必须在 refinement 中消失。

`nonuniform_periodic_scalar.py` 实现了

- uniform、two-density 与 smooth-density periodic meshes；
- $W$、$M$ 与 $S$ 的 assembly；
- mass-lumped ordinary symmetric diagonalization；
- consistent generalized eigenvalue problem；
- dual-cell 与 piecewise-linear smeared CCR；
- uniform-grid analytic regression；
- nonuniform Dirichlet/Neumann cut-and-glue matrix identities；
- constant-mode、orthonormality、positivity与 convergence checks。

`nonuniform_periodic_scalar_checks.wl` 保存了 symbolic edge-length、uniform characteristic polynomial、single-edge Dirichlet/Neumann gluing 与 smeared-cell identity 的独立 Mathematica checks。

运行方式是

```bash
/Users/koishi/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3 \
  "Articles/Quantization in AdS/gluing/nonuniform_periodic_scalar.py" --check
wolframscript -file "Articles/Quantization in AdS/gluing/nonuniform_periodic_scalar_checks.wl"
```

Python implementation 依赖 NumPy；当前 system `python3` 不含 NumPy，所以命令显式使用 workspace bundled Python。本次验证使用 NumPy 2.3.5。

默认 benchmark 取 $L=2\pi$、$m=0.7$，前半圆有 $48$ 个 sites，后半圆有 $16$ 个 sites，因此 $h_{\max}/h_{\min}=3$。最低九个 frequencies 是

| sorted index | continuum | mass-lumped | consistent FE |
|---:|---:|---:|---:|
| 0 | 0.70000000 | 0.70000000 | 0.70000000 |
| 1 | 1.22065556 | 1.21992237 | 1.22138543 |
| 2 | 1.22065556 | 1.21992488 | 1.22138627 |
| 3 | 2.11896201 | 2.11214321 | 2.12565179 |
| 4 | 2.11896201 | 2.11223666 | 2.12568309 |
| 5 | 3.08058436 | 3.05647624 | 3.10365741 |
| 6 | 3.08058436 | 3.05721922 | 3.10390748 |
| 7 | 4.06078810 | 4.00172695 | 4.11534520 |
| 8 | 4.06078810 | 4.00495174 | 4.11643735 |

Constant mode 已经 exact；其余 continuum doublets 在 finite nonuniform mesh 上轻微 split。固定 density ratio $3$，同时 refine 两个 regions，得到

| $N$ | $h_{\max}$ | lumped CCR error | consistent CCR error | lumped low-spectrum error | consistent low-spectrum error |
|---:|---:|---:|---:|---:|---:|
| 16 | $7.854\times10^{-1}$ | $1.324\times10^{-1}$ | $2.355\times10^{-3}$ | $5.550\times10^{-1}$ | $3.385\times10^{-1}$ |
| 32 | $3.927\times10^{-1}$ | $3.741\times10^{-2}$ | $1.177\times10^{-4}$ | $1.049\times10^{-1}$ | $9.164\times10^{-2}$ |
| 64 | $1.963\times10^{-1}$ | $9.676\times10^{-3}$ | $6.900\times10^{-6}$ | $2.411\times10^{-2}$ | $2.332\times10^{-2}$ |
| 128 | $9.817\times10^{-2}$ | $2.446\times10^{-3}$ | $4.242\times10^{-7}$ | $5.906\times10^{-3}$ | $5.857\times10^{-3}$ |

这里 CCR error 是一对固定 smooth trigonometric test functions 的 smeared commutator coefficient 与 $\int fg$ 的差；spectrum error 是最低七个 sorted frequencies 的最大绝对误差。该 sequence 中 mass-lumped CCR 与两种 low-spectrum errors 显示二阶收敛。对这组 smooth tests，consistent projector 的 CCR error 数值上显示更高阶收敛；这不是对任意低正则测试函数的统一高阶 claim。

## 7. Verification Boundary

Verified:

- 从 dual-cell orthonormality 出发，finite-$N$ CCR kernel、smeared commutator与 $O(w_{\max}^2)$ bound 已解析推导。
- Hamiltonian 的 positivity、exact constant mode、orthogonal oscillator diagonalization、mode completeness、Dirichlet gluing identity 与 Neumann gluing identity 已在 finite-dimensional algebra 中解析得到。
- Mathematica 对任意正的四个 symbolic edge lengths 验证了 $S\boldsymbol1=0$、$M\boldsymbol1=\boldsymbol w$、$A_N\sqrt{\boldsymbol w}=m^2\sqrt{\boldsymbol w}$ 与 $\sum_jw_j=L$；所有 residuals 为零。
- Mathematica 对 $N=5$ uniform mesh 验证了 characteristic polynomial 与 $m^2+4\varepsilon^{-2}\sin^2(\pi r/5)$ 的 spectrum 完全一致；residual 为零。
- Python regression 验证了两种 mass schemes 的 canonical normalization、Hamiltonian diagonalization、constant mode、uniform analytic dispersions、Dirichlet/Neumann matrix reconstruction，以及上表的 nonuniform convergence；所有 checks passed。

Assumptions:

- $m>0$，background 是固定长度 $L$ 的平直 periodic spatial circle，time 保持 continuum。
- continuum claim 针对一族 $h_{\max}\to0$ 且 mesh ratio 受控的 grids，以及固定的 smooth test functions 和固定的低能 modes。
- finite-element spectral convergence 使用 standard shape-regular refinement picture；上面的具体 convergence rate 由 benchmark 支持。

Not verified:

- 尚未给出 $A_N$ 到 continuum Klein--Gordon spatial operator 的完整 norm-resolvent 或 strong-resolvent convergence proof。
- 尚未证明全部 smeared Wightman functions、vacuum states 或 Fock representations 的 continuum convergence；目前只构造了 finite-$N$ covariance formula，并验证了 CCR 与低能 spectrum。
- 没有处理 $m=0$ constant mode、interactions、counterterms、gauge constraints、非均匀 time lattice 或 Lorentz-symmetry restoration 的 quantitative bound。
- 没有声称 mesh ratio 随 $N$ 无界增长时仍保持相同的 stability 或 convergence rate。
- 这个 regulator 不解决旧 Dirichlet/Neumann product Fock spaces 的 continuum unitary-implementability 问题；该问题仍需独立的 domain 与 Shale--Stinespring analysis。

## 8. Immediate Next Calculations

1. 对 discrete quadratic forms 证明 Mosco 或 norm-resolvent convergence，并明确 embedding $J_N:\mathbb R^N\to L^2(S_L^1)$ 取 dual-cell basis 还是 piecewise-linear basis。
2. 对若干固定测试函数计算 smeared $W_N$，与 massive circle 的 exact Fourier-series Wightman function 比较；这会同时检验 vacuum covariance，而不仅是 CCR 与 eigenvalues。
3. 固定两个独立 nonuniform Dirichlet 或 Neumann reference chains，系统追踪两个 cut-edge lengths、endpoint dual volumes 与 Bogoliubov coefficients，研究 regulator distribution 是否改变旧问题中 particle-number divergence 的 coefficient，但不预设它会消除 divergence。
4. 若要加入 $\lambda\phi^4$，先在 fixed lattice 上定义 $\sum_jw_j\lambda\phi_j^4/4!$，再分别研究 bulk mass/coupling renormalization 与 density-jump 附近是否需要额外 interface counterterm。
