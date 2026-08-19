# Scalar Gluing on an Interval Times a Circle

Consider a real massive scalar on

$$\begin{align}
[-L,L]\times S_R^1
\end{align}$$

with Dirichlet conditions at $x=\pm L$ and a cut at $x=0$. This note performs the channel-by-channel canonical construction and then analyzes the double ultraviolet sum relevant to Fock implementability.

## 1. Angular channels

Expand

$$\begin{align}
\phi(t,x,\theta)&=\dfrac1{\sqrt{2\pi R}}
\sum_{\ell\in\mathbb Z}\phi_\ell(t,x)e^{i\ell\theta},\\
q(t,\theta)&=\dfrac1{\sqrt{2\pi R}}
\sum_{\ell\in\mathbb Z}q_\ell(t)e^{i\ell\theta}.
\end{align}$$

Reality requires $\phi_{-\ell}=\phi_\ell^*$ and $q_{-\ell}=q_\ell^*$. Every angular channel is an interval scalar with effective mass

$$\begin{align}
m_\ell^2&=m^2+\dfrac{\ell^2}{R^2}.
\end{align}$$

The spatial matching equation is independent of $m_\ell$. Hence the connected cylinder spectrum is

$$\begin{align}
\Omega_{r\ell}^2&=m^2+\left(\dfrac{r\pi}{2L}\right)^2
+\dfrac{\ell^2}{R^2},\\
r&=1,2,\ldots, & \ell&\in\mathbb Z.
\end{align}$$

The even radial tower has $q_\ell=0$ and is retained as the relative sector. The odd radial tower carries the interface value and is reconstructed by the Dirichlet-to-Neumann feedback.

## 2. Physical channel overlap

For the affected tower, compare the normalized integer and half-integer sine bases on one half interval:

$$\begin{align}
u_n(y)&=\sqrt{\dfrac2L}\sin\left(\dfrac{n\pi y}{L}\right),\\
f_j(y)&=\sqrt{\dfrac2L}\sin\left[\dfrac{(j-1/2)\pi y}{L}\right].
\end{align}$$

Their exact overlap is

$$\begin{align}
C_{nj}&=\int_0^L u_n(y)f_j(y)dy\\
&=(-1)^{n+j}\dfrac{2n}{\pi[n^2-(j-1/2)^2]}.
\end{align}$$

The infinite matrix $C$ is orthogonal because it relates two complete orthonormal bases of the same $L^2(0,L)$ space. This is the physically normalized overlap; it avoids the gradient-normalization ambiguity found by the off-center audit.

At finite $N$, the square corner $C_N$ is not exactly orthogonal because its omitted rows and columns still contribute to completeness. A convenient global-first canonical regulator uses its polar factor

$$\begin{align}
O_N&=C_N(C_N^{\mathrm T}C_N)^{-1/2}, &
O_N^{\mathrm T}O_N&=\mathbf1_N.
\end{align}$$

In the affected/relative ordering, set

$$\begin{align}
T_{N\ell}&=\operatorname{diag}(O_N,\mathbf1_N), &
S_{N\ell}&=\operatorname{diag}(T_{N\ell},T_{N\ell}^{-\mathrm T}).
\end{align}$$

Then $S_{N\ell}^{\mathrm T}JS_{N\ell}=J$. Pulling the exact truncated connected Hamiltonian back with $S_{N\ell}$ gives a finite regional canonical Hamiltonian intertwined with the same global regulator. The script verifies the symplectic identity, Hamiltonian intertwining and purity of the transformed global-vacuum covariance in the $\ell=0$ and $\ell=3$ channels.

This polar prescription is a finite-regulator choice. Its fixed-window entries approach the exact $C$ entries as $N$ increases; continuum claims below use the exact overlap rather than treating $C_N$ as already orthogonal.

## 3. Channel Bogoliubov coefficients

Define

$$\begin{align}
\omega_{n\ell}^2&=m_\ell^2+\left(\dfrac{n\pi}{L}\right)^2,\\
\Omega_{j\ell}^2&=m_\ell^2+\left[\dfrac{(j-1/2)\pi}{L}\right]^2.
\end{align}$$

The relative tower is passive because its regional and global frequencies agree. In the affected tower, the exact continuum Bogoliubov coefficient is

$$\begin{align}
\beta_{jn}^{(\ell)}&=
\dfrac{C_{nj}}2\left(
\sqrt{\dfrac{\Omega_{j\ell}}{\omega_{n\ell}}}
-\sqrt{\dfrac{\omega_{n\ell}}{\Omega_{j\ell}}}
\right)\\
&=C_{nj}\dfrac{\Omega_{j\ell}-\omega_{n\ell}}
{2\sqrt{\Omega_{j\ell}\omega_{n\ell}}}.
\end{align}$$

The finite polar version obeys

