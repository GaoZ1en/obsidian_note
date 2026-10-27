---
paper id: 2610.16799v1
title: Hamiltonian surface charges in General Parallel Relativity
authors:
- Tomi Koivisto
publication date: '2026-10-12'
abstract: General Parallel Relativity is a dynamically equivalent formulation of Einstein gravity in which the parallel frame
  supplies explicit boundary reference data. In this formulation, finite-region energy-momentum and horizon entropy arise
  as distinct Hamiltonian surface charges. Diffeomorphisms along canonical frame directions define a quasi-local energy-momentum
  including a matter surface term, while normal-plane boosts at a smooth horizon give entropy. These covariant formulas are
  applied to the Reissner-Nordström black hole and to a dilatonic charged black hole. In both examples, the matter contribution
  and its Legendre transform complete the Misner-Sharp mass into the Hamiltonian energy appropriate to the chosen electromagnetic
  boundary datum. The resulting horizon charges satisfy the thermodynamic relation obtained independently from the Euclidean
  boundary action.
comments: 30 pages
url: https://arxiv.org/abs/2610.16799v1
summary: Matter-completed finite-boundary charges distinguish Maxwell polarisations; the area boost charge and black-hole
  identities are useful, but printed nonmetricity and unrestricted integrability require care.
tags: []
---

# Hamiltonian surface charges in General Parallel Relativity

The reusable result is the matter-completed covariant-diffeomorphism potential
$$
j_\xi=(\xi\lrcorner e^a)s_a+(\xi\lrcorner\psi)\wedge\Pi,
\qquad P[\xi]=-\oint_S j_\xi.
$$
It becomes a Hamiltonian only on a specified boundary phase space. In Einstein–Maxwell examples, changing from fixed potential to fixed charge changes the surface energy by a Maxwell Legendre term. Separately, a normal-plane GL boost in the metric-affine formulation has charge $P_{\rm boost}=\mu_n A_S$ after fixing its reference ambiguity. These are concrete test cases for regional CPS: keep the bulk Lagrangian, boundary polarisation, generator and reference structure together.

**Evidence.** Full 30-page PDF and TeX inspected; source-derived reconstruction below. Eighteen exact Mathematica residuals vanish. An independent component calculation in the xAct kernel checks the coordinate/coframe transformation and the non-Killing character of the Kodama vector. A printed nonmetricity inconsistency is recorded under Failed; the full constitutive-to-charge chain is consequently not certified. Reason codes: `T1-charge`, `T1-Wald-CPS`, `T1-boundary`, `T2-model`, `T2-dS-BH-holography`.

## Section tree and dependencies

| Source | Purpose and later use |
|---|---|
| I, pp. 2–3 | Frame reference, matter completion, distinction between energy and entropy symmetries. |
| II A, p. 3, Tables I–II | Independent fields, form degrees, momenta and Bianchi identities. |
| II B.1–4, pp. 4–6 | Variation; GL, Diff and covariant Diff; symmetric/metric specialisations; absolute parallelism. |
| II C, pp. 6–8 | Two reference-frame postulates, constitutive law, Einstein equivalence. |
| II D, p. 8 | Comparison of metric-affine, absolute and minimally covariant formulations. |
| III A, pp. 8–9 | Surface potentials and the boundary condition needed for Hamiltonian integrability. |
| III B.1–3, pp. 9–11 | Matter-completed Diff, curvature momentum GL charge, isolated frame shifts. |
| III C.1–2, pp. 11–12 | Normal boost/area and Euclidean opening-angle conjugacy; comparison with horizon constructions. |
| IV A, pp. 13–14, Table III | Static spherical canonical representative, Kodama normalisation and Euclidean boundary potential. |
| IV B, pp. 14–18 | RN charges; horizon thermodynamics, potential/charge polarisations and matched lifts. |
| IV C, pp. 18–21 | Dilatonic charged solution; varying lapse and local matter energy. |
| V, pp. 21–22 | Results and open generalisation beyond static spherical symmetry. |
| Appendix A.1a–e, pp. 24–26 | Metric-affine GL/Diff/CDiff currents; why connection-only frame shifts are not independent off-shell gauge symmetries; alternative split transformations. |
| Appendix A.2a–e, pp. 27–29 | Absolute formulation; identically zero GL current; Diff/CDiff; connection, coframe and metric pieces of GL. |
| Appendix B, pp. 29–30 | Trace vector, metric energy, explicit RN/dilaton material currents and exterior integrals. |

