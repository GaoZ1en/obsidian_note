# 新增 scalar/vector exchange 与 derivative quartic 的独立径向极限

本报告补齐 generic \(20'\) Euclidean four-point tree 中新增的三个 finite-radius sectors：scalar exchange（§§1–4）、boundary-anchored vector exchange（§§5–7）与 derivative quartic（§8）。它们在实际 source functional 下具有任意独立插入半径的 strong-\(\mathcal S'\) boundary limits；§3 明确给出从四个独立 sources 到一般 joint Schwartz tests 的 nuclear/Montel 延拓。与既有 potential contact 和 gravitational dressing/source theorem 组合后得到 §9 的完整 generic tree 边界桥。本文的 proof scope 是 Euclidean connected \(N^{-2}\) coefficient。

## 1. Scalar theorem 的准确内容

使用既定 Euclidean BF source functional，令

\[
U^I=\sqrt{2\pi^2/\ell}\,(z/\ell)^{-2}\phi^I,\qquad
g_{IJK}=\frac{4\sqrt2}{N}\operatorname{Tr}(Y^IY^JY^K).
\]

其 cubic action 与 covariance 是

\[
S_{E,3}=\frac1{6\pi^2}\int_0^\infty u\,du\,d^4X\,
g_{IJK}U^IU^JU^K,
\tag{1.1}
\]
\[
C_z(u,r)=
\frac{r^2+u^2+z^2}
{[(r^2+(u-z)^2)(r^2+(u+z)^2)]^{3/2}},
\qquad C_0(u,r)=(r^2+u^2)^{-2}.
\tag{1.2}
\]

径向 source 先 mollify，再取 thin-layer；下面的 \(z_i\) 表示该操作完成后的独立有限插入半径。一个 scalar-exchange pairing 的四点系数是

\[
\begin{aligned}
\mathcal G^{{\rm scal},s}_{\boldsymbol z}(x_i)
=\frac{32S_s}{\pi^4N^2}
\int &u\,du\,d^4X\,v\,dv\,d^4Y\\
&\times C_{z_1}(u,X-x_1)C_{z_2}(u,X-x_2)
C(u,X;v,Y)\\
&\times C_{z_3}(v,Y-x_3)C_{z_4}(v,Y-x_4).
\end{aligned}
\tag{1.3}
\]

