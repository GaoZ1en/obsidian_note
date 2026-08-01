---
title: Cubic perturbation of Brown-Henneaux normal modes
date: 2026-07-16
---

The unperturbed normal modes in [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]] can be written, after the canonical rescaling used below, as

$$\begin{align}
u_{L,n,\mu\nu}&=\mathcal L_{\eta_{L,n}}g^{(0)}_{\mu\nu}, & u_{R,n,\mu\nu}&=\mathcal L_{\eta_{R,n}}g^{(0)}_{\mu\nu}.
\end{align}$$

For one mode, the finite-diffeomorphism continuation truncated at relative order $\kappa^p$ is

$$\begin{align}
\gamma_{A,n}^{[p]} &=\sum_{j=0}^{p}\frac{\kappa^j}{(j+1)!} \mathcal L_{\eta_{A,n}}^{j+1}g^{(0)}, & A&=L,R,
\end{align}$$

and hence

$$\begin{align}
\gamma_{A,n}^{\mathrm{diff}} &=\frac{e^{\kappa\mathcal L_{\eta_{A,n}}}-1}{\kappa}g^{(0)} =u_{A,n}+\frac{\kappa}{2}\mathcal L_{\eta_{A,n}}^2g^{(0)} +O(\kappa^2).
\end{align}$$

The physical metric perturbation is $\mathfrak h=\kappa\gamma$. The sections below derive this result, its multimode extension, and the corresponding perturbative symplectic form.

## Direct Result

Consider pure Einstein gravity on unit-radius global AdS$_3$, with no matter, the bulk action

$$\begin{align}
S_{\mathrm{bulk}}[g] &=\frac{1}{\kappa^2}\int_M\mathrm d^3x\sqrt{-g}\,(R+2), & \kappa^2&=16\pi G,
\end{align}$$

and Brown--Henneaux boundary conditions. The boundary Lagrangian is omitted from the cubic bulk equation in this note.

The perturbation used in the linearized-gravity notes remains

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu}+\mathfrak h_{\mu\nu}.
\end{align}$$

The different letter $\mathfrak h$ is used here only to avoid confusing this metric perturbation with the canonically rescaled field introduced below. The result is:

$$\begin{aligned}
\delta\omega_{L,n}^{(1)}&=0, & \delta\omega_{R,n}^{(1)}&=0, & \omega_{L,n}^{(0)}=\omega_{R,n}^{(0)}&=n+2, \\
v_{A,n}^{\mathrm{diff}} &=\frac12\mathcal L_{\eta_{A,n}}^2g^{(0)} =\frac12\mathcal L_{\eta_{A,n}}u_{A,n}, & u_{A,n}&=\mathcal L_{\eta_{A,n}}g^{(0)}, & A&=L,R .
\end{aligned}$$

Here $u_{A,n}$ is the canonically normalized free mode and $v_{A,n}$ is its first relative correction. The physical metric is

$$\begin{align}
g_{\mu\nu} =g^{(0)}_{\mu\nu} +\kappa u_{A,n,\mu\nu} +\kappa^2v_{A,n,\mu\nu} +O(\kappa^3).
\end{align}$$

Thus the correction is $O(\kappa)$ relative to the canonical mode and $O(\kappa^2)$ as an absolute correction to the metric. It is a second harmonic and not a frequency shift.

For a real multimode configuration, the generator is the linear sum $\eta[a]$ of all left, right, and conjugate generators, but the first correction is

$$\begin{align}
V[a]=\frac12\mathcal L_{\eta[a]}^2g^{(0)},
\end{align}$$

which contains a symmetric cross term for every pair of modes. The associated renormalized symplectic form is canonical at the vacuum and acquires chiral three-mode couplings at $O(\kappa)$; its explicit mode expansion is given in Section 8.

The Brown--Henneaux charge algebra itself is not deformed:

$$\begin{aligned}
\{H_N,H_M\} &=-i(N-M)H_{N+M} -i\frac{c}{12}N(N^2-1)\delta_{N+M,0}, \\
\{\bar H_N,\bar H_M\} &=-i(N-M)\bar H_{N+M} -i\frac{c}{12}N(N^2-1)\delta_{N+M,0}, \\
\{H_N,\bar H_M\}&=0, & c&=\frac{3}{2G}=\frac{24\pi}{\kappa^2}.
\end{aligned}$$

Consequently the $O(\kappa)$ correction to the Virasoro structure constants and central charge is zero. What does acquire an $O(\kappa)$ term is the algebra of the charge variables after they are normalized to agree with the free oscillators. This distinction is made explicit below.

## 1. Convention Dictionary and the Role of the Discarded Fields

The perturbative-action note uses

$$\begin{align}
g_{\mu\nu} =g^{(0)}_{\mu\nu} +\kappa h_{\mu\nu} +\kappa^2k_{\mu\nu} +\kappa^3p_{\mu\nu} +O(\kappa^4).
\end{align}$$

