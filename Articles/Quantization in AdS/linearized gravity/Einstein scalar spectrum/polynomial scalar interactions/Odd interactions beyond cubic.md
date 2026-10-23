# 奇次作用的二阶结构：φ⁵ 重整化与一般有限多体量

## 结果

**单独指定正规序 φ⁵ 耦合、真空能和一体 gap，不足以唯一确定二阶多粒子谱。** 两顶角产生一个必须匹配的 quartic 耦合：在 φ⁴/4! 约定中，
\[
 \delta\lambda_{4,\mathrm{ct}}=
 \frac{\lambda_5^2}{32\pi^2}\log(1/\epsilon)+\text{finite}.
\tag{1}
\]
但最高连通四体量不受这些必要反项影响。完整退化空间处理后，Δ=4/3 的精确答案为
\[
 \boxed{[E_4-4E_3+6E_2-4E_1+E_0]_{\lambda_5^2}
 =-\frac{61947}{11648000\pi^3}.}
\tag{2}
\]
这里 [ ]λ² 表示取 λ² 的系数，不是整个能移。

更一般地，对每个奇数 n=2k+1，在
\[
 \Delta_*^{(n)}=\frac{n-1}{n-2}=\frac{2k}{2k-1}>1
\]
都存在一个**有限求和、严格负、处方独立的最高连通 (n−1) 体二阶量**，前提是不额外加入同阶、2n−2 外腿的独立有限局域形变，包括 φ²ⁿ⁻² 和导数接触项。下文给出完整公式和全 k 证明，而不仅是 φ⁵、φ⁷ 的有限例子。

## 1. 理论与完整投影

固定半径一的 global AdS₃，
\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
 \quad m^2=\Delta(\Delta-2),\quad\Delta>1,
\]
\[
 S_{\rm int}=-\frac{\lambda_n}{n!}\int\sqrt{-g}:\phi^n:_\Delta.
\]
正规序相对于自由 global 真空，中心正则、边界为 source-free standard falloff，无独立有限边界多迹耦合。以 [aᵢ,aⱼ†]=δᵢⱼ、单位 KG 范数模展开场，自由频率 ωₚq=Δ+p+q。顶角积分使用 r dr dθ。全部相位、Gram 与一般顶角见[首阶正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md>)。

先把 Hilbert space 限定到固定角动量 J 的不变空间 ℋJ，再令 P=Pᴱ,ᴶ 投影到其中**所有粒子数**的自由能量 E 简并空间，Q=1ℋJ−P。下文的 reduced resolvent 只作用于这个 Q 空间；不会把其它 J 的同能态留在一个未定义的逆算符中。其允许粒子数满足
\[
 P_N=\frac{E-N\Delta+J}{2},\quad Q_N=\frac{E-N\Delta-J}{2}
 \in\mathbb Z_{\ge0}.
\tag{3}
\]
若 PVₙP=0，二阶系数是
\[
 W_{E,J}=PV_nQ(E-H_0)^{-1}QV_nP+P V_{\rm ct}^{(2)}P.
\tag{4}
\]
实际能移为 λₙ² 乘 W 的本征值，反项在 (4) 中也已剥去 λₙ²。零分母必须归入完整 P，不是用 cutoff 或形式极限处理。若首阶已有 splitting，则先对完整 PVₙP 对角化，不能直接套用孤立态公式。

已有的全指标选择定则是：0↔n 不共振，1↔(n−1) 的共振积分严格为零。Δ=a/b 最简时，奇次顶角有非零首阶矩阵当且仅当 a 为偶数且 n≥b+4。因此 φ³ 首阶恒零，φ⁵ 首阶恰在正偶整数 Δ 非零。φ³ 的实质二阶谱和重整化已另行完成，见[φ³ 正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Cubic second-order spectrum.md>)。

本文的 φ⁵ 二阶公式排除这些已有首阶 splitting 的偶整数质量；其余有理质量仍须使用完整 (3)。

## 2. φ⁵ 的必要反项与缺少的物理数据

### 2.1 不变 regulator 与精确系数

