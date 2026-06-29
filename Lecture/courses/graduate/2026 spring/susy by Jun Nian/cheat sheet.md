---
title: Supersymmetry Cheat Sheet
date: 2026-06-28
summary: "Open-book exam reference for Jun Nian's supersymmetry course, organized around the homework problems: two-component spinors, N=1 superspace, Wess-Zumino models, SUSY breaking, SQCD one-loop cancellation, holomorphy, non-renormalization, and Seiberg duality."
---

# Supersymmetry Cheat Sheet

## 0. Open-book priorities

1. Fix conventions first: metric, $\sigma^\mu,\bar\sigma^\mu$, spinor contraction, and whether the SUSY transformations are on-shell or off-shell.
2. For component questions, start from the superspace action and read off $F W_i-\frac12 W_{ij}\psi_i\psi_j+\mathrm{h.c.}$.
3. For SUSY breaking, write all $F$- and $D$-flatness equations before discussing the vacuum.
4. For SQCD loop questions, keep only the quadratically divergent part and track the relative coefficients $1-4-1+4$.
5. For holomorphy questions, promote couplings to chiral spurions, impose global charges and dimension, then use weak-coupling matching.
6. For Seiberg duality checks, compute anomalies using Weyl fermion charges, not superfield charges.

## 1. Spinor and sigma-matrix conventions

The homework convention is

$$\begin{align}
\eta_{\mu\nu}=(1,-1,-1,-1),\qquad \sigma^\mu=(\mathbb I,\sigma^i),\qquad \bar\sigma^\mu=(\mathbb I,-\sigma^i).
\end{align}$$

The basic Clifford identities are

$$\begin{align}
\sigma^\mu\bar\sigma^\nu+\sigma^\nu\bar\sigma^\mu&=2\eta^{\mu\nu}\mathbb I,\\
\bar\sigma^\mu\sigma^\nu+\bar\sigma^\nu\sigma^\mu&=2\eta^{\mu\nu}\mathbb I.
\end{align}$$

Useful contractions:

$$\begin{align}
\operatorname{tr}(\sigma^\mu\bar\sigma^\nu)&=2\eta^{\mu\nu},\\
(\sigma^\mu)_{\alpha\dot\alpha}(\bar\sigma_\mu)^{\dot\beta\beta} &=2\delta_\alpha{}^\beta\delta_{\dot\alpha}{}^{\dot\beta},\\
(\sigma^\mu)_{\alpha\dot\alpha}(\sigma_\mu)_{\beta\dot\beta} &=2\epsilon_{\alpha\beta}\epsilon_{\dot\alpha\dot\beta}.
\end{align}$$

For Grassmann spinors, the homework identities to use are

$$\begin{align}
\psi^\dagger\bar\sigma^\mu\chi&=-\chi\sigma^\mu\psi^\dagger,\\
\psi^\dagger\bar\sigma^\mu\sigma^\nu\chi^\dagger &=\chi^\dagger\bar\sigma^\nu\sigma^\mu\psi^\dagger.
\end{align}$$

When proving sigma identities, split into the four cases $(0,0)$, $(0,i)$, $(i,0)$, and $(i,j)$. The spatial case uses

$$\begin{align}
\{\sigma^i,\sigma^j\}=2\delta^{ij}\mathbb I.
\end{align}$$

## 2. Four-dimensional $\mathcal N=1$ SUSY algebra

The super-Poincare algebra is

$$\begin{align}
\{Q_\alpha,\bar Q_{\dot\beta}\} &=2(\sigma^\mu)_{\alpha\dot\beta}P_\mu,\\
\{Q_\alpha,Q_\beta\}&=0,\qquad \{\bar Q_{\dot\alpha},\bar Q_{\dot\beta}\}=0,\\
[Q_\alpha,P_\mu]&=[\bar Q_{\dot\alpha},P_\mu]=0.
\end{align}$$

In the rest frame the algebra implies $H\geq0$. A supersymmetric vacuum obeys

$$\begin{align}
Q_\alpha\ket 0=\bar Q_{\dot\alpha}\ket 0=0,
\end{align}$$

and has zero vacuum energy.

For the off-shell chiral multiplet $(\phi,\psi_\alpha,F)$, the lecture convention is

