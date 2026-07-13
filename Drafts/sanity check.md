---
title: Canonical3 Appendix E.1 Sanity Check
date: 2026-06-19
summary: "A detailed sanity check of Appendix E.1 in canonical3(3).pdf, with emphasis on the missing factor of 1/2 in equations E.18 and E.19."
---

# Canonical3 Appendix E.1 Sanity Check

This note records the sanity check of Appendix E.1 in `canonical3(3).pdf`, especially the normalization of equations (E.18) and (E.19).

## Verdict

Equations (E.18) and (E.19) are missing an overall factor of $1/2$ if their left-hand sides are kept as

$$\begin{align}
-\tilde\Omega[\mathcal L_{\xi_0}\Phi;\Phi^*],\qquad -\tilde\Omega[\mathcal L_{\bar\xi_0}\Phi;\Phi^*].
\end{align}$$

With the Killing-vector normalization used in the paper,

$$\begin{align}
\xi_0=\frac12(\partial_t-\partial_\phi),\qquad \bar\xi_0=\frac12(\partial_t+\partial_\phi),
\end{align}$$

the right-hand sides currently printed in (E.18) and (E.19) match the generators for $\partial_t-\partial_\phi$ and $\partial_t+\partial_\phi$, respectively. Therefore either

$$\begin{align}
-\tilde\Omega[\mathcal L_{\xi_0}\Phi;\Phi^*]=\frac12(\text{right-hand side of E.18}),
\end{align}$$

and similarly for (E.19), or the left-hand sides should be rewritten with $\partial_t-\partial_\phi$ and $\partial_t+\partial_\phi$ in place of $\xi_0$ and $\bar\xi_0$.

## Conventions Used

The check uses the global AdS$_3$ metric appearing in the paper,

$$\begin{align}
ds^2=-(r^2+1)dt^2+\frac{dr^2}{r^2+1}+r^2d\phi^2.
\end{align}$$

On a $t=\mathrm{constant}$ slice,

$$\begin{align}
\sqrt{\sigma}\,\tau^t=\frac{r}{r^2+1}.
\end{align}$$

The bilinear Noether charge density is read from (E.17):

$$\begin{align}
Q_{\xi}^{(2)}[\Phi_1;\Phi_2]=\int_{\Sigma}d^2x\,\sqrt{\sigma}\,\tau^\mu\xi^\nu\left(\nabla_\mu\Phi_1\nabla_\nu\Phi_2+\nabla_\nu\Phi_1\nabla_\mu\Phi_2-g_{\mu\nu}\nabla_\rho\Phi_1\nabla^\rho\Phi_2-\Delta(\Delta-2)g_{\mu\nu}\Phi_1\Phi_2\right).
\end{align}$$

For the check of (E.18), set $\Phi_1=\Phi$, $\Phi_2=\Phi^*$ and use the vector

$$\begin{align}
\partial_t-\partial_\phi.
\end{align}$$

For (E.19), use

$$\begin{align}
\partial_t+\partial_\phi.
\end{align}$$

The paper's actual Killing vectors are one half of these two vectors:

$$\begin{align}
\xi_0=\frac12(\partial_t-\partial_\phi),\qquad \bar\xi_0=\frac12(\partial_t+\partial_\phi).
\end{align}$$

## Algebraic Sanity Check

Write

$$\begin{align}
T=\partial_t\Phi,\qquad P=\partial_\phi\Phi,\qquad R=\partial_r\Phi,\qquad F=\Phi.
\end{align}$$

For $\partial_t-\partial_\phi$, the density from (E.17), before the final radial completion of the square, is

$$\begin{align}
\frac{r}{r^2+1}\left(2|T|^2-2\operatorname{Re}(TP^*)+(r^2+1)\left[-\frac{|T|^2}{r^2+1}+(r^2+1)|R|^2+\frac{|P|^2}{r^2}+\Delta(\Delta-2)|F|^2\right]\right).
\end{align}$$

This is equivalent, up to the total radial derivative

$$\begin{align}
\partial_r(r^2|F|^2)=2r|F|^2+2r^2\operatorname{Re}(RF^*),
\end{align}$$

to

$$\begin{align}
\frac{r}{r^2+1}|T-P|^2+\frac{1}{r(r^2+1)}|P|^2+r|R|^2+(\Delta-1)^2r|F|^2+r^3\left|R+\frac{1}{r}F\right|^2.
\end{align}$$

