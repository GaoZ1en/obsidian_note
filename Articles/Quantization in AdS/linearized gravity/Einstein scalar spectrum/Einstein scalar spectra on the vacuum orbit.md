
## 1. The Action, Boundary Conditions, and Perturbative Counting

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

$$\begin{align}
g=\bar g[a]+\kappa^2 k+O(\kappa^4),\qquad \phi=\varphi. \tag{1.2}
\end{align}$$

The scalar $\varphi$ is kept as the unexpanded variational field in this action expansion; its order-$\kappa^2$ solution correction is constructed in the companion. Substituting that correction off shell would also produce $\delta S_{\mathrm{KG}}[\psi_1]$, which cannot simply be dropped. The metric counting above counts scalar-induced backreaction, not the already resummed vacuum graviton. The order-$G$ formulas below are exact in an admitted finite $\Phi_a$. Expanding instead at fixed canonically normalized $a$ produces powers of $\kappa$ from $\Phi_a=e^{\kappa\zeta[a]}$; section 7.3 explicitly performs that different expansion.

Define the pairing $\langle k,J\rangle_a=\int d^3x\sqrt{-\bar g[a]}\,k_{\mu\nu}J^{\mu\nu}$ and the linearized Einstein operator $\mathcal L_a=D\mathcal E|_{\bar g[a]}$. After subtracting the pure-background action, its quadratic expansion is

$$\begin{align}
S_R-S_R[\bar g[a],0] =S_{\mathrm{KG}}[\bar g[a],\varphi] +\kappa^2\left[-\frac12\mathfrak B_a(k,k) +\frac12\langle k,T_a[\varphi]\rangle_a\right] +O(\kappa^4). \tag{1.3}
\end{align}$$

Here $\mathfrak B_a$ is the **boundary-completed gravitational Hessian**. Its bulk expression is $\langle k,\mathcal L_a k\rangle_a$; the surface/endpoint terms are the ones inherited from (1.1), not a new freely chosen boundary prescription. The bulk signs follow from $\delta S_{\mathrm{grav}}=-\kappa^{-2}\langle\delta g,\mathcal E\rangle$ and $\delta S_{\mathrm{KG}}=\tfrac12\langle\delta g,T\rangle$ for a covariant metric variation. Equation (1.3) is an off-shell expansion in $k,\varphi$ within the stationary background variational problem: its allowed endpoint data must make the first gravitational variation vanish. For arbitrary endpoint histories an additional linear surface variation remains and (1.3) cannot be used as written. Transport the endpoint prescription with the fields, and retain its contributions when extracting the Hamiltonian.

For the spectral exchange calculation, evaluate its quartic coefficient on free on-shell scalar modes. Their polarized stresses are conserved, so the chosen Einstein response obeys all constraints:

$$\begin{align}
\mathcal L_a k_{\varphi,a}=\frac12T_a[\varphi],\qquad k_{\varphi,a}=\frac12G_aT_a[\varphi]. \tag{1.4}
\end{align}$$

Elimination in the reciprocal quadratic pairing gives

$$\begin{align}
\boxed{\quad S_{\mathrm{eff}}[a;\varphi] =S_{\mathrm{KG}}[\bar g[a],\varphi] +\frac{\kappa^2}{4}\langle k_{\varphi,a},T_a[\varphi]\rangle_a +O(G^2) =S_{\mathrm{KG}}+\frac{\kappa^2}{8}\langle T_a,G_aT_a\rangle_a+O(G^2). \quad} \tag{1.5}
\end{align}$$

The two factors of one-half have different origins: $\mathcal L_a k=T/2$, and substitution in the gravitational quadratic action cancels half of the linear matter coupling. Treating $k$ as an externally prescribed potential and keeping only $\tfrac{\kappa^2}{2}kT$ would give twice the answer.

