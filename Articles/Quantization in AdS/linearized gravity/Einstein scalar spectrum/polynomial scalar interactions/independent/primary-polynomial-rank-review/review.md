# Independent primary-polynomial rank verification

## Result: exact theorem, not a generic-parameter claim

Let $N\geq4$, $m,J\in\mathbb Z_{\geq0}$ and $\Delta>1$. Define

$$
h_a=\frac1{a!(\Delta)_a},\qquad
H_a(t_1,\ldots,t_N)=\sum_{n_1+\cdots+n_N=a}\prod_{i=1}^N h_{n_i}t_i^{n_i},
$$

and, on $\sum_i x_i=\sum_i y_i=0$ with $t_i=x_i y_i$,

$$
F_r=H_{m-r}(t)\sum_{i=1}^N y_i^Jt_i^r,\qquad 0\leq r\leq m.
$$

All zero exponents denote the constant polynomial $1$, including at zero. Then

$$
\boxed{
\dim_{\mathbb C}\operatorname{span}\{F_0,\ldots,F_m\}
=\begin{cases}
1,&J=0,\ m=0,\\
m,&J=0,\ m\geq1,\\
m,&J=1,\\
m+1,&J\geq2.
\end{cases}}
$$

The complete relations are:

- $J=1$: only $F_0=0$.
- $J\geq2$: no nonzero constant-coefficient relation.
- $J=0$, $m\geq1$: exactly one relation,
  $$
  \frac mN F_0-\sum_{r=1}^m a_rF_r=0,\qquad
  a_r=r[z^r]\log{}_0F_1(;\Delta;z).
  $$

For explicit coefficients,

$$
a_1=\frac1\Delta,\qquad
a_r=-\frac{\sum_{i=1}^{r-1}a_i a_{r-i}}{\Delta+r-1}\quad(r\geq2).
$$

Thus $a_2=-1/[\Delta^2(\Delta+1)]$ and $a_3=2/[\Delta^3(\Delta+1)(\Delta+2)]$. For $\Delta>1$, $(-1)^{r-1}a_r>0$ by this recurrence, so all displayed coefficients are nonzero. Nonvanishing of these log coefficients is not needed for the rank proof.

## 1. A legitimate independent-$t$ specialization

No irreducibility, radical-ideal, or generic-hypersurface assertion is required.

For arbitrary $u,v,w\in\mathbb C$ and $a,b\in\mathbb C$ with $ab(a+b)\neq0$, set

$$
y=(a,b,-a-b,0,\ldots,0),
$$

$$
x=\left(\frac ua,\frac vb,-\frac w{a+b},
-\frac ua-\frac vb+\frac w{a+b},0,\ldots,0\right).
$$

There are four explicitly displayed $x$ entries. Both required sums vanish, and

$$
t=(u,v,w,0,\ldots,0).
$$

The variables $u,v,w$ are independent of one another and of $a,b$. The fourth site absorbs the $x$-sum constraint while contributing $t_4=0$ because $y_4=0$. This is precisely why four sites suffice.

A polynomial identity on the original constrained space therefore restricts to an identity in $u,v,w,a,b$ for $ab(a+b)\neq0$. After this substitution the expressions used below contain no denominators. Since that set of $(a,b)$ is Zariski dense, they are polynomial identities in all five independent variables.

This argument does not impose $\sum_i t_i/y_i=0$ at zero $y_i$. That expression belongs only to the all-nonzero-$y$ chart and is intentionally never used here. Nor is dominance of the full map $(x,y)\mapsto(t_1,\ldots,t_N)$ asserted or needed.

Write $H_a^{(k)}$ for the same weighted complete polynomial in $k$ variables. Under the specialization, $H_a^{(N)}=H_a^{(3)}(u,v,w)$.

## 2. Independence for $J\geq1$

Suppose $\sum_{r=0}^m c_r F_r=0$ with constants $c_r\in\mathbb C$, and define a polynomial in an auxiliary variable $z$,

$$
Q(z)=\sum_{r=0}^m c_r H_{m-r}^{(3)}(u,v,w)z^r.
$$

The restriction from Section 1 gives

$$
a^JQ(u)+b^JQ(v)+(-a-b)^JQ(w)=0.
$$

### $J\geq2$

The three polynomials $a^J,b^J,(-a-b)^J$ are linearly independent, also over the coefficient ring $\mathbb C[u,v,w]$: the coefficient of $a^{J-1}b$ isolates $(-1)^J JQ(w)$, after which the two pure powers isolate $Q(u)$ and $Q(v)$. Thus $Q(u)=0$.

If $s$ is the smallest index with $c_s\neq0$, the coefficient of $u^s$ in $Q(u)$ is

