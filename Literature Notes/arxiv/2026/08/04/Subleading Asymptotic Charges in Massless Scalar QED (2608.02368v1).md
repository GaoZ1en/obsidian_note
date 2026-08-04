---
paper id: 2608.02368v1
title: Subleading Asymptotic Charges in Massless Scalar QED
authors:
  - Éanna É. Flanagan
  - Zhihan Liu
publication date: 2026-08-03T15:15
abstract: |-
  The paper studies a massless scalar-QED phase space in which scalar radiative data have compact support on null infinity while the leading angular gauge field has inverse-time endpoint tails. The resulting polyhomogeneous radial expansion supports three finite first-subleading scattering charges: a renormalized soft charge, a logarithmic tail-difference charge, and a new tail-sum charge whose linearly growing large-gauge generator remains conjectural.
comments: "28 PDF pages"
url: https://arxiv.org/abs/2608.02368v1
summary: "A complete null-to-spatial-infinity matching construction for three tail-sensitive subleading Maxwell charge aspects, with the Hamiltonian/CPS interpretation still open."
tags: []
---

Back to [[2026_08_04_overview]].

The paper's strongest result is a classical gluing theorem for asymptotic coefficients. Allowing \(1/u\) tails in the radiative gauge datum forces \(\log r\) terms into the radial Maxwell expansion, so the standard first-subleading charge must be renormalized and two additional logarithmic aspects appear. Their conservation follows by transporting three independent coefficients through the blow-up of spatial infinity.

The result is not yet a CPS charge theorem. No presymplectic current, Hamiltonian vector field, integrability proof, Poisson algebra, or quantum Ward identity is constructed for the new tail-sum functional.

# How the source is organized

The logical order is:

1. **Section 2:** define massless scalar QED, choose retarded radial gauge, and enlarge the null radiative data by endpoint tails.
2. **Section 3.1:** derive the polyhomogeneous \(1/r\) recursion for the self-dual radial Maxwell field.
3. **Section 3.2:** reorganize the early-time coefficients into three finite charge aspects.
4. **Section 3.3:** write the three first-subleading charges directly in terms of null free data.
5. **Section 4.1:** blow up \(i^0\) into a unit timelike hyperboloid and state the ordered overlap limit.
6. **Section 4.2:** solve the source-free Maxwell hierarchy on the hyperboloid in fast and slow branches.
7. **Section 4.3:** match the null coefficients to three hyperbolic coefficients and use their parity to relate \(\mathscr I^+_-\) to \(\mathscr I^-_+\).
8. **Section 5:** identify the missing symmetry interpretation and higher-order/polyhomogeneous extensions.
9. **Appendix A:** derive the explicit \(n=1\) free-data expressions and cutoff subtraction.
10. **Appendix B:** repeat the past-null-infinity expansion and fix the signs in the antipodal matching law.

Appendices A and B are part of the derivation, not optional supplements: Appendix A produces the actual first-subleading formulas, while Appendix B fixes the extra sign in the primed logarithmic charge.

# Massless scalar QED and its null radiative data

## Action and current convention

The theory is a \(U(1)\) connection coupled to a massless unit-charged complex scalar:

$$
S
=-\int_M d^4x\sqrt{-g}\left[
\frac1{4e^2}F_{\mu\nu}F^{\mu\nu}
+(D_\mu\Phi)^*(D^\mu\Phi)
\right],
\qquad
D_\mu=\nabla_\mu+iA_\mu.
\tag{2.1}
$$

The equations are

$$
\nabla_\nu F^{\nu\mu}=-j^\mu,
\qquad
j^\mu=ie^2\!\left[
\Phi^*D^\mu\Phi-\Phi(D^\mu\Phi)^*
\right],
\qquad
D_\mu D^\mu\Phi=0.
\tag{2.2}
$$

The coupling is placed in the Maxwell kinetic term, while the scalar charge has been absorbed into \(A_\mu\). This accounts for the factor \(e^2\) in the source current.

Near future null infinity,

$$
ds^2=-du^2-2\,du\,dr+r^2q_{AB}d\theta^Ad\theta^B,
\qquad u=t-r.
\tag{2.3}
$$

The chiral field used throughout is

$$
F^{\mathrm{sd}}_{ab}=F_{ab}-i\widetilde F_{ab},
\qquad
\widetilde F_{ab}=\frac12\epsilon_{abcd}F^{cd},
\qquad
\widetilde F^{\mathrm{sd}}=iF^{\mathrm{sd}}.
\tag{2.6--2.8}
$$

With the paper's orientation this is the negative-helicity combination; its real and imaginary parts encode electric and magnetic data. The analysis reduces the retarded Maxwell system to the radial master constraint

