# 标量区域局域结构：自由理论的实现

日期：2026-09-07。本文实现 [研究路线](<scalar local structure research route.md>) 的 A–C：先从矩形作用量、joint histories 和实际 response 构造传播及局域标签，再证明 CCR 与完整 polynomial Wick 核类的包含、因果性、time-slice、有限切割相容性。相互作用所用的**有限插入生成类**另见 [插入类的 time-slice 障碍](<scalar insertion time-slice obstruction.md>)；不能把本文的 Wick 定理移给它。

## 1. 输入、定义域与依赖复核

固定 $M_s=I^\circ\times\Sigma_s$，$I=[t_-,t_+]$ 有限，$\Sigma_s$ 由有限个正边长平直矩形及指定的成对边／collar identifications 得到。每个顶点 link 是圆，总角 $2\pi$，所得空间是平坦二维环面。每个 cell action 只出现一次；没有真实空间边界、界面作用量或顶点相互作用。普通实 scalar，$m>0$；signature $(-,+,+)$。

先由这些几何数据形成 quotient atlas；$M_s$ 此时只是区域呈现的支撑空间，尚未借用独立 uncut dynamics。开集 $O\subset M_s$ 标记观测量支撑，可以穿过任意人工 seam／原顶点。Cells 自身始终使用带端口的 IBVP，不改成因果凸 cells。

