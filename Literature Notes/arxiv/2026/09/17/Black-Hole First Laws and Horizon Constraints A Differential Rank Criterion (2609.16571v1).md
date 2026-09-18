---
paper id: 2609.16571v1
title: "Black-Hole First Laws and Horizon Constraints: A Differential Rank Criterion"
authors:
  - Gunn Kim
publication date: 2026-09-15T03:14:34Z
abstract: |-
  The paper separates the established covariant-phase-space first law from attempts to rewrite selected horizon or field-equation relations thermodynamically. On a finite-dimensional family of stationary metrics with an independently marked radial surface, an extended first-law covector is representable by selected constraint differentials exactly when an augmented Jacobian has the same rank. The paper distinguishes pointwise alignment from a smooth neighborhood identity, shows that pointwise success is automatic when regular constraints already define the full physical horizon family, and verifies exact identities for Kerr--Newman and two new-massive-gravity black-hole families.
comments: "8 pages, no figure"
url: https://arxiv.org/abs/2609.16571v1
summary: "A precise audit of what horizon-equation thermodynamic rewritings actually prove: the rank test is correct, the examples check, and successful complete-constraint tests do not rederive the first law."
tags: []
---

Daily overview: [[2026_09_17_overview]]

# Verdict

**Correct.** The differential-rank criterion is elementary but exact, the distinction between covariant-phase-space variations \(\delta\) and finite-parameter differentials \(d\) is maintained, and all three displayed factorization identities pass independent symbolic checks. The Kerr--AdS entropy--volume Jacobian, the solved NMG residual cancellations, and the static NMG Wald-entropy continuation also check.

The main interpretive conclusion is equally important: when regular constraints already define the complete physical horizon family, pointwise alignment of the first-law covector with their differentials follows from the established first law. In that case \(\Delta_{\mathrm{th}}=0\) is a consistency check, not a new derivation of black-hole thermodynamics. An exact identity away from the horizon is stronger and depends on how \(S,T,\Omega,\Phi\) are extended to an independently displaced marked surface.

The paper does not prove that all horizon-equation multiplier procedures are equivalent, and it does not give a universal no-go theorem for deriving field equations from thermodynamics. Its test concerns a specified reduced space, a specified set of residuals, and a specified extended first-law representative.

# Conceptual entry point

The problem is one of information accounting. A calculation may begin from a field equation, substitute an exact black-hole family, impose a horizon condition, insert charge definitions, and multiply by \(dS\) or \(dV\). If the final line resembles a first law, which input actually supplied the thermodynamic information?

The paper's answer is to freeze the ingredients and ask a finite-dimensional question:

$$
\text{Does the selected constraint differential span contain the chosen first-law covector?}
$$

This distinguishes three objects that are often conflated:

1. the physical covariant-phase-space first law on admissible stationary variations;
2. a horizon-location condition on a metric family with a marked surface;
3. a bulk field-equation residual, possibly already annihilated by substituting an exact solution.

# How to read the paper

- **Read Secs. 2--3 first:** they define the marked-surface space, the extended covector, and the rank criterion.
- **Keep Sec. 3.2 beside every example:** it proves that pointwise success is automatic when the constraints already define the complete physical family.
- **Use Sec. 3.3 as the scope guard:** neighborhood identities depend on the off-horizon extension.
- **Read Sec. 4 for the exact algebra:** Kerr--Newman, rotating BTZ in NMG, and new-type NMG all factorize.
- **Read Sec. 5 before interpreting a field-equation derivation:** solved residuals can vanish identically while the horizon constraint remains nontrivial.
- **Read Sec. 6 for two independent cautions:** \(dS\) and \(dV_{\rm th}\) are independent in rotating state space, and free-energy variations require fixed ensemble data.
- **Appendix A** gives the local differential-geometric proof; **Appendix B** derives the chosen static NMG entropy continuation.

# Complete source map

