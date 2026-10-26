# The extrapolate dictionary beyond free scalar fields

## Reference and established scalar result

All extensions use the conventions of Di-Rong Su's [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>): $\Omega=z/\ell$, $\epsilon=\Omega^{-d-1}dz\,d^dx$, conformal slice source measure $d^dx$, $E\varphi=-J$, and normalized $W=\log Z[J]/Z[0]$. Radial kernels are paired with the mollifier before the thin-layer limit; the boundary limit follows afterwards. The reference PDF has not been modified.

The first extension is [Finite-radial scalar insertions with alternative and mixed boundary conditions](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_quantization.md>). It is a self-contained Euclidean Gaussian result for $0<\nu<1$, with constant $b=fa$ in the convention $\varphi=\Omega^{\Delta_-}a+\Omega^{\Delta_+}b+\cdots$.

Its main formulas are

$$
c=\frac{2\nu}{\ell},\qquad
s(k)=\frac{\Gamma(1-\nu)}{\Gamma(1+\nu)}\left(\frac{k\ell}{2}\right)^{2\nu},\qquad
C_f(k)=\frac1{c[f+s(k)]},
$$

$$
G_f=G_++h_zC_fh_u,\qquad
h_z=\Omega^{\Delta_-}\frac{2^{1-\nu}(kz)^\nu K_\nu(kz)}{\Gamma(\nu)}.
$$

The report derives the boundary action and response rather than changing only the external power. It proves distributional and Gaussian mean-square convergence for $f>0$, or for $f=0$ with $d>2\nu$, and gives the infrared counterexample outside that latter range. The explicit $d=3,\nu=1/2$ example includes a position-space covariance and a fully integrated Gaussian source functional. Standard/alternative Legendre relations include their signs, factors of $2\nu/\ell$ and the reference's contact prescription.

The exact split is a Euclidean conditional Gaussian statement, not a Lorentzian reconstruction theorem. The standard-branch boundary multiplier is locally subtracted and need not be a positive Euclidean random-field covariance. In the exceptional undeformed infrared range, the mixed action with $f>0$ is constructed directly from the kinetic multiplier, not by assuming an unrestricted undeformed measure exists.

## Evidence

- [Reproducible Wolfram calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_checks.wl>): eight exact symbolic residuals, mixed-kernel comparisons at three orders and three radii, and Gaussian-source numerical integrals.
- [Latest output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_checks_results.txt>): all eight residuals zero, no Wolfram messages; source-integral errors below $7\times10^{-34}$ in the tested cases. Run with `wolframscript -file alternative_checks.wl` from this directory. The script prints the report and does not overwrite the mathematical note.
- Independent fresh derivation agreed on the variation, kernel normalization, stability and infrared conditions. A subsequent manuscript review checked the weighted action identity, the mean-square theorem, the two-sided Gaussian marginal interpretation and the integrated example. Its two source-space/contact qualifications were incorporated into §6.
- Reference geometry, source pairing and main scalar formulas were visually checked on PDF pp. 3–4 and 10–12, corresponding to printed pp. 1–2 and 8–10. Appendix F and Appendix I were read for the existing convergence and Fourier-transform arguments. The reference's complete integer/BF computation has not been rerun.

## Established one-vertex interacting result

The second report, [Interacting extrapolation at one bulk vertex](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree.md>), treats the order-$\lambda$ tree contribution of $\varphi^4$ in the same source formalism. It proves separated-point convergence for every standard $\Delta>d/2$ by isolating the moving bulk singularities. The full quartic source functional converges without a new subtraction for $d/2<\Delta<3d/4$; overlapping nonnegative sources diverge at and above $\Delta=3d/4$. The proof is separate from the free Gaussian argument.

Two explicit conformal examples provide the full finite-radius momentum kernel:

- In $\mathrm{AdS}_4$, $\Delta=2$, the delta-stripped connected four-point kernel tends to $-\lambda\ell^4/(\sum_i|k_i|)$, with no quartic counterterm. The ordinary free quadratic source subtraction is still required.
- In $\mathrm{AdS}_3$, $\Delta=3/2$, the raw quartic functional diverges logarithmically. The specified subtraction produces the nonlocal connected kernel $+\lambda\ell^5\log[(\sum_i|k_i|)/\mu]$. The thin-source layer contributes a finite $1/4$ to the raw radial kernel; matching to another radial regulator requires fixing this contact term explicitly.

The same analytic estimates extend to a single $\varphi^n$ vertex, $n\ge3$. They do not yet prove a multi-vertex tree theorem. Tadpoles were displayed but explicitly excluded from the tree result rather than assumed zero.

[Reproducible contact-diagram checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree_checks.wl>) and their [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree_checks_results.txt>) accompany the report. Two independent derivations checked the general separated-point theorem and the conformal finite-radius kernels respectively. The numerical tests include a removable sign-sum resonance; the analytic proofs establish the continuous-parameter convergence claims.

## Established multivertex result in the conformal model

The third report, [Multivertex extrapolation and nonlinear source matching](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_trees.md>), computes the full finite-radial connected six-point tree in the conformal $\mathrm{AdS}_4$ quartic model. Its boundary kernel is

$$
\mathcal C_\partial^{(6)}=\lambda^2\ell^6\sum_{\text{10 unordered }A|B}
\frac1{(s_A+s_B)(s_A+q_A)(s_B+q_A)},
\quad s_A=\sum_{i\in A}|k_i|,\quad q_A=\left|\sum_{i\in A}\mathbf k_i\right|.
$$

The report proves distributional convergence through the exceptional zero-momentum loci, and then proves the boundary limit for **every fixed finite quartic tree** using $G_D:L^{4/3}(\mathbb H^4)\to L^4(\mathbb H^4)$ and multilinear recursion. This theorem is specific to the conformal model. A small-source analytic classical functional is also constructed by contraction, with the free $1/z$ sheet divergence explicitly removed.

The exact finite insertion functional is a Legendre transform of the two-sided slab-plus-interior action. The local derivative expansion includes the nonlinear source term $\lambda\ell^2z^2j^3/20$; its smeared remainder is controlled through two vertices. An exact finite-$z$ outer Dirichlet continuation generally leaves the Schwartz source space, already in the free theory, so it is not asserted as a global reparametrization.

[Multivertex verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_checks_results.txt>) accompany the analytic proof. Independent reviews checked the exchange kernel, source matching, fixed-tree Sobolev proof and the small analytic saddle branch. No loop diagrams are included in the all-tree statement.

## Established first quantum correction

The fourth report, [Tadpole renormalization and the extrapolate dimension](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_tadpole.md>), computes the order-$\lambda$ quadratic correction in the conformal $\mathrm{AdS}_4$ model. Three explicit invariant coincident subtractions differ by finite curvature terms; their input masses must be matched before comparing physical dimensions. Hadamard-$U$ subtraction with unchanged input $m_0^2\ell^2=-2$ and no extra finite counterterm gives $\gamma=\Delta_M-2=-\lambda/(96\pi^2)$. This number includes its mass prescription, not an unspecified universal prediction.

The full finite-radius correction is expressed explicitly through $\partial_\nu[I_\nu(kz)K_\nu(kz)]_{\nu=1/2}$. The physical insertion is $\Omega^{-2-\gamma}\varphi$, and its local quadratic subtraction is $\ell^2z^{-1}[1+2\gamma(\log(\ell/z)-1)]$. With the original external power, a nonlocal $k\log z$ term remains and cannot be removed by local contact counterterms. With the corrected power and subtraction,

$$
C_\partial(k)=-\ell^2k\{1+2\gamma[\log(k\ell)+\gamma_E+\log2-2]\}+O(\lambda^2).
$$

A uniform order-derivative bound proves the subtracted Schwartz distribution limit. Combining this term with the previously established contact graph gives the entire nonvacuum generating functional through order $\lambda$, coefficientwise in renormalized perturbation theory. It is not a fixed-coupling all-loop limit. [Tadpole verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/tadpole_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/tadpole_checks_results.txt>) record ten vanishing symbolic residuals, high-precision order-derivative comparisons and finite-radius convergence samples, without Wolfram messages. Two independent derivations and manuscript reviews checked the mass matching, radial kernel, logarithms and distributional argument.

