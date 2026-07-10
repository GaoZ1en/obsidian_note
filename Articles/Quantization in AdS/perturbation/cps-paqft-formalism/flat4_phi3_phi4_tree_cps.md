# 4d flat 中 \(\phi^3/\phi^4\) 理论的 tree solution 与 CPS 检验

日期：2026-07-09

## 0. 直接结论

本文是 fixed-background scalar 的 classical retarded-tree benchmark，不是 quantum loop pipeline。实际 loop 计算使用 `../cps canonical quantization to loop corrections.md`；本文量子化公式取 $\hbar=1$，并把边界/初始条件视为 solution map 的理论输入。

可以，而且这是比 2606.24442 toy model 更接近场论目标的检验。

在 4d Minkowski 的实标量

$$\begin{align}
S=\int d^4x\, \left[ -\frac12\partial_\mu\phi\,\partial^\mu\phi -\frac12m^2\phi^2 -\frac{g_3}{3!}\phi^3 -\frac{g_4}{4!}\phi^4 \right]
\end{align}$$

中，diagrammatic perturbative solution 真正变成了分叉树：

- \(\phi^3\) Lagrangian 给 EOM 中的 binary rooted vertex；
- \(\phi^4\) Lagrangian 给 EOM 中的 ternary rooted vertex；
- 内部线是选定 Green function，Cauchy problem 中自然取 retarded \(G_R\)；
- 叶子是自由解 \(\phi_0\)；
- 若不做量子 loop expansion 或 sewing，只有 trees。

这个模型对 CPS 的核心检验结果是：

$$\begin{align}
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0
\end{align}$$

在固定初始 Cauchy 数据、用 retarded Green function 且高阶修正初始数据为零的构造中全阶成立。原因很简单但重要：\(\phi^3/\phi^4\) 相互作用不含导数，所以 symplectic potential 没有 explicit coupling correction；再加上 full CPS symplectic form 对 Cauchy slice 守恒，初始面上又等于自由 symplectic form。

这和 2606.24442 的 velocity-dependent perturbation 不同：2606 的 \(\Theta\) 自身含 \(\lambda\) 修正，必须靠低能分支归一化产生非平凡抵消；普通 \(\phi^3/\phi^4\) 的抵消来自 Moller map/initial-data map 的辛性。

## 1. 约定

取 Minkowski signature \(\eta=(-,+,+,+)\)，定义

$$\begin{align}
K:=\Box-m^2.
\end{align}$$

EOM 为

$$\begin{align}
K\phi-\frac{g_3}{2}\phi^2-\frac{g_4}{3!}\phi^3=0.
\end{align}$$

令 retarded Green function 满足

$$\begin{align}
K_xG_R(x-y)=\delta^{(4)}(x-y),
\end{align}$$

并取 retarded support。于是积分方程为

$$\begin{align}
\phi(x)=\phi_0(x) +\int d^4y\,G_R(x-y) \left[ \frac{g_3}{2}\phi(y)^2 +\frac{g_4}{3!}\phi(y)^3 \right], \qquad K\phi_0=0.
\end{align}$$

若你使用相反的 \(K\) 或 action sign，所有 vertex 的整体号会变；下面的结构不变。

## 2. 双耦合递归

写

$$\begin{align}
\phi=\sum_{a,b\ge0}g_3^a g_4^b\,\phi_{a,b}, \qquad \phi_{0,0}=\phi_0.
\end{align}$$

规定负指标项为零。代回 EOM 得

$$\begin{align}
K\phi_{a,b} = \frac12
\sum_{\substack{a_1+a_2=a-1\\
b_1+b_2=b}} \phi_{a_1,b_1}\phi_{a_2,b_2} + \frac1{3!}
\sum_{\substack{a_1+a_2+a_3=a\\
b_1+b_2+b_3=b-1}} \phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\end{align}$$

Retarded particular solution 为

$$\begin{align}
\phi_{a,b}(x) =\int d^4y\,G_R(x-y)\,S_{a,b}(y),
\end{align}$$

其中 \(S_{a,b}\) 是上式右边。固定初始时刻 \(t_0\) 时，我们取

$$\begin{align}
\phi_{a,b}|_{\Sigma_{t_0}}=0,\qquad \partial_t\phi_{a,b}|_{\Sigma_{t_0}}=0, \qquad (a,b)\ne(0,0).
\end{align}$$

这个条件就是 homogeneous ambiguity 的选择；它把 interacting solution space 的坐标固定为自由初始数据 \((\phi_0,\dot\phi_0)|_{\Sigma_{t_0}}\)。

