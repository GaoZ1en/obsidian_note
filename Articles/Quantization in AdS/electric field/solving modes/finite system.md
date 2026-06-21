---
title: finite system
date: 2026-04-15
summary: ""
---

in this note we will analysis the $\displaystyle{\mathrm{U}(1)}$ gauge theory defined in a finite $\displaystyle{\mathrm{AdS}_{3}}$ spacetime. the spacetime truncated at $\displaystyle{r=r_{0}}$ and the boundary condition is

$$\begin{align}
A^{t}|_{r=r_{0}}=0 \\
A^{\phi}|_{r=r_{0}}=0
\end{align}$$

and no requirement for $\displaystyle{A^{r}}$. the metric is chosen as

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}, r\leqslant r_{0}
\end{align}$$

and the eom is given by

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =0 \\
\implies (1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

since the system is no longer conformally invariant, we cannot impose covariant gauge condition $\displaystyle{\nabla _{\mu}A^{\mu}=0}$.

# radial gauge (wrong)

however, we can choose the radial gauge to simplify the analysis.

$$\begin{align}
A^{r}=0
\end{align}$$

this gauge can always be chosen since for any configuration $\displaystyle{A_{\mu}}$ that satisfies the eom and boundary conditions, we can always find a gauge transformation $\displaystyle{\Lambda}$ such that $\displaystyle{A'_{\mu}=A_{\mu}+\nabla _{\mu}\Lambda}$ that satisfies $\displaystyle{A'_{r}=0}$ and the same boundary conditions, i.e.,

$$\begin{align}
\Lambda & =-\int _{r_{0}}^{r}A_{r}(t,r',\phi )\mathrm{d}r'
\end{align}$$

which is well-defined since the spacetime is topologically trivial in our case. after imposing the radial gauge, the eom becomes

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

we take the Fourier transform in time and angular direction to decouple the equations.

$$\begin{align}
A^{\mu} & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and the eom becomes

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+4f^{t}-\frac{m^{2}}{r^{2}}f^{t}+\frac{\omega m}{1+r^{2}}f^{\phi} & =0 \\
\omega \partial _{r}[(1+r^{2})f^{t}]-m\frac{1+r^{2}}{r^{2}}\partial _{r}(r^{2}f^{\phi}) & =0 \\
-\frac{\omega m}{r^{2}}f^{t}+(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi}+\frac{\omega ^{2}}{1+r^{2}}f^{\phi} & =0
\end{align}$$

---

for possible zero modes with $\displaystyle{\omega=0}$, we can solve the equations directly

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+4f^{t}-\frac{m^{2}}{r^{2}}f^{t} & =0 \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0
\end{align}$$

there is no nontrivial solution for $\displaystyle{f^{\mu}}$ that satisfies the boundary conditions, so there is no zero mode in the spectrum.

---

the constraint equation is more clear in the subscription form, i.e.,

$$\begin{align}
-i\omega \partial _{r}f_{t}-im \frac{1+r^{2}}{r^{2}}\partial _{r}f_{\phi} & =0
\end{align}$$

and other equations can be written as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f_{t}+\frac{1+r^{2}}{r}\partial _{r}f_{t}-\frac{m^{2}}{r^{2}}f_{t}-\frac{\omega m}{r^{2}}f_{\phi} & =0 \\
(1+r^{2})\partial _{r}^{2}f_{\phi}+\frac{-1+r^{2}}{r}\partial _{r}f_{\phi}+\frac{\omega ^{2}}{1+r^{2}}f_{\phi}+\frac{\omega m}{1+r^{2}}f_{t} & =0
\end{align}$$

here

$$\begin{align}
f^{t} & =g^{tt}f_{t}=-\frac{1}{1+r^{2}}f_{t} \\
f^{\phi} & =\frac{1}{r^{2}}f_{\phi}
\end{align}$$

introduce a new variable $\displaystyle{\xi = f_{\phi}'}$ to decouple the equations. these two equations implies the same equation for $\displaystyle{\xi}$ as

$$\begin{align}
(1+r^{2})\xi''+\frac{-1+5r^{2}}{r}\xi'+\left(3+\frac{\omega ^{2}-4}{1+r^{2}}-\frac{m^{2}-1}{r^{2}}\right)\xi & =0
\end{align}$$

to find the boundary condition for $\displaystyle{\xi}$ at $\displaystyle{r=r_{0}}$, we revisit the equation of motion for $\displaystyle{f_{\phi}}$:

$$\begin{align}
(1+r^{2}_{0})\xi'|_{r_{0}}+\frac{-1+r_{0}^{2}}{r_{0}}\xi|_{r_{0}} & =0
\end{align}$$

the two solutions near $\displaystyle{r=0}$ are given by

$$\begin{align}
\xi ^{(1)} & =r^{1-m}(1+r^{2})^{-1+\omega/2}{}_{2}F_{1}\left(\frac{-m+\omega}{2}, \frac{2-m+\omega}{2}; 1-m;-r^{2}\right) \\
\xi ^{(2)} & =r^{1+m}(1+r^{2})^{-1+\omega/2}{}_{2}F_{1}\left(\frac{m+\omega}{2}, \frac{2+m+\omega}{2}; 1+m;-r^{2}\right)
\end{align}$$

and we have to drop the first solution since it is not regular at $\displaystyle{r=0}$.

$$\begin{align}
\xi & = r^{1+m}(1+r^{2})^{-1+\omega/2}{}_{2}F_{1}\left(\frac{m+\omega}{2},\frac{2+m+\omega}{2};1+m;-r^{2}\right)
\end{align}$$

to satisfy the boundary condition at $\displaystyle{r=r_{0}}$, we have to require

$$\begin{align}
(1+r^{2}_{0})\xi'|_{r_{0}}+\frac{-1+r_{0}^{2}}{r_{0}}\xi|_{r_{0}} & =0
\end{align}$$

which determines the quantized spectrum of $\displaystyle{\omega}$ for each $\displaystyle{m}$. by numerically solving the above equation for large $\displaystyle{r_{0}}$, we can find the approximate spectrum of the gauge field in this finite AdS system. results are shown in the following figure for $\displaystyle{r_{0}=100}$ and $\displaystyle{m=0, 1, 2}$:

![[Attachments/Pasted image 20260222224204.png]]

this result highly agrees with the spectrum of the gauge field in the infinite AdS system, which is given by

$$\begin{align}
\omega _{nm} & =1+|m_{\pm}|+2n \\
n & =0,1,2,...,m_{\pm}= m\pm 1
\end{align}$$

difference between the spectrum of the finite system and the infinite system can (?) be attributed to the finite size effect, and some other subtle effects such as the choice of boundary conditions and on and on...

# temporal gauge

analysis above has a fatal error, that the gauge choice cannot be imposed at $\displaystyle{r=0}$, since the gauge transformation parameter $\displaystyle{\Lambda}$ depends on the integral route from $\displaystyle{r_{0}}$ to $\displaystyle{r}$, which is not well-defined at $\displaystyle{r=0}$. a better choice may be the temporal gauge

$$\begin{align}
A^{t} & =0
\end{align}$$

this gauge choice can always be imposed, and under this gauge choice, the boundary condition for $\displaystyle{A^{\phi}}$ remains the same, since

$$\begin{align}
A^{\phi}|_{\Gamma _{r_{0}}} & \to A^{\phi}|_{\Gamma _{r_{0}}}+\partial ^{\phi}\Lambda |_{\Gamma _{r_{0}}} \\
 & =A^{\phi}|_{\Gamma _{r_{0}}}-g^{\phi \phi} \partial _{\phi} \int _{t_{0}}^{t}A_{t}(t',r_{0},\phi )\mathrm{d}t' \\
 & =0
\end{align}$$

therefore the eom becomes

$$\begin{align}
\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

take the Fourier transform in time and angular direction (assume there is no zero-energy modes), we have

$$\begin{align}
\partial _{r}f^{r}+\frac{1-r^{2}}{r(1+r^{2})}f^{r}+imf^{\phi} & =0 \\
\frac{\omega ^{2}}{1+r^{2}}f^{r}-\frac{m^{2}}{r^{2}}f^{r}-im(1+r^{2})\partial _{r}f^{\phi}-\frac{2im(1+r^{2})}{r}f^{\phi} & =0 \\
-\frac{im}{r^{2}}\partial _{r}f^{r}+\frac{im}{r^{3}}f^{r}+\frac{\omega ^{2}}{1+r^{2}}f^{\phi}+(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0
\end{align}$$

again, we change variables to the subscription form, i.e.,

$$\begin{align}
f_{r} & =g_{rr}f^{r}=\frac{1}{1+r^{2}}f^{r} \\
f_{\phi} & =g_{\phi \phi}f^{\phi}=r^{2}f^{\phi}
\end{align}$$

then the equations become

$$\begin{align}
(1+r^{2})\partial _{r}(rf_{r})+ \frac{im}{r}f_{\phi} & =0 \\
\frac{\omega ^{2}}{1+r^{2}}f_{r}-\frac{m^{2}}{r^{2}}f_{r}-\frac{im}{r^{2}}\partial _{r}f_{\phi} & =0 \\
-\frac{im(1+r^{2})}{r^{2}}\partial _{r} \dots
\end{align}$$

## for $\displaystyle{m=0}$

for $\displaystyle{m=0}$. we have

$$\begin{align}
f^{r} & =0 \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+\left( 4+\frac{\omega ^{2}}{1+r^{2}} \right)f^{\phi} & =0
\end{align}$$

the solution for $\displaystyle{f^{\phi}}$ is given by

$$\begin{align}
f^{\phi} & =C_{1}(1+r^{2})^{-1}{}_{2}F_{1}\left(\frac{2-\omega}{2},\frac{2+\omega}{2};1; \frac{1}{1+r^{2}}\right) \\
 & +C_{2}(\text{second solution contains logarithmic term})
\end{align}$$

for regularity at $\displaystyle{r=0}$, we have to drop the second solution, therefore

$$\begin{align}
f^{\phi} & =C_{1}(1+r^{2})^{-1}{}_{2}F_{1}\left(\frac{2-\omega}{2},\frac{2+\omega}{2};1; \frac{1}{1+r^{2}}\right)
\end{align}$$

to satisfy the boundary condition $\displaystyle{f^{\phi}|_{r=r_{0}}=0}$,

$$\begin{align}
{}_{2}F_{1}\left(\frac{2-\omega _{n}}{2},\frac{2+\omega _{n}}{2};1; \frac{1}{1+r_{0}^{2}}\right)=0
\end{align}$$

where $\displaystyle{\omega _{n}}$ is the $\displaystyle{n}$th smallest zero point of the above equation.

## for $\displaystyle{m\neq 0}$

and insert the first equation into the second and third equations, we obtain the unique equation for $\displaystyle{f_{r}}$ as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f_{r}+\frac{3+5r^{2}}{r}\partial _{r}f_{r}+\left(3+\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}-1}{r^{2}}\right)f_{r}=0
\end{align}$$

the boundary condition for $\displaystyle{f_{r}}$ is determined by the constraint equation as

$$\begin{align}
\partial _{r}(rf_{r})|_{r=r_{0}} & =0
\end{align}$$

introduce $\displaystyle{\xi=rf_{r}}$, we have

$$\begin{align}
(1+r^{2})\xi''+\frac{1+3r^{2}}{r}\xi'+\left(\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)\xi & =0
\end{align}$$

the solution for $\displaystyle{\xi}$ is given by

$$\begin{align}
\xi & =C_{1}r^{-|m|}(1+r^{2})^{\omega/2}{}_{2}F_{1}\left(\frac{-|m|+\omega}{2},\frac{2-|m|+\omega}{2},1-|m|,-r^{2}\right) \\
 & +C_{2}r^{|m|}(1+r^{2})^{\omega/2}{}_{2}F_{1}\left(\frac{|m|+\omega}{2},\frac{2+|m|+\omega}{2},1+|m|,-r^{2}\right)
\end{align}$$

and we have to drop the first solution since it is not regular at $\displaystyle{r=0}$, therefore

$$\begin{align}
\xi & =C_{2}r^{|m|}(1+r^{2})^{\omega/2}{}_{2}F_{1}\left(\frac{|m|+\omega}{2},\frac{2+|m|+\omega}{2},1+|m|,-r^{2}\right)
\end{align}$$

to satisfy the boundary condition, we require

$$\begin{align}
\partial _{r}\left(r^{|m|}(1+r^{2})^{\omega/2}{}_{2}F_{1}\left(\frac{|m|+\omega _{nm}}{2},\frac{2+|m|+\omega _{nm}}{2},1+|m|,-r^{2}\right)\right)\Bigg|_{r=r_{0}}=0
\end{align}$$

where $\displaystyle{\omega _{nm}}$ is the $\displaystyle{n}$th smallest zero point of the above equation.

## numerical simulation

we can numerically solve the above equations to find the spectrum of the gauge field in this finite AdS system. for $\displaystyle{m=0}$, the spectrum is determined by the zero points of the equation

$$\begin{align}
{}_{2}F_{1}\left(\frac{2-\omega _{n}}{2},\frac{2+\omega _{n}}{2};1; \frac{1}{1+r_{0}^{2}}\right)=0
\end{align}$$

and for $\displaystyle{m\neq 0}$, the spectrum is determined by the zero points of the equation

$$\begin{align}
\partial _{r}\left(r^{|m|}(1+r^{2})^{\omega/2}{}_{2}F_{1}\left(\frac{|m|+\omega _{nm}}{2},\frac{2+|m|+\omega _{nm}}{2},1+|m|,-r^{2}\right)\right)\Bigg|_{r=r_{0}}=0
\end{align}$$

numerical result fits our expectation that the spectrum of the gauge field in this finite AdS system should approach the spectrum of the gauge field in the infinite AdS system as $\displaystyle{r_{0}\to \infty}$, which is given by

$$\begin{align}
\omega _{nm} & =1+|m_{\pm}|+2n
\end{align}$$

## WKB formalism
