# Supplied-text audit of the complete-AdS contraction note

## Verdict

**The audited operator/domain statements, Lorenz polarization (21), signed antighost action, and physical kernel (26) are correct under the stated complete-background input. One nearby explanatory sentence must exchange “coexact” for “exact” and explicitly restrict to the UV component.** The stationary equation (22) itself remains correct.

This is a supplied-text audit performed *after* the independent derivation was frozen, not a second independent derivation. The audited [note 18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) had SHA256 `6186c0a682110b6cd7a40d65fb348474aa6e0c400dd63ddc2c8a9a91dc9f23fd` when inspected. The [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/report.md>) remains unchanged, SHA256 `ca848706febcbd571fce623d3d2ac2468e89e7fef5f24c7a6200a412c9e258eb`.

## 1. Closed operators, domains, and cyclic signs: pass

The following portions of [note 18:105–241](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L105-L241>) agree with the independent proof:

- Equation (9) uses the actual positive Hilbert adjoint, with the necessary internal swap and degree sign: delta_p=(−1)^p H_(4−p) D_(3−p) H_p. No unitary-flat assumption is made.
- Every block and sign in (11) is correct, especially D2=−H0 G dagger H2 and delta3=−H1 G H3.
- The two identifications preceding (12) produce a genuine doubling of the balanced augmentation. The H1 Dirac domain, H2 Laplacian domain, and full gap at least one follow from that actual complete operator and the expressly retained gaps.
- Equation (14) correctly distinguishes the maximal differential domain from the smaller intersection domain H1. It retains the possibly rough L2 exact summand. The absence of harmonic modes and closed differential ranges are justified by the gap.
- The common spectral projectors preserve the closed D and delta domains, commute with them, and are B-self-transpose. Equation (16) has the right cyclic sign, (−1)^p, and correctly explains the bounded extension of hD rather than assigning D to every L2 vector.
- The estimates (17) and all three blocks in (18) are correct. Equations (19)–(20) correctly separate the closed coexact UV Lagrangian from the nonclosed image of the order-minus-one homotopy.

The coefficient-first superfield signs in (7) agree with [note 16:167–191](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L167-L191>): the two-form antifield component is minus kappa inverse times the swap, while the ghost-antifield component is plus kappa inverse times the swap. Together with (6), these reproduce the stated positive physical-antifield term and plus one-half c-star[c,c] term in the existing antibracket convention.

For maximal explicitness, the phrase “maximal distributional domain” may be expanded as Dom D_p={u in L2:Du in L2 distributionally}. This is an optional presentation improvement, not a missing operator hypothesis: completeness supplies graph-core cutoffs with [D,chi]=dchi wedge, and the independent report supplies the detailed closure argument.

## 2. Lorenz polarization and antighost normalization: pass

In [note 18:243–253](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L243-L253>), interpret the shorthand R in (21) degreewise as R_Lambda=1−P_Lambda, not as the bold elliptic operator R.

The uncut coexact pieces are exactly

\[
 \ker\delta_0=E^0,\qquad
 \ker\delta_1=\ker G^\dagger,\qquad
 \ker\delta_2=H_1\operatorname{ran}G,\qquad
 \ker\delta_3=0.
\]

Indeed delta2=K H2 and ker K=ran G. Also delta3=−H1 G H3 is injective because G dagger G is gapped. Commutation of the cutoff with these maps gives precisely (21). Thus the physical field slice is the positive-Hilbert Hermitian-Lorenz slice, and the two-form antifield component is its paired gauge/antighost part.

For smooth UV antighost parameters, the displayed parametrization and (7) give

\[
 \Psi_2=H_1G\bar c=S_{\rm int}*G\bar c
       =-\kappa^{-1}S_{\rm int}p
 \quad\Longrightarrow\quad p=-\kappa *G\bar c.
\]

Substitution in the coefficient-first action yields

\[
 \int p\wedge Dc
 =-\kappa\langle G\bar c,Gc\rangle_+
 =-\kappa\langle\bar c,Mc\rangle_+.
\]