Setting $k_{\mu\nu}=p_{\mu\nu}=0$ there is a legitimate way to isolate a single-field action containing $\mathcal L_g^{(2)}[h,h]$ and $\mathcal L_g^{(3)}[h,h,h]$. It is not a consistent condition on an interacting solution. Once the cubic equation is solved, the first correction to the single field produces a $\kappa^2$ term in the metric and therefore plays the same geometric role as the coefficient called $k_{\mu\nu}$ in the coefficient-by-coefficient metric expansion.

To keep the convention of the linearized-gravity notes explicit, define only a temporary canonical field

$$\begin{align}
\gamma_{\mu\nu}:=\frac{\mathfrak h_{\mu\nu}}{\kappa}, \qquad \gamma_{\mu\nu} =u_{\mu\nu}+\kappa v_{\mu\nu}+O(\kappa^2).
\end{align}$$

This is a change of variables, not a replacement of $g=g^{(0)}+\mathfrak h$ by a different perturbative convention.

With the boundary density omitted and $k=p=0$ used only when extracting the single-field bulk action,

$$\begin{align}
S_{\mathrm{dyn}}[\gamma] &=\int_M\mathrm d^3x\sqrt{-g^{(0)}}\, \mathcal L_g^{(2)}[\gamma,\gamma]
\\
&\quad +\kappa\int_M\mathrm d^3x\sqrt{-g^{(0)}}\, \mathcal L_g^{(3)}[\gamma,\gamma,\gamma] +O(\kappa^2).
\end{align}$$

The choice $\kappa^2=16\pi G$ and the prefactor $1/\kappa^2$ remove the extra overall factors of $1/2$ that occur in the convention $S_{\mathrm{bulk}}=(2\kappa^2)^{-1}\int\sqrt{-g}(R+2)$ with $\kappa^2=8\pi G$.

Ignoring the boundary Lagrangian is sufficient for the local bulk source equation below. It is not sufficient to rederive the Brown--Henneaux symplectic form or surface-charge algebra from scratch. The Virasoro statement in this note therefore uses the already-renormalized Brown--Henneaux charge defined in the linearized-gravity charge notes.

## 2. Cubic Equation and TT Reduction

Let

$$\begin{align}
\mathcal E_{\mu\nu}[g] :=R_{\mu\nu}[g]-\frac12g_{\mu\nu}R[g]-g_{\mu\nu}.
\end{align}$$

Expanding the Euler--Lagrange equation generated by $\mathcal L_g^{(2)}+\kappa\mathcal L_g^{(3)}$ gives

$$\begin{align}
\mathcal E^{(1)}_{\mu\nu}[\gamma] +\kappa\mathcal E^{(2)}_{\mu\nu}[\gamma,\gamma] +O(\kappa^2)=0.
\end{align}$$

For $\gamma=u+\kappa v+O(\kappa^2)$ this becomes

$$\begin{align}
\mathcal E^{(1)}[u]&=0,\\
\mathcal E^{(1)}[v]+\mathcal E^{(2)}[u,u]&=0.
\end{align}$$

The second equation is the binary rooted-tree equation associated with the cubic Lagrangian. Its general solution is

$$\begin{align}
v=-G_{\mathrm{sol}}^{\mathrm{BH}}\mathcal E^{(2)}[u,u] +v_{\mathrm{hom}}, \qquad \mathcal E^{(1)}[v_{\mathrm{hom}}]=0,
\end{align}$$

where the right inverse, boundary condition, initial data, resonant prescription, and homogeneous term are part of the definition of the classical solution map.

The free external modes are taken in background TT gauge,

$$\begin{align}
g^{(0)\mu\nu}u_{\mu\nu}=0, \qquad \nabla^{(0)\mu}u_{\mu\nu}=0.
\end{align}$$

Only at this point is TT gauge imposed. In this sector,

$$\begin{align}
\mathcal E^{(1)}_{\mu\nu}[u] &=-\frac12\left(\nabla^{(0)2}+2\right)u_{\mu\nu}, \\
\left(\nabla^{(0)2}+2\right)v_{\mu\nu} &=2\mathcal E^{(2)}_{\mu\nu}[u,u] \quad\text{when the chosen representative of }v\text{ is also TT}.
\end{align}$$

The first line is the free mode equation. The unreduced equation $\mathcal E^{(1)}[v]+\mathcal E^{(2)}[u,u]=0$ remains the defining equation when a background-TT representative of $v$ has not yet been established.

## 3. Canonically Normalized Left and Right Towers

The mode labels in the article are related to the chiral labels used here by

$$\begin{align}
u_{L,n}&:=\frac{h_{-,n}}{\kappa}, & u_{R,n}&:=\frac{h_{+,n}}{\kappa}, & N&:=n+2\geq2.
\end{align}$$

Their global energy and angular momentum are

