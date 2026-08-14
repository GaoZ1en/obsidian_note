## Quadratic area and the Hollands--Wald boundary problem

### Fixed-embedding expansion

Let $q_{AB}$ be the induced metric on a codimension-two surface and write

$$\begin{align}
q_{AB}(\lambda)=q_{AB}+\lambda p_{AB}+\lambda^2r_{AB}+O(\lambda^3).
\end{align}$$

The determinant expansion is

$$\begin{align}
\sqrt{q(\lambda)}
=\sqrt q\left[
1+\frac\lambda2p^A{}_A
+\lambda^2\left(
\frac12r^A{}_A
+\frac18(p^A{}_A)^2
-\frac14p_{AB}p^{AB}
\right)
\right]+O(\lambda^3). \label{eq:determinant-expansion}
\end{align}$$

For a one-dimensional surface in three dimensions, the tangential quadratic
term in (\ref{eq:determinant-expansion}) is nonzero.  The Noether density
contains the same tangential and second-order terms, so they cancel in the
Noether-minus-area difference.  The remaining difference is the normal-plane
determinant.  In the project null frame with $k\cdot l=+1$, this gives

$$\begin{align}
[\lambda^2](\kappa_{\rm p}^{2}H_\xi^\gamma-s_\xi A_\gamma)
=\frac{s_\xi}{2}\int_\gamma\sqrt q\,p_{kk}p_{ll}.
\end{align}$$

The $r_{\mu\nu}$ contribution is identical on the two sides and cancels.  This is why the HW normal conditions are sufficient for the fixed-embedding equality through second order.

### Derivation of the displacement terms

Let $X(u,\lambda)$ be a family of curves with first displacement $V^a$.  In Fermi normal coordinates around the background geodesic,

$$\begin{align}
\delta_VG_{uu}=2h_{ua}D_uV^a+V^a\nabla_a h_{uu}
\end{align}$$

at the mixed metric--embedding order.  Integrating the line-element expansion gives

$$\begin{align}
A^{\rm lin}[h,V]
=\int\mathrm du
\left(h_{ua}D_uV^a+\frac12V^a\nabla_a h_{uu}\right).
\end{align}$$

The background second variation is the standard index form

$$\begin{align}
A^{\rm quad}[G,V]
=\frac12\int\mathrm du
\left(D_uV_aD_uV^a-R_{uau b}V^aV^b\right).
\end{align}$$

For unit-radius AdS$_3$, $-R_{uau b}V^aV^b=V_aV^a$, reproducing (\ref{eq:area-displacement}).  Integrating by parts yields

$$\begin{align}
A^{\rm lin}[h,V]+A^{\rm quad}[G,V]
=-\frac12\int\mathrm du\,V^a
(JV+\delta_hK)_a
+\left[h_{ua}V^a+\frac12V_aD_uV^a\right]_{\partial\gamma}.
\end{align}$$

The bulk term vanishes when the linearized extremality equation holds.  The endpoint term is zero for the compact BTZ circle and is retained for the anchored interval.

### Compact and noncompact Jacobi problems

On a BTZ bifurcation circle of radius $r_+$,

$$\begin{align}
\operatorname{spec}(-D_u^2+1)
=\left\{1+\frac{n^2}{r_+^2}:n\in\mathbb Z\right\}.
\end{align}$$

There is no Jacobi zero mode.  Smooth normal data therefore have a unique smooth extremal completion modulo tangential reparametrizations.  A compactly supported interpolation can match this completion near the horizon to the prescribed Brown--Henneaux generator near infinity without changing its asymptotic charge.

On the complete AdS-Rindler geodesic,

$$\begin{align}
J=-\partial_u^2+1,
\qquad
G_J(u,u')=\frac12e^{-|u-u'|}.
\end{align}$$

For a source in the weighted space used in the main theorem, convolution with $G_J$ gives the unique decaying solution.  General Brown--Henneaux representatives contain homogeneous $e^{\pm u}$ pieces.  The PSL subtraction removes exactly these global-Killing normal components, producing the proper solution (\ref{eq:homogeneous-hw}).

### Field dependence and the cocycle

Let $V[h]$ denote the linear normal solver and $R$ an extension map from normal data to an ambient vector.  With the convention

$$\begin{align}
VR=-1,
\end{align}$$

the HW section is

$$\begin{align}
P_{\rm HW}=1+RV,
\qquad
P_{\rm HW}^2=P_{\rm HW}.
\end{align}$$

Its variation must retain the field dependence:

$$\begin{align}
\delta E(P_{\rm HW}h)
=2E\left(P_{\rm HW}h,
\delta h+RV[\delta h]\right).
\end{align}$$

Dropping the $RV[\delta h]$ term would incorrectly treat a field-dependent gauge section as a constant projector.  The finite-action cocycle in (\ref{eq:finite-action-upsilon}) is the corresponding correction in the charge language.
