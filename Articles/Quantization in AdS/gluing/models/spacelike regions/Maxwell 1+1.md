## Gauge Policy and Setup

Cut the interval $\displaystyle{[-L,L]}$ at $\displaystyle{x=0}$ and use

$$\begin{align}
y_{1} & =x+L, & y_{2} & =L-x.
\end{align}$$

Both regional coordinates increase from the physical endpoint to the artificial interface. Write

$$\begin{align}
A_{i} & =A_{t,i}\mathrm{d}t+A_{y,i}\mathrm{d}y_{i}, & E_{i} & =F_{ty_{i}}=\dot{A}_{y,i}-\partial _{y_{i}}A_{t,i}.
\end{align}$$

The gauge group is compact $\mathrm{U}(1)$, with $A_i\mapsto A_i+\mathrm{d}\lambda_i$ for a local lift of $g_i=e^{i\lambda_i}$. A physical gauge frame is fixed at each outer endpoint. The regional proper gauge group is

$$\begin{align}
\mathcal{G}_{i}^{0} =\left\{g_i=e^{i\lambda_i}\mid g_i(t,0)=g_i(t,L)=1\right\}.
\end{align}$$

The endpoint condition is imposed on the group-valued transformation, not on a chosen real lift. A lift may therefore obey

$$\begin{align}
\lambda_i(t,L)-\lambda_i(t,0)&=2\pi w, &w&\in\mathbb Z.
\end{align}$$

Consequently a large proper transformation shifts

$$\begin{align}
a_i:=\int_0^L\mathrm{d}y_i\,A_{y,i} \quad\longmapsto\quad a_i+2\pi w.
\end{align}$$

It is this based large-gauge identification, rather than compactness stated by itself, that makes $a_i$ a $2\pi$-periodic $\mathrm{U}(1)$ coordinate.

Three gauge roles will remain distinct:

1. transformations in $\mathcal G_i^0$ are quotiented in the regional theory;
2. a transformation that is identity at the physical endpoint but has $\lambda_{i,\Gamma}:=\lambda_i(t,L)\neq0$ maps

$$\begin{align}
   a_i&\mapsto a_i+\lambda_{i,\Gamma}, & \alpha_i&\mapsto\alpha_i+\dot\lambda_{i,\Gamma}.
\end{align}$$

   It is not a presymplectic kernel inside one fixed-history space $\mathcal P_i[\alpha_i]$. It is boundary-frame covariance between different fixed-history problems, with Hamiltonian boundary charge $E_i$;
3. after sewing, a continuous global proper gauge transformation has $\lambda_{1,\Gamma}=\lambda_{2,\Gamma}$. Its diagonal action has moment map $\mu_\Gamma=E_1+E_2$. On $\mu_\Gamma^{-1}(0)$ the diagonal direction is a kernel of the pulled-back two-form and is quotiented.

At the physical endpoint fix

$$\begin{align}
A_{t,i}(t,0)&=0,
\end{align}$$

and at the artificial endpoint prescribe a history

$$\begin{align}
A_{t,i}(t,L)&=\alpha_i(t), &\delta\alpha_i(t)&=0
\end{align}$$

during the regional variational problem and regional quantization.

## Regional Action and CPS

The regional action is

$$\begin{align}
S_i &=-\frac14\int_{t_i}^{t_f}\mathrm{d}t\int_0^L\mathrm{d}y_i\, F_{i,\mu\nu}F_i^{\mu\nu}\\
 &=\frac12\int_{t_i}^{t_f}\mathrm{d}t\int_0^L\mathrm{d}y_i\,E_i^2.
\end{align}$$

Vary the full action before solving Gauss law or choosing a gauge representative:

$$\begin{align}
\delta S_i &=\int_{t_i}^{t_f}\mathrm{d}t\int_0^L\mathrm{d}y_i\, E_i(\delta\dot A_{y,i}-\partial_{y_i}\delta A_{t,i})\\
 &=\int\mathrm{d}t\int_0^L\mathrm{d}y_i \left(-\dot E_i\delta A_{y,i}+\partial_{y_i}E_i\delta A_{t,i}\right)\\
 &\quad+\left.\int_0^L\mathrm{d}y_i\,E_i\delta A_{y,i}\right|_{t_i}^{t_f} -\int_{t_i}^{t_f}\mathrm{d}t\,E_i(t,L)\delta\alpha_i(t).
\end{align}$$

Thus

$$\begin{align}
\dot E_i&=0, &\partial_{y_i}E_i&=0,
\end{align}$$

and the Cauchy-slice potential and two-form are

