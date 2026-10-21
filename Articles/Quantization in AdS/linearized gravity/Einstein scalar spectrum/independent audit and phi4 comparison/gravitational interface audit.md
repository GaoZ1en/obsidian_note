# Einstein–scalar 物理接口核查与局域 φ⁴ 变形

## 结论先行

**本轮新计算支持两个敏感的有限物理检验，但尚未独立完成全部物理接口的证明。**

1. 从标量自由模、空间 ADM 约束、非 global 动量的物理边界条件及密度矩出发，不输入闭式 pair spectrum，精确得到原稿 (4.25) 的两个矩阵。特别是虚边界项确实非零。
2. 在原有 circular 检验未覆盖的非圆对称共振
   \[
   u_{n=2,j=2}\longrightarrow u_{0,0}+u_{0,0}+u_{0,2},\qquad \Delta=2,
   \]
   中，约束项为 \(+2\sqrt{10}/3675\)，虚边界项为 \(-2\sqrt{10}/3675\)，总系数严格为零。这不是先假设 number conservation 后删除该项。
3. \(\Delta=2,E_0=4,J=0\) 的“两标量—两边界引力子”完整退化块 **NOT VERIFIED**：本轮没有从作用量独立重建全部未收缩 \(g^2\phi^2\) 接触项，不能把 Ward 结论当作该矩阵元的直接计算结果。
4. PHY-04 的共同响应域与时间端点条件仍是重要解析接口。PHY-08 的热迹估计确实使用闭式 pair coefficient 的增长界；依赖表应补上这一输入，或另从约束算符证明该界。这是依赖记录的缺口，**不是已证明的循环论证**。
5. 一个负的局域 \(G\phi^4\) 耦合可以在一阶微扰层面实现“与 Einstein 有相同正残差支撑及主符号、但四个低生成元”的边界。已独立验证 contact normalization、有限 primary projections、全径向次数的正性恒等式，以及 \(N=4,5,6\) 的完整 \((P,Q)=(4,0)\) primary 块。负 quartic 本身无下界；这不是稳定非微扰理论或 UV completion 的证明。

这些结论不等价于审定整本 190 页手稿。以下明确区分新算的量、继承的物理输入与尚未完成的论证。

## 1. 版本、约定与核查范围

主引用为 [用户指定 PDF](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>)，题页日期 19 October 2026，PDF 元数据创建／修改日期 20 October 2026；PDF 页码与印刷页码一致。本轮细读 pp14–25、75–84、185–188，按物理依赖补读 pp10–13 与附录 A、B、C、D 的相关部分，未做逐页全稿核查。

以下页面已渲染并实际看图，不再只是文本提取：11–14、24–25、80、85–86、90、105–106。例如 [约束原页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_pages.if0Gj8/constraints-012.png>)、[pair matrix 原页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_pages.if0Gj8/pair-024.png>)、[angular exchange 原页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_pages.if0Gj8/angular-090.png>)、[contact source normalization 原页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_pages.if0Gj8/sources-105.png>)。

CPS 约定对齐 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>)：signature \((-++)\)，\(\Omega=\delta\theta\)，保留边界／corner potential；\(\iota_{X_H}\Omega=-\delta H\)，\(\{b^\dagger,b\}=i\)，\([b,b^\dagger]=1\)。AdS 半径为一，\(\kappa^2=16\pi G\)，\(\mu=\Delta(\Delta-2)\)，固定 boundary cylinder 与 clock，regular center、Brown–Henneaux metric falloff、\(\Delta>1\) source-free fast scalar branch。只商掉 proper diffeomorphisms；两个 \(m\ge2\) boundary towers 不被当作 gauge 删除。

本轮精确 source computations 固定 \(\Delta=2\)，因此 \(\mu=0\)。所有报告的 \(C,X\) 都是 \(E=E_0+Gg+o(G)\) 中 \(g\) 的矩阵元，而不是 \(\kappa^2\) 的系数。模标签 \((n,j)\) 是 radial/angular 标签，不是 chiral \((p,q)\)；两者满足 \(p=n+\max(j,0),q=n+\max(-j,0)\)。

