---
paper id: 2607.16581v1
title: Separating the linearized Einstein equations in Kerr
authors:
  - Jianwei Mei
publication date: 2026-07-18T01:46
abstract: |-
  The paper uses de Donder gauge, a Kerr Killing-Yano symmetry operator, Weyl-scalar reconstruction constraints, tracelessness, and fixed parity to reduce the linearized vacuum Einstein equations on Kerr to separated Teukolsky data. A computer-algebra differentiate-cancel-simplify procedure reconstructs the metric components, with large coefficient lists supplied as Mathematica replacement rules.
comments: "9 pages, 5 supplemental Mathematica files"
url: https://arxiv.org/abs/2607.16581v1
summary: "An ansatz-assisted symbolic metric-reconstruction route from extreme-spin Teukolsky functions, useful as a separation benchmark but not a completeness proof."
tags: []
---

Back to [[2026_07_21_overview]].

The transferable mechanism is computational: combine the field equations with gauge, hidden symmetry, trace, parity, and Weyl-scalar constraints until all metric components can be eliminated in favor of separated master functions. The result should be read as a reconstruction inside a stated ansatz and generic parameter region, not as a proof that every Kerr perturbation is captured.

# Kerr perturbations and the constrained system

The Boyer--Lindquist variables are \(x^\mu=(t,r,x,\phi)\) with \(x=\cos\theta\), and

$$
X=r^2+a^2-2Mr,\qquad
Y=1-x^2,\qquad
H=r^2+a^2x^2.
$$

For \(h_{\mu\nu}=\delta g_{\mu\nu}\), the starting ingredients are:

- ten vacuum equations \(\delta R_{\mu\nu}=0\);
- four de Donder constraints;
- ten eigenvalue equations for the rank-four symmetry operator \(\mathcal K_4\) built from the Kerr Killing--Yano tensor.

With the harmonic convention

$$
h_{\mu\nu}=e^{-i(\omega t-m\phi)}f_{\mu\nu}(r,x),
$$

the problem is a coupled system of 24 PDEs for ten component functions. Two further constraints define the extreme Weyl master functions \(f_0,f_4\), bringing the warmup system to 26 equations.

The paper uses

$$
\rho_\pm=r\pm iax,
$$

and distinguishes \(\partial_r\) by a dot and \(\partial_x\) by a prime. Fixed parity is implemented by

$$
\mathcal P f(r,x)=f(r,-x),
$$

with a sign \(\epsilon=\pm1\) assigned to each tensor component and parity-related master functions

$$
\widetilde f_{0,4}=\epsilon f_{0,4}(r,-x).
$$

# Differentiate--cancel--simplify elimination

The algorithm repeatedly differentiates equations, cancels their highest derivatives against other equations, and simplifies the remainder.

1. The warmup first removes higher \(r\) derivatives, giving ten radial evolution relations plus sixteen residual PDEs.
2. To discover angular reductions, the calculation temporarily assigns numerical values to \(M,a,\omega,m,\lambda\). This produces angular Teukolsky equations and radial equations for \(f_0,f_4\), but does not close on every metric component.
3. The trace of the field equation obeys \(\Box h=0\). The paper then **restricts** to

$$
h=g^{\mu\nu}h_{\mu\nu}=0.
$$

This is a selected traceless spin-two sector; \(\Box h=0\) alone does not imply \(h=0\).
4. Adding parity-conjugate Weyl constraints gives 28 equations. Solving the trace condition removes \(f_{t\phi}\), leaving nine metric functions and nine radial relations.
5. Further elimination leaves \(f_{tt}\) and \(f_{xx}\); fixing a numerical \(r\) then eliminates \(f_{tt}\) and produces a twelfth-order angular equation for \(f_{xx}\).

The closing ansatz is

