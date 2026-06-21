# 量子光学第 1-3 章考试复习

## 总览

前三章的主线是：把经典电磁场量子化，把每个模式识别为一个量子谐振子，再用产生湮灭算符描述光子数态、相干态和非经典态。

需要同时掌握三种图像：

1. 场量子化图像：电磁场被分解为一组模式，每个模式对应一个频率为 $\omega_k$ 的谐振子。
1. 算符代数图像：用 $a$、$a^\dagger$、$N=a^\dagger a$ 的对易关系推导能谱、数态和相似变换。
1. 相空间图像：用相干态、位移算符、压缩算符和准概率分布连接量子光场与经典光场。

常用符号：

- $a$：湮灭算符。
- $a^\dagger$：产生算符。
- $N=a^\dagger a$：光子数算符。
- $|n\rangle$：Fock 态或数态。
- $|\alpha\rangle$：相干态。
- $D(\alpha)$：位移算符。
- $S(\xi)$：压缩算符。
- $\xi=re^{i\theta}$：复压缩参数。

本复习稿采用 $\hbar=1$ 或显式保留 $\hbar$ 的写法。考试时要先看题目约定；若使用正则变量 $q,p$，则通常取 $[q,p]=i$。

---

# Chapter 1. 光场量子化与单模谐振子

## 1.1 从经典模式到量子模式

在自由空间或有限体积盒子中，电磁场可以展开为一组模式。每个模式由波矢 $k$、偏振 $\lambda$ 和频率 $\omega_k$ 标记。

在 Coulomb gauge 中，

$$\begin{align}
\nabla\cdot A=0,\qquad \phi=0,
\end{align}$$

自由场的经典哈密顿量为

$$\begin{align}
H=\frac12\int d^3r\left(\epsilon_0 E^2+\frac{1}{\mu_0}B^2\right).
\end{align}$$

模式展开后，每个模式等价于一个谐振子。因此量子化规则是把模式坐标和动量提升为算符，并引入产生湮灭算符。

单模情况下，

$$\begin{align}
H=\hbar\omega\left(a^\dagger a+\frac12\right).
\end{align}$$

多模情况下，

$$\begin{align}
H=\sum_{k,\lambda}\hbar\omega_k\left(a_{k\lambda}^\dagger a_{k\lambda}+\frac12\right).
\end{align}$$

对易关系为

$$\begin{align}
[a_{k\lambda},a_{k'\lambda'}^\dagger]=\delta_{kk'}\delta_{\lambda\lambda'},\qquad
[a_{k\lambda},a_{k'\lambda'}]=0,\qquad
[a_{k\lambda}^\dagger,a_{k'\lambda'}^\dagger]=0.
\end{align}$$

考试要点：自由电磁场不是一个谐振子，而是一组独立谐振子；单模问题只是取出其中一个模式。

## 1.2 单模场算符

对单个模式，矢势、电场和磁场算符通常写成

$$\begin{align}
A(r,t)=\mathcal A\left(ae^{i(k\cdot r-\omega t)}+a^\dagger e^{-i(k\cdot r-\omega t)}\right)e_\lambda,
\end{align}$$

其中 $\mathcal A$ 是归一化常数，$e_\lambda$ 是偏振矢量。

电场由

$$\begin{align}
E(r,t)=-\frac{\partial A}{\partial t}
\end{align}$$

给出，因此正频和负频部分可写成

$$\begin{align}
E^{(+)}(r,t)\propto a e^{i(k\cdot r-\omega t)},\qquad
E^{(-)}(r,t)\propto a^\dagger e^{-i(k\cdot r-\omega t)}.
\end{align}$$

湮灭算符出现在正频部分，产生算符出现在负频部分。光探测理论中常见的正规序平均值来自这一点，因为探测器吸收光子时对应 $E^{(+)}$ 作用在场态上。

## 1.3 零点能与真空涨落

单模哈密顿量的能级为

$$\begin{align}
E_n=\hbar\omega\left(n+\frac12\right).
\end{align}$$

即使 $n=0$，仍有零点能

$$\begin{align}
E_0=\frac12\hbar\omega.
\end{align}$$

真空态满足

$$\begin{align}
a|0\rangle=0.
\end{align}$$

虽然真空中没有光子，

$$\begin{align}
\langle 0|N|0\rangle=0,
\end{align}$$

但场的正交分量仍有涨落。定义

$$\begin{align}
X=\frac{a+a^\dagger}{2},\qquad
P=\frac{a-a^\dagger}{2i},
\end{align}$$

则

$$\begin{align}
[X,P]=\frac{i}{2},
\end{align}$$

并且真空中

$$\begin{align}
(\Delta X)^2=(\Delta P)^2=\frac14.
\end{align}$$

这就是量子光学中“真空涨落”的代数来源。

---

# Chapter 2. Fock 态与算符代数

## 2.1 产生湮灭算符与数算符

单模基本对易关系为

$$\begin{align}
[a,a^\dagger]=1.
\end{align}$$

数算符定义为

$$\begin{align}
N=a^\dagger a.
\end{align}$$

由基本对易关系得到

$$\begin{align}
[N,a]=-a,\qquad [N,a^\dagger]=a^\dagger.
\end{align}$$

因为 $H=\hbar\omega(N+1/2)$，所以

$$\begin{align}
[H,a]=-\hbar\omega a,\qquad [H,a^\dagger]=\hbar\omega a^\dagger.
\end{align}$$

这说明 $a$ 降低一个能量量子，$a^\dagger$ 升高一个能量量子。

如果

$$\begin{align}
H|n\rangle=E_n|n\rangle,
\end{align}$$

则

$$\begin{align}
H a^m|n\rangle=(E_n-m\hbar\omega)a^m|n\rangle.
\end{align}$$

这是第 1 次作业的核心结论。

## 2.2 Fock 态的构造

真空态满足

$$\begin{align}
a|0\rangle=0.
\end{align}$$

归一化数态由真空态生成：

$$\begin{align}
|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle.
\end{align}$$

产生湮灭算符的作用为

$$\begin{align}
a|n\rangle=\sqrt n\,|n-1\rangle, \qquad
a^\dagger|n\rangle=\sqrt{n+1}\,|n+1\rangle.
\end{align}$$

数算符满足

$$\begin{align}
N|n\rangle=n|n\rangle.
\end{align}$$

Fock 态正交归一：

$$\begin{align}
\langle m|n\rangle=\delta_{mn}.
\end{align}$$

完备性为

$$\begin{align}
\sum_{n=0}^{\infty}|n\rangle\langle n|=\mathbf 1.
\end{align}$$

考试中常用矩阵元：

$$\begin{align}
\langle m|a|n\rangle=\sqrt n\,\delta_{m,n-1}, \qquad
\langle m|a^\dagger|n\rangle=\sqrt{n+1}\,\delta_{m,n+1}.
\end{align}$$

## 2.3 算符函数与对易子求导

若 $f(a,a^\dagger)$ 可按固定次序展开为幂级数，则对每个单项式

$$\begin{align}
f_{rs}=a^r(a^\dagger)^s
\end{align}$$

有

$$\begin{align}
[a^\dagger,f_{rs}]=-r a^{r-1}(a^\dagger)^s.
\end{align}$$

因此

$$\begin{align}
[a^\dagger,f(a,a^\dagger)]=-\frac{\partial f}{\partial a}.
\end{align}$$

同理，

$$\begin{align}
[a,f(a,a^\dagger)]=\frac{\partial f}{\partial a^\dagger}.
\end{align}$$

这个公式的使用条件是：先约定 $f$ 的排序。若同一个算符有不同排序形式，直接把 $a$ 和 $a^\dagger$ 当作普通变量求导可能得到不同中间表达式；最后必须回到对易关系判断算符等价性。

## 2.4 BCH 公式与相似变换

Baker-Campbell-Hausdorff 公式在量子光学中常用于处理指数算符。最常用形式是

$$\begin{align}
e^{-A}Be^A =B+[B,A]+\frac{1}{2!}[[B,A],A]+\frac{1}{3!}[[[B,A],A],A]+\cdots.
\end{align}$$

若高阶对易子终止，结果可以精确求出。例如令 $A=x a^\dagger$，则

$$\begin{align}
[-x a^\dagger,a]=x,
\end{align}$$

且更高重对易子为零，所以

$$\begin{align}
e^{-x a^\dagger}a e^{x a^\dagger}=a+x.
\end{align}$$

这就是第 2 次作业中的平移恒等式。

若 $[A,B]$ 是 c-number，则

$$\begin{align}
e^{A+B}=e^{-\frac12[A,B]}e^Ae^B
\end{align}$$

成立，前提是 $[A,[A,B]]=[B,[A,B]]=0$。相干态和位移算符的正规分解都依赖这一形式。

## 2.5 算符排序

量子光学中常见三种排序：

1. 正规序：所有 $a^\dagger$ 放在 $a$ 左边，记为 $:\cdots:$。
1. 反正规序：所有 $a$ 放在 $a^\dagger$ 左边。
1. 对称序或 Weyl 序：对所有 $a$、$a^\dagger$ 的排列取平均。

例子：

$$\begin{align}
a a^\dagger=a^\dagger a+1.
\end{align}$$

所以同一个经典表达式 $|\alpha|^2$ 对应不同排序时会差一个量子修正。特别地，

$$\begin{align}
\frac12(a^\dagger a+a a^\dagger)=a^\dagger a+\frac12.
\end{align}$$

因此 Wigner 表示中光子数算符 $a^\dagger a$ 对应的 c-number 函数是

$$\begin{align}
|\alpha|^2-\frac12.
\end{align}$$

---

# Chapter 3. 相干态、压缩态与早期相空间表示

## 3.1 相干态的定义和 Fock 展开

相干态定义为湮灭算符的本征态：

$$\begin{align}
a|\alpha\rangle=\alpha|\alpha\rangle.
\end{align}$$

在 Fock 基中写

$$\begin{align}
|\alpha\rangle=\sum_{n=0}^{\infty}c_n|n\rangle.
\end{align}$$

代入本征方程得到

$$\begin{align}
c_{n+1}\sqrt{n+1}=\alpha c_n.
\end{align}$$

因此

