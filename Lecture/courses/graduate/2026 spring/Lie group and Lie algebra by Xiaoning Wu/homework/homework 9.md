# problem 1

证明由单纯李代数的根 $\alpha$ 和 $\beta$ 组成的根链长度 $p + q + 1$ 不大于 $4$，其中 $\alpha + n\beta$ 是根，$-q \leq n \leq p$，而 $\alpha + (p+1)\beta$ 和 $\alpha - (q+1)\beta$ 不是根。

## solution

若 $\alpha$ 和 $\beta$ 成比例，则由于单纯李代数的根系是 reduced root system，根串只能退化为平凡情形，结论显然成立。以下假设 $\alpha$ 和 $\beta$ 不成比例。

由 root string theorem，沿着 $\beta$ 方向穿过 $\alpha$ 的根串恰为

$$\alpha-q\beta,\alpha-(q-1)\beta,\ldots,\alpha,\ldots,\alpha+(p-1)\beta,\alpha+p\beta,$$

并且满足

$$q-p=\langle \alpha,\beta^\vee\rangle=\frac{2(\alpha,\beta)}{(\beta,\beta)}.$$

因此这个根串完全包含在二维子空间 $\mathrm{span}_{\mathbb{R}}\{\alpha,\beta\}$ 内。把整个根系限制到这个二维子空间，得到一个 reduced crystallographic rank-two root system。它的不可约部分只能是

$$A_1\times A_1,\quad A_2,\quad B_2=C_2,\quad G_2.$$

在这些 rank-two 根系中，沿任意根方向的根串最大长度分别不超过

$$1,\quad 2,\quad 3,\quad 4.$$

最大值只可能在 $G_2$ 中出现。因此一般都有

$$p+q+1\leq 4.$$

## main ideas

给定两个根 $\alpha,\beta$，固定 $\alpha$ 并沿着 $\beta$ 的方向看所有仍然是根的元素

$$\alpha+n\beta.$$

这些根组成的有限序列叫做穿过 $\alpha$ 的 $\beta$-string。它可以写成

$$\alpha-q\beta,\alpha-(q-1)\beta,\ldots,\alpha,\ldots,\alpha+(p-1)\beta,\alpha+p\beta,$$

其中 $\alpha+(p+1)\beta$ 和 $\alpha-(q+1)\beta$ 都不是根。因此根串长度是

$$p+q+1.$$

Root string theorem 说明这条根串没有中间缺口，并且两端长度满足

$$q-p=\langle \alpha,\beta^\vee\rangle,\qquad \beta^\vee=\frac{2\beta}{(\beta,\beta)}.$$

这个定理的证明来自 $\mathfrak{sl}_2$ 表示论。对根 $\beta$，取根向量 $E_\beta,E_{-\beta}$ 和

$$H_\beta=[E_\beta,E_{-\beta}],$$

它们生成一个 $\mathfrak{sl}_2$ 子代数。这个 $\mathfrak{sl}_2$ 作用在根空间串

$$\mathfrak{g}_{\alpha-q\beta},\ldots,\mathfrak{g}_{\alpha},\ldots,\mathfrak{g}_{\alpha+p\beta}$$

上，其中 $E_\beta$ 把根空间向右移一格，$E_{-\beta}$ 把根空间向左移一格。$H_\beta$ 在 $\mathfrak{g}_{\alpha+n\beta}$ 上的权重是

$$\langle\alpha+n\beta,\beta^\vee\rangle=\langle\alpha,\beta^\vee\rangle+2n.$$

有限维 $\mathfrak{sl}_2$ 表示的权重串连续且关于 $0$ 对称，所以最高权和最低权满足

$$\langle\alpha,\beta^\vee\rangle+2p=-\left(\langle\alpha,\beta^\vee\rangle-2q\right),$$

从而得到

$$q-p=\langle\alpha,\beta^\vee\rangle.$$

本题还用到一个降维观察。若 $\alpha,\beta$ 不成比例，取

$$\Phi_{\alpha,\beta}=\Phi\cap \mathrm{span}_{\mathbb{R}}\{\alpha,\beta\}.$$

这不是把根投影到平面上，而是在原根系中只保留已经落在该二维平面里的根。它仍然是 reduced crystallographic rank-two root system：有限性、reduced 性和 Cartan 整数性都从 $\Phi$ 继承；反射封闭性也成立，因为若 $\mu,\gamma$ 都在这个平面内，则

$$s_\gamma(\mu)=\mu-\langle\mu,\gamma^\vee\rangle\gamma$$

仍然在同一个平面内，同时又是原根系中的根。因此可以用 rank-two reduced crystallographic root system 的分类

$$A_1\times A_1,\quad A_2,\quad B_2=C_2,\quad G_2$$

来检查最长根串。最大长度只在 $G_2$ 中达到，为 $4$，所以一般有 $p+q+1\leq 4$。

# problem 2

利用式 $(5.23)$ 分别计算 $SO(N)$ 群如下各最高权表示

$$M=\sum_{\mu=1}^{\ell} M_\mu \omega_\mu$$

的二阶卡西米尔不变量 $C_2(M)$：

1. $N=2\ell+1$，$$M=\sum_{u=1}^{\ell-1} (\lambda_u - \lambda_{u+1})\, w_u + 2\lambda_\ell w_\ell$$
2. $N=2\ell+1$，$$M=\lambda_1 w_1 + w_\ell$$
3. $N=2\ell$，$$M=\sum_{u=1}^{\ell-1} (\lambda_u - \lambda_{u+1})\, w_u + (\lambda_{\ell-1}+\lambda_\ell)\, w_\ell$$
4. $N=2\ell$，   $$M=\lambda_1 w_1 + w_\ell$$

## solution

取长根长度平方为 $2$ 的标准归一化。对最高权 $M$，二阶 Casimir 为

$$C_2(M)=(M,M+2\rho),$$

其中 $\rho$ 是所有正根半和。

对 $B_\ell=\mathfrak{so}(2\ell+1)$，取正交归一基 $e_i$，使得

$$\omega_u=e_1+\cdots+e_u\quad (1\leq u<\ell),\qquad \omega_\ell=\frac{1}{2}(e_1+\cdots+e_\ell),$$

并且

$$\rho=\sum_{i=1}^{\ell}\left(\ell-i+\frac{1}{2}\right)e_i.$$

对情形 1，题目给出的最高权正好是

$$M=\sum_{i=1}^{\ell}\lambda_i e_i.$$

因此

$$C_2(M)=\sum_{i=1}^{\ell}\lambda_i\left(\lambda_i+2\ell-2i+1\right).$$

对情形 2，有

$$M=\lambda_1\omega_1+\omega_\ell=\left(\lambda_1+\frac{1}{2}\right)e_1+\frac{1}{2}\sum_{i=2}^{\ell}e_i.$$

所以

$$\begin{align}
C_2(M) & =\left(\lambda_1+\frac{1}{2}\right)\left(\lambda_1+2\ell-\frac{1}{2}\right)+\sum_{i=2}^{\ell}\frac{1}{2}\left(2\ell-2i+\frac{3}{2}\right) \\
 & =\lambda_1^2+2\ell\lambda_1+\frac{\ell(2\ell+1)}{4}.
\end{align}$$

对 $D_\ell=\mathfrak{so}(2\ell)$，取

$$\omega_u=e_1+\cdots+e_u\quad (1\leq u\leq \ell-2),$$

以及

$$\omega_{\ell-1}=\frac{1}{2}(e_1+\cdots+e_{\ell-1}-e_\ell),\qquad \omega_\ell=\frac{1}{2}(e_1+\cdots+e_{\ell-1}+e_\ell).$$

Weyl 向量为

$$\rho=\sum_{i=1}^{\ell}(\ell-i)e_i.$$

对情形 3，题目给出的最高权化为