$$
\begin{aligned}
2D^zj_z={}&
-\partial_r\!\left[r^2j_r+\partial_r(r^2F^{\mathrm{sd}}_{ru})\right]
+2\partial_u\!\left[r^2j_r+\partial_r(r^2F^{\mathrm{sd}}_{ru})\right]\\
&-\Delta F^{\mathrm{sd}}_{ru}.
\end{aligned}
\tag{2.9}
$$

Every radial recursion used later comes from this equation.

## Gauge choice and the enlarged phase space

The asymptotic fields obey

$$
A_r=O(r^{-2}),
\qquad
A_u=A_u^{(0)}+O(r^{-1}),
\qquad
A_A=A_A^{(0)}+O(r^{-1}),
\qquad
\Phi=\sum_{n\ge1}\frac{\phi^{(n)}}{r^n}.
\tag{2.10}
$$

Radial/asymptotic gauge sets

$$
A_r=0,
\qquad
A_u^{(0)}=0,
\tag{2.11}
$$

so the outgoing free data are

$$
\left\{A_A^{(0)}(u,\hat x),\phi^{(1)}(u,\hat x)\right\}.
\tag{2.12}
$$

Residual transformations are angle dependent:

$$
A_A^{(0)}\mapsto A_A^{(0)}+D_A\epsilon,
\qquad
\phi^{(1)}\mapsto e^{-i\epsilon}\phi^{(1)},
\qquad
\epsilon=\epsilon(\hat x).
\tag{2.13}
$$

The defining enlargement is

$$
A_A^{(0)}(u,\hat x)
\sim A_A^{\pm(0,0)}(\hat x)
+\frac{A_A^{\pm(0,1)}(\hat x)}u+\cdots,
\qquad u\to\pm\infty,
\tag{2.14a}
$$

while \(\phi^{(1)}\) has compact support in \(u\), Eq. (2.14b). These are phase-space assumptions, not equations of motion. The series are asymptotic rather than convergent, and compatibility of the incoming and outgoing data spaces under scattering is assumed.

The source states that this data space has finite Poincaré charges and finite symplectic form, but it does not display the form or prove the endpoint cancellation.

# Polyhomogeneous radial Maxwell hierarchy

The endpoint tails force a logarithmic radial expansion:

$$
F^{\mathrm{sd}}_{ru}
=\frac1{r^2}\sum_{n\ge0}\frac{F^{(n)}_{ru}}{r^n}
+\frac1{r^2}\sum_{n\ge1}\frac{\log r}{r^n}F^{(n,\ln)}_{ru}.
\tag{3.1a}
$$

There are analogous expansions for \(j_A,j_u,j_r\). For \(n\ge1\), Eq. (2.9) gives

$$
\begin{aligned}
2n\partial_uF^{(n,\ln)}_{ru}
={}&-[\Delta+n(n-1)]F^{(n-1,\ln)}_{ru}
-2D^zj_z^{(n-1,\ln)}\\
&+n j_r^{(n-2,\ln)}
+2\partial_u j_r^{(n-1,\ln)},
\end{aligned}
\tag{3.2a}
$$

and

$$
\begin{aligned}
2n\partial_uF^{(n)}_{ru}
={}&-[\Delta+n(n-1)]F^{(n-1)}_{ru}
-2D^zj_z^{(n-1)}+n j_r^{(n-2)}+2\partial_u j_r^{(n-1)}\\
&+\left(n-\frac\Delta n\right)F^{(n-1,\ln)}_{ru}
-\frac2nD^zj_z^{(n-1,\ln)}
+\frac2n\partial_u j_r^{(n-1,\ln)}.
\end{aligned}
\tag{3.2b}
$$

The first two orders reduce to

$$
\partial_uF^{(0)}_{ru}
=j_u^{(0)}-2\partial_uD^{\bar z}A_{\bar z}^{(0)},
\qquad
F^{(0,\ln)}_{ru}=0,
\tag{3.3}
$$

$$
F^{(0)}_{ru}\to0
\qquad(u\to+\infty),
\tag{3.4}
$$

and

$$
\partial_uF^{(1,\ln)}_{ru}=0,
\qquad
2\partial_uF^{(1)}_{ru}
=-\Delta F^{(0)}_{ru}-2D^zj_z^{(0)}+2\partial_uj_r^{(0)}.
\tag{3.5}
$$

Thus \(F^{(1,\ln)}_{ru}\) is an angle-dependent integration constant.

For every \(\ell\ge1\), the authors import the free-field late-time condition

$$
F^{(1)}_{ru}
+F^{(1,\ln)}_{ru}\log\!\left(\frac{u}{2c_\ell}\right)
\longrightarrow0
\qquad(u\to+\infty),
\tag{3.8}
$$

