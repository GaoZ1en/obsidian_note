# History-Indexed Observable Algebra Gluing

研究起点：2026-09-03。本文独立于 `Weyl algebra factorization.md`；先定义对象、实施 kill tests，再给出有明确输入的 continuum theorem。

**结论先行。** 单个 prescribed-history 区域可以量子化为 affine CCR algebra；固定 history 的量子代数并不包含把该 history 释放为共同动力学变量所需的全部数据。本文完成两区间 massive scalar 的 **action/response-enriched continuum CCR sewing benchmark**，包括独立定义的传播子、生成元、assembly 同构与 locality。它不是已量子化的 fixed-history algebras 的内部 relative tensor-product theorem。后一个问题保留为 open，不能通过改名把前一个定理冒充它。

本文用 **proved** 表示在逐条声明的模型和范畴内有下文证明；**conditional** 表示蕴含关系成立而应用所需的解析或结构前提未完成；**open** 表示尚无构造或证明；**false** 表示给出反例。**Checked symbolically** 只指末节列出的恒等式，不能代替这些等级。

## 1. Action、方向、定义域与 CCR 符号

先取实 scalar，$m>0$，无 gauge，无真实 interface field/action，signature $(-,+)$。基准为 $x\in[-L,L]$，$L>0$，物理外端 Dirichlet；分区 $\Sigma_1=[-L,0]$、$\Sigma_2=[0,L]$。采用原稿坐标 $y_1=x+L$、$y_2=L-x$，两者都朝人工切口增加。有限 slab 为 $I=[t_-,t_+]$；传播子使用全实时间，slab statements 由其限制得到。

