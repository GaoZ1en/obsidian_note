# Global AdS3 \(\phi^4\) tadpole in embedding variables

Date: 2026-07-09

## 0. Direct verdict

Correct under the following precise conditions:

1. The field is an ordinary real scalar on fixed global \(\mathrm{AdS}_3\), with no gauge constraint and no dynamical boundary mode.
2. The free field is quantized by the existing CPS prescription: solve normal modes, normalize them by the KG/CPS symplectic form, impose \([a_N,a_M^\dagger]=\delta_{NM}\), and define the global AdS vacuum by \(a_N|0\rangle=0\).
3. The interaction is

$$\begin{align}
S_E^{\rm int} = \int_{\mathbb H^3} d^3X\sqrt g\, \frac{\lambda}{4!}\phi^4
\end{align}$$

   in Euclidean signature.
4. The one-loop coincident propagator is regulated by geodesic point splitting or an equivalent local regulator, and its divergence is absorbed by the local mass counterterm

$$\begin{align}
S_E^{\rm ct} = \int_{\mathbb H^3} d^3X\sqrt g\, \frac{\delta m^2}{2}\phi^2 .
\end{align}$$

Under these assumptions, the first quantum correction to the Euclidean two-point function is

$$\begin{align}
G_{\nu,\rm ren}^{(1)}(X,Y) = - \delta m_{\rm eff}^2\, \frac{\operatorname{arccosh}\zeta}{2\nu} G_\nu(\zeta), \qquad \zeta=-X\cdot Y,
\end{align}$$

where

$$\begin{align}
\nu=\Delta-1=\sqrt{1+m^2}, \qquad G_\nu(\zeta) = \frac{1}{4\pi} \frac{\exp[-\nu\,\operatorname{arccosh}\zeta]} {\sqrt{\zeta^2-1}},
\end{align}$$

and

$$\begin{align}
\delta m_{\rm eff}^2 = \frac{\lambda}{2}G_{\nu,\rm ren}(X,X) +\delta m_{\rm fin}^2 .
\end{align}$$

Thus the \(\phi^4\) tadpole does not generate a new nonlocal structure. It only shifts the scalar mass, equivalently the conformal weight \(\Delta=1+\nu\), up to the chosen finite mass-renormalization condition.

## 1. Free propagator from the CPS-normalized modes

The existing free scalar CPS quantization uses normal modes \(u_N(x)\) satisfying

$$\begin{align}
\Omega[u_N,u_M^*]=-i\delta_{NM},
\end{align}$$

or the equivalent convention that gives

$$\begin{align}
[\hat a_N,\hat a_M^\dagger]=\delta_{NM}.
\end{align}$$

The field is expanded as

$$\begin{align}
\hat\phi(x) = \sum_N \left( \hat a_N u_N(x) + \hat a_N^\dagger u_N^*(x) \right), \qquad \hat a_N|0\rangle=0.
\end{align}$$

The positive-frequency two-point function is therefore

$$\begin{align}
W^+(x,y) = \langle0|\hat\phi(x)\hat\phi(y)|0\rangle = \sum_N u_N(x)u_N^*(y).
\end{align}$$

The time-ordered propagator is

$$\begin{align}
G_F(x,y) = \theta(t_x-t_y)W^+(x,y) + \theta(t_y-t_x)W^+(y,x).
\end{align}$$

After Wick rotation to Euclidean \(\mathrm{AdS}_3=\mathbb H^3\), the same object is represented by the Euclidean mode sum

$$\begin{align}
G_\nu(X,Y) = \sum_N u_{N,E}(X)u_{N,E}^*(Y).
\end{align}$$

For the scalar with

$$\begin{align}
m^2=\Delta(\Delta-2)=\nu^2-1, \qquad \Delta=1+\nu, \qquad \nu>0,
\end{align}$$

the mode sum gives the standard \(\mathbb H^3\) Green function

$$\begin{align}
G_\nu(\rho) = \frac{1}{4\pi} \frac{e^{-\nu\rho}}{\sinh\rho},
\end{align}$$

