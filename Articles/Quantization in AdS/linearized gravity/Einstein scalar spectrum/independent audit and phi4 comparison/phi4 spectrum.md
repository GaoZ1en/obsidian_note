# 固定 global AdS₃ 上实 φ⁴ 的一阶谱：独立推导与有限构造

## 结论与证据等级

**在下述作用量、快衰减边界条件、KG 归一化和物理 gap 的 Wick 减除下，一阶共振算符完整可构造，且所有两粒子通道系数为**

\[
\boxed{c^{\phi^4}_{k\ell}=\frac{\delta_{k\ell}}{8\pi(2\Delta+2k-1)},
\qquad k,\ell\ge0,\quad k+\ell\in2\mathbb Z.}
\tag{0.1}
\]

这里 \(c_{k\ell}\) 是**单位 \(\lambda\) 的归一化两粒子能量移位**，不是四模重叠积分，也不是未经边界 extrapolate 归一化的 OPE 系数。对任意 \(\Delta>1\)，包括整数例外点，一阶共振的 \(1\leftrightarrow3\) 系数都为零；整数点的消失有全指标 Jacobi 正交性证明，不依赖数值外推。

在每个固定有限 \((N,P,Q)\) 扇区，构造 Bose primary 空间、Gram 矩阵和完整特征多项式只需有限精确线性代数。本文完成的是这个**一阶系数问题**；物理能量采用

\[
E=N\Delta+P+Q+\lambda\,\kappa+o(\lambda)
\tag{0.2}
\]

的固定标签记法。它并不额外证明连续量子场论中可微精确谱分支的存在，也不证明余项在 \(N,P,Q\) 或 UV cutoff 上一致。

| 内容 | 本文证据 |
|---|---|
| 模归一化、原 PDF 相位、整数点 \(1\leftrightarrow3\) 全指标零 | 解析恒等式及精确有限检验 |
| 所有 \((k,\ell)\) 的 (0.1) | CG 归一化、局域 coincidence map、Ward 投影证明 |
| 任意有限粒子数/能级的一阶谱 | Bose primary 有限构造；不是闭式根式公式 |
| 两粒子与小三粒子矩阵 | 从径向积分直接计算，并与独立 projector/Fock lift 路线逐矩阵比较 |
| 一般 mixed-sector kernel、全谱渐近、可积性 | 本文不主张；结构问题另见配套比较 |

独立计算程序不导入原研究包的任何引擎、缓存或参考值。原文仅用于核对共同的作用量符号、标量边界条件与自由模相位；不把 Einstein pair 系数作为本模型输入。完整执行记录见 [精确检查结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks.json>)；结构层面的进一步比较见 [structural comparison](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>)。

## 1. 作用量、边界时间与 canonical 归一化

取 AdS 半径 \(L=1\)、signature \((-++)\)、global AdS 的 universal cover 时间 \(t\in\mathbb R\)：

\[
ds^2=-f\,dt^2+f^{-1}dr^2+r^2d\theta^2,
\quad f=1+r^2,
\quad\theta\sim\theta+2\pi,
\]

\[
S=-\frac12\int d^3x\sqrt{-g}\left[g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi
+m^2\phi^2\right]
-\frac{\lambda}{4!}\int d^3x\sqrt{-g}\,\phi^4,
\quad m^2=\Delta(\Delta-2),\quad\Delta>1.
\tag{1.1}
\]

\(\phi\) 为实标量。中心正则，\(\phi=O(r^{-\Delta})\)，并要求相应 differentiated falloffs。边界 cylinder 的时间 \(t\) 固定，不做依赖 \(\lambda\) 的 clock rescaling；不改为 alternative quantization，不加入额外有限边界多迹耦合。标量变分边界项按 \(r^{2-2\Delta}\) 衰减，故此域上的自由边界变分和 symplectic flux 消失。

这是**固定背景的 probe scalar**，没有动力学 metric、引力约束或 Brown–Henneaux 边界振子。与 Einstein–scalar 的比较首先是共同自由 Hilbert 空间的比较，不是把引力交换改名为接触相互作用。

按 [formalism 的自由量子化约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L82>) 和 [AdS 的有限时间/谱终点](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L229-L282>)，

\[
\pi=\frac r f\dot\phi,\qquad
H_0=\frac12\int dr\,d\theta\left[
\frac f r\pi^2+rf(\partial_r\phi)^2+\frac1r(\partial_\theta\phi)^2+rm^2\phi^2\right].
\tag{1.2}
\]

相互作用 Hamiltonian 的测度为 \(N\sqrt\sigma\,drd\theta=r\,drd\theta\)，**不是** KG 内积的 \(r/f\,drd\theta\)。后者为

\[
(u,v)_{\mathrm{KG}}=i\int_0^\infty\frac{r\,dr}{f}\int_0^{2\pi}d\theta
\left(u^*\partial_t v-v\partial_tu^*\right).
\tag{1.3}
\]

正频模展开与自由能量为

\[
\phi=\sum_{p,q\ge0}(a_{pq}u_{pq}+a^\dagger_{pq}u^*_{pq}),
\quad[a_{pq},a^\dagger_{p'q'}]=\delta_{pp'}\delta_{qq'},
\quad H_0=\sum_{p,q}(\Delta+p+q)a^\dagger_{pq}a_{pq},
\tag{1.4}
\]

