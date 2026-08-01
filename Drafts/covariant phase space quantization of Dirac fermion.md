# 4d Minkowski Dirac fermion 的协变相空间量子化

## 结论

协变相空间把 Dirac 场一阶作用量中的 second-class constraints 自动约化掉，直接给出偶的 graded symplectic form

$$\begin{align}
\Omega_\Sigma = i\int_\Sigma d\Sigma_\mu\, \delta\bar\psi\gamma^\mu\wedge\delta\psi .
\end{align}$$

其逆是经典 graded Poisson bracket；按照 graded quantization rule 量子化后，恰好得到 Dirac 场的 canonical anticommutation relations（CAR）。

对单个有质量自由 Dirac 场，标准的连续有限维对称性为

$$\begin{align}
\operatorname{ISO}(3,1)\times U(1)_V ,
\end{align}$$

其中时空群严格说应取适当的 spin cover。无质量时，对称性增强为

$$\begin{align}
SO(4,2)\times U(1)_L\times U(1)_R .
\end{align}$$

以下只考虑固定的 4d Minkowski 背景，不包含引力、背景规范场或另行定义的 null-infinity phase space。

## 1. 作用量与变分

取约定

$$\begin{align}
\eta_{\mu\nu}=\operatorname{diag}(+,-,-,-), \qquad \{\gamma^\mu,\gamma^\nu\}=2\eta^{\mu\nu}, \qquad \bar\psi=\psi^\dagger\gamma^0,
\end{align}$$

并令 $\hbar=1$。使用 Hermitian 的对称一阶作用量

$$\begin{align}
S[\psi,\bar\psi] = \int d^4x\, \left[ \frac{i}{2}\bar\psi\gamma^\mu \overleftrightarrow{\partial_\mu}\psi -m\bar\psi\psi \right].
\end{align}$$

经典 fermion 应当视为 Grassmann-odd 场。变分时先把 $\psi$ 与 $\bar\psi$ 当作独立变量，并保持 Grassmann 因子的顺序。作用量的变分为

$$\begin{align}
\delta\mathcal L = \delta\bar\psi\,(i\gamma^\mu\partial_\mu-m)\psi - \left(i\partial_\mu\bar\psi\,\gamma^\mu+m\bar\psi\right)\delta\psi +\partial_\mu\theta^\mu ,
\end{align}$$

其中 presymplectic potential current 为

$$\begin{align}
\theta^\mu = \frac{i}{2} \left( \bar\psi\gamma^\mu\delta\psi -\delta\bar\psi\gamma^\mu\psi \right).
\end{align}$$

Euler--Lagrange 方程是

$$\begin{align}
(i\slashed\partial-m)\psi=0, \qquad i(\partial_\mu\bar\psi)\gamma^\mu+m\bar\psi=0.
\end{align}$$

非对称作用量

$$\begin{align}
\mathcal L' = i\bar\psi\gamma^\mu\partial_\mu\psi-m\bar\psi\psi
\end{align}$$

与上述作用量只相差一个全导数，因此给出相同的 bulk symplectic current。它在等时面上对应熟悉的一阶形式

$$\begin{align}
\mathcal L' = i\psi^\dagger\partial_t\psi -\psi^\dagger \left(-i\boldsymbol\alpha\cdot\nabla+\beta m\right)\psi .
\end{align}$$

## 2. Covariant symplectic current

对 field-space 再作一次变分，得到

$$\begin{align}
\boxed{ \omega^\mu = \delta\theta^\mu = i\,\delta\bar\psi\gamma^\mu\wedge\delta\psi
}.
\end{align}$$

在标准 bigraded 约定中，$\psi$ 是奇坐标，因此

$$\begin{align}
\delta\bar\psi\wedge\delta\psi = +\delta\psi\wedge\delta\bar\psi .
\end{align}$$

所以 $\omega^\mu$ 是偶的 graded symplectic current，而不是作用在普通 bosonic phase space 上的反对称形式。

若 $\delta\psi$ 和 $\delta\bar\psi$ 满足线性化 Dirac 方程，则

$$\begin{align}
\partial_\mu\omega^\mu\doteq0.
\end{align}$$

具体地，

$$\begin{align}
(\partial_\mu\delta\bar\psi)\gamma^\mu = im\,\delta\bar\psi, \qquad \gamma^\mu\partial_\mu\delta\psi = -im\,\delta\psi,
\end{align}$$

因而质量项在 $\partial_\mu\omega^\mu$ 中相消。

对任意 Cauchy 面 $\Sigma$，定义

