---
paper id: 2611.03123v1
title: Integrable mass of Kerr-Newman-Bertotti-Robinson black hole
authors:
  - Li Hu
  - Rong-Gen Cai
  - Shan-Wen Jiang
  - Shao-Jiang Wang
publication date: 2026-11-02T13:38:36
abstract: |-
  The source constructs a mass for the Kerr-Newman-Bertotti-Robinson family by requiring a solution-dependent combination of time, rotation and Maxwell surface-charge variations to be exact, with Kerr-Newman initial normalization. Rationalizing the electric parameter gives a non-characteristic polynomial PDE; a rescaled recurrence terminates, fixes a local analytic mass and then reproduces the first law and Smarr relation.
comments: "8 pages, no figure"
url: https://arxiv.org/abs/2611.03123v1
summary: "A reusable finite-family CPS integrability construction, with an exact polynomial recurrence and a local analytic uniqueness domain that must not be confused with a global boundary-phase-space theorem."
tags: []
---

# Integrability as an initial-value problem on the solution family

**Correct under precise conditions:** taking the source's evaluated Barnich-Brandt charge one-form, angular momentum and electric charge as input, the polynomial master equation has the stated normalized local analytic solution near \(B=0\), \(m>0\), on a regular rational coordinate patch. Its closed mass, reconstructed generator, recurrence termination and thermodynamic identities pass the independent algebraic checks below. This is conditional on the original four-dimensional charge evaluation and does not prove a unique global energy for every choice of boundary conditions or every component of parameter space.

Immediate use: a concrete model of how a nonintegrable time-translation charge can be completed by a field-dependent generator and an explicit normalization condition. The construction helps separate CPS integrability, choice of time/gauge generator and thermodynamic identities when translating a gravitational response calculation into an energy.

All source material is **Source-derived** unless labelled **Checked**. All sections I–VI and the complete End Matter were read. The pinned PDF has 8 pages; pages 3, 4, 5 and 8 were rendered and visually inspected for the master equation, recurrence, generator and polynomial input.

## Source map and dependence

| Source | Role |
|---|---|
| I | Explains why a first law used to define a mass cannot subsequently serve as an independent check of that definition. |
| II | Exact Einstein-Maxwell family, axial coordinate/gauge normalization, branch and horizon data. |
| III | Surface charges, nonexact time-translation one-form, rational coordinate change and annihilator PDE. |
| IV | Non-characteristic KN seed; rescaling by \(D^n\); symbolic recurrence and proof of termination. |
| V | Reconstruction of the field-dependent generator and subsequent first-law/Smarr checks. |
| VI | Scope of the claimed mass ambiguity resolution. |
| End Matter (36) | Four numerators \(\Xi_i\) of the evaluated time-charge variation. |
| End Matter (37)–(38) | Polynomial master vector and \(V(D)=\Gamma D\). |
| End Matter (39)–(40) | General-rescaling ninth-order factor, distinct from the metric \(P_0\). |

Read III–IV for the new construction. II fixes what is actually being varied; V is downstream validation, and End Matter is needed to reproduce the computation. There is no long-paper page-count exemption: all useful auxiliary polynomial structure was checked.

## Einstein-Maxwell data and conventions

The action is

$$
I_{EM}=\frac1{16\pi}\int\sqrt{-g}\,(R-F_{\mu\nu}F^{\mu\nu})d^4x.
$$

The source uses \((m,a,e,B)\), with azimuthal period \(2\pi\). Its line element is

$$
\begin{aligned}
ds^2=\Sigma^{-2}\bigg[&-\frac\beta{\rho^2}
 \left(dt-\frac{a\sin^2\theta}{P_0}d\varphi\right)^2
 +\frac{\rho^2}\beta dr^2+\frac{\rho^2}P d\theta^2\\
&+\frac{P\sin^2\theta}{\rho^2}
 \left(a\,dt-\frac{r^2+a^2}{P_0}d\varphi\right)^2\bigg],