The response used to define a conservative effective action must have the reciprocal pairing of the reference spectral problem. An arbitrary retarded kernel need not do so: variation of $\langle T,G_RT\rangle$ symmetrizes $G_R$, and does not by itself give a retarded equation. Likewise the finite-source kernel in the response note is not an asserted inverse on every off-shell history. Equation (1.3) is off shell; equation (1.5), without an additional gauge-fixed off-shell construction, specifies the **on-free-shell quartic exchange functional used for the spectrum**. No conclusion here requires extending that inverse beyond its actual domain.

## 2. Exact Transport of the Action and Every Exchange Matrix Element

Let $\mathscr U_a=\Phi_a^*$. For $\varphi=\mathscr U_a v$ the companion proves

$$\begin{align}
T_a[\mathscr U_a v]=\mathscr U_aT_0[v],\qquad G_a=\mathscr U_aG_0\mathscr U_a^{-1},\qquad k_{\varphi,a}=\mathscr U_a k_v. \tag{2.1}
\end{align}$$

The integration region is also transported, $D_a=\Phi_a^{-1}D_0$. For covariant tensors $k,T$, the raised-index contraction and volume form transform together:

$$\begin{align}
\int_{D_a}dV_a\,(\mathscr U_a k)_{\mu\nu}(\mathscr U_a T)^{\mu\nu} =\int_{D_0}dV_0\,k_{\mu\nu}T^{\mu\nu}. \tag{2.2}
\end{align}$$

The same change-of-variables identity holds for the GHY and counterterm terms at finite cutoff, when the regulator and temporal boundaries are pulled back. Consequently, after vacuum subtraction and with the same endpoint prescription,

$$\begin{align}
\boxed{\quad S_{\mathrm{eff}}[a;\mathscr U_a v]-S_{\mathrm{eff}}[a;0] =S_{\mathrm{eff}}[0;v]-S_{\mathrm{eff}}[0;0]+O(G^2). \quad} \tag{2.3}
\end{align}$$

This is not an assertion that the action at two different, untransported cutoffs is numerically identical. Changing the defining function can produce the usual local boundary Weyl term; with fixed sources and the same transformed-vacuum subtraction its background contribution cancels. A change of temporal endpoints must still be included when forming a Hamiltonian in the original boundary clock. We use transported slabs for (2.3) and compute original-frame charges separately in section 7.

Differentiate (2.3) four times in independent scalar-mode coefficients. All order-$G$ quartic coefficients agree. Polarization, angular selection and the average along $K_a$ also agree. Thus this calculation transports **the full quartic matrix**, including annihilation/crossed channels and the low-spin part; it is not merely an argument about its universal high-spin tail.

## 3. The Transported One-Particle Basis and Quantization Convention

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

$$\begin{align}
u_{n j}^{[a]}(x)=u_{n j}(\tau_a(x),R_a(x),\theta_a(x)). \tag{3.2}
\end{align}$$

They have frequency $\omega_{n j}=\Delta+2n+|j|$ under $K_a$ and angular momentum $j$ under $J_a=\Phi_a^*\partial_\varphi$. The integrated KG form on $\Sigma_a=\Phi_a^{-1}\Sigma_0$ equals the reference KG form. Transporting the positive-frequency space therefore defines an isometric one-particle map and its bosonic Fock lift $\mathscr U_a^{(2)}$. This compares quantizations on two backgrounds; it is not a claim that an arbitrary asymptotic diffeomorphism acts only on scalar particles in a fixed full-gravity Fock space.

Use the transported vacuum, normal ordering and the same physical mass subtraction. Then $[b_I,b_J^\dagger]=\delta_{IJ}$ and

$$\begin{align}
|IJ\rangle_a=\frac{b_I^\dagger b_J^\dagger|0\rangle_a} {\sqrt{1+\delta_{IJ}}}
\end{align}$$

has the same normalization as at $a=0$. No new Bogoliubov prescription or state is selected independently at each $a$.

