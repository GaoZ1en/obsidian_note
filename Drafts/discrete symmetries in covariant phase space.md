# 协变相空间中的离散对称：有限相空间作用、gauging、duality 与 anomaly

## 0. 直接结论

Wald 或 Harlow--Wu formalism 的 Noether-charge construction 只使用 configuration space 上的 infinitesimal vector field $X_{\lambda}$，所以它只探测 symmetry group 的 identity component。真正离散的变换没有对应的 $X_{\lambda}$，因此一般没有

$$\begin{align}
H_{\lambda}
&=X_{\lambda}\cdot\theta-\alpha_{\lambda}
\end{align}$$

这种由 Noether theorem 指定的 Hamiltonian generator。

但是离散对称并不在 covariant phase space (CPS) 之外。它应被记录为 pre-phase space 上的有限映射，并根据其物理身份作不同处理：

1. global symmetry：保留有限群在 phase space 上的作用；
2. gauge redundancy：对有限群作用取 quotient，必要时保留 orbifold/stack 结构；
3. gauging：除 quotient 外还要加入非平凡 bundle 和 twisted sectors；
4. duality：允许映射不同 coupling、boundary condition 或 polarization 的 phase spaces；
5. time-reversal type symmetry：允许 anti-symplectic action；
6. anomalous symmetry：classical phase-space action 存在，但 quantum lift 只能是 projective，或 coupling to background fields/gauging 存在 obstruction。

本文只讨论这些 genuinely finite/global structures，不重复 infinitesimal large gauge transformation 的 charge construction。下文只选取有明确 continuum local、topological 或 parent Lagrangian 的理论作为主例；CFT orbifold 与 lattice duality 不作为论证离散 CPS structure 的例子。

## 1. Harlow--Wu 记号下的有限对称

考虑带 spatial boundary $\Gamma$ 的作用量

$$\begin{align}
S[\Psi]
&=\int_{M}\mathrm{d}^{d+1}x\sqrt{-g}\,L[\Psi]
+\int_{\Gamma}\mathrm{d}^{d}x\sqrt{-\gamma}\,\ell[\Psi].
\end{align}$$

在给定 boundary conditions 后，其 on-shell variation 写成

$$\begin{align}
\delta S
&=\theta|_{\Sigma_{f}}-\theta|_{\Sigma_{i}},
&
\omega
&=\delta\theta,
\end{align}$$

其中 $\theta$ 已经包含 Harlow--Wu prescription 固定的 bulk、boundary 和 corner contributions。连续对称由 $X_{\lambda}$ 描述，并满足

$$\begin{align}
\delta H_{\lambda}
&=-X_{\lambda}\cdot\omega.
\end{align}$$

现在令 $D$ 是一个离散群。对每个 $g\in D$，定义 configuration space 上的有限映射

$$\begin{align}
F_{g}:\mathcal{C}\longrightarrow\mathcal{C}.
\end{align}$$

对于固定的 boundary-value problem，一个 sufficient symmetry condition 是

$$\begin{align}
F_{g}(\mathcal{C})
&=\mathcal{C},
&
S[F_{g}\Psi]-S[\Psi]
&=c_{g},
&
\delta c_{g}
&=0.
\end{align}$$

于是 $F_{g}$ 将 solutions 映到 solutions，并诱导

$$\begin{align}
F_{g}:\widetilde{\mathcal{P}}
\longrightarrow\widetilde{\mathcal{P}}.
\end{align}$$

其 CPS 内容不是寻找 $H_{g}$，而是检查

$$\begin{align}
F_{g}^{*}\omega
&=\varepsilon_{g}\omega,
&
\varepsilon_{g}
&\in\{+1,-1\}.
\end{align}$$

- $\varepsilon_{g}=+1$：$F_{g}$ 是 symplectomorphism；
- $\varepsilon_{g}=-1$：$F_{g}$ 是 anti-symplectic map，典型例子是 time reversal。

在 symplectic case 中，局部可能存在 field-space functional $K_{g}$，使

$$\begin{align}
F_{g}^{*}\theta-\theta
&=\delta K_{g}.
\end{align}$$

这里必须使用完整的 $\theta$，不能只检查 bulk symplectic potential current。$K_{g}$ 若不能对所有 group compositions 作全局一致的选择，量子提升可能只给出 projective action。

真正离散的 $g$ 没有由 symmetry group 内的一参数曲线指定的 $X_{g}$，所以一般不存在

$$\begin{align}
\delta H_{g}
&=-X_{g}\cdot\omega.
\end{align}$$

这不是 missing charge，而是 symmetry data 从 moment map 改成了 finite group action。

## 2. 离散 global symmetry

### 2.1 $\mathrm{SU}(N)$ Yang--Mills 的 charge conjugation

对 $N\geq3$，$\mathrm{SU}(N)$ 有非平凡 outer automorphism

$$\begin{align}
F_{\mathsf C}:A
&\longmapsto-A^{T}.
\end{align}$$

它把 representation $R$ 的 Wilson loop 映到 conjugate representation：

