# 02 — Spin-2 conformal-metric kinematics (regression only)

## Status

**Checked symbolically, not a Stage-2 reduction.**  This file records the
kinematic identity that will seed the conformal-metric Dirichlet pullback.  The
full spin-2 contribution to $\Theta_X$ and $\Omega_X$ is left open because the
Stage-1 finite outer-cut polarization is not closed.

With

$$
q_{AB}=\Omega\bar q_{AB},\qquad \det\bar q=1,
$$

one has

$$
\theta=\partial_\lambda\log\Omega,
\qquad
\sigma_{AB}=\frac{\Omega}{2}\partial_\lambda\bar q_{AB},
\tag{1}
$$

and therefore

$$
\Omega\sigma^{AB}
=\frac12\bar q^{AC}\bar q^{BD}
\partial_\lambda\bar q_{CD},
\qquad
\bar q^{AB}\partial_\lambda\bar q_{AB}=0.
\tag{2}
$$

Thus the unreduced spin-2 term is naturally in conformal-metric Dirichlet
polarization,

$$
\Theta_N^{(2)}
=\frac{C_G}{2}\int_N
\widetilde\sigma^{AB}\delta\bar q_{AB}
\,d\lambda d^2x,
\qquad
\widetilde\sigma^{AB}:=\Omega\sigma^{AB}.
\tag{3}
$$

For the unit-determinant local chart

$$
\bar q_{AB}=\operatorname{diag}(e^{2\phi},e^{-2\phi}),
$$

the script verifies

$$
\frac12\widetilde\sigma^{AB}\delta\bar q_{AB}
=2\dot\phi\,\delta\phi.
\tag{4}
$$

This is a chart regression for factors, trace removal, and density powers.  It
does not prove the nonlocal constraint pullback, shared-corner matching, the
Reisenberger equivalence, or completeness.  When Stage 2 resumes,
$\bar q^+|_{S_0}=\bar q^-|_{S_0}$ must be imposed once, not as two independent
corner metrics.

