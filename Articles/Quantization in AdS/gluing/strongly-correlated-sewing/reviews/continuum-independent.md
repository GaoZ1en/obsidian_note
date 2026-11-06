# Independent continuum review: spectral sewing, replica coefficients, and Schmidt-rank obstruction

## 结论与核查范围

**正长度 collar 的谱 contraction 可以在精确的 Hilbert-space 条件下证明；零 collar 保留强算符极限，但无调节的 identity trace 与 normalizable coevaluation 失败。** 两者都不等于 sharp spatial tensor factorization。单区间整数 replica 的普适指数由 central charge 决定；Potts 的完整扇区配对及多区间数据不能由此省略。

进一步，若某个 regulated pure-state sewing ansatz 真正把 Schmidt rank 限制为 $\chi$，则对任意 $n>1$，达到 squared overlap $\geq 1-\epsilon$ 必须满足

$$
\boxed{\chi\geq (1-\epsilon)^{n/(n-1)}e^{S_n(\rho_A)}.}
$$

若单区间 $S_2=(c/4)\log(\ell/a)+O(1)$ 的渐近式在所讨论的 cutoff family 上成立，则 fixed accuracy 要求 $\chi=\Omega((\ell/a)^{c/4})$。这在 Ising 与 Potts 分别给指数 $1/8$ 与 $1/5$。**这里 $\chi$ 必须约束实际 Schmidt rank；有限个 RCFT primary/sector labels 并不满足这一前提，因为每个 sector 仍含无限 descendants。**

本文是独立的算子论与 replica 解析复核，不使用原有 gluing 命题作为前提。经主代理收窄范围，本轮不认证 arbitrary-surface/all-genus analytic sewing，不认证 lattice-to-continuum entropy convergence，也不做完整 defect/boundary classification。

**来源核实边界：** 此前对 Huang 的 convergence review 与 Huang–Kong full-field-algebra 文献的两次 `web_fetch` 均因端点连接失败，未取得全文；搜索摘要不计为全文核实。本文下面的算子论与 Schmidt-rank 命题给出自足证明；标准 Ising/Potts continuum spectrum 被明确列为模型输入。不能将本文写成一次完成了权威来源全文复核的综述。

## 1. 对象、归一化及 Hilbert sewing 的两个层次

取 full nonchiral unitary $1+1$D CFT，在 circumference $L>0$ 的圆上量子化，$v>0$，$\hbar=1$。约定 $c_L=c_R=c$；这里 Ising 的 $c=1/2$、Potts 的 $c=4/5$ 是每个 chiral copy 的 central charge，不是 $c_L+c_R$。

$$
H=\frac{2\pi v}{L}\left(L_0+\bar L_0-\frac{c}{12}\right),
\qquad E_0=-\frac{\pi vc}{6L},
\qquad K=H-E_0=\frac{2\pi v}{L}(L_0+\bar L_0)\geq0.
$$

假设 $H$ 是 self-adjoint。Euclidean collar 长度参数 $t>0$ 的传播为 $e^{-tH}=e^{-tE_0}e^{-tK}$。下文采用 $K$ 避免无关的真空能量因子。

### 命题 1：固定 Hilbert 态的配对，不需要 heat-trace 条件

若 $K\geq0$ self-adjoint，则对所有 $t\geq0$ 及 $\psi,\phi\in\mathcal H$，

$$
\langle\psi,e^{-tK}\phi\rangle
$$

存在。若 $K$ 有 orthonormal eigenbasis $|j\rangle$，$K|j\rangle=\kappa_j|j\rangle$，则

$$
\sum_j e^{-t\kappa_j}\langle\psi|j\rangle\langle j|\phi\rangle
$$

绝对收敛，因为

$$
\sum_j e^{-t\kappa_j}|\langle\psi|j\rangle\langle j|\phi\rangle|
\leq \|\psi\|\,\|\phi\|.
$$

这由 Cauchy–Schwarz 得出，甚至对 $t=0$ 成立。无纯点谱时用 spectral measure 表述同一命题。

