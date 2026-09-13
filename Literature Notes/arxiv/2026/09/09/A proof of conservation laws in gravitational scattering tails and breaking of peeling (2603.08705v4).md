---
paper id: 2603.08705v4
title: "A proof of conservation laws in gravitational scattering: tails and breaking of peeling"
authors:
  - Geoffrey Compère
  - Sébastien Robert
publication date: 2026-03-09T17:58
abstract: |-
  Under explicit polyhomogeneous Bondi, shear-tail, smoothness, and matter falloff hypotheses, the paper proves three antipodal corner matching identities across spatial infinity and rewrites them as one conservation law and one flux-balance law on the spatial-infinity hyperboloid.
comments: "11 pages; published version; v4 corrects Eq. (5b) relative to v3"
url: https://arxiv.org/abs/2603.08705v4
summary: "A sharp nonlinear asymptotic-matching theorem whose charge and corner structure is directly relevant, but whose existence-from-initial-data assumptions remain open."
tags: []
---

# Why this is high priority

Reason codes: `T1-boundary`, `T1-symmetry`, `T2-celestial-carrollian`, `T3-math`.

The paper gives a nonlinear, matter-compatible matching calculation between past and future null infinity through spatial infinity. It isolates actual corner quantities, identifies which are conserved charges and which obey a sourced balance law, and treats failure of peeling rather than assuming it away. This is close to the vault's emphasis on specifying the true corner data and distinguishing exact conservation from sourced transmission.

# Scope and theorem status

**Correct under the following precise conditions:** the three matching identities are proved for spacetimes admitting the stated polyhomogeneous Bondi expansions at both null infinities, the $1/u^\pm$ shear-tail expansion at the two spatial corners, smooth Bondi aspects on $S^2$ (hence no NUT charges), and stress energy that is compactly supported at null infinity and absent at $i^0$ at the orders used.

The paper does **not** prove that these asymptotics arise from a nonempty, stable class of Cauchy data. It explicitly leaves that existence problem to complementary work. Its final connection to logarithmic and subleading soft-graviton theorems is an expectation, not a theorem proved here.

# Complete source map

1. **Introduction:** motivates a common asymptotic framework for both null infinities when generic scattering produces tails and may violate peeling.
2. **Hypotheses:** fixes Bondi gauge, the polyhomogeneous radial expansion, the $u^\pm\to-\infty$ shear tail, sphere regularity, magnetic shear allowance, and matter falloffs.
3. **Results:** defines the dual mass aspect, corrected leading-tail tensor, and peeling vector; states their three antipodal matching laws.
4. **Derivation:** solves the null-infinity hierarchy, matches Bondi to Beig--Schmidt coordinates near both corners, and uses $dS_3$ tensor harmonics and parity.
5. **Charges and flux balance:** realizes the first and third identities as conserved hyperboloid charges and the second as a sourced balance law.
6. **Discussion:** derives restrictions on asymptotically simple, no-incoming-radiation solutions and separates generic peeling failure from fine-tuned exceptions.
7. **Supplement A:** lists the relevant Einstein equations at null infinity.
8. **Supplement B:** gives the Beig--Schmidt equations at spatial infinity and constructs invariant symmetric, divergence-free, traceless tensors $I_{ab}$ and $J_{ab}$.
9. **Supplement C:** records residual Beig--Schmidt transformations.
10. **Supplement D:** supplies the two corner coordinate maps.
11. **Supplement E:** derives the sourced $dS_3$ asymptotics used in the tail balance law.

# Conventions and asymptotic data

At future null infinity the Bondi metric is

$$
ds^2=\frac{Ve^{2\beta}}r\,du^2-2e^{2\beta}\,du\,dr
+r^2h_{AB}(dx^A-U^Adu)(dx^B-U^Bdu),
$$

with

$$
V=-r+2m+o(1),\qquad
U^A=\frac{U_2^A}{r^2}+\frac{\log r\,U_{3,1}^A+U_3^A}{r^3}+o(r^{-3}),
$$

$$
h_{AB}=\gamma_{AB}\sqrt{1+\frac{\mathcal C^{CD}\mathcal C_{CD}}{2r^2}}
+\frac{\mathcal C_{AB}}r,
\qquad
\mathcal C_{AB}=C_{AB}+\frac{D_{AB}}r+o(r^{-1}).
$$

$C_{AB}$ and $D_{AB}$ are trace-free with respect to the unit-sphere metric $\gamma_{AB}$. The tensor $D_{AB}$ measures leading failure of peeling through

