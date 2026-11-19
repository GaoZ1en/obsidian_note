# 第 5–6 节独立全局审稿

## 判定

**在明确周期、取向、固定坐标周期和两导数近似后，所列磁／电周期积分、等 squash 与 null 变形下的荷不变性、不等球式 (26)、seed 中心荷及 timelike 闭合类时曲线阈值均成立。** 找到的实质缺口是：**合法的环面商不自动保证两磁荷可同时整数化；半径平方比必须为有理数。** 此点已报告给整合者，复读当前稿确认已补入，不再是当前版本的未修错误。

独立检查的源是 [solution.md](</Users/koishi/Documents/Note/Drafts/test_2/solution.md>) 的第 5–6 节和第 1–4 节必要定义。先读取适用 [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>)；没有阅读既有审稿结论，没有联网，没有使用 CPS 或读取外部 CPS 规则。原稿由本审稿者只读；只新建本报告。

## 1. 固定约定与拓扑

采用 mostly plus、正交余标架次序
\[
(012)_A,(345)_+,(678)_-,9=x,10=y,
\qquad \operatorname{vol}_{11}=e^{0123456789\,10},
\]
以及
\[
\alpha\wedge\star\beta=\langle\alpha,\beta\rangle\operatorname{vol}_{11},
\qquad 2\kappa_{11}^2=(2\pi)^8\ell_p^9=16\pi G_{11}.
\]
取正半径，\(f_A=2/L,f_\pm=2/R_\pm\)，\(L^{-2}=R_+^{-2}+R_-^{-2}\)。所有环面周期用其明确给出的坐标周期；不把变形后的 proper 周长与种子 proper 周长混同。

\(\mathbb R^2\) 可缩，故内部空间与 \(S^3\times S^3\) 同伦等价，其普通整数同调仅在次数 \(0,3,6\) 非零：
\[
H_4(S^3\times S^3\times\mathbb R^2;\mathbb Z)=H_7(S^3\times S^3\times\mathbb R^2;\mathbb Z)=0.
\]
因此本稿使用的紧闭四／七维周期不存在。这个结论针对指定内部空间的普通同调，**不排除另加边界条件后的相对同调荷、无穷远通量或其他全局商**。

种子的三形式 \(H_3=f_Av_A+f_+v_++f_-v_-\) 闭合，且
\[
d(-xH_3)=-dx\wedge H_3=H_3\wedge dx=F_0.
\]
在非紧 \(x\) 上这是全局势；在 \(x\) 圆上不是单值全局势，需拼接。对等 squash 族增加全局三形式 \(\delta\widehat\gamma G\Theta\) 即得相应势；exact 的新增磁通不会产生新的紧周期磁荷。

紧化成 \(T^2\) 后，Künneth 公式给
\[
H_4\cong\mathbb Z^4,\qquad H_7\cong\mathbb Z^2.
\]
四维生成元是每个 \(S^3_\pm\) 分别乘 \(S_x^1,S_y^1\)；七维生成元是两个球的乘积分别乘 \(S_x^1,S_y^1\)。文稿选出的非零荷只是其中指定的分量，并非声称只有这些拓扑周期。

## 2. 独立推导 M5 与 M2 系数、取向及 Page 项

磁周期取 \(v_\pm\wedge dx\) 正向，则
\[
\int_{S^3_\pm\times S_x^1}F_0
=\frac2{R_\pm}(2\pi^2R_\pm^3)\ell_x
=4\pi^2R_\pm^2\ell_x,
\]
所以
\[
N_{5,\pm}=\frac{R_\pm^2\ell_x}{2\pi\ell_p^3}.
\]

