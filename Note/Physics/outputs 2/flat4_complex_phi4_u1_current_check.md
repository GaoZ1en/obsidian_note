# 4d flat complex \(\phi^4\): internal \(U(1)\) current, CPS charge, and Ward identity

日期：2026-07-09

## 0. Direct verdict

The CPS-pAQFT formalism passes the simplest internal-symmetry current check.

Use a complex scalar with \(U(1)\)-invariant quartic interaction:

\[
V_\chi
=-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\]

The internal symmetry is

\[
X_\alpha\phi=i\alpha\phi,\qquad
X_\alpha\phi^*=-i\alpha\phi^*.
\]

The CPS charge relation

\[
\delta Q_\alpha=\iota_{X_\alpha}\Omega
\]

fixes the charge normalization. In the free quantum algebra it becomes

\[
\frac{i}{\hbar}[Q_\alpha,\phi]_\star=i\alpha\phi,
\qquad
\frac{i}{\hbar}[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\]

In the interacting pAQFT theory, the renormalized current satisfies

\[
\partial_\mu j^\mu_{V,\rm ren}=0
\]

up to contact terms in correlation functions. There is no \(U(1)\) anomaly for this scalar vector symmetry. This closes the simplest internal-current gate that was still missing after the translation-charge check.

## 1. Model

Take

\[
S=S_0+V_\chi,
\]

\[
S_0=\int d^4x\,
\left[
-\partial_\mu\phi^*\partial^\mu\phi
-m^2\phi^*\phi
\right],
\]

\[
V_\chi
=-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\]

The switching function \(\chi\) can break spacetime translations, but it does not break the internal \(U(1)\), because \(\chi\) is neutral and \(\phi^*\phi\) is invariant.

The EOM in the interaction region is

\[
K\phi=\lambda(\phi^*\phi)\phi,
\qquad
K\phi^*=\lambda(\phi^*\phi)\phi^*,
\qquad
K:=\Box-m^2.
\]

## 2. Free CPS structure

Treat \(\phi,\phi^*\) as independent fields. The free symplectic form on a constant-time surface is

\[
\Omega_0
=\int_{\Sigma_t}d^3\mathbf x\,
\left[
\delta\dot\phi^*\wedge\delta\phi
+\delta\dot\phi\wedge\delta\phi^*
\right].
\]

The inverse gives the causal commutators:

\[
[\Phi(f),\Phi^*(g)]_\star
=i\hbar E(f,g),
\]

\[
[\Phi(f),\Phi(g)]_\star
=[\Phi^*(f),\Phi^*(g)]_\star=0.
\]

This is the internal-symmetry version of the CPS role:

> the symplectic pairing determines which charged field is canonically conjugate to which opposite-charge field, hence fixes the charge algebra.

## 3. Classical \(U(1)\) charge from CPS

Use the convention

\[
X_\alpha\phi=i\alpha\phi,\qquad
X_\alpha\phi^*=-i\alpha\phi^*.
\]

With canonical momenta

\[
\pi=\dot\phi^*,\qquad \pi^*=\dot\phi,
\]

a charge satisfying

\[
\delta Q_\alpha=\iota_{X_\alpha}\Omega_0
\]

is

\[
Q_\alpha
=i\alpha\int_{\Sigma_t}d^3\mathbf x\,
\left(
\pi\phi-\pi^*\phi^*
\right)
=i\alpha\int d^3\mathbf x\,
\left(
\dot\phi^*\phi-\dot\phi\,\phi^*
\right).
\]

Equivalently,

\[
Q_\alpha=\alpha\int_{\Sigma_t}d\Sigma_\mu\,j^\mu
\]

with the corresponding current convention. Different sign conventions for \(j^\mu\) are acceptable only if the generator equation remains

\[
\{Q_\alpha,\phi\}=i\alpha\phi,
\qquad
\{Q_\alpha,\phi^*\}=-i\alpha\phi^*.
\]

This is the important CPS-normalized statement.

## 4. Free quantum charge check

Quantization gives

\[
[\phi(\mathbf x),\pi(\mathbf y)]_\star
=i\hbar\delta^{(3)}(\mathbf x-\mathbf y),
\qquad
[\phi^*(\mathbf x),\pi^*(\mathbf y)]_\star
=i\hbar\delta^{(3)}(\mathbf x-\mathbf y).
\]

Using the \(Q_\alpha\) above:

\[
[Q_\alpha,\phi(\mathbf x)]_\star
=\alpha\hbar\,\phi(\mathbf x),
\]

so

\[
\frac{i}{\hbar}[Q_\alpha,\phi]_\star
=i\alpha\phi.
\]

Similarly,

\[
\frac{i}{\hbar}[Q_\alpha,\phi^*]_\star
=-i\alpha\phi^*.
\]

Thus the CPS charge relation correctly quantizes the internal symmetry generator.

## 5. Interacting current in pAQFT

The classical interaction is \(U(1)\)-invariant:

\[
X_\alpha V_\chi=0.
\]

Therefore the interacting current should be definable as

\[
j^\mu_{V,\rm ren}
=R_V(j^\mu)+j^\mu_{\rm ct},
\]

with finite counterterms chosen to preserve the \(U(1)\) Ward identity. For a scalar vector \(U(1)\), there is no anomaly obstruction:

\[
\mathcal A_{U(1)}=0.
\]

The local Ward identity is

\[
\partial_\mu j^\mu_{V,\rm ren}=0
\]

as an operator identity modulo contact terms. In correlation functions, the correct identity is

\[
\partial_\mu^x
\left\langle
T\,j^\mu_{V,\rm ren}(x)
\prod_i R_V(\phi(y_i))
\prod_j R_V(\phi^*(z_j))
\right\rangle
\]

\[
=
\hbar
\sum_i
\delta^{(4)}(x-y_i)
\left\langle
T\prod_i R_V(\phi(y_i))
\prod_j R_V(\phi^*(z_j))
\right\rangle
\]

\[
\quad
-\hbar
\sum_j
\delta^{(4)}(x-z_j)
\left\langle
T\prod_i R_V(\phi(y_i))
\prod_j R_V(\phi^*(z_j))
\right\rangle
\]

up to the overall convention for whether the Ward variation is written with \(i\alpha\) included in the generator. The invariant content is charge counting:

- each \(\phi\) insertion has charge \(+1\);
- each \(\phi^*\) insertion has charge \(-1\);
- neutral correlators can be nonzero;
- charged correlators vanish in a \(U(1)\)-invariant state.

## 6. Perturbative selection rule check

The quartic vertex

\[
(\phi^*\phi)^2
\]

contains two \(\phi\)'s and two \(\phi^*\)'s. Therefore every perturbative diagram preserves total \(U(1)\) charge.

For example,

\[
\langle T\,\phi(x)\phi(y)\rangle_V=0
\]

in a \(U(1)\)-invariant vacuum, while

\[
\langle T\,\phi(x)\phi^*(y)\rangle_V
\]

receives ordinary self-energy corrections. At one loop, the quartic tadpole correction preserves charge:

\[
G_{\phi\phi^*}^{(1)}(x,y)
\sim
(-i\lambda)
\int d^4z\,
\Delta_F(x-z)\Delta_F(z-y)\Delta_F(z,z),
\]

where the internal loop contracts a \(\phi\) with a \(\phi^*\). No diagram can turn \(\phi\) into \(\phi\) without violating the charge flow fixed by the CPS/CCR pairing.

This is a useful concrete check: the symplectic form determines the nonzero propagator \(\langle\phi\phi^*\rangle\), and that propagator enforces the internal charge selection rule in perturbation theory.

## 7. Comparison with translation check

Translation symmetry and internal \(U(1)\) symmetry test different pieces.

### Translation

- current: stress tensor;
- switching \(\chi\) explicitly breaks symmetry through \(\partial\chi\);
- no flat scalar translation anomaly;
- charge generates spacetime shifts.

### Internal \(U(1)\)

- current: charged scalar Noether current;
- switching \(\chi\) does not break the symmetry;
- no scalar vector \(U(1)\) anomaly;
- charge generates phase rotations and charge selection rules.

Both checks use the same CPS principle:

\[
\delta Q=\iota_X\Omega
\quad\Longrightarrow\quad
\delta A=\frac{i}{\hbar}[Q,A]_\star.
\]

## 8. What this adds to the main formalism

The previous remaining gate said “construct nontrivial internal/gauge/gravitational currents beyond flat scalar translations.” This note closes the simplest internal-current case.

The still-open current gates are now sharper:

1. gauge currents require BV-BRST because the CPS form is presymplectic;
2. gravitational/diffeomorphism currents require boundary and corner terms;
3. anomalous currents require a model with a real cohomological obstruction, not scalar \(U(1)\).

## 9. Status after this check

The flat scalar tests now cover:

1. real scalar scattering;
2. real scalar Schwinger-Dyson and counterterms;
3. real scalar translation stress tensor;
4. complex scalar internal \(U(1)\) current.

The CPS role is visible in both spacetime and internal charges:

\[
\Omega^{-1}=E,
\qquad
\delta Q=\iota_X\Omega,
\qquad
\delta A=\frac{i}{\hbar}[Q,A]_\star.
\]

## 10. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
