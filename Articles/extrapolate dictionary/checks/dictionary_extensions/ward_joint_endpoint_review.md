# 新 joint-limit 与 sourced-endpoint 证明的独立交叉审查

本记录由 gauge/Ward 分支在本轮实际阅读全文后形成。它不把其他分支的 verification JSON记为本分支重新执行的 CAS。本文的证据是逐项数学重建；本分支实际运行的 50+23 个精确检查与 10 项数值积分另在 ward moment/source scripts 中。

## 1. 阅读范围

完整读取本轮 root 的 [half_bps_stress_joint_limit.md](../../half_bps_stress_joint_limit.md)、[half_bps_stress_sourced_endpoint.md](../../half_bps_stress_sourced_endpoint.md)，以及 regulator 分支的 [half_bps_stress_joint_cutoff_local.md](../../half_bps_stress_joint_cutoff_local.md)、[half_bps_stress_joint_massive.md](../../half_bps_stress_joint_massive.md)、[half_bps_stress_joint_soft.md](../../half_bps_stress_joint_soft.md)。为核对新 annular replacement，重新读取起点版本 [half_bps_stress_partial_injection.md](../../half_bps_stress_partial_injection.md) §§6–8；旧 fixed-parameter causal mass-family theorem仍是显式依赖。

## 2. Massive zero transfer：uniform bound 的机制成立

以 \(M=p-\Omega=q-r\)、\(r=\rho(H,\mathbf V)\) 为坐标，hard mass
\[
b^2=m^2+2m\rho H+\rho^2T,\qquad T=H^2-|\mathbf V|^2
\]
在 fixed \(T\) 时满足 \(\partial_Hb=m\rho/b\asymp\rho\)。
在 \(|\mathbf V|\ge c\) chart 中，Jacobian
\(\frac12\sqrt{H^2-T}\,dH\,dT\,d\Omega_2\) 光滑。把 \(H>c_1,H<-c_1,T<-c_2\) 分区后，soft retarded mass与其 energy-sign prescription不依赖被分部积分的 \(H\)。因此 hard Hankel/free mass 的 nonstationary phase确实提供任意 \((1+\rho u)^{-N}\) gain，没有对 soft null distribution求导。

完整 tensor \(\mathcal N=a^4\Pi(p)(r-\Omega)r\) 给
\(\rho(\rho+|\Omega|)\)，两条 hard radial amplitudes给 \(u^{-1}\)，raised mass derivative给 \(u^2\)，vertex measure给 \(u\,du\)。连同真实 \(r\)-measure：
\[
\rho^4\,\rho(\rho+|\Omega|)
\int du\,u^2(1+\rho u)^{-N}
\lesssim \rho^2(\rho+|\Omega|).
\]
一个 injection derivative可增加一个 \(u\)，因此相应 bound是
\(\rho^2+|\Omega|\rho\)。这准确复现新的 massive annular estimates。

在 spatial-axis chart，必须保留同一 cutoff 下的两项 exact Hankel sum。\(H>0\) 时 \(\partial_H(b+c)\ge c\rho\)；\(H<0\) 时
\(\partial_H(a+c-b)\le-c\rho\)，而另一 phase \(a+c+b\) 本身有 hard gap。这一分区也控制异常 finite-injection thresholds，且不需要先用 uncut support cancellation。

最后
\(\sum_{\rho\le\delta}\rho^2(\rho+|\Omega|)
\lesssim\delta^3+|\Omega|\delta^2\)
排除了实际 family在 \(r=0\) 留下独立 atom的可能；tail
\((1+B\rho)^{-M}\) 在 \(\rho=B^{-1}\) 两侧求和给
\(B^{-3}+|\Omega|B^{-2}\)。这是一项新的 cutoff-uniform trace theorem，足以替换旧 uncut continuity estimate。

## 3. Soft endpoints：有限 cutoff leakage 被真实控制

新 proof把 \(J_0\) 写成 circle average，把
\(8J_2(v)/v^2\) 写成 six-dimensional sphere average。这使 zero input mass不带 inverse powers。complete same-sign Hankel phases分别是
\(\pm(a+c)+b\cos\theta\) 和 \(\pm(b+c)+a\xi\)；hard masses有 gap时，profile \(\beta(u/B)\) 的 symbol bounds对全部 \(B>0\) 一致。

restoring squared-mass scale \(\sigma\) 后 raised seed为
\(O(\sigma^{-3})\)。精确 tensor在 positive leakage区最多为
\(O(\sigma^2)\)，于是 hard squared mass积分只消耗
\(\int d\sigma/\sigma\)。这给 \(1+|\log\rho|\)，而真实 free-cone measure
\[
d^4k=\tfrac12 AH\,dA\,dH\,d^2v
\]
仍提供 annular factor \(A\rho^2\)。全过程没有对 \(A,H,v\) 作会破坏 cone margin的 distribution derivative。

