# Order-G Einstein–scalar action and two-particle spectra on the vacuum orbit

This is the spectral companion to [Einstein scalar solutions on the vacuum orbit](Einstein%20scalar%20solutions%20on%20the%20vacuum%20orbit.md). It extends the connected scalar-primary calculation in [two particle spectrum](two%20particle%20spectrum.md), with its physical-mass and homogeneous-response conventions, to every admissible background

$$
 \bar g[a]=\Phi_a^*g^{(0)},\qquad \kappa^2=16\pi G,\qquad L_{\rm AdS}=1.
$$

The answer depends on what is meant by energy. With the transported Killing clock $K_a=\Phi_a^*\partial_t$, **the complete order-$G$ scalar-primary spectrum is isospectral to the reference spectrum, including both low-spin corrections**. With the original boundary time, a generic background is not stationary: its transported states have calculable energy expectation values, not new stationary eigenvalues labelled by $a$. For periodic representatives the fixed-time evolution also has a complete set of Floquet phases. Sections 5–8 give these three results separately.

## 1. The action, boundary conditions, and perturbative counting

Use signature $(-,+,+)$ and exactly the action of [perturbation](perturbation.md):

$$
\begin{aligned}
S_R[g,\phi]={}&\frac1{\kappa^2}\int_{M_R}\!d^3x\sqrt{-g}(R+2)
 +\frac2{\kappa^2}\int_{\Gamma_R}\!d^2x\sqrt{-\gamma}(K-1)\\
&-\frac12\int_{M_R}\!d^3x\sqrt{-g}
          \big(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+m^2\phi^2\big).
\end{aligned}
\tag{1.1}
$$

The normal to the timelike regulator is outward spacelike. Keep smooth-center regularity, Brown–Henneaux falloffs and the source-free fast scalar branch, $\Delta>1$, $m^2=\Delta(\Delta-2)$. Here $\Delta$ denotes the physical lowest one-scalar energy gap; the mass subtraction is the one in the reference spectrum note. There is no added independent order-$G$ scalar contact interaction. Retain $\Delta\ne(1+\sqrt5)/2$ when using the existing logarithm-free de Donder realization.

Keep $a$ fixed while doing the matter calculation and write

$$
 g=\bar g[a]+\kappa^2 k+O(\kappa^4),\qquad \phi=\varphi.
 \tag{1.2}
$$

The scalar $\varphi$ is kept as the unexpanded variational field in this action expansion; its order-$\kappa^2$ solution correction is constructed in the companion. Substituting that correction off shell would also produce $\delta S_{\rm KG}[\psi_1]$, which cannot simply be dropped. The metric counting above counts scalar-induced backreaction, not the already resummed vacuum graviton. The order-$G$ formulas below are exact in an admitted finite $\Phi_a$. Expanding instead at fixed canonically normalized $a$ produces powers of $\kappa$ from $\Phi_a=e^{\kappa\zeta[a]}$; section 7.3 explicitly performs that different expansion.

Define the pairing $\langle k,J\rangle_a=\int d^3x\sqrt{-\bar g[a]}\,k_{\mu\nu}J^{\mu\nu}$ and the linearized Einstein operator $\mathcal L_a=D\mathcal E|_{\bar g[a]}$. After subtracting the pure-background action, its quadratic expansion is

$$
 S_R-S_R[\bar g[a],0]
 =S_{\rm KG}[\bar g[a],\varphi]
 +\kappa^2\left[-\frac12\mathfrak B_a(k,k)
                       +\frac12\langle k,T_a[\varphi]\rangle_a\right]
 +O(\kappa^4).
 \tag{1.3}
$$

Here $\mathfrak B_a$ is the **boundary-completed gravitational Hessian**. Its bulk expression is $\langle k,\mathcal L_a k\rangle_a$; the surface/endpoint terms are the ones inherited from (1.1), not a new freely chosen boundary prescription. The sign follows from $\delta S_{\rm grav}=-\kappa^{-2}\langle\delta g,\mathcal E\rangle$ for a covariant metric variation, while $\delta S_{\rm KG}=\tfrac12\langle\delta g,T\rangle$. Equation (1.3) is an off-shell action expansion in $k,\varphi$ before eliminating $k$.

For the spectral exchange calculation, evaluate its quartic coefficient on free on-shell scalar modes. Their polarized stresses are conserved, so the chosen Einstein response obeys all constraints:

$$
 \mathcal L_a k_{\varphi,a}=\frac12T_a[\varphi],\qquad
 k_{\varphi,a}=\frac12G_aT_a[\varphi].
 \tag{1.4}
$$

Elimination in the reciprocal quadratic pairing gives

$$
 \boxed{\quad
 S_{\rm eff}[a;\varphi]
 =S_{\rm KG}[\bar g[a],\varphi]
 +\frac{\kappa^2}{4}\langle k_{\varphi,a},T_a[\varphi]\rangle_a
 +O(G^2)
 =S_{\rm KG}+\frac{\kappa^2}{8}\langle T_a,G_aT_a\rangle_a+O(G^2).
 \quad}
 \tag{1.5}
$$

The two factors of one-half have different origins: $\mathcal L_a k=T/2$, and substitution in the gravitational quadratic action cancels half of the linear matter coupling. Treating $k$ as an externally prescribed potential and keeping only $\tfrac{\kappa^2}{2}kT$ would give twice the answer.

