# Homework Problems for *Differential Geometry and Topology in Physics* (First Half)

## 1 Topological Spaces and Manifolds

### 1.1

Let $X$ be a metric space and $d: X \times X \to \mathbb{R}$ the corresponding distance function. Determine whether the two functions $d_1(x,y)$ and $d_2(x,y)$ defined below satisfy the axioms of a distance function:

$$
d_1(x,y) := \frac{d(x,y)}{1 + d(x,y)}, \qquad
d_2(x,y) := \begin{cases}
d(x,y), & \text{if } d(x,y) \le 1, \\
1, & \text{if } d(x,y) > 1.
\end{cases}
$$

### 1.2

Let $X$ be an arbitrary set of points, and let the complement of a subset $A_j \subseteq X$ be defined as $A_j^c := X \setminus A_j$, where $j$ is a member of some index set $J$. Prove the following de Morgan formulas:

$$\begin{align}
\left( \bigcap_{j \in J} A_j \right)^c = \bigcup_{j \in J} A_j^c,
\qquad
\left( \bigcup_{j \in J} A_j \right)^c = \bigcap_{j \in J} A_j^c.
\end{align}$$

### 1.3

An equivalence relation "$\sim$" among mathematical objects $A, B, C, \dots$ is a binary relation satisfying the following conditions:

1. Reflexivity: $A \sim A$;
1. Symmetry: If $A \sim B$, then $B \sim A$;
1. Transitivity: If $A \sim B$ and $B \sim C$, then $A \sim C$.

Prove that the homeomorphism relation between topological spaces is an equivalence relation.

### 1.4