$$M=\sum_{i=1}^{\ell}\lambda_i e_i,$$

所以

$$C_2(M)=\sum_{i=1}^{\ell}\lambda_i\left(\lambda_i+2\ell-2i\right).$$

对情形 4，

$$M=\lambda_1\omega_1+\omega_\ell=\left(\lambda_1+\frac{1}{2}\right)e_1+\frac{1}{2}\sum_{i=2}^{\ell}e_i.$$

于是

$$\begin{align}
C_2(M) & =\left(\lambda_1+\frac{1}{2}\right)\left(\lambda_1+2\ell-\frac{3}{2}\right)+\sum_{i=2}^{\ell}\frac{1}{2}\left(2\ell-2i+\frac{1}{2}\right) \\
 & =\lambda_1^2+(2\ell-1)\lambda_1+\frac{\ell(2\ell-1)}{4}.
\end{align}$$

# problem 3

画出 $SU(3)$ 群的不可约表示 $[4]$ 的方块权图和平面权图，并计算表示空间包含的（Gelfand-Tsetlin）基和生成元非零表示矩阵元。

## solution

对 $SU(3)$，杨图 $[4]$ 对应最高权

$$[4]=[4,0,0],\qquad (p,q)=(4,0).$$

因此

$$\dim(4,0)=\frac{(4+1)(0+1)(4+0+2)}{2}=15.$$

采用 Gelfand-Tsetlin pattern

$$\Lambda=\begin{matrix}
\lambda_1 && \lambda_2 && \lambda_3\\
& a && b\\
&& c
\end{matrix}$$

其中 interlacing 条件为

$$\lambda_1\geq a\geq \lambda_2,\qquad \lambda_2\geq b\geq \lambda_3,\qquad a\geq c\geq b.$$

在本题中 $(\lambda_1,\lambda_2,\lambda_3)=(4,0,0)$，所以

$$\Lambda_{a,c}=\begin{matrix}
4 && 0 && 0\\
& a && 0\\
&& c
\end{matrix},\qquad 0\leq c\leq a\leq 4.$$

这给出 $1+2+3+4+5=15$ 个 Gelfand-Tsetlin 基。权重可由

$$n_1=c,\qquad n_2=a-c,\qquad n_3=4-a$$

读出，因此平面权坐标为

$$\mu=(n_1-n_2,n_2-n_3)=(2c-a,2a-c-4).$$

所有权重重数都是 $1$，所以方块权图和平面权图相同。权重坐标为

$$\begin{gathered}
(4,0),(2,1),(0,2),(-2,3),(-4,4),\\
(3,-1),(1,0),(-1,1),(-3,2),\\
(2,-2),(0,-1),(-2,0),\\
(1,-3),(-1,-2),(0,-4).
\end{gathered}$$

等价地，半标准杨表为一行四格：

$$1111,\ 1112,\ 1113,\ 1122,\ 1123,\ 1133,\ 1222,\ 1223,\ 1233,\ 1333,\ 2222,\ 2223,\ 2233,\ 2333,\ 3333.$$

正则张量杨表只有一个：

```tikz
\begin{document}
\def \youngdiagram{4}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm}
]
\foreach \n [count=\y from 0] in \youngdiagram {
    \foreach \x in {0,...,\numexpr\n-1} {
        \draw[box] (\x, -\y) rectangle ++(1,1);
    }
}
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {k};
\node at (3.5,0.5) {l};
\end{tikzpicture}
\end{document}
```

它表示四个张量指标完全对称。

在 GT 基上，Cartan 生成元的矩阵元为对角形式：

$$H_1\ket{\Lambda}=(n_1-n_2)\ket{\Lambda},\qquad H_2\ket{\Lambda}=(n_2-n_3)\ket{\Lambda}.$$

非对角生成元的非零位置由 interlacing 条件决定：

$$\begin{array}{c|c}
\text{生成元} & \text{非零矩阵元位置}\\
\hline
E_{12} & c\mapsto c+1,\quad c<a\\
E_{21} & c\mapsto c-1,\quad c>0\\
E_{23} & a\mapsto a+1,\quad a<4\\
E_{32} & a\mapsto a-1,\quad c<a
\end{array}$$

其余矩阵元为零。具体数值系数由选定的正交归一 GT 基规范决定。

# problem 4

画出 $SU(3)$ 群的不可约表示 $[3,1]$ 的方块权图和平面权图，并计算表示空间包含的 Gelfand-Tsetlin 基、生成元非零表示矩阵元和正则张量杨表。

## solution

对 $SU(3)$，杨图 $[3,1]$ 对应

$$[3,1]=[3,1,0],\qquad (p,q)=(3-1,1-0)=(2,1).$$

因此

$$\dim(2,1)=\frac{(2+1)(1+1)(2+1+2)}{2}=15.$$

GT 顶行为 $(3,1,0)$，所以基由

$$\Lambda_{a,b,c}=\begin{matrix}
3 && 1 && 0\\
& a && b\\
&& c
\end{matrix}$$

给出，其中

$$3\geq a\geq 1,\qquad 1\geq b\geq 0,\qquad a\geq c\geq b.$$

权重由

$$n_1=c,\qquad n_2=a+b-c,\qquad n_3=4-a-b$$

读出，因此平面权坐标为

$$\mu=(n_1-n_2,n_2-n_3)=(2c-a-b,2a+2b-c-4).$$

15 个半标准杨表可以记为

$$\begin{gathered}
(111;2),\ (111;3),\ (112;2),\ (112;3),\ (113;2),\ (113;3),\\
(122;2),\ (122;3),\ (123;2),\ (123;3),\ (133;2),\ (133;3),\\
(222;3),\ (223;3),\ (233;3).
\end{gathered}$$

这里 $(abc;d)$ 表示第一行为 $a,b,c$，第二行第一格为 $d$。对应平面权重及重数为

$$\begin{array}{c|c}
\text{平面权} & \text{重数}\\
\hline
(3,-1),(2,1),(2,-2),(1,-3),(0,2),(-1,-2),(-2,3),(-2,0),(-3,2) & 1\\
(1,0),(-1,1),(0,-1) & 2
\end{array}$$

因此平面权图有 $12$ 个不同权点，其中 $(1,0),(-1,1),(0,-1)$ 是二重权。方块权图则有 $15$ 个方块，即把这三个二重权点各拆成两个方块，其余权点各对应一个方块。

正则张量杨表共有三个：

```tikz
\begin{document}
\def \youngdiagram{3,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm}
]
\foreach \n [count=\y from 0] in \youngdiagram {
    \foreach \x in {0,...,\numexpr\n-1} {
        \draw[box] (\x, -\y) rectangle ++(1,1);
    }
}
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {k};
\node at (0.5,-0.5) {l};
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm}
]
\foreach \n [count=\y from 0] in \youngdiagram {
    \foreach \x in {0,...,\numexpr\n-1} {
        \draw[box] (\x, -\y) rectangle ++(1,1);
    }
}
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {l};
\node at (0.5,-0.5) {k};
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm}
]
\foreach \n [count=\y from 0] in \youngdiagram {
    \foreach \x in {0,...,\numexpr\n-1} {
        \draw[box] (\x, -\y) rectangle ++(1,1);
    }
}
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {k};
\node at (2.5,0.5) {l};
\node at (0.5,-0.5) {j};
\end{tikzpicture}
\end{document}
```

每一个杨表表示同行指标对称，同列指标反对称。例如第一个杨表表示先对 $i,j,k$ 对称，再对 $i,l$ 反对称。

Cartan 生成元在 GT 基上仍为对角形式：

$$H_1\ket{\Lambda}=(n_1-n_2)\ket{\Lambda},\qquad H_2\ket{\Lambda}=(n_2-n_3)\ket{\Lambda}.$$

非对角生成元的非零位置为