$$\begin{align}
\delta_\epsilon\phi&=\sqrt2\,\epsilon^\alpha\psi_\alpha,\\
\delta_\epsilon\psi_\alpha&=i\sqrt2(\sigma^\mu\bar\epsilon)_\alpha\partial_\mu\phi +\sqrt2\,\epsilon_\alpha F,\\
\delta_\epsilon F&=i\sqrt2\,\bar\epsilon_{\dot\alpha} (\bar\sigma^\mu)^{\dot\alpha\beta}\partial_\mu\psi_\beta.
\end{align}$$

The commutator closes off-shell:

$$\begin{align}
[\delta_\epsilon,\delta_\eta] =2i(\epsilon\sigma^\mu\bar\eta-\eta\sigma^\mu\bar\epsilon)\partial_\mu.
\end{align}$$

If $F$ is eliminated and the free Wess-Zumino transformations are used on-shell, closure on $\psi_\alpha$ requires the Weyl equation

$$\begin{align}
\bar\sigma^\mu\partial_\mu\psi=0.
\end{align}$$

In the homework normalization,

$$\begin{align}
\delta\phi=\epsilon^\alpha\psi_\alpha,\qquad \delta\psi_\alpha=-i(\sigma^\mu\epsilon^\dagger)_\alpha\partial_\mu\phi,
\end{align}$$

and

$$\begin{align}
[\delta_{\epsilon_2},\delta_{\epsilon_1}]\psi_\alpha \approx \epsilon^\mu P_\mu\psi_\alpha,\qquad \epsilon^\mu=-\epsilon_2\sigma^\mu\epsilon_1^\dagger +\epsilon_1\sigma^\mu\epsilon_2^\dagger.
\end{align}$$

The symbol $\approx$ means equality after using the equation of motion.

## 3. Superspace

Superspace coordinates are

$$\begin{align}
z^M=(x^\mu,\theta^\alpha,\bar\theta_{\dot\alpha}).
\end{align}$$

One useful differential-operator realization is

$$\begin{align}
Q_\alpha&=\frac{\partial}{\partial\theta^\alpha} -i(\sigma^\mu\bar\theta)_\alpha\partial_\mu,\\
\bar Q_{\dot\alpha}&=-\frac{\partial}{\partial\bar\theta^{\dot\alpha}} +i(\theta\sigma^\mu)_{\dot\alpha}\partial_\mu,
\end{align}$$

so

$$\begin{align}
\{Q_\alpha,\bar Q_{\dot\beta}\} =2i(\sigma^\mu)_{\alpha\dot\beta}\partial_\mu.
\end{align}$$

The covariant derivatives are

$$\begin{align}
D_\alpha&=\frac{\partial}{\partial\theta^\alpha} +i(\sigma^\mu\bar\theta)_\alpha\partial_\mu,\\
\bar D_{\dot\alpha}&=-\frac{\partial}{\partial\bar\theta^{\dot\alpha}} -i(\theta\sigma^\mu)_{\dot\alpha}\partial_\mu,
\end{align}$$

with

$$\begin{align}
\{D_\alpha,\bar D_{\dot\beta}\} =-2i(\sigma^\mu)_{\alpha\dot\beta}\partial_\mu,\qquad \{D,Q\}=\{D,\bar Q\}=\{\bar D,Q\}=\{\bar D,\bar Q\}=0.
\end{align}$$

The homework integration convention is

$$\begin{align}
d^2\theta=-\frac14 d\theta^\alpha d\theta^\beta\epsilon_{\alpha\beta},
\end{align}$$

and the key integrals are

$$\begin{align}
\int d^2\theta\,\theta^2&=1,\\
\int d^2\theta\,(\chi\theta)(\psi\theta)&=-\frac12(\chi\psi).
\end{align}$$

A chiral superfield satisfies

$$\begin{align}
\bar D_{\dot\alpha}\Phi=0,
\end{align}$$

and can be written using $y^\mu=x^\mu+i\theta\sigma^\mu\bar\theta$ as

$$\begin{align}
\Phi(y,\theta)=\phi(y)+\sqrt2\,\theta\psi(y)+\theta^2F(y).
\end{align}$$

## 4. Wess-Zumino model and superpotential

