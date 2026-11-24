# 固定 AdS₃ 接触谱：独立结果与证明线索

固定背景的多项式接触作用不能普遍化约为 φ⁴ 的保粒子数正谱。首阶单腿共振全部消失，但两侧至少各有两条腿时，算术允许的通道确有非零元；偶次作用的首个这类完整块已能精确对角化，其中正耦合恰产生一个负根。另一方面，投影到保数部分后仍有可解的低粒子数谱、手征聚簇核与固定激发的大 $N$ 极限。后者不能替代完整共振的大 $N$ 极限，完整块中的全基态甚至不是本征态。奇次作用的二阶结果又取决于采用哪种重整化条件。

本文保留独立推导的关键步骤、不能省掉的反例和证据定位；完整矩阵构造及后续集成以同目录的 [首阶谱](<Polynomial scalar spectrum.md>)、[三次二阶](<Cubic second-order spectrum.md>)、[聚簇与大粒子数](<Clusters and large particle number.md>)、[更高奇次](<Odd interactions beyond cubic.md>) 和 [验证说明](<Validation and reproduction.md>) 为准。

## 约定与历史定位

单位半径、固定 global AdS₃，$m^2=\Delta(\Delta-2)$、$\Delta>1$、标准无源快衰减与光滑中心。实标量在自由 global 真空下 Wick 正规序。取 $S_{\mathrm{int}}=-\lambda_n\int\sqrt{-g}:\phi^n:/n!$，故定时切片处的 Hamiltonian 顶角用 $+\lambda_n r\,\mathrm{d}r\,\mathrm{d}\theta/n!$，不是 KG 内积测度。KG 归一化模 $(p,q)$ 有 $\omega_{pq}=\Delta+p+q$、有号角动量 $p-q$；$P,Q$ 是各粒子左右次数之和。首阶的物理对象是**所有** $N$ 的完整 $P_{E,J}VP_{E,J}$；仅在保数子算符中或跨 $N$ 已排除时才单独使用 $(N;P,Q)$。Primary 是两 lowering 的共同核；后裔共享系数须先有相应的 intertwining 恒等式。二阶的 $Q$-resolvent（这里 $Q=1-P_{E,J}$，不是次数）在该固定 $J$ 的完整自由块外求和；禁止将零分母当 UV 发散或以无处方的 $0/0$ 代替投影。

下文 `independent/…:a–b` 和正文名均相对 `Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/polynomial scalar interactions/`；`../independent audit and phi4 comparison/…` 指**旧** φ⁴ 目录。行号据本次整理所用的 Git HEAD `bf8b92ac8e2dae32f4e96e17238f9524809d6b82`，可执行 `git show '<提交>:<仓库相对路径>' | nl -ba`，不依赖旧目录留在工作树。标作“本地”的 ignored 日志、矩阵与结果没有该 HEAD blob。φ⁴ 来源地图自己记录的 `670abb1bb4b644a162278415ef94dde09cdeb016` 是**当时**的起点，不能替换本次的快照定位。

## 首阶：从存在性到第一个完整负谱块

**数变选择规则。** 顶角 $r\leftrightarrow s$ 守恒 $E,J$ 要求 $|r-s|\Delta/2\in\mathbb Z$。无入腿或无出腿不能共振。对单腿一侧，令该腿 Jacobi 次数为 $\nu_0$、绝对角动量为 $L_0$，$A=(\sum_i L_i-L_0)/2\in\mathbb Z_{\ge0}$、$K=(n-2)\Delta/2\in\mathbb Z_{>0}$；守恒给 $\nu_0=\sum_i\nu_i+A+K$。在它的正交权重下，其余被积因子 $x^A(1-x)^{K-1}\prod_i P_{\nu_i}$ 只有 $\nu_0-1$ 次，故严格为零。若 $s>r\ge2$ 且 $K=(s-r)\Delta/2$ 合法，用 $s$ 个全基态对 $(K,0),(0,K)$ 与 $r-2$ 个基态；两侧同能同角动量，且所有径向 Jacobi 次数为零，Beta 积分严格为正。故算术对**通道存在性**充分，不对逐元非零充分：φ⁵、$\Delta=2$ 时 $(0,1),(1,1)\leftrightarrow (0,0),(0,0),(0,1)$ 的积分正比于 $\int_0^1 x(1-x)^3(1-3x)\,\mathrm{d}x=0$。反之同质量的完整 $E=6,J=0$ 四维块有 $0,0,\pm\lambda_5/(40\sqrt6\,\pi^{3/2})$，排除“奇次顶角首阶恒零”；真正恒零的是 φ³。对最简 $\Delta=a/b$，偶次首个数变度数为 $2b+4$，奇次仅在 $a$ 偶时有，首个为 $b+4$。`independent/resonances/theorem_and_examples.md:88–268`。其 φ⁶ $2\times2$ 主态块是在收到目标幅度后独立重算，非盲推；相位转换见同档 `:270–322`：$u^{\rm repo}_{pq}=(-1)^{\min(p,q)}u^{\rm branch}_{pq}$，Bose 基用每条外腿符号的乘积转换。

