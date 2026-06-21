---
title:
date: 2026-04-15
summary: ""
---

the eom of $\displaystyle{\mathrm{U}(1)}$ gauge theory is

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

and we impose the gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies\partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

## accessibility of the covariant gauge

The covariant gauge condition should be understood as a choice of representative in the gauge-orbit decomposition, not as a prescription that starts from an arbitrary written representative and then performs a gauge transformation while keeping the same naive falloff at every intermediate step. Under

$$\begin{align}
A^{\mu}\mapsto A^{\prime\mu}
=A^{\mu}+\nabla^{\mu}\Lambda ,
\end{align}$$

the divergence shifts as

$$\begin{align}
\nabla_{\mu}A^{\prime\mu}
&=\nabla_{\mu}A^{\mu}+\nabla_{\mu}\nabla^{\mu}\Lambda \\
&=\nabla_{\mu}A^{\mu}+\Box\Lambda .
\end{align}$$

Formally, moving between two representatives in the same orbit amounts to solving

$$\begin{align}
\Box\Lambda=-\nabla_{\mu}A^{\mu}.
\end{align}$$

If one starts from a completely arbitrary off-shell representative and solves this equation directly, the particular solution can contain a slow branch, for example

$$\begin{align}
\Lambda\sim r^{-1}\log r ,
\end{align}$$

whose gradient does not preserve the falloff imposed on $A^\mu$. This does not mean that the covariant gauge slice is unavailable. Rather, it means that the naive representative was not adapted to the field-space split being used.

The gauge-fixed off-shell space is instead organized as

$$\begin{align}
A^\mu=A_{\mathrm{cov}}^\mu+\nabla^\mu\Lambda,
\qquad
\nabla_\mu A_{\mathrm{cov}}^\mu=0,
\end{align}$$

with boundary conditions imposed on the transverse and longitudinal sectors separately. Proper gauge parameters vanish at the boundary. In the normalizable mode sector considered below, this statement can be checked mode by mode by comparing with temporal gauge: the temporal-gauge physical modes and the covariant-gauge physical representatives differ by a gauge parameter with no logarithmic branch, and the proper null directions have

$$\begin{align}
\Lambda=\mathcal{O}(r^{-2}),\qquad r\to\infty .
\end{align}$$

This is the Maxwell analogue of using square-integrable diffeomorphisms in the gravity gauge-fixing problem: the gauge condition defines the transverse representative in the chosen decomposition, while boundary-violating longitudinal branches are simply not part of the proper gauge sector.

take the following ansatz

$$\begin{align}
A^{\mu}(x) & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and insert the gauge condition to the second and third equations, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{r}+\frac{1+3r^{2}}{r}\partial _{r}f^{r}+\left( 1+\frac{\omega ^{2}}{1+r^{2}}-\frac{1+m^{2}}{r^{2}} \right)f^{r} & =\frac{2im}{r}f^{\phi} \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{r}+\left(4+\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)f^{\phi} & =-\frac{2im}{r^{3}}A^{r}
\end{align}$$

introduce

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}f^{r}\pm \frac{1}{2}rf^{\phi}
\end{align}$$

we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi_{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm}=0
\end{align}$$

here $\displaystyle{m_{\pm}^{2}=(m\mp 1)^{2}}$

the asymptotic boundary conditions of $\displaystyle{\Phi _{\pm}}$ are

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}) & \text{ as } & r\to \infty \\
\Phi _{\pm} & =\mathcal{O}(r^{0}) & \text{ as } & r\to 0
\end{align}$$

change variable to $\displaystyle{\tan \rho=r}$ and then to $\displaystyle{z=\cos ^{2}\rho}$, we have

$$\begin{align}
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm}=0
\end{align}$$

the solution with the correct asymptotic behavior is

$$\begin{align}
\Phi _{\pm} & =r^{|m_{\pm}|}(1+r^{2})^{(-|m_{\pm}|-1)/2}{}_{2}F_{1}\left( \frac{1}{2}(|m_{\pm}|-\omega+1), \frac{1}{2}(|m_{\pm}|+\omega+1);1; \frac{1}{1+r^{2}} \right)
\end{align}$$

hypergeometric function should terminate to avoid divergence at $\displaystyle{r=0}$, which requires it truncates to a polynomial, thus

