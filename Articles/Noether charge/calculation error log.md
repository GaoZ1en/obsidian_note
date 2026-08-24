# Calculation error log

Audit date: 2026-06-27.

Scope: calculation checks for Markdown notes in `Articles/Noether charge/`.

Conventions:
- `Confirmed error` means the displayed calculation or derived formula disagrees with an explicit algebraic, component, or convention check.
- `No confirmed calculation error` means the checked formulas in that note did not produce a correction target in this pass.
- `Unresolved` means the note needs an external convention, source comparison, or longer tensor verification before a correction can be justified.

## File-by-file log

### [An example of constrained Hamiltonian systems.md](An%20example%20of%20constrained%20Hamiltonian%20systems.md)

Status: checked by direct Euler-Lagrange expansion in Mathematica for `n=5`, which tests the left endpoint, right endpoint, and interior pattern.

No confirmed calculation error:
- Lines 42-45 and 84-89: the Euler-Lagrange expressions match the variation of `L=\sum_{i=1}^{n-1}\frac12(q_i-\dot q_{i+1})^2`.
- Lines 98-103: the symmetry variation of the Lagrangian cancels term by term.
- Lines 111-117: the Noether charge is proportional to the first-order constraints and vanishes on shell.

### [Regularized action of pure AdS3 gravity.md](Regularized%20action%20of%20pure%20AdS3%20gravity.md)

Status: checked by standard metric-variation identities and a component Mathematica check of the two-dimensional Einstein tensor for a general conformal two-metric.

Confirmed errors:
- Line 44: the logarithmic counterterm variation is missing the induced volume factor in the expression being varied. It should vary `\sqrt{-\gamma}\,\frac12\log\varepsilon\,\tilde R`, not just `\frac12\log\varepsilon\,\tilde R`.
- Line 46: the bulk part of the two-dimensional Ricci-scalar variation has the wrong coefficient. The Einstein-tensor coefficient should be `-\tilde R^{\mu\nu}+\frac12\tilde R\gamma^{\mu\nu}`, which vanishes identically in two dimensions up to the boundary derivative term. The written `-\tilde R^{\mu\nu}+\tilde R\gamma^{\mu\nu}` is not the two-dimensional Einstein tensor.
- Line 76: the corner term measure is written as `\mathrm d\sqrt h`; it should be `\mathrm d x\sqrt h`.
- Line 92: the measure is written as `\mathrm d^{2x}`; it should be `\mathrm d^{2}x`.

No confirmed calculation error:
- Lines 36-38: the bulk Einstein-Hilbert variation with cosmological term has the correct sign when varying with respect to `\delta g_{\mu\nu}`.

Correct under the following precise conditions:
- Lines 74-77 use fixed corner embedding, normalized normals `\tau^\mu\tau_\mu=-1`, `u^\mu u_\mu=1`, and `\tau\cdot u=\sinh\eta`. Under these conventions the displayed boost-angle variation follows from varying `\eta=\mathrm{arcsinh}(\tau\cdot u)`.

### [Noether's trick in a general field theory.md](Noether's%20trick%20in%20a%20general%20field%20theory.md)

Status: checked by integration by parts of the stress-tensor Ward identity and by the metric-volume variation formula.

Confirmed errors:
- Lines 67-70: the conformal transformation boundary term has the wrong sign relative to the diffeomorphism case. The integration by parts of `-\int \varepsilon T^{\mu\nu}\nabla_\mu\xi_\nu` gives the same boundary contribution as lines 36-40, while the trace term remains in the bulk.
- Lines 78-80: `\beta_\xi` omits the conformal trace term. Under the written transformation it should include both `\int_M\varepsilon\,\xi_\nu\nabla_\mu T^{\mu\nu}` and `\int_M\varepsilon\,\sigma_\xi g_{\mu\nu}T^{\mu\nu}`.
- Lines 166-167: the volume-form variation is written with an extra factor of `T^{\mu\nu}\delta g_{\mu\nu}`. The correct local identity is `X_\xi\cdot\delta\varepsilon=\frac12\varepsilon g^{\mu\nu}(X_\xi\cdot\delta g_{\mu\nu})`.

