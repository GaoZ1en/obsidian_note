# Multivertex extrapolation and nonlinear source matching in conformal AdS₄

## Abstract

For the standard conformally coupled scalar with $\lambda\varphi^4/4!$ in Euclidean $\mathrm{AdS}_4$, we compute the connected six-point tree with two bulk vertices, including an exact finite-radial kernel and its boundary limit. The answer contains ten exchange channels with kernel $[(s_A+s_B)(s_A+q)(s_B+q)]^{-1}$. A uniform majorant proves convergence against arbitrary Schwartz momentum tests, including exceptional zero internal momentum. More generally, the four-dimensional Sobolev inequality makes every fixed quartic tree a continuous multilinear functional of the external Poisson responses; this proves the extrapolate limit for every fixed tree topology, not only contact diagrams. The construction also gives a controlled small-source analytic classical generating functional. A thin-slab calculation derives a nonlinear local source redefinition through second order in the radial position. This is a derivative expansion, not an unrestricted exact finite-radius change of Dirichlet sources: even the free exact map can leave the Schwartz source space.

## 1. Observable and conformal reduction

We use the geometry, bulk-source sign and conformal slice source measure of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>). The single-vertex construction and its normalization were established in [the contact-diagram report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree.md>). Here

$$
d=3,\quad m^2\ell^2=-2,\quad \nu=\tfrac12,\quad\Delta=2,
\qquad \varphi(u,x)=\frac u\ell\chi(u,x).
\tag{1.1}
$$

The source-free fast condition is Dirichlet for $\chi$ at $u=0$. With the reference's completion, the conformal transformation leaves a boundary term $\chi(\varepsilon)^2/(4\varepsilon)$, which vanishes on this fast domain at fixed insertion radius. The interior action becomes

$$
S[\chi]=\int_{\mathbb H^4}d^4X\left[
 \frac12(\partial\chi)^2+\frac\lambda{4!}\chi^4\right],
\qquad \mathbb H^4=\{u>0,\ x\in\mathbb R^3\}.
\tag{1.2}
$$

Coordinates and $\ell$ have length units, $[\chi]=[\varphi]=L^{-1}$ and $\lambda$ is dimensionless. We keep the Poincaré Euclidean vacuum, regularity at infinity, and the normalized insertion functional

$$
\mathcal O_z(x)=\frac\ell z\chi(z,x),\qquad
W_z[j]=\log\left\langle e^{\int d^3x\,j\mathcal O_z}\right\rangle.
\tag{1.3}
$$

The insertion is first radially mollified exactly as in the reference. All formulas below concern its paired thin-layer limit. There are no independent slice oscillators.

Write $k=|\mathbf k|$ and $\int_k=\int d^3k/(2\pi)^3$. The flat Dirichlet covariance and external response are

$$
g_D(u,v;k)=\frac{e^{-k|u-v|}-e^{-k(u+v)}}{2k},\qquad
p_z(u;k)=\frac{g_D(z,u;k)}z,
\tag{1.4}
$$

$$
f_z[j](u,k)=\ell p_z(u;k)j(k).
\tag{1.5}
$$

At $k=0$, the continuous definitions are $g_D(u,v;0)=\min(u,v)$ and $p_z(u;0)=\min(u,z)/z$. This $f_z$ is the classical free $\chi$ response to the sheet source $(\ell/z)j\delta(u-z)$, not a prescribed value at that slice.

All statements in §§2–5 are tree level. At $V$ quartic vertices a connected tree has $V-1$ internal lines and $n=2V+2$ external legs. Loop contributions at the same power of $\lambda$ are not included.

## 2. The connected six-point tree

Expanding the normalized connected functional to two vertices, retaining one contraction between them, gives

$$
W_{z,\mathrm{tree}}^{[6]}[j]
=\frac{\lambda^2}{72}
\int_{\mathbb H^4}dX\int_{\mathbb H^4}dY\,
 f_z[j](X)^3G_D(X,Y)f_z[j](Y)^3.
\tag{2.1}
$$

The coefficient is $4^2/[2(4!)^2]=1/72$. It is positive because there are two Euclidean vertices. Six source derivatives give ten unordered partitions $A|B$ into triples. For each channel put

