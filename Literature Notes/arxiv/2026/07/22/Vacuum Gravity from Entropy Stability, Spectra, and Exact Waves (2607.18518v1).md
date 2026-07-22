---
paper id: 2607.18518v1
title: "Vacuum Gravity from Entropy: Stability, Spectra, and Exact Waves"
authors:
  - David S. Pereira
publication date: 2026-07-20T21:20
abstract: |-
  The paper studies the vacuum metric and auxiliary-field branches of Gravity from Entropy. Around Minkowski space its logarithmic curvature action has exactly the Hessian of a coefficient-locked quadratic-gravity model, with a massless graviton, a healthy scalar for positive beta, and an opposite-residue tachyonic spin-2 branch. It separates diagonalizable curvature from a diagonal-restricted variational ansatz, shows that Ricci-flat metrics solve the local equations through curvature-quadratic order, identifies square-zero Ricci-flat pp-waves as exact local solutions of the analytic logarithmic branch, and recovers the standard translation current after restricting to the massless TT eigenspace.
comments: "26 pages"
url: https://arxiv.org/abs/2607.18518v1
summary: "A useful coefficient-locked quadratic-gravity Hessian and nilpotent-curvature benchmark, with an unavoidable positive-beta spin-2 instability."
tags: []
---

Back to [[2026_07_22_overview]].

Reason codes: `T2-model`, `T2-spectral`.

The transferable part is not the standard quadratic-gravity pole decomposition by itself. It is the exact reason the full logarithmic model has that Minkowski Hessian, the distinction between diagonalizing an operator and restricting the allowed perturbations, and the observation that analytic spectral traces are blind to a nonzero nilpotent curvature operator.

## The logarithmic curvature theory and its analytic branch

At each point the curvature acts on

\[
\mathcal V_x=Lambda^0T_x^*M\oplus\Lambda^1T_x^*M\oplus\Lambda^2T_x^*M,
\qquad \dim\mathcal V_x=11,
\]

through the block operator

\[
\mathbb R=R\oplus R_\mu{}^\nu\oplus
\mathcal R_{\mu\nu}{}^{\rho\sigma}.
\]

After setting the topological matter field to zero and algebraically eliminating the auxiliary \(G\)-field, the metric action is

\[
S_{\rm GfE}[g]
=-\frac{1}{\ell_{\rm P}^4}
\int d^4x\sqrt{-g}\,
\operatorname{Tr}_F\log(\widetilde I-\beta\mathbb R).
\tag{2.21}
\]

The paper assumes signature \((-+++)\),
\(\Box=-\partial_t^2+\nabla^2\), the principal matrix logarithm, and

\[
\sigma(\widetilde I-\beta\mathbb R)
\cap(-\infty,0]=\varnothing.
\]

This is an analytic metric-only branch. It need not remain inside the positive-operator domain of the entropy interpretation.

The auxiliary and metric-only descriptions agree only after imposing the algebraic vacuum equation

\[
\widetilde{\mathcal G}^{-1}
=\widetilde I-\beta\mathbb R
\]

with compatible boundary conditions. Treating \(\widetilde{\mathcal G}\) as independent phase-space data would define a different constrained system.

## Curvature traces lock the quadratic Hessian

The form-space normalization gives

\[
\operatorname{Tr}_F\mathbb R=3R,
\]

\[
\operatorname{Tr}_F\mathbb R^2
=R^2+R_{\mu\nu}R^{\mu\nu}
+R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma}.
\]

Thus the curvature-quadratic truncation is

\[
S_{\le2}=\frac{1}{\ell_{\rm P}^4}
\int\sqrt{-g}\left[
3\beta R+\frac{\beta^2}{2}
(R^2+R_{\mu\nu}^2+R_{\mu\nu\rho\sigma}^2)
\right].
\]

In four dimensions, Gauss--Bonnet gives

\[
R^2+R_{\mu\nu}^2+R_{\mu\nu\rho\sigma}^2
=E_4+5R_{\mu\nu}^2,
\]

so the local bulk representative is

\[
S_{\le2}\doteq
\int\sqrt{-g}\left(AR+BR_{\mu\nu}R^{\mu\nu}\right),
\]

\[
A=\frac{3\beta}{\ell_{\rm P}^4},
\qquad
B=\frac{5\beta^2}{2\ell_{\rm P}^4}.
\]

