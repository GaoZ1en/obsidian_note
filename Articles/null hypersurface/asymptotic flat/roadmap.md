可以。下面这条路线把你的目标明确成一个“action-first 的渐近平直散射理论定义程序”。核心不是先猜 BMS，而是依次回答：

$$\begin{align}
\boxed{ \mathcal F_{\mathrm{off}} \longrightarrow S_{\mathrm{ren}} \longrightarrow \Theta_{\mathrm{ren}},\Omega_{\mathrm{ren}} \longrightarrow \mathcal S_{\mathrm{polyhom}} \longrightarrow H_\xi \longrightarrow i^0\text{ matching/Ward identities} }
\end{align}$$

其中必须严格区分：

- $\mathcal F_{\mathrm{off}}$：作用量的 off-shell configuration/history space；
- $\mathcal S_{\mathrm{polyhom}}\subset\mathcal F_{\mathrm{off}}$：满足 EOM 的解空间，才是 CPS 的 phase space；
- 已解径向 EOM 的 Bondi expansion 只能用来提示 index set，不能反过来充当 off-shell 定义。

我建议的主线是：

$$\begin{align}
\boxed{ \text{3D Maxwell} \to \text{4D linearized gravity} \to \text{4D nonlinear gravity at first log order} \to \text{all-order radial expansion} \to u\to\pm\infty,\ i^0 }
\end{align}$$

3D Einstein–Maxwell 可以作为 Maxwell 和 4D gravity 之间的可选支线。

---

# Project status

- Stage 0 formal definitions：已写入 `definitions.md`。其中完成了 polyhomogeneous function-space、relative boundary/corner variation、counterterm category、$C^2$ renormalization 和 maximality 的统一定义。
- Stage 0 model-dependent gate：已在 3D Maxwell radial-local problem 中首次实例化。
- Stage 1A：在 `3d Maxwell.md` 中完成了 finite-log-cap families 的 off-shell index support、radial-gauge slice、bare divergence ledger、strict intrinsic no-go 和 extended $C^2$ renormalization。Action finiteness 不选出 maximal log cap。
- Stage 1B：已在 `3d Maxwell.md` 中恢复任意 endpoint variations，并构造 finite lid/corner potential；flux balance 被正确留到 on-shell Stage 1C。
- Stage 1C：已完成 exact polynomial recursion、formal solution space、index-family preservation 和 on-shell symplectic flux balance。结果显示文献的 $n\leq\lceil m\rceil$ 是 consistent sector，不是 broader finite-log formal solutions 的 EOM maximum。
- Stage 1 large-$U(1)$：已完成 cut charge、integrability、flux、proper/large distinction 和 classical abelian algebra。
- Stage 1 actual-solution gate：已用 Maxwell--scalar duality 和 compact positive-frequency Fourier--Bessel data 构造 global smooth radiative solution class，并证明 future-radiation representation 的 uniqueness 和 weighted-topology continuous dependence。Arbitrary higher-log tower 的 surjectivity 未被假设，而被精确隔离为 zero-frequency threshold problem。
- Stage 2B model/gauge/index gate：已在 `4d spin-2.md` 中固定 EH + GHY Hessian、gauge-saturated parent、linearized Bondi--Sachs slice、residual smooth BMS stabilizer、componentwise off-shell family 和 first-log calculation window。
- Stage 2B radial-local gate：已从 EH + GHY Hessian 推导 exact linearized Brown--York momentum；standard first-log window 的 bulk density为 $\mathcal O(r^{-2}L^{K_*})$，outer potential finite，故 bulk + outer radial functional 已是 $C^\infty$ continuous quadratic functional且无需 outer counterterm。Null lids/joints 已在 endpoint gate 中恢复。
- Stage 2B endpoint/on-shell gate：已恢复 null lids 与 null--timelike joints。Lid potential 的 divergent part 是 field-space exact，并由 local fixed-frame generating functional 移走；joint 的 $P(L)^2$ divergence 需要 fixed-normal extended $\eta^2$ corner subtraction。所得 $\Theta_{\rm ren}^{(2)},\Omega_{\rm ren}^{(2)}$ finite。最后 impose linearized Einstein equations 后恢复 Ashtekar--Streubel form；first radial logs 不增加 local $\mathscr I$ radiative pair。
- Stage 2B nested-class verdict：若 leading shear 含 $rL C_{AB}^{(1)}$，off-shell outer flux 出现 $L_R^2\delta\dot C^{(1)}\wedge\delta C^{(1)}$；在 local finite-jet/no-edge-field category 中不是 endpoint descent。因此 $K_0^{AB}=0$ 是当前 category 的 obstruction boundary。On shell 的 $\dot C_{AB}^{(1)}=0$ 不能反用于 action-first definition。
- Stage 3 nonlinear first-log sector：已在 `4d nonlinear gravity.md` 完成 fixed-round、fixed-$\Omega$、finite-slab 的 finite-order construction。EH + GHY + affine-null + joints 的相对发散可由 fixed-frame local boundary/corner terms 消去；$S_{\rm ren}$、$\Theta_{\rm ren}$、$\Omega_{\rm ren}$ 在显示阶数为 $C^2$，且无需 Penrose conditions 或 $E_{\rm div}=0$。最后 impose EOM 后，counterterms 的 divergent part 消失并恢复 GLZ/Ashtekar--Streubel form。
- Stage 4 arbitrary finite radial order：已在 `all-order radial hierarchy.md` 证明 fixed-frame finite-$N$ induction。Exact radial support 表明 Stage 3 已穷尽 standard leading caps 的 action divergences；更深 coefficients 不产生新的 non-exact symplectic divergence。Leading-log shear 是当前 category 的唯一 radial obstruction。Actual PDE realization 与 convergent $N\to\infty$ series 被明确留作不同问题。
- Stage 5 varying celestial metric：已在 `dynamical celestial metric.md` 区分 external source、boundary variable 与 edge field。General-$q$ radial divergence 是 finite-$u$ cut descent，Freidel--Riello potential 给出有限 responses；但 strict local-covariant physical symplectic current 受 Flanagan--Prabhu--Shehzad obstruction。Smooth generalized BMS 只在 nonlocal Campiglia--Peraza 或额外 edge completion 上确定为 canonical，且前者不含 generic logarithmic $u$ tails。
- Stage 6 matter radial-local gate：已在 `matter coupling.md` 完成。Massless scalar 需要一个 endpoint/corner logarithmic subtraction，4D Maxwell 无 radial action divergence，minimal mixed coupling 不产生新 divergent radial weight；leading-log matter radiation 与 leading-log shear 一样构成 symplectic obstruction。Pure inverse-power/log massive on-shell hierarchy为空，真实 massive data 属于 $i^\pm$。
- Stage 7 endpoint/corner gate：已在 `spatial infinity and endpoints.md` 完成。Joint $(\Omega,\rho)$ polyhomogeneity 是交换极限的必要结构；generic $1/u$ tail 不破坏 fundamental radiative symplectic form，但使 superrotation soft moment logarithmically anomalous。Ordinary antipodal matching 是 Ashtekar--Hansen regularity + EOM + fluxless-sector 的条件性定理；massive final states 则留下尚未解决的 coupled $i^+$ action obstruction。
- Stage 8 charges/Ward diagnostic：已在 `charges and Ward identities.md` 完成。Ordinary smooth BMS $\ltimes$ large $U(1)$ 在 conditional massless matched sector 上具有 finite WZ cut charges、flux、algebra 与 $i^0$ matching；global Lorentz 不受 generic $1/u$ tail 的 superrotation logarithm影响。Smooth generalized BMS 需要不同的 nonlocal/edge completion，meromorphic extended BMS 需要 puncture sectors。Section 15 构造 fixed-order BV--BFV/pAQFT completion；section 16 选定 BMS-compatible FK dressing，并把 global Ward identity写成 relative-BV、IR、$i^0$、$i^\pm$ 与 puncture五类 remainder。Ordinary supertranslation有 conditional zero-remainder branch；generic-tail superrotation因未证明的 matching只得到 exact obstruction identity。
- Roadmap diagnostic status：Stage 0--8 和 `TODO.md` 的 P0--P5 backlog 都已有 positive theorem、conditional construction或 exact obstruction verdict。勾选表示问题已被判定并写出证据，不表示 strict intrinsic completion、generic massive gluing或 tail-superrotation matching等 obstruction 已经消失。

