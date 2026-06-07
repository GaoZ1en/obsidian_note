---
title: NMG
date: 2026-06-06
summary: "Takes the new massive gravity limit of the GMG linearized TT equation and records the admissible massive and critical logarithmic modes on unit AdS3."
---

# New massive gravity

This note takes the $\mu\to\infty$ limit of the GMG discussion, with the same unit-radius AdS$_3$ background and lower-index tensor convention. All indices are moved with $g^{(0)}_{\mu\nu}$, and all covariant derivatives are $\nabla^{(0)}$.

## Action

For the unit-radius AdS$_3$ expansion set

$$\lambda=-1-\frac{1}{4m^2}.$$

The NMG action is

$$I_{\rm NMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g}\left[\mathcal L_{\rm PG}+\frac{1}{m^2}\mathcal L_{\rm NMG}\right],$$

with

$$\begin{align}
\mathcal L_{\rm PG}&=R+2,\\
\mathcal L_{\rm NMG}&=\frac{1}{2}-R_{\mu\nu}R^{\mu\nu}+\frac{3}{8}R^2.
\end{align}$$

## Linearized eom

Define

$$(Eh)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.$$

In TT gauge,

$$\nabla^{(0)\mu}h_{\mu\nu}=0,\qquad h=0.$$

Taking the $\mu\to\infty$ limit of the GMG TT equation gives

$$\mathcal E_{\rm NMG}^{\rm TT}{}_{\mu\nu}=\frac{1}{2m^2}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right],$$

so the TT equation is

$$(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right]=0.$$

On TT tensors in the unit AdS$_3$ background,

$$E^2h_{\mu\nu}=(\nabla^{(0)2}+3)h_{\mu\nu}.$$

## First-order factorization

Define

$$\begin{align}
(D^L)_\mu{}^\nu&=\delta_\mu{}^\nu+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^R)_\mu{}^\nu&=\delta_\mu{}^\nu-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^{m_i})_\mu{}^\nu&=\delta_\mu{}^\nu+\frac{1}{m_i}\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\qquad i=1,2.
\end{align}$$

In the $\mu\to\infty$ limit, the GMG roots obey

$$m_1m_2=-m^2-\frac{1}{2},\qquad m_1+m_2=0.$$

For $m^2+\frac{1}{2}>0$, this gives

$$m_+=\sqrt{m^2+\frac{1}{2}},\qquad m_-=-\sqrt{m^2+\frac{1}{2}}.$$

Then

$$(D^L D^R D^{m_+}D^{m_-}h)_{\mu\nu}=0$$

is equivalent to the TT equation above. Explicitly,

$$D^L D^R D^{m_+}D^{m_-}h=\frac{1}{m^2+\frac{1}{2}}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h-\left(m^2-\frac{5}{2}\right)h\right],$$

where the last line suppresses tensor indices.

## Highest-weight modes

The admissible massive branches are the $\mu\to\infty$ limit of the positive-$m^2$ GMG region. The two massive primaries are

$$\begin{align}
h^{(-)}_{\frac{m_+-1}{2},\frac{m_++3}{2},\mu\nu}&\propto \frac{e^{-i(m_++3)t}}{(1+r^2)^{(m_++3)/2}}\xi_{1,\mu}\xi_{1,\nu},\\
h^{(+)}_{\frac{3-m_-}{2},\frac{-1-m_-}{2},\mu\nu}&\propto \frac{e^{-i(3-m_-)t}}{(1+r^2)^{(3-m_-)/2}}\bar\xi_{1,\mu}\bar\xi_{1,\nu}.
\end{align}$$

Both have

$$h+\bar h=m_++1.$$

Thus the Brown-Henneaux falloff condition keeps the massive primaries for

$$m_+\geqslant 1\Longleftrightarrow m^2\geqslant\frac{1}{2}.$$

For $m^2>\frac{1}{2}$, the TT solution is the sum of the $D^L$, $D^R$, $D^{m_+}$, and $D^{m_-}$ sectors. The two massive sectors are exchanged by the parity symmetry of NMG.

## Critical point

At

$$m^2=\frac{1}{2},$$

the two massive factors simultaneously coincide with the two massless factors:

$$m_+=1,\qquad m_-=-1,$$

and

$$(D^L D^R D^{m_+}D^{m_-}h)_{\mu\nu}\bigg|_{m^2=\frac{1}{2}}=((D^L)^2(D^R)^2h)_{\mu\nu}.$$

Use the logarithmic factor

$$y(t,r)=-it-\frac{1}{2}\log(1+r^2).$$

With the lower-index mode convention used here, the two logarithmic partners are

$$h^{\log,L}_{\mu\nu}=y\,h^{(-)}_{0,2,\mu\nu},\qquad h^{\log,R}_{\mu\nu}=y\,h^{(+)}_{2,0,\mu\nu}.$$

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
