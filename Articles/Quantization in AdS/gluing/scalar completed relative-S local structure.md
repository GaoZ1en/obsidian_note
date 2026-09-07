# 完成的 relative-S 区域局域代数

日期：2026-09-07。本文给出 [有限插入 time-slice 反例](<scalar insertion time-slice obstruction.md>) 后的**另一份明确目标**：增加 coefficient distribution topology、多插入 coefficients 和显式 $\hbar$ saturation。模型、区域作用量、joint histories、response、interaction 与局域 insertion labels 均保留；改变的是生成操作与完成。

这是可与原研究路线比较的修复版本，不把原 $\mathfrak Q_V^{\mathrm{fin}}$ 重新命名为已满足 time-slice。其独立目标按 §1 给出；下面从区域 relative-$S$ coefficients 构造实际 inverse，没有假定全函数类的 quantum Møller automorphism。

## 1. 明确的 completion 与独立目标

沿用 [自由实现](<scalar local structure implementation.md>) 的 smooth torus $M_s$ 和已构造的 on-shell polynomial coefficient space
$$
\mathcal W_s=\mathcal P_\mu(M_s)/\mathcal I_s,
\qquad \mathcal I_s=\{(f_k):\kappa_k(f_k)=0\text{ 对全部 }k\}.
$$
每个 coefficient 有有限 field degree。在固定 compact support、closed allowed-wavefront-cone 和有限 degree 的 stratum 上使用 normal distribution topology，再取 $\mathcal I_s$ 的商。$\mathcal I_s$ 闭，因为全部 smooth solution polarization pairings 连续。

具体的允许 sequential limit 必须有受控的 lifts：每个 coefficient 选择同一 stratum 中的实际代表 $f_j$，满足 $f_j\to f$ 于 normal topology，物理极限定义为 $[f]$。代表及其 bounds 随源记录保留；不假设抽象商中的任意收敛序列自动具有这样的 lifts。若另一组受控 lifts 表示相同物理序列并收敛，则在共同 stratum 上用 $\mathcal I_s$ 的闭性得到相同极限。共同 cone 的有限并仍须满足 admissibility。不允许无限 degree 极限偷渡成 polynomial。