where \(c_\ell=e^{\alpha_\ell}\) and \(\alpha_\ell\) is the harmonic-number sum in Eq. (3.9). This condition, including its finite constant, is assumed to remain valid in the interacting scalar theory. It reorganizes the radial logarithm into a dilation-invariant \(\log(r/u)\) term, Eq. (3.10).

# Three asymptotic charge aspects

## Early-time coefficient types

At \(u\to-\infty\), the ordinary and radial-log coefficients have the form

$$
F^{(n)}_{ru}
=\sum_{m\ge0}u^{n-m}F^{(n,m)}_{ru}
+\sum_{m=1}^{n}u^{n-m}\log(-u)F^{(n,m,\ln)}_{ru},
\tag{3.11a}
$$

$$
F^{(n,\ln)}_{ru}
=\sum_{m=1}^{n}u^{n-m}F^{(n,\ln,m)}_{ru}.
\tag{3.11b}
$$

There are therefore three distinct coefficients at \(m=n\): an ordinary finite coefficient, a \(\log r\) coefficient, and a \(\log(-u)\) coefficient.

After harmonic decomposition, the finite representative is improved to

$$
\mathscr F^{+,n,m}_{LM}
=F^{+,n,m}_{LM}
-a_{nmL}F^{+,n,m,\ln}_{LM}
-b_{nmL}F^{+,n,\ln,m}_{LM}.
\tag{3.20}
$$

The coefficients \(a_{nmL},b_{nmL}\) are fixed by the spatial-infinity matching, not by an intrinsic null-boundary variational principle.

## Charge definitions and antipodal signs

At \(\mathscr I^+\), the three families are

$$
Q_n^{+\ln}[\epsilon_n^+]
=\sum_{LM}\left(
F^{+,n,\ln,n}_{LM}+F^{+,n,n,\ln}_{LM}
\right)\epsilon^+_{n,LM},
\tag{3.21a}
$$

$$
Q_n^{\prime+\ln}[\epsilon_n^+]
=\sum_{LM}\left(
F^{+,n,\ln,n}_{LM}-F^{+,n,n,\ln}_{LM}
\right)\epsilon^+_{n,LM},
\tag{3.21b}
$$

$$
Q_n^+[\epsilon_n^+]
=\sum_{LM}\mathscr F^{+,n,n}_{LM}\epsilon^+_{n,LM}.
\tag{3.21c}
$$

The past definition of \(Q_n^{\prime-\ln}\) has an extra overall minus sign, Eq. (3.23b). Together with

$$
\epsilon_n^+(\hat x)=(-1)^n\epsilon_n^-(-\hat x)
$$

and \(Y_{LM}(-\hat x)=(-1)^LY_{LM}(\hat x)\), this is required for the three conservation laws

$$
Q_n^{+\ln}=Q_n^{-\ln},
\qquad
Q_n^{\prime+\ln}=Q_n^{\prime-\ln},
\qquad
Q_n^+=Q_n^-.
\tag{3.25}
$$

They follow from the three coefficient matching rules in Eqs. (3.26a--c).

# First-subleading tail triplet

Define the endpoint tail observables

$$
T_\pm(\hat x)
=\left.u^2\partial_u\Delta D^{\bar z}A_{\bar z}^{(0)}
\right|_{\mathscr I^+_\pm}.
$$

Appendix A finds

$$
F^{+,1,\ln,1}_{ru}=T_+,
\qquad
F^{+,1,1,\ln}_{ru}=-T_-.
\tag{A.10, A.13}
$$

Hence

$$
Q_1^{+\ln}[\epsilon^+]
=\int d^2z\sqrt q\,\epsilon^+(T_+-T_-),
\tag{3.28a}
$$

$$
Q_1^{\prime+\ln}[\epsilon^+]
=\int d^2z\sqrt q\,\epsilon^+(T_++T_-).
\tag{3.28b}
$$

The first is the known logarithmic tail-difference charge; the second is the new symmetric tail functional. Their null-integral expressions are total derivatives:

$$
Q_1^{+\ln}
=\int_{\mathscr I^+}du\,d^2z\sqrt q\,\epsilon^+
\partial_u\!\left(u^2\partial_u\Delta D^{\bar z}A_{\bar z}^{(0)}\right),
\tag{3.29a}
$$

$$
Q_1^{\prime+\ln}
=\int_{\mathscr I^+}du\,d^2z\sqrt q\,\epsilon^+
\partial_u\!\left[g(u)u^2\partial_u\Delta D^{\bar z}A_{\bar z}^{(0)}\right],
\tag{3.29b}
$$

where \(g(u)\to\pm1\) at the two endpoints. These are endpoint balance identities, not symplectic-flux formulas.

For the ordinary subleading aspect, define

$$
\mathcal J_1
=D^zj_z^{(0)}-\frac u2\Delta j_u^{(0)}
+u\partial_u\!\left(\Delta D^{\bar z}A_{\bar z}^{(0)}\right).
$$

