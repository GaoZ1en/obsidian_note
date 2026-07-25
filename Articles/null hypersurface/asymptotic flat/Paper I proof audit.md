# Paper I proof audit

## Audit verdict

The Paper-I action theorem is **correct under the precise finite-cap、finite-slab、fixed-frame and extended-counterterm assumptions stated below**。

The complete conormal Hankel--Mellin image theorem formerly grouped with the band-limited actual-solution result is **not proven by the current note or checks**。The available evidence proves explicit coefficient identities and a viable proof strategy，but not the uniform conormal remainder、cutoff-independence and image-topology statements required by Proposition 11.2。It is therefore excluded from the frozen Paper-I theorem。

## Audited domain

- fixed three-dimensional Minkowski background；
- exterior null collar $R_0\leq r<\infty$ and finite $u$-slab $[u_-,u_+]$；
- fixed defining function、Bondi frame and null normalization；
- radial-gauge slice of the gauge-saturated parent space；
- one fixed finite log cap $K_m$ at each admitted radial weight；
- bounded coefficient sets in the weighted polyhomogeneous-conormal Fréchet seminorms of `definitions.md`；
- fixed inner pullback；
- strict intrinsic or extended normal-field counterterms exactly as declared in `3d Maxwell.md` sections 8--9。

## A1. Strict intrinsic no-go

**Verdict: Correct in the declared category。**

### Verified

On

$$
A=E_0\log(r/r_0)\,du,
\qquad E_0=\text{constant},
$$

the pullback $F_{ij}$ and all of its tangential derivatives vanish at $r=R$，whereas the bulk action has the nonzero divergence

$$
\pi(u_+-u_-)\log(R/r_0)E_0^2.
$$

Therefore a local counterterm generated only by the induced geometry、$F_{ij}$ and finitely many tangential derivatives cannot cancel the divergence for arbitrary $E_0$。

### Assumptions

The no-go excludes dependence on $A_i$、normal field strength、inverse tangential operators、explicit asymptotic coefficients and new edge fields。

### Not verified

No obstruction is claimed after enlarging any of those ingredients。In particular，Proposition 8.1 is not a no-go for all local boundary actions。

## A2. Extended $C^2$ action renormalization

**Verdict: Correct under the finite-cap remainder assumptions。**

### Verified

The exact coordinate Maxwell density has only

$$
\frac1r
\left[
\frac12E^2+\frac14\partial_u(C^2)
\right]
$$

at the logarithmically divergent order。The cutoff fields

$$
\mathcal E_R=-RF_{ur}=E+O(R^{-1/2}L^{K_*}),
\qquad
\mathcal C_R=2\sqrt R F_{r\phi}=C+O(R^{-1/2}L^{K_*})
$$

therefore cancel the Coulomb and radiative coefficients。After subtraction，the value and first two field variations are dominated on bounded coefficient sets by

$$
\operatorname{const.}\,r^{-3/2}(1+|\log(r/r_0)|)^{K_*},
$$

which is radially integrable。The action is quadratic，so the second variation creates no higher field-dependent growth。

The finite algebraic cancellation of the action coefficient and its first two variations is independently reproduced by `checks/maxwell/run_all.wls`。

### Assumptions

- every $K_m$ is finite；
- the coefficient/remainder seminorm bounds are stable under two field variations；
- the normal-field cutoff observables are admitted counterterm variables；
- cutoff surfaces and endpoint orientations are fixed；
- the convergence statement is local on bounded coefficient sets，not uniform over all cap sequences。

### Not verified

- uniqueness or covariance under a change of defining function；
- completeness of the extended counterterm basis beyond cancellation of the displayed divergences；
- a uniform $K_m\to\infty$ theorem；
- stationarity for freely varying outer data without selecting a polarization or adding a boundary phase space。

## A3. Null lids and corners

**Verdict: Correct under the same finite-cap assumptions。**

### Verified

The only lid-potential divergence is

$$
\frac{\log(R/r_0)}2\int_{S^1}C\,\delta C,
$$

and is cancelled by the variation of the radiative corner term。The residual integrand has the same radially integrable bound as in A2。Its potential logarithmic two-form is proportional to

$$
\delta C\wedge\delta C=0.
$$

This proves finiteness of the relative first variation with arbitrary endpoint variations。

### Assumptions

Finiteness is distinct from stationarity。If $C$ or $G$ is allowed to vary at the outer boundary，the remaining finite one-form is source work/open-system data unless a boundary polarization or additional edge phase space is supplied。

