# 1+1 Yang–Mills 对照：同一 boundary complex 不固定 dynamics

**结论。** Trace/response、相对 gauge policy 和 reopening 不是 CS 独有现象。Abelian YM2 有同样的 action release，但 coupling 决定的 evolution 不包含在 bare canonical BFV constraint complex 中。这个对照不把 YM2 宣称为有传播 bulk 波的模型，也不证明任意非阿贝尔 nonlinear BV–BFV gluing。

## 1. 独立 action 与 response

取有限 interval $[a,b]$，orientation $dt\wedge dx$，无物理 defect，$e^2>0$。采用与本目录 CS 相同的 Abelian convention $A\mapsto A+d\lambda$：
$$
S=\int dt\,dx\left[E(\partial_tA_x-\partial_xA_t)-\frac{e^2}{2}E^2\right].
\tag{1.1}
$$
这是旧 [YM2 笔记](<../04-observable-algebra/models/gauge/1+1 Yang-Mills classical observable algebra gluing.md>) 的 Abelian specialization；该笔记的非阿贝尔 gauge parameter 和 holonomy sign convention 另有选择，下面直接从 (1.1) 定义所有量。

变化给
$$
\partial_xE=0,\qquad\dot E=0,\qquad
\dot A_x-\partial_xA_t=e^2E,
\tag{1.2}
$$
$$
\Theta=\int_a^b E\,\delta A_xdx,\quad\Omega=\delta\Theta,
\quad
\Lambda=\int dt\,[E(a)\delta q_a-E(b)\delta q_b],
\quad q_z=A_t(t,z).
\tag{1.3}
$$
所以 $q$ 的 oriented response 是 $-n_xE$。在切点 $c$ 识别两侧 $q_c$ 并 release，得到 $E_1(c)=E_2(c)$。把所有 histories先固定为零而删掉 (1.3)，不能从剩余固定源解自动恢复这个 variational step。

Full regional object 保留全部 $(A_x,E,A_t)$、based gauge maps、source histories 和 (1.2)。因为 $A_t$ 的内部延拓任意，关系本来就不是一个唯一 representative 的图。

## 2. Canonical BFV 的显式 Abelian 检验

在一个 Cauchy interval，增加 ghost $c(x)$ 和其 odd conjugate momentum $\mathcal P(x)$，ghost numbers为 $1,-1$。用 canonical graded brackets
$$
\{A_x(x),E(y)\}=\delta(x-y),\qquad
\{c(x),\mathcal P(y)\}_{\rm gr}=\delta(x-y).
$$
Proper ghost满足 $c(a)=c(b)=0$。在此域，BRST charge取
$$
\mathcal Q=\int_a^b E\,\partial_xc\,dx
=-\int_a^b c\,\partial_xE\,dx,
\qquad QF=\{F,\mathcal Q\}_{\rm gr}.
\tag{2.1}
$$
这里采用 canonical Poisson generator convention；它与 abstract equation $\iota_Q\omega=\delta S_\Sigma$ 的 Hamiltonian符号通过相应 graded convention转换，不把两个同名符号混用。

逐项 functional differentiation 给
$$
QA_x=\partial_xc,\quad QE=0,\quad Qc=0,\quad
Q\mathcal P=-\partial_xE.
\tag{2.2}
$$
故 $Q^2=0$ 且 $\{\mathcal Q,\mathcal Q\}_{\rm gr}=0$；它解析地记录 Gauss law及其 proper action。端点非零参数的 $[Ec]_a^b$ 不能丢，它是保留的 electric charge。两片单独 construction不能先把这些 charges作 gauge quotient。

Coupling $e^2$ 不出现在 (2.1) 中，而出现在 (1.1) 的 Hamiltonian与 EOM 中。裸 boundary constraint complex因此不是完整 physical regional object。

## 3. 完整场上的装配与派生坐标

在 Gauss locus 记 $p=E$。定义 actual compact holonomy
$$
U=\exp\left(i\int_a^b A_xdx\right).
$$
在一个局部角坐标 $U=e^{iu}$ 中，$\Theta=p\delta u$；不选择全圆 global logarithm，也不把 full field space替换为 $T^*U(1)$。$p,U$ 只是 full fields上的 invariant coordinates；相同 $p,U$ 的 based-gauge相关 fields全部留着。

二片 matched locus满足 $p_1=p_2=p$，且
$$
U=U_2U_1,\qquad
(\Theta_1+\Theta_2)|_{p_1=p_2}=p\delta(u_1+u_2).
\tag{3.1}
$$
Cut frame作用 $u_1\mapsto u_1+\chi,u_2\mapsto u_2-\chi$。预辛 kernel包含并保留向量 $(1,-1,0)$；regional interior based directions也仍在 full fields中。(3.1) 的有限维坐标矩阵已独立检验，不能由该矩阵宣称全部 continuum domains 已被计算机验证。

对 smooth raw fields，spatial connection及 gauge maps用共同 collar atlas作 smooth assembly；若只给 holonomies，则要保留 choice of smooth connection和相应 based arrows。所有 $U$ 可以由 smooth path产生，但不存在一个由全圆 holonomy连续选取 based path的 global section：那将给 $S^1$ 的收缩。这个障碍没有通过选择对数消失。

真实外端固定 $q_a,q_b$ 时，
$$
\dot u=e^2(b-a)p+q_b-q_a,
\qquad H[q]=\frac{e^2(b-a)}2p^2+(q_b-q_a)p.
\tag{3.2}
$$
对同一 coupling的二片，内部 $q_c$ 项与 response相消，长度相加。三个 interval的组合是实际 $U_3U_2U_1$ 与同一 $p$；结合律在 source 上直接成立。这里未执行 field reduction。

## 4. 对字典的两次攻击

**同 boundary BFV，不同 dynamics。** 取 $e_1^2\ne e_2^2$，保持相同 boundary pair、Gauss complex和 $p\ne0$。则 $\dot u_1-\dot u_2=(e_1^2-e_2^2)(b-a)p$。所以从 BFV boundary space或其 cohomology不能恢复 coupling、source evolution和 closure。Full BV bulk action仍能区分两者；这不是对 BV–BFV完整数据的反例。

**非阿贝尔 self-sewing 不是 framed interval 的 regular continuation。** 对 $SU(2)$ circle的派生 holonomy/flux资料，约束是
$$
\mu(U,p)=\operatorname{Ad}_Up-p=0.
$$
在 $p=0$，$d\mu(\delta U,\delta p)=(\operatorname{Ad}_U-1)\delta p$。非中央 $U$ 的秩为 $2$；$U=\pm1$ 时秩为 $0$，stabilizer也跳变。只在 regular stratum写出的 reduced dimension不可能覆盖该点。正确反应是保留全部 strata和 tangent/obstruction information，而不是删除 singular solutions以维持一个整齐的 quotient manifold。

**Verified:** 一阶 action 的变分证明、Abelian BFV nilpotency证明、局部角坐标的预辛 pullback/剩余 kernel、Hamiltonian相加和 $SU(2)$ rank-jump矩阵检查。

**Assumptions:** source-free Abelian YM2，有限光滑 intervals，相同 coupling，保留外端 frames；compact holonomy只在局部使用角坐标。$SU(2)$ 部分仅为明确的 singularity反例。

**Not verified:** 完整非阿贝尔 bulk/corner BV comparison，circle observable complex的全部同调，任何 quantum pushforward。YM2 不检验有传播 gauge modes的高维情形。
