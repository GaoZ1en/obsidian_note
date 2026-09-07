# U(1) Chern–Simons annulus：cycle、零模与 radial Wilson line

工作包 B。**Annulus 的完整 framed classical phase space 是一个零模 cylinder 与两份反向 chiral oscillator spaces 的乘积。** 两边 currents 的零模相同，但 currents 不能确定 radial framed Wilson line。本文给出实际 proper-gauge quotient、radial-cut reconstruction，以及一个明确的 compact zero-mode/current quantization；sharp Wilson 另按 [工作包 C](<U(1) Chern-Simons Wilson and vertex extension.md>) 的 operator-domain 处理。

## 1. 独立的 annulus action 与 gauge policy

取 $\Sigma=[0,1]_r\times S^1_\theta$、orientation $dr\wedge d\theta$、$\theta\sim\theta+2\pi$。Outer boundary $+$ 为 $r=1$，induced orientation 为 $d\theta$；inner boundary $-$ 为 $r=0$，induced orientation 为 $-d\theta$。平凡 $U(1)$ bundle，无 bulk charges，$A\mapsto A+d\lambda$。

为使两个边界能量均非负，独立选 canonical action
$$
S=\frac{k}{4\pi}\int dt\left[-\int_\Sigma a\wedge\dot a
+2\int_\Sigma A_tda
-\int_0^{2\pi}\left(v_+a_{+,\theta}^2+v_-a_{-,\theta}^2\right)d\theta\right],
\quad v_\pm>0.
$$
由 physical variation 得 $A_t|_+=v_+a_{+,\theta}$、$A_t|_-=-v_-a_{-,\theta}$。不能在共同 $\theta$ 坐标上把两个 boundary conditions 都写成正号，却继续声称相同正能量 action。

Proper gauge group **包括全部** smooth $g:\Sigma\to U(1)$，且 $g=1$ 于两份 physical boundary。非恒等 boundary maps 是 active transformations。Angular-winding map $e^{im\theta}$ 在 boundary 非恒等，故不在 proper group 中。

## 2. 完整 flat quotient 与 lattice identification

每个 flat real connection 唯一写成
$$
a=\lambda\,d\theta+d\phi,
\qquad\lambda=\frac1{2\pi}\oint a\in\mathbb R,
\qquad\phi(r,\theta+2\pi)=\phi(r,\theta),
$$
其中 $\phi$ 唯一到一个共同实常数。这里已用 **实 periodic** $\phi$ 固定分解，不再容许把 $\phi$ 换成 $\phi+m\theta$ 后又把 $\lambda$ 模掉整数。Physical boundary framing 下 $\lambda$ 与 $\lambda+m$ 是不同 configurations；其 exponentiated cycle holonomy $H=e^{2\pi i\lambda}$ 则相同。

由于 proper $g$ 在两边都是 identity，其角向 winding 为零，所以有 real lift $\Lambda$。可唯一令 $\Lambda|_-=0$；此时
$$
\Lambda|_+=2\pi n,\qquad n\in\mathbb Z.
$$
所有 $n$ 都可由 $g=e^{2\pi i n r}$ 实现。于是 proper quotient 保留
$$
\phi_\pm=c_\pm+u_\pm,\qquad\int u_\pm d\theta=0,
\qquad\Delta=c_+-c_-\quad\bmod 2\pi,
$$
给出实际双射与 smooth local atlas
$$
\boxed{\mathcal P_\Sigma\cong
\mathbb R_\lambda\times S^1_\Delta
\times C^\infty_0(S^1,\mathbb R)_+
\times C^\infty_0(S^1,\mathbb R)_-.}
$$
Surjectivity 可取 $\phi=r\Delta+(1-r)u_-+ru_+$。两个相同数据的 representatives 相差一个 boundary lifts 为 $0,2\pi n$ 的 proper transformation，证明 injectivity。若只 quotient identity component，$\Delta$ 会是实数；那是另一种明示的 gauge policy。

## 3. CPS pairing 与 observables