### 2.1 前几阶

$$\begin{align}
\phi_{1,0}(x) =\frac12\int d^4y\,G_R(x-y)\phi_0(y)^2.
\end{align}$$

$$\begin{align}
\phi_{0,1}(x) =\frac1{3!}\int d^4y\,G_R(x-y)\phi_0(y)^3.
\end{align}$$

$$\begin{align}
K\phi_{2,0}=\phi_0\phi_{1,0}, \qquad \phi_{2,0}=G_R(\phi_0\phi_{1,0}).
\end{align}$$

$$\begin{align}
K\phi_{1,1} =\phi_0\phi_{0,1} +\frac12\phi_0^2\phi_{1,0}.
\end{align}$$

$$\begin{align}
K\phi_{0,2} =\frac12\phi_0^2\phi_{0,1}.
\end{align}$$

图上看：

- \(g_3\) 一阶是一棵 binary rooted tree；
- \(g_4\) 一阶是一棵 ternary rooted tree；
- \(g_3^2\) 是两个 binary vertices 组成的树；
- \(g_3g_4\) 有两类树：root 是 binary 且下方含一个 ternary，或 root 是 ternary 且下方含一个 binary。

若一棵 rooted tree 有 \(V_3\) 个 binary vertices 和 \(V_4\) 个 ternary vertices，则叶子数是

$$\begin{align}
L=1+V_3+2V_4.
\end{align}$$

这正是 off-shell rooted current 的 external free legs 数；若再把 root amputate/on-shell 化，得到普通 tree amplitude 的外腿数

$$\begin{align}
n=L+1=2+V_3+2V_4.
\end{align}$$

## 3. momentum-space / Berends-Giele 形式

自由解可写为

$$\begin{align}
\phi_0(x)= \int\frac{d^3\mathbf k}{(2\pi)^3\sqrt{2E_{\mathbf k}}} \left[ a(\mathbf k)e^{-ik\cdot x} +a^*(\mathbf k)e^{ik\cdot x} \right], \qquad E_{\mathbf k}=\sqrt{\mathbf k^2+m^2}.
\end{align}$$

Fourier 空间中

$$\begin{align}
\widetilde{\phi}_{a,b}(p) =\widetilde G_R(p)\,\widetilde S_{a,b}(p),
\end{align}$$

其中

$$\begin{align}
\widetilde S_{a,b}(p) = \frac12
\sum_{\substack{a_1+a_2=a-1\\
b_1+b_2=b}} \int\frac{d^4q}{(2\pi)^4} \widetilde\phi_{a_1,b_1}(q) \widetilde\phi_{a_2,b_2}(p-q)
\end{align}$$

$$\begin{align}
\quad+ \frac1{3!} \sum_{\substack{a_1+a_2+a_3=a\\
b_1+b_2+b_3=b-1}} \int\frac{d^4q\,d^4r}{(2\pi)^8} \widetilde\phi_{a_1,b_1}(q) \widetilde\phi_{a_2,b_2}(r) \widetilde\phi_{a_3,b_3}(p-q-r).
\end{align}$$

若改用 labeled on-shell leaves \(i,j,k,\ldots\)，可定义 off-shell current

$$\begin{align}
J(P)=\widetilde G(P) \left[ \frac{g_3}{2}\sum_{P=A\sqcup B}J(A)J(B) +\frac{g_4}{3!}\sum_{P=A\sqcup B\sqcup C}J(A)J(B)J(C) \right],
\end{align}$$

其中 \(P\) 是一组外部 labels，\(k_P=\sum_{i\in P}k_i\)，\(\widetilde G(P)=[K(k_P)]^{-1}\) 加上所需 prescription。若使用 ordered words 而不是 unordered partitions，\(\frac12,\frac1{3!}\) 的组合因子要相应调整。这就是 \(\phi^3/\phi^4\) 的 Berends-Giele 递归版本。

## 4. CPS symplectic form

变分 Lagrangian：

$$\begin{align}
\delta L =E(\phi)\delta\phi\,d^4x+\partial_\mu\Theta^\mu\,d^4x,
\end{align}$$

其中

$$\begin{align}
\Theta^\mu=-\partial^\mu\phi\,\delta\phi.
\end{align}$$

注意 \(\Theta^\mu\) 与 \(g_3,g_4\) 无关，因为相互作用无导数。Symplectic current 为

$$\begin{align}
\omega^\mu(\delta_1\phi,\delta_2\phi) =\delta_1\phi\,\partial^\mu\delta_2\phi -\delta_2\phi\,\partial^\mu\delta_1\phi.
\end{align}$$

