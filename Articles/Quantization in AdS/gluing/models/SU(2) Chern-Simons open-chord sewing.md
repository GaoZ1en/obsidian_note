# SU(2) Chern–Simons open-chord sewing

工作包 D。**Classical phase-space sewing 与 regular polynomial current sewing 成立；独立的 universal fixed-level quantum current quotient 也成立。** §§7–9 另在正整数 level、指定 integrable vacuum net 与 Connes completion 下给出解析的 representation sewing；其 kernel 与 universal current ideal 分开陈述。特别是 source-free disk 的 current 必须有 trivial monodromy，不能把整个 affine-current dual 当作该 disk 的 phase space。

## 1. Action 和符号

几何为 oriented disk $D=D_1\cup_\gamma D_2$，$\partial D_1=O_1+\gamma$、$\partial D_2=O_2-\gamma$，$\gamma=[P,Q]$。取平凡 $SU(2)$ bundle，无 Wilson sources，$\langle X,Y\rangle=-\operatorname{tr}_{\bf2}(XY)$，$v>0$。本笔记用
$$
A^h=h^{-1}Ah+h^{-1}dh,\qquad F=dA+A\wedge A,
$$
因此与 YM note 的左作用 gauge convention 不同。采用与 Abelian note 相同的 CPS convention。以 trace 理解非阿贝尔 CS 三次项，完整 canonical actions 为
$$
S_i=\frac{k}{4\pi}\int dt\left[
-\int_{D_i}\langle a_i\wedge\dot a_i\rangle
+2\int_{D_i}\langle A_{t,i},F_{a_i}\rangle
-2\int_{\gamma_i}\langle q_i,a_i\rangle
-\int_{O_i}v\langle(a_i)_s,(a_i)_s\rangle ds\right].
$$
独立 global action 去掉 artificial term，并把 physical term 积分在整圆；等价的 covariant boundary term 在 physical face 为 $k\langle A_ta_s-va_s^2\rangle/(4\pi)$，在 seam 为 $-k\langle A_t,a\rangle/(4\pi)$。空间 flatness、时间方程及 response 是
$$
F_a=0,\qquad\dot a=D_aA_t,\qquad
A_t|_O=v a_s,\qquad
\Lambda_i=-\frac{k}{2\pi}\int_{I\times\gamma_i}\langle a_i,\delta q_i\rangle.
$$
共用 $q$ 后释放，得到 $a_1|_\gamma=a_2|_\gamma$，两份 artificial actions 相消。$\Theta_i=-k\int_{D_i}\langle a_i\wedge\delta a_i\rangle/(4\pi)$，时间端点和 $\delta\Lambda_i$ 中 mixed derivatives 均保留。

对 classical $k>0$ 即可。若解释为 compact quantum CS，另固定整数 level 和 framing；下文 algebraic quotient 只需要所列 central coefficient，不借此证明 path integral 的 large-gauge invariance。

## 2. 独立 global phase space 和 monodromy

Flat disk 上 $a=g^{-1}dg$，$g:D\to SU(2)$ 唯一到 left constant multiplication。Proper gauge 在整条 physical boundary 为 identity；它右乘 $g$ 且不改 boundary loop。因此
$$
\mathcal P_D=C^\infty(S^1,SU(2))/SU(2)_{\rm left}.
$$
每个 smooth loop 都能延拓到 disk，因为 $\pi_1(SU(2))=0$；连续 null homotopy 可保持 boundary 不变地 smooth 化。取 boundary basepoint 后以 left constant 令 $g(P)=1$，给 based-loop presentation。Local smooth sections 由 Lie-group charts 和线性 boundary extension 构造；没有使用 global logarithm。

Current map $[g]\mapsto a_s=g^{-1}\partial_sg$ 是双射到
$$
\mathcal O_0=\{a_s\in C^\infty(S^1,\mathfrak{su}(2)):
\operatorname{Hol}(\partial_s+a_s)=1\}.
$$
反向解 $U'=-a_sU$、$U(0)=1$，令 $g=U^{-1}$；trivial holonomy 恰给周期性，全部 jets 由 smooth periodic ODE 系数保证。非 trivial monodromy 的 smooth current 不可能来自 source-free disk。这是一个非线性、非局域条件。

