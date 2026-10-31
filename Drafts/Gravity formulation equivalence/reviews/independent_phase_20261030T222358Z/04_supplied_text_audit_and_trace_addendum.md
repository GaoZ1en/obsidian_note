# Supplied-text audit and trace-order correction

## Provenance

This audit began only after the independent balanced reports and the separately supplied mu-family report had been preserved. The inspected text was [the new elliptic-CS note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md>), 342 lines as returned by the read tool, including its linear-BRST subsection 6.1. No earlier parent candidate, review, synthesis, or metric-source report was read. The references imported by that note were not independently reverified in this audit. This document does not modify the supplied note or any frozen report/evidence.

## Verdict

The fixed-background operator, normalization, eta coefficient, real-part identity, contour sign, and Gaussian BRST interpretation in the supplied text are correct under its stated common-trace compatibility input. I found no algebraic or finite-Gaussian error in sections 3–6. The claim of equality of full metric source functionals is explicitly conditional on imported metric/source-family/orbital-trace results; this audit adds no independent proof of those imported results.

There is one concrete precision correction to **my own** frozen mu report: its statement of equality before taking a spatial finite part is too strong if understood as equality of finite-radius cutoff kernel traces after using the nonlocal polar isometry. The corrected scope is set out below. The supplied note itself avoids that inference by making the orbital-descent input explicit.

## 1. Trace-order correction to the frozen mu report

In the paragraph headed “Why the common regulator is exactly invariant” in [the frozen mu report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/03_supplied_mu_family.md>), replace the *interpretation* of “before taking a spatial ... finite part” by the following precise statement:

> The two-by-two pair trace is exactly mu-independent on the complete equivariant multiplicity spaces. To identify this with the stipulated common-Casimir renormalized trace, one needs compatibility of the homogeneous functional calculus with the identity density and the full, convergent nonidentity orbital integrals. After that step, the spatial geodesic finite part at each fixed epsilon is mu-independent, and its epsilon finite part is likewise mu-independent. No equality at finite radial cutoff, pointwise equality of every image kernel, or cyclicity of an arbitrary cutoff/renormalized trace has been proved or assumed here.

The polar isometry U_G=G M^(-1/2) is a genuine complete-Hilbert-space unitary onto ran G, but it is nonlocal. Unitary equivalence alone is insufficient to prove invariance of a finite radial cutoff trace. Thus the full nonlocal mu-family comparison in the frozen report must be read subject to this trace-compatibility input, not as a new standalone proof of orbital descent.

The balanced result is stronger in this respect: B_0^2=R and its anticommuting symmetry are local bundle/operator identities, so its functional-calculus comparison and pointwise eta cancellation do not require transporting the trace by U_G. The mu eta polynomial is also independently fixed by the actual local inserted heat coefficient, without that polar trace step. What needs the extra complete orbital-trace input is transferring the exact common-fiber determinant identity, and hence the nonlocal magnitude comparison, to the prescribed spatially renormalized trace.

The supplied note states precisely this input in [section 4:217](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L217>). I did not inspect its cited earlier proof. Therefore I verify the present argument *conditional on that imported result*, rather than count the import as newly checked evidence.

## 2. What was checked in the supplied text

### Balanced square, domains, and spectral branch

The full spin multiplicities (2,4,2), rank 24, are correct. K, G and R have the signs and factors independently derived here. The real complex structure anticommutes with the full operator and preserves the proper complete domain, not just its principal symbol. For the branch Arg(negative)=-pi,

zeta_{B_0,-}(z)=(1+exp(i pi z)) zeta_R(z/2)/2,

and zeta_R(0)=0 gives log det B_0=(1/2)log det R. The ghost exponent is det M, not its square root. Consequently the full-spin determinant combination in section 3 is correct.

The claimed scalar gap R_0>=5 can, if desired, be justified without a spectral import: the gradient of a Busemann function based at a loxodromic fixed point descends to the quotient, has unit norm and divergence 2. Completing the square on compactly supported scalars gives the scalar Laplacian gap >=1. R_1=Delta_1+4>=4 and the symmetric-tracefree curl identity gives R_2>=1. These agree with the stated complete-domain proof.

### Complete polar unitary and finite density

The map U_G is onto ran G because M>=4 makes the range closed; it gives the actual orthogonal decomposition, with H1 domain carried to the domain of sqrt M. The pair eigenvalues have product -r and never cross zero. The determinant-one shear is bounded for each finite mu, with no claimed uniform limit as |mu| tends to infinity.

