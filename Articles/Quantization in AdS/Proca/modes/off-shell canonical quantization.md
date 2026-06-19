we consider a free scalar in $\displaystyle{\mathrm{AdS}_{3}}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the action of a free scalar is given by

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2})
\end{align}$$

the boundary condition for the action to be well-defined is that near the boundary $\displaystyle{r\to \infty}$ and be regular at 0the origin $\displaystyle{r\to 0}$, the scalar field behaves as

$$\begin{align}
\phi & =o(r^{-1}), r\to \infty \\
\phi & =\mathcal{O}(r^{0}), r\to 0
\end{align}$$

(here we abuse a little bit the notation...). in the off-shell formalism, we expand $\displaystyle{\phi}$ in terms of a complete set of modes $\displaystyle{\phi _{n}(r,\phi)}$ as

$$\begin{align}
\phi(x) & =\sum _{n}a_{n}(t)\phi _{n}(r,\phi)
\end{align}$$

here $\displaystyle{\phi _{n}(\rho,\phi)}$ are the spatial wavefunctions satisfying

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi _{n}+\frac{1+3r^{2}}{r}\partial _{r}\phi _{n}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi _{n}-\mu ^{2}\phi _{n}=-\frac{\omega _{n}^{2}\phi _{n}}{1+r^{2}}
\end{align}$$

here $\displaystyle{\omega _{n}^{2}}$ are the eigenvalues of the spatial Laplacian. we have known from usual canonical quantization that

$$\begin{align}
\phi _{nm}(r,\phi) & =C_{nm}e^{im\phi}r^{m}(1+r^{2})^{-(\Delta+m)/2}P_{n}^{(\Delta-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\Delta & =1+\sqrt{ 1+\mu ^{2} } \\
m & \in \mathbb{Z},n\in \mathbb{N} \\
\omega _{nm}^{2} & =(\Delta+m+2n)^{2}
\end{align}$$

here $\displaystyle{C_{nm}}$ are normalization constants determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\phi _{n_{1}m_{1}}(r,\phi)\phi ^{*} _{n_{2}m_{2}}(r,\phi) & =\frac{1}{2\omega _{n_{1}m_{1}}}\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}} \\
\implies C_{nm} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

upon substituting the mode expansion into the action, we obtain

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}) \\
 & =\frac{1}{2}\sum ^{\infty}_{n=0}\sum _{m=-\infty}^{\infty} \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dot{a}^{2}_{nm}-\omega _{nm}^{2}a^{2}_{nm}\right)
\end{align}$$

which is a collection of decoupled harmonic oscillators.

---

for Proca field, the action is

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{-g}\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}-\frac{1}{2}\mu^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

we use the highest-weight modes as a convenient source of spatial profiles. the primary modes are

$$\begin{align}
{f^{(+)}_{u,0,0}}^{\mu} & =\sqrt{\frac{\mu+1}{\pi\mu}}\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi_{1}^{\mu} \\
{f^{(+)}_{v,0,0}}^{\mu} & =\sqrt{\frac{\mu+1}{\pi\mu}}\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu} \\
\end{align}$$

the descendants are defined by

