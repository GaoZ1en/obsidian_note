# Numerical log: spacelike vacuum correlation after Neumann gluing

## 1. Question and setup

This calculation tests whether the equal-time vacuum correlation of a massive free scalar field on the full interval $[-\ell,\ell]$ can be recovered from two separately quantized systems on $[-\ell,0]$ and $[0,\ell]$. Each half-system initially has Neumann boundary conditions at both ends. Its spatial expansion is truncated to the modes $n=0,\ldots,N$, after which the two systems are connected through

$$
\frac{\kappa_N}{2}
\left[\widehat\phi_{\mathrm L}(0)-\widehat\phi_{\mathrm R}(0)\right]^2.
$$

The numerical parameters are

$$
\ell=1,
\qquad
m=1,
\qquad
\hbar=1.
$$

The two observables are centered at

$$
x_{\mathrm L}=-\frac12,
\qquad
x_{\mathrm R}=\frac12,
$$

so their center separation is one. Both operators are smooth spatial averages rather than evaluations exactly at a point.

## 2. Truncated quantum system

After reflecting the right basis to the left interval, the Neumann modes on either half can be written as

$$
f_0(x)=\frac{1}{\sqrt{\ell}},
\qquad
f_n(x)=\sqrt{\frac{2}{\ell}}
\cos\!\left(\frac{n\pi x}{\ell}\right),
\qquad n\geq 1,
$$

with $x\in[0,\ell]$ on the right and the reflected coordinate on the left. Their uncoupled frequencies are

$$
\omega_n=\sqrt{m^2+\left(\frac{n\pi}{\ell}\right)^2}.
$$

The truncated field operators are

$$
\widehat\phi_{\mathrm L}(x)
=\sum_{n=0}^{N}f_n(-x)\widehat q_{\mathrm L,n},
\qquad
\widehat\phi_{\mathrm R}(x)
=\sum_{n=0}^{N}f_n(x)\widehat q_{\mathrm R,n}.
$$

Consequently, the finite-dimensional Hamiltonian used by the program is

$$
\begin{aligned}
\widehat H_N={}&
\frac12\sum_{n=0}^{N}
\left(\widehat p_{\mathrm L,n}^{2}+\omega_n^2\widehat q_{\mathrm L,n}^{2}\right)
+\frac12\sum_{n=0}^{N}
\left(\widehat p_{\mathrm R,n}^{2}+\omega_n^2\widehat q_{\mathrm R,n}^{2}\right)
\\
&+\frac{\kappa_N}{2}
\left[
\sum_{n=0}^{N} f_n(0)
\left(\widehat q_{\mathrm L,n}-\widehat q_{\mathrm R,n}\right)
\right]^2.
\end{aligned}
$$

The coupling is fixed by zero-wavenumber matching of the omitted Neumann-mode tail:

$$
\frac{1}{\kappa_N}
=\frac{4}{\ell}
\sum_{n=N+1}^{\infty}
\frac{1}{(n\pi/\ell)^2}
=\frac{4\ell}{\pi^2}\,\psi_1(N+1),
$$

or equivalently

$$
\kappa_N=\frac{\pi^2}{4\ell\,\psi_1(N+1)},
$$

where $\psi_1$ is the trigamma function.

The symmetric half-system combination is unaffected by the gluing term. The antisymmetric combination has the $(N+1)\times(N+1)$ stiffness matrix

$$
\operatorname{diag}(\omega_0^2,\ldots,\omega_N^2)
+2\kappa_N
\begin{pmatrix}
f_0(0)\\[-2pt]
\vdots\\[-2pt]
f_N(0)
\end{pmatrix}
\begin{pmatrix}
f_0(0)&\cdots&f_N(0)
\end{pmatrix}.
$$

For a quadratic Hamiltonian with unit kinetic matrix, the ground-state coordinate covariance is $\hbar/2$ times the inverse square root of its stiffness matrix. The program diagonalizes only the antisymmetric matrix above. It therefore never constructs a many-particle Fock-space matrix, whose dimension would grow exponentially.

## 3. Wave packets and their cutoff dependence

For a packet centered at $x_0$, the normalized profile is

$$
h_N(x;x_0)=
\begin{cases}
\displaystyle
\frac{
\exp\!\left[-\dfrac{1}{1-((x-x_0)/a_N)^2}\right]
}{
a_N\displaystyle\int_{-1}^{1}
\exp\!\left[-\dfrac{1}{1-u^2}\right]du
},
& |x-x_0|<a_N,\\[12pt]
0,& |x-x_0|\geq a_N,
\end{cases}
$$

with support radius

