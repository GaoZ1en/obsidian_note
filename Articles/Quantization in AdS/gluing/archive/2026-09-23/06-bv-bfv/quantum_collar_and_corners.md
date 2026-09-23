# Quantum collar：实际 BV 积分、剩余场与 corner 缺陷

**结果。** 在 Abelian CS 的 product collar 上，选定实极化后，可以显式完成轴向 Gaussian BV 积分，保留剩余场，并直接验证 modified quantum master equation（mQME）及两个 collar 的 BV pushforward。闭合接口上的结论有明确的 normalized cylindrical/formal 意义。开放接口则留下可计算的 corner curvature、复合相位及 mQME defect；这些项不能从原 disk/open-chord 的物理边界条件中删掉。

本页推进 [完整目标](programme.md) G5 的实际 integration 路线，补充 [QD 的 observable 路线](quantum_observable_domain.md)，尚未证明两条路线已经接通。下面没有给原 disk 的所有侧墙、caps、corner states 或局域量子插入完成重整化。特别是，“这个 collar 核满足方程”不等于“完整 continuum quantum BV algebra 已构造”。

## 1. 场、几何、极化与保留的 lateral 项

取 N=[0,1]ₓ×Σ，orientation 为 dx∧dt∧ds；x 是按此 orientation 选择的 collar 法向，不是物理时间。先令 Σ 为带全局 t,s 坐标的平坦二维 torus，再对开放矩形计算实际 corner defect。κ=k/(2π)>0，ħ>0。使用平凡 bundle 中有全局实 lift 的 Abelian 场；不声称涵盖 compact large-gauge sectors。

完整 BV fields 仍是 Ω•(N)[1]，c,A,A⁺,c⁺ 全部保留。量子 gauge-fixing 是这些场中 auxiliary integration 的选择，不把 regional classical field space 换成 gauge quotient。写 ordinary connection 为
$$
 A=\beta\,dx+q\,dt+a\,ds,\qquad p=\kappa a,\qquad
 \alpha=q\,dt+a\,ds.
 \tag{1.1}
$$
在 x 的两个端面固定 q,c，p 及 ghost momentum 是相反极化方向。普通 action 的端面 polarization term 取 κ∫Σ qa/2 的 out−in 差。逐分量计算给
$$
 S_{\rm pol}^{(0)}
 =\int_0^1dx\int_\Sigma
 \left[p\,\partial_xq-p\,\partial_t\beta
                +\kappa q\,\partial_s\beta\right]
 +\frac{\kappa}{2}\int_0^1dx\int_{\partial\Sigma}\beta\alpha.
 \tag{1.2}
$$
最后一项是实际 lateral 项；Σ 闭合时才自动消失。它的 local density 是
κ[∂ₜ(βa)−∂ₛ(βq)]/2。本页开放矩形上的“bulk kernel”指 (1.2) 的体积分部分；它不冒充含该 lateral 项及原 chiral wall action 的完整区域态。

这也明确了 charge 的 corner allocation。令
$$
 G_\Sigma(\sigma)=\int_\Sigma
      \left[-p\,\partial_t\sigma+\kappa q\,\partial_s\sigma\right].
 \tag{1.3}
$$
对 closed Σ，它等于 κ∫Σ σ dα。对 open Σ，旧 note 的 symmetric transgression charge
SΣ,sym=κ∫Σ c dα−κ∫∂Σ cα/2 与此 bulk representative 的关系为
$$
 G_\Sigma(c)=S_{\Sigma,\rm sym}
                 -\frac{\kappa}{2}\int_{\partial\Sigma}c\alpha .
 \tag{1.4}
$$
所以量子化 GΣ 后仍须保留 (1.4) 指出的 corner allocation；不以积分分部把它悄悄删除。

普通 canonical potential 是 ∫Σp δq，{q,p}=δΣ，p̂=−iħ δ/δq。G 是 boundary BFV charge 的上述分量代表；ordinary gauge generator 在 Ω=δΘ、ι_XΩ=−δF convention 下是 −G。这一区分固定后续 operator 的符号。

## 2. 极化后的 BFV operator 与其平方

在 smooth cylindrical wavefunctions 和形式 ghost variables 上，定义 bulk operator
$$
 \widehat\Omega_\Sigma
 =i\hbar\int_\Sigma(\partial_tc)\frac{\delta}{\delta q}
          +\kappa\int_\Sigma q\,\partial_sc .
 \tag{2.1}
