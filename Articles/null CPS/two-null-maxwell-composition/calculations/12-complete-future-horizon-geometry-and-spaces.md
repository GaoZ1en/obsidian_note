# Complete Future Horizon: Geometry and Intrinsic Spaces

## 1. Geometry

Work on

$$
M=\mathbb R_t\times\mathbb R_z\times S^2_R,
\qquad
u=\frac{t-z}{\sqrt2},\quad v=\frac{t+z}{\sqrt2},
$$

with $ds^2=-2\,du\,dv+R^2d\Omega_2^2$. The complete future bifurcate
characteristic surface is

$$
\boxed{X_\infty=H_L^+\cup_{S_0}H_R^+},
\tag{1.1}
$$

$$
H_L^+=\{v=0,u\geq0\},\qquad
H_R^+=\{u=0,v\geq0\},\qquad
S_0=\{u=v=0\}.
\tag{1.2}
$$

The notation is future-directed on both half-rays. No symbol $N_-$ is used in
the global theorem. The finite exhaustion is

$$
X_T=\{v=0,0\leq u\leq\sqrt2T\}
\cup\{u=0,0\leq v\leq\sqrt2T\}.
\tag{1.3}
$$

Together with

$$
\Sigma_T^{\rm int}=\{t=T,-T\leq z\leq T\},
\tag{1.4}
$$

this bounds the compact triangle $u,v\geq0$, $u+v\leq\sqrt2T$.

## 2. Bulk finite-energy radiative space

For one electric or magnetic master with $\mu_\ell^2=\lambda_\ell>0$,

$$
(\partial_t^2-\partial_z^2+\mu_\ell^2)\Phi^P_{\ell m}=0.
\tag{2.1}
$$

The Cauchy data obey

$$
(\Phi,\partial_t\Phi)|_{t=0}
\in H^1(\mathbb R_z)\oplus L^2(\mathbb R_z).
\tag{2.2}
$$

Using

$$
U_{k\ell}=\frac{e^{-i\omega_{k\ell}t+ikz}}
{\sqrt{4\pi\omega_{k\ell}}},
\qquad \omega_{k\ell}=\sqrt{k^2+\lambda_\ell},
\tag{2.3}
$$

write

$$
\Phi^P_{\ell m}=\int_{\mathbb R}dk
\left(a^P_{k\ell m}U_{k\ell}
+\overline{a^P_{k\ell m}}U_{k\ell}^*\right).
\tag{2.4}
$$

The full gauge-invariant radiative Maxwell energy space is the real Hilbert
sum satisfying

$$
\boxed{
\sum_{P=E,B}\sum_{\ell\geq1,m}
\int_{\mathbb R}dk\,\omega_{k\ell}|a^P_{k\ell m}|^2<\infty.}
\tag{2.5}
$$

This is an independently specified Cauchy-energy space. The trivial bundle,
$Q_E=0$, $n=0$ and $\ell\geq1$ are fixed throughout.

## 3. Stationary-spectral intrinsic two-sheet master range

For one mass define

$$
\alpha_k=\frac{\omega_k+k}{\sqrt2},\qquad
\beta_k=\frac{\omega_k-k}{\sqrt2},\qquad
\alpha_k\beta_k=\frac{\mu^2}{2},
\tag{3.1}
$$

and $N_k=(4\pi\omega_k)^{-1/2}$. For a matched pair
$h=(f,g)\in H^1(\mathbb R_+)\oplus H^1(\mathbb R_+)$, the closed analysis
operator is the graph closure of

