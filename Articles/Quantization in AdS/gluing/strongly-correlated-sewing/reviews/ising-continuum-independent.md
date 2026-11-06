# Independent Ising thermal continuum check

**成立。** 对偶数 $N\ge2$、固定 $L,v>0$、$a=L/N$，严格按 $N$ 个循环键定义
$$H_N=-\sum_{j=0}^{N-1}Z_jZ_{j+1\bmod N}-\sum_{j=0}^{N-1}X_j,
\qquad \widetilde H_N=\frac{v}{2a}\left(H_N+\frac{4N}{\pi}\mathbf1\right).$$
则对每个固定 $\beta>0$，
$$\lim_{N\to\infty,\ N\ {\rm even}}\operatorname{Tr}e^{-\beta\widetilde H_N}
 =|\chi_0(q)|^2+|\chi_{1/2}(q)|^2+|\chi_{1/16}(q)|^2,
\qquad q=e^{-2\pi\beta v/L}.$$
这里 $q$ 实且 $0<q<1$，右边是 full nonchiral Ising 的 diagonal character sum。证明需要下面的统一可求和界；单独有限能级收敛不足以交换极限与 trace。

这是未读主文的独立推导。它只证明本模型的热谱 trace 极限，**不证明空间约化态、replica 熵或一般 sewing**。

## 1. Jordan–Wigner 扇区与两个特殊动量

先旋转自旋使 $\tau^x=Z,\tau^z=X$，故 $H_N=-\sum\tau^x_j\tau^x_{j+1}-\sum\tau^z_j$。取 JW 约定 $\tau^z_j=1-2c_j^\dagger c_j$，
$$P=\prod_jX_j=(-1)^F,\qquad c_{j+N}=-P c_j.$$
因此物理自旋空间分成：

- $P=+1$：NS 动量 $K_{\rm NS}=\{2\pi(m+\tfrac12)/N:m=0,\ldots,N-1\}$，只保留偶 fermion parity。
- $P=-1$：R 动量 $K_{\rm R}=\{2\pi m/N:m=0,\ldots,N-1\}$，只保留奇 fermion parity。

临界色散为
$$\epsilon_k=2\sqrt{2-2\cos k}=4|\sin(k/2)|.$$
每个 $k,-k$ Bogoliubov 变换只混合偶 occupation，保持总 parity。偶数 $N$ 的 NS 无自共轭动量；R 有两个：
$$H_{k=0}=2(1-1)(n_0-\tfrac12)=0,
\qquad H_{k=\pi}=2(1+1)(n_\pi-\tfrac12)=4(n_\pi-\tfrac12).$$
采用原始 $c_0,c_\pi$ 的 occupation，未占据的 Bogoliubov 真空取偶 parity。R 的物理限制为
$$n_0+n_\pi+\sum_{0<k<\pi}(n_k+n_{-k})=1\pmod2.$$
所以每组非零模 occupation **唯一决定 $n_0$**。零模不会留下额外因子 2；$k=\pi$ 却仍是独立单模，不能当作 $k,-k$ 双重模或丢掉。

## 2. 全部有限 $N$ 热乘积公式

置 $t=\beta vN/(2L)$。在未投影的 fermionic Fock 空间定义
$$F_s(t)=\prod_{k\in K_s}2\cosh\frac{t\epsilon_k}{2},
\qquad G_s(t)=\prod_{k\in K_s}2\sinh\frac{t\epsilon_k}{2}.$$
$G_s$ 是带 $(-1)^F$ 插入的 trace。物理、bulk-subtracted 的自旋配分函数严格为
$$Z_N(\beta)=e^{-4tN/\pi}\left[\frac{F_{\rm NS}+G_{\rm NS}}2+
                                         \frac{F_{\rm R}-G_{\rm R}}2\right].$$
R 零模给出 $G_{\rm R}=0$、$F_{\rm R}$ 中一个因子 2，它恰好被 projection 的 $1/2$ 消去。

