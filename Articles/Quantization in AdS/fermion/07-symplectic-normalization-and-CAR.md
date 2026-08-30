# 07. Symplectic normalization and CAR

## 1. Mode norm

The radial rescaling and $\rho/2$ rotation used in Section 06 are unitary for the Cauchy product. With normalized angular harmonics,

$$
(U_{n\kappa jm},U_{n'\kappa'j'm'})
=\delta_{\kappa\kappa'}\delta_{jj'}\delta_{mm'}
\int_0^{\pi/2}d\rho\left(
\widehat f^{+*}_{n\kappa}\widehat f^+_{n'\kappa}
+\widehat f^{-*}_{n\kappa}\widehat f^-_{n'\kappa}
\right).
$$

For $\kappa>0$, Jacobi orthogonality fixes

$$
\boxed{
\mathcal N_{n\kappa}(m)
=\sqrt2\left[
\frac{n!\,\Gamma(n+m+\kappa+1)}
{\Gamma(n+\kappa+1/2)\Gamma(n+m+1/2)}
\right]^{1/2}.
}
$$

The two component norms are

$$
\|\widehat f^+\|^2=\frac{n+m+\kappa}{2n+m+\kappa},
\qquad
\|\widehat f^-\|^2=\frac{n}{2n+m+\kappa},
$$

and sum to one. For $n=0$, the second component is absent. The $\kappa<0$ square-root factors in Section 06 give the same total normalization.

Alternative modes use the same formulas with $m\mapsto-m$:

$$
\mathcal N^{\rm alt}_{n\kappa}
=\sqrt2\left[
\frac{n!\,\Gamma(n-m+\kappa+1)}
{\Gamma(n+\kappa+1/2)\Gamma(n-m+1/2)}
\right]^{1/2}.
$$

All gamma-function arguments are positive for $0<m<1/2$. Hence the pure-mode Hermitian norm is positive in both theories. This explicit positivity statement is narrower than a complete self-adjoint-domain theorem.

## 2. Particle/antiparticle expansion

Choose orthonormal positive-frequency particle modes $U_I$ and charge-conjugate antiparticle modes $V_I$, with $I=(n,\kappa,j,m_j)$. Expand

$$
\psi(x)=\sum_I\left(a_IU_I(x)+b_I^*V_I(x)\right),
$$

$$
\bar\psi(x)=\sum_I\left(a_I^*\bar U_I(x)+b_I\bar V_I(x)\right).
$$

The coefficients are Grassmann odd. Complex conjugation is imposed only on the Lorentzian real slice; in the complexified phase space the starred and unstarred coordinates are independent.

## 3. Even symplectic form and graded Poisson bracket

Substitution in the even symplectic form gives

$$
\Omega
=i\sum_I\left(
\delta a_I^*\,\delta a_I
+\delta b_I^*\,\delta b_I
\right),
$$

where products of one-forms on odd coordinates are graded symmetric. Inverting each $i\sigma_x$ block gives the even graded Poisson brackets

$$
\{a_I,a_J^*\}_{\rm gP}=-i\delta_{IJ},
\qquad
\{b_I,b_J^*\}_{\rm gP}=-i\delta_{IJ},
$$

with all other elementary brackets zero.

Quantization uses

$$
[\widehat F,\widehat G]_{\rm graded}
=i\widehat{\{F,G\}_{\rm gP}},
$$

and therefore

$$
\boxed{
\{\widehat a_I,\widehat a_J^\dagger\}=\delta_{IJ},
\qquad
\{\widehat b_I,\widehat b_J^\dagger\}=\delta_{IJ}.
}
$$

The remaining elementary anticommutators vanish.

## 4. Algebra versus representation

The CAR algebra follows from the inverse graded symplectic structure. A Fock representation additionally requires a complex structure/positive-energy splitting. Global time translation and the spectra in Section 06 supply that choice.

The vacuum satisfies

$$
\widehat a_I|0\rangle=0,
\qquad
\widehat b_I|0\rangle=0.
$$

The normal-ordered Hamiltonian and global $U(1)$ charge are

$$
\widehat H
=\sum_IE_I\left(
\widehat a_I^\dagger\widehat a_I
+\widehat b_I^\dagger\widehat b_I
\right),
$$

$$
\widehat Q_{U(1)}
=\sum_I\left(
\widehat a_I^\dagger\widehat a_I
-\widehat b_I^\dagger\widehat b_I
\right).
$$

They obey

$$
[\widehat Q_{U(1)},\widehat\psi]=-\widehat\psi,
\qquad
\partial_t\widehat\psi=i[\widehat H,\widehat\psi],
\qquad
[\widehat Q_{U(1)},\widehat H]=0.
$$

## Verification

- **Verified:** the Jacobi norms reduce analytically to the two fractions above; Mathematica checks representative standard and $m\mapsto-m$ cases. `verification/polarization-and-car.wl` inverts the graded mode block and checks the one-mode CAR and number-generator commutators.
- **Assumptions:** orthonormal completeness of the pure-extension modes and the global positive-energy splitting.
- **Not verified:** uniqueness of the Fock representation in an infinite-dimensional setting is not claimed.
