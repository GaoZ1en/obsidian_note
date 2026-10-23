# Scalar energies with Brown–Henneaux gravitons retained

Date: 2026-09-27. Reference snapshot: `d3a8abfb145810458aa208222c92c9f99ead237b`.

## 0. Result and scope

This calculation keeps the physical boundary-graviton oscillators in the free Hilbert space and uses second-order finite-time old-fashioned perturbation theory. Only proper gauge directions and nondynamical constraints are eliminated. The background is global AdS3: $h=0$ specifies the background, not the operator identity $\hat h=0$ and not a restriction of the intermediate-state sum.

In a regular, Ward-preserving perturbative quantization of the stated theory, the leading resonant Hamiltonian has no order-$\kappa$ part. Its order-$\kappa^2$ part is independent of the free boundary-graviton oscillators and conserves scalar particle number. Thus leading one- and two-scalar energies and their Virasoro descendants can be determined without an additional scalar-primary-branch isolation assumption. Physical boundary gravitons have not been quotiented out.

The one-particle mass is fixed by the physical gap, as in the existing notes. Zero correction to that prescribed gap is a renormalization condition, **not** a zero unrenormalized self-energy. Section 7 evaluates a nonzero, cutoff-dependent bulk-cubic self-energy contribution. It is not the complete bare-to-physical mass map: seagull, constraint-ordering, canonical/boundary and counterterm pieces must not be inferred from it alone.

The Ward-preserving quantum presentation is explicit input. Renormalized physical charges must satisfy the time-translation identities used below to the required order. This note proves the spectral theorem from those identities; it does not independently construct the composite-operator renormalization of all Brown–Henneaux charges. The connected tree four-leg part also follows from the classical CPS charge algebra, as explained in section 3.2. Finite oscillator cutoffs used for checks are not asserted to preserve the full Virasoro algebra.

The new step relative to [OFPT two particle energy shifts](OFPT%20two%20particle%20energy%20shifts.md) is the operator argument on the full perturbative physical Fock space and its matching to diagnostic canonical matrix elements. The all-index coefficient evaluation uses the existing internal Einstein–Casimir identity, not a Lorentzian-inversion high-spin tail. A standalone implementation recomputes radial matrices before comparing their reconstructed spectrum with the closed expressions.

All statements are at fixed finite excitation levels as $G\to0$. They do not cover black-hole sectors, alternative scalar quantization, other boundary conditions, an independent order-$G$ four-scalar coupling or order-$G^2$ energies.

## 1. Action, background and physical modes

Keep the action and boundary prescription of the original calculation:

$$
S_R=\frac1{\kappa^2}\int_{M_R}\sqrt{-g}(R+2)
 +\frac2{\kappa^2}\int_{\Gamma_R}\sqrt{-\gamma}(K-1)
 -\frac12\int_{M_R}\sqrt{-g}\big((\nabla\phi)^2+m^2\phi^2\big),
\qquad \kappa^2=16\pi G.
$$

The center is smooth, the metric obeys Brown–Henneaux falloffs, and the boundary cylinder and time are fixed. The scalar is real with source-free standard falloff:

$$
\Delta>1,\qquad \mu=m^2=\Delta(\Delta-2),\qquad
 ds_0^2=-fdt^2+f^{-1}dr^2+r^2d\varphi^2,\quad f=1+r^2.
$$

The original KG/CPS-normalized scalar modes are

$$
u_{nj}=\sqrt{\frac{n!\Gamma(n+\Delta+|j|)}
 {2\pi\Gamma(n+\Delta)\Gamma(n+|j|+1)}}
 e^{-i(\Delta+2n+|j|)t+ij\varphi}
 r^{|j|}f^{-(\Delta+|j|)/2}
 P_n^{(\Delta-1,|j|)}\!\left(\frac{r^2-1}{f}\right).
$$

Write $b_I$ for scalar oscillators. Each graviton chirality has one physical oscillator $a_m$ at every integer $m\ge2$:

$$
\mathcal H_0=\mathcal F_\phi\otimes\mathcal F_{g,L}\otimes\mathcal F_{g,R},
\qquad
H_0=\sum_I\omega_I b_I^\dagger b_I+
\sum_{m\ge2}m(a_{m,L}^\dagger a_{m,L}+a_{m,R}^\dagger a_{m,R}).
\tag{1.1}
$$