## Established one-loop four-point function

The fifth report, [Invariant fish renormalization and the extrapolate limit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_fish.md>), constructs the order-$\lambda^2$ four-point fish graph. An explicit proper-geodesic cutoff defines the invariant squared-propagator extension. A constant-scale flat-halfspace subtraction differs by the local term $-\log(u/\ell)\delta_g/(8\pi^2)$; retaining this term cancels a spurious overall-momentum logarithm and preserves the AdS boundary scaling law.

The report gives a convergent finite-radius kernel and its closed boundary form in logarithms and dilogarithms. A uniform $L^1\cap H^s$, $0<s<1/2$, estimate controls the moving source layer and proves convergence on arbitrary four-point Schwartz tests. No additional quartic boundary-source counterterm is forced. A second-moment bound also controls all physical soft-pair corners, not only generic momentum configurations. The bulk coupling obeys $\beta_\lambda=3\lambda^2/(16\pi^2)+O(\lambda^3)$, canceling the graph's scale dependence already at finite radius.

With the order-$\lambda$ mass shift tuned to zero, fish plus the coupling counterterm exhaust the connected four-point correction at order $\lambda^2$. This four-point calculation alone is not the entire order-$\lambda^2$ generating functional; its missing two-loop quadratic sector is supplied by the next report. [Fish verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/fish_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/fish_checks_results.txt>) record eleven vanishing symbolic residuals, independent radial-representation comparisons and finite-radius convergence samples, without Wolfram messages. Two independent derivations and manuscript reviews checked the extension, finite constants, loop factors, radial formula and distributional proof.

## Established sunset and complete two-vertex functional

The sixth report, [The sunset correction and a complete two-vertex extrapolate functional](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/two_loop_sunset.md>), constructs the missing order-$\lambda^2$ two-point sector. It proves the exact positive spectral decomposition of $G_0^3$ into dimensions $6+2n$ and defines a convergent twice-subtracted self-energy. Fixing the physical dimension at two and the elementary residue at one gives

$$
\delta G_{\rm OS}=\frac{\lambda^2}{6\pi^4}\sum_{n\ge0}w_nG_{6+2n},\qquad
w_n=\frac{(n+1)(2n+7)(4n+9)}{128(2n+4)^2(2n+5)^2}>0.
$$

The finite-radius correction is nonzero. Its equal-slice source kernel requires the additional contact subtraction $\lambda^2\ell^2A_*/(6\pi^4z)$, where $A_*=(19-\pi^2-13\log2)/256$. An explicit global Bessel bound proves $O(z)$ Schwartz convergence of the subtracted correction to zero; at separated points the leading signal is $\lambda^2\ell^2z^8/(2400\pi^6R^{12})$. Unchanged boundary two-point normalization is therefore a result after physical matching and contact subtraction, not evidence that the bulk correction vanished.

A joint vacuum-Wick expansion at two interaction positions, using the fixed fish extension and this on-shell sunset extension, explicitly constructs a formal Euclidean renormalization scheme through $\lambda^2$. Combining its source degrees two, four and six gives the complete boundary generating functional at that perturbative order. Arbitrary second-order mass/residue choices and their extrapolate logarithms are also displayed. This is a fixed-background/vacuum construction, not a nonperturbative measure, all-order renormalization theorem, or matching to an unspecified bare forest regulator.

[Sunset verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/sunset_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/sunset_checks_results.txt>) contain fourteen labelled groups with forty vanishing scalar residuals, twenty Bessel-inequality samples, spectral comparisons and finite-radius sums with analytic omitted-tail bounds. No Wolfram messages occurred. Two independent derivations and manuscript reviews checked the extension, exact spectral proof, on-shell normalization, source limit and finite-order Wick construction.

## Established positive-energy two-point continuation

The seventh report, [Positive-energy extrapolation and Euclidean contacts](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/lorentzian_two_point.md>), derives the normalized Wightman boundary density $2\ell^2\sqrt{\omega^2-|\mathbf p|^2}\,\theta(\omega)\theta(\omega^2-|\mathbf p|^2)$. It explains why the Euclidean multiplier $-\ell^2|k_E|$ is reflection positive but is not an ordinary positive Euclidean source covariance. Local Euclidean contacts have no Wightman spectral discontinuity.

The order-$\lambda^2$ sunset tower has a strong Schwartz-distribution Lorentzian limit with sharp rate $(zz')^4$, for arbitrary unequal radii and without contact subtraction. Its first rescaled limit is a dimension-six two-point distribution. On the Euclidean side, the report supplies the previously open unequal-radius contact prescription $P_{zz'}=\ell^2[1+\lambda^2 A(z_</z_>)/(6\pi^4)]/z_>$, gives a closed form for $A(r)$, and proves the subtracted limit for all radius ratios.

The positive two-point sum admits an explicit auxiliary generalized-free realization with a common-domain boundary operator limit. This does not identify the actual interacting algebra: that auxiliary model has zero higher connected correlators, unlike the calculated scalar theory. The result makes precise a two-point-level noninjectivity of leading extrapolation, rather than claiming complete bulk reconstruction.

[Wightman verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/wightman_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/wightman_checks_results.txt>) record fourteen vanishing symbolic residuals, twenty spherical-Bessel bound tests, and unequal-radius spectral/contact comparisons with analytic tail bounds. Two independent derivations and manuscript reviews checked normalization, positivity, the sharp limit, unequal contacts and the operator-level qualifications.

## Established constrained Proca dictionary in AdS₄

The eighth report, [Proca insertions, radial constraints and the Maxwell limit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca.md>), derives the exact full coordinate covariance for every $m^2>0$, including the radial delta term required by the sourced divergence constraint. Tangential Euclidean thin-layer insertions exist; the analogous unsubtracted radial insertion does not. The report also derives the Gaussian relation between the insertion functional, its Legendre transform and the sum of ultraviolet/infrared cap actions, without identifying them with a single infrared on-shell action.

For $\nu=\sqrt{1/4+m^2\ell^2}$, the coordinate-vector exponent is $\alpha=\nu+1/2=\Delta-1$. In $1/2<\nu<1$ a uniform all-radius-ratio estimate proves the Euclidean boundary tensor $\ell^{2\alpha}c_\nu k^{2\nu}(P^T-r_\nu P^L)$ after the single local contact subtraction, with $r_\nu=(\nu-1/2)/(\nu+1/2)$. For every $\nu>1/2$, the positive-energy construction gives a strong distributional boundary limit and an actual free-Proca field limit on a common Fock domain, with no Wightman source-contact subtraction. This is stronger than the auxiliary generalized-free realization used for the interacting scalar.

The boundary-first massless limit gives the conserved current, but $\chi_m=\partial\cdot\mathcal O/(3m)$ retains the canonical massless-scalar normalization $4\ell^4/(3\pi^2|x|^6)$. Raw finite-radius Proca has a nonlocal longitudinal $1/m^2$ divergence. Thus the full limit is Maxwell plus a scalar, whereas conserved tangential sources isolate the Maxwell sector cleanly. [Proca checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca_checks_results.txt>) contain eighteen zero scalar residuals in sixteen labelled groups, twenty-four Bessel tests and uniform-bound samples. Two independent derivations and manuscript reviews checked the main statements.

## Established gauge-invariant Maxwell dictionary in AdS₄

The ninth report, [Gauge-invariant Maxwell extrapolation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell.md>), derives the exact electric/magnetic field-strength kernels directly from Maxwell theory under Dirichlet and electric Neumann boundary conditions. The normal electric covariance includes the full local contact $\delta_{ij}\delta(z-w)$, not merely its transverse projection. Its unsubtracted Euclidean thin-layer insertion does not exist; the specified local source subtraction gives a conserved-current finite part with an all-radius-ratio boundary bound. Neumann magnetic insertions require no radial subtraction. Mixed electric/magnetic thin-layer contacts retain a profile/order prescription.

For arbitrary smooth radial profiles, the report proves the exact identity $W^{\mathrm{ren}}_{D,E}[f]=\log\langle\exp[-i\ell\int f\cdot B_N]\rangle_N$. This equates a real-source electric finite part with a magnetic characteristic functional, not with the covariance of a real polar Euclidean magnetic current. The boundary gauging transform, the inverse-$S$ first-order action and the axial-to-polar Wick conversion fix the sign and normalization. An explicit Gaussian source gives the complete finite-radius functional in terms of an error function.