从 $\Theta=-k\int_\Sigma a\wedge\delta a/(4\pi)$ 直接代入得到
$$
\boxed{\Omega=k\,d\lambda\wedge d\Delta
-\frac{k}{2\pi}\oint\left(\delta u_+\,d\delta u_+
-\delta u_-\,d\delta u_-\right)_{\rm eval}.}
$$
这里末项的精确定义是在两个 tangent vectors $U,W$ 上取
$-k\oint(U_+dW_+-U_-dW_-)/(2\pi)$，避免 field-space wedge 的额外 factor 2。

推导中的 harmonic cross term 是
$$
\int_\Sigma U_a\wedge W_a
=2\pi(-U_\lambda W_\Delta+W_\lambda U_\Delta)
+\oint(U_+dW_+-U_-dW_-).
$$
因此 $p=k\lambda$ 与 $\Delta$ 共轭，$\{\Delta,p\}=1$。遗漏 $d\lambda\wedge d\Delta$ 就会丢掉实际径向 transport。

在共同正向 $\theta$ 坐标定义 $J_n^\pm=k\oint e^{in\theta}a_{\pm,\theta}d\theta/(2\pi)$，有
$$
J_0^+=J_0^-=p,\qquad
\{J_n^+,J_m^+\}=-ikn\delta_{n+m,0},\qquad
\{J_n^-,J_m^-\}=+ikn\delta_{n+m,0}.
$$
两份非零 modes 对易。令 $R_0=e^{i\Delta}$，则
$$
\{\lambda,R_0\}=-\frac{i}{k}R_0,\qquad H=e^{2\pi i\lambda}.
$$
实际同角度 radial Wilson line 为
$$
\boxed{R(\theta)=\exp\!\left(i\int_0^1a_r(r,\theta)dr\right)
=R_0\exp\bigl(i[u_+(\theta)-u_-(\theta)]\bigr).}
$$
$R_0$ 是 radial line 相位的角向平均后指数化；它不依赖 lift 的 $2\pi n$ 歧义。给定 currents，改变 $\Delta$ 不改变任何 $J_n^\pm$，但改变 $R(\theta)$，直接证明 current incompleteness。

完整边界 charge
$$
Q[\alpha_+,\alpha_-]=\frac{k}{2\pi}\oint
(\alpha_+a_{+,\theta}-\alpha_-a_{-,\theta})d\theta
$$
产生 $\delta\Delta=\bar\alpha_+-\bar\alpha_-$、$\delta u_\pm=\alpha_\pm-\bar\alpha_\pm$。所以
$$
\{Q[\alpha],R(\theta)\}=-i[\alpha_+(\theta)-\alpha_-(\theta)]R(\theta).
$$

**Sharp classical typing。** $R(\theta)$ 不是原 smooth weak-symplectic phase space 上的 regular Hamiltonian function：其导数含 endpoint deltas。取共同 smooth unit-mass density $f$，
$R_f=\exp(i[\Delta+\int f(u_+-u_-)])$ 则是 regular。两个边界的 opposite brackets 给 $\{R_f,R_g\}=0$。令 densities 趋于 deltas，得到在 currents、$\lambda$、$H$ 与有限多个 $R(\theta)^{\pm1}$ 生成的函数代数上明确的 Poisson 扩张：$\{R(\theta),R(\eta)\}=0$ 及上述 charge bracket。所有 finite products 的 regularized brackets 有同一极限，Jacobi 由 charge derivations 和 constant cocycle 直接成立。其 Hamiltonian vectors 允许 distributional traces；不能将这份扩张重新命名为原来的 regular Hamiltonian algebra。

## 4. Radial self-sewing 与完整 kernel

沿 $\theta=0$ 切开，得到 rectangle。令 $a=d\Phi$；两 seam occurrences 的 tangential connection matching 给
$$
\Phi(r,2\pi)-\Phi(r,0)=2\pi\lambda,
$$
右侧与 $r$ 无关。还要求各 physical circles 的全部 tangential jets 周期匹配。于是 $\phi=\Phi-\lambda\theta$ 是 periodic potential，回到第 2 节的独立 target。该 construction 同时保留 cycle period，未把它置零。