$$\begin{align}
c_n=\frac{\alpha^n}{\sqrt{n!}}c_0.
\end{align}$$

归一化给出

$$\begin{align}
|c_0|^2e^{|\alpha|^2}=1.
\end{align}$$

取常用相位约定，

$$\begin{align}
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_{n=0}^{\infty}\frac{\alpha^n}{\sqrt{n!}}|n\rangle.
\end{align}$$

两个相干态的重叠为

$$\begin{align}
\langle\alpha|\beta\rangle =\exp\left[-\frac12|\alpha|^2-\frac12|\beta|^2+\alpha^*\beta\right],
\end{align}$$

所以

$$\begin{align}
|\langle\alpha|\beta\rangle|^2=e^{-|\alpha-\beta|^2}.
\end{align}$$

相干态不是正交基，但满足过完备性：

$$\begin{align}
\frac{1}{\pi}\int d^2\alpha\,|\alpha\rangle\langle\alpha|=\mathbf 1.
\end{align}$$

## 3.2 光子数统计

相干态中的光子数概率为

$$\begin{align}
P_n=|\langle n|\alpha\rangle|^2 =e^{-|\alpha|^2}\frac{|\alpha|^{2n}}{n!}.
\end{align}$$

这是 Poisson 分布。令

$$\begin{align}
\bar n=|\alpha|^2,
\end{align}$$

则

$$\begin{align}
\langle N\rangle=\bar n,\qquad
(\Delta N)^2=\bar n.
\end{align}$$

因此

$$\begin{align}
g^{(2)}(0)=\frac{\langle a^\dagger a^\dagger a a\rangle}{\langle a^\dagger a\rangle^2}=1.
\end{align}$$

这表示相干态的光子数统计是 Poissonian。相比之下：

- Fock 态 $|n\rangle$ 的光子数无涨落，$(\Delta N)^2=0$。
- 热态的光子数服从 Bose-Einstein 分布，$(\Delta N)^2=\bar n(\bar n+1)$。

热态光子数分布为

$$\begin{align}
P_n=\frac{\bar n^n}{(1+\bar n)^{n+1}}.
\end{align}$$

## 3.3 位移算符

位移算符定义为

$$\begin{align}
D(\alpha)=\exp(\alpha a^\dagger-\alpha^*a).
\end{align}$$

令

$$\begin{align}
A=\alpha a^\dagger-\alpha^*a.
\end{align}$$

由 BCH 公式，

$$\begin{align}
D^\dagger(\alpha)aD(\alpha)=e^{-A}ae^A=a+\alpha.
\end{align}$$

同理，

$$\begin{align}
D^\dagger(\alpha)a^\dagger D(\alpha)=a^\dagger+\alpha^*.
\end{align}$$

因为

$$\begin{align}
aD(\alpha)|0\rangle=D(\alpha)(a+\alpha)|0\rangle=\alpha D(\alpha)|0\rangle,
\end{align}$$

所以

$$\begin{align}
|\alpha\rangle=D(\alpha)|0\rangle.
\end{align}$$

当 $[A,B]$ 是 c-number 时，可将位移算符正规分解为

$$\begin{align}
D(\alpha)=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}e^{-\alpha^*a}.
\end{align}$$

作用在真空态上，得到相干态的另一种表达：

$$\begin{align}
|\alpha\rangle=e^{-|\alpha|^2/2}e^{\alpha a^\dagger}|0\rangle.
\end{align}$$

## 3.4 相干态的最小不确定性

定义正则变量

$$\begin{align}
q=\frac{1}{\sqrt{2m\omega}}(a+a^\dagger), \qquad
p=-i\sqrt{\frac{m\omega}{2}}(a-a^\dagger).
\end{align}$$

它们满足

$$\begin{align}
[q,p]=i.
\end{align}$$

在相干态中，

$$\begin{align}
\langle q\rangle=\frac{\alpha+\alpha^*}{\sqrt{2m\omega}}, \qquad
\langle p\rangle=-i\sqrt{\frac{m\omega}{2}}(\alpha-\alpha^*).
\end{align}$$

方差与真空态相同：

$$\begin{align}
(\Delta q)^2=\frac{1}{2m\omega}, \qquad
(\Delta p)^2=\frac{m\omega}{2}.
\end{align}$$

因此

$$\begin{align}
\Delta q\,\Delta p=\frac12.
\end{align}$$

相干态是被位移的最小不确定波包。它接近经典场，但仍包含真空涨落。

## 3.5 压缩算符与压缩态

压缩算符定义为

$$\begin{align}
S(\xi)=\exp\left[\frac12(\xi^*a^2-\xi a^{\dagger 2})\right], \qquad
\xi=re^{i\theta}.
\end{align}$$

标准 Bogoliubov 变换为

$$\begin{align}
S^\dagger(\xi)aS(\xi)=a\cosh r-a^\dagger e^{i\theta}\sinh r,
\end{align}$$

$$\begin{align}
S^\dagger(\xi)a^\dagger S(\xi)=a^\dagger\cosh r-ae^{-i\theta}\sinh r.
\end{align}$$

定义沿压缩角旋转的正交分量

$$\begin{align}
Y_1=ae^{-i\theta/2}+a^\dagger e^{i\theta/2}, \qquad
Y_2=-i(ae^{-i\theta/2}-a^\dagger e^{i\theta/2}).
\end{align}$$

它们满足

$$\begin{align}
[Y_1,Y_2]=2i.
\end{align}$$

压缩真空态 $S(\xi)|0\rangle$ 中，

$$\begin{align}
(\Delta Y_1)^2=e^{-2r}, \qquad
(\Delta Y_2)^2=e^{2r}.
\end{align}$$

一个正交分量的涨落低于真空噪声，另一个正交分量的涨落高于真空噪声；乘积仍满足不确定性关系。

## 3.6 $Q$ 表示与 Wigner 表示的早期用法

$Q$ 函数定义为

$$\begin{align}
Q(\alpha)=\frac{1}{\pi}\langle\alpha|\rho|\alpha\rangle.
\end{align}$$

它总是非负，并且归一化：

$$\begin{align}
\int d^2\alpha\,Q(\alpha)=1.
\end{align}$$

若 $\rho=|\beta\rangle\langle\beta|$，则

$$\begin{align}
Q_\beta(\alpha)=\frac{1}{\pi}e^{-|\alpha-\beta|^2}.
\end{align}$$

若 $\rho=|n\rangle\langle n|$，则

$$\begin{align}
Q_n(\alpha)=\frac{1}{\pi n!}|\alpha|^{2n}e^{-|\alpha|^2}.
\end{align}$$

Wigner 函数对应对称序。对光子数算符，

$$\begin{align}
a^\dagger a=\frac12(a^\dagger a+aa^\dagger)-\frac12.
\end{align}$$

因此在 Wigner 表示中，

$$\begin{align}
a^\dagger a\quad\longleftrightarrow\quad |\alpha|^2-\frac12.
\end{align}$$

于是

$$\begin{align}
\langle a^\dagger a\rangle =\int d^2\alpha\left(|\alpha|^2-\frac12\right)W(\alpha,\alpha^*).
\end{align}$$

Wigner 函数可以取负。单光子态在原点处的负值是非经典性的典型标志：

$$\begin{align}
W_{|1\rangle}(0,0)=-\frac{1}{\pi}.
\end{align}$$

若加入热噪声

$$\begin{align}
\rho=(1-\epsilon)|1\rangle\langle 1|+\epsilon\rho_{\mathrm{th}},
\end{align}$$

且热态平均光子数为 $\bar n$，则

$$\begin{align}
W_{\rho}(0,0)=\frac{1}{\pi}\left[-(1-\epsilon)+\frac{\epsilon}{2\bar n+1}\right].
\end{align}$$

负值消失的阈值为

$$\begin{align}
\epsilon_c=\frac{2\bar n+1}{2\bar n+2}.
\end{align}$$

当 $\bar n=0$ 时，$\epsilon_c=1/2$。

---

# 常考题型与答题骨架

## 1. 由 $[a,a^\dagger]=1$ 推导能量降低性质

答题骨架：

1. 写出 $H=\hbar\omega(a^\dagger a+1/2)$。
1. 计算 $[H,a]=-\hbar\omega a$。
1. 推出 $Ha=aH-\hbar\omega a$。
1. 归纳得到 $Ha^m=a^mH-m\hbar\omega a^m$。
1. 作用在 $|n\rangle$ 上得到 $Ha^m|n\rangle=(E_n-m\hbar\omega)a^m|n\rangle$。

## 2. 由真空态构造 Fock 态

答题骨架：

1. 写出 $a|0\rangle=0$。
1. 用 $[a,(a^\dagger)^n]=n(a^\dagger)^{n-1}$。
1. 证明 $(a^\dagger)^n|0\rangle$ 是 $n$ 光子态。
1. 计算范数 $\langle0|a^n(a^\dagger)^n|0\rangle=n!$。
1. 写出归一化结果 $|n\rangle=(a^\dagger)^n|0\rangle/\sqrt{n!}$。

## 3. 证明算符函数的对易子求导规则

答题骨架：

1. 先对单项式 $a^r(a^\dagger)^s$ 证明。
1. 使用 $[a^\dagger,a]=-1$ 和 $[a^\dagger,(a^\dagger)^s]=0$。
1. 得到 $[a^\dagger,a^r(a^\dagger)^s]=-r a^{r-1}(a^\dagger)^s$。
1. 由线性性推广到幂级数 $f(a,a^\dagger)$。
1. 强调必须先固定排序。

## 4. 用 BCH 推导相似变换

答题骨架：

1. 写出

$$\begin{align}
e^{-A}Be^A=B+[B,A]+\frac{1}{2!}[[B,A],A]+\cdots.
\end{align}$$

1. 令 $A=x a^\dagger$，$B=a$。
1. 计算 $[a,x a^\dagger]=x$。
1. 更高阶对易子为零。
1. 得到 $e^{-x a^\dagger}ae^{x a^\dagger}=a+x$。

## 5. 推导相干态的 Fock 展开和光子数分布

答题骨架：

