# 独立解析复核：jump 局部化、行列式比较与非零 winding 的离散 near-null 空间

日期：2026-11-07。

本记录从题设独立推导，不依赖现有研究笔记或主文。只读取了目标目录适用的任务规则。所有结论均由下述解析论证给出，不以数值拟合作为证据。没有修改其他研究文件。

## 结论与精确适用范围

设 $M=2N$，$z_a=e^{2\pi i a/M}$，$a=0,\ldots,M-1$。$P=P_N$ 是网格 Fourier modes $0,\ldots,N-1$ 的正交投影，$Q=I-P$。以下行列式均指 $N$ 维占据空间上的压缩
\[
A_u=PD_uP\big|_{\operatorname{ran}P},
\]
而不是整个 $2N$ 维空间上的 $PD_uP$；后者行列式恒为零。

设 $g,h$ 为 unit-modulus 分段常值符号，对每个 $N$ 有完全相同的有限个 jump bonds。其个数 $L$ 固定，各 jump 的圆周角距离有统一正下界 $\delta$。位置可随 $N$ 改变。在各 jump 处按圆周正向定义复差 $\Delta u_j=u_j^+-u_j^-$，并假设
\[
|\Delta g_j|=|\Delta h_j|\qquad(1\le j\le L).
\]
则有仅依赖 $L,\delta$ 的常数 $T$，使
\[
\boxed{\ \|J_g^\dagger J_g-J_h^\dagger J_h\|_{S_1}\le T,\qquad J_u=[P,D_u].\ }
\]

若进一步 $h\in\{1,i\}$，则 $A_h^\dagger A_h\ge I/2$。写 $s_1\le\cdots\le s_N$ 为 $A_g$ 的奇异值：

1. 取 $K=\lceil4T\rceil$、$k=\min(K,N)$，有固定有限个最小奇异值的双边比较
   \[
   e^{-2T}\prod_{j=1}^k s_j
   \le\frac{|\det A_g|}{|\det A_h|}
   \le 2^{K/2}e^{2T}\prod_{j=1}^k s_j.
   \]
2. 对每个 $0\le r\le N$，有更便于应用的上界
   \[
   \boxed{\ \frac{|\det A_g|}{|\det A_h|}
   \le 2^{r/2}e^{T+r/2}\prod_{j=1}^r s_j.\ }
   \]

对 quarter-jump 符号，采用明确约定
\[
\frac{g_j^+}{g_j^-}=e^{i\pi\sigma_j/2},\qquad
\sigma_j\in\{+1,-1\},\qquad
w=\frac14\sum_{j=1}^L\sigma_j\in\mathbb Z.
\]
若 jump 位于 $2N$ 网格的 bond midpoints，且仍满足固定 $L$、统一正间距，则
\[
s_1(A_g),\ldots,s_{|w|}(A_g)=O(N^{-1/4})\quad(w\ne0).
\]
因此，对同一组 jumps 上的任意 $\{1,i\}$ 符号 $h$，
\[
\boxed{\ \frac{|\det A_g|}{|\det A_h|}=O(N^{-|w|/4})\qquad(w\ne0).\ }
\]
这适用于任意固定 jump 个数 $L=2m$，不需要 $m\le6$ 一类限制。常数可依赖 $m$ 和正间距下界，不声明在 endpoint collision 极限统一。该结论是上界，不声明衰减指数最优或存在非零渐近系数。

## 1. 采样光滑核的统一 trace-norm 引理

设 $k\in C^\infty(\mathbb T^2)$，二维 Fourier 展开为
\[
k(x,y)=\sum_{p,q\in\mathbb Z}\widehat k_{pq}e^{ipx+iqy},
\qquad S(k)=\sum_{p,q}|\widehat k_{pq}|<\infty.
\]
定义采样矩阵
\[
(K_M)_{ab}=\frac1M k(\theta_a,\theta_b),\qquad\theta_a=2\pi a/M.
\]
令 $v_p(a)=M^{-1/2}e^{ip\theta_a}$。则
\[
K_M=\sum_{p,q}\widehat k_{pq}v_pv_{-q}^\dagger,
\qquad \|v_pv_{-q}^\dagger\|_{S_1}=1.
\]
故
\[
\boxed{\ \|K_M\|_{S_1}\le S(k).\ }
\]
频率 aliasing 不改变每项 rank-one 矩阵的范数，因而该界对所有 $M$ 统一。比如分部积分给出
\[
S(k)\le C\|(1-\partial_x^2)(1-\partial_y^2)k\|_{L^1(\mathbb T^2)}.
\]
因此，具有统一有限阶导数界的核族有统一采样 trace-norm 界。这是下文使用光滑性的确切含义；并不把离散 off-diagonal smooth 当作未经证明的 uniform trace class。