## Final arrow-by-arrow verdict

| Arrow | Precise domain | Verdict |
|---|---|---|
| $\mathcal F_{\rm off}\to S_{\rm ren}$ | fixed $\Omega$，fixed round $q$，finite $u$-slab，arbitrary fixed radial order，vacuum + massless scalar + Maxwell | Proved in the fixed-frame finite-normal-jet category |
| $S_{\rm ren}\to\Theta_{\rm ren},\Omega_{\rm ren}$ | same domain，no leading-log shear/scalar/Maxwell radiation | Proved；the three leading logs are sharp symplectic obstructions in the no-edge category |
| formal hierarchy $\to$ actual solutions | linear waves，3D Maxwell，and semiglobal vacuum/quasilinear subclasses | Nonempty/partially proved；surjectivity onto the full formal Bondi coefficient space is not proved |
| finite slab $\to$ complete $\mathscr I^\pm$ | jointly polyhomogeneous，$1/u$ tail，zero timelike endpoint mass | Fundamental massless radiative $\Omega$ is finite |
| $\mathscr I^-\leftrightarrow\mathscr I^+$ through $i^0$ | Ashtekar--Hansen regularity + EOM + totally fluxless sector | Conditional antipodal matching theorem |
| $\Omega_{\rm ren}\to H_\xi$ | ordinary smooth BMS $\ltimes$ large $U(1)$ on the conditional matched sector | Finite WZ cut charges，flux and algebra |
| $\Omega_{\rm ren}\to H_Y$ | arbitrary smooth or meromorphic superrotation with generic $1/u$ tail | Not unique：varying-$q$ obstruction，endpoint log anomaly，or puncture sector |
| null + timelike faces $\to S_{\rm ren}^{\rm global}$ | generic massive final data or nonzero endpoint mass | Open：coupled $i^\pm$ drag/corner obstruction |
| classical matching $\to$ quantum Ward identity | matched ordinary supertranslations + fixed-order anomaly-free BV sector + BMS-compatible FK limit | Zero-remainder theorem within that declared perturbative sector |
| generic-tail/punctured matching $\to$ quantum Ward identity | superrotations with $i^0/i^\pm$ and defect faces | Exact five-remainder identity；zero-remainder theorem obstructed by unproved matching/nonunique defect data |

