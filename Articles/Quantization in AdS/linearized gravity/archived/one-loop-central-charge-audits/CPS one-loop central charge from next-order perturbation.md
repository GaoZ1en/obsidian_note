# CPS one-loop central charge from next-order perturbation

> [!archive]
> Detailed verification record. The essential $h^{[2]}$, $\Omega_2$, and second-Darboux results are integrated into the active main note; cutoff tables and symbol-map branches remain here for provenance.

## Binary conclusion

**B. The next classical order closes, but the one-loop number is still not internally fixed.**

For the selected fixed-generator continuation of the global-AdS$_3$ Brown--Henneaux vacuum orbit, the full renormalized CPS form determines the previously missing coefficient

$$
\Omega_2,
$$

and hence determines the radial-homotopy second Darboux map and the complete **classical** cubic Darboux charge. The displayed cubic charge in `higher perturbations of linearized gravity modes.md` is consistent with the next Hamiltonian identity away from a hard mode-cutoff edge.

The remaining obstruction is quantum rather than classical. The classical Darboux polynomial does not select a symbol map or the finite linear quantum-moment-map counterterm. Direct normal-symbol quantization gives zero bare contraction, whereas Weyl quantization followed by vacuum normal ordering gives cutoff-growing and mutually inconsistent $p=2$ and $p=3$ central diagnostics. Hermiticity, vacuum subtraction, the Brown-Henneaux algebra, and Jacobi reduce the finite freedom to a common central-cocycle parameter but do not determine that parameter.

Thus this calculation does not derive a numerical $\Delta c$ and does not use the known value as input.

## 1. Conventions and scope

### 1.1 Renormalized action and CPS data

The AdS radius is one, the signature is $(-,+,+)$, and

$$
\kappa^2=16\pi G.
$$

The renormalized action used in the project is

$$
S_{\mathrm{ren}}[g]
=\frac{1}{\kappa^2}\int_M\!\mathrm d^3x\sqrt{-g}\,(R+2)
+\frac{2}{\kappa^2}\int_\Gamma\!\mathrm d^2x\sqrt{-\gamma}\,(K-1).
$$

The second integral contains the Gibbons--Hawking term and the unit-radius AdS counterterm. The outward spacelike normal to $\Gamma$ is $n^\mu$, the future-directed timelike normal to $\Sigma$ is $\tau^\mu$, and $\partial\Sigma=\Sigma\cap\Gamma$. With Brown--Henneaux allowed variations, the integrated Harlow--Wu potential is

$$
\begin{aligned}
\theta_{\mathrm{ren}}
={}&\frac{1}{\kappa^2}\int_\Sigma\!\mathrm d^2x\sqrt\sigma\,\tau_\mu
\left(g^{\mu\alpha}\nabla^\nu\delta g_{\alpha\nu}
-g^{\alpha\beta}\nabla^\mu\delta g_{\alpha\beta}\right)\\
&-\frac{1}{\kappa^2}\int_{\partial\Sigma}\!\mathrm dx\sqrt h\,
\tau_\mu\gamma^{\mu\nu}n^\alpha\delta g_{\nu\alpha},
\qquad
\Omega=\delta\theta_{\mathrm{ren}}.
\end{aligned}
$$

The first line is the bulk contribution. The radial boundary variation of the Gibbons--Hawking plus counterterm action vanishes on allowed variations or is integrated by parts to the second-line corner contribution. No bulk-only CPS form is used below.

The same orientation and counterterm convention give the vacuum-subtracted Brown--York/CPS charge

$$
H_\xi
=-\frac{2}{\kappa^2}\int_{\partial\Sigma}\!\mathrm dx\sqrt h\,
\tau^\alpha\xi^\beta
\left(-K_{\alpha\beta}+K\gamma_{\alpha\beta}-\gamma_{\alpha\beta}\right),
\qquad
H_\xi[g^{(0)}]=0.
$$

### 1.2 Chiral modes, phases, and adjoint

The left generators obey

$$
[\xi_m,\xi_n]=-i(m-n)\xi_{m+n},
$$

