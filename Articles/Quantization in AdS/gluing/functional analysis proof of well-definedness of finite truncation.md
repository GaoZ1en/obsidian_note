# Continuum Closure of the Port Galerkin Sequence

This note proves the continuum limit of the conforming port regulator for the centered massive interval scalar. The limit is taken in the global energy/form topology. It yields the connected wave dynamics, the interface trace, the equal-time symplectic form, and the intrinsic spatially smeared Gaussian state.

It does not construct an independent continuum port oscillator and does not compare the connected representation with a regional product Fock representation.

## Setup

Let

$$\begin{align}
I&=(-L,L), &H&=L^2(I), &V&=H_0^1(I), &L,m&>0.
\end{align}$$

The connected positive form is

$$\begin{align}
\mathfrak a[u,v] &=\int_{-L}^{L}\mathrm dx\, \left(\partial_xu\,\partial_x\overline v+m^2u\overline v\right), &D(\mathfrak a)&=V.
\end{align}$$

Its self-adjoint operator is

$$\begin{align}
A&=-\partial_x^2+m^2, &D(A)&=H^2(I)\cap H_0^1(I).
\end{align}$$

On each half interval let $y\in[0,L]$ run from the physical outer boundary to the cut, and use

$$\begin{align}
h(y)&=\frac yL, &u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}.
\end{align}$$

The conforming port space is

$$\begin{align}
W_N:=\left\{u\in V:\;
u_i(y)=\sum_{n=1}^Nc_{i,n}u_n(y)+h(y)q, \quad i=1,2\right\}.
\end{align}$$

The shared coefficient $q$ enforces continuity at the artificial cut. The outer Dirichlet conditions are built into the basis. The mass and stiffness matrices of [[Articles/Quantization in AdS/gluing/deprecated/port-canonical-normal-form|port-canonical-normal-form]] are the restrictions of the $H$ inner product and $\mathfrak a$ to $W_N$.

## Theorem

The spaces $W_N$ are nested and form-dense in $V$. As $N\to\infty$:

1. the restricted forms Mosco-converge to $\mathfrak a$;
2. the embedded Galerkin resolvents converge strongly to the resolvent of $A$;
3. energy-compatible Galerkin waves converge uniformly on compact time intervals in $V\oplus H$;
4. the interface values $q_N(t)=\phi_N(t,0)$ converge uniformly on compact time intervals to $q(t)=\phi(t,0)$;
5. the equal-time symplectic forms converge on convergent finite-energy data;
6. the finite Galerkin ground-state two-point functions converge after spatial smearing to the intrinsic connected-vacuum two-point function.

The finite pair $(q_N,\pi_{q,N})$ is therefore part of the conforming finite coordinate system, not an additional oscillator of the continuum theory.

## Form Density

The nesting $W_N\subset W_{N+1}\subset V$ is immediate. To prove density, take $u\in V$ and set

$$\begin{align}
q&=u(0).
\end{align}$$

Point evaluation is continuous on $H_0^1(I)$ in one spatial dimension. On each half interval define

$$\begin{align}
\psi_i&=u_i-hq.
\end{align}$$

Then $\psi_i\in H_0^1(0,L)$. Its Dirichlet sine series converges in the $H_0^1$ norm. Truncating both regional series and restoring the same lifting $hq$ gives $u_N\in W_N$ such that

$$\begin{align}
\|u_N-u\|_{H_0^1(I)}&\longrightarrow0.
\end{align}$$

Hence

$$\begin{align}
\overline{\bigcup_{N\geq1}W_N}^{\,V}&=V.
\end{align}$$

This is the only approximation input needed below.

## Mosco and Resolvent Convergence

Extend the restricted forms to $H$ by

$$
\mathfrak a_N[u]=
\begin{cases}
\mathfrak a[u],&u\in W_N,\\
+\infty,&u\notin W_N.
\end{cases}
$$

For the weak-liminf condition, suppose $u_N\rightharpoonup u$ in $H$ and

$$\begin{align}
\liminf_{N\to\infty}\mathfrak a_N[u_N]&<\infty.
\end{align}$$

