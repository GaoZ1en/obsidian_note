# null 候选：独立代码与物理审阅

**判定：frame、四形式、Levi–Civita 连接和 KSE 的实现与给定约定一致；核空间算法在“一轮闭包前后维数相等”时足以证明局部 KSE 维数，否则尚不充分。** 未修改原脚本、未重新运行 CAS。主代理转述的数字不是本审阅者亲读的机器输出；以下分开列出解析核对与机器结果所需条件。

审阅源码：[null_check.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl>)。采用 mostly plus，物理指标 \((0,1,2,3,4,5,6,7,8,x,y)\)，脚本索引统一加一，\(L=1/5,R_+=1/3,R_-=1/4\)，\(s_\pm=\pm1\)。此稿不涉及 CPS。

## 1. frame 与通量的直接核对

给定
\[
 \theta^0=Ldv+\frac{L(1+B^2)}2\frac{du}{z^2},\qquad
 \theta^1=-Ldv+\frac{L(1-B^2)}2\frac{du}{z^2},\qquad
 \theta^2=L\frac{dz}{z},
\]
在 \(z>0\) 的坐标片，令 \(n=\theta^0+\theta^1=Ldu/z^2\)。则
\[
 ds_A^2=-(\theta^0)^2+(\theta^1)^2+(\theta^2)^2
 =L^2\left(\frac{dz^2-2du\,dv}{z^2}-B^2\frac{du^2}{z^4}\right),
\]
\[
 d\theta^0=5(1+B^2)n\wedge\theta^2,\qquad
 d\theta^1=5(1-B^2)n\wedge\theta^2,\qquad dn=10n\wedge\theta^2.
\]
这恰好给出 [脚本:15–20](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L15-L20>) 的 \(d\theta^a=-\frac12C^a{}_{bc}\theta^b\wedge\theta^c\)。球面约定给出 \(d\theta^5=-6s_+\theta^{34}\)、\(d\theta^8=-8s_-\theta^{67}\)，所以
\[
 F_d=-B\,d(n\wedge\theta^5\wedge\theta^8)
 =-10B\,n\wedge\theta^{258}
  -6s_+B\,n\wedge\theta^{348}
  +8s_-B\,n\wedge\theta^{567}.
\]
这与 [脚本:21–22](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L21-L22>) 的每个系数和符号一致；\(F_0=10\theta^{012x}+6\theta^{345x}+8\theta^{678x}\)。这里多指标表示有序楔积。

独立可见：\(dF_d=0\)，\(F_d\wedge F_d=0\)（共享 \(n\)），且 \(F_0\wedge F_d=0\)（逐项有重复指标），故 \(F\wedge F=0\)。新增项成对含 \(\theta^0\) 和 \(\theta^1\) 且系数相等，使 \(F^2=0\)；种子部分则利用 \(-10^2+6^2+8^2=0\)。这些检查不依赖主代理报告的机器残差。

## 2. 连接和 KSE 归一化

[脚本:25](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L25>) 是 Koszul 公式给出的 \(\omega_{ab}(e_k)=g(e_a,\nabla_{e_k}e_b)\)，而其唯一有序对的 \(\tfrac12\omega_{ab}\Gamma^a\Gamma^b\) 等于通常全指标求和的 \(\tfrac14\omega_{ab}\Gamma^{ab}\)。

定义 \(\not F=\frac1{4!}F_{abcd}\Gamma^{abcd}\)，则 [脚本:26–28](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L26-L28>) 实现
\[
 D_k=e_k+\frac14\omega_{ab}(e_k)\Gamma^{ab}
       +\frac1{12}\Gamma_k\not F
       -\frac14\not\!\iota_{e_k}F.
\]
它等价于
\[
 D_k=\nabla_k+\frac1{288}
   (\Gamma_k{}^{abcd}-8\delta_k^a\Gamma^{bcd})F_{abcd},
\]
其中 \(\Gamma_k{}^{abcd}\) 是完全反对称的五 gamma；不是未反对称的 \(\Gamma_k\Gamma^{abcd}\)。脚本用 \(\eta_{kk}\Gamma^k\) 得到 \(\Gamma_k\)，时间方向的符号没有丢失。

令 \(A_a=D_a-e_a\) 为脚本 `Ds[[a]]` 存储的零阶矩阵。它们在该非坐标 frame 中为常数，所以
\[
 \mathcal R_{ab}=[A_a,A_b]-C^c{}_{ab}A_c
\]
在 [脚本:29](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L29>) 中正确；若以后把参数改为函数，必须补上 frame 导数，不能直接沿用。

## 3. 核空间算法：何时构成完整证明

令 \(W_0\) 为所有曲率矩阵的行空间，\(K_0=\ker W_0\)。脚本计算
\[
 W_1=W_0+\sum_a W_0A_a,\qquad (\dim K_0,\dim\ker W_1).
\]
由于系数恒定，若两维数相等，则 \(W_1=W_0\)，等价于 \(A_aK_0\subset K_0\)。曲率在这个平行子丛上为零，因此在单连通局部片内，**局部平行旋量空间维数恰为 \(\dim K_0\)**。这不是仅凭必要条件计数；在稳定性成立时，充分性也已得到。

反之，若两维数不相等，[脚本:32–33](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L32-L33>) 只做了一次闭包，第二个数仍是上界；应迭代 \(W_{r+1}=W_r+\sum_aW_rA_a\) 至稳定。零核则已经排除局部 KSE，无须再迭代。

