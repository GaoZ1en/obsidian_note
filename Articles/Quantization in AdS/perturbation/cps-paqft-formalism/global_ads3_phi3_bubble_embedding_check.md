# Global AdS3 \(\phi^3\) bubble in embedding variables

Date: 2026-07-09

## 0. Direct verdict

Correct under the following precise conditions:

1. The field is an ordinary real scalar on fixed global \(\mathrm{AdS}_3\), with no gauge constraint and no boundary degree of freedom.
2. The free propagator is the Euclidean continuation of the CPS-normalized global-AdS vacuum two-point function.
3. The Euclidean interaction is

$$\begin{align}
S_E^{\rm int} = \int_{\mathbb H^3}d^3X\sqrt g\, \frac{\kappa}{3!}\phi^3 .
\end{align}$$

4. A linear counterterm is chosen so that the one-point function remains zero:

$$\begin{align}
\langle\phi(X)\rangle_{\rm ren}=0.
\end{align}$$

Under these assumptions, the connected one-loop bubble correction to the two-point function is

$$\begin{align}
G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int_{\mathbb H^3}d^3Z\sqrt g \int_{\mathbb H^3}d^3W\sqrt g\, G_\nu(X,Z)G_\nu(Z,W)^2G_\nu(W,Y).
\end{align}$$

Embedding variables reduce this double integral to a one-dimensional spectral integral:

$$\begin{align}
\boxed{ G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int_0^\infty dp\, \Omega_p(\zeta) \frac{b_\nu(p)}{(p^2+\nu^2)^2}
}
\end{align}$$

with

$$\begin{align}
\zeta=-X\cdot Y, \qquad \Omega_p(\zeta) = \frac{p\sin[p\,\operatorname{arccosh}\zeta]} {2\pi^2\sqrt{\zeta^2-1}},
\end{align}$$

and

$$\begin{align}
\boxed{ b_\nu(p) = \frac{\operatorname{Im}\psi\!\left(\nu+\frac12+\frac{i p}{2}\right)} {4\pi p}
}
\end{align}$$

where \(\psi\) is the digamma function. This is the first genuinely nonlocal one-loop two-point structure in the scalar examples considered so far.

## 1. Free Euclidean propagator

As in the \(\phi^4\) tadpole check, use

$$\begin{align}
m^2=\Delta(\Delta-2)=\nu^2-1, \qquad \Delta=1+\nu, \qquad \nu>0.
\end{align}$$

The Euclidean \(\mathbb H^3\) propagator is

$$\begin{align}
G_\nu(\rho) = \frac{e^{-\nu\rho}}{4\pi\sinh\rho}, \qquad \rho=\operatorname{arccosh}\zeta, \qquad \zeta=-X\cdot Y.
\end{align}$$

It satisfies

$$\begin{align}
\left(-\nabla_{\mathbb H^3}^2+\nu^2-1\right)G_\nu(X,Y) = \frac{\delta_{\mathbb H^3}(X,Y)}{\sqrt g}.
\end{align}$$

The harmonic function basis is

$$\begin{align}
\Omega_p(\rho) = \frac{p\sin(p\rho)}{2\pi^2\sinh\rho}, \qquad p\ge0.
\end{align}$$

With this normalization,

$$\begin{align}
G_\nu(\rho) = \int_0^\infty dp\, \frac{\Omega_p(\rho)}{p^2+\nu^2}.
\end{align}$$

This is just the embedding/geodesic-distance version of the normal-mode sum. The CPS input is still the normalization of the free modes and hence of \(G_\nu\).

## 2. Wick contraction and symmetry factor

Expand the normalized Euclidean correlator

$$\begin{align}
\frac{ \langle
\phi(X)\phi(Y)e^{-S_E^{\rm int}}
\rangle_0
}{ \langle e^{-S_E^{\rm int}}\rangle_0
}
\end{align}$$

to second order in \(\kappa\):

$$\begin{align}
G^{(1)}_{\kappa^2}(X,Y) = \frac{1}{2} \left(\frac{\kappa}{3!}\right)^2 \int d^3Z\sqrt g \int d^3W\sqrt g\, \langle \phi(X)\phi(Y)\phi(Z)^3\phi(W)^3 \rangle_{0,\rm conn}.
\end{align}$$

The bubble contraction has:

1. two choices for which vertex connects to \(X\) and which connects to \(Y\);
2. three choices at the \(X\)-vertex;
3. three choices at the \(Y\)-vertex;
4. two pairings of the remaining legs between \(Z\) and \(W\).

Thus the contraction count is

$$\begin{align}
2\cdot3\cdot3\cdot2=36.
\end{align}$$

Since

