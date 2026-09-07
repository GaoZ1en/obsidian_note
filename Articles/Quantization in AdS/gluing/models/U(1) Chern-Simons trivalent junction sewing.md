# U(1) Chern–Simons 三价 junction sewing

工作包 A。沿用 [disk/open-chord 模型](<U(1) Chern-Simons disk and open-chord sewing.md>) 的 action、$k>0$、$\Omega=\delta\Theta$、$\iota_{X_F}\Omega=-dF$ 和 source-free smooth disk。这里的三条 rays 在 disk 内部交于同一点，区别于两条不相交 chords。

**结论。** 实际 joint trace 足以恢复原 disk；完整 kernel 包含 junction 的共同 gauge value 及两分量一阶 gauge jet。只逐条 quotient 掉在其他 seams 上为零的 gauge functions，会漏掉三个实 gauge directions。保留这项 residual reduction 后，所有次序给同一个 classical polynomial、quantum polynomial 和 algebraic Weyl quotient。

## 1. 实际三射线 trace image

取 $O=0$，$e_1=(1,0)$、$e_2=(-1/2,\sqrt3/2)$、$e_3=-e_1-e_2$，$\gamma_j=\{r e_j:0\leq r\leq R_j\}$，外端为 $P_j$。三个 sectors $D_j$ 各有一段 outer arc 和两条 seams。所有 smoothness 都指实际 ambient smooth function 的 restrictions，不能用彼此无关的三份 sector jets 代替。