Wick rotate 到 H³，令 s 为 geodesic distance、ν=Δ−1：
\[
 G_\Delta(s)=\frac{e^{-\nu s}}{4\pi\sinh s},\qquad
 G_\Delta(s)^\ell\mapsto\mathbf1_{s\ge\epsilon}G_\Delta(s)^\ell.
\tag{5}
\]
两个正规序顶角间有 ℓ 条 cross contractions 的连通 Euclidean effective-action 项为
\[
 -\frac{\lambda_5^2}{2\ell!(5-\ell)!^2}
 \int dV_xdV_y\,G_\Delta(x,y)^\ell
 :\phi(x)^{5-\ell}\phi(y)^{5-\ell}:.
\tag{6}
\]
负号来自二阶 cumulant；组合系数为 binom(5,ℓ)²ℓ!/[2(5!)²]。

用 dV=4πsinh²s ds，定义
\[
 I_{\ell,\epsilon}=\frac1{(4\pi)^{\ell-1}}
 \int_\epsilon^\infty\frac{e^{-\ell\nu s}}{\sinh^{\ell-2}s}ds.
\]
ℓ=1,2 局部可积；其余的发散部分为
\[
 \begin{aligned}
 I_{3,\epsilon}^{\rm div}&=\frac{\log(1/\epsilon)}{16\pi^2},\\
 I_{4,\epsilon}^{\rm div}&=\frac{\epsilon^{-1}-4\nu\log(1/\epsilon)}{64\pi^3},\\
 I_{5,\epsilon}^{\rm div}&=\frac{\tfrac12\epsilon^{-2}-5\nu\epsilon^{-1}
 +\tfrac12(25\nu^2-1)\log(1/\epsilon)}{256\pi^4}.
 \end{aligned}
\tag{7}
\]
在
\[
 H_{\rm ct}=\int r dr d\theta\left[
 \delta\Lambda+\frac{\delta m^2}{2}:\phi^2:
 +\frac{\delta\lambda_4}{4!}:\phi^4:\right]
\]
中，必需的发散反项为
\[
 \boxed{\delta\Lambda=\frac{\lambda_5^2}{240}I_{5,\epsilon}^{\rm div},\quad
 \delta m^2=\frac{\lambda_5^2}{24}I_{4,\epsilon}^{\rm div},\quad
 \delta\lambda_4=\frac{\lambda_5^2}{2}I_{3,\epsilon}^{\rm div}.}
\tag{8}
\]
尤其 quartic loop 的耦合为 −λ₅²log(1/ε)/(32π²)，所以反项是 (1) 的正号。mass/vacuum 的次级系数依赖上述明确的 geodesic cutoff 和 Wick 处方，不将它们声称为任意 regulator 下的独立普适数据。

没有必要的 kinetic、φ⁶ 或 φ⁸ 反项：ℓ=4 的 kernel 发散度只为一，奇导数角平均为零，二阶 Taylor 项已局部可积；ℓ=5 无外场。固定常曲率下，Rφ² 等只是同一 mass 参数的另一写法。真空先按密度减除，再移去 AdS 体积 cutoff。

φ⁵ 在三维是 **super-renormalizable**，不是 irrelevant interaction；这里出现 quartic matching 并不与此矛盾。

### 2.2 一个完整的最小匹配处方

可采用：

1. interacting vacuum energy 设为零；
2. 物理一体 gap 固定为 Δ，因 AdS 不变性，其整个 descendant tower 固定为 Δ+p+q；
3. 指定 two-ground 连接能量 E₂−2E₁+E₀=λ₅²β₂+…，匹配唯一剩余的有限 quartic 参数；
4. 不添加其它独立有限高次、导数或边界作用。

有限 δλ₄ 改变 two-ground binding 的量是
\[
 \delta B_2=\frac{\delta\lambda_{4,\rm fin}/\lambda_5^2}{8\pi(2\Delta-1)},
\tag{9}
\]
同时不改变 vacuum 和一体能移。因此条件 1、2 无法推导条件 3。指定 β₂ 后，最小理论在此阶无其它 UV 强制的 coupling datum；这不等于其所有有限矩阵的本征值已求完。

### 2.3 可复算的收敛 two-body 匹配式

