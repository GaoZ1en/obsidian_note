# 量子光学模拟试题

说明：以下十套题按 `homework.md` 的题型生成。每套 6 道题，每题 3 小问；每套题的来源比例固定为 homework 1-2 : homework 3 : homework 4-6 = 2 : 1 : 3。题目中标注“概念”或“推导”，用于控制概念题和推导题大约各占一半。

---

# 模拟试题 1

## 题目 1：Fock 态与能量阶梯

1. 说明为什么单模光场可以看成一个量子谐振子。
2. 由 $[a,a^\dagger]=1$ 推出 $[N,a]=-a$ 和 $[N,a^\dagger]=a^\dagger$。
3. 证明 $H a^m|n\rangle=(E_n-m\hbar\omega)a^m|n\rangle$。

## 题目 2：算符函数与 BCH

1. 说明在对 $f(a,a^\dagger)$ 求“偏导”前为什么必须固定算符排序。
2. 对单项式 $a^r(a^\dagger)^s$ 证明 $[a^\dagger,f]=-\partial f/\partial a$。
3. 用 BCH 证明 $e^{-x a^\dagger}a e^{x a^\dagger}=a+x$。

## 题目 3：相干态的表示

1. 写出相干态的三个等价刻画。
2. 由 $a|\alpha\rangle=\alpha|\alpha\rangle$ 推出 Fock 展开。
3. 用 BCH 证明 $D(\alpha)|0\rangle=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}|0\rangle$。

## 题目 4：密度矩阵动力学

1. 说明纯态和混合态时间演化的区别。
2. 从 $\rho=\sum_i p_i|\phi_i\rangle\langle\phi_i|$ 推导 $\dot\rho=-i[H,\rho]$。
3. 指出该方程保持 $\mathrm{Tr}\rho$ 的原因。

## 题目 5：二能级耗散系统

1. 解释 $\Gamma_\downarrow$ 和 $\Gamma_\uparrow$ 的物理意义。
2. 说明为什么 $S_-$ 的衰减率由 $\Gamma_\uparrow+\Gamma_\downarrow$ 的一半控制。
3. 推出 $\dot S_z=-(\Gamma_\uparrow+\Gamma_\downarrow)S_z+(\Gamma_\uparrow-\Gamma_\downarrow)$。

## 题目 6：自由腔输入-输出

1. 说明输入-输出关系 $a_{\mathrm{out}}-a_{\mathrm{in}}=\sqrt\gamma a$ 的含义。
2. 写出自由腔频域响应 $a(\omega)$ 的标准形式。
3. 求散射矩阵 $S(\omega)$ 并证明 $|S(\omega)|=1$。

## 解答 1

### 题目 1

单模电磁场的每个模式等价于一个频率为 $\omega$ 的谐振子，因此哈密顿量可写成 $H=\hbar\omega(N+1/2)$，其中 $N=a^\dagger a$。由 $[a,a^\dagger]=1$ 得
$$
[N,a]=a^\dagger aa-aa^\dagger a=-a,
\qquad
[N,a^\dagger]=a^\dagger aa^\dagger-a^\dagger a^\dagger a=a^\dagger .
$$
因此 $[H,a]=-\hbar\omega a$，即 $Ha=aH-\hbar\omega a=a(H-\hbar\omega)$。反复使用该关系可得
$$
Ha^m=a^m(H-m\hbar\omega).
$$
若 $H|n\rangle=E_n|n\rangle$，则
$$
Ha^m|n\rangle=(E_n-m\hbar\omega)a^m|n\rangle.
$$

### 题目 2

由于 $a$ 与 $a^\dagger$ 不对易，同一个算符函数可有不同排序形式，因此在把 $f(a,a^\dagger)$ 当作形式幂级数求偏导前必须先固定排序。对单项式 $f=a^r(a^\dagger)^s$，
$$
[a^\dagger,a^r]=\sum_{j=0}^{r-1}a^j[a^\dagger,a]a^{r-1-j}=-r a^{r-1},
$$
且 $[a^\dagger,(a^\dagger)^s]=0$，所以
$$
[a^\dagger,a^r(a^\dagger)^s]=-r a^{r-1}(a^\dagger)^s=-\frac{\partial}{\partial a}a^r(a^\dagger)^s.
$$
线性性把结论推广到幂级数。BCH 公式给出
$$
e^{-A}Be^A=B+[B,A]+\frac{1}{2!}[[B,A],A]+\cdots .
$$
取 $A=xa^\dagger$、$B=a$，有 $[a,A]=x$，更高重对易子为零，所以
$$
e^{-x a^\dagger}a e^{x a^\dagger}=a+x.
$$

### 题目 3

相干态可等价地定义为湮灭算符本征态 $a|\alpha\rangle=\alpha|\alpha\rangle$、位移真空态 $|\alpha\rangle=D(\alpha)|0\rangle$，或 Fock 展开
$$
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_{n=0}^\infty\frac{\alpha^n}{\sqrt{n!}}|n\rangle.
$$
从 $a|\alpha\rangle=\alpha|\alpha\rangle$ 出发，令 $|\alpha\rangle=\sum_n c_n|n\rangle$，比较 $|n\rangle$ 的系数得 $c_{n+1}\sqrt{n+1}=\alpha c_n$，故 $c_n=\alpha^n c_0/\sqrt{n!}$。归一化给出 $c_0=e^{-|\alpha|^2/2}$。另一方面，$D(\alpha)=\exp(\alpha a^\dagger-\alpha^*a)$，BCH 给出
$$
D(\alpha)=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}e^{-\alpha^*a}.
$$
因为 $a|0\rangle=0$，所以 $e^{-\alpha^*a}|0\rangle=|0\rangle$，于是
$$
D(\alpha)|0\rangle=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}|0\rangle.
$$

### 题目 4

纯态用一个态矢量描述，混合态用密度矩阵描述。若
$$
\rho(t)=\sum_i p_i|\phi_i(t)\rangle\langle\phi_i(t)|,
$$
且 $p_i$ 不随时间变化，每个 $|\phi_i\rangle$ 满足 $i|\dot\phi_i\rangle=H|\phi_i\rangle$，则
$$
\dot\rho=\sum_i p_i\left(|\dot\phi_i\rangle\langle\phi_i|+|\phi_i\rangle\langle\dot\phi_i|\right)
=-iH\rho+i\rho H=-i[H,\rho].
$$
迹保持来自对易子的迹为零：
$$
\frac{d}{dt}\mathrm{Tr}\rho=-i\mathrm{Tr}[H,\rho]=0.
$$

### 题目 5

$\Gamma_\downarrow$ 表示从激发态向低能级的衰减率，$\Gamma_\uparrow$ 表示由热库导致的向上激发率。用伴随 Lindblad 方程
$$
\frac{d}{dt}\langle O\rangle
=\Gamma_\downarrow\left\langle\sigma_+O\sigma_--\frac12\{\sigma_+\sigma_-,O\}\right\rangle
+\Gamma_\uparrow\left\langle\sigma_-O\sigma_+-\frac12\{\sigma_-\sigma_+,O\}\right\rangle
$$
并取 $O=\sigma_-$，两类跃迁都会破坏相干性，因此得到
$$
\dot S_-=-\frac{\Gamma_\uparrow+\Gamma_\downarrow}{2}S_-.
$$
取 $O=\sigma_z$，向下跃迁贡献 $-\Gamma_\downarrow(1+S_z)$，向上跃迁贡献 $\Gamma_\uparrow(1-S_z)$，所以
$$
\dot S_z=-(\Gamma_\uparrow+\Gamma_\downarrow)S_z+(\Gamma_\uparrow-\Gamma_\downarrow).
$$

### 题目 6