关键 Lorentz 符号为
\[
\boxed{\star e^{0129}=-e^{345678\,10}.}
\]
原因是 \(0129\) 与补指标 \(345678\,10\) 拼接到标准体积的排列为偶排列，而 \(e^{0129}\) 的范数为负。故在正乘积电周期 \(v_+\wedge v_-\wedge dy\) 上，原稿的正 \(f_A\) 给**负**电通量。原稿选择的相反周期取向恰好给正电荷：
\[
\int_{\Sigma_{7,+}}\star F_0
=\frac2L(2\pi^2R_+^3)(2\pi^2R_-^3)\ell_y,
\qquad \operatorname{or}(\Sigma_{7,+})=-\operatorname{or}(v_+v_-dy),
\]
\[
N_2=\frac{R_+^3R_-^3\ell_y}{8\pi^2L\ell_p^6}.
\]
除以 \(\ell_x\) 或 \(\ell_y\) 就是式 (24) 密度；量纲分别为长度的负一次。

从 \(d\star F+\tfrac12F\wedge F=0\)、\(F=dC_3\)、\(dF=0\) 得
\[
d\left(\star F+\tfrac12C_3\wedge F\right)=0
\]
仅作为局部势下的局部等式。对本文指定电周期，三种族均有
\[
\iota^*F=0\quad\Longrightarrow\quad\iota^*(C_3\wedge F)=0
\]
（每个势片分别成立），故所选代表下 Page 周期积分等于上述 Maxwell 积分。非零磁通导致的全局势拼接不能据此在所有其他周期上忽略。

## 3. 等 squash、null 与整体缩放：三种不同问题

### 3.1 式 (5) 固定周期的变形

