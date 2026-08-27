# Stage 3：4D nonlinear vacuum gravity at first radial-log order

## 0. Current verdict

本 note 把 Stage 2B 的 free bridge 升级为 full nonlinear Einstein gravity，但仍限制在：

$$\begin{align}
\Lambda=0, \qquad u\in[u_-,u_+], \qquad q_{AB}=\overset{\circ}{q}_{AB}, \qquad \delta q_{AB}=0,
\end{align}$$

并先令 variations 在 $u=u_\pm$ 附近消失。

The full note now completes the finite-order Stage 3A--3E gate：

1. nonlinear Bondi--Sachs gauge 的局部几何来源；
2. exact determinant parametrization；
3. 不使用 Einstein equations 的 componentwise polyhomogeneous history space；
4. physical/conformal metric 的 radial-weight dictionary；
5. first-log seed 与 GLZ、Freidel--Riello expansions 的精确对应；
6. nonlinear multiplication、inverse metric、determinant和 gauge-fixed metric map 的 closure；
7. 一个 exact spherical off-shell action audit，证明 action finiteness 本身不会自动推出 $G_{rr}=0$ 所给的 $\beta_1=0$。
8. small semiglobal harmonic-gauge PDE solutions 到 no-caustic luminosity-radius Bondi histories 的 exact nonlinear gauge functor、mixed-index preservation、tame remainder estimate和 action/CPS continuity。

Cross-stage status：

- generic angular/tensor EH + GHY divergence ledger 和 relative counterterm descent are completed in sections 8--9；
- endpoint/lid/joint restoration and the finite relative scheme are completed in sections 10--11；
- the nonlinear Einstein reduction and the fixed-$q$ FR/GLZ dictionary are completed in section 12；
- no Penrose condition or $E_{\rm div}=0$ is needed for the displayed fixed-round first-log divergent weights。`dynamical celestial metric.md` section 5.1 已完成 general-$q$ Dirichlet/FR exact off-shell dictionary并明确 GLZ 只有 on-shell pullback；
- strict intrinsic/conformal-covariant all-order completeness is obstructed on the general-$q$ domain；finite-$N$ remainder estimates和 harmonic-to-Bondi actual PDE bridge 已完成。Two-variable maximality与 $N\to\infty$ convergence仍分别属于 P3 和 P2。

---

## 1. Regulated model and action

### 1.1 Physical and conformal frames

Physical metric 记为

$$\begin{align}
\widetilde g_{\mu\nu},
\end{align}$$

conformal metric 记为

$$\begin{align}
g_{\mu\nu} = \Omega^2\widetilde g_{\mu\nu}, \qquad \Omega=\frac1r, \qquad \delta\Omega=0.
\end{align}$$

Regulated region 为

$$\begin{align}
M_{R,I} = \left\{ R_0\leq r\leq R, \quad u_-\leq u\leq u_+ \right\}.
\end{align}$$

Finite-cutoff action 是 physical-frame relative Einstein action

$$\begin{aligned}
S_R^{\rm D}[\widetilde g] = & \frac1{16\pi G} \int_{M_{R,I}} d^4x\sqrt{-\widetilde g}\, \widetilde R\\
& +\frac1{8\pi G}
\int_{\mathcal B_R}
d^3x\sqrt{-\widetilde\gamma}\, \widetilde K +S_{R_0} +S_{\rm lids} +S_{\rm joints}.
\end{aligned}$$

Minkowski vacuum 的 field-independent outer divergence 可以由 reference term 删除；这不等于 Stage 2B 的 fluctuation/tadpole subtraction。Nonlinear field-dependent terms不得被减去，除非它们属于预先声明的 local boundary/corner counterterm category。

第一轮采用

$$\begin{align}
\delta\widetilde g=0 \qquad \text{near }u=u_\pm.
\end{align}$$

这只关闭 endpoint variations；lids 和 joints 仍是 regulated geometry 的一部分。

### 1.2 Exact off-shell variation

在进入 Bondi coordinates 之前，

$$\begin{align}
\boxed{ \delta S_R^{\rm D} = -\frac1{16\pi G} \int_{M_{R,I}} d^4x\sqrt{-\widetilde g}\, \widetilde G^{\mu\nu}\delta\widetilde g_{\mu\nu}
- \frac1{16\pi G}
\int_{\mathcal B_R}
d^3x\, \widetilde{\mathcal P}^{ij}
\delta\widetilde\gamma_{ij} +\cdots
}
\end{align}$$

其中

$$\begin{align}
\widetilde{\mathcal P}^{ij} = \sqrt{-\widetilde\gamma} \left( \widetilde K^{ij}
- \widetilde K\widetilde\gamma^{ij} \right),
\end{align}$$

省略号表示 inner/lid/joint pieces。所有 asymptotic substitutions 都必须发生在这个 covariant variation 之后。

---

## 2. Nonlinear Bondi--Sachs gauge is a coordinate construction

### 2.1 Partial Bondi gauge

在一个无 caustic 的 outgoing null collar 中：

1. 解 eikonal equation

$$\begin{align}
\widetilde g^{\mu\nu}
   \partial_\mu u\partial_\nu u =0
\end{align}$$

   以定义 null hypersurfaces $u=\mathrm{const}$；

2. 沿其 null generators 传播 angular coordinates $x^A$；

3. 选取任意 monotone generator parameter $r$。

这给出

$$\begin{align}
\widetilde g_{rr}=0, \qquad \widetilde g_{rA}=0.
\end{align}$$

这是 local coordinate/gauge theorem，不使用 Einstein equations。它失效的几何边界是 caustic、generator crossing 或 area radius 失去 monotonicity，而不是某条 radial Einstein equation。

### 2.2 Luminosity radius

Partial Bondi gauge 仍允许

$$\begin{align}
r\longmapsto r'(u,r,x).
\end{align}$$

在 cuts 的 area density 非零且沿 generators monotone 时，定义

$$\begin{align}
r^4 = \frac{\det\gamma_{AB}}{\det q_{AB}}
\end{align}$$

得到 Bondi--Sachs luminosity coordinate：

$$\begin{align}
\boxed{ \det\gamma_{AB} = r^4\det q_{AB}
}.
\end{align}$$

因此 determinant condition 是 radial coordinate choice。它不是 Einstein equation，但会对一个直接逐 coefficient 展开的 $\gamma_{AB}$ 产生 nonlinear trace identities。

固定 round $q_{AB}$ 则是 boundary condition/frame choice，不是由这一 radial coordinate transformation 自动得到。

### 2.3 Exact metric variables

采用

$$
\boxed{
\begin{aligned}
d\widetilde s^2
=
&
e^{2\beta}\frac Vr\,du^2
-2e^{2\beta}du\,dr\\
&
+\gamma_{AB}
\left(
dx^A-U^Adu
\right)
\left(
dx^B-U^Bdu
\right).
\end{aligned}
}
$$

定义

$$\begin{align}
\mathcal V:=V+r.
\end{align}$$

Minkowski background 是

$$\begin{align}
\beta=0, \qquad U^A=0, \qquad \mathcal V=0, \qquad \gamma_{AB}=r^2q_{AB}.
\end{align}$$

Exact inverse and determinant are

$$\begin{align}
\widetilde g^{uu}=0, \qquad \widetilde g^{ur}=-e^{-2\beta}, \qquad \widetilde g^{uA}=0,
\end{align}$$

$$\begin{align}
\widetilde g^{rr} = -e^{-2\beta}\frac Vr, \qquad \widetilde g^{rA} = -e^{-2\beta}U^A, \qquad \widetilde g^{AB} = \gamma^{AB},
\end{align}$$

以及

$$\begin{align}
\boxed{ \sqrt{-\widetilde g} = e^{2\beta}r^2\sqrt q
}.
\end{align}$$

---

## 3. Exact determinant parametrization

### Proposition 3.1

令

$$\begin{align}
q^{AB}\mathcal C_{AB}=0, \qquad [\mathcal C\mathcal C] := \mathcal C^{AB}\mathcal C_{AB}.
\end{align}$$

则

$$\begin{align}
\boxed{ \gamma_{AB} = r^2q_{AB} \sqrt{ 1+\frac{[\mathcal C\mathcal C]}{2r^2}
} +r\mathcal C_{AB}
}
\end{align}$$

identically satisfies

$$\begin{align}
\det\gamma_{AB} = r^4\det q_{AB}.
\end{align}$$

#### Proof

对二维 tracefree endomorphism

$$\begin{align}
\mathcal C^A{}_B
\end{align}$$

有

$$\begin{align}
\det \left( A\delta^A{}_B +r\mathcal C^A{}_B \right) = A^2 -\frac{r^2}{2} [\mathcal C\mathcal C].
\end{align}$$

取

$$\begin{align}
A = r^2 \sqrt{ 1+\frac{[\mathcal C\mathcal C]}{2r^2}
}
\end{align}$$

即得结论。Mathematica 对一般 non-diagonal $q_{AB}$ 和一般 $q$-tracefree symmetric $\mathcal C_{AB}$ 验证 determinant residual identically vanishes。$\square$

这个 parametrization 的逻辑后果是：

- $\mathcal C_{AB}$ 的 coefficients 在 off shell 时独立且 tracefree；
- $\gamma_{AB}$ 的 trace coefficients 由 determinant gauge algebraically generated；
- 这些 trace identities 不是 Einstein equations；
- 不能同时把 $\gamma_{AB}$ 的所有 trace coefficients称为独立 off-shell data。

---

## 4. Off-shell polyhomogeneous history space

令

$$\begin{align}
L=\log(r/r_0).
\end{align}$$

### 4.1 General component families

取

$$\begin{align}
\boxed{ \mathcal C_{AB} = \sum_{n=0}^{\infty} r^{-n}
\sum_{k=0}^{K_n^{\mathcal C}} \mathcal C_{AB}^{n,k}(u,x)L^k, \qquad q^{AB}\mathcal C_{AB}^{n,k}=0
}
\end{align}$$

以及

$$\begin{align}
\boxed{ \beta = \sum_{n=1}^{\infty} r^{-n}
\sum_{k=0}^{K_n^\beta} \beta_{n,k}(u,x)L^k
},
\end{align}$$

$$\begin{align}
\boxed{ U^A = \sum_{n=2}^{\infty} r^{-n}
\sum_{k=0}^{K_n^U} U_{n,k}^A(u,x)L^k
},
\end{align}$$