$$\begin{align}
\frac{1}{2}(|m_{\pm}|-\omega+1) & =-n,\quad n\in \mathbb{N} \\
\implies \omega _{n,m} & =1+|m_{\pm}|+2n \\
 & =1+|m\pm 1|+2n
\end{align}$$

$$\begin{align}
\omega[A,A^{*}]=-i
\end{align}$$

which agrees with the spectrum obtained in the Proca field case by setting $\displaystyle{\mu\to 0}$. the normalized solutions are

$$\begin{align}
h_{+,m\geqslant 1,n}^{t} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi n(n+m)} }\left[mr^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(n,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m-1}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h_{+,m\geqslant 1,n}^{r} & =-ie^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-1}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h_{+,m\geqslant 1,n}^{\phi} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-2}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+m,n)}$

$$\begin{align}
h^{t}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1)}$

$$\begin{align}
h^{t}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n-m)} }\left[(mr^{2}+2(m-1))r^{-m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{-m+2}(1+r^{2})^{-(-m+6)/2}P_{n}^{(0,-m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m\leqslant -1,n} & =-ie^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m+1}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1-m)}$

$$\begin{align}
h^{t}_{-,m\geqslant 1,n} & =e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n+m)} }\left[(-mr^{2}-2(m+1))r^{m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m+2}(1+r^{2})^{-(m+6)/2}P_{n}^{(0,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\geqslant 1,n} & =-ie^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m+1}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\geqslant 1,n} & =-e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+m+1,n+1)}$

$$\begin{align}
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1)}$