transfer-null buffer只有 retarded \(K_0/Y_0\) logarithm；相应 hard-mass derivative Jacobian有正下界，所以它被实际质量积分吸收。raised derivative不作用于该 soft output mass。远 injection leakage是普通 gapped coefficient，可使用 profile的绝对 \(L^1\) tail；singular mass band才调用原 finite-order two-mass estimate。两种估计的作用区域没有混用。

因此新的 \(CA\rho^2(1+|\log\rho|)\) summable bound补齐了旧证明在有限 \(B\) 时不能宣称 mass-band外精确为零的缺口。

## 4. Hard-null annuli 与全局强拓扑

旧 fixed-parameter construction的 all-null core已对全部 \(B>0\) 给 \(O(\epsilon^2)\)，\(\epsilon=R^{-1}\)。其余外部 normal annuli使用 fixed boosts和 angular cells，不能把 boost改成依赖 momenta 的 injection redefinition。

独立复算 powers：
\[
(\rho^{-1}\text{ cells})\,
(\rho^4\text{ external volume/cell})\,
(\rho^{-1}\text{ tensor weight})
=\rho^2.
\]
新 massive/soft/local estimates给 normalized finite cover的共同 \(B\)-uniform bound。因此每个 annulus都有 \(C\rho^2\) majorant；对 fixed \(\rho>0\)，\(B\sqrt\rho\to\infty\)、\(\epsilon/\rho\to0\) 提供正确 joint limit。先分离 \(\rho\le\delta\) 与 \(\rho>\delta\)，再令 \(\delta\downarrow0\)，是合法的 dominated annular argument；无需给 \(B(R)\) 设速率。

在共同原点，joint degree零、十二维 measure和四维 switching profile给 \(\epsilon^8\)。此时 rescaled external momenta在 fixed compact set，远 output/injection由 \(\widehat\chi\) 控制。应对这个乘积取 seminorm，避免把 \(\Psi(\epsilon p')\) 单独作为全 Schwartz function估计后制造 \(\epsilon^{-M}\) 损失。大外动量只消耗固定 polynomial weights，Schwartz tests能够吸收。

这些步骤确认 master 的任意共同 \(B,R\to\infty\) strong-tempered theorem在其指定 causal TT coefficient和共同 vertex cutoff下成立。完整 Brown–York stress仍有 finite-\(B\) Ward forces；本分支的 full-stress theorem明示先 \(B\to\infty\)、再 \(R\to\infty\)，不借 TT theorem扩大自身范围。

## 5. Linearized sourced Einstein endpoint

root 从 Einstein–Hilbert covariant potential直接展开的
\[
\omega^u\propto u^{-3}
\left[h_1:h'_2-h_2:h'_1
-\tau_1\tau'_2+\tau_2\tau'_1\right]
\]
与 free TT quadratic action的 relative sign一致。对 constrained exterior
\[
h=A+u^2B,\quad
A=\partial v+\partial v-2\sigma\eta,\quad
B=-\partial\partial\sigma,
\]
radial flux的 leading \(u^3\) antisymmetric term消去，余项为 \(O(u^{-2})\)。

独立检查 pure conformal \(v=0\) 子族，空间积分后的 time component为
\[
12u^{-3}(\sigma_1\dot\sigma_2-\sigma_2\dot\sigma_1),
\]
radial coefficient满足相应 conservation identity。root 对任意反向空间波矢、独立 time jets的 polynomial verification覆盖一般 \(v,\sigma\)；空间积分优先的表述正确保留了实际 cancellations，没有由 pointwise absolute convergence推断不存在的结果。

finite radial/spacetime source support、zero past data下，TT radial propagation满足
\(u\le L_s+t-t_*\)。UV reflection不能缩短径向路径，boundary-retarded projector只增加时间延迟且不改变原 source的 radial support。因此固定有限 time interval的 far-IR metric确由 constrained tail支配。这里需要 spatial compact/Schwartz data；仅有 pastcompact而空间不衰减的源不能套用 spatial-first pairing。

这一结果关闭 **fixed-support linearized sourced–sourced response pairing** 的旧 endpoint缺口。它不提供随 adiabatic support增长的全部 nonlinear CPS bounds，也不自动定义完整 interacting field-operator domain。root master保留了这些限制。

## 6. 审查结论

本轮 joint causal-TT theorem、finite-cutoff massive/soft estimates与 fixed-support linearized sourced endpoint在声明条件下通过独立数学复核。实际 radial prescription、共同 cutoff、source domain、retarded projector与迭代/共同极限的区别均为定理的一部分。与本分支 full Ward theorem组合时，必须保留 full Brown–York 的不同 regulator-order statement。
