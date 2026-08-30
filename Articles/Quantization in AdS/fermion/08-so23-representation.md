# 08. Lowest-weight $SO(2,3)$ representations

## 1. Energy grading and lowest state

Let $H=i\partial_t$ on positive-frequency modes. In the compact basis of $\mathfrak{so}(2,3)$, the noncompact generators $M_i^\pm$ satisfy

$$
[H,M_i^\pm]=\pm M_i^\pm,
$$

and transform as a spin-one vector under $SO(3)$.

For either quantization, the mode $n=0,\kappa=1$ has

$$
E_0=\Delta_\pm,
\qquad
j=\frac12.
$$

There is no normalizable mode at energy $E_0-1$. Since $M_i^-$ must map a mode to energy $E-1$, it annihilates the entire lowest spin doublet. Thus the mode is a lowest-weight state, not merely the lowest entry in a guessed spectrum.

## 2. Full $SO(3)\times SO(2)$ content

At level $N=E-E_0$, the two parity branches in Section 06 produce exactly one copy of every spin

$$
j=\frac12,\frac32,\ldots,N+\frac12.
$$

The degeneracy is

$$
d_N=\sum_{k=1}^{N+1}2k=(N+1)(N+2).
$$

This equals the number of unconstrained level-$N$ spinor descendants of a three-dimensional primary:

$$
2\binom{N+2}{2}=(N+1)(N+2).
$$

The Kosmann action of $M_i^+$ raises the energy by one and its spin-one tensor product generates the next listed $SO(3)$ types. Because the multiplicities at every level match and $\Delta_->1$, $\Delta_+>1$ in the open interval, there is no singleton null quotient in the main problem.

## 3. Casimir

The asymptotic coefficients transform as spin-$1/2$ conformal primaries of weights $\Delta_\pm$. The quadratic Casimir is therefore

$$
C_2[\Delta,s]=\Delta(\Delta-3)+s(s+1).
$$

For $s=1/2$,

$$
C_2[\Delta_\pm,\tfrac12]
=\left(\frac32\pm m\right)
\left(-\frac32\pm m\right)+\frac34
=m^2-\frac32.
$$

Both roots have the same bulk Casimir, as expected; the boundary polarization selects which lowest energy occurs.

## 4. Explicit lowest-level boost regression

The Kosmann generators obey the compact-basis algebra

$$
[H,M_i^\pm]=\pm M_i^\pm,
\qquad
(M_i^+)^\dagger=M_i^-,
$$

$$
[M_i^-,M_j^+]
=2\delta_{ij}H-2i\epsilon_{ijk}J_k.
$$

This fixes the complete $N=0\to1$ Gram matrix without evaluating a separate radial integral. Let $|0,m\rangle$ be a normalized lowest spinor with $H|0,m\rangle=\Delta|0,m\rangle$ and $M_i^-|0,m\rangle=0$. Then

