## The full Brown--Henneaux metric quotient

### Reducibility and the endpoint-fixing section

Consider one chiral Brown--Henneaux generator labelled by $f\in H^\sigma(S^1)$.  The metric perturbation is unchanged when $f$ is shifted by the three global conformal modes $1$, $\cos\phi$, and $\sin\phi$, because their bulk lifts are exact AdS Killing fields.  Endpoint values of $f$ are therefore not functions on the metric tangent space.

For a symmetric interval $A=(-a,a)$ with $0<a<\pi/2$, define

$$\begin{align}
q_\pm[f]=f(\pm a)
\end{align}$$

and the bounded section

$$\begin{align}
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi . \label{eq:psl-section}
\end{align}$$

Then

$$\begin{align}
(P_{\rm PSL}f)(\pm a)=0,
\qquad
P_{\rm PSL}^2=P_{\rm PSL},
\qquad
h[P_{\rm PSL}f]=h[f]. \label{eq:psl-properties}
\end{align}$$

The residual global direction that already fixes both endpoints is the interval modular weight

$$\begin{align}
w_A(\phi)=\frac{\cos\phi-\cos a}{\sin a}.
\end{align}$$

Consequently,

$$\begin{align}
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}. \label{eq:quotient-isomorphism}
\end{align}$$

Equation (\ref{eq:psl-section}) is not the spectral projector that adds charged $m\geq2$ modes to create a special fixed-anchor subspace.  It changes only the global-Killing representative and covers the full metric quotient.  For other interval charts, one chooses a nonsingular pair of global conformal complements instead of dividing by a vanishing $\cos a$ or $\sin a$.

### The proper Hollands--Wald section

On the complete RT geodesic, the Jacobi inverse of $J=-D_u^2+1$ is

$$\begin{align}
G_J(u,u')=\frac12e^{-|u-u'|}.
\end{align}$$

For endpoint-zero data, (\ref{eq:jacobi}) therefore has a unique decaying normal solution.  For a general representative, the growing part of $-\zeta_\perp$ is cancelled by a Jacobi-homogeneous correction.  In a parallel two-component normal frame it is

$$\begin{align}
H^{(0)}&=-\frac{q_+e^u+q_-e^{-u}}{\sqrt2},\\
H^{(1)}&=\frac{-q_+e^u+q_-e^{-u}}{\sqrt2}. \label{eq:homogeneous-hw}
\end{align}$$

The correction (\ref{eq:homogeneous-hw}) is precisely the normal restriction of the global Killing field removed by $P_{\rm PSL}$.  The resulting vector has the proper falloffs

$$\begin{align}
(v^t,v^r,v^\phi)
=(O(r^{-2}),O(r^{-1}),O(r^{-2}))
\end{align}$$

at both anchors.  Extending its normal two-jet through a fixed-width Fermi collar defines a bounded weak Sobolev section $P_{\rm HW}$ on the regularity class used below.  At every finite regulator,

$$\begin{align}
\Delta_Xg(P_{\rm HW}h,-V[h])=h. \label{eq:hw-pullback}
\end{align}$$

Thus every bulk, GHY, counterterm, Harlow--Wu, Hayward, anchor, and embedding term in the complete pulled-back action equals its fixed-section value.  Equation (\ref{eq:hw-pullback}) is the action-level reason that the HW collar introduces no new flux estimate.

### Linked regulators and slice covariance

Let $M$ be a frequency cutoff.  Choose the explicit schedule

$$\begin{align}
L=M^{10},
\qquad
\tanh\frac\epsilon2=\frac1{2M^{10}},
\qquad
R=M^{30}. \label{eq:linked-schedule}
\end{align}$$

The transition estimate (\ref{eq:transition-bound}) is then $O(M^{-14})$.  The complete compensated finite-wall kernel, including the $r\sim L$ layer, is $O(M^{-13})$; the compensated Cauchy-corner mismatch is $O(M^{-34}+M^{-14})$; and the compensated outer-joint mismatch is $O(M^{-34})$.  Together with the exact vanishing of the outer Brown--York source curvature, the total relative-action flux tends to zero.

The construction is covariant under boundary time translation.  For left movers, let $U_tf(\phi)=f(\phi-t)$.  The endpoint, PSL, and HW sections at time $t$ are obtained by conjugation:

$$\begin{align}
P_{{\rm PSL},t}=U_{-t}P_{\rm PSL}U_t,
\qquad
P_{{\rm HW},t}=U_{-t}P_{\rm HW}U_t. \label{eq:time-sections}
\end{align}$$

The Brown--Henneaux phases have unit modulus, so the estimates are uniform in $t$.  Vanishing total flux makes time translation a symplectomorphism between the transported fibres.  Time translation itself is a physical AdS isometry; the fixed/HW section change inside one fibre is proper gauge.

### Main theorem

**Theorem (classical finite-action subregion identity).**  Let $(M,G)$ be vacuum AdS$_3$, let $A=(-a,a)$ be a boundary interval whose RT geodesic $\gamma_A$ is the bifurcation surface of the exact modular Killing field $\xi_A$, and impose Brown--Henneaux source boundary conditions.  Use the finite-action CPS convention of Section \ref{sec:finite-action-cps}, the moving pullback of Section \ref{sec:moving-boundary}, and the linked regulator class (\ref{eq:linked-schedule}).  Then, for each chirality and every

$$\begin{align}
[f]\in H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R),
\qquad \sigma>\frac52,
\end{align}$$

the second-order charge satisfies

$$\begin{align}
\delta^2H_{\xi_A}^\infty
&=\frac{s_{\xi_A}}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma_A]}{4G}\right)
+E_{{\rm can,p}}(P_{\rm HW}h) \label{eq:main-theorem-hw}\\
&=\frac{s_{\xi_A}}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma_A]}{4G}\right)
+E_{{\rm can,p}}[h]
+\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]]. \label{eq:main-theorem-separated}
\end{align}$$

Both expressions are independent of the global-Killing representative and of the transported Cauchy slice.  The real Brown--Henneaux space is the orthogonal direct sum of the two chiral quotients, and the two quadratic forms add.

The regularity $\sigma>5/2$ is required for the separated point-anchor chart in (\ref{eq:main-theorem-separated}), where second-derivative endpoint traces occur.  It is not the optimal regularity of the combined quadratic form.  The theorem does not quotient the charged Virasoro modes $m\geq2$, introduce a negative-Virasoro frame, or assume an auxiliary edge cotangent sector.