在常时面 \(\Sigma_t\) 上，取 canonical convention

$$\begin{align}
\Omega =\int_{\Sigma_t}d^3x\, \delta\dot\phi\wedge\delta\phi.
\end{align}$$

用微扰解拉回：

$$\begin{align}
\Omega_{\rm eff} =\int_{\Sigma_t}d^3x\, \delta\dot\phi(\phi_0)\wedge\delta\phi(\phi_0).
\end{align}$$

形式展开看起来有无穷项：

$$\begin{align}
\Omega_{\rm eff} =\Omega_0+ \sum_{(a,b)\ne(0,0)}g_3^ag_4^b\,\Omega_{a,b}.
\end{align}$$

但在 retarded 初始数据坐标中，全阶有

$$\begin{align}
\Omega_{\rm eff}=\Omega_0.
\end{align}$$

证明：

1. full symplectic current 对任意两个 linearized solutions 守恒：

$$\begin{align}
\partial_\mu\omega^\mu=0
\end{align}$$

   on shell。
2. 因此 \(\Omega_{\rm eff}\) 与 Cauchy slice 无关，只要没有 spatial infinity flux。
3. 在初始面 \(\Sigma_{t_0}\)，所有 \((a,b)\ne(0,0)\) 修正和其时间导数都取零。
4. 所以

$$\begin{align}
\Omega_{\rm eff}|_{\Sigma_{t_0}} =\int_{\Sigma_{t_0}}d^3x\, \delta\dot\phi_0\wedge\delta\phi_0 =\Omega_0.
\end{align}$$

这就是相互作用 Moller map 的辛性在 classical field theory 中的表现。

## 5. 模式归一化

用上面的自由模式归一化，有

$$\begin{align}
\Omega_0 =i\int\frac{d^3\mathbf k}{(2\pi)^3} \delta a^*(\mathbf k)\wedge\delta a(\mathbf k)
\end{align}$$

或等价地按相反 wedge convention 写成 \(-i\,\delta a\wedge\delta a^*\)。量子化时取

