---
title: "homework 6"
date: 2026-04-20
summary: "Derivations of the Virasoro central extension, the commutator [L_n, alpha_m^mu], and the bound a <= 1 from time-like excitations."
---

# problem 1

let

$$
\begin{align}
[L_m,L_n] & = (m-n)L_{m+n}+\delta_{m+n,0}A(m)
\end{align}
$$

determine the function $A(m)$ from antisymmetry, the Jacobi identity, and the vacuum matrix elements.

## solution

first, antisymmetry of the commutator gives

$$
\begin{align}
A(-m) & = -A(m), & A(0) & = 0.
\end{align}
$$

next, insert

$$
\begin{align}
[L_m,L_n] & = (m-n)L_{m+n}+\delta_{m+n,0}A(m)
\end{align}
$$

into the Jacobi identity

$$
\begin{align}
[[L_k,L_m],L_n]+[[L_m,L_n],L_k]+[[L_n,L_k],L_m] & = 0.
\end{align}
$$

the non-central part cancels by itself, while the central part gives, for $k+m+n=0$,

$$
\begin{align}
(n-m)A(k)+(k-n)A(m)+(m-k)A(n) & = 0.
\end{align}
$$

choose $k=1$ and $n=-m-1$. then

$$
\begin{align}
(m-1)A(m+1) & = (m+2)A(m)-(2m+1)A(1), \qquad m\ge 1.
\end{align}
$$

this recurrence determines all $A(m)$ from the two initial data $A(1)$ and $A(2)$. one easily checks that

$$
\begin{align}
A(m) & = c_{3}m^{3}+c_{1}m
\end{align}
$$

solves the recurrence, and matching $A(1)$ and $A(2)$ gives

$$
\begin{align}
c_{3} & = \frac{A(2)-2A(1)}{6}, &
c_{1} & = A(1)-c_{3}.
\end{align}
$$

hence the general solution is

$$
\begin{align}
A(m) & = c_{3}m^{3}+c_{1}m.
\end{align}
$$

now fix $c_{1}$ and $c_{3}$ from the vacuum. let $|\Omega\rangle$ satisfy

$$
\begin{align}
\alpha _{n}^{\mu}|\Omega\rangle & = 0, \qquad n>0, \\
p^{\mu}|\Omega\rangle & = 0.
\end{align}
$$

then $L_{m}|\Omega\rangle=0$ for $m>0$ and $L_{0}|\Omega\rangle=0$.

for $m=1$,

$$
\begin{align}
[L_{1},L_{-1}]|\Omega\rangle & = (2L_{0}+A(1))|\Omega\rangle = A(1)|\Omega\rangle.
\end{align}
$$

on the other hand, $L_{1}|\Omega\rangle=0$ and $L_{-1}|\Omega\rangle=0$, so the left-hand side vanishes. therefore

$$
\begin{align}
A(1) & = 0.
\end{align}
$$

for $m=2$, since the $\alpha _{0}$ terms vanish on the vacuum,

$$
\begin{align}
L_{-2}|\Omega\rangle & = \frac{1}{2}\alpha _{-1}\cdot \alpha _{-1}|\Omega\rangle.
\end{align}
$$

therefore

$$
\begin{align}
L_{2}L_{-2}|\Omega\rangle & = \frac{1}{4}\alpha _{1}\cdot \alpha _{1}\,\alpha _{-1}\cdot \alpha _{-1}|\Omega\rangle.
\end{align}
$$

using the oscillator algebra,

$$
\begin{align}
\alpha _{1}\cdot \alpha _{1}\,\alpha _{-1}\cdot \alpha _{-1}|\Omega\rangle
& = \alpha _{1}^{\mu}\left[\alpha _{1\mu},\alpha _{-1}\cdot \alpha _{-1}\right]|\Omega\rangle \\
& = 2\alpha _{1}^{\mu}\alpha _{-1\mu}|\Omega\rangle \\
& = 2\left[\alpha _{1}^{\mu},\alpha _{-1\mu}\right]|\Omega\rangle \\
& = 2D|\Omega\rangle.
\end{align}
$$

hence

$$
\begin{align}
[L_{2},L_{-2}]|\Omega\rangle & = L_{2}L_{-2}|\Omega\rangle = \frac{D}{2}|\Omega\rangle.
\end{align}
$$

but from the abstract algebra,

$$
\begin{align}
[L_{2},L_{-2}]|\Omega\rangle & = (4L_{0}+A(2))|\Omega\rangle = A(2)|\Omega\rangle,
\end{align}
$$

so

$$
\begin{align}
A(2) & = \frac{D}{2}.
\end{align}
$$

finally, from

$$
\begin{align}
A(1) & = c_{3}+c_{1} = 0, \\
A(2) & = 8c_{3}+2c_{1} = \frac{D}{2},
\end{align}
$$

we obtain

$$
\begin{align}
c_{3} & = \frac{D}{12}, &
c_{1} & = -\frac{D}{12}.
\end{align}
$$

