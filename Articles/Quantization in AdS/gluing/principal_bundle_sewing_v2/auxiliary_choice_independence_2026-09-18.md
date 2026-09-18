# 辅助切分、临时闭合与 collar 的独立性

本文针对[传播 SU(2) 首阶模型](nonabelian_propagating_sewing_2026-09-18.md)分别处理：有限 refinement、Dirichlet/Neumann 临时 closure，以及实际 collar/frame transport。保留完整 fields、gauge maps 和 stabilizers，不以取商把不同 raw representatives 当作同一点。

**结论范围：** 固定最终几何、action、无穷远 frame、proper policy 和完整 joint source 域，经典 source/observable 比较在模 $\kappa^2$ 下对这三种辅助选择独立；相应半经典乘法在模 $(\kappa^2,\hbar^2)$ 下相容。更高 quantum prescription 必须另作运输；本文给一个 $\kappa\hbar^2$ 阶反例，说明不能默认其自动独立。

这些比较不把真正的 defect、物理 wall、braid 或拓扑变化称作辅助选择。参与比较的源域必须表示同一组允许的原始 fields；单独更改 test completion 或丢弃 source histories 不在定理内。

## 1. 多加一条人工切口

令 $\mathcal P'$ 在 $\mathcal P$ 的一个区域中增加平面 $x=c$。构造细分资料的直接办法是限制该区**已重新开放的**原始 field/source relation，赋予新 seam identity transition；保留原规范 maps 的限制。其反向操作是用新 seam 的完整 transmission 重新装配。这不是把旧齐次壁解限制到另一份旧齐次壁问题。

固定同一 presentation，装配后限制恢复原 field；一般 frame 下使用实际比较 map，不能声称任意 raw frame presentations 的双侧点态逆。所有这些比较 maps 仍保留。对 projectable observable expressions，新 seam 上的内部 frame 因实际不变性消失，而不是在 field space 中作 gauge quotient。

首阶 nonlinear forcing 是同一零阶 field 的局域双线性式。细分后，每片使用自己的 free Green/source rule；完整 field/conormal/jet matching 消去内部 delta source。固定初值和源的线性 wave 唯一性给同一一阶解。因而 source tuple、response 和传播 (N5) 都通过这份局域构造比较。

### 1.1 Coulomb response 的实际 Schur 消元

对横向 Fourier 频率 $k=|k_\perp|>0$，长度 $\ell$ 的 slab 的 outward Dirichlet-to-Neumann matrix 为

$$\Lambda_\ell(k)=k
\begin{pmatrix}\coth(k\ell)&-\operatorname{csch}(k\ell)\\
-\operatorname{csch}(k\ell)&\coth(k\ell)\end{pmatrix}.\tag{A1}$$

将 $\ell=\ell_1+\ell_2$，保留端点值 $(r_0,r_1,r_2)$。两片的 quadratic Dirichlet energy 相加；对共同 $r_1$ 变分得到 flux balance，再消去 $r_1$。得到

$$\Lambda_{\ell_1+\ell_2}=\Lambda_{\rm ext,ext}
-\Lambda_{\rm ext,int}\Lambda_{\rm int,int}^{-1}\Lambda_{\rm int,ext}.\tag{A2}$$

这是真正区域矩阵的 Schur complement。非齐次响应是同一线性消元对 affine source vector 的作用，不能只比较零源 quadratic form。

零频取

$$\Lambda_\ell(0)=\ell^{-1}\begin{pmatrix}1&-1\\-1&1\end{pmatrix},$$

内部 block 为 $\ell_1^{-1}+\ell_2^{-1}>0$，故内部消元仍有效；外部常数 mode 被保留。全空间衰减条件另行排除全球不衰减常数，不能把 finite-slab 的零频模式直接抹掉。

三个区域的任意两次消元顺序给同一矩阵和 affine source vector。证明可将全体内部变量同时解出，再用 block Gaussian elimination；脚本另以 $t_i=e^{-k\ell_i}$ 的有理形式精确验证两块、三块与零频等式。因此主篇 (N13) 重建的 $\chi_0,\phi_g$ 不变；对已经相同的局域 nonlinear source 再做一次同样消元，$\chi_1,\sigma_1$ 也不变。