$$
Odd derivatives 取 left derivatives；所有 c 的 coefficients 反对易。Square 的二阶 derivative 项与 multiplication square 为零，只剩 derivative 作用于另一项的 coefficient：
$$
 \widehat\Omega_\Sigma^2
 =i\hbar\kappa\int_\Sigma(\partial_tc)(\partial_sc)
 =\frac{i\hbar\kappa}{2}\int_{\partial\Sigma}c\,dc .
 \tag{2.2}
$$
第二个等号使用
d(c dc)=2(∂ₜc)(∂ₛc)dt∧ds，不能把 c 当成 commuting scalar。故 closed Σ 上确实有 Ω̂²=0；open Σ 上，(2.1) 只是带已知 corner curvature 的 bulk piece。

**符合 proper wall 条件的见证。** 在 [0,1]ₜ×[0,1]ₛ 取
$$
 f(s)=s(1-s),\qquad g(t,s)=ts^2(1-s),\qquad
 c=\eta_1 f+\eta_2g .
 \tag{2.3}
$$
η₁,η₂ 独立 odd。f,g 都在 s=0,1 的 physical wall 上为零，但
$$
 \int_\Sigma df\wedge dg=\frac1{60},\qquad
 \widehat\Omega_\Sigma^2
   =\frac{i\hbar\kappa}{60}\eta_1\eta_2\ne0 .
 \tag{2.4}
$$
Stokes 检查把这个数全部定位到 t=1 cap。原模型 caps 未固定；不能为使 (2.2) 消失而额外令 c 在 caps 为零。它是遗漏 classical corner descent 后在量子 operator 中暴露的缺陷，不是已经证明了新的 bulk gauge anomaly。

## 3. 轴向积分及实际剩余场

轴向 contraction 只作用于 x。对 relative interval one-form 与 absolute one-form，分别用
$$
 H_{\rm rel}(u\,dx)(x)=\int_0^xu(y)dy-x\int_0^1u(y)dy,
$$
$$
 H_{\rm abs}(u\,dx)(x)=\int_0^xu(y)dy-\int_0^1(1-y)u(y)dy .
 \tag{3.1}
$$
前者保留 relative one-form residual dx∫u，后者保留 absolute zero-form residual ∫f；直接微分给 dH+Hd=1−ιr。Krel(x,y)=θ(x−y)−x，Kabs(y,x)=−Krel(x,y)，在 diagonal 取对称值。此处的反号保证两组 conjugate fluctuations 使用相容 propagator。

q,c 在两个 x 端面固定，故其 fluctuations 用 relative complex；p 与 conjugate ghost momentum 用 absolute complex。去掉这些合同方向的积分后，保留
$$
 \sigma=\int_0^1\beta\,dx,\quad
 b\quad(\operatorname{gh}b=-1),\qquad
 p_0,\quad p_0^+\quad(\operatorname{gh}p_0^+=-1).
 \tag{3.2}
$$
σ,b 是 canonical odd pair；b 是 tangential A⁺ 的平均值经 κ 归一化。p₀,p₀⁺ 是另一个 odd pair；p₀ 是 momentum 的 x-constant residual。这里 residual fields 仍是 Σ 上的场，不把它们误称为有限维 cohomology of Σ。σ 的常数 mode 与相应 ghost/antifield 不删除。

取 p₀⁺=0 的 residual Lagrangian，并对 p₀ 作 normalized Fourier integral。这一步不是由“cohomology 相同”推得；它实际给出
$$
 K_\sigma(q_{\rm out},q_{\rm in})
 =\exp\!\left[\frac{i\kappa}{\hbar}
       \int_\Sigma\left(q_{\rm in}+\frac12\partial_t\sigma\right)
                         \partial_s\sigma\right]
    \delta(q_{\rm out}-q_{\rm in}-\partial_t\sigma).
 \tag{3.3}
$$
其产生方式可直接看出：β fluctuation 置零后 β=σ，p 的非零 x-modes 强制
∂ₓq=∂ₜσ，于是 q(x)=qin+x∂ₜσ；剩余 p₀ 强制端点关系。将此 q 代入 κ∫q∂ₛσ，得到 (3.3) 的 phase。每个普通 Fourier pair 用 dp/(2πħ)，使 σ=0 的 kernel 是 identity。

