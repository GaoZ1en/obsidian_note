# 09. Special points: audit only

The main proofs assume $0<m<1/2$. This file records what changes at the excluded points without importing those changes into the open-interval conclusions.

## 1. $m=0$

At zero mass,

$$
\Delta_+=\Delta_-=\frac32.
$$

The powers coincide, but the leading data remain distinguishable by the outward radial projectors:

$$
P_+\alpha=\alpha,
\qquad
P_-\beta=\beta.
$$

Because the leading indicial matrix is diagonalizable on the two projector spaces, equality of powers does not by itself force a logarithmic solution. What degenerates is the distinction by scaling weight and, correspondingly, the naming of “standard” and “alternative” as two inequivalent conformal dimensions.

Amsel--Marolf exhibit local linear mixed boundary conditions in even bulk dimension of the schematic form

$$
\beta=iq\gamma_5\alpha,
\qquad q\in\mathbb R,
$$

after translating their inward-normal projectors to ours. Such a relation can define a Lagrangian subspace of the boundary super-phase space, but the following points require a dedicated calculation:

- which values preserve parity or exchange it;
- whether a chiral rotation makes different $q$ physically equivalent;
- how charge conjugation acts on the mixed polarization;
- whether every conformally invariant mixed relation is included;
- how the global mode basis and vacuum depend on $q$.

**Status: OPEN.** The pure $\alpha=0$ and $\beta=0$ limits are smooth as classical boundary conditions, but a full mixed-polarization classification has not been proved here.

## 2. $m\uparrow1/2$

At the upper endpoint,

$$
\Delta_-\longrightarrow1,
$$

which saturates the CFT3 spinor unitarity bound. The slow Cauchy density becomes

$$
r^{-2+2m}\,dr\longrightarrow\frac{dr}{r},
$$

and the off-shell tangential action density similarly becomes $d\Omega/\Omega$. Thus the ordinary alternative norm, symplectic form, and action develop logarithmic divergences. Amsel--Marolf's standard-inner-product analysis correspondingly gives a unique boundary condition for $|m|\geq1/2$.

The formal representation label approaches

$$
D(\Delta_-,\tfrac12)\longrightarrow D(1,\tfrac12),
$$

the Di singleton. But this formal limit is not a proof that the unrenormalized bulk alternative phase space exists at the endpoint. A controlled construction would need:

1. a local logarithmic boundary counterterm for the action and an associated corner term;
2. a renormalized even symplectic form;
3. zero renormalized flux and a self-adjoint endpoint evolution;
4. positivity after quotienting any null states;
5. a direct check that only the Di $K$-types remain.

**Status: OPEN.** The present work proves only that the ordinary alternative construction fails logarithmically as $m\to1/2$, while the representation labels approach the Di bound.

## Claim discipline

- **PROVED:** logarithmic failure of the unrenormalized slow norm by radial power counting.
- **LITERATURE-SUPPORTED:** $D(1,\tfrac12)$ is the spinor singleton and $E_0=1$ is the spin-$1/2$ unitarity bound.
- **OPEN:** existence, uniqueness, positivity, and boundary localization of a renormalized endpoint theory.
