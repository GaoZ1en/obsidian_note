---
title: "Formula verification ledger for second-order bulk-boundary charge matching"
date: 2026-07-11
summary: "Tracks assumptions, sources, analytic derivations, and Mathematica/xAct checks for the formulas used in the draft."
---

# Formula verification ledger

This ledger refers to “draft.md” and “explicit perturbative formulas.md” in the same directory. It distinguishes definitions and quoted covariant identities from derived perturbative claims. The machine checks in this audit used Wolfram Language 14.3 with xAct packages xTensor, xPert, and xTras. The earlier BTZ xCoba component check remains recorded in “../inhomogeneous diffeomorphism charge expansion.md”; the proof below does not depend on that special geometry.

## V01. Background geometry and boundary notation

- Formula/claim: equations (2.1)--(2.4).
- Assumptions: unit AdS radius; outward spacelike normal satisfies $n^2=1$; future normal satisfies $\tau^2=-1$.
- Source/derivation: direct curvature of the global AdS$_3$ metric and standard induced-metric definitions.
- Mathematica/xAct/xCoba check: no new machine check claimed. These equations are definitions and standard background identities.
- Verification result: accepted as setup data.
- Draft status: included.

## V02. Matter stress-tensor reduction

- Formula/claim: equations (2.6)--(2.7), and the use of $\xi_\nu T^{\mu\nu}$ as the matter current entering the matching.
- Assumptions: diffeomorphism-covariant matter; leading matter equation imposed only in Sec. 3.4; fixed non-normalizable sources; zero matter symplectic flux; no independent asymptotic matter or gauge surface charge.
- Source/derivation: the Hilbert definition (2.6) and the matter diffeomorphism Noether identity. That identity gives a stress current plus terms proportional to $E_A$ and a matter superpotential. The stated boundary assumptions remove the latter terms in Sec. 3.4.
- Mathematica/xAct/xCoba check: no model-independent machine check is meaningful without choosing a matter Lagrangian.
- Verification result: correct under the listed assumptions. It is not a claim about matter sectors with long-range gauge charge or nonzero boundary sources.
- Draft status: included with assumptions stated before use.

## V03. Brown--York normalization and background subtraction

- Formula/claim: the renormalized action (2.5), Brown--York normalization (2.9)--(2.10), background subtraction (2.11), and (3.39).
- Assumptions: action normalization $\kappa^2=8\pi G$ and the orientation conventions of the draft.
- Source/derivation: direct variation of $\kappa^{-2}\int_\Gamma\sqrt{-\gamma}(K-1)$; the relative charge is a definition.
- Mathematica/xAct/xCoba check: the current normalization is independently checked in V15.
- Verification result: the $\kappa^{-2}$ coefficient is common background data and vanishes in the relative charge.
- Draft status: included.

## V04. Inverse metric through $O(\kappa^3)$

- Formula/claim: equation (A.1).
- Assumptions: matrix perturbation $I+\kappa H+\kappa^2K+\kappa^3P$; indices are moved with $g^{(0)}$.
- Source/derivation: solve $g_{\mu\rho}g^{\rho\nu}=\delta_\mu{}^\nu$ coefficient by coefficient.
- Mathematica/xAct/xCoba check: Mathematica multiplied

$$\begin{align}
I+\kappa H+\kappa^2K+\kappa^3P
\end{align}$$

  by the proposed inverse. The coefficients from $\kappa^0$ through $\kappa^3$ were all zero matrices after subtracting $I$.
- Verification result: zero residual at every checked order.
- Draft status: included.

## V05. Volume density through $O(\kappa^3)$

- Formula/claim: equations (A.2)--(A.3).
- Assumptions: same matrix expansion as V04.
- Source/derivation: $\sqrt{\det(I+X)}=\exp[\tfrac12\operatorname{tr}\log(I+X)]$.
- Mathematica/xAct/xCoba check: Mathematica compared $\det(I+\kappa H+\kappa^2K+\kappa^3P)$ with the square of the proposed volume series. Coefficients through $\kappa^3$ simplified to $\{0,0,0,0\}$.
- Verification result: zero residual.
- Draft status: included.

## V06. Gravitational action ordering