更适合极限与数值的 vacuum-times-excitations 形式如下。令 $M=N/2$、$x_N=\pi/(2N)$，
$$E_{\rm NS}^{(N)}=-2\csc x_N,\qquad E_{\rm R}^{(N)}=-2\cot x_N,$$
$$\mathcal E_{\rm NS}^{(N)}=\frac{vN}{L}\left(\frac{2N}{\pi}-\csc x_N\right),
\quad \mathcal E_{\rm R}^{(N)}=\frac{vN}{L}\left(\frac{2N}{\pi}-\cot x_N\right),$$
$$f_N(r)=\exp\left[-\frac{2\beta vN}{L}\sin\frac{\pi r}{N}\right].$$
则
$$Z_{{\rm NS},N}=\frac{e^{-\beta\mathcal E_{\rm NS}^{(N)}}}{2}
\left\{\prod_{j=0}^{M-1}[1+f_N(j+\tfrac12)]^2+
       \prod_{j=0}^{M-1}[1-f_N(j+\tfrac12)]^2\right\},$$
$$Z_{{\rm R},N}=e^{-\beta\mathcal E_{\rm R}^{(N)}}
 \underbrace{(1+e^{-2\beta vN/L})}_{k=\pi\ \text{single mode}}
 \prod_{j=1}^{M-1}[1+f_N(j)]^2,
\qquad Z_N=Z_{{\rm NS},N}+Z_{{\rm R},N}.$$
空乘积按 1 处理，因此 $N=2$ 也成立；此时原式含两个相同的循环键，不能改成单个键后仍沿用公式。在 $\beta=0$，两扇区各有 $2^{N-1}$ 个态，总数为 $2^N$。

## 3. 统一 domination 与 trace 极限

对 $0<r\le N/2$，$\sin(\pi r/N)\ge2r/N$。令 $\kappa=4\beta v/L>0$，有
$$0\le f_N(r)\le e^{-\kappa r},\qquad f_N(r)\longrightarrow q^r.$$
半整数与整数网格上的右端均可求和。把有限区间之外的 $f_N$ 延拓为 0，便得到同一可数 occupation 空间上的统一 majorant。

真空 prefactor 也不会破坏这一界。由 $x-\sin x\le x^3/6$、$\sin x\ge2x/\pi$，
$$-\frac{\pi^2v}{24L}\le\mathcal E_{\rm NS}^{(N)}\le0,
\qquad \mathcal E_{\rm R}^{(N)}\ge0.$$
故一个显式、与 $N$ 无关的 trace 上界为
$$Z_N(\beta)\le
 e^{\beta\pi^2v/(24L)}
 \exp\left[\frac{2e^{-\kappa/2}}{1-e^{-\kappa}}\right]
 +2\exp\left[\frac{2e^{-\kappa}}{1-e^{-\kappa}}\right]<\infty.$$
只给出整体有界还不够：更强的是 occupation tail 控制。所有含 $r>R$ occupation 的未投影贡献，去掉有界 vacuum prefactor 后至多
$$\exp\left(2\sum_{r\le R}e^{-\kappa r}\right)
 \left[\exp\left(2\sum_{r>R}e^{-\kappa r}\right)-1\right],$$
它随 $R\to\infty$ 一致趋于 0；parity projection 只减少正项计数。R 的额外 $\pi$ 模贡献另由 $C_\beta e^{-2\beta vN/L}\to0$ 控制。NS 的带符号乘积也收敛，例如
$$0\le-\log(1-f_N(r))\le\frac{e^{-\kappa r}}{1-e^{-\kappa/2}}.$$
因此可以严格交换极限与 occupation 求和／无穷乘积，不遗漏逃往高能的大简并态。

真空能极限为
$$\mathcal E_{\rm NS}^{(N)}\to-\frac{\pi v}{12L},\qquad
  \mathcal E_{\rm R}^{(N)}\to\frac{\pi v}{6L}.$$