写 $\xi=g^{-1}\delta g$、$\delta a=D_a\xi$，Stokes 给
$$
\Omega_D(\xi,\eta)=-\frac{k}{2\pi}\oint\langle\xi,D_a\eta\rangle.
$$
它的 kernel 是 $D_a\xi=0$，即 $\xi=g^{-1}cg$，正好对应 left constants。由此得到 quotient 上的弱辛形式。

对任意 smooth Lie-algebra loop $\alpha$，定义
$$
Q_D[\alpha]=\frac{k}{2\pi}\oint\langle\alpha,a_s\rangle ds,
\qquad X_{Q[\alpha]}a=D_a\alpha.
$$
这一向量保持 trivial monodromy。直接求导，而不从其他 convention 抄符号，得
$$
\boxed{\{Q[\alpha],Q[\beta]\}=-Q[[\alpha,\beta]]
+c_D(\alpha,\beta),\qquad
c_D=\frac{k}{2\pi}\oint\langle\alpha,d\beta\rangle.}
$$
负号来自 $\langle\alpha,[a,\beta]\rangle=-\langle[\alpha,\beta],a\rangle$。可等价地称它为 opposite loop Lie algebra 的 affine extension；这里始终保留 $Q$ 的正号定义。

## 3. 实际 joint data 与 cut group

独立区域 phase space 为
$$
\mathcal P_i=\operatorname{Tr}_{\partial D_i}C^\infty(D_i,SU(2))/SU(2)_{\rm left}.
$$
在横截角点，group-valued 两条 face traces 必须共享端点值；局部 group chart 中的两轴 extension 证明充分性，完整 boundary loop 的 extension 则使用 $\pi_1(SU(2))=0$。不能只用 Lie algebra currents 而省去这份 group data。

Released cut group 为
$$
\mathcal K_\gamma=\{h\in C^\infty([P,Q],SU(2)):h(P)=h(Q)=1\}.
$$
将 $h$ 与 outer identity 合成 boundary loop，可延拓为 regional map；也可延拓为 global disk boundary-trivial map。与 $U(1)$ chord 不同，这里每条 based path 的 winding obstruction 为零。所有尚未释放的 boundary transformations 保留为 active symmetries。

History covariance 是 $q\mapsto h^{-1}qh+h^{-1}\dot h$。Hamiltonian corner term为
$$
\frac{k}{2\pi}\sum_{z=P,Q}\epsilon_{i,z}
\langle v(a_i)_s(z)-q(z),\xi_i(z)\rangle.
$$
因此实际 solution/history domain 满足 $q(z)=v(a_i)_s(z)$ 及所有时间 compatibility。此时 boundary Hamiltonian vector 可取 $\xi_i=v(a_i)_s$ 于 outer arc、$\xi_i=q$ 于 seam。Joint values 保证 tangency。任意独立 $q$ 的 smooth IBVP 仍没有被断言。

## 4. Classical sewing theorem

在 $\mathcal P_1\times\mathcal P_2$ 中先匹配 tangential $a$。同一 seam 上两个 $g_i$ 解同一个 first-order equation，故相差一个 left constant；调整后令它们在整条 seam 相等。再要求 outer $g$ traces 在 $P,Q$ 匹配全部 tangential jets。记此实际匹配空间为 $\mathcal C$。

Outer restriction 给 $r:\mathcal C\to\mathcal P_D$。它满射：global loop 先延拓到 disk，再限制到两区域。也可直接选 seam path 并作 joint extension。任意两个同 outer loop 的 representatives 之比给在 outer arcs 为 identity 的 gauge maps，其 common seam ratio 正是 $\mathcal K_\gamma$。因此 $r$ 的 fibers 恰为 cut orbits。

相等的 $g$ seam traces 使两份 $\oint\langle\xi,D_a\eta\rangle$ 的 seam 积分抵消，得
$$
\left.(\Omega_1+\Omega_2)\right|_{\mathcal C}=r^*\Omega_D,
\qquad
\ker\Omega_{\mathcal C}=T(\mathcal K_\gamma\text{-orbits}),
\qquad
\mathcal C/\mathcal K_\gamma\cong\mathcal P_D.
$$
在 boundary-data presentation 中甚至可明确选 global smooth section：以 $g(P)=1$ 固定 left constants，把固定一段 outer arc 的 $g$ 按固定 smooth parameter map 复制到 seam，端点分别为 $g(P),g(Q)$；两条横截 faces 不要求各阶导数彼此相等，故它属于实际 joint trace。此 section 与其 derivative 给全局 Hamiltonian vector 的 smooth lift。Orbit action 是 free 的：若它只改变每个 $g_i$ 的 left constant，outer identity 立即迫使该常数为 identity。故上述 kernel 无未处理 stabilizer。

