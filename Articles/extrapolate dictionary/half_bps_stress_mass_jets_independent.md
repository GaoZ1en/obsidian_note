# 正质量三角区的实际径向边界 jets

## 结果与适用对象

本附录核验 genuine switched stress–scalar–scalar coefficient 的一个关键端点：stress 输入平方质量 \(x\downarrow0\)，另外两条硬正能量腿的独立平方质量为 \(y,t\)。这里的导数始终作用在径向模式的质量参数上；自由谱锥的指标保持不动。

在 \(x,y,t\ge0\) 的正质量 orthant，middle 与 right insertions 的共同 retarded 径向积分给出

\[
S_x(y,t)=-\frac{2\,\mathbf1_{\sqrt y+\sqrt t<\sqrt x}}
{\sqrt{\lambda(x,y,t)}},\qquad
\lambda=(x-y-t)^2-4yt .
\tag{J1}
\]

其实际共同径向截断极限具有单侧 \(\mathcal S'([0,\infty)^2)\) jets

\[
\boxed{S_{0+}=0,\quad
\partial_xS_{0+}=-\delta(y)\delta(t),\quad
\partial_x^2S_{0+}=
\tfrac12\{\delta'(y)\delta(t)+\delta(y)\delta'(t)\}.}
\tag{J2}
\]

这些分布包括 \(y=t=0\) 的共同端点。下文先用精确三角区矩计算 jets，再以实际径向积分证明它们是可交换极限的真实边界值。

这里 \(\delta\) 是闭正半轴上的单侧 evaluation functional；例如 \(\langle\delta(y),f\rangle=f(0)\)。它作为支撑于闭正半轴的全实轴分布使用时仍具有这个归一化。

## 1. 紧支撑 profile 及精确矩

令 \(y=xB^2,t=xC^2\)，其中 \(B,C\ge0,B+C<1\)。由质量齐次性，(J1) 的配对等于 \(-x\) 乘固定紧支撑正 profile 的配对。profile 的六个矩为

\[
\begin{array}{c|rrrrrr}
(n,k)&(0,0)&(1,0)&(0,1)&(2,0)&(1,1)&(3,0)\\ \hline
\displaystyle -x^{-n-k-1}\!\int y^nt^kS_x\,dy\,dt
&1&1/4&1/4&1/9&1/36&1/16 .
\end{array}
\tag{J3}
\]

例如用
\[
B+C=\sin\theta,\qquad B-C=\sin\varphi,
\quad0\le\theta\le\pi/2,\quad-\theta\le\varphi\le\theta
\]
消去平方根，归一化矩化为普通有限积分
\[
\int_0^{\pi/2}\!d\theta\int_{-\theta}^{\theta}\!d\varphi\,
(\sin^2\theta-\sin^2\varphi)
\left(\frac{\sin\theta+\sin\varphi}{2}\right)^{2n}
\left(\frac{\sin\theta-\sin\varphi}{2}\right)^{2k}.
\tag{J4}
\]

对任意有界光滑 test class，在固定 compact profile 上 Taylor 展开是 uniform 的：
\[
\begin{aligned}
\langle S_x,\psi\rangle={}&-x\psi(0,0)
-\frac{x^2}{4}(\partial_y+\partial_t)\psi(0,0)\\
&-x^3\left[
\frac{\partial_y^2+\partial_t^2}{18}
+\frac{\partial_y\partial_t}{36}\right]\psi(0,0)+O(x^4).
\end{aligned}
\tag{J5}
\]
因此 (J2) 的符号与系数由有限积分确定；三阶 jet 为
\[
\partial_x^3S_{0+}
=-\frac13(\delta''(y)\delta(t)+\delta(y)\delta''(t))
-\frac16\delta'(y)\delta'(t).
\tag{J6}
\]

## 2. 共同径向截断直接给出 \(C^\infty\) 端点族

令 \(|\beta_L(u)|\le1\)，且在每个 compact \(u\) 区间上一致趋于 1。正质量区的原始两项之和为

\[
S_{L,x}(y,t)=\frac{\pi}{2}
\int_0^\infty u\,du\,\beta_L(u)J_0(u\sqrt x)
\left[Y_0(u\sqrt t)J_0(u\sqrt y)
+Y_0(u\sqrt y)J_0(u\sqrt t)\right].
\tag{J7}
\]

两项的 \(J_0J_0\) imaginary parts 由相反 retarded signs 精确抵消。此处保留的是共同径向 regulator。

对 \(f\in\mathcal S([0,\infty))\)，定义
\[
J_f(u)=\int_0^\infty f(y)J_0(u\sqrt y)\,dy,\quad
Y_f(u)=\int_0^\infty f(y)Y_0(u\sqrt y)\,dy.
\]
\(J_f\) 是 \(f(|k|^2)\in\mathcal S(\mathbb R^2)\) 的径向 Fourier transform，因而具有任意阶 rapid decay。\(Y_f\) 在 \(u\downarrow0\) 具有 \(O(1+|\log u|)\) 界；在 \(u\ge1\) 可用 \(O(u^{-1/2})\) 粗界。后者由 \(y\le u^{-2}\) 与 \(y\ge u^{-2}\) 分段和 Bessel 渐近界直接得到，且常数只用有限个 Schwartz seminorms。

此外，正规化 Bessel 函数的积分表示给出
\[
\left|\partial_x^nJ_0(u\sqrt x)\right|
\le \frac{(u^2/4)^n}{n!},\qquad x\ge0.
\tag{J8}
\]
对 tensor-product test \(f(y)g(t)\)，(J7) 任意 \(x\) 导数的绝对值均由
\[
C_nu^{2n+1}\bigl(|J_fY_g|+|Y_fJ_g|\bigr)
\]
支配。此 majorant 在 \(0<u<\infty\) 可积，并在有界 test class 上一致。对一般 joint test，可对其自由 \(J\) 质量先作径向 Fourier estimate；或使用 Schwartz nuclear tensor-product decomposition，所得连续双线性 seminorm 给出同一 joint estimate。

Dominated convergence 因而证明
\[
S_{L,x}\longrightarrow S_x
\quad\text{in }C^\infty_{\rm loc}
\bigl([0,\infty)_x;\mathcal S'([0,\infty)^2_{y,t})\bigr),
\tag{J9}
\]
收敛在有界 test sets 上为 strong convergence。实际径向截断、\(x\) 导数和 \(x\downarrow0\) 的极限可以在这一 topology 中交换。因为 \(x>0\) 的已知积分等于 (J1)，唯一连续延拓的 jets 就是 (J2)。

这一论证只用自由输入的真实非负质量域，未将 \(J_0(u\sqrt x)\) 延伸到负质量后要求指数控制。

## 3. 与谱锥全导数的区别

把 \(S_x\) 对 \(x<0\) 零延拓，(J2) 给出
\[
\boxed{
\theta(x)\partial_x^2S_x
=\partial_x^2\{\theta(x)S_x\}
+\delta(x)\delta(y)\delta(t).}
\tag{J10}
\]

推导只需
\(\partial_x^2(\theta S)=\theta S''+\delta(x)S'_{0+}
+\delta'(x)S_{0+}\)。
因此直接把固定自由锥的径向导数替换成整个零延拓分布的质量导数，会遗漏 (J10) 的 triple-null contact。共同径向 prescription 已固定该 contact；它不再是可任意添加的 scheme 参数。

式 (J10) 是三个**独立平方质量**中的恒等式。向实际四动量作可能退化的 pullback，仍需相应的 transverse-coordinate 或原始径向构造；本附录没有仅凭独立质量分布的存在推断任意 critical pullback。

## 4. 第二条独立复算：Laplace test 的原始径向积分

对 \(A>0\)，直接积分得
\[
J_{e^{-Ay}}(u)=A^{-1}e^{-u^2/(4A)},\qquad
Y_{e^{-Ay}}(u)=\frac{e^{-u^2/(4A)}}{\pi A}
\operatorname{Ei}\!\left(\frac{u^2}{4A}\right).
\tag{J11}
\]

令 \(a=(4A)^{-1},b=(4B)^{-1}\)，并写
\[
F(c)=\frac1c\log\frac{ab}{(c-a)(c-b)}.
\]
将 (J11) 代回 (J7)，\(x=0\) 处第 \(n\) 阶 jet 的 Laplace 配对等于
\[
\frac{F^{(n)}(a+b)}{4AB\,4^n n!}.
\tag{J12}
\]
\(n=0,1,2,3\) 分别给出
\[
0,\quad-1,\quad\frac{A+B}{2},\quad
-\frac{A^2+B^2}{3}-\frac{AB}{6},
\]
与 (J2)、(J6) 一致。支撑于正质量象限的 tempered distribution 的 Laplace transform 具有唯一性；这里存在性与 topology 已由第 2 节先行证明。

## 5. 本轮实际执行

脚本 null_mass_boundary_jets_checks.py 由 SymPy 1.14.0 直接求出 (J4) 的六个有限积分，并独立求 (J12) 的四个 jets，共 **10 个精确零 residuals**。另以 mpmath 40-digit quadrature 对三组 \((A,u)\) 直接检验 (J11)，最大绝对误差低于 \(2.3\times10^{-41}\)。

结果保存在验证目录：null_mass_boundary_jets_results.json 与 [captured stdout/stderr](checks/stress_completion/execution_record.json)。精确积分核验系数；(J9) 的解析估计承担 regulator identification 与极限交换的证明。

## Reproducible verification files

- [null_mass_boundary_jets_checks.py](checks/stress_completion/null_mass_boundary_jets_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