## 2. 新计算究竟从哪里开始

新程序 [gravity_source_audit.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_source_audit.py>) 不导入原研究包的 evaluator、raw pair cache 或目标 \(\gamma_{k\ell}\)。它在 \(y=\sqrt{1+r^2}>1\) 坐标重新构造所有 source 和响应；继承程序采用 disk coordinate，因此不是把原函数换名字调用。

本轮的物理输入仍包括原稿给出的、由 boundary Hamiltonian 得到的 \(H_4^{\rm con}\) 和 mixed cubic。**这是一项新的 source/constraint-level evaluation，不声称已经从完整 Einstein–Hilbert 作用量重新推导整个含边界引力子的非线性 Darboux chart。**

### 2.1 空间几何和极化源

令 \(F=y^2-1\)。背景空间度规和能量测度为
\[
\bar\sigma=F^{-1}dy^2+F\,d\theta^2,\qquad
\sqrt{\bar\sigma}=1,\qquad N_0\sqrt{\bar\sigma}\,dy\,d\theta=y\,dy\,d\theta.
\]
去掉 \(1/\sqrt{2\pi}\) 角归一化后的 \(\Delta=2\) 径向模为
\[
R_{nj}=\sqrt{\frac{(2+n)_{|j|}}{(n+1)_{|j|}}}
 (y^2-1)^{|j|/2}y^{-2-|j|}
 P_n^{(1,|j|)}(1-2y^{-2}).
\]
对 signed leg \(a=(n_a,j_a,\varepsilon_a)\)，creation leg 的 \(\varepsilon_a=-1\)，
\[
\chi_a=-i\varepsilon_a\omega_aR_a/y,\quad
k=\varepsilon_a j_a+\varepsilon_b j_b,\quad m=|k|.
\]
直接极化得到
\[
\rho_{ab}=\tfrac12\left[\chi_a\chi_b+F R_a'R_b'
-\frac{\varepsilon_a\varepsilon_bj_aj_b}{F}R_aR_b\right],\quad Q_{ab}=\chi_a\chi_b,
\]
\[
j_{y,ab}=\tfrac14(\chi_aR_b'+\chi_bR_a'),\quad
j_{\theta,ab}=\tfrac14(\chi_a i\varepsilon_bj_bR_b+\chi_b i\varepsilon_aj_aR_a).
\]
没有把 \(m=0,1\) matter source 丢掉。

### 2.2 约束响应、齐次项与边界条件

标量响应满足
\[
L_m u=\rho/2,\qquad
L_m=-F\partial_y^2-2y\partial_y+2+m^2/F.
\]
用 regular/fast 的有限 Laurent span 解此方程，并将每个解代回完整微分方程。对于这个正的 elliptic operator，regular/fast 齐次核为空；因此代回与端点验证不是任意挑选 particular solution。

在 \((y,\theta)\) 坐标，traceless mixed momentum 为
\[
t^i{}_j=e^{ik\theta}
\begin{pmatrix}A&FB\\ B/F&-A\end{pmatrix}.
\]
由度规的 Christoffel symbols 可重新得到
\[
A'+\frac{2y}{F}A+\frac{ik}{F}B=j_y,\qquad
B'+\frac{2y}{F}B-\frac{ik}{F}A=\frac{j_\theta}{F}.
\]
对 \(C_\pm=A\pm iB\) 用积分因子 \(Fz^{\pm k}\)，\(z=\sqrt{(y-1)/(y+1)}\)。\(|k|\ge2\) 时保留并确定 center-regular homogeneous contribution，使
\[
\lim_{y\to\infty}FB=0.
\]
这个条件不能用 center regularity 替代。两个非圆 source 的齐次系数实际非零，已保留在 [完整 source certificates](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_source_audit_02.json>)。