Let $\operatorname{Id}_X: X \to X$ be the identity map, i.e., $\forall x \in X, \operatorname{Id}_X(x) = x$. We may specify a collection of open sets $\tau = \{U, U', U'', \dots\}$ on $X$, making it a topological space, and denote this space by $X_\tau$ to emphasize that the topology on $X$ is defined by $\tau$. Now let $\tau_1, \tau_2$ be two different topologies on $X$ defined by two different collections of open sets. Prove that

$$\begin{align}
\operatorname{Id}_X: X_{\tau_1} \to X_{\tau_2}
\end{align}$$

is a continuous map if and only if the topology determined by $\tau_1$ is no weaker than the topology determined by $\tau_2$.

### 1.5

Let $X, Y$ be topological spaces. Prove that a map $f: X \to Y$ is continuous if and only if the preimage $f^{-1}(A)$ of every closed subset $A$ of $Y$ is a closed subset of $X$.

### 1.6

Let the set $X$ be an infinite set. Determine which of the following families of subsets $\tau_1, \tau_2, \tau_3$ form a topology on $X$, and explain your reasoning:

$$\begin{align}
\tau_1 = \{ U \subset X \mid U^c \text{ is a finite set or } X \text{ itself} \},
\end{align}$$

$$\begin{align}
\tau_2 = \{ U \subset X \mid U^c \text{ is an infinite set or the empty set} \},
\end{align}$$

$$\begin{align}
\tau_3 = \{ U \subset X \mid U^c \text{ is a countable set or } X \text{ itself} \}.
\end{align}$$

### 1.7

In Euclidean space $\mathbb{R}^n$, a norm is defined by

$$\begin{align}
\|x\| := \sqrt{(x^1)^2 + \cdots + (x^n)^2}, \qquad
\forall x = (x^1, \dots, x^n) \in \mathbb{R}^n.
\end{align}$$

For any two points $x, y \in \mathbb{R}^n$, prove the Cauchy inequality

$$\begin{align}
\left( \sum_{j=1}^n x^j y^j \right)^2
\le
\left( \sum_{j=1}^n (x^j)^2 \right)
\left( \sum_{j=1}^n (y^j)^2 \right)
\end{align}$$

and the Minkowski inequality

$$\begin{align}
\|x + y\| \le \|x\| + \|y\|,
\end{align}$$

and prove that the function $d(x,y) := \|x - y\|$ induced by the norm $\|\cdot\|$ satisfies the three axioms of a metric.

### 1.8

Let the metric topology on the set of real numbers $\mathbb{R}$ be defined by the Euclidean distance $d(x,y) = |x - y|$. Under this topology, discuss the interior $\mathring{\mathbb{Q}}$, the closure $\overline{\mathbb{Q}}$, and the boundary $\partial\mathbb{Q}$ of the subset of rational numbers $\mathbb{Q} \subset \mathbb{R}$.

### 1.9

Prove that the unit open ball in the metric space $\mathbb{R}^n$,

$$\begin{align}
B^n := \{ x \in \mathbb{R}^n \mid \|x\| < 1 \},
\end{align}$$

is homeomorphic to $\mathbb{R}^n$.

### 1.10

Let the topological space $X$ be a Hausdorff space, and let $f: X \to X$ be a continuous self-map. Prove that the fixed-point set of this map,

$$\begin{align}
\mathcal{F}(f) := \{ x \in X \mid f(x) = x \},
\end{align}$$

is a closed subset of $X$.

Hint: It suffices to prove that the complement of the fixed-point set $\mathcal{F}(f)^c$ is open. Take any $x \in \mathcal{F}(f)^c$. Since $x \neq f(x)$ and $X$ is a Hausdorff space, by the separability property there exist an open neighborhood $U$ of $x$ and an open neighborhood $V$ of $f(x)$ such that $U \cap V = \varnothing$. Since the self-map $f: X \to X$ is continuous, the preimage $f^{-1}(V)$ of the open set $V$ is also an open set of $X$; hence the intersection $W := U \cap f^{-1}(V)$ is an open set. Further, you need to show that $W$ is a neighborhood of $x$ and that $W \subset \mathcal{F}(f)^c$.

### 1.11

Let

$$\begin{align}
S^{n-1} := \{ (x^1, \dots, x^n) \in \mathbb{R}^n \mid (x^1)^2 + \cdots + (x^n)^2 = 1 \}
\end{align}$$

be the unit sphere. Using the north pole and the south pole as reference points respectively, construct the stereographic projection from $S^{n-1}$ to the hyperplane

$$\begin{align}
\mathbb{R}^{n-1} := \{ (x^1, \dots, x^n) \in \mathbb{R}^n \mid x^n = 0 \}.
\end{align}$$

### 1.12

Using the result of the preceding problem, prove that $S^n$ is an $n$-dimensional differentiable manifold.

## 2 Lie Groups, Calculus on Manifolds

### 2.1

Explain, according to the definition, that any open set in $\mathbb{R}^N$ is a (trivial) differentiable manifold. Verify that the general linear group $GL(n,\mathbb{R})$ forms an open set in $\mathbb{R}^{n^2}$, and thereby further argue that $GL(n,\mathbb{R})$ is a Lie group.

### 2.2

Let $0 \le \theta < 2\pi$, and let $\mathbf{n}$ be an arbitrary unit vector in $\mathbb{R}^3$ ($\mathbf{n} \cdot \mathbf{n} = 1$). Denote by $I_k$ the $k \times k$ identity matrix, and let $\boldsymbol{\sigma} = (\sigma_1, \sigma_2, \sigma_3)$ denote the three Pauli matrices. Derive the following formula:

$$\begin{align}
e^{i\theta(\mathbf{n} \cdot \boldsymbol{\sigma})} = I_2 \cos\theta + i(\mathbf{n} \cdot \boldsymbol{\sigma}) \sin\theta.
\end{align}$$

### 2.3

Let an $(n+1) \times (n+1)$ matrix $A$ be expressible in block form as

$$
A = \begin{pmatrix} B & \mathbf{b} \\ 0^T & 0 \end{pmatrix},
$$

where $B$ is an $n \times n$ matrix, $\mathbf{b} \in \mathbb{R}^n$ is an $n$-dimensional column vector, and $0^T = (0, \dots, 0)$. Prove that

$$
e^A = \begin{pmatrix} e^B & C \cdot \mathbf{b} \\ 0^T & 1 \end{pmatrix},
\qquad
C := I_n + \sum_{j=1}^{\infty} \frac{B^j}{(j+1)!}.
$$

### 2.4

The Grassmannian manifold $G_{k,n}(\mathbb{R})$ consisting of all $k$-dimensional linear subspaces in $\mathbb{R}^n$ can be written as a coset space of the orthogonal group,

$$\begin{align}
G_{k,n}(\mathbb{R}) = O(n) / O(k) \times O(n-k).
\end{align}$$

Explain this.

### 2.5

Prove that the following maps $f$ between differentiable manifolds are smooth:

1. $f: S^1 = \{ z \in \mathbb{C} \mid |z| = 1 \} \to S^1, \quad z \mapsto f(z) = z^n \quad (n \in \mathbb{Z})$;
1. $f: S^n = \{ \mathbf{x} \in \mathbb{R}^{n+1} \mid \|\mathbf{x}\| = 1 \} \to S^n, \quad \mathbf{x} \mapsto f(\mathbf{x}) = -\mathbf{x}$;
1. $f: S^3 = \{ (w,z) \in \mathbb{C}^2 \mid |w|^2 + |z|^2 = 1 \} \to S^2 = \{ (x_1, x_2, x_3) \in \mathbb{R}^3 \mid x_1^2 + x_2^2 + x_3^2 = 1 \}$,

$$\begin{align}
(w,z) \mapsto f(w,z) = \bigl( 2\operatorname{Re}(z \bar{w}), \; 2\operatorname{Im}(z \bar{w}), \; |z|^2 - |w|^2 \bigr).
\end{align}$$

### 2.6

Consider the tangent spaces $T_p M$ on a differentiable manifold $M$. The union of these tangent spaces,

$$\begin{align}
\bigcup_{p \in M} T_p M,
\end{align}$$

forms a vector bundle over $M$. Explain why. (Note: This vector bundle is called the tangent bundle of $M$, often denoted by $TM$.)

### 2.7

Let $M$ be a differentiable manifold, $X = X^\mu \partial / \partial x^\mu \in \mathfrak{X}(M)$ a smooth vector field on $M$, and

$$\begin{align}
t = t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
\frac{\partial}{\partial x^{\mu_1}} \otimes \cdots \otimes
\frac{\partial}{\partial x^{\mu_m}} \otimes
dx^{\nu_1} \otimes \cdots \otimes dx^{\nu_n}
\in \mathcal{T}(M)^m_n
\end{align}$$

a smooth $(m,n)$-type tensor field on $M$. Prove that the Lie derivative of this tensor field,

$$\begin{align}
\mathcal{L}_X t = (\mathcal{L}_X t)^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
\frac{\partial}{\partial x^{\mu_1}} \otimes \cdots \otimes
\frac{\partial}{\partial x^{\mu_m}} \otimes
dx^{\nu_1} \otimes \cdots \otimes dx^{\nu_n},
\end{align}$$

has the component coefficients

$$\begin{align}
(\mathcal{L}_X t)^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
= X^\lambda \partial_\lambda t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
+ \sum_{j=1}^{n} \partial_{\nu_j} X^\lambda
\, t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_{j-1} \lambda \nu_{j+1} \cdots \nu_n}
- \sum_{k=1}^{m} \partial_\lambda X^{\mu_k}
\, t^{\mu_1 \cdots \mu_{k-1} \lambda \mu_{k+1} \cdots \mu_m}_{\nu_1 \cdots \nu_n}.
\end{align}$$

