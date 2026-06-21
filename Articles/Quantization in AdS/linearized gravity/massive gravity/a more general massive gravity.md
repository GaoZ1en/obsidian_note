---
title: A More General Massive Gravity
date: 2026-06-08
summary: "Sets up a formal quadratic TT theory for factorized higher-derivative massive gravity and classifies critical logarithmic phase spaces by root multiplicity, Gram matrix, boundary condition, quotient, and obstruction."
---

# A more general massive gravity

This note treats the question in `guide.md` in a deliberately formal setting. Instead of assuming a parent higher-derivative gravitational Lagrangian, work directly with a TT-sector quadratic action whose Euler-Lagrange operator is the factorized linearized operator. The output is therefore a classification of the CPS structure determined by this chosen quadratic representative, not a derivation of the full non-linear charge algebra or of a unique JKM representative.

## Formal quadratic action

Use the same unit-radius AdS$_3$ background and lower-index tensor convention as `GMG.md`. In the TT sector,

$$\begin{align}
g^{(0)\mu\nu}h_{\mu\nu}=0,\qquad \nabla^{(0)\mu}h_{\mu\nu}=0.
\end{align}$$

Let

$$\begin{align}
(\mathscr E h)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.
\end{align}$$

Assume the linearized equation can be represented on this TT space as

$$\begin{align}
\mathcal P(\mathscr E)h_{\mu\nu}=0,\qquad \mathcal P(z)=\gamma\prod_A(z-\lambda_A)^{p_A},
\end{align}$$

with real $\gamma$ and real roots $|\lambda_A|\geqslant 1$ (since for $\displaystyle{|\lambda _{A}|\leqslant 1}$, no highest weight modes exists), where complex zeroes are excluded for the branches under consideration. The formal quadratic action is

$$\begin{align}
I^{(2)}_{\mathcal P}=-\frac{\mathcal N}{2}\int_{\mathcal M}\mathrm d^3x\sqrt{-g^{(0)}}\,h^{\mu\nu}\mathcal P(\mathscr E)h_{\mu\nu},
\end{align}$$

where $\mathcal N$ includes the overall normalization such as $1/(16\pi G)$ and any constant factors removed from the first-order factors. This action is a useful CPS representative when $\mathcal P(\mathscr E)$ is formally self-adjoint under the TT inner product and the boundary condition kills the Green-identity flux.

## Symplectic form from the polynomial operator

Let $\omega_{\mathscr E}$ denote the symplectic current obtained from the first-order quadratic action with operator $\mathscr E$. For

$$\begin{align}
\mathcal P(z)=\sum_{n=0}^N c_n z^n,
\end{align}$$

the Green identity for the action above gives the polynomial symplectic current

$$\begin{align}
\omega_{\mathcal P}(u,v)=\mathcal N\sum_{n=1}^N c_n\sum_{a=0}^{n-1}\omega_{\mathscr E}(\mathscr E^a u,\mathscr E^{n-1-a}v),
\end{align}$$

up to the overall sign convention chosen in $\omega_{\mathscr E}$. Thus, for analytic eigenmode families

$$\begin{align}
\mathscr E h_\lambda=\lambda h_\lambda,\qquad \mathscr E h_\mu=\mu h_\mu,
\end{align}$$

the integrated symplectic form satisfies

$$\begin{align}
\Omega_{\mathcal P}[h_\lambda,h_\mu^*]=\mathcal N\,\frac{\mathcal P(\lambda)-\mathcal P(\mu)}{\lambda-\mu}\,\Omega_{\mathscr E}[h_\lambda,h_\mu^*],
\end{align}$$

with the coincident limit

$$\begin{align}
\Omega_{\mathcal P}[h_\lambda,h_\lambda^*]=\mathcal N\,\mathcal P'(\lambda)\,\Omega_{\mathscr E}[h_\lambda,h_\lambda^*].
\end{align}$$

For simple roots, this reproduces the usual rule that the norm of a branch is controlled by the derivative of the factorized operator at the root. Distinct roots are orthogonal after the angular and time-frequency integrals, unless the two modes have the same global quantum numbers.

## Jordan chains at a critical root

Consider one critical root $\lambda_*$ of multiplicity $p$:

$$\begin{align}
\mathcal P(z)=(z-\lambda_*)^p Q(z),\qquad Q(\lambda_*)\neq0.
\end{align}$$

Let $h_\lambda$ be an analytic primary family near $\lambda_*$. Define

$$\begin{align}
h_q\equiv \frac{1}{q!}\partial_\lambda^q h_\lambda\big|_{\lambda=\lambda_*},\qquad q=0,\ldots,p-1.
\end{align}$$