The main chain is II A–C → Appendix A → III A–B → IV A → IV B/C. The entropy branch is II C → III B curvature momentum → III C. Appendix B tests local conservation, which is distinct from Hamiltonian differentiability.

## Fields, momenta and variational conventions

Spacetime dimension is $n$ until IV, where $n=4$, $\mu_4=m_P^2=(8\pi G)^{-1}$. Tangent indices are $a,b=0,\ldots,n-1$. The variables are inverse tangent metric $g^{ab}$, coframe $e^a$, connection $A_a{}^b$, flatness multiplier $r^a{}_b$ and matter $p$-form $\psi$. The source uses
$$
Q^{ab}=-Dg^{ab},\quad S^a=De^a=de^a-A_b{}^a\wedge e^b,
\quad R_a{}^b=dA_a{}^b+A_a{}^c\wedge A_c{}^b.
$$
The unusual placement/sign of the connection must be preserved when translating to a conventional $de^a+\omega^a{}_b\wedge e^b$ notation: $\omega^a{}_b=-A_b{}^a$.

For $L=L_G(g,e,Q,S)+r^a{}_b\wedge R_a{}^b+L_M(g,e,\psi,d\psi)$,
$$
q_{ab}=\frac{\partial L}{\partial Q^{ab}},\quad
s_a=\frac{\partial L}{\partial S^a},\quad
\Pi=\frac{\partial L_M}{\partial d\psi}.
$$
Their form degrees are $n-1,n-2,n-p-1$. Matter has no direct independent-connection coupling in this setup. Hyper-momentum matter needs a new derivation.

Writing $\delta L=\delta\Phi\cdot E_\Phi+d\Theta$, the source gives
$$
\Theta=-\delta g^{ab}q_{ab}+\delta e^a\wedge s_a
+\delta A_a{}^b\wedge r^a{}_b+\delta\psi\wedge\Pi,
$$
$$
E_{ab}=g_{ac}Dq^c{}_b-\tfrac12G_{ab}-\tfrac12T_{ab},\quad
E_a=Ds_a-t_a-T_a,
$$
$$
\widehat E^a{}_b=2q^a{}_b-e^a\wedge s_b+Dr^a{}_b,
\qquad E_\psi=\partial L_M/\partial\psi-(-1)^p d\Pi.
$$
Here $G_{ab}$ is the metrical gravitational energy $n$-form, $t_a$ the coframe energy $(n-1)$-form, and $T_{ab},T_a$ their matter counterparts. Do not identify $t_a=0$ with vanishing $G_{ab}$ or vanishing matter energy.

## Einstein-equivalent constitutive law and the role of the frame

The two postulates are: relative frame changes affect the action only by a boundary term (P1), and the chosen canonical frame carries no local coframe energy, $t_a=0$ (P2). The quadratic Lagrangian is $L_G=\tfrac12Q^{ab}\wedge q_{ab}+\tfrac12S^a\wedge s_a$. The essential constitutive equations (13) are
$$
s_a=\frac{\mu_n}{2}\left(Q^{[bc]}{}_a+\delta_a^{[b}X^{c]}
+\tfrac12S_a{}^{bc}-S^{[bc]}{}_a\right)*(e_b\wedge e_c),
$$
$$
q_{ab}=\frac{\mu_n}{4}\left[Q^c{}_{ab}-2Q_{(ab)}{}^c
+\delta^c_{(a}(Q_{b)}+2S_{b)})-g_{ab}X^c-2S_{(ab)}{}^c\right]*e_c,
$$
with $Q^a=Q^{ab}{}_b$, $\widetilde Q^a=Q^{ba}{}_b$, $S_a=S^b{}_{ab}$ and $X^a=Q^a-\widetilde Q^a+2S^a$. Antisymmetrisation has unit weight. The first index of $Q^a{}_{bc}$ denotes its form component, so $Q^{[bc]}{}_a$ is not automatically zero.

