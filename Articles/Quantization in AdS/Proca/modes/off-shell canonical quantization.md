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
S & =\frac{1}{2}\int \mathrm{d}t\mathrm{d}r\mathrm{d}\phi\left[ r\left(\frac{\dot{A}^{r}}{f}+\partial_{r}(fA^{t})\right)^{2} +\frac{1}{fr}\left(r^{2}\dot{A}^{\phi}+f\partial_{\phi}A^{t}\right)^{2}\right. \\
&\left.\qquad -\frac{f}{r}\left(\partial_{r}(r^{2}A^{\phi})-\frac{1}{f}\partial_{\phi}A^{r}\right)^{2} +\mu^{2}rf(A^{t})^{2}-\frac{\mu^{2}r}{f}(A^{r})^{2}-\mu^{2}r^{3}(A^{\phi})^{2} \right].
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
V^{aa}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\left[ r\partial_{r}(fT_{I})\partial_{r}(fT_{J}^{*}) +\frac{f}{r}(\partial_{\phi}T_{I})(\partial_{\phi}T_{J}^{*}) +\mu^{2}rfT_{I}T_{J}^{*} \right], \\
V^{bb}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\left[ \frac{1}{rf}(\partial_{\phi}R_{I})(\partial_{\phi}R_{J}^{*}) +\frac{\mu^{2}r}{f}R_{I}R_{J}^{*} \right], \\
V^{cc}_{IJ} & =\int \mathrm{d}r\mathrm{d}\phi\left[ \frac{f}{r}\partial_{r}(r^{2}P_{I})\partial_{r}(r^{2}P_{J}^{*}) +\mu^{2}r^{3}P_{I}P_{J}^{*} \right], \\
V^{bc}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\,\frac{1}{r}(\partial_{\phi}R_{I})\partial_{r}(r^{2}P_{J}^{*}), \\
V^{cb}_{IJ} & =-\int \mathrm{d}r\mathrm{d}\phi\,\frac{1}{r}\partial_{r}(r^{2}P_{I})(\partial_{\phi}R_{J}^{*}).
\end{align}$$

All other entries vanish in this convention. Notice in particular that $V^{aa}_{IJ}$ has the opposite sign from ordinary oscillator potentials because $A^{t}$ is auxiliary rather than dynamical.

For the primary highest-weight profiles one can do the radial integrals directly. For either primary tower $s=u,v$, Mathematica gives

$$\begin{align}
K^{bb}_{ss} & =\frac{\mu+1}{4\mu(\mu+2)}, & K^{cc}_{ss} & =\frac{1}{4\mu}, \\
B^{ab}_{ss} & =\frac{i}{4\mu(\mu+2)}, & B^{ac}_{ss} & =\frac{i}{4\mu}, \\
V^{aa}_{ss} & =-\frac{(\mu+1)(\mu+3)}{4\mu(\mu+2)}.
\end{align}$$

The cross terms between the two primary towers vanish by the angular integral. However, the componentwise potential terms involving $R$ and $P$ are not separately finite. Near $r=0$ the primary profiles have

$$\begin{align}
R_{s,0,0} & \sim -iC_{0}e^{im_{s}\phi}, & P_{s,0,0} & \sim \pm \frac{C_{0}}{r}e^{im_{s}\phi}, & C_{0}^{2} & =\frac{\mu+1}{4\pi\mu}.
\end{align}$$

Therefore the magnetic part contains

$$\begin{align}
\int_{0}\frac{\mathrm{d}r}{r}\frac{\mu+1}{2\mu}|b_{s,0,0}-c_{s,0,0}|^{2}.
\end{align}$$

This is finite only on the subspace where the $A^{r}$ and $A^{\phi}$ coefficients satisfy the on-shell relative relation. Thus the literal componentwise split using the components of a highest-weight solution is not a good unconstrained off-shell basis: the full vector mode is regular, but its individual components are not admissible independent directions in the unreduced action. To keep the constraint unsolved while keeping the action finite, one needs a different off-shell spatial basis whose individual component profiles are regular enough at the origin, or a block basis that builds the regularity condition into each unconstrained mode block without solving the Proca constraint.