仅检查 polar 分量 A、B 有限还不够。第二路线另检验 Cartesian helicity：对每个 k，\(C_\pm/F^{|k\pm2|/2}\) 在中心为有限、关于 \(r^2\) 解析的函数；20 个源全部通过。该路线还直接从度规构造 Christoffel symbols，验证张量对称性、tracefree condition、完整 covariant divergence 与 scalar Laplacian，而非重新抄写原来的两个一阶 ODE。

### 2.3 四腿系数与 Bose 因子

原稿 (2.20)、(3.9)、(A.29) 给出
\[
K_4=H_4^{\rm con}-\sum_{m\ge2}m\{D_m,D_m^\dagger\},\qquad W=16\pi[K_4]_{\rm res}.
\]
对四个**带独立槽位**的外腿，遍历六个二元素子集 \(A\)。写
\[
B(A;A^c)=\int_1^\infty y\left[2(A_AA_{A^c}+B_AB_{A^c})-u_AQ_{A^c}-4u_Au_{A^c}\right]dy,
\]
\[
I_m(a,b)=\int_1^\infty z^m(y+m)\rho_{ab}\,dy.
\]
归一化外态的 \(\mathcal N=\sqrt{\prod_I n_{I,\rm out}!\prod_J n_{J,\rm in}!}\)，于是
\[
C=\frac{32}{\mathcal N}\sum_{|A|=2}B(A;A^c),\quad
X=-\frac8{\mathcal N}\sum_{|A|=2,\,|k_A|\ge2}
\frac{I_{|k_A|}(A)I_{|k_A|}(A^c)}{k_A^2-1}.
\]
因子 32 来自 \(16\pi\)、角积分 \(2\pi/(2\pi)^2\) 与两个二次极化的因子 4；重复外腿的槽位计数最后除以 \(\mathcal N\)。同一公式适用于 \(2\to2\) 与 \(1\to3\)，不能额外加一次 chirality factor。非圆 \(1\to3\) 外态有两个相同 ground modes，故 \(\mathcal N=\sqrt2\)。

## 3. 有非零边界交换的两个新检验

### 3.1 原稿 (4.25) 的 angular block

在 [PDF pp24–25](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=24>) 的
\[
|A\rangle=b^\dagger_{0,0}b^\dagger_{1,0}|0\rangle,\qquad
|B\rangle=b^\dagger_{0,1}b^\dagger_{0,-1}|0\rangle
\]
基底中，新程序得到
\[
C=\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},\qquad
X=\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
\]
\(C+X\) 的本征值为 \(-56/5\)、\(-1368/35\)，分别对应 \((A+B)/\sqrt2\)、\((A-B)/\sqrt2\)。这些数只在 source solve 和 integration **完成后**作为 manuscript comparison；没有作为 solver 输入。

以恢复了全部归一化的三类约束贡献分解：

| 元素 | \(t:t\) | \(-u\chi^2\) | \(-4u^2\) | 虚边界项 |
|---|---:|---:|---:|---:|
| AA | \(5248/1225\) | \(-144/7\) | \(-10848/1225\) | 0 |
| AB | \(63272/3675\) | \(-32/15\) | \(-4192/3675\) | 0 |
| BB | \(-496/245\) | \(-2472/175\) | \(-8664/1225\) | \(-48/25\) |

BB 的非零 \(m=2\) 密度矩是 \(3/5\)。若删除虚边界项，两个对角元不再相等，ground-pair descendant 检验会失败。

### 3.2 非圆对称整数质量 \(1\to3\) 共振

入态为 \(b^\dagger_{2,2}|0\rangle\)，出态为 \((b^\dagger_{0,0})^2b^\dagger_{0,2}|0\rangle/\sqrt2\)，两边 \(E_0=8,J=2\)。两个非 global source 的密度矩为
\[
I_2[(0,0,-),(0,2,-)]=\frac{\sqrt3}{70},\qquad
I_2[(0,0,-),(2,2,+)]=\frac{\sqrt{15}}{420}.
\]
它们都不为零，因此这个例子真正检验 boundary anticommutator，而不是通过 angular selection 使其自动消失。

