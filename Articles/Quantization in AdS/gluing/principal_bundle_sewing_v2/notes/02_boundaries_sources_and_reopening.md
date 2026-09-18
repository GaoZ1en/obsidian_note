# 02｜每个区域先良定义，然后只开放选中的边界

## 2.1 一个 variational boundary condition 的检验

写
\[
 S=\int_R L+\int_{B}\ell+S_{\rm corner},\qquad
 \delta L=\mathcal E\cdot\delta\phi+d\theta.
\]
在 timelike boundary \(B\) 上，对允许 variations 要有
\[
 (\theta+\delta\ell)|_B=dC
\tag{2.1}
\]
（存在真正边界场时，先同时施加其边界 Euler–Lagrange 方程）。于是
\[
 \Theta_\Sigma=\int_\Sigma\theta-\int_{\partial\Sigma}C,
 \qquad \Omega_\Sigma=\delta\Theta_\Sigma
\tag{2.2}
\]
在同一解和同一固定源 fiber 内不依赖 Cauchy slice；joint corners 的取向和 \(C\) 必须配套。[R1]

本文用 \(\Omega=\delta p\wedge\delta q\)，\(\iota_{X_F}\Omega=-\delta F\)，\(\{F,G\}=\delta F(X_G)\)，故 \(\{q,p\}=1\)。后面所有有限维归一化以此为准。

(2.1) 是变分良定性，不是 PDE well-posedness。还需存在解、在声明 gauge 意义下唯一、对允许数据连续依赖，以及约束传播。Robin 系数选错可产生不稳定模；任意把两种边界条件拼在尖角处不自动产生一个光滑 IBVP。

## 2.2 YM 的闭合与响应

\[
 S_{\rm YM}=-\frac1{2e^2}\int_R\langle F\wedge *F\rangle,
 \qquad
 \theta_{\rm YM}=-e^{-2}\langle\delta A\wedge *F\rangle.
\]
把真实 boundary covector 定义为
\[
 \lambda_A(\delta a)=-e^{-2}\int_B\langle\delta a\wedge *F\rangle.
\tag{2.3}
\]
这样不必对所有 signature/dimension 盲目使用同一个 normal-electric 分量符号。

固定参考 frame 后的 tangential Dirichlet \(a=a_0\) 使 \(\delta a=0\)，是一个可选 physical closure。它没有固定 \(E_n\)，也没有授权除去所有 external charges。电/Neumann 型 closure 要固定相应 covector，并在需要时加 Legendre boundary term；非阿贝尔背景 source 的 gauge covariance、source conservation 和 corner terms 均须检查。一般 Robin closure 来自明确的 boundary potential/kinetic action；不是任意公式都 gauge compatible 或稳定。

含 \(\theta\operatorname{tr}(F\wedge F)/(8\pi^2)\) 时，在该 trace normalization 下响应还含
\[
 \lambda_\theta(\delta a)=\frac{\theta}{4\pi^2}
 \int_B\operatorname{tr}(\delta a\wedge F).
\tag{2.4}
\]
真正的 \(\theta\) jump 或 retained boundary matter 是 physical interface，不是 temporary closing，不能在 opening 时删去。

## 2.3 正确的完整源对象是一条关系

对选中 faces \(\Gamma\subset B\)，撤去其 temporary closing 项/限制，保留其余所有真实边界条件。令 \(q\) 为选定边界极化下的输入 trace，\(\lambda\) 为共轭响应。定义
\[
 \mathfrak R_\Gamma=\{(j,q,d_{\rm in};\phi,\lambda,d_{\rm out}):
 \text{区域方程、约束、全部 corner compatibility 成立}\}.
\tag{2.5}
\]
它由区域自己的 action、domain 和 source convention 定义，不引用未切分解来定义。

关系不必是单值的 \(\lambda=\mathcal Dq\)：有 homogeneous modes、gauge directions、零频和不完整 characteristic data 时，DtN inverse 可能根本不存在。只有已经证明相应映射为单值且可逆的子域，才写 \(\mathcal D^{-1}\)。