这里 \(C(u,X;v,Y)=C_v(u,|X-Y|)\)，而 \(S_s\) 是前文由实际 cubic action 求得的 \(20'\) scalar group sum。所有数值系数来自两个 (1.1) 的 vertices；(1.3) 对应一个 labelled pairing。

**定理。** 对任意固定四个 polarizations，在 logfree/regular BF vacuum 中，(1.3) 定义 \(\mathcal S'(\mathbb R^{16})\) 中的 regular distribution。独立 \(z_i\to0\) 时，

\[
\mathcal G^{{\rm scal},s}_{\boldsymbol z}
\longrightarrow
\frac{16S_s}{\pi^2N^2P_{12}}D_{1122}
\quad\hbox{in the strong topology of }\mathcal S'.
\tag{1.4}
\]

该断言允许重叠 supports、零动量和任意相对径向速度，并对 bounded Schwartz test sets 一致。证明提供共同的绝对 majorant 与连续范数控制；无需为此图增加 quartic source subtraction。与 source functional 无关的 diagonal counterterm 选择仍属于另一种定义。

## 2. 六维 lifting 和 \(L^3\) 控制

记 \(Z=(X,Y)\in\mathbb R^4\times\mathbb R^2\)，\(u=|Y|\)。定义

\[
F_0[j](X,Y)=\int_{\mathbb R^4}
\frac{j(x)\,d^4x}{(|X-x|^2+|Y|^2)^2}.
\tag{2.1}
\]

这是 Schwartz space 到 \(L^3(\mathbb R^6)\) 的连续线性映射。直接 splitting of the convolution 给出一个固定 Schwartz seminorm \(p(j)\) 和常数 \(C\)，使

\[
|F_0[j](X,Y)|\le Cp(j)
\begin{cases}
(1+|X|)^{-4}(1+|\log u|),&0<u\le1,\\
(u^2+|X|^2)^{-2},&u\ge1.
\end{cases}
\tag{2.2}
\]

UV 的六维积分包含 \(u\,du\,(1+|\log u|)^3\)；IR 在做四维 \(X\) 积分后是 \(u^{-7}du\)。两者给出

\[
\|F_0[j]\|_{L^3(\mathbb R^6)}\le C'p(j).
\tag{2.3}
\]

把六维 Newton kernel \(K_6(Z)=|Z|^{-4}\) 绕二维圆作平均，精确得到

\[
F_z[j](X,Y)
=\int_0^{2\pi}\frac{d\theta}{2\pi}
F_0[j](X,Y-z(\cos\theta,\sin\theta)).
\tag{2.4}
\]

实际执行的 50-digit quadrature 在两个一般点验证了 (2.4) 所用的 closed kernel (1.2)。解析恒等式来自
\(\int(d\theta/2\pi)(a-b\cos\theta)^{-2}=a(a^2-b^2)^{-3/2}\)。

由 Minkowski 与 \(L^3\) translation continuity，

\[
\|F_z[j]\|_3\le\|F_0[j]\|_3,\qquad
\|F_z[j]-F_0[j]\|_3\to0.
\tag{2.5}
\]

第二个极限对 bounded subsets of \(\mathcal S\) 一致：Schwartz space 是 Montel，连续映射 (2.1) 将 bounded sets 送入 \(L^3\) 中的 relatively compact sets；平移在这类集合上具有 uniform strong continuity。这个论证控制全部 external momenta，包含 soft region。

## 3. Exchange pairing 的 HLS 闭合

六维正 Laplacian 的 inverse 是

\[
I_2=(-\Delta_6)^{-1},\qquad
I_2(Z)=\frac1{4\pi^3}|Z|^{-4}.
\tag{3.1}
\]

Hardy–Littlewood–Sobolev 的非端点映射是

\[
I_2:L^{3/2}(\mathbb R^6)\longrightarrow L^3(\mathbb R^6).
\tag{3.2}
\]

因此四线性表达式

\[
\mathcal B(F_1,F_2,F_3,F_4)
=\int_{\mathbb R^6}F_1F_2\,I_2(F_3F_4)\,d^6Z
\tag{3.3}
\]

满足

\[
|\mathcal B|\le C\prod_{i=1}^4\|F_i\|_3.
\tag{3.4}
\]

这里也可把每个 \(F_i\) 换成其绝对值。对 SO(2)-invariant fields，将两个二维角积分展开，(1.3) 的 source-smeared integral 恰为 \(\pi\mathcal B\)：两个 radial measures 各贡献 \(1/(2\pi)\)，而内部 \(K_6=4\pi^3I_2\)。故 (3.4) 是同一 finite-source diagram 的 bound。

对四腿逐项 telescoping，用 (2.5) 与 (3.4) 得独立 \(z_i\to0\) 的 convergence，且误差对四个 bounded Schwartz sets 一致。相应四线性 forms 有同一个 product seminorm bound。Schwartz kernel theorem
\[
\mathcal S(\mathbb R^4)^{\widehat\otimes_\pi4}
\cong\mathcal S(\mathbb R^{16})
\]
把它们延拓到任意 joint Schwartz test。简单 tensors 稠密与共同 equicontinuity 先给 weak convergence；joint Schwartz space 的 Montel 性再给 bounded-test uniformity，即 (1.4) 的 strong \(\mathcal S'\) convergence。这个步骤同时补齐 decomposable tests 与一般 test topology 的接口。

## 4. 从实际 inverse 识别 boundary coefficient

BF rescaled radial operator 是

\[
\mathcal D=\partial_u^2+u^{-1}\partial_u+\Delta_X,
\quad -\mathcal DC=2\pi^2u^{-1}\delta(u-v)\delta^{(4)}(X-Y).
\tag{4.1}
\]

令 \(A_i=u/(u^2+|X-x_i|^2)\)，
\[
W_{34}=A_3A_4/P_{34},\qquad
(\Box_{\mathrm{AdS}}+4)W_{34}=-4A_3^2A_4^2.
\tag{4.2}
\]
又有 \((\Box_{\mathrm{AdS}}+4)(u^2f)=u^4\mathcal Df\)，因此

\[
\int v\,dv\,d^4Y\,C(u,X;v,Y)C_0(v,Y-x_3)C_0(v,Y-x_4)
=\frac{\pi^2}{2}\frac{W_{34}(u,X)}{u^2}.
\tag{4.3}
\]

inverse 的唯一性可在六维 \(L^3\) class 内直接表述：差是全 \(\mathbb R^6\) 上的 harmonic \(L^3\) distribution，由 mean-value estimate 等于零。logarithmic boundary source 在六维 lift 上对应轴上的分布源，已由 (4.1) 的完整分布方程固定。

代入 (1.3) 的零半径表达式得到
\[
\frac{16S_s}{\pi^2N^2P_{34}}D_{2211}
=\frac{16S_s}{\pi^2N^2P_{12}}D_{1122}.
\tag{4.4}
\]
二者相等也由 scalar Green function 的对称性直接推出。本文由实际 finite-source pairing 得到该 boundary Witten coefficient。

在 Fourier convention \(\widehat C=2\pi^2I_0(kz_<)K_0(kz_>)\) 中，剥离动量总 delta 后，(1.3) 的 prefactor 是 \(1024\pi^6S_s/N^2\)，径向部分是
\[
\int u\,du\,v\,dv\,
D_{k_1}(z_1,u)D_{k_2}(z_2,u)
D_{|k_1+k_2|}(u,v)
D_{k_3}(z_3,v)D_{k_4}(z_4,v).
\tag{4.5}
\]
它提供另一种直接复算入口；上述 theorem 使用 coordinate \(L^3\) 方法处理其零动量和 UV/IR 一致性。

## 5. Vector：真实有限插入的 constraint contacts

本节先构造 finite wall \(0<u<L\) 上的 source diagram，显示准确 gauge constraint。§7 随后直接在原 half-line vacuum 上完成 global vector exchange 与独立径向极限；这两种边界定义在各自段落中明确区分。

canonical scalar waves 满足 \(E\psi_i=-J_i\)，其中 \(J_i\) 为实际 bulk source。则

\[
j_\mu^{12}=\psi_1\partial_\mu\psi_2-\psi_2\partial_\mu\psi_1,\qquad
\nabla_\mu j^\mu_{12}=J_1\psi_2-J_2\psi_1.
\tag{5.1}
\]

在 Poincaré coordinate 的 lower-index weighted pairing 中，定义
\[
\mathcal K=u^{-2}(J_1\psi_2-J_2\psi_1),
\]
便有
\[
(\partial_u-3/u)j_u+\partial^ij_i=\mathcal K.
\tag{5.2}
\]

有限插入的右端包含位于插入层的 contacts。boundary-to-bulk homogeneous legs 的 current 是 (5.1) 中的特殊情形。

取 boundary-anchored SO(6) transporter \(\mathscr W(0,z)\)，令
\[
\Phi_z^I(x)=\mathscr W(0,z)^I{}_J\,\phi^J(z,x),
\qquad
S_{\rm src}=-\int d^4x\,j_I(x)\,\mathcal N(z/\ell)^{-2}\Phi_z^I(x).
\tag{5.3}
\]
这里 \(D=\partial+g_{\rm eff}A^aT_a\)，\(\mathscr W(0,z)\) 是沿径向从 \(z\) 到 \(0\) 的 parallel transporter，其线性项为 \(+g_{\rm eff}\int_0^zA_u^aT_a\,du\)。在固定 boundary gauge frame 下 (5.3) gauge invariant。径向 gauge \(A_u=0\) 中其值回到原 scalar insertion；对 \(A_u\) 的变分仍给出径向 source contacts。

选择 scalar wall 条件 \(\partial_u\phi(L)=0\)，则 \(j_u(L)=0\)。Wilson variation 给出的 completed current 为

\[
Q_i=j_i,\qquad
Q_u=j_u+u^3\int_u^L s^{-3}\mathcal K(s)\,ds
=u^3\int_u^L s^{-3}\partial^ij_i(s)\,ds.
\tag{5.4}
\]

于是
\[
(\partial_u-3/u)Q_u+\partial^iQ_i=0,\qquad Q_u(L)=0.
\tag{5.5}
\]
这逐项消除 (5.1) 的 interior source contacts，保留 boundary anchor 的 current charge。

## 6. 完整 radial-gauge inverse 与一个 wall 反例

在 \(A_u=0\) 中 quadratic Maxwell operator 及 source pairing 是

\[
\mathcal L_{ij}=-\delta_{ij}\partial_u(u^{-1}\partial_u)
+p^2u^{-1}P^T_{ij},\qquad
\int du\,d^4x\,u^{-3}A_iQ_i.
\tag{6.1}
\]

取 UV fixed frame \(A_i(0)=0\) 和 natural IR condition \(\partial_uA_i(L)=0\)。完整 inverse 是

\[
G_{ij}^L=P^T_{ij}G_T^L+P^L_{ij}G_L,
\tag{6.2}
\]
\[
G_T^L(u,v;p)=uv I_1(pu_<)
\left[K_1(pu_>)+I_1(pu_>)\frac{K_0(pL)}{I_0(pL)}\right],
\qquad G_L(u,v)=u_<^2/2.
\tag{6.3}
\]

两者满足 \(-[u^{-1}\partial_uG]_{v^-}^{v^+}=1\)。vector equation 的 \(u\)-component 是
\[
u^{-1}\partial_u\partial^iA_i=u^{-3}Q_u.
\tag{6.4}
\]
对 tangent equation 取 divergence 后，(5.5) 使 (6.4) 两边相差至多一个常数；\(\partial_uA_i(L)=0\) 与 \(Q_u(L)=0\) 将常数固定为零。因此 (6.2) 确实满足 full constraint，包含 longitudinal part。

boundary conditions 在这里发挥实质作用。若同时令 \(A_i(0)=A_i(L)=0\)，longitudinal Green function 改为
\[
G_L^D(u,v)=u_<^2/2-u^2v^2/(2L^2).
\tag{6.5}
\]
考虑一个 longitudinal test source \(j_i(u)\propto u^4(L-u)\)，抑制共同 Fourier factor \(ip_i\)。相应
\[
Q_u=u^3\int_u^L v(L-v)\,dv.
\]
对 natural Green 解 \(A_N\)，\((A_N'/u)-Q_u/u^3=0\)；对 double-Dirichlet 解 \(A_D=A_N-u^2A_N(L)/L^2\)，精确得到
\[
\frac{A_D'}u-\frac{Q_u}{u^3}=-\frac{L^3}{20}.
\tag{6.6}
\]
这项反例已经由 SymPy 精确执行。它说明 double-Dirichlet radial-gauge representation 需要附加 holonomy/constraint mode；本文选择 (6.3) 使既定 source functional 闭合。

从同一 action 得到的 finite-wall vector exchange 因此是
\[
g_{\rm eff}^2J_s\int\frac{d^4p}{(2\pi)^4}
\int_0^Ldu\,dv\,u^{-3}v^{-3}
j_i^{12}(u,p)G_{ij}^L(u,v;p)j_j^{34}(v,-p),
\tag{6.7}
\]
其中 scalar waves 由 (5.3) 的实际 mollified insertions 生成。外腿 normalization 与 scalar/vector group factor 均由 action 固定。\(P_L\) 与 \(P_T\) 在 \(p=0\) 的合并由 \(G_T^L\to G_L\) 定义；单独 projector 的零点数值无独立物理意义。

## 7. 原 half-line source functional 的完整 vector theorem

### 7.1 同一 observable 与 constraint inverse

现在保留原 global BF scalar legs，在半直线 \(0<u<\infty\) 使用 (5.3) 的 boundary-anchored insertion。对 Schwartz sources，\(u^{-3}j_u\to0\) 在 IR 成立；例如下面的 kernel bounds 给 \(\|j_u\|_2=O(u^{-3})\)。因此实际 Wilson-source variation 精确给出

\[
Q_i=j_i,\qquad
Q_u=j_u+u^3\int_u^\infty s^{-3}\mathcal K(s)\,ds
=u^3\int_u^\infty s^{-3}\partial^ij_i(s)\,ds.
\tag{7.1}
\]

在全部有限插入层的上方 \(\mathcal K=0\)，completion 恢复 original covariant current \(j_u\)。这个性质将 completion 的来源固定为同一 insertion action。

采用 UV fixed gauge frame 和无 \(u^2\) longitudinal homogeneous branch 的 regular Maxwell inverse：

\[
G_{ij}(u,v;p)=P^T_{ij}\,uvI_1(pu_<)K_1(pu_>)
+P^L_{ij}\,\frac{u_<^2}{2}.
\tag{7.2}
\]

IR longitudinal potential 可趋于一个 \(u\)-independent gradient；其 \(F_{ui}\) 衰减。此处固定的是 physical field-strength/finite-action condition，单独坐标 \(A_i\) 的 IR gauge value 由该 inverse 决定。由同一 Gauss integration-constant argument，(7.1)–(7.2) 满足全部 vector equations。

在 \(A_u=0\) 中 (5.3) 的数值就是 canonical scalar insertion，完整 vector exchange 为 (6.7) 的 half-line 形式。Wilson variation 位于 \(Q_u\)，longitudinal inverse 则保证该 gauge representative 仍满足 constraint。

### 7.2 Uniform scalar leg bounds

对 \(0\le z\le Z\)，令 \(F_z[j]\) 为 (2.4)。将六维 kernel 按 \(|X|\le1\) 与其补集分开；其四维 truncated \(L^1\) norm 是 \(O(1+\log^+(1/u))\)，外区 \(L^2\) norm 一致有界。对 \(\partial_XF\)，把导数移到 Schwartz source。结合 Young inequalities 得

\[
\|F_0(u)\|_\infty+\|\partial_XF_0(u)\|_2
\le Cp(j)(1+|\log u|)\qquad(0<u\le1).
\tag{7.3}
\]

circle average 通过精确 Jensen identity

\[
\int\frac{d\theta}{2\pi}
\log|u-ze^{i\theta}|=\log\max(u,z)
\tag{7.4}
\]
把相同 bound 传给所有 \(F_z\)，常数只依赖 \(Z\) 和固定 source seminorm。积分中的 isolated angular logarithm 按其 integrable value 处理；\(u=z\) 时同样有限。

对 \(u\ge2(Z+1)\)，所有 shifted radii 至少为 \(u/2\)，故

\[
\|F_z(u)\|_\infty\le Cp(j)u^{-4},\qquad
\|\partial_XF_z(u)\|_2\le Cp(j)u^{-2}.
\tag{7.5}
\]

canonical scalar leg 为 \(c_Ku^2F_z\)，因此 tangent source density 是

\[
\rho_i^{12}=u^{-3}j_i^{12}
=c_K^2u(F_{z_1}\partial_iF_{z_2}
-F_{z_2}\partial_iF_{z_1}).
\tag{7.6}
\]

对每个 bounded external source set，(7.3)–(7.5) 给

\[
\|\rho^{12}(u)\|_2\le a_Z(u),\qquad
a_Z(u)=
\begin{cases}
C_Zu(1+|\log u|)^2,&0<u\le1,\\
C_Z,&1\le u\le2(Z+1),\\
C_Zu^{-5},&u\ge2(Z+1).
\end{cases}
\tag{7.7}
\]

### 7.3 Maxwell maximum principle 与 dominated convergence

Sturm–Liouville maximum principle 对
\(-\partial_u(u^{-1}\partial_u)+p^2/u\) 给出

\[
0\le G_T(u,v;p)\le G_0(u,v)=u_<^2/2\le uv/2.
\tag{7.8}
\]

也可先在 (6.3) 的 natural wall 上比较 \(p^2/u\ge0\)，再取 \(L\to\infty\)；相同 bound 对全部 \(p,L\) 成立。Euclidean \(P_T,P_L\) 是 orthogonal projectors，所以固定 \(u,v\) 的 Fourier multiplier \(G_{ij}\) 在 \(L^2_X\) 上的 norm 至多 \(G_0(u,v)\)。

于是完整 vector pairing 满足

\[
|\langle\rho^{12},G\rho^{34}\rangle|
\le\int du\,dv\,G_0(u,v)a_Z(u)a_Z(v)
\le\frac12\left(\int_0^\infty u\,a_Z(u)\,du\right)^2<\infty.
\tag{7.9}
\]

对于每个固定 \(u>0\)，\(F_z\to F_0\) in \(L^\infty_X\)，\(\partial_XF_z\to\partial_XF_0\) in \(L^2_X\)，故 \(\rho^{12}_{z_1,z_2}(u)\to\rho^{12}_{0,0}(u)\) in \(L^2_X\)。用 (7.9) 的共同 integrable majorant 得任意独立 radii 的 vector convergence。与 §3 相同的 nuclear/Montel extension 给 **strong \(\mathcal S'(\mathbb R^{16})\)** convergence。

boundary value 是 **half_bps_generic_tree.md** (4.7) 的 scalar/vector source-response pairing：其 explicit regular solution满足相同 full constraint、fixed UV frame 与 IR branch 条件。这里识别来自一个完整 half-line inverse，包含 (7.2) 的 longitudinal term。

此外，可以在已经 completed 的 tangent-source functional 上加有界 cutoff \(\beta_B(u)\to1\)，用其 adjoint completion (7.1)，并在 support 外取 natural vector wall。式 (7.9) 同时控制这些 regulators 的 removal 与 \(z_i\to0\) 的任意共同路径。该 regulator 作用于 vector source pairing；它与 §5 的“全部 scalar fields 也置于有限 wall”是两个明确定义的近似。

## 8. Derivative quartic 的独立径向极限

令 \(\mathcal U=\sum_i\epsilon_iY_iF_{z_i}[j_i]\)。canonical field 是 \(\Phi=c_Ku^2\mathcal U\)。logarithmic matrix coordinates 的 commutator 精确满足

\[
[\Phi,\partial_u\Phi]=c_K^2u^4[\mathcal U,\partial_u\mathcal U],
\qquad
[\Phi,\partial_i\Phi]=c_K^2u^4[\mathcal U,\partial_i\mathcal U].
\tag{8.1}
\]

因此 (2.4) 的 derivative quartic 在单位 \(U\) 变量中是

\[
S_{E,4}^{\rm der}
=-\frac1{6\pi^2N^2}\int_0^\infty u^5du\,d^4X\,
\operatorname{Tr}[\mathcal U,\partial_\mu\mathcal U]
[\mathcal U,\partial_\mu\mathcal U].
\tag{8.2}
\]

径向导数中来自 \(d(u^2)\) 的项在 commutator 中消失，保留 (8.1) 是 UV estimate 的关键。

### 8.1 Uniform radial derivative bound

对 \(D_k(u,z)=I_0(k\min(u,z))K_0(k\max(u,z))\)，Bessel Wronskian

\[
x[I_0(x)K_1(x)+I_1(x)K_0(x)]=1
\tag{8.3}
\]
以及 \(I_0,I_1\) 递增、\(K_0,K_1\) 递减，给出两个区域的一致界

\[
|u\partial_uD_k(u,z)|\le1.
\tag{8.4}
\]

例如 \(u\le z\) 时为 \(kuI_1(ku)K_0(kz)\le kuI_1(ku)K_0(ku)\le1\)；另一侧同理使用 \(kuI_0(kz)K_1(ku)\)。在 \(u=z\) 的两侧值分别满足此界。\(D_k\) 自身连续，第一径向导数的有限 jump 与 source equation 一致。

因为 \(\widehat F_z=2\pi^2D_k\widehat j\)，Plancherel 给

\[
\|u\partial_uF_z\|_2\le2\pi^2\|j\|_2,
\tag{8.5}
\]
而 Fourier \(L^1\) 给相应 \(L^\infty\) bound。对于 \(u\ge2(Z+1)\)，在 circle-average kernel 中直接微分还给

\[
\|u\partial_uF_z\|_2\le Cp(j)u^{-2},\qquad
\|u\partial_uF_z\|_\infty\le Cp(j)u^{-4}.
\tag{8.6}
\]

同一区域还可直接对 \(X\) kernel 微分，得到较 (7.5) 更强的 \(\|\partial_XF_z\|_2\le Cp(j)u^{-3}\)：四维 \(L^2\) norm 的缩放是 \(u^{-5}u^2=u^{-3}\)。这个强化界用于下面的 derivative-contact IR estimate。

### 8.2 Contact integral 与强分布收敛

对四 labelled legs，Hölder \(L^\infty\times L^\infty\times L^2\times L^2\) 结合 (7.3)–(7.5)、(8.5)–(8.6) 将 (8.2) 的绝对 source-smeared integrand 控制为

\[
C_Z
\begin{cases}
u^3(1+|\log u|)^2+u^5(1+|\log u|)^4,&u\le1,\\
1,&1\le u\le2(Z+1),\\
u^{-9},&u\ge2(Z+1).
\end{cases}
\tag{8.7}
\]

对固定 \(u>0\)，当所有 \(z_i<u/2\) 时 Bessel formulas 及 kernel differentiation 给 \(\partial_uF_{z_i}\to\partial_uF_0\) in \(L^2\)，并对 bounded Schwartz sets 一致。于是 dominated convergence 与相同 nuclear extension 给出 derivative quartic 的独立径向 strong-\(\mathcal S'\) 极限。其 boundary contact 就是前文从同一 action 得到的 \(M_{\rm der}^{(0)}\)。

potential quartic 的径向权重和旧 neutral contact theorem 相同，改变 polarization 仅改变有限维 tensor coefficient。graviton pairing 对 species 的依赖为 \(D_s,D_t,D_u\)，其 dressing/source theorem 已由既有报告在相同 BF scalar function class 中建立。

## 9. 当前完成的范围与证据

以上得到三个新的 complete Euclidean limits：scalar exchange、boundary-anchored vector exchange、derivative quartic。它们均允许 independent radii 与 overlapping Schwartz tests，并使用实际 finite-source legs。与既有 potential contact/graviton theorem 组合时，四点 connected \(N^{-2}\) 阶按 scalar/vector/gravity internal species 分解；source dressings 在各自线性 gauge sector 中取上述指定定义。

这一组合给出 **完整 generic \(20'\) Euclidean tree 的 finite-radius → boundary 桥**。其 boundary coefficient再由前文的六张量 position identity 识别。新的 Lorentzian scalar/vector null strata、nonlinear all-orders dressing 与 higher-order string finite-radius constructions 是后续独立定理的对象。

**radial_response_checks.py / radial_response_results.json** 保存实际 SymPy/mpmath 检查，含 (5.1)、(6.4)–(6.6) 的 exact algebra、Bessel jumps、natural-wall endpoint 和统一 Bessel bounds 的 numerical checks。HLS、maximum principle、Wronskian inequality 与 Montel steps 的证据类型是本文展开的 analytic proof。

## Executable verification links

- [radial_response_checks.py](checks/dictionary_extensions/radial_response_checks.py) and [actual output](checks/dictionary_extensions/radial_response_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