Both physical Lorentzian currents have finite-radius density $2\ell^2\sqrt{s}\,\theta_+\cos(z\sqrt{s})\cos(w\sqrt{s})\Pi^T$, boundary normalization $2\ell^2/\pi^2$, exact Ward identities and a common-domain photon-field limit. No independent slice modes or Proca mass limit are used. The result is restricted to the neutral, topologically trivial AdS₄ sector; flux quantization and subregion edge modes are not silently included. [Maxwell checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_checks_results.txt>) record fifty-six zero scalar residuals in twenty groups, uniform-bound samples and sixteen cosine tests, supplemented by two independent derivations and manuscript reviews.

## Established AdS₃ Maxwell logarithmic endpoint

The tenth report, [Maxwell extrapolation in AdS₃](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_ads3.md>), classifies the real, separated, momentum-independent domains for $A_i=a_i\log(z/\ell)+b_i+\cdots$. Every finite $b^T=f a$ has one physical radial level $-\kappa^2$, with $\kappa=2e^{f-\gamma_E}/\ell$, and hence a negative band of bulk Euclidean momenta. The no-log condition $a=0$ is the unique nonnegative member of this family. The report derives the boundary completions, exact resolvents and the negative-mode action; finite contact choices at fixed source must not be confused with changing this domain.

In the stable neutral sector, the actual gauge-invariant boundary field is $\mathcal H_\partial=\lim(\ell/2)F_{tx}$, with dimension two and normalization $\ell^3/(2\pi[x^2-(t-i0)^2]^2)$. It matches the canonical massless-scalar extrapolate operator. The Euclidean representative $i\ell F_{\tau x}/2$ requires a local $k^2\log z_>$ contact subtraction; a uniform unequal-radius theorem proves the resulting Schwartz limit. The electric flux vanishes, while its rescaling gives a conserved dimension-three descendant, not a dimension-one primary current. A separate light-cone argument explains why a covariant transverse potential does not define a positive distribution on unrestricted vector tests.

The positive-energy construction yields a common-domain field-strength operator limit. Scalar duality is tracked with its Euclidean Gaussian contact and Wick factor, rather than imposed as an equality of real Euclidean random fields. [AdS₃ checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_ads3_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_ads3_checks_results.txt>) record fourteen vanishing symbolic residuals, eighteen Bessel tests and logarithmic-remainder samples. Two independent derivations and manuscript reviews checked the results. Momentum-dependent boundary dynamics, Chern–Simons/edge sectors and global flux modes remain outside this classification.

## Established complementary-spinor Dirac dictionary

The eleventh report, [Dirac extrapolation in AdS₄](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/dirac.md>), constructs both quantizations for $0<M=m\ell<1/2$. It derives the first-order variational boundary terms, the full bulk inverse and its radial jump, and the Grassmann insertion functional. Standard insertions pair $P_+\psi$ with $\bar\psi P_-$; alternative insertions exchange the projectors. Signed Bessel orders, not their absolute values, fix the coupled endpoint conditions. The projected thin-layer kernels are continuous; the full matrix retains an ordering contact which diverges under standard boundary rescaling.

With $t=+M$ or $-M$, $\Delta_t=3/2+t$ and $P_\sigma=P_+$ or $P_-$, the boundary kernel is

$$
C_{t,\partial}(k)=-i\ell^{2t}\frac{\Gamma(1/2-t)}{2^{2t}\Gamma(1/2+t)}
 P_\sigma\Gamma^ik_iP_{-\sigma}\,k^{2t-1}.
$$

A uniform unequal-radius bound $\|C_t(z,w;k)-C_{t,\partial}(k)\|\le B_t\ell^{2t}z_>^{1-2t}k$ proves the projected Euclidean Schwartz limit without divergent source counterterms in this window. The complementary kernels obey $C_{-M,\partial}=-C_{M,\partial}^{-1}$. The report tracks the standard source minus signs needed to match positive extrapolated one-point functions, and gives an explicit finite-wall kernel differing from the finite-radial bulk insertion.

The positive-energy density is $\rho_t(s)=\ell^{2t}2^{-2t}s^{t-1/2}/\Gamma(t+1/2)^2$. For every Schwartz **spacetime** spinor test, the actual bulk CAR fields satisfy

$$
\|\Phi_z^{(t)}(f)-\Phi_\partial^{(t)}(f)\|
\le\frac{z^2}{4(t+1/2)}\|\Phi_\partial^{(t)}(\square f)\|.
$$

This is operator-norm convergence, including both particles and antiparticles. The alternative normalized Bessel multiplier is not globally bounded; a derivative identity supplies the correct domination. Fixed-time spatial smearing alone remains UV divergent. [Dirac checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/dirac_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/dirac_checks_results.txt>) contain seven exact scalar identities, exact positivity-matrix identities, both left/right inverse and jump checks for both branches, eighteen Bessel-bound tests, and unequal-radius samples, with no messages in the saved run. Three independent derivations and two manuscript reviews checked the key results. Endpoint masses, mixed domains, compact spin structures and fermion interactions remain outside the result.

## Established local linearized-gravity dictionary

The twelfth report, [Electric Weyl insertions and the stress-tensor limit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/gravity.md>), treats the radiative Dirichlet sector of Einstein AdS₄ with $\kappa^2=8\pi G$. It aligns the EH/GHY/counterterm variational problem with the workspace CPS convention $\omega=\delta\theta$, normalizes the physical modes, and constructs the local linear gauge invariant $\mathcal T_{ij}(z)=-zC^{(1)}_{zizj}/\kappa^2$. Its boundary limit is $T_{ij}=3\ell^2\gamma_{(3)ij}/(2\kappa^2)$, with $C_T=24\ell^2/(\pi^2\kappa^2)$.

The full six-component radial inverse is needed off shell. Its TT, vector and scalar contributions turn the apparently nonlocal TT contacts into a local source subtraction. For the tracefree part $F$ of a smooth radial source,

$$
Q[f]=\frac{\ell^2}{8\kappa^2}\int dz\,d^3x\,
[(\partial_zF_{ij})^2-3(\partial_aF_{ij})^2+6(\partial_iF_{ij})^2].
$$

Subtracting this before the thin-layer limit gives

$$
C^{\rm ren}_{ij,kl}(z,w;k)=\frac{\ell^2}{\kappa^2}
 k^3\Pi^{E}_{ij,kl}(k)\cosh(kz_<)e^{-kz_>},
$$

with uniform boundary error at most $(\ell^2/\kappa^2)z_>k^4$. The unrenormalized layer generically diverges as its width to the power $-3$. Smooth compact radial sources themselves are finite. The report explicitly handles the scalar inverse's growing pure-gauge interior tail by passing to a regular representative; it does not assume a globally bounded radial-gauge metric inverse.

The physical Wightman kernel is $2\ell^2s^{3/2}\theta_+\cos(z\sqrt s)\cos(w\sqrt s)\Pi^L/\kappa^2$. It is positive and locally integrable on arbitrary Schwartz spacetime tensor tests, and gives $O(z^2)$ common-Fock-domain field convergence. A local differential representation in terms of the Neumann half-space scalar kernel proves causality. The metric extrapolation has a different finite-radius form factor. The boundary source map is $\gamma_{(0)}^{TT}=2\Pi^Ej$; an explicit moving-wall response differs from the finite-radial insertion even after this map. The linear Brown–York operator supplies the stress two-point structure, not the full nonlinear charge or interacting stress algebra.

[Gravity checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/gravity_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/gravity_checks_results.txt>) verify the Weyl identities, ADM action, distributional jumps, all 81 contact-polynomial components, all 81 position-tensor components, source subtraction, form factors and wall normalization. All symbolic residuals vanish; eight cosine and fifteen unequal-radius samples pass without messages. Three independent derivations and two manuscript reviews checked the main claims. Nonlinear dressings, alternate gravitational boundary dynamics, global charge/edge sectors and graviton loops remain open.

## Established protected IIB/SYM comparison