$$\begin{align}
W_{R}(\gamma)
&\longmapsto W_{\overline{R}}(\gamma).
\end{align}$$

在 canonical variables 中，$A_{i}$ 和 electric field 同时受同一个 Lie-algebra automorphism 作用。由于 invariant bilinear form 被 outer automorphism 保持，

$$\begin{align}
\omega
&=\int_{\Sigma}\operatorname{Tr}
\left(\delta E^{i}\wedge\delta A_{i}\right)
+\text{boundary/corner terms}
\end{align}$$

的 bulk part 满足

$$\begin{align}
F_{\mathsf C}^{*}\omega
&=\omega.
\end{align}$$

若 boundary conditions 与 boundary action 也保持 $\mathsf C$，量子 Hilbert space 才能进一步分成 $\mathsf C=\pm1$ sectors。这里没有新的 local Noether current；非平凡结果是 $\mathsf C$ 置换 line operators 和 continuous/higher-form charge sectors。对于含 matter 的理论，outer automorphism 还可能 anomalous，因此不能只从 classical bulk action 判定它是否为 exact quantum symmetry。

### 2.2 $\mathcal{N}=1$ super Yang--Mills 的离散 chiral symmetry

对 simple、simply-connected gauge group $G$，令 $h$ 为 dual Coxeter number。Quantum anomaly 将 classical chiral symmetry 留成

$$\begin{align}
\mathbb{Z}_{2h},
\end{align}$$

而 gluino condensate 进一步产生 spontaneous breaking

$$\begin{align}
\mathbb{Z}_{2h}
&\longrightarrow\mathbb{Z}_{2}.
\end{align}$$

因此有 $h$ 个 gapped vacua。对 $G=\mathrm{SU}(N)$，$h=N$，vacua 可由

$$\begin{align}
\left\langle\operatorname{tr}\lambda\lambda\right\rangle_{a}
&\propto
\exp\left(\frac{2\pi ia}{N}\right),
&
a
&\in\mathbb{Z}_{N}
\end{align}$$

区分；$\mathbb{Z}_{2N}$ 置换这些 vacua，并存在连接不同 vacua 的 stable domain walls。

这个例子说明 classical CPS 的局限非常具体：bare classical action 的 infinitesimal analysis 不能推出 quantum measure 将 continuous chiral symmetry 留成哪个 discrete subgroup，也不能推出 condensate 和 domain-wall TQFT。离散 global symmetry 必须在 quantum effective theory 的 state space 和 sector structure 上继续检查。

## 3. 离散 gauge redundancy

### 3.1 Flat $\mathrm{SU}(2)$ connections on $T^{2}$：Weyl quotient 与 pillowcase

令 $U,V$ 是 flat $\mathrm{SU}(2)$ connection 沿 $T^{2}$ 两个基本 cycles 的 holonomies。Flatness 给出

$$\begin{align}
UV
&=VU,
\end{align}$$

所以可以用 continuous gauge transformation 将二者同时放进 maximal torus：

$$\begin{align}
U
&=\exp(i\alpha\sigma_{3}),
&
V
&=\exp(i\beta\sigma_{3}).
\end{align}$$

对角化后仍有 residual Weyl transformation

$$\begin{align}
w:(\alpha,\beta)
&\longmapsto(-\alpha,-\beta).
\end{align}$$

因此真正的 flat-connection moduli space 是

$$\begin{align}
\mathcal{M}_{\mathrm{flat}}(T^{2},\mathrm{SU}(2))
&=
\frac{S^{1}\times S^{1}}{\mathbb{Z}_{2}}.
\end{align}$$

Chern--Simons symplectic form 在这些 coordinates 中具有

$$\begin{align}
\omega
&\propto
k\,\delta\alpha\wedge\delta\beta,
\end{align}$$

所以 $w^{*}\omega=\omega$。但是当

$$\begin{align}
\alpha,\beta
&\in\{0,\pi\},
\end{align}$$

Weyl action 有 fixed points；一共有四个。故 quotient 不是普通 smooth manifold，而是具有四个 orbifold points 的 pillowcase。量子化时应 quantize 这个 Weyl quotient，而不是把 $(\alpha,\beta)$ 当成无冗余的两个角变量。

这个例子中的 $\mathbb{Z}_{2}$ 是 gauge fixing 后的 residual gauge redundancy。它说明即使 continuous presymplectic reduction 已经完成，有限 stabilizer 仍会改变 reduced phase space 的全局结构。

### 3.2 $2+1d$ compact BF theory：$\mathbb{Z}_{N}$ gauge theory 的 continuum Lagrangian

离散 gauge theory 可以有 ordinary continuum Lagrangian presentation。令 $a,b$ 都是 compact $U(1)$ connections，考虑

$$\begin{align}
S_{\mathrm{BF}}[a,b]
&=
\frac{N}{2\pi}
\int_{M}b\wedge\mathrm{d}a,
&
N
&\in\mathbb{Z}_{>0}.
\end{align}$$

其 gauge transformations 为

$$\begin{align}
a
&\longmapsto a+\mathrm{d}\lambda,
&
b
&\longmapsto b+\mathrm{d}\chi.
\end{align}$$