Thus the first two arrows—the user's main priority—are positive theorems only in a broad fixed-frame finite-order radial class。Strict intrinsic/conformal-covariant completeness、uniform $N\to\infty$ control 和 global timelike corners remain open。The earliest unresolved global action arrow is

$$\begin{align}
\boxed{ \text{generic joint null--spatial--timelike histories} \longrightarrow
S_{\rm ren}^{\mathscr I^\pm\cup i^0\cup i^\pm}
\text{ off shell and }C^2.
}
\end{align}$$

---

# 总体红线

所有阶段都遵守以下顺序。

## 1. 先抽象，后坐标

先在有 cutoff 和 corners 的流形上写

$$\begin{align}
\delta L=E(\Phi)\delta\Phi+d\theta(\Phi;\delta\Phi),
\end{align}$$

以及

$$\begin{align}
S_R = \int_{M_R}L +\int_{\mathcal B_R}B_R +\int_{\Sigma_\pm}B_\pm +\int_{C_\pm}C_\pm .
\end{align}$$

得到完整的 off-shell variation 后，才进入 Bondi/radial gauge 做渐近展开。

## 2. 径向问题和 endpoint 问题分开

先要求 variations 在 $u$ 方向 compactly supported：

$$\begin{align}
\delta\Phi=0 \qquad \text{near }u=u_\pm.
\end{align}$$

这一步只研究 $r\to\infty$ 的局域重整化。完成以后再打开 $u=u_\pm$ 的 cuts 和 corner variations。否则 radial divergence、soft $u$-moment divergence 和 $i^0$ divergence 会混在一起。

## 3. Counterterm 的“完备性”必须相对于一个 category

至少要固定：

- locality：有限阶 jets；
- covariance：bulk diffeomorphism、boundary diffeomorphism、gauge covariance 中保留哪些；
- 是否允许显式 $\Omega$ 和 $\log(\mu\Omega)$；
- 只允许 intrinsic boundary data，还是允许 extrinsic curvature/radial momentum；
- 是否允许 inverse differential operators；
- 是否允许新的 boundary/edge fields；
- 允许的最大渐近权重和 derivative order。

否则“找全 counterterms”没有严格含义。

## 4. 三种有限性分开证明

不能只证明 action 数值有限：

$$\begin{align}
\lim_{R\to\infty}S_R^{\rm ren}<\infty.
\end{align}$$

还要分别证明：

$$\begin{align}
\lim_{R\to\infty}\delta S_R^{\rm ren}
\end{align}$$

有局域、有限的 canonical form，以及

$$\begin{align}
\Omega_{\rm ren} = \delta\Theta_{\rm ren}
\end{align}$$

对任意允许的 phase-space tangent variations 有限且闭合。最好要求 $S_{\rm ren}$ 在选定 function-space topology 中至少是 $C^2$，否则交换

$$\begin{align}
\delta\lim_{R\to\infty} \stackrel{?}{=} \lim_{R\to\infty}\delta
\end{align}$$

没有依据。

---

# Stage 0：把问题定义成一个严格的数学对象

这一步不是铺垫，而是整个项目最关键的定义阶段。

## 模型假设

取一个 regulated asymptotic collar：

$$\begin{align}
M_{R,[u_-,u_+]} = \{R_0\le r\le R,\ u_-\le u\le u_+\},
\end{align}$$

边界包含：

- stretched infinity $\mathcal B_R=\{r=R\}$；
- 两个 endpoint hypersurfaces $\Sigma_\pm$；
- corners $C_\pm=\mathcal B_R\cap\Sigma_\pm$。

第一轮固定：

$$\begin{align}
\Omega=\frac1r,\qquad \delta\Omega=0,
\end{align}$$

并固定 cut topology。4D 中固定 $S^2$ 上的 round $q_{AB}$，3D 中固定 $S^1$ metric。

定义 polyhomogeneous off-shell class：

$$\begin{align}
\Phi \sim \sum_{(p,k)\in\mathcal E} r^{-p}(\log r)^k\Phi_{p,k}(u,x),
\end{align}$$

但必须补充：

- $\mathcal E$ 是什么 index set；
- remainder 属于什么 weighted/conormal space；
- 对 $u,x$ 的正则性；
- variations 是否保持同一个 $\mathcal E$；
- multiplication、derivatives、gauge transformations 后是否仍闭合；
- 所有 $\Phi_{p,k}$ 在 off shell 时彼此独立。

可以从已知 on-shell expansion 读取“哪些幂和 log 值得纳入”，但随后必须释放所有 EOM relations，并补入 nonlinear closure 所需的项。

## 需要论证

### 0A. Function-space closure

证明

$$\begin{align}
\Phi,\Psi\in\mathcal F_{\rm off}^{\mathcal E} \quad\Longrightarrow\quad \nabla\Phi,\ \Phi\Psi,\ \delta\Phi
\end{align}$$

仍属于指定的扩展 index family。

### 0B. Gauge slice 的地位

需要证明：

1. 所选 Bondi/radial gauge 在这个 collar 中局部可达；
2. residual gauge transformations 保持 $\mathcal F_{\rm off}^{\mathcal E}$；
3. gauge conditions 是显式模型假设，不被伪装成 EOM consequence。