\end{aligned}
$$

$$
\begin{gathered}
\rho^2=r^2+a^2\cos^2\theta,\quad P=1+B^2\zeta^2\cos^2\theta,\quad
P_0=1+B^2\zeta^2,\\
\beta=I\Delta,\quad I=(1+kBr)^2+B^2r^2,\quad
\Sigma^2=I-B^2\Delta\cos^2\theta,\\
\Delta=ua^2-2mr+(u-e^2/a^2)r^2,\quad u=1+k^2,\\
k=\frac{es-amB}{a(1+e^2B^2)},\quad
\zeta^2=m^2-u^2a^2+ue^2,\\
s^2=1+(e^2-a^2)B^2-(m^2+e^2)a^2B^4.
\end{gathered}
$$

Here \(I\) is a metric function, not the action or the imaginary unit. The gauge chosen for the Maxwell potential makes \(A_\varphi=0\) on both rotation axes. Explicitly,

$$
\begin{aligned}
A={}&\frac a\Sigma\left[-uB+\frac r{\rho^2}(mB\cos^2\theta-k)\right]dt\\
&+\frac1{P_0\Sigma}\left[ua^2B+
 \frac r{\rho^2}\{-mB(r^2+a^2)\cos^2\theta+ka^2\sin^2\theta\}
 -kr-\frac1B\right]d\varphi\\
&+\frac1{P_0B}\frac{s+ameB^3}{1+e^2B^2}d\varphi.
\end{aligned}
$$

The apparent \(1/B\) pieces must be combined before taking \(B\to0\); discarding the constant gauge term changes a charge generator. Choose \(s>0\), \(\zeta>0\), with the appropriate real metric branch, and

$$
r_\pm=\frac{m\pm\zeta}{u-e^2/a^2},\qquad
u_e:=u-e^2/a^2>0,\quad m>\zeta,
$$

when both horizons are positive. Extremality and degenerate coordinate limits require separate handling.

**Checked, narrow tensor limit:** xCoba independently verifies the Einstein-Maxwell equations and zero Ricci scalar for the nonrotating \(B=0\) Reissner-Nordström limit, with \(f=1-2m/r+e^2/r^2\), \(A_t=-e/r\), and normalization \(G_{ab}=2(F_{ac}F_b{}^c-g_{ab}F^2/4)\). This is not a verification of the full rotating \(B\ne0\) metric/potential or its surface integrals.

## The charge one-form and its generator dependence

For an exact symmetry \((\xi,\lambda_g)\),
\(\mathcal L_\xi g=0\), \(\mathcal L_\xi A+d\lambda_g=0\). The finite charge is a parameter-space integral of the surface two-form

$$
\mathcal Q_{(\xi,\lambda_g)}[g,A;\bar g,\bar A]
 =\int_{S^2}\int_{(\bar g,\bar A)}^{(g,A)}k_{(\xi,\lambda_g)}[\delta g',\delta A';g',A'].
$$

For fixed symmetry labels, path independence requires the integrated antisymmetrized field variation of \(k\) to vanish. The source combines the Einstein and Maxwell Barnich-Brandt contributions. It defines \(h_{\mu\nu}=\delta g_{\mu\nu}\), raises \(h\) with the background metric, and uses \(\delta F^{\mu\nu}=g^{\mu\rho}g^{\nu\sigma}\delta F_{\rho\sigma}\) in its formula, with additional explicit metric-variation terms. This last symbol is not by itself the full variation of the raised background tensor.

In a covariant implementation, retain the oriented surface measure and decide explicitly whether epsilon and the charge integrand are tensors or densities; the source writes orientation \(\epsilon_{tr\theta\varphi}=1\). The calculation below begins with its already integrated \(\Xi_i\). It does not silently count that input as a new four-dimensional CPS computation.

The evaluated rotation and constant-gauge charges are

