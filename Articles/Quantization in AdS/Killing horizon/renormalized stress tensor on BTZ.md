# Renormalized HHI stress tensor for the \(\Delta=2\) scalar

Date: 2026-07-12

## 0. Direct verdict

The AdS-subtracted HHI stress tensor of the minimally coupled massless $\Delta=2$ scalar is finite and conserved throughout the non-rotating BTZ exterior and is regular in Kruskal coordinates at both branches of the Killing horizon.

The result is a convergent image sum. It is not obtained by copying the conformally coupled answer: the minimal scalar has a nonzero trace, and its radial dependence differs from the conformal regression case.

## 1. Renormalization convention

For the covering-space Green function,

$$
F(Z)
=G_2^{\mathbb H^3}(Z)
=\frac1{4\pi\ell}
\left(
\frac{Z}{\sqrt{Z^2-1}}-1
\right).
$$

The BTZ Green function is

$$
G_{\rm BTZ}
=F(Z_0)
+\sum_{n\ne0}F(Z_n).
$$

The $n=0$ term contains the local singularity and the covering-AdS vacuum contribution. Define the quotient stress tensor by AdS subtraction:

$$
\langle T_{\mu\nu}\rangle_{\rm img}
:=
\langle T_{\mu\nu}\rangle_{\rm BTZ}
-\langle T_{\mu\nu}\rangle_{\rm AdS}.
$$

This fixes the local conserved ambiguity proportional to the metric. Another local renormalization scheme may add a state-independent multiple of $g_{\mu\nu}$; it does not affect the image-dependent horizon regularity proved below.

## 2. Minimal point-splitting operator

For the minimally coupled massless scalar,

$$
T_{\mu\nu}
=\nabla_\mu\phi\nabla_\nu\phi
-\frac12g_{\mu\nu}(\nabla\phi)^2.
$$

The symmetric point-splitting operator is

