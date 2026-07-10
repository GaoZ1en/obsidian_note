# 4d flat complex \(\phi^4\): internal \(U(1)\) current, CPS charge, and Ward identity

日期：2026-07-09

## 0. Direct verdict

This note verifies the free CPS $U(1)$ generator and the perturbative charge-flow selection rule. It also shows that there is no anomaly obstruction to imposing a Ward-preserving normalization of the interacting local current. It does not explicitly construct that renormalized current or an integrated interacting charge. Throughout the note $\hbar=1$.

Use a complex scalar with \(U(1)\)-invariant quartic interaction:

$$\begin{align}
V_\chi =-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\end{align}$$

The internal symmetry is

$$\begin{align}
X_\alpha\phi=i\alpha\phi,\qquad X_\alpha\phi^*=-i\alpha\phi^*.
\end{align}$$

The CPS charge relation

$$\begin{align}
\delta Q_\alpha=\iota_{X_\alpha}\Omega
\end{align}$$

fixes the charge normalization. In the free quantum algebra it becomes

$$\begin{align}
i[Q_\alpha,\phi]_\star=i\alpha\phi, \qquad i[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\end{align}$$

In the interacting pAQFT theory, the renormalized current satisfies

$$\begin{align}
\partial_\mu j^\mu_{V,\rm ren}=0
\end{align}$$

as an on-shell local identity after a Ward-preserving normalization has been chosen. Contact terms occur in time-ordered correlation functions. There is no $U(1)$ anomaly for this scalar vector symmetry, but absence of an obstruction is not the same as an explicit construction of a global interacting charge.

## 1. Model

Take

$$\begin{align}
S=S_0+V_\chi,
\end{align}$$

$$\begin{align}
S_0=\int d^4x\, \left[ -\partial_\mu\phi^*\partial^\mu\phi -m^2\phi^*\phi \right],
\end{align}$$

$$\begin{align}
V_\chi =-\int d^4x\,\chi(x)\frac{\lambda}{2}(\phi^*\phi)^2.
\end{align}$$

The switching function \(\chi\) can break spacetime translations, but it does not break the internal \(U(1)\), because \(\chi\) is neutral and \(\phi^*\phi\) is invariant.

The EOM in the interaction region is

$$\begin{align}
K\phi=\lambda(\phi^*\phi)\phi, \qquad K\phi^*=\lambda(\phi^*\phi)\phi^*, \qquad K:=\Box-m^2.
\end{align}$$

## 2. Free CPS structure

Treat \(\phi,\phi^*\) as independent fields. The free symplectic form on a constant-time surface is

$$\begin{align}
\Omega_0 =\int_{\Sigma_t}d^3\mathbf x\, \left[ \delta\dot\phi^*\wedge\delta\phi +\delta\dot\phi\wedge\delta\phi^* \right].
\end{align}$$

The inverse gives the causal commutators:

$$\begin{align}
[\Phi(f),\Phi^*(g)]_\star =iE(f,g),
\end{align}$$

$$\begin{align}
[\Phi(f),\Phi(g)]_\star =[\Phi^*(f),\Phi^*(g)]_\star=0.
\end{align}$$

This is the internal-symmetry version of the CPS role:

> the symplectic pairing determines which charged field is canonically conjugate to which opposite-charge field, hence fixes the charge algebra.

## 3. Classical \(U(1)\) charge from CPS

Use the convention

$$\begin{align}
X_\alpha\phi=i\alpha\phi,\qquad X_\alpha\phi^*=-i\alpha\phi^*.
\end{align}$$

With canonical momenta

$$\begin{align}
\pi=\dot\phi^*,\qquad \pi^*=\dot\phi,
\end{align}$$

a charge satisfying

$$\begin{align}
\delta Q_\alpha=\iota_{X_\alpha}\Omega_0
\end{align}$$

is

$$\begin{align}
Q_\alpha =i\alpha\int_{\Sigma_t}d^3\mathbf x\, \left( \pi\phi-\pi^*\phi^* \right) =i\alpha\int d^3\mathbf x\, \left( \dot\phi^*\phi-\dot\phi\,\phi^* \right).
\end{align}$$

Equivalently,

$$\begin{align}
Q_\alpha=\alpha\int_{\Sigma_t}d^3\mathbf x\,j^0,
\qquad
j^\mu=i\left(\phi^*\partial^\mu\phi-\phi\partial^\mu\phi^*\right),
\end{align}$$

which gives $j^0=i(\dot\phi^*\phi-\dot\phi\phi^*)$ with signature $(-+++)$ and therefore reproduces the explicit canonical expression above. If covariant $d\Sigma_\mu$ notation is used, its orientation sign must be fixed to reproduce this coordinate definition. Different orientation conventions are acceptable only if the generator equation remains

$$\begin{align}
\{Q_\alpha,\phi\}=i\alpha\phi, \qquad \{Q_\alpha,\phi^*\}=-i\alpha\phi^*.
\end{align}$$

This is the important CPS-normalized statement.

## 4. Free quantum charge check

Quantization gives

$$\begin{align}
[\phi(\mathbf x),\pi(\mathbf y)]_\star =i\delta^{(3)}(\mathbf x-\mathbf y), \qquad [\phi^*(\mathbf x),\pi^*(\mathbf y)]_\star =i\delta^{(3)}(\mathbf x-\mathbf y).
\end{align}$$

Using the \(Q_\alpha\) above:

$$\begin{align}
[Q_\alpha,\phi(\mathbf x)]_\star =\alpha\,\phi(\mathbf x),
\end{align}$$

so

$$\begin{align}
i[Q_\alpha,\phi]_\star =i\alpha\phi.
\end{align}$$

Similarly,

$$\begin{align}
i[Q_\alpha,\phi^*]_\star =-i\alpha\phi^*.
\end{align}$$

Thus the CPS charge relation correctly quantizes the internal symmetry generator.

## 5. Interacting current in pAQFT

The classical interaction is \(U(1)\)-invariant:

$$\begin{align}
X_\alpha V_\chi=0.
\end{align}$$

The renormalized local current is required to have the form

$$\begin{align}
j^\mu_{V,\rm ren} =R_V(j^\mu)+j^\mu_{\rm ct},
\end{align}$$

with finite counterterms chosen to preserve the $U(1)$ Ward identity. This note states that normalization condition but does not construct $j^\mu_{\rm ct}$ explicitly. For a scalar vector $U(1)$, there is no anomaly obstruction:

$$\begin{align}
\mathcal A_{U(1)}=0.
\end{align}$$

After that Ward-preserving choice, the on-shell local identity without insertions is

$$\begin{align}
\partial_\mu j^\mu_{V,\rm ren}=0
\end{align}$$

Contact terms belong instead to the time-ordered insertion identity

$$\begin{align}
\partial_\mu^x \left\langle
T\,j^\mu_{V,\rm ren}(x)
\prod_i R_V(\phi(y_i))
\prod_j R_V(\phi^*(z_j)) \right\rangle
\end{align}$$

$$\begin{align}
= \sum_i \delta^{(4)}(x-y_i) \left\langle T\prod_i R_V(\phi(y_i)) \prod_j R_V(\phi^*(z_j)) \right\rangle
\end{align}$$

$$\begin{align}
\quad -
\sum_j
\delta^{(4)}(x-z_j) \left\langle
T\prod_i R_V(\phi(y_i))
\prod_j R_V(\phi^*(z_j)) \right\rangle
\end{align}$$

up to the overall convention for whether the Ward variation is written with $i\alpha$ included in the generator. The invariant content is charge counting:

- each \(\phi\) insertion has charge \(+1\);
- each \(\phi^*\) insertion has charge \(-1\);
- neutral correlators can be nonzero;
- charged correlators vanish in a \(U(1)\)-invariant state.

For a spatial region with outward surface element $dS_i$, the anomaly-free balance law without insertions is

$$\begin{align}
Q_V^{\rm ren}(t_2)-Q_V^{\rm ren}(t_1)
+\int_{t_1}^{t_2}dt\int_{\partial\Sigma}dS_i\,j^i_{V,\rm ren}=0,
\qquad
Q_V^{\rm ren}(t)=\int_\Sigma d^3\mathbf x\,j^0_{V,\rm ren}(t,\mathbf x).
\end{align}$$

An integrated interacting generator exists only if this spatial integral is finite or has a controlled compactly smeared limit, its operator domain is specified, and the outward flux vanishes. Under those additional conditions it generates phase rotations. Otherwise the local Ward identity, rather than a global $Q_V^{\rm ren}$, is the justified statement.

## 6. Perturbative selection rule check

The quartic vertex

$$\begin{align}
(\phi^*\phi)^2
\end{align}$$

contains two \(\phi\)'s and two \(\phi^*\)'s. Therefore every perturbative diagram preserves total \(U(1)\) charge.

For example,

$$\begin{align}
\langle T\,\phi(x)\phi(y)\rangle_V=0
\end{align}$$

in a \(U(1)\)-invariant vacuum, while

$$\begin{align}
\langle T\,\phi(x)\phi^*(y)\rangle_V
\end{align}$$

receives ordinary self-energy corrections. At one loop, the quartic tadpole correction preserves charge:

$$\begin{align}
G_{\phi\phi^*}^{(1)}(x,y) \propto \lambda \int d^4z\, \Delta_F(x-z)\Delta_F(z-y)\Delta_F(z,z),
\end{align}$$

where the proportionality sign deliberately suppresses the convention-dependent vertex phase and contraction multiplicity; the internal loop contracts a $\phi$ with a $\phi^*$. No diagram can turn $\phi$ into $\phi$ without violating the charge flow fixed by the CPS/CCR pairing.

This is a useful concrete check: the symplectic form determines the nonzero propagator \(\langle\phi\phi^*\rangle\), and that propagator enforces the internal charge selection rule in perturbation theory.

## 7. Comparison with translation check

Translation symmetry and internal \(U(1)\) symmetry test different pieces.

### Translation

- current: stress tensor;
- switching \(\chi\) explicitly breaks symmetry through \(\partial\chi\);
- no flat scalar translation anomaly;
- the free charge generates spacetime shifts; the interacting global charge is conditional.

### Internal \(U(1)\)

- current: charged scalar Noether current;
- switching \(\chi\) does not break the symmetry;
- no scalar vector \(U(1)\) anomaly;
- the free charge generates phase rotations, while the propagator and vertices enforce charge selection rules.

Both checks use the same CPS principle:

$$\begin{align}
\delta Q=\iota_X\Omega \quad\Longrightarrow\quad \delta A=i[Q,A]_\star.
\end{align}$$

## 8. What this adds to the main formalism

This note adds the simplest internal-symmetry benchmark: a CPS-normalized free generator, absence of a local anomaly obstruction, and a diagrammatic charge-flow selection rule. The Ward-preserving interacting current is specified as a renormalization condition rather than explicitly constructed, and the integrated interacting charge remains conditional.

The remaining in-scope current checks are:

1. construct the finite current counterterm in an explicit renormalization scheme;
2. prove finiteness/domain/flux conditions for an interacting global charge;
3. extend the same distinction between local Ward identities and global charges to the AdS scalar boundary problem.

Gauge theory, BV-BRST, and gravity are outside the present scope.

## 9. Status after this check

The flat scalar tests now cover:

1. real scalar scattering;
2. real scalar Schwinger-Dyson and counterterms;
3. real scalar translation stress tensor;
4. complex scalar free $U(1)$ generator and perturbative charge-flow rule, with the interacting local current specified conditionally.

The CPS role is visible in both spacetime and internal charges:

$$\begin{align}
\Omega^{-1}=E, \qquad \delta Q=\iota_X\Omega, \qquad \delta A=i[Q,A]_\star.
\end{align}$$

## 10. Verification status

Verified:

1. Mathematica checked that the current convention

$$\begin{align}
j^\mu=i\left(\phi^*\partial^\mu\phi-\phi\partial^\mu\phi^*\right)
\end{align}$$

gives $j^0=i(\dot\phi^*\phi-\dot\phi\phi^*)$ for signature $(-+++)$.
2. Mathematica checked $\partial_\mu j^\mu=0$ after substituting the displayed classical interacting equations for $\phi$ and $\phi^*$.
3. The free generator signs were checked directly from $[\phi,\pi]=i$ and $[\phi^*,\pi^*]=i$.

Assumptions:

1. Fields commute in the classical current check, and the quantum generator uses the equal-time canonical algebra.
2. The state is $U(1)$-invariant for the correlator selection rule.

Not verified:

1. The finite interacting current counterterm $j^\mu_{\rm ct}$ was not constructed.
2. Finiteness, domain, infrared, and flux conditions for an integrated interacting charge were not established.
3. The exact combinatorial coefficient of the illustrative one-loop tadpole was intentionally not asserted.

## 11. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