$$
s=\sum_{i\in A}k_i,\qquad t=\sum_{i\in B}k_i,\qquad
q=\left|\sum_{i\in A}\mathbf k_i\right|,
\qquad \sum_{i=1}^6\mathbf k_i=0.
\tag{2.2}
$$

Physical Euclidean momenta satisfy $0\le q\le\min(s,t)$. Stripping only the total momentum delta function, not external covariances,

$$
\boxed{
\mathcal C_z^{(6)}(k_i)=\lambda^2\ell^6
 \sum_{A|B}\mathcal I_z(A,B;q),
}
\tag{2.3}
$$

$$
\mathcal I_z(A,B;q)=\int_0^\infty du\,dv\,
 \prod_{i\in A}p_z(u;k_i)\,g_D(u,v;q)\,
 \prod_{i\in B}p_z(v;k_i).
\tag{2.4}
$$

The factor $\ell^6$ comes from the six insertions; the internal propagator is the unrescaled flat $G_D$. In the original AdS variables the two vertex measures and every conformal factor cancel to exactly this expression.

### 2.1 Exact finite-radius kernel

Let

$$
C_A(z)=\prod_{i\in A}\frac{\sinh(k_i z)}{k_i z},\qquad
L_A(u)=e^{-sz}\prod_{i\in A}\frac{\sinh(k_i u)}{k_i z}\quad(0\le u\le z),
\tag{2.5}
$$

and similarly for $B$. Ratios are defined by continuity. Define two compact integrals

$$
X_A=\int_0^zdu\,L_A(u)\frac{\sinh(qu)}q,\qquad
Y_{AB}=\int_0^zdu\,dv\,L_A(u)g_D(u,v;q)L_B(v).
\tag{2.6}
$$

Splitting both vertex radii at $z$ yields

$$
\boxed{\begin{aligned}
\mathcal I_z={}&C_AC_Be^{-(s+t)z}
 \frac{\displaystyle\frac1{s+t}+\frac{1-e^{-2qz}}{2q}}
      {(s+q)(t+q)}\\
&+\frac{C_Be^{-(t+q)z}}{t+q}X_A
 +\frac{C_Ae^{-(s+q)z}}{s+q}X_B+Y_{AB}.
\end{aligned}}
\tag{2.7}
$$

All four terms are nonnegative. The first follows from the exact shift identity

$$
g_D(z+r,z+w;q)=g_D(r,w;q)
 +e^{-q(r+w)}\frac{1-e^{-2qz}}{2q}.
\tag{2.8}
$$

The other three correspond to one or both vertices lying inside the insertion radius. They must not be dropped when discussing finite-radial corrections.

For an explicitly finite algebraic evaluation, introduce the entire divided differences

$$
E_z(a)=\frac{e^{az}-1}{a},\qquad
T_z(a,b)=\frac{E_z(a+b)-E_z(a)}b,
\tag{2.9}
$$

with derivatives at vanishing arguments, and

$$
B_z(a,b;q)=\frac1{2q}\bigl[
T_z(b-q,a+q)-T_z(b-q,a-q)
+T_z(a-q,b+q)-T_z(a-q,b-q)\bigr].
\tag{2.10}
$$

Here $B_z=\int_0^zdu\,dv\,e^{au+bv}g_D(u,v;q)$ and is continuous at $q=0$. For signs $\sigma_i=\pm1$ on $A$, put $a_\sigma=\sum_{A}\sigma_i k_i$, $\epsilon_\sigma=\prod_A\sigma_i$, and analogously $b_\tau,\epsilon_\tau$. Then

$$
X_A=\frac{e^{-sz}}{16qz^3\prod_Ak_i}
 \sum_\sigma\epsilon_\sigma
 \bigl[E_z(a_\sigma+q)-E_z(a_\sigma-q)\bigr],
\tag{2.11}
$$

$$
Y_{AB}=\frac{e^{-(s+t)z}}{64z^6\prod_ik_i}
 \sum_{\sigma,\tau}\epsilon_\sigma\epsilon_\tau
 B_z(a_\sigma,b_\tau;q).
