# Gluing Dirichlet pieces into a periodic field theory

Date: 2026-07-20

## 0. Direct verdict

老板的设想在固定 UV regulator 下是正确的，而且对自由场可以精确完成：把周期晶格切成两段，以两段 Dirichlet Hamiltonian 作为 reference Hamiltonian，则

$$\begin{align}
\mathcal H_{\varepsilon} &\cong \mathcal F_{D,1}^{(\varepsilon)}\widehat\otimes \mathcal F_{D,2}^{(\varepsilon)},\\
H_{P}^{(\varepsilon)} &=H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)} +V_{\rm glue}^{(\varepsilon)}.
\end{align}$$

这里 $V_{\rm glue}^{(\varepsilon)}$ 是一个显式的 quadratic boundary coupling。把它和两段 Dirichlet Hamiltonian 一起做 exact Bogoliubov diagonalization，得到的不是“几乎”而是**恰好**是周期晶格的能谱；最后取 $\varepsilon\to0$ 才得到 continuum periodic spectrum。

但是，若把 statement 直接写成 continuum theory 的

$$\begin{align}
\mathcal H_{P}\stackrel{?}{=} \mathcal F_{D,1}\widehat\otimes\mathcal F_{D,2},
\end{align}$$

则并不成立为一个 theory-defining statement。严格 homogeneous Dirichlet theory 已经把切口上的 field trace 固定为零；两个这样的 reduced theories 的 tensor product 的 natural finite-energy domain 只描述在两个切口都为零的场，缺少周期场的一般 boundary trace。periodic 与 decoupled Dirichlet theory 具有相同的 bulk differential expression，但具有不同的 self-adjoint domain。一个抽象 Hilbert-space isomorphism 不能代替这个 domain data。

正确的 continuum statement 是：

1. 在 classical CPS 中保留每一片的 interface field 和 normal flux，随后施加 continuity 与 flux-matching constraints；
2. 在 quantum theory 中，对共同的 interface histories 积分，或者先保留 UV regulator，再对显式的 $V_{\rm glue}^{(\varepsilon)}$ 做 exact diagonalization；
3. 若要把 continuum periodic representation 真正实现为 Dirichlet product Fock space 上的 Hamiltonian，还必须检查 Bogoliubov implementability；第 2.1 节将证明任意 $L_1,L_2>0$ 的 two-piece massive scalar 都不满足这个条件。

这个 obstruction 不能靠 zeta function regularization 变成 ordinary Fock-space equivalence：Hilbert--Schmidt membership 是一个 operator-ideal condition，不是等待赋有限值的 scalar spectral sum。zeta regularization 可以合法地定义 vacuum energy、functional determinant 与 DtN gluing amplitude，却不能制造不存在的 Fock vector 或 CCR-intertwining unitary。若允许改变“product”的含义，则可考虑 boundary direct integral、crossed-product GNS representation 或更大的 infinite-tensor-product sector；它们都明确扩大 algebra/representation，而不是把原来的 strict-Dirichlet product Fock space 偷换成 global Fock space。第 8 节给出精确区分。

下面先用 $1+1$ 维 massive real scalar 给出完整 benchmark。主文先假设 $m>0$；massless periodic zero mode 在第 6 节单独说明。第 7 节再把 angular circle 非等切成两个 global AdS3 wedges：radial Jacobi problem 保持不变，angular DtN gluing 精确恢复 $\omega_{n,\ell}=\Delta+2n+|\ell|$，而 continuum strict-wedge product Fock representation 仍因 boundary-domain obstruction 与 global representation 不幺正等价。

## 1. 两个切口与 classical CPS gluing

令空间圆周长度为

$$\begin{align}
C=L_{1}+L_{2},
\end{align}$$

并在 $A,B$ 两点切开。取

$$\begin{align}
I_{1}&=[0,L_{1}], && A\longrightarrow B,\\
I_{2}&=[0,L_{2}], && B\longrightarrow A.
\end{align}$$

两片上的 action 为

$$\begin{align}
S_i[\phi_i] =\frac12\int dt\int_{I_i}dx_i \left[(\partial_t\phi_i)^2-(\partial_{x_i}\phi_i)^2-m^2\phi_i^2\right].
\end{align}$$

在每个 endpoint 定义 outward normal derivative

$$\begin{align}
\rho_i:=n_i\partial_{x_i}\phi_i.
\end{align}$$

则 variation 的 timelike-interface 部分为

$$\begin{align}
\delta S_i =\int_{\mathcal M_i}E_i\,\delta\phi_i -\int_{\Gamma_i}dt\,\rho_i\,\delta q_i +\Theta_i\big|_{t_i}^{t_f},
\end{align}$$

其中 $q_i$ 是 $\phi_i$ 在 endpoint 的 trace。完整 periodic field 的 gluing conditions 是

$$\begin{align}
q_{1A}&=q_{2A}=:q_A, &q_{1B}&=q_{2B}=:q_B,\\
\rho_{1A}+\rho_{2A}&=0, &\rho_{1B}+\rho_{2B}&=0.
\end{align}$$

第一行是 field continuity，第二行是 conjugate normal flux continuity。它们同时保证 $\delta(S_1+S_2)$ 的 interface term 消失。

每一片的 equal-time CPS form 是

$$\begin{align}
\Omega_i=\int_{I_i}dx_i\,\delta\pi_i\wedge\delta\phi_i, \qquad \pi_i=\partial_t\phi_i.
\end{align}$$

单独允许任意 $q_i$ 时，$\Omega_i$ 会通过 timelike interface 流失；但在 gluing surface 上，总 flux 为

$$\begin{align}
\mathcal F_{\Gamma}(\delta_1,\delta_2) =\sum_{X=A,B}\sum_{i=1}^{2} \left(\delta_1q_{iX}\,\delta_2\rho_{iX} -\delta_2q_{iX}\,\delta_1\rho_{iX}\right)=0.
\end{align}$$

因此 $\Omega_1+\Omega_2$ 在 glued solution space 上守恒。用 $\widetilde{\mathcal S}_i$ 表示保留 interface data 的 boundary-parametrized solution space，则 scalar theory 的 classical answer 是

$$\begin{align}
\mathcal S_P \simeq \left\{(\phi_1,\phi_2)\in \widetilde{\mathcal S}_1\times\widetilde{\mathcal S}_2:
q_1=q_2,\ \rho_1+\rho_2=0\right\}, \qquad \Omega_P=(\Omega_1+\Omega_2)\big|_{\mathcal S_P}.
\end{align}$$

这就是本题的 CPS gluing rule。对 gauge theory，还要在 extended boundary phase space 中加入 edge/BFV data 并做 gauge quotient；不能直接照抄这个 gauge-free scalar formula。

### 为什么 strict Dirichlet pieces 太小

homogeneous Dirichlet CPS 是

$$\begin{align}
\mathcal S_i^D=\{\phi_i\in\widetilde{\mathcal S}_i:q_i=0\}.
\end{align}$$

所以 $\mathcal S_1^D\times\mathcal S_2^D$ 只能产生 $q_A=q_B=0$ 的 periodic solutions。一般 periodic mode 在切口处不为零，因此已在量子化之前丢失。

特别地，若 $L_1=L_2=L$，周期波数为 $k_n=n\pi/L$。strict Dirichlet pieces 可以拼出在 $A,B$ 都为零的 sine combination，却不能拼出 boundary values 为 $(1,(-1)^n)$ 的 cosine combination，也没有 constant mode。这已经足以否定“两个 homogeneous Dirichlet reduced phase spaces 的直积就是完整 periodic phase space”。

## 2. 同一个 bulk operator，不同的 self-adjoint domain

在 one-particle configuration space 上确实有自然的 direct sum

$$\begin{align}
\mathfrak h =L^2(S_C^1) \cong L^2(I_1)\oplus L^2(I_2).
\end{align}$$

但是 Dirichlet 与 periodic theories 对应不同的 positive self-adjoint operators：

$$\begin{align}
K_D&=(-\partial_x^2+m^2)_D\oplus(-\partial_x^2+m^2)_D,\\
\mathcal D(K_D) &=\left\{(u_1,u_2)\in H^2(I_1)\oplus H^2(I_2):
u_i|_{\partial I_i}=0\right\},\\
K_P&=-\partial_x^2+m^2,\\
\mathcal D(K_P) &=\left\{(u_1,u_2)\in H^2(I_1)\oplus H^2(I_2):
q_1=q_2,\ \rho_1+\rho_2=0\right\}.
\end{align}$$

这里的 direct sum 是 one-particle spatial space 的 $\oplus$；quantum subsystems 才使用 tensor product $\widehat\otimes$。bosonic Fock functor 满足抽象恒等式

$$\begin{align}
\Gamma_s(\mathfrak h_1\oplus\mathfrak h_2)
\cong
\Gamma_s(\mathfrak h_1)\widehat\otimes\Gamma_s(\mathfrak h_2),
\end{align}$$

但它没有说明该用 $K_D$ 还是 $K_P$ 定义 positive frequency、vacuum 与 Hamiltonian domain。

若试图在 continuum Dirichlet oscillators $a_\alpha$ 上写 periodic oscillators，形式上会得到 Bogoliubov map

$$\begin{align}
b_r=\sum_\alpha \left(\alpha_{r\alpha}a_\alpha +\beta_{r\alpha}a_\alpha^\dagger\right).
\end{align}$$

它能由 Dirichlet Fock space 上的 unitary 实现，需要额外检查 Shale--Stinespring condition

$$\begin{align}
\sum_{r,\alpha}|\beta_{r\alpha}|^2<\infty.
\end{align}$$

一个抽象的 Hilbert-space isomorphism 或有限截断上的 diagonalization 都不能替代这个 continuum check。下面的 lattice construction 先把这个问题变成有限维 exact statement，再讨论 $\varepsilon\to0$。