### [Gravitational energy in 3+1D asymptotic flat spacetime.md](Gravitational%20energy%20in%203%2B1D%20asymptotic%20flat%20spacetime.md)

Status: checked for the general ADM mass reduction and the isotropic Schwarzschild self-check.

Confirmed errors:
- Line 29: the expression contains `d\cot`, which is not a valid contraction or differential-form factor. In context it should be the contraction/dot factor multiplying the volume form in the Noether identity.
- Line 50: the first boundary Komar-type term is missing the factor of `G` in `1/(16\pi G)`.

No confirmed calculation error:
- Lines 62-68: the cancellation between the Komar time-translation term and the boundary symplectic-potential term gives the ADM mass integrand.
- Lines 115-118: the isotropic Schwarzschild check gives `M_{ADM}=M`.

Confirmed errors:
- Lines 167-179: the boosted Schwarzschild ADM calculation is unfinished (`???` and `hard to calculate`). The calculation must keep the Lorentz-contracted radius `R^2=\gamma^2(x-vt)^2+y^2+z^2`; treating `\Phi` as an isotropic `1/r` term gives the wrong angular integral.

### [Diffeomorphism of boundary stress tensor.md](Diffeomorphism%20of%20boundary%20stress%20tensor.md)

Status: checked by index-algebra consistency, comparison with the later bracket formula, and cross-check against the independently verified `Brackets.md` central-extension formula.

Confirmed errors:
- Line 12: the second tangential derivative in `X_\xi\cdot\delta\gamma_{\alpha\beta}` uses `\gamma_{\beta\gamma}` twice. The second term should carry the `\alpha` index: `D_\beta(\gamma_{\alpha\gamma}\xi^\gamma)`.
- Line 79: `\delta\mathbf{E}^{u\nu}` is an index typo and should be `\delta\mathbf{E}^{\mu\nu}`.
- Line 91: the boundary-corner contribution in the sum has the wrong sign/notation relative to lines 70 and 80: it should involve the variation of `X_\xi\cdot\mathbf C_\varepsilon`, not `\delta(X_\xi\cdot\mathbf C_\xi)` with a plus sign.
- Line 302: the last surface term is written as `\delta(X_\xi\cdot\delta)`, missing `\theta`.
- Line 311: the comparison formula has malformed `+\delta )\beta`; it should be the variation of `\beta_\xi` on `\Gamma_\varepsilon`.
- Lines 320-322: the comparison equation is missing the `+` before the surface term block, so the displayed equality is syntactically and algebraically incomplete.
- Line 424: `g^{(0)av}` is an index typo; the contraction in that term should use `g^{(0)ab}`.
- Line 427: the term `D_b^{(0)}j^{(0)c}+D^{(0)c}j_b^{(0)}` appears where the surrounding derivation requires derivatives of `\xi`, not derivatives of `j`.
- Line 503: the second term inside the curvature divergence uses `\zeta^{(0)a}D_b^{(0)}\zeta^{(0)b}`; antisymmetry requires `\zeta^{(0)a}D_b^{(0)}\xi^{(0)b}`.
- Line 506: the last term repeats the `\xi` Laplacian factor where the antisymmetric partner should contain the corresponding `\zeta` Laplacian factor.

No confirmed calculation error:
- Lines 478-485: the final symmetric bracket formula matches the independently checked central-extension formula used in `Brackets.md`.

### [Brackets.md](Brackets.md)

Status: checked by direct Mathematica component calculations for the displayed flat and dS2 boundary conformal Killing vectors, their Lie brackets, divergences, curvature data, and central-extension integrals.

Confirmed errors:
- Line 97: the second term in the displayed flat-boundary Lie bracket for `\{C_m,C_n\}` has the wrong mode label. It is written with `C_{m+n}` twice. The second term should be proportional to `C_{m-n}`:
  `-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n}`.