## 2. 平方单位分割精确剥离投影的快速振荡

对 $a\ne b$，投影核精确为
\[
P_{ab}=\frac1M\sum_{\ell=0}^{N-1}e^{i\ell(\theta_a-\theta_b)}
=\frac{1-(-1)^{a-b}}{M(1-e^{i(\theta_a-\theta_b)})},
\qquad P_{aa}=\frac12.
\]
选取实光滑平方单位分割
\[
\sum_\alpha\psi_\alpha(x)^2=1.
\]
其中每个 jump 有一个函数 $\chi_j$，其支撑只含该 jump；这些 jump 支撑彼此不相交。其余函数的支撑各完全处于一个无 jump 的常值区。这可由圆周上普通 bump 分割归一化构造。固定 $L$ 和正间距下界 $\delta$ 保证所有所需导数界统一。

定义
\[
R=P-\sum_\alpha D_{\psi_\alpha}PD_{\psi_\alpha},
\qquad F(x,y)=1-\sum_\alpha\psi_\alpha(x)\psi_\alpha(y).
\]
实平方分割还给出
\[
F(x,y)=\frac12\sum_\alpha(\psi_\alpha(x)-\psi_\alpha(y))^2.
\]
因此 $F$ 在对角线二阶消失，且
\[
k(x,y)=\frac{F(x,y)}{1-e^{i(x-y)}}
\]
在整个 $\mathbb T^2$ 上有光滑延拓，导数界统一。令 $K_M$ 为该核的采样矩阵，$Z_{aa}=(-1)^a$，则包括对角线在内有精确恒等式
\[
R=K_M-ZK_MZ^\dagger.
\]
$Z$ 是酉矩阵，故上一节直接给出
\[
\|R\|_{S_1}\le 2S(k)\le C_R(L,\delta).
\]
投影的格点级快速振荡在这里被精确的对角酉共轭控制，没有做连续近似。

## 3. 相同 jump 模使局部主项的平方完全相同

由于所有采样乘法算子彼此交换，
\[
J_u=\sum_\alpha D_{\psi_\alpha}J_uD_{\psi_\alpha}+[R,D_u].
\]
无 jump 支撑上的项恒为零。在 $\chi_j$ 的支撑上，写
\[
u=u_j^-+\Delta u_j H_j,
\]
其中 $H_j$ 是在该局部圆周坐标下从 $0$ 跳到 $1$ 的 step；在支撑之外如何延拓不影响结果。$g,h$ 使用同一个 $H_j$。定义
\[
B_j=D_{\chi_j}[P,D_{H_j}]D_{\chi_j},
\qquad L_u=\sum_j\Delta u_j B_j,
\qquad E_u=[R,D_u].
\]
于是 $J_u=L_u+E_u$ 且
\[
\|E_u\|_{S_1}\le2\|R\|_{S_1}\le2C_R.
\]
不同 $B_j$ 的坐标支撑不相交，所以
\[
L_u^\dagger L_u=\sum_j|\Delta u_j|^2B_j^\dagger B_j.
\]
题设从而给出 $L_g^\dagger L_g=L_h^\dagger L_h$。

在 $P\oplus Q$ 分块下，$J_u$ 只有 $D_u$ 的两个非对角块。$D_u$ 酉，故 $\|J_u\|\le1$。$L_u$ 是互不相交的 $D_{\chi_j}J_uD_{\chi_j}$ 块之和，故同样 $\|L_u\|\le1$。因此
\[
\|J_u^\dagger J_u-L_u^\dagger L_u\|_{S_1}
=\|J_u^\dagger E_u+E_u^\dagger L_u\|_{S_1}
\le2\|E_u\|_{S_1}\le4C_R.
\]
最终可取
\[
\boxed{\ T=8C_R,\qquad
\|J_g^\dagger J_g-J_h^\dagger J_h\|_{S_1}\le T.\ }
\]
该常数不依赖 symbol 的 jump 方向或整体相位。

