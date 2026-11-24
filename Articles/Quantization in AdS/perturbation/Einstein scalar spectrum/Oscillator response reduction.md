# Oscillator Response Reduction: Action and Covariant Phase Space

This note proves a finite-dimensional version of the response identity used in [general N-scalar spectrum](<Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/general N-scalar spectrum.md>). The conventions are those of [the CPS formalism](<Articles/Quantization in AdS/perturbation/formalism.md>): $\displaystyle{\Omega=\delta\theta}$ and $\displaystyle{\iota_{X_H}\Omega=-\delta H}$.

The two operations to compare are:

1. **Stationary response substitution in the action:** solve for the driven oscillator and substitute its response, retaining the temporal endpoint.
2. **Response reduction in phase space:** restrict both the Hamiltonian and the symplectic form to the same response, then restore canonical coordinates.

The result is an equality of the leading $\displaystyle{g^2}$ quartic coefficients. In an explicitly specified endpoint polarization and Darboux chart,

$$\begin{align}
\boxed{\displaystyle \ell_4=\frac12kx^2,\qquad K_4=-\frac12kx^2.}
\end{align}$$

Here $\displaystyle{Q=gk}$ is the selected response. The induced symplectic correction is generally nonzero; accounting for it is essential. An exact nonlocal action identity is stated separately below and is not confused with an exact local one-oscillator reduction.

## 1. Model, Variation, and Phase Space

Consider real variables $\displaystyle{x,Q}$ with

$$\begin{align}
S&=\int_{t_i}^{t_f}\mathrm dt\,L,\\
L&=\frac12(\dot x^2-\omega^2x^2)+\frac12(\dot Q^2-\nu^2Q^2)+gQx^2, \qquad \omega,\nu>0.
\end{align}$$

The frequencies are fixed while $\displaystyle{g\to0}$. This is a regular mechanical system; no gauge fixing or constraint inversion is needed. Direct variation gives

$$\begin{align}
\delta S &=\int_{t_i}^{t_f}\mathrm dt\left[ (-\ddot x-\omega^2x+2gQx)\delta x +(-\ddot Q-\nu^2Q+gx^2)\delta Q\right] +[\dot x\,\delta x+\dot Q\,\delta Q]_{t_i}^{t_f}.
\end{align}$$

Thus, with $\displaystyle{p=\dot x}$ and $\displaystyle{P=\dot Q}$,

$$\begin{align}
\theta&=p\,\delta x+P\,\delta Q, &\Omega&=\delta p\wedge\delta x+\delta P\wedge\delta Q,\\
H&=\frac12(p^2+\omega^2x^2)+\frac12(P^2+\nu^2Q^2)-gQx^2.
\end{align}$$

The sign of the interaction in $\displaystyle{H}$ follows directly from $\displaystyle{H=p\dot x+P\dot Q-L}$. Hamilton's equations are

$$\begin{align}
\dot x=p,\qquad \dot p=-\omega^2x+2gQx, \qquad \dot Q=P,\qquad \dot P=-\nu^2Q+gx^2.
\end{align}$$

The oscillator $\displaystyle{Q}$ is physical. Selecting its response is not quotienting a gauge redundancy.

## 2. A Specified Response, Not Static Minimization

The retained free oscillator has

$$\begin{align}
H_0=\frac12(p^2+\omega^2x^2),\qquad \Omega_0=\delta p\wedge\delta x,\qquad X_0=p\partial_x-\omega^2x\partial_p.
\end{align}$$

Seek the leading response as a function of the free Cauchy data:

$$\begin{align}
Q=gk(x,p),\qquad P=gv(x,p).
\end{align}$$

The driven oscillator equation requires

$$\begin{align}
v=X_0k,\qquad (X_0^2+\nu^2)k=x^2.
\end{align}$$

For $\displaystyle{\nu\ne2\omega}$, there is a unique homogeneous quadratic polynomial $\displaystyle{k}$ satisfying this equation:

$$\begin{align}
\boxed{\displaystyle k(x,p)=\frac{(\nu^2-2\omega^2)x^2-2p^2}{\nu^2(\nu^2-4\omega^2)}, \qquad v(x,p)=\frac{2xp}{\nu^2-4\omega^2}.}
\end{align}$$

For example, insert $\displaystyle{k=ax^2+bp^2}$ and use

$$\begin{align}
X_0^2x^2=2p^2-2\omega^2x^2, \qquad X_0^2p^2=2\omega^4x^2-2\omega^2p^2.
\end{align}$$