The thirteenth report, [BF-bound extrapolation and the protected IIB 20′ three-point function](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md>), constructs the logarithmic AdS₅ endpoint directly from the bulk insertion prescription and compares the actual IIB scalar cubic vertex with independently computed $SU(N)$ SYM data. The log-free vacuum requires the completed variational domain, not the bare improper action. For a canonical scalar,

$$
H_k(z,w)=\ell I_0(kz_<)K_0(kz_>),\qquad
H_k+\ell\log(z_>/\ell)\longrightarrow-\ell[\log(k\ell/2)+\gamma_E].
$$

The positive insertion source maps to the logarithmic datum $a=-\ell j$. The finite-wall IR response differs from the insertion covariance; the latter inverts the sum of the IR and UV-cap responses. A uniform unequal-radius estimate proves the subtracted Schwartz limit. The positive Lorentzian kernel $\pi\ell\theta_+J_0(z\sqrt s)J_0(w\sqrt s)$ gives canonical free-field common-domain convergence at rate $O(z^2)$ without a Lorentzian subtraction.

The canonical cubic finite-radius kernel is $-\lambda_{IJK}\ell^2\int_0^\infty du\,u\prod_a I_0(k_a\min(u,z_a))K_0(k_a\max(u,z_a))$. Its boundary limit exists uniformly on bounded sets of arbitrary overlapping Schwartz sources, with no cubic contact subtraction, and is

$$
\langle O^IO^JO^K\rangle_{c,\mathrm{tree}}
=-\frac{\lambda_{IJK}\ell^2}{16\pi^4x_{12}^2x_{23}^2x_{31}^2}.
$$

The actual reduction in coordinates $T=e^t$ gives $\phi=t/(2\kappa_5)$, $\lambda_{IJK}=8\kappa_5\operatorname{Tr}(Y^IY^JY^K)/\ell^2$, and $\kappa_5^2=4\pi^2\ell^3/N^2$. The unit-normalized bulk three-point coefficient is $-2\sqrt2\,d_{IJK}/N$. An independent linear Coulomb-quadrupole calibration fixes $\widehat O\simeq-\widehat Q$, so this agrees with the protected SYM coefficient $+2\sqrt2\,d_{IJK}/\sqrt{N^2-1}$ at leading large $N$. A common quadratic-contact scheme also matches the corresponding source coefficients. The classical Newton relation is not modified by hand to $N^2-1$.

[Half-BPS checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_checks_results.txt>) verify Green/source/wall identities, potential and kinetic normalization, noncommuting matrix Wick factors, the integrated three-point constant, Newton/flux factors and the Coulomb coordinate matching. All symbolic residuals vanish with no messages. Eight Bessel-bound samples, fifteen logarithmic-remainder samples and three finite-radius triple-Bessel samples complement the analytic proofs. Four independent derivations and two fresh manuscript reviews checked the main claims.

The result concerns the displayed tree/source orders in the classical large-$N$, strong-coupling window. Arbitrary $20'$ scalars source vectors and gravity from quadratic order and are not a scalar-only consistent truncation. The finite-radius field uses specified coordinates and gauge fixing; a complete nonlinear dressing is not supplied. The free Lorentzian boundary representation $\widehat O_z=-J_0(z\sqrt s)\widehat Q$ does not remain an interacting reconstruction. Finite-$N$ corrections, interacting Lorentzian positivity and generic four-point matching are not claimed.

## Established first nonlinear reconstruction in a spectral channel

The fourteenth report, [First nonlinear reconstruction in the protected scalar channel](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction.md>), constructs the scalar order-$1/N$ correction with fixed exact boundary data. In unit normalization, $\mathcal D U^I=g_{IJK}U^JU^K$, where $\mathcal D=\partial_z^2+z^{-1}\partial_z+\square$ and $g_{IJK}=4\sqrt2\,d_{IJK}/N$. The radial Volterra inverse gives

$$
U_z^I=h_{\square}(z)\mathcal O^I+g_{IJK}\int_0^zdu\,R_{\square}(z,u):U_0^J(u)U_0^K(u):+O(N^{-2}),
$$

with $h_s(z)=J_0(z\sqrt s)$. The first term uses the exact boundary primary; replacing it by a Gaussian field would discard the protected three-point data. The quadratic correction is a genuine operator on a dense compact-spectral Gaussian-Fock domain, vanishes strongly as $O(z^2)$, and starts as $g_{IJK}z^2:\mathcal O_0^J\mathcal O_0^K:/4$. An explicit counterexample shows that this isolated correction is not defined for every Schwartz test.

In the channel with future-timelike external momenta $p,q$ and spacelike transfer $s(p-q)=-\kappa^2$, put $a^2=s(p)$, $b^2=s(q)$, $C_\theta^2=a^2+b^2-2ab\cos\theta$, and $D=\sqrt{[\kappa^2+(a+b)^2][\kappa^2+(a-b)^2]}$. The independent CFT triangle phase-space calculation gives boundary amputated form factor $M_0=4c/D$. The complete first-order result is

$$
M_z=\frac{4c+2g}{D}I_0(\kappa z)
-\frac{2g}{\pi}\int_0^\pi\frac{J_0(zC_\theta)}{\kappa^2+C_\theta^2}\,d\theta.
$$

At the retained tree order, the protected IIB/SYM relation $c=-g/2$ cancels the entire growing mode. Consequently $|M_z|\le2|g|/D$ and $|M_z-M_0|\le |g|z^2/2$. This explicitly demonstrates why the isolated-correction obstruction must not be applied to the physically combined sector.

For all three radii finite, the corresponding amplitude is $J_0(az_1)J_0(bz_3)M_{z_2}$. The identity $i\,\mathrm{Disc}_{k^2=-a^2}D_k(z,u)=\pi J_0(az)J_0(au)$ matches it exactly to the double spectral density of the finite-radial Euclidean insertion diagram. The Wightman interpretation uses the standard ordered positive-energy spectral prescription; no all-channel continuation theorem is inferred. A Hilbert–Schmidt estimate controls the combined spacelike form-factor sector even at its null-edge/diagonal singularities and extends its smearing to Schwartz tests on compact-energy inputs.

[Reconstruction checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction_checks_results.txt>) record 22 vanishing exact residuals, three independent-representation numerical comparisons with explicit radial-tail bounds, and two discontinuity checks. The final run has no messages. Three independent derivations and two fresh manuscript reviews checked the radial/domain and spectral/CFT arguments. Analytic proofs, rather than these samples, establish the domain and cancellation claims. The result remains a scalar-channel first-order construction: full gauge/gravitational bilinears, other momentum-transfer sectors and interacting positivity are not supplied.

## Established all-channel scalar three-point Wightman limit

The fifteenth report, [Timelike transfer and the global tree-level Wightman extrapolate limit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman.md>), completes both timelike-transfer sectors of the order-$1/N$ scalar coefficient. The calculation expands all three Heisenberg insertions in a specified formal vacuum-contour/retarded prescription. Future timelike transfer requires the outer-left correction; past timelike transfer requires the outer-right correction. These supply the homogeneous terms missed by continuing the spacelike particular solution alone.

For nonnegative masses, the finite divided-difference kernel

$$
\mathcal A_{t;m,n}(z)=\frac1\pi\int_0^\pi d\theta\,
\frac{J_0(z\sqrt{m^2+n^2-2mn\cos\theta})-J_0(tz)}
{t^2-m^2-n^2+2mn\cos\theta}
$$

has removable resonances and obeys $|\mathcal A|\le z^2/4$. With both outer insertions at the boundary, the timelike form factor is $2g\mathcal A_{\tau;a,b}(z)$, whereas the protected boundary three-point coefficient vanishes in that sector. The retarded imaginary terms have no surviving absorptive contribution; a global dominated limiting-absorption argument excludes hidden null/collinear delta terms for this specified prescription.

Combining all transfer sectors gives a regular tempered three-point kernel and the independent-radii strong $\mathcal S'$ limit on arbitrary spacetime Schwartz tests, with error $O(\max_i z_i^2)$. The boundary reduced kernel is $-2g\mathbf1_{s(p-q)<0}/D$, $D=2\sqrt{(p\cdot q)^2-s(p)s(q)}$, on the future-cone product. The exact estimate $\int_{p^0,q^0\le B}d^4p\,d^4q/D^2=\pi^2B^4/2$ controls all collinear and outer-null edges. No Lorentzian contact subtraction is required.

