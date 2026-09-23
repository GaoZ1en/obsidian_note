# Chiral CS 的完整 corner diagram 与连续粘合复形

**命题 CD1。** 对一个 neat chord 切开的 disk cylinder，在固定手征物理外墙、未固定的初末 caps、平凡 U(1) sector 内，下面的完整 face/corner 图式有显式连续 homotopy-limit 模型。其与 smooth global realized BV complex 连续 chain homotopy 等价。这解决的是有指定物理 realization 的 Abelian 线性复形；不声称全部 nonlinear BV–BFV systems 已有相同模型。

## 1. 物理 boundary complex，先于同伦拉回

沿用原模型的 M、I、D、Γ、κ、v。令 W 为 physical wall，B 为两个 caps 与 W 的 assembled exterior。用未移位 form degree 写
$$
L_W^0=0,\qquad
L_W^1=\{f(t,s)(ds+v\,dt)\},\qquad
L_W^2=\Omega^2(W).
\tag{1.1}
$$
d 保持这个复形：degree 0 为零，degree 1 的 d 落入 unrestricted degree 2。移位后它正好是外墙 proper ghost 为零、A_t=va_s、A^+ 的 wall pullback 自由。非零外墙 ghost 所代表的 charged symmetry 没有被这个 proper differential 商掉。

Caps 各取全部 Ω，沿 cap–wall circles 匹配 form pullbacks。定义
$$
L=\{(\ell_W,\ell_i,\ell_f)\in L_W\oplus\Omega(D_i)\oplus\Omega(D_f):
\text{circle pullbacks agree}\}.
\tag{1.2}
$$
此处 D_i、D_f 是 time caps，不是两片 spatial regions。下文两片体区域使用 M_1、M_2。L 是 independently specified exterior data，不是全局解的 image。Caps 的 rim restriction 有显式 collar extension，故 (1.2) 的 strict matching 同时给这一 face diagram 的 continuous homotopy model。这里没有固定一组 incoming/outgoing 值，也没有把 cap 任意取值宣称为 on-shell 可实现。

移位后的 smooth bulk complex 记为 E_G；未移位写法为
$$
G_L^0=\{c:c|_W=0\},\quad
G_L^1=\{A:A_t-va_s=0\text{ on }W\},\quad
G_L^2=\Omega^2(M),\quad G_L^3=\Omega^3(M).
\tag{1.3}
$$
定义 cochain degree n=p-1、d 同号；polynomial coordinates 使用 dual grading，与 c,A,A^+,c^+ 的 ghost grading 一致。

## 2. 三个顶点、三个匹配面与共同 corner

所有 Ω 和 joint trace spaces 取 C∞ Fréchet topology。采用有连续线性映射的 cochain complexes 的 dg category；等价是连续 chain homotopy equivalence。Homotopy limits 用有限 mapping cones/total complexes 给出，不假设任意 quasi-isomorphism 在连续 dual 下仍为等价。

令
$$
E=\Omega(M_1)\oplus\Omega(M_2),\quad S=\Omega(\Gamma),\quad
T=T_1\oplus T_2,\quad C=\Omega_{\rm joint}(\partial\Gamma).
$$
T_a 是第 a 片的 surviving exterior face traces，内部真实 transverse corners 要 joint compatible；C 包含 Γ 的所有边：两个时间边和两个端点 worldlines，且在四个 vertices 匹配。只匹配空间端点不足以得到 C。

记 j:E→S 为两片 seam restriction 的差，r:E→T 为 exterior restriction，u:L→T 为 exterior data 的分片 restriction。再令 q:S→C 为 seam boundary restriction，σ:T→C 为两侧 exterior data 在 seam 边界上的差。实际 pullback 给
$$
qj=\sigma r,\qquad \sigma u=0.
\tag{2.1}
$$
三个顶点是 Ω(M_1)、Ω(M_2)、L；两两交叠的对象是 S、T_1、T_2；三重相容对象是 C。物理 cap–wall corners 已在 L、T、C 中按 (1.2) 展开。它们的进一步 face 图也由同样的 collar sections strictify。

