# Stage 2B：4D free spin-2 bridge

## 0. Current verdict

这一阶段研究的是 full Einstein--Hilbert Dirichlet action 在 Minkowski background 附近的 Hessian，而不是先指定一个没有 boundary completion 的 Fierz--Pauli bulk action。

当前已经固定：

1. regulated spacetime region、outer GHY polarization 和 endpoint-first/radial-first 的分离；
2. gauge-saturated parent space、partial Bondi slice 和 linearized Bondi--Sachs slice；
3. 不使用 Einstein equations 的 componentwise off-shell index family；
4. first-log window 与 GLZ on-shell LAF expansion 的关系；
5. residual smooth BMS vector fields是由保持 gauge 和 leading fixed Bondi frame 推导出来的，而不是预先指定的 symmetry group；
6. bulk + outer-boundary Hessian、null lids、null--timelike joints 及其相对 canonical potentials；
7. standard first-log class 的 finite off-shell $\Theta^{(2)}_{\rm ren},\Omega^{(2)}_{\rm ren}$；
8. linearized Einstein hierarchy 的 all-order polynomial recursion、完整 formal cut data，以及 Ashtekar--Streubel restriction；
9. compact positive-frequency TT data 到 global linearized solution、exterior Bondi representative 和 full radiation jet 的 continuous injective map；
10. radiative spectral graph 与 stationary exterior multipoles构成的 actual image，严格小于 arbitrary formal Bondi tower。

Cross-stage status：

- beyond-first-log 的 finite-$N$ action support 已由 `all-order radial hierarchy.md` 覆盖；本 note sections 5.5--5.9 已补上 all-order linearized EOM recursion、Coulombic cut data和 Fourier/radiation-field actual-solution map；
- noncompact $u$ interval 上 fundamental radiative form 的 $1/u$-tail finiteness已由 `spatial infinity and endpoints.md` 证明；uniform PDE endpoint estimates仍是 P2；
- leading-log shear 在 local finite-jet/no-edge category 中已证明为 obstruction；`matter coupling.md` section 4.3 已进一步判定 nonlocal action counterterm 与 sink-free edge completion均不能保留 generic leading-log history；
- ordinary smooth BMS Hamiltonians和flux已在 `charges and Ward identities.md` 给出；generalized/extended completion仍是 P4。

---

## 1. Model, region and perturbative order

### 1.1 Background

取 retarded Bondi coordinates

$$\begin{align}
x^\mu=(u,r,x^A), \qquad u=t-r,
\end{align}$$

以及 Minkowski metric

$$\begin{align}
\bar g_{\mu\nu}dx^\mu dx^\nu = -du^2-2\,du\,dr+r^2q_{AB}dx^A dx^B,
\end{align}$$

其中 $q_{AB}$ 是 fixed unit round metric on $S^2$。Conventions 为

$$\begin{align}
\operatorname{sign}(\bar g)=(-,+,+,+), \qquad R^\rho{}_{\sigma\mu\nu} = \partial_\mu\Gamma^\rho_{\nu\sigma} -\partial_\nu\Gamma^\rho_{\mu\sigma} +\cdots.
\end{align}$$

Metric perturbation 定义为

$$\begin{align}
g_{\mu\nu}(\varepsilon) = \bar g_{\mu\nu} +\varepsilon h_{\mu\nu},
\end{align}$$

且这一阶段只保留 $\mathcal O(\varepsilon^2)$。

### 1.2 Regulated region

取

$$\begin{align}
M_{R,I} = \left\{ R_0\leq r\leq R, \quad u_-\leq u\leq u_+ \right\}.
\end{align}$$

Outer stretched infinity 为

$$\begin{align}
\mathcal B_R=\{r=R\}.
\end{align}$$

在 background 上，

$$\begin{align}
\bar n_\mu dx^\mu=dr, \qquad \bar n^\mu\partial_\mu = \partial_r-\partial_u,
\end{align}$$

且

$$\begin{align}
\bar\gamma_{ij}dy^i dy^j = -du^2+R^2q_{AB}dx^A dx^B.
\end{align}$$

取

$$\begin{align}
\bar K_{uu}=0, \qquad \bar K_{AB}=Rq_{AB}, \qquad \bar K=\frac2R, \qquad \sqrt{-\bar\gamma}=R^2\sqrt q.
\end{align}$$

第一轮令 $\delta h$ 在 $u=u_\pm$ 的 neighborhoods 中消失。Null lids 和 joints 并未删除；它们在 radial-local calculation 中不贡献 variation，并将在 endpoint stage 恢复。

### 1.3 Defining quadratic action

先定义 finite-cutoff Dirichlet action

$$\begin{align}
S_R^{\mathrm D}[g] = \frac1{16\pi G} \int_{M_{R,I}}d^4x\sqrt{-g}\,R[g] + \frac1{8\pi G} \int_{\mathcal B_R}d^3x\sqrt{-\gamma}\,K + S_{R_0} +S_{\mathrm{lids}} +S_{\mathrm{joints}}.
\end{align}$$

$S_{R_0}$ 的 data 固定。Null-lid 和 joint conventions 要在 endpoint stage 显式固定；当前只使用 variations 的 endpoint support condition。

Stage 2B 的 bare quadratic action 定义为

$$\begin{align}
\boxed{ S_R^{(2)}[h] = \frac12 \left. \frac{d^2}{d\varepsilon^2} S_R^{\mathrm D}[\bar g+\varepsilon h] \right|_{\varepsilon=0}
}.
\end{align}$$

等价地，它是 background-subtracted fluctuation action

$$\begin{align}
S_R^{\mathrm{fluc}}[\varepsilon h] = S_R^{\mathrm D}[\bar g+\varepsilon h] -S_R^{\mathrm D}[\bar g] -\varepsilon\, \delta S_R^{\mathrm D}[\bar g;h] = \varepsilon^2S_R^{(2)}[h] +\mathcal O(\varepsilon^3)
\end{align}$$

的 quadratic coefficient。这样显式删除 fixed-background vacuum term 和 tadpole；Stage 3 的 nonlinear action 不会使用这一 free-theory subtraction 代替真正的 nonlinear renormalization。

这一定义有三个作用：

1. bulk Fierz--Pauli density 和 radial boundary completion 来自同一个 functional；
2. integrations by parts 的 boundary ambiguity 不会被无意丢弃；
3. 后续 counterterms 是加到 $S_R^{(2)}$ 上，而不是只加到一个 on-shell surface functional 上。

是否还需要 asymptotically-flat reference subtraction 或 intrinsic/extended counterterms，是 divergence ledger 的结论，不在这里预设。

---

## 2. Gauge-saturated parent and Bondi slices

### 2.1 Abstract gauge action

Linearized diffeomorphisms 为

$$\begin{align}
\delta_\xi h_{\mu\nu} = \mathcal L_\xi\bar g_{\mu\nu} = 2\bar\nabla_{(\mu}\xi_{\nu)}.
\end{align}$$

定义 slice $\mathcal F_{\mathrm{BS}}$ 后，gauge-saturated parent space 是

$$\begin{align}
\widehat{\mathcal F}_{\mathrm{spin2}} = \left\{ h+\mathcal L_\xi\bar g \mid
h\in\mathcal F_{\mathrm{BS}}, \quad \xi\in\mathcal G_{\mathrm{phg}} \right\},
\end{align}$$

其中 $\mathcal G_{\mathrm{phg}}$ 由 coefficientwise radial integration 后仍属于 finite-log polyhomogeneous class 的 vector fields 组成。

这样定义 parent space 后，gauge accessibility 是一个需要显式检查的 statement，而不是对任意未定义 falloff 的假设。

### 2.2 Partial Bondi gauge

Partial Bondi gauge 为

$$\begin{align}
h_{rr}=0, \qquad h_{rA}=0.
\end{align}$$

对

$$\begin{align}
h'_{\mu\nu} = h_{\mu\nu} +\mathcal L_\xi\bar g_{\mu\nu},
\end{align}$$

有 exact coordinate identities

$$\begin{align}
(\mathcal L_\xi\bar g)_{rr} = -2\partial_r\xi^u,
\end{align}$$

$$\begin{align}
(\mathcal L_\xi\bar g)_{rA} = r^2q_{AB}\partial_r\xi^B -D_A\xi^u.
\end{align}$$

因此可依次解

$$\begin{align}
\partial_r\xi^u = \frac12h_{rr},
\end{align}$$

$$\begin{align}
\partial_r\xi^A = r^{-2}q^{AB} \left( D_B\xi^u-h_{rB} \right).
\end{align}$$

这些 integrals 的 resonance 和 log-degree criterion 与 `3d Maxwell.md` section 5.2 相同。若原始 parent 是上述 gauge saturation，则所得 $\xi$ 按定义属于 $\mathcal G_{\mathrm{phg}}$。

### 2.3 Linearized Bondi--Sachs gauge

这一阶段选择 areal radial coordinate，即在 partial gauge 之外加入 linearized determinant condition

$$\begin{align}
q^{AB}h_{AB}=0.
\end{align}$$

记

$$\begin{align}
H=q^{AB}h_{AB}.
\end{align}$$

Exact angular-trace identity 为

$$\begin{align}
q^{AB}
(\mathcal L_\xi\bar g)_{AB} = 4r\xi^r +2r^2D_A\xi^A.
\end{align}$$

因此 partial gauge 达到后，可取

$$\begin{align}
\xi^r = -\frac{H+2r^2D_A\xi^A}{4r}
\end{align}$$

使 $H'=0$。$\xi^r$ 不重新产生 $h_{rr}$ 或 $h_{rA}$。

所以

$$\begin{align}
\boxed{ h_{rr}=0, \qquad h_{rA}=0, \qquad q^{AB}h_{AB}=0
}
\end{align}$$

是 gauge-saturated parent 的一个 local linearized BS slice。这里 determinant condition 是 gauge choice，不是 Einstein equation。

### 2.4 Residual vector fields and the origin of smooth BMS

保持 partial gauge 和 angular trace的 residual vector field 必须满足

$$\begin{align}
\xi^u=f(u,x),
\end{align}$$

$$\begin{align}
\xi^A = Y^A(u,x) -\frac1rD^Af,
\end{align}$$

$$\begin{align}
\xi^r = -\frac r2D_AY^A +\frac12D^2f.
\end{align}$$

再要求保持 section 3 的 fixed leading Bondi frame：

$$\begin{align}
h_{ur}=o(1), \qquad h_{uu}=o(1), \qquad h_{uA}=\mathcal O(1), \qquad h_{AB}=o(r^2),
\end{align}$$

得到

$$\begin{align}
\partial_uY^A=0, \qquad \partial_uf = \frac12D_AY^A,
\end{align}$$

以及

$$\begin{align}
D_AY_B+D_BY_A-q_{AB}D_CY^C=0.
\end{align}$$

因此

$$\begin{align}
Y^A=Y^A(x)
\end{align}$$

是 smooth conformal Killing vector of the round sphere，而

$$\begin{align}
f(u,x) = T(x) +\frac u2D_AY^A.
\end{align}$$

这正是 smooth BMS vector field。也就是说，本项目中的 BMS 不是先验选择；它是

$$\begin{align}
\text{gauge slice} + \text{fixed leading frame} + \text{smoothness}
\end{align}$$

的 stabilizer。

Pure supertranslation 在 Minkowski background 上产生

