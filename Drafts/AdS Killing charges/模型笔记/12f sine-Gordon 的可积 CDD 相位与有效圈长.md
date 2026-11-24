# 12f　sine-Gordon：散射相位如何改变有限体积的量子化？

**结果。** 取 [72] 的耦合 $t$。在总动量为零的两粒子态，$T\bar T$ 所加的散射相位等于 $tpE$：粒子走一周看见的有效圈长从 $R$ 变成 $R+tE$。这不是把一切体积修正都等同于两体散射；大体积的 Bethe–Yang 推导只用来说明机制。

**作用量、边界与荷。** 选欧氏种子 $S_0=\int d^2z\,[\partial_z\phi\partial_{\bar z}\phi/(4\pi)-\mu^2\cos(\beta\phi)/\sin(\pi\beta^2)]$，场归一化依 [71]，取 $0<\beta^2<1$。量子质量 $m$ 不是势系数 $\mu$。延拓到平直 Lorentz 柱面，$x\sim x+R$，取零绕数、净拓扑荷零的孤子–反孤子散射本征通道。平移生成元 $H,P$ 分别测能量及圈动量，$P=2\pi k/R$；本例取 $k=0$。这是一种二维场论，不需要 AdS 壁。

取快度 $\theta,-\theta$，$p=m\sinh\theta$，$E=2m\cosh\theta$（渐近两体能量）。按 [72]，每个散射本征值乘同一标量 $F(\vartheta)=\exp[it m^2\sinh\vartheta]$；因此 $F(\vartheta)F(-\vartheta)=1$ 且 $F(i\pi-\vartheta)=F(\vartheta)$。若未变形本征相移为 $\delta_0$，绕圆条件为
$$
pR+\delta_0(2\theta)+tm^2\sinh(2\theta)=2\pi I
\quad\Longleftrightarrow\quad p(R+tE)+\delta_0(2\theta)=2\pi I .
$$
独立的有限体积检验：在零动量扇区，[72] 的非线性积分方程给 $E(t,R)=E_0(R+tE)$，此处 $E_0$ 是含有限尺寸效应的种子能级，而非前式的两粒子近似。隐式微分即得 $\partial_t E=E\partial_R E$，只要 $1-t E'_0(R+tE)\ne0$。有非零总动量时流方程另有 $P^2/R$ 项，不能只换圈长。

**来源。** [71，Smirnov–Zamolodchikov，v2，PDF 17／正文 16，§8，作用量式 (8.1)](https://arxiv.org/pdf/1608.05499v2#page=17)；[72，Cavaglià 等，v1，PDF 3／正文 2，式 (1.1–2)](https://arxiv.org/pdf/1608.05534v1#page=3) 与 [PDF 9／正文 8，式 (4.12–14)](https://arxiv.org/pdf/1608.05534v1#page=9)。

**Verified:** 原页核对相位和有限体积流；Wolfram 核对交叉变换与 $m^2\sinh 2\theta=pE$。**Assumptions:** 第一条绕圈条件忽略虚粒子绕圈；精确流取连续到种子的可微支。**Not verified:** 未重算 sine-Gordon 形状因子或完整非线性积分方程。