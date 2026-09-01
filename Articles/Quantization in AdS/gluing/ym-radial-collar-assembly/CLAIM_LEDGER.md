# Claim ledger

`passed` means proved analytically in the smooth local/trivial exact-product collar sector of `calculations.md`. Exact matrix checks are diagnostics, not completeness evidence.

| Claim | Verdict | Exact boundary/evidence |
|---|---|---|
| Original connection descent | passed | $a_2=a_1^h$ with $A^g=g^{-1}Ag+g^{-1}dg$; fixed-$h$ variation calibrated to the source convention. |
| Full coadjoint transmission | passed | $\Pi_1+\operatorname{Ad}_h^*\Pi_2=0$ from the original action. The Cauchy Gauss moment map is only its electric component. |
| Reachable fixed-$h$ flattening | passed in the declared sector | $A_2\mapsto A_2^{\widetilde h^{-1}}$ gives a common cut chart. Existence of an outer-frame-compatible extension is part of reachability; arbitrary nonextendable $h$ is excluded. |
| Radial gauge ODE | passed | $\partial_xg=-A_xg$, $g(0)=1$, with path ordering and smooth tangential parameter dependence. It is tapered to wall identity outside the inner collar. |
| Covariant reconstruction | passed | In radial gauge $\partial_xA_a=F_{xa}$; in the original frame the curvature is conjugated by the path-ordered $g$. |
| Cut data for normal recursion | passed | Descent fixes $A_a$ and $F_{ab}$; full transmission plus opposite outward normals fixes $F_{xa}$ in the common chart. No extra datum is imposed. |
| YM/Bianchi normal system | passed | $\partial_xP_a=-D^bQ_{ba}$, $\partial_xQ_{ab}=D_aP_b-D_bP_a$, $D^aP_a=0$ on the exact product collar. |
| Non-Abelian jet recursion | passed | $[\partial_x,D_a]X=[P_a,X]$ makes higher commutator terms polynomial in lower jets. All normal and mixed jets match by induction. |
| Smooth collar patching | passed | Equality of every one-sided jet gives one smooth connection across the doubled collar. No analyticity/Taylor convergence is assumed. |
| Geometric assembly map | passed at orbit-set level | Raw concatenation, radial repair and orbit assembly are distinct. Based classes map to global orbits; quotient by the reachable common/twisted cut action gives the two-sided orbit bijection. |
| Choice independence | passed | If $D=C^v$, then $\partial_xv=vD_x-C_xv$; same/twisted cut value and smooth coefficients give one global smooth proper comparison. |
| Regional arrows | passed | Defined independently by wall identity and twisted cut values. Every arrow gives a global proper equivalence after repair, and every global proper equivalence restricts back to such an arrow. |
| Stabilizers | passed under the fixed-wall anchor | $D_A\epsilon=0$ with $\epsilon=0$ at a physical wall gives $\epsilon=0$; the finite statement is identical. Unanchored components can retain holonomy centralizers. |
| Crossing Wilson line | passed | $U_\gamma=U_2h^{-1}U_1$ has the correct path ordering; cut actions and passive transition changes cancel, and wall-based collar repairs preserve it. |
| Original CPS compatibility | passed on admissible smooth families | Based contractions are Gauss boundary terms; common/twisted contractions cancel on transmission. Variable $h$ retains $-\langle E_2^\perp,h^{-1}\delta h\rangle_S$. No completed kernel/quotient theorem. |
| Non-Abelian obstruction | failed to appear in this sector | Commutators alter the recursion but require no extra cut datum. This is a positive local geometric result, not a statement about regional evolution. |
| General YM time-slab theorem | not proved | Regional constraint-preserving IBVP, gauge realization, restriction coverage, HJ relation and exact-isotropic composition remain open. |
| Gribov/nontrivial bundle/Sobolev/quantum extensions | outside scope | No claim is made. |

## Final verdict

$$\begin{align}
\boxed{\texttt{passed}:\quad
\text{smooth local non-Abelian radial-collar geometric assembly closes}.}
\end{align}$$

The next blocker is regional constraint-preserving IBVP/gauge realization. Adding Lorenz/Coulomb well-posedness or ad hoc interface conditions is neither needed nor permitted in this lemma.