合法输入域是
\[
 \mathcal D_{\rm adm}\subset\mathcal J\times\mathcal Q\times\mathcal D_{\rm in},
\]
而非默认直积。在 \(L=\partial_t^2-\partial_x^2+m^2\)、Dirichlet strip 中，\(q_0=x(1-x),\dot q_0=0,f=2+m^2x(1-x)\) 给光滑解。将该 tuple 拆成 force-only 和 initial-only 时，角点 \(\partial_t^2\phi\) 分别被强迫为 \(2\) 与 \(-2\)，各自违反 wall 条件。因而所有 reconstruction 比较都在**完整相容 tuple** 上进行。

## 2.4 opening 不是把不同 fibers 当同一 symplectic space

对每个固定 \(q\)，源问题可具有自己的 conserved CPS。改变 \(q\) 的 variation 一般会穿过边界携带 symplectic flux；所以 \(\bigcup_q\operatorname{Sol}_q\) 不能不加解释地赋予一份 conserved \(\Omega_B\)。

本稿使用 (2.5) 作为响应关系，在 sewing constraint 上相加完整 action，使内部 flux 相消。只有此时才形成新闭合系统的 \(\Omega\)。若要让 \(q\) 自己动力学化，必须加入它的 action/共轭量，那是另一种 extended physical theory。

## 2.5 透明 sewing 的方程

先用实际 \(h\) 做 (1.4) 的 connection matching；然后要求
\[
 \lambda_1(\delta a_1)+\lambda_2(\delta a_2)=0
\tag{2.6}
\]
对所有相容 variations 成立。存在保留的 interface action \(S_\Gamma\) 时，右式增加 \(\delta S_\Gamma\)，输出就不是 bare transparent interface。

变动 \(h\) 时，令 \(\eta=\delta h\,h^{-1}\)，则
\[
 \delta a_2=h\delta a_1h^{-1}-D_{a_2}\eta.
\tag{2.7}
\]
因此 \(h\) variation 同时检测界面的 Gauss/Ward balance 和 seam endpoints 的 corner charge。只检查固定 \(h\) 下的 conormal equation 可能漏掉这些条件。

切向 connection 和 conormal 的连续性给无 surface source 的弱方程，但**弱解不自动光滑**。本稿的光滑装配还要求所声明的 collar jets 可匹配，或另外使用一个明确的 regularity theorem。null 上要独立处理 characteristic constraints，不把 (2.6) 当成充分 Cauchy data。

## 2.6 真正 closed intermediate 的操作

先把 \(R_1,R_2\) 拼成 \(R_{12}\)：删除且只删除内 seam 上被标记的 temporary terms；求 (2.5) 的 joint solution；除本次新内部 proper symmetry；在所有 surviving timelike faces 保留它们的 \(B\)。输出保存 \(S_{12},P_{12},B_{\rm out},\mathscr O,\mathsf q\) 和 source-rule，不保留内部 seam 作为物理边界。

下一次与 \(R_3\) 拼接，**从 \(R_{12}\) 的 action/domain 重新生成**选中外面的 (2.5)。要求的比较是对任意共同 admissible external tuple，先 (12) 再 3 与先 1 再 (23) 给相同解、response、observable transport。只证明零源 Green kernel 相同不足以推出这个比较。

一个容易误删的量：若为了独立闭合而加入了 CS chiral wall 的 \(v j^2\)，透明 opening 必须明确删掉该临时 wall Hamiltonian；若它是实际保留的 edge matter Hamiltonian，就不能删除。两种物理任务从一开始必须分开标记。

## 2.7 物理边界、gauge fixing、人工 seam 三者不同

Gauge fixing 用于给退化 Hessian 建立计算逆，不应改变 gauge-invariant observables；physical boundary conditions 改变系统；opening 改变当前 physical boundary problem，但期望删除的是本次人工切割引入的限制。旧 \(G_B\) 与新 \(G_{\#}\) 的差一般不是一份全球 smooth Wick shift，也不保证二者的 vacuum representations unitarily equivalent。

这里不需要每个 intermediate vacuum 与全局 vacuum 相同；需要每个 theory 的 algebra 和 source problem 自己良定义。states 的组合另见第 09 篇。