$$\begin{align}
\Theta_i&=\int_0^L\mathrm{d}y_i\,E_i\delta A_{y,i}, & \Omega_i&=\int_0^L\mathrm{d}y_i\,\delta E_i\wedge\delta A_{y,i}.
\end{align}$$

Now quotient only by $\mathcal G_i^0$. Since $E_i$ is spatially constant and

$$\begin{align}
LE_i &=\int_0^L\mathrm{d}y_i\left(\dot A_{y,i}-\partial_{y_i}A_{t,i}\right) =\dot a_i-\alpha_i,
\end{align}$$

the exact reduced regional action is

$$\begin{align}
S_i[a_i;\alpha_i] &=\frac1{2L}\int_{t_i}^{t_f}\mathrm{d}t\,(\dot a_i-\alpha_i)^2, & E_i&=\frac{\dot a_i-\alpha_i}{L}.
\end{align}$$

Its variation, keeping the source term visible for the later release step, is

$$\begin{align}
\delta S_i &=-\int_{t_i}^{t_f}\mathrm{d}t\, \left(\dot E_i\delta a_i+E_i\delta\alpha_i\right) +\left.E_i\delta a_i\right|_{t_i}^{t_f}.
\end{align}$$

On the fixed-history regional problem $\delta\alpha_i=0$, and hence

$$\begin{align}
\Theta_i&=E_i\delta a_i, & \Omega_i&=\delta E_i\wedge\delta a_i, & H_i[\alpha_i]&=\frac L2E_i^2+\alpha_iE_i.
\end{align}$$

## Quantize the Fixed-History Regions

With the inner product $\int_0^{2\pi}\mathrm{d}a_i$, the regional Hilbert space and flux operator are

$$\begin{align}
\mathcal H_i&=L^2(\mathrm U(1)), & \widehat E_i&=-i\frac{\partial}{\partial a_i}, & \widehat H_{\alpha_i}&=\frac L2\widehat E_i^2+\alpha_i\widehat E_i.
\end{align}$$

A complete orthonormal basis is

$$\begin{align}
\psi_{i,n}(a_i)&=\frac{e^{ina_i}}{\sqrt{2\pi}}, & \widehat E_i\ket n_i&=n\ket n_i, &n&\in\mathbb Z.
\end{align}$$

For prescribed $\alpha_i(t)$,

$$\begin{align}
\psi_{i,n}(t) &=\exp\left[-i\frac{Ln^2}{2}(t-t_i) -in\int_{t_i}^{t}\mathrm{d}t'\,\alpha_i(t')\right]\psi_{i,n}(t_i).
\end{align}$$

### Boundary-History Covariance

Let

$$\begin{align}
U_{\lambda_i}(t)&=\exp[-i\lambda_{i,\Gamma}(t)\widehat E_i], & (U_{\lambda_i}\psi)(a_i)&=\psi(a_i-\lambda_{i,\Gamma}).
\end{align}$$

Then, writing $\mathscr U_{\alpha_i}(t,t_i)$ for the fixed-history propagator,

$$\begin{align}
\widehat H_{\alpha_i+\dot\lambda_{i,\Gamma}} &=U_{\lambda_i}\widehat H_{\alpha_i}U_{\lambda_i}^{-1} +i\dot U_{\lambda_i}U_{\lambda_i}^{-1},\\
\mathscr U_{\alpha_i+\dot\lambda}(t,t_i) &=U_{\lambda_i}(t)\mathscr U_{\alpha_i}(t,t_i)U_{\lambda_i}(t_i)^{-1}.
\end{align}$$

Thus changing the prescribed boundary frame changes only the phase in each electric-flux sector and intertwines two fixed-history theories. It does not define a new operator or a degeneracy within one $\mathcal P_i[\alpha_i]$.

## Classical Gluing in a Common Interface Frame

Choose a common interface frame and identify the prescribed histories,

$$\begin{align}
\alpha_1(t)&=\alpha_2(t)=\alpha(t).
\end{align}$$

Only after this identification release the common history. Its interface contribution is

$$\begin{align}
\left.\delta(S_1+S_2)\right|_\Gamma &=-\int_{t_i}^{t_f}\mathrm{d}t\,(E_1+E_2)\delta\alpha.
\end{align}$$

Since $\delta\alpha$ is now arbitrary,

$$\begin{align}
\mu_\Gamma:=E_1+E_2&=0.
\end{align}$$

The diagonal interface group acts by

$$\begin{align}
(a_1,a_2)&\mapsto(a_1+\lambda,a_2+\lambda).
\end{align}$$

With $X_\Delta=\partial_{a_1}+\partial_{a_2}$ and the two-form convention above,

