---
paper id: 2607.20746v1
title: Thermodynamics of boosted Schwarzschild black holes
authors:
  - Glenn Barnich
publication date: 2026-07-22T21:51
abstract: |-
  The equilibrium thermodynamics of boosted Schwarzschild black holes is worked out in a concise way and shown to agree with expectations from relativistic thermodynamics.
comments: "10 pages"
url: https://arxiv.org/abs/2607.20746v1
summary: "A BMS surface-charge derivation turns the Schwarzschild first law into the covariant relation δS = β^a δP_a, while exposing a field-dependent-generator subtlety and several normalization errors in the source."
tags: []
---

Back to [[2026_07_24_overview]].

# Result

A Lorentz boost is an improper asymptotic transformation: it leaves the intrinsic Schwarzschild horizon data
\[
\mathcal A=16\pi M^2,\qquad \kappa_{\mathcal N}=-\frac{1}{4M}
\]
unchanged, but creates the Bondi momentum
\[
P^a=M u^a,\qquad P^aP_a=M^2.
\]
The horizon generator is represented at future null infinity by the BMS supertranslation \(T=w_g=u_0-u_i n^i\), so its charge is
\[
H_{w_g}=u^aP_a=M.
\]
Matching its integrable BMS variation to the horizon Iyer--Wald variation yields
\[
\delta S=\beta^a\delta P_a,\qquad
\beta^a=8\pi G M u^a=8\pi G P^a.
\]
This is a clean Tier-1 charge/CPS result. The finite-dimensional thermodynamic identity is independently reproducible. The paper's geometric argument is nevertheless incomplete at one important point: \(w_g\) depends on the solution, but the source varies \(H_{w_g}\) without stating the adjusted covariant-phase-space prescription for a field-dependent generator.

# How the paper is organized

The source has short boldfaced parts rather than numbered sections:

| Source part | Technical purpose |
|---|---|
| Boosted Schwarzschild black holes | Put the outgoing-Eddington--Finkelstein solution in Bondi/NP form and implement Lorentz transformations as Möbius maps on the celestial sphere. |
| Asymptotically flat data | Transform the Newman--Penrose coefficients and identify the boosted mass aspect. |
| Bondi aspects and \(\mathrm{BMS}_4\) charges | Integrate the mass aspect against the \(j\leq1\) harmonics to obtain \(P^a=Mu^a\). |
| Horizon area and surface gravity | Show that the intrinsic horizon data remain those of Schwarzschild. |
| Chemical potentials and Massieu function | Infer the relativistic first law and its Legendre transform. |
| Geometrical derivation | Identify the horizon Killing field with a field-dependent supertranslation at \(\mathscr I^+\), then match BMS and horizon charge variations. |
| Outlook | Interpret entropy as a Poincaré Casimir and place the solution on a BMS coadjoint orbit. |

# Bondi geometry and the celestial boost factor

The paper uses signature \(+---\) and initially sets \(G=c=1\). In outgoing Eddington--Finkelstein coordinates \(x^\mu=(u,r,\zeta,\bar\zeta)\), Eq. (4) is
\[
ds_M^2=-2U_M\,du^2+2\,du\,dr-r^2d^2\Omega,
\qquad
U_M=-\frac12+\frac Mr,
\qquad
d^2\Omega=\frac{2\,d\zeta\,d\bar\zeta}{P_\circ^2},
\]
with \(P_\circ=(1+|\zeta|^2)/\sqrt2\). The Newman--Penrose tetrad of Eq. (223),
\[
l=\partial_r,\qquad
n_M=\partial_u+U_M\partial_r,\qquad
m_\circ=r^{-1}P_\circ\bar\partial,
\]
gives the Kerr--Schild form
\[
ds_M^2=ds_0^2-\frac{2M}{r}l^2
\tag{7}
\]
over retarded Minkowski coordinates.