**不能从此推出** $\operatorname{Tr}e^{-tK}<\infty$，更不能推出 local spatial algebra 是 type I。

### 命题 2：identity closed-loop trace 的必要充分条件

对固定 $t>0$，无插入 closed-loop spectral sewing 有限，当且仅当

$$
Z_K(t):=\operatorname{Tr}e^{-tK}<\infty.
$$

若要求任意正长度 collar 都可如此闭合，就必须要求上式对每个 $t>0$ 成立。

**反例：** semiboundedness、有限能级重数和 compact resolvent 都不单独保证此条件。在 $\ell^2(\mathbb N)$ 上取 $\kappa_j=\log(j+1)$，则

$$
Z_K(t)=\sum_{j\geq1}(j+1)^{-t},
$$

仅在 $t>1$ 收敛。反例的能量与时间单位在这里已取无量纲；恢复任意固定尺度不改变结论。

## 2. 正 collar：绝对收敛及结合律究竟证明了什么

假设 $Z_K(t)<\infty$ 对所有 $t>0$ 成立，$A_1,\ldots,A_m\in B(\mathcal H)$，且每条 collar 的 $t_i>0$。则

$$
\operatorname{Tr}\bigl(A_1e^{-t_1K}\cdots A_me^{-t_mK}\bigr)
$$

存在，其完整能级展开绝对收敛。将 cyclic indices 写为 $j_0=j_m$，展开项为

$$
\prod_{i=1}^m\langle j_{i-1}|A_i|j_i\rangle\,e^{-t_i\kappa_{j_i}}.
$$

利用 $|\langle j|A_i|k\rangle|\leq\|A_i\|$，得到足够但不追求最优的估计

$$
\sum_{j_1,\ldots,j_m}
\left|\prod_{i=1}^m\langle j_{i-1}|A_i|j_i\rangle\,e^{-t_i\kappa_{j_i}}\right|
\leq \prod_{i=1}^m\|A_i\|\prod_{i=1}^m Z_K(t_i)<\infty.
$$

因此可以按 Fubini/Tonelli 重排中间谱求和；bounded operator composition 本身也具有结合律。对无插入 cylinder，spectral calculus 直接给

$$
e^{-tH}e^{-uH}=e^{-(t+u)H}.
$$

这给出的是**已定义的 Hilbert/spectral contractions 的结合律**。以下额外结论没有被上述证明覆盖：

- 不同 pants decompositions 定义同一个 full-CFT correlator：需要相容的 OPE、crossing、sector pairing 及 conformal-block/sewing 数据。
- arbitrary surfaces 的全部 analytic sewing：需要各 surface amplitude 的定义域、convergence 与异常因子的处理。
- 点状 local fields 或任意 boundary states：这些通常不是 bounded operators 或 normalizable Hilbert vectors，不能不加检查地代入本命题。

一个可检验的扩大条件是：对有限能量本征态，所有需要的矩阵元有固定次数的多项式能量界，例如

$$
|\langle i|A|j\rangle|\leq C(1+\kappa_i+\kappa_j)^p.
$$

在每条 collar 正长度时，多项式可被较短 collar 的指数衰减吸收，再用 $Z_K(t/2)<\infty$ 控制。**这里该 energy bound 是额外假设，不是由 character convergence 自动得到。**

## 3. Ising 与 Potts 的 heat trace

### 3.1 模型输入与 character bound

采用标准 unitary minimal-model representations；full Hilbert space 是有限多个 chiral irreducible modules 的左右 tensor products，带有限 multiplicities。定义

$$
q=e^{-2\pi vt/L}\in(0,1),
\qquad \chi_h(q)=\operatorname{Tr}_{\mathcal V_h}q^{L_0-c/24}.
$$

每个 irreducible module 是对应 Verma module 的 quotient，故其 graded dimensions 不超过 partition numbers。因此

$$
0\leq\chi_h(q)\leq q^{h-c/24}\prod_{r=1}^{\infty}(1-q^r)^{-1}<\infty.
$$