**恰好 $k$ 粒子。** 正规序保数项对角的正二次型由 $k$ 体物理重合映射 $C_k$ 给出，系数为 $\lambda_{2k}/k!$。分离点的 kernel 是 $W_\Delta^k$；把它展开为 $W_{k\Delta+2\ell}$ 的正和，权重是 $(2\pi)^{1-k}\binom{\ell+k-2}{k-2}$。再用径向 Wronskian 证明等 $(E,J)$ 的不同标量 modules 在实际顶角测度下正交，以 Hellmann–Feynman 给同一 module 各模的切片范数 $1/[2(k\Delta+2\ell-1)]$。所以每个标量 primary 质量 $M=k\Delta+2\ell$ 只有一个接触活跃方向（所有后裔同系数），旋转 primary 与该质量的其余拷贝在核中；剥去耦合的系数是

$$
\kappa_{k,\ell}=\frac{\binom{\ell+k-2}{k-2}}{2k!(2\pi)^{k-1}(k\Delta+2\ell-1)}.
$$

这不是将两体有理式按 $k$ 替换；例如三体正谱高径向激发趋于 $1/(96\pi^2)$，两体趋于零。无 spectator 的 $r\leftrightarrow s$ 重合矩阵元也只在共用质量 $M=r\Delta+2u=s\Delta+2v$ 的两个活跃方向间非零，剥去 $\lambda_{r+s}$ 是 $\sqrt{\binom{u+r-2}{r-2}\binom{v+s-2}{s-2}}/[2\sqrt{r!s!}(2\pi)^{(r+s)/2-1}(M-1)]$；反向项是共轭矩阵元，不额外乘二。这不能替代有 spectator 的计算：φ⁶、$\Delta=2,E=10,J=0$，含两个 $(1,1)$ 和一个基态的归一化三体态到五基态的矩阵元为 $\lambda_6\sqrt{15}/(1120\pi^2)$。`independent/minimal-sector/README.md:90–264,338–440`。

**完整正性和第一次失效。** 取 $\lambda_{2k}>0$。无数变共振时完整块是正 $k\to k$ 范数平方的压缩直和；有数变当且仅当最简 $\Delta=a/b$ 满足 $b\le k-2$。数变 $k-j\leftrightarrow k+j$ 必有 $b\mid j$，若另有 $t$ 个 spectator 则 $E\ge(k+j+t)\Delta$。等号在最低可能能量 $E_*=(k+b)\Delta$ 时强制 $j=b,t=0,J=0$，高粒子侧全在基态。设 $r=k-b,s=k+b$。只有 $r$ 粒子质量 $E_*$ 的活跃 scalar primary 与 $s$ 基态耦合；前者因 $r<k$ 对角为零。故剥耦合后得到真正的不变二维块 $\left(\begin{smallmatrix}0&C\\ C&D\end{smallmatrix}\right)$，$C$ 是上一段的 $u=a,v=0$ 系数，$D=\binom{s}{k}\kappa_{k,0}$。根为 $(D\pm\sqrt{D^2+4C^2})/2$。逐一计数同能粒子数：$a$ 奇没有 $N=k$ 层；$a$ 偶则有独立的 $N=k$ 层（$b$ 奇使其与 $r,s$ 奇偶不同），另给每个 $c=0,\ldots,a/2$ 一个 $\kappa_{k,c}$，其它全零。低于阈值或阈值处 $J\ne0$ 的块均半正定；这不是等时相互作用或完整 QFT 的正性断言。

最小例 φ⁶、$\Delta=2,E=8,J=0$，单位 $\lambda_6/(8\pi^2)$ 的完整九维特征式为 $z^5(z-1/30)(z-1/21)(z^2-2z/15-1/2352)$；惯性 $(+, -,0)=(3,1,5)$。仅重建那对 principal states 不足以推出全块唯一负根，需上述粒子数计数与不变性。六例历史独立构造以另一有理 oscillator 基及 Jacobi/Beta 程序先建全矩阵，之后才作相位与对角相似比较；阈下两次精确扫描分别有 21、78 个块。`independent/first-resonant-threshold/theorem.md:17–199,201–277`；`independent/first-resonant-threshold/check_first_threshold.py`；`Polynomial scalar spectrum.md:356–410`。这是父流程提出之后、对候选答案盲的复核，不是第二份无任何输入的研究。

