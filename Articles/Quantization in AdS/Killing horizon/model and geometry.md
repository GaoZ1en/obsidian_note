# Minimal benchmark: a scalar field on non-rotating BTZ

Date: 2026-07-12

## 0. Direct verdict

The first Killing-horizon benchmark will be a real scalar field on the maximally extended non-rotating BTZ black hole. The primary model is the massless minimally coupled scalar with standard AdS boundary conditions,

$$\begin{align}
\mu^2=0,\qquad \Delta=2,
\end{align}$$

while intermediate formulas are kept at generic

$$\begin{align}
\mu^2\ell^2=\Delta(\Delta-2),\qquad \Delta>1.
\end{align}$$

This choice is useful because it has all of the structures that the formalism must distinguish:

1. a non-extremal bifurcate Killing horizon;
2. a timelike AdS conformal boundary where a boundary condition is genuinely required;
3. a continuous real-frequency spectrum in each exterior;
4. a smooth Euclidean section that selects the Hawking temperature;
5. an exact quotient construction of Green functions;
6. no rotation, superradiance, gauge constraint, or dynamical-gravity ambiguity.

The horizon is not imposed as a Lorentzian boundary of the maximally extended theory. A horizon term can appear in a regional balance law when the chosen hypersurfaces meet different horizon cuts.

## 1. Geometry

Use signature $(-,+,+)$ and coordinates

$$\begin{align}
(t,r,\varphi),\qquad \varphi\sim\varphi+2\pi.
\end{align}$$

The non-rotating BTZ metric is

$$\begin{align}
ds^2=-f(r)\,dt^2+\frac{dr^2}{f(r)}+r^2d\varphi^2, \qquad f(r)=\frac{r^2-r_+^2}{\ell^2}.
\end{align}$$

The stationary Killing field is

$$\begin{align}
\chi=\partial_t, \qquad \chi^2=-f(r).
\end{align}$$

It is timelike for $r>r_+$, null at $r=r_+$, and vanishes on the bifurcation circle in the maximally extended geometry. Its surface gravity and Hawking inverse temperature are

$$\begin{align}
\kappa=\frac12 f'(r_+)=\frac{r_+}{\ell^2}, \qquad \beta_H=\frac{2\pi}{\kappa}=\frac{2\pi\ell^2}{r_+}.
\end{align}$$

The local curvature invariants are

$$\begin{align}
R_{ab}=-\frac{2}{\ell^2}g_{ab}, \qquad R=-\frac{6}{\ell^2}, \qquad R_{abcd}R^{abcd}=\frac{12}{\ell^4}.
\end{align}$$

Thus the horizon is not a local curvature singularity. The nontrivial physics comes from the AdS quotient and its causal structure.

## 2. Tortoise and Kruskal coordinates

Define

$$\begin{align}
r_*=\frac{\ell^2}{2r_+}\log\frac{r-r_+}{r+r_+}, \qquad \frac{dr_*}{dr}=\frac1{f(r)}.
\end{align}$$

In the right exterior,

$$\begin{align}
r_*\in(-\infty,0).
\end{align}$$

With

$$\begin{align}
u=t-r_*, \qquad v=t+r_*,
\end{align}$$

introduce

$$\begin{align}
U=-e^{-\kappa u}, \qquad V=e^{\kappa v}.
\end{align}$$

Then

$$\begin{align}
UV=-\frac{r-r_+}{r+r_+}, \qquad r=r_+\frac{1-UV}{1+UV},
\end{align}$$

and the metric becomes

$$\begin{align}
ds^2 =-\frac{4\ell^2}{(1+UV)^2}\,dU\,dV +r_+^2\left(\frac{1-UV}{1+UV}\right)^2d\varphi^2.
\end{align}$$

The future and past horizons are $U=0$ and $V=0$, respectively. The Killing field is

$$\begin{align}
\chi=\kappa\left(V\partial_V-U\partial_U\right).
\end{align}$$

This form makes two distinct facts explicit:

1. the metric is regular at $U=0$ and $V=0$;
2. the static coordinate $t$ is singular there.

A condition such as “ingoing at the future horizon” is therefore a condition for a scattering or retarded-response problem. It is not an additional local boundary condition defining the global Lorentzian field theory.

## 3. Scalar theory

On the fixed BTZ background, take

$$\begin{align}
S_0[\phi] =-\frac12\int_M d^3x\sqrt{-g} \left(\nabla_a\phi\nabla^a\phi+\mu^2\phi^2\right).
\end{align}$$

The equation of motion is

$$\begin{align}
P\phi=0, \qquad P:=\Box-\mu^2.
\end{align}$$

For the primary benchmark,

$$\begin{align}
\mu^2=0,\qquad \Delta=2.
\end{align}$$

The generic standard-quantization asymptotics are

$$\begin{align}
\phi =\phi_{(2-\Delta)}\,r^{\Delta-2} +\phi_{(\Delta)}\,r^{-\Delta} +\cdots .
\end{align}$$

The source-free standard boundary condition is

$$\begin{align}
\phi_{(2-\Delta)}=0.
\end{align}$$

For $\Delta=2$, this removes the constant source branch and leaves $\phi=O(r^{-2})$.

## 4. Variational problem

The first variation is

$$\begin{align}
\delta S_0 =\int_M d^3x\sqrt{-g}\,(P\phi)\,\delta\phi -\int_{\partial M}d^2x\sqrt{|h|}\, n^a\nabla_a\phi\,\delta\phi.
\end{align}$$

The source-free AdS boundary condition makes the asymptotic term vanish for allowed variations. On a global Cauchy surface of the maximally extended spacetime, the Killing horizon is an interior null hypersurface and contributes no separate variational boundary term.

If one deliberately truncates to a region whose boundary contains a horizon segment, then the horizon term is retained as flux data. It is not canceled by imposing a second theory-defining boundary condition.

## 5. Euclidean regularity

Set $t=-i\tau$. Near $r=r_+$, define

$$\begin{align}
r-r_+=\frac{\kappa}{2}\rho^2.
\end{align}$$

The Euclidean metric has the leading form

$$\begin{align}
ds_E^2 =d\rho^2+\kappa^2\rho^2d\tau^2+r_+^2d\varphi^2+O(\rho^2).
\end{align}$$

Smoothness at $\rho=0$ requires

$$\begin{align}
\tau\sim\tau+\frac{2\pi}{\kappa}.
\end{align}$$

This periodicity selects the Hartle-Hawking-Israel state. It is a state-selection and regularity condition, not a Lorentzian horizon boundary condition.

## 6. Verification status

Verified:

1. xCoba computed

$$\begin{align}
R_{ab}=-2g_{ab}/\ell^2,\qquad R=-6/\ell^2,\qquad R_{abcd}R^{abcd}=12/\ell^4.
\end{align}$$

2. Mathematica checked $\mathcal L_\chi g=0$ componentwise.
3. Mathematica checked $dr_*/dr=1/f$, the Kruskal metric coefficients, and $\kappa=f'(r_+)/2$.
4. Mathematica checked the near-horizon Euclidean radial coefficient and the period $2\pi/\kappa$.
5. xAct computed the scalar first variation and symplectic potential.

Assumptions:

1. The metric is fixed; gravitational backreaction is excluded.
2. The primary theory uses standard source-free AdS boundary conditions.
3. The quotient singularity at $r=0$ is outside the exterior benchmark.

Not verified:

1. No rotating or extremal limit is included.
2. No nonminimal curvature coupling is included in the primary model.
