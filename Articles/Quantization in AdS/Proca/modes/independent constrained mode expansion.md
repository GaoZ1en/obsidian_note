# Independent Constrained Mode Expansion for Proca

Expand the temporal component and the spatial one-form independently in the original action. At every finite cutoff this gives a singular Lagrangian with second-class constraints. No continuous constraint is solved in constructing the expansion. A free-theory Schur complement provides a check afterwards, and a non-derivative interaction can be retained without explicitly solving its nonlinear constraint.

## Fields, Domain, and Action

Use unit-radius global AdS$_3$, signature $(-,+,+)$, and a real massive vector:

$$\begin{align}
\mathrm ds^2&=-f\,\mathrm dt^2+\frac{\mathrm dr^2}{f}+r^2\mathrm d\phi^2,&f&=1+r^2,&\mu^2&>0,\\
A&=A_t\,\mathrm dt+a,&a&=A_r\,\mathrm dr+A_\phi\,\mathrm d\phi,\\
S_0&=\int_M\sqrt{-g}\left(-\tfrac14F_{\mu\nu}F^{\mu\nu}-\tfrac12\mu^2A_\mu A^\mu\right)\mathrm d^3x.
\end{align}$$

Take smooth centre-regular trial profiles with finite quadratic action and vanishing boundary variation at infinity. More precisely, use the zero-source form completion of smooth profiles of compact spatial support. Finite trial profiles must lie in this form domain; their asymptotic powers need not equal on-shell powers. No gauge fixing or divergence condition is imposed. Proca has no gauge redundancy for $\mu^2>0$. Time endpoint variations of the spatial coefficients vanish.

Use the electric and scalar pairings of [off-shell mode expansion for Proca](<off-shell mode expansion for Proca.md>):

$$\begin{align}
(a,b)_E&=\int\mathrm dr\mathrm d\phi\left(ra_rb_r+\frac{a_\phi b_\phi}{rf}\right),\\
(v,w)_0&=\int\mathrm dr\mathrm d\phi\,\frac r f vw,\\
V(a,b)&=\int\mathrm dr\mathrm d\phi\left[ \frac f r(\partial_ra_\phi-\partial_\phi a_r)(\partial_rb_\phi-\partial_\phi b_r) +\mu^2rf a_rb_r+\frac{\mu^2}{r}a_\phi b_\phi\right],\\
S_0&=\frac12\int\mathrm dt\left[(\dot a-\mathrm d_\Sigma A_t,\dot a-\mathrm d_\Sigma A_t)_E +\mu^2(A_t,A_t)_0-V(a,a)\right].
\end{align}$$

Choose linearly independent real profiles $e_i$ and $w_A$, with $i=1,\ldots,n_q$ and $A=1,\ldots,n_z$. They need not solve field equations. Set

$$\begin{align}
a&=\sum_iq_i(t)e_i,&A_t&=\sum_Az_A(t)w_A,\\
M_{ij}&=(e_i,e_j)_E,&B_{iA}&=(e_i,\mathrm d_\Sigma w_A)_E,\\
H_{AB}&=(\mathrm d_\Sigma w_A,\mathrm d_\Sigma w_B)_E,&W_{AB}&=(w_A,w_B)_0,\\
V_{ij}&=V(e_i,e_j),&Q&=H+\mu^2W.
\end{align}$$

The exact action restricted to these spaces is

$$\begin{align}
L_N&=\tfrac12\dot q^TM\dot q-\dot q^TBz+\tfrac12z^TQz-\tfrac12q^TVq.
\end{align}$$

In particular, there is no $\dot z$. Varying this finite action gives

$$\begin{align}
M\ddot q-B\dot z+Vq&=0,&Qz-B^T\dot q&=0.
\end{align}$$

These equations follow after truncation; no equation has been imposed on the off-shell coefficient histories.

## The Gradient Projection Remainder

Let $P_E$ be the electric orthogonal projection onto $\operatorname{span}\{e_i\}$. Define

$$\begin{align}
D&=M^{-1}B,& R&=H-B^TM^{-1}B,\\
R_{AB}&=((1-P_E)\mathrm d_\Sigma w_A,(1-P_E)\mathrm d_\Sigma w_B)_E,\\
C&=\mu^2W+R.
\end{align}$$

Then $R\geq0$ and

$$\begin{align}
L_N&=\tfrac12(\dot q-Dz)^TM(\dot q-Dz)+\tfrac12z^TCz-\tfrac12q^TVq.
\end{align}$$

The simpler formula with only $\mu^2W$ in the second term requires $\mathrm d_\Sigma\operatorname{span}\{w_A\}\subset\operatorname{span}\{e_i\}$. Independently truncating two complete bases does not guarantee this inclusion. For example, with the angular factor $Y_0=(2\pi)^{-1/2}$,

