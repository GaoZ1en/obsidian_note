---
title: NMG
date: 2026-06-06
summary: "Takes the new massive gravity limit of the GMG linearized TT equation and records the admissible massive modes, critical logarithmic modes, symplectic form, and normalization on unit AdS3."
---

# New massive gravity

This note takes the $\mu\to\infty$ limit of the GMG discussion, with the same unit-radius AdS$_3$ background and lower-index tensor convention. All indices are moved with $g^{(0)}_{\mu\nu}$, and all covariant derivatives are $\nabla^{(0)}$.

## Action

For the unit-radius AdS$_3$ expansion set

$$\begin{align}
\lambda=-1-\frac{1}{4m^2}.
\end{align}$$

The NMG action is

$$\begin{align}
I_{\rm NMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g}\left[\mathcal L_{\rm PG}+\frac{1}{m^2}\mathcal L_{\rm NMG}\right],
\end{align}$$

with

$$\begin{align}
\mathcal L_{\rm PG}&=R+2,\\
\mathcal L_{\rm NMG}&=\frac{1}{2}-R_{\mu\nu}R^{\mu\nu}+\frac{3}{8}R^2.
\end{align}$$

## Linearized eom

Define

$$\begin{align}
(Eh)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.
\end{align}$$

In TT gauge,

$$\begin{align}
\nabla^{(0)\mu}h_{\mu\nu}=0,\qquad h=0.
\end{align}$$

Taking the $\mu\to\infty$ limit of the GMG TT equation gives

$$\begin{align}
\mathcal E_{\rm NMG}^{\rm TT}{}_{\mu\nu}=\frac{1}{2m^2}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right],
\end{align}$$

so the TT equation is

$$\begin{align}
(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right]=0.
\end{align}$$

On TT tensors in the unit AdS$_3$ background,

$$\begin{align}
E^2h_{\mu\nu}=(\nabla^{(0)2}+3)h_{\mu\nu}.
\end{align}$$

## First-order factorization

Define

$$\begin{align}
(D^L)_\mu{}^\nu&=\delta_\mu{}^\nu+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^R)_\mu{}^\nu&=\delta_\mu{}^\nu-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^{m_i})_\mu{}^\nu&=\delta_\mu{}^\nu+\frac{1}{m_i}\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\qquad i=1,2.
\end{align}$$

In the $\mu\to\infty$ limit, the GMG roots obey

$$\begin{align}
m_1m_2=-m^2-\frac{1}{2},\qquad m_1+m_2=0.
\end{align}$$

For $m^2+\frac{1}{2}>0$, this gives

$$\begin{align}
m_+=\sqrt{m^2+\frac{1}{2}},\qquad m_-=-\sqrt{m^2+\frac{1}{2}}.
\end{align}$$

Then

$$\begin{align}
(D^L D^R D^{m_+}D^{m_-}h)_{\mu\nu}=0
\end{align}$$

is equivalent to the TT equation above. Explicitly,

$$\begin{align}
D^L D^R D^{m_+}D^{m_-}h=\frac{1}{m^2+\frac{1}{2}}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h-\left(m^2-\frac{5}{2}\right)h\right],
\end{align}$$

where the last line suppresses tensor indices.

## Highest-weight modes

The admissible massive branches are the $\mu\to\infty$ limit of the positive-$m^2$ GMG region. The two massive primaries are

$$\begin{align}
h^{(-)}_{\frac{m_+-1}{2},\frac{m_++3}{2},\mu\nu}&\propto \frac{e^{-i(m_++3)t}}{(1+r^2)^{(m_++3)/2}}\xi_{1,\mu}\xi_{1,\nu},\\
h^{(+)}_{\frac{3-m_-}{2},\frac{-1-m_-}{2},\mu\nu}&\propto \frac{e^{-i(3-m_-)t}}{(1+r^2)^{(3-m_-)/2}}\bar\xi_{1,\mu}\bar\xi_{1,\nu}.
\end{align}$$

Both have

$$\begin{align}
h+\bar h=m_++1.
\end{align}$$

Thus the Brown-Henneaux falloff condition keeps the massive primaries for