$$
a_N=\frac{\ell}{2\sqrt N}.
$$

This choice satisfies both requirements needed for a controlled point limit:

$$
\frac{a_N}{|x_{\mathrm R}-x_{\mathrm L}|}
=\frac{1}{2\sqrt N}\longrightarrow0,
$$

while the number of resolvable wavelengths across the packet grows because

$$
\frac{N\pi}{\ell}a_N
=\frac{\pi\sqrt N}{2}\longrightarrow\infty.
$$

Thus the packets become small compared with their separation without becoming smaller than the spatial resolution supplied by the retained modes. Choosing $a_N$ proportional to $1/N$ would not have this property.

The packet operators used in the calculation are

$$
\widehat\Phi_{\mathrm L,N}
=\int_{-\ell}^{0}h_N\!\left(x;-\frac{\ell}{2}\right)
\widehat\phi_{\mathrm L,N}(0,x)\,dx,
\qquad
\widehat\Phi_{\mathrm R,N}
=\int_{0}^{\ell}h_N\!\left(x;\frac{\ell}{2}\right)
\widehat\phi_{\mathrm R,N}(0,x)\,dx.
$$

Their coefficients in the half-interval basis are evaluated by Gauss--Legendre quadrature. The reported packet-tail diagnostic is

$$
1-
\frac{
\displaystyle\sum_{n=0}^{N}
\left|
\int h_N(x;x_0)f_n(x)\,dx
\right|^2
}{
\displaystyle\int |h_N(x;x_0)|^2\,dx
}.
$$

It measures the fraction of the packet's squared norm lying above the retained half-interval modes.

## 4. Full-theory reference calculations

On the joined interval $[-\ell,\ell]$, the exact Neumann modes are

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

The exact full-interval packet correlation is computed from

$$
\sum_{j=0}^{\infty}
\frac{\hbar}{2\sqrt{m^2+(j\pi/(2\ell))^2}}
\left[
\int_{-\ell}^{\ell}
h_N\!\left(x;-\frac12\right)F_j(x)\,dx
\right]
\left[
\int_{-\ell}^{\ell}
h_N\!\left(y;\frac12\right)F_j(y)\,dy
\right].
$$

As an independent check, the same quantity is evaluated using the exact Neumann image kernel

$$
\frac{\hbar}{2\pi}
\sum_{p=-\infty}^{\infty}
\left\{
K_0\!\left(m\left|x-y+4p\ell\right|\right)
+K_0\!\left(m\left|x+y+2\ell+4p\ell\right|\right)
\right\},
$$

where $K_0$ is the modified Bessel function. The packet supports are disjoint, so the coincident-point singularity is never sampled. The same image formula gives the exact separated point correlation

$$
\left\langle
\widehat\phi\!\left(0,-\frac12\right)
\widehat\phi\!\left(0,\frac12\right)
\right\rangle_{\mathrm{joined}}
=0.109856652941906.
$$

## 5. Numerical settings

- Half-system cutoffs: $N=32,64,128,256,512,1024$.
- Packet projection: 256-point Gauss--Legendre quadrature.
- Image-kernel packet integration: 160-point quadrature in each packet and images $p=-20,\ldots,20$.
- Full-interval mode check: 512-point packet quadrature, with its largest retained wavenumber satisfying approximately $k_{\max}a_N=40$.
- Linear algebra: symmetric eigendecomposition of the $(N+1)\times(N+1)$ antisymmetric stiffness matrix.
- Software: Python 3, NumPy, and SciPy.

A stricter repeat used 240-point image quadrature, images $p=-30,\ldots,30$, 768-point mode quadrature, and $k_{\max}a_N=50$. All displayed correlators and errors were unchanged at the printed precision.

Run the default calculation from this directory with

```bash
python3 spacelike_wavepacket_correlator.py
```

For example, a different list of truncations can be supplied with

```bash
python3 spacelike_wavepacket_correlator.py --cutoffs 64,128,256
```

All other settings are exposed through command-line options; run `python3 spacelike_wavepacket_correlator.py --help` for the complete list.

## 6. Results

The gluing relative error compares the glued truncated theory with the joined theory using exactly the same cutoff-dependent packets:

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}\widehat\Phi_{\mathrm R,N}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\Phi_{\mathrm L,N}\widehat\Phi_{\mathrm R,N}
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}\widehat\Phi_{\mathrm R,N}
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The smearing relative error isolates the difference between the finite packets and the separated point operators in the joined theory:

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}\widehat\Phi_{\mathrm R,N}
\right\rangle_{\mathrm{joined}}
-
\left\langle
\widehat\phi\!\left(0,-\frac{\ell}{2}\right)
\widehat\phi\!\left(0,\frac{\ell}{2}\right)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi\!\left(0,-\frac{\ell}{2}\right)
\widehat\phi\!\left(0,\frac{\ell}{2}\right)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

