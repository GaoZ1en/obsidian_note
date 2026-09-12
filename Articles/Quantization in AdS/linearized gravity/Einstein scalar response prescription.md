# Scalar-Source Prescription for the Einstein Kernel

This note fixes the response on every finite set of normalizable global AdS$_3$ scalar modes. It uses the explicit coefficient functions in [Einstein response kernel construction](Einstein%20response%20kernel%20construction.md), a static seed, and AdS isometries. The resulting solution satisfies the Einstein constraints at every time; its initial metric data are read from that solution, rather than set to zero.

Use unit radius, $f=1+r^2$, $\mathcal E^{(1)}q=T/2$, and $C[q]=0$. Assume $\Delta>1$ and exclude $\Delta_*=(1+\sqrt5)/2$. Keep a smooth center, the fixed boundary cylinder, Brown–Henneaux falloffs, and differentiated asymptotic expansions without radial logarithms. Polynomial dependence on time at a temporal resonance is allowed.

The construction below defines a real linear kernel on a **finite scalar-source space**. It does not assert the existence or convergence of one distributional kernel on every infinite scalar history or arbitrary conserved tensor.

## The Completed Kernel on a Finite Source Space

Given the retained scalar modes, let $\mathcal V$ be the real span of the real and imaginary parts of their polarized stress tensors $T[u_I,u_K]$ and $T[u_I,u_K^*]$. Remove linear dependencies before constructing a dual basis. Let $S_A$ be the resulting real basis and let $Q_A$ be the corresponding particular responses, computed by the recipes below:

$$\begin{align}
\mathcal E^{(1)}Q_A&=\frac12S_A,&C[Q_A]&=0.
\end{align}$$

For definiteness, order the generating mode pairs by $\max(E_I,E_K)$, then by mode indices and real/imaginary type, retaining the first linearly independent source at each step. Use this same order at successive cutoffs. This matters: two different recipes for linearly dependent source tensors can differ by a homogeneous metric. Selecting a source basis and extending linearly removes that ambiguity.

Let $n=f^{-1/2}\partial_t$ and introduce the positive tensor contraction
$a^{\mu\nu}=g^{(0)\mu\nu}+2n^\mu n^\nu$. On the fixed auxiliary integration region
$\mathcal D=\{0<t<\pi,\ 0<r<1,\ \varphi\in S^1\}$, define

