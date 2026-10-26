# 完整 \(20'\) 四点树：同一 IIB 作用量的六张量匹配

## 1. 结果、版本与范围

本文以 commit **aa128cb903e0f3750a16a69487d64013d38667b1** 的 BF source functional、单位边界算符及 Newton 常数为基准，将原来四个相同 neutral polarization 的计算扩展到任意四个 \(20'\) 分量。新的计算包括 retained \(20'\) scalar、十五个 \(SO(6)\) vector、graviton 的三个通道，以及同一 logarithmic scalar coordinate 中的 potential 和 derivative quartic。完整六张量 amplitude 与 strong-coupling SYM stress-multiplet 底分量四点一致。

这里的“完整”限定为 **四个 \(20'\) scalar 外腿、genus-zero、two-derivative、connected \(N^{-2}\) 系数**。本文给出 boundary source diagrams、完整 Euclidean position identity 和其 regular-distribution extension。任意独立 finite radii 的 scalar/vector exchange 与 derivative-quartic 极限另见 **half_bps_generic_radial_limits.md**：该文从实际 source functional 构造 boundary-anchored vector insertion，并给出共同的强 Schwartz estimates。两份证明的职责分别是 boundary tensor identification 与 finite-radius source convergence。

输入是固定 BF logfree vacuum 与二次 boundary completion、正则 Poincaré IR、distributional fixed boundary metric/gauge source，以及既定的 conformal source measure。外加 diagonal source counterterms、edge data 和 alternative operator dressings 分别形成不同的定义。

retained action 的使用依赖既有报告采用的 nonlinear consistent IIB reduction。这里所有二十分量都参加计算；“完整 \(20'\) 四点”指 stress multiplet 的二十个 scalar 底分量，其他 supermultiplet 外腿需要各自的 supersymmetric Ward reconstruction。高维 protected CFT operators 的 OPE content 由 nonlinear KK map/extremal data 编码，当前 field basis 的交换计数遵循这项 consistent truncation。

## 2. 单一作用量及规范化

令 \(\ell=1\) 作中间计算；恢复长度时 \(g_{\mathrm{SO(6)}}=1/\ell\)、\(\kappa^2=4\pi^2\ell^3/N^2\)。对称无迹矩阵 \(\Phi=\phi^IY^I\) 满足 \(\operatorname{Tr}Y^IY^J=\delta^{IJ}\)，取

\[
T=e^{2\kappa\Phi},\qquad
V(T)=\frac{1}{2\ell^2}
\left[2\operatorname{Tr}T^2-(\operatorname{Tr}T)^2\right].
\tag{2.1}
\]

[Cvetič–Lü–Pope–Sadrzadeh–Tran, hep-th/0003103v2](https://arxiv.org/pdf/hep-th/0003103v2)，PDF p.5 / printed p.4, eqs.(8)–(9)，给出

\[
\frac1{2\kappa^2}\left[R*1
-\frac14T^{-1}_{ij}*DT_{jk}\wedge T^{-1}_{kl}DT_{li}
-\frac14T^{-1}_{ik}T^{-1}_{jl}*F^{ij}\wedge F^{kl}-V*1
+\mathrm{CS}\right].
\tag{2.2}
\]

此页已在本轮下载、渲染并视觉核验。以 \(t=2\kappa\Phi\) 展开，Euclidean scalar vertices 为

\[
\lambda_{IJK}=8\kappa\operatorname{Tr}(Y^IY^JY^K),
\tag{2.3}
\]
\[
\mathcal L_{E,4}
=-\frac{\kappa^2}{6}\operatorname{Tr}([\Phi,\nabla_\mu\Phi]
[\Phi,\nabla^\mu\Phi])
+\kappa^2\left[\frac{10}{3}\operatorname{Tr}\Phi^4
-(\operatorname{Tr}\Phi^2)^2\right].
\tag{2.4}
\]

程序独立展开 \(e^{-t}de^t\) 的矩阵乘积，得到 cubic kinetic coefficient 零与 quartic coefficient \(-\operatorname{Tr}[t,dt]^2/12\)；用六个受 \(\sum_i t_i=0\) 约束的本征值直接展开 potential，得到全部二、三、四阶系数。这些步骤使用 (2.2)，并且发生在任何 Ward matching 之前。

为固定 vector 因子，取 \(-\operatorname{Tr}Q_aQ_b=\delta_{ab}\)。注意 differential form 恒等式 \(F\wedge *F=F_{\mu\nu}F^{\mu\nu}*1/2\)。因此 (2.2) 的二次 vector 密度是 \(-\sum_a(F^a)^2/(16\kappa^2)\)，canonical 变换及 scalar coupling 为

\[
A_{\rm matrix}=2\kappa A_{\rm can}^aQ_a,\qquad
g_{\rm eff}=2\kappa/\ell,\qquad
\mathcal L_{E,A\phi\phi}
=g_{\rm eff}A^a_\mu\operatorname{Tr}
(\partial^\mu\Phi[Q_a,\Phi]).
\tag{2.5}
\]

这一步固定后面的 vector residue。\(A^2\Phi^2\)、\(\Phi F^2\) 和 Chern–Simons 项在无外部 vector 的四 scalar 树阶具有不同的外腿/顶点计数；当前阶的 vector 交换由两个 (2.5) 构成。

canonical 边界外腿是

\[
K_i=c_K A_i^2,\qquad A_i=\frac{z}{z^2+|x-x_i|^2},
\qquad c_K=\frac1{\sqrt2\pi}\quad(\ell=1).
\tag{2.6}
\]

Gaussian insertion functional 固定 exchange 为正的 source–inverse–source 配对；contact 是 \(-S_{E,4}\) 的四次源系数。全部符号沿用这一个规则。

## 3. 六张量与三种 exchanged representations

对任意四个实或复对称无迹矩阵定义

\[
\begin{aligned}
D_s&=\operatorname{Tr}(Y_1Y_2)\operatorname{Tr}(Y_3Y_4),&
D_t&=\operatorname{Tr}(Y_1Y_4)\operatorname{Tr}(Y_2Y_3),&
D_u&=\operatorname{Tr}(Y_1Y_3)\operatorname{Tr}(Y_2Y_4),\\
C_1&=\operatorname{Tr}(Y_1Y_2Y_3Y_4),&
C_2&=\operatorname{Tr}(Y_1Y_2Y_4Y_3),&
C_3&=\operatorname{Tr}(Y_1Y_3Y_2Y_4).
\end{aligned}
\tag{3.1}
\]

scalar completeness 与 antisymmetric completeness 给出下表。

| Channel 与 orientation | \(S_a\) | \(J_a\) |
|---|---|---|
| \(s=(12\mid34)\) | \((C_1+C_2)/2-D_s/6\) | \(2(C_2-C_1)\) |
| \(t=(14\mid32)\) | \((C_1+C_3)/2-D_t/6\) | \(2(C_3-C_1)\) |
| \(u=(13\mid24)\) | \((C_2+C_3)/2-D_u/6\) | \(2(C_2-C_3)\) |

例如 \(S_s=\sum_I\operatorname{Tr}(Y_1Y_2Y^I)
\operatorname{Tr}(Y_3Y_4Y^I)\)，而

\[
J_s=\sum_a\operatorname{Tr}(Y_1[Q_a,Y_2])
\operatorname{Tr}(Y_3[Q_a,Y_4])
=-\operatorname{Tr}[Y_1,Y_2][Y_3,Y_4].
\tag{3.2}
\]

程序构造实际二十个 orthonormal STF matrices 和十五个 antisymmetric matrices，对三个配对逐项求和验证。通道顺序是 oriented 的；改变一个 current 的顺序同时改变其 group factor 与 spacetime current。

null-vector generating convention \(Y_i=t_it_i^T,\ t_i^2=0\) 下，除去 \((t_1\cdot t_2)^2(t_3\cdot t_4)^2\)，映射为

\[
1\mapsto D_s,\quad \sigma\mapsto C_2,\quad\tau\mapsto C_1,\quad
\sigma^2\mapsto D_u,\quad\sigma\tau\mapsto C_3,\quad\tau^2\mapsto D_t.
\tag{3.3}
\]

复 null rank-one 矩阵张成整个 complexified \(20'\)：一个对称矩阵若与全部 \(t_it_j\)、\(t^2=0\) 正交，其二次多项式必正比于 \(t^2\)，因而其无迹部分为零。因此 (3.3) 确定任意矩阵 polarization 的四线性 tensor。

## 4. 从 radial equations 独立解出 scalar 与 vector response

沿用旧 Einstein 解中的几何量

\[
a_i=d\log A_i,\quad p=a_1+a_2,\quad q=a_1-a_2,\quad
\chi=P_{12}A_1A_2,\quad W=A_1A_2/P_{12},\quad F=A_1^2A_2^2.
\tag{4.1}
\]

满足 \(\nabla W=Wp,\ p^2=4(1-\chi),q^2=4\chi,p\cdot q=0\)，

\[
\nabla p=-2g+(pp+qq)/2,\qquad \nabla q=(pq+qp)/2,\qquad
\nabla\cdot p=-8,\quad \nabla\cdot q=0,\quad W\chi=F.
\tag{4.2}
\]

### 4.1 Scalar

\[
(\Box+4)W=W(p^2+\nabla\cdot p+4)=-4F.
\tag{4.3}
\]

故在 \(EG=-\delta_g\) 约定中 \(G*F=W/4\)。配上两个 cubic vertices 得

\[
G_{{\rm scal},s}=\frac{16S_s}{\pi^2N^2P_{12}}D_{1122},\qquad
N^2M_{{\rm scal},s}=-\frac{16S_s}{s-2}.
\tag{4.4}
\]

此处 \(D_{\Delta_1\cdots\Delta_4}=\int dz\,d^4x\,z^{-5}\prod_iA_i^{\Delta_i}\)。

### 4.2 Vector

strip \(c_K^2\) 后的 current 是 \(j_{12}=A_1^2dA_2^2-A_2^2dA_1^2=-2Fq\)。因为 \(dq=0\)，\(d(Wq)=Wp\wedge q\)。用 (4.2) 收缩得

\[
\nabla_\nu F^\nu{}_\mu[Wq]
=W\{p^2+\nabla\cdot p+p^2/2-(-2+q^2/2)\}q_\mu
=-8Fq_\mu.
\tag{4.5}
\]

于是 Euclidean Hessian \(L=-\nabla F\) 满足

\[
L^{-1}j_{12}=-Wq/4.
\tag{4.6}
\]

scalar expansion 的 cross vertex 是 \(-g_{\rm eff}j_{12}^aA\cdot j_{12}\)，故 Gaussian exchange 为 \(+g_{\rm eff}^2J_s\langle j_{34},L^{-1}j_{12}\rangle\)。代入可得

\[
G_{{\rm vec},s}=\frac{4J_s}{\pi^2N^2P_{12}}
[-P_{13}D_{2132}+P_{14}D_{2123}
+P_{23}D_{1232}-P_{24}D_{1223}],
\tag{4.7}
\]
\[
N^2M_{{\rm vec},s}=\frac{2J_s(t-u)}{s-2}.
\tag{4.8}
\]

独立 coordinate 检查在五维 Poincaré metric 上计算
\[
(\nabla F[V])_\mu=z^3\partial_\nu
[z^{-1}(\partial_\nu V_\mu-\partial_\mu V_\nu)]
\]
的全部五个分量，在一般有理点精确得到 (4.5)。这项计算从坐标微分出发，独立于 Mellin 与 Ward polynomial。

### 4.3 Boundary admissibility 与 absolute pairing

在 Euclidean separated anchors，\(0\le\chi\le1\)，因此

\[
|Wq/4|_g\le W/2,\quad |j_{34}|_g\le4F_{34},\quad
|(Wq/4)\cdot j_{34}|\le2WF_{34}.
\tag{4.9}
\]

右端就是 scalar exchange 的 positive majorant。**half_bps_generic_radial_limits.md** 的六维 HLS 证明控制其绝对 Schwartz smearing，包括重叠 external supports。vector response 的 tangential source 为零：用 \(|q_i|\le2/z\) 与
\[
\int |j_1(x_1)j_2(x_2)|
\frac{dx_1dx_2}{|x-x_1|^2|x-x_2|^2|x_1-x_2|^2}<\infty
\]
的局部尺度度数 \(6<8\)，得到 smeared \(Wq_i=O(z)\) 的 distributional bound。IR 衰减由同一 explicit response 给出。正则零源 Maxwell sector 中的 Dirichlet uniqueness 将该解识别为 boundary sourced Green response。

## 5. 所有通道的作用量结果

记 ordinary \(s+t+u=8\)，并令 \(v_s=t-u,v_t=s-u,v_u=t-s\)。旧 Einstein 计算对任意 species 的推广乘对应 \(D_a\)，因为两条 scalar 腿的 metric vertex 是 \(\delta_{IJ}\)。因此

\[
\boxed{
N^2M_{\rm tree}=\sum_{a=s,t,u}
\left[-\frac{16S_a}{a-2}+\frac{2J_av_a}{a-2}
+\frac{D_a}{2}\left(a-6-\frac{v_a^2+4/3}{a-2}\right)\right]
+M_{\rm pot}^{(0)}+M_{\rm der}^{(0)}.}
\tag{5.1}
\]

这里

\[
M_{\rm pot}^{(0)}=4(D_s+D_t+D_u)-\frac{40}{3}(C_1+C_2+C_3),
\tag{5.2}
\]
\[
M_{\rm der}^{(0)}=\frac23[J_s(t-u)+J_t(s-u)+J_u(t-s)].
\tag{5.3}
\]

(5.3) 的独立 derivation 对 (2.4) 排列四个 labelled fields。每个 \((i,j,k,l)\in S_4\) 贡献

\[
\frac1{3N^2}\operatorname{Tr}[Y_i,Y_j][Y_k,Y_l](1-\delta_{jl}),
\qquad\delta_{12}=\delta_{34}=(4-s)/2
\tag{5.4}
\]

及其两个 crossed definitions。来自 \(\nabla K_j\cdot\nabla K_l\) 的 \(D_{2222}\) 和 \(P_{jl}D_{\ldots3\ldots3\ldots}\) 的 Mellin prefactors 分别是 \(\pi^2/2\) 与 \(\pi^2/4\)，从而 derivative insertion 的净因子是 \(2\pi^2(1-\delta_{jl})\)。程序实际枚举全部 \(24\) 个排列得到 (5.3)。接触多项式由 action 固定。

## 6. 与完整 Ward/Mellin tensor 的独立匹配

取

\[
\widetilde M=\frac{32}{N^2(s-2)(t-2)(\widetilde u-2)},\qquad
\widetilde u=4-s-t=u-4,
\tag{6.1}
\]
\[
\mathcal R=\tau+(1-\sigma-\tau)V+(-\tau-\sigma\tau+\tau^2)U
+(\sigma^2-\sigma-\sigma\tau)UV+\sigma V^2+\sigma\tau U^2.
\tag{6.2}
\]

由 reduced/ordinary gamma measures 的平移推得

\[
\widehat{U^mV^n}f(s,t)=
(2-s/2)_m^2(2-t/2)_n^2(2-u/2)_{2-m-n}^2 f(s-2m,t-2n).
\tag{6.3}
\]

这个公式与 [Rastelli–Zhou, 1710.05923v2](https://arxiv.org/pdf/1710.05923v2)，PDF pp.23–24 / printed pp.22–23, eqs.(4.20)–(4.27) 相同；本轮已经视觉核验这些页。

程序从 (6.1)–(6.3) 出发计算六个 coefficients，并与 (5.1) 独立约分比较，全部 residual 为零。按 \(1,\sigma,\tau,\sigma^2,\sigma\tau,\tau^2\) 排列，\(N^2M\) 为

\[
\begin{aligned}
m_1&=-\frac{2(t-4)(s+t-4)}{s-2},\\
m_\sigma&=\frac{4(t-4)(s^2+st-8s+4)}{(s-2)(s+t-6)},\\
m_\tau&=-\frac{4(st-4)(s+t-4)}{(s-2)(t-2)},\\
m_{\sigma^2}&=-\frac{2(s-4)(t-4)}{s+t-6},\\
m_{\sigma\tau}&=\frac{4(s-4)(st+t^2-8t+4)}{(t-2)(s+t-6)},\\
m_{\tau^2}&=-\frac{2(s-4)(s+t-4)}{t-2}.
\end{aligned}
\tag{6.4}
\]

例如 \(s=2\) residue 的 spin decomposition 是

\[
N^2\operatorname*{Res}_{s=2}M
=-\frac12[(t-u)^2+4/3]+4(\sigma-\tau)(t-u)
-8(\sigma+\tau-1/3).
\tag{6.5}
\]

三个项分别与 singlet graviton、\(15\) vector、\(20'\) scalar 的作用量结果一致。程序检验 \(1\leftrightarrow2,\ 2\leftrightarrow4,\ 2\leftrightarrow3\) 三个 generating crossing transformations。

## 7. 完整 position identity：固定 rational terms 与 contour

定义 Euclidean flat box

\[
\mathcal B=\int d^4y\prod_i|y-x_i|^{-2}
=\frac{\pi^2}{P_{13}P_{24}}\Phi(U,V),\qquad f=\mathcal B/\pi^2.
\tag{7.1}
\]

对六个 \(P_{ij}\) 作独立解析微分，Schwinger parameters 给出

\[
\partial_{e_1}\cdots\partial_{e_m}\mathcal B
=(-1)^m\frac{2\prod_id_i!}{\Gamma(m)}
D_{1+d_1,\ldots,1+d_4}.
\tag{7.2}
\]

例如 scalar channel 是 \(-8S_sf_{34}/P_{12}\)，vector channel 是

\[
\frac{J_s}{P_{12}}
[-P_{13}f_{13,34}+P_{14}f_{14,34}
+P_{23}f_{23,34}-P_{24}f_{24,34}].
\tag{7.3}
\]

potential contact 是 \(M_{\rm pot}^{(0)}f_{12,34}\)，derivative contact 是

\[
\frac13\sum_{(i,j,k,l)\in S_4}
\operatorname{Tr}[Y_i,Y_j][Y_k,Y_l]
[f_{12,34}+P_{jl}f_{12,34,jl}].
\tag{7.4}
\]

加上三通道 Einstein box derivatives 后，得到

\[
\boxed{
\mathcal G_{\rm conn}
=\frac4{N^2}\left(C_2U+C_1U/V+C_3U^2/V\right)
-\frac4{N^2}U^2\bar D_{2422}\,\mathcal R_Y,}
\tag{7.5}
\]
\[
\mathcal R_Y=D_sV+D_uUV+D_tU
+C_2V(V-1-U)+C_1(1-U-V)+C_3U(U-1-V).
\tag{7.6}
\]

这里已除去 spacetime prefactor \((P_{12}P_{34})^{-2}\)。独立程序 **generic_position_checks.py** 先做全部 distance derivatives，再取 conformal gauge。它以

\[
\begin{aligned}
\partial_U\Phi&=\frac{(1-U+V)\Phi+2\log U+(1-U-V)\log V/U}{\Lambda},\\
\partial_V\Phi&=\frac{(1+U-V)\Phi+(1-U-V)\log U/V+2\log V}{\Lambda},\\
\Lambda&=(1-U-V)^2-4UV
\end{aligned}
\tag{7.7}
\]

消去全部三阶 jets。方程 (7.7) 由带 separate principal logarithms 的双 dilogarithm box 表示直接微分得到；程序把 \(\Phi,\log U,\log V\) 视为独立的形式基，六个 tensor residual 各自精确消失。连续 Euclidean 极限处理 \(\Lambda=0\)。

因此 (7.5) 包含完整 rational part。ordinary Mellin 定义保持 channelwise inversion：\(s\)-channel 可取 \((\Re s,\Re t,\Re u)=(1,7/2,7/2)\)，其他通道相应置换，contact 用 \((8/3,8/3,8/3)\)。直接 position identity 同时固定 contour deformations 的 residue bookkeeping。

absolute source extension 的控制来自 scalar 的六维 HLS bound、vector 的 (4.9)、graviton 的既有 \(\prod_iA_i^2\) majorant，以及 derivative contact 的 \(|\nabla A_i^2|_g\le2A_i^2\)。这些提供共同的 Schwartz-source definitions；(7.5) 遂成为所指定 regular-distribution extensions 的恒等式。

## 8. Neutral projection 的精确退化

若 \(Y_i=Y=\operatorname{diag}(1,1,1,-1,-1,-1)/\sqrt6\)，则 \(D_a=1,C_b=1/6\)。因此所有 \(S_a,J_a\) 同时为零，(5.3) 为零，(5.2) 变为 \(16/3\)，而 (5.1) 回到旧报告的

\[
N^2M_Y=\frac13-\frac12\sum_{\rm cyc}\frac{(t-u)^2+4/3}{s-2}.
\tag{8.1}
\]

这是完整 tensor map 的一个有非平凡 kernel 的线性 projection。显式例子取 \(Y_1=\mathrm{diag}(1,-1,0,0,0,0)\)、\(Y_2=E_{12}+E_{21}\)：程序得到 \(S_{1111}=4/3\) 与 \(J_{1212}=8\)。这些矩阵的 norm 为 \(\sqrt2\)；单位化后分别除以四。两个 exchanged sectors 在一般 polarization 中贡献非零。

## 9. 实际验证记录与下一层接口

- **generic_twenty_prime_checks.py / generic_twenty_prime_results.json**：41 项 exact checks，含 action expansion、basis completeness、24 permutations、six coefficients、crossing、neutral projection 与 \(R^4\) algebra/OPE。
- **generic_position_checks.py / generic_position_results.json**：7 项 exact checks，六个完整 position-space tensor identity 与 box derivative commutator。
- **radial_response_checks.py / radial_response_results.json**：source-response 与 radial checks，含 scalar/五分量 vector coordinate equations、source contacts、scalar/vector radial jumps、wall Gauss constant、六维 circle average；其中 Bessel/circle 项是 50-digit numerical evidence，具体数量由 JSON 记录。

这些是本轮实际执行的 Python/SymPy/mpmath 计算。Mathematica 在本轮环境中缺席。[Primary-source 核验清单](checks/dictionary_extensions/source_verification.md) 记录作用量、Mellin 和 string 文献的准确版本、页码及实际阅读范围；第三方 PDF 和临时渲染图未纳入本次提交。

完整 \(20'\) boundary four-point tree 与新增 sectors 的 Euclidean finite-radius theorems 是两个可分别审查的结果。与既有 potential/graviton source theorem 组合后得到指定 relational observable 的 generic Euclidean tree 边界桥。Lorentzian all-null/Wightman identification 还需把新增 sectors 接入既有 causal construction；\(R^4\) 的 boundary correction 由另一份正文独立确定。

## Executable verification links

- [generic_twenty_prime_checks.py](checks/dictionary_extensions/generic_twenty_prime_checks.py) and [actual output](checks/dictionary_extensions/generic_twenty_prime_results.json).
- [generic_position_checks.py](checks/dictionary_extensions/generic_position_checks.py) and [actual output](checks/dictionary_extensions/generic_position_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
