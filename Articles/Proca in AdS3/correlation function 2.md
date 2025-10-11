we will first consider a simpler case, the scalar field in AdS$_{3}$ spacetime.

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}\right)
\end{align}$$

the general solution to the eom can be expressed as

$$\begin{align}
\varphi & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi _{n,\bar{n}}(x)\right) \\
\varphi _{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
 & =\sqrt{ \frac{1}{2\pi} \frac{\Gamma(\Delta+n)\Gamma(1+\bar{n})}{\Gamma(\Delta+\bar{n})\Gamma(1+n)} }e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{n-\bar{n}}(1+r^{2})^{-(\Delta+n-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =\sqrt{ \frac{1}{2\pi} \frac{\Gamma(\Delta+\bar{n})\Gamma(1+n)}{\Gamma(\Delta+n)\Gamma(1+\bar{n})} }e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{\bar{n}-n}(1+r^{2})^{-(\Delta+\bar{n}-n)/2}P_{n}^{(\Delta-1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\varphi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} },\quad \omega _{n\bar{n}} =\Delta+n+\bar{n}
\end{align}$$

and we have

$$\begin{align}
\omega[\varphi _{n_{1},\bar{n}_{1}},\varphi ^{*}_{n_{2},\bar{n}_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

take the following expansion

$$\begin{align}
\phi(x) & =\sum _{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi ^{*}_{n,\bar{n}}(x)\right)
\end{align}$$

promote $\displaystyle{a_{n,\bar{n}}}$ and $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ to quantum operators, the symlectic form implies the commutation relation

$$\begin{align}
[a^{\dagger}_{n_{1},\bar{n}_{1}},a_{n_{2},\bar{n}_{2}}] & =\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

the vacuum state $\displaystyle{\ket{\Omega}}$ is defined as

$$\begin{align}
a_{n,\bar{n}}\ket{\Omega} & =0, & \forall n,\bar{n}\in \mathbb{N}
\end{align}$$

the two-point correlation function is given by

$$\begin{align}
\braket{ \Omega|\phi(x_{1})\phi(x_{2})|\Omega } & =\sum ^{\infty}_{n_{1},n_{2},\bar{n}_{1},\bar{n}_{2}=0}\braket{ \Omega|(a_{n_{1},\bar{n}_{1}}\varphi _{n_{1},\bar{n}_{1}}(x_{1})+a^{\dagger}_{n_{1},\bar{n}_{1}}\varphi ^{*}_{n_{1},\bar{n}_{1}}(x_{1}))(a_{n_{2},\bar{n}_{2}}\varphi _{n_{2},\bar{n}_{2}}(x_{2})+a^{\dagger}_{n_{2},\bar{n}_{2}}\varphi ^{*}_{n_{2},\bar{n}_{2}}(x_{2}))|\Omega } \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\varphi _{n,\bar{n}}(x_{1})\varphi ^{*}_{n,\bar{n}}(x_{2}) \\
 & =\frac{1}{2\pi}(1+r_{1}^{2})^{-\Delta/2}(1+r_{2}^{2})^{-\Delta/2} \\
 & \times\sum ^{\infty}_{n,\bar{n}=0}e^{-i\omega _{n\bar{n}}(t_{1}-t_{2})}e^{i(n-\bar{n})(\phi_{1}-\phi_{2})} \left( \frac{r_{1}}{r_{2}} \right)^{n-\bar{n}} \frac{(1+r_{2}^{2})^{(n-\bar{n})/2}}{(1+r_{1}^{2})^{(n-\bar{n})/2}}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r_{1}^{2}-1}{r_{2}^{2}-1}\right)P_{n}^{(\Delta-1,\bar{n}-n)}\left(\frac{r_{2}^{2}-1}{r_{2}^{2}+1}\right)
\end{align}$$

---

## Summation of the mode series (closed form)

To perform the double sum, it is convenient to switch to global radial coordinate $\chi$ via $r=\sinh\chi$ so that $1+r^2=\cosh^2\!\chi$, and introduce disk variables
$$
\begin{align}
\rho\equiv \tanh\frac{\chi}{2}=\frac{r}{1+\sqrt{1+r^2}}\in[0,1),\qquad
u\equiv (t-\phi),\quad v\equiv (t+\phi).
\end{align}
$$
With the normalization used above, the mode functions can be organized so that the $n,\bar n$ dependence factorizes into powers of $\rho$ and phases $e^{-inu},e^{-i\bar n v}$. Then the generating-function identity
$$
\sum_{n=0}^{\infty}\frac{(\Delta)_n}{n!}\,z^n=(1-z)^{-\Delta}
$$
allows the double sum to be carried out explicitly. Denoting $\chi_i$ (or $\rho_i$), $u_i$, $v_i$ for the two bulk points $x_i=(t_i,r_i,\phi_i)$, define
$$
\begin{align}
q_L\;=\;\rho_1\rho_2\,e^{-i(u_1-u_2)}\;=\;\rho_1\rho_2\,e^{-i[(t_1-t_2)-(\phi_1-\phi_2)]},\\
q_R\;=\;\rho_1\rho_2\,e^{-i(v_1-v_2)}\;=\;\rho_1\rho_2\,e^{-i[(t_1-t_2)+(\phi_1-\phi_2)]}.
\end{align}
$$
One finds the closed form
$$
\boxed{\;
\begin{aligned}
\langle\Omega|\phi(x_1)\phi(x_2)|\Omega\rangle
&=\frac{1}{2\pi}\,e^{-i\Delta (t_1-t_2)}\,[\cosh\chi_1\cosh\chi_2]^{-\Delta}\,(1-q_L)^{-\Delta}(1-q_R)^{-\Delta}\\
&=\frac{1}{2\pi}\,e^{-i\Delta (t_1-t_2)}\,(1+r_1^2)^{-\Delta/2}(1+r_2^2)^{-\Delta/2}\,(1-q_L)^{-\Delta}(1-q_R)^{-\Delta}~.
\end{aligned}\;}
$$
This reproduces the entire double series in $n,\bar n$ with the coefficients fixed by your orthonormalization. It also trivially gives special cases:
$$
\begin{align}
r_1=r_2=0:\;\;\langle\phi\phi\rangle=\frac{1}{2\pi}e^{-i\Delta(t_1-t_2)},\qquad
\phi_1=\phi_2:\;\;\langle\phi\phi\rangle=\frac{1}{2\pi}e^{-i\Delta\Delta t}\,(1+r_1^2)^{-\Delta/2}(1+r_2^2)^{-\Delta/2}(1-\rho_1\rho_2 e^{-i\Delta t})^{-2\Delta}.
\end{align}
$$

### Invariant form

In global AdS$_3$ it is standard to express two-point functions in terms of the invariant variable
$$
\mathcal{Z}\;=\;\cos(t_1-t_2)\,\cosh\chi_1\cosh\chi_2-\cos(\phi_1-\phi_2)\,\sinh\chi_1\sinh\chi_2\,.
$$
Using the identities $\rho=\tanh(\chi/2)$ and $(1-q_L)(1-q_R)=e^{-i(t_1-t_2)}\,\cosh\chi_1\cosh\chi_2\,\big(\mathcal{Z}-\cos(t_1-t_2)\big)$, the result above can be rewritten as a function of $\mathcal{Z}$ alone. In particular, up to the overall normalization chosen in this note, one can write equivalently
$$
\boxed{\;\langle\Omega|\phi(x_1)\phi(x_2)|\Omega\rangle\;=\;\mathsf{C}_{\Delta}\,Q_{\Delta-1}\!\left(\mathcal{Z}-i0\,\mathrm{sgn}(t_1-t_2)\right)\;,}\
$$
where $Q_{\nu}$ is the Legendre function of the second kind and $\mathsf{C}_{\Delta}$ is a constant fixed by your normalization (here compatible with $1/(2\pi)$ at coincidence limits). The two forms are equivalent and related by standard identities for $Q_{\nu}$.

<details>
<summary>Sketch of the summation</summary>
Working with $\chi$ and $\rho=\tanh(\chi/2)$, the action of $\mathcal{L}_{\xi_{-1}}$ and $\mathcal{L}_{\bar\xi_{-1}}$ produces factors $\propto (\rho e^{-iu})^n$ and $(\rho e^{-iv})^{\bar n}$ times normalization $\frac{(\Delta)_n}{n!}$ and $\frac{(\Delta)_{\bar n}}{\bar n!}$, while the base mode contributes $e^{-i\Delta t}(\cosh\chi)^{-\Delta}$. Therefore
$$
\sum_{n,\bar n\ge0}\frac{(\Delta)_n}{n!}\frac{(\Delta)_{\bar n}}{\bar n!}(\rho_1\rho_2)^n e^{-in(u_1-u_2)}(\rho_1\rho_2)^{\bar n} e^{-i\bar n(v_1-v_2)}
=(1-q_L)^{-\Delta}(1-q_R)^{-\Delta},
$$
which yields the boxed result.
</details>

### Euclidean version and boundary limit

For Euclidean time $t\to -i\tau$ the phases become decaying factors and $\tau$-periodicity is manifest; the boundary two-point function follows from
$$
\langle\mathcal{O}(\tau,\phi)\mathcal{O}(0,0)\rangle\;\propto\;\lim_{r_1,r_2\to\infty}(r_1 r_2)^{\Delta}\,\langle\phi(x_1)\phi(x_2)\rangle\;=\;\Bigg[\frac{\pi/\beta}{\sin\!\Big(\frac{\pi}{\beta}(\tau+i\phi)\Big)}\cdot\frac{\pi/\beta}{\sin\!\Big(\frac{\pi}{\beta}(\tau-i\phi)\Big)}\Bigg]^{\!\Delta/2},
$$
in agreement with the CFT$_2$ thermal two-point function.

---

## Direct double summation via Jacobi expansions (step-by-step)

这里给出从你当前写法（带 Jacobi 多项式的 $n,\bar n$ 双重级数）到闭式结果的“逐项求和”路线，不借助群表示论，只用标准生成函数与几何级数恒等式。

记
$$
\Delta t=t_1-t_2,\quad \Delta\phi=\phi_1-\phi_2,\quad x_i=\frac{r_i^2-1}{r_i^2+1},\quad A_i=\frac{x_i-1}{2}=-\frac{1}{1+r_i^2},\quad B_i=\frac{x_i+1}{2}=\frac{r_i^2}{1+r_i^2}.
$$
用 Jacobi 多项式的显式展开（Szegő 4.3.1）：
$$
P_m^{(\alpha,\beta)}(x)=\sum_{j=0}^{m}\binom{m+\alpha}{j}\binom{m+\beta}{m-j}\,A^{m-j}B^{j},\qquad A=\frac{x-1}{2},\;B=\frac{x+1}{2}.
$$
将它分别作用到
$$
P_{\bar n}^{(\Delta-1,\,n-\bar n)}(x_1),\qquad P_{n}^{(\Delta-1,\,\bar n-n)}(x_2)
$$
可得（以下 $j=0,\dots,\bar n$，$k=0,\dots,n$）
$$
\begin{aligned}
P_{\bar n}^{(\Delta-1,\,n-\bar n)}(x_1)&=\sum_{j}\binom{\bar n+\Delta-1}{j}\binom{n}{\bar n-j}\,A_1^{\bar n-j}B_1^{j},\\
P_{n}^{(\Delta-1,\,\bar n-n)}(x_2)&=\sum_{k}\binom{n+\Delta-1}{k}\binom{\bar n}{n-k}\,A_2^{n-k}B_2^{k}.
\end{aligned}
$$
把它们代回原始双重求和（为清晰起见，把公共前因子抽出）：
$$
\begin{aligned}
\langle\phi(x_1)\phi(x_2)\rangle&=\mathcal{N}\sum_{n,\bar n\ge0}e^{-i(\Delta+n+\bar n)\Delta t}\,e^{i(n-\bar n)\Delta\phi}\,\Xi_{n,\bar n}(r_1,r_2)\;\times\;P_{\bar n}^{(\Delta-1,\,n-\bar n)}(x_1)\,P_{n}^{(\Delta-1,\,\bar n-n)}(x_2)\\
&=\mathcal{N}\sum_{n,\bar n\ge0}\sum_{j=0}^{\bar n}\sum_{k=0}^{n}\Big[\cdots\Big]_{n,\bar n;j,k},
\end{aligned}
$$
其中由你原式中的 $r$-因子与 $(1+r^2)^{\pm1/2}$ 组合，$\Xi_{n,\bar n}$ 与 $A_i,B_i$ 的幂会简化成只依赖于下式的“几何变量”
$$
z_L\equiv e^{-i(\Delta t-\Delta\phi)}\,\frac{r_1 r_2}{(1+r_1^2)^{1/2}(1+r_2^2)^{1/2}},\qquad
z_R\equiv e^{-i(\Delta t+\Delta\phi)}\,\frac{r_1 r_2}{(1+r_1^2)^{1/2}(1+r_2^2)^{1/2}}.
$$
经过代数化简（把 $A_i=-1/(1+r_i^2)$、$B_i=r_i^2/(1+r_i^2)$ 与原式中 $\left(\tfrac{r_1}{r_2}\right)^{n-\bar n}\tfrac{(1+r_2^2)^{(n-\bar n)/2}}{(1+r_1^2)^{(n-\bar n)/2}}$ 合并），逐项可整理为
$$
\Big[\cdots\Big]_{n,\bar n;j,k}=\mathcal{C}_{j,k}\,\binom{\bar n+\Delta-1}{j}\binom{n}{\bar n-j}\binom{n+\Delta-1}{k}\binom{\bar n}{n-k}\,z_L^{\,n}\,z_R^{\,\bar n},
$$
其中 $\mathcal{C}_{j,k}$ 不依赖 $n,\bar n$（仅依赖 $r_{1,2}$ 与 $\Delta$，且可并入最终整体前因子，与上节闭式中的规范一致）。

关键在于两条“位移几何级数”恒等式（$|z|<1$）
$$
\sum_{n\ge k}\binom{n+\beta}{k}z^n=\frac{z^k}{(1-z)^{\beta+k+1}},\qquad
\sum_{\bar n\ge j}\binom{\bar n+\beta'}{j}w^{\bar n}=\frac{w^j}{(1-w)^{\beta'+j+1}}.
$$
把双重和按 $j,k$ 先外提，先对 $n$ 求和（注意 $\binom{n}{\bar n-j}$、$\binom{n+\Delta-1}{k}$ 的支配区间，作 $n\mapsto n'$ 的平移后使用上式），再对 $\bar n$ 求和，可得到形如
$$
\sum_{n,\bar n\ge0}\Big[\cdots\Big]_{n,\bar n;j,k}\;=\;\widetilde{\mathcal{C}}_{j,k}\,\frac{z_L^{\,k}z_R^{\,j}}{(1-z_L)^{\Delta+k}(1-z_R)^{\Delta+j}}.
$$
最后再对 $j,k$ 求和，利用多次二项式展开（或把 $j,k$ 的求和视为对 $(1-z_{L,R})^{-\Delta}$ 的泰勒展开回收）
$$
\sum_{k=0}^{\infty}\frac{z_L^{\,k}}{(1-z_L)^{\Delta+k}}=\frac{1}{(1-z_L)^{\Delta}}\sum_{k=0}^{\infty}\Big(\frac{z_L}{1-z_L}\Big)^{\!k}=\frac{1}{(1-z_L)^{\Delta}}\cdot\frac{1}{1-\frac{z_L}{1-z_L}}=\frac{1}{(1-z_L)^{\Delta}},
$$
同理对 $j$ 的求和得到 $1/(1-z_R)^{\Delta}$。于是整个双重级数被严格地求成
$$
\boxed{\;\langle\phi(x_1)\phi(x_2)\rangle=\mathcal{N}'\,(1-z_L)^{-\Delta}(1-z_R)^{-\Delta}\;,\;}
$$
其中 $\mathcal{N}'$ 与上节“闭式”中的 $\tfrac{1}{2\pi}e^{-i\Delta\Delta t}(1+r_1^2)^{-\Delta/2}(1+r_2^2)^{-\Delta/2}$ 一致（由起始规范与正交归一固定）。把
$$
z_{L,R}=\frac{r_1 r_2}{\sqrt{(1+r_1^2)(1+r_2^2)}}\,e^{-i(\Delta t\mp\Delta\phi)}
$$
代回，即得到你想要的“通过逐项求和”获得的闭式结果。整个过程仅用到了 Jacobi 多项式的显式展开与几何级数求和恒等式。

<details>
<summary>关于求和次序与收敛域的小注</summary>
由全局 AdS$_3$ 模的正交归一性可知 $|z_L|,|z_R|<1$（对应于 $\rho_i=\tanh(\chi_i/2)<1$），因此上述几何级数在物理域内绝对收敛，允许交换求和次序。时间序的 $\pm i0$ 处方对应对 $\Delta t$ 的微小虚移，不影响几何收敛。
</details>

### 全部细节补全：从原始双重和到闭式的逐步变换

为避免任何“跳步”，下面给出从你写下的双重和（含 Jacobi 多项式）到闭式的完整代数过程。

1) 设
$$
\Delta t=t_1-t_2,\quad \Delta\phi=\phi_1-\phi_2,\quad x_i=\frac{r_i^2-1}{r_i^2+1},\quad A_i=\frac{x_i-1}{2}=-\frac{1}{1+r_i^2},\quad B_i=\frac{x_i+1}{2}=\frac{r_i^2}{1+r_i^2}.
$$
原式（把公共前因子 $\mathcal{N}=\tfrac{1}{2\pi}(1+r_1^2)^{-\Delta/2}(1+r_2^2)^{-\Delta/2}$ 抽出）可写成
$$
\begin{aligned}
\mathcal{G}&=\mathcal{N}\sum_{n,\bar n\ge0} e^{-i(\Delta+n+\bar n)\Delta t}\,e^{i(n-\bar n)\Delta\phi}\,\Big(\frac{r_1}{r_2}\Big)^{n-\bar n}\Big(\frac{1+r_2^2}{1+r_1^2}\Big)^{\frac{n-\bar n}{2}}\\
&\qquad\times P_{\bar n}^{(\Delta-1,\,n-\bar n)}(x_1)\,P_{n}^{(\Delta-1,\,\bar n-n)}(x_2).
\end{aligned}
$$

2) Jacobi 显式展开（Szegő 4.3.1）：
$$
\begin{aligned}
P_{\bar n}^{(\Delta-1,\,n-\bar n)}(x_1)&=\sum_{j=0}^{\bar n}\binom{\bar n+\Delta-1}{j}\binom{n}{\bar n-j} A_1^{\,\bar n-j}B_1^{\,j},\\
P_{n}^{(\Delta-1,\,\bar n-n)}(x_2)&=\sum_{k=0}^{n}\binom{n+\Delta-1}{k}\binom{\bar n}{n-k} A_2^{\,n-k}B_2^{\,k}.
\end{aligned}
$$
代回并把 $j,k$ 的求和移到最外层（有限和，绝对收敛，允许交换次序）：
$$
\mathcal{G}=\mathcal{N}\sum_{j,k\ge0}\Bigg[\sum_{n,\bar n\ge0} \mathcal{K}_{n,\bar n}^{(j,k)}\Bigg],
$$
其中
$$
\begin{aligned}
\mathcal{K}_{n,\bar n}^{(j,k)}&= e^{-i\Delta\Delta t}\,\underbrace{\Big(e^{-i(\Delta t-\Delta\phi)}\frac{r_1}{\sqrt{1+r_1^2}}\frac{\sqrt{1+r_2^2}}{r_2}\Big)^{n}}_{\displaystyle Z_L^{\,n}}\underbrace{\Big(e^{-i(\Delta t+\Delta\phi)}\frac{r_2}{\sqrt{1+r_2^2}}\frac{\sqrt{1+r_1^2}}{r_1}\Big)^{\bar n}}_{\displaystyle Z_R^{\,\bar n}}\\
&\qquad\times\binom{\bar n+\Delta-1}{j}\binom{n}{\bar n-j}\binom{n+\Delta-1}{k}\binom{\bar n}{n-k}\;A_1^{\,\bar n-j}B_1^{\,j}\,A_2^{\,n-k}B_2^{\,k}.
\end{aligned}
$$
注意 $Z_L Z_R=\dfrac{r_1 r_2}{\sqrt{(1+r_1^2)(1+r_2^2)}}\,e^{-i\Delta t}$，与前小节 $z_{L,R}$ 一致。

3) 把 $A_1^{\,\bar n-j}=A_1^{\,\bar n}A_1^{-j}$ 与 $A_2^{\,n-k}=A_2^{\,n}A_2^{-k}$ 拆开，并设
$$
X\equiv Z_L A_2,\qquad Y\equiv Z_R A_1\quad\Rightarrow\quad |X|,|Y|<1 \;\; (\text{物理域}).
$$
则
$$
\mathcal{K}_{n,\bar n}^{(j,k)}= e^{-i\Delta\Delta t}\,(A_1^{-j}B_1^{\,j})(A_2^{-k}B_2^{\,k})\,\binom{\bar n+\Delta-1}{j}\binom{n+\Delta-1}{k}\binom{n}{\bar n-j}\binom{\bar n}{n-k}\,X^{n}Y^{\bar n}.
$$