The standard chiral multiplet action is

$$\begin{align}
S=\int d^4x\,d^4\theta\,\Phi^\dagger\Phi +\left(\int d^4x\,d^2\theta\,W(\Phi)+\mathrm{h.c.}\right).
\end{align}$$

For several chiral multiplets,

$$\begin{align}
\mathcal L_W=F_iW_i(\phi)-\frac12W_{ij}(\phi)\psi_i\psi_j+\mathrm{h.c.},
\end{align}$$

where

$$\begin{align}
W_i=\frac{\partial W}{\partial\phi_i},\qquad W_{ij}=\frac{\partial^2W}{\partial\phi_i\partial\phi_j}.
\end{align}$$

The auxiliary equation and scalar potential are

$$\begin{align}
F_i^*=-W_i(\phi),\qquad V_F=\sum_i|W_i(\phi)|^2.
\end{align}$$

For

$$\begin{align}
W(\Phi)=\frac12m\Phi^2+\frac13g\Phi^3,
\end{align}$$

one has

$$\begin{align}
W'(\phi)&=m\phi+g\phi^2,\\
W''(\phi)&=m+2g\phi.
\end{align}$$

The superpotential part before eliminating $F$ is

$$\begin{align}
\mathcal L_W =F(m\phi+g\phi^2)-\frac12(m+2g\phi)\psi\psi+\mathrm{h.c.}
\end{align}$$

After eliminating $F$,

$$\begin{align}
V(\phi)=|m\phi+g\phi^2|^2.
\end{align}$$

If $m,g$ are real, the interaction terms are

$$\begin{align}
\mathcal L_{\mathrm{int}} =-g(\phi\psi\psi+\phi^*\bar\psi\bar\psi) -g^2|\phi|^4-mg(\phi\phi^{*2}+\phi^*\phi^2).
\end{align}$$

For complex $m,g$, replace the last line by

$$\begin{align}
\mathcal L_{\mathrm{int}} =-g\phi\psi\psi-g^*\phi^*\bar\psi\bar\psi
-|g|^2|\phi|^4-mg^*\phi\phi^{*2}-m^*g\phi^*\phi^2.
\end{align}$$

## 5. SUSY breaking and ISS rank condition

In a globally supersymmetric theory with ordinary chiral and vector multiplets,

$$\begin{align}
V=\sum_i|F_i|^2+\frac12\sum_aD^aD^a.
\end{align}$$

A supersymmetric vacuum requires

$$\begin{align}
\langle F_i\rangle=0,\qquad \langle D^a\rangle=0.
\end{align}$$

If no simultaneous solution exists, the vacuum energy is positive and SUSY is spontaneously broken. The broken supercharge gives a massless goldstino.

For the ISS superpotential

$$\begin{align}
W=h\bar q^i_a\Phi^j{}_iq^a_j-h\mu^2\Phi^i{}_i,
\end{align}$$

the $F$-term equations are

$$\begin{align}
(F_\Phi^\dagger)^i{}_j &=-h(\bar q^i_aq^a_j-\mu^2\delta^i{}_j),\\
(F_q^\dagger)^a{}_j &=-h\bar q^i_a\Phi^j{}_i,\\
(F_{\bar q}^\dagger)^i{}_a &=-h\Phi^j{}_iq^a_j.
\end{align}$$

The scalar potential is

$$\begin{align}
V_F=|h|^2\left[ \sum_{i,j}\left|\bar q^i_aq^a_j-\mu^2\delta^i{}_j\right|^2 +\sum_{a,j}\left|\bar q^i_a\Phi^j{}_i\right|^2 +\sum_{i,a}\left|\Phi^j{}_iq^a_j\right|^2 \right].
\end{align}$$

The key obstruction is

$$\begin{align}
\operatorname{rank}(\bar q q)\leq N_c<N_f =\operatorname{rank}(\mu^2\mathbb I_{N_f})
\end{align}$$

when $\mu^2\neq0$. Thus $F_\Phi=0$ cannot be solved and SUSY is spontaneously broken by the rank condition.

The Witten index is

$$\begin{align}
\Delta=\operatorname{Tr}_{\mathcal H}(-1)^F e^{-\beta H}.
\end{align}$$