This matches the printed right-hand side of (E.18). Hence the printed right-hand side is the expression for $\partial_t-\partial_\phi$, not for $\xi_0=\frac12(\partial_t-\partial_\phi)$.

The same computation with $\partial_t+\partial_\phi$ gives the printed right-hand side of (E.19), so the same factor of $1/2$ is missing there if the left-hand side is kept as $\bar\xi_0$.

The total derivative integrates to a boundary term

$$\begin{align}
\int_0^\infty dr\,\partial_r(r^2|\Phi|^2)=[r^2|\Phi|^2]_{0}^{\infty},
\end{align}$$

which vanishes for regular fields at $r=0$ and the $\Delta>1$ falloff used in Case I.

## Wolfram Language Code

The following code is the Mathematica sanity check. It treats the independent quadratic quantities
`t2`, `p2`, `r2v`, `f2`, `tp`, and `rf` as algebraic symbols standing for

$$\begin{align}
|T|^2,\quad |P|^2,\quad |R|^2,\quad |F|^2,\quad \operatorname{Re}(TP^*),\quad \operatorname{Re}(RF^*).
\end{align}$$

```wl
Clear[rr, dd, t2, p2, r2v, f2, tp, rf, s];

(* Metric shorthand: s = r^2 + 1. *)
s = rr^2 + 1;

(* Density from (E.17) on a t = constant slice.
   a is the coefficient of partial_t.
   sig = -1 gives partial_t - partial_phi.
   sig = +1 gives partial_t + partial_phi.

   The variables mean:
   t2  = |partial_t Phi|^2
   p2  = |partial_phi Phi|^2
   r2v = |partial_r Phi|^2
   f2  = |Phi|^2
   tp  = Re[partial_t Phi Conjugate[partial_phi Phi]]
   rf  = Re[partial_r Phi Conjugate[Phi]]
*)
density[a_, sig_] :=
  rr/s*(a*(2*t2 + 2*sig*tp) +
     s*a*(-t2/s + s*r2v + p2/rr^2 + dd*(dd - 2)*f2));

(* The paper's Killing vectors are half of the light-cone combinations. *)
rawXi0Minus = FullSimplify[density[1/2, -1]];
rawBarXi0Plus = FullSimplify[density[1/2, 1]];

(* Densities printed on the right-hand sides of (E.18) and (E.19). *)
visualRhsMinus =
  rr/s*(t2 + p2 - 2*tp) +
   1/(rr*s)*p2 +
   rr*r2v +
   (dd - 1)^2*rr*f2 +
   rr^3*(r2v + f2/rr^2 + 2*rf/rr);

visualRhsPlus =
  rr/s*(t2 + p2 + 2*tp) +
   1/(rr*s)*p2 +
   rr*r2v +
   (dd - 1)^2*rr*f2 +
   rr^3*(r2v + f2/rr^2 + 2*rf/rr);

(* Total radial derivative: d/dr (r^2 |Phi|^2). *)
bdy = 2*rr*f2 + 2*rr^2*rf;

{
 FullSimplify[visualRhsMinus - 2*rawXi0Minus - bdy],
 FullSimplify[visualRhsPlus - 2*rawBarXi0Plus - bdy],
 FullSimplify[visualRhsMinus/2 - rawXi0Minus - bdy/2],
 FullSimplify[visualRhsPlus/2 - rawBarXi0Plus - bdy/2]
}
```

Expected output:

```wl
{0, 0, 0, 0}
```

The first two zeroes say that the printed right-hand sides equal twice the $\xi_0$ and $\bar\xi_0$ densities, modulo the total derivative. The last two zeroes say that adding the factor $1/2$ gives the correct density for $\xi_0$ and $\bar\xi_0$, again modulo the same total derivative.

## Additional Notes on E.1

For Case I, equations (E.4)-(E.17) are consistent under the stated assumptions: the field obeys the equation of motion, the boundary term at $r=\infty$ vanishes for $\Delta>1$, the regularity condition removes the $r=0$ boundary term, and the Noether convention is $X_\xi\cdot\Omega=-\delta Q_\xi$.

For Case II, the statement that the formulas are the same as in Case I should be read with the extra condition that the leading boundary datum is held fixed so that the boundary variation does not contribute.

For Case III, equation (E.27) is left blank in the PDF. Therefore the Noether-transformation part of Case III is not a completed computation in the current draft and was not checked beyond the displayed variation and symplectic potential.