$$
\Psi_0=r^{-4}D_{AB}m^Am^B+o(r^{-4}),\qquad
\Psi_1=r^{-4}\log r\,\nabla^BD_{AB}m^A+O(r^{-4}).
$$

The past-null-infinity expansion is written with $u^-=-v$, while $u^+=u$. Both spatial corners are therefore $u^\pm\to-\infty$. The assumed tail is

$$
C_{AB}^\pm=C_{AB}^{\pm(0)}-\frac{C_{AB}^{\pm(1)}}{u^\pm}
+o((u^\pm)^{-1}).
$$

The leading magnetic shear is allowed, although it vanishes for the point-particle scattering class discussed later.

# Corner quantities

The dual covariant mass aspect is

$$
\widetilde{\mathcal M}^\pm
=\frac14\nabla_C\nabla^E\epsilon^{CD}C^\pm_{DE}
-\frac18\epsilon^{CD}C^\pm_{DE}N^{\pm EC}.
$$

The tail tensor corrected by total energy-momentum and magnetic shear is

$$
\mathcal C_{AB}^{\pm(1)}
=(u^\pm)^2N_{AB}^\pm+(-E\pm P_in_i)C_{AB}^{\pm(B)}.
$$

The third quantity is a finite combination

$$
\begin{aligned}
\mathcal D_A^\pm={}&\nabla^BD_{AB}^\pm
\pm6P_i\left(m^\pm\nabla_An_i
+\widetilde{\mathcal M}^\pm\epsilon_{AB}\nabla^Bn_i\right)\\
&-2(E\mp P_in_i)
\left(\nabla_Am^\pm+\epsilon_{AB}\nabla^B\widetilde{\mathcal M}^\pm\right)\\
&-\frac{(u^\pm)^2}{2}
\nabla_C\nabla_{\langle A}\nabla_{B\rangle}N^{\pm BC}.
\end{aligned}
$$

Each admits a finite $u^\pm\to-\infty$ limit under the stated hypotheses. This is important: the matching laws apply to these complete combinations, not to an arbitrary geometric corner trace.

# Three antipodal matching identities

Let $\Upsilon^*$ be the sphere antipodal pullback. The main result is

$$
\Upsilon^*\widetilde{\mathcal M}^{+(0)}
=-\widetilde{\mathcal M}^{-(0)},
$$

$$
\Upsilon^*\nabla^BC_{AB}^{+(1)}
=\nabla^BC_{AB}^{-(1)}
+2\Upsilon^*\mathcal S_A[\mathcal D_B^{-(0)}],
$$

$$
\Upsilon^*\mathcal D_A^{+(0)}=-\mathcal D_A^{-(0)}.
$$

The first is the magnetic/dual-supertranslation matching law. The third is a conserved peeling-data law. The second is not a homogeneous conservation law: the map $\mathcal S_A$ is generated by the $dS_3$ source carried by the first-order invariant tensor.

The arXiv metadata says v4 corrects Eq. (5b), which is the second displayed matching identity above. The current source and rendered PDF agree on the added term $2\Upsilon^*\mathcal S_A[\mathcal D_B^{-(0)}]$.

# How the proof works

The Bondi equations first give the corner expansions

$$
m^\pm=m^{\pm(0)}-\frac{m^{\pm(1)}}{u^\pm}+o((u^\pm)^{-1}),
\qquad
m^{\pm(1)}=\frac14\nabla^A\nabla^BC_{AB}^{\pm(1)},
$$

and determine the linear and logarithmic pieces of the angular-momentum aspect. The authors then transform from Bondi to Beig--Schmidt coordinates near both corners. At spatial infinity,

$$
\begin{aligned}
ds^2={}&\left(1+\frac{2\sigma}{\rho}+\frac{\sigma^2}{\rho^2}+o(\rho^{-2})\right)d\rho^2\\
&+\rho^2\left(q_{ab}+\frac{k_{ab}-2\sigma q_{ab}}\rho
+\frac{\log\rho}{\rho^2}i_{ab}+\frac1{\rho^2}j_{ab}+o(\rho^{-2})\right)d\phi^ad\phi^b.
\end{aligned}
$$

Here $q_{ab}$ is the unit $dS_3$ metric. Gauge-invariant symmetric, divergence-free, traceless tensors $I_{ab}$ and $J_{ab}$ satisfy

$$
(\Box-2)I_{ab}=0,
\qquad
(\Box-2)J_{ab}=S_{ab}.
$$

Their $dS_3$ parity and corner asymptotics isolate the admissible harmonic branches. The homogeneous $I_{ab}$ yields the antipodal law for $\mathcal D_A^{(0)}$. The $p$-parity piece $S_{ab}^{(p)}=2I_{ab}$ changes the leading behavior of $J_{ab}$ even though it is subleading at each end, producing the source term in the tail matching law.

