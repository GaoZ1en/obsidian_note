# Radial Born correction from the BTZ tadpole

Date: 2026-07-12

## 0. Direct verdict

The first $\lambda\phi^4$ correction has been reduced to and evaluated as a convergent one-dimensional radial Born integral in fixed Euclidean frequency and angular-momentum sectors.

For the fixed-physical-$\Delta$ scheme,

$$
\Sigma_{\rm BTZ}(r)
=\frac{\lambda}{2}\mathcal I_2(r).
$$

The correction is negative in the Euclidean Green function,

$$
\delta g_{km}=-g_{km}\Sigma_{\rm BTZ}g_{km},
$$

and is finite for all exterior points, including the horizon limit.

## 1. Euclidean sector decomposition

Use

$$
\ell=r_+=1,
\qquad
\beta_H=2\pi,
\qquad
z=1-\frac1{r^2}.
$$

Expand

$$
G_E(X,X')
=\frac1{\beta_H\,2\pi}
\sum_{k,m\in\mathbb Z}
e^{ik(\tau-\tau')+im(\varphi-\varphi')}
g_{km}(r,r').
$$

The radial operator is

$$
K_{km}
=-\frac1r\frac{d}{dr}
\left(
r(r^2-1)\frac d{dr}
\right)
+\frac{k^2}{r^2-1}
+\frac{m^2}{r^2}.
$$

It is normalized by

$$
K_{km}g_{km}(r,r')
=\frac{\delta(r-r')}{r}.
$$

Only $|k|$ enters, so take $k\ge0$ below.

## 2. Horizon and boundary solutions

For $\Delta=2$, define

$$
a_{km}
=\frac{2+k-im}{2},
\qquad
b_{km}
=\frac{2+k+im}{2}.
$$

The solution regular at the Euclidean horizon is

$$
p_{km}(z)
=z^{k/2}(1-z)\,
{}_2F_1(a_{km},b_{km};1+k;z).
$$

The solution with standard AdS falloff is

$$
q_{km}(z)
=z^{k/2}(1-z)\,
{}_2F_1(a_{km},b_{km};2;1-z).
$$

Their radial Wronskian satisfies

$$
2z
\left(
p_{km}q_{km}'-p_{km}'q_{km}
\right)
=-\frac1{C_{km}},
$$

where

$$
\boxed{
C_{km}
=\frac{
\Gamma(a_{km})\Gamma(b_{km})
}{
2\Gamma(2)\Gamma(k+1)
}
}.
$$

The formula includes the Matsubara zero sector. For example,

$$
C_{00}=\frac12,
\qquad
C_{10}=\frac{\pi}{8},
\qquad
C_{20}=\frac14.
$$

## 3. Exact sector Green function

Let

$$
z_<:=\min(z,z'),
\qquad
z_>:=\max(z,z').
$$

Then

$$
\boxed{
g_{km}(z,z')
=C_{km}\,
p_{km}(z_<)q_{km}(z_>)
}.
$$

The derivative jump is

$$
-r(r^2-1)
\left[
\partial_rg_{km}
\right]_{r=r'-0}^{r=r'+0}
=1,
$$

which gives the required delta source.

The same kernel has the spectral representation

$$
g_{km}(r,r')
=2\int_0^\infty d\omega\,
\frac{
\omega R_{\omega m}(r)R_{\omega m}(r')
}{
\omega^2+k^2
}.
$$

Thus the Euclidean radial resolvent and the Lorentzian real-frequency normalization use the same spectral measure.

## 4. Tadpole insertion

For $\Delta=2$,

$$
\mathcal I_2(z)
=\frac1{2\pi}
\sum_{n=1}^\infty
\frac{e^{-s_n(z)}}{\sinh s_n(z)},
$$

where

$$
s_n(z)
=\operatorname{arccosh}
\left[
1+\frac{2}{1-z}\sinh^2(\pi n)
\right].
$$

Since

$$
r\,dr=\frac{dz}{2(1-z)^2},
$$

the complete first-order sector correction is

$$
\boxed{
\delta g_{km}(z,z')
=-\frac{\lambda}{4}
\int_0^1
\frac{dy}{(1-y)^2}\,
g_{km}(z,y)
\mathcal I_2(y)
g_{km}(y,z')
}.
$$

The integrand is regular at both endpoints:

1. the horizon-regular factors control $y\to0$;
2. the standard falloff of $q_{km}$ and the decay of $\mathcal I_2$ control $y\to1$.

## 5. Born equation

Applying $K_{km}$ to the first argument gives

$$
\boxed{
K_{km}^{(z)}\delta g_{km}(z,z')
=-\Sigma_{\rm BTZ}(z)g_{km}(z,z')
}.
$$

For $z>z'$, split the integral into the intervals

$$
(0,z'),
\qquad
(z',z),
\qquad
(z,1).
$$

The nonhomogeneous part is controlled by

$$
M(z)
=\frac{\Sigma_{\rm BTZ}(z)}{2(1-z)^2}
$$

and the Wronskian identity

$$
2z(pq'-p'q)=-C_{km}^{-1}.
$$

Substitution gives

$$
K_{km}\delta g_{km}
+\Sigma_{\rm BTZ}g_{km}=0
$$

away from $z=z'$. Mathematica reduced the resulting algebraic residual to zero.

## 6. Numerical evaluation

Take

$$
\lambda=1,
\qquad
x=-r_*,
\qquad
x=1,
\qquad
x'=1.5.
$$

Thus

$$
z=\operatorname{sech}^2(1),
\qquad
z'=\operatorname{sech}^2(1.5).
$$

The image sum was truncated at $n_{\max}=6$. The result had already stabilized by $n_{\max}=3$.

| $(k,m)$ | $C_{km}$ | $g_{km}^{(0)}$ | $\delta g_{km}$ | $\delta g/g^{(0)}$ |
|---:|---:|---:|---:|---:|
| $(0,0)$ | $0.5$ | $0.4337808305$ | $-4.43958530\times10^{-8}$ | $-1.02346\times10^{-7}$ |
| $(0,1)$ | $0.3412847252$ | $0.3403483058$ | $-2.81587792\times10^{-8}$ | $-8.27352\times10^{-8}$ |
| $(1,0)$ | $\pi/8$ | $0.1677146217$ | $-6.86273622\times10^{-9}$ | $-4.09191\times10^{-8}$ |
| $(1,1)$ | $0.3130100828$ | $0.1496372908$ | $-5.62771978\times10^{-9}$ | $-3.76091\times10^{-8}$ |
| $(2,0)$ | $0.25$ | $0.0665331785$ | $-1.43977992\times10^{-9}$ | $-2.16400\times10^{-8}$ |
| $(2,1)$ | $0.2133029532$ | $0.0625092280$ | $-1.29810200\times10^{-9}$ | $-2.07666\times10^{-8}$ |

For $(k,m)=(1,0)$,

$$
\delta g_{10}
=-6.8627362200808014\times10^{-9}
$$

for $n_{\max}=3,6,10$ to the displayed precision. Changing the numerical accuracy goal from $8$ to $10$ also left the result unchanged.

The small magnitude is physical for $r_+=\ell$: the first quotient image is suppressed by $e^{-4\pi}$ in the $\Delta=2$ tadpole.

## 7. Lorentzian continuation

The Euclidean correction is the analytic input for HHI time-ordered correlators. In the retarded Lorentzian problem,

$$
P_{\rm eff}
=P-\Sigma_{\rm BTZ},
$$

so

$$
G_{\rm ret}
=G_{\rm ret}^{(0)}
+\delta G_{\rm ret}
+O(\lambda^2),
$$

where, with operator composition displayed explicitly,

$$
\delta G_{\rm ret}
=G_{\rm ret}^{(0)}
\circ\Sigma_{\rm BTZ}
\circ G_{\rm ret}^{(0)}.
$$

The apparent sign change relative to the Euclidean formula follows from

$$
K_{\rm eff}=K+\Sigma_{\rm BTZ},
\qquad
P_{\rm eff}=P-\Sigma_{\rm BTZ}.
$$

## 8. Verification status

Verified:

1. Mathematica checked the homogeneous hypergeometric equations.
2. The Wronskian was constant at five radial points and matched the Gamma-function normalization.
3. The derivative jump gives the radial delta source.
4. Mathematica reduced the Born-equation residual to zero using the Wronskian identity.
5. Six sectors, including the Matsubara zero mode, were evaluated numerically.
6. Image-cutoff and integration-accuracy convergence were checked independently.

Assumptions:

1. Numerical values use $\ell=r_+=\lambda=1$.
2. The mass counterterm fixes the asymptotic physical $\Delta=2$, leaving only the quotient image potential.
3. The displayed Lorentzian formula is obtained by HHI analytic continuation with the corresponding causal prescription.

Not verified:

1. No resummation beyond first order in $\lambda$ is claimed.
2. The interacting order-$\lambda$ stress tensor and gravitational backreaction remain separate composite-operator calculations.