| 数据 | 独立来源与实际定义域 | 支撑／拓扑及复核位置 |
|---|---|---|
| $S_i=\frac12\int(\dot\phi_i^2-|\nabla\phi_i|^2-m^2\phi_i^2)$ | 每个区域 action；prescribed $q_i$，保留 temporal CPS potentials | $C_t^\infty H^1(R_i)$；rectangle §§5.1–5.2 的完整端点补偿 |
| $\mathcal B_i=\gamma_iH^1(R_i)$，$\mathcal Q_i=C^\infty(I;\mathcal B_i)$ | 区域 joint trace image；不是逐边直积 | Hilbert quotient norm；协向量 $C_K^\infty(I^\circ;\mathcal B_i')$，$K\Subset I^\circ$ |
| $K_{i,D}$，$\mathcal E_i$，$G_{i,D}^{R/A}$ | 区域 Dirichlet form、harmonic lift 与因果能量解 | $\gamma_i\mathcal E_i=1$；closure §§1–2 |
| $C_i(z_i,q_i)=\psi_{z_i}+S_iq_i$ | 区域场 chart，$z_i\in X_{i,D}^\infty$ | $S_i=(1+E_iC_\chi)H_i^R$；归一化消去外部时间延拓 |
| $\lambda_i^{\mathrm{bdry}}$ | action variation 的 joint response，光滑时为 $-\partial_{n_i}\phi_i$ | $\int[(p_i,\mathcal E_i\dot\eta)-\mathfrak a_i(\phi_i,\mathcal E_i\eta)]dt-[(p_i,\mathcal E_i\eta)]_{t_-}^{t_+}$ |
| matching | 接口共同指定 trace／collar transition；release 产生完整弱 flux matching | $q\in\mathcal B_{\mathrm{com}}$、$\iota^*\sum_i\lambda_i^{\mathrm{bdry}}=0$；没有独立角点点值变量 |
| $K_s,G_s^{R/A},E_s$ | 在匹配 form domain 上求和区域 forms 后构造 | $E_s=G_s^A-G_s^R$；§2 的 causal support 是新增证明 |
| $R,B,R^\flat,B^\flat$ | closure §3 的 actual chart／section／regular transposes | $BR=1$、$R^\flat B^\flat=1$；这是全局 extension，未断言保留任意 $O$ |
| classical physical quotient | $\mathcal H^{\mathrm{tr}}_\beta(Y_{\mathrm{ind}})/\ker R^*$ | target 为 $\mathcal H(X_s^\infty)$；固定 compact-time dual strata 的 graph topology |
| linear／Wick labels | 区域 collar charts 的 $C_c^\infty$ densities／compact distribution densities，全部 mixed slots | §3、§5；不作 sharp cell restriction |
| $W_s$ | 从 $K_s$ 施用共同静态 rule $e^{-i\sqrt{K_s}(t-t')}/(2\sqrt{K_s})$ | $W_s-W_s^T=iE_s$；正常序选择是额外量子输入 |
| 独立目标 | 独立 uncut torus action、tests、Cauchy problem 与 Wick rule | §6 才使用 form assembly 比较；不以限制像定义它 |

本次复核的关键 identities 如下。采用 $C_\chi=[\partial_t^2,\chi]$，有 $C_\chi^*=-C_\chi$、$E_i^*=-E_i$。令 $\widetilde f=f+C_\chi E_if$，则 $E_i\widetilde f=0$，所以
$$
S_i^\dagger f=\mathcal E_i^*\widetilde f
-(\partial_t^2+m^2)\mathcal E_i^*G_i^A\widetilde f,
\qquad G_i^A\widetilde f=G_i^R\widetilde f.
$$
这解释 transpose 的紧时间支撑和 $\mathcal B_i'$ 值域；并未把它识别成旧逐面光滑 density。完整 response release 与 form wave equation 的双向等价使用 $h=(h-\mathcal E\gamma h)+\mathcal E\gamma h$ 及 temporal endpoint compensation，而不是错误的 compact-time tests 在全 history topology 中稠密。匹配的 $C_t^\infty H^1$ 解由方程递推处于全部 $K_s$ graph domains，故 matching locus 正是 $R(X_s^\infty)$。

旧 [classical note §§2.1–2.2、4.3](<classical regional observable algebra gluing.md>) 的 onto/time-band 采用 $C_c^\infty(J;L^2(\Sigma_i))$，允许接触边界。它只提供本节的符号检查，不能代替下面 $C_c^\infty(O)$ 的 kernel／support 证明。本文也不声称旧 spatially smooth face-density full-family theorem 已扩展到矩形。

## 2. 从 release 构造因果传播

定义
$$
H_s=\bigoplus_iL^2(R_i),\qquad
V_s=\{(u_i)\in\bigoplus_iH^1(R_i):\gamma u\text{ 按全部配边匹配}\},
$$
$$
\mathfrak a_s(u,v)=\sum_i\int_{R_i}(\nabla u_i\cdot\nabla v_i+m^2u_iv_i).
$$
Joint trace 连续给 $V_s$ 闭；它在 $H_s$ 稠密，form norm 与匹配的 $H^1$ norm 等价。闭型表示定理给 $K_s\ge m^2$。对源 $f$ 先解零过去／零未来的 form wave equation，得到 $G_s^{R/A}$。这些对象用区域输入和 release 决定。

**命题 2.1（透明有限传播）。** 对 $f\in C_c^\infty(M_s)$，
$$
\operatorname{supp}G_s^{R/A}f\subset J_s^{\pm}(\operatorname{supp}f),
\qquad \operatorname{supp}E_sf\subset J_s(\operatorname{supp}f).
$$

**证明。** 在每个 cell 由方程乘 $\dot u$ 得局域能量 identity。以 quotient 距离函数的光滑近似作移动外锥 cutoff，满足 $|\nabla d|\le1$；用 $2|\dot u\nabla u|\le\dot u^2+|\nabla u|^2$ 控制光锥侧面的 outward energy。Seam 两侧使用同一 cutoff trace；场及切向时间导数匹配，outward flux 在完整弱 response 配对中相消。旧顶点在光滑 quotient chart 内只是普通点，不产生独立 codimension-two 能量项。先对 smooth-vector 解积分，再由 form-energy approximation 处理 Lipschitz 距离和能量解。没有源、零初能量的外锥内能量始终为零；反向时间同理。这个证明不使用独立整体 Green operator。$\square$

局部 chart 内弱方程为 $L=\partial_t^2-\Delta+m^2$；smooth source 和 smooth initial data 经局部双曲正则性得到 smooth fields。定向 Green identity 给
$$
\Omega(z,w)=\sum_i\int_{R_i}(p_z u_w-p_wu_z),\qquad
\int fE_sg=-\Omega(E_sf,E_sg).
$$
区域 flux cancellation 使 $\Omega$ 与 Cauchy 面无关。令 $\ell_f(\phi)=\int f\phi$，则 $X_{\ell_f}=E_sf$，
$$
\{\ell_f,\ell_g\}=\int fE_sg.
$$
这里 $G_s^{R/A}$ 是 $L$ 的 inverses；action Hessian 为 $-L$，与 expanded CPS formalism 的 Hessian convention 一致。

**跨接口非零例。** 在一个 seam 附近取不发生环面绕行的小因果圆盘，两个 timelike-related 小支撑分别在 seam 两侧。局部 $2+1$ massive retarded kernel 的内部表达为
$$
G^R(t,x;0,0)=\frac{\theta(t)\theta(t^2-|x|^2)}{2\pi}
\frac{\cos(m\sqrt{t^2-|x|^2})}{\sqrt{t^2-|x|^2}}.
$$
在 $0<m\sqrt{t^2-|x|^2}<\pi/2$ 的严格内部选正的 tests，$\int fE_sg\ne0$。该公式的内部 KG residual 可直接代入核查；归一化由标准初始 jump $\partial_tG^R(0^+)=\delta$ 固定。也可只用 Cauchy jump 与有限传播证明某些跨 seam tests 必有非零配对。相反，若支撑在 $M_s$ 中因果分离，命题 2.1 给零配对。不同 cell 本身不是因果分离条件。

## 3. Released local CCR 与独立局部测试商

在 quotient atlas 中取有限个 compactly supported smooth density labels，按 overlap change 和 finite smooth partition relation 取商，记为 $\mathscr D_s(O)$。每个 label 的支撑在 $O$ 内；由区域 collars 得到跨 seam／原顶点的 labels。乘积 chart 上仍使用 smooth partitions。有限 refinement 给实际识别 $\mathscr D_s(O)=C_c^\infty(O)$，其拓扑为通常 LF topology；这个等式是 label descent 的结论。

先定义 released space
$$
\mathcal V_s^{\mathrm{rel}}(O)=\mathscr D_s(O)/\{f:E_s e_Of=0\},
\quad \sigma_s([f],[g])=\int e_Of\,E_s e_Og.
$$
$e_O$ 是内部紧支撑 test 的光滑零延拓。CCR algebra $\mathfrak A_s^{\mathrm{CCR}}(O)$ 的生成元 $\Phi_O([f])$ 满足线性、实共轭、单位和
$$
[\Phi_O([f]),\Phi_O([g])]=i\hbar\sigma_s([f],[g])1.
$$
使用 algebraic finite words，必要时逐 $\hbar$ 完成；不加入 modes 或 states。

对任意 $O_1\subset O_2$，把同一个 label 写在较大开集中。Global released kernel 的定义给关系保持，且在 symplectic space 上直接单射；CCR 的 PBW filtration 给 algebra 单射。恒等和三重包含的复合就是 test extension 的恒等与复合。此时只得到 relative isotony。

为给独立比较，令 $O$ 因果凸且全局双曲；从 $O$ 内的 differential operator 独立定义零过去／零未来 Green maps $G_O^{R/A}$，不在 $\partial O$ 加墙。Smooth normally hyperbolic Cauchy/Green 理论的输入见 [Bär–Ginoux–Pfäffle](https://arxiv.org/abs/0806.1036)。由命题 2.1 与 $O$ 中零初值唯一性，
$$
r_OG_s^{R/A}e_O=G_O^{R/A},\qquad r_OE_se_O=E_O.
$$

**命题 3.1（局部 kernel 与单射）。**
$$
\ker(E_se_O)=L_OC_c^\infty(O),\qquad
\mathcal V_s^{\mathrm{rel}}(O)\cong C_c^\infty(O)/L_OC_c^\infty(O).
$$

**证明。** 若 $E_se_Of=0$，则 $E_Of=0$。令 $h=G_O^Rf=G_O^Af$；它的支撑在 $J_O^+(K)\cap J_O^-(K)$，$K=\operatorname{supp}f$。该 causal diamond 紧，故 $h\in C_c^\infty(O)$、$L_Oh=f$。反向 $L$ 与 compact zero extension 交换，且 $E_sL=0$。独立局部商的辛配对由上式等于 released 配对，因而 CCR map onto 且单射。$\square$

因此独立局部理论、relative local algebra 与包含三者都已确定，不止是“生成集包含”。对于非因果凸开集仍有 relative subnet，但不附加未经证明的独立 IBVP 比较。

## 4. Time-slice 的实际映射

先在 $M_s$ 上取开时间带 $N=(a,b)\times\Sigma_s$，选 $\chi(t)$ 从 $0$ 变为 $1$，$\operatorname{supp}\chi'\Subset(a,b)$。对 $f\in\mathscr D_s(M_s)$ 定义
$$
h_\chi f=(1-\chi)G_s^Rf+\chi G_s^Af,
\qquad \tau_\chi f=-[L,\chi]E_sf.
$$
逐项计算得到
$$
Lh_\chi f=f+[L,\chi]E_sf,\qquad
\boxed{f-\tau_\chi f=Lh_\chi f.}
$$
两项的过去／未来截断使 $h_\chi f$ 紧支撑；$\tau_\chi f$ 支撑在 $N\cap J_s(\operatorname{supp}f)$，也是实际 compact smooth test。因此
$$
[f]\longmapsto[\tau_\chi f]
$$
是 $\mathcal V_s^{\mathrm{rel}}(M_s)\to\mathcal V_s^{\mathrm{rel}}(N)$ 的映射。若 $f=Lk$，则 $E_sf=0$、$\tau_\chi f=0$，故代表选择无关。与 inclusion 复合在两边都是恒等，因为其差是所列允许方程关系。这证明 onto、全部 kernel 和真实 inverse；没有使用 $G\circ B$ 的非局域 section。

一般情形取因果凸、全局双曲 $O$，$N\subset O$ 包含 $O$ 的一张 smooth spacelike Cauchy 面。对每个 compact source support $K$，在 $N$ 中选其因果相关部分的两张相邻 Cauchy surfaces，并选 $\chi$ 的 transition 在它们之间；可以向非紧空间方向缩小间距。Smooth Cauchy temporal function 的几何输入见 [Bernal–Sánchez](https://arxiv.org/abs/gr-qc/0512095)。实际需要的紧性是
$$
J_O(K)\cap\operatorname{supp}d\chi\Subset N.
$$
它由 $J_O(K)\cap\Sigma$ 紧、邻近 Cauchy slabs 的 causal compactness 和局部有限的缩小构造保证；不要求 $N$ 含一个预先固定的全空间等宽时间带。只需在这个紧因果管上固定 cutoff，其余部分任意相容延伸。对有限组 coefficients 取共同 $K$ 即给共同 cutoff。

在一般 spacetime cutoff 下，
$$
[L,\chi]u=(\chi_{tt}-\Delta\chi)u
 +2(\chi_tu_t-\nabla\chi\cdot\nabla u).
$$
用 $G_O^{R/A}$ 重复上面的两式，$h_\chi f$ 位于紧的截断 causal diamonds，得到同一 inverse。$N$ 本身不因果凸时使用 relative subalgebra；因果凸时另由命题 3.1 对应其独立测试商。

不同 $\chi$ 给相同商映射，因为
$$
\tau_\chi f-\tau_{\widetilde\chi}f
=-L\bigl((\chi-\widetilde\chi)E_Of\bigr),
$$
括号内在所用 causal tube 上紧支撑。该 inverse 自动保持 $\sigma$，进而诱导 CCR $*$-isomorphism。所有等式是实际标签等式模允许关系，未把稠密像写成满像。

## 5. 全 polynomial Wick coefficients

### 5.1 类、源关系与包含

定义
$$
\mathcal P_\mu(O)=\bigoplus_{k\ge0}\mathcal E'_{\mu,\mathrm{sym}}(O^k),\qquad
\operatorname{WF}(f_k)\cap
\bigl((\overline V_+^{\,k}\cup\overline V_-^{\,k})\setminus0\bigr)=\varnothing.
$$
每个元素 degree 有限；零 covectors 可以出现在部分 slots。对固定 compact support 和闭允许 cone 使用 normal distribution topology，全部类按这些 strata 取并；$\hbar$-series 每个 coefficient 仍 degree 有限。通过 $F(\phi)=\sum_k\langle f_k,\phi^{\otimes k}\rangle/k!$ 与泛函对应。

区域 source 保留每个 chart tuple 的这种核、slot permutations、overlap／partition relations、区域 $W_s$ 的 Wick multiplication relations，及下列全部 Cauchy-coefficient relations：
$$
\kappa_k(f_k)[z_1,\ldots,z_k]
=\langle f_k,C_sz_1\otimes\cdots\otimes C_sz_k\rangle=0.
$$
取全部 $k$、全部 smooth Cauchy data，常数项计入 $k=0$。这是 [closure §5](<scalar observable sewing closure.md>) 的完整 kernel；没有有限-mode 替代。局域版本仅要求每个 slot 的支撑在 $O$。

内部紧支撑零延拓、smooth partition 及 collar coordinate transport 均保持所列 wavefront 条件。每个 label 有有限区域 representative；两种 representatives 的共同 refinement 给完整 chart kernel。独立局部 Wick 类使用 $W_s|_{O\times O}$ 作为相同 Hadamard choice；其他选择在 §5.4 比较。

局部物理 kernel 与独立 $O$ 的 kernel 相同。可用命题 3.1 的局部解近似加强来证明：对固定 compact $K\Subset O$，局部 smooth solution 在 $K$ 附近的 Cauchy 数据可以先在 $O$ 的 Cauchy 面上截断，再用 compact spacelike patch 的延拓构造 ambient smooth Cauchy data。有限传播使 ambient solution 在 $K$ 邻域等于该局部解。对需覆盖多个时间的 $K$ 取其紧因果影。于是所有 slot 的局部解配对均可由 ambient 配对检验，反向 restriction 显然。对同一背景使用任意多方向的 polarization，给 polynomial kernel 的等价。因此局域包含是真正的单射，且对应独立局部 Wick algebra。

### 5.2 对完整核的时间重定位

对 $f_k\in\mathcal E'_{\mu,\mathrm{sym}}(O^k)$，在其所有 slot projections 的并 $K$ 上选择 §4 的一个 cutoff，定义
$$
\boxed{\tau_\chi^{(k)}f_k=(\tau_\chi)_1\cdots(\tau_\chi)_k f_k.}
$$
此处是 Green operators 作用于 distribution slots 的连续运算，不是有限秩展开。每个 slot 输出支撑在同一紧集 $J_O(K)\cap\operatorname{supp}d\chi\Subset N$。

**引理 5.1（波前保持）。** $G_O^{R/A}$ 在一个 slot 上的作用，以及 $h_\chi$、$\tau_\chi$，保持排除全部同向因果 tuple 的条件；在所用 compact/cone strata 上连续。

**证明。** Green kernel 的 twisted wavefront relation 只有 diagonal relation 和同向沿 null bicharacteristic transport；没有单侧非零而另一侧为零的 kernel singular pair。作用在一个 slot 后，若输出所有非零 covectors 同向因果，则输入的对应非零 covector 仍同向因果，其他 slots 不变，与输入条件矛盾。该 slot covector 为零时，可能的剩余 singularity 来自输入中同一零 slot 的 tuple；它同样不能把一个被排除 tuple 变成允许 tuple。等价地可把该 slot 的传播算子视为带其余变量参数的 normally hyperbolic operator，沿 bicharacteristic 回溯至零过去／零未来区域，排除自发新奇性。Compact causal truncation 保证 pushforward proper；smooth multiplication 和 differential operators 不增加波前。相应 normal seminorm estimates 给每一步的连续性。$\square$

由 $1-\tau_\chi=Lh_\chi$，逐 slot telescoping 给
$$
f_k-\tau_\chi^{(k)}f_k
=\sum_{j=1}^k L_j\Bigl[(\tau_\chi)_1\cdots(\tau_\chi)_{j-1}(h_\chi)_j f_k\Bigr].
$$
右侧每个括号仍是 compact admissible distribution kernel；对称化不改变结论。故它在完整 $\kappa$ kernel 中。特别地不是仅在线性／有限乘积子空间成立。

**定理 5.2（Wick time-slice）。** Inclusion
$$
\mathfrak Q_s^{\mathrm{poly}}(N)\longrightarrow\mathfrak Q_s^{\mathrm{poly}}(O)
$$
是 $*$-isomorphism；inverse 在所有 degree 上为 $[f_k]\mapsto[\tau_\chi^{(k)}f_k]$，逐 $\hbar$ coefficient 使用有限 degree 的构造。与包含复合为恒等由上式给出；kernel preservation 可直接用 $\kappa\tau^{(k)}=\kappa$。因为 inclusion 已是 Wick homomorphism，其 inverse 也是；不需要错误地要求 off-shell $\tau^{(k)}$ 精确保留同一个 Wick kernel。

这与 [Chilian–Fredenhagen, §2](https://arxiv.org/html/0802.1642) 的完整 polynomial-kernel 类型一致；本节给出适用于区域 response 的双向 cutoff、全部 slot 操作及其 kernel。对于一般非多项式 microcausal functionals，该证明没有处理积分中背景导数的 uniformity，不能外推。Polynomial 与 equicausal 的关系可对照 [Hawkins–Rejzner–Visser, §§5.1.2、6](https://arxiv.org/html/2312.15203v3)。

### 5.3 复合量与因果性

任意 smooth compact smearing 的有限-jet polynomial density 均在 $\mathcal P_\mu$：其核在 diagonal 上，conormal covectors 的和为零；取有限导数不增大 wavefront set。于是包含 $\int f\phi^2$、$\int f\phi^4$ 与 spacetime-smeared stress tensor。严格的归一化为
$$
F=\int f\phi^r\quad\Longrightarrow\quad
f_r=r!\,f(x_1)\delta(x_1-x_2)\cdots\delta(x_1-x_r).
$$
例如二次核必须分解为
$$
f_2=2\sum_{a,b}\rho_a(x)\rho_b(y)f(x)\delta(x-y).
$$
四次核保留四槽的全部 $\rho_{a_1}\cdots\rho_{a_4}$。重定位后的核通常不再是有限个 local insertion products；定理 5.2 证明的是全部允许 polynomial kernels 的 time-slice。

对因果分离的 $O_1,O_2$，$W_s(x,y)=W_s(y,x)$ 在两支撑之间成立。两个 Wick products 的每个 contraction 因此相等，得精确因果对易。微因果 cone 条件保证每项 contraction 合法、输出仍在同类；并非只比较首阶 CCR。

### 5.4 Wick choice

若 $W'=W+d$，$d$ smooth、symmetric、为同一透明方程的 bisolution difference，则
$$
\alpha_d=\exp\left(\frac{\hbar}{2}\left\langle d,\frac{\delta^2}{\delta\phi^2}\right\rangle\right)
$$
逐 polynomial coefficient 是有限和，保持 support、on-shell ideal，满足
$$
\alpha_d(F\star_WG)=\alpha_dF\star_{W'}\alpha_dG,
\qquad \alpha_{d_2}\alpha_{d_1}=\alpha_{d_1+d_2}.
$$
Local inclusion 与此 map 逐核交换。Time-slice inverse 与它在商上交换：两条路径都是相同 inclusion 的 inverse 接相同 choice map。无需要求 off-shell representatives 相同，也不比较 reflecting 与 transparent kernels 的非光滑差。

## 6. 粗细分、包含与独立 uncut 比较

设 $\mathcal D\prec\mathcal D'$ 是两个合法的有限矩形分解；中间 clusters 保留完整 joint trace、尚未释放的 ports、response 及 collar labels，满足 closure §7.3 的 trace/lift 输入。实际比较如下构造。

1. 在每个 coarse chart compact support 上取 fine collar charts 的 smooth partition，对每个 slot 同时重表达 labels。
2. 源的 Dirichlet 解与 history response 在 fine cells 上求解，释放 cluster 内部 ports，保留外部响应。
3. 同一 source 的两种求解具有同一匹配 form equation 和同一零初／末值。区域能量唯一性给相同 $G^{R/A}$，故相同 $E,W$；不通过两个 global isomorphisms 定义这个比较。

记 label 重表达为 $c_{\mathcal D'\mathcal D}$。Smooth partition identities 给全部 chart relations 的保持；step 3 给方程／Wick／$\kappa$ relations 的保持，构造 physical map $C_{\mathcal D'\mathcal D}$。反向用 coarse collar cover 重表达同一核；共同 refinement 表明两边 inverse。三块的两种组合和三重 refinement 同理由唯一响应与共同 partition 得
$$
C_{\mathcal D''\mathcal D'}C_{\mathcal D'\mathcal D}
=C_{\mathcal D''\mathcal D}.
$$
局域包含保持同一 label support，故
$$
C_{\mathcal D'\mathcal D,O_2}\,i^{\mathcal D}_{O_1O_2}
=i^{\mathcal D'}_{O_1O_2}\,C_{\mathcal D'\mathcal D,O_1}.
$$
对 time-slice 取相同 physical $\chi$；step 3 与 $[L,\chi]$ 的局部性给
$$
C_{\mathcal D'\mathcal D,N}\,\tau^{\mathcal D}_{NO}
=\tau^{\mathcal D'}_{NO}\,C_{\mathcal D'\mathcal D,O}
$$
在 CCR 与各 Wick degree 的物理商上成立。任意两种 cutoff、off-matching extensions 或 partitions 无需逐点相等。

最后从独立 uncut torus action 构造 $V_M,K_M,G_M^{R/A},W_M$ 与其 local tests。$H^1$ trace patching 给 a.e. assembly $A:V_s\to H^1(\Sigma_M)$，无 Jacobian 倍数遗漏，且
$$
AK_s=K_MA,\quad AG_s^{R/A}=G_M^{R/A}A,\quad
(A\otimes A)W_s=W_M.
$$
Smooth charts 和全部 graph domains 双向对应；compact distribution labels 用 density transport。于是独立 local CCR／Wick 比较保持包含、因果配对、time-slice 和上述 refinement maps。满射由每个 compact kernel 的实际 finite partition representative 给出，kernel 由 §3／§5 的完整判据给出。

## 7. 完成边界与验证

| 路线项 | 本文结果 |
|---|---|
| A | 输入表、trace/transpose 与完整 matching 依赖复核；保留旧测试类区别 |
| B1 | relative isotony；因果凸 GH 开集上的独立 $C_c^\infty/L C_c^\infty$ 比较与单射 |
| B2 | action-derived finite propagation、CPS pairing、跨 seam 非零例 |
| B3 | 完整时间带与一般 Cauchy 邻域；实际 $h_\chi,\tau_\chi$、kernel 与 onto |
| B4 | 从标签重表达／response 组合给 finite refinement 与交换图 |
| C | 全 compact admissible polynomial kernels 的 time-slice、mixed slots、Wick choices |
| D 的有限插入类 | 不由本文成立；另有明确的自由极限反例 |

**Verified:** 上述解析证明；[验证记录](<numerics/scalar local structure verification.md>) 中实际运行的 cutoff、slot telescope、Wick choice、图组合、KG／energy checks 和 xAct Green identity。符号检查不替代 support、PDE 和 wavefront 论证。

**Assumptions:** 固定有限静态矩形分解、完整 joint traces 与 smooth torus quotient、$m>0$；声明的合法 Lipschitz clusters；compact supports；独立局部比较的 $O$ 因果凸且 GH；共同 Wick rule；polynomial degrees 逐 formal coefficient 有限。

**Not verified:** 非多项式全 microcausal／nonlinear equicausal 类、旧逐面 smooth density 类、任意中间 cluster、无限细分、真实边界 composites、态／表示。尤其未把有限插入生成类的 time-slice 作为本文推论。
