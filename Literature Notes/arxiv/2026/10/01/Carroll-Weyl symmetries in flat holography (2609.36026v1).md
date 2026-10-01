---
paper id: 2609.36026v1
title: Carroll-Weyl symmetries in flat holography
authors:
  - Arnaud Delfante
  - Chrysoula Markou
publication date: 2026-09-28T18:01
abstract: |-
  The degenerate geometry of a null boundary admits an enlarged local conformal freedom: in two dimensions, a Carrollian coframe allows two independent Weyl rescalings, one modulating and the other preserving the boundary volume form. We investigate whether both transformations can be realized as charged asymptotic symmetries in three-dimensional flat holography. We show that Einstein gravity canonically realizes the volume-modulating Carroll-Weyl transformation, together with local Carroll boosts, but does not admit the volume-preserving rescaling as an additional independent asymptotic symmetry. We trace this obstruction both back to the conformal completion of null infinity and to the absence of two independent commuting semisimple generators in the Poincar\'e algebra. Conformal gravity overcomes this obstruction through bulk dilatations, which supply the missing algebraic direction. We construct an asymptotically flat phase space of conformal gravity in which both types of Carroll-Weyl transformations and local Carroll boosts admit finite, integrable, and generically nonvanishing canonical charges, and derive their centrally extended algebra. Finally, we show that these central extensions arise from boundary anomalies through symplectic descent, yielding a gravitational prediction for Carroll-Weyl anomalies in flat holography.
comments: "44 pages"
url: https://arxiv.org/abs/2609.36026v1
summary: "Two Weyl currents, their Einstein obstruction, and the corner prescription controlling their charges."
tags: []
---

# Two rescalings and two symplectic theories

**Correct under the stated boundary prescription:** both displayed connections are flat, their angular residual transformations preserve the ansatz, and their integrated surface charges agree with the Chern–Simons pairings. The second conformal-gravity current is independent at nonzero spatial momentum. This is a minimal null-infinity phase space; changing its corner potential can make the extra currents trivial.

The immediate regional-CPS use is to distinguish an intrinsic frame transformation, an allowed residual gauge transformation and a nonzero Hamiltonian generator. These are separate questions.

## Source tree and reading guide

The official 44-page PDF has no technical appendices. Read §§2–3 for geometry, §4.6 for the obstruction and §§5.2–5.5 for the realization; retain §4 as the comparison theory.

| Sections | Definitions, purpose and dependency |
| --- | --- |
| §1 | Motivation from null boundaries and tensionless strings; canonical realization is the target |
| §2 | Degenerate metric, clock, dual frame, generalized inverse and volume |
| §§3.1–3.4 | Diffeomorphisms, independent Weyl scalings, boosts and combined action |
| §§4.1–4.2 | ISO(1,2) action, invariant form, Bondi solution and finite dressing |
| §§4.3–4.4 | Compensated residual labels, charges and Einstein central extensions |
| §4.5 | Boundary action, anomaly, temporal cuts and charge-removing corner improvement |
| §4.6 | Conformal-completion and centralizer obstructions, with invertible-triad scope |
| §§5.1–5.2 | SO(3,2) trace, dilatation generator and minimal flat conformal sector |
| §§5.3–5.4 | Presymplectic kernel, two Weyl currents and relative levels |
| §5.5 | Conformal boundary potential, anomaly descent and improvement |
| §6 | Larger K-sector, boundary theory, edge extension and quantum matching remain open |

## Carroll data and intrinsic transformations

On future null infinity with coordinates $(u,\phi)$ and $\phi\sim\phi+2\pi$,

$$q_{ab}=n_an_b,\quad k(\ell)=n(v)=1,\quad n(\ell)=k(v)=0,\quad q^{ab}=v^av^b,\quad\mathrm{vol}=k\wedge n.$$

The generalized inverse depends on the clock. A boost sends $k\mapsto k+\beta n$ and $v\mapsto v-\beta\ell$, preserving $q,\ell$ and volume. Including the two Weyl parameters,

