---
paper id: 2608.05061v1
title: "Multipolar static tidal response of Schwarzschild black holes in cubic gravity: a metric-action derivation of tidal running"
authors:
  - Edilberto O. Silva
publication date: 2026-08-05T17:08
abstract: |-
  Static even-parity tidal response of Schwarzschild is derived in metric variables for a parity-even cubic-Weyl correction and every integer multipole. Order reduction converts the metric equations into a constrained first-order system whose scalar homogeneous operator is the GR tidal operator. A Green-function residue determines logarithmic running, explains the exceptional quadrupole, and maps the result to canonical and worldline normalizations.
comments: "33 pages, 8 tables; includes ancillary Wolfram Language files for symbolic verification and reproducibility"
url: https://arxiv.org/abs/2608.05061v1
summary: "A metric-action derivation of multipolar tidal running whose exact ancillary expressions pass after correcting a verifier-script parsing bug."
tags: []
---

[[2026_08_06_overview|Back to the 2026-08-06 overview]]

The paper's main value is methodological: retain the radial action and constrained metric variables long enough to see how a cubic interaction changes the source while leaving the GR tidal homogeneous operator intact. Three response notions must remain separate:

$$
\Delta(B/A)_\ell^{\rm ZM,fixed},
\qquad
k_\ell^E,
\qquad
c_{E,\ell}^{\rm fs}.
$$

They are, respectively, a fixed-integer Zerilli--Moncrief branch ratio, the canonically continued Love number, and the exterior finite-size worldline coefficient. Their distinction is essential already at \(\ell=2\).

## Cubic-Weyl EFT and corrected background

The bulk action is

$$
S_{\rm bulk}=\frac{M_{\rm Pl}^2}{2}\int d^4x\sqrt{-g}
\left[R+\epsilon_{\rm e}r_s^4\mathcal O_{\rm e}\right],
$$

$$
\mathcal O_{\rm e}
=C_{\mu\nu}{}^{\rho\sigma}
C_{\rho\sigma}{}^{\alpha\beta}
C_{\alpha\beta}{}^{\mu\nu}.
$$

Everything is kept only to first order in \(\epsilon_{\rm e}\). Higher radial derivatives are order-reduced with the lower-order Einstein equations, so no extra EFT-external modes are retained.

In areal-radius gauge,

$$
ds^2=-A(r)dt^2+\frac{dr^2}{B(r)}+r^2d\Omega^2,
$$

$$
A=f(1+\epsilon_{\rm e}a),
\qquad
B=f(1+\epsilon_{\rm e}b),
\qquad
f=1-\frac{r_s}{r},
$$

where

$$
a=-2\sum_{n=1}^5(r_s/r)^n+4(r_s/r)^6,
\qquad
b=-2\sum_{n=1}^5(r_s/r)^n+16(r_s/r)^6.
$$

The \(C^3\) and Riemann-cubic representatives agree on Ricci-flat configurations but differ off shell by Ricci-dependent terms; finite response values depend on the stated field-redefinition and mass-normalization convention.

## Arbitrary multipoles from the radial metric action

Set \(L=\ell(\ell+1)\). The source reduces the Einstein and cubic actions at exact integer \(\ell\), reconstructs their bounded polynomial dependence on \(L\), and checks unused multipoles. After order reduction and \(x=r/r_s\), the three metric corrections reduce to

$$
\mathbf X'=M_L(x)\mathbf X+\mathbf s_H(L,x)H+\mathbf s_{H'}(L,x)H',
\qquad
\mathbf X=(X_0,X_K)^T,
$$

with

$$
M_L=
\begin{pmatrix}
\dfrac{(2-L)x^2+(L-4)x+1}{x(x-1)} & 2-L\\[2mm]
\dfrac{(L-2)x+2}{x} & L-2
\end{pmatrix}.
$$

The third field is algebraic:

$$
X_2=-X_0+
\frac{12[(L+24)x^2-(L+62)x+39]}{x^6(x-1)}H
-\frac{12(14x-15)}{x^5}H'.
$$

The operative object is thus a constrained two-component first-order system plus an algebraic reconstruction, not an unconstrained higher-order metric equation.

## The unchanged GR tidal operator

Eliminating \(X_K\) gives