$$\begin{align}
[\hat a(\mathbf k),\hat a^\dagger(\mathbf k')] =(2\pi)^3\delta^{(3)}(\mathbf k-\mathbf k').
\end{align}$$

在 retarded 初始坐标中无需像 2606 toy model 那样做非平凡 Darboux 修正：

$$\begin{align}
a_{\rm interacting}=a_{\rm free}
\end{align}$$

已经是 canonical 坐标。非平凡物理不在 \(\Omega\) 的变形里，而在 Hamiltonian 和 in/out map 里。

## 6. Hamiltonian 和 charge

Hamiltonian 为

$$\begin{align}
H=\int d^3x\, \left[ \frac12\dot\phi^2 +\frac12(\nabla\phi)^2 +\frac12m^2\phi^2 +\frac{g_3}{3!}\phi^3 +\frac{g_4}{4!}\phi^4 \right].
\end{align}$$

在任意时间切片上，把 \(\phi=\sum g_3^ag_4^b\phi_{a,b}\) 代入会产生无穷多项；但由于 \(H\) 守恒，若在初始面采用 retarded 初始数据坐标，则

$$\begin{align}
H =H_0[\phi_0,\dot\phi_0] +g_3H_3[\phi_0] +g_4H_4[\phi_0],
\end{align}$$

其中

$$\begin{align}
H_3=\int_{\Sigma_{t_0}}d^3x\,\frac1{3!}\phi_0^3, \qquad H_4=\int_{\Sigma_{t_0}}d^3x\,\frac1{4!}\phi_0^4.
\end{align}$$

在后续切片上出现的 higher-order tree terms 必须总和抵消到这个初始值。这是一个可以逐阶检验递归解正确性的强约束。

空间平移和 Lorentz charge 类似。Noether stress tensor 可取

$$\begin{align}
T^{\mu\nu} =\partial^\mu\phi\,\partial^\nu\phi -\eta^{\mu\nu} \left[ \frac12\partial_\rho\phi\,\partial^\rho\phi +\frac12m^2\phi^2 +\frac{g_3}{3!}\phi^3 +\frac{g_4}{4!}\phi^4 \right]
\end{align}$$

在符号约定不同的教材中整体写法会变，但 canonical charges 是标准的：

$$\begin{align}
P_i=\int d^3x\,\dot\phi\,\partial_i\phi,
\end{align}$$

$$\begin{align}
H=P^0
\end{align}$$

如上式。CPS 定义为

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega, \qquad X_\xi\phi=\mathcal L_\xi\phi=\xi^\mu\partial_\mu\phi.
\end{align}$$

对 Poincare Killing vector \(\xi\)，若边界项消失，则

$$\begin{align}
P_\xi=\int_\Sigma d\Sigma_\mu\,T^{\mu\nu}\xi_\nu
\end{align}$$

可积且守恒。这里没有类似引力中 \(X_\xi\) 的 \(\kappa^{-1}\) inhomogeneous term，因为背景固定且标量在 Poincare 下线性变换。

## 7. 与 tree amplitudes 的关系

如果 \(\phi_0\) 选成有限个 on-shell plane waves 的和，\(\phi_{a,b}\) 的 Fourier 系数就是 one-off-shell tree current。把 root leg amputate，并把总动量也放到 on-shell，就得到普通 tree-level scattering amplitude。

例如纯 \(\phi^3\) 的 off-shell current 满足

$$\begin{align}
J(P)=\widetilde G(P)\frac{g_3}{2}
\sum_{P=A\sqcup B}J(A)J(B),
\end{align}$$

纯 \(\phi^4\) 满足

$$\begin{align}
J(P)=\widetilde G(P)\frac{g_4}{3!}
\sum_{P=A\sqcup B\sqcup C}J(A)J(B)J(C).
\end{align}$$

混合理论则同时含两类顶点。这个递归是“classical EOM generates tree diagrams”的最直接形式。

## 8. 和 2606.24442 toy model 的对比

两者都符合同一个大 formalism：

$$\begin{align}
\text{solution map }p_g:\mathcal S_0\to\mathcal S_g, \qquad \Omega_{\rm eff}=p_g^*\Omega_g.
\end{align}$$

但机制不同。

### 2606.24442

- perturbation 改变 kinetic structure；
- \(\Theta\) 本身有 \(\lambda\) correction；
- full theory 有 non-analytic fast mode；
- 低能 branch 的 homogeneous normalization 非平凡；
- \(p_\lambda^*\Omega_\lambda=\Omega_0\) 是一个需要检验的抵消。

### 4d \(\phi^3/\phi^4\)

- perturbation 是 potential；
- \(\Theta\) 没有 explicit coupling correction；
- full theory 没有新增自由度；
- retarded initial-data map 自动是 symplectomorphism；
- \(p_g^*\Omega_g=\Omega_0\) 是由 Cauchy problem 和 symplectic-current conservation 保证的。

所以 \(\phi^3/\phi^4\) 是 tree diagrammatics 的好检验；2606 toy model 是 kinetic/symplectic normalization 的好检验。两者合起来覆盖了“树图解构造”和“CPS pullback 量子化”的两个关键侧面。

## 9. 限制和需要小心的点

1. **Plane waves 是分布**。严格处理应使用 wave packets 或有限体积盒归一化。
2. **Massless theory 有 IR 问题**。4d massless retarded Green function 支持在 light cone；长程尾、软辐射和边界 flux 需要额外处理。
3. **\(\phi^3\) potential 不稳定**。作为局部微扰/形式场论没问题；作为全局 Hamiltonian 系统不稳定。
4. **Resonance/secular growth**。某些外部数据可让源项投到自由 mass shell 上，retarded solution 出现长时间增长或辐射；这时需要 scattering boundary condition、wave packet 或重整参数。
5. **Quantum loop 不在这里**。这里得到的是 classical tree-level solution。量子一圈及以上不是由这个 classical retarded Picard 展开自动产生的。
6. **若加入 derivative interactions**，\(\Theta\) 会有 coupling correction，\(\Omega_{\rm eff}=\Omega_0\) 不再自动成立，必须按 2606 的方式重新拉回并归一化。

## 10. 最短公式

Tree solution:

$$\begin{align}
\phi=\phi_0+G_R\left(\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3\right).
\end{align}$$

Coefficient recursion:

$$\begin{align}
K\phi_{a,b} = \frac12\sum\phi_{a_1,b_1}\phi_{a_2,b_2} +\frac1{3!}\sum\phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\end{align}$$

CPS symplectic form:

$$\begin{align}
\Omega_{\rm eff} =\int_{\Sigma}d^3x\,\delta\dot\phi\wedge\delta\phi =\Omega_0
\end{align}$$

under retarded initial-data normalization.

Poincare charge:

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega, \qquad P_\xi=\int_\Sigma d\Sigma_\mu\,T^{\mu\nu}\xi_\nu.
\end{align}$$