### 0C. Counterterm category

先研究两个嵌套类别：

$$\begin{align}
\mathfrak C_{\rm int} \subset \mathfrak C_{\rm ext}.
\end{align}$$

- $\mathfrak C_{\rm int}$：只含 induced fields 和 tangential derivatives；
- $\mathfrak C_{\rm ext}$：还允许 extrinsic curvature、normal derivatives 或 radial momentum。

若只有 $\mathfrak C_{\rm ext}$ 能重整化，就必须说明这是否改变了 boundary polarization，而不能把它当作普通 Dirichlet counterterm。

### 0D. “最大 falloff”的含义

不要预设存在唯一最大空间。定义偏序：

$$\begin{align}
\mathcal F_1\preceq\mathcal F_2 \quad\Longleftrightarrow\quad \mathcal F_1\subseteq\mathcal F_2,
\end{align}$$

然后寻找：

- 唯一最大元；
- 若干互不包含的 maximal sectors；
- 或一个 obstruction boundary。

## Stage 0 的产物

一份独立的 definitions document，包括：

- regulated geometry；
- off-shell polyhomogeneous spaces；
- counterterm category；
- boundary polarization；
- equivalence relation；
- “有限、可微、闭合、最大”的精确定义。

没有这份定义，后面的“action finite”都无法形成 theorem。

---

# Stage 1：3D pure Maxwell pilot

这是最合适的第一个完整模型：有传播自由度、有 radiation/Coulomb branch、有半整数幂和 logarithms，但没有 gravitational diffeomorphism 的复杂性。

3D Maxwell 的已知 on-shell solution space 确实同时出现 Coulomb logarithms、radiative branch 和 electromagnetic news；可以用它来选择候选 index set，但不能采用其中的 EOM relations。[Bosma–Geiller–Majumdar–Oblak](https://arxiv.org/abs/2311.09156)

## 模型假设

固定 3D Minkowski：

$$\begin{align}
ds^2=-du^2-2\,du\,dr+r^2d\phi^2, \qquad \phi\sim\phi+2\pi.
\end{align}$$

作用量：

$$\begin{align}
S_{\rm M} = -\frac14\int_{M_R}d^3x\,\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}.
\end{align}$$

第一轮可以取 radial gauge：

$$\begin{align}
A_r=0,
\end{align}$$

但必须先写出 gauge-covariant 的 abstract variation：

$$\begin{align}
\delta S_{\rm M} = \int_{M_R} \sqrt{-g}\,(\nabla_\mu F^{\mu\nu})\delta A_\nu - \int_{\partial M_R} \sqrt{|h|}\,n_\mu F^{\mu i}\delta A_i.
\end{align}$$

候选 off-shell ansatz 应同时容许：

$$\begin{align}
r^{-n},\qquad r^{-n-\frac12},\qquad r^{-n}(\log r)^k,
\end{align}$$

例如示意性地写成

$$\begin{align}
A_i = \sum_{(p,k)\in\mathcal E_{\rm M}} r^{-p}(\log r)^k A_{i}^{(p,k)}(u,\phi),
\end{align}$$

而不是一开始就把某个 coefficient 称为 news 或 Coulomb charge。

## Stage 1A：纯径向 renormalization

先令 $\delta A$ 在 $u$ 端点附近消失。

### 需要计算

1. 将一般 off-shell ansatz 代入 $S_{\rm M}$；
2. 建立每个 coefficient 对 $S_R$、$\theta_R$ 的 radial-weight ledger；
3. 分别提取\[ R^\alpha(\log R)^k,\qquad (\log R)^k \]divergences；
4. 不使用 Maxwell EOM 检查这些 divergence 是否可以写成

$$\begin{align}
\theta_{\rm div} +\delta\ell_{\rm ct}^{\rm add} -d_{\partial}\vartheta_{\rm ct}^{\rm add} =\mathcal O(R^0).
\end{align}$$

这里 $\vartheta_{\rm ct}$ 是 corner symplectic potential，不能只找 $\ell_{\rm ct}$。

### Counterterm 分类

先测试 intrinsic gauge-covariant basis：

$$\begin{align}
F_{ij}F^{ij}, \quad D_iF^{ij}D^kF_{kj}, \quad \ldots
\end{align}$$

若不足，再打开含 electric flux

$$\begin{align}
\pi^i=n_\mu F^{\mu i}
\end{align}$$

的 extended category。需要说明使用 $\pi^i$ 是否等价于 mixed/Neumann polarization。

### 需要证明

- $S_{\rm ren}$ 对所有允许 coefficients 都有限；
- $\delta S_{\rm ren}$ 具有有限 canonical form；
- counterterm basis 在指定 radial weight 和 derivative order 内完备；
- 结果不依赖角向或 $u$ 积分后的偶然抵消。

## Stage 1B：恢复 endpoints 和 corners

允许 $\delta A$ 在 $u_\pm$ 非零，加入 $C_\pm$。

需要证明：

$$\begin{align}
\Theta_{\rm ren}[\Sigma_+] - \Theta_{\rm ren}[\Sigma_-] = \int_{\mathscr I_R}\omega_{\rm ren} + \text{corner terms}
\end{align}$$

在 $R\to\infty$ 时有限。