$$\begin{align}
\delta_TC_{AB} = -2 \left( D_AD_BT -\frac12q_{AB}D^2T \right),
\end{align}$$

所以 section 3 的 leading shear sector 对 residual gauge action 闭合。

---

## 3. Off-shell component index family

### 3.1 Kinematical leading weights

固定 round $q_{AB}$、$\bar g_{ur}=-1$ 和 $\bar g_{uu}=-1$，并排除额外 leading boundary sources。第一轮 candidate weights 取

| Component | Kinematical leading order | Meaning |
|---|---:|---|
| $h_{AB}$ | $\mathcal O(r)$ | fixed $r^2q_{AB}$，允许 radiative shear |
| $h_{uA}$ | $\mathcal O(1)$ | fixed leading Carroll frame |
| $h_{ur}$ | $\mathcal O(r^{-1})$ | fixed leading normalization of $du\,dr$ |
| $h_{uu}$ | $\mathcal O(r^{-1})$ | fixed leading normalization of $du^2$ |
| $h_{rr},h_{rA}$ | $0$ | BS gauge slice |

这些是 off-shell boundary conditions。特别地，

$$\begin{align}
h_{ur}=\mathcal O(r^{-1})
\end{align}$$

没有使用 linearized $G_{rr}=0$；on shell 是否进一步变成 $\mathcal O(r^{-2})$ 或消失，要在最后判定。

### 3.2 General finite-log family

令

$$\begin{align}
L=\log(r/r_0).
\end{align}$$

对 $X\in\{AB,uA,ur,uu\}$，取独立 finite caps $K_n^X<\infty$，并写

$$\begin{align}
h_{AB} = r
\sum_{n=0}^\infty r^{-n}
\sum_{k=0}^{K_n^{AB}} H_{AB}^{n,k}(u,x)L^k,
\end{align}$$

$$\begin{align}
h_{uA} = \sum_{n=0}^\infty r^{-n}
\sum_{k=0}^{K_n^{uA}} U_A^{n,k}(u,x)L^k,
\end{align}$$

$$\begin{align}
h_{ur} = \sum_{n=0}^\infty r^{-n-1}
\sum_{k=0}^{K_n^{ur}} B^{n,k}(u,x)L^k,
\end{align}$$

$$\begin{align}
h_{uu} = \sum_{n=0}^\infty r^{-n-1}
\sum_{k=0}^{K_n^{uu}} M^{n,k}(u,x)L^k.
\end{align}$$

Bondi--Sachs condition 要求

$$\begin{align}
q^{AB}H_{AB}^{n,k}=0
\end{align}$$

对所有 $(n,k)$ 成立。

本阶段的 standard radiative class 还固定

$$\begin{align}
K_0^{AB}=0.
\end{align}$$

也就是说，$rC_{AB}$ 本身不乘 radial log。Leading-log shear 是一个更宽的 nested class；它会产生 endpoint-polynomial divergences，必须在完成 standard first-log window 后单独打开。

所有 displayed coefficients 在 off shell 时独立。不得施加：

- radial Einstein recursion；
- $U_A^{0,0}=\frac12D^BC_{AB}$；
- $B^{n,k}=0$；
- $\partial_uD_{AB}=0$；
- mass-loss 或 angular-momentum evolution；
- GLZ 的 $m\leq n+1$ 作为 off-shell maximum。

Variations 保持同一 index family，remainders 属于 `definitions.md` 的 weighted conormal spaces。

### 3.3 First-log calculation window

Stage 2B 的第一轮 explicit ledger 截到

$$\begin{align}
h_{AB} = rC_{AB} +D_{AB} +\frac1r \left( E_{AB}^{(0)} +LE_{AB}^{(1)} +L^2E_{AB}^{(2)} \right) +\mathcal R_{AB},
\end{align}$$

$$\begin{align}
h_{uA} = U_A^{(0)} +\frac1r \left( U_A^{(1,0)} +LU_A^{(1,1)} +L^2U_A^{(1,2)} \right) +\mathcal R_{uA},
\end{align}$$

$$\begin{align}
h_{ur} = \frac1r \left( B^{(0)} +LB^{(1)} +L^2B^{(2)} \right) +\mathcal R_{ur},
\end{align}$$

$$\begin{align}
h_{uu} = \frac1r \left( 2M^{(0)} +LM^{(1)} +L^2M^{(2)} \right) +\mathcal R_{uu}.
\end{align}$$

其中

$$\begin{align}
q^{AB}C_{AB} = q^{AB}D_{AB} = q^{AB}E_{AB}^{(k)} =0.
\end{align}$$

$L^2/r$ angular term 是为了覆盖 GLZ LAF family 在 $n=1$ 的 first non-peeling window；其他 components 使用同一 cap 是 off-shell closure 的保守选择，不是 on-shell claim。

Remainders 必须保留到足以证明被丢弃项不能贡献目标 radial weights。若 ledger 显示更 subleading term 与 overleading term 的 quadratic product仍能贡献 divergence，则 window 必须扩大，不能直接截断。

### 3.4 Source-to-off-shell dictionary

| Input from literature | This note uses it as | Not imported |
|---|---|---|
| Geiller--Zwikel partial Bondi $\gamma_{AB}$ expansion | candidate powers/log positions | Einstein coefficient relations and trace relations |
| GLZ LAF expansion | first-log window and a benchmark solution sector | $m\leq n+1$ as an off-shell maximum |
| Campoleoni et al. spin-2 action | on-shell peeling benchmark | their traceless radial gauge as an EH off-shell gauge slice |
| Freidel--Riello renormalized potential | later comparison target | Penrose boundary conditions as automatic off-shell assumptions |

Campoleoni et al. impose

$$\begin{align}
h_{r\mu}=0, \qquad q^{AB}h_{AB}=0
\end{align}$$

in a Maxwell-like/unimodular spin-2 formulation and then evaluate the action on shell。Our BS slice instead has

$$\begin{align}
h_{rr}=h_{rA}=0, \qquad q^{AB}h_{AB}=0,
\end{align}$$

while $h_{ur}$ remains an independent off-shell coefficient。The two descriptions may coincide only after the relevant constraint/gauge statement is proved。

---

## 4. Variational and counterterm categories

### 4.1 Radial-local problem

第一轮要求

$$\begin{align}
\delta h=0 \qquad \text{near }u=u_\pm.
\end{align}$$

需要分别展开

$$\begin{align}
S_R^{(2)}, \qquad \delta S_R^{(2)}, \qquad \Theta_R^{(2)}, \qquad \Omega_R^{(2)}=\delta\Theta_R^{(2)}.
\end{align}$$

不能用 integration over $S^2$ 或 $u$ 后的偶然抵消替代 local density cancellation。

### 4.2 Nested counterterm classes

先测试 strict intrinsic quadratic class

$$\begin{align}
\mathfrak C_{\mathrm{int}}^{(2)} = \left\{ \int_{\mathcal B_R} \sqrt{-\bar\gamma}\, \ell^{(2)} \left( h_{ij}, \bar D_ih_{jk}, \bar D_i\bar D_jh_{kl}; R,L \right) \right\},
\end{align}$$

其中：

- jets 至多二阶；
- density 对 stretched-boundary diffeomorphisms covariant；
- coefficients 可依赖 background cutoff geometry 和 $L$；
- 不使用 linearized Einstein equations；
- 不含 inverse angular operators。

若这一类不足，再打开

$$\begin{align}
\mathfrak C_{\mathrm{ext}}^{(2)}
\end{align}$$

允许 linearized extrinsic curvature、normal derivative 或 radial canonical momentum。此时必须说明 boundary polarization 是否从 Dirichlet 变为 mixed。

### 4.3 Required descent equation

每个 divergent radial weight 必须满足

$$\begin{align}
\Theta_{\mathrm{div}}^{(2)} +\delta\ell_{\mathrm{ct}}^{(2)} -d_{\mathcal B}\vartheta_{\mathrm{ct}}^{(2)} =0
\end{align}$$

或留下被明确识别的 anomaly/obstruction。仅有

$$\begin{align}
S_R^{(2)}+S_{\mathrm{ct}}^{(2)} =\mathcal O(1)
\end{align}$$

不构成完成条件。

### 4.4 Exact Hessian and radial canonical momentum

采用 covariant metric variations 时，finite-cutoff Dirichlet action 的 exact first variation convention 为

$$\begin{align}
\delta S_R^{\mathrm D} = -\frac1{16\pi G} \int_{M_{R,I}} d^4x\sqrt{-g}\, G^{\mu\nu}\delta g_{\mu\nu} -\frac1{16\pi G} \int_{\mathcal B_R} d^3x\, \mathcal P^{ij}\delta\gamma_{ij} +\cdots,
\end{align}$$

其中

$$\begin{align}
\mathcal P^{ij} = \sqrt{-\gamma} \left( K^{ij}-K\gamma^{ij} \right)
\end{align}$$

是 Brown--York momentum density，省略号表示 inner/lid/joint pieces。

Taylor expansion 立即给出 exact quadratic action

$$\begin{align}
\boxed{ S_{R,\mathrm{rad}}^{(2)}[h] = -\frac1{32\pi G} \left[ \int_{M_{R,I}} d^4x\sqrt{-\bar g}\, h_{\mu\nu}G_{(1)}^{\mu\nu}[h] + \int_{\mathcal B_R} d^3x\, h_{ij}\mathcal P_{(1)}^{ij}[h] \right] +S_{R_0}^{(2)}
}
\end{align}$$

其中

$$\begin{align}
S_R^{(2)} = S_{R,\mathrm{rad}}^{(2)} +S_{\mathrm{lids}}^{(2)} +S_{\mathrm{joints}}^{(2)}.
\end{align}$$

以及

$$\begin{align}
\boxed{ \delta S_R^{(2)} = -\frac1{16\pi G} \left[ \int_{M_{R,I}} d^4x\sqrt{-\bar g}\, G_{(1)}^{\mu\nu}[h]\delta h_{\mu\nu} + \int_{\mathcal B_R} d^3x\, \mathcal P_{(1)}^{ij}[h]\delta h_{ij} \right]
}
\end{align}$$

for endpoint-supported variations。这里

$$\begin{align}
G_{\mu\nu}^{(1)}[h] = \frac12 \left[ -\bar\Box h_{\mu\nu} -\bar\nabla_\mu\bar\nabla_\nu h +\bar\nabla_\mu\bar\nabla^\rho h_{\rho\nu} +\bar\nabla_\nu\bar\nabla^\rho h_{\rho\mu} -\bar g_{\mu\nu} \left( \bar\nabla_\rho\bar\nabla_\sigma h^{\rho\sigma} -\bar\Box h \right) \right],
\end{align}$$

且在 BS slice 上

$$\begin{align}
h=-2h_{ur}.
\end{align}$$

#### 4.4.1 Relative dictionary to a first-derivative Fierz--Pauli representative

The phrase “Fierz--Pauli action” is ambiguous up to integrations by parts。Fix the representative

$$\begin{align}
\boxed{ \boldsymbol L_{\rm FP}^{(2)} = -\frac{\bar{\boldsymbol\epsilon}}{32\pi G} \mathcal K_{\rm FP}, }
\end{align}$$

with