### 1.2 跨缝 Wilson 的二阶 cross term

记区间 transport 的展开为 $U_{ba}=1+\kappa u^{(1)}_{ba}+\kappa^2u^{(2)}_{ba}$。在共同 frame 下，

$$\begin{aligned}
u^{(1)}_{ba}&=u^{(1)}_{bc}+u^{(1)}_{ca},\\
u^{(2)}_{ba}&=u^{(2)}_{bc}+u^{(2)}_{ca}
+u^{(1)}_{bc}u^{(1)}_{ca}.
\end{aligned}\tag{A3}$$

最后一项是晚段在左的 ordered cross integral。删去它，$(U-1)/\kappa$ 的首个 nonlinear coefficient 已经错了。一般 frames 用 $U_2hU_1$；所有内部端点 gauge factors 按原顺序消去。三段展开保留全部有序 pair，同样给直接 transport。脚本使用沿路变化、互不对易的 SU(2) connection 检查，未以一份常数 Abelian connection 代替。

作用在主篇 (N14) 的每个 slot/vertex 后，(A2)–(A3) 给 refinement maps，保持实际 normalized coefficients。因此保持完整 kernel criterion (N15)、Poisson bracket 和 image。由局域限制、实际 transports 与 block 消元构造的这些 maps 对再次 refinement 相容，不需要先把它定义成“经过 global target 的复合”。

## 2. 更换临时 closure：比较的是重新开放后的关系

可独立运行的两个基准 closure 为：

| 人工 worldtube 的物理闭合 | 可用的计算 frame | constraint 的 wall 条件 |
|---|---|---|
| tangential Dirichlet $A_a=0$ | Lorenz；由 $C=\partial^\mu A_\mu=0$ 完成 normal boundary datum | $C=0$ |
| 零 conormal $F_{na}=0$ | 在壁取 $A_n=0$，tangential components 满足 Neumann | $\partial_nC=0$ |

此表的 $a$ 包含时间及沿墙空间方向。第二行中 $A_n=0$ 是计算 gauge，不是额外物理边界场约束：先构造该 representative，再恢复全部实际 proper gauges。不能据此缩小原 gauge action。

两行零阶分别用 D/D/D/N 与 N/N/N/D 的 scalar wave Green functions；每个 formal 高阶 forcing 已由低阶 fields 给出。第二行在壁上 $F_{an}=0$，gauged normal equation $D^\mu F_{\mu n}+D_nC=0$ 给 $D_nC=0$；$A_n=0$ 时就是 Neumann。第一行直接施加 $C=0$。Noether identity 给 $D^\mu D_\mu C=0$，零相容初值因此传播真实 Gauss/Lorenz constraint。Dirichlet 型非线性问题不保留错误的自由 odd/even parity；仍需全部 inhomogeneous joint jets。

**Opening。** Dirichlet closure 释放 tangential trace；Neumann closure 释放其 conormal source。两者均保留 full pairs $(a,\lambda)$、Cauchy data、source conservation 和 corner compatibility 的关系，不要求存在全局可逆 DtN。Neumann 型非零 source 必须满足实际协变相容性，不能给每个颜色随意指定独立 ordinary conserved current。

对同一 bulk/action，真正重新开放后两者给同一原始 field relation：每个原 field 的 trace 与 conormal 都由它自己提供；原来的零值条件已撤去。该比较不主张旧 Dirichlet 与旧 Neumann autonomous algebras、spectra 或 vacua 本来同构。

若临时 boundary functional 为 $C[a]$，保存其准确标签和 corner representative，则

$$S^{\rm closed}=S^{\rm bulk}+C,\qquad
\lambda^{\rm closed}=\lambda^{\rm bulk}+\frac{\delta C}{\delta a}.$$

Opening 同时撤去 $C$、该 response shift 及其实际 corner contributions，因而

$$\delta(S^{\rm closed}-C)=\delta S^{\rm bulk}.\tag{A4}$$

对于含切向导数的 $C$，必须先做相同的 face/corner 分部积分；仅删除一个 Hamiltonian 数值却留下其 corner potential 不满足 (A4)。这条恒等式是对可准入 closure 的比较，不证明任意 $C$ 都有 well-posed regional dynamics。