$$\begin{align}
\boxed{ \mathcal V = \sum_{n=0}^{\infty} r^{-n}
\sum_{k=0}^{K_n^{\mathcal V}} \mathcal V_{n,k}(u,x)L^k
}.
\end{align}$$

每个 radial order 的 log cap 有限，但不预设

$$\begin{align}
K_n=n+1.
\end{align}$$

所有 displayed coefficients 独立；当前禁止：

- $G_{rr}=0$ 导出的 $\beta$ recursion；
- $G_{rA}=0$ 导出的 $U^A$ recursion；
- $G_{ur}=0$ 导出的 $V$ recursion；
- angular Einstein evolution；
- Penrose conditions；
- Freidel--Riello 的 $E_{\rm div}=0$；
- mass-loss、angular-momentum loss 或任何 charge equation。

### 4.2 Standard first-log seed

第一轮 explicit tensor calculation 采用

$$
\boxed{
\begin{aligned}
\mathcal C_{AB}
=
&
C_{AB}
+\frac1rD_{AB}\\
&
+\frac1{r^2}
\left(
E_{AB}^{(0)}
+LE_{AB}^{(1)}
+L^2E_{AB}^{(2)}
\right)
+\mathcal O_{\rm phg}(r^{-3}L^{K_3}),
\end{aligned}
}
$$

其中所有 tensors 均 $q$-tracefree。Standard class 取

$$\begin{align}
K_0^{\mathcal C}=0.
\end{align}$$

这一 seed 在 physical angular metric 中给出

$$\begin{aligned}
\gamma_{AB} = & r^2q_{AB} +rC_{AB}\\
& +D_{AB} +\frac14q_{AB}[CC]\\
& +\frac1r \left( E_{AB}^{(0)} +LE_{AB}^{(1)} +L^2E_{AB}^{(2)} +\frac12q_{AB}[CD] \right) +\cdots.
\end{aligned}$$

这里的 trace terms 完全来自 determinant parametrization。

### 4.3 Conformal-frame dictionary

在

$$\begin{align}
\widehat\gamma_{AB} := \Omega^2\gamma_{AB}
\end{align}$$

中，

$$\begin{align}
\widehat\gamma_{AB} = q_{AB} +\Omega C_{AB} +\Omega^2 \left( D_{AB} +\frac14q_{AB}[CC] \right) +\Omega^3 \left( E_{AB}^{(0)} -\log(\Omega r_0)E_{AB}^{(1)} +\log^2(\Omega r_0)E_{AB}^{(2)} +\cdots \right).
\end{align}$$

所以 physical $r^{-1}L^{1,2}$ angular terms 正是 conformal metric 的

$$\begin{align}
\Omega^3\log\Omega, \qquad \Omega^3(\log\Omega)^2
\end{align}$$

terms。它们位于 Freidel--Riello 在 $d=4$ 讨论的 first admissible conformal logarithmic order。

GLZ 的 on-shell LAF family 是本 off-shell seed 的一个子空间：

$$\begin{align}
\beta=\mathcal O(r^{-2}), \qquad U^A=\mathcal O(r^{-2}), \qquad \mathcal V=\mathcal O(1),
\end{align}$$

且 coefficients 满足 Einstein recursion。本文只借用 log positions，不借用这些 relations。

### 4.4 Physical and conformal component weights

| Quantity | Physical-frame order | Conformal-frame order |
|---|---:|---:|
| $\mathcal C_{AB}$ | $\mathcal O(1)$ | enters $\widehat\gamma_{AB}$ at $\mathcal O(\Omega)$ |
| $\widetilde g_{AB}-r^2q_{AB}$ | $\mathcal O(r)$ | $g_{AB}-q_{AB}=\mathcal O(\Omega)$ |
| $\beta$ | $\mathcal O(r^{-1}L^{K})$ | $g_{u\Omega}-1=\mathcal O(\Omega L^K)$ |
| $U^A$ | $\mathcal O(r^{-2}L^{K})$ | $g_{uA}=\mathcal O(\Omega^2L^K)$ |
| $\mathcal V$ | $\mathcal O(L^K)$ | enters $g_{uu}$ at $\mathcal O(\Omega^3L^K)$ |
| $\widetilde g_{uA}$ | $\mathcal O(L^K)$ | $\mathcal O(\Omega^2L^K)$ |
| $\widetilde g_{uu}+1$ | $\mathcal O(r^{-1}L^K)$ | correction to $-\Omega^2$ starts at $\mathcal O(\Omega^3L^K)$ |

Exact conformal metric is

$$
\boxed{
\begin{aligned}
ds_g^2
=
&
2e^{2\beta}du\,d\Omega
+\Omega^3e^{2\beta}V\,du^2\\
&
+\widehat\gamma_{AB}
\left(
dx^A-U^Adu
\right)
\left(
dx^B-U^Bdu
\right).
\end{aligned}
}
$$

因此

$$\begin{align}
\left.ds_g^2\right|_{\Omega=0} = 2du\,d\Omega +q_{AB}dx^A dx^B.
\end{align}$$

Nullness of $\mathscr I$、fixed round cut metric 和 fixed generator normalization 已作为 leading boundary conditions 实现；它们不等于 subleading Penrose conditions。

---

## 5. Nonlinear closure

### Proposition 5.1

令各 variables 属于 `definitions.md` 的 completed index families，并令

$$\begin{align}
\beta=\mathcal O(\Omega), \qquad \mathcal C=\mathcal O(1), \qquad U^A=\mathcal O(\Omega^2), \qquad \mathcal V=\mathcal O(1).
\end{align}$$

取包含 seed sets、Minkowski sums 和 positive integer shifts 的最小 completed hull

$$\begin{align}
\widehat{\mathbf E}.
\end{align}$$

则以下 maps 在对应 weighted conormal Fréchet spaces 上 smooth：

$$\begin{align}
\beta\longmapsto e^{\pm2\beta},
\end{align}$$

$$\begin{align}
\mathcal C
\longmapsto \sqrt{ 1+\frac{\Omega^2}{2}
[\mathcal C\mathcal C]
},
\end{align}$$

$$\begin{align}
(\beta,\mathcal C,U,\mathcal V)
\longmapsto
\widetilde g_{\mu\nu}, \quad \widetilde g^{\mu\nu}, \quad \sqrt{-\widetilde g},
\end{align}$$

以及有限阶 covariant derivatives、curvature 和 field variations。

#### Proof

$\Omega^2[\mathcal C\mathcal C]/2$ 有 strictly positive leading radial weight。因此 square-root Taylor series在每个固定 radial order 只接收有限多个 powers。$e^{\pm2\beta}$ 同理，因为 $\beta$ 也有 positive leading weight。

`definitions.md` Proposition 3.1 给出 products、$b$-derivatives 和 variations 的 closure；inverse metric 的 leading matrix nondegenerate in the physical collar，conformal metric 的 Bondi block在 $\Omega=0$ 亦 nondegenerate as a four-metric。逐 radial order 的 analytic inverse expansion 因而 left-finite。$\square$

这个 proposition 不声称任意人为指定的 caps

$$\begin{align}
K_n^X
\end{align}$$

已经 closed。若某个 product 在 order $n$ 产生更高 log degree，就必须把对应 term 加入 $\widehat{\mathbf E}$。GLZ 的 $m\leq n+1$ 仍只是一个 on-shell sector。

---

## 6. Assumption ledger

| Statement | Status in this note |
|---|---|
| $\widetilde g_{rr}=\widetilde g_{rA}=0$ | local coordinate/gauge choice |
| $\det\gamma=r^4\det q$ | luminosity-radius gauge |
| $q_{AB}=\overset{\circ}{q}_{AB}$ | fixed boundary frame/source |
| $\delta\Omega=0$ | fixed defining function |
| $\beta=\mathcal O(r^{-1})$ | off-shell falloff assumption |
| $U^A=\mathcal O(r^{-2})$ | off-shell falloff assumption |
| $\mathcal V=\mathcal O(1)$ | off-shell falloff assumption |
| $K_0^{\mathcal C}=0$ | Stage 2B symplectic obstruction boundary |
| first logs at $\mathcal C/r^2$ | off-shell seed informed by LAF solutions |
| trace pieces of $\gamma_{AB}$ | determinant-gauge algebraic identities |
| $\beta=\mathcal O(r^{-2})$ | on-shell consequence, not imposed |
| $U_2^A=-\frac12D_BC^{AB}$ in GLZ conventions | on-shell radial Einstein equation |
| $\partial_uD_{AB}=0$ | on-shell angular Einstein equation |
| Penrose conditions | undecided Stage 3D restrictions |
| $E_{\rm div}=0$ | undecided Stage 3D restriction |

---

## 7. Counterterm categories for Stage 3

The target statement is always relative to one of the following nested categories.

### 7.1 Outer intrinsic category

$$\begin{align}
\mathfrak C_{\rm out,int}
\end{align}$$

contains local boundary densities constructed from：

- induced metric $\widetilde\gamma_{ij}$；
- its tangential curvature and at most two tangential derivatives；
- fixed $R$、$L_R$ and round-frame structures already present in the boundary conditions；
- finite polynomial degree at each target radial weight。

It does not contain inverse $u$ or angular operators。

### 7.2 Outer extended category

$$\begin{align}
\mathfrak C_{\rm out,ext}
\end{align}$$

also allows：

- $\widetilde K_{ij}$；
- one normal derivative；
- radial Brown--York momentum。

使用这一类时必须记录 boundary polarization 的改变。

### 7.3 Lid/corner category

允许：

- fixed null normal $k=-du$；
- null-lid intrinsic generator derivatives；
- joint angle $\eta=\log|s\cdot k|$；
- codimension-two local potentials。

若要求 null-normal reparametrization invariance，则必须另加该 symmetry 的 counterterm，并重新检查 $\eta$-dependent scheme。

### 7.4 Relative descent target

对每个 divergent radial weight要求

$$\begin{align}
\boxed{ \Theta_{\rm div} +\delta\ell_{\rm ct} -d_{\partial}\vartheta_{\rm ct} = \mathcal A_{\rm div}
}.
\end{align}$$

只有在证明 $\mathcal A_{\rm div}$ 是指定 category 中的 nontrivial relative local class 后，才能称为 obstruction。

---

## 8. Exact spherical off-shell audit

这一 subsection 不是 tensor-sector proof，而是 Stage 3B 的一个必要 sanity check：它检验“action finiteness 是否自动推出 radial Einstein falloff”。

### 8.1 Subfamily

取