$$\delta k=(\sigma-\chi)k+\beta n,\quad\delta n=(\sigma+\chi)n,\quad\delta\ell=(-\sigma+\chi)\ell,$$

$$\delta v=(-\sigma-\chi)v-\beta\ell,\qquad\delta\mathrm{vol}=2\sigma\mathrm{vol}.$$

Thus $\sigma$ modulates volume; $\chi$ preserves it. Neither kinematical freedom automatically supplies a bulk gauge generator. Primes below are $\partial_\phi$, dots are $\partial_u$. $H$ is a radial dressing field, distinct from the charge $\mathrm H_\varepsilon$.

## Einstein action and the full dressed connection

For $n,m=-1,0,1$,

$$[J_n,J_m]=(n-m)J_{n+m},\quad[J_n,P_m]=(n-m)P_{n+m},\quad[P_n,P_m]=0.$$

The action and invariant form are

$$S=\frac\kappa{4\pi}\int\operatorname{Tr}(A\wedge dA+\tfrac23A^3),\quad\kappa=\frac1{4G},\quad\operatorname{Tr}(J_nP_m)=\eta_{nm},$$

where $\eta_{1,-1}=-2$, $\eta_{00}=1$, $JJ=PP=0$. Equations of motion impose $F=0$. In radial gauge $A=b^{-1}(a+d)b$, $b=\exp(rP_{-1}/2)$,

$$a_\phi=J_1+MJ_{-1}+NP_{-1},\quad a_u=P_1+MP_{-1},\quad M=M(\phi),\quad N=L(\phi)+uM'.$$