$$\begin{align}
\boxed{ \Omega_\Sigma = i\int_\Sigma d\Sigma_\mu\, \delta\bar\psi\gamma^\mu\wedge\delta\psi
}.
\end{align}$$

如果两个 Cauchy 面之间没有空间无穷远的 symplectic flux，则 Stokes 定理和 $\partial_\mu\omega^\mu\doteq0$ 表明 $\Omega_\Sigma$ 与 $\Sigma$ 无关。

在 $t=\mathrm{const}$ 面上，

$$\begin{align}
d\Sigma_\mu=(1,0,0,0)\,d^3x,
\end{align}$$

从而

$$\begin{align}
\boxed{ \Omega_{\Sigma_t} = i\int d^3x\, \delta\psi^\dagger_\alpha \wedge\delta\psi_\alpha
}.
\end{align}$$

Dirac 场没有 gauge redundancy。在取 spacelike-compact solutions 或具有充分衰减的波包以后，$\Omega_\Sigma$ 非退化。传统 canonical formalism 中由一阶作用量产生的 constraints 是 second class，而不是 gauge constraints；协变相空间已经直接给出了约化后的 symplectic form。

## 3. Graded bracket 与等时 CAR

取经典 graded Poisson bracket 的约定

$$\begin{align}
\boxed{ \{\psi_\alpha(t,\mathbf x), \psi^\dagger_\beta(t,\mathbf y)\}_{\mathrm{gP}} = -i\,\delta_{\alpha\beta}\delta^3(\mathbf x-\mathbf y)
},
\end{align}$$

以及

$$\begin{align}
\{\psi_\alpha,\psi_\beta\}_{\mathrm{gP}} = \{\psi^\dagger_\alpha,\psi^\dagger_\beta\}_{\mathrm{gP}} =0.
\end{align}$$

对齐次经典 observables，采用 graded quantization rule

$$\begin{align}
[\widehat F,\widehat G]_{\mathrm s} = i\,\widehat{\{F,G\}_{\mathrm{gP}}},
\end{align}$$

其中

$$\begin{align}
[\widehat F,\widehat G]_{\mathrm s} = \widehat F\widehat G -(-1)^{|F||G|} \widehat G\widehat F .
\end{align}$$

当 $F,G$ 都是奇变量时，supercommutator 就是 anticommutator。因此

$$\begin{align}
\boxed{ \{\widehat\psi_\alpha(t,\mathbf x), \widehat\psi^\dagger_\beta(t,\mathbf y)\}_+ = \delta_{\alpha\beta}\delta^3(\mathbf x-\mathbf y)
}.
\end{align}$$

### 协变形式

定义

$$\begin{align}
\Delta(x) = \int\frac{d^3p}{(2\pi)^3\,2E_{\mathbf p}} \left( e^{-ip\cdot x}-e^{ip\cdot x} \right), \qquad E_{\mathbf p}=\sqrt{\mathbf p^2+m^2},
\end{align}$$

以及 causal Dirac kernel

$$\begin{align}
S_D(x) = (i\slashed\partial+m)\Delta(x).
\end{align}$$

则经典 bracket 为

$$\begin{align}
\{\psi_\alpha(x),\bar\psi_\beta(y)\}_{\mathrm{gP}} = -i(S_D)_{\alpha\beta}(x-y),
\end{align}$$

量子 CAR 为

$$\begin{align}
\boxed{ \{\widehat\psi_\alpha(x), \widehat{\bar\psi}_\beta(y)\}_+ = (S_D)_{\alpha\beta}(x-y)
}.
\end{align}$$

$S_D$ 具有 causal support，所以 spacelike-separated fermionic fields 反对易。这是 fermionic microcausality。

## 4. 正频分解与 Fock quantization

在 Minkowski 时空中，Poincaré-invariant vacuum 选择给出正频分解

$$\begin{align}
\psi(x) = \sum_s\int \frac{d^3p}{(2\pi)^3\sqrt{2E_{\mathbf p}}} \left[ b_s(\mathbf p)u_s(\mathbf p)e^{-ip\cdot x} + d_s^*(\mathbf p)v_s(\mathbf p)e^{ip\cdot x} \right].
\end{align}$$

采用归一化和完备关系