1. 从 $a|\alpha\rangle=\alpha|\alpha\rangle$ 出发。
1. 展开 $|\alpha\rangle=\sum_n c_n|n\rangle$。
1. 得到 $c_n=\alpha^n c_0/\sqrt{n!}$。
1. 用归一化确定 $c_0=e^{-|\alpha|^2/2}$。
1. 得到 $P_n=e^{-|\alpha|^2}|\alpha|^{2n}/n!$。

## 6. 比较 Fock 态、相干态、热态

常用对照：

| 态        | 光子数分布          | 方差                 | 典型性质          |            |
| -------- | -------------- | ------------------ | ------------- | ---------- |
| Fock 态 $ | n\rangle$      | $\delta_{mn}$      | $0$           | 固定光子数，强非经典 |
| 相干态 $    | \alpha\rangle$ | Poisson            | $\bar n$      | 最接近经典光场    |
| 热态       | Bose-Einstein  | $\bar n(\bar n+1)$ | bunching，热噪声大 |            |

## 7. 判断非经典性

常见判断：

- $P$ 表示不是非负普通函数：非经典。
- Wigner 函数出现负值：非经典。
- 光子数方差小于 Poisson 分布：sub-Poissonian。
- $g^{(2)}(0)<1$：反聚束，非经典。
- 某个正交分量低于真空噪声：压缩态。

---

# 复习检查表

## 必须会推的公式

1. $[N,a]=-a$ 和 $[N,a^\dagger]=a^\dagger$。
1. $|n\rangle=(a^\dagger)^n|0\rangle/\sqrt{n!}$。
1. $e^{-x a^\dagger}ae^{x a^\dagger}=a+x$。
1. $|\alpha\rangle=e^{-|\alpha|^2/2}\sum_n\alpha^n|n\rangle/\sqrt{n!}$。
1. $D^\dagger(\alpha)aD(\alpha)=a+\alpha$。
1. $(\Delta q)^2=1/(2m\omega)$ 和 $(\Delta p)^2=m\omega/2$。
1. $S^\dagger(\xi)aS(\xi)=a\cosh r-a^\dagger e^{i\theta}\sinh r$。
1. $Q_n(\alpha)=|\alpha|^{2n}e^{-|\alpha|^2}/(\pi n!)$。
1. Wigner 表示中 $a^\dagger a\leftrightarrow |\alpha|^2-1/2$。

## 易错点

- $\Delta q$ 有时被题目用来表示方差，有时表示标准差；答题时要按题目上下文说明。
- $a$ 和 $a^\dagger$ 不能当作普通复数随意交换。
- 对算符函数求导前必须固定排序。
- 相干态过完备但不正交。
- Fock 态不是经典态，虽然它是能量本征态。
- $Q$ 函数总是非负，不能单独用 $Q$ 函数负值判断非经典性。
- Wigner 函数负值是充分的非经典性信号，但不是所有非经典态都有明显 Wigner 负值。

## 建议复习顺序

1. 先掌握单模哈密顿量、$[a,a^\dagger]=1$ 和 Fock 态构造。
1. 再练熟 BCH 相似变换和算符函数对易子求导。
1. 然后复习相干态的三种等价定义：湮灭算符本征态、Fock 展开、位移真空。
1. 最后比较 Fock 态、相干态、压缩态、热态在光子数统计和相空间表示中的差异。

---

# 量子光学第 4-5 章考试复习

## 总览

这两章围绕同一个问题展开：原子在强激光场中如何吸收能量、发生跃迁、电离、重碰并辐射高次谐波。

两种图像要同时掌握：

1. 经典场方法：激光场作为给定的外场 $E(t)$ 或 $A(t)$，原子电子服从含时薛定谔方程。这个图像适合描述超短脉冲、载波包络相位（CEP）、电子轨道、三步模型和 Lewenstein 模型。
1. 量子场方法：激光场也量子化，原子和光子构成孤立体系，总能量守恒。这个图像适合描述频域 ATI channel、散射矩阵、direct ATI、recollision ATI 和 laser-assisted collision。

常用符号：

- $I_p$：电离能。
- $F_0$：激光电场振幅。
- $\omega$：激光角频率。
- $A(t)$：矢势，取规范使 $E(t)=-\dot A(t)$。
- $U_p$：有质动力能，原子单位下

$$\begin{align}
U_p=\frac{F_0^2}{4\omega^2}.
\end{align}$$

- $T=2\pi/\omega$：光学周期。
- $\phi_\mathrm{CEP}$：载波包络相位。

## 经典场哈密顿量与规范

把激光当作经典外场时，电子哈密顿量可以写成长度规范或速度规范。

长度规范：

$$\begin{align}
H_L(t)=\frac{p^2}{2m}+V(r)-e\,r\cdot E(t).
\end{align}$$

速度规范：

$$\begin{align}
H_V(t)=\frac{[p+eA(t)]^2}{2m}+V(r).
\end{align}$$

在偶极近似下，激光波长远大于原子尺度，忽略空间依赖，只保留 $E(t)$ 的时间依赖。长度规范强调偶极相互作用 $-e r\cdot E(t)$，速度规范强调电子动量和矢势的耦合。两种规范在精确计算中等价；近似计算中必须保持波函数、算符和边界条件的一致性。

含时薛定谔方程为

$$\begin{align}
i\hbar\frac{\partial}{\partial t}\psi(r,t)=H(t)\psi(r,t).
\end{align}$$

考试中常见问题是：经典场方法能给出时间图像，包括电离时刻、传播时间、返回时刻和谐波辐射时刻；量子场方法给出频域 channel 图像，包括吸收多少个光子、电子最终能量是多少。

## 两能级模型与 CEP 效应

### 两能级展开

考虑基态 $|g\rangle$ 和激发态 $|e\rangle$，无扰哈密顿量满足

$$\begin{align}
H_0|g\rangle=E_g|g\rangle,\qquad H_0|e\rangle=E_e|e\rangle.
\end{align}$$

设跃迁频率

$$\begin{align}
\omega_{eg}=\frac{E_e-E_g}{\hbar}.
\end{align}$$

在相互作用绘景中写

$$\begin{align}
|\psi(t)\rangle=c_g(t)e^{-iE_g t/\hbar}|g\rangle+c_e(t)e^{-iE_e t/\hbar}|e\rangle.
\end{align}$$

长度规范偶极相互作用为

$$\begin{align}
V(t)=-dE(t),\qquad d=e x.
\end{align}$$

代入薛定谔方程并投影到两个态上，可得

$$\begin{align}
i\hbar \dot c_e(t)=-d_{eg}E(t)e^{i\omega_{eg}t}c_g(t),
\end{align}$$

$$\begin{align}
i\hbar \dot c_g(t)=-d_{ge}E(t)e^{-i\omega_{eg}t}c_e(t),
\end{align}$$

其中 $d_{eg}=\langle e|d|g\rangle$。

弱场一阶近似中 $c_g(t)\approx 1$，因此

$$\begin{align}
c_e^{(1)}(t)=\frac{i}{\hbar}d_{eg}\int_{-\infty}^{t}E(t')e^{i\omega_{eg}t'}\,dt'.
\end{align}$$

这个公式说明：跃迁振幅由激光场在共振频率附近的傅里叶分量决定。

### RWA 与 Rabi 振荡

若

$$\begin{align}
E(t)=E_0\cos(\omega t+\phi),
\end{align}$$

定义 Rabi 频率

$$\begin{align}
\Omega_0=\frac{d_{eg}E_0}{\hbar},\qquad \Delta=\omega-\omega_{eg}.
\end{align}$$

在旋波近似中，快振荡反共振项被忽略，旋转表象下的有效两能级哈密顿量为

$$
H_\mathrm{RWA}=\frac{\hbar}{2}\begin{pmatrix}0&\Omega_0 e^{i\phi}\\ \Omega_0 e^{-i\phi}&-2\Delta\end{pmatrix}.
$$

如果初态为基态，激发态概率为

$$\begin{align}
P_e(t)=\frac{\Omega_0^2}{\Omega_0^2+\Delta^2}\sin^2\left(\frac{\sqrt{\Omega_0^2+\Delta^2}}{2}t\right).
\end{align}$$

共振时 $\Delta=0$，

$$\begin{align}
P_e(t)=\sin^2\left(\frac{\Omega_0t}{2}\right).
\end{align}$$

考试要点：Rabi 频率控制跃迁速度，失谐 $\Delta$ 抑制最大跃迁概率。

### CEP 如何进入多光子跃迁

短脉冲可写成

$$\begin{align}
E(t)=F(t)\cos(\omega t+\phi_\mathrm{CEP}).
\end{align}$$

一个吸收 $n$ 个光子的跃迁路径，其相位因子通常包含

$$\begin{align}
M_n\propto e^{-in\phi_\mathrm{CEP}}.
\end{align}$$

如果两个路径 $n$ 和 $m$ 同时连接同一初末态，总振幅为

$$\begin{align}
M=M_n e^{-in\phi_\mathrm{CEP}}+M_m e^{-im\phi_\mathrm{CEP}}.
\end{align}$$

概率为

$$\begin{align}
|M|^2=|M_n|^2+|M_m|^2+2|M_nM_m|\cos\left[(m-n)\phi_\mathrm{CEP}+\delta\right],
\end{align}$$

其中 $\delta=\arg(M_n)-\arg(M_m)$。

因此 CEP 效应来自路径干涉。长脉冲频谱窄，通常只有少数近共振路径，路径之间不容易重叠；短脉冲频谱宽，相邻多光子路径同时贡献，CEP 依赖显著。

对于 $1S\to 2P$ 一类奇宇称跃迁，常见路径为 $1,3,5,\ldots$ 光子，相邻路径差两个光子，因此 CEP 依赖常表现为

$$\begin{align}
\cos(2\phi_\mathrm{CEP}+\delta).
\end{align}$$

## Keldysh 参数与电离机制

强场电离有三种常见极限：

1. 多光子电离：电子吸收多个光子后超过电离阈。
1. 隧穿电离：激光场压低库仑势垒，电子穿过势垒。
1. 过垒电离：激光场足够强，势垒最高点低于束缚能级。

Keldysh 参数衡量激光场变化时间和隧穿时间的相对大小。

势垒宽度可由能量估算。外场 $F_0$ 中，电子跨过距离 $\Delta l$ 获得能量约 $eF_0\Delta l$。令其与电离能相当：