- Line 113: the `\partial_\phi` component of `D_a^{(0)}D_b^{(0)}B_n^b` has the wrong trigonometric factor. Since `D_b^{(0)}B_n^b=2n\cos nt\sin n\phi`, the `\partial_\phi` component is `2n^2\cos nt\cos n\phi`, not `2n^2\cos nt\sin n\phi`.
- Lines 140-141: the Mathematica helper code defines `DDn` and `DDm` using the `C`-mode divergence again. They should use the `D`-mode components.
- Lines 339-340: in the dS2 `\{Q_{A_m},Q_{C_n}\}` calculation, the final central terms have the wrong signs relative to the immediately preceding evaluated curvature and derivative integrals. The corrected central contribution is
  `+\frac{1}{8G}m\sec^2 t(\delta_{m,n}-\delta_{m,-n})+\frac{1}{8G}m(m^2-1)(\delta_{m,n}-\delta_{m,-n})`.
- Lines 389-390: in the dS2 `\{Q_{B_m},Q_{D_n}\}` calculation, the final central terms have the wrong sign and the curvature term has an erroneous `m^3\sec^2 t`. The corrected central contribution is
  `-\frac{1}{8G}m\sec^2 t(\delta_{m,n}-\delta_{m,-n})-\frac{1}{8G}m(m^2-1)(\delta_{m,n}-\delta_{m,-n})`.

No confirmed calculation error:
- The flat-boundary Lie brackets other than the `\{C_m,C_n\}` typo above reduce to zero residuals against the displayed formulas.
- The flat-boundary nonzero central terms in `\{Q_{A_m},Q_{C_n}\}` and `\{Q_{B_m},Q_{D_n}\}` match direct integration.
- The dS2 Christoffel symbols, Ricci tensor, and scalar curvature in lines 282-291 match the component calculation with metric `\sec^2 t(-dt^2+d\phi^2)`.
- The summary block in lines 435-444 already has the corrected signs and powers for the two dS2 central terms.

### [README.md](Articles/Noether%20charge/README.md)

Status: inspected.

No confirmed calculation error:
- The file only contains a one-sentence folder description and no calculation.

### [Covariant phase space.md](Covariant%20phase%20space.md)

Status: checked at the level of CPS identities and Einstein-Hilbert variation conventions.

Confirmed errors:
- Line 55: `{\rm d}\omega=...=-\delta E^a\wedge\delta\phi_a=0` is only true after restricting to the solution space and tangent linearized variations. Off shell the correct statement is `{\rm d}\omega=-\delta E^a\wedge\delta\phi_a`, with `{\rm d}\omega\approx0` on shell.

Confirmed errors:
- Lines 126-141: the pure-AdS3 specialization is unfinished and ends with a bare `\Theta &=`. It should be replaced by the Komar Noether charge form for three-dimensional Einstein-Hilbert gravity with cosmological constant.

### [Two methods to compute the Noether charge.md](Two%20methods%20to%20compute%20the%20Noether%20charge.md)

Status: checked for the scalar example, the Liouville stress-tensor convention, and the configuration-space Lie derivative identities.

Confirmed errors:
- Line 120: the scalar variation term is written as `E_\phi\mathrm{d}\phi`; it should be `E_\phi\delta\phi`.

No confirmed calculation error:
- Lines 229-266: the configuration-space identity `\mathcal L_{X_\xi}\vartheta=\mathcal L_\xi\vartheta+X_{\delta\xi}\cdot\vartheta` checks for scalar, vector, and product one-form examples.

### [Convergence of α and θ.md](Convergence%20of%20%CE%B1%20and%20%CE%B8.md)

Status: checked for cancellation structure, algebraic consistency of the displayed asymptotic expressions, and the final falloff limits.

Confirmed errors:
- Line 90: the term `2z\xi^{(0)}g^{(0)bc}D_b^{(0)}g_{zc}` is missing the free boundary index on `\xi`; it should be `2z\xi^{(0)a}g^{(0)bc}D_b^{(0)}g_{zc}`.
- Line 127: the last displayed integral in the expression for `\alpha_\pm` is missing a leading `+`.
- Line 140: `{\cal O}(-1+s)` is not a valid asymptotic order. In context it should be an order in `z`, namely `{\cal O}(z^{-1+s})`.
- Line 149: the final limit estimates should use `\log\varepsilon`, not `\log z`, after evaluating at `z=\varepsilon`.