Actual continuum reconstruction 由 matched skeleton 的 group-valued extension完成。角点先在 group chart 中延拓，剩余每个 cell 的闭合 loop 因 $\pi_1(SU(2))=0$ 可填入；partition/chart smoothing 保持 prescribed skeleton。得到的 global $g$ 与 regional representatives 在完整 regional boundary 相同，差为 proper gauge。反向亦然。

由此得到全 intrinsic regular Hamiltonian algebra 的同构：在 $\mathcal C$ 上使用 smooth basic functions 且具有 smooth presymplectic Hamiltonian lift，modulo vertical vector ambiguity；它们恰为 $r^*\mathcal H(\mathcal P_D)$。这不自动证明每个函数都能延拓为 ambient regional product 上的 Hamiltonian function。下一节另给一个实际 ambient polynomial source 的 exact theorem。

物理 Hamiltonian $H_D=kv\oint\langle a_s,a_s\rangle/(4\pi)$ 产生 $\dot a_s=v\partial_sa_s$。Seam Hamiltonians 在约束上相消，monodromy 在此演化下保持 identity。Global 解可由 $g(t,s)=g_0(s+vt)$ 的 smooth disk extension 构造，因此动力学比较也在实际 compatible histories 上成立。

## 5. Ambient polynomial currents 与非线性 monodromy

令 $\mathfrak C$ 为两个 regional Lie-algebra trace labels 的 tuples：seam labels 相等，outer labels 匹配全部 jets。其 kernel $\mathfrak K$ 是 outer-zero 的 endpoint-zero seam labels。Pointwise bracket 保持这些条件；outer restriction 给 Lie algebra exact sequence
$$
0\to\mathfrak K\to\mathfrak C\to L\mathfrak{su}(2)\to0.
$$
线性 extension 存在，但不要求它保持 Lie bracket。联合 current $Q_C[\alpha]=\sum_iQ_i[\alpha_i]$ 的 Hamiltonian field tangent to $\mathcal C$。Cocycle 在 seam 上相消，所以
$$
c_C=r^*c_D,\qquad c_C(\mathfrak K,\mathfrak C)=0.
$$
$Q[\mathfrak K]$ 是 Lie ideal，通常不是 central ideal：$[\alpha,\kappa]$ 可以非零。这正是与 Abelian PBW splitting 的差别。

还须检查 finite polynomial currents 在实际 $\mathcal O_0$ 上没有暗藏关系。给任意 finite-dimensional label space $E\subset L\mathfrak{su}(2)$，可选一条 loop $g$，使
$$
E\cap\{g^{-1}cg:c\in\mathfrak{su}(2)\}=0.
$$
证明如下。取 $F=E+\mathfrak{su}(2)_{\rm const}$。可选任意足够小的 interval $J$，使 $F$ 中没有非零函数支撑在 $\overline J$：否则用嵌套缩小的 intervals，finite-dimensional descending subspaces 最终稳定，得到支撑在一点的非零 smooth function，矛盾。取 $g=1$ 于 $J$ 外，在 $J$ 内依次经过两个没有共同非零 fixed vector 的 adjoint rotations。若 $g^{-1}cg\in E$，它减去 $c$ 属于 $F$ 且支撑在 $\overline J$，故恒零；两个 rotations 随即迫使 $c=0$。

因此这些 finite currents 的不同ials 在该 phase point 线性独立。选有限多个 tangent directions 得到有限维 slice 上的 submersion，所以 current-coordinate image 含一个 open subset。任何在全部实际 disk data 上消失的 finite polynomial 都为零。相同论证逐区域成立；PBW/classical symmetric source 是实际 currents 的忠实 realization。