No extra swap, factor two, or Grassmann reordering sign is needed: the coefficient order is already bar c then c. Since kappa=2a, this is precisely the signed −2a coefficient in [note 15:80–86](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L80-L86>).

The smooth qualification matters. On the closed L2 polarization, G and M are not defined on arbitrary L2 ghosts; the last expression is an operator pairing on its operator domain or the corresponding quadratic form on the H1 form domain. The note correctly separates this from its regular stationary domain and does not infer an induced infinite-dimensional antighost density.

## 3. Physical kernel and level normalization: pass

The physical source in [note 18:295–314](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L295-L314>) is correct:

\[
 b=[\alpha,\alpha],\qquad j=H_2b
   =\bigl(2*[w,f],*([w,w]-[f,f])\bigr).
\]

Using the actual h2 block and kappa=2a,

\[
 -\frac18\mathcal B(b,h_2b)
 =-\frac\kappa8\langle j,K\mathbf R^{-1}R_{\Lambda,1}j\rangle_+
 =-\frac a4\langle R_{\Lambda,1}j,
                  K\mathbf R^{-1}R_{\Lambda,1}j\rangle_+.
\]

This proves the normalization in (26), including both cutoff placements. K commutes with the common spectral generator and kills the gauge range. The positive-Hilbert cubic derivative is a j, and the actual transverse Hessian is 2aK. Their ordinary stationary Schur correction is therefore

\[
 -\frac12(a j)^t(2aK)^{-1}(a j)
 =-\frac a4 j^tK^{-1}j,
\]

with the projected generalized inverse understood. Thus no additional inverse level should be appended to (26) or to the fully normalized expression (23). This check concerns a stationary inverse, not a Gaussian density or phase theorem.

## 4. One correction to the stationarity explanation

The supplied [note 18:264](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L264>) says that the Maurer–Cartan derivative

\[
 F=D_T(x+y)+\tfrac12[x+y,x+y]
\]

pairs to zero with every UV Lagrangian tangent exactly when “its coexact projection vanishes.” This is reversed for F itself, and only its UV part is tested by UV variations.

Let mathcal E=D delta Delta inverse and mathcal F=delta D Delta inverse denote the exact and coexact projectors. Since the UV Lagrangian is the coexact half and is its own B-annihilator, the precise equivalence is

\[
 \mathcal B(F,z)=0\quad\forall z\in\mathcal L_0
 \quad\Longleftrightarrow\quad
 R_\Lambda F\in\mathcal L_0
 \quad\Longleftrightarrow\quad
 \mathcal E R_\Lambda F=0
 \quad\Longleftrightarrow\quad h_{\Lambda,T}F=0.
\]

A minimal replacement is:

> Its pairing with every UV Lagrangian tangent vanishes exactly when its **UV exact projection** vanishes, equivalently when its image under h_T vanishes.

Alternatively one may say that the UV coexact projection of the positive-Hilbert gradient H F vanishes. That is not the same as the coexact projection of the displayed F. Equation (22) and its minus one-half coefficient are unchanged by this correction. The parent was notified; no main-note text was edited in this audit.

## 5. Evidence and scope

The existing [31-check result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/result.json>) and [coverage statement](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/README.md>) agree with the frozen independent operator derivation. Their radial checks are correctly not presented as L2 spectral or domain proofs.

I read the six-check [normalization source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads_bv_tree_normalization_checks.py>), its [actual result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-tree-normalization.2edo_wza/result.json>), and its [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-tree-normalization.2edo_wza/actual-server-return.json>). All six labels pass in Sage 10.9; the return has no error, warning, stderr, transport stderr, or truncation. The source hash matches the executed-result hash, `b5cb8bed9cec89894ea48b0cc45deb13afe49e987260fb7e1cba80eaa60e029c`. Its coverage is the real Lie algebra, invariant pairing, physical cubic and all eighteen gradients, concentration coefficient, and scalar stationary Schur normalization; it is not a proof of the full graded CME or analytic nonlinear-domain theorem.

No kernel was rerun. The nonlinear Sobolev theorem in §5 and the complete graded tree/CME proof were deliberately not re-audited; they belong to the separate reviewers. The independent report and main note were left untouched. Only this separate audit file was created.
