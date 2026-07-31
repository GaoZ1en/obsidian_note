# Nonuniform lattice scalar on global AdS2

Date: 2026-07-31

## 0. Direct verdict and precise target

“非均匀格点把平直时空变成弯曲时空”作为一般物理命题不成立。可验证且对本项目有用的 statement 是：

> 给定固定的 static \(1+1\)-dimensional background \((M,g)\)，把 free scalar Klein--Gordon quadratic form、CPS form、boundary condition 与 state 一起编码为一族 weighted oscillator chains。若 mesh refinement、quadrature 与 endpoint domain 受控，则 smeared CCR、低能 spectrum、modes 与 noncoincident Euclidean Green function 可以收敛到 curved-background answer。

在 \(1+1\) 维，每个 Lorentzian metric locally conformally flat，因此 fixed-background scalar problem 可以进一步写成 flat coordinate strip 上的位置依赖 quadratic potential。这是同一个 differential operator 的重写，不是与 ordinary translation-invariant Minkowski QFT 的一般等价。

必须区分三个层级：

1. **Coordinate equivalence**：同一个 flat metric 用 nonuniform coordinate 描述。这是 exact diffeomorphism，curvature 仍为零。
2. **Operator realization**：curved-background Klein--Gordon operator 写成 flat-coordinate kinetic operator 加 external coefficients。这对本 note 的 free scalar 是 exact。
3. **Full QFT equivalence**：local algebras、state、boundary conditions、renormalized composite operators 与 stress tensor 都相同。一般不成立；只有把这些数据逐项一起映射后才能提出受限的 equivalence statement。

周期平直系统的 weighted CCR 与 Hamiltonian construction 已在 nonuniform periodic scalar lattice.md 中给出。本 note 建立 curved-background criterion，并以 standard-quantized global AdS\(_2\) 为第一个解析与数值 benchmark。

## 1. A nonuniform coordinate is not curvature

取 signature \((-+)\)，static metric 写成

$$\begin{align}
ds^2&=-N(x)^2\mathrm dt^2+a(x)^2\mathrm dx^2,
&
N(x)&>0,
&
a(x)&>0.
\end{align}$$

在本 note 的 curvature convention 中，global AdS\(_2\) 有 \(R=-2/L^2\)。上述 metric 的 Ricci scalar 是

$$\begin{align}
R
&=-\frac{2}{N a}\partial_x\left(\frac{\partial_xN}{a}\right).
\end{align}$$

若从 flat cylinder 或 flat line 出发，仅做

$$\begin{align}
x&=X(\xi),
&
X'(\xi)&>0,
\end{align}$$

则

$$\begin{align}
ds^2&=-\mathrm dt^2+X'(\xi)^2\mathrm d\xi^2.
\end{align}$$

