# Numerical log: interface-to-bulk correlation after Neumann gluing

## 1. Objective

This calculation tests whether two separately quantized and mode-truncated Neumann systems recover the equal-time joined-theory correlation

$$
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}},
$$

where $x=0$ is the gluing interface and $0<d<\ell$ lies in the right subsystem. Two independent approximations to the interface field are calculated:

1. a smooth packet supported entirely on the left, $[-a_N,0]$;
2. its reflected packet supported entirely on the right, $[0,a_N]$.

Both are correlated with a smooth packet centered at $x=d$. The calculation checks the left result, the right result, their convergence toward one another, and their convergence toward the exact joined-theory point correlation.

The reproducible program is `interface_correlator.py` in the same directory as this log.

## 2. Truncated glued theory

The two spatial regions are $[-\ell,0]$ and $[0,\ell]$. Each subsystem is first quantized in its own Neumann basis and truncated to $n=0,\ldots,N$. Using the reflected coordinate on the left, the half-interval modes are

$$
f_0(s)=\frac{1}{\sqrt\ell},
\qquad
f_n(s)=\sqrt{\frac{2}{\ell}}
\cos\!\left(\frac{n\pi s}{\ell}\right),
\qquad n\geq1,
$$

where $0\leq s\leq\ell$. Their uncoupled frequencies are

$$
\omega_n=\sqrt{m^2+\left(\frac{n\pi}{\ell}\right)^2}.
$$

The finite-dimensional Hamiltonian is

$$
\begin{aligned}
\widehat H_N={}&
\frac12\sum_{n=0}^{N}
\left(
\widehat p_{\mathrm L,n}^{2}
+\omega_n^2\widehat q_{\mathrm L,n}^{2}
\right)
+\frac12\sum_{n=0}^{N}
\left(
\widehat p_{\mathrm R,n}^{2}
+\omega_n^2\widehat q_{\mathrm R,n}^{2}
\right)
\\
&+\frac{\kappa_N}{2}
\left[
\sum_{n=0}^{N}f_n(0)
\left(
\widehat q_{\mathrm L,n}-\widehat q_{\mathrm R,n}
\right)
\right]^2.
\end{aligned}
$$

The coupling is obtained by matching the omitted zero-wavenumber Neumann-mode tail:

$$
\frac{1}{\kappa_N}
=\frac{4}{\ell}
\sum_{n=N+1}^{\infty}
\frac{1}{(n\pi/\ell)^2}
=\frac{4\ell}{\pi^2}\psi_1(N+1),
$$

and therefore

$$
\kappa_N=\frac{\pi^2}{4\ell\psi_1(N+1)}.
$$

The symmetric oscillator sector has coordinate covariance

$$
\frac{\hbar}{2}
\operatorname{diag}
\left(
\frac{1}{\omega_0},\ldots,\frac{1}{\omega_N}
\right),
$$

whereas the antisymmetric sector has coordinate covariance

$$
\frac{\hbar}{2}
\left[
\operatorname{diag}
\left(
\omega_0^2,\ldots,\omega_N^2
\right)
+2\kappa_N
\begin{pmatrix}
f_0(0)\\
\vdots\\
f_N(0)
\end{pmatrix}
\begin{pmatrix}
f_0(0)&\cdots&f_N(0)
\end{pmatrix}
\right]^{-1/2}.
$$

Consequently, the left-right covariance block is one half of the symmetric covariance minus the antisymmetric covariance, while the right-right block is one half of their sum. The program diagonalizes only the $(N+1)\times(N+1)$ antisymmetric stiffness matrix. It does not construct an exponentially large many-particle Fock-space matrix.

## 3. One-sided interface packets

The cutoff-dependent packet size is

$$
a_N=\frac{\ell}{2\sqrt N}.
$$

The positive packet supported entirely in the left subsystem is

$$
h_{\mathrm L,N}(x)=
\begin{cases}
\displaystyle
\frac{
2\exp\!\left[
-\dfrac{1}{1-(2x/a_N+1)^2}
\right]
}{
a_N\displaystyle\int_{-1}^{1}
\exp\!\left[-\dfrac{1}{1-u^2}\right]du
},
&-a_N<x<0,\\[12pt]
0,&\text{otherwise}.
\end{cases}
$$