- Formula/claim: equations (2.15)--(2.16), (2.18)--(2.19), and (A.4)--(A.8).
- Assumptions: smooth Taylor expansion about $g^{(0)}$; the density is evaluated before integrations by parts.
- Source/derivation: the functional Taylor expansion gives

$$\begin{align}
F[g^{(0)}+\kappa h+\kappa^2k+\kappa^3p] =F_0+\kappa F_1[h] +\kappa^2\bigl(F_1[k]+F_2[h,h]\bigr) +\kappa^3\bigl(F_1[p]+2F_2[h,k]+F_3[h,h,h]\bigr)+O(\kappa^4).
\end{align}$$

  Equations (A.6)--(A.8) follow by inserting V04 and V05 into the connection and Ricci definitions.
- Mathematica/xAct/xCoba check: V04 and V05 check the algebraic coefficients. The quadratic density (A.5) is the previously derived xPert expression in “../perturbation.md”. The coefficient structure itself is an exact Taylor identity.
- Verification result: verified as an analytic functional Taylor expansion; the displayed quadratic representative is inherited from the checked project note.
- Draft status: included.

## V07. Linear matter coupling

- Formula/claim: equation (2.17).
- Assumptions: the metric variation of the matter action can be put in Hilbert form (2.6); any integrated matter boundary term has zero asymptotic integral.
- Source/derivation: set $\delta g_{\mu\nu}=\kappa h_{\mu\nu}$ in (2.6). The coefficient is $\frac12\int\epsilon_0h_{\mu\nu}T^{\mu\nu}$.
- Mathematica/xAct/xCoba check: no model-dependent machine check claimed.
- Verification result: analytic consequence of the stress-tensor definition.
- Draft status: included.

## V08. Linearized cosmological Einstein tensor

- Formula/claim: equation (A.9).
- Assumptions: three dimensions, unit AdS radius, and the derivative order displayed in (A.9).
- Source/derivation: first perturbation of

$$\begin{align}
\mathcal E_{\mu\nu}=R_{\mu\nu}-\frac12g_{\mu\nu}R-g_{\mu\nu}.
\end{align}$$

- Mathematica/xAct/xCoba check: xPert computed the first perturbation, then the rules $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$ and $R^{(0)}=-6$ were applied. Subtracting (A.9) and applying ToCanonical and ContractMetric returned $0$.
- Verification result: zero canonical residual.
- Draft status: included.

## V09. Second-order Einstein coefficient

- Formula/claim:

$$\begin{align}
[\kappa^2]\mathcal E[g] =\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h],
\end{align}$$

  used in equations (2.20)--(2.22).
- Assumptions: xPert Taylor convention $\delta^2g=2k$.
- Source/derivation: second functional variation of $\mathcal E[g]$.
- Mathematica/xAct/xCoba check: xPert evaluated $\frac12\operatorname{Perturbation}[\mathcal E,2]$ with $\delta g=h$ and $\delta^2g=2k$. The residual after subtracting the first perturbation evaluated on $k$ and the pure-$h$ second perturbation was $0$.
- Verification result: zero canonical residual.
- Draft status: included.

## V10. Variation of $S^{[1]}$ with respect to $h$

- Formula/claim: equation (2.20).
- Assumptions: covariant metric variation; stress convention (2.6).
- Source/derivation: expand the exact bulk first variation with $\delta g_{\mu\nu}=\kappa\delta h_{\mu\nu}$. V09 supplies the gravitational coefficient and V07 supplies $T^{\mu\nu}/2$. Therefore

$$\begin{align}
E_h^{[1]\mu\nu} =-\frac12\bigl(\mathcal E^{(1)\mu\nu}[k] +\mathcal E^{(2)\mu\nu}[h,h]-T^{\mu\nu}\bigr).
\end{align}$$

- Mathematica/xAct/xCoba check: gravitational order checked by xPert in V09; matter coefficient checked analytically in V07.
- Verification result: verified.
- Draft status: included.

## V11. Einstein--Hilbert potential and symplectic form