Thus the obstruction is not merely computational. The highest-weight basis is a good basis of regular physical vector modes, but it is not a componentwise off-shell basis. Splitting one regular vector mode into independent coordinate components destroys the cancellation that makes the mode regular at the origin. Therefore the requirements of keeping the highest-weight normal-mode basis, assigning independent variables to each component, and keeping the unreduced action finite cannot all be imposed simultaneously. If one wants an unconstrained off-shell expansion, the basis must be changed to a less representation-theoretic but componentwise regular basis.

# Killing-basis off-shell expansion

The coordinate-component obstruction above can be avoided at the level of the covariant field by expanding the Killing-basis coefficients themselves. Let

$$\begin{align}
e^{u}_{a,\mu}&=\xi_{a,\mu},& e^{b}_{a,\mu}&=\bar{\xi}_{a,\mu},& a&=1,0,-1,
\end{align}$$

and write the unreduced field as

$$\begin{align}
A_{\mu} &=\sum_{\chi=u,b}\sum_{a=1,0,-1}X^{\chi}_{a}e^{\chi}_{a,\mu}.
\end{align}$$

The six coefficient functions $X^{u}_{a},X^{b}_{a}$ are kept independent. This is an overcomplete coordinate system on the same covariant vector field, not a physical doubling. If both chiralities are retained simultaneously, the quadratic form has the corresponding coefficient-space redundancy until one fixes or quotients it.

With $\varepsilon_{tr\phi}=r$ and

$$\begin{align}
\mathscr{C}[A]_{\mu}&=\varepsilon_{\mu}^{~\nu\rho}\nabla_{\nu}A_{\rho},
\end{align}$$

the Proca action can be written, up to the usual endpoint terms, as

$$\begin{align}
S&=\frac12\int \mathrm{d}^{3}x\sqrt{-g} \left((\mathscr{C}A)_{\mu}(\mathscr{C}A)^{\mu}-\mu^{2}A_{\mu}A^{\mu}\right).
\end{align}$$

Define $Y^{\chi}_{a}$ by

$$\begin{align}
\mathscr{C}\!\left[\sum_{a}X^{u}_{a}\xi_{a}\right]_{\mu} &=\sum_{a}Y^{u}_{a}\xi_{a,\mu},& \mathscr{C}\!\left[\sum_{a}X^{b}_{a}\bar{\xi}_{a}\right]_{\mu} &=\sum_{a}Y^{b}_{a}\bar{\xi}_{a,\mu}.
\end{align}$$

For the unbarred coefficients,

$$\begin{align}
Y^{u}_{1} &=(2-2i\mathcal{L}_{\xi_{0}})X^{u}_{1} -i\mathcal{L}_{\xi_{-1}}X^{u}_{0},\\
Y^{u}_{0} &=2X^{u}_{0} +2i\mathcal{L}_{\xi_{1}}X^{u}_{1} -2i\mathcal{L}_{\xi_{-1}}X^{u}_{-1},\\
Y^{u}_{-1} &=(2+2i\mathcal{L}_{\xi_{0}})X^{u}_{-1} +i\mathcal{L}_{\xi_{1}}X^{u}_{0}.
\end{align}$$

For the barred coefficients,

$$\begin{align}
Y^{b}_{1} &=(-2+2i\mathcal{L}_{\bar{\xi}_{0}})X^{b}_{1} +i\mathcal{L}_{\bar{\xi}_{-1}}X^{b}_{0},\\
Y^{b}_{0} &=-2X^{b}_{0} -2i\mathcal{L}_{\bar{\xi}_{1}}X^{b}_{1} +2i\mathcal{L}_{\bar{\xi}_{-1}}X^{b}_{-1},\\
Y^{b}_{-1} &=(-2-2i\mathcal{L}_{\bar{\xi}_{0}})X^{b}_{-1} -i\mathcal{L}_{\bar{\xi}_{1}}X^{b}_{0}.
\end{align}$$

Let

$$\begin{align}
G_{\chi a,\chi' b} &=g^{\mu\nu}e^{\chi}_{a,\mu}e^{\chi'}_{b,\nu}.
\end{align}$$

For either fixed chirality, in the order $a=(1,0,-1)$,

$$\begin{align}
G_{u}&=G_{b}=
\begin{pmatrix}
0&0&\frac12\\
0&-\frac14&0\\
\frac12&0&0
\end{pmatrix}.
\end{align}$$