\tag{2.12}
$$

These formulas have removable singularities at zero signed sums and zero individual momenta. Near such points, the nonnegative compact integrals or confluent divided differences are numerically preferable to subtracting large exponentials. For large real momenta, combine $C_Ae^{-sz}$ as $\prod_{i\in A}h(k_i z)$, with $h(x)=(1-e^{-2x})/(2x)$, before numerical evaluation; evaluating a large hyperbolic sine and a tiny exponential separately can overflow.

### 2.2 Boundary kernel, gluing and finite-radius correction

The Laplace transform of the internal line is

$$
\int_0^\infty dv\,g_D(u,v;q)e^{-tv}
=\frac{e^{-tu}-e^{-qu}}{q^2-t^2}.
\tag{2.13}
$$

The coincident values $t=q$ and $q=0$ are interpreted by their continuous limits. A second Laplace transform gives

$$
\boxed{
\mathcal I_0(s,t,q)=\frac1{(s+t)(s+q)(t+q)}.
}
\tag{2.14}
$$

A spectral check of this normalization is

$$
\mathcal I_0=\frac2\pi\int_0^\infty d\omega\,
\frac{\omega^2}{(\omega^2+q^2)(\omega^2+s^2)(\omega^2+t^2)}.
\tag{2.15}
$$

It follows from the Dirichlet sine resolution of $g_D$. This is the explicit gluing of two three-external-leg profiles through a bulk line. It is not a product of two boundary correlators with an arbitrarily chosen boundary propagator.

For $s,t>0$, the soft internal limit is finite: $\mathcal I_0(s,t,0)=1/[st(s+t)]$. Poles at $s+q=0$ or $t+q=0$ lie outside physical positive Euclidean energies. If the energy variables are analytically continued, the residue at $s+t=0$ is $1/(q^2-s^2)$; interpreting this as a Lorentzian scattering residue would additionally require a specified continuation prescription.

At fixed nonexceptional momenta, the exact finite-radius formula gives

$$
\boxed{\begin{aligned}
\mathcal I_z={}&\mathcal I_0
+z^2\left[
 \frac{\sum_i k_i^2}{6}\mathcal I_0
 -\frac3{10}\left(\frac1{s+q}+\frac1{t+q}\right)
\right]+O(z^3).
\end{aligned}}
\tag{2.16}
$$

There is no linear term. In the outer region the external factors and shifted internal line cancel their linear contributions. Each inner–outer region starts at $z^2/[5(t+q)]$ or its partner, and the inner–inner region starts at $2z^3/45$. Equivalently, replacing the true inner three-leg profile by its extrapolated profile produces a first radial moment defect $-3z^2/10$, fixing the second term in (2.16).

## 3. The boundary limit with exceptional momenta included

For $0<z\le a$, $a>0$ fixed, positivity gives

$$
0\le p_z(u;k)\le e^{-k(u-a)_+},\qquad
0\le g_D(u,v;q)\le\min(u,v).
\tag{3.1}
$$

Thus the integrand of (2.4) is dominated by a $z$-independent function whose radial integral is

$$
\begin{aligned}
R_a(s,t)&=\int_0^\infty du\,dv\,
\min(u,v)e^{-s(u-a)_+-t(v-a)_+}\\
&=\frac{a^3}3+\frac{a^2}2\left(\frac1s+\frac1t\right)
 +\frac a{st}+\frac1{st(s+t)}.
\end{aligned}
\tag{3.2}
$$

For example, write $\min(u,v)=\int_0^\infty dr\,1_{r<u}1_{r<v}$. The remaining survival integral is $a-r+1/s$ below $a$, and $e^{-s(r-a)}/s$ above it; multiplying the two and integrating gives (3.2). Therefore pointwise convergence to (2.14) holds whenever $s,t>0$, including $q=0$ and zero individual external momenta.

There is a real exceptional case: if a whole triple vanishes, say $s=0$, momentum conservation forces $q=0$. That vertex can run to arbitrarily large radius without suppression, and $\mathcal I_z=+\infty$ for every $z>0$. These null loci must be treated distributionally, not assigned an invented finite radial integral.