This is a perturbative Fock presentation near the vacuum, not nonperturbative gravitational factorization. Lapse, shift and proper-gauge modes are not oscillator intermediate states.

### 1.1 Explicit normalized graviton tower

A left-moving representative is $h_m=\mathcal L_{\zeta_m}g_0$, with

$$
\begin{split}
\zeta_m=\frac{e^{-im(t-\varphi)}}{\sqrt{8\pi m(m^2-1)}}\bigg[
&i\frac{r^m\{r^2-(m-2)(m+1)/2\}}{f^{(m+2)/2}}\partial_t\\
&-\frac m2\frac{r^{m-1}(2r^2+m+1)}{f^{m/2}}\partial_r
-i\frac{r^{m-2}\{r^2+m(m+1)/2\}}{f^{m/2}}\partial_\varphi\bigg].
\end{split}\tag{1.2}
$$

The coefficient is for $g=g_0+\kappa h+\cdots$, not an unrescaled metric perturbation. Reflection gives the right chirality. The vectors are smooth at the center in Cartesian coordinates; their nonzero asymptotic data are not proper gauge. Covariance proves that their Lie derivatives solve the homogeneous linearized Einstein equation.

At unit phase the $m=2$ seed is

$$
h_2=\frac{\sqrt3}{2\sqrt\pi}
\begin{pmatrix}
r^2/f&ir/f^2&-r^2/f\\
ir/f^2&-1/f^3&-ir/f^2\\
-r^2/f&-ir/f^2&r^2/f
\end{pmatrix}.
$$

Its TT Einstein CPS pairing, including the radial corner, gives

$$
\int_0^\infty 2\pi\,dr\,\frac{6ir(r^2-1)}{\pi f^5}=-i,
\qquad \Omega_{\partial\Sigma}(r)=-\frac{6ir^2}{f^4}\longrightarrow0.
$$

For the normalized raising Killing field

$$
R_+=\frac12e^{-it+i\varphi}
\left(\frac{ir}{\sqrt f}\partial_t-\sqrt f\partial_r
-\frac{i\sqrt f}{r}\partial_\varphi\right),
\qquad
[R_+,\zeta_m]=\sqrt{(m-1)(m+2)}\,\zeta_{m+1}.
\tag{1.3}
$$

CPS invariance and the weight-two lowest-weight ladder therefore normalize the whole tower. The script checks the seed integral, corner limit, trace and four successive vector-ladder identities.

## 2. Retained-gravity OFPT

After treating proper constraints but retaining (1.1), write

$$
H=H_0+\kappa V_1+\kappa^2V_2+\cdots.\tag{2.1}
$$

$V_1$ contains the $h\phi^2$ and pure-gravity cubic vertices. $V_2$ includes quartic vertices, instantaneous interactions from constraints, canonical/boundary completion and counterterms. Keeping $h\phi^2$ while setting $V_2=0$ is not a calculation of this theory.

Let $P_E$ be the complete free eigenspace and $Q_E=1-P_E$. Once the resonant cubic part is shown to vanish, the leading effective matrix is

$$
W_E=P_EV_2P_E+
 P_EV_1Q_E\frac1{E-Q_EH_0Q_E}Q_EV_1P_E.
\tag{2.2}
$$

The energy shift is $\kappa^2$ times an eigenvalue of $W_E$. Every exact resonance is in $P_E$; none is discarded or assigned a principal value. The symmetry proof is performed before restriction to an angular-momentum block, since the charges change that quantum number.

Acting on two scalars and the graviton vacuum, $h\phi^2$ has intermediate sectors $1g$, $2\phi+1g$ and $4\phi+1g$. Acting on one scalar gives $1\phi+1g$ and $3\phi+1g$. Vacuum subtraction is required in the connected one-body part. These are not all separately observable energy corrections.

The energy denominator follows from

$$
\int_0^Tdt\int_0^t ds\,e^{i(E-E_a)(t-s)}
=\frac{iT}{E-E_a}+\frac{1-e^{i(E-E_a)T}}{(E-E_a)^2}.
$$

At resonance its limit is $T^2/2$, not zero.

### 2.1 Homological inverse and the exact sign

Define Bohr components

$$
\mathcal R_\omega O=\sum_{E'-E=\omega}P_{E'}OP_E,
\qquad [H_0,\mathcal R_\omega O]=\omega\mathcal R_\omega O.
\tag{2.3}
$$

