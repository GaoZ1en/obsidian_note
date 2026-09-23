# Finite-Regulator Compatibility

> Status: exact control theorem, exact strong-flux constrained Galerkin theorem, and a finite-$N$ noncommutation diagnosis. The naive retarded truncation is not the same finite system. `finite-quantum-comparison.md` completes one fixed-$N$ Gaussian comparison after declaring the constrained regulator and a symplectic reference transport; its uniqueness and continuum behavior remain open.

## 1. Verdict

There are three distinct finite-regulator statements.

1. A restriction-induced regulator gives an exact finite-dimensional symplectic and Hamiltonian equivalence. This is proved below, but it is a control construction: its regional space already consists of restrictions of global modes and therefore already contains the gluing conditions.
2. Starting from the two regional Dirichlet coefficient spaces, imposing instantaneous continuity and continuum flux matching before varying the reduced action gives an exact $2N$-configuration Galerkin model. Its physical symplectic form is not the fixed-source product form; this produces a nontrivial Gram matrix and new reduced canonical coordinates.
3. Truncating the prescribed-history forced equations first and then imposing the instantaneous flux equation gives a different finite system. Equivalently, the honest $(2N+1)$-configuration truncation with an independent port value has a strictly positive residual port inertia $\rho_N$. It recovers the instantaneous flux equation only in the infinite-mode limit.

The first statement proves that a compatible finite regulator exists. The second constructs a nontrivial action-first regulator and isolates the exact fixed-source CCR obstruction. The third disproves the naive finite-$N$ identification of that regulator with the independently truncated retarded boundary-feedback equations. For the finite quantum test, `finite-quantum-comparison.md` chooses the second regulator and transports the product regional complex structure symplectically. That choice does not resolve the retarded or continuum comparison.

## 2. Global Spectral Regulator

Return to the centered interval $[-L,L]$ with physical Dirichlet endpoints. Let

$$
K=-\partial_x^2+m^2
$$

and let

$$
e_r(x)
=\frac{1}{\sqrt L}
\sin\left(\frac{r\pi(x+L)}{2L}\right),
\qquad
\Omega_r^2=m^2+\frac{r^2\pi^2}{4L^2},
\qquad
r\in\mathbb N^+.
$$

For a regional cutoff $N$, use the global comparison space

$$
V_N:=\operatorname{span}\{e_1,\ldots,e_{2N}\}.
$$

The regulated global phase space is

$$
\Gamma_{\mathrm g,N}:=V_N\oplus V_N,
$$

whose elements are Cauchy data $(\phi,\pi)$. Its symplectic form and Hamiltonian are

$$
\omega_{\mathrm g,N}
=\int_{-L}^{L}dx\,\delta\pi\wedge\delta\phi,
$$

and

$$
H_{\mathrm g,N}(\phi,\pi)
=\frac12
\left(
\|\pi\|_{L^2(-L,L)}^2
+\langle\phi,K\phi\rangle_{L^2(-L,L)}
\right).
$$

The dimension is

$$
\dim\Gamma_{\mathrm g,N}=4N.
$$

## 3. Restriction-Induced Control Regulator

Let

$$
\mathcal R_N:
V_N
\longrightarrow
L^2([-L,0])\oplus L^2([0,L])
$$

be spatial restriction, with the right component expressed in $y_2=L-x$ when comparing with the active regional conventions. Define

$$
W_N:=\operatorname{im}\mathcal R_N.
$$

The control regional phase space is

$$
\Gamma_{\mathrm{ctrl},N}:=W_N\oplus W_N.
$$

It is not the product of two independent regional Dirichlet spaces. A pair in $W_N$ is, by definition, the restriction of one global function and therefore already has the correlated interface jets inherited from that function.

### Theorem 3.1 — Exact Control Compatibility

The map

$$
S_N^{\mathrm{ctrl}}
:=\mathcal R_N\oplus\mathcal R_N:
\Gamma_{\mathrm g,N}
\longrightarrow
\Gamma_{\mathrm{ctrl},N}
$$

is a linear isomorphism onto its image and obeys

$$
\left(S_N^{\mathrm{ctrl}}\right)^*
\omega_{\mathrm{ctrl},N}
=\omega_{\mathrm g,N},
$$

where $\omega_{\mathrm{ctrl},N}$ is the sum of the two regional Cauchy forms. It also intertwines the quadratic Hamiltonians:

$$
H_{\mathrm{ctrl},N}\circ S_N^{\mathrm{ctrl}}
=H_{\mathrm g,N}.
$$