To prove the distributional result, parametrize the conservation plane by

$$
A=(\mathbf a_1,\mathbf a_2,\mathbf P-\mathbf a_1-\mathbf a_2),\qquad
B=(\mathbf b_1,\mathbf b_2,-\mathbf P-\mathbf b_1-\mathbf b_2).
\tag{3.3}
$$

The blocks $\mathbf a=(\mathbf a_1,\mathbf a_2)$ and $\mathbf b=(\mathbf b_1,\mathbf b_2)$ each have six dimensions, with $s\ge|\mathbf a|$, $t\ge|\mathbf b|$. The strongest term in (3.2) is bounded by $s^{-2}t^{-1}$, hence by $|\mathbf a|^{-2}|\mathbf b|^{-1}$. This and all other terms are locally integrable; Schwartz weights control infinity. Consequently the original joint momentum–radius integrand has an integrable majorant after pairing with any Schwartz test on the conservation plane. Dominated convergence proves

$$
(2\pi)^3\delta^{(3)}\left(\sum_i\mathbf k_i\right)\mathcal C_z^{(6)}
\longrightarrow
(2\pi)^3\delta^{(3)}\left(\sum_i\mathbf k_i\right)
\lambda^2\ell^6\sum_{A|B}\mathcal I_0(s_A,s_B,q_A)
\tag{3.4}
$$

as a tempered distribution. No new six-point source counterterm is required.

## 4. Every fixed quartic tree

The two-vertex argument is not special to a diagram with only two radial variables. A useful proof for arbitrary topology uses the full four-dimensional half-space rather than a pointwise momentum integral.

Let $\mathcal G_D$ be the flat Dirichlet inverse of $-\partial^2$ on $\mathbb H^4$. The homogeneous Sobolev inequality and the weak energy equation give

$$
\|\mathcal G_D h\|_4\le C\|h\|_{4/3},\qquad
\mathcal G_Dh\in\dot H^1_0(\mathbb H^4).
\tag{4.1}
$$

Indeed $\|w\|_4\le C_S\|\nabla w\|_2$ and $\|\nabla w\|_2^2=\int hw\le\|h\|_{4/3}\|w\|_4$, so one can take $C=C_S^2$. The space $\dot H^1_0$ is the completion of compactly supported smooth functions in the gradient norm. Positivity of the Dirichlet kernel permits applying the same estimate to absolute values.

The inverse Fourier transform of $p_z$ has a particularly transparent representation:

$$
\mathcal K_z(u,x)=\frac1{2z}\int_{|u-z|}^{u+z}P_t(x)\,dt,
\qquad P_t(x)=\frac{t}{\pi^2(t^2+|x|^2)^2},\quad P_0=\delta.
\tag{4.2}
$$

For Schwartz $j$, Poisson-kernel estimates imply

$$
|P_t*j(x)|\le C_j(1+t+|x|)^{-3}.
\tag{4.3}
$$

One can prove this by separating the source integration into $|y|$ below and above half of $t+|x|$, using the integrable Poisson kernel in the latter part and Schwartz decay there. For $0<z\le a$, (4.2) has total averaging weight $\min(u,z)/z\le1$. If $u>2a$, all sampled $t$ are comparable to $u$; if $u\le2a$, they stay bounded. Thus

$$
|f_z[j](u,x)|\le C_{j,a}(1+u+|x|)^{-3},\qquad
f_z[j]\longrightarrow f[j]:=\ell P_u*j
\quad\text{strongly in }L^4(\mathbb H^4).
\tag{4.4}
$$

The majorant is fourth-power integrable in four dimensions. This also proves the paired mollifier limit at any fixed slice: average nearby responses in $L^4$ before taking the layer width to zero.

**Theorem.** For every fixed finite connected quartic tree in this model, its finite-radial source functional converges to the boundary tree functional for arbitrary Schwartz sources. Each vertex integral is absolutely convergent after smearing. Equivalently, every fixed-order connected tree correlator has a tempered-distribution extrapolate limit. No additional interacting source counterterms are required at any fixed tree order; the free quadratic subtraction remains necessary.