and the barred generators obey the same algebra and commute with the unbarred ones. The left modes depend on $t-\phi$, the right modes on $t+\phi$, exactly as in the existing normalized $\zeta_{L/R,0}$. The two reduced chiral symplectic forms add and there is no left--right cross term. It is therefore enough to perform the calculation in one chirality.

Relabel the physical descendant number by $N\geq2$ and set

$$
\zeta_{L,N-2}=q_N\xi_{-N},
\qquad
q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}},
\qquad
D_N=2\pi N(N^2-1).
$$

The modes $-1,0,1$ are the $PSL(2,\mathbb R)$ vacuum stabilizer and are not oscillators. Introduce signed coordinates

$$
\zeta=\sum_{|n|\geq2}z_n\xi_n,
\qquad
z_{-N}=q_Na_N,
\qquad
z_N=q_N^*a_N^\dagger,
\qquad
z_N=z_{-N}^*.
$$

The linearized CPS form, Poisson bracket, and quantization convention are

$$
\Omega_0=i\sum_{N\geq2}\delta a_N^\dagger\wedge\delta a_N,
\qquad
\{a_N^\dagger,a_M\}=i\delta_{NM},
\qquad
[a_N,a_M^\dagger]=\delta_{NM}.
$$

The vacuum obeys $a_N|0\rangle=0$, and

$$
H_p^\dagger=H_{-p}.
$$

All quantum formulas below are first defined at a finite physical cutoff $2\leq N\leq N_{\max}$.

## 2. Order-counting ledger

Write

$$
\begin{aligned}
g&=g^{(0)}+\kappa h^{[0]}+\kappa^2h^{[1]}+\kappa^3h^{[2]}+O(\kappa^4),\\
\Omega&=\Omega_0+\kappa\Omega_1+\kappa^2\Omega_2+O(\kappa^3),\\
H_p&=\kappa^{-1}H_{p,-1}+H_{p,0}+\kappa H_{p,1}+O(\kappa^2),\\
X_p&=\kappa^{-1}X_{p,-1}+X_{p,0}+\kappa X_{p,1}+O(\kappa^2).
\end{aligned}
$$

Here $H_{p,-1}$, $H_{p,0}$, and $H_{p,1}$ have oscillator degrees one, two, and three. The relevant ledger is

| Target | Required metric/CPS data | Required coordinate data | Required charge data |
|---|---|---|---|
| classical $O(\kappa^{-2})$ central term | $h^{[0]},\Omega_0$ | none | $H_{p,-1}$ |
| classical $O(\kappa^{-1})$ Witt action | $h^{[1]},\Omega_1$ | $Y_1$ | $H_{p,0}$ |
| quantum $O(\kappa^0)$ identity term | $h^{[2]},\Omega_2$ | $Y_2$ | $H_{p,1}^D$ plus a quantum symbol/regulator prescription |

The first two rows were already present. This note computes the missing classical entries in the last row and then isolates the remaining quantum input.

## 3. Metric continuation through $h^{[2]}$

For the same fixed generator $\zeta[a]$, take

$$
g[a]=e^{\kappa\mathcal L_\zeta}g^{(0)}.
$$

Then

$$
\boxed{
h^{[0]}=\mathcal L_\zeta g^{(0)},
\qquad
h^{[1]}=\frac12\mathcal L_\zeta^2g^{(0)},
\qquad
h^{[2]}=\frac16\mathcal L_\zeta^3g^{(0)}.
}
$$

The multimode content is not a diagonal sum. In signed coordinates,

$$
h^{[2]}_{\mu\nu}
=\frac16\sum_{|r|,|s|,|t|\geq2}
z_rz_sz_t
\left(\mathcal L_{\xi_r}\mathcal L_{\xi_s}\mathcal L_{\xi_t}g^{(0)}\right)_{\mu\nu}.
$$

The ordered triple sum contains all same-mode and cross-mode terms. Complex conjugation maps the term $(r,s,t)$ to $(-r,-s,-t)$, so the full metric is real. This remains the selected autonomous-flow continuation; it is not a claim that one fixed exponential globally parametrizes every smooth vacuum-orbit point.

## 4. Pullback of the full renormalized CPS form and derivation of $\Omega_2$

### 4.1 Exact CPS pullback identity

Define the vacuum bilinear from the **full** renormalized form by