$$\begin{align}
(\omega_{L,n},m_{L,n})&=(N,N), & (\omega_{R,n},m_{R,n})&=(N,-N).
\end{align}$$

For the primaries,

$$\begin{aligned}
u^{\mu\nu}_{L,0} &=2\sqrt{\frac3\pi}\, \frac{e^{-4it}}{(1+r^2)^2}\bar\xi_1^\mu\bar\xi_1^\nu, \\
u^{\mu\nu}_{R,0} &=2\sqrt{\frac3\pi}\, \frac{e^{-4it}}{(1+r^2)^2}\xi_1^\mu\xi_1^\nu.
\end{aligned}$$

The factor follows directly from

$$\begin{align}
\frac{8\sqrt{3G}}{\kappa}=2\sqrt{\frac3\pi}.
\end{align}$$

Define the rescaled large-diffeomorphism parameters

$$\begin{align}
\eta_{L,0}:=\frac{\zeta_{-,0}}{\kappa}, \qquad \eta_{R,0}:=\frac{\zeta_{+,0}}{\kappa}.
\end{align}$$

For example,

$$\begin{aligned}
\eta_{R,0}^{t} &=\frac{i}{4\sqrt{3\pi}}\, e^{-2i(t+\phi)}\frac{r^4}{(1+r^2)^2}, \\
\eta_{R,0}^{r} &=-\frac{1}{4\sqrt{3\pi}}\, e^{-2i(t+\phi)}\frac{r(3+2r^2)}{1+r^2}, \\
\eta_{R,0}^{\phi} &=\frac{i}{4\sqrt{3\pi}}\, e^{-2i(t+\phi)}\frac{3+r^2}{1+r^2}.
\end{aligned}$$

The left parameter follows by $\phi\mapsto-\phi$ and $\eta^\phi\mapsto-\eta^\phi$. These parameters satisfy

$$\begin{align}
u_{A,0}=\mathcal L_{\eta_{A,0}}g^{(0)}.
\end{align}$$

The descendant parameters and modes are

$$\begin{aligned}
\eta_{L,n} &=\sqrt{\frac{6}{n!(n+3)!}}\, \mathcal L_{\xi_{-1}}^n\eta_{L,0}, & u_{L,n} &=\mathcal L_{\eta_{L,n}}g^{(0)}, \\
\eta_{R,n} &=\sqrt{\frac{6}{n!(n+3)!}}\, \mathcal L_{\bar\xi_{-1}}^n\eta_{R,0}, & u_{R,n} &=\mathcal L_{\eta_{R,n}}g^{(0)}.
\end{aligned}$$

The equality in the second column uses that $\xi_{-1}$ and $\bar\xi_{-1}$ are exact background Killing fields.

## 4. First Nonlinear Continuation of a Mode

For a fixed chiral generator $\eta_{A,n}$, consider the finite diffeomorphism orbit

$$\begin{align}
g(\epsilon) &=e^{\epsilon\mathcal L_{\eta_{A,n}}}g^{(0)}
\\
&=g^{(0)} +\epsilon\mathcal L_{\eta_{A,n}}g^{(0)} +\frac{\epsilon^2}{2}\mathcal L_{\eta_{A,n}}^2g^{(0)} +O(\epsilon^3).
\end{align}$$

Diffeomorphism covariance gives

$$\begin{align}
\mathcal E[g(\epsilon)] =e^{\epsilon\mathcal L_{\eta_{A,n}}}\mathcal E[g^{(0)}] =0.
\end{align}$$

Therefore the coefficients obey

$$\begin{align}
\mathcal E^{(1)}[u_{A,n}]&=0, \\
\mathcal E^{(1)} \left[\frac12\mathcal L_{\eta_{A,n}}^2g^{(0)}\right] +\mathcal E^{(2)}[u_{A,n},u_{A,n}]&=0.
\end{align}$$

This proves the particular solution

$$\begin{align}
v_{A,n}^{\mathrm{diff}} =\frac12\mathcal L_{\eta_{A,n}}^2g^{(0)}.
\end{align}$$

It is precisely the correction sourced by the variation of $\mathcal L_g^{(3)}$. Adding a proper second-order diffeomorphism or a free homogeneous solution changes the representative but not this conclusion:

$$\begin{align}
v_{A,n} =v_{A,n}^{\mathrm{diff}} +\mathcal L_{\chi_{A,n}}g^{(0)} +v_{A,n}^{\mathrm{hom}}, \qquad \mathcal E^{(1)}[v_{A,n}^{\mathrm{hom}}]=0.
\end{align}$$

A convenient normal-form prescription is to require no fundamental harmonic in $v_{A,n}$ and to impose symplectic orthogonality to $u_{A,n}$. This removes the amplitude-renormalization part of the homogeneous ambiguity.

### Harmonic Content and Frequency

The positive-frequency generator has phase