其中固定的真空常数已从能量中减去。对应 \(\Omega=i\sum\delta a^\dagger\wedge\delta a\)、\(\{a^\dagger,a\}=i\)。没有额外 gauge quotient。

### 1.1 与原 PDF 完全相同的模相位

令

\[
x=f^{-1},\qquad y=1-x=\frac{r^2}{1+r^2},\qquad
n=\min(p,q),\quad j=p-q,\quad a=|j|.
\]

采用

\[
u_{pq}(t,r,\theta)=\frac1{\sqrt{2\pi}}
\sqrt{\frac{(\Delta+n)_a}{(n+1)_a}}
 e^{-i(\Delta+p+q)t+ij\theta}
 x^{\Delta/2}(1-x)^{a/2}P_n^{(\Delta-1,a)}(1-2x).
\tag{1.5}
\]

这就是封存研究包内、封面日期为 2026-10-19 的 190 页 [原 PDF](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/docs/ADS3_Einstein_Scalar_Master_Note.pdf>) **PDF 第 11 页＝印刷第 11 页，(2.5)–(2.7)** 的自由标量约定；原文标量振子 \(b_I\) 在本文记作 \(a_{pq}\)，且 \(I=(n,j)\leftrightarrow(p,q)\)。已实际核对该页图像，留存 [模约定页面](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_original_modes_page11.png>)。

本文推导常用等价形式

\[
u_{pq}=\frac{(-1)^n}{\sqrt{2\pi}}
\sqrt{\frac{n!\,\Gamma(n+a+\Delta)}{(n+a)!\,\Gamma(n+\Delta)}}
 e^{-i(\Delta+p+q)t+ij\theta}
 y^{a/2}(1-y)^{\Delta/2}P_n^{(a,\Delta-1)}(1-2y).
\tag{1.6}
\]

Jacobi 反射恒等式

\[
P_n^{(\alpha,\beta)}(-z)=(-1)^nP_n^{(\beta,\alpha)}(z)
\]

说明 (1.5) 与 (1.6) **完全相同，不需要再重相位振子**。最低两个径向次数的直接检查为

\[
n=0:\ 1,\qquad
n=1:\ P_1^{(\Delta-1,a)}(1-2x)=\Delta-(\Delta+a+1)x
=-P_1^{(a,\Delta-1)}(1-2y).
\tag{1.7}
\]

特别地

\[
u_{00}=\frac{e^{-i\Delta t}}{\sqrt{2\pi}}f^{-\Delta/2},
\qquad u_{nn}(0,0)=\frac{(-1)^n}{\sqrt{2\pi}}.
\tag{1.8}
\]

利用 Jacobi 范数

\[
\int_0^1dy\,y^a(1-y)^{\Delta-1}
[P_n^{(a,\Delta-1)}(1-2y)]^2
=\frac{\Gamma(n+a+1)\Gamma(n+\Delta)}
{(2n+a+\Delta)n!\Gamma(n+a+\Delta)},
\tag{1.9}
\]

代入 (1.3) 即得 \((u_I,u_J)_{\rm KG}=\delta_{IJ}\)。\(2\omega\)、径向变量 Jacobian 的 \(1/2\) 与 \(1/\sqrt{2\pi}\) 都不能省略。

## 2. 保持物理 gap 与真空能量的明确减除

选取质量参数 \(m^2=\Delta(\Delta-2)\)、同一快衰减边界条件的 AdS-invariant 自由真空，并用保持 AdS isometry 的点分裂/Hadamard 正则化记

\[
G_\epsilon=\langle0|\phi^2|0\rangle_\epsilon.
\]

正则化 coincidence 常数取同一 invariant prescription；其有限部分也固定在这个 prescription 内。定义

\[
:\phi^4:_\Delta=\lim_{\epsilon\to0}
\left[\phi^4-6G_\epsilon\phi^2+3G_\epsilon^2\right],
\qquad
\mathcal V=\frac1{24}\int r\,dr\,d\theta\, :\phi^4:_\Delta.
\tag{2.1}
\]

因此相互作用为 \(\lambda\mathcal V\)。写成 bare 加 counterterm 的语言，Hamiltonian 中

\[
\delta m^2=-\frac\lambda2G_\epsilon,
\qquad
\delta\mathcal E_{\rm vac}=+\frac\lambda8G_\epsilon^2
\tag{2.2}
\]

正好实现 (2.1)。本阶 tadpole 是局域常数质量项，没有需要固定的新波函数归一化；不再保留一个任意有限质量项来改变 \(\Delta\)。

有

\[
\langle0|\mathcal V|0\rangle=0,
\qquad P_{N=1}\mathcal V P_{N=1}=0.
\tag{2.3}
\]

真空能量和一粒子对角移位因而不变。若整数 \(\Delta\) 造成一粒子与三粒子自由能量简并，下一节的全指标零排除了可能破坏这一结论的一阶简并混合。这里固定的是物理 scalar gap，不是在计算结束后偷偷重定义边界时间或总粒子数项。

## 3. 一阶共振 Hamiltonian 与所有 number-changing 零

将有限时间 Dyson 一阶振幅按自由能量差分解。零频部分定义为有限外态矩阵元上的 secular 投影

\[
\Pi_0\mathcal V=\lim_{T\to\infty}\frac1T\int_0^Tdt\,
 e^{iH_0t}\mathcal V e^{-iH_0t}.
\tag{3.1}
\]