$$
\langle0,m'|M_i^-M_j^+|0,m\rangle
=2\Delta\,\delta_{ij}\delta_{m'm}
-2i\epsilon_{ijk}(J_k)_{m'm}.
$$

On the tensor product $1\otimes\frac12=\frac32\oplus\frac12$, this matrix has the two eigenvalues

$$
g_{3/2}=2\Delta+1,
\qquad
g_{1/2}=2(\Delta-1).
$$

Thus the boost produces exactly the two $SO(3)$ spins present at level one and no others. The second eigenvalue is positive for both $\Delta_\pm>1$ and tends to zero only in the excluded Di limit $\Delta_-\downarrow1$.

For one explicit matrix element, choose spherical component $q=0$ and $m=+1/2$, and choose the standard positive Clebsch--Gordan phase. The projection of $M_0^+|0,+1/2\rangle$ onto the $j'=1/2,m'=1/2$ channel has Clebsch weight $1/3$. If $|1;\frac12,\frac12\rangle$ is the normalized projected descendant, then

$$
\boxed{
\left\langle1;\frac12,\frac12\right|
M_0^+
\left|0;\frac12,\frac12\right\rangle
=\sqrt{\frac{2(\Delta-1)}{3}}.
}
$$

The adjoint matrix element is

$$
\boxed{
\left\langle0;\frac12,\frac12\right|
M_0^-
\left|1;\frac12,\frac12\right\rangle
=\sqrt{\frac{2(\Delta-1)}{3}}.
}
$$

Moreover,

$$
H\,M_0^+|0,m\rangle
=(\Delta+1)M_0^+|0,m\rangle,
$$

so this is an explicit $E\mapsto E+1$ check. Substituting $\Delta=\Delta_+$ or $\Delta_-$ gives the standard or alternative result. This is a representation-theoretic evaluation of the same Kosmann generator algebra, not a claim that a new closed-form boost-mode radial integral has been performed.

## 5. Representation verdict

The evidence is stronger than spectrum matching alone:

- a normalizable spin-$1/2$ lowest state exists at $E_0=\Delta_\pm$;
- all lowering generators annihilate it by the energy grading;
- all level energies and $SO(3)$ spins have the correct multiplicities;
- the boundary Kosmann action has conformal weight $\Delta_\pm$;
- the quadratic Casimir is $m^2-3/2$.

The final naming step uses the standard classification theorem for unitary positive-energy $\mathrm{Spin}(2,3)$ modules: a lowest-weight module is denoted $D(E_0,s)$ by its lowest energy and spin. The project directly computes the lowest state, the compact $K$-types and multiplicities, the boundary weight, the Casimir, and the level-one boost matrix element above. Applying the classification to these computed data gives

$$
\mathcal H_1^{\rm std}\cong D(\Delta_+,\tfrac12),
\qquad
\mathcal H_1^{\rm alt}\cong D(\Delta_-,\tfrac12).
$$

The unitary spinor bound is $E_0\geq1$. It is strict throughout the main interval for the alternative theory and is saturated only in the excluded limit $m\to1/2$.

## 6. Fermionic second quantization

For a complex Dirac field, particle and antiparticle one-particle spaces carry charge-conjugate copies of the same positive-energy $\mathrm{Spin}(2,3)$ module. The Fock space is

$$
\mathcal F
=\Lambda^\bullet\mathcal H_{1,{\rm p}}
\widehat\otimes
\Lambda^\bullet\mathcal H_{1,{\rm ap}}.
$$

If $h_\xi$ is the one-particle Kosmann generator with matrix elements

$$
(h_\xi)_{IJ}=(U_I,i\mathcal L^K_\xi U_J)_\Sigma,
$$

then the quantum generator is the normal-ordered bilinear

$$
\widehat Q_\xi
=\sum_{I,J}\widehat a_I^\dagger(h_\xi)_{IJ}\widehat a_J
+\sum_{I,J}\widehat b_I^\dagger(h_\xi^{\,c})_{IJ}\widehat b_J.
$$

The CAR imply

$$
[\widehat Q_\xi,\widehat\psi]
=-i\mathcal L^K_\xi\widehat\psi,
$$

and normal ordering removes the vacuum constant. No quantum central extension of the finite-dimensional semisimple algebra is introduced in this free representation.

## Verification

- **Verified:** `verification/modes-and-representation.wl` checks the algebraic forms $E=\Delta_\pm+N$, the level degeneracy through $N=20$, and both Casimir roots exactly. It also constructs the $6\times6$ level-one boost Gram matrix, obtains eigenvalues $2\Delta+1$ and $2(\Delta-1)$ with multiplicities four and two, checks the two $SO(3)$ projectors, and verifies the displayed matrix element and its positive adjoint for $\Delta>1$.
- **Assumptions:** mode completeness and the standard positive self-adjoint pure extensions.
- **Not verified:** no full table of finite boost-mode radial integrals is claimed; the module name uses the standard positive-energy classification theorem.