thus

$$
\begin{align}
A(m) & = \frac{D}{12}(m^{3}-m),
\end{align}
$$

and the matter Virasoro algebra is

$$
\begin{align}
[L_m,L_n] & = (m-n)L_{m+n}+\frac{D}{12}(m^{3}-m)\delta _{m+n,0}.
\end{align}
$$

this is also consistent with the explicit oscillator realization for all $m>2$.

# problem 2

starting from

$$
\begin{align}
L_{n} & = \frac{1}{2}\sum _{r\in \mathbb{Z}} :\alpha _{n-r}\cdot \alpha _{r}:,
\end{align}
$$

analyze the candidate state $\alpha _{-m}^{0}|p\rangle$ and derive the bound on the intercept $a$.

## solution

we first compute the commutator with one oscillator mode:

$$
\begin{align}
[L_{n},\alpha _{m}^{\mu}] & = \frac{1}{2}\sum _{r\in \mathbb{Z}}\left[\alpha _{n-r}\cdot \alpha _{r},\alpha _{m}^{\mu}\right] \\
& = \frac{1}{2}\sum _{r\in \mathbb{Z}}\left(\alpha _{n-r,\nu}[\alpha _{r}^{\nu},\alpha _{m}^{\mu}]+[\alpha _{n-r,\nu},\alpha _{m}^{\mu}]\alpha _{r}^{\nu}\right) \\
& = \frac{1}{2}\sum _{r\in \mathbb{Z}}\left(r\delta _{r+m,0}\alpha _{n-r}^{\mu}+(n-r)\delta _{n-r+m,0}\alpha _{r}^{\mu}\right) \\
& = -\frac{m}{2}\alpha _{n+m}^{\mu}-\frac{m}{2}\alpha _{n+m}^{\mu} \\
& = -m\alpha _{n+m}^{\mu}.
\end{align}
$$

therefore

$$
\begin{align}
[L_{n},\alpha _{m}^{\mu}] & = -m\alpha _{n+m}^{\mu}.
\end{align}
$$

now consider the candidate state $\alpha _{-m}^{0}|p\rangle$ with $m>0$.

for $m>1$, act with $L_{1}$:

$$
\begin{align}
L_{1}\alpha _{-m}^{0}|p\rangle
& = [L_{1},\alpha _{-m}^{0}]|p\rangle \\
& = m\alpha _{1-m}^{0}|p\rangle.
\end{align}
$$

since $1-m<0$, the mode $\alpha _{1-m}^{0}$ is still a creation operator, so this state is nonzero. hence $\alpha _{-m}^{0}|p\rangle$ cannot satisfy all positive-mode Virasoro constraints when $m>1$.

the only nontrivial case is $m=1$. then

$$
\begin{align}
L_{1}\alpha _{-1}^{0}|p\rangle
& = [L_{1},\alpha _{-1}^{0}]|p\rangle \\
& = \alpha _{0}^{0}|p\rangle \\
& = \sqrt{ 2\alpha' }\,p^{0}|p\rangle.
\end{align}
$$

therefore a necessary condition for $\alpha _{-1}^{0}|p\rangle$ to be physical is

$$
\begin{align}
p^{0} & = 0.
\end{align}
$$

for $n\ge 2$ we have

$$
\begin{align}
L_{n}\alpha _{-1}^{0}|p\rangle
& = [L_{n},\alpha _{-1}^{0}]|p\rangle \\
& = \alpha _{n-1}^{0}|p\rangle \\
& = 0,
\end{align}
$$

because $n-1>0$ is an annihilation mode. so the only extra requirement is indeed $p^{0}=0$.

the norm of this state is negative:

$$
\begin{align}
\langle p|\alpha _{1}^{0}\alpha _{-1}^{0}|p\rangle
& = \langle p|[\alpha _{1}^{0},\alpha _{-1}^{0}]|p\rangle \\
& = \eta ^{00}\langle p|p\rangle \\
& = -\langle p|p\rangle.
\end{align}
$$

thus $\alpha _{-1}^{0}|p\rangle$ is a negative-norm state whenever it is allowed by the Virasoro constraints.

now use the level-1 mass formula

$$
\begin{align}
M^{2} & = \frac{1-a}{\alpha'}.
\end{align}
$$

if $a>1$, then $M^{2}<0$, so

$$
\begin{align}
p^{2} & = -M^{2} > 0.
\end{align}
$$

the momentum is spacelike, and one can choose a Lorentz frame with $p^{0}=0$. in that frame $\alpha _{-1}^{0}|p\rangle$ obeys all positive-mode Virasoro constraints, but it has negative norm. this contradicts the consistency of the physical spectrum.

hence one must require

$$
\begin{align}
a & \le 1.
\end{align}
$$

the spectral consequences are:

1. if $a=1$, the level-1 state is massless.
2. if $a<1$, the level-1 state is massive with $M^{2}>0$.

so the simplest analysis of time-like oscillators already shows that consistency requires $a\le 1$.