[Wightman three-point checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman_checks_results.txt>) contain 15 vanishing exact residuals, seven angular/Volterra comparisons including exact resonances and zero masses, two full timelike comparisons, and three regulated-resolvent samples. The saved run has no messages. Three independent derivations and two fresh manuscript reviews checked the support, state/homogeneous terms, threshold domination and global distributional argument. This is a formal one-vertex coefficient, not a proof of full interacting positivity, an exact vacuum/Møller construction, or equivalence of arbitrary switching prescriptions. Its Euclidean-vacuum identification uses the stated perturbative vacuum-contour prescription, not normalization matching alone.

## Established first-order scalar locality test

The sixteenth report, [Locality of the first scalar reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_locality.md>), evaluates the bulk spacelike-commutator test rather than inferring locality from boundary matching. The BF radial operator is the angularly invariant six-dimensional wave operator. An auxiliary circle representation of the free covariance converts the Euclidean one-vertex diagram into the uniqueness integral, giving the complete finite-radius position-space coefficient

$$
T_E=-\frac g2\left\langle\frac1{Q_{12}Q_{13}Q_{23}}\right\rangle_{\theta_1\theta_2\theta_3},\qquad
Q_{ij}=|x_i-x_j|^2+z_i^2+z_j^2-2z_iz_j\cos(\theta_i-\theta_j).
$$

This is a compact two-angle representation after removing a common rotation, not an identification with a full six-dimensional quantum theory. Its ordered complex-time boundary value proves stationary tree three-point locality, including spectator light-cone intersections, under the stated vacuum-contour prescription. For one bulk and two boundary insertions it reduces to

$$
\langle U(z,x)\mathcal O(y)\mathcal O(v)\rangle_{c,\mathrm{tree}}
=-\frac{g}{2SAB},\qquad A=z^2+(x-y)^2,\quad B=z^2+(x-v)^2,\quad S=(y-v)^2.
$$

The free lift is $c/[S(AB-z^2S)]$ and the quadratic correction is $gz^2/[2AB(AB-z^2S)]$. Thus $c=-g/2$ cancels an unphysical pole that can occur even when all physical pairs are spacelike. The separate meromorphic terms are not assumed to be global Wightman distributions. The full mixed commutator is supported only on the physical bulk–boundary null surface.

A separate formal Yang–Feldman calculation with a common compact local switch reduces the order-$g$ operator commutator to two causal retarded chains, proving spacelike vanishing. It requires the interacting boundary trace, not the uncorrected Gaussian boundary in-field. The report distinguishes this operator statement from a stationary adiabatic-limit construction and from gauge-invariant IIB observables. Compact switching can fill a deep-timelike gap that remains present in the special stationary three-point coefficient; this does not violate spacelike locality.

[Locality verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_locality_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_locality_checks_results.txt>) contain 19 labelled exact groups with 24 zero scalar residuals, circle and uniqueness-integral samples, angular-mesh comparisons, and two regulator orderings near the spurious pole. The final complete run has no messages. Two independent derivations and two fresh manuscript reviews checked normalization, continuation, intersecting-cone support, causal algebra, counterexamples and scope.

## Established neutral four-point contact and gravity diagnostic

The seventeenth report, [A neutral IIB four-point sector](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point.md>), isolates the polarization $Y=\operatorname{diag}(1,1,1,-1,-1,-1)/\sqrt6$. Its square is $\mathbf1_6/6$, so every retained $YYI$ scalar cubic and every $YY$ vector current vanishes. In the actual nonlinear consistent truncation this leaves an Einstein–scalar channel: the metric cannot be frozen. The report derives the general quartic matrix action and the exact neutral potential, giving the canonical coupling $\lambda_4=-32\kappa_5^2/(3\ell^2)$ with no neutral derivative quartic.

The evaluated contact contribution for unit insertions is

$$
\mathcal G^{\rm ct}_{\boldsymbol z}
=\frac{32}{3\pi^2N^2}\int_0^\infty du\,u^3\int d^4v
\prod_i C_{z_i}(u,v-x_i),\qquad
\mathcal G^{\rm ct}_{\partial}=\frac{32}{3\pi^2N^2}D_{2222}.
$$

For arbitrary overlapping Schwartz sources and independent radii, the contact functional has the uniform expansion

$$
\mathcal T_{\boldsymbol z}(j_i)
=\mathcal T_0(j_i)+\frac14\sum_i z_i^2\mathcal T_0(j_1,\ldots,-\Delta j_i,\ldots,j_4)
+O\!\left(R^4(1+|\log R|)^4\right),\qquad R=\max_i z_i.
$$

Thus its quadratic boundary error is generically sharp and needs no new quartic source subtraction. The boundary contact reduces to a flat-box derivative and has Mellin constant $16/(3N^2)$ in the stated measure. This is **not the complete four-point function**: the Ward-normalized stress tensor has nonzero unit tensor-three-point coefficient squared $8/(45N^2)$ (or block coefficient $2/(45N^2)$ in the stated Gegenbauer normalization), which a contact Mellin constant cannot supply.

The finite-insertion cross stress obeys $\nabla^aB^{ij}_{ab}=-J_i\nabla_b\psi_j-J_j\nabla_b\psi_i$. Its interior insertion contacts prevent discarding longitudinal/constraint exchange by an unsupported conservation argument. The report writes the required full-gauge structural exchange but does not evaluate it. A harmonic counterexample also explains why vanishing retained cubic vertices does not imply absence of higher-KK harmonics or extremal dimension-four CFT OPE data.

[Scalar/contact code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_checks_results.txt>) contain 24 exact groups with 132 zero scalar residuals and four unequal-radius integral samples with tail bounds. The [xAct identity check](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_tensor_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_tensor_checks_results.txt>) verify the source-divergence identity after explicitly commuting scalar Hessians. Final runs have no messages. Three independent derivations and two fresh manuscript reviews checked the action, source theorem, Ward diagnostic and scope.

## Established full radial inverse and the neutral exchange limit

The eighteenth report, [Neutral radial-gauge graviton exchange](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange.md>), derives the complete ten-component tangent Einstein Hessian and its inverse, including the longitudinal and trace sectors. With $\delta g_{ij}=2\kappa\ell^2u^{-2}q_{ij}$ and the tensor projectors defined in the report, its covariance is $\ell^{-3}\mathscr G$, where

$$
\mathscr G=G_p\Pi_2+R_0\Pi_1-\frac{R_0}{3}(P\otimes L+L\otimes P)
+\frac23(R_0+p^2J)L\otimes L,
$$
$$
G_p=(uv)^2I_2(pu_<)K_2(pu_>),\qquad
R_0=\frac{u_<^4}{4},\qquad J=\frac{u_<^4u_>^2}{16}-\frac{u_<^6}{48}.
$$

The inverse is the limit of a specified reduced Dirichlet Hessian, not an all-component decaying metric propagator. It yields all neutral four-point tree contractions in that radial Gaussian as explicit convergent quadratures. BF cancellation improves the small-radius cross-stress bound to $\|B(u)\|_2\lesssim u^2(1+|\log u|)$; the full exchange therefore has the uniform Schwartz expansion

$$
\mathcal E_{\boldsymbol a}(j_i)=\mathcal E_0(j_i)
+\frac14\sum_i a_i^2\mathcal E_0(j_1,\ldots,-\Delta j_i,\ldots,j_4)
+O\!\left(R^4(1+|\log R|)^3\right).
$$

Adding the contact theorem gives a boundary theorem for their sum, with logarithmic power four, in this prescription. Independent-radius ratios and overlapping sources are included. At the boundary, conservation and the Bianchi identities restore the full sourced Einstein constraints; finite insertion sources must not be treated as conserved.

For unit tetrahedral external momenta, the normalized boundary coefficient is $N^2\widetilde{\mathcal G}_{c,\rm tree}/(16\pi^6)=0.339768802796\ldots$. Non-TT sectors are essential numerically. Wolfram cumulative-ODE integration and independent SciPy direct two-dimensional quadrature agree, including three finite-radius examples. [Inverse/numerical checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_checks_results.txt>), together with [geometric checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_tensor_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_tensor_checks_results.txt>), have zero final residuals and no messages. Three independent derivations and two fresh manuscript reviews checked the inverse, source theorem, geometry, normalization and scope.