给出一种明确的 spectral subtraction scheme。对 s>0，
\[
 G_\Delta^3=\frac1{4\pi^2}\sum_{a\ge0}(a+1)G_{3\Delta+2a}.
\]
令 κ=1/[8π(2Δ−1)]，对 exchanged dimension δ 定义
\[
 J_n(\Delta;\delta)=\frac{(2\pi)^{-1/2}}{2\Delta+\delta-2}
 \frac{(1+\delta/2-\Delta)_n}{(\Delta+\delta/2)_n},\quad\varpi_n=\delta+2n,
\]
\[
 b(\Delta;\delta)=\sum_{n\ge0}J_n^2
 \left[\frac12D(2\Delta,\varpi_n)-\frac2{\varpi_n}\right],\qquad
 D(\Omega,\omega)=\frac1{\Omega-\omega}-\frac1{\Omega+\omega}.
\tag{10}
\]
δ=3Δ+2a 时所有 denominators 均在交换 threshold 以下。取
\[
 \lambda_{4,\rm bare}(A)=\lambda_5^2\left[\eta_4+\frac{H_{A+1}}{32\pi^2}\right],
 \quad H_{A+1}=\sum_{a=0}^A\frac1{a+1},
\]
则 vacuum/gap matching 后
\[
 \boxed{B_2=\kappa\eta_4+\frac1{24\pi^2}\sum_{a=0}^\infty
 \left[(a+1)b(\Delta;3\Delta+2a)+\frac{3\kappa}{4(a+1)}\right].}
\tag{11}
\]
这是一个普通收敛和，不是两个发散和的形式相减。重质量 M²=δ(δ−2) 下 b=−3κ/M²+O(M⁻⁴)，故方括号为 O(a⁻²)。这也再次得到 (1) 的 log 系数。条件 B₂=β₂ 固定 η₄；它与 geodesic scheme 的有限参数不必数值相同，只有匹配后的物理 β₂ 相同。此处证明了收敛式，未声称已数值求完该双和。

## 3. 最高四体量：所有时间排序都必须保留

按 [H₀,VΩ]=ΩVΩ 定义 S=∑Ω≠0 VΩ/Ω。无首阶 splitting 时，(4) 的非局域部分等于 ½P[S,V]P。两个 quintic 单项式的零收缩十次项在交换子中相消，剩下的正规序次数仅为 8、6、4、2、0。因此最高连接作用是四体，而非五体。

对于不混合的 ground branches，二阶 ground energy 可写为
\[
 E_N=N\Delta+\lambda_5^2\sum_{r=0}^4\binom Nr B_r+\cdots.
\tag{12}
\]
四阶有限差分提取 B₄，消掉 vacuum、mass、quartic，甚至任何有限 sextic 的贡献。若加入新的 λ₅²c₈φ⁸/8!，则 B₄ 额外改变
\[
 \delta B_4=\frac{c_8}{384\pi^3(4\Delta-1)}.
\]
这种额外 octic 是不同物理理论，不是必须反项的另一有限减除。

令 x=(1+r²)⁻¹，$f_0=x^{\Delta/2}/\sqrt{2\pi}$，零角动量内部模为
\[
 f_n=\frac{x^{\Delta/2}}{\sqrt{2\pi}}P_n^{(\Delta-1,0)}(1-2x),\quad
 \omega_n=\Delta+2n.
\]
四条 ground 外腿的 source overlap 为
\[
 I_n=\int r dr d\theta f_0^4f_n
 =\frac{(2\pi)^{-3/2}}{5\Delta-2}
 \frac{(1-3\Delta/2)_n}{(5\Delta/2)_n}.
\tag{13}
\]
在一个顶角的四条外腿中取 a 条 creation、4−a 条 annihilation。互补分配和全部时间排序给出
\[
 \boxed{B_4=4!\sum_{n\ge0}I_n^2\sum_{a=0}^4
 \frac1{a!^2(4-a)!^2[(2a-4)\Delta-\omega_n]}}
\]
\[
 \boxed{\phantom{B_4}=
 \sum_{n\ge0}I_n^2\left[\frac1{24}D(4\Delta,\omega_n)
 +\frac23D(2\Delta,\omega_n)-\frac3{2\omega_n}\right].}
\tag{14}
\]
全 backward 的 a=0 分配同样必须保留。非终止时 Iₙ=O(n¹⁻⁴Δ)，被求和项为 O(n¹⁻⁸Δ)，对 Δ>1 绝对收敛。4Δ=ωₙ 的 apparent pole 总伴随 source zero，由 Q 排除；2Δ=ωₙ 在偶整数 Δ 上为真正的首阶共振，不能用 (14) 当作已经对角化的谱。

### 3.1 精确 Δ=4/3 例子与完整简并检查

此时 (1−3Δ/2)ₙ=(−1)ₙ，所以只有 n=0,1：
\[
 I_0^2=\frac9{1568\pi^3},\quad I_1=-\frac3{10}I_0,
\]
\[
 B_{4,n=0}=-\frac{81}{17920\pi^3},\qquad
 B_{4,n=1}=-\frac{9297}{11648000\pi^3}.
\]
相加得到 (2)。n=2 的 source zero 包含 one-to-many 的零分母，必须先按 Q 排除。