$$
B(u,v):=\kappa^2\Omega_{g^{(0)}}(X_u,X_v).
$$

The renormalized Brown--Henneaux charge bracket gives

$$
\boxed{
B(\xi_m,\xi_n)=iD_m\delta_{m+n,0},
\qquad
D_m=2\pi m(m^2-1).
}
$$

In particular, $D_{-1}=D_0=D_1=0$, so the vacuum stabilizer is null. The factor $(m^2-1)$ is where the global-AdS vacuum subtraction and the complete boundary/counterterm/corner prescription enter; replacing the full form by a bare bulk term would not justify this bilinear.

The exact Hamiltonian identity implies

$$
\mathcal L_{X_\xi}\Omega
=\delta(\iota_{X_\xi}\Omega)
=-\delta^2H_\xi=0.
$$

Therefore the finite Brown--Henneaux diffeomorphism is a symplectomorphism of the renormalized CPS form. Its left-trivialized field-space variation is

$$
e^{-\kappa\zeta}\delta e^{\kappa\zeta}
=\kappa\Theta,
\qquad
\Theta
=\frac{1-e^{-\kappa\operatorname{ad}_\zeta}}
{\kappa\operatorname{ad}_\zeta}\,\delta\zeta.
$$

Thus the full pullback is

$$
\boxed{
\Omega_\zeta(u,v)=B\!\left(P_>\Theta(u),P_>\Theta(v)\right),
}
$$

where $P_>$ removes only the final $-1,0,1$ components. It must not be inserted between nested brackets: a first bracket may enter the stabilizer and a second bracket may return to a physical mode. Because $B$ annihilates the stabilizer, the equivalent compact formula is

$$
\boxed{
\Omega=\frac{i}{2}\sum_{|k|\geq2}D_k\,\Theta_k\wedge\Theta_{-k}.
}
$$

This is a pullback of the metric CPS form, not a replacement by a coadjoint-orbit action or an external boundary theory.

### 4.2 Expansion through $O(\kappa^2)$

Expanding

$$
\Theta
=\delta\zeta-\frac\kappa2[\zeta,\delta\zeta]
+\frac{\kappa^2}{6}[\zeta,[\zeta,\delta\zeta]]+O(\kappa^3)
$$

gives, for physical tangent vectors $u,v$,

$$
\boxed{
\Omega_0(u,v)=B(u,v),
}
$$

$$
\boxed{
\Omega_1(u,v)
=-\frac12\left[B([\zeta,u],v)+B(u,[\zeta,v])\right],
}
$$

and

$$
\boxed{
\begin{aligned}
\Omega_2(u,v)
={}&\frac16B([\zeta,[\zeta,u]],v)
+\frac16B(u,[\zeta,[\zeta,v]])\\
&+\frac14B([\zeta,u],[\zeta,v]).
\end{aligned}
}
$$

This is the required next symplectic coefficient. It contains every multimode cross term and preserves the left--right block decomposition.

In signed coordinates, write

$$
\Omega_j=\frac12\sum_{|m|,|n|\geq2}(\Omega_j)_{mn}\,\delta z_m\wedge\delta z_n.
$$

The known first coefficient becomes

$$
(\Omega_1)_{mn}
=\frac12(m-n)D_{m+n}z_{-m-n},
$$

with the convention that $z_k=0$ for $|k|\leq1$. The new coefficient is

$$
\boxed{
\begin{aligned}
(\Omega_2)_{mn}
=-i\!\sum_{\substack{|r|,|s|\geq2\\r+s+m+n=0}}z_rz_s
\Bigg[&\frac16(s-m)(r-s-m)D_{r+s+m}\\
&+\frac16(s-n)(r-s-n)D_m\\
&+\frac14(r-m)(s-n)D_{r+m}\Bigg].
\end{aligned}
}
$$

The formula is antisymmetric in $m,n$ after the ordered $r,s$ sum and satisfies $\delta\Omega_2=0$.

As a normalization check, for $N,M\geq2$,

$$
\Omega_1(\partial_{a_N},\partial_{a_M})
=-\frac{i}{2}(N-M)
\sqrt{\frac{D_{N+M}}{D_ND_M}}\,a_{N+M}^\dagger.
$$