输入-输出关系 $a_{\mathrm{out}}-a_{\mathrm{in}}=\sqrt\gamma a$ 表示腔外输出场等于直接反射的输入场加上由腔内场泄漏出的部分。自由腔满足
$$
\dot a=-i\omega_0a-\frac{\gamma}{2}a-\sqrt\gamma a_{\mathrm{in}}.
$$
采用 $a(\omega)=\int dt\,e^{i\omega t}a(t)$，频域方程为
$$
\left[\frac{\gamma}{2}+i(\omega_0-\omega)\right]a(\omega)=-\sqrt\gamma a_{\mathrm{in}}(\omega).
$$
因此
$$
a_{\mathrm{out}}(\omega)=\left[1-\frac{\gamma}{\frac{\gamma}{2}+i(\omega_0-\omega)}\right]a_{\mathrm{in}}(\omega),
$$
即
$$
S(\omega)=\frac{i(\omega_0-\omega)-\gamma/2}{i(\omega_0-\omega)+\gamma/2}.
$$
分子和分母模长相同，所以 $|S(\omega)|=1$。

---

# 模拟试题 2

## 题目 1：数态归一化

1. 说明真空态 $|0\rangle$ 的定义。
2. 证明 $a(a^\dagger)^n|0\rangle=n(a^\dagger)^{n-1}|0\rangle$。
3. 证明 $|n\rangle=(a^\dagger)^n|0\rangle/\sqrt{n!}$。

## 题目 2：算符平移与矩阵元

1. 解释为什么 $a$ 是降低算符而 $a^\dagger$ 是升高算符。
2. 写出 $\langle m|a|n\rangle$ 和 $\langle m|a^\dagger|n\rangle$ 的选择定则。
3. 写出 $e^{-x a}a^\dagger e^{x a}$ 表示的产生算符平移。

## 题目 3：相干态不确定性

1. 说明相干态为什么被称为最小不确定态。
2. 用 $q=(a+a^\dagger)/\sqrt{2m\omega}$ 求 $(\Delta q)^2$。
3. 用 $p=-i\sqrt{m\omega/2}(a-a^\dagger)$ 求 $(\Delta p)^2$。

## 题目 4：本征算符分解

1. 说明 Bohr 频率分量 $A_\alpha(\omega)$ 的意义。
2. 证明 $[H_S,A_\alpha(\omega)]=-\omega A_\alpha(\omega)$。
3. 证明 $\sum_\omega A_\alpha(\omega)=A_\alpha$。

## 题目 5：耗散光学腔

1. 解释热库中的 $\Gamma_\uparrow$ 为什么会增加平均光子数。
2. 由主方程求 $\frac{d}{dt}\langle a\rangle$。
3. 求稳态平均光子数 $\langle a^\dagger a\rangle_{\mathrm{ss}}$。

## 题目 6：光学布洛赫方程

1. 说明失谐 $\delta\omega$ 和驱动振幅 $A$ 的作用。
2. 从 $H_0=\delta\omega\sigma_z/2+A\sigma_x/2$ 推出 $\dot z$ 的哈密顿量部分。
3. 写出稳态 $z_s$ 并说明它依赖哪些参数。

## 解答 2

### 题目 1

真空态定义为被湮灭算符消去的态：
$$
a|0\rangle=0.
$$
由对易关系可归纳得到
$$
[a,(a^\dagger)^n]=n(a^\dagger)^{n-1}.
$$
因此
$$
a(a^\dagger)^n|0\rangle=(a^\dagger)^n a|0\rangle+n(a^\dagger)^{n-1}|0\rangle=n(a^\dagger)^{n-1}|0\rangle.
$$
范数为
$$
\langle0|a^n(a^\dagger)^n|0\rangle=n!,
$$
所以归一化数态是
$$
|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle.
$$

### 题目 2

因为 $[H,a]=-\hbar\omega a$，$a$ 使能量降低一个 $\hbar\omega$；因为 $[H,a^\dagger]=\hbar\omega a^\dagger$，$a^\dagger$ 使能量升高一个 $\hbar\omega$。由
$$
a|n\rangle=\sqrt n\,|n-1\rangle,\qquad a^\dagger|n\rangle=\sqrt{n+1}\,|n+1\rangle
$$
可得矩阵元
$$
\langle m|a|n\rangle=\sqrt n\,\delta_{m,n-1},
\qquad
\langle m|a^\dagger|n\rangle=\sqrt{n+1}\,\delta_{m,n+1}.
$$
BCH 中取 $A=xa$、$B=a^\dagger$，则 $[a^\dagger,A]=-x$，高阶对易子为零，所以
$$
e^{-xa}a^\dagger e^{xa}=a^\dagger-x.
$$

### 题目 3

相干态满足与真空态相同的最小不确定乘积，只是平均位置和动量被位移。利用
$$
\langle a\rangle=\alpha,\quad \langle a^2\rangle=\alpha^2,\quad
\langle a^\dagger a\rangle=|\alpha|^2,\quad
\langle aa^\dagger\rangle=|\alpha|^2+1,
$$
有
$$
\langle q\rangle=\frac{\alpha+\alpha^*}{\sqrt{2m\omega}},
\qquad
\langle q^2\rangle=\frac{(\alpha+\alpha^*)^2+1}{2m\omega},
$$
故
$$
(\Delta q)^2=\frac{1}{2m\omega}.
$$
同理，
$$
\langle p\rangle=-i\sqrt{\frac{m\omega}{2}}(\alpha-\alpha^*),
\qquad
(\Delta p)^2=\frac{m\omega}{2}.
$$
因此 $\Delta q\,\Delta p=1/2$。

### 题目 4

