# Wu 2017 六维模型的 anomaly audit

## 1. 判定与范围

**不通过。** 对 [Wu, arXiv:1703.05436v2](https://arxiv.org/abs/1703.05436v2) 的场内容，按照通常的六维 chiral fermion 量子化，完整 charge-spin $SU(2)$ 不能保持为无 anomaly 的动力学规范对称性。即使把引力背景取平直，仍有

$$
I_{8,\mathrm{flat}}^\Psi=-\frac{c_2(E)^2}{24}\ne0.
$$

这是一个非零 anomaly class 的结论，不只是“论文尚未证明 cancellation”。它否定的是上述六维量子规范理论的无 anomaly 完成声明；不否定其经典方程，也不评价作者其他版本的模型。

全文把两个任务分开：先求论文费米子的 anomaly，再检查论文给出的机制能否抵消。没有为得到 cancellation 而暗中加入反手性费米子、二形式场或七维 bulk。

适用条件如下。

1. 两个额外坐标是真正的六维时空坐标，费米子在六维传播；若只是四维理论的辅助记号，此处的六维 index 不适用。
2. gravifield 可逆，并在 $\varphi\ne0$ 的常规动力学分支量子化。最小反例直接选 $\varphi=v>0$。
3. 局域诊断使用平直空间中的紧支集规范变换，或无边界背景。全局讨论另假定 Euclidean spin 背景及独立 $SU(2)$ bundle。
4. 没有未列明的异常补偿 sector。采用文中给出的规范变换律；不把普通 counterterm 与改变场变换律的 Wess–Zumino/Green–Schwarz 扩展混为一谈。

## 2. 旋量与独立自由度

原文 Eq. (55)–(65) 的定位见 [PDF 第 11–12 页](https://arxiv.org/pdf/1703.05436v2#page=11)。需要的输入是负手性投影、charge-conjugate doubling 及其 reality condition。下面用显式矩阵把这些输入翻译为标准六维语言。

取 $\eta=\operatorname{diag}(1,-1,-1,-1,-1,-1)$，用四维 Weyl basis，$\mu=0,1,2,3$，$\gamma_5=i\gamma^0\gamma^1\gamma^2\gamma^3$，令

$$
\Gamma^\mu=1_2\otimes\gamma^\mu,\qquad
\Gamma^5=i\sigma_1\otimes\gamma_5,\qquad
\Gamma^6=i\sigma_2\otimes\gamma_5,\qquad
\Gamma_7=\sigma_3\otimes\gamma_5.
$$

Mathematica 验证了 Clifford 关系及

$$
\Gamma_7^2=1,\qquad
\{\Gamma_7,\Gamma^a\}=0,\qquad
\operatorname{rank}_{\mathbb C}\frac{1-\Gamma_7}{2}=4.
$$

因此原文八分量写法的 $\psi_-$ 只有四个独立复分量。

定义反线性映射

$$
Jv=B_6v^*,\qquad B_6=C_6(\Gamma^0)^T,\qquad
C_6=\sigma_2\otimes C,\qquad C=i\gamma^2\gamma^0.
$$

矩阵检查给出

$$
J^2=-1,\qquad \Gamma_7J=J\Gamma_7.
$$

第二式的精确矩阵含义为 $\Gamma_7B_6=B_6\Gamma_7^*$。所以 $J\psi_-$ 仍有负六维手性；它不是取消 anomaly 的正手性伙伴。第一式则排除了对单个六维 Weyl 直接施加 $J\psi=\psi$ 的非零解。

令

$$
\Psi_-=\begin{pmatrix}\psi_-\\J\psi_-\end{pmatrix},
\qquad
\varepsilon=\begin{pmatrix}0&-1\\1&0\end{pmatrix}=-i\sigma_2.
$$

则

$$
(\varepsilon\otimes B_6)\Psi_-^*=\Psi_-,
\qquad
(\varepsilon\otimes B_6)(\varepsilon\otimes B_6)^*=1.
$$

由于 $U\varepsilon U^T=\varepsilon$ 对 $U\in SU(2)$ 成立，这个 reality condition 与内部 $SU(2)$ 协变。于是

$$
\boxed{\Psi_-\text{ 是一个 }S_-\otimes\mathbf2
\text{ 上的 symplectic-Majorana-Weyl multiplet。}}
$$

复化后的 $S_-\otimes\mathbb C^2$ 有八个复分量；reality condition 留下八个实分量，等于原来的四个复分量。这个等价仅指自由度数，不把受规范作用的 doublet 变成 gauge singlet。

### 一个不影响 anomaly 的相位问题

若逐字采用 $\Psi_-=(\psi_-,J\psi_-)^T$，并将 Eq. (64) 的矩阵理解为普通的 $C_8\bar\Psi^T$ 共轭，则

$$
(\sigma_2\otimes B_6)\Psi_-^*=i\Psi_-,
$$

而非字面的 $+\Psi_-$。可将反线性实结构乘以 $-i$，或一致地重定相位，使其成为上述固定点约定。检查文件保存了这一相位诊断；本文不声称原文各个共轭公式在没有相位约定补充时逐字一致。该调整既不改变 chirality，也不增加自由度。

### Pfaffian 的权重

SMW 的二次 Grassmann 积分给 Pfaffian。在算符可逆的局部 patch 上，其变分满足

$$
\delta\log\operatorname{Pf}K=\frac12\delta\log\det K.
$$

这里的 determinant 指复化后同一 doublet 的算符，而非单个 gauge-singlet Weyl。因此 anomaly 是

$$
\frac12\times(\text{一个复 Weyl doublet 的 anomaly}).
$$

动能中的 $1/2$ 与这一受约束场写法一致，但不能仅看作用量的数值前因子就判定 anomaly 减半：决定因素是积分变量的 reality condition。Hermitian conjugate 负责作用量的 Hermiticity，不是新增相反手性场。

## 3. Spin gauge field 不能再当一个内部 $\mathbf4$

令 $e^a{}_\mu=\chi_\mu{}^a$，$e_a{}^\mu=\hat\chi_a{}^\mu$，并吸收规范耦合常数到连接中。原文 Eq. (66)、(85)、(91) 给出的算符具有如下结构：

$$
D_-:\Gamma(S_-(V)\otimes E)\longrightarrow\Gamma(S_+(V)\otimes E),
\qquad
\sigma(D_-)(k)=i\Gamma^ae_a{}^\mu k_\mu\otimes1_E.
$$

可逆 $e$ 是 $TX$ 与秩六的 spin-vector bundle $V$ 之间的 soldering。它定义 Clifford metric

$$
g_{\mu\nu}=e^a{}_\mu e^b{}_\nu\eta_{ab}.
$$

Spin gauge connection 可以独立于 $e$ 变化；这允许一阶形式的独立连接或 contorsion，却没有产生新的内部四分量指标。与 Levi-Civita Dirac 算符的差是零阶项，固定了主符号便固定其 index class。这里调用的是 Dirac index 的主符号不变性，不是假定 spin connection 必须等于 Levi-Civita connection。

因此正确的内部 twisting bundle 是 $E$ 的 $SU(2)$ doublet：

$$
\boxed{I_8^\Psi=-\frac12[\widehat A(TX)\operatorname{ch}(E)]_8.}
$$

$(\mathbf4,\mathbf2)$ 可用于描述 Lorentz-spin 与内部群的联合表示，但其中 $\mathbf4$ 已是 $S_-$。再乘 $\operatorname{ch}_{\mathbf4}(F_s)$ 会多算一份旋量指标，并在 $F_s=0$ 时就把纯 $SU(2)$ 系数错误放大四倍。

若冻结 $e=\delta$，任意局域 spin rotation 一般不再保持这一固定背景，故不能把它当作“固定平直动能下仍独立存在的普通内部 $SU^*(4)$ 规范对称性”。纯内部 $SU(2)$ 保持这个背景，足以完成下节诊断。

有关引力项的边界：本节是在非退化 spin/Clifford 背景上的标准 anomaly class。独立连接、torsion、measure 与局域 counterterm 可以影响局域 representative，并可在 Lorentz 与坐标 Ward identity 之间重新分配 anomaly。本文不把这直接等同于 Wu 特定量子测度下全部 spin-current Ward identity 的逐项结果，也不为完整非紧群的全局问题给出未做过的分类。

## 4. 完整费米子 $I_8$

令 $\mathscr F$ 是含耦合常数的反 Hermitian 内部曲率，定义

$$
X_F=\frac{i\mathscr F}{2\pi},\qquad
\operatorname{ch}(E)=\operatorname{tr}_{\mathbf2}e^{X_F},\qquad
c(E)=\det(1+X_F).
$$

楔积省略。形式 Chern roots 为 $x,-x$，从而

$$
c_2(E)=-x^2,\qquad
t_2=\operatorname{tr}_{\mathbf2}X_F^2=2x^2=-2c_2,\qquad
t_4=\operatorname{tr}_{\mathbf2}X_F^4=2x^4=\frac12t_2^2.
$$

选定 chirality/index 约定 $I_8^{\mathrm{complex},+}=[\widehat A\,\mathrm{ch}]_8$，负手性取负号。Lorentzian $\Gamma_7$ 与 Euclidean orientation 的识别若反向，则全文 anomaly 整体反号，消去条件不变。Pontryagin 类用

$$
\widehat A(TX)
=1-\frac{p_1}{24}+\frac{7p_1^2-4p_2}{5760}+\cdots.
$$

展开

$$
\operatorname{ch}_{\mathbf2}(E)
=2+x^2+\frac{x^4}{12}+\cdots
=2-c_2+\frac{c_2^2}{12}+\cdots
$$

并取八形式分量：

$$
\boxed{
I_8^\Psi
=-\frac{7p_1^2-4p_2}{5760}
-\frac{p_1c_2}{48}
-\frac{c_2^2}{24}.
}
$$

等价的 trace 形式为

$$
I_8^\Psi
=-\frac{7p_1^2-4p_2}{5760}
+\frac{p_1t_2}{96}
-\frac{t_4}{48}
=-\frac{7p_1^2-4p_2}{5760}
+\frac{p_1t_2}{96}
-\frac{t_2^2}{96}.
$$

这个计算与 [Lee–Tachikawa Eq. (2.14)、Appendix A](https://arxiv.org/pdf/2012.11622v2#page=8) 的 half-doublet 归一化相符，手性取相反号。其曲率记号与本节不同，应通过 $c_2$ 比较混合项，不能直接比较未经转换的 $\operatorname{tr}F^2$ 符号。

| 项 | 本模型系数 | 解释 |
| --- | --- | --- |
| $c_2^2$ | $-1/24$ | 纯内部 gauge anomaly |
| $p_1c_2$ | $-1/48$ | mixed gauge–gravity |
| $p_1^2$ | $-7/5760$ | pure gravity 的 reducible 部分 |
| $p_2$ | $+1/1440$ | pure gravity 的独立 invariant |

纯引力权重等于一个复 gauge-singlet Weyl：$\frac12\dim\mathbf2=1$。这与八个独立实分量相符。

这些八形式是在特征类或 families/index 意义下使用；不能因单个六维流形上八形式逐点为零就宣称 anomaly 为零。物理 Ward identity 由 descent 给出的六形式描述。

### 平直背景上的显式局域诊断

选 $e=\delta$、spin connection 为零、$\varphi=v>0$、scale connection 为零，只保留 $SU(2)$ gauge field。取 Cartan 子群上的规范化 Abelian 连接 $a$，使 doublet 的形式曲率 roots 为 $f,-f$，其中 $f=da$。则

$$
I_8=-\frac1{24}f^4,\qquad
I_7^{(0)}=-\frac1{24}a f^3,\qquad
\delta_\lambda a=d\lambda,\qquad
I_6^{(1)}=-\frac1{24}\lambda f^3.
$$

采用 descent 约定

$$
dI_7^{(0)}=I_8,\qquad
\delta I_7^{(0)}=dI_6^{(1)},\qquad
\delta_\lambda\Gamma=2\pi i\int_X I_6^{(1)}.
$$

在局部 Euclidean 坐标域内可选

$$
f=B_1\,dy^1\wedge dy^2+B_2\,dy^3\wedge dy^4+B_3\,dy^5\wedge dy^6,
\qquad
f^3=6B_1B_2B_3\,d^6y.
$$

三个 $B_i$ 非零，并令 $\lambda$ 紧支集于该域、积分不为零，就得到非零的规范变分。场可在此域外平滑延拓；这不是依赖非平凡拓扑、引力方程或强耦合的现象。

$c_2^2$ 是非零的 gauge anomaly class。通常局域 counterterm 可改变 descent representative，不能在保持同一场内容与规范变换律时消去该 class。

## 5. 原文的 cancellation 机制检查

完整经典作用量的核对范围是 [Wu Eq. (87)、(91)，PDF 第 16–17 页](https://arxiv.org/pdf/1703.05436v2#page=16)。除上述费米子外，列出的场为普通 gauge vectors、gravifield 与 scalar。没有额外反手性费米子、self-dual tensor 或带所需异常变分的 Green–Schwarz/Wess–Zumino 项。此判断来自实际作用量核对，不仅是全文关键词检索。

普通实 boson 和相应 gauge-fixing ghost 不提供抵消该 chiral $SU(2)$ class 的费米子/Pfaffian 相位。尤其在上述纯 $SU(2)$ 背景上，gravifield、scalar 和 scale gauge field 都没有充当 $SU(2)$-shifting compensator 的变换律。

纯 gauge 部分虽然因式分解，但

$$
I_8^{\mathrm{gauge}}\propto c_2^2
\quad\not\Rightarrow\quad
\text{已经完成 Green–Schwarz cancellation}.
$$

通常六维 Green–Schwarz 还需要二形式 gauge field、相应的 modified field strength/Bianchi identity、异常规范变换及 $B\wedge X_4$ 耦合；全局定义另有量子化条件。原作用量中的 gravifield field strength 是二形式，不意味着 gravifield 本身就是这种二形式 gauge potential。

在完整 gravity 背景上，仅加入普通 $B\wedge X_4$ counterterm、却不改变 quantum chiral spectrum，也无法消去 $p_2$ 项：多个四形式的乘积只能生成 $p_1^2,p_1c_2,c_2^2$。若新增 self-dual tensor，其自身的 gravitational anomaly 必须一起重算；此处没有把那种新 spectrum 排除在所有可能完成理论之外。

该结论足够回答原问题：按已给出的场与作用量，anomalies 没有 cancellation。经典守恒流并不能代替量子 Ward identity 检查；原文结尾本身也把量子效应列为待研究。

## 6. Global $SU(2)$ 与 mod-12：正确的检查

在通常 spin 背景与独立 $SU(2)$ bundle 的范畴内，

$$
\pi_6(SU(2))=\mathbb Z_{12},
\qquad
\Omega_7^{\mathrm{spin}}(BSU(2))=0.
$$

因此“$\pi_6\ne0$，所以在完整局域 cancellation 后必有一个独立 global anomaly”不成立。对已全局定义并完整消去局域 anomaly 的该类体系，没有来自此 bordism group 的剩余 torsion anomaly。[Lee–Tachikawa，Sec. 1、2.7、3.2](https://arxiv.org/abs/2012.11622v2) 解释了传统 mod-12 条件与正确量子化 Green–Schwarz 机制的联系。

用其整数归一化写不含纯引力的部分：

$$
\widetilde I_8
=\frac{n}{24}c_2\left(c_2+\frac{p_1}{2}\right)+m c_2^2,
\qquad n,m\in\mathbb Z.
$$

代入本节已经推导的多项式，得到

$$
n=-1,\qquad m=0.
$$

在该文讨论的、以 $c_2$ 作为 integral degree-four background 的常规二形式补偿机制中，必要条件为 $n=0\pmod{12}$。本模型 $n=-1$ 不满足。它甚至不能仅靠任选一个局域 GS 系数就得到该框架内全局量子化的补偿。

传统 embedding 计算出现的 phase 为 $\exp(2\pi i n/12)$。在本模型尚有局域 anomaly 时，不将它单独包装成已独立定义的 bordism-invariant obstruction；这里的用途是检查假设的 GS completion 是否成立。

只复制十二个同手性 SMW doublet 会使此整数条件通过，却仍有

$$
\widetilde I_8^{(12)}
=-\frac12c_2\left(c_2+\frac{p_1}{2}\right)\ne0,
$$

还要真的加入补偿 sector，且处理纯引力项。因此“multiplicity 为十二”与“所有 anomaly 已消去”是两回事。

这一段没有分析非 spin 流形上的 $(\mathrm{Spin}\times SU(2))/\mathbb Z_2$ 结构、不同 global form 或额外拓扑 sector。它们可能改变全局分类，但不能消除本次在平直局域背景上发现的 perturbative $SU(2)$ anomaly。

## 7. 单独处理 $SG(1)$

**结论：本文没有证明完整 scale Ward identity 无 anomaly，也没有把它判为不可补偿。它与已确定的 chiral $SU(2)$ 失败是不同问题。**

使用原文 [Eq. (82)–(85)，PDF 第 15–16 页](https://arxiv.org/pdf/1703.05436v2#page=15) 的变换。令 $\sigma=\ln\xi$，将归一化 scale connection 记为 $w$，则

$$
g\mapsto e^{-2\sigma}g,\qquad
\varphi\mapsto e^\sigma\varphi,\qquad
\Psi_{\mathrm{old}}\mapsto e^{3\sigma/2}\Psi_{\mathrm{old}},
\qquad w\mapsto w+d\sigma.
$$

原变量前有 $\varphi^2$ kinetic prefactor。定义去掉它的 canonical spinor

$$
\widehat\Psi=\varphi\Psi_{\mathrm{old}},
\qquad
\widehat\Psi\mapsto e^{5\sigma/2}\widehat\Psi.
$$

这解释了原文 $3/2$ 与通常六维 spinor 权重 $5/2$ 的关系；不能拿前者当作普通内部 $U(1)$ 电荷塞进 Chern character。原文的 fermion derivative Eq. (85) 也不是简单另加一个 Hermitian $U(1)$ connection 的设定。

在 $\varphi>0$ 的分支取固定参考尺度 $\mu>0$，令

$$
\tau=\ln(\varphi/\mu),\qquad
\bar g=e^{2\tau}g,\qquad
\bar w=w-d\tau,\qquad
\Psi_{\mathrm{inv}}=e^{-5\tau/2}\widehat\Psi.
$$

由于 $\delta_\sigma\tau=\sigma$，这些是 scale-invariant variables。因而必须区分：固定补偿场后的通常 Weyl/trace anomaly，与包含补偿场的 gauge redundancy 是否能用 measure/counterterm 一致实现。非零 trace anomaly 本身不证明后者不可实现。

若某个量子 scheme 中

$$
\delta_\sigma\Gamma
=\int_X d^6x\,\sqrt g\,\sigma\,\mathcal A_6,
$$

则所需补偿必须满足

$$
\delta_\sigma S_{\mathrm{WZ}}
=-\int_X d^6x\,\sqrt g\,\sigma\,\mathcal A_6.
$$

六维 dilaton Wess–Zumino construction 的存在有标准文献依据，例如 [Corianò et al., arXiv:1311.1804](https://arxiv.org/abs/1311.1804)。但要应用到本模型，仍须计算其实际量子算符、ghosts、背景连接及相互作用产生的 anomaly coefficients，指定 measure 与允许的 counterterms，并写出对应的补偿。本文没有计算这些完整数据；也没有把一个普通 $\varphi^6$ potential 叫作已验证的 WZ completion。补偿场为零的分支不由上述变量变换覆盖。

即使成功解决 scale redundancy，$\tau$ 对内部 $SU(2)$ 仍是 singlet；一个保持原有 $SU(2)$ 变换律的 scale WZ 项不能取消第 4 节的纯 $c_2^2$ class。因此这里留下的 scale 计算不妨碍本次 anomaly-free 与否的否定判定。

## 8. 修复需要改变什么

就局域 chiral anomaly 而言，最直接的谱修复是在同一 $SU(2)$ doublet 表示中增加一个独立的相反六维手性 SMW multiplet：

$$
I_8^{\Psi_-}+I_8^{\Psi_+}=0.
$$

这确实取消上述 gauge、mixed 和 pure gravitational chiral polynomial，净 mod-12 权重也归零。它是对原模型场内容的修改，不是重新解释原有的 charge conjugate。反手性配对不自动消去 parity-even trace anomaly，也不是对整个修改模型的量子一致性、重整化或 unitarity 证明。

其他路线需要明确新增物理数据：更复杂的 chiral spectrum 与全局量子化的 tensor/GS sector，或者指定一个七维 anomaly inflow 系统。把 $SU(2)$ 降为背景全局对称性时，非零结果可作为 't Hooft anomaly，但那也改变了“动力学 gauge symmetry”的原问题。

本次检查在原场内容下已结束，结果为失败。完整 $SG(1)$ 量子审计以及任何新 completion 是独立后续任务，不伪装成本次已经证明的结果。