$$
J=\mathcal Q_{(-\partial_\varphi,0)}=\frac{ma}{P_0^2},\qquad
Q=\mathcal Q_{(0,-1)}=\frac e{P_0}.
$$

The coordinate-time one-form \(\omega=\slashed\delta\mathcal Q_{(\partial_t,0)}\) is not assumed exact. Seek instead

$$
d(M^2)=\lambda\omega+\eta\,dJ+\tau\,d(Q^2).
$$

The multiplier \(\lambda\) here is distinct from the constant Maxwell gauge label \(\lambda_g\). For nonzero \(Q\), replacing \(dQ\) by \(dQ^2\) is locally harmless; at \(Q=0\) it loses rank, so extension there must be checked by continuity of the final formulas rather than assumed by counting equations.

## Rationalizing the electric parameter

Introduce the local \((m,a,k,B)\) chart,

$$
Z=1-ua^2B^2,\qquad p=e^2=\frac{a^2(k+mB)^2}Z,
$$

$$
D=ZP_0=1+(m^2-2ua^2)B^2+2kuma^2B^3+u^3a^4B^4.
$$

On a sign branch continuous from \(B=0\), \(e=a(k+mB)/\sqrt Z\). At the KN seed \(e=ak\), so the chart needs \(a\ne0\). Squaring to obtain \(p\) must not erase the chosen electric sign or the original \(s>0\) branch.

The pulled-back one-form is

$$
\omega=\frac1{D^2}(\Xi_mdm+\Xi_ada+\Xi_kdk+\Xi_BdB),
$$

with the exact input polynomials

$$
\begin{aligned}
\Xi_m={}&Z[1-(2m^2+ua^2)B^2-2kuma^2B^3],\\
\Xi_a={}&uaB\{k+3mB-5km^2B^2
 -m[3m^2+2u(3u-1)a^2]B^3\\
&\hspace{2em}-kua^2(2m^2+u^2a^2)B^4+u^3ma^4B^5\},\\
\Xi_k={}&a^2B\{2u-1+3kmB-[(7u-5)m^2+2u^2a^2]B^2\\
&-km[3m^2+2u(4u-1)a^2]B^3
 +[2um^2a^2+u^3(2-u)a^4]B^4+3ku^3ma^4B^5\},\\
\Xi_B={}&kua^2+m(4ua^2-3m^2)B-9kum^2a^2B^2
 -u^2(7u-1)ma^4B^3\\
&+ku^2a^4(2m^2-u^2a^2)B^4+2u^4ma^6B^5.
\end{aligned}
$$

These surface-integral outputs are **Source-derived**. Their mutual algebraic consistency, all subsequent eliminations, and the final generator identity were independently checked.

## The polynomial master equation and local uniqueness

The three one-forms \(\omega,dJ,dQ^2\) generically span a three-dimensional subspace of the four-dimensional solution-space cotangent space. Choose their annihilating vector \(V\). Then any proposed mass satisfies

$$
V(M^2)=0,\qquad V=A_m\partial_m+A_a\partial_a+A_k\partial_k+A_B\partial_B.
$$

The source fixes a polynomial normalization by \(A_B|_{B=0}=m\). Its complete coefficients are

$$
\begin{aligned}
A_m={}&-kuma^2+m^2[3m^2-(1+2u)a^2]B
 +kma^2[(1+9u)m^2-u^2a^2]B^2\\
&+m^2a^4u(1-7u+9u^2)B^3
 -kma^4u[m^2+u^2(1-3u)a^2]B^4,\\
A_a={}&kua^3+ma[m^2+(1-2u)a^2]B
 +ka^3[(3u-1)m^2-3u^2a^2]B^2\\
&+ma^5u(-1-u+3u^2)B^3
 +ka^5u[m^2+u^2(1+u)a^2]B^4,\\
A_k={}&-m^2+u(1-u)a^2+km(m^2-2ua^2)B
 +m^2a^2u(3u-1)B^2\\
&+kma^4u^2(3u-1)B^3
 -a^4u^2[m^2+u^2(1-u)a^2]B^4,\\
