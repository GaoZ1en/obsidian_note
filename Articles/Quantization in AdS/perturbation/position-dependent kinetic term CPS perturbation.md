# Position-Dependent Kinetic Term: CPS Perturbation Theory

## 0. Direct Verdict

考虑

$$\begin{align}
L[x]=\frac{1}{2}G(x)\dot{x}^{2}-\frac{1}{2}m\omega ^2x^2, \qquad G(x)=m+\frac{\lambda}{2}x^2.
\end{align}$$

本笔记取 $\hbar=1$，并使用有限时间 Lorentzian Cauchy solution map。直接结论是：

1. 这个点粒子只有一个正频自由 mode $e^{-i\omega t}$ 及其共轭；一阶非线性修正分成 $\pm\omega$ 和 $\pm3\omega$ 四个 harmonic channels。
2. 不能只分别修正单个基模以后再线性叠加。正确对象是定义在完整自由解空间上的非线性 solution map

$$\begin{align}
p_\lambda:\mathcal S_0\longrightarrow\mathcal S_\lambda, \qquad u(a,a^\dagger)\longmapsto x[u]=u+\lambda v[u]+O(\lambda^2).
\end{align}$$

3. 若保持初始正则数据 $(x(0),p(0))$ 不变，其中 $p=G(x)\dot x$，则 homogeneous ambiguity 被固定，而且

$$\begin{align}
p_\lambda^*\Omega_\lambda=i\,\delta a^\dagger\wedge\delta a+O(\lambda^2).
\end{align}$$

4. $\pm\omega$ channel 共振并产生 $t e^{\mp i\omega t}$。它给出 classical frequency shift；Weyl 量子化以后给出与路径积分计算相同的一阶能隙和两点函数。
5. CPS tree solution 本身不是 loop expansion。这里的一阶量子修正来自把三次 classical solution map 按已经选定的 Weyl ordering 提升为算符并作 vacuum contraction。

这篇笔记是 [Position-dependent kinetic term: lattice path integral and continuum limit](<position-dependent kinetic term path integral.md>) 的 CPS companion。

## 1. 从作用量到辛形式

作用量变分为

$$\begin{align}
\delta S &=\int_{t_i}^{t_f}\mathrm{d}t\,E_x\delta x+\theta\big|_{t_f}-\theta\big|_{t_i}, \\
E_x &=-m(\ddot x+\omega^2x)-\frac{\lambda}{2}\left(x^2\ddot x+x\dot x^2\right), \\
\theta &=p\,\delta x, \qquad p=G(x)\dot x.
\end{align}$$

因此 EOM 是

$$\begin{align}
m(\ddot x+\omega^2x)+\frac{\lambda}{2}\left(x^2\ddot x+x\dot x^2\right)=0.
\end{align}$$

遵循本目录的 convention，辛形式是

$$\begin{align}
\Omega_t=\delta\theta=\delta p\wedge\delta x.
\end{align}$$

对两个 linearized solutions $\eta_1$ 和 $\eta_2$，

$$\begin{align}
\Omega_t(\eta_1,\eta_2)=G(x)\left(\dot\eta_1\eta_2-\dot\eta_2\eta_1\right).
\end{align}$$

把 linearized EOM 代入可得

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}t}\Omega_t(\eta_1,\eta_2)=0.
\end{align}$$

这里没有空间边界或 corner；Cauchy surface 就是一个固定时刻。

## 2. 自由解空间和 Mode Normalization

自由 EOM 是

$$\begin{align}
\ddot u+\omega^2u=0.
\end{align}$$

选正频 mode

$$\begin{align}
\Phi(t)=\frac{e^{-i\omega t}}{\sqrt{2m\omega}},
\end{align}$$

并写完整实解为

$$\begin{align}
u(t)=a\Phi(t)+a^\dagger\Phi^*(t)=\frac{a e^{-i\omega t}+a^\dagger e^{i\omega t}}{\sqrt{2m\omega}}.
\end{align}$$

在经典解空间上，$a^\dagger$ 暂时表示 $a$ 的复共轭坐标；量子化以后才成为 creation operator。自由辛形式是