对非整数 \(\Delta\) 不能不加说明地把 (3.1) 换为一个 \(2\pi\) 周期平均。它也是自由简并空间中的 \(P_E\mathcal VP_E\)，不是 global AdS 的 in/out S-matrix。

设 \(e_I=u_I|_{t=0}\) 且

\[
C_{AB;CD}=\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,
 e_A^*e_B^*e_Ce_D.
\tag{3.2}
\]

normal-ordered 四次式中 \(2\to2\) 的组合数为 \(6\)，故

\[
\boxed{\mathcal K:=\Pi_0\mathcal V
=\frac14\sum_{\substack{p_A+p_B=p_C+p_D\\q_A+q_B=q_C+q_D}}
 C_{AB;CD}\,a_A^\dagger a_B^\dagger a_Ca_D.}
\tag{3.3}
\]

这个公式只是在证明下面的 \(1\leftrightarrow3\) 零之后才是完整的一阶有效算符。所有 \(C\) 在本文域上收敛。

### 定理 1：\(1\leftrightarrow3\) 在每个可能共振点都消失

令 \(A\) 是一个 incoming 模，\(I_1,I_2,I_3\) 是三个 outgoing 模。角积分与共振同时要求

\[
\Delta+p_A+q_A=3\Delta+\sum_i(p_i+q_i),
\qquad p_A-q_A=\sum_i(p_i-q_i).
\]

等价地，

\[
p_A=\Delta+\sum_i p_i,\qquad q_A=\Delta+\sum_iq_i.
\tag{3.4}
\]

因此只有整数 \(\Delta>1\) 可能有非零角积分的共振。只看能量而遗漏自旋，会误把半整数点也列为例外。

令 \(n_i=\min(p_i,q_i)\)、\(j_i=p_i-q_i\)，并定义

\[
s=\frac{\sum_i|j_i|-|\sum_i j_i|}{2}\in\mathbb Z_{\ge0}.
\]

由 (3.4)，

\[
n_A=\Delta+\sum_i n_i+s.
\tag{3.5}
\]

去掉非零归一化常数与整体相位后，重叠积分等于

\[
\int_0^1dy\,y^{|j_A|}(1-y)^{\Delta-1}
P_{n_A}^{(|j_A|,\Delta-1)}(1-2y)
\underbrace{y^s(1-y)^{\Delta-1}
\prod_{i=1}^3P_{n_i}^{(|j_i|,\Delta-1)}(1-2y)}_{\text{次数至多 }n_A-1\text{ 的多项式}}.
\tag{3.6}
\]

整数 \(\Delta\) 使括号内确为多项式，其次数由 (3.5) 为 \(s+\Delta-1+\sum n_i=n_A-1\)。Jacobi 正交性立即给出零。这个证明适用于所有指标和所有整数 \(\Delta>1\)，无需高能量或质量近似。逆过程是其共轭。

\(0\leftrightarrow4\) 因所有频率严格为正而不共振；二次 tadpole 已由 (2.1) 去掉。因此

\[
[\mathcal K,N]=0\qquad\text{对全部 }\Delta>1.
\tag{3.7}
\]

这是**一阶共振算符**的粒子数守恒；完整实 \(\phi^4\) 理论只具有精确的 \(\mathbb Z_2\) 粒子数奇偶对称，本证明不把它提升成全阶 \(U(1)\)。

最小例：\(\Delta=2\)，incoming \((p_A,q_A)=(2,2)\)，三个 ground 模。此时

\[
P_2^{(0,1)}(1-2y)=10y^2-8y+1,
\qquad\int_0^1(1-y)^2(10y^2-8y+1)\,dy=0.
\tag{3.8}
\]

相反，四个 ground 模的非共振 \(1\to3\) 空间重叠不是零；检验程序保留了这个负控制，避免把一个恒置零的实现误当选择规则。

## 4. 全局 Ward 投影：为什么 primary 值决定整个 module

自由场的一粒子空间为

\[
\mathcal H_1=D^+_{\Delta/2}\otimes D^+_{\Delta/2}.
\]

选择升降约定

\[
L_-|p\rangle=\sqrt{p(p+\Delta-1)}\,|p-1\rangle,
\quad L_+|p\rangle=\sqrt{(p+1)(p+\Delta)}\,|p+1\rangle,
\quad L_0|p\rangle=(p+\Delta/2)|p\rangle,
\tag{4.1}
\]

右手系同理，且 \(H_0=L_0+\bar L_0\)、\(J=L_0-\bar L_0\)。这与 (1.5) 的相位兼容。

相互作用的 AdS isometry 仍然存在；采用 (2.1) 的 invariant subtraction 后，局域 Ward 恒等式在本阶没有新的 isometry-breaking counterterm。写

\[
H=H_0+\lambda\mathcal V+\cdots,
\quad L_\pm=L_\pm^{(0)}+\lambda L_\pm^{(1)}+\cdots.
\]

全局代数 \([H,L_\pm]=\pm L_\pm\) 的一次项为

\[
[H_0,L_\pm^{(1)}]+[\mathcal V,L_\pm^{(0)}]
=\pm L_\pm^{(1)}.
\tag{4.2}
\]

对算符自由能量 grade \(\pm1\) 做投影，含 \(L_\pm^{(1)}\) 的两项恰好抵消；又因 \(L_\pm^{(0)}\) 自身具有 grade \(\pm1\)，得到