**Endpoint issue isolated in that report:** its finite-source reduced-Gaussian functional was not yet identified with an independently defined gravitational observable; equivalence of full path-integral measures was not established. A boundary-fixing diffeomorphism cannot remove an arbitrary finite-wall radial-length perturbation. Moreover, a locally pure-gauge $u^2$ tail can carry a finite ADM surface quadratic form, whereas the auxiliary Dirichlet sequence has zero endpoint field. The report exhibits both facts and gives the boundary-anchored linear gauge map; a projection of the propagator must include the adjoint source completion and the endpoint form, not just transform a response to a bare tangent source.

## Established dressed-tree identification and endpoint compensation

The nineteenth report, [Boundary-anchored gravitational dressing](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_gravitational_dressing.md>), identifies the preceding neutral four-point coefficient with a specified gravitational observable **through connected-four tree order $\kappa^2$**, rather than claiming equality of full path-integral measures. The first dressed unit scalar is

$$
\mathcal U_a=U_a+
\left[\xi^u(\partial_u+2/u)U+\xi^i\partial_iU\right]_{u=a}+O(H^2),
$$

where $\xi$ is the UV-anchored vector taking the metric into radial gauge. The fixed relational prefactor accounts for $2/u$. The adjoint metric projection produces an exactly conserved source $Q=\mathcal P^\dagger B_{ij}$ with $Q_{ij}=B_{ij}$ and explicit radial components. Its difference from the original scalar stress consists of UV-to-insertion strings. Ordinary metric exchange plus one- and two-dressing terms combine into this completed source; linear dressing is sufficient for this particular connected-four tree, not for a full second-order operator.

The explicit radial response has the full residual-FG polynomial tail, including the constant transverse trace required by $\mathfrak a=-p^2\mathsf U/2$. Conservation and the Bianchi identity remove its residual constraint integration constants. Subtracting the tail in an IR transition region gives a regular full Einstein representative with the same source pairing. Regular Dirichlet uniqueness then proves equality of the physical dressed exchange bilinear with the preceding $\mathscr G$ expression. An IR-large vector is used as a differential construction, not silently declared a globally admissible null gauge direction.

The endpoint calculation is explicit:

$$
C_{\rm IR}=\frac{3\ell^3}{2}\int_p\mathfrak a(p)\mathfrak a(-p)=-B_{2,\infty}.
$$

It comes from the background first variation evaluated on the **second-order orbit metric**, or an explicitly oriented gauge transition region. Moving the embedding alone while omitting that metric term is insufficient. A complete longitudinal source example has response bilinear $15$, regular bare quadratic action $15/2$, naive radial action $-30$ and compensation $75/2$. An actual equal-magnitude scalar pair gives the nonzero slice moment $-(a_1^4+a_2^4)I_0(ka_<)K_0(ka_>)/2$, demonstrating that this endpoint issue occurs for the scalar insertions themselves.

Soft-momentum limits are taken on the bounded paired functional with external/transfer cutoffs, not on individual IR tail moments, which can diverge at zero transfer. No zero-supported/edge distributions are added. The previously proved arbitrary-Schwartz, independent-radius boundary expansion therefore applies to this dressed tree coefficient, with total remainder $O(R^4(1+|\log R|)^4)$; the unit-tetrahedron boundary value is unchanged.

[Combined checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_checks.wl>) run the [source/Ward tests](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_source_checks.wl>), [orbit/graph/transition tests](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_endpoint_checks.wl>) and complete response examples. The [saved result](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_checks_results.txt>) has all checks passed and no messages. Three independent derivations and two fresh audits checked the identification, normalization, endpoint compensation and scope. Full nonlinear dressing, quantum composite renormalization and path-integral measure equivalence remain unproved.

## Established neutral SYM four-point comparison

The twentieth report, [Einstein exchange, Mellin amplitude and SYM OPE](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin.md>), completes the quantitative comparison at connected tree order. With the unit scalar normalization and ordinary Mellin measure $ds\,dt/(4\pi i)^2$, it finds

$$
M_Y(s,t,u_M)=\frac1{N^2}\left[\frac13-\frac12\sum_{\rm cyc}
\frac{(t-u_M)^2+4/3}{s-2}\right],\qquad s+t+u_M=8.
$$

Two independent solutions of the full Einstein equation determine the graviton contribution, including its polynomial $-5/N^2$; the already fixed quartic contributes $16/(3N^2)$. The resulting constant is not fitted using the Ward identity. A particularly simple unit-radius response is $\mathfrak h^{12}=-(A_1A_2/3P_{12})(d\log A_1-d\log A_2)^2$. Its exact norm $|\mathfrak h^{12}|=4A_1^2A_2^2/3$ bounds each exchange by the positive quartic contact integral. This supplies an absolute Schwartz-source bridge to the preceding regular-response functional. Fixed UV metric data must be imposed distributionally: an explicit homogeneous endpoint-source counterexample defeats a merely pointwise test.

Independently projecting the known strong-coupling half-BPS supercorrelator to $Y$ gives

$$
\mathcal G_{Y,c}(U,V)=\frac2{3N^2}
\left[U+\frac UV+\frac{U^2}{V}
-U^2(1+U^2+V^2+4U+4V+4UV)\bar D_{2422}\right].
$$

The agreement is proved directly in position space: each bulk $D$-function is a derivative of the finite flat box, and substitution gives an exact zero residual against this CFT expression. This step is essential because no common straight Mellin contour lies left of all three stress poles; the ordinary rational amplitude must retain channelwise contours/residues. The CFT polarization projection is linear on six monomials, not evaluation at artificial values of $\sigma,\tau$. The supersymmetric reduced Mellin seed is a different object.

The stress block coefficient is $2/(45N^2)$ in the stated Gegenbauer normalization. Independently, the $U^2\log U$ coefficient at $V=1$ is $-4/(5N^2)$; with the unique leading strong-coupling singlet double trace of weight $1/10$, this gives $\gamma_{[O_2O_2]_{\mathbf1}}=-16/N^2$. Protected $105$ and $84$ dimension-four sectors remain present. Finite-$N$ mixing is not resolved. At $(U,V)=(1,1)$, the position-space value is $N^2\mathcal G_c=0.1951432830642617360\ldots$, distinct from the earlier momentum-tetrahedron probe.

The [bulk checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_bulk_checks.wl>), [independent response audit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_response_audit.wl>), [CFT/OPE checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_cft_checks.wl>) and [direct position identity](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_position_checks.wl>) have saved successful results linked in the report, with zero relevant residuals and no final kernel messages. Independent final audits checked the bulk/source bridge and the CFT/position/OPE sides separately. The uniform independent-radius boundary expansion now has this explicitly matched SYM coefficient at its endpoint, in the common no-extra-quartic-contact prescription.

## Established first gravitational reconstruction and mixed TT correlator

The twenty-first report, [First gravitational reconstruction: the stress–scalar channel](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction.md>), constructs the order-$N^{-1}$ stress–scalar component of the boundary-normal BF operator. With $\alpha=2\sqrt{10}/N$, $f_2(t)=8J_2(t)/t^2$ and the radial inverse using measure $du$,

$$
B_{TO}(z)=\alpha\int_0^zdu\,R_\square(z,u)u^4:
[f_2(u\sqrt\square)\widehat T_0^{ij}]
\partial_i\partial_j[J_0(u\sqrt\square)O_0]:
=\frac{\alpha z^6}{36}:\widehat T_0^{ij}\partial_i\partial_jO_0:+O(z^8).
$$

The full boundary term is $J_0(z\sqrt\square)O_{\rm exact}$, not a Gaussian replacement. The correction has a genuine compact-energy Gaussian-Fock domain and vanishes strongly as $z^6$. Anchored FG has zero linear dressing vector, so a second dressing term must not be added there. Other species' bilinears are not claimed absent.

An independent ordered CFT three-null-shell cut, with stress density $\rho_{\widehat T}=\pi^3s^2\Pi^{(2)}/160$, gives the amputated spacelike-transfer form factor