### 2.1 反射项确实如何撤去

在 Laplace-time、transverse-Fourier 表示中取 $\rho=\sqrt{s^2+|k_\perp|^2}$、$\operatorname{Re}s>0$，选衰减分支。全空间 free resolvent 的 normal kernel 为

$$G_0(x,y)=\frac{e^{-\rho|x-y|}}{2\rho}.$$

对 $x,y<0$ 的左半空间，$G_D=G_0-e^{\rho(x+y)}/(2\rho)$，$G_N=G_0+e^{\rho(x+y)}/(2\rho)$。匹配另一半空间的完整 response 后，D presentation 加回反射项，N presentation 减去该项，都得到 $G_0$。跨缝 $x<0<y$ 得 $e^{\rho x}e^{-\rho y}/(2\rho)$。这是由 $\partial_n$ response 求得的 rank-one boundary correction，不是把区域 Green functions 直接相加。

逆 Laplace 给相同 causal kernel。首阶背景 Hessian 写作 $J_0+\kappa J_1$ 时，

$$G_\kappa^{R/A}=G_0^{R/A}-\kappa G_0^{R/A}J_1G_0^{R/A}\pmod{\kappa^2}.\tag{A5}$$

$J_1$ 是同一局域 cubic action 的二次变分。零阶 kernel 与背景已相同，(A5) 的所有 regional pieces 连同 boundary response 也相同。所用 smoothed probes 的树级积分有定义；这里没有从 retarded identity 推出任意 Wightman state 或 loop extension 相同。

## 3. 换 collar/frame：保留实际比较 arrow

设两种允许的 collar 实现分别把同一 matched datum 送到 $A^{g_\alpha}$、$A^{g_\beta}$。在当前变换约定下，

$$v_{\beta\alpha}=g_\beta g_\alpha^{-1},\qquad
A^{g_\beta}=(A^{g_\alpha})^{v_{\beta\alpha}}.\tag{A6}$$

只接受比较 maps 在 seams 光滑装配、在真实外端保持 frame，且按原政策属于 global proper 的 choices。本 formal sector 中由恒等出发的 collar deformation 满足分支要求；一般有限 maps 仍须检查 global branch，不能由每片 connectedness 推断。

式 (A6) 同时比较 electric fields、boundary sources 和全部变分。$v$ 可以依赖原场，其 $\delta v$ 不能删除。直接在 canonical potential 中代入得到

$$\Theta(A^v,E^v)-\Theta(A,E)
=\kappa^{-1}\int_\Sigma\langle D_{A^v}E^v,\delta v\,v^{-1}\rangle
-\kappa^{-1}\int_{\partial\Sigma}\langle(E^v)_n,\delta v\,v^{-1}\rangle.\tag{A7}$$

在完整 Gauss locus 和声明的 proper 边界条件下为零；区域版本的面项恰由 (N12) 抵消。因此不同 collars 比较完整 presymplectic forms，不要求先把这些方向约掉。

三个 choices 满足严格的实际群乘法

$$v_{\gamma\beta}v_{\beta\alpha}=v_{\gamma\alpha}.\tag{A8}$$

原 fields 与比较 maps 都保存。proper-invariant probes 在这份 arrow 下相同，cut-charged objects 则按实际 endpoint representation 运输。若“换 collar”实际插入了 curvature、磁通或 defect，就不满足 (A6)，不能调用该结论。

## 4. 多种辅助操作交叉进行

给定共同 refinement，在各小区同时做所有 restriction 与 actual transports。

1. refinement 与 collar transport 交换，因为限制一个 actual bundle map 等于对应小区上的变换；比较 arrow 由 (A6) 给出。
2. 临时 $C$ 的增删与 refinement 交换，只在 bulk/face/corner 标签随限制一起运输时成立。切断一个含切向导数的 boundary action，新增端点项必须保留。
3. response 消元的顺序由同一个有限 block system 决定；有序路径的细分由 (A3) 决定。

故每条程序得到同一 normalized observable coefficients，实际 frames 由 (A8) 比较。这足以验收主篇的 Poisson algebra、再开放与半经典 (N17)。无限细分极限、moving cuts、非平行 junctions 和新的 topology-changing moves 不由有限共同 refinement 自动获得。