No common period is assumed when $\Delta$ is noninteger. All operations are formal coefficientwise operations on the finite-excitation core with the same renormalization prescription as the Hamiltonian.

If $\mathcal R_0V_1=0$, let $\mathcal A$ be anti-Hermitian with zero resonant part and

$$
\mathcal A_{ab}=\frac{(V_1)_{ab}}{E_b-E_a}\quad(E_a\ne E_b),
\qquad V_1=[\mathcal A,H_0].
$$

Then

$$
e^{-\kappa\mathcal A}He^{\kappa\mathcal A}
=H_0+\kappa^2\left(V_2-\frac12[\mathcal A,V_1]\right)+\cdots.
\tag{2.4}
$$

Its resonant projection is exactly (2.2). A further nonresonant transformation gives $H_0+\kappa^2W+\cdots$, with $[H_0,W]=0$. This is not a definition of $V_2$ from a preferred answer. The same transformations must be applied to all charges.

## 3. Ward normal form on the full physical Hilbert space

The vacuum-subtracted Brown–Henneaux time-translation identities and their leading terms are

$$
[H,L_m]=-mL_m,\qquad[H,\bar L_m]=-m\bar L_m,
\tag{3.1}
$$

$$
L_m=\frac{\nu_m}{\kappa}a_{m,L}+L_m^{[0]}+\kappa L_m^{[1]}+\cdots,
\quad L_{-m}=\frac{\nu_m}{\kappa}a_{m,L}^\dagger+\cdots,
\quad \nu_m=\sqrt{2\pi m(m^2-1)},\quad m\ge2.
\tag{3.2}
$$

The right copy is identical. The normalization follows from $c=24\pi/\kappa^2+O(1)$; an order-one central-charge correction does not alter this leading term. The global generators start at order one, not $\kappa^{-1}$, after vacuum subtraction.

**Theorem 3.1.** Suppose (2.1), (3.1) and (3.2) are regular formal expansions on the physical Fock core. Suppose $V_1$ has the cubic field content of minimal Einstein gravity with a real scalar and $V_2$ has degree at most four, including allowed lower-degree renormalization terms. Then

$$
\boxed{\mathcal R_0V_1=0,\qquad W=\mathbf1_g\otimes W_\phi,
\qquad[W_\phi,L_{0,\pm1}^{\phi,(0)}]
=[W_\phi,\bar L_{0,\pm1}^{\phi,(0)}]=0.}
\tag{3.3}
$$

*Proof.* Denote the leading oscillator term of $L_m$ by $A_m/\kappa$. At order one, (3.1) reads

$$
[V_1,A_m]+(\operatorname{ad}_{H_0}+m)L_m^{[0]}=0.
$$

Project to Bohr frequency $-m$. The second term vanishes; the first is $[\mathcal R_0V_1,A_m]$. Both signs and chiralities imply that $\mathcal R_0V_1$ commutes with every graviton creation and annihilation operator. Its polynomial commutant on their irreducible Fock representation contains no graviton oscillators. But every minimal cubic vertex contains a graviton; scalar-only cubic and linear terms are excluded by scalar parity. Vacuum constants are subtracted. Hence $\mathcal R_0V_1=0$.

Transform the charges along with the Hamiltonian as in section 2.1. They still have leading term $A_m/\kappa$. The order-$\kappa$ Ward identity becomes

$$
[W,A_m]+(\operatorname{ad}_{H_0}+m)\widetilde L_m^{[1]}=0.
$$

Since $W$ has frequency zero, its commutator already has frequency $-m$. Projection gives $[W,A_m]=0$ for both signs and chiralities, hence $W=\mathbf1_g\otimes W_\phi$.

For the global generators, project the order-$\kappa^2$ identity to their free Bohr frequency. Corrected-generator terms vanish under the projection, leaving $[W,L_{0,\pm1}^{(0)}]=0$ and its barred analogue. The graviton part already commutes with $W$, yielding the scalar intertwiner. QED.

Thus exact degeneracies with boundary-graviton states do not produce an $O(\sqrt G)$ splitting under these hypotheses. They also do not add an order-$G$ graviton-dependent eigenvalue or mixing in the normal form. Bare eigenvectors, metric operators and charges remain dressed and need not be graviton independent.

### 3.2 Classical tree content and quantum input

