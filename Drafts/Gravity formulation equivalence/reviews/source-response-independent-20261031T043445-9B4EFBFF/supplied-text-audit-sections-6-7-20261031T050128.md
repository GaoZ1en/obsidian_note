# Supplied-text audit of Sections 6–7

**Verdict: the formulas and their stated comparison strength are correct under the supplied conventions. No necessary correction was found in the audited sections.** This is a separate audit of supplied text, not another independent derivation.

## Scope and evidence

Audited only [Sections 6–7, lines 321–479](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L321-L479>) as read on 2026-10-31 around 05:01–05:04 Asia/Shanghai. The parent supplied the convention map `S=−t`, `T=−2πS_ww`, `δF=+(1/2)∫√γ S^{ab}δγ_ab`. I did not read the earlier sections, linked representation criterion, or linked Fredholm note, and did not re-audit their gravitational determinant/anomaly claims. No settled computational suite was rerun. No parent file was edited.

## 1. Source normalization and stress sign

[Equations (6.1)–(6.4)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L334-L389>) are consistent. On `ds²=dw dbarw+μ dbarw²`, `S^{barw barw}=4S_ww` and the real-coordinate volume element is one. Therefore

\[
\delta F=2\int S_{ww}\,\delta\mu
=-\frac1\pi\int T\,\delta\mu,
\qquad J=-2\mu.
\]

There is no missing factor of two. In the no-gravitational-anomaly completion `c_L=c_R=c`, the trace coefficient is `c/(24π)`, not `2c/(24π)`. The opposite chirality does not supply an extra factor in this one-source complexified slice.

The supplied sign reversal `S=−t` also makes [the cross component in (6.5)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L391-L399>) correct:

\[
2\pi\delta S_{w\bar w}=-h\mu+\frac c{12}\partial^2\mu,
\quad\bar\partial\delta T=2h\partial\mu+\frac c{12}\partial^3\mu.
\]

## 2. Fourier and angular/chirality mapping

[Equation (6.3)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L350-L380>) has the correct denominator, connected zero mode, and quadratic normalization for the stated Fourier transform:

\[
K_{kn}=\frac{2nh+cn^3/12}{n+i\omega_k}\quad(n\ne0),
\qquad K_{k0}=\beta V\delta_{k0},
\qquad F_H^{(2)}=\frac\beta2\sum J_{-k,-n}K_{kn}J_{kn}.
\]

The explicit formulas are restricted to `θ=0`. The [angular orientation statement](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L323>) is correct **if geometric positive θ means** `(t_E,x)∼(t_E+β,x+θ)`: then `w=t_E+ix` has thermal period `b=β+iθ`, and its chiral nome is `e^{−β−iθ}=bar q`. This is the sign-reversed angular convention relative to my original independent trace `e^{−βH+iθH}`.

For an explicit future continuation in that geometric convention, set `y=x−θt_E/β`, `Ω_kn=2πk/β+nθ/β`; then

\[
K_{kn}=\frac{2nh(b)+cn^3/12}{n+i\Omega_{kn}}
=\frac{\beta[2nh(b)+cn^3/12]}{n(\beta+i\theta)+2\pi i k}.
\]

No such replacement is needed in the present `θ=0` formulas. The geometry's sign definition itself lies outside the audited sections; the displayed chirality assertion is consistent with the positive spatial twist just stated. Optionally writing `q_T=bar q` in a future nonzero-angle formula would prevent reuse of the symbol `q` from obscuring this distinction. This is a clarity suggestion, not a required correction to Sections 6–7.

## 3. Contact/seagull conversion and the Teichmüller mode

[Equations (6.6)–(6.7)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L402-L420>) are correct, including the signs:

\[
\mathcal R=\frac{2hp+cp^3/12}{r}=-2K+2P,
\quad P=h+\frac c{24}(r^2-3rp+3p^2),
\quad G_{\rm met}=G-2\pi P\delta^2.
\]

The source-normalized Hessian is `G_met/π²`; the raw connected correlator remains `G`. The text correctly avoids treating the entire local, partly state-dependent `P` as an arbitrary covariant counterterm or identifying a regulator-independent microscopic seagull split.

[Equation (6.8)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L422-L438>) correctly uses the nonlinear period map, not just its first variation:

\[
\beta_{\rm eff}=\beta\frac{1+\mu}{1-\mu},\qquad
F''(0)=4\beta^2V-4\beta h,\qquad
\mathcal R_{00}=2h-2\beta V.
\]

Thus the essential geometric `+2h` seagull is retained. For `n=0,k≠0`, the metric response `2h−cω_k²/48` is entirely contact-supported whereas canonical `K=0`, as stated. At nonzero geometric angle the period map is `(b+μ bar b)/(1−μ)` and its first two μ derivatives are still `2β` and `4β`, respectively, so the same zero-mode formula holds with `h,V` evaluated at `b`.

## 4. Strength of the gravitational comparison

[Equation (7.2)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L442-L469>) algebraically extracts `c`: `q∂_q log P=<L0>`, so subtracting the thermal mean term leaves `cn(n²−1)/12`. The null-quotient qualification and the warning against deleting thermal `n=0,±1` insertions are correct.

The claims of `c=C+13` for AC, `c=C` for omit, the existence of the source functional, and its exact anomaly are **premises imported from earlier sections for this audit**, not independently re-established here. Given those premises, the Ward matching follows. In particular, [the statement that this is not a constructed bulk representation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L451-L461>) is appropriate.

[The local uniqueness and final comparison paragraphs](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md#L476-L478>) do not overstate the result. They concern a marked source neighborhood, the exact anomaly scheme, and the specified flat moduli function. They explicitly exclude modular/sewing/Hilbert completion and a microscopic measure pushforward. The conclusion is a **conditional one-loop local-source/Ward agreement**, not representation equivalence. These qualifications should be retained.

## Necessary corrections and limitations

- **Necessary formula corrections:** none in Sections 6–7 as supplied.
- **Optional clarification:** if extending beyond `θ=0`, use a separate chiral nome or explicitly substitute `q→bar q` for `w=t_E+ix` with positive geometric spatial twist; use the corresponding sheared Matsubara denominator above.
- **Outside this audit:** the determinant prescription, the numerical `+13` shift, the exact anomaly of the claimed bulk source functional, and the actual geometry definition in Section 1. Section 7's implication is sound if those earlier inputs hold; this limited audit does not certify them.