于是 polynomial restriction 的完整 kernel 为 $\langle Q[\mathfrak K]\rangle$，且
$$
\mathcal A_C^{\rm cl,poly}/\langle Q[\mathfrak K]\rangle
\cong\mathcal A_D^{\rm cl,poly}.
$$
这不否定 monodromy 条件：该条件不是有限多个 smooth linear currents 的 polynomial relation。Polynomial algebra 与它的实际 phase-space realization 必须同时记录。

## 6. 独立 quantum current reduction

先独立定义 global algebra 为 smooth-loop labels 的 universal fixed-level current algebra
$$
[\widehat Q[\alpha],\widehat Q[\beta]]
=i\hbar\bigl(-\widehat Q[[\alpha,\beta]]+c_D(\alpha,\beta)1\bigr),
\qquad\widehat Q[\alpha]^*=\widehat Q[\alpha]\quad(\alpha\text{ real}).
$$
区域各自使用完整 boundary cocycle；PBW 使 $\mathfrak C$ 的 current algebra 嵌入 regional tensor product。Lie-algebra surjection 的 enveloping universal property 给
$$
\boxed{\mathscr A_{C,\hbar}/\mathscr J\cong\mathscr U_{k,\hbar}(L\mathfrak{su}(2)^{\rm op}),
\qquad\mathscr J=\langle\widehat Q[\mathfrak K]\rangle_{\rm two\text{-}sided}.}
$$
完整 kernel 证明：取适配 vector-space basis，先排 $\mathfrak K$，再排 quotient labels；PBW 中所有含 kernel label 的 monomials 正好构成该 ideal。商中剩余 ordered monomials 是 independent target 的 PBW basis。故 onto、injectivity、$*$ 和 $\hbar$-torsion freedom 均成立。没有把非阿贝尔 extension 错写成 tensor product，也没有使用 infinite-dimensional Haar projector。Mod $\hbar$ 恢复上一节的实际 polynomial Poisson algebra。

**这一量子验收的准确范围。** Universal current algebra 不自动选择 trivial-monodromy orbit 的 quantization、positive energy vacuum module、integrable quotient 或 conformal blocks。正整数 level 的 integrable vacuum module 还有 affine singular vectors；例如常用 $sl_2$ normalization 中 $(J^+_{-1})^{k+1}|0\rangle=0$。这是对 vacuum vector 的关系，不能误写成该 finite word 在整个 Hilbert space 上为零。相应 null-field ideal 属于 representation/vertex completion 的另外一步。上述 PBW theorem 本身没有证明该 ideal 的 regional preimage 或 sewing；§§7–9 另给带明确 representation 输入与 analytic completion 的证明。