Ghost kinetic integral保留的 action 是
$$
 S_{\rm gh,res}=\int_\Sigma b(c_{\rm out}-c_{\rm in}),\qquad
 \Delta_{\rm res}=\int_\Sigma
       \frac{\delta}{\delta\sigma}\frac{\delta^L}{\delta b}.
 \tag{3.4}
$$
这两式也固定 b 的 Darboux sign。归一化态核为
$$
 Z_\Sigma
 =\exp\!\left[\frac{i}{\hbar}
                \int_\Sigma b(c_{\rm out}-c_{\rm in})\right]K_\sigma.
 \tag{3.5}
$$
它带所选 residual half-density；后文在该平凡化中写其 coefficient。

在这个自由 theory 的 axial Lagrangian 上，quadratic fluctuation Hessian 只含 ∂ₓ；dΣ 项联结 residual 与 fluctuations，没有相互作用顶点。非零 x-modes 的 field-independent determinant 按 identity collar 归一化。这里采用 product framing、固定 polarization 与 Fourier/Berezin orientations；不从这一归一化推论任意背景改变下的 absolute determinant 或 framing anomaly 为零。

### 连续意义与证据层次

(3.3) 不需要无限维 Lebesgue measure：它定义实际 operator
$$
 (U_\sigma\psi)(q)=
 \exp\!\left[\frac{i\kappa}{\hbar}
       \int_\Sigma\left(q-\frac12\partial_t\sigma\right)
                         \partial_s\sigma\right]
       \psi(q-\partial_t\sigma).
 \tag{3.6}
$$
对 smooth q,σ，phase 是连续 polynomial pairing。以 smooth linear functionals 构造的 cylindrical functions 乘相应 exponential，在此映射下仍有明确意义。

更强的 BV integration 声明采用如下范围：在 torus 上取同时保持 ∂ₜ,∂ₛ 和 pairing 的 finite Fourier subspaces；每个子空间执行上述 Fourier/Berezin pushforward及固定 normalization。包含 V⊂V′ 时，Hessian 分块，结果分解为 V 的 kernel与补空间的 kernel。将新增 residual/ghost labels 限制为零后，补空间的 ordinary kernel为 identity，新增 acyclic integration pairs给 factor 1；这给 stabilized cylindrical matrix elements 的相容性。一般非零新增 boundary/residual labels 的 kernel必须保留，不能也写成 1。

对 smooth q,σ，(3.6) 直接定义完整 operator；其 projected phases 收敛到所写 pairing。Ghost exponential 按形式 field degree及上述 finite-subspace restriction解释。无限乘积 odd delta 只指 normalized pairing rule，不作为一个有限 ghost-degree polynomial或已构造的无限维 Berezin measure。

因此：operator U 的连续定义由 (3.6) 给出；BV state/pushforward 给出的是规定的 normalized cylindrical/formal construction。这里没有建立一个作用于所有 continuous functionals 的 Δ，亦没有完成 QD 的非 cylindrical local composite 插入比较。§7 给出这个区别不能略去的反例。

## 4. mQME：closed face 的直接证明与 open face 的准确缺陷

输入端取 dual operator，因此
$$
 \Omega_{\partial N}
   =\widehat G_{c_{\rm out}}^{\,q_{\rm out}}
      -\left(\widehat G_{c_{\rm in}}^{\,q_{\rm in}}\right)^T,
 \qquad
 D_N=\hbar^2\Delta_{\rm res}+\Omega_{\partial N}.
 \tag{4.1}
$$
T 是相对于输入 pairing 的 formal transpose；由于 q 的 derivative transpose 变号，(4.1) 与把两端都当成同向 operator 不同。

令
$$
 W_\Sigma(\sigma,\tau)=\int_\Sigma d\sigma\wedge d\tau
                       =\int_{\partial\Sigma}\sigma\,d\tau .
 \tag{4.2}
$$
直接由 (3.6) 微分，而非先假设 mQME，得到
$$
 d_\sigma U_\sigma[\eta]
   =\frac{i}{\hbar}
       \left(\widehat G_\eta-\frac{\kappa}{2}
                              W_\Sigma(\sigma,\eta)\right)U_\sigma,
$$
$$
 [\widehat G_\eta,U_\sigma]
               =\kappa W_\Sigma(\sigma,\eta)U_\sigma .
 \tag{4.3}
$$
另一方面 left b-derivative 将 ghost exponential 变成
(i/ħ)(cout−cin) times 自身。把三项相加，得到准确的 Ward identity
$$
 D_N Z_\Sigma
    =\frac{\kappa}{2}
        W_\Sigma(\sigma,c_{\rm out}+c_{\rm in})Z_\Sigma .
 \tag{4.4}