## 保数聚簇：手征理想与非手征的另一种核

**手征部分。** $Q=0$ 的固定 $N$ 物理内积是乘积 Bergman 内积。每个 $k$ 子集的正接触项是投影到其最低 chiral module 的常数倍（因子 $\kappa_{k,0}$），故核恰是对任一 $k$ 重合限制为零的对称多项式理想。用 FJMM Thm. 4.2 的 $s=k-1,r=2,\beta=-1/k$（$\alpha=-k$）得到 admissible Jack 基，用 Ardonne–Kedem–Stone 的 $l=0$ character 转到多项式次数须减 $N$；这些是**发表定理的应用**，独立工作的内容是物理接触到理想的映射与假设校对，不是 Jack 定理的新证明。首个零模次数取最小 admissible 分拆 $\lambda_i=2\lfloor(N-i)/(k-1)\rfloor$，该次数唯一，显式态为 $k-1$ 组均衡分组的组内 Vandermonde 平方之对称化。不能推成主理想：$k=3,N=4$ 次数 6 的核有三维，而最小零模乘次数 2 对称式只有二维。`independent/chiral/independent_derivation.md:109–251`；`independent/chiral/source_evidence.md:5–60` 还记录 $l=0$ 无额外原点约束与文献 HTML 中不影响本例的 min/max 问题。

$N=k+1$ 时重合限制像为 $\mathbb C[x,r^2,r^3]$（重合簇与 spectator 的中心 $x$、间距 $r$），故在 primary 次数 $d=0,2,3,\ldots$ 各一条非零分支，$d=1$ 无。每条谱值为 $\lambda_{2k}\kappa_{k,0}[1+k(-1)^d(\Delta)_d/(k\Delta)_d]$，来自交换 spectator 的归一化簇重合振幅；另有全 $N$ 次数二、三的显式族。φ⁴ 的 multilinear descendant flag 在 φ⁶、$N=4,L=4,\Delta=2$ 从四维原空间与其像合并成五维，故旧快捷法不能推广。`independent/chiral/independent_derivation.md:288–430`。后续协作复核才证明手征零模在完整**首阶**共振下存活：至少 $k$ 条湮灭腿的项由零重合代数湮灭；其余项增 $N$，而 $E-J=N\Delta+2Q$ 会逼出 $Q_{\rm out}<0$。不是等时未投影算符的核，也不保护高阶。见同档 `:432–457`。

**非手征 $N=k+1$（$k\ge3$）。** 取 $m=\min(P,Q),J=|P-Q|$。活跃簇是每个 $a=0,\ldots,m$ 的 scalar identity channel，与 spectator 作 Clebsch–Gordan 耦合成归一化态 $u_a$；令 $v_a=\Pi_{\rm Bose}u_a$。保数接触为 $N\sum_a\kappa_{k,a}|v_a\rangle\langle v_a|$，剥耦合后的非零谱正是 $(m+1)$ 维 Gram 的非零谱：$G_{ab}=\sqrt{\kappa_{k,a}\kappa_{k,b}}(\delta_{ab}+k\langle u_a,\tau u_b\rangle)$，$\tau$ 交换一位簇成员与 spectator。Racah 有限式给出该重叠并可将通道本征向量按 $v_a$ 还原到物理态。主态秩：ground 为 1；非 ground $J=0,1$ 为 $m$；$J\ge2$ 为 $m+1$，对所有 $\Delta>1$ 成立。标量 Casimir／spin-one 投影升算符各给一条冗余；下界经 spectator-operator 三角变换化成受约束多项式的独立性。另起的盲代数复核在四坐标边界专化、取独立 $t_i=x_i y_i$ 来排尽额外关系，不需要假定一般 hypersurface 不可约；它不负责物理通道到多项式的映射。$N=3,m=1,J=2$ 的 $F_1=(\Delta/2)F_0$ 是**确切反例**，秩 1 而非 2（$J=0$ 的引理可延至三坐标）。`independent/nonchiral-clusters/README.md:32–362`；`independent/primary-polynomial-rank-review/review.md:3–213,238–245`。