The note's normalized field density dx/sqrt(2pi) and multiplier density (2a/i) db/sqrt(2pi) are exactly equivalent to the ordinary-Lebesgue Fourier normalization used in my report. At mu=0 the multiplier gives sqrt(2pi) delta(F). At mu=-sigma it gives sqrt(2a/sigma) exp(-a F^2/sigma). The pair Gaussian is i/(2a sqrt r); including the multiplier factor and ghost r leaves sqrt r. The stated upper +i orientation and negative logarithm branch have consistent signs.

A minor presentation clarification would make the ghost normalization maximally explicit: where the text first states that the ghost integral represents det M, spell out the fixed Berezin normalization removing 2a, for example one factor (2a)^(-1) per parameter pair, with the chosen orientation appropriate to the displayed ghost-action sign. The existing definition of the ghost integral already fixes the answer, so this is not a coefficient error.

### Binomial continuation and real-part identity

The residues in section 5 are correct for both full vector copies. The negative magnitude count and eta polynomial agree with the independently derived local variation:

eta_Bmu(0)=V mu(mu^2+36)/(8pi^2).

The two binomial expansions for the absolute pair and for M have the same derivative at zero. The absence of zeta_D poles at positive even integers is exactly the needed condition; generic zeta multiplicativity was not assumed. The tail converges on every compact mu interval because |mu|/2<inf sqrt(M+mu^2/4). The expansion gives equality of complete nonlocal magnitude functions once the stated trace-compatibility input is in place.

The nonidentity terms cannot change the local eta coefficient. The note's use of Poisson subordination and image separation is consistent with the expected short-time O(t) behavior. Its source-derivative summability claim imports earlier orbital estimates; I have not rederived those estimates from the text inspected here.

The displayed determinant phase is +iV mu(mu^2+36)/(16pi). Multiplication by the bosonic exponent -1/2 gives the log Z defect with the minus sign in section 5. On V=-pi beta/2 it becomes +i beta mu(mu^2+36)/64. The test mu=-2 gives -5i beta/4, as stated.

### Linear BRST and physical interpretation

For the supplied convention sq=Gc, sc=sb=0, s barc=b, the graded Leibniz rule gives

s Psi_mu=2a<b,G^dagger q>+a mu<b,b>-2a<barc,Mc>.

Thus the sign of the displayed ghost action is correct. The two BRST variations proportional to <b,Mc> cancel and partial_mu I=s(a<barc,b>). In each finite compatible fiber the transformation is triangular with unit super-Jacobian. The pair inverse has a vanishing bb entry, so the transported holomorphic covariance <bb>=0 is an exact Gaussian check of the Nielsen identity.

The common trace can retain that identity under the expressly stated fiber/orbital compatibility. The opposite of the cubic spectral defect is then uniquely fixed by the Gaussian gauge identity and the balanced reference value, up to the already fixed mu-independent source functional. This closes the *linear Gaussian* BRST interpretation. It does not establish a nonlinear BV quantum-master construction or an infinite-dimensional BRST-invariant Lebesgue measure, and the supplied text correctly says so.

## 3. Opening and source scope

The strong opening conclusion about the metric AC Gaussian source functional is acceptable as a conditional synthesis because the proof-level paragraph explicitly identifies the metric coefficient/product and homogeneous source-family trace hypotheses as imported. It is not a new result independently established by my blind calculation. The independently verified claim is the action-derived gravity operator, its phase, and the relative regulator result with the specified trace input.

In particular, no arbitrary off-shell metric, nonlinear source family, modular overlap, chiral framing choice, boundary physical mode, or Hilbert-space measure conclusion follows from the computation. The supplied note's scope restrictions correctly retain these distinctions. If the opening is quoted out of context, the imported source-family and trace hypotheses should be quoted with it.

## 4. Evidence preservation

All four successful output files were read back after creation. Literal actual Wolfram `code` payloads, including their original export commands, are now separately preserved:

- [Balanced invocation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_01_operator.wl>).
- [Mu asymptotics invocation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_02_mu_asymptotics.wl>).
- [Counting invocation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_03_eta_counting.wl>).
- [Local heat variation invocation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_04_eta_variation.wl>).

Do not replay these literal payloads without redirecting their output paths: they retain the original export destinations for provenance. The separately formatted [balanced reproduction input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/operator_checks.wl>) and [mu-family reproduction inputs](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/mu_checks.wl>) omit exports and are safe for checking without overwriting frozen evidence. Actual raw result JSONs are preserved alongside the readable outputs. No parent evidence file has been edited or counted as independently inspected.