This is exactly the coefficient of the doubly counted wedge term

$$
-\frac{i}{4}\sum_{N,M\geq2}\lambda_{NM}a_{N+M}^\dagger
\,\delta a_N\wedge\delta a_M
$$

in the existing $\Omega_1$. Thus the sign, phase, and normalization of the exact pullback are calibrated against the already checked project formula.

### 4.3 Verification boundary

The derivation above pulls back the complete renormalized form through its exact CPS symmetry and vacuum pairing. It is therefore stronger than a bulk-only expansion and sufficient on the selected orbit. It does not separately display a component-by-component cancellation among the Einstein--Hilbert, Gibbons--Hawking, AdS counterterm, and corner integrands. The local article appendix still leaves that independent component decomposition unfinished. No claim of an independent second component derivation is made here.

## 5. The next Hamiltonian identity and the cubic charge

The existing charge coefficients become compact in the signed coordinates:

$$
H_{p,-1}=-iD_pz_{-p},
$$

$$
H_{p,0}
=-\frac12\sum_{\substack{|k|,|l|\geq2\\k+l+p=0}}
z_kz_l(l-p)D_k,
$$

$$
\boxed{
H_{p,1}
=-\frac{i}{6}\sum_{\substack{|k|,|l|,|m|\geq2\\k+l+m+p=0}}
z_kz_lz_mD_k(m-p)(l-m-p).
}
$$

The asymptotic symmetry vector field on the exponential-coordinate section is

$$
X_{p,-1}z_k=\delta_{k,p},
$$

$$
X_{p,0}z_k=-\frac{i}{2}(2p-k)z_{k-p},
$$

and

$$
\begin{aligned}
X_{p,1}z_k
={}&-\frac1{12}
\sum_{\substack{|r|,|s|\geq2\\r+s+p=k}}
z_rz_s(s-p)(r-s-p)\\
&+\frac14\sum_{\substack{u=-1,0,1\\|u-p|,|k-u|\geq2}}
z_{u-p}z_{k-u}(2p-u)(k-2u).
\end{aligned}
$$

The second line is the compensating stabilizer action required to remain on the $|k|\geq2$ section. Direct substitution gives

$$
\boxed{
X_{p,1}\mathbin{\lrcorner}\Omega_0
+X_{p,0}\mathbin{\lrcorner}\Omega_1
+X_{p,-1}\mathbin{\lrcorner}\Omega_2
=-\delta H_{p,1}.
}
$$

The symbolic check was performed for $p=\pm2,\pm3$. At a hard cutoff, the full residual is supported at the upper edge because the finite set of modes is not invariant under the Witt action. Setting the edge amplitudes $|n|>N_{\max}-|p|$ to zero makes every tested residual vanish exactly. This verifies the interior identity and identifies, rather than hides, the regulator edge obstruction. No repair of the displayed $H_{p,1}$ is required on the selected orbit.

## 6. Second radial-homotopy Darboux map

Let

$$
\mathcal E=\sum_{N\geq2}
\left(a_N\frac{\partial}{\partial a_N}
+a_N^\dagger\frac{\partial}{\partial a_N^\dagger}\right).
$$

Because $\Omega_1$ has radial weight three,

$$
\alpha_1=\frac13\iota_{\mathcal E}\Omega_1,
\qquad
\delta\alpha_1=\Omega_1,
\qquad
\iota_{Y_1}\Omega_0=-\alpha_1.
$$

It is important to distinguish a Lie-flow generator from the coefficient in a direct coordinate substitution. For the Lie-flow convention, the second-order residual after the $Y_1$ flow is

$$
R_2
=\Omega_2+\mathcal L_{Y_1}\Omega_1
+\frac12\mathcal L_{Y_1}^2\Omega_0
=\Omega_2+\frac12\mathcal L_{Y_1}\Omega_1,
$$

where $\mathcal L_{Y_1}\Omega_0=-\Omega_1$ was used. It has radial weight four, so

$$
\alpha_2=\frac14\iota_{\mathcal E}R_2,
\qquad
\iota_{Z_2}\Omega_0=-\alpha_2.
$$

The direct coordinate substitution is