取 $M=\mathbb{R}\times\Sigma$，并使用文首

$$\begin{align}
\delta S
&=
\theta|_{\Sigma_{f}}-\theta|_{\Sigma_{i}}
\end{align}$$

的 convention。由

$$\begin{align}
\theta_{\Sigma}
&=
-\frac{N}{2\pi}
\int_{\Sigma}b\wedge\delta a
\end{align}$$

得到

$$\begin{align}
\omega_{\Sigma}
&=
-\frac{N}{2\pi}
\int_{\Sigma}\delta b\wedge\delta a.
\end{align}$$

同时反转 spacetime 或 Cauchy-slice orientation 会反转这个 overall sign，但不改变下面的 reduction 与 quantization。

Local equations of motion 是

$$\begin{align}
\mathrm{d}a
&=0,
&
\mathrm{d}b
&=0.
\end{align}$$

但是 compactness 仍留下 global holonomies。对 $\Sigma=T^{2}$，令

$$\begin{align}
A_{r}
&=
\oint_{\gamma_{r}}a,
&
B_{r}
&=
\oint_{\gamma_{r}}b,
&
r
&=1,2,
\end{align}$$

其中 $A_{r},B_{r}\in\mathbb{R}/2\pi\mathbb{Z}$。相应 zero-mode phase space 是 compact symplectic torus，而不是四个非紧实实变量。以 Abelian Chern--Simons $K$-matrix 记号，

$$\begin{align}
K_{\mathrm{BF}}
&=
\begin{pmatrix}
0&N\\
N&0
\end{pmatrix},
&
\left|\det K_{\mathrm{BF}}\right|
&=N^{2}.
\end{align}$$

因此在 $T^{2}$ 上量子化得到 $N^{2}$-dimensional Hilbert space，与

$$\begin{align}
\operatorname{Hom}\!\left(\pi_{1}(T^{2}),\mathbb{Z}_{N}\right)
&\cong
\mathbb{Z}_{N}\times\mathbb{Z}_{N}
\end{align}$$

的 $N^{2}$ 个 flat $\mathbb{Z}_{N}$ holonomy sectors 一致。

这里要精确地区分两层：BF presentation 引入了有 infinitesimal transformations 的 auxiliary $U(1)\times U(1)$ gauge redundancy；但 compactness、integer level 和 global bundle sum 使其描述的 topological gauge theory 是 $\mathbb{Z}_{N}$ gauge theory。若丢掉 compactness，只保留 local differential forms 和 $\omega=\delta\theta$，就会得到错误的 global phase space。

## 4. Genuine discrete gauging

把 global finite symmetry 宣布成 gauge redundancy，和真正构造 gauged field theory 不是同一步操作。前者只处理某个固定 bundle sector 内的 quotient；后者还必须允许 nontrivial principal bundles。

### 4.1 Gauging $U(1)$ charge conjugation 得到 $O(2)$ gauge theory

Pure $U(1)$ gauge theory 有

$$\begin{align}
\mathsf C:A
&\longmapsto-A.
\end{align}$$

将 $\mathsf C$ gauging 后，gauge group 变成 disconnected group

$$\begin{align}
O(2)
&=
U(1)\rtimes\mathbb{Z}_{2}.
\end{align}$$

这有直接的 continuum Lagrangian 描述。取一组 patches $U_{i}$，在每个 patch 上用 ordinary one-form $A_{i}$ 写

$$\begin{align}
S_{O(2)}
&=
-\frac{1}{2e^{2}}
\int_{M}F\wedge\star F.
\end{align}$$

在 overlap $U_{i}\cap U_{j}$ 上，$O(2)$ transition functions 允许

$$\begin{align}
A_{i}
&=
\varepsilon_{ij}A_{j}
+\mathrm{d}\lambda_{ij},
&
\varepsilon_{ij}
&\in\{+1,-1\},
\end{align}$$

所以 $F_{i}=\varepsilon_{ij}F_{j}$，而 quadratic Lagrangian density 仍是 globally well-defined。Cocycle $\{\varepsilon_{ij}\}$ 定义

$$\begin{align}
w_{1}
&\in H^{1}(M,\mathbb{Z}_{2}).
\end{align}$$

若只在 trivial bundle 上作

$$\begin{align}
A
&\sim-A,
\end{align}$$

得到的只是 untwisted sector。一般 principal $O(2)$ bundle 还允许 $w_{1}\neq0$；它检测沿闭路的 transition function 是否落在 orientation-reversing component。绕这样的闭路输运会实施 charge conjugation；在 $2+1d$ 中相应 defects 是 twist vortices/Alice fluxes，在更高维则可形成 Alice strings，并可携带 Cheshire charge。

因此 gauging 的 phase-space construction 应写成对不同 $w_{1}$ sectors 的总和或 direct sum，而不是单独的 quotient

$$\begin{align}
\mathcal{P}_{U(1)}/\mathbb{Z}_{2}.
\end{align}$$

### 4.2 Charge-$N$ Abelian Higgs model：$\mathbb{Z}_{N}$ gauging 的 continuum UV realization

