# n=3 mixed-sign relative Fredholm determinant：独立 RH / spin / CFT 识别

## 结论、证据层级与独立性

对本文下述精确定义的实线算子，结论为

\[
\boxed{
 D_{-+}(x)=(1-x)^{-2/9}\,
 \sqrt{\frac{1+2\cos\!\left(\frac43\arcsin\sqrt x\right)}3},
 \qquad 0<x<1 .
}
\tag{R}
\]

平方根取在 \(x\to0\) 时趋于 \(+1\) 的分支。等价地，

\[
 \frac{D_{-+}}{D_{++}}
 =\frac{\Theta[\kappa_0\otimes\eta](0\mid\Omega)}
        {\Theta[\kappa_0](0\mid\Omega)}.
\tag{T}
\]

这里的 spin bundle \(\kappa_0\) 和二阶平坦线丛 \(\eta\) 是从真实 jump 的 sewing 得出，而不是从一个候选 theta characteristic 反向定义。证明使用：

1. 本文直接证明的算子—圆周 Hardy graph determinant 恒等式；
2. CGL 的一般多圆周微分定理，并在本题中直接计算端点残数；
3. Korotkin 的 quasi-permutation tau 因子定理及其高分歧说明；
4. 标准 genus-two hyperelliptic Thomae 公式。

这是一条解析证明路线，非数值拟合。CAS 只验证有限维代数及闭式的局部展开，不承担无限维 determinant / RH 识别。

**独立性：**首次推导前未读取本轮主文或 reviews；本文也未以那些文件的候选公式为输入。后续保存阶段收到父代理关于文献编号、一般 channel 假设及 lattice/CFT 约定的提醒，已明确区分本独立推导和这些外部输入。未修改主文。当前委派深度不允许再开独立子代理；关键算子桥梁已交父代理安排另一位 reviewer 独立检查。

**物理归一化边界：**这里的数学对象是给定的一个 Fredholm determinant，结果含 theta 一次幂。它可解释为相应手征 complex-fermion sewing determinant；并不自动等于另行定义的完整非手征 Dirac 模平方，也不能据此额外复制一个 species。父代理另行报告 lattice \(W_1\) 恰收敛到同一 \(D\)，该 lattice 结论不在本笔记独立证明范围内，也未被用于证明 (R)。

## 1. 对象与符号

设 \(a<b<c<d\)，\(I_1=(a,b)\)、\(I_2=(c,d)\)，

\[
 (H_{ij}f)(x)=\operatorname{PV}\int_{I_j}
       \frac{f(y)}{\pi(y-x)}\,dy,
 \qquad x\in I_i.
\]

只有 \(i=j\) 时需要 PV。内部分量为 \(\mathbb C^3\)。取

\[
 A_t=\begin{pmatrix}0&1&\sqrt2t\\1&0&0\\\sqrt2t&0&0\end{pmatrix},
 \quad t_1=-1,
 \quad t_2=+1,
\]

\[
 L_i=I+A_{t_i}\otimes H_{ii},\qquad
 X_{ij}=A_{t_j}\otimes H_{ij},
\]

\[
 D_{-+}=\det_F\!igl(I-L_1^{-1}X_{12}L_2^{-1}X_{21}\bigr).
\tag{1.1}
\]

在内部分量先写的记法下，全局算子为 \(I+H M_A\)：矩阵 \(A\) 乘在输入点。不能未经说明把它改为 \(I+M_AH\)。单区间上两者因常矩阵而相同。\(A_t\) Hermitian、\(H_{ii}\) skew-adjoint，故 \(L_i\) 逆有界，且 \(\|L_i^{-1}\|\leq1\)。cross 核在两闭区间乘积上光滑，给出 trace-class 算子。

\[
 x=\frac{(b-a)(d-c)}{(c-a)(d-b)}\in(0,1),
 \qquad D_{++}=(1-x)^{-2/9}
\tag{1.2}
\]

是题设给定的 same-sign 归一化。

## 2. 从真实 singular-integral equation 推出 jump

定义

\[
 Cg(z)=\frac1{2\pi i}\int_{I_1\cup I_2}\frac{g(y)}{y-z}\,dy.
\]

