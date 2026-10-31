# Post-freeze follow-up: exact finite-dimensional Berezinian of the BV map

**Result: with the arrow and Darboux conventions fixed below, the exact pointwise anticanonical Berezinian is (det e)^(-2), with no additional ghost/antifield-dependent factor when expressed in the source geometric variables.** The shifted coframe e+(2/kappa)i_xi omega* arises if an even-output/odd-input Jacobian block is differentiated on the wrong side while retaining the ordinary Schur formula.

This is a separately labelled follow-up requested by the parent after [the independent derivation was frozen](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/FREEZE.md>). It does not alter that frozen result. The parent suggested both the mixed-Hessian route and the tentative shifted-coframe expression; this follow-up is therefore **not** independent discovery of that question. The sign analysis and native-Sage countercheck below were carried out separately. There is no continuum measure, regularization, or QME conclusion.

## 1. Arrow, coordinates, and which Jacobian

Use the exact type-II generator F from [the derivation, §4](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/derivation.md#L201-L226>). Its arrow is

\[
 \Phi:(q,p)_{\rm geometric}\longmapsto(Q,P)_{\rm CS},
\]
\[
 q=(e,\omega\mid\lambda,\xi),\quad
 Q=(E,\Omega\mid\rho,\tau),\quad
 P=(E^*,\Omega^*\mid\rho^*,\tau^*),
\]

where q,Q have parities (even physical fields | odd ghosts), while p,P have reversed parities. Put g=1/kappa. The mixed-coordinate position map at fixed P is

\[
\begin{aligned}
 E&=e+g\,i\Omega^*+\tfrac g2 i^2\rho^*,&
 \Omega&=\omega+g\,iE^*+\tfrac g2 i^2\tau^*,\\
 \tau&=i e+\tfrac g2 i^2\Omega^*+\tfrac g3i^3\rho^*,&
 \rho&=\lambda+i\omega+\tfrac g2 i^2E^*+\tfrac g3i^3\tau^*.
\end{aligned}
 \tag{B1}
\]

Here i is the ordinary component-first contraction, with xi on the left, exactly as in the frozen map. In particular, these are the mixed-P formulas, **not** the already-eliminated explicit formulas in old antifields.

For an even variation, define a coefficient-on-the-left coordinate Jacobian by

\[
 \delta Q^A=\mathsf A^A{}_B\,\delta q^B,
 \qquad\mathsf A^A{}_B=\frac{\partial_r Q^A}{\partial q^B}\Big|_P.
 \tag{B2}
\]

The antibracket conventions give

\[
 \partial_r Q^A/\partial q^B
 =(-1)^{\epsilon_B(\epsilon_A+1)}
 \partial_l Q^A/\partial q^B.
 \tag{B3}
\]

Thus the physical-even output / ghost-odd input block is **minus** its left derivative. The ghost-odd output / ghost-odd input block is its ordinary left derivative. In this coefficient ordering the standard even-supermatrix block formula applies without extra inserted signs.

## 2. The ghost Schur complement is exactly the original coframe

Partition the right Jacobian in (B2) as

\[
 \mathsf A=\begin{pmatrix}\mathbf1&B\\ C&D\end{pmatrix},
 \qquad
 \operatorname{Ber}\mathsf A=\frac1{\det(D-CB)}.
 \tag{B4}
\]

The physical block is the identity because the P-dependent corrections in (B1) contain no e or omega. The only relevant nonzero C entries are

\[
 \frac{\partial\tau^a}{\partial e_i^b}=\delta^a_b\xi^i,
 \qquad
 \frac{\partial\rho^a}{\partial\omega_i^b}=\delta^a_b\xi^i.
\]

For each internal component, direct left differentiation of the odd outputs gives

\[
 D_{\tau,\xi}=e+g\,i\Omega^*+g\,i^2\rho^*,
 \qquad
 D_{\rho,\xi}=\omega+g\,iE^*+g\,i^2\tau^*.
 \tag{B5}
\]

Using the **right** derivatives for B gives exactly

\[
 (CB)_{\tau,\xi}=g\,i\Omega^*+g\,i^2\rho^*,
 \qquad
 (CB)_{\rho,\xi}=g\,iE^*+g\,i^2\tau^*.
 \tag{B6}
\]

The lambda columns are uncorrected. Consequently, in row order (rho,tau) and column order (lambda,xi),

\[
 \boxed{D-CB=\begin{pmatrix}\mathbf1&\omega\\0&e\end{pmatrix}},
 \qquad
 \boxed{\operatorname{Ber}\mathsf A=(\det e)^{-1}}.
 \tag{B7}
\]

Every spatial row of (B5)–(B6) was checked with formal g, arbitrary independent new antifields, all three xi generators, and all i^3 terms retained. One internal component proves each row separately because the generator is an internal orthogonal sum; assembling the three internal components gives the 6-by-6 ghost block in (B7).

If instead B is replaced by its **left** derivative while the standard Schur formula is kept, then B changes sign and the purported translation Schur block is

\[
 e+2g\,i\Omega^*+2g\,i^2\rho^*.
\]

On the canonical graph Omega*=omega*−i lambda* and rho*=lambda*, this becomes

\[
 e+2g\,i\omega^*,
 \tag{B8}
\]

which precisely reproduces the parent's tentative shifted expression. It is a side-of-derivative inconsistency, not an actual Berezinian correction.

## 3. Why the full anticanonical Berezinian is the square

Let

\[
 \mathsf H_A{}^B=\frac{\partial_r p_A}{\partial P_B}\Big|_q.
\]

Because F is odd, the type-II equations are p_A=partial_l F/partial q^A and Q^A=partial_l F/partial P_A. Commuting the left derivatives with their graded signs gives

\[
 \mathsf H_A{}^B
 =(-1)^{\epsilon_A(\epsilon_B+1)}\mathsf A^B{}_A.
 \tag{B9}
\]

This is the supertranspose of A, **acting on parity-reversed coordinates P**. Hence its Berezinian is the reciprocal:

\[
 \operatorname{Ber}_{\Pi q}\mathsf H
 =\operatorname{Ber}_{q}(\mathsf A)^{-1}.
 \tag{B10}
\]

One can see the sign directly from (B4). In the original q index order, H has blocks

\[
 \mathsf H=\begin{pmatrix}\mathbf1&C^t\\-B^t&D^t\end{pmatrix},
\]

but its even coordinates are the ghost-antifields in the lower block. After parity ordering, its even Schur block is D^t+B^tC^t=(D-CB)^t; the equality uses the anticommutation of the odd entries of B and C. Thus Ber H=det(D-CB), as required.

Factor the full coordinate transformation through the mixed coordinates (q,P). The triangular maps (q,P)→(Q,P) and (q,P)→(q,p) have Berezinians Ber A and Ber H, respectively. Therefore

\[
 \boxed{
 \operatorname{Ber}\frac{\partial(Q,P)}{\partial(q,p)}
 =\frac{\operatorname{Ber}\mathsf A}{\operatorname{Ber}\mathsf H}
 =(\operatorname{Ber}\mathsf A)^2
 =(\det e)^{-2}.}
 \tag{B11}
\]

The orientation-preserving sector fixes the square-root choice: the corresponding formal coordinate **semidensity** factor is (det e)^(-1). The result is already written in source geometric variables, so evaluation on the canonical graph introduces no nilpotent correction to (B11). Re-expressing it instead in target CS coframe E is a different coordinate question and can introduce ghost/antifield terms into e(E,...).

## 4. Minimal two-Grassmann countercheck

After differentiating the full mixed map, set the coframe to the identity, retain only xi^1=theta and the dual component Omega*^{3}_2=eta, set the remaining odd variables and both scalar-ghost antifields to zero. Then theta and eta are independent odd generators. In the affected diagonal entry,

\[
 D_{\tau^2,\xi^2}=1+g\theta\eta,
 \qquad (CB)_{\tau^2,\xi^2}=g\theta\eta.
\]

Thus the right-coordinate Schur entry is 1, whereas the wrong-left-block entry is 1+2g theta eta. Native Sage returned exactly

```text
2-Grassmann right Schur entry: 1
2-Grassmann wrong-left Schur entry: 2*g*theta*eta + 1
```

This countercheck is applied **after** differentiation: setting xi^2 to zero before taking its derivative would incorrectly discard the i^2-antifield correction that is needed for the cancellation.

## 5. Evidence and limited interpretation

The runnable source is [berezinian_followup_check.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_followup_check.py>), SHA256 `874f31c958fc8a42947c2ffc43abedc742c52a10009fbeef772d74d95acddb1d`. The actual returned records are [berezinian_followup_output.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_followup_output.json>) and [berezinian_followup_output.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_followup_output.txt>). Nine generic row identities and both minimal countercheck assertions pass. A coefficient-ring conversion failure occurred after the generic identities had already passed; it is retained separately in [berezinian_failures.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_failures.md>) and corrected with an explicit polynomial-ring homomorphism.

Equation (B11) is a finite-dimensional, pointwise coordinate Berezinian. A continuum product over spacetime points requires a measure prescription and regularization; none was supplied or established here. In particular, no QME or quantum equivalence follows merely from (B11). The parent's warning about degree counting is valid: the divergence of the leading cubic Hamiltonian with a nonconstant inherited density does not determine the finite map's density, because higher-degree generators can contribute at the same divergence degree.

All frozen independent artifacts remain unchanged. This document is only the separately requested post-freeze Berezinian follow-up.
