# The $\mathfrak{so}(2,d-1)$ algebra and highest-weight characters

This note records the representation-theoretic organization of positive-energy modes in global AdS$_d$. The Killing algebra is

$$\mathfrak g=\mathfrak{so}(2,d-1).$$

Set

$$n=d-1,\qquad G=SO_0(2,n),\qquad K=SO(2)\times SO(n).$$

The compact $SO(2)$ generator is the global energy $H$, and $SO(n)$ is the spatial rotation group. When the energy $\Delta$ is not integral, the positive-energy representation is more precisely a representation of the universal cover of $SO_0(2,n)$; the same character formulas below use the Lie-algebra data. The AdS radius is set to $L=1$.

The formulas below are written for bosonic totally symmetric traceless rotation representations. Write

$$[s]\equiv (s,0,\ldots,0)$$

for the rank-$s$ symmetric traceless representation of $SO(n)$, and denote its character by

$$\chi_s^{(n)}(\mathbf y).$$

## 1. Compact decomposition of the Killing algebra

Use embedding-space generators $J_{AB}$ with

$$A,B=-1,0,1,\ldots,n,$$

and metric signature $(-,-,+,\ldots,+)$. The compact generators are

$$H=J_{-1,0},\qquad M_{ij}=J_{ij},\qquad i,j=1,\ldots,n.$$

After complexification, the remaining generators can be organized into energy-raising and energy-lowering operators $P_i$ and $K_i$. They transform as vectors under $SO(n)$ and obey

$$\begin{align}
[H,P_{i}] & =P_{i}, & [H,K_{i}] & =-K_{i}, & [P_{i},P_{j}] & =[K_{i},K_{j}]=0, \\
[M_{ij},P_{k}] & =\delta _{jk}P_{i}-\delta _{ik}P_{j}, & [M_{ij},K_{k}] & =\delta _{jk}K_{i}-\delta _{ik}K_{j} \\
[K_{i},P_{j}] & =2\delta _{ij}H-2M_{ij},
\end{align}$$

This is the compact-Cartan form of the AdS Killing algebra. The $K_i$ annihilate a positive-energy primary, while the $P_i$ generate its positive-energy descendants.

## 2. Positive-energy highest-weight modules

A positive-energy generalized Verma module is denoted by

$$\mathcal V(\Delta,\lambda),$$

where $\lambda$ is a finite-dimensional irreducible representation of $SO(n)$. Its primary satisfies

$$H|\Delta,\lambda\rangle=\Delta|\Delta,\lambda\rangle,\qquad K_i|\Delta,\lambda\rangle=0,$$

and transforms in $\lambda$ under the rotation algebra. Since the $P_i$ commute, the level-$N$ descendants lie in

$$\lambda\otimes \mathrm{Sym}^N(V),$$

where $V$ is the vector representation of $SO(n)$. Thus the module is organized as

$$\mathcal V(\Delta,\lambda)=\bigoplus_{N=0}^{\infty}q^{\Delta+N}\left(\lambda\otimes \mathrm{Sym}^N(V)\right)$$

at the level of the compact energy grading.

The quadratic Casimir eigenvalue on a highest-weight module is

$$C_2(\Delta,\lambda)=\Delta(\Delta-n)+C_2^{SO(n)}(\lambda).$$

For a symmetric traceless rank-$s$ rotation representation,

$$C_2^{SO(n)}([s])=s(s+n-2)=s(s+d-3).$$

## 3. Rotation characters and the universal denominator

Let

$$\mathbf y=(y_1,\ldots,y_r),\qquad y_i=e^{i\alpha_i},$$

where $r=\lfloor n/2\rfloor$ is the rank of $SO(n)$. The common denominator in positive-energy characters is the generating function of symmetric powers of the $SO(n)$ vector representation:

$$\sum_{N=0}^{\infty}q^N\chi_{\mathrm{Sym}^N V}(\mathbf y)=\frac{1}{D_d(q,\mathbf y)}.$$

If $d=2r+1$, then $n=2r$ and $SO(n)=SO(2r)$. The vector weights are $\{\pm e_1,\ldots,\pm e_r\}$, so

$$\chi_V^{SO(2r)}(\mathbf y)=\sum_{i=1}^r(y_i+y_i^{-1}),$$

and

$$D_{2r+1}(q,\mathbf y)=\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).$$

