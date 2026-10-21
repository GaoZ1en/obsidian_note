# φ⁴ 的一般 N 显式谱、真实半整数分裂与一个物理 S₇ 谱块

## 主要结果

**任意有限 N 的构造可以进一步给出对 N、Δ 显式的整族答案；混合扇区既有简单精确谱族，也有真正的半整数大 N 分裂和不可用根式统一求解的物理块。** 本文不使用 Einstein pair multiplier。

最重要的例子是三维 primary 块 (P,Q)=(2,2)：对所有 Δ>1、N≥4，算符精确等于

\[
\frac{\mathcal K_N}{c_0}=\binom N2 I+N A(\Delta)+B(\Delta),
\qquad c_0=\frac1{8\pi(2\Delta-1)}.
\]

在
\[
\boxed{\Delta_c=\frac{\sqrt{13}-1}{2}}
\]
有两个真正物理谱支发生
\[
\boxed{\frac{\varepsilon_\pm}{c_0}
=\binom N2-\frac{2N}{\sqrt{13}}
\pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N
-\frac{\Delta_c+2}{13+2\sqrt{13}}+O(N^{-1/2}).}
\]
这里 \(E=E_0+\lambda\varepsilon+o(\lambda)\)。这不是有限 N 的非厄米异常点；每个有限物理块均在正 Gram 度量下自伴。发生奇异缩放的是大 N 坐标度量。

另一个有限例子：Δ=2、N=8、(P,Q)=(3,3) 的七维左右偶块有 Galois 群 **S₇**。因此“任意 N 的完整谱”应理解为显式有限矩阵、代数根及物理本征空间，而不是一个对所有块成立的根式公式。

## 1. 对象、归一化与可复算构造

使用同一实标量、L=1、质量 \(m^2=\Delta(\Delta-2)\)、中心光滑、source-free fast falloff 和固定边界时钟。相互作用为 \(-\lambda\phi^4/4!\)，AdS-invariant vacuum Wick 减除固定物理 gap 与真空能量。

\[
\mathcal K_N=\sum_{i<j}\sum_{n\ge0}
\frac{\Pi_{ij}^{(n,n)}}{8\pi(2\Delta+2n-1)}.
\]

以下所有谱值都是 **λ 的系数**；\(c_0\) 不包含 λ。主要构造与任意 N 的实际 CLI 见 [任意 N 谱笔记](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md>)。本文另写了不导入该 CLI 或引力引擎的 [符号 N 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_stable_pencils.py>)：它用有限 Jacobi–Beta 积分直接生成有理顶角，保留 N 与 Δ 为符号。

### 1.1 为什么 N 依赖是精确二次多项式

设 \(w_p=(\Delta)_p/p!\)。以 \(a_{pq}\) 表示 creation-algebra 坐标，令 \(a_{00}=1\)。一个激发 occupation \(\boldsymbol n\)、\(r=\sum_{(p,q)\ne(0,0)}n_{pq}\) 对应
\[
|\boldsymbol n;N\rangle=
\frac{(b_{00}^\dagger)^{N-r}}{\sqrt{N!}}
\prod_{(p,q)\ne(0,0)}
\left(\frac{b_{pq}^\dagger}{\sqrt{w_pw_q}}\right)^{n_{pq}}|0\rangle.
\]
其对角 Gram 为
\[
G_{\boldsymbol n}=\frac{\prod n_{pq}!(w_pw_q)^{-n_{pq}}}
{N(N-1)\cdots(N-r+1)}.
\]

四次正常序算符最多湮灭两个基态粒子，所以每个矩阵元对 N 至多二次。唯一二次项来自两个 ground legs；非负且守恒的 p、q 禁止它们产生非零激发。因此二次项为公共的 \(c_0\binom N2I\)，余下严格为 \(N A+B\)。**这不是用三个 N 值拟合后外推。**

### 1.2 N 无关的 primary 基

定义
\[
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij}.
\]
联合 lowering 核是这些 \(p+q\ge2\) 的 centered generators 所生成的多项式代数。固定总次数 (P,Q) 后，在 N≥max(1,P+Q) 范围内没有 occupation 截断，因此该单项式基、嵌入矩阵 Φ 都不依赖 N 或 Δ。

例如 (2,2) 基为 \((c_{22},c_{20}c_{02},c_{11}^2)\)。**这里的乘积是 creation algebra 的乘积，不是固定 N 波函数的逐点乘积。**

物理度量为 \(\Gamma=\Phi^TG\Phi>0\)，所得坐标矩阵满足
\[
(N A+B)^T\Gamma=\Gamma(N A+B).
\]
不能以坐标矩阵不对称为由判定谱不实。

## 2. 对所有允许 N 成立的低激发谱族

下表给出 \(\rho=\varepsilon/c_0\)。左右交换给出相应镜像。