$$\begin{array}{c|c}
\text{生成元} & \text{非零矩阵元位置}\\
\hline
E_{12} & c\mapsto c+1,\quad c<a\\
E_{21} & c\mapsto c-1,\quad c>b\\
E_{23} & a\mapsto a+1,\quad a<3\\
E_{23} & b\mapsto b+1,\quad b<1,\ c\geq b+1\\
E_{32} & a\mapsto a-1,\quad a>1,\ c\leq a-1\\
E_{32} & b\mapsto b-1,\quad b>0
\end{array}$$

其余矩阵元为零。具体数值系数同样由选定的正交归一 GT 基规范决定。

### main point

这两题的关键是把四种描述统一起来：

$$\text{Young diagram}\quad \Longleftrightarrow\quad \text{GT pattern}\quad \Longleftrightarrow\quad \text{semistandard Young tableau}\quad \Longleftrightarrow\quad \text{weight diagram}.$$

杨图 $[\lambda_1,\lambda_2,\lambda_3]$ 对应 $SU(3)$ 的 Dynkin label

$$(p,q)=(\lambda_1-\lambda_2,\lambda_2-\lambda_3).$$

GT pattern 的每一行可以直接读成半标准杨表的截断形状：第 $k$ 行表示 tableau 中所有不超过 $k$ 的格子组成的 Young diagram。相邻两行形状的差，就是填入数字 $k$ 的格子。

若

$$\Lambda=\begin{matrix}
m_{13} && m_{23} && m_{33}\\
& m_{12} && m_{22}\\
&& m_{11}
\end{matrix},$$

记三行行和为

$$S_1=m_{11},\qquad S_2=m_{12}+m_{22},\qquad S_3=m_{13}+m_{23}+m_{33}.$$

则对应的 $U(3)$ 权为

$$(n_1,n_2,n_3)=(S_1,S_2-S_1,S_3-S_2),$$

$SU(3)$ 平面权坐标可直接写成

$$(n_1-n_2,n_2-n_3)=(2S_1-S_2,2S_2-S_1-S_3).$$

平面权图只记录权和重数；方块权图记录每一个具体 GT 基。当某个平面权重数大于 $1$ 时，平面权图上只有一个点，方块权图中要拆成多个方块。

取 Chevalley 基

$$e_1=E_{12},\quad f_1=E_{21},\qquad e_2=E_{23},\quad f_2=E_{32}.$$

在 GT 基中，$f_i$ 把从下数第 $i$ 行的某一个 entry 减 $1$，$e_i$ 把从下数第 $i$ 行的某一个 entry 加 $1$。若加减后不满足 interlacing 条件，则该项矩阵元为零。方块权图中的线就是这些非零矩阵元；单线和双线通常用来区分 $\alpha_1$ 与 $\alpha_2$ 两个 simple-root 方向。

# problem 5

计算 $C_3$ 李代数基本表示 $(0,0,1)$ 的表示空间包含的 Gelfand-Tsetlin 基和生成元非零表示矩阵元。

## solution

这几题都可以用同一个框架处理。取 Cartan 子代数的正交基 $e_i$。一个 Gelfand-Tsetlin/方块权图基可以写成

$$\ket{\mu,r},$$

其中 $\mu$ 是权，$r=1,\ldots,m_\mu$ 是该权空间的重数标签。Cartan 生成元对角作用：

$$H_i\ket{\mu,r}=\mu_i\ket{\mu,r}.$$

对根生成元 $E_\alpha$，非零矩阵元只可能出现在

$$\bra{\mu+\alpha,s}E_\alpha\ket{\mu,r}\neq 0$$

的位置；若 $\mu+\alpha$ 不是该表示的权，则对应矩阵元为零。下面列出的权重和重数已经给出全部非零矩阵元的位置。具体数值系数依赖正交归一 GT 基的规范。

对 $C_3=\mathfrak{sp}(6)$，根系为

$$\Phi(C_3)=\{\pm 2e_i,\ \pm e_i\pm e_j\mid 1\leq i<j\leq 3\}.$$

最高权 $(0,0,1)$ 即 $\omega_3=e_1+e_2+e_3$。该表示维数为 $14$，权重全部为一重：

$$\mu=\pm e_1,\ \pm e_2,\ \pm e_3,\quad \frac{1}{2}\left(\pm 2e_1\pm 2e_2\pm 2e_3\right).$$

等价地，

$$\mu=\pm e_1,\ \pm e_2,\ \pm e_3,\quad \pm e_1\pm e_2\pm e_3,$$

其中最后一项的三个符号任取。因此 GT 基可记为

$$\{\ket{\pm e_i}\}_{i=1}^{3}\cup \{\ket{\pm e_1\pm e_2\pm e_3}\}.$$

非零矩阵元由

$$E_\alpha:\ket{\mu}\mapsto \ket{\mu+\alpha},\qquad \alpha\in\Phi(C_3),$$

且 $\mu+\alpha$ 仍属于上面的权集时给出。

# problem 6

画出 $C_2$ 李代数伴随表示 $(2,0)$ 的方块权图和平面权图，并计算表示空间包含的 Gelfand-Tsetlin 基和生成元非零表示矩阵元。

## solution

对 $C_2=\mathfrak{sp}(4)$，伴随表示最高权是最高根

$$\theta=2e_1=2\omega_1,$$

所以它的 Dynkin label 为 $(2,0)$，维数为

$$\dim\mathfrak{sp}(4)=2(2\cdot 2+1)=10.$$

伴随表示的非零权正好是根：

$$\Phi(C_2)=\{\pm 2e_1,\ \pm 2e_2,\ \pm e_1\pm e_2\}.$$

零权空间维数等于 rank，即为 $2$。因此 GT/方块权图基可以取为

$$\{\ket{\alpha}\mid \alpha\in\Phi(C_2)\}\cup\{\ket{0,1},\ket{0,2}\}.$$

平面权图是 $C_2$ 根图：四个长根 $\pm 2e_1,\pm 2e_2$ 和四个短根 $\pm e_1\pm e_2$，中心零权点重数为 $2$。方块权图则把中心零权点拆成两个方块。

Cartan 生成元作用为

$$H_i\ket{\alpha}=\alpha_i\ket{\alpha},\qquad H_i\ket{0,a}=0.$$

根生成元在伴随表示中由 Lie bracket 给出：

$$E_\beta\ket{\alpha}\propto \ket{\alpha+\beta}\quad \text{if }\alpha+\beta\in\Phi(C_2),$$

并且

$$E_\beta\ket{-\beta}\in \operatorname{span}\{\ket{0,1},\ket{0,2}\},\qquad E_\beta\ket{0,a}\propto \ket{\beta}.$$

除此之外矩阵元为零。

# problem 7

计算 $B_3$ 李代数的三个基本表示 $(1,0,0)$、$(0,1,0)$ 和 $(0,0,1)$ 包含的 Gelfand-Tsetlin 基和生成元非零表示矩阵元。

## solution

对 $B_3=\mathfrak{so}(7)$，取正交基 $e_1,e_2,e_3$。根系为

$$\Phi(B_3)=\{\pm e_i,\ \pm e_i\pm e_j\mid 1\leq i<j\leq 3\}.$$

三个基本表示分别如下。

1. 向量表示 $(1,0,0)$：

   $$\dim(1,0,0)=7.$$

   权重为

   $$\mu=0,\quad \pm e_1,\quad \pm e_2,\quad \pm e_3,$$

   全部一重。因此基为

   $$\{\ket{0},\ket{\pm e_1},\ket{\pm e_2},\ket{\pm e_3}\}.$$

2. 伴随表示 $(0,1,0)$：

   $$\dim(0,1,0)=\dim\mathfrak{so}(7)=21.$$

   非零权是全部根 $\Phi(B_3)$，零权重数为 $3$。因此基为

   $$\{\ket{\alpha}\mid \alpha\in\Phi(B_3)\}\cup\{\ket{0,1},\ket{0,2},\ket{0,3}\}.$$

