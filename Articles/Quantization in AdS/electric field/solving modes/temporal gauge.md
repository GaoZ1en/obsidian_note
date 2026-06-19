---
title: temporal gauge
date: 2026-04-15
summary: ""
---

the equations of motion are

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

the asymptotic behavior of $\displaystyle{A}$ is chosen to be

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}), & A^{r} & =o(r^{1}), & A^{\phi} & =\mathcal{O}(r^{-2}) \\
A_{t} & =\mathcal{O}(r^{0}), & A_{r} & =o(r^{-1}), & A_{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

now we choose the temporal gauge $A_{t}=0$, the asymptotic behavior of $\displaystyle{A^{r}}$ and $\displaystyle{A^{\phi}}$ remains unchanged. the equations of motion become

$$\begin{align}
\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

---

the temporal gauge can always be imposed for a general offshell configuration $\displaystyle{A_{\mu}}$. consider the gauge parameter

$$\begin{align}
\Lambda & =-\int ^{t}\mathrm{d}tA_{t}
\end{align}$$

then

$$\begin{align}
A_{r}' & =A_{r}-\int ^{t}\mathrm{d}t\partial _{r}A_{t} \\
 & =o(r^{-1})-\int ^{t}\mathrm{d}t\partial _{r}(O(r^{0})) \\
 & =o(r^{-1})+o(r^{-1}) \\
 & =o(r^{-1}) \\
A_{\phi}' & =A_{\phi}-\int ^{t}\mathrm{d}t\partial _{\phi}A_{t} \\
 & =O(r^{0})
\end{align}$$

the asymptotic behavior remains unchanged.

---

by introduce a scalar function $\displaystyle{\Psi}$ as

$$\begin{align}
A^t=0,\qquad A^r=\frac{1+r^2}{r}\partial_\phi \Psi,\qquad A^\phi=-\frac{1+r^2}{r}\partial_r\Psi 
\end{align}$$

---

this choice fixes the residual gauge redundancies. in other words, we have impose the gauge condition *at a fixed time*

$$\begin{align}
\mathcal{C}[A]=\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r}+\partial _{\phi}A^{\phi} & =0 \\
\implies \partial _{r}\left(\frac{r}{1+r^{2}}A^{r}\right)+\partial _{\phi}\left(\frac{r}{1+r^{2}}A^{\phi}\right) & =0 \\
\implies A^{r}=\frac{1+r^{2}}{r}\partial _{\phi}\Psi,A^{\phi}=-\frac{1+r^{2}}{r}\partial _{r}\Psi
\end{align}$$

and by time evolution this gauge choice holds for arbitrary time.

for a general offshell configuration $\displaystyle{A_{\mu}}$ that satisfies the temporal gauge $\displaystyle{A_{t}=0}$. consider a gauge parameter $\displaystyle{\Lambda(r,\phi)}$

$$\begin{align}
\left[ (1+r^2)\partial_r^2+\frac{1+r^{2}}{r}\partial_r+\frac1{r^2}\partial_\phi^2 \right]\Lambda(r,\phi) & =-\mathcal{C}[A]
\end{align}$$

take a Fourier transformation

$$\begin{align}
\Lambda & =\sum ^{\infty}_{m=-\infty} e^{im\phi}\lambda _{m}(r) \\
\mathcal{C}[A] & =\sum ^{\infty}_{m=-\infty}e^{im\phi}C_{m}(r)
\end{align}$$

then

$$\begin{align}
\left[ (1+r^{2})\partial _{r}^{2}+\frac{1+r^{2}}{r}\partial _{r}-\frac{m^{2}}{r^{2}} \right]\lambda _{m} & =-C_{m}=o(r^{0})
\end{align}$$

this equation is always solvable, and $\displaystyle{\Lambda}$ will not change the asymptotic behavior.

---

the eoms can be rewritten as

$$\begin{align}
\frac{1+r^{2}}{r}\partial _{\phi}(\mathcal{D}\Psi) & =0 \\
-\left( \frac{1+r^{2}}{r}\partial _{r}+2 \right)(\mathcal{D}\Psi) & =0 \\
\implies \mathcal{D}\Psi & =0
\end{align}$$

---

in fact the second equation only implies

$$\begin{align}
\mathcal{D}\Psi & =\frac{C(t)}{1+r^{2}}
\end{align}$$

by using the redundancy of the parameterization

$$\begin{align}
\Psi & \to \Psi+q(t)
\end{align}$$

where $\displaystyle{q(t)}$ satisfies

