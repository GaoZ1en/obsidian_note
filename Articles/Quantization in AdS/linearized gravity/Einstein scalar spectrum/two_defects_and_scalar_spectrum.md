# AdS₃ 双粒子缺陷、量子 Wilson 线与 Einstein–Scalar 谱

日期：2026-09-17。核对基线：`GaoZ1en/obsidian_note`，提交 `f5fdf8308d7dfdcb84b70f6a0de12fe97855f6b4`。

## 结论与准确范围

本笔记实际完成的是：双椭圆 holonomy 的矩阵乘积与经典能量展开；引力 Wilson 线的一阶量子 monodromy/Casimir 对角化；与笔记中双标量 primary 系数的逐式比较；以及最低双标量态的独立应力张量收缩、时间平均和径向积分。

最主要的匹配为

$$\begin{align}
\boxed{\gamma_{n,\ell}^{\rm universal} =-4g\,[\Delta^2+2n(2\Delta+n-1)]+O(g^2).}
\end{align}$$

这里 $g=G_N/L$，能量以 $1/L$ 为单位。取 $L=1$ 后，$g$ 就是用户笔记中的 $G$。对于用户指定的最小 Einstein–实标量交换问题，这个普适系数与所有偶自旋 $|\ell|\ge4$ 的已给结果一致；$\ell=0,\pm2$ 有明确非零的额外贡献。

**量子公式并非仅由两个经典 trace 推出。** 使用的量子输入是引力 Wilson 线的 stress-tensor connection，以及将其 chiral monodromy 数据与固定整数自旋的完整交换问题相匹配的标准结果 [W]。原库的历史 audit 已经把同一文献列为高自旋输入。因此这里不是声称发现了一个独立于该输入的新高自旋谱证明，而是完成它的缺陷/Wilson-line 解释、归一化检查和低自旋对照。

**没有在这里完成**整个带两个世界线缺陷和 Brown–Henneaux 边界模的约化 CPS 构造、从其辛形式出发的径向 action quantization，以及接触/碰撞扇区量子边条件的推导。下面将经典计算、量子输入和完整场论结果分开标记，避免把三者混同。

## 1. 约定与比较对象

用户主笔记的约定 [R1,R2] 是

$$\begin{align}
L=1,\qquad \kappa^2=16\pi G,\qquad m_\phi^2=\Delta(\Delta-2),\qquad \Delta>1.
\end{align}$$

$\Delta$ 是重整化后的物理单标量最低能隙。标量取标准无源边条件；引力取 Brown–Henneaux falloff、固定边界时间，以及指定的齐次解约定。这里比较的是 $h_{\mu\nu}=0$、$k_{\mu\nu}=k_{\phi,\mu\nu}\ne0$ 的 sourced branch，而非把引力回馈置零。

恢复半径时定义

$$\begin{align}
g=G_N/L,\qquad \mathcal E=L(E_{\rm ADM}-E_{\rm AdS}),\qquad h_\pm=\frac{\mathcal E\pm J}{2},\qquad c=\frac{3}{2g}+O(1).
\end{align}$$

一阶结果不依赖 $c$ 与 $g$ 关系中的有限 $O(1)$ 修正。后面明确展示的 $g^2$ **VMFT 参考展开**则另行假定 $c=3/(2g)$ 恰好成立，不能不加说明地解释为 bulk 二圈/二阶答案。

自由双标量 primary 的左右权重为

$$\begin{align}
(h_P,\bar h_P)=(\Delta+k,\Delta+l),\qquad n=\min(k,l),\quad \ell=k-l,
\end{align}$$

$$\begin{align}
\mathcal E^{(0)}=2\Delta+2n+|\ell|.
\end{align}$$

实标量 Bose 对称性最后只保留偶 $\ell$。用 $h_0=\Delta/2$ 表示**单粒子**的单侧 $\mathfrak{sl}_2$ 最低权；不要与双粒子最低权 $H=\Delta+n$ 混淆。

世界线质量参数另记

$$\begin{align}
\mu_i=m_{{\rm wl},i}L.
\end{align}$$

它不是直接等于 $\sqrt{\Delta(\Delta-2)}$。经典点源质量、量子 KG 质量参数和物理 AdS 能隙之间需要匹配；特别是 $1<\Delta<2$ 时 KG 质量平方为负，不能把相应态不加说明地当成正质量经典点粒子。有限 $\Delta$ 的量子结果以下用最低权 $h_0$ 处理，而不靠这种质量替换。