## 5. 量子处方不能只凭经典独立性继承

对 (N17) 的模 $\hbar^2$ 乘法，经典 Poisson 比较已经足够；其 $\kappa\hbar$ 交叉项也被 (N8)、(N11) 实际固定。不同旧壁的 vacuum 不参与这个结论。

到下一量子阶，非线性 canonical change 本身已给一个精确反例。取一对 $\{q,p\}=1$，

$$Q=q,\qquad P=p+\kappa q^2.$$

它是 canonical 的。然而在旧 $(q,p)$ 中使用标准 Moyal product，

$$P^2\star_{q,p}P=P^3-\frac{\kappa\hbar^2}{2},\tag{A9}$$

而在独立 canonical variables $(Q,P)$ 中，$P^2\star_{Q,P}P=P^3$。所以 classical pullback 不能同时保持这两个“原样照抄”的 Moyal 公式。这不是 anomaly 的证明，而是 ordering/prescription transport 的缺项。

此 toy 的实际修复也可写出。令 $T F(q,p)=F(q,p+\kappa q^2)$；对一个符号定义

$$\mathcal QF=TF-\frac{\kappa\hbar^2}{12}\,\partial_p^3(TF)
\pmod{(\kappa^2,\hbar^3)}.\tag{A10}$$

这是 cubic shear 的 Weyl-symbol Egorov correction：约定 $\operatorname{ad}_\star H(F)=H\star F-F\star H$，由 $e^{\operatorname{ad}_\star(\kappa q^3/3)/(i\hbar)}$ 得到。它使 $\mathcal Q(P^3)=P(q,p)^3-\kappa\hbar^2/2$，与 (A9) 相符；对一般 finite polynomial 由 Moyal commutator 推导。因此应比较连同 ordering 运输的产品，不将两个裸 Moyal 公式相同列为辅助独立性的要求。

在 field theory 中，对应工作还包含局域和 boundary/corner counterterms、Ward normalization，以及经过重新开放的 propagator/parametrix。主篇仅构造了一个 vertex 的 classical/半经典域；本文没有为 arbitrary line coincidence 或 timelike-boundary loop products 构造这样的完整 transport。**这项更高量子问题仍未完成，不能把 (A10) 的单个有限维修复推广为 YM 重整化定理。**

## 6. 验收表

| 比较 | 已给出的实际 map/计算 | 尚未获得 |
|---|---|---|
| 有限加切口与重分组 | field restriction、(A2) 的 affine response 消元、(A3) 的 ordered cross terms、主篇 coefficient kernel | 无限 refinement/continuum-regulator 极限 |
| D/N 临时 closure | 各自完整 source relation；反射项的显式 boundary correction；(A5) 的首阶响应 | 任意 boundary law 的 well-posedness，或旧真空等价 |
| 可准入 boundary functional | 连同 response/corner 的完整 (A4) | 删除真实 edge dynamics 的许可 |
| collar/frame choices | (A6)–(A8) 的实际 proper arrows、完整 potential 比较 | 改 curvature、global branch 或物理 topology 的等价 |
| 半经典 quantum product | 模 $(\kappa^2,\hbar^2)$ 的实际同构 | 完整 UV/Ward/line-junction 产品 |
| nonlinear Moyal change | (A9) 的失败及 (A10) 的 finite-dimensional correction | 由 toy 推出的全 YM quantum transport |

**Verified:** 脚本精确检查 SU(2) ordered subdivision、DtN 两块/三块/零频消元、非线性 response shift、Moyal 失败；验证记录另列实际追加检查。场的 global smoothness、源域覆盖和有限阶 operator identities 由文中解析论证承担。

**Assumptions:** 与主篇相同的 formal/衰减/joint-domain 范围；同一最终 action/geometry/proper policy；所有临时项及 corners 一并运输；比较只在共同允许域进行。

**Not verified:** 完整 renormalized quantum YM 辅助独立性、任意变动边界的统一 estimates、无限切分、奇异拓扑变化、非微扰 global gauge charts、states/amplitudes 的唯一粘合。