$$\begin{align}
\Omega_0=m\,\delta\dot u\wedge\delta u=i\,\delta a^\dagger\wedge\delta a.
\end{align}$$

因此 $\Phi$ 满足本目录所用的 CPS normalization，量子化时对应

$$\begin{align}
[a,a^\dagger]=1.
\end{align}$$

## 3. 一阶 Classical Solution Map

展开

$$\begin{align}
x(t)=u(t)+\lambda v(t)+O(\lambda^2).
\end{align}$$

$O(\lambda)$ EOM 是

$$\begin{align}
\ddot v+\omega^2v=\frac{1}{2m}\left(\omega^2u^3-u\dot u^2\right).
\end{align}$$

### 3.1 Green Kernel 和保持不变的初始数据

有限时间 retarded solution kernel 是

$$\begin{align}
G_R(t,s)=\theta(t-s)\frac{\sin\omega(t-s)}{\omega}.
\end{align}$$

对于 derivative interaction，不能同时把“高阶修正在初始面为零”理解为 $v(0)=\dot v(0)=0$，同时又声称正则数据没有改变。这里选择保持完整 canonical data 不变：

$$\begin{align}
x(0)&=u(0), \\
p(0)&=m\dot u(0).
\end{align}$$

由于

$$\begin{align}
p=m\dot u+\lambda\left(m\dot v+\frac{1}{2}u^2\dot u\right)+O(\lambda^2),
\end{align}$$

一阶初始条件是

$$\begin{align}
v(0)=0, \qquad m\dot v(0)+\frac{1}{2}u(0)^2\dot u(0)=0.
\end{align}$$

所以 solution map 可先写成

$$\begin{aligned}
v(t)={}&-\frac{u(0)^2\dot u(0)}{2m\omega}\sin\omega t \\
&+\frac{1}{2m\omega}\int_0^t\mathrm{d}s\,\sin\omega(t-s)\left[\omega^2u(s)^3-u(s)\dot u(s)^2\right].
\end{aligned}$$

第一行正是 derivative interaction 为保持初始 canonical momentum 所要求的 homogeneous contribution。

### 3.2 所有一阶 Harmonic Channels

自由解代入源项后得到

$$\begin{aligned}
\frac{1}{2m}\left(\omega^2u^3-u\dot u^2\right)
=\frac{\omega^2}{m(2m\omega)^{3/2}}\big[&a^3e^{-3i\omega t}+a^2a^\dagger e^{-i\omega t} \\
&+a(a^\dagger)^2e^{i\omega t}+(a^\dagger)^3e^{3i\omega t}\big].
\end{aligned}$$

四个 channels 是：

| free-data monomial | source frequency | particular response in $v$ |
| --- | ---: | --- |
| $a^3$ | $-3\omega$ | $-\frac18a^3e^{-3i\omega t}$ |
| $a^2a^\dagger$ | $-\omega$ | $+\frac{i\omega t}{2}a^2a^\dagger e^{-i\omega t}$ |
| $a(a^\dagger)^2$ | $+\omega$ | $-\frac{i\omega t}{2}a(a^\dagger)^2e^{i\omega t}$ |
| $(a^\dagger)^3$ | $+3\omega$ | $-\frac18(a^\dagger)^3e^{3i\omega t}$ |

表中省略了 $v$ 的公共因子 $[m(2m\omega)^{3/2}]^{-1}$。$\pm3\omega$ 是非共振 harmonic；$\pm\omega$ 与自由 mode 共振，所以 inverse of $\partial_t^2+\omega^2$ 产生 secular terms。

相对于只取 particular solution，保持初始 canonical data 还要求

$$\begin{align}
h_1(t)=\frac{(a^\dagger)^3e^{-i\omega t}+a^3e^{i\omega t}}{8m(2m\omega)^{3/2}}.
\end{align}$$

最终一阶解是

$$\begin{aligned}
v(t)=\frac{1}{m(2m\omega)^{3/2}}\Bigg\{&\frac18\left[(a^\dagger)^3e^{-i\omega t}+a^3e^{i\omega t}-a^3e^{-3i\omega t}-(a^\dagger)^3e^{3i\omega t}\right] \\
&+\frac{i\omega t}{2}\left[a^2a^\dagger e^{-i\omega t}-a(a^\dagger)^2e^{i\omega t}\right]\Bigg\}.
\end{aligned}$$