考虑 $2+1d$ Abelian Higgs model 的 London limit。令 $\varphi\sim\varphi+2\pi$，其 Euclidean action 为

$$\begin{align}
S_{\mathrm{Higgs}}
&=
\int_{M}
\left[
\frac{1}{2e^{2}}\mathrm{d}a\wedge\star\mathrm{d}a
+
\frac{v^{2}}{2}
\left(\mathrm{d}\varphi-Na\right)
\wedge\star
\left(\mathrm{d}\varphi-Na\right)
\right].
\end{align}$$

Gauge transformations 是

$$\begin{align}
a
&\longmapsto a+\mathrm{d}\lambda,
&
\varphi
&\longmapsto\varphi+N\lambda.
\end{align}$$

Charge-$N$ condensate 将 $U(1)$ Higgs 到 $\mathbb{Z}_{N}$。这个结论也可以直接从 parent Lagrangian 看出。引入 independent one-form $u$ 与 compact one-form $b$：

$$\begin{align}
S_{\mathrm{parent}}[u,a,b]
&=
\int_{M}
\left[
\frac{1}{2e^{2}}\mathrm{d}a\wedge\star\mathrm{d}a
+
\frac{v^{2}}{2}u\wedge\star u
+
\frac{i}{2\pi}
b\wedge
\left(\mathrm{d}u+N\mathrm{d}a\right)
\right].
\end{align}$$

积分掉 $b$ 给出

$$\begin{align}
\mathrm{d}u+N\mathrm{d}a
&=0,
\end{align}$$

局部解为 $u=\mathrm{d}\varphi-Na$，从而回到 Higgs action。反过来积分掉 $u$，再取低于 Higgsed gauge-field mass scale 的 infrared limit，得到

$$\begin{align}
S_{\mathrm{IR}}
&=
\frac{iN}{2\pi}
\int_{M}b\wedge\mathrm{d}a,
\end{align}$$

即上一节的 compact BF theory。其 path integral 自动包括 compact connections 的 nontrivial bundle/holonomy sectors；这些 sectors 不会由 trivial-bundle phase space 的 pointwise quotient 产生。

严格说，这个例子是 discrete gauge theory 的 Higgs realization，而不是“把任意一个带 global $\mathbb{Z}_{N}$ symmetry 的 QFT gauging”这一操作的普遍定义。但它给出了完全 local 的 continuum UV Lagrangian，并清楚显示为什么真正的 gauged theory 比

$$\begin{align}
\mathcal{P}_{\mathrm{trivial}}/\mathbb{Z}_{N}
\end{align}$$

包含更多 global data。

## 5. Discrete duality

### 5.1 Maxwell $SL(2,\mathbb{Z})$：generic coupling 上是 theory-to-theory map

定义

$$\begin{align}
\tau
&=
\frac{\theta}{2\pi}
+\frac{4\pi i}{e^{2}}.
\end{align}$$

Abelian electric-magnetic duality 由

$$\begin{align}
\tau
&\longmapsto
\frac{a\tau+b}{c\tau+d},
&
\begin{pmatrix}
a&b\\
c&d
\end{pmatrix}
&\in SL(2,\mathbb{Z})
\end{align}$$

描述。取 generators

$$\begin{align}
S
&=
\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix},
&
T
&=
\begin{pmatrix}
1&1\\
0&1
\end{pmatrix}.
\end{align}$$

它们保持 electric-magnetic charge lattice 上的 Dirac pairing。Generic $\tau$ 上应写成

$$\begin{align}
F_{g}:
\widetilde{\mathcal{P}}_{\tau}
\longrightarrow
\widetilde{\mathcal{P}}_{g\cdot\tau},
\end{align}$$

而不是单一 phase space 上的 global symmetry。在 fixed point $\tau=i$，$S$ 才成为同一理论的 finite symmetry；在 charge lattice 上

$$\begin{align}
S^{2}
&=-\mathbf{1},
&
S^{4}
&=\mathbf{1},
\end{align}$$

其中 $-\mathbf{1}$ 是 charge conjugation。

有 spatial boundary 时，electric-magnetic duality 通常还交换 electric 与 magnetic boundary conditions 或 polarizations。若想让 duality 在同一个 extended phase space 上 canonical 地作用，需要相应的 boundary fields/edge modes；否则它只是两个 Harlow--Wu boundary-value problems 之间的 symplectic isomorphism。

### 5.2 $3d$ compact scalar--Maxwell duality：由 parent action 生成的 theory-to-theory map

在 closed oriented Riemannian three-manifold $M$ 上，令 $F$ 是 independent two-form，$\varphi\sim\varphi+2\pi$ 是 compact scalar。考虑 Euclidean parent action

$$\begin{align}
S_{\mathrm{parent}}[F,\varphi]
&=
\int_{M}
\left[
\frac{1}{2e^{2}}F\wedge\star F
+
\frac{i}{2\pi}\varphi\,\mathrm{d}F
\right].
\end{align}$$

积分掉 compact $\varphi$ imposing

$$\begin{align}
\mathrm{d}F
&=0
\end{align}$$