光滑 global representative 的重构只需要 physical boundary traces 与 seam traces 的实际 joint compatibility。选 periodic $\phi$ 延拓后减去原 rectangle potential，差在 rectangle boundary 为零，故 regional proper gauge 消去所有多余 normal jets。

若保留 prescribed seam trace，完整 released gauge trace 为
$$
\kappa\in C^\infty([0,1],\mathbb R),\qquad
\kappa(0)=0,\quad\kappa(1)=2\pi n,\quad n\in\mathbb Z,
$$
在两份 seam occurrences 上取同一 group map。它确实延拓到 rectangle：两份 physical arcs 上分别置实 lift $0,2\pi n$，整个 boundary 的 winding 为零。连续部分 $K_0$ 满足两端为零；离散部分 $\mathbb Z$ 正是 $\Delta\sim\Delta+2\pi n$。所有 fibers 由这些 transformations 穷尽。与单 chord 不同，不能因为 seam 两端都在 physical boundary 就排除这份 winding。

在覆盖 $\Delta\in\mathbb R$ 的 matched linear trace space 上，outer/period restriction 有连续线性 section，presymplectic kernel 为 $K_0$；seam 积分相消给第 3 节的 $\Omega$。先 quotient $K_0$，再作 $\mathbb Z$ quotient，得到实际 cylinder target。对 regular polynomial oscillator currents，kernel 是 $\langle Q[K_0]\rangle$；零模 functions 则从一开始取关于 $\Delta$ 的 periodic class。不能在 polynomial Heisenberg algebra 中另加不一致的关系“$\Delta=\Delta+2\pi$”。

## 5. 选定 quantum algebra 与实际 domain

本节固定 $\hbar=1$、正偶整数 $k$，并选零模 flat-character parameter $\eta=0$。这是一个具体 bosonic compact prescription，未声称唯一 quantization 或 Rees specialization。实际 common-domain algebra 使用 finite Fourier current words；smooth smearings 可另外作为 insertion forms，不声称保持 finite-energy span。Hilbert space 与 dense common mode core 为
$$
\mathcal H=\bigoplus_{n\in\mathbb Z}\mathcal F_n^{(+)}\otimes\mathcal F_{-n}^{(-)},
\qquad\mathcal D_{\rm fin}=\text{finite charge/finite oscillator-energy span}.
$$
内边界正能量 current 用 $\widetilde J_n=-J^-_{-n}$，故两份 Fock currents 都满足 $[J_n,J_m]=kn\delta_{n+m,0}$，其零模分别为 $n,-n$。Equivalent zero-mode realization 是 $L^2(S^1_\Delta)\otimes\mathcal F_0\otimes\mathcal F_0$，
$$
p=-i\partial_\Delta,\quad R_0=e^{i\Delta},\quad
H=e^{2\pi i p/k},\quad [p,R_0]=R_0,
\quad HR_0=e^{2\pi i/k}R_0H,\quad H^k=1.
$$
$R_0,H$ 是 bounded unitaries，$p$ 在 periodic $H^1(S^1)$ 上 self-adjoint；mode polynomials 保持 $\mathcal D_{\rm fin}$。如另选 quasiperiodic $\eta$，则 $p$ spectrum 为 $\mathbb Z+\eta$、$H^k=e^{2\pi i\eta}$，不能把这种 choice 隐去。

零模 algebra 的每个元素唯一写成
$$
\sum_{r\in\mathbb Z}\sum_{j=0}^{k-1}R_0^r H^jP_{rj}(p),
$$
且有限求和。若它在 $\mathcal D_{\rm fin}$ 上为零，先按不同 shift $r$ 分离，再对每个 residue class $n\bmod k$ 使用 polynomial 有无限多个零点，最后作有限 Fourier inversion，得到所有 coefficients 为零。这给 faithful presentation，而非只核对 clock relation。