The resulting two linear equations give the displayed coefficients. On the full space of homogeneous quadratic polynomials, the free frequencies are $\displaystyle{0,\pm2\omega}$, so $\displaystyle{\nu>0}$ and $\displaystyle{\nu\ne2\omega}$ also prove uniqueness.

The response prescription is to add **no independent homogeneous $\displaystyle{\nu}$-frequency motion**. Boundedness alone would not impose this: $\displaystyle{\cos\nu t}$ and $\displaystyle{\sin\nu t}$ are bounded too. The polynomial above implements the inverse on the finite frequency support of the source, not an arbitrary retarded initial-value prescription.

For a free trajectory $\displaystyle{x=A\cos\omega t}$,

$$\begin{align}
k(t)=\frac{A^2}{2\nu^2}+ \frac{A^2}{2(\nu^2-4\omega^2)}\cos2\omega t.
\end{align}$$

In particular, $\displaystyle{k\ne x^2/\nu^2}$ in general. The latter would be static minimization, which drops the response's acceleration.

## 3. Action Route: Keep the Endpoint

Evaluate the action on the prescribed free $\displaystyle{x}$ history and its response. The coefficient of $\displaystyle{g^2}$ is

$$\begin{align}
L_4=\frac12v^2-\frac12\nu^2k^2+kx^2.
\end{align}$$

Since $\displaystyle{X_0v=x^2-\nu^2k}$,

$$\begin{align}
X_0(kv)=v^2+kx^2-\nu^2k^2,
\end{align}$$

and therefore

$$\begin{align}
\boxed{\displaystyle L_4=\frac12kx^2+\frac12X_0(kv).}
\end{align}$$

Thus the quartic contribution to the action on free histories is

$$\begin{align}
S^{(4)}_{\mathrm{red}} =\frac{g^2}{2}\int_{t_i}^{t_f}\mathrm dt\,kx^2 +\frac{g^2}{2}[kv]_{t_i}^{t_f}.
\end{align}$$

This is not a prescription for varying a guessed local Lagrangian at arbitrary $\displaystyle{x(t)}$. The replacement $\displaystyle{\dot k=X_0k}$ was made on free histories. The distinction between those histories and arbitrary off-shell paths will matter below.

For a convenient comparison, define an endpoint-adjusted action

$$\begin{align}
\overline S=S-\frac12[QP]_{t_i}^{t_f}.
\end{align}$$

On the response this subtracts exactly $\displaystyle{g^2[kv]/2}$. Its quartic bulk coefficient on free histories is then $\displaystyle{\ell_4=kx^2/2}$. The endpoint adjustment must be made consistently in the symplectic potential and boundary data; it does not assert that $\displaystyle{S}$ and $\displaystyle{\overline S}$ have the same naive Dirichlet variational problem.

## 4. Phase-Space Route: Pull Back Both Objects

Define the explicit response embedding

$$\begin{align}
j_g:(x,p)\longmapsto(x,p,Q=gk(x,p),P=gv(x,p)).
\end{align}$$

The Hamiltonian pullback is

$$\begin{align}
H_{\mathrm{red}}=j_g^*H=H_0+g^2h_2, \qquad h_2=\frac12(v^2+\nu^2k^2)-kx^2.
\end{align}$$

But the symplectic form must be pulled back too:

$$\begin{align}
\Omega_{\mathrm{red}} =j_g^*\Omega =\Omega_0+g^2\delta v\wedge\delta k =(1+g^2C)\,\delta p\wedge\delta x,\\
C(x,p)=\frac{4\bigl[(\nu^2-2\omega^2)x^2+2p^2\bigr]} {\nu^2(\nu^2-4\omega^2)^2}.
\end{align}$$

This correction is generally nonzero. On any fixed compact set of Cauchy data, $\displaystyle{\Omega_{\mathrm{red}}}$ is nondegenerate for sufficiently small $\displaystyle{|g|}$. The required smallness is not uniform as $\displaystyle{\nu\to2\omega}$.

### Why This Graph Captures the Required Dynamics

Direct differentiation gives

$$\begin{align}
\partial_ph_2=Cp,\qquad \partial_xh_2=C\omega^2x-2kx.
\end{align}$$

Consequently, the Hamiltonian vector field defined by the pulled-back pair is

$$\begin{align}
\dot x=p,\qquad \dot p=-\omega^2x+\frac{2g^2kx}{1+g^2C} =-\omega^2x+2g^2kx+O(g^4).
\end{align}$$

