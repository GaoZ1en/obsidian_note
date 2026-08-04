# Radial Born correction from the BTZ tadpole

Date: 2026-07-12

## 0. Direct verdict

The first $\lambda\phi^4$ correction has been reduced to and evaluated as a convergent one-dimensional radial Born integral in fixed Euclidean frequency and angular-momentum sectors.

For the fixed-physical-$\Delta$ scheme,

$$\begin{align}
\Sigma_{\rm BTZ}(r) =\frac{\lambda}{2}\mathcal I_2(r).
\end{align}$$

The correction is negative in the Euclidean Green function,

$$\begin{align}
\delta g_{km}=-g_{km}\Sigma_{\rm BTZ}g_{km},
\end{align}$$

and is finite for all exterior points, including the horizon limit.

## 1. Euclidean sector decomposition

Use

$$\begin{align}
\ell=r_+=1, \qquad \beta_H=2\pi, \qquad z=1-\frac1{r^2}.
\end{align}$$

Expand

$$\begin{align}
G_E(X,X') =\frac1{\beta_H\,2\pi}
\sum_{k,m\in\mathbb Z} e^{ik(\tau-\tau')+im(\varphi-\varphi')} g_{km}(r,r').
\end{align}$$

The radial operator is

$$\begin{align}
K_{km} =-\frac1r\frac{d}{dr} \left( r(r^2-1)\frac d{dr} \right) +\frac{k^2}{r^2-1} +\frac{m^2}{r^2}.
\end{align}$$

It is normalized by

$$\begin{align}
K_{km}g_{km}(r,r') =\frac{\delta(r-r')}{r}.
\end{align}$$

Only $|k|$ enters, so take $k\ge0$ below.

## 2. Horizon and boundary solutions

For $\Delta=2$, define

$$\begin{align}
a_{km} =\frac{2+k-im}{2}, \qquad b_{km} =\frac{2+k+im}{2}.
\end{align}$$

The solution regular at the Euclidean horizon is

$$\begin{align}
p_{km}(z) =z^{k/2}(1-z)\, {}_2F_1(a_{km},b_{km};1+k;z).
\end{align}$$

The solution with standard AdS falloff is

$$\begin{align}
q_{km}(z) =z^{k/2}(1-z)\, {}_2F_1(a_{km},b_{km};2;1-z).
\end{align}$$

Their radial Wronskian satisfies

$$\begin{align}
2z \left( p_{km}q_{km}'-p_{km}'q_{km} \right) =-\frac1{C_{km}},
\end{align}$$

where

$$\begin{align}
\boxed{ C_{km} =\frac{ \Gamma(a_{km})\Gamma(b_{km})
}{ 2\Gamma(2)\Gamma(k+1)
}
}.
\end{align}$$

The formula includes the Matsubara zero sector. For example,

$$\begin{align}
C_{00}=\frac12, \qquad C_{10}=\frac{\pi}{8}, \qquad C_{20}=\frac14.
\end{align}$$

## 3. Exact sector Green function

Let

$$\begin{align}
z_<:=\min(z,z'), \qquad z_>:=\max(z,z').
\end{align}$$

Then

$$\begin{align}
\boxed{ g_{km}(z,z') =C_{km}\, p_{km}(z_<)q_{km}(z_>)
}.
\end{align}$$

The derivative jump is

$$\begin{align}
-r(r^2-1) \left[ \partial_rg_{km} \right]_{r=r'-0}^{r=r'+0} =1,
\end{align}$$

which gives the required delta source.

The same kernel has the spectral representation

$$\begin{align}
g_{km}(r,r') =2\int_0^\infty d\omega\, \frac{ \omega R_{\omega m}(r)R_{\omega m}(r')
}{ \omega^2+k^2
}.
\end{align}$$

Thus the Euclidean radial resolvent and the Lorentzian real-frequency normalization use the same spectral measure.

## 4. Tadpole insertion

For $\Delta=2$,

$$\begin{align}
\mathcal I_2(z) =\frac1{2\pi}
\sum_{n=1}^\infty \frac{e^{-s_n(z)}}{\sinh s_n(z)},
\end{align}$$

where

$$\begin{align}
s_n(z) =\operatorname{arccosh} \left[ 1+\frac{2}{1-z}\sinh^2(\pi n) \right].
\end{align}$$

Since

$$\begin{align}
r\,dr=\frac{dz}{2(1-z)^2},
\end{align}$$

the complete first-order sector correction is

$$\begin{align}
\boxed{ \delta g_{km}(z,z') =-\frac{\lambda}{4} \int_0^1 \frac{dy}{(1-y)^2}\, g_{km}(z,y) \mathcal I_2(y) g_{km}(y,z')
}.
\end{align}$$

The integrand is regular at both endpoints:

1. the horizon-regular factors control $y\to0$;
2. the standard falloff of $q_{km}$ and the decay of $\mathcal I_2$ control $y\to1$.

## 5. Born equation

Applying $K_{km}$ to the first argument gives

$$\begin{align}
\boxed{ K_{km}^{(z)}\delta g_{km}(z,z') =-\Sigma_{\rm BTZ}(z)g_{km}(z,z')
}.
\end{align}$$

For $z>z'$, split the integral into the intervals

$$\begin{align}
(0,z'), \qquad (z',z), \qquad (z,1).
\end{align}$$

The nonhomogeneous part is controlled by

$$\begin{align}
M(z) =\frac{\Sigma_{\rm BTZ}(z)}{2(1-z)^2}
\end{align}$$

and the Wronskian identity

$$\begin{align}
2z(pq'-p'q)=-C_{km}^{-1}.
\end{align}$$

Substitution gives

$$\begin{align}
K_{km}\delta g_{km} +\Sigma_{\rm BTZ}g_{km}=0
\end{align}$$

away from $z=z'$. Mathematica reduced the resulting algebraic residual to zero.

## 6. Numerical evaluation

Take

$$\begin{align}
\lambda=1, \qquad x=-r_*, \qquad x=1, \qquad x'=1.5.
\end{align}$$

Thus

$$\begin{align}
z=\operatorname{sech}^2(1), \qquad z'=\operatorname{sech}^2(1.5).
\end{align}$$

The image sum was truncated at $n_{\max}=6$. The result had already stabilized by $n_{\max}=3$.

| $(k,m)$ | $C_{km}$ | $g_{km}^{(0)}$ | $\delta g_{km}$ | $\delta g/g^{(0)}$ |
|---:|---:|---:|---:|---:|
| $(0,0)$ | $0.5$ | $0.4337808305$ | $-4.441104822\times10^{-8}$ | $-1.023813066\times10^{-7}$ |
| $(0,1)$ | $0.3412847252$ | $0.3403483058$ | $-2.836270187\times10^{-8}$ | $-8.333434130\times10^{-8}$ |
| $(1,0)$ | $\pi/8$ | $0.1677146217$ | $-6.960166637\times10^{-9}$ | $-4.150005864\times10^{-8}$ |
| $(1,1)$ | $0.3130100828$ | $0.1496372908$ | $-5.714160981\times10^{-9}$ | $-3.818674443\times10^{-8}$ |
| $(2,0)$ | $0.25$ | $0.0665331785$ | $-1.475917724\times10^{-9}$ | $-2.218318375\times10^{-8}$ |
| $(2,1)$ | $0.2133029532$ | $0.0625092280$ | $-1.331888967\times10^{-9}$ | $-2.130707752\times10^{-8}$ |

For $(k,m)=(1,0)$,

$$\begin{align}
\delta g_{10} =-6.9601666372076867\times10^{-9}
\end{align}$$

for $n_{\max}=3,6,10$ to the displayed precision. Changing the numerical accuracy goal from $8$ to $10$ also left the result unchanged.

The small magnitude is physical for $r_+=\ell$: the first quotient image is suppressed by $e^{-4\pi}$ in the $\Delta=2$ tadpole.

## 7. Lorentzian continuation

The Euclidean correction is the analytic input for HHI time-ordered correlators. In the retarded Lorentzian problem,

$$\begin{align}
P_{\rm eff} =P-\Sigma_{\rm BTZ},
\end{align}$$

so

$$\begin{align}
G_{\rm ret} =G_{\rm ret}^{(0)} +\delta G_{\rm ret} +O(\lambda^2),
\end{align}$$

where, with operator composition displayed explicitly,

$$\begin{align}
\delta G_{\rm ret} =G_{\rm ret}^{(0)} \circ\Sigma_{\rm BTZ} \circ G_{\rm ret}^{(0)}.
\end{align}$$

The apparent sign change relative to the Euclidean formula follows from

$$\begin{align}
K_{\rm eff}=K+\Sigma_{\rm BTZ}, \qquad P_{\rm eff}=P-\Sigma_{\rm BTZ}.
\end{align}$$

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