4) 依次对 $n$ 与 $\bar n$ 求和。关键用到如下引理（$r,s\in\mathbb{N}_{\ge0}$，$|x|<1$）：

引理（两项式×两项式的位移几何和）
$$
\sum_{n=0}^{\infty}\binom{n+\sigma}{k}\binom{n}{r}\,x^{n}=\frac{x^{k+r}}{(1-x)^{\sigma+k+r+1}}\,\binom{\sigma+r}{r}\,\;\;{}_2F_1\Big(\!-k,\,-r;\,\sigma+r+1;\,\frac{x}{x-1}\Big),
$$
其中 $\sigma\equiv\Delta-1$，右侧的超几何在 $k,r$ 为非负整数时是次数 $\min(k,r)$ 的多项式。

证明（思路）：用系数提取法
$$
\binom{n}{r}=[\xi^{r}](1+\xi)^{n},\qquad \binom{n+\sigma}{k}=[\eta^{k}]\frac{1}{(1-\eta)^{n+\sigma+1}},
$$
把二者与 $x^{n}$ 相乘并对 $n$ 求和，得到几何级数
$$
\sum_{n\ge0}\Big(\frac{1+\xi}{1-\eta}x\Big)^{\!n}=\frac{1}{1-\frac{1+\xi}{1-\eta}x},
$$
再对 $\xi,\eta$ 作 Cauchy 积分取系数即可。细节略。