Quantum radial transport 是 charge-paired vertex
$$
\mathcal V_q(z_+,z_-)=V_q^{(+)}(z_+)\otimes V_{-q}^{(-)}(z_-),\qquad q\in\mathbb Z,
$$
从 $(n,-n)$ 送到 $(n+q,-n-q)$。它的两个 mode coefficients 给 $\mathcal D_{\rm fin}$ 上的实际 operators；相应 adjoint coefficients 在同一 dense core 上存在，故可闭。这里 charge shift 只发生一次，不给两个边界各添一个独立 $p$。相同物理角度对应 $z_+=e^{i\theta}$、$z_-=e^{-i\theta}$；zero-mode angular factors 抵消，留下 $R_0^q$ 与两个 oscillator endpoints。Endpoint Ward identity 是
$$
[\widehat Q[\alpha],\mathcal V_q]
=q(\alpha_+(\theta_+)-\alpha_-(\theta_-))\mathcal V_q.
$$
Modes、radially ordered products、normalization 和 collision prescription 按工作包 C 定义。这样 target 从独立 annulus CPS 与所选 oscillator/charge realization 构造；regional source 通过 matched current labels、period 和同一 compact zero-mode prescription 构造。连续 cut ideal $\langle Q[K_0]\rangle$ 在 polynomial current source 中给完整 kernel，zero-mode source 使用同一显示 presentation，故该 current/zero-mode algebra 的 sewing 是 exact。

**Sharp 限制不能省略。** 一条同时间、同角度的 thin radial line 一般不是 bounded operator；也不能因两个 chiral sectors 各有 modes，就断言把两个 endpoint variables 限制到同一个 angle 后仍给 operator。其 vacuum equal-time norm kernel 的局部阶为 $|\theta-\eta|^{-2q^2/k}$。特别在 $2q^2/k\geq1$ 时，普通空间 smearing 的 naive Hilbert norm integral 已发散。下面给出此 sharp pullback 在既定 prescription 下的精确存在阈值及反例；完整 charged algebra 仍使用两个 endpoint mode variables 或 radially ordered insertion distributions。Classical sharp line、quantum regularized line、mode operator 与 distribution 是不同对象。

### 5.1 Thin equal-time pullback 的充要阈值

固定非零 integer $q$，置 $d=q^2/k$。用同一 Abel regulator 定义
$
R_{q,\rho}(f)=\int_0^{2\pi}\frac{d\theta}{2\pi}\,
f(\theta)\mathcal V_q(\rho e^{i\theta},\rho e^{-i\theta}),
\qquad 0<\rho<1.
$
这里沿用 planar fields；cylinder normalization 只多一个在 $\rho\uparrow1$ 趋一的 scalar，结论相同。$f$ 是 smooth periodic function，输入 domain 是上述 $\mathcal D_{\mathrm{fin}}$。

**定理。** 若 $d<1/2$，$R_{q,\rho}(f)v$ 对每个 $v\in\mathcal D_{\mathrm{fin}}$ 在 Hilbert norm 中收敛，给 closable operator $R_q(f)$。若 $d\ge1/2$，任意非零 $f$ 的 $R_{q,\rho}(f)\Omega$ norm 都趋于无穷，其中 $\Omega$ 是两边 charge-zero vacuum；故此 prescription 没有包含真空的 Hilbert-valued thin pullback。$q=0$ 是平凡例外。

证明令
$
a_N=\frac{(d)_N}{N!},\qquad
f_\ell=\int\frac{d\theta}{2\pi}f(\theta)e^{-i\ell\theta}.
$
Creation coherent vectors 按两边 oscillator energies $N,M$ 正交分解，给完全正的 norm series
$
\|R_{q,\rho}(f)\Omega\|^2
=\sum_{N,M\ge0}a_Na_M\,\rho^{2(N+M)}|f_{M-N}|^2.
$
没有在 divergent kernel 上作 distribution 的乘法。对每个固定 $\ell\ge0$，对应 coefficient 的 $\rho\uparrow1$ 极限为 $\sum_{m\ge0}a_{m+\ell}a_m$。Gamma-ratio asymptotic 给
$
a_m\sim\frac{m^{d-1}}{\Gamma(d)},\qquad
a_{m+\ell}a_m\sim\frac{m^{2d-2}}{\Gamma(d)^2}.
$
因此其收敛恰等价于 $d<1/2$。若 $f\ne0$，至少一个 Fourier coefficient 非零；monotone convergence 对那一个正项子级数已经证明 $d\ge1/2$ 时 norm 发散，临界值为 logarithmic divergence。