$$\begin{aligned}
\mathcal K_{\rm FP} =& \frac12 \bar\nabla_\lambda h_{\mu\nu} \bar\nabla^\lambda h^{\mu\nu} - \bar\nabla_\mu h^{\mu\nu} \bar\nabla^\rho h_{\rho\nu}
\\
& + \bar\nabla_\mu h^{\mu\nu}
\bar\nabla_\nu h - \frac12
\bar\nabla_\lambda h
\bar\nabla^\lambda h.
\end{aligned}
\end{aligned}$$

Define

$$\begin{aligned}
V^\alpha[h] =& -\frac12h_{\mu\nu}\bar\nabla^\alpha h^{\mu\nu} -\frac12h^{\alpha\nu}\bar\nabla_\nu h +h^{\alpha\nu}\bar\nabla_\rho h^\rho{}_\nu
\\
& -\frac12h\,\bar\nabla_\rho h^{\alpha\rho} +\frac12h\,\bar\nabla^\alpha h.
\end{aligned}$$

On the Minkowski background the following identity is exact off shell：

$$\begin{align}
\boxed{ h_{\mu\nu}G_{(1)}^{\mu\nu}[h] = \mathcal K_{\rm FP} + \bar\nabla_\alpha V^\alpha[h].
}
\end{align}$$

Writing

$$\begin{align}
\star V := \iota_V\bar{\boldsymbol\epsilon},
\end{align}$$

the bulk Hessian and the chosen first-derivative representative obey

$$\begin{align}
-\frac1{32\pi G}
\int_M
\bar{\boldsymbol\epsilon}\, h_{\mu\nu}G_{(1)}^{\mu\nu} = \int_M\boldsymbol L_{\rm FP}^{(2)} -\frac1{32\pi G} \int_{\partial M}\iota^*(\star V).
\end{align}$$

Consequently the complete relative Fierz--Pauli action is not the bulk integral alone。For every codimension-one face $F$ define

$$\begin{align}
\boxed{ \boldsymbol B_{F}^{\rm FP\to D} = \boldsymbol B_{F,\rm D}^{(2)} -\frac1{32\pi G} \iota_F^*(\star V), }
\end{align}$$

where $\boldsymbol B_{F,\rm D}^{(2)}$ is the quadratic boundary term inherited from the Dirichlet action。In particular，

$$\begin{align}
\boxed{ \boldsymbol B_{\mathcal B_R}^{\rm FP\to D} = -\frac1{32\pi G} \left[ \iota_{\mathcal B_R}^*(\star V) + h_{ij}\mathcal P_{(1)}^{ij}\,d^3x \right].
}
\end{align}$$

For the fixed affine null normalization of section 4.7，

$$\begin{align}
\boldsymbol B_{\Sigma_\pm,\rm D}^{(2)}=0,
\end{align}$$

and hence

$$\begin{align}
\boxed{ \boldsymbol B_{\Sigma_\pm}^{\rm FP\to D} = -\frac1{32\pi G} \iota_{\Sigma_\pm}^*(\star V).
}
\end{align}$$

The pullbacks are unambiguous even though a null face has no unit normal：$\star V$ is a spacetime three-form。In coordinates，

$$\begin{align}
\iota_{\Sigma_u}^*(\star V) = \left. \sqrt{-\bar g}\,V^u
\,dr\wedge d^2x \right|_{\Sigma_u}
\end{align}$$

with the sign of the oriented initial/final lid supplied by Stokes' theorem。Likewise the outer pullback is the oriented $r$-face component of the same three-form。

Before tangential integrations by parts on a face，the exact bulk shift creates no new codimension-two functional。The joint action is therefore precisely the quadratic LMPS joint

$$\begin{align}
\boxed{ \boldsymbol C_{C_{\pm,R}}^{\rm FP\to D} = \boldsymbol C_{C_{\pm,R},\rm D}^{(2)}
}
\end{align}$$

of section 4.7。If one integrates tangential derivatives inside $\boldsymbol B_F^{\rm FP\to D}$ to choose a different face polarization，the induced $d_F$-exact term must be transferred to the adjacent joint；this is the standard relative-corner ambiguity，not a change of theory。

Combining all faces and joints gives the finite-cutoff identity

$$\begin{align}
\boxed{ S_{\rm FP}^{(2)} + \sum_F\int_F\boldsymbol B_F^{\rm FP\to D} + \sum_C\int_C\boldsymbol C_C^{\rm FP\to D} = S_{\rm D}^{(2)}.
}
\end{align}$$

It follows before imposing the Bondi slice or any EOM that

$$\begin{align}
\Theta_{\rm FP}^{\rm completed} = \Theta_{\rm D}^{(2)}, \qquad \Omega_{\rm FP}^{\rm completed} = \Omega_{\rm D}^{(2)}.
\end{align}$$

Thus the bulk Fierz--Pauli representative and the EH + GHY Hessian are equivalent only as relative actions。Dropping the displayed face completion changes the canonical data。

为了给 outer canonical data 一个可直接代入的表达式，记

$$\begin{align}
a=h_{uu}, \qquad b=h_{ur}, \qquad v_A=h_{uA}, \qquad c_{AB}=h_{AB}, \qquad q^{AB}c_{AB}=0.
\end{align}$$

定义

$$\begin{align}
\mathcal S = r \left[ -2b+2a +r \left( \partial_ra -2\partial_ub +\partial_ua \right) \right].
\end{align}$$

则 exact linearized momentum density 为

$$\begin{align}
\boxed{ \mathcal P_{(1)}^{uu} = \sqrt q \left( 2rb+D^Av_A \right)
},
\end{align}$$

$$\begin{align}
\boxed{ \mathcal P_{(1)}^{uA} = -\frac{\sqrt q}{2r} q^{AB} \left[ 2v_B +r \left( D_B(a-b) +\partial_rv_B \right) \right]
},
\end{align}$$

以及

$$
\boxed{
\begin{aligned}
\mathcal P_{(1)}^{AB}
=
\frac{\sqrt q}{2r^2}
q^{AC}q^{BD}
\big[
&(\partial_r-\partial_u)c_{CD}
+2D_{(C}v_{D)}
-2q_{CD}D^Ev_E\\
&+q_{CD}\mathcal S
\big].
\end{aligned}
}
$$

这些 formulas 包含 $h_{ur}$ 对 perturbed unit normal 的贡献；若先把 $h_{ur}$ 静默置零，就不能由 EH + GHY Hessian 得到这个 momentum。

### Proposition 4.1

在 section 3.3 的 standard first-log window 上，bulk + outer-boundary functional $S_{R,\mathrm{rad}}^{(2)}$ 已经 radially finite，并且定义一个 continuous quadratic functional。无需 outer radial counterterm：

$$\begin{align}
\ell_{\mathrm{ct}}^{(2)} = 0, \qquad \vartheta_{\mathrm{ct}}^{(2)} = 0.
\end{align}$$

#### Proof

对 leading homogeneous fields

$$\begin{align}
c_{AB}=rC_{AB}, \qquad v_A=U_A^{(0)}, \qquad a=\frac{2M^{(0)}}r, \qquad b=\frac{B^{(0)}}r,
\end{align}$$

直接代入 exact $G_{\mu\nu}^{(1)}$ 得到

$$\begin{align}
\sqrt{-\bar g}\, h_{\mu\nu}G_{(1)}^{\mu\nu}[h] = \frac{\sqrt q}{r^2} \mathcal Q_2 \left( C,M^{(0)},B^{(0)},U^{(0)}; D_A \right).
\end{align}$$

$\mathcal Q_2$ 是 $S^2$ 上的 local quadratic differential polynomial。Mathematica 的 component calculation 中，$r^2$ 乘以上式后恰好与 $r$ 无关；没有 $r^p$ with $p\geq-1$。

每把一个 field 替换为 section 3.3 的更 subleading coefficient，radial weight 至少再下降一阶。Radial differentiation 只降低 power，并至多降低 log degree；tangential differentiation 不改变 radial power。因此完整 first-log window 满足

$$\begin{align}
\sqrt{-\bar g}\, h_{\mu\nu}G_{(1)}^{\mu\nu}[h] = \mathcal O \left( r^{-2}L^{K_*} \right)
\end{align}$$

for some finite $K_*$，所以 bulk radial integral absolutely converges。

Outer density 可直接由 section 4.4 的 momentum 计算：

$$\begin{align}
h_{ij}\mathcal P_{(1)}^{ij} = -\frac{\sqrt q}{2} C^{AB}\dot C_{AB} +\mathcal O \left( r^{-1}L^{K_*} \right).
\end{align}$$

因此 cutoff limit finite。对任意 allowed variation，同理有

$$\begin{align}
\mathcal P_{(1)}^{ij}[h]\delta h_{ij} = -\frac{\sqrt q}{2} \dot C^{AB}\delta C_{AB} +\mathcal O \left( r^{-1}L^{K_*} \right).
\end{align}$$

所有 estimates 对 bounded coefficient sets 和 `definitions.md` 的 finite collections of conormal derivatives uniform。Bulk integral 和 outer-boundary limit 因而是 continuous bilinear forms；$S_{\mathrm{rad}}^{(2)}$ 实际上是 $C^\infty$ quadratic functional。Null lids 和 joints 的数值及其 variations 不在本 proposition 内。$\square$

### 4.5 Finite null-boundary potential

由 Proposition 4.1，

$$\begin{align}
\boxed{ \Theta_{\mathscr I}^{(2)} \left[ h;\delta h \right] = \frac1{32\pi G} \int_{u_-}^{u_+}du \int_{S^2}d^2x\sqrt q\, \dot C^{AB}\delta C_{AB}
}
\end{align}$$

是 finite radial limit。相应 field-space exterior derivative 为

$$\begin{align}
\boxed{ \Omega_{\mathscr I}^{(2)} = \frac1{32\pi G} \int_{u_-}^{u_+}du \int_{S^2}d^2x\sqrt q\, \delta\dot C^{AB} \wedge \delta C_{AB}
}.
\end{align}$$

这一步没有 impose $G_{\mu\nu}^{(1)}=0$。在 solution space 上，它将成为 Ashtekar--Streubel flux form。

First subleading radial-log coefficients

$$\begin{align}
D_{AB}, \qquad E_{AB}^{(1)}, \qquad E_{AB}^{(2)}
\end{align}$$

不出现在这个 finite null-boundary flux 中；它们的 contributions 至少为 $\mathcal O(r^{-1}L^{K_*})$。这与 GLZ 的 nonlinear observation——radiative flux 对 peeling failure 不敏感，而 codimension-two charges 可以敏感——在 linear level 相符。它们是否进入 cut/corner canonical data 仍须在 endpoint stage 计算。

### 4.6 Counterterm verdict and scope

对 standard first-log window 的 bulk + outer sector，divergent radial weights 的集合为空。因此 strict intrinsic class 已经足够，且 minimal outer renormalization scheme 是 bare scheme。

这不是以下更强命题：

1. 所有 finite local boundary terms 都被分类；
2. 允许 $rL^kC_{AB}^{(k)}$ 的 leading-log shear 后仍无需 counterterms；
3. 允许 $\delta q_{AB}\neq0$ 或 leading $\beta_0,U_0^A$ sources 后仍然 finite。

特别地，leading-log shear 会使

$$\begin{align}
h_{ij}\mathcal P_{(1)}^{ij} \sim -\frac{\sqrt q}{2} C^{AB}(L)\partial_uC_{AB}(L),
\end{align}$$

