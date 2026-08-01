# Stage 1：3D pure Maxwell

## 0. Current verdict

在 fixed 3D Minkowski background、finite $u$-slab、fixed defining function 和 radial gauge sector 中，Stage 1 可以完整做到以下程度：

1. dd 的 powers/log positions 可作为 on-shell support，但其

$$\begin{align}
n\leq\lceil m\rceil
\end{align}$$

   log cap 明确来自 Maxwell EOM，不能写入 off-shell definition。
2. 对每个 radial order 采用独立有限 log cap $K_m$ 后，bare action 只有两个 logarithmic divergences：

$$\begin{align}
\frac12E^2 \qquad\text{和}\qquad \frac14\partial_u(C^2).
\end{align}$$

3. 严格 intrinsic、gauge-invariant、local counterterms 无法消去 constant Coulomb sector 的 $E^2\log R$ divergence。
4. 允许 normal field strength 后，有显式 gauge-invariant extended counterterms，使 action、第一变分和第二变分均有限。
5. 在标准 polyhomogeneous category 中，action finiteness 不会选出唯一 maximal log cap：任意有限 $K_m$ 都可继续增大而不破坏 Stage 1A renormalizability。
6. 恢复 endpoint variations 后，同一 renormalization scheme 给出 finite lid/corner canonical structure 和 on-shell flux-balance law。
7. Exact Maxwell recursion 保持任意 nondecreasing finite-log-cap family；文献的 $n\leq\lceil m\rceil$ 是 consistent sector，不是 broader formal class 的 EOM maximum。
8. Maxwell--scalar duality和 compact positive-frequency Fourier--Bessel data 给出 global smooth finite-energy actual-solution class及 log-free radiative sector。Zero-frequency conormal data 的 coefficient formulas 已算出，但完整 Hankel--Mellin pushforward/image theorem 尚未通过 publication audit。
9. Field-independent large-$U(1)$ transformations 的 cut charge、flux、proper/large distinction 和 classical abelian algebra均已由完整 renormalized presymplectic data 导出。
10. Full spectral-to-formal map 的预期 image 是由同一 spectral datum 联结 radiation 与 threshold coefficients 的 graph，而非 section 11.8 的 arbitrary formal tower；当前笔记尚未证明使这一表述成为 Fréchet image/kernel/cokernel theorem 所需的统一 conormal estimates。
11. Full zero-mode reduction 必须先固定 boundary polarization。对 fixed inner data 和 fixed total-charge leaf，完整 null-lid form 的 kernel 恰为 proper gauge；$\mathscr I$ flux form 单独多出的 kernel 只有 zero-$u$-integral $G$，而 $u$-independent radiative shift 与 memory 配对，并非 zero mode。相应 quotient 是 Hausdorff Fréchet；若跨 total-charge leaves，则必须加入 conjugate edge phase，不能把不同 charge sectors 直接商掉。

因此 Stage 1A 的结论不是“作用量推出论文中的 falloff”，而是：

> Maxwell EOM 选择的 on-shell log truncation 严格强于 action-level radial renormalizability；后者允许一个没有 maximal element 的 finite-log-cap directed family。

因此 Stage 1 的 off-shell action pilot 在 roadmap 规定的范围内完成。没有被纳入 Paper-I 主定理的更强命题包括：存在唯一 maximal finite-log cap、任意 higher-log formal tower 都由 global actual solution 实现，以及 section 11.11--11.15 所提出的完整 zero-frequency Hankel--Mellin image/kernel/cokernel theorem。后者目前是明确列出缺失分析引理的 candidate package，不能作为已证命题引用。

---

## 1. Model and conventions

取

$$\begin{align}
ds^2 = -du^2-2\,du\,dr+r^2d\phi^2, \qquad \phi\sim\phi+2\pi,
\end{align}$$

并令

$$\begin{align}
M_{R,I} = \{R_0\leq r\leq R,\ u_-\leq u\leq u_+\}.
\end{align}$$

坐标顺序为 $(u,r,\phi)$。Metric inverse 和 determinant 是

$$
g^{\mu\nu}
=
\begin{pmatrix}
0&-1&0\\
-1&1&0\\
0&0&r^{-2}
\end{pmatrix},
\qquad
\sqrt{-g}=r.
$$

作用量取

$$\begin{align}
S_R[A] = -\frac14 \int_{M_{R,I}}d^3x\, \sqrt{-g}\, F_{\mu\nu}F^{\mu\nu}, \qquad F=dA.
\end{align}$$

第一轮的 tangential coefficients 在 $I\times S^1$ 上 smooth。讨论 radial-local problem 时，

$$\begin{align}
\delta A=0 \qquad \text{near }u=u_\pm.
\end{align}$$

---

## 2. Abstract off-shell variation

在任何 gauge condition 和 Maxwell EOM 之前，

$$\begin{align}
\delta S_R = \int_{M_{R,I}}d^3x\, \sqrt{-g}\, (\nabla_\mu F^{\mu\nu})\delta A_\nu + \int_{\partial M_{R,I}}\theta,
\end{align}$$

其中 symplectic-potential current density 为

$$\begin{align}
\theta^\mu(A;\delta A) = -\sqrt{-g}\,F^{\mu\nu}\delta A_\nu = -rF^{\mu\nu}\delta A_\nu.
\end{align}$$

因此

$$\begin{align}
\delta S_R = \int_{M_{R,I}}d^3x\, r(\nabla_\mu F^{\mu\nu})\delta A_\nu + \int_{r=R}du\,d\phi\,\theta^r - \int_{r=R_0}du\,d\phi\,\theta^r
\end{align}$$

$$\begin{align}
\qquad + \int_{u=u_+}dr\,d\phi\,\theta^u - \int_{u=u_-}dr\,d\phi\,\theta^u.
\end{align}$$

$\phi$ 是 periodic，因此没有 angular boundary。

Field-space exterior derivative给出

$$\begin{align}
\omega^\mu = \delta\theta^\mu.
\end{align}$$

这一步完全 off shell；$\nabla_\mu F^{\mu\nu}=0$ 只在 Stage 1C 使用。

---

## 3. Source-derived support 与 EOM contamination

Bosma--Geiller--Majumdar--Oblak 在 radial gauge $A_r=0$ 中使用

$$\begin{align}
A_u = E\log(r/r_0)+G + \sum_{m\in\mathbb N_{>0}/2}
\sum_{n=0}^{\lceil m\rceil} A_u^{m,n} \frac{[\log(r/r_0)]^n}{r^m},
\end{align}$$

$$\begin{align}
A_\phi = C\sqrt r + A_\phi^\ell\log(r/r_0) + A_\phi^0 + \sum_{m\in\mathbb N_{>0}/2}
\sum_{n=0}^{\lceil m\rceil} A_\phi^{m,n} \frac{[\log(r/r_0)]^n}{r^m}.
\end{align}$$

他们的脚注明确指出：在写下 ansatz 时没有理由令 $n\leq\lceil m\rceil$；这个截断是随后由 Maxwell equations 得出的。因此，本项目只采用：

- $A_u$ 的 weight-zero log 和 constant；
- $A_\phi$ 的 $r^{1/2}$、weight-zero log 和 constant；
- 正 half-integer powers $r^{-m}$；
- 每个 fixed $m$ 的有限 log tower。

以下内容不作为 off-shell input：

- $n\leq\lceil m\rceil$；
- $A_u^{1/2,1}=0$；
- $A_u^{1/2,0}=2C'$；
- $\dot E=0$；
- 任何 $A_\phi^{m,n}$ evolution equation。

---

## 4. Candidate off-shell index family

定义

$$\begin{align}
\mathbb H := \left\{ \frac12,1,\frac32,2,\ldots \right\}.
\end{align}$$

取一组有限整数

$$\begin{align}
\mathbf K=(K_m)_{m\in\mathbb H}, \qquad K_m\in\mathbb N_0,
\end{align}$$

并要求

$$\begin{align}
K_m\geq\lceil m\rceil, \qquad K_{m+1}\geq K_m.
\end{align}$$

第一条保证包含论文的 on-shell support；第二条保证 completed index set 对 integer shifts 闭合。

令

$$\begin{align}
L:=\log(r/r_0).
\end{align}$$

Radial-gauge slice 定义为

$$\begin{align}
A_r^{\mathrm{RG}}=0,
\end{align}$$

$$\begin{align}
A_u^{\mathrm{RG}} = E(u,\phi)L+G(u,\phi) + \sum_{m\in\mathbb H}
\sum_{n=0}^{K_m} A_u^{m,n}(u,\phi)\frac{L^n}{r^m},
\end{align}$$

$$\begin{align}
A_\phi^{\mathrm{RG}} = C(u,\phi)\sqrt r + P(u,\phi)L + Q(u,\phi) + \sum_{m\in\mathbb H}
\sum_{n=0}^{K_m} A_\phi^{m,n}(u,\phi)\frac{L^n}{r^m}.
\end{align}$$

这里

$$\begin{align}
P:=A_\phi^\ell, \qquad Q:=A_\phi^0,
\end{align}$$

且所有 coefficients 在 off shell 时彼此独立。

### 4.1 Remainders

每个 series 按 `definitions.md` 中的 polyhomogeneous conormal remainder 解释。特别地，对任意 fixed $N$，减去 $m\leq N$ 的所有 terms 后，任意有限个

$$\begin{align}
r\partial_r,\qquad \partial_u,\qquad \partial_\phi
\end{align}$$

作用于 remainder，仍满足对应 $O(r^{-N})$ bound。

### 4.2 Action finiteness 不选择 $\mathbf K$

对任意 finite cap sequence $\mathbf K$，把某个 $K_m$ 增大一并补入 completion 所需 terms，新增项仍从 strictly positive $r^{-m}$ order 开始。Stage 1A 的 power counting 不变。

所以在 finite-log-cap poset 中：

$$\begin{align}
\forall\mathbf K\quad \exists\mathbf K'>\mathbf K
\end{align}$$

