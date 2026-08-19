# Finite-Cutoff Canonical Gluing

This note constructs the reduced canonical model for the interval scalar at a common finite cutoff. It uses the $N$ poles and $N$ zeros of the truncated Dirichlet-to-Neumann relation and contains no independent interface oscillator. The construction is a regulator-level statement; the continuum Fock-space limit remains separate.

## 1. Feedback variables and the interface equation

Keep the first $N$ strict-Dirichlet modes on each half interval and collect their coefficients into column vectors

$$\begin{align}
\boldsymbol c_i&=(c_{i,1},\ldots,c_{i,N})^{\mathrm T}, &
\boldsymbol c_\pm&=\dfrac{\boldsymbol c_1\pm\boldsymbol c_2}{\sqrt 2}.
\end{align}$$

Introduce

$$\begin{align}
\boldsymbol A&=(A_1,\ldots,A_N)^{\mathrm T}, &
D&=\operatorname{diag}(k_1^2,\ldots,k_N^2), &
W&=m^2\mathbf 1_N+D,\\
\boldsymbol v&=D\boldsymbol A, &
\boldsymbol h&=\dfrac{L}{\sqrt 2}\boldsymbol v.
\end{align}$$

The truncated regional fields are reconstructed as

$$\begin{align}
\phi_i^{(N)}(t,y)&=\dfrac{y}{L}q(t)+\sum_{n=1}^N c_{i,n}(t)u_n(y).
\end{align}$$

They obey the outer Dirichlet condition and have the same interface value by construction. Since $u_n'(L)=-A_nk_n^2$, flux matching is

$$\begin{align}
0&=\dfrac{2q}{L}-\sqrt 2\,\boldsymbol v^{\mathrm T}\boldsymbol c_+.
\end{align}$$

Thus the common interface history is not an additional coordinate. At every time it is fixed by

$$\begin{align}
q(t)&=\boldsymbol h^{\mathrm T}\boldsymbol c_+(t).
\end{align}$$

The antisymmetric coefficients do not enter this equation and carry the $q=0$ relative modes.

## 2. Reduced feedback equations

The forced regional oscillator equations give

$$\begin{align}
\ddot{\boldsymbol c}_-+W\boldsymbol c_-&=0,\\
\ddot{\boldsymbol c}_++W\boldsymbol c_+
&=-\sqrt 2\,\boldsymbol A(\ddot q+m^2q).
\end{align}$$

Substituting $q=\boldsymbol h^{\mathrm T}\boldsymbol c_+$ into the second equation gives

$$\begin{align}
R\ddot{\boldsymbol c}_++(m^2R+D)\boldsymbol c_+&=0, &
R&=\mathbf 1_N+L\boldsymbol A\boldsymbol v^{\mathrm T}.
\end{align}$$

The matrix $R$ is not symmetric, so the fixed-source brackets of $\boldsymbol c_+$ and $\dot{\boldsymbol c}_+$ cannot simply be retained after $q$ becomes dependent on the regional data.

The positive diagonal matrix $D$ symmetrizes the feedback equation:

$$\begin{align}
M_+&=DR=D+L\boldsymbol v\boldsymbol v^{\mathrm T},\\
K_+&=D(m^2R+D)=m^2M_++D^2.
\end{align}$$

Both matrices are real, symmetric and positive definite. Moreover, this diagonal symmetrizer is unique up to an overall positive constant. Indeed, if a symmetric matrix $H$ makes both $HR$ and $H(m^2R+D)$ symmetric, then $HD$ is symmetric. Since the entries of $D$ are distinct, $H$ must be diagonal. Symmetry of $H\boldsymbol A\boldsymbol v^{\mathrm T}$ then requires $H\boldsymbol A$ to be proportional to $\boldsymbol v=D\boldsymbol A$, hence $H$ is proportional to $D$.

Choosing the common positive normalization $H=D$, an equivalent reduced Lagrangian is