三条 scalar traces 的像正好为
$$
B_Y=\left\{(f_1,f_2,f_3)\in\prod_j C^\infty([0,R_j]):
f_1(0)=f_2(0)=f_3(0),\quad\sum_j f_j'(0)=0\right\}.
$$
赋予 trace quotient topology；下述连续线性 extension 说明它也就是所列 closed subspace 的 Fréchet topology。这里没有额外的二阶及更高阶 trace 等式。

**必要性。** $f_j'(0)=df_O(e_j)$ 且 $\sum e_j=0$。每个 sector 单独只要求相交两条 traces 的值相同，所以 slopes $(1,0,0)$ 在三个 sectors 中逐对合法，却不在 $B_Y$ 中。

**充分性和连续 section。** 用 $e_1,e_2$ 作线性坐标，第三条 ray 为 $(x,y)=(-r,-r)$。先对 $f_1,f_2$ 作固定的连续 smooth half-line extension，记为 $\widetilde f_1,\widetilde f_2$，共同值为 $c$。令
$$
h(r)=f_3(r)-\widetilde f_1(-r)-\widetilde f_2(-r)+c.
$$
条件恰给 $h(0)=h'(0)=0$。Taylor 积分式
$$
\frac{h(r)}{r^2}=\int_0^1(1-t)h''(tr)\,dt
$$
给连续 smooth division；对它再作固定 half-line extension $H$。则
$$
F(x,y)=\widetilde f_1(x)+\widetilde f_2(y)-c
+xy\,H\!\left(-\frac{x+y}{2}\right)
$$
在三条 rays 上分别等于 $f_j$。离开 $O$ 后，各 rays 可用互不相交 tubular neighborhoods 延拓，再由固定 partition of unity 拼接。$P_j$ 与 outer circle 横截相交，使用两坐标轴的 extension 即可。因此对 smooth outer trace $f$，唯一新增的 endpoint 条件是 $f_j(R_j)=f(P_j)$。Half-line extension 使用标准 Seeley extension；这里没有使用不存在的任意 infinite-jet 连续 Borel section。

这一构造也直接证明高阶 jets 无额外约束：任意满足上述零、一阶条件的三份 smooth functions 均被实际延拓。有限次数的 homogeneous-polynomial rank check 只核验这个结论的代数例子。

## 2. Regional action、history 与 gauge

每个 sector 从自己的 flat connection、whole-boundary proper gauge quotient 得
$$
V_i=\operatorname{Tr}_{\partial D_i}C^\infty(D_i,\mathbb R)/\mathbb R,
\qquad
\Omega_i(u,w)=-\frac{k}{2\pi}\oint_{\partial D_i}u\,dw.
$$
Regional canonical action 是
$$
S_i=\frac{k}{4\pi}\int dt\left[-\int_{D_i}a_i\wedge\dot a_i
+2\int_{D_i}A_{t,i}da_i
-2\sum_{\gamma\subset\partial D_i}\int_\gamma q_\gamma a_i
-\int_{O_i}v(a_i)_s^2ds\right],
$$
其中每条 seam 使用该区域的 boundary orientation。其响应为
$$
\Lambda_i=-\frac{k}{2\pi}\sum_{\gamma\subset\partial D_i}
\int_{I\times\gamma}a_i\,\delta q_\gamma.
$$
共享 $q_j$ 的 trace domain 是实际 $A_t$ trace image；在 $O$ 它必须属于 $B_Y$，在 $P_j$ 满足 $q_j(P_j)=v(a_i)_s(P_j)$，时间依赖数据保留全部时间 compatibility。内支撑 tests 可在每条 open seam 独立变化，故释放给 tangential $a$ matching。联合 jet 条件是允许域，并非一个点支撑 Euler equation。时间初末面仍保留 $\delta S_{\rm on}=\Theta_f-\Theta_i+\Lambda$。

最终 released gauge group 是实际 global boundary-trivial maps 在 $Y=\bigcup_j\gamma_j$ 的像。Disk 上以完整 outer circle 上 lift 为零固定实 lift，得到
$$
K_Y=\{\kappa\in B_Y:\kappa_j(R_j)=0\},
\qquad \mathcal G_Y^{\rm adm}=\exp(iK_Y).
$$
指数化在这些 traces 上是单射：两个 lifts 的差在连通的 $Y$ 上是同一个 $2\pi n$，外端条件迫使 $n=0$。反向 extension 可保持 outer trace 为零，所以每个所列元素确实来自 global proper gauge。仅有三个 group-valued paths 在 $O$ 相等不够；把每条 path 从 $P_j$ 的零 lift 提升后，它们在 $O$ 必须具有同一个实值及联合一阶 jet。

$\kappa(O)$ 不须为零。$O$ 是 interior junction，不能把 physical-boundary based condition 搬到这里。History covariance 同时改变 $q_j\mapsto q_j+\dot\kappa_j$；这是 solution/history relations 之间的作用。

## 3. Cauchy matching、完整 kernel 与重构

在独立的 $\bigoplus_iV_i$ 中，定义 $C_Y$：seam 上的 $d\phi_i$ matching；调整各自无物理意义的常数后，三条 seam traces 相同；共同三射线 trace 属于 $B_Y$；三段 outer traces 在每个 $P_j$ 按同一圆周坐标匹配全部 jets。

各常数可同时调整：每条 seam 的常数差在 $O$ 等于相邻 sector 的 potential 值之差，沿三个 sectors 的和自动为零。这里没有遗漏一个独立 constant cocycle。

令 $r:C_Y\to V_D=C^\infty(S^1)/\mathbb R$ 拼合 outer trace。给任意 $f$，固定连续 disk extension 并取它在 $Y$ 上的迹，得到连续线性 section。也可按第 1 节选择合法 seam interpolation。若 $rf=0$，使所有 outer traces 为零后，剩余数据正好是 $K_Y$。因此
$$
0\longrightarrow K_Y\longrightarrow C_Y\xrightarrow{r}V_D\longrightarrow0,
\qquad
\left.\sum_i\Omega_i\right|_{C_Y}=r^*\Omega_D,
\qquad
\ker\left(\left.\sum_i\Omega_i\right|_{C_Y}\right)=K_Y.
$$
最后一式使用 $r$ 满射和 $\Omega_D$ 的弱非退化性。第 1 节延拓同时构造 global smooth $\phi$；其在每个 sector 与原代表之差在该区域完整 boundary 为零，故是 regional proper gauge。反向同 outer trace 的 global representatives 由 global proper gauge 联系。这证明的是实际 continuum reconstruction。

## 4. Current algebra 的 exact quotient

对标签 $u\in C_Y$ 取 $Q_C[u]=\sum_iQ_i[u_i]$，先在独立 regional polynomial algebras 中生成 admissible subalgebra。各完整 regional boundary 的 cocycle 是反对称的；shared seam 的两份积分逐点相消，包括 $O$ 的 incidence terms。因此
$$
c_C(u,w)=c_D(ru,rw),\qquad c_C(K_Y,C_Y)=0.
$$
Current labels 本身满足全部 joint conditions，故 Hamiltonian fields tangent to $C_Y$。只要求与 gauge constraints 对易，不能代替这一步。

取任意上述线性 section，$C_Y=K_Y\oplus s(V_D)$。Symmetric algebra 和 Heisenberg PBW 分别给
$$
\mathcal A_C^{\rm cl}/\langle Q_C[K_Y]\rangle\cong\mathcal A_D^{\rm cl},
\qquad
\mathcal A_{C,\hbar}/\langle\widehat Q_C[K_Y]\rangle
\cong\mathcal A_{D,\hbar}.
$$
这里左边是在完整 regional algebra 中由所列 currents 生成的实际子代数；PBW 保证标签 inclusion 给代数 embedding。Kernel 是显示的全部 central ideal，image 是独立 disk smooth-label polynomial current algebra。对 algebraic Weyl source，完整 kernel 是 $\langle W(\kappa)-1:\kappa\in K_Y\rangle$。不需要无限维 Haar averaging 或有限 Fourier cutoff。

## 5. 为什么逐条 release 会漏掉 junction gauge

设 $K_j^0\subset K_Y$ 在另外两条 seams 上恒零。联合条件迫使
$$
\kappa_j(0)=\kappa_j'(0)=\kappa_j(R_j)=0.
$$
反向这些条件已足够。因此
$$
K_Y\Big/\bigoplus_jK_j^0\cong
\{(c,b_1,b_2,b_3):b_1+b_2+b_3=0\}\cong\mathbb R^3.
$$
映射取 $\kappa(O)$ 和三条一阶 slopes；surjectivity 可用靠近 $O$ 的共同 affine function 乘固定 cutoff 直接实现。这个 residual space 是一份 gauge jet quotient，不是三维 symplectic phase space，也不是 corner oscillator。

只施加三份 $K_j^0$ constraints 的 quotient 仍有这三个 central cut directions，故不等于 disk current algebra。正确的 reduction by stages 可先 quotient 任意次序的 $K_j^0$，然后 quotient 所列 residual group；所有 ideals 的总和都是 $\langle Q[K_Y]\rangle$。也可每次使用融合区域的实际 trace group，它会在相应阶段吸收这些 residual directions。保留共同 $C_Y$ 和完整 group 数据时，quotient universal property 与逐 seam 积分抵消证明所有 bracketings 一致。

## 6. Dynamics 与范围

在 compatible solution/history relation 上，三份 seam Hamiltonians 相消，outer Hamiltonian 和演化是 $H_D=k v\oint(\partial_s\phi)^2/(4\pi)$、$\phi(t,s)=\phi_0(s+vt)\bmod\mathbb R$。每个 global smooth evolution 可作 smooth time-dependent disk extension，所以存在合法 regional histories；不能由此断言任意三个 prescribed $q_j$ 都可解。

**Verified:** 上述实际 extension、kernel、current/PBW quotient 与包含 residual junction gauge 的 reduction by stages；可计算部分见 [五工作包验算](<../numerics/CS and YM five work packages verification.md>)。

**Assumptions:** 三条给定的横截直 rays、无 puncture/point action、原有 smooth disk 与 joint solution/history domain、regular polynomial/algebraic Weyl current class。

**Not verified:** 任意高价或相切 junction 的 trace 分类、任意 independent histories、未声明的 operator completion 或 sharp vertex sector。
