## system with one degree of freedom

for a point particle, the $\displaystyle{n}$-point correlation function is defined as

$$
\tag{1.3.1}
\begin{align}
\langle x(t_{1})x(t_{2})\dots x(t_{n})\rangle & =\langle_{0}|\mathcal{T}(x(t_{1})x(t_{2})\dots x(t_{n}))|0\rangle
\end{align}
$$

where $\displaystyle{|0\rangle}$ is the ground state and $\displaystyle{\mathcal{T}}$ is the time ordering operator, which sorts the factors that follow in chronological order from right to left

$$
\tag{1.3.2}
\begin{align}
\mathcal{T}(x(t_{1})\dots x(t_{n})) & =x(t_{1})\dots x(t_{n}),\qquad \text{if }t_{1}>t_{2}>\dots>t_{n}
\end{align}
$$

correlation functions can be calculated by path integration as follows (due to Gell-Mann-Low theorem or some Heisenberg picture argument)

$$
\tag{1.3.3}
\begin{align}
\langle x(t_{1})\dots x(t_{n})\rangle & =\lim_{ \varepsilon \to 0 } \frac{\displaystyle{\int \mathcal{D}x x(t_{1})\dots x(t_{n})e^{iS_{\varepsilon}[x(t)]}}}{\displaystyle{\int \mathcal{D}x e^{iS_{\varepsilon}[x(t)]}}}
\end{align}
$$

where $\displaystyle{S_{\varepsilon}}$ is the action obtained by replacing $\displaystyle{t}$ by $\displaystyle{t-i\varepsilon}$ and where the functional integral is taken with bounds at $\displaystyle{t\to \pm \infty}$

let us consider a general ratio of the type

$$
\tag{1.3.4}
\begin{align}
\frac{\langle0|\mathcal{O}_{1}|0\rangle}{\langle0|\mathcal{O}_{2}|0\rangle} & =\lim_{ T_{i},T_{f} \to \infty } \frac{\langle \psi_{f}|e^{-iT_{f}H(1-i\varepsilon)}\mathcal{O}_{1}e^{-iT_{i}H(1-i\varepsilon)}|\psi_{i}\rangle}{\langle \psi_{f}|e^{-iT_{f}H(1-i\varepsilon)}\mathcal{O}_{2}e^{-iT_{1}H(1-i\varepsilon)}|\psi_{i}\rangle}
\end{align}
$$

suppose $\displaystyle{|n\rangle}$ is the energy eigenstate with energy $\displaystyle{E_{n}}$, we have

$$
\tag{1.3.5}
\begin{align}
e^{-iT_{i}H(1-i\varepsilon)}|\psi_{i}\rangle & =\sum_{n}e^{-iT_{i}H(1-i\varepsilon)}|n\rangle\langle n|\psi_{i}\rangle \\
 & =\sum_{n}e^{-iT_{i}E_{n}(1-i\varepsilon)}|n\rangle\langle n|\psi_{i}\rangle \\
 & \to e^{-iT_{i}E_{0}(1-i\varepsilon)}|0\rangle\langle0|\psi_{i}\rangle, \text{if }\varepsilon\to0, T_{i}\to \infty
\end{align}
$$

this strictly holds only if the vacuum is nondegenerate and if there is an energy gap between the vacuum and the first excited state. then RHS the correlation function becomes

$$
\tag{1.3.6}
\begin{align}
\lim_{ T_{i},T_{f} \to \infty,\varepsilon\to0 } \frac{\langle \psi_{f}|e^{-iHT_{f}(1-i\varepsilon)}xe^{-iH(t_1-t_{2})(1-i\varepsilon)}x\dots xe^{-iHT_{i}(1-i\varepsilon)}|\psi_{i}\rangle}{\langle \psi_{f}|e^{-iH(T_{f}+T_{i}+t_{1}-t_{n})(1-i\varepsilon)}|\psi_{i}\rangle}
\end{align}
$$

by inserting completeness relations, we have

$$
\tag{1.3.7}
\begin{align}
\int^{x_{f}}_{x_{i}}\mathcal{D}x\psi_{f}^{*}\psi_{i}x(t_{1})\dots x(t_{n})e^{iS_{\varepsilon}[x]}
\end{align}
$$

since the wave function $\displaystyle{\psi_{f}(x_{f})}$ and $\displaystyle{\psi_{i}(x_{i})}$ are arbitrary, one may choose $\displaystyle{\psi_{i}(x_{i})=\psi_{f}(x_{f})=1}$, which concludes (1.3.3)