\[
[\mathcal K,L_\pm^{(0)}]=0,
\qquad[\mathcal K,\bar L_\pm^{(0)}]=0.
\tag{4.3}
\]

这个论证没有预先假设共振相互作用是自由全局对称性的不变量。边界条件必须使 Ward 恒等式的空间边界项消失，故固定 boundary clock、快衰减域和 invariant subtraction 是证明的一部分。

(4.2)–(4.3) 在这里首先是有限模外态上的一阶代数恒等式；它不等价于在连续相互作用理论上已经构造了所有 unbounded charge 的共同自伴域。对本研究所需的每个有限谱块，前者足够。

## 5. 归一化 pair primary 与局域 coincidence map

两个一粒子表示相乘，左右分别分解后得到

\[
\operatorname{Sym}^2\mathcal H_1
=\bigoplus_{\substack{k,\ell\ge0\\k+\ell\in2\mathbb Z}}
 D^+_{\Delta+k}\otimes D^+_{\Delta+\ell}.
\tag{5.1}
\]

每个 pair module 重数为一，primary 能量和自旋为

\[
E_{k\ell}^{(0)}=2\Delta+k+\ell,
\qquad J_{k\ell}=k-\ell.
\]

定义归一化 CG 系数

\[
c_p^{(k)}=(-1)^p
\sqrt{\frac{\binom{k}{p}(\Delta)_k^2}
{(\Delta)_p(\Delta)_{k-p}(2\Delta+k-1)_k}},
\qquad0\le p\le k.
\tag{5.2}
\]

总 lowering 的递推关系是

\[
c_{p+1}^{(k)}\sqrt{(p+1)(p+\Delta)}
=-c_p^{(k)}\sqrt{(k-p)(k-p+\Delta-1)}.
\]

终止 Vandermonde 恒等式给出 \(\sum_p(c_p^{(k)})^2=1\)。归一化 Bose primary 为

\[
|P_{k\ell}\rangle=\frac1{\sqrt2}
\sum_{p=0}^k\sum_{q=0}^{\ell}
 c_p^{(k)}c_q^{(\ell)}
 a^\dagger_{pq}a^\dagger_{k-p,\ell-q}|0\rangle.
\tag{5.3}
\]

交换两个粒子的符号为 \((-1)^{k+\ell}\)。奇数 \(k+\ell\) 时 (5.3) 为零；偶数时范数为一，重复模也已由 Fock 收缩正确计算。这一 \(1/\sqrt2\) 不能再凭“相同粒子”额外乘除一次。

### 定理 2：coincidence 恒等式

定义归一化 labelled 对称张量在两点重合处的波函数

\[
\Psi_{k\ell}(t,r,\theta)
=\sum_{p,q}c_p^{(k)}c_q^{(\ell)}
 u_{pq}(t,r,\theta)u_{k-p,\ell-q}(t,r,\theta).
\tag{5.4}
\]

则

\[
\boxed{\Psi_{k\ell}
=\delta_{k\ell}\frac{(-1)^k}{2\pi}
 e^{-i(2\Delta+2k)t}f^{-\Delta-k}.}
\tag{5.5}
\]

**证明。** 两点函数的 diagonal restriction 与两粒子 isometry 总作用相容；因此 (5.4) 是普通标量函数，并满足 primary 的两个 lowering 方程。令 \(r=\sinh\rho\)，可取与 (4.1) 相容的标量微分实现

\[
\mathscr L_- =\frac{i}{2}e^{i(t-\theta)}
\left(\tanh\rho\,\partial_t-\coth\rho\,\partial_\theta-i\partial_\rho\right),
\qquad
\bar{\mathscr L}_- =\frac{i}{2}e^{i(t+\theta)}
\left(\tanh\rho\,\partial_t+\coth\rho\,\partial_\theta-i\partial_\rho\right).
\]

例如 \(\mathscr L_-u_{10}=\sqrt\Delta\,u_{00}\)、\(\bar{\mathscr L}_-u_{10}=0\)，固定了整体相位。对 \(e^{-iEt+ij\theta}F(\rho)\)，这两个 lowering 方程分别要求

\[
F'=-E\tanh\rho\,F-j\coth\rho\,F,
\qquad
F'=-E\tanh\rho\,F+j\coth\rho\,F.
\tag{5.6}
\]

故若 \(j\ne0\)，函数为零；若 \(j=0\)，则 \(F\propto\cosh^{-E}\rho\)。这里 \(j=k-\ell\)，因而只有 \(k=\ell\) 存活。

剩下的整体常数可在正则中心读取。只有 \(p=q\) 的单粒子模在中心非零，且由 (1.8)

\[
\Psi_{nn}(0,0)
=\frac{(-1)^n}{2\pi}\sum_{p=0}^n(c_p^{(n)})^2
=\frac{(-1)^n}{2\pi}.
\]

这完成了全指标证明。尤其不能把 (5.5) 当作只在低 \(n\) 检验后的猜想。\(\square\)

另一种表述是：scalar coincidence map 的左右 Casimir 相等，pair 两侧最低权 \(\Delta+k,\Delta+\ell>1\)，故不同 \(k,\ell\) 的 Casimir 不可能匹配。它解释了接触 scalar 顶点的 spin-zero 支撑。

### 推论：pair 系数与完整 pair 算符

由于