## 2. 双缺陷 Holonomy：可以精确算出的经典部分

### 2.1 单侧矩阵乘积

采用 deficit-normalized 的局部 $SL(2,\mathbb R)$ lift：单个无自旋点源的 deficit angle 为 $8\pi g\mu_i$，记半角

$$\begin{align}
\nu_i=4\pi g\mu_i.
\end{align}$$

每个 chiral sector $\sigma=+,-$ 写成

$$\begin{align}
H_i^\sigma=\cos\nu_i\,\mathbf1+\sin\nu_i\,N_i^\sigma, \qquad (N_i^\sigma)^2=-\mathbf1, \qquad \operatorname{tr}N_i^\sigma=0.
\end{align}$$

在同一时间定向的椭圆共轭类上，相对共轭参数可写为

$$\begin{align}
C_\sigma=-\frac12\operatorname{tr}(N_2^\sigma N_1^\sigma) =\cosh\eta_\sigma\ge1.
\end{align}$$

例如可直接取

$$
N_1=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
D(\eta)=\operatorname{diag}(e^{\eta/2},e^{-\eta/2}),\qquad
N_2=D(\eta)N_1D(\eta)^{-1}.
$$

于是总 holonomy $H_{12}^\sigma=H_2^\sigma H_1^\sigma$ 满足

$$\begin{align}
\boxed{\frac12\operatorname{tr}H_{12}^\sigma =\cos\nu_1\cos\nu_2-C_\sigma\sin\nu_1\sin\nu_2.} \tag{2.1}
\end{align}$$

这已在附带脚本中用两个 $2\times2$ 矩阵直接验算；经典构造与相关 lift 约定参见 [H]。$C_\sigma$ 编码相对共轭数据，不能在尚未指定约化辛结构时直接叫它“固定的量子径向作用量”。任意选取两个实数 $C_\pm$ 也不等于已经证明对应的完整全局世界线几何满足所有正则性条件。

### 2.2 共轭不变量对应的常数边界代表

限制在与弱场 AdS 缺陷连续的椭圆分支，并显式选择无额外绕数的 lift。设

$$\begin{align}
\chi_\sigma=\arccos\!\left( \cos\nu_1\cos\nu_2-C_\sigma\sin\nu_1\sin\nu_2 \right),\qquad 0\le\chi_\sigma<\pi,
\end{align}$$

$$\begin{align}
a_\sigma=1-\frac{\chi_\sigma}{\pi}.
\end{align}$$

在这里使用的常数 Bañados 代表上，

$$\begin{align}
\boxed{ h_\sigma=\frac{1-a_\sigma^2}{16g} =\frac{\chi_\sigma}{8\pi g} -\frac{\chi_\sigma^2}{16\pi^2g},\qquad \mathcal E=h_++h_-,\quad J=h_+-h_-.
}
\tag{2.2}
\end{align}$$

全局 AdS 的 spinorial holonomy 与这里的 deficit-normalized lift 相差一个中心符号：边界常数代表的 trace 可写成 $-\cos\chi_\sigma=\cos(\pi a_\sigma)$。**不能只给一个无分支标记的 trace 就在所有椭圆/双曲扇区中无歧义反解能量。** 本文没有把主值 arccos 延伸到超阈值黑洞或任意绕数。

固定 $\mu_i,C_\sigma$，令

$$\begin{align}
W_\sigma^2=\mu_1^2+\mu_2^2+2C_\sigma\mu_1\mu_2.
\end{align}$$

由 (2.1) 展开得

$$\begin{align}
\chi_\sigma =4\pi gW_\sigma +\frac{(4\pi g)^3(C_\sigma^2-1)\mu_1^2\mu_2^2}{6W_\sigma} +O(g^5),
\end{align}$$

$$\begin{align}
\boxed{ h_\sigma=\frac{W_\sigma}{2}-gW_\sigma^2 +\frac{4\pi^2g^2(C_\sigma^2-1)\mu_1^2\mu_2^2}{3W_\sigma} +O(g^3).
}
\tag{2.3}
\end{align}$$

这是**固定经典输入**的受控展开。附带数值检查直接比较 arccos 闭式与 (2.3)，剩余项按 $g^3$ 缩放。

