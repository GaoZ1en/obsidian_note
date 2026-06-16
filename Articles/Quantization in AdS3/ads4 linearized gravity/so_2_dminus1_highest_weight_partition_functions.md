# AdS$_d$ 的 $\mathfrak{so}(2,d-1)$ highest-weight modules 与配分函数

本文把 AdS$_4$ 中的 $\mathfrak{so}(2,3)$、$SO(3)$ 角动量分解与 one-particle/Fock 配分函数推广到一般 AdS$_d$，即 Killing algebra
$$
\mathfrak g=\mathfrak{so}(2,d-1).
$$
记
$$
 n=d-1,\qquad G=SO_0(2,n),\qquad K=SO(2)\times SO(n),
$$
其中 $SO(2)$ 的紧生成元记为能量 $H$，$SO(n)$ 是空间旋转群。严格地说，当 $\Delta\notin\mathbb Z$ 时，正能量表示是 $SO_0(2,n)$ 的 universal cover 的表示；下文仍按物理惯例称作 $SO(2,n)$ 表示。AdS 半径取 $L=1$。

本文只讨论 bosonic totally symmetric traceless, transverse sector，即 scalar、vector、symmetric TT tensor 以及一般整数 spin $s$ 的 Fronsdal/Fierz-Pauli 型 module。mixed-symmetry、spinor、partially massless module 不纳入主公式。

---

## 1. 抽象 Killing algebra 与最高权约定

在嵌入空间 $\mathbb R^{2,n}$ 中取生成元 $J_{AB}$，$A,B=-1,0,1,\ldots,n$，度规号型为 $(-,-,+,\ldots,+)$。紧能量与旋转生成元为
$$
H=J_{-1,0},\qquad M_{ij}=J_{ij},\qquad i,j=1,\ldots,n.
$$
复化后可定义能量升降算符 $P_i,K_i$，它们在 $SO(n)$ 下都是 vector，满足标准 conformal algebra 型关系
$$
[H,P_i]=P_i,
\qquad [H,K_i]=-K_i,
\qquad [P_i,P_j]=[K_i,K_j]=0,
$$
$$
[M_{ij},P_k]=\delta_{jk}P_i-\delta_{ik}P_j,
\qquad
[M_{ij},K_k]=\delta_{jk}K_i-\delta_{ik}K_j,
$$
$$
[K_i,P_j]=2\delta_{ij}H-2M_{ij}
$$
up to harmless convention-dependent signs/factors. 这个抽象结构就是 AdS$_4$ 里 $E_m^+$ annihilate primary、$E_m^-$ generate descendants 的一般维版本：
$$
K_i\leftrightarrow E_i^+,
\qquad
P_i\leftrightarrow E_i^-.
$$

一个 positive-energy generalized Verma module 记为
$$
\mathcal V(\Delta,\lambda),
$$
其中 primary $|\Delta,\lambda\rangle$ 满足
$$
H|\Delta,\lambda\rangle=\Delta|\Delta,\lambda\rangle,
\qquad K_i|\Delta,\lambda\rangle=0,
$$
并在 $SO(n)$ 下变换为有限维最高权表示 $\lambda$。descendant 由 commuting 的 $P_i$ 生成：
$$
P_{i_1}\cdots P_{i_N}|\Delta,\lambda\rangle
\in \lambda\otimes \mathrm{Sym}^N(V),
$$
其中 $V$ 是 $SO(n)$ vector representation。因此全部配分函数的共同 denominator 来自
$$
\sum_{N\ge 0} q^N \chi_{\mathrm{Sym}^N V}(\mathbf y)
=\frac{1}{D_d(q,\mathbf y)}.
$$

quadratic Casimir 在 highest-weight module 上的本征值是
$$
C_2(\Delta,\lambda)=\Delta(\Delta-n)+C_2^{SO(n)}(\lambda).
$$
对 rank-$s$ symmetric traceless $SO(n)$ 表示 $\lambda=(s,0,\ldots,0)$，
$$
C_2^{SO(n)}(s)=s(s+n-2)=s(s+d-3).
$$

---

## 2. $d$ 奇偶性：根系与 denominator 的区别

设旋转 Cartan fugacity 为
$$
\mathbf y=(y_1,\ldots,y_r),
\qquad y_i=e^{i\alpha_i}.
$$
区别来自 $SO(n)=SO(d-1)$ vector representation 的 weight system。

### 2.1 bulk 维数 $d=2r+1$ 为奇数