非手征也有精确零模，但没有上述首阶保护。用 $b^\dagger_{pq}=a^\dagger_{pq}/\sqrt{w_pw_q}$，$w_p=(\Delta)_p/p!$。$Z_k=(b^\dagger_{00})^{k-3}[b^\dagger_{00}b^\dagger_{02}-(b^\dagger_{01})^2][b^\dagger_{00}b^\dagger_{20}-(b^\dagger_{10})^2]|0\rangle$ 张成 $(2,2)$ 核：任何 $k$ 子集必包含一对完整自旋 primary，其物理对角为零。φ⁶、$k=3,\Delta=2$ 时其范数平方 $29/36$，而完整 $E=12,J=0$ 块中它与六基态的**未归一**矩阵元为 $\lambda_6/(28\pi^2)$，所以不在完整核。保数谱（同块的 $N=4$ primary 压缩）为 $\lambda_6/(48\pi^2)\{0,(51-\sqrt{1006})/70,(51+\sqrt{1006})/70\}$，不能当成完整谱。`independent/nonchiral-clusters/README.md:373–503`。

## 大 $N$：固定激发与完整共振并非同一极限

**固定 $(P,Q)$，只取保数项。** 在 $\lambda_{2k}=gN^{1-k}$ 下，减去全基态接触能；归一化 Fock 基由非基态占据 $m_{pq}$ 标记，$\sum p m_{pq}=P,\sum q m_{pq}=Q$，余下填基态。固定 $P,Q$ 时每个含 $h$ 条非基态腿的顶角按 $gN^{1-h/2}$ 计，$h=0$ 的中心化差及 $h=2$ 的同模入出给对角项，最早非对角项在 $h=3$。故全谱按 operator norm 以 $O(N^{-1/2})$ 收敛到 additive occupation 值 $g\kappa_{k,0}/(k-1)!\,\sum_{pq\ne00}(kR_{pq}-1)m_{pq}$；$R_{pq}$ 是报告 (2) 的 KG 归一化 Jacobi 平方矩，单位模 $(1,0),(0,1)$ 有零频率。归一化总 lowering 除以 $\sqrt N$ 后收缩到这两个单位模的湮灭，取共同核得到主态极限（删掉两模），不是说每个有限 $N$ 占据态本身是 primary。`independent/large-N-fixed-shell/large-N-fixed-shell.md:3–33,93–342`。

该误差对本征值也可取到：φ⁴ $(2,2)$ 的无理 $\Delta_*=(\sqrt{13}-1)/2$，$22$ 与 $(11)^2$ 两个主态极限碰撞，有非零的 $N^{-1/2}$ 共振分裂。这是上一轮已保留的真实 $\sqrt N$ 系数分裂在 mean-field 标度下的**归一占据基**解释：$22+00\leftrightarrow11+11$ 的 Beta 顶角直接给劈裂，不把非正交坐标中的 Jordan 外观当证明。共同增长失败是另外一个反例：保数手征 $10+10\leftrightarrow20$，取 $m_{10}=2L,m_{20}=L,P=4L$，该非对角元随 $L^{3/2}/\sqrt N$ 增长，$L\asymp N^{1/3}$ 已不趋零，即使耗尽比例趋零。`independent/large-N-fixed-shell/large-N-fixed-shell.md:405–495`。后续协作的全 $N$ radial $(1,1)$ 族见 `:382–404`；先取固定层极限再作全层直和的 defect 结论见 `:497–662`：φ⁴ 有统一非真空 primary defect gap；$k\ge3$ 的 defect 本征值在 $\mathbb R$ 稠密，仍有纯点谱测度。无理 $\Delta$ 用相反号频率之比无理；有理时用趋零的正 defect 配合负频率逼近任意目标。另有 $k=3$ 无理质量零 defect，排除“仅有理质量才能取到零”。把自由激发加回，在报告给定的小正耦合区间，形式极限算符仍是紧 resolvent；稠密的是 defect，不是总能量。

**完整共振。** 独立的 φ⁶、$\Delta=2$ 计算固定 $E=2N,J=0$（$N$ 是参照全基态粒子数，不固定各态粒子数），$\lambda_6=g/N^2$。用 $C_N=g(N)_3/(1440\pi^2N^2)$ 中心化，$c=1/(6720\pi^2)$；原始 $2\leftrightarrow4$ 顶角线性驱动 $(2,2)$，在有限激发 core 有 $H_N-C_N=g\sqrt N\,c(b_{22}+b_{22}^\dagger)+g\mathcal Q+O_{\rm core}(gN^{-1/2})$。$\mathcal Q$ 包含对角、$I\mapsto I+(2,2)$ 的径向 hopping、以及符合角动量和次数的成对产生/湮灭，不能当作未变形凝聚态的稳定性 Hessian。对全基态，五个非基态输出给精确方差 $g^2c^2(N)_4(N+17/2)/N^4$（$(N)_j$ 为降阶乘）。每个固定次矩只访问与 $N$ 无关的有限配置；除以 $g\sqrt N$ 后只剩线性 quadrature，Gaussian 矩确定性给方差 $c^2$ 的弱极限。有限 core 还可证嵌入后的强 resolvent 极限，不是整个增长块的范数收敛或全 QFT 连续谱。具有非零 source 的偶次一般化是父流程提出后复核：$1\le j\le k-2,j\Delta\in\mathbb Z_{>0}$ 的 $(j\Delta,j\Delta)$ 线性源由 Rodrigues 积分给出，Pochhammer 因子不为零；删去的 $j=k-1$ 恰有末因子为零。方差为各源系数平方和；源集空时该缩放只给点质量。`independent/large-N-resonant/README.md:3–30,32–225,260–320`。