N=1,2,3 的完整 (E=NΔ,J=0) ground blocks 都是一维；N=4 的完整空间是
\[
 \operatorname{span}\left\{\frac{(a_{00}^\dagger)^4}{\sqrt{4!}}|0\rangle,
 a_{22}^\dagger|0\rangle\right\},\quad E=16/3.
\]
两者首阶矩阵为零，二阶 VV 和必要反项都保持 free field parity (−1)ᴺ，所以异 parity 的两态严格不混合。一体项由 gap matching 归零。因此这里 (2) 是**真实能级的有限差分**，而非未经完整对角化的某个矩阵对角元。

对一般有理非偶 Δ，(14) 总能作为最高正规序 ground 系数使用，但要称为能级有限差分，必须另外确认这种不混合条件。无理 Δ 自动满足 ground blocks 的孤立性。

## 4. 一般奇次 n=2k+1：有限最高多体定理

令 m=n−1=2k。零收缩项相消，所以一般二阶作用的最高正规序次数是 2n−2，恰为 m 体。只有单内部线的 tree exchange 贡献该项。令
\[
 c_n=\frac{(2\pi)^{1-n/2}}2,\qquad
 I_\nu=c_n\frac{(1-(n-2)\Delta/2)_\nu}{(n\Delta/2-1)_{\nu+1}},
 \qquad\omega_\nu=\Delta+2\nu.
\tag{15}
\]
对不混合的 ground branches，定义最高有限差分
\[
 B_m=\sum_{N=0}^m(-1)^{m-N}\binom mN[E_N]_{\lambda_n^2}.
\]
与 (14) 相同的单收缩计数给出
\[
 \boxed{B_m=m!\sum_{\nu\ge0}I_\nu^2
 \sum_{r=0}^{m}\frac1{r!^2(m-r)!^2[(2r-m)\Delta-\omega_\nu]}.}
\tag{16}
\]
若只计算正规序对角系数，则 (16) 无需假设没有其它 ground mixing；谱的称谓仍要求 (4)。极点必须按实际 Q 和首阶 mixing 处理，不允许盲目消去 special-function 参数。

### 4.1 对每个奇数 n 都有显式非共振有限例子

取 Δ*=2k/(2k−1)，则 source 的首参数是 1−k，故
\[
 I_\nu=0\quad(\nu\ge k).
\tag{17}
\]
首阶能量算术只留下 1↔2k 的可能通道，而这个通道由 one-leg Jacobi 选择定则消失。因此完整 PVₙP=0；这里既用了算术，也用了选择定则。