A Lorentz transformation acts on the celestial coordinate by
\[
\zeta=\frac{a\zeta'+b}{c\zeta'+d},
\qquad ad-bc=1.
\tag{5}
\]
The round-sphere line element acquires the conformal factor
\[
w_g=\frac{P_g}{P_\circ}
=\frac{|a\zeta+b|^2+|c\zeta+d|^2}{1+|\zeta|^2},
\qquad
r=w_g r',\qquad u=w_g^{-1}u'.
\tag{11,14}
\]
The inverse Newman--Penrose boost factor is \(K=w_g^{-1}\), and only the \(j=0,1\) harmonics occur:
\[
w_g=u_0-u_i n^i,
\qquad
u^au_a=u_0^2-|\vec u|^2=1.
\tag{15,16}
\]
For a pure boost, \(u^a=(\cosh\omega,\sinh\omega\,\hat\omega^i)\). Rotations have \(w_g=1\).

The key point is conceptual: this Lorentz transformation is pure gauge locally but improper at \(\mathscr I^+\). It can therefore change surface charges without changing the local isometry class or the intrinsic horizon geometry.

# Newman--Penrose data and boosted Bondi momentum

Rest-frame Schwarzschild has
\[
\sigma^0=0,\qquad
\Psi_2^0=-M,\qquad
\Psi_1^0=\Psi_0^0=0.
\tag{10}
\]
After the BMS Lorentz transformation, Eq. (18) gives
\[
\sigma^{\prime0}=0,\qquad
\Psi_2^{\prime0}=-Mw_g^{-3},\qquad
\Psi_1^{\prime0}=3Mw_g^{-4}u'\eth'_\circ w_g,
\]
\[
\Psi_0^{\prime0}=-6Mw_g^{-5}(u'\eth'_\circ w_g)^2.
\]
Consequently, the Bondi mass aspect is
\[
\Psi'=Mw_g^{-3}.
\tag{3}
\]
The two terms in the angular-momentum aspect cancel for this shear-free solution,
\[
\bar\Psi'_J
=-3Mw_g^{-4}u'\eth'_\circ w_g
-u'\eth'_\circ(Mw_g^{-3})=0.
\tag{17}
\]
Thus a boost generates momentum but no intrinsic Lorentz charge.