No confirmed calculation error:
- After the corrected falloffs, the final estimate in line 149 is convergent: Mathematica gives `\lim_{\varepsilon\to0^+}\varepsilon^r\log\varepsilon=\lim_{\varepsilon\to0^+}\varepsilon^s\log\varepsilon=\lim_{\varepsilon\to0^+}\varepsilon^r=\lim_{\varepsilon\to0^+}\varepsilon^s=0` for `r,s>0`.

### [Noether's trick in Liouville theory.md](Noether%27s%20trick%20in%20Liouville%20theory.md)

Status: checked by tracing the Liouville equation of motion, stress tensor, Ward identity, and conformal variation coefficients.

Confirmed errors:
- Lines 122-125: the potential contribution in `E_\phi X_\xi\cdot\delta\phi` has the wrong sign and power of `\gamma` for the `\xi^{(1)}` term. It should contribute `-\frac{\mu}{2\pi\gamma^2}e^{\gamma\phi}\xi^{(1)}`.
- Lines 132-133: the stress-tensor potential terms use `\gamma` where the stress tensor has `\gamma^2`; the corresponding coefficients should contain `\gamma^2`.
- Line 132: the Weyl part of `X_\xi\cdot\delta g_{\mu\nu}` is written with `g_{\alpha\beta}` inside a `\mu\nu` contraction; it should use `g_{\mu\nu}`.
- Line 234: `\mathbf E_g^{\mu\nu}` is defined with `T^{\alpha\beta}` rather than matching indices `T^{\mu\nu}`.
- Line 279: `X_\xi\cdot\mathbf E_g^{\alpha\beta}` is missing `\delta`; it should be `X_\xi\cdot\delta\mathbf E_g^{\alpha\beta}`.
- Line 290: the variation of the connection term contracts with `\xi_\nu`; it should contract as `-2\delta\Gamma^\rho_{\mu\nu}\xi_\rho`.
- Line 358: `E\xi_\mu\delta\pi` should be `E_\phi\xi_\mu\delta\phi`.
- Line 383: `g^{\gamma\phi}` in the exponential variation is not a tensor factor; it should be `e^{\gamma\phi}`.
- Line 401: the first term in `X_\xi\cdot\delta\Gamma^\rho_{\mu\nu}` is written as `\delta(X_\xi\cdot g_{\sigma\nu})`; it should be `X_\xi\cdot\delta g_{\sigma\nu}`.

No confirmed calculation error:
- The long direct derivation of `X_\xi\cdot\delta T_{\mu\nu}` now closes to the compact transformation law in line 349, after using the two-dimensional curvature identity and the Liouville stress tensor definition.

### [Examples of classical anomaly.md](Examples%20of%20classical%20anomaly.md)

Status: checked against the Liouville equation of motion, CKV identities in two dimensions, and the anomaly term `-\frac{1}{2\pi\gamma^2}R\nabla_\mu\xi^\mu`.

No confirmed calculation error:
- Lines 14-16, 20-28: the Liouville field variation and symplectic potential match the stated conventions.
- Lines 44-57: the two-dimensional CKV identities are consistent with `R_{\mu\nu}=\frac12Rg_{\mu\nu}`.
- Lines 69-85: the anomaly term agrees with the `\xi^{(1)}=\frac12\nabla_\mu\xi^\mu` specialization used in the longer Liouville note.

### [Virasoro algebra.md](Virasoro%20algebra.md)

Status: checked by combining the verified `A/B/C/D` charge algebra from `Brackets.md`.

