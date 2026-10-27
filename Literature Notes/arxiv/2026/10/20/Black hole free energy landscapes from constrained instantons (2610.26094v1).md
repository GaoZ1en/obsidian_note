---
paper id: 2610.26094v1
title: Black hole free energy landscapes from constrained instantons
authors:
  - Shan-Ping Wu
  - Jia-Zhou Liu
  - Yu-Xiao Liu
  - Shao-Wen Wei
publication date: 2026-10-19T09:56:07Z
abstract: |-
  A partial Legendre transform at a finite auxiliary hypersurface defines constrained gravitational sectors with matched local energy and momentum responses. Regular stationary caps and exteriors can then have different lapse and shift sources. Their leading saddle action is the physical Hamiltonian boundary term minus horizon entropy. The construction extends to algebraic curvature theories through auxiliary fields and complete canonical interface data, with examples in Einstein, Gauss-Bonnet and new massive gravity.
comments: "59 pages, 4 figures"
url: https://arxiv.org/abs/2610.26094v1
summary: "Complete local partial-Neumann data provide a concrete regional sewing example; the stationary exponent is checked in explicit families, while quantum measures and contours remain assumptions."
tags: []
---

# Complete partial-Neumann sectors and regular horizon caps

The reusable result is a boundary polarization and a constrained variational problem:

$$
\mathcal C_{\mathcal T}=(\mathcal E,\mathcal J_A;\sigma_{AB}),\qquad
I_{\rm constr}[\mathcal C_{\mathcal T}]
=\beta(E_{\mathcal B}-\Omega_{\mathcal B}^I J_{\mathcal B,I})-S.
$$

The first equation specifies local fields on a finite interface, not only integrated mass and angular momentum. The second follows for the selected regular, stationary, nonextremal cap/exterior pairs. It is a classical saddle action. The equality of the full Dirichlet and partial-Neumann functional integrals additionally assumes compatible measures, gauge treatment and complex contours.