where \(\rho\) is the Euclidean geodesic distance.

This is the concrete replacement for the abstract pAQFT phrase "choose the free two-point function" in this project: the two-point function is the time-ordered or Euclidean sum over CPS-normalized free normal modes.

## 2. Embedding-space form

Use the hyperboloid model

$$\begin{align}
\mathbb H^3 = \left\{ X\in\mathbb R^{1,3}
\,\middle|\, X\cdot X=-1,\ X^0>0 \right\}, \qquad \eta=(-,+,+,+).
\end{align}$$

The invariant between two points is

$$\begin{align}
\zeta(X,Y) = -X\cdot Y = \cosh\rho(X,Y).
\end{align}$$

Then

$$\begin{align}
\sinh\rho=\sqrt{\zeta^2-1}, \qquad \rho=\operatorname{arccosh}\zeta,
\end{align}$$

and the propagator becomes

$$\begin{align}
G_\nu(X,Y) = G_\nu(\zeta) = \frac{1}{4\pi} \frac{\exp[-\nu\,\operatorname{arccosh}\zeta]} {\sqrt{\zeta^2-1}}.
\end{align}$$

This is where embedding variables simplify the calculation: all isometry-invariant two-point structures are functions of the single variable \(\zeta\).

## 3. One-loop tadpole from Wick theorem

The Euclidean interacting two-point function is computed by expanding

$$\begin{align}
\frac{ \langle
\phi(X)\phi(Y)
\exp[-S_E^{\rm int}-S_E^{\rm ct}]
\rangle_0
}{ \langle
\exp[-S_E^{\rm int}-S_E^{\rm ct}]
\rangle_0
}.
\end{align}$$

At first order in \(\lambda\),

$$\begin{align}
G^{(1)}_{\lambda}(X,Y) = - \frac{\lambda}{4!} \int_{\mathbb H^3}d^3Z\sqrt g\, \langle \phi(X)\phi(Y)\phi(Z)^4 \rangle_{0,\rm conn}.
\end{align}$$

Wick theorem gives the connected contraction count

$$\begin{align}
4\cdot3=12, \qquad \frac{12}{4!}=\frac12.
\end{align}$$

Therefore

$$\begin{align}
G^{(1)}_{\lambda}(X,Y) = - \frac{\lambda}{2} \int_{\mathbb H^3}d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Z)G_\nu(Z,Y).
\end{align}$$

The counterterm contributes

$$\begin{align}
G^{(1)}_{\rm ct}(X,Y) = - \delta m^2 \int_{\mathbb H^3}d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y).
\end{align}$$

Thus

$$\begin{align}
G^{(1)}(X,Y) = - \left[ \frac{\lambda}{2}G_\nu(Z,Z)+\delta m^2 \right] \int_{\mathbb H^3}d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y),
\end{align}$$

where \(G_\nu(Z,Z)\) is independent of \(Z\) after using an invariant regulator.

## 4. Coincident limit and local mass renormalization

The short-distance expansion is

$$\begin{align}
G_\nu(\rho) = \frac{1}{4\pi\rho} - \frac{\nu}{4\pi} + O(\rho).
\end{align}$$

The divergent piece is local and is absorbed into \(\delta m^2\). With geodesic point splitting,

$$\begin{align}
G_\nu^{\rm div}(X,X) = \frac{1}{4\pi\epsilon}.
\end{align}$$

Define the finite coincident value by

$$\begin{align}
G_{\nu,\rm ren}(X,X) = \lim_{\epsilon\to0} \left[ G_\nu(\epsilon) - \frac{1}{4\pi\epsilon} \right] + c_{\rm scheme}.
\end{align}$$

In the minimal geodesic-subtraction scheme,

$$\begin{align}
G_{\nu,\rm ren}(X,X) = - \frac{\nu}{4\pi}.
\end{align}$$