割线上侧/下侧为 \(+/-\)，Plemelj 关系为

\[
 C_+-C_-=I,\qquad C_++C_-=-iH.
\]

对 \((I+HM_A)f=h\) 令 \(F=C(Af)\)，则

\[
 F_+-F_-=Af,\qquad f+i(F_++F_-)=h.
\]

消去 \(f\) 得

\[
 (I+iA)F_+=(I-iA)F_-+Ah.
\tag{2.1}
\]

因此左作用 jump 是

\[
 J_t=(I+iA_t)^{-1}(I-iA_t)
     =I-\tfrac12A_t^2-\tfrac i2A_t
\]

\[
 =\begin{pmatrix}
 -\frac12&-\frac i2&-\frac{it}{\sqrt2}\\
 -\frac i2&\frac12&-\frac t{\sqrt2}\\
 -\frac{it}{\sqrt2}&-\frac t{\sqrt2}&0
 \end{pmatrix}.
\tag{2.2}
\]

\(A_t\) 的 eigenvalues 为 \(0,\pm\sqrt3\)，\(J_t\) 的为 \(1,e^{\pm2\pi i/3}\)。取 principal exponents

\[
 B_t=\pi^{-1}\arctan A_t=\frac{A_t}{3\sqrt3},
 \qquad J_t=e^{-2\pi iB_t},
 \quad\operatorname{spec}B_t=\{-1/3,0,1/3\}.
\tag{2.3}
\]

局部差值为 \(1/3,2/3\)，不是整数；且最大绝对值 \(1/3<1/2\)，与所用 \(L^2\) 端点类兼容。

## 3. 同一个固定基底，而不是各区间分别 diagonalize

取

\[
 U=\begin{pmatrix}
 0&-i/\sqrt2&i/\sqrt2\\
 0&-1/\sqrt2&-1/\sqrt2\\
 1&0&0
 \end{pmatrix},\quad
 P=\begin{pmatrix}0&0&1\\1&0&0\\0&1&0\end{pmatrix},\quad
 S=\operatorname{diag}(-1,1,1).
\]

直接有

\[
 U^\dagger U=I,\qquad U^\dagger J_+U=P,
 \qquad U^\dagger J_-U=SPS.
\tag{3.1}
\]

可构造性地理解为 \(U=[e_3,J_+e_3,J_+^2e_3]\)。在这个**共同** sheet basis 中，第二割线的三条 seam 全为正；第一割线沿

\[
 1\longrightarrow2,\quad 2\longrightarrow3,\quad3\longrightarrow1
\]

的 signs 分别为

\[
 (-,+,-).
\tag{3.2}
\]

所以两割线的 underlying permutation 都是同一个三循环，只有第一割线带二阶平坦扭曲。局部三条 seam 的 sign 乘积为 \(+1\)；分歧阶数与局部指数没有改变。

## 4. cover、reference spin 与 mixed spin 的内禀定义

对应 cover 为

\[
 \pi:\Sigma\to\mathbb{CP}^1,
 \qquad w^3=\frac{(z-a)(z-c)}{(z-b)(z-d)}.
\tag{4.1}
\]

sheet 循环方向反取只改变标号，给出同构 cover。Riemann–Hurwitz 给 \(g=2\)。四个 ramification points 记作 \(p_a,p_b,p_c,p_d\)，各 ramification index 为 3。

reference spin 来自平面 half-form \(\sqrt{dz}\)：

\[
 \kappa_0=\pi^*\mathcal O_{\mathbb{CP}^1}(-1)
 \otimes\mathcal O_\Sigma(p_a+p_b+p_c+p_d).
\tag{4.2}
\]

确实 \(\kappa_0^2=K_\Sigma\)。若四端点都有限，则 \(dz\) 在每个 ramification point 零阶为 2，在三个 infinity 点极阶为 2，因此 (4.2) 就是 \(\sqrt{dz}\) 的 divisor 说明。

令 \(\eta\) 是按 (3.2) 第一割线 sewing signs、第二割线全正定义的 flat \(\mathbb Z_2\) line bundle。局部乘积为正保证它延伸过分歧点。mixed spin 是