$$\begin{align}
\frac12\frac{1}{(3!)^2}\cdot36 = \frac12,
\end{align}$$

the connected bubble contribution is

$$\begin{align}
G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int d^3Z\sqrt g \int d^3W\sqrt g\, G_\nu(X,Z)G_\nu(Z,W)^2G_\nu(W,Y).
\end{align}$$

The sign is the Euclidean sign for \(e^{-S_E^{\rm int}}\). In Lorentzian signature the same graph is represented by the usual \(i\)-weighted Feynman rules.

## 3. One-point counterterm

The cubic interaction also generates a one-point tadpole at first order:

$$\begin{align}
\langle\phi(X)\rangle^{(1)} = - \frac{\kappa}{2} \int d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Z).
\end{align}$$

This is a local background-shift effect. To keep perturbation theory around the same \(\phi=0\) background, introduce a linear counterterm

$$\begin{align}
S_E^{\rm lin} = \int d^3X\sqrt g\,J_{\rm ct}\phi,
\end{align}$$

and choose \(J_{\rm ct}\) so that

$$\begin{align}
\langle\phi(X)\rangle_{\rm ren}=0.
\end{align}$$

The bubble formula below is the connected two-point correction after this one-point condition has been imposed. Without this condition, disconnected one-point pieces contaminate the two-point function and the expansion is really around a shifted background.

## 4. Spectral representation of the squared propagator

The kernel

$$\begin{align}
B_\nu(Z,W):=G_\nu(Z,W)^2
\end{align}$$

is invariant under the \(\mathrm{SO}(1,3)\) isometries of \(\mathbb H^3\). Therefore it is diagonal in the same \(\Omega_p\) basis:

$$\begin{align}
G_\nu(\rho)^2 = \int_0^\infty dp\, \Omega_p(\rho)b_\nu(p).
\end{align}$$

To find \(b_\nu(p)\), write

$$\begin{align}
G_\nu(\rho)^2 = \frac{e^{-2\nu\rho}}{16\pi^2\sinh^2\rho}.
\end{align}$$

If

$$\begin{align}
f(\rho)=\int_0^\infty dp\, \frac{p\sin(p\rho)}{2\pi^2\sinh\rho}b(p),
\end{align}$$

then sine-transform inversion gives

$$\begin{align}
b(p) = \frac{4\pi}{p} \int_0^\infty d\rho\, \sinh\rho\,f(\rho)\sin(p\rho).
\end{align}$$

For \(f=G_\nu^2\),

$$\begin{align}
b_\nu(p) = \frac{1}{4\pi p} \int_0^\infty d\rho\, \frac{e^{-2\nu\rho}\sin(p\rho)}{\sinh\rho}.
\end{align}$$

Using

$$\begin{align}
\frac{1}{\sinh\rho} = 2\sum_{n=0}^\infty e^{-(2n+1)\rho},
\end{align}$$

one obtains

$$\begin{align}
b_\nu(p) = \frac{1}{2\pi}
\sum_{n=0}^\infty \frac{1}{(2n+2\nu+1)^2+p^2}.
\end{align}$$

Equivalently,

$$\begin{align}
b_\nu(p) = \frac{ \psi\!\left(\nu+\frac12+\frac{i p}{2}\right) - \psi\!\left(\nu+\frac12-\frac{i p}{2}\right)
}{8\pi i p} = \frac{\operatorname{Im}\psi\!\left(\nu+\frac12+\frac{i p}{2}\right)} {4\pi p}.
\end{align}$$

This coefficient is positive for \(p>0,\nu>0\). At large \(p\),

$$\begin{align}
b_\nu(p) \sim \frac{1}{8p},
\end{align}$$

so the spectral integral for the bubble two-point function is UV convergent in three bulk dimensions.

## 5. Bubble as a spectral self-energy

The free propagator acts diagonally as

$$\begin{align}
G_\nu \quad\longleftrightarrow\quad \frac{1}{p^2+\nu^2}.
\end{align}$$

The squared internal kernel \(G_\nu^2\) acts diagonally as \(b_\nu(p)\). Therefore

$$\begin{align}
G_\nu\,B_\nu\,G_\nu \quad\longleftrightarrow\quad \frac{b_\nu(p)}{(p^2+\nu^2)^2}.
\end{align}$$

Hence

$$\begin{align}
G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int_0^\infty dp\, \Omega_p(\zeta) \frac{b_\nu(p)}{(p^2+\nu^2)^2}.
\end{align}$$

If finite local counterterms are included,

$$\begin{align}
S_E^{\rm ct} = \int d^3X\sqrt g \left[ \frac{\delta m^2}{2}\phi^2 + \frac{\delta Z}{2}\nabla_\mu\phi\nabla^\mu\phi \right],
\end{align}$$