This agrees with the full scalar equation on $\displaystyle{Q=gk}$ through order $\displaystyle{g^2}$. Along this reduced flow, the two mediator equations have residuals $\displaystyle{O(g^3)}$: their leading terms are exactly $\displaystyle{X_0k=v}$ and $\displaystyle{X_0v=x^2-\nu^2k}$. Thus the displayed graph is a sufficient perturbative response embedding for the quartic coefficient, not an exact invariant submanifold of the full nonlinear dynamics. These are local finite-order statements at fixed nonresonant frequencies, not uniform long-time estimates.

### Use the Same Endpoint Polarization as in the Action Route

The potential corresponding to $\displaystyle{\overline S}$ is

$$\begin{align}
\overline\theta &=\theta-\frac12\delta(QP) =p\,\delta x+\frac12(P\,\delta Q-Q\,\delta P),\\
\delta\overline\theta&=\Omega.
\end{align}$$

The time-translation Noether boundary functional changes by the matching total derivative, so the physical Hamiltonian is unchanged. On the response graph,

$$\begin{align}
j_g^*\overline\theta &=\theta_0+g^2\theta_2, &\theta_0&=p\,\delta x,\\
\theta_2 &=\frac12(v\,\delta k-k\,\delta v) =\frac C4(p\,\delta x-x\,\delta p), &\delta\theta_2&=\delta v\wedge\delta k.
\end{align}$$

The raw coefficient $\displaystyle{h_2}$ is still not the interaction Hamiltonian for the free bracket $\displaystyle{\{x,p\}=1}$.

## 5. Restore Canonical Coordinates and Compare

Let $\displaystyle{(q,\pi)}$ be new coordinates and let $\displaystyle{\mathscr F}$ map them to the old $\displaystyle{(x,p)}$ coordinates. Choose

$$\begin{align}
\mathscr F=\mathrm{id}+g^2Z+O(g^4), \qquad \iota_Z\Omega_0=-\theta_2.
\end{align}$$

Why this equation? Cartan's identity gives

$$\begin{align}
\mathscr F^*\Omega_{\mathrm{red}} &=\Omega_0+g^2\delta\bigl(\theta_2+\iota_Z\Omega_0\bigr)+O(g^4) =\Omega_0+O(g^4).
\end{align}$$

In this example the vector field and coordinate change are completely explicit:

$$\begin{align}
Z=-\frac C4\left(x\partial_x+p\partial_p\right),\\
x=q-\frac{g^2}{4}C(q,\pi)q+O(g^4), \qquad p=\pi-\frac{g^2}{4}C(q,\pi)\pi+O(g^4).
\end{align}$$

This is a change of coordinates on the response plane, not another restriction of the physical states. The potential becomes

$$\begin{align}
\mathscr F^*(\theta_0+g^2\theta_2) =\theta_0+g^2\delta\bigl(\theta_0(Z)\bigr)+O(g^4),
\end{align}$$

so its remaining correction is an endpoint. The Hamiltonian in these canonical coordinates is

$$\begin{align}
\mathscr F^*H_{\mathrm{red}} =H_0+g^2K_4+O(g^4), \qquad K_4=h_2+ZH_0.
\end{align}$$

Using $\displaystyle{\iota_{X_0}\Omega_0=-\delta H_0}$,

$$\begin{align}
ZH_0=-\theta_2(X_0) =-\frac12\left(v^2-kX_0v\right) =-\frac12\left(v^2+\nu^2k^2-kx^2\right).
\end{align}$$

Therefore

$$\begin{align}
\boxed{\displaystyle K_4=h_2-\theta_2(X_0) =-\frac12kx^2=-\ell_4.}
\end{align}$$

The quartic functions in this identity are evaluated at the same zeroth-order coordinates; in the canonical Hamiltonian their arguments are $\displaystyle{(q,\pi)}$. This proves the leading response identity, including the symplectic correction and the endpoint choice. The $\displaystyle{O(g^4)}$ terms above refer to expansions of the explicit graph pullback and its local coordinate transformation; they do not prove existence of a full invariant scalar branch to that order. $\square$

### Which Coordinate Appears in a Local Effective Lagrangian?

The distinction is substantive. A Legendre transform of the canonical Hamiltonian gives, to the same order,