Its reflected right-interface packet is

$$
h_{\mathrm R,N}(x;0)=
\begin{cases}
\displaystyle
\frac{
2\exp\!\left[
-\dfrac{1}{1-(2x/a_N-1)^2}
\right]
}{
a_N\displaystyle\int_{-1}^{1}
\exp\!\left[-\dfrac{1}{1-u^2}\right]du
},
&0<x<a_N,\\[12pt]
0,&\text{otherwise}.
\end{cases}
$$

Both are nonnegative, have unit integral, and vanish smoothly at both ends of their support. Although they vanish at $x=0$, their normalized support shrinks to $x=0$; hence they converge distributionally to the left and right interface limits.

The remote right packet is symmetric about $x=d$:

$$
h_{\mathrm R,N}(x;d)=
\begin{cases}
\displaystyle
\frac{
\exp\!\left[
-\dfrac{1}{1-((x-d)/a_N)^2}
\right]
}{
a_N\displaystyle\int_{-1}^{1}
\exp\!\left[-\dfrac{1}{1-u^2}\right]du
},
&|x-d|<a_N,\\[12pt]
0,&\text{otherwise}.
\end{cases}
$$

The three packet operators are

$$
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
=\int_{-a_N}^{0}
h_{\mathrm L,N}(x)\widehat\phi_{\mathrm L,N}(0,x)\,dx,
$$

$$
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
=\int_{0}^{a_N}
h_{\mathrm R,N}(x;0)\widehat\phi_{\mathrm R,N}(0,x)\,dx,
$$

and

$$
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
=\int_{d-a_N}^{d+a_N}
h_{\mathrm R,N}(x;d)\widehat\phi_{\mathrm R,N}(0,x)\,dx.
$$

The joint limit is controlled because

$$
a_N\longrightarrow0,
\qquad
\frac{N\pi}{\ell}a_N
=\frac{\pi\sqrt N}{2}\longrightarrow\infty.
$$

Thus the packets approach point support but remain resolved by an increasing number of retained wavelengths.

## 4. First-moment improvement

The ordinary left packet has first moment $-a_N/2$, and the ordinary right-interface packet has first moment $a_N/2$. Their point-limit errors are therefore generally $O(a_N)=O(N^{-1/2})$.

The program also evaluates

$$
2\widehat\Phi_{\mathrm L,N}^{(a_N/2;0)}
-\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
$$

and

$$
2\widehat\Phi_{\mathrm R,N}^{(a_N/2;0)}
-\widehat\Phi_{\mathrm R,N}^{(a_N;0)}.
$$

Both combinations have unit zeroth moment and zero first moment. They remain supported entirely on their respective sides of the interface, although their smearing profiles are no longer everywhere positive. Their point-limit errors start at $O(a_N^2)=O(N^{-1})$, while their left-right difference starts at still higher order in the exact joined theory.

## 5. Correlations evaluated in the glued system

The left-interface correlation is evaluated as