并配合 $F/2\pi$ 的 integral flux sum，得到以 $F$ 为 compact $U(1)$ connection $A$ 的 curvature 的 Maxwell theory；只有局部才写成 $F=\mathrm{d}A$。另一方面，在 closed $M$ 上 integration by parts 给

$$\begin{align}
S_{\mathrm{parent}}
&=
\int_{M}
\left[
\frac{1}{2e^{2}}F\wedge\star F
-
\frac{i}{2\pi}\mathrm{d}\varphi\wedge F
\right].
\end{align}$$

$F$ 的 equation of motion 是

$$\begin{align}
\star F
&=
\frac{ie^{2}}{2\pi}\mathrm{d}\varphi.
\end{align}$$

积分掉 $F$ 后得到 compact scalar action

$$\begin{align}
S_{\mathrm{scalar}}[\varphi]
&=
\frac{e^{2}}{8\pi^{2}}
\int_{M}
\mathrm{d}\varphi\wedge\star\mathrm{d}\varphi.
\end{align}$$

After Lorentzian continuation，相应的 real first-order equations 在 matched topological sectors 上定义

$$\begin{align}
F_{\mathrm{dual}}:
\widetilde{\mathcal{P}}_{\mathrm{Maxwell}}
&\longrightarrow
\widetilde{\mathcal{P}}_{\mathrm{compact\ scalar}}
\end{align}$$

的 symplectic identification；global equivalence 还要求匹配 flux、winding 和 torsion sectors。

有 boundary 时，上述 integration by parts 留下

$$\begin{align}
\frac{i}{2\pi}
\int_{\partial M}\varphi F.
\end{align}$$

这个 term 正是 duality 的 boundary generating functional：它交换 Maxwell 与 scalar 的 boundary polarization。若不同时变换 boundary action 和 boundary conditions，两边不是同一个 Harlow--Wu boundary-value problem。

## 6. Anti-symplectic discrete symmetry

### 6.1 Maxwell time reversal

在 $\theta=0$ 的 Maxwell theory 中，取 fixed-time canonical variables $(A_{i},E^{i})$：

$$\begin{align}
\omega
&=
\int_{\Sigma}
\delta E^{i}\wedge\delta A_{i}.
\end{align}$$

Time reversal 的 fixed-time action 为

$$\begin{align}
F_{\mathsf T}:
(A_{i},E^{i})
&\longmapsto
(-A_{i},E^{i}),
\end{align}$$

所以

$$\begin{align}
F_{\mathsf T}^{*}\omega
&=-\omega.
\end{align}$$

它不是 ordinary canonical symmetry，而是 anti-canonical symmetry：它反转 Poisson bracket 与 Hamiltonian flow 的时间方向。量子化后对应 antiunitary operator，而不是 ordinary unitary representation。

在有 $\theta$ angle 时，time reversal 将 $\theta\mapsto-\theta$。若所选 charge lattice 与 spacetime structure 给出 $\theta\sim\theta+2\pi$，ordinary invertible time reversal 只可能出现在 $\theta=0,\pi$。它能否在这些 fixed points anomaly-free 地量子实现，还依赖 line-operator spectrum 和允许的 background fields，不能由上面的 classical anti-symplectic check 决定。

### 6.2 Doubled Abelian Chern--Simons theory

考虑

$$\begin{align}
S
&=
\frac{1}{4\pi}
\int_{M}
K_{IJ}A^{I}\wedge\mathrm{d}A^{J},
&
K
&=
\begin{pmatrix}
k&0\\
0&-k
\end{pmatrix}.
\end{align}$$

Orientation reversal 改变 Chern--Simons action 的符号。若同时交换两支 gauge fields，

$$\begin{align}
W
&=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix},
&
W^{T}KW
&=-K,
\end{align}$$

两个负号相消，所以 doubled theory 可以有 classical time-reversal symmetry。在 oriented Cauchy slice 上，这个 action 对应 anti-symplectic transformation。

但是 $W^{T}KW=-K$ 只是 classical Lagrangian criterion。Quantum toral Chern--Simons theory 是否真正 time-reversal invariant 还依赖 finite anyon group、quadratic refinement、chiral central charge 和 higher Gauss sums；classical anti-symplectic map 并不足够。

## 7. Anomalous discrete symmetry

### 7.1 CPS 中 anomaly 出现在哪一层？

Classical finite map 可能已经满足

$$\begin{align}
F_{g}^{*}\omega
&=\omega,
\end{align}$$

但 geometric quantization 后只能得到

$$\begin{align}
U_{g}U_{h}
&=
\exp\left(i\chi(g,h)\right)U_{gh}.
\end{align}$$

若 phase $\chi(g,h)$ 不能通过重新定义 $U_{g}$ 或允许的 local counterterm 消去，finite action 只能 projectively lift。对于 quantum mechanics 或单个 quantized phase space，这个 two-cocycle 是 anomaly 的直接表现。