then the spectral numerator becomes

$$\begin{align}
\frac{\kappa^2}{2}b_\nu(p) - \delta m^2 - \delta Z(p^2+1).
\end{align}$$

Thus the renormalized correction can be written as

$$\begin{align}
G_{\nu,\rm ren}^{(1)}(X,Y) = \int_0^\infty dp\, \Omega_p(\zeta) \frac{ \frac{\kappa^2}{2}b_\nu(p) - \delta m^2 - \delta Z(p^2+1)
}{(p^2+\nu^2)^2}.
\end{align}$$

For the one-loop \(\phi^3\) bubble in three dimensions, the nonlocal part is finite. The counterterms above are therefore finite renormalization choices unless another diagram or renormalization condition requires a divergent subtraction.

## 6. Interpretation

The \(\phi^4\) tadpole correction was local:

$$\begin{align}
G^{(1)}_{\phi^4} \propto - \partial_{m^2}G_\nu.
\end{align}$$

The \(\phi^3\) bubble is different. Its spectral numerator

$$\begin{align}
\Sigma_{\rm bubble}(p) = \frac{\kappa^2}{2}b_\nu(p)
\end{align}$$

is a non-polynomial function of \(p\), because \(b_\nu(p)\) contains the digamma function. This is the first sign of a genuinely nonlocal one-loop self-energy on \(\mathrm{AdS}_3\).

In embedding variables, the final answer remains an invariant two-point function:

$$\begin{align}
G_{\nu,\rm bubble}^{(1)}(X,Y) = G_{\nu,\rm bubble}^{(1)}(\zeta), \qquad \zeta=-X\cdot Y.
\end{align}$$

The gain from the embedding/spectral representation is that the original double bulk integral is reduced to one spectral integral over \(p\).

## 7. Lorentzian continuation

The Lorentzian Feynman result is obtained by continuing the invariant

$$\begin{align}
\zeta_E=\cosh\rho \quad\longrightarrow\quad \zeta_F+i0,
\end{align}$$

with the \(i0\) prescription fixed by global-time ordering. The spectral representation becomes the corresponding Feynman spectral representation,

$$\begin{align}
G_{F,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int_0^\infty dp\, \Omega_p(\zeta_F+i0) \frac{b_\nu(p)}{(p^2+\nu^2-i0)^2},
\end{align}$$

up to the standard Lorentzian \(i\)-factor convention for the definition of the self-energy. The Euclidean expression is the cleanest way to define the invariant kernel before continuation.

## 8. What this calculation adds

1. The \(\phi^4\) tadpole only shifts \(m^2\). The \(\phi^3\) bubble produces a nonlocal spectral self-energy.
2. Wick theorem still does the computation; the only input from CPS is the free-mode normalization that fixes \(G_\nu\).
3. Embedding variables simplify the answer by reducing every invariant two-point structure to \(\zeta=-X\cdot Y\).
4. Harmonic analysis on \(\mathbb H^3\) reduces the double bulk integral to a one-dimensional integral with spectral density \(b_\nu(p)\).
5. The next genuinely vertex-level calculation is the \(\phi^4\) one-loop four-point function, where conformal cross-ratios rather than a single \(\zeta\) become unavoidable.

## 9. Verification status

Verified:

1. Mathematica checked the identity

$$\begin{align}
\sum_{n=0}^\infty \frac{1}{(2n+2\nu+1)^2+p^2} = \frac{ \psi\!\left(\nu+\frac12+\frac{i p}{2}\right) - \psi\!\left(\nu+\frac12-\frac{i p}{2}\right)
   }{4 i p}
\end{align}$$

   for \(\nu>0,p>0\).
2. Mathematica numerically checked that

$$\begin{align}
G_\nu(\rho)^2 = \int_0^\infty dp\,\Omega_p(\rho)b_\nu(p)
\end{align}$$

   at \(\nu=1.2,\rho=0.8\), with error about \(1.4\times10^{-16}\).
3. The Wick contraction symmetry factor was counted explicitly as

$$\begin{align}
\frac12\frac{36}{(3!)^2}=\frac12.
\end{align}$$

Assumptions:

1. The AdS radius is \(L=1\).
2. The global-AdS vacuum is defined by the CPS-normalized positive-energy modes.
3. The one-point function is renormalized to vanish, so the bubble is computed around the same \(\phi=0\) background.

Not verified:

1. No closed elementary expression for the final \(p\)-integral was derived.
2. No finite normal-mode cutoff computation was performed.
3. The Lorentzian \(i0\) prescription was stated by analytic continuation rather than by a direct contour calculation.