A_B={}&m+k(u-1)a^2B-m[2m^2+(2-u)a^2]B^2
 -ka^2[(6u-2)m^2-u^2a^2]B^3\\
&+ma^2[m^2+(-u+7u^2-6u^3)a^2]B^4
 +ka^4u[m^2+u^2(1-2u)a^2]B^5.
\end{aligned}
$$

**Checked:** \(V(J)=0\), \(V(Q^2)=0\), and \(\sum_iA_i\Xi_i=0\) vanish as exact rational/polynomial identities. The \((m,a,k)\) minor of \((\omega,dJ,dQ^2)\) at \(B=0\) is \(2ma^2k\). This explicitly identifies a regular rank-three patch with \(m>0,a\ne0,k\ne0\).

The KN normalization is the full initial function

$$
M^2(m,a,k,0)=m^2.
$$

Polynomial coefficients and \(A_B|_0=m\ne0\) make \(B=0\) non-characteristic. The Cauchy-Kovalevskaja theorem therefore supplies a unique analytic solution near each regular seed point. Four equations for four symbols would not itself prove uniqueness; the non-characteristic initial-value argument does. No global continuation through \(D=0\), \(Z=0\), a zero-rank locus or a change of physical branch is implied.

## Rescaling, recurrence and an actual all-order termination proof

Set \(W_n=D^nM^2\). Direct differentiation gives

$$
V(D)=\Gamma D,
$$

$$
\Gamma=2B(m+kua^2B)
 [m^2-2ua^2+kma^2(1+2u)B+a^2\{m^2+u^2(1+u)a^2\}B^2].
$$

**Checked:** the identity is exactly zero after polynomial expansion. Thus
\(V(W_n)-n\Gamma W_n=0\). Write
\(A_\psi=\sum_{j=0}^4A_{\psi,j}B^j\), \(A_B=m+\sum_{j=1}^5b_jB^j\), \(\Gamma=\sum_{j=1}^4\gamma_jB^j\), \(w_0=m^2\), \(\gamma_0=0\). The coefficient recursion is

$$
\begin{aligned}
w_\ell^{(n)}=-\frac1{\ell m}
 \sum_{j=0}^{\min(4,\ell-1)}\bigg[&\sum_{\psi=m,a,k}
 A_{\psi,j}\partial_\psi w_{\ell-j-1}^{(n)}\\
&+\{(\ell-j-1)b_{j+1}-n\gamma_j\}w_{\ell-j-1}^{(n)}\bigg].
\end{aligned}
$$

In particular,

$$
w_1^{(n)}=2kuma^2,\qquad
w_2^{(n)}=(n-3)m^4+(4+5k^2-2nu)m^2a^2+uk^4a^4.
$$

**Checked:** an independent recurrence implementation reproduces both expressions for symbolic \(n\), and the full End Matter identity \(w_9^{(n)}=(n-3)\widehat w_9^{(n)}\), including all five dimensionless polynomials \(p_0,\ldots,p_4\) in its \(x=ua^2/m^2\) decomposition. These \(p_i\) are unrelated to metric \(P_0\).

At \(n=3\), the separately computed sequence satisfies

$$
w_9^{(3)}=w_{10}^{(3)}=w_{11}^{(3)}=w_{12}^{(3)}=w_{13}^{(3)}=0
$$

as polynomial identities, not merely at selected parameter points. Each future step depends on only the preceding five coefficient functions and their derivatives, so induction makes the entire remaining tail zero. One vanishing coefficient or a finite numeric Taylor fit would not suffice.

The result is \(W_3=ZS_6\), where

$$
\begin{aligned}
S_6={}&m^2+2kuma^2B+(uk^4a^4-m^2a^2)B^2
 +2kma^2(m^2-2ua^2)B^3\\
&+m^2a^2[m^2+u(4k^2-1)a^2]B^4
 +2kuma^4(m^2+u^2a^2)B^5+u^3m^2a^6B^6.