$$\begin{align}
\eta_{L,n}&\propto e^{-iN(t-\phi)}, & \eta_{R,n}&\propto e^{-iN(t+\phi)}.
\end{align}$$

Consequently

$$\begin{align}
u_{A,n}&\propto e^{-iN(t\mp\phi)}, & v_{A,n}^{\mathrm{diff}}&\propto e^{-2iN(t\mp\phi)}.
\end{align}$$

There is no term proportional to the original harmonic $e^{-iN(t\mp\phi)}$. The Poincare--Lindstedt solvability condition therefore has no resonant projection at this order:

$$\begin{align}
\delta\omega_{A,n}^{(1)}=0.
\end{align}$$

For a real one-mode field, let $\eta[a]=a\eta_{A,n}+a^*\eta_{A,n}^*$. Its correction is

$$\begin{aligned}
\frac12\mathcal L_{\eta[a]}^2g^{(0)} &=\frac{a^2}{2}\mathcal L_{\eta_{A,n}}^2g^{(0)} +\frac{(a^*)^2}{2}\mathcal L_{\eta_{A,n}^*}^2g^{(0)}
\\
&\quad +\frac{|a|^2}{2} \left( \mathcal L_{\eta_{A,n}}\mathcal L_{\eta_{A,n}^*} +\mathcal L_{\eta_{A,n}^*}\mathcal L_{\eta_{A,n}} \right)g^{(0)}.
\end{aligned}$$

The first two terms have frequencies $\pm2N$ and the last term is a stationary backreaction. None has frequency $\pm N$.

For a superposition of distinct modes, quadratic sources have frequencies $\omega_I\pm\omega_J$. Since the global AdS spectrum is integral, resonant multi-mode channels can occur and must be treated by a degenerate normal form. The zero-shift statement above is the continuation of one isolated chiral mode, not a claim that every multi-mode quadratic source is non-resonant.

### TT Status

The complex right primary and its first descendant satisfy

$$\begin{align}
g^{(0)\mu\nu}v_{R,n,\mu\nu}^{\mathrm{diff}}=0, \qquad \nabla^{(0)\mu}v_{R,n,\mu\nu}^{\mathrm{diff}}=0, \qquad n=0,1,
\end{align}$$

as verified componentwise. The left statements follow by parity. The finite-diffeomorphism formula solves the unreduced second-order equation for every $n$. Background TT of the explicit representatives for all $n\geq2$ has not been component-verified here; if it fails for a chosen bulk extension of an asymptotic generator, the proper term $\mathcal L_{\chi_{A,n}}g^{(0)}$ must be fixed by the Brown--Henneaux boundary-value problem before using the TT-reduced source equation.

## 5. Combining Several Modes

For this section it is convenient to replace the descendant label $n$ by its positive Virasoro weight $N=n+2\geq2$, so that $u_{A,N}:=u_{A,n=N-2}$, $\eta_{A,N}:=\eta_{A,n=N-2}$, and $a_{A,N}:=a_{A,n=N-2}$. A real linear combination of left and right modes is generated by

$$\begin{aligned}
\eta[a] &=\sum_{A=L,R}\sum_{N=2}^{\infty} \left(a_{A,N}\eta_{A,N}+a_{A,N}^{\dagger}\eta_{A,N}^{*}\right), \\
U[a] &=\mathcal L_{\eta[a]}g^{(0)} =\sum_{A=L,R}\sum_{N=2}^{\infty} \left(a_{A,N}u_{A,N}+a_{A,N}^{\dagger}u_{A,N}^{*}\right),
\end{aligned}$$

where $a_{A,N}^{\dagger}=a_{A,N}^{*}$ on the classical real slice. One natural nonlinear prescription is the exponential coordinate on the diffeomorphism orbit,

$$\begin{aligned}
g[a] &=e^{\kappa\mathcal L_{\eta[a]}}g^{(0)} =g^{(0)}+\kappa U[a]+\kappa^2V[a]+O(\kappa^3), \\
V[a] &=\frac12\mathcal L_{\eta[a]}^2g^{(0)}.
\end{aligned}$$

Thus the modes combine linearly at free order and pairwise at the first relative correction. For example, suppressing the complex-conjugate terms, two modes combine as

$$\begin{aligned}
V[a_1,a_2] &=\frac{a_1^2}{2}\mathcal L_{\eta_1}^2g^{(0)} +\frac{a_2^2}{2}\mathcal L_{\eta_2}^2g^{(0)}
\\
&\quad+\frac{a_1a_2}{2} \left(\mathcal L_{\eta_1}\mathcal L_{\eta_2} +\mathcal L_{\eta_2}\mathcal L_{\eta_1}\right)g^{(0)}.
\end{aligned}$$

To display every pair without imposing an ordering, define

$$\begin{aligned}
\eta_{A,N}^{(+)}&:=\eta_{A,N}, & \eta_{A,N}^{(-)}&:=\eta_{A,N}^{*}, \\
z_{A,N}^{(+)}&:=a_{A,N}, & z_{A,N}^{(-)}&:=a_{A,N}^{\dagger},
\end{aligned}$$