$$\begin{align}
\mathcal C_{AB}=0, \qquad U^A=0,
\end{align}$$

但保留 arbitrary off-shell

$$\begin{align}
\beta(u,r), \qquad \mathcal V(u,r).
\end{align}$$

Metric 为

$$\begin{align}
d\widetilde s^2 = e^{2\beta} \left( -1+\frac{\mathcal V}{r} \right)du^2 -2e^{2\beta}du\,dr +r^2d\Omega_2^2.
\end{align}$$

### Proposition 8.1

Einstein--Hilbert bulk density exact等于

$$
\boxed{
\begin{aligned}
\frac{\sqrt{-\widetilde g}\,\widetilde R}{\sqrt q}
=
&
2
\left(
e^{2\beta}-1
\right)
+2
\left(
1+r\beta'
\right)
\mathcal V'\\
&
-2\mathcal V
\left(
\beta'
-r\beta''
\right)\\
&
+r
\left(
-2r\beta''
+\mathcal V''
+4r\dot\beta'
\right).
\end{aligned}
}
$$

Outer GHY density satisfies

$$
\boxed{
\begin{aligned}
\frac{2\sqrt{-\widetilde\gamma}\,\widetilde K}{\sqrt q}
=
&
-\mathcal V
\left(
3+2r\beta'
\right)\\
&
+r
\left[
4+2r\beta'
-\mathcal V'
-2r\dot\beta
-\frac{r\dot{\mathcal V}}{r-\mathcal V}
\right].
\end{aligned}
}
$$

这里 factor $2$ 是把 GHY normalization 写成与 EH 的 $1/(16\pi G)$ 相同。

#### Verification

Mathematica 从 exact inverse metric、Christoffel symbols、Ricci scalar、unit normal 和 $\widetilde K=\widetilde\nabla_\mu s^\mu$ 独立推导两式。Minkowski substitution

$$\begin{align}
\beta=0, \qquad \mathcal V=0
\end{align}$$

给出 zero bulk density 和 outer reference density $4r\sqrt q$。

### 8.2 Radial asymptotics

取

$$\begin{align}
\beta = \frac{\beta_1(u)}r +\frac{\beta_2(u)}{r^2} +\frac{\beta_3(u)}{r^3} +\mathcal O(r^{-4}),
\end{align}$$

$$\begin{align}
\mathcal V = \mathcal V_0(u) +\frac{\mathcal V_1(u)}r +\frac{\mathcal V_2(u)}{r^2} +\mathcal O(r^{-3}).
\end{align}$$

Exact formulas 给出

$$\begin{align}
\frac{\sqrt{-\widetilde g}\,\widetilde R}{\sqrt q} = -4\dot\beta_1 -\frac8r\dot\beta_2 +\mathcal O(r^{-2}),
\end{align}$$

而 reference-subtracted outer GHY density 的 overleading part 为

$$\begin{align}
\frac{ 2\sqrt{-\widetilde\gamma}\widetilde K -4r\sqrt q
}{\sqrt q} = -r \left( 2\dot\beta_1 +\dot{\mathcal V}_0 \right) +\mathcal O(1).
\end{align}$$

这些 overleading terms 全是 total $u$ derivatives。因而：

1. 在 endpoint-supported radial-local variation 中，它们不产生 bulk radial obstruction；
2. 恢复 arbitrary endpoints 后，它们必须由 lids/joints/corner counterterms 处理；
3. action finiteness 不能在这一 subfamily 中推出

$$\begin{align}
\beta_1=0.
\end{align}$$

而 nonlinear $G_{rr}=0$ 的确会在 standard determinant gauge 中给出更强的

$$\begin{align}
\beta=\mathcal O(r^{-2}).
\end{align}$$

所以至少这一条 on-shell falloff 不是“裸 action 数值有限”自动选择出来的。要把它变成 action-domain restriction，必须在 generic tensor sector 中发现一个非 endpoint-exact divergence 或证明相关 counterterm no-go。

---

## 9. Generic nonlinear bulk-action divergence ledger

### 9.1 Exact conformal identity

Write

$$\begin{align}
\Omega=z.
\end{align}$$

For

$$\begin{align}
\widetilde g_{ab}=z^{-2}g_{ab}
\end{align}$$

in four dimensions,

$$\begin{align}
\widetilde R = z^2R[g] +6z\Box_gz -12N^2, \qquad N^2:=g^{ab}\partial_az\partial_bz.
\end{align}$$

The exact conformal Bondi metric of section 4 gives

$$\begin{align}
\sqrt{-g}=e^{2\beta}\sqrt q,
\end{align}$$

$$\begin{align}
N^2 = e^{-2\beta}z^2 \left( 1-z\mathcal V \right),
\end{align}$$

以及

$$\begin{align}
\Box_gz = e^{-2\beta} \left[ \partial_z \left( z^2-z^3\mathcal V \right) +D_AU^A \right].
\end{align}$$

Substitution gives the exact identity

$$\begin{align}
\boxed{ \sqrt{-\widetilde g}\,\widetilde R = \sqrt q \left[ e^{2\beta}z^{-2}R[g] -6z^{-1}\mathcal V -6\partial_z\mathcal V +6z^{-3}D_AU^A \right]
}
\end{align}$$

where the density is expressed in coordinates $(u,z,x^A)$。No Einstein equation or Penrose condition was used。

### 9.2 Conformal scalar-curvature coefficients

For the first-log seed, write

$$\begin{align}
\beta = z\beta_1 +z^2\beta_2 +\mathcal O_{\rm phg}(z^3L^{K_\beta}),
\end{align}$$

$$\begin{align}
U^A = z^2U_2^A +\mathcal O_{\rm phg}(z^3L^{K_U}),
\end{align}$$

$$\begin{align}
\mathcal V = \mathcal V_0 +\mathcal O_{\rm phg}(zL^{K_{\mathcal V}}).
\end{align}$$

Direct expansion of the conformal scalar curvature gives

$$
\boxed{
\begin{aligned}
e^{2\beta}R[g]
=
&
-4\dot\beta_1\\
&
+z
\bigg[
D_AD_BC^{AB}
-4D_AU_2^A
-4D^2\beta_1
+6\mathcal V_0\\
&
\hspace{3.4em}
-8\dot\beta_2
-\frac12C^{AB}\dot C_{AB}
\bigg]
+\mathcal O_{\rm phg}(z^2L^{K_*}).
\end{aligned}
}
$$

Several cancellations are significant:

1. $D_{AB}$ cancels from the displayed coefficients；
2. $E_{AB}^{(0,1,2)}$，including the $z^3L$ and $z^3L^2$ conformal logs，do not enter；
3. $\beta_3$、$U_3^A$ and more subleading $\mathcal V$ coefficients do not enter；
4. the only quadratic radiative term is

$$\begin{align}
-\frac12C^{AB}\dot C_{AB} = -\frac14\partial_u[CC].
\end{align}$$

The absence of $E_{AB}^{(1,2)}$ is not an on-shell cancellation。It follows in the component calculation before imposing any coefficient relation；the determinant parametrization removes the trace radial acceleration through this order。

### Proposition 9.1

The divergent physical Einstein--Hilbert density is

$$\begin{align}
\boxed{ \frac{\sqrt{-\widetilde g}\,\widetilde R}{\sqrt q} = -4z^{-2}\dot\beta_1 +z^{-1} \left( \partial_u\mathcal J^u +D_A\mathcal J^A \right) +\mathcal O_{\rm phg}(L^{K_*})
}
\end{align}$$

where

$$\begin{align}
\boxed{ \mathcal J^u = -8\beta_2 -\frac14[CC]
},
\end{align}$$

$$\begin{align}
\boxed{ \mathcal J^A = D_BC^{AB} +2U_2^A -4D^A\beta_1
}.
\end{align}$$

#### Proof

Insert section 9.2 into the exact identity of section 9.1。The terms

$$\begin{align}
+6z^{-1}\mathcal V_0
\end{align}$$

from $R[g]$ and

$$\begin{align}
-6z^{-1}\mathcal V_0
\end{align}$$

from the conformal transformation cancel。The $U_2^A$ terms combine as

$$\begin{align}
-4D_AU_2^A +6D_AU_2^A = +2D_AU_2^A.
\end{align}$$

All remaining $z^{-1}$ terms form the displayed tangential divergence。$\square$

Thus the complete bulk power/log divergence through the first-log target weight is horizontally exact。This is stronger than observing that its integral over the closed sphere vanishes：

$$\begin{align}
z^{-1}D_A\mathcal J^A
\end{align}$$

is explicitly a local descent term，while

$$\begin{align}
z^{-1}\partial_u\mathcal J^u
\end{align}$$

is an endpoint term。

### 9.3 Exact outer GHY density

Let

$$\begin{align}
F := -\frac Vr = 1-\frac{\mathcal V}{r}.
\end{align}$$

For $F>0$，the outward unit normal to $r=\mathrm{const}$ gives

$$
\boxed{
\begin{aligned}
\frac{\sqrt{-\widetilde\gamma}\,\widetilde K}{\sqrt q}
=
&
2r
-\frac32\mathcal V
+r^2F\partial_r\beta
-\frac r2\partial_r\mathcal V\\
&
-r^2\dot\beta
-\frac{r\dot{\mathcal V}}{2F}\\
&
-r^2
\left[
D_AU^A
+U^AD_A\beta
-\frac12U^AD_A\log F
\right].
\end{aligned}
}
$$

This formula is exact in the nonlinear Bondi variables and uses only the determinant condition

$$\begin{align}
\sqrt{\gamma}=r^2\sqrt q.
\end{align}$$

After multiplying by $2$ to use the same $1/(16\pi G)$ normalization as the bulk term，and subtracting the Minkowski reference density $4r\sqrt q$，the only overleading field-dependent term is

$$\begin{align}
\boxed{ \frac{ 2\sqrt{-\widetilde\gamma}\widetilde K -4r\sqrt q
}{\sqrt q} = -r \left( 2\dot\beta_1 +\dot{\mathcal V}_0 \right) -\partial_u\mathcal V_1(L_R) +\mathcal O(1), }
\end{align}$$

where

$$\begin{align}
\mathcal V = \mathcal V_0 +\frac1r\mathcal V_1(L) +\mathcal O_{\rm phg}(r^{-2}L^{K_*}).
\end{align}$$

Both displayed terms are endpoint derivatives。The $\mathcal V_1(L_R)$ polynomial will cancel against the standard null--timelike joint term in section 11；it is not an independent action obstruction。

