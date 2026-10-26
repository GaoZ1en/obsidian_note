# 硬右腿与软 stress 腿：全插入 genuine adiabatic trace

## 结论与操作顺序

本附录处理 \(q\) 留在非零正能量 compact patch、\(p\to0\)、\(\Omega\to0\) 的边界 stress–scalar–scalar coefficient。外动量为 \((p,r,-q)\)，其中 \(r=q-p+\Omega\)。所用 tensor 是原作用量导出的 polynomial \(\mathcal N(p;q,r)=\mathcal N(p;q,q+\Omega)\)，所用 retarded kernel、谱锥与共同径向 regulator 都与原 genuine switching calculation 相同。

**局部定理。** 取 \(q^0\ge e_0>0\) 的固定 compact patch，\(p\) 在充分小的原点邻域，\(\chi\in C_c^\infty\)、\(\chi(0)=1\)，\(\epsilon=R^{-1}\)。先移除共同径向 cutoff，再用
\[
k_\epsilon(\Omega)=(2\pi)^{-4}\epsilon^{-4}
\widehat\chi(\Omega/\epsilon)
\]
作 spacetime adiabatic limit。完整全插入 coefficient 在该 soft-\(p\) patch 有局部 \(\mathcal D'\) trace，且对每个有界 compact test class
\[
\big|\langle G,\kappa(\Omega)k_\epsilon(\Omega)\Psi\rangle
-\langle G_0,\Psi\rangle\big|
\le C\epsilon\,\mathfrak p_k(\Psi).
\tag{S1}
\]
这里 \(\kappa=1\) 于 \(\Omega=0\) 邻域，支撑在本文的局部坐标范围。若已知完整 joint kernel 在该范围外为 tempered finite-order distribution，则 Fourier switch 的 Schwartz tail 给出相同的未局部化结论。本文在所有 \(p\to0\) 方向上统一，包括 \(p^+=0\)、\(p^-=0\)、\(p_\perp=0\) 和其交点。

半径与 spacetime cutoff 的次序是定理的一部分。下文核心区的 seminorm bounds 在每个共同径向 cutoff 上一致；外围使用的精确 all-insertion support cancellation 在移除该 cutoff 后成立。

## 1. 硬腿坐标与完整插入支撑

采用
\[
s(k)=k^+k^- -|k_\perp|^2,\qquad
d^4k=\tfrac12\,dk^+dk^-d^2k_\perp.
\]
用依赖于硬腿 \(q^+,q_\perp\) 的共同 null rotation 将
\[
q=(B,y/B,0),\qquad 0<B_0\le B\le B_1
\tag{S2}
\]
作为局部代表；rotation 参数留作 compact spectator variables，其 Jacobian 与导数有一致界。此选择不需要除以软腿分量。

自由 stress 锥写成
\[
p=(A,H,w),\quad A,H\ge0,\quad |w|^2\le AH,\quad
x=s(p)=AH-|w|^2.
\tag{S3}
\]
取 \(0\le A,H\le\delta\)，并令 \(A/B\le\eta_0<1/8\)。对充分小的 \(\Omega\)，\(r^+=B-A+\Omega^+\) 和 \(r^0\) 都有正下界。因此 nonlinear stress insertion 所需的 \(C_{-r}\) 在本 patch 为零。middle 与 right 两项均保留；它们分别含自由锥 \(\theta(y)\)、\(\theta(t)\)，其中
\[
\boxed{
t=s(r)
=(B-A+\Omega^+)(y/B-H+\Omega^-)
-|-w+\Omega_\perp|^2 .}
\tag{S4}
\]

固定 \((A,H,w,B,\Omega^+,\Omega_\perp)\) 后，\((y,\Omega^-)\mapsto(y,t)\) 的 Jacobian 是
\[
\partial_{\Omega^-}t=B-A+\Omega^+\ge c_0>0.
\tag{S5}
\]
故两条独立质量 \((y,t)\) 可作为 genuine distribution variables，软自由锥仅作为积分参数域保留。这一坐标在 \(A=H=w=0\) 仍然有效。

锥截面面积可以明确保留。令 \(w=\sqrt{AH}\,v,\ |v|\le1\)，则
\[
d^4p=\tfrac12 AH\,dA\,dH\,d^2v.
\tag{S6}
\]
该参数化在边界退化，然而下文不对 \((A,H,v)\) 作分布导数；也可以始终使用原坐标 \(w\) 并积分圆盘 \(|w|^2\le AH\)。自由谱测度是 \(\theta(x)d^4p\)，故退化边界没有另加的原子测度。

## 2. 实际径向核的统一两质量 estimate

记 \(J_x(u)=J_0(u\sqrt x)\)，\(x\ge0\)。除统一常数、polynomial tensor 与自由 \(p\) 锥外，完整核为
\[
\begin{aligned}
F_{L,x}(y,t)=\int_0^\infty u\,du\,\beta_L(u)
\partial_x^2J_x(u)\big[
\theta(y)J_y(u)R_+(t,u)
+\theta(t)J_t(u)R_-(y,u)\big].
\end{aligned}
\tag{S7}
\]
正能量 retarded mass boundary values 为
\[
R_\pm(t,u)=
\begin{cases}
-K_0(u\sqrt{-t}),&t<0,\\
\dfrac\pi2\,[Y_0(u\sqrt t)\mp iJ_0(u\sqrt t)],&t>0.
\end{cases}
\tag{S8}
\]
它们对每个 \(u>0\) 是质量变量中的 locally integrable 函数，包含 \(t=0\) 的 logarithmic boundary value。

**两质量引理。** 对任意固定 compact \((y,t)\) 集，\(F_{L,x}\) 有至多六阶的 test seminorm bound，uniform 于 \(x\ge0\) 与所有 \(|\beta_L|\le1\)。若 \(\beta_L\to1\) 于径向 compacts，则其极限在 bounded test sets 上 strong convergence，且作为 \(x\ge0\) 的族为 \(C^\infty\)。

证明可以直接给出足够的具体阶数。令
\[
D_y=\partial_y(y\partial_y),\qquad
D_yJ_y=-u^2J_y/4.
\]
三次分部积分得
\[
\int_0^\infty J_y(u)f(y)\,dy
=-64u^{-6}\int_0^\infty J_y(u)D_y^3f(y)\,dy,
\tag{S9}
\]
其中
\[
D_y^3f=y^3f^{(6)}+9y^2f^{(5)}+18yf^{(4)}+6f^{(3)}.
\tag{S10}
\]
所有 \(y=0\) 边界项因系数 \(y\) 而消失，无须假设 \(f\) 在零点平坦。joint test 可先对带自由 \(J\) 的质量作这一操作，另一个质量作为参数。

正规化 Bessel 界给出
\[
|\partial_x^2J_x(u)|\le u^4/32,\qquad x\ge0.
\tag{S11}
\]
在固定质量 compact 上，
\[
\int|R_\pm(t,u)|\,dt\le
\begin{cases}
C(1+|\log u|),&0<u\le1,\\
Cu^{-1/2},&u\ge1.
\end{cases}
\tag{S12}
\]
第二行可对 \(0<t<u^{-2}\)、\(t>u^{-2}\) 及负质量区分别积分；负质量 \(K_0\) 项实际为 \(O(u^{-2})\)。因此大径向 majorant 为
\[
u^{1+4-6-1/2}=u^{-3/2},
\tag{S13}
\]
小径向也可积。右 insertion 交换 \(y,t\) 使用相同 estimate。所有导数均作用于独立质量的 test，无须微分自由 \(p\) 锥。增加分部积分次数即可对任意有限阶 \(x\) 导数证明同样结论。

这同时给出 radial-cutoff uniformity、端点 \(x=0\) 的真值与强收敛。独立质量正 orthant 的具体 jets 见 half_bps_stress_mass_jets_independent.md，包含已经固定的 triple-null contact。

## 3. 共同径向极限后的精确质量 support

移除共同 cutoff 后，(S7) 是 \(\partial_x^2S(x;y,t)\)。其 undifferentiated seed 在本正能量 chart 为
\[
S=
\begin{cases}
-\lambda^{-1/2},&y>0,\ t<0\quad\text{或 }t>0,\ y<0,\\
-2\lambda^{-1/2},&y,t>0,\ \sqrt x>\sqrt y+\sqrt t,\\
0,&\text{其余开 chamber},
\end{cases}
\tag{S14}
\]
并采用 (S7) 所固定的 threshold/null extension。

由 (S4)，\(t=c_B y+f\)，其中 \(c_B\) 有严格正上下界，而
\[
|f|\le C(H+|\Omega|)
\]
于固定小局部 chart。若 \(y,t\) 异号，立即得 \(|y|+|t|\le C(H+|\Omega|)\)。若两者为正且 anomaly chamber 有支撑，则 \(y,t\le x\le AH\)。两者为负时两条自由腿均缺失。故完整 canonical kernel 满足
\[
\boxed{\operatorname{supp}F_x
\subset\{|y|+|t|\le C(H+|\Omega|)\}.}
\tag{S15}
\]
质量导数的支撑包含在同一闭集。

式 (S15) 依赖共同径向极限后的 all-insertion cancellation。一般有限 \(\beta_L\) 不具有精确的此 support。下面先用 (S15) 在 canonical kernel 上插入质量 cutoff，再对局部化后的实际 family 应用第 2 节 uniform estimates。这也明确了定理的 iterated regulator 顺序。

## 4. 混合 tensor 的权重与 stationary Gram gap

使用 lower tensor indices，令 \(p_i=\eta_{ij}p^j\)、\(c_q=-p\cdot q\)，并定义
\[
u(q)=xq-c_qp,\quad
\Delta_{qr}=c_qc_r+x(q\cdot r),\quad
\mathcal N=u_{(i}(q)u_{j)}(r)
-\tfrac13\Delta_{qr}(x\eta_{ij}+p_ip_j).
\tag{S16}
\]
\(u(p)=0\)，故 \(\mathcal N(p;q,r)=\mathcal N(p;q,q+\Omega)\) 精确成立。

当 \(|\Omega|\le\eta_1H\) 且在 (S15) 支撑上，直接由硬腿与软锥坐标得
\[
|c_q|+|c_r|\le CH,\quad
|u(q)|+|u(r)|\le CH(A+H),\quad
|\Delta_{qr}|\le CH^2.
\]
因此在固定实验室 tensor components 中
\[
|\mathcal N|\le C(A+H)^2H^2,\qquad
|\partial_\Omega\mathcal N|\le C(A+H)^2H.
\tag{S17}
\]
这里 \(A+H\le2\delta<1\)；额外的 \(A+H\) 因子可保留或吸收入界。

更一般地，\(|\Omega|\asymp\tau\ge cH\)、\(|y|+|t|\le C\tau\) 时，
\[
|c_q|+|c_r|\le C(H+A\tau),\quad
|u(q)|+|u(r)|\le C(A+H)(H+A\tau).
\]
在 \(\Delta\) 中唯一需要比较的乘积为 \(AH\tau\)，而
\[
AH\tau\le(H+A\tau)^2/4.
\]
故
\[
\boxed{|\mathcal N|\le
C(A+H)^2(H+A\tau)^2
\le C\tau^2(A+H)^2.}
\tag{S18}
\]
这些权重也适用于把 \(y=\tau Y,t=\tau T\) 后的有限阶 \(Y,T\) 导数；例如 \(\partial_Yc_q=O(A\tau)\)，不会损失 \(H+A\tau\) 的控制。核心区 \(\tau=\epsilon,H\le\epsilon\) 因而有
\[
\mathcal N=\epsilon^2(A+\epsilon)^2
\text{ uniformly bounded polynomial multiplier}.
\tag{S19}
\]
“bounded” 指固定 scaled mass/parameter compacts 及所需有限阶 test seminorms。

在 \(\Omega=0\)，(S4) 化为
\[
t=(1-A/B)y-BH+x .
\tag{S20}
\]
非零 stationary support 只有 \(y\ge0,t<0\)，且
\[
0\le y<\frac{BH-x}{1-A/B}\le\frac{BH}{1-\eta_0}.
\tag{S21}
\]
正质量 anomaly 若存在会要求 \(x>y\)，而 \(t\ge0\) 强制 \(y\gtrsim BH\gg x\)，故该 chamber 在此 patch 消失。

精确 Gram 恒等式为
\[
\boxed{\lambda=(BH-Ay/B)^2+4y|w|^2.}
\tag{S22}
\]
由 (S21) 得
\[
\lambda\ge B^2H^2
\left(\frac{1-2\eta_0}{1-\eta_0}\right)^2.
\tag{S23}
\]
当 \(|\Omega|\le\eta_1H\) 且 \(\eta_1\) 足够小时，(S15) 与连续扰动给出同一 \(\lambda\ge cH^2\) 界，且 anomaly 仍无支撑。它在 outer-null \(y=0\)、transfer-null \(t=0\)、横向 \(w=0\) 与 \(A=0\) 上一致。

该区域是普通密度，除固定 \(y=0\) 与移动 \(t=0\) 两个边界：
\[
\partial_x^2(-\lambda^{-1/2})
=\frac{\lambda-3(x-y-t)^2}{\lambda^{5/2}}.
\tag{S24}
\]
结合 (S17)，完整 coefficient obeys
\[
|G_\Omega|\le C(A+H)^2/H,\quad
|\partial_\Omega G_\Omega|\le C(A+H)^2/H^2.
\tag{S25}
\]
移动 \(t=0\) 壁在 \(y\) 中位移 \(O(|\Omega|)\)，因为 (S4) 的 \(y\) 系数有正下界。其 strip pairing 与 (S25) 的内部导数具有同一界。

## 5. 真正 switched 核心区

先取 \(H\le C\epsilon\)、\(|\Omega|\le C'\epsilon\)。依 (S15) 局部化于 \(|y|+|t|\le C''\epsilon\)，然后作
\[
H=\epsilon h,\quad
w=\sqrt{A\epsilon}\,V,\quad
y=\epsilon Y,\quad
\Omega^-=\epsilon W.
\tag{S26}
\]
自由锥为 \(|V|^2\le h\)，
\[
x/\epsilon=A(h-|V|^2)\ge0
\tag{S27}
\]
是第 2 节引理的非负参数，不需对其求导。

径向变量 \(u=U/\sqrt\epsilon\) 使 \(F\) 精确贡献 \(\epsilon^{-3}\)；它只把共同 cutoff 替换为 \(\beta_L(U/\sqrt\epsilon)\)，仍满足同一 uniform bound。五个 integration coordinates 的 measure 为
\[
dH\,d^2w\,dy\,d\Omega^-
=A\epsilon^4\,dh\,d^2V\,dY\,dW.
\tag{S28}
\]
另三个 \(\Omega\) 分量作为参数积分，抵消 \(k_\epsilon\) 中三个尺度因子。剩余 profile 的有效尺度是 \(\epsilon^{-1}\)，在 \(W\) 中的导数为有界 scaled derivatives。下式 \(G_{\epsilon,L}^{\rm core}\) 明确包含本节开头插入的 smooth mass cutoff；其有限 \(L\) 版本没有被赋予额外的 exact support。由 (S19)
\[
\boxed{
|\langle G_{\epsilon,L}^{\rm core},\Psi\rangle|
\le C\epsilon^{4-3+2-1}
\int_0^\delta A(A+\epsilon)^2dA\,\mathfrak p_k(\Psi)
\le C'\epsilon^2\delta^4\,\mathfrak p_k(\Psi).}
\tag{S29}
\]

所有分布导数作用在已经 scaled 的 \((Y,T)\) test 上，故其有限阶数不再产生 \(\epsilon^{-k}\)。\(V,A,h\) 是参数；特别没有 \(1/A\) 损失。横向 switch \(b=\epsilon\bar b\) 在 \(T=t/\epsilon\) 中只通过 \(\sqrt{A\epsilon}\,V\cdot\bar b\) 与 \(\epsilon|\bar b|^2\) 出现。有限 scaled profile support 上的所有所需系数有一致界。

stationary 核心直接由 (S25)、(S6) 得同一 \(O(\epsilon^2\delta^4)\) 界。较大的 rescaled switch 参数由第 7 节的明确 shell estimate 控制。

## 6. 小 injection 的外围壳层

令 \(H\asymp\rho\ge\epsilon\)，\(|\Omega|\le\eta_1\rho\)。固定软锥参数后，对 \(y\) 积分 (S25) 的系数变化与移动壁条带，得
\[
\big|\langle G_\Omega-G_0,\Psi\rangle_{y,\ H\asymp\rho}\big|
\le C A(A+\rho)^2\rho|\Omega|\,dA\,
\mathfrak p_k(\Psi).
\tag{S30}
\]
其中 \(A\rho^2\) 来自 transverse disk area 与 \(dH\) 壳厚，\(dy=O(\rho)\)，其间保留了所有锥截面因子。

\(\int|\Omega||k_\epsilon(\Omega)|d^4\Omega=O(\epsilon)\)。对 \(\epsilon\le\rho\le\delta\) 作 dyadic 求和，再积分 \(A\)，得到
\[
C\epsilon\int_0^\delta
\sum_{\rho\le\delta}A(A+\rho)^2\rho\,dA
\le C'\epsilon\delta^5.
\tag{S31}
\]
这一估计对 \(A=0\) 和 \(H=0\) 的交叉极限具有正余量。

## 7. 大 injection 壳层与 normalization tail

令 \(H\asymp\rho\)，\(|\Omega|\asymp\tau\ge c\rho\)，并局部化在本文小 \(\Omega\) chart。由 (S15) 取
\[
y=\tau Y,\quad t=\tau T,\quad \Omega^-=\tau W.
\]
输入质量参数满足 \(0\le x/\tau\le A\rho/\tau\le CA\)，第 2 节引理仍一致有效。各因子如下：

| 因子 | 尺度 |
|---|---:|
| 软锥 measure \(dH\,d^2w\) | \(A\rho^2\) |
| 两独立 mass/injection variables | \(\tau^2\) |
| 另三个 injection parameters | \(\tau^3\) |
| raised 径向核 | \(\tau^{-3}\) |
| polynomial tensor | \(\tau^2(A+\rho)^2\) |
| Fourier switch amplitude | \(\epsilon^{-4}\) |
| 至多六阶 scaled test derivatives | \((1+\tau/\epsilon)^6\) |

结合 Fourier profile 的任意阶 Schwartz decay，\(\tau\ge\epsilon\) 时每壳为
\[
C_NA\rho^2(A+\rho)^2
(\tau/\epsilon)^{10-N}\,dA\,
\mathfrak p_k(\Psi).
\tag{S32}
\]
这是真实 partial distribution-family estimate：另三个 injection components 是参数积分，表中的 \(\tau^3\) 来自实际积分，未从一个任意 joint distribution seminorm 假定支撑体积。

对 \(\rho\ge\epsilon\)，先求 \(\tau\ge c\rho\) 之和，再选择 \(N\) 使所得 \(M>4\)，有
\[
C_MA\rho^2(A+\rho)^2(\epsilon/\rho)^M\,dA.
\tag{S33}
\]
求和 \(\rho\ge\epsilon\)、积分 \(A\) 给出 \(O(\epsilon^2\delta^4)\)。

对 \(0<\rho\le\epsilon\)，同样用 (S32) 对 \(\tau\ge\epsilon\) 求和，然后对 \(\rho\le\epsilon\) 求和，也为 \(O(\epsilon^2\delta^4)\)。故第 5 节核心的所有大 rescaled profile 参数已经被控制。

比较 \(G_\Omega\) 与 \(G_0\) 时，near/far injection partition 会截去 stationary kernel 的一部分 normalization。该项的 stationary shell mass 是
\[
CA\rho^2(A+\rho)^2dA,
\]
乘以 \(\int_{|\Omega|\ge c\rho}|k_\epsilon|=O((\epsilon/\rho)^M)\)，正好满足 (S33)。\(\kappa\) 引入的固定距离 normalization tail 更快地趋零。

式 (S29)、(S31)、(S33) 证明 (S1)。其 topology 是 compactly supported smooth tests 的 \(\mathcal D'\) 收敛，并在每个 bounded test set 上一致；不是只对避开 null strata 的 pointwise 收敛。

## 8. 一个更粗、完全不使用 all-leg 支撑取消的核验

有限共同径向 cutoff 时，若只局部化 \(|p|\le\epsilon\)，保留固定的物理质量 compact，第 2 节六阶 estimate 可直接应用：
\(\mathcal N=O(|p|^4)\)，\(d^4p\) 贡献 \(\epsilon^4\)，tensor 贡献 \(\epsilon^4\)，switch amplitude 与最多六个 \(\Omega^-\) 导数贡献 \(\epsilon^{-10}\)，另三个 injection parameters 的积分贡献 \(\epsilon^3\)。因此该直接 family bound 为
\[
O(\epsilon^{4+4-10+3})=O(\epsilon).
\tag{S34}
\]
它在每个 \(|\beta_L|\le1\) 上一致，也覆盖所有质量 thresholds。这个较粗 estimate 是对原始 radial family 的独立交叉核验；更强的 \(H\)-core 和 annular theorem 使用第 3 节中已经说明的 canonical cutoff order。

## 9. 本轮实际验证与精确范围

soft_stress_endpoint_checks.py 独立检查 (S4)–(S5)、(S20)–(S22)、\(\mathcal N(p;q,r)=\mathcal N(p;q,q+\Omega)\)、全部 tensor transversality/trace、(S10)、Bessel raising、(S24) 与 measure/power counting；实际执行得到 **46 个精确零 residuals**。

对核心代换 \(A=a^2,\epsilon=e^2\)，脚本检查所有十个独立 tensor components：每个 monomial 至少含 \(e^4\)，且其 \(a,e\) 总次数至少为 8。这给出 (S19) 的 coefficient-level 验证，并排除仅在泛型极化上成立的缩放论证。另在 \(A,H\) 相差多个数量级的 2000 组实际样本上检查 near/far tensor ratios 与 stationary Gram gap。数值样本支持解析 estimates；统一性由第 2、4–7 节的推导证明。

本附录完成 hard-\(q\)、soft-\(p\) 的 prescribed radiative coefficient trace。完整原点 \(p=q=0\) 的 homogeneous dyadic gluing、全 \(\mathcal S'\) 的远尾、finite-radius transfer、以及 curved-source stress/PBH functional 的定义仍分别由对应主证明承担。本文不把局部 trace 与这些不同声明合并。


## Reproducible verification files

- [soft_stress_endpoint_checks.py](checks/stress_completion/soft_stress_endpoint_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
