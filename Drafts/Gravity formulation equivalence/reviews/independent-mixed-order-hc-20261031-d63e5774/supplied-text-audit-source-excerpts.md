# Inspected pre-repair source: exact scoped excerpts

This records the issue-relevant wording from the **431-line pre-repair snapshot** of [the parent note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md>) returned by the read tool during the turn beginning 2026-10-31 06:05:31 Asia/Shanghai.

This is an **excerpt snapshot**, not a full byte-for-byte archive of all 431 lines. No old-file hash is claimed. An attempt to obtain a persistent exact session-event locator returned “session history storage is unavailable”; therefore no such locator is fabricated. The frozen supplied audit identifies the original line numbers and exact issues. The current parent file has subsequently changed.

## Old lines 229–238: finite gauge identity and continuum wording

> For a finite real field space V, injective G0:W->V and any real linear gauge H with HG0 invertible, the oriented FP identity is
>
> \[
> \int_V da\,\delta(Ha)\det(HG_0)e^{-I(a)}
>  =\sqrt{\det(G_0^\dagger G_0)}
>    \int_{\ker G_0^\dagger}dx\,e^{-I(x)}.
> \tag{4.3}
> \]
>
> Use absolute determinants for unoriented real delta functions, or fix the common orientation explicitly. Proof: use orthogonal coordinates a=x+G0 w, whose volume Jacobian is sqrt(det G0^dagger G0), then integrate w. The quadratic action is constant along gauge fibers. Both gauges must lift the same quotient Gaussian cycle after complex continuation. Equation (4.3) applies to the adapted and Hermitian gauges in a common representation fiber. Its continuum use is through §6, not a nonexistent bounded L2 change of section. A normalized Gaussian gauge average/Nakanishi auxiliary replaces the hard delta without changing (4.3); its constant spin-one normalization must use the same regulator.

## Old line 314: scope of the determinant definition

> Spatial geodesic finite part is taken first. The same R is used for fields, Lorentz/diffeomorphism ghosts, constant gauge-average factors and contour counts, on **each** spin component. Measures are the independent orthonormal L2 measures specified above, not an auxiliary normalization chosen to make its integral one. Equation (6.2) is not the spectral zeta function of H alone.

## Old lines 357–369: orbital formula and trace/source claims

> More explicitly, the character transform of the scalar fiber-trace kernel is e^(-epsilon r) times the finite multiplicity trace in (6.3). Identity Plancherel and regular semisimple orbital inversion apply to that transform. In the primitive-length convention of the earlier orbital calculation, the latter has the form
>
> \[
> \mathcal O_n(f)=\frac{\beta}{2\pi}\sum_m\int_0^\infty
>  \Theta_{\lambda,m}(f)
>  \frac{\cos(\lambda |n|\beta+mn\theta)}
>  {\cosh(|n|\beta)-\cos(n\theta)}\,d\lambda.
> \tag{6.6}
> \]
>
> Hence (6.3), and the analogous finite FP equality, imply equality of the identity density and each nonidentity orbital integral. This uses the invariant character transform, not inversion of an allegedly zero matrix kernel. The equality holds at each positive epsilon before its finite part.
>
> For source derivatives, bulk source diffeomorphisms act by pullback, and pure Weyl representative changes affect only the identity finite-part volume. Modulus derivatives can be taken in (6.6): derivatives give polynomial factors in n and lambda, while the denominator retains exponential n decay for beta>=beta_*>0. All prescribed finite orders converge locally uniformly. Equivalently (6.5) controls the moving cutoff at fixed epsilon. No uniform epsilon->0 bound on every unsimplified block is claimed: after the exact fixed-epsilon identity, the limit is taken on the already controlled reduced metric expression. No statement is uniform through beta=0 degeneration.

The old line 357 contained an internal Markdown link around “earlier orbital calculation”; its destination was not read in this audit. The quotation above retains the sentence's mathematical wording but omits that unrelated link destination.

## Old line 429: conclusion strength

> **Verified:** the stated exact local/finite identities and counterexamples, with the analytic continuum argument scoped to its explicit functional-analysis and harmonic-analysis inputs. **Assumptions:** fixed marked complete hyperbolic source family, matched off-shell wall action, background L2 measures, upper-rotated metric/auxiliary contours, complete proper ghosts, common-Casimir heat-count prescription and the stated orbital transform theorems. **Not established:** regulator-independent quantum equivalence, a global bounded L2 gauge-slice map, nonlinear measure/BV transport, independent CS spectral/eta matching, modular/framing completion or a physical coupling calibration.

These excerpts preserve the actual pre-repair scope questions; they should not be mistaken for the current parent text.