$$\begin{align}
m_+\geqslant 1\Longleftrightarrow m^2\geqslant\frac{1}{2}.
\end{align}$$

For $m^2>\frac{1}{2}$, the TT solution is the sum of the $D^L$, $D^R$, $D^{m_+}$, and $D^{m_-}$ sectors. The two massive sectors are exchanged by the parity symmetry of NMG.

## Critical point

At

$$\begin{align}
m^2=\frac{1}{2},
\end{align}$$

the two massive factors simultaneously coincide with the two massless factors:

$$\begin{align}
m_+=1,\qquad m_-=-1,
\end{align}$$

and

$$\begin{align}
(D^L D^R D^{m_+}D^{m_-}h)_{\mu\nu}\bigg|_{m^2=\frac{1}{2}}=((D^L)^2(D^R)^2h)_{\mu\nu}.
\end{align}$$

Use the logarithmic factor

$$\begin{align}
y(t,r)=-it-\frac{1}{2}\log(1+r^2).
\end{align}$$

With the lower-index mode convention used here, the two logarithmic partners are

$$\begin{align}
h^{\log,L}_{\mu\nu}=y\,h^{(-)}_{0,2,\mu\nu},\qquad h^{\log,R}_{\mu\nu}=y\,h^{(+)}_{2,0,\mu\nu}.
\end{align}$$

They satisfy the Jordan-chain relations

$$\begin{align}
D^L(yh^{(-)}_{0,2})&\propto h^{(-)}_{0,2},& (D^L)^2(yh^{(-)}_{0,2})&=0,\\
D^R(yh^{(+)}_{2,0})&\propto h^{(+)}_{2,0},& (D^R)^2(yh^{(+)}_{2,0})&=0.
\end{align}$$

The logarithmic modes also satisfy the TT gauge condition,

$$\begin{align}
g^{(0)\mu\nu}h^{\log,L}_{\mu\nu}&=0,& \nabla^{(0)\mu}h^{\log,L}_{\mu\nu}&=0,\\
g^{(0)\mu\nu}h^{\log,R}_{\mu\nu}&=0,& \nabla^{(0)\mu}h^{\log,R}_{\mu\nu}&=0.
\end{align}$$

There is no logarithm-squared primary in the finite-$m^2$ NMG limit. Each massless factor has multiplicity two at $m^2=\frac{1}{2}$, and the GMG massive-massive double-root branch at finite $\mu$ is pushed to $m^2\to-\infty$ when $\mu\to\infty$. The formal equation $m_+=m_-$ gives $m^2=-\frac{1}{2}$, where the first-order factors $D^{m_i}$ are not defined and the Brown-Henneaux falloff condition is not satisfied.

## TT gauge fixed action, symplectic form

The NMG quadratic action and symplectic form are the $\mu\to\infty$ limit of the GMG result. The Chern-Simons contribution is absent, while the pure-gravity and curvature-squared contributions remain.

Now impose the TT gauge

$$\begin{align}
g^{(0)\mu\nu}h_{\mu\nu}&=0,&\nabla^{(0)\mu}h_{\mu\nu}&=0.
\end{align}$$

The pure-gravity contribution becomes

$$\begin{align}
\mathcal L_{\rm PG,TT}^{(0)}&=-4,\\
\mathcal L_{\rm PG,TT}^{(1)}&=0,\\
\mathcal L_{\rm PG,TT}^{(2)}&=2h_{\mu\nu}h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}-\frac{1}{2}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The curvature-squared contribution becomes

$$\begin{align}
\mathcal L_{\rm NMG,TT}^{(0)}&=2,\\
\mathcal L_{\rm NMG,TT}^{(1)}&=0,\\
\mathcal L_{\rm NMG,TT}^{(2)}&=-2h_{\mu\nu}h^{\mu\nu}-\frac{3}{2}h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}+\frac{1}{4}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}\\
&\quad-\frac{3}{8}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}-\frac{1}{4}\nabla^{(0)}_\rho\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)\sigma}h_{\mu\nu}.
\end{align}$$

The total NMG symplectic form is