## 4. 从 trace-norm 比较到行列式比较

令 $X_u=A_u^\dagger A_u$。酉性给出
\[
P J_u^\dagger J_uP\big|_{\operatorname{ran}P}=I-X_u,
\]
从而
\[
\|X_g-X_h\|_{S_1}\le T.
\]
若 $h\in\{1,i\}$，令
\[
B=P D_{\mathbf1_{h=i}}P\big|_{\operatorname{ran}P},\qquad0\le B\le I.
\]
则
\[
A_h=I+(i-1)B,\qquad
X_h=I-2B+2B^2=\frac12I+2(B-I/2)^2\ge\frac12I.
\]
并且 $X_g,X_h\le I$。

### 4.1 固定有限个最小奇异值的双边界

按升序写 $x_j=s_j(A_g)^2$、$y_j=s_j(A_h)^2$。Hermitian 特征值的 trace-norm 扰动不等式给出
\[
\sum_{j=1}^N|x_j-y_j|\le T,\qquad \frac12\le y_j\le1.
\]
取 $K=\lceil4T\rceil$、$k=\min(K,N)$。若存在 $j>K$ 使 $x_j<1/4$，则前 $K+1$ 个差之和严格大于 $(K+1)/4>T$，矛盾。因此尾部 $x_j\ge1/4$。

$\log t$ 在 $[1/4,1]$ 上 Lipschitz 常数为 $4$，故
\[
\left|\sum_{j>k}\log\frac{x_j}{y_j}\right|\le4T.
\]
前 $k$ 项直接保留，不对可能为零的 $x_j$ 取对数，即得
\[
e^{-2T}\prod_{j=1}^ks_j(A_g)
\le\frac{|\det A_g|}{|\det A_h|}
\le2^{K/2}e^{2T}\prod_{j=1}^ks_j(A_g).
\]
这也覆盖 $A_g$ 奇异的情形。此处只给出几何依赖的有限 $K$，没有声称其最优或等于 jump 数。

### 4.2 任意 $r$ 的直接上界

定义正半定矩阵
\[
\mathcal R=X_h^{-1/2}X_gX_h^{-1/2}.
\]
由于 $X_h\ge I/2$，
\[
\|\mathcal R-I\|_{S_1}\le2T.
\]
$\mathcal R$ 与 $X_g^{1/2}X_h^{-1}X_g^{1/2}$ 有相同特征值，而
\[
X_g^{1/2}X_h^{-1}X_g^{1/2}\le2X_g.
\]
故升序特征值 $\rho_j=\lambda_j(\mathcal R)$ 满足 $\rho_j\le2s_j(A_g)^2$。

对 $0\le r\le N$，由 $t\le e^{t-1}$ 和 $\rho_j\ge0$，
\[
\begin{aligned}
\det\mathcal R
&\le\left(\prod_{j=1}^r\rho_j\right)
\exp\left(\sum_{j>r}(\rho_j-1)\right)\\
&\le\left(\prod_{j=1}^r\rho_j\right)
\exp\left(\operatorname{Tr}(\mathcal R-I)+r\right)\\
&\le2^r e^{2T+r}\prod_{j=1}^rs_j(A_g)^2.
\end{aligned}
\]
若存在零特征值，上式仍成立，无需使用其对数。又
\[
\det\mathcal R=\frac{|\det A_g|^2}{|\det A_h|^2},
\]
取平方根即得
\[
\boxed{\ \frac{|\det A_g|}{|\det A_h|}
\le2^{r/2}e^{T+r/2}\prod_{j=1}^rs_j(A_g).\ }
\]
特别地 $r=0$ 给出整个行列式比的统一上界 $e^T$。

## 5. Quarter-jump 的 Hardy 因子与符号约定

现在假设 jump 数为 $L=2m$，位置为 $\zeta_j$，且
\[
g_j^+/g_j^-=e^{i\pi\sigma_j/2},\quad\sigma_j=\pm1,
\qquad w=\sum_j\sigma_j/4\in\mathbb Z.
\]
先讨论 $w>0$。定义盘内解析函数
\[
f(z)=\prod_{j=1}^L f_j(z),\qquad
f_j(z)=(1-z/\zeta_j)^{-\sigma_j/4},\qquad f_j(0)=1.
\]
幂的 branch 是从原点连续选定的盘内解析 branch。各奇点分离，最强边界奇性为 $|z-\zeta_j|^{-1/4}$，故 $f\in H^2$。