| primary 次数 | 适用粒子数 | 唯一本征值 ρ |
|---|---|---|
| (0,0) | N≥0 | \(\binom N2\) |
| (1,1) | N≥2 | \(\binom N2-N/(2\Delta+1)\) |
| (2,0) | N≥2 | \(\binom N2-(N\Delta+1)/(2\Delta+1)\) |
| (2,1) | N≥3 | \(\binom N2-[(\Delta+2)N+2]/[2(2\Delta+1)]\) |
| (3,0) | N≥3 | \(\binom N2-3(N\Delta+2)/[2(2\Delta+1)]\) |

### 2.1 (3,1) 的两条精确谱支

记 \(D_2=(2\Delta+1)(2\Delta+3)\)。对 N≥4：
\[
\rho_1=\binom N2-
\frac{2\Delta^2+4\Delta+3}{D_2}N+\frac3{D_2},
\]
\[
\rho_2=\binom N2-
\frac{\Delta+1}{2\Delta+1}N-\frac3{2\Delta+1}.
\]
两支之差为
\[
\rho_1-\rho_2=\frac{N\Delta+6\Delta+12}{D_2}>0.
\]
因此这个块没有物理质量内的 leading resonance。它和下节 (2,2) 的行为不同，不能从一个低块猜测全部谱。

低 N 不可随意代入后保留所有根。例如 N=3、Δ=2 的 (3,1) 物理 primary 仅一维，实际值是 51/35，而不是以上两根全部存在。一般低 N 应使用真正的有限 occupation 构造。

### 2.2 (3,3) 的左右奇谱支：N≥4 的显式族

左右奇 creation polynomial 可取
\[
F_-=c_{02}c_{31}-c_{20}c_{13}.
\]
展开后所有含五、六个激发因子的项精确消去，最多只含四个激发粒子。故虽然整个 (3,3) 稳定基要求 N≥6，这一向量在 N≥4 已定义且非零。固定 N=4、5 的精确字符计数以及 N≥6 的稳定代数均给出奇空间维数一。

它的完整谱为
\[
\boxed{\rho_-=
\binom N2-\frac{(\Delta+1)[(4\Delta+3)N+6]}{D_2},\qquad N\ge4.}
\]
Δ=2 时，N=4、5、6、8 分别为
\[
\frac{12}{7},\quad\frac{167}{35},\quad\frac{309}{35},\quad\frac{698}{35}.
\]
这些均非零。它是“三粒子左右奇性保护不能推广到 N≥4”的一个完整谱族，而不只是非零投影的反例。

## 3. 完整 (2,2) 谱：一般 N、一般 Δ

在上述三基下，直接积分得到
\[
A=\frac1{D_2}
\begin{pmatrix}
-(\Delta^2+5\Delta+3)&0&0\\
-\Delta^2-\Delta+3&-2\Delta(2\Delta+3)&0\\
2\Delta^2&0&-2(2\Delta+3)
\end{pmatrix},
\]
\[
B=\frac1{D_2}
\begin{pmatrix}
\Delta^2-\Delta-3&-\Delta^2-\Delta+3&(\Delta+1)^2\\
5\Delta^2+5\Delta-3&3\Delta^2-3\Delta-9&(\Delta+1)^2\\
-2\Delta^2+4\Delta+12&2\Delta^2&-2\Delta^2-2\Delta+2
\end{pmatrix}.
\]

因此一般 N 的三个答案就是
\[
\det\left[(\rho-\tbinom N2)I-NA-B\right]=0
\]
的三个实根；其物理本征空间由该三维核及明确的 Φ 给出。全部矩阵与 Gram 的有理函数记录在 [符号低块结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_stable_lowblocks_01.json>)。

例如 N=4、Δ=2：
\[
\rho^3-\frac{76}{7}\rho^2+\frac{6708}{175}\rho-
\frac{7704}{175}=0.
\]
它已与另一套有限 N 程序的完整 Fock 作用、Gram 和谱逐项交叉，而不是只比较三个小数。

### 3.1 唯一物理 leading collision

A 的三个本征值为
\[
\sigma_a=-\frac{\Delta^2+5\Delta+3}{D_2},\quad
\sigma_b=-\frac{2\Delta}{2\Delta+1},\quad
\sigma_c=-\frac2{2\Delta+1}.
\]
\(\sigma_a-\sigma_b=(3\Delta^2+\Delta-3)/D_2>0\) 在 Δ>1 恒成立；另一次碰撞满足
\[
\sigma_a-\sigma_c=\frac{3-\Delta-\Delta^2}{D_2}=0.
\]
故唯一物理根是 Δc。此时代数重数二、几何重数一，但仅此还不能推出真实谱分裂。

### 3.2 为什么确实是 √N，而非坐标假象

在碰撞点，正向 leading coupling 和反向次阶 coupling 满足
\[
A_{31}B_{13}=\frac{2\Delta_c^2(\Delta_c+1)^2}{D_2(\Delta_c)^2}
=\frac{18}{(13+2\sqrt{13})^2}>0.
\]
将 N=T²、\(\rho=\binom N2+\sigma_cN+zT+b\) 代入实际三阶特征多项式，最高非零 T 次数为四，其系数为
\[
(\sigma_c-\sigma_b)
\left[z^2-\frac{18}{(13+2\sqrt{13})^2}\right].
\]
两个 z 根简单且实，隐函数定理给出两个在 1/T 局部解析的谱支。下一阶给出共同常数 \(b=-(\Delta_c+2)/D_2(\Delta_c)\)，得到开头的展开。这里验证的是完整特征方程，不是只看 A 的 Jordan 标准型。

