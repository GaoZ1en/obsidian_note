# Weyl Algebra, Static Fock Representation, and Hamiltonian

## 1. Direct verdict

The normalized characteristic phase space of `04` admits a weakly
nondegenerate Weyl algebra, a compatible static complex structure, its regular
quasifree Fock representation, and a positive self-adjoint static Hamiltonian.
For physical static time $t=L\tau$,

$$
\boxed{
\widehat H_{\partial t}
=\frac1L\sum_{P=E,B}\sum_{j\geq1,m}
\int_0^\infty d\omega\,
\omega\,a_{Pjm}^\dagger(\omega)a_{Pjm}(\omega).}
\tag{1.1}
$$

The $aa$ and $a^\dagger a^\dagger$ coefficients vanish exactly after the
half-line eigenvalue equation and center/endpoint domain are imposed. The
vacuum constant in (1.1) is removed by normal ordering relative to this static
representation.

This closes Q-01. It does not identify the static ground state with the
Bunch--Davies state. No density matrix, partial trace, entropy, or horizon
Hilbert-space factorization is used.

## 2. Real symplectic space and Weyl algebra

Let $\alpha=(P,j,m)$ and take as the basic real symplectic space

$$
\mathcal X:=\mathcal P_{\rm bulk}^{(0)}
\simeq\mathcal X_{\mathcal H^-}^{\mathrm{comp},(0)},
\tag{2.1}
$$

where the isomorphism is `T1-log`--`T2-log`, proper gauge has been divided out, and the
CPS norm is

$$
\|c\|_{\rm CPS}^2
=2\sum_\alpha\int_0^\infty
(\omega+\omega^2)|c_\alpha(\omega)|^2d\omega.
\tag{2.2}
$$

The symplectic form is

$$
\boxed{
\Omega(c_1,c_2)
=4\sum_\alpha\int_0^\infty d\omega\,\omega\,
\operatorname{Im}
(\overline{c_{1,\alpha}}c_{2,\alpha}).}
\tag{2.3}
$$

It is continuous by (8.1) of `04` and weakly nondegenerate after the proper
gauge quotient.

Define the abstract Weyl $C^*$-algebra $\mathfrak W(\mathcal X,\Omega)$ by

$$
\boxed{
W(c_1)W(c_2)
=e^{-i\Omega(c_1,c_2)/2}W(c_1+c_2),
\qquad
W(c)^*=W(-c),
\qquad W(0)=\mathbf1.}
\tag{2.4}
$$

The construction is algebraic and makes no choice of state. The weighted
spaces $\mathcal P_{\rm bulk}^{(s)}$ are dense regularity subspaces of the same
$s=0$ algebraic phase space; the Fréchet core may be used for unsmeared
formulae.

## 3. Static complex structure

The coefficient $c_\alpha(\omega)$ multiplies the positive static-frequency
factor $e^{-i\omega\tau}$. With the action/sign convention of `04`, positivity
fixes the real-linear complex structure to be

$$
\boxed{(J_{\rm st}c)_\alpha(\omega)=i c_\alpha(\omega).}
\tag{3.1}
$$

On the negative-frequency conjugate coefficient it acts by $-i$, so (3.1)
defines a real map on real solutions. Directly,

$$
J_{\rm st}^2=-1,
\qquad
\Omega(J_{\rm st}c_1,J_{\rm st}c_2)=\Omega(c_1,c_2).
\tag{3.2}
$$

The associated real scalar product is

$$
\boxed{
\mu_{\rm st}(c_1,c_2)
:=\Omega(c_1,J_{\rm st}c_2)
=4\sum_\alpha\int_0^\infty d\omega\,\omega\,
\operatorname{Re}
(\overline{c_{1,\alpha}}c_{2,\alpha}).}
\tag{3.3}
$$

Therefore

$$
\mu_{\rm st}(c,c)
=4\sum_\alpha\int_0^\infty\omega|c_\alpha|^2d\omega>0
\quad(c\neq0),
\tag{3.4}
$$

and

$$
\mu_{\rm st}(c,c)\leq2\|c\|_{\rm CPS}^2.
\tag{3.5}
$$

Thus $J_{\rm st}$ is compatible, positive, and continuous. It is an isometry
of every angularly weighted CPS norm.

## 4. One-particle Hilbert space

Use the convention that the Hilbert inner product is antilinear in its first
entry. Let

$$
\mathfrak h_{\rm st}
=\bigoplus_{P=E,B}\bigoplus_{j\geq1,m}
L^2(\mathbb R_+,d\omega),
\tag{4.1}
$$

and define the real-linear one-particle map on the core by

$$
\boxed{(Kc)_\alpha(\omega)=\sqrt{2\omega}\,c_\alpha(\omega).}
\tag{4.2}
$$

Its complex span is dense in $\mathfrak h_{\rm st}$, and