Around Minkowski, \(\mathbb R=O(h)\). Every logarithmic term \(\operatorname{Tr}\mathbb R^n\) with \(n\ge3\) begins at \(O(h^3)\). Therefore

\[
S_{\rm GfE}^{(2)}=(S_{\le2})^{(2)}
\]

exactly. This is an equality of Hessians at the chosen vacuum, not an equality of nonlinear actions.

## Linear operator, projectors, and the locked instability

The metric perturbation obeys

\[
3G_{\mu\nu}^{(1)}+\frac{5\beta}{2}
\left[
\Box G_{\mu\nu}^{(1)}
+(\eta_{\mu\nu}\Box-\partial_\mu\partial_\nu)R^{(1)}
\right]=0.
\]

Its trace gives

\[
(\Box-m_0^2)R^{(1)}=0,
\qquad
m_0^2=\frac{3}{5\beta}.
\]

On transverse-traceless spin two,

\[
\Box(\Box+\mu_2^2)h_{\mu\nu}^{(2)}=0,
\qquad
\mu_2^2=\frac{6}{5\beta},
\]

so the second pole has

\[
m_2^2=-\mu_2^2=-\frac{6}{5\beta}=-2m_0^2.
\]

For conserved sources the projector inverse is

\[
\Pi_{\rm alg}(s)
=\frac{2i\ell_{\rm P}^4}{3\beta}
\left[
\frac{P^{(2)}-\frac12P^{(0s)}}{s}
-\frac{P^{(2)}}{s+\mu_2^2}
+\frac{\frac12P^{(0s)}}{s-m_0^2}
\right].
\]

For the foundational \(\beta>0\), the spectrum is:

| Sector | Pole | Interpretation |
|---|---|---|
| massless spin two | \(s=0\) | ordinary graviton sign |
| scalar | \(s=m_0^2\) | healthy massive breathing/longitudinal mode |
| extra spin two | \(s=-\mu_2^2\) | opposite residue and tachyonic long-wavelength instability |

For \(k<\mu_2\), the last sector has

\[
\omega_\pm=\pm i\sqrt{\mu_2^2-k^2}.
\]

It is therefore not merely a heavy threshold. Taking \(\beta<0\) flips the Einstein sign and makes the scalar tachyonic. Order reduction can remove the non-GR branches from a chosen low-energy solution space, but it does not remove their poles from the unreduced Hessian.

## Wave sectors and the diagonal-curvature trap

Every linearized Einstein-vacuum wave lies in the massless branch. For propagation in the \(+z\) direction,

\[
h_{ij}^{\rm TT}=h_+(t-z)e^+_{ij}+h_\times(t-z)e^\times_{ij},
\qquad
\mathcal E_{ij}=R^{(1)}_{0i0j}
=-\frac12\ddot h_{ij}^{\rm TT}.
\]

The auxiliary dressing is nevertheless nonzero in the two-form block:

\[
q_{(0)}=q_{(1)}=0,
\qquad
q_{(2)\mu\nu\rho\sigma}
=\beta R^{(1)}_{\mu\nu\rho\sigma}.
\]

The scalar representative \(h_{\mu\nu}=\eta_{\mu\nu}\psi\) satisfies

\[
(\Box-m_0^2)\psi=0,
\qquad
R^{(1)}=-3m_0^2\psi,
\]

and produces

\[
\mathcal E_{xx}=\mathcal E_{yy}=\frac12\omega^2\psi,
\qquad
\mathcal E_{zz}=\frac12m_0^2\psi.
\]

The crucial distinction is:

1. diagonalize a diagonalizable curvature operator after deriving covariant equations;
2. evaluate those equations on a diagonal background;
3. restrict curvature to be diagonal before varying.

Only the third changes the variational problem and removes equations. A nonzero TT wave has

\[
(\mathcal R_{\rm TT}^{(1)})^2=0,
\qquad
\mathcal R_{\rm TT}^{(1)}\ne0,
\]

so it is nilpotent and non-diagonalizable. A strict diagonal-curvature restriction excludes ordinary gravitational radiation rather than proving it stable.

## Ricci-flat order counting and square-zero pp-waves

Every four-dimensional Ricci-flat metric solves the local bulk equations through curvature-quadratic order. A generic Ricci-flat solution can first receive logarithmic corrections from

\[
S_{\rm RF}^{(3)}
=\frac{\beta^3}{3\ell_{\rm P}^4}
\int\sqrt{-g}\,
\operatorname{Tr}_{\Lambda^2}(\mathcal C^3).
\]

