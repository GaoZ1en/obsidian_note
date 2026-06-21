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