| Source block | Role | Main output |
|---|---|---|
| Sec. 1 | Frames the audit of horizon thermodynamic rewritings. | Separates horizon constraints from solved field-equation residuals. |
| Sec. 2.1 | States the physical charge balance. | \(\delta M-\Omega_H\delta J-\Phi_H\delta Q=T_H\delta S_{\rm grav}\). |
| Sec. 2.2 | Builds the marked-surface space. | \(R\) is a surface label, not a new metric degree of freedom. |
| Sec. 2.3 | Extends horizon quantities away from the horizon. | Defines \(\bar\Theta\) with only its pullback physically fixed. |
| Sec. 3.1 | Gives pointwise and smooth rank criteria. | Distinguishes row-span inclusion from smooth neighborhood factorization. |
| Sec. 3.2 | Proves automatic pointwise success for complete regular constraints. | Identifies the first-law covector with the conormal space. |
| Sec. 3.3 | Varies the entropy extension. | Shows exact off-horizon alignment is extension-dependent. |
| Sec. 4.1 | Kerr--Newman example. | \(\bar\Theta^{\rm KN}=-(R/2D)dC_{\rm KN}\). |
| Sec. 4.2 | Rotating BTZ in NMG. | \(\bar\Theta^{\rm BTZ}=-\alpha dC_{\rm BTZ}\). |
| Sec. 4.3 | New-type NMG black hole. | \(\bar\Theta^{\rm new}=-2dF\). |
| Sec. 5 | Compares horizon constraints with solved NMG field equations. | \(E^r{}_r\equiv0\) carries no differential information on the exact families. |
| Sec. 6.1 | Compares entropy and volume. | \(dS\wedge dV_{\rm th}\ne0\) for rotating Kerr--AdS. |
| Sec. 6.2 | Fixes ensemble data in free-energy variations. | \(d_x\bar{\mathscr F}_B|_p=\bar\Theta|_p\) only at matched equilibrium data. |
| Secs. 7--8 | Interprets and summarizes the test. | Defines what success and failure can and cannot establish. |
| Appendix A | Proves the local differential structure. | Gives the \(dC\) span and modulo-constraint form. |
| Appendix B | Derives the static NMG entropy prescription. | Produces \(\bar S=4\pi(2R+bL)\). |

# Physical first law versus parameter-space covector

For a stationary axisymmetric black hole, the horizon symmetry is

$$
\xi_H=\partial_t+\Omega_H\partial_\phi,
$$

supplemented by a gauge transformation when matter is charged. The covariant-phase-space statement is

$$
\delta M-\Omega_H\delta J-\Phi_H\delta Q
=T_H\delta S_{\mathrm{grav}}.
$$

The parameters \(\Omega_H\) and \(\Phi_H\) are evaluated on the background generator. One must not turn this adjusted charge variation into
\(d(M-\Omega_HJ-\Phi_HQ)\) and add spurious \(J\,d\Omega_H\) or \(Q\,d\Phi_H\) terms.

The paper then introduces

$$
\mathcal P=\{(g(\lambda),\Sigma_R)\},
\qquad
x=(R,\lambda^1,\ldots,\lambda^k).
$$

The surface coordinate \(R\) moves the marked surface while leaving the metric parameters fixed. It is not a new bulk field. A horizon condition

$$
C_H(R,\lambda)=0
$$

selects the physical horizon family \(\mathcal S_H\subset\mathcal P\).

Smooth extensions \(\bar S,\bar T,\bar\Omega,\bar\Phi\) are chosen on \(\mathcal P\), agreeing with physical quantities only on \(\mathcal S_H\). The parameter-space one-form is

$$
\bar\Theta
=dM-\bar T\,d\bar S-\bar\Omega\,dJ-\bar\Phi\,dQ.
$$

The physical first law fixes only

$$
\iota^*\bar\Theta=0,
\qquad
\iota:\mathcal S_H\hookrightarrow\mathcal P.
$$

It does not select a unique value of \(\bar\Theta\) in directions that move the marked surface away from the horizon.

# Rank criterion

For selected constraints \(C_A(x)=0\), define

$$
(J_C)_{Ai}=\partial_iC_A,
\qquad
\bar\Theta=\tau_i\,dx^i.
$$

At a point \(p\), representability means

$$
\bar\Theta|_p=\sum_A\mu^A_p\,dC_A|_p.
$$

This is equivalent to

