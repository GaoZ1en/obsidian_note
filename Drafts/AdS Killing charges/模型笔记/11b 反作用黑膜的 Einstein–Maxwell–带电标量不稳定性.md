# 11b　反作用黑膜：小电荷时，标量还会不稳定吗？

**会。** 对 $m^2=-2$、AdS$_4$ 半径为一的平面模型，极端正常相有 AdS$_2$ 喉部，均匀标量的 $m_{\rm IR}^2 L_2^2=-1/3-q^2/3$ 低于二维 BF 界 $-1/4$。即使令标量电荷 $q\to0$，不稳定性也不会消失：此时仍带电的是**背景**。这一区别在固定中性黑膜上看不到。模型据 [Hartnoll–Herzog–Horowitz，§7.2 引文 67，arXiv:0810.1563v1，PDF 6／正文 5，(2.1)–(2.4)](https://arxiv.org/pdf/0810.1563v1#page=6)。

## 系综、约束和时间平移

取 $16\pi G=L=1$，令 $g,A,\Psi$ 全部动力学。$D=\nabla-iqA$，无外磁场，取
$$
 S_{\rm bulk}=\int\!\sqrt{-g}\,[R+6-\tfrac14F^2-|D\Psi|^2+2|\Psi|^2] .
$$
固定闵氏边界度规、$A_t^{(0)}=\mu>0$ 及零空间规范源。$\Psi=a/r+b/r^2+\cdots$ 取 $a=0$。在外向法线 $K=\nabla_\mu n^\mu$ 的约定，平直齐次调节面补 $\int\sqrt{-\gamma}(2K-4-|\Psi|^2)$；不对电势做 Legendre 变换。固定 $T,\mu$ 比较正常相和有毛相时比较的是 $E-TS-\mu Q$。一般静态有毛解要设 $g_{tt}=-f e^{-\chi}$、$g_{rr}=1/f$，并以 $\chi(\infty)=0$ 归一化时间；不能把 $\chi=0$ 当作整个有毛支的规范条件。

保源变换作用为 $Xg=\mathcal L_\xi g$、$XA=\mathcal L_\xi A+d\Lambda$、$X\Psi=\mathcal L_\xi\Psi+iq\Lambda\Psi$；时间平移、常数 $U(1)$ 相位分别对应时空与内部生成元。Einstein 与 Gauss 约束都要施加，只商去无表面荷的方向。与[固定背景物质 Killing 荷](<../../../Articles/Quantization in AdS/perturbation/formalism.md#L106-L130>)不同，在壳总能量由重整化边界应力给出，不是 $T_{\rm matter}$ 的体积分。时间平移若另带边界常数规范提升，要同时注明电荷项；热权重是 $e^{-(E-\mu Q)/T}$。

## 正常相的两个检查

1. **电通量是否改变了几何？** 在 $\Psi=0$、$\chi=0$ 的热鞍点，设 $A=\Phi(r)dt$。$r^2\Phi'=\rho$ 为常数，正则静态规范 $\Phi(r_h)=0$ 要求 $\rho=\mu r_h$。Einstein 方程给平面 Reissner–Nordström–AdS 黑膜：
   $$
   \Phi=\mu-\frac{\rho}{r},\qquad f=r^2-\frac{M}{r}+\frac{\rho^2}{4r^2},\qquad
   M=r_h^3+\frac{\rho^2}{4r_h},\qquad 4\pi T=3r_h-\frac{\rho^2}{4r_h^3}.
   $$
   这里 $1/4$ 依赖 Maxwell 与引力项的相对归一。以零质量平面 AdS 为参考，能量密度 $\varepsilon=2M$，熵密度 $s=4\pi r_h^2$；把 $(r_h,\rho)$ 视为独立参数即有 $d\varepsilon=T\,ds+\mu\,d\rho$。例如 $\partial_\rho(2M)|_{r_h}=\rho/r_h$；删掉 $f$ 中的电荷项就不再满足这一检验。

2. **充分的不稳定判据。** 标量扰动在正常相线性阶不源生 $\delta g,\delta A$，故可解 $(r^2 f\psi')'+r^2(q^2\Phi^2/f-m^2)\psi=0$。极端时 $\rho^2=12r_h^4$。写 $y=r-r_h$，有 $f=6y^2+O(y^3)$、$\Phi=\sqrt{12}\,y+O(y^2)$，故 $L_2^2=1/6$，$\lim\Phi^2/f=2$。喉内静态幂次 $y^{-1/2\pm\nu}$ 满足
   $$
   \nu^2=\frac14+(m^2-2q^2)L_2^2=-\frac{1+4q^2}{12}<0 .
   $$
   极端喉本身已不稳定；$q=0$ 时对应中性标量有毛趋势，不是带电序参量破坏 $U(1)$。要定量给出有限 $T_c$，需固定 $q$，在非极端 RN 背景用正则视界条件向外积分，找 $a(T/\mu)=0$；动态响应则在未来视界取入射解。

**Verified:** xAct 分量计算给全部 $G_{\mu\nu}-3g_{\mu\nu}-T_{\mu\nu}^{\rm Max}/2=0$；Wolfram 核对极端双根、$\Phi^2/f$ 极限及第一定律的两个独立系数。**Assumptions:** 经典平面 RN 正常相、最小耦合、无磁场、标准标量量子化。**Not verified:** BF 违反给出红外失稳机制，不给有限温度的数值临界点，也不判定有毛支的自由能或非线性终态。