$$\begin{align}
I_p\sim eF_0\Delta l,\qquad \Delta l\sim \frac{I_p}{eF_0}.
\end{align}$$

束缚态中电子典型速度由

$$\begin{align}
\frac{1}{2}mv^2\sim I_p
\end{align}$$

给出：

$$\begin{align}
v\sim \sqrt{\frac{2I_p}{m}}.
\end{align}$$

于是隧穿时间估计为

$$\begin{align}
\tau_\mathrm{tun}\sim \frac{\Delta l}{v}\sim \frac{\sqrt{mI_p}}{eF_0\sqrt{2}}.
\end{align}$$

激光场变化时间尺度为

$$\begin{align}
\tau_L\sim \frac{1}{\omega}.
\end{align}$$

两者之比给出 Keldysh 参数，差一个约定常数后写为

$$\begin{align}
\gamma=\frac{\omega\sqrt{2mI_p}}{eF_0}.
\end{align}$$

原子单位下

$$\begin{align}
\gamma=\frac{\omega\sqrt{2I_p}}{F_0}=\sqrt{\frac{I_p}{2U_p}}.
\end{align}$$

判据：

- $\gamma\gg 1$：多光子电离。
- $\gamma\ll 1$：隧穿电离。
- $F_0$ 足够强使势垒低于束缚能级：过垒电离。

## 三步模型与 HHG cutoff

三步模型描述高次谐波产生：

1. Ionization：电子在强场中隧穿电离。
1. Propagation：电子在激光场中加速并可能返回母离子。
1. Recombination：电子与母离子复合，释放能量为 $I_p+K$ 的光子。

取原子单位，设

$$\begin{align}
E(t)=F_0\cos\omega t,\qquad A(t)=-\frac{F_0}{\omega}\sin\omega t.
\end{align}$$

电子在电离时刻 $t_i$ 出隧穿口，近似初速度为零。令

$$\begin{align}
\phi=\omega t_i,\qquad \tau=\omega(t_r-t_i),
\end{align}$$

其中 $t_r$ 是返回时刻。

电子速度为

$$\begin{align}
v(t)=A(t_i)-A(t)=\frac{F_0}{\omega}\left[\sin(\omega t)-\sin\phi\right]
\end{align}$$

或等价地差一个整体符号；动能只依赖速度平方。

电子位移为

$$\begin{align}
x(t_r)-x(t_i)=\frac{F_0}{\omega^2}\left[\cos\phi-\cos(\phi+\tau)-\tau\sin\phi\right].
\end{align}$$

返回母离子的条件是位移为零：

$$\begin{align}
\cos(\phi+\tau)-\cos\phi+\tau\sin\phi=0.
\end{align}$$

返回动能为

$$\begin{align}
K_r=\frac{1}{2}v(t_r)^2=2U_p\left[\sin(\phi+\tau)-\sin\phi\right]^2.
\end{align}$$

在返回条件下最大化 $K_r$，得到

$$\begin{align}
K_{r,\max}\approx 3.17U_p.
\end{align}$$

因此 HHG 的最大光子能量为

$$\begin{align}
\hbar\Omega_\mathrm{max}=I_p+3.17U_p.
\end{align}$$

这就是高次谐波 cutoff 定律。平台区谐波强度变化较慢，直到 cutoff 附近快速下降。

### 为什么通常只有奇次谐波

中心对称原子或分子在单色线偏振场中满足半周期反对称性：

$$\begin{align}
d(t+T/2)=-d(t).
\end{align}$$

将偶极矩展开为傅里叶级数

$$\begin{align}
d(t)=\sum_n d_n e^{-in\omega t}.
\end{align}$$

半周期平移给出

$$\begin{align}
d(t+T/2)=\sum_n d_n e^{-in\omega t}e^{-in\pi}=\sum_n (-1)^n d_n e^{-in\omega t}.
\end{align}$$

又因为 $d(t+T/2)=-d(t)$，所以偶数 $n$ 项必须消失，只剩奇次谐波：

$$\begin{align}
\Omega=(2n+1)\omega.
\end{align}$$

若体系不具备反演对称性，或外场不是单色线偏振，偶次谐波可以出现。

## Lewenstein 模型与强场近似

Lewenstein 模型是 HHG 的强场近似（SFA）版本。核心近似：

1. 初态主要为基态，基态耗尽可忽略，$a(t)\approx 1$。
1. 连续态电子忽略库仑势，只在激光场中作为 Volkov 电子传播。
1. 谐波辐射来自电离、连续态传播、复合三个振幅的相干积分。

波函数展开为

$$\begin{align}
|\psi(t)\rangle=e^{iI_p t}\left[a(t)|0\rangle+\int d^3p\, b(p,t)|p\rangle\right].
\end{align}$$

在长度规范下，连续态振幅可写成

$$\begin{align}
b(p,t)=i\int_0^t dt'\,E(t')d[p-A(t')]\,e^{-iS(p,t,t')}.
\end{align}$$

这里

$$\begin{align}
S(p,t,t')=\int_{t'}^t d\tau\left\{\frac{[p-A(\tau)]^2}{2}+I_p\right\}
\end{align}$$

是准经典作用量，$d(k)=\langle k|x|0\rangle$ 是偶极矩阵元。

偶极矩为

$$\begin{align}
d(t)=i\int_0^t dt'\int d^3p\,d^\ast[p-A(t)]E(t')d[p-A(t')]e^{-iS(p,t,t')}+\mathrm{c.c.}
\end{align}$$

这个公式可以逐项解释为三步过程：