**Source-derived:** technical reconstruction below follows the complete [v1 source](https://arxiv.org/abs/2610.26094v1), including both appendices. **Checked:** the independent computations are listed after the reconstruction; these do not certify a gravitational path integral.

## Section tree and how to read this long paper

| Source | Content and role |
|---|---|
| §1 | Motivation: thermodynamic landscapes, constrained saddles, and the distinction from conical metrics. |
| §2.1 | Double foliation, normals, metrics and orientation conventions. |
| §2.2 | Dirichlet ADM action, Brown–York variation and additive sewing. |
| §2.3 | Partial Legendre transform and radial additivity with discontinuous sources. |
| §3.1 | Boundary transforms relating the two representations. |
| §3.2 | Delta-functional selection of fixed interface sectors. |
| §3.3 | Independent labels, multipliers and lapse/shift jumps. |
| §3.4 | Semiclassical sector weights and extremization over interface data. |
| §4.1 | Cap obtained by constant time rescaling and axial twist; local response matching. |
| §4.2 | Physical boundary Hamiltonian and regular-bolt entropy. |
| §4.3 | Restriction to a collective family and rank conditions for equilibrium. |
| §5.1 | Schwarzschild: energy-response coordinate, instability and ensemble divergence. |
| §5.2 | Kerr: two collective coordinates, complex shift, rotating-bath limitation. |
| §5.3 | Schwarzschild–dS and Kerr–dS: two caps and entropy-sum weights. |
| §6.1 | Auxiliary \(f(\mathrm{Riemann})\) theory and independent canonical boundary variables. |
| §6.2 | Complete partial-Neumann data, including \(Z_{AB}\), and their sewing. |
| §6.3 | Generalized charges, Wald entropy and the same stationary action. |
| §6.4 | Five-dimensional EGB: projections, energy, entropy and landscape. |
| §6.5 | NMG/BTZ: auxiliary reduction, charge normalization, critical coupling and cone comparison. |
| §7 | Limits: measures, fluctuations, stability, complex contours and possible dynamics. |
| A.1 | Integrated completeness assumption for boundary transforms. |
| A.2 | Full variation with independent response labels. |
| A.3 | Auxiliary-field multipliers and complete interface variation. |
| B.1 | Temporal canonical momenta and constraints; reduced Einstein momentum. |
| B.2 | Radial responses and the difference between canonical and on-shell covariant variation. |
| B.3 | Stationary matching under constant Killing reparametrizations. |
| B.4 | EGB finite-cutoff subtraction and shrinking-tube evaluation. |
| B.5 | NMG projections, interface responses and asymptotic charges. |

**Essential route:** §§2–4 with A.2, followed by §§6.1–6.3 and B.2. This gives the actual interface construction. **Technical reference:** B.1 and B.3 justify the extra canonical data and stationary matching; §§6.4–6.5 with B.4–B.5 test normalizations. **Background/comparison:** §1, the discussion in §7, and the thermodynamic interpretations in §5. Every section contributes to the map above, but the thermodynamic examples should not replace reading the variation.

## Global notation, orientations and regulators

| Symbol | Definition or convention |
|---|---|
| \(D=d+2\) | Spacetime dimension; \(G=\hbar=c=k_B=1\). Signature is Euclidean, with complex rotating saddles allowed. |
| \(\Sigma_\tau,h_{ab},u\) | Time slice, its metric, and unit time normal. Lowercase \(a,b\) are spatial indices. |
| \(\mathcal T_r,\gamma_{ij},n\) | Finite radial interface, its induced metric, and common radial unit normal. |
| \(\mathcal S_\tau^{(r)},\sigma_{AB}\) | Closed codimension-two cross-section; \(A,B\) are its tangent indices. |
| \(N,\mathcal N^a\) | Temporal lapse and shift; \(\mathcal N^A\) is the interface tangential shift. |
| \(P,\mathcal P^A\) | Radial lapse and shift in the spatial metric. |
| \(K_{ab},k_{AB},\mathcal K_{ij}\) | Extrinsic curvature of \(\Sigma_\tau\), of \(\mathcal S\subset\Sigma\), and of \(\mathcal T\subset\mathcal M\), respectively. |
| \([X]=X_2-X_1\) | Both quantities pulled back using the common normal. The outward normals of the two regions are \(+n,-n\). |
| \(\mathcal E,\mathcal J_A\) | Weight-one densities \(\sqrt\sigma\,\varepsilon,\sqrt\sigma\,j_A\); unrenormalized at the auxiliary interface. |
| \(E_{\mathcal B},J_{\mathcal B,I}\) | Renormalized Hamiltonian charges at the physical boundary, with its specified time and angular frame. |
| \(\alpha,\nu^I\) | Constant cap time rescaling and axial twist. Do not confuse \(\alpha\) with curvature couplings. |
| \(\varrho,\phi,\Psi,\Pi\) | Independent curvature auxiliary fields, temporal projection, and its conjugate momentum. |
| \(q_{\mathsf a},Z_{AB}\) | Remaining configuration data and additional independent canonical interface combination. |

The foliation is orthogonal, \(u\cdot n=0\), and cross-sections have no boundary. In adapted coordinates,

$$
ds^2=N^2d\tau^2+P^2d\rho^2+
\sigma_{AB}(dx^A+\mathcal N^A d\tau+\mathcal P^A d\rho)
(dx^B+\mathcal N^B d\tau+\mathcal P^B d\rho).
$$

Keep three surfaces distinct: the auxiliary cut \(r=r_T\), an outer physical regulator \(r=R>r_T\), and a bolt tube of radius \(\epsilon>0\). Interface data are evaluated at finite \(r_T\). Outer subtraction/counterterms are applied at finite \(R\), retaining the lapse weight, before \(R\to\infty\). The cap limit \(\epsilon\to0^+\) is taken with \(\alpha\beta=\beta_H\). For the separate NMG cone comparison, the smoothing scale \(a_{\rm reg}>0\) is fixed during the deficit expansion; its removal is another limit.

## Cluster I: the Dirichlet action and partial Legendre transform — §2

The Euclidean metric action and temporal momentum are

$$
I_D=-\frac1{16\pi}\int_{\mathcal M}\sqrt g(R-2\Lambda)
-\frac1{8\pi}\int_{\partial\mathcal M}\sqrt\gamma\,\mathcal K,
\qquad
p^{ab}=\frac{\sqrt h}{16\pi}\pi^{ab},\quad
\pi^{ab}=K^{ab}-Kh^{ab}.
$$

Here \(K_{ab}=(\dot h_{ab}-D_a\mathcal N_b-D_b\mathcal N_a)/(2N)\). In the canonical variational problem \(h,p\) are independent; this relation follows from a Hamilton equation. The action is

$$
I_D=\frac1{16\pi}\int d\tau\,d^{d+1}x\sqrt h
(\pi^{ab}\dot h_{ab}-N\mathcal H-\mathcal N_a\mathcal H^a)
+B_N+B_{\mathcal N}+I_{\rm bolt},
$$

$$
\mathcal H=R[h]-2\Lambda+\pi^{ab}\pi_{ab}-\frac{\pi^2}{d},
\quad \mathcal H^a=-2D_b\pi^{ab},
\quad
B_N=-\frac1{8\pi}\int_{\mathcal T}\sqrt\sigma Nk,
\quad
B_{\mathcal N}=-\frac1{8\pi}\int_{\mathcal T}\sqrt\sigma\mathcal N_a n_b\pi^{ab}.
$$

The bolt term compensates for the artificial GHY term generated when a smooth cap is punctured. It is not an extra physical boundary action.

The Brown–York tensor in these signs is

$$
\tau^{ij}=\frac{\mathcal K^{ij}-\mathcal K\gamma^{ij}}{8\pi},
\quad
\varepsilon=u_i u_j\tau^{ij}=-\frac{k}{8\pi},
\quad
j_A=-\sigma_{Ai}u_j\tau^{ij}
=\frac{\sigma_A{}^a n_b\pi_a{}^b}{8\pi}.
$$

On the inner region, after the bulk equations,

$$
\delta I_{D,1}|_{\mathcal T}
=\int_{\mathcal T}
\left(\mathcal E\,\delta N-\mathcal J_A\,\delta\mathcal N^A
+\frac{\sqrt\sigma N}{2}s^{AB}\delta\sigma_{AB}\right).
$$

The outer-region interface variation has the opposite orientation. In the Dirichlet representation, continuous \(N,\mathcal N,\sigma\) make the action additive; stationarity of their common values imposes continuity of their conjugate responses. In the partial-Neumann representation define

$$
\mathcal P_s=\int_{\mathcal T}(N_s\mathcal E-\mathcal N_s^A\mathcal J_A),
\quad I_{{\rm pN},1}=I_{D,1}-\mathcal P_1,
\quad I_{{\rm pN},2}=I_{D,2}+\mathcal P_2.
$$

Then

$$
\delta I_{{\rm pN},1}|_{\mathcal T}
=\int_{\mathcal T}
\left(-N\,\delta\mathcal E+\mathcal N^A\delta\mathcal J_A
+\frac{\sqrt\sigma N}{2}s^{AB}\delta\sigma_{AB}\right).
$$

Fixed \((\mathcal E,\mathcal J_A;\sigma_{AB})\) thus allow source jumps. Densitization matters: \(\delta\mathcal E\) includes \(\varepsilon\,\delta\sqrt\sigma\). Replacing it by \(\sqrt\sigma\,\delta\varepsilon\) would change the stress coefficient.

The additivity argument also uses radial derivative structure, not just a vanishing variation. Schematically,

$$
\mathcal E\,\partial_\rho N-\mathcal J_A\partial_\rho\mathcal N^A
=-N\partial_\rho\mathcal E+\mathcal N^A\partial_\rho\mathcal J_A
+\partial_\rho(N\mathcal E-\mathcal N^A\mathcal J_A).
$$

After the Legendre transform, the derivatives act on matched data. This defines an additive canonical action on piecewise regular histories with discontinuous sources. It is not a prescription for blindly inserting a discontinuous metric into distributional curvature invariants.

## Cluster II: independent labels, constrained variations and sewing — §3, Appendix A

At fixed common \(\sigma\), the two boundary transforms have opposite exponents:

$$
Z_{{\rm pN},1}[\xi;\sigma]
=\int_{\Gamma_1}D\mu_1(q_1;\xi,\sigma)e^{+\mathcal P_1}Z_{D,1}[q_1;\sigma],
\quad
Z_{{\rm pN},2}[\xi;\sigma]
=\int_{\Gamma_2}D\mu_2(q_2;\xi,\sigma)e^{-\mathcal P_2}Z_{D,2}[q_2;\sigma],
$$

where \(q_s=(N_s,\mathcal N_s^A)\) and \(\xi=(\mathcal E,\mathcal J_A)\). Appendix A.1 assumes an integrated completeness relation: integrating these kernels over the response labels reproduces the common-source Dirichlet sewing integral for suitable test functionals. The measures can depend on \(\xi\), so they must remain inside that integral. This is a stated duality prescription, not a computed Fourier measure for gravity.

With this prescription,

$$
Z=\int D\mathcal C\,Z_{{\rm pN},1}[\mathcal C]Z_{{\rm pN},2}[\mathcal C],
\qquad
Z_{\rm constr}[\overline{\mathcal C}]
=\int D\mathcal C\,\delta[\mathcal C-\overline{\mathcal C}]
Z_{{\rm pN},1}[\mathcal C]Z_{{\rm pN},2}[\mathcal C].
$$

To establish a saddle, keep transform labels independent of geometric responses:

$$
\widetilde I_\eta=I_{D,1}+I_{D,2}-\mathcal P_1+\mathcal P_2
+\langle\eta,\mathcal C-\overline{\mathcal C}\rangle.
$$

Vary \(N_1,\mathcal N_1,N_2,\mathcal N_2\) first. Their coefficients are

$$
(\mathcal E_1-\mathcal E),\quad
-(\mathcal J_{1A}-\mathcal J_A),\quad
-(\mathcal E_2-\mathcal E),\quad
(\mathcal J_{2A}-\mathcal J_A).
$$

They identify the labels with both actual responses. With
\(\mathscr S_s^{AB}=\sqrt\sigma N_s s_s^{AB}/2\), the remaining terms are

$$
\delta\widetilde I_\eta
=\int_{\mathcal T}\left[
([N]+\eta_{\mathcal E})\delta\mathcal E
+(-[\mathcal N^A]+\eta_{\mathcal J}^A)\delta\mathcal J_A
+(\eta_\sigma^{AB}-[\mathscr S^{AB}])\delta\sigma_{AB}
\right]
+\langle\delta\eta,\mathcal C-\overline{\mathcal C}\rangle.
$$

Consequently,

$$
\eta_{\mathcal E}=-[N],\quad
\eta_{\mathcal J}^A=[\mathcal N^A],\quad
\eta_\sigma^{AB}=\frac{\sqrt\sigma}{2}[Ns^{AB}].
$$

These multipliers support the jumps. Setting the constraint term to zero before varying loses these equations. Gauge identities or redundant data require restriction to the admissible tangent space; multiplier uniqueness is only claimed on an independent regular set of data.

After imposing the constraints, \(I_{\rm constr}=I_{{\rm pN},1}+I_{{\rm pN},2}\). The envelope variation is

$$
\delta I_{\rm constr}
=-\langle\eta,\delta\overline{\mathcal C}\rangle
=\int_{\mathcal T}\left(
[N]\delta\overline{\mathcal E}
-[\mathcal N^A]\delta\overline{\mathcal J}_A
-\frac{\sqrt{\overline\sigma}}2[Ns^{AB}]\delta\overline\sigma_{AB}
\right).
$$

Integrating and extremizing over all independent data sets these conjugate mismatches to zero. Extremizing a small collective family imposes only their tangent projections. This distinction is central to using the paper for regional sewing.

## Cluster III: stationary cap construction and thermodynamics — §4

Take a stationary axisymmetric solution and construct the cap by

$$
\tau_H=\alpha\tau,\qquad x_H^A=x^A+\nu^A\tau,
\qquad
N_1=\alpha N_2,\quad
\mathcal N_1^A=\alpha\mathcal N_2^A+\nu^A,\quad h_1=h_2.
$$

The spatial equality holds in a neighborhood, including derivatives. For fixed physical identification
\((\tau,\phi^I)\sim(\tau+\beta,\phi^I-i\beta\Omega_{\mathcal B}^I)\),
cap regularity requires

$$
\alpha=\frac{\beta_H}{\beta}=\frac{T}{T_H},
\qquad \nu^I=i(\Omega_{\mathcal B}^I-\alpha\Omega_H^I).
$$

For stationary \(h\) and a Killing twist, \(\mathcal L_\nu h=0\), so

$$
K^{(1)}_{ab}
=-\frac{\mathcal L_{\alpha\mathcal N+\nu}h_{ab}}{2\alpha N}
=-\frac{\mathcal L_{\mathcal N}h_{ab}}{2N}
=K^{(2)}_{ab}.
$$

Thus the full local \(\mathcal E,\mathcal J,\sigma\) match, while \(N,\mathcal N\) need not. Without stationarity or a Killing twist this inference fails.

The canonical bulk integrand vanishes on each stationary constrained solution. At the interface the partial Legendre terms remove the Brown–York pairing. The physical exterior boundary supplies

$$
I_{2,\rm os}=\beta H_{\mathcal B},
\qquad H_{\mathcal B}=E_{\mathcal B}-\Omega_{\mathcal B}^I J_{\mathcal B,I}.
$$

For a regular cap with proper radial coordinate \(\rho\), \(N_1=\alpha\kappa\rho+O(\rho^3)\). The shrinking-tube ADM pairing tends to zero; the compensating GHY term is
\(-\alpha\beta\kappa A_H/(8\pi)=-A_H/4\), because \(\alpha\beta\kappa=2\pi\). There is no extra \(\alpha\) multiplying entropy.

The real Lorentzian angular momentum is \(J_I=-i\int_{\mathcal S}\mathcal J_A\varphi_I^A\). At finite \(R\), \(E_{\mathcal B}\) is obtained from the lapse-weighted renormalized response, not the unweighted Brown–York energy.

For an injectively labelled branch \(\lambda\mapsto\mathcal C(\lambda)\),

$$
\mathcal F_{\rm gen}(\lambda;T,\Omega_{\mathcal B})
=E_{\mathcal B}(\lambda)-\Omega_{\mathcal B}^I J_I(\lambda)-TS(\lambda),
\qquad
Z_{\rm red}\simeq\int d\lambda\,\mu(\lambda)e^{-\beta\mathcal F_{\rm gen}(\lambda)}.
$$

At fixed couplings and boundary sources, the first law implies

$$
d\mathcal F_{\rm gen}=(T_H-T)dS+(\Omega_H^I-\Omega_{\mathcal B}^I)dJ_I.
$$

Only when the map \(\lambda\mapsto(S,J_I)\) has full row rank do interior extrema imply all potential matches. This does not prove stability against omitted modes, identify \(\mu\), or identify \(\langle\mathcal F_{\rm gen}\rangle\) with \(-T\log Z_{\rm red}\).

## Cluster IV: Einstein examples — §5

### Schwarzschild: the sector coordinate is a local response

For \(f(r)=1-r_h/r\), fixed \(r_T>r_h>0\) gives

$$
k_T=\frac2{r_T}\sqrt{1-\frac{r_h}{r_T}},
\quad
r_h=r_T\left[1-\left(\frac{k_T r_T}{2}\right)^2\right],
\quad
\mathcal J_A=0,\quad \sigma_{AB}=r_T^2\Omega_{AB}.
$$

Thus \(0<k_T<2/r_T\) labels the full spherical sector. The Jacobian is
\(|dr_h/dk_T|=k_T r_T^3/2\), and belongs in the induced measure. With the asymptotically flat subtraction,

$$
E_{\mathcal B}=r_h/2,\quad S=\pi r_h^2,\quad T_H=(4\pi r_h)^{-1},
\quad
\mathcal F_{\rm gen}=r_h/2-\pi T r_h^2.
$$

Its derivative is \((1-T/T_H)/2\); its second derivative is \(-2\pi T\). The smooth stationary black hole is a maximum in this reduced family, with \(\mathcal F_{\rm eq}=M/2\). At fixed \(r_T\), the retained integral has \(r_h<r_T\). Extending the family to unbounded \(r_h\) requires moving the auxiliary cut and gives the usual exponentially growing asymptotically flat canonical weight unless the measure compensates it. A finite physical cavity changes the ensemble.

### Kerr: rank and the complex shift

On \(r_+>|a|\),

$$
M=\frac{r_+^2+a^2}{2r_+},\quad J=aM,\quad
S=\pi(r_+^2+a^2),\quad
T_H=\frac{r_+^2-a^2}{4\pi r_+(r_+^2+a^2)},\quad
\Omega_H=\frac{a}{r_+^2+a^2}.
$$

The cross-section metric varies with the parameters, so fixing only integrated \(M,J\) would omit data. On the injective local-data branch,

$$
\mathcal F_{\rm gen}=M-\Omega J-TS,\qquad
\det\frac{\partial(S,J)}{\partial(r_+,a)}
=\frac{\pi(r_+^2+a^2)^2}{r_+^2}\ne0.
$$

Interior extrema therefore give \(T=T_H,\Omega=\Omega_H\), and \(\mathcal F_{\rm eq}=M/2\). The fixed-sector action still does not define a global asymptotically flat rotating heat bath: \(\partial_t+\Omega\partial_\phi\) becomes spacelike at sufficiently large cylindrical radius when \(\Omega\ne0\).

### de Sitter: two regular caps

Schwarzschild–dS has \(f=1-2M/r-r^2/\ell^2\), \(0<M<\ell/(3\sqrt3)\), and
\(r_b<r_T<r_c\). Set \(T_i=|f'(r_i)|/(4\pi)\), use the cosmological cap period, and choose \(\alpha=\beta_b/\beta_c\). Matched \(k_T\) fixes \(M\); both caps are regular:

$$
I_{\rm constr}^{\rm SdS}=-(S_b+S_c),\qquad
\frac{Z_{\rm constr}^{\rm SdS}}{Z_{\rm dS}}
\simeq e^{S_b+S_c-\pi\ell^2}.
$$

For Kerr–dS,
\(\Delta_r=(r^2+a^2)(1-r^2/\ell^2)-2mr\);
the relative twist is
\(\nu^\phi=i(\Omega_c-\alpha\Omega_b)\).
Complete stationary metric and auxiliary pullbacks give matching local data and again
\(I_{\rm constr}=-(S_b+S_c)\). There is no physical asymptotic boundary and no \(\beta E_{\mathcal B}\) term. A common reference period can normalize a landscape across sectors but is not an imposed bath temperature. The phrase “AdS radius” in the parameter-map paragraph of source §5.3 is a textual slip: \(\ell\) here is the de Sitter radius.

## Cluster V: auxiliary curvature theory and complete canonical data — §§6.1–6.3, A.3, B.1–B.3

### Auxiliary action and its canonical one-form

The scope is local parity-even \(f(R_{\mu\nu\rho\sigma})\) with no covariant derivatives of curvature:

$$
I^f=\frac12\int\sqrt g\,[f(\varrho)+\phi^{\mu\nu\rho\sigma}
(R_{\mu\nu\rho\sigma}-\varrho_{\mu\nu\rho\sigma})]
+2\int_{\partial\mathcal M}\sqrt\gamma\,\mathcal K_{ij}\Phi_{(n)}^{ij},
$$

$$
\Phi_{(n)}^{ij}
=\gamma^i{}_\mu\gamma^j{}_\nu\phi^{\mu\alpha\nu\beta}n_\alpha n_\beta,
\qquad
\varrho=R,\quad \phi=\frac{\partial f}{\partial\varrho}.
$$

The covariant Dirichlet problem fixes \(\gamma,\Phi_{(n)}\). Einstein gravity corresponds to \(f=-(R-2\Lambda)/(8\pi)\).
The temporal projections are

$$
\Phi_{abcd}=h_a{}^\mu h_b{}^\nu h_c{}^\rho h_d{}^\sigma\phi_{\mu\nu\rho\sigma},
\quad
\Phi_{abc}=h_a{}^\mu h_b{}^\nu h_c{}^\rho u^\sigma\phi_{\mu\nu\rho\sigma},
\quad
\Psi_{ab}=2h_a{}^\mu h_b{}^\nu u^\rho u^\sigma\phi_{\mu\rho\nu\sigma}.
$$

Hatted \(\widehat\varrho_{abcd},\widehat\varrho_{abc},\widehat\varrho_{ab}\) denote the analogous projections of \(\varrho\), without the factor 2 in the last one.
The canonical action contains \(p^{ab}\dot h_{ab}+\Pi_{ab}\dot\Psi^{ab}\). Source B.1 gives

$$
\frac{p^{ab}}{\sqrt h}
=\Phi^{acdb}K_{cd}
-\frac2N D_c(N\Phi^{c(ab)})
+\Psi^{c(a}K^{b)}{}_c
+\frac12K^{cd}\Psi_{cd}h^{ab}
+\frac12K\Psi^{ab}
+\frac1{2N}\mathcal L_{Nu}\Psi^{ab},
\qquad \Pi_{ab}=\sqrt h K_{ab}.
$$

Unlike \(\mathcal H\) in Einstein §2, \(\mathcal H^f,\mathcal H_a^f\) are already densities:

$$
\begin{aligned}
\mathcal H^f={}&\sqrt h\left(D_aD_b\Psi^{ab}-\frac12f+\Psi^{ab}\widehat\varrho_{ab}\right)
+\frac1{\sqrt h}\left(2p^{ab}\Pi_{ab}-\Psi^{ab}\Pi_{ac}\Pi_b{}^c
-\Pi\Psi^{ab}\Pi_{ab}\right)\\
&-\frac{\sqrt h}2\Phi^{abcd}
\left(\frac2h\Pi_{ad}\Pi_{bc}+R_{abcd}[h]-\widehat\varrho_{abcd}\right)
+2\sqrt h\Phi^{abc}\left(\widehat\varrho_{abc}-2D_a\frac{\Pi_{bc}}{\sqrt h}\right),\\
\mathcal H_a^f={}&2\sqrt hD_b\left(\frac{\Pi_{ac}}{\sqrt h}\Psi^{cb}\right)
-2\sqrt h h_{ac}D_b\left(\frac{p^{cb}}{\sqrt h}\right)
+\Pi_{bc}D_a\Psi^{bc}.
\end{aligned}
$$

The Einstein limit illustrates why the symplectic one-form must be pulled back before comparing momenta:

$$
\Psi^{ab}=-\frac{h^{ab}}{8\pi},\quad
p^{ab}=-\frac{\sqrt h}{16\pi}(K^{ab}+Kh^{ab}),\quad
p^{ab}\delta h_{ab}+\Pi_{ab}\delta\Psi^{ab}
=p_{\rm EH}^{ab}\delta h_{ab},
\quad
p_{\rm EH}^{ab}=p^{ab}+\frac{\Pi^{ab}}{8\pi}.
$$

This gives \(p_{\rm EH}^{ab}=\sqrt h(K^{ab}-Kh^{ab})/(16\pi)\), as required.

### The extra datum \(Z_{AB}\) and radial responses

Define

$$
q_{\mathsf a}=\{\sigma_{AB},\theta_{AB}^{\parallel},\chi_A^\parallel,\Psi_\perp\},
\quad
\theta_{AB}^{\parallel}=\sigma_A{}^a\sigma_B{}^b\Phi_{acbd}n^c n^d,
\quad \chi_A^\parallel=\sigma_A{}^a\Phi_{abc}n^b n^c,
\quad \Psi_\perp=\Psi_{ab}n^a n^b.
$$

Also
\(\chi_2^{\parallel AB}=\sigma^A{}_a\sigma^B{}_c\Phi^{abc}n_b\),
\(\Psi_\parallel^A=\sigma^A{}_a\Psi^{ab}n_b\),
\(\Psi_\parallel^{AB}=\sigma^A{}_a\sigma^B{}_b\Psi^{ab}\),
and \(\Pi_A^\parallel=\sigma_A{}^a\Pi_{ab}n^b\).
The radial acceleration is \(a_A=-\mathscr D_A\ln P\), and \(D_n=n^aD_a\).
Before using Hamilton equations,

$$
Z_{AB}=N\frac{\Pi_{AB}^{\parallel}}{\sqrt h}
+\mathscr D_{(A}\mathcal N_{B)}.
$$

The exact boundary form quoted in §6.1 is

$$
\delta I_D^f|_{\mathcal T}
=\int_{\mathcal T}
\left(\mathcal E^f\delta N-\mathcal J_A^f\delta\mathcal N^A
+\mathcal P_f^{\mathsf a}\delta q_{\mathsf a}
-4\sqrt\sigma\,\chi_2^{\parallel(AB)}\delta Z_{AB}\right).
$$

Its source responses are

$$
\begin{aligned}
\frac{\mathcal E^f}{\sqrt\sigma}={}&
2\mathscr D_A\Psi_\parallel^A-k_{AB}\Psi_\parallel^{AB}
+k\Psi_\perp-2a_A\Psi_\parallel^A+D_n\Psi_\perp
+2k^{AB}\theta_{AB}^{\parallel}\\
&+4\chi_A^\parallel\frac{\Pi_\parallel^A}{\sqrt h}
+4\chi_2^{\parallel(AB)}\frac{\Pi_{AB}^{\parallel}}{\sqrt h},\\
\frac{\mathcal J_A^f}{\sqrt\sigma}={}&
-2\frac{\Pi_{Ac}}{\sqrt h}\Psi^{cb}n_b
+2\sigma_{Aa}\frac{p^{ab}}{\sqrt h}n_b
+4\sigma_{AC}\mathscr D_B\chi_2^{\parallel(BC)}.
\end{aligned}
$$

The ADM boundary action splits as

$$
B_N^f+B_{\mathcal N}^f
=\int(N\mathcal E^f-\mathcal N^A\mathcal J_A^f)+B_{\rm aux},
\quad
B_{\rm aux}=-4\int\sqrt\sigma\,\chi_2^{\parallel(AB)}Z_{AB}.
$$

This last equality uses tangential integration by parts on a closed cross-section. The partial Legendre transform therefore retains \(B_{\rm aux}\), and its complete data are

$$
\boxed{\mathcal C_{\rm pN}^f=(\mathcal E^f,\mathcal J_A^f;q_{\mathsf a};Z_{AB}).}
$$

All four groups must match. Appendix A.3 gives the remaining multipliers:
\(\eta_q^{\mathsf a}=[\mathcal P_f^{\mathsf a}]\),
\(\eta_Z^{AB}=-4\sqrt\sigma[\chi_2^{\parallel(AB)}]\),
together with the same lapse/shift relations as before.

### Why the covariant on-shell variation has fewer independent entries

Hamilton's first equation implies \(Z_{AB}=\tfrac12\dot\sigma_{AB}\). Only for variations among solutions can one substitute
\(\delta Z_{AB}=\tfrac12\partial_\tau\delta\sigma_{AB}\).
Periodic integration by parts then changes the metric response by
\(2\partial_\tau(\sqrt\sigma\chi_2^{\parallel(AB)})\). The covariant boundary variation becomes

$$
\begin{aligned}
\delta I^f_{\rm os}|_{\mathcal T}
=\int\bigg[
&\mathcal E^f\delta N-\mathcal J_A^f\delta\mathcal N^A
+\frac{N\sqrt\sigma}{2}s_f^{AB}\delta\sigma_{AB}
+2N\sqrt\sigma k^{AB}\delta\theta_{AB}^{\parallel}\\
&+4N\sqrt\sigma\frac{\Pi_\parallel^A}{\sqrt h}\delta\chi_A^\parallel
+\sqrt\sigma(D_nN)\delta\Psi_\perp\bigg].
\end{aligned}
$$

This does not license deletion of \(Z\) in the independent canonical variation. Terms \(Z\,\delta\chi_2\) are already contained in the transformed source responses; \(\chi_2\) need not be fixed as a separate datum.

### Stationary auxiliary sewing and Wald entropy

Appendix B.3 pulls back the *complete* auxiliary solution by the same map \(F\) as the metric. Although untransported normals differ, \(F_*u_1=u_2\). Spatial fields and their normal derivatives then agree in a neighborhood. The factor \(\alpha\) cancels in \(N_s^{-1}D(N_s\Phi)\); stationarity and \(\mathcal L_\nu\Psi=0\) cancel it in \(N_s^{-1}\mathcal L_{N_su_s}\Psi\). Thus both canonical momenta and both source responses agree.

Finally,

$$
Z^{(1)}_{AB}=\alpha Z^{(2)}_{AB}
+\frac12(\mathcal L_\nu\sigma)_{AB}=0.
$$

Consequently \(B_{\rm aux}=0\) on these stationary saddles. The regular-tube contribution is the Wald entropy with Euclidean binormal normalization \(\epsilon_{\mu\nu}\epsilon^{\mu\nu}=2\):

$$
S_f=-\pi\int_{\mathcal H}\sqrt\sigma\,
\frac{\partial f}{\partial R_{\mu\nu\rho\sigma}}
\epsilon_{\mu\nu}\epsilon_{\rho\sigma},
\qquad
I_{\rm constr}^f=\beta(E_{\mathcal B}^f-\Omega_{\mathcal B}^I J_{\mathcal B,I}^f)-S_f.
$$

The same rank condition for equilibrium applies, now holding the independent asymptotic auxiliary sources and couplings fixed.

## Cluster VI: five-dimensional EGB — §6.4, Appendix B.4

Write \(a=\alpha_{\rm GB}\) in this subsection. The action uses
\(f_{\rm GB}=-(R+12/L^2+a\mathcal G)/(8\pi)\),
\(\mathcal G=R_{\mu\nu\rho\sigma}^2-4R_{\mu\nu}^2+R^2\).
On the Einstein branch \(0<8a/L^2<1\),

$$
F(r)=1+\frac{r^2}{4a}\left(1-\sqrt{1-\frac{8a}{L^2}+\frac{8a\mu}{r^4}}\right),
\quad
\ell^{-2}=\frac{1-\Delta}{4a},\quad \Delta=\sqrt{1-8a/L^2},
$$

$$
\mu=r_h^2+2a+\frac{r_h^4}{L^2},
\qquad T_H=\frac{r_h(1+2r_h^2/L^2)}{2\pi(r_h^2+4a)}.
$$

With \(s(r)=\sqrt{1-8a/L^2+8a\mu/r^4}\), define

$$
U=3s-2,\qquad
V=\frac{3-24a/L^2+8a\mu/r^4}{s}-2.
$$

On both sides,

$$
\sigma_{AB}=r_T^2\Omega_{AB},\quad
\theta_{AB}^{\parallel}=-\frac{V}{16\pi}\sigma_{AB},
\quad \Psi_\perp=-\frac{U}{8\pi},\quad
\chi_A^\parallel=\mathcal J_A=Z_{AB}=0,
\quad
\mathcal E=-\frac{3\sqrt\sigma\sqrt F}{8\pi r_T}V.
$$

In deriving the energy response, differentiate \(U(r)\) before setting \(r=r_T\):
\(3U/r+U'=3V/r\).
At fixed cut and couplings, \(U\) already determines \(\mu\) on this branch. Equality of only \(\sigma\) would not do this.

The finite-cutoff quantities, with unit \(S^3\) volume \(2\pi^2\), are

$$
E_{\rm BY}(R)=-\frac{3\pi}{4}R^2\sqrt{F(R)}V(R),\quad
F_0=1+R^2/\ell^2,\quad V_0=1-12a/\ell^2,
$$

$$
H_R^{\rm ren}=\sqrt{F(R)}\,[E_{\rm BY}(R)-E_{{\rm BY},0}(R)],
\qquad
\lim_{R\to\infty}H_R^{\rm ren}=\frac{3\pi\mu}{8}.
$$

The reference lapse is matched at the same finite \(R\), assigning zero energy to \(\mu=0\). The cancellation uses both the \(F-F_0\) and \(V-V_0\) corrections. Dropping the latter gives an incorrect mass.

At \(r_h+\epsilon\), the ADM pairing is \(O(\epsilon)\). The restored-tube GHY contribution has the limit

$$
-\frac{\alpha\beta\pi}{4}
\left[\frac{r_h^3F'(r_h)}2U(r_h)+3r_h^2F(r_h)V(r_h)\right]
=-\frac{\pi^2}{2}(r_h^3+12ar_h).
$$

Here \(F(r_h)=0\), \(U(r_h)=1+12a/r_h^2\) and
\(\alpha\beta F'(r_h)=4\pi\). Hence

$$
\mathcal F_{\rm gen}^{\rm GB}
=\frac{3\pi}{8}\left(r_h^2+2a+\frac{r_h^4}{L^2}\right)
-\frac{\pi^2T}{2}(r_h^3+12ar_h),
\quad
\partial_{r_h}\mathcal F_{\rm gen}^{\rm GB}
=(T_H-T)\frac{3\pi^2}{2}(r_h^2+4a).
$$

This is cut independent at the classical level. The Einstein limit is continuous as \(a\to0\).

## Cluster VII: NMG/BTZ and the cone limitation — §6.5, Appendix B.5

The NMG conventions are

$$
f_{\rm NMG}=-\frac1{8\pi}\left[R-2\Lambda+
\alpha_{\rm NMG}\left(R_{\mu\nu}R^{\mu\nu}-\frac38R^2\right)\right],
\quad
\Lambda=-\frac1{\ell^2}+\frac{\alpha_{\rm NMG}}{4\ell^4}.
$$

The locally AdS branch has \(R_{\mu\nu}=-2g_{\mu\nu}/\ell^2\). For real \(m,j\),

$$
ds_L^2=-Fdt^2+\frac{dr^2}{F}+r^2\left(d\phi-\frac{j}{2r^2}dt\right)^2,
\quad
F=-m+\frac{r^2}{\ell^2}+\frac{j^2}{4r^2}
=\frac{(r^2-r_+^2)(r^2-r_-^2)}{\ell^2r^2}.
$$

Use signed \(r_-\), \(r_+>|r_-|\), and \(\phi\sim\phi+2\pi\):

$$
m=\frac{r_+^2+r_-^2}{\ell^2},\quad j=\frac{2r_+r_-}{\ell},\quad
T_H=\frac{r_+^2-r_-^2}{2\pi\ell^2r_+},\quad
\Omega_H=\frac{r_-}{\ell r_+}.
$$

The continuation \(t=-i\tau\) leaves \(j\) real and gives \(\mathcal N^\phi=ij/(2r^2)\). Differentiating the curvature polynomial and restricting to this branch gives

$$
\phi^{\mu\nu\rho\sigma}
=-\frac{\Xi}{8\pi}g^{\mu[\rho}g^{\sigma]\nu},\quad
\Xi=1+\frac{\alpha_{\rm NMG}}{2\ell^2},
\quad
\Psi_{ab}=-\frac{\Xi}{8\pi}h_{ab},\quad
\theta_{\phi\phi}^{\parallel}=-\frac{\Xi}{16\pi}\sigma_{\phi\phi}.
$$

The mixed projections vanish. With \(k=\sqrt F/r\) and
\(K_{r\phi}=ij/(2r\sqrt F)\), the complete data include

$$
\mathcal E=-\frac{\Xi}{8\pi}\sqrt{F(r_T)},\quad
\mathcal J_\phi=\frac{i\Xi j}{16\pi},\quad
\sigma_{\phi\phi}=r_T^2,\quad
\Psi_\perp=-\frac{\Xi}{8\pi},\quad Z_{\phi\phi}=0.
$$

They determine \(m,j\) when \(\Xi\ne0\). The vanishing of \(\chi_2\) and the stationary condition \(Z=0\) are two distinct reasons why \(B_{\rm aux}\) vanishes on this branch.

At finite \(R\), the volume counterterm
\(I_{\rm ct}(R)=\Xi(8\pi\ell)^{-1}\int d\tau d\phi\,N R\) gives

$$
\mathcal E_{R,\rm ren}=\frac{\Xi}{8\pi}\left(\frac R\ell-\sqrt{F(R)}\right),
\quad
E_{\mathcal B}=\lim_{R\to\infty}\frac{\Xi\sqrt{F(R)}}4
\left(\frac R\ell-\sqrt{F(R)}\right)=\frac{\Xi m}{8},
\quad
J_{\mathcal B}=-i(2\pi)\mathcal J_\phi=\frac{\Xi j}{8}.
$$

In the periodic frame the shift is \(ij/(2R^2)-i\Omega_{\mathcal B}\), so
\(H_R^{\rm ren}=N_RE_{{\rm BY},\rm ren}+
(j/(2R^2)-\Omega_{\mathcal B})J\), tending to \(E-\Omega_{\mathcal B}J\).
The entropy and landscape are

$$
S=\frac{\pi\Xi r_+}{2},\qquad
\mathcal F_{\rm gen}=\frac{\Xi}{8}
(m-\Omega_{\mathcal B}j-4\pi T r_+),
\qquad
\det\frac{\partial(S,J)}{\partial(r_+,r_-)}
=\frac{\pi\Xi^2r_+}{8\ell}.
$$

For \(\Xi\ne0\) the rank criterion works away from extremality. At \(\Xi=0\), the classical landscape vanishes and its extrema impose no matching of \(T,\Omega\); this is a genuine degenerate case of the argument.

For the cone comparison, fix a BTZ background and \(\Omega_{\mathcal B}=\Omega_H\), let
\(\delta=1-\beta/\beta_H\), and hold a smooth regulator \(a_{\rm reg}>0\) fixed:

$$
I_{\rm cone}(a_{\rm reg})
=\beta(E-\Omega_HJ)-S+O_{a_{\rm reg}}(\delta^2).
$$

The agreement is through linear order in \(\delta\). Higher coefficients can depend on smoothing and diverge as \(a_{\rm reg}\to0\). No equality of a finite-deficit cone functional with the constrained construction, and no brick-wall/cone determinant correspondence, follows.

## Equation ledger and dependency map

| Object | Source location | Depends on |
|---|---|---|
| ADM action and momenta | (2.11)–(2.15), PDF p.10 | Euclidean signs, orthogonal foliation, puncture compensation |
| Einstein boundary polarization | §2.2–§2.3 | Densitized Brown–York responses and fixed cross-section geometry |
| Independent-label saddle equations | (3.13)–(3.19), (A.2)–(A.4), PDF pp.18,46 | Vary labels, sources and multipliers before restricting the solution |
| Regular cap/exterior pair | §4.1 | Common stationary solution, constant rescaling, Killing twist |
| \(\beta H_{\mathcal B}-S\) | §4.2 | Vanishing canonical bulk, interface transform, regulated bolt and physical boundary |
| Equilibrium criterion | §4.3 | First law plus full rank in entropy/angular-momentum directions |
| Higher-curvature boundary form | (6.8)–(6.13), PDF p.33 | Independent \((h,p;\Psi,\Pi)\), complete \(q,Z\) |
| Auxiliary constraints and Einstein reduction | B.1, especially (B.8)–(B.9) | Pullback of the canonical one-form |
| Generalized \(\mathcal E^f,\mathcal J^f\) | (B.12)–(B.15), PDF pp.49–50 | Normal derivatives, cross-section integrations by parts |
| EGB mass and entropy | (B.20)–(B.23), PDF pp.52–53 | Finite-\(R\) matched reference and \(\epsilon\to0\) regular cap |
| NMG charge normalization | B.5 | Real \(j\), complex Euclidean shift, lapse weighting before \(R\to\infty\) |

The main chain is: boundary variation selects polarization → radial structure establishes additive actions → assumed boundary-transform completeness identifies representations → independent constrained variation supports source jumps → regular cap construction matches complete data → boundary evaluation gives the classical exponent → first law and rank control equilibrium. The examples check different links in this chain; they do not construct the assumed quantum measure.

## Translation into regional CPS and spectral questions

The directly reusable regional boundary one-form is

$$
\vartheta_{\mathcal T}^{D}
=\mathcal E\,\delta N-\mathcal J_A\delta\mathcal N^A
+\mathscr S^{AB}\delta\sigma_{AB},\qquad
\vartheta_{\mathcal T}^{\rm pN}
=\vartheta_{\mathcal T}^{D}
-\delta(N\mathcal E-\mathcal N^A\mathcal J_A).
$$

With a fixed interface and unchanged corner convention, their field-space exterior derivatives agree. The transformation changes which boundary subspace is held fixed. For higher curvature, retain the additional
\(-4\sqrt\sigma\chi_2^{(AB)}\delta Z_{AB}\) term until passing to the on-shell covariant description.

For an action/CPS-first regional construction, this paper supplies a concrete test: independently vary two regions, identify complete response data, and read the residual conjugate mismatch from the envelope variation. It does not by itself supply a factorization of the physical gauge-invariant Hilbert space, an edge-mode measure, or an algebraic identification of regional observables.

For AdS-Rindler thermodynamics, its \(\beta H-S\) is a gravitational classical saddle exponent. It is not a scalar one-particle trace or a Fock determinant. A useful comparison would keep a finite cut, identical source normalization and identical counterterms on both constructions before comparing observables. The NMG example explicitly warns against inferring finite-regulator equivalence from linear-deficit agreement.

## Independent verification and exact boundaries

All algebraic tests were run after reconstructing §§1–7 and A–B. Official TeX supplied notation; PDF pages 10, 18, 33, 46, 50 and 53 were rendered and visually checked for ADM signs, multiplier signs, \(Z\), the canonical/on-shell distinction, and EGB subtraction/bolt factors. Sources and rendered pages remained outside the vault.

| Status | Computation and result | Assumptions / boundary |
|---|---|---|
| Checked | Mathematica differentiated the independent-label augmented boundary polynomial: all seven coefficient residuals vanish. | Pointwise labels; tensor indices are spectators. This checks signs, not the bulk Einstein variation. |
| Checked | Explicit product rule gives the pN variation and densitized response terms; commuting field-space variations leave \(\delta\vartheta\) unchanged under the boundary Legendre term. | Fixed interface; no cross-section endpoints. |
| Checked | Stationary pullback gives equal \(K\) and \(Z_1=\alpha Z_2+\tfrac12\mathcal L_\nu\sigma\); regular-tube factor becomes \(-A/4\). | Constant \(\alpha,\nu\), Killing symmetry, nonextremal smooth bolt. |
| Checked | Mathematica: Schwarzschild landscape derivative and \(k_T\)-to-\(r_h\) Jacobian; Kerr two first-law components, Jacobian and equilibrium free energy. All residuals zero. | \(r_T>r_h>0\); Kerr \(r_+>|a|\). |
| Checked | xAct abstract contractions: auxiliary Einstein momentum and pullback to \(p_{\rm EH}\) give zero residuals. | The canonical formula in B.1 is the starting expression; not a fresh derivation of the full ADM decomposition. |
| Checked | xAct-hosted component calculation: Euclidean BTZ Christoffels and Ricci tensor give \(R_{\mu\nu}+2g_{\mu\nu}/\ell^2=0\); spatial ADM calculation gives \(K_{r\phi}=ij/(2r\sqrt F)\), \(K_{\phi\phi}=0\). | Exterior \(F>0\), real \(m,j\), complex metric allowed. |
| Checked | Component contraction of the five-dimensional static spherical curvature gives all five diagonal EGB equations zero and reproduces \(\Psi_\perp,\theta_{AB}\) and Wald density. | Uses warped-product sectional curvatures \(-F''/2,-F'/(2r),(1-F)/r^2\); spherical symmetry removes off-diagonal equations. |
| Checked | Mathematica: EGB horizon equation, temperature, \(3U/r+U'=3V/r\), first law, horizon \(U\), Einstein limit and finite-cutoff mass limit. All residuals zero. | \(a>0,\ 0<8a/L^2<1\), positive radii; matched reference at finite \(R\). |
| Checked | Mathematica: NMG \(\Xi\), both BTZ first-law components, both parameter Jacobians, lapse-weighted energy limit and \(-i\) angular continuation. All residuals zero. | Fixed \(\ell,\alpha_{\rm NMG}\); rank inference additionally needs \(\Xi\ne0\) and nonextremality. |
| Source-derived | Full general \(f(\mathrm{Riemann})\) independent-canonical radial decomposition and its off-shell additivity statement. | Explicit coefficients of the general metric response \(\mathcal P_f^\sigma\) are not printed; this note reproduces the response formulas and on-shell conversion, not a new all-component derivation. |
| Not independently verified | Boundary-transform measures, gauge/ghost/zero-mode factors, admissible complex contours, full fluctuation spectrum and induced collective measure. | These ingredients are not constructed in the paper; the factorization is conditional on their compatibility. |
| Not independently verified | Nonlinear finite-deficit NMG cone action and regulator removal. | No smoothing family is specified from which to compute the quadratic coefficient. Linear-deficit comparison is the source claim. |

**Verified:** targeted algebra, tensor contractions, explicit EGB/BTZ checks and regulator-dependent charge limits above.

**Assumptions:** closed sections, fixed embeddings, orthogonal foliation, prescribed physical sources, complete canonical interface data, selected nonextremal stationary branches, and the source's boundary-transform duality prescription.

**Not verified:** a general quantum sewing theorem, independent all-component higher-curvature boundary variation, gauge-reduced measure, fluctuation stability, finite-deficit cone equality, or any scalar brick-wall/cone equivalence.

No irreparable computation failure was encountered. An initial xAct test used a faulty symbolic index-permutation substitution; replacing it with the explicit \(\Phi^{acdb}K_{cd}\) contraction removed the spurious residual. That implementation error is not evidence against the source. The source's “AdS radius” wording in its Kerr–dS paragraph is recorded above as a textual inconsistency, with no effect on the formulas.