Confirmed errors:
- Lines 16-17: with the displayed complex definition of `L_n,\bar L_n`, the central term in the Poisson bracket carries a factor of `-i`. The real central term shown in (1.2) is inconsistent with the derivation in lines 45-49.
- Line 26: the first argument contains `Q_{D_n}` where the mode should be `Q_{D_m}`.
- Line 71: the scalar coordinate substitution is malformed; it should read `\bar z=\bar z(\bar w)`.
- Line 173: the last term repeats `\bar L_m`; it should be `\bar L_{-m}`.
- Line 181: the dS2 stress tensor term should keep the `\sec^2 t` factor from line 127.
- Line 186: the barred part is mistakenly written with `L_m,L_{-m}` again; it should use `\bar L_m,\bar L_{-m}`.
- Line 195: the formula for `Q_{D_m}` uses `n` indices. It should use the same mode `m` throughout.
- Lines 283-287: cancellation of the time-dependent dS2 central term requires `c=3/(2G)`, not `c=3/2`, unless the note explicitly sets `G=1`.

No confirmed calculation error:
- The flat-space central coefficient computed from the verified `A/B/C/D` algebra is `-\frac{i}{8G}m^3\delta_{m,-n}` before the zero-mode shift, yielding the standard `-\frac{i}{8G}m(m^2-1)\delta_{m,-n}` after the `1/(16G)` shift.

### [Complex Klein-Gordon scalar.md](Complex%20Klein-Gordon%20scalar.md)

Status: checked for Euler-Lagrange equations.

No confirmed calculation error:
- Lines 11-15: the bulk equations of motion are `(\nabla^2-m^2)\phi=0` and its complex conjugate.

Correct under the following precise condition:
- Lines 14 and 20 use $\tau^\mu$ as the future-directed unit normal to the Cauchy slice. With this convention the boundary term and the displayed symplectic potential have the same sign.

### [Conserved charge.md](Conserved%20charge.md)

Status: checked against the boundary-stress-tensor formula, the earlier convergence calculation, and a formal monomial cancellation check of the final boundary terms.

Confirmed errors:
- Lines 67 and 76: the boundary-stress-tensor term is missing a leading `+` inside the final bracketed expression for `Q_\xi`.
- Lines 99-100 and 110-111: `\xi^{(0)ab}\xi^{(0)c}` is not a valid contraction. In context it should be `g^{(0)ab}\xi^{(0)c}`.
- Lines 91-93 and 107-109: the integrated bulk boundary expression contains an extra `-\frac12\xi^{(0)a}g^{(0)bc}(g_{bc}-z^{-2}g^{(0)}_{bc})` term. Keeping it leaves a residual trace term and prevents cancellation with the Brown-York boundary contribution.
- Lines 147-148, 150, and 154: the radial residual in `{\cal L}_\xi g_{zz}` and `{\cal L}_\xi g_{ab}` is written as `\xi^z-\xi^{(1)z}`. With the boundary condition `\xi^z=z\xi^{(1)z}+O(z^3)`, the residual must be `\xi^z-z\xi^{(1)z}`, and the same residual must appear inside the radial derivative.

No confirmed calculation error:
- After removing the extra trace term, the two final boundary integrands in lines 107-112 cancel term by term as a formal monomial identity.

### [Asymptotic behavior.md](Asymptotic%20behavior.md)

Status: checked for convention consistency, local algebra/index errors, selected internal coefficient identities, flat-boundary component tests of the covariant-derivative negative-power terms, and representative component tests of the corrected `\mathbf E^{\mu\nu}` and `\Theta` signs.