- Formula/claim: equations (3.1)--(3.2), (3.5)--(3.9), including the compact finite coefficient (3.7a)--(3.7b).
- Assumptions: the orientation and covariant-metric-variation convention stated in the draft.
- Source/derivation: standard first variation of the Einstein--Hilbert density; $\omega=\delta\Theta$ and the corner subtraction follow by an antisymmetrized second variation.
- Mathematica/xAct/xCoba check: no new machine check claimed for the quoted exact covariant variation formula. Expanding $\sqrt{-g}/\sqrt{-g^{(0)}}=1+\kappa h/2+O(\kappa^2)$ and $V_g[\kappa\delta h+\kappa^2\delta k]$ gives (3.7b) algebraically.
- Verification result: accepted as a referenced exact identity. The statement $\delta\Theta^{[-1]}=0$ follows because (3.7) has no field-dependent coefficient.
- Draft status: included.

## V12. Boundary variation and corner potential

- Formula/claim: equations (3.3)--(3.4).
- Assumptions: spacelike unit normal $n^2=1$; Dirichlet conformal boundary data; counterterm $-\kappa^{-2}\int\sqrt{-\gamma}$.
- Source/derivation: Gauss--Codazzi decomposition of the Einstein--Hilbert variation plus direct variation of the Gibbons--Hawking--York and counterterm densities.
- Mathematica/xAct/xCoba check: the projection identity needed in the derivation is checked in V15. The remaining formula is the standard Dirichlet variation of the renormalized action.
- Verification result: verified analytically under the stated orientation.
- Draft status: included.

## V13. Perturbative diffeomorphism vector

- Formula/claim: equations (3.10)--(3.12).
- Assumptions: $g^{(0)}$ is held fixed as the expansion point.
- Source/derivation: substitute (3.11) into the left-hand side of (3.12).
- Mathematica/xAct/xCoba check: no machine check needed; coefficient-by-coefficient substitution gives the right-hand side exactly.
- Verification result: verified algebraically.
- Draft status: included.

## V14. Noether functional, charge definition, and off-shell domain

- Formula/claim: equations (3.13)--(3.16), including (3.14a)--(3.14b).
- Assumptions: diffeomorphism covariance and allowed asymptotic symmetry, so $\nu_\xi$ vanishes.
- Source/derivation: diffeomorphism covariance of each bulk Lagrangian form gives $\alpha_{\xi,\mathrm{bulk}}=\xi\mathbin{\cdot}\boldsymbol L_{\mathrm{bulk}}$. The boundary descent equation (3.14) adds $-\int_{C_R}\mu_\xi$. Coefficient extraction from (2.18)--(2.19) gives (3.14b). The charge then uses the project definition

$$\begin{align}
H_\xi=X_\xi\mathbin{\cdot}\theta-\alpha_\xi
\end{align}$$

  applied to the renormalized action and its corner potential.
- Mathematica/xAct/xCoba check: definition; no machine verification claimed.
- Verification result: the construction is off shell. No equation or gauge condition appears in Sec. 3.2.
- Draft status: included.

## V15. Projected derivative identity and exact boundary current

- Formula/claim: equations (3.17)--(3.22).
- Assumptions: $n^2=1$, $D$ is the connection projected to $\Gamma$, and the orientation conventions of the draft.
- Source/derivation: product rule applied to $D^\mu(n\mathbin{\cdot}\xi)$ and direct substitution of $\mathcal L_\xi g$ into $C_\Gamma$.
- Mathematica/xAct/xCoba check:
  - xAct reduced the residual of (3.18) to

$$\begin{align}
-\gamma^{\mu\nu}\xi^\rho n_\rho n^\sigma\nabla^{(0)}_\nu n_\sigma,
\end{align}$$

    which vanishes because $\nabla_\nu(n^2)=0$.
  - Mathematica treated the four independent structures $K^\mu{}_\nu\xi^\nu$, $(K-1)\gamma^\mu{}_\nu\xi^\nu$, $D^\mu(n\mathbin{\cdot}\xi)$, and $\gamma^{\mu\nu}n^\rho\nabla_\rho\xi_\nu$ symbolically. The residual
    $\mathcal J_{\mathrm{EH}}+\mathcal J_\Gamma-\mathcal J_T$ simplified to $0$.
- Verification result: zero residual under $n^2=1$.
- Draft status: included.

## V16. Surface-tensor expansion

- Formula/claim: equations (3.24), (3.28), and (A.10).
- Assumptions: exact Einstein--Hilbert Noether surface tensor in the conventions of the project; perturbative inverse metric and volume density from V04--V05.
- Source/derivation: expand

$$\begin{align}
\frac{1}{2\kappa^2}\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}}
  \bigl(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu\bigr).