For the connected four-scalar tree coefficient the proof also works classically, replacing commutators by the CPS Poisson bracket and using the action's classical Brown–Henneaux charge identities. The degree-four part of a commutator of cubic operators is the single-contraction quantization of their Poisson bracket. Extra contractions and ordering changes have degree at most two. Consequently an unresolved one-body subtraction cannot change this connected order-$G$ four-leg result.

The quantum Ward input is still needed for the entire renormalized operator, its one-body part and physical descendants. This does not prove that an arbitrary hard cutoff preserves the identities. It also does not allow a quartic counterterm to be chosen to force the spectrum: an independent order-$G$ scalar contact coupling is excluded.

### 3.3 Particle-number collisions

After normal ordering $W_\phi$ has degree zero, two or four. The one-scalar representation is $D_{\Delta/2}\otimes D_{\Delta/2}$ and is irreducible, so its quadratic number-preserving term is $\sigma N_\phi$, apart from the vacuum constant.

A number-changing quartic term $b^{\dagger3}b$ would separately intertwine that representation with its symmetric cube. The image of the one-particle lowest vector would have chiral weights $(\Delta/2,\Delta/2)$, while every three-particle weight has each component at least $3\Delta/2$. The image is zero, and raising generates the whole one-particle representation. Thus this coefficient vanishes as an operator, also in the presence of spectators. Zero-to-two and zero-to-four terms cannot be resonant because energies are positive. Therefore

$$
\boxed{[W,N_\phi]=0\quad\text{at order }G.}\tag{3.4}
$$

Integer-$\Delta$ two-to-four collisions have not been excluded. This result does not extend automatically to higher-order operators of higher field degree. Fifteen actual circular one-to-three constraint integrals provide independent finite tests of this conclusion.

## 4. Surviving two-body dynamics

The Ward theorem does not determine scalar interaction coefficients. They must still be calculated from the bulk Hamiltonian.

### 4.1 Evaluation of the physical-graviton tree sums

Take four scalar external legs with individual angular momentum zero. At each $h\phi^2$ vertex the physical graviton would need angular momentum zero. Every Brown–Henneaux oscillator instead has $J=\pm m$, $m\ge2$. Thus every connected one-physical-graviton exchange tree vanishes, including all OFPT time orderings. There is no internal scalar line in a connected four-leg tree with two such vertices to absorb the missing angular momentum.

A one-body self-energy with a spectator is different: its internal scalar can have nonzero angular momentum and it need not vanish. Those contributions belong to $\sigma N_\phi$. A single $h^2\phi^2$ seagull has only two scalar legs and supplies no additional connected four-leg tree at this order.

The full retained-gravity connected circular compression is therefore exactly the instantaneous constraint interaction. This is evaluation of the physical-graviton contributions in these matrix elements, not omission of their Hilbert space.

### 4.2 Boundary Hamiltonian and fixed-momentum constraints

For circular fields use

$$
ds^2=-Fe^{-2d}dt^2+F^{-1}dr^2+r^2d\varphi^2,
\quad F=f-\kappa^2M,\quad \Pi=e^dF^{-1}\dot\phi,
\quad X=\phi'^2+\Pi^2.
$$

The exact equations and boundary conditions are

$$
M'=\frac r2(FX+\mu\phi^2),\quad d'=-\frac{\kappa^2r}{2}X,
\quad M(0)=0,\quad d(\infty)=0.
$$

At fixed $\phi$ and $p=2\pi r\Pi$,

$$
M=M_0+\kappa^2M_2+\cdots,\quad
M_0(r)=\frac12\int_0^r ds\,s(fX+\mu\phi^2),\quad
M_2(r)=-\frac12\int_0^r ds\,sXM_0.
$$

The vacuum-subtracted GHY/counterterm boundary energy is $H=2\pi M(\infty)$, hence

$$
H=H_0+\kappa^2H_4+\cdots,\qquad
H_4=-\pi\int_0^\infty dr\,rX(r)M_0(r).\tag{4.1}
$$

The circular symplectic potential is $\int p\,\delta\phi$. Holding scalar velocity fixed gives a different and incorrect canonical expansion. This restriction computes matrix elements; circular pairs are not asserted to be a closed quantum block.

### 4.3 Explicit finite radial formula

Put $x=1/f$ and

$$
P_i=P_i^{(\Delta-1,0)}(1-2x),\quad D_i=\frac\Delta2P_i+xP_i',\quad\omega_i=\Delta+2i.
$$