$$\begin{align}
\iota_{X_\Delta}(\Omega_1+\Omega_2)&=-\delta(E_1+E_2)=-\delta\mu_\Gamma.
\end{align}$$

This is the restriction of a globally continuous gauge transformation that is identity in the fixed physical endpoint frames. Before imposing $\mu_\Gamma=0$ it is a Hamiltonian boundary symmetry, not a regional gauge kernel. The glued classical phase space is the moment-map reduction

$$\begin{align}
\mathcal P_{\mathrm{glued}} &=\mu_\Gamma^{-1}(0)/\mathrm U(1)_\Delta =\{E_1+E_2=0\}/\mathrm U(1)_\Delta.
\end{align}$$

On the constraint surface set

$$\begin{align}
E_1&=E, &E_2&=-E.
\end{align}$$

Because $y_2=L-x$, one has $A_{y_1}=A_x$, $A_{y_2}=-A_x$, and therefore

$$\begin{align}
a:=a_1-a_2 &=\int_{-L}^{L}\mathrm{d}x\,A_x.
\end{align}$$

The product two-form reduces to

$$\begin{align}
\left.(\Omega_1+\Omega_2)\right|_{\mu_\Gamma=0} &=\delta E\wedge\delta(a_1-a_2) =\delta E\wedge\delta a.
\end{align}$$

Equivalently, varying the common $\alpha$ in the summed second-order action gives

$$\begin{align}
\alpha&=\frac{\dot a_1+\dot a_2}{2}, & E&=\frac{\dot a_1-\dot a_2}{2L}.
\end{align}$$

Substitution gives the connected action and Hamiltonian

$$\begin{align}
S_{\mathrm{conn}}[a] &=\frac1{4L}\int_{t_i}^{t_f}\mathrm{d}t\,\dot a^2, & H_{\mathrm{conn}}&=LE^2.
\end{align}$$

## Gauge-Covariant Sewing Lemma

The common-frame calculation is the main construction. A transition phase is useful only to show that it is independent of the chosen pair of regional interface frames. Let $h_\Gamma=e^{i\varphi}$ and write

$$\begin{align}
\alpha_1&=\alpha, &\alpha_2&=\alpha+\dot\varphi.
\end{align}$$

Under independent changes of the two regional interface frames,

$$\begin{align}
a_i&\mapsto a_i+\lambda_{i,\Gamma},\\
\alpha_i&\mapsto\alpha_i+\dot\lambda_{i,\Gamma},\\
\varphi&\mapsto\varphi+\lambda_{2,\Gamma}-\lambda_{1,\Gamma}.
\end{align}$$

Both $\alpha_2-\alpha_1-\dot\varphi$ and

$$\begin{align}
a_{\mathrm{inv}}&=a_1-a_2+\varphi
\end{align}$$

are invariant. There are two consistent uses of this statement.

If $\varphi$ is fixed sewing data, then $\delta\varphi=0$. Transformations with $\lambda_{2,\Gamma}-\lambda_{1,\Gamma}\neq0$ change $\varphi$ and therefore map between different sewing charts; they are not symmetries inside that fixed-$\varphi$ chart. The diagonal transformation preserves $\varphi$ and gives the moment-map reduction above.

If $\varphi$ is allowed to vary as a sewing-chart variable, its temporal endpoint contribution must be retained. Use the first-order regional actions

$$\begin{align}
S_i^{(1)} &=\int_{t_i}^{t_f}\mathrm{d}t\left[ E_i\dot a_i-\frac L2E_i^2-\alpha_iE_i\right].
\end{align}$$

After substituting $\alpha_1=\alpha$ and $\alpha_2=\alpha+\dot\varphi$,

$$\begin{align}
S_{\mathrm{sew}}^{(1)} &=\int_{t_i}^{t_f}\mathrm{d}t\left[ E_1\dot a_1+E_2\dot a_2-\frac L2(E_1^2+E_2^2) -\alpha(E_1+E_2)-E_2\dot\varphi\right].
\end{align}$$

Its complete variation is

$$\begin{align}
\delta S_{\mathrm{sew}}^{(1)} &=\int_{t_i}^{t_f}\mathrm{d}t\Big[ (\dot a_1-LE_1-\alpha)\delta E_1 +(\dot a_2-LE_2-\alpha-\dot\varphi)\delta E_2\\
 &\qquad-\dot E_1\delta a_1-\dot E_2\delta a_2 -(E_1+E_2)\delta\alpha+\dot E_2\delta\varphi\Big]\\
 &\quad+\left. \left(E_1\delta a_1+E_2\delta a_2-E_2\delta\varphi\right) \right|_{t_i}^{t_f}.