\end{aligned}
$$

Both the reconstructed degree-eight polynomial and
\(V(ZS_6)-3\Gamma ZS_6=0\) are independently **Checked**. Therefore

$$
M^2=\frac{ZS_6}{D^3}=\frac{S_6}{Z^2P_0^3}
 =\frac{m^2+2kuma^2B+B^2(ue^4+m^2e^2+um^2a^2)}{P_0^3}.
$$

Mathematica verifies the last equality using \(e^2=a^2(k+mB)^2/Z\). The branch \(M|_{B=0}=m>0\) selects the positive square root locally. The rational expression may have a larger domain than the proved analytic patch; its existence alone does not extend uniqueness globally.

## Reconstructing the canonical energy generator

The source writes

$$
dM=\alpha(\omega-\Omega_{int}\,dJ-\Phi_{int}\,dQ),
\quad
\alpha=\frac\lambda{2M},\quad
\Omega_{int}=-\frac\eta\lambda,\quad
\Phi_{int}=-\frac{2Q\tau}\lambda.
$$

With

$$
L=m+k^3a^2B-2ma^2B^2+km^2a^2B^3+mu^2a^4B^4,
$$

$$
\alpha=\frac{ZL}{MD^2},\qquad
\Omega_{int}=\frac{aB(k+mB)P_0[-1+kmB+u^2a^2B^2]}L,
$$

$$
\Phi_{int}=-\frac{eB(k+mB)(m+kua^2B)}L.
$$

Equivalently the multipliers, with no square roots, are

$$
\lambda=\frac{2ZL}{D^2},\quad
\eta=-\frac{2ZaB(k+mB)P_0[-1+kmB+u^2a^2B^2]}{D^2},\quad
\tau=\frac{ZB(k+mB)(m+kua^2B)P_0}{D^2}.
$$

**Checked:** each of the four coefficients in
\(d(M^2)-\lambda\omega-\eta dJ-\tau dQ^2\) vanishes exactly. This is stronger than only testing \(V(M^2)=0\), because it explicitly reconstructs the span coefficients.

By the charge signs above the symmetry pair is locally
\((\xi_M,\lambda_{g,M})=(\alpha(\partial_t+\Omega_{int}\partial_\varphi),\alpha\Phi_{int})\). It is solution dependent. The variation is the surface-charge one-form evaluated with that generator on each solution; it is not the unrestricted differential of a product of parameters and fixed-generator finite charges. A field-dependent-symmetry implementation must keep the corresponding adjusted variation convention, rather than adding spurious \(d\alpha,d\Omega_{int},d\Phi_{int}\) terms to this definition.

## Thermodynamics verified after constructing the mass

For the outer horizon, let \(I_+=(1+kBr_+)^2+B^2r_+^2\). The source gives

$$
\Omega_H=\frac{aP_0}{r_+^2+a^2},\quad
\Phi_H=\frac{er_+}{r_+^2+a^2},\quad
T_H=\frac{\zeta I_+}{2\pi(r_+^2+a^2)},\quad
S=\frac{\pi(r_+^2+a^2)}{P_0I_+}.
$$

Canonical potentials are
\(T=\alpha T_H\), \(\Omega=\alpha(\Omega_H-\Omega_{int})\), \(\Phi=\alpha(\Phi_H-\Phi_{int})\). Their background-time normalization is not optional.

A separate exact check proceeds without differentiating radicals. Introduce an unspecialized horizon root \(r\), use the polynomial constraint \(\Delta(r)=0\), and form

$$
\mathcal C(S,J,Q)=\frac S{4\pi}+\frac{Q^2}2
 +\frac{\pi(Q^4+4J^2)}{4S}.
$$

After the mass has already been fixed by the integrability recurrence, **Checked:** the numerator of \(M^2-\mathcal C\) has zero polynomial remainder modulo \(\Delta\). The same exact reduction gives