沿圆周正向通过 $\zeta_j$，$\arg(1-z/\zeta_j)$ 的 jump 为 $-\pi$，所以 $\arg f$ 的 jump 为 $\pi\sigma_j/4$。在 jumps 之间，$\partial_\theta\arg f=-w/2$。因此
\[
z^w f/\overline f
\]
在每段上常值，且其 jump ratio 正好是 $e^{i\pi\sigma_j/2}$。存在 $|c|=1$ 使
\[
\boxed{\ g=c z^w\frac{f}{\overline f},\qquad
\overline g\,f=\overline c\,z^{-w}\overline f.\ }
\]
**在当前正号 jump 约定下，near-null 构造针对 $A_{\overline g}=A_g^\dagger$，不能将第二式误写成 $gf=c z^{-w}\overline f$。** 两者奇异值完全相同，所以最终结论仍是关于 $A_g$ 的。

## 6. 各因子截断：负指数符号、点态界与 midpoint 采样

以下 $S_n f_j$ 指各因子单独的 Taylor 截断，而不是先将整个乘积作任意近似。取
\[
n=\left\lfloor\frac{N-w}{L}\right\rfloor,
\qquad p(z)=\prod_{j=1}^L S_n f_j(z),
\qquad d=\deg p\le Ln\le N-w.
\]
只需讨论足够大的 $N$，使 $n\ge1$。固定 $L,w$ 时 $n\asymp N$。

### 6.1 正、负 quarter 因子的系数和尾部

对 $\sigma=+1$，
\[
(1-t)^{-1/4}=\sum_{\ell\ge0}a_\ell t^\ell,
\qquad a_\ell=(1/4)_\ell/\ell!>0,
\]
且
\[
a_{\ell+1}/a_\ell=(\ell+1/4)/(\ell+1)<1,
\qquad a_\ell=O((\ell+1)^{-3/4}).
\]
Abel 求和或 Dirichlet 尾估计给出，对 $|t|=1,t\ne1$，
\[
|f_+(t)-S_n f_+(t)|\le Cn^{-3/4}|1-t|^{-1}.
\]
另将有限和在 $\ell\asymp |1-t|^{-1}$ 处分拆，低频部分绝对求和、高频部分 Abel 求和，得到
\[
|S_n f_+(t)|\le C|1-t|^{-1/4}.
\]
该界对所有 $n$ 统一。

对 $\sigma=-1$，
\[
(1-t)^{1/4}=1+\sum_{\ell\ge1}b_\ell t^\ell,
\qquad b_\ell<0,
\]
且
\[
|b_{\ell+1}|/|b_\ell|=(\ell-1/4)/(\ell+1)<1,
\qquad |b_\ell|=O(\ell^{-5/4}).
\]
因此各截断一致有界，且 Dirichlet 尾估计甚至给出
\[
|f_-(t)-S_n f_-(t)|\le Cn^{-5/4}|1-t|^{-1}
\le Cn^{-3/4}|1-t|^{-1}.
\]
也有不含距离分母的界 $\|f_--S_nf_-\|_\infty\le Cn^{-1/4}$。负 $\sigma$ 因子没有正的发散奇性，不会使后面的幂次变坏。

### 6.2 分离性控制乘积误差

令 $d_j(z)=|z-\zeta_j|$。所有 exact/truncated 正 $\sigma$ 因子均有包络 $C d_j^{-1/4}$，负 $\sigma$ 因子则一致有界。

将 $f-p$ 作逐因子 telescoping 展开。在某个 $\zeta_\ell$ 的固定小邻域内，其余 $d_j$ 都有统一正下界：

- 第 $\ell$ 个因子的尾误差项至多 $Cn^{-3/4}d_\ell^{-1}$；
- 其他因子的尾误差项至多 $Cn^{-3/4}(1+d_\ell^{-1/4})$，可吸收到 $Cn^{-3/4}d_\ell^{-1}$；
- 所有 jump 邻域之外，全部因子和距离分母一致有界。

故在整个单位圆、除 jumps 外成立统一点态估计
\[
\boxed{\ |f(z)-p(z)|\le C n^{-3/4}\sum_{j=1}^L|z-\zeta_j|^{-1}.\ }
\]
该论证特别使用了 jumps 的正间距，不能不加说明地用于合并奇点。