Confirmed errors:
- Line 6: the second definition repeats `\Delta\xi_a`; it should define `\Delta\xi_z`.
- Line 5: `\Delta\xi^z` is defined without the factor of `z` multiplying `\xi^{(1)z}`. This contradicts the boundary condition `\xi^z=z\xi^{(1)z}+O(z^3)` used later in the same file; the residual should be `\Delta\xi^z=\xi^z-z\xi^{(1)z}`.
- Line 14: the cutoff limit should be `\varepsilon\to0`, not `\varepsilon\to\infty`.
- Line 58: the `\mathbf C` formula contains `0` where the subtraction between the two logarithmic counterterm pieces should appear.
- Lines 55-56: the definitions of `\mathbf E^{\mu\nu}` and `\Theta` carry the sign appropriate to the opposite bulk Lagrangian. With the local convention `\mathbf L=-(R+2)\varepsilon/(16\pi G)`, direct component variation gives `R^{\mu\nu}-\frac12Rg^{\mu\nu}-g^{\mu\nu}` and the negative of the displayed Einstein-Hilbert symplectic-potential current.
- Line 37: the Lagrangian expansion should use `2\partial_{z}\Delta g_{zz}`, not `2\partial_{z}g_{zz}`. Otherwise the pure Poincare AdS background with `\Delta g_{zz}=0` incorrectly cancels the leading `4z^{-3}` term.
- Line 79: `g^{{(0)cd}}` is malformed and should be `g^{(0)cd}`.
- Line 74: the `\nabla_z\delta g_{zz}` expansion is missing the variation factor in the `g_{za}` term; it should contain `g_{za}\delta g_{zb}`.
- Line 78: `D_a^{(0)}\delta g_{za}` has the wrong free index for the expansion of `\nabla_a\delta g_{zb}`; it should be `D_a^{(0)}\delta g_{zb}`.
- Line 78: `\Delta g_{bd}^{(0)}` is not defined in the note. In the quadratic deviation term it should be the bulk deviation `\Delta g_{bd}`.
- Line 78: two `z^{-1}` correction terms put the variation on the wrong factor. Direct component expansion gives `-\delta\Delta g_{zz}g^{(0)}_{ab}-\delta g_{ac}^{(0)}g^{(0)cd}\Delta g_{bd}`, not `-\Delta g_{zz}\delta g^{(0)}_{ab}-\delta\Delta g_{ac}g^{(0)cd}\Delta g_{bd}`.
- Line 87: the `\mathbf E^{\mu\nu}\delta g_{\mu\nu}` expansion should contain `\partial_{z}\Delta g_{zz}`, not `\partial_{z}g_{zz}`. The full derivative would leave a spurious pure-AdS `z^{-3}` contribution.
- Line 92: the leading boundary derivative in the `\Theta` expansion should be the boundary connection `D_b^{(0)}`, not an unlabelled `D_b`.
- Line 96: the metric contraction `g^{(0ac)g^{(0)bd}}` is malformed and should be `g^{(0)ac}g^{(0)bd}`.
- Lines 114-115: `\mathrm{dC_i}` should be written as the exterior derivative of the corner form, `\mathrm d\mathbf C_i`.
- Line 134: the displayed quantity should be `\delta\ell_2|_{\Gamma_\varepsilon}`, not `\mathrm d\ell_2|_{\Gamma_\varepsilon}`.
- Line 139: the `z g^{(0)ac}g^{(0)bd}D_a^{(0)}\partial_{z}g_{zb}` contribution in `\mathrm d\Theta` is missing the factor `\delta g_{cd}^{(0)}`.
- Line 107: the first expansion of `\mathbf C_2` is missing the overall `z` multiplying the two `g_{zb}\delta g_{cd}^{(0)}` counterterm pieces; the repeated expansion in line 152 has the correct power.
- Line 128: the `zg^{(0)ac}g^{(0)bd}\partial_{z}\Delta g_{ab}` term in `\delta\ell_1` is contracted with `\delta g_{ab}^{(0)}`, repeating the same indices. It should contract with `\delta g_{cd}^{(0)}`.
- Line 163: the non-logarithmic radial derivative term in `\mathrm d\mathbf C_2` is missing `\delta g_{zb}` and has an extra `z`; differentiating `\log z(-2z g^{(0)ab}\delta g_{zb})` gives `-2g^{(0)ab}\delta g_{zb}` outside the logarithm.
- Line 188: the middle term in the `z\log z` part of `\mu_\xi` is missing the required `g_{zb}` factor and matching contraction shown correctly in line 198.
- Line 197: `X_\xi\cdot\gamma_{cd}` is missing `\delta`; it should be `X_\xi\cdot\delta\gamma_{cd}`.
- Line 204: the leading `g_{zz}` variation should involve `\Delta\xi^z`, not `\Delta\xi^a`.
- Line 206: the coefficient of `g_{ab}^{(0)}\Delta\xi^z` in `X_\xi\cdot\delta g_{ab}` is missing a factor of 2. It comes from `\xi^z\partial_{z}(z^{-2}g_{ab}^{(0)})`, so it should be `-2z^{-3}g_{ab}^{(0)}\Delta\xi^z`.
- Line 213: the `z`-weighted trace-deviation term in `\mu_{\xi1}` is missing `\partial_{z}`; without `-zg^{(0)bc}\partial_{z}\Delta g_{bc}\xi^{(0)a}`, differentiating `\mu_{\xi1}` cannot produce the later `-2\partial_{z}\Delta g_{bc}-z\partial_{z}^2\Delta g_{bc}` radial terms in `\mathrm d\mu_{\xi1}`.
- Line 215: `D_c^{(0)a}` is malformed; the corrected pattern is shown in line 265 as `D_c^{(0)}\xi^{(0)a}`.
- Line 221: the leading `4z^{-2}` term in `\xi\cdot\mathbf L` is missing the factor `\xi^{(1)z}`.
- Line 223: `\xi^{(1)a}` should be `\xi^{(0)a}` in the boundary-vector contribution.
- Line 247: `x^{(1)z}` should be `\xi^{(1)z}`.
- Line 246: `X_\xi\cdot\delta\ell_1` substitutes a diffeomorphism variation, so the term should be `-4\Delta g_{zz}\xi^{(1)z}`, not `-4\delta g_{zz}\xi^{(1)z}`.
- Line 248: the radial derivative in `X_\xi\cdot\delta\ell_1` should act on the deviation `\Delta g_{ab}`, not on the full singular metric `g_{ab}`.
- Line 253: `\Delta_{zz}` is missing the metric-field symbol and should be `\Delta g_{zz}`.
- Line 253: after correcting `\mu_{\xi1}` to contain `-zg^{(0)bc}\partial_{z}\Delta g_{bc}\xi^{(0)a}`, the two corresponding horizontal-derivative terms in `\mathrm d\mu_{\xi1}` must also carry `\partial_{z}\Delta g_{bc}`.
- Line 260: `D_c^{(0)a}` is malformed; it should be `D_c^{(0)}\xi^{(0)a}`.
- Line 261: the non-logarithmic radial derivative of `\log z[-2z g^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}]` in `\mathrm d\mu_{\xi2}` has the wrong sign and power. It should be `-2g^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}`.