For a transported constant-$\tau_a$ slice, the lapse times its volume element is $R_a\,dR_a\,d\theta_a$. The resonant interaction Hamiltonian in the reference convention is

$$\begin{align}
H_{{\mathrm{res}},a}^{(G)} =-\frac{\kappa^2}{4} \left\langle\int R_a\,dR_a\,d\theta_a\, k_{\varphi,a\,\mu\nu}T_a^{\mu\nu}[\varphi]\right\rangle_{\tau_a}. \tag{3.3}
\end{align}$$

This is the retained resonant, canonically normalized Hamiltonian, not the naive instantaneous Legendre transform of an arbitrary time-nonlocal action. Equation (2.3) and the transported CPS form give

$$\begin{align}
V_a=\mathscr U_a^{(2)}V_0(\mathscr U_a^{(2)})^{-1}, \qquad {}_a\langle IJ|V_a|KL\rangle_a ={}_0\langle IJ|V_0|KL\rangle_0. \tag{3.4}
\end{align}$$

Hence all matrix elements in the transported basis, and their eigenprojectors, are explicitly determined by the reference ones. This also transports its nonresonant dressing prescription.

## 4. Which Two-Particle Branches Are Being Diagonalized?

For a single scalar the chiral weights are $(\Delta/2,\Delta/2)$. Couple two particles to primaries labelled by $k,l\ge0$:

$$\begin{align}
h_P^{(0)}=\Delta+k,\qquad \bar h_P^{(0)}=\Delta+l,\qquad n=\min(k,l),\quad \ell=k-l. \tag{4.1}
\end{align}$$

The identical real-scalar sector has $k+l$ even, equivalently even $\ell$. Its reference primaries and all descendants can be constructed with the lowering recursion and normalized raising operations in [two particle spectrum](two%20particle%20spectrum.md). At level $k$ the chiral coefficient ratio is

$$\begin{align}
\frac{c_{p+1}}{c_p} =-\sqrt{\frac{(k-p)(\Delta+k-p-1)}{(p+1)(\Delta+p)}}, \qquad \sum_{p=0}^k|c_p|^2=1. \tag{4.2}
\end{align}$$

Transport this entire normalized basis; no new Clebsch–Gordan coefficients need to be solved on $\bar g[a]$. In particular,

$$\begin{align}
|n,\ell;r_L,r_R\rangle_a =\mathscr U_a^{(2)}|n,\ell;r_L,r_R\rangle_0, \qquad \Pi_{n\ell}^{[a]}=\mathscr U_a^{(2)}\Pi_{n\ell}^{[0]}(\mathscr U_a^{(2)})^{-1}. \tag{4.3}
\end{align}$$

The connected scalar-primary branch, including the inherited mass and nonresonant dressing, is the branch defined in the reference notes. Multiplicity one of the free two-scalar tensor product does not prove absence of degeneracies with independent boundary-graviton excitations or other particle-number sectors. We transport the reference branch, not postulate a new solution to that larger mixing problem.

The equality of a primary's and its descendants' anomalous shifts follows from the deformed AdS representation, or the stipulated resonant normal form of the reference calculation. It should not be justified by claiming that the bare interaction Hamiltonian commutes with every *free* AdS generator: those generators themselves generally receive interaction corrections.

## 5. Complete Order-G Scalar-Primary Spectrum

Define, without changing the reference notation,

$$\begin{align}
h=\Delta+n,\qquad C=h(h-1),\qquad \mu=\Delta(\Delta-2), \qquad U_n=-4\big[\Delta^2+2n(2\Delta+n-1)\big].
\end{align}$$

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

$$\begin{align}
\boxed{ E^{[a]}_{n,\ell;r_L,r_R} =2\Delta+2n+|\ell|+r_L+r_R+Gg_{n|\ell|}+O(G^2), \qquad J^{[a]}=\ell+r_L-r_R.
 }
 \tag{5.2}
\end{align}$$