More generally the scheme-dependent finite local choice is encoded in \(c_{\rm scheme}\) or, equivalently, in \(\delta m_{\rm fin}^2\). The only invariant statement is that the tadpole produces the local mass insertion

$$\begin{align}
\delta m_{\rm eff}^2 = \frac{\lambda}{2}G_{\nu,\rm ren}(X,X) + \delta m_{\rm fin}^2.
\end{align}$$

For minimal geodesic subtraction,

$$\begin{align}
\delta m_{\rm eff}^2 = - \frac{\lambda\nu}{8\pi} + \delta m_{\rm fin}^2.
\end{align}$$

If the renormalization condition is that the physical \(\Delta\) remains fixed at this order, choose

$$\begin{align}
\delta m_{\rm fin}^2 = \frac{\lambda\nu}{8\pi},
\end{align}$$

and the tadpole correction to the two-point function is set to zero by definition.

This is the fixed-physical-$\Delta$ branch. It is mutually exclusive with the shifted-$\Delta$ branch below: once $\delta m_{\rm eff}^2=0$ is imposed, the tadpole determines the finite counterterm and does not generate a nonzero $\Delta_{\rm eff}-\Delta$.

## 5. Convolution identity

Let \(P_\nu=-\nabla^2+m^2\), with \(m^2=\nu^2-1\), and

$$\begin{align}
P_\nu G_\nu(X,Y) = \frac{\delta_{\mathbb H^3}(X,Y)}{\sqrt g}.
\end{align}$$

Differentiate this equation with respect to \(m^2\):

$$\begin{align}
P_\nu \frac{\partial G_\nu(X,Y)}{\partial m^2} + G_\nu(X,Y) = 0.
\end{align}$$

Multiplying by another Green function gives

$$\begin{align}
\int_{\mathbb H^3}d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y) = - \frac{\partial G_\nu(X,Y)}{\partial m^2}.
\end{align}$$

Since

$$\begin{align}
\frac{\partial}{\partial m^2} = \frac{1}{2\nu}\frac{\partial}{\partial\nu},
\end{align}$$

and

$$\begin{align}
\frac{\partial G_\nu(\zeta)}{\partial\nu} = - \operatorname{arccosh}\zeta\,G_\nu(\zeta),
\end{align}$$

one obtains

$$\begin{align}
\int_{\mathbb H^3}d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y) = \frac{\operatorname{arccosh}\zeta}{2\nu} G_\nu(\zeta).
\end{align}$$

Therefore the renormalized one-loop correction is

$$\begin{align}
\boxed{ G_{\nu,\rm ren}^{(1)}(X,Y) = - \delta m_{\rm eff}^2 \frac{\operatorname{arccosh}\zeta}{2\nu} G_\nu(\zeta)
}.
\end{align}$$

Alternatively, if the finite local mass shift is retained rather than canceled by the renormalization condition,

$$\begin{align}
G_\nu(X,Y)+G_{\nu,\rm ren}^{(1)}(X,Y) = G_{\nu+\delta\nu}(X,Y)+O(\lambda^2), \qquad \delta\nu = \frac{\delta m_{\rm eff}^2}{2\nu}.
\end{align}$$

the tadpole shifts the effective AdS mass and therefore the conformal weight,

$$\begin{align}
\Delta_{\rm eff} = 1+\nu+\frac{\delta m_{\rm eff}^2}{2\nu} +O(\lambda^2).
\end{align}$$

Writing

$$\begin{align}
\nu_R=\nu+\delta\nu,\qquad \delta\nu=\frac{\delta m_{\rm eff}^2}{2\nu},\qquad \Delta_R=1+\nu_R,
\end{align}$$

the corresponding renormalized boundary two-point function is

$$\begin{align}
\langle\mathcal O_R(x)\mathcal O_R(y)\rangle_{\rm tad}
=Z_{\mathcal O}^2\frac{2\nu_R^2/\pi}{[2Q(x,y)]^{1+\nu_R}},
\qquad
Q(x,y)=\cosh(\tau-\tau')-\cos(\varphi-\varphi').
\end{align}$$