$$\begin{align}
e&=Y_0\frac r{f^2}\,\mathrm dr,&w&=Y_0f^{-2},\\
M&=\tfrac1{12},&B&=-\tfrac16,&H&=\tfrac25,&W&=\tfrac18,&R&=\tfrac1{15}.
\end{align}$$

Dropping $R$ would change the restricted field action. It is not a physical additional mass. The present construction assumes $\mu^2>0$ and makes no claim about a Maxwell limit of an arbitrary truncation.

## Hamiltonian and Second-Class Constraints

The coefficient momenta and canonical Hamiltonian are

$$\begin{align}
p&=M\dot q-Bz,&\pi_A&=0,\\
H_c&=\tfrac12p^TM^{-1}p+p^TM^{-1}Bz-\tfrac12z^TCz+\tfrac12q^TVq,\\
H_T&=H_c+u^T\pi.
\end{align}$$

Use $\{q_i,p_j\}=\delta_{ij}$ and $\{z_A,\pi_B\}=\delta_{AB}$. Preserving the primary constraints gives

$$\begin{align}
\dot\pi&=-\partial_zH_c=\chi,&\chi&=Cz-B^TM^{-1}p,\\
\{\pi_A,\chi_B\}&=-C_{AB},&\{\chi_A,\chi_B\}&=0,\\
\mathcal C&=\begin{pmatrix}0&-C\\
C&0\end{pmatrix}.
\end{align}$$

Since $W>0$ and $R\geq0$, $C>0$. There are exactly $2n_z$ second-class constraints and no tertiary constraint: preservation of $\chi$ fixes $u=\dot z$. The physical phase-space dimension is $2n_q$. The variables $z$ are retained coordinates with constrained momenta, not gauge multipliers.

The $(\chi,\chi)$ block of $\mathcal C^{-1}$ vanishes. Because $q,p$ commute with $\pi$, their Dirac brackets remain

$$\begin{align}
\{q_i,q_j\}_D&=0,&\{q_i,p_j\}_D&=\delta_{ij},&\{p_i,p_j\}_D&=0.
\end{align}$$

At fixed cutoff the free theory therefore has an ordinary oscillator quantization after reduction, with $[q_i,p_j]=i\delta_{ij}$. This is a finite-system statement; no continuum interacting quantization is inferred.

## Free Comparison After Constructing the Constrained System

For comparison only, complete the finite-dimensional square:

$$\begin{align}
\zeta&=z-Q^{-1}B^T\dot q,&K_N&=M-BQ^{-1}B^T,\\
L_N&=\tfrac12\dot q^TK_N\dot q-\tfrac12q^TVq+\tfrac12\zeta^TQ\zeta,\\
K_N^{-1}&=M^{-1}+M^{-1}BC^{-1}B^TM^{-1},\\
H_{\mathrm{red}}&=\tfrac12p^TK_N^{-1}p+\tfrac12q^TVq.
\end{align}$$

Positivity of the electric norm together with $\mu^2W>0$ makes the block form in $(\dot q,z)$ positive definite, hence $K_N>0$. Free frequencies follow from $Vv=\omega^2K_Nv$. Equivalently, inserting $q,z\propto e^{-i\omega t}$ directly into the constrained equations gives

$$\begin{align}
\begin{pmatrix}V-\omega^2M&i\omega B\\
i\omega B^T&Q\end{pmatrix}
\begin{pmatrix}q_\omega\\
z_\omega\end{pmatrix}&=0.
\end{align}$$

Eliminating the lower block gives exactly the same frequency equation. This is a check on the finite construction and is not needed to define it.

There is a separate distinction between eliminating $A_t$ in the continuum and eliminating its finite coefficients. For fixed $\dot a$ in the spatial trial space,

$$\begin{align}
\dot q^TK_N\dot q &=\min_{A_t\in\operatorname{span}\{w_A\}} \left[\|\dot a-\mathrm d_\Sigma A_t\|_E^2+\mu^2\|A_t\|_0^2\right]\\
&\geq\min_{A_t\ \mathrm{in\ the\ full\ temporal\ form\ domain}} \left[\|\dot a-\mathrm d_\Sigma A_t\|_E^2+\mu^2\|A_t\|_0^2\right] =(\dot a,\mathsf K\dot a)_E.
\end{align}$$

Here $\mathsf K=1-\mathrm d_\Sigma\mathsf L^{-1}\mathrm d_\Sigma^\dagger$ is the continuously reduced operator, with $\mathsf L=\mathrm d_\Sigma^\dagger\mathrm d_\Sigma+\mu^2$ on the chosen domain. Equality requires the continuous minimizing temporal profile to lie in the finite temporal space. Gradient closure alone does not imply this. For fixed spatial space, the finite constrained frequencies can therefore lie below the corresponding continuously reduced Ritz values. There is no general upper-bound conclusion relative to the exact field spectrum.