且 $\mathcal F_{\mathbf K'}$ 仍 action-renormalizable。允许 $K_m=\infty$ 又违反标准 index set 在 fixed radial weight 下的 left-finiteness。

结论是：

$$\begin{align}
\text{Stage 1A admissible finite-log families have no maximal element.}
\end{align}$$

若希望存在真正 maximum，必须另选允许 resummed/infinite log towers 的 function category，并给出新的 coefficient-growth topology。

---

## 5. Radial gauge accessibility

### 5.1 Gauge-saturated parent space

令 gauge parameter $\lambda$ 属于一个保持 $A_u^{\mathrm{RG}}$ 和 $A_\phi^{\mathrm{RG}}$ index families 的 polyhomogeneous space，并定义

$$\begin{align}
\lambda = \lambda_0(u,\phi) + \lambda_\ell(u,\phi)L + \sum_{m\in\mathbb H}
\sum_{n=0}^{K_m^\lambda} \lambda^{m,n}(u,\phi)\frac{L^n}{r^m},
\end{align}$$

其中

$$\begin{align}
K_m^\lambda\leq K_m.
\end{align}$$

这保证 $\partial_u\lambda$ 和 $\partial_\phi\lambda$ 不会把 tangential components 移出声明的 index families。由 $\partial_r\lambda$ 得到的 $A_r$ family 是对应 gauge-parameter family 的 radial derivative image。

定义

$$\begin{align}
\mathcal F_{\mathrm{parent},\mathbf K} := \left\{ A^{\mathrm{RG}}+d\lambda:
A^{\mathrm{RG}}\in\mathcal F_{\mathrm{RG},\mathbf K} \right\}.
\end{align}$$

于是

$$\begin{align}
A_r=\partial_r\lambda.
\end{align}$$

Gauge transformation $A\mapsto A+d\eta$ 取

$$\begin{align}
\eta=-\lambda
\end{align}$$

便给出 $A_r=0$ 的 representative。因为 radial interval $[R_0,\infty)$ contractible，不存在 radial holonomy obstruction。

Residual parameters 满足

$$\begin{align}
\partial_r\eta_0=0, \qquad \eta_0=\eta_0(u,\phi).
\end{align}$$

它们作用为

$$\begin{align}
\delta_{\eta_0}G=\partial_u\eta_0, \qquad \delta_{\eta_0}Q=\partial_\phi\eta_0, \qquad \delta_{\eta_0}E=\delta_{\eta_0}C=0,
\end{align}$$

并保持 off-shell family。

### 5.2 Coefficientwise integration criterion

对 monomial，

$$\begin{align}
\partial_r \left( r^{-p}L^k \right) = r^{-p-1} \left( -pL^k+kL^{k-1} \right).
\end{align}$$

因此，一般 $A_r$ term

$$\begin{align}
r^{-s}L^k
\end{align}$$

可由 polyhomogeneous $\lambda$ 消去，当且仅当：

- $s\neq1$ 时，parameter family 包含 weight $s-1$、最高 log degree $k$；
- $s=1$ 时，parameter family 包含 weight zero、log degree $k+1$。

$s=1$ 是唯一的 logarithmic resonance。Gauge-saturated definition 自动满足这些条件。

这个 parent space 不要求把所有 Lorenz-gauge representatives 都纳入同一 asymptotic chart；它定义的是那些 gauge orbits whose radial-gauge representative obeys the declared off-shell falloffs。

---

## 6. Exact coordinate action on the radial-gauge slice

直接 raising indices 得到

$$\begin{align}
F_{\mu\nu}F^{\mu\nu} = 2\left[ -F_{ur}^2 -\frac{2}{r^2}F_{u\phi}F_{r\phi} +\frac{1}{r^2}F_{r\phi}^2 \right].
\end{align}$$

因此 coordinate Lagrangian density 为

$$\begin{align}
\mathscr L = \frac r2F_{ur}^2 + \frac1rF_{u\phi}F_{r\phi} - \frac1{2r}F_{r\phi}^2.
\end{align}$$

在 $A_r=0$ 上，

$$\begin{align}
F_{ur}=-\partial_rA_u, \qquad F_{r\phi}=\partial_rA_\phi, \qquad F_{u\phi}=\partial_uA_\phi-\partial_\phi A_u,
\end{align}$$

所以

$$\begin{align}
\mathscr L_{\mathrm{RG}} = \frac r2(\partial_rA_u)^2 + \frac1r \left( \partial_uA_\phi-\partial_\phi A_u \right) \partial_rA_\phi - \frac1{2r}(\partial_rA_\phi)^2.
\end{align}$$

Outer-boundary potential 是

$$\begin{align}
\theta^r_{\mathrm{RG}} = r\partial_rA_u\,\delta A_u + \frac{F_{u\phi}-F_{r\phi}}{r}\,\delta A_\phi.
\end{align}$$

Lid potential 是

$$\begin{align}
\theta^u_{\mathrm{RG}} = \frac{F_{r\phi}}{r}\,\delta A_\phi.
\end{align}$$

Radial symplectic current 为

$$\begin{align}
\omega^r_{\mathrm{RG}} = \delta(r\partial_rA_u)\wedge\delta A_u + \delta\left( \frac{F_{u\phi}-F_{r\phi}}r \right) \wedge\delta A_\phi.
\end{align}$$

---

## 7. Complete Stage 1A divergence ledger

不使用 Maxwell EOM，由 candidate family 直接得到

$$\begin{align}
F_{ur} = -\frac Er + O\left(r^{-3/2}L^{K_{1/2}}\right),
\end{align}$$

$$\begin{align}
F_{r\phi} = \frac{C}{2\sqrt r} + \frac Pr + O\left(r^{-3/2}L^{K_{1/2}}\right),
\end{align}$$

$$\begin{align}
F_{u\phi} = \dot C\sqrt r + (\dot P-E')L + (\dot Q-G') + O\left(r^{-1/2}L^{K_{1/2}}\right).
\end{align}$$

记

$$\begin{align}
N:=\dot C.
\end{align}$$

代入 exact coordinate action 后，

$$\begin{align}
\mathscr L_{\mathrm{RG}} = \frac1r \left( \frac12E^2+\frac12C\dot C \right) + O\left( r^{-3/2}L^{K_*} \right),
\end{align}$$

其中 $K_*$ 是由有限个最低-order log caps 决定的有限整数。又因为

$$\begin{align}
\frac12C\dot C = \frac14\partial_u(C^2),
\end{align}$$

令

$$\begin{align}
\Lambda_R:=\log(R/r_0).
\end{align}$$

把 radial integral 写成 $\Lambda_R$ 与写成 $\log(R/R_0)$ 只相差一个 finite scheme term。于是 divergent part 可写成

则

$$\begin{align}
S_R^{\mathrm{div}} = \frac{\Lambda_R}{2} \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\,E^2 + \frac{\Lambda_R}{4} \int_0^{2\pi}d\phi\, \left( C_+^2-C_-^2 \right).
\end{align}$$

这里

$$\begin{align}
C_\pm:=C(u_\pm,\phi).
\end{align}$$

### 7.1 为什么没有其他 divergences

- $\partial_rA_u$ 的 leading order 是 $r^{-1}$；任何 $m>0$ term 与它的 cross term 都是 $O(r^{-m-1})$ 或更快。
- $\partial_rA_\phi$ 的最慢衰减是 $r^{-1/2}$，$F_{u\phi}$ 的最大增长是 $r^{1/2}$；乘上 explicit $r^{-1}$ 后恰好得到唯一的 $r^{-1}$ term。
- $r^{-1}F_{r\phi}^2$ 从 $r^{-2}$ 开始。
- 任意有限 log power 乘以 $r^{-1-\eta}$、$\eta>0$ 仍 radial-integrable。

因此上述 ledger 对任意 finite $\mathbf K$ 完备。

### 7.2 First variation

在 $r=R$，

$$\begin{align}
\theta^r_{\mathrm{RG}} = \Lambda_R E\,\delta E + E\,\delta G + N\,\delta C + o(1).
\end{align}$$

在 lids 上，

$$\begin{align}
\int_{R_0}^{R}dr\,\theta^u_{\mathrm{RG}} = \frac{\Lambda_R}{2}C\,\delta C + O(1).
\end{align}$$

这正好是 $S_R^{\mathrm{div}}$ 的 variation。若 endpoint variations 暂时冻结，lid divergence 的 variation 消失；但 action 数值仍需 corner subtraction 才有限。

### 7.3 Symplectic current

Outer-boundary symplectic current 已在 bare level 具有 finite limit：

$$\begin{align}
\omega^r_{\mathscr I} = \delta E\wedge\delta G + \delta N\wedge\delta C.
\end{align}$$

潜在的 $\Lambda_R\delta E\wedge\delta E$ identically vanishes。这个事实不能替代 action renormalization；它只说明 Coulomb action divergence 是 field-space integrable 的。

---

## 8. Intrinsic gauge-invariant obstruction

定义 strict intrinsic gauge-invariant category 为：counterterm 只依赖

- induced background geometry；
- pullback $F_{ij}$；
- $F_{ij}$ 的有限阶 tangential covariant derivatives；

且不依赖 $A_i$ 本身、normal field strength、inverse tangential operators 或新 boundary fields。

### Proposition 8.1

在这个 category 中，不存在能对任意 Coulomb coefficient $E$ 消去

$$\begin{align}
\frac{\Lambda_R}{2}\int E^2
\end{align}$$

的 local counterterm。

#### Proof

限制到一参数 off-shell family

$$\begin{align}
A = E_0\log(r/r_0)\,du, \qquad E_0=\text{constant}.
\end{align}$$

在每个 $\mathcal B_R$ 上，

$$\begin{align}
F_{u\phi}=0
\end{align}$$

且其所有 tangential derivatives 都为零。于是 strict intrinsic gauge-invariant counterterm 的 field-dependent 部分在该 family 上恒为零；纯 background terms 又与 $E_0$ 无关。

但 bulk action divergence 是

$$\begin{align}
S_R^{\mathrm{div}} = \pi(u_+-u_-)\Lambda_R E_0^2,
\end{align}$$

对任意 $E_0$ 非零。故不存在该 category 内的 universal cancellation。$\square$

这个 no-go 不依赖 Maxwell EOM。

---

## 9. Extended gauge-invariant renormalization

定义 cutoff fields

$$\begin{align}
\mathcal E_R := -R F_{ur}|_{r=R}, \qquad \mathcal C_R := 2\sqrt R\,F_{r\phi}|_{r=R}.
\end{align}$$

在 candidate family 中，

$$\begin{align}
\mathcal E_R = E + O\left(R^{-1/2}L^{K_{1/2}}\right),
\end{align}$$

$$\begin{align}
\mathcal C_R = C + O\left(R^{-1/2}L^{K_{1/2}}\right).
\end{align}$$

两者 gauge invariant，但包含 normal field strength，因此属于 $\mathfrak C_{\mathrm{ext}}$。

取

$$\begin{align}
S_{\mathrm{ct},R}^{\mathrm{Coul}} = -\frac{\Lambda_R}{2} \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \mathcal E_R^2,
\end{align}$$

以及

$$\begin{align}
S_{\mathrm{ct},R}^{\mathrm{rad}} = -\frac{\Lambda_R}{4} \int_0^{2\pi}d\phi\, \left[ \mathcal C_R^2\big|_{u_+} - \mathcal C_R^2\big|_{u_-} \right].
\end{align}$$

则

$$\begin{align}
S_{\mathrm{ren}} = \lim_{R\to\infty} \left( S_R + S_{\mathrm{ct},R}^{\mathrm{Coul}} + S_{\mathrm{ct},R}^{\mathrm{rad}} \right)
\end{align}$$

存在。

### Proposition 9.1

对每个 fixed finite log-cap sequence $\mathbf K$，上述 limit 在 $\mathcal F_{\mathrm{RG},\mathbf K}$ 上 $C^2_{\mathrm{loc}}$ 存在。

#### Proof

减去两个 explicit $r^{-1}$ coefficients 后，bulk integrand 及其一阶、二阶 field variations 在 bounded coefficient sets 上均由

$$\begin{align}
\operatorname{const.}\, r^{-3/2}(1+|L|)^{K_*}
\end{align}$$

控制。该函数在 $[R_0,\infty)$ 可积。Maxwell action 是 quadratic，因此二阶 variation 后没有新的 field-dependent growth。

同时，

$$\begin{align}
\Lambda_R(\mathcal E_R^2-E^2) = o(1), \qquad \Lambda_R(\mathcal C_R^2-C^2) = o(1),
\end{align}$$

以及对应的一阶、二阶 variations 都趋于零。故 value、first differential 和 second differential 分别收敛。$\square$

### 9.1 Renormalized outer-boundary potential

在 radial-local problem 中，

$$\begin{align}
\Theta_{\mathscr I}^{\mathrm{ren}} = \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \left( E\,\delta G + N\,\delta C \right),
\end{align}$$

并诱导

$$\begin{align}
\Omega_{\mathscr I}^{\mathrm{ren}} = \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \left( \delta E\wedge\delta G + \delta N\wedge\delta C \right).
\end{align}$$

这里仍未 impose $\dot E=0$ 或任何 $N=\dot C$ 之外的 EOM relation；$N:=\dot C$ 只是 notation。

### 9.2 Polarization alternatives

Extended counterterm 保留 finite Coulomb one-form

$$\begin{align}
E\,\delta G.
\end{align}$$

若放弃 strict gauge invariance，可以考虑 radial-gauge intrinsic Laurent-log term

$$\begin{align}
S_{\mathrm{ct},R}^{A} = -\frac1{2\Lambda_R} \int du\,d\phi\,A_u^2.
\end{align}$$

因为

$$\begin{align}
A_u=E\Lambda_R+G+o(1),
\end{align}$$

它同样消去 action divergence，但把 finite one-form 改成

$$\begin{align}
-G\,\delta E.
\end{align}$$

所以这不是无害的 notation change，而是 boundary polarization 的改变。另一个 mixed 选择

$$\begin{align}
-\frac12\int du\,d\phi\,A_u\mathcal E_R
\end{align}$$

给出

$$\begin{align}
\frac12 \left( E\,\delta G-G\,\delta E \right).
\end{align}$$

后两种选择的 large-gauge covariance 和 finite anomaly 必须另行分析；当前首选仍是 gauge-invariant extended scheme。

---

## 10. Stage 1B：arbitrary endpoints and corners

恢复 $u=u_\pm$ 上的一般 variations。对任意 fixed $u$，bare lid potential 是

$$\begin{align}
\Theta_{\Sigma_u,R}^{\mathrm{bare}} = \int_{R_0}^{R}dr\int_0^{2\pi}d\phi\, \frac{F_{r\phi}}r\,\delta A_\phi.
\end{align}$$

其唯一 divergence 为

$$\begin{align}
\Theta_{\Sigma_u,R}^{\mathrm{bare}} = \frac{\Lambda_R}{2} \int_0^{2\pi}d\phi\, C\,\delta C + O(1).
\end{align}$$

Radiative corner counterterm 的 variation 正好给出相反项。因此定义

$$\begin{align}
\Theta_{\Sigma_u}^{\mathrm{ren}} := \lim_{R\to\infty} \left[ \int_{R_0}^{R}dr\int_0^{2\pi}d\phi\, \frac{F_{r\phi}}r\,\delta A_\phi - \frac{\Lambda_R}{2} \int_0^{2\pi}d\phi\, \mathcal C_R\,\delta\mathcal C_R \right].
\end{align}$$

### Proposition 10.1

对每个 fixed finite log-cap sequence $\mathbf K$，$\Theta_{\Sigma_u}^{\mathrm{ren}}$ 和

$$\begin{align}
\Omega_{\Sigma_u}^{\mathrm{ren}} := \delta\Theta_{\Sigma_u}^{\mathrm{ren}}
\end{align}$$

均存在。

#### Proof

减去 leading term 后，lid integrand 及其 variations 最慢按

$$\begin{align}
r^{-3/2}(1+|L|)^{K_*}
\end{align}$$

衰减，因此 radial-integrable。Corner subtraction 与 bare leading term 之差为

$$\begin{align}
O\left(R^{-1/2}\Lambda_R^{K_*+1}\right),
\end{align}$$

其一阶、二阶 variations 也趋于零。

此外，bare symplectic integrand 的潜在 logarithmic term正比于

$$\begin{align}
\delta C\wedge\delta C=0.
\end{align}$$

Corner subtraction 是 field-space exact，因此不改变 $\Omega_{\Sigma_u}^{\mathrm{ren}}$，只使 action 和 potential 本身有限。$\square$

### 10.1 Complete finite variation

固定内侧 $r=R_0$ 的数据后，

$$\begin{align}
\delta S_{\mathrm{ren}} = \int_M d^3x\,r(\nabla_\mu F^{\mu\nu})\delta A_\nu + \Theta_{\Sigma_+}^{\mathrm{ren}} - \Theta_{\Sigma_-}^{\mathrm{ren}}
\end{align}$$

$$\begin{align}
\qquad + \int_{\mathscr I_I}du\,d\phi\, \left( E\,\delta G + N\,\delta C \right).
\end{align}$$

这证明了任意 endpoint variations 下的 action differentiability。

若选择 outer-boundary Dirichlet polarization

$$\begin{align}
\delta G=0, \qquad \delta C=0,
\end{align}$$

则 spatial-boundary term vanishes，得到 stationary variational problem。若要让 generic radiative $C$ 在 histories 之间变化，则最后一项应解释为 finite source-work/open-system canonical one-form，或通过新增 boundary phase space 改写；Stage 1B 不把这项强行设为零。

### 10.2 Flux balance 的逻辑位置

Off shell 有

$$\begin{align}
d\omega = -\delta E_I\wedge\delta\Phi^I
\end{align}$$

的 linearized-Euler--Lagrange remainder。只有在 background 满足 Maxwell EOM、两条 variations 满足 linearized Maxwell equations 后，才能令右边为零并用 Stokes theorem 得到 symplectic flux-balance law。

因此：

- Stage 1B 已完成 finite endpoint/lid/corner canonical structure；
- hypersurface conservation/flux balance 属于 Stage 1C，不能在 off shell 提前宣称。

---

## 11. Stage 1C：Maxwell EOM and formal solution space

这一节才 impose

$$\begin{align}
\nabla_\mu F^{\mu\nu}=0.
\end{align}$$

### 11.1 Exact component equations

在 radial gauge 中，三个 independent component equations 可写成

$$\begin{align}
\mathcal M_r := -\partial_r(r\partial_rA_u) + \frac1r\partial_\phi\partial_rA_\phi = 0,
\end{align}$$

$$\begin{align}
\mathcal M_\phi := -\partial_u\left(\frac{F_{r\phi}}r\right) + \partial_r\left( \frac{F_{r\phi}-F_{u\phi}}r \right) = 0,
\end{align}$$

以及在 $\mathcal M_r=0$ 后等价于 temporal equation 的

$$\begin{align}
\mathcal M_u := \partial_u(r\partial_rA_u) + \frac1r\partial_\phi \left( F_{u\phi}-F_{r\phi} \right) = 0.
\end{align}$$

Antisymmetry identity implies：在 $\mathcal M_r=\mathcal M_\phi=0$ 后，$r\mathcal M_u$ 没有 independent radial tower；只剩 leading constraint。

### 11.2 Polynomial notation

把 radial-gauge expansion 重写成

$$\begin{align}
A_u = \sum_{m\in\{0\}\cup\mathbb H} r^{-m}U_m(L),
\end{align}$$

$$\begin{align}
A_\phi = \sum_{m\in\{-1/2,0\}\cup\mathbb H} r^{-m}V_m(L),
\end{align}$$

其中

$$\begin{align}
U_0=EL+G, \qquad V_{-1/2}=C, \qquad V_0=PL+Q.
\end{align}$$

每个 $U_m,V_m$ 是 $L$ 的有限 polynomial，其 coefficients 依赖 $(u,\phi)$。定义

$$\begin{align}
\mathsf D_m := \partial_L-m.
\end{align}$$

因为

$$\begin{align}
\partial_r \left[ r^{-m}X_m(L) \right] = r^{-m-1}\mathsf D_mX_m,
\end{align}$$

Maxwell equations 变成 polynomial recursions。

### 11.3 Radial recursion

$\mathcal M_r=0$ 在 weight $r^{-m-1}$ 给出

$$\begin{align}
\boxed{ \mathsf D_m^2U_m = \partial_\phi \left( \mathsf D_{m-1}V_{m-1} \right)
}, \qquad m>0.
\end{align}$$

在 finite polynomial space 上，$m>0$ 时 $\mathsf D_m$ 可逆。因此：

- $U_m$ 由 $V_{m-1}$ 唯一决定；
- 不产生新的 radial integration function；
- polynomial degree 不增加。

最低一阶为

$$\begin{align}
U_{1/2}=2C',
\end{align}$$

即

$$\begin{align}
A_u^{1/2,1}=0, \qquad A_u^{1/2,0}=2C',
\end{align}$$

与文献一致。

$m=0$ equation 是

$$\begin{align}
\partial_L^2U_0=0,
\end{align}$$

所以 on shell 的 weight-zero $A_u$ 至多是 $EL+G$。

### 11.4 Angular evolution

令不存在的 coefficients，例如 $V_{-1}$ 和 $U_{-1/2}$，等于零。$\mathcal M_\phi=0$ 在每个 weight 给出

$$\begin{align}
\boxed{ \left( \mathsf D_m+\mathsf D_{m+1} \right) \dot V_m = \mathsf D_{m+1} \left( \mathsf D_{m-1}V_{m-1} + \partial_\phi U_m \right)
}.
\end{align}$$

对 $m\geq0$，

$$\begin{align}
\mathsf D_m+\mathsf D_{m+1} = 2\partial_L-(2m+1)
\end{align}$$

在 finite polynomial space 上可逆。因此 $V_m(u_0,L,\phi)$ 是自由 initial data，equation 唯一决定其 $u$-evolution。

对 $m=-1/2$，左边退化为 $2\partial_L\dot C=0$，没有约束 $C(u,\phi)$。因此

$$\begin{align}
N=\dot C
\end{align}$$

是自由 radiative news。

最低 integer branch 给出

$$\begin{align}
\dot P=E', \qquad \dot Q=E'+G',
\end{align}$$

最低 positive half-integer branch 给出

$$\begin{align}
\dot A_\phi^{1/2,1}=0,
\end{align}$$

$$\begin{align}
\dot A_\phi^{1/2,0} = \frac32 \left( \frac14C+C'' \right),
\end{align}$$

也与文献 displayed equations 一致。

### 11.5 Temporal constraint

在 radial 和 angular recursions 成立后，$\mathcal M_u=0$ 的 leading order 是

$$\begin{align}
\boxed{\dot E=0}.
\end{align}$$

其余 radial orders 由 differential identity 和前两组 equations 保证。因此

$$\begin{align}
E=E(\phi).
\end{align}$$

### 11.6 Preservation of the off-shell index family

由 radial recursion，

$$\begin{align}
\deg_LU_m \leq \deg_LV_{m-1}.
\end{align}$$

由 angular recursion，

$$\begin{align}
\deg_L\dot V_m \leq \max \left\{ \deg_LV_{m-1}, \deg_LU_m \right\}.
\end{align}$$

因此只要

$$\begin{align}
K_{m+1}\geq K_m,
\end{align}$$

两个 integer-separated branches

$$\begin{align}
-\frac12\to\frac12\to\frac32\to\cdots,
\end{align}$$

$$\begin{align}
0\to1\to2\to\cdots
\end{align}$$

都在 evolution 下闭合。Maxwell EOM 不会把 solution 移出 $\mathcal F_{\mathbf K}$。

### 11.7 关于文献 log cap 的精确 verdict

文献脚注声称 Maxwell equations impose

$$\begin{align}
A_{u,\phi}^{m,n>\lceil m\rceil}=0.
\end{align}$$

对本文允许 arbitrary higher-log initial polynomials 的 broader formal class，这个命题不成立。正确的改写是：

> $n\leq\lceil m\rceil$ 定义了一个由 Maxwell recursion 保持的 consistent sector；它不是 EOM 在所有 finite-log polyhomogeneous solutions 上强制得到的 maximum。

一个显式检查是取

$$\begin{align}
C=E=G=P=Q=0, \qquad V_{1/2}=aL^2,
\end{align}$$

其中 $a$ 是 constant。Radial recursion 给出 $U_{3/2}=0$，angular recursion 允许

$$\begin{align}
\dot V_{1/2}=0
\end{align}$$

并在下一阶唯一给出

$$\begin{align}
\dot V_{3/2} = a \left( \frac3{32} + \frac{19}{16}L - \frac5{16}L^2 \right).
\end{align}$$

之后各阶继续由可逆 polynomial operators 递归决定。也就是说，$m=1/2$ 上的 $L^2$ initial datum 不被 EOM 置零，而是向更 subleading orders 传播。

这个结论是 formal asymptotic statement；它不自动证明任意此类 formal initial tower 都对应 global actual solution。

### 11.8 Formal pre-phase space

对 fixed $\mathbf K$，formal solution data 可以参数化为：

- arbitrary $C(u,\phi)$；
- time-independent $E(\phi)$；
- arbitrary $G(u,\phi)$；
- 每个允许 $V_m$ 在一张 cut $u=u_0$ 上的 polynomial initial data；
- 由 radial recursion 唯一确定的 $U_{m>0}$；
- 由 angular recursion 唯一演化的 $V_m$。

因此 flat 3D Maxwell 包含一个 infinite tower of cut data。Residual $\eta_0(u,\phi)$ 仍需在 presymplectic reduction 时处理。

至少 Coulomb solutions 和文献中的 radiative solutions 证明这个 solution space 非空；但 formal data 到 global solutions 的 surjectivity 尚未证明。

### 11.9 一个可控的 actual-solution realization

这一节只解决一个精确的问题：

> 构造一个非平凡、带明确 data topology 的 actual Maxwell solution class，并证明 existence、解在该 class 中的 uniqueness 和 continuous dependence。

它不把 section 11.8 的任意 formal tower 宣称为 actual solution。

固定

$$\begin{align}
K=[\varpi _0,\varpi _1]\Subset(0,\infty), \qquad \Lambda\Subset\mathbb Z,
\end{align}$$

其中 $\Lambda$ 是 finite set，并定义 spectral data space

$$\begin{align}
\mathcal A_{K,\Lambda} = \bigoplus_{\ell\in\Lambda} C_c^\infty(K^\circ)
\end{align}$$

及其 Fréchet seminorms

$$\begin{align}
p_N(a) = \max_{\ell\in\Lambda}
\max_{0\leq j\leq N}
\sup_{\varpi\in K} \left| \partial_\varpi^j a_\ell(\varpi) \right|.
\end{align}$$

在 polar Minkowski coordinates

$$\begin{align}
ds^2=-dt^2+dr^2+r^2d\phi^2
\end{align}$$

中，令

$$\begin{align}
\varphi_a(t,r,\phi) = \sum_{\ell\in\Lambda} \int_Kd\varpi\, 2a_\ell(\varpi) J_{|\ell|}(\varpi r) e^{-i\varpi t+i\ell\phi} +\mathrm{c.c.}
\end{align}$$

这里 complex notation 只用于压缩实解的写法。

### Proposition 11.1

映射

$$\begin{align}
a\longmapsto F_a=*d\varphi_a
\end{align}$$

具有以下性质：

1. $\varphi_a$ 是整个 $2+1$ dimensional Minkowski spacetime 上的 smooth finite-energy wave solution；
2. $F_a$ 是 smooth source-free Maxwell solution；
3. 在任意 future-null finite $u$-slab 上，$F_a$ 可由 radial-gauge potential $A_a$ 表示，并属于本文的 log-free half-integer polyhomogeneous sector；
4. leading radiation datum 唯一决定 $a$，故在这个 future-outgoing spectral class 中唯一决定 $F_a$；
5. $a\mapsto F_a$ 对 $\mathcal A_{K,\Lambda}$ 的 seminorms 和 `definitions.md` 的 weighted conormal seminorms 连续。

#### Proof

波动算符为

$$\begin{align}
\Box = -\partial_t^2 +\partial_r^2 +\frac1r\partial_r +\frac1{r^2}\partial_\phi^2.
\end{align}$$

Bessel equation 直接给出

$$\begin{align}
\Box \left[ J_{|\ell|}(\varpi r) e^{-i\varpi t+i\ell\phi} \right] =0.
\end{align}$$

由于 $\Lambda$ finite 且 amplitudes smooth、compactly supported away from $\varpi=0$，可以在 integral 下任意求导。又因为

$$\begin{align}
J_{|\ell|}(\varpi r) = \mathcal O(r^{|\ell|}) \qquad r\to0,
\end{align}$$

且 $r^{|\ell|}e^{i\ell\phi}$ 是 Cartesian-smooth，$\varphi_a$ 在 origin 也 smooth。在 fixed $t$、$r\to\infty$ 时对 oscillatory spectral integrals repeated integration by parts，得到 spatial rapid decay；因此 standard energy finite。

取 orientation

$$\begin{align}
dt\wedge dr\wedge d\phi>0.
\end{align}$$

若 $F=*d\varphi$，则

$$\begin{align}
dF = d*d\varphi = (\Box\varphi)\operatorname{vol} =0,
\end{align}$$

而在 Lorentzian three dimensions 中 $**=-1$ on one-forms，所以

$$\begin{align}
d*F=-d^2\varphi=0.
\end{align}$$

因此 Bianchi identity 和 source-free Maxwell equation 同时成立。

在 $(t,r,\phi)$ coordinates 中，components 为

$$\begin{align}
F_{tr} = \frac1r\partial_\phi\varphi, \qquad F_{t\phi} = -r\partial_r\varphi, \qquad F_{r\phi} = -r\partial_t\varphi.
\end{align}$$

改用 $u=t-r$ 后，

$$\begin{align}
F_{ur} = \frac1r\partial_\phi\varphi,
\end{align}$$

$$\begin{align}
F_{u\phi} = -r \left( \left.\partial_r\right|_u-\partial_u \right) \varphi,
\end{align}$$

$$\begin{align}
F_{r\phi} = -r\left.\partial_r\right|_u\varphi.
\end{align}$$

下一步需要同时使用两个 Hankel branches。精确恒等式

$$\begin{align}
2J_{|\ell|}(z) = H_{|\ell|}^{(1)}(z) +H_{|\ell|}^{(2)}(z)
\end{align}$$

把每个 global regular mode 分成 future-null outgoing 和 rapidly decaying pieces。DLMF 10.17.5 给出

$$\begin{align}
H_{|\ell|}^{(1)}(z) \sim \left( \frac2{\pi z} \right)^{1/2} e^{i(z-|\ell|\pi/2-\pi/4)}
\sum_{j=0}^\infty i^j\frac{\mathsf a_j(|\ell|)}{z^j},
\end{align}$$

其中

$$\begin{align}
\mathsf a_j(|\ell|) = \frac{ \prod_{s=1}^j \left[ 4|\ell|^2-(2s-1)^2 \right]
}{ j!8^j
}, \qquad \mathsf a_0=1.
\end{align}$$

对 $t=u+r$，$H^{(1)}$ branch 中的 $e^{i\varpi r}$ 与 $e^{-i\varpi t}$ 的 radial phase 消去。于是

$$\begin{align}
\varphi_a \sim
\sum_{j=0}^\infty r^{-j-\frac12}C_j(u,\phi),
\end{align}$$

其中 positive-frequency part 为

$$\begin{align}
C_j^+(u,\phi) = \sum_{\ell\in\Lambda} e^{i\ell\phi-i|\ell|\pi/2-i\pi/4} \int_Kd\varpi\, a_\ell(\varpi) \left( \frac2{\pi\varpi} \right)^{1/2} i^j\mathsf a_j(|\ell|) \varpi^{-j} e^{-i\varpi u},
\end{align}$$

而

$$\begin{align}
C_j=C_j^++\overline{C_j^+}.
\end{align}$$

$H^{(2)}e^{-i\varpi t}$ branch 带 phase

$$\begin{align}
e^{-i\varpi(u+2r)}.
\end{align}$$

由于 $a_\ell$ 在 $K^\circ$ 内 compactly supported，对 $\varpi$ repeated integration by parts 表明这个 branch 在 fixed finite $u$-slab 上为

$$\begin{align}
\mathcal O(r^{-\infty}).
\end{align}$$

因此它不增加任何 polyhomogeneous coefficient。

记

$$\begin{align}
C=C_0.
\end{align}$$

上面的 exact component formulas 给出

$$\begin{align}
F_{ur} = \frac{\partial_\phi C}{r^{3/2}} +\mathcal O(r^{-5/2}),
\end{align}$$

$$\begin{align}
F_{u\phi} = \dot C\sqrt r +\mathcal O(r^{-1/2}),
\end{align}$$

$$\begin{align}
F_{r\phi} = \frac{C}{2\sqrt r} +\mathcal O(r^{-3/2}).
\end{align}$$

在 asymptotic collar 上

$$\begin{align}
H^2\left( [u_-,u_+]\times[R_0,\infty)\times S^1 \right) =0,
\end{align}$$

所以 closed two-form $F_a$ 有 potential。再用 section 5 的 gauge transformation 取 $A_r=0$，便有

$$\begin{align}
A_\phi = C\sqrt r +Q(u,\phi) +\mathcal O(r^{-1/2}),
\end{align}$$

$$\begin{align}
A_u = G(u,\phi) +\frac{2\partial_\phi C}{\sqrt r} +\mathcal O(r^{-3/2}).
\end{align}$$

故这个 actual class 落在 $E=0$、$K_m=0$ 的 radiative sector 中。

对任意 truncation order $N$、finite numbers of $u,\phi$ and conormal radial derivatives，DLMF 的 real-argument remainder bounds 在 finite $\Lambda$ 和 compact $K\Subset(0,\infty)$ 上 uniform。因此存在 $M$ 和常数 $c$ 使

$$\begin{align}
\sup_{\substack{ u\in[u_-,u_+]\\
r\geq R_1\\
\phi\in S^1
}}
r^{N+\frac12} \left|
\partial_u^p
\partial_\phi^q (r\partial_r)^s \left[ \varphi_a - \sum_{j=0}^{N-1} r^{-j-\frac12}C_j \right] \right|
\leq c\,p_M(a).
\end{align}
\end{align}$$

对 $F_a$ 和 radial-gauge $A_a$ 的 estimates 由 differentiation 和 coefficientwise radial integration 得到。这证明 continuous dependence in the declared topology。

最后，$C^+$ 的 $(u,\phi)$ Fourier transform 满足

$$\begin{align}
\widehat C_\ell^+(\varpi) = e^{-i|\ell|\pi/2-i\pi/4} \left( \frac2{\pi\varpi} \right)^{1/2} a_\ell(\varpi).
\end{align}$$

右侧 prefactor 在 $K$ 上不为零，所以 $C$ 唯一恢复 $a$。这证明这个 future-outgoing class 内的 uniqueness。$\square$

### 11.10 Coulomb sector 与 realization boundary

Constant Coulomb datum 可在 exterior collar 上独立加入：

$$\begin{align}
A^{\mathrm C} = E_0\log(r/r_0)\,du,
\end{align}$$

$$\begin{align}
F^{\mathrm C} = -\frac{E_0}{r}\,du\wedge dr.
\end{align}$$

它在 $r>0$ 满足 vacuum Maxwell equations，并给出

$$\begin{align}
r\partial_rA_u=E_0.
\end{align}$$

因此

$$\begin{align}
\mathcal S^{\mathrm{out}}_{K,\Lambda,E_0} = \left\{ A_a+A^{\mathrm C} \mid
a\in\mathcal A_{K,\Lambda} \right\}
\end{align}$$

是一个带任意 band-limited radiation 和 constant Coulomb charge 的 nonempty actual exterior solution class。若要求穿过 $r=0$ 的 global smooth vacuum solution，则必须取 $E_0=0$；nonzero $E_0$ 对应 puncture、source 或 nontrivial interior boundary。

这个构造给出以下精确 verdict：

$$\begin{align}
\boxed{ \mathcal S^{\mathrm{out}}_{K,\Lambda,E_0} \subset \widetilde{\mathcal S}_{\mathrm M}
}
\end{align}$$

已经证明，但

$$\begin{align}
\boxed{ \widetilde{\mathcal S}_{\mathrm M} \stackrel{?}{=} \mathcal S_{\mathrm M}^{\mathrm{actual}}
}
\end{align}$$

没有证明，且不应由 formal recursion 推断。

这里 analytic gap 可以进一步定位。由于 $K\Subset(0,\infty)$，fixed-frequency Hankel expansion 只产生 inverse powers，不产生 higher radial logs。在这个 spectral representation 中，被 band gap 排除并可能导致 non-uniform large-$r$ expansion 的区域正是

$$\begin{align}
\varpi\to0.
\end{align}$$

下面完成这个 zero-frequency problem。Baskin--Vasy--Wunsch 的 general theorem 仍提供有用的 global background：nontrapping asymptotically Minkowski wave solutions 具有由 resonances 控制的 full polyhomogeneous expansion；但这里还要利用 flat $2+1$ dimensional Fourier--Bessel transform 的显式 Gamma coefficients，才能判定 forward map 的 image。

### 11.11 Finite-energy conormal threshold space

固定 $\chi\in C_c^\infty([0,\infty))$，并令 $\chi=1$ near $\varpi=0$。对每个 angular mode $\ell\in\mathbb Z$，取 locally finite index set

$$\begin{align}
\mathcal E_\ell \subset \left\{ (\alpha,k) \mid \operatorname{Re}\alpha>-1,\ k\in\mathbb N_0 \right\},
\end{align}$$

其中任意 half-plane $\operatorname{Re}\alpha<B$ 只含有限多个 indices，且每个 fixed $\alpha$ 的 log degree 有限。定义

$$\begin{align}
a_\ell(\varpi) \sim
\sum_{(\alpha,k)\in\mathcal E_\ell} a_{\ell,\alpha,k}\, \chi(\varpi)\, \varpi^\alpha \left( \log\frac{\varpi}{\mu} \right)^k \qquad (\varpi\to0^+).
\end{align}$$

这不是只写一个 formal series。对任意非 index weight $B$，截断 remainder

$$\begin{align}
R_{\ell,B} := a_\ell - \sum_{\substack{ (\alpha,k)\in\mathcal E_\ell\\
\operatorname{Re}\alpha<B
}}
a_{\ell,\alpha,k}\, \chi(\varpi)\, \varpi^\alpha \left( \log\frac{\varpi}{\mu} \right)^k
\end{align}$$

必须满足

$$\begin{align}
\sup_{\ell\in\mathbb Z} \langle\ell\rangle^N
\sup_{0<\varpi\leq\varpi_*} \varpi^{-B} \left| (\varpi\partial_\varpi)^jR_{\ell,B}(\varpi) \right|
<\infty
\end{align}$$

for all $N,j$，在跨过 repeated indices 时允许右侧乘一个由截断决定的有限次 $1+|\log\varpi|$。在 $\varpi\geq\varpi_*/2$ 上要求

$$\begin{align}
\sup_{\ell,\varpi}
\langle\ell\rangle^N
\langle\varpi\rangle^M \left|
\partial_\varpi^j a_\ell(\varpi) \right|
<\infty
\end{align}$$

for all $N,M,j$。这些 seminorms 定义 Fréchet space

$$\begin{align}
\mathcal A_{\mathrm{phg}}^{E}.
\end{align}$$

以 section 11.9 的 normalization，scalar energy 与

$$\begin{align}
\sum_{\ell\in\mathbb Z} \int_0^\infty d\varpi\, \varpi \left| a_\ell(\varpi) \right|^2
\end{align}$$

等价。因此单项 $\varpi^\alpha(\log\varpi)^k$ 的 sharp finite-energy threshold 是

$$\begin{align}
\boxed{ \operatorname{Re}\alpha>-1.
}
\end{align}$$

本文原先的 radial index family 只含 integer/half-integer weights。与它相容且不在 leading $C\sqrt r$ 上新增 log 的 subspace 是

$$\begin{align}
\mathcal A_{\mathrm{phg}}^{1/2} := \left\{ a\in\mathcal A_{\mathrm{phg}}^{E} \mid
\alpha\in\frac12\mathbb N_0 \right\}.
\end{align}$$

这里刻意不含 $\alpha=-1/2$；该 resonance 会在 leading $r^{1/2}$ Maxwell potential 上产生 log，超出 section 4 的 ansatz。

还要区分一个严格更小的 category。若 Cartesian momentum-space Cauchy datum 在 $k=0$ smooth，则 polar harmonic regularity 给出

$$\begin{align}
a_\ell(\varpi) \sim \varpi^{|\ell|+1}
\sum_{n=0}^\infty a_{\ell,n}\varpi^{2n}.
\end{align}$$

多出的一个 $\varpi$ 来自 $d^2k=\varpi\,d\varpi\,d\vartheta$。因此：

- momentum-smooth/Schwartz Cauchy data 是 $\mathcal A_{\mathrm{phg}}^{1/2}$ 的一个小 subspace；
- general conormal threshold data 对应 spatial infinity 的 long-range tails，但仍可 global smooth 且 finite energy；
- $\delta^{(n)}(\varpi)$ 或 $\operatorname{Re}\alpha\leq-1$ 不在本 phase space；若要保留它们，必须另建 distributional/zero-energy sector。

### 11.12 Regulated monomial transform 与两个 asymptotic faces

令 $\nu=|\ell|$，并先研究 analytic family

$$\begin{align}
\mathcal I_{\nu,\alpha}^{\epsilon}(u,r) := 2 \int_0^\infty d\varpi\, \varpi^\alpha J_\nu(\varpi r) e^{-[\epsilon+i(r+u)]\varpi}, \qquad \epsilon>0.
\end{align}$$

[DLMF 10.22](https://dlmf.nist.gov/10.22) 的 Bessel--Laplace transform 给出

$$\begin{align}
\mathcal I_{\nu,\alpha}^{\epsilon} = \frac{ 2^{1-\nu} r^\nu \Gamma(1+\alpha+\nu)
}{ s^{1+\alpha+\nu}
}
\, \mathbf F \left( \frac{1+\alpha+\nu}{2}, \frac{2+\alpha+\nu}{2};
1+\nu; -\frac{r^2}{s^2} \right),
\end{align}$$

其中

$$\begin{align}
s=\epsilon+i(r+u),
\end{align}$$

而 $\mathbf F={}_2F_1/\Gamma(c)$ 是 regularized hypergeometric function。写

$$\begin{align}
z = -\frac{r^2}{s^2} = \left[ 1+\frac{u-i\epsilon}{r} \right]^{-2}.
\end{align}$$

在 $z=1$ 的两个 indicial exponents 是

$$\begin{align}
0, \qquad c-a-b = -\alpha-\frac12.
\end{align}$$

因此同一个 integral 有两个不同的 large-$r$ faces：

$$
\begin{array}{c|c|c}
\text{face}
&
\text{scalar radial weights}
&
\text{origin}
\\ \hline
\text{radiation}
&
r^{-j-1/2}
&
H_\nu^{(1)}\text{ branch}
\\
\text{threshold}
&
r^{-\alpha-1-n}
&
\varpi\sim r^{-1}
\end{array}
$$

其中 $j,n\in\mathbb N_0$。对非 resonant $\alpha$，[DLMF 15.8](https://dlmf.nist.gov/15.8) 的 $z=1$ connection formula 给出 threshold leading coefficient

$$\begin{align}
\boxed{ \mathsf T_\nu(\alpha) = \frac{ 2^{1-\nu} i^{-1-\alpha-\nu} \Gamma(1+\alpha+\nu) \Gamma(-\alpha-\tfrac12)
}{ \Gamma(\tfrac{1+\nu-\alpha}{2})
\Gamma(\tfrac{\nu-\alpha}{2})
}.
}
\end{align}$$

在 Maxwell potential $A_\phi$ 中，scalar weight

$$\begin{align}
p=\alpha+1+n
\end{align}$$

对应

$$\begin{align}
m=p-1=\alpha+n.
\end{align}$$

Radiation weight $p=j+1/2$ 则对应 $m=j-1/2$。两者 collision 的精确条件是

$$\begin{align}
\boxed{ \alpha+n=j-\frac12.
}
\end{align}$$

这时 $\mathsf T_\nu(\alpha+n)$ 的 $\Gamma(-\alpha-n-\tfrac12)$ 有 pole，而 hypergeometric 的两个 local solutions 合并；pole cancellation 留下额外一阶 $\log r$。若 spectral monomial 原有 $(\log\varpi)^k$，则：

$$\begin{align}
\alpha+n\in\frac12+\mathbb N_0 \quad\Longrightarrow\quad \deg_{\log r}=k+1.
\end{align}$$

Residue

$$\begin{align}
\operatorname*{Res}_{\alpha=j-1/2} \mathsf T_\nu(\alpha) = \frac{ 2^{1-\nu} i^{-j-\nu-1/2} \Gamma(j+\nu+\tfrac12) (-1)^{j+1}
}{ j!\, \Gamma(\tfrac{\nu-j+3/2}{2})
\Gamma(\tfrac{\nu-j+1/2}{2})
}
\end{align}$$

对 integer $\nu,j$ 永不为零，所以这个 log-raising map 没有隐藏 kernel。

另一方面，

$$\begin{align}
\boxed{ \mathsf T_\nu(m)=0 \quad\Longleftrightarrow\quad m\in\mathbb N_0,\ m\geq\nu.
}
\end{align}$$

这些全是 simple zeros。故在这种 integer threshold 上，$(\log\varpi)^k$ 的效果反而是

$$\begin{align}
k=0 \Longrightarrow \text{无 threshold face},
\end{align}$$

$$\begin{align}
k\geq1 \Longrightarrow \deg_{\log r}=k-1,
\end{align}$$

且 leading coefficient proportional to

$$\begin{align}
k(-1)^{k-1}\mathsf T_\nu'(m)\neq0.
\end{align}$$

这正好解释上一节的 momentum-smooth result：$\alpha=|\ell|+1+2n$ 全落在 $\mathsf T_{|\ell|}$ 的 zeros 上，所以 smooth Cauchy data 没有 threshold tail。最后，从 scalar field 积分到 $A_\phi$ 时，$p=1$ 即 $m=0$ 还有一个独立 radial resonance：

$$\begin{align}
\int\frac{dr}{r}(\log r)^q = \frac{(\log r)^{q+1}}{q+1}.
\end{align}$$

这产生 weight-zero 的 $P\log r$。

### Candidate Proposition 11.2：Hankel/Mellin forward map

映射

$$\begin{align}
\mathfrak H: \mathcal A_{\mathrm{phg}}^{1/2} \longrightarrow
\widetilde{\mathcal S}_{\mathrm M}, \qquad a\longmapsto
A[a]
\end{align}$$

在任意 finite $u$-slab 上 well defined 且 continuous，并有 full conormal polyhomogeneous expansion。其 index set 是以下集合的 extended union：

$$\begin{align}
\left\{ j+\frac12 \mid j\in\mathbb N_0 \right\}
\end{align}$$

的 radiation face，以及

$$\begin{align}
\left\{ \alpha+1+n \mid (\alpha,k)\in\mathcal E_\ell,\ n\in\mathbb N_0 \right\}
\end{align}$$

的 threshold face；相等 weights 按上面的 collision rule 增加 log multiplicity。Coefficientwise differentiation 和 radial integration 把它变为 section 11.2 的 Maxwell index set。

这一命题尚未通过 publication-grade analytic audit。要把下面的计算提纲提升为证明，至少还需：

1. 固定 $\mathcal A_{\mathrm{phg}}^{1/2}$ 的 branch、finite-part 和 Fréchet topology；
2. 证明 low/high-frequency split 对任意 $b$-derivative 的 uniform-in-$u,\ell$ remainder estimates；
3. 证明 artificial cutoff boundary terms逐阶且在相同拓扑中相消；
4. 完成 conormal Borel extension、continuity 及 full image 的 closed-graph statement。

下文保留为 proposed proof strategy 和 coefficient dictionary，不能单独作为 Proposition 11.2 的证明引用。

#### Proposed proof strategy

把 frequency integral 用 $\chi(\varpi r)$ 分成 $\varpi r\lesssim1$ 与 $\varpi r\gtrsim1$。

1. 在 low-frequency piece 令 $s=\varpi r$。Taylor expand $e^{-isu/r}$；每一项给出 $r^{-\alpha-1-n}$，其 Mellin coefficient 是 $\mathsf T_\nu(\alpha+n)$ 的 meromorphic continuation。
2. 在 high-frequency piece 使用 section 11.9 的 Hankel expansion。Outgoing phase cancellation 给出 $r^{-j-1/2}$；incoming phase 可 repeated integration by parts。
3. 两区 artificial cutoff 的 boundary terms逐阶相消。Mellin poles相撞时，double pole 的 inverse Mellin transform正是多一阶 $\log r$。
4. 对任意 weight $B$，先减去 $\operatorname{Re}\alpha<B$ 的 finite threshold sum，再移动 Mellin contour；section 11.11 的 remainder seminorms给出 $O(r^{-B-1})$ conormal estimate。Rapid $\ell$ decay使 angular derivatives uniform。

若上述四项 analytic obligations 成立，则余项 estimates 与 data seminorms 连续，且该 construction 是 flat-space 版本的 polyhomogeneous pushforward theorem。[Baskin--Vasy--Wunsch](https://arxiv.org/abs/1212.5141) 给出更一般 asymptotically Minkowski setting 中的 forward polyhomogeneity benchmark，但不直接给出这里的 Gamma-coefficient image theorem。

Radiation coefficients须理解为与 threshold subtraction使用同一 finite-part prescription：

$$\begin{align}
C_{j,\ell}^+(u) = e^{-i\nu\pi/2-i\pi/4} i^j\mathsf a_j(\nu) \operatorname{Fp} \int_0^\infty d\varpi\, a_\ell(\varpi) \left( \frac2{\pi\varpi} \right)^{1/2} \varpi^{-j} e^{-i\varpi u}.
\end{align}$$

这里 $\mathsf a_j(\nu)\neq0$ for all integer $\nu,j$，因为其 factors

$$\begin{align}
4\nu^2-(2s-1)^2
\end{align}$$

不可能为零。Finite part 不是可任选的 integration constant；它和 threshold coefficients来自同一个 regulated transform。

### 11.13 哪些 higher-log principal jets 可实现

固定 angular mode $\nu=|\ell|$。由于 $\mathsf T_\nu$ 的 poles/zeros 都是 simple，threshold-germ 到最高 radial-log coefficient 的 map 是 triangular，且每个非零 diagonal如下：

$$
\begin{array}{c|c|c}
\text{Maxwell level}
&
\text{target highest power}
&
\text{所需 spectral monomial}
\\ \hline
m\in\frac12+\mathbb N_0
&
L^K,\ K\geq1
&
\varpi^m(\log\varpi)^{K-1}
\\
m\in\mathbb N_{>0},\ m<\nu
&
L^K,\ K\geq0
&
\varpi^m(\log\varpi)^K
\\
m\in\mathbb N_{>0},\ m\geq\nu
&
L^K,\ K\geq0
&
\varpi^m(\log\varpi)^{K+1}
\\
m=0,\ \nu>0
&
L^K,\ K\geq1
&
(\log\varpi)^{K-1}
\\
m=0,\ \nu=0
&
L^K,\ K\geq1
&
(\log\varpi)^K
\end{array}
$$

最后两行已包括 $p=1$ radial integration 多生的一阶 log。若 Candidate Proposition 11.2 的 uniform estimates 和 conormal Borel step 完成，则可由低 weight 向高 weight递归消去已产生的 lower coefficients，并对得到的 rapid-$\ell$ coefficient family 作 conormal Borel summation。预期结论是：

> 任意 finite-order、smooth-in-$\phi$ 的 higher-log principal jet 都能由某个 global smooth finite-energy Fourier--Bessel solution 实现。

这里的 “principal jet” 是每个 radial level 的最高 log coefficient；该 candidate claim 不说 leading radiation、finite parts 和所有 lower-log coefficients 还能独立指定。Proposed Borel construction 可取

$$\begin{align}
a_\ell(\varpi) = \sum_{\alpha,k} c_{\ell,\alpha,k} \chi\left( \frac{\varpi}{\epsilon_{\ell,\alpha,k}} \right) \varpi^\alpha(\log\varpi)^k,
\end{align}$$

并递归选 $\epsilon_{\ell,\alpha,k}\downarrow0$ 使所有 section 11.11 seminorms 收敛。

特别地，section 11.7 的 $m=1/2$、$L^2$ coefficient 的 proposed actual representative 取

$$\begin{align}
a_\ell(\varpi) \supset c_\ell \chi(\varpi) \varpi^{1/2}\log\varpi.
\end{align}$$

若 Candidate Proposition 11.2 的 pushforward theorem 成立，这个 representative 必然同时产生由同一 $a_\ell$ 决定的 nonzero leading radiation datum；它不实现 section 11.7 中额外指定的 $C=0$。

### 11.14 Candidate full forward map 的 kernel、image 与 cokernel

记 $\mathfrak J_{\mathrm{th}}$ 只保留 threshold-face coefficients。由 $\mathsf T_\nu$ 的 zero set，

$$\begin{align}
\ker\mathfrak J_{\mathrm{th}} = \mathcal A_{\mathrm{flat}} \oplus \left\{ \text{log-free germs supported at }
\alpha=m\in\mathbb N_0,\ m\geq|\ell| \right\}.
\end{align}$$

第二项包含 momentum-smooth germs；它们不是 zero solutions，只是只出现在 radiation face。对 higher-log principal sector，上一节的 triangular diagonal 非零，所以相应 principal map 的 cokernel 为零。

在 Candidate Proposition 11.2 的 topology 和 remainder theorem 下，若保留 full future radiation datum $C(u,\phi)$，则

$$\begin{align}
\widehat C_\ell^+(\varpi) = e^{-i|\ell|\pi/2-i\pi/4} \left( \frac2{\pi\varpi} \right)^{1/2} a_\ell(\varpi)
\end{align}$$

逐点恢复 $a_\ell$。因此预期有

$$\begin{align}
\boxed{ \ker\mathfrak H=0.
}
\end{align}$$

预期的 full image 不是 section 11.8 的全部 formal solution space，而是 graph

$$
\boxed{
\operatorname{Im}\mathfrak H
=
\left\{
J\in\widetilde{\mathcal S}_{\mathrm M}
\ \middle|\
\begin{array}{l}
a_\ell=
e^{i|\ell|\pi/2+i\pi/4}
\sqrt{\pi\varpi/2}\,
\widehat C_\ell^+
\in\mathcal A_{\mathrm{phg}}^{1/2},
\\[2mm]
J_{\mathrm{sub}}
=
\mathcal R_{\mathrm{HM}}[a]
\text{ modulo residual gauge}
\end{array}
\right\}.
}
$$

$\mathcal R_{\mathrm{HM}}$ 是 Candidate Proposition 11.2 的 Hankel/Mellin finite-part recursion。若该 analytic package 成立，actuality 的必要充分条件不只是满足 Maxwell radial EOM；所有 subleading cut constants 还须等于同一个 $C$ 的 zero-frequency spectral germ所给出的 residues/finite parts。

在同一 analytic hypotheses 下，full cokernel

$$\begin{align}
\widetilde{\mathcal S}_{\mathrm M}/\operatorname{Im}\mathfrak H
\end{align}$$

预期非零。一个 candidate cokernel class正是

$$\begin{align}
C=0, \qquad V_{1/2}=c(\phi)L^2\neq0.
\end{align}$$

在所声明 spectral class 中，若它来自 finite-energy global solution，则 $C=0$ 的 Fourier transform先推出 $a=0$，继而 $V_{1/2}=0$。把这个 argument 提升为对完整 finite-energy solution space 的 cokernel theorem，仍依赖 Candidate Proposition 11.2 的 asymptotic image theorem。

### 11.15 Zero-frequency classification 的 audited verdict

已证明的 positive branch 是：

$$
\boxed{
\begin{array}{c}
\text{momentum-smooth global data}
\\
\Downarrow
\\
\text{log-free radiation face}
\end{array}
}
$$

$$
\boxed{
\begin{array}{c}
\text{finite-energy conormal zero-frequency data}
\\
\Downarrow
\\
\text{linked radiation + threshold powers/logs}
\end{array}
}
\qquad
\text{(candidate；uniform pushforward theorem open)}
$$

$$\begin{align}
\boxed{ \text{arbitrary formal Maxwell tower}
\not\Longrightarrow
\text{global finite-energy solution}.
}
\end{align}$$

The last implication is a candidate full-image statement beyond the proved band-limited class；its proposed separating example is section 11.14。

Coefficient calculations支持 higher logs 不是显然的 “formal fake”，并预言其与 leading radiation datum 不能独立指定；但 global smooth finite-energy realization 和精确 image criterion 目前仍是 analytic proof obligation。Coulomb $E_0$ 则是 section 11.10 的 punctured/topological sector，不属于 smooth scalar-dual classification。

---

## 12. On-shell symplectic flux balance

在 Maxwell background 和两条 linearized solutions 上，

$$\begin{align}
d\omega=0.
\end{align}$$

对 regulated slab 使用 Stokes theorem，再取 $R\to\infty$，并固定 inner-boundary data，得到

$$\begin{align}
\boxed{ \Omega_{\Sigma_+}^{\mathrm{ren}} - \Omega_{\Sigma_-}^{\mathrm{ren}} + \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \left( \delta E\wedge\delta G + \delta N\wedge\delta C \right) = 0
}.
\end{align}$$

这是 open-system flux-balance law，而不是 ordinary conservation of $\Omega_{\Sigma}$。

由于

$$\begin{align}
\dot E=0,
\end{align}$$

Coulomb flux 的 endpoint dependence 可进一步写成

$$\begin{align}
\int_{u_-}^{u_+}du\, \delta E\wedge\delta G,
\end{align}$$

而 radiative sector 是

$$\begin{align}
\int_{u_-}^{u_+}du\, \delta\dot C\wedge\delta C.
\end{align}$$

这两个 terms 均由同一个 $S_{\mathrm{ren}}$ 的 variation 导出。

### 12.1 Proper gauge degeneracy

对 field-independent gauge parameter $\eta$，

$$\begin{align}
\omega(\delta A,d\eta) = -d\left( \eta\,\delta{*F} \right) + \eta\,\delta(d{*F}).
\end{align}$$

在线性化 Maxwell equations 上，第二项为零。因此若 $\eta$ 在所选 hypersurface 的所有 boundaries 上消失，或具有 compact support，

$$\begin{align}
\Omega_{\mathrm{ren}}(\delta A,d\eta)=0
\end{align}$$

对所有 tangent solutions 成立。这样的 transformations 是 proper gauge。

不在 asymptotic cut 上消失的 $\eta_0(u,\phi)$ 留下 boundary pairing，不能在未计算 charge 前称为 proper gauge；large-$U(1)$ analysis 属于下一工作包。

---

## 13. Large $U(1)$ charge and reduction

这一节采用 roadmap 的 convention

$$\begin{align}
\delta H_\alpha = \Omega_{\mathrm{ren}}(\delta A,d\alpha).
\end{align}$$

若使用相反的 Hamiltonian-vector-field convention，以下所有 $H_\alpha$ 整体变号。

### 13.1 Cut charge

由

$$\begin{align}
\omega(\delta A,d\alpha) = -d\left( \alpha\,\delta{*F} \right)
\end{align}$$

可得

$$\begin{align}
\delta H_\alpha(u) = -\int_{S^1_u} \alpha\,\delta{*F}.
\end{align}$$

在本文 orientation 和 metric convention 下，

$$\begin{align}
(*F)_\phi = rF^{ur} = r\partial_rA_u \longrightarrow E.
\end{align}$$

所以对 field-independent $\alpha(u,\phi)$，

$$\begin{align}
\boxed{ \delta H_\alpha(u) = -\int_0^{2\pi}d\phi\, \alpha(u,\phi)\delta E(\phi)
}
\end{align}$$

是 integrable 的，并可取

$$\begin{align}
\boxed{ H_\alpha(u) = -\int_0^{2\pi}d\phi\, \alpha(u,\phi)E(\phi)
}.
\end{align}$$

Extended counterterms 只依赖 gauge-invariant $\mathcal E_R$ 和 $\mathcal C_R$，因此不会给这个 gauge charge 添加 anomaly。

### 13.2 Charge flux

由于 $\dot E=0$，

$$\begin{align}
\partial_uH_\alpha = -\int_0^{2\pi}d\phi\, \dot\alpha E.
\end{align}$$

相应的 variation 满足

$$\begin{align}
\delta H_\alpha(u_+) - \delta H_\alpha(u_-) = -\int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \dot\alpha\,\delta E.
\end{align}$$

另一方面 residual gauge transformation 作用为

$$\begin{align}
\delta_\alpha G=\dot\alpha, \qquad \delta_\alpha E=0, \qquad \delta_\alpha C=\delta_\alpha N=0,
\end{align}$$

所以 null-boundary symplectic flux 是

$$\begin{align}
\int_{\mathscr I_I} \omega_{\mathscr I}(\delta,\delta_\alpha) = \int_{u_-}^{u_+}du\int_0^{2\pi}d\phi\, \dot\alpha\,\delta E.
\end{align}$$

这与 section 12 的 flux-balance law 精确相消。

### 13.3 Proper versus large

一个 gauge parameter 是 proper 的充分条件为：

$$\begin{align}
\alpha|_{\partial\Sigma}=0
\end{align}$$

并在所有其他 boundaries 上也消失。此时它对任意 tangent variation 的完整 hypersurface presymplectic pairing 为零。

若 $\alpha|_{S^1_u}\neq0$，则一般有

$$\begin{align}
\delta H_\alpha
\neq
0,
\end{align}$$

因此它是 large gauge transformation。

特别地，$\dot\alpha=0$ 时 null-boundary flux 为零，但

$$\begin{align}
H_\alpha = -\int\alpha E
\end{align}$$

仍可非零。故不能只代入 $\mathscr I$ flux form 就把 time-independent residual transformations 判成 proper gauge；必须同时保留 cut term。

### 13.4 Algebra

Pure Maxwell 中

$$\begin{align}
\delta_\beta E=0,
\end{align}$$

所以

$$\begin{align}
\{H_\alpha,H_\beta\} = \delta_\beta H_\alpha = 0.
\end{align}$$

在 field-independent parameter sector，large-$U(1)$ algebra 是 abelian，且没有 classical central term。

### 13.5 Reduced space

Gauge-saturated parent space 先 quotient 掉所有在 relevant boundaries 消失的 gauge transformations。Radial gauge 给出这个 quotient 的 continuous representative；nonvanishing residual $\alpha(u,\phi)$ 则必须用 cut moment map 判定，不能仅凭 $\mathscr I$ flux quotient。

这里还缺少三个选择：inner-boundary polarization、total electric charge是否固定，以及 $C_\pm$ 或 memory 是否允许变化。因此本节的列表只能算 pre-reduction data，不能定义唯一 reduced phase space。完整 kernel、endpoint modes 和 quotient topology 在 section 14 给出。

---

## 14. Full renormalized two-form and zero-mode reduction

### 14.1 为什么 flux form 不是 phase-space two-form

On shell 的 relative identity 是

$$\begin{align}
\Omega_{\Sigma_+}^{\mathrm{ren}} - \Omega_{\Sigma_-}^{\mathrm{ren}} + \Omega_{\mathscr I_I}^{\mathrm{ren}} =0.
\end{align}$$

因此

$$\begin{align}
\Omega_{\mathscr I_I}^{\mathrm{ren}} = \int_Idu\int_{S^1}d\phi\, \left( \delta E\wedge\delta G + \delta\dot C\wedge\delta C \right)
\end{align}$$

是两个 cuts 之间的 symplectic flux；它本身没有记录任一 cut 上的全部 conserved/corner data。Reduced phase space 应由一张完整 initial lid 的 $\Omega_{\Sigma_{u_0}}^{\mathrm{ren}}$ 定义，而 $\Omega_{\mathscr I_I}^{\mathrm{ren}}$ 只描述该 phase space 的 open-system evolution。

这一区分解释了 section 13.3 的现象：$\dot\alpha=0$ 时 null flux pairing 为零，但 cut charge

$$\begin{align}
H_\alpha(u) = -\int_{S^1}d\phi\,\alpha E
\end{align}$$

一般不为零。故 “flux kernel” 与 “full presymplectic kernel” 不是同一个对象。

### 14.2 Exact null-lid form

在 radial gauge 上，section 10 的 corner subtraction 是 field-space exact，因此不改变 two-form。对 fixed $u$，

$$\begin{align}
\boxed{ \Omega_{\Sigma_u}^{\mathrm{ren}} = \int_{R_0}^{\infty}dr\int_{S^1}d\phi\, \delta\left( \frac{\partial_rA_\phi}{r} \right) \wedge \delta A_\phi
}.
\end{align}$$

记 tangent vector 在这张 lid 上的 angular component 为

$$\begin{align}
v(r,\phi):=\delta_vA_\phi.
\end{align}$$

则

$$\begin{align}
\Omega_{\Sigma_u}^{\mathrm{ren}}(v,w) = \int dr\,d\phi\, \frac{ \partial_rv\,w-\partial_rw\,v
}{r}.
\end{align}$$

所有 compactly supported $w(r,\phi)$ 都是合法 characteristic test data：radial Maxwell constraint

$$\begin{align}
\partial_r(r\partial_rA_u) = \partial_\phi \left( \frac{\partial_rA_\phi}{r} \right)
\end{align}$$

只需由 radial integration 解出相应的 $A_u$ variation，并不限制 $w$。

若 $v$ 与每个这样的 $w$ 配对为零，则 integration by parts 给出

$$\begin{align}
\frac{2\partial_rv}{r} - \frac{v}{r^2} =0,
\end{align}$$

所以

$$\begin{align}
v(r,\phi)=\sqrt r\,f(\phi).
\end{align}$$

现在固定 inner pullback，

$$\begin{align}
\delta A_\phi|_{r=R_0}=0.
\end{align}$$

于是 $v(R_0,\phi)=0$ 强制 $f=0$。因此 radial-gauge slice 上的 exact lid form 是 weakly nondegenerate。所谓 “leading radiative zero mode” 只会在丢掉 inner/cut pairing后出现；它不是 full form 的 kernel。

还需检查 $A_u$ 没有留下漏算的 direction。两条 tangent solutions 若有相同的 $A_\phi$ characteristic datum，则 radial constraint 只允许它们的 $A_u$ 之差为 homogeneous $E\log r+G$。Fixed inner electric flux 去掉 $E$；剩余 $G$ 是一个在该 lid 上取零、但具有指定 normal derivative 的 gauge parameter所生成的 proper direction。因此 $A_\phi$ kernel calculation 已经穷尽 fixed-inner leaf 上的 physical tangents。

在 gauge-saturated parent space 中，先 quotient

$$\begin{align}
\mathcal G_0 := \left\{ \alpha:
\alpha|_{\partial\Sigma}=0 \right\}.
\end{align}$$

Section 5 的 coefficientwise radial primitive 给出连续 radial-gauge slice，而且在 fixed inner gauge frame 下不存在 nonzero residual representative。因此

$$\begin{align}
\boxed{ \ker\Omega_{\Sigma_u}^{\mathrm{ren}} = d\mathcal G_0
}
\end{align}$$

as a statement on the parent pre-phase space。它要求对 every tangent variation 配对为零，而不是只在 Minkowski point 或只对 radiative tests 为零。

### 14.3 Coulomb modes、cut moment map 与 total charge

定义 finite radial momentum

$$\begin{align}
\Pi(\phi) := \int_{R_0}^{\infty}dr\, \frac{F_{r\phi}}r.
\end{align}$$

其 convergence 来自

$$\begin{align}
\frac{F_{r\phi}}r = \frac{C}{2r^{3/2}} + \frac{P}{r^2} + O(r^{-5/2}L^{K_*}).
\end{align}$$

Radial constraint 给出 exact relation

$$\begin{align}
\boxed{ \partial_\phi\Pi = E-E_{\mathrm{in}}, \qquad E_{\mathrm{in}} := R_0\partial_rA_u|_{R_0}
}.
\end{align}$$

因此对 residual gauge direction

$$\begin{align}
\delta_\alpha A_\phi=\partial_\phi\alpha, \qquad \delta_\alpha F=0,
\end{align}$$

有

$$\begin{align}
\Omega_{\Sigma_u}^{\mathrm{ren}} (\delta,\delta_\alpha) = -\int_{S^1}d\phi\, \alpha\, \delta(E-E_{\mathrm{in}}).
\end{align}$$

这正是 section 13 的 cut moment map；若 inner data fixed，便恢复

$$\begin{align}
\delta H_\alpha = -\int\alpha\,\delta E.
\end{align}$$

逐 angular Fourier mode 看：

1. $n\neq0$ 的 $\alpha_n$ 作用于 $Q_n$，并由 $E_n$ 的 moment map生成；它不是 full kernel。
2. $u$-independent、$\phi$-constant $\alpha_0$ 满足 $d\alpha_0=0$，是 reducibility parameter。其 charge

$$\begin{align}
H_{\alpha_0}=-2\pi\alpha_0E_0
\end{align}$$

   可以非零，但它没有对应的 nonzero tangent vector；不能把它再算一次 kernel。
3. Integrated Gauss law 给出

$$\begin{align}
2\pi E_0 = 2\pi E_{\mathrm{in},0}.
\end{align}$$

   Fixed inner electric flux 因而固定 total charge $E_0$。不同 $E_0$ 是不同 symplectic leaves/superselection sectors，而不是同一 leaf 内应被 quotient 的方向。

若要允许 $E_0$ 连续变化，必须同时开放 source/inner edge，并加入 conjugate phase $\vartheta_0$：

$$\begin{align}
\Omega_{\mathrm{edge},0} = \delta(2\pi E_0) \wedge \delta\vartheta_0.
\end{align}$$

否则 “把所有 charge sectors 合成一个 symplectic manifold” 没有定义。

还有一个独立的 annular mode。若 exterior topology 允许 flat holonomy

$$\begin{align}
A\longmapsto A+h\,d\phi,
\end{align}$$

则

$$\begin{align}
\Omega_{\Sigma_u}^{\mathrm{ren}}(\delta,\delta_h) = h \int_{S^1}d\phi\,\delta\Pi
\end{align}$$

up to the ordering convention of the two arguments。因此 $Q_0$ 与 $\Pi_0$ 配对，并非自动的 zero mode。只有额外固定 $\Pi_0$ 时，$Q_0$ shift 才进入 kernel；此时应固定或 quotient 它。对 compact $U(1)$，允许 winding gauge transformations 时 $Q_0$ 是 periodic holonomy，topological block 是 $T^*S^1$；对 additive $\mathbb R$ gauge group 则是 $T^*\mathbb R$。

### 14.4 Null-flux kernel

为了精确指出只看 $\mathscr I$ 会多出什么，令

$$\begin{align}
v=(e,g,c)
\end{align}$$

是

$$\begin{align}
E(\phi),\qquad G(u,\phi),\qquad C(u,\phi)
\end{align}$$

上的 tangent vector，并先允许 $C_+$、$C_-$ independent variation。对任意

$$\begin{align}
w=(\widetilde e,\widetilde g,\widetilde c),
\end{align}$$

有

$$\begin{align}
\Omega_{\mathscr I_I}(v,w) = \int d\phi \left[ e\int_Idu\,\widetilde g - \widetilde e\int_Idu\,g \right]
\end{align}$$

$$\begin{align}
\qquad + \int_Idu\int d\phi\, \left( \dot c\,\widetilde c - \dot{\widetilde c}\,c \right).
\end{align}$$

先取 arbitrary $\widetilde g$ 和 $\widetilde e$，得到

$$\begin{align}
e=0, \qquad \int_Idu\,g=0.
\end{align}$$

再取 endpoint-supported-away 的 $\widetilde c$，得到 $\dot c=0$。写 $c=f(\phi)$ 后，

$$\begin{align}
\Omega_C(c,\widetilde c) = -\int_{S^1}d\phi\, f(\phi) \delta_{\widetilde c} \left( C_+-C_- \right).
\end{align}$$

因为 memory 可以任意变化，$f=0$。故

$$\begin{align}
\boxed{ \ker\Omega_{\mathscr I_I} = \left\{ (0,g,0):
\int_Idu\,g=0 \right\}
}
\end{align}$$

for free endpoint variations。

令

$$\begin{align}
\Gamma(\phi) := \int_Idu\,G(u,\phi).
\end{align}$$

每个 kernel element 可唯一写成

$$\begin{align}
g=\partial_u\alpha_{00}, \qquad \alpha_{00}(u_-)=\alpha_{00}(u_+)=0,
\end{align}$$

所以它正是 endpoint-trivial proper history gauge，而不是 large-$U(1)$。Quotient 后 Coulomb flux block 为

$$\begin{align}
\boxed{ \Omega_E^{\mathrm{quot}} = \int_{S^1}d\phi\, \delta E\wedge\delta\Gamma
}.
\end{align}$$

若 fixed-charge leaf 要求 $\delta E_0=0$，则 $\Gamma_0$ 是该 pulled-back block 的 moment-map orbit；Marsden--Weinstein reduction 还要 quotient $\Gamma_0$。若加入 section 14.3 的 edge pair并允许 $\delta E_0\neq0$，则 $(E_0,\Gamma_0)$ 可保留为 ordinary canonical pair。

### 14.5 Endpoint radiative modes

定义 memory

$$\begin{align}
\mathsf m(\phi) := C_+(\phi)-C_-(\phi).
\end{align}$$

对 $u$-independent shift

$$\begin{align}
\delta_fC=f(\phi)
\end{align}$$

有

$$\begin{align}
\boxed{ \iota_{\delta_f}\Omega_C = -\int_{S^1}d\phi\, f\,\delta\mathsf m
}.
\end{align}$$

所以 common soft shift 与 memory 配对。Endpoint choices 的 kernel 是：

| Endpoint choice | Radiative kernel |
|---|---|
| $C_+$、$C_-$ 均可变 | $0$ |
| 固定 $C_+$ 和 $C_-$ | $0$ |
| 固定其中一个 endpoint | $0$ |
| 只固定 memory $\mathsf m$，common endpoint value 可变 | $\delta C=f(\phi)$ |

最后一行若要得到 reduced space，必须在两种操作中选一个：

$$\begin{align}
C\sim C+f(\phi),
\end{align}$$

或重新开放 $\delta\mathsf m$，把 soft endpoint value 与 memory 一起保留。不能同时固定 memory 又把 common soft value称为 physical canonical coordinate。

### 14.6 Quotient topology

令 $\mathcal X_{\Sigma,q}$ 是：

- section 4 的 weighted polyhomogeneous-conormal characteristic data；
- 满足 radial Maxwell constraint；
- fixed inner pullback 和 fixed total charge $q=2\pi E_0$；
- 使用 `definitions.md` 的 coefficient/remainder Fréchet topology。

Proper gauge parameters 取同类 weighted space并在所有 relevant boundaries vanish。Section 5 的 radial primitive

$$\begin{align}
\lambda(r,u,\phi) = \int_{R_0}^{r}ds\,A_r(s,u,\phi)
\end{align}$$

在声明的 seminorms 中 continuous；固定 $\lambda(R_0)=0$ 后给出 continuous gauge slice。因此 proper-gauge image 是 closed and complemented，并有

$$\begin{align}
\boxed{ \mathcal S_q^{\mathrm{red}} := \widetilde{\mathcal S}_q/\mathcal G_0 \simeq \mathcal X_{\Sigma,q}^{\mathrm{RG}}
}
\end{align}$$

as a Hausdorff Fréchet manifold。Section 14.2 证明其 $\Omega_{\Sigma}^{\mathrm{ren}}$ weakly symplectic。

Flux side 上，continuous map

$$\begin{align}
\mathcal I_u: G\longmapsto \Gamma=\int_Idu\,G
\end{align}$$

有 closed kernel，并有 continuous splitting

$$\begin{align}
G(u,\phi) = \frac{\Gamma(\phi)}{|I|} + \left[ G(u,\phi)-\frac{\Gamma(\phi)}{|I|} \right].
\end{align}$$

故

$$\begin{align}
C^\infty(I\times S^1)/\ker\mathcal I_u \simeq C^\infty(S^1)
\end{align}$$

是 Hausdorff Fréchet。Fixed-memory 时的 common-shift subspace 同样 closed and complemented，因此其 quotient 也是 Hausdorff Fréchet。

这里没有把 formal asymptotic tower 与 actual PDE image混同。$\mathcal S_q^{\mathrm{red}}$ 可先在完整 characteristic solution space上定义；sections 11.9--11.15 构造的 actual spectral/conormal subspaces取 induced topology，并嵌入相应 charge leaf。Arbitrary formal tower仍不自动成为 actual point，但这不再产生额外 presymplectic zero mode。

### Theorem 14.1

在 fixed finite $u$-slab、gauge-saturated Maxwell parent space、fixed inner data、fixed total-charge leaf和 free radiative memory下：

1. full renormalized lid form 的 kernel 恰为 proper gauge；
2. radial-gauge quotient 是 Hausdorff weakly symplectic Fréchet manifold；
3. null-flux form 单独的 kernel 恰为 $\int_Ig\,du=0$ 的 endpoint-trivial $G$ gauge；
4. $u$-independent $C$ shift 与 memory 配对，不是 zero mode；
5. total charge 是 leaf label；跨 leaves 的 symplectic completion需要 conjugate edge phase；
6. annular $Q_0$ holonomy在 full lid form中与 integrated radial momentum配对，只有额外冻结其 conjugate momentum后才成为 zero mode。

因此 zero-mode quotient 已完成，但答案是 polarization-dependent family，而不是一个 boundary-condition-independent 的唯一 phase space。

---

## 15. Stage status

| Work package | Status | Evidence |
|---|---|---|
| Source powers/log support | Checked | arXiv source 和 PDF eqs. (2.9)，含 EOM-derived cap 脚注 |
| Off-shell component index family | Completed for finite caps | Section 4 |
| Radial gauge accessibility | Completed for gauge-saturated parent | Section 5 |
| Abstract off-shell variation | Completed | Section 2 |
| Exact coordinate action/potential | Mathematica-verified | Section 6 |
| Full Stage 1A divergence ledger | Completed | Section 7 power counting |
| Strict intrinsic gauge-invariant CT | Obstructed | Proposition 8.1 |
| Extended gauge-invariant CT | Constructed | Section 9 |
| $C^2_{\mathrm{loc}}$ radial renormalization | Proven under stated topology | Proposition 9.1 |
| Full finite endpoint/lid/corner structure | Completed | Section 10 |
| Maxwell radial/angular recursion | Completed | Sections 11.3--11.5 |
| Preservation of finite-log families | Proven formally | Section 11.6 |
| Literature log-cap claim | Restricted/corrected | Section 11.7 |
| Formal Maxwell pre-phase space | Constructed | Section 11.8 |
| Band-limited actual radiative solutions | Completed | Proposition 11.1: global smooth existence, unique radiation representation, continuous dependence |
| Constant Coulomb extension | Completed on exterior collar | Section 11.10 |
| Symplectic flux-balance law | Completed on actual solutions in the declared class | Sections 11.9--12 |
| Proper compact gauge degeneracy | Completed | Section 12.1 |
| Zero-frequency threshold coefficients | Finite coefficient identities checked；uniform image theorem open | Sections 11.11--11.15 and `Paper I proof audit.md` A5 |
| Realization of higher-log principal jets | Candidate；not publication-ready | Sections 11.13--11.15 |
| Large-$U(1)$ charge and flux | Completed for field-independent parameters | Section 13 |
| Proper/large distinction | Completed using full cut plus flux data | Section 13.3 |
| Classical charge algebra | Completed | Section 13.4 |
| Full zero-mode quotient | Completed after fixing polarization | Theorem 14.1 |
| Quotient topology | Hausdorff Fréchet; weak symplectic on each fixed-charge leaf | Section 14.6 |

---

## 16. Sources and verification

Source:

- Jorrit Bosma, Marc Geiller, Sucheta Majumdar and Blagoje Oblak, [*Radiative Asymptotic Symmetries of 3D Einstein-Maxwell Theory*](https://arxiv.org/abs/2311.09156), especially eqs. (2.7)--(2.13) and the footnote below eq. (2.9).
- NIST Digital Library of Mathematical Functions, [§10.17, *Asymptotic Expansions for Large Argument*](https://dlmf.nist.gov/10.17), especially eq. (10.17.5) and the real-argument remainder bounds.
- Dean Baskin, András Vasy and Jared Wunsch, [*Asymptotics of radiation fields in asymptotically Minkowski space*](https://arxiv.org/abs/1212.5141), Theorem 1.1 and Remark 1.5.

Verified:

- PDF pages containing eqs. (2.7)--(2.13) and the EOM-origin footnote were visually inspected；
- Mathematica verified $g^{\mu\nu}$、$\det g$、$F_{\mu\nu}F^{\mu\nu}$ and the exact coordinate Lagrangian；
- Mathematica verified

$$\begin{align}
\lim_{r\to\infty}r\mathscr L_{\mathrm{RG}} = \frac12(E^2+C\dot C)
\end{align}$$

  for the complete leading off-shell ansatz；
- Mathematica verified the radial canonical momenta

$$\begin{align}
\pi_u=r\partial_rA_u, \qquad \pi_\phi=\frac{F_{u\phi}-F_{r\phi}}r
\end{align}$$

  and their leading limits；
- Mathematica verified

$$\begin{align}
\frac12C\dot C=\frac14\partial_u(C^2)
\end{align}$$

  and the coefficientwise radial derivative formula in section 5.2。
- Mathematica independently derived all three exact radial-gauge Maxwell component equations in section 11.1；
- Mathematica reduced the polynomial recursions at $m=0$ and $m=1/2$ to the displayed literature equations；
- Mathematica constructed the $V_{1/2}=aL^2$ higher-log recursion check and returned

$$\begin{align}
\dot V_{3/2} = a \left( \frac3{32} + \frac{19}{16}L - \frac5{16}L^2 \right).
\end{align}$$

- Mathematica verified symbolically that

$$\begin{align}
J_{|\ell|}(\varpi r)e^{-i\varpi t+i\ell\phi}
\end{align}$$

  solves the $2+1$ dimensional wave equation for integer $\ell$；
- Mathematica verified $2J_\ell=H_\ell^{(1)}+H_\ell^{(2)}$ for $\ell=0,\ldots,5$ and the regular small-$r$ series for $\ell=0,\ldots,4$；
- Mathematica verified

$$\begin{align}
dF=(\Box\varphi)\operatorname{vol}, \qquad \partial_\mu(rF^{\mu\nu})=0
\end{align}$$

  for the displayed $F=*d\varphi$ components；
- Mathematica verified the displayed leading Bondi components and radial-gauge potential coefficients；
- Mathematica verified

$$\begin{align}
\lim_{z\to\infty} \sqrt z\, e^{-i(z-\ell\pi/2-\pi/4)} H_\ell^{(1)}(z) = \sqrt{\frac2\pi}
\end{align}$$

  for $\ell=0,\ldots,4$；
- Mathematica verified the exact Wronskian integration-by-parts identity used in section 14.2 and returned zero for the kernel operator on $v=\sqrt r\,f$；
- Mathematica verified the affine-endpoint radiative pairing

$$\begin{align}
\Omega_C = \delta(C_+-C_-)\wedge\delta C_-
\end{align}$$

  on the affine interpolation sector；
- Mathematica verified

$$\begin{align}
\iota_{\delta_f}\Omega_C = -f\,\delta(C_+-C_-)
\end{align}$$

  for a general quadratic polynomial test history；
- DLMF eq. (10.17.5) and its real-argument remainder section were inspected；
- Baskin--Vasy--Wunsch Theorem 1.1 and Remark 1.5 were checked in extracted text and visually on PDF pages 3--4；their result is used only as a solution-to-expansion benchmark, not as a surjectivity claim。

Assumptions:

- fixed Minkowski background and fixed Bondi frame；
- $u$ lies in a finite interval；
- each $K_m$ is finite；
- coefficient families and variations are bounded in the seminorms of `definitions.md`；
- extended counterterms may depend on normal field strength；
- $r=R$ and $u=u_\pm$ orientations are those used in section 2。

Not verified:

- existence of a maximum after enlarging beyond standard finite-log polyhomogeneous spaces；
- global gauge accessibility for parent spaces not defined by gauge saturation；
- uniqueness of the extended renormalization scheme；
- realization of arbitrary higher-log formal towers by global Maxwell solutions；
- uniform conormal estimates、cutoff independence、Borel extension and closed-image topology for Candidate Proposition 11.2；
- a boundary-condition-independent phase space joining distinct total-charge leaves without an edge phase；such an object is not defined by the present variational problem。
