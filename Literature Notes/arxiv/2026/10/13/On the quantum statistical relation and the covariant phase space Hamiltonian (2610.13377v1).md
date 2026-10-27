---
paper id: 2610.13377v1
title: On the quantum statistical relation and the covariant phase space Hamiltonian
authors:
- José Luis V. Cerdeira
- Tomás Ortín
publication date: '2026-10-09'
abstract: We show how the covariant phase space Hamiltonian can be constructed in theories in which some of the fields have gauge freedoms. The addition to the action of boundary terms that guarantee the well-posedness of a variational principle and its exact gauge invariance for the prescribed boundary conditions turn out to be essential in this construction. The same ingredients are essential in the use of the action in the framework of Gibbons and Hawking's Euclidean approach to Quantum Gravity and we show how the on-shell action constructed with a Lagrangian with those properties can be expressed in terms of the covariant phase space Hamiltonian. We compute the Hamiltonian of several theories, one of which has Chern--Simons terms, using our prescription and show that, in black-hole backgrounds, the Hamiltonian gives directly the quantum statistical relation including terms related to non-gravitational charges and chemical potentials, as expected.
comments: latex file, 42 pages, no figures
url: https://arxiv.org/abs/2610.13377v1
summary: Boundary and gauge completion produce a conditional CPS Hamiltonian; local variation identities and QSR signs checked with explicit repairs to printed formulas.
tags: []
---

# Gauge completion of the CPS Hamiltonian

The useful result is a boundary representative of the Hamiltonian once the variational problem and the allowed gauge transformations have both been fixed. It is conditional on the existence of compatible boundary data; it does not remove radiative flux on an unrestricted phase space. The source's final quantum statistical relation has the expected thermodynamic signs, but several intervening printed equations require repairs described below.