3. 旋量表示 $(0,0,1)$：

   $$\dim(0,0,1)=8.$$

   权重为

   $$\mu=\frac{1}{2}(\pm e_1\pm e_2\pm e_3),$$

   三个符号任取，全部一重。因此基为

   $$\left\{\ket{\frac{1}{2}(\pm e_1\pm e_2\pm e_3)}\right\}.$$

对这三个表示，Cartan 生成元均按

$$H_i\ket{\mu,r}=\mu_i\ket{\mu,r}$$

对角作用。根生成元的非零矩阵元位置统一为

$$E_\alpha:\ket{\mu,r}\mapsto \ket{\mu+\alpha,s},\qquad \alpha\in\Phi(B_3),$$

其中 $\mu+\alpha$ 必须仍是该表示的权。对伴随表示还要加上

$$E_\alpha\ket{-\alpha}\in \operatorname{span}\{\ket{0,1},\ket{0,2},\ket{0,3}\},\qquad E_\alpha\ket{0,a}\propto \ket{\alpha}.$$

# problem 8

计算 $G_2$ 李代数的两个基本表示 $(1,0)$ 和 $(0,1)$ 包含的 Gelfand-Tsetlin 基和生成元非零表示矩阵元。

## solution

按本题所用表格约定，$(0,1)$ 是 $7$ 维基本表示，$(1,0)$ 是 $14$ 维伴随表示。设 $\alpha_s$ 是短简单根，$\alpha_l$ 是长简单根，则 $G_2$ 的短正根为

$$\alpha_s,\quad \alpha_s+\alpha_l,\quad 2\alpha_s+\alpha_l,$$

长正根为

$$\alpha_l,\quad 3\alpha_s+\alpha_l,\quad 3\alpha_s+2\alpha_l.$$

对 $7$ 维表示 $(0,1)$，权重为

$$0,\quad \pm\alpha_s,\quad \pm(\alpha_s+\alpha_l),\quad \pm(2\alpha_s+\alpha_l),$$

全部一重。因此基可取为

$$\ket{0},\quad \ket{\pm\alpha_s},\quad \ket{\pm(\alpha_s+\alpha_l)},\quad \ket{\pm(2\alpha_s+\alpha_l)}.$$

对 $14$ 维伴随表示 $(1,0)$，非零权是全部 $12$ 个根，零权重数为 $2$。因此基可取为

$$\{\ket{\alpha}\mid \alpha\in\Phi(G_2)\}\cup\{\ket{0,1},\ket{0,2}\}.$$

Cartan 生成元作用为

$$H_i\ket{\mu,r}=\mu(H_i)\ket{\mu,r}.$$

根生成元的非零矩阵元位置由

$$E_\alpha:\ket{\mu,r}\mapsto \ket{\mu+\alpha,s},\qquad \alpha\in\Phi(G_2),$$

且 $\mu+\alpha$ 仍是该表示的权来决定。对伴随表示还包括

$$E_\alpha\ket{-\alpha}\in \operatorname{span}\{\ket{0,1},\ket{0,2}\},\qquad E_\alpha\ket{0,a}\propto \ket{\alpha}.$$

# problem 9

计算 $SU(3)$ 群直乘表示 $[2]\times[1]$ 分解的 Clebsch-Gordan 系数。

## solution

直积表示分解的通用步骤如下。

1. 先把两个因子的最高权相加，得到直积中的最高最高权。
2. 用 Weyl character 或 Littlewood-Richardson 规则分解 character。
3. 若要写 Clebsch-Gordan 系数，就在每个不可约分量的最高权空间中解

   $$E_{\alpha_i}v=0\qquad \text{for all simple roots }\alpha_i,$$

   得到该不可约分量的最高权态，再用降算符生成其余态。

对本题，$[2]$ 是二阶对称张量，故

$$[2]\otimes[1]=[3]\oplus[2,1].$$

维数检验为

$$6\cdot 3=10+8=18.$$

令 $\ket{ij}_S$ 表示归一化对称态。最高权态为

$$\ket{[3];111}=\ket{11}_S\ket{1}.$$

在权 $(2,1,0)$ 的二维空间中，取

$$a=\ket{11}_S\ket{2},\qquad b=\ket{12}_S\ket{1}.$$

完全对称分量为

$$\ket{[3];112}=\frac{1}{\sqrt{3}}a+\sqrt{\frac{2}{3}}b.$$

与它正交的最高权态属于 $[2,1]$：

$$\ket{[2,1];112}=\sqrt{\frac{2}{3}}a-\frac{1}{\sqrt{3}}b.$$

其余 Clebsch-Gordan 系数由 $SU(3)$ 的降算符 $E_{21}$ 和 $E_{32}$ 作用得到。

# problem 10

计算 $C_2$ 李代数直乘表示 $(1,0)\times(1,0)$ 分解的 Clebsch-Gordan 系数和重数结构。

## solution

对 $C_2=\mathfrak{sp}(4)$，$(1,0)$ 是 $4$ 维基本表示。由 Weyl character 分解，

$$ (1,0)\otimes(1,0)=(2,0)\oplus(0,1)\oplus(0,0). $$

维数检验为

$$4\cdot 4=10+5+1=16.$$

从张量对称性看，

$$S^2(1,0)=(2,0),\qquad \wedge^2(1,0)=(0,1)\oplus(0,0).$$

其中 singlet 来自 $Sp(4)$ 不变辛形式 $\Omega_{ab}$。因此该分解是无重数分解，每个最高权态唯一。实际求 CG 系数时，先在 $V_{(1,0)}\otimes V_{(1,0)}$ 中取对称、反对称部分，再从反对称部分中分离出与 $\Omega_{ab}$ 成比例的 singlet，剩余 traceless 反对称部分就是 $(0,1)$。

# problem 11

计算 $C_2$ 李代数直乘表示 $(0,1)\times(0,1)$ 分解的 Clebsch-Gordan 系数和重数结构。

## solution

对 $C_2$，$(0,1)$ 是 $5$ 维表示，可看成 $\wedge^2(1,0)$ 去掉辛迹后的 traceless 部分。Weyl character 分解给出

$$ (0,1)\otimes(0,1)=(0,2)\oplus(2,0)\oplus(0,0). $$

维数检验为

$$5\cdot 5=14+10+1=25.$$

其中

$$S^2(0,1)=(0,2)\oplus(0,0),\qquad \wedge^2(0,1)=(2,0).$$

因此也是无重数分解。CG 系数的构造方式是：先按交换两个 $(0,1)$ 因子的对称性分成 $S^2$ 和 $\wedge^2$，再从 $S^2$ 中取出唯一不变态作为 $(0,0)$，其正交补就是 $(0,2)$。

# problem 12

计算 $C_3$ 李代数直乘表示 $(0,2,0)\times(1,0,0)$ 分解的 Clebsch-Gordan 系数，其中各有关表示维数、外尔轨道长度 (O.S.) 以及各主权重数列列于下表。

| 表示 | 维数 | O.S. | $(1,0,0)$ | $(0,0,1)$ | $(1,1,0)$ | $(3,0,0)$ | $(0,1,1)$ | $(2,0,1)$ | $(1,2,0)$ |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| $(1,0,0)$ | 6 | 6 | 1 |  |  |  |  |  |  |
| $(0,0,1)$ | 14 | 8 | 1 | 1 |  |  |  |  |  |
| $(1,1,0)$ | 64 | 24 | 4 | 2 | 1 |  |  |  |  |
| $(3,0,0)$ | 56 | 6 | 3 | 1 | 1 | 1 |  |  |  |
| $(0,1,1)$ | 126 | 24 | 5 | 3 | 2 | 0 | 1 |  |  |
| $(2,0,1)$ | 216 | 24 | 7 | 6 | 3 | 1 | 1 | 1 |  |
| $(1,2,0)$ | 350 | 24 | 11 | 7 | 5 | 2 | 2 | 1 | 1 |

