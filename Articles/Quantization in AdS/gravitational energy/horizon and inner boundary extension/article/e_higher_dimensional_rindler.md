## A propagating higher-dimensional local-Rindler test

### Einstein--GHY collar and radiative mode

This appendix tests a genuine local graviton polarization, rather than a three-dimensional boundary graviton.  Let the bulk dimension be $D\geq4$ and work per unit transverse volume in the flat Rindler collar

$$\begin{align}
\mathrm ds^2
=-\kappa_H^2\rho^2\,\mathrm d\tau^2+\mathrm d\rho^2
+\delta_{AB}\,\mathrm dx^A\mathrm dx^B,
\qquad A=1,\ldots,D-2.
\end{align}$$

The retained wedge is $\rho\geq\epsilon$, so the inner outward normal is $n=-\partial_\rho$.  The local finite action is

$$\begin{align}
S_\epsilon
=\frac1{2\kappa_{\rm p}^2}\int_{M_\epsilon}\sqrt{-g}\,R
+\frac1{\kappa_{\rm p}^2}\int_{\mathcal H_\epsilon}
\sqrt{-\gamma}\,K,
\end{align}$$

supplemented by endpoint data appropriate to the chosen time-evolution problem.  No AdS counterterm is placed on the inner wall.

In Minkowski null coordinates

$$\begin{align}
U=-\rho e^{-\kappa_H\tau},
\qquad
V=\rho e^{\kappa_H\tau},
\end{align}$$

choose a constant trace-free transverse polarization $e_{AB}$ and

$$\begin{align}
h_{AB}=e_{AB}\psi,
\qquad
\psi=F(U)+G(V),
\qquad
h_{\rho\mu}=h_{\tau\mu}=0.
\end{align}$$

Then $h=0$, $\nabla^\mu h_{\mu\nu}=0$, and

$$\begin{align}
\Box\psi
=-\frac1{\kappa_H^2\rho^2}\partial_\tau^2\psi
+\partial_\rho^2\psi+\frac1\rho\partial_\rho\psi
=0.
\end{align}$$

Thus $\mathcal E^{(1)}[h]=0$.  In $D=4$ this is the ordinary plus/cross tensor graviton; additional transverse directions are spectators.  Since the perturbation has no normal-plane components and $e^A{}_A=0$,

$$\begin{align}
h_{UU}=h_{VV}=0,
\qquad
\delta\theta_{(U)}=\delta\theta_{(V)}=0.
\end{align}$$

It is therefore already in the fixed-surface extremal/HW normal representative.  The obstruction $p_{kk}p_{ll}$ in (\ref{eq:fixed-surface-obstruction}) vanishes.

### Complete wall variation

The wall metric and background extrinsic curvature are

$$\begin{align}
\gamma_{ij}\mathrm dx^i\mathrm dx^j
=-\kappa_H^2\rho^2\mathrm d\tau^2
+(\delta_{AB}+h_{AB})\mathrm dx^A\mathrm dx^B,
\qquad
K_{ij}=-\frac12\partial_\rho\gamma_{ij}.
\end{align}$$

For trace-free $h_{AB}$,

$$\begin{align}
\Pi_0^{AB}=\frac{\kappa_H}{\kappa_{\rm p}^2}\delta^{AB},
\qquad
\delta\Pi^{AB}[h]
=-\frac{\kappa_H}{\kappa_{\rm p}^2}
\left(h^{AB}+\frac\rho2\partial_\rho h^{AB}\right).
\label{eq:local-rindler-momentum}
\end{align}$$

The first wall source vanishes,

$$\begin{align}
\mathcal B_0[h]
=-\frac12\Pi_0^{AB}h_{AB}=0,
\end{align}$$

but its curvature on two independent radiative tangents is

$$\begin{align}
\delta\mathcal B_\rho(h_1,h_2)
&=-\frac12\left(
\delta\Pi^{AB}[h_1]h_{2,AB}
-\delta\Pi^{AB}[h_2]h_{1,AB}
\right)\\
&=\frac{\kappa_H\rho}{4\kappa_{\rm p}^2}
\left(
\partial_\rho h_1^{AB}h_{2,AB}
-\partial_\rho h_2^{AB}h_{1,AB}
\right).
\label{eq:local-rindler-wall-curvature}
\end{align}$$

The algebraic $h_1h_2$ contribution cancels by antisymmetry.  Equation (\ref{eq:local-rindler-wall-curvature}) agrees with the normal pullback of the TT Lee--Wald current.  It is generally nonzero at finite $\rho$.  Consequently

$$\begin{align}
\text{radial/HW gauge}+\text{two-sided smoothness}
\not\Longrightarrow
\text{finite-wall Lagrangian polarization}.
\end{align}$$

A differentiable finite-$\epsilon$ problem must still fix a member of the Brown--York canonical pair, impose a mixed Lagrangian relation, or retain the source work as external data.

For this mode the Harlow--Wu one-form vanishes identically because $h_{\rho\mu}=0$.  Constant-$\tau$ cuts are orthogonal to the wall and remain so under $h_{AB}$, hence their Hayward boost angle and its variation vanish.  There is no hidden endpoint term cancelling (\ref{eq:local-rindler-wall-curvature}).

### Two inequivalent horizon limits

Fix a compact boost-time interval $\tau\in[\tau_1,\tau_2]$.  If $F_i$, $G_i$ and their first derivatives are bounded near $U=V=0$, then $\partial_\rho h_i$ is uniformly bounded on that interval.  Therefore

$$\begin{align}
\left|
\int_{\tau_1}^{\tau_2}\delta\mathcal B_\epsilon(h_1,h_2)
\,\mathrm d\tau
\right|
\leq C_{\tau_1,\tau_2}\epsilon
\longrightarrow0.
\label{eq:compact-boost-limit}
\end{align}$$

After background subtraction and with a declared finite-wall variational prescription, (\ref{eq:compact-boost-limit}) leaves no additional wall Hamiltonian variation beyond the fixed-surface Noether/area term.  This is the precise positive result.

It is not uniform on a slab whose boost-time length grows with the cutoff.  For future-moving data $h_{i,AB}=e_{AB}G_i(V)$, choose an endpoint

$$\begin{align}
\tau_\epsilon(V_*)=\frac1{\kappa_H}\log\frac{V_*}{\epsilon}.
\end{align}$$

Since $\mathrm d\tau=\mathrm dV/(\kappa_HV)$, (\ref{eq:local-rindler-wall-curvature}) has the limit

$$\begin{align}
\delta\mathcal B_\epsilon\,\mathrm d\tau
\longrightarrow
\frac{e^{AB}e_{AB}}{4\kappa_{\rm p}^2}
\left(G_1'G_2-G_2'G_1\right)\mathrm dV.
\label{eq:future-null-limit}
\end{align}$$

The right-hand side is a finite, generally nonzero null-horizon symplectic flux.  An analogous formula holds on the past horizon for the $F(U)$ sector.

The diagnostic verdict is therefore conditional and sharp:

1. on compact boost-time collars, HW normal gauge plus smoothness makes the complete wall curvature vanish as $O(\epsilon)$, once a finite-wall polarization or source-retaining variational problem has been declared;
2. HW gauge and smoothness alone do not supply that polarization at finite cutoff;
3. for evolution reaching separated null-horizon cuts, radiative flux survives and an extra horizon Hamiltonian/flux term cannot be omitted;
4. the calculation is local flat Rindler with Einstein--GHY action.  It does not prove an exact AdS-Rindler mode theorem, a common polarization for all propagating modes, or any quantum JLMS statement.