$$
\operatorname{rank}
\begin{pmatrix}
J_C\\
\tau
\end{pmatrix}
=\operatorname{rank}J_C.
$$

The deficiency

$$
\Delta_{\mathrm{th}}
=\operatorname{rank}
\begin{pmatrix}
J_C\\
\tau
\end{pmatrix}
-\operatorname{rank}J_C
\in\{0,1\}
$$

is zero exactly when

$$
\bar\Theta(v)=0
\quad\text{for all }v\in\ker dC_p.
$$

Thus a vector tangent to all selected constraint level sets but detected by \(\bar\Theta\) exhibits a missing differential direction.

## Pointwise inclusion versus a smooth identity

A neighborhood identity requires smooth finite coefficients:

$$
\bar\Theta=\sum_A\mu^A\,dC_A
\quad\text{throughout }U.
$$

Pointwise inclusion at a rank-changing point is insufficient. The paper's example

$$
C=x^3,
\qquad
\bar\Theta=x\,dx
$$

passes the pointwise span test everywhere, but away from \(x=0\) requires \(\mu=1/(3x)\), which diverges at the origin.

The test is invariant under regular coordinate changes. If \(\widetilde C=A(x)C\) with \(A\) invertible, the zero-set span is unchanged because

$$
d\widetilde C=A\,dC
\quad\text{on }C=0.
$$

Away from the zero set, the extra \((dA)C\) term can change an exact neighborhood identity. Singular redefinitions such as \(C\mapsto C^2\) can even erase the differential on the common zero set.

# Why complete regular constraints pass automatically

Suppose

$$
\mathcal S_H=C^{-1}(0)
$$

and the constraints are regular and complete. Then

$$
T_p\mathcal S_H=\ker dC_p.
$$

Because the physical first law says the pullback of \(\bar\Theta\) vanishes,

$$
\bar\Theta|_p\in N_p^*\mathcal S_H
=\operatorname{span}\{dC_A|_p\}.
$$

This is the decisive limitation on the test: the three successful black-hole examples cannot independently derive the first law because their complete horizon constraint already makes pointwise success a consequence of it.

In a neighborhood, the strongest statement implied by the pullback is only

$$
\bar\Theta
=\sum_A\mu^A\,dC_A
+\sum_AC_A\eta^A.
$$

The second term vanishes on the constraint surface but need not vanish nearby. Eliminating it is extra information about the chosen extensions.

# Extension dependence

Take one horizon constraint and shift the entropy extension by

$$
\bar S'=\bar S+hC_H.
$$

Then

$$
\bar\Theta'
=\bar\Theta
-\bar T h\,dC_H
-\bar T C_H\,dh.
$$

Both representatives pull back to the same physical first law. On \(C_H=0\), alignment is preserved. Away from the horizon, the final term generally spoils exact factorization. Therefore a neighborhood identity is not an invariant physical theorem unless the off-horizon continuation is part of the statement.

# Exact black-hole identities

## Kerr--Newman

Use coordinates \((R,M,a,Q)\), physical \(J=aM\), and

$$
C_{\mathrm{KN}}=R^2-2MR+a^2+Q^2,
\qquad
D=R^2+a^2.
$$

The prescribed extensions are

$$
\bar S=\pi D,
\qquad
\bar T=\frac{R-M}{2\pi D},
\qquad
\bar\Omega=\frac aD,
\qquad
\bar\Phi=\frac{QR}{D}.
$$

Direct differentiation gives

$$
\bar\Theta^{\mathrm{KN}}
=-\frac{R}{2D}\,dC_{\mathrm{KN}}.
$$

For \(R>0\), the coefficient is smooth and \(dC_{\mathrm{KN}}\) has rank one because its \(dM\) component is \(-2R\).

## Rotating BTZ in new massive gravity

The NMG action is

$$
I_{\mathrm{NMG}}
=\frac{1}{16\pi G}
\int d^3x\sqrt{-g}
\left[
R_{\mathrm{sc}}+\frac2{\ell^2}
+\frac1{m^2}
\left(R_{\mu\nu}R^{\mu\nu}-\frac38R_{\mathrm{sc}}^2\right)
\right].
$$

The bare and effective AdS scales obey