The chiral weights are

$$\begin{align}
w_L=\Delta+n+\max(\ell,0)+r_L+\frac G2g_{n|\ell|},\qquad w_R=\Delta+n+\max(-\ell,0)+r_R+\frac G2g_{n|\ell|}. \tag{5.3}
\end{align}$$

Equations (3.2), (4.2)–(4.3) and (5.1)–(5.3) specify the transported mode basis, primary/descendant projectors and all energy corrections; there are no unspecified background-dependent spectral coefficients. The all-$a$ equality is the conjugation theorem (3.4), not a large-$\Delta$ approximation, a Casimir-tail guess, or a finite-$a$ fit.

The zero-spin expression equivalently reads

$$\begin{align}
g_{n0}=U_n\frac{2h-2}{2h-1} -\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)}. \tag{5.4}
\end{align}$$

At $n=0$, its apparent pole at $\Delta=3/2$ is removable. In fact

$$\begin{align}
g_{00}=\frac{2\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1}, \qquad g_{00}\big|_{\Delta=3/2}=-\frac92.
\end{align}$$

For example, at $\Delta=2$ the complete coefficients $\gamma/G$ are the following on **every** transported background:

| $n$ | $\ell=0$ | $|\ell|=2$ | $|\ell|\ge4$ |
|---:|---:|---:|---:|
| 0 | $-56/5$ | $-552/35$ | $-16$ |
| 1 | $-1368/35$ | $-1000/21$ | $-48$ |
| 2 | $-416/5$ | $-7352/77$ | $-96$ |