此时才能确定真正的 boundary canonical pairs。预期 on shell 会映射到 radiative 和 Coulombic pairs，但这必须是结论。

## Stage 1C：最后才 impose Maxwell equations

现在取

$$\begin{align}
\nabla_\mu F^{\mu\nu}=0
\end{align}$$

并证明：

- known radiative/Coulomb solutions 包含在 $\mathcal F_{\rm off}$ 中；
- EOM recursion 保持选定 index set；
- induced solution space $\mathcal S_{\rm M}$ 非空；
- $\Omega_{\rm ren}|_{\mathcal S_{\rm M}}$ 有限、闭合；
- compactly supported gauge transformations 是 degeneracies。

Large $U(1)$ charges 只作为最后的 consistency check。

本阶段还必须至少对一个明确 data class 区分：

$$\begin{align}
\text{formal radial solution} \qquad\text{与}\qquad \text{actual PDE solution}.
\end{align}$$

`3d Maxwell.md` Proposition 11.1 已对 compact positive-frequency support、finite angular support 的 Fourier--Bessel data 完成 existence、future-radiation uniqueness 和 continuous dependence。任意 higher-log formal tower 的 realization 不是 Stage 1 theorem 的隐藏假设；它被单列为 zero-frequency threshold/inverse-transform problem。

## Stage 1 成功标准

最好形成一个定理：

> 在明确给定的 polyhomogeneous index family、local counterterm category 和 cutoff Dirichlet polarization 下，存在某个最大或若干 maximal off-shell Maxwell classes，使 $S_{\rm ren}$ 为 $C^2$，且其 induced CPS symplectic form 在相应解空间上有限。

这是第一个可以独立成文的结果。

---

# Stage 2A（可选）：3D Einstein–Maxwell

这一支线检验 backreaction、非线性乘积和 gravitational corners，但避免 4D gravity 的角向张量复杂度。

## 模型假设

$$\begin{align}
S = \frac1{16\pi G} \int\sqrt{-g}\,R - \frac14\int\sqrt{-g}\,F^2 + S_{\rm boundary}.
\end{align}$$

取 3D Bondi gauge、固定 leading circle metric、有限 $u$-slab。metric 和 Maxwell coefficients 全部 off-shell 独立。

候选 powers/logs 可以由已知 Einstein–Maxwell solution 提示，但所有 Einstein/Maxwell recursion 均删除。

## 需要论证

- Maxwell log 是否通过 stress tensor 迫使 metric index family 扩大；
- nonlinear products 是否破坏原有 polyhom closure；
- GHY/null-boundary/corner terms 是否足够；
- 是否出现不可由 pure gravity + pure Maxwell counterterms 消除的 mixed divergences；
- coupled $S_{\rm ren}$、$\Theta_{\rm ren}$、$\Omega_{\rm ren}$ 是否同时有限；
- on shell 是否恢复 electromagnetic news、mass-loss 和 charge algebra。

这一阶段不是进入 4D 的逻辑必要条件，但会显著降低 nonlinear Stage 3 的风险。

---

# Stage 2B：4D free spin-2 bridge

这是进入 4D nonlinear GR 前更必要的一步。它隔离：

- diffeomorphism gauge；
- tensorial $S^2$ structure；
- gravitational boundary/corner terms；
- first logarithmic/non-peeling mode。