\[
\langle0|[\phi^+(x)]^2|P_{k\ell}\rangle=\sqrt2\,\Psi_{k\ell}(x),
\]

\[
\langle P_{k\ell}|\mathcal K|P_{k\ell}\rangle
=\frac12\int r\,dr\,d\theta\,|\Psi_{k\ell}|^2
=\frac{\delta_{k\ell}}{8\pi(2\Delta+2k-1)}.
\tag{5.7}
\]

再由 (4.3) 和 (5.1) 的无重数分解，(5.7) 不仅是期望值，而且是对应整条 module 的本征值。因此

\[
\boxed{\mathcal K_2=\sum_{n\ge0}c_n\,\Pi^{(n,n)},
\qquad c_n:=\frac1{8\pi(2\Delta+2n-1)}.}
\tag{5.8}
\]

\(k\ne\ell\) 的整个 module 均被湮灭。最低态的独立绝对归一化检查为

\[
C_{00,00;00,00}=\int r\,dr\,d\theta\,|u_{00}|^4
=\frac1{4\pi(2\Delta-1)}=2c_0,
\]

\[
\left\langle\frac{(a^\dagger_{00})^2}{\sqrt2}0\right|
\frac\lambda4 C_{00,00;00,00}(a^\dagger_{00})^2a_{00}^2
\left|\frac{(a^\dagger_{00})^2}{\sqrt2}0\right\rangle
=\lambda c_0.
\tag{5.9}
\]

## 6. 唯一 Fock lift 与全部有限 primary 谱

令 \(A=(I\le J)\) 表示无序模对，并定义

\[
|A\rangle=\frac{a_I^\dagger a_J^\dagger}{\sqrt{1+\delta_{IJ}}}|0\rangle,
\qquad B_A=\frac{a_Ia_J}{\sqrt{1+\delta_{IJ}}}.
\]

若 \(M_{AB}=\langle A|\mathcal K_2|B\rangle\)，则粒子数守恒的正常序四次算符唯一地为

\[
\mathcal K=\sum_{A,B}M_{AB}B_A^\dagger B_B,
\qquad
\boxed{\mathcal K_N=\sum_{1\le i<j\le N}\sum_{n\ge0}c_n\Pi_{ij}^{(n,n)}.}
\tag{6.1}
\]

理由是 \(B_A|B\rangle=\delta_{AB}|0\rangle\)，所以两粒子限制恢复每个 number-preserving 正常序 quartic 系数；在这个类别内，不存在一个在两粒子上为零、到三粒子才开始作用的额外四次算符。此处必须使用已证明的 (3.7)：对一般含 \(a^\dagger a^3\) 的 number-changing 四次算符，这个唯一性表述不成立。单模检验为
\(\mathcal K_N[(a^\dagger_{00})^N|0\rangle]=\binom N2c_0[(a^\dagger_{00})^N|0\rangle]\)。

### 6.1 正确的 Bose 空间与 primary 计数

物理空间是

\[
\mathcal H_N=\operatorname{Sym}^N
(D^+_{\Delta/2}\otimes D^+_{\Delta/2}),
\tag{6.2}
\]

**不是**先分别 Bose 对称化左右手，再把两者相乘。粒子交换必须同时作用在 \((p_i,q_i)\) 上。

固定

\[
\sum_{p,q}n_{pq}=N,\qquad
\sum p\,n_{pq}=P,\qquad
\sum q\,n_{pq}=Q
\tag{6.3}
\]

给出有限 occupation 空间。primary 子空间为

\[
\mathcal P_{N;P,Q}=
\ker L_-^{\rm tot}\cap\ker\bar L_-^{\rm tot}.
\tag{6.4}
\]

在 polynomial realization 中

\[
L_-=\partial_z,\quad L_0=z\partial_z+\Delta/2,
\quad L_+=z^2\partial_z+\Delta z,
\qquad\|z^p w^q\|^2=\frac{p!q!}{(\Delta)_p(\Delta)_q}.
\tag{6.5}
\]

因此 (6.4) 等价于 \(N\) 对变量 \((z_i,w_i)\) 上、左右分别 translation-invariant、并对 diagonal \(S_N\) 不变的双齐次多项式。\(\Delta>1\) 保证此内积正定，没有导致计数改变的有限标签 null vectors。

若 \(d_N(P,Q)\) 是 occupation 维数，则

\[
\sum_{P,Q}d_N(P,Q)x^Py^Q
=[t^N]\prod_{p,q\ge0}\frac1{1-tx^py^q},
\]

\[
\sum_{P,Q}\dim\mathcal P_{N;P,Q}\,x^Py^Q
=(1-x)(1-y)[t^N]\prod_{p,q\ge0}\frac1{1-tx^py^q},\qquad N\ge1.
\tag{6.6}
\]

等价的 Molien 表达为

\[
\frac{(1-x)(1-y)}{N!}\sum_{\sigma\in S_N}
\frac1{\det(1-x\sigma)\det(1-y\sigma)}.
\tag{6.7}
\]

\(N=0\) 真空单独处理，不能把无 null descendant 的计数公式直接用于它。

### 6.2 完整的有限算法，不要求闭式根式