# Charge and balance-law form

For a homogeneous test vector $\chi_Y^{(q)a}$, the charge built from $I_a=\cosh\tau\,n^bI_{ab}$ is conserved and gives

$$
\int_{S^2}\frac{d^2\Omega}{8\pi}Y^A\mathcal D_A^{+(0)}
=-\int_{S^2}\frac{d^2\Omega}{8\pi}(\Upsilon^*Y^A)\mathcal D_A^{-(0)}.
$$

For $J_a=\cosh\tau\,n^bJ_{ab}$, one has $(\Box-1)J_a=S_a$. If $(\Box-1)\chi_Y^{(p)a}=0$, then

$$
\mathcal D_a\left(\chi_Y^{(p)b}\mathcal D^aJ_b
-J_b\mathcal D^a\chi_Y^{(p)b}\right)
=\chi_Y^{(p)a}S_a.
$$

Integration over $dS_3$ gives the finite flux-balance law for the leading shear tail. Thus only the $I$-charge is conserved; the $J$-charge has a controlled bulk source.

# Peeling consequence

For no incoming radiation and imposed peeling $D_{AB}^\pm=0$, the third identity reduces to

$$
3P_i m^{-(0)}\nabla_An_i
+(E+P_in_i)\nabla_Am^{-(0)}=0.
$$

Its one-body solution is

$$
m^{-(0)}(n)=\frac{m}{\gamma^3(1+v_in_i)^3}.
$$

Together with the analogous equation for $\widetilde{\mathcal M}^{-(0)}$ and the absence of its $\ell=0,1$ modes, this forces $\widetilde{\mathcal M}^{-(0)}=0$. Under all of the paper's hypotheses, asymptotic simplicity plus no incoming radiation therefore permits at most one incoming and one outgoing massive body. Generic multi-body scattering instead breaks peeling unless the tail and mass data are finely tuned.

# Independent checks

**Checked (rendered PDF, source, Mathematica, and direct algebra):**

- The rendered main-result page is legible and agrees with the TeX source for all three v4 identities, including the source term in corrected Eq. (5b).
- Rotationally align a single velocity with the $z$ axis, so $P_i\nabla_\theta n_i=-Ev\sin\theta$ and $m=A(1+v\cos\theta)^{-3}$. Mathematica gives exact zero for
  $$
  3P_i m\nabla_\theta n_i+(E+P_in_i)\nabla_\theta m,
  $$
  confirming the stated one-body solution of the reduced peeling equation.
- The small-velocity expansion is
  $$
  m=A\left(1-3v\cos\theta+6v^2\cos^2\theta
  -10v^3\cos^3\theta+15v^4\cos^4\theta+\cdots\right),
  $$
  consistent with the exact rational form.
- Applying the product rule to the $J$--$\chi$ current gives zero residual in the Green-identity step; substituting $(\Box-1)J_a=S_a$ and $(\Box-1)\chi_a=0$ leaves precisely $\chi^aS_a$.

**Source-derived:** the subleading Bondi hierarchy, the full Bondi-to-Beig--Schmidt coordinate maps, the construction and gauge invariance of $I_{ab},J_{ab}$, the classification of all allowed $dS_3$ harmonic branches, and convergence of the bulk source integral.

**Blocked:** the submission contains no ancillary symbolic or numerical code. Replaying the nonlinear curvature expansion and all supplementary tensor identities would require encoding the authors' full Bondi and Beig--Schmidt ansätze in xAct; this was not reconstructed from scratch in the daily pass.

**Not proven by the paper:** existence, completeness, or nonlinear stability of initial-data classes that generate the assumed two-sided polyhomogeneous asymptotics; a derivation of the logarithmic or subleading soft theorem; or an observable-algebra sewing theorem.

# Translation to the vault programme

This paper supplies a useful model of precise corner typing. The matched data are not bare restrictions: they are corrected finite combinations of Bondi coefficients, total momentum, magnetic shear, and tail data. Moreover, the second map is intrinsically sourced. A regional sewing analogue should likewise distinguish a genuine conserved interface charge from a response or flux term that carries information through the intermediate region.

The $dS_3$ construction is a spacetime matching and charge theorem, not a proof of an algebraic pushout, a complete kernel/image statement, or a state-representation theorem. Its strongest transferable lesson is methodological: declare the joint asymptotic domain, construct invariant corner variables, and only then state conservation or balance.

Back to [[2026_09_09_overview]].