$$
c_sH_{m-s}^{(2)}(v,w)\neq0,
$$

because its coefficient of $v^{m-s}$ is $c_s h_{m-s}$ and every $h_k$ is nonzero. Contradiction. All $c_r$ vanish.

### $J=1$

The coefficients of $a$ and $b$ instead imply $Q(u)=Q(v)=Q(w)$. Set $v=0$ in $Q(u)-Q(v)=0$:

$$
\sum_{r=1}^m c_r H_{m-r}^{(2)}(u,w)u^r=0.
$$

If $s\geq1$ is the smallest nonzero coefficient, the coefficient of $u^s$ is $c_s h_{m-s}w^{m-s}\neq0$. Thus all $c_r$ for $r\geq1$ vanish. Conversely $F_0=H_m\sum_i y_i=0$ identically. This also covers $m=0$, where the rank is zero.

## 3. A general three-variable independence lemma

**Lemma.** Let $f(z)=\sum_{k\geq0}h_k z^k\in\mathbb C[[z]]$ satisfy $h_0=1$ and $h_k\neq0$. Define

$$
\prod_{i=1}^q f(t_i z)=\sum_{n\geq0}H_n^{(q)}(t)z^n,
\qquad p_r^{(q)}(t)=\sum_{i=1}^q t_i^r.
$$

For every $m\geq1$, the $m$ polynomials

$$
p_r^{(3)}H_{m-r}^{(3)},\qquad 1\leq r\leq m,
$$

are linearly independent. It is enough that the coefficients used through degree $m$ be defined and nonzero: the entire argument can be performed with $f$ modulo $z^{m+1}$, and an arbitrary formal completion beyond this order.

**Proof.** Put $a_r=r[z^r]\log f(z)$. Logarithmic differentiation gives, for every number of variables,

$$
nH_n^{(q)}=\sum_{r=1}^n a_rp_r^{(q)}H_{n-r}^{(q)},\qquad a_1=h_1.
\tag{1}
$$

Suppose $\sum_{r=1}^m c_rp_r^{(3)}H_{m-r}^{(3)}=0$. The case $m=1$ is immediate. For $m\geq2$, take the coefficient of $w^k$ with $n=m-k$. Expanding $H^{(3)}$ in $w$ and separating the $w^r$ summand of $p_r^{(3)}$ yields

$$
\sum_{r=1}^{n}c_rp_r^{(2)}(u,v)H_{n-r}^{(2)}(u,v)
+\alpha_k H_n^{(2)}(u,v)=0,
\tag{2}
$$

where

$$
\alpha_k=\frac{\sum_{r=1}^{k}c_rh_{k-r}}{h_k},\qquad\alpha_0=0.
\tag{3}
$$

Set $\lambda=c_1/h_1$. Induct on $n=2,\ldots,m$. Assuming $c_r=\lambda a_r$ for $r<n$, subtract $\lambda$ times (1) from (2), with $k=m-n$, to obtain

$$
(\alpha_{m-n}+\lambda n)H_n^{(2)}
+(c_n-\lambda a_n)p_n^{(2)}=0.
\tag{4}
$$

For $n\geq2$, $H_n^{(2)}$ and $p_n^{(2)}=u^n+v^n$ are independent: the former has nonzero $u^{n-1}v$ coefficient $h_{n-1}h_1$, while the latter has none. Thus $c_n=\lambda a_n$ and $\alpha_{m-n}=-\lambda n$. At $n=m$, $\alpha_0=0$ forces $\lambda=0$. Consequently all $c_r=0$. $\square$

No positivity assumption, special-function zero theorem, or nonvanishing assumption on the $a_r$ enters this lemma.

## 4. The case $J=0$

Here $F_0=NH_m$ and $F_r=p_rH_{m-r}$ for $r\geq1$. Apply (1) with $f={}_0F_1(;\Delta;z)$ to get

$$
\frac mN F_0=\sum_{r=1}^m a_rF_r.
$$

For $m\geq1$ this supplies one relation. Conversely, any relation among $F_1,\ldots,F_m$ restricts under Section 1 to a relation among the three-variable polynomials of the lemma. Hence those $m$ functions are independent. The relation displayed above is therefore the entire kernel. For $m=0$, $F_0=N\neq0$.

