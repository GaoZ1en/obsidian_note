# 12e　TsT 与单迹对称积：两份种子就能区别两种谱流

把一个左激发和一个右激发放在**不同副本**，或都放在**同一副本**，总能量、总动量完全可以相同。用总应力做 $T\bar T$，这两态保持简并；先对每份种子做 $T\bar T$ 再取对称积，它们一阶就分裂。这是单迹与普通应力双迹之间的可算区分。弦论中 TsT 的长弦谱支持“逐份变形”的字典，但双份算例本身不证明字典。

## 弦侧：生成变形的流并非世界面应力行列式

取 IIB 弦的纯 NS–NS 通量 $\mathrm{AdS}_3\times\mathcal N$ 背景，三维部分从无质量 BTZ 圆柱商出发；内部空间在以下经典玻色子计算中不激发。$k=\ell^2/\ell_s^2$ 为 NS5 荷，$N$ 为 F1 荷。以径向坐标 $\phi$、$u=\varphi+t,\ v=\varphi-t$ 描述靶空间。沿两个平移方向做 T 对偶、平移、再 T 对偶后，记

$$
F_\lambda(\phi)=\frac{e^{2\phi}}{1+2\lambda e^{2\phi}},\quad
ds^2=\ell^2(d\phi^2+F_\lambda\,du\,dv),\quad e^{2\Phi}=\frac{e^{2\Phi_0}}{1+2\lambda e^{2\phi}}.
$$

$\Phi$ 是 dilaton，勿与 $\phi$ 混同。靶度规和 NS 二形式组合后，在平直世界面共形规范下给出经典作用量（三维部分，取大 $k$）

$$
S_\lambda=\frac{k}{2\pi}\int d^2z\,[\partial\phi\,\bar\partial\phi+F_\lambda\,\bar\partial u\,\partial v].
$$

取 $\lambda\ge0$，$\phi\to+\infty$ 的有限 $F_\lambda$（$\lambda>0$）和线性 dilaton 与普通 AdS 边界不同。闭世界面空间圆 $\sigma\sim\sigma+2\pi$；在固定正绕数 $w$ 扇区，$u,v$ 均移 $2\pi w$ 而 $\phi$ 周期，允许变分不改 $w$。物理态还须满足含内部理论在内的 Virasoro 约束与 level matching；不是给弦端点设 AdS 有限壁。

$u,v$ 只通过导数出现，平移的 Noether 流分别为 $j_0=k F_\lambda\partial v,\ \bar j_0=k F_\lambda\bar\partial u$，满足 $\bar\partial j_0=\partial\bar j_0=0$。沿该文轮廓取向，两靶平移荷为 $J_0=-\oint dz\,j_0/(2\pi)$、$\bar J_0=-\oint d\bar z\,\bar j_0/(2\pi)$；它们是时空左右平移零模，不是世界面规范约束。由于 $\partial_\lambda F_\lambda=-2 F_\lambda^2$，作用量导数恰为 $-\int d^2z\,j_0\bar j_0/(\pi k)$，是**世界面流–流变形**。例如以 $\partial \hat v=\partial v-2\lambda j_0/k$ 定义辅助坐标，立即有 $e^{2\phi}\partial\hat v=F_\lambda\partial v$；但其绕行量随荷变动，须处理场依赖周期和积分零模，才能比较辛形式。

## 边界侧：哪一对左右应力相乘？

逐份的候选理论是 $\mathrm{Sym}^N(\mathcal M_s)$，即变形种子后取置换投影与各扭曲扇区。在种子 CFT 点，应力无迹，两种形变的无穷小插入正比于

$$
\sum_a T_a\bar T_a\quad\hbox{或}\quad\Big(\sum_a T_a\Big)\Big(\sum_b\bar T_b\Big).
$$

前者在此语境称“单迹”，后者含 $a\ne b$ 的交叉项；离开 CFT 点须用完整应力行列式，不能漏掉迹平方。扭曲循环的场满足副本置换后的周期性：长为 $w$ 的一个循环在 $w$ 倍长的覆盖圆上单值。文献给出的检验是一个正绕数长弦与一个 $w$ 循环的谱比较，按其**半径** $R_*$、量子化角动量 $J$ 的约定为