**Source-derived:** the reconstruction follows [arXiv:2610.13377v1](https://arxiv.org/abs/2610.13377v1), the 42-page PDF and its TeX source. **Checked** below refers only to the explicit symbolic/form-algebra computations listed in the verification ledger. Reason codes: `T1-Wald-CPS`, `T1-charge`, `T1-boundary`.

## Source map and reading route

| Source section | Pages | Role and dependence |
|---|---|---|
| 1 Introduction | 3–4 | Extension of the Harlow–Wu boundary construction to gauge fields; motivates action/Hamiltonian/QSR chain. |
| 2 Theory, symmetries and charges | 4–12 | First variation, weakly vanishing current, exact and asymptotic symmetries. |
| 2.1 Symmetries and charges | 5–7 | Noether identities and the distinction between an off-shell exact gauge current and an on-shell conserved surface form. |
| 2.1.1 Diffeomorphisms | 8–9 | Compensating gauge transformations, momentum maps, generalized Komar form. |
| 2.2 A well-posed variational problem | 9–12 | Boundary action, corner potential, gauge completion, background connection. |
| 3 The Hamiltonian | 12–17 | Dressed presymplectic structure and integration of its contraction with the symmetry. |
| 3.1 / 3.1.1 GR | 17–20 | Coframe Dirichlet data and background-subtracted GHY form. |
| 3.1.2 Einstein–Maxwell | 20–22 | Electric work term from the compensated diffeomorphism. |
| 3.1.3 Minimal 5D supergravity | 22–26 | CS transgression, background equations, Page and Hamiltonian forms. |
| 4 Euclidean path integral | 27–29 | Thermal-circle contraction, regulated bolt, boundary evaluation of the action. |
| 5 / 5.1 QSR and 5D example | 29–33 | Infinity/horizon subtraction and chemical-potential difference. |
| 6 Conclusions | 33 | Scalars, dimensionful couplings, higher derivatives and other ensembles remain extensions. |
| A | 34 | Gauge-correction form in the bare symplectic current. |
| B | 34–35 | Boundary identity converting that correction into a field-space variation. |
| C | 35–36 | Exact-representative ambiguities; no proof of arbitrary global cohomological equivalence. |

**How to read this long paper:** read §2.2, §3 and Appendices A–B first; then §3.1.2 for the electric term and §3.1.3 for the nontrivial CS completion. Read §§4–5 with the corrected sign ledger. §2.1 and Appendix C are technical references; the introductory history and references are background. All technical sections and appendices are reconstructed here.

## Fields, gradings and conventions

The spacetime dimension is $d$. The physical fields are collectively $\varphi$; $d$ is the spacetime exterior derivative and $\delta$ is the field-space exterior derivative, with $[\delta,d]=0$. Variations are tangent to the on-shell space satisfying the selected boundary conditions. The source uses mostly-minus signature and

$$
de^a=\omega^a{}_b\wedge e^b,\qquad
R^a{}_b=d\omega^a{}_b-\omega^a{}_c\wedge\omega^c{}_b.
$$

Thus an ordinary convention with $de^a+\omega_{\rm std}^a{}_b\wedge e^b=0$ has $\omega_{\rm src}=-\omega_{\rm std}$ and $R_{\rm src}=-R_{\rm std}$. The Hodge star and orientation must be translated as well; changing only the sign of the connection is insufficient to compare a full charge.

| Object | Spacetime degree / meaning |
|---|---|
| $L$ | $d$-form bulk Lagrangian |
| $\Theta(\varphi,\delta\varphi)$ | $(d-1)$-form, field-space degree 1 |
| $\ell$ | $(d-1)$-form boundary Lagrangian, extended only where needed |
| $D(\varphi,\delta\varphi)$ | $(d-2)$-form corner potential, field-space degree 1 |
| $\Xi[\Lambda]$ | $(d-1)$-form in $\delta_\Lambda L=-d\Xi[\Lambda]$ |
| $R[\Lambda]$ | $(d-2)$-form in the boundary gauge completion |
| $Q_{\rm NW}[\xi]$ | Noether–Wald $(d-2)$-form; not the integrated Hamiltonian |
| $C[\varphi,\delta\Lambda_\xi]$ | $(d-2)$-form, field-space degree 1 |
| $\boldsymbol H[\xi]$, $H[\xi]$ | Hamiltonian surface form and its oriented integral |
| $P_\xi$, $P_\xi^{ab}$ | Maxwell scalar and Lorentz antisymmetric momentum maps |
| $\vartheta=A-\bar A$, $\vartheta^{ab}=\omega^{ab}-\bar\omega^{ab}$ | Differences of connections on the same bundle |

The examples suppress the common gravitational normalization; restore $(16\pi G_d)^{-1}$ when comparing physical charges. The derivation takes $\delta\xi=0$. The compensator $\Lambda_\xi$ remains field dependent. If the horizon vector is written $k=\partial_t-\Omega\partial_\phi$, the source's rotational convention fixes the sign of $J$ accordingly; do not combine it with an independently chosen opposite convention.

## Noether current, reducibility and the gauge lift

Start with the first variation, source (2.1),

$$
\delta L=E_\varphi\wedge\delta\varphi+d\Theta.
$$

For a local transformation $\delta_\Lambda L=-d\Xi[\Lambda]$, integrations by parts give

$$
E_\varphi\wedge\delta_\Lambda\varphi
=\Lambda^A N_A+dS[\Lambda;E_\varphi],\qquad N_A\equiv0,
$$

so

$$
J[\Lambda]=\Theta(\varphi,\delta_\Lambda\varphi)+S[\Lambda;E_\varphi]+\Xi[\Lambda],
\qquad dJ=0,\qquad J=dQ[\Lambda]
$$

locally. The last step invokes the relevant local Poincaré/cohomology statement. Off-shell closedness of the gauge current does not mean $dQ=0$. For reducibility parameters $\Lambda_K$, $\delta_{\Lambda_K}\varphi=0$ on the chosen solution, and $\Xi[\Lambda_K]\doteq dw_K$ gives the conserved form $K=-Q+w_K$.

The source uses the compensated transformation

$$
\delta_\xi=-\mathcal L_\xi+\delta_{\Lambda_\xi},\qquad
\Lambda_\xi=i_\xi A-P_\xi.
$$

For an Abelian field,

$$
\delta_\xi A=-i_\xi F-dP_\xi;
\qquad \delta_k A=0\ \Longrightarrow\ i_kF+dP_k=0.
$$

For non-Abelian fields replace $dP$ by the covariant derivative. The Lorentz analogue is $P_k^{ab}=\nabla^a k^b=-P_k^{ba}$, with $i_kR^{ab}+\mathcal D P_k^{ab}=0$. The repeated $ab$ in the final minus term of printed (3.26) is a transposition typo.

The diffeomorphism current and generalized Komar form are

$$
J[\xi]=\Theta(\delta_\xi\varphi)+S[\xi;E]+i_\xi L+\Xi[\Lambda_\xi]
=dQ_{\rm NW}[\xi],
$$

$$
dQ_{\rm NW}[k]\doteq i_kL+\Xi[\Lambda_k]=dw_k,
\qquad K[k]=-Q_{\rm NW}[k]+w_k.
$$

**Checked:** xAct canonical contraction reproduces the Abelian compensated Lie-derivative identity for arbitrary $A_a,k^a$; it is not a check that a global $P_k$ exists on every bundle.

## Boundary action and the integrability calculation

The two inputs, source (2.26) and (2.28), are

$$
\left.(\Theta+\delta\ell)\right|_{\partial M}
\doteq dD,\qquad
\delta_\Lambda\ell-\Xi[\Lambda]=dR[\Lambda].
$$

The first is imposed only on allowed boundary variations. In a decomposition $\Theta=-\delta\ell+dD+F_{\partial}$, it requires the residual boundary flux one-form $F_{\partial}$ to vanish on those variations. The second makes $L+d\ell$ exactly invariant under the admitted infinitesimal gauge transformations. Neither is guaranteed for arbitrary boundary data, anomalous theories or global large transformations.

Set

$$
\omega=\delta(\Theta+\delta\ell-dD)=\delta\Theta-d\delta D,
\qquad \Omega_\Sigma=\int_\Sigma\omega,
\qquad \Omega_\Sigma(\delta,\delta_\xi)=-\delta H[\xi].
$$

Bare $d\omega=0$ alone does not establish slice independence on a region with lateral boundary; the pullback flux must vanish. It does for this dressed current under the stated boundary equation.

The field dependence of the compensator yields $[\delta,\delta_\xi]=\delta_{\delta\Lambda_\xi}$. Expanding the contraction in source order gives

$$
\omega_{\rm bare}(\delta,\delta_\xi)
\doteq d\bigl(\delta Q_{\rm NW}[\xi]+i_\xi\Theta-C\bigr),
$$

where the local correction obeys

$$
dC\doteq\delta\Xi[\Lambda_\xi]
+\delta_{\Lambda_\xi}\Theta(\delta\varphi)
+\Theta(\delta_{\delta\Lambda_\xi}\varphi).
$$

This is the form-degree-consistent version of Appendix A, (A.3); the PDF omits $d$ on its right-hand side. Appendix A equates two expressions for $[\delta,\delta_{\Lambda_\xi}]L$, uses the gauge covariance of $E_\varphi\wedge\delta\varphi$, and obtains a closed form. Choosing a local primitive gives $C$. This is a local construction, with closed ambiguities still to be fixed.

Adding the $D$ terms gives source (3.9b),

$$
W=\delta Q_{\rm NW}+i_\xi\Theta-C
+\delta_\xi D(\delta\varphi)-\delta D(\delta_\xi\varphi)
+D(\delta_{\delta\Lambda_\xi}\varphi).
$$

Cartan's formula leaves an additional $-d(i_\xi D)$ in the intermediate $W$; it can be omitted modulo spacetime exact forms on closed cuts. The two boundary equations imply Appendix B,

$$
C\doteq-\delta R[\Lambda_\xi]
+\delta_{\Lambda_\xi}D(\delta\varphi)
+D(\delta_{\delta\Lambda_\xi}\varphi),
$$

up to a fixed closed representative. Therefore

$$
W\simeq\delta\bigl(Q_{\rm NW}-i_\xi\ell-D(\delta_\xi\varphi)+R[\Lambda_\xi]\bigr),
$$

$$
\boxed{\boldsymbol H[\xi]=-Q_{\rm NW}[\xi]+i_\xi\ell
+D(\delta_\xi\varphi)-R[\Lambda_\xi]},\qquad
H[\xi]=\int_{\partial\Sigma}\boldsymbol H[\xi].
$$

Here $\simeq$ allows the exact cut term just described. The $\omega_{\rm bare}$ label in printed (3.9a)/(3.12a) must denote the dressed current after the $D$ terms have been added. **Checked:** symbolic coefficient cancellation reproduces the displayed primitive. The admissibility of $\delta_\xi$ and its commutator with tangent variations is an assumption, not a consequence for arbitrary $\xi$.

For an exact symmetry $\delta_k\varphi=0$, $D(\delta_k\varphi)=0$ and

$$
\boldsymbol H[k]=-Q_{\rm NW}[k]+i_k\ell-R[\Lambda_k],\qquad
d\boldsymbol H[k]\doteq-i_k(L+d\ell).
$$

The Hamiltonian surface form generally is not closed. If $i_k(L+d\ell)=dh$, then $\boldsymbol H+h$ is closed; printed (3.18) uses the wrong minus sign, giving $-2dh$. Defining a new closed form also does not prove it generates the same phase-space transformation.

## GR and Maxwell: the concrete Dirichlet data

Write $\Sigma^{ab}=\star(e^a\wedge e^b)$. In the source convention,

$$
L_{\rm EH}=(-1)^{d-1}\Sigma^{ab}\wedge R_{ab},\qquad
\Theta_{\rm EH}=-\Sigma^{ab}\wedge\delta\omega_{ab},
$$

$$
Q_{\rm NW}[\xi]=(-1)^d\Sigma^{ab}P_{\xi ab},\qquad
Q[\sigma]=(-1)^{d-1}\Sigma^{ab}\sigma_{ab}.
$$

Dirichlet coframe data make the residual $\delta\Sigma$ term vanish after adding

$$
\ell_{\rm GHY}=\Sigma^{ab}\wedge\vartheta_{ab},\qquad
\vartheta^{ab}=\omega^{ab}-\bar\omega^{ab}.
$$

Both connections must transform under the same Lorentz gauge transformation. The source chooses the lift normalization

$$
i_\xi\vartheta^{ab}=P_\xi^{ab}-\bar P_\xi^{ab}.
$$

For $D=R=0$, contraction of the wedge product gives

$$
\boldsymbol H_D[\xi]
=-(-1)^d\Sigma^{ab}\bar P_{\xi ab}
+i_\xi\Sigma^{ab}\wedge\vartheta_{ab}.
$$

Discarding the first term as a reference constant is justified only if its pullback is field-space constant on the chosen boundary-data space. Its variation is $-(-1)^d\delta\Sigma^{ab}\bar P_{\xi ab}$ for a fixed lift/background; this need not vanish on an enlarged phase space. It is not harmless merely because it is called a background term. Finiteness and background matching at infinity remain separate requirements.

For Einstein–Maxwell,

$$
L=L_{\rm EH}+\frac{(-1)^d}{2}F\wedge\star F,\qquad
E_A=-d\star F,\qquad
\Theta=-\Sigma^{ab}\wedge\delta\omega_{ab}+\star F\wedge\delta A,
$$

$$
Q[\Lambda]=(-1)^d\Lambda\star F,\qquad
Q_{\rm NW}[\xi]=(-1)^d(\Sigma^{ab}P_{\xi ab}-P_\xi\star F).
$$

Fixing the pullback of $A$ requires no Maxwell boundary term. After the allowed gravitational reference normalization,

$$
\boldsymbol H_D[\xi]=i_\xi\Sigma^{ab}\wedge\vartheta_{ab}+(-1)^dP_\xi\star F.
$$

This is the explicit reason the Hamiltonian of the compensated transformation contains electric work. An additive constant in $P$ must be fixed consistently at infinity and the horizon.

For completeness the source defines the magnetic momentum map by $i_k\star F+d\widetilde P_k=0$ and gives

$$
w_k=\frac{(-1)^{d-1}}{d-2}(P_k\star F+\widetilde P_k\wedge F).
$$

Together with its own $Q_{\rm NW}$ this implies

$$
K[k]=(-1)^d\left[-\Sigma^{ab}P_{kab}
+\frac{d-3}{d-2}P_k\star F
-\frac1{d-2}\widetilde P_k\wedge F\right].
$$

Printed (3.41) has the opposite magnetic sign. **Checked:** subtracting the definition $-Q_{\rm NW}+w_k$ gives $2(-1)^d\widetilde P_k\wedge F/(d-2)$ for the printed result, and zero for the displayed repair. This is a consistency repair relative to (3.38)–(3.40), not an independent global magnetic-charge construction.

**Checked:** xAct reproduces the EH metric Euler derivative $R_{ab}-\tfrac12g_{ab}R$, and independently verifies the fixed-metric Maxwell integration by parts,

$$
-\tfrac12F^{ab}(\nabla_av_b-\nabla_bv_a)
=(\nabla_aF^{ab})v_b-\nabla_a(F^{ab}v_b).
$$

These checks establish the local variational ingredients, not a complete ADM-renormalization calculation in every asymptotic class.

## Five-dimensional CS theory and transgression

The model in §3.1.3 is

$$
L=\Sigma^{ab}\wedge R_{ab}-\tfrac12F\wedge\star F+\gamma A\wedge F\wedge F,
\qquad \gamma=3^{-3/2}\ \text{for minimal supergravity}.
$$

For the original CS representative,

$$
E_A=-d\star F+3\gamma F\wedge F,\qquad
\Theta_A=(\star F-2\gamma F\wedge A)\wedge\delta A,
$$

$$
Q[\Lambda]=-\Lambda(\star F-3\gamma F\wedge A),\quad
Q_{\rm NW}[\xi]=-\Sigma^{ab}P_{\xi ab}+P_\xi(\star F-2\gamma F\wedge A).
$$

The variation $\delta_\Lambda L=+d(\gamma\Lambda F\wedge F)$ means $\Xi=-\gamma\Lambda F\wedge F$ in the convention (2.3). The $+d\Xi$ identification in (3.44) changes convention without warning and cannot be substituted into the earlier general formulas unchanged.

The source also records

$$
K[k]=\Sigma^{ab}P_{kab}+\tfrac13\widetilde P_k\wedge F-\tfrac23P_k\star F,
\qquad d\widetilde P_k\doteq-i_k\star F+6\gamma P_kF.
$$

The magnetic-potential equation is locally compatible with $d\star F=3\gamma F^2$ and $dP_k=-i_kF$: applying $d$ gives $i_kd\star F+6\gamma dP_k\wedge F=0$ on a stationary field. Its global primitive and full gravitational Komar evaluation are source-dependent.

Introduce a connection $\bar A$ on the **same bundle**, $\bar F=d\bar A$, and $\vartheta=A-\bar A$. Then

$$
\mathcal Q(A,\bar A)
=\vartheta\wedge(F^2+F\wedge\bar F+\bar F^2),
$$

$$
d\mathcal Q=F^3-\bar F^3,
$$

$$
\mathcal Q=A\wedge F^2-\bar A\wedge\bar F^2
-d\bigl[A\wedge\bar A\wedge(F+\bar F)\bigr].
$$

The six-form identity is a formal characteristic-form identity; it vanishes by degree when restricted to a five-manifold. It does not replace the actual five-dimensional variation, which is

$$
\delta\mathcal Q=3F^2\wedge\delta A-3\bar F^2\wedge\delta\bar A+d\Theta_{\mathcal Q},
$$

$$
\Theta_{\mathcal Q}
=-\vartheta\wedge(2F+\bar F)\wedge\delta A
-\vartheta\wedge(F+2\bar F)\wedge\delta\bar A.
$$

**Checked:** all three identities were independently expanded in a graded algebra with $A,\bar A,\delta A,\delta\bar A$ odd and $F,\bar F,d\delta A,d\delta\bar A$ even. Anticommutation, nilpotence and Leibniz self-tests passed before the final residuals were used.

Using only transgression leaves the nondynamical variation coefficient $E_{\bar A}=-3\gamma\bar F^2$. To obtain a conserved background-subtracted electric current, the paper further subtracts the background Maxwell and EH Lagrangians, with the background itself satisfying the original equations:

$$
L_{\rm tr}=L_{\rm EM}(e,A)-L_{\rm EM}(\bar e,\bar A)+\gamma\mathcal Q.
$$

The background Hodge operator uses $\bar e$, not $e$. The corrected background coefficient is

$$
E_{\bar A}=d(\bar\star\bar F)-3\gamma\bar F\wedge\bar F.
$$

Printed (3.59a) omits $d$, subtracting a four-form from a three-form. The full potential is

$$
\begin{aligned}
\Theta={}&-\Sigma^{ab}\wedge\delta\omega_{ab}
+\bar\Sigma^{ab}\wedge\delta\bar\omega_{ab}\\
&+[\star F-\gamma\vartheta\wedge(2F+\bar F)]\wedge\delta A\\
&-[\bar\star\bar F+\gamma\vartheta\wedge(2\bar F+F)]\wedge\delta\bar A.
\end{aligned}
$$

Define

$$
\mathcal J=\star F-\bar\star\bar F-3\gamma\vartheta\wedge(F+\bar F),
\qquad Q[\Lambda]=-\Lambda\mathcal J.
$$

Its derivative is the physical-minus-background Maxwell equation,

$$
d\mathcal J=d\star F-d\bar\star\bar F-3\gamma(F^2-\bar F^2)\doteq0.
$$

This current is invariant under simultaneous infinitesimal Abelian gauge transformations and vanishes on the reference solution. Both equations of motion are needed for conservation. An ordinary phase-space variation can keep the reference fixed, while an active gauge transformation must transform it together with the physical field.

The unambiguous expression to use is source (3.64) followed by $\boldsymbol H=-Q_{\rm NW}+i_\xi\ell_{\rm GHY}$:

$$
\begin{aligned}
Q_{\rm NW}={}&-\Sigma^{ab}P_{\xi ab}+\bar\Sigma^{ab}\bar P_{\xi ab}\\
&+[\star F-\gamma\vartheta\wedge(2F+\bar F)]P_\xi\\
&-[\bar\star\bar F+\gamma\vartheta\wedge(2\bar F+F)]\bar P_\xi.
\end{aligned}
$$

With $i_\xi\vartheta=P_\xi-\bar P_\xi$ and the analogous Lorentz relation, the **corrected** expansion is

$$
\begin{aligned}
\boldsymbol H[\xi]={}&+(\Sigma^{ab}-\bar\Sigma^{ab})\bar P_{\xi ab}
+i_\xi\Sigma^{ab}\wedge\vartheta_{ab}-P_\xi\mathcal J\\
&-[\bar\star\bar F+\gamma\vartheta\wedge(2\bar F+F)]i_\xi\vartheta.
\end{aligned}
$$

The first sign is plus, whereas (3.65) prints minus. Since $\deg\Sigma=3$,
$i_\xi(\Sigma\wedge\vartheta_{\rm L})=i_\xi\Sigma\wedge\vartheta_{\rm L}-\Sigma\,i_\xi\vartheta_{\rm L}$; substituting gives the repair directly. **Checked:** the printed residual is $2(\Sigma-\bar\Sigma)\bar P_\xi$ and the repaired residual vanishes. Dropping this term requires the fixed-boundary/reference condition already discussed. Calling it “$\delta$-exact” is not the needed criterion; the relevant property is vanishing variation.

## Thermal circle, horizon term and ensemble

For a top form $\omega_d$ and a non-null $k$,

$$
\omega_d=\frac{k^\flat}{k^2}\wedge i_k\omega_d.
$$

Contracting the identically zero $(d+1)$-form $k^\flat\wedge\omega_d$ proves this identity. It fails as a literal expression where $k^2=0$. Section 4 therefore removes a small bolt neighbourhood $B_\epsilon$ before applying it. The omitted integral vanishes only if the completed density has a regular extension and the regulated volume tends to zero. Gauge invariance alone does not prove that extension for arbitrary bundles or singular references.

For a stationary nonextremal saddle, compatible lift and thermal identification with $\beta=2\pi/\kappa$,

$$
I_E=-i\int_M(L+d\ell)
=-\beta\int_{\Sigma_\epsilon}i_k(L+d\ell)
=\beta\int_{\partial\Sigma_\epsilon}\boldsymbol H[k].
$$

Taking the oriented boundary as infinity minus the bolt/horizon cut yields

$$
I_E=\beta\left(\int_{S_\infty}\boldsymbol H[k]-\int_{\mathcal H}\boldsymbol H[k]\right).
$$

For rotation, $k^\flat/k^2$ need not define hypersurfaces globally: the thermal-orbit quotient and any section/patching need to be justified. A globally hypersurface-orthogonal $k$ is a sufficient special case. The source's “hypersurface normal to $k$” language is not a general construction for twisting stationary Killing fields.

Dirichlet chemical potentials correspond to the grand-canonical ensemble. With a common electric-charge sign and reference,

$$
\int_{S_\infty}\boldsymbol H=M-\Omega J+\Phi_\infty Q,
\quad
\int_{\mathcal H}\boldsymbol H=TS+\Phi_HQ,
\quad \mu=\Phi_H-\Phi_\infty,
$$

so

$$
\boxed{I_E=\beta(M-\Omega J-\mu Q)-S},\qquad
I_E\simeq-\log Z
$$

at the saddle approximation. This is (5.7)/(5.11), not the printed (5.3)/(5.4). The electric momentum-map additive constant cancels in $\mu$ if the same shift is used at both cuts.

For the five-dimensional transgression example, $Q=-\int\mathcal J$ in the convention (3.60). When the $\vartheta$ contributions vanish sufficiently fast at infinity, the matter term in the Hamiltonian is $-P_k(\star F-\bar\star\bar F)$; (5.8) prints the opposite sign. Pointwise $\vartheta\to0$ by itself is not enough: its products with field strengths must vanish after integration over the growing cut. At the bifurcation surface $i_k\vartheta=0$ requires a smooth gauge-invariant difference connection. The corrected (5.10) is $\beta\int_{\mathcal H}\boldsymbol H=S+\beta\Phi_HQ$.

**Checked benchmark:** using standard four-dimensional RN variables $G>0$, $r_+>|q|$, $M=(r_+^2+q^2)/(2Gr_+)$, $T=(r_+^2-q^2)/(4\pi r_+^3)$, $S=\pi r_+^2/G$, $Q=q/G$ and $\Phi=q/r_+$, Mathematica gives both first-law coefficients zero and $I_E=\pi r_+^2/G$. At $q=0$ this is $\beta M/2$. This is an independent thermodynamic consistency benchmark, not an evaluation of the source's general transgression action on every five-dimensional black hole.

## Exact ambiguities and local translation

Appendix C shifts

$$
\Theta\to\Theta+dX,\quad\Xi\to\Xi+dY,\quad\ell\to\ell+dZ,
$$

$$
D\to D+\delta Z+X+dW,\quad
R\to R+\delta_\Lambda Z-Y+dV,\quad
Q_{\rm NW}\to Q_{\rm NW}+X(\delta_\xi\varphi)+Y+dU.
$$

Using $\delta_\xi Z=-\mathcal L_\xi Z+\delta_{\Lambda_\xi}Z$ gives

$$
\Delta\boldsymbol H=d[-U-i_\xi Z+W(\delta_\xi\varphi)-V].
$$

**Checked:** all non-exact coefficients cancel. The integrated Hamiltonian is unchanged on a closed cut with globally defined representatives. At a cut with its own boundary, or with patch overlaps/large gauge transformations, this exact term can contribute. The source's inference $d(\delta_\Lambda\boldsymbol H)=0\Rightarrow\delta_\Lambda\boldsymbol H=d(\cdots)$ also requires a cohomological/normalization condition; closed is not globally exact.

For the vault's regional action/CPS work, take the tuple $(L,\ell,D,R,\Lambda_\xi)$ as the reusable input. In positive-Lie-derivative conventions reverse the full lifted transformation and its generator sign together. Keep the field-space correction associated with $\delta\Lambda_\xi$; do not silently identify the moment map with a gauge-fixed $i_\xi A$. On two regions, match the boundary data and lifts before adding their oriented surface forms. This paper does not establish Hilbert-space or observable-algebra factorization, a general gluing theorem, or cancellation of all corner terms on arbitrary interfaces.

## Equation and verification ledger

The dependency chain is $(2.1),(2.3)\to(2.19)\to(2.26),(2.28)\to(3.8),\mathrm{A},\mathrm{B}\to(3.12b)\to(3.30),(3.42),(3.64)\to(4.10)\to(5.7)$. The CS branch additionally needs same-bundle transgression and both physical/background equations. Appendix C controls exact local representative changes.

| Source target | Evidence / result | Boundary of the check |
|---|---|---|
| (2.14)–(2.17) | **Checked**, xAct tensor residual zero for the Abelian lifted Lie derivative. | Does not construct global or non-Abelian momentum maps. |
| (3.8), (A.3), (B.1)–(B.2) | **Source-derived** proof reconstructed; (A.3) needs $dC$. | Local primitive and admissible symmetry/commutator required. |
| (3.10)–(3.12) | **Checked**, algebraic cancellation after boundary identities, modulo exact cut term. | Does not prove existence of the assumed boundary completion. |
| (3.18) | **Failed** as printed: $d(H-h)=-2dh$; $H+h$ is the repair. | A closed form need not be the original generator. |
| EH and Maxwell variation | **Checked**, xAct EH Euler derivative and Maxwell integration by parts, residuals zero. | Bulk local tensor check; reference matching and renormalization not reproduced universally. |
| (3.41) | **Failed** relative to its defining (3.38)–(3.40): magnetic sign mismatch. | Repaired relative identity checked; global magnetic sectors source-dependent. |
| (3.44) | **Failed** sign convention for $\Xi$ relative to (2.3). | Gauge variation itself has the displayed positive sign; $\Xi$ must have the negative sign. |
| (3.51)–(3.62) | **Checked**, graded exterior algebra: transgression derivative, variation and Page-current derivative. | Formal local differential-form identities, not quantized large-gauge invariance. |
| (3.59a) | **Failed** form degree; repaired $d\bar\star\bar F-3\gamma\bar F^2$. | Follows independently from the variation. |
| (3.65) | **Failed** first-line gravitational sign; repaired expansion has zero residual. | Background term can be removed only on a fixed-data phase space. |
| (4.4) | **Checked**, exterior-algebra proof; non-null contraction coefficient also tested for dimensions 3–7. | Thermal fibration, smooth bolt and stationary density are separate assumptions. |
| (5.3), (5.4) | **Failed**: residuals against $\beta G=\beta(E-\Omega J-\Phi Q)-S$ are $-2\beta E$ and $2S+2\beta\Omega J+2\beta\Phi Q$. | Final (5.7) has the repaired signs. |
| (5.8), (5.10) | **Failed**: opposite Maxwell sign relative to (3.65), and missing $\beta$ multiplying $\Phi_HQ$. | Use the charge sign fixed by (3.60) and corrected formulas. |
| (5.7)/(5.11) | **Checked**, symbolic infinity-minus-horizon subtraction and RN first-law/QSR benchmark. | Not a full gravitational path integral or a global five-dimensional solution check. |
| Appendix C | **Checked**, representative change is the exact form above. | Closed cut and global representatives needed to discard its integral. |

**Verified:** the explicitly listed local tensor, graded-form and coefficient identities; repaired signs; RN thermodynamic benchmark. Key printed equations were visually confirmed on PDF pages 15, 17, 25, 26, 30, 32, 34 and 35, separately from the computations.

**Assumptions:** classical on-shell fields and tangent variations; fixed $\xi$; admitted boundary-preserving lift; local primitives with fixed closed ambiguities; Dirichlet data for the examples; compatible reference solution on the same bundle; sufficient asymptotic falloffs; regular nonextremal thermal saddle; common charge and orientation convention.

**Not verified:** global boundary/gauge completion, non-Abelian/general-matter existence theorem, large-gauge effects, rotating thermal quotient patching, a full 5D black-hole evaluation, scalar charges, variable cosmological constant, higher-derivative boundary actions, quantum determinants and regional algebra sewing.

**Blocked:** the paper does not supply a general global primitive/patching prescription, a specified rotating example with all reference fields and falloffs, or the scalar/coupling extensions. These prevent promoting the local construction to those broader claims. There was no unrecovered retrieval or CAS-service blocker. PDF text extraction emitted a font-type warning; TeX and rendered pages resolved the inspected formulas. A temporary graded-algebra parser omitted level-zero monomials on its first self-test; that implementation was repaired and all self-tests rerun before accepting any result. An EH comparison initially left the named Einstein tensor unexpanded; its explicit Ricci form gives zero.
