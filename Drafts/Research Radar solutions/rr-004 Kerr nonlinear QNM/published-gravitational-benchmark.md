# Published gravitational coefficients: conventions and data check

## Result

**The selected gravitational channel has published contour/hyperboloidal comparisons. This note independently checks the public data arithmetic and channel normalization.** Subsequent [Schwarzschild](schwarzschild-quadratic.md) and [rotating Kerr](kerr-quadratic.md) calculations independently solve the DD source and reproduce these data; the rotating calculation also audits its analytic source expansion. An independent full Einstein-tensor derivation and the metric-CPS correspondence remain unproved. The remaining research question is narrower than whether nonlinear Kerr coefficients exist at all.

[Khera--Ma--Yang, 2410.14529v3](https://arxiv.org/abs/2410.14529v3) compares its hyperboloidal calculation with the contour calculation of [Ma--Yang, 2401.15516v2](https://arxiv.org/abs/2401.15516v2) for $220+\times220+\to(4,4)$. The total response of reflection-symmetric parents also agrees with their cited numerical scattering data. The supplied polynomial fits use spherical harmonics and carry interpolation errors around one percent; a fit is not the underlying solver output. These are source-derived results, not new simulations here.

The downloaded PDF's physical pages 3 and 11 were rendered and inspected for the channel formulas, Schwarzschild value and fit tables. Their local copies are under the sources directory. This visual check is distinct from the Mathematica checks below.

## 1. Define the measured coefficient first

For fixed dimensionless strain convention, asymptotic frame and normalized harmonic basis, write the relevant part of the observable as
$$
H_{22}^{(1)}(u)=A\,e^{-i\omega_{220}u},\qquad
H_{44}^{(2)}(u)=\mathcal R\,A^2e^{-2i\omega_{220}u}.
$$
A common shift of $u$ changes both amplitudes consistently and cancels in $\mathcal R$. A rescaling or rephasing of the angular basis does not cancel unless its action on the linear and quadratic amplitudes is included. The asymptotic extraction and length normalization are therefore part of the definition.

The real metric contains both a mode and conjugate-frequency contributions. A generic pair has four combinations of these contributions. When two parental labels coincide, some apparently separate terms describe the same product. One must define whether coefficients multiply ordered or unordered products before comparing numbers.

This is the same factor issue as the difference between a mixed derivative
$D^2G[h_b,h_c]$ and the coefficient $\frac12D^2G[h,h]$ in a single-parameter expansion. It cannot be settled by copying a generic two-parent formula unchanged into the identical-parent case.

## 2. The identical-parent convention is checked against public code and data

The paper lists one mixed-channel row for identical parents. Interpreting that row twice gives a Schwarzschild amplitude around $0.16975$, inconsistent with its stated $0.1534$. Interpreting it once gives $0.15336$ from the rounded polynomial fit.

An independent provenance check resolves the counting convention: the public [TGR data example at commit 93f98891](https://github.com/yi-fan-wang/TestingGR_with_Gravwaves/blob/93f98891ab2eb3431dcff3727116eca8eb5dc1a2/tgr/data/QQNM/example.ipynb), used by the related ringdown data release, adds the direct-direct and direct-mirror datasets once each. The same convention is implemented below:
$$
\boxed{\mathcal R_{\rm identical,reflection}=R_{\rm DD}+R_{\rm DM}.}
$$
Thus $R_{\rm DM}$ in this dataset is the coefficient of the full mixed monomial. It is not a second copy to add again under the name $R_{\rm MD}$.

Two unmodified HDF5 datasets, the example notebook, their SHA-256 hashes and the repository licence are saved under sources/tgr-data. The notebook was read as data, not executed. Mathematica imports the numerical datasets directly; its string parser restricts the input to numeric characters before conversion.

The checked dataset paths use:

- DD: quadratic_2201_2201.h5, channel ++, four-component multifloat, nmax_127_lmax_31.
- DM: quadratic_2201_2-20-1.h5, channel +-, four-component multifloat, nmax_63_lmax_31.
- The first column of the ratio array is the $(4,4)$ daughter, as identified by the supplied example. Spherical and spheroidal results occupy separate groups.

The two spin grids agree exactly as imported. No interpolation is used for the following rows.

| $a/M$ | $R_{\rm DD}$, spherical | $R_{\rm DM}$, spherical | $\mathcal R$, spherical |
|---|---|---|---|
| $0$ | $0.13659455-0.01143882i$ | $0.01646463+0.00103477i$ | $0.15305918-0.01040405i$ |
| $0.3$ | $0.13411912-0.00708489i$ | $0.01647637+0.00018508i$ | $0.15059549-0.00689981i$ |
| $0.95$ | $0.10354980+0.00056989i$ | $0.01645936-0.00320064i$ | $0.12000917-0.00263075i$ |

The Schwarzschild sum has
$$
|\mathcal R|=0.1534123779,\qquad
\arg\mathcal R=-0.0678696204,
$$
which reproduces the stated rounded value. This is a check on channel counting and data extraction.

At $a/M=0.3$ the spherical result has magnitude $0.1507534679$ and phase $-0.0457848217$. The corresponding spheroidal dataset instead gives
$$
\mathcal R_{\rm spheroidal}
=0.1506138378-0.0069154375i.
$$
These two numbers refer to different angular decompositions. Their difference is not gauge dependence.

Digits in this table identify the data; they are not a certified error bound. Comparing the stored DD dataset against its three-component, $n_{\max}=63$ counterpart gives relative differences $5.91\times10^{-4}$, $7.06\times10^{-5}$ and $1.15\times10^{-5}$ at these three spins. The maximum on the stored grid is $5.91\times10^{-4}$. This changes both the stored resolution and floating representation; it is a reproducibility diagnostic, not a pure precision or isolated truncation experiment. It does not justify assigning a universal $10^{-5}$ error to every imported value.

## 3. Polynomial fit check

The visually checked DD and DM rows in Tables II--III were evaluated independently in Mathematica. At $a/M=0.3$ their single-count sum is
$$
\mathcal R_{\rm fit}
=0.1505806235-0.0069065354i.
$$
Its small difference from the data above is compatible with using a fit rather than the raw sample. At spin zero the fit yields magnitude $0.1533609364$ and phase $-0.0684786177$.

The initial evaluation used a direct finite sum that exposed Mathematica's $0^0$ convention at spin zero. The corrected version uses Horner evaluation; both requests and outputs are retained. This was an evaluation error, not a physical discrepancy.

## 4. What this settles and what it does not

The calculation supplies an actual source-derived gravitational target with a checked phase, harmonic basis, and identical-parent convention. It also establishes that the broad claim “contour and hyperboloidal gravitational quadratic calculations have not been compared” would be incorrect.

It does not prove that a bare metric-CPS projection equals this observable coefficient. The [gravitational response derivation](gravitational-response.md) shows the additional source balance law, quadratic extraction term, reconstruction completion and resolvent-domain requirements. No new time-domain or numerical-relativity simulation has been run.

**Verified:** PDF formulas/tables visually inspected; the rounded fits evaluated; public data imported, paired on matching spin grids and combined using the supplied example's convention; a saved lower-resolution comparison computed.

**Assumptions:** the downloaded datasets carry the harmonic/channel identification documented by the source example; the source's strain convention is retained.

**Not verified:** the source-generation code's quadratic Einstein tensor, its complete solver and reported convergence, or a new gauge/reconstruction-independence theorem for its QNM source domain.
