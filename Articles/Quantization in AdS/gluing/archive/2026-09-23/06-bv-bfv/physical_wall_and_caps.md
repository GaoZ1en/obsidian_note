# 真实墙面、时间 caps 与量子 history sewing

**结果。** 本页回到原 U(1) disk/open-chord 的 action，构造其 spatial-flat boundary history phase，保留真正的 chiral wall、两端 caps及 spatial corners；计算共同 cut BRST 作用的 cap 补偿，执行声明的 normalized source/quartet integration。随后从独立未切分 action推导 coherent cap kernel，得到与 QD 相同的 current contractions、能量和 Wick products。

**完成范围。** 这里有一个实际的 physical-history-to-cap 比较；不是完整 regional quantum BV–BFV state 的所有 ghost/antifield components。源积分在 finite cylindrical canonical pairs及其 normalized compatible规则中实现；cap operator本身有明确的 continuum Fock实现。Bulk/corner determinant lines、一般局域 BV insertions的重整化及完整 mQME pushforward仍须接上，见 §8。不能把这两种证据范围混写。

## 1. 独立区域 action给出的 boundary history phase

沿用 [原构造](u1_cs_open_chord.md) 的κ=k/(2π)>0、v>0、∂D₁=O₁+γ、∂D₂=O₂−γ，γ=[P,Q]。每片的 qᵢ=Aₜ|γ 是 prescribed source；它的端点与真实墙面的 At=va_s保持 joint compatibility。Temporal caps不固定为零。

在空间 curvature constraint d_Daᵢ=0 的支撑上，每个 disk 有 aᵢ=d_Dφᵢ。取 φᵢ(t,P)=0 仅消除 primitive的常数重复；不消除任何改变 A 的 proper direction。任意 bulk extensions及其 actual arrows仍在完整对象中。

从各片 action直接得到
$$
 S_{\partial,i}[\phi_i;q_i]
 =\frac{\kappa}{2}\int_I dt
       \left[\int_{O_i}\phi_{i,s}\dot\phi_i
           +\epsilon_i\int_\gamma\phi_{i,s}\dot\phi_i
           -v\int_{O_i}\phi_{i,s}^2\right]
       -\epsilon_i\kappa\int_I dt\int_\gamma q_i\phi_{i,s},
 \quad \epsilon_1=1,\quad\epsilon_2=-1 .
 \tag{1.1}
$$
这里先对空间积分分部，没有对时间积分分部，所以 cap potential是
$$
 \Theta_{\partial,i}
       =\frac{\kappa}{2}\int_{\partial D_i}\phi_{i,s}\delta\phi_i .
 \tag{1.2}
$$
完整 regional boundary integral带 joint endpoint traces；不能把各弧独立当成无corner的closed circle。

对 At 的 interior affine fluctuations作 Fourier constraint integral会强制 d_Da=0；固定wall/cut traces的reference extension贡献与d_Da相乘，故在此支撑上消失。这解释为何(1.1)是正确的约束后physical phase。这里并未据此声称全部bulk BV determinant和antifield state也已计算；相应未证部分在§8保留。

## 2. 切口 phase及不能丢掉的cap项

先识别共同 q。沿γ设
$$
 e=\frac{\phi_1+\phi_2}{2},\qquad r=\phi_1-\phi_2,
 \qquad r(t,P)=0 .
$$
两片切口的总贡献为
$$
 S_\gamma=\frac{\kappa}{2}\int_I dt\int_\gamma
       (e_s\dot r+r_s\dot e-2qr_s).
 \tag{2.1}
$$
在释放constraint前，准确分解是
$$
 S_\gamma=\kappa\int_I dt\int_\gamma r_s(\dot e-q)
       +[F_\gamma]_{t_i}^{t_f}
       -\frac{\kappa}{2}\int_I dt[\dot e\,r]_P^Q,
 \qquad
 F_\gamma=\frac{\kappa}{2}\int_\gamma e_s r .
 \tag{2.2}
$$
对应的cap one-form也有endpoint项：
$$
 \Theta_\gamma
 =\int_\gamma\pi\,\delta e+\delta F_\gamma
               -\frac{\kappa}{2}[r\,\delta e]_P^Q,
 \qquad \pi=\kappa r_s .
 \tag{2.3}