$$\begin{align}
L_N={}&\dfrac12\dot{\boldsymbol c}_+^{\mathrm T}M_+
\dot{\boldsymbol c}_+-\dfrac12\boldsymbol c_+^{\mathrm T}K_+
\boldsymbol c_+\\
&+\dfrac12\dot{\boldsymbol c}_-^{\mathrm T}\dot{\boldsymbol c}_-
-\dfrac12\boldsymbol c_-^{\mathrm T}W\boldsymbol c_-.
\end{align}$$

This is not the unconstrained $(2N+1)$-coordinate Galerkin port model. It has exactly $2N$ configuration variables, and $q$ is reconstructed from them.

The uniqueness statement above is only a statement about symmetric left multipliers of the feedback equation. A diagonalizable finite feedback system admits further conserved canonical forms obtained by assigning positive weights to its normal modes. The dynamics alone therefore does not select the scalar field's physical $L^2$/Klein--Gordon normalization. `off-center interval cut.md` makes this ambiguity explicit and constructs a modewise $L^2$-matched alternative. All Gaussian diagnostics below which use the present common/relative metric are consequently properties of this declared centered hybrid regulator.

## 3. Reduced symplectic form and Hamiltonian

Define the momenta

$$\begin{align}
\boldsymbol p_+&=M_+\dot{\boldsymbol c}_+, &
\boldsymbol p_-&=\dot{\boldsymbol c}_-.
\end{align}$$

The reduced symplectic form and Hamiltonian are

$$\begin{align}
\omega_N&=\delta\boldsymbol p_+^{\mathrm T}\wedge
\delta\boldsymbol c_++\delta\boldsymbol p_-^{\mathrm T}\wedge
\delta\boldsymbol c_-,\\
H_N&=\dfrac12\boldsymbol p_+^{\mathrm T}M_+^{-1}\boldsymbol p_+
+\dfrac12\boldsymbol c_+^{\mathrm T}K_+\boldsymbol c_+\\
&\quad+\dfrac12\boldsymbol p_-^{\mathrm T}\boldsymbol p_-
+\dfrac12\boldsymbol c_-^{\mathrm T}W\boldsymbol c_-.
\end{align}$$

Consequently the reduced brackets are

$$\begin{align}
\{c_{\sigma,n},p_{\tau,m}\}_{\mathrm P}
&=\delta_{\sigma\tau}\delta_{nm}, &
\sigma,\tau&\in\{+,-\}.
\end{align}$$

In particular,

$$\begin{align}
\{c_{+,n},\dot c_{+,m}\}_{\mathrm P}&=(M_+^{-1})_{nm},
\end{align}$$

not $\delta_{nm}$. This is the explicit correction to the fixed-source brackets after the common history becomes a function of the regional data.

## 4. The $2N$ feedback spectrum

Let the columns of $U$ solve the symmetric generalized eigenvalue problem

$$\begin{align}
K_+U&=M_+U\Lambda_+, &
U^{\mathrm T}M_+U&=\mathbf 1_N,\\
\Lambda_+&=\operatorname{diag}
(\Omega_{1,N}^2,\Omega_{3,N}^2,\ldots,\Omega_{2N-1,N}^2).
\end{align}$$

Writing $k^2=\Omega^2-m^2$, the characteristic equation is

$$\begin{align}
0&=\det(D^2-k^2M_+)\\
&=\det[D(D-k^2\mathbf 1_N)]
\left(1-2k^2\sum_{n=1}^N\dfrac{1}{k_n^2-k^2}\right).
\end{align}$$

The apparent poles in the last factor cancel against the preceding determinant. The $N$ roots obey

$$\begin{align}
D_N(\Omega)&=\dfrac1L-\dfrac{2k^2}{L}
\sum_{n=1}^N\dfrac{1}{k_n^2-k^2}=0,
\end{align}$$