## Explicit Axisymmetric AdS Truncation

For a concrete calculation put $x=f^{-1}$, $Y_0=(2\pi)^{-1/2}$, and use $n=0,\ldots,N-1$:

$$\begin{align}
e_{r,n}&=Y_0r x^{n+2}\,\mathrm dr,& e_{\phi,n}&=Y_0r^2x^{n+2}\,\mathrm d\phi,&w_n&=Y_0x^{n+1},\\
a&=\sum_n(q_{r,n}e_{r,n}+q_{\phi,n}e_{\phi,n}),&A_t&=\sum_nz_nw_n,\\
\mathrm d_\Sigma w_n&=-2(n+1)e_{r,n}.
\end{align}$$

These are smooth one-forms at the centre: $r\,\mathrm dr$ and $r^2\mathrm d\phi$ are smooth in Cartesian coordinates. Their falloffs make every displayed action integral and boundary variation finite or zero as required. This is an axisymmetric ($m=0$) implementation, not a numerical test of all angular sectors. The general matrix construction above applies to other sectors with appropriate smooth real profiles.

Order $q=(q_r,q_\phi)$ and write $s=i+j$. All spatial matrices are explicit:

$$\begin{align}
(M_r)_{ij}&=\frac1{2(s+2)(s+3)},& (M_\phi)_{ij}&=\frac1{2(s+3)(s+4)},\\
W_{ij}&=\frac1{2(s+2)},& D_{ij}&=-2(i+1)\delta_{ij},\\
M&=\operatorname{diag}(M_r,M_\phi),&
B&=\begin{pmatrix}M_rD\\
0\end{pmatrix},&H&=D^TM_rD,\\
(V_r)_{ij}&=\frac{\mu^2}{2(s+1)(s+2)},\\
(V_\phi)_{ij}&=2\left[\frac{(i+1)(j+1)}{s+2} -\frac{(i+1)(j+2)+(i+2)(j+1)}{s+3} +\frac{(i+2)(j+2)}{s+4}\right] +\frac{\mu^2}{2(s+2)(s+3)},\\
V&=\operatorname{diag}(V_r,V_\phi),&R&=0,&C&=\mu^2W.
\end{align}$$

Thus this family has $2N$ spatial coordinates and $N$ temporal coordinates, with $2N$ second-class constraints. At $N=1$,

$$\begin{align}
M&=\operatorname{diag}(1/12,1/24),&B&=(-1/6,0)^T,&Q&=1/3+\mu^2/4,\\
V&=\operatorname{diag}(\mu^2/4,(4+\mu^2)/12),& K_N&=\operatorname{diag}\left(\frac{\mu^2}{4(4+3\mu^2)},\frac1{24}\right),\\
\omega_r^2&=4+3\mu^2,&\omega_\phi^2&=8+2\mu^2.
\end{align}$$

For $\mu=1$, exact rational matrix assembly followed by 80-digit generalized diagonalization gives the following frequencies:

| $N$ | Radial sector: lowest three | Angular sector: lowest three |
|---:|---|---|
| 4 | $2.95518525,\ 4.83723926,\ 6.59882380$ | $3.03231342,\ 5.09437427,\ 7.18882241$ |
| 8 | $2.98711921,\ 4.95835620,\ 6.90765388$ | $3.01093145,\ 5.03210776,\ 7.06293655$ |
| 16 | $2.99649083,\ 4.98920630,\ 6.97765176$ | $3.00324589,\ 5.00963862,\ 7.01904786$ |
| 24 | $2.99838859,\ 4.99510397,\ 6.99003369$ | $3.00153267,\ 5.00457060,\ 7.00907386$ |
| field target | $3,\ 5,\ 7$ | $3,\ 5,\ 7$ |

The field-theory target is the standard $m=0$ Proca spectrum $\omega_p=\mu+2+2p$ from the radial equations in the existing off-shell note. At $\mu=2,N=4$ both computed sectors give $4,6,8$ to the reported precision. The monomial Gram matrices become poorly conditioned, so exact assembly and high working precision are essential. These finite computations provide a benchmark, not a proof of convergence or an error estimate for the constrained approximation.

## Retaining a Nonlinear Constraint

Add a non-derivative quartic interaction with the same field domain:

$$\begin{align}
S_{\mathrm{int}}&=-\frac g4\int_M\sqrt{-g}(A_\mu A^\mu)^2\,\mathrm d^3x,\\
U(q,z)&=\frac g4\int_\Sigma\mathrm dr\mathrm d\phi\,r \left(fa_r^2+\frac{a_\phi^2}{r^2}-\frac{A_t^2}{f}\right)^2,\\
L_N&=L_{N,0}-U(q,z),&H_c&=H_{c,0}+U(q,z).
\end{align}$$