$$\begin{align}
u_s^\dagger(\mathbf p)u_{s'}(\mathbf p) = v_s^\dagger(\mathbf p)v_{s'}(\mathbf p) = 2E_{\mathbf p}\delta_{ss'},
\end{align}$$

$$\begin{align}
\sum_su_s(\mathbf p)\bar u_s(\mathbf p) = \slashed p+m, \qquad \sum_sv_s(\mathbf p)\bar v_s(\mathbf p) = \slashed p-m.
\end{align}$$

将模展开代入 $\Omega_{\Sigma_t}$，正负频交叉项因 Dirac Hamiltonian 的正负能量本征态正交而消失，得到

$$\begin{align}
\Omega = i\sum_s\int\frac{d^3p}{(2\pi)^3} \left( \delta b_s^*\wedge\delta b_s + \delta d_s\wedge\delta d_s^* \right).
\end{align}$$

因此

$$\begin{align}
\{b_s(\mathbf p),b_{s'}^*(\mathbf q)\}_{\mathrm{gP}} = -i(2\pi)^3\delta_{ss'}\delta^3(\mathbf p-\mathbf q),
\end{align}$$

$$\begin{align}
\{d_s(\mathbf p),d_{s'}^*(\mathbf q)\}_{\mathrm{gP}} = -i(2\pi)^3\delta_{ss'}\delta^3(\mathbf p-\mathbf q).
\end{align}$$

量子化以后，

$$\begin{align}
\{b_s(\mathbf p),b_{s'}^\dagger(\mathbf q)\}_+ = \{d_s(\mathbf p),d_{s'}^\dagger(\mathbf q)\}_+ = (2\pi)^3\delta_{ss'}\delta^3(\mathbf p-\mathbf q).
\end{align}$$

协变相空间本身只决定 CAR algebra，不单独决定 Fock vacuum。要定义 $b,d$ 和真空，还需要在解空间上选择 positive-frequency complex structure；Minkowski 时空具有自然的 Poincaré-invariant 选择。

## 5. Noether symmetry 在协变相空间上的实现

若一个场变换 $\delta_\epsilon$ 满足

$$\begin{align}
\delta_\epsilon\mathcal L = \partial_\mu K^\mu_\epsilon,
\end{align}$$

则 Noether current 为

$$\begin{align}
j^\mu_\epsilon = \theta^\mu(\delta_\epsilon)-K^\mu_\epsilon.
\end{align}$$

在壳有

$$\begin{align}
\partial_\mu j^\mu_\epsilon\doteq0.
\end{align}$$

当边界 flux 消失且荷可积时，

$$\begin{align}
Q_\epsilon[\Sigma] = \int_\Sigma d\Sigma_\mu\,j^\mu_\epsilon
\end{align}$$

是协变相空间上的 Hamiltonian generator。全局对称性方向不是 $\Omega_\Sigma$ 的退化方向：它们具有非平凡 Hamiltonian charge，不能像 gauge direction 那样被 quotient 掉。

## 6. Vector $U(1)_V$

对任意质量，

$$\begin{align}
\delta_\alpha\psi=-i\alpha\psi, \qquad \delta_\alpha\bar\psi=+i\alpha\bar\psi.
\end{align}$$

对应的守恒流和荷是

$$\begin{align}
j_V^\mu=\bar\psi\gamma^\mu\psi, \qquad \partial_\mu j_V^\mu\doteq0,
\end{align}$$

$$\begin{align}
Q_V = \int_\Sigma d\Sigma_\mu\,j_V^\mu.
\end{align}$$

在等时面上，

$$\begin{align}
Q_V=\int d^3x\,\psi^\dagger\psi.
\end{align}$$

由上述 bracket，

$$\begin{align}
\{\psi,Q_V\}_{\mathrm{gP}}=-i\psi,
\end{align}$$

所以 $Q_V$ 确实生成所选约定下的相位变换。

在模变量中，按固定 Grassmann 顺序写为

$$\begin{align}
Q_V = \sum_s\int\frac{d^3p}{(2\pi)^3} \left( b_s^*b_s-d_s^*d_s \right).
\end{align}$$

量子 normal ordering 后，

$$\begin{align}
\boxed{ :Q_V: = \sum_s\int\frac{d^3p}{(2\pi)^3} \left( b_s^\dagger b_s-d_s^\dagger d_s \right)
}.
\end{align}$$

粒子与反粒子具有相反的 vector charge。

## 7. Poincaré symmetry

取 on-shell Belinfante stress tensor

$$\begin{align}
T^{\mu\nu} = \frac{i}{4}\bar\psi \left( \gamma^\mu\overleftrightarrow{\partial^\nu} + \gamma^\nu\overleftrightarrow{\partial^\mu} \right)\psi.
\end{align}$$

在壳有

$$\begin{align}
\partial_\mu T^{\mu\nu}\doteq0.
\end{align}$$

平移荷为

$$\begin{align}
P^\nu = \int_\Sigma d\Sigma_\mu\,T^{\mu\nu}.
\end{align}$$

Lorentz current 和荷可用 symmetric stress tensor 写成

$$\begin{align}
M^{\lambda\rho\sigma} = x^\rho T^{\lambda\sigma} -x^\sigma T^{\lambda\rho},
\end{align}$$

$$\begin{align}
J^{\rho\sigma} = \int_\Sigma d\Sigma_\lambda\, M^{\lambda\rho\sigma}.
\end{align}$$

Belinfante improvement 已经把 canonical orbital current 与显式 spin current 合并。等时面上的空间旋转荷也可写为

$$
\mathbf J
=
\int d^3x\,
\psi^\dagger
\left[
\mathbf x\times(-i\nabla)
+
\frac12
\begin{pmatrix}
\boldsymbol\sigma&0\\
0&\boldsymbol\sigma
\end{pmatrix}
\right]\psi.
$$

Dirac Hamiltonian 为

$$\begin{align}
H = \int d^3x\, \psi^\dagger \left( -i\boldsymbol\alpha\cdot\nabla+\beta m \right)\psi.
\end{align}$$

量子 normal ordering 后，

$$\begin{align}
\boxed{ :P^\mu: = \sum_s\int\frac{d^3p}{(2\pi)^3} p^\mu \left( b_s^\dagger b_s+d_s^\dagger d_s \right)
},
\end{align}$$

特别地

$$\begin{align}
\boxed{ :H: = \sum_s\int\frac{d^3p}{(2\pi)^3} E_{\mathbf p} \left( b_s^\dagger b_s+d_s^\dagger d_s \right)
}.
\end{align}$$

因此粒子和反粒子的能量都为正。未 normal-order 的表达式含有无穷 vacuum constant。

在没有边界贡献时，$P^\mu$ 与 $J^{\mu\nu}$ 的 graded Poisson algebra 给出 Poincaré algebra，不出现经典中心项；$Q_V$ 与 Poincaré generators 对易。

## 8. Massless chiral symmetry

定义

$$\begin{align}
\gamma^5=i\gamma^0\gamma^1\gamma^2\gamma^3, \qquad \{\gamma^5,\gamma^\mu\}=0.
\end{align}$$

轴变换取为

$$\begin{align}
\delta_\beta\psi=-i\beta\gamma^5\psi, \qquad \delta_\beta\bar\psi=-i\beta\bar\psi\gamma^5.
\end{align}$$

对应流为

$$\begin{align}
j_A^\mu = \bar\psi\gamma^\mu\gamma^5\psi.
\end{align}$$

利用有质量 Dirac 方程，

$$\begin{align}
\boxed{ \partial_\mu j_A^\mu = 2im\bar\psi\gamma^5\psi
}.
\end{align}$$

所以只有 $m=0$ 时，

$$\begin{align}
Q_A = \int_\Sigma d\Sigma_\mu\,j_A^\mu
\end{align}$$

守恒。此时

$$\begin{align}
U(1)_V\times U(1)_A
\cong
U(1)_L\times U(1)_R.
\end{align}$$

在严格自由、无背景 gauge field 的 flat-space 理论中，这个 axial symmetry 可以在量子理论中保持。ABJ anomaly 需要规范耦合或背景 gauge field，不属于这里的假设。

## 9. Massless conformal symmetry

上述 symmetric stress tensor 的 trace 在壳为

$$\begin{align}
\boxed{ T^\mu{}_\mu
\doteq
m\bar\psi\psi
}.
\end{align}$$

因此无质量 Dirac 场的 stress tensor 在壳无迹。若 $\xi^\mu$ 是 4d conformal Killing vector，

$$\begin{align}
\partial_{(\mu}\xi_{\nu)} = \frac14\eta_{\mu\nu}\partial_\rho\xi^\rho,
\end{align}$$

则

$$\begin{align}
j^\mu_\xi=T^\mu{}_\nu\xi^\nu
\end{align}$$

满足

$$\begin{align}
\partial_\mu j^\mu_\xi = \frac14(\partial\cdot\xi)T^\mu{}_\mu \doteq0.
\end{align}$$

除 Poincaré generators 外，dilatation current 为

$$\begin{align}
D^\mu=x_\nu T^{\mu\nu},
\end{align}$$

special conformal currents 为

$$\begin{align}
K^\mu{}_\rho = \left( 2x_\rho x_\nu-x^2\eta_{\rho\nu} \right)T^{\mu\nu}.
\end{align}$$

对应荷分别是

$$\begin{align}
D=\int_\Sigma d\Sigma_\mu\,D^\mu, \qquad K_\rho=\int_\Sigma d\Sigma_\mu\,K^\mu{}_\rho.
\end{align}$$

质量项通过

$$\begin{align}
T^\mu{}_\mu=m\bar\psi\psi
\end{align}$$

同时破坏 dilatation 和 special conformal symmetry。

## 10. 离散对称性

对实的标量质量项，自由 Dirac 作用量具有标准的 $C$、$P$、$T$ 和 CPT 对称性。它们是离散变换，因此没有相应的连续 Noether charge。

Charge conjugation 将 vector charge 反号：

$$\begin{align}
C Q_V C^{-1}=-Q_V.
\end{align}$$

量子理论中 $T$ 由 antiunitary operator 实现。

## 11. 线性理论的额外结构

上述内容描述的是标准局域、有限维的时空与 internal symmetries，并不是自由 Dirac 方程全部可能线性对称性的分类。

若 $\chi$ 和 $\psi$ 都是同一质量的 Dirac solutions，则 conserved Dirac pairing

$$\begin{align}
(\chi,\psi)_\Sigma = \int_\Sigma d\Sigma_\mu\, \bar\chi\gamma^\mu\psi
\end{align}$$

与 $\Sigma$ 无关。固定一个 solution $\chi$ 后，这给出解空间上的 conserved linear observable；其正负频部分在量子理论中成为 smeared creation/annihilation operators。

更一般地，与 Dirac operator 相容并保持该 pairing 的线性算符给出 solution space 上的 canonical transformations。高阶 differential symmetries 和 solution-dependent affine shifts 不应与标准的 Poincaré、chiral 或 conformal Noether symmetries 混为一谈。

## 12. 边界与渐近对称性的限制

以上假定 Cauchy 数据为 Schwartz wave packets，因而

- $\Omega_\Sigma$ 和列出的荷有限；
- 两个 Cauchy 面之间没有空间无穷远 flux；
- Noether charges 不需要额外 corner term；
- plane waves 只作为 delta-normalized distributions 使用。

固定 Minkowski 背景上的 bulk Dirac 作用量不会自动产生 BMS charge。要讨论 null infinity，必须另行指定：

1. massless Dirac 场在 $\mathscr I^\pm$ 的 falloff；
2. radiative phase space 和 symplectic flux；
3. 允许的 asymptotic transformations；
4. corner counterterms 与 charge integrability；
5. soft sector 是否被纳入 phase space。

在这些数据没有指定以前，不能从本文的 bulk covariant phase space 推出唯一的 BMS 或其他 asymptotic charges。

## Verification status

**Verified:**

- 使用 Mathematica 的显式 Dirac 表象验证了

$$\begin{align}
\{\gamma^\mu,\gamma^\nu\}=2\eta^{\mu\nu}, \qquad (\gamma^5)^2=1, \qquad \{\gamma^5,\gamma^\mu\}=0, \qquad (\gamma^5)^\dagger=\gamma^5.
\end{align}$$

- 对满足 $p^2=m^2$、$p^0=E_{\mathbf p}>0$ 的标准 $u/v$ spinors，验证了 Dirac equations、$u^\dagger u=v^\dagger v=2E_{\mathbf p}$ 以及 completeness relations。
- 验证了模展开的 covariant anticommutator kernel 在等时面上给出

$$\begin{align}
\delta_{\alpha\beta}\delta^3(\mathbf x-\mathbf y).
\end{align}$$

- $\partial_\mu\omega^\mu\doteq0$、$\partial_\mu j_V^\mu\doteq0$、$\partial_\mu j_A^\mu=2im\bar\psi\gamma^5\psi$ 和 $T^\mu{}_\mu\doteq m\bar\psi\psi$ 已由显示的 Dirac 方程直接推导。

**Assumptions:**

- $\eta_{\mu\nu}=\operatorname{diag}(+,-,-,-)$，$\hbar=1$；
- 实常数质量，$m\geq0$；
- 经典场和 mode coefficients 为 Grassmann odd；
- 无背景 gauge field、无 dynamical gravity；
- Cauchy 数据具有 Schwartz falloff；
- 使用本文明确给出的 graded bracket 和 active phase-transformation convention。

**Not verified:**

- 未构造 null-infinity radiative phase space 或任何 BMS/asymptotic charge；
- 未分析存在边界 symplectic flux 时的 counterterm、corner ambiguity 和 charge integrability；
- 未处理背景 gauge field 下的 ABJ anomaly、曲背景 Weyl anomaly；
- 未处理 composite operators 和无界 charge operators 的严格 domain/renormalization 问题；
- 未尝试分类自由 Dirac operator 的全部高阶线性对称性。