so they are exactly the zeros of the truncated Dirichlet-to-Neumann response. The antisymmetric sector supplies the $N$ poles,

$$\begin{align}
\Omega_{2n,N}^2&=m^2+k_n^2, &n&=1,\ldots,N.
\end{align}$$

The full finite regulator therefore contains precisely the $N$ feedback zeros and $N$ regional poles, with no additional port mode.

## 5. Reconstructed field and global canonical coordinates

The global normal coordinates are the reduced projections

$$\begin{align}
Q_{2j-1}&=(U^{\mathrm T}M_+\boldsymbol c_+)_j, &
P_{2j-1}&=(U^{\mathrm T}\boldsymbol p_+)_j,\\
Q_{2n}&=c_{-,n}, &P_{2n}&=p_{-,n}.
\end{align}$$

Their inverse is

$$\begin{align}
\boldsymbol c_+&=U(Q_1,Q_3,\ldots,Q_{2N-1})^{\mathrm T},\\
\boldsymbol p_+&=M_+U(P_1,P_3,\ldots,P_{2N-1})^{\mathrm T},\\
\boldsymbol c_-&=(Q_2,Q_4,\ldots,Q_{2N})^{\mathrm T},\\
\boldsymbol p_-&=(P_2,P_4,\ldots,P_{2N})^{\mathrm T}.
\end{align}$$

The operator-valued interface history and regional coefficients are then

$$\begin{align}
q(t)&=\boldsymbol h^{\mathrm T}U
(Q_1(t),Q_3(t),\ldots,Q_{2N-1}(t))^{\mathrm T},\\
\boldsymbol c_{1,2}(t)&=\dfrac{\boldsymbol c_+(t)
\pm\boldsymbol c_-(t)}{\sqrt2}.
\end{align}$$

Substitution in

$$\begin{align}
\phi_i^{(N)}(t,y)&=\dfrac{y}{L}q(t)
+\sum_{n=1}^Nc_{i,n}(t)u_n(y)
\end{align}$$

reconstructs the glued field. The outer Dirichlet conditions and continuity hold term by term. The definition of $q$ gives

$$\begin{align}
\phi_1^{(N)\prime}(t,L)+\phi_2^{(N)\prime}(t,L)=0
\end{align}$$

exactly at every $N$. The $Q_{2n}$ modes have $q=0$ and retain the relative sector associated with the poles of the response.

## 6. Explicit finite-dimensional symplectic map

Let $P_{\mathrm{oe}}$ be the permutation which takes the interlaced order

$$\begin{align}
(Q_1,Q_2,\ldots,Q_{2N})
\end{align}$$

to the grouped order with all odd coordinates followed by all even coordinates, and set

$$\begin{align}
T_N&=\begin{pmatrix}U&0\\0&\mathbf1_N\end{pmatrix}P_{\mathrm{oe}},\\
S_N&=\begin{pmatrix}T_N&0\\0&T_N^{-\mathrm T}\end{pmatrix}.
\end{align}$$

For

$$\begin{align}
\boldsymbol z_{\mathrm g}&=(\boldsymbol Q,\boldsymbol P)^{\mathrm T}, &
\boldsymbol z_{\mathrm{red}}&=(\boldsymbol c_+,\boldsymbol c_-,
\boldsymbol p_+,\boldsymbol p_-)^{\mathrm T},
\end{align}$$

the relation is

$$\begin{align}
\boldsymbol z_{\mathrm{red}}&=S_N\boldsymbol z_{\mathrm g}.
\end{align}$$

Because $S_N$ has the cotangent-lift form,

$$\begin{align}
S_N^{\mathrm T}J S_N&=J, &
J&=\begin{pmatrix}0&\mathbf1_{2N}\\-\mathbf1_{2N}&0\end{pmatrix}.
\end{align}$$

If $\mathcal H_{\mathrm{red}}$ and $\mathcal H_{\mathrm g}$ are the symmetric matrices of the two quadratic Hamiltonians, then