这个 A、B、物理 Gram 和非零分裂系数还由未读候选答案的独立审查者，从 pair-Casimir 插值重新构造，见 [独立 stable 审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/exact stable full proof audit.md>) 及 [独立矩阵证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_22.json>)。

## 4. 失谐尺度与可检验的 crossover

令
\[
\Delta=\Delta_c+\frac u{\sqrt N},\qquad
\bar\sigma(\Delta)=\frac{\sigma_a(\Delta)+\sigma_c(\Delta)}2,
\quad \beta=\frac{3\sqrt2}{13+2\sqrt{13}}.
\]
对固定有界 u，两个谱支满足
\[
\boxed{\frac{\rho_\pm-\binom N2-N\bar\sigma(\Delta)}{\sqrt N}
\longrightarrow
\pm\sqrt{\beta^2+\frac{u^2}{4(\sqrt{13}+2)^2}}.}
\]

证明是前一节的二参数版本：\(\sigma_a-\sigma_c\) 在 Δc 的导数为 \(-1/(\sqrt{13}+2)\)；直接令 t=N^{-1/2}、Δ=Δc+ut 作 Laurent 展开，特征行列式 t^-4 系数恰为上述二次式乘正的 \(\sigma_c-\sigma_b\)。两个根对有界 u 始终简单，故结论局部一致。验证保留了全部三维耦合。

![真实 φ⁴ 混合块的临界失谐 crossover](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/figures/phi4_resonance_crossover.png>)

虚线来自解析极限；实线由 N=100、400、1600 的完整三阶矩阵计算。图中浮点数据是说明，不充当证明；[Laurent 精确证书及绘图数据](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_resonance_crossover.json>) 单独标记了二者。

## 5. 一个物理 S₇ 反例：为什么不能要求统一根式

取 N=8、Δ=2、(P,Q)=(3,3)。整个 primary 为八维；左右奇块是一维，谱值为 698/35。偶块为七维，其特征多项式清分母后的 primitive 整系数形式为
\[
\begin{aligned}
f_7(z)={}&157565625z^7-23205665000z^6
+1462586814500z^5-51138014520600z^4\\
&+1071221655190400z^3-13443822361820960z^2\\
&+93593295299197440z-278827127932310784.
\end{aligned}
\]
这里 \(z=\varepsilon/c_0\)，不是另一次能量缩放。

本次从符号 N 的径向积分矩阵重新构造这个完整八维块，并与另一有限 N 引擎独立计算的特征多项式精确相符。七个根全部为实数且在 (0,28) 内。

严格有限域证书：

1. 模 11 保持七次且不可约，所以在 Q 上不可约；Galois 群是七点传递群，从而因次数为素数而本原。
2. 模 107 的 square-free 分解次数为 (2,5)，相应 Frobenius 元素的五次方是一个换位。
3. 本原群中所有共轭换位的边组成连通图；这些换位生成 S₇。因此 \(\operatorname{Gal}(f_7/\mathbb Q)=S_7\)。

另一独立审查还找到模 19 的 (1,1,1,1,1,2) 分解，直接给出换位。分别见 [物理重建与 S₇ 证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_septic_certificate.json>) 与 [独立算术复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_galois7.json>)。

这排除了覆盖所有有限物理块的根式公式，**不排除 Bethe 型描述、特殊谱族、守恒量或其它意义的可积性**。代数根加严格隔离区间仍是精确谱解。

## 6. 验证账本与适用范围

- **Verified：** 九个符号低块的精确 affine pencil 与物理 Gram 恒等式；48个一般 N／质量交叉实例的全 shell 矩阵和 Gram；临界点的代数／几何重数、Newton 主部、共同常数项、三阶 Sylvester 正性；16个 FIN primary-projector 实例；奇 (3,3) 的四粒子支撑及12个物理谱值。最终 [166项精确证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_stable_certification_02.json>) 全通过。
- **Independent：** (2,2) 整个符号矩阵、Gram 与 √N 分裂由另一条 pair-Casimir 路线重建；S₇ 有独立有限域证书。不同实现与重复执行不相加成同一种“独立证明”计数。
- **Assumptions：** 固定有限激发块；Δ>1；上述 Wick／时钟／边界条件；stable 范围或单独证明的较低 N 延拓；正物理内积。
- **Not verified：** 无统一的大激发、大 N 微扰余项；没有把 λ 固定而 N→∞ 的系数渐近提升成完整相互作用理论的受控极限；没有声称一般混合块的全部显式谱族或可积分类已经完成。

最初的符号批次遇到 JSON 整数序列化问题，认证脚本另遇到 Python float 的 number-field embedding 类型问题；均属工具接口问题，修正后完成实际运行，未把失败执行计为通过。上一份较早 crosscheck 快照也保留；本节引用最后的完整 Sylvester／Newton 认证，不把行列式正性单独冒称正定证明。