三类约束贡献及边界项为
\[
\frac{\sqrt{10}}{121275}\left(-66722+62164+4624\right)
-\frac{2\sqrt{10}}{3675}=0.
\]
前三项相加正好为 \(+2\sqrt{10}/3675\)。所有六个 source partition、每个源的 \(u,A,B\)、齐次项、微分残差和积分均记录在 [结果的 noncircular 段](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_source_audit_02.json#L1563-L1827>)。

这为 PHY-02 的 number-changing 排除提供了新的有限支持，**不是全指标 intertwiner theorem 的替代证明**。

## 4. 最小两标量—两引力子块：尚未完成的直接检验

目标是 \(\Delta=2,E_0=4,J=0\) 的
\[
|s\rangle=(b^\dagger_{00})^2|0\rangle/\sqrt2,\qquad
|g\rangle=a^\dagger_{2,+}a^\dagger_{2,-}|0\rangle.
\]
原稿的结论由完整变换后的 non-global Ward identity 得到，见 [PDF pp15–16](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=15>)。直接算这个矩阵元需要 mixed-cubic OFPT 加全部未收缩 \(g^2\phi^2\) contact。

继承材料 [Unreduced OFPT calculation:946–993](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L946-L993>) 给出 \(p^2\phi^2\) contact、embedding 二次项及其 vacuum contraction；“mixed displacement–momentum contractions vanish”只针对相应 contraction，不能用于删除 graviton-external matrix element。其 [9075 行](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L9075>) 也明确说明 resonant cancellation 来自 charge identity，而非已列出的全部逐分量顶点。

已知的 mixed-cubic 部分可以单独有限求和：两个 chirality 路径的中间态均有 \(E_{\rm int}=8\)，分母为 \(4-8=-4\)。直接密度积分给出
\[
D_{\rm mix}=\frac{3}{20\sqrt\pi},\qquad D_{\rm pair}=\frac1{140\sqrt\pi},
\]
相应顶点为 \(3\sqrt2/(5\sqrt\pi)\) 与 \(-1/(35\sqrt\pi)\)，故
\[
\langle g|W_{\rm mixed\ cubic}|s\rangle=\frac{24\sqrt2}{175}.
\]
这只是已知的 cubic exchange。若直接 closure cancellation 成立，余下 contact 总数必须为它的负数；**本轮没有把未知 contact 调成这个数**。完整矩阵元仍 **NOT VERIFIED**。这不否定 Ward 路线；它准确界定本次独立 source computation 的覆盖范围。

## 5. PHY-04 与 PHY-08：应保留的条件和需要补齐的依赖

### 5.1 共同响应域不是形式右逆

[PDF pp19–20, (3.22)–(3.23)](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=19>) 要求同一 renormalized Hessian variational domain、固定 boundary clock、正确的 homogeneous data、可解的 lapse/shift reconstruction，以及 \(B(T)/T\to0\)。这些条件足以使 source-space reciprocity 与 averaged Hamiltonian comparison 成立；不能由“有一个形式 Einstein inverse”自动推出。

[PDF pp90–92, PHY-14](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=90>) 只给带额外正质量 wave-domain 假设的有限时间 gauge construction。它不证明无限时间 bounded endpoint；\(\Delta=(1+\sqrt5)/2\) 的 log-free de Donder 障碍也不等于 canonical energy 的极点。

本轮得到的 regular/fast 空间约束解并未重建全部时空 lapse、shift 与 temporal endpoint。因此：

- 新有限 canonical matrix checks 不依赖 PHY-04；
- compact all-label kernel 的 source–Casimir 路线仍应保留 PHY-04 的域条件；
- 若希望移除这项条件，一个明确替代是从 canonical finite sums 直接证明 (4.21)，而不是再增加有限拟合点。

### 5.2 一体项有实际推导，但热迹收敛的输入不能隐去

[PDF pp93–99, Appendix B](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=93>) 并非只用自由对称性宣称 self-energy 为零：它包含 seagull/cubic virial cancellation、共同 regulator 极限、两时间 trace transfer、Newton reconstruction、endpoint asymptotics 和局域 pole matching。

然而 [physics_appendices:645](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L645>) 明确使用“closed pair coefficient grows at most quadratically”来控制热迹与导数，而 [PHY-08 dependency list](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/provenance/claim_inputs/physics.json#L480-L541>) 只列 PHY-01、PHY-13。

正确处理有两种：补列 PHY-05／共同响应域依赖；或从带权 elliptic estimates 与自由模估计独立证明所需 polynomial bound。闭式 connected coefficient 不需要先证明 renormalized one-body finite part，所以这里**没有自动构成逻辑环**。

有限 \(\tau\) 的 \(Z_\tau(r)=-4G/(\tau y)\) 依赖 regulator clock。原稿明确没有证明任意 covariant scheme 的等价或 tadpole 的全阶 nonlinear metric completion。本轮没有重跑所有无限和证书，也没有独立证明 regulator independence；不把这些未完成事项包装成新的反例。

## 6. 局域 \(\phi^4\) 给出的四生成元边界

### 6.1 作用量和 contact coefficient

这是**另一个理论**的有意比较，不是向 minimal Einstein–scalar 原稿悄悄加入项：
\[
\delta S=-\frac{G\lambda}{4!}\int\sqrt{-g}\,:\!\phi^4\!:,
\qquad \alpha=\frac{\lambda}{8\pi}.
\]
normal ordering 在这里明确指定，并保持 physical-gap subtraction。\(g\) 对 \(G\) 的系数中，contact \(2\to2\) 部分为 \(\lambda\int\phi_-^2\phi_+^2/4\)。对单位归一化 labelled primary 的 coincidence function \(F_n\)，physical Fock pair 给出 \(\langle0|\phi_+^2|P_{nn}\rangle=\sqrt2F_n\)。因此
\[
\delta g_{n,0}=\frac\lambda2\int r\,dr\,d\theta\,|F_n|^2
=\frac{\lambda}{8\pi(2\Delta+2n-1)},\qquad
\delta g_{n,s>0}=0.
\]
最后一步与 [PDF p105, (C.3),(C.5)](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf#page=105>) 的 source normalization 一致；局域 scalar coincidence primary 没有非零 spin。

新程序 [gravity_phi4_verification.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_phi4_verification.py>) 不借用这个结果作为 projection 输入，而从 KG 模和 free primary coefficients 逐项相乘，验证了 \(\Delta=2\)、\(0\le k,\ell\le4\) 的 13 个允许 primary coincidence functions。对角项给出 \((-1)^n y^{-4-2n}\)，非对角项严格为零，随后直接积分恢复上述 contact coefficient。非圆 \(1\to3\) contact integral 也为零。

### 6.2 精确达到四生成元边界

取 \(\Delta=2\)、\(\alpha=-40/3\)，即 \(\lambda=-320\pi/3\)。修改后的 spin-zero residual 为
\[
\epsilon_0(n)=\frac{2(45n^4+270n^3+469n^2+192n+8)}
{3(2n+1)(2n+3)(2n+5)}>0\quad(n\ge0).
\]
spin-two residual 不变，其他支撑外项仍为零。故在原稿 Einstein pair kernel 及其正性框架成立的条件下，exact residual support、所有有限 kernel/rank 与 quadratic principal symbol 不变。

其 chiral coefficients 为
\[
\gamma_0=-\frac{704}{45},\quad \gamma_2=-\frac{552}{35},\quad
\gamma_k=-16\ (k\ge4\text{ even}),
\]
\[
e_0=\frac{16}{45},\quad e_2=\frac8{35},\quad
\frac{e_2}{e_0}=\frac9{14},\quad s=-\frac4{315},\quad
r_k=\frac4{315}(C_k-C_4)\ (k\ge4),
\]
于是 \(r_4=0\)、\(r_6=104/315>0\)。原稿 UN-03 的机制给出 leading low algebra \(\mathbb C[c_2,c_3,c_4,c_5]\)，不再是 Einstein 的两个生成元。

直接有限验证没有只代入该 theorem：在对称 translation-invariant 基底 \((p_2^{\rm centered})^2,p_4^{\rm centered}\) 上，用 differential pair Casimir 构造物理 even-channel projectors，再逐 pair 求和。完整二维 \((4,0)\) primary block 得到
\[
W_N(4,0)=\left[-\frac{704}{45}\binom N2-\frac{16}{315}(2N+3)\right]I_2.
\]
已精确验证：\(N=4\) 时 \(-29744/315\)，\(N=5\) 时 \(-16496/105\)，\(N=6\) 时 \(-1648/7\)。两个基向量的残差均为零；不是只验证一条保护态。

完整数值／代数证书见 [φ⁴ verification results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_phi4_verification_01.json>)。

### 6.3 稳定性与结论等级

负 \(\lambda\) 的 quartic 势本身无下界。加入更高阶正的 \(G^2\phi^6\) 可以使多项式势有下界而不改变固定有限粒子数的 order-\(G\) pair coefficient，但大场真空、引力正能量／全局稳定性及 UV completion 都还需另证。本轮仅建立受控的一阶局域 interaction comparison，不能称为一个已经完成的稳定量子引力模型。

这个例子比抽象任意 pair sequence 更接近物理，但仍以原 Einstein connected kernel 和指定量子 prescription 为条件。它不是该 kernel 的独立全指标重推导。

## 7. 证据来源、执行记录与未完成项

新 source solve 共处理 20 个 signed sources，精确复现三项独立 angular matrix elements 和一个非圆 \(1\to3\) matrix element。主成功运行用 Python 3.14.8、SymPy 1.14.0，耗时 23.09 s；φ⁴/contact/finite-block 程序耗时 10.31 s。时间仅描述此机器，不是复杂度界。

- [新 source 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_source_audit.py>) 与 [完整结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_source_audit_02.json>)。
- [新 contact／finite-block 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_phi4_verification.py>) 与 [完整结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_phi4_verification_01.json>)。
- [第二路线 certificate review 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_certificate_review.py>) 与 [通过的完整结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_certificate_review_04.json>)：20 个源的 metric-derived tensor checks 和 Cartesian helicity regularity 全部通过；85 位精度下重新积分原响应乘积，四个 contact matrix elements 与精确值的最大观测绝对差约 \(2.58\times10^{-85}\)。耗时 8.72 s。这是高精度 diagnostic，不是 interval quadrature bound；也是同一作者的不同检验路线，不冒充另一位独立作者。

实现问题均 fail closed：首次 source run 未充分编码 \(y>1\)，SymPy 在 momentum antiderivative 中留下分支歧义的 radicals；改为先置 \(y=1+t,t>0\) 后成功。certificate reviewer 的前三次运行因两类接受条件问题失败：零矩阵被与标量 0 作结构比较；随后发现“非零 residual”实际是未规约的 `0*sqrt(2)`。分别改成逐元素检验和显式 `simplify` 后通过。失败日志 [01](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_certificate_review_01.stderr.log>)、[02](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_certificate_review_02.stderr.log>)、[03](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_certificate_review_03.stderr.log>) 均保留；这些不是物理公式修改，没有将失败运行标为通过。

原研究包的 `check_physics` 64 channels 来自 inherited circular evaluator；其 circular quartets 的 connected boundary exchange 为零。既有 40 个 integer-mass number-changing tests 也是 circular。本次非圆检验的价值正在于非零 boundary exchange。此处不将主审查者另行执行的原包重跑计入本人的新 source derivation，也未修改任何原材料。

仍未完成：完整 graviton-external degenerate contact、all-label canonical summation 到闭式 kernel、PHY-04 的一般无限时间 endpoint theorem、PHY-08 全部无限和／scheme comparison、任何 \(G^2\) spectrum 或非微扰稳定性。