$$
\boxed{
\langle Kc_1,Kc_2\rangle_{\mathfrak h}
=2\sum_\alpha\int_0^\infty d\omega\,\omega\,
\overline{c_{1,\alpha}}c_{2,\alpha}
=\frac12\left(\mu_{\rm st}(c_1,c_2)+i\Omega(c_1,c_2)\right).}
\tag{4.3}
$$

In particular,

$$
2\operatorname{Im}\langle Kc_1,Kc_2\rangle=\Omega(c_1,c_2),
\qquad
KJ_{\rm st}=iK.
\tag{4.4}
$$

The one-particle norm is weaker than the full CPS norm; (3.5) makes $K$
continuous. The additional $\omega^2$ term in (2.2) is the classical
finite-energy control and becomes the form-domain condition for the static
Hamiltonian below.

## 5. Static quasifree/Fock representation

Let

$$
\mathcal F_{\rm st}:=\Gamma_s(\mathfrak h_{\rm st})
=\bigoplus_{n=0}^\infty\operatorname{Sym}^n\mathfrak h_{\rm st},
\tag{5.1}
$$

with vacuum $|0_{\rm st}\rangle$. For $k\in\mathfrak h_{\rm st}$, use
$[a(k),a^\dagger(l)]=\langle k,l\rangle$. Then

$$
\boxed{
\pi_{\rm st}(W(c))
=\exp\!\left(a^\dagger(Kc)-a(Kc)\right).}
\tag{5.2}
$$

Equation (4.4) and the Baker--Campbell--Hausdorff formula give exactly the Weyl
phase in (2.4). The representation is regular on every finite-dimensional
real line $s\mapsto W(sc)$. Its vacuum characteristic functional is

$$
\boxed{
\varpi_{\rm st}(W(c))
=\exp\!\left[-\frac14\mu_{\rm st}(c,c)\right]
=\exp\!\left[-\sum_\alpha\int_0^\infty
d\omega\,\omega|c_\alpha(\omega)|^2\right].}
\tag{5.3}
$$

This is the pure static ground quasifree state associated with $J_{\rm st}$.
It is introduced to realize the algebra and Hamiltonian; it is not the state
called Bunch--Davies in `07`.

On the smooth spectral core the master operator-valued distribution is

$$
\boxed{
\widehat\Psi^P_{jm}(\tau,\rho)
=\int_0^\infty\frac{d\omega}{\sqrt{2\omega}}
\left[
a_{Pjm}(\omega)e^{-i\omega\tau}g_{\omega j}(\rho)
+a_{Pjm}^\dagger(\omega)e^{i\omega\tau}
\overline{g_{\omega j}(\rho)}
\right].}
\tag{5.4}
$$

Here $g_{\omega j}$ is the delta-normalized center-regular mode of `03` and

$$
[a_{Pjm}(\omega),a_{P'j'm'}^\dagger(\omega')]
=\delta_{PP'}\delta_{jj'}\delta_{mm'}\delta(\omega-\omega').
\tag{5.5}
$$

The completeness relation of `03` gives the canonical equal-$\tau$ CCR after
smearing. Applying the field-strength dictionary of `02` defines
$\widehat F_{\mu\nu}$ without selecting a potential gauge. Equality of this
CCR inverse with the covariant Peierls kernel is not asserted until `06`.

## 6. Static automorphisms and positive generator

Dimensionless static-time translation acts on the spectral coefficients by

$$
\boxed{(T_s c)_\alpha(\omega)=e^{-i\omega s}c_\alpha(\omega),}
\tag{6.1}
$$

corresponding to $f(v)\mapsto f(v+s)$. It preserves the CPS norm and
$\Omega$, commutes with $J_{\rm st}$, and defines

$$
\alpha_s(W(c)):=W(T_sc).
\tag{6.2}
$$

This is an algebraic automorphism group, not a point-norm continuous
$C^*$-dynamics on the full abstract Weyl algebra: for generic nonzero
$T_sc-c$, $\|W(T_sc)-W(c)\|=2$.  Strong continuity holds after passing to the
regular static or BD GNS representations.  The distinction is used in the
split `T5-W*`/`T5-alg` statement of `07`.

On the one-particle space,

$$
KT_s=e^{-is h_\tau}K,
\qquad
(h_\tau k)_\alpha(\omega)=\omega k_\alpha(\omega).
\tag{6.3}
$$

$h_\tau$ is the positive self-adjoint multiplication operator with domain

$$
D(h_\tau)=\left\{k:\sum_\alpha\int_0^\infty
\omega^2|k_\alpha(\omega)|^2d\omega<\infty\right\}.
\tag{6.4}
$$

Physical time is $t=L\tau$, so $h_t=L^{-1}h_\tau$.

## 7. Classical and quantum Hamiltonians

The real infinitesimal generator of (6.1) is

$$
(A_\tau c)_\alpha=-i\omega c_\alpha=-J_{\rm st}h_\tau c_\alpha.
\tag{7.1}
$$