The total relative error directly compares the glued packet result with the separated point correlation:

$$
\frac{
\left|
\left\langle
\widehat\Phi_{\mathrm L,N}\widehat\Phi_{\mathrm R,N}
\right\rangle_{\mathrm{glued}}
-
\left\langle
\widehat\phi\!\left(0,-\frac{\ell}{2}\right)
\widehat\phi\!\left(0,\frac{\ell}{2}\right)
\right\rangle_{\mathrm{joined}}
\right|
}{
\left|
\left\langle
\widehat\phi\!\left(0,-\frac{\ell}{2}\right)
\widehat\phi\!\left(0,\frac{\ell}{2}\right)
\right\rangle_{\mathrm{joined}}
\right|
}.
$$

| $N$ | $a_N$ | glued packet correlation | full-theory packet correlation | gluing relative error | smearing relative error | total relative error |
|---:|---:|---:|---:|---:|---:|---:|
| 32 | 0.08838834765 | 0.110142494435 | 0.110141858446 | $5.774274\times10^{-6}$ | $2.596161\times10^{-3}$ | $2.601950\times10^{-3}$ |
| 64 | 0.06250000000 | 0.109999000610 | 0.109999060446 | $5.439661\times10^{-7}$ | $1.296303\times10^{-3}$ | $1.295758\times10^{-3}$ |
| 128 | 0.04419417382 | 0.109927839082 | 0.109927808072 | $2.820875\times10^{-7}$ | $6.477089\times10^{-4}$ | $6.479912\times10^{-4}$ |
| 256 | 0.03125000000 | 0.109892221007 | 0.109892218375 | $2.394792\times10^{-8}$ | $3.237440\times10^{-4}$ | $3.237680\times10^{-4}$ |
| 512 | 0.02209708691 | 0.109874432397 | 0.109874432629 | $2.104368\times10^{-9}$ | $1.618444\times10^{-4}$ | $1.618423\times10^{-4}$ |
| 1024 | 0.01562500000 | 0.109865541987 | 0.109865542028 | $3.719224\times10^{-10}$ | $8.091532\times10^{-5}$ | $8.091495\times10^{-5}$ |

The cutoff and reference diagnostics are

| $N$ | $\kappa_N$ |  packet squared-norm tail | full-reference mode cutoff | absolute difference between mode and image references |
| ----: | -----------: | ------------------------: | -------------------------: | ----------------------------------------------------: |
|    32 |  80.19686083 | $1.442536\times10^{-3}$ |                        289 |                            $3.131079\times10^{-12}$ |
|    64 |  159.1505586 | $3.435452\times10^{-4}$ |                        408 |                            $1.874018\times10^{-11}$ |
|   128 |  317.0626415 | $6.954774\times10^{-5}$ |                        577 |                            $1.147471\times10^{-12}$ |
|   256 |  632.8891838 | $9.562998\times10^{-6}$ |                        815 |                            $1.529346\times10^{-11}$ |
|   512 |  1264.543465 | $1.040173\times10^{-6}$ |                       1153 |                            $3.283762\times10^{-13}$ |
|  1024 |  2527.852628 | $7.544907\times10^{-8}$ |                       1630 |                            $1.780659\times10^{-13}$ |

## 7. Interpretation

The numerical result is positive:

1. At fixed packet shape and width, the error caused by gluing the two truncated quantum systems is already $5.77\times10^{-6}$ at $N=32$ and falls to $3.72\times10^{-10}$ at $N=1024$.
2. The packet squared-norm tail tends rapidly to zero, confirming that the shrinking packets remain well resolved by the retained modes.
3. The remaining difference from the separated point correlation is dominated by the finite packet radius, not by the gluing construction. It falls by approximately a factor of two whenever $N$ doubles, consistent with the leading correction being proportional to $a_N^2$, hence proportional to $1/N$.
4. At $N=1024$, the glued result reproduces the separated point correlator with relative error $8.09\times10^{-5}$, below $10^{-4}$.

This establishes the desired numerical statement for this observable: as the half-system mode cutoff is increased while the packet radius shrinks more slowly than the spatial resolution, the glued vacuum correlation approaches the full-theory spacelike correlation. It does not assert uniform accuracy for ultraviolet modes or coincident unsmeared fields; those require separate renormalization and a cutoff-dependent notion of the observable.