The required sphere moments are
\[
\mathcal I_{k0}(u)
=\int_{S^2}\frac{d^2\Omega}{4\pi}\,w_g^{-k}.
\tag{58}
\]
Choosing \(\vec u\) along the polar axis and writing \(b=|\vec u|\),
\[
\mathcal I_{20}=\frac{1}{u_0^2-b^2}=1,\qquad
\mathcal I_{30}=\frac{u_0}{(u_0^2-b^2)^2}=u_0.
\tag{325,59}
\]
The \(j\leq1\) moments of \(\Psi'\) therefore give
\[
P_0=M u_0,\qquad P_i=M u_i,
\tag{8,1}
\]
and hence
\[
P^2=M^2,\qquad u^aP_a=M.
\tag{76}
\]

There is a sign convention to keep visible. With \(+---\),
\[
P^a=(Mu_0,M\vec u),\qquad P_a=(Mu_0,-M\vec u).
\]
The paper's Eq. (1) labels the spatial result as \(P_i=Mu_i\) while the charge integral contains \(-n_i\). The covariant first law is consistent when the lowered spatial momentum is treated with the metric sign.

# Horizon invariants and generator normalization

The horizon is \(U_M=0\), hence \(r=2M\). Its area remains
\[
\mathcal A=16\pi M^2.
\tag{61}
\]
For the past-horizon Killing field \(\xi=\partial_u\), the paper finds
\[
\xi\cdot\nabla\xi
=-\frac{M}{r^2}(\xi+2U_Ml)
\quad\Longrightarrow\quad
\kappa_{\mathcal N}=-\frac{1}{4M}.
\tag{33}
\]
The sign is the past-horizon orientation; the invariant magnitude is the standard Schwarzschild value.

The boosted temperature is not obtained by boosting \(\kappa_{\mathcal N}\). Instead, the asymptotic time-translation normalization changes:
\[
u'=w_g u,\qquad
\partial_u=w_g\partial_{u'}.
\]
Writing
\[
\delta P_0=T_H\delta S+\mu^i\delta P_i
\]
then gives
\[
T_H=\frac{1}{8\pi M u_0},
\qquad
\mu^i=-\frac{u^i}{u_0}.
\tag{73}
\]
Thus the \(u_0^{-1}\) factor belongs to the normalization of the thermodynamic generator at infinity, not to the geometric surface gravity.

# The covariant first law and Massieu transform

With
\[
\beta^0=T_H^{-1},\qquad
\beta^i=-\frac{\mu^i}{T_H},
\]
the first law becomes
\[
\boxed{\delta S=\beta^a\delta P_a},
\qquad
\boxed{\beta^a=8\pi M u^a=8\pi P^a}
\tag{74}
\]
in \(G=1\) units. Restoring Newton's constant consistently gives
\[
S(P)=4\pi G\,P^2,\qquad
\beta^a=8\pi G\,P^a.
\tag{22}
\]
Solving \(P^a=\beta^a/(8\pi G)\) and Legendre transforming,
\[
\Phi(\beta)
=\left.S(P)-\beta\cdot P\right|_{P=P(\beta)}
=-\frac{\beta^2}{16\pi G},
\qquad
\frac{\partial\Phi}{\partial\beta^a}=-P_a.
\tag{30, corrected}
\]

The paper prints \(G\) only in \(S(P)\), but not in \(\beta^a\) or \(\Phi\). Those three equations are mutually consistent only with the restored factors above.

# BMS charge matched to the horizon Iyer--Wald variation

For this non-radiative family, the supertranslation charge at \(\mathscr I^+\) is integrable:
\[
\delta H_T
=\delta\int_{S^2}\frac{d^2\Omega}{4\pi}\,
T\,Mw_g^{-3}.
\tag{19}
\]
The horizon Killing field \(\partial_u\) corresponds asymptotically to \(T=w_g\), not to the Bondi time translation \(T=1\). Therefore
\[
H_{w_g}
=\int_{S^2}\frac{d^2\Omega}{4\pi}\,
Mw_g^{-2}
=M
=u^aP_a.
\]
On the unit-velocity hyperboloid, \(u_a\delta u^a=0\), so the finite-dimensional variation satisfies
\[
\delta(u\cdot P)=u^a\delta P_a.
\]
The horizon charge relation is
\[
\delta H_{w_g}
=-\frac{\kappa_{\mathcal N}}{2\pi}
\delta\!\left(\frac{\mathcal A}{4G}\right).
\tag{2}
\]
Combining the two sides gives
\[
-\frac{\kappa_{\mathcal N}}{2\pi}
\delta\!\left(\frac{\mathcal A}{4G}\right)
=u^a\delta P_a,
\tag{34}
\]
and, since \(-\kappa_{\mathcal N}=1/(4M)\),
\[
\delta S=8\pi G M\,u^a\delta P_a.
\]

## Translation into the vault's CPS notation

The paper uses \(Q_T\) for an integrated Hamiltonian charge. To avoid confusing it with the local Noether two-form, a cleaner local dictionary is
\[
\text{paper }Q_T\longleftrightarrow H_T,
\qquad
k_\xi(\delta g;g)=\delta Q_\xi-i_\xi\Theta,
\]
where \(Q_\xi\) is the Iyer--Wald two-form and \(k_\xi\) its surface-charge variation. Because the news and shear vanish on this family, the source assumes that no Wald--Zoupas flux correction is required.

The subtle point is field dependence. On the solution family,
\[
\xi[g]\big|_{\mathscr I^+}=w_g(u[g])\,\partial_{u'}.
\]
For a field-dependent generator, one must state whether the variation is
\[
\delta^{[\xi]}H_\xi
\quad\text{with \(\xi\) held fixed,}
\]
or whether an adjusted expression subtracting \(H_{\delta\xi}\) or \(Q_{\delta\xi}\) is used. The paper's algebra \(P_a\delta u^a=0\) proves the final thermodynamic identity, but it does not by itself specify the CPS representative. This is the main open step before importing the derivation into a general field-dependent BMS charge calculation.

# Poincaré Casimir and BMS coadjoint orbit

At fixed \(M\), the family is the massive spin-zero Poincaré orbit:
\[
P^2=M^2,\qquad W_{\rm PL}^a=0.
\]
The entropy
\[
S=4\pi G P^2
\]
is therefore the unique nontrivial Poincaré Casimir. More general BMS transformations act coadjointly on the momentum and angular aspects. Supertranslations can create orbital Lorentz charge while leaving intrinsic spin zero. The natural extension is a boosted and supertranslated Kerr family, where orbital and intrinsic angular momentum must be separated before writing the first law.

# Concrete uses for current projects

1. The calculation is a compact model for distinguishing an invariant horizon quantity from the normalization of the asymptotic Hamiltonian generator.
2. The identity \(H_{w_g}=u\cdot P\) is a useful finite-dimensional test case for field-dependent symmetry parameters in CPS.
3. The entropy-as-Casimir form suggests treating thermodynamic potentials on a charge coadjoint orbit rather than selecting a preferred rest frame.
4. A follow-up calculation should evaluate
   \[
   k_{\xi[g]}=\delta Q_{\xi[g]}-i_{\xi[g]}\Theta-Q_{\delta\xi}
   \]
   in one explicit adjusted-bracket convention and show directly which term reproduces the variation of \(w_g\).

# Verification log

## Checked

- **Mathematica:** for a boost aligned with the polar axis,
  \[
  \mathcal I_{20}=1,\qquad
  \mathcal I_{30}=u_0,
  \]
  after imposing \(u_0^2-b^2=1\). The resulting \(P_0\), lowered spatial momentum, \(u\cdot P\), and area integral reproduce Eqs. (8), (1), (61), and (76).
- **Mathematica:** treating barred \(SL(2,\mathbb C)\) entries as independent conjugate symbols,
  \[
  u_0^2-u_1^2-u_2^2-u_3^2
  =(ad-bc)(\bar a\bar d-\bar b\bar c),
  \]
  so \(ad-bc=1\) gives the unit-hyperboloid condition used in Eq. (243).
- **Mathematica:** the derivative terms in Eq. (17) cancel exactly for \(\sigma^0=0\).
- **Mathematica:** using \(P_i=-M u^i\) for lowered spatial components, the component first law with \(T_H=(8\pi M u_0)^{-1}\) and \(\mu^i=-u^i/u_0\) has zero residual.
- **Mathematica:** the covariant relation \(\delta S=8\pi G P^a\delta P_a\) and the Legendre transform \(\Phi=-\beta^2/(16\pi G)\) reproduce exactly.
- **xAct/xCoba:** a component calculation of the outgoing-Eddington--Finkelstein metric gives
  \[
  \Gamma^\mu{}_{uu}\big|_{r=2M}
  =\left(-\frac{1}{4M},0,0,0\right),
  \]
  confirming the signed past-horizon value \(\kappa_{\mathcal N}=-1/(4M)\).

## Blocked

- The BMS/NP transformation law in Eq. (18) was read from the source but not independently rebuilt from the full spin/boost-weight transformation rules.
- The equality between the null-infinity charge representative and the horizon Iyer--Wald representative was not independently derived from a common presymplectic potential.
- The source does not state the adjusted variation used for the field-dependent \(T=w_g\). A complete CPS check is blocked until that convention is fixed.
- The absence of a Wald--Zoupas correction follows plausibly from the non-radiative shear-free family, but the paper does not display the flux analysis.

## Failed

1. The prose immediately before Eq. (19) states
   \[
   \kappa_{\mathcal N}=-(16\pi^2 M u_0)^{-1}.
   \]
   This contradicts Eq. (33), the direct xAct calculation, and the coefficient required by Eq. (34). It cannot be the geometric surface gravity.
2. Eq. (30) is syntactically missing an equals sign after \(\Phi(\beta)\).
3. Restoring \(G\) only in Eq. (22) fails dimensional and algebraic consistency. The corrected formulas require
   \[
   \beta^a=8\pi G P^a,\qquad
   \Phi=-\frac{\beta^2}{16\pi G}.
   \]
4. The proposed partition function
   \[
   Z=\operatorname{Tr}e^{+\beta\cdot\hat P}
   \tag{21}
   \]
   has the opposite sign from the convention \(\Phi=S-\beta\cdot P\). With the usual positive-energy Gibbs convention it should contain \(e^{-\beta\cdot\hat P}\), unless the source explicitly changes the definition of \(\beta\).
