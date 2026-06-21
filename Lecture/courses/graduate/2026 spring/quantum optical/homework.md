# 第 1 次作业 (Assignment 1)

## 题目 1：光子场的代数性质

在单模量子化辐射场中，哈密顿量为

$$\begin{align}
\hat H = \hbar\omega\left(\hat a^\dagger \hat a + \frac12\right).
\end{align}$$

利用基本对易关系

$$\begin{align}
[\hat a, \hat a^\dagger] = 1.
\end{align}$$

1. **能量降低性质：** 证明湮灭算符作为能量本征态的降低算符：

$$\begin{align}
\hat H \hat a^m |n\rangle = (E_n - m\hbar\omega)\hat a^m |n\rangle . \tag{1}
\end{align}$$

1. **数态的表示：** 证明归一化的 $n$ 光子态（Fock 态）可由真空态 $|0\rangle$ 生成：

$$\begin{align}
|n\rangle = \frac{(\hat a^\dagger)^n}{\sqrt{n!}} |0\rangle . \tag{2}
\end{align}$$

---

# 第 2 次作业 (Assignment 2)

## 题目 1：算符代数与变换恒等式

在量子光学中，计算产生算符 $(\hat a^\dagger)$ 与湮灭算符 $(\hat a)$ 的函数对于分析动力学十分重要。利用基本玻色对易关系

$$\begin{align}
[\hat a, \hat a^\dagger] = 1.
\end{align}$$

1. **对易子的求导规则：** 假设任意算符函数 $f(\hat a, \hat a^\dagger)$ 可展开为 $\hat a$ 与 $\hat a^\dagger$ 的幂级数，证明其与产生算符的对易子等价于一个偏导数：

$$\begin{align}
[\hat a^\dagger, f(\hat a, \hat a^\dagger)] = -\frac{\partial f}{\partial \hat a}. \tag{1}
\end{align}$$

1. **指数算符平移：** 利用标准的算符展开技巧（例如 Baker-Campbell-Hausdorff 引理），证明如下变换恒等式，其中 $x$ 是 c-number 参数：

$$\begin{align}
e^{-x\hat a^\dagger}\hat a e^{x\hat a^\dagger} = \hat a + x. \tag{2}
\end{align}$$

---

# 第 3 次作业 (Assignment 3)

## 题目 1：相干态与最小不确定性

1. 请利用 Baker-Campbell-Hausdorff 公式证明相干态 $|\alpha\rangle$ 的两种表示等价，即证明：

$$\begin{align}
\exp\left(-\frac{|\alpha|^2}{2}\right)\exp(\alpha a^\dagger)|0\rangle = \exp(\alpha a^\dagger - \alpha^* a)|0\rangle . \tag{1}
\end{align}$$

1. 定义坐标算符 $q$ 和动量算符 $p$，

$$\begin{align}
q = \sqrt{\frac{1}{2m\omega}}(a+a^\dagger), \qquad
   p = -i\sqrt{\frac{m\omega}{2}}(a-a^\dagger). \tag{2}
\end{align}$$

   请证明相干态 $|\alpha\rangle$ 的坐标和动量方差分别为：

$$\begin{align}
\Delta q = \frac{1}{2m\omega}, \qquad
   \Delta p = \frac{m\omega}{2}. \tag{3}
\end{align}$$

## 题目 2：压缩算符的变换关系

压缩算符定义为

$$\begin{align}
S(\xi) \equiv \exp\left(\frac{\xi^*}{2}a^2 - \frac{\xi}{2}a^{\dagger 2}\right), \tag{4}
\end{align}$$

其中 $\xi = re^{i\theta}$ 是复压缩参数。

请利用 Baker-Campbell-Hausdorff 公式，验证压缩算符对湮灭算符 $a$ 和产生算符 $a^\dagger$ 的作用满足以下演化方程：

$$\begin{align}
S^\dagger(\xi)aS(\xi) = a\cosh r - a^\dagger e^{i\theta}\sinh r, \tag{5}
\end{align}$$

$$\begin{align}
S^\dagger(\xi)a^\dagger S(\xi) = a^\dagger\cosh r - ae^{-i\theta}\sinh r. \tag{6}
\end{align}$$

## 题目 3：相干态与 Fock 态的 Q 表示

$Q$ 分布（$Q$ 表示）是一种正定的准概率分布函数，其定义为密度算符 $\rho$ 在相干态基底下的对角元：

$$\begin{align}
Q(\alpha) = \frac{1}{\pi}\langle \alpha|\rho|\alpha\rangle . \tag{7}
\end{align}$$

1. 如果系统处于相干态 $|\beta\rangle$，请写出其 $Q$ 分布的表达式。

1. 如果系统处于光子数本征态（Fock 态）$|n\rangle$，请写出其 $Q$ 分布的表达式。

## 题目 4：Wigner 表示与 c-number 对应

Wigner 函数 $W(\alpha,\alpha^*)$ 可用于直接计算算符的对称序（Weyl 序）平均值。为了计算某个一般算符 $F(a,a^\dagger)$ 的期望值，我们需要找到一个对应的 c-number 函数 $f_s(\alpha,\alpha^*)$，使得：

$$\begin{align}
\langle F(a,a^\dagger)\rangle = \int d^2\alpha\, f_s(\alpha,\alpha^*) W(\alpha,\alpha^*) . \tag{8}
\end{align}$$

请推导并找到光子数算符 $F(a,a^\dagger)=a^\dagger a$ 对应的 c-number 函数 $f_s(\alpha,\alpha^*)$。

## 题目 5：单光子态的非经典性与热噪声

已知单光子态 $|1\rangle$ 的 Wigner 函数在相空间原点处的值为 $W(0,0)=-1/\pi$。如果我们向这个态中逐渐加入热噪声，将其变为混合态：

$$\begin{align}
\rho = (1-\epsilon)|1\rangle\langle 1| + \epsilon \rho_{\mathrm{th}}, \tag{9}
\end{align}$$

其中 $\rho_{\mathrm{th}}$ 为热态密度矩阵，$\epsilon\in[0,1]$ 表示加入热噪声的比例。

1. 当热噪声比例 $\epsilon$ 达到多少时，该混合态在原点处的负值恰好消失（即使得 $W(0,0)\ge 0$）？

1. 结合上述计算，这对于我们理解“量子性”（即具有负值的非经典准概率分布特征）在环境噪声影响下的消失有什么物理启示？

---

# **第 4 次作业（Assignment 4）**

## **题目 1：刘维尔-冯诺依曼方程**

根据量子力学，态矢量 $|\Psi(t)\rangle$ 的时间演化满足薛定谔方程

$$\begin{align}
i\frac{d}{dt}|\Psi(t)\rangle=\hat H(t)|\Psi(t)\rangle .
\tag{1}
\end{align}$$

对于混合态，系统可由密度矩阵描述：

$$\begin{align}
\hat\rho(t)=\sum_i p_i |\phi_i(t)\rangle\langle \phi_i(t)| , \tag{2}
\end{align}$$

其中 $p_i\geq 0$ 且 $\sum_i p_i=1$，并假设每个纯态 $|\phi_i(t)\rangle$ 均满足薛定谔方程演化。

请证明密度矩阵满足刘维尔-冯诺依曼方程：

$$\begin{align}
\frac{d}{dt}\hat\rho(t)=-i[\hat H(t),\hat\rho(t)] .
\tag{3}
\end{align}$$

## **题目 2：本征算符的性质**

设系统哈密顿量 $\hat H_S$ 的本征态满足

$$\begin{align}
\hat H_S|\varepsilon\rangle=E_\varepsilon|\varepsilon\rangle,
\end{align}$$

并定义投影到本征能量为 $E_\varepsilon$ 的本征态上的算符

$$\begin{align}
\hat P(\varepsilon)=|\varepsilon\rangle\langle \varepsilon| .
\end{align}$$

对于任意系统算符 $\hat A_\alpha$，定义其频率分量