- $E(t')d[p-A(t')]$：在 $t'$ 时刻电离。
- $e^{-iS(p,t,t')}$：从 $t'$ 到 $t$ 的连续态传播相位。
- $d^\ast[p-A(t)]$：在 $t$ 时刻复合并辐射。

谐波谱可由偶极矩或偶极加速度的傅里叶变换给出：

$$\begin{align}
S(\Omega)\propto \left|\int dt\,d(t)e^{i\Omega t}\right|^2
\end{align}$$

或

$$\begin{align}
S(\Omega)\propto \left|\int dt\,\ddot d(t)e^{i\Omega t}\right|^2.
\end{align}$$

### Saddle point 条件

对 $p,t',t$ 做鞍点近似，得到三条物理条件。

对 $p$ 求导：

$$\begin{align}
\frac{\partial S}{\partial p}=0 \quad\Rightarrow\quad
\int_{t'}^t [p-A(\tau)]\,d\tau=0.
\end{align}$$

这表示电子从电离时刻到复合时刻的总位移为零，即返回母离子。

对 $t'$ 求导：

$$\begin{align}
\frac{[p-A(t')]^2}{2}+I_p=0.
\end{align}$$

这表示电离过程在经典实时间中能量不足，因此 $t'$ 通常为复数；虚部对应隧穿。

对辐射频率 $\Omega$ 的 Fourier 分量，复合时满足

$$\begin{align}
\Omega=\frac{[p-A(t)]^2}{2}+I_p.
\end{align}$$

这表示辐射光子能量等于电离能加返回动能。

## 分子 HHG 的两个中心干涉

双原子分子的基态可用 LCAO 形式表示：

$$\begin{align}
\psi_0(r)=C_N\left[\phi_a(r-R/2)\pm \phi_a(r+R/2)\right].
\end{align}$$

其复合偶极矩大致包含两个中心的相位因子：

$$\begin{align}
d(k)\sim d_a(k)\left(e^{ik\cdot R/2}\pm e^{-ik\cdot R/2}\right).
\end{align}$$

因此

$$\begin{align}
d(k)\sim 2d_a(k)\cos(k\cdot R/2)
\end{align}$$

或

$$\begin{align}
d(k)\sim 2id_a(k)\sin(k\cdot R/2),
\end{align}$$

取决于轨道对称性。

这会导致分子 HHG 谱中的双中心干涉极小值。若复合动量 $k$ 满足

$$\begin{align}
k\cdot R=(2n+1)\pi
\end{align}$$

或

$$\begin{align}
k\cdot R=2n\pi,
\end{align}$$

相应的 $\cos$ 或 $\sin$ 因子消失，谐波强度出现凹陷。

分子 SFA 还会遇到平移不变性问题：Volkov 平面波和束缚态不严格正交，导致电离和复合振幅依赖坐标原点选取。课件中采用的修正思路是要求连续态平面波与原子基态正交，从而减弱这种原点依赖。

## TDSE 数值计算 HHG

数值方法直接求解一维含时薛定谔方程：

$$\begin{align}
i\frac{\partial}{\partial t}\psi(z,t)=\left[-\frac{1}{2}\frac{\partial^2}{\partial z^2}+V(z)+zE(t)\right]\psi(z,t).
\end{align}$$

常用软核库仑势：

$$\begin{align}
V(z)=-\frac{Z}{\sqrt{z^2+a^2}}.
\end{align}$$

偶极矩为

$$\begin{align}
d(t)=\langle\psi(t)|z|\psi(t)\rangle.
\end{align}$$

偶极加速度可由 Ehrenfest 定理得到：

$$\begin{align}
a(t)=\frac{d^2}{dt^2}d(t)=\left\langle\psi(t)\left|-\frac{\partial V}{\partial z}-E(t)\right|\psi(t)\right\rangle.
\end{align}$$

谐波谱为

$$\begin{align}
S(\Omega)\propto\left|\int dt\,a(t)e^{i\Omega t}\right|^2.
\end{align}$$

初态选择会影响谐波强度和 cutoff：

- 基态初态：标准 HHG 平台和 $I_p+3.17U_p$ cutoff。
- 激发态或基态-激发态相干叠加：电离概率增大，谐波强度可增强。
- 高 Rydberg 态：初始位置 $z_0\neq 0$，返回动能可超过标准 $3.17U_p$ 图像，课件中提到最大 $E_\mathrm{kin}$ 可大于 $4U_p$。

## 量子场方法：从光电效应到 ATI

普通光电效应能量守恒为

$$\begin{align}
\frac{1}{2}mv^2=\hbar\omega-W.
\end{align}$$

若单光子能量小于逸出功或电离能，强场下仍可通过吸收多个光子电离：

$$\begin{align}
\frac{1}{2}mv^2=n\hbar\omega-W.
\end{align}$$

在原子中写为

$$\begin{align}
E_k=n\omega-I_p,
\end{align}$$

原子单位取 $\hbar=1$。

强激光场中还要考虑有质动力能位移，直接 ATI 峰的位置常写作

$$\begin{align}
E_n=n\omega-I_p-U_p.
\end{align}$$

其中 $n$ 是 ATI channel，即净吸收光子数。每增加一个 channel，电子动能增加一个 $\omega$。

## 频域强场理论和散射矩阵

量子场方法把原子和激光模式看成一个孤立体系。哈密顿量可抽象写成

$$\begin{align}
H=H_0+U+V.
\end{align}$$

其中：

- $H_0$：自由电子和自由光子能量。
- $U$：库仑势。
- $V$：电子与激光场相互作用。

激光模式满足

$$\begin{align}
N=a^\dagger a,\qquad H_\mathrm{photon}=\omega\left(a^\dagger a+\frac{1}{2}\right).
\end{align}$$

$a$ 和 $a^\dagger$ 分别为光子湮灭和产生算符。

频域散射图像的关键是：初末态总能量守恒。初态可看作束缚电子加 $N$ 个光子，末态可看作自由电子加 $N-n$ 个光子。因此

$$\begin{align}
E_f=E_i,\qquad \frac{k^2}{2}+E_\mathrm{field}(N-n)= -I_p+E_\mathrm{field}(N).
\end{align}$$

这给出

$$\begin{align}
\frac{k^2}{2}=n\omega-I_p
\end{align}$$

以及包含有质动力位移时的

$$\begin{align}
\frac{k^2}{2}=n\omega-I_p-U_p.
\end{align}$$

散射矩阵可写为

$$\begin{align}
T_{fi}=\langle \Psi_f^-|V|\Phi_i\rangle,
\end{align}$$

其中 $\Phi_i$ 是初始 channel，$\Psi_f^-$ 是带有正确出射边界条件的散射态。

频域理论中 HATI 可分解为：

1. Direct ATI：电子直接电离到连续态。
1. Laser-assisted collision：电子在激光场辅助下与母离子发生碰撞。
1. Recollision ATI：ATI 后接 LAC，形成高阶平台。

因此

$$\begin{align}
T_\mathrm{HATI}\sim T_\mathrm{LAC}\,G\,T_\mathrm{ATI},
\end{align}$$

其中 $G$ 表示中间连续态传播。

## ATI 与 HATI cutoff

### Direct ATI cutoff

经典图像下，电子在电离后不返回，只获得激光场给出的漂移动量。若电离时初速度近似为零，末态漂移动量约为

$$\begin{align}
p_f=-A(t_i).
\end{align}$$

因为 $A_0=F_0/\omega$，最大漂移动能为

$$\begin{align}
E_\mathrm{max}^{\mathrm{direct}}=\frac{A_0^2}{2}=2U_p.
\end{align}$$

所以 direct ATI cutoff 约为

$$\begin{align}
E_\mathrm{cut}^{\mathrm{direct}}\approx 2U_p.
\end{align}$$

### HATI cutoff

HATI 中电子先离开，再被激光场驱回母离子并发生近似弹性后向散射。返回时电子已经获得最大约 $3.17U_p$ 的动能；后向散射后，激光场还会继续把返回动量转化为最终漂移动量。

对经典三步轨道最大化最终漂移动能，得到

$$\begin{align}
E_\mathrm{cut}^{\mathrm{HATI}}\approx 10U_p.
\end{align}$$

因此考试中常用对照为：

- HHG cutoff：光子能量 $I_p+3.17U_p$。
- Direct ATI cutoff：电子动能 $2U_p$。
- HATI cutoff：电子动能 $10U_p$。

## IR + XUV 双色场中的 ATI 平台

设红外光频率为 $\omega_1$，XUV 光频率为

$$\begin{align}
\omega_2=15\omega_1.
\end{align}$$

电子可吸收 $q_2$ 个 XUV 光子和 $q_1$ 个 IR 光子，能量守恒为

$$\begin{align}
E=q_2\omega_2+q_1\omega_1-I_p-U_p.
\end{align}$$

固定 $q_2$ 时，IR 光子数 $q_1$ 可变化，形成一个平台；改变 $q_2$ 会移动到另一个平台。因此：

- XUV 光决定平台高度和平台起点，因为它主要决定跨越电离阈的能量。
- IR 光决定平台宽度，因为它驱动连续态电子的加速、返回和散射。
- 平台上的凹陷结构依赖电子出射角、吸收 XUV 光子数以及 LAC 矩阵元的角分布。

## 经典场方法与量子场方法的比较

经典场方法：

- 优点：时间图像清楚，适合超短脉冲、CEP、电子轨道和数值 TDSE。
- 典型对象：$E(t)$、$A(t)$、$d(t)$、三步模型、Lewenstein 模型。
- 常见结果：$I_p+3.17U_p$ cutoff、奇次谐波、CEP 路径干涉。

量子场方法：

- 优点：频域能量守恒清楚，适合 ATI channel、散射矩阵、HATI 和双色场平台。
- 典型对象：光子数态、量子 Volkov 态、$T$ 矩阵、channel 求和。
- 常见结果：ATI 峰 $E_n=n\omega-I_p-U_p$，direct ATI cutoff $2U_p$，HATI cutoff $10U_p$。

两者不是互相矛盾的理论，而是同一强场过程的两种互补表述。

## 常考题型与答题骨架

### 1. 推导 Keldysh 参数并说明物理意义

答题步骤：

1. 用 $I_p\sim eF_0\Delta l$ 得到势垒宽度 $\Delta l\sim I_p/(eF_0)$。
1. 用 $mv^2/2\sim I_p$ 得到束缚电子典型速度 $v\sim\sqrt{2I_p/m}$。
1. 得到隧穿时间 $\tau_\mathrm{tun}\sim \Delta l/v$。
1. 与激光周期时间 $1/\omega$ 比较：

$$\begin{align}
\gamma=\frac{\omega\sqrt{2mI_p}}{eF_0}.
\end{align}$$

1. 说明 $\gamma\gg 1$ 是多光子电离，$\gamma\ll 1$ 是隧穿电离。

### 2. 推导 HHG 的 $I_p+3.17U_p$ cutoff

答题步骤：

1. 写出电子在激光场中的经典速度：

$$\begin{align}
v(t)=A(t_i)-A(t).
\end{align}$$

1. 写返回条件：

$$\begin{align}
\int_{t_i}^{t_r}v(t)\,dt=0.
\end{align}$$

1. 用相位变量 $\phi=\omega t_i$、$\tau=\omega(t_r-t_i)$ 得到

$$\begin{align}
\cos(\phi+\tau)-\cos\phi+\tau\sin\phi=0.
\end{align}$$

1. 写返回动能：

$$\begin{align}
K_r=2U_p[\sin(\phi+\tau)-\sin\phi]^2.
\end{align}$$

1. 在返回条件下最大化，得到 $K_{r,\max}=3.17U_p$。
1. 复合辐射光子能量为

$$\begin{align}
\hbar\Omega_\mathrm{max}=I_p+3.17U_p.
\end{align}$$

### 3. 解释为什么高次谐波通常为奇次

答题步骤：

1. 中心对称体系加单色线偏振场具有半周期反对称性：

$$\begin{align}
d(t+T/2)=-d(t).
\end{align}$$

1. 傅里叶展开 $d(t)=\sum_n d_ne^{-in\omega t}$。
1. 半周期平移给出因子 $(-1)^n$。
1. 偶数 $n$ 与反对称性矛盾，因此偶次项消失，只剩奇次谐波。

### 4. 写出 Lewenstein 模型并解释每一项

答题步骤：

1. 写 SFA 波函数展开：

$$\begin{align}
|\psi(t)\rangle=e^{iI_p t}\left[|0\rangle+\int d^3p\,b(p,t)|p\rangle\right].
\end{align}$$

1. 写作用量：

$$\begin{align}
S(p,t,t')=\int_{t'}^t d\tau\left\{\frac{[p-A(\tau)]^2}{2}+I_p\right\}.
\end{align}$$

1. 写偶极公式：

$$\begin{align}
d(t)=i\int_0^t dt'\int d^3p\,d^\ast[p-A(t)]E(t')d[p-A(t')]e^{-iS(p,t,t')}+\mathrm{c.c.}
\end{align}$$

1. 解释三项分别对应电离、传播、复合。
1. 写 saddle point 条件并解释：返回、隧穿电离、能量守恒辐射。

### 5. 比较 ATI 与 HHG

ATI：

- 末态是自由电子。
- 能量进入电子动能。
- 峰位置由 $E_n=n\omega-I_p-U_p$ 给出。
- direct cutoff 约为 $2U_p$，HATI cutoff 约为 $10U_p$。

HHG：

- 末态电子回到束缚态。
- 能量以高频光子形式释放。
- cutoff 为 $I_p+3.17U_p$。
- 需要复合，因此对原子或分子结构敏感。

### 6. 解释双色场 ATI 平台

答题步骤：

1. 写能量守恒：

$$\begin{align}
E=q_2\omega_2+q_1\omega_1-I_p-U_p.
\end{align}$$

1. 固定 $q_2$，改变 $q_1$，得到一个由 IR 光展开的平台。
1. 改变 $q_2$，得到不同 XUV channel 的多平台结构。
1. 平台高度主要由 XUV 电离概率决定，平台宽度主要由 IR 驱动的 LAC 决定。

# 量子光学第 6-9 章复习材料

## 复习主线

这几章的逻辑是：

1. 用相干态和相空间准概率分布把量子态表示成接近经典相空间的对象。
1. 用 Born-Markov 近似和 Lindblad 结构描述开放量子系统的耗散动力学。
1. 把两能级原子的主方程转化为 Bloch 方程和关联函数，得到共振荧光谱。
1. 用 Heisenberg-Langevin 方程和输入输出关系把腔内算符、噪声和可测输出场联系起来。

统一约定：

- 单模光场满足 $[a,a^\dagger]=1$，数算符 $N=a^\dagger a$。
- Lindblad 耗散子记为

$$\begin{align}
\mathcal D[L]\rho=L\rho L^\dagger-\frac12\{L^\dagger L,\rho\}.
\end{align}$$

- 二能级原子使用 $\sigma_-=|g\rangle\langle e|$，$\sigma_+=|e\rangle\langle g|$，$\sigma_z=|e\rangle\langle e|-|g\rangle\langle g|$。
- 本复习稿中的算符推导依赖标准对易关系、迹循环性、Born-Markov 近似、secular/RWA 近似和热库关联函数。没有重新证明这些近似的适用范围。

---

# Chapter 6. 量子-经典对应与相空间表示

## 6.1 相干态

相干态定义为湮灭算符的本征态：

$$\begin{align}
a|\alpha\rangle=\alpha|\alpha\rangle,\qquad \alpha\in\mathbb C.
\end{align}$$

在 Fock 基中设

$$\begin{align}
|\alpha\rangle=\sum_{n=0}^\infty c_n|n\rangle.
\end{align}$$

代入本征方程：

$$\begin{align}
a|\alpha\rangle=\sum_{n=1}^\infty c_n\sqrt n\,|n-1\rangle =\sum_{n=0}^\infty c_{n+1}\sqrt{n+1}\,|n\rangle =\alpha\sum_{n=0}^\infty c_n|n\rangle.
\end{align}$$

逐项比较得递推关系

$$\begin{align}
c_{n+1}=\frac{\alpha}{\sqrt{n+1}}c_n,\qquad c_n=\frac{\alpha^n}{\sqrt{n!}}c_0.
\end{align}$$

归一化条件给出

$$\begin{align}
1=\sum_{n=0}^\infty |c_n|^2=|c_0|^2\sum_{n=0}^\infty\frac{|\alpha|^{2n}}{n!} =|c_0|^2 e^{|\alpha|^2},
\end{align}$$

所以

$$\begin{align}
|\alpha\rangle=e^{-|\alpha|^2/2}\sum_{n=0}^\infty\frac{\alpha^n}{\sqrt{n!}}|n\rangle.
\end{align}$$

两个相干态的重叠为

$$\begin{align}
\langle\alpha|\beta\rangle =e^{-(|\alpha|^2+|\beta|^2)/2}\sum_{n=0}^\infty\frac{(\alpha^*\beta)^n}{n!} =\exp\left[-\frac12|\alpha|^2-\frac12|\beta|^2+\alpha^*\beta\right].
\end{align}$$

因此

$$\begin{align}
|\langle\alpha|\beta\rangle|^2=e^{-|\alpha-\beta|^2}.
\end{align}$$

当 $|\alpha-\beta|\gg 1$ 时，相干态近似正交，但严格来说它们并不正交。

完备性关系为

$$\begin{align}
\frac1\pi\int d^2\alpha\,|\alpha\rangle\langle\alpha|=\mathbf 1.
\end{align}$$

验证方法是在 Fock 基中取矩阵元：

$$\begin{align}
\frac1\pi\int d^2\alpha\,\langle m|\alpha\rangle\langle\alpha|n\rangle =\frac{1}{\pi\sqrt{m!n!}}\int_0^\infty r\,dr\,e^{-r^2}r^{m+n}\int_0^{2\pi}d\theta\,e^{i(n-m)\theta} =\delta_{mn}.
\end{align}$$

## 6.2 光子数统计

由 Fock 展开可得处于 $|n\rangle$ 的概率：

$$\begin{align}
P_n=|\langle n|\alpha\rangle|^2=e^{-|\alpha|^2}\frac{|\alpha|^{2n}}{n!}.
\end{align}$$

这是均值为 $\bar N=|\alpha|^2$ 的 Poisson 分布：

$$\begin{align}
\langle N\rangle=|\alpha|^2,\qquad (\Delta N)^2=|\alpha|^2.
\end{align}$$

因此相对涨落为

$$\begin{align}
\frac{\Delta N}{\langle N\rangle}=\frac1{|\alpha|}.
\end{align}$$

大振幅相干态的相对光子数涨落小，因而在许多方面接近经典光场。

## 6.3 位移算符与最小不确定态

定义位移算符

$$\begin{align}
D(\alpha)=\exp(\alpha a^\dagger-\alpha^*a).
\end{align}$$

令 $A=\alpha a^\dagger-\alpha^*a$。由 Baker-Campbell-Hausdorff 公式，

$$\begin{align}
e^{-A}ae^A=a+[a,A]+\frac12[[a,A],A]+\cdots.
\end{align}$$

因为

$$\begin{align}
[a,A]=\alpha,\qquad [\alpha,A]=0,
\end{align}$$

所以

$$\begin{align}
D^\dagger(\alpha)aD(\alpha)=a+\alpha.
\end{align}$$

同理

$$\begin{align}
D^\dagger(\alpha)a^\dagger D(\alpha)=a^\dagger+\alpha^*.
\end{align}$$

又因为 $aD(\alpha)|0\rangle=D(\alpha)(a+\alpha)|0\rangle=\alpha D(\alpha)|0\rangle$，所以

$$\begin{align}
|\alpha\rangle=D(\alpha)|0\rangle.
\end{align}$$

定义谐振子正则变量

$$\begin{align}
q=\frac{1}{\sqrt{2m\omega}}(a+a^\dagger),\qquad
p=-i\sqrt{\frac{m\omega}{2}}(a-a^\dagger).
\end{align}$$

在相干态中

$$\begin{align}
\langle q\rangle=\frac{\alpha+\alpha^*}{\sqrt{2m\omega}},\qquad
\langle p\rangle=-i\sqrt{\frac{m\omega}{2}}(\alpha-\alpha^*).
\end{align}$$

方差与真空态相同：

$$\begin{align}
(\Delta q)^2=\frac{1}{2m\omega},\qquad
(\Delta p)^2=\frac{m\omega}{2},\qquad
\Delta q\,\Delta p=\frac12.
\end{align}$$

因此相干态是被位移的最小不确定高斯波包。

若取 $m=\omega=\hbar=1$，并写

$$\begin{align}
\alpha=\frac{q_0+ip_0}{\sqrt2},
\end{align}$$

则坐标表象波函数为

$$\begin{align}
\psi_\alpha(q)=\pi^{-1/4}\exp\left[-\frac12(q-q_0)^2+ip_0q\right].
\end{align}$$

## 6.4 压缩态

定义压缩算符

$$\begin{align}
S(\xi)=\exp\left[\frac12(\xi^*a^2-\xi a^{\dagger 2})\right], \qquad \xi=re^{i\theta}.
\end{align}$$

标准 Bogoliubov 变换为

$$\begin{align}
S^\dagger(\xi)aS(\xi)=a\cosh r-a^\dagger e^{i\theta}\sinh r,
\end{align}$$

$$\begin{align}
S^\dagger(\xi)a^\dagger S(\xi)=a^\dagger\cosh r-ae^{-i\theta}\sinh r.
\end{align}$$

推导思路是引入

$$\begin{align}
a(r)=S^\dagger(re^{i\theta})aS(re^{i\theta}).
\end{align}$$

对 $r$ 求导，并使用

$$\begin{align}
\left[\frac12(e^{-i\theta}a^2-e^{i\theta}a^{\dagger 2}),a\right]=e^{i\theta}a^\dagger,
\end{align}$$

可得到一阶线性方程组。结合初值 $a(0)=a$，解出上面的双曲函数形式。

旋转正交分量定义为

$$\begin{align}
Y_1=ae^{-i\theta/2}+a^\dagger e^{i\theta/2},\qquad
Y_2=-i(ae^{-i\theta/2}-a^\dagger e^{i\theta/2}).
\end{align}$$

它们满足 $[Y_1,Y_2]=2i$。在压缩真空 $S(\xi)|0\rangle$ 中，

$$\begin{align}
(\Delta Y_1)^2=e^{-2r},\qquad
(\Delta Y_2)^2=e^{2r},
\end{align}$$

所以

$$\begin{align}
\Delta Y_1\,\Delta Y_2=1.
\end{align}$$

一个正交分量噪声降低，另一个正交分量噪声升高；乘积仍受不确定性关系限制。

## 6.5 $P$ 表示、$Q$ 表示与 Wigner 函数

相干态的过完备性允许把密度矩阵写成对角形式

$$\begin{align}
\rho=\int d^2\alpha\,P(\alpha)|\alpha\rangle\langle\alpha|.
\end{align}$$

这称为 Glauber-Sudarshan $P$ 表示。对正规序算符有

$$\begin{align}
\langle (a^\dagger)^m a^n\rangle =\mathrm{Tr}\left[\rho (a^\dagger)^m a^n\right] =\int d^2\alpha\,P(\alpha)(\alpha^*)^m\alpha^n.
\end{align}$$

推导只用到

$$\begin{align}
a|\alpha\rangle=\alpha|\alpha\rangle,\qquad
\langle\alpha|a^\dagger=\alpha^*\langle\alpha|.
\end{align}$$

如果 $P(\alpha)$ 是非负普通函数，它可以像经典概率分布一样使用；若 $P$ 奇异或取负，则态具有非经典性。

$Q$ 函数定义为

$$\begin{align}
Q(\alpha)=\frac1\pi\langle\alpha|\rho|\alpha\rangle.
\end{align}$$

它总是非负，并且满足

$$\begin{align}
\int d^2\alpha\,Q(\alpha)=1.
\end{align}$$

但 $Q$ 是被相干态核平滑过的分布，因此不能直接等同于 $P$。

Wigner 函数与对称序对应。常用定义为

$$\begin{align}
W(q,p)=\frac1{2\pi}\int dy\,e^{ipy}\left\langle q-\frac y2\middle|\rho\middle|q+\frac y2\right\rangle.
\end{align}$$

相干态的 Wigner 函数是相空间中的高斯：

$$\begin{align}
W_\alpha(q,p)=\frac1\pi\exp[-(q-q_0)^2-(p-p_0)^2].
\end{align}$$

它归一化为

$$\begin{align}
\int dq\,dp\,W_\alpha(q,p)=1.
\end{align}$$

三种表示的记忆方式：

- $P$ 表示对应正规序，最接近经典概率，但可能奇异。
- $Q$ 表示对应反正规序，总是平滑非负，但信息被模糊。
- Wigner 表示对应对称序，最适合相空间图像，但可以取负。

---

# Chapter 7. 量子主方程

## 7.1 从封闭系统到开放系统

总系统哈密顿量写成

$$\begin{align}
H=H_S+H_B+H_I,\qquad H_I=\sum_\alpha A_\alpha\otimes B_\alpha.
\end{align}$$

总密度矩阵满足 Liouville 方程

$$\begin{align}
\frac{d\rho_{\mathrm{tot}}}{dt}=-i[H,\rho_{\mathrm{tot}}].
\end{align}$$

在相互作用绘景中，

$$\begin{align}
\frac{d\rho_I(t)}{dt}=-i[H_I(t),\rho_I(t)].
\end{align}$$

积分一次再代回，得到

$$\begin{align}
\frac{d\rho_I(t)}{dt} =-i[H_I(t),\rho_I(0)] -\int_0^t ds\,[H_I(t),[H_I(s),\rho_I(s)]].
\end{align}$$

对热库取迹，并假设 $\mathrm{Tr}_B[H_I(t)\rho_B]=0$，第一项消失。

## 7.2 Born-Markov 近似

Born 近似假设系统-热库耦合弱，热库几乎不被系统改变：

$$\begin{align}
\rho_I(t)\approx \rho_S(t)\otimes\rho_B.
\end{align}$$

于是

$$\begin{align}
\frac{d\rho_S(t)}{dt} =-\int_0^t ds\,\mathrm{Tr}_B[H_I(t),[H_I(s),\rho_S(s)\otimes\rho_B]].
\end{align}$$

Markov 近似假设热库关联时间 $\tau_B$ 远小于系统演化时间 $\tau_S$，于是

$$\begin{align}
\rho_S(s)\to\rho_S(t),\qquad \int_0^t ds\to\int_0^\infty ds.
\end{align}$$

令 $s=t-\tau$，得

$$\begin{align}
\frac{d\rho_S(t)}{dt} =-\int_0^\infty d\tau\,\mathrm{Tr}_B[H_I(t),[H_I(t-\tau),\rho_S(t)\otimes\rho_B]].
\end{align}$$

## 7.3 频率分解与 Lindblad 形式

把系统算符按 Bohr 频率分解：

$$\begin{align}
A_\alpha(t)=\sum_\omega e^{-i\omega t}A_\alpha(\omega),
\end{align}$$

其中

$$\begin{align}
[H_S,A_\alpha(\omega)]=-\omega A_\alpha(\omega).
\end{align}$$

热库关联函数为

$$\begin{align}
C_{\alpha\beta}(\tau)=\mathrm{Tr}_B[B_\alpha(\tau)B_\beta(0)\rho_B].
\end{align}$$

其半边 Fourier 变换写成

$$\begin{align}
\Gamma_{\alpha\beta}(\omega)=\int_0^\infty d\tau\,e^{i\omega\tau}C_{\alpha\beta}(\tau).
\end{align}$$

将

$$\begin{align}
\Gamma_{\alpha\beta}(\omega)=\frac12\gamma_{\alpha\beta}(\omega)+iS_{\alpha\beta}(\omega)
\end{align}$$

分成实部和虚部。虚部给 Lamb shift：

$$\begin{align}
H_{\mathrm{LS}}=\sum_{\omega,\alpha,\beta}S_{\alpha\beta}(\omega)A_\alpha^\dagger(\omega)A_\beta(\omega).
\end{align}$$

在 secular 近似下，不同 Bohr 频率的快速振荡项被丢弃，得到 Lindblad 主方程

$$\begin{align}
\frac{d\rho}{dt} =-i[H_S+H_{\mathrm{LS}},\rho] +\sum_{\omega,\alpha,\beta}\gamma_{\alpha\beta}(\omega) \left(A_\beta(\omega)\rho A_\alpha^\dagger(\omega) -\frac12\{A_\alpha^\dagger(\omega)A_\beta(\omega),\rho\}\right).
\end{align}$$

这一步的要点是：Born 近似给出二阶耦合，Markov 近似消去记忆核，secular 近似保证生成元是完全正的 Lindblad 形式。

## 7.4 阻尼谐振子主方程

单模腔与热库耦合后，在旋转波近似下主方程为

$$\begin{align}
\frac{d\rho}{dt} =-i[\omega_0a^\dagger a,\rho] +\kappa(\bar n+1)\mathcal D[a]\rho +\kappa\bar n\,\mathcal D[a^\dagger]\rho.
\end{align}$$

其中

$$\begin{align}
\bar n=\frac1{e^{\beta\omega_0}-1}.
\end{align}$$

用伴随 Liouvillian 计算平均值。若

$$\begin{align}
\frac{d}{dt}\langle O\rangle=\mathrm{Tr}\left(O\frac{d\rho}{dt}\right),
\end{align}$$

则可得

$$\begin{align}
\frac{d}{dt}\langle a\rangle=-\left(i\omega_0+\frac\kappa2\right)\langle a\rangle,
\end{align}$$

以及

$$\begin{align}
\frac{d}{dt}\langle N\rangle=-\kappa(\langle N\rangle-\bar n).
\end{align}$$

因此场幅以 $\kappa/2$ 衰减，光子数以 $\kappa$ 弛豫到热平衡值 $\bar n$。

## 7.5 主方程到 Fokker-Planck 方程

若使用 $P$ 表示

$$\begin{align}
\rho(t)=\int d^2\alpha\,P(\alpha,\alpha^*,t)|\alpha\rangle\langle\alpha|,
\end{align}$$

则阻尼谐振子的主方程对应

$$\begin{align}
\frac{\partial P}{\partial t} =\frac{\partial}{\partial\alpha}\left[\left(\frac\kappa2+i\omega_0\right)\alpha P\right] +\frac{\partial}{\partial\alpha^*}\left[\left(\frac\kappa2-i\omega_0\right)\alpha^* P\right] +\kappa\bar n\,\frac{\partial^2P}{\partial\alpha\,\partial\alpha^*}.
\end{align}$$

前两项是漂移项，最后一项是扩散项。

稳态满足

$$\begin{align}
P_{\mathrm{ss}}(\alpha)=\frac1{\pi\bar n}\exp\left(-\frac{|\alpha|^2}{\bar n}\right),
\end{align}$$

对应热态。若 $\bar n=0$，扩散项消失，初始相干态的 $P$ 函数保持为 delta 峰，峰的位置按

$$\begin{align}
\alpha(t)=\alpha(0)e^{-(i\omega_0+\kappa/2)t}
\end{align}$$

旋转并衰减。

---

# Chapter 8. 共振荧光

## 8.1 两能级原子与驱动场

在驱动频率 $\omega_d$ 的旋转框架中，半经典驱动的两能级原子哈密顿量可写为

$$\begin{align}
H_S=-\frac\delta2\sigma_z+\frac\Omega2(\sigma_++\sigma_-),
\end{align}$$

其中

$$\begin{align}
\delta=\omega_d-\omega_a
\end{align}$$

是失谐，$\Omega$ 是 Rabi 频率。若考虑自发辐射，主方程为

$$\begin{align}
\frac{d\rho}{dt}=-i[H_S,\rho]+\gamma\mathcal D[\sigma_-]\rho.
\end{align}$$

定义 Bloch 分量

$$\begin{align}
u=\langle\sigma_x\rangle,\qquad v=\langle\sigma_y\rangle,\qquad w=\langle\sigma_z\rangle.
\end{align}$$

由主方程可得 optical Bloch equations：

$$\begin{align}
\dot u=-\frac\gamma2u+\delta v,
\end{align}$$

$$\begin{align}
\dot v=-\frac\gamma2v-\delta u-\Omega w,
\end{align}$$

$$\begin{align}
\dot w=\Omega v-\gamma(w+1).
\end{align}$$

推导例子：对 $w=\langle\sigma_z\rangle$，

$$\begin{align}
\dot w=-i\langle[\sigma_z,H_S]\rangle+\gamma\,\mathrm{Tr}[\sigma_z\mathcal D[\sigma_-]\rho].
\end{align}$$

利用

$$\begin{align}
[\sigma_z,\sigma_+]=2\sigma_+,\qquad [\sigma_z,\sigma_-]=-2\sigma_-,
\end{align}$$

哈密顿量部分给出 $\Omega v$；耗散部分把激发态人口带向基态，给出 $-\gamma(w+1)$。

共振情形 $\delta=0$ 的稳态为

$$\begin{align}
u_{\mathrm{ss}}=0,\qquad
v_{\mathrm{ss}}=\frac{2\Omega\gamma}{\gamma^2+2\Omega^2},\qquad
w_{\mathrm{ss}}=-\frac{\gamma^2}{\gamma^2+2\Omega^2}.
\end{align}$$

## 8.2 Jaynes-Cummings 模型与 dressed states

若光场也量子化，旋转波近似下 Jaynes-Cummings 哈密顿量为

$$\begin{align}
H=\omega_c a^\dagger a+\frac{\omega_a}{2}\sigma_z+g(a\sigma_++a^\dagger\sigma_-).
\end{align}$$

总激发数

$$\begin{align}
\mathcal N=a^\dagger a+\sigma_+\sigma_-
\end{align}$$

守恒。因此 Hilbert 空间分解成二维子空间

$$\begin{align}
\{|n,e\rangle,\ |n+1,g\rangle\}.
\end{align}$$

在共振 $\omega_a=\omega_c$ 时，第 $n$ 个子空间中的本征态为

$$\begin{align}
|n,\pm\rangle=\frac1{\sqrt2}\left(|n,e\rangle\pm |n+1,g\rangle\right),
\end{align}$$

能级劈裂为

$$\begin{align}
\Omega_n=2g\sqrt{n+1}.
\end{align}$$

这说明原子与量子光场形成 dressed states，辐射谱可以理解为 dressed-state ladder 之间的跃迁。

## 8.3 量子回归定理

单时刻平均值满足

$$\begin{align}
\frac{d}{dt}\langle\vec O(t)\rangle=M\langle\vec O(t)\rangle+\vec b.
\end{align}$$

量子回归定理说，在相同 Markov 主方程下，两时关联函数

$$\begin{align}
\langle O_i(t+\tau)B(t)\rangle
\end{align}$$

关于延迟时间 $\tau$ 满足同一个齐次演化矩阵 $M$：

$$\begin{align}
\frac{d}{d\tau}\langle\vec O(t+\tau)B(t)\rangle =M\langle\vec O(t+\tau)B(t)\rangle
\end{align}$$

初值由 $\tau=0$ 的算符乘积给出。

这一定理是从同一个 Lindblad 半群推出的。它不适用于强非 Markov 记忆、强初始系统-环境关联或主方程本身不成立的情形。

## 8.4 共振荧光谱与 Mollow triplet

稳态发射谱定义为

$$\begin{align}
S(\omega)=\mathrm{Re}\int_0^\infty d\tau\,e^{i(\omega-\omega_d)\tau}
\langle\sigma_+(t+\tau)\sigma_-(t)\rangle_{\mathrm{ss}}.
\end{align}$$

量子回归定理把谱的计算化为 Bloch 方程矩阵的求解：先确定初值

$$\begin{align}
\langle\sigma_i(t)\sigma_-(t)\rangle_{\mathrm{ss}},
\end{align}$$

再用同一个 Bloch 演化矩阵推进延迟时间 $\tau$。

强驱动、近共振时，谱出现三峰结构：

- 中央峰在 $\omega=\omega_d$。
- 两个边峰在 $\omega=\omega_d\pm\Omega_{\mathrm{eff}}$。
- 共振强驱动极限下 $\Omega_{\mathrm{eff}}\simeq\Omega$。

物理图像是 dressed-state ladder：相邻流形之间的允许跃迁有四类，其中两类频率重合形成中央峰，另外两类形成两个边峰。这就是 Mollow triplet。

---

# Chapter 9. Heisenberg-Langevin 方程与输入输出形式

## 9.1 腔模的 Langevin 方程

考虑单模腔 $a$ 与连续外场模 $b_\omega$ 耦合。Markov 近似下可写成

$$\begin{align}
\dot a(t)=-\left(i\omega_c+\frac\kappa2\right)a(t)-\sqrt\kappa\,a_{\mathrm{in}}(t).
\end{align}$$

这里 $a_{\mathrm{in}}(t)$ 是输入噪声算符。它由远过去的 bath 算符定义，真空输入满足

$$\begin{align}
\langle a_{\mathrm{in}}(t)\rangle=0,\qquad
\langle a_{\mathrm{in}}(t)a_{\mathrm{in}}^\dagger(t')\rangle=\delta(t-t').
\end{align}$$

推导思路：

1. 写出 bath 模方程

$$\begin{align}
\dot b_\omega(t)=-i\omega b_\omega(t)+\text{system source}.
\end{align}$$

1. 形式积分得到 $b_\omega(t)$，包含自由输入项和系统历史积分项。
1. 代回 $\dot a(t)$。
1. 宽带 Markov 近似把历史核变成 delta 函数，得到阻尼项 $\kappa a/2$ 和噪声项 $\sqrt\kappa a_{\mathrm{in}}$。

## 9.2 输入输出关系

同一个 bath 方程也可从远未来定义输出场 $a_{\mathrm{out}}(t)$。比较远过去和远未来的形式解，得到边界条件

$$\begin{align}
a_{\mathrm{out}}(t)=a_{\mathrm{in}}(t)+\sqrt\kappa\,a(t).
\end{align}$$

这个公式把腔内算符和可测输出场联系起来。它是 input-output formalism 的核心。

频域中，若

$$\begin{align}
a(\omega)=\int dt\,e^{i\omega t}a(t),
\end{align}$$

则线性 Langevin 方程可直接代数求解。对于无驱动线性腔，

$$\begin{align}
a(\omega)=-\frac{\sqrt\kappa}{\kappa/2-i(\omega-\omega_c)}a_{\mathrm{in}}(\omega).
\end{align}$$

因此

$$\begin{align}
a_{\mathrm{out}}(\omega) =\left[1-\frac{\kappa}{\kappa/2-i(\omega-\omega_c)}\right]a_{\mathrm{in}}(\omega).
\end{align}$$

方括号中的系数就是单端口腔的散射振幅。

## 9.3 OPO 的输出压缩谱

低于阈值的简并光学参量振荡器可用有效哈密顿量

$$\begin{align}
H_{\mathrm{OPO}}=\frac{i\hbar\epsilon}{2}(a^{\dagger 2}-a^2)
\end{align}$$

描述。定义正交分量

$$\begin{align}
X_1=a+a^\dagger,\qquad X_2=-i(a-a^\dagger).
\end{align}$$

Langevin 方程给出

$$\begin{align}
\dot X_1=-\left(\frac\kappa2-\epsilon\right)X_1-\sqrt\kappa\,X_{1,\mathrm{in}},
\end{align}$$

$$\begin{align}
\dot X_2=-\left(\frac\kappa2+\epsilon\right)X_2-\sqrt\kappa\,X_{2,\mathrm{in}}.
\end{align}$$

稳定条件是

$$\begin{align}
\epsilon<\frac\kappa2.
\end{align}$$

频域解为

$$\begin{align}
X_{1,\mathrm{out}}(\omega) =-\frac{\kappa/2+\epsilon+i\omega}{\kappa/2-\epsilon-i\omega}X_{1,\mathrm{in}}(\omega),
\end{align}$$

$$\begin{align}
X_{2,\mathrm{out}}(\omega) =-\frac{\kappa/2-\epsilon+i\omega}{\kappa/2+\epsilon-i\omega}X_{2,\mathrm{in}}(\omega).
\end{align}$$

若输入是真空噪声，归一化输出谱为

$$\begin{align}
S_1(\omega)=\frac{(\kappa/2+\epsilon)^2+\omega^2}{(\kappa/2-\epsilon)^2+\omega^2},
\end{align}$$

$$\begin{align}
S_2(\omega)=\frac{(\kappa/2-\epsilon)^2+\omega^2}{(\kappa/2+\epsilon)^2+\omega^2}.
\end{align}$$

因此 $X_1$ 是反压缩正交分量，$X_2$ 是压缩正交分量。零频处

$$\begin{align}
S_2(0)=\left(\frac{\kappa/2-\epsilon}{\kappa/2+\epsilon}\right)^2.
\end{align}$$

当 $\epsilon\to\kappa/2$ 时，理想理论给出 $S_2(0)\to0$，但这也是阈值附近线性化近似最需要小心的地方。

## 9.4 两能级原子的 Langevin 方程

两能级原子与输入场耦合时，Langevin 方程不再只是线性的腔模方程。典型结构为

$$\begin{align}
\dot\sigma_-=-\left(i\Omega+\frac\gamma2\right)\sigma_-+\sqrt\gamma\,\sigma_z b_{\mathrm{in}}(t),
\end{align}$$

$$\begin{align}
\dot\sigma_z=-\gamma(1+\sigma_z)-2\sqrt\gamma\left(\sigma_+b_{\mathrm{in}}(t)+b_{\mathrm{in}}^\dagger(t)\sigma_-\right),
\end{align}$$

其中具体符号取决于输入输出约定。

这里的特点是：

- 噪声项乘上系统算符，例如 $\sigma_z b_{\mathrm{in}}$，所以方程是非线性的算符方程。
- 输入噪声与系统算符在同一时刻的对易关系需要由 Markov 极限谨慎定义。
- 对平均值做 Born 型因子化并使用热库关联函数后，可以恢复 optical Bloch equations。

在热输入下常用关联函数为

$$\begin{align}
\langle b_{\mathrm{in}}(t)b_{\mathrm{in}}^\dagger(t')\rangle=(N_{\mathrm{th}}+1)\delta(t-t'),
\end{align}$$

$$\begin{align}
\langle b_{\mathrm{in}}^\dagger(t)b_{\mathrm{in}}(t')\rangle=N_{\mathrm{th}}\delta(t-t').
\end{align}$$

这些关联函数把真空涨落和热噪声一起带入原子的耗散动力学。

---

# 复习检查表

## 必须会推的公式

1. 从 $a|\alpha\rangle=\alpha|\alpha\rangle$ 推出相干态 Fock 展开。
1. 计算 $\langle\alpha|\beta\rangle$ 和 $|\langle\alpha|\beta\rangle|^2$。
1. 用 BCH 推出 $D^\dagger aD=a+\alpha$。
1. 从压缩算符推出 Bogoliubov 变换和正交分量方差。
1. 从 Born-Markov 近似写出二阶主方程，再说明 secular 近似如何给 Lindblad 形式。
1. 从阻尼谐振子主方程推出 $\dot{\langle a\rangle}$ 和 $\dot{\langle N\rangle}$。
1. 从两能级原子主方程推出 optical Bloch equations。
1. 用量子回归定理解释为什么发射谱可由 Bloch 矩阵求出。
1. 从 bath 模形式解推出 Langevin 方程和输入输出关系。
1. 从 OPO 的正交分量 Langevin 方程推出 $S_1(\omega)$ 和 $S_2(\omega)$。

## 易错点

- 相干态是过完备基，不是正交基。
- $P$ 函数不是总能当作普通概率密度；非经典态常导致奇异或非正的 $P$。
- $Q$ 函数非负，但它是平滑后的分布，不能直接反映所有非经典性。
- Markov 近似和 secular 近似是不同步骤；只有后者通常保证标准 Lindblad 形式。
- 腔幅衰减率是 $\kappa/2$，光子数弛豫率是 $\kappa$。
- Mollow triplet 的三峰结构来自 dressed-state 跃迁，不是简单的经典调制边带。
- input-output 关系的正负号依赖耦合哈密顿量和输入场定义；使用时要与 Langevin 方程的约定保持一致。
- OPO 的完美压缩结论属于理想线性模型；阈值附近需要考虑泵浦耗尽、非线性和额外损耗。

## 建议复习顺序

1. 先掌握相干态、压缩态和三种相空间分布的定义。
1. 再复习 Lindblad 主方程的推导条件，而不是只背最终形式。
1. 用阻尼谐振子作为主方程与 Fokker-Planck 方程之间的桥梁。
1. 用两能级原子练习从主方程到 Bloch 方程。
1. 最后把 Langevin 方程和 input-output 关系用于噪声谱和输出谱计算。