$$
\begin{aligned}
&\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
\\
&=\sum_{n=0}^{N}\sum_{n'=0}^{N}
\left[
\int_{-a_N}^{0}
h_{\mathrm L,N}(x)f_n(-x)\,dx
\right]
\left\langle
\widehat q_{\mathrm L,n}\widehat q_{\mathrm R,n'}
\right\rangle_{\mathrm{glued}}
\left[
\int_{d-a_N}^{d+a_N}
h_{\mathrm R,N}(y;d)f_{n'}(y)\,dy
\right].
\end{aligned}
$$

The requested right-interface correlation is evaluated independently from the right-right covariance block:

$$
\begin{aligned}
&\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
\\
&=\sum_{n=0}^{N}\sum_{n'=0}^{N}
\left[
\int_{0}^{a_N}
h_{\mathrm R,N}(x;0)f_n(x)\,dx
\right]
\left\langle
\widehat q_{\mathrm R,n}\widehat q_{\mathrm R,n'}
\right\rangle_{\mathrm{glued}}
\left[
\int_{d-a_N}^{d+a_N}
h_{\mathrm R,N}(y;d)f_{n'}(y)\,dy
\right].
\end{aligned}
$$

All packet-mode projections are calculated with Gauss--Legendre quadrature.

## 6. Exact joined-theory references

The exact Neumann modes on $[-\ell,\ell]$ are

$$
F_0(x)=\frac{1}{\sqrt{2\ell}},
\qquad
F_j(x)=\frac{1}{\sqrt\ell}
\cos\!\left[\frac{j\pi(x+\ell)}{2\ell}\right],
\qquad j\geq1,
$$

with frequencies

$$
\sqrt{m^2+\left(\frac{j\pi}{2\ell}\right)^2}.
$$

Every joined-theory packet reference is computed by projecting the two packets onto these modes and summing their vacuum covariances. Independently, the same reference is computed from the exact Neumann image kernel

$$
\frac{\hbar}{2\pi}
\sum_{p=-\infty}^{\infty}
\left[
K_0\!\left(m|x-y+4p\ell|\right)
+K_0\!\left(m|x+y+2\ell+4p\ell|\right)
\right].
$$

The separated point reference is obtained by setting $x=0$ and $y=d$:

$$
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
=\frac{\hbar}{2\pi}
\sum_{p=-\infty}^{\infty}
\left[
K_0\!\left(m|-d+4p\ell|\right)
+K_0\!\left(m|d+2\ell+4p\ell|\right)
\right].
$$

For the numerical parameters used below, this is

$$
\left\langle
\widehat\phi(0,0)\widehat\phi\!\left(0,\frac12\right)
\right\rangle_{\mathrm{joined}}
=0.195731508375256.
$$

## 7. Error definitions

The left-interface gluing relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The right-interface gluing relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The left-interface smearing relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
-\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The right-interface smearing relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
-\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The left-interface total relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The right-interface total relative error is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The raw left-right interface difference in the glued theory is

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

At finite $a_N$, left and right one-sided packets also differ in the exact joined theory. The sewing residual removes this known finite-width asymmetry:

$$
\frac{
\left|
\begin{aligned}
&\left[
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{glued}}
\right]
\\
&-\left[
\left\langle
\widehat\Phi_{\mathrm L,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
-
\left\langle
\widehat\Phi_{\mathrm R,N}^{(a_N;0)}
\widehat\Phi_{\mathrm R,N}^{(a_N;d)}
\right\rangle_{\mathrm{joined}}
\right]
\end{aligned}
\right|
}{
\left|
\left\langle
\widehat\phi(0,0)\widehat\phi(0,d)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The same definitions are applied to the first-moment-improved interface packets.

## 8. Numerical settings and validation

The default calculation uses

$$
\ell=1,
\qquad
m=1,
\qquad
\hbar=1,
\qquad
d=\frac12,
$$

and

$$
N=32,64,128,256,512,1024,2048.
$$

The remaining settings are:

- packet-mode projections: 256-point Gauss--Legendre quadrature;
- joined image references: 160-point quadrature in each packet and images $p=-20,\ldots,20$;
- joined mode references: 512-point packet quadrature;
- the joined reference mode cutoff is selected so that its maximum wavenumber times the narrower improved packet size is approximately 40;
- the largest diagonalized matrix is $2049\times2049$.

A stricter calculation at $N=32,256,2048$ used 240-point image quadrature, images $p=-30,\ldots,30$, 768-point mode quadrature, and maximum reference wavenumber times the narrower packet size equal to approximately 50. All displayed correlations and errors were unchanged at the printed precision.

The program is run from this directory with

```bash
python3 interface_correlator.py
```

Different cutoffs can be supplied with

```bash
python3 interface_correlator.py --cutoffs 64,128,256
```

## 9. Positive one-sided packet results

The right-interface correlation requested in this calculation is shown independently in the fourth and fifth columns.

| $N$ | glued left-interface correlation | joined left reference | glued right-interface correlation | joined right reference | left gluing error | right gluing error |
|---:|---:|---:|---:|---:|---:|---:|
| 32 | 0.18399288645 | 0.18395481361 | 0.21015950577 | 0.21019838245 | $2.06968\times10^{-4}$ | $1.84952\times10^{-4}$ |
| 64 | 0.18718037091 | 0.18716952703 | 0.20561902584 | 0.20562904567 | $5.79362\times10^{-5}$ | $4.87277\times10^{-5}$ |
| 128 | 0.18955610517 | 0.18955475426 | 0.20257232702 | 0.20257370739 | $7.12674\times10^{-6}$ | $6.81414\times10^{-6}$ |
| 256 | 0.19130050230 | 0.19130062949 | 0.20049465899 | 0.20049453253 | $6.64858\times10^{-7}$ | $6.30770\times10^{-7}$ |
| 512 | 0.19256590386 | 0.19256603016 | 0.19906304067 | 0.19906291567 | $6.55913\times10^{-7}$ | $6.27954\times10^{-7}$ |
| 1024 | 0.19347669922 | 0.19347671529 | 0.19806924624 | 0.19806923021 | $8.30585\times10^{-8}$ | $8.09174\times10^{-8}$ |
| 2048 | 0.19412879750 | 0.19412879769 | 0.19737567469 | 0.19737567450 | $9.53580\times10^{-10}$ | $9.40095\times10^{-10}$ |

The error decomposition relative to the exact point correlation is:

| $N$ | left smearing error | left total error | right smearing error | right total error |
|---:|---:|---:|---:|---:|
| 32 | $6.01676\times10^{-2}$ | $5.99731\times10^{-2}$ | $7.39118\times10^{-2}$ | $7.37132\times10^{-2}$ |
| 64 | $4.37435\times10^{-2}$ | $4.36881\times10^{-2}$ | $5.05669\times10^{-2}$ | $5.05157\times10^{-2}$ |
| 128 | $3.15573\times10^{-2}$ | $3.15504\times10^{-2}$ | $3.49571\times10^{-2}$ | $3.49500\times10^{-2}$ |
| 256 | $2.26375\times10^{-2}$ | $2.26382\times10^{-2}$ | $2.43345\times10^{-2}$ | $2.43351\times10^{-2}$ |
| 512 | $1.61726\times10^{-2}$ | $1.61732\times10^{-2}$ | $1.70203\times10^{-2}$ | $1.70209\times10^{-2}$ |
| 1024 | $1.15198\times10^{-2}$ | $1.15199\times10^{-2}$ | $1.19435\times10^{-2}$ | $1.19436\times10^{-2}$ |
| 2048 | $8.18831\times10^{-3}$ | $8.18831\times10^{-3}$ | $8.40011\times10^{-3}$ | $8.40011\times10^{-3}$ |

## 10. First-moment-improved results

| $N$ | glued improved left correlation | joined improved left reference | glued improved right correlation | joined improved right reference | left gluing error | right gluing error |
|---:|---:|---:|---:|---:|---:|---:|
| 32 | 0.19646547589 | 0.19580838977 | 0.19501054534 | 0.19571737109 | $3.35576\times10^{-3}$ | $3.61146\times10^{-3}$ |
| 64 | 0.19589153378 | 0.19576505690 | 0.19561304700 | 0.19573351271 | $6.46065\times10^{-4}$ | $6.15458\times10^{-4}$ |
| 128 | 0.19576380545 | 0.19574642389 | 0.19571759274 | 0.19573538006 | $8.87963\times10^{-5}$ | $9.08743\times10^{-5}$ |
| 256 | 0.19574456680 | 0.19573827229 | 0.19572771989 | 0.19573438662 | $3.21578\times10^{-5}$ | $3.40601\times10^{-5}$ |
| 512 | 0.19573518246 | 0.19573463497 | 0.19573271865 | 0.19573326449 | $2.79708\times10^{-6}$ | $2.78874\times10^{-6}$ |
| 1024 | 0.19573290153 | 0.19573297870 | 0.19573257195 | 0.19573249475 | $3.94258\times10^{-7}$ | $3.94425\times10^{-7}$ |
| 2048 | 0.19573215007 | 0.19573220997 | 0.19573209886 | 0.19573203897 | $3.05983\times10^{-7}$ | $3.06019\times10^{-7}$ |

| $N$ | improved left smearing error | improved left total error | improved right smearing error | improved right total error |
|---:|---:|---:|---:|---:|
| 32 | $3.92790\times10^{-4}$ | $3.74987\times10^{-3}$ | $7.22279\times10^{-5}$ | $3.68343\times10^{-3}$ |
| 64 | $1.71401\times10^{-4}$ | $8.17576\times10^{-4}$ | $1.02402\times10^{-5}$ | $6.05224\times10^{-4}$ |
| 128 | $7.62040\times10^{-5}$ | $1.65007\times10^{-4}$ | $1.97806\times10^{-5}$ | $7.10955\times10^{-5}$ |
| 256 | $3.45571\times10^{-5}$ | $6.67160\times10^{-5}$ | $1.47051\times10^{-5}$ | $1.93555\times10^{-5}$ |
| 512 | $1.59739\times10^{-5}$ | $1.87710\times10^{-5}$ | $8.97206\times10^{-6}$ | $6.18332\times10^{-6}$ |
| 1024 | $7.51195\times10^{-6}$ | $7.11770\times10^{-6}$ | $5.03943\times10^{-6}$ | $5.43386\times10^{-6}$ |
| 2048 | $3.58448\times10^{-6}$ | $3.27847\times10^{-6}$ | $2.71083\times10^{-6}$ | $3.01683\times10^{-6}$ |

At low cutoff, the improved packet contains the narrower scale $a_N/2$ and is not yet well resolved. This explains why its $N=32$ gluing error is larger than that of the ordinary positive packet. Its resolution improves rapidly with $N$.

## 11. Left-right interface-limit check

All entries below are relative to the exact point reference. The sewing residual subtracts the finite-width left-right difference already present in the exact joined theory.

| $N$ | glued positive left-right difference | joined positive left-right difference | positive sewing residual | glued improved left-right difference | joined improved left-right difference | improved sewing residual |
|---:|---:|---:|---:|---:|---:|---:|
| 32 | $1.33686\times10^{-1}$ | $1.34079\times10^{-1}$ | $3.93138\times10^{-4}$ | $7.43330\times10^{-3}$ | $4.65018\times10^{-4}$ | $6.96828\times10^{-3}$ |
| 64 | $9.42038\times10^{-2}$ | $9.43104\times10^{-2}$ | $1.06594\times10^{-4}$ | $1.42280\times10^{-3}$ | $1.61161\times10^{-4}$ | $1.26164\times10^{-3}$ |
| 128 | $6.65004\times10^{-2}$ | $6.65143\times10^{-2}$ | $1.39542\times10^{-5}$ | $2.36103\times10^{-4}$ | $5.64233\times10^{-5}$ | $1.79679\times10^{-4}$ |
| 256 | $4.69733\times10^{-2}$ | $4.69720\times10^{-2}$ | $1.29593\times10^{-6}$ | $8.60715\times10^{-5}$ | $1.98520\times10^{-5}$ | $6.62195\times10^{-5}$ |
| 512 | $3.31941\times10^{-2}$ | $3.31928\times10^{-2}$ | $1.28395\times10^{-6}$ | $1.25877\times10^{-5}$ | $7.00181\times10^{-6}$ | $5.58589\times10^{-6}$ |
| 1024 | $2.34635\times10^{-2}$ | $2.34633\times10^{-2}$ | $1.63986\times10^{-7}$ | $1.68384\times10^{-6}$ | $2.47253\times10^{-6}$ | $7.88687\times10^{-7}$ |
| 2048 | $1.65884\times10^{-2}$ | $1.65884\times10^{-2}$ | $1.89376\times10^{-9}$ | $2.61641\times10^{-7}$ | $8.73646\times10^{-7}$ | $6.12004\times10^{-7}$ |

The ordinary raw left-right difference decreases approximately as $N^{-1/2}$, exactly as expected from the opposite first moments of the two positive one-sided packets. It is therefore not itself a pure gluing error. The positive sewing residual falls from $3.93\times10^{-4}$ to $1.89\times10^{-9}$ after the exact finite-width asymmetry is removed.

The improved joined-theory left-right difference is much smaller because the first moments vanish. The improved glued left-right difference also tends to zero, reaching $2.62\times10^{-7}$ at $N=2048$.

## 12. Packet resolution and reference checks

The packet tail is the fraction of the exact squared norm lying above modes $0,\ldots,N$:

$$
1-
\frac{
\displaystyle\sum_{n=0}^{N}
\left|
\int h(x)f_n(x)\,dx
\right|^2
}{
\displaystyle\int |h(x)|^2\,dx
}.
$$

| $N$ | $a_N$ | $\kappa_N$ | interface packet tail | remote packet tail | improved interface packet tail | joined reference mode cutoff | maximum mode-image difference |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 32 | 0.0883883476 | 80.1968608 | $1.22280\times10^{-2}$ | $1.44254\times10^{-3}$ | $3.09445\times10^{-1}$ | 577 | $5.78620\times10^{-12}$ |
| 64 | 0.0625000000 | 159.150559 | $7.28486\times10^{-3}$ | $3.43545\times10^{-4}$ | $8.53035\times10^{-2}$ | 815 | $1.68960\times10^{-11}$ |
| 128 | 0.0441941738 | 317.062641 | $1.11657\times10^{-3}$ | $6.95477\times10^{-5}$ | $1.73693\times10^{-2}$ | 1153 | $2.32453\times10^{-12}$ |
| 256 | 0.0312500000 | 632.889184 | $2.47322\times10^{-4}$ | $9.56300\times10^{-6}$ | $1.03210\times10^{-2}$ | 1630 | $1.57352\times10^{-12}$ |
| 512 | 0.0220970869 | 1264.54347 | $9.59599\times10^{-5}$ | $1.04017\times10^{-6}$ | $1.64504\times10^{-3}$ | 2305 | $1.10423\times10^{-12}$ |
| 1024 | 0.0156250000 | 2527.85263 | $1.32917\times10^{-5}$ | $7.54491\times10^{-8}$ | $3.39384\times10^{-4}$ | 3260 | $4.06689\times10^{-12}$ |
| 2048 | 0.0110485435 | 5054.47125 | $6.28040\times10^{-7}$ | $4.07115\times10^{-9}$ | $1.31509\times10^{-4}$ | 4610 | $5.47951\times10^{-13}$ |

The packet tails tend to zero, including the narrower improved packet. The independently calculated exact-mode and image-kernel references agree to better than $1.7\times10^{-11}$ in the default run.

## 13. Conclusions

The numerical calculation supports all required interface statements:

1. The left-interface glued correlation approaches its exact joined-theory same-packet reference. Its gluing relative error decreases from $2.07\times10^{-4}$ at $N=32$ to $9.54\times10^{-10}$ at $N=2048$.
2. The requested right-interface correlation is independently reproduced. Its gluing relative error decreases from $1.85\times10^{-4}$ to $9.40\times10^{-10}$.
3. Both positive one-sided packet correlations approach the exact point correlation from opposite sides. Their slower total convergence is the predicted $O(a_N)=O(N^{-1/2})$ one-sided smearing effect, not a failure of gluing.
4. After first-moment improvement, both sides reproduce the point correlation to a few parts in $10^6$ at $N=2048$.
5. The raw left-right positive-packet difference tends to zero. After subtracting the same finite-width asymmetry in the exact joined theory, the sewing residual reaches $1.89\times10^{-9}$.
6. Mode tails tend to zero, and two independent full-theory reference methods agree. These checks show that the observed convergence is not caused by an unresolved packet or an inaccurate reference calculation.

Therefore the glued truncated systems recover the interface-to-bulk vacuum two-point function from both the left and the right. The numerical data also explicitly verify that the two one-sided interface limits agree as $N$ increases.