它满足

$$\begin{align}
(\partial_t^2+\omega^2)v-\frac{\omega^2u^3-u\dot u^2}{2m}=0, \qquad v(0)=0, \qquad m\dot v(0)+\frac12u(0)^2\dot u(0)=0.
\end{align}$$

### 3.3 Secular Term 的含义

负频率 fundamental 部分为

$$\begin{align}
\frac{a e^{-i\omega t}}{\sqrt{2m\omega}}\left[1+\frac{i\lambda a^\dagger a}{4m^2}t\right].
\end{align}$$

因此有限时间展开读出

$$\begin{align}
\omega_{\mathrm{eff}}=\omega-\frac{\lambda a^\dagger a}{4m^2}+O(\lambda^2).
\end{align}$$

这只是有限时间 secular expansion。若要在 $t\sim\lambda^{-1}$ 仍然有效，应改用 Poincare--Lindstedt、multiple scales 或 canonical normal form。

## 4. 把完整辛形式拉回微扰解空间

将 $x=u+\lambda v$ 代入

$$\begin{align}
\Omega_\lambda=\delta\left[\left(m+\frac{\lambda}{2}x^2\right)\dot x\right]\wedge\delta x,
\end{align}$$

得到

$$\begin{aligned}
p_\lambda^*\Omega_\lambda={}&m\,\delta\dot u\wedge\delta u \\
&+\lambda\left[m\left(\delta\dot v\wedge\delta u+\delta\dot u\wedge\delta v\right)+\frac12u^2\delta\dot u\wedge\delta u\right]+O(\lambda^2).
\end{aligned}$$

在初始面上，所选 solution map 满足

$$\begin{align}
v(0)=0, \qquad p^{(1)}(0)=m\dot v(0)+\frac12u(0)^2\dot u(0)=0.
\end{align}$$

因此

$$\begin{align}
p_\lambda^*\Omega_\lambda\big|_{t=0}=m\,\delta\dot u(0)\wedge\delta u(0)=i\,\delta a^\dagger\wedge\delta a.
\end{align}$$

full symplectic form 在线性化 EOM 上守恒，所以任意有限时刻都有

$$\begin{align}
\boxed{p_\lambda^*\Omega_\lambda=i\,\delta a^\dagger\wedge\delta a+O(\lambda^2)}.
\end{align}$$

直接把上一节的显式 $v(t)$ 代入，$O(\lambda)$ coefficient 也确实完全相消。

在初始面上，拉回的 symplectic potential 可以写为

$$\begin{align}
p_\lambda^*\theta_\lambda=\frac{i}{2}\left(a^\dagger\delta a-a\delta a^\dagger\right)+\delta\left[\frac{i}{4}\left((a^\dagger)^2-a^2\right)\right]+O(\lambda^2).
\end{align}$$

第二项是 field-space exact ambiguity；再取一次 $\delta$ 就得到上面的辛形式。

### 4.1 为什么必须说明固定哪一组初始数据

若改为固定 $(x(0),\dot x(0))$，即取 $v(0)=\dot v(0)=0$，那么初始 canonical momentum 已经发生改变。此时同一组自由系数上的拉回辛形式是

$$\begin{align}
p_{\lambda,\mathrm{velocity}}^*\Omega_\lambda=i\left[1+\frac{\lambda(a+a^\dagger)^2}{4m^2\omega}\right]\delta a^\dagger\wedge\delta a+O(\lambda^2).
\end{align}$$

此时不能直接写 $[a,a^\dagger]=1$；应先做 Darboux transformation，或改回保持 $(x,p)$ 的 canonical Cauchy map。这个差异不是 EOM 的差异，而是 solution-space coordinates 的差异。

## 5. Time-Translation Hamiltonian

时间平移的 CPS Hamiltonian 是

$$\begin{align}
H=p\dot x-L=\frac12G(x)\dot x^2+\frac12m\omega^2x^2=\frac{p^2}{2G(x)}+\frac12m\omega^2x^2.
\end{align}$$