If $d=2r+2$, then $n=2r+1$ and $SO(n)=SO(2r+1)$. The vector weights are $\{0,\pm e_1,\ldots,\pm e_r\}$, so

$$\chi_V^{SO(2r+1)}(\mathbf y)=1+\sum_{i=1}^r(y_i+y_i^{-1}),$$

and

$$D_{2r+2}(q,\mathbf y)=(1-q)\prod_{i=1}^r(1-qy_i)(1-qy_i^{-1}).$$

The symmetric traceless character is

$$\chi_s^{(n)}(\mathbf y)=h_s^{(n)}(\mathbf y)-h_{s-2}^{(n)}(\mathbf y),$$

where $h_m^{(n)}=\chi_{\mathrm{Sym}^m V}$ and $h_m^{(n)}=0$ for $m<0$. Equivalently,

$$\sum_{s=0}^{\infty}t^s\chi_s^{(n)}(\mathbf y)=\frac{1-t^2}{D_d(t,\mathbf y)}.$$

At zero angular potential,

$$g_s^{(n)}:=\chi_s^{(n)}(1)=\binom{n+s-1}{s}-\binom{n+s-3}{s-2}=\frac{(n+2s-2)(n+s-3)!}{s!(n-2)!},$$

where the second binomial term is absent for $s<2$.

## 4. Massive long modules

For a massive totally symmetric spin-$s$ mode, the compact primary transforms as $[s]$. The long module is

$$\mathcal V(\Delta,s)\equiv \mathcal V(\Delta,[s]).$$

Its refined one-particle character is

$$Z_{1,\mathrm{massive}}^{(s)}(q,\mathbf y)=\mathrm{Tr}_{\mathcal V(\Delta,s)}q^H\mathbf y^J=\frac{q^\Delta\chi_s^{(n)}(\mathbf y)}{D_d(q,\mathbf y)},$$

where

$$\mathbf y^J:=\prod_{i=1}^r y_i^{J_i}.$$

At zero angular potential this becomes

$$Z_{1,\mathrm{massive}}^{(s)}(q,1)=\frac{g_s^{(n)}q^\Delta}{(1-q)^n}=\frac{g_s^{(d-1)}q^\Delta}{(1-q)^{d-1}}.$$

The normal-ordered bosonic Fock-space partition function is the plethystic exponential of the one-particle character:

$$\log Z_{\mathrm{massive}}^{(s)}(q,\mathbf y)=\sum_{m=1}^{\infty}\frac{1}{m}Z_{1,\mathrm{massive}}^{(s)}(q^m,\mathbf y^m),$$

with

$$\mathbf y^m=(y_1^m,\ldots,y_r^m).$$

Equivalently,

$$\log Z_{\mathrm{massive}}^{(s)}(q,\mathbf y)=\sum_{m=1}^{\infty}\frac{1}{m}\frac{q^{m\Delta}\chi_s^{(n)}(\mathbf y^m)}{D_d(q^m,\mathbf y^m)}.$$

## 5. Massless short modules

For a massless integer-spin field with $s\ge 1$, the normalizable primary energy is

$$\Delta_s=s+d-3=s+n-2.$$

At this value the long module contains a gauge or null submodule,

$$\mathcal V(s+d-2,s-1).$$

The physical positive-energy module is the short quotient

$$\mathcal D(s+d-3,s)=\frac{\mathcal V(s+d-3,s)}{\mathcal V(s+d-2,s-1)}.$$

Therefore the one-particle character is

$$Z_{1,\mathrm{massless}}^{(s)}(q,\mathbf y)=\frac{q^{s+d-3}\chi_s^{(d-1)}(\mathbf y)-q^{s+d-2}\chi_{s-1}^{(d-1)}(\mathbf y)}{D_d(q,\mathbf y)}.$$

At zero angular potential,

$$Z_{1,\mathrm{massless}}^{(s)}(q,1)=\frac{q^{s+d-3}\left(g_s^{(d-1)}-qg_{s-1}^{(d-1)}\right)}{(1-q)^{d-1}}.$$

The corresponding Fock-space partition function is

$$\log Z_{\mathrm{massless}}^{(s)}(q,\mathbf y)=\sum_{m=1}^{\infty}\frac{1}{m}\frac{q^{m(s+d-3)}\chi_s^{(d-1)}(\mathbf y^m)-q^{m(s+d-2)}\chi_{s-1}^{(d-1)}(\mathbf y^m)}{D_d(q^m,\mathbf y^m)}.$$
