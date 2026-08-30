# 02 — Spin-2 conformal-metric kinematics (regression only)

## Status

**Density convention repaired and checked symbolically; not a Stage-2
reduction.**  This file records the kinematic identity that will seed the
conformal-metric Dirichlet pullback.  The remaining area factor in the bare
coordinate measure is now explicit.  No null constraint has yet been pulled
back in the spin-2 sector.

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

Equation (2) is a tensor contraction identity.  It does not by itself include
the null hypersurface density.  In the Stage-0/HF representative,

$$
dB=d\lambda\,dS
=\Omega\,d\lambda d^2x.
\tag{3}
$$

Therefore, with the **bare** coordinate measure $d\lambda d^2x$, the unreduced
spin-2 potential is

$$
\Theta_N^{(2)}
=\frac{C_G}{2}\int_N
\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}
\,d\lambda d^2x,
\qquad
\widetilde\sigma^{AB}:=\Omega\sigma^{AB}.
\tag{4}
$$

Equivalently, the momentum density conjugate to $\bar q_{AB}$ with respect to
the bare measure is $\Omega\widetilde\sigma^{AB}=\Omega^2\sigma^{AB}$.  If one
instead writes the invariant measure $d\lambda dS$, the displayed extra
$\Omega$ is absorbed into the measure; these two notations must not be mixed.

For the unit-determinant local chart

$$
\bar q_{AB}=\operatorname{diag}(e^{2\phi},e^{-2\phi}),
$$

the script verifies

$$
\frac12\widetilde\sigma^{AB}\delta\bar q_{AB}
=2\dot\phi\,\delta\phi.
\tag{5}
$$

This is the **pure contraction**, while the full bare-measure density is

$$
\frac12\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}
=2\Omega\dot\phi\,\delta\phi.
\tag{6}
$$

The script checks both (5) and (6).  These are regressions for factors, trace
removal, and density powers.  They do not prove the nonlocal constraint
pullback, shared-corner matching, the Reisenberger equivalence, or
completeness.  When Stage 2 resumes,
$\bar q^+|_{S_0}=\bar q^-|_{S_0}$ must be imposed once, not as two independent
corner metrics.