Defining $\mathcal E^a{}_b=2q^a{}_b-e^a\wedge s_b$, P1 gives $D\mathcal E^a{}_b=0$ off shell in the flat-connection theory. This follows from
$$
S^a\wedge s_b-e^a\wedge Ds_b=2Dq^a{}_b.
$$
For distortion $X_a{}^b=A_a{}^b-\mathring A_a{}^b$, the component expression and curvature decomposition are
$$
X^a{}_{bc}=\tfrac12Q^a{}_{bc}-Q_{(bc)}{}^a+\tfrac12S^a{}_{bc}-S_{(bc)}{}^a,
$$
$$
0=R=\mathring R+\mathring D X+X\wedge X,
\quad \mathring R=-2X^a{}_{[a|b|}X^b{}_{c]}{}^c-\mathring\nabla_aX^a.
$$
Together with $-2\mu_n X^a{}_{[a|b|}X^b{}_{c]}{}^c*1=Q^{ab}\wedge q_{ab}+S^a\wedge s_a$, this yields $L_G=\frac{\mu_n}{2}(\mathring R+\mathring\nabla_aX^a)*1$. The bulk Einstein equations therefore do not determine the boundary charge without the total derivative and boundary data.

In the absolute formulation $A_a{}^b=V_a{}^c d\Lambda^b{}_c$ is flat by construction. Integrating the variation of $\Lambda$ by parts replaces the connection term in $\Theta$ by $\delta\Lambda^b{}_c V_a{}^c\mathcal E^a{}_b$. The connection equation becomes $D\mathcal E=0$, which is an identity for this constitutive law. The full GL current cancels identically (A27), whereas the metric-affine formulation retains $j_M=M_a{}^b r^a{}_b$. Thus equality of bulk theories does not imply equality of their displayed boundary phase spaces.

## From Noether potentials to Hamiltonians

GL acts by $\delta_M g^{ab}=2M^{(ab)}$, $\delta_Me^a=M_b{}^ae^b$, $\delta_M A_a{}^b=DM_a{}^b$. Covariant Diff acts by
$$
\delta_\xi g^{ab}=-\xi\lrcorner Q^{ab},\quad
\delta_\xi e^a=D(\xi\lrcorner e^a)+\xi\lrcorner S^a,
\quad\delta_\xi A_a{}^b=\xi\lrcorner R_a{}^b.
$$
Appendix A gives, modulo equations and curvature constraints,
$$
J_\xi=dj_\xi-(\xi\lrcorner e^a)E_a-(\xi\lrcorner\psi)\wedge E_\psi
+(\xi\lrcorner r^a{}_b)\wedge R_a{}^b.
$$
Ordinary Diff has the additional $(\xi\lrcorner A_a{}^b)r^a{}_b$ in its potential; covariant Diff has removed the compensating GL transformation. Hence
$$
P_a=-\oint_S[s_a+(@_a\lrcorner\psi)\wedge\Pi],\qquad
P[M]=-\oint_S M_a{}^b r^a{}_b.
$$
For a fixed generator, fixed integration surface and the source's sign convention,
$$
\delta H_\xi=\oint_S(\xi\lrcorner\Theta-\delta j_\xi).
$$
Dirichlet pullbacks of $g,e,A,\psi$ on the boundary tube make the relevant flux term vanish, giving $H_\xi=-\oint j_\xi$ up to reference. In the absolute version, use $\Lambda$ boundary data instead of an independent $A$.

A connection-only shift $\delta_m A=Dm$ is not an independent off-shell metric-affine symmetry (A12–A17). In the absolute formulation it changes $L$ by $d(m\mathcal E)$ and has $\Theta_m=m\mathcal E$, hence $J_m=0$. A.1e/A.2e explain that connection-, coframe- and metric-only transformations must sum to ordinary GL; assigning three independent charges double-counts this split.