## solution

Weyl character 分解为

$$ (0,2,0)\otimes(1,0,0)=(1,2,0)\oplus(0,1,1)\oplus(1,1,0). $$

维数检验为

$$90\cdot 6=350+126+64=540.$$

CG 系数可以按最高权态逐个构造。最高最高权为

$$ (0,2,0)+(1,0,0)=(1,2,0), $$

所以 $(1,2,0)$ 分量的最高权态就是两个因子最高权态的张量积。然后在剩余权空间中求所有简单升算符共同湮灭的向量，依次得到 $(0,1,1)$ 和 $(1,1,0)$ 的最高权态。表中的主权重数列用于控制每个候选最高权在乘积表示中的剩余重数。

# problem 13

计算 $G_2$ 李代数直乘表示 $(1,0)\times(1,0)$ 和 $(1,0)\times(0,1)$ 分解的 Clebsch-Gordan 级数和级数中出现的各表示最高权态的展开式，其中各有关表示维数、外尔轨道长度 (O.S.) 和包含各主权重数列于下表。

| 表示 | 维数 | O.S. | $(0,0)$ | $(0,1)$ | $(1,0)$ | $(0,2)$ | $(1,1)$ | $(0,3)$ | $(2,0)$ |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| $(0,0)$ | 1 | 1 | 1 |  |  |  |  |  |  |
| $(0,1)$ | 7 | 6 | 1 | 1 |  |  |  |  |  |
| $(1,0)$ | 14 | 6 | 2 | 1 | 1 |  |  |  |  |
| $(0,2)$ | 27 | 6 | 3 | 2 | 1 | 1 |  |  |  |
| $(1,1)$ | 64 | 12 | 4 | 4 | 2 | 2 | 1 |  |  |
| $(0,3)$ | 77 | 6 | 5 | 4 | 3 | 2 | 1 | 1 |  |
| $(2,0)$ | 77 | 6 | 5 | 3 | 3 | 2 | 1 | 1 | 1 |

## solution

沿用本题表格的约定：$(0,1)$ 是 $7$ 维表示，$(1,0)$ 是 $14$ 维伴随表示。Weyl character 分解为

$$ (1,0)\otimes(1,0)=(0,0)\oplus(1,0)\oplus(0,2)\oplus(0,3)\oplus(2,0). $$

维数检验为

$$14\cdot 14=1+14+27+77+77=196.$$

另一个直积为

$$ (1,0)\otimes(0,1)=(0,1)\oplus(0,2)\oplus(1,1). $$

维数检验为

$$14\cdot 7=7+27+64=98.$$

最高权态展开的计算方式与上一题相同：在每个候选最高权的乘积权空间中解

$$E_{\alpha_s}v=0,\qquad E_{\alpha_l}v=0,$$

其中 $\alpha_s,\alpha_l$ 是短、长简单根。表中各主权重数列给出每个权空间中需要消去的已知分量数；解出的 null vector 就是对应不可约表示的最高权态，之后用降算符生成整个不可约分量。

# problem 14

计算 $F_4$ 李代数直乘表示 $(0,0,0,1)\times(0,0,0,1)$ 分解的 Clebsch-Gordan 级数和级数中出现的各表示最高权态的展开式，其中各有关表示维数、外尔轨道长度 (O.S.) 和包含各主权重数列于下表。

| 表示 | 维数 | O.S. | $(0,0,0,0)$ | $(0,0,0,1)$ | $(1,0,0,0)$ | $(0,0,1,0)$ | $(0,0,0,2)$ |
|---|---:|---:|---:|---:|---:|---:|---:|
| $(0,0,0,0)$ | 1 | 1 | 1 |  |  |  |  |
| $(0,0,0,1)$ | 26 | 24 | 2 | 1 |  |  |  |
| $(1,0,0,0)$ | 52 | 24 | 4 | 1 | 1 |  |  |
| $(0,0,1,0)$ | 273 | 96 | 9 | 5 | 2 | 1 |  |
| $(0,0,0,2)$ | 324 | 24 | 12 | 5 | 3 | 1 | 1 |

## solution

$(0,0,0,1)$ 是 $F_4$ 的 $26$ 维基本表示。Weyl character 分解为

$$\begin{align}
(0,0,0,1)\otimes(0,0,0,1)
&=(0,0,0,0)\oplus(0,0,0,1)\oplus(1,0,0,0)\\
&\quad\oplus(0,0,1,0)\oplus(0,0,0,2).
\end{align}$$

维数检验为

$$26\cdot 26=1+26+52+273+324=676.$$

CG 最高权态同样通过解简单升算符方程得到。由于这个分解无重数，每个不可约分量的最高权态在扣除更高分量以后唯一确定。表中的主权重数列正是用来判断每一步剩余权空间维数的。

# problem 15

计算 $SU(3)$ 群和 $SU(6)$ 群用下列杨图标记的不可约表示的维数：

$$[3],\quad [2,1],\quad [3,3],\quad [4,2],\quad [5,1].$$

## solution

对 $SU(N)$，杨图 $\lambda$ 的维数由 hook formula 给出：

$$\dim_N\lambda=\prod_{(i,j)\in\lambda}\frac{N+j-i}{h_{ij}},$$

其中 $h_{ij}$ 是方格 $(i,j)$ 的 hook length。计算得

| 杨图 | $\dim_{SU(3)}$ | $\dim_{SU(6)}$ |
|---|---:|---:|
| $[3]$ | 10 | 56 |
| $[2,1]$ | 8 | 70 |
| $[3,3]$ | 10 | 490 |
| $[4,2]$ | 27 | 1134 |
| $[5,1]$ | 35 | 1050 |

# problem 16

对 $SU(3)$ 群和 $SU(6)$ 群，分别计算下列表示直乘分解的 Clebsch-Gordan 级数，并用维数公式检验：

$$\begin{aligned}
&1.\ [2,1]\times[3,0];\\
&2.\ [3,0]\times[3,0];\\
&3.\ [3,0]\times[3,3];\\
&4.\ [4,2]\times[2,1].
\end{aligned}$$

## solution

用 Littlewood-Richardson 规则。对 $SU(3)$，若出现满高为 $3$ 的整列，就把它删去，因为它对应行列式表示，是平凡的。

对 $SU(3)$：

$$[2,1]\otimes[3,0]=[5,1]\oplus[4,2]\oplus[3]\oplus[2,1],$$

$$8\cdot 10=35+27+10+8=80.$$

$$[3,0]\otimes[3,0]=[6]\oplus[5,1]\oplus[4,2]\oplus[3,3],$$

$$10\cdot 10=28+35+27+10=100.$$

$$[3,0]\otimes[3,3]=[6,3]\oplus[4,2]\oplus[2,1]\oplus[0],$$

$$10\cdot 10=64+27+8+1=100.$$

$$[4,2]\otimes[2,1]=[6,3]\oplus[5,4]\oplus[5,1]\oplus2[4,2]\oplus[3,3]\oplus[3]\oplus[2,1],$$

$$27\cdot 8=64+35+35+2\cdot27+10+10+8=216.$$

对 $SU(6)$：

$$[2,1]\otimes[3,0]=[5,1]\oplus[4,2]\oplus[4,1,1]\oplus[3,2,1],$$

$$70\cdot 56=3920.$$

$$[3,0]\otimes[3,0]=[6]\oplus[5,1]\oplus[4,2]\oplus[3,3],$$

$$56\cdot 56=3136.$$

$$[3,0]\otimes[3,3]=[6,3]\oplus[5,3,1]\oplus[4,3,2]\oplus[3,3,3],$$