$$
\frac1{\ell^2}
=\frac1{L^2}\left(1-\frac1{4m^2L^2}\right).
$$

For

$$
C_{\mathrm{BTZ}}
=-M+\frac{R^2}{L^2}+\frac{J^2}{4R^2},
\qquad
\alpha=1+\frac1{2m^2L^2},
$$

the physical charges and extensions in \(8G=1\) units are

$$
\mathcal M=\alpha M,
\qquad
\mathcal J=\alpha J,
\qquad
\bar S=4\pi\alpha R,
\qquad
\bar T=\frac{f'(R)}{4\pi},
\qquad
\bar\Omega=\frac{J}{2R^2}.
$$

They yield

$$
\bar\Theta^{\mathrm{BTZ}}
=-\alpha\,dC_{\mathrm{BTZ}}.
$$

At the critical value \(\alpha=0\), both the covector and coefficient vanish. The zero deficiency is then trivial and does not recover a nonzero thermodynamic direction.

## New-type NMG black hole

At

$$
m^2=\frac1{2L^2},
\qquad
\ell^2=2L^2,
$$

use

$$
f(r)=\frac{r^2}{L^2}+\frac{br}{L}+c,
\qquad
\mathcal M=\frac{b^2-4c}{2},
$$

and

$$
C_{\mathrm{new}}=F(R,b,c)
=\frac{R^2}{L^2}+\frac{bR}{L}+c.
$$

The extensions

$$
\bar S=4\pi(2R+bL),
\qquad
\bar T=\frac{2R+bL}{4\pi L^2}
$$

give

$$
\bar\Theta^{\mathrm{new}}
=-2\,dF.
$$

The \(dc\) coefficient of \(dF\) is one, so the constraint is regular. Appendix B derives the entropy continuation from the NMG Wald-density expression; it does not claim uniqueness away from a Killing horizon.

# Horizon constraint versus solved field equation

For the exact rotating BTZ family,

$$
E^r{}_r
=\frac1{L^2}-\frac1{\ell^2}
-\frac1{4m^2L^4}
\equiv0
$$

after using the relation between \(L\) and \(\ell\). This holds at every radius and does not require \(f(R)=0\).

For the new-type quadratic solution, \(f''=2/L^2\) and \(f'''=0\), so the displayed curvature tensor gives

$$
K^r{}_r
=\frac1{2L^4}-\frac{f'}{2rL^2},
$$

and at the special coupling

$$
E^r{}_r
=\frac{f'}{2r}-\frac1{2L^2}+L^2K^r{}_r
\equiv0.
$$

Thus

$$
dE^r{}_r=0
\qquad\text{but}\qquad
dC_H\ne0.
$$

There is no contradiction: the first expression says the metric family already solves the bulk equations; the second selects which marked surface is its horizon. A thermodynamic identity obtained after mixing the two has used information beyond the solved residual.

# Entropy, thermodynamic volume, and ensemble data

For Kerr--AdS at fixed \(L\),

$$
S=\frac{\pi(r_+^2+a^2)}{\Xi},
\qquad
\Xi=1-\frac{a^2}{L^2},
$$

and

$$
V_{\mathrm{th}}
=\frac{2\pi(r_+^2+a^2)
\left(2r_+^2L^2+a^2L^2-r_+^2a^2\right)}
{3L^2\Xi^2r_+}.
$$

The Jacobian is

$$
dS\wedge dV_{\mathrm{th}}
=\frac{
4\pi^2a^3(r_+^2+a^2)(1+r_+^2/L^2)^2
}{
3r_+^2\Xi^4
}
\,dr_+\wedge da.
$$

It is nonzero for \(r_+>0\) and \(0<|a|<L\), and vanishes in the static limit. Therefore entropy and thermodynamic volume cannot generally be interchanged as differential multipliers on rotating state space.

For fixed external intensive data \(T_B,\Omega_B,\Phi_B\),

$$
\bar{\mathscr F}_B
=M-T_B\bar S-\Omega_BJ-\Phi_BQ.
$$

Varying only the marked-surface coordinates gives

$$
d_x\bar{\mathscr F}_B
=dM-T_Bd\bar S-\Omega_BdJ-\Phi_BdQ.
$$

At a physical equilibrium point where external and horizon data match,

$$
\left.d_x\bar{\mathscr F}_B\right|_p
=\bar\Theta|_p.
$$

If the ensemble data vary, the extra terms
\(-\bar S\,dT_B-J\,d\Omega_B-Q\,d\Phi_B\) must be retained. An on-shell Euclidean relation does not turn an arbitrary off-horizon continuation into a Euclidean action.

# Translation into the vault's CPS and charge language

The paper's most reusable warning is the separation

$$
\delta
\quad\text{(covariant phase-space variation)}
\qquad\text{versus}\qquad
d
\quad\text{(finite parameter-space differential)}.
$$

The CPS first law comes from equality of Hamiltonian charge variations at infinity and at the horizon on admissible linearized solutions. The marked-surface calculation begins only afterward. It is a pullback/extension audit of an established charge identity, not a replacement for the Harlow--Wu or Iyer--Wald calculation.

For regional sewing, \(R\) is analogous to a bookkeeping choice of cut location. Moving \(R\) does not itself supply an additional dynamical port variable. If one wants a genuine fluctuating embedding or corner degree of freedom, it must be introduced in the field-space action and symplectic structure, not added as a coordinate after solving the bulk theory.

For the proposed gravity--\(U(1)\) Chern--Simons boundary problem, two cautions are immediate:

1. the horizon generator is field-dependent, so adjusted charge variations must be used; one must not differentiate the unadjusted \(\Omega_HJ+\Phi_HQ\);
2. gravitational Chern--Simons terms require a generalized entropy/charge construction, so the ordinary diffeomorphism-covariant Iyer--Wald formula cannot be imported unchanged.

# Verification log

## Checked

- Mathematica independently differentiated the Kerr--Newman extensions and obtained exactly
  \(\bar\Theta^{\mathrm{KN}}=-(R/2D)dC_{\mathrm{KN}}\).
- Mathematica independently obtained
  \(\bar\Theta^{\mathrm{BTZ}}=-\alpha dC_{\mathrm{BTZ}}\)
  and
  \(\bar\Theta^{\mathrm{new}}=-2dF\).
- Mathematica reproduced the Kerr--AdS Jacobian coefficient in
  \(dS\wedge dV_{\mathrm{th}}\) exactly.
- Mathematica verified the displayed rotating-BTZ NMG residual cancellation using the \(L\)--\(\ell\) relation and the new-type residual cancellation for \(r\ne0\), \(L\ne0\).
- Mathematica evaluated the Appendix B Wald-density continuation at \(m^2=1/(2L^2)\) and obtained
  \(4\pi(2R+bL)\).
- The first Mathematica pass accidentally attempted to assign the protected symbol \(D\); that failed check was discarded, the denominator was renamed, and the decisive Kerr--Newman calculation was rerun successfully.

## Assumptions

- Couplings and boundary conditions are fixed in the three factorization examples.
- Kerr--Newman uses \(R>0\); rotating BTZ uses \(R>0\), \(L\ne0\); the new-type check uses \(L\ne0\).
- The entropy--volume independence statement uses \(r_+>0\), \(L>0\), and \(0<|a|<L\).
- The new-type NMG first law uses the cited boundary conditions and charge prescription with no independent hair work term.

## Source-derived

- The covariant-phase-space first law, NMG charge normalizations, the static Wald-density formula before specialization, and the interpretation of the marked-surface extensions were taken from the source and its stated references.
- The conormal and constant-rank arguments were checked logically but not formalized in a proof assistant.

## Not independently verified

- No independent Iyer--Wald derivation of the physical charges or entropies for the three black-hole theories was performed.
- The paper's conclusions apply only to the specified reduced spaces and residual sets; no universal sufficiency or impossibility theorem was tested.

# Reusable conclusions

1. A successful complete-horizon rank test is generally automatic from the first law.
2. Exact off-horizon factorization is extension-dependent and must be reported with its prescription.
3. Solved field-equation residuals and horizon-location constraints carry different information.
4. Entropy and thermodynamic volume are independent directions once rotation is present.
5. Fixed-ensemble free-energy stationarity and horizon charge balance are related but distinct statements.