$$
\begin{aligned}
S_i[\phi_i]&=\frac12\int_I dt\int_0^Ldy_i
\left(\dot\phi_i^2-(\phi_i')^2-m^2\phi_i^2\right),\\
P\phi_i&=(-\partial_t^2+\partial_{y_i}^2-m^2)\phi_i=0,\\
q_i&=\phi_i|_{y_i=L},\qquad \Pi_i^{\rm out}=-\phi_i'(L),\\
\delta S_i&=\int P\phi_i\,\delta\phi_i
+\left[\int_0^L\dot\phi_i\delta\phi_i\,dy_i\right]_{t_-}^{t_+}
+\int_I\Pi_i^{\rm out}\delta q_i\,dt.
\end{aligned}
$$

先认同 $q_2=J_{12}q_1$，再释放共同变分，才得 $\Pi_1+J_{12}^*\Pi_2=0$。本 benchmark 的 scalar identification 是 $J_{12}=\mathrm{id}$；故 $\phi_1'(L)+\phi_2'(L)=0$。以下省略 response 的 out 上标，但不改变方向。

必须分开 **CPS tangent pairing** 和 **observable Poisson pairing**。保留原稿

$$
\Omega_i=\int\delta\dot\phi_i\wedge\delta\phi_i,\qquad
\Omega_i(z,w)=\int(v_z u_w-v_wu_z),\qquad \{Q,P_Q\}=1.
$$

若 $F_z(\psi)=\Omega_i(z,\psi)$，则 $\{F_z,F_w\}=-\Omega_i(z,w)$。本文用 $\sigma_{\rm obs}$ 表示 observable labels 上的 Poisson form，Weyl 关系为

$$
U(F)U(G)=e^{-i\hbar\sigma_{\rm obs}(F,G)/2}U(F+G),\qquad
[\widehat F,\widehat G]=i\hbar\sigma_{\rm obs}(F,G)\mathbf1.
$$

这里 $U(F)$ 的形式含义是 $\exp(i\widehat F)$。不能在没有 label-to-observable map 时同时把 $\sigma_{\rm obs}$ 写成 $\Omega_i$。`Weyl algebra factorization.md` 采用 $\mathfrak W(\mathcal X,\Omega)$ 的抽象 tangent-label 约定；其保辛 assembly theorem 仍成立。与本文物理 smeared-field CCR 比较时，应在两侧同时采用 observable dual、即 $-\Omega$；若保持原 phase，则对应 opposite algebra。绝不以一个没有说明的负号认同物理场或时间演化。

具体校准：记 $K_{i,D}=-\partial_{y_i}^2+m^2$，$D(K_{i,D})=H^2(0,L)\cap H_0^1(0,L)$。令 $G_{i,D}^{\rm ret/adv}$ 是 $\partial_t^2+K_{i,D}$ 的 retarded/advanced inverse。则物理 Peierls 核取

$$
E_{i,D}=G_{i,D}^{\rm adv}-G_{i,D}^{\rm ret},\qquad
\{\phi_i(f),\phi_i(g)\}=\int f E_{i,D}g.
$$

这也等于 $P$ 的 retarded-minus-advanced inverse。单振子核是 $-\sin\omega(t-s)/\omega$，给出 $[Q(t),P_Q(t)]=i\hbar$；这个符号已经独立核查。

## 2. 单个 prescribed-history 子区域究竟是什么

### 2.1 解空间是 torsor，history 与 initial data 分开

在声明的正则性类别内定义

$$
\mathcal P_i[q]=\{\phi_i:P\phi_i=0,\ \phi_i(0)=0,\ \phi_i(L)=q\}.
$$

这里只有满足 $\mathfrak D_i$ 的初始数据被允许。若集合非空，则对任意 $s_i[q]\in\mathcal P_i[q]$，

$$
\mathcal P_i[q]=s_i[q]+\mathcal S_{i,D},\qquad
\mathcal S_{i,D}:=\mathcal P_i[0].
$$

这是 **proved**：两个解之差恰好满足 homogeneous equation 和两端 homogeneous Dirichlet，反向加法亦成立。它没有指定 preferred origin。$q$ 固定只使允许变分满足 $\delta q=0$；不是把所有 initial data 固定，否则只剩一个解而没有 bulk quantum phase space。

用于 transport/response 的第一张明确 chart 如下：取 $q\in C^\infty(\mathbb R)$ 且在 $t_-$ 的某个过去邻域恒为零；初始 fluctuations 取

$$
\mathcal X_{i,D}^{\infty}=\bigcap_{n\ge0}D(K_{i,D}^n)\ \oplus\ \bigcap_{n\ge0}D(K_{i,D}^n).
$$

零初始 boundary-driven particular solution $s_i[q]$ 唯一存在。用 $\ell_i(y)=y/L$ 写 $s_i[q]=\ell_iq+w_i$，则

$$
w_i(t)=-\int_{t_-}^{t}K_{i,D}^{-1/2}
\sin((t-s)K_{i,D}^{1/2})\,\ell_i(\ddot q+m^2q)(s)\,ds.
$$

这是完整 functional calculus，不是 mode cutoff。光滑且初始附近为零的 forcing 经时间分部积分、$K_{i,D}^{-1}$ 的椭圆正则性逐阶给 smooth compatible solution；零 forcing 与零数据的能量唯一性给 uniqueness。这里 $w_i$ 满足零边界但不必属于所有 $D(K_{i,D}^n)$，因为高阶 boundary jets 受 forcing 驱动。

若允许一般 smooth $q$，则 $\mathfrak D_i$ 必须逐阶施加

$$
\gamma_i u_i=q(t_-),\quad \gamma_i v_i=\dot q(t_-),\quad
\gamma_i(\partial_{y_i}^2-m^2)^n u_i=q^{(2n)}(t_-),\quad
\gamma_i(\partial_{y_i}^2-m^2)^n v_i=q^{(2n+1)}(t_-),
$$

并在物理外端施加相应零 jets。**不能把这张 smooth transport chart 当成所有 global energy solutions 的 history space。** 全能量 benchmark 将在第 6 节直接定义更大的 regional weak relation；它不假设任意 continuous $q$ 都可作为 well-posed boundary control。

### 2.2 Affine polynomial 与 Weyl algebra

选取 $\mathcal P_i[q]$ 上的实 affine functionals $\mathcal O_i^{\rm aff}[q]$，要求其 linear part 是 Hamiltonian-admissible：存在 $z\in\mathcal S_{i,D}$ 使 $dF=\Omega_i(z,\cdot)$。包括常数及 smooth compact bulk smearings $F_f(\phi)=\int f\phi$。**不采用整个连续 affine dual**：能量空间上的 $\Omega_i$ 是 weak symplectic，不保证每个连续 functional 有 Hamiltonian vector。

定义 $\sigma_i(F,G)=\{F,G\}$，常数属于其 radical。多项式量子代数 $\mathfrak A_i^{\rm aff,pol}[q]$ 是由 $\widehat F$ 生成的 unital complex $*$-algebra，施加实线性、$\widehat F^*=\widehat F$、$\widehat c=c\mathbf1$ 及上一节 CCR。等价地，在 affine polynomials 上用常 Poisson bivector 的 Moyal product；每对多项式的展开有限，故此处没有收敛或 renormalization 问题。

Affine Weyl algebra $\mathfrak A_i^{\rm aff,W}[q]$ 用上一节的 $U(F)$ 关系、$U(F)^*=U(-F)$、$U(c)=e^{ic}\mathbf1$ 定义其 universal $C^*$ completion。选择 origin 后是通常 Weyl algebra；因此存在且非零。两个定义的联系在 regular representations 中由 exponentiation 实现，不声称所有 unbounded polynomial fields 都属于 Weyl $C^*$-algebra。

选择 $s_i[q]$ 后，bulk observable 为

$$
\widehat\phi_{i,q}(f)=\widehat\psi_i(f)+\left(\int f s_i[q]\right)\mathbf1,
\qquad [\widehat\phi_{i,q}(f),\widehat\phi_{i,q}(g)]
=i\hbar\left(\int f E_{i,D}g\right)\mathbf1.
$$

换 origin $s_i[q]\mapsto s_i[q]+r_i$，$r_i\in\mathcal S_{i,D}$，只是对 linear generators 作相反的 c-number translation；保留 affine functional 本身便得到 origin-independent algebra。$q$ 是 base parameter，$\widehat q$ 尚未定义。

对 bulk test functions 应按它们在所有 allowed solutions 上的 affine functional 相等来取商，不能未经证明写一个只用 interior $P C_c^\infty$ 的商并宣称已编码 timelike boundary condition。尤其是 annihilate homogeneous solutions 的 smearing 可以在 affine space 上留下非零常数。

**Bare algebra 忘掉的内容：** designated field map $f\mapsto\widehat\phi_{i,q}(f)$、origin changes、history label、initial compatibility、boundary response、物理 localization、所选 causal dynamics。不同 $q$ 的抽象代数同构不恢复这些数据。同理，抽象 equal-time CCR 不能识别质量；质量进入 dynamics/field propagation。

## 3. 先实施 kill tests

### K1. Dirichlet regional algebra 不是 global restricted field algebra — false candidate

若要求一个 unital map 满足 $\iota_i(\widehat\phi_{i,q}(f))=\widehat\phi_M(\widetilde f)$，其中 $\widetilde f$ 是零延拓，则必须有

$$
\int fE_{i,D}g=\int\widetilde f E_M\widetilde g.
$$

人工 Dirichlet 墙产生反射；connected propagator 允许穿过切口。因此一般不成立，第 7 节给出非零 resolvent correction。只有在因果传播尚不触及人工墙的指定小 diamond 中，相关局部 field algebras 才有这种直接认同。不能把 timelike region 的全部时间历史当成一个 causally convex global subspacetime。

更强地：两个 fixed-history algebras 的 ordinary tensor product 使所有异侧 generators commute。任何保持它们为同名 bulk fields 的代数 homomorphism 都保留这个零 commutator，但 glued timelike-separated cross-interface fields 的 commutator 可以非零。故这样的 homomorphism 不存在。该反例针对 field-preserving fusion，不排除任意抽象同构或允许改变 observable identification 的更大构造。

### K2. 把 histories 作为 central 参数再逐纤维取商仍不够 — false candidate

在 pointwise section algebra 中，$q\mapsto q(h)\mathbf1$ central。普通 quotient 或 balanced product 不会使其变为有非零 commutator 的场。若关系迫使一个 central 元素与某 field 等同，而后者与另一个保留 generator 的 commutator 是非零标量，则理想含 $\mathbf1$，所得代数为零。需要新的 cross-history operation/CCR 或明确的重构，而不是“提升参数为算子”的一句话。

### K3. 只做 trace-label fixed points 不识别 interface dynamics — proved counterexample

加入真实 $S_\Gamma[q]=-\lambda\int q^2dt/2$。continuity 不变，但共同变分给

$$
\Pi_1+\Pi_2-\lambda q=0.
$$

equal-time matched-label Weyl algebra 不变，closed form 增加 $\lambda|q|^2$，operator domain 与传播子改变。因此 fixed points 只能是 kinematic selector；完整对象必须另外携带 action-derived dynamics。本例可取 $\lambda\ge0$ 以保持正性。

### K4. Retarded response 不是没有 endpoint 项的 action Hessian — false candidate

$$
\delta S_{i,\rm on}=F_i^{+*}\Theta_i^+-\operatorname{pr}_-^*\Theta_i^-+\langle\mathcal R_i,\delta q_i\rangle_I.
$$

固定初始数据并改变 history，通常改变末端数据；即使 $\delta q$ 在时间端点附近为零，$\delta\phi_i(t_+)$ 仍可非零。故不能删除 $\Theta_i^+$ 并令 $\delta_qS_{i,\rm on}=\mathcal R_i$。只有固定/补偿 endpoint contributions 的明确 boundary-value prescription 才允许该简化。特别地，retarded DtN 一般不对称，其 antisymmetric part 等于产生的末端 CPS area。

### K5. 单一 $q=0$ 或 retarded-zero-past chart 不保证 onto — false candidate

global solutions 可有非零切口初值和历史；只保留 $q=0$ 丢失非零-interface sector，只保留某个零过去 history chart 也不是整个 global solution space。第 6 节使用全能量 regional relation 解决此问题；不能靠 smooth labels 的 energy density 声称 universal Weyl norm surjectivity。

### K6. Weyl norm 的障碍须准确说 — proved distinction

非零 label motion 一般满足 $\|W(z)-W(w)\|=2$。但 **pure phase transport** $W(z)\mapsto e^{it\ell(z)}W(z)$ 是 point-norm continuous，并且每个 Weyl polynomial 可微。因此“所有 history differentiation 都不可能在 Weyl norm 中进行”是错误的。下节的 affine translation 正是 phase case。其 generator 通常 unbounded，只能在明确的 dense domain 上求导；不能保证全代数 norm differentiability，也不能把换 label 的 dynamics 同等处理。

### K7. 第二个 sewing equation 不是 $\nabla_{1,h}+\nabla_{2,Jh}=0$ — open identification

平移 transport 可以通过所选 reference solutions 平凡化；此时 parallel sections 的 connection 为零，而 response 仍有物理内容。没有 action Ward identity、endpoint prescription 及指定 module structure，connection 平衡不等价于 oriented flux matching。第 5 节给出可以证明的 response derivation，保留这个区别。

## 4. 跨 history arrows、transport 与 cocycle

### 4.1 所有 affine translation arrows

在固定正则性类别内，取对象 $q$；从 $q$ 到 $q'$ 的 arrow 是一个 regional solution $r$，满足 $Pr=0$、物理外端零值、$\gamma_i r=q'-q$。它作用为 $\tau_r:\phi\mapsto\phi+r$。合成为加法，identity 为零，inverse 为 $-r$。这是一个实际 groupoid，而不是只有名称的 history bundle。

每个非空 arrow set 是 $\mathcal S_{i,D}$ torsor；故 history pair 本身不唯一决定 arrow。因为 tangent map 为 identity，$\tau_r$ 保持 fixed-fiber CPS。对应 algebra map 的方向必须写清：

$$
T_r:\mathfrak A_i[q]\longrightarrow\mathfrak A_i[q'],\qquad
T_r(\widehat F)=\widehat{F\circ\tau_{-r}},\qquad
T_r\widehat\phi_{i,q}(f)=\widehat\phi_{i,q'}(f)-\left(\int fr\right)\mathbf1.
$$

这是 **proved** $*$-isomorphism，且 $T_{r_2}T_{r_1}=T_{r_1+r_2}$。证明只需检查 affine linearity、常数及 Poisson form，逆为 $T_{-r}$；Weyl universal property 给相同结论。

### 4.2 Retarded choice 只在 compatibility directions 上存在

对 $h$ 在 $t_-$ 附近为零的 smooth history，令 $r_i^{\rm ret}[h]$ 为第 2 节零初始 boundary solution。线性与唯一性给 $r^{\rm ret}[h+k]=r^{\rm ret}[h]+r^{\rm ret}[k]$，故产生严格 cocycle。有限传播速度给

$$
\operatorname{supp}r_i^{\rm ret}[h]\subset J_i^+(\operatorname{supp}h),
$$

其中允许物理/Dirichlet 墙反射，但传播速度不超过 1。若 bulk test $f$ 的支撑与这个 causal future 不交，transport 不改变对应 field generator。此为准确的 causal support statement；不是说 boundary driving 的 effect 永远局限在界面。

固定起始 Cauchy surface 的 retarded prescription 不具有无条件 time-translation invariance。设 $V_i[q](t,s)$ 为 driven affine Cauchy evolution，$C_r(t)$ 为时刻 $t$ 加上 $(r,\dot r)$ 的 affine translation，则

$$
V_i[q+h](t,s)C_r(s)=C_r(t)V_i[q](t,s).
$$

由两边解同一 IBVP 和同一初值证明；逆 pullback 给 algebra covariance。只在同时平移 history 和 initial-surface prescription 时得到自然的时间平移协变。非平稳 $q$ 不给单个 fiber 的物理 stationary automorphism group。

### 4.3 Lift 改变与 projective implementation

若任取 $r(q',q)$，则

$$
c(q'',q',q)=r(q'',q')+r(q',q)-r(q'',q)\in\mathcal S_{i,D}.
$$

这是 arrow defect；只有 $c=0$ 才有所选 history-pair transport 的严格 cocycle。取全局 reference section $s[q]$ 并令 $r=s[q']-s[q]$ 可使它为零，但 reference section 的可用性/因果性是额外条件。两个 lifts 的差是 homogeneous translation。

可由 Weyl displacement 实现的 homogeneous translations 在代数 automorphism 层 compose 严格，implementing unitaries 可有 Weyl central phase。任意跨 history affine arrow 没有被宣称为某一给定 Hilbert representation 内的 unitary。energy-continuous transport、可微 section topology、representation implementability 各需独立说明。

## 5. Action response、量子 response 与 history derivative

### 5.1 可以定义的 smeared response observable

在 smooth chart，取 $h\in C_c^\infty((t_-,t_+))$，定义

$$
R_{i,h}(\phi_i)=\langle\mathcal R_i(\xi_i^-,q_i),h\rangle
=-\int h(t)\phi_i'(t,L)\,dt.
$$

这是 action 确定的 affine functional。它不是 $\widehat\Pi_i(t,L)$ 的点值。必须先证明它的 linear part 属于所选 Hamiltonian test class，才能令 $\widehat R_{i,h}$ 为 polynomial algebra generator。

对这个 smooth interval 模型可以证明。把 $h$ 延为全时间 compact support，分别取 zero-past、zero-future boundary solutions $r^{\rm ret}[h],r^{\rm adv}[h]$，设

$$
k_h=r^{\rm ret}[h]-r^{\rm adv}[h]\in\mathcal S_{i,D}.
$$

Green identity 给，对任意 homogeneous Dirichlet solution $\psi$，

$$
\frac{d}{dt}\Omega_i(r^{\rm ret}[h],\psi)
=[r'\psi-\psi'r]_0^L=-h\psi'(L),\qquad
R_{i,h}(\psi)=\Omega_i(k_h,\psi).
$$

积分时下端取在 driving 以前，上端取在以后；此时 advanced solution 在上端为零。于是 $R_{i,h}$ 确实 Hamiltonian-admissible，$X_{R_{i,h}}=-k_h$（使用第 1 节 Poisson convention）。因此 **proved** 的 quantum derivation 是

$$
\delta^{\rm resp}_{i,h}(A)=\frac{1}{i\hbar}[A,\widehat R_{i,h}],\qquad
\delta^{\rm resp}_{i,h}(\widehat F)=-dF(k_h)\mathbf1.
$$

这在 polynomial algebra 上良定义；其 Weyl 实现是相应 phase automorphism 的 generator，域至少含 Weyl polynomials。$\widehat R_{i,h}$ 本身不因这个公式而成为 bounded Weyl 元素。它所生成的是 retarded 与 advanced 之差的 homogeneous response，而不是单独 retarded 跨 fiber arrow。

在能量完成或高维里，$h\mapsto R_{i,h}$ 还需 hidden-regularity/transposition estimate 或证明上述 $k_h$ 属于目标 Hamiltonian class；本文没有把 smooth proof 自动升级为任意 rough $h$ 的 theorem。

### 5.2 Connection 是另一种操作

对 section $A(q)\in\mathfrak A_i[q]$ 定义

$$
\nabla_h^{\rm ret}A(q)=\left.\frac{d}{d\epsilon}\right|_0
T_{\epsilon r^{\rm ret}[h]}^{-1}A(q+\epsilon h).
$$

在具有可微 scalar coefficients 的 finite affine/Weyl polynomial sections 上该式有定义。对 physical field section，

$$
\nabla_h^{\rm ret}\widehat\phi_{i,q}(f)=\left(\int f r^{\rm ret}[h]\right)\mathbf1.
$$

retarded transport 的严格 cocycle 给这张 chart 上的平坦性。相比之下，$\delta^{\rm resp}$ 用 $-k_h$，不是 $r^{\rm ret}[h]$。因此从 action 到 inner response derivation 的桥已在 smooth test class 闭合，而“它就是 retarded connection”已被区分开。

相同 Green balance 还给

$$
\Omega_i^+(r^{\rm ret}[h],r^{\rm ret}[k])
=-\bigl(\langle K_i^{\rm ret}h,k\rangle-\langle K_i^{\rm ret}k,h\rangle\bigr),
\quad K_i^{\rm ret}h=-\partial_{n_i}r^{\rm ret}[h].
$$

这保留了 endpoint term，亦解释为何不能把 retarded response 对称化后当作 $\delta_q^2S_{\rm on}$。

## 6. 真正可用的 sewing 输入与完整 continuum benchmark

### 6.1 本文实际接受的 enriched object

除第 2–5 节的 algebra family、field maps、arrows 外，还保留 regional quadratic action、bulk test/source spaces、trace map、$\mathfrak D_i$、retarded/advanced boundary and bulk solution operators、$\mathcal R_i$ 与 endpoint CPS。记这整组输入为 $\mathbf A_i$。记号只为区分它与 bare $\mathfrak A_i[q]$。

本文的操作 $\operatorname{Sew}_{\rm CCR}(\mathbf A_1,\mathbf A_2;\mathsf S_e)$：先由这些 regional Green/response data 和 action-derived $\mathsf S_e$ 解出 **sewn causal kernel**，再以该核给出 bulk observable generators 的 CCR presentation。它无需 cutoff、Fock space 或 history measure；但它重新确定跨区域以及区域内部的 physical commutator，不是旧 fiber products 上的 ordinary quotient。若把 algebra-first 定义为只接收已经量子化的 fiber algebras 及代数态射，这一步仍需要下文 open 的额外结构。

### 6.2 Regional energy relation，不能遗漏的 history domain

令 $H_i=L^2(0,L)$、$V_i=\{u\in H^1(0,L):u(0)=0\}$，定义 $\widehat{\mathcal P}^{\rm en}_i(I)$ 为

$$
\phi_i\in C(I;V_i)\cap C^1(I;H_i),\qquad
\int_I[-(\dot\phi_i,\dot\eta_i)+\mathfrak a_i(\phi_i,\eta_i)]dt=0
\quad\forall\eta_i\in C_c^\infty(I;H_0^1(0,L)),
$$

其中 $\mathfrak a_i(u,w)=\int(u'w'+m^2uw)$。其 history 为 $q_i(t)=\gamma_i\phi_i(t)\in C(I)$。定义 $\mathcal B_i^{\rm en}$ 为此 **regional** solution class 的实际 trace range，$\mathfrak D_i^{\rm en}$ 为实际 initial-data/history pairs。这个定义不声称所有 $C(I)$ histories 均可自由输入，也没有用 global restrictions 定义 regional object；smooth 可控 charts 是它的子类。

完整 flux matching 采用 dual weak definition。对 $h\in C_c^\infty(I)$，任取 lift $\eta_i\in C_c^\infty(I;V_i)$ 使 $\gamma_i\eta_i=h$，令

$$
\langle\Pi_i,h\rangle=-\int_I[-(\dot\phi_i,\dot\eta_i)+\mathfrak a_i(\phi_i,\eta_i)]dt.
$$

lift 差属于 homogeneous test domain，故此定义与 lift 无关；smooth case 还原 $-\phi_i'(L)$。定义 sewn solution locus $\mathcal C^{\rm en}(I)$ 为两侧 regional solutions 满足 $q_1=q_2$ 和 $\Pi_1+\Pi_2=0$ 的集合。该条件对每个 $h$ 成立；不要求 $L^2$ momentum 有 boundary trace。

### 6.3 从 regional action 独立定义存在性与 evolution

先不使用 global operator，定义

$$
\begin{aligned}
H^{\rm dup}&=H_1\oplus H_2,\\
V^{\rm sew}&=\{(u_1,u_2)\in V_1\oplus V_2:u_1(L)=u_2(L)\},\\
\mathfrak a^{\rm sew}(u,w)&=\mathfrak a_1(u_1,w_1)+\mathfrak a_2(u_2,w_2).
\end{aligned}
$$

trace continuity 使 $V^{\rm sew}$ closed；内支撑 smooth functions 的直和在 $H^{\rm dup}$ 稠密，且包含于 $V^{\rm sew}$。$m>0$ 给 coercivity，故此为 positive closed densely defined form，定义唯一 $K_{\rm sew}>0$。这是 regional action restricted to common configurations 的 operator，不是从 $K_M$ conjugate 过来定义。

逐段 integration by parts 给完整 operator domain

$$
D(K_{\rm sew})=\{u_i\in H^2(0,L):u_i(0)=0,\ u_1(L)=u_2(L),\ u_1'(L)+u_2'(L)=0\}.
$$

证明：interior tests 先给 $u_i''\in L^2$；1D elliptic regularity 给 $H^2$；任意共同 endpoint test 给最后一条 flux equation。反向这些条件使 boundary term 消失。此处没有一般 Lipschitz-domain 的 $H^2$ 推断。

所有 $(u,v)\in V^{\rm sew}\oplus H^{\rm dup}$ 都给唯一能量解

$$
\phi(t)=\cos((t-s)\sqrt{K_{\rm sew}})u
+K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})v.
$$

它恰好属于 $\mathcal C^{\rm en}(I)$：用零 boundary tests 得 regional equation，用共同 lift 得 weak summed flux；反向把任意 matched test 分成零边界部分和 lift，就得到 form wave equation，因此唯一性适用。存在性和 uniqueness 未假设预先已有 global field。

### 6.4 Observable algebra 的独立 presentation

取实 source space $\mathscr T=L_c^1(\mathbb R;H^{\rm dup})$，可先在 smooth time sources 上计算再用 energy estimate 延拓。这个较大的 label category 是刻意声明的，目的是覆盖全部 energy solutions，不把 smooth spatial smearings 的 norm closure 当作全能量 Weyl algebra。

定义

$$
\begin{aligned}
G_{\rm sew}^{\rm ret}f(t)&=\int_{-\infty}^t
K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})f(s)\,ds,\\
G_{\rm sew}^{\rm adv}f(t)&=-\int_t^{\infty}
K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})f(s)\,ds,\\
E_{\rm sew}&=G_{\rm sew}^{\rm adv}-G_{\rm sew}^{\rm ret},\\
\mathcal E_{\rm sew}&=\mathscr T/\ker E_{\rm sew},\qquad
\sigma_{\rm sew}([f],[g])=\int_{\mathbb R}(f,E_{\rm sew}g)_{H^{\rm dup}}dt,\\
\mathfrak A_{\rm sew}^{\rm pol}&=\operatorname{CCR}_{\rm pol}(\mathcal E_{\rm sew},\sigma_{\rm sew}),\qquad
\mathfrak A_{\rm sew}^{W}=\mathfrak W(\mathcal E_{\rm sew},\sigma_{\rm sew}).
\end{aligned}
$$

antisymmetry 来自 $G^{\rm ret*}=G^{\rm adv}$，且 $\ker E$ 正是 pairing radical：若 $\int fEg=0$ 对所有 $g$，反自伴性使 $Ef$ 被全部 compact-time $H$ tests annihilate，故 $Ef=0$。商上 nondegenerate。

**完整 label onto proof。** 给任何 homogeneous energy solution $\phi$，取光滑 $\chi$ 从 0 变到 1，$\chi'$ compact support，令

$$
f=\chi''\phi+2\chi'\dot\phi\in\mathscr T.
$$

distributionally $(\partial_t^2+K_{\rm sew})(\chi\phi)=f$；retarded inverse 为 $\chi\phi$，advanced inverse 为 $(\chi-1)\phi$。所以 $E_{\rm sew}f=-\phi$。因此 $\mathcal E_{\rm sew}$ 与全部 energy solution space 双射，且

$$
\sigma_{\rm sew}([f],[g])=-\Omega_{\rm sew}(E_{\rm sew}f,E_{\rm sew}g).
$$

最后等式由 Green identity（或 sine/cosine functional calculus）得到，与第 1 节 dual sign 一致。选择另一 $\chi$ 只改 $\ker E$ 类。此 argument 也证明 time-slice property：transition 可放在任意非空时间带。

### 6.5 Assembly theorem — proved in this benchmark

独立目标为 $K_M=-\partial_x^2+m^2$，$D(K_M)=H^2(-L,L)\cap H_0^1(-L,L)$，相同 source/observable category。piecewise map

$$
\operatorname{Ass}(u_1,u_2)(x)=
\begin{cases}u_1(x+L),&x<0,\\u_2(L-x),&x>0\end{cases}
$$

在 $H$ 上 unitary，在 matched form domains 上保 form；逆是 restriction。1D $H^1$ patching 由相等 traces 消去 distributional jump；$H^2$ patching 再由 outward derivative sum 消去 derivative jump。因此

$$
\operatorname{Ass}K_{\rm sew}=K_M\operatorname{Ass},\qquad
\operatorname{Ass}E_{\rm sew}=E_M\operatorname{Ass}.
$$

**定理。** 在以上全部定义下，

$$
\operatorname{Ass}_*(\widehat\Phi_{\rm sew}([f]))
=\widehat\Phi_M([\operatorname{Ass}f]),\qquad
\operatorname{Ass}_*(W_{\rm sew}([f]))=W_M([\operatorname{Ass}f])
$$

分别给 polynomial 与 universal Weyl $*$-isomorphism。其逆将 global test/source restriction 到两侧。

**证明。** $E$ intertwining 使 source kernels 对应，所以 map well-defined；分区积分使 $\sigma$ preserved；逆 restriction 保持同一关系。因此两个 universal maps 在每个 generator 上互逆。无需通过某个指定 representation、simplicity 或 Fock unitary 来证明 injectivity。所有 $H$ sources 均可逐段限制，故 surjectivity 是 exact algebraic statement；不是 dense-range argument。$K$ intertwining 给 energy evolution 与 induced algebra dynamics covariance。这里的 dynamics 为 algebra automorphisms，不声称 universal Weyl point-norm continuous group。$\square$

### 6.6 Support/locality 的精确范围

对开放 $O\subset\mathbb R\times(-L,L)$，local subalgebra 由具有 compact essential support 于 $O$ 的 $f\in\mathscr T$ 生成；另可取 smooth compact spacetime tests 的 usual local core。其 regional presentation 使用 **在物理坐标中同一支撑集** 的 piecewise sources，故 assembly 在两方向保持这些 local subalgebras。它不把 $E f$ 的 solution support 与 $f$ 的 test support 混同。

有限传播速度由局部能量恒等式证明：在 shrinking backward light-cone sections 上积分 $e=(\dot\phi^2+|\phi'|^2+m^2\phi^2)/2$，外侧 null flux 非负；经过切口时两侧 flux 因 continuity 和 derivative matching 抵消；物理 Dirichlet wall 的 work 为零。零过去数据与 causal past 内零源遂给零解。强数据证明后由 energy estimate 延拓。因此 causally disjoint tests 满足 $\sigma=0$，对应 Weyl/polynomial observables commute。反射 causal curves 也不能比速度 1 的 direct path 更快。

“Locality preserving”仅指上述 test-localized net 与 causal commutator。没有额外声称 Haag duality、Type III、split property、局域 von Neumann completion、boundary point operators 或 state preservation。

## 7. 把 benchmark 写成 regional response sewing，而非只给 form theorem

### 7.1 Retarded response 的 Schur construction

先取 smooth past-compact bulk source $f_i$，零过去数据。写

$$
\phi_i=G_{i,D}^{\rm ret}f_i+H_i^{\rm ret}q,
\qquad \rho_i^{\rm ret}f_i=-\partial_{n_i}G_{i,D}^{\rm ret}f_i,
\qquad D_i^{\rm ret}q=\partial_{n_i}H_i^{\rm ret}q.
$$

这里 $H_i^{\rm ret}$ 是第 2 节的 boundary solution map，$D_i$ 使用正 normal derivative；原稿 response 的 history-linear part 是 $-D_i$。共同 action variation 给

$$
(D_1^{\rm ret}+D_2^{\rm ret})q=\rho_1^{\rm ret}f_1+\rho_2^{\rm ret}f_2.
$$

inverse 必须限定为零过去、smooth compatible source-response range 上的 causal inverse，不是所有 histories 上的有界 everywhere inverse。存在性由第 6 节独立 constructed $K_{\rm sew}$ 的 retarded solution 给出；其 trace 解该式。若两个 $q$ 解同一个 retarded problem，差组装成零过去、零源的 form wave solution，所以为零。这证明 inverse 在所用 range 上存在且唯一，没有使用 global target 来定义它。

故在此域

$$
G_{\rm sew}^{\rm ret}=G_D^{\rm ret}
+H^{\rm ret}(D_1^{\rm ret}+D_2^{\rm ret})^{-1}
(\rho_1^{\rm ret},\rho_2^{\rm ret}),
$$

其中 $G_D$ diagonal，$Hq=(H_1q,H_2q)$。advanced prescription 给相应公式；相减得到 $E_{\rm sew}$。该核正是第 6 节 CCR 的核，因其满足同一 zero-past/future problem。对 rough $L_c^1(H)$ source，使用第 6 节 energy-continuous extension；不逐项声称所有 sharp normal derivatives 已有界延拓。

### 7.2 显式 continuum transfer 与 nonzero cross commutator

对 $\operatorname{Re}s>0$ 的 Laplace parameter，取 $\kappa=\sqrt{s^2+m^2}$，$\operatorname{Re}\kappa>0$。每侧

$$
H_i(s)q(y)=\frac{\sinh(\kappa y)}{\sinh(\kappa L)}q,\qquad
D_i(s)=\kappa\coth(\kappa L),\qquad
\rho_i(s)f=\int_0^L\frac{\sinh(\kappa z)}{\sinh(\kappa L)}f(z)\,dz.
$$

因此同侧 resolvent 获得 $H_i(D_1+D_2)^{-1}\rho_i$ correction；异侧原本为零的 block 变成

$$
G_{12}(s;y,z)=\frac{\sinh(\kappa y)\sinh(\kappa z)}
{2\kappa\coth(\kappa L)\sinh^2(\kappa L)}.
$$

在物理坐标 $x<0<x'$，它等于

$$
\frac{\sinh(\kappa(x+L))\sinh(\kappa(L-x'))}
{\kappa\sinh(2\kappa L)},
$$

正是 independently computed connected resolvent cross block。ODE、boundary derivative、该恒等式均已符号检查。它不是只恢复 eigenvalues，而是恢复所有 bulk source 的 Green response。

该 cross kernel 非零；retarded 与 advanced parts 位于相反 time cones，所以 causal difference 也不恒零。可选择 timelike-separated smooth bulk smearings 检测它，证成 K1 的 CCR obstruction。对同侧 correction 同理；它说明 isolated Dirichlet commutator 也会改变。

在 $\operatorname{Re}s>0$ 处 $D_1+D_2$ 不为零：否则得到非零 homogeneous sewn resolvent solution，违背 $K_{\rm sew}$ positive self-adjoint 且 $-s^2\notin[0,\infty)$。不能把此结论搬到实频轴：$q=0$ Dirichlet poles 必须保留。无需除以 $\sin(kL)$ 的完整 amplitude determinant 是

$$
\det\begin{pmatrix}\sin kL&0&-1\\0&\sin kL&-1\\k\cos kL&k\cos kL&0\end{pmatrix}
=k\sin(2kL).
$$

$k>0$ 同时含 $\cos(kL)=0$ 的共同 history sector 与 $\sin(kL)=0$ 的 relative $q=0$ sector；$k=0$ 必须单独解线性 profile，外端零值及 summed derivative 迫使零解。这里的谱检查只作 completeness kill test，主证明不依赖 spectral decomposition。

## 8. 候选 algebraic fusion 的严格比较

| 候选 | 实际需要的输入 | 本文结论 |
|---|---|---|
| Fiberwise tensor product / 对 central history 作 balanced product | central base algebra 及明确两侧 homomorphisms | 可匹配参数，不能改变 K1 的 CCR；作为 full physical sewing 为 false |
| Matched-label fixed points | distinguished Weyl labels、trace grading、实际 character action | parent kinematics 中 proved；第 9 节作 corollary；不量子化完整 response |
| Equalizer | 两个指定的 algebra homomorphisms | response 数值/derivation 不是自动的 algebra map；未给 maps 就只有类比 |
| Cotensor product | coalgebra/Hopf algebra，实际 left/right coactions、兼容的 tensor completion | discrete jump grading 可在 algebraic Weyl span 上给 group-like coaction；其 degree-zero equalizer 是 kinematic。物理 history/response coaction open |
| Balanced algebra product | base algebra 及保证 balancing ideal 与乘法相容的 central maps，或其他已证相容结构 | 一般 bimodule tensor product 只是 module，不自动成为 algebra；noncentral balancing 不能凭符号定义 |
| Crossed product | 一个单代数上的具体 group action、拓扑、covariant universal representation | transport groupoid 并不自动给这个 action。无限维 smooth history group非局部紧，不能默认 Haar；把它离散化可造 algebraic crossed product，但不因此恢复物理 response/locality，Gap B open |
| Connes fusion | 指定 von Neumann algebras、normal left/right actions、Hilbert correspondences | 当前没有提供这些；是 sector composition 候选，不是本文 observable algebra 定义 |
| Factorization algebra / descent | open-set assignment、disjoint structure maps、locality/descent axioms及必要 derived structures | timelike closed-cell histories 本身不是这样的数据；本稿没有此定理 |
| $\operatorname{Sew}_{\rm CCR}$ | action/trace/response/causal Green data 加指定 CCR generators | 本文 interval continuum benchmark proved；它是 enriched presentation，不是 bare fiber fusion |

一个可检验的后续目标是：构造某个具体 algebraic operation，并证明其生成元、关系与 $\operatorname{Sew}_{\rm CCR}$ 的 presentation 一致。至少须产生第 7 节的 cross block、改变同侧 Dirichlet CCR、处理 initial compatibility 与 pole sector。没有这些验证，不能称为完成。

## 9. 原 formalism 字典与旧 Weyl 定理的 corollary 地位

| `gluing formalism.md` | 本文对象 | 不得混同 |
|---|---|---|
| $\mathcal Z_{i,e}$ | Green identity 看见的完整 $(q_i,\Pi_i^{\rm out})$ variational trace，含 domain/duality | 不是已定义的 interface operator algebra |
| $\omega_{i,e}^{\rm out}$ | $\int\delta\Pi_i\wedge\delta q_i$ 及 endpoint balance | 不是 fixed-fiber symplectic form；后者令 $\delta q_i=0$ |
| $\mathcal B_i$ | chosen admissible history space；smooth charts 与实际 energy trace range分别声明 | 不是可随意带平移不变测度的 Hilbert configuration space |
| $\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i$ | fiber 非空性、初始 jets 与可用 transport directions 的定义域 | 不只是 $\mathcal B_i$ 内部 face compatibility |
| $\mathcal P_i[q_i]$ | affine solution torsor，量子化为 $\mathfrak A_i^{\rm aff}[q_i]$ | 不等于 variable-trace Cauchy parent |
| $\mathcal R_i$ | $\Pi_i^{\rm hom}[\xi_i^-]-D_iq_i$；smearing 后的 affine $R_{i,h}$ | 不是仅依赖 $q_i$ 的函数；不是无 endpoint 的 Hessian |
| $\mathsf S_e=\operatorname{Graph}(\mathbb J_{ij})$ | full trace transmission；cotangent chart 为 $q_j=J_{ij}q_i$、$\Pi_i+J_{ij}^*\Pi_j=0$ | 不是单一 configuration jump kernel |
| $\mathscr U_i$、$\Theta_i^\pm$ | driven affine evolution、transport covariance 和 response Green identity 的 endpoint data | 不能由 response map 单独替代 |
| $\mathcal C$、$\operatorname{Ass}$ | 第 6 节 independently defined sewn weak locus 与 piecewise assembly | 不通过 global restriction image 定义 $\mathcal C$ |
| $\mathcal S_M$、$\Xi_i^\pm$ | solutions 与 Cauchy data 分别命名；$\mathcal E$ 是 observable source quotient | 三种 labels 不复用同一符号 |

有 face/corner compatibility 时，response 只在实际 common-history tangent 的 dual 中求和；不得把 ambient face covectors 的 representatives 当作无歧义 intrinsic quantities。高维、gauge、null extensions 要重新证明 $\mathcal Z$、domain、Green identity 和 reconstruction，不能套用本 interval 定理。

对旧 `Weyl algebra factorization.md`，保留以下 package，均在其声明的 parent-label category 内理解：

$$
\mathcal X_i^{\rm par}=V_i\oplus H_i,\qquad
\mathcal X_{\rm match}=V^{\rm sew}\oplus H^{\rm dup},\qquad
\Lambda_{\rm jump}=\left(\bigoplus_i\mathcal X_i^{\rm par}\right)/\mathcal X_{\rm match}.
$$

给 $\Lambda_{\rm jump}$ discrete topology，characters 作用为 $\beta_\chi W(z)=\chi([z])W(z)$。compact dual 的 Haar expectation 在 Weyl polynomials 上恰好留下 matched labels；由 norm contraction 延到 completion。因此

$$
\left(\bigotimes_i\mathfrak W(\mathcal X_i^{\rm par},\sigma_i)\right)^{\widehat{\Lambda}_{\rm jump}}
\cong\mathfrak W(\mathcal X_{\rm match},\sigma|_{\rm match}).
$$

选 $\sigma_i=-\Omega_i$ 时，第 6 节 source-to-solution duality 和 assembly 使右侧同构于本文 $\mathfrak A_M^W$。若保持旧文 $\sigma_i=\Omega_i$，就是对应 opposite convention 的同构。没有把 smooth label subalgebra 冒充 full energy completion。

可保留的 corollaries：parent direct-sum/tensor-product identity、上述 fixed points、matched energy assembly、weak flux/operator-domain realization、character expectation reduction-by-stages，以及 energy density 不推出 Weyl norm density 的诊断。有限 partition 中 commuting label selectors 的顺序无关也可保留。

不能由此声称：$\mathfrak A_i^{\rm aff}[q]$ 已有 fusion；character action 是 action-derived physical interface symmetry；Flux matching 是一个 quantum moment-map quotient；所有 parent dynamics 限制到 fixed points；三块区域 history fusion 的 intrinsic associator 已构造；任何 regional product Fock factorization。

当前旧文第 3.2 节已经先从 restricted form 得到 dynamics，再证明 intertwining；**不能再批评它只是用 global evolution 共轭定义 dynamics**。其真实缺口是 fixed-history family 到该 parent/physical CCR operation 的结构，而不是这条已写出的 form argument。

符号修订仅在新文件实行：$\Gamma_e$ 始终为 worldtube；商群用 $\Lambda_{\rm jump}$；Cauchy data 用 $\mathcal X$；源商用 $\mathcal E$；$q$-fixed algebra 与 parent algebra 严格分名。没有改动旧文件。

## 10. 一般 assembly theorem 所需的分项条件

| 要求 | 必须给出的证据 | 本文 interval 状态 |
|---|---|---|
| Map well-defined / CCR preservation | test map 降到方程商，且 Peierls pairings intertwine | proved：$E$ intertwining |
| Injectivity | kernel 无额外丢失；或已构造 inverse；存在 gauge 时另需正确 radical quotient | proved：restriction inverse |
| Surjectivity | 所有目标 labels 可实现，含 compatibility、pole/zero sectors、全部 energy category | proved：source restriction 与 cutoff-in-time exact onto argument |
| Dynamics covariance | independently defined regional sewing evolution，与 global uniqueness/Green operators相容 | proved：closed form、operator domain、functional calculus |
| Support/locality preservation | local test assignment 双向对应，causal Green support / finite speed | proved：第 6.6 节；不是 sharp boundary locality |
| Cross-history covariance | arrows 的域、composition、与 evolution 交换 | proved：smooth compatible affine translations；一般 rough chart conditional |
| Associativity of enriched sewing | 三块区域共同 form/source space、逐次 elimination 的 domains 与 inverses一致 | 本文未证明一般 binary theorem；common-parent selectors 不能代替 |
| Fusion only from quantized fibers | 实际 action/module/coaction、生成元关系与第 7 节核一致 | open |

一般 linear bosonic extension 是 **conditional**：若上述前四类解析数据和 support 条件已给出，则同一个 universal-generator proof 给 algebra isomorphism。它不是 nonlinear Peierls deformation、gauge/BRST quantization、任意 AdS timelike IBVP 或 null Goursat theorem。尤其不允许把“defined as global restriction image”当作 unrestricted regional onto 的证明。

## 11. Claim ledger 与下一步 kill criteria

| ID | Claim | Tier |
|---|---|---|
| H1 | 非空 fixed-history space 为 torsor；Hamiltonian-admissible affine CCR 的 origin independence | proved，§2 |
| H2 | compatible translation groupoid，retarded chart cocycle 与 causal/evolution covariance | proved，§4 的域 |
| H3 | smooth time-smeared response 属于 affine observable class；commutator 生成 retarded-minus-advanced homogeneous response | proved，§5 |
| H4 | retarded connection 等于 response inner derivation；connection 平衡等于 flux sewing | 未建立；无条件认同为 false/open，§3、§5 |
| H5 | 两区间全能量 classical response sewing 与 independently constructed evolution | proved，§6–7 |
| H6 | enriched continuum polynomial/Weyl CCR assembly，exact onto、dynamics、local test net | proved，§6 |
| H7 | 仅从 prescribed-history quantum fibers 得到 internal fusion | open；K1–K2 排除 naive quotient/product |
| H8 | 该 fusion 为 crossed product，或 flux 为 opposite-module balancing | open：Gap B、Gap C 未关闭 |
| H9 | 所有 rough-history transports、sharp $\widehat\Pi$、无限维 history measure、Fock gluing | not claimed |

后续按以下顺序推进；每一步有失败标准：

1. **先明确允许的输入范畴。** 若只允许 fixed-history algebras、field-preserving maps 与普通 products/quotients，K1 已否决。若允许 boundary-sensitive off-shell algebra 或 deformed multiplication，写出其实际对象和 morphisms。
2. **构造最小额外 quantum structure。** 必须从它恢复 $H^{\rm ret}(D_1+D_2)^{-1}\rho^{\rm ret}$；若只能认同 central $q$ 或只选 matched labels，则未过关。
3. **检验 quantum response relation。** 在 smearings 和 endpoint conventions 已固定的情况下写 Ward/connection/module identity；必须还原第 5 节符号和第 7 节两个 Green kernels，而非只给 classical limit。
4. **做三块区域的实际 associator。** 先证明逐次 Schur elimination 的 causal domains 与同时 elimination 相同，再提升到 algebra presentation。不能由已知 global target 定义 associator 后把自然性当成独立构造。
5. **最后扩展 regularity/geometry。** 证明 higher-dimensional joint trace、conormal estimates、corners 和 chosen boundary control spaces；保留不同 causal types 的独立问题。不要先添加无限维 integration 或 representation terminology。

## 12. Verification 与来源边界

**Verified:** 本文给出 affine CCR、transport、smooth smeared response、interval closed-form evolution、source quotient、response Schur formula、assembly inverse 与局域支撑的证明。使用的标准分析输入为 interval Sobolev trace/patching、positive closed-form representation、self-adjoint wave functional calculus 及局部 energy estimate；相应应用的 domain 已逐项写出。

**Checked symbolically:** 2026-09-03，Mathematica 两轮共 11 个 residual 均为零：scalar first variation、observable/CPS dual sign、oscillator Peierls sign、Poisson-kernel ODE、normal derivative、cross-interface resolvent、完整三振幅 determinant、Weyl cocycle、response Green identity、interface-action sign、inverse summed DtN 恒等式。这些只检查局部公式，未机器验证 functional analysis、surjectivity 或 universal $C^*$ theorem。

下面是同一批检查的可复现合并版本；所有除式仅在分母非零的声明域使用，Laplace application 取 $\operatorname{Re}s>0$：

```wolfram
ClearAll[t, y, m, L, k, s, q, p, a, b, c, d, j, n, om,
  phi, eta, r, u, lam, sg, pb];
sg[x_, z_] := x[[2]] z[[1]] - z[[2]] x[[1]];
pb[f_, g_] := D[f, q] D[g, p] - D[f, p] D[g, q];
poisson = Sinh[k y]/Sinh[k L];
checks = <|
  "firstVariation" -> Expand[
    D[phi[t,y],t] D[eta[t,y],t] - D[phi[t,y],y] D[eta[t,y],y]
    - m^2 phi[t,y] eta[t,y]
    - (-D[phi[t,y],{t,2}] + D[phi[t,y],{y,2}]
       - m^2 phi[t,y]) eta[t,y]
    - D[D[phi[t,y],t] eta[t,y],t]
    + D[D[phi[t,y],y] eta[t,y],y]],
  "observableCPSDualSign" -> Expand[pb[b q-a p,d q-c p]+b c-d a],
  "oscillatorPeierlsSign" -> FullSimplify[
    pb[q Cos[om t]+p Sin[om t]/om,q Cos[om s]+p Sin[om s]/om]
    + Sin[om (t-s)]/om],
  "PoissonODE" -> FullSimplify[-D[poisson,{y,2}]+k^2 poisson],
  "DtN" -> FullSimplify[(D[poisson,y]/.y->L)-k Coth[k L]],
  "crossResolvent" -> FullSimplify[
    Sinh[k (L+y)] Sinh[k (L-s)]/(2 k Coth[k L] Sinh[k L]^2)
    - Sinh[k (L+y)] Sinh[k (L-s)]/(k Sinh[2 k L])],
  "spectrum" -> FullSimplify[
    Det[{{Sin[k L],0,-1},{0,Sin[k L],-1},
      {k Cos[k L],k Cos[k L],0}}]-k Sin[2 k L]],
  "WeylCocycle" -> Expand[sg[{a,b},{c,d}]+sg[{a+c,b+d},{j,n}]
    - sg[{c,d},{j,n}]-sg[{a,b},{c+j,d+n}]],
  "responseGreen" -> Expand[
    (D[r[t,y],{y,2}]-m^2 r[t,y]) u[t,y]
    - (D[u[t,y],{y,2}]-m^2 u[t,y]) r[t,y]
    - D[D[r[t,y],y] u[t,y]-D[u[t,y],y] r[t,y],y]],
  "interfaceAction" -> D[-lam q^2/2,q]+lam q,
  "inverseDtN" -> FullSimplify[1/(2 k Coth[k L])-Tanh[k L]/(2 k)]
|>;
Print[checks];
Print[And @@ (SameQ[#, 0]& /@ Values[checks])];
```

**Assumptions:** real free scalar、$m,L>0$、两段一维区间、homogeneous physical Dirichlet、无额外 interface/corner action、指定 smooth response chart 与 full-energy benchmark 分开、Hamiltonian-admissible observable dual、source space $L_c^1(\mathbb R;L^2)$。所有 Weyl statements 指 universal algebra；不先选择 state 或 Fock representation。

**Not verified:** bare quantum-fiber fusion、general history topology 的光滑 bundle theorem、general boundary response module/coaction、跨模型 associativity、gauge/nonlinear/AdS/null extensions，以及任何 sharp-boundary/Fock/无限维测度主张。

本地概念与符号来源是 `formalism.md`、`gluing formalism.md` Part I/II/IV/V、`roadmap.md` Gap B/C，以及 `perturbation/formalism.md` 的 CPS/Peierls convention；旧 Weyl note 只用作第 9 节对照。外部文献 [Benini–Dappiaggi–Schenkel, Quantum field theory on affine bundles](https://arxiv.org/abs/1210.3457) 提供 affine quantization 的相关先例；其 globally hyperbolic affine-bundle framework **不自动证明本文人工 timelike boundary IBVP 或 history fusion**。这里的 interval construction 与证明已在正文给出，不把文献的 abstract 当成该扩展的 theorem citation。