复 gamma 表示**不导致超荷数额外乘二**。在脚本的 1-based 索引下可显式取
\[
 B_M=\Gamma^3\Gamma^5\Gamma^7\Gamma^9\Gamma^{11}
       \quad\text{（此式的上标只指数组索引）}.
\]
这五个矩阵实且平方为正，故 \(B_M\overline{B_M}=1\)，并有
\(B_M\overline{\Gamma^a}B_M^{-1}=\Gamma^a\)。因此反线性实结构 \(J\epsilon=B_M\bar\epsilon\) 与连接/曲率交换，复杂核的复维数就是 Majorana 解的实维数。为避免数组指标歧义，代码表达式是 `gp[{3,5,7,9,11}]`。

## 4. 数字的证据强度与物理含义

主代理报告 \((s_+,s_-)=(+,+)\) 为 8、\((-,-)\) 为 4、混合号为 0、种子为 16，且 EOM 残差为零。若完整 `hol` 输出分别为 \(\{8,8\},\{4,4\},\{0,0\},\{0,0\},\{16,16\}\)，上述算法足以把它们解释为该参数点的**局部实超荷数**；仅有转述的一个数字不足以证明稳定性已经通过。EOM 部分的 Ricci 收缩和四形式应力张量系数正确，且分别输出 \(dF,d*F,F\wedge F\) 为零比只检查组合更强；这里没有独立重跑其非平凡残差和矩阵秩。

有两点可精确扩展/限定：

- 对此明确 ansatz，任意 \(B\ne0\) 局部可用 \(u'=Bu,\ v'=v/B\) 同时把度规和 \(F_d\) 化为 \(B=1\)。因此这不是单一非零幅度的偶然计数；但固定全局周期、边界时间归一化时，该坐标变换未必是允许的等价关系。\(B=0\) 是不同极限，不能由该变换覆盖。
- 半径 \((1/5,1/3,1/4)\) 仍只是一个满足约束的点，不能据此证明任意半径比。\(s_\pm\) 描述两球面 Hopf 方向相对通量的 handedness，不是可无条件忽略的“正负半径”；改变左右不变 Hopf 方向可能改变实际变形场。报告的 8/4/0 若成立，说明该 ansatz 有不同局部超对称分支，不能一概称为四超荷，也不能把非超对称混合分支纳入超对称族。

最后，局部 KSE 数不等于全局超荷数：仍需检查 AdS 坐标片的延拓、商的周期和自旋结构，以及 Killing 自旋量对识别的下降。该脚本没有计算 Killing 超代数、全局能量/角动量或 warped 中心荷；不能由核维数直接宣称这些结论。

**Verified：** frame/通量展开、连接及 KSE 系数、曲率与稳定性判据、Majorana 实结构、非零幅度的局部坐标归一化。**Not verified：** 未亲自执行机器秩/EOM 残差，未收到输出日志；未证明任意半径比或全局超对称。审阅仅访问授权目录和适用 AGENTS，没有联网或修改原脚本。

## 补充：后续全参数证明的证据升级

本节保留以上对早期数值参数版本的审阅，不倒改历史结论。随后已读取当前 [null_check.wl:34–51](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L34-L51>) 与 [null_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_verify.wl>)。新版本使用
\[
 (f_A,f_+,f_-)=s(1+w^2,1-w^2,2w),\qquad s>0,\quad0<w<1.
\]
这覆盖所有正半径比：逆映射为 \(w=f_-/(f_A+f_+)\)、\(s=(f_A+f_+)/2\)。整体尺度只对连接和曲率作非零缩放，不改变秩。

新证据的关键不再是一般参数下的 `RowReduce`：

1. 明确投影 \(P(w)\) 只含 \(f_A\) 分母，整个开区间正则。若代码的 \(P^2=P\)、\(\mathcal R P=0\)、\((1-P)A_aP=0\) 恒等式通过，且迹分别为 8、4，则分别存在对应维数的平坦平行子丛，给出**所有参数点**的下界。
2. 从原始曲率叠矩阵取出的固定 24/28 阶子式若在开区间处处非零，则给出匹配的上界；不是从除过某个可能为零表达式的行化简矩阵中取子式。以 \(w=1/2\) 选择行/列只决定固定位置，并不把后续符号行列式检验局限到该点。
3. 主代理转述的两个行列式为
   \[
   \frac{w^{12}(1+w^2)^{36}}{1499253470328324096},\qquad
   \frac{w^{16}(1+w^2)^{40}}{5227573613485916806405226496}.
   \]
   它们在 \(0<w<1\) 无零点，确实排除该区间的额外超对称增强。混合号若有处处非零的 32 阶子式，则完全排除局部 KSE。

因此，**新的正则投影＋非零子式证明路径有效，足以补上早期审阅指出的任意半径比缺口**；有限样本本身仍然没有这种证明力。本审阅者核对了证明结构和参数覆盖，未独立重新计算这些大型行列式/投影恒等式。主代理拟写的完整验证记录在此次读取时尚未落盘，不能声称已经读过；最新机器输出的最终定位待其提供。

另：[null_debug.txt](</Users/koishi/Documents/Note/Drafts/test_2/null_debug.txt>) 仅包含早期 `Symbol::argx`、`Det::matsq` 错误，不能拿它代替最新成功输出。后续结果应与这个失败日志明确区分。全局延拓、自旋结构、Killing 超代数等限制仍不因局部全参数计数而解除。
