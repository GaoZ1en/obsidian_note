# 对其他分支新结果的独立交叉审查

## 1. Finite-\(N\) protected domain

对象：half_bps_finite_n_protected_domain.md。

已逐段核对 Gaussian \(SU(N)\) invariant Bargmann construction、trace quotient、invariant ring、creation/annihilation 共用域、closability、degree energy 的正自伴闭包、rapid-degree Fréchet domain，以及 degree-four exact mixing。

核心判断：上述数学构造在陈述的 holomorphic single-complex-scalar sector 中闭合。Compact-group invariance 与 holomorphicity 确实给 complexified conjugation invariance；distinct-eigenvalue matrices 的 dense open set 支持 invariant-ring 论证。多项式 Gaussian full support 给“零范数等于 exact trace identity”，所以 quotient 后的 positivity 来自完整 Hilbert construction。共同 polynomial domain 与 smooth-degree domain 的 graph-norm estimates 同时成立。

与 interacting SYM 的接口准确依赖外部 half-BPS non-renormalization 与 operator-bundle parallel transport；protected chiral product 和一般 local products 已分开。

建议一处措辞精化：smooth-degree domain 上的作用“agree with the restrictions of the closures to this domain”，避免把该 common core 误读为每个 closed operator 的最大定义域。root 已接受这个修改。没有发现其他影响定理的数学问题。

## 2. Full stress Ward adiabatic theorem

对象：half_bps_stress_full_ward_limit.md，重点 §§3–6。

独立手算核对了
\[
-4\partial_x(x\partial_x)[2\theta(x)\delta(x-y)]
=-8m_+\delta''(d)+2\delta(m)\delta(d),
\quad m=(x+y)/2,\ d=x-y.
\]
角点系数 \(2\) 与 Laplace pairing \(8AB/(A+B)^2\) 一致；它在 future-total fiber 中将 surface coefficient（乘上 \(d^4k\) 的 \(1/2\) Jacobian 之前）修正为 \(8\zeta(1-\zeta)\)。这正是 soft endpoints 的统一因子。

Actual radial-cutoff removal 的关键是先在一条 hard free leg 上取平方质量坐标；half-axis test \(\varphi(y)\) 变为二维 smooth radial Schwartz test \(\varphi(|\xi|^2)\)，其 Hankel transform 与径向导数具有任意阶衰减。此步骤对另一条软腿的 cone 作零次微分，因此单软端点和两个非零 null momenta 同时受控。共同原点的 \(\overline M\) degree \(0\)、\(N\) degree \(-2\) 分别保留八维 measure 的正 margins \(8,6\)。实际 \(\beta_B\) 家族只使用 uniform boundedness，保存了真正 radial limit。

Future-total coordinates 没有 \(1/\zeta\) 或 \(1/(1-\zeta)\) Jacobian；disk/surface Taylor expansion 给出的 \(Y\)-factors 与 scalar-induced trace/divergence 的 double-injection cancellation 正确。retarded lift 的三个模式只产生 \(O(\epsilon)+O(\epsilon^2|\log\epsilon|)\) 的 profile pairing。这里的 logarithm 是 injection-variable distribution，正文已经保持其适当拓扑。

对 global paragraph 的建议是把 core/tail budget 明写：共同 origin 以 \(\epsilon\) 缩放后，\(k',l'\) 在固定紧集，而 \(p'\) 由 Schwartz profile 控制；共同 degree \(0\) 与四维 profile 保留 \(\epsilon^8\)。使用这一定位避免对整个 \(\varphi(\epsilon p')\) 的全局 Schwartz seminorm 作过粗估计。Infinity 时有限 \(z,w\) Bessel mass derivatives 只带来有限次多项式增长，由更高 external Schwartz seminorm 吸收。已把这两项作为证明展开建议发送给原作者。

此次审查没有发现对当前 ordering、当前 perturbative coefficient 或其 stated regulator ordering 的实质反例。其他 orderings、新 IIB sectors 和 joint radial/spacetime removal 仍由对应主文的 exact scope 决定。