### 2.1 任意 two-piece split 都不可由 continuum Fock-space unitary 实现

现在不假设等切分，只取 $C=L_1+L_2$ 与 $L_i>0$。periodic spatial constant mode 与第 $i$ 片的 Dirichlet modes 分别为

$$\begin{align}
f_0(x)&=\frac{1}{\sqrt C}, &\omega_0&=m,\\
e_{in}(x_i)&=\sqrt{\frac{2}{L_i}} \sin\left(\frac{n\pi x_i}{L_i}\right), &\nu_{in}&=\sqrt{m^2+\left(\frac{n\pi}{L_i}\right)^2}.
\end{align}$$

periodic constant profile 限制到第 $i$ 片后，与 Dirichlet sine basis 的 overlap 是

$$\begin{align}
O_{0,in} :=\langle e_{in},f_0\rangle_{I_i} =\sqrt{\frac{2L_i}{C}}\, \frac{1-(-1)^n}{\pi n}.
\end{align}$$

两个 static oscillator bases 之间的 Bogoliubov coefficient 因而包含

$$\begin{align}
\beta_{0,in} =\frac{m-\nu_{in}}{2\sqrt{m\nu_{in}}}O_{0,in}.
\end{align}$$

even $n$ 时它为零；odd $n$ 时

$$\begin{align}
|\beta_{0,in}|^2 &=\frac{2L_i}{C} \frac{(\nu_{in}-m)^2}{m\nu_{in}\pi^2n^2},\\
|\beta_{0,in}|^2 &\underset{n\to\infty}{\sim} \frac{2}{m\pi C}\frac1n.
\end{align}$$

leading coefficient 与 $L_i$ 无关。仅 periodic constant mode 对两个 pieces 的贡献就已经是

$$\begin{align}
\sum_{i=1}^{2}\sum_{\substack{n\geq1\\
n\ \mathrm{odd}}}
|\beta_{0,in}|^2 \sim \frac{4}{m\pi C} \sum_{\substack{n\geq1\\
n\ \mathrm{odd}}}\frac1n =\infty.
\end{align}$$

所以 Shale condition 对任意切分比例都失败。结论不是“尚未证明 unitary equivalence”，而是：**只要 $m>0$ 且切成两个非退化 intervals，continuum periodic Fock representation 就不与两个 homogeneous Dirichlet Fock representations 的 product 幺正等价。** equal halves 只是取 $C=2L$ 的特例。finite cutoff 下的 unitary transformation 存在，但其 Dirichlet particle number 至少 logarithmically diverges，因而没有这个 continuum Fock-space limit。

## 3. Product Dirichlet Fock space 上的 exact regulated Hamiltonian

取 $N=N_1+N_2$ 个 lattice sites，spacing 为 $\varepsilon$，$C=N\varepsilon$。令

$$\begin{align}
q_j=\sqrt\varepsilon\,\phi_j, \qquad p_j=\sqrt\varepsilon\,\pi_j, \qquad [q_j,p_k]=i\delta_{jk}.
\end{align}$$

periodic lattice Hamiltonian 是

$$\begin{align}
H_P^{(\varepsilon)} =\frac12\sum_{j=1}^{N} \left[p_j^2+m^2q_j^2 +\frac{(q_{j+1}-q_j)^2}{\varepsilon^2}\right], \qquad q_{N+1}=q_1.
\end{align}$$

把 sites 分成两条 chains。第 $i$ 条 chain 的 Dirichlet reference Hamiltonian 取为

$$\begin{align}
H_{D,i}^{(\varepsilon)} =\frac12\sum_{a=1}^{N_i}\left(p_{i,a}^2+m^2q_{i,a}^2\right) +\frac{1}{2\varepsilon^2} \left[q_{i,1}^2 +\sum_{a=1}^{N_i-1}(q_{i,a+1}-q_{i,a})^2 +q_{i,N_i}^2\right].
\end{align}$$

两个 endpoint pinning terms 等价于 chain 外侧 ghost sites 取 Dirichlet value zero。这个 reference convention 的 Dirichlet walls 位于 endpoint sites 外一个 lattice spacing，因此 regulated interval length 是 $(N_i+1)\varepsilon$；它与 geometric cut length 的差是 $O(\varepsilon)$。把两条 cross-cut springs 加回，同时减去这些 pinning terms，得到 exact identity

$$\begin{align}
H_P^{(\varepsilon)} &=H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)} +V_{\rm glue}^{(\varepsilon)},\\
V_{\rm glue}^{(\varepsilon)} &=-\frac{1}{\varepsilon^2} \left(q_{1,N_1}q_{2,1}+q_{2,N_2}q_{1,1}\right).
\end{align}$$

这正是老板要找的 product-space Hamiltonian。它不是 small perturbation：$V_{\rm glue}^{(\varepsilon)}\sim\varepsilon^{-2}$，必须与 $H_{D,1}+H_{D,2}$ 一起 exact diagonalize。

### 3.1 写成 Dirichlet creation and annihilation operators

第 $i$ 条 Dirichlet chain 的 normalized modes 和 frequencies 是

$$\begin{align}
u_{in}(a) &=\sqrt{\frac{2}{N_i+1}} \sin\left(\frac{\pi n a}{N_i+1}\right),\\
(\omega_{in}^{D})^2 &=m^2+\frac{4}{\varepsilon^2} \sin^2\left(\frac{\pi n}{2(N_i+1)}\right), \qquad n=1,\ldots,N_i,\\
q_{i,a} &=\sum_{n=1}^{N_i} \frac{u_{in}(a)}{\sqrt{2\omega_{in}^{D}}} \left(a_{in}+a_{in}^{\dagger}\right),\\
H_{D,i}^{(\varepsilon)} &=\sum_{n=1}^{N_i}\omega_{in}^{D} \left(a_{in}^{\dagger}a_{in}+\frac12\right).
\end{align}$$

因此

$$\begin{align}
V_{\rm glue}^{(\varepsilon)} =-\frac{1}{2\varepsilon^2}
\sum_{n=1}^{N_1}\sum_{m=1}^{N_2} \frac{C_{nm}}{\sqrt{\omega_{1n}^{D}\omega_{2m}^{D}}} \left(a_{1n}+a_{1n}^{\dagger}\right) \left(a_{2m}+a_{2m}^{\dagger}\right),
\end{align}$$

其中

$$\begin{align}
C_{nm} =u_{1n}(N_1)u_{2m}(1) +u_{1n}(1)u_{2m}(N_2).
\end{align}$$

所以 periodic Hamiltonian 在 Dirichlet Fock basis 中含有 $a_1a_2$、$a_1^\dagger a_2^\dagger$ 和 number-conserving mixing terms。periodic vacuum 相对于 decoupled Dirichlet vacuum 是 squeezed state，而不是同一个 vacuum。

若 $N_1=N_2=M$，则

$$\begin{align}
u_n(M)=(-1)^{n+1}u_n(1),
\end{align}$$

因此 $C_{nm}$ 在 $n,m$ parity 不同时为零。equal-half problem 自动分成两个 parity blocks。

### 3.2 Exact diagonalization

对完整 quadratic form 做 discrete Fourier/Bogoliubov diagonalization，得到

$$\begin{align}
H_P^{(\varepsilon)} &=\sum_{r=0}^{N-1}\omega_r^{P} \left(b_r^\dagger b_r+\frac12\right),\\
(\omega_r^{P})^2 &=m^2+\frac{4}{\varepsilon^2} \sin^2\left(\frac{\pi r}{N}\right).
\end{align}$$

在 $C=N\varepsilon$ 固定、取固定 $r\in\mathbb Z$ 并在 finite lattice 上按 $r\bmod N$ 标记的 continuum limit，

$$\begin{align}
\omega_r^{P} \longrightarrow \sqrt{m^2+\left(\frac{2\pi r}{C}\right)^2},
\end{align}$$

即 circle 上的 periodic scalar spectrum。

### 3.3 Non-equal lattice example: $N_1=2,\ N_2=3$

取第一条 Dirichlet chain 有两个 sites，第二条有三个 sites。decoupled Dirichlet squared frequencies 是

$$\begin{align}
\varepsilon^2\left[(\omega_{1,n}^{D})^2-m^2\right] &\in\{1,3\},\\
\varepsilon^2\left[(\omega_{2,n}^{D})^2-m^2\right] &\in\left\{2-\sqrt2,\ 2,\ 2+\sqrt2\right\}.
\end{align}$$

product Fock space 上加入

$$\begin{align}
V_{\rm glue}^{(\varepsilon)} =-\frac1{\varepsilon^2} \left(q_{1,2}q_{2,1}+q_{2,3}q_{1,1}\right).
\end{align}$$

完整 quadratic form 的 characteristic polynomial factorize 为

$$\begin{align}
\det\!\left[\lambda\mathbf 1-K_P^{(\varepsilon)}\right] ={}&(\lambda-m^2) \left[\lambda-m^2-\frac{5-\sqrt5}{2\varepsilon^2}\right]^2\\
&\times \left[\lambda-m^2-\frac{5+\sqrt5}{2\varepsilon^2}\right]^2.
\end{align}$$

因此五个 periodic squared frequencies 是

$$\begin{align}
(\omega_0^P)^2&=m^2,\\
(\omega_{1,4}^P)^2 &=m^2+\frac{5-\sqrt5}{2\varepsilon^2},\\
(\omega_{2,3}^P)^2 &=m^2+\frac{5+\sqrt5}{2\varepsilon^2}.
\end{align}$$

它们不是两组 Dirichlet spectra 的 union。两个 cross-cut couplings 同时产生 periodic constant mode，并把其余四个 modes 重组为 circle 上的两组 doublets。这是一个真正的 non-equal product-Fock diagonalization，而不是等切分 parity trick。