## 奇次二阶：可去的局域数据与真正的谱量

**φ³：先重整化，再取二体交换。** $G_\Delta^2$ 分解为不变标量 modules $G_{2\Delta+2a}$，on-shell fish 有限且质量、gap 裸移位严格负。真空图有独立的局部 UV 对数 $-\lambda_3^2\log(1/\epsilon)/(192\pi^2)$（每体积），不是全空间体积发散；仅需 UV 真空减除。有限质量反项固定物理单体 gap，并同时取消所有后裔的能移；不消去有限 residue 与复合谱权重。不能用锐内部频率 cutoff 下的单个 gap 拟合代替不变处方：例如 $\Delta=2$、内部 pair 能量 $\le12$ 的基态与 $(1,0)$ 自能在 $\lambda_3^2/\pi$ 单位分别为 $-5/224,-19/1008$，去 cutoff 后均为 $-1/32$。另加有限 quartic 是另一个理论，不是纯 cubic 的 UV 必要项。`independent/cubic-renormalization/README.md:3–28,60–252,254–288`。

先在完整自由块上投影，首阶 $PVP=0$ 后才以非共振 energy denominator 构造三次 Schrieffer–Wolff 生成元。正规序交换子的无收缩项相消，六腿项不存在；单收缩保留 $s,t,u$ 的两种时间排序，外腿固定时各连通径向和绝对收敛。四腿 $1\leftrightarrow3$ 仅整数 $\Delta$ 算术允许；有限无奇点 pair response 代回原 Jacobi 积分又恰少一阶，所有这些共振元严格零。这一步而非 φ³ 的奇偶性证明了二阶保数。扣除真空与一体，任意 $N$ 的二阶只是连通二体核的 pair lift，不等于任意 $N$ 已有闭式本征谱。独立 $\Delta=2,E=6,J=0,N=2$ 的矩阵是 $\lambda_3^2/(960\pi)\left(\begin{smallmatrix}-17&8\\8&-17\end{smallmatrix}\right)$（原点正相位；repo 相位非对角为 $-8$）。`independent/cubic-effective/README.md:5–17,113–485,487–550`。

三条互补路线保留如下。它们证明的对象不同，不合并计数：

| 对象 | 独立证明与关键限制 | HEAD 定位 |
|---|---|---|
| 全质量基态 pair binding | 从 $\epsilon_2^{(2)}-2\epsilon_1^{(2)}+\epsilon_0^{(2)}$ 消去全部二、三非基态虚路径的低体阶项，保留 stimulated creation 路径；配对 resolvent 与 Jacobi 矩给收敛 $ {}_4F_3(1)$ 和严格负性。$b(2)=-5/(192\pi)$、$b(3/2)=(15\pi-58)/(120\pi)$，须乘 $\lambda_3^2$。偶整数的零源先投影掉、级数终止。 | `independent/cubic-ground/report.md:3–45,101–265,267–383` |
| 任意外腿的径向矩 | Rodrigues 与 Pfaff–Saalschütz 把 monomial 矩化为 Pochhammer 项，径向 resolvent 剩有限个收敛 $ {}_5F_4(1)$；偶整数精确终止。后续配对算术用 $T(-n-\Delta-l)=-T(n)$ 除掉总二阶极点系数；物理 compatible 同号源不遇三重极点。整矩阵 B 基再校准外腿因子后，剥 $\lambda_3^2/(8\pi)$：偶整数有理、严格半整数属 $\mathbb Q+\mathbb Q\pi$、奇整数属 $\mathbb Q+\mathbb Q\zeta(3)$。去掉同号频率与源次数兼容性，$\Delta=3/2,l=0,F=G=x,\Omega=3$ 出现非零 $\pi^3,\zeta(3)$ 三重极点贡献；此例排除避极点论证，不声称已证这些 periods 的线性独立。 | `independent/cubic-hypergeometric/README.md:3–182,274–348`；`Cubic second-order spectrum.md` 的算术结构段 |
| $\Delta=2$ 全指标 pair-primary 谱 | 从 $\square(K_1K_1)$ 将三路 exchange 化为接触，取直道 log，并用 Legendre 正交性提取所有物理 pair-primary 系数；另用 KG/Beta/OFPT 证有限支撑和低块态归一。若 $M=\max(P,Q)$、$P+Q$ 偶，商掉 $\lambda_3^2/(16\pi)$ 的谱为 $-1/[(M+1)(M+2)]+\mathbf1_{P=Q}/[2(P+1)(P+2)(2P+3)]$。边界通量、OPE 的二因子与 log 到能移转换获后续协作复核，不将复核当第二次独立推导。 | `independent/cubic-pair/derivation.md:3–36,38–298,299–447` |