$$
\mathcal D_{\mu\nu}
=\frac12
\left(
\nabla_\mu\nabla_{\nu'}
+\nabla_{\mu'}\nabla_\nu
\right)
-\frac12g_{\mu\nu}
g^{\alpha\beta'}
\nabla_\alpha\nabla_{\beta'}.
$$

Parallel propagators between primed and unprimed indices are implicit; they reduce to the identity in the quotient coincidence limit used below.

Since each nonzero image is smooth at quotient coincidence,

$$
\langle T_{\mu\nu}\rangle_{\rm img}
=\sum_{n\ne0}
\lim_{x'\to x}
\mathcal D_{\mu\nu}F(Z_n).
$$

For a scalar bisolution,

$$
\nabla_\mu\nabla_{\nu'}F(Z)
=F''(Z)Z_\mu Z_{\nu'}
+F'(Z)Z_{\mu\nu'}.
$$

At $\Delta=2$,

$$
F'(Z)
=-\frac1{4\pi\ell(Z^2-1)^{3/2}},
\qquad
F''(Z)
=\frac{3Z}{4\pi\ell(Z^2-1)^{5/2}}.
$$

## 3. Image invariant

Define

$$
\rho=\frac r{r_+},
\qquad
q=\frac{r_+}{\ell},
\qquad
c_n=\cosh(2\pi nq),
\qquad
d_n=c_n-1.
$$

At quotient coincidence,

$$
Z_n=1+d_n\rho^2.
$$

The $n$ and $-n$ terms have equal diagonal components and opposite off-diagonal components. Their pair is therefore diagonal:

$$
\langle T^\mu{}_\nu\rangle_{\rm img}
=\frac1{\ell^3}
\sum_{n=1}^\infty
\operatorname{diag}
\left(
\mathcal T_t^{(n)},
\mathcal T_r^{(n)},
\mathcal T_\varphi^{(n)}
\right).
$$

Set

$$
A_n=2+d_n\rho^2.
$$

Direct point splitting gives

$$
\boxed{
\mathcal T_t^{(n)}
=
\frac{
(1+c_n)
+2c_nd_n\rho^2
-d_n^2\rho^4
}{
2\pi d_n^{3/2}\rho^3A_n^{5/2}
}
},
$$

$$
\boxed{
\mathcal T_r^{(n)}
=
\frac{
1+d_n\rho^2
}{
2\pi\rho^3(d_nA_n)^{3/2}
}
},
$$

$$
\boxed{
\mathcal T_\varphi^{(n)}
=-\frac1{
2\pi d_n^{3/2}\rho^3A_n^{1/2}
}
}.
$$

Each term decays exponentially with $n$ for $q>0$.

## 4. Conservation and trace

For a static diagonal mixed tensor on non-rotating BTZ, conservation reduces to

$$
\frac{dT^r{}_r}{d\rho}
+\frac{\rho}{\rho^2-1}
\left(
T^r{}_r-T^t{}_t
\right)
+\frac1\rho
\left(
T^r{}_r-T^\varphi{}_\varphi
\right)
=0.
$$

Mathematica substituted the three image-pair components and returned zero for every $n$. An independent xCoba calculation constructed the mixed tensor on the BTZ chart and reduced its covariant divergence to zero.

The pair trace is

$$
\mathcal T^{(n)\mu}{}_\mu
=
\frac{
1+(2c_n-1)\rho^2-d_n\rho^4
}{
2\pi\sqrt{d_n}\,\rho^3A_n^{5/2}
}.
$$

It does not vanish because the minimally coupled scalar is not conformally invariant in three dimensions. This distinguishes the present result from the conformally coupled stress tensor in the literature regression case.

## 5. Static-coordinate horizon limits

At $\rho=1$,

$$
\mathcal T_t^{(n)}(1)
=\mathcal T_r^{(n)}(1)
=\frac{
c_n
}{
2\pi(c_n^2-1)^{3/2}
},
$$

$$
\mathcal T_\varphi^{(n)}(1)
=-\frac1{
2\pi(c_n-1)^{3/2}\sqrt{c_n+1}
}.
$$

Moreover,

$$
\lim_{\rho\to1^+}
\frac{
\mathcal T_r^{(n)}-\mathcal T_t^{(n)}
}{
\rho^2-1
}
=
\frac{
2c_n-1
}{
2\pi\sqrt{c_n-1}(c_n+1)^{5/2}
}.
$$

Thus the difference required by Kruskal regularity vanishes linearly with $f$.

## 6. Kruskal regularity

In the benchmark units $\ell=r_+=1$,

$$
U=-e^{-u},
\qquad
V=e^v,
\qquad
\rho=\frac{1-UV}{1+UV}.
$$

For a static diagonal tensor,

$$
T_{uu}
=\frac f4
\left(
T^r{}_r-T^t{}_t
\right),
$$

$$
T_{uv}
=-\frac f4
\left(
T^t{}_t+T^r{}_r
\right).
$$

Using the limits above, a single image pair has

$$
\lim_{U\to0^-}T_{UU}^{(n)}
=
\frac{
2(2c_n-1)V^2
}{
\pi\sqrt{c_n-1}(c_n+1)^{5/2}
},
$$

$$
\lim_{U\to0^-}T_{UV}^{(n)}
=-\frac{
c_n
}{
\pi(c_n^2-1)^{3/2}
},
$$

$$
\lim_{U\to0^-}T_{VV}^{(n)}=0.
$$

Every component is finite, and the image sum converges exponentially. The past-horizon result follows by $U\leftrightarrow V$.

## 7. Numerical values

For

$$
\ell=r_+=1,
$$

the mixed horizon components are

$$
\boxed{
\ell^3
\langle T^\mu{}_\nu\rangle_{\rm img}\big|_{r=r_+}
=
\operatorname{diag}
\left(
2.2201498087,
2.2201498087,
-2.2284417562
\right)
\times10^{-6}
}.
$$

The physical static-observer energy density is

$$
\varepsilon=-T^t{}_t,
$$

so it is negative at the horizon in this AdS-subtracted scheme.

Selected radial values are

| $r/r_+$ | $\ell^3T^t{}_t$ | $\ell^3T^r{}_r$ | $\ell^3T^\varphi{}_\varphi$ |
|---:|---:|---:|---:|
| $1.01$ | $2.05051\times10^{-6}$ | $2.13383\times10^{-6}$ | $-2.14165\times10^{-6}$ |
| $1.10$ | $9.95374\times10^{-7}$ | $1.51835\times10^{-6}$ | $-1.52304\times10^{-6}$ |
| $1.50$ | $-4.68989\times10^{-8}$ | $4.40366\times10^{-7}$ | $-4.41099\times10^{-7}$ |
| $2.00$ | $-6.92792\times10^{-8}$ | $1.39537\times10^{-7}$ | $-1.39668\times10^{-7}$ |
| $5.00$ | $-3.28898\times10^{-9}$ | $3.57778\times10^{-9}$ | $-3.57831\times10^{-9}$ |

The tensor decays toward the AdS boundary.

## 8. Independent checks and source comparison

Mathematica differentiated the full image Green function directly at

$$
r/r_+=1.3,
\qquad
n=1,
$$

and compared it with the chain-rule formulas above. The three mixed-component residuals were

$$
(-8.45,-2.33,2.37)\times10^{-18}.
$$

Steif computed the conformally coupled BTZ stress tensor by the image method and found it finite at the non-rotating event horizon. Lifschytz and Ortiz obtained the same qualitative horizon regularity in the HHI state. These papers validate the image and point-splitting strategy, while the $\Delta=2$ minimal components in this note are independently derived.

Primary sources:

1. [The Quantum Stress Tensor in the Three Dimensional Black Hole](https://arxiv.org/abs/gr-qc/9308032)
2. [Scalar field quantization on the 2+1 dimensional black hole background](https://arxiv.org/abs/gr-qc/9310008)

## 9. Verification status

Verified:

1. Mathematica differentiated the $\Delta=2$ image Green function directly.
2. The explicit pair formulas agree with direct differentiation to $10^{-17}$.
3. Mathematica and xCoba independently give an exactly vanishing pairwise covariant divergence.
4. The static horizon limits are finite and satisfy $T^r{}_r-T^t{}_t=O(f)$.
5. Mathematica evaluated the Kruskal $T_{UU}$ and $T_{UV}$ limits explicitly.
6. The image sum converges exponentially and the horizon values are numerically stable.
7. The source PDFs were inspected at the image construction, point-splitting, and non-rotating stress-tensor sections.

Assumptions:

1. The tensor is AdS-subtracted, fixing the local state-independent metric ambiguity.
2. The primary scalar is massless, minimally coupled, and standard quantized.
3. Backreaction is not included.

Not verified:

1. The order-$\lambda$ correction to $\langle T_{\mu\nu}\rangle$ is not part of this free HHI calculation.
2. The behavior at the quotient singularity $r=0$ lies outside the exterior benchmark.