Then

$$
\begin{aligned}
Q_1^+[\epsilon^+]
={}&\lim_{\Lambda\to\infty}\left[
\int_{-\Lambda}^{\Lambda}du\,d^2z\sqrt q\,
\epsilon^+\mathcal J_1
-Q_1^{+\ln}[\epsilon^+]\log\Lambda
\right]\\
&+\sum_{LM}(a_{11L}-1)\epsilon^+_{1,LM}T_{-,LM}\\
&+\sum_{LM}\left[1-b_{11L}+\log(2c_L)\right]
\epsilon^+_{1,LM}T_{+,LM}.
\end{aligned}
\tag{3.28c}
$$

The current terms are the hard scalar contribution; the \(A_{\bar z}^{(0)}\) term is the radiative contribution. The logarithmic subtraction cancels the tail divergence, while the finite endpoint terms identify the null expression with a chosen hyperbolic coefficient.

Changing \(\log\Lambda\) to \(\log(\Lambda/\Lambda_0)\) gives

$$
Q_1^+\mapsto Q_1^++\log\Lambda_0,Q_1^{+\ln}.
$$

This is a finite boundary-improvement ambiguity among charge coordinates, not quantum renormalization.

# Spatial infinity and the matching engine

## Hyperbolic blow-up and ordered overlap

Introduce

$$
\rho=\sqrt{r^2-t^2},
\qquad
\tau=\frac{t}{\sqrt{r^2-t^2}},
\tag{4.1}
$$

so

$$
ds^2=d\rho^2+\rho^2\left[
-\frac{d\tau^2}{1+\tau^2}
+(1+\tau^2)q_{AB}d\theta^Ad\theta^B
\right].
\tag{4.2}
$$

The future overlap map is

$$
r=\rho\sqrt{1+\tau^2},
\qquad
u=\rho\left(\tau-\sqrt{1+\tau^2}\right).
\tag{4.5}
$$

The calculation is valid in the ordered regime

$$
\left|\frac\tau\rho\right|\ll1,
\qquad
|\tau|^{-1}\ll1.
\tag{4.7}
$$

One first sends \(\rho\to\infty\) to the hyperboloid and only then takes \(|\tau|\to\infty\) within the overlap. The proof does not justify arbitrary interchange of the null, radial, and spatial-infinity limits.

The scalar is assumed to obey

$$
\Phi(\rho,y)=o(\rho^{-n})
\qquad\text{for every }n\ge1.
\tag{4.8}
$$

This stronger-than-any-power decay makes the Maxwell equations source free near \(i^0\). It is the condition that permits electric/magnetic duality and the clean hyperbolic matching argument.

## Hyperboloid Maxwell operator

With \(\mathcal D_\alpha\) the unit-hyperboloid derivative, the radial fields have the expansion

$$
F_{\rho\alpha}
=\frac1\rho\sum_{k\ge0}\left[
\frac{F^{(k)}_{\rho\alpha}}{\rho^k}
+\frac{\log\rho}{\rho^k}F^{(k,\ln)}_{\rho\alpha}
\right].
\tag{4.10a}
$$

Eliminating the tangential two-form from Eqs. (4.11a--f) gives

$$
(\mathcal D^2+k^2-2)F^{(k,\ln)}_{\rho\alpha}=0,
\tag{4.12a}
$$

$$
(\mathcal D^2+k^2-2)F^{(k)}_{\rho\alpha}
-2kF^{(k,\ln)}_{\rho\alpha}=0.
\tag{4.12b}
$$

After spherical-harmonic decomposition of \(F_{\rho\tau}\), the common scalar operator is

$$
\mathcal L_{kL}
=(1+\tau^2)\partial_\tau^2
+7\tau\partial_\tau
+\frac{L(L+1)-6}{1+\tau^2}
-(k^2-9).
\tag{4.15}
$$

Its two homogeneous branches behave as

$$
T^{(k)}_{L,\mathrm{slow}}\sim\tau^{k-3},
\qquad
T^{(k)}_{L,\mathrm{fast}}\sim\tau^{-k-3},
$$

with parities

$$
T^{(k)}_{L,\mathrm{slow}}(-\tau)
=(-1)^{k-L+1}T^{(k)}_{L,\mathrm{slow}}(\tau),
$$

$$
T^{(k)}_{L,\mathrm{fast}}(-\tau)
=(-1)^{k-L}T^{(k)}_{L,\mathrm{fast}}(\tau).
\tag{4.18}
$$

The radial-log coefficient occupies the fast branch:

$$
\mathcal F^{(k,\ln)}_{LM}
=\mathcal F^{(k,\ln,0)}_{LM}T^{(k)}_{L,\mathrm{fast}}.
\tag{4.19}
$$

