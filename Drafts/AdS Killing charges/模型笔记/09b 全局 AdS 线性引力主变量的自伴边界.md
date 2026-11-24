# 09b　全局 AdS 的线性引力主变量：零通量是否足以稳定？[42]

不足以。对全局 AdS$_4$ 的**标量型引力四极**（不是物质标量），把无穷远边界条件记作 $u'(0)=\lambda u(0)$。每个实 $\lambda$ 给零辛通量的自伴演化算符，但只有 $\lambda\ge-8/\pi$ 没有负本征值；临界点有一个真正的静态零模。

**约化与变分。** 解线性化真空 Einstein 约束、商去微分同胚后，固定一个 $S^2$ 上 $l=2$ 的标量型球谐，取其实规范不变主变量 $u$。写 $r=L\cot x$，$t$ 用 $L$ 作单位，$0<x<\pi/2$，中心在右端。按 [42，Ishibashi–Wald v4，PDF／正文 24–25，(124)–(129)](https://arxiv.org/pdf/hep-th/0402184v4#page=24)，$n=D-2=2,\ \nu=1/2,\ \sigma=l+(n-1)/2=5/2$，故

$$\ddot u=-A u,\qquad A=-\partial_x^2+6\sec^2 x,\qquad \mathcal H=L^2((0,\pi/2),dx).$$

中心只留 $u=O((\pi/2-x)^3)$ 的正则本征解。无穷远两独立数据 $u=c+bx+O(x^2)$ 都可归一。取主变量二次作用量 $\tfrac12\int dt\,dx[\dot u^2-(u')^2-6\sec^2x\,u^2]-\tfrac\lambda2\int dt\,u(t,0)^2$（一个正的整体归一化已吸收）。自由变分给 $b=\lambda c$；Green 边界型 $c_1^*b_2-b_1^*c_2=0$。另可取 $c=0$ 的 Dirichlet 端。按[本地 CPS 约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)，$\theta=\int\dot u\,\delta u\,dx$；能量 $2H=\int[\dot u^2+(u')^2+6\sec^2x\,u^2]dx+\lambda c^2$，边界能量项的号不能由“零通量”独自决定。

**直接算临界值。** 写 $y=\pi/2-x$。零频正则解可取

$$u_0=y(1+3\cot^2 y)-3\cot y=\tfrac4{15}y^3+O(y^5).$$

代入 $A u_0=0$，在 $x=0$ 读到 $c=\pi/2,b=-4$，即 $b/c=-8/\pi$。它在开区间无节点：中心起 $u_0>0,\partial_yu_0>0$，而 $\partial_y^2u_0=6\csc^2y\,u_0$ 使其继续增长，故临界零模是最低模。Robin 二次型随 $\lambda$ 增长，低于临界时以 $u_0$ 试探即得负值。亦与 [42，PDF／正文 35，定理 3.2 (169)](https://arxiv.org/pdf/hep-th/0402184v4#page=35) 的 $-|\Gamma(-1/2)/\Gamma(1/2)|[\Gamma(2)/\Gamma(3/2)]^2$ 一致。两种稳定边界可再直接对比：Neumann 的 $u=\cos^3x$ 给 $\omega L=3$，Dirichlet 的 $u=\sin x\cos^3x$ 给 $\omega L=4$（$\omega$ 是有量纲频率）；均无内部节点。

**Verified:** Wolfram 将三个本征函数代回，残差均为零；核对临界 Gamma 比及中心展开。**Assumptions:** 仅上述物理谐波、正则中心、反射边界；零模处不能把该模当作正常正频振子。**Not verified:** 未从未约化 Einstein 作用量重建边界泛函与主变量的整体辛归一化；自伴性不是非线性自由边界度规或 $T^{ij}=0$ 的证明。