After passing to a subsequence, $u_N\in W_N$ and $u_N$ is bounded in $V$ by coercivity. A further subsequence converges weakly in $V$ to the same $H$-weak limit $u$. Therefore $u\in V$ and

$$\begin{align}
\mathfrak a[u]&\leq\liminf_{N\to\infty}\mathfrak a_N[u_N].
\end{align}$$

For the recovery condition, form density supplies $u_N\in W_N$ with $u_N\to u$ in $V$ for every $u\in V$, hence

$$\begin{align}
u_N&\to u\quad\text{in }H, & \mathfrak a_N[u_N]&\to\mathfrak a[u].
\end{align}$$

Thus $\mathfrak a_N$ Mosco-converges to $\mathfrak a$.

The resolvent convergence can also be seen directly. For $\lambda>0$, let $R(\lambda)f\in V$ and $R_N(\lambda)f\in W_N$ solve

$$\begin{align}
\mathfrak a[u,v]+\lambda(u,v)_H&=(f,v)_H
\end{align}$$

for all $v\in V$ and all $v\in W_N$, respectively. Galerkin orthogonality gives

$$\begin{align}
\|R(\lambda)f-R_N(\lambda)f\|_{\mathfrak a+\lambda} &\leq\inf_{w_N\in W_N}
\|R(\lambda)f-w_N\|_{\mathfrak a+\lambda},
\end{align}$$

and the right-hand side vanishes by form density. Therefore

$$\begin{align}
R_N(\lambda)f&\longrightarrow R(\lambda)f
\end{align}$$

strongly in $V$, in particular strongly in $H$.

## Wave, Symplectic, and Trace Convergence

Let $A_N$ be the positive operator on $W_N$ defined by

$$\begin{align}
(A_Nu_N,v_N)_H&=\mathfrak a[u_N,v_N].
\end{align}$$

Take finite-energy initial data $(\phi_0,\pi_0)\in V\oplus H$ and approximants $(\phi_{0,N},\pi_{0,N})\in W_N\oplus W_N$ satisfying

$$\begin{align}
\|\phi_{0,N}-\phi_0\|_V+\|\pi_{0,N}-\pi_0\|_H&\longrightarrow0.
\end{align}$$

Define

$$\begin{align}
\phi(t)&=\cos(t\sqrt A)\phi_0+A^{-1/2}\sin(t\sqrt A)\pi_0,\\
\phi_N(t)&=\cos(t\sqrt{A_N})\phi_{0,N} +A_N^{-1/2}\sin(t\sqrt{A_N})\pi_{0,N}.
\end{align}$$

Strong spectral convergence on each finite spectral window, together with conservation of the finite and continuum wave energies, controls the high-frequency tails. Consequently, for every $T<\infty$,

$$\begin{align}
\sup_{|t|\leq T} \left(\|\phi_N(t)-\phi(t)\|_V +\|\dot\phi_N(t)-\dot\phi(t)\|_H\right)&\longrightarrow0.
\end{align}$$

For two solutions, the equal-time symplectic form is

$$\begin{align}
\omega((\phi,\pi),(\widetilde\phi,\widetilde\pi)) &=(\pi,\widetilde\phi)_H-(\widetilde\pi,\phi)_H.
\end{align}$$

Energy convergence immediately implies convergence of these symplectic forms.

The one-dimensional trace theorem also gives

$$\begin{align}
\sup_{|t|\leq T}|q_N(t)-q(t)| &\leq C_{\mathrm{tr}}
\sup_{|t|\leq T}\|\phi_N(t)-\phi(t)\|_V \longrightarrow0.
\end{align}$$

This does not imply convergence of $\dot q_N$: the velocity belongs only to $H=L^2(I)$ and has no point trace in general. Accordingly, $\pi_{q,N}=\rho_N\dot q_N$ has no independent continuum canonical interpretation on $V\oplus H$.

## Weak Interface Equation

The continuum dynamics obeys