\end{align}$$

  The $\kappa^{-1}$ coefficient is
  $\frac12(A^{(1)}+\frac12hA^{(0)})$.
  The finite coefficient is
  $\frac12(A^{(1)}[k]+A^{(2)}+\frac12hA^{(1)}+(\frac12k+s_2)A^{(0)})$.
- Mathematica/xAct/xCoba check: volume factors checked in V05; connection and antisymmetric identities checked in V17.
- Verification result: verified by coefficient extraction.
- Draft status: included.

## V17. $D_1$, $D_2$, and $S_k$ identities

- Formula/claim: equations (3.29), (A.12)--(A.13).
- Assumptions: $h_{\mu\nu}$ and $k_{\mu\nu}$ symmetric; antisymmetrization has weight one half.
- Source/derivation: substitute the connection coefficients (A.6) into (A.12).
- Mathematica/xAct/xCoba check:
  - xAct canonicalized $D_1^{[\mu\nu]}-\frac12A^{(1)\mu\nu}$ and returned $0$.
  - xAct canonicalized $D_2^{[\mu\nu]}-\frac12A^{(2)\mu\nu}$ and returned $0$.
  - xAct canonicalized $S_k^{\mu\nu}-\frac12A^{(1)\mu\nu}[k]-\frac14kA^{(0)\mu\nu}$ and returned $0$.
  - xAct canonicalized $S_{\xi,k,0}^{\mu\nu}+\widehat S_{\xi,k}^{\mu\nu}-S_{\xi,k}^{\mu\nu}$ and returned $0$.
- Verification result: four zero canonical residuals.
- Draft status: included.

## V18. Selected $S^{[1]}$ surface contribution

- Formula/claim: equations (3.26b)--(3.30).
- Assumptions: $X_\xi^{[-1]}h=\mathcal L_\xi g^{(0)}$ and $X_\xi^{[-1]}k=X_\xi^{[-1]}p=X_\xi^{[-1]}\Psi=0$.
- Source/derivation: equation (3.26b) is the $\kappa^0$ coefficient of the full diffeomorphism covariance identity (3.13). Compare the finite coefficient of the exact Einstein--Hilbert surface tensor in V16 with $S_{\xi,h}+S_{\xi,k}$, then apply V17.
- Mathematica/xAct/xCoba check: the final residual is

$$\begin{align}
\frac12A_\xi^{(2)\mu\nu}-D_{2,\xi}^{[\mu\nu]}=0,
\end{align}$$

  checked in V17.
- Verification result: the general asymptotic-symmetry current receives (3.27), while the selected extra antisymmetric surface tensor vanishes. In the background-Killing sector, $\mathcal L_\xi g^{(0)}=0$ and (3.27) vanishes as well.
- Draft status: included.

## V19. Off-shell finite bulk-current structure

- Formula/claim: equations (3.23)--(3.26a).
- Assumptions: matter reduction V02 and the perturbative action through $S^{[1]}$.
- Source/derivation: direct expansion in “../inhomogeneous diffeomorphism charge expansion.md”, sections “Bulk charge by kappa order” and “The selected S[1] contribution.” In particular,

$$\begin{align}
\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}}g^{\mu\alpha} =g^{(0)\mu\alpha} +\kappa\left(\frac12h\,g^{(0)\mu\alpha}-h^{\mu\alpha}\right) +O(\kappa^2).
\end{align}$$

  Multiplying the order-$\kappa$ equation coefficient by the order-$\kappa$ prefactor correction, with the overall constraint-current sign, gives
  $\mathcal R_{\xi,h}^\mu=\xi^\rho h^{\mu\sigma}\mathcal E^{(1)}_{\sigma\rho}[h]-\frac12h\xi_\nu\mathcal E^{(1)\mu\nu}[h]$. The Hilbert matter identity gives $\xi_\nu T^{\mu\nu}+\mathcal R_{\xi,\mathrm m}^\mu$.
- Mathematica/xAct/xCoba check: the surface part and selected $S^{[1]}$ correction were independently checked in V16--V18. The local matter term is controlled by V02. No gauge or equation is used in this formula.
- Verification result: verified by the cited analytic derivation, with its nontrivial surface identities independently machine checked.
- Draft status: included.

## V20. Abbott--Deser divergence identity

