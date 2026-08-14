# RT surface and modular Killing vector in global AdS

## Conventions

Consider vacuum global $\mathrm{AdS}_{d+1}$ with radius $L$ in dimensionless global coordinates,

$$\begin{align}
\mathrm{d}s^2
&=L^2\left[-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}
+r^2\left(\mathrm{d}\theta^2+\sin^2\theta\,\mathrm{d}\Omega_{d-2}^2\right)\right].
\end{align}$$

The north pole of the boundary sphere is at $\theta=0$. Take the ball-shaped boundary region

$$\begin{align}
A=\left\{t=0,\ 0\leq\theta\leq a\right\},
\qquad 0<a<\frac{\pi}{2}.
\end{align}$$

Its boundary domain of dependence is $|t|+\theta\leq a$. The restriction $a<\pi/2$ makes $A$ smaller than a hemisphere and allows its RT surface to be written globally as a single graph $r=r(\theta)$.

## RT surface

The RT surface is at $t=0$, wraps the transverse $S^{d-2}$, and is

$$\begin{align}
r_{\mathrm{RT}}(\theta)
&=\frac{\cos a}{\sqrt{\cos^2\theta-\cos^2a}},
\qquad 0\leq\theta<a.
\end{align}$$

Equivalently,

$$\begin{align}
\frac{r\cos\theta}{\sqrt{1+r^2}}=\cos a.
\end{align}$$

The surface reaches its smallest radius at the polar axis,

$$\begin{align}
r_*=r_{\mathrm{RT}}(0)=\cot a,
\end{align}$$

and approaches the asymptotic boundary as $\theta\to a^-$. Its area functional is

$$\begin{align}
\operatorname{Area}[r]
&=L^{d-1}\operatorname{Vol}(S^{d-2})
\int_0^a\mathrm{d}\theta\,
(r\sin\theta)^{d-2}
\sqrt{r^2+\frac{(\partial_\theta r)^2}{1+r^2}}.
\end{align}$$

A dimension-independent proof of extremality follows from the embedding coordinates

$$\begin{align}
X_{-1}&=L\sqrt{1+r^2}\cos t,
&X_0&=L\sqrt{1+r^2}\sin t,
&X_d&=Lr\cos\theta.
\end{align}$$

The RT surface is the intersection of the AdS hyperboloid with the linear plane

$$\begin{align}
X_0=0,
\qquad
X_d=\cos a\,X_{-1}.
\end{align}$$

Because this plane passes through the embedding-space origin, the intersection is totally geodesic and hence extremal for every $d$.

## Bulk modular Killing vector

The bulk Killing vector generating the vacuum modular flow of $A$, normalized to surface gravity $2\pi$, is

$$\begin{align}
\xi_A
=\frac{2\pi}{\sin a}\Bigg[
&\left(\frac{r\cos t\cos\theta}{\sqrt{1+r^2}}-\cos a\right)\partial_t
+\sqrt{1+r^2}\sin t\cos\theta\,\partial_r \\
&-\frac{\sqrt{1+r^2}}{r}\sin t\sin\theta\,\partial_\theta
\Bigg].
\end{align}$$

It has no components along $S^{d-2}$. It obeys

$$\begin{align}
\mathcal{L}_{\xi_A}g_{\mu\nu}&=0,
&\left.\xi_A\right|_{\gamma_A}&=0,
&\left.-\frac12(\nabla_\mu\xi_{A\nu})(\nabla^\mu\xi_A^{\ \nu})\right|_{\gamma_A}&=(2\pi)^2,
\end{align}$$

where $\gamma_A$ is the RT surface. Dividing $\xi_A$ by $2\pi$ instead gives the convention with unit surface gravity.

The induced conformal Killing vector on the boundary cylinder is the tangential part

$$\begin{align}
\zeta_A
=\frac{2\pi}{\sin a}\left[
(\cos t\cos\theta-\cos a)\partial_t
-\sin t\sin\theta\,\partial_\theta
\right].
\end{align}$$

At $t=0$ it is future-directed inside $A$ and vanishes on the entangling surface $\theta=a$.

## Reduction to global $\mathrm{AdS}_3$

For $d=2$, the two branches of $S^0$ combine into the signed boundary coordinate $\phi\in[-a,a]$, with $\theta=|\phi|$. The formulas become

$$\begin{align}
r_{\mathrm{RT}}(\phi)
&=\frac{\cos a}{\sqrt{\cos^2\phi-\cos^2a}},
\end{align}$$

and

$$\begin{align}
\xi_A=\frac{2\pi}{\sin a}\left[
\left(\frac{r\cos t\cos\phi}{\sqrt{1+r^2}}-\cos a\right)\partial_t
+\sqrt{1+r^2}\sin t\cos\phi\,\partial_r
-\frac{\sqrt{1+r^2}}{r}\sin t\sin\phi\,\partial_\phi
\right].
\end{align}$$

Thus the remembered global $\mathrm{AdS}_3$ RT curve is correct under the conventions above.

## Scope and checks

**Verified:** Mathematica gives zero for the area Euler--Lagrange residual of the displayed surface for $d=2,3,4,5,6$; the embedding-space argument proves the same result for general $d$. Mathematica also verifies the Killing equation including a transverse-sphere direction, the vanishing of $\xi_A$ on $\gamma_A$, and the surface-gravity normalization $(2\pi)^2$.

**Assumptions:** Pure global AdS vacuum; the round boundary cylinder conformal frame; dimensionless $(t,r)$ as defined above; the smaller polar cap $0<a<\pi/2$; classical RT rather than quantum extremal surfaces.

**Not verified:** Backreacted or time-dependent HRT surfaces, quantum corrections, and a single-graph formula for hemispherical or larger caps. At $a=\pi/2$, the regular description is instead $t=0$, $\theta=\pi/2$; for $a>\pi/2$, use the complementary smaller cap to identify the pure-state RT surface.