这个 regulator 也解释了 continuum subtlety：在有限 $N$ 时，nonzero interface trace 可以由所有 Dirichlet modes 的有限组合产生；$N\to\infty$ 时，相应组合会动用任意高的 Dirichlet modes，$V_{\rm glue}^{(\varepsilon)}$ 也变成改变 self-adjoint domain 的 singular boundary interaction。若先把 continuum homogeneous Dirichlet domain 固定，再把普通 finite matrix element 当作 gluing perturbation，就会错误地留在 Dirichlet extension。

## 4. Continuum spectral solution: Dirichlet-to-Neumann gluing

continuum free theory 不必真的对无穷 Dirichlet matrix 做 brute-force diagonalization。令 stationary mode 为

$$\begin{align}
\phi_i(t,x_i)=e^{-i\omega t}u_i(x_i), \qquad k^2=\omega^2-m^2.
\end{align}$$

在长度为 $L$ 的 interval 上，给定 endpoint values $q=(q_A,q_B)^T$，只要 $\sin(kL)\neq0$，bulk solution 是

$$\begin{align}
u(x)=q_A\frac{\sin(k(L-x))}{\sin(kL)} +q_B\frac{\sin(kx)}{\sin(kL)}.
\end{align}$$

其 outward normal derivatives 满足

$$\begin{align}
\begin{pmatrix}
-u'(0)\\
u'(L)
\end{pmatrix}
&=M_L(k)
\begin{pmatrix}
q_A\\
q_B
\end{pmatrix},\\
M_L(k) &=\frac{k}{\sin(kL)}
\begin{pmatrix}
\cos(kL)&-1\\
-1&\cos(kL)
\end{pmatrix}.
\end{align}$$

$M_L(k)$ 是 frequency-space Dirichlet-to-Neumann operator。两片的 flux matching 变成一个只活在 interface data 上的 $2\times2$ equation：

$$\begin{align}
\left[M_{L_1}(k)+M_{L_2}(k)\right]q=0.
\end{align}$$

其 determinant 为

$$\begin{align}
\det\left[M_{L_1}(k)+M_{L_2}(k)\right] =-\frac{4k^2 \sin^2\left(\frac{k(L_1+L_2)}{2}\right)} {\sin(kL_1)\sin(kL_2)}.
\end{align}$$

远离 individual Dirichlet poles，nontrivial interface data 要求

$$\begin{align}
k(L_1+L_2)=2\pi r,
\end{align}$$

这立即给出 periodic spectrum。换句话说，两个 Dirichlet bulk resolvents 加上一个 finite-dimensional interface determinant 已经解决了 continuum spectral problem。

### 4.1 Non-equal continuum example: $L_1=L,\ L_2=2L$

此时 $C=3L$，DtN determinant 变成

$$\begin{align}
\det\left[M_L(k)+M_{2L}(k)\right] =-\frac{4k^2\sin^2(3kL/2)} {\sin(kL)\sin(2kL)}.
\end{align}$$

away from the individual Dirichlet poles，periodic wave numbers 是

$$\begin{align}
k_r=\frac{2\pi r}{3L}, \qquad \omega_r=\sqrt{m^2+\frac{4\pi^2r^2}{9L^2}}.
\end{align}$$

以第一对 nonzero modes $r=\pm1$ 为例，$k_1=2\pi/(3L)$。两个 DtN matrices 恰好为

$$\begin{align}
M_L(k_1) &=\frac{k_1}{\sqrt3}
\begin{pmatrix}
-1&-2\\
-2&-1
\end{pmatrix},\\
M_{2L}(k_1) &=\frac{k_1}{\sqrt3}
\begin{pmatrix}
1&2\\
2&1
\end{pmatrix},
\qquad M_L(k_1)+M_{2L}(k_1)=0.
\end{align}$$

所以 interface kernel 是 two-dimensional。取 $q=(q_A,q_B)^T$，cosine 与 sine modes 分别对应

$$\begin{align}
q^{(c)}
&=\begin{pmatrix}1\\
-1/2\end{pmatrix},
& q^{(s)}
&=\begin{pmatrix}0\\
\sqrt3/2\end{pmatrix}.
\end{align}$$

在 $I_1$ 使用 $x\in[0,L]$，在 $I_2$ 使用从 $B$ 指向 $A$ 的 $y\in[0,2L]$，Poisson extensions 给出

$$\begin{align}
u_1^{(c)}(x)&=\cos(k_1x), &u_2^{(c)}(y)&=\cos[k_1(L+y)],\\
u_1^{(s)}(x)&=\sin(k_1x), &u_2^{(s)}(y)&=\sin[k_1(L+y)].
\end{align}$$

这两组 piecewise solutions 在 $A,B$ 的 field values 连续，outward fluxes 相消，拼起来正是 circumference $3L$ 上的 $\cos(k_1x)$ 与 $\sin(k_1x)$。当 $r\in3\mathbb Z$ 时，$k_r$ 同时落在两片的 Dirichlet poles 上，DtN matrices 本身不定义；这时必须回到原始 continuity/flux equations，仍可恢复 sine 与 cosine 两个 periodic modes。

$k=0$ 是 removable limit：

$$\begin{align}
M_L(0)=\frac1L
\begin{pmatrix}
1&-1\\
-1&1
\end{pmatrix},
\qquad \left[M_{L_1}(0)+M_{L_2}(0)\right]
\begin{pmatrix}1\\
1\end{pmatrix}=0,
\end{align}$$

所以 constant spatial mode 也由 interface equation 恢复。其余公式先假设 $\sin(kL_i)\neq0$。当 periodic eigenvalue 同时落在某片真正的 Dirichlet pole 上时，应回到原始 continuity/flux equations，不能把 DtN 的 pole 当成缺失谱。equal halves 正好是这种特殊情形：homogeneous boundary sector 给出 sine mode，nonzero boundary sector 给出 cosine mode，两者合起来恢复 periodic degeneracy。

## 5. Quantum gluing law 不是只乘两个 zero-Dirichlet amplitudes

在 Euclidean path integral 中，正确的 gluing variable 是切口 worldlines 上的完整 histories $\varphi_A(\tau),\varphi_B(\tau)$：

$$\begin{align}
Z_P =\int\mathcal D\varphi_A\,\mathcal D\varphi_B\, Z_{D,1}[\varphi_A,\varphi_B]\, Z_{D,2}[\varphi_B,\varphi_A].
\end{align}$$

这里 $Z_{D,i}[\varphi_L,\varphi_R]$ 表示具有任意 prescribed Dirichlet histories 的 amplitude；homogeneous Dirichlet theory 只是 $\varphi_L=\varphi_R=0$ 的一个 fiber。

对 Gaussian theory，把 field 分解成 zero-Dirichlet fluctuation 与 boundary Poisson extension 后，形式上得到