For signed legs, with $\epsilon=+1$ for annihilation and $-1$ for creation,

$$
A_{ij}^{\epsilon\eta}=4(1-x)D_iD_j-\epsilon\eta\omega_i\omega_jxP_iP_j,
\qquad B_{ij}^{\epsilon\eta}=A_{ij}^{\epsilon\eta}+\mu P_iP_j.
$$

If $A=\sum_pA_px^p$ and $B=\sum_qB_qx^q$, the center-anchored nested integral is

$$
\mathcal I(A,B)=\sum_{p,q}\frac{A_pB_q}{\Delta-1+q}
\left(\frac1{\Delta+p}-\frac1{2\Delta-1+p+q}\right).\tag{4.2}
$$

All denominators are positive for $\Delta>1$. Label the four external legs separately as $(r,-),(N-r,-),(s,+),(N-s,+)$ even when modes coincide. Sum over all six choices of the two labels assigned to $A$, assigning the complementary pair to $B$. For normalized circular pairs,

$$
\widehat R_{rs}^{(N)}:=\frac{\sqrt{(1+\delta_{2r,N})(1+\delta_{2s,N})}}G R_{rs}^{(N)}
=-2\sum_{\text{six choices}}\mathcal I(A,B).\tag{4.3}
$$

Both equal-sign and opposite-sign contractions and repeated-leg Fock factors are retained. This connected calculation has no graviton cutoff because the physical-graviton contribution has been proved zero, not approximated by a truncated sum. At $N=0$,

$$
\gamma_{00}=\frac{2G\Delta^2(7+2\Delta-8\Delta^2)}{(2\Delta-1)(2\Delta+1)}.\tag{4.4}
$$

## 5. Complete leading two-scalar spectrum

A scalar's chiral levels are $p=n+\max(j,0)$, $q=n+\max(-j,0)$. The symmetric two-scalar product decomposes with multiplicity one into global primaries

$$
(h_P,\bar h_P)=(\Delta+k,\Delta+l),\quad k,l\ge0,\quad k+l\text{ even},
\quad n=\min(k,l),\quad\ell=k-l.
$$

Theorem 3.1, not scalar multiplicity one alone, justifies the scalar intertwiner in the full theory. Construct the normalized chiral change of basis $U_{pk}^{(N)}$ by lowering and raising. In an unnormalized product basis the primary coefficients satisfy

$$
c_0=1,\qquad c_{p+1}=-c_p\frac{(k-p)(\Delta+k-p-1)}{(p+1)(\Delta+p)}.
$$

Raise with the binomial expansion of the total generator and normalize using $\|L_{-1}^p|\Delta/2\rangle\|^2=p!(\Delta)_p$. This rational implementation loads no old Hahn code. The circular overlaps and matrix are

$$
C_{r;kl}=\sqrt{\frac2{1+\delta_{2r,N}}}\,U_{rk}^{(N)}U_{rl}^{(N)},
\qquad
R_{rs}^{(N)}=\sum_{k,l\le N,\ k+l\ {\rm even}}C_{r;kl}C_{s;kl}\gamma_{\min(k,l),|k-l|}.
\tag{5.1}
$$

Subtract all $k,l<N$. Set $D_N=\operatorname{diag}_r(U_{rN})$ and $(O_N)_{rk}=\sqrt{2/(1+\delta_{2r,N})}U_{rk}$ for $k=N,N-2,\ldots$. Exchange parity gives $O_N^TO_N=1$ and each $U_{rN}\ne0$ for $\Delta>1$. Thus

$$
O_N^TD_N^{-1}R_{\rm new}^{(N)}D_N^{-1}O_N
=\operatorname{diag}_{k=N,N-2,\ldots}[(2-\delta_{kN})\gamma_{k,N-k}].\tag{5.2}
$$

All off-diagonals must vanish. This is not diagonalization of the circular compression. Equations (4.2), (4.3) and (5.2) give a finite canonical calculation at any desired $n,\ell$, using $N=n+|\ell|$.

### 5.1 Internal all-index evaluation

The bulk-derived evaluation in [OFPT direct all-index spectrum](OFPT%20direct%20all-index%20spectrum.md) applies after the full-space matching above. It uses the conserved-source Einstein–Casimir identity and reciprocal vanishing-boundary-flux pairing, not a guessed high-spin spectrum.

Temporarily distinguish the scalars and call their crossed coefficient $x_{kl}$. A ground particle and an unexcited rotating particle of angular momentum $J$ give

