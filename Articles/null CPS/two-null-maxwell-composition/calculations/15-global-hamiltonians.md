# Global Characteristic Hamiltonians

## 1. Direct verdict and sign

**G-D is proved** on the dense generator domains below. With

$$
\iota_{\delta_X}\Omega_{X_\infty}=-\delta H_X,
\tag{1.1}
$$

the active actions on positive-frequency coefficients are

$$
A_ta=-i\omega a,\qquad A_za=ik a,\qquad A_{J_i}a=L_i a,
\tag{1.2}
$$

where $L_i$ is the real skew/anti-Hermitian fundamental matrix of the left
$SO(3)$ action on the $m$ multiplet. We use
$[L_i,L_j]=-\epsilon_{ij}{}^kL_k$; the minus sign is the standard
anti-homomorphism from a left group action to its fundamental vector fields.
With the Poisson convention $\delta_HF=\{F,H\}$, the corresponding moment maps
then obey $\{J_i,J_j\}=\epsilon_{ij}{}^kJ_k$. The spatial Hamiltonian carrying the name
$P_z=H_{\partial_z}$ therefore has a minus sign in the spectral formula below.
The opposite convention $+\int k|a|^2$ generates $-\partial_z$.

## 2. Dense generator domains

Let $\mathscr C_{\rm Sch,fin}$ be the finite-harmonic Schwartz spectral core.
For $X=t,z,J_i$, define

$$
\mathcal D_X=\left\{a:\sum_{P,\ell,m}\int dk\,
\omega_{k\ell}|A_Xa|^2<\infty\right\}.
\tag{2.1}
$$

Thus $\mathcal D_t$ has weight $\omega^3$, $\mathcal D_z$ has weight
$\omega k^2$, and $\mathcal D_{J_i}$ has the angular-generator graph weight.
Each contains $\mathscr C_{\rm Sch,fin}$ densely. Since $|k|\leq\omega$,
$\mathcal D_t\subset\mathcal D_z$, but the spatial theorem is stated on its
own domain and does not borrow the time estimate.

The intrinsic action is

$$
\delta_X^{X_\infty}
=R_\infty\circ\mathcal L_X\circ R_\infty^{-1}
=\mathfrak D_\infty^{-1}S(A_Xa),
\tag{2.2}
$$

where $a=T\mathfrak D_\infty x$ is obtained from the explicit Maxwell
dictionary and two-sheet analysis transform. Equation (2.2) is therefore an
intrinsic closed operator on characteristic data, not a formal bulk label.

## 3. Symplecticity and tail recovery

From

$$
\Omega(a_1,a_2)=i\sum_{P,\ell,m}\int dk
(\bar a_1a_2-\bar a_2a_1),
\tag{3.1}
$$

multiplication by $-i\omega$, $ik$, or an anti-Hermitian $L_i$ is
infinitesimally symplectic on its domain:

$$
\Omega(A_Xa_1,a_2)+\Omega(a_1,A_Xa_2)=0.
\tag{3.2}
$$

The finite-cut identity reads

$$
\mathcal L_{\delta_X}\Omega_{X_T}
=\int_{\partial\Sigma_T^{\rm int}}i_X\omega.
\tag{3.3}
$$

For $X=\partial_t$, apply the massive tail theorem to $a$ and
$A_ta=-i\omega a$ on $\mathcal D_t$. For $X=\partial_z$, apply it separately
to $a$ and $A_za=ika$ on $\mathcal D_z$. This proves, without identifying the
two estimates,

$$
\lim_{T\to\infty}\int_{\partial\Sigma_T^{\rm int}}
i_{\partial_t}\omega=0,
\qquad
\lim_{T\to\infty}\int_{\partial\Sigma_T^{\rm int}}
i_{\partial_z}\omega=0.
\tag{3.4}
$$

Rotations are tangent to every spherical cut and have no angular boundary.
Thus global Hamiltonianity is recovered in the complete-horizon limit because
the physical outer flux tails vanish.

## 4. Characteristic Hamiltonians

For $x\in\mathcal X_\infty^{\rm Max}$ set
$a^P_{k\ell m}=T_{s_\ell}\mathfrak D_\infty^P x$. Then

$$
\boxed{
H_t^{X_\infty}[x]
=\sum_{P,\ell,m}\int dk\,
\omega_{k\ell}|a^P_{k\ell m}|^2.}
\tag{4.1}
$$

This is the global Maxwell energy. With the active convention (1.2),

$$
\boxed{
P_z^{X_\infty}[x]=H_{\partial_z}[x]
=-\sum_{P,\ell,m}\int dk\,
k|a^P_{k\ell m}|^2.}
\tag{4.2}
$$

For rotations,

$$
\boxed{
J_i^{X_\infty}[x]
=i\sum_{P,\ell}\int dk\,
\overline{a^P_{k\ell}}{}^{\,T}L_i^{(\ell)}a^P_{k\ell}.}
\tag{4.3}
$$

All three are real. Direct variation using (3.1) gives

$$
\iota_{A_t}\Omega=-\delta H_t,\qquad
\iota_{A_z}\Omega=-\delta P_z,\qquad
\iota_{A_{J_i}}\Omega=-\delta J_i.
\tag{4.4}
$$

$H_t$ and $P_z$ are finite on the energy space, while their Hamiltonian vector
fields are defined on (2.1). Rotation differentiability is asserted on the
angular graph domain. No bounded-generator claim is made.

## 5. Algebra and central terms

The coefficient multipliers give

$$
[A_t,A_z]=0,\qquad [A_t,A_{J_i}]=[A_z,A_{J_i}]=0,
\qquad [A_{J_i},A_{J_j}]=-\epsilon_{ij}{}^kA_{J_k}.
\tag{5.1}
$$

Therefore, on the common invariant core,

$$
\{H_t,P_z\}=0,\qquad
\{J_i,J_j\}=\epsilon_{ij}{}^kJ_k,\qquad
\{H_t,J_i\}=\{P_z,J_i\}=0.
\tag{5.2}
$$

The additive constants are fixed by $H_X[0]=0$. Since (3.4) removes the outer
bilinear and the shared corner is already one master value, no spurious corner
central term remains.

Proper gauge acts trivially on $F$ and has zero Hamiltonian. Charged large
gauge transformations and $\ell=0$ flux-frame pairs are not in this algebra.

## 6. One-particle boundary

The classical domains above are sufficient for G-D. On the stationary
one-particle completion, the corresponding unitary groups act by
$e^{-is\omega}$, $e^{isk}$, and the angular representation. Their
self-adjoint generators have the spectral graph domains dictated by these
multipliers. This is a secondary B1/B2 representation statement and is not
used to prove the classical symplectic theorem.

## 7. Evidence boundary

**Proved:** symplecticity, differentiability on the displayed domains,
Hamiltonian signs, algebra closure, separate time/space tail limits, and
absence of a corner central term.

**Checked by regression:** finite spectral Hamiltonian matrices, signs, and
commutators in `global_horizon_exhaustion_checks.py`.

**Not claimed:** bounded generators on the energy space, charged asymptotic
symmetries, or a zero-mode Hamiltonian in the radiative sum.
