---
paper id: 2611.09786v1
title: Edge dynamics of covariant higher-rank Chern-Simons theory of fractons
authors:
  - Erica Bertolini
  - Matteo Carrega
  - Nicola Maggiore
  - Daniel Sacco Shaikh
  - Maria Florencia Semino
publication date: 2026-11-06T17:44:23Z
abstract: |-
  The planar boundary of a covariant rank-two Chern–Simons model carries a double-divergence-conserved tensor current and an ordinarily conserved vector current. Zeroth and first normal moments of one scalar functional relation produce their current algebras. On a decoupled boundary branch the induced dynamics consists of a chiral scalar and a higher-rank sector with an auxiliary field, admitting a Luttinger and a chiral description. A mixed bulk–boundary kernel is a scalar-gauge Hessian and cancels from the local field strength. The source also studies boundary matching and non-planar gauge projections.
comments: '37 pages, no figures'
url: https://arxiv.org/abs/2611.09786v1
summary: 'Useful explicit boundary currents, canonical pairs and a pure-gauge mixed kernel; the claimed chiral matching needs an additional compatibility condition, exhibited here with an exact counterexample.'
tags: []
---

# Normal moments, boundary canonical pairs and a pure-gauge bulk response

This is a concrete model for the CPS/edge-mode work: a single higher-derivative gauge parameter has two boundary jets, and the corresponding two normal moments retain different boundary fields. The main reusable objects are the canonical pairs, their derivative central terms, and a mixed commutator which acts nontrivially on a gauge representative but trivially on local bulk field strengths. The induced boundary Hamiltonian and its relation to the bulk boundary conditions must be kept distinct.

The qualification affecting reuse is specific: **the parameter relations (7.12), (7.19) and (7.21) are not sufficient for the asserted nontrivial chiral matching.** The original boundary equation (7.7) leaves an additional condition. Section 5 below derives it, gives an exact positive-energy counterexample to sufficiency, and also gives a compatible example. This does not invalidate the earlier local current/auxiliary-field constructions or the Hessian cancellation.