若令 $\mathcal E_0=(W_++W_-)/2$、$J_0=(W_+-W_-)/2$，则在相同固定输入下

$$\begin{align}
\delta\mathcal E=-2g(\mathcal E_0^2+J_0^2)+O(g^2), \qquad \delta J=-4g\mathcal E_0J_0+O(g^2).
\end{align}$$

这**不是**固定整数 $\ell$ 和固定径向 action 的量子能移；上式中 $J$ 自己也变了。把自由理论的 $(n,\ell)$ 直接塞给 $W_\pm$ 会算错比较对象。

### 2.3 同轴静止极限与单体能量扣除

令 $C_+=C_-=1$，并要求 $\nu_1+\nu_2<\pi$。那么

$$\begin{align}
\chi_+=\chi_-=\nu_1+\nu_2,
\end{align}$$

$$\begin{align}
\mathcal E_{12}=\mu_1+\mu_2-2g(\mu_1+\mu_2)^2.
\end{align}$$

单体能量分别为

$$\begin{align}
e_i^{\rm cl}=\mu_i-2g\mu_i^2.
\end{align}$$

扣除两份单体能量以后，连通 binding energy 是

$$\begin{align}
\boxed{\mathcal E_{12}-e_1^{\rm cl}-e_2^{\rm cl} =-4g\mu_1\mu_2.} \tag{2.4}
\end{align}$$

若把此点缺陷模型的单体边界能量匹配为指定 $\Delta_i$，则

$$\begin{align}
\mu_i=\frac{1-\sqrt{1-8g\Delta_i}}{4g} =\Delta_i+2g\Delta_i^2+O(g^2),
\end{align}$$

因此

$$\begin{align}
\mathcal E_{12}-\Delta_1-\Delta_2 =-4g\Delta_1\Delta_2+O(g^2).
\end{align}$$

等质量给出 $gU_0=-4g\Delta^2$。在大质量极限这是自然的半经典检查；在有限 $\Delta$ 下，上面的单体匹配是模型输入，不是已证明的 KG 世界线量子化。它尤其**不等于**完整最小实标量模型的 $g_{00}$。同轴重合也只是一个合并缺陷的极限，不是一般分离的双世界线轨道解。

### 2.4 必须纠正：Trace 不是任意边界态的能量

在 Brown–Henneaux 边界条件下，同一个 holonomy 共轭类包含不同的边界引力子状态；对常数代表提取出的 orbit 标签，与固定边界时间生成元的零模 charge 要区别 [B]。

这可以直接验算。取常数 chiral stress 参数 $\mathcal L$，做圆周微分同胚

$$\begin{align}
f(\phi)=\phi+\epsilon\sin(k\phi),\qquad |\epsilon k|<1.
\end{align}$$

变换为