产生 endpoint-polynomial divergences。它属于下一层 nested-class audit，不由 Proposition 4.1 覆盖。

### 4.7 Null lids and null--timelike joints

恢复 arbitrary endpoint variations。固定 null normal

$$\begin{align}
k_\mu dx^\mu=-du.
\end{align}$$

Partial Bondi conditions $g_{rr}=g_{rA}=0$ imply

$$\begin{align}
k^2=g^{uu}=0.
\end{align}$$

由于 $k_\mu$ 是 exact null one-form，

$$\begin{align}
k^\nu\nabla_\nu k_\mu = \frac12\partial_\mu(k^2) =0.
\end{align}$$

所以在整个 off-shell BS slice 上，$k^\mu$ 都是 affinely parametrized，null nonaffinity 为

$$\begin{align}
\kappa=0.
\end{align}$$

因此固定这一 normalization 后，Lehner--Myers--Poisson--Sorkin prescription 的 null-segment term

$$\begin{align}
-\frac1{8\pi G}
\int_{\Sigma_\pm}\kappa\,d\lambda\,d^2x\sqrt{\sigma}
\end{align}$$

identically vanishes。Null-normal rescaling 并未被 quotient 掉；若以后允许

$$\begin{align}
k\longmapsto e^\beta k,
\end{align}$$

则必须同时恢复 reparametrization counterterm。当前 fixed-$k$ variational problem 不需要它。

#### Outer joints

令 $s^\mu$ 是 $r=R$ 的 outward unit spacelike normal。Null--timelike joint angle 取

$$\begin{align}
\eta = \log|s\cdot k| = \log \left( \frac{-g^{ur}}{\sqrt{g^{rr}}} \right).
\end{align}$$

取 spacetime orientation $du\wedge dr\wedge d^2x$。在 outer cuts

$$\begin{align}
C_{\pm,R} = \{u=u_\pm,r=R\}
\end{align}$$

上，LMPS sign rule 给出

$$\begin{align}
S_{\rm joint,R} = \frac1{8\pi G} \left[ \int_{C_{+,R}}\sqrt{\sigma}\,\eta
- \int_{C_{-,R}}\sqrt{\sigma}\,\eta \right].
\end{align}$$

对

$$\begin{align}
g=\bar g+\varepsilon h
\end{align}$$

直接展开 inverse metric、joint angle 和 cut area，得到

$$\begin{align}
\eta = \frac{\varepsilon}{2}a + \varepsilon^2 \left( \frac{a^2}{4}
- \frac{v_Av^A}{2r^2} \right) + \mathcal O(\varepsilon^3),
\end{align}$$

以及

$$\begin{align}
\sqrt{\sigma} = r^2\sqrt q \left[ 1
- \frac{\varepsilon^2}{4r^4}
c_{AB}c^{AB} + \mathcal O(\varepsilon^3) \right].
\end{align}$$

所以 background-subtracted quadratic joint density 恰好为

$$\begin{align}
\boxed{ j_R^{(2)} = \sqrt q \left( \frac{R^2a^2}{4}
- \frac12v_Av^A \right)
}.
\end{align}$$

$b$ 和 $c_{AB}$ 均不出现在这一阶。对 section 3.3 的 ansatz，令

$$\begin{align}
P(L) = 2M^{(0)} +LM^{(1)} +L^2M^{(2)}.
\end{align}$$

则

$$\begin{align}
j_R^{(2)} = \sqrt q \left[ \frac14P(L_R)^2
- \frac12U_A^{(0)}U^{(0)A} \right] +o(1).
\end{align}$$

因此 broad first-log off-shell class 的 bare joint action 确实有 polynomial-in-$L_R$ divergence。它不是 bulk 或 outer-GHY divergence，也不能由只依赖 $\sigma_{AB}$ 的 strict intrinsic cut counterterm 消去：$P(L_R)$ 属于 normal-frame data，而不属于 cut metric。

在 fixed-normal extended corner category 中，可以加入

$$\begin{align}
\boxed{ S_{\eta^2}^{(2)} = -\frac1{8\pi G} \left[ \int_{C_{+,R}}\sqrt{\sigma}\,\eta^2
- \int_{C_{-,R}}\sqrt{\sigma}\,\eta^2 \right]_{\varepsilon^2}
}.
\end{align}$$

因为

$$\begin{align}
\left. \sqrt{\sigma}\,\eta^2 \right|_{\varepsilon^2} = \sqrt q\,\frac{R^2a^2}{4},
\end{align}$$

renormalized outer-joint limit 为

$$\begin{align}
\boxed{ J_{\rm ren}^{(2)}(u) = -\frac12 \int_{S^2}d^2x\sqrt q\, U_A^{(0)}U^{(0)A}
}.
\end{align}$$

这个 subtraction 是 local、quadratic、finite-jet，但依赖选定的 null normalization；它是 corner generating function，改变 corner polarization，却不改变 symplectic two-form。若坚持 strict intrinsic cut category，则结论不是“joint 自动 finite”，而是必须限制 $M^{(1)}=M^{(2)}=0$ 或改变 corner category。

#### Reparametrization completion and the boundary-clock no-go

先把“依赖 normalization”改写成一个 exact statement。令 $\lambda$ 是 null generator parameter，

$$\begin{align}
\partial_\lambda=k^\mu\partial_\mu, \qquad \partial_\lambda\sqrt{\sigma} = \sqrt{\sigma}\,\Theta.
\end{align}$$

在任意 positive local rescaling

$$\begin{align}
k\longmapsto k'=e^\varsigma k, \qquad d\lambda\longmapsto d\lambda'=e^{-\varsigma}d\lambda
\end{align}$$

下，LMPS transformation laws 是

$$\begin{align}
\kappa' = e^\varsigma \left( \kappa+\partial_\lambda\varsigma \right), \qquad \Theta'=e^\varsigma\Theta, \qquad \eta'=\eta+\varsigma.
\end{align}$$

把一个 null lid 的两个 joints 都包括在内，并令 $\epsilon_C=+1$ on its final cut and $-1$ on its initial cut。则

$$\begin{aligned}
S_{N+J}^{\rm bare} =& -\frac1{8\pi G} \int_N d\lambda\,d^2x\sqrt{\sigma}\,\kappa + \frac1{8\pi G}
\sum_{C\subset\partial N} \epsilon_C \int_Cd^2x\sqrt{\sigma}\,\eta, \\
\Delta_\varsigma S_{N+J}^{\rm bare} =& \frac1{8\pi G} \int_N d\lambda\,d^2x\sqrt{\sigma}\, \Theta\varsigma.
\end{aligned}$$

第二行只使用了

$$\begin{align}
\sqrt{\sigma}\,\partial_\lambda\varsigma = \partial_\lambda \left( \sqrt{\sigma}\,\varsigma \right)
- \sqrt{\sigma}\,\Theta\varsigma;
\end{align}$$

total-$\lambda$ term 与 joint shift 正好 cancel。标准 no-edge completion 是

$$\begin{align}
\boxed{ S_{\rm LMPS}^{\rm rep} = -\frac1{8\pi G} \int_N d\lambda\,d^2x\sqrt{\sigma}\, \Theta\log\!\left(\ell_{\rm rep}|\Theta|\right)
},
\end{align}$$

因为 $\sqrt{\sigma}\Theta\,d\lambda$ invariant，而 logarithm shifts by $\varsigma$。因此

$$\begin{align}
\Delta_\varsigma \left( S_{N+J}^{\rm bare} + S_{\rm LMPS}^{\rm rep} \right) =0
\end{align}$$

exactly wherever $\Theta\neq0$。$\ell_{\rm rep}$ 是 finite scheme scale；这一步只修复 linear joint action，尚未修复 $\eta^2$ subtraction。

Indeed，