and the symmetric pair correction

$$\begin{align}
V_{A,N,\sigma;B,M,\tau} :=\frac14\left( \mathcal L_{\eta_{A,N}^{(\sigma)}} \mathcal L_{\eta_{B,M}^{(\tau)}} +\mathcal L_{\eta_{B,M}^{(\tau)}} \mathcal L_{\eta_{A,N}^{(\sigma)}} \right)g^{(0)}.
\end{align}$$

The complete quadratic correction is then

$$\begin{align}
V[a] =\sum_{A,B=L,R}\sum_{N,M=2}^{\infty}
\sum_{\sigma,\tau=\pm} z_{A,N}^{(\sigma)}z_{B,M}^{(\tau)} V_{A,N,\sigma;B,M,\tau}.
\end{align}$$

Writing $u_{A,N}^{(\sigma)}=\mathcal L_{\eta_{A,N}^{(\sigma)}}g^{(0)}$, each symmetric pair separately obeys

$$\begin{align}
\mathcal E^{(1)} \left[V_{A,N,\sigma;B,M,\tau}\right] +\mathcal E^{(2)} \left[u_{A,N}^{(\sigma)},u_{B,M}^{(\tau)}\right]=0.
\end{align}$$

This is the polarized form of the single-mode identity. It follows by expanding diffeomorphism covariance in two independent amplitudes.

The exponential of the sum is a phase-space coordinate prescription, not a unique physical superposition rule. For two generators, the ordered composition instead satisfies

$$\begin{align}
e^{\kappa\mathcal L_{\eta_1}} e^{\kappa\mathcal L_{\eta_2}} =\exp\left[ \kappa\mathcal L_{\eta_1+\eta_2} +\frac{\kappa^2}{2}\mathcal L_{[\eta_1,\eta_2]} +O(\kappa^3) \right].
\end{align}$$

The commutator term is a homogeneous second-order diffeomorphism. If it is a large diffeomorphism, it changes the nonlinear definition of the boundary mode amplitudes rather than being quotiented as proper gauge. The symmetric pair source above is independent of this homogeneous-coordinate choice.

### Pairwise Harmonic Selection Rules

Use the phase convention $e^{-i\omega t+im\phi}$. The positive-frequency left and right modes have $(\omega,m)=(N,N)$ and $(N,-N)$, respectively. The independent quadratic products therefore carry

| coefficient                | $(\omega,m)$ of the quadratic harmonic |
| -------------------------- | -------------------------------------- |
| $a_{L,N}a_{L,M}$           | $(N+M,N+M)$                            |
| $a_{R,N}a_{R,M}$           | $(N+M,-N-M)$                           |
| $a_{L,N}a_{R,M}$           | $(N+M,N-M)$                            |
| $a_{L,N}a_{L,M}^{\dagger}$ | $(N-M,N-M)$                            |
| $a_{R,N}a_{R,M}^{\dagger}$ | $(N-M,-N+M)$                           |
| $a_{L,N}a_{R,M}^{\dagger}$ | $(N-M,N+M)$                            |

The remaining products are complex conjugates of these rows. Same-chirality sum and difference channels have chiral quantum numbers and can therefore be kinematically resonant with another Brown--Henneaux mode whenever the resulting weight has magnitude at least two. Weight zero is the stationary backreaction, while weight one lies in the global $SL(2,\mathbb R)$ sector. The exact diffeomorphism orbit supplies a regular particular solution, so a kinematic resonance does not force a frequency shift; it fixes how the homogeneous boundary-mode amplitude is separated from the sourced term.

Left--right products are nonchiral. They give the explicit $L\bar L$ backreaction in Bañados gauge but do not introduce a new independent bulk degree of freedom.

## 6. Exact Bañados Cross-Check

The same absence of a physical frequency shift is visible in the exact solution space. In a Fefferman--Graham-type radial coordinate, the general vacuum solution with Brown--Henneaux boundary conditions can be written as

$$\begin{align}
\mathrm ds^2 =\frac{\mathrm dr^2}{r^2} -\left( r\,\mathrm dx^- -\frac{\gamma_{++}(x^+)}{r}\,\mathrm dx^+ \right) \left( r\,\mathrm dx^+ -\frac{\gamma_{--}(x^-)}{r}\,\mathrm dx^- \right).
\end{align}$$

The two chiral functions are exact phase-space coordinates. The only explicit nonlinear metric term in this gauge is proportional to $\gamma_{++}\gamma_{--}/r^2$. Thus a purely chiral excitation can be chosen to have no same-chirality quadratic metric term in Bañados coordinates, whereas the finite-diffeomorphism coordinate used above has the nonzero term $\frac12\mathcal L_\eta^2g^{(0)}$.

