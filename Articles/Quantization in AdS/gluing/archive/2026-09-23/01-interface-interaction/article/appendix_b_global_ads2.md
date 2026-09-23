# Global AdS$_2$ gluing benchmark

This appendix repeats the response-matching test in global $\mathrm{AdS}_2$. It is not a Rindler or AdS--Rindler construction, and it carries no causal-complement or wedge-reconstruction claim. Its only role is to check that the mechanism does not rely on flat trigonometric interval modes.

## Continuum response and finite-coupling spectrum

Take unit-radius global $\mathrm{AdS}_2$,

$$
\mathrm ds^2
=\frac{-\mathrm dt^2+\mathrm d\rho^2}{\cos^2\rho},
\qquad
-\frac\pi2<\rho<\frac\pi2,
$$

with

$$
m^2=\Delta(\Delta-1),
\qquad
\Delta=\frac12+\sqrt{\frac14+m^2}>1.
$$

Use the standard normalizable branch at both conformal boundaries and cut the spatial slice at $\rho=0$. The Hamiltonian contains

$$
\frac g2\left(\phi_L(0)-\phi_R(0)\right)^2.
$$

The cut equations in the common global coordinate are

$$
\partial_\rho\phi_L\big|_0
=\partial_\rho\phi_R\big|_0
=-g(\phi_L-\phi_R)\big|_0.
$$

For frequency $\omega$, choose the right-half normalizable solution

$$
f_\omega(\rho)
=(\cos\rho)^\Delta
{}_2F_1\left(
\frac{\Delta-\omega}{2},
\frac{\Delta+\omega}{2};
\Delta+\frac12;
\cos^2\rho
\right).
$$

Its derivative-to-value response at the cut is

$$
D_\Delta(\omega)
:=\frac{f_\omega'(0)}{f_\omega(0)}
=-2
\frac{
\Gamma\left(\frac{\Delta+1-\omega}{2}\right)
\Gamma\left(\frac{\Delta+1+\omega}{2}\right)
}{
\Gamma\left(\frac{\Delta-\omega}{2}\right)
\Gamma\left(\frac{\Delta+\omega}{2}\right)
}.
$$

Reflection modes may be written as

$$
\Phi_{\sigma,r,L}
=\sigma\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}
f_{\omega_{\sigma,r}}(-\rho),
$$

$$
\Phi_{\sigma,r,R}
=\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}
f_{\omega_{\sigma,r}}(\rho).
$$

The even tower is independent of the interface coupling,

$$
\omega_{+,r}=\Delta+2r,
\qquad
r=0,1,2,\ldots,
$$

whereas the odd tower obeys

$$
D_\Delta(\omega_{-,r})=2g,
\qquad
\Delta+2r<\omega_{-,r}<\Delta+2r+1.
$$

The CPS normalization is

$$
\mathcal N_{\sigma,r}
=\left[
4\omega_{\sigma,r}
\int_0^{\pi/2}\mathrm d\rho\,
f_{\omega_{\sigma,r}}(\rho)^2
\right]^{-1/2}.
$$

At the two endpoints,

$$
g\to0:
\qquad
\omega_{-,r}\to\Delta+2r,
$$

and

$$
g\to\infty:
\qquad
\omega_{-,r}\to\Delta+2r+1.
$$

The two parity towers therefore interlace into the global spectrum

$$
\omega_n=\Delta+n.
$$

## Regional truncation and response matching

Quantize the two normalizable half-space towers and retain the first $N$ modes in the affected parity sector. If $b_r$ denotes the cut value of the $r$th normalized half-space mode, the antisymmetric stiffness matrix has the same rank-one form as on the interval,

$$
(K_{-,N})_{rs}
=(\Delta+2r)^2\delta_{rs}+2g_Nb_rb_s.
$$

Let $T_N^{\mathrm{AdS}_2}(0)$ be the omitted static response of one half. Because the mismatch contains two regional traces, the matched coupling satisfies

$$
\frac1{g_N}
=\frac1g+2T_N^{\mathrm{AdS}_2}(0).
$$

For $\Delta=2$ and $g=1$, the maximum relative error among the first six affected frequencies is

$$
\begin{array}{c|cc}
N&\text{direct error}&\text{response-matched error}\\ \hline
8&7.5922\times10^{-3}&1.0363\times10^{-4}\\
16&4.0363\times10^{-3}&1.3207\times10^{-5}\\
32&2.0864\times10^{-3}&1.7801\times10^{-6}\\
64&1.0615\times10^{-3}&2.3468\times10^{-7}
\end{array}
$$

This finite-window test reproduces the acceleration seen on the flat interval. It supports only the conclusion that response matching is a boundary-resolvent mechanism rather than a peculiarity of trigonometric modes.