$$
a=b+\kappa Y_1(b)+\kappa^2Y_2(b)+O(\kappa^3),
$$

with

$$
\boxed{
Y_2=Z_2+\frac12(Y_1\cdot\partial)Y_1.
}
$$

This convention gives

$$
\boxed{
H^D_{p,1}
=H_{p,1}+\mathrm dH_{p,0}[Y_1]+\mathrm dH_{p,-1}[Y_2].
}
$$

Equivalently, if $Z_2$ rather than the coordinate coefficient $Y_2$ is used, the last formula must be written as

$$
H^D_{p,1}
=H_{p,1}+Y_1H_{p,0}+Z_2H_{p,-1}
+\frac12Y_1^2H_{p,-1}.
$$

The finite-cutoff symbolic construction used the direct-coordinate convention and verified

$$
\Phi_\kappa^*\Omega
=i\sum_{N=2}^{N_{\max}}\delta b_N^\dagger\wedge\delta b_N
+O(\kappa^3)
$$

with exact zero residual through $O(\kappa^2)$.

## 7. Finite-cutoff quantization and the symbol-map fork

### 7.1 Linear and quadratic charges

Rephase only for the quantum calculation,

$$
\beta_N=i(-i)^{N-1}b_N,
\qquad
[\beta_N,\beta_M^\dagger]=\delta_{NM}.
$$

Then

$$
H_{p,-1}^D=\sqrt{D_p}\,\beta_p,
\qquad p\geq2.
$$

For $p=2,3$, the quadratic Darboux charges are

$$
Q_p^{(N_{\max})}
=\sum_{r=2}^{N_{\max}-p}u_r^{(p)}\beta_r^\dagger\beta_{r+p},
\qquad
u_r^{(p)}=(r+2p)\sqrt{\frac{D_r}{D_{r+p}}},
$$

and $Q_{-p}=Q_p^\dagger$. There are no $\beta\beta$ or $\beta^\dagger\beta^\dagger$ terms for $p=2,3$, because two physical positive integers cannot sum to either $2$ or $3$.

With $n_j=\beta_j^\dagger\beta_j$,

$$
\boxed{
[Q_p^{(N_{\max})},Q_{-p}^{(N_{\max})}]
=\sum_{r=2}^{N_{\max}-p}(u_r^{(p)})^2(n_r-n_{r+p}).
}
$$

Therefore

$$
\left.[Q_p,Q_{-p}]\right|_{\mathbf1}=0,
\qquad
\langle0|[Q_p,Q_{-p}]|0\rangle=0,
\qquad p=2,3.
$$

The upper-edge defect relative to an infinite sum followed by projection is

$$
E^{\mathrm{upper}}_{p,N_{\max}}
=-\sum_{j=N_{\max}-p+1}^{N_{\max}}(u_j^{(p)})^2n_j.
$$

### 7.2 Why “normal order” does not select $r_p$

In signed Darboux coordinates,

$$
z_{-N}=\frac{i}{\sqrt{D_N}}\beta_N,
\qquad
z_N=-\frac{i}{\sqrt{D_N}}\beta_N^\dagger,
\qquad
[z_m,z_n]=-\frac{\delta_{m+n,0}}{D_m}.
$$

The classical $H^D_{p,1}$ is a commuting cubic polynomial. CPS determines this polynomial but does not determine which operator symbol it denotes.

1. **Normal-symbol quantization.** Define the operator directly by

   $$
   H^D_{p,1}\longmapsto :H^D_{p,1}:.
   $$

   Then, by definition, the bare linear contraction is

   $$
   r_p^{\mathrm{normal}}(N_{\max})=0.
   $$

   This is a quantization choice, not a derivation of $\Delta c=0$.

2. **Weyl quantization followed by normal ordering.** The induced normal symbol has the linear term

   $$
   \frac12\sum_{N=2}^{N_{\max}}\frac1{D_N}
   \frac{\partial^2H^D_{p,1}}
   {\partial z_{-N}\partial z_N}.
   $$

   Write its grade-$p$ part as

   $$
   s_p^{\mathrm W}(N_{\max})z_{-p}
   =-i\gamma_p^{\mathrm W}(N_{\max})z_{-p},
   \qquad
   r_p^{\mathrm W}(N_{\max})
   =\frac{\gamma_p^{\mathrm W}(N_{\max})}{\sqrt{D_p}}.
   $$