1. 按 (6.3) 列 occupation 基；用 (4.1) 或 (6.5) 构造两个 lowering 矩阵。
2. 求共同核列矩阵 \(X\)。保留物理 Gram \(G_{\rm Fock}\)，得到 \(G_P=X^\dagger G_{\rm Fock}X>0\)。
3. 从 (3.2)–(3.3) 的直接积分，或独立地从 (5.8)–(6.1)，构造有限 \(\mathcal K_N\)。Ward 恒等式保证其保持 \(\operatorname{im}X\)。
4. 构造 \(A_P=X^\dagger G_{\rm Fock}\mathcal K_NX\)，解完整 generalized eigenproblem \(A_Pv=\kappa G_Pv\)，即 \(\det(A_P-\kappa G_P)=0\)。也可在 \(X\) 基中构造限制矩阵，但它一般不是 Euclidean 对称矩阵。
5. 恢复各 primary 的全局 descendants；根据自由能量重新组装完整简并 shell。跨 \(N\) 的一阶混合已由定理 1 排除。

为避免无关根号，脚本使用

\[
w_p=\frac{(\Delta)_p}{p!},\qquad
|\mathbf n\rangle_B=\prod_{p,q}
\left(\frac{a^\dagger_{pq}}{\sqrt{w_pw_q}}\right)^{n_{pq}}|0\rangle,
\quad
G_{\mathbf n\mathbf n}=\prod_{p,q}\frac{n_{pq}!}{(w_pw_q)^{n_{pq}}}.
\tag{6.8}
\]

在此基中 lowering 系数为 \(p\,n_{pq}\)、\(q\,n_{pq}\)，raising 系数为 \((p+\Delta)n_{pq}\)、\((q+\Delta)n_{pq}\)。径向 beta 积分也使所有有限矩阵元素成为 \(\Delta\) 的有理函数乘统一 \(1/\pi\)。所以在有理 \(\Delta>1\) 时可完全在 \(\mathbb Q\) 上运行；一般 \(\Delta\) 可作符号参数。有限维 complete construction 不等价于所有特征根都能用根式表达。

## 7. 最小直接矩阵与非手征三体实例

以下 \(\mathcal K\) 是单位 \(\lambda\) 的系数；真正一阶移位为 \(\lambda\mathcal K\)。除明确写明非正交基者外，状态基都已归一化。

### 7.1 两粒子 \((P,Q)=(1,1)\)

取

\[
|A\rangle=a_{00}^\dagger a_{11}^\dagger|0\rangle,
\qquad |B\rangle=a_{10}^\dagger a_{01}^\dagger|0\rangle.
\]

由 (1.6)，去掉统一 \((1-y)^{\Delta/2}/\sqrt{2\pi}\) 后，径向因子分别为
\(1,(\Delta+1)y-1,\sqrt\Delta\,y^{1/2}\)。直接 beta 积分给出

\[
\boxed{\mathcal K_{2;1,1}
=\frac1{8\pi(4\Delta^2-1)}
\begin{pmatrix}2\Delta&1\\1&2\Delta\end{pmatrix}.}
\tag{7.1}
\]

\((A+B)/\sqrt2\) 是 ground-pair descendant，系数 \(c_0\)；\((A-B)/\sqrt2\) 是 \((k,\ell)=(1,1)\) primary，系数 \(c_1\)。这同时检查了径向 \(n=1\) 相位、Bose 因子与 descendant 等谱。

### 7.2 两粒子 \((P,Q)=(2,0)\)

取 \(|A\rangle=a_{00}^\dagger a_{20}^\dagger|0\rangle\)、
\(|B\rangle=(a_{10}^\dagger)^2|0\rangle/\sqrt2\)，则

\[
\boxed{\mathcal K_{2;2,0}
=\frac{c_0}{2\Delta+1}
\begin{pmatrix}
\Delta+1&\sqrt{\Delta(\Delta+1)}\\
\sqrt{\Delta(\Delta+1)}&\Delta
\end{pmatrix}.}
\tag{7.2}
\]

本征值为 \(c_0,0\)；零态是 spin-two primary，而不是 radial scalar primary。

### 7.3 三粒子：两个 2×2 原始 occupation 矩阵

\((P,Q)=(1,1)\) 用

\[
|A\rangle=\frac{(a_{00}^\dagger)^2a_{11}^\dagger}{\sqrt2}|0\rangle,
\qquad |B\rangle=a_{00}^\dagger a_{10}^\dagger a_{01}^\dagger|0\rangle.
\]

直接四模积分与 spectator 收缩给出

\[
\boxed{\mathcal K_{3;1,1}
=\frac{c_0}{2\Delta+1}
\begin{pmatrix}6\Delta+1&\sqrt2\\\sqrt2&6\Delta+2\end{pmatrix}.}
\tag{7.3}
\]

本征值为 \(3c_0\)（ground 三体 descendant）及
\(6\Delta c_0/(2\Delta+1)\)（唯一 primary）。

\((P,Q)=(2,0)\) 用

\[
|A\rangle=\frac{(a_{00}^\dagger)^2a_{20}^\dagger}{\sqrt2}|0\rangle,
\qquad |B\rangle=\frac{a_{00}^\dagger(a_{10}^\dagger)^2}{\sqrt2}|0\rangle,
\]

得到

\[
\boxed{\mathcal K_{3;2,0}
=\frac{c_0}{2\Delta+1}
\begin{pmatrix}
4\Delta+3&\sqrt{2\Delta(\Delta+1)}\\
\sqrt{2\Delta(\Delta+1)}&5\Delta+2
\end{pmatrix}.}
\tag{7.4}
\]