**φ⁵：固定 gap 不等于固定四腿。** 两顶角间 $G^j$ 的短距次数及 Wick 系数要求 identity、$:\phi^2:$、$:\phi^4:$；四腿 loop 的普适 log 耦合为 $-\lambda_5^2\log(1/\epsilon)/(32\pi^2)$，反项相反。归零真空、固定单体 gap 后，有限 quartic 仍须以二体 matching 给定。报告保存了可用的显式处方：将 $G_\Delta^3$ 分解为权重 $(a+1)/(4\pi^2)$ 的 $G_{3\Delta+2a}$；重交换的首项 $-3\kappa_{2,0}/M^2$ 决定调和减除，余项可作普通收敛和，有限 datum 加 $\kappa_{2,0}\eta_4$。这不是对未匹配谱的唯一性主张。

最高连通四体量则由**所有**五种外部 creation allocations 的单收缩计算，或者对 $N=0,\ldots,4$ 的完整 ground branches 取四阶有限差分。$\Delta=4/3$ 只有内部径向 $0,1$ 非零；$N=4$ 完整块中另有 $(2,2)$ 单粒子态，首阶单腿正交零，二阶因两态场奇偶相反而解耦。故 $B_4(4/3)=-61947/(11648000\pi^3)$（乘 $\lambda_5^2$）是物理量，不只是选取对角元；它不依赖必要反项及有限 sextic，但独立加入有限 octic 或相应新 EFT 形变可改它。`independent/quintic-second-order/report.md:3–129,129–317`。原 quintic 结果是未收到候选值的独立推导；一般奇次为父流程后来提出后的批判复核：对 $n=2k+1$、$\Delta=2k/(2k-1)$，最高 $m=2k$ 连接量的源终止于 $\nu=k-1$；先由算术**加**单腿 Jacobi 零排除首阶，再在顶阶 ground block 以场奇偶排除与单粒子混合。将 $w_j=\binom{2k}{k+j}^2$ 在 $t=2\nu+1$ 围绕中点配对，分母相反、更远的权重更小，故每个 midpoint 和严格负；极点间单调性把它传给真实 $t_\nu=2\nu+1-\nu/k$。这给全 $k$ 的严格负性，不从有限 sign samples 外推；其它质量的 active source pole 不能硬删，那里无普遍负性结论。φ⁷、$\Delta=6/5$ 的明算为 $B_6=-168524890325/(523590680051712\pi^5)$。`independent/quintic-second-order/general-odd-audit.md:3–85`。

## φ⁴ 地图：上一轮结果与本轮应保留的独立材料

[上一轮 Einstein/φ⁴ 合并笔记](<../Einstein audits and phi4 comparison.md>) 已保留 φ⁴ 单腿零、精确两体权重、Wick/Bose/物理 Gram 有限构造、三体 balanced/adjacent 精确秩、任意固定 $N$ 的 balanced 软谱与上沿、手征稳定首低层、奇偶反例、平方根劈裂和 $S_7$ 障碍。位置见该笔记 §“固定背景实 φ⁴”及其历史源表；历史正文分别在 `../independent audit and phi4 comparison/phi4 spectrum.md:189–282,328–571`、`../independent audit and phi4 comparison/structural comparison.md:270–556`、`../independent audit and phi4 comparison/phi4 further structures.md:83–352`、`../independent audit and phi4 comparison/phi4 stable spectra and resonances.md:100–231`。这部分旧地图只覆盖三体平衡及相邻秩；较晚的[接触谱审稿结果](<../Contact spectrum referee results.md>)已补齐全部双次数，另给任意 $N$ 的 $Q=1$ 核、无限共振与最小正本征值的 $O(P^{-1})$ 上界。导入的 Einstein 研究包并非本分支的独立证明。

仍值得保存的 φ⁴ 地图补遗：