此时
$$
n=d-1=2r,
\qquad
\mathfrak{so}(2,d-1)_\mathbb C=\mathfrak{so}(2r+2,\mathbb C)=D_{r+1},
$$
且
$$
SO(d-1)=SO(2r),
\qquad \text{rotation type }D_r.
$$
vector weights 为
$$
\mathrm{wt}(V)=\{\pm e_1,\ldots,\pm e_r\}.
$$
因此
$$
\chi_V^{SO(2r)}(\mathbf y)=\sum_{i=1}^r(y_i+y_i^{-1}),
$$
$$
D_{2r+1}(q,\mathbf y)=\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).
$$
这里没有 angular weight 为零的 vector component。

### 2.2 bulk 维数 $d=2r+2$ 为偶数

此时
$$
n=d-1=2r+1,
\qquad
\mathfrak{so}(2,d-1)_\mathbb C=\mathfrak{so}(2r+3,\mathbb C)=B_{r+1},
$$
且
$$
SO(d-1)=SO(2r+1),
\qquad \text{rotation type }B_r.
$$
vector weights 为
$$
\mathrm{wt}(V)=\{0,\pm e_1,\ldots,\pm e_r\}.
$$
因此
$$
\chi_V^{SO(2r+1)}(\mathbf y)=1+\sum_{i=1}^r(y_i+y_i^{-1}),
$$
$$
D_{2r+2}(q,\mathbf y)=(1-q)\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).
$$
AdS$_4$ 属于这一类，$r=1$，故
$$
D_4(q,y)=(1-q)(1-qy)(1-qy^{-1}).
$$

---

## 3. $SO(n)$ symmetric traceless characters

把 rank-$s$ symmetric traceless $SO(n)$ 表示记为
$$
[s]\equiv(s,0,\ldots,0),
\qquad \chi_s^{(n)}(\mathbf y)=\chi_{[s]}^{SO(n)}(\mathbf y),
$$
并约定
$$
\chi_{-1}^{(n)}=0.
$$
一个方便的定义是
$$
\chi_s^{(n)}(\mathbf y)=h_s^{(n)}(\mathbf y)-h_{s-2}^{(n)}(\mathbf y),
$$
其中 $h_m^{(n)}=\chi_{\mathrm{Sym}^m V}$，$h_m=0$ for $m<0$，并由生成函数给出
$$
\sum_{m=0}^\infty t^m h_m^{(n)}(\mathbf y)=\frac{1}{D_d(t,\mathbf y)}.
$$
等价地，
$$
\sum_{s=0}^\infty t^s\chi_s^{(n)}(\mathbf y)
=\frac{1-t^2}{D_d(t,\mathbf y)}.
$$
在零角势 $\mathbf y=1$ 时
$$
g_s^{(n)}:=\chi_s^{(n)}(1)
=\binom{n+s-1}{s}-\binom{n+s-3}{s-2}
=\frac{(n+2s-2)(n+s-3)!}{s!(n-2)!},
$$
第二项在 $s<2$ 时取零。特别地
$$
g_0^{(n)}=1,
\qquad g_1^{(n)}=n=d-1,
\qquad g_2^{(n)}=\frac{(n-1)(n+2)}{2}=\frac{(d-2)(d+1)}{2}.
$$

---

## 4. Massive modules 的一般 character