$A_\alpha(\omega)$ 只保留把能量 $E_{\varepsilon'}$ 的态连接到 $E_\varepsilon$ 的部分，且 $E_{\varepsilon'}-E_\varepsilon=\omega$。由
$$
H_SP(\varepsilon)=E_\varepsilon P(\varepsilon),
\qquad
P(\varepsilon')H_S=E_{\varepsilon'}P(\varepsilon')
$$
得
$$
[H_S,P(\varepsilon)A_\alpha P(\varepsilon')]
=(E_\varepsilon-E_{\varepsilon'})P(\varepsilon)A_\alpha P(\varepsilon')
=-\omega P(\varepsilon)A_\alpha P(\varepsilon').
$$
对所有满足能量差为 $\omega$ 的项求和，即
$$
[H_S,A_\alpha(\omega)]=-\omega A_\alpha(\omega).
$$
再对全部 Bohr 频率求和，相当于对所有能量投影求和：
$$
\sum_\omega A_\alpha(\omega)
=\sum_{\varepsilon,\varepsilon'}P(\varepsilon)A_\alpha P(\varepsilon')
=A_\alpha.
$$

### 题目 5

$\Gamma_\uparrow$ 对应热库向腔内注入激发，因此它会增加平均光子数。对 $O=a$ 使用伴随 Lindblad 方程得
$$
\frac{d}{dt}\langle a\rangle=-\frac{\Gamma_\downarrow-\Gamma_\uparrow}{2}\langle a\rangle.
$$
令 $N=a^\dagger a$，同样计算得到
$$
\frac{d}{dt}\langle N\rangle=-(\Gamma_\downarrow-\Gamma_\uparrow)\langle N\rangle+\Gamma_\uparrow.
$$
若 $\Gamma_\downarrow>\Gamma_\uparrow$，稳态满足
$$
\langle a^\dagger a\rangle_{\mathrm{ss}}
=\frac{\Gamma_\uparrow}{\Gamma_\downarrow-\Gamma_\uparrow}.
$$

### 题目 6

失谐 $\delta\omega$ 给出旋转系中能级偏移，驱动振幅 $A$ 给出横向 Rabi 驱动。哈密顿量部分满足
$$
\left.\dot z\right|_H=i\left\langle\left[\frac{\delta\omega}{2}\sigma_z+\frac A2\sigma_x,\sigma_z\right]\right\rangle
=A\langle\sigma_y\rangle.
$$
加入耗散后
$$
\dot z=Ay-\Gamma_tz-\Gamma.
$$
完整稳态由
$$
\dot x=-\delta\omega y-\frac{\Gamma_t}{2}x,\quad
\dot y=\delta\omega x-Az-\frac{\Gamma_t}{2}y,\quad
\dot z=Ay-\Gamma_tz-\Gamma
$$
联立求得
$$
z_s=-\frac{\Gamma(\Gamma_t^2+4\delta\omega^2)}
{\Gamma_t(\Gamma_t^2+4\delta\omega^2+2A^2)}.
$$
它依赖失谐、驱动强度、零温自发辐射率和总衰减率。

---

# 模拟试题 3

## 题目 1：正规序与对易关系

1. 比较正规序、反正规序和对称序。
2. 把 $aa^\dagger$ 写成正规序。
3. 计算 $[N,a^m]$。

## 题目 2：光子数统计

1. 比较 Fock 态、相干态和热态的光子数涨落。
2. 求 Fock 态 $|n\rangle$ 的 $\langle N\rangle$ 和 $(\Delta N)^2$。
3. 由相干态 Fock 展开求 $P_n$。

## 题目 3：$Q$ 表示

1. 说明 $Q(\alpha)=\pi^{-1}\langle\alpha|\rho|\alpha\rangle$ 为什么总非负。
2. 求 $\rho=|\beta\rangle\langle\beta|$ 的 $Q$ 函数。
3. 求 $\rho=|n\rangle\langle n|$ 的 $Q$ 函数。

## 题目 4：主方程与 Lindblad 形式

1. 说明 Lindblad 耗散子的结构。
2. 写出 $D[L]\rho$ 的伴随形式对 $\langle O\rangle$ 的贡献。
3. 解释 Lindblad 形式为什么适合描述马尔可夫开放系统。

## 题目 5：公共热库协同耗散

1. 说明局域耗散和协同耗散的区别。
2. 写出 $H_{\mathrm{eff}}$ 和 $\mathcal L_{\mathrm{coop}}$ 的物理分解。
3. 讨论 $L\to0$ 与 $L=\lambda_0/4$ 的物理差别。

## 题目 6：NDOPO 朗之万方程

1. 说明阈值以下条件 $\xi<\gamma/2$ 的意义。
2. 由 $H_0=i\xi(a^\dagger b^\dagger-ab)$ 推出 $\dot a$ 和 $\dot b^\dagger$。
3. 定义 $c_\pm=(a\pm b)/\sqrt2$，写出解耦方程。

## 解答 3

### 题目 1

正规序把所有 $a^\dagger$ 放在 $a$ 左侧，反正规序把所有 $a$ 放在 $a^\dagger$ 左侧，对称序对所有排列取平均。由 $[a,a^\dagger]=1$ 得
$$
aa^\dagger=a^\dagger a+1,
$$
这就是 $aa^\dagger$ 的正规序形式。由 $[N,a]=-a$ 和对易子的 Leibniz 规则，
$$
[N,a^m]=\sum_{j=0}^{m-1}a^j[N,a]a^{m-1-j}=-m a^m.
$$

### 题目 2

Fock 态具有固定光子数，光子数无涨落；相干态服从 Poisson 分布；热态服从 Bose-Einstein 分布，涨落最大。对 Fock 态，
$$
N|n\rangle=n|n\rangle,
$$
所以
$$
\langle N\rangle=n,\qquad \langle N^2\rangle=n^2,\qquad (\Delta N)^2=0.
$$
相干态展开为
$$
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_{n=0}^\infty\frac{\alpha^n}{\sqrt{n!}}|n\rangle,
$$
因此光子数概率为
$$
P_n=|\langle n|\alpha\rangle|^2=e^{-|\alpha|^2}\frac{|\alpha|^{2n}}{n!}.
$$

### 题目 3

$Q$ 函数是密度矩阵在归一化相干态上的对角元：
$$
Q(\alpha)=\frac1\pi\langle\alpha|\rho|\alpha\rangle.
$$
由于 $\rho$ 是正算符，$\langle\alpha|\rho|\alpha\rangle\ge0$，所以 $Q(\alpha)$ 总非负。若 $\rho=|\beta\rangle\langle\beta|$，
$$
Q_\beta(\alpha)=\frac1\pi|\langle\alpha|\beta\rangle|^2
=\frac1\pi e^{-|\alpha-\beta|^2}.
$$
若 $\rho=|n\rangle\langle n|$，用
$$
\langle\alpha|n\rangle=e^{-|\alpha|^2/2}\frac{(\alpha^*)^n}{\sqrt{n!}},
$$
得到
$$
Q_n(\alpha)=\frac1\pi e^{-|\alpha|^2}\frac{|\alpha|^{2n}}{n!}.
$$

### 题目 4

Lindblad 耗散子为
$$
\mathcal D[L]\rho=L\rho L^\dagger-\frac12\{L^\dagger L,\rho\}.
$$
任意算符 $O$ 的期望值满足伴随形式
$$
\frac{d}{dt}\langle O\rangle
=\left\langle L^\dagger O L-\frac12\{L^\dagger L,O\}\right\rangle
$$
乘以相应跃迁率后求和。该结构在马尔可夫近似下保持密度矩阵的迹和正性，因此适合描述无记忆开放系统。

### 题目 5

局域耗散描述每个振子各自向环境衰减；协同耗散描述两个振子通过同一个热库产生的交叉衰减通道。把交叉率写成
$$
\Gamma_{ab}=\frac12\gamma_{ab}+iS_{ab},
$$
虚部给出环境诱导相干耦合
$$
H_{\mathrm{eff}}=S_{ab}a^\dagger b+S_{ba}b^\dagger a,
$$
实部给出协同耗散
$$
\mathcal L_{\mathrm{coop}}\rho
=\gamma_{ab}\left(b\rho a^\dagger-\frac12\{a^\dagger b,\rho\}\right)
+\gamma_{ba}\left(a\rho b^\dagger-\frac12\{b^\dagger a,\rho\}\right).
$$
在常用一维相位约定下，$L\to0$ 时协同耗散最大；$L=\lambda_0/4$ 时 $\cos(k_0L)=0$，协同耗散消失，而相干交换由 $\sin(k_0L)$ 控制并达到最大模值。

### 题目 6

阈值以下 $\xi<\gamma/2$ 表示参量增益小于腔阻尼，系统有稳定稳态。由
$$
H_0=i\xi(a^\dagger b^\dagger-ab)
$$
得
$$
-i[a,H_0]=\xi b^\dagger,\qquad -i[b^\dagger,H_0]=\xi a.
$$
加入阻尼和输入噪声，
$$
\dot a=\xi b^\dagger-\frac\gamma2 a-\sqrt\gamma a_{\mathrm{in}},
\qquad
\dot b^\dagger=\xi a-\frac\gamma2 b^\dagger-\sqrt\gamma b_{\mathrm{in}}^\dagger.
$$
定义 $c_\pm=(a\pm b)/\sqrt2$ 和 $c_{\pm,\mathrm{in}}=(a_{\mathrm{in}}\pm b_{\mathrm{in}})/\sqrt2$，得到两个解耦方程
$$
\dot c_+=\xi c_+^\dagger-\frac\gamma2 c_+-\sqrt\gamma c_{+,\mathrm{in}},
\qquad
\dot c_-=-\xi c_-^\dagger-\frac\gamma2 c_--\sqrt\gamma c_{-,\mathrm{in}}.
$$

---

# 模拟试题 4

## 题目 1：Hamiltonian 与数算符

1. 说明零点能是否影响 $a$ 的降低算符性质。
2. 计算 $[H,(a^\dagger)^m]$。
3. 证明 $(a^\dagger)^m|n\rangle$ 的能量本征值为 $E_n+m\hbar\omega$。

## 题目 2：BCH 的终止条件

1. 说明 BCH 级数在什么情况下会终止。
2. 求 $e^{-x a^\dagger}N e^{x a^\dagger}$。
3. 求 $e^{-x a}N e^{x a}$。

## 题目 3：压缩算符

1. 说明压缩态与相干态在噪声分布上的区别。
2. 由 $S(\xi)$ 推出 $S^\dagger aS=a\cosh r-a^\dagger e^{i\theta}\sinh r$。
3. 写出被压缩正交分量的方差并说明噪声再分配。

## 题目 4：光学腔热平衡

1. 说明 $\Gamma_\downarrow>\Gamma_\uparrow$ 的稳定性意义。
2. 解 $\dot n=-(\Gamma_\downarrow-\Gamma_\uparrow)n+\Gamma_\uparrow$。
3. 把结果与热库平均光子数 $\bar n$ 联系起来。

## 题目 5：布洛赫矢量稳态

1. 说明驱动导致饱和的物理图像。
2. 在 $\delta\omega=0$ 时解 $y_s,z_s$。
3. 讨论 $A\to0$ 和 $A\to\infty$ 的极限。

## 题目 6：NDOPO 输出压缩谱

1. 说明 $X_+$ 与 $Y_-$ 的 EPR 型关联含义。
2. 写出 $S_{X_+}(\omega)$ 和 $S_{Y_-}(\omega)$。
3. 证明阈值以下二者小于 1。

## 解答 4

### 题目 1

零点能是 $H=\hbar\omega(N+1/2)$ 中的常数项，它与任何算符对易，因此不影响 $a$ 和 $a^\dagger$ 的升降性质。由 $[H,a^\dagger]=\hbar\omega a^\dagger$ 得
$$
[H,(a^\dagger)^m]
=\sum_{j=0}^{m-1}(a^\dagger)^j[H,a^\dagger](a^\dagger)^{m-1-j}
=m\hbar\omega(a^\dagger)^m.
$$
若 $H|n\rangle=E_n|n\rangle$，则
$$
H(a^\dagger)^m|n\rangle
=\left((a^\dagger)^mH+m\hbar\omega(a^\dagger)^m\right)|n\rangle
=(E_n+m\hbar\omega)(a^\dagger)^m|n\rangle.
$$

### 题目 2

BCH 级数在有限阶嵌套对易子为零时终止。由
$$
e^{-x a^\dagger}a e^{x a^\dagger}=a+x,\qquad
e^{-x a^\dagger}a^\dagger e^{x a^\dagger}=a^\dagger
$$
可得
$$
e^{-x a^\dagger}N e^{x a^\dagger}
=a^\dagger(a+x)=N+xa^\dagger.
$$
同理，
$$
e^{-xa}a^\dagger e^{xa}=a^\dagger-x,\qquad
e^{-xa}ae^{xa}=a,
$$
所以
$$
e^{-xa}N e^{xa}=(a^\dagger-x)a=N-xa.
$$

### 题目 3

相干态只平移真空噪声，而压缩态重新分配两个正交分量的涨落，使一个低于真空噪声、另一个高于真空噪声。令
$$
S(\xi)=e^{rG},\qquad
G=\frac12(e^{-i\theta}a^2-e^{i\theta}a^{\dagger2}).
$$
定义 $A(r)=S^\dagger aS$、$B(r)=S^\dagger a^\dagger S$，则
$$
\frac{dA}{dr}=-e^{i\theta}B,\qquad
\frac{dB}{dr}=-e^{-i\theta}A,
$$
且 $A(0)=a$、$B(0)=a^\dagger$。解得
$$
S^\dagger aS=a\cosh r-a^\dagger e^{i\theta}\sinh r.
$$
沿压缩角定义正交分量 $Y_1,Y_2$，压缩真空中
$$
(\Delta Y_1)^2=e^{-2r},\qquad
(\Delta Y_2)^2=e^{2r}.
$$

### 题目 4

稳定要求净阻尼为正，即 $\Gamma_\downarrow-\Gamma_\uparrow>0$。平均光子数方程
$$
\dot n=-(\Gamma_\downarrow-\Gamma_\uparrow)n+\Gamma_\uparrow
$$
是一阶线性方程，其解为
$$
n(t)=n_{\mathrm{ss}}+[n(0)-n_{\mathrm{ss}}]e^{-(\Gamma_\downarrow-\Gamma_\uparrow)t},
$$
其中
$$
n_{\mathrm{ss}}=\frac{\Gamma_\uparrow}{\Gamma_\downarrow-\Gamma_\uparrow}.
$$
若热库参数写成 $\Gamma_\downarrow=\kappa(\bar n+1)$、$\Gamma_\uparrow=\kappa\bar n$，则
$$
n_{\mathrm{ss}}=\bar n.
$$

### 题目 5

共振时 $\delta\omega=0$，稳态方程为
$$
-\frac{\Gamma_t}{2}x_s=0,\qquad
-Az_s-\frac{\Gamma_t}{2}y_s=0,\qquad
Ay_s-\Gamma_tz_s-\Gamma=0.
$$
由第一式 $x_s=0$，第二式 $y_s=-2Az_s/\Gamma_t$。代入第三式得
$$
z_s=-\frac{\Gamma\Gamma_t}{\Gamma_t^2+2A^2},
\qquad
y_s=\frac{2A\Gamma}{\Gamma_t^2+2A^2}.
$$
$A\to0$ 时回到热平衡反转 $z_s=-\Gamma/\Gamma_t$；$A\to\infty$ 时 $z_s\to0$，说明强驱动使上下能级布居趋于饱和。

### 题目 6

$X_+$ 被压缩表示两个模式的振幅正相关，$Y_-$ 被压缩表示相位正交分量负相关。在题目指定相位约定下，阈值以下输出谱为
$$
S_{X_+}(\omega)=S_{Y_-}(\omega)
=\frac{(\gamma/2-\xi)^2+\omega^2}{(\gamma/2+\xi)^2+\omega^2}.
$$
当 $0<\xi<\gamma/2$ 时，
$$
(\gamma/2-\xi)^2+\omega^2<(\gamma/2+\xi)^2+\omega^2,
$$
所以
$$
S_{X_+}(\omega)<1,\qquad S_{Y_-}(\omega)<1.
$$

---

# 模拟试题 5

## 题目 1：多次湮灭作用

1. 说明 $a^m|n\rangle$ 在 $m>n$ 时的含义。
2. 求 $a^m|n\rangle$ 的归一化系数。
3. 用该结果验证 $N a^m|n\rangle=(n-m)a^m|n\rangle$。

## 题目 2：算符导数的应用

1. 说明 $[a,f]=\partial f/\partial a^\dagger$ 的使用条件。
2. 计算 $[a^\dagger,a^2a^\dagger]$。
3. 计算 $[a,(a^\dagger)^2a]$。

## 题目 3：Wigner 表示

1. 说明 Wigner 表示与对称序的关系。
2. 求 $a^\dagger a$ 的 Weyl 对应函数。
3. 解释 $-1/2$ 的物理来源。

## 题目 4：协同耗散的相空间形式

1. 说明零温阻尼在正规 $P$ 表示中为什么只给漂移。
2. 写出协同耗散对 $P(\alpha,\beta)$ 的一阶导数贡献。
3. 说明正、负交叉率对明暗模的影响。

## 题目 5：布洛赫含时解

1. 说明为什么共振零温轨迹位于 $x=0$ 平面。
2. 写出 $y',z'$ 子空间的演化矩阵。
3. 比较欠阻尼和过阻尼轨迹。

## 题目 6：自由腔相移

1. 说明无内部损耗单端腔为何 $|S|=1$。
2. 求共振点 $\omega=\omega_0$ 的 $S(\omega_0)$。
3. 解释共振附近相位快速变化的意义。

## 解答 5

### 题目 1

$a$ 每作用一次会降低一个光子数，因此当 $m>n$ 时
$$
a^m|n\rangle=0.
$$
当 $m\le n$ 时反复使用 $a|n\rangle=\sqrt n|n-1\rangle$，得到
$$
a^m|n\rangle=\sqrt{n(n-1)\cdots(n-m+1)}\,|n-m\rangle
=\sqrt{\frac{n!}{(n-m)!}}|n-m\rangle.
$$
再由 $N|n-m\rangle=(n-m)|n-m\rangle$，立刻得到
$$
N a^m|n\rangle=(n-m)a^m|n\rangle.
$$

### 题目 2

公式 $[a,f]=\partial f/\partial a^\dagger$ 的使用条件是：$f(a,a^\dagger)$ 先按固定排序写成可展开的幂级数。对
$$
f=a^2a^\dagger,
$$
有
$$
[a^\dagger,a^2a^\dagger]=[a^\dagger,a^2]a^\dagger=-2aa^\dagger.
$$
对
$$
g=(a^\dagger)^2a,
$$
有
$$
[a,(a^\dagger)^2a]=[a,(a^\dagger)^2]a=2a^\dagger a.
$$
这与形式求导规则一致。

### 题目 3

Wigner 表示直接对应对称序平均值。数算符满足
$$
a^\dagger a=\frac12(a^\dagger a+aa^\dagger)-\frac12.
$$
对称序部分 $\frac12(a^\dagger a+aa^\dagger)$ 对应 c-number 函数 $|\alpha|^2$，因此
$$
a^\dagger a\longleftrightarrow |\alpha|^2-\frac12.
$$
其中 $-1/2$ 来自真空涨落，也等价地来自非对易关系 $aa^\dagger=a^\dagger a+1$。

### 题目 4

零温正规 $P$ 表示中，损耗项只对应确定性衰减漂移，不产生热扩散。只保留协同耗散时，
$$
\left.\frac{\partial P}{\partial t}\right|_{\mathrm{coop}}
=\frac{\gamma_{ab}}2\left[
\frac{\partial}{\partial\alpha}(\beta P)
+\frac{\partial}{\partial\alpha^*}(\beta^*P)
\right]
+\frac{\gamma_{ba}}2\left[
\frac{\partial}{\partial\beta}(\alpha P)
+\frac{\partial}{\partial\beta^*}(\alpha^*P)
\right].
$$
因此对应的漂移为
$$
\dot\alpha=-\frac{\gamma_{ab}}2\beta,\qquad
\dot\beta=-\frac{\gamma_{ba}}2\alpha
$$
及其复共轭。正交叉率使对称模衰减更快、反对称模更暗；负交叉率时二者角色互换。

### 题目 5

在零温共振情形，若初态 $x(0)=0$，且
$$
\dot x=-\frac{\Gamma}{2}x,
$$
则 $x(t)=0$，轨迹始终位于 $y$-$z$ 平面。相对稳态的偏移量满足
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
若 $\Gamma/A<4$，本征值有非零虚部，轨迹以阻尼振荡方式趋近稳态；若 $\Gamma/A>4$，本征值为实数，轨迹不绕行，而由两个实指数衰减单调趋近稳态。

### 题目 6

无内部损耗意味着入射能量只在同一输入输出通道中弹性散射，因此散射矩阵模长为 1。自由腔
$$
S(\omega)=\frac{i(\omega_0-\omega)-\gamma/2}{i(\omega_0-\omega)+\gamma/2}.
$$
在共振点 $\omega=\omega_0$，
$$
S(\omega_0)=\frac{-\gamma/2}{\gamma/2}=-1,
$$
表示反射场相位改变 $\pi$。共振附近相位快速变化反映腔的频率选择性和群延迟。

---

# 模拟试题 6

## 题目 1：数态完备性

1. 说明 Fock 基为什么适合描述固定光子数测量。
2. 证明 $\sum_n|n\rangle\langle n|=\mathbf 1$ 时可展开任意单模态。
3. 用 Fock 基计算 $\langle\psi|N|\psi\rangle$。

## 题目 2：指数算符恒等式

1. 说明 $[A,B]$ 是 c-number 时 BCH 分解为何简化。
2. 证明 $e^{A+B}=e^{-[A,B]/2}e^Ae^B$ 的适用条件。
3. 用于 $A=\alpha a^\dagger$、$B=-\alpha^*a$，写出位移算符正规分解。

## 题目 3：单光子 Wigner 负性

1. 说明 Wigner 函数负值为什么是非经典性信号。
2. 对 $\rho=(1-\epsilon)|1\rangle\langle1|+\epsilon\rho_{\mathrm{th}}$ 求原点负性消失阈值。
3. 讨论 $\bar n_{\mathrm{th}}$ 增大时阈值的变化。

## 题目 4：本征算符与主方程

1. 说明把系统算符分解为 $A_\alpha(\omega)$ 的目的。
2. 证明 $A_\alpha^\dagger(\omega)=A_\alpha^\dagger(-\omega)$。
3. 解释这种分解如何进入 Born-Markov 主方程。

## 题目 5：光学布洛赫稳态极限

1. 说明 $n_{\mathrm{th}}$ 对总衰减率 $\Gamma_t$ 的影响。
2. 在无驱动 $A=0$ 时求 $z_s$。
3. 在零温共振时求强驱动极限 $z_s$。

## 题目 6：NDOPO 与 DOPO 的等价

1. 说明超模式 $c_\pm$ 为什么能解耦。
2. 把 $H_0=i\xi(a^\dagger b^\dagger-ab)$ 改写为 $c_\pm$ 的形式。
3. 解释两个 DOPO 的泵浦相位相差 $\pi$。

## 解答 6

### 题目 1

Fock 态是光子数算符 $N$ 的本征态，因此适合描述固定光子数测量。若完备关系成立，
$$
\sum_{n=0}^\infty |n\rangle\langle n|=\mathbf 1,
$$
任意单模纯态都可展开为
$$
|\psi\rangle=\sum_{n=0}^\infty c_n|n\rangle,\qquad c_n=\langle n|\psi\rangle.
$$
归一化条件为 $\sum_n|c_n|^2=1$。由于 $N|n\rangle=n|n\rangle$，
$$
\langle\psi|N|\psi\rangle
=\sum_{m,n}c_m^*c_n\langle m|N|n\rangle
=\sum_n n|c_n|^2.
$$

### 题目 2

若 $[A,B]$ 是 c-number，并且与 $A,B$ 都对易，则 BCH 分解简化为
$$
e^{A+B}=e^{-[A,B]/2}e^Ae^B.
$$
这是因为所有更高嵌套对易子都为零。对
$$
A=\alpha a^\dagger,\qquad B=-\alpha^*a,
$$
有
$$
[A,B]=|\alpha|^2.
$$
因此位移算符
$$
D(\alpha)=e^{\alpha a^\dagger-\alpha^*a}
$$
可正规分解为
$$
D(\alpha)=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}e^{-\alpha^*a}.
$$

### 题目 3

Wigner 函数负值是非经典性信号，因为经典相空间概率分布不能取负。混合态原点处的 Wigner 函数为
$$
W_\rho(0)= (1-\epsilon)\left(-\frac1\pi\right)
+\epsilon\frac{1}{\pi(2\bar n_{\mathrm{th}}+1)}.
$$
令其非负，得到
$$
-(1-\epsilon)+\frac{\epsilon}{2\bar n_{\mathrm{th}}+1}\ge0.
$$
阈值为
$$
\epsilon_c=\frac{2\bar n_{\mathrm{th}}+1}{2\bar n_{\mathrm{th}}+2}.
$$
当 $\bar n_{\mathrm{th}}$ 增大时，热态在原点的正峰值变小，因此需要更大的混合比例才能抹平单光子负性。

### 题目 4

把系统算符分解为 $A_\alpha(\omega)$ 的目的，是把跃迁按 Bohr 频率分类，从而与热库谱密度和关联函数在相应频率处的值匹配。若
$$
A_\alpha(\omega)=\sum_{E'-E=\omega}P(E)A_\alpha P(E'),
$$
取厄米共轭得
$$
A_\alpha^\dagger(\omega)
=\sum_{E'-E=\omega}P(E')A_\alpha^\dagger P(E)
=A_\alpha^\dagger(-\omega).
$$
在 Born-Markov 主方程中，不同频率分量对应不同跃迁通道，其系数由热库在对应频率处的关联函数决定。

### 题目 5

热光子数 $n_{\mathrm{th}}$ 使向上和向下跃迁率都增加，总衰减率为
$$
\Gamma_t=\Gamma(2n_{\mathrm{th}}+1).
$$
无驱动时 $\dot z=-\Gamma_tz-\Gamma$，稳态满足
$$
z_s=-\frac{\Gamma}{\Gamma_t}=-\frac{1}{2n_{\mathrm{th}}+1}.
$$
零温共振时 $\Gamma_t=\Gamma$，且
$$
z_s=-\frac{\Gamma^2}{\Gamma^2+2A^2}.
$$
强驱动极限 $A\to\infty$ 下，$z_s\to0$，表示上下能级布居趋于相等。

### 题目 6

超模式 $c_\pm=(a\pm b)/\sqrt2$ 是正交线性组合，保持玻色对易关系，并把双模成对产生项对角化。反解为
$$
a=\frac{c_++c_-}{\sqrt2},\qquad b=\frac{c_+-c_-}{\sqrt2}.
$$
代入
$$
H_0=i\xi(a^\dagger b^\dagger-ab)
$$
得
$$
H_0=\frac{i\xi}{2}(c_+^{\dagger2}-c_+^2)
-\frac{i\xi}{2}(c_-^{\dagger2}-c_-^2).
$$
两个超模式互不耦合，分别等价于两个 DOPO；二者前面的符号相反，表示泵浦相位相差 $\pi$。

---

# 模拟试题 7

## 题目 1：能量本征态判定

1. 说明 $a|n\rangle$ 何时不是归一化态。
2. 写出 $aa^\dagger|n\rangle$ 对数态的作用。
3. 证明 $H|n\rangle=\hbar\omega(n+1/2)|n\rangle$。

## 题目 2：对易子链式法则

1. 说明对易子线性性在算符函数证明中的作用。
2. 证明 $[a^\dagger,a^r]=-r a^{r-1}$。
3. 证明 $[a,(a^\dagger)^s]=s(a^\dagger)^{s-1}$。

## 题目 3：相干态重叠

1. 说明相干态为什么不是正交基。
2. 求 $\langle\alpha|\beta\rangle$。
3. 由重叠公式求 $|\langle\alpha|\beta\rangle|^2$。

## 题目 4：Liouville 方程的守恒量

1. 说明封闭系统中密度矩阵演化为何是幺正的。
2. 证明 $\frac{d}{dt}\mathrm{Tr}\rho=0$。
3. 当 $H$ 不显含时，证明 $\frac{d}{dt}\mathrm{Tr}(\rho H)=0$。

## 题目 5：二能级耗散稳态

1. 说明无驱动耗散二能级最终达到什么态。
2. 由 $\dot S_z$ 求 $S_z^{\mathrm{ss}}$。
3. 讨论零温极限。

## 题目 6：输入-输出傅里叶约定

1. 说明傅里叶约定会影响哪些中间符号。
2. 用 $a(\omega)=\int dt\,e^{i\omega t}a(t)$ 推出 $\dot a\to-i\omega a(\omega)$。
3. 在该约定下写出 $S(\omega)$ 的最终形式。

## 解答 7

### 题目 1

$a|n\rangle=\sqrt n|n-1\rangle$ 的范数为 $\sqrt n$，所以一般不是归一化态；当 $n=0$ 时它为零。由 $a^\dagger|n\rangle=\sqrt{n+1}|n+1\rangle$，得到
$$
aa^\dagger|n\rangle=(n+1)|n\rangle.
$$
又因为 $N|n\rangle=n|n\rangle$，单模哈密顿量 $H=\hbar\omega(N+1/2)$ 给出
$$
H|n\rangle=\hbar\omega\left(n+\frac12\right)|n\rangle.
$$

### 题目 2

对易子的线性性使得只需证明单项式情形，再推广到任意幂级数。利用 Leibniz 规则，
$$
[a^\dagger,a^r]
=\sum_{j=0}^{r-1}a^j[a^\dagger,a]a^{r-1-j}
=-r a^{r-1}.
$$
同理，
$$
[a,(a^\dagger)^s]
=\sum_{j=0}^{s-1}(a^\dagger)^j[a,a^\dagger](a^\dagger)^{s-1-j}
=s(a^\dagger)^{s-1}.
$$

### 题目 3

相干态满足过完备性，但任意两个不同相干态不正交。由 Fock 展开
$$
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_n\frac{\alpha^n}{\sqrt{n!}}|n\rangle
$$
得
$$
\langle\alpha|\beta\rangle
=e^{-|\alpha|^2/2-|\beta|^2/2}\sum_{n=0}^\infty\frac{(\alpha^*\beta)^n}{n!}
=\exp\left(-\frac{|\alpha|^2}{2}-\frac{|\beta|^2}{2}+\alpha^*\beta\right).
$$
因此
$$
|\langle\alpha|\beta\rangle|^2=e^{-|\alpha-\beta|^2}.
$$

### 题目 4

封闭系统的演化由幺正算符 $U(t)$ 给出：
$$
\rho(t)=U(t)\rho(0)U^\dagger(t).
$$
等价微分形式为 $\dot\rho=-i[H,\rho]$。迹守恒为
$$
\frac{d}{dt}\mathrm{Tr}\rho=-i\mathrm{Tr}[H,\rho]=0.
$$
若 $H$ 不显含时，则
$$
\frac{d}{dt}\mathrm{Tr}(\rho H)=\mathrm{Tr}(\dot\rho H)
=-i\mathrm{Tr}([H,\rho]H)=0,
$$
其中最后一步使用迹的循环性。

### 题目 5

无驱动耗散二能级系统最终达到由上下跃迁率决定的热平衡态。由
$$
\dot S_z=-(\Gamma_\uparrow+\Gamma_\downarrow)S_z+(\Gamma_\uparrow-\Gamma_\downarrow)
$$
令左边为零，得到
$$
S_z^{\mathrm{ss}}=\frac{\Gamma_\uparrow-\Gamma_\downarrow}{\Gamma_\uparrow+\Gamma_\downarrow}.
$$
零温时 $\Gamma_\uparrow=0$，所以
$$
S_z^{\mathrm{ss}}=-1,
$$
系统最终处在基态。

### 题目 6

傅里叶约定会影响频域中时间导数和失谐项的符号，但不影响物理结果。若
$$
a(\omega)=\int dt\,e^{i\omega t}a(t),
$$
则
$$
\dot a(t)\longrightarrow -i\omega a(\omega).
$$
自由腔 Langevin 方程给出
$$
\left[\frac\gamma2+i(\omega_0-\omega)\right]a(\omega)=-\sqrt\gamma a_{\mathrm{in}}(\omega).
$$
再用 $a_{\mathrm{out}}=a_{\mathrm{in}}+\sqrt\gamma a$，得到
$$
S(\omega)=\frac{i(\omega_0-\omega)-\gamma/2}{i(\omega_0-\omega)+\gamma/2}.
$$

---

# 模拟试题 8

## 题目 1：真空涨落

1. 说明“没有光子”和“场没有涨落”为什么不同。
2. 定义 $X=(a+a^\dagger)/2$，求 $[X,P]$，其中 $P=(a-a^\dagger)/(2i)$。
3. 求真空态中的 $(\Delta X)^2$ 和 $(\Delta P)^2$。

## 题目 2：相似变换

1. 说明相似变换为什么常用于处理位移与压缩。
2. 计算 $D^\dagger(\alpha)aD(\alpha)$。
3. 计算 $D^\dagger(\alpha)a^\dagger D(\alpha)$。

## 题目 3：光子数分布判别

1. 比较 Poisson 分布和 Bose-Einstein 分布。
2. 求相干态的 $g^{(2)}(0)$。
3. 说明 $g^{(2)}(0)<1$ 的非经典意义。

## 题目 4：热库诱导相干耦合

1. 说明 $\Gamma_{ab}=\gamma_{ab}/2+iS_{ab}$ 中实部和虚部的物理角色。
2. 在一维相位约定下写出 $\gamma_{ab}$ 和 $S_{ab}$。
3. 解释四分之一波长处为何相干交换最大。

## 题目 5：布洛赫方程矩阵解

1. 说明引入偏移量 $\sigma'=\sigma-\sigma_s$ 的目的。
2. 求 $G$ 的本征值。
3. 写出 $x(t)$ 的解。

## 题目 6：NDOPO EPR 关联

1. 说明 $X_a+X_b$ 被压缩对应何种相关。
2. 说明 $Y_a-Y_b$ 被压缩对应何种相关。
3. 求 $\omega=0$ 时压缩谱的极限。

## 解答 8

### 题目 1

真空态满足 $a|0\rangle=0$，所以没有光子，但场正交分量仍然不对易。定义
$$
X=\frac{a+a^\dagger}{2},\qquad
P=\frac{a-a^\dagger}{2i}.
$$
利用 $[a,a^\dagger]=1$ 得
$$
[X,P]=\frac{i}{2}.
$$
真空中 $\langle X\rangle=\langle P\rangle=0$，并且
$$
\langle X^2\rangle=\frac14\langle0|aa^\dagger|0\rangle=\frac14,
\qquad
\langle P^2\rangle=\frac14.
$$
因此
$$
(\Delta X)^2=(\Delta P)^2=\frac14.
$$

### 题目 2

相似变换可把位移后的算符写成原算符加 c-number，因此常用于相干态和位移算符。设
$$
D(\alpha)=e^{\alpha a^\dagger-\alpha^*a}.
$$
BCH 给出
$$
D^\dagger(\alpha)aD(\alpha)=a+\alpha.
$$
取厄米共轭或直接计算可得
$$
D^\dagger(\alpha)a^\dagger D(\alpha)=a^\dagger+\alpha^*.
$$

### 题目 3

Poisson 分布的方差等于均值，是相干态的光子数统计；Bose-Einstein 分布的方差为 $\bar n(\bar n+1)$，对应热态的 bunching 噪声。相干态中
$$
\langle a^\dagger a\rangle=|\alpha|^2,\qquad
\langle a^\dagger a^\dagger aa\rangle=|\alpha|^4.
$$
因此
$$
g^{(2)}(0)=
\frac{\langle a^\dagger a^\dagger aa\rangle}{\langle a^\dagger a\rangle^2}=1.
$$
若 $g^{(2)}(0)<1$，表示反聚束，即光子倾向于一个一个到达，这是经典随机强度模型不能给出的非经典信号。

### 题目 4

在
$$
\Gamma_{ab}=\frac12\gamma_{ab}+iS_{ab}
$$
中，实部 $\gamma_{ab}$ 产生协同耗散，虚部 $S_{ab}$ 产生环境诱导相干交换。常用一维双向热库相位约定为
$$
\gamma_{ab}=\gamma\cos(k_0L),\qquad
S_{ab}=\frac{\gamma}{2}\sin(k_0L).
$$
当 $L=\lambda_0/4$ 时，$k_0L=\pi/2$，所以 $\cos(k_0L)=0$、$|\sin(k_0L)|=1$。这时协同耗散消失，而相干交换达到最大模值。

### 题目 5

引入偏移量 $\sigma'=\sigma-\sigma_s$ 的目的是去掉稳态常数项，使方程变为齐次线性方程。题中矩阵
$$
G=
\begin{pmatrix}
-\Gamma/2 & 0 & 0\\
0 & -\Gamma/2 & -A\\
0 & A & -\Gamma
\end{pmatrix}
$$
的本征值为
$$
\lambda_1=-\frac{\Gamma}{2},\qquad
\lambda_{2,3}=-\frac{3\Gamma}{4}\pm i\sqrt{A^2-\frac{\Gamma^2}{16}}.
$$
第一分量完全解耦，因此
$$
x(t)=x(0)e^{-\Gamma t/2}.
$$

### 题目 6

$X_a+X_b$ 被压缩表示两个模式振幅正相关；$Y_a-Y_b$ 被压缩表示两个模式相位正交分量负相关。在题目相位约定下，
$$
S_{X_+}(\omega)=S_{Y_-}(\omega)
=\frac{(\gamma/2-\xi)^2+\omega^2}{(\gamma/2+\xi)^2+\omega^2}.
$$
零频处
$$
S(0)=\left(\frac{\gamma/2-\xi}{\gamma/2+\xi}\right)^2.
$$
当 $\xi\to\gamma/2$ 且仍从阈值以下趋近时，$S(0)\to0$，表示理想极限下零频压缩最强。

---

# 模拟试题 9

## 题目 1：算符代数综合

1. 说明 $N$ 的本征值为什么必须是非负整数。
2. 由降低链说明存在真空态。
3. 由真空态和 $a^\dagger$ 构造全部数态。

## 题目 2：平移恒等式的变式

1. 说明 $x$ 为 c-number 的重要性。
2. 计算 $e^{-x a^\dagger}f(a)e^{x a^\dagger}$。
3. 对 $f(a)=a^2$ 验证结果。

## 题目 3：相空间三种表示

1. 比较 $P$、$Q$、Wigner 表示在非经典性判据上的差别。
2. 用 Wigner 对应写出 $\langle N\rangle$ 的积分公式。
3. 说明为什么 $Q$ 函数不能通过负值判断非经典性。

## 题目 4：二能级主方程与热平衡

1. 说明详细平衡与稳态布居的关系。
2. 由主方程写出激发态布居 $p_e$ 的方程。
3. 求 $p_e^{\mathrm{ss}}$。

## 题目 5：公共热库的明暗模

1. 定义对称模和反对称模。
2. 当 $\gamma_{ab}=\gamma_{ba}=\gamma$ 时，写出明暗模衰减率。
3. 解释暗模为什么不向公共通道辐射。

## 题目 6：自由腔散射矩阵性质

1. 说明 $S(\omega)$ 的极点和线宽的关系。
2. 找出 $S(\omega)$ 的极点。
3. 解释极点位于下半平面的稳定性含义。

## 解答 9

### 题目 1

$N=a^\dagger a$ 是正算符，因为任意态 $|\psi\rangle$ 都有
$$
\langle\psi|N|\psi\rangle=\|a|\psi\rangle\|^2\ge0.
$$
若 $N|\lambda\rangle=\lambda|\lambda\rangle$，则 $\lambda\ge0$。又因为 $a$ 每作用一次使本征值降低 1，若 $\lambda$ 不是非负整数，反复作用会得到负本征值，矛盾。因此降低链必须终止于真空态 $a|0\rangle=0$。从真空态出发，全部数态由
$$
|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle
$$
递推构造。

### 题目 2

$x$ 必须是 c-number，这样 $[a,xa^\dagger]=x$ 与所有算符对易，BCH 级数才能在一阶终止。因为
$$
e^{-x a^\dagger}a e^{x a^\dagger}=a+x,
$$
对固定排序的 $f(a)$ 有
$$
e^{-x a^\dagger}f(a)e^{x a^\dagger}=f(a+x).
$$
例如 $f(a)=a^2$ 时，
$$
e^{-x a^\dagger}a^2e^{x a^\dagger}
=\left(e^{-x a^\dagger}ae^{x a^\dagger}\right)^2
=(a+x)^2.
$$

### 题目 3

$P$ 表示若不是非负普通函数，则态非经典；$Q$ 函数总是非负，不能通过负值判断非经典性；Wigner 函数出现负值是非经典性的充分信号。Wigner 表示对应对称序，因此
$$
a^\dagger a\longleftrightarrow |\alpha|^2-\frac12.
$$
于是
$$
\langle N\rangle
=\int d^2\alpha\left(|\alpha|^2-\frac12\right)W(\alpha,\alpha^*).
$$
$Q$ 函数是正的 Husimi 分布，即使态非经典，$Q$ 也不会取负。

### 题目 4

详细平衡决定稳态中上下能级布居比。设激发态布居为 $p_e$，基态布居为 $1-p_e$。无驱动主方程给出
$$
\dot p_e=-\Gamma_\downarrow p_e+\Gamma_\uparrow(1-p_e).
$$
稳态令 $\dot p_e=0$，得到
$$
p_e^{\mathrm{ss}}=\frac{\Gamma_\uparrow}{\Gamma_\uparrow+\Gamma_\downarrow}.
$$
热平衡时该比值进一步由热库温度和能级间隔决定。

### 题目 5

定义对称模和反对称模
$$
c_B=\frac{a+b}{\sqrt2},\qquad
c_D=\frac{a-b}{\sqrt2}.
$$
当 $\gamma_{ab}=\gamma_{ba}=\gamma$ 且局域衰减也为 $\gamma$ 时，耗散矩阵为
$$
\begin{pmatrix}
\gamma & \gamma\\
\gamma & \gamma
\end{pmatrix}.
$$
其本征模为 $c_B,c_D$，对应衰减率分别为
$$
\gamma_B=2\gamma,\qquad \gamma_D=0.
$$
暗模不向公共通道辐射，是因为两个振子的辐射振幅在该组合中相消。

### 题目 6

散射矩阵的极点给出系统自由衰减模的复频率，虚部决定线宽。自由腔
$$
S(\omega)=\frac{i(\omega_0-\omega)-\gamma/2}{i(\omega_0-\omega)+\gamma/2}.
$$
极点满足
$$
i(\omega_0-\omega)+\frac\gamma2=0,
$$
故
$$
\omega=\omega_0-i\frac\gamma2.
$$
极点位于下半复频平面，表示时域响应按 $e^{-\gamma t/2}$ 衰减，因此系统稳定。

---

# 模拟试题 10

## 题目 1：作业 1-2 综合证明

1. 列出单模量子光场最常用的三个基本算符。
2. 从 $[a,a^\dagger]=1$ 推出 $[H,a^m]$。
3. 证明 $a^\dagger a$ 的本征态由真空态递推得到。

## 题目 2：BCH 与位移算符综合

1. 说明 $D(\alpha)$ 的幺正性。
2. 证明 $D^\dagger(\alpha)=D(-\alpha)$。
3. 证明 $D^\dagger(\alpha)aD(\alpha)=a+\alpha$。

## 题目 3：相干态、压缩态与非经典性

1. 比较相干态和压缩态的经典性。
2. 写出压缩真空中的正交分量方差。
3. 说明 Wigner 负性、压缩和反聚束三种非经典信号的关系。

## 题目 4：从闭系统到开放系统

1. 比较 Liouville-von Neumann 方程和 Lindblad 方程。
2. 写出带 Hamiltonian 和耗散的通用主方程形式。
3. 说明 trace preservation 在两种方程中分别如何体现。

## 题目 5：驱动二能级原子

1. 说明 RWA 后有效 Hamiltonian 的物理内容。
2. 写出完整 Bloch 方程。
3. 给出零温共振稳态。

## 题目 6：输入输出与参量过程综合

1. 说明自由腔散射和 NDOPO 压缩输出的主要区别。
2. 写出自由腔 $S(\omega)$。
3. 写出 NDOPO 阈值以下的压缩谱并说明阈值条件。

## 解答 10

### 题目 1

单模量子光场最常用的三个基本算符是湮灭算符 $a$、产生算符 $a^\dagger$ 和数算符 $N=a^\dagger a$。由
$$
[H,a]=-\hbar\omega a
$$
以及对易子的 Leibniz 规则，
$$
[H,a^m]
=\sum_{j=0}^{m-1}a^j[H,a]a^{m-1-j}
=-m\hbar\omega a^m.
$$
数态从真空态递推生成。真空态满足 $a|0\rangle=0$，归一化后
$$
|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle,
$$
并满足 $N|n\rangle=n|n\rangle$。

### 题目 2

位移算符
$$
D(\alpha)=\exp(\alpha a^\dagger-\alpha^*a)
$$
的指数生成元满足
$$
(\alpha a^\dagger-\alpha^*a)^\dagger=-(\alpha a^\dagger-\alpha^*a),
$$
所以 $D(\alpha)$ 是幺正算符。因而
$$
D^\dagger(\alpha)=D^{-1}(\alpha)=D(-\alpha).
$$
用 BCH 计算相似变换：
$$
D^\dagger(\alpha)aD(\alpha)
=a+[a,\alpha a^\dagger-\alpha^*a]=a+\alpha,
$$
更高阶对易子为零。

### 题目 3

相干态是被位移的真空态，两个正交分量的噪声都等于真空噪声；压缩态则把一个正交分量的涨落降到真空噪声以下，同时提高共轭分量的涨落。压缩真空中可取
$$
(\Delta Y_1)^2=e^{-2r},\qquad
(\Delta Y_2)^2=e^{2r}.
$$
Wigner 负性、压缩和反聚束都是非经典信号，但不是彼此等价的条件：有些非经典态可表现为压缩而无明显 Wigner 负值，有些态可表现为 Wigner 负值或反聚束。

### 题目 4

Liouville-von Neumann 方程描述封闭系统的幺正演化：
$$
\dot\rho=-i[H,\rho].
$$
Lindblad 方程在此基础上加入马尔可夫耗散：
$$
\dot\rho=-i[H,\rho]
+\sum_j\gamma_j\left(L_j\rho L_j^\dagger-\frac12\{L_j^\dagger L_j,\rho\}\right).
$$
封闭系统的迹保持来自 $\mathrm{Tr}[H,\rho]=0$；Lindblad 耗散子的迹保持来自
$$
\mathrm{Tr}(L\rho L^\dagger)=\mathrm{Tr}(L^\dagger L\rho)
$$
与反对易项的两个一半相互抵消。

### 题目 5

RWA 后有效 Hamiltonian
$$
H_0=\frac{\delta\omega}{2}\sigma_z+\frac A2\sigma_x
$$
中，$\delta\omega$ 描述驱动与原子跃迁的失谐，$A$ 描述共振横向驱动。完整 Bloch 方程为
$$
\dot x=-\delta\omega y-\frac{\Gamma_t}{2}x,
$$
$$
\dot y=\delta\omega x-Az-\frac{\Gamma_t}{2}y,
$$
$$
\dot z=Ay-\Gamma_t z-\Gamma.
$$
零温共振时 $\Gamma_t=\Gamma$、$\delta\omega=0$，稳态为
$$
x_s=0,\qquad
y_s=\frac{2A\Gamma}{\Gamma^2+2A^2},\qquad
z_s=-\frac{\Gamma^2}{\Gamma^2+2A^2}.
$$

### 题目 6

自由腔是线性无增益系统，只对输入场产生频率依赖相位；NDOPO 具有参量放大项，因此可以在输出中产生压缩。自由腔散射矩阵为
$$
S(\omega)=\frac{i(\omega_0-\omega)-\gamma/2}{i(\omega_0-\omega)+\gamma/2}.
$$
NDOPO 阈值以下的压缩谱为
$$
S_{\mathrm{sq}}(\omega)
=\frac{(\gamma/2-\xi)^2+\omega^2}{(\gamma/2+\xi)^2+\omega^2}.
$$
稳定阈值以下要求
$$
0<\xi<\frac{\gamma}{2}.
$$
在此条件下 $S_{\mathrm{sq}}(\omega)<1$，表示相应正交分量低于真空噪声。

---

# 公式使用说明

- 本文件的方差采用 $(\Delta q)^2$、$(\Delta p)^2$ 表示；若题目把 $\Delta q$ 直接写成方差，应在答题时说明记号约定。
- 第 4 次作业公共热库题采用 `homework.md` 中答案的常用一维双向热库相位约定：$\gamma_{ab}=\gamma\cos(k_0L)$、$S_{ab}=(\gamma/2)\sin(k_0L)$。
- NDOPO 的 $X_+,Y_-$ 压缩结论按 `homework.md` 中答案说明的泵浦相位约定书写；若改变 $b$ 模相位，压缩组合会相应互换。
