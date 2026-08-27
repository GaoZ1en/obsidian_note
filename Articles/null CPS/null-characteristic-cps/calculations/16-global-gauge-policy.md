# Global Gauge Policy for the Boundaryless Benchmark

## 1. Main-Theorem Policy

The global classical and Fock theorems are stated first on the gauge-invariant
radiative master, equivalently field-strength, solution space on

$$
M=\mathbb R^{1,1}\times S^2_R,
\qquad Q_E=0,
\qquad n=0.
\tag{1.1}
$$

This removes any dependence of the main theorem on a choice of potential at
spatial infinity.  For every \(\ell\geq1\), the exact and coexact master maps
of calculation 06 identify the two scalar masters with the two
gauge-invariant Maxwell polarizations.  The main quantum statement is called
the

> radiative Fock representation in the zero-flux/zero-Chern sector.

This wording avoids any suggestion that the \(\ell=0\) mode itself is being
quantized in the radiative Fock theorem.

## 2. Optional Potential-Quotient Corollary

This is a secondary corollary, not an assumption of the main field-strength
theorem.  It is proved on the smooth stationary spectral core.  A completed
potential quotient would require a separately chosen potential Sobolev norm
and is not needed by the main theorem.

1. Work on the trivial bundle \(n=0\), with radiative field strengths of
   finite energy and \(Q_E=0\).
2. Admit potentials reconstructed mode by mode from calculation 06 whose
   coefficients and all derivatives are Schwartz in \(z\).
3. Fix the two asymptotic potential frames at \(z\to+\infty\) and
   \(z\to-\infty\), including their relative constant.
4. The proper gauge group on this core consists of smooth transformations
   \(A\mapsto A+d\varepsilon\) for which the mode coefficients of
   \(d\varepsilon\) and all their derivatives are Schwartz in \(z\), and

   $$
   \varepsilon(t,z,\cdot)\longrightarrow0
   \quad\text{as }z\to\pm\infty
   \tag{2.1}
   $$

   in the smooth topology.
5. Transformations approaching a nonzero angle-dependent limit at either end
   are not quotiented.  They change an asymptotic frame and require a
   separate charged/edge theory, which is not developed here.
6. A spacetime-constant \(U(1)\) parameter acts trivially on \(A\); it may be
   divided out as the ineffective center, but supplies no phase-space
   direction or oscillator.

Under this fixed-frame policy, two admitted radiative potentials with the same
field strength differ by a proper pure gauge.  Their difference is a closed
one-form, and

$$
H^1_{\mathrm{dR}}(\mathbb R^{1,1}\times S^2)=0.
\tag{2.2}
$$

It is therefore globally exact.  Equality of both fixed asymptotic frames,
including the relative constant, selects a primitive obeying (2.1).
Conversely \(d\varepsilon\) does not change the masters or field strength.
Hence

$$
\boxed{
\mathcal A^{\mathrm{rad}}_{\mathrm{Sch}}/\mathcal G_{0,\mathrm{Sch}}
\simeq \mathcal S^{\mathrm{master}}_{\mathrm{Sch}}
\simeq \mathcal S^{F,\mathrm{rad}}_{\mathrm{Sch}}.}
\tag{2.3}
$$

Equation (2.3) is not asserted for unfixed asymptotic frames, nontrivial
bundles, nonzero flux backgrounds, or gauge parameters with independent
limits at the two ends.

## 3. Finite Cuts Versus the Global Theorem

On a finite rectangle, proper versus charged gauge remains useful off-shell
bookkeeping: cut charges, relative frames, and endpoint terms must not be
silently erased.  But the finite rectangle is only a local Goursat patch.  In
one declared master sector and function space,

$$
\mathcal G^1_{U,V}\simeq\operatorname{Sol}(D_{U,V}).
\tag{3.1}
$$

The finite profiles coordinatize this local solution germ/restriction space.
They do not coordinatize \(\operatorname{Sol}(M)\), and the patch is not
promoted to an autonomous finite-region gauge phase space.

The global boundaryless Fock theorem is formulated on the master/field-
strength space of Section 1.  The finite-cut proper/charged distinction
therefore does not introduce an extra oscillator or asymptotic edge sector
into that theorem.

## 4. Claim Strength

**Proved under the displayed policy:** the fixed-frame proper-gauge quotient
corollary (2.3) on the smooth Schwartz core.  The global
master/field-strength energy theorem itself does not depend on this
corollary.

**Conditional/outside scope:** an energy-completed potential quotient before a
specific potential Sobolev topology is chosen; any quotient allowing
independent asymptotic gauge limits; charged asymptotic-frame dynamics;
background subtraction for \(Q_E\neq0\); or a sum over Chern sectors.