The mixed block $G_{u a,b c}$ is kept as $\xi_{a}\cdot\bar{\xi}_{c}$; dropping it is an extra truncation, not a consequence of the Killing-basis expansion. The unreduced action is therefore

$$\begin{align}
S&=\frac12\int\mathrm{d}^{3}x\sqrt{-g}\, G_{\chi a,\chi' b} \left((Y^{\chi}_{a})^{*}Y^{\chi'}_{b} -\mu^{2}(X^{\chi}_{a})^{*}X^{\chi'}_{b}\right).
\end{align}$$

For a real basis the complex conjugates are omitted. No first-order equation, divergence constraint, or relation between $X_{1},X_{0},X_{-1}$ has been imposed.

To make this a time-slice off-shell mode expansion, remove the time phase from the scalar basis used in `Killing base.md`,

$$\begin{align}
\phi_{n,\bar n}(t,r,\phi) &=e^{-i(\Delta+n+\bar n)t}\varphi_{n,\bar n}(r,\phi), &\Delta&=\mu+2,
\end{align}$$

and expand every Killing component independently:

$$\begin{align}
X^{\chi}_{a}(t,r,\phi) &=\sum_{n,\bar n=0}^{\infty} q^{\chi}_{a,n,\bar n}(t)\varphi_{n,\bar n}(r,\phi), &\chi&=u,b,\quad a=1,0,-1.
\end{align}$$

Substitution gives the off-shell mechanical action

$$\begin{align}
S&=\frac12\int\mathrm{d}t \left( \mathsf{K}_{\alpha I,\beta J}\dot q_{\alpha I}^{*}\dot q_{\beta J} +2\mathsf{B}_{\alpha I,\beta J}q_{\alpha I}^{*}\dot q_{\beta J} -\mathsf{V}_{\alpha I,\beta J}q_{\alpha I}^{*}q_{\beta J} \right),
\end{align}$$

where $\alpha=(\chi,a)$ and $I=(n,\bar n)$. If the displayed curl operator is split on the time-slice basis as

$$\begin{align}
Y_{\gamma} &=\mathsf{T}_{\gamma,\alpha}\dot q_{\alpha I}\varphi_{I} +\mathsf{S}_{\gamma,\alpha}q_{\alpha I}\varphi_{I},
\end{align}$$

then the matrices are

$$\begin{align}
\mathsf{K}_{\alpha I,\beta J} &=\int_{\Sigma}\mathrm{d}r\mathrm{d}\phi\,r\, G_{\gamma\delta} (\mathsf{T}_{\gamma,\alpha}\varphi_{I})^{*} (\mathsf{T}_{\delta,\beta}\varphi_{J}),\\
\mathsf{B}_{\alpha I,\beta J} &=\int_{\Sigma}\mathrm{d}r\mathrm{d}\phi\,r\, G_{\gamma\delta} (\mathsf{S}_{\gamma,\alpha}\varphi_{I})^{*} (\mathsf{T}_{\delta,\beta}\varphi_{J}),\\
\mathsf{V}_{\alpha I,\beta J} &=\int_{\Sigma}\mathrm{d}r\mathrm{d}\phi\,r\, G_{\gamma\delta} \left[ \mu^{2}\delta_{\gamma\alpha}\delta_{\delta\beta}\varphi_{I}^{*}\varphi_{J} -(\mathsf{S}_{\gamma,\alpha}\varphi_{I})^{*} (\mathsf{S}_{\delta,\beta}\varphi_{J}) \right].
\end{align}$$

The radial integrals appearing in these matrices have a closed form. Write the spatial scalar profile with

$$\begin{align}
N&=\min(n,\bar n),& \ell&=|n-\bar n|,& \sigma\ell&=n-\bar n,
\end{align}$$

as

$$\begin{align}
\varphi_{N,\ell,\sigma}(r,\phi) &=C_{N\ell}e^{i\sigma\ell\phi} r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2} P_{N}^{(\Delta-1,\ell)}\!\left(\frac{r^{2}-1}{r^{2}+1}\right),\\
C_{N\ell}^{2} &=\frac{1}{2\pi} \frac{\Gamma(N+\Delta+\ell)\Gamma(N+1)} {\Gamma(N+\Delta)\Gamma(N+\ell+1)}.
\end{align}$$

After the angular phase has been accounted for by the corresponding shift of $\sigma\ell$, any factor $r^{A}(1+r^{2})^{-B/2}$ produced by the time component of a Killing vector or by the spatial differential operators reduces to