$$
因此 closed Σ 的右边恒为零，给 QB2 的 mQME。σ 的 constant mode 不妨碍此证明，因为没有求逆 ∂ₜ 或删除其 kernel。

对 open Σ，右边不能删掉：
$$
 D_N^2=\frac{i\hbar\kappa}{2}\int_{\partial\Sigma}
             (c_{\rm out}dc_{\rm out}-c_{\rm in}dc_{\rm in}).
 \tag{4.5}
$$
这些是当前 bulk kernel 与 corner 的实际关系。完整区域态仍须包含 (1.2)、(1.4) 的 lateral/corner data；本页没有将 (4.4) 非零误报为完整 extended theory 的不一致。

## 5. 两个 collar 的 interface 与 residual pushforward

先暂取 WΣ=0。独立两片的 residuals 为 (σ₁,b₁)、(σ₂,b₂)，并各有自己的 boundary q,c。Sewing分两步：

1. 配对中间 qₘ 的普通 kernel及中间 cₘ 的 Berezin variables。
2. 对组成后的多余 residual odd pair 作 BV pushforward。

第一步的 ordinary integral由两个 delta kernels 直接求出，不靠假设 Fubini 的无限维 measure：
$$
 U_{\sigma_2}U_{\sigma_1}=U_{\sigma_1+\sigma_2}.
 \tag{5.1}
$$
Ghost pairing将
exp[i(b₁(cₘ−cin)+b₂(cout−cₘ))/ħ]
变成 δodd(b₁−b₂) times surviving exponential。引入真正 canonical 的坐标
$$
 \sigma=\sigma_1+\sigma_2,\quad
 \xi=\frac{\sigma_1-\sigma_2}{2},\qquad
 b=\frac{b_1+b_2}{2},\quad b_\xi=b_1-b_2 .
 \tag{5.2}
$$
它们满足
$$
 \omega_1+\omega_2=\omega_{\sigma,b}+\omega_{\xi,b_\xi},
 \qquad \Delta_1+\Delta_2=\Delta_{\sigma,b}+\Delta_{\xi,b_\xi}.
 \tag{5.3}
$$
在 ξ=0、bξ free 的 Lagrangian 上积分 δodd(bξ)，每个 normalized pair给 1，留下
exp[i∫b(cout−cin)/ħ]Kσ，正是独立长度二 collar 在 rescaled x-coordinate 中按 §3 得到的态。保留 σ,b；它们不是此次 BV pushforward要消去的方向。

有限 ghost components 的 orientations 可以显式固定：m 个中间 ghosts，按 successive left derivatives ∂cm,1,…,∂cm,m 配对，乘
(-1)^{m(m-1)/2}(iħ)^m，再依次积分 bξ,1,…,bξ,m。此约定使 δodd(bξ)=bξ,1⋯bξ,m 的积分为 1。Checks 包含 m=2 的全部 ghost exponential，非仅维数计数。

**QB3 的 image 与重复组合。** 在这一 normalized collar-kernel family 中，sewing得到全部 Uσ，因为可取 σ₁=0、σ₂=σ；保留 residual σ,b 后态核也 onto。不同分解 σ₁+σ₂=σ 的额外 ξ,bξ 是上述明确的 BV pair，不能在 classical fields 上作 quotient。作为 ordinary operator，Uσ不区分σ的constant shift；因此也不能由这些operators反推出全部residual/gauge资料，σ,b仍保留。对三片先后执行同一 Gaussian/Berezin eliminations，留下同一个总 σ,b 与 identity normalization；一般有限片数同理由归纳成立。这不是一般区域 Hilbert tensor product 的 kernel theorem，也不是原 disk 的 quantum observable comparison。

## 6. 开放接口：相位、选择依赖与 formalism 修订

一般 Σ 上实际复合为
$$
 U_\sigma U_\tau=C_\Sigma(\sigma,\tau)U_{\sigma+\tau},
 \qquad
 C_\Sigma(\sigma,\tau)
   =\exp\!\left[-\frac{i\kappa}{2\hbar}W_\Sigma(\sigma,\tau)\right].
 \tag{6.1}
$$
它满足准确的 cocycle equation
C(σ,τ)C(σ+τ,ρ)=C(τ,ρ)C(σ,τ+ρ)。所以非零 C 是 projective composition factor，本身并不是失去 associativity。

