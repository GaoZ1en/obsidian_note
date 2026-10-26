# Arbitrary-joint causal-TT limit：独立复核记录

## 1. 审查对象与结论

本记录逐式复核 `half_bps_stress_joint_limit.md`、
`half_bps_stress_joint_cutoff_local.md`、`half_bps_stress_joint_massive.md`、
`half_bps_stress_joint_soft.md`，并回查其使用的
`half_bps_stress_partial_injection.md`、`half_bps_stress_soft_q_trace.md`、
`half_bps_stress_causal_corner.md` 与 `half_bps_stress_global_transfer.md`。
上列文件名均对应提交中的研究目录。

**结论：新增共同极限定理的证明接口闭合。** 特别是旧证明仅在径向 cutoff
移除后具有的质量支集消失，现在由实际有限 cutoff 的相位间隙估计补齐。
这一步确实需要新增论证；新稿给出的软端点主界足以作 dominated annular
summation，故允许任意 $B,R\to\infty$，包括 $B/R\to0$。

本结论针对同一个三插入 causal-TT 系数、共同光滑径向 plateau
$\beta(u/B)$、$\chi\in C_c^\infty$ 且 $\chi(0)=1$，以及原报告已经固定的
causal prescription。既有有限-$B$ 中心核、两质量分布界及全十二维 causal
构造作为明确引用的先前引理使用。下面给出对新增接口的独立重建，而非以
程序输出或其他审查的结论代替证明。

## 2. 实际 free cones、相位间隙与 transfer-null 对数

### 2.1 先判定实际存活图，再估计质量尾

软 $q$ 坐标中的精确关系为

\[
t=\frac{B_h-A-c_+}{B_h}x
 -(B_h-A-c_+)(H+\omega)-|w+b_\perp|^2.
\]

在 $H\asymp\rho$、$|\Omega|\le c\rho$ 的小注入区域，$r$ 是硬的过去向
动量。right 图的自由锥支集为空；middle、stress 图分别带真实的
$C_q\theta(x)$、$C_q\theta(t)$。因此足够负的 $x$ 在**有限 $B$** 时即被
排除。$x\sim\sigma\gg\rho$ 时 $t\sim\sigma>0$，两张存活图必须一起保留。
软 $p$ 时同理，存活的是 middle/right，实际自由支集排除负的硬质量尾。
这一判断来自锥因子与精确动量关系，未使用未截断答案的特殊支集。

### 2.2 零自由质量并未破坏径向相位间隙

独立展开 $H^{(1)}=J+iY$、$H^{(2)}=J-iY$，得到

\[
Y_\nu(a u)J_0(cu)+J_\nu(au)Y_0(cu)
=\frac{H_\nu^{(1)}(au)H_0^{(1)}(cu)
       -H_\nu^{(2)}(au)H_0^{(2)}(cu)}{2i}.
\]

剩余自由因子使用概率平均

\[
J_0(bu)=\int e^{ibu\cos\theta}\frac{d\theta}{2\pi},\qquad
\frac{8J_2(au)}{(au)^2}
=\frac8{3\pi}\int_{-1}^1 e^{iau\xi}(1-\xi^2)^{3/2}d\xi.
\]

于是两种软端点分别只有 $\pm(a+c)+b\cos\theta$ 和
$\pm(b+c)+a\xi$；两个硬质量有正下界时，相位在零自由质量处仍有统一间隙。
径向大 $u$ 振幅的最坏阶分别是 $u^2$ 和 $u^4$。有限次分部积分，配合
$u^k|\beta_B^{(k)}(u)|\le C_k$，给出所有 $B>0$ 的统一界。小 $u$ 的
$O(u)$ 与 $O(u^5(1+|\log u|))$ 直接可积。恢复平方质量尺度
$\sigma$ 后，两者都是 $C\sigma^{-3}$。

### 2.3 transfer-null 的对数可以直接积分

归一化硬质量为一，令软 retarded 质量为 $c^2=|t|$，在 $cu\sim1$
分区。下区的 $Y_0(cu)$ 及其径向导数只有 $\log c+\log u$ 型增长，硬相位
分部积分给出 $C(1+|\log c|)$。上区最坏振幅出现在零 raised-free mass：
$c^{-1/2}u^4$。作 $N$ 次径向分部积分后，其 $u\ge c^{-1}$ 尾至多为
$C_Nc^{N-11/2}$；取 $N\ge6$ 即得统一界。spacelike 一侧由 $K_0$ 的
指数衰减控制。硬相位可以是阶数 $0$ 或 $2$ 的 Hankel 函数，证明所需的
symbol 阶相同。