$$\begin{align}
L_{\mathrm{can}}(q,\dot q) =\frac12(\dot q^2-\omega^2q^2) +\frac{g^2}{2}q^2k(q,\dot q)+O(g^4).
\end{align}$$

This is a local Lagrangian for the new coordinate $\displaystyle{q}$, not the original physical coordinate $\displaystyle{x}$. Their relation includes the displayed order-$\displaystyle{g^2}$ change. Simply writing $\displaystyle{L_0(x,\dot x)+g^2x^2k(x,\dot x)/2}$ and varying it as a local action for the original $\displaystyle{x}$ would skip that change and generally give the wrong physical trajectory.

## 6. Resonant Average, Static Limit, and Failure at Resonance

For a quartic function $\displaystyle{\mathcal A}$, define $\displaystyle{[\mathcal A]_{\mathrm{res}}}$ by averaging it along the free scalar flow. Here one may average over $\displaystyle{2\pi/\omega}$. For $\displaystyle{x=A\cos\omega t}$, $\displaystyle{p=-\omega A\sin\omega t}$, the result is

$$\begin{align}
\boxed{\displaystyle [K_4]_{\mathrm{res}} =-\frac12[kx^2]_{\mathrm{res}} =-\frac{A^4}{8\nu^2} -\frac{A^4}{16(\nu^2-4\omega^2)}.}
\end{align}
\end{align}$$

With the free action variable $\displaystyle{I=H_0/\omega=\omega A^2/2}$, equivalently

$$\begin{align}
[K_4]_{\mathrm{res}} =-\frac{I^2}{4\omega^2} \left(\frac2{\nu^2}+\frac1{\nu^2-4\omega^2}\right).
\end{align}$$

A different local Darboux chart related by an order-$\displaystyle{g^2}$ canonical transformation can change $\displaystyle{K_4}$ by a free derivative $\displaystyle{-X_0F}$. For a polynomial $\displaystyle{F}$ on a bounded free orbit, its average vanishes. The resonant identity is therefore independent of this admissible chart choice, although the unaveraged representative need not be.

In the additional large-$\displaystyle{\nu}$ limit,

$$\begin{align}
k=\frac{x^2}{\nu^2}+O(\nu^{-4}), \qquad K_4=-\frac{x^4}{2\nu^2}+O(\nu^{-4}), \qquad [K_4]_{\mathrm{res}}=-\frac{3A^4}{16\nu^2}+O(\nu^{-4}).
\end{align}$$

This agrees with static elimination at leading order in a separate inverse-frequency expansion. Static elimination is not the general answer at finite $\displaystyle{\nu}$.

At $\displaystyle{\nu=2\omega}$, the source contains a resonant component. For the same free scalar trajectory, a particular response contains

$$\begin{align}
Q_{\mathrm{sec}}(t)=\frac{gA^2}{8\omega}\,t\sin2\omega t.
\end{align}$$

There is then no bounded, source-supported response graph of the displayed type. The resonant mediator must be retained rather than assigned an arbitrary finite inverse. At $\displaystyle{\nu=0}$ the constant part of $\displaystyle{x^2}$ is also resonant; this is excluded by the original assumption $\displaystyle{\nu>0}$.

## 7. A Separate Exact Nonlocal Action Identity

The action-side elimination can also be made exact on a specified history space. Let

$$\begin{align}
T=\frac{2\pi}{\omega},\qquad \nu/\omega\notin\mathbb Z,
\end{align}$$

and take smooth periodic histories and periodic variations on $\displaystyle{[0,T]}$. The operator $\displaystyle{D=\partial_t^2+\nu^2}$ with domain $\displaystyle{H^2_{\mathrm{per}}(0,T)}$ in $\displaystyle{L^2(0,T)}$ is self-adjoint. Its Fourier eigenvalues are $\displaystyle{\nu^2-n^2\omega^2}$, $\displaystyle{n\in\mathbb Z}$; none is zero under the stated condition, so its inverse exists and maps $\displaystyle{L^2}$ to $\displaystyle{H^2_{\mathrm{per}}}$. Smooth sources give smooth responses. The stronger noninteger condition is needed for all periodic histories; $\displaystyle{\nu\ne2\omega}$ alone suffices only on the quadratic source support used above.

For any such prescribed $\displaystyle{x(t)}$, the unique stationary response is

$$\begin{align}
Q_*[x]=gD^{-1}(x^2).
\end{align}$$

Integrating the quadratic mediator action by parts, with periodic endpoints, and substituting this response gives the exact classical identity