**不能仅重新归一化每个 kernel 来消掉。** 将 Uσ 乘任意非零 scalar a(σ)，只将 C 改成一个 coboundary倍数；在 Abelian additive group 上该倍数对 σ,τ 对称。因此
$$
 \frac{C(\sigma,\tau)}{C(\tau,\sigma)}
       =\exp[-i\kappa W_\Sigma(\sigma,\tau)/\hbar]
 \tag{6.2}
$$
不变。将 (2.3) 的 f,g 作任意小实倍数，便给不可用 scalar rephasing消去的非平凡 commutator。

**Residual Lagrangian 选择也会看见 corner。** 保持 (5.2) 的片序 Uσ₂Uσ₁，额外 phase 为
$$
 C(\sigma_2,\sigma_1)
 =\exp\!\left[-\frac{i\kappa}{2\hbar}W_\Sigma(\sigma,\xi)\right].
 \tag{6.3}
$$
若只保留 bulk kernel，在 ξ=χ 与 ξ=0 的 fiber Lagrangians上所得态相差 (6.3)，其中 χ 是与 surviving residuals无关的固定 smooth field。取 χ 的 boundary trace与 σ 有非零 W 即得反例。这个例子不需要依赖 base 的 gauge-fixing。此时不能引用 closed mQME 的 gauge-fixing independence，因为 (4.4) 的右边尚未补齐。

**修订后的对象必须携带什么。** 对 open polarized face，把 (2.2) 的 curvature、(4.4) 的 Ward defect、(6.1) 的 composition factor和 (1.2)/(1.4) 的 corner allocation一起保存。不能把每个 face 单独声明为普通 nilpotent complex，并在粘合时遗忘这些资料。

反向 orientation 把 W 的符号反转，故对应 factors 互逆。在一个共同 product collar 的 face subdivision中，若 actual corner traces（包括 σ）一致，oriented sums of W以及上述 ghost curvature相消。这是可直接检验的必要相容关系。对于原 disk 的 seam、physical wall和 temporal caps，法向与极化不同；还须构造其 actual corner state/pairing及这些 traces的正确运输。单凭 incidence cancellation 不提供该量子构造。

### 已实现的相反面配对

对两份独立 regional boundary variables q₊,c₊ 和 q₋,c₋，反向 face使用 (4.1) 的 dual operator。现在按 full BFV interface matching识别共同 c₊=c₋=c，q₊,q₋仍分别保留。实际 diagonal operator为
$$
 \Omega_{\rm diag}
 =i\hbar\int_\Sigma(\partial_tc)
       \left(\frac{\delta}{\delta q_+}
                   +\frac{\delta}{\delta q_-}\right)
       +\kappa\int_\Sigma(q_+-q_-)\partial_sc .
 \tag{6.4}
$$
它满足 Ωdiag²=0，包括 ∂Σ≠∅ 的情形：共同 derivative作用于q₊−q₋恰为零。若 c₊,c₋没有匹配，平方仍是两份不同的corner curvature之差，不能宣称相消。没有为此增加c|caps=0的条件。

在每个有限 coefficient space的Schwartz test kernels上定义实际diagonal pairing
$$
 (\Pi\Psi)(c)=\int dq\,\Psi(q,q;c).
 \tag{6.5}
$$
将 (6.4) 拉到 diagonal后，multiplication项为零，derivative项是对共同q的total derivative；Schwartz decay给
$$
 \Pi\Omega_{\rm diag}=0 .
 \tag{6.6}
$$
该积分保留共同ghost/corner labels，未把它们设零。Finite cylindrical pairings按 §3 的同一normalization使用。与此同时，相反faces的Uσ⊗Uσ严格复合，因为 (6.1) 的两个cocycles互逆。这给出了开放接口的一步实际修复：先保留curved pieces，再用正确的共同ghost和dual pairing组成nilpotent diagonal。

这还不是完整原区域state的粘合定理：(6.5) 的Schwartz域与regional distributional states的实际配对域须比较，lateral/cap actions及survivingcorner operators仍要接入。它也不赋予任意不相容boundary histories一个合法的pairing。


因此 QB1–QB3 已完成 closed product-collar building block；QB4给开放接口真实缺陷及实际diagonal pairing。原 open-chord quantum sewing 的完整修复仍必须继续，而非额外关闭 caps 来回避它。

## 7. 再攻击：cylindrical BV pushforward 不是完整量子函数域