If $\Delta\neq0$, at least one supersymmetric ground state remains. If $\Delta=0$, SUSY breaking is not forced; the index only gives no obstruction.

## 6. Vector multiplet, SYM, and SQCD

A real vector superfield obeys

$$\begin{align}
V=V^\dagger.
\end{align}$$

In Wess-Zumino gauge,

$$\begin{align}
V_{\mathrm{WZ}} =-\theta\sigma^\mu\bar\theta A_\mu +i\theta^2\bar\theta\bar\lambda -i\bar\theta^2\theta\lambda +\frac12\theta^2\bar\theta^2D.
\end{align}$$

The physical vector multiplet is

$$\begin{align}
(A_\mu,\lambda_\alpha,D).
\end{align}$$

The gauge-covariant chiral field strength is

$$\begin{align}
W_\alpha=-\frac14\bar D^2(e^{-V}D_\alpha e^V).
\end{align}$$

The pure super Yang-Mills action is

$$\begin{align}
S_{\mathrm{SYM}} =\frac{1}{4g^2}\int d^4x\,d^2\theta\,\operatorname{Tr}(W^\alpha W_\alpha) +\mathrm{h.c.}
\end{align}$$

SQCD has gauge group

$$\begin{align}
G=SU(N_c),
\end{align}$$

with

$$\begin{align}
Q_i\in\mathbf{N_c},\qquad \widetilde Q^i\in\overline{\mathbf{N_c}},\qquad i=1,\dots,N_f.
\end{align}$$

Do not treat $Q_i$ and $\widetilde Q^i$ as conjugate superfields. They are independent chiral superfields in conjugate gauge representations.

The massless theory has

$$\begin{align}
W_{\mathrm{SQCD}}=0,
\end{align}$$

and a quark mass deformation is

$$\begin{align}
W_{\mathrm{SQCD}}=m_i{}^j\widetilde Q^iQ_j.
\end{align}$$

Gauge-invariant chiral operators include

$$\begin{align}
M^i{}_j=\widetilde Q^iQ_j,\qquad B\sim Q^{N_c},\qquad \widetilde B\sim \widetilde Q^{N_c}.
\end{align}$$

The $D$-term scalar potential is

$$\begin{align}
V_D=\frac{g^2}{2}\sum_a \left(q_i^\dagger T^aq_i-\widetilde q_iT^a\widetilde q^{\dagger i}\right)^2.
\end{align}$$

## 7. SQCD one-loop squark mass cancellation

Define

$$\begin{align}
T^aT^a=C_2(R)\mathbb I,\qquad I_\Lambda=\int^\Lambda\frac{d^4p_E}{(2\pi)^4}\frac{1}{p_E^2} =\frac{\Lambda^2}{16\pi^2}.
\end{align}$$

For the fundamental of $SU(N_c)$ with

$$\begin{align}
\operatorname{tr}(T^aT^b)=\frac12\delta^{ab},
\end{align}$$

one has

$$\begin{align}
C_F=\frac{N_c^2-1}{2N_c}.
\end{align}$$

At zero external squark momentum and with all masses set to zero, only the quadratically divergent part is tracked:

$$\begin{align}
\int^\Lambda\frac{d^4p}{(2\pi)^4}\frac{i}{p^2} \longrightarrow I_\Lambda.
\end{align}$$

The four homework diagrams give

$$
\begin{array}{c|c|c}
\text{diagram} & \text{relative coefficient} & \text{contribution} \\
\hline
\text{squark loop} & +1 & +g^2C_2(R)I_\Lambda \\
\text{quark-gluino loop} & -4 & -4g^2C_2(R)I_\Lambda \\
\text{squark-gluon loop} & -1 & -g^2C_2(R)I_\Lambda \\
\text{gluon seagull loop} & +4 & +4g^2C_2(R)I_\Lambda
\end{array}
$$

The spinor trace used in the fermion loop is

$$\begin{align}
\operatorname{tr}(p_\mu\sigma^\mu p_\nu\bar\sigma^\nu)=2p^2.
\end{align}$$

The seagull graph uses the symmetry factor $\frac12$ and

$$\begin{align}
\delta^{ab}\{T^a,T^b\}=2T^aT^a=2C_2(R)\mathbb I,\qquad \eta_{\mu\nu}\eta^{\mu\nu}=4.
\end{align}$$