$$\begin{align}
\langle\ddot\phi(t),v\rangle_{V',V}+\mathfrak a[\phi(t),v]&=0, &v&\in V.
\end{align}$$

Continuity is built into $V$. On the graph core $D(A)$, split the integral at the cut and integrate by parts. Since the common interface value of $v$ is arbitrary,

$$\begin{align}
\partial_{y_1}\phi_1(t,L)+\partial_{y_2}\phi_2(t,L)&=0.
\end{align}$$

For general finite-energy solutions, the weak equation is the meaning of flux matching. The normal-derivative feedback series is not an operator identity on all of $V\oplus H$.

## Intrinsic Gaussian State

The normalized connected modes and frequencies are

$$\begin{align}
e_r(x)&=\frac1{\sqrt L}\sin\frac{r\pi(x+L)}{2L}, & \Omega_r&=\sqrt{m^2+\frac{r^2\pi^2}{4L^2}}.
\end{align}$$

The connected-vacuum Wightman distribution is

$$\begin{align}
W(t,x;t',x') &=\sum_{r=1}^{\infty} \frac{e^{-i\Omega_r(t-t'-i0)}}{2\Omega_r}e_r(x)e_r(x').
\end{align}$$

At the cut, only the odd modes contribute:

$$\begin{align}
W_{qq}(t,t') &=\sum_{p=0}^{\infty} \frac{e^{-i\Omega_{2p+1}(t-t'-i0)}}{2\Omega_{2p+1}L}.
\end{align}$$

The equal-time point value diverges logarithmically. Thus $q(t)$ is a classical configuration trace, while the quantum field at the cut is an operator-valued distribution rather than an ordinary oscillator coordinate.

For the finite Galerkin ground state and spatial smearings $f,g\in H$, let $P_N:H\to W_N$ be the $H$-orthogonal projection. Then

$$\begin{align}
W_N(\tau;f,g) &=\frac12\left(P_Nf, A_N^{-1/2}e^{-i\tau A_N^{1/2}}P_Ng\right)_H.
\end{align}$$

Because $m>0$,

$$\begin{align}
F_\tau(\lambda)&=\lambda^{-1/2}e^{-i\tau\sqrt\lambda}
\end{align}$$

is bounded and continuous on the common spectral half-line. Strong-resolvent convergence and functional calculus give

$$\begin{align}
W_N(\tau;f,g)&\longrightarrow
\frac12(f,A^{-1/2}e^{-i\tau A^{1/2}}g)_H.
\end{align}$$

The same holds distributionally for the spatially smeared commutator, retarded kernel, and time-ordered kernel. Wick's theorem then gives convergence of every fixed spatially smeared $n$-point function. Point evaluation is not an $L^2$ smearing and is not covered by this statement.

## Verification Boundary

Proved here:

- form density and Mosco convergence;
- strong Galerkin resolvent convergence;
- energy-space wave, trace, and symplectic convergence for compatible initial data;
- weak flux matching and its graph-core pointwise form;
- intrinsic spatially smeared Gaussian two-point-function convergence.

`numerics/continuum_closure_mode_checks.wl` independently verifies the connected-mode restrictions, outer boundary values, interface parity, Klein--Gordon equation, oriented-flux cancellation, and cross-region signs.

Assumptions: $L,m>0$, centered cut, physical outer Dirichlet conditions, lifting $h(y)=y/L$, the same conforming spaces in every finite description, and initial-data convergence in $H_0^1(I)\oplus L^2(I)$.

Not proved here: a universal convergence rate, norm-resolvent convergence, convergence of $\dot q_N$ as a point observable, a finite unsmeared covariance at the cut, cut-uniform finite-$N$ rates, continuous-spectrum exteriors, interactions, gauge theory, or gravity.

## References

- U. Mosco, [*Convergence of convex sets and of solutions of variational inequalities*](https://doi.org/10.1016/0001-8708(69)90009-7), *Advances in Mathematics* **3** (1969), 510--585.
- K. Kuwae and T. Shioya, [*Convergence of spectral structures: a functional analytic theory and its applications to spectral geometry*](https://intlpress.com/site/pub/files/_fulltext/journals/cag/2003/0011/0004/CAG-2003-0011-0004-a001.pdf), *Communications in Analysis and Geometry* **11** (2003), 599--673.
