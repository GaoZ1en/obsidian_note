# 11a　HHH 探针黑膜：哪一支标量先出现无源解？

在固定化学势、标准量子化（$\Delta=2$）下，正常相的首个均匀静态标量模出现在 $T/|\mu|=0.05874735$。判据是**视界正则而边界源为零**，不是某个全局 AdS 能级变为零。以下复算 [Hartnoll–Herzog–Horowitz，§7.2 引文 66，arXiv:0803.3295v1，PDF 3／正文 2，(3)–(6)](https://arxiv.org/pdf/0803.3295v1#page=3) 的模型；所报数值是该边值问题的校准。

## 哪些场在变？

令 $L=q=1$，固定平面 Schwarzschild–AdS$_4$ 度规
$$
 ds^2=-fdt^2+dr^2/f+r^2(dx^2+dy^2),\qquad f=r^2-r_h^3/r,\qquad T=3r_h/(4\pi).
$$
探针极限忽略物质对度规的反作用，**不**忽略 Maxwell 场与标量彼此的耦合。取 $D=\nabla-iA$, $F=dA$，作用量的体拉氏量与 UV 边界项分别是
$$
 \mathcal L_m=-\tfrac14F^2-|D\Psi|^2+2|\Psi|^2,
 \qquad S_{\rm ct}=-\int_{r=R}\sqrt{-\gamma}\,|\Psi|^2.
$$
边界平直，固定 $A_t^{(0)}=\mu$、$A_{x,y}^{(0)}=0$，不加交换电势与电通量的 Legendre 项。若 $\Psi=a/r+b/r^2+\cdots$，本篇固定 $a=0$、让 $b$ 响应；$b=0$ 是另一量子化。黑膜取温度 $T$ 的平衡态，边界巨正则权重为 $e^{-(E-\mu Q)/T}$。只需要其经典正常相鞍点；在静态正则规范 $A_t(r_h)=0$ 中，电位差就是 $\mu$。此时 $\Psi=0$，Gauss 方程 $(r^2 A_t')'=0$ 给 $A_t=\mu(1-r_h/r)$。

$X_{\xi,\Lambda}A=\mathcal L_\xi A+d\Lambda$，$X_{\xi,\Lambda}\Psi=\mathcal L_\xi\Psi+i\Lambda\Psi$。保源的时间平移和边界常数相位是不同变换；后者的荷由电通量读出。切口上平凡且无表面荷的规范变换才商掉。按[协变相空间约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md#L7-L52>)从带边界项的势取 $H_X=\iota_X\theta-\alpha_X$。迟滞响应在未来视界入射；这允许外区有视界通量，不能把入射模当成封闭外区的正交振子基。

## 从射击问题变成本征值

写 $z=r_h/r$、$h=1-z^3$、$\Psi=z u(z)$、$\lambda=|\mu|/r_h$。径向方程 $(r^2 f\Psi')'+r^2(A_t^2/f+2)\Psi=0$（此式撇号指 $r$）化为
$$
 -(h u')'+zu=\lambda^2 w(z)u,\qquad w(z)=\frac{1-z}{1+z+z^2},\qquad 0<z<1 .
$$
这里撇号改指 $z$。无源条件为 $u(0)=0$；视界正规支满足 $3u'(1)+u(1)=0$，射击时可令 $u(1)=1$。$w$ 和 $h$ 在开区间均为正。于是最低本征值由 $\int_0^1(h|u'|^2+z|u|^2)dz/\int_0^1 w|u|^2dz$ 的最小值给出；视界的边界项因 $h(1)=0$ 而消失。

复算时用 $z^i$（$i=1,\ldots,N$）为试探基。矩阵元 $K_{ij}=ij[(i+j-1)^{-1}-(i+j+2)^{-1}]+(i+j+2)^{-1}$，$B_{ij}=\int_0^1 z^{i+j}w\,dz$。取 $K v=\lambda^2 Bv$ 的最小根，$N=6,10$ 分别给 $\lambda=4.06371422,4.06371366$；代入 $T/|\mu|=3/(4\pi\lambda)$ 即得开头的比值。在另一种表述中，从视界向外积分，调 $\lambda$ 令 $u(0)=0$，见[总览中的独立射击结果](<../§7.2 推广方向与可计算模型.md#L136-L144>)。

**Verified:** Wolfram 约化径向方程的残差为零；本次广义本征值与既有射击一致。**Assumptions:** 固定中性度规、$\Delta=2$、均匀线性扰动、固定 $\mu\ne0$。**Not verified:** 未由非线性支自由能确定相变阶数；上面的比值不能用在带反作用黑膜或矢量凝聚上。
