# Supplied-text audit: BV conventions and stationary tree transfer

## Verdict

**The corrected supplied text is consistent with the frozen independent derivation. No remaining sign, normalization, or full-BV master-equation defect was found in the requested convention and stationary-transfer sections.** The result is conditional on the cyclic contraction and smooth-domain properties proved by the separate operator/domain review; this audit does not re-prove that analytic construction.

This is explicitly a **supplied-text audit**, conducted only after the [independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/independent-derivation.md>) and its CAS fixtures were frozen. It must not be described as an additional independent derivation or independent software implementation.

Audited input: introduction, §1, and §4 of [note 18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>). The exact supplied sections are preserved in the [audit snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/note18-supplied-audit-snapshot.md>), with version metadata in the [audit input record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/note18-supplied-audit-input.json>). At capture the full source SHA-256 was

```text
c039f69b8c6bb93642652d9ca4ecc2d10ca128869e848a5ef2d0be4d5b110ae0
```

The snapshot covers source lines 3–26, 27–104, and 255–333. Later source edits are outside this exact snapshot.

## 1. Convention map: correct

The totalization in equations (6)–(8), [note 18:75–103](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L75-L103>), agrees with the frozen convention map:

- The factor \((-1)^{p\,\mathrm{gh}(\zeta)}\) in the product is the coefficient-first to totalized Koszul sign.
- Both \(D_T\) and \(h_T\) acquire the coefficient sign \((-1)^{\mathrm{gh}(\eta)}\).
- With original canonical covector antifields \(p=(\omega^*,e^*)\), \(c^*=(\rho^*,\tau^*)\), the Lie-algebra-valued dual forms are \(u=\kappa^{-1}S_{\rm int}p\) and \(v=\kappa^{-1}S_{\rm int}c^*\).
- Therefore the superfield is \(\Psi=c+\alpha-u+v\): negative physical-antifield and positive ghost-antifield superfield components.
- Its action expands to \(+p\,Q\alpha-c^*Qc\), namely \(+p(Dc+[\alpha,c])+c^*[c,c]/2\), consistent with the **left** BRST generator \(QF=(S,F)\), the fundamental antibracket \((q,p)=+1\), and \(Qc=-[c,c]/2\).

There is no hidden change to a right BRST convention, no omission of \(B^{-1}\), and no incorrect assertion that the original covector antifields themselves are the unscaled Lie-algebra-valued degree-two/three coefficients.

## 2. Actual stationary equation: correct

Equation (22), [note 18:255–264](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L255-L264>), follows from varying the action along the regular UV Lagrangian, not from setting all UV Euler–Lagrange components to zero.

In particular, the wording **“UV exact projection”** is correct. The coexact Lagrangian pairs with the complementary exact summand; vanishing of the derivative against all its tangents is equivalent to vanishing of the exact UV component, and hence to its image under \(h_T\) being zero. On the regular coexact domain \(h_TD_Ty=y\), while \(h_TD_Tx=0\). These facts give

\[
y=-\frac12h_T[x+y,x+y].
\]

It would be wrong to replace this by the stronger equation that the entire UV projection of the full derivative vanishes. The corrected text does not make that replacement.

The operator review's closure distinction is compatible with this argument:

- on the smooth/algebraic core the homotopy image is the appropriate regular Lagrangian;
- \(\operatorname{im}(h:L^2\to L^2)\) is generally a proper dense regular subspace of its closed coexact completion;
- the closed Hilbert Lagrangian is that completion, not the uncompleted image.

The supplied stationary proof uses the regular domain. Neither the frozen formal derivation nor this audit should be cited as a separate proof that the uncompleted L2 image is closed.

## 3. Quartic and complete component formula: correct

The order-two solution is \(y_2=-h_T[x,x]/2\). In equation (23), [note 18:266–280](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L266-L280>), the kinetic contribution is \(+\mathcal B([x,x],h_T[x,x])/8\), while the cubic contribution linear in \(y_2\) is \(-\mathcal B([x,x],h_T[x,x])/4\). Their sum is exactly

\[
S_4=-\frac18\mathcal B([x,x],h_T[x,x]).
\]

The new equation (23a), [note 18:282–290](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L282-L290>), correctly keeps the pairing-dual antifields distinct from the canonical covectors. With

\[
K_2=[\alpha,\alpha]-2[u,c],\qquad x=c+\alpha-u+v,
\]

its component-first expression is