在保持不变的初始 canonical data 上，

$$\begin{align}
H_{\mathrm{eff}}=\frac{p_0^2}{2m}+\frac12m\omega^2q_0^2-\lambda\frac{q_0^2p_0^2}{4m^2}+O(\lambda^2).
\end{align}$$

用 $a,a^\dagger$ 表示，

$$\begin{align}
H_{\mathrm{eff}}=\omega a^\dagger a+\frac{\lambda}{16m^2}\left[a^4-2a^2(a^\dagger)^2+(a^\dagger)^4\right]+O(\lambda^2).
\end{align}$$

这个 $H_{\mathrm{eff}}$ 沿显式微扰解不依赖时间。对自由相位作一阶 canonical averaging 后，非共振的 $a^4$ 和 $(a^\dagger)^4$ 被移除，resonant normal form 是

$$\begin{align}
H_{\mathrm{res}}=\omega I-\frac{\lambda}{8m^2}I^2+O(\lambda^2), \qquad I=a^\dagger a.
\end{align}$$

由

$$\begin{align}
i\dot a=\frac{\partial H_{\mathrm{res}}}{\partial a^\dagger}
\end{align}$$

再次得到 $\omega_{\mathrm{eff}}=\omega-\lambda I/(4m^2)$。

## 6. 量子化和 Ordering

上一份路径积分笔记选择了 Laplace--Beltrami Hamiltonian，并在平坦测度表示中使用 Weyl symbol。time-slicing quantum potential $V_{\mathrm{TS}}$ 从 $O(\lambda^2)$ 才开始，因此本笔记在 $O(\lambda)$ 只需对上面的 classical $H_{\mathrm{eff}}$ 和 solution map 作 Weyl quantization。

由拉回辛形式，

$$\begin{align}
[a,a^\dagger]=1, \qquad N=a^\dagger a.
\end{align}$$

需要的 Weyl identities 包括

$$\begin{align}
\mathcal W\left[a^2a^\dagger\right]&=aN, \\
\mathcal W\left[a(a^\dagger)^2\right]&=Na^\dagger, \\
\mathcal W\left[a^2(a^\dagger)^2\right]&=N^2+N+\frac12.
\end{align}$$

所以一阶 Hamiltonian operator 可以写成

$$\begin{align}
H^{(1)}=\frac{1}{16m^2}\left[a^4+(a^\dagger)^4-2\left(N^2+N+\frac12\right)\right].
\end{align}$$

其对角矩阵元给出

$$\begin{align}
E_n=\omega\left(n+\frac12\right)-\frac{\lambda}{16m^2}\left(2n^2+2n+1\right)+O(\lambda^2).
\end{align}$$

特别地，

$$\begin{align}
E_1-E_0=\omega-\frac{\lambda}{4m^2}+O(\lambda^2).
\end{align}$$

## 7. 由微扰解计算关联函数

把 classical solution map 按同一 Weyl prescription 提升为 Heisenberg operator：

$$\begin{align}
x(t)=u(t)+\lambda\,\mathcal W[v(t)]+O(\lambda^2).
\end{align}$$

取 $a|0\rangle=0$。由于所选 Cauchy map 满足 $v(0)=0$，

$$\begin{align}
x(0)=\frac{a+a^\dagger}{\sqrt{2m\omega}}+O(\lambda^2).
\end{align}$$

在

$$\begin{align}
\langle0|\mathcal W[v(t)]x(0)|0\rangle
\end{align}$$

中，只有 resonant monomial $\mathcal W[a^2a^\dagger]=aN$ 有贡献。显式矩阵元是

$$\begin{align}
\langle0|\mathcal W[v(t)]x(0)|0\rangle=\frac{it}{8m^3\omega}e^{-i\omega t}.
\end{align}$$

因此 $t>0$ 的 Wightman function 为

$$\begin{align}
W^+(t,0)=\langle0|x(t)x(0)|0\rangle=\frac{e^{-i\omega t}}{2m\omega}\left[1+\frac{i\lambda t}{4m^2}\right]+O(\lambda^2).
\end{align}$$