$$56\cdot 490=27440.$$

$$\begin{align}
[4,2]\otimes[2,1]
&=[6,3]\oplus[6,2,1]\oplus[5,4]\oplus2[5,3,1]\oplus[5,2,2]\\
&\quad\oplus[5,2,1,1]\oplus[4,4,1]\oplus[4,3,2]\oplus[4,3,1,1]\oplus[4,2,2,1],
\end{align}$$

$$1134\cdot70=79380.$$

# problem 17

把下面 $SU(6)$ 群的无迹混合张量表示变换成协变张量表示，并计算这些表示的维数：

$$1.\ [3,2,1]^*;\qquad 2.\ [3,2,1]\backslash[3,3]^*;\qquad 3.\ [4,3,1]\backslash[3,2]^*.$$

## solution

对 $SU(6)$，把反变杨图 $[\mu]^*$ 改写成协变杨图时，可以取 Dynkin label 反序。等价地，若

$$\mu=[\mu_1,\mu_2,\ldots,\mu_6],\qquad \mu_6=0,$$

则

$$[\mu]^*=[\mu_1-\mu_6,\mu_1-\mu_5,\ldots,\mu_1-\mu_2].$$

混合无迹表示 $[\lambda]\backslash[\mu]^*$ 对应的协变最高权，是 $[\lambda]$ 的 Dynkin label 加上 $[\mu]^*$ 的 Dynkin label。

1. 对 $[3,2,1]^*$：

   $$[3,2,1]^*=[3,3,3,2,1],\qquad \dim=896.$$

2. 对 $[3,2,1]\backslash[3,3]^*$：

   $$[3,3]^*=[3,3,3,3],$$

   因此

   $$[3,2,1]\backslash[3,3]^*\longleftrightarrow[6,5,4,3],\qquad \dim=147840.$$

3. 对 $[4,3,1]\backslash[3,2]^*$：

   $$[3,2]^*=[3,3,3,3,1],$$

   因此

   $$[4,3,1]\backslash[3,2]^*\longleftrightarrow[7,6,4,3,1],\qquad \dim=612500.$$

### 直积表示分解的要点

直积表示分解的目标是把

$$V_\lambda\otimes V_\mu$$

写成不可约表示直和：

$$V_\lambda\otimes V_\mu=\bigoplus_\nu N_{\lambda\mu}^{\nu}V_\nu.$$

最稳定的流程是：

1. 最高权先相加。$\lambda+\mu$ 一定是直积中的最高最高权，所以 $V_{\lambda+\mu}$ 至少出现一次。
2. 用 character 分解：

   $$\chi_\lambda\chi_\mu=\sum_\nu N_{\lambda\mu}^{\nu}\chi_\nu.$$

3. 对 $SU(N)$，character 分解等价于 Littlewood-Richardson 规则：

   $$[\lambda]\otimes[\mu]=\sum_\nu c_{\lambda\mu}^{\nu}[\nu].$$

   若是 $SU(N)$，满高为 $N$ 的整列可以删掉，因为它对应行列式表示，在 $SU(N)$ 上平凡。
4. 对 $SO(N),USp(2r),G_2,F_4$ 等群，最稳妥的方法是先把表示写成 Dynkin label，再用 Weyl character 分解。
5. 最后做维数检验：

   $$\dim V_\lambda\dim V_\mu=\sum_\nu N_{\lambda\mu}^{\nu}\dim V_\nu.$$

若题目要求 Clebsch-Gordan 系数，则在乘积表示的候选最高权空间中解

$$E_{\alpha_i}v=0\qquad \text{for all simple roots }\alpha_i.$$

解出的最高权态展开系数就是该不可约分量最高权态的 CG 系数；其余态由降算符生成。重数 $N_{\lambda\mu}^{\nu}>1$ 时，需要在同一个最高权空间中取一组正交归一的最高权态。

# problem 18

按下列步骤证明

$$\sum_{A=1}^{N^2-1} (T_A)_{ac}(T_A)_{bd}=\frac{1}{2}\delta_a^d\delta_b^c-\frac{1}{2N}\delta_a^c\delta_b^d.$$

其中，$(T_A)_{ac}$ 是 $SU(N)$ 群自身表示的生成元。

1. $SU(N)$ 群不变的 $(2,2)$ 阶混合张量 $T_{ab}^{cd}$ 只能是

   $$\delta_a^c\delta_b^d\quad \text{和}\quad \delta_a^d\delta_b^c$$

   的线性组合。

2. 定义 $SU(N)$ 群 $(2,2)$ 阶混合张量

   $$T_{ab}^{cd}=\sum_{A=1}^{N^2-1}(T_A)_{ac}(T_A)_{bd}.$$

   证明它在 $SU(N)$ 变换中保持不变。

3. 把 $T_{ab}^{cd}$ 按 $\delta$ 函数展开，确定组合系数，最后证明上式。

## solution

取基本表示中的生成元归一化为

$$\operatorname{tr}(T_A T_B)=\frac{1}{2}\delta_{AB},\qquad \operatorname{tr}T_A=0.$$

定义

$$S_{ab}^{cd}=\sum_{A=1}^{N^2-1}(T_A)_a^{\ c}(T_A)_b^{\ d}.$$

在 $SU(N)$ 变换下，

$$T_A\mapsto U T_A U^{-1}$$

仍然是 $\mathfrak{su}(N)$ 的一组正交归一基，因此 $S_{ab}^{cd}$ 是 $SU(N)$ 不变的 $(2,2)$ 阶混合张量。由不变张量分类，它只能写成

$$S_{ab}^{cd}=A\delta_a^c\delta_b^d+B\delta_a^d\delta_b^c.$$

先令 $c=a$ 并求和。左边为

$$S_{ab}^{ad}=\sum_A (T_A)_a^{\ a}(T_A)_b^{\ d}=0,$$

因为 $T_A$ 无迹。右边为

$$A N\delta_b^d+B\delta_b^d,$$

所以

$$B=-AN.$$

再令 $c=b,d=a$ 并求和。左边为

$$S_{ab}^{ba}=\sum_A (T_A)_a^{\ b}(T_A)_b^{\ a}=\sum_A \operatorname{tr}(T_A T_A)=\frac{N^2-1}{2}.$$

右边为

$$A\delta_a^b\delta_b^a+B\delta_a^a\delta_b^b=AN+BN^2.$$

代入 $B=-AN$ 得

$$-AN(N^2-1)=\frac{N^2-1}{2},\qquad A=-\frac{1}{2N},\qquad B=\frac{1}{2}.$$

因此

$$S_{ab}^{cd}=\frac{1}{2}\delta_a^d\delta_b^c-\frac{1}{2N}\delta_a^c\delta_b^d,$$

即

$$\sum_{A=1}^{N^2-1}(T_A)_a^{\ c}(T_A)_b^{\ d}=\frac{1}{2}\delta_a^d\delta_b^c-\frac{1}{2N}\delta_a^c\delta_b^d.$$

# problem 19

计算下列杨图标记的 $SO(6)$ 群不可约表示的维数：

$$1.\ [4,2];\qquad 2.\ [3,2];\qquad 3.\ [4,4];\qquad 4.\ [3,1,1];\qquad 5.\ [3,3,1].$$

## solution

利用 $SO(6)\simeq SU(4)$，也可以直接用 $D_3$ 的 Weyl 维数公式。若普通张量杨图为

$$\lambda=[\lambda_1,\lambda_2,\lambda_3],$$

则对应 $D_3$ Dynkin label 为

$$a=(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\lambda_2+\lambda_3).$$

计算得

| 杨图 | $D_3$ Dynkin label | 维数 |
|---|---:|---:|
| $[4,2]$ | $(2,2,2)$ | 729 |
| $[3,2]$ | $(1,2,2)$ | 300 |
| $[4,4]$ | $(0,4,4)$ | 825 |
| $[3,1,1]$ | $(2,0,2)$ | 126 |
| $[3,3,1]$ | $(0,2,4)$ | 270 |