For regional applications one must additionally specify allowed variations of the reference frame and corner embedding. In particular $K=\sigma^{-1}\partial_T$ varies with the solution unless boundary lapse is fixed. The ordinary fixed-$\xi$ formula alone does not prove integrability on an unrestricted black-hole parameter family.

## GL curvature momentum and area–angle conjugacy

Let $B^a{}_b=*(e^a\wedge e_b)$. The constitutive law gives $\mathcal E^a{}_b=\frac{\mu_n}{2}DB^a{}_b$. The connection equation integrates to
$$
r^a{}_b=-\frac{\mu_n}{2}B^a{}_b+Y^a{}_b,\qquad DY^a{}_b=0.
$$
The source calls $Y$ covariantly constant; precisely it is covariantly exterior-closed. Global/cohomological reference data need not vanish. Taking $Y=0$ and orienting a corner by $\tfrac12\epsilon^b{}_a\iota_S^*B^a{}_b=dA_S$ gives
$$
P_{\rm boost}=-\oint_S\epsilon^b{}_ar^a{}_b=\mu_n A_S.
$$
For the Euclidean normal connection $A|_\perp=\epsilon a_\perp$, opening angle $\vartheta=\oint a_\perp$, and fixed internal binormal,
$$
\int_{S^1\times S}\Theta_A^\perp=-P_{\rm boost}\,\delta\vartheta.
$$
Smooth closure sets $\vartheta=2\pi$, yielding $S=2\pi\mu_n A_S=A_S/(4G)$ in four dimensions. This is a corner polarisation, not the same unrestricted Dirichlet variation used above. Neither the existence of the area charge nor its normalisation supplies a full GL edge-mode algebra or regional gluing construction.

## Static spherical canonical frame and its printed nonmetricity problem