$$
\begin{aligned}
T_\mu(f,g)(k)=-iN_k\bigg[&
\int_0^\infty du\,e^{i\alpha_ku}(i\alpha_kf-f')\\
&+\int_0^\infty dv\,e^{i\beta_kv}(i\beta_kg-g')\bigg].
\end{aligned}
\tag{3.2}
$$

Synthesis is

$$
(S_\mu a)_L(u)=\int dk\,N_k
\left(ae^{-i\alpha_ku}+\bar a e^{i\alpha_ku}\right),
\tag{3.3}
$$

$$
(S_\mu a)_R(v)=\int dk\,N_k
\left(ae^{-i\beta_kv}+\bar a e^{i\beta_kv}\right).
\tag{3.4}
$$

The stationary-spectral intrinsic master energy space is

$$
\boxed{
\mathfrak X_{E,\mu}
=\{h\in\mathcal D_E(T_\mu):S_\mu T_\mu h=h,\quad
T_\mu h\in L^2(\omega dk)\}.}
\tag{3.5}
$$

All conditions in (3.5) are expressed by the half-ray transforms
(3.2)--(3.4). This is not the circular definition “the image of bulk
restriction.” It is nevertheless background dependent: $T_\mu$ and $S_\mu$
use the product metric, the stationary mass shell, and its Fourier spectral
transform. Thus “intrinsic” here always means **stationary-spectral
intrinsic**, not generally covariant or background independent. A generic
matched $H^1\oplus H^1$ pair fails the nonlocal fixed-point condition.

The read-only analytic proofs of closedness, $T_\mu S_\mu=1$, and graph
boundedness are in
`../../null-characteristic-cps/calculations/13-characteristic-complex-structure.md`
and `15-closed-characteristic-transform.md`.

## 4. Stationary-spectral intrinsic full-Maxwell data space

For $-D^2Y_{\ell m}=\lambda_\ell Y_{\ell m}$ set

$$
s_\ell=\sqrt{\lambda_\ell},\qquad
\mathbb E_A^{\ell m}=\frac{D_AY_{\ell m}}{s_\ell},\qquad
\mathbb B_A^{\ell m}=\frac{(*_SdY_{\ell m})_A}{s_\ell}.
\tag{4.1}
$$

Decompose, for each $(\ell,m)$,

$$
r_A=r^E\mathbb E_A+r^B\mathbb B_A,
\qquad p_A=p^E\mathbb E_A+p^B\mathbb B_A,
\tag{4.2}
$$

and $B_0=\frac12\epsilon^{AB}b^0_{AB}$. Define from the literal Maxwell data

$$
\begin{aligned}
c^E&=-E_{0,\ell m}/s_\ell,&
f^E(u)&=c^E+\int_0^u p^E(s)ds,&
g^E(v)&=c^E-\int_0^v r^E(s)ds,\\
c^B&=-B_{0,\ell m}/s_\ell,&
f^B(u)&=c^B+\int_0^u p^B(s)ds,&
g^B(v)&=c^B+\int_0^v r^B(s)ds,
\end{aligned}
\tag{4.3}
$$

The global stationary-spectral intrinsic Maxwell characteristic range is

$$
\boxed{
\mathcal X_\infty^{\rm Max}
=\left\{(r_A,p_A;E_0,b^0_{AB}):
(f^P_{\ell m},g^P_{\ell m})\in\mathfrak X_{E,s_\ell},\quad
\sum_{P,\ell,m}\int\omega_{k\ell}
|T_{s_\ell}(f^P,g^P)|^2dk<\infty\right\}.}
\tag{4.4}
$$

The norm in (4.4) is stationary-spectral intrinsic because $T_{s_\ell}$ is
the explicit closed half-ray transform (3.2), not the bulk restriction map.
It depends on the product-background mass shell. Formula (4.3) displays the
one angular derivative/division by $s_\ell$ explicitly; no same-order
potential Sobolev theorem is inferred.

The inverse dictionary is

$$
E_0=-s_\ell c^E,\quad B_0=-s_\ell c^B,\quad
p^P=\partial_uf^P,\quad r^E=-\partial_vg^E,\quad r^B=\partial_vg^B.
\tag{4.5}
$$

Thus $E_0,b^0$ are indispensable shared corner data but are already the common
master values. Two independent “news functions” are not the complete space.

## 5. Three function-space layers

1. Finite harmonic/spectral packet truncations are regression spaces only.
2. The Schwartz spectral and rapid-angular smooth core is dense and supports
   pointwise tails, potential representatives, and every generator.
3. The graph-closed energy space (4.4) is the primary classical global space.
   Its field-strength topology is stationary-spectral intrinsic; the
   potential completion is not defined here.

## 6. Goursat surface versus causal Cauchy surface

$X_\infty$ is not an ordinary spacelike Cauchy hypersurface in causal theory.
It is a bifurcate characteristic surface. Two statements must not be merged:

1. arbitrary sufficiently regular half-ray data with the shared corner value
   determine a Goursat solution in the local future quadrant;
2. only the fixed-point range (3.5), summed with (4.4), represents a global
   finite-energy solution on all of $\mathbb R^{1,1}\times S^2_R$.

The first statement is local characteristic well-posedness. The second is the
stationary-spectral global range theorem. Calling $X_\infty$ a “Cauchy
hypersurface” would hide the nonlocal fixed-point condition.

## 7. Status

**Proved:** the stationary-spectral intrinsic definition (4.4), its explicit
inverse Maxwell/master dictionary, and the separation between local matched
data and the global fixed-point range.

**Imported read-only analytic lemmas:** closed analysis/synthesis, half-ray
$H^1$ trace estimate, and the master energy isometry.

**Not claimed:** arbitrary $H^1\oplus H^1$ surjectivity, a uniform
$\mu\to0$ estimate, an energy potential quotient, or any $\ell=0$/topological
sector.
