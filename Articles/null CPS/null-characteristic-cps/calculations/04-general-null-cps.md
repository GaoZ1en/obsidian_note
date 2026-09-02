# General Null CPS Extracted from Maxwell

## 1. Extraction Rule

The general formalism is not defined by copying the Maxwell variables. It is defined by the sequence of operations that the Maxwell calculation forced:

$$\begin{align}
\boxed{ \text{action} \to\text{raw null pullback} \to\text{null constraints} \to\text{corner completion} \to\text{proper-gauge quotient} \to\text{characteristic relation}.} \tag{1.1}
\end{align}$$

Every arrow requires a declared endpoint and function-space policy.

The data lesson extracted from Maxwell is

$$\begin{align}
\boxed{ \text{characteristic null data} =\text{sheetwise radiative data} +\text{lower-dimensional corner integration/constraint data} +\text{compatibility}.} \tag{1.2}
\end{align}$$

This is a structural template, not a claim that every theory has the same Maxwell variables.

## 2. Raw Null CPS Pullback

For a Lagrangian field theory with fields (Phi), begin with

$$\begin{align}
\delta L=E(\Phi)\delta\Phi+d\theta(\Phi;\delta\Phi), \qquad \omega=\delta\theta. \tag{2.1}
\end{align}$$

Pull back $(\theta,\omega)$ to the null hypersurface before solving constraints or choosing a gauge. This determines flux-carrying variables, not automatically a complete characteristic input set. Degeneracy of the induced metric means that normal derivatives can become generator-tangent derivatives; the independent characteristic data therefore cannot be inferred by analogy with a spacelike $(q,p)$ pair.

## 3. Constraint Split

Classify the pulled-back equations into:

1. free radiative profiles along generators;
2. generator transport equations;
3. corner integration constants;
4. remaining bulk evolution equations;
5. subsidiary constraints whose vanishing must propagate.

This list is theory dependent. “Null phase space” before this split is only a kinematical prephase space.

## 4. Two Roles of a Null Surface

### Flux-Null-Surface

A null component of the boundary of a spacetime region carries the pullback of $\omega$. It measures symplectic flux and participates in Stokes identities. A flux discussion may consistently focus only on radiative/flux-carrying variables; it need not claim that those variables reconstruct the bulk.

### Characteristic-Input-Null-Surface

Two intersecting null surfaces supply initial data for a Goursat problem. If they are intended to reconstruct the bulk phase space, radiative profiles alone are insufficient: the lower-dimensional integration/constraint data and all corner compatibility conditions must be retained. Their union represents one initial surface, not two independent systems.

The same geometric hypersurface can play either role in different comparisons. Confusing the roles leads either to double counting or to deleting Coulomb/corner sectors that carry no radiative flux but remain part of the characteristic input.

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

$$\begin{align}
\mathcal C_{12} =\{\text{constraint-complete data with corner compatibility}\}. \tag{6.1}
\end{align}$$

Then the general composition target is

$$\begin{align}
P_{12}=\mathcal C_{12}/\mathcal G_{\mathrm{proper},diag}, \tag{6.2}
\end{align}$$

or, if charged frame variables are retained, a symplectic reduction at the appropriate matching moment map followed by the remaining configuration restrictions. Whether (6.2) is a smooth symplectic manifold, a stratified quotient, or a derived relation is a separate theorem.

## 7. B1 Versus B2

### B1 — classical/algebraic Reconstruction

This consists of the restriction/reconstruction relation, symplectic or Peierls bracket, and induced map of gauge-invariant CCR/Weyl algebras. It does not require factorization of Hilbert spaces.

### B2 — States and Cross Covariance

Regional state restrictions do not determine correlations between causally separated or separately represented pieces. A global state requires cross covariance or equivalent positive-frequency data. Partial trace, when a finite regulator supplies one, discards rather than reconstructs that information.

## 8. General Claim Boundary

The general Maxwell statement proves the sheet-constraint part of (1.1) and shows why (1.2) is necessary in a linear Abelian model. The $\mathbb R^{1,1}\times S^2_R$ benchmark additionally closes radiative reconstruction, Fock/Peierls quantization and weak-symplectic composition by an explicit master reduction. That model-specific closure does not prove that every null theory has a relative frame--charge pair, that all constraint reductions are regular, or that gravity follows by replacing electric flux with area. Those remain comparison hypotheses to be tested from the relevant action.