$$\begin{align}
(\eta')^2-\eta^2 = 2\varsigma\eta+\varsigma^2.
\end{align}$$

在只允许 cut metric、$\eta$ 和不发生 inhomogeneous shift 的 finite jets 的 local cut category 中，不存在保持原 $\eta^2$ leading term 的 invariant completion：对任意 pointwise $\varsigma(x)$，一个 local density $F(\eta,\ldots)$ 的 invariance 要求

$$\begin{align}
0 = \left. \frac{d}{dt} F(\eta+t\varsigma,\ldots) \right|_{t=0} = \varsigma\,\partial_\eta F,
\end{align}$$

故 $\partial_\eta F=0$。这个 no-go 不排除使用 $\Theta$、reference normal 或 edge field；它精确说明 fixed-normal $\eta^2$ scheme 在原 cut-only category 中已经选择了一个 boundary clock。

要保持该 scheme 而把 clock choice 写成 gauge redundancy，引入 lid scalar $\varphi$，其 joint pullback 满足

$$\begin{align}
\varphi' = \varphi+\varsigma.
\end{align}$$

定义

$$\begin{align}
\widehat k=e^{-\varphi}k, \qquad d\widehat\lambda=e^\varphi d\lambda, \qquad \widehat\kappa = e^{-\varphi} \left( \kappa-\partial_\lambda\varphi \right),
\end{align}$$

以及

$$\begin{align}
\widehat\Theta=e^{-\varphi}\Theta, \qquad \widehat\eta=\eta-\varphi.
\end{align}$$

这些 quantities 全部 invariant。所需 completion 因而是

$$
\boxed{
\begin{aligned}
S_{N+J+\eta^2}^{\rm clock}
=&
-\frac1{8\pi G}
\int_N
d\widehat\lambda\,d^2x\sqrt{\sigma}\,
\widehat\kappa
\\
&
+
\frac1{8\pi G}
\sum_C\epsilon_C
\int_Cd^2x\sqrt{\sigma}\,
\widehat\eta
\\
&
-
\frac1{8\pi G}
\sum_C\epsilon_C
\left[
\int_Cd^2x\sqrt{\sigma}\,
\widehat\eta^2
\right]_{\varepsilon^2}.
\end{aligned}
}
$$

前两行也可写为

$$\begin{align}
S_{N+J}^{\rm bare}
- \frac1{8\pi G}
\int_N
d\lambda\,d^2x\sqrt{\sigma}\, \Theta\varphi.
\end{align}$$

因此三个 residual 分别是

$$\begin{align}
\frac1{8\pi G}\int_N\sqrt{\sigma}\Theta\varsigma, \qquad -\frac1{8\pi G}\int_N\sqrt{\sigma}\Theta\varsigma, \qquad 0,
\end{align}$$

and the complete residual is exactly zero。取 composite clock

$$\begin{align}
\varphi=\log\!\left(\ell_{\rm rep}|\Theta|\right)
\end{align}$$

gives the standard LMPS completion，但相应 invariant corner variable 是

$$\begin{align}
\widehat\eta = \eta-\log\!\left(\ell_{\rm rep}|\Theta|\right),
\end{align}$$

所以它不是原 fixed-normal $\eta^2$ scheme。若要求在 gauge $\varphi=0$ 中逐项恢复该 scheme，$\varphi$ 必须是 independent reference clock/spurion，或是等价的 reference-normal edge datum。

在 Minkowski background 周围令

$$\begin{align}
\varphi=\varepsilon\varphi_{(1)}+\mathcal O(\varepsilon^2).
\end{align}$$

Direct component expansion gives

$$\begin{align}
\frac{\Theta}{2/r} = 1+\varepsilon b+\mathcal O(\varepsilon^2), \qquad \widehat\eta^{(1)} = \frac a2-\varphi_{(1)}.
\end{align}$$

在 unitary clock gauge $\varphi=0$，

$$\begin{align}
\left. \sqrt{\sigma}\,\widehat\eta^2 \right|_{\varepsilon^2} = \sqrt q\,\frac{R^2a^2}{4},
\end{align}$$

所以之前的 $P(L_R)^2$ cancellation 和 $J_{\rm ren}^{(2)}$ 完全不变；任意 gauge-related normalization 给出同一个 $\widehat\eta$，故 finiteness 也 invariant。

最后必须区分 clock polarization。若 $\varphi$ 是 external spurion，固定 $\delta\varphi=0$ 后不增加 canonical pair。若把它作为 edge field variation，则

$$\begin{align}
-\frac1{8\pi G}
\int_N\varphi\,\partial_\lambda\sqrt{\sigma}
\end{align}$$

是 first-order boundary action，并在 cuts 增加

$$\begin{align}
\boxed{ \Omega_C^{\rm clock} = \frac1{8\pi G} \int_C \delta\sqrt{\sigma} \wedge \delta\varphi
}.
\end{align}$$

$\widehat\eta^2$ 项本身仍只是 invariant generating function：

$$\begin{align}
\Theta_{C,\eta^2}^{\rm clock} = -\frac{\epsilon_C}{8\pi G} \delta \left[ \int_C\sqrt{\sigma}\,\widehat\eta^2 \right]_{\varepsilon^2}, \qquad \delta\Theta_{C,\eta^2}^{\rm clock}=0.
\end{align}$$

所以结论是 conditional but complete：no-edge LMPS scheme 是 reparametrization invariant，却改变原 $\eta^2$ polarization；保持原 subtraction 的 invariant extension 存在，但它必然显式携带 reference clock，若 clock dynamical 则同时携带上述 corner canonical pair。

#### Null-lid potential

采用 covariant metric variation 的 Einstein--Hilbert Iyer--Wald potential，并对 background metric 沿 $h$ 做一次 variation。Mathematica 的 exact component calculation 给出

$$\begin{aligned}
16\pi G\,\theta^u_{(2)} = \sqrt q \bigg[ & -2rb\,\delta b +r^2 \left( \delta b\,\partial_rb +b\,\partial_r\delta b \right)\\
& -\frac2{r^3}c^{AB}\delta c_{AB} +\frac1{r^2} \left( \frac12\delta c^{AB}\partial_rc_{AB} +c^{AB}\partial_r\delta c_{AB} \right)
\bigg].
\end{aligned}$$

特别地，$a$ 和 $v_A$ cancel identically。定义 local fixed-frame generating density

$$\begin{align}
\mathcal F_{\rm lid} = -rb^2 +r^2b\partial_rb -\frac1{r^3}c^{AB}c_{AB} +\frac3{4r^2} c^{AB}\partial_rc_{AB}.
\end{align}$$

则 exact decomposition 为

$$\begin{align}
\boxed{ 16\pi G\,\theta^u_{(2)} = \sqrt q \left[ \delta\mathcal F_{\rm lid} +\frac1{4r^2} \left( c^{AB}\partial_r\delta c_{AB}
- \partial_rc^{AB}\delta c_{AB} \right) \right]
}.
\end{align}$$

把

$$\begin{align}
-\frac1{16\pi G} \left[ \int_{\Sigma_+}dr\,d^2x\sqrt q\,\mathcal F_{\rm lid}
- \int_{\Sigma_-}dr\,d^2x\sqrt q\,\mathcal F_{\rm lid} \right]
\end{align}$$

作为 lid canonical counterterm，是一个 finite scheme choice：它移走全部 field-space-exact part，而不只移走 divergent projection。得到

$$\begin{align}
\boxed{ \Theta_{\Sigma_u,\rm ren}^{(2)} = \frac1{64\pi G} \int_{R_0}^{\infty} \frac{dr}{r^2} \int_{S^2}d^2x\sqrt q\, \left( c^{AB}\partial_r\delta c_{AB}
- \partial_rc^{AB}\delta c_{AB} \right)
}
\end{align}$$

和

$$\begin{align}
\boxed{ \Omega_{\Sigma_u,\rm ren}^{(2)} = \frac1{32\pi G} \int_{R_0}^{\infty} \frac{dr}{r^2} \int_{S^2}d^2x\sqrt q\, \delta c^{AB}\wedge\partial_r\delta c_{AB}
}.
\end{align}$$

对 standard class，

$$\begin{align}
c_{AB} = rC_{AB} +D_{AB} +\mathcal O(r^{-1}L^2),
\end{align}$$

所以

$$\begin{align}
\frac1{r^2} \left( c^{AB}\partial_r\delta c_{AB}
- \partial_rc^{AB}\delta c_{AB} \right) = \frac1{r^2} \left( D^{AB}\delta C_{AB}
- C^{AB}\delta D_{AB} \right) + \mathcal O(r^{-3}L^2),
\end{align}$$

而

$$\begin{align}
\frac1{r^2}
\delta c^{AB}\wedge\partial_r\delta c_{AB} = \frac1{r^2} \delta D^{AB}\wedge\delta C_{AB} + \mathcal O(r^{-3}L^2).
\end{align}$$

两者均 absolutely integrable。Counterterms 本身是 continuous quadratic functionals，故 standard first-log class 的 full finite-slab action 在这一 fixed-frame extended category 中是 $C^2$。

### 4.8 Leading-log shear is an off-shell symplectic obstruction

现在单独打开

$$\begin{align}
c_{AB} = r \left( C_{AB}^{(0)} +LC_{AB}^{(1)} \right) +\cdots.
\end{align}$$

Null-lid symplectic form 的 divergent part 为

$$\begin{align}
\Omega_{\Sigma_u,R}^{(2)} \supset \frac{L_R}{32\pi G} \int_{S^2}d^2x\sqrt q\, \delta C^{(0)AB} \wedge \delta C_{AB}^{(1)}.
\end{align}$$

这一项可以被一个 $r=R$ corner potential 搬移；它本身不是 decisive obstruction。真正的问题出现在 outer flux：

$$\begin{aligned}
\Omega_{\mathcal B_R}^{(2)} \supset \frac1{32\pi G} \int du\,d^2x\sqrt q \big[ & L_R^2\, \delta\dot C^{(1)AB} \wedge \delta C_{AB}^{(1)}
\\
& +L_R \left( \delta\dot C^{(0)AB}\wedge\delta C_{AB}^{(1)} + \delta\dot C^{(1)AB}\wedge\delta C_{AB}^{(0)} \right)
\big].
\end{aligned}$$

$L_R$ cross term 是

$$\begin{align}
L_R\partial_u \left( \delta C^{(0)AB} \wedge \delta C_{AB}^{(1)} \right),
\end{align}$$

所以可归入 endpoint descent。相反，

$$\begin{align}
\delta\dot C^{(1)AB} \wedge \delta C_{AB}^{(1)}
\end{align}$$

不是 finite-$u$-jet local two-form 的 total $u$ derivative。一个 elementary highest-jet argument 即可看出这一点：若 primitive 含最高 $u$ derivative order $N$，其 total derivative 会产生 order $N+1$；逐阶消去后 primitive 只能是 zeroth order，而唯一无角向 operator 的候选

$$\begin{align}
\delta C^{(1)AB}\wedge\delta C_{AB}^{(1)}
\end{align}$$

identically vanishes。

因此在当前 locality、fixed-frame 和 no-new-edge-field category 中，

$$\begin{align}
\boxed{ K_0^{AB}=0
}
\end{align}$$

是一个真正的 off-shell symplectic obstruction boundary。扩大到 leading-log shear 至少需要以下一项：

1. 把 $\dot C_{AB}^{(1)}=0$ 预先作为 off-shell restriction；
2. 允许 nonlocality in $u$；
3. 加入携带该 canonical pair 的 boundary/edge field；
4. 改变 boundary covariance/polarization category。

Linearized Einstein equations 的确会推出 $\dot C_{AB}^{(1)}=0$；但 action-first construction 不能用这个 on-shell fact 消去 off-shell obstruction。

`matter coupling.md` section 4.3 tests the two natural enlarged categories and gives the same negative verdict for spin $0,1,2$。An arbitrary nonlocal action counterterm still has $\delta^2B=0$。An auxiliary-collar Wess--Zumino field can supply the opposite pair with

$$\begin{align}
\Pi_Y^{AB} = -\frac{L_R^2}{32\pi G} \partial_uY^{AB}, \qquad Y_{AB}(1,u,x)=C_{AB}^{(1)}(u,x),
\end{align}$$

but its bulk equation is $\partial_\rho\partial_uY_{AB}=0$。With a fixed inner edge this derives $\dot C_{AB}^{(1)}=0$；with a dynamical inner edge it merely transports the same anomaly there。Thus there is no sink-free $C^2$ edge completion retaining arbitrary leading-log shear histories。

---

## 5. Linearized Einstein reduction

### 5.1 Exact Bondi hierarchy

现在才 impose

$$\begin{align}
G_{\mu\nu}^{(1)}[h]=0.
\end{align}$$

用

$$\begin{align}
\dot X=\partial_uX, \qquad X'=\partial_rX,
\end{align}$$

并以 angle brackets 表示 $S^2$ symmetric tracefree projection。BS slice 上的 independent hypersurface/evolution equations 可写成

$$\begin{align}
\boxed{ G_{rr}^{(1)} = -\frac2r b'
},
\end{align}$$

$$
\boxed{
\begin{aligned}
2r^3G_{rA}^{(1)}
=
&
-2D^Bc_{AB}\\
&
+r
\left[
2v_A
+D^Bc'_{AB}
+r
\left(
-2D_Ab
+rD_Ab'
-r v_A''
\right)
\right],
\end{aligned}
}
$$

$$
\boxed{
\begin{aligned}
2r^4G_{ur}^{(1)}
=
&
D^AD^Bc_{AB}
-2rD^Av_A\\
&
+r^2
\left(
D^2b
-D^Av_A'
+2a
-4b
\right)
+2r^3
\left(
a'
-2b'
\right),
\end{aligned}
}
$$

$$\begin{align}
\boxed{ q^{AB}G_{AB}^{(1)} = -D^2b +D^Av_A' +r \left( -2a' +2b' -ra'' +2r\dot b' \right)
},
\end{align}$$

以及

$$
\boxed{
\begin{aligned}
2r^2G_{\langle AB\rangle}^{(1)}
=
&
-2c_{AB}
+2r
\left(
c'_{AB}
-\dot c_{AB}
\right)\\
&
+r^2
\left[
2D_{\langle A}D_{B\rangle}b
-2D_{\langle A}v_{B\rangle}'
-c_{AB}''
+2\dot c_{AB}'
\right].
\end{aligned}
}
$$

$G_{uA}^{(1)}$ 和 $G_{uu}^{(1)}$ 是 supplementary equations；在线性 Bianchi identity 下，它们分别给 cut data 的 evolution，而不替代上面的 radial hierarchy。

### 5.2 First-log coefficient relations

在 section 3.3 中写

$$\begin{align}
V_A(L) = U_A^{(1,0)} +LU_A^{(1,1)} +L^2U_A^{(1,2)},
\end{align}$$