$$
因此 e,π 的 interior Darboux表示不是把原cap potential整个替掉。特别是 r(Q)尚未由source release强制为零时，最后一项真实存在；r=s、δe=s给一个非零见证。它是既有traces的配对，不是新增独立point oscillator。

共同 proper cut transformation为
$$
 e\longmapsto e+\chi,\qquad q\longmapsto q+\dot\chi,\qquad
 r\longmapsto r,\qquad \chi(t,P)=\chi(t,Q)=0 .
 \tag{2.4}
$$
有限差值恰为
$$
 S_\gamma[e+\chi,r,q+\dot\chi]-S_\gamma[e,r,q]
   =-\frac12[\mu_\chi]_{t_i}^{t_f},
 \qquad \mu_\chi=\kappa\int_\gamma\chi r_s .
 \tag{2.5}
$$
两片各自的 quadratic cut-gauge terms在共同变换下相消，留下真正的cap term。没有要求χ在time caps为零。

例如I=γ=[0,1]，r=s、χ=ts(1−s)，则 μχ(1)=κ/6、μχ(0)=0，phase action的差是−κ/12。这是未释放的physical history phase上的检验；不将r_s≠0的configuration称作已经sewn的全局解。

## 3. Cap补偿后的cut Ward operator

用odd c代替χ，定义明确的proper-cut differential
$$
 Q_{\rm cut}e=c,\quad Q_{\rm cut}q=\dot c,\quad
 Q_{\rm cut}r=Q_{\rm cut}c=0,\qquad c|_{P,Q}=0 .
 \tag{3.1}
$$
它作用于完整history variables，不只作用于source base。由(2.5)，
$$
 Q_{\rm cut}S_\gamma=-\frac12[\mu_c]_{t_i}^{t_f}.
$$
因此对这些phase functions，实际算子
$$
 \mathscr D_{\rm cut}
    =-i\hbar Q_{\rm cut}
          +\frac12[\mu_c]_{t_i}^{t_f}
 \tag{3.2}
$$
满足
$$
 \mathscr D_{\rm cut}\,e^{iS_\gamma/\hbar}=0,\qquad
 \mathscr D_{\rm cut}^2=0 .
 \tag{3.3}
$$
第二式来自Q²=0、Qμc=0和odd multiplication square为零；不是删去cap ghosts后的结论。它给出了本模型的actual prequantum history Ward identity。它仍不是包含全部bulk antifields、BV Laplacian和determinant line的完整mQME；只把(3.3)用于已经声明的sector。

在原symmetric cap potential上，Θγ(Xχ)=μχ/2，所以相应prequantum cap generator有−iħXχ+μχ/2。选择另一cap polarization时必须同时运输(2.3)的Fγ和endpoint项。这正解释了为什么[QB](quantum_collar_and_corners.md)的closed collar kernel不能不加变换地套到真实caps。

## 4. 实际source积分、proper quartet与physical phase sewing

共同q的允许域是一个affine history space。端点值由真实outer data固定；它的variation包含任意smooth endpoint-zero函数，特别是任意compactly supported interior probe。不能把这些variations另外限制为mean zero。

先在有限个dual canonical pairs上用
$$
 \int_{\mathbb R}\frac{dq_a}{2\pi\hbar}
          e^{-iq_a\pi_a/\hbar}=\delta(\pi_a)
 \tag{4.1}
$$
执行source release。对一般finite source basis，πa是κr_s的相应dual moments；basis-change Jacobians按同一canonical half-density运输。以Gaussian regularization解释(4.1)，核为
exp[−πa²/(2ε)]/√(2πε)，对Schwartz tests收敛到δ(πa)。

所有实际endpoint-zero probes一起检测π=0：若smooth π在这些probes上均为零，则它在interior作为distribution为零，连续性再给endpoint值为零。由r(P)=0，
$$
 \pi=0\quad\Longrightarrow\quad r=0 .
 \tag{4.2}
$$
这同时消掉(2.1)的seam phase、(2.2)的cap difference和(2.3)的endpoint mismatch。q的任何reference extension也不影响结果。

**为何不能随便删掉一个source方向。** 如果只保留mean-zero probes，r_s=C便检测不到；两个regional fields可以保留非零integrated seam mismatch。真正的endpoint-zero probe s(1−s)却给C/6。有限矩阵检查也确认：endpoint-zero probes与mean-zero probes不是同一域。