#### Proof

Restriction is injective on $V_N$, and $W_N$ is its image. Splitting the spatial integrals gives

$$
\|\phi\|_{L^2(-L,L)}^2
=
\|\phi_1\|_{L^2(-L,0)}^2
+\|\phi_2\|_{L^2(0,L)}^2,
$$

and the same identity for $\pi$. Applying it to the bilinear Cauchy form proves the symplectic statement. Applying it to $\pi$, $\partial_x\phi$, and $\phi$ proves the Hamiltonian statement. The coordinate reversal $y_2=L-x$ changes the sign of the first spatial derivative but not its squared norm. ∎

In canonical bases, Theorem 3.1 has the usual matrix form

$$
\left(S_N^{\mathrm{ctrl}}\right)^{\mathrm T}
J_{\mathrm{ctrl}}
S_N^{\mathrm{ctrl}}
=J_{\mathrm g}.
$$

If the basis of $W_N$ is transported directly from $\{e_r\}_{r=1}^{2N}$, this is merely a relabelling. If another orthonormal basis is used, the configuration-space change is an orthogonal matrix $O_N$ and the phase-space matrix is block diagonal with $O_N$ on the configuration and momentum blocks.

### Corollary 3.2 — Control Quantization

At every finite $N$, the control symplectic map has a metaplectic lift, unique up to the standard double-cover ambiguity. If the global complex structure is transported through $S_N^{\mathrm{ctrl}}$, the corresponding Bogoliubov $\boldsymbol\beta$ block vanishes.

This is not the desired comparison with the product regional Dirichlet Gaussian state. It only checks the normalization, dimension, and sign conventions of a regulator that glues by construction.

## 4. Independent Regional Source Space

For the active quantize-first construction, let

$$
U_{i,N}
:=
\operatorname{span}\left\{
u_{i,n}(y_i)
=\sqrt{\frac{2}{L}}\sin\frac{n\pi y_i}{L}
\;\middle|\;
1\leq n\leq N
\right\}.
$$

At the initial time, the independent regional Dirichlet data are

$$
z_{\mathrm D,N}
=
\left(
c_{1,1}^{(0)},\ldots,c_{1,N}^{(0)},
c_{2,1}^{(0)},\ldots,c_{2,N}^{(0)};
v_{1,1}^{(0)},\ldots,v_{1,N}^{(0)},
v_{2,1}^{(0)},\ldots,v_{2,N}^{(0)}
\right)^{\mathrm T}.
$$

Thus

$$
\Gamma_{\mathrm D,N}
\simeq\mathbb R^{4N},
\qquad
\omega_{\mathrm D,N}
=\sum_{i=1}^2\sum_{n=1}^N
\delta v_{i,n}^{(0)}\wedge\delta c_{i,n}^{(0)}.
$$

In the continuum target, the common history $q(t)$ is not an additional canonical coordinate: it is fixed by gluing. At finite $N$, however, the order of operations matters. Strongly imposing the continuum flux equation makes $q_N$ a linear functional of the regional data, whereas directly truncating the action with an independent $q_N$ gives a genuine $(2N+1)$-configuration port model. Its extra mode cannot be deleted without an explicit reduction or singular-limit prescription.

## 5. Boundary-Feedback Reconstruction Map

The required finite-dimensional construction is the following sequence:

$$
z_{\mathrm D,N}
\xrightarrow{\ \mathsf F_N\ }
\big(z_{\mathrm D,N},q_N[z_{\mathrm D,N}]\big)_{\mathrm{red}}
\xrightarrow{\ \mathsf E_N\ }
\big(\phi_{\mathrm{gl},N},\dot\phi_{\mathrm{gl},N}\big)
\xrightarrow{\ \mathsf P_N\ }
z_{\mathrm g,N}.
$$

Here:

1. $\mathsf F_N$ solves the truncated interface equation for the common history and retains the decoupled relative modes;
2. $\mathsf E_N$ reconstructs both regional fields and their common global field;
3. $\mathsf P_N$ projects the reconstructed Cauchy data onto the same $2N$ global modes used in Section 2.

Explicitly,

$$
Q_r
=\int_{-L}^{L}dx\,e_r(x)\phi_{\mathrm{gl},N}(t_i,x),
$$

and

$$
P_r
=\int_{-L}^{L}dx\,e_r(x)\dot\phi_{\mathrm{gl},N}(t_i,x),
\qquad
1\leq r\leq 2N.
$$

Because the problem is linear, the composite is a matrix:

$$
z_{\mathrm g,N}
=S_N z_{\mathrm D,N},
\qquad
S_N:=\mathsf P_N\mathsf E_N\mathsf F_N.
$$

Section 6 constructs this sequence for the strong-flux constrained Galerkin reduction on initial Cauchy data. Section 6.4 proves that the independently truncated retarded feedback equation does not produce the same $\mathsf F_N$ at finite $N$.

## 6. Explicit Strong-Flux Constrained Galerkin Reduction

Collect the regional configuration and velocity coefficients as

$$
\boldsymbol c
:=
\begin{pmatrix}\boldsymbol c_1\\ \boldsymbol c_2\end{pmatrix},
\qquad
\boldsymbol v
:=
\begin{pmatrix}\boldsymbol v_1\\ \boldsymbol v_2\end{pmatrix}
\in\mathbb R^{2N}.
$$

Define

$$
k_n:=\frac{n\pi}{L},
\qquad
A_n:=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi},
\qquad
g_n:=A_nk_n^2,
$$

and the repeated vectors

$$
\boldsymbol b
:=
\frac{L}{2}
\begin{pmatrix}\boldsymbol g\\ \boldsymbol g\end{pmatrix},
\qquad
\boldsymbol d
:=
\begin{pmatrix}\boldsymbol A\\ \boldsymbol A\end{pmatrix}.
$$

At the initial Cauchy surface,

$$
\phi_i(y_i)
=\sum_{n=1}^Nc_{i,n}u_n(y_i)+\frac{y_i}{L}q_N.
$$

Using

$$
u_n'(L)=-A_nk_n^2=-g_n,
$$

the finite flux equation is

$$
0=f_1+f_2
=\frac{2q_N}{L}
-\boldsymbol g^{\mathrm T}
\left(\boldsymbol c_1+\boldsymbol c_2\right).
$$

Therefore

$$
q_N=\boldsymbol b^{\mathrm T}\boldsymbol c.
$$

Differentiating the same constraint gives

$$
\dot q_N=\boldsymbol b^{\mathrm T}\boldsymbol v.
$$

This imposes the continuum flux constraint strongly and removes the boundary value without introducing an independent canonical pair. The operation is a definition of this regulator; Section 6.4 shows that it is not obtained by naively truncating the independent-port equations first.

Let

$$
h(y):=\frac{y}{L},
\qquad
h_2:=\int_0^Ldy\,h(y)^2=\frac{L}{3}.
$$

The reconstructed field defines an injective linear map

$$
\mathsf A_N:\mathbb R^{2N}\longrightarrow
H^2([-L,L])\cap H_0^1([-L,L]),
\qquad
\boldsymbol c\longmapsto\phi_{\mathrm{gl},N}.
$$

Its image

$$
W_{\mathrm{fb},N}:=\operatorname{im}\mathsf A_N
$$

is a $2N$-dimensional global Galerkin configuration space. Every element is continuous and has matching global first derivative at the cut.

### Theorem 6.1 — Reduced Symplectic and Hamiltonian Matrices

The pullback of the global $L^2$ metric to the regional coefficient space is the positive-definite Gram matrix

$$
M_N
=
\mathbf 1
+\boldsymbol b\boldsymbol d^{\mathrm T}
+\boldsymbol d\boldsymbol b^{\mathrm T}
+2h_2\boldsymbol b\boldsymbol b^{\mathrm T}.
$$

Consequently, the physical reduced Cauchy form is

$$
\omega_{\mathrm{red},N}
=
\delta\boldsymbol v^{\mathrm T}
M_N\wedge\delta\boldsymbol c.
$$

The shorthand means

$$
\delta\boldsymbol v^{\mathrm T}
M_N\wedge\delta\boldsymbol c
:=
\sum_{A,B=1}^{2N}
(M_N)_{AB}\,\delta v_A\wedge\delta c_B.
$$

It is not, in general,

$$
\delta\boldsymbol v^{\mathrm T}\wedge\delta\boldsymbol c.
$$

Let

$$
D_N
:=
\operatorname{diag}
\left(
\omega_1^2,\ldots,\omega_N^2,
\omega_1^2,\ldots,\omega_N^2
\right),
\qquad
\omega_n^2=k_n^2+m^2.
$$

The pulled-back stiffness matrix is

$$
K_N
=
D_N
+m^2
\left(
\boldsymbol b\boldsymbol d^{\mathrm T}
+\boldsymbol d\boldsymbol b^{\mathrm T}
\right)
+2\left(\frac{m^2L}{3}+\frac1L\right)
\boldsymbol b\boldsymbol b^{\mathrm T}.
$$