### 6.3 Midpoint 网格上的严格离散误差

使用归一化采样范数
\[
\|v\|_M^2=\frac1M\sum_{a=0}^{M-1}|v(z_a)|^2.
\]
这与前述欧氏 Hilbert 空间只差全局常数缩放，算子奇异值不变。

若 $\zeta=e^{2\pi i(b+1/2)/M}$ 是 bond midpoint，则
\[
\sum_{a=0}^{M-1}|z_a-\zeta|^{-2}
=\frac14\sum_{a=0}^{M-1}\csc^2\!\left(\frac{\pi(a-b-1/2)}M\right)
=\frac{M^2}{4}=N^2.
\]
最后一步是 $\sum_{a=0}^{M-1}\csc^2(x+\pi a/M)=M^2\csc^2(Mx)$。也可直接按距 midpoint 的格点距离求和得到所需 $O(M^2)$ 界。

由有限项 Cauchy–Schwarz，
\[
\begin{aligned}
\|f-p\|_M^2
&\le C n^{-3/2}\frac1M
\sum_a\left(\sum_j|z_a-\zeta_j|^{-1}\right)^2\\
&\le C n^{-3/2}L\sum_j\frac1M\sum_a|z_a-\zeta_j|^{-2}\\
&\le C n^{-3/2}M=O(N^{-1/2}).
\end{aligned}
\]
因此
\[
\boxed{\ \|f-p\|_M=O(N^{-1/4}).\ }
\]
这是直接在离散样本上证明的估计，没有交换无限 Fourier 和与采样投影，也没有从连续 $L^2$ 误差未经证明地跳到离散误差。

## 7. $w$ 维 near-null 空间及 degree 边界检查

对 $r=0,\ldots,w-1$，取
\[
v_r(z)=z^r p(z).
\]
因为 $d\le N-w$，
\[
\deg v_r\le N-w+(w-1)=N-1,
\]
所以全部 $v_r$ 精确位于 $\operatorname{ran}P$。

另一方面，
\[
z^{r-w}\overline{p(z)}
\]
的频率范围为 $[r-w-d,r-w]$，且
\[
r-w-d\ge r-N\ge-N,
\qquad r-w\le-1.
\]
因此它的采样值精确位于 modes $-N,\ldots,-1$，即 $\operatorname{ran}Q$。这里 $-N$ 在 $2N$ 网格上正好对应 mode $N$，仍为空空间端点；没有越界 aliasing。

由上一节的精确边界关系，
\[
\overline g\,p-\overline c z^{-w}\overline p
=\overline g(p-f)+\overline c z^{-w}(\overline f-\overline p).
\]
投影消去上述空空间多项式，得到
\[
\|A_{\overline g}v_r\|_M\le2\|p-f\|_M=O(N^{-1/4}).
\]
但为了推导 $w$ 个小奇异值，还需检查整个 $w$ 维空间的统一 Gram 下界，不能只列出 $w$ 个单独的小残差向量。

### 7.1 低次系数给出 uniform Gram 下界

写 $q(z)=\sum_{r=0}^{w-1}c_rz^r$。因 $p(0)=1$，从 $c=(c_0,\ldots,c_{w-1})$ 到 $pq$ 的前 $w$ 个 Taylor 系数的映射，是对角元为 $1$ 的下三角 Toeplitz 矩阵 $\mathcal T$。

$p$ 的固定有限个低次系数对所有 endpoint 位置和足够大 $N$ 一致有界；当 $n\ge w-1$ 时，它们恰等于 $f$ 的相应系数。因为 $w,L$ 固定，$\mathcal T=I+B$ 中严格下三角矩阵 $B$ 的范数一致有界，而
\[
\mathcal T^{-1}=\sum_{\ell=0}^{w-1}(-B)^\ell
\]
同样一致有界。

$\deg(pq)\le N-1$，离散 Fourier 正交性因而给出精确 Parseval 恒等式；只保留前 $w$ 个系数即得
\[
\|pq\|_M\ge\|\mathcal Tc\|_2\ge c_*\|c\|_2\qquad(c_*>0)
\]
以及 $\dim\operatorname{span}\{v_0,\ldots,v_{w-1}\}=w$。这里没有假设 $p$ 逐点远离零。