Euler product 对每个 $0<q<1$ 收敛。有限个 module pairs 及 multiplicities 的总和随之有限，证明 $\operatorname{Tr}e^{-tH}<\infty$，从而也证明 $Z_K(t)<\infty$。此收敛证明不需要先调用 modular invariance。

### 3.2 Ising

$$
Z_{\mathrm{Ising}}(q,\bar q)
=|\chi_0|^2+|\chi_{1/2}|^2+|\chi_{1/16}|^2.
$$

这里以及下式的 $|\chi|^2$ 表示相应左右 character product；沿无 angular twist 的热圆柱，$q=\bar q\in(0,1)$。

### 3.3 Ferromagnetic three-state Potts

不能将 Potts 换成 $c=4/5$ 的 diagonal Virasoro A-series 模型。所需 invariant 是

$$
\boxed{
Z_{\mathrm{Potts}}
=|\chi_0+\chi_3|^2
+|\chi_{2/5}+\chi_{7/5}|^2
+2|\chi_{1/15}|^2
+2|\chi_{2/3}|^2.
}
$$

Virasoro 标签采用 $M(5,6)$ 约定

$$
h_{r,s}=\frac{(6r-5s)^2-1}{120},
\qquad 1\leq r\leq4,\quad1\leq s\leq5,
\qquad(r,s)\sim(5-r,6-s).
$$

上述六个权重可分别取 $(r,s)=(1,1),(1,5),(2,1),(2,5),(2,3),(1,3)$。

在 $W_3$ extended description 中有六个 sectors；vacuum 与 energy extended characters 分别是 $\chi_0+\chi_3$ 和 $\chi_{2/5}+\chi_{7/5}$。另两对 charged sectors 虽然各自具有相同的 Virasoro character，仍是不同 sectors。仅记 character 函数而删去 charged labels 会丢失 OPE/fusion 数据。

这里“有限 sectors”没有把 $\mathcal H$ 变成有限维：各非平凡 positive-energy module 都包含无限 descendant tower。

## 4. 零 collar：保留什么，失去什么

由 spectral theorem 及 dominated convergence，

$$
e^{-tK}\xrightarrow[t\downarrow0]{\mathrm{strong}}I.
$$

因而固定 Hilbert 态的 matrix elements 收敛；有限个 uniformly bounded operators 与这些 heat factors 的乘积也有相应 strong limits。

但对本处无限能谱的 CFT，$K$ unbounded，故每个 $t>0$ 都有

$$
\|e^{-tK}-I\|=\sup_{\kappa\in\operatorname{spec}K}(1-e^{-t\kappa})=1.
$$

不存在 operator-norm convergence。又因 $\dim\mathcal H=\infty$，

$$
Z_K(t)=\sum_j e^{-t\kappa_j}\uparrow\infty
\qquad(t\downarrow0).
$$

$I$ 不是 trace-class，故也不存在到 $I$ 的 trace-norm limit。

### 4.1 Sharp coevaluation 的直接反例

在 $\mathcal H\otimes\overline{\mathcal H}$ 中形式写

$$
|\Omega_t\rangle=\sum_j e^{-t\kappa_j}|j\rangle\otimes|\bar j\rangle.
$$

正 $t$ 时其 norm 满足

$$
\|\Omega_t\|^2=Z_K(2t)<\infty.
$$

但 $t=0$ 的形式和 $\sum_j|j\rangle\otimes|\bar j\rangle$ 不属于 Hilbert tensor product。这否定 normalizable sharp identity coevaluation，**不否定** identity operator 自身或固定态的完备性求和。

### 4.2 有 trace-class test 时的零极限仍成立

若 $B$ 是独立给定的 trace-class operator，则

$$
\|Be^{-tK}-B\|_1\to0,
\qquad\|e^{-tK}B-B\|_1\to0,
\qquad\operatorname{Tr}(Be^{-tK})\to\operatorname{Tr}B.
$$

证明：先对 finite-rank $B$ 用 strong convergence，再以 finite-rank operators 在 trace norm 下稠密及 $\|e^{-tK}\|\leq1$ 取极限。保留一条 fixed positive collar 也可以提供这种 trace-class 控制。