## the Euclidean formalism

with the assumption that the correlation functions can be analytically continued from imaginary time to real time, we have the Euclidean formalism. (1.3.3) for the correlation functions then becomes

$$
\tag{1.3.8}
\begin{align}
\langle x(t_{1})\dots x(t_{n})\rangle & = \frac{\displaystyle{\int \mathcal{D}x x(\tau_{1})\dots x(\tau_{n})e^{-S_{E}[x(\tau)]}}}{\displaystyle{\int \mathcal{D}x e^{-S_{E}[x(\tau)]}}}
\end{align}
$$

where $\displaystyle{S_{E}}$ is the Euclidean action

$$
\tag{1.3.9}
\begin{align}
iS_{E}[x(\tau)]=S[x(t\to-i\tau)]
\end{align}
$$

and the Euclidean action is the integral over imaginary time of the Euclidean Lagrangian $\displaystyle{L_{E}}$

$$
\tag{1.3.10}
\begin{align}
L_{E}[x(\tau)] & =-L[x(t\to-i\tau)]
\end{align}
$$

Unless indicated, we shall from now on work within the Euclidean formalism, and we will drop the subscript $\displaystyle{E}$ and replace $\displaystyle{\tau}$ with $\displaystyle{t}$. the Euclidean formalism also affects the spacetime metric

$$
\tag{1.3.11}
\begin{align}
\eta_{\mu \nu} & =\begin{cases}
\mathrm{diag}(1,-1,\dots,-1) & \text{Minkowski} \\
\mathrm{diag}(1,1,\dots,1) & \text{Euclidean}
\end{cases}
\end{align}
$$

the Minkowski metric is not the usual one we have ever used ($\displaystyle{\eta_{\mu \nu}=\mathrm{diag}(-1,1,\dots,1)}$).

## the generating functional

here we define the generating functional

$$
\tag{1.3.12}
\begin{align}
Z[j] & =\int \mathcal{D}xe^{-S[x(t)]+\int \mathrm{d}tj(t)x(t)}
\end{align}
$$

where $\displaystyle{j(t)}$ is an auxiliary current coupled linearly to the dynamical variable $\displaystyle{x}$.

$$
\tag{1.3.13}
\begin{align}
Z[j] & =Z[0]\int \mathcal{D}xe^{\int \mathrm{d}tj(t)x)t}=Z[0]\left\langle  e^{\int \mathrm{d}tj(t)x(t)} \right\rangle \\
 & =Z[0]\sum^{\infty}_{n=0}\int \mathrm{d}t_{1}\dots \mathrm{d}t_{n} \frac{1}{n!}j(t_{1})\dots j(t_{n})\langle x(t_{1})\dots x(t_{n})\rangle \\
\langle x(t_{1})\dots x(t_{n})\rangle & =Z[0]^{-1} \frac{\delta}{\delta j(t_{1})}\dots \frac{\delta}{\delta j(t_{n})}Z[j]|_{j=0}
\end{align}
$$

this definition can be easily extended to a quantum field $\displaystyle{\phi(x)}$.

## example: the free boson

consider the following two-dimensional free boson Euclidean action

$$
\tag{1.3.14}
\begin{align}
S & =\int \mathrm{d}^{2}x \frac{1}{2}g\left( \partial_{\mu}\phi\partial^{\mu}\phi+m^{2}\phi^{2} \right)
\end{align}
$$

where $\displaystyle{g}$ is some normalization parameter left unspecified at this moment. we first calculate the propagator

$$
\tag{1.3.15}
\begin{align}
K(x,y) & =\langle \phi(x)\phi(y)\rangle
\end{align}
$$

if we write the action as

$$
\tag{1.3.16}
\begin{align}
S & =\int \mathrm{d}^{2}x \frac{1}{2}g\phi(-\partial^{2}+m^{2})\phi+(\text{total derivative term}) \\
 & =\int \mathrm{d}^{2}x\mathrm{d}^{2}y \frac{1}{2}\phi(x)A(x,y)\phi(y)+(\text{total derivative term}) \\
A(x,y) & =g\delta(x-y)(-\partial^{2}+m^{2})
\end{align}
$$

then the propagator is then $\displaystyle{K(x,y)=A^{-1}(x,y)}$, that is,