Dress with $g=e^{-\dot BJ_{-1}}e^{2BP_0-B'P_{-1}}e^{-HP_{-1}/2}e^{\varphi J_0}$ and set $\alpha=g^{-1}(a+d)g$. With

$$\widehat M=M+\dot B^2-\dot B',\quad\widehat N=N-H'/2-B''+(H+2B')\dot B,$$

one obtains

$$\begin{aligned}
\alpha_\phi={}&e^\varphi(J_1+2BP_1)+(\varphi'-2\dot B)J_0-HP_0\\
&+e^{-\varphi}[\widehat M J_{-1}+(\widehat N-2B\widehat M)P_{-1}],\\
\alpha_u={}&e^\varphi P_1+\dot\varphi J_0+e^{-\varphi}[(\widehat M-\dot H/2+2B\ddot B)P_{-1}-\ddot B J_{-1}].
\end{aligned}$$

The leading metric is $-2dr\,k+r^2n^2+O(r)$ with $k=e^\varphi(du+2B\,d\phi)$, $n=e^\varphi d\phi$. $B,H,\varphi$ are arbitrary smooth boundary functions; $M_u=0$, $N_u=M'$.

## Residual parameters, integrability and the Einstein cocycle

The source holds the compensated labels $(Y(\phi),T(\phi),\sigma,\beta,h)$ fixed. They act as

$$\delta M=YM'+2Y'M+Y'''/2,\quad\delta L=YL'+2Y'L+TM'+2T'M+T'''/2,$$

$$\delta\varphi=\sigma,\qquad\delta B=\beta/2,\qquad\delta H=h.$$

To reproduce the full gauge parameter, define $f=T+uY'$ and

$$\Xi=Y''/2+Y'\dot B+Y(M+\dot B^2)-\dot\beta/2,$$

$$\Pi=YN+Mf+f''/2+HY'/2-h/2+Y'B'-\beta'/2+[f'+Y(H+2B')]\dot B+f\dot B^2.$$

In the ordered J basis its coefficients are $(e^\varphi Y,\sigma-Y'-2Y\dot B,e^{-\varphi}\Xi)$; in the P basis they are $(e^\varphi(f+2BY),\beta-f'-Y(H+2B')-2f\dot B,e^{-\varphi}(\Pi-2B\Xi))$.

Field dependence requires the modified bracket $[\varepsilon_1,\varepsilon_2]_\star=[\varepsilon_1,\varepsilon_2]+\delta_1\varepsilon_2-\delta_2\varepsilon_1$. The $(Y,T)$ labels form BMS$_3$ and the other compensated labels commute. They are not bare geometric labels: $\sigma=\hat\sigma+f\dot\varphi+Y\varphi'+Y'$ and $\beta=\hat\beta+f'+2f\dot B+2YB'$. Bare diffeomorphisms would act on the frame; the compensated representatives preserve it.

With source orientation,

$$\delta\mathrm H_\varepsilon=-\frac\kappa{2\pi}\oint\operatorname{Tr}(\varepsilon\delta\alpha_\phi)d\phi,$$

$$\mathrm H_E=\frac\kappa\pi\oint[TM+YL+\beta\dot B-B\dot\beta+(\sigma H-h\varphi)/2]d\phi.$$

Thus $H$ supplies the conjugate direction needed for a nontrivial Weyl charge. With $\{\mathrm H_1,\mathrm H_2\}=\delta_2\mathrm H_1$, Einstein BMS has $c_1=0$, $c_2=12\kappa$. The additional cocycle is

$$K_E=-\frac\kappa{2\pi}\oint(\sigma_2h_1-\sigma_1h_2+\beta_2\dot\beta_1-\beta_1\dot\beta_2)d\phi.$$

It gives a Weyl/radial Heisenberg pairing and a boost self-extension. These are charge algebras on fixed-$u$ cuts; arbitrary time-dependent labels do not automatically give conserved charges.

## The obstruction and its precise scope

For a fixed physical metric, $\bar g=\Omega^2g$ and $\ell=\bar g^{-1}d\Omega|_{\mathscr I}$. Replacing $\Omega$ by $e^\sigma\Omega$ rescales $q$ by $e^{2\sigma}$ and $\ell$ by $e^{-\sigma}$. A pure $\chi$ scaling needs $e^{2\chi}$ and $e^{\chi}$, respectively; these agree only for $\chi=0$.

In ISO(1,2),

$$\operatorname{Cent}(J_0)=\operatorname{span}\{J_0,P_0\},\qquad(\operatorname{ad}_{P_0})^2=0.$$

On the leading $(P_1,J_1)$ sector $J_0$ gives a common scale, while $P_0$ is a triangular boost. No second independent opposite-weight diagonal generator is available in this standard description with an invertible triad. This excludes an additional **internal residual** scaling compatible with the leading frame, modulo boundary diffeomorphisms. It does not classify all kinematical directions in broader Einstein solution spaces.

## The conformal extension changes the symplectic structure

Conformal gravity has Cotton equation $C_{\mu\nu}=0$ and $A=\omega^nJ_n+e^nP_n+f^nK_n+dD$. Its level is dimensionless and independent. Its invariant form is

$$\operatorname{Tr}(J_nJ_m)=\eta_{nm},\quad\operatorname{Tr}(P_nK_m)=-2\eta_{nm},\quad\operatorname{Tr}(DD)=1,\quad\operatorname{Tr}(J_nP_m)=0.$$

Therefore embedding an Einstein solution does not preserve the symplectic form. The required new brackets are $[P_n,D]=P_n$, $[K_n,D]=-K_n$; the full algebra is in (5.11). The minimal ansatz retains the closed J/P/D sector with $f^n=0$; it is not invariant under arbitrary K transformations.

Define $T_+=J_0$, $T_-=2D-J_0$. The physical diagonal parameter is $\sigma T_+-\chi T_-$. A bulk Weyl rescaling $g\mapsto e^{2\rho}g$ and completion change $\Omega\mapsto e^\tau\Omega$ reproduce both boundary weights for $\rho=-2\chi$, $\tau=\sigma+3\chi$.

Replace the dressing's last factor by $e^{\varphi T_+-\varpi T_-}$. Equation (5.22) is reproduced by multiplying the Einstein coefficients in the ordered basis $(J_1,J_0,J_{-1},P_1,P_0,P_{-1},D)$ by

$$(e^\varpi,1,e^{-\varpi},e^{-\varpi},e^{-2\varpi},e^{-3\varpi},1)$$

and adding $(d\varpi)J_0-2(d\varpi)D$. The residual parameter receives the same weights plus $\chi J_0-2\chi D$. The shifted aspects are unchanged. Thus

$$k=e^{\varphi-\varpi}(du+2B\,d\phi),\quad n=e^{\varphi+\varpi}d\phi,\quad\mathrm{vol}=e^{2\varphi}du\wedge d\phi.$$

Now $\delta\varpi=\chi$, and $\hat\beta=e^{-2\varpi}\beta$ when $Y=T=0$. Let $\Phi=\varphi+\varpi$, $\Upsilon=\sigma+\chi$. The charge becomes

$$\mathrm H_C=-\frac\kappa{2\pi}\oint[-2YM+\dot\beta\Phi+\Upsilon(\Phi'-2\dot B)+4\chi\varpi']d\phi.$$

$T$ and $h$ lie in the presymplectic kernel; boosts with $\dot\beta=0$ also have zero charge. The Weyl charges differ by $-2\kappa\oint\chi\varpi'/\pi$ for equal smearings. Recovering charged translations requires more boundary data, naturally in the K sector paired with P.

## Relative current levels and the corner prescription

The Gram matrix of $(T_+,-T_-)$ is

$$K_{\rm CW}=\begin{pmatrix}1&1\\1&5\end{pmatrix},\qquad\det K_{\rm CW}=4.$$

In basis $(J_0,-2D)$ it becomes diag$(1,4)$. This proves independence of the two current species; spatially constant modes can still lie in the derivative cocycle's kernel. The diffeomorphism charge sector is one Virasoro algebra with $c_1=12\kappa$; supertranslation generators vanish, stronger than merely $c_2=0$.

For $F_{pq}=e^{i(p-q)\phi+i(p+q)u}$ with $p-q\in\mathbb Z$, the current brackets are

$$i\{\mathcal W^I_{pq},\mathcal W^J_{rs}\}=-\kappa K_{IJ}(p-q)e^{2i(q+s)u}\delta_{p+r,q+s},$$

$$i\{\mathcal W^I_{pq},\mathcal B_{rs}\}=-\kappa(r+s)e^{2i(q+s)u}\delta_{p+r,q+s},\qquad\{\mathcal B,\mathcal B\}=0.$$

The smeared cocycle, $\lambda^I=(\sigma,\chi)$, is

$$K_C=-\frac\kappa{4\pi}\oint[\lambda_1^IK_{IJ}\partial_\phi\lambda_2^J-(1\leftrightarrow2)]d\phi+\frac\kappa{2\pi}\oint(\Upsilon_1\dot\beta_2-\Upsilon_2\dot\beta_1)d\phi.$$

Add $S^{(0)}_\partial=\kappa\int\operatorname{Tr}(\alpha_u\alpha_\phi)/(4\pi)$ to the action. In Einstein gravity also remove exact terms with $\kappa\int(M+\dot B^2)/\pi$. The remaining boundary one-forms are

$$\Theta_E=\frac\kappa{2\pi}(\dot H\delta\varphi-\dot\varphi\delta H+4\ddot B\delta B),$$

$$\Theta_C=\frac\kappa{2\pi}(2\ddot B\delta\Phi-2\dot\Phi\delta\dot B-\dot\Phi'\delta\Phi-4\dot\varpi'\delta\varpi).$$

Their field-space curvature is nonzero for unrestricted variations. Evaluation on a residual transformation gives the classical boundary anomaly. Antisymmetrizing its second variation gives $-\int du\,\partial_uK$ modulo spatial circle derivatives. Temporal endpoints must be retained.

For Einstein gravity choose

$$\frac{2\pi}\kappa\vartheta_E=\varphi\delta H-4\dot B\delta B,\quad\frac{2\pi}\kappa\ell_E=2\dot B^2-\varphi\dot H.$$

Then $\Theta_E+\partial_u\vartheta_E+\delta\ell_E=0$ and all extra frame charges vanish. For conformal gravity choose

$$\frac{4\pi}\kappa\vartheta_C=(\Phi'-4\dot B)\delta\Phi+4\varpi'\delta\varpi,$$

$$\frac{4\pi}\kappa\ell_C=4\dot\Phi\dot B-\Phi'\dot\Phi-4\varpi'\dot\varpi.$$

Now $\Theta_C+\partial_u\vartheta_C+\delta\ell_C=-\kappa\partial_\phi(\dot\Phi\delta\Phi+4\dot\varpi\delta\varpi)/(4\pi)$, and the improved charge is only $\kappa\oint YM/\pi$. An ordinary counterterm does not change $\delta\Theta$; the corner term does. Calling the prescriptions different polarizations must not hide this change of corner symplectic form.

## Derivation map and local use

The chain is intrinsic coframe freedom → admissible bulk generators → flat dressed solutions → fixed-label charge integration → central extensions → anomaly/corner descent. Equations (4.28)/(5.22), (4.43)/(5.37), and (4.48)/(5.43) respectively supply solutions, charges and algebras; §§4.5 and 5.5 fix the variational prescription.

For regional sewing, carry the trace, boundary fields, cuts and corner potential together. Matching configurations alone would miss the difference between the Einstein Heisenberg pair and conformal rank-two current algebra. The paper does not construct independent finite-region theories with an artificial interface, a common edge extension of both prescriptions, or a quantum boundary theory. Quantum BRST/worldsheet anomaly matching requires a map of cohomology classes and coefficients.

## Verification log

**Verified:** exact Mathematica Lie-algebra component and boundary-variation checks, plus Sage centralizer checks. Full official TeX/PDF inspected; printed page 31 visually checked after a PDF font warning.

**Assumptions:** invertible triad; smooth nonzero conformal factor; smooth periodic fields; fixed compensated labels; temporal corners retained; minimal J/P/D sector; source orientation.

| Label | Executed calculation |
| --- | --- |
| Checked | Seven-component flatness residuals vanish identically for both full connections, with arbitrary smooth dressing functions. |
| Checked | Angular residual equations $\delta\alpha_\phi-\partial_\phi\varepsilon-[\alpha_\phi,\varepsilon]$ give seven zeros in each theory. |
| Checked | Direct charge trace contractions agree with the integrated expressions: all spatial Euler coefficients of variation jets vanish. Local densities differ by total circle derivatives. |
| Checked | Boundary variations from $\operatorname{Tr}(\alpha_u\delta\alpha_\phi)$ give two zero 3-by-3 variation-jet arrays after spatial integration by parts. Initial use of the opposite CS polarization was corrected before drawing conclusions. |
| Checked | Both corner identities give zero. Conformal charge cocycle, antisymmetry and anomaly descent give three zero residuals modulo displayed spatial derivatives. |
| Checked | $A^TA$, for columns $(1,0),(1,-2)$, gives the level matrix and determinant 4; geometric Weyl-weight residuals are zero. |
| Checked | Sage gives centralizer basis $J_0,P_0$ and nilpotent square zero. Initial immutable-zero-vector error was repaired; rerun passed. |
| Source-derived | Finite group-exponential reconstruction, full modified parameter bracket and global conformal-boundary arguments. |
| Blocked | No remaining retrieval or computation-service blocker. Quantum anomaly matching has no constructed boundary theory/cohomology map here. |
| Failed | No source contradiction in the executed checks. |

**Not verified:** all temporal residual equations, global completeness, alternative K-sector boundary conditions, finite-region sewing, quantum levels and equivalence of the corner prescriptions in a common edge extension.
