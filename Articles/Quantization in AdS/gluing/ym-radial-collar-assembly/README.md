# Yang--Mills radial-collar assembly

**Verdict: passed for smooth original solutions in the declared local/trivial exact-product collar sector.** Non-Abelian path ordering and commutators do not create a new sewing datum. After flattening a reachable fixed transition, tangential connection descent and full action-derived conormal transmission give equal cut data $(A_a,F_{xa})$ in radial gauge. Yang--Mills and Bianchi close the normal-jet recursion, so all jets match and the repaired connection is smooth.

The main formulas are

$$\begin{align}
\partial_xg&=-A_xg,&g|_\Gamma&=1,\\
\partial_x\bar A_a&=\bar F_{xa},\\
\partial_xP_a&=-D^bQ_{ba},&
\partial_xQ_{ab}&=D_aP_b-D_bP_a,&
D^aP_a&=0,\\
[\partial_x,D_a]X&=[P_a,X],\\
\partial_xv&=vD_x-C_xv.
\end{align}$$

Here $P_a=F_{xa}$ and $Q_{ab}=F_{ab}$. The path-ordered solution of the first equation performs the non-Abelian radial transport. The commutator in the fourth line contains only already determined jets, so it closes rather than obstructs the induction.

Files:

- `calculations.md`: original action/sewing signs, reachable fixed-$h$ flattening, radial gauge, normal-jet recursion, assembly, comparison ODE, regional arrows/stabilizers, Wilson line and CPS check.
- `CLAIM_LEDGER.md`: passed/conditional/excluded claim tiers.
- `verification/radial-collar-checks.wl`: exact algebraic and finite-matrix diagnostics.
- `verification/README.md`: reproduction command and limits.

The assembly map exists already on regional based classes but is not injective there; the common/twisted reachable cut action remains. The precise orbit statement is

$$\begin{align}
\mathcal M_h^{\rm YM}/\mathcal K_h^{\rm YM}
\simeq
\operatorname{Sol}_{\rm sm}^{\rm YM}(M)/\mathcal G_M^{\rm prop}
\end{align}$$

in the stated local/trivial smooth sector. Fixed physical wall frames make covariantly constant stabilizers trivial on connected regions. Without a frame anchor, stabilizers must be retained.

This does **not** prove a higher-dimensional Yang--Mills IBVP, Lorenz/Coulomb gauge realization, Gribov theorem, nontrivial-bundle assembly, non-product or low-regularity collar theorem, time-slab exact-isotropic relation, quotient manifold or quantum reduction. The next genuine blocker is regional constraint-preserving IBVP/gauge realization, not local original-solution collar geometry.