在 higher-dimensional QFT 中，完整 't Hooft anomaly 一般不只由 $H^{2}(D,U(1))$ 描述；它是 coupling to background $D$ gauge field 时的 obstruction。Projective representation 只是 canonical quantization 在 boundary/state space 上看到的一个 shadow。

### 7.2 $\mathrm{SU}(N)$ Yang--Mills at $\theta=\pi$：even/odd $N$ 的差别

$4d$ $\mathrm{SU}(N)$ Yang--Mills 的 Euclidean Lagrangian 可写成

$$\begin{align}
S_{\mathrm{YM}}[A]
&=
\frac{1}{2g^{2}}
\int_{M}\operatorname{Tr}(F\wedge\star F)
-
\frac{i\theta}{8\pi^{2}}
\int_{M}\operatorname{Tr}(F\wedge F),
\end{align}$$

其中 $\frac{1}{8\pi^{2}}\int\operatorname{Tr}(F\wedge F)\in\mathbb{Z}$。理论在 $\theta=0,\pi$ 具有 time-reversal symmetry。Couple $\mathbb{Z}_{N}^{(1)}$ center symmetry to a background two-form gauge field $B$ 后，可用一对 compact fields $(B,C)$、$NB=\mathrm{d}C$ 作 continuum presentation，并允许加入 local counterterm

$$\begin{align}
S_{\mathrm{ct}}[B]
&=
\frac{ipN}{4\pi}
\int_{M}B\wedge B.
\end{align}$$

对 even $N$，$p\in\mathbb{Z}/2N\mathbb{Z}$；对 odd $N$，$p$ 必须是 even integer modulo $2N$。在 $\theta=\pi$，time reversal acts as

$$\begin{align}
p
&\longmapsto-p+N-1
\qquad
\left(\operatorname{mod}2N\right).
\end{align}$$

对 even $N$，这个 transformation 没有允许的 fixed point，因此 time reversal 与 $\mathbb{Z}_{N}^{(1)}$ 之间有 genuine mixed 't Hooft anomaly。对 odd $N$，存在一个允许的 fixed point，所以在单独的 $\theta=\pi$ theory 中可以选择 counterterm 同时保持两者；但是这个选择与在 $\theta=0$ 保持 time reversal 所需的 counterterm 不同。因此 odd $N$ 的精确说法是 $\theta=0$ 与 $\theta=\pi$ 之间存在 global inconsistency，而不是同一个 mixed anomaly。

对 even $N$，直接后果是：在同时保持这些 symmetries 的前提下，$\theta=\pi$ infrared 不能是 trivial、non-degenerate、gapped vacuum。可能的 anomaly matching 包括

1. time reversal spontaneous breaking 与 vacuum degeneracy；
2. gapless infrared theory；
3. nontrivial topological order；
4. domain wall 上的 lower-dimensional theory。

对 odd $N$，约束作用于从 $\theta=0$ 到 $\theta=\pi$ 的整个 family：两端不能在同一个 counterterm convention 下都是 trivial、gapped 且 time-reversal invariant。Classical CPS 最多检查 time reversal 对 $\omega$ 的 anti-symplectic action；它既不能推出 even-$N$ mixed anomaly，也不能推出 odd-$N$ global inconsistency。

### 7.3 Maxwell duality anomaly 与 mapping-class-group projectivity

Maxwell $SL(2,\mathbb{Z})$ 在 classical charge lattice 上保持 Dirac pairing，但在一般 four-manifold 上 partition function 不是 modular-invariant scalar，而是带 modular weight 变换。更精细地把 duality 当作 background twist 后，还会出现 electromagnetic-duality anomaly。因此

$$\begin{align}
\text{classical symplectic duality}
\centernot\Longrightarrow
\text{anomaly-free quantum symmetry}.
\end{align}$$

类似地，Chern--Simons theory 中 mapping class group 在 classical moduli space 上作 symplectic transformations，但 quantization 后常只得到其 central extension 的表示，即原 mapping class group 的 projective representation。这正是有限 phase-space action 无法全局无相位地 lift 到 quantum Hilbert space 的典型例子。

## 8. Harlow--Wu boundary/corner formalism 中应增加的检查

对每个 finite transformation $F_{g}$，实际计算应按以下顺序进行。

### 8.1 Boundary-value problem

先检查

$$\begin{align}
F_{g}:
\mathcal{C}_{\mathcal{B}}
&\longrightarrow
\mathcal{C}_{\mathcal{B}}
\end{align}$$

是否成立，其中 $\mathcal{B}$ 表示 spatial boundary conditions。若