$$\begin{align}
h^{t}_{-,m\leqslant -1,n} & =e^{-i(-m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi n(n-m)} }\left[-mr^{-m}(1+r^{2})^{-(-m+2)/2}P_{n}^{(-,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{-m}(1+r^{2})^{-(-m+4)/2}P_{n}^{(0,-m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\leqslant -1,n} & =-ie^{-i(-m+2n)t}e^{im\phi} \sqrt{ \frac{(2n-m)^{2}}{8\pi n(n-m)} }r^{-m-1}(1+r^{2})^{m/2}P_{n}^{(0,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\leqslant -1,n} & =-e^{-i(-m+2n)t}e^{im\phi}\sqrt{ \frac{(2n-m)^{2}}{8\pi n(n-m)} }r^{-m-2}(1+r^{2})^{m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n,n-m)}$

# gauge redundancy

actually there are still residual guage redundancy left in the solutions above. solutions with conformal weight $\displaystyle{(h,\bar{h})=(k,\bar{k}),k,\bar{k}=\mathbb{Z}^{+}}$ in both sectors correspond to the same physical state. the conformal weight is defined as

$$\begin{align}
\mathcal{L}_{\xi _{0}}A^{\mu} & =-ihA^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}A^{\mu} & =-i \bar{h}A^{\mu}
\end{align}$$

and the Killing vectors $\displaystyle{\xi}$'s are

$$\begin{align}
\xi _{0} & =\frac{1}{2}\left( \partial _{t}- \partial _{\phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(\partial _{t}+\partial _{\phi}\right)
\end{align}$$

then we have to show

1. $\displaystyle{h^{\mu}_{+,m=0,n}}$ and $\displaystyle{h^{\mu}_{-,m=0,n}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.
1. $\displaystyle{h^{\mu}_{+,m\geqslant 1,n+1}}$ and $\displaystyle{h^{\mu}_{-,m\geqslant1,n}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.
1. $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.

## $\displaystyle{h_{+,m=0,n}^{\mu},h^{\mu}_{-,m=0,n}}$

we first write down these two solutions explicitly

$$\begin{align}
h^{t}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\begin{align}
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

consider the symplectic matrix $\displaystyle{i\Omega[h_{1},h_{2}^{*}]}$ between these two modes, we have

$$\begin{align}
i\Omega[h_{m=0,n},h_{m=0,n}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

write

$$\begin{align}
f_{m=0,n}^{\mu} & =\frac{1}{2}(h_{+,m=0,n}^{\mu}+h_{-,m=0,n}^{\mu}) \\
g_{m=0,n}^{\mu} & =\frac{1}{2}(h_{+,m=0,n}^{\mu}-h_{-,m=0,n}^{\mu}) \\
\implies f_{m=0,n}^{t} & = e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
f_{m=0,n}^{r} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
f_{m=0,n}^{\phi} & =0 \\
g_{m=0,n}^{t} & =0 \\
g_{m=0,n}^{r} & =0 \\
g_{m=0,n}^{\phi} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

the $\displaystyle{f}$ modes are pure gauge, and the $\displaystyle{g}$ modes are physical modes, which is exactly the same as the normalizable modes in the temporal gauge case. the asymptotic behavior of the $\displaystyle{f}$ modes is

$$\begin{align}
f_{m=0,n}^{t} & =\mathcal{O}(r^{-2}) \\
f_{m=0,n}^{r} & =\mathcal{O}(r^{-1}) \\
f_{m=0,n}^{\phi} & =0
\end{align}$$

and the asymptotic behavior of the corresponding gauge parameter is

$$\begin{align}
\Lambda _{m=0,n} & \sim C_{0,n}e^{-i(2n+2)t}
\frac{1}{1+r^{2}}
{}_{2}F_{1}\left(-n,n+2;2;\frac{1}{1+r^{2}}\right) \\
 & =\mathcal{O}(r^{-2})
\end{align}$$

Here the gauge transformation is understood as

$$\begin{align}
A^{\mu}=\nabla ^{\mu}\Lambda=g^{\mu\nu}\partial _{\nu}\Lambda ,
\end{align}$$

so the radial component satisfies $\displaystyle{\partial _{r}\Lambda=A^{r}/(1+r^{2})}$ rather than $\displaystyle{\partial _{r}\Lambda=A^{r}}$. Therefore these $\displaystyle{m=0}$ null modes vanish at the boundary and are proper gauge transformations, not large gauge transformations.

## $\displaystyle{h^{\mu}_{+,m\geqslant 1,n+1}}$ and $\displaystyle{h^{\mu}_{-,m\geqslant1,n}}$

we write these two modes explicitly

$$\begin{align}
h_{+,m\geqslant 1,n+1}^{t} & =e^{-i(2+m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi (1+n)(1+n+m)} }\left[mr^{m}(1+r^{2})^{-(m+2)/2}P_{n+1}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m-1}(1+r^{2})^{-(m+4)/2}P_{n+1}^{(0,m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h_{+,m\geqslant 1,1+n}^{r} & =-ie^{-i(2+m+2n)t}e^{im\phi} \sqrt{ \frac{(2+2n+m)^{2}}{8\pi (1+n)(1+n+m)} }r^{m-1}(1+r^{2})^{-m/2}P_{1+n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h_{+,m\geqslant 1,1+n}^{\phi} & =e^{-i(2+m+2n)t}e^{im\phi} \sqrt{ \frac{(2+2n+m)^{2}}{8\pi (1+n)(1+n+m)} }r^{m-2}(1+r^{2})^{-m/2}P_{1+n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\begin{align}
h^{t}_{-,m\geqslant 1,n} & =e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n+m)} }\left[(-mr^{2}-2(m+1))r^{m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m+2}(1+r^{2})^{-(m+6)/2}P_{n}^{(0,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\geqslant 1,n} & =-ie^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m+1}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\geqslant 1,n} & =-e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

similarly, consider the symplectic matrix between these two modes

$$\begin{align}
i\Omega[h_{m\geqslant 1,n_{1}},h_{m\geqslant 1,n_{2}}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

A convenient pure-gauge representative of this null direction can be written uniformly. Let

$$\begin{align}
p&=|m|, & N&\geq 1, & \omega&=p+2N .
\end{align}$$

For the $\displaystyle{m\geq 1}$ pair above, $\displaystyle{N=n+1}$. Up to an overall normalization,

$$\begin{align}
\Lambda _{m,N}
&=C_{m,N}e^{-i(p+2N)t+im\phi}
\frac{r^{p}}{(1+r^{2})^{p/2+1}}
{}_{2}F_{1}\left(1-N,N+p+1;2;\frac{1}{1+r^{2}}\right),
\end{align}$$

and

$$\begin{align}
A^{\mu}_{\text{null}}&=\nabla ^{\mu}\Lambda _{m,N}, &
\Box \Lambda _{m,N}&=0 .
\end{align}$$

Its boundary behavior is

$$\begin{align}
\Lambda _{m,N}
&=C_{m,N}e^{-i(p+2N)t+im\phi}
\left(r^{-2}+\mathcal{O}(r^{-4})\right),
& r&\to\infty .
\end{align}$$

Thus these $\displaystyle{N\geq1}$ null modes are proper gauge transformations. They are not large gauge transformations, since the gauge parameter vanishes at the boundary.

## $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$

similarly, for $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$, consider the symplectic matrix between these two modes

$$\begin{align}
i\Omega[h_{m\leqslant -1,n_{1}},h_{m\leqslant -1,n_{2}}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

This is described by the same gauge parameter $\displaystyle{\Lambda _{m,N}}$ above, now with $\displaystyle{m\leq -1}$, $\displaystyle{p=-m}$, and $\displaystyle{N=n+1}$. Again

$$\begin{align}
\Lambda _{m,N}
&=C_{m,N}e^{-i(p+2N)t+im\phi}
\left(r^{-2}+\mathcal{O}(r^{-4})\right),
& r&\to\infty ,
\end{align}$$

so this null direction is also a proper gauge transformation rather than a large gauge transformation.

# edge mode

besides the normalizable modes solved above, the following modes are not discussed

$$\begin{align}
h_{+,m\geqslant 1,n=0}^{t} & =e^{-im(t-\phi)}r^{m}(1+r^{2})^{-(m+2)/2} \\
h_{+,m\geqslant 1,n=0}^{r} & =-ie^{-im(t-\phi)}r^{m-1}(1+r^{2})^{-m/2} \\
h_{+,m\geqslant 1,n=0}^{\phi} & =e^{-im(t-\phi)}r^{m-2}(1+r^{2})^{-m/2}
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(m,0)}$, and

$$\begin{align}
h^{t}_{-,m\leqslant -1,n=0} & =e^{im(t+\phi)}r^{-m}(1+r^{2})^{-(-m+2)/2} \\
h^{r}_{-,m\leqslant -1,n=0} & =-ie^{im(t+\phi)}r^{-m-1}(1+r^{2})^{m/2} \\
h^{\phi}_{-,m\leqslant -1,n=0} & =-e^{im(t+\phi)}r^{-m-2}(1+r^{2})^{m/2}
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(0,-m)}$. these modes are not normalizable under the usual inner product (since the $\displaystyle{0}$ factor in the denominator, so we drop them in the following analysis).

the field strength of these modes vanishes identically, thus they are pure gauge configurations. More explicitly, for $\displaystyle{m\geq 1}$,

$$\begin{align}
\Lambda _{+,m}&=\frac{1}{im}e^{-im(t-\phi)}\left(\frac{r}{\sqrt{1+r^{2}}}\right)^{m}, &h^{\mu}_{+,m,n=0}&=\nabla ^{\mu}\Lambda _{+,m},
\end{align}$$

while for $\displaystyle{m\leq -1}$,

$$\begin{align}
\Lambda _{-,m}&=\frac{1}{i(-m)}e^{im(t+\phi)}\left(\frac{r}{\sqrt{1+r^{2}}}\right)^{-m}, &h^{\mu}_{-,m,n=0}&=\nabla ^{\mu}\Lambda _{-,m}.
\end{align}$$

These are large gauge transformations because the gauge parameters approach nonzero functions on the boundary. This is the distinction between the $\displaystyle{n=0}$ edge modes and the $\displaystyle{N\geq1}$ null modes above: both are pure gauge in the bulk, but only the $\displaystyle{n=0}$ edge modes have nonvanishing boundary gauge parameters.

# zero energy modes

for modes with $\displaystyle{\omega =0}$, we start from the eom and the gauge condition with all time derivatives dropped

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t} & =0 \\
\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0 \\
\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

insert the gauge condition to the second and the third equations, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t} & =0 \\
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1+3r^{2}}{r}\partial _{r}A^{r}+A^{r}-\frac{1}{r^{2}}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r} & =\frac{2}{r}\partial _{\phi}A^{\phi} \\
(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{\phi} & =-\frac{2}{r^{3}}\partial _{\phi}A^{r}
\end{align}$$

here $\displaystyle{A^{t}}$ decouples from other components, and the equation for $\displaystyle{A^{r}}$ and $\displaystyle{A^{\phi}}$ are the same as before with $\displaystyle{\omega =0}$. we can still introduce

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}A^{r}\pm \frac{1}{2}rA^{\phi}
\end{align}$$

and obtain

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi _{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm} & =0 \\
\implies 4z(1-z)\partial _{z}^{2}f^{t}-4\partial _{z}f^{t}+\left( \frac{4}{z}-\frac{m^{2}}{1-z} \right)f^{t} & =0\\
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm} & =0
\end{align}$$

the solutions of these equations are not regular at $\displaystyle{r=0}$, so there is no zero energy modes.

# alternative boundary condition

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi_{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm} & =0 \\
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm} & =0
\end{align}$$

we can also impose a looser boundary condition for $\displaystyle{\Phi _{\pm}}$ at $\displaystyle{r\to \infty}$ as

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}\log r)
\end{align}$$

take the same ansatz as before, we arrive at the same hypergeometric equation

$$\begin{align}
z(1-z)w''+(1-(|m_{\pm}|+2)z)w'-\frac{1}{4}((|m_{\pm}|+1)^{2}-\omega ^{2})w=0
\end{align}$$

at $\displaystyle{z=1}$ ($\displaystyle{r=0}$), suppose the asymptotic behavior of the solution is

$$\begin{align}
w(z) & \sim(1-z)^{\alpha}
\end{align}$$

inserting this ansatz into the hypergeometric equation, we have the indicial equation

$$\begin{align}
\alpha(\alpha-1)+(|m_{\pm}|+1)\alpha & =0 \\
\implies \alpha & =0,-|m_{\pm}|
\end{align}$$

so the two independent solutions behave as $\displaystyle{w\sim (1-z)^{0}\sim 1}$ and $\displaystyle{w\sim (1-z)^{-|m_{\pm}|}\sim r^{-2|m_{\pm}|}}$. combined with the prefactor $\displaystyle{r^{|m_{\pm}|}}$, the two solutions for $\displaystyle{\Phi _{\pm}}$ behave as

$$\begin{align}
\Phi _{\pm}^{(1)} & \sim r^{|m_{\pm}|} \\
\Phi _{\pm}^{(2)} & \sim r^{-|m_{\pm}|}
\end{align}$$

regularity at $\displaystyle{r=0}$ requires us to discard the second solution.

actually the solutions around $\displaystyle{z=1}$ does not necessarily match solutions around $\displaystyle{z=0}$...

---

as a summary, the normalized solutions are

$$\begin{align}
h_{+,m\geqslant 1,n}^{t} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi n(n+m)} }\left[mr^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(n,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m-1}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h_{+,m\geqslant 1,n}^{r} & =-ie^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-1}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h_{+,m\geqslant 1,n}^{\phi} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-2}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{t}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{t}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n-m)} }\left[(mr^{2}+2(m-1))r^{-m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{-m+2}(1+r^{2})^{-(-m+6)/2}P_{n}^{(0,-m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m\leqslant -1,n} & =-ie^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m+1}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{t}_{-,m\geqslant 1,n} & =e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n+m)} }\left[(-mr^{2}-2(m+1))r^{m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m+2}(1+r^{2})^{-(m+6)/2}P_{n}^{(0,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\geqslant 1,n} & =-ie^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m+1}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\geqslant 1,n} & =-e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and the symplectic form between these modes are

$$\begin{align}
\Omega[h^{(+)}_{\pm,m_{1},n_{1}},h^{(-)}_{\pm,m_{2},n_{2}}] & =-i\delta _{n_{1},n_{2}}\delta _{m_{1},m_{2}} \\
\Omega[h^{(+)}_{+,m_{1}\geqslant 1,n_{1}},h^{(-)}_{-,m_{2}\geqslant 1,n_{2}}] & =i\delta _{m_{1}m_{2}}\delta _{n_{1}-1,n_{2}} \\
\Omega[h^{(+)}_{+,m_{1}=0,n_{1}},h^{(-)}_{-,m_{2}=0,n_{2}}] & =i\delta _{n_{1},n_{2}} \\
\Omega[h^{(+)}_{+,m_{1}\leqslant -1,n_{1}},h^{(-)}_{-,m_{2}\leqslant -1,n_{2}}]& =i\delta _{m_{1},m_{2}}\delta _{n_{1},n_{2}-1}
\end{align}$$
