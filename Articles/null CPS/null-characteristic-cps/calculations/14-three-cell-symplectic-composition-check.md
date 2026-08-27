# Three-Cell Radiative Symplectic Composition Check

## 1. Analytic Statement

Fix one massive master equation

$$
(\partial_u\partial_v+a)\Phi=0,
\qquad a=\frac{\lambda_\ell}{2}>0.
\tag{1.1}
$$

Let three adjacent Goursat cells be

$$
D_j=[j-1,j]_u\times[0,1]_v,
\qquad j=1,2,3.
\tag{1.2}
$$

On a horizontal edge and a vertical edge define

$$
\Omega^u_{[u_0,u_1];v_0}(\Phi_1,\Phi_2)
=\int_{u_0}^{u_1}du\,
(\partial_u\Phi_1\Phi_2-\partial_u\Phi_2\Phi_1),
\tag{1.3}
$$

$$
\Omega^v_{u_0;[v_0,v_1]}(\Phi_1,\Phi_2)
=\int_{v_0}^{v_1}dv\,
(\partial_v\Phi_1\Phi_2-\partial_v\Phi_2\Phi_1).
\tag{1.4}
$$

The incoming and outgoing forms of one cell are

$$
\Omega_j^{\mathrm{in}}
=\Omega^u_{[j-1,j];0}+\Omega^v_{j-1;[0,1]},
\qquad
\Omega_j^{\mathrm{out}}
=\Omega^u_{[j-1,j];1}+\Omega^v_{j;[0,1]}.
\tag{1.5}
$$

The on-shell current identity

$$
\partial_v(\partial_u\Phi_1\Phi_2-\partial_u\Phi_2\Phi_1)
+\partial_u(\partial_v\Phi_1\Phi_2-\partial_v\Phi_2\Phi_1)=0
\tag{1.6}
$$

gives \(\Omega_j^{\mathrm{in}}=\Omega_j^{\mathrm{out}}\).  When cells are
matched, the right edge of \(D_j\) and the left edge of \(D_{j+1}\) have the
same trace and opposite boundary orientation.  Their matrices therefore
cancel; they are not set to zero.

## 2. The Two Reconstruction Maps

Let \(\mathcal R_{[u_0,u_1]}\) denote the shifted Bessel reconstruction of
Theorem I.  On the simultaneous trace-compatibility locus define

$$
G_{(12)3}
=\mathcal R_{[0,2]}\cup_{u=2}\mathcal R_{[2,3]},
\tag{2.1}
$$

$$
G_{1(23)}
=\mathcal R_{[0,1]}\cup_{u=1}\mathcal R_{[1,3]}.
\tag{2.2}
$$

Both maps use the same outer bottom profile, but they use different
intermediate vertical trace maps.  Each gives a solution of (1.1) with the
same outer Goursat data.  Theorem I therefore proves

$$
\boxed{G_{(12)3}=G_{1(23)}=\mathcal R_{[0,3]}.}
\tag{2.3}
$$

This is the analytic associativity proof.  It depends on Goursat uniqueness,
not on associativity of ordinary addition.

## 3. Finite Profile Basis Used in the Regression

The independent script `scripts/three_cell_symplectic_checks.wl` takes
\(a=1\) and the six real profile directions obtained by restricting

$$
\cos(\alpha_j u+\beta_jv),
\qquad
\sin(\alpha_j u+\beta_jv),
\qquad
(\alpha_j)_{j=1}^3=\left(\frac12,1,2\right),
\qquad
\beta_j=\frac1{\alpha_j}.
\tag{3.1}
$$

This is a finite Goursat profile basis on every cell.  It is chosen instead of
the existing half-integer sine truncation because every edge integral in the
orientation check is then exact, while the Bessel reconstruction remains a
separate nontrivial numerical operation.  The half-integer sine basis remains
the finite local-overlap/Galerkin check in
`s2_master_quantization_checks.wl`.

The script constructs the evaluation matrices of (2.1), (2.2), and direct
width-three reconstruction at points in all three cells.  It also constructs
each edge symplectic matrix from (1.3)--(1.4), rather than inserting a
preassembled total form.