The response used to define a conservative effective action must have the reciprocal pairing of the reference spectral problem. An arbitrary retarded kernel need not do so: variation of $\langle T,G_RT\rangle$ symmetrizes $G_R$, and does not by itself give a retarded equation. Likewise the finite-source kernel in the response note is not an asserted inverse on every off-shell history. Equation (1.3) is off shell; equation (1.5), without an additional gauge-fixed off-shell construction, specifies the **on-free-shell quartic exchange functional used for the spectrum**. No conclusion here requires extending that inverse beyond its actual domain.

## 2. Exact transport of the action and every exchange matrix element

Let $\mathscr U_a=\Phi_a^*$. For $\varphi=\mathscr U_a v$ the companion proves

$$
 T_a[\mathscr U_a v]=\mathscr U_aT_0[v],\qquad
 G_a=\mathscr U_aG_0\mathscr U_a^{-1},\qquad
 k_{\varphi,a}=\mathscr U_a k_v.
 \tag{2.1}
$$

The integration region is also transported, $D_a=\Phi_a^{-1}D_0$. For covariant tensors $k,T$, the raised-index contraction and volume form transform together:

$$
 \int_{D_a}dV_a\,(\mathscr U_a k)_{\mu\nu}(\mathscr U_a T)^{\mu\nu}
 =\int_{D_0}dV_0\,k_{\mu\nu}T^{\mu\nu}.
 \tag{2.2}
$$

The same change-of-variables identity holds for the GHY and counterterm terms at finite cutoff, when the regulator and temporal boundaries are pulled back. Consequently, after vacuum subtraction and with the same endpoint prescription,

$$
 \boxed{\quad
 S_{\rm eff}[a;\mathscr U_a v]-S_{\rm eff}[a;0]
 =S_{\rm eff}[0;v]-S_{\rm eff}[0;0]+O(G^2).
 \quad}
 \tag{2.3}
$$

This is not an assertion that the action at two different, untransported cutoffs is numerically identical. Changing the defining function can produce the usual local boundary Weyl term; with fixed sources and the same transformed-vacuum subtraction its background contribution cancels. A change of temporal endpoints must still be included when forming a Hamiltonian in the original boundary clock. We use transported slabs for (2.3) and compute original-frame charges separately in section 7.

Differentiate (2.3) four times in independent scalar-mode coefficients. All order-$G$ quartic coefficients agree. Polarization, angular selection and the average along $K_a$ also agree. Thus this calculation transports **the full quartic matrix**, including annihilation/crossed channels and the low-spin part; it is not merely an argument about its universal high-spin tail.

## 3. The transported one-particle basis and quantization convention

In the reference geometry put $f=1+r^2$. The normalized scalar modes are

$$
\begin{aligned}
u_{n j}(t,r,\varphi)={}&
 \sqrt{\frac{n!\Gamma(n+\Delta+|j|)}
 {2\pi\Gamma(n+\Delta)\Gamma(n+1+|j|)}}
 e^{-i(\Delta+2n+|j|)t+ij\varphi}\\
&\times r^{|j|}f^{-(\Delta+|j|)/2}
 P_n^{(\Delta-1,|j|)}\!\left(\frac{r^2-1}{r^2+1}\right).
\end{aligned}
\tag{3.1}
$$

Let $(\tau_a,R_a,\theta_a)=(t,r,\varphi)\circ\Phi_a$. A closed all-background formula for the modes is

$$
 u_{n j}^{[a]}(x)=u_{n j}(\tau_a(x),R_a(x),\theta_a(x)).
 \tag{3.2}
$$

They have frequency $\omega_{n j}=\Delta+2n+|j|$ under $K_a$ and angular momentum $j$ under $J_a=\Phi_a^*\partial_\varphi$. The integrated KG form on $\Sigma_a=\Phi_a^{-1}\Sigma_0$ equals the reference KG form. Transporting the positive-frequency space therefore defines an isometric one-particle map and its bosonic Fock lift $\mathscr U_a^{(2)}$. This compares quantizations on two backgrounds; it is not a claim that an arbitrary asymptotic diffeomorphism acts only on scalar particles in a fixed full-gravity Fock space.

Use the transported vacuum, normal ordering and the same physical mass subtraction. Then $[b_I,b_J^\dagger]=\delta_{IJ}$ and

$$
 |IJ\rangle_a=\frac{b_I^\dagger b_J^\dagger|0\rangle_a}
                  {\sqrt{1+\delta_{IJ}}}
$$

has the same normalization as at $a=0$. No new Bogoliubov prescription or state is selected independently at each $a$.

For a transported constant-$\tau_a$ slice, the lapse times its volume element is $R_a\,dR_a\,d\theta_a$. The resonant interaction Hamiltonian in the reference convention is

$$
 H_{{\rm res},a}^{(G)}
 =-\frac{\kappa^2}{4}
 \left\langle\int R_a\,dR_a\,d\theta_a\,
       k_{\varphi,a\,\mu\nu}T_a^{\mu\nu}[\varphi]\right\rangle_{\tau_a}.
 \tag{3.3}
$$

This is the retained resonant, canonically normalized Hamiltonian, not the naive instantaneous Legendre transform of an arbitrary time-nonlocal action. Equation (2.3) and the transported CPS form give

$$
 V_a=\mathscr U_a^{(2)}V_0(\mathscr U_a^{(2)})^{-1},
 \qquad {}_a\langle IJ|V_a|KL\rangle_a
      ={}_0\langle IJ|V_0|KL\rangle_0.
 \tag{3.4}
$$

Hence all matrix elements in the transported basis, and their eigenprojectors, are explicitly determined by the reference ones. This also transports its nonresonant dressing prescription.

