# 首阶完整 stress 的 switch forces、Hankel 角点与 adiabatic limit

## 结论与精确范围

固定起点为 aa128cb903e0f3750a16a69487d64013d38667b1。本报告补全该版本已经建立的 causal TT coefficient：在 canonical BF scalar、平坦固定 UV metric、normal-ordered 首个 gravitational tree coefficient 中，显式求出完整 Brown–York stress 的 longitudinal/trace 部分，并证明它们在真实 spacetime adiabatic limit 中趋于零。

定理采用 ordering
\[
\langle T_{ij}(x_1)\,\mathcal U_z(x_2)\,\mathcal U_w(x_3)\rangle .
\]
stress 位于最左，因此其 scalar-induced response 的两条 free scalar contractions 均为 future directed。这个正能量结构是下面的统一 null estimate 的组成部分。其他 Wightman orderings 可用同一算符结构研究，本文不将本证明自动推广到它们。

在与上一轮相同的层源定义和 canonical retarded extension 下，先移除共同 radial cutoff，再移除 spacetime switch，有
\[
\boxed{
W^{\rm full}_{\chi_R;z,w}
-W^{\rm causal\,TT}_{\chi_R;z,w}
\longrightarrow0
\quad\text{strongly in }\mathcal S' .
}
\tag{W1}
\]
收敛在 \(z,w\) 的固定紧非负区间上一致。局部 hard-total-momentum estimate 是 \(O(R^{-1})\)，并由齐次性、Schwartz 权重和原点的正 margin 提升为全局强分布收敛。

这是 source-free Lorentzian Wightman conservation/tracelessness 的结果。Euclidean/time-ordered source Ward contacts、finite-radius PBH contacts 与 \(+\pi^2j^2\) anomaly 由另一本 half_bps_stress_finite_switch_ward.md 处理；它们没有被添加到 (W1) 的 Wightman distribution 中。

## 1. 从完整 Einstein 解读取 Brown–York stress

取 \(\ell=1\)，\(\kappa^2=4\pi^2/N^2\)，canonical scalar 的边界系数为
\[
\phi(u,X)=u^2v(X)+O(u^4),\qquad
h_{ij}(u,X)=u^4h_{(4)ij}(X)+\cdots .
\]
同一 BF completion 的 leading Lorentzian boundary term 为
\(-\int\sqrt{-\gamma}\,\phi^2\)。在本文明确的 switched source extension 中，其 physical metric variation 乘 \(\chi(X)\)，而 reference/anchor variation承担余下部分。

采用原 TT normalization 与 EH/GHY convention，renormalized physical stress 是
\[
\boxed{
T^\chi_{ij}
=\frac2{\kappa^2}\big(h^\chi_{(4)ij}
-\eta_{ij}\operatorname{tr}h^\chi_{(4)}\big)
-\chi\,\eta_{ij}:v^2: .
}
\tag{W2}
\]
例如 \(n=-u\partial_u\) 时，
\(K_{ij}=\gamma_{ij}-2u^2h_{(4)ij}+\cdots\)、
\(K=4-2u^4\operatorname{tr}h_{(4)}+\cdots\)；
原 convention 的
\(-\kappa^{-2}(K_{ij}-K\gamma_{ij}+3\gamma_{ij})\)
给出 (W2) 的第一项。BF variation 给出第二项。平坦 logfree source-free sector 中，曲率 counterterms 的该 boundary coefficient 为零。

共同 regulator 为 \(w(u,X)=\beta_B(u)\chi(X)\)，\(\beta_B=1\) 于 UV 邻域。完整 conserved source 是
\[
Q=\mathcal P^\dagger J,\qquad J_{ij}=\beta_B\chi T^\phi_{ij}.
\]
定义
\[
A_i=\int_0^\infty du\,u^{-3}\partial^jJ_{ji},
\qquad
C=\int_0^\infty du\,u^{-3}
\left(J^i_i+\frac{u^2}{2}\partial^i\partial^jJ_{ij}\right).
\tag{W3}
\]
它们分别是 \(Q_{ui}/u^3\) 与 \(Q_{uu}/u^2\) 的 UV 系数。完整 Einstein constraints 已给出
\[
\operatorname{tr}h_{(4)}=-\frac{\kappa^2}{6}C,\qquad
\partial^jh_{(4)ji}
=-\frac{\kappa^2}{6}\partial_iC+\frac{\kappa^2}{2}A_i .
\]
因此
\[
\boxed{
\partial^jT^\chi_{ji}=A_i-\partial_i(\chi:v^2:),\qquad
T^{\chi\,i}{}_i=C-4\chi:v^2: .}
\tag{W4}
\]
BF term 的系数对两个等式都必要；只保留 metric \(h_{(4)}\) 会在 \(\chi=1\) 时留下非零 trace 与 divergence。