置 X=E⊕L，Y=S⊕T，
$$
f_0(e,\ell)=(je,re-u\ell),\qquad
f_1(s,t)=qs-\sigma t.
\tag{2.2}
$$
f_1 f_0=0。完整匹配的 total complex 是
$$
\mathcal T^n=X^n\oplus Y^{n-1}\oplus C^{n-2},\qquad
D(x,y,z)=(dx,f_0x-dy,f_1y+dz).
\tag{2.3}
$$
这里 n 暂为未移位总次数；统一移位一次才作 bulk BV grading。D²=0 的第三分量使用 (2.1)，不能只检验每一条 restriction 与 d 交换。

对于任意测试复形 K，Hom_cont(K,𝒯) 的 cocycles 依次是三个顶点的 compatible chain maps、三个 matching homotopies 和一份消除其 corner defect 的 second homotopy。这是本图的 homotopy-coherent cone 的具体 mapping property；有限 products/shifts 与 Hom 交换，给所声明的 homotopy limit。不是将 kernel 的名字改为 homotopy product。

## 3. 全部连续 sections 的构造

严格匹配 P_L 是 ker f_0，其 (e,ℓ) 中 ℓ 由 exterior trace 唯一确定。它等于原 P_ext 的 physical subcomplex。

需要以下实际 sections，均由固定 neat collars 和有限 cutoff 构造：

- e_T:T→E，r e_T=1；它只延拓 forms 的 boundary values，不要求任意 infinite normal jets 的连续 Borel section。
- e_C:C→S，q e_C=1；在 Γ 的四边用 joint corner inclusion–exclusion。
- e_Γ:ker q→E，j e_Γ=1，r e_Γ=0。在 Γ 的一侧 collar 取 χ(x)π_Γ^*s，在另一侧取零。因为 s|∂Γ=0，所有 surviving exterior pullbacks 为零；χ 在 collar 末端消失。

这些 maps 一般不与 d 交换。给 (s,t)∈ker f_1，令
$$
e=e_Tt+e_\Gamma(s-je_Tt).
\tag{3.1}
$$
括号项属于 ker q，因为 qs=σt。于是 je=s、re=t。连同 ℓ=0，它给 f_0 到 ker f_1 的连续 section。因此
$$
0\longrightarrow P_L\longrightarrow X\xrightarrow{f_0}Y
\xrightarrow{f_1}C\longrightarrow0
\tag{3.2}
$$
degreewise split exact。这个证明没有要求 unrestricted chiral ghost 能取任意 corner 值；任意 t 的延拓先在 unrestricted E 上完成，真实外墙约束由独立顶点 L 实施。

## 4. 将 graded splitting 修成真正的 chain homotopy

令 a:C→Y 为 (e_C c,0)。令 b:Y→X 为 (3.1) 的 section 与 1-a f_1 的复合。则
$$
f_1a=1,\quad f_0b=1-af_1,\quad ba=0.
$$
在只含 horizontal differential δ=f_0+f_1 的 total space 上，取 h|_Y=b、h|_C=a、h|_X=0，并取 π_0|_X=1-bf_0、π_0|_{Y⊕C}=0。其值在 P_L，且
$$
\delta h+h\delta=1-\iota\pi_0,\quad
h^2=0,\quad h\iota=0,\quad\pi_0h=0.
$$
令 d_v 在 X、Y、C 上分别为 d、-d、d。因为 d_v h 降低 horizontal degree，
$$
(d_vh)^3=0,\qquad
H=h(1-d_vh+(d_vh)^2),\quad
\pi=\pi_0(1-d_vh+(d_vh)^2).
\tag{4.1}
$$
有限展开、δd_v+d_vδ=0 与前一恒等式给
$$
\pi D=d_P\pi,\quad \pi\iota=1,\quad
DH+HD=1-\iota\pi.
\tag{4.2}
$$
可以直接展开验证；无需无穷级数收敛。Sage 的非-chain splitting 矩阵检查检验了 (4.1) 的符号与三层截断，并未充当 Fréchet extension 的证明。

因此 P_L 与 𝒯 连续 chain homotopy 等价。再与 [relative homotopy](relative_homotopy.md) 的 actual maps 复合，得到
$$
G_L\xrightarrow{i}P_L\xrightarrow{\iota}\mathcal T.
\tag{4.3}
$$
反向是原 smoothing p 与 π 的复合。它不把 piecewise fields 的 raw elements 说成 smooth fields。

## 5. 配对与真实边界资料的精确范围

G_L↔P_L 的 maps 保留全部 exterior traces，homotopy 在 exterior 为零；原 H2 给 shifted integral pairing 的 relative correction。𝒯 的全部中间 homotopies 并非额外 physical edge oscillators。