因此实际有限-$B$ 系数在 $t\ne0$ 服从
$C\sigma^{-3}(1+|\log|t/\sigma||)$。$\partial_x t$ 或
$\partial_y t$ 有统一正下界，故这是硬质量积分中的普通局部可积对数。
这里无需将 null 值解释为 pointwise 值，也无需另选 finite-part pole。

## 3. 软端点与完整 Schwartz profile 的独立预算

将 polynomial TT numerator 展开后，软 $q$ 有
$|\mathcal N|\le C\sigma^2$；软 $p$ 有
$|\mathcal N|\le C\sigma^2(A+\rho)^2$。关键是先在多项式形式中使用
$p\cdot q=O(\rho+\sigma A)$ 等关系；结果含 $A$ 的非负幂。
实际锥测度

\[
d^4k=\tfrac12 AH\,dA\,dH\,d^2v,\qquad |v|\le1
\]

在 $H\sim\rho$ 的体积是 $CA\rho^2dA$。硬质量区间长度为 $O(\rho)$，
seed 与 numerator 分别为 $\rho^{-3}$、$\rho^2$，故质量 band 为
$CA\rho^2dA$。正质量漏项则产生

\[
CA\rho^2\int_{C\rho}^{C_0}\frac{d\sigma}{\sigma}
\le CA\rho^2(1+|\log\rho|).
\]

这正是需要的全 annulus 主界，且 $A\to0$ 时保持实际锥面积因子。

对 far injection $|\Omega|\sim\tau\ge c\rho$，令
$\epsilon=R^{-1}$，在真实有限-$B$ 核上插入宽度 $\tau$ 的光滑硬质量
cutoff。原两质量分布估计的阶数记为 $k$。各因子的尺度独立计数为

\[
\underbrace{A\rho^2}_{\text{soft cone}}
\underbrace{\tau^2}_{\text{two masses}}
\underbrace{\tau^3}_{\text{other injection coordinates}}
\underbrace{\tau^{-3}}_{\text{seed}}
\underbrace{\tau^2}_{\text{numerator}}
\underbrace{\epsilon^{-4}}_{\text{profile}}
=A\rho^2(\tau/\epsilon)^4.
\]

分布阶最多再耗 $(\tau/\epsilon)^k$，profile 的任意 Schwartz 尾取
$N>k+6$，于是 band 的界为
$CA\rho^2(\epsilon/\tau)^M$，$M=N-4-k>2$。
质量 band 之外的正质量漏项是普通 gapped 系数，可用 profile 的绝对
$L^1$ 尾；它再添 $1+|\log\tau|$，没有分布导数损失。

双重 dyadic 求和可明确写为

\[
\sum_{\rho\ge\epsilon}\sum_{\tau\ge c\rho}
A\rho^2(1+|\log\tau|)(\epsilon/\tau)^M
\le C_M A\epsilon^2(1+|\log\epsilon|),\quad M>2.
\]

$c\epsilon\le\tau\le\epsilon$ 只有有限个相对尺度，吸收到常数即可。
$H\le C\epsilon$ 时先积分其全部锥体积 $CA\epsilon^2dA$，再分
$\tau\lesssim\epsilon$ 与远尾，得到同一个中心核界。stationary
normalization tail 也服从该 annular 主界。这一预算使 near、far、中心核
及 normalization 部分同时闭合；没有对软 $A,H,v$ 作分布微分。

## 4. Massive transfer、hard-null finite cover 与任意路径

massive-zero-transfer 采用 $M=p-\Omega=q-r$ 的光滑静止系、
$r=\rho(H,\mathbf V)$。此时
$\mathcal N=O(\rho(\rho+|\Omega|))$，而注入导数为 $O(\rho)$。
在 $|\mathbf V|$ 有下界的区域，保留 $T=H^2-|\mathbf V|^2$ 为变量，
硬质量的 $H$ 导数是 $O(\rho)$；径向积分在该硬变量配对后有
$(1+\rho u)^{-N}$。soft-retarded 对数在 $T$ 中可积。轴邻域则先用完整
Hankel 配对，分别以 $b+c$、$a+c-b$ 的 $H$ 导数控制，保留同样的相位
间隙。加 $d^4r$ 与 numerator 后，得到正文的

\[
\rho^2(\rho+|\Omega|),\qquad
\rho^2+|\Omega|\rho,
\qquad
\rho^2(\rho+|\Omega|)(1+B\rho)^{-M}.
\]

这些估计对应实际 $B$ 家族，故可用于新的 normalized annuli。