## 4. Which two-particle branches are being diagonalized?

For a single scalar the chiral weights are $(\Delta/2,\Delta/2)$. Couple two particles to primaries labelled by $k,l\ge0$:

$$
 h_P^{(0)}=\Delta+k,\qquad \bar h_P^{(0)}=\Delta+l,\qquad
 n=\min(k,l),\quad \ell=k-l.
 \tag{4.1}
$$

The identical real-scalar sector has $k+l$ even, equivalently even $\ell$. Its reference primaries and all descendants can be constructed with the lowering recursion and normalized raising operations in [two particle spectrum](two%20particle%20spectrum.md). At level $k$ the chiral coefficient ratio is

$$
 \frac{c_{p+1}}{c_p}
 =-\sqrt{\frac{(k-p)(\Delta+k-p-1)}{(p+1)(\Delta+p)}},
 \qquad \sum_{p=0}^k|c_p|^2=1.
 \tag{4.2}
$$

Transport this entire normalized basis; no new Clebsch–Gordan coefficients need to be solved on $\bar g[a]$. In particular,

$$
 |n,\ell;r_L,r_R\rangle_a
   =\mathscr U_a^{(2)}|n,\ell;r_L,r_R\rangle_0,
 \qquad \Pi_{n\ell}^{[a]}=\mathscr U_a^{(2)}\Pi_{n\ell}^{[0]}(\mathscr U_a^{(2)})^{-1}.
 \tag{4.3}
$$

The connected scalar-primary branch, including the inherited mass and nonresonant dressing, is the branch defined in the reference notes. Multiplicity one of the free two-scalar tensor product does not prove absence of degeneracies with independent boundary-graviton excitations or other particle-number sectors. We transport the reference branch, not postulate a new solution to that larger mixing problem.

The equality of a primary's and its descendants' anomalous shifts follows from the deformed AdS representation, or the stipulated resonant normal form of the reference calculation. It should not be justified by claiming that the bare interaction Hamiltonian commutes with every *free* AdS generator: those generators themselves generally receive interaction corrections.

## 5. Complete order-G scalar-primary spectrum

Define, without changing the reference notation,

$$
 h=\Delta+n,\qquad C=h(h-1),\qquad \mu=\Delta(\Delta-2),
 \qquad U_n=-4\big[\Delta^2+2n(2\Delta+n-1)\big].
$$

For every admitted $a$, every $n\ge0$, and every allowed even spin, the order-$G$ coefficients for $K_a$ are

$$
 \boxed{\begin{aligned}
 g^{[a]}_{n0}&=U_n+
 \frac{2\big[15C^2-(12+10\mu)C-\mu^2+6\mu\big]}
 {(2h-3)(2h-1)(2h+1)},\\[1mm]
 g^{[a]}_{n,\pm2}&=U_n+
 \frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
 {(2h-1)(2h+1)(2h+3)},\\[1mm]
 g^{[a]}_{n\ell}&=U_n,\qquad |\ell|\ge4.
 \end{aligned}}
 \tag{5.1}
$$

Thus, relative to the vacuum on the same background,

$$
 \boxed{
 E^{[a]}_{n,\ell;r_L,r_R}
 =2\Delta+2n+|\ell|+r_L+r_R+Gg_{n|\ell|}+O(G^2),
 \qquad J^{[a]}=\ell+r_L-r_R.
 }
 \tag{5.2}
$$

The chiral weights are

$$
 w_L=\Delta+n+\max(\ell,0)+r_L+\frac G2g_{n|\ell|},\qquad
 w_R=\Delta+n+\max(-\ell,0)+r_R+\frac G2g_{n|\ell|}.
 \tag{5.3}
$$

Equations (3.2), (4.2)–(4.3) and (5.1)–(5.3) specify the transported mode basis, primary/descendant projectors and all energy corrections; there are no unspecified background-dependent spectral coefficients. The all-$a$ equality is the conjugation theorem (3.4), not a large-$\Delta$ approximation, a Casimir-tail guess, or a finite-$a$ fit.

The zero-spin expression equivalently reads

$$
 g_{n0}=U_n\frac{2h-2}{2h-1}
 -\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)}.
 \tag{5.4}
$$

At $n=0$, its apparent pole at $\Delta=3/2$ is removable. In fact

$$
 g_{00}=\frac{2\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1},
 \qquad g_{00}\big|_{\Delta=3/2}=-\frac92.
$$

For example, at $\Delta=2$ the complete coefficients $\gamma/G$ are the following on **every** transported background:

| $n$ | $\ell=0$ | $|\ell|=2$ | $|\ell|\ge4$ |
|---:|---:|---:|---:|
| 0 | $-56/5$ | $-552/35$ | $-16$ |
| 1 | $-1368/35$ | $-1000/21$ | $-48$ |
| 2 | $-416/5$ | $-7352/77$ | $-96$ |

The reference coefficients in (5.1) are inherited from the existing scalar calculation; this note proves their all-background transport. The executable appendix independently checks all 25 saved generic-mass coefficients, but does not claim to derive an all-$n$ formula from 25 samples.

## 6. An action-normalization check which does not use the final spectrum

Take the real reference seed

$$
 v=\frac{f^{-\Delta/2}}{\sqrt{2\pi}}\cos(\Delta t),\qquad f=1+r^2.
$$

The already solved circular constraints give

$$
\begin{aligned}
(k_v)_{tt}&=\frac\Delta{8\pi}
 \left[1-\frac{\Delta-1}{\Delta+1}f^{-\Delta}\cos(2\Delta t)\right],\\