所以“zero collar 一律不成立”与“positive collar 的 trace theorem 自动延拓到 sharp cut”都不正确。本文的 Hilbert statements 本身也不建立 continuum spatial factorization；下面出现的 reduced density matrix 明确属于另外指定的 cutoff tensor-product realization。

## 5. 整数 replica：单区间普适指数

### 5.1 条件

取 infinite-line vacuum、单区间 $A=[u,v]$、长度 $\ell=v-u>0$。取 $n\in\mathbb Z$、$n\geq2$，由同一个 full CFT 的 $n$ copies 构造 cyclic replica twist；端点不插入额外 defect/interface。假设该 replicated full CFT 及相关 twist correlator 已定义，并满足通常的 stress-tensor Ward identity。

局部 uniformization 为

$$
z=\left(\frac{w-u}{w-v}\right)^{1/n}.
$$

Schwarzian 为

$$
\{z,w\}
=\frac{1-1/n^2}{2}
\frac{(u-v)^2}{(w-u)^2(w-v)^2}.
$$

对 $T_{\rm tot}=\sum_{a=1}^n T_a$，plane vacuum 及 transformation law 给

$$
\langle T_{\rm tot}(w)\rangle=\frac{nc}{12}\{z,w\}.
$$

与两个 primary endpoints 的 Ward identity 比较，得到

$$
h_n=\bar h_n=\frac{c}{24}\left(n-\frac1n\right),
\qquad
\Delta_n=h_n+\bar h_n=\frac{c}{12}\left(n-\frac1n\right).
$$

因此 normalized twist two-point function 的距离依赖为 $\ell^{-2\Delta_n}$。

### 5.2 从 twist ratio 到 regulated entropy

若所选 cutoff realization 的 replica partition ratio 确实由该 twist correlator 控制，UV cutoff 记为 $a$，则其 scaling form 是

$$
\operatorname{Tr}\rho_A^n
=C_n\left(\frac\ell a\right)^{-\frac c6(n-1/n)}[1+o(1)],
$$

因而

$$
S_n:=\frac{1}{1-n}\log\operatorname{Tr}\rho_A^n
=\frac c6\left(1+\frac1n\right)\log\frac\ell a+k_n+o(1),
\qquad k_n=\frac{\log C_n}{1-n}.
$$

对 Ising 与 Potts，logarithm coefficients 分别为

$$
\frac1{12}\left(1+\frac1n\right),
\qquad
\frac2{15}\left(1+\frac1n\right).
$$

这不是任意 finite-cutoff lattice model 的 exact identity。整数 replica 推导也没有自行证明 $n\to1$ analytic continuation 的唯一性。严格 continuum local algebra 的 state restriction 不能不加 tensor-product/cutoff 说明就写成 intrinsic density matrix $\rho_A$。

### 5.3 两区间与 Potts sector caveat

两区间需要四个 replica twist fields。Ward identities 不固定其 cross-ratio function。$n$-sheeted cover 的 genus 为 $n-1$；$n=2$ 已涉及 seed CFT 的 torus partition function，所以 Potts 的 non-diagonal invariant 在最初的非平凡例子就有作用。

一般 $n$、不同 factorization channels、或 defect/boundary insertions 还需要 spectrum、OPE coefficients、sector pairing 与指定的 defect/boundary data。单区间的 central-charge logarithm 不能替代这些输入。

## 6. 有限 Schmidt-rank approximation 的严格下界

### 定理 3：适用于任何 tensor-product pure state，不需要 CFT

设

$$
|\psi\rangle\in\mathcal H_A\otimes\mathcal H_B,
\qquad \|\psi\|=1,
\qquad\rho_A=\operatorname{Tr}_B|\psi\rangle\langle\psi|,
$$

其 Schmidt probabilities 按降序为 $\lambda_1\geq\lambda_2\geq\cdots\geq0$，$\sum_i\lambda_i=1$。可以取 finite-dimensional cutoff spaces，也可以取任何实际给定的 Hilbert tensor product。令 normalized approximant $|\phi\rangle$ 的 Schmidt rank 不超过正整数 $\chi$。对每个 real $n>1$，