对任意 $SO(n)$ primary $\lambda$，long module 的 refined one-particle trace 是
$$
Z_1\big[\mathcal V(\Delta,\lambda)\big](q,\mathbf y)
=\mathrm{Tr}_{\mathcal V(\Delta,\lambda)}q^H\mathbf y^J
=\frac{q^\Delta\chi_\lambda^{SO(n)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
其中
$$
\mathbf y^J:=\prod_{i=1}^r y_i^{J_i}.
$$

对 totally symmetric massive spin $s$，取 $\lambda=[s]$：
$$
Z_{1,\mathrm{massive}}^{(s)}(q,\mathbf y)
=\frac{q^\Delta\chi_s^{(n)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_{1,\mathrm{massive}}^{(s)}(q,1)
=\frac{g_s^{(n)}q^\Delta}{(1-q)^n}
=\frac{g_s^{(d-1)}q^\Delta}{(1-q)^{d-1}}.
$$

normal-ordered bosonic Fock-space partition function 是 plethystic exponential：
$$
\log Z_{\mathrm{Fock}}(q,\mathbf y)
=\sum_{m=1}^\infty \frac1m Z_1(q^m,\mathbf y^m),
\qquad \mathbf y^m=(y_1^m,\ldots,y_r^m).
$$
因此 massive spin $s$ 给出
$$
\log Z_{\mathrm{massive}}^{(s)}(q,\mathbf y)
=\sum_{m=1}^\infty \frac1m
\frac{q^{m\Delta}\chi_s^{(n)}(\mathbf y^m)}{D_d(q^m,\mathbf y^m)}.
$$

---

## 5. Scalar, vector, TT tensor

### 5.1 Massive scalar

scalar primary 是 $SO(n)$ singlet：
$$
\mathcal V(\Delta,0).
$$
在 global AdS$_d$
$$
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\Omega_{d-2}^2
$$
中，regular scalar primary 可取
$$
\phi_0=N e^{-i\Delta t}(1+r^2)^{-\Delta/2}.
$$
它满足
$$
K_i\phi_0=0,
\qquad H\phi_0=\Delta\phi_0.
$$
标量 Casimir 与 Laplacian 的关系为
$$
\mathcal C_2\phi=\nabla^2\phi,
$$
故
$$
\mu_0^2=\Delta(\Delta-d+1)=\Delta(\Delta-n).
$$
standard branch 为
$$
\Delta_+=\frac{d-1}{2}+
\sqrt{\frac{(d-1)^2}{4}+\mu_0^2}.
$$

one-particle trace:
$$
Z_1^{\mathrm{scalar}}(q,\mathbf y)=\frac{q^\Delta}{D_d(q,\mathbf y)}.
$$

descendant level $N$ 为 $\mathrm{Sym}^N(V)$。由于
$$
\mathrm{Sym}^N(V)=\bigoplus_{p=0}^{\lfloor N/2\rfloor}[N-2p],
$$
也可写作
$$
\mathcal H_{\mathrm{1p}}^{\mathrm{scalar}}
=\bigoplus_{p,\ell\ge0} [\ell],
\qquad H=\Delta+\ell+2p.
$$
这里 $[\ell]$ 是 $SO(d-1)$ rank-$\ell$ symmetric traceless harmonic。

### 5.2 Massive vector / Proca

vector primary 为 $[1]$：
$$
\mathcal V(\Delta,1).
$$
在 transverse sector 中 Proca 方程为
$$
\nabla_\mu A^\mu=0,
\qquad
(\nabla^2+d-1-\mu_1^2)A_\mu=0.
$$
vector 上的 Casimir 为
$$
\mathcal C_2 A_\mu=(\nabla^2+d-1)A_\mu,
$$
而 representation Casimir 为
$$
C_2(\Delta,1)=\Delta(\Delta-d+1)+(d-2).
$$
因此
$$
\mu_1^2=(\Delta-1)(\Delta-d+2).
$$
standard branch:
$$
\Delta_+=\frac{d-1}{2}+\sqrt{\frac{(d-3)^2}{4}+\mu_1^2}.
$$

one-particle trace:
$$
Z_1^{\mathrm{Proca}}(q,\mathbf y)
=\frac{q^\Delta\chi_1^{(d-1)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_1^{\mathrm{Proca}}(q,1)=\frac{(d-1)q^\Delta}{(1-q)^{d-1}}.
$$

### 5.3 Massive symmetric TT tensor

TT rank-2 primary 为 $[2]$：
$$
\mathcal V(\Delta,2).
$$
在 TT sector 中取 Fierz-Pauli convention
$$
\nabla^\mu h_{\mu\nu}=0,
\qquad g^{\mu\nu}h_{\mu\nu}=0,
\qquad
(\nabla^2+2-\mu_2^2)h_{\mu\nu}=0.
$$
rank-2 STT tensor 上
$$
\mathcal C_2 h_{\mu\nu}=(\nabla^2+2d)h_{\mu\nu}.
$$
表示论 Casimir 为
$$
C_2(\Delta,2)=\Delta(\Delta-d+1)+2(d-1).
$$
故
$$
\mu_2^2=\Delta(\Delta-d+1).
$$
standard branch:
$$
\Delta_+=\frac{d-1}{2}+\sqrt{\frac{(d-1)^2}{4}+\mu_2^2}.
$$

one-particle trace:
$$
Z_1^{\mathrm{TT}}(q,\mathbf y)
=\frac{q^\Delta\chi_2^{(d-1)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_1^{\mathrm{TT}}(q,1)=
\frac{\frac{(d-2)(d+1)}{2}q^\Delta}{(1-q)^{d-1}}.
$$

---

## 6. Massless gauge fields as short modules

对整数 spin $s\ge1$ 的 massless Fronsdal field，normalizable primary energy 为
$$
\Delta_s=s+d-3=s+n-2.
$$
这正是 boundary conserved current 的 dimension。long module 在这个值变 reducible，并含有 gauge/null submodule
$$
\mathcal V(s+d-2,s-1).
$$
物理 one-particle module 是 short quotient
$$
\mathcal D(s+d-3,s)
=\frac{\mathcal V(s+d-3,s)}{\mathcal V(s+d-2,s-1)}.
$$
因此 one-particle character 为
$$
Z_{1,\mathrm{massless}}^{(s)}(q,\mathbf y)
=\frac{q^{s+d-3}\chi_s^{(d-1)}(\mathbf y)
-q^{s+d-2}\chi_{s-1}^{(d-1)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_{1,\mathrm{massless}}^{(s)}(q,1)
=\frac{q^{s+d-3}\left(g_s^{(d-1)}-qg_{s-1}^{(d-1)}\right)}{(1-q)^{d-1}}.
$$
Fock partition function 是
$$
\log Z_{\mathrm{massless}}^{(s)}(q,\mathbf y)
=\sum_{m=1}^\infty\frac1m
\frac{q^{m(s+d-3)}\chi_s^{(d-1)}(\mathbf y^m)
-q^{m(s+d-2)}\chi_{s-1}^{(d-1)}(\mathbf y^m)}{D_d(q^m,\mathbf y^m)}.
$$

### 6.1 Maxwell field

令 $s=1$。normalizable branch 为
$$
\Delta=d-2,
$$
而 gauge branch 为 $\Delta=1$。module 为
$$
\mathcal D(d-2,1)=\frac{\mathcal V(d-2,1)}{\mathcal V(d-1,0)}.
$$
因此
$$
Z_1^{\mathrm{Maxwell}}(q,\mathbf y)
=\frac{q^{d-2}\chi_1^{(d-1)}(\mathbf y)-q^{d-1}}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_1^{\mathrm{Maxwell}}(q,1)
=\frac{q^{d-2}\left((d-1)-q\right)}{(1-q)^{d-1}}.
$$

### 6.2 Graviton / massless TT tensor

令 $s=2$。normalizable branch 为
$$
\Delta=d-1,
$$
而 diffeomorphism branch 为 $\Delta=0$。module 为
$$
\mathcal D(d-1,2)=\frac{\mathcal V(d-1,2)}{\mathcal V(d,1)}.
$$
因此
$$
Z_1^{\mathrm{grav}}(q,\mathbf y)
=\frac{q^{d-1}\chi_2^{(d-1)}(\mathbf y)-q^d\chi_1^{(d-1)}(\mathbf y)}{D_d(q,\mathbf y)}.
$$
零角势下
$$
Z_1^{\mathrm{grav}}(q,1)
=\frac{q^{d-1}\left(\frac{(d-2)(d+1)}{2}-q(d-1)\right)}{(1-q)^{d-1}}.
$$

---

## 7. 一般 massive spin $s$ 的 mass/$\Delta$ 关系

对 totally symmetric transverse traceless rank-$s$ tensor，local Lorentz spin Casimir 给出
$$
\mathcal C_2\varphi_{(s)}=
\left(\nabla^2+s(s+d-2)\right)\varphi_{(s)}.
$$
结合 representation Casimir
$$
C_2(\Delta,s)=\Delta(\Delta-d+1)+s(s+d-3),
$$
可得 Laplacian eigenvalue
$$
\nabla^2\varphi_{(s)}=
\left(\Delta(\Delta-d+1)-s\right)\varphi_{(s)}.
$$

对 $s\ge1$，若采用使 massless Fronsdal field 满足 $\mu_s^2=0$ 的 Fierz-Pauli mass convention，则 TT 方程可写为
$$
\left[\nabla^2+s-(s-2)(s+d-3)-\mu_s^2\right]\varphi_{(s)}=0.
$$
于是
$$
\boxed{\mu_s^2=(\Delta+s-2)(\Delta-s-d+3)}.
$$
等价形式为
$$
\mu_s^2=\Delta(\Delta-d+1)-(s-2)(s+d-3).
$$
standard branch 为
$$
\Delta_+=\frac{d-1}{2}+
\sqrt{\mu_s^2+\left(s+\frac{d-5}{2}\right)^2}.
$$
当 $\mu_s^2=0$ 时两根为
$$
\Delta=s+d-3,
\qquad
\Delta=2-s.
$$
前者是 normalizable massless branch，后者是 gauge/residual branch；$s=1$ 给 $\Delta=d-2,1$，$s=2$ 给 $\Delta=d-1,0$。

scalar 是单独的 convention：
$$
\mu_0^2=\Delta(\Delta-d+1),
$$
不应代入上面的 $s\ge1$ spin mass formula。

---

## 8. 按 $d$ 奇偶性写出的最终公式

### 8.1 $d=2r+1$ 奇数

此时 $SO(d-1)=SO(2r)$，
$$
D_{2r+1}(q,\mathbf y)=\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).
$$

Massive spin $s$：
$$
Z_{1,\mathrm{massive}}^{(s)}(q,\mathbf y)
=\frac{q^\Delta\chi_s^{SO(2r)}(\mathbf y)}{\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1})}.
$$

Massless spin $s\ge1$：
$$
Z_{1,\mathrm{massless}}^{(s)}(q,\mathbf y)
=\frac{q^{s+2r-2}\chi_s^{SO(2r)}(\mathbf y)
-q^{s+2r-1}\chi_{s-1}^{SO(2r)}(\mathbf y)}{
\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1})}.
$$

scalar/vector/TT are obtained by setting $s=0,1,2$ in the massive formula, while Maxwell/graviton are obtained by setting $s=1,2$ in the massless formula.

### 8.2 $d=2r+2$ 偶数

此时 $SO(d-1)=SO(2r+1)$，
$$
D_{2r+2}(q,\mathbf y)=(1-q)\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).
$$

Massive spin $s$：
$$
Z_{1,\mathrm{massive}}^{(s)}(q,\mathbf y)
=\frac{q^\Delta\chi_s^{SO(2r+1)}(\mathbf y)}{(1-q)\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1})}.
$$

Massless spin $s\ge1$：
$$
Z_{1,\mathrm{massless}}^{(s)}(q,\mathbf y)
=\frac{q^{s+2r-1}\chi_s^{SO(2r+1)}(\mathbf y)
-q^{s+2r}\chi_{s-1}^{SO(2r+1)}(\mathbf y)}{
(1-q)\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1})}.
$$