*Proof.* Root a tree at one vertex. Every nonroot vertex has exactly three incoming slots, occupied by external responses or the outputs of child branches. By Hölder and (4.1),

$$
(h_1,h_2,h_3)\longmapsto\mathcal G_D(h_1h_2h_3)
\quad\text{is continuous }L^4\times L^4\times L^4\to L^4.
\tag{4.5}
$$

The root combines four $L^4$ factors by integration. Induction proves, for a tree $T$ with $E$ internal lines and $n$ external slots,

$$
|\mathcal T_T(f_1,\ldots,f_n)|\le C^E\prod_i\|f_i\|_4.
\tag{4.6}
$$

The bound also holds for absolute integrands. Vertices carrying no external legs pose no problem: their incoming slots are simply all branch functions. Strong convergence (4.4) and multilinear continuity prove the limit. Bounds of the form (4.4) depend on fixed Schwartz seminorms of the sources; the resulting equicontinuity and density of finite tensor sums in the Schwartz tensor product extend convergence from polarized sources to arbitrary Schwartz correlation-function tests. There are finitely many tree topologies at each fixed order. ∎

This is a coefficientwise theorem, not a claim that an unrestricted perturbative sum converges for arbitrary coupling and sources. Exceptional pointwise momentum configurations may remain divergent even though the distribution is well-defined, as already occurs in §3. Bulk loop ultraviolet singularities are not covered by the tree recursion.

### 4.1 A controlled sum of classical trees

The same estimate yields a local analytic result. For $f\in L^4$, let $w$ solve

$$
w=-\frac\lambda6\mathcal G_D(f+w)^3.
\tag{4.7}
$$

If $|\lambda|C\|f\|_4^2<1/4$, the right side is a contraction on the ball $\|w\|_4\le\|f\|_4$. The polynomial fixed-point map and analytic implicit-function theorem give joint analyticity in $(\lambda,f)$ in a neighborhood satisfying this bound, hence source analyticity after $f=f_z[j]$ or $f=f[j]$. The bounded map $\mathcal G_D:L^{4/3}\to\dot H^1_0$ and (4.7) give analytic dependence in the gradient norm as well, not merely membership in that space. Define the classical interaction remainder

$$
\mathscr R_\lambda[f]=-\frac12\int(\nabla w)^2
 -\frac\lambda{24}\int(f+w)^4.
\tag{4.8}
$$

For real fields the first term is minus the ordinary gradient energy. For complex analytic continuation the square is bilinear, without complex conjugation. The action is analytic because $w\in\dot H^1_0$ and $f+w\in L^4$.

At fixed $z$, shifting the sourced saddle by its free response gives

$$
W_{z,\mathrm{tree}}[j]=W_{0,z}[j]+\mathscr R_\lambda[f_z[j]].
\tag{4.9}
$$

For $f=\ell P_u*j$, the same functional is the interaction part of the negative Dirichlet on-shell action with boundary datum $\chi(0)=\ell j$, evaluated on the small analytic branch $\chi=f+w$ selected by (4.7). Here $S_D^{\rm os}$ means the flat-half-space action (1.2) on this branch; it is not an unspecified saddle or an independently chosen AdS counterterm scheme. Since $f$ is harmonic, its gradient cross term with $w\in\dot H^1_0$ vanishes. Choose a common small-coupling disk using $\sup_{0<z\le a}\|f_z\|_4<\infty$; then (4.4), the contraction estimate and energy continuity imply uniform convergence of (4.8) on smaller disks. Together with the reference's free subtraction,

$$
\boxed{
\lim_{z\downarrow0}\left[
W_{z,\mathrm{tree}}[j]-\frac{\ell^2}{2z}\int d^3x\,j^2
\right]
=-S_{D,\mathrm{tree}}^{\rm os}[\chi(0)=\ell j].
}
\tag{4.10}
$$

This equality has been derived in a specific conformal model and a controlled classical small-source regime. It is not assumed for general interacting bulk theories. In particular $f_z$ does not converge to $f$ in gradient energy: the thin sheet has an energy growing as $1/z$, precisely the term subtracted in (4.10). Omitting that distinction would invalidate the argument.

## 5. A nonlinear local source map, and its limitation

