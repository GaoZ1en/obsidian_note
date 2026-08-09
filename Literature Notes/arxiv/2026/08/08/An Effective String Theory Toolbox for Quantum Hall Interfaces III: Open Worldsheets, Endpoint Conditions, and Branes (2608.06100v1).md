---
paper id: 2608.06100v1
title: "An Effective String Theory Toolbox for Quantum Hall Interfaces III: Open Worldsheets, Endpoint Conditions, and Branes"
authors:
  - Ken K. W. Ma
publication date: 2026-08-06T14:38
abstract: |-
  The paper formulates an open-worldsheet junction framework for a freely moving quantum Hall interface ending on a physical edge or topological boundary. It organizes the embedding, material charge, anomaly flow, condensable topological sectors, and outgoing channels into endpoint data, and shows why a lone chiral Majorana cannot terminate on a finite-dimensional defect.
comments: "11 pages, 1 figure"
url: https://arxiv.org/abs/2608.06100v1
summary: "A useful endpoint toolbox linking open-curve mechanics, capped relative area, symplectic and anomaly flux, topological boundary sectors, and chiral-channel continuation."
tags: []
---

Back to [[2026_08_08_overview]].

The paper is best read as a compatibility framework for an open quantum Hall interface, not as a universal junction dynamics. Four layers have to fit together:

$$
\text{open-curve mechanics}
+\text{relative-area charge constraint}
+\text{endpoint flux/anomaly continuation}
+\text{topological boundary data}.
$$

Its reusable lesson for boundary and CPS work is that an endpoint is not characterized by a single reflecting boundary condition. One must specify which endpoint variations are allowed, which symplectic flux is canceled, which charge or anomaly-carrying channels continue, and which topological sectors can end there.

## The embedded interval and its support curves

The mobile interface is an embedded interval

$$
X(\tau,\sigma),
\qquad
\sigma_L\leq\sigma\leq\sigma_R,
\tag{1}
$$

with

$$
\gamma=X'^2,
\qquad
ds=\sqrt\gamma\,d\sigma,
\qquad
t=\partial_sX,
\qquad
n_i=-\epsilon_{ij}t_j,
\tag{2--3}
$$

and signed curvature and velocity

$$
K=n\cdot\partial_st,
\qquad
\dot X=v_tt+v_nn.
\tag{4}
$$

Each endpoint is constrained to a prescribed support curve:

$$
X(\tau,\sigma_a)=R_a(q_a(\tau)),
\qquad
\delta X_a=\tau_a\,\delta\ell_a,
\qquad a=L,R.
\tag{5--7}
$$

The contact point may slide along its support. The interface tangent may rotate unless an endpoint torque fixes it. This immediately separates support geometry from dynamical endpoint data.

## Force, bending moment, and contact conditions

For tension plus bending stiffness,

$$
E_{0+2}[X]
=T_0\int ds+T_2\int ds\,K^2,
\tag{8}
$$

write a variation as $\delta X=\eta_tt+\eta_nn$. The geometric identities are

$$
\delta ds=(\partial_s\eta_t-K\eta_n)ds,
\qquad
\delta K=\partial_s^2\eta_n+K^2\eta_n+\eta_t\partial_sK.
\tag{10--11}
$$

After integration by parts, the endpoint term takes the force--moment form

$$
\left.\delta E_{0+2}\right|_{\partial\Sigma}
=[F\cdot\delta X+M\,\delta\theta]_L^R,
\tag{14}
$$

where

$$
F=(T_0-T_2K^2)t-2T_2(\partial_sK)n,
\qquad
M=2T_2K.
\tag{15}
$$

With endpoint energy $U_a(q_a,\theta_a)$ and orientation signs

$$
\varsigma_L=-1,
\qquad
\varsigma_R=+1,
\tag{16}
$$

stationarity gives

$$
\varsigma_aF_a\cdot\tau_a+\partial_{\ell_a}U_a=0,
\qquad
\varsigma_aM_a+\partial_{\theta_a}U_a=0.
\tag{17--18}
$$

A freely hinged, angle-independent endpoint therefore has $K_a=0$. A clamped endpoint instead fixes $\theta_a$ and imposes no moment equation. When $T_2=0$ and moving the contact replaces support energy according to

$$
U_a=(\tau_{1a}-\tau_{2a})\ell_a,
$$

the translation equation becomes Young's law,

$$
T_0\cos\vartheta_a=\tau_{2a}-\tau_{1a}.
\tag{20}
$$