共同e的interior proper direction仍在对象中。固定一个由真实endpoint traces构造的e_ref后，χ=e−e_ref属于endpoint-zero空间。量子auxiliary integration可引入nonminimal pair
$$
 Q\bar c=B,\quad QB=0,\qquad
 Q\chi=c,\quad Qc=0,\qquad
 Q(\bar c\chi)=B\chi-\bar c c .
 \tag{4.3}
$$
每个canonical finite pair的B Fourier integral给δ(χ)，odd integral按
iħ∂c∂barc exp[−i barc c/ħ]=1归一化，故这份quartet contribution为1。这里Qq=dot c仍保留，q的shift为triangular coordinate change；其endpoint值不变。由于(4.1)已令μc=0，cap补偿也随constraint支撑相容。没有在classical field space上取gauge quotient。

**WH2的精确范围。** 在上述normalized cylindrical source/quartet integration中，两个独立regional physical phases产生
$$
 \exp(iS_{\partial,D}/\hbar),\qquad
 S_{\partial,D}
       =\frac{\kappa}{2}\int_I dt\oint_{S^1}
                 (\phi_s\dot\phi-v\phi_s^2),
 \tag{4.4}
$$
并保留独立disk的cap potential
ΘD=κ∮φ_sδφ/2。真实outer traces按原规定匹配全部smooth jets；这里只是在source积分之后形成其共同primitive，不预设任意regional histories本来可拼。

这个积分证明没有把regulator当成区域定义。Continuum source关系由实际smooth domain及(4.2)确定；数值有限basis不是它的替代。另一方面，所有local/antifield insertions及absolute determinant lines上的BV pushforward没有仅凭(4.1)获得定义。因此WH2是这条physical phase与proper-cut sector的量子构造，不是完整G5的完成声明。

## 5. 从独立disk action得到coherent cap kernel

现在独立使用未切分(4.4)，而不是把target定义为source的image。其Euler–Lagrange equation是
$$
 -\kappa\partial_s(\dot\phi-v\phi_s)=0 .
 \tag{5.1}
$$
选零平均primitive消除常数重复后，j=φ_s满足dot j=vj_s。此primitive选择不删除任何改变A的proper field direction。

对n>0写φn=An cos ns+Bn sin ns。直接从ΘD和wall action得到
$$
 \Theta_n=\frac{kn}{4}(B_n\delta A_n-A_n\delta B_n),\qquad
 H_n=\frac{kvn^2}{4}(A_n^2+B_n^2).
$$
置
$$
 Q_n=\sqrt{\frac{kn}{2}}A_n,\quad
 P_n=\sqrt{\frac{kn}{2}}B_n,\quad
 z_n=\frac{P_n-iQ_n}{\sqrt{2\hbar}} .
 \tag{5.2}
$$
则
$$
 \Omega_n=\delta P_n\wedge\delta Q_n,\qquad
 H_n=\frac{vn}{2}(P_n^2+Q_n^2),\qquad
 J_n=\sqrt{\hbar kn}\,z_n .
 \tag{5.3}
$$
这个−i相位固定了与[QD](quantum_observable_domain.md) current convention的对应；不能把另一套oscillator convention直接代入而遗漏它。

保持QD已经声明的quantum input：真实exterior的正频分解、vacuum normal ordering、zero vacuum energy。对一个frequency ω=vn，
$$
 S_{\rm sym}=\int_{t_i}^{t_f}
 \left[\frac{i\hbar}{2}(\bar z\dot z-\dot{\bar z}z)
                  -\hbar\omega\bar z z\right]dt .
$$
Coherent polarizations固定zin与bar zf。必须加入
$$
 f_{\rm cap}=-\frac{i\hbar}{2}
          (\bar z_fz_f+\bar z_i z_i).
 \tag{5.4}
$$
其variation把out端变成−iħ zf δbar zf、in端变成−iħ bar zi δzi；没有暗中固定另外两个coordinates。Stationary paths给
z(t)=zin exp[−iω(t−ti)]、
bar z(t)=bar zf exp[iω(t−tf)]，
bulk integrand为零，而
$$
 S_{\rm on\,shell}+f_{\rm cap}
             =-i\hbar\,\bar z_fz_i e^{-i\omega T},
 \qquad T=t_f-t_i .
 \tag{5.5}