# problem 20

计算下列杨图标记的 $SO(6)$ 群不可约旋量表示的维数：

$$\begin{aligned}
&1.\ [\,+s(4,2)\,];\\
&2.\ [\,+s(3,2)\,];\\
&3.\ [\,+s(4,4)\,];\\
&4.\ [\,+s(3,1,1)\,];\\
&5.\ [\,+s(3,3,1)\,].
\end{aligned}$$

## solution

正旋量表示等于在普通张量最高权上加上正手征 spinor 最高权

$$\frac{1}{2}(e_1+e_2+e_3).$$

因此若普通杨图为 $\lambda=[\lambda_1,\lambda_2,\lambda_3]$，则

$$[+s(\lambda)]\quad\longleftrightarrow\quad (\lambda_1-\lambda_2,\lambda_2-\lambda_3,\lambda_2+\lambda_3+1).$$

由 $D_3$ Weyl 维数公式得

| 旋量表示 | $D_3$ Dynkin label | 维数 |
|---|---:|---:|
| $[+s(4,2)]$ | $(2,2,3)$ | 1260 |
| $[+s(3,2)]$ | $(1,2,3)$ | 540 |
| $[+s(4,4)]$ | $(0,4,5)$ | 1260 |
| $[+s(3,1,1)]$ | $(2,0,3)$ | 224 |
| $[+s(3,3,1)]$ | $(0,2,5)$ | 420 |

# problem 21

结合方块权图方法，用二阶旋量 $x(\alpha)$ 的直乘形式，分别表出 $SO(7)$ 群和 $SO(8)$ 群群基本旋量表示空间包含的各正交归一的状态基 $W(\alpha_1,\alpha_2,\cdots)$（见式 $(5.199)$），并指出它们的权 $m$。

## solution

记二阶旋量基为

$$x\left(\frac{1}{2}\right),\qquad x\left(-\frac{1}{2}\right).$$

对 $SO(2\ell+1)$ 的基本旋量表示，状态基可写为

$$W(\alpha_1,\ldots,\alpha_\ell)=x(\alpha_1)\otimes\cdots\otimes x(\alpha_\ell),\qquad \alpha_i=\pm\frac{1}{2},$$

其权为

$$m=(\alpha_1,\ldots,\alpha_\ell).$$

因此 $SO(7)$ 对应 $B_3$，基本旋量表示维数为 $2^3=8$，基为

