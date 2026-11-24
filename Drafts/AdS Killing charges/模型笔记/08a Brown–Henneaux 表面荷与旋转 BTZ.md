# 同一个圆积分如何给出 BTZ 质量和 Brown–Henneaux 中心荷？

**常数模测质量和角动量，非零模测中心扩张。** 三维真空 Einstein 引力没有局域传播的引力子，仍有改变边界数据、带有限荷的微分同胚。只算精确 Killing 向量能得到 BTZ 的两个数，却看不到中心项。

## 固定什么，允许谁变？

体度规 $g$ 动力学，$R_{\mu\nu}=-2g_{\mu\nu}/\ell^2$；固定边界的平直圆柱代表，$x^\pm=t/\ell\pm\varphi$，$\varphi\sim\varphi+2\pi$。设 $n$ 外向、$K=\nabla_\mu n^\mu$，取

$$
S_R=\frac1{16\pi G}\int_{M_R}\sqrt{-g}\,(R[g]+2/\ell^2)+\frac1{8\pi G}\int_{\Gamma_R}\sqrt{-\gamma}\,(K-1/\ell).
$$

端点固定，采用正交切口；只在此平直边界代表下省略曲边界对数反项。Brown–Henneaux 条件固定切向度规的 $r^2$ 项、容许 $O(1)$ 响应，$g_{rr}=\ell^2/r^2+O(r^{-4}),\ g_{ri}=O(r^{-3})$。在 Fefferman–Graham 规范，一族一般局部解可写成

$$
ds^2=\ell^2\frac{dr^2}{r^2}-\left(r\,dx^+-\frac{\ell^2 L_-(x^-)}{r}dx^-\right)\left(r\,dx^--\frac{\ell^2 L_+(x^+)}{r}dx^+\right).
$$

乘积指对称线元。合法的切变分是两个周期函数 $\delta L_\pm$。微分同胚作用为 $X_\xi g=\mathcal L_\xi g$；取领先 $\xi^\pm=\epsilon^\pm(x^\pm)+O(r^{-2})$，$\xi^r=-r(\partial_+\epsilon^++\partial_-\epsilon^-)/2+O(r^{-1})$。径向分量补偿边界共形变换，保持所固定的代表。对任一手征扇区，补足保规范的次领先项后有

$$
\delta_\epsilon L=\epsilon L'+2\epsilon' L-\tfrac12\epsilon''' .
$$

重整化作用量的侧面变分为 $\tfrac12\int\sqrt{-g_{(0)}} T^{ij}\delta g_{(0)ij}$，于是固定源的辛通量为零。在无穷远圆上，$\delta H_\epsilon=\Omega_{\rm ren}(\delta,X_\xi)$ 给出可积的一形式；**保持标签 $\epsilon^\pm$ 而非体内延拓固定**。用无质量 BTZ 的零模归一化写其原函数：

$$
H_\epsilon=\frac{\ell}{8\pi G}\int_0^{2\pi} d\varphi\,(\epsilon^+ L_++\epsilon^- L_-).
$$

这固定了标准圆柱荷的整体约定；若只在不相连的相空间分支内给 $\delta H$，跨支零点不是靠路径积分自动得到的。

## 两个可直接代入的检验

**旋转 BTZ。** 令面积半径为 $\rho$，$g_{t\varphi}=-r_+r_-/\ell$，$r_+\ge |r_-|$，$r_-$ 带旋向符号。由线元的交叉项并匹配 $\rho^2=g_{\varphi\varphi}$，$L_\pm=(r_+\mp r_-)^2/(4\ell^2)$。这里角动量定义为 $J=-H_{\partial_\varphi}$，使视界生成元的荷为 $M-\Omega_H J$；若取相反的角坐标或对调两个手征标签，$L_\pm$ 公式中的符号要相应交换。现在直接积分：

$$
M=H_{\partial_t}=\frac{L_++L_-}{4G}=\frac{r_+^2+r_-^2}{8G\ell^2},\qquad J=\frac{\ell(L_--L_+)}{4G}=\frac{r_+r_-}{4G\ell}.
$$

**两条非零模。** 约定 $\{H_\epsilon,H_\eta\}=\delta_\eta H_\epsilon$。同一手征的 $L$ 依赖项分部积分给 $H_{\epsilon\eta'-\epsilon'\eta}$，余下 $K=-\ell\int\epsilon\eta'''d\varphi/(16\pi G)$。取 $t=0$、正手征的 $\epsilon=\cos nx^+,\eta=\sin nx^+$，有 $K=\ell n^3/(16G)$，不是把 $\epsilon=\eta=1$ 能得到的量。令 $Q_n=H_{e^{inx}}$，则

$$
i\{Q_m,Q_n\}=(m-n)Q_{m+n}+\frac{c}{12}m^3\delta_{m+n,0},\qquad c_+=c_-=\frac{3\ell}{2G}.
$$

异手征对易。在全局 AdS，$L_\pm=-1/4$，所以 $M=-1/(8G)$、$Q_0^\pm=-c/24$。若将全局真空移至零，$Q_n\mapsto Q_n+(c/24)\delta_{n0}$，中心项变成 $m(m^2-1)c/12$；$c$ 本身没变。

**来源与核查。** [Brown–Henneaux [33]，出版版 CMP 104 (1986) 207–226](https://doi.org/10.1007/BF01211590) 给出原正则中心扩张；[Compère 等 [53]，arXiv:1511.06079v2，PDF 9–10／正文 8–9，(2.16)–(2.23)](https://arxiv.org/pdf/1511.06079v2#page=9) 给出本参数化的圆积分与场依赖向量的调整括号。**Verified:** 按上面的 $x^\pm,J$ 约定用 Wolfram 化简两个 BTZ 残差均为零；$n=3$ 实模的 $-\int\epsilon\eta'''/2=27\pi/2$。**Assumptions:** 局域 AdS Einstein 解、闭圆切口、标准 Dirichlet 圆柱。**Not verified:** 未做量子中心荷修正；将圆推入体内要指定预辛流、同调类及是否跨奇点，不由无穷远的积分单独保证。
