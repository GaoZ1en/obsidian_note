# 04. Even graded covariant phase space

## 1. Parity convention

The fields $\psi,\bar\psi$ are Grassmann odd. The physical CPS carries an **even** graded symplectic form. This is not the odd BV antibracket.

For homogeneous field-space tangent vectors $\delta_1,\delta_2$ of intrinsic parities $\epsilon_1,\epsilon_2$, an even two-form obeys

$$
\Omega(\delta_1,\delta_2)
=-(-1)^{\epsilon_1\epsilon_2}\Omega(\delta_2,\delta_1).
$$

Thus it is symmetric on two odd directions. Functional derivatives act from the right on $\psi$ and from the left on $\bar\psi$. Formulae below retain the displayed order.

## 2. Integrated potential and symplectic form

The complete standard and alternative actions have the same time-slice field-variation potential because $C_R$ has no time derivative:

$$
\theta_R
=\frac{i}{2}\int_{\Sigma_R}\sqrt\sigma\,\tau_\mu
\left(\bar\psi\gamma^\mu\delta\psi-\delta\bar\psi\gamma^\mu\psi\right).
$$

The limiting even two-form is

$$
\boxed{
\Omega_\Sigma(\delta_1,\delta_2)
=i\int_\Sigma\sqrt\sigma\,\tau_\mu
\left[
\delta_1\bar\psi\gamma^\mu\delta_2\psi
-(-1)^{\epsilon_1\epsilon_2}
\delta_2\bar\psi\gamma^\mu\delta_1\psi
\right].
}
$$

On the Lorentzian real slice it is the graded real form underlying the positive Hermitian product

$$
(u,v)_\Sigma=\int_\Sigma\sqrt\sigma\,u^\dagger v.
$$

Finiteness follows from exactly the radial power count in Section 02. This is a separate claim from action finiteness, even though both use the same mass window.

## 3. Conservation and radial flux

For tangent solutions $\delta_1\psi,\delta_2\psi$, the graded symplectic current is

$$
\omega^\mu(\delta_1,\delta_2)
=i\left[
\delta_1\bar\psi\gamma^\mu\delta_2\psi
-(-1)^{\epsilon_1\epsilon_2}
\delta_2\bar\psi\gamma^\mu\delta_1\psi
\right],
$$

and the linearized Dirac equations imply

$$
\nabla_\mu\omega^\mu=0.
$$

Stokes' theorem on $M_R$ gives

$$
\Omega_{\Sigma_f,R}-\Omega_{\Sigma_i,R}
=-\int_{\Gamma_R}\sqrt{-\gamma}\,n_\mu\omega^\mu.
$$

The finite boundary flux can be written in terms of the independent asymptotic data as

$$
\mathcal F_{\mathcal I}
=i\int_{\mathcal I}\sqrt{-g_{(0)}}
\left[
\delta_1\bar\alpha\,\delta_2\beta
-\delta_1\bar\beta\,\delta_2\alpha
-(-1)^{\epsilon_1\epsilon_2}(1\leftrightarrow2)
\right].
$$

For standard tangent vectors, $\delta\alpha=\delta\bar\alpha=0$; for alternative tangent vectors, $\delta\beta=\delta\bar\beta=0$. Therefore

$$
\mathcal F_{\mathcal I}^{\rm std}=0,
\qquad
\mathcal F_{\mathcal I}^{\rm alt}=0,
$$

and $\Omega_\Sigma$ is independent of the Cauchy surface in both theories.

## 4. What has and has not been established

The implications are

$$
\text{Dirac EOM + source-free pure BC}
\Longrightarrow
\text{finite }\Omega
+\text{ zero radial flux}
\Longrightarrow
\text{Cauchy-surface independence}.
$$

They do not by themselves prove completeness of the global modes, positivity of every possible mixed extension, or self-adjointness of an unspecified Hamiltonian domain. For the two pure extensions, positivity is manifest once the mode basis is normalized with $\int u^\dagger u$, while completeness/self-adjointness is retained as a literature-supported functional-analytic input.

## Verification

- **Verified:** the boundary flux vanishes algebraically for each pure polarization; the radial integrability inequalities are in `verification/modes-and-representation.wl`.
- **Assumptions:** tangent variations satisfy the linearized full Dirac equation and the same boundary condition as the background solution.
- **Not verified:** no BV antibracket, gauge reduction, or interacting Peierls construction is included.