## 2. 有限 radial cutoff 的全部 force terms

令
\[
M_{B,ij}=\int_0^\infty du\,u^{-3}\beta_B T^\phi_{ij},
\qquad
N_{B,ij}=\int_0^\infty du\,u^{-1}\beta_B T^\phi_{ij}.
\tag{W5}
\]
所有双线性 quantum fields 在同一 free vacuum 中 normal ordered。先按 smooth free waves 理解，再按第 3 节定义其 coefficient distributions。

由 covariant conservation 可直接分部积分：
\[
\begin{aligned}
A_i={}&\chi\{\partial_i:v^2:+r_{B,i}\}
+(\partial^j\chi)M_{B,ji},\\
C={}&4\chi:v^2:+\chi r_{B,C}
+(\partial^i\chi)\partial^jN_{B,ij}
+\tfrac12(\partial^i\partial^j\chi)N_{B,ij},
\end{aligned}
\tag{W6}
\]
其中
\[
\boxed{
r_{B,i}=\int du\,\beta'_B u^{-3}T^\phi_{ui},\qquad
r_{B,C}=\int du\,\beta'_B
\left(u^{-2}T^\phi_{uu}
+\tfrac12u^{-1}\partial^iT^\phi_{ui}\right).}
\tag{W7}
\]
这些是有限 radial regulator 的真正 Ward terms。PBH variation 会生成它们；在移除 \(\beta_B\) 前不能省略。

作为直接核验，令 \(Z=T_{uu}\)、\(P=\partial^iT_{ui}\)。守恒式给出
\[
u^{-3}T^i_i+\frac1{2u}\partial^i\partial^jT_{ij}
=-\partial_u\left(u^{-2}Z+\frac{P}{2u}\right),
\]
而 \(\partial^jT_{ji}/u^3=-\partial_u(T_{ui}/u^3)\)。
其 UV limits 分别为 \(4:v^2:\) 与 \(\partial_i:v^2:\)，得到 (W6)–(W7)。

移除共同 radial cutoff 后，记 \(M,N\) 为下面构造的真实分布极限。则
\[
\boxed{
f_i^\chi:=\partial^jT^\chi_{ji}
=(\partial^j\chi)\big(M_{ji}-\eta_{ji}:v^2:\big),\qquad
\tau^\chi:=T^{\chi\,i}{}_i
=(\partial^i\chi)\partial^jN_{ij}
+\tfrac12(\partial^i\partial^j\chi)N_{ij}.}
\tag{W8}
\]

## 3. 实际径向 moments 与必要的正质量角点

取两个 future scalar momenta \(k,l\)，平方质量 \(x=s(k)\ge0,y=s(l)\ge0\)，并剥去其共同 canonical mode normalization。写 \(J_x(u)=J_0(u\sqrt x)\)、\(c=k\cdot l\) 及
\[
A_{ij}=-(k_il_j+k_jl_i)+\eta_{ij}(c-x).
\]
unhalved cross stress 为
\[
b_{ij}
=u^4\left[-(k_il_j+k_jl_i)J_xJ_y
-\eta_{ij}(J'_xJ'_y-cJ_xJ_y)\right]
-2u^3\eta_{ij}(J_xJ_y)'.
\tag{W9}
\]

引入正质量半轴上的 canonical Hankel kernels
\[
I_1=\int_0^\infty u\,du\,J_xJ_y
=2\theta(x)\delta(x-y),
\]
\[
I_3=\int_0^\infty u^3\,du\,J_xJ_y
=-8D_x[\theta(x)\delta(x-y)],\qquad
D_x=\partial_x(x\partial_x).
\tag{W10}
\]
它们是同一 bounded smooth radial-cutoff family 的分布极限。其半轴 endpoint 用实际 Hankel pairing 定义。