$$\begin{align}
Z_P \propto Z_{D,1}[0]Z_{D,2}[0] \left[\det{}'\left(M_{L_1}^{E}+M_{L_2}^{E}\right)\right]^{-1/2}.
\end{align}$$

prime 表示 zero modes 需要另行处理；比例常数还依赖 interface measure、local normalization，以及 continuum determinant gluing anomaly。这个式子把“两个 Dirichlet bulk theories”与“必须积分的 interface data”分得很清楚。

## 6. Hilbert-space statement 的精确条件

### 6.1 有 UV regulator

有限 lattice 上所有 oscillator representations 都由有限维 symplectic transformation 相连，因此

$$\begin{align}
\mathcal H_{\varepsilon} =\mathcal F_{D,1}^{(\varepsilon)}\widehat\otimes \mathcal F_{D,2}^{(\varepsilon)}
\end{align}$$

是一个完全合法且可计算的 reference representation。第 3 节的 Hamiltonian 在这里给出 exact answer。

### 6.2 Continuum massive scalar: unequal cuts 也不解决 Fock obstruction

Dirichlet product Fock space 可以作为 regulated calculation 的 reference space，第 3 节也给出了每个 cutoff 上的 exact Hamiltonian。但是第 2.1 节已经证明：对任意 $L_1,L_2>0$，continuum massive scalar 的 Bogoliubov $\beta$ 都不是 Hilbert--Schmidt。第 4.1 节的 $L:2L$ split 因此在 one-particle spectrum 上完全成功，却仍不产生 continuum Fock-space unitary。

continuum answer 应写成：periodic self-adjoint extension 有自己的 Fock representation；Dirichlet product representation 是一族 regulator-dependent computational coordinates。二者的 local algebraic observables 可以比较，谱也可由 DtN limit 恢复，但不能由一个作用在 continuum Dirichlet product Fock space 上的 unitary Hamiltonian change 来等同。更高维数或其他 boundary conditions 仍需各自检查，不能从抽象 tensor-product identity 推出结论。

### 6.3 Massless compact scalar

$m=0$ 时 periodic $r=0$ mode 不是 harmonic oscillator。若以 spatial average $\bar\phi$ 与 $P_0=\int_0^Cdx\,\pi$ 为变量，则

$$\begin{align}
[\bar\phi,P_0]&=i, &H_0&=\frac{P_0^2}{2C}.
\end{align}$$

它是 free-particle sector，没有普通 Fock vacuum；strict Dirichlet pieces 没有这个 zero mode。因此 massless theory 必须额外张量一个 zero-mode Hilbert space，或先固定 compactification/charge sector。

### 6.4 Continuum limit 的五个 distinct difficulties

1. **Quadratic-form domain 会跳变。** 两个 theories 的 bulk integrand 相同，但 form domains 不同：

$$\begin{align}
   \mathcal D(Q_D) &=H_0^1(I_1)\oplus H_0^1(I_2),\\
   \mathcal D(Q_P) &=\left\{(u_1,u_2)\in H^1(I_1)\oplus H^1(I_2):
   q_{1A}=q_{2A},\ q_{1B}=q_{2B}\right\}.
\end{align}$$

   derivative matching 是该 periodic form 对应的 operator domain 中进一步出现的 natural boundary condition。由于 $Q_D$ domain 上所有 endpoint traces 已经为零，一个 finite boundary operator 加在同一 domain 上不能把它变成 $Q_P$；lattice 的 $V_{\rm glue}^{(\varepsilon)}\sim\varepsilon^{-2}$ 必须以 singular limit 改变 domain。

2. **Spectral convergence 不等于 Fock convergence。** 每个固定 mode 的 eigenvalue 可以趋近 periodic spectrum，但第 2.1 节证明 diagonalizing Bogoliubov unitaries 没有 continuum Dirichlet-Fock limit。要讨论 operator convergence，还必须指定把不同 lattice spaces 嵌入 continuum one-particle space 的方式，并证明 strong- 或 norm-resolvent convergence；逐个 eigenvalue 对上并不自动完成这件事。

3. **Quantum field 没有朴素的 pointwise interface trace。** classical finite-energy fields 有 Sobolev trace，而 quantum field 是 operator-valued distribution。$\widehat\phi(A)$、$\widehat\phi(B)$ 与 $V_{\rm glue}$ 不能在 continuum 中直接当作普通 oscillator coordinates；必须保留 regulator、对 interface smearing，或改用 boundary-value path integral/DtN operator。

4. **Dirichlet poles、zero modes 与 determinant normalization 必须分开处理。** DtN operator 在 individual Dirichlet eigenvalues 上是 meromorphic 的；$k=0$ 可能是 removable kernel，massless constant mode 则是真正的 non-Fock sector。functional determinant 还需要 measure、local counterterms 与 gluing anomaly 的 prescription。

5. **Interactions 与 gauge constraints 会产生新的 interface renormalization data。** interacting scalar 可能需要 boundary-local composite counterterms；gauge theory/gravity 还要加入 Gauss constraints、edge/BFV modes、BRST/BV quotient 与 anomaly checks。free scalar 的 exact quadratic gluing 不会自动解决这些问题。

## 7. Global AdS3 benchmark: glue two angular wedges

### 7.1 切的是 angular circle，不是 physical AdS boundary

取 AdS radius 为一，

$$\begin{align}
ds^2
=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\varphi^2,
\qquad
\varphi\sim\varphi+2\pi,
\end{align}$$

并取 standard normalizable scalar

$$\begin{align}
m^2=\Delta(\Delta-2),
\qquad
\Delta>1,
\qquad
\phi\underset{r\to\infty}{\sim}r^{-\Delta}.
\end{align}$$

现在沿 angular circle 在 $A,B$ 两条 radial half-lines 处切开：

$$\begin{align}
W_1&:\quad 0\leq\varphi_1\leq\alpha_1,
&&A\longrightarrow B,\\
W_2&:\quad 0\leq\varphi_2\leq\alpha_2,
&&B\longrightarrow A,\\
\alpha_1+\alpha_2&=2\pi.
\end{align}$$

每个 wedge 仍然延伸到同一个 conformal boundary $r=\infty$，并在那里满足同一个 standard AdS boundary condition。$\varphi_i=0,\alpha_i$ 是人为引入的 timelike interfaces，不是 AdS boundary source surface。后文所谓 “wedge Dirichlet theory” 只指在这两条人工切口上令 field trace 为零。

固定 $r>0$ 时，constant-$\varphi_i$ surface 的 unit outward normal 给出

$$\begin{align}
\rho_{i,L}
&=-\frac1r\partial_{\varphi_i}\phi_i,
&
\rho_{i,R}
&=+\frac1r\partial_{\varphi_i}\phi_i.
\end{align}$$

$W_1$ 的 left/right endpoints 是 $A/B$，$W_2$ 的 left/right endpoints 是 $B/A$。因此 CPS gluing conditions 仍是

$$\begin{align}
q_{1A}&=q_{2A},
&
q_{1B}&=q_{2B},\\
\rho_{1A}+\rho_{2A}&=0,
&
\rho_{1B}+\rho_{2B}&=0.
\end{align}$$

equal-time CPS form 分成

$$\begin{align}
\Omega_i(\delta_1,\delta_2)
=\int_0^\infty dr\int_0^{\alpha_i}d\varphi_i\,
\frac{r}{1+r^2}
\left(
\delta_1\phi_i\,\partial_t\delta_2\phi_i
-\delta_2\phi_i\,\partial_t\delta_1\phi_i
\right).
\end{align}$$

把 matching conditions 代入，两个 interfaces 上的 symplectic flux 逐点相消。因此 classical statement 与 flat cylinder 相同：

$$\begin{align}
\mathcal S_{\mathrm{AdS}_3}^{\rm global}
\simeq
\left\{
(\phi_1,\phi_2)\in
\widetilde{\mathcal S}_{W_1}\times
\widetilde{\mathcal S}_{W_2}:
q_1=q_2,\ \rho_1+\rho_2=0
\right\},
\end{align}$$

但还要同时施加 $r=0$ 的 global regularity 与 $r=\infty$ 的 theory-defining AdS boundary condition。角坐标在 $r=0$ 退化，因此原点不能被当成一条额外的 physical edge。

### 7.2 Strict wedge-Dirichlet modes

xAct/xCoba 给出的 scalar wave operator 是

$$\begin{align}
(\Box-m^2)\phi
=\left[
-\frac1{1+r^2}\partial_t^2
+\frac1r\partial_r\!\left(r(1+r^2)\partial_r\right)
+\frac1{r^2}\partial_\varphi^2
-m^2
\right]\phi.
\end{align}$$

在第 $i$ 个 wedge 上施加 homogeneous angular Dirichlet condition。normalized angular modes 与 separation constants 是

$$\begin{align}
\Theta_{i,p}(\varphi_i)
&=\sqrt{\frac2{\alpha_i}}
\sin(\kappa_{i,p}\varphi_i),
&
\kappa_{i,p}
&=\frac{\pi p}{\alpha_i},
&
p&=1,2,\ldots.
\end{align}$$

对任意 real $\kappa\geq0$，regular、normalizable radial modes 可写成

$$\begin{align}
R_{n,\kappa}(r)
=\mathcal N_{n,\kappa}\,
r^\kappa(1+r^2)^{-\frac{\Delta+\kappa}{2}}
P_n^{(\kappa,\Delta-1)}
\left(\frac{1-r^2}{1+r^2}\right),
\qquad
n=0,1,\ldots,
\end{align}$$

并满足

$$\begin{align}
\left[
\frac1r\partial_r\!\left(r(1+r^2)\partial_r\right)
+\frac{\omega^2}{1+r^2}
-\frac{\kappa^2}{r^2}
-m^2
\right]R_{n,\kappa}=0,
\qquad
\omega=\Delta+2n+\kappa.
\end{align}$$

所以两组 decoupled wedge-Dirichlet frequencies 是

$$\begin{align}
\omega_{i,n,p}^{D}
=\Delta+2n+\frac{\pi p}{\alpha_i}.
\end{align}$$

完整 global AdS3 modes 则是

$$\begin{align}
u_{n,\ell}^{(P)}
&=e^{-i\omega_{n,\ell}t}
e^{i\ell\varphi}R_{n,|\ell|}(r),
&
\omega_{n,\ell}
&=\Delta+2n+|\ell|,
&
\ell&\in\mathbb Z.
\end{align}$$

因此 strict wedge spectra 的 union 既缺少 $\ell=0$ sector，也一般包含 noninteger $\kappa_{i,p}$；它不等于 global spectrum。

### 7.3 Non-equal angular split: $\alpha_1=2\pi/3,\ \alpha_2=4\pi/3$

固定 radial separation constant $\ell$ 后，angular equation 是 $\Theta''+\ell^2\Theta=0$。长度为 $\alpha$ 的 angular interval 有 DtN matrix

$$\begin{align}
M_\alpha(\ell)
=\frac{\ell}{\sin(\ell\alpha)}
\begin{pmatrix}
\cos(\ell\alpha)&-1\\
-1&\cos(\ell\alpha)
\end{pmatrix}.
\end{align}$$

把 $W_2$ 的 natural endpoint ordering $(B,A)$ 换回共同的 $(A,B)$ ordering 不改变这个 matrix。

对 separated mode，physical normal flux 等于 $e^{-i\omega t}R_{n,|\ell|}(r)/r$ 乘以这个 angular DtN output；两片具有同一个 common radial factor，所以 flux-matching equation 中它被约去。于是

$$\begin{align}
\det\left[M_{\alpha_1}(\ell)+M_{\alpha_2}(\ell)\right]
=-\frac{4\ell^2\sin^2(\pi\ell)}
{\sin(\ell\alpha_1)\sin(\ell\alpha_2)}.
\end{align}$$

away from wedge Dirichlet poles，kernel condition 精确给出

$$\begin{align}
\ell\in\mathbb Z,
\qquad
\omega_{n,\ell}=\Delta+2n+|\ell|,
\end{align}$$

也就是完整 global AdS3 normal-mode spectrum。

取第一对 modes $\ell=\pm1$。此时

$$\begin{align}
M_{2\pi/3}(1)
&=\frac1{\sqrt3}
\begin{pmatrix}
-1&-2\\
-2&-1
\end{pmatrix},\\
M_{4\pi/3}(1)
&=\frac1{\sqrt3}
\begin{pmatrix}
1&2\\
2&1
\end{pmatrix},
\qquad
M_{2\pi/3}(1)+M_{4\pi/3}(1)=0.
\end{align}$$

取共同 interface vector $q=(q_A,q_B)^T$。cosine 与 sine modes 的 data 分别是

$$\begin{align}
q^{(c)}
&=\begin{pmatrix}1\\-1/2\end{pmatrix},
&
q^{(s)}
&=\begin{pmatrix}0\\\sqrt3/2\end{pmatrix}.
\end{align}$$

Poisson extensions 为

$$\begin{align}
\Theta_1^{(c)}(\varphi_1)
&=\cos\varphi_1,
&
\Theta_2^{(c)}(\varphi_2)
&=\cos(2\pi/3+\varphi_2),\\
\Theta_1^{(s)}(\varphi_1)
&=\sin\varphi_1,
&
\Theta_2^{(s)}(\varphi_2)
&=\sin(2\pi/3+\varphi_2).
\end{align}$$

乘上任意 $e^{-i(\Delta+2n+1)t}R_{n,1}(r)$ 后，它们就是 global $\cos\varphi$ 与 $\sin\varphi$ modes。对 $\ell\in3\mathbb Z$，两个 wedge DtN matrices 同时在 Dirichlet poles 上；必须回到原始 continuity/flux equations。$\ell=0$ 则由 $M_\alpha(0)$ 的 constant-vector kernel 恢复。这两个 sectors 都不会缺谱。

这里的 $2\times2$ DtN 只解决已经 separation of variables 的 sector。对一般 interface history $q(t,r)$，真正的 AdS DtN 是作用在 $(t,r)$ 上的 nonlocal operator，而不再是一个 ordinary numerical matrix。

### 7.4 Regulated product-Fock Hamiltonian

令

$$\begin{align}
\Pi=\frac{r}{1+r^2}\partial_t\phi.
\end{align}$$

global free Hamiltonian 是

$$\begin{align}
H
=\frac12\int_0^\infty dr\int_0^{2\pi}d\varphi
\left[
\frac{1+r^2}{r}\Pi^2
+r(1+r^2)(\partial_r\phi)^2
+\frac1r(\partial_\varphi\phi)^2
+rm^2\phi^2
\right].
\end{align}$$

只把 angular direction lattice-regulate，令共同 spacing 为 $\varepsilon$。与第 3 节完全相同，两个 angular Dirichlet chains 缺少的仍是两条 bonds，但 curved metric 给它们一个 radial weight：

$$\begin{align}
V_{\rm glue}^{(\varepsilon)}
=-\int_0^\infty\frac{dr}{r\varepsilon}
\left[
q_{1,N_1}(r)q_{2,1}(r)
+q_{2,N_2}(r)q_{1,1}(r)
\right].
\end{align}$$

所以作为 quadratic-form identity，

$$\begin{align}
H_{\mathrm{AdS}_3,P}^{(\varepsilon)}
=H_{W_1,D}^{(\varepsilon)}
+H_{W_2,D}^{(\varepsilon)}
+V_{\rm glue}^{(\varepsilon)}
\end{align}$$

精确恢复 periodic angular lattice。若总 angular sites 为 $N$、$N\varepsilon=2\pi$，用 $\ell\in\mathbb Z_N$ 表示 symmetric lattice-momentum representatives，则 eigenvalues 与 semidiscrete AdS frequencies 是

$$\begin{align}
\lambda_\ell^{(\varepsilon)}
&=\frac4{\varepsilon^2}
\sin^2\left(\frac{\ell\varepsilon}{2}\right),\\
\omega_{n,\ell}^{(\varepsilon)}
&=\Delta+2n+\sqrt{\lambda_\ell^{(\varepsilon)}},
\qquad
\ell\in\mathbb Z_N.
\end{align}$$

在 fixed integer $\ell$ limit 中，$\sqrt{\lambda_\ell^{(\varepsilon)}}\to|\ell|$。若要把 tensor-product Fock statement 变成真正的 finite-dimensional Stone--von Neumann statement，还必须同时给 radial direction 加 cutoff/discretization；只 lattice-regulate angle 仍留下无限多个 radial modes。

### 7.5 Continuum Fock obstruction 仍然存在

global time slicing 的 one-particle configuration space 是

$$\begin{align}
\mathcal K
=L^2\left(
\Sigma_t,\frac{r}{1+r^2}\,dr\,d\varphi
\right).
\end{align}$$

令 $A_P$ 与 $A_D$ 分别是 global-periodic 与 two-wedge Dirichlet positive spatial operators。取 normalized global eigenfunction $f$，

$$\begin{align}
A_Pf=\omega^2f,
\end{align}$$

并在 wedge-Dirichlet eigenbasis $A_De_j=\nu_j^2e_j$ 中展开，$O_j=\langle e_j,f\rangle_{\mathcal K}$。相应 Bogoliubov row 是

$$\begin{align}
\beta_j
=\frac{\omega-\nu_j}{2\sqrt{\omega\nu_j}}O_j,
\qquad
|\beta_j|^2
\underset{\nu_j\to\infty}{\sim}
\frac{\nu_j}{4\omega}|O_j|^2.
\end{align}$$

因此其 high-frequency norm 由

$$\begin{align}
\sum_j\nu_j|O_j|^2
=\left\|A_D^{1/4}f\right\|_{\mathcal K}^2
\end{align}$$

控制。对 second-order Dirichlet elliptic realization，critical fractional domain 在任何远离 $r=0,\infty$ 的 smooth interface collar 上都是 $H_{00}^{1/2}$。局部地，它要求

$$\begin{align}
\int\frac{|f|^2}{d(\,\cdot\,,\Gamma)}\,d\mu<\infty.
\end{align}$$

任何在 artificial cut 上具有 nonzero trace 的 smooth global mode 都使这个积分含有 $\int_0 ds/s$，所以

$$\begin{align}
f\notin\mathcal D(A_D^{1/4}),
\qquad
\sum_j|\beta_j|^2=\infty.
\end{align}$$

特别地，global $\ell=0$ ground mode 在两条 radial cuts 上都不为零，已经足以证明 divergence。于是对任意 nondegenerate angular split，standard-quantized global AdS3 Fock representation 也不能由 continuum strict-wedge Dirichlet product Fock space 上的 unitary 实现。有限 fully regulated Hamiltonian 仍然 exact；失败的是 cutoff-removal 后的 Hilbert-space identity。

### 7.6 AdS3-specific continuum difficulties

1. **Physical boundary 与 artificial interface 必须分开。** $r=\infty$ 的 standard/alternative AdS boundary condition 定义 theory；$\varphi=\mathrm{const}$ 的 cut data 是要被 gluing 的 dynamical interface variables。把两者都叫 Dirichlet 会混淆 source-response data 与切口 matching data。
2. **一般 DtN 是 operator-valued。** separation sector 中只有 $2\times2$ angular matrix；一般 $q(t,r)$ 会产生作用在 noncompact $(t,r)$ interface 上的 pseudodifferential kernel。
3. **原点和 conformal boundary 是 interface corners。** $r=0$ 需要 global smoothness，而不是独立 edge oscillator；$r=\infty$ 处还要检查 holographic counterterms、symplectic flux 与 artificial-interface gluing 是否兼容。
4. **Angular cutoff alone 不使 Hilbert space finite。** radial overtone tower 仍是 infinite；讨论 exact Fock tensor product 或 determinant 前必须指定 radial cutoff、boundary regulator 与共同 embedding。
5. **Interactions 应在 free gluing 之后加入。** glued spectrum 恢复 $\omega_{n,\ell}=\Delta+2n+|\ell|$ 的 exact resonances；先把 $V_{\rm glue}$ 当 weak interaction 会把 artificial-wedge frequencies 错当成 physical energy denominators。gauge theory/gravity 还会额外需要 edge/BFV data。

## 8. Regularization 能否实现 continuum product？

### 8.1 Direct answer: zeta 不能修复 Shale obstruction

结论是：**不能把 non-Hilbert--Schmidt Bogoliubov map 用 zeta regularization 变成 ordinary Dirichlet-product Fock space 上的 unitary；但是可以用更大的 algebraic representation 实现一种不同意义的 product。**

设 $\beta$ 是两个 quasifree representations 之间 Bogoliubov map 的 antilinear part。Shale--Stinespring condition 是

$$\begin{align}
\beta\in\mathfrak S_2,
\qquad
\|\beta\|_{\mathfrak S_2}^2
=\operatorname{Tr}(\beta^\dagger\beta)
=\sum_j\|\beta e_j\|^2<\infty,
\end{align}$$

其中 $\{e_j\}$ 是任意 one-particle orthonormal basis；若 $\beta$ 有 discrete singular decomposition，也等于 $\sum_j s_j(\beta)^2$。这个 quantity 是 extended positive norm，取值在 $[0,\infty]$；它是否有限是 operator 本身的性质。把某个 regulator-dependent spectral series analytically continue 到一个 finite number，并不改变 $\beta\notin\mathfrak S_2$，也不改变 Shale theorem 的 no-unitary conclusion。

这里还要排除一个无物理内容的捷径：所有 infinite-dimensional separable Hilbert spaces 作为 abstract Hilbert spaces 都彼此 isomorphic，但这种 isomorphism 不保留 field operators、CCR representation、vacuum、Hamiltonian domain 或 local algebra。因此它不能表达本题所需的“同一个场论”。

### 8.2 Finite-cutoff squeezed vacua 显示 continuum limit 在哪里失败

在任意 finite cutoff 下做 Bloch--Messiah reduction，可把 bosonic transformation 写成 independent squeezed modes，

$$\begin{align}
\alpha_j=\cosh r_j,
\qquad
s_j(\beta_\Lambda)=:\beta_j^{(\Lambda)}
=\sinh r_j\geq0.
\end{align}$$

下文在 cutoff 固定时省略 $\beta_j^{(\Lambda)}$ 的 superscript。

相应的 normalized cutoff vacuum 是

$$\begin{align}
|\Omega_P\rangle_\Lambda
=\prod_{j\leq\Lambda}(\cosh r_j)^{-1/2}
\exp\!\left[-\frac12\tanh r_j\,(a_j^\dagger)^2\right]
|\Omega_D\rangle.
\end{align}$$

于是

$$\begin{align}
|\langle\Omega_D|\Omega_P\rangle_\Lambda|^2
&=\prod_{j\leq\Lambda}\frac1{\cosh r_j}
=\det(1+\beta_\Lambda^\dagger\beta_\Lambda)^{-1/2},\\
-\log|\langle\Omega_D|\Omega_P\rangle_\Lambda|
&=\frac14\sum_{j\leq\Lambda}
\log(1+|\beta_j|^2)
\underset{|\beta_j|\to0}{\sim}
\frac14\sum_{j\leq\Lambda}|\beta_j|^2.
\end{align}$$

若 cutoff 以 compatible modewise 方式依次加入同一组 squeezing factors，更强的 statement 不是“vacuum overlap 变成零”，而是 cutoff vacua 在原 Fock norm 中不形成 Cauchy sequence。对 $N>M$，其 tail overlap 为

$$\begin{align}
|\langle\Omega_M|\Omega_N\rangle|
=\prod_{M<j\leq N}(1+|\beta_j|^2)^{-1/4}.
\end{align}$$

若 $\sum_j|\beta_j|^2=\infty$，总能在任意 $M$ 后选到足够大的 $N$，使这个 overlap 与 $1$ 保持有限距离；所以不存在原 Dirichlet Fock space 中的 limiting squeezed vacuum。对没有 compatible discrete singular basis 的一般 transformation，结论由 Shale--Stinespring theorem 本身给出，不依赖这张 diagonal picture。

第 2.1 节的 explicit odd-mode lower bound 还给出

$$\begin{align}
\sum_{p=0}^{M-1}\frac1{2p+1}
&=H_{2M}-\frac12H_M\\
&=\frac12\log M+\log2+\frac{\gamma}{2}+o(1),\\
\sum_{i=1}^2\sum_{p=0}^{M-1}
|\beta_{0,i,2p+1}|^2
&=\frac{2}{m\pi C}\log M+O(1).
\end{align}$$

这只是完整 $\|\beta\|_{\mathfrak S_2}^2$ 的一个 positive lower bound，已经足以排除 continuum Fock implementer。

### 8.3 Zeta subtraction 真正能做什么

对这个 odd harmonic divergence，可引入 dimensionless positive scale $\mu$ 与 analytic regulator

$$\begin{align}
F_\mu(s)
&=\mu^s\sum_{p=0}^{\infty}(2p+1)^{-1-s}\\
&=\mu^s\left(1-2^{-1-s}\right)\zeta(1+s)\\
&=\frac1{2s}
+\frac{\gamma+\log2+\log\mu}{2}
+O(s).
\end{align}$$

所以 $s=0$ 处仍有 pole。若规定 minimal subtraction，再把 finite part 叫作“regularized particle number”，它仍随 scale 改变：

$$\begin{align}
\operatorname{FP}F_{\mu_2}
-\operatorname{FP}F_{\mu_1}
=\frac12\log\frac{\mu_2}{\mu_1}.
\end{align}$$

这个 finite part 不是 positive Hilbert norm，也不会把 periodic pure quasifree state 变成 Dirichlet Fock representation 中的 normal state；尤其不能替代 $\beta\in\mathfrak S_2$。同理，可以给 formal vacuum-overlap product 指定一个 zeta determinant，但该 scalar 不会把上面的 non-Cauchy sequence 变成一个 vector。

zeta regularization 的合法用途在另一层：对 suitable elliptic operators，它可以定义 vacuum energy、one-loop determinant，以及 BFK/DtN gluing formula 中的 determinant factors。schematically，

$$\begin{align}
\det_\zeta K_P
\sim
\det_\zeta K_{D,1}\,
\det_\zeta K_{D,2}\,
\det_\zeta(M_1+M_2),
e^{\mathcal A_{\rm local}},
\end{align}$$

其中 $\mathcal A_{\rm local}$ 收集 normalization/local anomaly。它是 partition function 或 Gaussian amplitude 的 composition law，不是 Hilbert-space tensor-product theorem。

### 8.4 六种不同的 “product”

| “product” 的精确定义 | continuum status | regulator 的作用 |
| --- | --- | --- |
| Abstract separable-Hilbert isomorphism | 总能写，但不保留任何 QFT structure | 无物理判别力 |
| Ordinary strict-wedge Fock tensor product + CCR unitary | 本文 benchmark 中不成立 | cutoff 时成立；removal 时 Shale obstruction 返回 |
| Periodic state 自己的 GNS representation | 成立，是最保守的 continuum answer | regulator 只用于构造/比较 observables |
| AQFT split property with a finite collar | 在 split/nuclearity hypotheses 下给出 noncanonical Type-I interpolation 与 tensor-product-like independence | collar width 是 physical UV separation；sharp-cut limit 不由 split property 保证 |
| Boundary direct integral / crossed product | 可以在扩大 interface algebra 后成立；见第 8.5 节 | finite-mode group 与 measure 先定义，再取 inductive limit |
| Infinite tensor product / extended state space | 某些 non-Shale maps 可实现；见第 8.6 节 | 不是 subtraction，而是换到更大的 representation |

对 boundary direct integral，最朴素的 regulated picture 是

$$\begin{align}
\mathcal H_{\rm ext}^{(\Lambda)}
\simeq
\int_{Q_\Gamma^{(\Lambda)}}^{\oplus}d\mu_\Gamma(q)\,
\mathcal H_{1;q}^{(\Lambda)}
\widehat\otimes
\mathcal H_{2;q}^{(\Lambda)}.
\end{align}$$

这里 $q$ 是共同 interface configuration，随后还要实施 flux matching/symplectic reduction。strict homogeneous Dirichlet product 只对应 $q=0$ fiber；当 $d\mu_\Gamma$ 是 continuous measure 时，单一 fiber 甚至不是一个 normalizable subspace。这个表达式正好解释为什么只保留两个 $q=0$ Fock spaces 太小。

AQFT split property 提供另一种受控近似：在两个 local regions 之间保留 positive-width collar，可插入 Type I factor，因而得到 noncanonical tensor-product-like description。把 collar 压到零会重新暴露 sharp-interface UV entanglement；它不是 zeta subtraction，也没有给出本题的 exact touching-wedge factorization。

### 8.5 Chandrasekaran--Flanagan crossed product: 可行，但它实现的是 enlarged representation

Chandrasekaran 与 Flanagan 的 horizon construction 给出了本题最相关的 algebraic template。他们先扩充 gravitational subregion phase space，加入 corner relative-boost 与 null-translation edge modes；量子化后形成 crossed product，并在

$$\begin{align}
\widehat{\mathcal H}
=L^2(G,d\mu_G;\mathcal H)
=\int_G^{\oplus}d\mu_G(g)\,\mathcal H_g
\end{align}$$

上作 GNS representation。选择 fiber trivialization 后才可写成 $\widehat{\mathcal H}\cong\mathcal H\widehat\otimes L^2(G)$；这个 tensor split 不是 algebraically canonical。论文也明确指出 sharp-cut Type-III QFT Hilbert space 本来不 factorize，并用 finite collar/brick-wall regularization 与 edge modes 解释 regulated factorization。

一般地，若 $G_\Gamma$ locally compact（或已经 finite-mode regulate），且 boundary-extended piece algebra $\widetilde{\mathcal A}_{\rm pieces}$ 上存在 strongly continuous automorphism action $\alpha:G_\Gamma\to\operatorname{Aut}(\widetilde{\mathcal A}_{\rm pieces})$，则可定义

$$\begin{align}
\mathcal A_\rtimes
=\widetilde{\mathcal A}_{\rm pieces}
\rtimes_\alpha G_\Gamma.
\end{align}$$

其 regular covariant representation 是

$$\begin{align}
(\widehat\pi(a)\Psi)(g)
&=\pi_D\!\left(\alpha_{g^{-1}}(a)\right)\Psi(g),\\
(\lambda(h)\Psi)(g)
&=\Psi(h^{-1}g),\\
\lambda(h)\widehat\pi(a)\lambda(h)^{-1}
&=\widehat\pi(\alpha_h(a)).
\end{align}$$

因此一个在原 representation 中是 outer 或 non-spatial 的 automorphism，在 crossed product 中会由新增的 $\lambda(h)$ spatially implement。**这正是 crossed product 能绕开原 Fock implementability obstruction 的意义：它扩大 algebra 与 Hilbert representation；它没有证明原 automorphism 在 $\mathcal F_{D,1}\widehat\otimes\mathcal F_{D,2}$ 内突然变得 unitary。** crossed-product trace 若存在，也是 operator-algebraic semifinite trace/weight，不是由 zeta 给 $\|\beta\|_{\mathfrak S_2}^2$ 指派有限值。

对当前 scalar gluing，不能直接取 strict homogeneous-Dirichlet algebra 做 crossed product，因为 boundary shifts 会把 $q=0$ 移出它的 self-adjoint domain。应先使用第 1 节的 boundary-parametrized CPS/algebra，把 interface $q,\rho$ 或其 Weyl variables 加回，再选 $G_\Gamma$ 为相应 boundary canonical transformations，最后实施 diagonal continuity/flux reduction。固定 full UV cutoff 时 $G_\Gamma^{(\Lambda)}$ 是 finite-dimensional，这个 construction 可以严格执行，并可选择 trivialization 写成

$$\begin{align}
\widehat{\mathcal H}_\rtimes^{(\Lambda)}
&=L^2\!\left(
G_\Gamma^{(\Lambda)};
\mathcal F_{D,1}^{(\Lambda)}
\widehat\otimes
\mathcal F_{D,2}^{(\Lambda)}
\right)\\
&\cong
\left(
\mathcal F_{D,1}^{(\Lambda)}
\widehat\otimes
\mathcal F_{D,2}^{(\Lambda)}
\right)
\widehat\otimes
L^2(G_\Gamma^{(\Lambda)}).
\end{align}$$

这正是“strict-wedge product 加 interface sector”的 regulated version；continuity/flux reduction 后必须与第 3 节的 periodic matrix Hamiltonian 给出同一个 reduced spectrum。多出的 $L^2(G_\Gamma)$ 不是 decoration，而是让 boundary automorphisms 可被实现所必需的 edge/interface sector。若目的只是在 finite lattice 上求谱，第 3 节的 ordinary product 已经足够；crossed product 的价值在于保留 interface algebra，并组织可能的 continuum algebraic limit。

在 global AdS3 中，interface data 是 radial functions $q_A(r),q_B(r)$，所以 continuum $G_\Gamma$ 是 infinite-dimensional，通常没有 honest Haar measure。与 Chandrasekaran--Flanagan Appendix F 一样，必须先做 radial/interface-mode cutoff，再证明 crossed products、states、Hamiltonians 与 conditional expectations 的 compatible inductive limit。即便成功，canonical object 仍是 $\mathcal A_\rtimes$ 与 direct-integral representation，不是 strict-wedge Fock tensor product。

该论文在其 Killing-horizon、KMS/modular、gravitational-edge-mode assumptions 下进一步得到 Type $\mathrm{II}_\infty$ factor 与 semifinite trace。这个 type classification **不能**直接移植到 free scalar wedge gluing；本题还没有证明 $G_\Gamma$ action 是 modular action，也没有证明 resulting algebra 是 semifinite。

一个更小的 mathematical prototype 是：若最终能在共同 boundary-extended Weyl algebra 上把一次 gluing transformation $S$ 证明为 automorphism $\alpha_S$，则

$$\begin{align}
\widetilde{\mathcal A}_{\rm pieces}
\rtimes_{\alpha_S}\mathbb Z
\end{align}$$

会在 $\ell^2(\mathbb Z;\mathcal H_D)$ 上加入一个 shift unitary 来 implement $\alpha_S$，即使它不在原 $\mathcal H_D$ 上 implementable。困难恰好集中为一个可判定的问题：$S$ 是否在 chosen boundary-extended CCR algebra 上定义 everywhere、invertible 且 symplectic；strict-Dirichlet phase space 本身太小，不能预设答案为 yes。

### 8.6 Infinite tensor product 也是可能的 enlarged answer

Lill 的 construction 表明，一些违反 Shale--Stinespring condition 的 bosonic Bogoliubov transformations 可以在 Fock space 的 extended state space 或 von Neumann infinite tensor product 中实现。对具有 suitable countable spectral decomposition 的 $v^*v$，transformed vacuum 是 normalized one-mode squeezed factors 的 infinite tensor product；当 $\operatorname{Tr}(v^*v)=\infty$ 时，它落在与 ordinary Fock vacuum 不同的 ITP sector，而不是原 Fock space 中的 vector。

这给出另一种严格的“某种 product”，但仍然不是 zeta regularization，也不是 strict-wedge Fock product。对本文 gluing kernel，其适用性尚未建立：第 2.1 节已经给出一个不在 $\ell^2$ 中的 Bogoliubov row，故 $\beta$ 不可能是 full one-particle Hilbert space 上的 bounded operator；若要使用允许 unbounded $v$ 的 extended theorem，仍须证明 dense symplectic domain、closability、$v^*v$ 的 self-adjointness/spectral hypotheses，以及 renormalized quadratic Hamiltonian 的 self-adjointness。

因此 continuum 层面的最终关系应写成

$$\begin{align}
\mathcal H_P
&\not\simeq_{\rm CCR}
\mathcal F_{D,1}\widehat\otimes\mathcal F_{D,2},\\
\mathcal H_{\rm enlarged}
&\simeq
\int^{\oplus}d\mu(g)\,\mathcal H_g
\quad\text{or an appropriate ITP/extended sector},
\end{align}$$

其中第二行必须连同 enlarged algebra、state、Hamiltonian 与 gluing reduction 一起指定。只写 Hilbert-space symbol 而不写这些 data，仍然没有定义一个场论。

## 9. 对 interacting QFT 与 gauge theory 能推广到哪里

### Interacting scalar

对 local interaction，CPS gluing constraints 仍然是 continuity 与 canonical flux matching；regulated Hilbert space 也仍可 factorize。Hamiltonian 形式上是

$$\begin{align}
H_P^{(\varepsilon)} =H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)} +V_{\rm glue}^{(\varepsilon)} +V_{{\rm bulk},1}+V_{{\rm bulk},2} +V_{{\rm ct},\Gamma}.
\end{align}$$

