# The $\lambda\phi^4$ Tadpole on Non-Rotating BTZ

Date: 2026-07-12

## 0. Direct Verdict

The first interacting benchmark already changes one conclusion imported from global AdS:

> On BTZ, the renormalized HHI tadpole is a radial local potential, not only a constant mass shift.

The ultraviolet singularity is still local and identical to the covering AdS singularity. The new $r$-dependence comes from finite quotient images. A constant bulk mass counterterm can fix the asymptotic physical $\Delta$, but it cannot remove the finite radial image contribution everywhere.

## 1. Euclidean Interaction

Take

$$\begin{align}
S_E =\int d^3X\sqrt g \left[ \frac12(\nabla\phi)^2 +\frac12\mu^2\phi^2 +\frac{\lambda}{4!}\phi^4 +\frac{\delta\mu^2}{2}\phi^2 \right].
\end{align}$$

At first order in $\lambda$, Wick contraction gives the local insertion

$$\begin{align}
\Sigma_{\rm tad}(X) =\frac{\lambda}{2} \langle\phi^2(X)\rangle_{\rm ren} +\delta\mu^2.
\end{align}$$

The Euclidean two-point correction is

$$\begin{align}
\boxed{ G^{(1)}(X,Y) =-\int d^3Z\sqrt g\, G_0(X,Z)\, \Sigma_{\rm tad}(Z)\, G_0(Z,Y)
}.
\end{align}$$

The factor $1/2$ follows from the twelve connected contractions divided by $4!$.

## 2. Covering-Space Green Function

For

$$\begin{align}
\mu^2\ell^2=\Delta(\Delta-2), \qquad \nu=\Delta-1>0,
\end{align}$$

the standard Green function on $\mathbb H^3$ is

$$\begin{align}
G_\Delta^{\mathbb H^3}(s) =\frac1{4\pi\ell} \frac{e^{-\nu s}}{\sinh s}, \qquad s=\frac d\ell.
\end{align}$$

Its short-distance expansion is

$$\begin{align}
G_\Delta^{\mathbb H^3}(s) =\frac1{4\pi d} -\frac{\Delta-1}{4\pi\ell} +O(d).
\end{align}$$

In minimal geodesic subtraction,

$$\begin{align}
\langle\phi^2\rangle_{\rm ren}^{\mathbb H^3} =-\frac{\Delta-1}{4\pi\ell}.
\end{align}$$

A finite local scheme change can be moved between this number and $\delta\mu^2$.

## 3. Coincident BTZ Image Sum

For a point at radius $r$ and its $n$th angular image, define

$$\begin{align}
s_n(r) =\operatorname{arccosh} \left[ 1+\frac{2r^2}{r_+^2} \sinh^2\left(\frac{\pi n r_+}{\ell}\right) \right].
\end{align}$$

The renormalized coincident function is

$$\begin{align}
\boxed{ \langle\phi^2(r)\rangle_{\rm ren}^{\rm HHI} =-\frac{\Delta-1}{4\pi\ell} +c_{\rm scheme} +\mathcal I_\Delta(r)
},
\end{align}$$

where

$$\begin{align}
\mathcal I_\Delta(r) =\frac1{4\pi\ell} \sum_{n\ne0} \frac{ e^{-(\Delta-1)s_n(r)}
}{ \sinh s_n(r)
}.
\end{align}$$

The local ultraviolet subtraction acts only on the $n=0$ term. The image correction $\mathcal I_\Delta(r)$ is finite and scheme-independent once the covering-space renormalization condition is fixed.

## 4. Horizon Value and Boundary Limit

At $r=r_+$,

$$\begin{align}
s_n(r_+)=\frac{2\pi|n|r_+}{\ell}.
\end{align}$$

Therefore

$$\begin{align}
\boxed{ \mathcal I_\Delta(r_+) =\frac1{\pi\ell}
\sum_{n=1}^{\infty} \frac{ e^{-2\pi n\Delta r_+/\ell}
}{ 1-e^{-4\pi n r_+/\ell}
}
<\infty
}.
\end{align}$$

At the AdS boundary,

$$\begin{align}
\lim_{r\to\infty}\mathcal I_\Delta(r)=0.
\end{align}$$

Thus the HHI Wick square is finite at the horizon and approaches the covering-AdS renormalized value at infinity.

For the primary benchmark,

$$\begin{align}
\Delta=2,\qquad r_+=\ell=1,
\end{align}$$

Mathematica gives

$$\begin{align}
\mathcal I_2(r_+) =1.1100632908032619\times10^{-6},
\end{align}$$

and minimal geodesic subtraction gives

