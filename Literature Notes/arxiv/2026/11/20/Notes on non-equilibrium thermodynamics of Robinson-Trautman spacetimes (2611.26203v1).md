---
paper id: 2611.26203v1
title: Notes on non-equilibrium thermodynamics of Robinson-Trautman spacetimes
authors:
  - Glenn Barnich
publication date: 2026-11-19T14:45
abstract: |-
  Robinson–Trautman evolution can be rewritten as a local energy balance at future null infinity. Interpreting nonlinear memory as heat gives a Gibbs-type relation, an effective local inverse temperature, and a nondecreasing entropy density for the environment.
comments: "24 pages"
url: https://arxiv.org/abs/2611.26203v1
summary: "An exact finite-null-segment benchmark for separating a cut current, history-dependent charge improvement, and strictly radiative flux."
tags: []
---

# Two charges on one radiating null segment

The useful result for regional sewing is not a new Hamiltonian definition of Bondi energy. It is an exact identity: on a finite retarded-time interval, the change of a bare mass aspect includes both angular redistribution and outgoing news; a history-dependent improvement removes the redistribution but not the news. This distinguishes an angular corner term from flux through the null segment. Sources below are [arXiv v1](https://arxiv.org/pdf/2611.26203v1), with PDF and printed pagination matching.

## The fourth-order sphere operator (§§2.1–2.2, pp. 4–6)

Take a smooth real $V=V_\circ>0$ on round cuts $S^2$ of future null infinity, at retarded time $u$. With $P_\circ=(1+|\zeta|^2)/\sqrt2$, $\eth_s=P_\circ^{1-s}\partial_{\bar\zeta}P_\circ^s$ as an operator on spin-$s$ fields, and $\bar\eth_s=P_\circ^{1+s}\partial_\zeta P_\circ^{-s}$. On scalars set

$$D=\eth^2\bar\eth^2=\tfrac14\Delta(\Delta+2),\qquad N=|\eth^2V|^2,\qquad 3\dot V=-V^4DV+V^3N.\tag{2.1, 2.4}$$

Here $\Delta Y_{jm}=-j(j+1)Y_{jm}$. A unit complex dyad $m$ gives $\eth^2 f=m^Am^B\nabla_A\nabla_B f$ up to dyad phase. Writing $T_{AB}[f]=\nabla_A\nabla_B f-\tfrac12q_{AB}\Delta f$, one has $|\eth^2 f|^2=\tfrac12 T_{AB}T^{AB}$ for real $f$. The commutator on the gradient gives $\nabla^BT_{AB}=\nabla_A(\tfrac12\Delta+1)f$, since $\mathrm{Ric}[q]=q$; another divergence gives $2D$. Thus $D$ is self-adjoint and positive, with eigenvalues $(j-1)j(j+1)(j+2)/4$. xAct confirmed the Hessian trace and derivative commutation with this Ricci convention. Linearizing at constant $V=v_0$ gives damping $\dot v_{jm}=-(v_0^4/3)D_jv_{jm}$; $j=0,1$ are undamped, not radiative. Mathematica verified the scalar operator on the first five Legendre polynomials. The paper's Möbius action takes $V$ of weight $(s,w)=(0,1)$ with factor $e^{-E_R}$ (2.8–2.11); antipodal parity is also preserved. Scaling is $u'=\lambda^4u$, $V'=\lambda^{-1}V$: both terms of the equation have weight $-5$.

## Balance, area, and choice of reference cut (§§2.3–2.4, pp. 6–9)

Set $\varepsilon=V^{-3}$, $F=N/V$ and $\langle g\rangle=\int_{S^2}d^2\Omega\,g/(4\pi)$. Multiplying the equation by $-V^{-4}$ gives $\dot\varepsilon=DV-F$. In spin notation $\mathcal J_e=-\tfrac12\eth\bar\eth^2V$ gives $\eth\mathcal J_e+\bar\eth\bar{\mathcal J}_e=-DV$. In real sphere notation an equivalent current is $J_e^A=-\tfrac12\nabla_BT^{AB}[V]$. On an angular patch the charge changes by the line flux of $J_e$ as well as the integral of $-F$; only the former cancels between neighboring patches with opposite orientations. On the closed sphere self-adjointness gives

$$\frac{d}{du}\langle f\varepsilon\rangle=\langle V D f\rangle-\langle fF\rangle.$$

For the time translation $f=1$ this is Bondi mass loss; for dipoles it gives the radiative momentum balance, and the flux term is nonpositive for $f\ge0$ but has no universal sign for sign-changing $f$. For dipoles a real current is $J_f^A=-\tfrac12(f\nabla_BT^{AB}-(\nabla_B f)T^{AB})$: the cross terms cancel by symmetry of $T$ and $T[f]=0$. In spin notation the corresponding choice is $-\tfrac12(f\eth\bar\eth^2V-\bar\eth^2 V\eth f)$ plus its conjugate in the divergence. **Do not use (2.21) as printed** in (2.20): (2.22) also has the second product-rule term, and the real divergence requires the factor $1/2$ for this choice of current. With $z=\cos\theta$, $V=1+z^2$, $f=-z$, Mathematica gives residual $-6z+10z^3$ for the printed current and zero for the corrected one. This does not affect the integrated balance (3.6), which follows independently from $Df=0$.

The local area density is $V^{-2}$. Its derivative is $\tfrac23(VDV-N)$ and hence an angular divergence with current $\mathcal J_s^G=\tfrac13(\eth V\,\bar\eth^2V-V\eth\bar\eth^2V)$ and conjugate (2.23–2.27). The product rule cancels mixed first/third derivatives; equivalently $\langle VDV\rangle=\langle N\rangle$ by integration by parts. Thus $\Phi_G=\langle V^{-2}\rangle$ is constant, and $\delta(\Phi_G/2)=-\langle \varepsilon\,\delta V\rangle$. For axisymmetric functions, Mathematica checked the local area law using $DV=\tfrac14\partial_z^2[(1-z^2)^2\partial_z^2V]$, $N=(1-z^2)^2(\partial_z^2V)^2/4$, on a generic quartic $V$; the operator forms follow from the zonal Laplacian and dyad Hessian.

For a finite reference cut $a$, let $U^a=\int_a^u V\,dv$, $\Psi^a=\varepsilon-DU^a$. For a future endpoint write $\Psi^\infty=\varepsilon+\int_u^\infty DV\,dv$. Both obey $\dot\Psi=-F$, since differentiation of the improvement removes exactly $DV$. The difference $\Psi^\infty-\Psi^a=\int_a^\infty DV\,dv$ is constant (with convergent integral). Crucially $\int_u^\infty V$ itself generally diverges even at Schwarzschild; put $D$ **inside** the integral or project out $j\le1$ first and require integrable decay of the higher modes after differentiation. Future convergence is not proved here; the finite-cut statement needs only smoothness and positivity.

## Stationary limit and the entropy proposal (§§2.5–4, pp. 9–15)

At equilibrium, the integrated energy identity forces $N=0$, so $V=w=R^{-1}(u_0-u_i n^i)$ contains only monopole and dipole. The paper uses a timelike unit vector with norm $+1$ and $u_0>0$; $M=R^3$ in its units. Rotate the dipole coefficient onto $z$ so $w=R^{-1}(a-bz)$, $a^2-b^2=1$. Mathematica reproduced $\langle w^{-2}\rangle=R^2$, $\langle w^{-3}\rangle=R^3a$, $\langle z w^{-3}\rangle=R^3b$ for $a>b>0$ (rest by continuity, reversed boost by reflection). In particular, with spatial Lorentz lowering $n_3=-z$, $b=u_3$ in the displayed (2.42), (2.47) agrees with these moments. For entropy, use the stationary input $S_{\rm BH}=A/4=4\pi M^2$ in $G=1$; this fixes $S(P)=4\pi P_aP^a$ and $\beta^a=8\pi P^a=8\pi M u^a$ by differentiation (the middle $u_a$ in (2.52) has its index lowered in print). Substituting the inverse relation yields the Massieu function $S-\beta^aP_a=-\beta^a\beta_a/(16\pi)$. In the vault's spacetime signature $(-,+,+,+)$ the same scalar is $S=-4\pi P_aP^a$; raise/lower with the chosen metric before varying.

The thermodynamic step is a **choice**, not a consequence of the gravitational variational principle: take $F$ as the heat rate into the environment and $\beta_{\rm loc}=V$ as its inverse-temperature density factor. Then $k^0=DU^0$ and $\dot k^0-\dot\varepsilon=F$, so

$$s^0(u,x)=\int_0^u N\,dv,\qquad \dot s^0=V(\dot k^0-\dot\varepsilon)=N\ge0.$$

For the system $k^\infty=DU^\infty$ and the heat rate is $-F$; $s^\infty=\int_u^\infty N\,dv$ decreases by the same rate. This is a Gibbs-type rewriting, not a measured KMS temperature or a horizon-area theorem. Also $s^0$ need not vanish at late times along a history that radiated: it vanishes if the *whole* history was stationary. The two integrals in time compose at a cut, with a reference constant for each. Mathematica reproduced the chain-rule/Gibbs reductions at $V>0$. Under RT scaling, $S^0=\langle s^0\rangle$ has weight $2$, accumulated $F$ weight $3$, and $\Phi_G$ weight $2$. Thus $4\pi\Phi_G^3+4\pi\Phi_G^2 S^0$ has the stationary weight $6$ (4.4). With $v=\sqrt{\Phi_G}V$, $u'=u/\Phi_G^2$, the reduced integral of $|\eth^2v|^2$ is $S^0/\Phi_G$, reproducing (4.8). The factor chosen in (4.4) is not unique by stationarity and scaling alone. For convergence the author points to fixed-volume antipodally even flows, and to tracking the running low modes by an adapted DeTurck procedure for generic data; no horizon/AdS identification is made in §6.

## Why the auxiliary Hamiltonian is not the physical cut symplectic form (§5 and App. A, pp. 16–19, 21)

The pairing $\Theta=\int d^2\Omega\,\mathcal P\,\delta V$ couples boost weights $-3$ and $1$, with the sphere measure compensating the product. $\ker D$ in $V$ is invariant, as is its annihilator $\operatorname{im}D$ in $\mathcal P$. The complementary splitting into explicit low and high harmonics is in a round frame; the invariant data are the subspace and quotient, not a choice of all complementary representatives. Insert (5.10) using $n_i=-n^i$: $\langle n^i n^j\rangle=\delta^{ij}/3$ gives $p_a\delta x^a$. The radiative pairing has momentum $DU$; $D$ can be inverted there mode by mode, but not on the four low directions.

For the history variable $U=U^0$ or $U^\infty$, take $\sigma=+1$ or $-1$, respectively, so $\dot U=\sigma V$. The functional $W=\tfrac12\int d^2\Omega(V^{-2}+\sigma |\eth^2U|^2)$ yields $P_G=-\delta W/\delta V=V^{-3}$ and $P_R=-\delta W/\delta U=-\sigma DU$. Thus $P_G+P_R=\Psi$, and the two constraints $C_G=P_G-V^{-3}$, $C_R=P_R+\sigma DU$ Poisson commute because the Hessian of $W$ is symmetric (for $D$, use the closed cut). The Hamiltonian is

$$H=\int d^2\Omega\left(\sigma V C_R-\tfrac13 V^4DV C_G\right).$$

Variation in the momenta gives $\dot U=\sigma V$ and the nondissipative equation for $V$. Variation in $U$ gives $\dot P_R=-DV$. In $-\delta H/\delta V$ the derivative of $V^4C_G$ is $4 V^3 C_G+3$, and transposing $D$ contributes $D(V^4 C_G)/3$; hence $\dot P_G=DV$ on the graph. With the added terms $(\Delta\dot V,\Delta\dot P_G)=(V^3N/3,-N/V)$, the chain rule still makes $\dot C_G=0$ and $\dot\Psi=-F$. Mathematica checked these algebraic residuals for both signs. App. A generalizes this to $C=p+\partial W$: $\{C,C\}=0$ by the Hessian and the graph has $\Theta=-\delta W$, so $\delta\Theta|_C=0$. The Legendre transform is the critical value of $qp+W(q)$, with local invertibility only after removing the Hessian kernel (here the low $U$ modes). The canonical convention $\Omega=\delta p\wedge\delta q$ gives $-\iota_{X_H}\Omega=\delta H$ here; a constraint generating evolution on the auxiliary graph does not establish a nondegenerate physical gravitational CPS there.

**Reusable check for sewing.** Retain the cut reference in $DU^a$, or promote $U$ to auxiliary boundary data and specify its initial value. Across $u=b$, the two regional choices differ by $D\int_a^b V\,dv$; it is precisely the offset needed for telescoping the improved charges. This tests sign/orientation and integration-by-parts bookkeeping before introducing corner degrees of freedom. The radiated $\int F$ cannot be removed by that offset. Neither the covariant Einstein presymplectic current with its null boundary potential nor its Wald–Zoupas charge variation was independently pulled back here; the boundary flux identity is not a replacement for that test, or for the vanishing-flux AdS variational problem.
