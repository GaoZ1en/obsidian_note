# Exact massive mass-mismatch lemma：独立复核与证明

本报告继续核验 genuine switched boundary trace 的一个更强局部命题。与先前只控制 plateau average 的八维 joint estimate 相比，本命题直接构造固定 switch momentum 对应的连续 distribution family。

**结论。** 当 $M=p-\Omega=q-r$ 位于一个紧 massive future 区域，且 $r$ 足够小时，完整 scalar boundary seed 对 mismatch 参数 $d=s(p)-s(M)$ 是 $C^2$ 的 $\mathcal D'_r$-valued family。其真实 mass-raised coefficient 满足

$$
\|\partial_d^2S_d-\partial_d^2S_0\|_{\mathcal D',K}
\le C_K|d|\bigl(1+|\log|d||\bigr)
\tag{E1}
$$

（右侧使用下文固定有限阶 test seminorm）。在这个局部 chart 内，它确实推出 $\Omega\mapsto G_\Omega$ 的 continuous $\mathcal D'$-valued trace。任意各向异性 approximate identity 的局部误差可由最大宽度控制；chart 之外的 distribution tails 需要另外的估计。

## 1. Exact variables 与真实 mass derivative

使用 signature $(-,+,+,+)$、$s(k)=-k^2$。固定

$$
M=q-r,\quad m^2=s(M)>0,\quad p=M+\Omega,\quad
x=s(p)=m^2+d.
$$

在 $M$ 的 rest frame 写

$$
M=(m,\mathbf0),\qquad r=(h,\mathbf v),\qquad v=|\mathbf v|,
$$
$$
t=s(r)=h^2-v^2,\qquad
y=s(q)=m^2+2mh+t.
\tag{E2}
$$

取 $m\in[m_-,m_+]$，$m_->0$，并把 $r$ 限于足够小的固定 ball，则 $p,q$ 的 future massive cones 稳定。由直接代数，

$$
\boxed{\lambda(x,y,t)
=4m^2v^2-4d(mh+t)+d^2.}
\tag{E3}
$$

这里真实 radial mass-raising operation 是在 $y,t$ 和能量方向固定时对 $x$ 求导。固定 $(M,r)$ 时，$m,y,t$ 全部固定，$x=m^2+d$，所以

$$
\boxed{\partial_x^j=\partial_d^j}
\tag{E4}
$$

对 scalar seed 精确成立。Polynomial numerator 保持在 mass derivative 外面；本结论也没有对 external cone indicators 求导。由于当前 $x,y$ 保持正的 mass gap，这与原 `half_bps_stress_boundary_restriction_independent.md` (7) 的真实 radial prescription 一致。

令 $a=\sqrt{m^2+d}$、$b=\sqrt y$。原 all-insertion seed 在当前 patch 为

$$
S_d=
\begin{cases}
-\lambda^{-1/2},&r\ \text{spacelike},\\
-2\,\mathbf1_{a>b+\sqrt t}\lambda^{-1/2},
   &r\ \text{future timelike},\\
-2\,\mathbf1_{b>a+\sqrt t}\lambda^{-1/2},
   &r\ \text{past timelike}.
\end{cases}
\tag{E5}
$$

Threshold values 采用原 retarded seed 的 locally integrable square-root boundary value，再作 distributional mass derivatives。

## 2. Anomalous timelike support 的 exact 缩小

若 $r$ future timelike，$h>0$ 且 $a>b+\sqrt t$ 蕴含

$$
d>2mh+2t+2b\sqrt t\ge2mh.
$$

因此 $d>0$、$0<h<d/(2m)$，而 $v<h$。若 $r$ past timelike，$h<0$ 且 $b>a+\sqrt t$ 蕴含

$$
2mh>d+2a\sqrt t>d.
$$

因此 $d<0$、$d/(2m)<h<0$，且 $v<|h|$。连同闭支撑，

$$
\boxed{|r|_{\mathrm E}\le\frac{|d|}{\sqrt2\,m}}
\tag{E6}
$$

控制全部 anomalous timelike region。Distributional mass differentiation 的支撑仍在该闭区域内，故这个定位也适用于 threshold finite parts。

在 $|r|\ge A|d|$、$A$ 足够大而仅依赖 $[m_-,m_+]$ 时，全部 timelike terms 为零。剩余 spacelike region 的锥壁由 $h^2=v^2$ 给出，与 $d$ 无关。

## 3. Core 的 uniform pullback：包括 threshold/null 相切点

令 $\delta=|d|$、$\sigma=\operatorname{sgn}d$，并缩放

$$
r=\delta R,\qquad R=(H,\mathbf V),\quad V=|\mathbf V|,
\quad T=H^2-V^2.
$$

于是

$$
\lambda=\delta^2L_{\sigma,\delta},\qquad
L_{\sigma,\delta}
=4m^2V^2-4\sigma mH+1-4\sigma\delta T.
\tag{E7}
$$

在固定 compact $R$ 集上，

$$
\partial_HL_{\sigma,\delta}
=-4\sigma m-8\sigma\delta H
$$

对小 $\delta$ 一致远离零。普通 threshold 点因而具有 uniform scalar submersion chart。

需要特别处理的是 threshold 与 $T=0$ 的交点。$\lambda$ 与 $t$ 在那里相切，直接把 $(\lambda,t)$ 当作坐标会失败。正确坐标是

$$
\bar w=\frac{w}{\delta}
=\frac{\sigma-2mH-2\delta T}{2b_\delta},
\qquad
b_\delta=\sqrt{m^2+2m\delta H+\delta^2T},
\tag{E8}
$$

与 $T$。交点满足

$$
H=\frac{\sigma}{2m},\qquad V=\frac1{2m},\qquad
\bar w=T=0.
$$

其 exact Jacobian 是

$$
\boxed{
\det\frac{\partial(\bar w,T)}{\partial(H,V)}
=\frac1{\sqrt{m^2+\sigma\delta}}
}
\qquad\text{在上述交点上}.
\tag{E9}
$$

这在 $m$ 的紧正区间与小 $\delta$ 上一致非零。Angular coordinates 同样规则，因为 $V$ 在这里远离零。

局部 seed 可写为

$$
S_d=-\frac1{2b}\mathcal H(w,r),\quad
\mathcal H(w,r)=
\frac{\mathbf1_{w^2-t>0}}{\sqrt{w^2-t}}
\left[1+\operatorname{sgn}(h)\operatorname{sgn}(w)
\mathbf1_{t>0}\right],
\tag{E10}
$$

而

$$
\partial_d^jS_d
=-\frac1{(2b)^{j+1}}\partial_w^j\mathcal H(w,r),
\qquad j=0,1,2.
\tag{E11}
$$

在交点附近 $\operatorname{sgn}h$ 固定，(E10) 是 $(w,t)$ 中明确的 locally integrable distribution。利用 (E9) 可拉回其一阶、二阶 distributional derivatives，给出 uniform order-$j$ bound。Core 的其余部分由以下 charts 覆盖：

- $L=0,\ T\ne0$：使用 $\partial_HL\ne0$；
- $R=0$ 附近：$L=1+O(R)$，mass coefficients 光滑，cone indicators 有界且与 $d$ 无关；
- threshold 以外：通常的 smooth charts。

因此，在固定 compact $R$ 集上，缩放后的 $\delta^{j+1}\partial_d^jS_d(\delta R)$ 具有一致 order-$j$ distribution bound。乘 $d^4r=\delta^4d^4R$ 后，

$$
\boxed{
\left|\left\langle\partial_d^jS_d,
\vartheta(r/\delta)\psi(r)\right\rangle\right|
\le C\delta^{3-j}\|\psi\|_{C^j},
\quad j=0,1,2.
}
\tag{E12}
$$

$\vartheta$ 是固定 smooth core cutoff。特别是二阶 raised core 为 $O(|d|)$；这一步是 uniform finite-part pullback 的结论。

## 4. $d=0$ 的 density 与 annular modulus

在 $d=0$，

$$
S_0=-\frac{\mathbf1_{|h|<v}}{2mv},
$$
$$
(\partial_dS)_0
=-\mathbf1_{|h|<v}\frac{mh+h^2-v^2}{4m^3v^3},
\tag{E13}
$$
$$
\boxed{
F_0:=(\partial_d^2S)_0
=\mathbf1_{|h|<v}
\frac{m^2v^2-3(mh+h^2-v^2)^2}{8m^5v^5}.
}
\tag{E14}
$$

这里是先作 mass derivative 再置 $d=0$。$F_0$ 在 soft point 的大小至多 $C|r|^{-3}$，其四维体积使其 locally integrable。前两式的 singular degrees 分别为 1 和 2，也有普通 locally integrable extension。

在 annuli $|r|\ge A|d|$ 的 spacelike region，令 $f_d=-\lambda^{-1/2}$。由 (E3) 得

$$
f_d''=\lambda^{-3/2}-\frac34(\lambda')^2\lambda^{-5/2},
$$
$$
f_d'''=-\frac92\lambda'\lambda^{-5/2}
+\frac{15}{8}(\lambda')^3\lambda^{-7/2},
\quad \lambda'=2d-4(mh+t).
\tag{E15}
$$

若 $A$ 取足够大，沿 $d'=sd,\ 0\le s\le1$ 始终有

$$
\lambda\ge c v^2\ge c'|r|^2,\qquad
|\lambda'|\le C|r|,\qquad
|f_{d'}'''|\le C|r|^{-4}.
\tag{E16}
$$

故每个 dyadic shell 的配对差至多 $C|d|\|\psi\|_\infty$，总计

$$
\left|\langle F_d-F_0,\psi\rangle_{\{|r|\ge A|d|\}}\right|
\le C|d|\left[1+\log\frac{\rho}{|d|}\right]\|\psi\|_\infty.
\tag{E17}
$$

Core 的 $F_d$ 由 (E12) 控制，$F_0$ 的 ordinary integral 也是 $O(|d|)$。因此得到严格 estimate

$$
\boxed{
|\langle F_d-F_0,\psi\rangle|
\le C|d|\bigl(1+|\log|d||\bigr)\|\psi\|_{C^2}.
}
\tag{E18}
$$

常数在指定的 massive compact set 与固定 test support 上一致。它给出 strong local $\mathcal D'_r$ continuity。

## 5. Hidden supported terms 的排除

这里有两个需要分别排除的可能性。

第一，$r=0$ 的集中项。二阶 core norm 是 $O(|d|)$，而 $F_0$ 的 scaling degree 为 $3<4$。因此该 limit 不生成 $\delta^4(r)$ 或其 normal derivatives。该结论使用 (E12) 的真实 distribution estimate。

第二，对 joint seed 求 $\partial_d^2$ 时可能出现的 $\delta(d)$ terms。由相同 core/annular argument，

$$
S_d\to S_0,\qquad \partial_dS_d\to(\partial_dS)_0,
$$

二者都可取 $O(|d|)$ 的保守局部配对界；core 的贡献分别是 $O(|d|^3)$ 与 $O(|d|^2)$。对 $d>0$ 与 $d<0$，上节的 submersion charts 给出真正 parameter-smooth distribution families。对每个 test 应用一维 fundamental theorem，并使用两侧相同的 limiting first and second derivatives，即知 $S_d$ 在 $d=0$ 是 $C^2(\mathcal D'_r)$，二阶 derivative 为 (E14)。因此 canonical joint $\partial_d^2S$ 没有另一个 $\delta(d)$ 或 $\delta'(d)$ contribution。

这一结论针对原 retarded seed 指定的 locally integrable $S$。额外人为附加的 supported distribution 会改变 seed 的定义。

## 6. 从 mismatch 参数回到固定 $\Omega$ 的三点 family

在固定 $\Omega$ 下，线性换元

$$
(p,q)\longleftrightarrow(M,r),\qquad
p=M+\Omega,\quad q=M+r
$$

的 absolute Jacobian 为 1。并且

$$
d(M,\Omega)=s(M+\Omega)-s(M),\qquad
|d(M,\Omega)|\le C|\Omega|
\tag{E19}
$$

在固定 massive compact set 上成立。Polynomial tensor $N(p;q,r)$ 与其有限阶 $r$ derivatives 对 $(M,\Omega)$ 光滑；原 overall coefficient 也是固定常数。换元后的 test 的 $\Omega$ variation 为 $O(|\Omega|)$，用一个保守 $C^3$ test seminorm即可控制。

由 (E18) 得到局部

$$
\boxed{
|\langle G_\Omega-G_0,\psi\rangle|
\le C|\Omega|\bigl(1+|\log|\Omega||\bigr)\|\psi\|_{C^3}.
}
\tag{E20}
$$

它同时给出真正固定-$\Omega$ 的 continuous $\mathcal D'$-valued family。这比仅知道八维 joint scaling degree 更强；这里完成了其必要的 fiberwise pullback construction。

## 7. 各向异性 approximate identities：局部定理与远尾边界

在 (E20) 成立的固定 $\Omega$ chart 内，取

$$
\rho_A(\Omega)=|\det A|^{-1}\rho(A^{-1}\Omega),\qquad
\int\rho=1,\quad \rho\in\mathcal S,\quad
\delta_A=\|A\|\to0.
$$

可以把 $\Omega$ test 完全局限在该 chart，并用其余的光滑 cutoff 固定延拓 family。换元 $\Omega=Av$，使用 $|Av|\le\delta_A|v|$ 和 (E20)，得到

$$
|\langle \rho_A G-G_0\delta,\Psi\rangle|
\le C\,\delta_A(1+|\log\delta_A|)\,p(\Psi)
+O(\delta_A^M).
\tag{E21}
$$

这个**局部 continuous-family estimate** 的常数无需最小 singular value。

若 $\Omega$ chart 之外只知道一个 joint finite-order distribution，则不能仅凭 (E21) 丢弃其远尾。对 $\rho_A$ 的 distributional derivatives 会产生 $\|A^{-1}\|^k$，而非只出现 $\|A\|$。一个一般反例是在四维 $\Omega$ 上取

$$
T=\delta''(\Omega_1)\delta(\Omega_2-c)\delta(\Omega_3)\delta(\Omega_4),
\quad c>0,
$$

并令 $A=\operatorname{diag}(e^{-\varepsilon^{-4}},\varepsilon,\varepsilon,\varepsilon)$，$\rho$ 为 normalized Gaussian。则 $T$ 在原点邻域为零，但其与 $\rho_A$ 的配对含

$$
e^{3\varepsilon^{-4}}\varepsilon^{-3}e^{-c^2/\varepsilon^2},
$$

因而发散。该例只说明从一般 joint finite-order 控制到任意 anisotropic 远尾估计的逻辑缺口；它没有断言本研究的 kernel 含这一项。

所以，null-boost 应用须给出明确的 chart localization 或独立远尾界。若各向异性比值有适当 polynomial control，足够高的 Schwartz seminorm 可吸收这些导数损失；任意退化比值需要更强输入。

## 8. Mass 缩放与 all-null 应用的精确范围

规范化变量

$$
r=mR,\qquad d=m^2a
$$

给出

$$
S_d(r)=m^{-2}\bar S_a(R),\qquad
\partial_d^2S_d(r)=m^{-6}\partial_a^2\bar S_a(R).
\tag{E22}
$$

在相应局部 $|r|\lesssim m$ 的 radial test pairing 中，$d^4r=m^4d^4R$。因此相应 continuity bound 的标度为

$$
C\,|d|m^{-4}\left(1+\left|\log\frac{|d|}{m^2}\right|\right),
\tag{E23}
$$

配合按 $m$ 缩放的 test seminorm。它明确记录了把 massive lemma 用到 $m\to0$ 时需要处理的参数依赖。All-null theorem 还须控制 boosts、test transformations、overlapping soft faces 以及上一节的远尾；本报告完成其 massive local 输入。

还有一个明确的 chart 覆盖边界。采用 lightcone coordinates，$s(k)=2k^+k^- -|\mathbf k_\perp|^2$，取 $0<a<b$、$c\ne0$：

$$
p=(a,0,0,0),\quad
q=\left(b,\frac{\epsilon c^2}{2b},\sqrt\epsilon c,0\right),\quad
\Omega=\left(0,\frac{\epsilon ac^2}{2b(b-a)},0,0\right).
$$

则 $r=q-p+\Omega$ 也为 future null，且

$$
s(p)=s(q)=s(r)=0,\qquad
s(M)=-\frac{\epsilon a^2c^2}{b(b-a)}<0.
\tag{E24}
$$

与此同时，完整 polynomial numerator 有非零 component

$$
N_{--}=\frac{\epsilon^2a^4c^4}{6b(b-a)}.
\tag{E25}
$$

这是一条 $\Omega\to0$ 的真实 nonstationary all-null layer，位于 massive-$M$ chart 之外。它说明 all-null closure 还需控制 triple mass-origin 的 retarded derivative 与 input-cone extension。它与已证明的 massive lemma 完全相容。

## 9. 本轮独立执行

程序 `exact_mass_mismatch_checks.py`、输出 `exact_mass_mismatch_results.json`、日志 [captured stdout/stderr](checks/stress_completion/execution_record.json) 均为本轮新增并实际执行。

SymPy 1.14.0 得到 **22 个精确零残差**，覆盖 exact discriminant、前三阶 mass-variable derivative、二阶/三阶 seed derivative、core scaling、两个 sign charts 的 exact null-threshold Jacobian、独立 radial antiderivative，以及 (E24)–(E25) 的 all-null chart 边界。

另用 mpmath 进行 integrated-seed 检验。选 $m=1$，test 在 $|h|<0.2,\ v<0.3$ 内为常数，其 cutoff 边界远离小 mismatch 的 threshold core。先对 complete locally integrable $S_d$ 做 exact radial antiderivative，再对已配对的 scalar seed 作高精度 central difference。该步骤避免把 $\lambda^{-5/2}$ 当作 ordinary integrand。解析 $F_0$ 配对为

$$
0.03589240639925101627685691\ldots.
$$

| $d$ | 配对后二阶 central difference | 与解析 $d=0$ 值的差的绝对值 |
|---:|---:|---:|
| $0.01$ | $0.0354879512934991574$ | $4.0445511\times10^{-4}$ |
| $0.005$ | $0.0356746191822855188$ | $2.1778722\times10^{-4}$ |
| $-0.01$ | $0.0364258356713755465$ | $5.3342927\times10^{-4}$ |
| $-0.005$ | $0.0361424275898162135$ | $2.5002119\times10^{-4}$ |

Numerical differences 使用 step $|d|/100$，属于支持性 numerical evidence。任意 smooth test、uniform constants 与 supported-term 排除由 §§3–7 的解析证明给出。

**最终判定：** massive fixed-mismatch lemma 的核心成立；其局部 continuous-family 与 maximum-width anisotropic 推论成立于明确指定的 chart。全 null 证明中剩余的任务是对该 lemma 的参数依赖和 chart 外 tails 提供一致控制。

## Reproducible verification files

- [exact_mass_mismatch_checks.py](checks/stress_completion/exact_mass_mismatch_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