$$
f_{xx}
=(HY)^{-n}
\sum_i\left[p_i(x)f_i+q_i(x)f_i'\right],
\qquad
f_i\in\{f_0,f_4,\widetilde f_0,\widetilde f_4\},
\tag{source: ansatz.fxx1}
$$

searched through \(n\le6\). A unique solution is reported **inside this ansatz class**. Dependence on the temporarily fixed parameters and on \(r\) is then restored by fitting coefficient ansätze. This numerical-discovery/generic-restoration step is practical but is not accompanied by a complete symbolic equivalence proof.

# Metric reconstruction from the extreme Weyl scalars

After solving the trace condition, the nine remaining metric functions are written schematically as rational combinations of

$$
f_0,\quad f_4,\quad \widetilde f_0,\quad \widetilde f_4
$$

and their first derivatives, with forty coefficient polynomials \(A_i(r,x)\). Remaining radial equations impose four \(B_i\) relations. Solving those produces six \(C_i\) relations and introduces the Teukolsky--Starobinsky constant \(Q\).

An alternative split

$$
f_{\mu\nu}=f_{\mu\nu}^{(4)}+f_{\mu\nu}^{(0)}
$$

uses forty \(D_i\) and forty \(E_i\) coefficients. Without the fixed-parity relation, the two pieces can be assigned one extreme Weyl scalar each. The paper's structural claim is therefore a metric reconstruction from separated Teukolsky data, rather than a new separated equation independent of the Teukolsky system.

# Exceptional modes and scope

The displayed formulas divide by powers of

$$
\omega,\quad M,\quad Q,\quad X,\quad Y,\quad \rho_\pm
$$

and sometimes by separated functions. Consequently static modes, \(Q=0\), horizons \(X=0\), the rotation axis \(Y=0\), and zeros of the separated functions require limits or separate treatment. The source does not supply those branches.

Other restrictions are substantive:

- the background is vacuum Kerr;
- fixed parity is imposed during the closing calculation;
- tracelessness is selected rather than derived for every solution;
- the rational ansatz may omit solutions;
- numerical parameter specialization is used during elimination.

These qualifications prevent the result from being called a complete, globally regular separation theorem.

# What the supplemental Mathematica files contain

The source distribution contains:

| file | data |
|---|---|
| Supplemental_Eq_33_repA.m | \(A_1,\ldots,A_{40}\) |
| Supplemental_Eq_35_repB.m | \(B_1,\ldots,B_4\) |
| Supplemental_Eq_37_repC.m | \(C_1,\ldots,C_6\) |
| Supplemental_Eq_40_repD.m | \(D_1,\ldots,D_{40}\) |
| Supplemental_Eq_41_repE.m | \(E_1,\ldots,E_{40}\) |

Each file is only a bare Wolfram replacement list. Its notation is

$$
\text{cM}=M,\qquad
\text{sss}=\lambda,\qquad
X[r]=r^2+a^2-2Mr,\qquad
Y[x]=1-x^2,
$$

$$
\text{rn}[r,x]=\rho_-=r-iax,\qquad
\text{rp}[r,x]=\rho_+=r+iax.
$$

There are no definitions of the Kerr metric, field equations, de Donder operator, symmetry operator, Weyl scalars, or Teukolsky equations. The files are coefficient data, not executable verification notebooks.

# Reuse in the vault

1. The constraint stack is a useful template for checking a metric-reconstruction ansatz: field equations, gauge constraints, hidden-symmetry eigenvalue, trace choice, and curvature/master-field definitions must all be tested separately.
2. The numerical-discovery step should be followed by a generic residual substitution before a formula is imported into a Kerr/AdS calculation.
3. Exceptional denominators should be turned into an explicit branch table rather than silently excluded.
4. For CPS work, reconstruction must also be checked against residual gauge directions and the symplectic form; this paper establishes neither.

# Verification note

**Checked.** All five official supplemental files were loaded in a fresh Mathematica kernel. They are lists of unique rules with lengths \(40,4,6,40,40\) and left-hand sides \(A_1\ldots A_{40}\), \(B_1\ldots B_4\), \(C_1\ldots C_6\), \(D_1\ldots D_{40}\), and \(E_1\ldots E_{40}\). Exact comparison gives \(B_i=C_i\) for \(i=1,2,3\), while \(B_4\ne C_4\), consistent with their distinct roles.

**Not independently verified.** The files contain no residuals, so loading them does not test \(\delta R_{\mu\nu}=0\), de Donder gauge, the Killing--Yano eigen-equations, Weyl reconstruction, or Teukolsky separation. A full check would have to rebuild those differential operators and substitute all coefficients in source order.

**Source issues.** The text calls all constraints “obviously mutually compatible,” which is stronger than the evidence shown; one displayed equation has a duplicated comma; and the uniqueness statement applies only to the finite rational ansatz searched.