$$
\boxed{
F:=|\langle\phi|\psi\rangle|^2
\leq\sum_{i=1}^{\chi}\lambda_i
\leq\chi^{1-1/n}\left(\operatorname{Tr}\rho_A^n\right)^{1/n}
=\chi^{(n-1)/n}e^{-(n-1)S_n/n}.
}
$$

不足 $\chi$ 个非零 eigenvalues 时补零。

**证明第一步。** 令 $P$ 投影到 $|\phi\rangle$ 的 $A$-side Schmidt support，$\operatorname{rank}P\leq\chi$。由于 $(P\otimes I)|\phi\rangle=|\phi\rangle$，Cauchy–Schwarz 与 Ky Fan variational bound 给

$$
F\leq\|(P\otimes I)|\psi\rangle\|^2
=\operatorname{Tr}(P\rho_A)
\leq\sum_{i=1}^{\chi}\lambda_i.
$$

截取 $|\psi\rangle$ 最大的 $\chi$ 个 Schmidt coefficients 并重新归一化，达到第一条不等式的最优值。因此它不是针对某一种 tensor-network parametrization 的估计。

**证明第二步。** 对 $p=n$、$q=n/(n-1)$ 使用 Hölder：

$$
\sum_{i=1}^{\chi}\lambda_i
\leq\left(\sum_{i=1}^{\chi}\lambda_i^n\right)^{1/n}
\left(\sum_{i=1}^{\chi}1^{n/(n-1)}\right)^{(n-1)/n}
\leq(\operatorname{Tr}\rho_A^n)^{1/n}\chi^{(n-1)/n}.
$$

对于固定 error tolerance $0\leq\epsilon<1$，若要求 $F\geq1-\epsilon$，移项得到必要条件

$$
\boxed{
\chi\geq(1-\epsilon)^{n/(n-1)}
(\operatorname{Tr}\rho_A^n)^{-1/(n-1)}
=(1-\epsilon)^{n/(n-1)}e^{S_n}.
}
$$

若需整数形式，对右端向上取整。这里只给必要条件，不保证存在饱和该下界的 ansatz；Hölder 一般不是 sharp。

### 6.1 $S_2$ 的 continuum 条件性推论

取同一 cutoff family 的 $r=\ell/a\to\infty$，假设

$$
S_2(\rho_A(r))=\frac c4\log r+k_2+o(1),
$$

其中 $k_2$ 有限并且不随 $r$ 漂移。更弱地，以下 rank 下界只需要 $S_2\geq(c/4)\log r-C$，某个 uniform constant $C$。

定理 3 给

$$
\chi(r)\geq(1-\epsilon)^2e^{k_2+o(1)}r^{c/4}.
$$

因此 fixed accuracy 的必要增长为

| CFT | $c$ | 必要 Schmidt-rank 增长 |
|---|---:|---:|
| Ising | $1/2$ | $\chi=\Omega(r^{1/8})$ |
| Ferromagnetic Potts | $4/5$ | $\chi=\Omega(r^{1/5})$ |

事实上对 fixed $\chi$，由同一不等式直接得

$$
F\leq\sqrt\chi\,e^{-S_2/2}
=\sqrt\chi\,e^{-k_2/2+o(1)}r^{-c/8}\longrightarrow0.
$$

这是 **squared overlap** 的上界，不是 overlap amplitude 的上界。Ising 与 Potts 的此上界幂指数分别为 $1/16$ 与 $1/10$。

### 6.2 对“fixed-$\chi$ continuum sewing”的准确含义

上述推论排除以下同时成立的主张：

1. 在同一 cutoff bipartition $A|B$ 中比较 normalized pure target 与 normalized pure sewn state；
2. sewing factorization 真正强制 sewn state 的 Schmidt rank 不超过与 cutoff 无关的 $\chi$；
3. target 的 $S_2$ 确实按上式发散；
4. 希望在 $a\to0$ 时保持任意固定 positive squared-overlap lower bound，特别是 $F\geq1-\epsilon$。

不能直接推出的结论：