$$
X_0''+\frac{2x-1}{x(x-1)}X_0'
-\frac{Lx(x-1)+1}{x^2(x-1)^2}X_0
=j_L[H,H'].
$$

The homogeneous basis is the GR static tidal pair

$$
u_\ell=P_\ell^2(2x-1),
\qquad
v_\ell=Q_\ell^2(2x-1),
$$

with

$$
W_x[u_\ell,v_\ell]=\frac{L(L-2)}{2x(x-1)}.
$$

Variation of parameters gives

$$
X_0^{\rm part}
=-u_\ell(x)\int^x\frac{v_\ell(t)j_L(t)}{W_t}\,dt
+v_\ell(x)\int^x\frac{u_\ell(t)j_L(t)}{W_t}\,dt.
$$

The central chain is

$$
\text{metric action}
\to
\text{order-reduced constraints}
\to
\text{GR tidal operator + cubic source}
\to
\text{decaying-channel logarithm}.
$$

## Residue, running, and the exceptional quadrupole

The decaying Green-function residue factorizes as

$$
\mathcal R_L(a_1)
=-\frac76a_1^2L(L-2)(L-4)(L-6).
$$

After the Wronskian normalization, the metric logarithm contains

$$
\widehat\beta_{X_0}
=-\frac7{12}L^2(L-2)^2(L-4)(L-6).
$$

The physical gauge-invariant Zerilli--Moncrief coefficient is

$$
\beta_\ell^{\rm ZM}
=\epsilon_{\rm e}\frac7{12}
L^2(L-2)^2(L-4)(L-6).
$$

Hence

$$
\ell=2\Longrightarrow L=6\Longrightarrow\beta_2^{\rm ZM}=0,
$$

while every physical \(\ell\ge3\) runs. The factor \(L-6\) appears at the source-residue level, before the gauge-invariant or EFT normalization is chosen.

For a subtraction length \(r_0\),

$$
r_0\frac{dB_\ell^{\rm ZM}}{dr_0}=\beta_\ell^{\rm ZM}.
$$

The sign reverses when using the energy scale \(\mu_R=r_0^{-1}\).

## Quadrupole versus octupole

At fixed integer \(\ell=2\), after removing the additional growing tide,

$$
\Delta(B/A)_2^{\rm ZM,fixed}=-2400\,\epsilon_{\rm e}.
$$

The analytically continued canonical Love number is instead

$$
k_2^E=448\,\epsilon_{\rm e}.
$$

This is a prescription distinction rather than a gauge inconsistency. Fixed-integer local/homogeneous rearrangements and analytic continuation isolate different finite data.

For \(\ell=3\), the source constructs a global horizon-regular Green-function solution. Horizon logarithms in the separate \(P_3^2\) and \(Q_3^2\) channels cancel in the full particular solution. At infinity,

$$
\delta\Psi_3^{\rm ZM}\supset
\frac{9600\,\epsilon_{\rm e}\log x}{x^3},
$$

and, because \(\Psi_{Q,3}^{\rm ZM}\sim1/(42x^3)\),

$$
\beta_3^{\rm ZM}=403200\,\epsilon_{\rm e}.
$$

## Canonical and worldline normalization

The gauge-invariant to canonical bridge is

$$
\beta_\ell^+
=\mathcal C_\ell^{+\leftarrow{\rm ZM}}\beta_\ell^{\rm ZM},
$$

$$
\mathcal C_\ell^{+\leftarrow{\rm ZM}}
=-\frac{2^{2\ell-1}(\ell!)^4(\ell+1)(\ell+2)}
{(\ell-1)\ell(2\ell+1)[(2\ell)!]^2}.
$$

In particular,

$$
\beta_3^+=-15360\,\epsilon_{\rm e}.
$$

For the finite-size worldline action,

$$
S_{\rm fs}^{(\ell)}
=\frac{1}{4\pi G}\frac{\lambda_\ell^E}{2\ell!}
\int d\tau\,
\mathcal E_{a_1\cdots a_\ell}\mathcal E^{a_1\cdots a_\ell},
$$

the exterior coefficient obeys

$$
r_0\frac{dc_{E,\ell}^{\rm fs}}{dr_0}
=\frac{2^\ell M_0^{2\ell+1}}{G(2\ell)!}\beta_\ell^+.
$$

This does not compute a generic point-particle counterterm \(c_{E,\ell}^{\rm pp}\).

## Reusable method and scope

The most useful workflow is:

1. retain \(L=\ell(\ell+1)\) through the exact radial action;
2. reconstruct only the degree allowed by the projected action and verify unused multipoles;
3. vary before perturbative order reduction;
4. reduce the constrained metric fields while preserving the GR homogeneous operator;
5. read the logarithm from the decaying Green-function residue and separately check horizon regularity;
6. map the logarithm to a gauge invariant before converting to canonical/worldline conventions.

The calculation is static, electric, even parity, asymptotically flat, first order in the parity-even cubic-Weyl coupling, and restricted to \(\ell\ge2\). Rotation, frequency dependence, magnetic sectors, and full point-source matching are outside scope.

For metric/CPS work, the attraction is that the off-shell radial action and algebraic metric reconstruction remain visible. This note does not itself derive a covariant presymplectic current or gravitational charge.

## Verification note

### Checked

- The bundled exact expressions were loaded in Mathematica. Fifteen of its eighteen shipped checks pass directly: first-order matrix, polynomial degrees, source dimensions, normalization bridge, low-multipole anchors, finite-size running, and the quadrupole branch ratio.
- After reconstructing the intended multiline expressions with enclosing parentheses, the stored \(X_2\) identity, generic Zerilli--Moncrief beta, and canonical beta all return exact zero residuals. Combined result: \(18/18\).
- Exact low-multipole values were independently recovered:
  \[
  \beta_2^{\rm ZM}=0,\qquad
  \beta_3^{\rm ZM}=403200,\qquad
  \beta_3^+=-15360.
  \]

### Failed

- VerifyMainResults.m as shipped reports overall False. Its assignments for expectedX2 and expectedBetaZM end at syntactically complete newlines; the continuation terms are evaluated and discarded. This produces three false negatives. The machine-readable stored formulas themselves pass when the expected expressions are parenthesized. No ancillary file was edited.

### Blocked

- The full four-dimensional angular projections, reconstruction through \(\ell=13\), arbitrary-\(L\) Euler--Lagrange closure, global \(\ell=3\) solution, and all gauge-invariance identities were not independently rederived from the \(C^3\) action.
- Agreement with the modified-Teukolsky literature and external point-source matching remains source-derived.