\[
 \boxed{\kappa=\kappa_0\otimes\eta.}
\tag{4.3}
\]

这已经指定了 spin，无需猜 theta characteristic。它满足：

- 所有绕第一割线的 vanishing \(a\)-cycles 上，\(\eta\) holonomy 为 \(+1\)；
- 跨两割线连接 sheet 1 与 sheet 2、sheet 1 与 sheet 3 的两个独立桥循环上，holonomy 为 \(-1\)。

在以这些桥循环为 \(b\)、选其对偶 \(a\) 并令 reference spin 标签为零的 marking 中，相对 characteristic 可记为

\[
 \begin{bmatrix}0&0\\1/2&1/2\end{bmatrix}.
\]

如果采用邻接 sheet 的桥循环，标签会变为另一非零 \(\varepsilon=0\) characteristic。这里不宣称未经运输就等于主文任一四位标签。父代理后续报告主文 convention 为 \(\varepsilon=Lr/2,\delta=L^{-T}s/2\)，且本 sector 属于 \(\varepsilon=0,\delta\ne0\) 轨道；本笔记未重新读取或独立复核该 canonical-map 文件。

## 5. 真实 Fredholm 到圆周 Hardy graph：完全的算子恒等式

### 5.1 因子化与 Sylvester identity

取互不相交、逆时针的光滑圆周 \(\gamma_i\)，分别包围 \(\overline I_i\)。令 \(\mathscr H_i^+\) 是圆内 Hardy 空间，\(\mathscr H_i^-\) 是圆外、在 \(\infty\) 消失的 Hardy 空间。它们的投影为 \(\Pi_i^\pm\)。定义

\[
 (R_if)(z)=2iC_i(A_if)(z)
 =\frac1\pi\int_{I_i}\frac{A_if(y)}{y-z}\,dy
 \in\mathscr H_i^-,
\]

\[
 E_i:\mathscr H_i^+\longrightarrow L^2(I_i,\mathbb C^3),
 \qquad
 V_{ij}:\mathscr H_j^-\longrightarrow\mathscr H_i^+
\]

分别为内圆到区间 restriction、跨圆周 analytic restriction。由于轮廓与区间、不同轮廓间均有正距离，这些需要的核光滑，trace-class 操作合法。精确地

\[
 X_{ij}=E_iV_{ij}R_j.
\]

令

\[
 Q_i=-R_iL_i^{-1}E_i:\mathscr H_i^+\to\mathscr H_i^-.
\tag{5.1}
\]

从原始 (1.1)，用 Sylvester determinant identity 得

\[
 \boxed{
 D=\det_{\mathscr H_1^-}
 (I-Q_1V_{12}Q_2V_{21}).
 }
\tag{5.2}
\]

这里没有先定义或正则化一个不 trace-class 的全局 diagonal determinant。

### 5.2 直接识别局部 graph map

写 \(I_i=(a_i,b_i)\)，单割线 normalized RHP 解为

\[
 Y_i(z)=\left(\frac{z-a_i}{z-b_i}\right)^{B_i},
 \qquad Y_{i,+}=J_iY_{i,-},\qquad Y_i(\infty)=I.
\tag{5.3}
\]

log 分支取在无穷远为零。对任意 \(h\in\mathscr H_i^+\) 置

\[
 f=-L_i^{-1}E_i h,\qquad F=R_if,\qquad W=h+F.
\]

由 Plemelj 和 \(L_if=-h\)，

\[
 W_+-W_-=2iA_if=-iA_i(W_++W_-),
\]

故 \(W_+=J_iW_-\)。于是 \(W=Y_iG\)，其中 \(G\) 在圆内 holomorphic。去除 jump 后无端点 pole：\(L^2\) Cauchy transform 的端点增长与 \(Y_i^{-1}\) 的 \(1/3\) 次增长相乘仍小于一阶 pole；单值 Laurent 展开排除不可去奇点。

在圆周上，\(F\in\mathscr H_i^-\)，所以

\[
 \Pi_i^+Y_iG=h.
\]

\(Y_i,Y_i^{-1}\) 在圆外解析且无穷远归一，因此相应 Toeplitz operators 满足