- Formula/claim: equations (3.32)--(3.33).
- Assumptions: unit-radius AdS$_3$ and $\xi$ a Killing vector of $g^{(0)}$.
- Source/derivation: contract the linearized cosmological Einstein tensor with $\xi$ and integrate derivatives by parts.
- Mathematica/xAct/xCoba check: xAct defined $\xi$ as a Killing vector, generated $\mathcal E^{(1)}[k]$ with xPert, sorted covariant derivatives, and applied the AdS symmetric-space curvature rules. The residual

$$\begin{align}
\xi_\nu\mathcal E^{(1)\mu\nu}[k] -\nabla^{(0)}_\nu\widehat S_{\xi,k}^{\mu\nu}
\end{align}$$

  returned $0$.
- Verification result: zero canonical residual.
- Draft status: included.

## V21. Constraint reduction and the two matching equations

- Formula/claim: the effective source (1.1), main expansion and result (1.2)--(1.3), and equations (3.31), (3.31a), and (3.35)--(3.38), including the leading comparison (3.36a).
- Assumptions: only in Sec. 3.4, impose $\mathcal E^{(1)}[h]=0$, $\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=T$, and the leading matter equations.
- Source/derivation:
  1. Equation (3.31) is (2.21) with $T_{(h)}=-\mathcal E^{(2)}[h,h]$.
  2. The linearized Bianchi identity gives the first equation in (3.31a); symmetry of the effective stress tensor and the Killing equation give the second.
  3. V20 converts the effective bulk stress current to a divergence.
  4. V17 combines $\widehat S_{\xi,k}$ with the existing $k$ surface term.
  5. V15 identifies the sum of the Einstein--Hilbert and boundary/corner currents with the Brown--York current before expansion.
  6. The leading Brown--Henneaux equality $H_{\xi,\mathrm{bulk}}^{[-1]}=H_{\xi,T}^{[-1]}$ is the standard first-order result already derived in the reference linearized-gravity article; (3.36a) then fixes $H_{\xi,\Gamma}^{[-1]}=0$.
- Mathematica/xAct/xCoba check: xAct generated $\mathcal E^{(1)}[k]$ with xPert, took $\nabla^{(0)}_\mu\mathcal E^{(1)\mu\nu}[k]$, sorted covariant derivatives, and applied the AdS symmetric-space rules; the residual was $0$. Steps 3--5 have zero residuals in V20, V17, and V15.
- Verification result:

$$\begin{align}
H_\xi^{[-1]}=H_{\xi,T}^{[-1]}, \qquad H_\xi^{[0]}=H_{\xi,T}^{[0]}.
\end{align}$$

- Draft status: included as the main result.

## V22. Origin of the finite boundary/corner coefficient

- Formula/claim: equations (3.37)--(3.38).
- Assumptions: same renormalized action and orientation as V12 and V15.
- Source/derivation: take the $\kappa^0$ coefficient of the explicitly evaluated form $\mu_\xi-X_\xi\mathbin{\cdot}C_\Gamma$ in (3.19)--(3.20).
- Mathematica/xAct/xCoba check: the full-field identity whose coefficient is taken has zero residual in V15.
- Verification result: $H_{\xi,\Gamma}^{[0]}$ is fixed by the renormalized action. Expanding the exact form includes the terms lowered from the $O(\kappa)$ boundary action; no adjustable improvement coefficient is introduced.
- Draft status: included.

## V23. Vacuum cutoff action

- Formula/claim: equations (B.1)--(B.3).
- Assumptions: global AdS$_3$, radial cutoff $r=R$, per unit coordinate volume in $t$ and $\phi$.
- Source/derivation: direct radial integration of $\frac{1}{2\kappa^2}\sqrt{-g^{(0)}}(R^{(0)}+2)$ and direct evaluation of $\kappa^{-2}\sqrt{-\gamma^{(0)}}(K^{(0)}-1)$.
- Mathematica/xAct/xCoba check: Mathematica evaluated

$$\begin{align}
-\frac{R^2}{\kappa^2} +\frac{1+2R^2-R\sqrt{1+R^2}}{\kappa^2}
\end{align}$$

  and returned

$$\begin{align}
\frac{1}{2\kappa^2}+\frac{1}{8\kappa^2R^2}+O(R^{-4}), \qquad \lim_{R\to\infty}=\frac{1}{2\kappa^2}.
\end{align}$$