These statements are compatible. A nonlinear mode correction is representative- and coordinate-dependent. The invariant statements are that the corrected metric remains on the exact vacuum solution space, its chiral frequency remains $N$, and the Brown--Henneaux charges remain Virasoro moment maps. For simultaneous left and right excitations, the Bañados product gives the expected $L$--$R$ quadratic backreaction.

## 7. Virasoro Algebra Versus the Linearized Oscillator Algebra

The cubic classical solution map must be followed by the pullback of the full symplectic form,

$$\begin{align}
\Omega_{\mathrm{eff}} =p_\kappa^*\Omega_{\mathrm{full}} =\Omega_0+\kappa\Omega_1+O(\kappa^2).
\end{align}$$

Gravity has derivative interactions and boundary edge modes, so $\Omega_{\mathrm{eff}}=\Omega_0$ cannot be assumed. Nevertheless, the exact Brown--Henneaux phase space is a product of Virasoro coadjoint orbits, and its moment maps obey the Virasoro algebra displayed in the direct result. The cubic term changes the nonlinear realization of these moment maps in linearized coordinates; it does not deform the algebra.

This also gives an algebraic proof of the zero frequency shift. With the vacuum-subtracted global Hamiltonian proportional to $H_0+\bar H_0$,

$$\begin{align}
\{H_0,H_{-N}\}&=-iN H_{-N}, & \{\bar H_0,\bar H_{-N}\}&=-iN\bar H_{-N}.
\end{align}$$

The weight $N$ is exact on the Brown--Henneaux orbit.

### Charge-Normalized Oscillator Coordinates

Let

$$\begin{align}
d_N:=N(N^2-1), \qquad \alpha_N:=\sqrt{\frac{12}{c\,d_N}} =\frac{\kappa}{\sqrt{2\pi d_N}}, \qquad N\geq2,
\end{align}$$

and define, in one chiral sector,

$$\begin{align}
b_N:=\alpha_N H_N, \qquad b_N^\dagger:=\alpha_N H_{-N}.
\end{align}$$

Here $\dagger$ denotes complex conjugation on the classical phase space. After choosing the oscillator phase so that the linear charge--mode pairing is positive, at the linearized point $b_N=a_{A,N}+O(\kappa)$ and $b_N^\dagger=a_{A,N}^\dagger+O(\kappa)$ in the weight notation of Section 5. Rescaling the exact Virasoro bracket gives the first nonlinear terms

$$\begin{aligned}
\{b_N,b_M\} &=-i\frac{\kappa(N-M)}{\sqrt{2\pi}} \sqrt{\frac{d_{N+M}}{d_Nd_M}}\,b_{N+M} +O(\kappa^2), \\
\{b_N^\dagger,b_M^\dagger\} &=+i\frac{\kappa(N-M)}{\sqrt{2\pi}} \sqrt{\frac{d_{N+M}}{d_Nd_M}}\,b_{N+M}^\dagger +O(\kappa^2), \\
\{b_N,b_M^\dagger\} &=-i\delta_{NM} -i\frac{\kappa(N+M)}{\sqrt{2\pi}} \sqrt{\frac{d_{|N-M|}}{d_Nd_M}}\, \mathcal B_{N-M} +O(\kappa^2),
\end{aligned}$$

where the $O(\kappa)$ part of the mixed bracket is

$$\begin{align}
\mathcal B_{N-M} =
\begin{cases}
b_{N-M},&N-M\geq2,\\
b_{M-N}^\dagger,&M-N\geq2,\\
0,&|N-M|\leq1.
\end{cases}
\end{align}$$

For $N=M$, the first omitted term is

$$\begin{align}
-i\,\frac{\kappa^2}{\pi(N^2-1)}H_0.
\end{align}$$

For $|N-M|=1$, $H_{\pm1}$ starts beyond the linearized oscillator coordinates on the AdS vacuum orbit, so it also does not contribute at $O(\kappa)$. The barred sector has the same formulas and all left--right brackets vanish.

These are not corrections to the Virasoro algebra. They are the nonlinear Virasoro brackets written in coordinates whose leading terms are the free oscillators. An order-by-order Darboux transformation

$$\begin{align}
b_N\longmapsto A_N=b_N+O(\kappa)
\end{align}$$

can restore canonical oscillator brackets. In those Darboux coordinates the same information appears instead as quadratic $O(\kappa)$ terms in the Virasoro generators.

## 8. Perturbed Symplectic Form in the Mode Basis

The boundary Lagrangian could be omitted from the local cubic source equation, but it cannot be omitted here. Brown--Henneaux modes are locally pure diffeomorphisms, so their nondegenerate pairing is carried by the renormalized bulk-plus-corner symplectic form. Let

$$\begin{align}
p_\kappa:a\longmapsto g[a]
\end{align}$$

be the multimode solution map of Section 5. Its covariant-phase-space pullback is