原始 canonical current 构造可对照 [Balachandran–Bimonte–Gupta–Stern](https://arxiv.org/html/hep-th/9110072)；holonomy/orbit 区别可对照 [Henneaux–Merbis–Ranjbar §2.4](https://arxiv.org/html/1912.09465#S2.SS4)。本文的 corner source、actual reconstruction、finite-current faithfulness 和 universal kernel 另按上述论证给出。

## 7. 正整数 level 的 vacuum module：完整 regional preimage

现在明确增加另一种 quantum prescription：$\hbar=1$、$k\in\mathbb Z_{>0}$，取 integrable positive-energy vacuum representation。它独立于第 6 节 universal algebra 的选择；既不以 PBW 自动推出，也不声称由本笔记构造完整 CS path integral。

先换成标准 current convention $J[\alpha]=-\widehat Q[\alpha]$。于是 Lie term 为正，central coefficient 不变。用 $[e,f]=h$、$[h,e]=2e$ 的 $sl_2$ modes，有
$$
[J^a_m,J^b_n]=i\epsilon_{abc}J^c_{m+n}
+\frac{k}{2}m\delta_{ab}\delta_{m+n,0},\quad
[e_m,f_n]=h_{m+n}+km\delta_{m+n,0}.
$$
独立 global algebraic vacuum space 是 induced module
$$
V^k=U_k(\widehat{\mathfrak{sl}}_2)
\otimes_{U(\mathfrak{sl}_2[z])}\mathbb C\Omega,
\qquad \mathfrak{sl}_2[z]\Omega=0.
$$
标准 integrable highest-weight theorem 给其唯一 maximal submodule
$$
I_k=U_k(\widehat{\mathfrak{sl}}_2)e_{-1}^{\,k+1}\Omega,\qquad
L_k=V^k/I_k.
$$
这里引用的是 symmetrizable Kac–Moody dominant-integral presentation，[Kac, Chapter 10, Corollary 10.4](https://www.cambridge.org/core/books/infinitedimensional-lie-algebras/integrable-highestweight-modules-the-character-formula/ABF8F132661656EEBEB70EFF42CDC857)。对 affine $A_1$、highest weight $k\Lambda_0$，finite simple-root relation 已由 $\mathfrak{sl}_2[z]\Omega=0$ 包含，剩余 affine simple-root relation 正是 $e_{-1}^{k+1}\Omega=0$，适用于所有 $k\ge1$。在 $k\ge2$ 的 VOA notation 下亦可核对 [Dong–Lam–Wang–Yamada, §4](https://www.ncts.ncku.edu.tw/math/files/paper/2010-01-01.pdf)。没有把单个 norm 为零当作 maximality 的证明。

Regional source 只用实际 label map 和一个声明的共同 outer-circle Fourier polarization 构造。令 $\mathfrak C_{\mathrm{pol}}=r^{-1}(\mathfrak{sl}_2[z,z^{-1}])$，$\mathscr U_C$ 为其 fixed-level algebra，$\mathfrak b_C$ 为 outer label 属于 $\mathfrak{sl}_2[z]$ 的全部 currents（包含全部 cut currents）。定义
$$
V_C=\mathscr U_C/\mathscr U_C\mathfrak b_C.
$$
这是 cyclic module，$\mathscr U_C\mathfrak b_C$ 是 **left ideal**。第 6 节的 enveloping quotient 加 PBW 给 $V_C\cong V^k$：cut ideal 已作用为零，剩余 negative modes 是相同 PBW basis。任取 $e_{-1}$ 的 regional lift $\widetilde e_{-1}$，有完整公式
$$
\boxed{
\ker(\mathscr U_C\longrightarrow L_k,\ A\mapsto A\Omega)
=\mathscr U_C\mathfrak b_C+
\mathscr U_C\widetilde e_{-1}^{\,k+1}.}
$$
证明先 quotient 左边第一项得 $V^k$，再使用上述 maximal-submodule theorem；反向每个 null descendant 都可 lift，所以没有额外 preimage。改变 lift 只增加 cut-ideal elements，故同一个 left ideal。该 module 配上 normalized positive vacuum form 后的 Hilbert completion，恰为 independently defined $H_{0,k}$。

这里的 kernel 是 cyclic-vector map 的 kernel，绝不是 current operator algebra 在整个 $H_{0,k}$ 上的 annihilator。甚至能给出明确反例：$v=f_{-1}^{\,k}\Omega\ne0$，$\|v\|^2=(k!)^2$。置 $E=e_{-1}$、$F=f_1$、$H=k-h_0$，则
$$
[F,E]=H,\quad [H,E]=-2E,\quad Fv=0,\quad Hv=3kv.
$$
归纳得
$$
\|E^{k+1}v\|^2=(k+1)!\prod_{j=0}^{k}(3k-j)\,(k!)^2>0.
$$
所以 $e_{-1}^{k+1}\Omega=0$ 与 $e_{-1}^{k+1}\ne0$ 作为实际 operator 同时成立。Vacuum null-field ideal 必须保留其 module/vertex typing。

## 8. Current 的解析域与实际 corner gauge data

### 8.1 Smooth currents 的共同 invariant domain

在 $H_{0,k}$ 上令 $\mathcal D_{\mathrm{fin}}$ 为 finite-energy vectors，$N=1+L_0$，$\mathcal D_\infty=\bigcap_{r\ge0}\operatorname{Dom}N^r$。这里 $L_0$ 是 reference-circle Sugawara rotation，用于指定表示和 domain；不把它与任意 regional prescribed-history Hamiltonian 混同。上述 normalization 给
$$
L_0=\frac1{k+2}\left[
\sum_a(J^a_0)^2+2\sum_{n>0,a}J^a_{-n}J^a_n\right].
$$
正项和及 $[J^a_n,J^a_{-n}]=kn/2$ 给
$$
\|J^a_n v\|\le C_k(1+|n|)^{1/2}\|N^{1/2}v\|,
\quad
\|J(f)v\|\le C_k\sum_n(1+|n|)^{1/2}|f_n|\,\|N^{1/2}v\|.
$$
对 smooth $f$，$[L_0,J_n]=-nJ_n$ 与同一估计说明 $J(f):\mathcal D_\infty\to\mathcal D_\infty$ 连续。Real $f$ 的 operator 在 $\mathcal D_{\mathrm{fin}}$ 上 essentially self-adjoint：以 $N$ 作 Nelson commutator theorem 的 comparison operator，第一条 bound 控制 $J(f)$，$[L_0,J(f)]$ 对应 $f'$ 的 current，其 quadratic form 被 $C_f\langle v,Nv\rangle$ 控制。于是 smooth-current finite words 在 $\mathcal D_\infty$ 上有实际共同域。

定义独立 regional vacuum net
$$
\mathcal A_k(J)=\{\pi_k(h):h\text{ smooth, supported in }\operatorname{int}J\}'',
\qquad H_i=H_{0,k}(\partial D_i).
$$
也可由这些 local real currents 的 self-adjoint exponentials 生成。每个 circle 的 orientation 与 collar coordinates 预先指定；opposite orientation 给 $\mathcal A_k(\bar J)=\mathcal A_k(J)^{\mathrm{op}}$。

### 8.2 不可强加 regional corner jets；$H^1$ 已足够

实际 regional label 是两段 smooth face data 在 corner 共享值。把 boundary 当作抽象 smooth circle 后，它一般只是 continuous piecewise smooth，属于 $H^1$，不能要求在这个人为 circle coordinate 下各阶 derivatives 相等。Group-valued trace 同理。单个 endpoint-zero seam map 延拓为 outer identity 也是 $H^1$ loop。

这里使用 [Panebianco, Proposition 24, v3](https://arxiv.org/pdf/2011.10491) 的明确结果：$SU(n)$ 的 positive-energy representations 强连续地、projectively 延拓到 $H^s(S^1,SU(n))$，$s>1/2$；取 $n=2,s=1$ 即覆盖实际 corner traces。这个范围来自 fermionic implementability，而不是把一般群的 $H^{3/2}$ theorem 误用于 $H^1$：
$$
\|[P_+,M_h]\|_{\mathrm{HS}}^2
=\sum_{n\in\mathbb Z}|n|\|\widehat h_n\|_{\mathrm{HS}}^2<\infty.
$$

还要核实 endpoint jets 没有落在 cut algebra 之外。对 $h\in\mathcal K_\gamma$，在 endpoint 的 identity chart 写 $h=\exp X$，$X(s)=O(s)$。取 cutoff $\chi_\epsilon$ 在 $s<\epsilon$ 为零、在 $s>2\epsilon$ 为一，以 $\exp(\chi_\epsilon X)$ 替换。差的 $L^2$ norm 为 $O(\epsilon^{3/2})$、weak-derivative norm 为 $O(\epsilon^{1/2})$。在两个 endpoints 同时作此处理，得到内部支撑的 smooth loops 收敛到 $h$ 的 identity extension，收敛于 $H^1$。表示的 strong continuity 因而给
$$
\pi_k(\widetilde h)\in\mathcal A_k(\gamma).
$$
所以释放的完整 smooth based-path group，包括非零 endpoint derivative jets，都在所选 cut von Neumann algebra 中实现；无需额外 corner Hilbert factor。

**一个必须保留的 domain 反例。** 取一个 Cartan component，$f(\theta)=\theta(\pi-\theta)$ 于 $[0,\pi]$，在 $[\pi,2\pi]$ 为零。它是合法 corner trace，并有 $f_{2m}=-1/(4m^2)$。因此
$$
\|L_0J(f)\Omega\|^2
=\frac{k}{2}\sum_{n>0}n^3|f_{-n}|^2=\infty.
$$
$J(f)\Omega$ 自身存在，但不属于 $\operatorname{Dom}L_0$。故所有 raw corner currents **不**共同保持 $\mathcal D_\infty$；把其任意 products 当作该域上的已定义 operators 是错误命题。下面先用 bounded cut algebras 作 fusion，随后在 sewn circle 上恢复 smooth currents，而不作未定义的 unbounded tensor sums。

## 9. 两个独立 vacuum regions 的 Connes sewing

令 $M=\mathcal A_k(\gamma)$，按相反 seam orientations 将 $H_1$ 视为 right $M$-module、$H_2$ 视为 left $M$-module。两者在各自区域先独立选取 integrable vacuum representation，含各自 null vectors。Global target 也先独立取 $H_D=H_{0,k}(\partial D)$ 及其 vacuum net。

定义 right-bounded intertwiners
$$
\mathcal X=\operatorname{Hom}_{-M}(L^2(M),H_1),
\qquad
\mathcal V_0=\mathcal X\odot H_2.
$$
$T^*S$ 属于 $L^2(M)$ 上 right $M$ 的 commutant，即其 left $M$。规定（inner product 对第二变量线性）
$$
\left\langle\sum_iT_i\otimes\eta_i,\sum_jS_j\otimes\zeta_j\right\rangle_0
=\sum_{ij}\langle\eta_i,(T_i^*S_j)\zeta_j\rangle.
$$
Matrix $[T_i^*T_j]$ 为正，因此这是 positive semidefinite form。完整 null kernel 是
$$
\boxed{\mathcal N_0=
\left\{\sum_iT_i\otimes\eta_i:
\sum_{ij}\langle\eta_i,(T_i^*T_j)\eta_j\rangle=0\right\},\qquad
H_{\mathrm{sew}}=\overline{\mathcal V_0/\mathcal N_0}.}
$$
Balancing $(Ta)\otimes\eta-T\otimes a\eta$ 在 $\mathcal N_0$ 中；但 kernel 的定义是整个 Gram radical，不能只列出 balancing vectors 后忽略 Hilbert null completion。这就是指定的 Connes relative tensor product，未使用 infinite-dimensional Haar projector。

**Onto、完整 kernel 和 corner-local algebra 的证明。** Vacuum standard-form theorem 将 $H_2$ 识别为 $L^2(M)$，同时把它的 outer arc algebra 识别为 right $M$（经固定 boundary reflection）。在此 presentation，sewing map 的 dense formula 是
$$
F_0\left(\sum_iT_i\otimes\eta_i\right)=\sum_iT_i\eta_i\in H_1.
$$
其 norm squared 恰为上面的 Gram form，故 $\ker F_0=\mathcal N_0$。$H_1$ 的 right $M$-module 也是 standard：在标准坐标中 $\mathcal X=M$，$T=1$ 已使 $F_0$ onto。因此 $F_0$ 延成 unitary，并以 glued-circle diffeomorphism 把输出识别为独立的 $H_D$：
$$
\boxed{\mathscr U:H_{0,k}(\partial D_1)
\boxtimes_{\mathcal A_k(\gamma)}
H_{0,k}(\partial D_2)\xrightarrow{\ \simeq\ }H_{0,k}(\partial D).}
$$
这正是 [Bartels–Douglas–Henriques, Corollary 1.34](https://arxiv.org/pdf/1302.2604) 的 disk specialization；standard form、net 的 strong additivity、Haag duality 和 diffeomorphism covariance 是明确使用的定理输入。$SU(2)_k$ 满足这些输入，由该文 §4.c/Theorem 4.18 保证。本节展示了 kernel 和 dense sewing map，没有仅以 Hilbert spaces 抽象同维数作比较。

设 $J$ 是 glued outer circle 上的 interval。源内先取来自 $J\cap O_1$、$J\cap O_2$ 内部 subintervals 的实际 regional algebras，并在 $H_{\mathrm{sew}}$ 上取 von Neumann join，记为 $\mathcal B_{\mathrm{sew}}(J)$。在不跨角点的 subinterval 上，$F_0$ 直接 intertwine regional action。若 $J$ 穿过 $P$ 或 $Q$，strong additivity 说删去那个点后的两个 interval algebras 仍生成 $\mathcal A_k(J)$；有限次使用同一性质处理两个端点。因此
$$
\boxed{\mathscr U\,\mathcal B_{\mathrm{sew}}(J)\mathscr U^*
=\mathcal A_k(J)\quad\text{对所有 }J.}
$$
这是 faithful normal $*$-isomorphism，kernel 为零，且 onto 完整的指定 local algebra。没有只证明远离 corners 的子网。单位同构依赖声明的 collar/coordinate choices；改变选择给 unitary equivalent sector，不声称由两区域真空向量的普通 tensor product 自动选出一个 canonical sewn vacuum。

### 9.1 Cut release 与 smooth current 的恢复

在 relative product 中，任意 $u\in U(M)$ 的 opposite cut actions 成对消去。可用 bounded intertwiners 明确检查：设 $V_1,V_2$ 对同一 $\vartheta\in\operatorname{Aut}(M)$ semilinear，$U_\vartheta$ 是 $L^2(M)$ 的 standard implementer，则
$$
T\otimes\eta\longmapsto
(V_1TU_\vartheta^{-1})\otimes V_2\eta
$$
保持 Gram form。对于纯 cut transformation，$V_1=R(u^{-1})$、$V_2=L(u)$、$U_\vartheta=L(u)R(u^{-1})$；上式成为 $(Tu^{-1})\otimes u\eta=T\otimes\eta$。§8.2 的 $H^1$ approximation 把这个结论延至全部实际 $\mathcal K_\gamma$；不是只释放 interior-supported jets。

Sewn smooth currents 定义为 sewn local one-parameter groups 的 Stone generators。跨 corner 的 groups 由 BDH Proposition 1.28 的 fused-interval action 在源上构造；不是先用 $\mathscr U$ 把 global operators 反向定义为 source。上述 net isomorphism intertwine 这些 groups，故 intertwine self-adjoint generators及其 spectral domains。取 sewn reference rotation 的 smooth-vector domain，得到 $\mathscr U^{-1}\mathcal D_\infty$ 上的完整 smooth-current algebra，level 为 $k$；其 finite-energy vacuum subspace 是 §7 的 $L_k$。这说明 vacuum null relations 和 cut release 在所选完成中相容。它没有把 §8.2 反例中的 raw regional corner-current products 变成有定义的 products。

多次 disk/interval sewing 使用 Connes relative tensor product 的 associator。在 bounded-intertwiner core 上它对应 composition 的重新括号化，Gram forms相同，故延成 unitary；net actions 仍逐 interval intertwine。固定这些 identifications 后 satisfying pentagon，不是任意 von Neumann algebra fiber products 都自动 associative。更一般 surface 的 projective factorization 可用 [BDH II, Theorem 2.29](https://arxiv.org/pdf/1409.8672)，这里不据此宣称已计算全部 charged Wilson intertwiners。

## 10. Quantum 验收的准确结论

第 6 节是 universal current **algebra** quotient；第 7 节是指定 outer polarization 的 cyclic **module** kernel；第 9 节是两个 independently integrable regional representations 的 Hilbert/局部 von Neumann **sewing**。三个 kernel 分别为 cut two-sided ideal、vacuum left ideal、relative Gram radical；不可互相替换。第 9 节在已经 quotient 全部 Hilbert null vectors 后的 local algebra map 则是 faithful 的。

在正整数 level、source-free disk、上述 vacuum-net prescription 下，open-chord 的 integrable quantum sewing 已有解析证明，实际 corner gauge data 也已纳入。证明引用了明确的 affine representation 与 conformal-net 定理，并独立检查模型适用条件、domain、cut cancellation 和所有 crossing-corner intervals。这不等同于从 continuum CS functional integral 推导该量子化 prescription。

**Verified:** §§1–6 的 classical/current/PBW results；§7 的完整 vacuum-module preimage与非零 operator 反例；§8 的 smooth domain、$H^1$ corner inclusion与 raw-domain 反例；§9 的 relative null kernel、onto unitary与全 local-net comparison。可计算辅助检查和 source 页码见 [验算记录](<../numerics/CS and YM five work packages verification.md>)。

**Assumptions:** smooth trivial-bundle source-free SU(2) disk、物理 chiral boundary 与 actual compatible histories；quantum vacuum 部分固定 $\hbar=1$、正整数 $k$、affine normalization、boundary collar/coordinate choices、integrable vacuum net 和 Connes completion。

**Not verified:** arbitrary non-vacuum Wilson/vertex intertwiner networks及其完整 fusion coefficients、一般 continuum CS quantize-before-reduction、任意 prescribed-history quantum Hamiltonian 的 domain theorem、其他 operator completions。Raw corner currents 全部保持 smooth-energy domain 的命题已被 §8.2 反驳，不能列为等待补证的 theorem。