此时 \(N=1\)、\(a=X'\)，所以

$$\begin{align}
R&=0
\end{align}$$

对任意 smooth monotone \(X\) exact 成立。也就是说，spatial sites 的疏密只改变 coordinate sampling 或 spatial proper-length Jacobian，不能单独产生 spacetime curvature。

flat massive scalar action 在 \(\xi\) coordinate 中变成

$$\begin{align}
S
&=\frac12\int\mathrm dt\,\mathrm d\xi
\left[
X'(\xi)\dot\phi^2
-\frac1{X'(\xi)}(\partial_\xi\phi)^2
-m^2X'(\xi)\phi^2
\right].
\end{align}$$

这些 position-dependent factors 是同一个 flat action 的 Jacobian。若 lattice 保留它们，就只是同一 theory 的 nonuniform regulator；若删掉或独立修改它们，就得到 inhomogeneous medium，而不是原来的 flat theory。

## 2. Static curved scalar and the inverse metric criterion

考虑 real scalar

$$\begin{align}
S
&=-\frac12\int_M\mathrm d^2x\sqrt{-g}
\left[
g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi
+(m^2+\xi R)\phi^2
\right].
\end{align}$$

在 static coordinate 中，

$$\begin{align}
S
&=\frac12\int\mathrm dt\,\mathrm dx
\left[
\frac aN\dot\phi^2
-\frac Na(\partial_x\phi)^2
-Na(m^2+\xi R)\phi^2
\right],\\
\Pi
&=\frac aN\dot\phi,\\
H
&=\frac12\int\mathrm dx
\left[
\frac Na\Pi^2
+\frac Na(\partial_x\phi)^2
+Na(m^2+\xi R)\phi^2
\right].
\end{align}$$

因此 pure metric coupling 对一个 quadratic Hamiltonian 的 coefficients 有约束。若在某个 fixed canonical field variable 中写成

$$\begin{align}
H
&=\frac12\int\mathrm dx
\left[
\alpha(x)\Pi^2
+\beta(x)(\partial_x\phi)^2
+\gamma(x)\phi^2
\right],
\end{align}$$

则 minimally coupled scalar 必须满足

$$\begin{align}
\alpha(x)&=\beta(x)=\frac{N(x)}{a(x)},\\
\gamma(x)&=N(x)a(x)m^2.
\end{align}$$

在 \(m^2>0\)、\(\alpha=\beta>0\)、\(\gamma>0\) 时，可以反向定义

$$\begin{align}
N(x)&=\sqrt{\frac{\alpha(x)\gamma(x)}{m^2}},\\
a(x)&=\sqrt{\frac{\gamma(x)}{\alpha(x)m^2}}.
\end{align}$$

所以在选定 field normalization 与 static diagonal coordinate 后，\(\alpha=\beta\) 是 flat inhomogeneous Hamiltonian 能被解释成 pure minimally coupled metric 的必要条件，并与 positivity 一起给出局部充分条件。若 \(\alpha\neq\beta\)，或者 mass、gradient 与 momentum coefficients 被彼此独立调节，则一般还需要 dilaton、position-dependent mass、field redefinition 或其他 medium data。

若 \(\xi\neq0\)，\(\gamma=Na(m^2+\xi R)\) 还包含由 \(N,a\) 的 derivatives 决定的 \(R\)，因此它不再是独立可选函数。若 \(m=0=\xi\)，二维 classical bulk action 看不见 conformal factor，不能从一个 massless scalar operator 唯一反演 geometry。

## 3. Conformal-coordinate reduction

定义

$$\begin{align}
\mathrm d\rho&=\frac{a(x)}{N(x)}\mathrm dx.
\end{align}$$

metric 变成

$$\begin{align}
ds^2
&=e^{2\sigma(\rho)}
\left(
-\mathrm dt^2+\mathrm d\rho^2
\right),
&
e^{2\sigma(\rho)}&=N(x(\rho))^2.
\end{align}$$

由于 spacetime dimension 是二，

$$\begin{align}
\sqrt{-g}\,g^{\mu\nu}&=\eta^{\mu\nu},
\end{align}$$

所以 action exact 化为

$$\begin{align}
S
&=\frac12\int\mathrm dt\,\mathrm d\rho
\left[
\dot\phi^2
-(\partial_\rho\phi)^2
-e^{2\sigma(\rho)}(m^2+\xi R)\phi^2
\right].
\end{align}$$

这解释了 curved/free 与 flat/inhomogeneous 之间最有用的 correspondence：

$$\begin{align}
\text{curved metric}
\quad\longleftrightarrow\quad
V_{\mathrm{eff}}(\rho)
=e^{2\sigma(\rho)}(m^2+\xi R)
\end{align}$$

at the level of the fixed scalar quadratic operator。geometry 并没有被消除，而是被移入 external potential、coordinate domain、boundary form 与 state。

## 4. General weighted oscillator chain

在 \(x\)-coordinate 上取 cells \(C_j\)，width \(w_j\)，edge length \(h_{j+1/2}=x_{j+1}-x_j\)。令

$$\begin{align}
\phi_j&\simeq\phi(x_j),
&
P_j&\simeq w_j\Pi(x_j),
&
[\phi_j,P_k]&=i\delta_{jk}.
\end{align}$$

对

$$\begin{align}
c(x)&=\frac{N(x)}{a(x)},\\
d(x)&=N(x)a(x)(m^2+\xi R),
\end{align}$$

finite-volume Hamiltonian 是

$$\begin{align}
H_N
&=\frac12\sum_j\frac{c_j}{w_j}P_j^2
+\frac12\sum_{\langle j,j+1\rangle}
\frac{c_{j+1/2}}{h_{j+1/2}}
(\phi_{j+1}-\phi_j)^2
+\frac12\sum_jw_jd_j\phi_j^2
+H_{\partial,N}.
\end{align}$$

\(H_{\partial,N}\) 由 continuum self-adjoint boundary condition 决定；它不能从 mesh spacing 猜出。

定义 locally unit-normalized canonical variables

$$\begin{align}
q_j&=\sqrt{w_j}\phi_j,
&
p_j&=\frac{P_j}{\sqrt{w_j}},
&
[q_j,p_k]&=i\delta_{jk}.
\end{align}$$

对 smooth tests，

$$\begin{align}
\phi_N[f]&=\sum_jw_jf_j\phi_j,\\
\Pi_N[g]&=\sum_jg_jP_j,
\end{align}$$

给出

$$\begin{align}
[\phi_N[f],\Pi_N[g]]
&=i\sum_jw_jf_jg_j
\longrightarrow
i\int\mathrm dx\,f(x)g(x).
\end{align}$$

因此 curved-background case 与 periodic flat case 使用相同的 weighted CCR mechanism。改变的是 quadratic form 与 endpoint domain，不是 finite-dimensional canonical algebra。

## 5. Global AdS2 as a conformal strip

global AdS\(_2\) 可以写成

$$\begin{align}
ds^2
&=-\left(1+\frac{r^2}{L^2}\right)\mathrm dt^2
+\frac{\mathrm dr^2}{1+r^2/L^2},
&
-\infty<r<\infty.
\end{align}$$

\(r=0\) 是 ordinary interior point，不需要 higher-dimensional radial-origin regularity condition。两端 \(r\to\pm\infty\) 是两个 disconnected timelike conformal boundaries。

令

$$\begin{align}
r&=L\tan\rho,
&
\tau&=\frac tL,
&
-\frac\pi2<\rho<\frac\pi2,
\end{align}$$

则

$$\begin{align}
ds^2
&=L^2\sec^2\rho
\left(
-\mathrm d\tau^2+\mathrm d\rho^2
\right),\\
R&=-\frac2{L^2}.
\end{align}$$

定义 constant effective mass

$$\begin{align}
\mu^2&:=m^2+\xi R
=m^2-\frac{2\xi}{L^2}.
\end{align}$$

action 和 Hamiltonian 是

$$\begin{align}
S
&=\frac12\int\mathrm d\tau\,\mathrm d\rho
\left[
(\partial_\tau\phi)^2
-(\partial_\rho\phi)^2
-\mu^2L^2\sec^2\rho\,\phi^2
\right],\\
H
&=\frac12\int_{-\pi/2}^{\pi/2}\mathrm d\rho
\left[
\Pi^2
+(\partial_\rho\phi)^2
+\mu^2L^2\sec^2\rho\,\phi^2
\right].
\end{align}$$

所以 spatial one-particle operator 是

$$\begin{align}
K_{\mathrm{AdS}_2}
&=-\partial_\rho^2+\mu^2L^2\sec^2\rho.
\end{align}$$

它是 flat strip 上的 Pöschl--Teller operator，但 strip、endpoint domain 与 AdS vacuum 都是 physical data。global AdS\(_2\) 因而不能由 periodic wrap-around edge 代替；周期识别会改变 topology、self-adjoint domain 与 spectrum。

## 6. SL(2,R) construction of all standard modes

定义

$$\begin{align}
\nu&:=\sqrt{\frac14+\mu^2L^2},\\
\Delta_\pm&:=\frac12\pm\nu,\\
\Delta&:=\Delta_+.
\end{align}$$

BF stability bound 是

$$\begin{align}
\mu^2L^2&\geq-\frac14.
\end{align}$$

并且

$$\begin{align}
\mu^2L^2&=\Delta(\Delta-1).
\end{align}$$

取 generators

$$\begin{align}
L_0
&=i\partial_\tau,\\
L_1
&=-e^{i\tau}
\left(
i\sin\rho\,\partial_\tau
+\cos\rho\,\partial_\rho
\right),\\
L_{-1}
&=e^{-i\tau}
\left(
-i\sin\rho\,\partial_\tau
+\cos\rho\,\partial_\rho
\right).
\end{align}$$

这里首先是 Lie-algebra statement；对 noncompact global time，应取与 universal cover 相容的 global group representation，而不能把 time 人为周期识别。

它们满足

$$\begin{align}
[L_m,L_n]&=(m-n)L_{m+n},
&
m,n&\in\{-1,0,1\}.
\end{align}$$

quadratic Casimir

$$\begin{align}
\mathcal C
&=L_0^2-\frac12
\left(
L_1L_{-1}+L_{-1}L_1
\right)
\end{align}$$

在 scalars 上等于 \(L^2\square\)。lowest-weight seed 是

$$\begin{align}
\Psi_0(\tau,\rho)
&=e^{-i\Delta\tau}\cos^\Delta\rho,\\
L_0\Psi_0&=\Delta\Psi_0,\\
L_1\Psi_0&=0.
\end{align}$$

所有 descendants 是

$$\begin{align}
\Psi_n
&=\frac{(-1)^n}{n!}L_{-1}^n\Psi_0\\
&=e^{-i(\Delta+n)\tau}
\cos^\Delta\rho\,
C_n^\Delta(\sin\rho),
&
n&=0,1,2,\ldots
\end{align}$$

并满足

$$\begin{align}
L_{-1}\Psi_n
&=-(n+1)\Psi_{n+1},\\
L_1\Psi_n
&=-(n+2\Delta-1)\Psi_{n-1},\\
K_{\mathrm{AdS}_2}
\left[
\cos^\Delta\rho\,C_n^\Delta(\sin\rho)
\right]
&=(\Delta+n)^2
\cos^\Delta\rho\,C_n^\Delta(\sin\rho).
\end{align}$$

因此 exact frequencies 是

$$\begin{align}
\omega_n&=\Delta+n.
\end{align}$$

取 radial normalization

$$\begin{align}
u_n(\rho)
&=\mathcal N_n
\cos^\Delta\rho\,
C_n^\Delta(\sin\rho),\\
\mathcal N_n^2
&=
\frac{
2^{2\Delta-1}n!(n+\Delta)\Gamma(\Delta)^2
}{
\pi\Gamma(n+2\Delta)
},
\end{align}$$

则

$$\begin{align}
\int_{-\pi/2}^{\pi/2}\mathrm d\rho\,
u_n(\rho)u_m(\rho)
&=\delta_{nm}.
\end{align}$$

constant-\(\tau\) slice 上

$$\begin{align}
\sqrt{\sigma}\,n^\tau
&=
\left(L\sec\rho\right)
\left(\frac{\cos\rho}{L}\right)
=1,
\end{align}$$

所以 positive-frequency CPS-normalized modes 是

$$\begin{align}
\Phi_n(\tau,\rho)
&=\frac{e^{-i\omega_n\tau}}{\sqrt{2\omega_n}}u_n(\rho),\\
(\Phi_n,\Phi_m)_{\mathrm{KG}}
&=\delta_{nm}.
\end{align}$$

field operator 为

$$\begin{align}
\phi(\tau,\rho)
&=\sum_{n=0}^\infty
\left[
a_n\Phi_n(\tau,\rho)
+a_n^\dagger\Phi_n^*(\tau,\rho)
\right],\\
[a_n,a_m^\dagger]
&=\delta_{nm}.
\end{align}$$

## 7. Endpoint domain and the two AdS boundaries

令

$$\begin{align}
z_+&=\frac\pi2-\rho,
&
z_-&=\frac\pi2+\rho.
\end{align}$$

在任一 endpoint，general solution 有

$$\begin{align}
u
&\sim
A_\pm z_\pm^{\Delta_-}
+B_\pm z_\pm^{\Delta_+}.
\end{align}$$

spatial operator 的 boundary form 是

$$\begin{align}
\langle u,Kv\rangle-\langle Ku,v\rangle
&=
\left[
u^*\partial_\rho v
-(\partial_\rho u)^*v
\right]_{-\pi/2}^{\pi/2}.
\end{align}$$

对 \(0<\nu<1\)，两个 falloffs 都属于 endpoint limit-circle sector；boundary flux 在每一端 proportional to

$$\begin{align}
2\nu
\left(
A_u^*B_v-B_u^*A_v
\right)
\end{align}$$

with the endpoint orientation included in the total bracket。常用 separated self-adjoint conditions 包括

$$\begin{align}
A_\pm&=0
&&\text{standard/fast falloff},\\
B_\pm&=0
&&\text{alternative/slow falloff},\\
B_\pm&=\kappa_\pm A_\pm,
&
\kappa_\pm&\in\mathbb R
&&\text{mixed condition}.
\end{align}$$

\(\nu=0\) 时第二个 independent solution 是 logarithmic，需要单独处理。更一般的 self-adjoint extension 也可以在两个 endpoints 之间混合 boundary data，但这会引入 nonlocal boundary coupling，并且通常不保留完整 AdS isometry。

本 note 的数值 benchmark 只实现

$$\begin{align}
\mu^2L^2&>0
\end{align}$$

下的 strong endpoint Dirichlet condition。此时 slow branch divergent；在 \(\mu^2L^2=0\) 时它退化为 constant。固定 endpoint value 为零选择 standard fast falloff。BF/alternative window 尚未在 lattice endpoint term 中实现，不能仅靠把 endpoint node 设成零来声称得到某个指定 self-adjoint extension。

## 8. Euclidean Green function

Wick rotate \(\tau=-i\tau_E\)。Euclidean operator 是

$$\begin{align}
P_E
&=-\partial_{\tau_E}^2
-\partial_\rho^2
+\mu^2L^2\sec^2\rho.
\end{align}$$

standard boundary condition 与 noncompact Euclidean time 下，spectral representation 是

$$\begin{align}
G_E(\tau_E,\rho;\tau_E',\rho')
&=
\sum_{n=0}^\infty
\frac{
u_n(\rho)u_n(\rho')
}{
2\omega_n
}
e^{-\omega_n|\tau_E-\tau_E'|}.
\end{align}$$

定义 Euclidean AdS invariant

$$\begin{align}
Z
&=
\frac{
\cosh(\tau_E-\tau_E')
-\sin\rho\sin\rho'
}{
\cos\rho\cos\rho'
}.
\end{align}$$

对 separated points，\(Z>1\)，并且

$$\begin{align}
G_E(Z)
&=\frac1{2\pi}Q_{\Delta-1}(Z).
\end{align}$$

这是

$$\begin{align}
\left(
-\nabla_E^2+\mu^2
\right)G_E
&=\delta_g
\end{align}$$

的 standard AdS solution。对 invariant function \(F(Z)\)，

$$\begin{align}
L^2\nabla_E^2F
&=(Z^2-1)F''+2ZF',
\end{align}$$

而 \(Q_{\Delta-1}\) obeys

$$\begin{align}
(Z^2-1)Q_{\Delta-1}''
+2ZQ_{\Delta-1}'
-\Delta(\Delta-1)Q_{\Delta-1}
&=0.
\end{align}$$

当 \(\Delta=2\) 时，

$$\begin{align}
Q_1(Z)
&=\frac Z2\log\left(\frac{Z+1}{Z-1}\right)-1.
\end{align}$$

其 \(Z\to1^+\) logarithmic singularity 给出二维 Green function 所需 normalization。

point-coincident \(G_E\) 有 logarithmic UV divergence，所以 continuum comparison 必须使用 separated points、smearing 或一致的 local subtraction。仅比较 finite-lattice coincident covariance 不是 regulator-independent check。

## 9. Nonuniform finite-element AdS2 lattice

取

$$\begin{align}
-\frac\pi2
=\rho_0
<\rho_1
<\cdots
<\rho_{N}
=\frac\pi2.
\end{align}$$

standard benchmark 固定 endpoint values，只把 \(N-1\) 个 interior nodal fields 作为 dynamical coordinates。令 \(\psi_i(\rho)\) 是 piecewise-linear hat functions，写成

$$\begin{align}
\phi_N(\rho)
&=\sum_{i=1}^{N-1}\psi_i(\rho)\Phi_i.
\end{align}$$

定义

$$\begin{align}
M_{ij}
&=\int\mathrm d\rho\,\psi_i\psi_j,\\
S_{ij}
&=\int\mathrm d\rho\,
(\partial_\rho\psi_i)(\partial_\rho\psi_j),\\
U_{ij}
&=\int\mathrm d\rho\,
\psi_i(\rho)
\mu^2L^2\sec^2\rho
\psi_j(\rho).
\end{align}$$

consistent finite-element system 是

$$\begin{align}
L_N
&=\frac12\dot{\boldsymbol\Phi}^TM\dot{\boldsymbol\Phi}
-\frac12\boldsymbol\Phi^T(S+U)\boldsymbol\Phi,\\
\boldsymbol P
&=M\dot{\boldsymbol\Phi},\\
[\Phi_i,P_j]
&=i\delta_{ij},\\
H_N
&=\frac12\boldsymbol P^TM^{-1}\boldsymbol P
+\frac12\boldsymbol\Phi^T(S+U)\boldsymbol\Phi.
\end{align}$$

frequencies 来自

$$\begin{align}
(S+U)\boldsymbol v_n
&=\omega_{n,N}^2M\boldsymbol v_n,\\
\boldsymbol v_n^TM\boldsymbol v_m
&=\delta_{nm}.
\end{align}$$

mass-lumped version 取

$$\begin{align}
M&\longrightarrow W=\operatorname{diag}(w_i),\\
U&\longrightarrow
\operatorname{diag}
\left(
w_i\mu^2L^2\sec^2\rho_i
\right).
\end{align}$$

此时

$$\begin{align}
\boldsymbol q&=W^{1/2}\boldsymbol\Phi,\\
\boldsymbol p&=W^{-1/2}\boldsymbol P
\end{align}$$

把 Hamiltonian 化为 standard oscillator kinetic term，而

$$\begin{align}
\Omega_N^2
&=W^{-1/2}(S+U)W^{-1/2}
\end{align}$$

是 real symmetric matrix。

consistent reconstruction 中

$$\begin{align}
\pi_N(\rho)
&=\boldsymbol\psi(\rho)^TM^{-1}\boldsymbol P
\end{align}$$

给出

$$\begin{align}
[\phi_N(\rho),\pi_N(\rho')]
&=
i\boldsymbol\psi(\rho)^TM^{-1}\boldsymbol\psi(\rho').
\end{align}$$

右边是到 endpoint-vanishing piecewise-linear space 的 \(L^2\) projector kernel。对 fixed smooth tests，

$$\begin{align}
[\phi_N[f],\pi_N[g]]
&=
i\boldsymbol b_f^TM^{-1}\boldsymbol b_g
\longrightarrow
i\int_{-\pi/2}^{\pi/2}\mathrm d\rho\,f(\rho)g(\rho),
\end{align}$$

其中

$$\begin{align}
(b_f)_i&=\int\mathrm d\rho\,\psi_i(\rho)f(\rho).
\end{align}$$

lattice Euclidean Green function 是

$$\begin{align}
G_{E,N}(s;\rho,\rho')
&=
\sum_{n=0}^{N-2}
\frac{
u_{n,N}(\rho)u_{n,N}(\rho')
}{
2\omega_{n,N}
}
e^{-\omega_{n,N}|s|}.
\end{align}$$

## 10. Reproducible numerical benchmark

nonuniform_ads2_scalar.py 实现：

1. fixed smooth map 生成的 symmetric nonuniform interval meshes；
2. lumped 与 consistent \(M,S,U\) assembly；
3. generalized eigenvalue diagonalization；
4. exact \(\omega_n=\Delta+n\) 与 Gegenbauer modes；
5. numerical modes 与 exact profiles 的 mass-matrix overlaps；
6. finite-element smeared CCR；
7. lattice、continuum mode-sum 与 invariant Euclidean Green-function comparison。

当前 workspace 的 system Python 没有 NumPy。可复现命令使用 Codex bundled scientific Python：

    /Users/koishi/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3 \
      "Articles/Quantization in AdS/gluing/nonuniform_ads2_scalar.py" --check

Wolfram/xAct checks 使用：

    wolframscript -file \
      "Articles/Quantization in AdS/gluing/nonuniform_ads2_scalar_checks.wl"

默认参数是

$$\begin{align}
\mu^2L^2&=2,
&
\Delta&=2,\\
|\tau_E-\tau_E'|&=0.7,
&
\rho&=0.2,
&
\rho'&=-0.35.
\end{align}$$

95 个 interior sites 的 lowest frequencies 是

| \(n\) | exact | lumped | consistent |
|---:|---:|---:|---:|
| 0 | 2.0000000 | 1.9999247 | 2.0001741 |
| 1 | 3.0000000 | 2.9991858 | 3.0010101 |
| 2 | 4.0000000 | 3.9972319 | 4.0030358 |
| 3 | 5.0000000 | 4.9936443 | 5.0066734 |
| 4 | 6.0000000 | 5.9880070 | 6.0123379 |
| 5 | 7.0000000 | 6.9799033 | 7.0204401 |
| 6 | 8.0000000 | 7.9689154 | 8.0313879 |
| 7 | 9.0000000 | 8.9546232 | 9.0455862 |

最低六个 numerical modes 与 exact Gegenbauer profiles 的 maximum mass-matrix infidelity 是

$$\begin{align}
1-\left|\langle u_{n,N},u_n\rangle_M\right|
&\leq 2.286\times10^{-5}
&&\text{lumped},\\
1-\left|\langle u_{n,N},u_n\rangle_M\right|
&\leq 1.918\times10^{-5}
&&\text{consistent}.
\end{align}$$

continuum mode sum 与 closed \(Q_1(Z)/(2\pi)\) 都给出

$$\begin{align}
G_E
&=0.03734345526207372.
\end{align}$$

同一 mesh 上，

$$\begin{align}
G_{E,N}^{\mathrm{lumped}}
&=0.03732956436671,\\
G_{E,N}^{\mathrm{consistent}}
&=0.03735980508700.
\end{align}$$

fixed nonuniform map refinement 给出

| interior sites | \(h_{\max}\) | lumped spectrum error | consistent spectrum error | FE CCR error | lumped \(G_E\) error | consistent \(G_E\) error |
|---:|---:|---:|---:|---:|---:|---:|
| 15 | \(3.112\times10^{-1}\) | \(7.767\times10^{-1}\) | \(6.617\times10^{-1}\) | \(4.906\times10^{-5}\) | \(4.027\times10^{-4}\) | \(4.662\times10^{-4}\) |
| 31 | \(1.567\times10^{-1}\) | \(1.841\times10^{-1}\) | \(1.810\times10^{-1}\) | \(2.833\times10^{-6}\) | \(8.374\times10^{-5}\) | \(1.785\times10^{-4}\) |
| 63 | \(7.849\times10^{-2}\) | \(4.533\times10^{-2}\) | \(4.589\times10^{-2}\) | \(1.736\times10^{-7}\) | \(3.073\times10^{-5}\) | \(3.631\times10^{-5}\) |
| 127 | \(3.926\times10^{-2}\) | \(1.129\times10^{-2}\) | \(1.151\times10^{-2}\) | \(1.080\times10^{-8}\) | \(6.767\times10^{-6}\) | \(1.033\times10^{-5}\) |

spectrum error 是 lowest six frequencies 的 maximum absolute error。CCR test 使用固定 smooth endpoint-vanishing functions。Green-function test 使用 fixed noncoincident points，因此没有 coincident logarithmic divergence。

这些数据验证了一条具体 regulator family，而不是证明 arbitrary nonuniform meshes 都收敛。mesh map 的 derivative 在整个 refinement family 中有 positive upper and lower bounds，所以 mesh ratio 保持受控。

## 11. Exact and non-exact notions of equivalence

### 11.1 Exact in this construction

以下 statements 是 exact：

1. flat-space coordinate reparametrization连同 Jacobian weights 不改变 curvature 或 continuum action；
2. fixed global AdS\(_2\) scalar action 等于 conformal strip 上 kinetic term 加 \(\mu^2L^2\sec^2\rho\) potential；
3. 在相同 boundary domain 上，两种写法有同一个 mode operator 与 Euclidean boundary-value problem；
4. 每个 finite lattice 是一个 standard finite-dimensional canonical oscillator system；
5. standard AdS modes 组成 \(SL(2,\mathbb R)\) lowest-weight representation，并给出 \(\omega_n=\Delta+n\)。

### 11.2 Not implied

以下 statements 不由上述结果推出：

1. curved metric 与 flat metric 是 diffeomorphic；
2. AdS vacuum 等于 no-potential Minkowski vacuum；
3. periodic flat lattice 与 global AdS\(_2\) interval 有同一 boundary condition；
4. matching one scalar spectrum 唯一决定 background geometry；
5. finite-\(N\) symplectic diagonalization 自动给出 continuum unitary equivalence；
6. matching elementary-field Green functions 自动匹配 renormalized stress tensor。

一个 genuine spacetime metric 同时定义 causal structure、proper distance、all-species coupling、boundary geometry 与 local renormalization data。一个针对单一 scalar 调好的 oscillator network 更准确地称为 curved-operator simulator 或 analog background。

对于 \(m=0=\xi\)，classical conformal factor 从 local bulk action 消失；但 topology、boundary conditions、zero mode、state 与 quantum Weyl anomaly 仍可区分 theories。因此 massless two-dimensional scalar 是“operator equivalence 不等于 full QFT equivalence”的最直接例子。

## 12. Verification boundary

Verified:

- xAct/xCoba 从 general static metric 得到
  \[
  R=-\frac{2}{Na}\partial_x\left(\frac{N'}a\right)
  \]
  并给出 zero residual；specializing to global AdS\(_2\) gives \(R=-2/L^2\).
- Mathematica 验证 conformal metric 的 kinetic-density 与 potential-density reductions；所有 residuals 为零。
- Mathematica 对 \(n=0,\ldots,6\) 验证 mode equation、\(L_0\) eigenvalue、\(L_{\pm1}\) ladder identities、Casimir identity 与 \(\mathfrak{sl}(2,\mathbb R)\) commutators；所有 residuals 为零。
- Mathematica 对 \(n=0,\ldots,4\) 验证 Gegenbauer normalization formula；所有 residuals 为零。
- Mathematica 验证 invariant Laplacian reduction、Legendre equation、\(\Delta=2\) short-distance coefficient，以及 101-term mode sum 与 \(Q_1(Z)/(2\pi)\) 的 equality at the benchmark points；residuals 为零 at \(10^{-13}\) tolerance.
- Python 验证 lumped/consistent mass matrices、canonical normalization、generalized diagonalization、exact-mode overlap、smeared CCR、spectrum refinement 与 noncoincident Euclidean Green-function refinement；all checks passed。

Assumptions:

- background fixed、static，并在给定 reflecting AdS boundary condition 后具有 well-posed time evolution；
- standard benchmark 使用 \(\mu^2L^2>0\) 与 strong endpoint Dirichlet condition；
- continuum claims concern fixed low modes、fixed smooth tests 或 fixed separated Euclidean points under a shape-controlled mesh family；
- \(\hbar=1\)，operator hats 按项目 convention 省略。

Not verified:

- 尚未给出 discrete quadratic forms 到 \(K_{\mathrm{AdS}_2}\) 的 Mosco、strong-resolvent 或 norm-resolvent convergence proof；
- 尚未实现 BF/alternative window 的 lattice boundary counterterm 与 general self-adjoint extension；
- endpoint limit-point/limit-circle 与 general self-adjoint-extension classification 本轮按 standard Sturm--Liouville analysis 保留，未做独立文献 audit；
- 尚未验证 lattice \(SL(2,\mathbb R)\) generators 或 finite-\(N\) Ward identities；当前 symmetry check 是 continuum exact；
- 尚未证明 full smeared Wightman state、renormalized \(\langle T_{\mu\nu}\rangle\) 或 Weyl anomaly 的 regulator-independent convergence；
- 尚未比较 \(r\)-coordinate 与 \(\rho\)-coordinate 两套离散化的 coordinate-covariant continuum limit；
- 没有声称 periodic identification 能表示 global AdS\(_2\)。

## 13. Immediate next calculations

1. 在 \(r\in(-R,R)\) coordinate 中离散
   \[
   H=\frac12\int\mathrm dr
   \left[
   \left(1+\frac{r^2}{L^2}\right)\Pi^2
   +\left(1+\frac{r^2}{L^2}\right)(\partial_r\phi)^2
   +\mu^2\phi^2
   \right],
   \]
   并与 \(\rho\)-mesh 在 matched cutoff 下比较 spectrum 与 Green function。这是检验“geometry 不依赖选择哪种 nonuniform coordinate encoding”的直接 experiment。
2. 把 alternative/mixed boundary condition 写成 endpoint quadratic form，先验证 discrete boundary form，再比较 analytic self-adjoint spectra。
3. 定义 continuum-to-lattice injection \(J_N\)，证明 \(J_N^*K_NJ_N\) 的 quadratic-form convergence，并由此推导 resolvent、spectral projector 与 smeared covariance convergence。
4. 在 fixed low-mode subspace 上离散 \(L_0,L_{\pm1}\)，测量 commutator 与 Casimir residual 随 \(h_{\max}\) 的收敛。
5. 对 periodic curved cylinder
   \[
   ds^2=e^{2\sigma(x)}(-\mathrm dt^2+\mathrm dx^2),
   \qquad
   \sigma(x+L)=\sigma(x),
   \]
   使用 \(V(x)=m^2e^{2\sigma(x)}\) 构造保留 periodic boundary condition 的 curved-background benchmark；不要把它与 global AdS\(_2\) 的 two-boundary strip 混同。
