# 02. Asymptotic Dirac data

## 1. Direct indicial equation

Use the large-$r$ operator from [01-geometry-spinor-conventions.md](01-geometry-spinor-conventions.md). For

$$
\psi\sim r^{-\Delta}u(t,\Omega),
$$

the leading Dirac equation is

$$
\left[\left(\frac32-\Delta\right)\gamma^{\hat r}-m\right]u=0.
$$

The two roots and projectors follow without importing a scalar formula:

$$
\begin{array}{c|c|c}
\Delta & \gamma^{\hat r}u & \text{datum}\\ \hline
\Delta_-=\frac32-m & +u & \alpha=P_+\alpha\\
\Delta_+=\frac32+m & -u & \beta=P_-\beta
\end{array}
$$

Thus, for $0<m<1/2$,

$$
\psi=r^{-\Delta_-}\left(\alpha+r^{-1}\alpha_{(1)}+\cdots\right)
+r^{-\Delta_+}\left(\beta+r^{-1}\beta_{(1)}+\cdots\right).
$$

The first tangential recursion gives

$$
\alpha_{(1)}=-\frac{1}{1-2m}\not\!D_{\mathbb R\times S^2}\alpha,
\qquad
\beta_{(1)}=\frac{1}{1+2m}\not\!D_{\mathbb R\times S^2}\beta,
$$

with $P_-\alpha_{(1)}=\alpha_{(1)}$ and $P_+\beta_{(1)}=\beta_{(1)}$. Tangential Clifford multiplication flips the radial projector because

$$
\{\gamma^{\hat r},\not\!D_{\mathbb R\times S^2}\}=0.
$$

The pole at $1-2m=0$ is the first local indication that the endpoint needs a logarithmic/renormalized treatment.

## 2. Off-shell configuration space

The regulated action is varied on histories with derivative-controlled expansions

$$
\psi=r^{-\Delta_-}\alpha+r^{-\Delta_+}\beta
+O(r^{-\Delta_--1}),
$$

and similarly for $\bar\psi$, uniformly under a finite number of $t$, angular, and radial derivatives. The leading $\alpha,\beta,\bar\alpha,\bar\beta$ are independent off shell, subject only to the radial projectors. In particular, no global regularity relation $\beta=\beta[\alpha]$ is imposed in the variational problem.

On shell, regularity at $r=0$, the Dirac equation, and a chosen frequency prescription relate the two asymptotic coefficients for a generic solution. That relation is nonlocal along the boundary and is used only after the Euler--Lagrange equation has been imposed.

This distinction is the Lorentzian global-AdS version of Henneaux's point: radial first-order evolution pairs the two projected data, but it does not identify them off shell.

## 3. Normalizability window

On a constant-time slice,

$$
(u,u)_\Sigma
=\int_0^\infty dr\,d\Omega_2\frac{r^2}{\sqrt{1+r^2}}u^\dagger u.
$$

For the slow branch the radial density behaves as

$$
r^{1-2\Delta_-}=r^{-2+2m},
$$

which is integrable at infinity precisely when $m<1/2$. For the fast branch it behaves as $r^{-2-2m}$, which is integrable for $m>-1/2$. Therefore both branches lie in the standard Dirac Hilbert space exactly in the window

$$
|m|<\frac12.
$$

For this project $m>0$, so the displayed main interval is $0<m<1/2$.

This is a statement about the Cauchy inner product. It is not by itself a proof that a selected boundary condition defines a positive self-adjoint Hamiltonian domain; that additional operator statement is literature-supported and separately recorded in the claim ledger.

## 4. Radial canonical pairing versus Cauchy CPS

Henneaux's radial Hamiltonian statement treats $r$ (or a defining function) as the evolution parameter. The pairs are schematically

$$
(\bar\alpha,\beta),
\qquad
(\bar\beta,\alpha),
$$

and a boundary term chooses which half is fixed. This is a **boundary super-phase-space polarization**.

The Lorentzian Cauchy CPS instead integrates the conserved current over $t=\text{constant}$:

$$
\Omega_\Sigma(\delta_1,\delta_2)
=i\int_\Sigma\sqrt\sigma\,\tau_\mu
\left(\delta_1\bar\psi\gamma^\mu\delta_2\psi
-(-1)^{\epsilon_1\epsilon_2}\delta_2\bar\psi\gamma^\mu\delta_1\psi\right).
$$

The first structure selects admissible boundary conditions; the second is the physical even symplectic form used for CAR quantization. They are related by the radial flux, but they are not the same object.

## Verification

- **Verified:** the indicial roots, projector assignments, subleading denominators, and power-counting inequalities were checked in Mathematica.
- **Assumptions:** smooth power-law data and derivative-controlled remainders; no endpoint logarithms.
- **Not verified:** completeness and self-adjointness do not follow from the power count alone.
