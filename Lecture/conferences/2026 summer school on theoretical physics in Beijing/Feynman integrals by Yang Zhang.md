---
references: 1412.2296, Analytic tools for Feynman integrals, 2201.03593
---

## Tensor Reduction

Consider a $\displaystyle{L}$-loop Feynman integral with tensor indices

$$\begin{align}
I^{\mu_{m_{1}}\dots \mu _{m_{1}}\dots \mu _{L}\dots \mu _{m_{L}}} & = \int \prod ^{L}_{n=1} \dfrac{\mathrm{d}^{D}\ell _{i}}{i\pi^{D/2}} \dfrac{\ell_{1}^{\mu_{1}}\dots \ell _{1}^{\mu _{m_{1}}}\dots \ell _{L}^{\mu _{L}}\dots \ell _{L}^{\mu _{m_{L}}}}{D^{\alpha_{1}}_{1}\dots D_{K}^{\alpha _{K}}}
\end{align}$$

PV reduction

$$\begin{align}
G[\alpha_{1},\dots,\alpha _{K}] & = \int \prod ^{L}_{i=1}  \dfrac{\mathrm{d}^{D}\ell _{i}}{i\pi ^{D/2}} \dfrac{1}{D_{1}^{\alpha_{1}}\dots D_{K}^{\alpha _{K}}}
\end{align}$$

---

A warming up example, consider the scalar integral with four external legs and one loop. All momenta are outgoing and onshell (massless)

$$\begin{align}
\sum ^{4}_{i=1} p_{i} & =0, & p_{i}^{2}=0,\quad i=1,2,3,4
\end{align}$$

for example, consider the Feynman integral

$$\begin{align}
I^{\mu} & =\int \dfrac{\mathrm{d}^{D}\ell}{i\pi ^{D/2}} \dfrac{\ell ^{\mu}}{D_{1}^{\alpha_{1}}\dots D_{4}^{\alpha _{4}}}
\end{align}$$

with

$$\begin{align}
D_{1} & =\ell ^{2}, & D_{2} & =(\ell-p_{1})^{2}, & D_{3} & =(\ell-p_{12})^{2}, & D_{4} & =(\ell-p_{123})^{2}
\end{align}$$

(we have omit the $\displaystyle{i\varepsilon}$ prescription, which is not important for reduction). Since we have only 3 independent momenta chosen to be $\displaystyle{p_{1},p_{2},p_{3}}$, we can expand

$$\begin{align}
I^{\mu} & =p_{1}^{\mu}I_{1}+p_{2}^{\mu}I_{2}+p_{3}^{\mu}I_{3}
\end{align}$$

and by some algebra, we can solve for $I_1,I_2,I_3$ by contracting with the external momenta and using the fact that the integral is Lorentz covariant.

Another slightly more complicated example is

$$\begin{align}
I^{\mu_{1}\mu_{2}} & = \int \dfrac{\mathrm{d}^{D}\ell}{i\pi ^{D/2}} \dfrac{\ell ^{\mu_{1}}\ell ^{\mu_{2}}}{D_{1}^{\alpha_{1}}\dots D_{4}^{\alpha_{4}}} \\
 & =p_{1}^{\mu_{1}}p_{1}^{\nu}I_{11}+(p_{1}^{\mu_{1}}p_{2}^{\mu_{2}}+p_{1}^{\mu_{2}}p_{2}^{\mu_{1}})I_{12}+\dots \\
 &  +\eta ^{\mu \nu}I_{00}
\end{align}$$

in some sense we can use tensor product of $\displaystyle{S^{n}}$ to decompose the tensor structure into irreducible representations, which simplifies the reduction.

---

## Parameterization of FI

Starting from

$$\begin{align}
G[\alpha_{1},\dots,\alpha _{n}] & = \int \prod ^{L}_{i=1}  \dfrac{\mathrm{d}^{D}\ell _{i}}{i\pi ^{D/2}} \dfrac{1}{D_{1}^{\alpha_{1}}\dots D_{n}^{\alpha _{n}}}
\end{align}$$

introduce $\displaystyle{z_{1},\dots,z_{n}}$,

$$\begin{align}
z_{1}D_{1}+\dots+z_{n}D_{n} & =\ell ^{T}A\ell+2b^{T}\ell+C, & \det A\neq 0
\end{align}$$

the Feynman parameterization gives

$$\begin{align}
G[\alpha_{1},\dots ,\alpha _{n}] & =\dfrac{(-1)^{|\alpha|}\Gamma\left( |\alpha|-\dfrac{DL}{2} \right)}{\Gamma(\alpha_{1})\dots \Gamma(\alpha _{n})} \int _{0}^{1} \prod ^{n}_{i=1} \mathrm{d}z_{i} \delta\left( 1-\sum _{i}z_{i} \right) z_{1}^{\alpha_{1}-1}\dots z_{n}^{\alpha _{n}-1} \dfrac{F^{LD/2-|\alpha|}}{U^{(L+1)D/2-|\alpha|}}
\end{align}$$

here $\displaystyle{U=\det A, F=-C\det A+b^{T}A^{\mathrm{adj}}b-i\varepsilon \det A}$.