Thus the natural endpoint dictionary is not merely Dirichlet/Neumann: it includes the support tangent, permitted variations, transmitted force, bending moment, and contact energy.

## Capping the open curve and recovering an area variation

An open curve encloses no intrinsic area. The paper chooses primitives on the supports,

$$
\frac{d\mathcal B_a}{dq_a}
=\frac12\epsilon_{ij}R_a^i\frac{dR_a^j}{dq_a},
\tag{21}
$$

and defines the capped relative area

$$
\mathcal A_{\mathrm{op}}
=-\frac12\int_{\sigma_L}^{\sigma_R}
d\sigma\,\epsilon_{ij}X^iX'^j
+\mathcal B_R(q_R)-\mathcal B_L(q_L)-\mathcal A_{\mathrm{ref}}.
\tag{22}
$$

The support terms cancel the endpoint variation of the line integral, leaving

$$
\delta\mathcal A_{\mathrm{op}}=\int ds\,\eta_n,
\tag{23}
$$

and, for fixed supports,

$$
\frac{d\mathcal A_{\mathrm{op}}}{d\tau}
=\int ds\,v_n.
\tag{24}
$$

Tangential sliding creates no extra area term; its contribution is already included by completing the curve along the supports. This is the clearest geometric mechanism in the paper and should transfer to relative-region functionals in other open-boundary problems.

The associated transgression field is

$$
a_a=-B\int_0^1dr\,
\epsilon_{ij}\partial_rY^i\partial_aY^j,
\qquad a=\tau,\sigma,
\tag{25}
$$

with

$$
\partial_\tau a_\sigma-\partial_\sigma a_\tau
=B\sqrt\gamma\,v_n.
\tag{26}
$$

The cap completion fixes

$$
\int_{\sigma_L}^{\sigma_R}d\sigma\,a_\sigma
=B\mathcal A_{\mathrm{op}},
\qquad
a_\tau(\sigma_L)=a_\tau(\sigma_R)=0.
\tag{27--28}
$$

## Material charge versus transferred excess charge

For an Abelian interface,

$$
\Delta\nu=\nu_1-\nu_2,
\qquad
\Delta\rho=\frac{B\Delta\nu}{2\pi}.
\tag{29}
$$

The strict material sector obeys

$$
\phi_c'-\Delta\nu\,a_\sigma=0.
\tag{30}
$$

Integrating it across the open segment gives

$$
\frac{\phi_c(\sigma_R)-\phi_c(\sigma_L)}{2\pi}
=\Delta\rho\,\mathcal A_{\mathrm{op}}.
\tag{31}
$$

To allow independent charge transfer, define