$$\begin{align}
\omega_{\rm total}^{\rm NMG}&=\omega_{\rm PG}+\frac{1}{m^2}\omega_{\rm NMG},\\
\omega_X&=\frac{1}{16\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\,\omega_X^\mu
\end{align}$$

where the second term denotes the curvature-squared contribution. The pure-gravity current is

$$\begin{align}
\omega_{\rm PG}^\mu=-\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu,
\end{align}$$

and the curvature-squared current is

$$\begin{align}
\omega_{\rm NMG}^\mu&=\frac{9}{4}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}+\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\Box\delta h_{\nu\rho}\\
&\quad+\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu-\frac{1}{2}\nabla^{(0)\mu}\delta h^{\nu\rho}\wedge\Box\delta h_{\nu\rho}.
\end{align}$$

## Symplectic inner product

Use the same normalization convention

$$\begin{align}
\omega[h,h^*]=-i.
\end{align}$$

Let $\Delta=h+\bar h$. The NMG radial integrals are the $\mu\to\infty$ limit of the GMG integrals,

$$\begin{align}
I_{\rm PG}&=-i\frac{\Delta-1}{8(\Delta+1)},\\
I_{\rm NMG}&=i\frac{(\Delta-1)(4\Delta^2-8\Delta+1)}{16(\Delta+1)}.
\end{align}$$

Therefore the two parity-related primaries have the same norm,

$$\begin{align}
\omega[h^{(\sigma)}_{h,\bar h},h^{(\sigma)*}_{h,\bar h}]&=\frac{i}{128G(\Delta+1)}F^{\rm NMG}(\Delta),\\
F^{\rm NMG}(\Delta)&=-2(\Delta-1)+\frac{\Delta-1}{m^2}(4\Delta^2-8\Delta+1).
\end{align}$$

For a non-null primary, the overall coefficient $C$ in $C\,h^{(\sigma)}_{h,\bar h}$ is fixed by

$$\begin{align}
|C|^2=-\frac{128G(\Delta+1)}{F^{\rm NMG}(\Delta)}
\end{align}$$

when the right-hand side is positive in the chosen convention. On the massive branches with $\Delta=m_++1$ and $m_+^2=m^2+\frac{1}{2}$, this function reduces to

$$\begin{align}
F^{\rm NMG}(m_++1)=m_+\left(2-\frac{1}{m^2}\right).
\end{align}$$

At the critical point, let $\Delta_*$ be the degenerate weight and define

$$\begin{align}
h^{(\sigma)}_{\log,\mu\nu}=yh^{(\sigma)}_{\Delta_*,\mu\nu}=\partial_\Delta h^{(\sigma)}_{\Delta,\mu\nu}\big|_{\Delta=\Delta_*},\qquad H^{(\sigma)}=(h^{(\sigma)}_{\Delta_*},h^{(\sigma)}_{\log}).
\end{align}$$

The limiting GMG double-root matrix gives

$$\begin{align}
\omega[H_i^{(\sigma)},H_j^{(\sigma)*}]&=\frac{i}{256G(\Delta_*+1)^2}\begin{pmatrix}
2(\Delta_*+1)F^{\rm NMG}(\Delta_*) & A^{\rm NMG}(\Delta_*)\\
A^{\rm NMG}(\Delta_*) & \dfrac{B^{\rm NMG}(\Delta_*)}{\Delta_*+1}
\end{pmatrix},\\
A^{\rm NMG}(\Delta)&=(\Delta+1)\frac{\mathrm{d}F^{\rm NMG}}{\mathrm{d}\Delta}-F^{\rm NMG}(\Delta),\\
B^{\rm NMG}(\Delta)&=4+\frac{2}{m^2}(4\Delta^2+8\Delta-9).
\end{align}$$

At $m^2=\frac{1}{2}$, $\Delta_*=2$. For the two critical branches

$$\begin{align}
H^L=(h^{(-)}_{0,2},h^{\log,L}),\qquad H^R=(h^{(+)}_{2,0},h^{\log,R}),
\end{align}$$

the non-vanishing inner products are

$$
\omega[H_i^L,H_j^{L*}]=\omega[H_i^R,H_j^{R*}]=\frac{i}{144G}\begin{pmatrix}0&3\\3&2\end{pmatrix},
$$

while the mixed $L/R$ pairings vanish by the angular integral.