- Verification result: the $R^2$ divergence cancels.
- Draft status: included.

## V24. Brown--Henneaux power counting and flux

- Formula/claim: equations (B.4)--(B.9), including the explicit boundary densities (B.5a).
- Assumptions: falloffs (2.8), fixed leading boundary metric, sufficiently regular inverse-power expansion, and matter conditions in Sec. 2.2.
- Source/derivation:
  - $g^{(0)rr}=O(r^2)$ and $g^{(0)ab}=O(r^{-2})$ give (B.4).
  - Direct expansion of $\sqrt{-\gamma}(K-1)$ gives (B.5a), and substitution of (2.8) gives (B.5).
  - The antisymmetrized second variation of (3.3) gives the renormalized symplectic flux.
  - V15 rewrites the full surface charge as the finite Brown--York charge.
- Mathematica/xAct/xCoba check: Mathematica expansion of the cutoff boundary action reproduced the $\kappa^{-1}$ and $\kappa^0$ densities in (B.5a), including the quadratic radial term. The exponent arithmetic is analytic. The exact current identity is checked in V15.
- Verification result: the action variation, symplectic form, and charge coefficients used in the draft are finite in the stated sector.
- Draft status: included.

## V25. Algebraic coefficient dictionary through cubic order

- Formula/claim: Secs. 2--4 of “explicit perturbative formulas.md”: the inverse metric, volume density, density-weighted inverse metric, scalar-curvature contractions, cosmological Einstein coefficients, and gravitational density through $O(\kappa^3)$.
- Assumptions: $g^{(0)}$ is nondegenerate; perturbative indices are moved only with $g^{(0)}$; the AdS simplifications use $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$ and $R^{(0)}=-6$.
- Source/derivation: coefficient extraction from $g^{-1}g=1$, $\sqrt{\det(1+g_{(0)}^{-1}\delta g)}$, $P^{\mu\nu}=(\sqrt{-g}/\sqrt{-g^{(0)}})g^{\mu\nu}$, $R=g^{\mu\nu}R_{\mu\nu}$, and $\mathcal E_{\mu\nu}=R_{\mu\nu}-\frac12g_{\mu\nu}R-g_{\mu\nu}$.
- Mathematica/xAct/xCoba check: Mathematica formed generic matrix series through cubic order and compared their derivatives at $\kappa=0$ with every displayed coefficient. The residual matrices for the inverse, determinant, and density-weighted inverse vanished through $O(\kappa^3)$. Independent contractions for $R$ vanished through $O(\kappa^3)$, and those for $\mathcal E$ vanished through $O(\kappa^2)$.
- Verification result: all displayed algebraic coefficients have zero residual at the stated orders. The $O(\kappa^3)$ Einstein line is direct coefficient multiplication from the already checked Ricci and scalar dictionaries.
- Companion-note status: included.

## V26. Full connection variation and symplectic-potential coefficients

- Formula/claim: Secs. 3.1 and 5.1--5.2 of “explicit perturbative formulas.md”: $C_{(1)}$, $C_{(2)}$, $C_{(3)}$, their field-space variations, and $\Theta^{[-1]}$, $\Theta^{[0]}$, and $\Theta^{[1]}$.
- Assumptions: the background connection is fixed; $h$, $k$, $p$ and their variations are arbitrary symmetric covariant tensors; no gauge or equation of motion is used.
- Source/derivation: expand the exact difference

$$\begin{align}
C^\rho{}_{\mu\nu}=\frac12g^{\rho\lambda}
\left(\nabla^{(0)}_\mu g_{\lambda\nu}
+\nabla^{(0)}_\nu g_{\lambda\mu}
-\nabla^{(0)}_\lambda g_{\mu\nu}\right)
\end{align}$$

  and then vary each coefficient. Insert the result and the $P_{(n)}$ coefficients into the exact Einstein--Hilbert potential (3.2).
- Mathematica/xAct/xCoba check: Mathematica expanded the exact matrix-index connection through $O(\kappa^3)$ and differentiated it in an independent variation parameter; the residuals for $C_{(1)}$, $C_{(2)}$, $C_{(3)}$ and their displayed variations were zero. An xAct check substituted $P_{(1)}$ and $\delta C_{(1,2)}$ into the compact $\Theta^{[0]}$ formula, canonicalized the result, and returned zero against the fully expanded background-covariant expression.
- Verification result: zero residual through the order needed for $\Theta_h^{[1]}$. The selected $\delta k=\delta p=0$ formulas are literal restrictions of the checked general result.
- Companion-note status: included.