$$\begin{align}
\alpha\alpha^\dagger-\beta\beta^\dagger&=\mathbf1, &
\alpha\beta^{\mathrm T}-\beta\alpha^{\mathrm T}&=0
\end{align}$$

at every $N$.

## 4. A single angular channel already fails the Hilbert--Schmidt test

Fix $\ell$. For sufficiently large $n$, choose all integers

$$\begin{align}
2n\le j\le3n.
\end{align}$$

In this band,

$$\begin{align}
|C_{nj}|&\ge\dfrac{c_1}{n}, &
\left|\dfrac{\Omega_{j\ell}-\omega_{n\ell}}
{2\sqrt{\Omega_{j\ell}\omega_{n\ell}}}\right|&\ge c_2
\end{align}$$

for positive constants independent of $n$. There are order $n$ admissible values of $j$, so

$$\begin{align}
\sum_{j=2n}^{3n}|\beta_{jn}^{(\ell)}|^2&\ge\dfrac c n.
\end{align}$$

Summing over $n$ diverges. Thus

$$\begin{align}
\sum_{j,n}|\beta_{jn}^{(\ell)}|^2&=\infty
\end{align}$$

for every fixed angular channel. The product regional and connected global Fock representations are not unitarily equivalent even before the angular sum is taken.

For $L=R=m=1$, square partial sums in the $\ell=0$ channel are

| radial cutoff $N$ | $\sum_{j,n\le N}|\beta_{jn}^{(0)}|^2$ |
|---:|---:|
| 8 | $0.399409$ |
| 16 | $0.608357$ |
| 32 | $0.867725$ |
| 64 | $1.17719$ |
| 128 | $1.53633$ |
| 256 | $1.94478$ |

These values are consistent with the analytic divergence. No power law is inferred from this short sequence.

## 5. The double radial--angular sum

For a real field, the $\ell>0$ channels have degeneracy two. With a common radial and angular cutoff $M$, define

$$\begin{align}
\mathcal B_M={}&\sum_{j,n\le M}|\beta_{jn}^{(0)}|^2\\
&+2\sum_{\ell=1}^M\sum_{j,n\le M}
|\beta_{jn}^{(\ell)}|^2.
\end{align}$$

The angular sum strengthens the divergence. A uniform lower bound follows by taking angular momenta $|\ell|\lesssim n$ and the same band $2n\le j\le3n$. The frequency-ratio factor remains bounded away from zero, while there are order $n$ allowed $j$ values and order $n$ angular values. The contribution per radial $n$ is bounded below by a positive constant. Therefore

$$\begin{align}
\mathcal B_M&\ge cM
\end{align}$$

for sufficiently large $M$.

The numerical partial sums are

| common cutoff $M$ | $\mathcal B_M$ | $\mathcal B_M/M$ |
|---:|---:|---:|
| 8 | $2.91561$ | $0.364451$ |
| 16 | $6.54240$ | $0.408900$ |
| 32 | $14.0279$ | $0.438373$ |
| 64 | $29.2391$ | $0.456862$ |

They support a linear leading divergence in the common-cutoff scheme. The lower-bound argument, rather than the fitted coefficient, is the regulator-robust conclusion.

## 6. Cylinder correlator

With normalized connected radial modes

$$\begin{align}
g_r(x)&=\dfrac1{\sqrt L}
\sin\left[\dfrac{r\pi(x+L)}{2L}\right],
\end{align}$$

the global-vacuum Wightman function is

$$\begin{align}
W(X,X')={}&\dfrac1{2\pi R}
\sum_{\ell\in\mathbb Z}\sum_{r=1}^\infty
\dfrac{g_r(x)g_r(x')}{2\Omega_{r\ell}}\\
&\times e^{-i\Omega_{r\ell}(t-t')}
e^{i\ell(\theta-\theta')}.
\end{align}$$

At finite radial and angular cutoff this is reproduced channel by channel from the canonical covariance. Coincident points, interface traces and derivatives require the same smearing or point-splitting qualifications as in the interval, now with the additional angular ultraviolet sum.

## 7. Verification and claim boundary

The script `numerics/scalar_cylinder.wl` verifies:

- the closed integer/half-integer overlap formula;
- the polar finite-channel symplectic map and Hamiltonian intertwining;
- the channel Bogoliubov identities and pure global-vacuum covariance;
- monotone growth of fixed-channel Hilbert--Schmidt partial sums;
- at-least-linear common-cutoff growth of the double sum;
- stored $N=256$ and $M=64$ numerical benchmarks.

Verified: the connected cylinder spectrum, finite canonical map in every angular channel, global Gaussian covariance and failure of the Shale--Stinespring condition.

Assumptions: the finite channel regulator is the polar orthogonalization of the physical $L^2$ overlap, and the displayed double-sum numbers use a common radial/angular cutoff.

Not verified: a universal coefficient for the linear divergence, regulator-independent cylinder entropy, or interacting cylinder gluing.