$$\begin{align}
{f^{(+)}_{u,n,\bar{n}}}^{\mu} & =\sqrt{\frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}}}\mathcal{L}_{\xi_{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{u,0,0}}^{\mu} \\
{f^{(+)}_{v,n,\bar{n}}}^{\mu} & =\sqrt{\frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}}}\mathcal{L}_{\xi_{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{v,0,0}}^{\mu} \\
\end{align}$$

for use in the off-shell expansion, strip off the time dependence and write only the three spatial profiles of each highest-weight mode,

$$\begin{align}
{f^{(+)}_{s,n,\bar{n}}}^{\mu}(t,r,\phi) & =e^{-i\omega_{n\bar{n}}t}\left(T_{s,n,\bar{n}}(r,\phi),R_{s,n,\bar{n}}(r,\phi),P_{s,n,\bar{n}}(r,\phi)\right), \\
\omega _{n\bar{n}} & =\mu+1+n+\bar{n}.
\end{align}$$

and we expand the field components with independent coefficients as

$$\begin{align}
A^{t}(t,r,\phi) & =\sum _{n,\bar{n}=0}^{\infty}\sum _{s=u,v}a_{s,n,\bar{n}}(t)T_{s,n,\bar{n}}(r,\phi), \\
A^{r}(t,r,\phi) & =\sum _{n,\bar{n}=0}^{\infty}\sum _{s=u,v}b_{s,n,\bar{n}}(t)R_{s,n,\bar{n}}(r,\phi), \\
A^{\phi}(t,r,\phi) & =\sum _{n,\bar{n}=0}^{\infty}\sum _{s=u,v}c_{s,n,\bar{n}}(t)P_{s,n,\bar{n}}(r,\phi).
\end{align}$$

after substituting this expansion into the unreduced Proca action, we have

$$\begin{align}
S & =\frac{1}{2}\sum _{I,J}\int_{t_{i}}^{t_{f}}\mathrm{d}t\left(K^{AB}_{IJ}\dot{q}_{I,A}\dot{q}_{J,B}+2B^{AB}_{IJ}q_{I,A}\dot{q}_{J,B}-V^{AB}_{IJ}q_{I,A}q_{J,B}\right),
\end{align}$$

where $I=(s,n,\bar{n})$ and $q_{I,A}=(a_{I},b_{I},c_{I})$. the desired off-shell basis would make $K^{AB}_{IJ},B^{AB}_{IJ},V^{AB}_{IJ}$ proportional to $\delta_{IJ}$, but it should not diagonalize the three component variables inside each block. in particular $a_{I}$ has no independent kinetic term; it is the off-shell auxiliary variable whose equation of motion gives the Proca constraint only after the mode expansion has been made.

Using Mathematica to expand the unreduced action in components gives, with $f=1+r^{2}$,

$$\begin{align}
S & =\frac{1}{2}\int \mathrm{d}t\mathrm{d}r\mathrm{d}\phi\left[
r\left(\frac{\dot{A}^{r}}{f}+\partial_{r}(fA^{t})\right)^{2}
+\frac{1}{fr}\left(r^{2}\dot{A}^{\phi}+f\partial_{\phi}A^{t}\right)^{2}\right. \\
&\left.\qquad
-\frac{f}{r}\left(\partial_{r}(r^{2}A^{\phi})-\frac{1}{f}\partial_{\phi}A^{r}\right)^{2}
+\mu^{2}rf(A^{t})^{2}-\frac{\mu^{2}r}{f}(A^{r})^{2}-\mu^{2}r^{3}(A^{\phi})^{2}
\right].
\end{align}$$

With the convention that no integration by parts in $t$ has been performed, $B^{AB}_{IJ}$ is the coefficient of $q_{I,A}\dot{q}_{J,B}$. In a complex basis the second profile should be complex conjugated; in a real basis the stars below can be omitted. The nonzero kinetic coefficients are

$$\begin{align}
K^{bb}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\,\frac{r}{f^{2}}R_{I}R_{J}^{*}, \\
K^{cc}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\,\frac{r^{3}}{f}P_{I}P_{J}^{*}.
\end{align}$$

All coefficients involving $\dot{a}_{I}$ vanish. The nonzero first-order mixing coefficients are

$$\begin{align}
B^{ab}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\,\frac{r}{f}\partial_{r}(fT_{I})R_{J}^{*}, \\
B^{ac}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\,r(\partial_{\phi}T_{I})P_{J}^{*}.
\end{align}$$

The coefficients in the term $-\frac{1}{2}V^{AB}_{IJ}q_{I,A}q_{J,B}$ are

$$\begin{align}
V^{aa}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\left[
r\partial_{r}(fT_{I})\partial_{r}(fT_{J}^{*})
+\frac{f}{r}(\partial_{\phi}T_{I})(\partial_{\phi}T_{J}^{*})
+\mu^{2}rfT_{I}T_{J}^{*}
\right], \\
V^{bb}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\left[
\frac{1}{rf}(\partial_{\phi}R_{I})(\partial_{\phi}R_{J}^{*})
+\frac{\mu^{2}r}{f}R_{I}R_{J}^{*}
\right], \\
V^{cc}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\left[
\frac{f}{r}\partial_{r}(r^{2}P_{I})\partial_{r}(r^{2}P_{J}^{*})
+\mu^{2}r^{3}P_{I}P_{J}^{*}
\right], \\
V^{bc}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\,\frac{1}{r}(\partial_{\phi}R_{I})\partial_{r}(r^{2}P_{J}^{*}), \\
V^{cb}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\,\frac{1}{r}\partial_{r}(r^{2}P_{I})(\partial_{\phi}R_{J}^{*}).
\end{align}$$

All other entries vanish in this convention. Notice in particular that $V^{aa}_{IJ}$ has the opposite sign from ordinary oscillator potentials because $A^{t}$ is auxiliary rather than dynamical.

For the primary highest-weight profiles one can do the radial integrals directly. For either primary tower $s=u,v$, Mathematica gives

$$\begin{align}
K^{bb}_{ss} & =\frac{\mu+1}{4\mu(\mu+2)}, &
K^{cc}_{ss} & =\frac{1}{4\mu}, \\
B^{ab}_{ss} & =\frac{i}{4\mu(\mu+2)}, &
B^{ac}_{ss} & =\frac{i}{4\mu}, \\
V^{aa}_{ss} & =-\frac{(\mu+1)(\mu+3)}{4\mu(\mu+2)}.
\end{align}$$

The cross terms between the two primary towers vanish by the angular integral. However, the componentwise potential terms involving $R$ and $P$ are not separately finite. Near $r=0$ the primary profiles have

$$\begin{align}
R_{s,0,0} & \sim -iC_{0}e^{im_{s}\phi}, &
P_{s,0,0} & \sim \pm \frac{C_{0}}{r}e^{im_{s}\phi}, &
C_{0}^{2} & =\frac{\mu+1}{4\pi\mu}.
\end{align}$$

Therefore the magnetic part contains

$$\begin{align}
\int_{0}\frac{\mathrm{d}r}{r}\frac{\mu+1}{2\mu}|b_{s,0,0}-c_{s,0,0}|^{2}.
\end{align}$$

This is finite only on the subspace where the $A^{r}$ and $A^{\phi}$ coefficients satisfy the on-shell relative relation. Thus the literal componentwise split using the components of a highest-weight solution is not a good unconstrained off-shell basis: the full vector mode is regular, but its individual components are not admissible independent directions in the unreduced action. To keep the constraint unsolved while keeping the action finite, one needs a different off-shell spatial basis whose individual component profiles are regular enough at the origin, or a block basis that builds the regularity condition into each unconstrained mode block without solving the Proca constraint.

Thus the obstruction is not merely computational. The highest-weight basis is a good basis of regular physical vector modes, but it is not a componentwise off-shell basis. Splitting one regular vector mode into independent coordinate components destroys the cancellation that makes the mode regular at the origin. Therefore the requirements of keeping the highest-weight normal-mode basis, assigning independent variables to each component, and keeping the unreduced action finite cannot all be imposed simultaneously. If one wants an unconstrained off-shell expansion, the basis must be changed to a less representation-theoretic but componentwise regular basis.