Here $\partial_\lambda$ is the abbreviated notation for the partial differential operator $\partial / \partial x^\lambda$.

### 2.8

Let $M$ be a differentiable manifold. For all $f \in \mathcal{F}(M)$ and $X, Y \in \mathfrak{X}(M)$, derive the following identities:

$$\begin{align}
\mathcal{L}_{fX} Y = f \mathcal{L}_X Y - Y[f] X,
\qquad
\mathcal{L}_X (fY) = f \mathcal{L}_X Y + X[f] Y.
\end{align}$$

### 2.9

Let $M, N$ be differentiable manifolds, $X, Y \in \mathfrak{X}(M)$, and $f: M \to N$ a smooth map. Prove that

$$\begin{align}
f_* [X, Y] = [f_* X, f_* Y].
\end{align}$$

### 2.10

Let $M, N$ be differentiable manifolds and $f: M \to N$ a smooth map. For any differential forms $\omega, \xi \in \Omega^*(N)$ on $N$, prove the identities

$$\begin{align}
f^*(\omega \wedge \xi) = (f^* \omega) \wedge (f^* \xi),
\qquad
d(f^* \omega) = f^*(d\omega).
\end{align}$$

### 2.11

Let $M$ be a differentiable manifold, $X, Y \in \mathfrak{X}(M)$, $\omega \in \Omega^r(M)$, and $\eta \in \Omega^*(M)$. Prove:

1. $$(\mathcal{L}_X \omega)(X_1, \dots, X_r) = X[\omega(X_1, \dots, X_r)] - \sum_{j=1}^r \omega(X_1, \dots, [X, X_j], \dots, X_r);$$
1. $$i_X(\omega \wedge \eta) = i_X \omega \wedge \eta + (-1)^r \omega \wedge i_X \eta;$$
1. $$i_X^2 = 0;$$
1. $$\mathcal{L}_X i_X \omega = i_X \mathcal{L}_X \omega.$$

### 2.12

Let $(M, \omega)$ be a symplectic manifold and $X_H$ a Hamiltonian vector field on it. If the symplectic form $\omega \in \Omega^2(M)$ can be written as the exterior derivative of a "symplectic potential" 1-form $\theta \in \Omega^1(M)$, i.e., $\omega = d\theta$, prove that the Lie derivative $\mathcal{L}_{X_H} \theta$ is an exact differential.

### 2.13

The integration measure for an $N \times N$ Hermitian matrix $H = (H^i_j)$ is

$$\begin{align}
d\mu(H) := \prod_i dH^i_i \prod_{j \neq k} dH^j_k.
\end{align}$$

Perform the change of variables

$$
(dH^i_i, dH^j_k) \to (d\lambda_i, d\Omega^j_k), \qquad
H = U \begin{pmatrix}
\lambda_1 & & \\
& \ddots & \\
& & \lambda_N
\end{pmatrix} U^\dagger,
\qquad d\Omega = U^\dagger dU,
$$

$$\begin{align}
d\mu(H) \to d\mu(\lambda, \Omega) = |\det \mathcal{J}| \, d\mu(H),
\qquad
\mathcal{J} = \frac{\partial(\lambda_i, \Omega^j_k)}{\partial(H^i_i, H^j_k)}.
\end{align}$$

The Jacobian matrix $\mathcal{J}$ in this expression can be computed via the following considerations:

1. Regard $H$ as an unperturbed Hamiltonian, the state vector $\mathbf{u}$ as an $N$-component column vector, and the solution of the eigenvalue equation $H\mathbf{u} = \lambda \mathbf{u}$ as describing the $N$ eigenvalues $\lambda = \lambda_i$ and orthonormal eigenvectors $\mathbf{u} = \mathbf{u}_i$ of $H$. Verify that these eigenstates can be used to construct the unitary matrix $U = (\mathbf{u}_1, \dots, \mathbf{u}_N)$ in the change of variables, i.e., $\mathbf{u}_j = (U^i_j)_{1 \le i \le N}$.
1. Perform a perturbation $H \to H + \delta H$. The resulting eigenvalue perturbations $\delta\lambda_i$ and eigenstate perturbations $\delta\mathbf{u}_i$ can, to first order, be expressed as linear combinations of $\delta H^i_i, \delta H^j_k$. With reference to perturbation theory in quantum mechanics, explain the following formulas:

$$\begin{align}
\delta\lambda_i = \sum_{j,k=1}^{N} (U^j_i)^* \delta H^j_k U^k_i + O((\delta H)^2),
\end{align}$$

$$\begin{align}
\delta U^i_j = \sum_{k=1}^{N} \frac{\sum_{m,n=1}^{N} (U^m_k)^* \delta H^m_n U^n_j}{\lambda_j - \lambda_k} U^i_k + O((\delta H)^2),
\end{align}$$

$$
\delta\Omega^i_j = \begin{cases}
\dfrac{\sum_{m,n=1}^{N} (U^m_i)^* \delta H^m_n U^n_j}{\lambda_j - \lambda_i} + O((\delta H)^2), & i \neq j, \\[6pt]
O((\delta H)^2), & i = j.
\end{cases}
$$

1. The transformation $\delta H^i_j \to \widetilde{\delta H}^i_j := \sum_{m,n} (U^m_i)^* \delta H^m_n U^n_j$ satisfies

$$\begin{align}
\operatorname{Tr}(\widetilde{\delta H} \cdot \widetilde{\delta H})
= \operatorname{Tr}(\delta H \cdot \delta H).
\end{align}$$

This metric-preserving transformation does not affect the integration measure; hence the Jacobian matrix $\mathcal{J}$ can be determined from the following linear expansion coefficients:

$$\begin{align}
(\delta\lambda_i, \delta\Omega^j_k)
= \mathcal{J} \cdot (\delta H^i_i, \delta H^j_k) + O((\delta H)^2),
\end{align}$$

where

$$
\begin{cases}
\delta\lambda_i = \delta H^i_i + \text{higher-order terms}, \\[4pt]
\delta\Omega^j_k = \dfrac{\delta H^j_k}{\lambda_k - \lambda_j} + \text{higher-order terms}, \qquad j \neq k.
\end{cases}
$$

1. From the above results, derive the change-of-variables formula for the integration measure:

$$\begin{align}
d\mu(H) = \prod_{i < j} (\lambda_i - \lambda_j)^2 \times d\lambda_1 d\lambda_2 \cdots d\lambda_N \times \prod_{i \neq j} d\Omega_{ij}.
\end{align}$$

### 2.14

Using the Kronecker delta $\delta^\nu_\mu$ ($1 \le \mu, \nu \le m$) as matrix entries, define the determinant of an $s \times s$ matrix as

$$
\delta^{\nu_1 \cdots \nu_s}_{\mu_1 \cdots \mu_s}
:= \det\begin{pmatrix}
\delta^{\nu_1}_{\mu_1} & \cdots & \delta^{\nu_s}_{\mu_1} \\
\vdots & \ddots & \vdots \\
\delta^{\nu_1}_{\mu_s} & \cdots & \delta^{\nu_s}_{\mu_s}
\end{pmatrix},
\qquad s = 1, 2, \dots.
$$

Prove:

1. When $s > m$, $\delta^{\nu_1 \cdots \nu_s}_{\mu_1 \cdots \mu_s} = 0$;
1. $\delta^{1 \cdots m}_{\mu_1 \cdots \mu_m} = \epsilon_{\mu_1 \cdots \mu_m}$;
1. $\epsilon_{\mu_1 \cdots \mu_m} \epsilon^{\nu_1 \cdots \nu_m} = \delta^{\nu_1 \cdots \nu_m}_{\mu_1 \cdots \mu_m}$;
1. $\epsilon_{\mu_1 \cdots \mu_k \mu_{k+1} \cdots \mu_m} \epsilon^{\mu_1 \cdots \mu_k \nu_{k+1} \cdots \nu_m} = k! \, \delta^{\nu_{k+1} \cdots \nu_m}_{\mu_{k+1} \cdots \mu_m}$.

### 2.15

Derive $\alpha_q \wedge {*}\beta_q = \beta_q \wedge {*}\alpha_q$, and further prove that the inner product is symmetric, $(\alpha_q, \beta_q) = (\beta_q, \alpha_q)$.

### 2.16

Establish the identity

$$\begin{align}
{**}\omega_q = (-1)^{q(m-q)} \omega_q.
\end{align}$$

## 3 Homology Groups and the de Rham Theorem

### 3.1

Determine whether the 1-simplices (red) and 2-simplices (blue) in figures (a)–(e) are regularly situated.

> Note: The original problem contains five figures (a)–(e).

### 3.2

1. Let $K_1, K_2$ be subcomplexes of a complex $K$ (i.e., subsets $K_{1,2} \subset K$ consisting of certain simplices of $K$, with $K_{1,2}$ satisfying the conditions of a complex). Prove that $K_1 \cup K_2$ and $K_1 \cap K_2$ are also subcomplexes of $K$.
1. If $K_1 \cap K_2$ is an $r$-dimensional complex, then for $q > r+1$ we have

$$\begin{align}
H_q(K_1 \cup K_2) \simeq H_q(K_1) \oplus H_q(K_2).
\end{align}$$

### 3.3

Let $K$ be an $n$-dimensional complex. If the number of $n$-dimensional simplices in $K$ does not exceed $n+1$, then $Z_n(K) = 0$.

### 3.4

A triangulation $K$ of the Möbius strip is shown in the original figure. Discuss its homology groups $H_q(K)$ for $0 \le q \le 2$, and determine the Euler characteristic $\chi(K)$.

> Note: The original problem contains a figure of the Möbius strip triangulation.

### 3.5

The Klein bottle can be obtained by gluing the two circular boundaries of a cylinder in opposite orientation, following the steps shown in the original figure. Compute its homology groups in each dimension.

> Note: The original problem contains a figure illustrating the construction of the Klein bottle.
