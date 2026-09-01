# 02. Asymptotic Dirac Data

## 1. Direct Indicial Equation

Use the large-$r$ operator from [01-geometry-spinor-conventions.md](01-geometry-spinor-conventions.md). For

$$\begin{align}
\psi \sim r^{-\Delta}u(t,\Omega)
\end{align}$$

the leading Dirac equation is

$$\begin{align}
\left( \left( \dfrac{3}{2}-\Delta \right)\gamma ^{\hat{r}}-m \right)u & =0
\end{align}$$

The two roots and projectors follow without importing a scalar formula:

$$
\begin{array}{c|c|c}
\Delta & \gamma^{\hat r}u & \text{datum}\\ \hline
\Delta_-=\frac32-m & +u & \alpha=P_+\alpha\\
\Delta_+=\frac32+m & -u & \beta=P_-\beta
\end{array}
$$

Thus, for $\displaystyle{0<m<\dfrac{1}{2}}$,

$$\begin{align}
\psi & =r^{-\Delta _{-}}(\alpha+r^{-1}\alpha _{(1)}+\dots)+r^{-\Delta _{+}}(\beta+r^{-1}\beta _{(1)}+\dots)
\end{align}$$

The first tangential recursion gives

$$\begin{align}
\alpha _{(1)} & =\dfrac{1}{1-2m}\gamma ^{\mu} D_{\mu,\mathbb{R}\times S^{2}}\alpha \\
\beta _{(1)} & =\dfrac{1}{1+2m}\gamma ^{\mu}D_{\mu,\mathbb{R}\times S^{2}}\beta
\end{align}$$

with $\displaystyle{P_{-}\alpha _{(1)}=\alpha _{(1)}}$ and $\displaystyle{P_{+}\beta _{(1)}=\beta _{(1)}}$. Tangential Clifford multiplication flips the radial projector because

$$\begin{align}
\left\{\gamma ^{\hat{r}},\gamma ^{\mu}D_{\mu,\mathbb{R}\times S^{2}}\right\}=0
\end{align}$$

The pole at $1-2m=0$ is the first local indication that the endpoint needs a logarithmic/renormalized treatment, but it would not the case we will discuss here.

## 2. Off-Shell Configuration Space

The regulated action is varied on histories with derivative-controlled expansions

$$\begin{align}
\psi=r^{-\Delta_-}\alpha+r^{-\Delta_+}\beta +O(r^{-\Delta_--1}),
\end{align}$$

and similarly for $\bar\psi$, uniformly under a finite number of $t$, angular, and radial derivatives. The leading $\alpha,\beta,\bar\alpha,\bar\beta$ are independent off shell, subject only to the radial projectors.

On shell, regularity at $r=0$, the Dirac equation, and a chosen frequency prescription relate the two asymptotic coefficients for a generic solution. That relation is nonlocal along the boundary and is used only after the Euler-Lagrange equation has been imposed.

## 3. Normalizability Window

On a constant-time slice,

$$\begin{align}
(u,u)_{\Sigma} & =\int _{0}^{\infty}\mathrm{d}r \dfrac{r^{2}}{\sqrt{ 1+r^{2} }}\int _{S^{2}}\mathrm{d}\Omega _{2} u^{\dagger}u
\end{align}$$

For the slow branch the radial density behaves as

$$\begin{align}
r^{1-2\Delta_-}=r^{-2+2m},
\end{align}$$

which is integrable at infinity precisely when $\displaystyle{m< \dfrac{1}{2}}$. For the fast branch it behaves as $\displaystyle{r^{-2-2m}}$, which is integrable for $\displaystyle{m> -\dfrac{1}{2}}$. Therefore both branches lie in the standard Dirac Hilbert space exactly in the window

$$\begin{align}
|m|< \dfrac{1}{2}
\end{align}$$

for this project $\displaystyle{m> 0}$, so the displayed main interval is $\displaystyle{0<m< \dfrac{1}{2}}$.

This is a statement about the Cauchy inner product. It is not by itself a proof that a selected boundary condition defines a positive self-adjoint Hamiltonian domain; that additional operator statement is literature-supported and separately recorded in the claim ledger.

## 4. Radial Canonical Pairing Versus Cauchy CPS

Henneaux's radial Hamiltonian statement treats $r$ (or a defining function) as the evolution parameter. The pairs are schematically

$$\begin{align}
(\bar\alpha,\beta), \qquad (\bar\beta,\alpha),
\end{align}$$

and a boundary term chooses which half is fixed. This is a **boundary super-phase-space polarization**.

The Lorentzian Cauchy CPS instead integrates the conserved current over $t=\text{constant}$:

$$\begin{align}
\Omega_\Sigma(\delta_1,\delta_2) =i\int_\Sigma\sqrt\sigma\,\tau_\mu \left(\delta_1\bar\psi\gamma^\mu\delta_2\psi -(-1)^{\epsilon_1\epsilon_2}\delta_2\bar\psi\gamma^\mu\delta_1\psi\right).
\end{align}$$

The first structure selects admissible boundary conditions; the second is the physical even symplectic form used for CAR quantization. They are related by the radial flux, but they are not the same object.

## Verification

- **Verified:** the indicial roots, projector assignments, subleading denominators, and power-counting inequalities were checked in Mathematica.
- **Assumptions:** smooth power-law data and derivative-controlled remainders; no endpoint logarithms.
- **Not verified:** completeness and self-adjointness do not follow from the power count alone.