\[
 (\Pi_i^+Y_i|_{\mathscr H_i^+})^{-1}
 =\Pi_i^+Y_i^{-1}|_{\mathscr H_i^+}.
\]

得到

\[
 \boxed{
 Q_i=(Y_i\Pi_i^+Y_i^{-1}-\Pi_i^+)|_{\mathscr H_i^+}.
 }
\tag{5.4}
\]

其积分核以 \(\frac{dw}{2\pi i}\) 为测度时是

\[
 \frac{Y_i(z)Y_i(w)^{-1}-I}{w-z}.
\tag{5.5}
\]

所以 (5.2) 的确是局部 Cauchy polarizations 的 sewing determinant；不是因为称它为 free fermion 才规定其等于某个 theta 函数。

## 6. 与 CGL actual operators 的逐项匹配及直接 JMU 残数

### 6.1 不直接套用 CGL §3.3 的 generic channel 结论

本节采用 CGL arXiv:1712.08546v1 的 Definition 3.1 和 Theorem 3.4，**不直接使用** §3.3 的式 (3.10)。该节的 linear-pants 展示另假设 intermediate-monodromy eigenvalues pairwise distinct modulo integers；本题每个完整割线的总 monodromy 为 \(I\)，不满足那个 generic-channel 假设。

令两圆内 face 为正、共同外部 face 为负。在 CGL 的 direct-factorization notation 中，精确选择

\[
 \Psi_{i,+}=I,\qquad \Psi_{i,-}=Y_i,
 \qquad \mathcal J_i=Y_i^{-1}.
\tag{6.1}
\]

注意 \(\mathcal J_i\) 是**圆周 jump**，不是割线的常矩阵 \(J_i\)。

CGL Definition 3.1 的 operators 此时成为

\[
 \mathsf A_{+-}=V=\begin{pmatrix}0&V_{12}\\V_{21}&0\end{pmatrix},
 \qquad
 \mathsf A_{-+}=Q=\operatorname{diag}(Q_1,Q_2).
\tag{6.2}
\]

因为共同外部 face 产生 cross restrictions，两个单独内 face 各产生 (5.4)。因此其 determinant 是

\[
 \det\begin{pmatrix}I&V\\Q&I\end{pmatrix}
 =\det(I-QV)
 =\det(I-Q_1V_{12}Q_2V_{21})=D.
\tag{6.3}
\]

这也明确了没有额外平方或 determinant multiplicity。

若 \(Y\) 是全局割线左-jump RHP 解，则 CGL dual solution 为

\[
 \bar\Psi=Y\quad\text{在共同外部},
 \qquad
 \bar\Psi=Y_i^{-1}Y\quad\text{在第 }i\text{ 个圆内}.
\tag{6.4}
\]

内部 ratio 去除割线 jump，且
\(\bar\Psi_+\bar\Psi_-^{-1}=Y_i^{-1}=\mathcal J_i\)。

### 6.2 Theorem 3.4 的假设和本题适用域

所需条件是：不相交 smooth closed curves；direct factors 在相应圆内/圆外 holomorphic invertible 且在 collar 延拓；参数依赖光滑；dual RHP 在所考察参数邻域可解且光滑。前两项由 (5.3) 和远离割线的圆周满足。先取 \(x\) 足够小，cross maps 小且原 Fredholm 可逆，从 Neumann series 得到后两项。最终恒等式再由 analytic continuation 延伸，不先假设所有 \(x\) 上可逆。

Theorem 3.4，式 (3.6)，在 (6.1)–(6.4) 下简化为

\[
 \partial\log D
 =-\sum_i\frac1{2\pi i}\oint_{\gamma_i}
 \operatorname{tr}\left[
  (\partial Y_iY_i^{-1})(\partial_zY\,Y^{-1})
 \right]dz.
\tag{6.5}
\]

\(\partial_zY\,Y^{-1}\) 本身跨割线按共轭变换；(6.5) 中 trace 与相应 \(B_i\) 的组合是单值，可在圆内作残数计算。

### 6.3 本题直接残数证明

定义单值 Fuchsian connection