### 9.4 First relative descent

Integrating the bulk density over

$$\begin{align}
z\in[R^{-1},R_0^{-1}]
\end{align}$$

and adding the outer GHY term gives, modulo finite terms and the fixed inner boundary,

$$
\boxed{
\begin{aligned}
16\pi G\,S_{\rm bulk+out,div}
=
\int du\,d^2x\sqrt q
\bigg[
&
-R
\left(
6\dot\beta_1
+\dot{\mathcal V}_0
\right)\\
&
+L_R
\left(
\partial_u\mathcal J^u
+D_A\mathcal J^A
\right)
-
\partial_u\mathcal V_1(L_R)
\bigg].
\end{aligned}
}
$$

Consequently a local coefficient-space primitive is

$$\begin{aligned}
16\pi G\,S_{\rm cut,ct}^{(0)} = \left[ \int_{S^2}d^2x\sqrt q \left\{ R \left( 6\beta_1+\mathcal V_0 \right) -L_R\mathcal J^u + \mathcal V_1(L_R) \right\} \right]_{u_-}^{u_+},
\end{aligned}$$

together with the local horizontal potential

$$\begin{align}
\vartheta_{\rm div}^A = -L_R\sqrt q\,\mathcal J^A.
\end{align}$$

At the radial-local gate，$\delta$ of the cut functional vanishes because variations have endpoint support，while the angular term is a genuine $D_A$ descent。When endpoints are restored，this preliminary cut subtraction must be combined with the LMPS joint action；its finite scheme and corner polarization are therefore not yet frozen。

### Corollary 9.2

Through the first nonlinear radial-log target weight：

1. the bulk + outer action divergences are removable without imposing the Einstein equations；
2. no displayed Penrose condition is required for action-value finiteness；
3. $E_{AB}^{(1)}$ and $E_{AB}^{(2)}$ do not cause an off-shell action divergence；
4. the decisive unresolved question moves to the full first variation and relative symplectic potential，not the bare scalar action。

This corollary does not yet prove $C^2$ renormalization：one must still show that the same relative counterterms make the complete local canonical potential finite，rather than only its integrated action value。

### 9.5 Full outer first variation

The exact outer canonical term is

$$\begin{align}
\Theta_{\mathcal B_R} = -\frac1{16\pi G} \int_{\mathcal B_R} d^3x\, \widetilde{\mathcal P}^{ij} \delta\widetilde\gamma_{ij}.
\end{align}$$

The relevant asymptotic weights are：

$$\begin{align}
\widetilde{\mathcal P}^{uu} = 2r\sqrt q+\mathcal O(1),
\end{align}$$

$$\begin{align}
\delta\widetilde\gamma_{uu} = \frac1r \left( \delta\mathcal V_0 -2\delta\beta_1 \right) +\mathcal O(r^{-2}L^{K_*}),
\end{align}$$

while determinant gauge gives

$$\begin{align}
\gamma^{AB}\delta\gamma_{AB}=0.
\end{align}$$

The potentially overleading trace pairing in the angular sector therefore cancels identically。A direct expansion of the full Brown--York tensor gives：

### Proposition 9.3

For the standard first-log class，

$$\begin{align}
\boxed{ \widetilde{\mathcal P}^{ij}
\delta\widetilde\gamma_{ij} = -\sqrt q \left[ 4\delta\beta_1 -2\delta\mathcal V_0 +\frac12\dot C^{AB}\delta C_{AB} \right] +\mathcal O(r^{-1}L^{K_*}).
}
\end{align}$$

In particular，there is no $R^\alpha L_R^k$ divergence in the outer canonical potential。

#### Proof

The $uu$ background momentum gives

$$\begin{align}
2r\sqrt q\, \delta\widetilde\gamma_{uu} = 2\sqrt q \left( \delta\mathcal V_0 -2\delta\beta_1 \right) +o(1).
\end{align}$$

The finite tracefree part of $\widetilde{\mathcal P}^{AB}$ gives

$$\begin{align}
-\frac{\sqrt q}{2}
\dot C^{AB}\delta C_{AB}.
\end{align}$$

All pairings involving $D_{AB}$、$E_{AB}^{(k)}$、$U_2^A$ or more subleading coefficients carry at least one extra $r^{-1}$。Terms involving angular derivatives of $\beta_1$ or $U_2^A$ occur only in these subleading components。Combining the scalar and tensor pieces yields the formula。Mathematica verified the result for arbitrary $(u,\theta)$ dependence in one polarization with nonzero $U_2^\theta$，and independently for both tensor polarizations；the latter comparison returned zero residual。$\square$

It follows that

$$
\boxed{
\begin{aligned}
\Theta_{\mathscr I,\rm ren}
=
\frac1{16\pi G}
\int du\,d^2x\sqrt q
\left[
4\delta\beta_1
-2\delta\mathcal V_0
+\frac12\dot C^{AB}\delta C_{AB}
\right].
\end{aligned}
}
$$

The first two terms are field-space exact：

$$\begin{align}
4\delta\beta_1 -2\delta\mathcal V_0 = \delta \left( 4\beta_1 -2\mathcal V_0 \right).
\end{align}$$

They can be retained，or removed by a finite canonical transformation。In the latter scheme，

$$\begin{align}
\boxed{ \Theta_{\mathscr I,\rm can} = \frac1{32\pi G} \int du\,d^2x\sqrt q\, \dot C^{AB}\delta C_{AB}
}
\end{align}$$

and therefore，already off shell，

$$\begin{align}
\boxed{ \Omega_{\mathscr I,\rm can} = \frac1{32\pi G} \int du\,d^2x\sqrt q\, \delta\dot C^{AB} \wedge \delta C_{AB}.
}
\end{align}$$

First radial logs do not enter these forms。This is the nonlinear fixed-$q$ counterpart of Stage 2B and agrees with the fixed-frame restriction of the GLZ potential，but here it was obtained before imposing Einstein equations。

### Theorem 9.4：finite-order radial-local result

On the standard first-log history space of section 4，and relative to the fixed-frame outer/lid/corner categories of section 7：

1. the field-dependent bulk + outer action divergences through the first-log target weight are the relative exact terms of section 9.4；
2. after their subtraction，the action and first variation have finite radial limits；
3. the outer symplectic potential is Proposition 9.3 and the symplectic flux is finite；
4. the required counterterms are continuous finite-polynomial local functionals of the displayed coefficient data；
5. hence the truncated renormalized functional is $C^2$ in the corresponding finite-order weighted-conormal topology。

No Einstein equation、Penrose condition or $E_{\rm div}=0$ was used。

This is a finite-order theorem。It does not establish all-order $C^2$ control of the remainder，nor does it include arbitrary endpoint variations。

---

## 10. Nested off-shell spaces at the first-log radial-local gate

Define

$$\begin{align}
\mathcal F_0 = \left\{ \text{sections 2--4 only} \right\}.
\end{align}$$

For comparison，define

$$\begin{align}
\mathcal F_{\rm hyp} \subset \mathcal F_0
\end{align}$$

by the leading nonlinear hypersurface Einstein relations

$$\begin{align}
\beta_1=0,
\end{align}$$

$$\begin{align}
\beta_2 = -\frac1{32}[CC],
\end{align}$$

$$\begin{align}
U_2^A = -\frac12D_BC^{AB}.
\end{align}$$

These follow from $G_{rr}=G_{rA}=0$ in the standard Bondi determinant gauge；they are not part of the definition of $\mathcal F_0$。

Freidel--Riello instead work on an accessible conformal off-shell space obeying Penrose boundary conditions and，for symplectic renormalization，the additional condition

$$\begin{align}
E_{\rm div}=0.
\end{align}$$

Call the corresponding restriction，after translating gauges and fixed sources，

$$\begin{align}
\mathcal F_{\rm FR}
\subseteq \mathcal F_0.
\end{align}$$

Theorem 9.4 proves the following precise finite-order statement：

$$\begin{align}
\boxed{ \text{Neither } \mathcal F_{\rm hyp}
\text{ nor } \mathcal F_{\rm FR}
\text{ is required for radial }C^2
\text{ renormalization at the displayed weights.}
}
\end{align}$$

This does not show that those restrictions are unnecessary at all orders。It shows only that they cannot be justified by citing the first nonlinear power/log divergences of the fixed-round、finite-$u$ action。Their possible roles remain：

1. guaranteeing all-order conformal covariance；
2. ensuring radial evolution of the renormalized potential；
3. defining a smaller physically accessible solution neighborhood；
4. removing higher-order obstructions not visible in Theorem 9.4。

The next comparison must therefore locate the first radial order at which

$$\begin{align}
\mathcal F_0, \qquad \mathcal F_{\rm hyp}, \qquad \mathcal F_{\rm FR}
\end{align}$$

cease to have identical renormalizability properties。

---

## 11. Restoring null lids and joints

### 11.1 Exact null geometry

As in Stage 2B，take

$$\begin{align}
k_\mu dx^\mu=-du.
\end{align}$$

The exact nonlinear Bondi metric has

$$\begin{align}
k^2=\widetilde g^{uu}=0.
\end{align}$$

Since $k$ is exact，

$$\begin{align}
k^\nu\widetilde\nabla_\nu k_\mu = \frac12\partial_\mu(k^2) =0.
\end{align}$$

Thus the LMPS null-segment term vanishes exactly：

$$\begin{align}
\kappa=0.
\end{align}$$

This statement is off shell and uses only partial Bondi gauge。

### 11.2 Exact joint angle

Let $s^\mu$ be the outward unit normal to $r=R$，and define

$$\begin{align}
F = -\frac Vr = 1-\frac{\mathcal V}{r}.
\end{align}$$

Then

$$\begin{align}
\boxed{ \eta = \log|s\cdot k| = -\beta -\frac12\log F
}.
\end{align}$$

The cut area is exact：

$$\begin{align}
\sqrt{\sigma}=R^2\sqrt q.
\end{align}$$

With the same orientation convention as Stage 2B，

$$\begin{align}
16\pi G\,S_{\rm joint,R} = 2 \left[ \int_{C_{+,R}}d^2x\sqrt{\sigma}\,\eta
- \int_{C_{-,R}}d^2x\sqrt{\sigma}\,\eta \right].
\end{align}$$

Write

$$\begin{align}
\mathcal V = \mathcal V_0 +\frac1r\mathcal V_1(L) +\mathcal O_{\rm phg}(r^{-2}L^{K_*}).
\end{align}$$

Then