本构造还可以检查严格 over-L：a 的值在 Y，b 的 X 分量始终取 ℓ=0，而 d_v 不混合 E 与 L。因此 H 的 L 分量为零，π 保持输入的 L 分量。将 𝒯→L 定为 X 的 ℓ projection，(4.2) 是 relative continuous chain homotopy equivalence。再复合原 smoothing，仍保留完整 exterior data。此处没有声称 𝒯 上已经构造一个非退化且逐项 local 的 extended BV action/pairing。

把 P_L 的 pairing 沿 π 拉回会在新增 contractible directions 上退化，因此不能将该拉回称为 𝒯 的非退化 BV form。但最终目标并不要求每一个辅助 resolution 都带非退化 form；可以在实际 strict field model P_L 上给 BV–BFV 实现，如下。

### 5.1 实际 field model 的 action 与弱非退化 pairing

在 P_L 上保留两片原来的 BV fields，取各片积分 pairing 之和、Q=d，action 为带相反 seam polarization 的区域 physical BV actions 之和。共同 superfield trace 使两个 seam boundary defects 以及相反的 polarization functionals 相消。真实 wall 的条件是 c=0、a=f(ds+vdt)、b 自由，故 wall β 在允许 variations 上为零；相邻 face/corner terms 按 joint traces 和 incidence signs 相消。于是
$$
\omega_P=(\omega_{M_1}+\omega_{M_2})|_{P_L},\qquad
S_P=(S_{M_1}^{\rm phys}+S_{M_2}^{\rm phys})|_{P_L},
$$
$$
\iota_Q\omega_P=\delta S_P-
\sum_{\Sigma\ {\rm surviving\ cap}}\pi_\Sigma^*\beta_\Sigma.
\tag{5.1}
$$
求和使用 caps 自己的 induced orientations。这里的 graded action/β signs 完全沿用 [原 CS §§2–4](u1_cs_open_chord.md) 的已声明 transgression convention；不是重新把普通 commuting variations 填入 graded wedge。

ω_P 是弱非退化的 BV pairing：若一个 tangent vector 与所有允许 variations 配对为零，在每片内部以任意 compactly supported complementary-form variation 测试，其每个 component 必为零；光滑到各 face 随即令 boundary traces 也为零。此处没有独立支撑在 seam 上的 distributional field，因而不能凭空多出这种 radical。弱非退化不表示其逆接受所有 continuous distributional covectors，也不表示 ordinary on-shell CPS 非退化。

在 smooth restriction i 上，分区积分直接给 i^*ω_P=ω_G、i^*S_P=S_G。反向 map 的配对差是原 H2 的显式 relative homotopy，且 O1 给指定 polynomial functions 的 cohomology 等价。因而 P_L 是同时有区域来源 action、配对和 physical realization 的实际线性 BV–BFV 模型；𝒯 为其 homotopy-limit 计算提供辅助 resolution。它们的角色不需要混同。

**CD2 的范围：** (5.1) 是利用既有 B02 的 graded identity 逐片相加而得，corner cancellation 与弱非退化有上述解析证明。没有新增一套全部 graded Cartan calculus 的机器检查；若改换函数空间使 distributional seam fields 成为独立变量，证明要重做。

## 6. 攻击与边界

删去 C 项时，即使所有 restrictions 是 identity，三顶点/三条边的差分矩阵也产生一个虚假的 H¹。加入 C 后该类消失；这解释为何 corner coherence 是实际资料。

若允许任意不光滑 exterior trace，原 smoothing no-go 仍成立。若给 time caps 额外固定值，(1.3) 和相关 cohomology 要重算。若改用 charged ghosts 或 non-Abelian Q，必须重验 physical subcomplex 与相对 extensions。以上均不是 CD1 的隐含特例。

**Verified:** (2.1)–(4.3) 有连续构造与解析证明；Sage 的 12 项 corner/perturbation 检查通过。

**Assumptions:** 一个 neat chord、product collars、平凡 U(1)、固定 v、C∞ exterior joint traces、未固定 caps。

**Not verified:** 非线性/拓扑 sectors、全部多次组合、任意 functional 或 quantum products。𝒯 若另要求非退化 local symplectic enhancement 是额外的展示选择，并非 CD1/CD2 必須再通过的物理场构造关卡。