但是 $V_{\rm glue}$ 应先 exact diagonalize；它不是 ordinary weak interaction。得到 periodic free modes 后，再把 bulk interaction 交给现有 CPS-normalized Wick/OFPT/pAQFT pipeline。interacting spectrum 不会因为 Hilbert factorization 自动变成可精确对角化问题，interface composite operators 还可能需要 boundary-local renormalization。

### Gauge theory and gravity

field continuity 与 flux matching 要替换为：

1. extended presymplectic data 的 matching；
2. proper gauge transformations 的 quotient；
3. charge-carrying interface transformations 对应的 edge/BFV sector；
4. quantum theory 中相应的 BRST/BV consistency 与 anomaly check。

因此 free scalar benchmark 证明的是 gluing mechanism，不是 gauge/gravity Hilbert-space factorization theorem。

## 10. 给老板的最终表述

原猜想应改写为：

> 在固定 UV regulator 下，可以把两个 Dirichlet pieces 的 Fock spaces 作为完整系统的 reference tensor-product Hilbert space。在这个空间上加入一个非微扰的 quadratic interface Hamiltonian，exact diagonalization 后得到 periodic free theory 的完整 lattice spectrum，并可受控地取 continuum spectral limit。continuum theory 的真正 gluing data 是 field continuity 与 conjugate-flux matching；对任意 $L_1,L_2>0$，即使 $m>0$，Bogoliubov $\beta$ 也不是 Hilbert--Schmidt，所以 periodic Fock representation 不等于两个 homogeneous Dirichlet Fock representations 的 product。product-Fock Hamiltonian 是一个精确的 regulated construction，不是 continuum Hilbert-space identity。