$$\begin{align}
\mathcal{I}^{(A,B)}_{N\ell,N'\ell'} &\equiv \int_{0}^{\infty}\mathrm{d}r\int_{0}^{2\pi}\mathrm{d}\phi\, r^{1+A}(1+r^{2})^{-B/2} \varphi^{*}_{N,\ell,\sigma}\varphi_{N',\ell',\sigma'}\\
&=\delta_{\sigma\ell,\sigma'\ell'}\, \pi C_{N\ell}C_{N'\ell'}
\sum_{j=0}^{N}\sum_{k=0}^{N'} (-1)^{j+k} \binom{N+\Delta-1}{N-j}\binom{N+\ell}{j} \binom{N'+\Delta-1}{N'-k}\binom{N'+\ell'}{k}\\
&\qquad\times \mathrm{B}\!\left(\Delta+\frac{B-A}{2}-1+j+k,\, \frac{\ell+\ell'+A}{2}+N+N'-j-k+1\right).
\end{align}$$

The ordinary action-measure overlap is the special case $A=B=0$ and $\ell=\ell'$. It simplifies to

$$\begin{align}
\mathcal{M}^{(\ell)}_{NN'} &\equiv \int_{\Sigma}\mathrm{d}r\mathrm{d}\phi\,r\, \varphi^{*}_{N,\ell,\sigma}\varphi_{N',\ell,\sigma}\\
&=\frac{1}{2(\Delta-1)} \sqrt{ \frac{(p+1)_{k}(p+\ell+1)_{k}} {(p+\Delta)_{k}(p+\Delta+\ell)_{k}}
}, &p&=\min(N,N'),& k&=|N-N'|.
\end{align}$$

Thus the remaining entries of $\mathsf{K}$, $\mathsf{B}$, and $\mathsf{V}$ are finite sums of these closed overlaps with the index shifts fixed by the Killing ladder coefficients.

To get the scalar-field oscillator form from the off-shell dynamics, do not insert the first-order profiles as an extra assumption. First reduce the finite-dimensional constrained quadratic action. Put the first-order term in antisymmetric form and denote the Fourier-space Euler-Lagrange matrix by

$$\begin{align}
\mathcal{D}(\omega)=-\omega^{2}\mathsf{K}-2 i\omega \mathsf{B}_{\mathrm{anti}}+\mathsf{V}.
\end{align}$$

Split the coefficient vector as $q=(x,y)$, where $y$ denotes the auxiliary or null-kinetic combinations. For each fixed $(n,\bar n)$,

$$
\begin{pmatrix}
\mathcal{D}_{xx}(\omega)&\mathcal{D}_{xy}(\omega)\\
\mathcal{D}_{yx}(\omega)&\mathcal{D}_{yy}(\omega)
\end{pmatrix}
\begin{pmatrix}x\\ y\end{pmatrix}=0 .
$$

When the auxiliary block is invertible after choosing independent constraints,

$$\begin{align}
y=-\mathcal{D}_{yy}(\omega)^{-1}\mathcal{D}_{yx}(\omega)x,\qquad \mathcal{D}_{\mathrm{red}}(\omega)=\mathcal{D}_{xx}(\omega)-\mathcal{D}_{xy}(\omega)\mathcal{D}_{yy}(\omega)^{-1}\mathcal{D}_{yx}(\omega).
\end{align}$$

If $\mathcal{D}_{yy}$ is singular in the original variables, use the equivalent Dirac reduction: take the primary null directions of $\mathsf{K}$, preserve the resulting constraints, and then restrict the quadratic form to the independent second-class constraint surface. In a basis adapted to the independent constraints this gives the same reduced pencil $\mathcal{D}_{\mathrm{red}}(\omega)$. The physical modes are the null vectors of this reduced pencil,

$$\begin{align}
\mathcal{D}_{\mathrm{red}}(\omega_{\lambda})u_{\lambda}=0.
\end{align}$$

The profiles displayed below are therefore not imposed before the action calculation; they are the eigenvectors of the reduced off-shell problem. For the present Proca system these eigenvectors are the two first-order branches from [[Killing base]]:

$$\begin{align}
\mathcal{A}^{u}_{n,\bar n,\alpha} &=\phi_{n,\bar n}\xi_{1,\alpha} +2i\sqrt{\frac{n}{\Delta+n-1}}\phi_{n-1,\bar n}\xi_{0,\alpha} -\sqrt{\frac{n(n-1)}{(\Delta+n-2)(\Delta+n-1)}}\phi_{n-2,\bar n}\xi_{-1,\alpha},\\
\mathcal{A}^{b}_{n,\bar n,\alpha} &=\phi_{n,\bar n}\bar\xi_{1,\alpha} +2i\sqrt{\frac{\bar n}{\Delta+\bar n-1}}\phi_{n,\bar n-1}\bar\xi_{0,\alpha} -\sqrt{\frac{\bar n(\bar n-1)}{(\Delta+\bar n-2)(\Delta+\bar n-1)}}\phi_{n,\bar n-2}\bar\xi_{-1,\alpha}.
\end{align}$$

Terms with negative scalar labels are omitted. The corresponding frequency is

$$\begin{align}
\omega_{n,\bar n}&=\Delta+n+\bar n-1.
\end{align}$$

Write $\mathcal{A}_{\rho,\alpha}=e^{-i\omega_{\rho}t}U_{\rho,\alpha}(r,\phi)$ for the corresponding spatial phase-space profile.

Define the physical symplectic Gram matrix

$$\begin{align}
\mathcal{G}_{\rho\sigma} &=i\,\Omega[\mathcal{A}_{\rho},\mathcal{A}_{\sigma}^{*}], &\rho&=(s,n,\bar n),\quad s=u,b.
\end{align}$$

The entries of $\mathcal{G}$ are evaluated by the closed overlaps above. It is block diagonal in the conserved energy and angular momentum. In each finite degeneracy block choose a matrix $R$ such that

$$\begin{align}
R^{\dagger}\mathcal{G}R&=\mathbf{1},& \widehat{\mathcal{A}}_{\lambda,\alpha} &=\mathcal{A}_{\rho,\alpha}R^{\rho}_{~\lambda}.
\end{align}$$

Write $\widehat{\mathcal{A}}_{\lambda,\alpha}=e^{-i\omega_{\lambda}t}\widehat U_{\lambda,\alpha}$.

Equivalently, for a two-mode block with normalized diagonal entries and off-diagonal overlap $c$,

$$\begin{align}
\widehat{\mathcal{A}}_{\pm} &=\frac{\mathcal{A}_{1}\pm e^{-i\arg c}\mathcal{A}_{2}} {\sqrt{2(1\pm |c|)}}.
\end{align}$$

The reduced field is then expanded as

$$\begin{align}
A_{\mu} &=\sum_{\lambda}\left(a_{\lambda}(t)\widehat U_{\lambda,\mu} +a_{\lambda}^{*}(t)\widehat U_{\lambda,\mu}^{*}\right),
\end{align}$$

and the reduced action takes the canonical first-order form

$$\begin{align}
S_{\mathrm{red}} &=\int \mathrm{d}t\sum_{\lambda} \left[ \frac{i}{2}\left(a_{\lambda}^{*}\dot a_{\lambda} -\dot a_{\lambda}^{*}a_{\lambda}\right) -\omega_{\lambda}a_{\lambda}^{*}a_{\lambda} \right].
\end{align}$$

Finally set

$$\begin{align}
a_{\lambda} &=\frac{\omega_{\lambda}Q_{\lambda}+iP_{\lambda}} {\sqrt{2\omega_{\lambda}}},
\end{align}$$

which gives, up to an endpoint term,

$$\begin{align}
S_{\mathrm{red}} &=\int\mathrm{d}t\sum_{\lambda} \left[ P_{\lambda}\dot Q_{\lambda} -\frac12\left(P_{\lambda}^{2}+\omega_{\lambda}^{2}Q_{\lambda}^{2}\right) \right]\\
&=\frac12\int\mathrm{d}t\sum_{\lambda} \left(\dot Q_{\lambda}^{2}-\omega_{\lambda}^{2}Q_{\lambda}^{2}\right).
\end{align}$$

This is the Proca analogue of the scalar oscillator expansion. The step from the off-shell matrix action to this form is not an additional radial integration and not an a priori on-shell substitution; it is the Dirac or Schur reduction of the off-shell quadratic form, followed by the finite-dimensional Gram normalization in each degenerate block.