- **不依赖旧引擎的精确复用证书。** 取未归一基 $A=(a_{00}^\dagger)^{N-1}a_{11}^\dagger|0\rangle$、$B=(a_{00}^\dagger)^{N-2}a_{10}^\dagger a_{01}^\dagger|0\rangle$。仅从四个低模的 Beta 矩与 literal oscillator contractions 得 $K/c_0=\binom N2I-(2\Delta+1)^{-1}\left(\begin{smallmatrix}N-1&-1\\-(N-1)&1\end{smallmatrix}\right)$，$G\propto\operatorname{diag}(N-1,1)$，$c_0=1/[8\pi(2\Delta-1)]$。$A-B$ 是 primary，$A+(N-1)B$ 是 ground descendant。后者把 full shell 的上沿钉在 $\binom N2 c_0$（任意 $(P,Q)$ 都有 ground descendant），不同于三体 balanced primary 上沿趋于 $c_0$。19 项历史 Sage 检查含两体重合归一与单腿有限零／非零控制；这是先读候选后的独立实现，不是盲验证。`independent/phi4-audit/phi4-source-evidence-map.md:312–349,351–387`；`independent/phi4-audit/reusable_formula_check.py:18–128`。
- **地图中未完整打印于上一轮的复用边界。** 保留 chiral primary 的 Vandermonde 平方核及其 primary character、低 bidegree 的全 $N$ 公式表（尤 $(2,1),(3,1)$、奇 $(3,3)$ 的全 $N$ 值）、谱渐近的 primary/shell 区别、不能用 Bargmann 双变量几何对角代替物理 coincidence（只看最低通道）、正权重保数的 kernel 判据不能搬到 signed mixtures／跨 $N$。斜率碰撞的稳定非正交坐标还给有限 $N$ 的精确 pencil；地图记录上轮合并未打印的 $O(1)$ 中心值 $-(\Delta_*+2)/(13+2\sqrt{13})$。`independent/phi4-audit/phi4-source-evidence-map.md:189–308,389–411`（原有限族 `../independent audit and phi4 comparison/phi4 stable spectra and resonances.md:74–122`，稳定展开 `:124–206`）。把地图作为“哪些证据已保留、哪些当时重跑、什么能复用”的索引，而不是一份待重跑的命令清单。
- **旧机器元数据不等于当前可得的附件。** 地图 `:389–401,413–481` 区分历史 978 检查、602-block certifier、结构／边缘证书、稳定和独立算术证书；不能把不同实现共享的路线加成新的“证明数”。地图 `:437,439,451,462–464,473–475` 的九个旧 JSON 在本地原目录与此 HEAD 均未找到，只可报告其历史索引，不能改成假设可提取的 Git 链接。尤其本地 `independent/phi4-audit/reusable_formula_check.json:77–108` 实存的旧状态、19 项源哈希、4 个匹配标志与脚本哈希不能用当前目录重跑替代。

## 本地证据与历史路径

`independent/` 的 65 个 tracked 文件从上述 Git 快照恢复；17 个未被 Git 跟踪的记录（16 JSON、1 log）在[本地证据归档](<independent-evidence.tar.gz>)，保留原成员路径且逐文件与原件校验。包的 SHA-256 为 `062638724e2faae3cba669aaa3807248a7e512c19fccba17d0f60e840c1b7718`，不随 Git 同步。以下是归档证据，不是新运行。

| 本地路径（相对本文目录） | 值得保留的独特信息 |
|---|---|
| `independent/phi4-audit/reusable_formula_check.json` | 旧仓库状态、源与脚本哈希，以及上述 19 条符号证书。 |
| `independent/first-resonant-threshold/exact_checks.json` | 六个全块的精确惯性／特征式比较以及两个穷尽式阈下扫描；不是只有九维最小例。 |
| `independent/nonchiral-clusters/{exact-checks,operator-checks,nonchiral-zero-checks}.json`；`independent/primary-polynomial-rank-review/exact_checks.json` | 分别为完整历史 2754 项、138 个不依赖通道代码的微分证书、$Z_k$ 与数变元、163 有理及 16 形式参数秩。`independent/nonchiral-clusters/verification.log` 是运行摘要，可作为辅助记录，不是另一份证明。 |
| `independent/cubic-effective/{independent_delta2_results,independent_sw_algebra_results}.json`；`independent/cubic-renormalization/sage_results.json` | 三个 cutoff 的直接完整 Fock 减除；逐 CCR/四腿交换子；原始 Jacobi pair 权和不同外模在截断下不等的具体数表。 |
| `independent/large-N-fixed-shell/{checks,gap-density-checks}.json`；`independent/large-N-resonant/{verification,symbolic_moments,moments_extended}.json` | 稳定壳精确矩阵、无理碰撞及有限 $N$ 误差、gap/density 证书；独立的 ground-column variance、符号三/四阶矩和高 $N$ 收敛慢的见证。 |
| `independent/quintic-second-order/{sage-results,general-odd-sage-results}.json` | 独立 Fock 四阶/六阶差分和完全 ground block 数据，与 tracked Wolfram 报告互补。 |