### [Diffeomorphism of some quantities.md](Diffeomorphism%20of%20some%20quantities.md)

Status: checked against tensor Lie derivative identities and Cartan's formula.

Confirmed errors:
- Line 11: the Lie derivative of the Levi-Civita volume-form components is not just `\xi^\lambda\nabla_\lambda\varepsilon_{\mu_0\cdots}`. The full covariant Lie derivative includes the index terms, equivalently `\mathcal L_\xi\varepsilon=(\nabla_\lambda\xi^\lambda)\varepsilon`.
- Line 88: `xo^\rho` is a typo for a factor of `\xi`, and the final derivative term should differentiate the same vector field index rather than `\xi^\rho`.
- Line 172: the left-hand side has `\varepsilon_{\mu_1\cdots\mu_{d-1}}` while the right-hand side has the full `d`-form; the index sets must match.
- Line 227: the final differential-form factor contains `\mathrm d x^{\mu)k}`; it should be `\mathrm d x^{\mu_k}`.
- Line 238: the first term in Cartan's formula drops the intermediate wedge factors and should contain `\mathrm d x^{\mu_1}\wedge\dots\wedge\mathrm d x^{\mu_k}`.

No confirmed calculation error:
- Lines 138-150: the Ricci tensor and scalar Lie-derivative contractions agree with the standard tensor transformation once the Riemann result is assumed.

### [Boundary stress tensor.md](Boundary%20stress%20tensor.md)

Status: checked against the definition of the Brown-York tensor and the charge formula in line 6.