- 若每个 interval endpoint 的 tensor-network bond dimension 是 $D$，有两个跨 bipartition 的 bonds，则通常只有 rank $\leq D^2$；这时必要条件为 $D\geq(1-\epsilon)e^{S_2/2}=\Omega(r^{c/8})$，不能将 $D$ 错认成 $\chi$。
- 若 $\chi$ 只表示 RCFT primary/defect/sector label 数，而各 sector 保留无限 descendant Hilbert spaces，则没有有限 Schmidt-rank 假设，本定理不构成反例。
- 此结论不排除较弱的 weak/local-observable convergence，也不排除 cutoff-dependent rank 增长；它确实排除所述 pure states 在 fixed rank 下的 fidelity/Hilbert-norm approximation。
- 此结论不证明某个 lattice model 的 $S_2$ 渐近式；该 lattice-to-continuum 输入必须另行建立。
- 对没有先给定 cutoff tensor product 的 intrinsic continuum local algebra，不能把本文 $\rho_A$ 和 Schmidt rank 直接移植过去。

### 6.3 检验与一个必要的反例

**平坦谱检验。** 对 rank-$R$ maximally entangled state，$\lambda_i=1/R$，$S_n=\log R$。最优 rank-$\chi$ squared overlap 是 $\min(\chi/R,1)$，与上述必要下界相容；$\epsilon=0$ 时给出 $\chi\geq R$。

**仅 $S_1$ 发散不够。** 固定 $0<\delta<1$，取

$$
\lambda_1=1-\delta,
\qquad\lambda_2=\cdots=\lambda_N=\frac\delta{N-1}.
$$

当 $N\to\infty$，

$$
S_1=h(\delta)+\delta\log(N-1)\to\infty,
\qquad
S_2\to-2\log(1-\delta)<\infty,
$$

这里 $h(\delta)=-\delta\log\delta-(1-\delta)\log(1-\delta)$。但 rank-one approximant 始终可取得 $F=1-\delta$。所以不能把本节的 $n>1$ Rényi 条件偷偷替换为“von Neumann entropy 发散”。

## 7. 验证记录及未解决处

**Verified:**

- 解析：heat-trace 条件、绝对收敛界、strong/trace-norm 区别、sharp coevaluation 反例；Hölder–Schmidt 下界及其 $S_2$ 推论均给出自足证明。
- Mathematica：Schwarzian 与目标表达式之差为零；$S_n$ coefficient 及一般 $n$ fidelity exponent 的代数 residual 为零；$c=1/2,4/5$ 的 $S_2$ rank/fidelity exponents 分别为 $(1/8,1/16)$、$(1/5,1/10)$。
- 有限谱检查：$(1)$、$(1/2,1/2)$、$(1/2,1/3,1/6)$、$(3/5,1/5,1/10,1/10)$ 上，对所有可取 $\chi$ 及 $n=2,3,4$ 检验 Hölder 上界均通过。有限检查不是一般定理的替代；一般证明在第 6 节。

**Assumptions:**

- Standard full Ising/Potts circle spectra 是模型输入；$v,L>0$、$\hbar=1$、$c_L=c_R=c$。
- General positive-collar theorem 的 insertions bounded，或另给充分 energy bounds。
- Replica coefficient 使用指定 vacuum geometry、整数 replicas、Ward identity；与 cutoff density matrix 的对应以及 uniform $S_2$ asymptotic 是另外输入。
- Schmidt argument 使用实际 Hilbert tensor-product pure states 及 squared overlap。

**Not verified:**

- 没有完成来源全文抓取和版本／定理页码核实；不声称已取得 authoritative source certification。
- 没有证明 arbitrary-surface/all-genus analytic sewing、一般 unbounded vertex insertion 的 bounds、或所有不同 decomposition 的 full-CFT coherence。
- 没有证明 Ising 或 Potts lattice replica partition ratios、entropies、或 defect data 的完整 continuum convergence；Potts 扇区谱和 Virasoro invariant 也没有在本轮从 lattice 推导。
- 没有证明 regulator-free sharp spatial tensor factorization，也没有把 operator/correlator sewing 与这类 factorization 混同。