$$
E_w(\mu)=\frac{wR_*}{2\mu}\left[\sqrt{1+\frac{4\mu E_w(0)}{w R_*}+\frac{4\mu^2 J^2}{w^2R_*^4}}-1\right],\qquad J(\mu)=J(0).
$$

[Du 等的约定](https://arxiv.org/pdf/2407.19495v2#page=5)取 $\lambda=\mu/\ell_s^2,\ R_*=\ell$。改用下文的**周长** $L=2\pi R_*$、线动量 $P=J/R_*$，单个循环的等价写法是谱函数取长度 $wL$ 和耦合 $s=2\pi\mu$。$E_w(0)$ 是该扭曲扇区的初始能量，绝不是把 $w$ 个无扭曲态能量随意相加。

## 对照实验：同一总能级的两种分配

只在 $N=2$ 的**无扭曲扇区**计算。种子选 $c=1$ 的紧致自由玻色子，零靶动量、零靶绕数；$X_a(x+L)=X_a(x)$。用单个 $(h,\bar h)$ 本征态（含振子）标记每份能量和线动量 $e=b(h+\bar h-1/12),\ p=b(h-\bar h),\ b=2\pi/L$。轨道内取交换对称叠加。两个允许态是

|态|两份种子的 $(h,\bar h)$|$E_0$|$P$|
|---|---|---|---|
|A：左右分开|$(1,0)$ 与 $(0,1)$|$11b/6$|$0$|
|B：左右同份|$(1,1)$ 与 $(0,0)$|$11b/6$|$0$|

定义谱函数 $F_L(e,p;s)=L[\sqrt{1+4se/L+4s^2p^2/L^2}-1]/(2s)$，取连续根，已保留每份真空 Casimir 能量。逐份生成元是 $H_1(s)+H_2(s)$、$P_1+P_2$ 在置换不变态上的限制，故能量为 $\sum_a F_L(e_a,p_a;s)$；总应力的普通变形给 $F_L(\sum_a e_a,\sum_a p_a;s)$。$\partial_s F_L|_0=(p^2-e^2)/L$，于是

$$
\frac{L}{b^2}\,(E'_A,E'_B)_{\rm 逐份}=\left(\frac{23}{72},-\frac{265}{72}\right),\qquad
\frac{L}{b^2}\,(E'_A,E'_B)_{\rm 总应力}=\left(-\frac{121}{36},-\frac{121}{36}\right).
$$

**判据是分裂本身**：$E_A-E_B=4s b^2/L+O(s^2)$，对总应力变形则一直为零（在选定谱支）。因此无法用一个态无关的耦合重标度把两套预测变成相同。两态都已投影到交换对称子空间，分裂不是给不可观测的副本贴标签造成的。

**来源。** Du–Lai–Liu–Song，[arXiv:2407.19495v2](https://arxiv.org/pdf/2407.19495v2#page=4)，PDF／正文 4–5，(1)–(5) 及脚注 2；[11–12 页](https://arxiv.org/pdf/2407.19495v2#page=11)，(39)–(52)；非局域变换的辛条件见 §4.3。单个种子的周长谱见 Cavaglià 等，[arXiv:1608.05534v1](https://arxiv.org/pdf/1608.05534v1#page=6)，PDF 6／正文 5，(2.12)–(2.13)。双份自由玻色子是严格可算的边界对照，不是该 IIB 背景的种子鉴定。

**Verified:** Wolfram 验 $\partial_\lambda F_\lambda=-2F_\lambda^2$，上述三个不同的一阶斜率及差 $4b^2/L$。**Assumptions:** 世界面作用量限经典三维部分；长弦谱公式用原文扇区和参数，双份例只用可因子化种子谱与置换投影。**Not verified:** 未包括短弦、一般扭曲扇区相互作用或全量子荷代数。长弦谱和对称的匹配是字典的证据，不是全弦论等价、也不是有限 Dirichlet 墙的证明。