\end{align}$$

Thus $\delta\alpha$ gives $E_1+E_2=0$, whereas $\delta\varphi$ only repeats $\dot E_2=0$, already obtained from $\delta a_2$; it produces no new independent interface constraint. The temporal-corner canonical one-form is

$$\begin{align}
\Theta_{\mathrm{sew}} &=E_1\delta a_1+E_2\delta a_2-E_2\delta\varphi.
\end{align}$$

On $E_1=E$, $E_2=-E$ it becomes

$$\begin{align}
\Theta_{\mathrm{red}} &=E\,\delta(a_1-a_2+\varphi).
\end{align}$$

Therefore $\varphi$ is not an additional edge oscillator. It is either fixed transition data labeling a sewing chart or a redundant chart variable whose canonical endpoint term must be kept. The main construction uses the common-frame gauge $\varphi=0$.

## Quantum Group Reduction

The unreduced product space is $\mathcal H_1\otimes\mathcal H_2$. Quantum gluing is the invariant subspace for the diagonal interface group,

$$\begin{align}
\mathcal H_{\mathrm{phys}} &=(\mathcal H_1\otimes\mathcal H_2)^{\mathrm U(1)_\Delta} =\ker(\widehat E_1+\widehat E_2)\\
 &=\overline{\operatorname{span}} \left\{\ket n_1\otimes\ket{-n}_2\mid n\in\mathbb Z\right\}.
\end{align}$$

The Haar group-averaging projector is

$$\begin{align}
(P_{\mathrm{phys}}\Psi)(a_1,a_2) &=\frac1{2\pi}\int_0^{2\pi}\mathrm{d}\lambda\, \Psi(a_1+\lambda,a_2+\lambda).
\end{align}$$

Its image consists of wavefunctions depending only on $a=a_1-a_2$, or on $a_1-a_2+\varphi$ in a nontrivial sewing chart. The connected basis and Hamiltonian are

$$\begin{align}
\Psi_n(a)&=\frac{e^{ina}}{\sqrt{2\pi}}, & \widehat H_{\mathrm{conn}}&=L\widehat E^2=-L\frac{\partial^2}{\partial a^2},\\
\widehat H_{\mathrm{conn}}\Psi_n&=Ln^2\Psi_n.
\end{align}$$

Equivalently, the regional Hamiltonian on the constraint space is

$$\begin{align}
\left.\left[\frac L2(\widehat E_1^2+\widehat E_2^2) +\alpha(\widehat E_1+\widehat E_2)\right]\right|_{\mathcal H_{\mathrm{phys}}} &=L\widehat E^2.
\end{align}$$

## Direct Connected-Theory Check

In $A_t=0$ gauge, the connected Maxwell equations give $\partial_xE=0$ and $\dot E=0$. Every connected solution is gauge-equivalent, by a transformation equal to the identity in both physical endpoint frames, to

$$\begin{align}
A_x(t,x)&=\frac{a(t)}{2L}, & a(t)&=a_0+2LEt, & F_{tx}&=E.
\end{align}$$

The based large gauge transformations identify $a\sim a+2\pi w$. Direct substitution into the connected Maxwell action gives

$$\begin{align}
S_{\mathrm{conn}}&=\frac1{4L}\int\mathrm{d}t\,\dot a^2, & H_{\mathrm{conn}}&=LE^2,
\end{align}$$

in agreement with the reduction. Thus $1+1$ Maxwell theory has no local photon oscillator; its complete connected degree of freedom is the compact holonomy/electric-flux pair $(a,E)$.

## Verification Boundary

Derived here: the full regional variation, Gauss-law reduction, periodic zero-mode quantization, boundary-history covariance, common-frame classical moment-map reduction, transition-phase sewing lemma with its temporal-corner one-form, Haar quantum reduction, and direct connected-theory spectrum.

Assumptions: flat $1+1$-dimensional time slab; compact $\mathrm U(1)$ with unit minimal charge; topologically trivial bundle on the slab; fixed gauge frames at both physical endpoints; no charged matter; no theta term; and temporal endpoint variations fixed when applying the action principle.

Verified: the regional Legendre transform, exact first-order sewing invariance, $\alpha$ and $\varphi$ Euler--Lagrange coefficients, temporal endpoint one-form, $y_2=L-x$ orientation, reduced symplectic coordinate, connected action, and connected Hamiltonian were checked algebraically.

Not proved here: an extension to unframed physical endpoints, nontrivial bundles or time topology, charged matter, a theta term, higher-dimensional local edge data, or continuum product-factorization claims.
