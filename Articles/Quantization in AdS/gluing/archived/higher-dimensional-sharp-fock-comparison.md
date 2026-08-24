# Higher-Dimensional Extension of the Optional Sharp-Fock Comparison

This note extends one result of [[Articles/Quantization in AdS/gluing/Fock failure|Fock failure]]: the declared sharp tensor product of strict-Dirichlet regional Fock representations is not unitarily equivalent to the connected representation.

It does not construct the higher-dimensional continuum canonical gluing theory. In particular, it does not prove continuum closure for a field-valued port or control the full radial/transverse Galerkin limit.

## Product Geometry and Channel Reduction

Consider

$$\begin{align}
M&=\mathbb R_t\times[-L,L]_x\times S_R^d, & \mathrm ds^2&=-\mathrm dt^2+\mathrm dx^2+R^2\mathrm d\Omega_d^2,
\end{align}$$

with $L,R,m>0$, physical Dirichlet conditions at $x=\pm L$, and a centered artificial cut. The interface conditions are continuity of the field-valued history $q(t,z)$ and oriented flux matching.

For $d=0$ the transverse factor is absent, so this reduces to the interval model rather than a literal $S^0$ product.

Choose real orthonormal spherical harmonics

$$\begin{align}
-\Delta_{S_R^d}Y_{\ell a}&=\lambda_\ell Y_{\ell a}, & \lambda_\ell&=\frac{\ell(\ell+d-1)}{R^2}.
\end{align}$$

For $d\geq2$, their degeneracy is

$$\begin{align}
g_d(\ell)&=\frac{(2\ell+d-1)(\ell+d-2)!}{\ell!(d-1)!};
\end{align}$$

for $S^1$, $g_1(0)=1$ and $g_1(\ell)=2$ for $\ell\geq1$.

Expansion in $Y_{\ell a}$ reduces the free theory to independent interval channels with effective masses

$$\begin{align}
m_\ell^2&=m^2+\lambda_\ell.
\end{align}$$

In every channel the relative sector is the half-interval Dirichlet--Dirichlet problem and the common sector is the Dirichlet--Neumann problem. Their normalized spatial bases are

$$\begin{align}
u_n(y)&=\sqrt{\frac2L}\sin(k_ny), &k_n&=\frac{n\pi}{L},\\
v_p(y)&=\sqrt{\frac2L}\sin(\kappa_py), & \kappa_p&=\frac{(p+\frac12)\pi}{L},
\end{align}$$

with channel frequencies

$$\begin{align}
\omega_{n\ell}&=\sqrt{m_\ell^2+k_n^2}, & \Omega_{p\ell}&=\sqrt{m_\ell^2+\kappa_p^2}.
\end{align}$$

The higher-dimensional interface datum is a field, not one additional oscillator. At finite transverse cutoff there is one port pair $(q_{\ell a},\pi_{q,\ell a})$ per retained harmonic.

## Finite Canonical Regulator

Choose a common frequency window $\Lambda$. In channel $\ell$, retain

$$\begin{align}
N_\ell(\Lambda)
&=\begin{cases}
\left\lfloor\dfrac{L}{\pi}\sqrt{\Lambda^2-m_\ell^2}\right\rfloor, &\Lambda>m_\ell,\\
0,&\Lambda\leq m_\ell.
\end{cases}
\end{align}$$

For every retained channel, the finite symplectic form is the interval port form with $m^2$ replaced by $m_\ell^2$:

$$\begin{align}
\omega_\Lambda &=\sum_{(\ell,a)}\left[ \sum_{i=1}^2\sum_{n=1}^{N_\ell} \delta V_{i,n\ell a}\wedge\delta C_{i,n\ell a} +\delta\pi_{q,\ell a}\wedge\delta q_{\ell a} \right],\\
\pi_{q,\ell a}&=\rho_{N_\ell}\dot q_{\ell a}, & \rho_{N_\ell}&=\frac{4L}{\pi^2}\sum_{n>N_\ell}\frac1{n^2}>0.
\end{align}$$

Thus every finite truncation is a positive finite-dimensional canonical system when all port pairs are retained. This finite statement does not by itself prove a higher-dimensional continuum limit.

## Channelwise Creation Coefficients

The spatial overlap is independent of the transverse channel:

$$\begin{align}
U_{pn}&=\int_0^L\mathrm dy\,v_p(y)u_n(y) =(-1)^{n+p+1}\frac{2n}{\pi[n^2-(p+\frac12)^2]}.
\end{align}$$

The common-sector creation coefficient in channel $\ell$ is