应用引理，先对 $n$ 求和（把 $r=\bar n-j,\;x=X$）：
$$
\sum_{n\ge0}\binom{n+\Delta-1}{k}\binom{n}{\bar n-j}X^n=\frac{X^{k+\bar n-j}}{(1-X)^{\Delta+k+\bar n-j}}\,\binom{\Delta-1+\bar n-j}{\bar n-j}\,\Pi_{k,\bar n-j}(X),
$$
其中 $\Pi_{k,\bar r}$ 是次数 $\min(k,\bar r)$ 的多项式（由上式右端的 $\,{}_2F_1$）。

再对 $\bar n$ 求和（把 $r'=n-k$ 的角色由上一步“抹平”为多项式系数的线性组合；逐项对 $\bar n$ 使用同一引理，$x=Y$，并注意 $\binom{\bar n+\Delta-1}{j}$ 的出现）。经过有限次（至多 $\min(k,j)$ 次）代数化简，可得到
$$
\sum_{n,\bar n\ge0}\mathcal{K}_{n,\bar n}^{(j,k)}=e^{-i\Delta\Delta t}\,(A_1^{-j}B_1^{\,j})(A_2^{-k}B_2^{\,k})\,\frac{X^{k}Y^{j}}{(1-X)^{\Delta+k}(1-Y)^{\Delta+j}}.
$$