$$
q_{\mathrm{ex}}
=\frac1{2\pi}(\phi_c'-\Delta\nu a_\sigma),
\qquad
Q_{\mathrm{ex}}=\int d\sigma\,q_{\mathrm{ex}}.
\tag{32--33}
$$

Then

$$
Q_{\mathrm{seg}}
=\frac{\phi_c(\sigma_R)-\phi_c(\sigma_L)}{2\pi}
=\Delta\rho\,\mathcal A_{\mathrm{op}}+Q_{\mathrm{ex}},
\tag{34}
$$

and, with currents entering at $L$ and leaving at $R$,

$$
\dot Q_{\mathrm{seg}}
=j_L-j_R+\Delta\rho\int ds\,v_n.
\tag{36}
$$

Arbitrary endpoint injection is incompatible with simultaneously imposing $q_{\mathrm{ex}}=0$. A transferred charge requires an excess interfacial sector or an explicit endpoint charge phase space.

## Boundary symplectic flux and anomaly continuation

For $\Delta\nu\neq0$, the folded charged action is

$$
S_c=-\frac1{4\pi\Delta\nu}
\int d\tau\int_{\sigma_L}^{\sigma_R}d\sigma\,
\phi_c'\dot\phi_c-\int d\tau\,H_c.
\tag{37}
$$

Its variation has endpoint flux

$$
\left.\delta S_c\right|_{\partial\Sigma}
=-\frac1{4\pi\Delta\nu}
\int d\tau\,[\delta\phi_c\dot\phi_c]_L^R
+\left.\delta S_H\right|_{\partial\Sigma}.
\tag{38}
$$

Fixing $\delta\phi_c=0$ removes charge transfer, so it is not a general junction completion. The flux must be canceled by host-edge actions, endpoint phase space, or both.

For three cyclically oriented phases,

$$
\Delta\nu_{12}+\Delta\nu_{23}+\Delta\nu_{31}=0,
\qquad
\Delta c_{12}+\Delta c_{23}+\Delta c_{31}=0.
\tag{40--41}
$$

These telescoping identities say that the complete oriented network has no net response mismatch. They do not determine local junction operators or scattering amplitudes.

An endpoint storing charge can be equipped with

$$
S_{Q,a}=\int d\tau\,[Q_a\dot\chi_a-H_a(Q_a,q_a)],
\qquad
\{\chi_a,Q_b\}=\delta_{ab},
\tag{42--43}
$$

and continuity equation

$$
\dot Q_a+\sum_{\alpha\in J_a}s_{\alpha a}j_\alpha(0)=0.
\tag{44}
$$

For several folded Abelian fields, strong-coupling junction terms

$$
U_J=-\sum_pg_p\cos(\ell_p^T\Phi_J-\alpha_p)
\tag{45}
$$

must satisfy mutual nullness and charge neutrality,

$$
\ell_p^TK_J^{-1}\ell_q=0,
\qquad
t_J^TK_J^{-1}\ell_p=0.
\tag{46--47}
$$

The paper packages the endpoint data as

$$
\mathfrak B_a=(\Gamma_a,U_a,\Lambda_a,\mathcal H_a),
\tag{48}
$$

where $\Gamma_a$ is the support geometry, $U_a$ the mechanical contact energy, $\Lambda_a$ the condensation/gluing data, and $\mathcal H_a$ the endpoint plus outgoing-channel Hilbert space. This is an operational QH brane, not a claim of Weyl invariance or a target-space Chan--Paton gauge group.

## Condensates and the Abelian open-sector quotient

For a folded nonchiral Abelian order,

$$
\mathcal A=\mathbb Z^N/K\mathbb Z^N,
\tag{49}
$$

let the two endpoint branes condense Lagrangian subgroups $L_A,L_B\subset\mathcal A$. A stretched Wilson-line label satisfies

$$
a\sim a+\ell_A+\ell_B,
\tag{51}
$$

so the open sectors are

$$
\mathcal S_{AB}
=L_A\backslash\mathcal A/L_B
\simeq\mathcal A/(L_A+L_B),
\qquad
\mathcal H_{AB}^{\mathrm{top}}\simeq\mathbb C[\mathcal S_{AB}].
\tag{52--53}
$$

For finite Abelian groups,

$$
|L_A+L_B|
=\frac{|L_A||L_B|}{|L_A\cap L_B|}.
\tag{55}
$$

If both subgroups are Lagrangian, then

$$
\dim\mathcal H_{AB}^{\mathrm{top}}
=|\mathcal S_{AB}|=|L_A\cap L_B|.
\tag{56}
$$

For doubled $\mathbb Z_N$,

$$
K=\begin{pmatrix}0&N\\N&0\end{pmatrix},
\qquad
L_e=\langle(1,0)\rangle,
\qquad
L_m=\langle(0,1)\rangle,
\tag{57--58}
$$

and therefore

$$
\dim\mathcal H_{ee}^{\mathrm{top}}=N,
\qquad
\dim\mathcal H_{em}^{\mathrm{top}}=1.
\tag{59}
$$

The $e|m$ boundary-changing defect has quantum dimension $\sqrt N$. This is degeneracy from incompatible condensates rather than a freely chosen Chan--Paton multiplicity.

## The Majorana endpoint obstruction

After folding all incident neutral channels onto $x\geq0$, velocity-normalized fields are

$$
\widetilde\psi_\alpha=\sqrt{|v_\alpha|}\,\psi_\alpha.
\tag{61}
$$

Their quadratic boundary variation is

$$
\left.\delta S_\psi\right|_{x=0}
=\frac i2\int d\tau
\left(\widetilde\psi_{\mathrm{in}}^T\delta\widetilde\psi_{\mathrm{in}}
-\widetilde\psi_{\mathrm{out}}^T\delta\widetilde\psi_{\mathrm{out}}\right).
\tag{62}
$$

A frequency-independent local matching rule is

$$
\widetilde\psi_{\mathrm{out}}=O\widetilde\psi_{\mathrm{in}},
\qquad
O^TO=1.
\tag{63}
$$

For a complete canonical scattering problem, $O$ must be square and invertible; then it is orthogonal and incoming and outgoing channel counts agree. The printed condition $O^TO=1$ alone would also allow a rectangular isometry, so the channel-count conclusion needs that extra completeness assumption.

Consequently, a lone incoming Majorana cannot terminate on a finite-dimensional endpoint while conserving the chiral energy/anomaly flux. A localized Majorana zero mode can instead hybridize with a continuing channel:

$$
S_\gamma=\int d\tau
\left[\frac i2\gamma\dot\gamma+i\lambda\gamma\psi(0)\right].
\tag{64}
$$

Its scattering phase is

$$
S_\gamma(\omega)
=\frac{\omega-i\Gamma}{\omega+i\Gamma},
\qquad
\Gamma=\frac{2\lambda^2}{v}.
\tag{65}
$$

For real $\omega$, $|S_\gamma|=1$. “Absorption” means that the localized mode is incorporated into the chiral continuum, not dissipative loss. The phase changes by $\pi$ over $0^+<\omega<\infty$; its compactified full-real-axis winding is $2\pi$, so the paper's “$\pi$ phase winding” needs the positive-frequency convention stated.

For Ising Cardy endpoints,

$$
Z_{ab}(q)=\sum_cN^c_{ab}\chi_c(q),
\qquad
\mathcal H_{\sigma\sigma}=V_1\oplus V_\psi.
\tag{68--71}
$$

Two $\sigma$ endpoints have $H_{\mathrm{split}}=i\epsilon\gamma_L\gamma_R$. Exponential protection requires a gapped connecting region; a gapless Majorana channel generally produces algebraic finite-size splitting.

## Directed-network quantization

The propagating spectrum belongs to the complete directed network, not to an isolated chiral interval with two reflecting ends. With propagation matrices $P_\alpha(\omega)$ and junction matrices $S_a(\omega)$, one circuit has

$$
U(\omega)=\prod_{\mathrm{circuit}}P_\alpha(\omega)S_a(\omega),
\tag{77}
$$

and the spectrum satisfies

$$
\det[1-U(\omega)]=0.
\tag{78}
$$

For multichannel junctions the product must be path ordered, although the source does not mark this explicitly. If a channel ends in a reservoir or dissipative continuum, the relevant data are nonunitary resonance poles rather than necessarily real roots of Eq. (78).

## Boundary/CPS translation and limitations

In local vault language:

- the force--moment term is the embedding-sector boundary variation;
- Eq. (38) is literal endpoint symplectic flux and must be canceled by boundary conditions or extra endpoint/host-edge degrees of freedom;
- the capped area is a relative functional whose support completion removes corner variation;
- the telescoping anomaly equations are global consistency conditions, not local gluing maps;
- $\Lambda_a$ and $\mathcal H_a$ specify which topological charges can end and which channels carry the remaining flux;
- the directed-network determinant is the global spectral problem after the local endpoint completions have been chosen.

The construction assumes a fixed open segment and fixed graph topology, prescribed supports, low-energy channel projection, and anomaly-carrying host edges. It does not describe splitting or reconnection, derive a microscopic endpoint Hamiltonian, or produce a universal junction $S$-matrix. Much of the moving-worldsheet dynamics and cubic dispersion is imported from companion papers cited without arXiv identifiers.

## Verification note

### Checked

- Exact Mathematica algebra reproduces the endpoint reduction to $F$ and $M$, the integrated material relation, the Hall and central-charge telescoping identities, and the Moore--Read--331--vacuum anomaly differences.
- Mathematica reduces the Appendix D equations to $S_\gamma=(\omega-i\Gamma)/(\omega+i\Gamma)$ with $\Gamma=2\lambda^2/v$ and verifies $|S_\gamma|^2=1$ for real $\omega$ and positive $\Gamma$.
- Sage enumeration for $N=2,\ldots,8$ gives $|\mathcal A/(L_e+L_e)|=N$ and $|\mathcal A/(L_e+L_m)|=1$, confirming Eqs. (56) and (59) in the doubled-$\mathbb Z_N$ family.
- Sage verifies associativity of the Ising fusion rules and $\sigma\times\sigma=1+\psi$.

### Source-derived boundary

- The curvature-variation identities, imported nonlinear worldsheet brackets, cubic shape dispersion, relevance of the endpoint coupling, full boundary RG flow, and microscopic realization of null-vector junctions were not independently derived here.
- The Majorana no-termination conclusion is conditional on a complete square canonical scattering map, not on $O^TO=1$ alone.

### Source issues

- $K$ denotes both curvature and the Abelian $K$-matrix; $Q_{\mathrm{mat}}$ is used for both a local constraint and an integrated charge.
- The network product in Eq. (77) needs path ordering for noncommuting multichannel factors.
- The central dynamical input depends on two companion manuscripts cited only as “companion manuscript (2026),” which limits self-contained verification.