Then

$$\begin{align}
(\mathscr E-\lambda_*)h_0=0,\qquad (\mathscr E-\lambda_*)h_q=h_{q-1}\quad(q\geq1),
\end{align}$$

and

$$\begin{align}
\mathcal P(\mathscr E)h_q=0,\qquad q=0,\ldots,p-1.
\end{align}$$

This is the rank-$p$ Jordan chain. In the explicit AdS$_3$ highest-weight modes of `GMG.md`, $h_q$ is represented by a degree-$q$ logarithmic mode,

$$\begin{align}
h_q\sim y^q h_0+\text{lower powers of }y,\qquad y(t,r)=-it-\frac{1}{2}\log(1+r^2),
\end{align}$$

after converting the root parameter to the conformal-weight parameter.

## Universal Gram matrix

Use the Hermitian norm matrix

$$\begin{align}
G_{ab}\equiv -i\,\Omega_{\mathcal P}[h_a,h_b^*],\qquad a,b=0,\ldots,p-1.
\end{align}$$

Let

$$\begin{align}
K(x,y)\equiv -i\,\mathcal N\,\Omega_{\mathscr E}[h_{\lambda_*+x},h_{\lambda_*+y}^*]\,\frac{\mathcal P(\lambda_*+x)-\mathcal P(\lambda_*+y)}{x-y}.
\end{align}$$

Then

$$\begin{align}
G_{ab}=[x^a y^b]K(x,y),
\end{align}$$

where $[x^a y^b]$ extracts the coefficient in the Taylor expansion. If

$$\begin{align}
N_*\equiv -i\,\mathcal N\,\Omega_{\mathscr E}[h_{\lambda_*},h_{\lambda_*}^*],
\end{align}$$

the root multiplicity forces the leading pattern

$$\begin{align}
G_{ab}=0\quad(a+b<p-1),\qquad G_{ab}=N_*Q(\lambda_*)\quad(a+b=p-1).
\end{align}$$

Entries with $a+b\geq p$ depend on derivatives of $Q$ and on the parameter dependence of the seed first-order norm. They are basis-dependent under triangular redefinitions of the logarithmic partners,

$$\begin{align}
h_q\mapsto h_q+\sum_{r<q}\alpha_{qr}h_r,
\end{align}$$

but the first non-zero anti-diagonal, rank, and signature are invariant.

The first examples are

$$\begin{align}
G^{(1)}=(a),\qquad a=N_*Q(\lambda_*),
\end{align}$$

$$
G^{(2)}=\begin{pmatrix}0&a\\ a&b\end{pmatrix},
$$

and

$$
G^{(3)}=\begin{pmatrix}0&0&a\\ 0&a&b\\ a&b&c\end{pmatrix}.
$$

For the full rank-$p$ chain,

$$\begin{align}
\det G^{(p)}=(-1)^{p(p-1)/2}\left(N_*Q(\lambda_*)\right)^p.
\end{align}$$

Thus the formal CPS form is non-degenerate on the full Jordan block whenever $N_*Q(\lambda_*)\neq0$. The corresponding Hermitian norm is indefinite for every $p\geq2$: for $p=2r$ the canonical anti-diagonal form has signature $(r,r)$, while for $p=2r+1$ it has signature $(r+1,r)$ or $(r,r+1)$ depending on the sign of $N_*Q(\lambda_*)$.

## Boundary conditions and quotients

Let the primary have total conformal weight $\Delta_*=h+\bar h$, so that the leading radial behavior is

$$\begin{align}
h_q\sim r^{2-\Delta_*}(\log r)^q.
\end{align}$$

A logarithmic boundary condition $\mathcal B_s$ keeps the initial Jordan segment

$$\begin{align}
\mathcal B_s:\qquad \operatorname{span}\{h_0,h_1,\ldots,h_{s-1}\},\qquad 1\leq s\leq p.
\end{align}$$

This is the natural isometry-invariant choice because the Jordan lowering map sends $h_q$ to $h_{q-1}$. The boundary interpretation is:

- If $\Delta_*>2$, every finite logarithmic power remains power-law subleading, so $\mathcal B_s$ is compatible with the Brown-Henneaux power falloff for all $s\leq p$.
- If $\Delta_*=2$, strict Brown-Henneaux keeps only $s=1$. A non-trivial logarithmic phase space requires a relaxed log, log-squared, or higher-log condition with the required value of $s$.
- If $\Delta_*<2$, the primary already grows relative to Brown-Henneaux. In the standard asymptotically AdS phase space the symplectic integrals or boundary flux are not finite, so this branch is excluded.