The finite-cutoff radial Moser calculation gives the following raw central diagnostics:

| $N_{\max}$ | $\Delta c_2^{\mathrm W}=24\gamma_2^{\mathrm W}/[2(2^2-1)]$ | $\Delta c_3^{\mathrm W}=24\gamma_3^{\mathrm W}/[3(3^2-1)]$ |
|---:|---:|---:|
| 4 | $125/4$ | $119/10$ |
| 6 | $641/10$ | $1867/70$ |
| 8 | $1525/14$ | $14627/336$ |
| 10 | $19897/120$ | $149663/2310$ |
| 12 | $51639/220$ | $776993/8580$ |
| 14 | $28725/91$ | $86407/715$ |
| 16 | $114411/280$ | $38528079/247520$ |

Both columns grow with the hard cutoff and they do not approach one another at the displayed cutoffs. Hence no finite common central shift is exhibited, and the raw Weyl contractions are not a symmetry-preserving regulator result.

The important conclusion is not that one symbol map is preferred. It is that two standard maps applied to the same classical CPS data already give inequivalent $r_p$, so the classical formalism has not specified the quantum map.

### 7.3 Divergent and finite pieces

A general renormalized coefficient must be written as

$$
r_p^{\mathrm{ren}}
=\lim_{N_{\max}\to\infty}
\left(r_p^{\mathrm{bare}}(N_{\max})-r_p^{\mathrm{div}}(N_{\max})\right)
+r_p^{\mathrm{fin}}.
$$

The raw cutoff tables determine only $r_p^{\mathrm{bare}}$ for the chosen Weyl/hard-cutoff pair. They do not supply a symmetry-derived split into $r_p^{\mathrm{div}}$ and $r_p^{\mathrm{fin}}$. A finite Hermitian quantum-moment-map counterterm may be written

$$
\delta H_{p,1}^{\mathrm{fin}}
=-i\gamma_p^{\mathrm{fin}}z_{-p},
\qquad
\delta H_{-p,1}^{\mathrm{fin}}
=\left(\delta H_{p,1}^{\mathrm{fin}}\right)^\dagger.
$$

Vacuum normal ordering and $H_p|0\rangle=0$ for $p\geq2$ do not exclude it. If all modes are required to carry one Virasoro central shift $\Delta c$, then

$$
\boxed{
\gamma_p^{\mathrm{fin}}
=\frac{\Delta c}{24}p(p^2-1),
\qquad
r_p^{\mathrm{fin}}
=\frac{\Delta c}{48\pi}\sqrt{D_p}.
}
$$

This leaves one real finite parameter. Neither the classical action, Hermiticity, vacuum subtraction, nor abstract Jacobi fixes it.

## 8. Decisive commutators and a mixed/Jacobi check

Write

$$
\widehat H_p
=\frac{\sqrt{D_p}}{\kappa}\beta_p+Q_p
+\kappa\left(:C_p^{(3)}:+r_p\beta_p\right)+O(\kappa^2),
\qquad p=2,3.
$$

Since the quadratic commutators have no identity term,

$$
\boxed{
[\widehat H_p,\widehat H_{-p}]_{\mathbf1}
=\frac{D_p}{\kappa^2}
+2\sqrt{D_p}\operatorname{Re}r_p
+O(\kappa^2).
}
$$

For $p=2$,

$$
\boxed{
\Delta c_2=4\sqrt{12\pi}\operatorname{Re}r_2.
}
$$

For $p=3$,

$$
\boxed{
\Delta c_3=\sqrt{48\pi}\operatorname{Re}r_3.
}
$$

A common central charge requires

$$
\Delta c_2=\Delta c_3
\quad\Longleftrightarrow\quad
\operatorname{Re}r_3=2\operatorname{Re}r_2.
$$

The mixed quadratic commutator is