从而
$$Z_{\rm NS}\to\frac{q^{-1/24}}2\left[
 \prod_{j=0}^\infty(1+q^{j+1/2})^2+
 \prod_{j=0}^\infty(1-q^{j+1/2})^2\right],$$
$$Z_{\rm R}\to q^{1/12}\prod_{j=1}^\infty(1+q^j)^2.$$

这个证明还可给固定 $\beta,L,v$ 下的 $O(N^{-2})$ 收敛界：有限网格内
$$|f_N(r)-q^r|\le\frac{\beta\pi^3v}{3LN^2}\,r^3e^{-\kappa r},$$
来自 $0\le x-\sin x\le x^3/6$；右端可求和，截断尾与 $\pi$ 模是指数小，两个真空能修正也是 $O(N^{-2})$。这里没有声称当 $\beta\downarrow0$ 时误差常数一致有界。

## 4. Character 识别与 parity 的作用

定义
$$A(q)=\prod_{j=0}^\infty(1+q^{j+1/2}),\quad
  B(q)=\prod_{j=0}^\infty(1-q^{j+1/2}),\quad
  C(q)=\prod_{j=1}^\infty(1+q^j).$$
$c=1/2$ 的三个 chiral Majorana/Ising characters 是
$$\chi_0=\tfrac12q^{-1/48}(A+B),\qquad
\chi_{1/2}=\tfrac12q^{-1/48}(A-B),\qquad
\chi_{1/16}=q^{1/24}C.$$
NS 总偶 parity 允许左／右各自为偶／偶或奇／奇，故给
$$\tfrac12q^{-1/24}(A^2+B^2)=\chi_0^2+\chi_{1/2}^2,$$
而不是只保留两个 chiral 偶空间，也不是无投影的 NS Fock trace。R 零模投影与单个高能 $\pi$ 模共同给出恰好一份 $\chi_{1/16}^2$。因 $q$ 为正实数，平方即绝对值平方。

## 5. 小尺寸独立计算核对

已在 Sage 10.9 / NumPy 2.4.4 / SciPy 1.17.1 中，从直接 Pauli tensor-product 自旋矩阵独立对角化，并用 $\frac12(1\pm P)$ 分别计算 NS/R trace；不是从上述 fermion 乘积重建自旋矩阵。取 $\beta=0.7,v=1.3,L=2.1$：

| $N$ | 直接自旋 $Z_N$ | 乘积公式 $Z_N$ | 总绝对差 |
|---:|---:|---:|---:|
| 2 | 2.1559157517131204 | 2.155915751713121 | $4.44\times10^{-16}$ |
| 4 | 2.2192829216348704 | 2.2192829216348695 | $6.67\times10^{-16}$ |
| 6 | 2.1804544974322133 | 2.180454497432209 | $4.33\times10^{-15}$ |
| 8 | 2.1564273229501207 | 2.156427322950136 | $1.50\times10^{-14}$ |

两扇区分别比较的最大差小于 $8.4\times10^{-15}$。200 项 character 乘积给 $Z_\infty\simeq2.12840517496588$；有限乘积 $N=20,40,80$ 的偏差分别为 $0.00357398797,0.00086895879,0.00021584602$。这些数值只是公式的交叉检查，严格收敛依据是上面的解析 tail bound。

本次 CAS 原始可读输出：[独立矩阵核对输出](</Users/koishi/.codex/mcp-results/sage_run-TS5Avz/result.txt>)；精确工具响应：[响应 JSON](</Users/koishi/.codex/mcp-results/sage_run-TS5Avz/result.json>)。

**适用范围：** 固定物理圆周、偶数链、无 twist 的 PBC 自旋 Hamiltonian、指定 bulk counterterm 与速度归一化、每个 $\beta>0$ 的 thermal spectral trace。未证明空间局域代数／态的连续收敛、空间 replica branched-cover 极限、纠缠熵收敛、interacting Potts 的同类解析定理或一般 sewing。