即使 WΣ=0，也不能由 §4 宣布 Δres 已作用于全部 continuous polynomials。取 smooth fields 上的局域 mixed observable
$$
 F(\sigma,b)=\int_\Sigma \sigma b .
 \tag{7.1}
$$
在任意 N 维实正交 mode subspace上，它是 ∑j σj bj，实际 left derivative 给
$$
 \Delta_N F_N=N .
 \tag{7.2}
$$
Torus |m|,|n|≤L 的 real Fourier dimension 是 N=(2L+1)²；因此没有未重整化的 continuum limit。减去 scalar normal-ordering constant 也无用，因为 Δ(constant)=0。

这不反驳 (4.4)：对 (3.5) 先作 b derivative，再作 σ derivative，得到有限的 smeared Ward expression，没有 (7.2) 的闭合 mixed Hessian trace。但它反驳把本页的 selected kernels直接推广到全部 local BV insertions的论证。下一步必须实际构造允许的 quantum BV functional 域及必要 counterterms，并比较 QD 已定义的 local currents/composites。

同样不能把 CΣ 与 QD 的 c=1 stress central term混同：前者由 open-face gauge/corner pairing产生，后者由真实 exterior 上 stress products产生。是否有新增 genuine anomaly，要在正确 extended quantum equations中检验。

## 8. 对完整目标的实际增量

- QB1：polarized bulk BFV operator与 open-face curvature已计算，proper-wall/cap见证满足实际域。
- QB2：closed torus product collar 的 normalized axial BV kernel、residuals和 mQME已直接构造；operator family有连续意义，BV integration按 §3 的 cylindrical/formal规则解释。
- QB3：独立 collar states 的 interface pairing及 residual pushforward实际给回未切分 collar；同一域内有限重复组合相容。
- QB4：open-face cocycle不能用 scalar rephasing删除；bulk-only pushforward具有明确的 residual-choice defect。实际opposite-face diagonal operator在匹配ghost后nilpotent，Schwartz pairing满足Ward identity；完整regional distributional states的配对仍需验收。
- QB5：local mixed Hessian给出 continuum Δ 定义域障碍，禁止将前三项外推为完整 quantum BV algebra。

文献对照：[CMR §2.3–2.4](https://arxiv.org/html/1507.01221v2) 将 boundary operator、residual Laplacian与 pushforward列为量子构造的组成部分；[Cattaneo–Mnev–Wernli §4–5](https://arxiv.org/html/2012.13983v3) 在 CS cylinder上实际采用轴向 contraction及 polarizations。本文的实 q,c 极化、矩形反例与逐步 kernel/Berezin计算在上面独立给出；不从文献的 closed-surface结果推论 open-chord完成。此次读取为 HTML，未把 PDF 视觉核对列为新证据。

**Verified:** 20 项 Mathematica分量/phase/interval checks；15 项 Sage Grassmann/BFV/mQME/pushforward checks，全部通过。连续 operator、一般 cocycle及 normalized cylindrical compatibility由上面的解析论证承担。见 [执行记录](checks/quantum_collar_verification.md)。

**Assumptions:** free Abelian globally lifted sector；product collar；declared real q,c polarization、Darboux/left-derivative convention、identity normalization与 product framing；closed torus用于无 corner 的 BV state theorem。Open rectangle结论是保留缺陷的 bulk piece，不是完整原模型态。

**Not verified:** 完整 disk/chord corner states与 lateral action的量子合并；非 cylindrical quantum BV insertion域和 renormalization；到 QD products/energy的桥；任意 compact topology、non-Abelian quantum、一般 reopening和传播模型。G1–G6的总目标不变。

**后续范围更新：** [WH](physical_wall_and_caps.md) 已补上原 disk/chord 的 physical boundary history phase、cap Ward compensation、normalized source/quartet release 及到 QD products/energy 的 coherent-cap 比较。它没有将本页的 selected collar state 自动扩展为完整 regional BV state；bulk/ghost/corner determinant transport、distributional pairing、local BV renormalization 与 full mQME bridge 继续未完成。

**局域量子域的后续：** [QT](quantum_cut_quartet.md) 为 WH 中已明确的 proper fiber 构造完整 canonical quartet 和 normal-family quantum complex，实际处理该块的局域插入。它没有将本页 σ,b 的一般 residual data 改成 contractible pairs；(7.2) 对这些 residuals 的未重整化障碍仍成立，其真正 quantum domain 继续待构造。