Restricting the Gram matrix to $\mathcal B_s$ gives

$$\begin{align}
\operatorname{Rad}(G|_{\mathcal B_s})=\operatorname{span}\{h_0,\ldots,h_{\min(s,p-s)-1}\},\qquad \operatorname{rank}(G|_{\mathcal B_s})=\max(0,2s-p),
\end{align}$$

with the convention that the displayed span is empty when $\min(s,p-s)=0$, and again assuming $N_*Q(\lambda_*)\neq0$. Hence the quotient

$$\begin{align}
\mathcal H_s=\mathcal B_s/\operatorname{Rad}(G|_{\mathcal B_s})
\end{align}$$

is non-trivial and non-degenerate exactly when

$$\begin{align}
s>\frac{p}{2}.
\end{align}$$

Its surviving Jordan length is

$$\begin{align}
\ell=2s-p,
\end{align}$$

with representatives

$$\begin{align}
h_{p-s},h_{p-s+1},\ldots,h_{s-1}.
\end{align}$$

The important low-rank cases are:

| Root multiplicity | Boundary segment | Radical | Non-degenerate quotient |
|---|---|---|---|
| $p=2$, $s=1$ | primary only | $h_0$ | trivial |
| $p=2$, $s=2$ | primary plus log | none | rank-2 log block |
| $p=3$, $s=1$ | primary only | $h_0$ | trivial |
| $p=3$, $s=2$ | primary plus log | $h_0$ | rank-1 quotient represented by $h_1$ |
| $p=3$, $s=3$ | primary, log, and log-squared | none | rank-3 log-squared block |

Thus a critical logarithmic phase space can have a well-defined CPS symplectic structure, but the boundary condition must keep enough of the Jordan chain. Keeping at most half of the chain gives only null states. Keeping more than half gives a non-degenerate quotient. Keeping the full chain gives a non-degenerate logarithmic block without quotient.

## Obstructions

The formal construction fails, or becomes physically incomplete, in the following precise ways.

1. The operator $\mathcal P(\mathscr E)$ is not formally self-adjoint under the TT inner product. Then the quadratic action $-\frac{1}{2}h\mathcal P(\mathscr E)h$ does not define a conserved CPS form without additional structure.
1. The boundary condition does not kill the Green-identity flux. Then $\Omega_{\mathcal P}$ depends on the Cauchy slice and the candidate phase space is not symplectic.
1. The seed anti-diagonal coefficient vanishes, $N_*Q(\lambda_*)=0$. Then the expected first non-zero anti-diagonal is absent, and the root collision is more degenerate than the polynomial multiplicity alone indicates.
1. The root has $\Delta_*<2$ in the standard AdS$_3$ asymptotic problem. Then the primary and all its logarithmic partners violate the boundary falloff before the CPS quotient can be formed.
1. Strict Brown-Henneaux at a repeated massless root keeps only the primary. Since the primary norm is proportional to $\mathcal P'(\lambda_*)=0$, the resulting quotient is trivial. A non-trivial logarithmic phase space requires relaxed logarithmic boundary conditions.
1. For every non-trivial logarithmic block with length at least two, the Hermitian norm is indefinite. This obstructs a positive-norm Hilbert space, but it does not obstruct a well-defined classical CPS symplectic structure.
1. Without a parent covariant gravitational Lagrangian, the formal action does not fix the JKM ambiguity, boundary counterterms, or the Virasoro central charges. Those data must be supplied separately before comparing the bulk logarithmic phase space to a boundary algebra.

## Answer to the classification question

In the formal quadratic TT theory defined by $I^{(2)}_{\mathcal P}$, the answer is yes: logarithmic modes at a critical root form a well-defined CPS phase space exactly when the operator is formally self-adjoint, the boundary flux vanishes, the branch is asymptotically admissible, and $N_*Q(\lambda_*)\neq0$. A root of multiplicity $p$ supplies a rank-$p$ Jordan chain. A boundary condition that keeps $s$ logarithmic levels has radical dimension $\min(s,p-s)$ and rank $\max(0,2s-p)$. The quotient is non-trivial precisely for $s>p/2$, and the full logarithmic boundary condition $s=p$ gives a non-degenerate rank-$p$ block.

The obstruction is not the existence of logarithmic modes. The obstructions are boundary flux, insufficiently relaxed falloff, hidden degeneracy of the seed anti-diagonal coefficient, and the absence of a parent Lagrangian if one wants charges and central charges rather than only the formal CPS symplectic form.