本征值为 \(3c_0\) 及 \((3\Delta+2)c_0/(2\Delta+1)\)。这些矩阵在检查程序中还由**不使用 pair 公式的径向积分路线**独立构造，再与 projector lift 比较。

### 7.4 真正有重数的 mixed primary：\(N=3,\Delta=2,P=Q=2\)

完整 occupation 空间维数为 8，共同 lowering 核维数为 2。在 (6.8) 基中按以下无序模三元组排列：

\[
(00,00,22),\ (00,01,21),\ (00,02,20),\ (00,10,12),
\ (00,11,11),\ (01,01,20),\ (01,10,11),\ (02,10,10).
\]

一个直接共同核矩阵为

\[
X=\begin{pmatrix}
1&0\\-2&0\\0&1\\-2&0\\3&-1\\1&-1\\-2&2\\1&-1
\end{pmatrix}.
\]

对应

\[
G_P=\begin{pmatrix}187/72&-23/24\\-23/24&59/72\end{pmatrix},
\qquad
\frac{\mathcal K_P}{c_0}
=\begin{pmatrix}16/7&-12/35\\9/7&9/35\end{pmatrix}.
\tag{7.5}
\]

后者非 Euclidean 对称，但满足 \(G_P\mathcal K_P=\mathcal K_P^T G_P\)。其特征多项式和本征值为

\[
\chi(z)=z^2-\frac{89}{35}z+\frac{36}{35},
\qquad
\frac{\kappa_\pm}{c_0}=\frac{89\pm\sqrt{2881}}{70}.
\tag{7.6}
\]