$$
\mathscr D_J=-4\Delta^2+\frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J}.\tag{5.3}
$$

The direct beta integrals are

$$
-8\pi\Delta c_J^2[\Delta^2B(\Delta,J+1)+J^2B(\Delta+1,J)-\Delta B(2\Delta-1,J+1)],
\quad c_J^2=\frac{(\Delta)_J}{2\pi J!},
$$

with the middle term absent at $J=0$. The stationary diagonal sources exchange zero angular momentum, and the ground source has zero angular-momentum constraint. The free triangular decomposition $\mathscr D_J=\sum_{k\le J}w_{Jk}x_{k0}$ has $\sum w=1$, $w_{J0}=(\Delta)_J/(2\Delta)_J$ and $w_{JJ}>0$. Induction gives

$$
x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},\qquad x_{k0}=-4\Delta^2\quad(k>0).
$$

The internal crossed recurrence is

$$
(\mathsf L_k+\mathsf L_l-2)x_{kl}=S_{kl},\quad
(\mathsf Lf)_n=a_nf_{n+1}-(a_n+c_n)f_n+c_nf_{n-1},
$$

$$
a_n=\frac{(n+1)(\Delta+n)(2\Delta+n-1)}{2(2\Delta+2n-1)},\qquad
c_n=\frac{n(\Delta+n-1)(2\Delta+n-2)}{2(2\Delta+2n-1)}.\tag{5.4}
$$

Set $h_*=\Delta+n$ and $C=h_*(h_*-1)$. Only the diagonal and adjacent source bands are nonzero:

$$
S_{nn}=\frac{4(C-\mu)(2C+\mu)}{2h_*-1},\qquad
S_{n+1,n}=\frac{4h_*(n+1)(2\Delta+n-1)(2h_*^2-\mu)}{(2h_*-1)(2h_*+1)}.
$$

Since $a_n>0$, $c_0=0$, the initial row uniquely propagates. The source-free off-diagonal equations give

$$
u_n=4\mu-8(\Delta+n)(\Delta+n-1)=-4[\Delta^2+2n(2\Delta+n-1)],
\quad x_{kl}=u_{\min(k,l)}\ (k\ne l),\quad x_{nn}=u_n\frac{2h_*-2}{2h_*-1}.
$$

Indeed $\mathsf L1=0$ and $\mathsf LC_n=2C_n-\mu$ solve the forward recurrence uniquely. Diagonal and adjacent-band identities are checked symbolically at arbitrary $n$. The rank-two annihilation source contributes only at spin zero and two. Including its evaluated coefficients gives

