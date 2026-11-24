# 10d　BF 饱和的 Einstein–标量：引力和标量的对数怎样抵消？[44]

AdS$_5$ 的 BF 对数模一旦开启，即使标量很小，单独读度规质量系数也会得到随截断变化的数。在同一半径 $R$ 取**引力加标量**的时间平移荷，$\log^2 R$、$\log R$ 两级发散分别抵消。下面用球对称切片直接算出留下的有限一形式。

**设定。** 取 $L=8\pi G_5=1$，体拉氏量 $\mathcal R/2-(\nabla\phi)^2/2-V$，$V=-6-2\phi^2+O(\phi^3)$，故 $m^2=-4$。固定边界时间和单位三球；$g,\phi$ 都是动力学场。只计算时间反演对称初值，取面积半径，空间度规及标量为

$$ds^2_\Sigma=\frac{dr^2}{h}+r^2d\Omega_3^2,\quad h=1+r^2-\frac{\mu(r)}{r^2},\qquad \phi=r^{-2}(a+b s)+\cdots,\quad s=\log(r/r_0).$$

固定标尺 $r_0$。时间平移是渐近向量 $\partial_t$，无须每个初值自身平稳。采用 [44，Henneaux–Martínez–Troncoso–Zanelli v2，PDF 4–5／正文 3–4，(2.1)–(2.7)](https://arxiv.org/pdf/hep-th/0404236v2#page=4) 的正则 Hamiltonian（约束加使其可微的表面项）。开启对数支时取该文的保 AdS 关系 $a=-\tfrac12 b\log(b/b_0)$，固定 $b_0$，限定一个 $b/b_0>0$ 的分支；这不等于把两系数都固定。

**先解反作用。** 时间对称约束 ${}^{(4)}\mathcal R=h\phi'^2+2V$，而 ${}^{(4)}\mathcal R=6(1-h)/r^2-3h'/r$。所以 $\mu'=r^3[h\phi'^2+2(V+6)]/3$。置 $p=a+bs$，领先项给 $3\,d\mu/ds=(b-2p)^2-4p^2+o(1)$，积分为

$$\mu=\mu_0+\frac{b^2-4ab}{3}s-\frac{2b^2}{3}s^2+o(1).$$

其中余项来自高阶幂次乘对数，在大半径可积。故 $g_{rr}-(1+r^2)^{-1}\sim r^{-6}\mu(r)$；产生对数的是约束本身，不是任选一个标量反项的结果。

**同一切口合并。** 以下除以单位三球体积 $\mathcal V_3=2\pi^2$。在 $r=R$，球对称 Einstein 的改进表面变分给 $\delta E_g/\mathcal V_3=\tfrac32\delta\mu(R)+o(1)$；标量的径向梯度给 $\delta E_\phi/\mathcal V_3=-R^3h\phi'\delta\phi+o(1)=(2p-b)\delta p+o(1)$（渐近 lapse 取全局时间）。相加后

$$\frac{\delta E}{\mathcal V_3}=\frac32\delta\mu_0+(2a-b)\delta a.$$

例如引力的 $s^2$ 系数是 $-\delta(b^2)$，标量的是 $2b\,\delta b$；$s$ 系数分别为 $\tfrac12\delta(b^2-4ab)$ 和 $(2a-b)\delta b+2b\delta a$，也相消。**有限不等于可积**：任意独立的 $a,b$ 会留下 $\delta a\wedge\delta b$。在上面的固定 $b_0$ 分支，$(2a-b)\delta a=\delta(a^2-ab/2+b^2/8)$，得到

$$E=2\pi^2\!\left(\tfrac32\mu_0+a^2-\tfrac12ab+\tfrac18 b^2\right)$$

（以纯 AdS 为零）。若另取自成一个边值问题的无对数支 $b=\delta b=0$，有限项是 $a^2$，不必为零。这个 $E$ 是对应[带边界的总辛形式](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)的表面生成元，不是固定 AdS 上的 KG 能量。

**Verified:** xAct 分量计算核对时间切片标量曲率；Wolfram 核对约束的对数系数、同一截断的荷变分与分支原函数。**Assumptions:** 球对称、时间对称、固定边界代表和标尺，余项服从 [44] 的衰减。**Not verified:** 未重建任意时变非球对称数据的 CPS 反项，也不从有限质量推出正能定理。