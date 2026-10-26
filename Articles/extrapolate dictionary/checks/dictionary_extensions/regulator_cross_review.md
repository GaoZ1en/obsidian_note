# 本轮 regulator 分支的独立交叉审阅

本记录只列实际阅读并独立核对的范围。编程验证另见
`regulator_verification.md`。固定输入 commit 为
`aa128cb903e0f3750a16a69487d64013d38667b1`；新增 companion 文件属于本轮研究。

## 1. Joint-limit master

实际通读 `../../half_bps_stress_joint_limit.md`，重点核对 hard-null
shell bound、soft domination、fixed-shell convergence、common origin、
global strong tempered upgrade 与 bounded external radii。

核对结果：

- 固定 normalized annulus 的 cover 使用 regular mass-submersion、
  common Hankel cancellation 和 massive zero-transfer estimate。
  这些 bounds 对全部径向 scales 有效；没有先令 radial cutoff 消失才套用
  finite-cutoff domination。
- Hard-null 的 `rho^2` 可求和 majorant 来自完整 tensor 与实际 angular-cell
  measure；injection transverse components 作为参数处理。收缩 profile 的
  transverse derivatives 没有被误计为免费常数。
- 两个 soft endpoints 使用真实 finite-cutoff leakage majorant
  `A rho^2 (1+|log rho|)`；大 hard mass 区的 log 来自 `d sigma/sigma`。
  这补上旧 canonical-support argument 只能在 radial limit 后使用的缺口。
- 每个固定 soft shell `H~rho>0` 即使 `A=0` 也有非零 soft-leg energy，
  因而落在已覆盖的 hard-energy charts。其常数可以依赖固定 `rho`；
  summable majorant 承担最后的 dyadic sum。
- Common-origin `rho^8`、全空间 polynomial bounds 与 Schwartz tails
  足够给 equicontinuity。Montel argument 用于把弱收敛提升为有界 test sets
  上的一致收敛。
- Bounded-radii transfer 仍先组合 Volterra/outer-insertion expression，
  不把单独 spacelike I0 growth 当作完整系数。

建议把“已知 iterated path 是 joint paths 的一个成员”改为更准确的
“已知 iterated limit 用于识别唯一 joint limit”；该建议已发给主作者。
任意 joint theorem 的范围始终为 causal TT coefficient。

集成说明：最终主文使用已证明的线性 fast path $B=cR$ 识别共同极限，
没有把 iterated limit 本身称为一条 joint path。

## 2. Sourced Einstein endpoint

实际通读 `../../half_bps_stress_sourced_endpoint.md`。
核对 exterior FG class `H=A+u^2 B` 的 Einstein current、spatially paired
time current、radial flux 与有限时间段的 IR endpoint。
特别核对 `V_integrated = (1/2) dC/dt` 以及 tail integral `C/(2L^2)`。
对纯 scalar PBH component，直接得到
`C=12 integral(sigma1 dot(sigma2)-sigma2 dot(sigma1))` 与
`V=6 integral(sigma1 ddot(sigma2)-sigma2 ddot(sigma1))`，系数一致。

该结果适用于文中固定 support 的 linearized sourced class。
它没有提供任意 switching/radial paths 上的 uniform full CPS bound，
也没有自动推广到 nonlinear interacting phase space。

## 3. 完整 Brown–York Ward adiabatic response

实际通读 `../../half_bps_stress_full_ward_limit.md`，独立核对 mass-origin
contact、future two-scalar fibers 与 §§5–6 的 retarded force lift。

关键检查如下：

- `I3=-8 v_+ delta''(d)+2 delta(v)delta(d)` 的 corner 系数与
  `partial_x = (1/2)partial_v + partial_d` 一致。
- Future fiber 中三个系数为 `-4`、`-8(zeta-1/2)`、
  `4 zeta(1-zeta)`。在 total mass `Y=0`，只剩的 surface term 与
  `K_i K_j` 成比例，所以 `K.N` 带一个实际 `Y` 因子。
- Retarded lift 的 endpoint primitives 为 logarithms；精确变量
  `b=P Omega^- - P|Omega_perp|^2/(P+Omega^+)` 满足
  `partial_(Omega^-) b=P`。因此 logarithm 可在 genuine switching
  profile 下作局部 L1 配对，不能把它误写成每个固定 injection 的
  pointwise bound。
- Remote injection 区先用 joint tempered family，再作受限 charts。
  Common origin 与未来两粒子总能量的 annular cover 相容。

此 companion 的 additional full-stress forces 保持先 radial cutoff、
后 switching 的顺序。它与 causal TT 的新 arbitrary-joint theorem
具有不同的已证范围。

## 4. Finite-switch source functional

实际通读 `../../half_bps_stress_finite_switch_ward.md`，包括新增 F11a–d。
独立核对 F1/F5 的 action/source definition，reference metric 的必要性，
BF vertex 的符号，physical-only 与 diagonal Ward identity，以及 PBH
source-counterterm gradient anomaly。

具体检查：

- `w=0` 的 physical interaction derivative 为零，而 reference derivative
  携带 Gaussian covariance 的 stress response；F5/F7 准确保留这一区别。
- Divergence 的 UV primitive 给 `+w0 partial_j(V^2)`，BF metric vertex
  给 `-partial_j(w0 V^2)`，净余 `-(partial_j w0)V^2`。
- Trace 的 UV primitive `+4w0 V^2` 与 BF vertex `-4w0 V^2` 抵消；
  `partial_i partial_j(wTij)/(2u)` 的 cross derivatives 分别给
  `u^-1 w_i partial_j Tij` 和 `(2u)^-1 w_ij Tij`。
- Source gradient 原式为 `-1/2 integral w partial_i(a^2 j partial_i U)`；
  移为总 derivative 时必须增加 `+1/2 integral a^2 w_i j partial_i U`。
- F12 的 determinant variation 与 radial density weights 抵消后留下
  `(a partial_a+b partial_b)c_ab/2=pi^2`。PBH gradient variation
  精确给 F13/F14 所保留的有限层 local contact。
- F17 的 curvature、switch-gradient 和 source-gradient Weyl variations
  符号一致。F18–F24 的 explicit Euclidean kernel 与 IR power bounds
  给固定 `a_min>0` 上的 `O(B^-2+R^-2)`。

审阅范围为一个 metric source、两个 scalar sources 的系数。Euclidean
joint theorem 的常数依赖固定 positive radial source interval；正文准确
保留这一条件。没有借此推出所有 external radii 与 regulators 的任意
共同路径，亦没有把 source contacts 直接加入 source-free Wightman cut。

## 5. 最终结论

上述交叉审阅未发现需要收回当前 stated scope 的矛盾。必须保留的区别是：
complete causal TT 与 full Brown–York response、common cutoff 与 individual
diagram cutoffs、local literal Abel 与 global Schwartz completion、source
contact anomaly 与 source-free Wightman distribution。这些区别在最终
regulator 文件与本记录中均已明确。