$$\begin{align}
\Omega_{\mathrm{eff}}[a] :=p_\kappa^*\Omega_{\mathrm{ren}} =\Omega_{\mathrm{eff}}^{(0)} +\kappa\Omega_{\mathrm{eff}}^{(1)}+O(\kappa^2).
\end{align}$$

For two variations of the mode coefficients, the two orders are

$$\begin{aligned}
\Omega_{\mathrm{eff}}^{(0)}(\delta_1,\delta_2) &=\Omega_0(\delta_1U,\delta_2U), \\
\Omega_{\mathrm{eff}}^{(1)}(\delta_1,\delta_2) &=\Omega_0(\delta_1V,\delta_2U) +\Omega_0(\delta_1U,\delta_2V)
\\
&\quad+\int_\Sigma\omega_{\mathrm{EH}}^{(1)}[U;\delta_1U,\delta_2U] +\Omega_{\partial\Sigma}^{(1)}[U;\delta_1U,\delta_2U].
\end{aligned}$$

The first line gives

$$\begin{align}
\Omega_{\mathrm{eff}}^{(0)} =i\sum_{A=L,R}\sum_{N=2}^{\infty} \delta a_{A,N}^{\dagger}\wedge\delta a_{A,N}.
\end{align}$$

The second line displays the three sources of the first correction: insertion of the pairwise solution $V[a]$ in either slot, the field-linear part of the Einstein--Hilbert symplectic current generated by the cubic derivative interaction, and the renormalized corner contribution. Evaluating only the bulk term would miss the physical boundary-graviton pairing.

### Explicit Form in Charge-Normalized Mode Coordinates

The exact Virasoro brackets determine the full reduced symplectic form without performing the bulk and corner integrals separately. Restore a chirality label on the charge-normalized variables of Section 7 and define

$$\begin{aligned}
\lambda_{NM} &:=\frac{N-M}{\sqrt{2\pi}} \sqrt{\frac{d_{N+M}}{d_Nd_M}}, \\
\mu_{NM} &:=\frac{N+M}{\sqrt{2\pi}} \sqrt{\frac{d_{|N-M|}}{d_Nd_M}}, \qquad |N-M|\geq2, \\
\mathcal C_{A,k}
&:=\begin{cases}
b_{A,k},&k\geq2,\\
b_{A,-k}^{\dagger},&k\leq-2.
\end{cases}
\end{aligned}$$

Then

$$\begin{align}
\Omega_{\mathrm{BH}} &=i\sum_{A=L,R}\sum_{N=2}^{\infty} \delta b_{A,N}^{\dagger}\wedge\delta b_{A,N} +\kappa\Omega_{\mathrm{BH}}^{(1)}+O(\kappa^2),
\end{align}$$

with

$$\begin{aligned}
\Omega_{\mathrm{BH}}^{(1)} =\sum_{A=L,R}\Bigg[\, &-\frac{i}{2}\sum_{N,M\geq2} \lambda_{NM}b_{A,N+M}^{\dagger}
\,\delta b_{A,N}\wedge\delta b_{A,M}
\\
&+\frac{i}{2}\sum_{N,M\geq2}
\lambda_{NM}b_{A,N+M}
\,\delta b_{A,N}^{\dagger}\wedge\delta b_{A,M}^{\dagger}
\\
&+i\!\sum_{\substack{N,M\geq2\\
|N-M|\geq2}}
\mu_{NM}\mathcal C_{A,M-N}
\,\delta b_{A,N}\wedge\delta b_{A,M}^{\dagger}
\Bigg].
\end{aligned}$$

To derive this expression, write the Poisson tensor defined by the brackets of Section 7 as $P=P_0+\kappa P_1+O(\kappa^2)$ and invert it. Since $P_0=\Omega_0^{-1}$,

$$\begin{align}
\Omega_{\mathrm{BH}}^{(1)}=-\Omega_0P_1\Omega_0.
\end{align}$$

The first line pairs two annihilation-direction variations with the conjugate sum-mode coordinate $K=N+M$, and the second line is its complex conjugate. The last line gives the equivalent difference-channel triad $|N-M|=K$. Thus the perturbed symplectic form has exactly the same chiral triad selection rules as the Virasoro algebra. There is no left--right term: the reduced Brown--Henneaux phase space is the direct product of its two chiral orbits, even though a Bañados metric containing both sectors has an explicit $L\bar L$ metric component.

The variables $b_{A,N}$ and the raw exponential coordinates $a_{A,N}$ agree only at linear order. A nonlinear relation $b_{A,N}=a_{A,N}+\kappa F_{A,N}[a,a^{\dagger}]+O(\kappa^2)$ changes the displayed $O(\kappa)$ two-form by the pullback of $\Omega_0$. Therefore the boxed formula is the universal result in charge-normalized mode coordinates; an explicit formula in the raw exponential coordinates additionally requires computing that coordinate map, including the corner term. Conversely one may choose Darboux coordinates $A_{A,N}$ in which