$$
以normal-ordered coherent time slicing和identity normalization执行Gaussian integral，得到
$$
 K_T^{(N)}(\bar z_f,z_i)
      =\exp\!\left[\sum_{n=1}^N
                     e^{-ivnT}\bar z_{f,n}z_{i,n}\right].
 \tag{5.6}
$$
(5.5)计算phase，所选normal ordering固定determinant中的vacuum scalar。若改用Weyl-ordered harmonic Hamiltonian，N modes多出ħvN(N+1)/4的vacuum energy；不能声称classical action独自选择了零vacuum phase。

时间composition使用实际cap measure：
$$
 \int\prod_{n=1}^N\frac{d^2z_n}{\pi}e^{-|z_n|^2}
 K_{T_2}^{(N)}(\bar z_f,z)K_{T_1}^{(N)}(\bar z,z_i)
       =K_{T_1+T_2}^{(N)}(\bar z_f,z_i).
 \tag{5.7}
$$
每个factor是直接收敛的complex Gaussian integral。省掉Gaussian weight，即使zi=zf=0也得到无穷平面体积，因而这不是可忽略的normalization装饰。

### Continuum operator，不以有限mode检查替代

对zi,zf∈ℓ²，(5.6)的exponent绝对收敛。令V_T在ℓ²上乘e^{-ivnT}，则第二量子化Γ(V_T)给强连续unitary group，matrix elements正是(5.6)的极限。其self-adjoint generator是
$$
 \widehat H_D=\hbar v\,d\Gamma(n)=\hbar vL_0 .
 \tag{5.8}
$$
U_T保持QD的energy-Schwartz共同域𝒟∞；因为它与L₀的所有powers交换，已有weighted estimates也保持。故这里已得到完整物理cap operator，而非把几个oscillators外推为无限维证明。

## 6. Cap Gaussian产生的current products与history比较

由(5.6)的vacuum及current插入，
$$
 W_j(t,s;t',s')
 =\frac{\hbar}{k}\lim_{\epsilon\downarrow0}
   \sum_{n>0}n e^{-\epsilon n}
      e^{-in[(s-s')+v(t-t')]} .
 \tag{6.1}
$$
它按distribution解释；regulated sum为z/(1−z)²，z=exp[−ε−i((s−s′)+v(t−t′))]。Antisymmetric part给iħκ⁻¹δ′的CPS commutator，零mode仍不引入。

更直接地，将normal symbols F(bar zf,z)、G(bar z,zi)插入(5.7)，Gaussian moments给每个annihilation/creation pair一个contraction。换回J normalization后恰得
$$
 F\star_\hbar G
   =\mu\exp\!\left(\hbar k\sum_{n>0}
          n\,\partial_{J_n}\otimes\partial_{J_{-n}}\right)(F\otimes G).
 \tag{6.2}
$$
Finite polynomials的证明是实际Gaussian积分；非cylindrical P_Q的延拓使用QD已有的双向weighted kernel estimates与𝒟∞ convergence，不把任意分布插入也算进去。产品、*与time evolution均与QD一致。

在source侧，各个外弧current及joint kernels先由各自区域action定义。它们在原admissible history域上可作为(1.1)的插入；(4.1)施加matching后，common exterior currents与independent target currents相同，proper quartet不收缩这些charged exterior variables。因此声明的physical history phase sewing后使用(5.7)，得到同一个cap kernel及(6.2)。保持真实外圈及同一quantum input的有限合法cuts，同样逐cut执行这份source/quartet integration。

**这条已实现的比较与尚缺箭头。** 已实现的是独立regional action/history phases → normalized cut release与proper quartet → physical wall/cap Gaussian → QD products/energy。仍缺从独立regional完整quantum BV states及各自cap polarization出发、处理所有bulk/corner determinant和local insertions的cochain-level pushforward。两条路线的剩余差异现在可以定位到这些具体资料，而不能再只说“反正CS是Gaussian”。

## 7. 回攻：sharp regional energy不能直接当成独立Fock generator

取同一真实exterior Fock prescription中的
$$
 H_f=\frac{\kappa v}{2}\oint f(s):j(s)^2:ds,
 \qquad f=1_{[0,\pi]},\qquad
 f_m=\frac1{2\pi}\int_0^\pi e^{-ims}ds .
 \tag{7.1}
$$
这里故意检验一个诱人的错误路线：先将global energy硬切成两份，再把每份当作vacuum domain上的regional operator。它不是由独立regional boundary problem推出的量子对象。