Confirmed errors:
- Line 20: the boundary variation term should use the boundary volume form on `\Gamma`, not `\varepsilon_\Sigma`.
- Lines 68, 69, and 78: the same boundary volume-form error reappears in the `\Gamma` integrals; these factors should be `\varepsilon_\Gamma`.
- Line 112: the final charge has the wrong sign relative to line 6 and the definition `T_{\mu\nu}=\frac1{4G}(K_{\mu\nu}-K\gamma_{\mu\nu}+\gamma_{\mu\nu})`. It should be `-\frac{1}{2\pi}\int_{\partial\Sigma_+}\tau_\alpha\xi_\beta T^{\alpha\beta}\varepsilon_{\partial\Sigma_+}` with the local conventions used in this folder.

Correct under the following precise condition:
- Lines 78-80 keep the general Cauchy-slice boundary-counterterm contribution. The Brown-York charge in line 112 uses the convention `X_\xi\cdot\delta\ell|_{\Sigma_\pm}=0`.

### [Gauss, Codazzi relations and Ricci equation.md](Gauss%2C%20Codazzi%20relations%20and%20Ricci%20equation.md)

Status: checked for free-index consistency and standard projected-curvature identities.

Confirmed errors:
- Line 53: the free index is inconsistent. The left-hand side should carry `\alpha`, giving `\gamma^\mu_\alpha n^\nu R_{\mu\nu}=D_\beta K^\beta{}_\alpha-D_\alpha K`.
- Line 101: `n_\mu n_\mu` should be `n_\mu n_\nu`.
- Line 117: the projected variation of `K_{\mu\nu}` contains a repeated projector index `\gamma^\sigma_\nu\gamma^\lambda_\nu`; the second projector index must be distinct.
- Line 118: the last lapse-gradient term repeats `n^\mu` in a contraction where the metric variation has indices `\mu\nu`; it should use the complementary normal contraction.

Correct under the following precise conditions:
- Lines 116-121 use a hypersurface-adapted decomposition with acceleration `a_\alpha=D_\alpha\log N` and the normal variation `\delta n_\mu=\frac12 n_\mu n^\rho n^\sigma\delta g_{\rho\sigma}`. Under these conventions the corrected projected variation follows from the standard metric variation of the Levi-Civita connection.

### [Poisson bracket of conserved charges.md](Poisson%20bracket%20of%20conserved%20charges.md)

Status: checked against the verified bracket formula from `Diffeomorphism of boundary stress tensor.md` and `Brackets.md`.

Confirmed errors:
- Line 4: the Brown-York charge contraction uses `\gamma_{\mu\rho}\xi^\rho`; it should contract the second tensor index as `\gamma_{\nu\rho}\xi^\rho`.
- Line 19: the two terms in `X_\xi\cdot\delta\gamma_{\alpha\beta}` are identical. The second one should be `D_\beta(\gamma_{\alpha\mu}\xi^\mu)`.
- Line 25: the second term in the boundary vector bracket has malformed derivative indices. It should be `-\zeta^{(0)b}D_b^{(0)}\xi^{(0)a}`.
- Line 35: `(K_{\alpha\mu}-K_{\alpha\mu}\gamma_{\alpha\mu}+\gamma_{\alpha\mu})` is not a valid contraction; the trace term should be `K\gamma_{\alpha\mu}`.
- Line 43: `\xi^{(0)}f` should be `\xi^{(0)f}`.
- Lines 44-67 are an unfinished central-extension manipulation; the incomplete argument should be replaced by the already verified symmetric central term.

### [asymptotic symmetry vector.md](asymptotic%20symmetry%20vector.md)

Status: checked by solving the leading `\mathcal L_\xi g_{ab}=O(z^0)` condition.

No confirmed calculation error:
- Lines 31-42 correctly give `\xi^z=\frac z2D_a^{(0)}\xi^{(0)a}+O(z^3)`, `\xi^a=\xi^{(0)a}+O(z^2)`, and the boundary CKV equation.

Confirmed non-calculation typo:
- Line 12 refers to preserving `(1.2)` although the asymptotic metric behavior is equation `(1.1)`.