$$\begin{align}
\boxed{\displaystyle S_{\mathrm{eff}}[x] =S_x[x]+\frac{g^2}{2}\int_0^T\mathrm dt\, x^2D^{-1}(x^2).}
\end{align}
\end{align}$$

Stationarity with respect to $\displaystyle{Q}$ ensures that varying this functional with respect to $\displaystyle{x}$ reproduces the full $\displaystyle{x}$ equation with the same response and boundary prescription. The resulting action is generally nonlocal in time. On a free scalar history its inverse gives precisely the function $\displaystyle{k}$ above.

This exact functional identity is not an exact local Hamiltonian reduction to the original $\displaystyle{(x,p)}$ plane. Nor do fixed-period stationary solutions automatically form an open scalar CPS: interactions generally shift the period. The local leading Hamiltonian identity was proved separately by the response embedding and Darboux transformation. A retarded inverse or different homogeneous data cannot silently replace this periodic prescription.

## 8. Relation to the Einstein–Scalar Response Formula

The prototype isolates three facts:

1. The sum of the quadratic response action and its linear source coupling reduces to half the coupling after stationary substitution, with its endpoint retained.
2. Restricting to the response changes both the energy and the symplectic form.
3. Restoring canonical coordinates produces the correction $\displaystyle{-\theta_2(X_0)}$, which gives the negative of the endpoint-adjusted action coefficient.

For a coupling $\displaystyle{k\cdot J}$, the stationary value of the quadratic-plus-source action is $\displaystyle{\frac12k\cdot J}$ up to the retained endpoint. In the Einstein–scalar normalization the linear coupling is $\displaystyle{\frac12k_{\mu\nu}T^{\mu\nu}}$, so $\displaystyle{J=T/2}$ and the corresponding coefficient is $\displaystyle{\frac14k_{\mu\nu}T^{\mu\nu}}$. This is the origin of the quarter-factor; the CPS argument supplies the Hamiltonian minus sign.

The mechanical proof does not establish a gravitational response domain, boundary counterterm prescription, or endpoint bound. Those remain requirements on the field-theory problem. It does establish the finite-dimensional algebra and geometry without assuming that the induced symplectic correction vanishes.

## Verification and Scope

- **Verified analytically and by exact Wolfram residuals:** the response equation, the nonzero symplectic correction, the symmetric primitive, both derivative identities for $\displaystyle{h_2}$, the Darboux pullback, the quartic Hamiltonian, the action endpoint identity, the resonant average, and the static limit. All residuals vanish; the kernel returned no messages.
- **Independent review:** a fresh derivation reproduced the response, symplectic correction, scalar force, and the distinction between the physical coordinate and a Darboux coordinate. The matched endpoint and nonlocal-action issues were checked separately.
- **Assumptions:** fixed $\displaystyle{\omega,\nu>0}$ with $\displaystyle{\nu\ne2\omega}$, zero independent homogeneous mediator amplitudes, a local small-$\displaystyle{g}$ region, and matching endpoint prescriptions. Section 7 uses the additional periodic-domain condition.
- **Not established:** a global or all-order invariant scalar sector, uniform-in-time nonlinear perturbation theory, or equivalence for arbitrary causal response prescriptions. No quantum ordering or loop statement is made.

A finite-time numerical check used $\displaystyle{\omega=1}$, $\displaystyle{\nu=\sqrt5}$, $\displaystyle{x(0)=2/5}$, $\displaystyle{p(0)=1/5}$ and the prepared mediator data $\displaystyle{Q(0)=gk(x(0),p(0))}$, $\displaystyle{P(0)=gv(x(0),p(0))}$. The full equations were compared with the exact pulled-back equations in Section 4 over $\displaystyle{0\le t\le10}$, using 40-digit working precision and accuracy/precision goals 25. The sampled maximum of $\displaystyle{|x_{\mathrm{full}}-x_{\mathrm{graph}}|}$ on $\displaystyle{t=0,0.02,\ldots,10}$ was:

| $g$ | Sampled maximum difference | Difference divided by $g^4$ |
|---|---:|---:|
| $1/20$ | $5.709590794\times10^{-7}$ | $0.09135345271$ |
| $1/40$ | $3.576578569\times10^{-8}$ | $0.09156041137$ |
| $1/80$ | $2.236625345\times10^{-9}$ | $0.09161217413$ |

This supports the expected finite-time higher-order remainder; it is a numerical check, not a uniform error bound or the proof of the quartic identity.

忮忌