With the Hamiltonian-vector-field convention
$dH_c(\delta c)=\Omega(A_\tau c,\delta c)$,

$$
\boxed{
H_{\partial\tau}(c)
=\frac12\Omega(A_\tau c,c)
=2\sum_\alpha\int_0^\infty
\omega^2|c_\alpha(\omega)|^2d\omega
=\langle Kc,h_\tau Kc\rangle.}
\tag{7.2}
$$

This is exactly the action-derived Noether energy (12.1) of `02` and the
horizon flux (8.1) of `03`. The equality holds first on the core and then as a
closed positive quadratic form on the CPS completion. In particular, $Kc$ is
in the form domain $D(h_\tau^{1/2})$ for every $c\in\mathcal X$.

Second quantization gives

$$
\boxed{
\widehat H_{\partial\tau}=d\Gamma(h_\tau),
\qquad
\widehat H_{\partial t}=d\Gamma(h_t)=L^{-1}d\Gamma(h_\tau).}
\tag{7.3}
$$

These operators are positive and self-adjoint on their standard Fock domains,
annihilate $|0_{\rm st}\rangle$, and implement the automorphisms:

$$
e^{-is\widehat H_{\partial\tau}}
\pi_{\rm st}(W(c))
e^{is\widehat H_{\partial\tau}}
=\pi_{\rm st}(W(T_sc)).
\tag{7.4}
$$

In distributional notation, (7.3) is (1.1) and its dimensionless counterpart.

## 8. Absence of anomalous terms

For a core wave packet, integration by parts has no center or infinity term,
and

$$
H_{\partial\tau}^{P,jm}
=\frac12\int_0^\infty d\rho\,
\left[(\partial_\tau\Psi)^2+\Psi H_j\Psi\right].
\tag{8.1}
$$

Substitute (5.4) and use $H_jg_{\omega j}=\omega^2g_{\omega j}$. The
$aa$ coefficient is proportional to

$$
\frac{-\omega\omega'+\omega'^2}{4\sqrt{\omega\omega'}}
\,\delta(\omega-\omega')=0,
\tag{8.2}
$$

and the $a^\dagger a^\dagger$ coefficient is its conjugate. The two mixed
orders each contribute $\omega/2$ on the spectral diagonal. Equivalently, for
each spectral oscillator,

$$
Q=\frac{a+a^\dagger}{\sqrt{2\omega}},
\qquad
P=\frac{-i\omega a+i\omega a^\dagger}{\sqrt{2\omega}},
\tag{8.3}
$$

so

$$
\frac12(P^2+\omega^2Q^2)
=\frac\omega2(aa^\dagger+a^\dagger a)
=\omega a^\dagger a+\frac\omega2\mathbf1.
\tag{8.4}
$$

The continuum sum of the last term is the usual divergent static-vacuum
constant. Equation (7.3) is its normal-ordered, positive second quantization.
No time-dependent Bogoliubov mixing or anomalous quadratic term is present.

## 9. Exact scattering on Fock space

The classical scattering operator acts on one-particle data as

$$
(\mathbf S k)_{Pjm}(\omega)=S_j(\omega)k_{Pjm}(\omega).
\tag{9.1}
$$

Because $|S_j|=1$, $\mathbf S$ is unitary on $\mathfrak h_{\rm st}$. It
commutes with $h_\tau$ and is complex linear with respect to $J_{\rm st}$.
Therefore

$$
\widehat{\mathbf S}=\Gamma(\mathbf S)
\tag{9.2}
$$

implements the Weyl scattering automorphism and preserves particle number and
the static Hamiltonian. This is a statement about exact center reflection in
the chosen static representation. It is not a claim that the Bunch--Davies
state contains no static thermal excitations.

## 10. Regression

`../scripts/fock_hamiltonian_checks.wl` checks exactly:

1. compatibility and positivity of (3.1)--(3.4);
2. the factor $1/2$ in the one-particle inner product (4.3);
3. equality of the classical Noether energy and
   $\langle Kc,h_\tau Kc\rangle$;
4. cancellation of $aa$ and $a^\dagger a^\dagger$ terms;
5. the mixed coefficient in (8.4);
6. $|S_j|=1$ and commutation with $h_\tau$ for $j=1,2,3$.

These finite algebraic identities are `checked symbolically`. Positivity,
self-adjointness of multiplication/second-quantized operators, and the Weyl
construction follow from the explicit Hilbert-space definitions above and
carry status `proved`.

## 11. Boundary of the result

This calculation does not prove:

- unitary equivalence between the static ground representation and a global
  de Sitter representation;
- that the static ground state extends regularly through $B$;
- the Bunch--Davies KMS property;
- a density-matrix or tensor-factor description of a static patch;
- Peierls equality for Maxwell field-strength smearings.

The last item is the next B1 task in `06`; state selection remains gated until
that task closes.