在 global AdS3 中，最直接的 realization 是把 angular circle 切成两个 wedges，同时保留 $r=\infty$ 的同一 AdS boundary condition。角向 gluing 恢复 integer $\ell$，radial equation 随后给出完整 $\omega_{n,\ell}=\Delta+2n+|\ell|$；但 strict wedge-Dirichlet Fock product 仍只是 regulated reference representation，不能被提升为 continuum Hilbert-space identity。

zeta regularization 只能 regularize determinant、vacuum energy 或 gluing amplitude，不能改变 non-Hilbert--Schmidt map 的 operator class。若坚持寻找 continuum 的“某种 product”，最有内容的候选不是 zeta-subtracted Fock product，而是先恢复 interface degrees of freedom，再构造 boundary crossed product/direct-integral GNS representation。Chandrasekaran--Flanagan 的 horizon construction 精确展示了这种 mechanism：outer automorphisms 在 enlarged crossed product 中由新 edge unitaries 实现，而 $\mathcal H\otimes L^2(G)$ 的 tensor interpretation 依赖 trivialization。对 scalar/global AdS3，这是一条可执行但尚需完成 operator-algebraic checks 的路线；Type $\mathrm{II}_\infty$ 与 canonical trace 不会自动继承。

这给出一个可执行研究程序：

