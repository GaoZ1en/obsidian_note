---
title: Massless AdS4 Gauge Representatives
date: 2026-06-17
summary: "Complete normalized electric/scalar-type and magnetic/vector-type normal modes for Maxwell theory and linearized Einstein gravity in global AdS4 with fixed boundary sources."
---

We have already organized the mode structure in [[Articles/Quantization in AdS/ads4 linearized gravity/symplectic norm|symplectic norm]]. This note gives explicit, symplectically normalized representatives of **both physical polarizations**, at every radial and angular level. Gravity uses Regge–Wheeler gauge; an alternative TT representative is retained for the vector-type branch.

Here “all modes” means smooth, source-free, finite-energy modes on the universal cover of global AdS$_4$, modulo proper gauge transformations, with the boundary conformal metric fixed for gravity and the boundary gauge potential fixed to zero for Maxwell. Changing these boundary conditions changes the spectral problem. The AdS radius is one and positive frequency means $e^{-i\omega t}$.

For gravity we follow the canonically rescaled field of `symplectic norm.md`:

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu},\qquad \kappa^2=8\pi G_4.
\end{align}$$

Thus a normalized perturbation of the **metric itself** is $\kappa h_{\mu\nu}$. Maxwell uses $S=-\frac14\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}$, without an additional coupling prefactor. The real-field expansion convention is $\omega[h_I,h_J^*]=-i\delta_{IJ}$, and similarly for $A$.

---

The global AdS$_4$ metric is

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{2}^{2}.
\end{align}$$

in the following discussion, time and radial indices are denoted by $\displaystyle{a,b}$, sphere indices are denoted by $\displaystyle{A,B}$, and $\displaystyle{D_{A}}$ is the covariant derivative on the unite $\displaystyle{S^{2}}$. it is useful to introduce the spherical harmonics $\displaystyle{Y_{jm}}$, which are normalized by

$$\begin{align}
\int _{S^{2}}\mathrm{d}\Omega _{2} Y_{jm}^{*}Y_{j'm'} & =\delta _{jj'}\delta _{mm'}
\end{align}$$

for $\displaystyle{j\geqslant 1}$, define the transverse vector spherical harmonic

$$\begin{align}
X_{A}^{jm} & =\dfrac{1}{\sqrt{ j(j+1) }}\epsilon _{A}^{~B}D_{B}Y_{jm}
\end{align}$$

The orientation is $\epsilon_{\theta\phi}=\sin\theta$, so

$$\begin{align}
X_\theta^{jm}=\frac{\partial_\phi Y_{jm}}{\sqrt{j(j+1)}\sin\theta},\qquad
X_\phi^{jm}=-\frac{\sin\theta\,\partial_\theta Y_{jm}}{\sqrt{j(j+1)}},\qquad
\int\mathrm d\Omega_2\,X_A^{jm*}X^{j'm'A}=\delta_{jj'}\delta_{mm'}.
\end{align}$$

## Common radial functions and boundary conditions

Set $f=1+r^2$ and $x=\arctan r\in[0,\pi/2)$. All four physical branches below reduce to

$$\begin{align}
f u''+2ru'+\left(\frac{\omega^2}{f}-\frac{j(j+1)}{r^2}\right)u=0
\quad\Longleftrightarrow\quad
\left[-\partial_x^2+\frac{j(j+1)}{\sin^2x}\right]u=\omega^2u.
\end{align}$$

Regularity selects $u=O(r^{j+1})$ at the centre. Define the explicit radial function

$$\begin{align}
U_{nj}(r)&=\left(\frac r{\sqrt{1+r^2}}\right)^{j+1}
C_n^{j+1}\left(\frac1{\sqrt{1+r^2}}\right),
&\omega_{nj}&=j+1+n,\qquad n=0,1,2,\ldots .
\end{align}$$

For $u=A+B/r+O(r^{-2})$ at infinity, the fixed-source conditions are

