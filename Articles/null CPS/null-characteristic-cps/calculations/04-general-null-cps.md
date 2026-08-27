# General Null CPS Extracted from Maxwell

## 1. Extraction Rule

The general formalism is not defined by copying the Maxwell variables. It is defined by the sequence of operations that the Maxwell calculation forced:

$$
\boxed{
\text{action}
\to\text{raw null pullback}
\to\text{null constraints}
\to\text{corner completion}
\to\text{proper-gauge quotient}
\to\text{characteristic relation}.}
\tag{1.1}
$$

Every arrow requires a declared endpoint and function-space policy.

## 2. Raw Characteristic Data

For a Lagrangian field theory with fields (Phi), begin with

$$
\delta L=E(\Phi)\delta\Phi+d\theta(\Phi;\delta\Phi),
\qquad
\omega=\delta\theta.
\tag{2.1}
$$

Pull back $(\theta,\omega)$ to the null hypersurface before solving constraints or choosing a gauge. Degeneracy of the induced metric means that normal derivatives can become generator-tangent derivatives; the independent null data therefore cannot be inferred by analogy with a spacelike $(q,p)$ pair.

## 3. Constraint Split

Classify the pulled-back equations into:

1. free radiative profiles along generators;
2. generator transport equations;
3. corner integration constants;
4. remaining bulk evolution equations;
5. subsidiary constraints whose vanishing must propagate.

This list is theory dependent. “Null phase space” before this split is only a kinematical prephase space.

## 4. Two Roles of a Null Surface

### Flux-null-surface

A null component of the boundary of a spacetime region carries the pullback of (omega). It measures symplectic flux and participates in Stokes identities. Boundary conditions may set that flux to zero or convert it into corner charges.

### Characteristic-input-null-surface

Two intersecting null surfaces supply initial data for a Goursat problem. Their profiles are constrained at and along the shared corner. Their union represents one initial surface, not two independent systems.

The same geometric hypersurface can play either role in different comparisons. Confusing the roles leads to double counting of orientations and corners.

## 5. Gauge and Corner Taxonomy

Keep distinct:

- bulk gauge directions;
- proper gauge after the endpoint charge policy is imposed;
- charged cut transformations;
- frame variables used to compare two boundary trivializations;
- genuine material boundary degrees of freedom, if present.

A frame variable becomes a canonical partner of a charge only after an explicit phase-space extension or change of polarization. The word “edge mode” does not determine which of these operations has occurred.

## 6. Composition Template

For two null inputs $N_1,N_2$, define

$$
\mathcal C_{12}
=\{\text{constraint-complete data with corner compatibility}\}.
\tag{6.1}
$$

Then the general composition target is

$$
P_{12}=\mathcal C_{12}/\mathcal G_{\mathrm{proper},diag},
\tag{6.2}
$$

or, if charged frame variables are retained, a symplectic reduction at the appropriate matching moment map followed by the remaining configuration restrictions. Whether (6.2) is a smooth symplectic manifold, a stratified quotient, or a derived relation is a separate theorem.

## 7. B1 Versus B2

### B1 — classical/algebraic reconstruction

This consists of the restriction/reconstruction relation, symplectic or Peierls bracket, and induced map of gauge-invariant CCR/Weyl algebras. It does not require factorization of Hilbert spaces.

### B2 — states and cross covariance

Regional state restrictions do not determine correlations between causally separated or separately represented pieces. A global state requires cross covariance or equivalent positive-frequency data. Partial trace, when a finite regulator supplies one, discards rather than reconstructs that information.

## 8. General Claim Boundary

Maxwell proves that the sequence (1.1) is necessary and workable in a linear Abelian model. It does not prove that every null theory has a relative frame--charge pair, that all constraint reductions are regular, or that gravity follows by replacing electric flux with area. Those are comparison hypotheses to be tested from the relevant action.