1. 先在 lattice 上实现并验证第 3 节的 exact quadratic gluing；
2. 用第 4 节 DtN determinant 作为 continuum analytic target；
3. 把任意 two-piece split 的 Fock inequivalence 作为 cutoff-removal warning，并对更高维数或其他 boundary conditions 重新检查 Bogoliubov implementability；
4. 在 global AdS3 中先 exact glue angular wedges，再用 physical global energies 建立 radial-mode Fock/OFPT basis；
5. 在 finite radial/interface cutoff 下定义 boundary Weyl algebra、$G_\Gamma^{(\Lambda)}$ action 与 crossed product，并验证 gluing reduction 与 periodic lattice matrix 完全相同；
6. 只有在证明 strongly continuous action、compatible inductive limit、periodic GNS state 与 self-adjoint Hamiltonian 后，才把它称为 continuum crossed-product realization；并行检查 Lill-type ITP hypotheses；
7. 最后才加入 bulk interaction，并使用现有 CPS/OFPT/pAQFT machinery。

## 11. Verification status

Companion check: `gluing_dirichlet_to_periodic_checks.wl`。

Verified:

1. Mathematica 验证 interval Poisson extension 的两个 outward derivatives 恰好等于 $M_L(k)q$，residual 为 $\{0,0\}$。
2. Mathematica 在 $L_i>0$、$\sin(kL_i)\neq0$ 下验证 DtN determinant identity，并验证 $k\to0$ limit 及其 constant-vector kernel；residual 分别为 $0$、zero matrix、$\{0,0\}$。
3. Mathematica 验证 continuity 与 opposite-flux constraints 使两片 CPS interface flux 相消，residual 为 $0$。
4. Mathematica 对 $2\leq N_1,N_2\leq5$、symbolic $m,\varepsilon$ 验证 $K_{D,1}\oplus K_{D,2}+K_{\rm glue}=K_P$，所有 residual matrices 为零；任意 $N_i$ 的 statement 还由两条缺失 lattice bonds 的逐项 identity 直接给出。
5. Mathematica 验证 $N=7$ periodic eigenvectors 与全部七个 eigenvalues，以及 $N_i=6$ Dirichlet eigenvectors 与全部六个 eigenvalues，所有 component residuals 为零。
6. Mathematica 验证 equal-half Dirichlet-pole sector 的 flux-matching amplitude relation，residual 为 $\{0,0\}$。
7. Mathematica 在 $N_1=3,N_2=4$ 上直接代入 endpoint mode expansions，验证 $V_{\rm glue}^{(\varepsilon)}$ 的 Fock-basis coefficient，residual 为 $0$。
8. Mathematica 对 $2\leq N_i\leq6$ 的全部 modes 验证 equal-chain endpoint parity identity，所有 residuals 为零。
9. Mathematica 在 $m>0,C>0$ 下验证 fixed-mode continuum spectral limit，residual 为 $0$。
10. Mathematica 对一般 $C>0,L_i>0$ 验证 periodic constant profile 与第 $i$ 片 Dirichlet sine modes 的 overlap $O_{0,in}=\sqrt{2L_i/C}\,[1-(-1)^n]/(\pi n)$，residual 为 $0$。
11. Mathematica 验证任意 piece 的 odd-mode asymptotic $n|\beta_{0,in}|^2\to2/(m\pi C)$，以及两个 pieces 的系数 $4/(m\pi C)$，两个 residuals 均为 $0$；与 odd harmonic series 比较即证明任意切分比例下 Hilbert--Schmidt sum 发散。
12. Mathematica 验证 $N_1=2,N_2=3$ 两个 Dirichlet blocks 与 glued $N=5$ matrix 的三个 characteristic-polynomial identities，residuals 均为 $0$。
13. Mathematica 验证 $L_1=L,L_2=2L$ 的 specialized DtN determinant、$r=1$ zero kernel，以及四个 sine/cosine Poisson reconstructions；residuals 分别为 $0$、zero matrix、$\{0,0,0,0\}$。
14. xAct/xCoba 在 global $(t,r,\varphi)$ chart 中验证 metric inverse、$\det g=-r^2$ 与第 7.2 节的 scalar d'Alembertian；operator residual 为 $0$。
15. Mathematica 使用 Jacobi differential equation 验证任意 $\Delta>1$、$\kappa\geq0$、$n\in\mathbb Z_{\geq0}$ 的 $R_{n,\kappa}$ 与 $\omega=\Delta+2n+\kappa$ 满足 separated radial equation；residual 为 $0$。
16. Mathematica 验证任意 $\alpha_1,\alpha_2$ 的 angular DtN determinant，以及 $\alpha_1=2\pi/3,\alpha_2=4\pi/3,\ell=1$ 的两个 displayed matrices、zero kernel 与四个 Poisson reconstructions；所有 residuals 为 zero matrices 或 $0$。
17. Mathematica 从 ADM coefficients 验证 global AdS3 Hamiltonian 中 $\Pi^2$、radial-gradient、angular-gradient、mass 与 CPS weights 分别为 $(1+r^2)/r$、$r(1+r^2)$、$1/r$、$r$、$r/(1+r^2)$；所有 residuals 为 $0$。
18. Mathematica 验证 fixed global frequency 对 high Dirichlet frequency 的 Bogoliubov factor 满足 $(\omega-\nu)^2/(4\omega\nu)\sim\nu/(4\omega)$；residual 为 $0$。从 $\mathcal D(A_D^{1/4})=H_{00}^{1/2}$ 推出 nonzero interface trace 的 logarithmic divergence 使用 elliptic fractional-domain theorem，而不是 Mathematica。
19. Mathematica 验证 angular semidiscrete dispersion 的 fixed-mode limit $\sqrt{4\sin^2(\ell\varepsilon/2)/\varepsilon^2}\to|\ell|$；residual 为 $0$。
20. Mathematica 验证 odd harmonic identity 与 asymptotic、$F_\mu(s)$ 的 residue 和 finite part、finite part 的 scale shift、one-mode squeezed-vacuum overlap，以及 $-\log(1+|\beta|^2)^{-1/4}\sim|\beta|^2/4$；七个 residuals 均为 $0$。
21. 对 Chandrasekaran--Flanagan 的 PDF，text extraction 定位了 Section 6.2、Appendix E 与 Appendix F；rendered pages 60--61、97--99 visually confirm 了 sharp-cut Type-III non-factorization、Eqs. (6.38)--(6.39) 的 extended Hilbert space、Eqs. (E.7)--(E.19) 的 direct-integral/crossed-product action，以及 hard/edge tensor split 的 non-canonical caveat。
22. 第 8.5 节的 covariance identity 由把 $\widehat\pi$ 与 $\lambda$ 的 displayed actions 逐项代入直接验证；它只证明 abstract regular representation 的 algebraic relation，不证明本文 scalar gluing 已满足建立该 crossed product 所需的 analytic hypotheses。