已有工作构造了 Maxwell、linearized gravity 乃至任意 spin 在 null infinity 的 free on-shell action；它是很好的 benchmark，但不能替代这里的 off-shell construction。[Campoleoni et al.](https://arxiv.org/abs/2507.19310)

## 模型假设

写

$$\begin{align}
\widetilde g_{\mu\nu} = \eta_{\mu\nu} + \kappa h_{\mu\nu},
\end{align}$$

从 Einstein–Hilbert 加适当 boundary terms 的二阶展开得到 quadratic action，而不是单独指定一个不带边界信息的 Fierz–Pauli action。

固定：

$$\begin{align}
q_{AB}=\overset{\circ}{q}_{AB}, \qquad \delta q_{AB}=0, \qquad \delta\Omega=0.
\end{align}$$

采用 minimal/partial Bondi gauge，例如

$$\begin{align}
h_{rr}=0,\qquad h_{rA}=0,
\end{align}$$

但 determinant condition 是否加入必须单独说明。

Off-shell expansion 写成

$$\begin{align}
h_{\mu\nu} = \sum_{(p,k)\in\mathcal E_{\rm spin2}} r^{-p}(\log r)^k h_{\mu\nu}^{(p,k)}.
\end{align}$$

$\mathcal E_{\rm spin2}$ 至少覆盖：

- radiative shear；
- Coulombic coefficients；
- 第一个对 action 或 symplectic potential 有贡献的 log coefficient。

不同 Bondi parametrization 会改变各 component 的表面幂次，因此 Stage 2 的第一个技术任务就是 componentwise weight table，不能只写一个统一的 $1/r$ 展开。

## 需要论证

1. 从 covariant quadratic action 推导完整 off-shell variation；
2. 证明 gauge slice 局部可达，列出 residual diffeomorphisms；
3. 分类 quadratic boundary/corner counterterms；
4. 证明同一组 counterterms 同时重整化\[ S^{(2)},\qquad \Theta^{(2)},\qquad\Omega^{(2)}; \]
5. 对所有 tangent variations 验证 proper diffeomorphisms 位于 $\ker\Omega_{\rm ren}$；
6. impose linearized Einstein equations 后：
    - 恢复 peeling sector 中的 Ashtekar–Streubel form；
    - 得到 first-log sector 的 extension；
    - 与 free on-shell action 比较。

## 成功标准

Counterterms 的推导不得使用 linearized Einstein equations；on-shell paper 的结果必须作为 restriction 被恢复，而不是作为输入。

---

# Stage 3：4D nonlinear vacuum GR，有限 $u$-slab，第一层 log

这是整个计划中最关键、也最可能产生实质性新结果的阶段。

Freidel–Riello 已经构造了 polyhomogeneous conformal infinity 的 finite renormalized Lagrangian 和 symplectic potential，包括 logarithmic anomaly；但 accessible off-shell space 中加入了若干 Penrose boundary conditions 和 $E_{\rm div}=0$ 一类限制。[Freidel–Riello](https://arxiv.org/abs/2402.03097)

GLZ 则从 nonlinear solution space 出发研究 non-peeling、tails、logarithmic soft behavior 和 charges。[Geiller–Laddha–Zwikel](https://arxiv.org/abs/2407.07978)

你的核心问题正好位于两者之间：

> 哪些限制是 action differentiability 必须预先施加的 off-shell restrictions，哪些可以从 renormalized boundary equations 或 bulk EOM 导出？

## 模型假设

- 4D vacuum Einstein gravity；
- $\Lambda=0$；
- fixed conformal defining function：

$$\begin{align}
g_{\mu\nu}=\Omega^2\widetilde g_{\mu\nu}, \qquad \Omega=\frac1r,\qquad\delta\Omega=0;
\end{align}$$

- fixed round $q_{AB}$；
- minimal Bondi gauge；
- finite $u$-slab；
- first variations 在 endpoints 附近消失；
- 不 impose Penrose boundary conditions；
- 不 impose $E_{\rm div}=0$；
- 不使用任何 Einstein equation。

候选 index set 可从 GLZ 的 on-shell expansion 中读取 powers/log positions，然后：

1. 删除所有 coefficient relations；
2. 把所有 coefficients 当作独立；
3. 加入 differentiation 和 nonlinear multiplication 所需的 closure terms。

## Stage 3A：kinematical expansion ledger

需要逐项标记：

|条件/关系|来源|
|---|---|
|Bondi gauge|gauge choice|
|determinant condition|optional gauge/parametrization|
|polyhomogeneous index set|off-shell function-space assumption|
|coefficient independence|off-shell definition|
|radial recursion|Einstein EOM，暂禁|
|Penrose conditions|待判定|
|$E_{\rm div}=0$|待判定|

必须把每个 metric component 的 physical/conformal radial weight、variation weight 和 curvature weight列清楚。

## Stage 3B：regulated action 与第一变分

计算

$$\begin{align}
S_R = S_{\rm EH} + S_{\mathcal B_R} + S_{\Sigma_\pm} + S_{C_\pm}.
\end{align}$$

先在 abstract level 推导 variation，再代入 gauge-fixed expansion。

建立 divergence ledger：

$$\begin{align}
S_R = \sum_{\alpha,k} R^\alpha(\log R)^k S_{\alpha,k} + S_{\rm finite} + o(1),
\end{align}$$

以及

$$\begin{align}
\Theta_R = \sum_{\alpha,k} R^\alpha(\log R)^k\Theta_{\alpha,k} + \Theta_{\rm finite} + o(1).
\end{align}$$

不能只检查 bulk action；Einstein–Hilbert、GHY/null terms 和 corners 必须整体处理。McNees–Zwikel 关于从 bulk action divergence 中系统提取 corner potential 的方法是这里的重要参照。[McNees–Zwikel](https://arxiv.org/abs/2306.16451)

## Stage 3C：counterterm/cohomology problem

对每个 radial weight 求解 relative descent：

$$\begin{align}
\Theta_{\rm div} = \delta\ell_{\rm ct} + d_{\partial}\vartheta_{\rm ct} + \mathcal A_{\rm div}.
\end{align}$$

其中：

- $\ell_{\rm ct}$：boundary Lagrangian；
- $\vartheta_{\rm ct}$：corner potential；
- $\mathcal A_{\rm div}$：真正的 obstruction/anomaly candidate。

需要区分：

1. 可以由 intrinsic local CT 消去；
2. 需要 extrinsic data；
3. 需要改变 polarization；
4. 只能在额外 field restriction 下消失；
5. 构成非平凡 local cohomology obstruction。

这一步才真正回答“off-shell action 是否存在”。

## Stage 3D：嵌套 off-shell spaces

建议显式比较：

$$\begin{align}
\mathcal F_0 = \{\text{minimal Bondi gauge + closed polyhom index set}\},
\end{align}$$

$$\begin{align}
\mathcal F_1 = \mathcal F_0+\{\text{selected Penrose conditions}\},
\end{align}$$

$$\begin{align}
\mathcal F_2 = \mathcal F_1+\{E_{\rm div}=0\}.
\end{align}$$

对每个空间分别回答：

- $S_{\rm ren}$ 是否存在；
- $\delta S_{\rm ren}$ 是否有限；
- $\Omega_{\rm ren}$ 是否有限；
- restriction 是否从 boundary Euler–Lagrange equation 导出；
- restriction 是否仅仅消去了一个本应由新增 boundary mode 承载的 canonical pair。

最有价值的结果未必是“$\mathcal F_0$ 一定可行”。即使证明某条 Penrose condition 是 locality/covariance 下不可避免的 action-domain restriction，也会澄清现有 formalism 的逻辑地位。

## Stage 3E：on-shell validation

最后才 impose Einstein equations，并建立 dictionary：

$$\begin{align}
\mathcal S_{\rm Stage\,3} \longleftrightarrow \mathcal S_{\rm FR} \longleftrightarrow \mathcal S_{\rm GLZ}.
\end{align}$$

需要检查：

- first log coefficient 和 non-peeling Weyl component 的对应；
- log anomaly 是否一致；
- tail/memory sector是否确实属于你的 action domain；
- GLZ 的 renormalized symplectic structure 是否由同一个 $S_{\rm ren}$ 导出；
- Freidel–Riello 的 restrictions 在你的构造中究竟是输入、boundary equations 还是选定 sector。

## Stage 3 成功标准

至少证明以下有限阶版本：

> 对包含第一层 non-peeling/log mode 的某个明确 off-shell polyhomogeneous class，存在局域 boundary/corner counterterms，使 $S_{\rm ren}$ 为 $C^2$，并诱导有限闭合的 $\Omega_{\rm ren}$；或者证明在指定 locality/covariance/polarization category 中存在明确 obstruction。

后半句同样是完整结果。

---

# Stage 4：任意有限阶的 radial polyhomogeneous hierarchy

不要一开始就追求真正“全阶收敛”。更可控的目标是：

> 对任意固定 $N$，完成到 $O(r^{-N}(\log r)^{K_N})$ 的构造，并证明 $N\to N+1$ 的 induction step。

## 模型假设

沿用 Stage 3：

- vacuum；
- fixed round $q_{AB}$；
- fixed $\Omega$；
- finite $u$-slab；
- 不讨论 endpoints。

扩大 index family：

$$\begin{align}
\mathcal E_1\subset\mathcal E_2\subset\cdots.
\end{align}$$

## 需要论证

1. nonlinear Einstein Lagrangian 在 $\mathcal E_N$ 下闭合；
2. 每个 radial weight 只有有限维 local invariant basis；
3. counterterm descent 可以递归求解，或 obstruction 在某阶首次出现；
4. anomaly 满足 Wess–Zumino consistency；
5. remainder estimates 足以支持 $S_{\rm ren}$ 的 $C^2$ 性；
6. impose EOM 后，radial evolution 保持同一 polyhomogeneous category。

真正的 PDE existence/propagation 问题应单独处理：formal expansion 的存在不等于给定 scattering data 后存在实际 spacetime solution。近期关于 polyhomogeneity 如何从 characteristic data 传播到 null infinity 的分析可作为这一部分的 PDE 入口。[Kádár–Kehrberger](https://arxiv.org/abs/2501.09814)

---

# Stage 5：打开 $\delta q_{AB}\neq0$

只有 Stage 3–4 完成以后才值得进入 generalized BMS。

## 模型假设

允许

$$\begin{align}
\delta q_{AB}\neq0,
\end{align}$$

但要事先决定 $q_{AB}$ 是：

1. external source；
2. boundary configuration variable；
3. 真正带 conjugate momentum 的 dynamical boundary field；
4. 扩展 phase space 中的 edge mode。

“External source”指：生成泛函允许对它求变分来定义响应，但在给定 variational problem 中不对它积分，也不要求其 Euler–Lagrange equation。它可以变分，却不等于 dynamical。

## 需要论证

- $\delta q_{AB}$ 引入的 action divergences；
- 对应的 finite canonical momentum；
- 是否需要 boundary kinetic term 或 edge modes；
- enlarged $\Omega_{\rm ren}$ 是否非退化/闭合；
- generalized BMS transformations 是否真正在该 phase space 上 canonical；
- 如何绕开或接受 local-covariant symplectic-current obstruction。

这一阶段之后才有意义问：

$$\begin{align}
Y^A\in\mathrm{Diff}(S^2)
\end{align}$$

究竟是 canonical symmetry、source transformation，还是在 phase space 不闭合的 transformation。

---

# Stage 6：matter 与 generic scattering

## 先后顺序

建议依次加入：

$$\begin{align}
\text{massless scalar} \to \text{Maxwell} \to \text{massive matter}.
\end{align}$$

Massive matter 会把 $i^\pm$ 同时带进来，不适合一开始就做。

## 模型假设

Matter fields 的 falloffs 必须作为独立 off-shell assumptions 给出，不能由 matter EOM 预先解出。

需要构造 coupled index family：

$$\begin{align}
\mathcal E_{\rm grav} \star \mathcal E_{\rm matter},
\end{align}$$

使 nonlinear stress tensor 的所有 products 都闭合。

## 需要论证

- matter action 和 gravitational action 是否需要 mixed CTs；
- matter flux 是否使原有 Penrose restrictions 不再一致；
- backreaction 是否迫使新增 log towers；
- coupled $\Omega_{\rm ren}$ 是否有限；
- constraint propagation；
- generic characteristic data 是否实际生成该 solution class；
- vacuum sector 是否作为一致截断被恢复。

---

# Stage 7：打开 $u\to\pm\infty$ 与 $i^0$

这是与 radial renormalization 不同的第二个渐近问题。

## 模型假设

需要把 null infinity 和 spatial infinity 当成一个 manifold with corners，至少引入两个 boundary defining functions：

$$\begin{align}
\Omega\sim r^{-1}, \qquad \rho\sim |u|^{-1}.
\end{align}$$

相应的联合展开是

$$\begin{align}
\Phi \sim \sum \Omega^p\rho^q (\log\Omega)^k(\log\rho)^\ell \Phi_{p,q,k,\ell}.
\end{align}$$

不能先取 $\Omega\to0$ 后随意令 $u\to\infty$，而应研究两极限在 $i^0$ corner 的兼容性。

## 需要论证

1. radial CTs 在 $\rho\to0$ 时是否再次发散；
2. 是否需要 endpoint/corner counterterms；
3. $\Omega\to0$ 与 $\rho\to0$ 的 order of limits 是否一致；
4. tail 和 memory 所需的 $u$-falloff；
5. $\mathscr I^-$ 与 $\mathscr I^+$ 的 symplectic forms 是否通过 $i^0$ 形成 symplectomorphism；
6. antipodal matching 是 action principle 的 boundary equation、regularity condition，还是额外 scattering-sector assumption；
7. superrotation 的\[ \int du\,uN_{AB} \]divergence 能否由 $i^0$ corner sector 吸收，还是意味着相应 generator 不存在。

这一阶段完成以前，不应宣称已经定义了 global scattering phase space。

---

# Stage 8：charges、matching 与 Ward identities

这是最后阶段，而不是 starting point。

## Classical charges

对保持最终 action domain 和 polarization 的 transformation $\xi$，定义

$$\begin{align}
\delta H_\xi = \Omega_{\rm ren}(\delta\Phi,\delta_\xi\Phi).
\end{align}$$

逐项证明：

- finiteness；
- integrability 或明确的 nonintegrable flux；
- field-dependent generator corrections；
- algebra 和 possible cocycles；
- corner contributions；
- $\mathscr I^\pm$ matching。

只有这时才能确定到底是 ordinary、extended 还是 generalized BMS 真正作用在所构造的 phase space 上。

## Ward identities

还需要额外加入：

- gauge fixing 和 ghosts；
- BRST-compatible boundary conditions；
- renormalized measure；
- possible boundary/log anomalies；
- IR dressing 或 inclusive prescription；
- $i^0/i^\pm$ sectors。

然后才能从

$$\begin{align}
\delta_\xi Z=0
\end{align}$$

推导 Ward identity，并与 soft theorem 比较。近期从 path integral 方向推导 asymptotic-symmetry Ward identities 的工作也仍把 superrotation poles 和 corner issues 保留为实质问题，因此它更适合作为最终 benchmark，而不是 action domain 的定义来源。[Isen et al.](https://arxiv.org/abs/2603.17045)

---

# 建议的实际论文级里程碑

## Paper I：3D pure Maxwell

题目大致可以是：

> Off-shell action renormalization for polyhomogeneous radiative Maxwell fields at null infinity

最低成果：

- 明确的 off-shell index family；
- counterterm completeness theorem；
- finite $S_{\rm ren}$、$\Theta_{\rm ren}$、$\Omega_{\rm ren}$；
- 与已知 on-shell radiative/Coulomb solution space 对接。

## Paper II：4D linearized gravity

最低成果：

- fixed round $q_{AB}$；
- first-log/non-peeling linear sector；
- action-derived symplectic form；
- proper-diffeomorphism degeneracy；
- 与 free on-shell action 对接。

## Paper III：4D nonlinear first-log sector

最低成果：

- 明确判断哪些 Penrose conditions 是 restrictions，哪些可由 boundary equations 导出；
- Freidel–Riello 与 GLZ 两套结构的 action-level dictionary；
- first-log sector 中同一套 counterterms 同时重整化 action 和 CPS。

---

# 最先应该做的六个具体工作包

1. 写出 Stage 0 definitions：$\mathcal F_{\rm off}^{\mathcal E}$、counterterm category、polarization、maximality。

2. 对 3D Maxwell 在有限 cylinder 上推导完整 abstract off-shell variation，包括 endpoint/corner bookkeeping。

3. 从已知 3D on-shell solution 中只提取 powers/log index support，然后释放全部 coefficient relations。

4. 建立 $S_R$ 和 $\Theta_R$ 的 radial-weight table。

5. 在 intrinsic CT category 中求解 divergence cancellation；若失败，再测试 normal-momentum category，并记录 polarization 的改变。

6. 得到 finite $\Omega_{\rm ren}$ 后才 impose Maxwell equations，检查 known solution space 和 large-$U(1)$ degeneracy/charges。

如果第一篇能把这六项完整做通，就不再只是“拿简单模型试试”，而是已经建立了后来处理 4D gravity 时可复用的 formalism。真正决定整个计划成败的不是某一个 BMS algebra，而是能否把

$$\begin{align}
\boxed{ \text{off-shell index family} + \text{relative boundary/corner variational bicomplex} + \text{counterterm completeness} }
\end{align}$$

这三件事放进同一个严格框架中。