### Not verified

No preferred polarization is derived from radial finiteness alone。

## A4. Band-limited actual solutions

**Verdict: Correct for the compact positive-frequency class of Proposition 11.1。**

### Verified

Finite angular support and smooth frequency support compactly contained in $(0,\infty)$ give a global Cartesian-smooth finite-energy scalar wave through the Fourier--Bessel representation。In three dimensions

$$
F=*d\varphi
$$

then solves source-free Maxwell。DLMF 10.17.5 gives the future-null outgoing half-integer expansion；the incoming Hankel branch is rapidly decreasing on a fixed future-null slab。The outgoing leading datum recovers the spectral amplitude。

### Assumptions

- real solutions are obtained by including the displayed complex conjugate；
- the statement concerns the smooth radiative sector；
- a nonzero constant Coulomb charge is an exterior/punctured sector and is not smooth through $r=0$；
- uniqueness is within the declared future-outgoing spectral class。

### Not verified

Proposition 11.1 does not establish surjectivity onto the formal Maxwell solution space or any zero-frequency threshold theorem。

## A5. Conormal Hankel--Mellin image

**Verdict: Not proven by the current evidence。**

### Verified

- the Bessel--Laplace coefficient agrees numerically with DLMF 10.22.49 on the tested domain；
- the listed zero/pole and half-integer collision coefficients pass the finite symbolic/numerical tests；
- the radial integration resonance that raises the logarithmic degree is correct；
- Baskin--Vasy--Wunsch proves a general forward-polyhomogeneity benchmark，but not this explicit image/kernel/cokernel theorem。

### Assumptions required by the proposed proof

- a precisely defined zero-frequency conormal spectral space with branch conventions；
- meromorphic continuation compatible with the chosen finite-part prescription；
- uniform estimates in $u$ and angular mode $\ell$ after arbitrary $b$-derivatives；
- cancellation of the artificial low/high-frequency cutoff to every retained order；
- a continuous conormal Borel extension and closed-graph/image statement in the declared topologies。

### Not verified

None of the five analytic obligations above is supplied by the finite check script。Until they are proved，the former Proposition 11.2、the principal-jet surjectivity statement and the full image/kernel/cokernel formula are candidate results rather than manuscript theorems。

## A6. Reduced phase space

**Verdict: Correct under the displayed polarization and splitting hypotheses。**

### Verified

The full null-lid kernel equation reduces to

$$
2r\partial_rv-v=0.
$$

Fixed inner pullback removes the $\sqrt r$ solution，leaving proper gauge as the parent-space kernel。The flux-only form has the endpoint-trivial kernel $\int_Ig\,du=0$；the common $C$ shift pairs with radiative memory。The finite-dimensional kernel identities and endpoint pairing are reproduced in the check package。

### Assumptions

- fixed inner data and fixed total-charge leaf；
- free radiative memory；
- the radial-gauge primitive and the displayed endpoint splittings are continuous in the chosen Fréchet topology；
- quotient statements are made on the characteristic solution space，not on the unproved full Hankel--Mellin image。

### Not verified

- a boundary-condition-independent phase space across distinct charge leaves；
- strong symplecticity；
- a global nonlinear manifold chart beyond the declared affine/Fréchet setting。

## Reproducible check

Run from the vault root：

```sh
rtk wolframscript -file "Articles/null hypersurface/asymptotic flat/checks/maxwell/run_all.wls"
```

The clean audit run on 2026-07-25 reports：

```text
Summary: 25 passed, 0 failed.
```

The script checks finite algebraic and special-function identities。It does not certify a counterterm-classification theorem or the conormal functional analysis listed in A5。

## Manuscript claim boundary

Paper I may claim：

1. the category-relative strict intrinsic no-go；
2. the explicit extended normal-field $C^2$ action theorem；
3. finite null lids/corners with arbitrary endpoint variations；
4. action finiteness does not select the EOM-derived log cap；
5. a nonempty band-limited global radiative solution class；
6. the polarization-dependent fixed-charge-leaf reduction，with its hypotheses stated。

Paper I must not claim：

- a complete zero-frequency Hankel--Mellin image theorem；
- realization of arbitrary formal towers or arbitrary principal jets；
- uniqueness of the extended counterterms；
- a maximum off-shell history space；
- a boundary-condition-independent reduced phase space。