令
\[
m=\frac{x+y}{2},\qquad d=x-y.
\]
fixed-\(y\) derivative 是 \(\partial_x=\tfrac12\partial_m+\partial_d\)。直接计算得
\[
\boxed{
I_3=-8m_+\delta''(d)+2\delta(m)\delta(d).}
\tag{W11}
\]
第二项是必须保留的 mass-origin contact。对 test \(e^{-Ax-By}\)，
\[
\langle I_3,e^{-Ax-By}\rangle=\frac{8AB}{(A+B)^2}.
\]
特别 \(A=B\) 时，(W11) 第一项的配对为零，全部值 \(2\) 来自角点项。它不是可任意省略的 scheme convention。

径向 Bessel equation 与分部积分给出
\[
\boxed{
\overline M_{ij}:=M_{ij}-\eta_{ij}:v^2:
\quad\longleftrightarrow\quad A_{ij}I_1,
\qquad
N_{ij}\quad\longleftrightarrow\quad
A_{ij}I_3+4\eta_{ij}\partial_x(xI_1).}
\tag{W12}
\]
这里一个 cross mode 的 \(:v^2:\) 是 \(2\)，且
\[
K^i\overline M_{ij}=0,\qquad
M^i_i+\tfrac12\partial^i\partial^jN_{ij}=4:v^2:,
\quad K=k+l,
\tag{W13}
\]
作为 canonical distributions 精确成立。实际 scalar normalization在 (W9)–(W13) 同时相乘，故不改变任何 Ward 因子。

### 3.1 Radial cutoff removal 的真实拓扑