在 $0<d<1/2$，Gauss summation 还给
$
\sum_{m\ge0}a_{m+\ell}a_m
=\frac{\Gamma(\ell+d)\Gamma(1-2d)}
{\Gamma(d)\Gamma(1-d)\Gamma(\ell+1-d)}.
$
更直接的全 domain 证明用 mixed-regulator kernel
$
K_{\rho,\sigma}(\theta-\eta)
=(1-\rho\sigma e^{i(\theta-\eta)})^{-d}
(1-\rho\sigma e^{-i(\theta-\eta)})^{-d}.
$
任意固定 finite oscillator input 的 matrix kernel 都是它乘一个有限 Laurent polynomial，后者的 coefficients 在 $\rho,\sigma$ 接近一时有界。这由把有限个 creation/annihilation operators 与两个 coherent exponentials 对易得到；finite charge zero-mode powers 同样有界。又有
$
|K_{\rho,\sigma}(x)|\le C_d|\sin(x/2)|^{-2d},
\qquad \rho,\sigma\ge1/2.
$
右侧恰在 $d<1/2$ 可积。对 norm 与 mixed inner products 同时作 dominated convergence，得到 $R_{q,\rho}(f)v$ 的 Cauchy 性。边界 adjoint pairing 给
$
R_q(f)^*\supset R_{-q}(\bar f)|_{\mathcal D_{\mathrm{fin}}},
$
所以 limit operator closable。

所选 matched current/vertex-mode sewing 在每个 regulator 与每个 coefficient 上 intertwine，故在 physical quotient 上也 intertwine 上述存在的 Hilbert limits。这里没有新增 independent regional Fock tensor theorem。即使 $d<1/2$，limit 一般不保持 $\mathcal D_{\mathrm{fin}}$，所以不能据此声称所有 thin smeared products 有共同 invariant core。对固定有限 $k$，integer charges 无界，charge fusion 终会超出阈值；全部 charged vertices 因而仍必须使用 mode/ordered-distribution algebra，不能整体改成这些 time-zero operators。

## 6. Dynamics 和验证等级

物理 Hamiltonian 为
$$
H_{\rm phys}=\frac{k}{4\pi}\oint
[v_+(\lambda+u_+')^2+v_-(\lambda+u_-')^2]d\theta,
$$
所以 $\dot\lambda=0$、$\dot\Delta=(v_++v_-)\lambda$、$\dot u_+=v_+u_+'$、$\dot u_-=-v_-u_-'$。量子零模能量是 $(v_++v_-)p^2/(2k)$，加两份 nonnegative normally ordered oscillator Hamiltonians，有限能量 core 给其标准 spectral closure。Cut histories 消去 artificial contributions 后恢复这些量。

Annulus 中 holonomy 和径向 transport 的 classical作用可与 [Henneaux–Merbis–Ranjbar §2.3](https://arxiv.org/html/1912.09465#S2.SS3) 对照；本文额外固定了两边 identity 的完整 proper group、实 periodic lift 与离散 radial winding，故 lattice identifications 必须按第 2 节核对。

**Verified:** 完整 classical quotient/CPS、radial-cut kernel、zero-mode/current quantum presentation 和 domain；thin equal-time pullback 的 $q^2/k<1/2$ 存在定理与其余电荷的真空域反例；可计算部分见 [验算记录](<../numerics/CS and YM five work packages verification.md>)。

**Assumptions:** 上述 framed boundary policy、完整 disconnected proper group、smooth flat trivial bundle、量子 $\hbar=1$、偶整数 $k$、$\eta=0$ 与指定 vertex-mode prescription。

**Not verified:** thin smeared operators 的任意共同乘积域、independent regional Fock completions 的 tensor sewing、其他 boundary quotient 或任意 compact CS modular functor。$q^2/k\ge1/2$ 的非零空间涂抹在本 prescription 下不具有真空域，是已证明的 no-go。