## V27. Gauge-free radial boundary coefficients

- Formula/claim: Sec. 7 of “explicit perturbative formulas.md”: $N$, $n^\mu$, $\gamma^{ab}$, $\sqrt{-\gamma}$, $K_{ab}$, $K$, $B_{ab}$, $\tau^a$, $\sqrt\sigma$, and the Brown--York charge densities $\mathcal Q_1$ and $\mathcal Q_2$.
- Assumptions: constant-$r$ timelike boundary in global AdS$_3$; $f=1+r^2>0$; $r>0$; no radial gauge, so radial-tangential perturbations are allowed.
- Source/derivation: $n_\mu=(g^{rr})^{-1/2}\delta^r_\mu$, $K_{ab}=-N\Gamma^r{}_{ab}$, $B_{ab}=K_{ab}-K\gamma_{ab}+\gamma_{ab}$, $\tau_a=-(-\gamma^{tt})^{-1/2}\delta_a^t$, and direct coefficient convolution of $\sqrt\sigma\,\tau^a\xi^bB_{ab}$.
- Mathematica/xAct/xCoba check:
  1. Mathematica expanded the exact radial normal and returned zero for its covariant, radial-contravariant, and tangential-contravariant residuals through $O(\kappa^2)$; $n^2-1$ also vanishes.
  2. A generic symmetric $2\times2$ boundary metric and generic symmetric $K^{(0,1,2)}_{ab}$ gave zero residual for $\gamma^{-1}$, the trace coefficients, and every component of $B^{(0,1,2)}_{ab}$.
  3. For $\gamma^{(0)}=\operatorname{diag}(-f,r^2)$ with general $h_{ab}$ and $k_{ab}$, the exact future normal and corner measure agreed with the displayed $M_n$, $\tau_{(n)}^a$, and $s_n$ coefficients. The normalization coefficients were $\{-1,0,0\}$.
  4. A separate generic tensor convolution returned $\{0,0,0\}$ for $\mathcal Q_{0,1,2}$.
- Verification result: all listed boundary series have zero algebraic residual. The formula $K_{ab}=-N\Gamma^r{}_{ab}$ is an exact coordinate identity following from $n_a=0$ and therefore keeps the $h_{ra}$ and $k_{ra}$ terms through $C_{(1,2)}$.
- Companion-note status: included.

## V28. Boundary-current coefficient identity

- Formula/claim: Sec. 8.3 of “explicit perturbative formulas.md”:

$$\begin{align}
j_{\mathrm{EH},(n)}^\mu+j_{\Gamma,(n)}^\mu=j_{T,(n)}^\mu
\end{align}$$

  for every perturbative order $n$.
- Assumptions: same renormalized action, orientation, and boundary projector as V12 and V15; $\xi^\mu$ is held fixed while the metric is expanded.
- Source/derivation: coefficient extraction from the exact full-field currents (3.20)--(3.22), using the convolution definitions $b_{(n)}$, $d_{(n)}$, and $z_{(n)}$.
- Mathematica/xAct/xCoba check: at fixed $n$, direct algebra gives

$$\begin{align}
\frac12(-K_n+2b_n-d_n+z_n)
+\frac12(-K_n+d_n-z_n)=-K_n+b_n.
\end{align}$$

  The underlying covariant full-field identity has zero residual in V15.
- Verification result: the equality is coefficientwise and does not use the metric equations. Boundary-volume and corner-measure factors are separate convolutions, explicitly included in Sec. 7.6.
- Companion-note status: included.

## Open verification boundary

The draft does not claim the following:

- a second-order theorem for arbitrary higher-derivative gravity;
- a stress-tensor-only formula for matter carrying an independent asymptotic gauge charge;
- nonzero-source or nonzero-flux matter boundary conditions;
- a Virasoro-charge theorem for an arbitrary Brown--Henneaux asymptotic vector that is not a background Killing field;
- any quantum charge algebra or quantization.

These are outside the assumptions used in V02, V20, and V21.
