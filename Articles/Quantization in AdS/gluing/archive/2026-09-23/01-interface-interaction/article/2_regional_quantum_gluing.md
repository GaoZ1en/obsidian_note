# Regional scalar theory, CPS, quantization and interface gluing

This section fixes the order of construction used throughout the paper. We first quantize each scalar region with a Neumann condition at its artificial boundary. Only after the regional oscillator algebras and Hilbert spaces have been defined do we add the interface interaction. The discussion is therefore a setup for gluing quantized regions, not a separate theory of classical gluing.

## Regional scalar theory

Let

$$
M_i=\mathbb R_t\times\Sigma_i
$$

be a static spacetime region with spatial metric $h_i$, lapse equal to one, physical outer boundary $\partial_{\rm phys}\Sigma_i$, and artificial interface $\Gamma_i$. For a real scalar of mass $m>0$, take

$$
S_i[\phi_i]
=\frac12\int\mathrm dt\int_{\Sigma_i}\mathrm d^{d}x\,\sqrt{h_i}
\left[
\dot\phi_i^2-h_i^{ab}\partial_a\phi_i\partial_b\phi_i-m^2\phi_i^2
\right].
$$

The physical outer boundary condition is held fixed by the model. At the artificial boundary we use homogeneous Neumann data before the regions are coupled,

$$
n_i^a\partial_a\phi_i\big|_{\Gamma_i}=0.
$$

The same condition is used at the physical endpoints of the interval benchmark. Varying the action gives

$$
(\partial_t^2+\mathcal D_i)\phi_i=0,
\qquad
\mathcal D_i=-\nabla_{h_i}^2+m^2,
$$

together with the endpoint term

$$
\delta S_i\big|_{t_i}^{t_f}
=\left.
\int_{\Sigma_i}\mathrm d^d x\,\sqrt{h_i}\,
\dot\phi_i\,\delta\phi_i
\right|_{t_i}^{t_f}.
$$

The regional solution space $\mathcal P_i$ consists of real solutions satisfying these boundary conditions and having finite canonical energy. We assume that $\mathcal D_i$ is positive and self-adjoint on the declared Neumann domain, with a complete orthonormal basis of real modes

$$
\mathcal D_i u_{i,n}=\omega_{i,n}^2u_{i,n},
\qquad
\int_{\Sigma_i}\mathrm d^d x\,\sqrt{h_i}\,
u_{i,n}u_{i,r}=\delta_{nr}.
$$

These hypotheses hold for the compact interval and square used below. The global $\mathrm{AdS}_2$ appendix instead uses the standard normalizable boundary condition at conformal infinity.

## CPS and canonical quantization

The endpoint variation defines the covariant phase-space potential and symplectic form

$$
\Theta_i
=\int_{\Sigma_i}\mathrm d^d x\,\sqrt{h_i}\,
\dot\phi_i\,\delta\phi_i,
\qquad
\Omega_i=\delta\Theta_i
=\int_{\Sigma_i}\mathrm d^d x\,\sqrt{h_i}\,
\delta\dot\phi_i\wedge\delta\phi_i.
$$

For the Neumann solution space, the boundary flux of the symplectic current vanishes, so $\Omega_i$ is independent of the Cauchy slice. Introduce positive-frequency solutions

$$
U_{i,n}(t,x)
=\frac{e^{-i\omega_{i,n}t}}{\sqrt{2\omega_{i,n}}}
u_{i,n}(x).
$$

Their normalization is fixed by the CPS contraction,

$$
iX_{i,r}^*\mathbin{\cdot}X_{i,n}\mathbin{\cdot}\Omega_i
=\delta_{nr}.
$$

Expanding a real solution as

$$
\phi_i
=\sum_n\left(a_{i,n}U_{i,n}+a_{i,n}^\dagger U_{i,n}^*\right)
$$

gives

$$
\Omega_i
=i\sum_n\delta a_{i,n}^\dagger\wedge\delta a_{i,n},
\qquad
[a_{i,n},a_{j,r}^\dagger]
=\delta_{ij}\delta_{nr}.
$$

Equivalently, at a fixed time write

$$
\phi_i(x)=\sum_n Q_{i,n}u_{i,n}(x),
\qquad
\pi_i(x)=\sum_n P_{i,n}u_{i,n}(x),
$$

so that