$$\begin{align}
\langle\phi^2(r_+)\rangle_{\rm ren} =-0.07957636148265686.
\end{align}$$

## 5. Fixed-$\Delta$ Renormalization

Choose the finite mass counterterm so that the physical asymptotic dimension remains $\Delta$. This cancels the homogeneous covering-space insertion,

$$\begin{align}
\frac{\lambda}{2} \left[ -\frac{\Delta-1}{4\pi\ell} +c_{\rm scheme} \right] +\delta\mu^2=0.
\end{align}$$

The residual BTZ tadpole is then

$$\begin{align}
\boxed{ \Sigma_{\rm BTZ}(r) =\frac{\lambda}{2}\mathcal I_\Delta(r)
}.
\end{align}$$

It is finite at the horizon and vanishes at the AdS boundary. It is not removable by a constant mass counterterm.

This is the precise correction to the global-AdS result. On homogeneous $\mathbb H^3$, the convolution identity

$$\begin{align}
\int G_0G_0=-\partial_{\mu^2}G_0
\end{align}$$

turns the tadpole into a constant mass shift. On BTZ, $\mathcal I_\Delta(r)$ breaks that reduction because the quotient preserves stationarity and axisymmetry but not transitivity in $r$.

## 6. Lorentzian Interpretation

After HHI analytic continuation, the same local insertion modifies the linearized operator as

$$\begin{align}
P_{\rm eff} =\Box-\mu^2-\Sigma_{\rm tad}(r).
\end{align}$$

At fixed physical $\Delta$,

$$\begin{align}
P_{\rm eff} =\Box-\mu^2 -\frac{\lambda}{2}\mathcal I_\Delta(r) +O(\lambda^2).
\end{align}$$

In each $(\omega,m)$ sector, the first propagator correction is a one-dimensional radial Born insertion. It preserves Killing frequency and angular momentum but scatters radial modes through the finite potential $\lambda\mathcal I_\Delta(r)/2$.

For the primary $\Delta=2$ model, the Euclidean Matsubara-sector resolvent is now explicit. With

$$\begin{align}
z=1-\frac{r_+^2}{r^2},
\end{align}$$

the correction is

$$\begin{align}
\delta g_{km}(z,z') =-\frac{\lambda}{4} \int_0^1\frac{dy}{(1-y)^2}\, g_{km}(z,y)\mathcal I_2(y)g_{km}(y,z').
\end{align}$$

The horizon-regular and standard-boundary solutions, their Gamma-function Wronskian, the Born-equation residual, and six converged numerical sectors are given in radial Born correction.md.

## 7. What This Test Validates

The tadpole test separates three layers that were conflated in the homogeneous example:

1. UV renormalization is local and insensitive to the horizon.
2. The choice of HHI state and BTZ quotient changes the finite Wick square.
3. The finite self-energy is local in spacetime but need not be a constant parameter shift.

The tested perturbative pipeline is therefore

$$\begin{align}
(P,\mathcal B_\infty,\Omega,E) \longrightarrow
W_{\rm HHI} \longrightarrow
[\phi^2]_{\rm ren} \longrightarrow
\Sigma_{\rm tad}(r) \longrightarrow
G^{(1)}.
\end{align}$$

## 8. Verification Status

Verified:

1. Mathematica checked

$$\begin{align}
(-\nabla^2+\mu^2)G_\Delta^{\mathbb H^3}=0
\end{align}$$

   for separated points.
2. Mathematica checked the short-distance finite term $-(\Delta-1)/(4\pi\ell)$.
3. Mathematica checked the image-distance horizon limit and the closed horizon-series form.
4. A fifty-image numerical sum at $\Delta=2$, $r_+=\ell=1$ gives the displayed value.
5. The Wick contraction coefficient agrees with the existing global-AdS tadpole calculation.
6. The complete fixed-sector radial Born formula satisfies

$$\begin{align}
K_{km}\delta g_{km} =-\Sigma_{\rm BTZ}g_{km}.
\end{align}$$

7. The $(k,m)=(0,0),(0,1),(1,0),(1,1),(2,0),(2,1)$ integrals were evaluated and checked for image-cutoff and numerical-accuracy stability.

Assumptions:

1. The quotient image formula uses standard AdS quantization.
2. The fixed-$\Delta$ scheme uses the same covering-space renormalization condition as the global-AdS calculation.
3. The interaction is treated perturbatively on the fixed HHI background.

Not verified:

1. The interacting order-$\lambda$ stress tensor and gravitational backreaction have not been computed.
2. Boundary-local counterterms beyond the fixed source-free standard condition have not been classified.