| Physical branch | Master boundary condition | Allowed $n$ | Frequency |
|---|---|---|---|
| Scalar-type graviton, $j\geq2$ | $B=0$, or $\partial_xu(\pi/2)=0$ | $n=2p$ | $j+1+2p$ |
| Vector-type graviton, $j\geq2$ | $A=0$, or $u(\pi/2)=0$ | $n=2p+1$ | $j+2+2p$ |
| Electric Maxwell, $j\geq1$ | $B=0$ | $n=2p$ | $j+1+2p$ |
| Magnetic Maxwell, $j\geq1$ | $A=0$ | $n=2p+1$ | $j+2+2p$ |

Here $p=0,1,\ldots$ and $m=-j,\ldots,j$. These are boundary conditions on the **master variable**: Neumann for the scalar/electric branch still implements fixed Dirichlet sources for the original metric/potential.

The formulas below contain only $U_{nj}$ and its first derivative, which can also be evaluated without differentiation:

$$\begin{align}
U_{nj}'&=\frac{j+1}{rf}U_{nj}
-\frac{2(j+1)r}{f^{3/2}}\left(\frac r{\sqrt f}\right)^{j+1}
C_{n-1}^{j+2}\left(\frac1{\sqrt f}\right).
\end{align}$$

The second term is zero when $n=0$. The common radial integral and unit scalar-master normalization are

$$\begin{align}
J_{nj}:=\int_0^\infty\frac{\mathrm dr}{f}\,U_{nj}^2
&=\frac{\pi\Gamma(n+2j+2)}{2^{2j+2}(n+j+1)\Gamma(n+1)\Gamma(j+1)^2},\\
\mathcal N_{nj}:=(2\omega_{nj}J_{nj})^{-1/2}
&=\sqrt{\frac{2^{2j+1}\Gamma(n+1)\Gamma(j+1)^2}{\pi\Gamma(n+2j+2)}}.
\end{align}$$

Gegenbauer orthogonality is used separately within the even-$n$ and odd-$n$ families on this half interval. It does not make an even and an odd radial function orthogonal on $[0,\pi/2]$; orthogonality between the two physical polarizations instead follows from their different sphere harmonics.

## Maxwell representatives

the Maxwell short module is

$$\begin{align}
\mathcal{H}_{q} & = \dfrac{V_{1}\otimes \mathrm{Sym}^{q}(V_{1})}{\mathrm{Sym}^{q-1}(V_{1})}=V_{q+1}\oplus V_{q}\oplus  \dots \oplus V_{1}, q\geqslant 1 \\
\mathcal{H}_{0} & =V_{1}
\end{align}$$

thus a physical mode at level $\displaystyle{q}$ has

$$\begin{align}
\omega _{q} & =2+q, & j & =1,2,\dots,q+1, & m & =-j,\dots,j
\end{align}$$

write

$$\begin{align}
n & =q+1-j \\
\omega _{nj} & =1+n+j
\end{align}$$

### Magnetic branch: $n=2p+1$

For odd $n$, choose the magnetic representative

$$\begin{align}
A_{njm,t} & =0, \\
A_{njm,r} & =0, \\
A_{njm,A} & =e^{-i\omega _{nj}t}R_{nj}(r)X_{A}^{jm}
\end{align}$$

the function $\displaystyle{R_{nj}(r)}$ satisfies

$$\begin{align}
\left[ (1+r^{2})\partial _{r}^{2}+2r\partial _{r}+\dfrac{\omega ^{2}_{nj}}{1+r^{2}}-\dfrac{j(j+1)}{r^{2}} \right]R_{nj}(r)=0 \\
\implies R_{nj}=\mathcal{N}_{nj}\left( \dfrac{r}{\sqrt{ 1+r^{2} }} \right)^{j+1}C^{j+1}_{n}\left( \dfrac{1}{\sqrt{ 1+r^{2} }} \right)
\end{align}$$

Here $R_{nj}=\mathcal N_{nj}U_{nj}$. The constant $\mathcal N_{nj}$ is fixed by the symplectic form as