在至少一条 free momentum 非零的 compact chart，可用该腿的平方质量作为光滑坐标，能量符号固定。先配对该独立非负质量：其 \(J_0(u\sqrt y)\) transform 是二维径向 Fourier transform，具有任意阶 rapid decay；其 \(u\) derivative 也如此。另一腿的 \(J_0,J'_0\) 在 compact spectral sets 上有 uniform polynomial bounds。因此 (W9) 的 \(u,u^2,u^3\) integrals 在有限 test seminorm中绝对可积，uniform 于所有 \(|\beta_B|\le1\)，并在 bounded test sets 上收敛。

这个证明不对可能软的另一条自由锥作导数，故同时包括单腿零动量与两个非零 null momenta。共同原点以 dyadic scaling 处理：\(\overline M_B\) 的 joint momentum degree 为 0，\(N_B\) 为 \(-2\)，径向尺度变为 \(\rho B\)。八维测度分别提供 \(\rho^8,\rho^6\) 的正 margin，故 uniform annular bounds 可求和。Schwartz weights 控制 infinity。由此得到完整 \(\mathcal S'(k,l)\) 中的强收敛，并识别 (W10)–(W12) 的 canonical pullback；没有独立添加 null/origin distributions。

(W7) 的 residuals 亦趋零。可以直接用 (W6) 和 (W13) 的分布恒等式得到这一点，避免仅以 pointwise \(\beta'_B\to0\) 推断极限。

在固定有限 \(\chi\) 下，完整 retarded lift 的 output momentum \(p\) 可作为与 \((k,l)\) 独立的变量。retarded \(1/s(p)\)、\(1/s(p)^2\) 是该独立变量的 tempered distributions，故上述 strong radial limit经 tensor-product pairing与 \(\widehat\chi(p-k-l)\) 后仍然成立。这里未从一个已经取了 momentum-conservation restriction 的奇异乘积出发。

## 4. Future-total fiber：全部 null strata 的统一 margin

令总 free momentum \(K=k+l\)，\(Y=s(K)\)。由于两腿均 future，\(K\) 也 future。在一个 \(K\ne0\) compact patch 中，共同 null rotation 给出
\[
K=(P,Y/P,0),\qquad P\ge P_0>0.
\]
取
\[
k^+=\zeta P,\quad
k^-=\frac{d+(1-\zeta)Y}{P},\quad
k_\perp=w,\quad0\le\zeta\le1.
\tag{W14}
\]
则
\[
m=\zeta(1-\zeta)Y-|w|^2+
(\zeta-\tfrac12)d,\qquad
d^4k=\tfrac12\,d\zeta\,dd\,d^2w.
\tag{W15}
\]
没有 \(1/\zeta\) 或 \(1/(1-\zeta)\)。所以一条 free leg 变软，或者 \(k^+\to0\)，均已包括。

写 \(c_\zeta=\zeta(1-\zeta)\)、\(b_\zeta=\zeta-\tfrac12\)、
\(L=c_\zeta Y\)。对任意光滑 joint test amplitude \(\Psi\)，(W11) 的 fiber pairing 为
\[
\begin{aligned}
\mathfrak I_3[\Psi]={}\theta(Y)\int_0^1d\zeta\bigg[
&-4\int_{|w|^2<L}(L-|w|^2)\Psi_{dd}\,d^2w\\
&-8b_\zeta\int_{|w|^2<L}\Psi_d\,d^2w\\
&+4c_\zeta\int\delta(L-|w|^2)\Psi\,d^2w
\bigg]_{d=0}.
\end{aligned}
\tag{W16}
\]
最后的系数来自
\[
-8b_\zeta^2+2=8c_\zeta
\]
和 measure \(1/2\)。这正是角点项对 null uniformity 的贡献。

相应地
\[
\mathfrak I_1[\Psi]
=\theta(Y)\int_0^1d\zeta\int_{|w|^2<L}\Psi(0,w)\,d^2w,
\]
\[
\mathfrak J[\Psi]
=\theta(Y)\int_0^1d\zeta\left[
(1-\zeta)\int_{|w|^2<L}\Psi\,d^2w
-\int_{|w|^2<L}(L-|w|^2)\Psi_d\,d^2w
\right]_{d=0},
\tag{W17}
\]
其中 \(\mathfrak J\) 对应 \(\partial_x(xI_1)\)。

圆周平均消除奇数 \(w\) Taylor terms，因此这些 disk/surface expressions 是 \(Y\ge0\) 的光滑 one-sided families，具有有限 test seminorm bounds。每个 \(Y\) derivative只提高所需的 test derivative order；所有 \(\zeta\) coefficients 都非奇异。

(W12)、(W16)–(W17) 随即给出，在 arbitrary test-amplitude fibers 中，
\[
\boxed{
\overline M=Y\theta(Y)\mathsf M(Y),\qquad
N=\theta(Y)\mathsf N(Y),\qquad
K^iN_{ij}=Y\theta(Y)\mathsf B_j(Y),}
\tag{W18}
\]
其中 \(\mathsf M,\mathsf N,\mathsf B\) 为有界的 smooth distribution-valued coefficient families。在 \(Y=0\)，只有 (W16) 的 surface term survives，而
\(A_{ij}=-2c_\zeta K_iK_j\)。因此 \(\mathsf N(0)\) 纯属 \(K_iK_j\) 方向，证明最后一个 \(Y\) 因子。这个 margin 不是仅凭 homogeneity 猜测的。

作为独立精确积分，test amplitude为 1 时：
\[
\begin{aligned}
\mathfrak I_1&=\frac{\pi Y}{6}\theta(Y),&
\mathfrak I_3&=\frac{2\pi}{3}\theta(Y),\\
\int d^4k\,\overline M_{ij}
&=-\frac\pi{15}Y(Y\eta_{ij}+K_iK_j)\theta(Y),\\
\int d^4k\,N_{ij}
&=\left(\frac{2\pi}{15}Y\eta_{ij}
-\frac{4\pi}{15}K_iK_j\right)\theta(Y).
\end{aligned}
\tag{W19}
\]
这些公式使用 ordinary \(d^4k\)；Fourier \((2\pi)^{-4}\) factors 在完整 coefficient 中按原 convention 恢复。

## 5. Genuine switch 的 causal lift：对数界而非形式 Ward 推断

完整非 TT 部分是唯一 causal trace/divergence lift
\[
\begin{aligned}
\mathscr L_{\rm ret}[f,\tau]_{ij}={}&
\partial_iE_{\rm ret}f_j+\partial_jE_{\rm ret}f_i
-\partial_i\partial_jE_{\rm ret}^2\partial\!\cdot f\\
&+\tfrac13(\eta_{ij}-\partial_i\partial_jE_{\rm ret})
(\tau-E_{\rm ret}\partial\!\cdot f).
\end{aligned}
\tag{W20}
\]
finite switch 时 inputs 为 past-compact，故该定义唯一；它与上一轮 causal TT projector 使用相同 inverses。

设 injection \(\Omega=p-K\)。由 (W8)、(W13)，
\[
f_j=i\Omega^i\overline M_{ij},\qquad
\partial\!\cdot f=-\Omega^i\Omega^j\overline M_{ij},
\]
\[
\tau=-\Omega^iK^jN_{ij}
-\tfrac12\Omega^i\Omega^jN_{ij}.
\tag{W21}
\]
第二式的双 \(\Omega\) 来自 exact \(K^i\overline M_{ij}=0\)，至关重要。

在 (W14) 的 hard-\(K\) patch，small injection 时 \(p^0>0\) 且
\[
s(p)=a_\Omega Y+b_\Omega,\qquad
a_\Omega=(P+\Omega^+)/P>c,
\quad
b_\Omega=(P+\Omega^+)\Omega^- -|\Omega_\perp|^2 .
\]
把 (W18)、(W21) 代入 (W20)，所有 potentially singular terms 在 \(Y\) pairing 后只有下列三类：
\[
\Omega\frac{Y\,F(Y,\Omega)}{Y+b+i0},\qquad
\Omega^2\frac{F(Y,\Omega)}{Y+b+i0},\qquad
\Omega^2\frac{Y\,F(Y,\Omega)}{(Y+b+i0)^2},
\tag{W22}
\]
其中 smooth \(a_\Omega\)、tensor polynomials 和 compact cutoffs 已吸收到 \(F\)，并 \(b=b_\Omega/a_\Omega\)。
这里精确地
\(b=P\Omega^- -P|\Omega_\perp|^2/(P+\Omega^+)\)，
所以 \(\partial_{\Omega^-}b=P\)。这一 submersion在 fixed hard-plus chart内统一，不依赖近似展开。

对 compact smooth \(F\)，用 Taylor subtraction 或精确积分
\[
\int_0^L\frac{dY}{Y+b+i0}
=\log(L+b+i0)-\log(b+i0),
\]
\[
\int_0^L\frac{Y\,dY}{(Y+b+i0)^2}
=\log\frac{L+b+i0}{b+i0}-\frac{L}{L+b+i0}
\]
得到 common bound
\[
C\,\mathfrak p_k(F)
\left[|\Omega|+|\Omega|^2(1+|\log|b||)\right]
\tag{W23}
\]
在局部 \(\Omega\) distribution pairing 的意义下成立。这里 \(b=0\) 可在 \(\Omega\ne0\) 发生；没有宣称每个 fixed-\(\Omega\) family 都 pointwise 有限。

现在用真实 \(\chi_R(X)=\chi(X/R)\)，\(\chi\in C_c^\infty\)、\(\chi=1\) 于原点邻域。其 Fourier profile 是 \(\epsilon^{-4}\widehat\chi(\Omega/\epsilon)\)，\(\epsilon=R^{-1}\)。在 \(\Omega=\epsilon Z\) 后，
\[
b=\epsilon[PZ^-+O(\epsilon|Z|^2)]
\]
具有 uniformly nonzero \(Z^-\) derivative 于局部 chart。对数在这一变量上 locally integrable，Schwartz tails 控制其他参数。于是 (W23) 的 genuine profile pairing 为
\[
O(\epsilon)+O(\epsilon^2|\log\epsilon|).
\tag{W24}
\]
这个计算控制了 retarded inverse 的 null boundary；仅由 \(f^\chi,\tau^\chi\to0\) 的形式 Ward identity 无法替代它。

## 6. 全局 topology、共同原点与有限 scalar radii

在 \((k,l)\) 的非零 compact annulus 上，future support 保证 \(K^0=k^0+l^0\) 有正下界，可由有限个 hard-\(K\) charts 覆盖。因而 (W24) 包括全部 nonzero null intersections、共线与单腿软端点。

完整 joint coefficient 在 \((p,k,l)\) 中由 retarded output distributions 与第 3 节的 moment distributions 的 tensor product 定义，所以为 tempered。大 injection tails 可以在取 \(\Omega=0\) restriction 以前用该 joint bound 与 Fourier profile 的 Schwartz decay 控制。

所有 terms 的 joint momentum degree 为 0：\(\overline M\) 的 degree 为 0，\(N\) 为 \(-2\)，而 (W20)–(W21) 补足所需 degree。在 \(|(k,l)|\asymp\rho\) 壳层，局部 error 有 \(\rho^8(\epsilon/\rho)\) 的量级；\(\rho\ge\epsilon\) 的小半径壳层可求和。共同原点把 \((k,l,\Omega)\) 一起以 \(\epsilon\) 缩放，十二维 measure 与四维 profile 给出 \(\epsilon^8\) 的正 margin。缩放后 \(k',l'\) 留在固定 compact set；\(p'\) 的大值直接由 \(\widehat\chi(p'-k'-l')\) 的 Schwartz decay控制。因此所需的是这个乘积的有限 seminorm，不能把外 test \(\varphi(\epsilon p')\) 单独估计为完整 Schwartz function而引入人为的 \(\epsilon^{-M}\) 损失。相同 finite-order bounds 控制较大的 rescaled injections。大外动量则由选取足够高的 Schwartz seminorm 控制。由此证明 (W1) 的 strong \(\mathcal S'\) statement。

有限 external scalar radii 只在两条自由腿上乘
\(J_0(z\sqrt x)J_0(w\sqrt y)\)。它们在真实 free cones 上有界，其固定阶质量导数在 \(z,w\) 的 bounded intervals 上有 uniform polynomial bounds。大外动量壳层上增加的有限次 \(\rho\) 因子由同一 external test 的更高 Schwartz seminorm吸收。故上述 moment/fiber argument 仍然成立，且可随后联合取 \(z,w\downarrow0\)。没有把 \(J_0\) 在负质量上的指数延拓当作 Schwartz multiplier。

完整 stress 的其余两个首阶 insertions含 free stress，已精确 transverse/traceless。故完整非 TT correction 仅由本报告计算的 scalar-induced stress response给出。结合已建立的 causal TT finite-radius theorem，(W1) 完成当前 ordering、当前 perturbative coefficient 的 full-stress identification。

## 7. 检查、范围与尚未推出的命题

ward_moment_checks.py 实际完成 **50 个精确零 residuals**：Brown–York/BF trace/divergence、finite-\(\beta\) primitives、unswitched distribution Ward identities、Hankel corner系数、全部 tensor fiber积分、null margin、retarded logarithmic primitives和 source-counterterm splitting。程序、结果与实际运行日志位于 [verification directory](checks/dictionary_extensions/README.md)，文件名为 ward_moment_results.json、ward_moment_checks.log。

本定理是完整首阶 \(T\mathcal O\mathcal O\) sector 的 statement。对于 orthonormal \(20'\) scalar basis，其两 scalar flavor indices只附上 canonical \(\delta_{IJ}\)；此处没有额外 polarization projection。它不计算四 scalar order、其他 IIB multiplet couplings、loops、非扰动 Hilbert algebra 或全部 nonlinear dressings。

本 Lorentzian full-stress theorem 的 regulator 顺序仍是先 \(B\to\infty\)、再 \(R\to\infty\)。若另有 causal-TT theorem允许任意共同 \(B(R)\) removal，该结论本身不控制本报告有限 \(B\) 的 \(r_{B,i},r_{B,C}\) 经过 singular retarded lift 后的行为。完整 Brown–York stress 的任意共同路径仍需额外 uniform estimate，不能据 TT projection 自动推断。

相应的 Euclidean curved-source functional、reference/anchor derivatives 与 local contact scheme 在 companion note 中独立指定。source-response contacts 与本报告的 source-free Wightman identities 保持各自的定义。


## Executable verification links

- [ward_moment_checks.py](checks/dictionary_extensions/ward_moment_checks.py) and [actual output](checks/dictionary_extensions/ward_moment_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