Differentiating the homogeneous equation with respect to the continued parameter \(k\) supplies a particular solution of the forced equation:

$$
\begin{aligned}
\mathcal F^{(k)}_{LM}
={}&-\mathcal F^{(k,\ln,0)}_{LM}
\partial_kT^{(k)}_{L,\mathrm{fast}}\\
&+\frac{\mathcal F^{(k,k,\ln)}_{LM}}{\widehat s_{kL}}
T^{(k)}_{L,\mathrm{slow}}
+\mathcal F^{(k,k)}_{LM}T^{(k)}_{L,\mathrm{fast}},
\end{aligned}
\tag{4.20}
$$

where

$$
\widehat s_{kL}
=\frac{(k+L)!}{2^{2k-1}k!(k-1)!(L-k)!},
\qquad L\ge k.
\tag{4.21}
$$

The continuation in \(k\) is not unique up to addition of a fast homogeneous solution; this is the hyperbolic form of the finite scheme freedom mixing \(Q_n\) with \(Q_n^{\ln}\).

## Null coefficients as three hyperbolic coordinates

The tensor-component Jacobian is

$$
F_{\rho\tau}
=\frac\rho{\sqrt{1+\tau^2}}F_{ru}.
\tag{4.24}
$$

Comparing the null and hyperbolic double expansions yields at \(\tau\to+\infty\)

$$
\mathcal F^{(k,\ln,0)}_{LM}
=F^{+,k,\ln,k}_{LM}+F^{+,k,k,\ln}_{LM},
\tag{4.26a}
$$

$$
\mathcal F^{(k,k,\ln)}_{LM}
=F^{+,k,\ln,k}_{LM}-F^{+,k,k,\ln}_{LM},
\tag{4.26b}
$$

$$
\mathcal F^{(k,k)}_{LM}=\mathscr F^{+,k,k}_{LM}.
\tag{4.26c}
$$

Appendix B gives at \(\tau\to-\infty\)

$$
\mathcal F^{(k,\ln,0)}_{LM}
=(-1)^{k+L}\left(
F^{-,k,\ln,k}_{LM}+F^{-,k,k,\ln}_{LM}
\right),
\tag{4.27a}
$$

$$
\mathcal F^{(k,k,\ln)}_{LM}
=(-1)^{k+L+1}\left(
F^{-,k,\ln,k}_{LM}-F^{-,k,k,\ln}_{LM}
\right),
\tag{4.27b}
$$

$$
\mathcal F^{(k,k)}_{LM}
=(-1)^{k+L}\mathscr F^{-,k,k}_{LM}.
\tag{4.27c}
$$

The same three hyperbolic integration constants are therefore read from the two null corners. Their parities give Eqs. (3.26), and the latter give conservation of all three charge families.

At \(k=1\), matching fixes

$$
a_{11L}=H_L-\frac12H_1+\frac1{L+1},
\qquad
b_{11L}=\frac12H_1-H_{L-1}+\log2,
\tag{4.29}
$$

and produces the explicit first-subleading relations in Eqs. (4.30a--c).

# Appendix A: free-data reconstruction at \(n=1\)

The leading constraint integrates to

$$
F^{(0)}_{ru}
=2D^{\bar z}A_{\bar z}^{+(0,0)}
-2D^{\bar z}A_{\bar z}^{(0)}
-\int_u^\infty du'\,j_u^{(0)}.
\tag{A.2}
$$

The scalar current is

$$
j_u^{(0)}
=-ie^2\left[
\phi^{(1)}\partial_u\phi^{(1)*}
-\phi^{(1)*}\partial_u\phi^{(1)}
\right].
\tag{A.3}
$$

Compact scalar support then gives

$$
F^{(0)}_{ru}
=-\frac{2D^{\bar z}A_{\bar z}^{+(0,1)}}u+O(u^{-2})
\qquad(u\to+\infty),
\tag{A.6a}
$$

while the past endpoint contains a nonzero constant hard contribution and the analogous \(1/u\) tail, Eq. (A.6b--A.7). Integrating the \(n=1\) equation produces the future and past logarithms,

$$
F^{(1)}_{ru}
=\Delta D^{\bar z}A_{\bar z}^{+(0,1)}\log u+O(1)
\qquad(u\to+\infty),
\tag{A.8}
$$

$$
F^{(1)}_{ru}
=-\frac u2\Delta F^{(0,0)}_{ru}
+\Delta D^{\bar z}A_{\bar z}^{-(0,1)}\log(-u)
+F^{(1,1)}_{ru}+o(1)
\qquad(u\to-\infty).
\tag{A.9}
$$

These coefficients, together with the assumed future condition (3.8), give Eqs. (A.10--A.13) and hence all three formulas in Eq. (3.28).