Assumptions:

1. 第 1--6 节的主 benchmark 是 $1+1$ 维、free、real、massive scalar，固定背景，无 gauge redundancy。
2. continuum operator 取 positive self-adjoint realization；切口没有另加独立 defect interaction。
3. DtN spectrum statement 在 individual Dirichlet poles 之外由 determinant 给出；pole sector 按原始 matching equations 处理。
4. Fock inequivalence 的显式证明取任意 $L_1,L_2>0$ 与 $m>0$；massless constant mode 另按第 6.3 节处理。
5. Global AdS3 benchmark 取 AdS radius 为一、$\Delta>1$ 的 standard normalizable quantization、两个 nondegenerate angular wedges，并在 $r=0$ 施加 global regularity。
6. zeta expansion 取 $\mu>0$ 为 dimensionless scale；改变 dimensionful convention 等价于改变 subtraction prescription，不影响 scale-dependence conclusion。
7. squeezed-vacuum product 使用 finite-cutoff Bloch--Messiah normal form；continuum conclusion 使用 Shale--Stinespring theorem，而不假设一个 infinite-dimensional diagonalization 已先存在于原 Fock space。

Not verified:

1. 未分类 higher-dimensional AdS、alternative/Robin quantization 或 BF/log sector 中全部 unitary-equivalence cases。
2. 未证明所选 lattice embeddings 到 continuum one-particle space 的 strong- 或 norm-resolvent convergence；目前独立证明的是 fixed-mode spectral limit。
3. 未构造作用在一般 $q(t,r)$ 上的完整 global-AdS3 operator-valued DtN kernel，也未计算其 determinant normalization。
4. 未计算 interacting continuum theory 的 interface counterterms、gluing anomaly 或 holographic-corner counterterms。
5. 未把 scalar gluing 推广为 gauge theory/gravity 的完整 BV--BFV/BRST construction。
6. 未为 scalar/global-AdS3 interface 构造具体的 boundary-extended Weyl algebra $\widetilde{\mathcal A}_{\rm pieces}$、strongly continuous $G_\Gamma$ action、crossed-product inductive limit、normal periodic state 或 self-adjoint glued Hamiltonian；第 8.5 节给出的是精确 candidate 与 proof obligations，不是已完成 theorem。
7. 未证明 scalar crossed product 是 Type $\mathrm{II}_\infty$ 或具有 Chandrasekaran--Flanagan gravity construction 的 canonical semifinite trace；这些 conclusions 依赖该论文特有的 horizon modular/edge-mode assumptions。
8. 未证明本文 unbounded Bogoliubov kernel 满足 Lill extended-state-space/ITP theorem 的 dense-domain、closability、$v^*v$ self-adjointness 与 spectral hypotheses。

## Primary references

- [Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616) — spatial boundaries、action variation、symplectic structure 与 Hamiltonian boundary terms。
- [Global Theory of Quantum Boundary Conditions and Topology Change](https://arxiv.org/abs/hep-th/0403048) — boundary conditions 作为 Laplacian self-adjoint extensions 的结构。
- [General boundary quantum field theory: Foundations and probability interpretation](https://arxiv.org/abs/hep-th/0509122) — hypersurface state spaces 与 amplitude gluing/composition viewpoint。
- [Combinatorial Quantum Field Theory and Gluing Formula for Determinants](https://arxiv.org/abs/1403.6170) — Gaussian gluing、Dirichlet-to-Neumann operator 与 determinant formula 的离散实现。
- [The BFK type gluing formula of zeta-determinants for the Robin Boundary condition](https://arxiv.org/abs/2306.17572) — zeta determinant 的 continuum BFK/DtN gluing；支持 determinant identity，不支持 Fock-space equivalence。
- [Linear symmetries of free boson fields](https://doi.org/10.1090/S0002-9947-1962-0137504-6) — bosonic Bogoliubov transformation 在 Fock space 上可实施的 Hilbert--Schmidt criterion。
- [Implementing Bogoliubov Transformations Beyond the Shale--Stinespring Condition](https://arxiv.org/abs/2204.13407) — extended state space 与 infinite-tensor-product 中的 non-Fock implementability，以及所需 operator hypotheses。
- [The split property for quantum field theories in flat and curved spacetimes](https://arxiv.org/abs/1601.06936) 与 [The Locality Axiom in Quantum Field Theory and Tensor Products of $C^*$-algebras](https://arxiv.org/abs/1206.5484) — positive-collar split property、Type-I interpolation 与 tensor-product-like locality。
- [Subregion algebras in classical and quantum gravity](https://arxiv.org/abs/2601.07915) — gravitational edge modes、crossed-product horizon algebra、$L^2(G;\mathcal H)$ direct integral、non-canonical hard/edge tensor split 与 regulated inductive-limit construction。
- [Bulk vs. Boundary Dynamics in Anti-de Sitter Spacetime](https://arxiv.org/abs/hep-th/9805171) — global AdS scalar 的 normalizable modes 与 Hilbert-space interpretation。
- [Dynamics in Non-Globally-Hyperbolic Static Spacetimes III: Anti-de Sitter Spacetime](https://arxiv.org/abs/hep-th/0402184) — AdS dynamics、positive self-adjoint extensions 与 boundary conditions。
- [Regularity of spectral fractional Dirichlet and Neumann problems](https://arxiv.org/abs/1412.3744) 与 [Interpolation in $L^p$ with boundary conditions](https://doi.org/10.4064/sm-44-1-47-60) — Dirichlet elliptic operator 的 fractional domains 与 critical boundary regularity。