The reference coefficients in (5.1) are inherited from the existing scalar calculation; this note proves their all-background transport. The executable appendix checks all 25 saved generic-mass coefficients, but does not derive an all-$n$ formula from those samples. The current [OFPT note, section 9](OFPT%20two%20particle%20energy%20shifts.md#9-analytic-completion-for-arbitrary-radial-level-and-spin) gives an all-index completion conditional on the reciprocal response and the high-spin Lorentzian inversion input. Those conditions are inherited here. The conjugation theorem is valid for the reference matrix itself and does not independently establish its proposed closed eigenvalues. All perturbative remainders refer to fixed finite quantum numbers and an admitted fixed profile; uniform control at quantum numbers scaling with $G^{-1}$ is not asserted.

## 6. An Action-Normalization Check Which Does Not Use the Final Spectrum

Take the real reference seed

$$\begin{align}
v=\frac{f^{-\Delta/2}}{\sqrt{2\pi}}\cos(\Delta t),\qquad f=1+r^2.
\end{align}$$

The already solved circular constraints give

$$\begin{aligned}
(k_v)_{tt}&=\frac\Delta{8\pi} \left[1-\frac{\Delta-1}{\Delta+1}f^{-\Delta}\cos(2\Delta t)\right],\\
(k_v)_{rr}&=\frac\Delta{8\pi f^2} \left[1-f^{1-\Delta}-r^2f^{-\Delta}\cos(2\Delta t)\right],
\end{aligned}$$

and the other components vanish in polar-areal gauge. Recomputing the stress contraction, averaging in $t$, and integrating with $y=1+r^2$ gives

$$\begin{align}
I_\Delta:=\int_0^\infty r\,dr\, \langle k_{v\,\mu\nu}T^{\mu\nu}[v]\rangle_t =\frac{\Delta^2(8\Delta^2-2\Delta-7)} {128\pi^2(2\Delta-1)(2\Delta+1)}. \tag{6.1}
\end{align}$$

For this real seed the complex oscillator coefficients are $b=b^\dagger=1/2$. A resonant term $C_4(b^\dagger)^2b^2$ evaluates to $C_4/16$, while (3.3) gives $-\kappa^2\pi I_\Delta/2$. Hence $C_4=-8\kappa^2\pi I_\Delta$. Its matrix element in the normalized two-particle state is $2C_4$, so

$$\begin{align}
\frac{\gamma_{00}}G=-256\pi^2I_\Delta =\frac{2\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1}. \tag{6.2}
\end{align}$$

Equation (2.2) carries the same integral and all these normalization factors to every $a$. This is an action-level low-spin check, not merely comparison of two equivalent Casimir polynomials.

## 7. What the Unmoved Boundary Observer Measures

### 7.1 Why the Clock Distinction Is Necessary

A generic Brown–Henneaux excitation obeys $\mathcal L_{\partial_t}\bar g[a]\ne0$. The full gravity theory still has the asymptotic time-translation charge, but its Hamiltonian flow moves the background data $a$; it does not preserve a fixed classical-background leaf. There is consequently no autonomous stationary scalar Hamiltonian with the original $\partial_t$ and a fixed generic $a$ to which one can assign a new set of constant eigenvalues.

This is a genuine limitation of the phrase “the spectrum on an arbitrary background,” not a failure to evaluate an integral. The transported Killing spectrum in section 5, the fixed-boundary charge expectations below and the Floquet spectrum in section 8 answer distinct well-defined questions. In particular we do not replace a fixed-boundary energy eigenvalue by an expectation value without saying so.

### 7.2 Exact Finite-Profile Energy Expectations

Use $x_L=t-\varphi$, $x_R=t+\varphi$, and let the asymptotic map be two orientation-preserving degree-one circle lifts $f_A$:

$$\begin{align}
f_A(x+2\pi)=f_A(x)+2\pi,\qquad f_A'(x)>0, \qquad A=L,R.
\end{align}$$

Normalize the cylinder stress density so that its mean on a reference energy-and-spin eigenstate is $w_A-c/24$. With the pullback convention $x\mapsto f_A(x)$, its finite coadjoint transformation is

$$\begin{align}
\mathscr T_A^{[a]}(x) =(f_A')^2\mathscr T_A^{[0]}(f_A(x)) -\frac c{12}\{f_A,x\}, \qquad c=\frac{24\pi}{\kappa^2}=\frac3{2G}. \tag{7.1}
\end{align}$$

This convention is the one for which the vacuum density is $-c/24$. A reference energy-and-spin eigenstate has constant stress expectation; nonzero Virasoro modes have zero diagonal expectation by their $L_0$ commutator. This also holds for normalized descendants. Applying the same finite asymptotic symmetry to the state and the vacuum, the Schwarzian term cancels in the difference:

$$\begin{align}
\langle\mathscr T_A^{[a]}(x)\rangle_P -\langle\mathscr T_A^{[a]}(x)\rangle_{\mathrm{vac}} =(f_A')^2w_A.
\end{align}$$

Define the explicit functional

$$\begin{align}
\mathcal A_A[a]=\frac1{2\pi}\int_0^{2\pi}(f_A')^2dx. \tag{7.2}
\end{align}$$

For the states just specified, the complete fixed-boundary-frame mean gaps, through order $G$ and exactly in the finite profiles, are

$$
\boxed{\begin{aligned}
 \langle E_t\rangle_{P,a}-\langle E_t\rangle_{{\mathrm{vac}},a}
   &=\mathcal A_Lw_L+\mathcal A_Rw_R+O(G^2),\\
 \langle J_t\rangle_{P,a}-\langle J_t\rangle_{{\mathrm{vac}},a}
   &=\mathcal A_Lw_L-\mathcal A_Rw_R+O(G^2).
 \end{aligned}}
 \tag{7.3}
$$

Thus the connected interaction parts are

$$\begin{align}
\boxed{\quad \delta\langle E_t\rangle^{(G)}_{n\ell;a} =\frac{\mathcal A_L+\mathcal A_R}{2}\,Gg_{n|\ell|}, \qquad \delta\langle J_t\rangle^{(G)}_{n\ell;a} =\frac{\mathcal A_L-\mathcal A_R}{2}\,Gg_{n|\ell|}. \quad} \tag{7.4}
\end{align}$$

These states generally are not eigenstates of the original energy or spin. A noninteger value of (7.3) or (7.4) is an expectation, not a violation of angular single-valuedness. Equation (7.1) concerns the total asymptotic stress, including matter backreaction, rather than an artificial assignment of the matter stress alone to the boundary.

For reference the transformed-vacuum energy above empty AdS is, at classical central charge,

$$\begin{align}
E_{\mathrm{vac}}[a]=\frac c{24}\sum_{A=L,R} \left[\left\langle\left(\frac{f_A''}{f_A'}\right)^2\right\rangle -\mathcal A_A+1\right], \tag{7.5}
\end{align}$$

where the brackets denote the circle average. To obtain energy relative to empty AdS rather than to $\bar g[a]$, add (7.5) to (7.3). The fixed-frame result is therefore not independent of physical boundary-graviton data, even though (5.2) is isospectral.

### 7.3 Expansion in the Repository's Normalized Graviton Amplitudes

Modulo proper vectors, the vacuum note gives

$$\begin{align}
\zeta_{A,N-2}=q_N\xi_{-N},\qquad q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}},\qquad D_N=2\pi N(N^2-1),\quad N\ge2.
\end{align}$$

With $\xi_m\sim e^{imx_A}\partial_{x_A}$, put

$$\begin{align}
v_A(x)=\sum_{N\ge2}\left(q_Na_{A,N-2}e^{-iNx} +q_N^*a_{A,N-2}^*e^{iNx}\right).
\end{align}$$

The finite profile is obtained without new bulk equations by solving $\partial_\lambda f_{A,\lambda}=v_A(f_{A,\lambda})$, $f_{A,0}=x$, at $\lambda=\kappa$. Therefore

$$\begin{align}
f_A=x+\kappa v_A+\frac{\kappa^2}{2}v_Av_A'+O(\kappa^3), \qquad \mathcal A_A=1+\kappa^2\langle(v_A')^2\rangle+O(\kappa^3) =1+16G\mathcal B_A+O(G^{3/2}),
\end{align}$$

$$\begin{align}
\mathcal B_A:=\sum_{N\ge2}\frac{N}{N^2-1}|a_{A,N-2}|^2. \tag{7.6}
\end{align}$$

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

### 7.4 A Nontrivial Finite-Background Example

Choose one chiral boundary flow generated by $\sin(Nx)\partial_x$, $N\ge2$, with flow parameter $\eta$, and leave the other chirality unchanged. Its continuous degree-one lift satisfies

$$\begin{align}
\tan\frac{Nf_\eta(x)}2=e^{N\eta}\tan\frac{Nx}2, \qquad f_\eta'(x)=\frac1{\cosh(N\eta)-\sinh(N\eta)\cos(Nx)}.
\end{align}$$

Its exact invariants are

$$\begin{align}
\{f_\eta,x\}=\frac{N^2}{2}\big[1-(f_\eta')^2\big], \qquad \mathcal A_\eta=\cosh(N\eta).
\end{align}$$

Consequently,

$$\begin{align}
\delta E_{K_a}^{(G)}=Gg_{n|\ell|},\qquad \delta\langle E_t\rangle^{(G)} =\frac{1+\cosh(N\eta)}2Gg_{n|\ell|},\qquad E_{\mathrm{vac}}=\frac{c(N^2-1)}{24}\big[\cosh(N\eta)-1\big]. \tag{7.8}
\end{align}$$

For example $(n,\ell,\Delta)=(0,0,2)$ has adapted shift $-56G/5$ and fixed-frame mean shift $-28G[1+\cosh(N\eta)]/5$. This is a genuine large-diffeomorphism excitation for $N\ge2$, not a proper-gauge example.

## 8. Fixed-Time Floquet Spectrum for Periodic Representatives

The mode generators of the vacuum note are $2\pi$-periodic in $t$. Their admissible time-independent-parameter flows commute with $t\mapsto t+2\pi$. Hence

$$\begin{align}
\tau_a(t+2\pi,r,\varphi)=\tau_a(t,r,\varphi)+2\pi, \qquad R_a,\theta_a\ \text{are periodic modulo }\theta_a\sim\theta_a+2\pi.
\end{align}$$

To define fixed-boundary-time evolution, assume in addition a smooth family of spacelike Cauchy surfaces $\widehat\Sigma_t$ anchored at boundary time $t$, with vanishing allowed boundary flux, such that $\widehat\Sigma_{t+2\pi}$ is the image of $\widehat\Sigma_t$ under the period map. The transported solution map then identifies Cauchy data on these surfaces with reference data, and the identification is periodic. Coordinate surfaces $t=\mathrm{const}$ may be used only if they satisfy these conditions.

This is an additional foliation condition, not a consequence of a smooth periodic diffeomorphism. For example, the proper diffeomorphism

$$\begin{aligned}
(T,R,\Theta)&=\left(t+\frac{5r^2}{(1+r^2)^3},r,\varphi\right),\\
\bar g^{tt}&=-\frac1{1+r^2} +(1+r^2)\left[\frac{d}{dr}\frac{5r^2}{(1+r^2)^3}\right]^2,\qquad \bar g^{tt}\big|_{r=1/2}=\frac{1596}{3125}>0
\end{aligned}$$

is smooth at the center, preserves Brown–Henneaux falloffs, and commutes with the period map. Nevertheless $dt$ is spacelike near $r=1/2$, so its constant-$t$ surfaces are not spacelike there. A suitable Cauchy foliation must be selected instead; the adapted Killing-clock construction remains valid.

Under the stated foliation condition, evolution over one period is conjugate to reference evolution. Divide out the transported-vacuum phase, consistently with the energy gaps used throughout this note, and denote the resulting monodromy by $\mathcal M_a(2\pi)$. Its eigenphases on the chosen scalar-primary branches are

$$\begin{align}
\boxed{ \operatorname{Spec}\mathcal M_a(2\pi) =\left\{\exp\left[-2\pi i\left( 2\Delta+2n+|\ell|+r_L+r_R+Gg_{n|\ell|}+O(G^2) \right)\right]\right\}.
 }
 \tag{8.1}
\end{align}$$

Thus the quasienergies modulo integers are $2\Delta+Gg_{n|\ell|}+O(G^2)$. This supplies a fixed-period spectral observable even though there is no stationary fixed-$a$ $\partial_t$ eigenproblem. A representative with nonperiodic time dependence, or without the stated period-compatible Cauchy evolution, is outside this Floquet statement.

## 9. Scope and Executed Checks

The new result is a transport theorem, with complete order-$G$ coefficients, eigenprojectors and two explicit clock prescriptions. It inherits, rather than removes, the reference calculation's physical-mass choice, scalar-primary branch, reflective exchange prescription and admissible source/gauge domains. It does not quantize the graviton amplitudes $a$, solve all mixed gravity–matter degeneracies, or extend the geometry to other Virasoro orbits. No independent all-order nonlinear convergence theorem is asserted.

The code below was executed with Python, SymPy 1.14.0, NumPy 2.3.5 and SciPy 1.17.0. It ran **65 grouped assertions**, all passing. They comprise four symbolic spectrum identities, the 25 saved generic-mass coefficients, three Schur-complement checks, one freshly evaluated lowest-mode exchange integral, four coefficient identities in an off-shell KG covariance check for the actual complex Brown–Henneaux seed, five scalar-mode equations, five KG normalization integrals, four finite-flow Schwarzian checks, four finite-flow clock integrals, two boundary-mode normalization identities, and eight tensor-density pullback checks. Maximum finite-flow residual: $8.89\times10^{-15}$; maximum tensor-density residual: $1.78\times10^{-15}$.

The off-shell covariance test leaves the radial scalar function arbitrary; the tensor-density test uses random nonsingular coordinate Jacobians. These are checks of the expressions, not numerical evidence replacing the tensorial all-background proof. The original 2026-09-18 run did not rerun the Wolfram/xAct or Sage suites. The 25 stored coefficients are verification inputs, not independently recomputed radial blocks.

### Review Verification, 2026-09-19

The embedded Python script was rerun unchanged in the Sage 10.9 Python environment: all 65 grouped assertions pass, with the same residual bounds. This remains a Python/SymPy reproduction, not an independent Sage representation-theory proof.

Independent checks appropriate to the formulas were also run:

| Check | Executed result |
|---|---|
| [Vacuum-orbit review script](scripts/vacuum_orbit_transport_checks.wl), case `clock`, Mathematica 14.3 | Ten check groups pass: the general finite-flow Schwarzian and clock average, negative-flow symmetry, the small-amplitude expansion modulo a periodic derivative, Schur-complement equations and coefficient, both mode normalizations, and a fresh lowest-mode stress integral and pair factor. |
| Same script, case `foliation`, xAct/xCoba with xTras | Three residuals vanish, verifying the inverse-metric expression and the positive value $1596/3125$ in the counterexample above. |
| [Existing solution checks](scripts/gravitation_scalar_solution_checks.wl), case `covariance`, xAct/xPert/xTras | The arbitrary-scalar diffeomorphism identity and first/second-order vacuum Einstein residuals vanish. |
| Same solution checks, case `axisymmetric`, xAct/xCoba/xTras | All lowest-mode Einstein components, radial and momentum constraints, and constraint-propagation checks vanish. |

Run each case in a fresh kernel, for example `verificationCase="clock"; Get["scripts/vacuum_orbit_transport_checks.wl"]` from this note's directory. The two xCoba cases require the components profile when using the xAct MCP. Both notes also pass Pandoc LaTeX/MathML conversion; the scoped whitespace and vault-policy checks pass.

- **Verified:** the checks above, exact transport by covariance with transported data, and the clock formulas under their stated conditions.
- **Assumptions:** the admitted smooth vacuum orbit, the reference connected scalar-primary branch and its all-index inputs, stationary endpoint prescription, reciprocal response, and a period-compatible Cauchy evolution for the Floquet result.
- **Not verified:** a complete graviton–matter mixing calculation, a direct all-index OFPT summation, nonlinear convergence, or existence of the required Cauchy foliation for every possible bulk representative.

### References and Reproducibility

Pinned repository snapshot: `6940ab5243b7d8f74bcfc2f2cf0138eeed50b240`.

- [perturbation](perturbation.md), [two particle spectrum](two%20particle%20spectrum.md): the action, boundary conventions, physical mass, primary construction and all reference spectral coefficients.
- [Einstein scalar response prescription](Einstein%20scalar%20response%20prescription.md): finite-source response domain, constraints, homogeneous-data choices and the exceptional logarithmic mass.
- [closed form spectrum audit](closed%20form%20spectrum%20audit.md): equivalent low-spin expressions and historical verification scope; its old TODOs are not treated as current task status.
- [saved primary coefficients](scripts/gravity_scalar_primary_spectrum_data.wl): the 25 expressions transcribed literally into the check below.
- [all order perturbation result](../all%20order%20perturbation%20result.md): the $q_N$, $D_N$, $a$ and $c$ normalization.
- Compère–Mao–Seraj–Sheikh-Jabbari, [1511.06079](https://arxiv.org/abs/1511.06079), section 2.4: finite Virasoro coadjoint transformations. Equations (7.2)–(7.8) are the resulting energy calculations in the present normalization.
- Harlow–Wu, [1906.08616](https://arxiv.org/abs/1906.08616): the boundary-completed variational/CPS framework used when comparing actions, slices and charges.