$$\begin{align}
\beta_{pn}^{(\ell)} &=\frac12\left( \sqrt{\frac{\Omega_{p\ell}}{\omega_{n\ell}}} -\sqrt{\frac{\omega_{n\ell}}{\Omega_{p\ell}}} \right)U_{pn}\\
&=(-1)^{p+n} \frac{k_n}{L\sqrt{\Omega_{p\ell}\omega_{n\ell}} (\Omega_{p\ell}+\omega_{n\ell})}.
\end{align}$$

The second line follows from

$$\begin{align}
\omega_{n\ell}^2-\Omega_{p\ell}^2&=k_n^2-\kappa_p^2.
\end{align}$$

For every fixed $(p,\ell,a)$,

$$\begin{align}
|\beta_{pn}^{(\ell)}|^2 &=\frac{1}{\pi L\Omega_{p\ell}}\frac1n+O(n^{-2}),\\
\sum_{n=1}^N|\beta_{pn}^{(\ell)}|^2 &=\frac{1}{\pi L\Omega_{p\ell}}\log N+O(1).
\end{align}$$

In particular, the transverse constant harmonic $\ell=0$ contains an invariant copy of the original interval calculation. One of its common rows is not square summable. Therefore

$$\begin{align}
\beta&\notin\mathfrak S_2
\end{align}$$

for every $d\geq0$. Additional transverse channels cannot repair this positive lower bound, and factorized port columns cannot cancel a sum of nonnegative squared regional entries.

## Accumulated Cutoff Diagnostic

To describe how the optional comparison grows in the declared isotropic window, define

$$\begin{align}
\mathcal B_d(\Lambda) &=\sum_{\ell=0}^{\infty}g_d(\ell) \sum_{\substack{p\geq0,\ n\geq1\\
\Omega_{p\ell}\leq\Lambda,\ \omega_{n\ell}\leq\Lambda}}
|\beta_{pn}^{(\ell)}|^2.
\end{align}$$

This is a finite spectral diagnostic, not a regulator-independent continuum coefficient. For $d=0$, direct comparison of the exact summand gives

$$\begin{align}
\mathcal B_0(\Lambda)&=\Theta((\log(\Lambda L))^2).
\end{align}$$

For $d\geq1$, the transverse Weyl density is

$$\begin{align}
\mathrm dN_\perp(q) &\sim\frac{\operatorname{Vol}(S_R^d)\operatorname{Vol}(S^{d-1})}{(2\pi)^d} q^{d-1}\mathrm dq.
\end{align}$$

The radial double sum supplies two powers of $\Lambda$, the high-frequency coefficient supplies $\Lambda^{-2}$, and the transverse Weyl measure supplies $\Lambda^d$. This power counting suggests

$$\begin{align}
\mathcal B_d(\Lambda) &=\Theta\!\left(\operatorname{Vol}(S_R^d)\Lambda^d\right), &d&\geq1.
\end{align}$$

The leading coefficient depends on the cutoff surface. A uniform two-sided spectral-sum estimate would be needed to promote this scaling to a theorem. The fixed-row non-Hilbert--Schmidt result does not depend on that estimate.

## Interpretation

The result concerns only a declared sharp regional product representation:

$$\begin{align}
\text{finite port cutoff} &\Longrightarrow\text{finite positive canonical system},\\
\text{sharp regional product reference} &\Longrightarrow\text{no continuum Fock implementer},\\
d\geq1 &\Longrightarrow\text{expected interface-volume power growth of the optional diagnostic}.
\end{align}$$

It does not obstruct intrinsic connected quantization. What remains open is the actual higher-dimensional analogue of the one-dimensional continuum-closure theorem, where the port is field-valued and radial and transverse ultraviolet limits must be controlled together.

## Verification Boundary

Verified analytically:

- spherical-harmonic reduction with $m^2\mapsto m_\ell^2$;
- the exact overlap $U_{pn}$ and the second expression for $\beta_{pn}^{(\ell)}$;
- the fixed-row asymptotic and non-Hilbert--Schmidt conclusion in every dimension.

Power-counting only: the stated Weyl scaling of the isotropic diagnostic.

Assumptions: product geometry $[-L,L]\times S_R^d$, minimal scalar coupling, centered cut, physical outer Dirichlet conditions, real orthonormal harmonics, and the strict-Dirichlet regional complex structure used only as an optional reference.

Not proved here: higher-dimensional continuum closure of the field-valued port, uniform two-sided bounds for the accumulated diagnostic, a regulator-independent leading coefficient, the full port-column contribution, vacuum-fidelity or entropy asymptotics, or a literal factorization of sharp continuum regional Hilbert spaces.