$$\begin{align}
\mathcal L_f=(f')^2\mathcal L-\frac12\{f,\phi\}.
\end{align}$$

它保持 Hill monodromy 共轭类，却有

$$\begin{align}
\langle\mathcal L_f\rangle-\mathcal L =\frac{\epsilon^2k^2(k^2+4\mathcal L)}8+O(\epsilon^3).
\end{align}$$

特别对真空 $\mathcal L=-1/4$，

$$\begin{align}
\delta h=\frac{c\epsilon^2k^2(k^2-1)}{48}+O(\epsilon^3)>0\quad(k\ge2).
\end{align}$$

所以“两个 trace 给出所有态的 $E,J$”有显式反例。匹配谱时必须说明取哪个 primary/orbit 代表，不能丢掉这个步骤。

## 3. 量子 Wilson 线：径向多项式从 Casimir 出来

### 3.1 不以拟合代替量子输入

采用引力 Wilson 线的 chiral connection [W]

$$\begin{align}
a(z)=\left(L_1+\frac6cT(z)L_{-1}\right)dz.
\end{align}$$

$L_a$ 作用于第一条线的 $\mathfrak{sl}_2$ 表示；$T$ 的模作用于第二个状态。进入适当 interaction picture 后，可以使用

$$\begin{align}
H_I(z)=-\left(\widetilde L_1-2z\widetilde L_0+z^2\widetilde L_{-1}\right)T(z), \qquad T(z)=\sum_m L'_m z^{-m-2}.
\end{align}$$

取一圈的留数立即得到

$$\begin{align}
\oint H_I(z)dz=4\pi i\,\widetilde L\cdot L',
\end{align}$$

$$\begin{align}
\widetilde L\cdot L' =\widetilde L_0L'_0-\tfrac12 (\widetilde L_1L'_{-1}+\widetilde L_{-1}L'_1).
\end{align}$$

故一阶 Wilson monodromy 为

$$\begin{align}
U_{\rm wind} =1+\frac{24\pi i}{c}\widetilde L\cdot L'+O(c^{-2}). \tag{3.1}
\end{align}$$

以 $t=2\pi N$ 识别绕数和柱面时间，比较 $e^{-i\delta h\,t}$ 得相应 chiral 相位能移算符

$$\begin{align}
\boxed{ \delta H_{\rm ch}=-\frac{12}{c}\widetilde L\cdot L' =-\frac6c(C_{12}-C_1-C_2).
}
\tag{3.2}
\end{align}$$

这是 **量子** holonomy：经典 Lie-algebra 方向现在是表示空间里的算符。上式包括算符代数中的 $-h$ 项，不是先取经典质量平方再补一个猜测。

### 3.2 全径向级数的对角化

在正最低权 $\mathfrak{sl}_2$ 模（需要时取群的 universal cover）中，

$$\begin{align}
\mathcal D^+_{h_1}\otimes\mathcal D^+_{h_2} =\bigoplus_{n\ge0}\mathcal D^+_{h_1+h_2+n}.
\end{align}$$

$C_2(h)=h(h-1)$，所以

$$\begin{align}
\boxed{ \delta h_n=-\frac6c\left[ C_2(h_1+h_2+n)-C_2(h_1)-C_2(h_2) \right].
}
\tag{3.3}
\end{align}$$

不必把分解当黑箱。取未归一化基

$$\begin{align}
|k,n-k\rangle=(L_{-1})^k|h_1\rangle \otimes(L'_{-1})^{n-k}|h_2\rangle.
\end{align}$$

最低权向量 $|P_n\rangle=\sum_{k=0}^n c_k|k,n-k\rangle$ 的系数由

$$\begin{align}
c_0=1,\qquad c_{k+1}=-c_k\frac{(n-k)(2h_2+n-k-1)}{(k+1)(2h_1+k)} \tag{3.4}
\end{align}$$

确定。由 $(L_1+L'_1)|P_n\rangle=0$，其 Casimir 必为 $C_2(h_1+h_2+n)$。Casimir 与总 raising operator 对易，故这条 chiral 塔上的 descendants 共用同一个相位能移。脚本独立构造了有限层矩阵、非平凡 Gram 内积及 (3.4)，验证了最低权条件、自伴性和 descendant intertwining。

### 3.3 不能漏掉的固定自旋匹配

在用户的双标量标记中

$$\begin{align}
(k,l)=(n+\max(\ell,0),n+\max(-\ell,0)).
\end{align}$$

**不能**把 (3.3) 分别代入 $k,l$ 后直接相加，冒充完整物理谱。若这么做，则一般

$$\begin{align}
\delta J_{\rm naive}=\delta h_{n+|\ell|}-\delta h_n\ne0.
\end{align}$$

等质量且 $\ell>0$ 时具体是

$$\begin{align}
\delta J_{\rm naive} =-4g\ell(2\Delta+2n+\ell-1),
\end{align}$$

会产生非整数自旋。这正反映单独左右 vacuum blocks 并非完整、单值的标量四点函数 [W,V]。

固定物理整数自旋，完整交换问题中匹配的径向标签是较小的 chiral level $n=\min(k,l)$。在普适高自旋区间，较小权的修正为 (3.3)，另一个权随固定 $J$ 取同一修正，因此

$$\begin{align}
\gamma_n^{\rm universal}=2\delta h_n =-\frac{12}{c}\left[C_2(h_1+h_2+n)-C_2(h_1)-C_2(h_2)\right]. \tag{3.5}
\end{align}$$

这一 **Wilson 数据到固定自旋交换数据** 的识别使用了 [W] 的交叉道/反演结果；它不是经典 trace 的自动推论。自旋二交换在高于交换自旋的区域给出这里使用的普适项，而有限个低自旋需要完整补全。对本实标量问题最后比较 $|\ell|\ge4$。

现在令 $h_1=h_2=\Delta/2$，则

$$\begin{align}
C_2(\Delta+n)-2C_2(\Delta/2) =\frac{\Delta^2}{2}+2\Delta n+n(n-1).
\end{align}$$

用 $12/c=8g+O(g^2)$ 得

$$\begin{align}
\boxed{ \gamma_n^{\rm universal} =-4g[\Delta^2+2n(2\Delta+n-1)]+O(g^2) =gU_n+O(g^2).
}
\tag{3.6}
\end{align}$$

这与库中 $|\ell|\ge4$ 的系数逐项恒等 [R2,R3]。其非平凡处包括有限 $\Delta$ 和任意固定 $n$，而不仅是 $\Delta\to\infty,n=0$。$n(n-1)$ 中的线性项来自量子 Casimir $h(h-1)$，相对于把它粗略替成 $h^2$ 的结果，多出 $+8gn$。

### 3.4 不依赖猜多项式的 Chiral Block 恒等式

等质量下定义

$$\begin{align}
F(z)=\frac{z^\Delta}{(1-z)^\Delta},\qquad \mathscr C=z^2\left[(1-z)\partial_z^2-\partial_z\right].
\end{align}$$

直接微分可得

$$\begin{align}
\boxed{\left[\mathscr C-2C_2(\Delta/2)\right]F(z) =\frac{\Delta^2}{2}\frac{1+z}{1-z}F(z).}
\end{align}$$

而 $g_H(z)=z^H{}_2F_1(H,H;2H;z)$ 满足 $\mathscr Cg_H=C_2(H)g_H$。利用自由分解

$$\begin{align}
F(z)=\sum_{n\ge0}\frac{(\Delta)_n^2}{n!(2\Delta+n-1)_n}\,g_{\Delta+n}(z),
\end{align}$$

上式逐块乘上 $C_2(\Delta+n)-2C_2(\Delta/2)$。这正是 stress-tensor block 的 $\log z$ 系数要求的权重；乘以 $-6/c$ 后对应每个 block 的 $\gamma_n/2$。因此 (3.6) 的全 $n$ 多项式不是对有限几个谱值的拟合。脚本验证了微分恒等式，并用三个有理质量检查该自由分解至第十二阶。这仍是 chiral 交换数据，固定物理自旋的匹配仍遵守 §3.3 的范围。

### 3.5 重轻极限检查

不等质量时 (3.5) 给出

$$\begin{align}
\gamma_n=-4g\,[\Delta_1\Delta_2+2n(\Delta_1+\Delta_2+n-1)].
\end{align}$$

当 $\Delta_1\gg\Delta_2,n$ 时，领先部分是

$$\begin{align}
\gamma_n\simeq-4g\Delta_1(\Delta_2+2n).
\end{align}$$

这与重 conical defect 上正规 scalar probe 的红移频率

$$\begin{align}
\omega_{n\ell}=|\ell|+\alpha(\Delta_2+2n),\qquad \alpha=1-4g\mu_1,
\end{align}$$

在 $\mu_1\simeq\Delta_1$ 的半经典匹配下一致。对两个质量相近的粒子，只用 probe 公式会遗漏同阶项，所以不能把这个检查反过来当成全 $n$ 的双体推导。

## 4. 和低自旋场论结果精确比较

定义

$$\begin{align}
H=\Delta+n,\qquad \mu_s=\Delta(\Delta-2),\qquad C=H(H-1).
\end{align}$$

这里 $\mu_s$ 是 scalar mass squared 的简写，与前面的世界线质量 $\mu_i$ 无关。

用户笔记可写成

$$\begin{align}
\frac{\gamma_{n\ell}}g=U_n+d_{n\ell},
\end{align}$$

$$\begin{align}
\boxed{d_{n0}= \frac{2[15C^2-(12+10\mu_s)C-\mu_s^2+6\mu_s]} {(2H-3)(2H-1)(2H+1)},}
\end{align}$$

$$\begin{align}
\boxed{d_{n,\pm2}= \frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)} {(2H-1)(2H+1)(2H+3)},\qquad d_{n\ell}=0\ (|\ell|\ge4).} \tag{4.1}
\end{align}$$

这些差值不是由 classical holonomy calculation 新推导出来的；它们来自主笔记的最小 scalar EFT 结果，当前工作把它们与 Wilson 普适项相减并作代数核查。

例如 $\Delta=2$，表中所有数字是 $\gamma/g$：

| $n$ | Wilson 普适项 | 完整 $\ell=0$ | 完整 $\ell=2$ | 完整 $\ell\ge4$ |
| --: | ---------: | ----------: | ----------: | ------------: |
|   0 |      $-16$ |     $-56/5$ |   $-552/35$ |         $-16$ |
|   1 |      $-48$ |  $-1368/35$ |  $-1000/21$ |         $-48$ |
|   2 |      $-96$ |    $-416/5$ |  $-7352/77$ |         $-96$ |

### 4.1 Spin-Zero 差值并不全是湮灭贡献

审查笔记 [R3] 的分解是

$$\begin{align}
g^x_{n0}=U_n\frac{2H-2}{2H-1}, \qquad g^s_{n0}=-\frac{2(C+\mu_s)^2}{(2H-3)(2H-1)(2H+1)},
\end{align}$$

$$\begin{align}
g_{n0}=g^x_{n0}+g^s_{n0}.
\end{align}$$

因此

$$\begin{align}
d_{n0}=-\frac{U_n}{2H-1}+g^s_{n0}.
\end{align}$$

spin-two 残差则等于该分解的 annihilation 项，$|\ell|>2$ 的 annihilation 项为零。不能把 $d_{n0}$ 和 $d_{n2}$ 一概命名为 recoil，也不能把前者全部叫 annihilation。

两条保持粒子身份的 Wilson/worldline 缺陷只记录了特定引力交换通道，不自动包含实标量完整 Fock-space 交换补全。波函数重叠的几何解释有参考价值 [V,WL]，但“低自旋精确截断于 0、2”是完整源/通道的表示论事实；不能只凭“高自旋离得远”证明一个精确整数阈值。

### 4.2 最低态：本次独立完成的 Bulk contraction/integral

使用 [R1] 已给出的正规 scalar-sourced response，不重新求解整个核。设

$$\begin{align}
y=1+r^2,\qquad \phi_0=\frac{y^{-\Delta/2}}{\sqrt{2\pi}}\cos(\Delta t).
\end{align}$$

$$\begin{align}
k_{tt}=\frac{\Delta}{8\pi} \left[1-\frac{\Delta-1}{\Delta+1}y^{-\Delta}\cos(2\Delta t)\right],
\end{align}$$

$$\begin{align}
k_{rr}=\frac{\Delta}{8\pi y^2} \left[1-y^{1-\Delta}-(y-1)y^{-\Delta}\cos(2\Delta t)\right], \qquad k_{\varphi\varphi}=0.
\end{align}$$

直接从最小 scalar stress tensor 得

$$\begin{align}
T^{tt}=\frac{\dot\phi_0^2}{2y^2} +\frac{(\partial_r\phi_0)^2}{2} +\frac{m_\phi^2\phi_0^2}{2y},
\end{align}$$

$$\begin{align}
T^{rr}=\frac{y^2(\partial_r\phi_0)^2}{2} +\frac{\dot\phi_0^2}{2} -\frac{ym_\phi^2\phi_0^2}{2}.
\end{align}$$

利用时间平均 $\langle\cos^2\rangle=\langle\sin^2\rangle=1/2$、 $\langle\cos2\theta\cos^2\theta\rangle=1/4$、 $\langle\cos2\theta\sin^2\theta\rangle=-1/4$，以及 $rdr=dy/2$，得到

$$\begin{aligned}
I_\Delta&=\int_0^\infty r\,dr\,\langle k_{tt}T^{tt}+k_{rr}T^{rr}\rangle\\
&=\frac{\Delta^2}{128\pi^2(\Delta+1)} \left[2(\Delta+1)-\frac{3(\Delta+1)}{2\Delta-1} +2-\frac{2\Delta}{2\Delta+1}\right].
\end{aligned}$$

对于 $\phi_0$ 的 cos 归一化，转换到 $\phi=F(b e^{-i\Delta t}+b^\dagger e^{i\Delta t})$ 的正规序 $(b^\dagger)^2b^2$ 系数需乘 16；二粒子矩阵元再乘 2。 结合 $H^{(2)}=-\kappa^2\langle\int kT\rangle/4$、角向积分 $2\pi$、$\kappa^2=16\pi g$，

$$\begin{align}
\boxed{ \frac{\gamma_{00}}g=-256\pi^2 I_\Delta =\frac{2\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1}.
}
\tag{4.2}
\end{align}$$

这与库内 lowest-state 结果相同，却不同于 $-4\Delta^2$。差值为

$$\begin{align}
\boxed{ \frac{\gamma_{00}-gU_0}{g} =\frac{2\Delta^2(2\Delta+5)}{4\Delta^2-1}.
}
\tag{4.3}
\end{align}$$

这项检查实际使用了给定 response，独立执行应力张量收缩和积分；它不只是把库里的最终 $g_{00}$ 公式再次代数展开。脚本同时以五个质量值做高精度径向 quadrature。

### 4.3 什么半经典近似确实成立

固定 $n$ 且 $\Delta\to\infty$：

$$\begin{align}
d_{n0}=\Delta+7n+\frac52+O(\Delta^{-1}), \qquad d_{n2}=\frac{(n+1)(n+2)}{2\Delta}+O(\Delta^{-2}).
\end{align}$$

相对于 $U_n\sim-4\Delta^2$，spin-zero 残差小一阶，spin-two 残差小三阶。这解释了为何粗粒子的缺陷图像可抓到大质量领先项，而在 $\Delta=2$ 一类有限质量问题中不能把差值忽略。若 $n$ 与 $\Delta$ 一起增长，要重新取相应极限，不能套用此固定 $n$ 展开。

## 5. 一个可写出的 All-C 参考式：不是完整 All-Orders Scalar 答案

Virasoro vacuum fusion 提供一种精确的量子参照 [V]。取

$$\begin{align}
c=1+6Q^2,\qquad Q=b+b^{-1},\qquad h(\alpha)=\alpha(Q-\alpha).
\end{align}$$

对这里的弱引力 $c>25$，选 $0<b<1$，并令

$$\begin{align}
\alpha=\frac{Q-\sqrt{Q^2-2\Delta}}2, \qquad h(\alpha)=\Delta/2.
\end{align}$$

离散 vacuum-fusion poles 为

$$\begin{align}
\alpha_n=2\alpha+nb,\qquad \alpha_n<Q/2.
\end{align}$$

相应的固定自旋 Regge 轨迹参考式是

$$\begin{align}
\boxed{ \gamma_n^{\rm VMFT}=2[h(2\alpha+nb)-\Delta-n] =-4(\alpha+nb)^2+2n(n+1)b^2.
}
\tag{5.1}
\end{align}$$

由 $b^2=4g+O(g^2)$、$\alpha=b\Delta/2+O(b^3)$，(5.1) 再次展开为 (3.6)。这是一项独立的公式一致性检查，但量子 fusion pole 位置本身是额外理论输入，不是由我们的经典矩阵计算证明的。

**(5.1) 的范围是 vacuum-fusion/大自旋普适数据，不是任意有限自旋下最小 Einstein–实标量理论的完整能谱。** 单独把左右 vacuum block 相乘并不产生合法完整 Euclidean correlator；缺少的 double/multi-trace 补全也不能忽略 [V]。

仅作为可复算参考，若额外精确定义 $c=3/(2g)$，则

$$\begin{aligned}
\gamma_n^{\rm VMFT} ={}&gU_n\\
&-\frac{8g^2}{3} \left[6\Delta^3+12\Delta^2n+\Delta^2+28\Delta n+26n^2-26n\right] +O(g^3).
\end{aligned}$$

若 $c$ 有有限重整化，换算成 $g$ 后的二阶系数也变；此外完整 scalar EFT 还会有未由 vacuum data 固定的效应。因此这行**不是**对用户二阶微扰谱的预测。

## 6. 真正完整的双缺陷相空间路线还需要什么

要把起初设想的

$$\begin{align}
H_2H_1\longrightarrow E(I_r,J)\longrightarrow E(n,\ell)
\end{align}$$

变成一个不借助固定自旋交叉道输入的独立推导，需要在指定模型中显式获得以下数据，而不是只增算 trace 展开：

1. EH/CS 加世界线作用量在指定 Brown–Henneaux 边界与 puncture 条件下的约化辛形式；分清可作 proper quotient 的变换与 physical boundary gravitons。
2. 径向 action 与角向 action 同 holonomy/conjugacy 参数的关系，包含 $O(g)$ 修正；这保证在比较能移时真正固定 $I_r,J$，而不是固定自由理论的 boost。
3. 世界线重合/碰撞时的量子边条件和与最小实标量理论的匹配。有限 $\Delta$ 的 annihilation/overlap completion 不能由单粒子 deficit angle 决定。
4. primary 分支选择与单体物理质量条件。否则会把 boundary descendants 或单体自能错误计入二粒子 binding energy。

最近的 punctured-gravity/Teichmüller 路线 [P] 是相关背景，但本报告不把其 proposals 当作上述四项已经全部在当前 scalar 模型中完成的证据。

## 7. 验算、出处与可复现性

运行：

```bash
python verify_two_defects.py --output results/verification.json
```

依赖：Python 3.10+、SymPy、mpmath。脚本不访问网络、不需要用户仓库 checkout、不需要 Mathematica。

本次执行 **292 项检查全部通过**。包括符号矩阵恒等式、holonomy 小耦合展开、边界零模变化、Wilson 留数、最低权/后裔 Casimir、VMFT 展开、低自旋通道恒等式和最低态五个质量的数值积分。多个检查属于同一个推导的不同层次，数量不能替代适用范围或给未计算的辛约化作证明。

Research Radar 的 problems 页面尝试读取失败；本报告没有从不可访问页面推断研究状态。仓库读的是上面钉住的可访问版本。

### Primary Sources

[R1] 用户主笔记，*gravitation scalar interaction.md*，固定提交： https://github.com/GaoZ1en/obsidian_note/blob/f5fdf8308d7dfdcb84b70f6a0de12fe97855f6b4/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/gravitation%20scalar%20interaction.md

[R2] 用户主笔记，*gravity scalar one and two particle spectrum.md*，同提交： https://github.com/GaoZ1en/obsidian_note/blob/f5fdf8308d7dfdcb84b70f6a0de12fe97855f6b4/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/gravity%20scalar%20one%20and%20two%20particle%20spectrum.md

[R3] 用户历史审查笔记，*closed form spectrum audit.md*，用于公式/通道比较，不用其旧待办推断当前进度： https://github.com/GaoZ1en/obsidian_note/blob/f5fdf8308d7dfdcb84b70f6a0de12fe97855f6b4/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/closed%20form%20spectrum%20audit.md

[H] D. Birmingham and S. Sen, *Gott Time Machines, BTZ Black Hole Formation, and Choptuik Scaling*, hep-th/9908150, especially eqs. (1)–(6), (8), (12), (14)–(15). https://arxiv.org/abs/hep-th/9908150

[W] P. Kraus, A. Sivaramakrishnan and R. Snively, *Late time Wilson lines*, arXiv:1810.01439, especially eqs. (2.3), (3.18)–(3.27), (4.30)–(4.36), §4.3. This paper explicitly distinguishes Wilson-block phases from full-correlator fixed-spin anomalous dimensions. https://arxiv.org/abs/1810.01439

[V] S. Collier, Y. Gobeil, H. Maxfield and E. Perlmutter, *Quantum Regge Trajectories and the Virasoro Analytic Bootstrap*, arXiv:1811.05710, especially eqs. (1.7)–(1.8), §3.1, §5, footnote 25. Discrete vacuum-fusion poles, their shifts, and limitations of the vacuum-block interpretation. https://arxiv.org/abs/1811.05710

[B] G. Compère, P.-J. Mao, A. Seraj and M.M. Sheikh-Jabbari, *Symplectic and Killing Symmetries of AdS3 Gravity: Holographic vs Boundary Gravitons*, arXiv:1511.06079, especially the coadjoint transformations and §4.2 on orbit-invariant charges. https://arxiv.org/abs/1511.06079

[WL] H. Maxfield, *A view of the bulk from the worldline*, arXiv:1712.00885. Systematic worldline expansion in Newton coupling and inverse mass; not a blanket identification with arbitrary finite-mass scalar EFT spectra. https://arxiv.org/abs/1712.00885

[P] A. Bourne, V. Fliss and L. Knighton, *What's the Matter with 3D Gravity?*, ArXiv:2607.01319. Related recent punctured-gravity phase-space/quantization proposal; not used to assert completion of the reduced two-body action calculation here. https://arxiv.org/abs/2607.01319