$$\begin{align}
\mathcal{D}q=-\frac{1}{1+r^{2}}\ddot{q} & =\frac{C(t)}{1+r^{2}} \\
\implies q & =-\int ^{t}\mathrm{d}t_{1}\int ^{t_{1}}\mathrm{d}t_{2}C(t_{2})+at+b
\end{align}$$

we have

$$\begin{align}
\mathcal{D}\Psi=0
\end{align}$$

---

where

$$\begin{align}
\mathcal{D}\Psi & =(1+r^{2})\partial _{r}^{2}\Psi+\frac{1+3r^{2}}{r}\partial _{r}\Psi-\frac{1}{1+r^{2}}\partial _{t}^{2}\Psi+\frac{1}{r^{2}}\partial _{\phi}^{2}\Psi
\end{align}$$

the solutions can be written in a more compact form for all $\displaystyle{m}$ as

$$\begin{align}
\Psi_{nm}=C_{nm} e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^2)^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}=2n+2+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z}
\end{align}$$
–––
the symplectic form is given by

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu} \\
 & =\dots
\end{align}$$

the normalization constant is determined by the symplectic form as

$$\begin{align}
\omega[A,A^{*}] & =-i
\end{align}$$

thus the normalization constant is given by

$$\begin{align}
C_{nm} & =\sqrt{ \frac{(n+|m|+1)}{2\pi \omega _{nm}^{2}(n+1)} }
\end{align}$$

the asymptotic behavior of these solutions are

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}), & A^{r} & =\mathcal{O}(r^{-1}), & A^{\phi} & =\mathcal{O}(r^{-2}) \\
A_{t} & =\mathcal{O}(r^{0}), & A_{r} & =\mathcal{O}(r^{-3}), & A_{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

## zero energy modes

after the gauge fixing, the eom can be written as

$$\begin{align}
\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

for zero energy modes, we have $\displaystyle{A^{\mu}(t,r,\phi)=A^{\mu}(r,\phi)}$, and the eom becomes

$$\begin{align}
\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

take the fourier transformation

$$\begin{align}
A^{\mu} & =e^{im\phi}f^{\mu}(r)
\end{align}$$

the eom becomes

$$\begin{align}
-\frac{m^{2}}{r^{2}}f^{r}-im(1+r^{2})\partial _{r}f^{\phi}-\frac{2im(1+r^{2})}{r}f^{\phi} & =0 \\
-\frac{im}{r^{2}}\partial _{r}f^{r}+\frac{im}{r^{3}}f^{r}+(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0
\end{align}$$

For $m=0$, the first equation vanishes identically, and the second equation becomes

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0 .
\end{align}$$

Thus

$$\begin{align}
f^{r} & =h_0(r), \\
f^{\phi} & =\frac{C_1}{r^2}+C_2\frac{\log(1+r^2)}{r^2},
\end{align}$$

where $h_0(r)$ is arbitrary. The arbitrary $f^r$ branch is generated by the residual gauge transformation

$$\begin{align}
\Lambda_0(r) & =\int^r \frac{h_0(\rho)}{1+\rho^2}\,\mathrm{d}\rho .
\end{align}$$

For $m\neq 0$, the first equation gives

$$\begin{align}
f^r
& =
-\frac{ir^2(1+r^2)}{m}
\left(\partial_r f^\phi+\frac{2}{r}f^\phi\right).
\end{align}$$

Substituting this expression into the second equation gives an identity:

$$\begin{align}
&-\frac{im}{r^{2}}\partial _{r}f^{r}
+\frac{im}{r^{3}}f^{r}
+(1+r^{2})\partial _{r}^{2}f^{\phi}
+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}
+4f^{\phi}
=0 .
\end{align}$$

Therefore $f^\phi$ is arbitrary, and the general $m\neq0$ solution is

$$\begin{align}
f^\phi & =g_m(r), \\
f^r
& =
-\frac{ir^2(1+r^2)}{m}
\left(g_m'(r)+\frac{2}{r}g_m(r)\right).
\end{align}$$

Equivalently, defining

$$\begin{align}
\lambda_m(r) & =\frac{r^2}{im}g_m(r),
\end{align}$$

we have

$$\begin{align}
f^r & =(1+r^2)\lambda_m'(r), &
f^\phi & =\frac{im}{r^2}\lambda_m(r).
\end{align}$$

Thus every $m\neq0$ zero-energy solution of the static equations is locally a residual pure gauge mode,

$$\begin{align}
\Lambda(r,\phi) & =e^{im\phi}\lambda_m(r), &
A_\mu & =\partial_\mu \Lambda .
\end{align}$$

---

now we want change to the covariant gauge. however the inverse process is simpler to achieve. 