$$
M_0^e=64\alpha(e^{ij}q_iq_j)\frac{D^2-6b^2k^2}{D^5},\qquad
D^2=[k^2+(a+b)^2][k^2+(a-b)^2].
$$

It is exactly the boundary value that cancels the $I_0(kz)$ growth in the bulk Volterra solution. The matched answer is a mass derivative of a Bessel angular average and is at most polynomial in radial depth on strictly positive parameter compact sets. At $a=b=1,k=\sqrt2$, the boundary form factor vanishes but the finite-radius one starts at $-\alpha(e:qq)z^6/36$: free smearing alone fails even in this zero-boundary example.

The amputated soft limit is singular. After state normalization, however, the specified mixed block has a compact-energy Hilbert–Schmidt extension including null/diagonal edges. With $d\nu=d^4p/(2\pi)^4$ and energies bounded by $B$,

$$
\|K_z-K_0\|_{\rm HS}\le |\alpha|I_0(2Bz)
\left[\frac{\pi B^4z^2}{8\sqrt{15}}+\frac{B^8z^6}{3456}\right].
$$

No additional edge-supported distributions are included. This block theorem is not a full interacting operator-domain or arbitrary-Schwartz theorem.

Independently, the direct Euclidean insertion diagram gives $\langle\widehat T^{TT}\mathcal U_a\mathcal U_b\rangle'=4\pi^4\Pi k_1k_1\,\mathcal J_{ab}/(\sqrt{10}N)$, where $\mathcal J_{ab}=\int_0^\infty du\,uH_pF_a(q)F_b(r)$. For insertion radii $a,b$, $R=\max(a,b)$, its first correction includes the essential overlapping-cap term $-[a^2L_r(R)+b^2L_q(R)+R^2]/4$. The error is $O(R^4(1+|\log R|)^2)$ uniformly in radius ratio at fixed positive momenta. These Euclidean caps must not be discarded by interchanging the compact-spectral expansion with unbounded spectral integration.

The report links four reproducible calculations and their final clean outputs. Reconstruction/domain checks pass 49/49; the independent CFT calculation has 41 zero scalar residuals and three successful quadratures. Matched radial examples and Euclidean cap tests also pass. Three independent derivations and separate manuscript audits checked their respective sectors. Full longitudinal/trace Ward contacts and all-transfer vacuum identification remain unproved.

## Established complete mixed Euclidean Ward response

The twenty-second report, [Finite-radius stress Ward response and the BF contact anomaly](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward.md>), completes the preceding TT result to the full source-defined mixed tensor $\mathcal K_{ij}=2\delta C_{ab}/\delta g_{(0)ij}$. The anchored finite-radius insertion obeys the PBH law

$$
\delta_\sigma\mathcal U_a=-\sigma(a\partial_a+2)\mathcal U_a
+\frac{a^2}{2}\partial_i\sigma\,\partial_i\mathcal U_a,
$$

not the transformation of a local dimension-two primary. This fixes radial and derivative-of-delta trace contacts as well as the diffeomorphism Ward identity. The retained BF action supplies the previously TT-invisible vertex $-4\pi^2\delta_{ij}K_0(qa)K_0(rb)$. Explicit bulk radial primitives show that it cancels the nonzero UV divergence/trace flux; omitting it violates the Ward identities.

For fixed source density paired with $d^4x$, the minimal covariant scalar subtraction is $\frac12\int c_{ab}j_aj_b/\sqrt{g_{(0)}}$, with $c_{ab}=2\pi^2\log(\max(a,b)/\ell)$. The full tensor follows from its known TT part plus the algebraic longitudinal/trace completion. Its boundary data are

$$
C_\partial(k)=-2\pi^2[\log(k\ell/2)+\gamma_E],\quad
p_i\mathcal K^{\rm ren}_{ij}=k_{1j}C_\partial(q)+k_{2j}C_\partial(r),\quad
\mathcal K^{\rm ren}_{ii}=-2[C_\partial(q)+C_\partial(r)]+2\pi^2.
$$

The final constant is a genuine triple-coincidence source anomaly, distinct from the canceled bare BF endpoint term. For unit stress divide by $\sqrt{C_T}$. Additional finite curvature-source counterterms are explicitly set to zero: a term $\lambda_{ab}\mathcal Rj_aj_b/(2\sqrt g)$ leaves flat covariance and TT unchanged but shifts the tensor by $2\lambda_{ab}(p^2\delta_{ij}-p_ip_j)$. Thus the full contact prescription is not inferred from flat TT data alone.

The completed renormalized kernel converges strongly in $\mathcal S'(\mathbb R^8)$ for arbitrary joint radius limits and Schwartz tests, including all soft momentum regions. The new global TT estimate is $\mathcal J_{ab}\le3\pi M^2/(4p\sqrt{qr})$, with $M=\sup_{t>0}\sqrt t I_0(t)K_0(t)<\infty$. Its momentum singularities are locally integrable. The raw covariance and logarithmic subtraction have opposite radial derivative jumps, so their sum is genuinely $C^1$ across $a=b$.

For the unit momentum triangle at $(a,b)=(0.2,0.3)$, the full normalized response has $N\widehat{\mathcal K}_{11}=32.52619041399817\ldots$, compared with the TT-only value $24.37938692408495\ldots$. Three independent derivations and manuscript audits checked the PBH/bulk endpoint calculation, source extension/anomaly, and global distributional theorem. Saved symbolic residuals vanish; independent direct bulk quadratures and full tensor examples pass without final kernel messages. These are source-response results in a stated curved-source convention, not an all-transfer Lorentzian product or interacting Hilbert-domain theorem.

## Established timelike gravitational reconstruction and global combined bounds

The twenty-third report, [Timelike gravitational reconstruction and its boundary-fixed global extension](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>), computes both open timelike-transfer sectors by expanding all surviving Heisenberg insertions. Future transfer requires the nonlinear boundary stress response $\widehat T_1^{TT}=-(\alpha/10)\lim_{v\to0}v^{-4}\int du\,u\,G_{2,p}^{\rm ret}(v,u)\Pi:\partial U_0\partial U_0:$; past transfer requires the outer scalar correction. These supply the homogeneous contribution missed by continuing the spacelike particular solution.

With the right scalar at the boundary, the result admits the exact compact representation

$$
M_z=-\frac{\alpha Qz^6}{4}\int_0^1dt\,dv\,(tv)^2
f_2(az\sqrt{tv})J_0(bz\sqrt{tv})
J_0(\tau z\sqrt{(1-t)(1-v)}),
\qquad |M_z|\le\frac{|\alpha Q|z^6}{36}.
$$

The report also computes both independent finite scalar radii. The reduced coefficient is entire in squared masses, including thresholds. State normalization removes the apparent outer-null polarization divergence and yields compact-energy Hilbert–Schmidt convergence at order $z^6$. Individual homogeneous/particular pieces instead have quadrupolar $D^{-3}$ behavior, which is not absolutely locally integrable; they must be combined before assigning a threshold limit.

A new global spacelike estimate proves

$$
\frac{D^3}{a^2}|\mathcal L_a(B_z-B_0)|
\le5000z^2\mathcal E^2(1+z^2\mathcal E^2),\qquad \mathcal E=a+b+\kappa.
$$

It removes the earlier fixed-energy restriction for joint-momentum Schwartz tests. Combining this with the timelike bounds and the stress spectral-square-root estimate proves an $O(\max(z,w)^2)$ strong $\mathcal S'$ boundary limit of the specified boundary-fixed full tensor coefficient, at arbitrary radius ratio. Transfer-only smearing is not asserted to give an unweighted global HS operator.

Three independent derivations, cross-reviews of the compact and global estimates, and manuscript audits checked the construction. Saved exact residuals vanish; all-leg/Volterra, compact-integral and two-finite-radius numerical examples pass with no messages in their final saved runs.

**Remaining distinction at this stage:** the open-channel vacuum calculation and the global boundary-fixed function-kernel extension are established. A generic positive-mass collinear neighborhood also admits a local complex-frequency radial limiting-absorption cancellation estimate. Identification with the uncombined Abel-regulated gravitational tensor at every outer-null/transfer-null intersection is still unproved. No additional edge-supported distributions are silently ruled out by open-set agreement. The next report distinguishes this frequency regulator from external Wightman coordinate shifts.