Source: [arXiv v1](https://arxiv.org/abs/2611.09786v1), §§1–10, PDF/printed pp. 1–33, references pp. 33–37; no appendices. Important action, moment, algebra, scalar, matching and geometric formulas were checked on rendered pages, in particular pp. 6, 8, 11–12, 14–15, 17, 19, 23–25, 28 and 31. This note follows the full argument, rather than treating the 37-page paper as a short abstract-level edge-mode proposal.

## 1. The half-space action and the boundary variables it actually retains

Use \(\eta_{\mu\nu}=\mathrm{diag}(-1,1,1)\), \(\epsilon^{012}=+1\), \(\epsilon^{ij}=\epsilon^{ij2}\), and \(x^2=z\ge0\), with \(X=(t,x)=(x^0,x^1)\). The symmetric field transforms as
\[
\delta h_{\mu\nu}=\partial_\mu\partial_\nu\lambda,
\qquad S_{\rm bulk}=\kappa\int d^3x\,\theta(z)
\epsilon^{\mu\nu\rho}h_{\mu\ell}\partial_\nu h_\rho{}^\ell.
\]
The coupling \(\kappa\ne0\) is retained, since it fixes current normalization and the orientation of positive-energy edge propagation. The action depends on the traceless part of \(h\). This is a covariant higher-rank model, not ordinary topological Abelian CS theory; one should not infer that its complete bulk physics is fixed by edge CFT data.

Split \(h_{22}=\sigma\), \(h_{2i}=w_i\), and \(h_{ij}\). Up to the integrations by parts used by the source,
\[
S_{\rm bulk}=\kappa\int\theta(z)\epsilon^{ij}
[2w_i\partial_j\sigma+2h_i{}^k\partial_jw_k-w_i\partial_zw_j
+h_{ik}\partial_zh_j{}^k].
\]
Fix \(\sigma=0\) with a multiplier \(b\), but do not set \(w_i=0\). Add sources \(J^{ij}h_{ij}+J^iw_i\) in the half-space and the local quadratic boundary term
\[
S_{\rm bd}=\int\delta(z)[c^{ij}w_iw_j+c^{ijk}w_ih_{jk}
+c^{ijkl}h_{ij}h_{kl}].
\]
The coefficients have the pair symmetries in eq. (2.13). Varying the step function produces the boundary conditions
\[
\begin{aligned}
\kappa\epsilon^{ji}w_j+2c^{ij}w_j+c^{ijk}h_{jk}&=0,\\
-{\kappa\over2}(\epsilon^{ik}h_k{}^j+\epsilon^{jk}h_k{}^i)
+c^{kij}w_k+2c^{ijkl}h_{kl}&=0.
\end{aligned}
\]
They are equations at \(z=0\), not independently chosen reflecting conditions.

I varied all six independent components of the step-function bulk action explicitly. The resulting interior and delta-supported coefficients agree with eqs. (3.1)–(3.3), with the required factor two for an off-diagonal symmetric component. The boundary quadratic/source terms then add their ordinary derivatives. This checks the signs entering both moment identities below. A separate flat-space tensor calculation reproduces the vanishing trace and double divergence of the invariant interior Euler operator.

## 2. One scalar functional relation, two boundary moments

Let \(E^{ij}=\delta S/\delta h_{ij}\), \(2E^{i2}=\delta S/\delta w_i\), \(E^{22}=\delta S/\delta\sigma\). The scalar gauge generator selects
\[
\partial_\mu\partial_\nu E^{\mu\nu}
=\partial_i\partial_jE^{ij}+2\partial_i\partial_zE^{i2}
+\partial_z^2E^{22}.
\]
For the full gauge-fixed, sourced boundary action, setting this to zero is a consequence of the field equations, **not** an extra off-shell Noether identity. The source uses the Schwinger–Dyson interpretation to differentiate the resulting relations.

Normal integrations first run over the full line, since the step/delta support is already inside \(E\). Assume sufficient falloff, including weighted falloff for the first moment. Then
\[
\int dz\,\partial_zE^{i2}=0,
\qquad\int dz\,z\partial_zE^{i2}=-\int dz\,E^{i2},
\quad\int dz\,z\partial_z^2E^{22}=0.
\]
The first moment therefore retains precisely what the zeroth loses. Inserting the explicit Euler equations and their boundary conditions gives eqs. (4.4), (4.7):
\[
\begin{aligned}
\int_0^\infty dz\,\partial_i\partial_jJ^{ij}
&=-2\kappa\epsilon^{ik}\partial_i\partial_jh_k{}^j|_0,\\
\int_0^\infty dz\,[z\partial_i\partial_jJ^{ij}-\partial_iJ^i]
&=2\kappa\epsilon^{ij}\partial_iw_j|_0.
\end{aligned}
\]
For an explicit reconstruction, put \(H=\epsilon^{ik}\partial_i\partial_jh_k{}^j\), \(C=\epsilon^{ij}\partial_iw_j\). The bulk equations imply
\[
\partial_i\partial_jJ^{ij}=2\kappa\partial_zH,
\qquad \partial_iJ^i=2\kappa\partial_zC-2\kappa H.
\]
The weighted first equation integrates to \(-2\kappa\int H\); the second integrates to \(-2\kappa C|_0-2\kappa\int H\). Subtraction cancels the finite bulk integral and leaves the first-moment boundary term. I independently reproduced these two differential identities before integrating. Neglecting the bulk integral separately would not be justified.

At zero sources, define boundary currents
\[
\mathcal J^{ij}=\epsilon^{ik}h_k{}^j+\epsilon^{jk}h_k{}^i,
\qquad \mathcal K^i=\epsilon^{ij}w_j.
\]
They obey \(\eta_{ij}\mathcal J^{ij}=0\), \(\partial_i\partial_j\mathcal J^{ij}=0\), and \(\partial_i\mathcal K^i=0\). In scalar-charge form,
\[
\rho_\partial=\partial_0\mathcal J^{00}+2\partial_1\mathcal J^{01},
\qquad \partial_0\rho_\partial+\partial_1^2\mathcal J^{11}=0.
\]
Charge and dipole conservation follow only when the spatial endpoint terms vanish.

The local residual equation \(\partial_z^2\lambda=0\) gives \(\lambda=\lambda_0(X)+z\lambda_1(X)\). These are two jets of one scalar parameter, not two bulk gauge symmetries. In particular an arbitrary \(z\lambda_1\) need not preserve normal falloff. Higher moments have coefficients \(-2n\int z^{n-1}E^{i2}\) and \(n(n-1)\int z^{n-2}E^{22}\); for \(n\ge2\) the boundary delta contribution is killed by the normal weight. They add bulk moment relations, not new independent boundary breakings.

## 3. From contact terms to the canonical edge fields

Differentiating the zeroth moment with respect to a symmetric tensor source gives \(\partial_m\partial_n\delta^2(X-X')\). Differentiating time ordering gives both \(\delta(t-t')\) and \(\partial_t\delta(t-t')\) terms. Keeping the latter is necessary to obtain the source's combination
\[
D_h=\partial_x(h_{00}+h_{11})-\partial_t h_{01},
\qquad [D_h(X),h_{11}(X')]_{t=t'}={i\over2\kappa}\partial_x^2\delta(x-x').
\]
The first normal moment similarly gives
\[
[w_1(X),w_1(X')]={i\over2\kappa}\partial_x\delta(x-x'),
\]
\[
[w_1(X),h_{11}(X',z')]_{t=t'}=-{iz'\over2\kappa}\partial_x^2\delta(x-x').
\]
The mixed intrinsic boundary limit is zero, but the finite-distance commutator is not. Its differing source weights, one for \(J^1\) and \(z'\) for \(J^{11}\), explain the normal-distance dependence without a new propagating boundary coupling.

The source-free constraints have local solutions
\[
w_i=\partial_i\chi,\qquad h_{ij}=\partial_i\partial_j\xi+\eta_{ij}\phi.
\]
For the second statement, the divergence-free vector \(\epsilon^{ik}\partial_i h_{kj}\) is locally a dual gradient. Subtract \(\eta_{kj}\phi\) to get a closed one-form for each \(j\); symmetry then makes its potential another gradient. These are local Poincaré-lemma steps; global cycles and zero modes are not included.

The parametrization has the redundancy
\[
\delta\xi=a+b_iX^i-{c\over2}X^iX_i,
\qquad\delta\phi=c,
\]
which leaves \(h_{ij}\) unchanged. The coefficient is \(-c/2\), as confirmed on PDF p. 14; text extraction mangles this fraction. It is distinct from the bulk gauge transformation. With \(\psi=\partial_x\xi\to0\) as \(|x|\to\infty\), its \(b_1,c\) parts are excluded by the phase-space boundary conditions.

In these variables \(D_h=\partial_x^3\xi\), so, after removing the integration zero modes, the tensor algebra identifies
\[
q=2\kappa\partial_x\xi=2\kappa\psi,
\quad p=\partial_x^2\xi+\phi=h_{11},
\qquad[q(x),p(x')]=i\delta(x-x').
\]
Indeed \(D_h=q''/(2\kappa)\), reproducing exactly its second-derivative central term. This is the canonical pair to borrow for a CPS comparison; \(\xi\) itself is not the canonically normalized propagating field.

### The ordinary sector

For explicit dynamics the source specializes to \(c^{ijk}=0\). The action is then a sum of the two sectors, not a generally established factorization for arbitrary mixed boundary coefficients. The ordinary part is
\[
S_w=\int dt\,dx\,[\kappa\chi'\dot\chi+a_w(\chi')^2],
\quad\pi_\chi-\kappa\chi'=0,
\quad\{\Omega_\chi(x),\Omega_\chi(x')\}=-2\kappa\partial_x\delta(x-x').
\]
Inverting this constraint kernel on nonzero spatial momentum gives
\(\{\chi'(x),\chi'(x')\}_D=\partial_x\delta/(2\kappa)\), matching the current algebra. Its equation is \(\partial_x(\kappa\dot\chi+a_w\chi')=0\), so, after the zero mode is removed, \(v_w=a_w/\kappa\). The Hamiltonian \(-a_w(\chi')^2\) is positive for \(a_w<0\).

For chiral smearings \((\partial_t+v_w\partial_x)\alpha=0\), define
\[
Q_w[\alpha]=\int dx\,\alpha w_1,
\quad[Q_w[\alpha],Q_w[\beta]]={i\over2\kappa}\int dx\,\alpha\beta',
\quad G_w=2\kappa Q_w.
\]
The endpoint terms vanish under the same support/falloff convention. Then \(i[G_w,w_1]=\alpha'\), locally \(\delta\chi=\alpha\), and \(Q_w\) is conserved. This intrinsic boundary symmetry does not require assuming a globally admissible affine bulk extension.

## 4. Auxiliary-field elimination, Luttinger dynamics and two different chiral operations

The tensor sector has the first-order action (6.18)
\[
S_h=\int dt\,dx\left[p\dot q+{a_1-a_2\over4\kappa^2}(q')^2+a_2p^2\right],
\quad\mathcal H_h=-a_2p^2-{a_1-a_2\over4\kappa^2}(q')^2.
\]
Its strictly positive nonzero-mode branch is
\[
a_2<0,\qquad a_1-a_2<0.
\]
At \(a_2=0\), \(p\) constrains \(\dot q=0\); at \(a_1=a_2\), there is no gradient energy. Neither is the nondegenerate propagating branch.

In scalar potentials,
\[
\mathcal L_h=2\kappa(\xi''+\phi)\dot\xi'
+a_1(\xi'')^2+a_2\phi(\phi+2\xi'').
\]
Variation gives
\[
\phi=-{\kappa\over a_2}\dot\psi-\psi',
\qquad p=-{\dot q\over2a_2}.
\]
Substitution, retaining the symplectic contribution, yields
\[
S_h[\psi]=\int dt\,dx\left[-{\kappa^2\over a_2}\dot\psi^2
+(a_1-a_2)(\psi')^2\right].
\]
I reproduced the full scalar Euler equations, the elimination and Hamiltonian positivity conditions. The higher derivatives of \(\xi\) have not generated an extra Ostrogradsky mode: \(\phi\) was auxiliary, while \(\psi\) is the single second-order scalar in this sector.

To compare with a nonchiral Luttinger liquid, start from two oppositely moving chiral fields and set \(\psi=(\varphi_-+\varphi_+)/\sqrt2\), \(\zeta=(\varphi_--\varphi_+)/\sqrt2\). After tangential integration by parts,
\[
S=-k\int[v((\zeta')^2+(\psi')^2)-2\zeta'\dot\psi].
\]
The \(\zeta\) equation gives \(v\zeta'=\dot\psi\) modulo a spatial zero mode. Eliminating it gives \(k\int[\dot\psi^2/v-v(\psi')^2]\), with
\[
v^2={a_2(a_1-a_2)\over\kappa^2},
\qquad k^2=\kappa^2{a_1-a_2\over a_2}.
\]
Both squared quantities are also positive on the wrong-sign Hamiltonian branch; positive energy, not real speed alone, selects the physical branch. The density is proportional to \(\psi'\), while \(\psi\) is the displacement field. No compactification radius or microscopic operator spectrum is determined by this local quadratic correspondence.

The distinction in §6.4 is important for reductions:

1. **Set \(\phi=0\) after varying the full theory.** The auxiliary equation gives \((\partial_t+a_2\partial_x/\kappa)\psi=0\). The remaining equation then requires \((a_1-2a_2)\partial_x^3\psi=0\), so a generic nonzero-momentum chiral subsector needs \(a_1=2a_2\).
2. **Set \(\phi=0\) in the action.** This produces a different reduced phase space,
\[
S_{h,\rm red}=\int[2\kappa\psi'\dot\psi+a_1(\psi')^2],
\quad v_{h,\rm red}={a_1\over2\kappa},
\quad[\psi'(x),\psi'(x')]_{\rm red}={i\over4\kappa}\partial_x\delta.
\]
The factor \(1/(4\kappa)\) follows from inverting its own constraint kernel; it is not obtained by substituting into the unreduced \([q,p]\). The velocities agree at \(a_1=2a_2\), but agreement of equations at that point does not erase the difference between restriction and symplectic reduction.

## 5. Bulk boundary matching: what passes and what is missing

For \(c^{ijk}=0\), the vector-sector boundary matrix is
\[
\begin{pmatrix}2c^{00}&2c^{01}-\kappa\\2c^{01}+\kappa&2c^{11}\end{pmatrix}
\binom{\dot\chi}{\chi'}=0.
\]
Its determinant vanishes iff \(4[c^{00}c^{11}-(c^{01})^2]+\kappa^2=0\), and on a nondegenerate current-carrying null vector
\[
v_w={2c^{01}-\kappa\over2c^{00}}
={2c^{11}\over2c^{01}+\kappa},\qquad a_w=\kappa v_w.
\]
Use whichever denominator is nonzero; the null vector with \(w_1=0\) has no local spatial-current excitation. The determinant and these ratios are reproduced.

For the tensor sector define \(c_0=c^{0000},c_1=c^{0001},c_2=c^{0011},c_3=c^{0111},c_4=c^{1111},c_5=c^{0101}\). In the column order \((\ddot\xi,\dot\xi',\xi'',\phi)\), the original three boundary equations (7.7)–(7.9) are
\[
B\begin{pmatrix}\ddot\xi\\\dot\xi'\\\xi''\\\phi\end{pmatrix}=0,
\quad B=\begin{pmatrix}
2c_0&4c_1+\kappa&2c_2&2(c_2-c_0)\\
2c_1-\kappa/2&4c_5&2c_3-\kappa/2&2(c_3-c_1)\\
2c_2&4c_3+\kappa&2c_4&2(c_4-c_2)
\end{pmatrix}.
\]
On \(c_0\ne0\), \(\Delta=c_2^2-c_0c_4\ne0\), the source sets
\[
c_5={\kappa^2(c_0-2c_2+c_4)/16+2c_1c_2c_3-c_0c_3^2-c_1^2c_4\over\Delta},
\quad\Lambda_h={c_2(\kappa+4c_1)-c_0(\kappa+4c_3)\over2\Delta}.
\]
Eliminating \(\ddot\xi\) then gives \(\xi''+\phi+\Lambda_h\dot\xi'=0\). I checked the rank-reduction relation. It fixes \(a_2=\kappa/\Lambda_h\) when compared with the full auxiliary equation, assuming \(\Lambda_h\ne0\).

For unrestricted \(\phi\), substituting that relation into the first boundary equation gives
\[
\ddot\xi=-\xi''-\left[{4c_1+\kappa\over2c_0}
-{c_2-c_0\over c_0}\Lambda_h\right]\dot\xi'.
\]
The full boundary wave equation is
\(\partial_x^2[(a_1-a_2)\xi''-(\kappa^2/a_2)\ddot\xi]=0\).
Under the source's **strong operator-matching criterion**, its independent \(\xi''\) coefficient forces \(a_2(a_1-a_2)=-\kappa^2\), incompatible with strict positivity. This reproduces eq. (7.16); it is not a no-go for every weaker matching prescription or a degenerate coefficient branch.

### The remaining condition on the proposed \(\phi=0\) branch

The paper next gives \(v_h=1/\Lambda_h\), \(a_1=2a_2=2\kappa/\Lambda_h\). These make the full boundary equations chiral, but the original first bulk boundary equation still has to hold. For \(\xi=F(x-v_ht)\), it is
\[
\left[2c_0v_h^2-(4c_1+\kappa)v_h+2c_2\right]F''=0.
\]
Therefore a nontrivial local profile additionally requires
\[
\boxed{\ 2c_0-(4c_1+\kappa)\Lambda_h+2c_2\Lambda_h^2=0\ }.
\]
It does not follow identically from the printed formula for \(c_5\). This is a failure of the sufficiency asserted in the paragraph following (7.21), PDF p. 25, rather than a transcription issue.

An exact counterexample, reproduced with rational arithmetic, is
\[
\kappa=1,\quad(c_0,c_1,c_2,c_3,c_4)=(1,0,0,-\tfrac12,1).
\]
The printed relations give \(c_5=1/8\), \(\Lambda_h=-1/2\), \(v_h=-2\), \(a_2=-2\), \(a_1=-4\). The nondegeneracy and positive-energy inequalities all hold. Yet
\[
B\,(v_h^2,-v_h,1,0)^t=(10,-5/2,0)^t\ne0.
\]
Thus any nonzero \(F''\), for instance a smooth localized profile, fails the original boundary conditions even though it solves the proposed full chiral boundary equations.

This does **not** imply that the matched branch is empty. For example
\[
\kappa=1,\quad(c_0,c_1,c_2,c_3,c_4,c_5)=(1,-\tfrac34,0,-\tfrac34,1,1)
\]
gives \(\Lambda_h=-1\), \(v_h=-1\), \(a_2=-1\), \(a_1=-2\), and all three original boundary residuals vanish. Both examples were checked against the full matrix, not only its eliminated equation.

Accordingly, the source's co-propagation conclusion should be used conditionally: **if** a nontrivial positive-energy matched tensor branch satisfies all remaining boundary equations, then \(a_2<0,a_w<0\) imply \(\mathrm{sgn}(v_h)=\mathrm{sgn}(v_w)=-\mathrm{sgn}(\kappa)\). The sign argument passes; the advertised parameter relations alone do not establish the branch for arbitrary remaining \(c_i\).

## 6. Why the mixed nonlocal kernel does not produce a field-strength signal

The scalar-gauge-invariant local field strength is
\[
F_{\mu\nu\rho}=\partial_\mu h_{\nu\rho}+\partial_\nu h_{\mu\rho}
-2\partial_\rho h_{\mu\nu}.
\]
Its gauge variation vanishes by commutativity of flat partial derivatives, independently checked tensorially. Moreover \(F_{\mu\nu\rho}-F_{\mu\rho\nu}=3(\partial_\nu h_{\mu\rho}-\partial_\rho h_{\mu\nu})\); locally \(F=0\) implies a Hessian pure gauge by two Poincaré-lemma steps. This is a local statement and says nothing about global nonlocal observables.

At equal time and \(z'>0\), the moment identity also gives \([w_1(X),w_1(x')] = i\partial_x\delta/(2\kappa)\), independent of \(z'\). Thus
\[
[w_1,F_{121}]=\partial_{z'}[w_1,h_{11}]-\partial_{x'}[w_1,w_1]
=-{i\over2\kappa}\partial_x^2\delta+{i\over2\kappa}\partial_x^2\delta=0.
\]
\(F_{122}=-\partial_{z'}w_1\) also gives zero. These spatial cancellations need no decoupling condition. They combine the two moment weights; testing \(h_{11}\) alone would incorrectly suggest an acausal physical response.

For unequal times, specialize to \(c^{ijk}=0\) and exclude spatial zero modes. The chiral boundary equation transports the equal-time data in
\(r=x-x'-v_w(t-t')\). The source-free bulk equations determine the temporal components from the spatial ones; differences between two reconstructions are spatial zero modes, excluded in this sector. The result is the Hessian kernel (8.12)
\[
K_{\mu\nu}(X;x')=[w_1(X),h_{\mu\nu}(x')]
=-{i\over2\kappa}\partial'_{\mu}\partial'_{\nu}[z'\delta(r)].
\]
For example \(K_{11}=-iz'\delta''/(2\kappa)\), \(K_{12}=i\delta'/(2\kappa)\), \(K_{02}=-v_wK_{12}\), \(K_{01}=-v_wK_{11}\), \(K_{00}=v_w^2K_{11}\). I checked all 27 components of
\[
\partial'_\mu K_{\nu\rho}+\partial'_\nu K_{\mu\rho}-2\partial'_\rho K_{\mu\nu}
\]
using an arbitrary differentiable function in place of the delta; all vanish identically, so the result extends distributionally. The same construction reproduces the boundary generator's bulk action
\(i[G_w[\alpha],h_{\mu\nu}]=\partial'_\mu\partial'_\nu[z'\alpha(X')]\).
It changes the gauge representative while leaving the local bulk field strength unchanged.

The linked-source check in §8.4 is useful independently of this reconstruction: a compactly supported interior probe \(\int fF_{121}\) gives \(J^{11}=-\partial_zf\), \(J^1=\partial_xf\), so its first-moment source combination is \(-\partial_z(z\partial_x^2f)\). Its normal integral is zero without an omitted boundary term because the support is strictly interior.

The retarded field-strength response in this mixed channel vanishes after applying the field-strength operator to the **unordered** kernel and only then multiplying by the retarded step function. Differentiating the step function first would introduce different contact terms. This is not a proof of every microcausality channel of the full interacting/global theory: the all-time result assumes the decoupled, nonzero-momentum local sector. The equal-time spatial-field-strength cancellation has the broader boundary-coefficient scope stated above.

## 7. What changes when the boundary is not planar?

The ambient bulk remains flat. For a timelike curved boundary with spacelike unit normal \(n\), induced derivative \(D_a\), and \(K_{ab}=e_a{}^\mu e_b{}^\nu\nabla_\mu n_\nu\), projection of the ambient Hessian gives
\[
\delta h_{ab}=D_aD_b\lambda_0+K_{ab}\lambda_1,
\qquad\delta w_a=D_a\lambda_1-K_a{}^bD_b\lambda_0,
\]
where \(\lambda_1=\nabla_n\lambda|_\partial\). The signs follow from the Gaussian-normal Christoffels \(\Gamma^n_{ab}=-K_{ab}\), \(\Gamma^b_{na}=K_a{}^b\). As a component check, xCoba on flat cylindrical coordinates \(ds^2=-dt^2+r^2d\theta^2+dr^2\) gives \(\Gamma^r_{\theta\theta}=-r\), \(\Gamma^\theta_{r\theta}=1/r\), and zero ambient curvature. These reproduce both extrinsic terms on \(r=R\).

The propagating variable generalizes as \(\psi=s^aD_a\xi\), with a chosen unit spatial tangent \(s\), not as a normal derivative of a boundary-only scalar. The paper does not derive the curved-boundary action, corrected Ward algebra or spectrum; it identifies the geometric input for that future calculation. Its entanglement/microscopic-fracton comparisons are likewise qualitative rather than a determination of the full bulk–edge state space.

**Verification boundary and use.** Reproduced: six-component variational coefficients, both local moment identities, canonical/current normalizations, scalar equations and auxiliary elimination, Hamiltonian branch, Luttinger coefficients, vector matching determinant, the strong-matching negative-product obstruction, exact tensor-branch counterexample and compatible example, Hessian field-strength cancellation, and the displayed non-planar projection signs. The automated abstract variational route did not evaluate successfully; the actual Euler-coefficient check used an explicit component variation, not an unverified package output. The Ward-to-quantum-algebra argument is reconstructed from the source and checked against canonical brackets, not independently regulated from a bulk quantum generating functional. Global zero modes, compactification, a general coupled \(c^{ijk}\ne0\) boundary theory, non-planar dynamics and the complete bulk quantum theory remain outside the reproduced results. For CPS/sewing, keep the two jets, global admissibility, on-shell restriction and Dirac reduction separate; retain the extra boxed matching condition before borrowing the two-chiral-mode claim.