AdS$_4$ is $r=1$，so $SO(2r+1)=SO(3)$，
$$
\chi_s^{SO(3)}(y)=\sum_{m=-s}^s y^m,
\qquad
D_4=(1-q)(1-qy)(1-qy^{-1}),
$$
which exactly reproduces the formulas in the AdS$_4$ notes.

---

## 9. Important correction relative to the $SO(3)$ intuition

在 $SO(3)$ 中，Clebsch-Gordan decomposition 很简单：
$$
V_s\otimes V_\ell=V_{|s-\ell|}\oplus V_{|s-\ell|+1}\oplus\cdots\oplus V_{s+\ell}.
$$
这正是 AdS$_4$ 笔记里 product formula 的来源。

在一般 $SO(d-1)$ 中，不能把 $[s]\otimes[\ell]$ 误写成只含 symmetric traceless ranks 的一条链。对 $d-1\ge4$，tensor product 中通常出现 mixed-symmetry irreps。例如 vector times scalar harmonic contains a transverse vector-harmonic component of hook type. 因此一般维度下最干净、最不易错的写法是 character 或 quotient character：
$$
\mathcal H_N^{\mathrm{massive},s}=[s]\otimes \mathrm{Sym}^N(V),
$$
$$
\mathcal H_N^{\mathrm{massless},s}=\frac{[s]\otimes\mathrm{Sym}^N(V)}{[s-1]\otimes\mathrm{Sym}^{N-1}(V)},
\qquad \mathrm{Sym}^{-1}(V)=0.
$$
AdS$_4$ 的 $V_{N+s}\oplus\cdots\oplus V_s$ 是 $SO(3)$ 的特殊简化，不应原样推广到 $SO(d-1)$。