同目录的 `results/` 不属于 `independent/` 清理范围，但也是 ignored：特别是 `results/phi6_D2_E8_J0.json` 含完整 9×9 矩阵、Gram、数域本征空间与态恢复；`results/cubic_D2_E6_J0.json`、`results/cubic_D3half_E5_J0.json`、`results/cubic_D7third_E20third_J0.json` 有精确矩阵及一般质量求值；`results/threshold_phi{6_D2,8_D3half,10_D4third}_01.json` 有阈值完整核验。不要因链接待迁移而将它们当可丢弃缓存。`results/foundations_exact_02.json` 是 550 项最终主构造证书，`_01` 是 549 项早期修复后版本，不相加；其余并列证书与哈希见验证说明。`delivery_integrity_*.json` 的链接通过判定来自旧路径状态，不是现在的导航检查。

入口与旧路径：

1. 本项目 [README:24–34](<README.md#L24-L34>) 的 `linearized gravity/…` 绝对路径统一改成以该 README 为基点的相对路径；正文、代码和仍在 `results/` 的输出保留各自入口。`:32,34` 的四个独立目录链接合为本文一个入口（φ⁴ 原始来源用上面的历史引用）。不要用概括笔记替代原始证书的具体定位。
2. [Einstein 层 README:23](<../README.md#L23>) 的 polynomial 链接改为 `polynomial scalar interactions/README.md`；`:19` 的上轮入口保留。[AdS 层 README:18](<../../../README.md#L18>) 仍指旧的 `independent audit and phi4 comparison/README.md`，改指同层现存的 `perturbation/Einstein scalar spectrum/Einstein audits and phi4 comparison.md`。Einstein README `:15` 的 CPS 旧绝对路径与 `:43,47` 注明已缺的 OFPT 条目属于另一问题，不随本次清理重写。
3. [验证说明:9–79,159–169,214–251,275–281](<Validation and reproduction.md>) 及四篇正文另有独立报告／脚本的入链。保留能运行的现存链接，用实际相对路径；若目标已移除，保留陈述旁的具体 `HEAD:历史路径:行号` 并指向本文对应段，复算命令标明须先取回脚本与其依赖。若 ignored 历史输出已不在，写明“本地附件未随 Git 保存”，不能链接到不存在的 Git 对象。正文最短定位：`Polynomial scalar spectrum.md:26,600`；`Clusters and large particle number.md:110,188,282,385,494,525`；`Cubic second-order spectrum.md:87,296,356,443,520`；`Odd interactions beyond cubic.md:320`。此建议只针对由本次清理或旧基路径造成的断链，不移写其它内容。

## 开放边界与检查范围

尚未有 $k\ge3$、一般 $N>k+1$ 的非手征 kernel/rank 或全非零谱分类。φ⁴ 目前已知三体全秩及任意 $N$ 的 $Q=1$ 核；更高混合带的多体全核、平衡最小正本征值的匹配下界与混合稳定共振簇的完整分类仍开放。一般 $\Delta$ 的 cubic pair-primary 简式与任意 $N$ 的闭式交换谱、φ⁵ 任意有理质量的完整二阶谱（尤其偶整数已有首阶 splitting），以及一般 EFT matching 需要独立推进。大 $N$ 须区分固定激发的范数极限、先取固定层再直和的 defect、固定 $N$ 的高激发软谱、完整共振的 Gaussian **态**谱测度；尚无共同增长的普遍正向控制、变形 stationary/periodic 凝聚态或高阶统一余项。对快衰减 $\Delta>1$ 的系数结果不定义 BF/log 域、不保证首阶零模的高阶保护，也不构成纯奇次势的非微扰稳定性。

- **本次核对：** 读取项目说明、独立证明与保存报告，对照现行结论与旧 φ⁴ 覆盖，核查 HEAD 路径与行号、工作树中 ignored 证据及入链；未改原文、代码或历史记录。
- **假设：** 仅在各处声明的投影、物理内积、边界条件、固定真空／gap 与相应匹配处方下转述历史结果。
- **本次未验证：** 未执行历史脚本、CAS 或新的数学检验；文中有限检查都是历史报告中的实际范围，后续协作复核也未追认为 fresh discovery。未由本次整理推出新定理或更高阶控制。