对 1≤N≤m=2k，完整 (E=NΔ*,J=0) 块只有 ground 态，唯一例外是顶端 N=m，还包含一体 (p,q)=(k,k)。理由是
\[
 P_{N'}=Q_{N'}=\frac{(N-N')k}{2k-1}\in\mathbb Z,
\]
而 gcd(k,2k−1)=1，在 0<N−N′≤m−1 中只能取 N−N′=2k−1。N′=0 只有 E=0 的 vacuum，不存在正能量的零粒子激发态。顶端的两态 field parity 相反，二阶严格不混合。故 (16) 在这整个族上都是物理能级的有限差分。

### 4.2 全 k 的严格负性证明

写
\[
 F_m(t)=\sum_{r=0}^m\frac{\binom mr^2}{2r-m-t},\qquad
 B_m=\sum_{\nu=0}^{k-1}\frac{I_\nu^2}{m!\Delta_*}F_m(t_\nu),
\]
\[
 t_\nu=\frac{\omega_\nu}{\Delta_*}=2\nu+1-\frac\nu k
 \in(2\nu,2\nu+1].
\tag{18}
\]
在相邻 poles 之间 F′ₘ(t)>0。只需证明 midpoint t=2ν+1 上 Fₘ<0。

令 j=r−k、wⱼ=binom(2k,k+j)²，并在 |j|>k 时补 wⱼ=0。将 j≤ν 与 j′=2ν+1−j≥ν+1 配对，二者分母为相反的奇数，pair contribution 为
\[
 \frac{w_{j'}-w_j}{2\nu+1-2j}\le0.
\]
因为 |j′|>|j|，而 wⱼ 关于 |j| 对称递减；至少一项严格负。因此 Fₘ(2ν+1)<0。由单调性 Fₘ(tν)≤Fₘ(2ν+1)<0，又 I₀≠0，得到
\[
 \boxed{B_{2k}\big(2k/(2k-1)\big)<0\quad\text{对所有 }k\ge1.}
\tag{19}
\]
这证明每种奇次作用都有真正非零的二阶多体效应，不依赖某个低阶数值表。

例如
\[
 B_2(2)=-\frac5{192\pi},\qquad
 B_4(4/3)=-\frac{61947}{11648000\pi^3},
\]
\[
 \boxed{B_6(6/5)=-\frac{168524890325}{523590680051712\pi^5}.}
\tag{20}
\]
第一式与已完成的 cubic 理论完全一致；后两式另外由原始 occupation action 的四阶、六阶有限差分独立重算。

### 4.3 为什么这是普适的最高连接量

对一般 n，两顶角之间 ℓ 条线的局部 kernel 是 Gℓ。近重合点，用 2a 阶 Taylor 项后径向幂次为 s²⁻ℓ⁺²ᵃ，发散只能在
\[
 \ell\ge3+2a
\tag{21}
\]
发生。因此所有必要局部二阶反项至多有 2(n−3) 条外腿，即至多 n−3 体；可伴随导数和固定曲率项，并须按分部积分、自由 EOM 和场重定义去除冗余。它们无法改变最高 n−1 体的 (16)。对 n≥7，完整 EFT 的其它能级需要相应有限 matching 数据，本文没有偷偷将它们设为可由 vacuum/gap 决定。

(16) 本身对 Δ>1 的非共振区域绝对收敛：Iν=O(ν¹⁻⁽ⁿ⁻¹⁾Δ)，被求和项为 O(ν¹⁻²⁽ⁿ⁻¹⁾Δ)。同一个谱和在复半平面 ReΔ>1 上为亚纯函数：删去离散 poles 后的域连通，级数在其紧子集上局部一致收敛；one-leg source zeros 对应可去奇点。非零例族 (19) 因而证明它在这个连通域不恒为零，而非仅在一个实区间非零。因此，在 PVₙP=0 且 ground branches 不混合的区域，除离散特殊零点外，二阶确实是奇次作用的首个非零谱阶。

但 (19) **不**声称所有非共振 Δ 的 Bₘ 都为负。真共振 pole 两侧符号可变，特殊质量下某一个 ground finite difference 可以为零；那时必须检查其它矩阵元，而不能断言整个二阶作用消失。

## 5. 算法、复算与未完成部分

[odd_highest_binding.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/odd_highest_binding.py>) 实现 (15)–(16)：

```bash
sage --nodotsage -python code/odd_highest_binding.py --degree 5 \
  --output results/quintic_highest_fresh.json
sage --nodotsage -python code/odd_highest_binding.py --degree 7 \
  --output results/septic_highest_fresh.json
```

默认取 Δ=(n−1)/(n−2)。输出剥去的公共因子是
\[
 \lambda_n^2c_n^2=\frac{\lambda_n^2}{4(2\pi)^{n-2}}.
\]
终止 source 返回精确有理数；非终止 source 必须显式给 cutoff，输出只标记为部分和；遇到非零 source 的共振分母会拒绝将它当作非简并谱。这个程序不是完整 renormalized 奇次作用矩阵引擎。

**Verified:** Wick/Bose 因子、UV series 与反项符号、全部 backward/forward 分配、Δ=4/3 的完整块和 parity、一般奇次有限族的退化分析、(19) 的全指标证明；Sage 与 Wolfram 独立有限差分重算。父流程的[交叉证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/extended_structures_exact_01.json>) 另外核验 n=3,…,13 的有限族、全部相关 ground blocks、实际 source 积分和拒绝活跃 pole。

**Assumptions:** 指定自由真空附近的微扰分支；固定 standard boundary theory；φ⁵ 的 two-body matching datum 明确指定；没有额外同阶、2n−2 外腿的独立有限局域形变，包括导数接触项。实奇次势无下界，这些结果不是非微扰真空稳定性定理。

**Not verified / 尚未求解:** φ⁵ 在全部有理 Δ 的完整二阶矩阵及其跨 N 对角化；(11) 的数值全双和；一般 n≥7 的全部 EFT 参数匹配和完整低体谱；二阶特殊零点的全分类；高阶及联合大 N 余项。独立的[quintic 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/report.md>)、[一般奇次批判复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-audit.md>) 与[实际运行记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/check-results.md>) 分别保留证据来源与失败修复记录。