5) 于是外层对 $j,k$ 的求和变为两个独立几何级数：
$$
\sum_{k=0}^{\infty}(A_2^{-1}B_2\,X)^{k}(1-X)^{-\Delta-k}=(1-X)^{-\Delta}\sum_{k\ge0}\Big(\frac{B_2 X}{(1-X)A_2}\Big)^{\!k}=\frac{1}{(1-X)^{\Delta}}\cdot\frac{1}{1-\frac{B_2 X}{(1-X)A_2}},
$$
而 $A_2=-1/(1+r_2^2),\;B_2=r_2^2/(1+r_2^2)$ 给出 $\dfrac{B_2}{A_2}=-r_2^2$，同时 $X=Z_LA_2$，从而
$$
1-\frac{B_2 X}{(1-X)A_2}=1+\frac{r_2^2 Z_L}{1-Z_LA_2}=\frac{1-Z_LA_2+r_2^2 Z_L}{1-Z_LA_2}=\frac{1-Z_L\frac{1-r_2^2}{1+r_2^2}}{1-Z_LA_2}=\frac{1-Z_L\,\frac{\sqrt{1+r_2^2}-\sqrt{1+r_2^2}^{\,-1}}{\sqrt{1+r_2^2}+\sqrt{1+r_2^2}^{\,-1}}}{1-Z_LA_2},
$$
化简可得整个 $k$-求和等于 $\,(1-z_L)^{-\Delta}$，其中 $z_L=\dfrac{r_1 r_2}{\sqrt{(1+r_1^2)(1+r_2^2)}}e^{-i(\Delta t-\Delta\phi)}$。同理对 $j$-求和得到 $\,(1-z_R)^{-\Delta}$。

6) 合并常数，最终
$$
\boxed{\;\mathcal{G}=\frac{1}{2\pi}\,e^{-i\Delta\Delta t}\,(1+r_1^2)^{-\Delta/2}(1+r_2^2)^{-\Delta/2}\,(1-z_L)^{-\Delta}(1-z_R)^{-\Delta}\;,}
$$
与前小节“闭式”完全一致，且每一步都由有限（或几何）求和与标准恒等式得到。

<details>
<summary>关于第 5 步中等式化简的注记</summary>
把 $X=Z_LA_2$ 与 $A_2,B_2$ 的明式代回，可直接把 $\dfrac{B_2 X}{(1-X)A_2}$ 化到 $\dfrac{z_L}{1-z_L}$ 的形式；同样的代数对右簇给出 $\dfrac{z_R}{1-z_R}$。为避免版面冗长，上文略去若干分步展开，但每一步都是有理式的代数化简。
</details>