$$\begin{align}
\omega[A,A^{*}]=-i
\end{align}$$

which gives

$$\begin{align}
\mathcal{N}_{nj} & =\sqrt{ \dfrac{2^{2j+1}}{\pi} \dfrac{\Gamma(n+1)\Gamma(j+1)^{2}}{\Gamma(n+2j+2)} }
\end{align}$$

here we have used the orthonormal relation

$$\begin{align}
\int _{-1}^{1} \mathrm{d}x(1-x^{2})^{\alpha-1/2} C^{\alpha}_{n}(x)C_{m}^{\alpha}(x) & =\dfrac{2^{1-2\alpha}\pi \Gamma(n+2\alpha)}{(n+\alpha)\Gamma(n+1)\Gamma(\alpha)^{2}}\delta _{nm}
\end{align}$$

### Electric branch: $n=2p$

For even $n$, use the same normalized radial function $R_{nj}=\mathcal N_{nj}U_{nj}$ but choose the scalar-type potential

$$\begin{align}
A^{\mathrm E}_{njm,t}&=\frac{e^{-i\omega_{nj}t}}{\sqrt{j(j+1)}}f R_{nj}'Y_{jm},\\
A^{\mathrm E}_{njm,r}&=-\frac{i\omega_{nj}e^{-i\omega_{nj}t}}{\sqrt{j(j+1)}f}R_{nj}Y_{jm},\\
A^{\mathrm E}_{njm,A}&=0.
\end{align}$$

This gauge sets the scalar-derived angular potential to zero. It is not a temporal gauge. For example,

$$\begin{align}
F^{\mathrm E}_{tr}&=-e^{-i\omega t}\frac{\sqrt{j(j+1)}}{r^2}R_{nj}Y_{jm},\\
F^{\mathrm E}_{tA}&=-\frac{e^{-i\omega t}}{\sqrt{j(j+1)}}fR_{nj}'D_AY_{jm},\qquad
F^{\mathrm E}_{rA}=\frac{i\omega e^{-i\omega t}}{\sqrt{j(j+1)}f}R_{nj}D_AY_{jm}.
\end{align}$$

Substitution into $\nabla_\mu F^{\mu\nu}=0$ gives the common radial equation. The radial canonical momentum is $\pi^r=-\sqrt{-g}F^{tr}$, so the electric branch has exactly the same norm $2\omega\int\mathrm dr\,R_{nj}^2/f=1$ as the magnetic branch. Since $fR_{nj}'\to0$, the electric solution has zero boundary potential. Applying the magnetic ansatz to even $n$ would instead give a nonzero boundary $A_A$ and would not be a mode in this fixed-source phase space.

The Maxwell primary multiplet is therefore electric, $(n,j)=(0,1)$, at $\omega=2$. The first magnetic multiplet has $(n,j)=(1,1)$, at $\omega=3$.

## Graviton representatives

The graviton short module is

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{grav}} & =\dfrac{V_{2}\otimes \mathrm{Sym}^{q}(V_{1})}{V_{1}\otimes \mathrm{Sym}^{q-1}(V_{1})}=V_{q+2}\oplus V_{q+1}\oplus\cdots\oplus V_2.
\end{align}$$

Thus a physical graviton mode at level $q$ has

$$\begin{align}
\omega _{q} & =3+q, & j & =2,3,\dots,q+2, & m=-j,\dots,j,
\end{align}$$

write

$$\begin{align}
n & =q-j+2 \\
\omega _{nj} & =1+n+j
\end{align}$$

The normal modes split naturally into vector-type and scalar-type representatives according to the parity of $\displaystyle{n}$. The vector-type gravitational normal modes correspond to the odd branch

$$\begin{align}
n & =2p+1, & p & =0,1,2,\ldots, & \omega _{nj} & =j+2+2p.
\end{align}$$

### Vector-type branch in Regge–Wheeler gauge

Define the normalized master function