$$
\begin{aligned}
[Q_2^{(N_{\max})},Q_{-3}^{(N_{\max})}]
=\sum_{j=2}^{N_{\max}-1}\Big[&
\mathbf1_{j\leq N_{\max}-3}u_{j+1}^{(2)}u_j^{(3)}\\
&-\mathbf1_{j\geq4}u_{j-2}^{(2)}u_{j-2}^{(3)}
\Big]\beta_{j+1}^\dagger\beta_j.
\end{aligned}
$$

It has no identity term. Its missing upper-edge contribution is

$$
-\sum_{j=N_{\max}-2}^{N_{\max}-1}
u_{j+1}^{(2)}u_j^{(3)}\beta_{j+1}^\dagger\beta_j.
$$

For a high-mode Jacobi check that does not take $H_{0,\pm1}$ as primitive, use the triple $(H_2,H_3,H_{-5})$. If the one-loop identity coefficients are denoted by $K_p^{(1)}$, Virasoro closure requires

$$
\boxed{
8K_2^{(1)}-7K_3^{(1)}+K_5^{(1)}=0.
}
$$

At $N_{\max}=8$, the raw Weyl/hard-cutoff contractions give instead

$$
8K_2^{(1)}-7K_3^{(1)}+K_5^{(1)}
=-\frac{1067}{24}.
$$

The full finite oscillator commutator still satisfies associative Jacobi: the nonzero identity projection is compensated by non-Virasoro edge/operator residuals. Therefore a finite-cutoff Jacobi pass cannot select a central number. After a symmetry-preserving renormalization removes the edge residuals, Jacobi constrains all $r_p$ to one common $\Delta c$ but leaves its value arbitrary.

## 9. Symbolic verification record

The companion script `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_one_loop_next_order_checks.py` uses exact SymPy arithmetic under `sage -python`. At $N_{\max}=8$ it verified:

- $\delta\Omega_1=0$ and $\delta\Omega_2=0$ for every finite-cutoff coordinate triple;
- the first and second direct-coordinate Darboux residual matrices vanish exactly;
- the next Hamiltonian identity for $p=\pm2,\pm3$ vanishes exactly on the cutoff interior;
- the remaining Hamiltonian residual is supported only at the hard upper edge;
- the displayed Weyl contraction coefficients for $p=2,3,5$;
- the nonzero high-mode Jacobi identity projection quoted above.

The finite-cutoff scan through $N_{\max}=16$ reproduced the exact rational entries in the table. The known $\Omega_1$ sum-channel coefficient was also checked directly against $\lambda_{NM}$, including the $q_N$ phases.

An independent Mathematica check at $N_{\max}=5$ returned zero residual counts for the indexed $\Omega_1$ formula, $\Omega_2$ antisymmetry, $\delta\Omega_2$, and the $q_N$ phase/triad calibration.

Assumptions:

- the exact renormalized Brown--Henneaux CPS Hamiltonian identity and vacuum bracket used by the project are valid on the selected smooth vacuum orbit;
- finite-support formal power series are used before removing the mode cutoff;
- the radial homotopy fixes the classical canonical-coordinate freedom;
- the linearized CPS positive-frequency split fixes the vacuum adjoint and normal ordering.

Not independently verified here:

- a component-by-component $O(\kappa^2)$ integration of each bulk, Gibbons--Hawking, counterterm, and corner density;
- a symmetry-preserving continuum regulator or quantum measure derived from the metric path integral;
- convergence on a common dense operator domain.

## 10. Final statement

The next perturbative order removes the classical obstruction identified in `internal CPS one-loop central-charge audit.md`:

$$
h^{[2]}
\longrightarrow
\Omega_2
\longrightarrow
Y_2
\longrightarrow
H^D_{p,1}
$$

is now fixed on the selected Brown--Henneaux vacuum-orbit chart.

The route nevertheless stops at

$$
H^D_{p,1}
\longrightarrow
\text{choice of quantum symbol, regulator, and finite quantum moment map}
\longrightarrow
r_p^{\mathrm{ren}}.
$$

The missing input is exactly a symmetry-preserving quantum-moment-map prescription, equivalently a measure/regulator plus a finite-subtraction rule derived from the same quantum theory. Classical CPS, Hermiticity, vacuum subtraction, and Jacobi do not determine its one remaining central-cocycle parameter. The internal result is therefore criterion **B**, not A.