$$\begin{align}
\Omega_{\mathrm{BH}} =i\sum_{A=L,R}\sum_{N=2}^{\infty} \delta A_{A,N}^{\dagger}\wedge\delta A_{A,N}+O(\kappa^2),
\end{align}$$

and the same $O(\kappa)$ information then appears in the quadratic terms of the Virasoro moment maps.

## 9. Verification Boundary

Verified:

1. Mathematica gives $8\sqrt{3G}/\sqrt{16\pi G}=2\sqrt{3/\pi}$, $(\sqrt{3G}/3)/\sqrt{16\pi G}=1/(4\sqrt{3\pi})$, $c=24\pi/\kappa^2$, and $c/12=2\pi/\kappa^2$.
2. Mathematica gives a zero component residual for $\mathcal L_{\eta_{R,0}}g^{(0)}-u_{R,0}$ and confirms that $\frac12\mathcal L_{\eta_{R,0}}^2g^{(0)}$ contains only the doubled chiral harmonic.
3. xAct/xCoba on global AdS$_3$ gives zero for $\mathcal E^{(1)}[u_{R,0}]$ and for $\mathcal E^{(1)}[v_{R,0}^{\mathrm{diff}}]+\mathcal E^{(2)}[u_{R,0},u_{R,0}]$.
4. The same xAct/xCoba residual vanishes for the first right descendant. The second corrections for the right primary and first descendant have zero background trace and divergence.
5. Mathematica reproduces the $O(\kappa)$ coefficients in all three charge-normalized oscillator brackets. For example, the mixed $(N,M)=(4,2)$ coefficient is $\kappa\sqrt{3/(10\pi)}$.
6. Mathematica verifies the coefficients $\kappa^j\mathcal L_\eta^{j+1}/(j+1)!$ through $j=5$ in $(e^{\kappa\mathcal L_\eta}-1)/\kappa$ and verifies the symmetric two-generator polarization with generic noncommuting matrices.
7. Mathematica gives zero residuals for all six $(\omega,m)$ selection rules in Section 5.
8. xAct/xCoba verifies on global AdS$_3$ that the background, linear, and quadratic Einstein residuals all vanish for the finite-diffeomorphism continuation of a nontrivial sum of two independent polynomial vector fields.
9. Mathematica constructs the Virasoro Poisson tensor and the boxed symplectic form for modes $N=2,\ldots,10$. All $324$ entries of $\Omega_1+\Omega_0P_1\Omega_0$ vanish, the form is antisymmetric, and all $816$ tested field-space closure triples vanish.

Assumptions:

1. unit AdS radius, vacuum Einstein equation, Brown--Henneaux falloffs, and the bulk extensions of the asymptotic generators used in the existing mode notes;
2. the homogeneous term is fixed by no fundamental harmonic, the desired initial data, and a boundary-compatible normalization prescription;
3. the Virasoro comparison uses the full renormalized Brown--Henneaux charge, even though the boundary Lagrangian is omitted from the local cubic source calculation;
4. the boxed symplectic form is written on the local vacuum-orbit patch in charge-normalized coordinates, with the $H_0,H_{\pm1}$ directions excluded from the physical oscillator labels $N\geq2$;
5. multimode sums have finite support or sufficient decay for the displayed phase-space sums to converge.

Not verified:

1. a componentwise TT check of $\frac12\mathcal L_{\eta_{A,n}}^2g^{(0)}$ for every $n\geq2$;
2. a completed componentwise xCoba residual for the actual simultaneous left and right primaries; that direct exponential calculation exceeded the practical runtime, while the general polarized covariance proof and the simpler two-generator xCoba representative do vanish;
3. the explicit map $b[a]$ for the raw exponential coordinates, a direct bulk-plus-corner evaluation of $p_\kappa^*\Omega_{\mathrm{ren}}$ in those   coordinates, and the corresponding $O(\kappa)$ Darboux map;
4. loop corrections, operator-ordering shifts, or quantum corrections to the Brown--Henneaux central charge.

## References

1. Articles/Quantization in AdS/perturbation/cps-paqft-formalism/tree_cps_pipeline_note.md.
2. Articles/Quantization in AdS/perturbation/cps-paqft-formalism/cps_old_fashioned_perturbation_theory.md.
3. Articles/Quantization in AdS/gravitational energy/article/1_model.md.
4. Articles/Quantization in AdS/gravitational energy/article/a_perturbative quantities.md.
5. Articles/Quantization in AdS/linearized gravity/article/2_quantization.md.
6. Articles/Quantization in AdS/linearized gravity/article/3_algebras.md.
7. M. Bañados, [Three-dimensional quantum geometry and black holes](https://arxiv.org/abs/hep-th/9901148).
8. A. Garbarz and M. Leston, [Classification of Boundary Gravitons in AdS$_3$ Gravity](https://arxiv.org/abs/1403.3367).