Odd m>0有|fm|²=1/(π²m²)，even m≠0为零。用QD的actual stress-vacuum norm，energy截止m≤2R+1给
$$
 \|H_{f,R}\Omega\|^2
   =\frac{\hbar^2v^2}{12\pi^2}
      \left[(R+1)^2-H_{2R+1}+\frac12H_R\right]
      \longrightarrow\infty ,
 \tag{7.2}
$$
其中Hℓ为harmonic number。Different total energies的two-particle vectors正交，scalar counterterm不能消掉此发散。

再积一个sharp时间窗也不足。取T=π/v，考察∫₀ᵀHf(t)dt，则
$$
 \left\|\int_0^T H_{f,R}(t)dt\,\Omega\right\|^2
  =\frac{\hbar^2}{3\pi^2}
       \sum_{\substack{3\le m\le2R+1\\m\ {\rm odd}}}
                       \left(\frac1m-\frac1{m^3}\right)
       \longrightarrow\infty .
 \tag{7.3}
$$
这是logarithmic divergence。特殊的整周时间可能有额外cancellation，(7.3)已经反驳“任何finite time积分都会修好”的说法。

**修订。** Regional quantum输入保留完整history/response和cap pairing，不能普遍要求每片先有上述autonomous Fock Hamiltonian。有限cutoff下互补arcs的creation tails确实相消，恢复H_D；这不说明两个发散的vectors各自已存在。合法的smooth time smearing h∈C_c∞(interior I)则给
g(s)=∫h(t)f(s−vt)dt，Fourier coefficients fm ĥ(mv)快速衰减，所以相应observable属于QD的smooth class。这个构造提供可用的区域插入，但没有用smoothed time window替换原模型的真实caps。

## 8. 当前修订及未完成工作

- WH1：独立regional action的physical boundary phase、真实wall/cap/endpoint terms及common-cut cap Ward operator已构造。
- WH2：实际endpoint-compatible source probes、normalized Fourier/quartet integration把physical phases与cap potentials接到独立disk；full field/gauge object保留。
- WH3：从真实wall action及声明quantum prescription构造continuum coherent cap kernel、时间composition、current contraction与P_Q products/energy。
- WH4：sharp arc energy及sharp time window给出了不能忽略的vacuum-domain反例；正确输入不能只保存每片的孤立Fock Hamiltonian。

下一步需要实际处理完整regional BV states的bulk/ghost determinants、corner polarization changes与pairing domain，使其pushforward在包含local insertions的量子complex上等于WH2–WH3的结果。QB的mixed-antifield trace发散仍未被本页的physical-sector Gaussian自动解决。G1–G6继续保留，传播非阿贝尔模型不被这一Abelian结果替代。

**2026-09-21 后续：** [QT](quantum_cut_quartet.md) 已给本页 proper fiber 的完整 canonical BV quartet、包含局域插入的 normal families 及 Gaussian cochain pushforward。原 bulk/source/corner BV action 实际分解到此模型的证明仍缺，尤其 source-dependent cotangent lift 的 temporal cap 项不能从 physical factorization 自动推断。

来源对照：[Cattaneo–Mnev–Wernli Appendix A](https://arxiv.org/html/2012.13983v3)用polarized cylinder说明Segal–Bargmann transform与cap pairing measure的关系。本页(5.2)–(5.7)从原chiral action独立推导；不以该文的cylinder结果证明本项目的完整open-chord quantum bridge。此前的[原CS模型](u1_cs_open_chord.md)、[QD](quantum_observable_domain.md)与[QB](quantum_collar_and_corners.md)分别提供action、product domain和collar/corner比较的已声明输入。

**Verified:** 28项Mathematica、14项Sage及1项xAct/xTras检查通过；连续cap operator与函数域的依据是上述解析构造及QD estimates。详见[执行记录](checks/physical_wall_caps_verification.md)。

**Assumptions:** source-free trivial-bundle Abelian disk、原joint source/corner域、κ,v>0；physical-history pushforward采用声明的normalized cylindrical pairs；cap operator采用QD的正频、normal ordering及zero-vacuum prescription。

**Not verified:** complete regional quantum BV cochain states及其full mQME/pushforward、bulk/corner determinant transport、全部local BV insertions的renormalization、一般topology/reopening、non-Abelian quantum与传播模型验收。