The exact finite-radius generating functional is not the single-sided radial Dirichlet action. This can be seen directly at the classical saddle. Let $Q(x)=\chi(z,x)$ be the common interface value, let $S_{\rm in}[Q]$ be the action on $0<u<z$ with zero data at $u=0$, and let $S_{\rm out}[Q]$ be the regular action on $u>z$. Then

$$
W_{z,\mathrm{tree}}[j]
=\operatorname*{stat}_{Q}\left[
 \frac\ell z\int jQ-S_{\rm in}[Q]-S_{\rm out}[Q]\right].
\tag{5.1}
$$

The variation gives the exact derivative jump $\chi'_{\rm in}(z)-\chi'_{\rm out}(z)=\ell j/z$. Thus the finite insertion functional is a Legendre transform of the **two-sided** interface action, not of $S_{\rm out}$ alone.

To obtain a local derivative expansion, use the flat nonlinear equation away from the sheet,

$$
\chi''=-\partial_i^2\chi+\frac\lambda6\chi^3.
\tag{5.2}
$$

Writing $u=zv$ in the inner slab and keeping its endpoint value $Q$ fixed gives

$$
\chi_{\rm in}(zv)=vQ+z^2\left[
 -\frac{v^3-v}{6}\partial_i^2Q
 +\frac\lambda{120}(v^5-v)Q^3\right]+O(z^4),
\tag{5.3}
$$

$$
\chi'_{\rm in}(z)=\frac Qz+z\left[-\frac13\partial_i^2Q+\frac\lambda{30}Q^3\right]+O(z^3).
\tag{5.4}
$$

For a formal outer continuation with boundary data $a=\chi_{\rm out}(0)$, $b=\chi'_{\rm out}(0)$, substitute its Taylor series into the jump. Setting $J_0=\ell j$ yields

$$
J_0=a+z^2\left[\frac16\partial_i^2a-\frac\lambda{20}a^3\right]
 -\frac{\lambda z^3}{15}a^2b+O(z^4).
\tag{5.5}
$$

In particular the local part of the effective boundary datum through second order is

$$
a_{\rm loc}[j]=\ell\left[j-\frac{z^2}{6}\partial_i^2j
 +\frac{\lambda\ell^2z^2}{20}j^3\right].
\tag{5.6}
$$

Let $\mathcal W_D[a]=-S_D^{\rm os}[a]$ for the flat half-space field $\chi$. The associated formal tree expansion is

$$
\begin{aligned}
W_{z,\mathrm{tree}}[j]
={}&\mathcal W_D[a_{\rm loc}[j]]
 +\int d^3x\left[
 \frac{\ell^2j^2}{2z}
 +\frac{\ell^2z}{3}(\partial_i j)^2
 +\frac{\lambda\ell^4z}{30}j^4\right]+O(z^3).
\end{aligned}
\tag{5.7}
$$

One derivation differentiates (5.1) with respect to $J_0$, giving $Q/z$, and uses $\delta\mathcal W_D/\delta a=b$. Retaining the cubic-order $a^2b$ term in (5.5) is necessary when checking the second-order chain rule; differentiating a truncated matching equation one order too early loses that contribution. The source-independent integration constant is zero by normalization at $j=0$.

Equation (5.7) has concrete checks at the first three tree orders. The linear derivative term reproduces the free $-\ell^2z^2\int_k k^3|j|^2/6$ correction. At four points the cubic term reproduces the $3(\sum k_i)z^2/10$ piece of the contact kernel. At six points it reproduces the $-3z^2[1/(s+q)+1/(t+q)]/10$ term in (2.16); the linear derivative redefinition gives the $\sum_i k_i^2$ term. The local $O(z)$ quartic term agrees with the exact one-vertex calculation. These checks fix the coefficient $1/20$ by more than a dimensional ansatz.

**Domain qualification.** The exact finite-$z$ outer continuation is not generally an allowed boundary source. Already at $\lambda=0$ it requires

$$
a(k)=\ell\frac{\sinh(kz)}{kz}j(k).
\tag{5.8}
$$