Adding the four diagrams,

$$\begin{align}
\mathcal M_{\mathrm{1-loop}} =g^2C_2(R)I_\Lambda(1-4-1+4)=0.
\end{align}$$

Thus unbroken $\mathcal N=1$ SQCD has no quadratically divergent one-loop squark mass correction:

$$\begin{align}
\delta m_q^2\big|_{\Lambda^2,\mathrm{1-loop}}=0.
\end{align}$$

## 8. Holomorphy and non-renormalization

For

$$\begin{align}
W=\frac12M\Phi_H^2+\frac{\lambda}{2}\Phi_H\Phi^2,
\end{align}$$

tree-level integrating out gives

$$\begin{align}
0=\frac{\partial W}{\partial\Phi_H} =M\Phi_H+\frac{\lambda}{2}\Phi^2, \qquad \Phi_H=-\frac{\lambda}{2M}\Phi^2.
\end{align}$$

Therefore

$$\begin{align}
W_{\mathrm{eff}}=-\frac{\lambda^2}{8M}\Phi^4.
\end{align}$$

The spurion charges in the homework are

$$
\begin{array}{c|ccc}
&U(1)_A&U(1)_B&U(1)_R\\
\hline
\Phi_H&1&0&1\\
\Phi&0&1&\frac12\\
M&-2&0&0\\
\lambda&-1&-2&0
\end{array}
$$

A holomorphic monomial

$$\begin{align}
M^a\lambda^b\Phi^c
\end{align}$$

must obey

$$\begin{align}
-2a-b&=0,\\
-2b+c&=0,\\
\frac{c}{2}&=2.
\end{align}$$

Thus

$$\begin{align}
a=-1,\qquad b=2,\qquad c=4,
\end{align}$$

so holomorphy and symmetries fix

$$\begin{align}
W_{\mathrm{eff}}=C\frac{\lambda^2}{M}\Phi^4.
\end{align}$$

Tree-level matching fixes $C=-\frac18$.

For the general perturbative non-renormalization theorem,

$$\begin{align}
W=\sum_n\mu_n\Phi^n.
\end{align}$$

Promote every $\mu_n$ to a background chiral spurion with charge $-n$ under

$$\begin{align}
\Phi\mapsto e^{i\alpha}\Phi,
\end{align}$$

and dimension

$$\begin{align}
[\Phi]=1,\qquad [\mu_n]=3-n.
\end{align}$$

For a holomorphic monomial

$$\begin{align}
\prod_n\mu_n^{a_n}\Phi^p,
\end{align}$$

the symmetry gives

$$\begin{align}
p=\sum_n n a_n,
\end{align}$$

and dimension $3$ gives

$$\begin{align}
3=\sum_n a_n(3-n)+p=3\sum_n a_n.
\end{align}$$

Perturbative regularity at $\mu_n\to0$ requires non-negative integer exponents. Hence $\sum_n a_n=1$ means exactly one $a_n$ equals $1$, so the Wilsonian superpotential keeps the same holomorphic form:

$$\begin{align}
W_{\mathrm{eff}}=W.
\end{align}$$

This statement is about the perturbative Wilsonian superpotential. The Kahler potential can be renormalized, and non-perturbative effects can generate superpotential terms when allowed by symmetries.

## 9. Seiberg duality and anomaly matching

Use the homework notation: electric color is $N$ and the number of flavors is $F$. The electric theory has gauge group $SU(N)$, and the magnetic theory has gauge group $SU(F-N)$.

The global symmetry is

$$\begin{align}
SU(F)_1\times SU(F)_2\times U(1)_B\times U(1)_R.
\end{align}$$

The electric matter charges are

$$
\begin{array}{c|c|cccc}
&SU(N)&SU(F)_1&SU(F)_2&U(1)_B&U(1)_R\\
\hline
Q&\square&\square&1&1&\frac{F-N}{F}\\
\bar Q&\bar\square&1&\bar\square&-1&\frac{F-N}{F}
\end{array}
$$

The magnetic matter charges are

