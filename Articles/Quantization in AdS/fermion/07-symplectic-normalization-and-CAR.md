# 07. Symplectic Normalization and CAR

## 1. Mode Norm

The radial rescaling and $\rho/2$ rotation used in Section 06 are unitary for the Cauchy product. With normalized angular harmonics,

$$\begin{align}
(U_{n\kappa jm},U_{n'\kappa'j'm'}) =\delta_{\kappa\kappa'}\delta_{jj'}\delta_{mm'} \int_0^{\pi/2}d\rho\left( \widehat f^{+*}_{n\kappa}\widehat f^+_{n'\kappa} +\widehat f^{-*}_{n\kappa}\widehat f^-_{n'\kappa} \right).
\end{align}$$

For $\kappa>0$, Jacobi orthogonality fixes

$$\begin{align}
\boxed{ \mathcal N_{n\kappa}(m) =\sqrt2\left[ \frac{n!\,\Gamma(n+m+\kappa+1)} {\Gamma(n+\kappa+1/2)\Gamma(n+m+1/2)} \right]^{1/2}.
}
\end{align}$$

The two component norms are

$$\begin{align}
\|\widehat f^+\|^2=\frac{n+m+\kappa}{2n+m+\kappa}, \qquad \|\widehat f^-\|^2=\frac{n}{2n+m+\kappa},
\end{align}$$

and sum to one. For $n=0$, the second component is absent. The $\kappa<0$ square-root factors in Section 06 give the same total normalization.

Alternative modes use the same formulas with $m\mapsto-m$:

$$\begin{align}
\mathcal N^{\rm alt}_{n\kappa} =\sqrt2\left[ \frac{n!\,\Gamma(n-m+\kappa+1)} {\Gamma(n+\kappa+1/2)\Gamma(n-m+1/2)} \right]^{1/2}.
\end{align}$$

All gamma-function arguments are positive for $0<m<1/2$. Hence the pure-mode Hermitian norm is positive in both theories. This explicit positivity statement is narrower than a complete self-adjoint-domain theorem.

## 2. Particle/antiparticle Expansion

Choose orthonormal positive-frequency particle modes $U_I$ and charge-conjugate antiparticle modes $V_I$, with $I=(n,\kappa,j,m_j)$. Expand

$$\begin{align}
\psi(x)=\sum_I\left(a_IU_I(x)+b_I^*V_I(x)\right),
\end{align}$$

$$\begin{align}
\bar\psi(x)=\sum_I\left(a_I^*\bar U_I(x)+b_I\bar V_I(x)\right).
\end{align}$$

The coefficients are Grassmann odd. Complex conjugation is imposed only on the Lorentzian real slice; in the complexified phase space the starred and unstarred coordinates are independent.

## 3. Even Symplectic Form and Graded Poisson Bracket

Substitution in the even symplectic form gives

$$\begin{align}
\Omega =i\sum_I\left( \delta a_I^*\,\delta a_I +\delta b_I^*\,\delta b_I \right),
\end{align}$$

where products of one-forms on odd coordinates are graded symmetric. Inverting each $i\sigma_x$ block gives the even graded Poisson brackets

$$\begin{align}
\{a_I,a_J^*\}_{\rm gP}=-i\delta_{IJ}, \qquad \{b_I,b_J^*\}_{\rm gP}=-i\delta_{IJ},
\end{align}$$

with all other elementary brackets zero.

Quantization uses

$$\begin{align}
[\widehat F,\widehat G]_{\rm graded} =i\widehat{\{F,G\}_{\rm gP}},
\end{align}$$

and therefore

$$\begin{align}
\boxed{ \{\widehat a_I,\widehat a_J^\dagger\}=\delta_{IJ}, \qquad \{\widehat b_I,\widehat b_J^\dagger\}=\delta_{IJ}.
}
\end{align}$$

The remaining elementary anticommutators vanish.

## 4. Charges in Mode Space

Section 05 derived the time-translation charge from the completed action and established

$$\begin{align}
Q_{\partial_t}[U_I]=+E_I, \qquad Q_{\partial_t}[V_I]=-E_I.
\end{align}$$

The positive- and negative-frequency eigenspaces are orthogonal for the self-adjoint one-particle time-translation operator. Substituting the mode expansion into the classical Noether charge therefore gives

$$\begin{aligned}
Q_{\partial_t} &=\sum_I\left( E_I a_I^*a_I-E_I b_Ib_I^* \right)\\
&=\boxed{ \sum_IE_I\left(a_I^*a_I+b_I^*b_I\right)
}.
\end{aligned}$$

The second equality uses the Grassmann ordering $b_Ib_I^*=-b_I^*b_I$. This minus sign is essential: the negative one-particle eigenvalue of $V_I$ and the odd reordering combine to give positive classical antiparticle energy.

For the phase convention $X_{U(1)}\psi=-i\psi$ used in Section 05, the action-derived classical charge is

$$\begin{aligned}
Q_{U(1)} &=\sum_I\left(a_I^*a_I+b_Ib_I^*\right)\\
&=\boxed{ \sum_I\left(a_I^*a_I-b_I^*b_I\right)
}.
\end{aligned}$$

Inverting the even symplectic form as in Section 03 makes these two functionals the generators of time translation and global phase rotation. In particular, after quantization the CAR give

$$\begin{align}
[\widehat H,\widehat a_I]=-E_I\widehat a_I, \qquad [\widehat H,\widehat b_I^\dagger]=+E_I\widehat b_I^\dagger,
\end{align}$$

$$\begin{align}
[\widehat Q_{U(1)},\widehat a_I]=-\widehat a_I, \qquad [\widehat Q_{U(1)},\widehat b_I^\dagger]=-\widehat b_I^\dagger.
\end{align}$$

If the negative-frequency term is quantized before normal ordering, it is

$$\begin{align}
-E_I\widehat b_I\widehat b_I^\dagger =E_I\widehat b_I^\dagger\widehat b_I-E_I.
\end{align}$$

Dropping the field-independent vacuum constant gives

$$\begin{align}
\boxed{ \widehat H =\sum_IE_I\left( \widehat a_I^\dagger\widehat a_I +\widehat b_I^\dagger\widehat b_I \right).
}
\end{align}$$

Likewise, fermionic normal ordering of $\widehat b_I\widehat b_I^\dagger$ gives $-\widehat b_I^\dagger\widehat b_I$, so

$$\begin{align}
\boxed{ \widehat Q_{U(1)} =\sum_I\left( \widehat a_I^\dagger\widehat a_I -\widehat b_I^\dagger\widehat b_I \right).
}
\end{align}$$

This supplies the continuous chain

$$\begin{align}
\boxed{ \text{completed action} \longrightarrow Q_{\partial_t},Q_{U(1)} \longrightarrow\Omega^{-1}_{\rm graded} \longrightarrow\mathrm{CAR} \longrightarrow\widehat H,\widehat Q_{U(1)}.
}
\end{align}$$

## 5. Algebra Versus Representation

The CAR algebra follows from the inverse graded symplectic structure. A Fock representation additionally requires a complex structure/positive-energy splitting. Global time translation and the spectra in Section 06 supply that choice.

The vacuum satisfies

$$\begin{align}
\widehat a_I|0\rangle=0, \qquad \widehat b_I|0\rangle=0.
\end{align}$$

The action-derived, normal-ordered operators above obey

$$\begin{align}
[\widehat Q_{U(1)},\widehat\psi]=-\widehat\psi, \qquad \partial_t\widehat\psi=i[\widehat H,\widehat\psi], \qquad [\widehat Q_{U(1)},\widehat H]=0.
\end{align}$$

## Verification

- **Verified:** the general normalization proof is the analytic Jacobi-orthogonality reduction to the two component fractions above. `verification/modes-and-representation.wl` separately performs exact direct integrals in representative standard and $m\mapsto-m$ cases; those samples are regressions, not the general proof. `verification/polarization-and-car.wl` inverts the graded mode block. `verification/noether-time-translation.wl` checks the $\partial_t$ Kosmann cancellation, the $\pm E$ one-mode Noether eigenvalues, a two-mode particle/antiparticle CAR representation, the Hamiltonian and $U(1)$ commutators, and the antiparticle normal-ordering constant.
- **Assumptions:** orthonormal completeness of the pure-extension modes and the global positive-energy splitting.
- **Not verified:** uniqueness of the Fock representation in an infinite-dimensional setting is not claimed.