用种子余标架比较度规，八个 base 方向的度规系数为 \(G^{-1/3}\)，三个 fiber 为 \(G^{2/3}\)，故
\[
\frac{\operatorname{vol}(g')}{\operatorname{vol}(g_0)}
=(G^{-1/3})^{8/2}(G^{2/3})^{3/2}=G^{-1/3}.
\]
原电分量 \(F_{0129}\) 含一个 AdS fiber 和三个 base 指标，不论 fiber 为 0 还是 2，四个逆度规因子之积都是
\[
G^{-2/3}(G^{1/3})^3=G^{1/3}.
\]
二者相乘为 1，故电周期上的 \(\star F\) 不变。新增 \(d\Theta\) 项的对偶都至少留下一个 AdS 腿，拉回电周期为零；其本身也不贡献上述磁周期。因此式 (25) 在**固定种子参数与同一坐标周期**下与 \(\widehat\gamma\) 无关。这里取 \(G>0\)，取向不发生跳变。

### 3.2 Null 族

AdS 的 \((u,v)\) 块为
\[
\begin{pmatrix}-L^2B^2/z^4&-L^2/z^2\\-L^2/z^2&0\end{pmatrix},
\]
行列式恒为 \(-L^4/z^4\)，所以 AdS 体积形式不随 \(B\) 改变。原来的三 AdS 腿电项的对偶仍是同一内部体积形式；新增项只有一个或两个 AdS 腿，其对偶仍带 AdS 腿，不贡献所选电周期。式 (25) 也不随 \(B\) 改变。这一论证不需要任何超荷计数假设。

### 3.3 不能把上述结论误称为任意整体缩放下的荷不变

对常数 \(s>0\)，在固定坐标域下
\[
g\mapsto s^2g,\quad F\mapsto s^3F,\quad C_3\mapsto s^3C_3,
\qquad \star_{s^2g}|_{\Omega^4}=s^{11-8}\star_g=s^3\star_g.
\]
经典场方程不变：Maxwell 两项都乘 \(s^6\)，Einstein 的下标形式两边都不变。但在固定 \(\ell_p\) 时
\[
\boxed{N_5\mapsto s^3N_5,\qquad N_2\mapsto s^6N_2,\qquad c_{\rm seed}\mapsto s^9c_{\rm seed}.}
\]
这里物理环面周长也随整体度规缩放乘 \(s\)。半径比 \(\alpha\) 和局部超荷数不变。连续整体缩放一般不保持量子荷晶格；若需要保持整数，可选满足整数条件的离散尺度，例如 \(s^3\in\mathbb Z_{>0}\)。文稿的式 (5) 变形不变性与式 (6) 的重标度只是不同叙述，不能混用；现有主要公式没有混淆。

## 4. 不等球式 (26) 的独立周期积分

取 \(q=+\sqrt{1-t^2}>0\)，采用式 (21) 的归一化，不另恢复式 (5) 的整体尺度。
\[
e^2=q\theta^2,\qquad e^5=q\theta^5,\qquad e^8=\theta^8.
\]
第一球的实际体积为 \(q\,2\pi^2R_+^3\)，第二球体积为 \(2\pi^2R_-^3\)。故
\[
\int_{S^3_+\times S_x^1}F_{\rm u}=q\,4\pi^2R_+^2\ell_x,
\qquad
\int_{S^3_-\times S_x^1}F_{\rm u}=q\,4\pi^2R_-^2\ell_x.
\]
第二个 \(q\) 来自显式通量系数，不来自第二球体积。

原电分量的正交幅度仍为 \(f_A\)，且
\[
\left.\star F_{\rm u}\right|_{\Sigma_7}
=-f_A e^{345678\,10}
=-qf_A v_+\wedge v_-\wedge dy.
\]
三个新增分量 \(015\,10\)、\(234\,10\)、\(0134\) 的补指标都含 AdS 腿，因而不贡献电周期。指定周期上的 \(C_3\wedge F\) 仍为零。于是
\[
N_{5,\pm}^{\rm u}=q\frac{R_\pm^2\ell_x}{2\pi\ell_p^3},
\qquad N_2^{\rm u}=q\frac{R_+^3R_-^3\ell_y}{8\pi^2L\ell_p^6},
\]
正是式 (26)。尽管 \(F_{\rm u}\wedge F_{\rm u}\ne0\)，该指定周期的计算仍成立；不能反推任意周期的 Maxwell 荷都闭合。

## 5. 找到并已被整合的纠正：量子化的有理性约束

最初读到的第 5.2 节只加入合法 \(T^2\) 商与自旋结构下降条件，随后直接称式 (25) 为整数荷。这不足以保证任意连续半径可量子化，因为
\[
\frac{N_{5,+}}{N_{5,-}}=\frac{R_+^2}{R_-^2}.
\]
只要两荷都是非零整数，右边必须有理。反例可取
\[
R_+^2=\sqrt2\,R_-^2,\qquad L^{-2}=R_+^{-2}+R_-^{-2}.
\]
这是允许的经典正半径数据，却不存在同一个非零 \(\ell_x\) 使两磁荷同时整数化。缩放 \(\ell_y\) 或整体尺度不改变这个障碍。反过来，若 \(R_+^2/R_-^2=m/n\) 且 \(m,n\) 为正整数，可以选择 \(\ell_x=2\pi\ell_p^3m/R_+^2=2\pi\ell_p^3n/R_-^2\)，再独立选 \(\ell_y\) 满足正整数电荷。

因此该简单量子化紧化中
\[
\boxed{\alpha=\frac{R_-^2}{R_+^2}=\frac{N_{5,-}}{N_{5,+}}\in\mathbb Q_{>0}.}
\]
不等球式 (26) 的共同 \(q\) 因子相消，具有同样的必要有理性条件。

本缺口已报告给整合者；复读 [solution.md:467–474](</Users/koishi/Documents/Note/Drafts/test_2/solution.md#L467-L474>) 确认已加入经典积分与量子化的区别及上述有理性条件。本审稿者未修改源文。

## 6. 中心荷系数

从给定引力耦合得到
\[
G_{11}=\frac{(2\pi)^8\ell_p^9}{16\pi}=16\pi^7\ell_p^9.
\]
seed 为无 warp 的直积，故爱因斯坦项约化给
\[
V_8=(2\pi^2R_+^3)(2\pi^2R_-^3)\ell_x\ell_y,
\qquad G_3=G_{11}/V_8,
\]
\[
c_L=c_R=\frac{3L}{2G_3}
=\frac{3LR_+^3R_-^3\ell_x\ell_y}{8\pi^3\ell_p^9}.
\]
另一方面
\[
\frac{N_{5,+}N_{5,-}}{N_{5,+}+N_{5,-}}
=\frac{\ell_x}{2\pi\ell_p^3}\frac{R_+^2R_-^2}{R_+^2+R_-^2}
=\frac{L^2\ell_x}{2\pi\ell_p^3},
\]
故准确得到式 (27) 的系数 6。等半径时进一步得到 \(c=3N_2N_5\)。

此处使用的是两导数 Einstein 约化与通常 AdS Brown–Henneaux 边界条件；没有推导 warped 中心荷，也没有加入高导数／量子修正。非紧 \(\mathbb R^2\) 的 \(V_8\) 发散，因此不能把这个计算直接当作有限二维中心荷。

## 7. Timelike CTC：独立重建而非仅代入阈值

在双曲底空间原点正则的规范下取 \(t\in\mathbb R\)、\(\phi\sim\phi+2\pi\)，timelike Berger 度规可写成
\[
ds_A^2=\frac{s^2L^2}{4}\left[d\rho^2+\sinh^2\rho\,d\phi^2
-\lambda^2\left(dt+(\cosh\rho-1)d\phi\right)^2\right].
\]
固定 \(t,\rho\) 及其余坐标，闭合 \(\phi\) 圈的范数为
\[
\begin{aligned}
g_{\phi\phi}
&=\frac{s^2L^2}{4}\left[\sinh^2\rho-\lambda^2(\cosh\rho-1)^2\right]\\
&=\frac{s^2L^2}{4}(\cosh\rho-1)
\left[(1-\lambda^2)\cosh\rho+(1+\lambda^2)\right].
\end{aligned}
\]
对 \(\rho>0\)，第一因子为正，因此 \(\lambda>1\) 时
\[
\boxed{\cosh\rho>\frac{\lambda^2+1}{\lambda^2-1}}
\]
恰好是这些固定时间闭圈成为类时曲线的条件。等号给闭合零曲线；\(\lambda\to1^+\) 时阈值趋于无穷，seed 极限与此一致。在原点 \(\rho=0\) 的 \(g_{\phi\phi}=0\) 只是极坐标圈收缩，不是独立闭合零曲线。

这一圈是底空间的方位角圈，**把时间提升到普适覆盖并不能消除它**。结论适用于包含阈值以外区域的上述完整几何；不能仅由此判定截去外区后的几何或任意其他 global completion。原稿对此全局适用范围的限制是必要而正确的。

## 8. 验证记录与未审范围

独立完成了上述解析推导，并在目标目录运行只用 Python 标准库的精确有理数／排列符号检验，输出通过：

- \(\star e^{0129}\) 的 Lorentz 符号与补指标；
- 两种 non-null fiber 选择的 \(G\) 指数抵消；
- 等 squash、null、不等球的所有新增四形式分量，其对偶均不拉回指定电周期；
- 精确半径点 \((L,R_+,R_-)=(1/5,1/3,1/4)\) 的两个中心荷表达式相等；
- \(\lambda=5/4,5/3,2\) 时阈值上下及阈值处的精确范数符号。

普遍结论依靠前述解析恒等式；有限精确点只作为独立回归检验。机器检查没有代替拓扑论证或量子化论证。未运行需要读取目录外说明的额外 CAS 工作流；未引入任何目录外研究资料。

**Verified:** 本报告范围内的拓扑、周期归一化和取向、固定周期变形不变性、整体缩放权重、式 (26)、式 (27) 与 timelike 闭圈判据。

**Assumptions:** 两导数经典超引力；指定 Lorentz 取向；正半径、\(G>0,q>0\)；环面无混合扭转且场可下降；量子化另施；中心荷采用 seed 标准 AdS 边界条件。

**Not verified:** 各族完整 EOM/KSE 计数、超代数的独立重算、所有离散商的自旋子下降、所有全局完成的因果分类，以及高导数／量子修正。本报告不替代那些专门核验，也不把已检查的周期荷当作能量或角动量。