For $Z_{\mathcal O}=1$, its first-order expansion is the free boundary correlator multiplied by

$$\begin{align}
1+\delta\nu\left[\frac{2}{\nu}-\log(2Q)\right]+O(\lambda^2).
\end{align}$$

This formula uses the renormalized falloff $r^{-\Delta_R}$. Applying a fixed-$\Delta$ extrapolate limit to the isolated bulk correction instead leaves the perturbative $\delta\nu\log r$ term and mixes the two renormalization branches.

## 6. Lorentzian continuation

The Lorentzian global-AdS Feynman propagator is obtained by the standard analytic continuation of the Euclidean invariant,

$$\begin{align}
\zeta_E=\cosh\rho \quad\longrightarrow\quad \zeta_F(X,Y)+i0,
\end{align}$$

with the \(i0\) prescription determined by time ordering. Then

$$\begin{align}
G_F(X,Y) = \frac{1}{4\pi} \frac{ \exp[-\nu\,\operatorname{arccosh}(\zeta_F+i0)]
}{ \sqrt{(\zeta_F+i0)^2-1}
}.
\end{align}$$

The same tadpole result becomes

$$\begin{align}
G_{F,\rm ren}^{(1)}(X,Y) = - \delta m_{\rm eff}^2 \frac{\operatorname{arccosh}(\zeta_F+i0)}{2\nu} G_F(X,Y).
\end{align}$$

The Lorentzian expression is the analytic continuation of the Euclidean calculation, not an independent new rule.

## 7. What this calculation teaches

1. The practical perturbation theory is ordinary Wick contraction using the CPS-normalized free propagator.
2. For \(\phi^4\) in homogeneous \(\mathrm{AdS}_3\), the one-loop tadpole is purely local and only renormalizes \(m^2\), hence \(\Delta\).
3. Embedding variables simplify the final expression because every invariant two-point function depends only on \(\zeta=-X\cdot Y\).
4. A nontrivial nonlocal one-loop structure first appears in diagrams such as the \(\phi^3\) bubble or the \(\phi^4\) one-loop four-point function, not in the \(\phi^4\) tadpole two-point correction.

## 8. Verification status

Verified:

1. Mathematica checked that

$$\begin{align}
G_\nu(\rho) = \frac{e^{-\nu\rho}}{4\pi\sinh\rho}
\end{align}$$

   satisfies

$$\begin{align}
\left[ \frac{d^2}{d\rho^2} +2\coth\rho\,\frac{d}{d\rho} -(\nu^2-1) \right]G_\nu(\rho)=0
\end{align}$$

   for \(\rho>0\).
2. Mathematica checked

$$\begin{align}
\frac{1}{2\nu}\partial_\nu G_\nu(\rho) = - \frac{\rho}{2\nu}G_\nu(\rho).
\end{align}$$

3. Mathematica checked the short-distance expansion

$$\begin{align}
G_\nu(\rho) = \frac{1}{4\pi\rho} - \frac{\nu}{4\pi} + O(\rho).
\end{align}$$

4. Mathematica checked the shifted-dimension boundary formula to first order:

$$\begin{align}
\frac{2\nu_R^2[2Q]^{-1-\nu_R}}{2\nu^2[2Q]^{-1-\nu}}
=1+\delta\nu\left[\frac{2}{\nu}-\log(2Q)\right]+O(\lambda^2),
\end{align}$$

with vanishing residual for $\nu>0$ and $Q>0$.

Assumptions:

1. The AdS radius is set to \(L=1\).
2. The Euclidean propagator is the analytic continuation of the global AdS vacuum two-point function defined by the CPS-normalized positive-energy modes.
3. The coincident subtraction is local and invariant.

Not verified:

1. No explicit finite cutoff mode sum was evaluated here.
2. No boundary counterterm or alternate quantization was included.
3. The Lorentzian \(i0\) prescription was stated by analytic continuation rather than checked by a contour calculation.