相应的 Lorentzian time-ordered correlator 是

$$\begin{align}
G_F(t)=\frac{e^{-i\omega|t|}}{2m\omega}\left[1+\frac{i\lambda|t|}{4m^2}\right]+O(\lambda^2).
\end{align}$$

Wick rotate 后，

$$\begin{align}
\boxed{G_E(\tau)=\frac{e^{-\omega|\tau|}}{2m\omega}\left[1+\frac{\lambda|\tau|}{4m^2}\right]+O(\lambda^2)}.
\end{align}$$

恢复 $\hbar$ 后，

$$\begin{align}
G_E(\tau)=\frac{\hbar}{2m\omega}e^{-\omega|\tau|}\left[1+\frac{\lambda\hbar}{4m^2}|\tau|\right]+O(\lambda^2),
\end{align}$$

与路径积分 companion 的结果完全一致。

严格地说，interacting vacuum 也应按 $H^{(1)}$ 修正。本模型中 $H^{(1)}$ 只把 $|0\rangle$ 混到 $|4\rangle$，而两个 leading $x$ insertions 最多改变 occupation number 两次，所以 vacuum-state correction 对这个两点函数在 $O(\lambda)$ 为零。这个简化不能推广到任意 correlator。

## 8. “为每个 Mode 求修正”的准确含义

这个 benchmark 显示，非线性理论中应当区分：

1. **自由 mode basis**：这里只包含 $\Phi$ 和 $\Phi^*$。
2. **source harmonic channels**：这里是一阶的 $\pm\omega$ 和 $\pm3\omega$。
3. **新的独立 phase-space modes**：$3\omega$ harmonic 的 coefficient 被 $a^3$ 固定，不是新的独立 oscillator。
4. **tangent modes**：相互作用解空间上的真正 mode tangents 是 $\partial x/\partial a$ 和 $\partial x/\partial a^\dagger$；它们依赖背景 amplitude。
5. **dressed long-time modes**：消除 secular terms 后的 variables，需要另做 canonical normal form 并重新确认辛形式。

因此一般多 mode 场论中的操作不是“逐个修正 $u_I$ 再求和”，而是把

$$\begin{align}
u=\sum_I(a_Iu_I+a_I^\dagger u_I^*)
\end{align}$$

整体代入非线性源。每个 $a_Ia_Ja_K$、$a_Ia_Ja_K^\dagger$ channel 分别求解；若 source frequency 落在 free spectrum 上，就保留 secular term或进入 resonant normal form。最后必须计算

$$\begin{align}
p_\lambda^*\Omega_\lambda,
\end{align}$$

而不是假设所有 corrected modes 自动保持自由正交归一关系。

## 9. Verification Status

- **Verified:** Mathematica 对完整一阶 $v(t)$ 的 EOM residual、retarded-integral representation residual、$v(0)$ 和 $p^{(1)}(0)$ residual 都得到 $0$。
- **Verified:** Mathematica 直接把显式微扰解代入 $\Omega_\lambda$，得到 $O(\lambda)$ correction 为 $0$；linearized EOM 下的 $\mathrm{d}\Omega_t/\mathrm{d}t$ residual 也是 $0$。
- **Verified:** Mathematica 得到 pulled-back Hamiltonian 与所写 $H_{\mathrm{eff}}$ 的 residual 为 $0$；固定 $(x,\dot x)$ 时的非 canonical 辛形式 coefficient 也逐项吻合。
- **Verified:** 有限 oscillator matrices 在 $0\leq n\leq8$ 验证 Weyl identities、$E_n^{(1)}$ 和 gap shifts，并给出两点函数 correction residual $0$。
- **Assumptions:** $m>0$、$\omega>0$、$\hbar=1$、有限时间 perturbative Cauchy evolution、保持初始 $(x,p)$、以及上一份笔记选定的 Laplace--Beltrami/Weyl ordering。
- **Not verified:** 未计算 $O(\lambda^2)$ solution map、$V_{\mathrm{TS}}$ 对 CPS/quantum dynamics 的贡献、其他高点函数或长时间 resummation；也未把本模型的结果外推成一般多 mode 场论的定理。