$$\begin{align}
E_{AB}(L) = E_{AB}^{(0)} +LE_{AB}^{(1)} +L^2E_{AB}^{(2)}.
\end{align}$$

逐 radial weight 解以上 equations，得到：

1. 由 $G_{rr}^{(1)}=0$ 和 $b=o(1)$，

$$\begin{align}
\boxed{ b=0
   }
\end{align}$$

   throughout the asymptotic collar。因而所有 $B^{(k)}$ vanish on shell。

2. $G_{rA}^{(1)}=0$ 的 leading 和 next weights 给出

$$\begin{align}
\boxed{ U_A^{(0)} = \frac12D^BC_{AB}
   },
\end{align}$$

$$\begin{align}
\boxed{ U_A^{(1,2)}=0, \qquad U_A^{(1,1)} = \frac23D^BD_{AB}
   }.
\end{align}$$

   $U_A^{(1,0)}$ 是这一 radial order 的 homogeneous integration datum；其 evolution 由 supplementary equation 决定。

3. 令

$$\begin{align}
P(L) = 2M^{(0)} +LM^{(1)} +L^2M^{(2)}.
\end{align}$$

   Angular trace equation 在 order $r^{-1}$ 给出

$$\begin{align}
\partial_LP-\partial_L^2P=0.
\end{align}$$

   对 finite polynomial $P$，唯一解是 $P$ independent of $L$，故

$$\begin{align}
\boxed{ M^{(1)} = M^{(2)} = 0
   }.
\end{align}$$

4. Tracefree angular equation 的 leading weight 给出

$$\begin{align}
\boxed{ \dot D_{AB}=0
   }.
\end{align}$$

   下一 weight 的 $L^2,L^1,L^0$ coefficients 分别给出

$$\begin{align}
\boxed{ \dot E_{AB}^{(2)}=0
   },
\end{align}$$

$$\begin{align}
\boxed{ \dot E_{AB}^{(1)} = \frac12 D_{\langle A}U_{B\rangle}^{(1,1)} = \frac13 D_{\langle A}D^CD_{B\rangle C}
   },
\end{align}$$

   以及

$$\begin{align}
\boxed{ 2\dot E_{AB}^{(0)} = -D_{AB} -D_{\langle A} \left( U_{B\rangle}^{(1,1)}
   - U_{B\rangle}^{(1,0)} \right) +\dot E_{AB}^{(1)}
   }.
\end{align}$$

5. $G_{uu}^{(1)}=0$ 的 leading supplementary weight 给出 linear mass-aspect equation

$$\begin{align}
\boxed{ \dot M^{(0)} = \frac14 D_AD_B\dot C^{AB}
   }.
\end{align}$$

更低 radial weights 会调用 section 3.3 remainder 中的 coefficients。因此上面是 first-log window 的 closed leading subsystem，而不是 all-order solution formula。

### 5.3 Ashtekar--Streubel restriction and the first radial logs

令

$$\begin{align}
N_{AB}=\dot C_{AB}.
\end{align}$$

把 section 4.5 的 off-shell outer form限制到上述 solution space，得到

$$\begin{align}
\boxed{ \Omega_{\mathscr I}^{\rm AS} = \frac1{32\pi G} \int_{u_-}^{u_+}du \int_{S^2}d^2x\sqrt q\, \delta N^{AB} \wedge \delta C_{AB}
}.
\end{align}$$

这正是 fixed-round-frame 的 Ashtekar--Streubel radiative form。First radial logs

$$\begin{align}
E_{AB}^{(1)}, \qquad E_{AB}^{(2)}
\end{align}$$

不产生额外 finite $\mathscr I$ flux term。它们属于 solution space，但在 finite $u$-slab 上对 radiative flux 是 null directions；其 canonical pairing只能出现在 finite-radius/endpoint data 或进一步的 $u\to\pm\infty,i^0$ analysis 中。因而本阶段的 “first-log extension” 结论是：

$$\begin{align}
\boxed{ \Omega_{\mathscr I,\rm first\ radial\ log}^{(2)} = \Omega_{\mathscr I}^{\rm AS}, }
\end{align}$$

而不是 AS form 外再加一个由 $E_{AB}^{(1,2)}$ 构成的 local radiative pair。

Einstein Iyer--Wald current obeys

$$\begin{align}
d\omega^{(2)} = \delta_1G_{(1)}^{\mu\nu}\delta_2h_{\mu\nu}
- \delta_2G_{(1)}^{\mu\nu}\delta_1h_{\mu\nu}.
\end{align}$$

故对两条 linearized solutions，在 orientation $du\wedge dr\wedge d^2x$ 下，

$$\begin{align}
\boxed{ \Omega_{\Sigma_{u_+},\rm ren}^{(2)}
- \Omega_{\Sigma_{u_-},\rm ren}^{(2)} + \Omega_{\mathscr I}^{\rm AS}
- \Omega_{\mathcal B_{R_0}}^{(2)} =0
}.
\end{align}$$

固定 inner-boundary data 时最后一项为零。这是 on-shell flux-balance law；它没有被用于 off-shell renormalization。

### 5.4 Proper diffeomorphisms

对任意保持 linearized solution space 的 vector field $\xi$，Iyer--Wald identity 给出

$$\begin{align}
\omega^{(2)} \left( h,\mathcal L_\xi\bar g \right) = d k_\xi[h]
\end{align}$$

on shell。若 $\xi$ 及定义 $k_\xi$ 所需的一阶 jet 在

$$\begin{align}
\mathscr I, \qquad \Sigma_{u_\pm}, \qquad \mathcal B_{R_0}
\end{align}$$

全部为零，则

$$\begin{align}
\boxed{ \Omega_{\rm ren}^{(2)} \left( h,\mathcal L_\xi\bar g \right) =0
}
\end{align}$$

对所有 solution-space tangent $h$ 成立。因此 compactly boundary-supported diffeomorphisms 是 proper gauge。Residual BMS vectors 在 boundary 不为零，不能由这一结论宣布为 degeneracies；其 Hamiltonians 属于后续 charge stage。

### 5.5 All-order polynomial Bondi hierarchy

下面不再截断到 first-log window。写

$$\begin{align}
c_{AB} = \sum_{n=0}^\infty r^{1-n}C_{n\,AB}(L),
\end{align}$$

$$\begin{align}
v_A = \sum_{n=0}^\infty r^{-n}V_{n\,A}(L),
\end{align}$$

$$\begin{align}
a = \sum_{n=0}^\infty r^{-n-1}A_n(L),
\end{align}$$

其中每个 coefficient 是 $L$ 的 finite polynomial，且

$$\begin{align}
q^{AB}C_{n\,AB}=0.
\end{align}$$

由 $G_{rr}^{(1)}=0$ 和 $b=o(1)$ 仍有

$$\begin{align}
\boxed{b=0}
\end{align}$$

to all orders。定义

$$\begin{align}
\mathsf D_p := \partial_L-p,
\end{align}$$

于是

$$\begin{align}
\partial_r \left( r^{-p}X(L) \right) = r^{-p-1}\mathsf D_pX.
\end{align}$$

把 section 5.1 的 exact component equations coefficientwise 展开，得到三个 all-order recursions。

#### Hypersurface vector equation

对每个 $n\geq0$，

$$\begin{align}
\boxed{ \mathsf D_{n+2}\mathsf D_{n-1}V_{n\,A} = D^B\mathsf D_{n+1}C_{n\,AB}.
}
\tag{5.20}
\end{align}$$

当 $n\neq1$ 时，左侧在 finite polynomial space 上可逆；当 $n=1$ 时，$\mathsf D_0=\partial_L$ 有一维 kernel。因此

$$\begin{align}
V_{1\,A} = \mathcal J_A(u,x) + V_{1\,A}^{\mathrm{part}}(L),
\end{align}$$

其中 $\mathcal J_A$ 是唯一的 radial homogeneous vector datum。若 $C_{1\,AB}=D_{AB}$ 不含 log，则

$$\begin{align}
V_{1\,A}^{\mathrm{part}} = \frac23L D^BD_{AB},
\end{align}$$

恢复 section 5.2。

#### Scalar hypersurface equation

$G_{ur}^{(1)}=0$ 给出

$$\begin{align}
\boxed{ 2\mathsf D_nA_n = D^A\mathsf D_{n-2}V_{n\,A}
- D^AD^BC_{n\,AB}.
}
\tag{5.21}
\end{align}$$

对 $n>0$，$\mathsf D_n$ 可逆，故 $A_n$ 唯一。对 $n=0$，equation 的右侧因 (5.20) 和 $V_{0A}=\frac12D^BC_{0AB}$ 为零；因此

$$\begin{align}
A_0=2M(u,x)
\end{align}$$

是唯一 scalar homogeneous datum。Angular-trace equation 是

$$\begin{align}
\boxed{ \mathsf D_n \left( D^AV_{n\,A}
- \mathsf D_{n+1}A_n \right) = 0.
}
\tag{5.22}
\end{align}$$

对 $n>0$，它由 (5.20)--(5.21) 自动推出。所需 polynomial identity 是

$$\begin{align}
\mathsf D_{n+1}\mathsf D_{n-2}
- \mathsf D_{n+2}\mathsf D_{n-1} = 2\mathsf D_n.
\end{align}$$

对 $n=0$，(5.22) 只排除 $A_0$ 的 radial logs，不固定 $M$。

#### Tracefree evolution equation

在 weight $r^{1-n}$，$G_{\langle AB\rangle}^{(1)}=0$ 给出

$$\begin{align}
\boxed{ 2\mathsf D_{n+1}\dot C_{n+1\,AB} = \mathsf D_n \left[ \mathsf D_{n+1}C_{n\,AB} + 2D_{\langle A}V_{n\,B\rangle} \right].
}
\tag{5.23}
\end{align}$$

$\mathsf D_{n+1}$ 对所有 $n\geq0$ 都可逆，所以 (5.23) 唯一决定 $\dot C_{n+1}$，但不固定其 cut value。特别地，

$$\begin{align}
\dot C_{1\,AB}=0
\end{align}$$

对整个 finite-polynomial $C_1(L)$ 成立，而不只对 log-free $D_{AB}$ 成立。

#### Proposition 5.1：fixed-cap formal well-posedness

固定任意 finite radial order $N$，并在每个 $n\leq N$ 固定 finite polynomial caps。只要 cap family 包含

$$\begin{align}
\deg_LV_1 \leq \deg_LC_1+1,
\end{align}$$

并在其余 steps 对 $\mathsf D_p^{\pm1}$、angular derivatives 和 $\partial_u$ 闭合，则 (5.20)--(5.23) 递归给出唯一 formal solution modulo 下列 data：

$$
\boxed{
\begin{array}{l}
C_{0\,AB}(u,x),\\
C_{n\,AB}(u_0,L,x),\qquad 1\leq n\leq N,\\
M(u_0,x),\\
\mathcal J_A(u_0,x).
\end{array}
}
$$

Proof 是 triangular induction：先由 (5.20) 求 $V_n$，再由 (5.21) 求 $A_n$，最后由 (5.23) 演化 $C_{n+1}$。唯一 radial resonances 是 $\ker\mathsf D_0$ 在 $V_1$ 和 $A_0$ 中留下的 $\mathcal J_A$、$M$；$\mathsf D_0$ 的 right inverse 在 $V_1$ 上至多增加一阶 log。$\square$