$$
\boxed{\begin{aligned}
\gamma_{n0}&=G u_n\frac{2h_*-2}{2h_*-1}
-\frac{2G(C+\mu)^2}{(2h_*-3)(2h_*-1)(2h_*+1)},\\
\gamma_{n,\pm2}&=G u_n+
\frac{G(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}{(2h_*-1)(2h_*+1)(2h_*+3)},\\
\gamma_{n\ell}&=G u_n,\qquad |\ell|\ge4,\quad\ell\text{ even}.
\end{aligned}}\tag{5.5}
$$

At $n=0$ use (4.4). Its apparent pole at $\Delta=3/2$ is removable, giving $\gamma_{00}/G=-9/2$. Canonical finite integrals are regular for all $\Delta>1$ and need no exceptional de Donder representative.

The tensor identity and annihilation-source evaluation are explicitly retained analytic inputs from the cited derivations. New coefficient identities and canonical computations are checked here; a fresh xAct derivation of the tensor identity is not claimed.

## 6. One-scalar gaps and full Virasoro descendants

Before fixing mass, the quadratic resonant term is $\kappa^2\sigma N_\phi$. The global intertwiner forces the same $\sigma$ on every one-scalar mode. With a bare parameter $\Delta_0$ and an effective mass counterterm, schematically

$$
\delta\Delta=\Sigma_{00}^{\rm loop+seagull+constraint+boundary}
+\frac{\delta m_{\rm eff}^2}{2(\Delta_0-1)}.\tag{6.1}
$$

The separation is gauge- and scheme-dependent; on fixed AdS curvature-proportional quadratic counterterms may be included in the effective mass. Retaining the original condition $E^{(1)}_{00}=\Delta$ gives

$$
\boxed{\delta E^{(1)}_{nj}\big|_{\Delta\ {\rm fixed}}=0,\qquad
E^{(1)}_{nj}=\Delta+2n+|j|\quad\text{through this order}.}\tag{6.2}
$$

This determines the prescribed physical gaps; it does not say that the pieces of (6.1) vanish without a counterterm.

For two-scalar primaries and their full Virasoro descendants,

$$
E_{n\ell;\lambda_L,\lambda_R}
=2\Delta+2n+|\ell|+|\lambda_L|+|\lambda_R|+\gamma_{n\ell}
+\text{higher perturbative orders}.\tag{6.3}
$$

Each partition $\lambda$ specifies a Virasoro descendant; level-one parts include global descendants and parts $\ge2$ include retained gravitons. This is an eigenvalue formula: a bare scalar Fock vector need not already be a dressed Virasoro primary.

### 6.1 Explicit collisions at $\Delta=2$

At $E_0=4,J=0$ and even scalar parity the complete free block contains the two-ground-scalar state and the left/right $m=2$ graviton pair. Its leading normal-form matrix is

$$
\delta H=G\begin{pmatrix}-56/5&0\\0&0\end{pmatrix}\quad\text{through order }G.\tag{6.4}
$$

There is no order-$\sqrt G$ entry. The graviton-sector zero follows from the vacuum-descendant Ward identity, not deletion of the state.

At $E_0=8,J=0$ the even block has 15 states. The order-$G$ coefficients are $0$ with multiplicity 4, $\gamma_{00}/G$ with multiplicity 4, $\gamma_{0,2}/G$ with multiplicity 4, $\gamma_{10}/G$ and $\gamma_{20}/G$ each once, and $6\gamma_{00}/G$ once for the four-ground-scalar state. These values are

$$
\gamma_{00}/G=-56/5,\quad \gamma_{0,2}/G=-552/35,\quad
\gamma_{10}/G=-1368/35,\quad\gamma_{20}/G=-416/5.
$$

The last state is a collision check, not a general four-body calculation. No two-to-four mixing occurs at this order by (3.4). These are character counts and theorem-implied eigenvalues, not a separately integrated raw 15-by-15 original-basis matrix.

## 7. Explicit nonzero graviton self-energy component

Use the normalized TT representatives (1.2) and the normal-ordered bulk cubic at free canonical variables:

$$
V_1^{\rm bulk}=-\frac12\int_\Sigma r\,dr\,d\varphi\,h_{\mu\nu}:T^{\mu\nu}:.
\tag{7.1}
$$

Canonical endpoint changes can redistribute this contribution against $V_2$. It is not a complete bare self-energy without that completion. For conserved polarized free stress and $h=\mathcal L_\zeta g_0$,

$$
\tfrac12h_{\mu\nu}T^{\mu\nu}=\nabla_\mu(T^{\mu\nu}\zeta_\nu).
$$

Radial flux vanishes for $\Delta>1$ and at the regular center. Thus the interaction-picture cubic is minus the time derivative of $\mathcal B=\int r T^{t\nu}\zeta_\nu$. Vertices have an explicit free energy difference: resonant couplings vanish, but off-resonant vertices do not.

For an initial $u_{00}$, emission of a left graviton $m$ leaves a scalar with $j=-m$. Define

$$
A_{nm}=\frac{(\Delta+n)_m}{(n+1)_m},\qquad N_m=\frac1{\sqrt{8\pi m(m^2-1)}}.
$$

The endpoint matrix element is $iN_m\sqrt{A_{nm}}I_{nm}$, where direct integration yields

$$
I_{0m}=-\Delta^2(m^2-1)B(\Delta,m+1),\quad
I_{1m}=\frac{\Delta^2m(m^2-1)}{\Delta+m+1}B(\Delta,m+1),\quad
I_{nm}=0\ (n\ge2).\tag{7.2}
$$

The cubic transition coefficient, with $\kappa$ stripped, is

$$
v_{nm}=2(m+n)N_m\sqrt{A_{nm}}I_{nm}.\tag{7.3}
$$

After integration by parts the scalar integral is

$$
-\Delta(m-1)\int_0^1dx\,x^{\Delta-1}(1-x)^m
[\Delta+n+m(\Delta+m+n+1)x]P_n^{(\Delta-1,m)}(1-2x).
$$

Jacobi orthogonality leaves precisely $n=0,1$. For a pair-creation coefficient containing a ground scalar, the integral instead is

$$
-\Delta(m+1)n\int_0^1dx\,x^{\Delta-1}(1-x)^mP_n^{(\Delta-1,m)}(1-2x)=0
$$

for every $n$, including zero. After vacuum-spectator subtraction this representative's bulk-cubic ground self-energy therefore has no extra three-scalar-plus-graviton term. This is not a universal claim about every canonical presentation.

Including both chiralities gives

$$
\boxed{\frac{\Sigma_{00}^{\rm bulk\ cubic}}G
=-8\Delta^3\sum_{m=2}^{\infty}\frac{m^2-1}{(\Delta+m)A_{0m}}
\left[\frac\Delta{\Delta+m}+\frac m{(\Delta+m+1)^2}\right].}\tag{7.4}
$$

It converges absolutely for $\Delta>2$. At $\Delta=2$ a sharp mode cutoff $M$ gives exactly

$$
\boxed{\frac{\Sigma_{00}^{\rm bulk\ cubic}(M)}G
=-192H_{M+2}+1152H_{M+2}^{(2)}
+\frac{320}{M+3}+\frac{768}{(M+3)^2}-1344.}\tag{7.5}
$$

For $M=2$ this is $-232/25$; the logarithmic coefficient is $-192$. Independent direct radial $h:T$ contractions at $\Delta=2$ give $v_{0,2}=-1/\sqrt\pi$, $v_{1,2}=\sqrt6/(5\sqrt\pi)$ and $v_{0,3}=-4\sqrt3/(5\sqrt\pi)$, and zero for two tested pair-creation vertices.

Equations (7.4)–(7.5) are not regulator-independent anomalous dimensions. They exclude the $V_2$ completion and mass counterterm. Neither their finite part nor their logarithmic coefficient is promoted to a complete gauge-invariant bare self-energy. The physical-gap condition is imposed on the complete combination, not just this sum.

## 8. Executed verification and remaining boundaries

Run from this directory:

```sh
python scripts/retained_gravity_ofpt_checks.py --radial-level 8 --symbolic-level 3 --out scripts/retained_gravity_ofpt_results.json
```

The saved fresh Python/SymPy run checks three rational masses $3/2,2,7/3$ through circular level 8, each with 25 primary coefficients, 55 unique matrix entries, 30 unused off-diagonals and 165 Gram checks. Generic mass through level 3 gives six primary coefficients, eight entries, two unused off-diagonals and 20 Gram checks.

Additional checks are the seed CPS integral/corner/trace and four ladders; 50 generic-mass endpoint integrals; two arbitrary-mode integration-by-parts identities; five direct tensor-contraction integrals; five exact cutoff sums; 15 number-changing circular resonant integrals; 39 beta/initial-row reconstructions; three arbitrary-index recurrence identities and endpoints; the removable mass pole; BCH/Feshbach and Dyson sign identities; and the stated descendant counts.

The homological matrix test is an algebraic three-state test, not an Einstein $V_2$ computation. Character counts and the 15-state example use the theorem, not a separately assembled raw unreduced matrix. No old Mathematica/xAct/Sage execution is relabeled as new. The analytic Ward proof, not finite samples, justifies all levels.

Still outside the result: a complete regulator-specific bare-to-renormalized mass relation; explicit composite-charge renormalization establishing the assumed quantum presentation; higher-order energies; and explicit dressed eigenvectors or metric-operator matrix elements. These are not repaired by quoting the old scalar spectrum.

See [the adversarial audit](retained%20gravity%20OFPT%20audit.md).

### References and source use

Brown and Henneaux, *Central charges in the canonical realization of asymptotic symmetries*, Commun. Math. Phys. 104 (1986) 207–226; Cotler and Jensen, arXiv:1808.03263, for perturbative boundary-graviton quantization; Evnin and Nivesvivat, arXiv:1512.00349, for related AdS isometry selection rules. The particle-number argument here is the explicit proof in section 3.3.

Repository inputs are `perturbation.md` for action/CPS conventions, `../Virasoro algebra.md` for the seed, and the two existing OFPT notes for canonical and internal Einstein–Casimir identities. New material is the full-space normal-form argument, arbitrary-mode physical-graviton endpoint integrals, cutoff sum, and standalone verification. No external high-spin spectrum, Wilson-line anomalous dimension or Lorentzian-inversion answer is used as spectral input.