# Notation and convention dictionary

| Paper notation | Meaning and local translation |
|---|---|
| \((u,r,\theta^A)\), \((v,r,\theta^A)\) | Retarded coordinates near \(\mathscr I^+\) and advanced coordinates near \(\mathscr I^-\) |
| \(q_{AB},D_A,\Delta\) | Unit-sphere metric, derivative, and Laplacian |
| \(F^{\mathrm{sd}}=F-i\star F\) | Paper's negative-helicity self-dual convention; orientation dependent |
| \(A_A^{(0)}\) | Leading angular radiative gauge datum |
| \(\phi^{(1)}\) | Leading scalar radiative datum |
| \(A_A^{\pm(0,n)}\) | Coefficients at \(u\to\pm\infty\) on one null infinity; the signs are endpoint labels |
| \(F^\pm_{LM}\) | Coefficients on \(\mathscr I^\pm\); here the signs label different null infinities |
| \(n\) | Null radial order, coefficient of \(r^{-n-2}\) |
| \(k\) | Spatial radial order on the hyperboloid; matching sets \(k=n\) |
| \(L,M\) | Sphere harmonic labels, with relevant modes \(L\ge k\) |
| first \(\ln\) label | Coefficient multiplying \(\log r\) |
| final \(\ln\) label | Coefficient multiplying \(\log(-u)\) or \(\log v\) |
| \(\mathscr F^{\pm,n,m}_{LM}\) | Improved finite coefficient, not the phase space itself |
| \(Q_n^{\ln}\) | Sum of the two logarithmic coefficient types; tail difference at \(n=1\) |
| \(Q_n^{\prime\ln}\) | Difference of coefficient types; tail sum at \(n=1\) |
| \(Q_n\) | Cutoff-renormalized ordinary subleading aspect |
| \((\rho,\tau)\), \(\mathcal H^0\) | Hyperbolic blow-up coordinates and unit timelike hyperboloid at \(i^0\) |
| \(T^{(k)}_{L,\mathrm{fast/slow}}\) | Branches with \(\tau^{-k-3}\) and \(\tau^{k-3}\) behavior |
| \(\Lambda\) | Symmetric retarded-time cutoff, not a coupling or cosmological constant |

# CPS and boundary-charge translation

The paper's objects map to the local formalism as follows:

| Source object | CPS/boundary interpretation | Qualification |
|---|---|---|
| allowed free-data space | gauge-fixed radiative solution data with endpoint conditions | no presymplectic reduction is constructed |
| residual \(\epsilon(\hat x)\) | standard large-gauge direction on null data | no linearly growing parameter is constructed for \(Q_1^{\prime\ln}\) |
| \(F^{n,\cdots}_{LM}\) at null endpoints | codimension-two asymptotic corner data | not derived from an Iyer--Wald or Barnich--Brandt surface form |
| \(\mathcal H^0\) coefficients | gluing coordinates between the two null phase spaces | valid only in the ordered overlap and source-free \(i^0\) sector |
| Eqs. (4.26--4.27) | antipodal corner matching | a classical coefficient theorem, not Hamiltonian evolution |
| Eq. (3.25) | scattering conservation of endpoint functionals | not an arbitrary-cut flux law |
| finite subtraction in \(Q_1\) | boundary improvement/scheme choice | mixes \(Q_1\) with \(Q_1^{\ln}\) |
| \(Q_1^{\prime\ln}\) | candidate new tail generator | integrability, action on fields, and algebra are missing |

A CPS completion would have to construct

$$
\delta L=E\cdot\delta\Phi+d\theta,
\qquad
\omega=\delta\theta,
$$

specify the endpoint/corner completion of \(\Omega_{\mathscr I}\), quotient small gauge transformations, and prove

$$
\delta Q_\epsilon
=\Omega_{\mathscr I}(\delta,\delta_\epsilon)
$$

with finiteness, functional differentiability, and integrability. Until then, the precise claim is:

> The source constructs three conserved asymptotic matching functionals. It has not shown that all three are Hamiltonian charges on the tail-admitting radiative phase space.

# Concrete project extensions

The shortest executable continuation is to work only at first subleading order:

1. insert the tail expansion (2.14) into the standard scalar-QED presymplectic current at \(\mathscr I^+\);
2. isolate the endpoint divergence and determine whether a local corner potential cancels it;
3. compute the contraction with an ansatz \(\epsilon=u\epsilon_1(\hat x)+\epsilon_0(\hat x)+O(u^{-1})\);
4. test whether the resulting variation integrates to \(Q_1^{\prime\ln}\), and whether the scheme mixing with \(Q_1^{\ln}\) is a standard \(Y\)-ambiguity;
5. only after that, compute the bracket among \(Q_1,Q_1^{\ln},Q_1^{\prime\ln}\).