(k_v)_{rr}&=\frac\Delta{8\pi f^2}
 \left[1-f^{1-\Delta}-r^2f^{-\Delta}\cos(2\Delta t)\right],
\end{aligned}
$$

and the other components vanish in polar-areal gauge. Recomputing the stress contraction, averaging in $t$, and integrating with $y=1+r^2$ gives

$$
 I_\Delta:=\int_0^\infty r\,dr\,
       \langle k_{v\,\mu\nu}T^{\mu\nu}[v]\rangle_t
 =\frac{\Delta^2(8\Delta^2-2\Delta-7)}
 {128\pi^2(2\Delta-1)(2\Delta+1)}.
 \tag{6.1}
$$

For this real seed the complex oscillator coefficients are $b=b^\dagger=1/2$. A resonant term $C_4(b^\dagger)^2b^2$ evaluates to $C_4/16$, while (3.3) gives $-\kappa^2\pi I_\Delta/2$. Hence $C_4=-8\kappa^2\pi I_\Delta$. Its matrix element in the normalized two-particle state is $2C_4$, so

$$
 \frac{\gamma_{00}}G=-256\pi^2I_\Delta
 =\frac{2\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1}.
 \tag{6.2}
$$

Equation (2.2) carries the same integral and all these normalization factors to every $a$. This is an action-level low-spin check, not merely comparison of two equivalent Casimir polynomials.

## 7. What the unmoved boundary observer measures

### 7.1 Why the clock distinction is necessary

A generic Brown–Henneaux excitation obeys $\mathcal L_{\partial_t}\bar g[a]\ne0$. The full gravity theory still has the asymptotic time-translation charge, but its Hamiltonian flow moves the background data $a$; it does not preserve a fixed classical-background leaf. There is consequently no autonomous stationary scalar Hamiltonian with the original $\partial_t$ and a fixed generic $a$ to which one can assign a new set of constant eigenvalues.

This is a genuine limitation of the phrase “the spectrum on an arbitrary background,” not a failure to evaluate an integral. The transported Killing spectrum in section 5, the fixed-boundary charge expectations below and the Floquet spectrum in section 8 answer distinct well-defined questions. In particular we do not replace a fixed-boundary energy eigenvalue by an expectation value without saying so.

### 7.2 Exact finite-profile energy expectations

Use $x_L=t-\varphi$, $x_R=t+\varphi$, and let the asymptotic map be two orientation-preserving degree-one circle lifts $f_A$:

$$
 f_A(x+2\pi)=f_A(x)+2\pi,\qquad f_A'(x)>0,
 \qquad A=L,R.
$$

Normalize the cylinder stress density so that its mean on a reference energy-and-spin eigenstate is $w_A-c/24$. With the pullback convention $x\mapsto f_A(x)$, its finite coadjoint transformation is