Write $F=f^2$ only in this subsection. The source's metric and frame are
$$
ds^2=-F\,dT^2+\frac{\sigma^2}{F}dr^2+r^2d\Omega_2^2,
\quad dt=dT+(\sigma/F-1/\sigma)dr,
$$
$$
e^0=\sigma dt,\quad e^i=\lambda dx^i,\quad
\frac{\lambda'}\lambda=\frac{(F-\sigma^2)\sigma'}{(F+rF'-\sigma^2)\sigma},\quad \lambda(\infty)=1.
$$
The dual vectors are $@_0=K=\sigma^{-1}\partial_T$ and $@_i=\lambda^{-1}\partial_i-(\sigma^2-F)n_i/(\lambda\sigma F)\partial_T$. The construction requires a nonsingular choice of frame and treatment of zeros of the ODE denominator; global uniqueness is not proved. Torsion is $S^0=d\sigma\wedge dt$, $S^i=d\lambda\wedge dx^i$ in the displayed zero-connection gauge.

**Checked / Failed boundary at (40).** Directly transforming (36) into (37) gives the radial coframe metric
$$
(g_{ab})_{0r}=\begin{pmatrix}
-F/\sigma^2&(1-F/\sigma^2)/\lambda\\
(1-F/\sigma^2)/\lambda&(2-F/\sigma^2)/\lambda^2
\end{pmatrix}.
$$
Its inverse is
$$
(g^{ab})_{0r}=\begin{pmatrix}
-2+F/\sigma^2&\lambda(1-F/\sigma^2)\\
\lambda(1-F/\sigma^2)&\lambda^2F/\sigma^2
\end{pmatrix}.
$$
By Table II, $Q^{ab}=-dg^{ab}$, so $Q_{ab}=dg_{ab}$ in this gauge. However (40a) prints $Q_{00}=-d(h/\sigma^2)$ with $h=2-F+(\sigma^2-1)/F$. This does not equal $d(-F/\sigma^2)$. Already at $\sigma=\lambda=1$, (40a) and (48) give $+dF$, whereas the displayed definition gives $-dF$. PDF p. 13 and TeX agree, so this is not an extraction error. Equations (36)–(37), Table II and (40) cannot all hold as printed under the stated tensor conventions. Do not use (40) to certify (49)/(79); the algebraic checks of the reported charges below are independent of that defective intermediate formula.

The same component calculation gives $(\mathcal L_Kg)_{Tr}=F\sigma'/\sigma^2$. Thus $K$ is generally non-Killing; rescaling its boundary restriction is not a globally static Euclidean coordinate change. The source's Euclidean prescription is on a fixed-radius tube:
$$
\Omega=-\frac{4\pi m_P^2r}{\sigma^2}(rff'+f^2-\sigma^2),\quad
\beta=\sigma_+\beta_T,\quad\Omega=\Omega_T/\sigma_+\text{ at the horizon}.
$$
This is a relation between normalisations at a specified saddle, not by itself a field-space integrability theorem.

## RN: two boundary polarisations and a matched horizon charge

For $L_M=-F_{\rm em}\wedge*F_{\rm em}/(8\pi)$, $\Pi=-*F_{\rm em}/(4\pi)$, $\oint\Pi=q$, choose
$$
A=(A_\infty-q/r)dt,\quad f^2=1-r_S/r+r_Q^2/r^2,\quad
r_Q^2=q^2/(8\pi m_P^2),\quad m_S=4\pi m_P^2r_S.
$$
The reported gravitational charge is $E_g=m_S-q^2/(2r)$; the matter term is $-q\Phi=q^2/r-qA_\infty$, with $\Phi=@_0\lrcorner A=A_\infty-q/r$. Therefore
$$
E^{(A)}(r)=m_S+q^2/(2r)-qA_\infty.
$$
The boundary symplectic potential is $\int_\Gamma\Theta_M=\int q\delta\Phi\,d\tau$, so the Dirichlet phase space fixes $\Phi$. The additive constant is boundary source data, not irrelevant to this Hamiltonian.

Adding $-d(A\wedge\Pi)$ gives $\Theta_M^{(q)}=-A\wedge\delta\Pi$ and $j_\xi^{(q)}=j_\xi^{(A)}-\xi\lrcorner(A\wedge\Pi)$. For a static electric sphere, $\xi\lrcorner\Pi=0$, hence
$$
E^{(q)}=E^{(A)}+q\Phi=m_S-q^2/(2r).
$$
With $r_+r_-=r_Q^2$, $r_++r_-=r_S$,
$$
T=\frac{r_+-r_-}{4\pi r_+^2},\quad S=8\pi^2m_P^2r_+^2,
\quad W=\frac{q^2}{8\pi r_+^4},\quad V=\frac{4\pi r_+^3}{3}.
$$
Then $T\,dS+W\,dV=4\pi m_P^2dr_+$ and $2TS+3WV=4\pi m_P^2r_+$. For fixed $A_+=\Phi(r_+)$,
$$
dE_+^{(A)}=T\,dS+W\,dV-A_+dq,\quad
\Omega^{(A)}=E_+^{(A)}-TS+qA_+=m_S/2.
$$
For fixed $q$, $E_+^{(q)}=4\pi m_P^2r_+$ and $dE_+^{(q)}=T\,dS+W\,dV$, with the numerically equal $\Omega^{(q)}=m_S/2$. Equal free-energy values do not identify the allowed variations of the two actions.

A combined Diff+$U(1)$ generator has $P^{(A)}[\xi,\alpha]=E^{(A)}-q\alpha$. At fixed $A_+$ choose $\alpha_+=-A_+$, obtaining
$$
\widehat E_+=P^{(A)}[\xi,-A_+]=P^{(q)}[\xi,0]=4\pi m_P^2r_+.
$$
This compares two separately restricted phase spaces. Under $A_\infty\mapsto A_\infty+c$, the charge shift and lift shift cancel. It does not construct one field-independent generator over unrestricted $A_+,q$ variations. Extremality is a limit, since the smooth nonextremal Euclidean disk degenerates.

## Dilaton: lapse, exterior energy and the second test

The matter action is $L_M=-e^{-2\phi/m_P}F_{\rm em}\wedge*F_{\rm em}/(8\pi)-d\phi\wedge*d\phi$. Fix $\phi_\infty$; otherwise scalar boundary work must be included. Set
$$
a=r_q=\frac{e^{2\phi_\infty/m_P}q^2}{2m_S},\quad R=\sqrt{r^2+a^2},\quad
f^2=1-\frac{r_S}{R+a},\quad\sigma=r/R,
$$
$$
e^{2\phi/m_P}=e^{2\phi_\infty/m_P}\frac{R-a}{R+a},\quad
\lambda=\left(1-\frac{a^2}{(r_S-a)R}\right)\sqrt{\frac{R-a}{R+a}},
$$
$$
A=\left(A_\infty-\frac{qe^{2\phi_\infty/m_P}}{R+a}\right)dt.
$$
These expressions solve the stated frame ODE and electric-potential radial integral, checked exactly. The scalar contributes $-2\delta\phi*d\phi$ to $\Theta$ but no $\xi\lrcorner\phi$ surface-potential term because it is a 0-form.

The reported gravitational charge and matter completion are
$$
E_g=\frac{4\pi m_P^2}{r}\left(\frac{r_SR^2}{R+a}-a^2\right)
=4\pi m_P^2r(1-f^2/\sigma^2),
$$
$$
E^{(A)}=E_g+\frac1\sigma\left(\frac{2m_Sa}{R+a}-qA_\infty\right),
\quad E^{(q)}=E^{(A)}+q(K\lrcorner A)=E_g.
$$
The $1/\sigma$ multiplies the Maxwell contribution because $A_t$ and $K\lrcorner A$ differ. In the nonextremal regime $r_S>2a$, $r_+^2=r_S(r_S-2a)$,
$$
T_K=\frac{r_S-a}{4\pi r_Sr_+},\quad T_T=\frac1{4\pi r_S},\quad
\Omega=\frac{2\pi m_P^2}{r_+}(r_S-2a)(r_S+a),
$$
$$
S=8\pi^2m_P^2r_+^2,\quad
\widehat E_+=E_+^{(A)}+qA_+=4\pi m_P^2r_+,
\quad\Omega=\widehat E_+-T_KS.
$$
The equation is an exact identity of the reported expressions. Its interpretation as a first law with a solution-dependent generator still requires the boundary/generator prescription stated earlier.

## Appendix B: local currents are a different observable

For RN, $\rho=q^2/(8\pi r^4)$ and
$$
T_0=-\rho r^2dr\wedge d\Omega,\quad
T_i=\frac{\rho(1-f^2)r^2}{f^2}n_i dr\wedge d\Omega
+\rho r^2n_i dT\wedge d\Omega-\rho r\epsilon_{ijk}n_jdT\wedge dr\wedge dn_k.
$$
Using $\epsilon_{ijk}dn_j\wedge dn_k=2n_i d\Omega$, its derivative has coefficient $-[(\rho r^2)'+2\rho r]=0$. For the dilaton,
$$
\rho_F=\frac{m_P^2r_Sa}{r^2(R+a)^2},\quad
\rho_\phi=\frac{m_P^2a^2f^2}{r^4},\quad \rho=\rho_F+\rho_\phi,\quad p=-\rho_F+\rho_\phi.
$$
The spatial current replaces the RN coefficients by $(\rho(\sigma^2-f^2)/\lambda f^2,-p\sigma/\lambda,p\sigma/\lambda)$. Conservation reduces to
$$
(\sigma'/\sigma-\lambda'/\lambda)p-(\rho+p)f'/f=0,
$$
verified for the solution above. Appendix B also computes a nonzero metrical gravitational energy for $\sigma'\ne0$ despite $t_a=0$. Thus canonical-frame energy is not the statement that every gravitational energy tensor vanishes.

For $x=r/(R+a)$ and $k=r_S/(2a)>1$, the source gives
$$
U_\phi=\frac{m_S(1-x)}{12kx}[3(1+x)-k(1-x)(x^2+2x+3)],
$$
$$
U_{\rm ext}=\frac{m_S(1-x)}{6x}(2x^3+2x^2-x+3),
\quad E^{(A)}(r;0)-m_S=U_{\rm ext}-U_\phi.
$$
The algebraic decomposition is checked; the positive excess numerator is
$k(x^3+x^2-x+3)-(1+x)=(k-1)(x^3+x^2-x+3)+x^2(1+x)+2(1-x)>0$ for $0<x<1$. Positivity of the scalar energy itself uses the static exterior $r\ge r_+$, not arbitrary continuation to the centre. The local integral $-\int T_0$ is distinct from the matter-completed Hamiltonian. Cartesian momentum integrates to zero by $\int n_i d\Omega=0$, even when local spatial currents persist.

## Equation ledger and how to read this long paper

| Equations | Reusable object | Boundary of use |
|---|---|---|
| (1)–(4), A23–A27 | $\Theta$ in two formulations | Independent connection versus flat-by-construction connection. |
| (13)–(18) | Constitutive law and Einstein total derivative | Source-derived tensor chain; printed example defect prevents full certification. |
| (19)–(25), A6/A10/A31 | Matter-completed potential and $\delta H$ | Boundary polarisation and fixed generator required. |
| (26)–(35) | $r=-\mu B/2+Y$, boost/angle pair | $Y=0$, orientation, fixed binormal and smooth Euclidean corner. |
| (36)–(41) | Canonical spherical representative | (40) fails the stated metric/nonmetricity check. |
| (42)–(74) | RN energies and matched gauge lift | Algebra checked; ensemble restrictions explicit. |
| (75)–(89), B1–B14 | Dilaton lapse, thermodynamic and current identities | Exact reduced checks, no unrestricted phase-space theorem. |

Read III A–B and IV B first for the direct CPS application, with II A and Appendix A.1c as notation references. Read III C separately for the entropy/corner question. The technically essential long branch is IV A → IV C → Appendix B; inspect the (40) defect before reusing constitutive calculations. II D and the literature comparison in III C are background; every appendix subsection is mapped above, but alternative-GL component expansions are reference material rather than a required first reading.

## Verification record and remaining limits

**Verified:** Mathematica exact zero residuals for the dilaton frame ODE, electric-potential derivative, scalar derivative, Misner–Sharp rewrite, horizon root, horizon energy, Euclidean $\Omega$, horizon thermodynamic identity, material-force cancellation, B12 decomposition and excess factorisation; RN horizon differential identity, Smarr identity, $\Omega$, fixed-potential charge coefficient, Legendre relation, local current conservation; and $2\pi\mu_4A=A/(4G)$. Eighteen targets, all zero. The xAct-loaded kernel independently reproduced the coordinate/coframe metric, its inverse and $(\mathcal L_Kg)_{Tr}$ by explicit components; no claim of an abstract xTensor proof is made. Rendered PDF pp. 13–14 confirms the labels, frame, nonmetricity and normalisation formulae used for the defect check.

**Assumptions:** Lorentzian signature $(-+++)$; source connection convention; outward sphere orientation and source's minus sign in $P$; $r>0$, $m_P>0$, nonextremal $r_S>2a$; exterior region where positivity is invoked; fixed $\phi_\infty$; static radial Maxwell field; specified electric boundary polarisation; $Y=0$ for the area result; fixed generator/corner for the simple Hamiltonian variation.

**Failed:** (40a), and its RN reduction in (48), are incompatible with (36)–(37) and Table II's $Q^{ab}=-Dg^{ab}$ in the displayed gauge. The contradiction is already a sign at $\sigma=\lambda=1$, and is not repaired by raising the indices with the actual metric. This note does not propagate (40) as verified input.

**Blocked:** Certification of the complete printed nonmetricity → constitutive $s_a$ → surface charge chain is blocked by that source inconsistency. A corrected nonmetricity convention/formula and a fresh full constitutive calculation are needed. Retrieval succeeded; no source-access blocker.

**Not verified:** General canonical-frame existence/uniqueness, rotating/dynamical horizons, unrestricted field-dependent-generator integrability, full GL corner algebra, global $Y$ cohomology, generic tensor constitutive identities, and a first-principles Euclidean path-integral derivation. Algebraic thermodynamic identities do not establish these claims.

Official source: [arXiv:2610.16799v1](https://arxiv.org/abs/2610.16799v1). Retrieved PDF, TeX, renderings and verification files remain in temporary storage outside the vault; no attachment was added. Daily placement: [[2026_10_14_overview]].
