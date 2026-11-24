# 自由边界引力：为什么不能把 Schwarzschild–AdS 的质量搬到 Neumann 相空间？

**不是把一个非零质量“规定为零”，而是原来的质量变分根本不切于新的相空间。** 取 $D=4$ 的真空 Einstein 引力、$d=3$ 的无源时间状共形边界、闭空间切口 $S^2$。没有偶数边界维数的局域 Weyl 异常，也不设其他带独立荷的边界。下面比较同一体方程、两种不同的边界变分问题。

## 从反项的变分推出边界方程

令外向 $K=\nabla_\mu n^\mu$，取

$$
S_{\rm ren}=\lim_{R\to\infty}\left[\frac1{16\pi G}\int_{M_R}\sqrt{-g}\,(R[g]+6/\ell^2)+\frac1{8\pi G}\int_{\Gamma_R}\sqrt{-\gamma}\left(K-\frac2\ell-\frac\ell2\mathcal R[\gamma]\right)\right].
$$

保留端点势，固定初末数据；齐次 Neumann 不需要再减去一个非零外部应力的 Legendre 项。在解上，时间状侧面的变分为 $\frac12\int\sqrt{-g_{(0)}}T^{ij}\delta g_{(0)ij}$。Dirichlet 固定 $g_{(0)}$，允许 $T$ 变；**[54] 的纯 Neumann 让 $g_{(0)}$ 自由，故 $T^{ij}=0$ 是边界场方程，切变分还需 $\delta T^{ij}=0$。** 若另加独立的边界引力作用 $S_b[g_{(0)}]$，方程才变成 $T^{ij}+2\delta S_b/(\sqrt{-g_{(0)}}\,\delta g_{(0)ij})=0$，相空间与辛形式也要重算。

曲率反项含切向导数。把 $\delta L_{\rm ct}$ 分部积分得到势 $\Theta_{\rm ct}$，则 [54] 的定向下 $\Omega_{\rm ren}=\int_\Sigma\omega_{\rm EH}-\int_{\partial\Sigma}\delta\Theta_{\rm ct}$（已取极限）。侧面剩余通量密度为 $\tfrac12\delta(\sqrt{-g_{(0)}}T^{ij})\wedge\delta g_{(0)ij}$；Dirichlet 是第二因子为零，纯 Neumann 是第一因子为零。**零通量不等于非零生成元。** 在此无源纯 Neumann 问题中，每个边界向量 $\xi$ 都可作边界微分同胚；它的局部延拓可以在某切口附近等于原 $\xi$ 而在一个较早切口附近消失。由荷的局域性和切口守恒，此延拓的荷两处都为零。因此对所有允许切变分 $\delta H_\xi=\Omega_{\rm ren}(\delta,\mathcal L_\xi g)=0$，归一化后 $H_\xi=0$。它是规范核方向，而不是说一切物理扰动都为零。

## 计算：将一个已知 Dirichlet 质量模送进 Neumann 判据

置 $\ell=1$，令 $f=1+r^2-2m/r$，$ds^2=-fdt^2+dr^2/f+r^2 d\Omega_2^2$。这里只考察无穷远渐近数据，不假定允许在一个无视界的固定拓扑内光滑地产生黑洞。求 FG 坐标 $dr/\sqrt f=-dz/z$，使 $ds^2=z^{-2}[dz^2+g_{ij}(z)dx^idx^j]$。逐次解得 $r=z^{-1}-z/4+(m/3)z^2+O(z^3)$，故

$$
g_{tt}(z)=-1-\frac{z^2}{2}+\frac{4m}{3}z^3+O(z^4),\qquad g_{AB}(z)=\left(1-\frac{z^2}{2}+\frac{2m}{3}z^3\right)s_{AB}+O(z^4),
$$

$s_{AB}$ 为单位球度规。采用上式作用量、无有限边界引力项，$T_{ij}=3g_{(3)ij}/(16\pi G)$。验证 $g_{(3)}$ 的迹为 $-4m/3+2(2m/3)=0$；其时间分量 $T_{tt}=m/(4\pi G)$，故 Dirichlet 给 $H_{\partial_t}=\int_{S^2}d\Omega\,T_{tt}=m/G$（全局 AdS 取零）。纯 Neumann 则要求 $g_{(3)}=0$；这族的 $m=0$ 可入相空间，**即使在 $m=0$ 处，导数 $\partial_m g$ 仍因 $\partial_mT_{tt}\ne0$ 被排除**。相反，边界微分同胚作用在 $T=0$ 的任何解上都有 $\mathcal L_\xi T=0$；这是上一段的规范方向。

## 与 [42] 分清

[Ishibashi–Wald [42]，hep-th/0402184v4，§3](https://arxiv.org/pdf/hep-th/0402184v4#page=25)在给定全局 AdS 上，将**线性**标量／Maxwell／引力扰动分解成径向主变量；$\partial_t^2\Phi=-A\Phi$，对每个扇区选正自伴延拓。如一维 Schrödinger 型，端点形式 $[u^*v'-(u')^*v]$ 在同一自伴定义域应消失；还须验 $A\ge0$，容许参数依维数和谐波而异。这里的时间平移是选定背景上的演化；这既未变分一个非线性边界度规，也未证明所有边界微分同胚都是该线性理论的规范。不能把某个主变量的 Robin 系数等同于 $T^{ij}=0$。

**来源与核查。** [Compère–Marolf [54]，0805.1902v2，PDF 7／正文 6，(2.2)–(2.3)](https://arxiv.org/pdf/0805.1902v2#page=7)给出重整化辛流；[PDF 13／正文 12，§3.2、(3.14)](https://arxiv.org/pdf/0805.1902v2#page=13)说明无源边界微分同胚何以是规范。**Verified:** Wolfram 将上述 $r(z)$ 代回 $z^2(dr/dz)^2/f=1+O(z^4)$，并独立展开两组 $g_{(3)}$ 系数；闭球积分和零迹同时成立。**Assumptions:** $d=3$、边界无边、无外部时钟或指定应力。**Not verified:** 未在所有扇区分类线性谱或判定量子引力稳定性；偶数 $d$、非紧切口及外部源须重做边界分析。