\[
 \mathcal A(z)=Y^{-1}\partial_zY,
 \qquad
 H_e=\frac12\operatorname{res}_{z=e}
       \operatorname{tr}\mathcal A(z)^2.
\]

明确的 convention map 为

\[
 Z=Y^T,\qquad Z_+=Z_-J_i^T,\qquad
 Z'Z^{-1}=(Y^{-1}Y')^T.
\]

因此上述 \(\mathcal A\) 经转置就是通常 right-monodromy fundamental matrix 的 rational connection，trace Hamiltonian 不变。另一方面，(6.5) 中的 \(Y'Y^{-1}\) 是 CGL Theorem 3.4 在本 direct/dual factorization 下原本出现的量，不是将其宣称为 rational connection。它只有与 \(B_i\) 相乘取 trace 后，才利用 \([B_i,J_i]=0\) 成为圆内单值被积函数；不能静默交换这两个 connection。以 \(e=a_i\) 为例，

\[
 \partial_{a_i}Y_iY_i^{-1}=-\frac{B_i}{z-a_i}.
\]

在 \(a_i\) 附近写

\[
 Y=(z-a_i)^{B_i}G_a(z),\qquad G_a(a_i)\in GL(3),
\]

则

\[
 H_{a_i}=\operatorname{tr}\bigl(B_iG_a'G_a^{-1}\bigr)(a_i).
\]

(6.5) 的 \(\gamma_i\) 同时包含 \(a_i,b_i\)。其 \(a_i\) 残数为 \(H_{a_i}\)；在 \(b_i\) 附近指数为 \(-B_i\)，第二个残数为

\[
 -\frac{\operatorname{tr}B_i^2}{b_i-a_i}.
\]

而单割线的 Hamiltonian 正是

\[
 H_{a_i}^{\rm loc}
 =-\frac{\operatorname{tr}B_i^2}{a_i-b_i}
 =\frac{\operatorname{tr}B_i^2}{b_i-a_i}.
\]

故

\[
 \partial_{a_i}\log D=H_{a_i}-H_{a_i}^{\rm loc}.
\]

\(b_i\) 完全同理，得到

\[
 \boxed{
 d\log D=d\log\tau_{\rm global}
          -d\log\tau_1-d\log\tau_2.
 }
\tag{6.6}
\]

不能只保留 moving endpoint 的残数；另一个端点的残数恰是 local normalization subtraction。这也给出单割线 sewing determinant 等于 1 的检验。

mixed/same-sign 的 \(Y_i\) 只相差常数共轭，\(\operatorname{tr}B_i^2=2/9\)，两个 local tau 完全相同。因此

\[
 \frac{D_{-+}}{D_{++}}=C\frac{\tau_\kappa}{\tau_{\kappa_0}},
\tag{6.7}
\]

其中 \(C\) 与端点无关。第 8 节固定它。

## 7. Szegő kernel、tau 的 spin 依赖与文献边界

在 \(\Theta[\kappa](0|\Omega)\ne0\) 的邻域，令

\[
 S_\kappa(p,q)=
 \frac{\Theta[\kappa](\int_q^p\omega\mid\Omega)}
      {\Theta[\kappa](0\mid\Omega)E(p,q)}.
\]

将它按 \(\pi\) 推前，normalized matrix 为（左右 convention 可整体转置）

\[
 \Psi_{jk}(z,z_0)=S_\kappa(p_j(z),p_k(z_0))
                 \frac{z-z_0}{\sqrt{dz\,dz_0}}.
\tag{7.1}
\]

它的特征是：

- \(z=z_0\) 时归一化为 \(I\)，来自 Szegő kernel 的 diagonal pole；
- continuation 逐条给出第 3–4 节指定的 signed permutation；
- 在 \(z-e=u^3\) 处，\(\sqrt{dz}\propto u\sqrt{du}\)，pushforward local exponents 为 \(-1/3,0,1/3\)；
- 无其他 singularity，并在 theta 非零时 invertible。

因此由 normalized RHP 唯一性，这不是另一个任意 CFT kernel，而是上述 operator RHP 的解。

Korotkin **arXiv:math-ph/0106009v2，Theorem 5.11，PDF/正文 p.20，式 (5.60)**，在其所有 \(r_m^{(j)}=0\) 的 specialization 给

\[
 \tau_\kappa=F(\Sigma,\pi)\Theta[\kappa](0|\Omega),
\tag{7.2}
\]

\(F\) 与 spin characteristic 无关。这里本笔记的 \(\Omega\) 是 period matrix；Korotkin 原文用 \(\mathbf B\) 表 period matrix、用 \(\Omega\) 表由 \(r_m^{(j)}\) 产生的 theta argument；后者在本题为零，不能混淆。

原文 §5.1 通过 Szegő/Fay identity 把 \(\tfrac12\operatorname{tr}(\Psi'\Psi^{-1})^2\) 分成 spin-independent Bergman 项和 theta Hessian 项，再用 heat equation 与 deformation formula 得到 (5.59)–(5.60)。这比只知道 theta divisor 更强，足以在 (6.7) 中消去 \(F\)。

**高分歧：**本题局部 degree 为 3，不是 simple double ramification。原文 Remark 4.10（PDF/正文 p.17）明确 extension of RH construction to arbitrary ramification；Remark 5.13（p.21）说明 projective-connection formula 在 higher ramification 时改为适当导数。我们只用 spin-independent factor 消去后的 theta ratio，不使用 simple-branch 公式 \(\partial\log F=R/24\) 的未经修改版本。相关 Fay trace identity 本身不要求局部 degree 2。

**不使用的论断：**原文关于 absolute Cauchy–Riemann/Laplacian determinant 的一般几何 factor 解释含有进一步的 holomorphic-factorization 讨论。本证明不把这些讨论升级为已证明的 absolute zeta-determinant normalization；所需 normalization 已由第 5–6 节真实 relative determinant 和下一节退化极限固定。

## 8. sewing normalization 与解析延拓

由 (6.7)–(7.2)，

\[
 \frac{D_{-+}}{D_{++}}
 =C\frac{\Theta[\kappa](0|\Omega)}{\Theta[\kappa_0](0|\Omega)}.
\]

在 \(x\to0\) 的分离/缩短区间退化中，cross product 的 trace norm 趋于零，因此两个 Fredholm determinant 都趋于 1。\(\eta\) 在所有 vanishing \(a\)-cycles 上 trivial；在该 degeneration-adapted marking 中，两 spin 的 \(\varepsilon=0\)，theta 常数均以 1 起始，所以比值也趋于 1。故 \(C=1\)。

最后代入题设 \(D_{++}=(1-x)^{-2/9}\)。先在小 \(x\) 可逆邻域证明恒等式即可；映射区间到固定 Hilbert 空间后，cross 核与 determinant 对 separated endpoints 解析，故恒等式可延拓到 \(0<x<1\)。第 9 节显式 ratio 在该区间严格正，并给出非零性，而不是把全区间非零性循环用作前提。

## 9. genus-two Thomae 公式直接给闭式

Möbius 归一化四端点为 \((0,x,1,\infty)\)，cover 可写成

\[
 w^3=\frac{z(z-1)}{z-x}.
\]

置 \(v=2z-1-w^3\)，得到 hyperelliptic model

\[
 v^2=w^6+2(1-2x)w^3+1.
\tag{9.1}
\]

令 \(\theta=\arcsin\sqrt x\)、\(\omega=e^{2\pi i/3}\)，

\[
 r=e^{i(\pi+2\theta)/3},\qquad
 s=e^{i(\pi-2\theta)/3}.
\]

六个 hyperelliptic branch points 为

\[
 A_k=r\omega^k,\qquad B_k=s\omega^k,\qquad k=0,1,2.
\]

在 \(x\to0\) 时 \(A_k,B_k\) 成对汇合。

\(\kappa_0\) 由 (4.2) 可知是 deck \(\mathbb Z_3\)-invariant。genus 2 的 odd spin 对应六个 Weierstrass points，而这些点组成两个长度 3 的 orbit，故没有 invariant odd spin。even spin 对应 unordered \(3+3\) partitions；唯一 invariant partition 是

\[
 \{A_0,A_1,A_2\}\mid\{B_0,B_1,B_2\}.
\tag{9.2}
\]

因此 (9.2) 对应 \(\kappa_0\)。在三个 vanishing pairs 上各选一端的四种 unordered partitions 正好是 \(\varepsilon=0\) 的四个 spin；非平凡 \(\eta\) 对应从 (9.2) 交换某一 \(A_k\leftrightarrow B_k\) 得到的三个 spin 之一。三者由 deck \(\mathbb Z_3\) 互换，theta 比值等值。

标准 Thomae 公式给 theta 常数四次幂的 Vandermonde 比值。交换 \(k=0\) 时，公共因子消去后为

\[
 \left(\frac{\Theta[\kappa]}{\Theta[\kappa_0]}\right)^4
 =\frac{(s-r\omega)(s-r\omega^2)
         (r-s\omega)(r-s\omega^2)}{9r^2s^2}
\]

\[
 =\frac{(r^2+rs+s^2)^2}{9r^2s^2}
 =\left[\frac{1+2\cos(4\theta/3)}3\right]^2.
\tag{9.3}
\]

采用 \(x\to0\) 归一化并沿实区间连续延拓，

\[
 \frac{\Theta[\kappa]}{\Theta[\kappa_0]}
 =\sqrt{\frac{1+2\cos(4\theta/3)}3}.
\]

从而得到 (R)。本节使用标准 Thomae 定理；本轮没有重新查阅 Fay/Mumford 原书或从零重证该定理，不能把它列为已独立全文核验的文献。

## 10. 独立检查、极限与未覆盖 sectors

### 10.1 operator 小交比系数

对 scalar \(\lambda\in\mathbb R\)，\(\beta=\arctan\lambda/\pi\)，单区间方程的 constant-source 解为

\[
 (I+\lambda H)^{-1}1
 =\cos(\pi\beta)\left(\frac{x-a}{b-x}\right)^\beta.
\]

Beta integral 给

\[
 \int_I(I+\lambda H)^{-1}1
 =|I|\frac{\arctan\lambda}{\lambda},
\tag{10.1}
\]

\(\lambda=0\) 取连续极限。结合

\[
 \arctan A_t=\frac\pi{3\sqrt3}A_t,
 \qquad\operatorname{tr}(A_-A_+)=-2,
\]

cross determinant 的独立 leading expansion 为

\[
 D_{-+}=1-\frac{2x}{27}+O(x^2).
\tag{10.2}
\]

闭式给

\[
 R(x)=1-\frac{8x}{27}-\frac{8x^2}{81}+O(x^3),
\]

\[
 D_{-+}=1-\frac{2x}{27}-\frac{7x^2}{243}+O(x^3).
\]

其中只把一次项称作独立 operator 检验；二次项是闭式自身的 CAS 展开，未在此重复做二阶 Fredholm 计算。

### 10.2 碰合极限

\[
 R(x)\sim\frac2{3^{3/4}}(1-x)^{1/4},
 \qquad
 D_{-+}(x)\sim\frac2{3^{3/4}}(1-x)^{1/36}.
\tag{10.3}
\]

融合 signed-permutation matrix 的 eigenvalues 为 \((1,-1,-1)\)，局部 exponent 可取 \((0,1/2,-1/2)\)，给 \(h=1/4\)，与 \(1/4-2/9=1/36\) 相符。

### 10.3 CAS 与执行记录

可复现脚本：[ising_n3_rh_checks.wl](<Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_rh_checks.wl>)。

检查范围为 unitary basis、Cayley polynomial、共同基底中两 jump、三循环、mixed/same traces、fusion spectrum、Thomae 交叉乘积代数式、闭式展开与碰合系数。脚本不生成 JSON。第一次扩展检查的 fusion characteristic-polynomial 比较因 Wolfram `CharacteristicPolynomial` 使用 \(\det(M-qI)\) 的符号约定而失败；诊断显示 matrix 正是 \(\operatorname{diag}(-1,1,-1)\)，随后把检查改为显式 \(\det(qI-M)\)。这是约定修正，不是更改物理 spectrum。修正后实际重跑脚本，12 项 exact checks 全为 `True`，shell exit code 为 0；小交比展开和碰合系数也如上输出。

### 10.4 范围

本文只识别题设 \(t_1=-1,t_2=+1\) 的 determinant。不能由本结果或纯态互补关系擅自消去另两个 lattice traces \(\operatorname{Tr}PGPS^2\) 与 \(\operatorname{Tr}GSPSP\)；本笔记未计算它们。它们的 lattice notation 由父代理提供，不参与本证明。

如拒绝引用 CGL Theorem 3.4，则仍需自行证明其 determinant differentiation theorem；但原算子到其 actual operators 的匹配已经在 (5.1)–(6.4) 完成，generic pants-decomposition gap 已由 (6.5)–(6.6) 的直接残数消除。还需按主文既定 cycles 把 (4.3) 翻译成其具体 characteristic 标签；这不影响本题三个非零 \(\varepsilon=0\) spin 的等值 theta ratio。

## 11. 文献版本、定位与实际读取状态

### CGL

M. Cafasso, P. Gavrylenko, O. Lisovyy, *Tau functions as Widom constants*, **arXiv:1712.08546v1**, 22 Dec 2017。

- [版本入口](<https://arxiv.org/abs/1712.08546v1>)；[实际读取的 HTML](<https://arxiv.org/html/1712.08546>) 当次页面标明 v1。
- 已完整读取与本题相关的 §3.1 setting、Definition 3.1 / (3.1) 及 actual operators，§3.2 Lemma 3.3 和 Theorem 3.4 / (3.6) 的 statement 与 proof，以及 §3.3 至 (3.10)。并非只读 abstract 或搜索摘要。
- **未声称通读整篇。未以 PDF 页面逐式核对该文。**因此本文主要按 section/theorem/equation 定位，不冒写 CGL PDF 页码。
- §3.3 关于 intermediate spectra 的额外假设已经检查，并明确不满足；本证明只用一般 Theorem 3.4 加本题直接 residue。

### Korotkin

D. Korotkin, *Matrix Riemann–Hilbert problems related to branched coverings of* \(\mathbb{CP}^1\), **arXiv:math-ph/0106009v2**, 3 Aug 2001。

- [版本入口](<https://arxiv.org/abs/math-ph/0106009v2>)；[v2 PDF](<https://arxiv.org/pdf/math-ph/0106009v2>)；[HTML](<https://arxiv.org/html/math-ph/0106009>)。
- 实际读过 HTML 中 (4.42)–(4.50)、相关 RH theorem/proof、§5.1 (5.51)–(5.63) 的推导与 tau factor theorem。
- 保存前另外下载了**明确 v2 PDF**，以 `pdfinfo` 确认标题中的版本；实际渲染并查看 PDF pp.17,20,21，三页正文印刷页码与 PDF 页码一致。
- p.17：Remark **4.8** / (4.48) 是 \(r=0\) Szegő specialization；Theorem **4.9** 是 Schlesinger statement；Remark **4.10** 是 arbitrary ramification extension。
- p.20：Theorem **5.11** / (5.60) 是本文所需 tau 因子定理；Lemma **5.12** / (5.62) 给 simple-branch projective-connection 公式。
- p.21：Remark **5.13** 给 higher-ramification 修改；Theorem **5.15** 是 **Malgrange divisor statement，不是 tau 因子定理**。
- **重要编号更正：**该文 experimental HTML 自动转换把 proof 等条目计入后出现了 `Theorem 5..15`、`Remark 5..18` 等不同标签。此前独立消息曾沿用这些 HTML 标签；本文件统一改用 actual v2 PDF 的真实编号，不把错号沿用为正式引用。
- **未声称通读整篇、未逐页核对全部公式。**以上实际读取的 theorem/proof 区段和三张 PDF 页面是本笔记的核查范围。

### 其他

先前浏览过 [Korotkin arXiv:math-ph/0103023v1](<https://arxiv.org/html/math-ph/0103023>) 的相关 RH/Szegő 章节作为背景；正式 tau-factor 引用采用上述 0106009v2，不混用两个版本的 theorem 编号。标准 Thomae 公式作为已知数学定理使用；本轮没有查原始书籍，不将未读来源标为已核实。