## 4. Matrix Identity and Result

Let \(S\) be the explicit invertible coefficient-to-profile mixing matrix in
the script.  Restricting the direct sum of cell forms to matched traces still
counts one copy of each internal interface.  Removing those duplicated
interface copies is the finite-dimensional compatible reduction:

$$
\Omega_{\mathrm{cells}}^{\mathrm{red}}
:=\sum_{j=1}^3\Omega_j^{\mathrm{in}}
-\Omega^v_{1;[0,1]}-\Omega^v_{2;[0,1]}.
\tag{4.1}
$$

On the matched six-dimensional subspace the exact identities are

$$
\boxed{
S^T\Omega_{\mathrm{outer,out}}S
=S^T\Omega_{\mathrm{outer,in}}S
=S^T\Omega_{\mathrm{cells}}^{\mathrm{red}}S.}
\tag{4.2}
$$

and

$$
\sum_{j=1}^3
(\Omega_j^{\mathrm{in}}-\Omega_j^{\mathrm{out}})
=\Omega_{\mathrm{outer,in}}-\Omega_{\mathrm{outer,out}}.
\tag{4.3}
$$

The two internal contributions are computed from the adjacent cells
separately and obey

$$
-\Omega^v_{1;[0,1]}+\Omega^v_{1;[0,1]}=0,
\qquad
-\Omega^v_{2;[0,1]}+\Omega^v_{2;[0,1]}=0.
\tag{4.4}
$$

In the executed regression both internal edge matrices have rank six.  Thus
(4.4) checks orientation cancellation of nonzero matrices, not disappearance
of an untested edge.

The Wolfram 14.3 run returned

$$
\|G_{(12)3}-G_{1(23)}\|_{\mathrm{samples}}=0
$$

to approximately 29 decimal digits, and both maps agreed with direct
reconstruction to the same precision.  All exact matrix residuals in
(4.1)--(4.4) simplified to zero.

This finite regression is evidence against orientation, trace-map, and
parenthesization mistakes.  The continuum theorem is still the analytic
uniqueness/current argument in Sections 1--2.

## 5. Weyl-Algebra Composition Corollary

Let \(\mathcal C_{123}^{\mathrm{red}}\) be the matched master profile space,
with internal trace redundancies removed, and let

$$
G:\mathcal C_{123}^{\mathrm{red}}
\overset{\sim}{\longrightarrow}
\mathcal S(D_1\cup D_2\cup D_3)
\tag{5.1}
$$

be either map in (2.3).  Since \(G\) is a weak symplectic isomorphism, the Weyl
relations give the canonical \(*\)-isomorphism

$$
\boxed{
\mathfrak W(G):
\mathfrak W(\mathcal C_{123}^{\mathrm{red}},\Omega_{\mathcal C})
\overset{\sim}{\longrightarrow}
\mathfrak W(\mathcal S(D_1\cup D_2\cup D_3),\Omega_{\mathrm{outer}}),
\qquad
W(c)\longmapsto W(Gc).}
\tag{5.2}
$$

If only a symplectic embedding is used, the same formula gives an injective
\(*\)-homomorphism onto the corresponding Weyl subalgebra.  Equation (2.3)
implies that the two parenthesizations induce the same algebra map.

This is a B1 algebraic corollary.  It is not a Hilbert tensor-product
factorization of cells or sheets.  No statement of Fock implementability is
made: a comparison of two independently chosen complex structures would
require a separate Shale--Stinespring check, which is outside this benchmark.

## 6. Scope

**Proved:** radiative weak-symplectic associativity and its Weyl-algebra
corollary for each linear massive master sector.

**Checked exactly/numerically:** nonzero internal edge cancellation, the outer
symplectic pullback identity, and two explicit parenthesized reconstruction
maps on a six-dimensional finite profile basis.

**Not proved here:** the full charged-frame Maxwell composition theorem,
non-Abelian or singular reduction, regional Hilbert factorization, or Fock
implementability of a new composition map.