$$
[Q_{i,n},P_{j,r}]=i\hbar\delta_{ij}\delta_{nr},
\qquad
H_i=\frac12\sum_n\left(P_{i,n}^2+\omega_{i,n}^2Q_{i,n}^2\right).
$$

The uncoupled quantum theory is therefore

$$
\mathcal H_{\rm reg}
=\mathcal H_L\otimes\mathcal H_R,
\qquad
H_{\rm reg}=H_L\otimes\mathbf 1+\mathbf 1\otimes H_R.
$$

This product theory is the starting point for the interface interaction. No extra interface oscillator has been introduced: the boundary trace is an operator built from the regional oscillators on a domain where that trace is defined, or at the finite regulator used below.

## Interface coupling for quantized regions

Identify the two copies of the interface geometrically and let

$$
q_i(\mathbf y)=\phi_i\big|_{\Gamma_i}(\mathbf y)
$$

denote their trace operators. We couple the already quantized regional theories through

$$
H_\Gamma
=\frac g2\int_\Gamma\mathrm d^{d-1}y\,\sqrt\gamma\,
\bigl(q_L-q_R\bigr)^2,
\qquad g>0.
$$

This is an interaction between the two regional quantum theories, although the total model remains Gaussian. In the continuum it is understood through its positive quadratic form. At finite mode number it is an ordinary quadratic operator.

Let $Q$ and $P$ collect all retained regional coefficients. The trace map restricted to these modes is a matrix $C_N$, so the retained mismatch is $C_NQ$. More generally, several interfaces or trace components are described by a positive interface matrix $A_N$. The regulated Hamiltonian has the form

$$
H_N
=\frac12P^{\mathrm T}P+\frac12Q^{\mathrm T}K_NQ,
\qquad
K_N=D_N+C_N^{\mathrm T}A_NC_N.
$$

Here $D_N$ is the diagonal stiffness of the uncoupled regional oscillators. For one scalar interface $A_N$ reduces to the running coupling $g_N$. Since $C_N^{\mathrm T}A_NC_N$ is positive semidefinite, $K_N$ is positive whenever the regional stiffness is positive. Orthogonally diagonalizing $K_N$ gives a finite set of coupled oscillators and hence an unambiguous Gaussian ground state.

The finite matrix also displays why interface gluing and regional quantization are compatible in this model: the interaction changes the stiffness matrix but not the canonical symplectic form. This statement uses the absence of time derivatives in $H_\Gamma$ and is not asserted for a general boundary interaction.

## Truncation and boundary-response matching

The bare trace matrix $C_N$ contains only retained modes. Eliminating the regional coordinates from the finite eigenvalue equation shows that the interface sees the response

$$
R_N(z)
=C_N(D_N-zI)^{-1}C_N^{\mathrm T},
$$

away from poles of the uncoupled problem. For invertible $A_N$, the matrix determinant lemma gives

$$
\frac{\det(K_N-zI)}{\det(D_N-zI)}
=\det(A_N)\det\left(A_N^{-1}+R_N(z)\right).
$$

This divided expression is a convenient secular equation only away from free poles; eigenvalues at a pole must be checked in the original matrix problem.

Let $R(z)$ denote the corresponding continuum boundary response in the same spectral convention, and define the omitted tail

$$
T_N(z)=R(z)-R_N(z).
$$

The continuum secular matrix is $A^{-1}+R(z)$. Matching it at a chosen point $z_*$ requires

$$
A_N
=\left(A^{-1}+T_N(z_*)\right)^{-1},
$$

because then

$$
A_N^{-1}+R_N(z_*)
=A^{-1}+R(z_*).
$$

We choose $z_*=0$ after subtracting any common mass shift, so $z$ is the spatial spectral parameter. The remaining error in the secular matrix is

$$
T_N(z)-T_N(0).
$$

For an isolated nondegenerate root in a fixed spectral window, this subtraction cancels the leading static response error. It does not give a rate uniform up to the cutoff, and it does not by itself prove convergence of eigenvectors, states, or arbitrary observables.

At the joined endpoint the continuum coupling is formally infinite. In a single interface channel, the matching rule becomes

$$
A_N^{(\infty)}=T_N(0)^{-1}.
$$

Thus a divergent cutoff-dependent penalty can approximate a perfectly joined low-energy boundary response without imposing a finite-dimensional hard constraint. Section $\ref{sec:two-intervals}$ now makes every object in this construction explicit and tests both its spectrum and its vacuum covariance.