$$
\tag{1.3.17}
\begin{align}
g(-\partial^{2}+m^{2})K(x,y) & =\delta(x-y)
\end{align}
$$

by symmetry, we have $\displaystyle{K(x,y)=K(\rho)}$, where $\displaystyle{\rho=|x-y|}$. integrating (1.3.17) over $\displaystyle{x}$ within a disk $\displaystyle{D}$ of radius $\displaystyle{r}$ centered around $\displaystyle{y}$, we have

$$
\tag{1.3.18}
\begin{align}
1 & =2\pi g\int^{r}_{0}\mathrm{d}\rho \rho\left(-\frac{1}{\rho} \frac{\partial}{\partial \rho}(\rho K'(\rho))+m^{2}K(\rho)\right) \\
 & =-2\pi grK'(r)+2\pi gm^{2}\int^{r}_{0}\mathrm{d}\rho \rho K(\rho)
\end{align}
$$

for massless boson, we have simply

$$
\tag{1.3.19}
\begin{align}
K(r) & =-\frac{1}{2\pi g}\ln r \\
\langle \phi(x)\phi(y) & =-\frac{1}{4\pi G}\ln(x-y)^{2}
\end{align}
$$

and for massive boson, (1.3.18) becomes the modified Bessel equation of order 0

$$
\tag{1.3.20}
\begin{align}
K''+\frac{1}{r}K'-m^{2}K=0 \\
K(\rho)=\frac{1}{2\pi g}K_{0}(m\rho) \\
K_{0}(x)=\int^{\infty}_{0}\mathrm{d}t \frac{\cos(xt)}{\sqrt{ 1+t^{2} }}
\end{align}
$$

at large distances, the modified Bessel function decays exponentially. this is also obvious from (1.3.20) by neglecting the second derivative term.

## Wick's theorem

Wick's theorem related normal ordering, which places all annihilation operators on the right, and time ordering, which sorts operators in chronological order. we have the following statement

>[!Wick's theorem]
>the time-ordered product is equal to the normal-ordered product, plus all possible ways of contracting pairs of fields within it.

for example

$$
\tag{1.3.21}
\begin{align}
\mathcal{T}(\phi_{1}\phi_{2}\phi_{3}\phi_{4}) & =:\phi_{1}\phi_{2}\phi_{3}\phi_{4}:+\langle \phi_{1}\phi_{2}\rangle:\phi_{3}\phi_{4}:+\langle \phi_{1}\phi_{3}\rangle:\phi_{2}\phi_{4}:+\langle \phi_{1}\phi_{4}\rangle:\phi_{2}\phi_{3}: \\
 & \langle \phi_{2}\phi_{3}\rangle:\phi_{1}\phi_{4}:+\langle \phi_{2}\phi_{4}\rangle:\phi_{1}\phi_{3}:+\langle \phi_{3}\phi_{4}\rangle:\phi_{1}\phi_{2}:+\langle \phi_{1}\phi_{2}\rangle\langle \phi_{3}\phi_{4}\rangle \\
 & +\langle \phi_{1}\phi_{3}\rangle\langle \phi_{2}\phi_{4}\rangle+\langle \phi_{1}\phi_{4}\rangle\langle \phi_{2}\phi_{4}\rangle
\end{align}
$$

and for fermions, we need take anti-commuting into accounts

$$
\tag{1.3.22}
\begin{align}
\mathcal{T}(\psi_{1}\psi_{2}\psi_{3}\psi_{4}) & =:\psi_{1}\psi_{2}\psi_{3}\psi_{4}:+\langle \psi_{1}\psi_{2}\rangle:\psi_{3}\psi_{4}:-\langle \psi_{1}\psi_{3}\rangle:\psi_{2}\psi_{4}:+\langle \psi_{1}\psi_{4}\rangle:\psi_{2}\psi_{3}: \\
 & \langle \psi_{2}\psi_{3}\rangle:\psi_{1}\psi_{4}:-\langle \psi_{2}\psi_{4}\rangle:\psi_{1}\psi_{3}:+\langle \psi_{3}\psi_{4}\rangle:\psi_{1}\psi_{2}:+\langle \psi_{1}\psi_{2}\rangle\langle \psi_{3}\psi_{4}\rangle \\
 & +\langle \psi_{1}\psi_{3}\rangle\langle \psi_{2}\psi_{4}\rangle-\langle \psi_{1}\psi_{4}\rangle\langle \psi_{2}\psi_{4}\rangle
\end{align}
$$
