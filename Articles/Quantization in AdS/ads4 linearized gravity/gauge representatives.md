---
title: Massless AdS4 Gauge Representatives
date: 2026-06-17
summary: "Constructs direct gauge-fixed representatives for the Maxwell and graviton short modules in global AdS4, separating explicit wavefunctions from the representation-theoretic quotient."
---

we have already solved the mode structure in [[Articles/Quantization in AdS/ads4 linearized gravity/symplectic norm|symplectic norm]] for massive scalar, massless vector and massless TT tensor at each energy level. in this note we will find explicit closed forms for the gauge representatives.

---

The global AdS$_4$ metric is

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{2}^{2}.
\end{align}$$

in the following discussion, time and radial indices are denoted by $\displaystyle{a,b}$, sphere indices are denoted by $\displaystyle{A,B}$, and $\displaystyle{D_{A}}$ is the covariant derivative on the unite $\displaystyle{S^{2}}$. it is useful to introduce the spherical harmonics $\displaystyle{Y_{jm}}$, which are normalized by

$$\begin{align}
\int _{S^{2}}\mathrm{d}\Omega _{2} Y_{jm}^{*}Y_{jm} & =\delta _{jj}\delta _{mm}
\end{align}$$

for $\displaystyle{j\geqslant 1}$, define the transverse vector spherical harmonic

$$\begin{align}
X_{A}^{jm} & =\dfrac{1}{\sqrt{ j(j+1) }}\epsilon _{A}^{~B}D_{B}Y_{jm}
\end{align}$$

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

then we can choose the gauge representative at each level $\displaystyle{(n,j)}$ as

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

here $\displaystyle{C_{n}^{j+1}}$ is the Gegenbauer polynomial. the constant $\displaystyle{\mathcal{N}_{nj}}$ is fixed by the symplectic form as

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

The scalar-type representative is expanded in the scalar-sector basis $\displaystyle{Y_{jm}}$, $\displaystyle{Y_{A}^{jm}}$, $\displaystyle{\gamma_{AB}Y_{jm}}$, and $\displaystyle{Y_{AB}^{jm}}$, rather than in the transverse vector harmonic $\displaystyle{X_{A}^{jm}}$. Unlike the vector-type branch, the direct TT representative is obtained from a coupled scalar-sector radial system with residual zero-norm gauge directions. The resulting closed form is considerably more complicated, so we do not write an explicit scalar-type representative here.