Therefore “Ricci flat through quadratic order” is not “exact in the full logarithmic theory.”

Brinkmann pp-waves are more special:

\[
ds^2=-2dudv+dx^2+dy^2+H(u,x,y)du^2,
\qquad
(\partial_x^2+\partial_y^2)H=0.
\]

Their full curvature operator is square-zero,

\[
\mathbb R^2=0.
\]

Hence, for arbitrary finite profile amplitude on the analytic branch,

\[
\log(\widetilde I-\beta\mathbb R)=-\beta\mathbb R,
\qquad
(\widetilde I-\beta\mathbb R)^{-1}
=\widetilde I+\beta\mathbb R.
\]

The higher background variations vanish for the reason

\[
\delta\operatorname{Tr}(\mathbb R^n)
=n\operatorname{Tr}(\mathbb R^{n-1}\delta\mathbb R)=0,
\qquad n\ge3.
\]

This makes the pp-wave an exact local vacuum solution of the analytic metric branch. It does not make its Hessian equal to the Minkowski Hessian: second variations of powers \(n=3,4\) can survive, while those with \(n\ge5\) vanish.

The spectral lesson is particularly useful: analytic traces see eigenvalues but can miss a nonzero nilpotent Jordan part. Minkowski and a square-zero type-N curvature can have the same trace invariants while having different tidal fields and perturbation operators.

## Translation current on the isolated GR eigenspace

The TT quadratic action is

\[
S_{\rm TT}^{(2)}=\int d^4x\left[
-\frac{M_{\rm eff}^2}{8}(\partial h^{\rm TT})^2
+\frac{B}{4}(\Box h^{\rm TT})^2
\right].
\]

After restricting both the background perturbation and tangent variations to

\[
\Box h_{ij}^{\rm TT}=0,
\]

the \(B\)-dependent pieces drop out of the reduced symplectic and translation currents. One representative is

\[
\tau_{\mu\nu}^{(h)}
=\frac{M_{\rm eff}^2}{4}\left[
\partial_\mu h_{ij}^{\rm TT}\partial_\nu h_{\rm TT}^{ij}
-\frac12\eta_{\mu\nu}
\partial_\lambda h_{ij}^{\rm TT}\partial^\lambda h_{\rm TT}^{ij}
\right].
\]

After averaging,

\[
\langle\tau_{\mu\nu}^{(h)}\rangle
=\frac{1}{32\pi G_{\rm eff}}
\left\langle
\partial_\mu h_{ij}^{\rm TT}\partial_\nu h_{\rm TT}^{ij}
\right\rangle.
\]

This is a GR-normalized current on one eigenspace. It is not a positivity theorem for the complete fourth-order theory and not an Isaacson derivation from the full logarithmic equations.

## Use in current notes

- For linearization work: it is a clean example of why curvature order and perturbative order must be kept separate.
- For higher-derivative stability: coefficient locking forces a residue/tachyon obstruction that cannot be tuned away within the model.
- For CPS work: algebraically eliminating an auxiliary field and assigning it independent phase-space data are different operations.
- For spectral work: eigenvalues and traces of analytic functions do not capture nilpotent Jordan data.
- For gravitational energy: a standard current after projection to the massless eigenspace says nothing about the full Hamiltonian.

## Verification note

Checked independently with Mathematica in the decomposition pass:

- \(A/(2B)=3/(5\beta)\), \(-A/B=-6/(5\beta)\), and \(m_2^2/m_0^2=-2\);
- the Barnes--Rivers partial fractions and their three displayed denominators;
- the characteristic polynomial of the displayed scalar curvature matrix;
- that a generic displayed TT curvature matrix is nonzero, rank two, and square-zero;
- the contracted linearized-Riemann identities used in the auxiliary two-form contribution.

Source-derived, not independently established: the foundational normalization of the form-space action, the full covariant logarithmic variation and boundary completion, the global admissible operator domain, the nonlinear pp-wave Euler--Lagrange claim beyond the paper's local algebraic proof, and Hamiltonian stabilization by matter. No contradiction was found in the checked coefficient and mass chain.

Notation hazards: \(\mu_2^2>0\) is a positive parameter while the physical pole is \(m_2^2=-\mu_2^2\); “exact GR branch” refers to the full linearized equations, whereas only the square-zero pp-wave is claimed as a nonlinear exact local background.