又 $\|q\|_\infty\le\sqrt w\|c\|_2$，故整个空间上有
\[
\|A_{\overline g}(pq)\|_M
\le2\|q\|_\infty\|p-f\|_M
\le C N^{-1/4}\|pq\|_M.
\]
奇异值 min–max 原理遂给出
\[
s_w(A_{\overline g})\le CN^{-1/4}.
\]
因为 $A_{\overline g}=A_g^\dagger$，其奇异值与 $A_g$ 完全相同，所以
\[
s_1(A_g),\ldots,s_w(A_g)\le CN^{-1/4}.
\]
若 $w<0$，对 $\overline g$ 先应用上述正 winding 构造；其 jump signs 为 $-\sigma_j$，winding 为 $-w>0$，并再次使用压缩与其伴随具有相同奇异值，得到同一结论，指标数为 $|w|$。

## 8. 行列式衰减及 powers/species

$h\in\{1,i\}$ 的每个真正 jump 都有复差模 $\sqrt2$；quarter-jump 的 $g$ 也有 $|\Delta g_j|=\sqrt2$。所以它们满足第 3 节的比较假设。

在第 4.2 节中取 $r=|w|$，合并 near-null 空间估计：
\[
\frac{|\det A_g|}{|\det A_h|}
\le 2^{|w|/2}e^{T+|w|/2}
\prod_{j=1}^{|w|}s_j(A_g)
=O(N^{-|w|/4}).
\]
固定 $L=2m$ 时所有常数有限；没有使用 variance bounds 或对 $m$ 的小值限制。

最后说明行列式的幂。将酉矩阵 $D_u$ 按 $P\oplus Q$ 分块为
\[
D_u=\begin{pmatrix}A&B\\ C&D\end{pmatrix},
\qquad
J_u=\begin{pmatrix}0&B\\-C&0\end{pmatrix}.
\]
则
\[
I-J_u^\dagger J_u
=\begin{pmatrix}A^\dagger A&0\\0&D^\dagger D\end{pmatrix}.
\]
这里两个空间都为 $N$ 维。由
\[
AA^\dagger=I-BB^\dagger,\qquad D^\dagger D=I-B^\dagger B
\]
及方阵 $B$ 的左右 Gram 矩阵同谱，可知 $A,D$ 有相同奇异值。于是
\[
\boxed{\ \det(I-J_u^\dagger J_u)=|\det A_u|^4.\ }
\]
所以：

- 单 species 的 determinant amplitude 模是 $|\det A_u|$；从全 $2N$ 空间缺陷行列式恢复它，要取四次方根。
- 单 species 的模平方权重是 $|\det A_u|^2$；上述最小奇异值积及衰减幂均平方。
- 若有 $d$ 个相同且独立的 species，先明确总量是 amplitude 还是模平方权重，再分别取第 $d$ 次幂；不存在自动附加的 species 因子。

## 9. 验证记录与边界

**Verified（解析）：** 精确有限密度投影核；平方分割的二阶对角消失；平滑核采样的 rank-one trace-norm 界；局部主项平方的 jump 模匹配；两类行列式不等式；quarter-jump 共轭方向；负 $\sigma$ 因子系数符号与尾部；midpoint 逆平方距离求和；near-null 空间的两个 degree 端点与 Gram 下界；全空间缺陷行列式的四次幂。

**解析特殊情形检查：** 若只有两个互补常值区域，则全局已有 $J_u=\Delta u[P,H]$。相同 jump 模使 $J_g^\dagger J_g=J_h^\dagger J_h$ 完全精确，压缩奇异值及行列式模完全相同，与一般结论相容。$w=0$ 时本 near-null 构造不产生小奇异值，不据此宣称衰减。

**Assumptions：** 对每个 $N$ 两符号的 jump bonds 完全一致；固定有限 $L$；统一正的圆周角间距；unit-modulus；Hardy 衰减应用额外要求 quarter jumps 和 bond-midpoint 采样。所有大 $N$ 断言允许吸收有限个小 $N$ 例外。

**Not claimed：** $K$ 最优；$N^{-|w|/4}$ 最优或饱和；非零渐近系数；endpoint collision 极限的统一性；仅有共同极限、但有限 $N$ 的 jump bonds 不同的符号比较。没有进行数值或 CAS 验证，证明不依赖这些检验。