$$\begin{align}
\hat A_\alpha(\omega) = \sum_{E_{\varepsilon'}-E_\varepsilon=\omega}
\hat P(\varepsilon)\hat A_\alpha \hat P(\varepsilon') .
\tag{4}
\end{align}$$

请证明：

$$\begin{align}
[\hat H_S,\hat A_\alpha(\omega)] = -\omega \hat A_\alpha(\omega), \tag{5}
\end{align}$$

$$\begin{align}
\sum_\omega \hat A_\alpha(\omega)=\hat A_\alpha .
\tag{6}
\end{align}$$

此即 $\hat A_\alpha(\omega)$ 之所以被称为系统哈密顿量 $\hat H_S$ 的本征算符。

## **题目 3：二能级系统的耗散动力学**

考虑一个与谐振子热库耦合的二能级系统，其约化密度矩阵满足主方程

$$\begin{align}
\frac{d}{dt}\hat\rho(t) = \Gamma_\downarrow \left( \hat\sigma_-\hat\rho(t)\hat\sigma_+ -\frac12\{\hat\sigma_+\hat\sigma_-,\hat\rho(t)\} \right) + \Gamma_\uparrow \left( \hat\sigma_+\hat\rho(t)\hat\sigma_- -\frac12\{\hat\sigma_-\hat\sigma_+,\hat\rho(t)\} \right), \tag{7}
\end{align}$$

其中 $\hat\sigma_\pm$ 为二能级系统的升降算符。

定义布洛赫矢量分量

$$\begin{align}
S_\pm(t)=\mathrm{Tr}\big(\hat\rho(t)\hat\sigma_\pm\big), \qquad
S_z(t)=\mathrm{Tr}\big(\hat\rho(t)\hat\sigma_z\big),
\end{align}$$

利用泡利矩阵关系

$$\begin{align}
\hat\sigma_z\hat\sigma_\pm=\pm \hat\sigma_\pm, \qquad
\hat\sigma_\pm\hat\sigma_z=\mp \hat\sigma_\pm, \qquad
\hat\sigma_\pm\hat\sigma_\mp=\frac12(1\pm \hat\sigma_z), \tag{8}
\end{align}$$

推导以下方程：

$$\begin{align}
\frac{d}{dt}S_-(t) = -\frac{\Gamma_\uparrow+\Gamma_\downarrow}{2}S_-(t), \tag{9}
\end{align}$$

$$\begin{align}
\frac{d}{dt}S_z(t) = -(\Gamma_\uparrow+\Gamma_\downarrow)S_z(t) + (\Gamma_\uparrow-\Gamma_\downarrow).
\tag{10}
\end{align}$$

## **题目 4：耗散光学腔的主方程**

考虑一个与热库耦合的光学腔中的单模，其约化密度矩阵满足主方程

$$\begin{align}
\frac{d}{dt}\hat\rho(t) = \Gamma_\downarrow \left( \hat a\hat\rho \hat a^\dagger -\frac12\{\hat a^\dagger \hat a,\hat\rho\} \right) + \Gamma_\uparrow \left( \hat a^\dagger \hat\rho \hat a -\frac12\{\hat a\hat a^\dagger,\hat\rho\} \right), \tag{11}
\end{align}$$

其中 $\hat a,\hat a^\dagger$ 为腔场湮灭与产生算符。

请推导平均场振幅

$$\begin{align}
\langle \hat a(t)\rangle=\mathrm{Tr}\big(\hat\rho(t)\hat a\big)
\end{align}$$

的运动方程，并计算平均光子数的稳态值

$$\begin{align}
\lim_{t\to\infty}\langle \hat a^\dagger \hat a\rangle .
\end{align}$$

## **题目 5：公共热库诱导的协同耗散**

考虑两个频率同为 $\omega_0$ 的玻色子谐振子 $a,b$（如微腔模式或机械振子），它们之间无直接相互作用，但同时耦合到一个一维公共玻色子热库中。谐振子 $a$ 的位置为 $x_a=0$，谐振子 $b$ 的位置为 $x_b=L$。在相互作用绘景与旋转波近似下，总相互作用哈密顿量为

$$\begin{align}
\hat V(t) = \sum_k \left( g_k \hat a e^{-i\omega_0 t}\hat c_k^\dagger e^{i\omega_k t} + g_k \hat b e^{-i\omega_0 t}\hat c_k^\dagger e^{i\omega_k t}e^{ikL} + \mathrm{h.c.} \right), \tag{12}
\end{align}$$

其中热库处于零温真空态。

1. 基于玻恩-马尔可夫近似，推导两个谐振子的约化密度矩阵 $\hat\rho_S(t)$ 所满足的主方程，并利用交叉关联率

$$\begin{align}
\Gamma_{ab}=\frac12\gamma_{ab}+iS_{ab}
\end{align}$$

   的实部和虚部，将其写为以下形式：

$$\begin{align}
\frac{d\hat\rho_S}{dt} = -i[\hat H_{\mathrm{eff}},\hat\rho_S] + \mathcal L_{\mathrm{local}}(\hat\rho_S) + \mathcal L_{\mathrm{coop}}(\hat\rho_S), \tag{13}
\end{align}$$

   其中 $\mathcal L_{\mathrm{local}}(\hat\rho_S)$ 是每个谐振子本身的局域耗散算符。请显式写出环境诱导的相干耦合哈密顿量 $\hat H_{\mathrm{eff}}$ 和协同耗散项 $\mathcal L_{\mathrm{coop}}(\hat\rho_S)$，并讨论 $L\to 0$ 和 $L=\lambda_0/4$（或四分之一波长的奇数倍）两种极限下的耦合强度。

1. 仅考虑由 $\gamma_{ab}$ 和 $\gamma_{ba}$ 主导的协同耗散项 $\mathcal L_{\mathrm{coop}}$，推导其在 Fokker-Planck 方程（$P$ 表示）中的贡献。在零温热库下，这个协同项会产生扩散项（Diffusion）吗？它在相空间中引起的漂移行为如何？

---

# **第 5 次作业（Assignment 5）**

## **题目 1：光学布洛赫方程的推导与稳态解**

考虑一个受经典单色场驱动的二能级原子。在以驱动频率 $\omega_d$ 旋转的参考系中，并作旋波近似（RWA）后，该系统的有效哈密顿量为：

$$\begin{align}
\hat H_0 = \frac{\delta\omega}{2}\hat\sigma_z + \frac{A}{2}\hat\sigma_x , \tag{1}
\end{align}$$

其中 $\delta\omega=\omega_a-\omega_d$ 为失谐量，$A$ 为驱动场的振幅。系统与热库环境耦合导致耗散，其动力学由完整的 Lindblad 主方程描述：

$$\begin{align}
\frac{d}{dt}\hat\rho(t) = -i[\hat H_0,\hat\rho(t)] + \Gamma_\downarrow \left( \hat\sigma_-\hat\rho\hat\sigma_+ -\frac12\{\hat\sigma_+\hat\sigma_-,\hat\rho\} \right) + \Gamma_\uparrow \left( \hat\sigma_+\hat\rho\hat\sigma_- -\frac12\{\hat\sigma_-\hat\sigma_+,\hat\rho\} \right), \tag{2}
\end{align}$$

其中 $\hat\sigma_\pm$ 为原子的升降算符，由热库引起的向上和向下跃迁速率分别为

$$\begin{align}
\Gamma_\uparrow=\Gamma n_{\mathrm{th}}, \qquad
\Gamma_\downarrow=\Gamma(n_{\mathrm{th}}+1),
\end{align}$$

$\Gamma$ 为零温自发辐射率，$n_{\mathrm{th}}$ 为热平均光子数。总衰减率定义为

$$\begin{align}
\Gamma_t=\Gamma_\uparrow+\Gamma_\downarrow=\Gamma(2n_{\mathrm{th}}+1).
\end{align}$$

1. 请推导布洛赫矢量 $z$ 分量的运动方程（光学布洛赫方程之一）：

$$\begin{align}
\frac{d}{dt}\langle \hat\sigma_z(t)\rangle = A\langle \hat\sigma_y(t)\rangle - \Gamma_t\langle \hat\sigma_z(t)\rangle - \Gamma .
\tag{3}
\end{align}
\end{align}$$

1. 求解布洛赫矢量 $z$ 分量的稳态解 $\langle \hat\sigma_z\rangle_s$。

## **题目 2：布洛赫矢量的含时演化与轨迹**

承接上题，在零温（$n_{\mathrm{th}}=0\Rightarrow \Gamma_t=\Gamma$）且严格共振（$\delta\omega=0$）的情形下，光学布洛赫方程可写为紧凑的矩阵形式

$$\begin{align}
\frac{d}{dt}\langle \hat{\boldsymbol\sigma}(t)\rangle = G\langle \hat{\boldsymbol\sigma}(t)\rangle+\beta .
\tag{4}
\end{align}$$

为了求解布洛赫矢量的含时演化，定义算符

$$\begin{align}
\hat{\boldsymbol\sigma}'(t) = \hat{\boldsymbol\sigma}(t) - \langle \hat{\boldsymbol\sigma}\rangle_s
\end{align}
\end{align}$$

以表示布洛赫矢量相对稳态的偏移量，其演化方程可简化为齐次方程

$$\begin{align}
\frac{d}{dt}\langle \hat{\boldsymbol\sigma}'(t)\rangle = G\langle \hat{\boldsymbol\sigma}'(t)\rangle , \tag{5}
\end{align}$$

其中演化矩阵为：

$$
G=
\begin{pmatrix}
-\Gamma/2 & 0 & 0\\
0 & -\Gamma/2 & -A\\
0 & A & -\Gamma
\end{pmatrix}.
\tag{6}
$$

已知矩阵 $G$ 的本征值为

$$\begin{align}
\lambda_1=-\Gamma/2, \qquad
\lambda_{2,3}=-3\Gamma/4\pm i\mu,
\end{align}$$

其中

$$\begin{align}
\mu=\sqrt{A^2-\Gamma^2/16}.
\end{align}$$

1. 请基于上述矩阵形式，推导各分量期望值的含时演化解析解：

$$\begin{align}
\langle \hat\sigma_x(t)\rangle = \langle \hat\sigma_x(0)\rangle e^{-\frac{\Gamma}{2}t}, \tag{7}
\end{align}$$

$$\begin{align}
\langle \hat\sigma_y(t)\rangle = \langle \hat\sigma_y^s\rangle + \left[ \langle \hat\sigma_y'(0)\rangle \left( \cos\mu t+\frac{\Gamma}{4\mu}\sin\mu t \right) - \frac{A}{\mu}\langle \hat\sigma_z'(0)\rangle\sin\mu t \right]
e^{-\frac{3\Gamma}{4}t}, \tag{8}
\end{align}
\end{align}$$

$$\begin{align}
\langle \hat\sigma_z(t)\rangle = \langle \hat\sigma_z^s\rangle + \left[ \langle \hat\sigma_z'(0)\rangle \left( \cos\mu t-\frac{\Gamma}{4\mu}\sin\mu t \right) + \frac{A}{\mu}\langle \hat\sigma_y'(0)\rangle\sin\mu t \right]
e^{-\frac{3\Gamma}{4}t}.
\tag{9}
\end{align}$$

1. 假设原子的初始状态为激发态，即

$$\begin{align}
\langle \hat\sigma_z(0)\rangle=1, \qquad
\langle \hat\sigma_x(0)\rangle = \langle \hat\sigma_y(0)\rangle = 0,
\end{align}$$

请分别针对欠阻尼（$\Gamma/A<4$）和过阻尼（$\Gamma/A>4$）两种物理情形，在布洛赫球面上画出布洛赫矢量随时间演化的轨迹。

---

# **第 6 次作业（Assignment 6）**

## **题目 1：非简并光学参量振荡器（NDOPO）的量子朗之万方程**

对于一个阈值以下的非简并光学参量振荡器（NDOPO），在相互作用绘景下，其哈密顿量可以表示为：

$$\begin{align}
\hat H_0 = i\xi(\hat a^\dagger \hat b^\dagger-\hat a\hat b), \tag{1}
\end{align}$$

其中 $\xi>0$ 表示有效的非线性耦合率（正比于泵浦光强）。为简单起见，假设这两个腔模式（$\hat a$ 与 $\hat b$）具有相同的腔衰减率 $\gamma$，并且独立地与真空热库耦合，它们对应的输入噪声算符分别为 $\hat a_{\mathrm{in}}(t)$ 和 $\hat b_{\mathrm{in}}(t)$。

1. 请写出腔模式算符 $\hat a$ 和 $\hat b^\dagger$ 的量子朗之万方程。
1. 在物理学中处理对称耦合系统的一个经典方法是引入“集体模式”。定义一组新的正交玻色算符：

$$\begin{align}
\hat c_+ = \frac{\hat a+\hat b}{\sqrt2}, \qquad
\hat c_- = \frac{\hat a-\hat b}{\sqrt2}.
\tag{2}
\end{align}$$

请证明，通过这种线性变换，原本耦合的 NDOPO 系统可以完全等效为两个独立的简并光学参量振荡器（DOPO）系统，并写出 $\hat c_+$ 和 $\hat c_-$ 各自的朗之万方程。

1. 为了验证信号光与闲置光之间的量子非局域关联，定义双模的联合正交振幅算符（EPR 型算符）：

$$\begin{align}
\hat X_\pm = \frac1{\sqrt2}(\hat X_a\pm \hat X_b), \qquad
   \hat Y_\pm = \frac1{\sqrt2}(\hat Y_a\pm \hat Y_b), \tag{3}
\end{align}$$

   其中

$$\begin{align}
\hat X_a=\hat a+\hat a^\dagger, \qquad
   \hat Y_a=-i(\hat a-\hat a^\dagger),
\end{align}$$

   模式 $b$ 同理。

   （a）利用第 2 问中解耦的超模式 $\hat c_\pm$ 及其输出场，直接写出联合正交算符的输出噪声功率谱 $S_{X_+}(\omega)$ 和 $S_{Y_-}(\omega)$。（提示：可以直接利用单模 DOPO 压缩谱的既有结论。）

   （b）证明在阈值以下的任意频率（$\xi<\gamma/2$），始终满足

$$\begin{align}
S_{X_+}(\omega)<1, \qquad
   S_{Y_-}(\omega)<1.
\end{align}$$

   这表明 $\hat X_a$ 与 $\hat X_b$ 倾向于完美的正相关，而 $\hat Y_a$ 与 $\hat Y_b$ 倾向于完美的负相关。

## **题目 2：自由谐振子的输入-输出关系与散射矩阵**

在开放量子系统理论中，对于与热库相互作用的光学谐振腔，腔外远场算符与腔内场算符满足如下输入-输出关系：

$$\begin{align}
\hat a_{\mathrm{out}}(t)-\hat a_{\mathrm{in}}(t) = \sqrt\gamma \hat a(t).
\tag{4}
\end{align}$$

在频域中，稳态下的输入算符 $\hat F_{\mathrm{in}}$ 和输出算符 $\hat F_{\mathrm{out}}$ 可以通过散射矩阵（scattering matrix）相联系，其傅里叶变换满足如下线性关系：

$$\begin{align}
\hat F_{\mathrm{out}}(\omega) = S(\omega)\hat F_{\mathrm{in}}(\omega).
\tag{5}
\end{align}$$

其中 $\hat F(\omega)$ 是算符 $\hat F(t)$ 在稳态下的频域形式。对于单一模式的情形，散射矩阵退化为一个标量函数 $S(\omega)$，满足：

$$\begin{align}
\hat a_{\mathrm{out}}(\omega) = S(\omega)\hat a_{\mathrm{in}}(\omega).
\tag{6}
\end{align}$$

考虑一个无驱动的自由光学谐振腔，其自由哈密顿量为

$$\begin{align}
\hat H_0=\omega_0\hat a^\dagger \hat a.
\end{align}$$

假设腔场以耗散率 $\gamma$ 与外部环境耦合，满足标准的时域输入-输出关系

$$\begin{align}
\hat a_{\mathrm{out}}(t)-\hat a_{\mathrm{in}}(t) = \sqrt\gamma \hat a(t).
\end{align}$$

请推导并计算频域下该自由谐振子的散射矩阵 $S(\omega)$。

---

# 完整解答

# 第 1 次作业解答

## 题目 1 解答

由 $N=a^\dagger a$ 和 $[a,a^\dagger]=1$ 得

$$\begin{align}
[N,a]=[a^\dagger a,a]=a^\dagger[a,a]+[a^\dagger,a]a=-a, \qquad
[N,a^\dagger]=a^\dagger .
\end{align}$$

因此

$$\begin{align}
[H,a]=\hbar\omega[N,a]=-\hbar\omega a.
\end{align}$$

等价地，

$$\begin{align}
Ha=aH-\hbar\omega a=a(H-\hbar\omega).
\end{align}$$

反复使用这个恒等式得到

$$\begin{align}
Ha^m=a^m(H-m\hbar\omega).
\end{align}$$

若 $H|n\rangle=E_n|n\rangle$，则

$$\begin{align}
H a^m|n\rangle=a^m(H-m\hbar\omega)|n\rangle=(E_n-m\hbar\omega)a^m|n\rangle.
\end{align}$$

这就证明了式 (1)。当 $m>n$ 时，$a^m|n\rangle=0$，等式仍成立。

数态构造从真空态 $a|0\rangle=0$ 出发。先定义

$$\begin{align}
|n\rangle=C_n(a^\dagger)^n|0\rangle .
\end{align}$$

利用

$$\begin{align}
a(a^\dagger)^n=(a^\dagger)^n a+n(a^\dagger)^{n-1},
\end{align}$$

可得

$$\begin{align}
a|n\rangle=C_n n(a^\dagger)^{n-1}|0\rangle .
\end{align}$$

归一化条件给出

$$\begin{align}
1=\langle n|n\rangle=|C_n|^2\langle 0|a^n(a^\dagger)^n|0\rangle=|C_n|^2 n!.
\end{align}$$

取相位约定 $C_n=1/\sqrt{n!}$，于是

$$\begin{align}
|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle.
\end{align}$$

同时有

$$\begin{align}
a|n\rangle=\sqrt n\,|n-1\rangle,\qquad
a^\dagger|n\rangle=\sqrt{n+1}\,|n+1\rangle, \qquad
N|n\rangle=n|n\rangle .
\end{align}$$

# 第 2 次作业解答

## 题目 1 解答

先对单项式

$$\begin{align}
f(a,a^\dagger)=a^m(a^\dagger)^n
\end{align}$$

计算。因为 $[a^\dagger,a]=-1$ 且 $[a^\dagger,a^\dagger]=0$，

$$\begin{align}
[a^\dagger,a^m]=\sum_{j=0}^{m-1}a^j[a^\dagger,a]a^{m-1-j}=-m a^{m-1}.
\end{align}$$

所以

$$\begin{align}
[a^\dagger,a^m(a^\dagger)^n]=[a^\dagger,a^m](a^\dagger)^n=-m a^{m-1}(a^\dagger)^n.
\end{align}$$

若把 $a$ 和 $a^\dagger$ 暂时看作形式变量，右边正是

$$\begin{align}
-\frac{\partial}{\partial a}\left(a^m(a^\dagger)^n\right).
\end{align}$$

由于任意可展开的 $f(a,a^\dagger)$ 是这些单项式的线性组合，线性性给出

$$\begin{align}
[a^\dagger,f(a,a^\dagger)]=-\frac{\partial f}{\partial a}.
\end{align}$$

第二个恒等式可由 BCH 公式直接得到。令 $A=x a^\dagger$，则

$$\begin{align}
e^{-A}ae^A=a+[a,A]+\frac{1}{2!}[[a,A],A]+\cdots .
\end{align}$$

又因为

$$\begin{align}
[a,A]=x[a,a^\dagger]=x,\qquad [x,A]=0,
\end{align}$$

所有二重及更高重对易子都为零，因此

$$\begin{align}
e^{-x a^\dagger}a e^{x a^\dagger}=a+x.
\end{align}$$

# 第 3 次作业解答

## 题目 1 解答

定义位移算符

$$\begin{align}
D(\alpha)=\exp(\alpha a^\dagger-\alpha^*a).
\end{align}$$

令 $A=\alpha a^\dagger$、$B=-\alpha^*a$，则

$$\begin{align}
[A,B]=|\alpha|^2
\end{align}$$

是 c-number，并与 $A,B$ 对易。BCH 公式给出

$$\begin{align}
e^{A+B}=e^{-\frac12[A,B]}e^Ae^B =e^{-|\alpha|^2/2}e^{\alpha a^\dagger}e^{-\alpha^*a}.
\end{align}$$

由于 $a|0\rangle=0$，有 $e^{-\alpha^*a}|0\rangle=|0\rangle$，所以

$$\begin{align}
\exp(\alpha a^\dagger-\alpha^*a)|0\rangle =e^{-|\alpha|^2/2}e^{\alpha a^\dagger}|0\rangle.
\end{align}$$

这就是式 (1)。

再计算正则变量方差。相干态满足

$$\begin{align}
a|\alpha\rangle=\alpha|\alpha\rangle,\qquad
\langle a\rangle=\alpha,\qquad
\langle a^\dagger\rangle=\alpha^*.
\end{align}$$

并且

$$\begin{align}
\langle a^2\rangle=\alpha^2,\qquad
\langle a^{\dagger 2}\rangle=\alpha^{*2},\qquad
\langle a^\dagger a\rangle=|\alpha|^2,\qquad
\langle aa^\dagger\rangle=|\alpha|^2+1.
\end{align}$$

因此

$$\begin{align}
\langle q\rangle=\frac{\alpha+\alpha^*}{\sqrt{2m\omega}},
\end{align}$$

而

$$\begin{align}
\langle q^2\rangle =\frac{1}{2m\omega}\langle a^2+a^{\dagger 2}+aa^\dagger+a^\dagger a\rangle =\frac{(\alpha+\alpha^*)^2+1}{2m\omega}.
\end{align}$$

所以

$$\begin{align}
(\Delta q)^2=\langle q^2\rangle-\langle q\rangle^2=\frac{1}{2m\omega}.
\end{align}$$

同理

$$\begin{align}
\langle p\rangle=-i\sqrt{\frac{m\omega}{2}}(\alpha-\alpha^*),
\end{align}$$

且

$$\begin{align}
\langle p^2\rangle =-\frac{m\omega}{2}\langle a^2+a^{\dagger 2}-aa^\dagger-a^\dagger a\rangle,
\end{align}$$

于是

$$\begin{align}
(\Delta p)^2=\frac{m\omega}{2}.
\end{align}$$

因此题目中的式 (3) 应理解为方差

$$\begin{align}
(\Delta q)^2=\frac{1}{2m\omega},\qquad
(\Delta p)^2=\frac{m\omega}{2}.
\end{align}$$

若 $\Delta q,\Delta p$ 表示标准差，则应写成

$$\begin{align}
\Delta q=\frac{1}{\sqrt{2m\omega}},\qquad
\Delta p=\sqrt{\frac{m\omega}{2}}.
\end{align}$$

## 题目 2 解答

写

$$\begin{align}
S(\xi)=e^{rG},\qquad
G=\frac12(e^{-i\theta}a^2-e^{i\theta}a^{\dagger 2}).
\end{align}$$

定义

$$\begin{align}
A(r)=S^\dagger(\xi)aS(\xi),\qquad
B(r)=S^\dagger(\xi)a^\dagger S(\xi).
\end{align}$$

由于 $S=e^{rG}$ 且 $G^\dagger=-G$，

$$\begin{align}
\frac{dA}{dr}=S^\dagger[a,G]S,\qquad \frac{dB}{dr}=S^\dagger[a^\dagger,G]S.
\end{align}$$

直接计算

$$\begin{align}
[a,G]=-e^{i\theta}a^\dagger,\qquad
[a^\dagger,G]=-e^{-i\theta}a.
\end{align}$$

因此

$$\begin{align}
\frac{dA}{dr}=-e^{i\theta}B,\qquad \frac{dB}{dr}=-e^{-i\theta}A,
\end{align}$$

初值为 $A(0)=a$、$B(0)=a^\dagger$。解这个线性方程组得到

$$\begin{align}
A(r)=a\cosh r-a^\dagger e^{i\theta}\sinh r,
\end{align}$$

$$\begin{align}
B(r)=a^\dagger\cosh r-ae^{-i\theta}\sinh r.
\end{align}$$

于是

$$\begin{align}
S^\dagger(\xi)aS(\xi)=a\cosh r-a^\dagger e^{i\theta}\sinh r,
\end{align}$$

$$\begin{align}
S^\dagger(\xi)a^\dagger S(\xi)=a^\dagger\cosh r-ae^{-i\theta}\sinh r.
\end{align}$$

## 题目 3 解答

若系统处于相干态 $|\beta\rangle$，则 $\rho=|\beta\rangle\langle\beta|$，所以

$$\begin{align}
Q_\beta(\alpha)=\frac1\pi|\langle\alpha|\beta\rangle|^2.
\end{align}$$

利用相干态重叠

$$\begin{align}
\langle\alpha|\beta\rangle =\exp\left(-\frac12|\alpha|^2-\frac12|\beta|^2+\alpha^*\beta\right),
\end{align}$$

得到

$$\begin{align}
Q_\beta(\alpha)=\frac1\pi e^{-|\alpha-\beta|^2}.
\end{align}$$

若系统处于 Fock 态 $|n\rangle$，则

$$\begin{align}
Q_n(\alpha)=\frac1\pi|\langle\alpha|n\rangle|^2.
\end{align}$$

由

$$\begin{align}
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_{m=0}^{\infty}\frac{\alpha^m}{\sqrt{m!}}|m\rangle
\end{align}$$

可得

$$\begin{align}
\langle\alpha|n\rangle=e^{-|\alpha|^2/2}\frac{(\alpha^*)^n}{\sqrt{n!}},
\end{align}$$

于是

$$\begin{align}
Q_n(\alpha)=\frac1\pi e^{-|\alpha|^2}\frac{|\alpha|^{2n}}{n!}.
\end{align}$$

## 题目 4 解答

Wigner 表示对应对称序。数算符满足

$$\begin{align}
a^\dagger a=\frac12(a^\dagger a+aa^\dagger)-\frac12.
\end{align}$$

在 Weyl 对应下，对称序算符

$$\begin{align}
\frac12(a^\dagger a+aa^\dagger)
\end{align}$$

对应 c-number 函数 $|\alpha|^2$。因此

$$\begin{align}
a^\dagger a \quad\longleftrightarrow\quad
f_s(\alpha,\alpha^*)=|\alpha|^2-\frac12.
\end{align}$$

也就是说

$$\begin{align}
\langle a^\dagger a\rangle =\int d^2\alpha\,\left(|\alpha|^2-\frac12\right)W(\alpha,\alpha^*).
\end{align}$$

其中 $-1/2$ 来自真空涨落或等价地来自 $aa^\dagger=a^\dagger a+1$。

## 题目 5 解答

混合态的 Wigner 函数是各态 Wigner 函数的线性组合：

$$\begin{align}
W_\rho(0,0)=(1-\epsilon)W_{|1\rangle}(0,0)+\epsilon W_{\mathrm{th}}(0,0).
\end{align}$$

题目给出

$$\begin{align}
W_{|1\rangle}(0,0)=-\frac1\pi.
\end{align}$$

若热态平均光子数为 $\bar n_{\mathrm{th}}$，则在同一归一化约定下

$$\begin{align}
W_{\mathrm{th}}(0,0)=\frac{1}{\pi(2\bar n_{\mathrm{th}}+1)}.
\end{align}$$

于是原点非负的条件为

$$\begin{align}
-\frac{1-\epsilon}{\pi} +\frac{\epsilon}{\pi(2\bar n_{\mathrm{th}}+1)} \ge 0.
\end{align}$$

解得阈值

$$\begin{align}
\epsilon\ge
\epsilon_c =\frac{2\bar n_{\mathrm{th}}+1}{2\bar n_{\mathrm{th}}+2}.
\end{align}$$

特别地，若混入的是真空热态 $\bar n_{\mathrm{th}}=0$，则

$$\begin{align}
\epsilon_c=\frac12.
\end{align}$$

物理上，单光子态在相空间原点的负值是非经典性的直接标志。热噪声本身给出正的、平滑的 Wigner 分布；当热成分超过 $\epsilon_c$ 时，负值被抹平，说明相空间负性这种量子特征对环境噪声非常敏感。$\bar n_{\mathrm{th}}$ 越大，热态在原点越平，抵消单光子负值所需的混合比例越接近 $1$。

# 第 4 次作业解答

## 题目 1 解答

对

$$\begin{align}
\rho(t)=\sum_i p_i|\phi_i(t)\rangle\langle\phi_i(t)|
\end{align}$$

求导。假设 $p_i$ 不随时间变化，

$$\begin{align}
\frac{d\rho}{dt} =\sum_i p_i\left(|\dot\phi_i\rangle\langle\phi_i|+|\phi_i\rangle\langle\dot\phi_i|\right).
\end{align}$$

由薛定谔方程

$$\begin{align}
i|\dot\phi_i\rangle=H|\phi_i\rangle
\end{align}$$

得到

$$\begin{align}
|\dot\phi_i\rangle=-iH|\phi_i\rangle.
\end{align}$$

对偶矢满足

$$\begin{align}
\langle\dot\phi_i|=i\langle\phi_i|H.
\end{align}$$

代回去：

$$\begin{align}
\frac{d\rho}{dt} =\sum_i p_i\left(-iH|\phi_i\rangle\langle\phi_i| +i|\phi_i\rangle\langle\phi_i|H\right).
\end{align}$$

因此

$$\begin{align}
\frac{d\rho}{dt} =-iH\rho+i\rho H =-i[H,\rho].
\end{align}$$

这就是刘维尔-冯诺依曼方程。

## 题目 2 解答

由定义

$$\begin{align}
A_\alpha(\omega) =\sum_{E_{\varepsilon'}-E_\varepsilon=\omega}
P(\varepsilon)A_\alpha P(\varepsilon')
\end{align}$$

和

$$\begin{align}
H_SP(\varepsilon)=E_\varepsilon P(\varepsilon),\qquad
P(\varepsilon')H_S=E_{\varepsilon'}P(\varepsilon')
\end{align}$$

可得

$$\begin{aligned}
[H_S,A_\alpha(\omega)] &= \sum_{E_{\varepsilon'}-E_\varepsilon=\omega} \left( E_\varepsilon P(\varepsilon)A_\alpha P(\varepsilon') -E_{\varepsilon'}P(\varepsilon)A_\alpha P(\varepsilon') \right)\\
&= \sum_{E_{\varepsilon'}-E_\varepsilon=\omega}
(E_\varepsilon-E_{\varepsilon'})
P(\varepsilon)A_\alpha P(\varepsilon')\\
&=-\omega A_\alpha(\omega).
\end{aligned}$$

另一方面，频率分量对所有 Bohr 频率求和等价于对所有能量对求和：

$$\begin{align}
\sum_\omega A_\alpha(\omega) =\sum_{\varepsilon,\varepsilon'}P(\varepsilon)A_\alpha P(\varepsilon').
\end{align}$$

利用完备性

$$\begin{align}
\sum_\varepsilon P(\varepsilon)=1
\end{align}$$

得到

$$\begin{align}
\sum_\omega A_\alpha(\omega) =\left(\sum_\varepsilon P(\varepsilon)\right)A_\alpha \left(\sum_{\varepsilon'}P(\varepsilon')\right) =A_\alpha.
\end{align}$$

## 题目 3 解答

记 Lindblad 耗散子为

$$\begin{align}
\mathcal D[L]\rho=L\rho L^\dagger-\frac12\{L^\dagger L,\rho\}.
\end{align}$$

主方程为

$$\begin{align}
\dot\rho=\Gamma_\downarrow\mathcal D[\sigma_-]\rho +\Gamma_\uparrow\mathcal D[\sigma_+]\rho.
\end{align}$$

任意算符 $O$ 的期望值满足伴随方程

$$\begin{align}
\frac{d}{dt}\langle O\rangle =\Gamma_\downarrow\left\langle
\sigma_+O\sigma_- -\frac12\{\sigma_+\sigma_-,O\} \right\rangle +\Gamma_\uparrow\left\langle
\sigma_-O\sigma_+ -\frac12\{\sigma_-\sigma_+,O\} \right\rangle.
\end{align}$$

取 $O=\sigma_-$。利用 $\sigma_-^2=0$、$\sigma_+\sigma_-=(1+\sigma_z)/2$、$\sigma_-\sigma_+=(1-\sigma_z)/2$，并用

$$\begin{align}
\sigma_z\sigma_-=-\sigma_-,\qquad
\sigma_-\sigma_z=\sigma_-,
\end{align}$$

得到

$$\begin{align}
\frac{d}{dt}S_- =-\frac{\Gamma_\downarrow}{2}S_- -\frac{\Gamma_\uparrow}{2}S_- =-\frac{\Gamma_\uparrow+\Gamma_\downarrow}{2}S_-.
\end{align}$$

取 $O=\sigma_z$。向下跃迁使激发态布居减少、基态布居增加；向上跃迁反之。直接代数计算给出

$$\begin{align}
\frac{d}{dt}S_z =-\Gamma_\downarrow(1+S_z)+\Gamma_\uparrow(1-S_z).
\end{align}$$

整理得

$$\begin{align}
\frac{d}{dt}S_z =-(\Gamma_\uparrow+\Gamma_\downarrow)S_z +(\Gamma_\uparrow-\Gamma_\downarrow).
\end{align}$$

## 题目 4 解答

仍写

$$\begin{align}
\dot\rho=\Gamma_\downarrow\mathcal D[a]\rho +\Gamma_\uparrow\mathcal D[a^\dagger]\rho.
\end{align}$$

对 $O=a$ 使用伴随 Lindblad 方程：

$$\begin{align}
\frac{d}{dt}\langle a\rangle =\Gamma_\downarrow\left\langle
a^\dagger a a-\frac12\{a^\dagger a,a\} \right\rangle +\Gamma_\uparrow\left\langle
a a a^\dagger-\frac12\{aa^\dagger,a\} \right\rangle.
\end{align}$$

由 $[a,a^\dagger]=1$ 化简为

$$\begin{align}
\frac{d}{dt}\langle a\rangle =-\frac{\Gamma_\downarrow-\Gamma_\uparrow}{2}\langle a\rangle.
\end{align}$$

令 $N=a^\dagger a$。同理，

$$\begin{align}
\frac{d}{dt}\langle N\rangle =-\Gamma_\downarrow\langle N\rangle+\Gamma_\uparrow(\langle N\rangle+1) =-(\Gamma_\downarrow-\Gamma_\uparrow)\langle N\rangle+\Gamma_\uparrow.
\end{align}$$

若 $\Gamma_\downarrow>\Gamma_\uparrow$，稳态平均光子数为

$$\begin{align}
\langle N\rangle_{\mathrm{ss}} =\frac{\Gamma_\uparrow}{\Gamma_\downarrow-\Gamma_\uparrow}.
\end{align}$$

若热库参数写成 $\Gamma_\downarrow=\kappa(\bar n+1)$、$\Gamma_\uparrow=\kappa\bar n$，则

$$\begin{align}
\langle a^\dagger a\rangle_{\mathrm{ss}}=\bar n.
\end{align}$$

## 题目 5 解答

把两个系统算符记为

$$\begin{align}
A_a=a,\qquad A_b=b.
\end{align}$$

Born-Markov 近似和零温热库关联函数给出一般形式

$$\begin{align}
\dot\rho_S =-i[H_{\mathrm{eff}},\rho_S] +\sum_{i,j=a,b}\gamma_{ij} \left( A_j\rho_S A_i^\dagger -\frac12\{A_i^\dagger A_j,\rho_S\} \right),
\end{align}$$

其中 $\gamma_{aa}=\gamma_{bb}=\gamma$ 是局域衰减率，交叉系数由热库传播相位决定。把

$$\begin{align}
\Gamma_{ab}=\frac12\gamma_{ab}+iS_{ab}
\end{align}$$

分成实部和虚部后，虚部给出环境诱导的相干耦合

$$\begin{align}
H_{\mathrm{eff}} =S_{ab}a^\dagger b+S_{ba}b^\dagger a.
\end{align}$$

局域耗散项为

$$\begin{align}
\mathcal L_{\mathrm{local}}\rho_S =\gamma\left(a\rho_Sa^\dagger-\frac12\{a^\dagger a,\rho_S\}\right) +\gamma\left(b\rho_Sb^\dagger-\frac12\{b^\dagger b,\rho_S\}\right).
\end{align}$$

协同耗散项为

$$\begin{aligned}
\mathcal L_{\mathrm{coop}}\rho_S &= \gamma_{ab}\left( b\rho_Sa^\dagger-\frac12\{a^\dagger b,\rho_S\} \right)\\
&\quad+ \gamma_{ba}\left( a\rho_Sb^\dagger-\frac12\{b^\dagger a,\rho_S\} \right).
\end{aligned}$$

在一维双向热库中，常用相位约定给出

$$\begin{align}
\gamma_{ab}=\gamma_{ba}=\gamma\cos(k_0L), \qquad
S_{ab}=S_{ba}=\frac{\gamma}{2}\sin(k_0L), \qquad
k_0=\frac{2\pi}{\lambda_0}.
\end{align}$$

因此 $L\to0$ 时

$$\begin{align}
\gamma_{ab}\to\gamma,\qquad S_{ab}\to0,
\end{align}$$

协同耗散最大，两个谐振子通过公共辐射通道形成明暗模。若 $L=\lambda_0/4$ 或四分之一波长的奇数倍，则

$$\begin{align}
\cos(k_0L)=0,\qquad |\sin(k_0L)|=1,
\end{align}$$

协同耗散消失，而相干交换耦合 $|S_{ab}|=\gamma/2$ 达到最大。

只保留协同耗散时，正规 $P$ 表示写作

$$\begin{align}
\rho=\int d^2\alpha\,d^2\beta\, P(\alpha,\alpha^*,\beta,\beta^*)
|\alpha,\beta\rangle\langle\alpha,\beta|.
\end{align}$$

零温阻尼的正规 $P$ 方程只产生一阶漂移项。协同耗散贡献为

$$\begin{align}
\left.\frac{\partial P}{\partial t}\right|_{\mathrm{coop}} = \frac{\gamma_{ab}}{2} \left[ \frac{\partial}{\partial\alpha}(\beta P) +\frac{\partial}{\partial\alpha^*}(\beta^*P) \right] +\frac{\gamma_{ba}}{2} \left[ \frac{\partial}{\partial\beta}(\alpha P) +\frac{\partial}{\partial\beta^*}(\alpha^*P) \right].
\end{align}$$

因此在零温热库下，协同耗散项不产生二阶扩散项。它在相空间中产生模式间混合的线性漂移：

$$\begin{align}
\dot\alpha=-\frac{\gamma_{ab}}{2}\beta,\qquad
\dot\beta=-\frac{\gamma_{ba}}{2}\alpha,
\end{align}$$

以及其复共轭方程。若 $\gamma_{ab}=\gamma_{ba}>0$，则对称模衰减更快，反对称模相对更暗；若交叉率为负，则二者角色互换。

# 第 5 次作业解答

## 题目 1 解答

哈密顿量部分给出

$$\begin{align}
\frac{d}{dt}\langle\sigma_z\rangle_H =i\langle[H_0,\sigma_z]\rangle.
\end{align}$$

其中

$$\begin{align}
H_0=\frac{\delta\omega}{2}\sigma_z+\frac{A}{2}\sigma_x.
\end{align}$$

由于 $[\sigma_z,\sigma_z]=0$ 且 $[\sigma_x,\sigma_z]=-2i\sigma_y$，

$$\begin{align}
i\left\langle\left[\frac{A}{2}\sigma_x,\sigma_z\right]\right\rangle =A\langle\sigma_y\rangle.
\end{align}$$

耗散部分与第 4 次作业题目 3 相同：

$$\begin{align}
\left.\frac{d}{dt}\langle\sigma_z\rangle\right|_{\mathrm{diss}} =-(\Gamma_\uparrow+\Gamma_\downarrow)\langle\sigma_z\rangle +(\Gamma_\uparrow-\Gamma_\downarrow).
\end{align}$$

又

$$\begin{align}
\Gamma_\uparrow-\Gamma_\downarrow =\Gamma n_{\mathrm{th}}-\Gamma(n_{\mathrm{th}}+1) =-\Gamma, \qquad
\Gamma_t=\Gamma_\uparrow+\Gamma_\downarrow.
\end{align}$$

因此

$$\begin{align}
\frac{d}{dt}\langle\sigma_z\rangle =A\langle\sigma_y\rangle-\Gamma_t\langle\sigma_z\rangle-\Gamma.
\end{align}$$

为求稳态，需要同时使用完整 Bloch 方程：

$$\begin{align}
\dot x=-\delta\omega\, y-\frac{\Gamma_t}{2}x,
\end{align}$$

$$\begin{align}
\dot y=\delta\omega\, x-Az-\frac{\Gamma_t}{2}y,
\end{align}$$

$$\begin{align}
\dot z=Ay-\Gamma_tz-\Gamma,
\end{align}$$

其中 $x=\langle\sigma_x\rangle$、$y=\langle\sigma_y\rangle$、$z=\langle\sigma_z\rangle$。令三者导数为零，解得

$$\begin{align}
z_s =-\frac{\Gamma(\Gamma_t^2+4\delta\omega^2)}
{\Gamma_t(\Gamma_t^2+4\delta\omega^2+2A^2)}.
\end{align}$$

同时

$$\begin{align}
y_s=\frac{2A\Gamma}{\Gamma_t^2+4\delta\omega^2+2A^2}, \qquad
x_s=-\frac{4A\delta\omega\,\Gamma}
{\Gamma_t(\Gamma_t^2+4\delta\omega^2+2A^2)}.
\end{align}$$

在严格共振 $\delta\omega=0$ 时，

$$\begin{align}
z_s=-\frac{\Gamma\Gamma_t}{\Gamma_t^2+2A^2}.
\end{align}$$

零温时 $\Gamma_t=\Gamma$，于是

$$\begin{align}
z_s=-\frac{\Gamma^2}{\Gamma^2+2A^2}.
\end{align}$$

## 题目 2 解答

零温且共振时，稳态为

$$\begin{align}
x_s=0,\qquad
y_s=\frac{2A\Gamma}{\Gamma^2+2A^2},\qquad
z_s=-\frac{\Gamma^2}{\Gamma^2+2A^2}.
\end{align}$$

定义偏移量

$$\begin{align}
x'=x-x_s,\qquad y'=y-y_s,\qquad z'=z-z_s.
\end{align}$$

由题目给出的矩阵 $G$，

$$\begin{align}
\dot x'=-\frac{\Gamma}{2}x',
\end{align}$$

所以

$$\begin{align}
\langle\sigma_x(t)\rangle =\langle\sigma_x(0)\rangle e^{-\Gamma t/2}.
\end{align}$$

$y',z'$ 子空间满足

$$
\frac{d}{dt}
\begin{pmatrix}
y'\\ z'
\end{pmatrix}
=
\begin{pmatrix}
-\Gamma/2 & -A\\
A & -\Gamma
\end{pmatrix}
\begin{pmatrix}
y'\\ z'
\end{pmatrix}.
$$

把矩阵写成

$$
\begin{pmatrix}
-\Gamma/2 & -A\\
A & -\Gamma
\end{pmatrix}
=-\frac{3\Gamma}{4}I+
\begin{pmatrix}
\Gamma/4 & -A\\
A & -\Gamma/4
\end{pmatrix}.
$$

后一矩阵的平方为

$$
\left(
\begin{pmatrix}
\Gamma/4 & -A\\
A & -\Gamma/4
\end{pmatrix}
\right)^2
=-\mu^2 I,
\qquad
\mu=\sqrt{A^2-\Gamma^2/16}.
$$

因此

$$
\begin{pmatrix}
y'(t)\\ z'(t)
\end{pmatrix}
=
e^{-3\Gamma t/4}
\left[
I\cos\mu t
+\frac{1}{\mu}
\begin{pmatrix}
\Gamma/4 & -A\\
A & -\Gamma/4
\end{pmatrix}
\sin\mu t
\right]
\begin{pmatrix}
y'(0)\\ z'(0)
\end{pmatrix}.
$$

分量形式正是

$$\begin{align}
\langle\sigma_y(t)\rangle = \langle\sigma_y^s\rangle + \left[ \langle\sigma_y'(0)\rangle \left( \cos\mu t+\frac{\Gamma}{4\mu}\sin\mu t \right) -\frac{A}{\mu}\langle\sigma_z'(0)\rangle\sin\mu t \right]
e^{-3\Gamma t/4},
\end{align}$$

$$\begin{align}
\langle\sigma_z(t)\rangle = \langle\sigma_z^s\rangle + \left[ \langle\sigma_z'(0)\rangle \left( \cos\mu t-\frac{\Gamma}{4\mu}\sin\mu t \right) +\frac{A}{\mu}\langle\sigma_y'(0)\rangle\sin\mu t \right]
e^{-3\Gamma t/4}.
\end{align}$$

若初态为激发态，

$$\begin{align}
x(0)=0,\qquad y(0)=0,\qquad z(0)=1,
\end{align}$$

则轨迹始终位于 $x=0$ 平面内。初始偏移为

$$\begin{align}
y'(0)=-y_s=-\frac{2A\Gamma}{\Gamma^2+2A^2}, \qquad
z'(0)=1-z_s=1+\frac{\Gamma^2}{\Gamma^2+2A^2}.
\end{align}$$

欠阻尼情形 $\Gamma/A<4$ 时，$\mu$ 为实数。轨迹在 $y$-$z$ 平面内围绕稳态点

$$\begin{align}
(y_s,z_s)= \left( \frac{2A\Gamma}{\Gamma^2+2A^2}, -\frac{\Gamma^2}{\Gamma^2+2A^2} \right)
\end{align}$$

作阻尼螺旋，振幅包络按 $e^{-3\Gamma t/4}$ 衰减。

过阻尼情形 $\Gamma/A>4$ 时，令

$$\begin{align}
\nu=\sqrt{\Gamma^2/16-A^2}, \qquad
\mu=i\nu.
\end{align}$$

将上式中的三角函数改写成双曲函数：

$$\begin{align}
\cos\mu t=\cosh\nu t,\qquad \frac{\sin\mu t}{\mu}=\frac{\sinh\nu t}{\nu}.
\end{align}$$

此时轨迹不再绕稳态旋转，而是在 $x=0$ 平面内以两个实衰减率

$$\begin{align}
\lambda_{2,3}=-\frac{3\Gamma}{4}\pm\nu
\end{align}$$

的叠加单调趋近稳态点。

# 第 6 次作业解答

## 题目 1 解答

采用输入-输出关系

$$\begin{align}
a_{\mathrm{out}}-a_{\mathrm{in}}=\sqrt\gamma\,a, \qquad
b_{\mathrm{out}}-b_{\mathrm{in}}=\sqrt\gamma\,b,
\end{align}$$

对应的 Langevin 方程取

$$\begin{align}
\dot a=-i[a,H_0]-\frac{\gamma}{2}a-\sqrt\gamma\,a_{\mathrm{in}}, \qquad
\dot b=-i[b,H_0]-\frac{\gamma}{2}b-\sqrt\gamma\,b_{\mathrm{in}}.
\end{align}$$

由

$$\begin{align}
H_0=i\xi(a^\dagger b^\dagger-ab)
\end{align}$$

得到

$$\begin{align}
-i[a,H_0]=\xi b^\dagger,\qquad -i[b^\dagger,H_0]=\xi a.
\end{align}$$

因此

$$\begin{align}
\dot a=\xi b^\dagger-\frac{\gamma}{2}a-\sqrt\gamma\,a_{\mathrm{in}},
\end{align}$$

$$\begin{align}
\dot b^\dagger=\xi a-\frac{\gamma}{2}b^\dagger-\sqrt\gamma\,b_{\mathrm{in}}^\dagger.
\end{align}$$

定义

$$\begin{align}
c_+=\frac{a+b}{\sqrt2},\qquad
c_-=\frac{a-b}{\sqrt2},
\end{align}$$

以及

$$\begin{align}
c_{\pm,\mathrm{in}}=\frac{a_{\mathrm{in}}\pm b_{\mathrm{in}}}{\sqrt2}.
\end{align}$$

哈密顿量可写成

$$\begin{align}
H_0 =\frac{i\xi}{2}(c_+^{\dagger 2}-c_+^2) -\frac{i\xi}{2}(c_-^{\dagger 2}-c_-^2).
\end{align}$$

因此两个超模式彼此解耦：

$$\begin{align}
\dot c_+ =\xi c_+^\dagger-\frac{\gamma}{2}c_+-\sqrt\gamma\,c_{+,\mathrm{in}},
\end{align}$$

$$\begin{align}
\dot c_- =-\xi c_-^\dagger-\frac{\gamma}{2}c_--\sqrt\gamma\,c_{-,\mathrm{in}}.
\end{align}$$

这就是两个独立 DOPO，只是二者的泵浦相位相差 $\pi$。

令单模正交分量为

$$\begin{align}
X_c=c+c^\dagger,\qquad
Y_c=-i(c-c^\dagger).
\end{align}$$

严格使用上面的哈密顿量和 $c_\pm=(a\pm b)/\sqrt2$ 时，被压缩的组合是 $X_-$ 与 $Y_+$。若按题目最后指定的正相关/负相关组合 $X_+$、$Y_-$，等价于把泵浦相位反转，或对 $b$ 模作相位重定义 $b\to-b$。在这个相位约定下，两个压缩谱为

$$\begin{align}
S_{X_+}(\omega) =1-\frac{2\gamma\xi}
{(\gamma/2+\xi)^2+\omega^2},
\end{align}$$

$$\begin{align}
S_{Y_-}(\omega) =1-\frac{2\gamma\xi}
{(\gamma/2+\xi)^2+\omega^2}.
\end{align}$$

也可写成

$$\begin{align}
S_{X_+}(\omega)=S_{Y_-}(\omega) = \frac{(\gamma/2-\xi)^2+\omega^2}
{(\gamma/2+\xi)^2+\omega^2}.
\end{align}$$

在阈值以下

$$\begin{align}
0<\xi<\frac{\gamma}{2}
\end{align}$$

时，

$$\begin{align}
(\gamma/2-\xi)^2+\omega^2
<
(\gamma/2+\xi)^2+\omega^2,
\end{align}$$

所以

$$\begin{align}
S_{X_+}(\omega)<1,\qquad
S_{Y_-}(\omega)<1.
\end{align}$$

这表示 $X_a$ 与 $X_b$ 的和涨落被压缩，对应正相关；$Y_a$ 与 $Y_b$ 的差涨落被压缩，对应负相关。频率 $\omega=0$ 且 $\xi\to\gamma/2$ 时，压缩最强，谱趋于零。

## 题目 2 解答

自由腔的 Heisenberg-Langevin 方程为

$$\begin{align}
\dot a(t) =-i\omega_0 a(t)-\frac{\gamma}{2}a(t)-\sqrt\gamma\,a_{\mathrm{in}}(t).
\end{align}$$

这里的噪声项符号与题目给出的输入-输出关系

$$\begin{align}
a_{\mathrm{out}}(t)-a_{\mathrm{in}}(t)=\sqrt\gamma\,a(t)
\end{align}$$

配套使用。取傅里叶变换约定

$$\begin{align}
a(\omega)=\int_{-\infty}^{\infty}dt\,e^{i\omega t}a(t),
\end{align}$$

则 $\dot a(t)\to -i\omega a(\omega)$。频域方程为

$$\begin{align}
\left[\frac{\gamma}{2}+i(\omega_0-\omega)\right]a(\omega) =-\sqrt\gamma\,a_{\mathrm{in}}(\omega).
\end{align}$$

因此

$$\begin{align}
a(\omega) =-\frac{\sqrt\gamma}{\frac{\gamma}{2}+i(\omega_0-\omega)}
a_{\mathrm{in}}(\omega).
\end{align}$$

由输入-输出关系

$$\begin{align}
a_{\mathrm{out}}(\omega) =a_{\mathrm{in}}(\omega)+\sqrt\gamma\,a(\omega)
\end{align}$$

得到

$$\begin{align}
a_{\mathrm{out}}(\omega) = \left[ 1-\frac{\gamma}{\frac{\gamma}{2}+i(\omega_0-\omega)} \right]a_{\mathrm{in}}(\omega).
\end{align}$$

所以散射矩阵为

$$\begin{align}
S(\omega) =\frac{i(\omega_0-\omega)-\gamma/2}
{i(\omega_0-\omega)+\gamma/2}.
\end{align}$$

它满足

$$\begin{align}
|S(\omega)|=1,
\end{align}$$

说明无内部损耗、无增益的单端自由腔只改变输入场相位，不改变频域幅度。

---

## 验证记录

- Verified: 用 Mathematica 检查了第 4 次作业题目 3 的二能级 Lindblad 方程；在 $\mathrm{Tr}\rho=1$ 条件下得到 $\dot S_-=-(\Gamma_\uparrow+\Gamma_\downarrow)S_-/2$ 与 $\dot S_z=-(\Gamma_\uparrow+\Gamma_\downarrow)S_z+(\Gamma_\uparrow-\Gamma_\downarrow)$。
- Verified: 用 Mathematica 解第 5 次作业题目 1 的稳态 Bloch 方程，得到 $z_s=-\Gamma(\Gamma_t^2+4\delta\omega^2)/[\Gamma_t(\Gamma_t^2+4\delta\omega^2+2A^2)]$。
- Verified: 用 Mathematica 解第 3 次作业题目 5 的原点阈值方程，得到 $\epsilon_c=(2\bar n_{\mathrm{th}}+1)/(2\bar n_{\mathrm{th}}+2)$。
- Assumptions: 第 4 次作业题目 5 采用一维双向热库的常用相位约定 $\gamma_{ab}=\gamma\cos(k_0L)$、$S_{ab}=(\gamma/2)\sin(k_0L)$；第 6 次作业题目 1 的 $X_+,Y_-$ 压缩结论按题目指定的泵浦相位约定书写。
- Not verified: Born-Markov 近似本身、热库谱密度的具体微观积分、以及第 6 次作业中的输入输出谱归一化没有从具体热库模型重新推导。