这提供了一个最小的、不能只靠单一 primary 期望值完成的 mixed-sector mixing 检验。完整 8×8 径向积分矩阵、\(X\)、Gram 和限制矩阵均保存在 [结果的 benchmarks 段](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks.json#L1348-L1686>)。

## 8. 可立即得到的结构与极限

### 8.1 正性、算符界与非交换 pair projectors

\(c_n>0\) 且 \(c_n\le c_0\)。在固定 \(N\) 空间上

\[
0\le\mathcal K_N\le\binom N2c_0\,\mathbf1.
\tag{8.1}
\]

ground condensate 及其全局 descendants 达到上界。这个界还给一阶系数算符在固定 \(N\) 的无限能级 Hilbert 空间上一个有界延拓；它**不**给完整 \(\phi^4\) 相互作用同样的界，更不自动给全理论的统一微扰余项。

对 \(\lambda>0\)，一阶 shift 非负；\(\lambda<0\) 则反号，且完整负四次势的稳定性不由有限一阶谱保证。正性还给出

\[
\ker\mathcal K_N
=\bigcap_{i<j}\bigcap_{n\ge0}\ker\Pi_{ij}^{(n,n)}.
\tag{8.2}
\]

不同重叠粒子对的 projectors 一般不交换，故 (6.1) 不是全体本征向量的闭式解，也不是可积性证明。

### 8.2 手征精确零态：一个明确但有限的结构结论

在 \(Q=0\) 的 chiral sector，pair 只可能有右标签 \(\ell=0\)，所以

\[
\mathcal K_N\big|_{Q=0}=c_0\sum_{i<j}\Pi_{ij}^{(0,0)}.
\tag{8.3}
\]

对一对变量，缺少 \(k=0\) module 等价于多项式在 \(z_i=z_j\) 上为零；Bose 对称使这个零至少为二阶。由所有 pair 的条件及多项式环中不同线性因子的互素性，chiral primary 的完整零空间恰为

\[
\prod_{i<j}(z_i-z_j)^2\times
\{\text{对称、translation-invariant 多项式}\}.
\tag{8.4}
\]

因此第一个 chiral 零态出现在 \(P=N(N-1)\)；anti-chiral 结论相同。这里没有把 (8.4) 推广成未经证明的任意 mixed-sector kernel 分类。

作为精确有限例证，\(N=3,\Delta=2\) 的 chiral primary 系数（单位 \(c_0\)）为

| \(P\) | primary 维数 | 本征值 |
|---:|---:|---|
| 2 | 1 | \(8/5\) |
| 3 | 1 | \(3/5\) |
| 4 | 1 | \(9/7\) |
| 5 | 1 | \(11/14\) |
| 6 | 2 | \(0,7/6\) |
| 7 | 1 | \(13/15\) |
| 8 | 2 | \(0,61/55\) |

这张表是已运行的有限矩阵结果，不是任意 \(P\) 谱公式。进一步 kernel/结构比较由 [配套结构分析](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>) 单独承担。

### 8.3 可控的系数极限与不可混淆的尺度

从精确式直接得到

\[
c_n\sim\frac1{16\pi n}\quad(n\to\infty,\ \Delta\text{ 固定}),
\]

\[
c_n=\frac1{16\pi\Delta}
\left[1-\frac{2n-1}{2\Delta}+\cdots\right]
\quad(\Delta\to\infty,\ n\text{ 固定}),
\]

\[
\lim_{\Delta\to1^+}c_n=\frac1{8\pi(2n+1)}.
\tag{8.5}
\]

最后一个是系数的单侧极限；\(\Delta=1\) 的 BF/log 边界域必须另行定义，本文不直接把它纳入定理。大 \(\Delta\) 与大 \(n\) 的次序也不能互换而保持同一个展开。

恢复长度单位时，三维物理四次耦合 \(\lambda_{\rm phys}\) 的质量维数为 1；无量纲本文耦合是 \(\lambda=\lambda_{\rm phys}L\)，能量单位为 \(L^{-1}\)。因此物理 pair shift 为 \(\lambda_{\rm phys}/[8\pi(2\Delta+2n-1)]\)。重新归一化场或把作用量顶点写成 \(g\phi^4/4\) 都会改变表面上的系数，必须先映射耦合定义。

## 9. 复现、检查范围与尚未建立的内容

### 9.1 实际执行记录

程序：[phi4_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_checks.py>)。
结果：[phi4_checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks.json>)；日志：[phi4_run.log](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_run.log>)。

在本文目录运行：

```bash
/usr/local/bin/sage --nodotsage -python scripts/phi4_checks.py \
  --output results/phi4_checks.json
```

环境：SageMath 10.9，SymPy 1.14.0，Python 3.14.3。该次执行 **978 项精确检查全部通过，退出码 0**。结果内记录脚本 SHA-256、环境、完整检查标签、原始矩阵与 Gram；没有导入或调用原研究包代码。

| 检查 | 精确范围 |
|---|---|
| 原 PDF 的 Jacobi 相位映射 | \(n,a=0,\ldots,4\)，\(\Delta=3/2,2,7/3\)，75 项 |
| KG 范数 | 同一范围，75 项 |
| 整数点 \(1\leftrightarrow3\) | \(\Delta=2,3\)，三个 child 标签各在 \(\{0,1,2\}^2\)，所有无序可重复三元组：各165，共330；另有1个非共振非零控制 |
| coincidence 恒等式 | \(0\le k,\ell\le5\)、\(k+\ell\) 偶，三种 \(\Delta\)，54 项 |
| 二体直接积分 vs representation projectors | \(0\le P,Q\le4\)，三种 \(\Delta\)，75 个完整块；同时检查 Gram Hermiticity、primary 维数及系数 |
| 三体直接积分 vs 独立 pair-projector Fock lift | \(0\le P,Q\le3\)，三种 \(\Delta\)，48 个完整块；同时检查 Gram Hermiticity 和两个 lowering Ward 关系 |
| 三体 chiral 精确谱 | \(\Delta=2,P=2,\ldots,8,Q=0\)，7 个 primary 块 |
| 符号最小矩阵 | 一般 \(\Delta\) 的 (7.1)–(7.4)，4 项独立符号检查 |

脚本把矩阵写成 `gamma0` 单位，其定义是 \(\gamma_0=\lambda/[8\pi(2\Delta-1)]=\lambda c_0\)；所以文件中的纯数矩阵正是本文 \(\mathcal K/c_0\)。这只是一种报告单位，不是又一个独立耦合。

直接路线采用有限二项式 Jacobi 展开和精确 beta 矩积分；representation 路线从 \((z_1-z_2)^k(w_1-w_2)^\ell\) 出发，用 free raising 与物理 Gram 构造 projector。两者共享的是明确列出的自由理论约定，不共享一张预置相互作用矩阵。SymPy coincidence 检查与 Sage 有理矩阵检查是不同实现路径，但不能仅凭更换软件名字就把它们称为额外独立物理证明。

### 9.2 有限一阶、形式展开与连续理论的界线

- **已证明的一阶代数/积分结果：** (3.6)、(5.5)、(5.8) 适用于所有允许指标；(6.1)–(6.7) 给每个有限 \((N,P,Q)\) 的完整构造。有限 CAS 范围不承担这些全指标命题的证明职责。
- **精确有限对象：** 对指定 \(\Delta,N,P,Q\)，\(\mathcal K_P\) 的特征多项式、重数和物理 eigenspaces 是一个完全定义的有限谱问题。线性 pencil \(E_0+\lambda\mathcal K_P\) 的本征值当然正好线性，但这个 pencil 不是完整相互作用 Hamiltonian。
- **形式 perturbation：** 未计算的高阶顶点、虚中间态求和、反项和 nonresonant dressing 不能由一阶 pair 谱恢复。写成模掉二次及以上形式项的 normal form，与证明连续谱余项的范数估计是两回事。
- **连续 QFT 解释：** (0.2) 表示固定外态标签的一阶系数；若声称真实可微谱分支及其 \(o(\lambda)\) 余项，还需要相互作用 Hamiltonian/复合算符的构造、UV 极限、域与谱稳定性输入。本文不把 finite-cutoff 矩阵的解析性当作 cutoff-independent 证明。
- **非一致极限：** 大 \(N\)、大 \(P,Q\)、近 BF 边界域与 \(\lambda\to0\) 的交换尚未控制。即便 (8.1) 对固定 \(N\) 成立，其上界随 \(N^2\) 增长；它不提供所有粒子数统一的弱耦合窗口。

### 9.3 下一步应检验的实质问题

优先独立复核归一化链 (1.3) → (2.1) → (3.3) → (5.3) → (5.7)，尤其测度、\(4!\)、重复模及原 PDF 的 \(n=1\) 相位。随后研究 mixed-sector 公共 pair kernel、非交换 projector 的有限谱结构和可证明的谱界；以 (7.5)–(7.6) 作为最小重数实例。高阶粒子数守恒、任何“protected”零态的高阶存续、全 \(N\) 可积性、统一半经典谱分布都不是本文结果的自动推论。