$$
MT=\frac12\partial_S\mathcal C,\qquad
M\Omega=\frac12\partial_J\mathcal C=\frac{\pi J}S,\qquad
M\Phi=\frac12\partial_Q\mathcal C
 =\frac Q2\left(1+\frac{\pi Q^2}S\right).
$$

In this calculation \(\zeta=(u-e^2/a^2)r-m\) selects the outer-root sign. These algebraic identities imply

$$
dM=T\,dS+\Omega\,dJ+\Phi\,dQ,
\qquad M=2TS+2\Omega J+\Phi Q.
$$

The CR expression was used here as a **downstream equality to test**, not as input to the independent mass reconstruction. Denominators must remain nonzero throughout the polynomial remainder argument. The exact Euler/Smarr residual also vanishes.

For a supplementary finite check, all four first-law residuals in \((m,a,k,B)\) and the Smarr residual vanish to approximately 42–44 decimal places at three regular samples:
\((2,1,1/4,1/20)\), \((3,4/5,1/3,1/30)\), and \((2,7/10,-1/5,1/40)\), using 45-digit arithmetic and the continuous signed electric branch. The negative-electric example checks a sign not visible in \(Q^2\) alone. These samples are corroboration of the exact algebraic reductions, not a replacement for them.

There is no explicit magnetic work term in this assignment even though the solution chart varies \(B\). That is a property of this mass/generator normalization, in which \(M\) obeys the three-variable CR relation. It is not a demonstration that every fixed-boundary ensemble in an external magnetic background has the same first law or vanishing symplectic flux.

## Transfer to CPS work and verification boundary

The reusable construction is the dependency chain

$$
\text{action and surface-charge convention}
\longrightarrow(\omega,dJ,dQ^2)
\longrightarrow V\longrightarrow\text{normalized initial-value PDE}
\longrightarrow M^2\longrightarrow\text{generator}\longrightarrow\text{thermodynamics}.
$$

It avoids using the first law twice, but its strength depends on independently correct input charges. For the vault, state which generator is normalized at the reference background, which boundary data may vary, whether flux vanishes, and where the annihilator has the asserted rank before transferring this finite-family construction to a full regional phase space.

**Verified:** exact annihilator identities for \(\omega,J,Q^2\); seed rank minor and non-characteristic coefficient; \(V(D)=\Gamma D\); general-\(n\) first/second and ninth recurrence coefficients; all five termination zeros; exact degree-eight reconstruction and mass PDE; compact mass equality; all four reconstructed-generator components; exact horizon-polynomial CR/potential/Smarr reductions; three numerical first-law tests with four variation directions; xCoba Einstein-Maxwell equations in the stated RN limit.

**Assumptions:** the source's integrated charge input and gauge normalization; a regular rank-three coordinate patch with nonzero \(m,a,k\) near the KN seed; chosen signed electric/positive \(s\) branch; \(Z,D,L,M\) and horizon denominators nonzero; real \(\zeta>0\), allowed horizons and positive mass; fixed normalization function \(M^2|_{B=0}=m^2\). Analytic uniqueness is local. Rank-changing/neutral/nonrotating/extremal limits require their own continuation argument.

**Failed:** no executed source identity failed. Unqualified global uniqueness, or deriving uniqueness solely from four equations/four unknowns, would exceed the proved argument.

**Blocked:** no retrieval or computation-service failure remains. The source publishes the integrated \(\Xi_i\), but no complete intermediate component-integral calculation/implementation; the full general rotating \(B\ne0\) tensor and surface-charge evaluation has not been independently reconstructed here. The mass certification is conditional on that input, rather than an assertion that an algebraic residual verifies its four-dimensional origin.

**Not verified:** full rotating KN-BR Einstein-Maxwell solution, general \(S^2\) Barnich-Brandt integrals and density convention from first principles, global parameter-space uniqueness, physical boundary ensemble/flux and admissible large-gauge transformations, all special-subfamily limits, and quantum thermodynamics.