This keeps the achieved tier finite and falsifiable: existence or obstruction of one Hamiltonian generator on a precisely stated tail phase space.

# Verification log

## Checked

The following entries record independent xAct/Mathematica reproduction, not source inspection. No checked equation produced a genuine nonzero residual. In particular, Eq. (2.2a) defines

$$
-j^\mu\equiv-ie^2
\left[\Phi^*D^\mu\Phi-\Phi(D^\mu\Phi)^*\right],
$$

so the convention used consistently below is

$$
j^\mu=+ie^2
\left[\Phi^*D^\mu\Phi-\Phi(D^\mu\Phi)^*\right],
\qquad
\nabla_\nu F^{\nu\mu}=-j^\mu.
$$

| Source range | Independent reproduction | Result and qualification |
|---|---|---|
| Eqs. (2.1)--(2.2) | xAct `VarD` plus Mathematica sign comparison | Both Euler--Lagrange equations have zero residual with the current convention above. |
| Eqs. (2.3)--(2.5) | Explicit retarded metric and arbitrary antisymmetric \(F_{ab}\) | All three component equations reproduce with zero residual. |
| Eqs. (2.6)--(2.9) | Explicit complex retarded chart and Hodge tensor | \(\star^2F=-F\), \(\star F^{\mathrm{sd}}=iF^{\mathrm{sd}}\), and the master equation all have zero residual. |
| Eqs. (2.11)--(2.13) | Direct gauge-transformation substitution | \(D_\mu\Phi\mapsto e^{-i\epsilon}D_\mu\Phi\); radial and retarded gauge preservation gives \(\epsilon=\epsilon(\hat x)\). |
| Eqs. (3.1)--(3.2) | Formal \(r^{-n}\log r\) coefficient extraction | General \(n>1\) logarithmic and ordinary recursions have zero residual; an independent truncation through \(n=6\) also passes. |
| Eqs. (3.3)--(3.6) | Radial-gauge expansion | \(F_{ru}^{(0)}\), \(j_u^{(0)}\), the leading constraint, the \(n=1\) recursion, and \(\partial_uF_{ru}^{(1,\ln)}=0\) reproduce exactly. |
| Eqs. (3.8)--(3.10) | Series reorganization | The logarithmic terms reorganize as printed and \(\log(r/u)\) is dilation invariant. The free endpoint condition and \(c_L\) normalization remain imported inputs. |
| Eqs. (3.11)--(3.19) | Recursion plus endpoint substitution | The \(n=1\) early-time form follows under compact-support current assumptions. The full all-\(n\) closure is not supplied by the source. |
| Eqs. (3.20)--(3.26) | Harmonic parity and sign algebra | All three matching identities pass; the primed aspect's extra sign is cancelled by the minus sign in its charge definition. |
| Eqs. (A.1)--(A.7) | Direct integration, current expansion, and endpoint differentiation | All signs and endpoint terms pass. In particular, Eq. (A.3) independently confirms the current convention. |
| Eqs. (A.8)--(A.13) | Asymptotic integration of the checked hierarchy | The logarithmic and ordinary coefficients, including \(\log(2c_L)\), reproduce; differentiating the cutoff expression (A.11) returns the hierarchy. |
| Eqs. (3.28)--(3.29) | Symbolic endpoint algebra | Eq. (3.28c) has zero residual; the local total derivatives give the endpoint charges for \(g(\pm\infty)=\pm1\); changing the subtraction scale mixes \(Q_1\) with \(Q_1^{\ln}\) exactly as stated. |
| Eqs. (4.1)--(4.7) | Coordinate Jacobian, metric, Ricci tensor, and overlap series | The metric and \(R_{\alpha\beta}[h]-2h_{\alpha\beta}\) residuals vanish; the printed \(u/r\) overlap expansion is reproduced. |
| Eqs. (4.9a)--(4.9d) | Four-dimensional density divergence and explicit \(dS_3\) components | Radial, tangential, and Bianchi decompositions are equivalent to the four-dimensional equations with zero residual. |
| Eqs. (4.10)--(4.12) | Formal \(\rho^{-k}\log\rho\) extraction and xAct commutator | The logarithmic/ordinary Maxwell and Bianchi coefficients pass. xAct gives \(D^bD_aL_b-D_aD^bL_b=2L_a\), reproducing both vector wave equations. |
| Eqs. (4.13)--(4.15) | Explicit \(dS_3\) Christoffels and harmonic reduction | The scalar ODE has zero residual after \(D^2Y_{LM}=-L(L+1)Y_{LM}\); division requires \(L\ge1\). |
| Eqs. (4.16)--(4.18) | Hypergeometric equation and exact finite sectors | Both parity branches solve the ODE. Indicial roots are \(k-3\) and \(-k-3\); fast/slow parity passes for \(k=1,2,3\) and \(L=k,k+1,k+2\). |
| Eq. (4.20) | Differentiation of \(\mathcal O_k=\mathcal O_0-k^2\) | \(\mathcal O_k(-\partial_kT_k)=-2kT_k\) exactly, including the inhomogeneous sign. |
| Eqs. (4.21)--(4.23) | Hypergeometric asymptotics and finite exact modes | The slow logarithmic coefficient and \(D_{1,L}\) pass for \(k=1\), \(L=1,\ldots,5\). The \(k=2,L=2\) values \(\hat s=3/2\), \(s_l=(1,1/2)\), \(C=25/8\), and \(D=-2+\tfrac32\log2\) also pass. |
| Eq. (4.24) | Tensor Jacobian at both ends of the overlap | \(F_{\rho\tau}=\rho F_{ru}/\sqrt{1+\tau^2}\) at the future overlap and \(F_{\rho\tau}=\rho F_{rv}/\sqrt{1+\tau^2}\) at the past overlap both have zero residual. |
| Eqs. (4.25a)--(4.25b) | Direct coordinate and logarithm decomposition | Power prefactors and all future/past logarithm sum-and-difference identities pass. |
| Eqs. (4.26a)--(4.26c) | Large-\(\tau\) expansion and coefficient comparison | The first two equations pass directly. Equation (4.26c) follows after choosing the implicitly defined matching coefficients \(a_{nkL},b_{nkL}\). |
| Eqs. (4.27a)--(4.27c) | Fast/slow parity algebra | Every antipodal sign follows from \((-1)^{k-L}\) and \((-1)^{k-L+1}\); residual sign factors reduce to \(+1\). |
| Eqs. (B.1)--(B.8) | Advanced-coordinate Jacobian, log identities, and direct past expansion | Equation (B.7) passes. At \(k=1\), the past expansion independently reproduces all claimed sign flips; general (B.8) coefficients inherit the all-\((k,L)\) limitation below. |
| Eqs. (4.28)--(4.30) | Direct \(k=1\) expansion and coefficient algebra | Eqs. (4.28a,b) and all three matching signs pass. The printed coefficients give \(a_{11L}=H_L-\tfrac12+1/(L+1)\) and \(b_{11L}=\tfrac12-H_{L-1}+\log2\) with zero residual. |