这一定理没有把 cut data 称为 actual Cauchy data。它只是证明任意 fixed harmonic mode 和 finite log cap 的 formal hierarchy closed。

### 5.6 Supplementary equations 与 Coulombic cut data

定义 dual shear 和 dual derivative

$$\begin{align}
\widetilde C_{AB} := \epsilon_A{}^CC_{CB}, \qquad \widetilde D_Af := \epsilon_A{}^BD_Bf,
\end{align}$$

以及 linear dual mass aspect

$$\begin{align}
\widetilde M := \frac14D_AD_B\widetilde C^{AB}.
\end{align}$$

在本文的 metric convention 中，section 5.5 的 homogeneous coefficient与 GLZ 的 Bondi angular-momentum coefficient满足

$$\begin{align}
\mathcal J_A = -N_A^{\mathrm{GLZ}}.
\end{align}$$

[Geiller--Laddha--Zwikel](https://arxiv.org/abs/2407.07978) 的 covariant supplementary equations线性化后，恰好给出

$$\begin{align}
\boxed{ \dot M = \frac14D_AD_B\dot C^{AB}, } \tag{5.24}
\end{align}$$

$$\begin{align}
\boxed{ \dot{\mathcal J}_A = \frac23 \left( D_AM + \widetilde D_A\widetilde M \right).
}
\tag{5.25}
\end{align}$$

在 log-free peeling notation 中，(5.25) 等价于 Mädler--Winicour 的 linear angular-momentum equation

$$\begin{align}
\dot{\mathcal J}_A = \frac23D_AM
- \frac16D^E \left( D_ED^FC_{AF}
- D_AD^FC_{EF} \right).
\end{align}$$

在 standard LAF subspace $C_1(L)=D_{AB}$ 中，non-peeling coefficient 不改变 (5.24)--(5.25) 的 functional form。它进入 improved momentum

$$\begin{align}
\mathcal P_A^{(1)} = \frac32\mathcal J_A
- \frac43D^BC_{1\,AB}\big|_{L^0},
\end{align}$$

但 $\dot D_{AB}=0$，所以该 shift 不改变 evolution。若进一步允许 $C_1$ 自身带 logs，section 5.5 仍证明其每个 coefficient conserved；相应 supplementary variable须由 $G_{uA}$ 的 finite part重新 improved，不能直接把上式未经计算地外推。

因此 linear formal data 分成三层：

1. radiative history $C_{0\,AB}(u,x)$；
2. ordinary Coulombic cut pair $M(u_0,x),\mathcal J_A(u_0,x)$，由 (5.24)--(5.25) 演化；
3. conserved $C_1(L,x)$ 和 higher radial moments $C_{n\geq2}(u_0,L,x)$。

第三层是 formal higher-aspect data；是否来自 global solution不能由 recursion 本身判定。

低 harmonics 的 physical interpretation是：

- $M$ 的 $\ell=0,1$ modes 给 energy-momentum；
- $\mathcal J_A$ 的 $\ell=1$ electric/magnetic modes给 center-of-mass/angular momentum；
- higher harmonics和 $C_{n\geq1}$ encode higher electric/magnetic multipoles、Newman--Penrose-type constants或 formal cokernel，具体取决于 global regularity category。

### 5.7 Fixed tensor harmonics 的显式 recursion

令

$$\begin{align}
\Delta Y_{\ell m} = -\lambda_\ell Y_{\ell m}, \qquad \lambda_\ell=\ell(\ell+1),
\end{align}$$

并以 $T_{AB}^{\ell m,\pm}$ 表示 electric/magnetic STF tensor harmonics，$\ell\geq2$。它们满足

$$\begin{align}
D_{\langle A}D^CT_{B\rangle C}^{\ell m,\pm} = -\frac{\lambda_\ell-2}{2} T_{AB}^{\ell m,\pm}.
\end{align}$$

在 log-free peeling sector

$$\begin{align}
C_1=0, \qquad C_{n\,AB} = c_n^{\ell m,\pm}(u) T_{AB}^{\ell m,\pm},
\end{align}$$

对 $n\neq1$，(5.20) 给

$$\begin{align}
V_{n\,A} = -\frac{n+1}{(n+2)(n-1)} D^BC_{n\,AB}.
\end{align}$$

对 $n\geq2$，(5.23) 化为 scalar recursion

$$\begin{align}
\boxed{ \dot c_{n+1}^{\ell m,\pm} = \frac{ n\left[ \lambda_\ell-n(n+1) \right]
}{ 2(n+2)(n-1)
}
c_n^{\ell m,\pm}.
}
\tag{5.26}
\end{align}$$

当 $n=\ell$ 时 diagonal coefficient为零。故一个没有额外 higher-aspect constants 的 pure radiative $\ell$-mode，其 time-dependent radial chain 在 finite order终止；这与 integer-order spherical Hankel function 的 finite outgoing expansion一致。Formal solution仍可在该 order加入 time-independent integration constant，所以 “recursion terminates” 不等于 formal space没有更高 data。

### 5.8 Global TT Fourier data 到 Bondi histories

固定

$$\begin{align}
K=[\omega_0,\omega_1]\Subset(0,\infty)
\end{align}$$

和 finite spin-weighted harmonic set $\Lambda$。令

$$\begin{align}
\mathcal A_{K,\Lambda}^{\mathrm{TT}} = \bigoplus_{\lambda=\pm2}
\bigoplus_{(\ell,m)\in\Lambda} C_c^\infty(K^\circ)
\end{align}$$

并赋予 usual derivative seminorms。$a_\lambda(\omega,\widehat k)$ 应理解为 helicity line bundle 的 smooth section；用 ${}_{\lambda}Y_{\ell m}$ 展开后不需要选择 global polarization frame。

在 Cartesian Minkowski coordinates 中定义 positive-frequency TT field

$$\begin{align}
h_{ij}^{\mathrm{TT},+}(t,\mathbf x) = \sum_{\lambda=\pm2} \int_Kd\omega \int_{S^2}d^2\widehat k\, \frac{i\omega}{2\pi} a_\lambda(\omega,\widehat k) e_{ij}^{(\lambda)}(\widehat k) e^{-i\omega t+i\omega\widehat k\cdot\mathbf x},
\end{align}$$

$$\begin{align}
h_{0\mu}^{\mathrm{TT},+}=0, \qquad h^{\mathrm{TT}} = h^{\mathrm{TT},+} + \overline{h^{\mathrm{TT},+}},
\end{align}$$

其中

$$\begin{align}
\widehat k^ie_{ij}^{(\lambda)}=0, \qquad \delta^{ij}e_{ij}^{(\lambda)}=0.
\end{align}$$

每个这样的 field 是 global smooth finite-energy linearized vacuum solution。其 exterior Bondi representative由 section 2 的 exact gauge equations得到：

$$\begin{align}
\partial_r\xi^u = \frac12h_{rr}^{\mathrm{TT}},
\end{align}$$

$$\begin{align}
\partial_r\xi^A = r^{-2}q^{AB} \left( D_B\xi^u-h_{rB}^{\mathrm{TT}} \right),
\end{align}$$

$$\begin{align}
\xi^r = -\frac{ q^{AB}h_{AB}^{\mathrm{TT}} + 2r^2D_A\xi^A
}{ 4r
}.
\end{align}$$

取 radial integrals在 $r=\infty$ 的 BMS homogeneous pieces为零，固定唯一 representative。TT transversality使 $h_{rr}$、$h_{rA}$ 的 outgoing leading terms消失，所以这些 integrals convergent；coefficientwise radial integration preserving the polyhomogeneous class has already been proved in section 2。

#### Proposition 5.2：radiation-field realization

上面的 map

$$\begin{align}
\mathfrak F_{\mathrm{TT}\to\mathrm{BS}}: \mathcal A_{K,\Lambda}^{\mathrm{TT}} \longrightarrow \mathcal S_{\mathrm{BS}}^{\mathrm{lin}}
\end{align}$$

具有：

1. global existence in TT gauge and an exterior BS representative；
2. log-free full $1/r$ expansion satisfying (5.20)--(5.26) to every order；
3. injectivity modulo the fixed proper-gauge convention；
4. continuous dependence in the spectral and weighted-conormal topologies。

#### Proof

在 $t=u+r$、$\mathbf x=r\widehat x$ 上，对 $\widehat k$ integral 作 stationary phase。$\widehat k=\widehat x$ 的 critical point给 outgoing branch；$\widehat k=-\widehat x$ 带 $e^{-2i\omega r}$，因 $K\Subset(0,\infty)$ 可对 $\omega$ repeated integration by parts。所选 normalization使

$$\begin{align}
\boxed{ C_{AB}^+(u,\widehat x) = \sum_{\lambda=\pm2} e_{AB}^{(\lambda)}(\widehat x) \int_Kd\omega\, a_\lambda(\omega,\widehat x) e^{-i\omega u}.
}
\tag{5.27}
\end{align}$$

因此 spin-$\lambda$ Fourier projection逐点恢复 $a_\lambda$，证明 injectivity。Stationary-phase expansion和三个 gauge equations逐阶给 full Bondi coefficients；它们已满足 linearized Einstein equations，所以 uniqueness of Proposition 5.1 forces them to obey同一个 recursion。

对任意 $N,p,q,s$，存在 $M_*$ 和 $c$ 使

$$\begin{align}
\sup_{\substack{ u\in[u_-,u_+]\\
r\geq R_1
}}
r^{N-1} \left\|
\partial_u^pD^q(r\partial_r)^s \left[ h_{AB}^{\mathrm{BS}}
- \sum_{n=0}^{N-1} r^{1-n}C_{n\,AB} \right] \right\|_{C^0(S^2)}
\leq c\,p_{M_*}(a),
\end{align}$$

其他 components 按各自 leading radial weight有相同 estimate。Uniform stationary-phase remainder、compact $K$ 和 finite $\Lambda$ 给出常数；radial integration只把 estimate移一阶或在 resonant weight产生已记录的 log。这里 band gap 排除了 resonance，所以 actual image 是 log-free。$\square$

给定任意 real smooth radiative history $C_{AB}(u,x)$，若其 spin-$\pm2$ Fourier transform smooth、compactly supported in $K$，(5.27) 反向定义唯一 $a$。随后：

1. 取无 Coulomb homogeneous part，

$$\begin{align}
M=\frac14D_AD_BC^{AB};
\end{align}$$

2. 用 (5.25) 在 Fourier space除以 $-i\omega$ 求 $\mathcal J_A$；
3. 用 (5.23) 或 fixed-harmonic formula (5.26) 生成 full radial jet。

这给出明确的 radiation-field inverse，而不是只证明 nonempty。

### 5.9 Exterior Coulomb multipoles 与 actual-image verdict

Radiative TT class 没有 nonzero Poincaré charges。为覆盖 exterior Coulombic sector，可在 $r>R_0$ 加上 stationary harmonic-gauge multipoles

$$\begin{align}
h_{00}^{\mathrm C}=2\Phi, \qquad h_{ij}^{\mathrm C}=2\Phi\,\delta_{ij}, \qquad h_{0i}^{\mathrm C}=-4\mathcal A_i,
\end{align}$$

其中

$$\begin{align}
\Delta_{\mathbb R^3}\Phi=0, \qquad \Delta_{\mathbb R^3}\mathcal A_i=0, \qquad \partial^i\mathcal A_i=0,
\end{align}$$

并展开为

$$\begin{align}
\Phi = \sum_{\ell,m} \frac{\mathsf M_{\ell m}}{r^{\ell+1}} Y_{\ell m},
\end{align}$$

以及对应 electric/magnetic vector harmonics的 $\mathcal A_i$。Section 2 的同一 gauge map把它们送到 BS slice。Rapid multipole sequences 给 exterior weighted-conormal topology 中的 continuous map。

- $\ell=0$ mass 和 lowest magnetic current multipole实现 rest-mass/angular-momentum sector；其 Poincaré orbit及允许的 finite time-polynomial harmonic multipoles补上 momentum/center-of-mass sector；
- higher electric/magnetic moments实现 higher radial cut coefficients的一个 stationary subspace；
- 若要求穿过 $r=0$ 的 global smooth vacuum solution，则 harmonic regularity迫使所有 decaying Coulomb multipoles为零。Nonzero mass/angular momentum需要 source、puncture或 inner boundary。

故本阶段证明的 actual class 是

$$\begin{align}
\boxed{ \mathcal S_{\mathrm{actual}}^{\mathrm{lin}} = \mathfrak F_{\mathrm{TT}\to\mathrm{BS}} \left( \mathcal A_{K,\Lambda}^{\mathrm{TT}} \right) \oplus \mathcal S_{\mathrm{Coul}}^{r>R_0}.
}
\end{align}$$

它到 formal Bondi jets 的 map 是 injective once radiation field、multipole coefficients和 BMS representative 都固定，但不是 surjective：

$$\begin{align}
\boxed{ \mathcal S_{\mathrm{actual}}^{\mathrm{lin}}
\subsetneq
\widetilde{\mathcal S}_{\mathrm{BS}}^{\mathrm{formal}}.
}
\end{align}$$

例如，在 band-limited radiative + stationary-multipole category 中，

$$\begin{align}
C_{0\,AB}=0, \qquad C_{1\,AB}=L^2D_{AB}\neq0
\end{align}$$

满足 formal hierarchy 的 leading conservation law，却既不来自 nonzero-frequency radiation，也不来自 log-free stationary harmonic multipoles。要实现此类 log tower必须打开 zero-frequency conormal graviton data；那会同时改变 radiation field和一整串 lower coefficients，不能作为独立 cut constant加入。这个结论与 `3d Maxwell.md` 的 threshold-image theorem一致，但这里不把未经分类的 4D zero-frequency distributional sector偷偷并入 actual class。

---

## 6. Stage 2B work ledger

| Work package | Status | Evidence |
|---|---|---|
| Background and cutoff geometry | Checked | Section 1.2, Mathematica coordinate check |
| Quadratic action definition | Completed abstractly | Hessian of EH + GHY in section 1.3 |
| Partial Bondi accessibility | Checked for gauge-saturated parent | Section 2.2 |
| Linearized BS determinant slice | Checked | Section 2.3 |
| Residual smooth BMS stabilizer | Checked | Section 2.4 |
| Componentwise off-shell weights | Declared as model assumptions | Section 3.1 |
| General finite-log family | Declared | Section 3.2 |
| First-log calculation window | Declared | Section 3.3 |
| Exact quadratic action and first variation | Completed | EH + GHY Hessian, section 4.4 |
| Exact outer Brown--York momentum | Completed | Section 4.4 |
| Radial divergence ledger | Completed for standard first-log window | Proposition 4.1 |
| Counterterm classification | Completed for divergent sector | Empty divergence set；bare scheme suffices |
| Finite null-boundary $\Theta^{(2)},\Omega^{(2)}$ | Completed off shell | Section 4.5 |
| Leading-log nested-class audit | Obstructed in local/nonlocal $C^2$ action class and sink-free edge class | Sections 4.6 and 4.8 |
| Finite endpoint/corner potential | Completed in fixed-normal and clock-extended invariant categories | Section 4.7 |
| Strict intrinsic cut-category test | Obstructed by $P(L)^2$ joint term | Section 4.7 |
| Linearized EOM recursion | Completed to arbitrary fixed order/log cap | Sections 5.1--5.7 |
| Ashtekar--Streubel benchmark | Completed | Section 5.3 |
| Coulombic cut data | Completed as formal data plus exterior multipole image | Sections 5.6 and 5.9 |
| Fourier/radiation-field actual map | Completed for compact positive-frequency TT data | Sections 5.8--5.9 |
| First radial-log symplectic extension | Completed：no extra local $\mathscr I$ pair | Section 5.3 |
| Proper compactly supported diffeomorphisms | Checked | Section 5.4 |
| Leading-log shear nested-class audit | Obstructed off shell in current category | Section 4.8 |

---

## 7. Sources and verification

Sources:

- Marc Geiller and Céline Zwikel, [*The partial Bondi gauge: Further enlarging the asymptotic structure of gravity*](https://arxiv.org/abs/2205.11401), especially eqs. (2.1)--(2.3).
- Marc Geiller, Alok Laddha and Céline Zwikel, [*Symmetries of the gravitational scattering in the absence of peeling*](https://arxiv.org/abs/2407.07978), especially eqs. (2.1)--(2.3).
- Thomas Mädler and Jeffrey Winicour, [*Bondi--Sachs Formalism*](https://arxiv.org/abs/1609.01731), especially the hierarchy and supplementary equations (55)--(56).
- Laurent Freidel and Aldo Riello, [*Renormalization of conformal infinity as a stretched horizon*](https://arxiv.org/abs/2402.03097).
- Andrea Campoleoni, Arnaud Delfante, Dario Francia and Carlo Heissenberg, [*Finite actions and asymptotic charges at null infinity for any spin*](https://arxiv.org/abs/2507.19310), especially eqs. (18)--(25) and (33)--(34).
- Luis Lehner, Robert C. Myers, Eric Poisson and Rafael D. Sorkin, [*Gravitational action with null boundaries*](https://arxiv.org/abs/1609.00207), especially eqs. (2.66)--(2.70), (4.1)--(4.2) and Appendix C.

Verified:

- PDF pages containing the partial Bondi metric and angular polyhomogeneous expansion were checked by text extraction and visual rendering；
- GLZ PDF pages containing the LAF angular metric、$m\leq n+1$ choice and first on-shell $B,U^A,V$ expansions were checked visually；
- Campoleoni et al. PDF pages containing their gauge、falloffs、regulated on-shell action and radiative shear benchmark were checked visually；
- Mathematica verified $\bar g^{\mu\nu}$、the unit normal to $r=R$、$\bar\gamma_{ij}$、$\bar K_{ij}$、$\bar K=2/R$ and $\sqrt{-\bar\gamma}=R^2\sqrt q$；
- Mathematica verified the exact Lie-derivative identities in sections 2.2--2.3；
- Mathematica verified all $\mathsf D_p$ factorizations in (5.20)--(5.23), the trace-equation compatibility identity, the fixed-harmonic coefficient (5.26), and $\mathcal J_A=-2L_A$ in the peeling convention；
- Mathematica verified that preserving the leading component falloffs gives the displayed residual-vector conditions；
- Mathematica derived all components of $\mathcal P_{(1)}^{ij}$ from the perturbed unit normal and extrinsic curvature, and an independent covariantization check returned six zero component residuals；
- Mathematica compared the Hessian formula in section 4.4 with a direct second-order expansion of EH + GHY on the two-function spherical subfamily

$$\begin{align}
h_{uu}=\frac Ar, \qquad h_{ur}=\frac Br
\end{align}$$

  and returned an identically zero difference for arbitrary $A,B,R_0,R$；
- Mathematica verified that the full leading BS ansatz has

$$\begin{align}
\sqrt{-\bar g}\, h_{\mu\nu}G_{(1)}^{\mu\nu} = \mathcal O(r^{-2})
\end{align}$$

  and contains no $r^p$ term with $p\geq-1$；
- Mathematica verified

$$\begin{align}
\lim_{r\to\infty} h_{ij}\mathcal P_{(1)}^{ij} = -\frac{\sqrt q}{2} C^{AB}\dot C_{AB}
\end{align}$$

  for independent local tensor polarizations；
- Mathematica checked the $rC_{AB}+D_{AB}$ tensor sector separately and found only $r^{-2}$ and more subleading bulk densities。
- Mathematica expanded $-g^{ur}/\sqrt{g^{rr}}$ and $\sqrt{\sigma}$ to quadratic order and verified

$$\begin{align}
j_R^{(2)} = \sqrt q \left( \frac{R^2a^2}{4}
  - \frac12v_Av^A \right);
\end{align}$$

- Mathematica verified all five hatted reparametrization identities in section 4.7 and returned zero for both the LMPS residual and the independent-clock residual；
- Mathematica independently expanded the linearized Bondi metric in a local orthonormal sphere frame and found

$$\begin{align}
\frac{\Theta}{2/r} = 1+\varepsilon b+\mathcal O(\varepsilon^2), \qquad \widehat\eta^{(1)} = \frac a2-\varphi_{(1)};
\end{align}$$

- Mathematica derived the exact null-lid $\theta^u_{(2)}$ displayed in section 4.7 and verified that its field-space exterior derivative equals the Iyer--Wald $P^{\mu\nu\alpha\beta\gamma\delta}$ symplectic current；
- Mathematica verified that the exact lid current reduces to

$$\begin{align}
\Omega_{\Sigma_u}^{(2)} = \frac1{32\pi G} \int dr\,d^2x\sqrt q\,r^{-2} \delta c^{AB}\wedge\partial_r\delta c_{AB};
\end{align}$$

- Mathematica compared the five covariant hierarchy equations in section 5.1 against both independent tensor polarizations in $(\theta,\phi)$ coordinates and returned six zero residuals；
- Mathematica expanded the polynomial first-log ansatz in those equations and verified all coefficient relations in section 5.2；
- Mathematica verified that the leading radial component of the Iyer--Wald current is

$$\begin{align}
\frac{\sqrt q}{32\pi G}
  \delta\dot C^{AB}\wedge\delta C_{AB}.
\end{align}$$

- xAct verified off shell on a flat background that

$$\begin{align}
h_{\mu\nu}G_{(1)}^{\mu\nu}
  - \mathcal K_{\rm FP}
  - \bar\nabla_\alpha V^\alpha =0
\end{align}$$

  after metric contraction and canonicalization。The outer/lid/joint completion in section 4.4.1 then follows by the oriented Stokes theorem at finite cutoff，so equality of the completed canonical potentials is an exact relative-action identity rather than an on-shell comparison。

Assumptions:

- fixed Minkowski background、round $q_{AB}$ and defining function $r^{-1}$；
- finite $u$-slab；
- no leading boundary sources $\delta q_{AB}$、$\delta\beta_0$ or $\delta U_0^A$；
- linearized Bondi--Sachs rather than Newman--Unti radial coordinate；
- every radial order has finite log degree；
- the first explicit ledger initially uses the window in section 3.3 and must be enlarged if power counting requires it。

Not verified in this note:

- finite counterterm scheme ambiguities not required for divergence cancellation；
- all-order linearized Einstein realization of every formal coefficient tower；
- the relation between the first radial log coefficients and generic low-frequency scattering data。

These items are tracked respectively by P1、P2 and P3 in `TODO.md`；they are not requirements silently discharged by the finite-window theorem above。