For example $j(k)=\exp[-(1+k^2)^{1/4}]$ is a smooth real Schwartz function in three-momentum, but (5.8) grows exponentially and is not tempered for any $z>0$. Consequently (5.7) is a local derivative expansion, not an unrestricted exact finite-radius equality obtained by evaluating (5.8) on Schwartz sources. Nevertheless its truncated asymptotic form has a genuine Schwartz-source meaning through order $\lambda^2$, as the following estimate proves. Beyond those checked orders, the all-order derivative expansion remains formal. The global tree convergence theorem of §4 does not rely on backward continuation. At higher radial orders (5.5) also introduces the response $b$, so a purely local autonomous source map cannot simply be assumed.

### 5.1 A smeared remainder estimate through two vertices

Let $S=s+t$, $D=(s+q)(t+q)$, and let $c_2$ be the coefficient in (2.16). The function

$$
h(x)=e^{-x}\frac{\sinh x}{x}=\int_0^1e^{-2xv}\,dv
\tag{5.9}
$$

is a positive Laplace mixture. The outer–outer part of (2.7) is $[\prod_i h(k_i z)]\,[S^{-1}+zh(qz)]/D$. Taylor's remainder for $e^{-rz}$ with $r\ge0$ bounds it without introducing an exponentially growing momentum weight. Each inner–outer term is $z^2/(t+q)$ or its partner times a positive Laplace mixture of total weight $1/5$ and rates at most $2(S+q)$. The inner–inner term is at most $2z^3/45$. Therefore

$$
\begin{aligned}
|\mathcal I_z-\mathcal I_0-z^2c_2|\le z^3\Bigg[
&\frac{4S^2/3+2(S+q)^2}{D}\\
&+\frac25(S+q)\left(\frac1{s+q}+\frac1{t+q}\right)+\frac2{45}
\Bigg].
\tag{5.10}
$$

For physical $q\le\min(s,t)$, the bracket is bounded by a constant times $1+s/t+t/s$, which is locally integrable in the six-dimensional relative momentum blocks of §3 and has only polynomial growth. The free covariance remainder is bounded by a constant times $z^3k^4$, and the four-point kernel remainder by a constant times $z^3(\sum_i k_i)^2$, using the same Laplace-mixture argument. Thus (5.7), expanded coefficientwise through $\lambda^2$, has an integrated $O(z^3)$ remainder for every Schwartz source, despite the failure of the exact source multiplier (5.8) on that space. This is an asymptotic functional identity, not a claim of exact finite-$z$ equivalence.

## 6. Verification and scope

The [self-contained Wolfram calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_checks.wl>) checks the Laplace-transformed internal line, exchange kernel, six-point expansion, slab profile, source coefficient, radial majorant and combinatorics. All eleven labelled symbolic checks vanish (the slab endpoint check has two zero components). It evaluates the exact positive radial decomposition at a nonzero internal momentum and at a physical $q=0$ configuration. A triangle-to-square coordinate map and 16-/24-point high-precision Gauss–Legendre rules give matching results at the retained working precision, with no messages. The [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_checks_results.txt>) records precision and convergence of the quadratic correction; quadrature agreement is a numerical check, not an error-bound proof for the general theorem.

Two fresh independent derivations were given the model and source conventions without proposed answers. One derived the exchange kernel and nonlinear slab matching; the other proved uniform two-vertex bounds and the fixed-tree extension. The $L^4$ argument was also checked against a position-space leaf-integration proof with the positive massless Dirichlet kernel. Finite numerical checks verify normalization and implementation, not the general tree theorem.

**Established:** the full six-point tree at finite radius; its distributional boundary limit and exceptional-momentum qualifications; every fixed connected quartic tree limit in this conformal model; a small-source analytic classical functional; the explicit two-sided Legendre relation; local nonlinear source matching through the stated order and domain.

**Not established:** bulk loop renormalization, nonperturbative quantum convergence, general masses or spins, a global exact local radial source evolution, Lorentzian Wightman extrapolation, or comparison with an independently specified holographic CFT. In particular the all-tree theorem is special to the conformal $\mathrm{AdS}_4$ quartic model and does not remove the logarithmic source counterterm found in the different $\mathrm{AdS}_3$ model.