$$\begin{align}
\Gamma_{AB}
&=\int_{\mathcal D}dV\,
a^{\mu\rho}a^{\nu\sigma}S_{A\mu\nu}S_{B\rho\sigma},\\
G_{\mathcal V,\mu\nu}{}^{\rho\sigma}(x,x')
&=2\,\mathbf 1_{\mathcal D}(x')
\sum_{A,B}Q_{A\mu\nu}(x)(\Gamma^{-1})_{AB}
a^{\rho\alpha}(x')a^{\sigma\beta}(x')S_{B\alpha\beta}(x').
\end{align}$$

The scalar modes and their sources are analytic in the interior. A nonzero linear combination cannot vanish on the open region $\mathcal D$, so $\Gamma$ is positive definite. There is no additional field equation hidden in its inverse: it is a finite matrix of definite integrals. For every $S\in\mathcal V$,

$$\begin{align}
\frac12\int dV_{x'}\,G_{\mathcal V}(x,x')S(x')
&=\sum_A Q_A(x)s_A,
& S&=\sum_A s_AS_A,\\
\mathcal E^{(1)}[G_{\mathcal V}S]&=S,
&C[G_{\mathcal V}S]&=0.
\end{align}$$

Changing $\mathcal D$ to another open compact interior region changes the displayed dual kernel but not its action on $\mathcal V$. This kernel is a solution-space response prescription, not a retarded operator on arbitrary histories. Values of a source on $\mathcal D$ determine its coefficients only because the source is restricted to the specified finite-dimensional space.

This gives the compact working answer

$$\begin{align}
q_{\mu\nu}
&=\mathcal B_{\mathcal V,\mu\nu}[\phi^{(0)},\phi^{(0)}],
&\mathcal B_{\mathcal V}[u,v]
&=\frac12G_{\mathcal V}T[u,v].
\end{align}$$

The nested basis convention makes the response on an already retained source unchanged when more modes are added. This defines a compatible map on the algebraic union of finite mode spaces; no topological infinite-mode convergence follows from it.

## Static Seed for Opposite-Frequency Pairs

Start with the normalized scalar ground mode

$$\begin{align}
u_{00}&=\frac1{\sqrt{2\pi}}f^{-\Delta/2}e^{-i\Delta t},
&S_0&=T[u_{00},u_{00}^*].
\end{align}$$

Its polar-areal response is the static tensor $p$ with

$$\begin{align}
M_0&=\frac{\Delta}{4\pi}(1-f^{1-\Delta}),
&D_0&=\frac{\Delta}{8\pi}f^{-\Delta},\\
p_{tt}&=M_0+2fD_0=\frac{\Delta}{4\pi},
&p_{rr}&=\frac{M_0}{f^2},
&p_{\varphi\varphi}&=0.
\end{align}$$

All off-diagonal components vanish. Direct substitution gives
$\mathcal E^{(1)}p=S_0/2$. The source trace is

$$\begin{align}
S_0{}^\mu{}_\mu
&=\frac1{2\pi}\left[-\Delta(2\Delta-3)f^{-\Delta}
+\Delta^2f^{-\Delta-1}\right].
\end{align}$$

The trace $\chi$ of the de Donder response solves the single static scalar equation

$$\begin{align}
\frac1r\partial_r(rf\partial_r\chi)-4\chi
&=2S_0{}^\mu{}_\mu.
\end{align}$$

Put $\delta_g=1+\sqrt5$ and define its explicit center and boundary solutions

$$\begin{align}
u_{\mathrm c}(r)
&=f^{-\delta_g/2}\,
{}_2F_1\left(\frac{\delta_g}{2},\frac{\delta_g}{2};1;\frac{r^2}{f}\right),\\
u_{\mathrm b}(r)
&=f^{-\delta_g/2}\,
{}_2F_1\left(\frac{\delta_g}{2},\frac{\delta_g}{2};\delta_g;\frac1f\right),\\
W&=rf(u_{\mathrm c}u_{\mathrm b}'-u_{\mathrm c}'u_{\mathrm b})
=-\frac{2\Gamma(\delta_g)}{\Gamma(\delta_g/2)^2}.
\end{align}$$

Then

$$\begin{align}
\chi(r)=\frac2W\left[
u_{\mathrm b}(r)\int_0^r ds\,s\,u_{\mathrm c}(s)S_0{}^\mu{}_\mu(s)
+u_{\mathrm c}(r)\int_r^\infty ds\,s\,u_{\mathrm b}(s)S_0{}^\mu{}_\mu(s)
\right].
\end{align}$$

These integrals converge where used for every $\Delta>1$; the assembled solution is regular at the center. At the excluded $\Delta_*$ its boundary expansion is logarithmic. Away from that value it has the forced powers $r^{-2\Delta-2n}$ and the fast homogeneous powers $r^{-\delta_g-2n}$, without logarithms. For example its leading forced coefficient is
$-\Delta(2\Delta-3)/[4\pi(\Delta^2-\Delta-1)]$.

The complete metric seed is obtained by one further radial integral:

$$\begin{align}
\xi^r(r)&=\frac1{2r}\int_0^r ds\,s\,[\chi(s)+2D_0(s)],
&\xi^t&=\xi^\varphi=0,\\
Q_0&=p+\mathcal L_\xi g^{(0)}.
\end{align}$$

This fixes $\operatorname{tr}Q_0=\chi$. It also fixes the full gauge condition: static circular symmetry gives $C_t=C_\varphi=0$, and the trace Einstein equation gives
$\partial_r(rfC_r)=0$. Smoothness at the center sets its integration constant to zero. Thus $C[Q_0]=0$ exactly.

Since $\min(2\Delta,\delta_g)>2$, the integral defining $\xi^r$ tends to a finite constant divided by $r$. The vector is smooth at the center, proper at infinity, and logarithm-free. Therefore $Q_0$ obeys all the required boundary conditions. Its nonzero $M_0(\infty)=\Delta/(4\pi)$ is the response to the polarized source; it is not an independently added vacuum mass. There is no regular, decaying static scalar zero mode in the Green problem above.

## All Opposite-Frequency Pairs by Isometries

For $\sigma=\pm1$, use the complex Killing vector fields

$$\begin{align}
R_\sigma&=\frac12e^{-it+i\sigma\varphi}
\left(\frac{ir}{\sqrt f}\partial_t-\sqrt f\,\partial_r
-\frac{i\sigma\sqrt f}{r}\partial_\varphi\right),\\
D_\sigma&=\frac12e^{it-i\sigma\varphi}
\left(\frac{ir}{\sqrt f}\partial_t+\sqrt f\,\partial_r
-\frac{i\sigma\sqrt f}{r}\partial_\varphi\right).
\end{align}$$

Their polar-coordinate factors are regular vector fields in Cartesian coordinates at the center. They satisfy $R_\sigma^*=-D_\sigma$. Let

$$\begin{align}
\psi_{pq}&=\mathcal L_{R_+}^{\,p}\mathcal L_{R_-}^{\,q}u_{00},
&c_{pq}^2&=p!\,q!\,(\Delta)_p(\Delta)_q.
\end{align}$$

Here $\psi_{pq}=c_{pq}u_{n,j}$ with $n=\min(p,q)$, $j=p-q$, and
$E=\Delta+p+q$. In particular

$$\begin{align}
\mathcal L_{D_+}\psi_{pq}
&=p(\Delta+p-1)\psi_{p-1,q},&
\mathcal L_{D_-}\psi_{pq}
&=q(\Delta+q-1)\psi_{p,q-1}.
\end{align}$$

Define candidate responses $\widetilde Q_{pq;kl}$ for
$T[\psi_{pq},\psi_{kl}^*]$ by the finite recursion

$$\begin{align}
\widetilde Q_{00;kl}
&=(-\mathcal L_{D_+})^k(-\mathcal L_{D_-})^lQ_0,\\
\widetilde Q_{0q;kl}
&=\mathcal L_{R_-}\widetilde Q_{0,q-1;kl}
+l(\Delta+l-1)\widetilde Q_{0,q-1;k,l-1},
\qquad q>0,\\
\widetilde Q_{pq;kl}
&=\mathcal L_{R_+}\widetilde Q_{p-1,q;kl}
+k(\Delta+k-1)\widetilde Q_{p-1,q;k-1,l},
\qquad p>0.
\end{align}$$

Terms multiplied by a zero ladder coefficient are omitted. Divide by $c_{pq}c_{kl}$ for normalized scalar modes.

This is an exact induction, not a numerical inference. For every Killing vector $X$,

$$\begin{align}
\mathcal L_XT[u,v]&=T[\mathcal L_Xu,v]+T[u,\mathcal L_Xv],\\
\mathcal E^{(1)}\mathcal L_XQ&=\mathcal L_X\mathcal E^{(1)}Q,
&C[\mathcal L_XQ]&=\mathcal L_XC[Q].
\end{align}$$

These identities and the ladder formulas prove
$\mathcal E^{(1)}\widetilde Q_{pq;kl}=T[\psi_{pq},\psi_{kl}^*]/2$ and
$C[\widetilde Q_{pq;kl}]=0$. A finite number of global isometries preserves center regularity, Brown–Henneaux falloffs, and the no-log expansions. The responses have definite difference frequencies and are bounded in time. In particular, zero-frequency and chiral difference-frequency blocks do not require dividing by a vanishing frequency denominator.

Use the real and imaginary parts of these candidates when selecting the independent real source basis above. Do not assign different outputs to two representations of the same dependent source.

## Same-Frequency-Sign Pairs: A Conserved Abel Prescription

For a positive-positive mode pair, continue the **common scalar parameter** to $\delta$ with $\operatorname{Im}\delta>0$, using
$m^2(\delta)=\delta(\delta-2)$ and analytic branches of the normalized mode functions. Define

$$\begin{align}
Q^{++}_{IK}(\delta;x)
&=\frac12\int_{-\infty}^{t}dV_{x'}\,
G^R(x,x')T_{m^2(\delta)}[u_I(\delta),u_K(\delta)](x').
\end{align}$$

The source has frequency $2\delta+2n_I+2n_K+|j_I|+|j_K|$ and decays exponentially into the past. Both modes solve the same Klein–Gordon equation at every $\delta$, so this regulator preserves source conservation exactly. Multiplying a fixed-mass stress tensor by an arbitrary time switch would not have this property.

There is no conflict with the initial energy constraint here. Conservation, vanishing boundary flux, and past damping force the total Killing charges of a regulated same-sign pair to vanish. The nonzero energy and other Killing charges of a real scalar configuration are carried by its opposite-frequency sector, which was constructed from the static seed rather than switched on from zero initial data.

The chosen reflecting retarded kernel has at most polynomial growth in global time. Past damping removes temporal endpoint terms, and $\operatorname{Re}\delta>1$ gives the normalizable spatial decay. Thus the conserved-source identities apply before removing the regulator:

$$\begin{align}
\mathcal E^{(1)}Q^{++}_{IK}(\delta)
&=\frac12T_{m^2(\delta)}[u_I(\delta),u_K(\delta)],
&C[Q^{++}_{IK}(\delta)]&=0.
\end{align}$$

Use the meromorphic continuation of this expression and fix its value at the physical parameter by

$$\begin{align}
Q^{++}_{IK}(\Delta;t,r,\varphi)
&=\operatorname{FP}_{\delta=\Delta}
Q^{++}_{IK}(\delta;t,r,\varphi),&
Q^{--}_{IK}&=(Q^{++}_{IK})^*.
\end{align}$$

Here $\operatorname{FP}$ is the constant Laurent coefficient of the **whole spacetime-dependent expression**, including its time exponential. At an ordinary point it is simply the boundary value. Meromorphic continuation uses the discrete global-AdS radial resolvent; its poles have finite order. This is an analytic spectral input, not a consequence of a finite symbolic check.

The Einstein and gauge operators are independent of $\delta$, so extracting the constant coefficient commutes with them. The right side is analytic and its constant term is the desired physical source. The field equations and all initial constraints therefore survive at a temporal pole. The prescription fixes the accompanying source-dependent homogeneous terms as well.

For comparison, for $\omega>0$ the constant Laurent coefficient at $\epsilon=0$ of

$$\begin{align}
\frac{e^{-i(\omega+i\epsilon)t}}{\omega^2-(\omega+i\epsilon)^2}
&\quad\hbox{is}\quad
e^{-i\omega t}\left(\frac{it}{2\omega}+\frac1{4\omega^2}\right).
\end{align}$$

It solves $(\partial_t^2+\omega^2)q=e^{-i\omega t}$. Taking a finite part of the frequency denominator while discarding the exponential would lose the necessary resonant response.

## No-Log Matching and Initial Constraints

For the static seed and all its opposite-frequency descendants, the previous sections give a direct global proof of the no-log property.

For the regulated positive-positive response, the decaying spatial realization selects the normalizable boundary branches. Its local no-log matching can be checked before taking the finite part. In a radial collar, the scalar-source Einstein expansion has vacuum even powers and matter powers shifted by $2\delta-2$. The leading boundary tensor is traceless and conserved. The remaining de Donder gauge recursion has the indicial system and forced exponents derived in [de Donder gauge accessibility](de%20Donder%20gauge%20accessibility.md):

$$\begin{align}
[Q\xi]_a&=r^{-s}\bigl[(s^2-4)a_a+2\partial_a a_r\bigr]+\cdots,\\
[Q\xi]_r&=r^{-s-1}(s^2-2s-4)a_r+\cdots,\\
s&\in\{4+2n\}\cup\{2\delta+2n\},\qquad n\ge0.
\end{align}$$

The on-shell boundary constraints remove the $s=2$ obstruction. For real $\Delta>1$, the forced set hits $s=1+\sqrt5$ only at $\Delta_*$. All other forced coefficients are determined without radial logarithms. Vacuum de Donder additions in this boundary class consist of the ordinary Brown–Henneaux branch and proper residual-vector branches; their fast-branch recursions are logarithm-free. Thus imposing the regular reflecting realization introduces no additional radial logarithmic branch.

At a temporal pole away from $\Delta_*$, the local forced coefficients remain analytic in $\delta$. The singular Laurent coefficients belong to homogeneous boundary branches whose radial exponents are independent of the scalar mass. Taking their finite part may produce powers of $t$, but does not differentiate a moving singular radial exponent into $\log r$. This distinguishes temporal resonance from the excluded radial indicial resonance. The argument concerns the complete metric, including cancellations between its scalar and tensor kernel pieces.

Every real basis response $Q_A$, and hence the finite kernel response, obeys

$$\begin{align}
\left.n^\mu\mathcal E^{(1)}_{\mu\nu}[q]\right|_{\Sigma_{t_0}}
&=\left.\frac12n^\mu T_{\mu\nu}[\phi^{(0)}]\right|_{\Sigma_{t_0}}
\end{align}$$

at any chosen $t_0$. These are the required initial constraints. The construction does not impose zero metric Cauchy data; it supplies compatible data by restriction of the already constructed solution. For example, the real lowest scalar mode has the nonzero mass coefficient already displayed in the interaction note.

Set $q^{\mathrm h}=0$ **relative to this specified response prescription**. Any additional independent vacuum response remains a separate datum. No step removes physical Brown–Henneaux modes by declaring them proper gauge.

## A Small Evaluated Source Gram Matrix

For $\Delta=2$, keep just the scalar ground mode and use the three real sources

$$\begin{align}
S_1&=T[u_{00},u_{00}^*],&
S_2&=\operatorname{Re}T[u_{00},u_{00}],&
S_3&=\operatorname{Im}T[u_{00},u_{00}].
\end{align}$$

With the integration region and positive contraction specified above, direct integration gives

$$\begin{align}
\Gamma&=\operatorname{diag}\left(\frac{57}{80},\frac7{16},\frac7{16}\right),
&\det\Gamma&=\frac{2793}{20480}>0.
\end{align}$$

This is a check of the finite source dualization, not a particle-spectrum calculation or a selection of the eventual physical cutoff.

## Verification and Scope

- **Verified:** the static seed Einstein equation, polarized source trace, trace reconstruction, and static gauge-constraint propagation; the Killing vectors and scalar ladder normalizations; representative ladder/Jacobi relations; the scalar radial Wronskian numerically at 60-digit working precision; the Abel finite-part oscillator identity; and the displayed finite source Gram matrix. The reproducible checks are in [the completion script](scripts/einstein_scalar_kernel_completion_checks.wl).
- **Analytic argument:** induction proves all opposite-frequency descendants from the seed. The conserved analytic regulator and Laurent extraction preserve the positive-positive Einstein/gauge equations. The no-log argument uses the stated regular-singular boundary expansion and reflecting realization; the Gram argument proves source-basis independence of the resulting finite-space action.
- **Assumptions:** finite scalar-mode sums; $\Delta>1$ away from $\Delta_*$; the decaying Euclidean kernel and its specified retarded continuation; differentiable asymptotic expansions; and meromorphic global-AdS spectral continuation with finite-order poles.
- **Not claimed:** a universal distributional extension of the auxiliary retarded kernel to every eternal conserved tensor, convergence on infinite mode sums, uniform long-time perturbative control, or an interacting particle spectrum.

The finite-source prescription is sufficient to form the classical response for a chosen free-mode cutoff. Pulling it back into the symplectic form and Hamiltonian remains the separate spectral calculation.