| 状态 | 权 $m$ |
|---|---:|
| $W(+,+,+)$ | $\left(\frac{1}{2},\frac{1}{2},\frac{1}{2}\right)$ |
| $W(+,+,-)$ | $\left(\frac{1}{2},\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(+,-,+)$ | $\left(\frac{1}{2},-\frac{1}{2},\frac{1}{2}\right)$ |
| $W(+,-,-)$ | $\left(\frac{1}{2},-\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(-,+,+)$ | $\left(-\frac{1}{2},\frac{1}{2},\frac{1}{2}\right)$ |
| $W(-,+,-)$ | $\left(-\frac{1}{2},\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(-,-,+)$ | $\left(-\frac{1}{2},-\frac{1}{2},\frac{1}{2}\right)$ |
| $W(-,-,-)$ | $\left(-\frac{1}{2},-\frac{1}{2},-\frac{1}{2}\right)$ |

这里 $+$ 表示 $\alpha_i=1/2$，$-$ 表示 $\alpha_i=-1/2$。

对 $SO(8)$，对应 $D_4$。Dirac 旋量空间有 $2^4=16$ 个

$$W(\alpha_1,\alpha_2,\alpha_3,\alpha_4),\qquad \alpha_i=\pm\frac{1}{2},$$

但它分裂成两个 $8$ 维 Weyl 旋量表示。按常用约定，正手征表示 $S_+$ 取负号个数为偶数的状态：

| 状态 | 权 $m$ |
|---|---:|
| $W(+,+,+,+)$ | $\left(\frac{1}{2},\frac{1}{2},\frac{1}{2},\frac{1}{2}\right)$ |
| $W(+,+,-,-)$ | $\left(\frac{1}{2},\frac{1}{2},-\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(+,-,+,-)$ | $\left(\frac{1}{2},-\frac{1}{2},\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(+,-,-,+)$ | $\left(\frac{1}{2},-\frac{1}{2},-\frac{1}{2},\frac{1}{2}\right)$ |
| $W(-,+,+,-)$ | $\left(-\frac{1}{2},\frac{1}{2},\frac{1}{2},-\frac{1}{2}\right)$ |
| $W(-,+,-,+)$ | $\left(-\frac{1}{2},\frac{1}{2},-\frac{1}{2},\frac{1}{2}\right)$ |
| $W(-,-,+,+)$ | $\left(-\frac{1}{2},-\frac{1}{2},\frac{1}{2},\frac{1}{2}\right)$ |
| $W(-,-,-,-)$ | $\left(-\frac{1}{2},-\frac{1}{2},-\frac{1}{2},-\frac{1}{2}\right)$ |

负手征表示 $S_-$ 取负号个数为奇数的状态：

$$W(+,+,+,-),\ W(+,+,-,+),\ W(+,-,+,+),\ W(-,+,+,+),$$

$$W(+,-,-,-),\ W(-,+,-,-),\ W(-,-,+,-),\ W(-,-,-,+).$$

它们的权仍然由对应的四个 $\alpha_i$ 组成。

# problem 22

讨论 $SO(4)$ 群的类并计算它们在不可约表示 $D^{jk}$ 中的特征标。

## solution

利用双覆盖

$$Spin(4)\simeq SU(2)_L\times SU(2)_R,\qquad SO(4)\simeq \frac{SU(2)_L\times SU(2)_R}{\mathbb{Z}_2}.$$

任意 $SO(4)$ 元素可共轭到两个互相正交平面中的旋转：

$$R(\theta_1,\theta_2)=
\begin{pmatrix}
\cos\theta_1&-\sin\theta_1&0&0\\
\sin\theta_1&\cos\theta_1&0&0\\
0&0&\cos\theta_2&-\sin\theta_2\\
0&0&\sin\theta_2&\cos\theta_2
\end{pmatrix}.$$

因此共轭类由两个角 $\theta_1,\theta_2$ 决定，交换两个平面不改变类。对应到 $SU(2)_L\times SU(2)_R$ 的两个 class angles 是

$$\theta_L=\theta_1+\theta_2,\qquad \theta_R=\theta_1-\theta_2.$$

不可约表示 $D^{jk}$ 是

$$D^{jk}=D^j_L\otimes D^k_R,$$

其中 $j,k=0,\frac{1}{2},1,\ldots$，且能降到 $SO(4)$ 的表示需要 $j+k\in\mathbb{Z}$。$SU(2)$ spin-$j$ 表示的特征标为

$$\chi_j(\theta)=\frac{\sin\left((2j+1)\theta/2\right)}{\sin(\theta/2)}.$$

所以

$$\chi_{jk}(\theta_1,\theta_2)=
\frac{\sin\left((2j+1)(\theta_1+\theta_2)/2\right)}{\sin\left((\theta_1+\theta_2)/2\right)}
\times
\frac{\sin\left((2k+1)(\theta_1-\theta_2)/2\right)}{\sin\left((\theta_1-\theta_2)/2\right)}.$$

当分母为零时取连续极限。例如 $D^{1/2,1/2}$ 是 $SO(4)$ 的向量表示，其特征标为

$$\chi_{1/2,1/2}=2\cos\theta_1+2\cos\theta_2,$$

与四维旋转矩阵的迹一致。

# problem 23

计算下面固有洛伦兹变换 $A$ 的六个参数

$$A(\varphi,\theta,\omega,\alpha,\beta,\gamma)=\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & \sqrt{3}/2 & (\cosh\omega)/2 & -i(\sinh\omega)/2 \\
0 & -1/2 & \sqrt{3}(\cosh\omega)/2 & -i\sqrt{3}(\sinh\omega)/2 \\
0 & 0 & i\sinh\omega & \cosh\omega
\end{pmatrix}.$$

## solution

采用前面 Euler 角约定

$$R(\alpha,\beta,\gamma)=R_3(\alpha)R_2(\beta)R_3(\gamma),$$

并把固有 Lorentz 变换写成

$$A(\varphi,\theta,\omega,\alpha,\beta,\gamma)=R_3(\varphi)R_2(\theta)L_3(\omega)R_3(\alpha)R_2(\beta)R_3(\gamma),$$

其中

$$L_3(\omega)=
\begin{pmatrix}
1&0&0&0\\
0&1&0&0\\
0&0&\cosh\omega&-i\sinh\omega\\
0&0&i\sinh\omega&\cosh\omega
\end{pmatrix}.$$

题目矩阵的第四列给出 boost 方向：

$$-i\sinh\omega\left(0,\frac{1}{2},\frac{\sqrt{3}}{2}\right).$$

而

$$R_3(\varphi)R_2(\theta)e_3=(\cos\varphi\sin\theta,\sin\varphi\sin\theta,\cos\theta).$$

因此可取

$$\varphi=\frac{\pi}{2},\qquad \theta=\frac{\pi}{6}.$$

剩余右侧 Euler 旋转满足

$$R_3(\alpha)R_2(\beta)R_3(\gamma)=R_3\left(-\frac{\pi}{2}\right),$$

所以取

$$\alpha=0,\qquad \beta=0,\qquad \gamma=-\frac{\pi}{2}.$$

于是六个参数为

$$\boxed{\varphi=\frac{\pi}{2},\quad \theta=\frac{\pi}{6},\quad \omega=\omega,\quad \alpha=0,\quad \beta=0,\quad \gamma=-\frac{\pi}{2}.}$$

代回可得

$$R_3\left(\frac{\pi}{2}\right)R_2\left(\frac{\pi}{6}\right)L_3(\omega)R_3\left(-\frac{\pi}{2}\right)
=
\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & \sqrt{3}/2 & (\cosh\omega)/2 & -i(\sinh\omega)/2 \\
0 & -1/2 & \sqrt{3}(\cosh\omega)/2 & -i\sqrt{3}(\sinh\omega)/2 \\
0 & 0 & i\sinh\omega & \cosh\omega
\end{pmatrix}.$$

# problem 24

用钩形规则计算 $USp(6)$ 群和 $USp(8)$ 群用下列杨图标记的不可约表示维数：

$$[3],\quad [1^3],\quad [3,3,2],\quad [3,2,1],\quad [4,3,2,1].$$

## solution

对 $USp(2r)$，杨图

$$\lambda=[\lambda_1,\ldots,\lambda_r]$$

对应 $C_r$ Dynkin label

$$(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\ldots,\lambda_{r-1}-\lambda_r,\lambda_r).$$

用 $C_r$ Weyl 维数公式计算得

| 杨图 | $\dim_{USp(6)}$ | $\dim_{USp(8)}$ |
|---|---:|---:|
| $[3]$ | 56 | 120 |
| $[1^3]$ | 14 | 48 |
| $[3,3,2]$ | 594 | 10010 |
| $[3,2,1]$ | 512 | 4096 |
| $[4,3,2,1]$ | 不适用 | 65536 |

这里 $USp(6)$ 的 rank 为 $3$，标准最高权杨图最多有 $3$ 行；因此 $[4,3,2,1]$ 不是 $USp(6)$ 的合法不可约表示标签。对 $USp(8)$，它对应 $C_4$ label $(1,1,1,1)$。

# problem 25

用钩形规则计算 $USp(2\ell)$ 群，$\ell\geq 3$，用三行杨图

$$[n,m,p]$$

标记的不可约表示维数。

## solution

对 $USp(2\ell)$，三行杨图

$$[n,m,p],\qquad n\geq m\geq p\geq 0,$$

对应 $C_\ell$ 最高权

$$\lambda=n e_1+m e_2+p e_3.$$

Weyl 维数公式可写成 symplectic hook rule 的形式：

$$\dim[n,m,p]=\prod_{i=1}^{\ell}\frac{\lambda_i+\ell-i+1}{\ell-i+1}\prod_{1\leq i<j\leq \ell}\frac{\lambda_i-\lambda_j+j-i}{j-i}\frac{\lambda_i+\lambda_j+2\ell-i-j+2}{2\ell-i-j+2},$$

其中

$$\lambda_1=n,\qquad \lambda_2=m,\qquad \lambda_3=p,\qquad \lambda_i=0\quad (i\geq 4).$$

把尾部的 $\lambda_i=0$ 代入，可得显式三行公式

$$\begin{align}
\dim[n,m,p]
&=\frac{(n+\ell)(m+\ell-1)(p+\ell-2)}{\ell(\ell-1)(\ell-2)}
\times\frac{(n-m+1)(n-p+2)(m-p+1)}{2}\\
&\quad\times\frac{(n+m+2\ell-1)(n+p+2\ell-2)(m+p+2\ell-3)}{(2\ell-1)(2\ell-2)(2\ell-3)}\\
&\quad\times\prod_{j=4}^{\ell}\left[
\frac{(n+j-1)(n+2\ell-j+1)}{(j-1)(2\ell-j+1)}
\times\frac{(m+j-2)(m+2\ell-j)}{(j-2)(2\ell-j)}\right.\\
&\quad\left.\times
\frac{(p+j-3)(p+2\ell-j-1)}{(j-3)(2\ell-j-1)}
\right].
\end{align}$$

上式中当 $\ell=3$ 时，最后的乘积为空，按 $1$ 处理。

## main point

这类表示维数题的核心步骤是

$$\text{题目标签}\longrightarrow \text{最高权 }\lambda \longrightarrow \text{Weyl 维数公式或 hook formula}\longrightarrow \dim V_\lambda.$$

第一步是识别群对应的根系：

$$SU(N)\leftrightarrow A_{N-1},\qquad SO(2r)\leftrightarrow D_r,\qquad SO(2r+1)\leftrightarrow B_r,\qquad USp(2r)\leftrightarrow C_r.$$

第二步是把题目中的杨图、旋量标签或混合张量标签翻译成 Dynkin label。例如 $SU(N)$ 杨图 $\lambda=[\lambda_1,\lambda_2,\ldots]$ 对应

$$(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\ldots).$$

对 $USp(2r)$，杨图 $\lambda=[\lambda_1,\ldots,\lambda_r]$ 对应

$$(\lambda_1-\lambda_2,\ldots,\lambda_{r-1}-\lambda_r,\lambda_r).$$

对 $SO(6)\simeq D_3$，普通张量杨图 $[\lambda_1,\lambda_2,\lambda_3]$ 对应

$$(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\lambda_2+\lambda_3),$$

正旋量表示再把最后一个 Dynkin label 加 $1$。

第三步使用统一公式

$$\dim V_\lambda=\prod_{\alpha>0}\frac{(\lambda+\rho,\alpha)}{(\rho,\alpha)},$$

其中 $\rho$ 是正根半和。对 $SU(N)$，这个公式化为普通 hook formula；对 $USp(2r)$，它化为 symplectic hook rule；对 $SO(N)$，可以使用 orthogonal hook rule，也可以直接转成 $B_r/D_r$ 最高权后套 Weyl 公式。

容易出错的地方主要在标签转换，而不是最后的乘法：$SO(6)$ 的旋量标签、$SU(6)$ 的反变张量、$USp(6)$ 的杨图行数限制，都需要先处理清楚。