hard-null 外部 normal annulus 的有限 cover 也可直接核查：质量映射在
$\Omega=0$ 的秩退化要求 $p,q,r$ 共线，另有 $r=0$ 特例。在存活的 causal
区域，共线且有 null 外腿时，两条非零外腿均落在共同 null 射线；该点被
normalized normal radius $1$ 排除。剩下的共线点为正质量 timelike
patch。$r=0$ 时 $p=q$，同样因排除共同 null 起点而具有正质量下界，正是
上面的 massive theorem。其余点用 mass submersion。紧性因此给出固定
有限 cover，所需质量下界可以统一选择。

每个固定角胞的 boost 在胞内保持不变；$O(\rho^{-1})$ 个角胞、每胞
外部体积 $\rho^4$、最坏 tensor 因子 $\rho^{-1}$，合计为 $\rho^2$。
近注入使用上述 cutoff-uniform trace 界，远 normalized injection 使用
原 partial-injection 引理：三个 plus/transverse 注入分量作为参数，
只有宽度 $\epsilon/\rho$ 的 minus profile 接受有限阶分布导数。
Schwartz 尾足以吸收这个固定阶，故无窄横向 profile 的额外损失。

固定 $\rho>0$ 后 $B\sqrt\rho\to\infty$、$\epsilon/\rho\to0$；
小 annuli 的 $C\rho^2$ 主界统一可和。先固定 $\delta$，处理
$\rho\ge\delta$ 的有限部分，再以 $O(\delta^2)$ 控制其余部分，正是
任意共同路径所需的论证。该推理全程使用 dominated summation，故无需
为 $B(R)$ 加上下界速度。

## 5. Common origin、全局拓扑和物理范围

实际 cutoff family 的度零缩放
$\mathcal G_B(\lambda p,\lambda q,\lambda\Omega)
=\mathcal G_{\lambda B}(p,q,\Omega)$ 与所有 $B>0$ 的同一有限阶
tempered 界，使共同原点给出 $\epsilon^{12-4}=\epsilon^8$。
应同时保留 rescaled 外部紧支集与 Schwartz injection profile；主稿现在
明确如此处理，避免在整个无界空间单独估计 $\Psi(\epsilon\,\cdot)$。
普通外部 dyadic shells 的 $\rho^8$ 权重在原点可和，远处由任意
Schwartz 权重吸收固定阶导数。等度连续性、稠密紧支集测试上的收敛和
这些统一尾界给出全 $\mathcal S'$ 收敛；Schwartz 空间的 Montel 性再给出
strong topology 的表述。

边界答案的识别使用允许的快路径 $B=cR$：causal-output 支集给出的独立
快路径界，加既有 canonical adiabatic/CFT identification，确定共同
极限。这里使用了同一实际 family，故无需仅凭 null 集之外的一致性猜选
distributional extension。

有限外部半径的接口也符合原 global-transfer 分解：有界参数区内 Bessel
乘子保留统一测试 seminorm；Volterra 项在 $B$ 超过外部半径后固定；高
spacelike 区用完整 $I_0K_0$ Green kernel 的指数尾。$\chi(0)=1$ 而非
plateau 时，光滑余项取普通 $O(R^{-1})$ approximate-identity 误差即可。
全 Brown–York 应力的额外 finite-$B$ Ward forces、不同插入各自独立的
cutoff、denominator-only Abel 替换，以及相互作用 Hilbert-domain
极限，分别保留正文明确列出的研究范围。

## 6. 本次实际计算及证据强度

除上述手算的支集、相位、测度、tensor 和尾部预算外，本轮实际执行
`joint_limit_independent_checks.py`，结果保存为
`joint_limit_independent_results.json`。它直接积分完整 compact-cutoff
$F^-_B$（$a=1,b=0$）和 $F^+_B$（$a=0,b=1$），取
$B=1,3,10,30$ 与 $c=1,10^{-1},10^{-3},10^{-5}$，共 32 个样本。
使用 SciPy 自适应积分并按固定径向区间分段，未出现 integration warning；
最大内部估计误差约 $3.70\times10^{-7}$。有限-$B$ 的值可以很大，例如
$F^+_{30}(0,1,10^{-5})\approx-9.0340\times10^4$，因此这些数据仅用于
检查完整径向表达式和零自由质量端点；统一常数与无穷参数极限由上述
解析估计承担。这里的数值误差属于积分器估计，而非认证区间界。

审阅中要求明确的两处表述已经在主稿修正：共同极限通过快路径识别；
仅满足 $\chi(0)=1$ 时采用普通余项速率。此次复核没有发现需要改变该
共同-cutoff causal-TT 定理结论的反例或新增数学缺口。