区分两个 ambient rings：
$$
\mathcal W_s^+=\mathcal W_s[[\hbar]][[\lambda]],
\qquad
\mathcal W_s^{\mathrm L}=\mathcal W_s((\hbar))[[\lambda]].
$$
在 Laurent ring 中，每个固定 $\lambda$ coefficient 的 $\hbar$ 次数有有限下界，该下界可依赖 $\lambda$ 阶。所有最终物理对象回到非负次幂的 $\mathcal W_s^+$。固定双阶的 product 只有有限个输入双阶和 contractions；degree bounds 因此给输出的有限 degree bound。Normal topology 的 tensor／product hypocontinuity 和 proper pushforward continuity 控制 Wick contractions；两列收敛 lifts 有界，故其乘积也收敛于受控的输出 stratum。这里不宣称整个 direct union 上乘积联合连续。所用分布运算类型见 [Brouder–Dang–Hélein §§3–6](https://arxiv.org/html/1409.7662)；Green operators 还使用自由实现 §5.2 的传播与 properness 论证。

对于 open $O\subset M_s$，先取所有有限 local insertion lists $F_1,\ldots,F_n\in\mathcal P_{\mathrm{loc}}(O)$。从区域 $G_s,W_s,T_R$ 计算
$$
S_V\left(\sum_j s_jF_j\right)
=S(V)^{-1}_\star\star S\left(V+\sum_j s_jF_j\right)
$$
的全部 auxiliary-source Taylor coefficients；$s_j$ 是独立 formal parameters。等价地可用归一化 coefficients
$$
O_{V;n}(F_1,\ldots,F_n)
=\sigma_0\left[S(V)^{-1}_\star\star
T_R(e^{iV/\hbar},F_1,\ldots,F_n)\right],
$$
因为此时已允许 Laurent scalars。$n=1$ 是原来的 retarded insertion；$n\ge2$ 是新增数据。时间排序始终在 off shell 计算，最后 $\sigma_0$；不在 on-shell classes 上定义 $T_R$。

定义 $\mathfrak A_V^{\mathrm L}(O)$ 为 $\mathcal W_s^{\mathrm L}$ 中由这些 coefficients 生成的最小 unital $*$-subalgebra，并要求：

1. 按 $\lambda$ 完成，固定 formal truncation 中的运算局部有限；
2. 对上述逐 coefficient 的允许 sequential limits 闭合，取极限时每个 $\lambda$ 阶有共同 $\hbar$ 下界；
3. 允许 $\mathbb C((\hbar))$ scalars，故可以作 explicit $\hbar$ division。

最终定义
$$
\boxed{\mathfrak A_V^+(O)
=\mathfrak A_V^{\mathrm L}(O)\cap\mathcal W_s^+.}
$$
Intersection 是定义的一部分，即明确的非负系数 saturation；不把 Laurent generators 当作全部物理 observables。原 $\mathfrak Q_V^{\mathrm{fin}}(O)$ 自然包含其中，但没有宣称两者相等。

独立 uncut target 使用自己的 action、Cauchy Green maps、Wick kernels、同一 local renormalization rule 和相同三个完成步骤定义 $\mathfrak A_{M,V}^+(O)$。它没有使用区域 image。区域呈现与独立目标的比较在 §5 才证明。

## 2. 源、完整 kernel 与局域性

区域 source 由 collar/chart local insertion lists、mixed slots、formal Laurent words 及上述相容极限组成。每个 word 或极限的归一化步骤为：计算 off-shell retarded/multi-insertion graphs，作 Wick products，逐 $\lambda^r\hbar^s$ 得有限-degree coefficient，再用区域 Cauchy transform $\kappa_k$。

完整零关系是
$$
\mathcal N_{r,s,k}=0\quad\text{对全部 }r,s,k.
$$
在非负物理 source 中还要求全部 $s<0$ 的 $\mathcal N_{r,s,k}$ 为零。这允许中间表达有负次数，只要其实际 on-shell negative coefficients全部消失。取商后的 kernel 是显示的全部 coefficient criterion，仍不是有限生成或可有限终止的零判定算法。

Chart／partition representatives 的连续重表达保持完整 kernel；$\kappa$ 在允许 kernel strata 上连续，故对相容 sequential limits 没有遗漏的新零关系。每个限元保留其实际 coefficient representative／极限，不以“近似稠密”代替在未完成代数中的相等。

**包含与因果性。** 同一 insertion lists 的支撑包含给 $O_1\subset O_2$ 的单射及严格复合。对 spacelike separated $O_1,O_2$，causal factorization 给两组 relative $S$ series 对易；逐所有 source derivatives，得到所有 multi-insertion coefficients 对易。有限 products 和 Laurent scalars 保持之；通过共同 compact/cone strata 上的 Wick hypocontinuity，允许 sequential limits 仍对易。最后取非负 intersection。所以本定义具有因果性；retarded image 的自由泛函支撑是否扩大不进入这个论证。

## 3. 用局域补偿构造 time-slice inverse

本节 $V=-\lambda\int g\phi^4/24$ 在有限时间、紧空间上 compact。设 $N\subset M_s$ 包含一张 smooth spacelike Cauchy surface $\Sigma$。$\Sigma\cong\mathbb T^2$ 紧，可在 $N$ 内选更小的完整 Cauchy slab $N_0$，其 closure 位于 $N$。取 smooth cutoff $\eta$ 支撑在 $N$、在 $N_0$ 邻域等于一，令
$$
V_N=\eta V,\qquad D=V-V_N=D_-+D_+,
$$
其中 $D_\pm$ 分别支撑在 $N_0$ 的严格过去／未来。这里 $\eta V$ 表示乘 interaction density；所有对象仍来自匹配区域 density labels。时间有限与空间紧使它们 compact，且均为 $O(\lambda)$。

**第一步：区域 insertion coefficients 内的补偿。** 在 $\mathfrak A_V^{\mathrm L}(N)$ 中可以计算
$$
\begin{split}
S_V(-V_N)^{-1}_\star\star S_V(-V_N+F)
&=S(V-V_N)^{-1}_\star\star S(V-V_N+F)\\
&=S_D(F),\qquad \operatorname{supp}F\Subset N_0.
\end{split}
$$
因为 $V_N=O(\lambda)$，它的 inverse 是实际 $\lambda$-adic inverse；每阶只用有限个支撑在 $N$ 的 multi-insertion coefficients。$\hbar$ division 正是 §1 明示的 Laurent 操作，不能在原有限非负代数中默许这一步。

**第二步：识别补偿后的自由场。** 因果因子化先消去未来 $D_+$，再对过去 $D_-$ 得
$$
S_D(F)=U^{-1}_\star\star S(F)\star U,
\qquad U=S(D_-).
$$
因此 $\mathfrak A_V^{\mathrm L}(N)$ 包含 $\operatorname{Ad}_{U^{-1}}$ 作用后的、支撑在 $N_0$ 的全部 free CCR polynomial coefficients。

**第三步：完整自由核确实进入同一个完成。** 对任意 $f_k\in\mathcal E'_{\mu,\mathrm{sym}}(N_0^k)$，在稍大的固定 compact 内平滑，得到 normal-topology 收敛的 smooth kernels $f_{k,j}$；必要时先把原 cone 稍微加宽为同一闭允许 cone。固定 compact 上与 forbidden cones 的分离保证这一步可行。该 regularization 使用的序列收敛与 normal topology 相容，参见 [Dąbrowski–Brouder 的收敛与密度结果](https://arxiv.org/html/1308.1061)。

再用有限 chart partitions 及 Fourier／tensor approximation，为第 $j$ 个 smooth kernel 选有限分离变量张量 $p_{k,j}$，使同一 compact 上的 $C^j$ 误差小于 $1/j$。于是 $p_{k,j}-f_{k,j}\to0$ 于 $C^\infty$，从而也于 normal topology；不是对非可度量空间任意使用对角抽取。对称化后 degree 始终为 $k$。有限 tensor 对应 free CCR products；反复减去有限 Wick contractions，恢复其正常序 homogeneous coefficient。因此其受控极限包含每个完整 $f_k$ 的物理类。

§1 的 completion 明确包含这些限元，故这里得到 actual inclusion
$$
\operatorname{Ad}_{U^{-1}}\mathcal W_s(N_0)((\hbar))[[\lambda]]
\subset\mathfrak A_V^{\mathrm L}(N).
$$
它不是对原有限-word algebra 的稠密性冒充满射。

**第四步：整个 ambient 上的可逆性与非负次数。** $U=1+O(\lambda)$ 有实际 inverse，故 conjugation 在 Laurent ambient 上可逆。还须证明它保持 $\mathcal W_s^+$。定义
$$
H_-:=\frac\hbar i\log_\star U.
$$
Linked-component cancellation 给 $\log_\star S(D_-)$ 的 connected graph expansion。含 $r$ 个 interaction vertices 的 connected graph 至少有 $r-1$ 条 contraction lines；乘外面的 $\hbar$ 后次数非负。因此 $H_-\in\lambda\mathcal W_s^+$，每阶仍 finite degree。

现在
$$
\operatorname{Ad}_{U^{-1}}
=\exp\left(-\frac i\hbar\operatorname{ad}_\star H_-\right).
$$
$[H_-,F]_\star$ 至少含一个 $\hbar$，因为 zeroth-order product 交换；商去此 $\hbar$ 后仍非负。$H_-=O(\lambda)$ 使 exponential 逐阶局部有限，逆变换同理。每个固定双阶只使用有限个 fixed graph kernels，其 Wick contractions 对受控 lifts 连续，所以两个方向都保持上述允许限元。实 interaction 与既定 $T_R$ 的 unitarity 给 $U^*=U^{-1}_\star$，故 conjugation 也保持 $*$。这只构造 inner conjugation；没有给全 $\mathcal P_\mu$ 任意 time-ordered insertion 或 Møller automorphism。

自由完整核的 time-slice 已由区域 $\tau_\chi^{\otimes k}$ 证明，故 $\mathcal W_s(N_0)=\mathcal W_s(M_s)$。结合第三、四步，得到
$$
\mathcal W_s^{\mathrm L}
=\operatorname{Ad}_{U^{-1}}\mathcal W_s^{\mathrm L}
\subset\mathfrak A_V^{\mathrm L}(N)\subset\mathcal W_s^{\mathrm L}.
$$
取非负 intersection，最终有
$$
\boxed{\mathfrak A_V^+(N)=\mathfrak A_V^+(M_s)=\mathcal W_s^+.}
$$
这表示任意完整 Cauchy neighbourhood 生成整个 incoming-reference algebra；不同相互作用的局域 assignment 仍不同，不能因此把局域 dynamics 说成自由理论。

**实际 inverse 程序。** 给定 $A\in\mathfrak A_V^+(M_s)$：先算 $B=U\star A\star U^{-1}$，再逐完整 coefficient 用自由 $\tau_\chi^{\otimes k}$ 得 $B_N$；把其有限-tensor近似按第一步的 relative compensation 写为 $N$ 中的 multi-insertion expressions，再施用 $\operatorname{Ad}_{U^{-1}}$ 并在声明 topology 中取极限。所得元素等于 $A$。这给 support-controlled representative、实际 onto 和全部 kernel，而非事后将 target 定义成 inverse 的像。

### 3.1 因果凸 GH 开集的 Cauchy inclusion

令 $O\subset M_s$ 因果凸且 GH，$N\subset O$ 包含 $O$ 的 Cauchy 面。$g|_O$ 未必在 $O$ 中紧支撑，所以不能直接把 $V|_O$ 塞进 compact $S$-matrix。这里使用 local cutoff families，并核对它们与 §1 固定 $V$ 的 local algebra 是同一个对象。

**固定 compact 上的 cutoff 运输。** 将有限 insertion list 的支撑包在 $O$ 内一个有紧闭包的因果凸 neighbourhood $K$ 中，取在其稍大 collar 与 $g$ 一致的 compact interaction cutoffs $b$。若 $b_1,b_2$ 均如此，因果凸性允许分解 $b_2-b_1=c_-+c_+$，其中 $c_-$ 的支撑不交 $J^+(K)$，$c_+$ 的支撑不交 $J^-(K)$。因果因子化给
$$
S_{b_2}(F)=U^{-1}\star S_{b_1}(F)\star U,
\qquad U=S_{b_1}(c_-),\quad \operatorname{supp}F\Subset K.
$$
不同分割的右侧在这些 generators 上相同，故诱导相同局域 map；三个 cutoffs 的 maps 都保持同一 source label，因此复合相容。这里改变 cutoff 得到共轭同构，不是算符相等。固定 $K$ 时用同一个 $U$，第四步的估计使 map 及 inverse 保持其受控 coefficient limits。区域 Green restriction 与共同 $T_R$ 识别在 $O$ 内计算和 ambient 中计算的同一 compact graphs。允许 ambient $V$ 作 cutoff evaluation，得到 [BDF §6.3](https://arxiv.org/html/0901.2038#S6.SS3) 的 compatible families 在这些固定 compact 构造上的实现。

这里只对具有共同 compact source neighbourhood 的构造运输极限；不宣称 directed union 的完成自动与任意 cutoff evaluation 交换。最后的 onto 将先在每个有限 source list 上证明，再使用 §1 同一 ambient 中的最小闭合性。

**Past-compact 代表与补偿。** 对固定 compact target support，在目标和 $\Sigma$ 以前选一张 Cauchy 面 $\Sigma_1$。乘 smooth temporal cutoff，取 interaction density $v=O(\lambda)$ 在 $\Sigma_1$ 以前为零、在目标及一个较窄 Cauchy neighbourhood $N'\subset N$ 上与原 density 一致。$v$ past compact；$v'$ 取支撑在 $N$、在 $N'$ 等于 $v$，并仍在 $\Sigma_1$ 以前为零。所有最终插入及补偿 labels 都在 $\Sigma_1$ 以后；上一段的局域 maps 最后把它们运输回原 $V$。

若 density $v$ past compact，则对 compact labels $F$ 可用在 $J_O^-(\operatorname{supp}F)$ 上与 $v$ 一致的 compact $b$ 定义 $S_v(F)=S_b(F)$。两个这种 $b$ 的差不交对应因果过去，故 causal factorization 给实际相等。这个相等的理由比“cutoffs 在 label 支撑上相同”强，须与上一段的共轭比较区分。

对 $F$ 的任一 compact support $K\Subset N'$，past compactness 保证 $J_O^-(K)\cap\operatorname{supp}v'$ 紧，可选 $b'$ compactly supported in $N$ 在此处等于 $v'$。再选 compact $b$ 在包含 $\operatorname{supp}b'$ 与 $K$ 的紧集的因果过去上等于 $v$。由 [Chilian–Fredenhagen §3](https://arxiv.org/html/0802.1642#S3) 的局域补偿恒等式，或直接在源中相消 $S$ factors，得
$$
\alpha(S(F))
=S_v(-b')^{-1}\star S_v(-b'+F)
=S(b_-)^{-1}\star S(F)\star S(b_-),
$$
其中 $b-b'=b_-+b_+$ 是相对 $K$ 的因果分割。这些 expressions 的像在 $\mathfrak A_v^{\mathrm L}(N)$ 中。定义所需的更换 $b,b'$ 不改变相应 causal past 的 density；故左侧相同，不只是两个未知 implementers 的共轭。扩大 $K$ 时也相容。

对一组支撑在同一 compact $K\Subset N'$ 的 free kernels，固定一个 $b_-$。以第三步的 finite-tensor approximants 定义 $\alpha$，等于同一个 inner conjugation。两个 $N'$ representatives 若在 on-shell 商中相同，合并其 compact supports 并用同一 $b_-$，便知其像相同。对两个元素的和、乘积同理；因此 free full-kernel time-slice 给整个 $\mathcal W(O)$ 上良定义的 linear unital $*$-endomorphism。对输入有共同 compact/cone/degree bounds 的序列，选同一个自由 cutoff 和 compact implementer，各固定双阶仍有受控输出。完整 $\kappa$ kernel 随之保持。

**形式 inverse 的实际递推。** 本文只要求 formal perturbation theory，故不必从 locally inner 推断一个未经证明的全局 automorphism。由 $b_-=O(\lambda)$ 及第四步的非负次数证明，
$$
\alpha=\operatorname{id}+\sum_{j\ge1}\lambda^j a_j
$$
作用于 $\mathcal W(O)^+$ 及其 Laurent ambient。定义 linear maps
$$
b_0=\operatorname{id},\qquad
b_n=-\sum_{j=1}^n a_jb_{n-j},\qquad
\beta=\sum_{n\ge0}\lambda^n b_n.
$$
由 coefficient recursion 得 $\alpha\beta=\operatorname{id}$；形式几何级数 $\sum_{r\ge0}(-(\alpha-\operatorname{id}))^r$ 同时给 $\beta\alpha=\operatorname{id}$。首三阶是
$$
b_1=-a_1,\quad b_2=a_1^2-a_2,\quad
b_3=-a_3+a_1a_2+a_2a_1-a_1^3.
$$
每个固定双阶只含有限次已定义的连续运算和有限个 compact causal enlargements；不需要同一个 compact 覆盖所有 perturbative orders。没有负 $\hbar$ 被引入。因此 $\alpha$ 在所声明形式空间上确有双向 inverse，且其 image 已在 $\mathfrak A_v^{\mathrm L}(N)$ 中。对 target coefficient $A$ 的逆向表示就是：算 $B=\beta A$，逐核用自由 cutoff 把 $B$ 移到 $N'$，再用上述 compensation 表示 $\alpha B=A$。

**回到原 interaction 及全部完成。** 上述每个有限 source list、每个 formal jet 的构造使用共同 compact labels 及受控的 finite-tensor limits。用第一段同一 compact 上的 intertwiner 把等式两边运输到原 $V$；复合相容性使逐阶结果一致，且早期 source labels 仍在 $N$。于是原 $V$ 的每个 relative-$S$ generator 属于 $\mathfrak A_V^{\mathrm L}(N)$。后者在同一 ambient 中已对全部规定操作闭合，最小性直接给
$$
\mathfrak A_V^{\mathrm L}(O)\subset\mathfrak A_V^{\mathrm L}(N).
$$
反向包含来自 isotony，再取同一个非负 intersection。这个最后步骤也覆盖 source compacts 不统一的极限，无须把局域 cutoff maps 强行延拓到这类序列。最终
$$
\boxed{\mathfrak A_V^+(N)\xrightarrow{\;i_{NO}\;}\mathfrak A_V^+(O)
\text{ 是同构。}}
$$
不同辅助 cutoffs 给相同 physical inverse，因为它们都是同一个 inclusion 的双向 inverse。本节的 onto 使用显式 formal recursion；不声称已经证明非微扰 locally inner endomorphism 的 onto。区域 response、因果凸 $O$ 上的 Green restriction、局域 prescription 和完整 source relations 是全部输入；独立 uncut theory 没有参与定义这个 inverse。

## 4. 辅助选择、复合与动力学

不同 $N_0,\eta,\chi$ 的 inverse 都与同一个局域 inclusion 双向复合为恒等，故物理代数上的 inverse 相同；ambient representatives 不必相同。

外部 switching 的明确过去／未来分割给 [弱耦合笔记 §4](<scalar interacting local structure.md>) 的 $S_V(v_-)$ conjugation；现在它及 inverse 与新增完成相容。共同分割下的 $S_V(a)S_{V+a}(b)=S_V(a+b)$ 给复合；不同分割只在相关局域代数上比较。

Wick smooth-bisolution changes的 $\alpha_d$ 逐核连续、保留非负次数和 local supports，故保持新完成与 saturation。对 finite renormalization 必须使用完整源变换
$$
\widehat S_V(F)=S_{Z(V)}\bigl(Z(V+F)-Z(V)\bigr).
$$
一阶是 $DZ(V)F$；高阶包含 $D^nZ(V)$ 的 contact terms，正是本完成保留全部 insertion lists 的原因。Locality 与 formal invertibility 将左右两套有限 source coefficients 逐阶互相表示，支撑仍在原 insertion support 中。在同一 Wick ambient 下，它们生成的 algebra 相同，故再取同样的受控闭合、$\lambda$ completion 和非负 intersection，仍给
$$
\widehat{\mathfrak A}_V^+(O)=\mathfrak A_{Z(V)}^+(O).
$$
这一步使用 generator identities 与闭合的最小性，未把 $Z$ 或 $T_R$ 连续延拓到任意 distribution-kernel insertion。复合使用 full chain rule；不能只验证单插入的 $DZ$ 后省略高阶 contact terms。

实际经典 switched energy、背景 Peierls derivative 和自由 quantum energy extension 保持 [弱耦合笔记](<scalar interacting local structure.md>) 的原式。量子全阶 time-slice 的上述证明只需 causal factorization 和 coefficient control，不从 energy conservation 推出；也未新增全量子 stress Ward identity。

## 5. 从区域细分到独立整体的比较

粗细分 map 首先重表达每个 compact insertion list 的 collar labels，并通过实际剩余端口 response 组合重算自由 kernels。区域唯一性给相同 $G,W$；coherent $T_R$ 给每张图、每个 contact coefficient 相同。因此 $S_V$、$O_{V;n}$、所有 $\mathcal N_{r,s,k}$ 及 Laurent words 相容。

每个 fixed coefficient 的 chart partition 和 coordinate transport 连续，保持共同 compact／cone／degree bounds，故双向 map 保持 sequential closure和负次数的零关系。共同 refinement 构造实际 inverse。于是有
$$
C_{\mathcal D''\mathcal D'}C_{\mathcal D'\mathcal D}
=C_{\mathcal D''\mathcal D}
$$
及 local inclusion square。Time-slice 的 $V_N,D_\pm,U,\tau_\chi$ 全都从相同区域 density、response 和 cutoff 构造；逐图／逐核交换，再逐允许极限交换。因此 time-slice inverse 与 finite release／refinement 交换。中间 clusters 保留其余 ports；没有假设每个 intermediate cluster 自带完整 reflecting-wall Wick algebra。

最后按独立 uncut action 构造 §1 的 target。Form assembly intertwines $K,G,W$，相同 local extension rule intertwines $T_R$；每个 target insertion／kernel及其限元有连续有限 collar representative，给 exact onto。完整 $\mathcal N$ 核保持，给单射。由上述直接区域构造，这不是两个已知 global isomorphisms 的形式复合。

## 6. 与原路线的对应和边界

| 项目 | 此修复版本 |
|---|---|
| 单插入与有限乘积 | 原类自然包含，原类自身的 no-go 保留 |
| 自由 coefficient 类 | 同一完整 compact microcausal polynomial-kernel 类 |
| 新增操作 | 全部 relative-S 多插入 coefficients、明确 normal-topology limits、Laurent计算后取非负部分 |
| 包含／因果性 | 原 insertion labels 加 causal factorization，完成后保持 |
| Cauchy time-slice | compact torus 上直接补偿；因果凸 GH 开集上以 compact causal cutoffs 拼接同一 inverse |
| 有限 cutting／uncut comparison | 同一 coefficients 的连续区域重表达与 response uniqueness |
| 原路线是否原封不动成立 | 否；需要接受这里明示的 completion／saturation 改动 |

此 construction 与 [Chilian–Fredenhagen §3](https://arxiv.org/html/0802.1642) 的 compensation 思路相符；本文另行固定原先缺失的多插入、非负 $\hbar$ 边界、区域 source relations 和有限 refinement。不能以引用代替这些类型变化。

**Verified:** Compact-torus compensation、受控 lift／kernel 闭性、fixed-cone Wick continuity 和 §3.1 的 formal inverse recursion；自由核与 causal factorization 在前两份实现稿中给出。有限 canonical diagnostic 检查了 $[q^4/24,p^2/2]/(i\hbar)=q^3p/6$ 及二阶 conjugation、无负次数的二阶 star-log polynomial；独立的非交换矩阵计算检查递推至三阶的双向复合。一般 $O$ 的局域补偿采用所引文献的 causal-cutoff 恒等式，onto 则由本文的形式递推和闭合最小性证明，不把文献的整体理论当作矩形区域输入。

**Assumptions:** 声明的 enlarged completion／saturation、受控 representative limits、逐 coefficient 有界 degree 与允许 cone；compact spatial torus、compact $V$；coherent local $T_R$、unitarity、connected graph grading 和完整 contact normalization；合法有限 clusters。

**Not verified:** 原有限插入类的 time-slice（已证 false）；任意 non-polynomial history/equicausal Møller stability；实际量子级数收敛、无限时间 adiabatic limit、态／表示。