$$
\begin{array}{c|c|cccc}
&SU(F-N)&SU(F)_1&SU(F)_2&U(1)_B&U(1)_R\\
\hline
q&\square&\bar\square&1&\frac{N}{F-N}&\frac{N}{F}\\
\bar q&\bar\square&1&\square&-\frac{N}{F-N}&\frac{N}{F}\\
M&1&\square&\bar\square&0&2\frac{F-N}{F}
\end{array}
$$

### Anomaly matching rulebook

Only left-handed Weyl fermions contribute to 't Hooft anomalies. Scalars do not contribute. For a chiral superfield $\Phi$, use the Weyl fermion $R$-charge

$$\begin{align}
R_{\psi_\Phi}=R_\Phi-1.
\end{align}$$

The gaugino has $R=1$. It contributes to pure $R$ anomalies and mixed $R$-gravity anomalies, but it is neutral under the flavor groups $SU(F)_1$ and $SU(F)_2$.

For an anomaly of the form $U(1)_X[G]^2$,

$$\begin{align}
\mathcal A_{XG^2} =\sum_{\text{Weyl fermions}} q_X\,T(r_G)\,(\text{multiplicity from other indices}).
\end{align}$$

For $G=SU(F)$,

$$\begin{align}
T(\square)=T(\bar\square)=\frac12.
\end{align}$$

The anti-fundamental has the same quadratic index as the fundamental, so it does not add a minus sign in $U(1)[SU(F)]^2$ anomalies.

For a cubic non-Abelian anomaly $[SU(F)]^3$,

$$\begin{align}
\mathcal A_{G^3} =\sum_{\text{Weyl fermions}} A(r_G)\,(\text{multiplicity from other indices}),
\end{align}$$

with

$$\begin{align}
A(\square)=+1,\qquad A(\bar\square)=-1.
\end{align}$$

For Abelian cubic or mixed Abelian anomalies,

$$\begin{align}
\mathcal A_{XYZ} =\sum_{\text{Weyl fermions}} q_Xq_Yq_Z\,(\text{multiplicity}).
\end{align}$$

For $U(1)_X[\mathrm{gravity}]^2$,

$$\begin{align}
\mathcal A_{X\mathrm{grav}^2} =\sum_{\text{Weyl fermions}} q_X\,(\text{multiplicity}).
\end{align}$$

### $U(1)_R[SU(F)_1]^2$

Electric:

$$\begin{align}
\mathcal A^{(I)}_{R[SU(F)_1]^2} =N\left(-\frac{N}{F}\right)\frac12 =-\frac{N^2}{2F}.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{R[SU(F)_1]^2} &=(F-N)\left(-\frac{F-N}{F}\right)\frac12 +F\left(\frac{F-2N}{F}\right)\frac12\\
&=-\frac{N^2}{2F}.
\end{align}$$

### $U(1)_R^3$

Electric:

$$\begin{align}
\mathcal A^{(I)}_{R^3} =(N^2-1)+2NF\left(-\frac{N}{F}\right)^3 =N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{R^3} &=((F-N)^2-1) +2(F-N)F\left(-\frac{F-N}{F}\right)^3 +F^2\left(\frac{F-2N}{F}\right)^3\\
&=N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

Thus the two anomaly coefficients match.

### Extra matching examples

For $[SU(F)_1]^3$, use $A(\square)=+1$ and $A(\bar\square)=-1$. Electric:

$$\begin{align}
\mathcal A^{(I)}_{[SU(F)_1]^3}=N.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{[SU(F)_1]^3}=-(F-N)+F=N.
\end{align}$$

The first magnetic term is from $q$, and the second is from the $F$ copies of the meson $M$ coming from the $SU(F)_2$ index.

For $U(1)_B[SU(F)_1]^2$, use the quadratic index, so $\square$ and $\bar\square$ have the same sign. Electric:

$$\begin{align}
\mathcal A^{(I)}_{B[SU(F)_1]^2}=N(1)\frac12=\frac{N}{2}.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{B[SU(F)_1]^2} =(F-N)\left(\frac{N}{F-N}\right)\frac12 =\frac{N}{2}.
\end{align}$$

The meson has baryon number zero, so it does not contribute.

For $U(1)_RU(1)_B^2$, square the baryon charge but use the fermion $R$-charge. Electric:

$$\begin{align}
\mathcal A^{(I)}_{RB^2} =2NF\left(-\frac{N}{F}\right)(1)^2 =-2N^2.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{RB^2} =2(F-N)F\left(-\frac{F-N}{F}\right) \left(\frac{N}{F-N}\right)^2 =-2N^2.
\end{align}$$

Again $M$ does not contribute because $B(M)=0$.

For $U(1)_R[\mathrm{gravity}]^2$, sum the $R$-charges of all Weyl fermions, including gauginos. Electric:

$$\begin{align}
\mathcal A^{(I)}_{R\mathrm{grav}^2} =(N^2-1)+2NF\left(-\frac{N}{F}\right) =-N^2-1.
\end{align}$$

Magnetic:

$$\begin{align}
\mathcal A^{(II)}_{R\mathrm{grav}^2} &=((F-N)^2-1) +2(F-N)F\left(-\frac{F-N}{F}\right) +F^2\left(\frac{F-2N}{F}\right)\\
&=-N^2-1.
\end{align}$$

The usual phase summary for electric $SU(N_c)$ SQCD is

$$
\begin{array}{c|c}
\text{range of }N_f&\text{IR behavior}\\
\hline
\frac32N_c<N_f<3N_c&\text{non-Abelian Coulomb phase}\\
N_c+1<N_f\leq\frac32N_c&\text{free magnetic phase}\\
N_f=N_c+1&\text{confining description by mesons and baryons}\\
N_f\leq N_c&\text{quantum-deformed moduli space or ADS superpotential}
\end{array}
$$

## 10. Problem templates

### Spinor identity proof

1. State $\sigma^\mu=(\mathbb I,\sigma^i)$ and $\bar\sigma^\mu=(\mathbb I,-\sigma^i)$.
2. Split into $(0,0)$, $(0,i)$, $(i,0)$, and $(i,j)$.
3. Use $\{\sigma^i,\sigma^j\}=2\delta^{ij}\mathbb I$ for the spatial case.
4. Translate $\delta^{ij}$ into $\eta^{ij}=-\delta^{ij}$.

### Component expansion from $W$

1. Compute $W_i$ and $W_{ij}$.
2. Write $F_iW_i-\frac12W_{ij}\psi_i\psi_j+\mathrm{h.c.}$.
3. Add $F_i^*F_i$ from the Kahler term.
4. Use $F_i^*=-W_i$.
5. The on-shell scalar potential is $V_F=\sum_i|W_i|^2$ and the Lagrangian contains $-V_F$.

### SUSY breaking

1. Write all $F_i=0$ and $D^a=0$ equations.
2. Check algebraic consistency, especially rank constraints.
3. If no solution exists, state $V_{\min}>0$ and SUSY is spontaneously broken.
4. If a solution exists, SUSY is unbroken at that vacuum.

### Holomorphy

1. Promote couplings to chiral spurions.
2. Assign charges so the microscopic $W$ is invariant and has $R(W)=2$.
3. Write the most general holomorphic monomial.
4. Solve charge and dimension constraints.
5. Use weak-coupling or tree-level matching to fix the overall coefficient.

### Anomaly matching

1. List only Weyl fermions.
2. Replace each superfield charge by $R_\psi=R_\Phi-1$.
3. Include gauginos for pure $R$ anomalies.
4. Multiply by color/flavor multiplicities.
5. Use $T(\square)=T(\bar\square)=\frac12$; the anti-fundamental does not add a minus sign to this quadratic index.

## 11. Common pitfalls

1. Do not mix the homework on-shell WZ normalization with the lecture off-shell $\sqrt2$ normalization.
2. Off-shell closure uses $F$; on-shell closure on $\psi$ uses $\bar\sigma^\mu\partial_\mu\psi=0$.
3. The $R$-charge in anomaly formulas is the fermion charge $R_\Phi-1$, not the scalar or superfield charge.
4. $Q$ and $\widetilde Q$ in SQCD are independent chiral superfields, not conjugates.
5. The superpotential is perturbatively not renormalized, but the Kahler potential can be renormalized.
6. A nonzero Witten index forbids SUSY breaking; a zero Witten index does not prove SUSY breaking.
7. In the SQCD loop computation, the fermion loop sign and the seagull symmetry factor are the two easiest places to lose the cancellation.