$$
 \mathscr T_A^{[a]}(x)
 =(f_A')^2\mathscr T_A^{[0]}(f_A(x))
 -\frac c{12}\{f_A,x\},
 \qquad c=\frac{24\pi}{\kappa^2}=\frac3{2G}.
 \tag{7.1}
$$

This convention is the one for which the vacuum density is $-c/24$. A reference energy-and-spin eigenstate has constant stress expectation; nonzero Virasoro modes have zero diagonal expectation by their $L_0$ commutator. This also holds for normalized descendants. Applying the same finite asymptotic symmetry to the state and the vacuum, the Schwarzian term cancels in the difference:

$$
 \langle\mathscr T_A^{[a]}(x)\rangle_P
 -\langle\mathscr T_A^{[a]}(x)\rangle_{\rm vac}
 =(f_A')^2w_A.
$$

Define the explicit functional

$$
 \mathcal A_A[a]=\frac1{2\pi}\int_0^{2\pi}(f_A')^2dx.
 \tag{7.2}
$$

For the states just specified, the complete fixed-boundary-frame mean gaps, through order $G$ and exactly in the finite profiles, are

$$
 \boxed{\begin{aligned}
 \langle E_t\rangle_{P,a}-\langle E_t\rangle_{{\rm vac},a}
   &=\mathcal A_Lw_L+\mathcal A_Rw_R+O(G^2),\\
 \langle J_t\rangle_{P,a}-\langle J_t\rangle_{{\rm vac},a}
   &=\mathcal A_Lw_L-\mathcal A_Rw_R+O(G^2).
 \end{aligned}}
 \tag{7.3}
$$

Thus the connected interaction parts are

$$
 \boxed{\quad
 \delta\langle E_t\rangle^{(G)}_{n\ell;a}
     =\frac{\mathcal A_L+\mathcal A_R}{2}\,Gg_{n|\ell|},
 \qquad
 \delta\langle J_t\rangle^{(G)}_{n\ell;a}
     =\frac{\mathcal A_L-\mathcal A_R}{2}\,Gg_{n|\ell|}.
 \quad}
 \tag{7.4}
$$

These states generally are not eigenstates of the original energy or spin. A noninteger value of (7.3) or (7.4) is an expectation, not a violation of angular single-valuedness. Equation (7.1) concerns the total asymptotic stress, including matter backreaction, rather than an artificial assignment of the matter stress alone to the boundary.

For reference the transformed-vacuum energy above empty AdS is, at classical central charge,

$$
 E_{\rm vac}[a]=\frac c{24}\sum_{A=L,R}
 \left[\left\langle\left(\frac{f_A''}{f_A'}\right)^2\right\rangle
                  -\mathcal A_A+1\right],
 \tag{7.5}
$$

where the brackets denote the circle average. To obtain energy relative to empty AdS rather than to $\bar g[a]$, add (7.5) to (7.3). The fixed-frame result is therefore not independent of physical boundary-graviton data, even though (5.2) is isospectral.

### 7.3 Expansion in the repository's normalized graviton amplitudes

Modulo proper vectors, the vacuum note gives

$$
 \zeta_{A,N-2}=q_N\xi_{-N},\qquad
 q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}},\qquad
 D_N=2\pi N(N^2-1),\quad N\ge2.
$$

With $\xi_m\sim e^{imx_A}\partial_{x_A}$, put

$$
 v_A(x)=\sum_{N\ge2}\left(q_Na_{A,N-2}e^{-iNx}
                     +q_N^*a_{A,N-2}^*e^{iNx}\right).
$$

The finite profile is obtained without new bulk equations by solving
$\partial_\lambda f_{A,\lambda}=v_A(f_{A,\lambda})$, $f_{A,0}=x$, at $\lambda=\kappa$. Therefore

$$
 f_A=x+\kappa v_A+\frac{\kappa^2}{2}v_Av_A'+O(\kappa^3),
 \qquad
 \mathcal A_A=1+\kappa^2\langle(v_A')^2\rangle+O(\kappa^3)
 =1+16G\mathcal B_A+O(G^{3/2}),
$$

$$
 \mathcal B_A:=\sum_{N\ge2}\frac{N}{N^2-1}|a_{A,N-2}|^2.
 \tag{7.6}
$$

The sum needs the regularity already required for a smooth admitted flow; finite-mode data are sufficient. At fixed normalized $a$, (7.3) becomes

$$
\begin{aligned}
\Delta\langle E_t\rangle
 &=E_0+Gg_{n|\ell|}
       +16G(\mathcal B_Lw_L^{(0)}+\mathcal B_Rw_R^{(0)})+O(G^{3/2}),\\
\Delta\langle J_t\rangle
 &=J_0+16G(\mathcal B_Lw_L^{(0)}-\mathcal B_Rw_R^{(0)})+O(G^{3/2}).
\end{aligned}
\tag{7.7}
$$

The additional order-$G$ terms are the gravitational drag of the free-state energy; the profile dependence multiplying the **binding correction itself** begins at order $G^2$ in this small-amplitude scaling. At the same time (7.5) starts as $\sum_{A,N}N|a_{A,N-2}|^2$, matching the vacuum-note normalization. This separates the two effects instead of folding background energy into the two-particle binding coefficient.

### 7.4 A nontrivial finite-background example

Choose one chiral boundary flow generated by $\sin(Nx)\partial_x$, $N\ge2$, with flow parameter $\eta$, and leave the other chirality unchanged. Its continuous degree-one lift satisfies

$$
 \tan\frac{Nf_\eta(x)}2=e^{N\eta}\tan\frac{Nx}2,
 \qquad
 f_\eta'(x)=\frac1{\cosh(N\eta)-\sinh(N\eta)\cos(Nx)}.
$$

Its exact invariants are

$$
 \{f_\eta,x\}=\frac{N^2}{2}\big[1-(f_\eta')^2\big],
 \qquad \mathcal A_\eta=\cosh(N\eta).
$$

Consequently,

$$
 \delta E_{K_a}^{(G)}=Gg_{n|\ell|},\qquad
 \delta\langle E_t\rangle^{(G)}
   =\frac{1+\cosh(N\eta)}2Gg_{n|\ell|},\qquad
 E_{\rm vac}=\frac{c(N^2-1)}{24}\big[\cosh(N\eta)-1\big].
 \tag{7.8}
$$

For example $(n,\ell,\Delta)=(0,0,2)$ has adapted shift $-56G/5$ and fixed-frame mean shift $-28G[1+\cosh(N\eta)]/5$. This is a genuine large-diffeomorphism excitation for $N\ge2$, not a proper-gauge example.

## 8. Fixed-time Floquet spectrum for periodic representatives

The mode generators of the vacuum note are $2\pi$-periodic in $t$. Their admissible time-independent-parameter flows commute with $t\mapsto t+2\pi$. Hence

$$
 \tau_a(t+2\pi,r,\varphi)=\tau_a(t,r,\varphi)+2\pi,
 \qquad R_a,\theta_a\ \hbox{are periodic modulo }\theta_a\sim\theta_a+2\pi.
$$

For such representatives the transported evolution over one period is conjugate to the reference evolution. Divide out the transported-vacuum phase, consistently with the energy gaps used throughout this note, and denote the resulting monodromy by $\mathcal M_a(2\pi)$. Its eigenphases on the chosen scalar-primary branches are

$$
 \boxed{
 \operatorname{Spec}\mathcal M_a(2\pi)
 =\left\{\exp\left[-2\pi i\left(
 2\Delta+2n+|\ell|+r_L+r_R+Gg_{n|\ell|}+O(G^2)
 \right)\right]\right\}.
 }
 \tag{8.1}
$$

Thus the quasienergies modulo integers are $2\Delta+Gg_{n|\ell|}+O(G^2)$. This supplies a fixed-period spectral observable even though there is no stationary fixed-$a$ $\partial_t$ eigenproblem. A representative with nonperiodic time dependence need not admit this Floquet statement.

## 9. Scope and executed checks

The new result is a transport theorem, with complete order-$G$ coefficients, eigenprojectors and two explicit clock prescriptions. It inherits, rather than removes, the reference calculation's physical-mass choice, scalar-primary branch, reflective exchange prescription and admissible source/gauge domains. It does not quantize the graviton amplitudes $a$, solve all mixed gravity–matter degeneracies, or extend the geometry to other Virasoro orbits. No independent all-order nonlinear convergence theorem is asserted.

The code below was executed with Python, SymPy 1.14.0, NumPy 2.3.5 and SciPy 1.17.0. It ran **65 grouped assertions**, all passing. They comprise four symbolic spectrum identities, the 25 saved generic-mass coefficients, three Schur-complement checks, one freshly evaluated lowest-mode exchange integral, four coefficient identities in an off-shell KG covariance check for the actual complex Brown–Henneaux seed, five scalar-mode equations, five KG normalization integrals, four finite-flow Schwarzian checks, four finite-flow clock integrals, two boundary-mode normalization identities, and eight tensor-density pullback checks. Maximum finite-flow residual: $8.89\times10^{-15}$; maximum tensor-density residual: $1.78\times10^{-15}$.

The off-shell covariance test leaves the radial scalar function arbitrary; the tensor-density test uses random nonsingular coordinate Jacobians. These are checks of the expressions, not numerical evidence replacing the tensorial all-background proof. Existing Wolfram/xAct or Sage suites were not rerun here. The 25 stored coefficients are verification inputs, not independently recomputed radial blocks.

### References and reproducibility

Pinned repository snapshot: `6940ab5243b7d8f74bcfc2f2cf0138eeed50b240`.

- [perturbation](perturbation.md), [two particle spectrum](two%20particle%20spectrum.md): the action, boundary conventions, physical mass, primary construction and all reference spectral coefficients.
- [Einstein scalar response prescription](Einstein%20scalar%20response%20prescription.md): finite-source response domain, constraints, homogeneous-data choices and the exceptional logarithmic mass.
- [closed form spectrum audit](closed%20form%20spectrum%20audit.md): equivalent low-spin expressions and historical verification scope; its old TODOs are not treated as current task status.
- [saved primary coefficients](scripts/gravity_scalar_primary_spectrum_data.wl): the 25 expressions transcribed literally into the check below.
- [all order perturbation result](../all%20order%20perturbation%20result.md): the $q_N$, $D_N$, $a$ and $c$ normalization.
- Compère–Mao–Seraj–Sheikh-Jabbari, [1511.06079](https://arxiv.org/abs/1511.06079), section 2.4: finite Virasoro coadjoint transformations. Equations (7.2)–(7.8) are the resulting energy calculations in the present normalization.
- Harlow–Wu, [1906.08616](https://arxiv.org/abs/1906.08616): the boundary-completed variational/CPS framework used when comparing actions, slices and charges.

The self-contained script is embedded rather than added as a third repository file. Save the following block as `check_vacuum_orbit.py` and run it with the packages above; it reads no repository files and prints its result as JSON.

```python
"""Checks accompanying the two vacuum-orbit notes.
Python 3 + SymPy + NumPy + SciPy. No network, no source-file writes.
The saved coefficient table is transcribed from repository commit
6940ab5243b7d8f74bcfc2f2cf0138eeed50b240.
"""
import json
from collections import Counter
import sympy as s
import numpy as np
from scipy.integrate import quad

checks = Counter()

def eq(x, y=0, group="symbolic"):
    z = s.factor(s.cancel(s.together(x-y)))
    assert z == 0, (group, z)
    checks[group] += 1

d, n = s.symbols('d n', positive=True)
C = (d+n)*(d+n-1)
mu = d*(d-2)
U = -4*(d*d+2*n*(2*d+n-1))
g0 = U + 2*(15*C*C-(12+10*mu)*C-mu*mu+6*mu)/((2*d+2*n-3)*(2*d+2*n-1)*(2*d+2*n+1))
g2 = U + (n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*d+2*n-1)*(2*d+2*n+1)*(2*d+2*n+3))
eq(g0, U*(2*d+2*n-2)/(2*d+2*n-1)-2*(C+mu)**2/((2*d+2*n-3)*(2*d+2*n-1)*(2*d+2*n+1)), 'spectrum_identities')
eq(U, -8*(C-2*(d/2)*(d/2-1)), 'spectrum_identities')
g00 = 2*d*d*(7+2*d-8*d*d)/(4*d*d-1)
eq(g0.subs(n,0),g00,'spectrum_identities')
eq(s.limit(g00,d,s.Rational(3,2)),-s.Rational(9,2),'spectrum_identities')
# Literal coefficients, not generated using the closed formula under test.
saved = [
(0,0,-2*d**2*(-7-2*d+8*d**2)/((2*d-1)*(2*d+1))),
(1,0,-2*d**2*(47+46*d+8*d**2)/((2*d+1)*(2*d+3))),
(2,0,-2*(84+436*d+829*d**2+648*d**3+196*d**4+16*d**5)/((2*d+1)*(2*d+3)*(2*d+5))),
(0,2,-4*d*(1+d)*(-1+4*d+4*d**2)/((2*d+1)*(2*d+3))),
(3,0,-2*(2052+4980*d+4473*d**2+1792*d**3+308*d**4+16*d**5)/((2*d+3)*(2*d+5)*(2*d+7))),
(1,2,-4*d*(3+d)*(19+20*d+4*d**2)/((2*d+3)*(2*d+5))),
(4,0,-2*(13104+21144*d+12709*d**2+3480*d**3+420*d**4+16*d**5)/((2*d+5)*(2*d+7)*(2*d+9))),
(2,2,-4*(414+1390*d+1469*d**2+654*d**3+124*d**4+8*d**5)/((2*d+3)*(2*d+5)*(2*d+7))),
(0,4,-4*d*d),
(5,0,-2*(49680+60280*d+27361*d**2+5712*d**3+532*d**4+16*d**5)/((2*d+7)*(2*d+9)*(2*d+11))),
(3,2,-4*(3750+7162*d+4735*d**2+1390*d**3+180*d**4+8*d**5)/((2*d+5)*(2*d+7)*(2*d+9))),
(1,4,-4*d*(4+d)),
(6,0,-2*(141300+137580*d+50253*d**2+8488*d**3+644*d**4+16*d**5)/((2*d+9)*(2*d+11)*(2*d+13))),
(4,2,-4*(6+d)*(2757+3283*d+1270*d*d+188*d**3+8*d**4)/((2*d+7)*(2*d+9)*(2*d+11))),
(2,4,-4*(4+8*d+d*d)),
(0,6,-4*d*d),
(7,0,-2*(334404+272076*d+83209*d*d+11808*d**3+756*d**4+16*d**5)/((2*d+11)*(2*d+13)*(2*d+15))),
(5,2,-4*(51270+54271*d+20885*d*d+3678*d**3+292*d**4+8*d**5)/((2*d+9)*(2*d+11)*(2*d+13))),
(3,4,-4*(12+12*d+d*d)),
(1,6,-4*d*(4+d)),
(8,0,-2*(696192+486640*d+128053*d*d+15672*d**3+868*d**4+16*d**5)/((2*d+13)*(2*d+15)*(2*d+17))),
(6,2,-4*(128280+111532*d+35593*d*d+5230*d**3+348*d**4+8*d**5)/((2*d+11)*(2*d+13)*(2*d+15))),
(4,4,-4*(24+16*d+d*d)),
(2,6,-4*(4+8*d+d*d)),
(0,8,-4*d*d),
]
for nr, ell, val in saved:
    eq((g0 if ell==0 else g2 if ell==2 else U).subs(n,nr), val, 'saved_coefficients')

# Generic Schur-complement coefficient, with no EOM sign guessed.
a,b,c,j1,j2,k1,k2=s.symbols('a b c j1 j2 k1 k2')
L=s.Matrix([[a,b],[b,c]]); J=s.Matrix([j1,j2]); k=s.Matrix([k1,k2])
Q=-(k.T*L*k)[0]/2+(k.T*J)[0]/2
ksol=L.inv()*J/2
for i,ki in enumerate((k1,k2)):
    eq(s.diff(Q,ki),(-L*k+J/2)[i], 'schur_complement')
eq(Q.subs({k1:ksol[0], k2:ksol[1]}),(J.T*L.inv()*J)[0]/8,'schur_complement')

# Recompute the lowest circular response-action integral, not just its final g00.
y,z=s.symbols('y z', positive=True) # y=1+r^2; z=cos(Delta t)
phi2=y**(-d)*z*z/(2*s.pi)
dt2=d*d*y**(-d)*(1-z*z)/(2*s.pi)
dr2=d*d*(y-1)*y**(-d-2)*z*z/(2*s.pi)
kin=-dt2/y+y*dr2
Ttt=dt2+y*(kin+mu*phi2)/2
Trr=dr2-(kin+mu*phi2)/(2*y)
ktt=d/(8*s.pi)*(1-(d-1)/(d+1)*y**(-d)*(2*z*z-1))
krr=d/(8*s.pi*y*y)*(1-y**(1-d)-(y-1)*y**(-d)*(2*z*z-1))
expr=s.expand(ktt*Ttt/y**2+krr*y**2*Trr)
poly=s.Poly(expr,z)
avg=s.expand(sum(coef*{0:s.S.One,2:s.Rational(1,2),4:s.Rational(3,8)}[degree[0]] for degree,coef in poly.terms()))
I=0
for term in s.Add.make_args(avg):
    term=s.powsimp(s.factor(term),force=True)
    power=term.as_powers_dict().get(y,s.S.Zero)
    coeff=s.simplify(term/y**power)
    assert not coeff.has(y), (term, power, coeff)
    I += -coeff/(2*(power+1)) # r dr=dy/2; d>1 ensures convergence
I=s.factor(I)
eq(-256*s.pi**2*I,g00,'lowest_radial_integral')

# Off-shell KG covariance for the actual complex BH seed, suppressing only
# its common 1/(4 sqrt(3 pi)) normalization and exp(-2it+2i varphi).
r,w,j,m2=s.symbols('r w j m2', real=True)
f=1+r*r
G=s.diag(-f,1/f,r*r); Gi=G.inv()
Z=s.Matrix([s.I*r**4/f**2,-r*(3+2*r*r)/f,-s.I*(3+r*r)/f])
DZ=s.Matrix.hstack(-2*s.I*Z,Z.diff(r),2*s.I*Z) # column mu = partial_mu Z
H=Z[1]*G.diff(r)+DZ.T*G+G*DZ
trH=s.simplify(s.trace(Gi*H)); Hup=Gi*H*Gi
AA=s.simplify(trH*Gi/2-Hup)
q=s.Function('q')(r)
def lap(rad, ww, jj):
    return s.diff(r*f*s.diff(rad,r),r)/r+(ww*ww/f-jj*jj/r**2)*rad
Pu=lap(q,w,j)-m2*q
Du=s.Matrix([-s.I*w*q,s.diff(q,r),s.I*j*q])
flux=AA*Du
DP=-trH*lap(q,w,j)/2-s.I*(w+2)*flux[0]+s.diff(r*flux[1],r)/r+s.I*(j+2)*flux[2]
W=(-s.I*w*Z[0]+s.I*j*Z[2])*q+Z[1]*s.diff(q,r)
LiePu=(-s.I*w*Z[0]+s.I*j*Z[2])*Pu+Z[1]*s.diff(Pu,r)
res=s.expand(DP+lap(W,w+2,j+2)-m2*W-LiePu)
for derivative in (s.diff(q,r,3),s.diff(q,r,2),s.diff(q,r),q):
    eq(res.coeff(derivative),0,'offshell_KG_covariance')

# Mode normalization and radial KG for representative noncircular modes.
for dd,nn,jj in [(2,0,0),(2,1,0),(2,0,2),(3,1,-1),(s.Rational(5,2),0,1)]:
    dd=s.sympify(dd)
    l=abs(jj); om=dd+2*nn+l
    norm2=s.factorial(nn)*s.gamma(nn+dd+l)/(2*s.pi*s.gamma(nn+dd)*s.gamma(nn+1+l))
    radial=r**l*f**(-(dd+l)/2)*s.jacobi(nn,dd-1,l,(r*r-1)/f)
    eq(lap(radial,om,jj)-dd*(dd-2)*radial,0,'scalar_modes')
    integrand=s.lambdify(r,4*s.pi*om*norm2*r/f*radial**2,'numpy')
    integral,error=quad(integrand,0,np.inf,epsabs=1e-10,epsrel=1e-10)
    assert abs(integral-1)<1e-9,(integral,error)
    checks['KG_norm_integrals']+=1

# A genuinely nontrivial boundary orbit: flow of sin(Nx) d/dx.
# p=f_eta'=1/(cosh(N eta)-sinh(N eta) cos(Nx)); {f,x}=p''/p-3/2(p'/p)^2.
max_flow_error=0.
for N,eta in [(2,.13),(2,-.31),(3,.22),(5,.07)]:
    ch=np.cosh(N*eta); sh=np.sinh(N*eta)
    def derivs(x):
        D=ch-sh*np.cos(N*x); D1=N*sh*np.sin(N*x); D2=N*N*sh*np.cos(N*x)
        return 1/D,-D1/D**2,2*D1**2/D**3-D2/D**2
    for x in np.linspace(.07,2*np.pi-.09,13):
        p,p1,p2=derivs(x); schwarz=p2/p-1.5*(p1/p)**2
        err=abs(schwarz-N*N/2*(1-p*p)); max_flow_error=max(max_flow_error,err)
        assert err<2e-11
    checks['finite_flow_Schwarzian']+=1
    avp=quad(lambda x:derivs(x)[0],0,2*np.pi,epsabs=1e-11)[0]/(2*np.pi)
    avp2=quad(lambda x:derivs(x)[0]**2,0,2*np.pi,epsabs=1e-11)[0]/(2*np.pi)
    assert abs(avp-1)<1e-11 and abs(avp2-ch)<1e-11
    checks['finite_flow_clock_integrals']+=1

# Mode normalization fixes both the vacuum energy and the fixed-clock drag.
N=s.symbols('N',integer=True,positive=True)
kappa=s.symbols('kappa',positive=True)
DN=2*s.pi*N*(N*N-1); qabs2=1/DN; central=24*s.pi/kappa**2
eq(central*kappa**2*s.Rational(1,24)*2*(N**4-N**2)*qabs2,N,'boundary_normalization')
eq(kappa**2*2*N*N*qabs2,kappa**2*N/(s.pi*(N*N-1)),'boundary_normalization')

# Pointwise tensor/density covariance, with random invertible Jacobians.
rng=np.random.default_rng(20260918); max_tensor_error=0.
for _ in range(8):
    rr=rng.uniform(.3,2); ff=1+rr*rr; gg=np.diag([-ff,1/ff,rr*rr])
    Jac=np.eye(3)+rng.normal(scale=.1,size=(3,3))
    assert np.linalg.det(Jac)>0
    kk=rng.normal(size=(3,3)); kk=(kk+kk.T)/2
    grad=rng.normal(size=3); ph=rng.normal(); mass2=.75
    def stress(metric,du):
        inv=np.linalg.inv(metric)
        return np.outer(du,du)-metric*(du@inv@du+mass2*ph*ph)/2
    tt=stress(gg,grad); gab=Jac.T@gg@Jac; kab=Jac.T@kk@Jac
    tab=stress(gab,Jac.T@grad)
    gi=np.linalg.inv(gg); gai=np.linalg.inv(gab)
    lhs=np.einsum('ij,ij',kab,gai@tab@gai)
    rhs=np.einsum('ij,ij',kk,gi@tt@gi)
    err=abs(lhs-rhs); max_tensor_error=max(max_tensor_error,err)
    assert err<5e-11
    assert abs(np.sqrt(-np.linalg.det(gab))-np.linalg.det(Jac)*rr)<1e-11
    checks['tensor_density_transport']+=1

print(json.dumps({'status':'PASS','assertion_groups':dict(checks),'grouped_assertions':sum(checks.values()),
 'max_flow_residual':max_flow_error,'max_tensor_residual':max_tensor_error,
 'lowest_integral':str(I),
 'Delta2_primary_gamma_over_G':{f'{nr},{ell}':str(s.factor((g0 if ell==0 else g2 if ell==2 else U).subs({d:2,n:nr}))) for nr in range(3) for ell in (0,2,4)}},indent=2))

```