## Established ordered-tube limits and global Gram finite parts

The twenty-fourth report, [Ordered tube limits and global Gram finite parts](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulators.md>), separates three operations: external imaginary-coordinate shifts, invariant Gram truncation, and complex-frequency Abel regulation. External shifts multiply the full spectral tensor by $e^{-d_1p^0-d_2q^0}$; they do not shift its radial masses or projectors. For the specified combined coefficient, the joint strong Schwartz boundary error is $O(\max(z,w)^2+d_1+d_2)$, with all four limits independent.

The unamputated polynomial numerator $N_{ij}=a^4\Pi_{ij,kl}q^kq^l$ obeys $\partial_{q^i}\partial_{q^j}(1/D)=48N_{ij}/D^5$ off the Gram locus. The physical weight $S=D^2+6b^2s(p-q)$ removes the unweighted Hessian-contact null obstruction. More strongly, in **both** timelike-transfer sectors the exact invariant truncations

$$
\mathbf1_{D>\delta}\frac{N_{ij}S}{D^5}
$$

converge globally to Lorentz-covariant transverse-traceless finite parts, with error bounded by $C\delta^2(1+|\log\delta|)\mathfrak p_{2,12}$. The proof uses the causal diamond in the larger momentum's rest frame: angular quadrupole cancellation, Taylor remainders, and the shrinking diamond measure control even the degenerating null boost. These are distributions, not absolutely integrable separate kernels. A nonzero unit-TT quadratic test gives $\pi a^6/3360$ in Lebesgue normalization. Independent derivations and exact symbolic checks support the stated formulas and analytic estimates.

This closes the all-null extension problem for the **specified invariant Gram finite part**, not for the physical Abel/contour prescription. Giving the separated homogeneous and particular terms this common cutoff reproduces the combined coefficient. Tube analyticity alone still cannot exclude all-null-supported additions.

## Established smooth-switch boundary-subtracted limit

The twenty-fifth report, [Switched bulk equations and boundary-subtracted gravitational reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switching.md>), derives the actual switched derivative vertex. The scalar source is $\partial_i(\chi\gamma_0^{ij}\partial_jU_0)$, including $(\partial_i\chi)\gamma_0^{ij}\partial_jU_0$; the graviton projector acts on $\chi:\partial U\partial U:$, not on the unswitched product alone. An explicit unit-TT example shows that shifting only retarded denominators misses a nonzero $-3i\alpha\epsilon z^6/(32\sqrt6)$ term at finite exponential switch.

For genuine compact switches, full nonstationary momentum bookkeeping gives middle momentum $r=\Omega+q-p$. All outer insertions cancel exactly in

$$
\mathfrak B_\chi(z,w)=\widetilde W_\chi(z,w)
-h_z(s(r))\widetilde W_\chi(0,w).
$$

The remainder is a finite $du$-Volterra integral with source proportional to $u^4f_2(au)J_0(bu)J_0(bw)a^4\Pi(p)q(q+\Omega)$. Its unamputated numerator is polynomial, with no inverse Gram denominator. For $\chi_R(X)=\chi(X/R)$, $\chi\in C_c^\infty$ equal to one near zero, the boundary-subtracted coefficient converges in full twelve-momentum local $\mathcal D'$ with error $O_{K,M}(|\alpha|z^6R^{-M})$ for every $M$, uniformly at bounded radii and across all null strata. The weak radial switching defect vanishes with an explicit analogous estimate. No convergence of the full boundary trace is assumed in this result.

Radial vertex tails cancel before regulator removal; a finite radial mollifier requires the averaged $h$, followed by the reference's thin-layer limit. The separate Volterra term generically grows as $64I_0(\kappa z)/\kappa^6$ at spacelike transfer, so its convergence must not be promoted to global $\mathcal S'$. Three independent derivations and exact zero-residual checks support the action, source, radial identity, quantitative limit and counterexamples. The switch is specified in the reduced TT interaction, not asserted to be a finite-switch diffeomorphism-invariant completion.

## Causal-switch completion at first gravitational order

The twenty-sixth report, [Genuine switching and the first gravitational reconstruction](half_bps_stress_completion.md), constructs the complete boundary corner in a specified causal TT prescription. Its common radial-cutoff integral is a degree-zero tempered distribution on all twelve nonstationary momenta. Pairing the full retarded output first, with its six-dimensional causal representation, fixes the output-null contact and proves radial-cutoff removal without a nonzero-mass assumption.

The genuine spacetime adiabatic limit is controlled through massive zero transfer, two hard collinear-null legs, each soft outer endpoint and the common origin. The proof retains the radial mass-raising jets and treats transverse injection as a parameter; it does not substitute pointwise Gram bounds for distribution estimates. The limit is profile independent and equals the independent CFT three-shell Wightman distribution, including the exceptional strata. The specified order is removal of the common radial vertex cutoff at fixed spacetime switch, followed by the spacetime adiabatic limit.

An exact compact Volterra representation and the positive-resolvent identity

$$
\int_0^\infty du\,u^5I_0(\kappa z_<)K_0(\kappa z_>)
=\frac{z^4}{\kappa^2}+\frac{16z^2}{\kappa^4}+\frac{64}{\kappa^6}
$$

control the complete finite-radius kernel globally. The actual switched coefficient therefore converges strongly in $\mathcal S'$, uniformly at bounded scalar radii, to the boundary-fixed combined tensor of report twenty-three. Its scalar radial boundary limit can be taken independently of the adiabatic limit.

The [anchored gauge completion](half_bps_stress_gauge_completion.md) supplies a cubic action and conserved radial constraint source. The [causal source bridge](half_bps_stress_causal_source_bridge.md) constructs the complete Einstein response on every finite radial interval and defines its causal TT observable by an explicit source adjoint. This response includes nonzero massless constraint terms absent from a bare time-step-times-physical-mode-commutator prescription; [independent counterexamples](half_bps_stress_retarded_projector_independent.md) show that agreement of on-shell polarizations does not fix the off-shell response. Compact vertex sources can also produce a pure-gauge FG tail proportional to $u^2$. The global Einstein phase-space/action interpretation is therefore conditional on the stated infrared endpoint domain, rather than inferred from zero-past data.

The main report indexes the [causal corner](half_bps_stress_causal_corner.md), [partial-injection estimate](half_bps_stress_partial_injection.md), [massive trace](half_bps_stress_massive_trace.md), [soft stress](half_bps_stress_soft_p_trace.md), [soft scalar](half_bps_stress_soft_q_trace.md), [CFT identification](half_bps_stress_cft_identification.md), and [global transfer](half_bps_stress_global_transfer.md) proofs. Independent mass-jet and threshold calculations are linked there. [New executable checks and actual outputs](checks/stress_completion/README.md) use Python/SymPy/SciPy/mpmath; the existing Mathematica/xAct records remain earlier evidence and were not rerun for this addition.

## Current open physical question

The prescribed first-order causal TT coefficient now has a complete genuine-switching boundary and finite-radius distribution construction, and its first-order weak Einstein response has zero infrared cross flux on the specified dense free-CPS wave-packet domain. Its complete global interacting Einstein CPS interpretation still requires endpoint control of sourced--sourced pairings and a common operator domain. Other distinct tasks are a full finite-switch curved-boundary-source/anchor Ward functional with uniform infrared control, arbitrary joint radial/spacetime cutoff removal, and comparison with independently specified complex-frequency Abel prescriptions. A complete interacting Lorentzian algebra and its positivity remain further objectives. Generic $20'$ polarizations additionally require scalar and vector exchange; higher-twist OPE extraction must keep mixing explicit.

The earlier scalar source functional is constructed through $\lambda^2$ in a specified physical scheme, with controlled two-point Lorentzian continuation. Beyond the scalar three-point coefficient just established, interacting higher-point Wightman limits and their positivity remain open; the auxiliary operator result must not be substituted for them. The larger research objective remains open: higher quantum corrections, actual interacting Lorentzian operator constructions, spin-one boundary dynamics and global sectors beyond the present models, Dirac extensions outside the mass window, nonlinear/global gravitational observables, and nonlinear finite-radial reconstruction in a genuine holographic dual. Future reports should remain separate physical calculations rather than append all these unresolved directions to one manuscript.