The exact strong-flux constrained reduced Hamiltonian is

$$
H_{\mathrm{red},N}
=
\frac12
\left(
\boldsymbol v^{\mathrm T}M_N\boldsymbol v
+\boldsymbol c^{\mathrm T}K_N\boldsymbol c
\right).
$$

#### Proof

For each region,

$$
\left\|
\sum_{n=1}^Nc_{i,n}u_n+hq_N
\right\|_{L^2(0,L)}^2
=
\boldsymbol c_i^{\mathrm T}\boldsymbol c_i
+2q_N\boldsymbol A^{\mathrm T}\boldsymbol c_i
+h_2q_N^2.
$$

Summing the two regions and substituting $q_N=\boldsymbol b^{\mathrm T}\boldsymbol c$ gives $M_N$. It is positive definite because it is the Gram matrix of the injective reconstruction map $\mathsf A_N$.

For the gradient term,

$$
\int_0^Ldy\,u_n'u_m'=k_n^2\delta_{nm},
\qquad
\int_0^Ldy\,u_n'h'=0,
\qquad
\int_0^Ldy\,(h')^2=\frac1L.
$$

Adding the mass term and substituting $q_N$ gives $K_N$. Positivity follows from the positive global energy quadratic form restricted to $W_{\mathrm{fb},N}$. The same Gram calculation with the velocity field gives the stated Cauchy form and kinetic energy. ∎

### Corollary 6.2 — Explicit Reduced Canonical Coordinates

Let $M_N^{1/2}$ be the positive square root and define

$$
\boldsymbol Q
:=M_N^{1/2}\boldsymbol c,
\qquad
\boldsymbol P
:=M_N^{1/2}\boldsymbol v.
$$

Then

$$
\omega_{\mathrm{red},N}
=
\delta\boldsymbol P^{\mathrm T}
\wedge\delta\boldsymbol Q,
$$

and

$$
H_{\mathrm{red},N}
=
\frac12
\left(
\boldsymbol P^{\mathrm T}\boldsymbol P
+\boldsymbol Q^{\mathrm T}
\mathcal K_N\boldsymbol Q
\right),
$$

where

$$
\mathcal K_N
:=
M_N^{-1/2}K_NM_N^{-1/2}.
$$

Choose an orthogonal matrix $O_N$ satisfying

$$
O_N^{\mathrm T}\mathcal K_NO_N
=
\operatorname{diag}
\left(
\widetilde\Omega_{1,N}^2,\ldots,
\widetilde\Omega_{2N,N}^2
\right).
$$

The global normal coordinates on the same Galerkin regulator are

$$
\boldsymbol{\mathsf Q}=O_N^{\mathrm T}\boldsymbol Q,
\qquad
\boldsymbol{\mathsf P}=O_N^{\mathrm T}\boldsymbol P.
$$

Thus the explicit matrix from the noncanonical regional coefficients to global normal coordinates is

$$
S_N^{\mathrm{red}}
=
\begin{pmatrix}
O_N^{\mathrm T}M_N^{1/2}&0\\
0&O_N^{\mathrm T}M_N^{1/2}
\end{pmatrix}.
$$

If $J_{M_N}$ represents $\omega_{\mathrm{red},N}$ in $(\boldsymbol c,\boldsymbol v)$ and $J_0$ represents the canonical form in $(\boldsymbol{\mathsf Q},\boldsymbol{\mathsf P})$, then

$$
\left(S_N^{\mathrm{red}}\right)^{\mathrm T}
J_0S_N^{\mathrm{red}}
=J_{M_N}.
$$

Equivalently, the matrix $\operatorname{diag}(O_N^{\mathrm T},O_N^{\mathrm T})$ is symplectic from the reduced canonical coordinates $(\boldsymbol Q,\boldsymbol P)$ to the global normal coordinates.

### Corollary 6.3 — Exact Relative Sector

For

$$
\boldsymbol c
=
\begin{pmatrix}\boldsymbol x\\-\boldsymbol x\end{pmatrix},
$$

one has

$$
\boldsymbol b^{\mathrm T}\boldsymbol c
=
\boldsymbol d^{\mathrm T}\boldsymbol c
=0.
$$

Therefore $q_N=0$, $M_N$ acts as the identity, and $K_N$ acts diagonally with eigenvalues

$$
\omega_n^2=m^2+\frac{n^2\pi^2}{L^2}.
$$

These are exactly the even modes of the uncut interval. The common sector supplies the affected odd tower.

### The Fixed-Source CCR Obstruction

Let $J_{\mathrm D}$ be the product fixed-source form in $(\boldsymbol c,\boldsymbol v)$. The physical reconstructed form is $J_{M_N}$, and

$$
J_{M_N}-J_{\mathrm D}
=
\begin{pmatrix}
0&-(M_N-\mathbf 1)\\
M_N-\mathbf 1&0
\end{pmatrix}.
$$

This residual is generically nonzero. Hence the fixed-source brackets of the independent regional fibers do not remain the physical reduced brackets after $q_N$ is made data-dependent. Canonical quantization must use $(\boldsymbol Q,\boldsymbol P)$ or an equivalent Dirac/reduced bracket. Simply retaining the old brackets and promoting $q_N$ to an operator is not a symplectic construction.

### Finite Numerical Evidence

The accompanying `finite_regulator_feedback_checks.wl` uses $L=m=1$. It verifies the matrix formulas by direct integration, symmetry and positive definiteness of $M_N$ and $K_N$, the canonicalization identity, and the exact relative tower for $N=1,2,4,8,16$. For the first six global squared frequencies, the maximum absolute error is:

| $N$ | maximum error in the first six $\widetilde\Omega_{r,N}^2$ |
|---:|---:|
| 4 | $2.0878607599$ |
| 8 | $0.3253565410$ |
| 16 | $0.0457755185$ |
| 32 | $0.0060471160$ |
| 64 | $0.0007756615$ |

This is fixed-window numerical convergence, not a proof of spectral convergence or a statement about the top of the truncated spectrum.

### Theorem 6.4 — Finite Truncation and Flux Reduction Do Not Commute

Keep $q_N$ independent while truncating only the two regional Dirichlet expansions. The directly truncated Lagrangian is

$$
\begin{aligned}
L_{\mathrm{port},N}
={}&\frac12\dot{\boldsymbol c}^{\mathrm T}\dot{\boldsymbol c}
+\dot q_N\boldsymbol d^{\mathrm T}\dot{\boldsymbol c}
+h_2\dot q_N^2
-\frac12\boldsymbol c^{\mathrm T}D_N\boldsymbol c
\\
&-m^2q_N\boldsymbol d^{\mathrm T}\boldsymbol c
-\left(\frac1L+m^2h_2\right)q_N^2.
\end{aligned}
$$

In the configuration vector $(\boldsymbol c,q_N)$, its symmetric mass and stiffness matrices are

$$
M_{\mathrm{port},N}
=
\begin{pmatrix}
\mathbf 1&\boldsymbol d\\
\boldsymbol d^{\mathrm T}&2h_2
\end{pmatrix},
$$

and

$$
K_{\mathrm{port},N}
=
\begin{pmatrix}
D_N&m^2\boldsymbol d\\
m^2\boldsymbol d^{\mathrm T}&2(L^{-1}+m^2h_2)
\end{pmatrix}.
$$

The regional coefficient equations are the expected prescribed-history forced equations,

$$
\ddot{\boldsymbol c}
+D_N\boldsymbol c
+\boldsymbol d(\ddot q_N+m^2q_N)
=0.
$$

The $q_N$ Euler--Lagrange equation, after using those coefficient equations, is

$$
\frac{2q_N}{L}
-\boldsymbol g^{\mathrm T}(\boldsymbol c_1+\boldsymbol c_2)
+\rho_N(\ddot q_N+m^2q_N)
=0,
$$

where

$$
\begin{aligned}
\rho_N
&:=2h_2-\boldsymbol d^{\mathrm T}\boldsymbol d
\\
&=2\left(
\frac L3-\sum_{n=1}^NA_n^2
\right)
\\
&=\frac{2L}{3}
-\frac{4L}{\pi^2}\sum_{n=1}^N\frac1{n^2}
>0.
\end{aligned}
$$

The strict inequality follows because the finite partial sum is smaller than
$\sum_{n\geq1}n^{-2}=\pi^2/6$. Hence $M_{\mathrm{port},N}$ is positive definite: its Schur complement over the identity block is precisely $\rho_N$. Moreover $\rho_N\to0$, so the port Euler--Lagrange equation tends formally to the continuum instantaneous flux equation, but it is not that equation at any finite $N$.

#### Proof

The displayed Lagrangian follows by inserting

$$
\phi_i
=\sum_{n=1}^Nc_{i,n}u_n+hq_N
$$

into the two regional actions and using

$$
\langle u_n,u_m\rangle=\delta_{nm},
\qquad
\langle h,u_n\rangle=A_n,
\qquad
\langle h,h\rangle=h_2,
\qquad
\langle h',u_n'\rangle=0.
$$

The $q_N$ equation before substituting the regional equations is

$$
\boldsymbol d^{\mathrm T}(\ddot{\boldsymbol c}+m^2\boldsymbol c)
+2h_2(\ddot q_N+m^2q_N)
+\frac{2q_N}{L}
=0.
$$

Since $\boldsymbol d^{\mathrm T}(D_N-m^2\mathbf1)\boldsymbol c
=\boldsymbol g^{\mathrm T}(\boldsymbol c_1+\boldsymbol c_2)$, substitution gives the stated residual equation. The formula for $\rho_N$ follows from $A_n^2=2L/(n^2\pi^2)$. ∎

### Corollary 6.5 — The Naive Retarded Strong-Flux System Is Different

If one instead truncates the prescribed-history coefficient equations and then imposes the continuum flux relation

$$
q_N=\boldsymbol b^{\mathrm T}\boldsymbol c,
$$

the resulting equations are

$$
M_{\mathrm{ret},N}\ddot{\boldsymbol c}
+K_{\mathrm{ret},N}\boldsymbol c=0,
$$

with

$$
M_{\mathrm{ret},N}
=\mathbf1+\boldsymbol d\boldsymbol b^{\mathrm T},
\qquad
K_{\mathrm{ret},N}
=D_N+m^2\boldsymbol d\boldsymbol b^{\mathrm T}.
$$

These are not the matrices $M_N,K_N$ of Theorem 6.1. For $N\geq2$, they are also generically nonsymmetric in the product coefficient pairing because $\boldsymbol b$ and $\boldsymbol d$ are not proportional. This observation does not rule out every possible symmetrizer or Hamiltonian presentation of the retarded finite system; it proves only that the fixed-source pairing and the strong-flux constrained action of Theorem 6.1 do not supply it.

The relative vectors $(\boldsymbol x,-\boldsymbol x)$ remain exact in both systems. The discrepancy is confined to the common sector, where the missing $\rho_N$ term records the failure of truncation and continuum flux reduction to commute.

For $L=m=1$, the maximum-entry residual

$$
\left\|
M_N^{-1}K_N
-M_{\mathrm{ret},N}^{-1}K_{\mathrm{ret},N}
\right\|_{\max}
$$

is nonzero in every tested case:

| $N$ | evolution-matrix residual |
|---:|---:|
| 1 | $0.3664587838$ |
| 2 | $1.8956835209$ |
| 4 | $14.7305199933$ |
| 8 | $70.9697709705$ |
| 16 | $302.6009248779$ |

The growth of this full-matrix residual is an ultraviolet statement and does not by itself preclude convergence on fixed low-frequency windows. In fact, for the first six squared frequencies, the tested retarded errors decrease from $6.4327$ at $N=4$ to $0.3895$ at $N=64$, whereas the constrained-action errors decrease from $2.0879$ to $0.0007757$. These data show two different finite regulators with apparent fixed-window improvement; they do not prove a common continuum limit.

## 7. Classical Acceptance Conditions

Let $J_{\mathrm{red}}$ and $J_{\mathrm g}$ represent the physical reduced and global forms. In the canonical coordinates $(\boldsymbol Q,\boldsymbol P)$, $J_{\mathrm{red}}=J_0$. In the noncanonical coefficients $(\boldsymbol c,\boldsymbol v)$, one must instead use $J_{\mathrm{red}}=J_{M_N}$. It is incorrect to substitute the fixed-source product matrix $J_{\mathrm D}$ at this stage.

The acceptance test must first declare whether it uses the restriction control, the strong-flux constrained action, the independent-port action, or a new regulator. Matrices from different choices cannot be combined in one commuting square. Both canonical matrices use the convention

$$
\omega=\sum_A\delta P_A\wedge\delta Q_A
$$

when expressed in canonical coordinates. The nontrivial finite-regulator construction passes only if all of the following hold.

### 7.1 Dimension and Rank

The source and target both have dimension $4N$, and

$$
\operatorname{rank}S_N=4N.
$$

An independent-port regulator has dimension $4N+2$, not $4N$. To compare it with the physical $4N$-dimensional target, one must derive a symplectic reduction, controlled singular limit, or other explicit map. Deleting one normal mode by hand is not such a construction.

### 7.2 Symplectic Identity

The decisive residual is

$$
\Delta_{\omega,N}
:=
S_N^{\mathrm T}J_{\mathrm g}S_N-J_{\mathrm{red}}.
$$

The required result is

$$
\Delta_{\omega,N}=0.
$$

Recovered frequencies or a formally invertible Bogoliubov expression do not imply this identity.

### 7.3 Hamiltonian Identity

Write

$$
H_{\mathrm g,N}
=\frac12z_{\mathrm g,N}^{\mathrm T}G_{\mathrm g,N}z_{\mathrm g,N}.
$$

The Hamiltonian induced on the independent regional initial data is

$$
G_{\mathrm{pull},N}
:=
S_N^{\mathrm T}G_{\mathrm g,N}S_N.
$$

If a reduced Hamiltonian matrix $G_{\mathrm{red},N}$ is derived independently from the feedback dynamics using the same regulator, the required residual is

$$
\Delta_{H,N}
:=
G_{\mathrm{red},N}-G_{\mathrm{pull},N}=0.
$$

The sum of the two reference Dirichlet oscillator Hamiltonians need not equal $G_{\mathrm{red},N}$: a nonconstant boundary history drives the regional systems, and the physical glued Hamiltonian is obtained only after feedback and reconstruction.

### 7.4 Evolution Intertwining

Let $A_{\mathrm D,N}$ and $A_{\mathrm g,N}$ be the Hamiltonian evolution matrices obtained with the declared symplectic convention. Then

$$
\Delta_{\mathrm{evol},N}
:=
A_{\mathrm g,N}S_N-S_NA_{\mathrm D,N}
$$

must vanish. This is an independent diagnostic when the reduced equations have been derived directly. Corollary 6.5 shows that this test fails when $S_N^{\mathrm{red}}$ from the constrained action is paired with the naively truncated retarded evolution.

### 7.5 Regulator Coherence

The same cutoff, inner product, outer boundary conditions, and mode normalization must be used on both sides. At finite $N$, record separately:

- dependence on the artificial cut position;
- dependence on the lifting function used to extend $q_N$ into each region;
- treatment of regional pole modes and the $q=0$ relative sector;
- the rank and spectrum of any port formulation before reduction.

## 8. Canonical Quantization Conditions

If $S_N$ is a real symplectic isomorphism for one declared finite regulator, finite-dimensional CCR uniqueness provides a unitary implementation. Choosing a metaplectic lift gives an operator $U_N$ defined up to the double-cover sign and any separately chosen overall phase. Theorem 6.4 prevents using the retarded evolution from one regulator and the symplectic form from another without a comparison theorem.

Let the annihilation operators associated with the independent regional reference Gaussian state be collected in $b$, and the global annihilation operators in $a$. The induced Bogoliubov transformation has the form

$$
a
=\boldsymbol\alpha_N b
+\boldsymbol\beta_N b^\dagger.
$$

The finite-$N$ checks are

$$
\boldsymbol\alpha_N\boldsymbol\alpha_N^\dagger
-\boldsymbol\beta_N\boldsymbol\beta_N^\dagger
=\mathbf 1,
$$

and

$$
\boldsymbol\alpha_N\boldsymbol\beta_N^{\mathrm T}
=
\boldsymbol\beta_N\boldsymbol\alpha_N^{\mathrm T}.
$$

For

$$
\boldsymbol Z_N
:=
\boldsymbol\alpha_N^{-1}\boldsymbol\beta_N,
$$

one must verify

$$
\boldsymbol Z_N^{\mathrm T}=\boldsymbol Z_N,
\qquad
\mathbf 1-\boldsymbol Z_N\boldsymbol Z_N^\dagger>0,
$$

the annihilation equations for the squeezed state, its determinant normalization, and equality of its covariance matrix with the covariance obtained directly from $G_{\mathrm g,N}$.

These conditions compare the global vacuum with the regional reference Gaussian representation. They do not turn that reference state into a stationary vacuum for a nonconstant prescribed history. They are carried out for the strong-flux constrained regulator and the declared positive-square-root reference transport in `finite-quantum-comparison.md`.

## 9. Commuting Diagrams

The classical target is

$$
\begin{array}{ccc}
\Gamma_{\mathrm D,N}
&\xrightarrow{\ \mathsf F_N\ }&
\Gamma_{\mathrm{red},N}
\\[2mm]
&\searrow{\scriptstyle S_N}&
\downarrow{\scriptstyle\mathsf R_N}
\\[2mm]
&&
\Gamma_{\mathrm g,N},
\end{array}
$$

where $\mathsf R_N$ is reconstruction followed by global projection. The triangle must commute as a map on Cauchy data and preserve the symplectic and Hamiltonian structures.

After the classical checks, the quantum target is

$$
\begin{array}{ccc}
\mathcal H_{\mathrm D,N}
&\xrightarrow{\ \widehat{\mathsf F}_N\ }&
\mathcal H_{\mathrm{red},N}
\\[2mm]
&\searrow{\scriptstyle U_N}&
\downarrow{\scriptstyle\widehat{\mathsf R}_N}
\\[2mm]
&&
\mathcal H_{\mathrm g,N}.
\end{array}
$$

This diagram is not evidence for itself. Its arrows exist only after the corresponding classical reduction and symplectic map have been constructed.

## 10. Associativity at Finite Regulator

For a three-region cut, construct both composites using the same global regulator:

$$
S_{(12)3,N},
\qquad
S_{1(23),N}.
$$

After a declared canonical relabelling $C_N$ of the source variables, the classical associativity residual is

$$
\Delta_{\mathrm{assoc},N}
:=
S_{(12)3,N}-S_{1(23),N}C_N.
$$

The target is $\Delta_{\mathrm{assoc},N}=0$. If the metaplectic lifts exist, their compositions may differ by the sign or phase associated with the lift:

$$
U_{(12)3,N}
=e^{i\mu_N}U_{1(23),N}\widehat C_N.
$$

The phase $\mu_N$ must be recorded as coherence data. It is not fixed by classical associativity alone.

## 11. Continuum Handoff

Finite-$N$ equivalence is only the input to the continuum question. The relevant sequence of tests is:

1. fixed-window convergence of $S_N$ and the global projections;
2. large-mode asymptotics of $\boldsymbol\beta_N$;
3. the Shale--Stinespring Hilbert--Schmidt test;
4. convergence or divergence of particle number, energy, vacuum overlap, and interface traces;
5. an algebraic observable comparison if the Fock implementer does not converge.

No continuum claim is part of Theorem 3.1.

## 12. Verification Boundary

### Verified

- the restriction-induced control regulator has the correct dimension;
- its restriction/reconstruction map preserves the finite Cauchy form and quadratic Hamiltonian;
- it has a finite-dimensional metaplectic lift after transporting the global complex structure;
- its trivial Bogoliubov $\boldsymbol\beta$ block does not test the independent regional Dirichlet representation.
- the strong-flux constrained action removes $q_N$ and $\dot q_N$ without an additional canonical pair;
- the reduced Gram and stiffness matrices $M_N$ and $K_N$;
- positive-definite reduced canonical coordinates and the explicit matrix $S_N^{\mathrm{red}}$ to global normal coordinates on the same Galerkin space;
- exact recovery of the $N$ relative-sector frequencies;
- the independent-port truncated mass and stiffness matrices and the exact positive residual inertia $\rho_N$;
- the finite-$N$ discrepancy between the strong-flux constrained equations and the naively truncated retarded strong-flux equations;
- fixed-window numerical error decrease for the first six squared frequencies of both finite systems in the tested sequence $N=4,8,16,32,64$ at $L=m=1$.
- the fixed-$N$ metaplectic and squeezed-Gaussian comparison for the constrained regulator, after the explicit reference transport declared in `finite-quantum-comparison.md`.

### Assumptions

- the global regulator uses the first $2N$ normalized Dirichlet modes;
- the control regional space is the image of their restrictions;
- all finite-dimensional source and target bases use the same symplectic convention.

### Not Verified

- a variational $4N$-dimensional regulator that is proved to approximate the full retarded boundary-feedback construction and is canonically comparable with the chosen global regulator;
- a proof that either tested fixed-window sequence converges spectrally or that the two sequences have the same continuum limit;
- a symplectic reduction or singular-limit theorem that removes the independent-port mode without discarding it by hand;
- uniqueness or continuum convergence of the chosen symplectic transport of the product regional Gaussian;
- finite-regulator lifting-function independence, off-center-cut independence, or associativity phase;
- any continuum convergence or Fock-space equivalence.

The naive discrepancy is now exhibited, and the constrained-action branch now has a complete fixed-$N$ Gaussian comparison for one declared reference transport. The next calculation must either connect that regulator and transport to a controlled continuum construction, construct a variational reduced retarded regulator, or prove a controlled elimination of the finite port sector. Repeating the control theorem in another basis would not advance the project-specific target.