---

## 10. Checks

### 10.1 Reduction to AdS$_4$

Set $d=4$，$n=3$，$r=1$。Then
$$
D_4(q,y)=(1-q)(1-qy)(1-qy^{-1}),
\qquad
\chi_s^{SO(3)}(y)=\sum_{m=-s}^s y^m.
$$
The formulas become
$$
Z_1^{\mathrm{scalar}}=\frac{q^\Delta}{D_4},
\qquad
Z_1^{\mathrm{Proca}}=\frac{q^\Delta\chi_1(y)}{D_4},
\qquad
Z_1^{\mathrm{TT}}=\frac{q^\Delta\chi_2(y)}{D_4},
$$
$$
Z_1^{\mathrm{Maxwell}}=\frac{q^2\chi_1(y)-q^3}{D_4},
\qquad
Z_1^{\mathrm{grav}}=\frac{q^3\chi_2(y)-q^4\chi_1(y)}{D_4},
$$
$$
Z_{1,\mathrm{massless}}^{(s)}=\frac{q^{s+1}\chi_s(y)-q^{s+2}\chi_{s-1}(y)}{D_4}.
$$
These are exactly the AdS$_4$ formulas.

Mass relations also reduce correctly:
$$
\mu_0^2=\Delta(\Delta-3),
\qquad
\mu_1^2=(\Delta-1)(\Delta-2),
\qquad
\mu_2^2=\Delta(\Delta-3).
$$