$$
\boxed{
\begin{aligned}
2R^2\eta
=
&
R
\left(
-2\beta_1
+\mathcal V_0
\right)\\
&
+\mathcal V_1(L_R)
-2\beta_2
+\frac12\mathcal V_0^2
+o(1).
\end{aligned}
}
$$

The $\mathcal V_1(L_R)$ term cancels the outer-GHY term

$$\begin{align}
-\partial_u\mathcal V_1(L_R)
\end{align}$$

after $u$ integration。The $R\mathcal V_0$ term similarly cancels the $\mathcal V_0$ part of the power-divergent bulk + GHY endpoint functional。

### Proposition 11.1

After combining EH bulk、outer GHY、the standard affine-null action and both outer joints，the complete field-dependent divergent endpoint action through the first-log target weight is

$$
\boxed{
\begin{aligned}
16\pi G\,S_{\rm end,div}
=
\left[
\int_{S^2}d^2x\sqrt q
\left\{
-8R\beta_1
+L_R
\left(
-8\beta_2
-\frac14[CC]
\right)
\right\}
\right]_{u_-}^{u_+}.
\end{aligned}
}
$$

The remaining angular term is the local descent

$$\begin{align}
L_R D_A\mathcal J^A.
\end{align}$$

Therefore the fixed-frame lid/corner counterterm

$$
\boxed{
\begin{aligned}
16\pi G\,S_{\rm end,ct}
=
\left[
\int_{S^2}d^2x\sqrt q
\left\{
8R\beta_1
+L_R
\left(
8\beta_2
+\frac14[CC]
\right)
\right\}
\right]_{u_-}^{u_+}
}
$$

together with

$$\begin{align}
\vartheta_{\rm div}^A = -L_R\sqrt q\,\mathcal J^A
\end{align}$$

removes every displayed endpoint divergence。

The logarithmic coefficient has a useful form：

$$\begin{align}
8\beta_2+\frac14[CC] = 8 \left( \beta_2+\frac1{32}[CC] \right).
\end{align}$$

The bracket vanishes when the leading $G_{rr}=0$ recursion is imposed。Thus：

- without the lid/corner counterterm，bare endpoint finiteness would select the leading $G_{rr}$ relations；
- with the allowed fixed-frame relative counterterm，those relations are not required off shell；
- on shell，the counterterm vanishes at the displayed divergent orders。

This is the precise point at which “action finiteness derives an EOM falloff” depends on the counterterm and polarization category。

### 11.3 Endpoint symplectic form

The counterterm in Proposition 11.1 changes the endpoint canonical one-form by a field-space exact term and therefore does not change the symplectic two-form。

For standard $K_0^{\mathcal C}=0$，the asymptotic nonlinear corrections to the Stage 2B lid current carry at least one additional power of $r^{-1}$。The potentially least-decaying term remains

$$\begin{align}
\frac1{r^2}
\delta D^{AB} \wedge \delta C_{AB},
\end{align}$$

which is radially integrable。Consequently

$$\begin{align}
\boxed{ \Omega_{\Sigma_u,\rm ren}
\text{ exists and is finite for every finite }u.
}
\end{align}$$

Its finite value depends on the full radial profile and receives nonlinear integrable corrections；only its divergent asymptotic sector is fixed by the present calculation。

On solutions，the relative Iyer--Wald identity gives

$$\begin{align}
\Omega_{\Sigma_{u_+},\rm ren}
- \Omega_{\Sigma_{u_-},\rm ren} + \Omega_{\mathscr I,\rm can}
- \Omega_{\mathcal B_{R_0}} =0.
\end{align}$$

This flux-balance law is not used in the off-shell subtraction。

### Theorem 11.2：finite-slab first-log result

Theorem 9.4 extends to arbitrary endpoint variations after adding the standard null/joint action and Proposition 11.1 counterterms。Hence，through the first nonlinear radial-log target weight，there exists a fixed-round、fixed-normal local relative scheme in which

$$\begin{align}
S_{\rm ren}, \qquad \Theta_{\rm ren}, \qquad \Omega_{\rm ren}
\end{align}$$

are finite，and the truncated action is $C^2$ on $\mathcal F_0$。

No Penrose condition、$E_{\rm div}=0$ or Einstein equation is required。The price is explicit：the scheme uses fixed null normalization and cut/lid data，so it is not yet a fully conformal-frame-covariant Freidel--Riello scheme。

### 11.4 Reparametrization-invariant extension

The fixed-normal qualification can now be stated exactly。For

$$\begin{align}
k\mapsto e^\varsigma k, \qquad d\lambda\mapsto e^{-\varsigma}d\lambda,
\end{align}$$

the standard null and joint terms obey

$$\begin{align}
\Delta_\varsigma S_{N+J}^{\rm bare} = \frac1{8\pi G} \int_N d\lambda\,d^2x\sqrt{\sigma}\, \Theta\varsigma.
\end{align}$$

The no-edge LMPS term

$$\begin{align}
-\frac1{8\pi G}
\int_N
d\lambda\,d^2x\sqrt{\sigma}\, \Theta\log\!\left(\ell_{\rm rep}|\Theta|\right)
\end{align}$$

cancels this residual exactly，but any endpoint subtraction depending nontrivially on $\eta$ must then be written using the invariant combination

$$\begin{align}
\eta-\log\!\left(\ell_{\rm rep}|\Theta|\right).
\end{align}$$

That changes the fixed-frame endpoint scheme and introduces the scale $\ell_{\rm rep}$。

There is an equivalent completion which preserves Theorem 11.2 in a unitary gauge。Introduce a boundary clock

$$\begin{align}
\varphi\mapsto\varphi+\varsigma
\end{align}$$

and replace

$$\begin{align}
\kappa
\longmapsto
\widehat\kappa = e^{-\varphi} \left( \kappa-\partial_\lambda\varphi \right), \qquad \eta \longmapsto \widehat\eta = \eta-\varphi, \qquad d\lambda \longmapsto
d\widehat\lambda=e^\varphi d\lambda.
\end{align}$$

Equivalently，

$$\begin{align}
\boxed{ S_{N+J}^{\rm clock} = S_{N+J}^{\rm bare}
- \frac1{8\pi G}
\int_N
d\lambda\,d^2x\sqrt{\sigma}\, \Theta\varphi
}
\end{align}$$

and all $\eta$-dependent corner generating functions are evaluated at $\widehat\eta$。Every hatted variable is invariant，and

$$\begin{align}
\Delta_\varsigma S_{N+J}^{\rm clock}=0
\end{align}$$

without using the Einstein equations。In the gauge $\varphi=0$ this is exactly the fixed-normal action used in Proposition 11.1 and Theorem 11.2；hence their finiteness and $C^2$ result hold on every gauge-related representative。The endpoint counterterm of Proposition 11.1 depends only on the fixed Bondi frame and is unchanged by this auxiliary normalization redundancy。

There is also a sharp local no-go：a cut density $F(\eta,\ldots)$ built only from variables without an inhomogeneous shift cannot be invariant under arbitrary pointwise $\varsigma$ unless $\partial_\eta F=0$。Thus preserving a nontrivial fixed-frame $\eta$-dependent subtraction requires either $\Theta$ and the LMPS scale，a reference normal，or the clock field above。If $\varphi$ is dynamical rather than a fixed spurion，the first-order clock action adds

$$\begin{align}
\Omega_C^{\rm clock} = \frac1{8\pi G} \int_C \delta\sqrt{\sigma}\wedge\delta\varphi
\end{align}$$

to the unreduced corner symplectic form；this extra pair must be reduced at Stage 5。This resolves null-normal reparametrization at the action level，but it does not claim conformal-frame covariance under changes of $q_{AB}$ or $\Omega$。

---

## 12. Stage 3E：impose Einstein equations last

本节第一次把

$$\begin{align}
\widetilde G_{\mu\nu}=0
\end{align}$$

作为输入。前面得到的 off-shell action domain、counterterms 和 canonical form 均不因本节而改变。

### 12.1 Coefficient dictionary

GLZ 把 angular metric 写成

$$\begin{align}
\gamma_{AB} = \sqrt{ 1+\frac{[\mathcal C\mathcal C]}{2r^2}
}\,r^2q_{AB}
{}+r\mathcal C_{AB},
\end{align}$$

其中

$$\begin{align}
r\mathcal C_{AB} = rC_{AB} +D_{AB} +\frac1r
\sum_{m=0}^2 E_{AB}^{1,m}L^m +\mathcal O_{\rm phg}(r^{-2}L^3).
\end{align}$$

因此本文与 GLZ 的 first-log coefficients 对应为

$$
\boxed{
\begin{aligned}
C_{AB}^{\rm here}
&=
C_{AB}^{\rm GLZ},
\\
D_{AB}^{\rm here}
&=
D_{AB}^{\rm GLZ},
\\
E_{AB}^{(m)\,\rm here}
&=
E_{AB}^{1,m\,\rm GLZ},
\qquad
m=0,1,2,
\\
\beta^{\rm here}
&=
B^{\rm GLZ},
\\
\mathcal V^{\rm here}
&=
V^{\rm GLZ}+r.
\end{aligned}
}
$$

For round $q_{AB}$，$R[q]=2$，so the GLZ mass coefficient obeys

$$\begin{align}
\mathcal V_0=2M.
\end{align}$$

This is a coefficient dictionary，not an identification of off-shell spaces：GLZ impose the Einstein hierarchy，whereas the coefficients in $\mathcal F_0$ were independent。

### 12.2 Hypersurface hierarchy

At the first orders needed here，the vacuum hypersurface equations give

$$\begin{align}
\boxed{ \beta_1=0, \qquad \beta_2=-\frac1{32}[CC], \qquad U_2^A=-\frac12D_BC^{AB}.
}
\end{align}$$

The next orders begin with

$$\begin{align}
\beta_3=-\frac1{12}[CD],
\end{align}$$

and the $r^{-3}$ coefficient of $U^A$ contains the angular-momentum aspect together with a logarithmic term sourced by $D_{AB}$。Those subleading relations were not used in Theorem 11.2。

Substitution into the off-shell descent coefficients gives

$$\begin{align}
\boxed{ \mathcal J^u=0, \qquad \mathcal J^A=0, }
\end{align}$$

because

$$\begin{align}
\mathcal J^u = -8\beta_2-\frac14[CC],
\end{align}$$

and

$$\begin{align}
\mathcal J^A = D_BC^{AB} +2U_2^A -4D^A\beta_1.
\end{align}$$