$$\begin{align}
F_{g}:
\mathcal{C}_{\mathcal{B}}
&\longrightarrow
\mathcal{C}_{\mathcal{B}'},
&
\mathcal{B}'
&\neq\mathcal{B},
\end{align}$$

则它是 boundary-value problems 之间的 duality，而不是给定理论内部的 global symmetry。

### 8.2 Full action，而不只是 bulk EOM

必须同时检查

$$\begin{align}
\int_{M}L,
\qquad
\int_{\Gamma}\ell,
\qquad
\text{corner terms}.
\end{align}$$

Bulk EOM invariant 不足以保证 finite symmetry preserved by the variational principle。一个 bulk symmetry 可能被 boundary condition 显式破缺，也可能只在加入 boundary degrees of freedom 后恢复。

### 8.3 Full presymplectic potential

使用完整的

$$\begin{align}
\theta
&=
\int_{\Sigma}\mathrm{d}^{d}x\sqrt{\sigma}\,
\tau^{\mu}\theta_{\mu}
-
\int_{\partial\Sigma}\mathrm{d}^{d-1}x\sqrt{h}\,
\tau^{\mu}n^{\nu}\theta_{\mu\nu},
\end{align}$$

检查

$$\begin{align}
F_{g}^{*}\omega
&=
F_{g}^{*}\delta\theta
=
\pm\omega.
\end{align}$$

只验证 bulk current 会漏掉 finite transformation 在 boundary polarization、edge modes 和 corner potential 上的作用。

### 8.4 决定 global、gauge 还是 duality

同一个 finite map 的数学公式可能相同，但物理处理不同：

$$\begin{align}
\text{global:}
&\quad
D\curvearrowright\mathcal{P},
\\
\text{gauge:}
&\quad
\mathcal{P}_{\mathrm{phys}}
=
\left[\mathcal{P}/D\right],
\\
\text{duality:}
&\quad
\mathcal{P}_{\mathcal{B},\lambda}
\longrightarrow
\mathcal{P}_{\mathcal{B}',\lambda'}.
\end{align}$$

这个选择不是由 $\omega$ 自动决定的，而是 theory definition 的一部分。

### 8.5 Gauging 后加入 bundle sectors

若 $D$ 被 gauging，还要把 phase space 按 principal $D$ bundles 或 twisted boundary conditions 分解：

$$\begin{align}
\mathcal{H}_{\mathrm{gauged}}
&=
\bigoplus_{[P]}
\mathcal{H}_{[P]}^{\mathrm{gauge\ invariant}},
\end{align}$$

其中 $[P]$ 遍历允许的 bundle isomorphism classes。只 quantize trivial-bundle quotient 一般不完整。

### 8.6 Quantum lift 与 anomaly

最后检查 $F_{g}$ 是否能 lift 为 unitary/antiunitary operators，并检查 group composition、local counterterms 和 background-field coupling。这个步骤不能由 classical identity

$$\begin{align}
F_{g}^{*}\omega
&=\pm\omega
\end{align}$$

替代。

## 9. 总结

离散对称不要求修改 Harlow--Wu 的 local symplectic current construction，而要求在其上增加一层 global data：

$$\begin{align}
\widetilde{\mathcal{P}}
&\xrightarrow{\ /\mathcal{G}_{\mathrm{proper},0}\ }
\mathcal{P}_{0},
&
D
&\curvearrowright\mathcal{P}_{0}.
\end{align}$$

随后才根据物理身份选择：

$$\begin{align}
\mathcal{P}_{0}
&\quad\text{保留 finite global action},
\\
\left[\mathcal{P}_{0}/D\right]
&\quad\text{作为 discrete gauge quotient},
\\
\bigcup_{[P]}
\left[\mathcal{P}_{[P]}/D\right]
&\quad\text{作为真正 gauged theory 的各 bundle sectors}.
\end{align}$$

因此，continuous symmetry 的核心对象是

$$\begin{align}
(X_{\lambda},H_{\lambda}),
\end{align}$$

而 invertible discrete symmetry 的核心对象是

$$\begin{align}
(F_{g},F_{g}^{*}\omega,\text{quantum lift}),
\end{align}$$

而 Lagrangian duality 的核心对象还包括 parent action 及其在 boundary 上诱导的 generating functional。

## 10. Verification boundary

### Assumptions and conventions

1. BF 与 Abelian Higgs examples 均取 compact $U(1)$ fields，$N\in\mathbb{Z}_{>0}$；若把 gauge fields 当成 noncompact real forms，$\mathbb{Z}_{N}$ global sector counting 不成立。
2. Scalar--Maxwell parent action 使用 Euclidean signature 和 $\star^{2}=+1$ on one- and two-forms；Lorentzian continuation 会移去相应的 factors of $i$。
3. Parent-action manipulations 在 closed $M$ 上成立；有 boundary 时显式保留 $\frac{i}{2\pi}\int_{\partial M}\varphi F$，并需另行选择 Harlow--Wu boundary action 与 boundary conditions。
4. $N^{2}$ torus Hilbert-space dimension 使用 compact Abelian Chern--Simons/BF quantization 的 standard result $\dim\mathcal{H}_{T^{2}}=|\det K|$。

### Mathematica-verified

以下 finite-dimensional matrix 与 coefficient identities 的 residual 均为零：

$$\begin{align}
C^{T}JC-J
&=0,
&
T_{\mathrm{rev}}^{T}JT_{\mathrm{rev}}+J
&=0,
\\
S^{T}J_{2}S-J_{2}
&=0,
&
T^{T}J_{2}T-J_{2}
&=0,
\\
S^{2}
&=-\mathbf{1},
&
(ST)^{3}
&=-\mathbf{1},
\\
W^{T}KW+K
&=0,
&
\det K_{\mathrm{BF}}
&=-N^{2},
\\
-\frac{1}{2e^{2}}
\left(\frac{e^{2}}{2\pi}\right)^{2}
+
\frac{1}{2\pi}
\left(\frac{e^{2}}{2\pi}\right)
&=
\frac{e^{2}}{8\pi^{2}}.
\end{align}$$

这里第一行分别检查 charge-conjugation type symplectic action 与 time-reversal type anti-symplectic action；第二、三行检查 Maxwell duality generators；第四行检查 doubled Chern--Simons example 与 BF $K$-matrix；最后一行检查积分掉 $F$ 后 compact scalar kinetic term 的 coefficient。所有 residual 均为零，其中最后两项假设 $N\in\mathbb{Z}_{>0}$、$e>0$。

### Sage-verified

1. Residual Weyl action $(\alpha,\beta)\mapsto(-\alpha,-\beta)$ 在 $(S^{1})^{2}$ 上有四个 fixed points，对应 $\alpha,\beta\in\{0,\pi\}$。
2. 对 $2\leq N\leq8$，显式枚举 $\operatorname{Hom}(\mathbb{Z}^{2},\mathbb{Z}_{N})$ 得到 $N^{2}$ 个 ordered holonomy pairs。有限范围枚举与 general analytic count 一致，但本身不是对任意 $N$ 的证明。
3. 对 $2\leq N\leq12$，显式解 counterterm congruence：even $N$ 在 $\theta=\pi$ 没有 allowed fixed point；odd $N$ 在 $\theta=\pi$ 和 $\theta=0$ 各有唯一 allowed fixed point，且两者不同。有限范围 check 与一般的 modular-arithmetic argument 一致。

### Literature-derived, not machine-verified

以下内容依赖文献与量子理论 assumptions，不由上述 algebraic checks 证明：

1. $\mathcal{N}=1$ super Yang--Mills 的 condensate、vacuum structure 与 domain-wall TQFT；
2. $O(2)$ gauging 后各 bundle/defect sectors 的完整 dynamics；
3. Abelian Higgs model 与 compact BF theory 的完整 infrared equivalence，包括 global bundle sectors；
4. Compact scalar--Maxwell duality 在一般 three-manifold 上的完整 quantum partition-function matching；
5. $\mathrm{SU}(N)$ Yang--Mills 的 even-$N$ mixed anomaly、odd-$N$ global inconsistency 与 infrared matching；
6. Maxwell duality anomaly、Chern--Simons higher Gauss-sum criterion 与 mapping-class-group quantum lift。

## References

- D. Harlow and J.-Q. Wu, [*Covariant phase space with boundaries*](https://arxiv.org/abs/1906.08616).
- V. Iyer and R. M. Wald, [*Some Properties of Noether Charge and a Proposal for Dynamical Black Hole Entropy*](https://arxiv.org/abs/gr-qc/9403028).
- B. Henning, X. Lu, T. Melia, and H. Murayama, [*Outer Automorphism Anomalies*](https://arxiv.org/abs/2111.04728).
- D. Delmastro and J. Gomis, [*Domain Walls in 4d $\mathcal{N}=1$ Supersymmetric Yang--Mills*](https://arxiv.org/abs/2004.11395).
- R. Gelca and A. Uribe, [*The Weyl quantization and the quantum group quantization of the moduli space of flat $\mathrm{SU}(2)$-connections on the torus are the same*](https://arxiv.org/abs/math-ph/0201059).
- D. S. Freed, G. W. Moore, and C. Teleman, [*Topological symmetry in quantum field theory*](https://arxiv.org/abs/2209.07471).
- F. A. Bais and J. Striet, [*Charge instabilities due to local charge conjugation symmetry in $(2+1)$-dimensions*](https://arxiv.org/abs/hep-th/0304186).
- A. Kapustin and N. Seiberg, [*Coupling a QFT to a TQFT and Duality*](https://arxiv.org/abs/1401.0740).
- E. Witten, [*On S-Duality in Abelian Gauge Theory*](https://arxiv.org/abs/hep-th/9505186).
- L. Freidel and D. Pranzetti, [*Electromagnetic duality and central charge*](https://arxiv.org/abs/1806.03161).
- C. Beasley, [*Global Aspects of Abelian Duality in Dimension Three*](https://arxiv.org/abs/1405.2123).
- R. Geiko and G. W. Moore, [*When Does A Three-Dimensional Chern--Simons--Witten Theory Have A Time Reversal Symmetry?*](https://arxiv.org/abs/2209.04519).
- D. Gaiotto, A. Kapustin, Z. Komargodski, and N. Seiberg, [*Theta, Time Reversal, and Temperature*](https://arxiv.org/abs/1703.00501).
- C.-T. Hsieh, Y. Tachikawa, and K. Yonekura, [*Anomaly of the Electromagnetic Duality of Maxwell Theory*](https://arxiv.org/abs/1905.08943).
- M. Faitg, [*Projective representations of mapping class groups in combinatorial quantization*](https://arxiv.org/abs/1812.00446).