\[
S_4=-\frac18\mathcal B_{\rm cf}(K_2,hK_2)
+\mathcal B_{\rm cf}([\alpha,c],h([\alpha,u]+[c,v])).
\]

Both the plus sign and the unit coefficient of the endpoint cross term are correct. The source components

\[
([c,c],-2[\alpha,c],K_2,2([\alpha,u]+[c,v]))
\]

are correct in this convention. In particular, the ghost-antifield sector is retained. The already frozen torus fixture checked this endpoint sector with five nonzero \(\alpha c^2c^*\) monomials; no new kernel run was performed for this audit.

## 4. CME reduction and direct normalization: correct

The argument in [note 18:292–309](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L292-L309>) is the standard classical stationary reduction, stated in a form applicable to the smooth formal BV domain:

1. The derivative of the stationary solution contributes nothing to retained derivatives of the substituted action, because derivatives along the UV Lagrangian vanish.
2. The full odd symplectic splitting decomposes the antibracket into retained and UV parts.
3. Every term of the UV self-antibracket contains a derivative along the UV Lagrangian, so that UV bracket vanishes on the critical locus.
4. The full cubic action obeys the CME; hence its stationary retained action obeys it coefficientwise.

This does not require a BV density or BV Laplacian. Equation (24a) provides the explicit sign/normalization check missing from a mere appeal to transfer:

\[
(S_{3,P},S_{3,P})_P=-\frac14\mathcal B(b,Pb),\qquad
(S_{2,P},S_4)_P=-\frac18\mathcal B(b,Rb).
\]

These agree with the frozen proof. The sign in the second formula uses \(Q_0h_T=-h_TQ_0\); with \(Q_0x=-D_Tx\), this gives \(Q_0(h_Tb)=h_TD_Tb\). Finally \(\mathcal B(b,b)=0\) follows from cyclicity and graded Jacobi, so the two terms cancel as required without setting \(D_Tx=0\). The supplied distinction between transfer to a retained differential complex and minimal/cohomological transfer is correct.

The physical operator formula (26) was not independently re-audited here. Its displayed overall coefficient \(-a/4\) is consistent with the frozen physical restriction of the full pairing formula. Its operator and closure statements remain the subject of the separate operator review.

## 5. Wording issues found and resolved

Two issues in the first supplied version were reported to the parent; the current snapshot resolves both:

1. The introductory field in equation (2) is now explicitly retained, \(P_\Lambda\Psi=\Psi\), at [note 18:15](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L15>). Previously this condition was clear only later in §4.
2. The normalization sentence now accounts for the \(\kappa^{-1}\) antifield dictionary, at [note 18:280](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L280>). The earlier literal claim that every \(\kappa\) factor was inside the bilinear pairing was too strong in the original covector coordinates. The corrected statement—no **additional** inverse-level factor multiplies the quartic—is right.

The “UV exact projection” correction was already present when the first supplied text was read; it was checked and accepted, not independently discovered in this audit.

## 6. Preserved execution evidence; no reruns

As requested, the actual successful MCP Sage server-return envelopes were copied byte for byte to new evidence files:

- [Heisenberg successful envelope](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-heisenberg-success-envelope.json>) and [exact server stdout](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-heisenberg-stdout.txt>).
- [Torus successful envelope](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-torus-success-envelope.json>) and [exact server stdout](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-torus-stdout.txt>).
- [Color-control successful envelope](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-control-success-envelope.json>) and [exact server stdout](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-control-stdout.txt>).

The [kernel evidence manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/kernel-evidence-manifest.json>) records source/output/envelope hashes, source mtimes, tool call ids, successful return status, elapsed times, Sage version, and the correspondence between saved outputs and exact stdout. All three envelopes have `ok: true`, `error: null`, and no upstream or stdout truncation. Their reported stdout, stderr, and wrapper-code hashes were verified during preservation.

The kernel envelope's `codeSha256` hashes the short execution stub that loads a source file; it must not be mistaken for the source-file hash. The manifest records the latter separately. Saved human-readable outputs are exact stdout prefixes; the only extra stdout is the final saved-path announcement, or the control's extra terminal newline.

No CLI was used, so no CLI exit code is invented. No mathematical kernel was rerun. The 20 previously frozen proof/source/output files were hashed before and after preservation and were unchanged. This audit and the preservation records are new files only; neither the main note nor the frozen independent derivation was edited by this reviewer.