The checks use the paper's signature and orientation, \(D^2Y_{LM}=-L(L+1)Y_{LM}\), \(L\ge k\ge1\) in the matching sector, \(R_{\alpha\beta}[h]=2h_{\alpha\beta}\), sufficient differentiability for the stated sphere integrations by parts, compactly supported scalar radiative data, and the ordered overlap limit \(\rho\to\infty\) before \(|\tau|\to\infty\).

## Blocked

- The free-theory endpoint condition (3.8), its extension to the interacting phase space, and the normalization \(c_L=e^{\alpha_L}\) in Eq. (3.9) are imported rather than independently derived. The finite part of \(Q_1\) depends on them.
- Symplectic finiteness and completeness of the phase-space falloffs in Eqs. (2.14)--(2.18) are not established by the source's coefficient expansion.
- The source does not provide the complete all-\(n\) scalar/current coefficient hierarchy needed to close Eq. (3.11) independently.
- A general analytic proof of the closed \(s_l,C_{k,L},D_{k,L}\) formulas was not completed: exact finite sectors pass, but parameter-derivative gamma-function asymptotics at resonant integer parameters remain unresolved by the symbolic pass.
- General \(a_{nkL},b_{nkL}\) are defined implicitly by the desired matching coordinate rather than independently predicted by supplied formulas.
- The source assumes source-free behavior near \(i^0\), the stated incoming/outgoing function spaces, and their preservation by the global scattering map; these are not derived in the paper.
- No presymplectic current or corner completion is constructed for the enlarged tail phase space. Finiteness, functional differentiability, integrability, field action, charge algebra, and quantization of the three functionals therefore remain unproved; the linearly growing asymptotic symmetry proposed for \(Q_n^{\prime\ln}\) is not constructed.
- The all-subleading matching and charge-algebra statements in Section 5 are proposals rather than established consequences of the reproduced \(k=1\) chain.

## Failed

None among the equations and finite sectors listed under `Checked`.

The downstream-safe statement is therefore conditional rather than global: assuming the paper's phase-space falloffs, source-free behavior at spatial infinity, and asymptotic normalization scheme, the null hierarchy, Appendix A charge formulas, hyperboloidal equations, antipodal signs, and \(k=1\) matching are independently reproduced. This is not a complete all-\((k,L)\) analytic proof and not a covariant-phase-space proof that the three matching functionals are Hamiltonian charges.