For any finite trial space where this quartic integral exists, $\pi=0$ remains primary, but the secondary constraint and its Jacobian become

$$\begin{align}
\chi&=Cz-B^TM^{-1}p-U_z(q,z),& J&=C-U_{zz}(q,z),\\
\{\pi_A,\chi_B\}&=-J_{BA}.
\end{align}$$

Near the vacuum $J=C>0$, so the implicit function theorem supplies a local regular branch. On a branch where $J$ is invertible, the constraints remain second class, even though $\{\chi_A,\chi_B\}$ need no longer vanish. The inverse constraint matrix still has zero $(\chi,\chi)$ block, so the $q,p$ Dirac brackets remain canonical. This statement is local in phase space; it does not assume a global solution for $z$ or global stability for arbitrary $g$.

One can evolve the constrained system while retaining $z$:

$$\begin{align}
\dot q&=M^{-1}(p+Bz),\\
\dot p&=-Vq-U_q,\\
J\dot z&=B^TM^{-1}(-Vq-U_q)+U_{zq}M^{-1}(p+Bz),\\
\pi&=0,&\chi(q,p,z)&=0\quad\text{initially}.
\end{align}$$

The third equation is $\dot\chi=0$. It fixes the primary multiplier and requires only a linear solve for $\dot z$ at the current state. It does not require an explicit function $z=z_*(q,p)$. Constraint and energy drift must be monitored in numerical evolution. Derivative interactions that introduce $\dot A_t$ are outside this construction.

For the $N=1$ profiles above, the spatial integral is

$$\begin{align}
U&=\frac{g}{3360\pi}\left( 2q_\phi^4+7q_\phi^2q_r^2+7q_r^4 -14q_\phi^2z^2-21q_r^2z^2+42z^4\right),\\
J&=\frac{\mu^2}{4}-\frac g{240\pi} \left(36z^2-2q_\phi^2-3q_r^2\right),\\
\chi&=\frac{\mu^2}{4}z+2p_r-U_z,\\
H_c&=6p_r^2+12p_\phi^2-2zp_r-\frac{\mu^2}{8}z^2 +\frac{\mu^2}{8}q_r^2+\frac{4+\mu^2}{24}q_\phi^2+U.
\end{align}$$

As a concrete evolution, take $\mu^2=1$, $g=1/2$, and

$$\begin{align}
(q_r,q_\phi,p_r,p_\phi)|_{t=0}&=(1/10,2/25,1/50,-1/100),\\
z(0)&\simeq-0.1601124772330353.
\end{align}$$

The initial $z$ is obtained by a numerical root solve on the branch near the free value $-4/25$. Subsequent evolution retains all five variables. Mathematica's explicit Runge–Kutta integration on $0\leq t\leq20$, at 60-digit working precision and accuracy/precision goals 25, yields on the sample grid $t=k/20$:

$$\begin{align}
\max|\chi|&\simeq1.85\times10^{-14},\\
\max|H_c(t)-H_c(0)|&\simeq3.45\times10^{-13},\\
\min J&\simeq0.2492516.
\end{align}$$

Symbolic substitution also gives $\dot\chi=0$ and $\dot H_c=-\chi^T\dot z$, so energy is conserved on the constraint surface. The sampled values check one regular finite-dimensional trajectory; they do not establish a continuum interacting limit or a global bound on $J$.

## Reproduction and Verification

Run `wolframscript -file proca_independent_modes_verification.wl` in this directory. It writes `proca_independent_modes_results.json`, checks that the integrator reaches the requested final time, and fails on a failed symbolic or monitored numerical check.

**Verified:** Mathematica checks of the Legendre transform, square completion, inverse kinetic identity, and secondary-constraint sign in a symbolic two-spatial/one-temporal system; direct spatial matrix integrals for $0\leq i,j\leq2$; the non-closed gradient example; all displayed spectra; the quartic spatial integral, constraint Jacobian, symbolic constraint and on-constraint energy propagation; the stated finite-time trajectory. The arbitrary-dimensional matrix identities and constraint count follow from the displayed algebra, not from extrapolating the finite checks.

**Assumptions:** $\mu^2>0$, independent finite trial profiles in the stated boundary domain, exact spatial integration, and no temporal derivatives in the interaction. The nonlinear evolution is restricted to $\det J\neq0$.

**Not verified:** a general convergence/stability theorem for the coupled spatial/temporal truncations, numerical spectra for $m\neq0$, nonlinear evolution near rank loss, continuum interacting dynamics, and renormalized quantum interactions.