The endpoint coefficients vanish as well：

$$\begin{align}
-8R\beta_1=0, \qquad -8\beta_2-\frac14[CC]=0.
\end{align}$$

Hence the displayed divergent counterterms are genuine off-shell extensions：their divergent parts restrict to zero on the vacuum solution space。Mathematica returned

$$\begin{align}
\left( \mathcal J^u, \mathcal J^A, -8R\beta_1, -8\beta_2-\frac14[CC] \right) = (0,0,0,0)
\end{align}$$

after applying the three hypersurface relations。

### 12.3 Angular evolution and the first logarithms

The tracefree angular Einstein equation gives

$$\begin{align}
\boxed{ \dot D_{AB}=0, }
\end{align}$$

and，in the first explicit logarithmic layer，

$$\begin{align}
\boxed{ \dot E_{AB}^{(2)}=0, \qquad \dot E_{AB}^{(1)} = \frac16 \left( \Delta-R[q] \right) D_{AB}.
}
\end{align}$$

Here $\Delta=D^CD_C$ is the rough Laplacian acting on a tracefree two-tensor。Equivalently，

$$\begin{align}
\dot E_{AB}^{(1)} = \frac13 D_{\langle A}D^CD_{B\rangle C}.
\end{align}$$

The equality of the two expressions uses the two-dimensional constant-curvature identity

$$\begin{align}
\boxed{ 2D_{\langle A}D^CD_{B\rangle C} = \left( \Delta-R[q] \right) D_{AB}.
}
\end{align}$$

Mathematica verified this identity on the unit sphere for a general smooth tracefree tensor

$$\begin{align}
D_{\theta\theta}=a(\theta,\phi), \qquad D_{\theta\phi}=b(\theta,\phi), \qquad D_{\phi\phi}=-\sin^2\theta\,a(\theta,\phi),
\end{align}$$

and returned a zero $2\times2$ residual。Thus the Stage 2B linear hierarchy and GLZ equation (2.9) agree in both tensor polarizations。

The non-logarithmic $E_{AB}^{(0)}$ has a longer evolution equation involving $D_{AB}$、the momentum aspect、the mass aspect and nonlinear shear terms。It is not needed for the divergent action or the local radiative symplectic pair，so it is not abbreviated into an unverifiable formula here。

The non-peeling dictionary is immediate from the Weyl expansion：

$$\begin{align}
\boxed{ \Psi_0 = \frac1{r^4} D_{AB}m_1^Am_1^B +\mathcal O(r^{-5}L^2).
}
\end{align}$$

Thus $D_{AB}\neq0$ replaces the peeling behavior $\Psi_0=\mathcal O(r^{-5})$ by an $r^{-4}$ term。Even when $D_{AB}=0$，$E_{AB}^{(1)}$ and $E_{AB}^{(2)}$ generate $r^{-5}L$ and $r^{-5}L^2$ terms。

### 12.4 Mass and logarithmic flux-balance equations

Let

$$\begin{align}
N_{AB}:=\dot C_{AB}, \qquad \mathcal N_{AB}:=\frac12\dot N_{AB},
\end{align}$$

and let $\mathcal M$ and $\mathcal J_A^{\rm GLZ}$ denote the GLZ covariant mass and current aspects；the superscript distinguishes this current from the off-shell descent coefficient $\mathcal J^A$ of section 9。Their first balance law is

$$\begin{align}
\boxed{ \dot{\mathcal M} = \frac12D_A\mathcal J_{\rm GLZ}^A +\frac14C_{AB}\mathcal N^{AB}.
}
\end{align}$$

The momentum aspect obeys the corresponding GLZ equation

$$\begin{align}
\dot{\mathcal P}_A = \partial_A\mathcal M +\widetilde\partial_A\widetilde{\mathcal M} {}+C_{AB}\mathcal J_{\rm GLZ}^B.
\end{align}$$

These formulae have the same functional form as in the peeling sector；the loss-of-peeling tensor enters the definition of $\mathcal P_A$ but does not add a new term to its evolution because $\dot D_{AB}=0$。

At every deeper radial order $n$，GLZ find a triangular logarithmic hierarchy：

$$\begin{align}
\dot E_{AB}^{n,n+1}=0,
\end{align}$$

while $E_{AB}^{n,n}$ is sourced by the absolutely conserved coefficient $E_{AB}^{n-1,n}$。This source-derived all-order statement concerns the solution recursion；it does not establish the all-order off-shell action theorem of Stage 4。

### 12.5 Restriction of the symplectic structure

For fixed $q_{AB}$，GLZ equation (3.9) reduces，after reinstating the Einstein--Hilbert normalization，to

$$\begin{align}
\Omega_{\rm GLZ}^{\delta q=0} = \frac1{32\pi G} \int_{\mathscr I^+} du\,d^2x\sqrt q\, \delta N^{AB} \wedge \delta C_{AB}.
\end{align}$$

Since $N_{AB}=\dot C_{AB}$，this is exactly

$$\begin{align}
\boxed{ \Omega_{\rm GLZ}^{\delta q=0} = \Omega_{\mathscr I,\rm can}
}
\end{align}$$

from Proposition 9.3。No first radial-log coefficient supplies an additional local canonical pair。For $\delta q_{AB}\neq0$，GLZ contain further pairs and an endpoint term involving $D_{AB}$；that belongs to Stage 5，not to the fixed-source space considered here。

### 12.6 What is and is not identified with Freidel--Riello

Freidel--Riello impose three Penrose boundary conditions to make the conformal Einstein tensor regular。Their accessible off-shell space still has

$$\begin{align}
E_{ab} = \mathcal O(\Omega^{d-3}),
\end{align}$$

and their general symplectic-renormalization argument additionally assumes

$$\begin{align}
E_{ab} = \mathcal O(\Omega^{d-2}).
\end{align}$$

In $d=4$ this is the step

$$\begin{align}
E_{ab} = \mathcal O(\Omega) \quad\longrightarrow\quad E_{ab} = \mathcal O(\Omega^2).
\end{align}$$

They call the excluded leading piece $E_{\rm div}$。By contrast，Theorem 11.2 works in a fixed conformal frame and cancels every divergence visible through the first-log target weight without either restriction。

The precise comparison is therefore

$$
\boxed{
\begin{aligned}
\mathcal S_{\rm GLZ}^{\delta q=0}
&\subset
\mathcal F_{\rm hyp}
\subset
\mathcal F_0,
\\
\mathcal S_{\rm GLZ}^{\delta q=0}
&\subset
\mathcal F_{\rm FR}
\quad
\text{after matching the Bondi frame},
\end{aligned}
}
$$

but there is no proved off-shell equality

$$\begin{align}
\mathcal F_{\rm FR} \stackrel{\rm off\ shell}{=} \mathcal F_{\rm hyp}.
\end{align}$$

On exact vacuum solutions $E_{ab}=0$，so the extra Freidel--Riello condition is automatic。Its nontrivial content is the choice of accessible off-shell neighborhood and conformally covariant renormalization scheme，not a restriction of the exact vacuum solution set。

Freidel--Riello also leave the full presymplectic reduction and evolution constraints for future work。Consequently the present result supplies an action-level fixed-frame overlap，but not a bijection of their unreduced boundary variables with GLZ's reduced solution data。

### Theorem 12.1：Stage 3 finite-order dictionary

For the fixed-round first-log class：

1. imposing the vacuum hypersurface equations maps the independent off-shell coefficients to the GLZ Bondi coefficients as in section 12.1；
2. all divergent relative counterterms displayed in sections 9 and 11 restrict to zero；
3. the angular equations give $\dot D_{AB}=0$、$\dot E_{AB}^{(2)}=0$ and the verified evolution of $E_{AB}^{(1)}$；
4. $D_{AB}$ is precisely the leading non-peeling Weyl datum；
5. the action-derived symplectic form restricts exactly to the fixed-$q$ GLZ/Ashtekar--Streubel form；
6. the Freidel--Riello $E_{\rm div}=0$ restriction is not forced at the radial weights tested here，although its possible all-order conformal-covariance role is not excluded。

This completes Stage 3E at the same finite radial order as Theorem 11.2。

### 12.7 Harmonic-scattering input category