The recurrence for $a_r$ follows directly from $zf''+\Delta f'-f=0$: set $g=f'/f=\sum_{r\geq1}a_rz^{r-1}$ and compare coefficients in $z(g'+g^2)+\Delta g-1=0$.

## 5. Low-$N$ checks and genuine exceptions

### Two sites

For $N=2$, write $x=(u,-u)$, $y=(v,-v)$, so $t_1=t_2=uv$. Then

$$
F_r=[1+(-1)^J]\left(\sum_{k=0}^{m-r}h_kh_{m-r-k}\right)u^m v^{m+J}.
$$

For $\Delta>1$ the sum in parentheses is positive. The rank is therefore $0$ for odd $J$ and $1$ for even $J$, for every $m$.

### Three sites: a concrete failure of the four-site answer

For $N=3$, $m=1$, $J=2$, the rank is $1$, not $2$:

$$
F_1=\frac\Delta2 F_0.
$$

Indeed, $\sum_i y_i=0$ implies

$$
y_i^3=\frac12\left(\sum_jy_j^2\right)y_i+
\frac13\sum_j y_j^3.
$$

Multiply by $x_i$ and sum; $\sum_i x_i=0$ removes the last term. Since $H_1=\sum_i x_iy_i/\Delta$, the claimed relation follows. $F_0$ is nonzero, for example at $x=y=(1,-1,0)$.

The $J=0$ theorem does extend to $N=3$. To justify independent $t$ here without an irreducibility claim, take $y=(1,s,-1-s)$. For any $t_1t_2t_3\neq0$, the equation $\sum_i t_i/y_i=0$ is equivalent to

$$
t_1s^2+(t_1+t_2-t_3)s+t_2=0.
$$

It has a complex root, and neither $0$ nor $-1$ is a root because $t_2,t_3\neq0$. Thus every point of $(\mathbb C^*)^3$ is realized by setting $x_i=t_i/y_i$. This proves the needed density directly, and the lemma applies. A full classification for $N=3$, $J\geq1$ is not claimed here.

## 6. Exact computational checks

The independent direct construction in [verify_rank.sage.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/verify_rank.sage.py>) eliminates $x_N=-\sum_{i<N}x_i$ and $y_N=-\sum_{i<N}y_i$ in the **original** expressions, expands in the resulting $2N-2$ independent polynomial variables, and computes exact coefficient-matrix ranks. It does not use the proof's boundary specialization to compute these ranks.

[exact_checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/exact_checks.json>) records a successful SageMath 10.9 run:

- **163 exact rational-parameter rank checks:** $N=4$, $0\leq m\leq4$, $0\leq J\leq6$, $\Delta\in\{3/2,2,7/3,5\}$; also $N=4$, $m=5,6$, $0\leq J\leq3$, $\Delta=2$; and $N=5$, $0\leq m\leq2$, $0\leq J\leq4$, $\Delta=3/2$.
- **16 direct symbolic-$\Delta$ generic-rank checks:** $N=4$, $0\leq m,J\leq3$ over $\mathbb Q(\Delta)$.
- Direct exact verification of the $J=0$ relation in the tested degrees, and of the symbolic three-site exception $F_1=(\Delta/2)F_0$.
- The log-derivative recurrence checked against the formal logarithm through $r=12$ over $\mathbb Q(\Delta)$.

For example, at $N=4$, $\Delta=2$:

| $m$ | rank, $J=0$ | rank, $J=1$ | rank, each $J\geq2$ tested |
|---:|---:|---:|---:|
| 0 | 1 | 0 | 1 |
| 1 | 1 | 1 | 2 |
| 2 | 2 | 2 | 3 |
| 3 | 3 | 3 | 4 |
| 4 | 4 | 4 | 5 |
| 5 | 5 | 5 | 6 |
| 6 | 6 | 6 | 7 |

The symbolic field computations are generic-parameter checks only; **the all-$\Delta$ statement comes from the analytic proof**, which only divides by the explicitly nonzero $h_k$, $h_1$, and positive integers. An initial tool response tried to serialize the entire `runpy` namespace and hit an unrelated missing optional `sagemath_giac` import after the script had completed; rerunning with the namespace retained internally returned `ok=true`, and all checks passed.

## Scope and remaining questions

- **Proved:** the complete rank and all linear relations for every $N\geq4$, $m,J\geq0$, and every $\Delta>1$; the two-site formula; the stated three-site exception; and the $J=0$ extension to three sites.
- **Stronger parameter domain:** for fixed $m$, the same $N\geq4$ proof works for complex $\Delta\notin\{0,-1,\ldots,1-m\}$, with the set empty for $m=0$. These are precisely the parameter values at which the coefficients through degree $m$ are defined and nonzero. Positivity is used only in the stated two-site simplification.
- **Not proved here:** a full rank classification for $N=3$, $J\geq1$; any extension of these polynomial ranks to a physical operator rank requiring an additional injectivity or completeness statement beyond the polynomial problem posed.
- No other new research branches or candidate reports were read. No source files outside this review directory were edited. This is an independent algebraic review; no further subagent could be launched at the assigned delegation-depth limit.