### 10.2 Zero angular potential

For general $d$, the angular-unrefined formulas are
$$
Z_{1,\mathrm{massive}}^{(s)}(q,1)
=\frac{g_s^{(d-1)}q^\Delta}{(1-q)^{d-1}},
$$
$$
Z_{1,\mathrm{massless}}^{(s)}(q,1)
=\frac{q^{s+d-3}\left(g_s^{(d-1)}-qg_{s-1}^{(d-1)}\right)}{(1-q)^{d-1}}.
$$
For AdS$_5$, $d=5$，$SO(4)$ gives $g_s^{(4)}=(s+1)^2$，hence
$$
Z_{1,\mathrm{massless}}^{(s)}(q,1)
=\frac{q^{s+2}\left((s+1)^2-s^2q\right)}{(1-q)^4},
$$
which is the standard AdS$_5$ massless higher-spin one-particle character.

### 10.3 Heat-kernel / Harish-Chandra comparison

The module character above is the compact-Cartan character of a positive-energy $SO(2,d-1)$ representation. In thermal AdS heat-kernel computations, one obtains the same normal-mode partition functions after taking the appropriate thermal quotient and removing the $\beta$-independent infinite-volume contribution.

For scalar in AdS$_4$, the heat-kernel result gives
$$
\log Z_{\mathrm{scalar}}=\sum_{k=1}^\infty \frac1k\frac{q^{k\Delta}}{(1-q^k)^3},
$$
which is exactly
$$
\sum_{k=1}^\infty \frac1k Z_1^{\mathrm{scalar}}(q^k,1).
$$
For arbitrary STT spin, the heat-kernel expression freezes the branch representation to $(s,0,\ldots,0)$，so the degeneracy is precisely $g_s^{(d-1)}$，matching the zero-fugacity limit of $\chi_s^{SO(d-1)}$。

For gauge fields, the heat-kernel determinant includes ghost/gauge subtraction. Representation-theoretically this is exactly the short-module subtraction
$$
\mathcal V(s+d-3,s)-\mathcal V(s+d-2,s-1).
$$
In AdS$_4$, this yields
$$
\frac{q^{s+1}\left((2s+1)-(2s-1)q\right)}{(1-q)^3},
$$
which is the standard massless spin-$s$ character.

---

## 11. References for comparison

1. R. Gopakumar, R. K. Gupta, S. Lal, *The Heat Kernel on AdS*, arXiv:1103.3627. This computes heat kernels for arbitrary spin tensor fields on thermal quotients of Euclidean AdS and explains the odd/even-dimensional hyperboloid subtlety. For STT tensors, the extra discrete-series contribution in even-dimensional hyperboloids does not contribute.
2. R. K. Gupta, S. Lal, *Partition Functions for Higher-Spin theories in AdS*, arXiv:1205.1130. This applies the heat-kernel result to massless arbitrary-spin fields on general-dimensional AdS quotients.
3. Z. Sun, *AdS one-loop partition functions from bulk and edge characters*, arXiv:2010.15826. This rewrites AdS one-loop partition functions in terms of $SO(2,d)$ bulk characters and edge characters; after translating notation from AdS$_{d+1}$ to AdS$_d$, the bulk short characters agree with the formulas above.
4. S. Deser, A. Waldron, *Partial Masslessness of Higher Spins in (A)dS*, arXiv:hep-th/0103198. This gives the broader partially-massless context; the present note uses only the strictly massless depth-one quotient.