Sections 2.1--2.2 gave the geometric construction but did not attach a PDE topology to it。现在固定 [Kádár--Kehrberger](https://arxiv.org/abs/2501.09814) 的 semiglobal harmonic-gauge class的一个 asymptotically Minkowskian subcategory：

$$
\mathcal H_{\vec{\mathcal E},\epsilon}^{k}
=
\left\{
g_{\mathrm H}=\eta+h
\ \middle|\
\begin{array}{l}
\operatorname{Ric}(g_{\mathrm H})=0,\quad
\Upsilon[g_{\mathrm H};\eta]=0,
\\
rh\in H_b^{\vec a;k}(\overline{\mathcal D}),
\quad
\|rh\|_{H_b^{\vec a;k}}\leq\epsilon,
\\
rh\in\mathcal A_{\mathrm{phg}}^{\vec{\mathcal E}}
(\overline{\mathcal D}),
\quad
k\gg1
\end{array}
\right\}.
$$

$\overline{\mathcal D}$ 是他们在 $\mathscr I^-$、$i^0$、$\mathscr I^+$ 附近 blow up 后的 manifold with corners，$\vec{\mathcal E}$ 是各 boundary face 的 mixed index family。为落入本文 fixed-round action domain，还加三项 boundary normalization：

1. future conformal cut metric 是 fixed round $q_{AB}$；
2. harmonic solution所带的 future optical clock 已固定，包括 long-range light-bending 的 explicit logarithmic leading term；
3. residual BMS origin、angular frame 和 scale $r_0$ 已固定。

Kádár--Kehrberger 的 theorem 提供 small-data semiglobal vacuum solution、metric-adapted eikonal coordinates、weighted estimates和 polyhomogeneity propagation；它本身明确不计算 Bondi coefficients。下面完成的是从该 geometric PDE output 到本文 luminosity-radius Bondi history 的 map。

把 explicit optical leading term从 coordinate correction中剥离后，定义

$$\begin{align}
\operatorname{Sat}(\vec{\mathcal E})
\end{align}$$

为包含 $\vec{\mathcal E}$ 的最小 locally finite mixed index family，并在每个 face 下对以下 operations closed：

- Minkowski sums，来自 products 和 analytic composition；
- nonnegative integer shifts，来自 coordinate components和 ordinary derivatives；
- extended union，来自相同 weights 的 collision；
- $b$-primitive resonance

$$\begin{align}
(\rho\partial_\rho)F = \rho^z(\log\rho)^j:
\end{align}$$

  若 $z\neq0$ 保持 log degree，若 $z=0$ 则增加到 $j+1$。

这正是 nonlinear inverse metric、eikonal transport、radial integration、determinant root和 inverse-coordinate map所需的 completed hull。它是一个 upper bound；不声称每个 allowed index 都实际出现。

### 12.8 Exact nonlinear gauge functor

取 finite Bondi-time interval $I=[u_-,u_+]$。对 $g_{\mathrm H}\in\mathcal H_{\vec{\mathcal E},\epsilon}^{k}$，依次作：

#### Step 1：optical function

解

$$\begin{align}
g_{\mathrm H}^{\mu\nu}
\partial_\mu U\partial_\nu U = 0
\end{align}$$

并要求 $U$ 与 input optical clock 在 $\mathscr I^+$ 上有相同 normalization。令

$$\begin{align}
K^\mu := -g_{\mathrm H}^{\mu\nu}\partial_\nu U.
\end{align}$$

于是

$$\begin{align}
K(U)=0, \qquad g_{\mathrm H}(K,K)=0.
\end{align}$$

#### Step 2：generator coordinates

沿 $K$ transport angular labels 和一个 generator parameter：

$$\begin{align}
K(X^A)=0, \qquad K(\lambda)=1,
\end{align}$$

并在一张 large reference cut 上固定 $X^A$ 和 $\lambda$。在 $(U,\lambda,X^A)$ 中，

$$\begin{align}
g_{\lambda\lambda}=0, \qquad g_{\lambda A}=0.
\end{align}$$

这是 exact Newman--Unti-type gauge，不使用 radial Einstein equations。

#### Step 3：luminosity radius

令 $\gamma_{AB}$ 是 $U,\lambda=\mathrm{const}$ cuts 的 induced metric，并定义

$$\begin{align}
\boxed{ R = \left( \frac{\det\gamma_{AB}}{\det q_{AB}} \right)^{1/4}.
}
\end{align}$$

只要 $\partial_\lambda R>0$，可以用 $R$ 替换 $\lambda$。因为在 fixed $(U,X^A)$ 下

$$\begin{align}
\partial_R = \frac{\partial\lambda}{\partial R} \partial_\lambda,
\end{align}$$

所以

$$\begin{align}
g_{RR}=0, \qquad g_{RA}=0,
\end{align}$$

而定义本身给

$$\begin{align}
\det\gamma_{AB} = R^4\det q_{AB}.
\end{align}$$

因此得到 exact luminosity-radius Bondi metric

$$\begin{align}
\mathfrak B(g_{\mathrm H}) = g_{\mathrm B} = e^{2\beta}\frac VR\,dU^2 -2e^{2\beta}dU\,dR + \gamma_{AB} \left( dX^A-U^AdU \right) \left( dX^B-U^BdU \right).
\end{align}$$

Boundary normalizations固定后，

$$\begin{align}
\mathfrak B: \mathcal H_{\vec{\mathcal E},\epsilon}^{k} \longrightarrow \mathcal F_{\mathrm B}^{\operatorname{Sat}(\vec{\mathcal E})}
\end{align}$$

是一个 map，而不是 quotient-valued correspondence。

### 12.9 No-caustic domain 与 luminosity monotonicity

这个 map 的 domain 必须显式限制。令 angular Jacobi matrix 为

$$\begin{align}
\mathcal Q^A{}_B(\lambda) := \frac{\partial X^A(\lambda)}{\partial X_0^B}.
\end{align}$$

Kádár--Kehrberger estimates和 smallness给出，在 sufficiently far exterior collar 中

$$\begin{align}
\mathcal Q^A{}_B = \delta^A_B + \mathcal O_{C_b^{k-2}}(\varepsilon_{\mathrm{opt}}),
\end{align}$$

$$\begin{align}
\gamma_{AB} = \lambda^2 \left[ q_{AB} + e_{AB} \right], \qquad \|e\|_{C_b^{k-2}}
\leq C\varepsilon_{\mathrm{opt}},
\end{align}$$

$$\begin{align}
\partial_\lambda R = 1 + \mathcal O_{C_b^{k-3}}(\varepsilon_{\mathrm{opt}}).
\end{align}$$

选择 $R_*$ 使

$$\begin{align}
C\varepsilon_{\mathrm{opt}}(R_*,I)
< \frac14
\end{align}$$

便有

$$\begin{align}
\det\mathcal Q>\frac12, \qquad \det\gamma>0, \qquad \partial_\lambda R>\frac12.
\end{align}$$

所以

$$\begin{align}
\mathcal U_{I,R_*} := \left\{ U\in I,\ R\geq R_* \right\}
\end{align}$$

中没有 generator crossing、conjugate point 或 area-radius turning point。也可由 vacuum Raychaudhuri equation

$$\begin{align}
K(\vartheta) = -\frac12\vartheta^2 -\sigma_{AB}\sigma^{AB}
\end{align}$$

和

$$\begin{align}
\vartheta = \frac2R + \mathcal O(\varepsilon_{\mathrm{opt}}R^{-2})
\end{align}$$

得到相同 local conclusion。这个 theorem 不延拓过 first caustic，也不宣称 interior/global Bondi chart。

### Proposition 12.2：mixed polyhomogeneity preservation

在 $\mathcal U_{I,R_*}$ 上，若

$$\begin{align}
g_{\mathrm H} \in \mathcal A_{\mathrm{phg}}^{\vec{\mathcal E}},
\end{align}$$

则

$$\begin{align}
U-U_{\mathrm{lead}}, \quad X^A-X^A_{\mathrm{lead}}, \quad R-r_{\mathrm{lead}}, \quad g_{\mathrm B} \in \mathcal A_{\mathrm{phg}}^{ \operatorname{Sat}(\vec{\mathcal E})
}.
\end{align}$$

而且 harmonic 与 Bondi compactifications之间的 transition map 是一个 polyhomogeneous $b$-diffeomorphism：

$$\begin{align}
\Phi_{\mathrm B}^*\rho_i^{\mathrm B} = \rho_i^{\mathrm H}a_i, \qquad a_i>0, \qquad a_i
\in \mathcal A_{\mathrm{phg}}^{ \operatorname{Sat}(\vec{\mathcal E})
},
\end{align}$$

对每个 boundary face $i$ 成立。故 mixed corner indices逐 face保持，而不是把 $(i^0,\mathscr I^+)$ 的两组 weights混成单变量 series。

#### Proof

Eikonal equation 的 characteristic system 是 metric Hamiltonian

$$\begin{align}
H_g(x,p)=\frac12g^{\mu\nu}p_\mu p_\nu.
\end{align}$$

Inverse metric属于 additive saturation of $\vec{\mathcal E}$；polyhomogeneous ODE/transport induction遂给 $U,K,X^A,\lambda$ 的 saturated expansion。若 transport exponent为零，唯一新项正是 $b$-primitive多出的一阶 log。Determinant、fourth root和 inverse function theorem是 near-identity analytic operations，故仍在同一 saturated algebra。最后 pullback metric只使用 coordinate map的一阶 jet，完成结论。$\square$

这个 proposition 是 index preservation，不是 P3 所要求的 two-variable maximality：它说给定 harmonic input indices不会在 gauge map 中丢失 closure，却没有证明所得 family是所有 admissible $(\Omega,\rho)$ histories 的最大者。

### 12.10 Quantitative remainder map

令

$$\begin{align}
g_{\mathrm H}^{[N]}
\end{align}$$

是对每个 face截断到 weight $N$ 的 harmonic polyhomogeneous jet，$\Phi_{\mathrm B}^{[N]}$ 和 $g_{\mathrm B}^{[N]}$ 是上述三步按相同 order递归所得的 truncated gauge map和 Bondi metric。用 `definitions.md` 的 mixed weighted conormal norms，characteristic ODE stability给

$$\begin{align}
\boxed{ \left\|
\rho^{-N} \left( \Phi_{\mathrm B}
- \Phi_{\mathrm B}^{[N]} \right) \right\|_{C_b^{k-2}} \leq C_{N,k} \left( 1+\|rh\|_{C_b^k} \right)^{p_N} \left\| \rho^{-N} \left( g_{\mathrm H}
- g_{\mathrm H}^{[N]} \right) \right\|_{C_b^k}.
}
\tag{12.18}
\end{align}$$

Pullback再损失一个 derivative：

$$\begin{align}
\boxed{ \left\|
\rho^{-N} \left( g_{\mathrm B}
- g_{\mathrm B}^{[N]} \right) \right\|_{C_b^{k-3}} \leq \widetilde C_{N,k} \left( 1+\|rh\|_{C_b^k} \right)^{\widetilde p_N} \left\| \rho^{-N} \left( g_{\mathrm H}
- g_{\mathrm H}^{[N]} \right) \right\|_{C_b^k}.
}
\tag{12.19}
\end{align}$$

这里 $\rho^{-N}$ 是简写；在 corner 上应替换为每个 face 的 product weight。对两条 metrics作差给 local Lipschitz estimate

$$\begin{align}
\|\mathfrak B(g)-\mathfrak B(\widetilde g)\|_
{\mathcal B^{N,k-3}} \leq C_{N,k,\epsilon}
\|g-\widetilde g\|_
{\mathcal H^{N,k}}.
\end{align}$$

在 $b$-Sobolev version 中使用 Kádár--Kehrberger theorem 的 finite regularity loss而不是上面的 Hölder loss $3$；只要 input $k$ 大于目标 action jet order加该 fixed loss即可。没有声称这些 constants 对 $N\to\infty$ uniform。

### 12.11 Regulated action 与 counterterm continuity

Gauge map和 cutoff必须一起变换。对 harmonic solution定义 physical regulated region

$$\begin{align}
M_{R,I}[g_{\mathrm H}] := \left\{ U[g_{\mathrm H}]\in I, \quad R[g_{\mathrm H}]\leq R \right\}.
\end{align}$$

则 diffeomorphism covariance exact 给出

$$\begin{align}
S_{\mathrm{EH+GHY+lid+joint}} \left[ g_{\mathrm H};
M_{R,I}[g_{\mathrm H}] \right] = S_{\mathrm{EH+GHY+lid+joint}} \left[ g_{\mathrm B}; M_{R,I}^{\mathrm B} \right].
\end{align}$$

固定 radial order $N$ 时，sections 9--11 和 `all-order radial hierarchy.md` 的 counterterms只依赖有限个 Bondi coefficient/normal jets。由 (12.18)--(12.19)，

$$\begin{align}
S_{\mathrm{ren,H}}^{[N]} := S_{\mathrm{ren,B}}^{[N]} \circ\mathfrak B
\end{align}$$

在 $\mathcal H_{\vec{\mathcal E},\epsilon}^{k}$ 上是 continuous $C^2$ functional，并且

$$\begin{align}
\Theta_{\mathrm{ren,H}}^{[N]} = \mathfrak B^* \Theta_{\mathrm{ren,B}}^{[N]}, \qquad \Omega_{\mathrm{ren,H}}^{[N]} = \mathfrak B^* \Omega_{\mathrm{ren,B}}^{[N]}.
\end{align}$$

这要求

$$\begin{align}
k
> j_{\mathrm{ct}}(N) + 3,
\end{align}$$

其中 $j_{\mathrm{ct}}(N)$ 是该 finite-order scheme使用的最高 geometric jet。若坚持用 harmonic coordinate radius而不是 physical $R[g]$ 作 cutoff，两个 regulated actions不相等；必须另算 cutoff-displacement face/corner term。

### Theorem 12.3：harmonic-to-Bondi bridge

在以下精确条件下：

1. $g_{\mathrm H}$ 属于 small polyhomogeneous harmonic vacuum class $\mathcal H_{\vec{\mathcal E},\epsilon}^{k}$；
2. leading celestial metric、optical clock、BMS frame和scale已固定；
3. 只考察 no-caustic exterior domain $\mathcal U_{I,R_*}$；
4. input regularity超过所需 counterterm jet和 finite gauge loss；

存在唯一 normalized luminosity-radius Bondi representative

$$\begin{align}
\mathfrak B(g_{\mathrm H}) \in \mathcal F_{\mathrm B}^{ \operatorname{Sat}(\vec{\mathcal E})
},
\end{align}$$

其 mixed index family、finite-order remainders和 renormalized action/CPS data满足 Propositions 12.2、(12.18)--(12.19) 和 section 12.11。

这打通的是

$$\begin{align}
\boxed{ \text{semiglobal harmonic PDE solution} \longrightarrow
\text{no-caustic luminosity Bondi history} \longrightarrow
S_{\mathrm{ren}}^{[N]},\Theta_{\mathrm{ren}}^{[N]}, \Omega_{\mathrm{ren}}^{[N]}.
}
\end{align}$$

未包含的更强命题是：穿过 caustics 的 global Bondi chart、two-variable index family 的 maximality、以及 $N\to\infty$ 的 uniform convergence。这三项分别是 geometric impossibility boundary、P3 和下一条 P2 convergence question。

---

## 13. Stage 3 work ledger

| Work package | Status | Evidence |
|---|---|---|
| Regulated nonlinear model | Completed | Section 1 |
| Nonlinear Bondi gauge origin | Completed locally away from caustics | Section 2 |
| Exact determinant parametrization | Checked | Proposition 3.1 |
| Off-shell component index family | Declared | Section 4 |
| Physical/conformal weight dictionary | Completed | Section 4.3--4.4 |
| Nonlinear index closure | Proved for completed hull | Proposition 5.1 |
| Assumption/EOM ledger | Completed for first-log seed | Section 6 |
| Counterterm categories | Fixed | Section 7 |
| Exact spherical action audit | Completed | Section 8 |
| Generic tensor EH + GHY action ledger | Completed through divergent first-log weights | Section 9 |
| Action-value relative descent | Completed provisionally | Section 9.4；endpoint scheme not frozen |
| Generic first-variation ledger | Completed through divergent first-log weights | Proposition 9.3 |
| Finite-order $C^2$ radial-local result | Completed | Theorem 9.4 |
| Relative descent/cohomology | Completed at displayed weights；no obstruction | Sections 9.4--9.5 |
| Penrose/$E_{\rm div}$ nested spaces | Compared at displayed weights | Section 10 |
| Null lids and standard joints | Completed | Section 11.1--11.2 |
| Endpoint relative counterterm | Completed through divergent first-log weights | Proposition 11.1 |
| Finite endpoint symplectic sector | Established by asymptotic power counting | Section 11.3 |
| Finite-slab $C^2$ theorem | Completed at finite order | Theorem 11.2 |
| Nonlinear EOM and FR/GLZ dictionary | Completed at the first-log target order | Section 12 |
| Harmonic PDE $\to$ luminosity Bondi map | Completed on normalized no-caustic exterior collars | Sections 12.7--12.9 |
| Mixed-index and remainder control | Completed conditionally on the KK harmonic input class | Propositions 12.2 and equations (12.18)--(12.19) |
| Gauge-pulled action/CPS continuity | Completed at every fixed radial order | Sections 12.11 and Theorem 12.3 |

---

## 14. Sources and verification

Sources:

- Marc Geiller and Céline Zwikel, [*The partial Bondi gauge: Further enlarging the asymptotic structure of gravity*](https://arxiv.org/abs/2205.11401).
- Marc Geiller, Alok Laddha and Céline Zwikel, [*Symmetries of the gravitational scattering in the absence of peeling*](https://arxiv.org/abs/2407.07978), especially eqs. (2.1)--(2.3) and Appendix A.
- Laurent Freidel and Aldo Riello, [*Renormalization of conformal infinity as a stretched horizon*](https://arxiv.org/abs/2402.03097), especially sections 2, 5 and 7.
- J. Korbicz and J. Tafel, [*Lagrangian and Hamiltonian for the Bondi--Sachs metrics*](https://arxiv.org/abs/gr-qc/0403120).
- Thomas Mädler and Jeffrey Winicour, [*Bondi--Sachs Formalism*](https://arxiv.org/abs/1609.01731).
- István Kádár and Lionor Kehrberger, [*Scattering, Polyhomogeneity and Asymptotics for Quasilinear Wave Equations From Past to Future Null Infinity*](https://arxiv.org/abs/2501.09814), especially the harmonic-gauge Einstein scattering theorem and final-form corollary.

Verified:

- the GLZ page containing the exact determinant parametrization and first log positions was checked by text extraction and visual PDF rendering；
- the Freidel--Riello pages containing the conformal Bondi metric、$\Omega^3\log\Omega$ order in $d=4$、Penrose restrictions and $E_{\rm div}=0$ assumption were checked by text extraction；
- Mathematica verified Proposition 3.1 for a general non-diagonal two-metric；
- Mathematica verified that replacing the Newman--Unti generator parameter $\lambda$ by any monotone luminosity radius $R(U,\lambda,X)$ preserves $g_{RR}=g_{RA}=0$，and checked the determinant-root identity and its quadratic matrix expansion；
- Mathematica derived both exact densities in Proposition 8.1；
- Mathematica expanded those exact densities through the displayed radial orders and isolated the total-$u$-derivative divergences。
- the exact conformal identity in section 9.1 was checked against the spherical physical-frame density of Proposition 8.1；
- Mathematica computed $e^{2\beta}R[g]$ through order $z$ with both tracefree tensor polarizations and verified the covariant expression in section 9.2 on the axisymmetric sector；
- Mathematica retained $z^3L$ and $z^3L^2$ angular-metric terms in that computation and found no contribution to the displayed scalar-curvature coefficients；
- the exact GHY formula in section 9.3 was derived from

$$\begin{align}
\widetilde K = \widetilde\nabla_\mu s^\mu
\end{align}$$

  and reproduces Proposition 8.1 when $U^A=0$。
- Mathematica expanded the exact nonlinear Brown--York momentum pairing with arbitrary $(u,\theta)$ dependence in the diagonal tensor polarization、nonzero $\beta_1,\mathcal V_0,U_2^\theta$ and independent tangent variations，obtaining Proposition 9.3；
- a second Mathematica calculation retained both tracefree tensor polarizations and returned zero for the difference between the exact finite pairing and

$$\begin{align}
-\sqrt q \left( 4\delta\beta_1 -2\delta\mathcal V_0 +\frac12\dot C^{AB}\delta C_{AB} \right).
\end{align}$$

- the exact joint angle

$$\begin{align}
\eta=-\beta-\frac12\log(1-\mathcal V/r)
\end{align}$$

  was checked from the exact inverse Bondi metric by Mathematica，using $F>0$ and real $\beta$；
- Mathematica returned zero residual for

$$\begin{align}
2R^2\eta -R(-2\beta_1+\mathcal V_0)
  {}+2\beta_2 -\mathcal V_1(L_R) -\frac12\mathcal V_0^2 =0
\end{align}$$

  through order $R^0$；
- the cancellation of $\mathcal V_0$ and $\mathcal V_1(L_R)$ between bulk/GHY endpoint terms and the LMPS joints was checked coefficient by coefficient，and Mathematica returned the total residual

$$\begin{align}
\bigl( S_{\rm bulk,div}
  {}+S_{\rm out,div}
  {}+S_{\rm joint,div}
  \bigr) +8R\beta_1 -L_R\left(-8\beta_2-\frac14[CC]\right) =0.
\end{align}$$

- Mathematica verified the reparametrization laws used in section 11.4 and returned zero for the complete LMPS and independent-clock residuals。

Assumptions:

- fixed round $q_{AB}$ and fixed $\Omega=1/r$；
- local collar without caustics；
- luminosity radius is monotone；
- finite $u$-slab；
- standard class excludes leading-log shear by the Stage 2B obstruction；
- counterterm completeness will always be relative to section 7。

Not verified in this note:

- a second independent full non-axisymmetric symbolic verification of every term in section 9.2；
- subleading finite angular/tensor-sector nonlinear first-variation coefficients；
- the complete finite nonlinear lid symplectic form，as opposed to its divergent asymptotic sector；
- whether any Penrose condition is forced after opening the general-$q$ boundary-variable space；
- whether $E_{\rm div}=0$ becomes a boundary equation in that enlarged space；
- actual PDE realization of the nonlinear formal first-log tower。

The fixed-round displayed-weight question is resolved negatively by Theorems 9.4 and 11.2。On the general-$q$ domain，`dynamical celestial metric.md` Theorem 6.1 proves that the stronger strict-intrinsic、physical-spacetime-covariant all-order category is obstructed already by the leading $\Omega^{-1}\delta q^{AB}\wedge\delta N_{AB}$ class。The remaining frame-dependent action dictionary and symbolic/PDE checks are tracked by P1--P2 in `TODO.md`。