$$\begin{align}
S_N^{\mathrm T}\mathcal H_{\mathrm{red}}S_N
&=\mathcal H_{\mathrm g},\\
H_N&=\dfrac12\sum_{r=1}^{2N}
(P_r^2+\Omega_{r,N}^2Q_r^2).
\end{align}$$

This is the common regulator: the regional feedback variables and the global normal variables describe the same $2N$-oscillator quadratic system.

## 7. Quantization at fixed cutoff

Promote the reduced variables to operators with

$$\begin{align}
[\widehat c_{\sigma,n},\widehat p_{\tau,m}]
&=i\delta_{\sigma\tau}\delta_{nm}.
\end{align}$$

The symplectic identity gives

$$\begin{align}
[\widehat Q_r,\widehat P_s]&=i\delta_{rs}, &
[\widehat Q_r,\widehat Q_s]&=[\widehat P_r,\widehat P_s]=0.
\end{align}$$

The time-independent global annihilation operators are

$$\begin{align}
a_r&=e^{i\Omega_{r,N}(t-t_i)}
\left(\sqrt{\dfrac{\Omega_{r,N}}{2}}Q_r(t)
+\dfrac{i}{\sqrt{2\Omega_{r,N}}}P_r(t)\right),\\
[a_r,a_s^\dagger]&=\delta_{rs}.
\end{align}$$

Every real finite-dimensional symplectic matrix has a metaplectic implementation, unique up to its standard sign ambiguity. Equivalently, the finite-dimensional regular irreducible CCR representations are unitarily equivalent. Thus there is a unitary $\mathcal U_N$, defined up to phase, which implements $S_N$.

Let

$$\begin{align}
\Sigma_{\mathrm g}&=\dfrac12\operatorname{diag}
(\Omega_N^{-1},\Omega_N), &
\Omega_N&=\operatorname{diag}(\Omega_{1,N},\ldots,\Omega_{2N,N}).
\end{align}$$

The same vacuum written in reduced regional variables has covariance

$$\begin{align}
\Sigma_{\mathrm{red}}&=S_N\Sigma_{\mathrm g}S_N^{\mathrm T}.
\end{align}$$

It obeys the pure-state identity

$$\begin{align}
\Sigma_{\mathrm{red}}J\Sigma_{\mathrm{red}}&=\dfrac14J
\end{align}$$

and is the ground-state covariance of $\mathcal H_{\mathrm{red}}$. This establishes the finite-cutoff CCR, Hamiltonian and vacuum-covariance equivalence. It does not establish a continuum unitary equivalence.

## 8. Verification and claim boundary

The script `numerics/finite_cutoff_canonical_gluing.wl` checks $N=1,2,4,8$ at $L=m=1$ with 80-digit arithmetic. It verifies:

- $DR=M_+$ and $K_+=m^2M_++D^2$;
- positivity of $M_+$ and $K_+$;
- equality of the generalized eigenvalues with the zeros of $D_N$;
- exact flux matching of every reconstructed eigenmode;
- $U^{\mathrm T}M_+U=\mathbf1_N$;
- $S_N^{\mathrm T}JS_N=J$;
- $S_N^{\mathrm T}\mathcal H_{\mathrm{red}}S_N=\mathcal H_{\mathrm g}$;
- the vacuum purity identity and the finite-dimensional uncertainty relation.

Verified: the $2N$-mode reduced canonical feedback model, its full pole-plus-zero spectrum, its explicit symplectic normal-mode map, its fixed-$N$ CCR algebra and its vacuum covariance.

Assumptions: $L>0$, $m>0$, the same strict-Dirichlet cutoff $N$ is used on both half intervals, and the positive diagonal symmetrizer is normalized as $H=D$.

Not verified: equality with a different finite regulator, cutoff-independent vacuum overlap, the squeezed-state formula relative to a chosen product regional reference state, or continuum Fock-space equivalence.