$$\begin{align}
u^{\mathrm V}_{nj}(r)=\sqrt{\frac{2}{(j-1)(j+2)}}\,\mathcal N_{nj}U_{nj}(r),\qquad n=2p+1.
\end{align}$$

All nonzero components are

$$\begin{align}
h^{\mathrm V}_{njm,tA}&=e^{-i\omega_{nj}t}f\left(u^{\mathrm V}_{nj}+r{u^{\mathrm V}_{nj}}'\right)X_A^{jm},\\
h^{\mathrm V}_{njm,rA}&=-i\omega_{nj}e^{-i\omega_{nj}t}\frac r f u^{\mathrm V}_{nj}X_A^{jm}.
\end{align}$$

In particular $h_{ab}=h_{AB}=0$; symmetry supplies $h_{At}$ and $h_{Ar}$. The gauge condition is the absence of the odd tensor harmonic in $h_{AB}$. These representatives obey the full linearized Einstein equation; TT gauge is not required.

### Alternative vector-type TT representative

For $\displaystyle{j\geqslant 2}$, define the odd tensor spherical harmonic

$$\begin{align}
X_{AB}^{jm} & =D_{A}X_{B}^{jm}+D_{B}X_{A}^{jm}.
\end{align}$$

It obeys

$$\begin{align}
\gamma ^{AB}X_{AB}^{jm} & =0, & D^{A}X_{AB}^{jm} & =-\left(j(j+1)-2\right)X_{B}^{jm}.
\end{align}$$

A direct TT representative of this $\displaystyle{(n,j,m)}$ graviton mode is

$$\begin{align}
h_{njm,tt} & =0, & h_{njm,tr} & =0, & h_{njm,rr} & =0, \\
h_{njm,tA} & =e^{-i\omega_{nj}t}A_{nj}(r)X_{A}^{jm}, & h_{njm,rA} & =e^{-i\omega_{nj}t}B_{nj}(r)X_{A}^{jm}, & h_{njm,AB} & =e^{-i\omega_{nj}t}C_{nj}(r)X_{AB}^{jm}.
\end{align}$$

The radial seed is the same regular Gegenbauer function as in the Maxwell representative,

$$\begin{align}
C_{nj}(r) & =\mathcal{M}_{nj}\left( \dfrac{r}{\sqrt{ 1+r^{2} }} \right)^{j+1}C^{j+1}_{n}\left( \dfrac{1}{\sqrt{ 1+r^{2} }} \right),
\end{align}$$

and the remaining two functions are fixed by the TT condition as

$$\begin{align}
B_{nj}(r) & =C_{nj}'(r)+\dfrac{r^{2}-2}{r(1+r^{2})}C_{nj}(r), \\
A_{nj}(r) & =\dfrac{i}{\omega_{nj}}\left[\left(3+3r^{2}-\omega_{nj}^{2}\right)C_{nj}(r)+3r(1+r^{2})C_{nj}'(r)\right].
\end{align}$$

The seed satisfies

$$\begin{align}
\left[(1+r^{2})\partial _{r}^{2}+2r\partial _{r}+\dfrac{\omega _{nj}^{2}}{1+r^{2}}-\dfrac{j(j+1)}{r^{2}}\right]C_{nj}(r) & =0.
\end{align}$$

Using this radial equation and the sphere identities above gives

$$\begin{align}
g^{\mu\nu}h_{njm,\mu\nu} & =0, & \nabla ^{\mu}h_{njm,\mu\nu} & =0, & \left(\nabla ^{2}+2\right)h_{njm,\mu\nu} & =0.
\end{align}$$

The graviton symplectic form gives

$$\begin{align}
\omega[h_{njm},h_{njm}^{*}] & =-i\mathcal{M}_{nj}^{2}I_{nj}, \\
I_{nj} & =\dfrac{9\pi (j-1)(j+2)\Gamma(n+2j+2)}{2^{2j+2}(n+j+1)^{2}\Gamma(n+1)\Gamma(j+1)^{2}}.
\end{align}$$

Thus the normalized odd-branch representative has

$$\begin{align}
\mathcal{M}_{nj} & =\dfrac{2^{j+1}(n+j+1)\Gamma(j+1)}{3\sqrt{\pi}}\sqrt{\dfrac{\Gamma(n+1)}{(j-1)(j+2)\Gamma(n+2j+2)}}.
\end{align}$$

### Scalar-type branch in Regge–Wheeler gauge

The scalar-type gravitational normal modes correspond to the even branch

$$\begin{align}
n & =2p, & p & =0,1,2,\ldots, & \omega _{nj} & =j+1+2p.
\end{align}$$

For this branch, the relevant sphere harmonics are generated from the scalar harmonic $\displaystyle{Y_{jm}}$:

$$\begin{align}
Y_{A}^{jm} & =D_{A}Y_{jm}, \\
Y_{AB}^{jm} & =D_{A}D_{B}Y_{jm}+\dfrac{1}{2}j(j+1)\gamma _{AB}Y_{jm}.
\end{align}$$

They obey

$$\begin{align}
D^{A}Y_{A}^{jm} & =-j(j+1)Y_{jm}, & \gamma ^{AB}Y_{AB}^{jm} & =0, & D^{A}Y_{AB}^{jm} & =-\dfrac{1}{2}\left(j(j+1)-2\right)Y_{B}^{jm}.
\end{align}$$

The scalar Regge–Wheeler gauge sets $h_{tA}=h_{rA}=0$ and removes the trace-free harmonic $Y_{AB}^{jm}$. Define

$$\begin{align}
u^{\mathrm S}_{nj}(r)&=\sqrt{\frac{8}{j(j+1)(j-1)(j+2)}}\,\mathcal N_{nj}U_{nj}(r),\qquad n=2p.
\end{align}$$

The **complete nonzero components** are

$$\begin{align}
h^{\mathrm S}_{njm,tt}
&=e^{-i\omega t}\left[f{u^{\mathrm S}_{nj}}'+\left(\frac{j(j+1)f}{2r}-r\omega^2\right)u^{\mathrm S}_{nj}\right]Y_{jm},\\
h^{\mathrm S}_{njm,tr}
&=-i\omega e^{-i\omega t}\left(r{u^{\mathrm S}_{nj}}'+\frac{u^{\mathrm S}_{nj}}f\right)Y_{jm},\\
h^{\mathrm S}_{njm,rr}&=\frac1{f^2}h^{\mathrm S}_{njm,tt},\\
h^{\mathrm S}_{njm,AB}
&=e^{-i\omega t}r^2\left(f{u^{\mathrm S}_{nj}}'+\frac{j(j+1)}{2r}u^{\mathrm S}_{nj}\right)\gamma_{AB}Y_{jm},\\
h^{\mathrm S}_{njm,tA}&=h^{\mathrm S}_{njm,rA}=0,\qquad \omega=\omega_{nj}.
\end{align}$$

Thus $h_{\theta\theta}=r^2(fu'+j(j+1)u/(2r))e^{-i\omega t}Y_{jm}$, $h_{\phi\phi}=\sin^2\theta\,h_{\theta\theta}$ and $h_{\theta\phi}=0$. These formulas require no unsolved radial system and no subsequent gauge projection.

For orientation, write the usual Regge–Wheeler amplitudes as $h_{tt}=fH_0Y e^{-i\omega t}$, $h_{tr}=H_1Y e^{-i\omega t}$, $h_{rr}=H_2Y e^{-i\omega t}/f$, and $h_{AB}=r^2K\gamma_{AB}Y e^{-i\omega t}$. The constraints give

$$\begin{align}
H_0=H_2&=u'+\left(\frac{j(j+1)}{2r}-\frac{r\omega^2}{f}\right)u,\\
H_1&=-i\omega(ru'+u/f),\qquad K=fu'+\frac{j(j+1)}{2r}u.
\end{align}$$

The remaining Einstein equation is the master equation above. Conversely,

$$\begin{align}
u=\frac{2r}{j(j+1)}\left[K+\frac{2f}{(j-1)(j+2)}(H_2-rK')\right].
\end{align}$$

This also shows that a nonzero master mode cannot be a residual pure-gauge solution for $j\geq2$.

### Lowest scalar-type graviton

At $(n,j)=(0,2)$, all five values $m=-2,\ldots,2$ have $\omega=3$. With

$$\begin{align}
u=\frac{4}{3\sqrt{5\pi}}\frac{r^3}{f^{3/2}}=:a\frac{r^3}{f^{3/2}},
\end{align}$$

the components reduce to

$$\begin{align}
h_{tt}&=6a e^{-3it}\frac{r^2(1-r^2)}{f^{3/2}}Y_{2m},&
h_{tr}&=-12ia e^{-3it}\frac{r^3}{f^{5/2}}Y_{2m},\\
h_{rr}&=6a e^{-3it}\frac{r^2(1-r^2)}{f^{7/2}}Y_{2m},&
h_{AB}&=6a e^{-3it}\frac{r^4}{f^{3/2}}\gamma_{AB}Y_{2m}.
\end{align}$$

This is the full spin-two primary multiplet in this gauge. The lowest vector-type graviton has $(n,j)=(1,2)$ and $\omega=4$.

## Derivation, normalization, and completeness

### Why the two boundary conditions differ

For the scalar-type graviton, $u=A+B/r+\cdots$ gives $K=-B+O(r^{-1})$. Thus $B$ changes the boundary sphere metric. For the vector-type graviton, $h_{tA}=r^2A X_A e^{-i\omega t}+O(1)$, so $A$ changes the boundary metric. Setting the respective coefficient to zero fixes the conformal boundary geometry. For Maxwell, the same expansion gives $A_t^{\mathrm E}\to-BY/\sqrt{j(j+1)}$ and $A_A^{\mathrm B}\to A X_A$.

The scalar Regge–Wheeler components can grow as $h_{tt},h_{AB}=O(r)$ even with zero source. They are not in Fefferman–Graham gauge: the pullback $r^{-2}h_{ij}$ still tends to zero. For example the smooth infinitesimal diffeomorphism with covariant components

$$\begin{align}
\zeta_r=-\frac{rK}{2f}e^{-i\omega t}Y_{jm},\qquad \zeta_t=\zeta_A=0
\end{align}$$

sets $h_{AB}$ to zero and removes the $O(r)$ term in $h_{tt}$. Its contravariant normal component is $O(1)$, or $O(z^2)$ in $z=1/r$, and has zero boundary action. This is a change of representative within the same fixed-source phase space. Smoothness at $r=0$ is understood in Cartesian components, not by the apparent powers of spherical-coordinate components.

### Symplectic normalization of gravity

Retain the Einstein–Hilbert action, GHY term, and the usual Dirichlet AdS counterterms. On a static Cauchy slice the canonical momentum of the unrescaled spatial metric is

$$\begin{align}
\pi^{ij}=\frac{\sqrt q}{16\pi G_4}(K^{ij}-Kq^{ij}),\qquad
K_{ij}=\frac{\dot q_{ij}-D_iN_j-D_jN_i}{2N}.
\end{align}$$

The background has $N=\sqrt f$, $q_{ij}\mathrm dx^i\mathrm dx^j=\mathrm dr^2/f+r^2\mathrm d\Omega_2^2$, and $K_{ij}=0$. The pullback of $\int\delta\pi^{ij}\wedge\delta q_{ij}$ gives the integrated gravitational symplectic form. With fixed sources the asymptotic counterterm/corner contributions vanish for these modes; in the scalar gauge the potentially largest bilinear boundary terms decay as $O(1/r)$. In particular, no TT-only bulk formula is used for the Regge–Wheeler modes.

For a real radial profile $u$ and normalized sphere harmonics, the resulting norms of the rescaled field are

$$\begin{align}
i\omega[h^{\mathrm S},h^{\mathrm S*}]&=
2\omega\,\frac{j(j+1)(j-1)(j+2)}8\int_0^\infty\frac{\mathrm dr}{f}u^2,\\
i\omega[h^{\mathrm V},h^{\mathrm V*}]&=
2\omega\,\frac{(j-1)(j+2)}2\int_0^\infty\frac{\mathrm dr}{f}u^2.
\end{align}$$

Here the $\omega$ inside the bracket denotes the symplectic form, while the prefactor $\omega=\omega_{nj}$ denotes frequency. Substituting $J_{nj}$ yields precisely $u^{\mathrm S}_{nj}$ and $u^{\mathrm V}_{nj}$ above. For the unrescaled metric perturbation the two coefficients instead read $j(j+1)(j-1)(j+2)/(64\pi G_4)$ and $(j-1)(j+2)/(16\pi G_4)$.

An explicit check of the radial integration is useful. Set $\lambda=j(j+1)$. Remove the common factor $-i\omega$ and $1/(16\pi G_4)$ from the angular-integrated ADM pairing $\delta\pi^{ij}[h]\,h^*_{ij}$. Its scalar-type radial density obeys

$$\begin{align}
\mathcal P_{\mathrm S}
&=\frac{\lambda(\lambda-2)}{4f}u^2+\frac{\mathrm d}{\mathrm dr}
\left[r^3f(u')^2+2r^2uu'+\frac{\lambda r}{2f}u^2\right],\\
\mathcal P_{\mathrm V}&=\frac{\lambda-2}{f}u^2.
\end{align}$$

These are identities after using the master equation. The scalar bracket is $O(r^{2j+3})$ at the centre and $O(r^{-1})$ at infinity for $u=A+O(r^{-2})$. Its two endpoint values are zero, justifying the normalization without discarding an unchecked surface term.

The retained TT formula has the same normalization. Starting from that representative with radial seed $C_{nj}$, the diffeomorphism $\zeta_A=-e^{-i\omega t}C_{nj}X_A$, $\zeta_t=\zeta_r=0$, sets $h_{AB}=0$ and gives the Regge–Wheeler master function

$$\begin{align}
u^{\mathrm V}=\frac{3i}{\omega}C_{nj}.
\end{align}$$

Consequently $\mathcal M_{nj}=(\omega/3)\sqrt{2/((j-1)(j+2))}\,\mathcal N_{nj}$, in agreement with the TT normalization above, up to an irrelevant overall mode phase.

### Radial spectrum and absence of missing physical modes

Writing $u=(\sin x)^{j+1}v(\cos x)$ turns the master equation into

$$\begin{align}
(1-z^2)v''-(2j+3)zv'+[\omega^2-(j+1)^2]v=0,\qquad z=\cos x.
\end{align}$$

Regularity at the centre and the Neumann or Dirichlet endpoint condition give $v=C_n^{j+1}$ and $\omega=j+1+n$, with even or odd $n$, respectively. Equivalently one can reflect a Neumann solution evenly or a Dirichlet solution oddly across $x=\pi/2$ and use the Gegenbauer problem on the full interval. The operator $-\partial_x^2+j(j+1)/\sin^2x$ is limit-point at $x=0$ for $j\geq1$; the specified condition at the regular endpoint $x=\pi/2$ defines a positive self-adjoint Sturm–Liouville problem with a complete discrete basis in $L^2(\mathrm dx)$.

On $S^2$ the scalar- and transverse-vector-derived sectors exhaust a symmetric metric perturbation; there is no independent smooth transverse-traceless tensor-harmonic sector. For $j\geq2$ the constraints and the reconstruction above leave one master degree of freedom in each parity. A vanishing master function leaves only gauge. The exceptional gravitational $j=0,1$ sectors add no smooth vacuum oscillators: mass and angular-momentum deformations of AdS are singular at the centre, while the remaining centre/coordinate deformations are gauge. Likewise Maxwell $j=0$ would carry Coulomb electric or magnetic flux and is excluded by smooth source-free fields on the full ball. Boundary-source modes and charged or punctured geometries are outside the stated problem.

At graviton energy $\omega=3+q$, the union of the two branches contains exactly one $V_j$ for every $j=2,\ldots,q+2$, with $n=q+2-j$. At Maxwell energy $\omega=2+q$, it contains exactly one $V_j$ for every $j=1,\ldots,q+1$, with $n=q+1-j$. Hence

$$\begin{align}
d_q^{\mathrm{grav}}=(q+1)(q+5),\qquad d_q^{\mathrm{Max}}=(q+1)(q+3).
\end{align}$$

Every smooth finite-energy real solution, after quotienting proper gauge, can therefore be expanded as

$$\begin{align}
h_{\mu\nu}&=\sum_{j=2}^\infty\sum_{m=-j}^j\sum_{p=0}^\infty
\left(a^{\mathrm S}_{pjm}h^{\mathrm S}_{2p,jm,\mu\nu}
+a^{\mathrm V}_{pjm}h^{\mathrm V}_{2p+1,jm,\mu\nu}+\mathrm{c.c.}\right),\\
A_\mu&=\sum_{j=1}^\infty\sum_{m=-j}^j\sum_{p=0}^\infty
\left(a^{\mathrm E}_{pjm}A^{\mathrm E}_{2p,jm,\mu}
+a^{\mathrm B}_{pjm}A^{\mathrm B}_{2p+1,jm,\mu}+\mathrm{c.c.}\right).
\end{align}$$

The coefficients have $\omega_{\mathrm{CPS}}=i\sum_I\delta a_I^\dagger\wedge\delta a_I$ and, on quantization, $[a_I,a_J^\dagger]=\delta_{IJ}$. Completeness here is the standard harmonic/constraint/Sturm–Liouville argument for this linear fixed-boundary problem; it does not assert nonlinear extendibility of any individual mode.

## Verification and source

The scalar/vector master-field organization can be compared with Dias–Santos, [arXiv:1705.03065](https://arxiv.org/abs/1705.03065), sections II and appendix A. The reconstruction was checked directly in the conventions of this note; frequency-domain signs and factors of $f$ must be read from the formulas above. Appendix A, p. 29, was inspected as a rendered page, in addition to text extraction.

- **Verified:** xAct/xCoba supplies the AdS background connection and curvature. For arbitrary $j,m,\omega$, substitution of both graviton reconstructions gives zero for every component of $\delta R_{\mu\nu}+3h_{\mu\nu}$, using only the scalar harmonic equation and master ODE. Both Maxwell divergences vanish by the same general symbolic check. The two ADM radial norm identities, including the scalar surface term, vanish as symbolic residuals.
- **Verified:** Mathematica reduces the generic master ODE to the Gegenbauer equation; all radial equations, endpoint conditions, radial integrals, and the explicit derivative formula also pass exact checks for $j=1,\ldots,4$, $n=0,\ldots,5$. Sage confirms the two unrefined character sums through energy 14. The general integral follows from Gegenbauer orthogonality; the general completeness statement uses the Sturm–Liouville argument above, not the finite scan.
- **Assumptions:** unit AdS radius; the universal-cover time coordinate; smooth source-free centre; fixed conformal boundary metric and fixed zero Maxwell potential; standard Dirichlet gravitational action; proper gauge quotient; $g=g^{(0)}+\sqrt{8\pi G_4}\,h$.
- **Not verified:** nonlinear continuations, other boundary conditions, and extensions with sources or singular centres. These are not part of the mode problem solved here.

The reproducible checks are in `verification/global_ads4_mode_tensors.wl`, `verification/global_ads4_mode_radial.wl`, and `verification/global_ads4_mode_characters.sage`; their saved results are in `verification/global_ads4_mode_results.json`.
