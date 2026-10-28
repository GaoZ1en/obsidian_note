# 2. Classical theory, free modes, and the physical phase space

The spectral problem concerns the boundary Hamiltonian of a specified theory with a specified quantization. Both qualifications matter. The boundary clock fixes which energy is being measured; the quantum prescription fixes the one-body subtraction that accompanies the connected classical interaction. We first construct these inputs without deleting the gravitational constraints or the physical boundary modes.

## 2.1 Action and variational domain

Set the AdS radius to one, use signature \((-++)\), and put \(\kappa^2=16\pi G\). At a timelike radial cutoff \(\Gamma_R\), take

\[
\begin{aligned}
S_R={}&\frac1{\kappa^2}\int_{M_R}d^3x\sqrt{-g}\,(R+2)
+\frac2{\kappa^2}\int_{\Gamma_R}d^2x\sqrt{-\gamma}\,(K-1)\\
&-\frac12\int_{M_R}d^3x\sqrt{-g}\,
\bigl(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+\mu_0\phi^2\bigr),
\qquad
\mu_0=\Delta_0(\Delta_0-2),\quad \Delta_0>1 .
\end{aligned}
\tag{2.1}
\]

The timelike boundary term includes the extrinsic-curvature term and the unit-radius AdS counterterm. The initial/final terms and their corner contributions are retained in the canonical potential. A choice of endpoint polarization can change that potential by an endpoint functional; it cannot silently change the energy observable.

The reference solution is

\[
ds_0^2=-f\,dt^2+f^{-1}dr^2+r^2d\theta^2,
\qquad f=1+r^2,\qquad \theta\sim\theta+2\pi .
\tag{2.2}
\]

The center is smooth. The conformal boundary metric and its time coordinate \(t\) are fixed. Allowed metric perturbations satisfy Brown–Henneaux falloffs:

\[
\delta g_{tt},\delta g_{t\theta},\delta g_{\theta\theta}=O(1),
\quad
\delta g_{tr},\delta g_{r\theta}=O(r^{-3}),
\quad
\delta g_{rr}=O(r^{-4}).
\tag{2.3}
\]

The scalar has the source-free fast falloff \(\phi=O(r^{-\Delta_0})\), with the corresponding differentiated falloffs. In particular, the scalar variational boundary term scales as \(r^{2-2\Delta_0}\) and vanishes. This is the domain used throughout the note; it is not the alternative-quantization domain.

We use the boundary-completed covariant phase-space construction of Harlow and Wu [HW]. If
\(\delta L=E\cdot\delta\Phi+d\Theta\), and \(\ell\) is the timelike boundary Lagrangian, stationarity on the allowed spatial boundary variations gives

\[
(\Theta+\delta\ell)|_{\Gamma}=dC,\qquad
\theta_\Sigma=\int_\Sigma\Theta-\int_{\partial\Sigma}C,
\qquad
\Omega=\delta\theta_\Sigma .
\tag{2.4}
\]

Thus the action, its boundary completion, and its variational domain fix the canonical structure together. The Hamiltonian convention is
\(\iota_{X_H}\Omega=-\delta H\). Only proper diffeomorphisms, whose generators have zero asymptotic charge, are quotiented. Large Brown–Henneaux transformations remain physical. Formula (2.4) states the convention; the explicit ADM pullback below fixes the concrete potential and boundary momenta used in the calculation.

At the end of the one-body calculation, \(\Delta\) denotes the prescribed physical one-particle gap and \(\mu=\Delta(\Delta-2)\). Within a connected coefficient already multiplied by \(G\), replacing \(\Delta_0\) by \(\Delta\) changes only higher orders. All final energies will be written as \(E=E_0+Gg+o(G)\), at fixed finite labels. This notation records the fixed-order spectral coefficient; it does not by itself establish convergence of the infinite-dimensional quantum theory or existence of exact finite-\(G\) branches.

## 2.2 Free scalar and gravitational modes

For a scalar mode \(I=(n,j)\), put \(a=|j|\), \(X=f^{-1}\), and \(\omega_I=\Delta+2n+a\). A Klein–Gordon normalized basis is

\[
u_{nj}=
\frac1{\sqrt{2\pi}}
\sqrt{\frac{(\Delta+n)_a}{(n+1)_a}}\,
e^{-i\omega_I t+ij\theta}
X^{\Delta/2}(1-X)^{a/2}
P_n^{(\Delta-1,a)}(1-2X).
\tag{2.5}
\]

Here \((q)_r\) is the rising factorial. The angular label in the radial function is \(|j|\), including for negative angular momentum. The normalization follows directly from

\[
(u,v)_{\rm KG}
=i\int_0^\infty\frac{r\,dr}{f}\int_0^{2\pi}d\theta\,
(u^*\partial_tv-v\partial_tu^*)
\tag{2.6}
\]

and the Jacobi norm

\[
\int_0^1 X^{\Delta-1}(1-X)^a
\bigl[P_n^{(\Delta-1,a)}(1-2X)\bigr]^2dX
=
\frac{\Gamma(n+\Delta)\Gamma(n+a+1)}
{(2n+\Delta+a)\,n!\,\Gamma(n+\Delta+a)}.
\tag{2.7}
\]

Multiplication by the normalization in (2.5) leaves \(1/\omega_I\), which cancels the factor \(\omega_I\) from (2.6). Thus
\(\phi=\sum_I(b_Iu_I+b_I^\dagger u_I^*)\) has
\([b_I,b_J^\dagger]=\delta_{IJ}\).

The free gravitational physical modes form two positive-norm towers. With \(\sigma=\pm1\), \(m\ge2\), and
\[
v^\sigma=dt+\frac{i\,dr}{rf}-\sigma\,d\theta ,
\]
one convenient TT representative is

\[
h^\sigma_{m,\mu\nu}
=\sqrt{\frac{m(m^2-1)}{8\pi}}\,
e^{-imt+i\sigma m\theta}
(1-X)^{m/2}v^\sigma_\mu v^\sigma_\nu .
\tag{2.8}
\]

The normalization refers to \(g=g_0+\kappa h+\cdots\) and the symplectic form of (2.1). Different proper-gauge representatives describe the same free oscillator. These perturbations are locally diffeomorphic to AdS, but their asymptotic charges are nonzero. The vanishing of the normalization at \(m=0,1\) identifies stabilizers, not additional oscillators to be recovered by division. The corresponding *matter source harmonics* must nevertheless remain in the constraints.

After vacuum subtraction,

\[
H_0=H_\phi+H_g
=\sum_I\omega_I b_I^\dagger b_I
+\sum_{m\ge2,\sigma}m a_{m\sigma}^\dagger a_{m\sigma},
\qquad
\Omega_0=i\sum_I db_I^*\wedge db_I
+i\sum_{m,\sigma}da_{m\sigma}^*\wedge da_{m\sigma}.
\tag{2.9}
\]

The target scalar branch has no independent free \(a\)-occupation *after normal-form transformation*. Its inverse image in the original variables contains virtual gravitons and matter backreaction.

## 2.3 Off-shell variables and the order of reduction

The on-shell expansion (2.5) identifies the positive-frequency solution space and its physical inner product. It is not an instruction to remove all other variables from the action. In an off-shell spatial expansion, the coefficients of the scalar spatial basis are arbitrary functions of time. Their momenta are independent canonical variables. The lapse, shift, conformal metric data, momentum constraints, and boundary embedding are retained until their equations and symplectic pullbacks have been obtained.

Explicitly, for ADM variables,

\[
\begin{aligned}
K_{ij}&=\frac{\dot\sigma_{ij}-D_iN_j-D_jN_i}{2N},\\
\pi^{ij}&=\frac{\sqrt\sigma}{\kappa^2}(K^{ij}-\sigma^{ij}K),
&
\pi_\phi&=\frac{\sqrt\sigma}{N}(\dot\phi-N^i\partial_i\phi).
\end{aligned}
\tag{2.10}
\]

The unreduced Hamiltonian is

\[
H[N,N^i]=\int_\Sigma(N\mathcal C+N^i\mathcal C_i)+B[N,N^i],
\tag{2.11}
\]
\[
\begin{aligned}
\mathcal C={}&
\frac{\kappa^2}{\sqrt\sigma}
(\pi^{ij}\pi_{ij}-\pi^2)
-\frac{\sqrt\sigma}{\kappa^2}({}^{(2)}R+2)
+\frac{\pi_\phi^2}{2\sqrt\sigma}
+\frac{\sqrt\sigma}{2}
(\sigma^{ij}\partial_i\phi\partial_j\phi+\mu\phi^2),\\
\mathcal C_i={}&-2\sigma_{ij}D_k\pi^{jk}+\pi_\phi\partial_i\phi .
\end{aligned}
\tag{2.12}
\]

The boundary generator \(B\) is derived from the same action. Setting \(\mathcal C=\mathcal C_i=0\) before finding \(B\) would erase the energy being computed.

After deriving these equations, choose the regular maximal/conformal proper-gauge section. On the identity boundary-embedding section let

\[
\begin{gathered}
\bar\sigma=f^{-1}dr^2+r^2d\theta^2,\quad y=\sqrt f,\quad
\sigma=e^{2\Psi}\bar\sigma,\\
\pi^{ij}=e^{-2\Psi}\bar\pi^{ij},\quad
t^{ij}=\frac{\bar\pi^{ij}}{\sqrt{\bar\sigma}},\quad
\operatorname{tr}_{\bar\sigma}t=0,\quad
\chi=\frac{\pi_\phi}{\sqrt{\bar\sigma}}.
\end{gathered}
\tag{2.13}
\]

The exact constraints on this section read

\[
\bar D_jt^j{}_i=\frac12\chi\partial_i\phi,
\tag{2.14}
\]
\[
\kappa^2e^{-2\Psi}t:t
+\frac2{\kappa^2}(1+\bar\Delta\Psi-e^{2\Psi})
+\frac12e^{-2\Psi}\chi^2
+\frac12|\bar D\phi|^2
+\frac12\mu e^{2\Psi}\phi^2=0 .
\tag{2.15}
\]

For the matter-sourced part, \(\Psi=\kappa^2u+\kappa^4v+\cdots\), so

\[
Lu=\frac{\rho}{2},\qquad
2Lv=t:t-u\chi^2+\mu u\phi^2-4u^2,\qquad
L=-\bar\Delta+2,\quad
\rho=\frac12(\chi^2+|\bar D\phi|^2+\mu\phi^2).
\tag{2.16}
\]

These follow by expanding at fixed \(\pi_\phi\); keeping a velocity fixed would give a different contact expression.

The gravitational bulk canonical potential vanishes on this section:
\(\pi^{ij}\delta\sigma_{ij}=2\pi^{ij}\sigma_{ij}\delta\Psi=0\).
This does not remove the boundary potential. Restore a boundary spatial embedding generated by \(\xi\). Integration of the momentum constraint gives

\[
\int_\Sigma\pi^{ij}\mathcal L_{\delta\xi}\sigma_{ij}
=2\int_{\partial\Sigma}n_i\pi^{ij}\delta\xi_j
-\int_\Sigma\pi_\phi\,\delta\xi^i\partial_i\phi .
\tag{2.17}
\]

The last term cancels the scalar pullback term. The first is the physical boundary flux momentum, including the particular matter response. Consequently, in an angular harmonic \(m\), writing
\[
t^i{}_j=e^{im\theta}
\begin{pmatrix}A&ryB\\ B/(ry)&-A\end{pmatrix},
\]
the zero-independent-boundary-momentum section is

\[
\lim_{r\to\infty}r^2B_m(r)=0,\qquad |m|\ge2 .
\tag{2.18}
\]

There is a regular homogeneous momentum solution in these harmonics, so center regularity alone does not impose (2.18). The global harmonics \(m=0,\pm1\) retain their matter charges. Appendix A gives both inverses and their exceptional channels.

Finally, the vacuum-subtracted boundary energy density is

\[
B_R=\frac2{\kappa^2}
\bigl[ry(e^\Psi-1)-rf\partial_r\Psi\bigr]_{r=R}.
\tag{2.19}
\]

If \(u=C(\theta)r^{-2}+o(r^{-2})\) and
\(v=D(\theta)r^{-2}+o(r^{-2})\), its finite part is \(6C+6\kappa^2D\). Pairing (2.16) with \(y\), for which \(Ly=0\), converts the bulk constraint into this boundary flux. It gives the canonical quartic

\[
\boxed{
H_4^{\rm con}
=\int_\Sigma\sqrt{\bar\sigma}\,y
\bigl(t:t-u\chi^2+\mu u\phi^2-4u^2\bigr).
}
\tag{2.20}
\]

This is the first indispensable dynamical input. It includes the momentum-constraint energy as well as the scalar response.

# 3. From unreduced OFPT to the scalar pair operator

## 3.1 The cubic vertex and its resonance zero

Define \(z=r/(1+y)\) and the quadratic density moments

\[
D_m=\frac1{\sqrt{8\pi m(m^2-1)}}
\int_\Sigma\sqrt{\bar\sigma}\,
p_m(y)e^{-im\theta}:\rho:,
\qquad p_m(y)=z^m(y+m),\quad m\ge2.
\tag{3.1}
\]

The two gravitational chiralities use \(D_{m,+}=D_m\) and
\(D_{m,-}=D_m^\dagger\). Their mixed cubic is

\[
V_{g\phi^2}
=\sum_{m,\sigma}(a^\dagger_{m\sigma}F_{m\sigma}
+F^\dagger_{m\sigma}a_{m\sigma}),\qquad
F_{m\sigma}=mD_{m\sigma}+[H_\phi,D_{m\sigma}].
\tag{3.2}
\]

Both terms in \(F\) have a dynamical origin. The asymptotic conformal coefficient has boundary weight two; varying the boundary embedding supplies \(mD\). The cross term between the free gravitational momentum and the matter-sourced momentum supplies the second term. Indeed,

\[
\partial_t\rho=\frac2y\bar D_i(y^2j^i),
\qquad j^i=\frac12\chi\bar D^i\phi ,
\tag{3.3}
\]

and two integrations by parts in
\(2\int y\sqrt{\bar\sigma}\,t^{ij}(\bar D_i\bar D_j-\bar\sigma_{ij})p_m\)
give \(\partial_t\int\sqrt{\bar\sigma}\,p_m\rho\).
The center term vanishes by smoothness, the radial term by \(\Delta>1\), and the independent boundary-momentum flux by (2.18).

For signed external legs with frequency sum
\(\Omega=\varepsilon\omega_I+\eta\omega_J\) and angular sum
\(k=\varepsilon j_I+\eta j_J\), the creation-mode vertex is proportional to

\[
\delta_{k,\sigma m}(m-\Omega)
\int_1^\infty p_m(y)\rho_{IJ}^{\varepsilon\eta}(y)\,dy .
\tag{3.4}
\]

Thus the numerator vanishes *before division* at the possible cubic resonance \(\Omega=m\). There is no arbitrary principal-value assignment. This factor also fixes which cubic may be combined with (2.20): an imported TT bulk vertex lacking the canonical boundary terms is not the vertex of this chart.

## 3.2 Complete degenerate normal form

Write \(H=H_0+\kappa V_1+\kappa^2V_2+\cdots\), including the constraint, boundary, ordering, and counterterm terms in their appropriate coefficients. The mixed anti-Hermitian generator is

\[
S_{\rm mix}=\sum_{m,\sigma}
(a^\dagger_{m\sigma}D_{m\sigma}
-D^\dagger_{m\sigma}a_{m\sigma}),
\qquad V_{g\phi^2}=[H_0,S_{\rm mix}].
\tag{3.5}
\]

The full generator also includes the pure-gravity cubic. Its resonant part vanishes by the leading non-global Ward identity and scalar parity, as proved below. Hence \(V_1=[H_0,S]\), with \(S^\dagger=-S\), and

\[
\widetilde H=e^{\kappa S}He^{-\kappa S}
=H_0+\kappa^2\left(V_2+\frac12[S,V_1]\right)+\cdots .
\tag{3.6}
\]

**Proposition PHY-01 (degenerate OFPT identity).**
Let \(P_E\) project onto the entire free energy-\(E\) eigenspace, including all scalar multiplicities and all boundary-graviton occupations, and let \(Q_E=1-P_E\). Then

\[
\boxed{
P_E\left(V_2+\frac12[S,V_1]\right)P_E
=P_EV_2P_E+
P_EV_1Q_E(E-Q_EH_0Q_E)^{-1}Q_EV_1P_E .
}
\tag{3.7}
\]

For \(E_a=E_c=E\), the two commutator terms each contribute
\(\frac12(V_1)_{ab}(V_1)_{bc}/(E-E_b)\).
An intermediate \(b\) at energy \(E\) contributes zero because
\(P_EV_1P_E=0\). A block-diagonal addition to \(S\) also multiplies this zero. This proves the identity without an isolated-state assumption.

At fixed \(E\), \(P_E\) is finite dimensional: \(N\Delta\le E\) and every occupied graviton has \(m\le E\). The off-block sums in (3.7) can still be infinite. The one-body contractions therefore require regulation even though the external block is finite.

Let \(\mathcal R\) retain free-energy weight zero, equivalently
\(\mathcal RA=\sum_EP_EAP_E\) on the algebraic finite-energy domain. Boundary-vacuum compression of the mixed commutator gives

\[
\begin{aligned}
W_{\rm ex}={}&-\sum_{m\ge2}m\{D_m^\dagger,D_m\}\\
&-\frac12\sum_{m\ge2}
\bigl([D_m^\dagger,[H_\phi,D_m]]
+[D_m,[H_\phi,D_m^\dagger]]\bigr).
\end{aligned}
\tag{3.8}
\]

The second line is at most quadratic in scalar oscillators. Consequently the connected four-leg term is

\[
\boxed{
\mathcal K_4=H_4^{\rm con}-\sum_{m\ge2}m\{D_m^\dagger,D_m\},
\qquad
W=16\pi[\mathcal K_4]_{22,\rm res}.
}
\tag{3.9}
\]

The anticommutator already includes the two conjugate angular harmonics. Its classical symbol is \(2|D_m|^2\); another chirality factor must not be added.

## 3.3 Why the scalar branch is invariant in the full free block

There are three separate issues: boundary-oscillator mixing, scalar-number-changing resonance, and the lower-degree quantum terms. Each needs its own argument.

For a global charge \(Q_0\) of energy weight \(s\), transform the charge and Hamiltonian together. The degree-four Ward equation is

\[
(\operatorname{ad}H_0-s)\widetilde Q_2^{[4]}
+[W^{[4]},Q_0]_{\rm cl}=0 .
\tag{3.10}
\]

Projection between energies \(E+s\) and \(E\) removes the first term. Hence
\([\mathcal RW^{[4]},Q_0]_{\rm cl}=0\).
This is a consequence of the boundary-completed classical action: stress conservation, the Einstein Bianchi identity, and the vanishing spatial flux imply the required Noether identity. No regulated one-body quantum Ward identity is assumed at this step.

The non-global charges have the crucial singular leading term

\[
L_{-m}=\kappa^{-1}c_m a_m^\dagger+O(1),\qquad
L_m=\kappa^{-1}c_m a_m+O(1),\qquad
c_m=\sqrt{2\pi m(m^2-1)},\quad m\ge2 ,
\tag{3.11}
\]

with a second barred tower. Their order-\(\kappa\), degree-three Ward equation is

\[
(\operatorname{ad}H_0-s)\widetilde Q_1^{[3]}
+[W^{[4]},Q_{-1}^{[1]}]_{\rm cl}=0 .
\tag{3.12}
\]

To see exactly what the projection does, decompose \(A=\sum_\nu A_\nu\) by
\([H_0,A_\nu]_{\rm cl}=\nu A_\nu\). If \(Q_{-1}\) has weight \(s\), then
\([A_\nu,Q_{-1}]\) has weight \(\nu+s\). Its weight-\(s\) part therefore comes only from \(A_0=\mathcal RA\). Equation (3.12) gives

\[
[\mathcal RW^{[4]},a_{m\sigma}]_{\rm cl}
=[\mathcal RW^{[4]},a^*_{m\sigma}]_{\rm cl}=0 .
\tag{3.13}
\]

A polynomial commuting with every oscillator and its conjugate is independent of those variables. This proves that the *complete* resonant quartic is scalar-only, including cancellations involving the gravitational quartics; it does not merely evaluate the Hamiltonian at \(a=0\). The same argument one order earlier makes the resonant cubic independent of all gravitational variables. A scalar-only cubic is forbidden by \(\phi\mapsto-\phi\), proving the full cubic nonresonance used in (3.6). Commutators with linear oscillators have no higher Moyal terms, so the conclusion applies to the quantum degree-four coefficient.

**Proposition PHY-02 (scalar-sector closure and number conservation).**
On every fixed finite energy block, in the prescription of Section 3.4, the zero-independent-graviton scalar sector is invariant through order \(G\), and its connected quartic preserves scalar particle number.

For the number-changing part, let \(A_{31}\) be the normally ordered
\(b^{\dagger3}b\) component. The free global charges are number-preserving bilinears, so their action preserves creation and annihilation degrees separately. Thus \(A_{31}\) itself is an intertwiner. It annihilates the one-particle lowest state because its possible output has energy at least \(3\Delta>\Delta\). Every one-particle state is generated from that lowest state by the two raising operators, so \(A_{31}\) annihilates every one-particle state. Acting on a fixed incoming mode then leaves a linear combination of independent normalized unordered three-particle states. Every symmetrized coefficient of \(A_{31}\) is therefore zero. Its adjoint vanishes too. This exhausts the coefficients precisely because there is one annihilation operator; adding spectators cannot restore them.

This proof includes integer \(\Delta\). Indeed, kinematics alone permits \(1\to3\) only when
\[
p_{\rm in}-p_1-p_2-p_3=\Delta,\qquad
q_{\rm in}-q_1-q_2-q_3=\Delta ,
\]
so generic-mass nonresonance would leave precisely those integer masses untreated. The intertwiner proof closes them. Pure creation or annihilation quartics are excluded by positive energy.

The remaining quantum terms have degree two or zero. Scalar parity forbids a mixed \(a b\) bilinear. Two creations or two annihilations cannot be resonant because all physical energies are positive. A scalar \(b_I^\dagger b_K\) that preserves \(E,J\) has \(I=K\). A gravitational number-preserving bilinear annihilates the gravitational vacuum after its constant is subtracted. Thus no unknown pure-gravity quadratic energy can mix this scalar branch with a graviton-occupied state.

Pure-gravity vertices also do not hide a scalar-vacuum compression. A rotationally invariant gravitational cubic has no linear Wick trace: after contracting a conjugate pair, its remaining oscillator would have to have zero angular momentum, whereas every physical graviton has angular momentum \(\pm m\ne0\). Acting on the vacuum, the pure-gravity cubic creates three gravitons; the mixed cubic creates one. They have no common intermediate graviton sector. Pure-gravity self-contractions act identically on every spectator scalar state and are removed by vacuum subtraction.

## 3.4 Quantization and the physical-gap subtraction

The chosen quantization uses the canonical Liouville measure, paired proper-constraint and gauge-fixing determinants, midpoint time slicing, and Weyl ordering on a regular local Darboux chart. It is useful to make the determinant cancellation explicit. For proper constraints \(C_A\), gauges \(\chi_A\), and
\(\mathsf M_{AB}=\{\chi_A,C_B\}\), the second-class bracket matrix is

\[
\begin{pmatrix}0&-\mathsf M^T\\ \mathsf M&\mathsf B\end{pmatrix},
\qquad
\det\begin{pmatrix}0&-\mathsf M^T\\ \mathsf M&\mathsf B\end{pmatrix}
=(\det\mathsf M)^2 .
\tag{3.14}
\]

In adapted local canonical coordinates \((s,\Pi;Q,P)\),
\(C=\mathsf M(Q,P)\Pi+\cdots\) and \(\chi=s\), so
\[
\delta(C)\delta(s)|\det\mathsf M|\,ds\,d\Pi\,dQ\,dP
=\delta(\Pi)\delta(s)\,ds\,d\Pi\,dQ\,dP .
\]
The cancellation is made at the finite regulator before determinant limits. It is not a statement about a global gauge chart or independently regularized determinants.

A cubic/cubic Weyl commutator has degrees four and zero: the third-derivative Moyal term differentiates both cubics completely. A quartic-generator commutator with quadratic \(H_0\) is exactly classical and has zero resonant projection. Thus a canonical change at this order adds no independent scalar quadratic Egorov term. This fact does **not** remove the actual quadratic Weyl contraction of \(\mathcal K_4\).

For every scalar leg use \(e^{-\tau\omega_I/2}\), and regulate the two boundary towers with compatible paired Abel factors. The completed one-body calculation has the following chain, derived in Appendix B:

1. The \(a^2\phi^2\) seagull and the scalar-energy-weighted double commutator in (3.8) cancel by a free radial virial identity. Positive-kernel bounds control the joint scalar/boundary regulator limit.
2. The remaining Weyl scalar contraction splits into a Hartree source and an exchange term. The full regulated vacuum stress is subtracted *before* applying the constraint inverse, so the Hartree contribution cancels at every \(\tau>0\).
3. The exchange term obeys, for every fixed external mode \(I\),
   \[
   s_I^{\rm X}(\tau)=-\frac{C_I}{\tau}+o(1),\qquad
   C_I=(4\mu+2)\int_1^\infty\widehat R_I^2\,dy
   +2\int_1^\infty\frac{\widehat R_I^2}{y^2}\,dy ,
   \tag{3.15}
   \]
   where \(\widehat R_I\) is the radial mode with its angular \(1/\sqrt{2\pi}\) removed.
4. The single local kinetic insertion
   \[
   S_{\rm ct,X}=-\frac12\int\sqrt{-g}\,
   Z_\tau(r)g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi,\qquad
   Z_\tau(r)=-\frac{4G}{\tau y}
   \tag{3.16}
   \]
   contributes \(GC_I/\tau\), with the same external-leg weight. The surviving matrix element is
   \(e^{-\tau\omega_I}[s_I^{\rm X}+C_I/\tau]\to0\).

The tadpole counterterm at the required order is
\[
S_{\rm ct,tad}
=-\frac12\int\sqrt{-g_0}\,T_\tau^{\mu\nu}
(g-g_0)_{\mu\nu}.
\tag{3.17}
\]
Its lapse and conformal variations cancel the two regulated Hartree source components. A vacuum-energy subtraction as a number would not perform this cancellation. The coefficient in (3.16) depends on the fixed regulator clock; it is local in this prescription and need not be separately isometry invariant at finite \(\tau\).

**Proposition PHY-08 (one-body subtraction at fixed physical gap).** A remaining finite mass insertion \(-G\delta\mu_{\rm fin}\int\sqrt{-g}\phi^2/2\) changes every one-particle level by
\(G\delta\mu_{\rm fin}/[2(\Delta-1)]\). Fixing \(E_{00}^{1p}=\Delta\) removes this common term. Therefore

\[
\boxed{E_{nj}^{1p}=\Delta+2n+|j|+o(G),\qquad g^{1p}_{nj}=0.}
\tag{3.18}
\]

This is a loop, ordering, and subtraction result. It does not assert absence of a bare self-energy. The same one-body term is subtracted once in every Fock sector; there is no extra \(N\)-dependent mass prescription. The present counterterms add no independent \(G\phi^4\) coupling.

## 3.5 The unique Fock lift

Let \(I\le J\) be unordered mode labels and define

\[
B^\dagger_{IJ}=\frac{b_I^\dagger b_J^\dagger}{\sqrt{1+\delta_{IJ}}},
\qquad |IJ\rangle=B^\dagger_{IJ}|0\rangle .
\]

**Proposition PHY-03 (unique two-body lift).**
If \(\mathsf M_{IJ;KL}=\langle IJ|W|KL\rangle\), the complete scalar correction is

\[
\boxed{
W=\sum_{I\le J,K\le L}
\mathsf M_{IJ;KL}B^\dagger_{IJ}B_{KL},
\qquad
W_N=\sum_{1\le i<j\le N}w_{ij}.
}
\tag{3.19}
\]

Indeed \(B_{KL}|MN\rangle=\delta_{(KL),(MN)}|0\rangle\); every normally ordered quartic coefficient is recovered from the two-particle restriction. There is no nonzero quartic that acts only beginning at three particles. On a symmetric \(N\)-tensor, two annihilations select an unordered pair and two creations replace it, producing exactly the sum in (3.19). For the single-mode check, \(\mathsf M_{00;00}=m\) gives
\(W=(m/2)b^{\dagger2}b^2\), with eigenvalue \(mN(N-1)/2\).

The absence of an irreducible three-body coefficient here follows from the minimal action and its coupling/field-degree count. It is not a claim that gravity is pairwise at every order.

## 3.6 The classical response comparison and its precise domain

The canonical route above defines and evaluates the operator without choosing a spacetime response kernel. A second route explains its relation to classical elimination, provided the *same* Hessian, boundary data, observable, and endpoint prescription are used.

For a quadratic scalar functional \(D\), write
\(\dot D=\{D,H_\phi\}\). The two positive-norm oscillators have
\(D_+=D\), \(D_-=D^*\) and \(F_\sigma=mD_\sigma-i\dot D_\sigma\).
The graph

\[
a_{m,+}=-\kappa D_m,\qquad a_{m,-}=-\kappa D_m^*
\tag{3.20}
\]

has vanishing gravitational symplectic pullback:
\[
i\kappa^2(dD^*\wedge dD+dD\wedge dD^*)=0 .
\]
Its free gravitational energy is \(+2\kappa^2m|D|^2\), and its mixed energy is
\(-4\kappa^2m|D|^2\); the \(\dot D\) terms cancel between chiralities. Hence

\[
H_{\rm graph}
=H_\phi+\kappa^2\left(H_4^{\rm con}
-2\sum_m m|D_m|^2\right)+\cdots .
\tag{3.21}
\]

The oscillator equation \((i\partial_t-m)a_\sigma=\kappa F_\sigma\) is satisfied on the free scalar flow. Scalar feedback begins at \(\kappa^2\), so its contribution to the graph equation begins at \(\kappa^3\). When differentiating the full Hamiltonian, the scalar derivative is taken at fixed \(a\) before restriction; the paired \(\dot D\) forces cancel and yield exactly the derivative of (3.21). This establishes the retained dynamics to the required order. The graph selects a particular response in a Lagrangian plane of the gravitational phase space; it is not a quotient of the two physical oscillators.

Let \(\mathcal E^{(1)}\) be the linearization of \(G_{\mu\nu}-g_{\mu\nu}\). For a response \(k[T]\) satisfying
\(\mathcal E^{(1)}k=T/2\), the boundary-completed quadratic action is

\[
S^{(4)}_{k,\phi}
=\kappa^2\left[-\frac12\langle k,\mathcal E^{(1)}k\rangle
+\frac12\langle T,k\rangle\right].
\tag{3.22}
\]

Stationary substitution gives \(+\kappa^2\langle T,k[T]\rangle/4\). To identify its secular Hamiltonian with (3.21), require the following finite-source domain:

- The metric reconstruction solves the lapse/shift gauge-preservation equations in the allowed boundary domain, with any kernel or homogeneous data explicitly fixed.
- The responses belong to the same renormalized Hessian variational domain and have the same fixed boundary cylinder and clock.
- The induced endpoint \(B(t)\), including the canonical/covariant scalar-coordinate change, obeys \(B(T)/T\to0\). Bounded quasiperiodic reconstructions suffice.

**Proposition PHY-04 (response bridge on this domain).**
For finite free scalar external histories satisfying those conditions,

\[
\boxed{
[\mathcal K_4^{\rm cl}]_{\rm res}
=-\frac14\left[
\int_\Sigma r\,dr\,d\theta\,
T^{\mu\nu}k_{\mu\nu}[T]\right]_{\rm res}.
}
\tag{3.23}
\]

The proof uses the canonical first-order action restricted to (3.20): its extra symplectic term is zero, so the quartic action is
\(-\kappa^2\int\mathcal K_4^{\rm cl}dt+[B]\).
The scalar-coordinate change contributes a free equation-of-motion term and an endpoint. The former vanishes on the external modes; the latter vanishes after division by elapsed time.

Only source-space reciprocity is needed. For two reconstructed responses,
the Hessian Green identity gives
\[
\langle k_1,\mathcal E^{(1)}k_2\rangle
-\langle\mathcal E^{(1)}k_1,k_2\rangle
=\text{completed spatial flux}+\text{temporal endpoint}.
\]
The common variational domain removes the spatial flux, and the averaged endpoint vanishes. Thus
\(\langle T_1,k_2\rangle_{\rm res}
=\langle k_1,T_2\rangle_{\rm res}\).
This proves the reciprocity actually used, without claiming a self-adjoint inverse on every off-shell conserved tensor.

A bounded homogeneous difference \(\mathcal L_\zeta g_0\) changes the pairing by
\(2\nabla_\mu(T^{\mu\nu}\zeta_\nu)\). Its radial term is
\(O(r^{2-2\Delta})\), and its bounded temporal primitive averages to zero. A large transformation need not be proper for this averaged identity; it remains physically large. In contrast, a secular primitive \(tC_0\) has derivative \(C_0\) with nonzero average. Old secular representatives therefore require simultaneous transport of the observable and endpoint and cannot be inserted into (3.23) without that check.

The graph proof establishes the reduced symplectic identity and canonical quartic. Bounded oscillator coordinates alone do not prove existence of every continuum lapse/shift reconstruction or finiteness of every renormalized endpoint. Those extensions remain conditional. The direct finite canonical evaluation in Appendix A does not require them. The source-Casimir derivation in the next chapter uses (3.23) on the explicitly matching finite-source domain; it is not an independent proof that every alternative response prescription has that domain.

# 4. The Einstein pair kernel and its representation dictionary

## 4.1 One-particle and pair representations

Use chiral excitation labels
\[
p=n+\max(j,0),\qquad q=n+\max(-j,0).
\]
Then
\[
\mathcal H_1=D^+_{\Delta/2,L}\otimes D^+_{\Delta/2,R},
\qquad E^{(0)}_{pq}=\Delta+p+q,\qquad J_{pq}=p-q.
\tag{4.1}
\]

A convenient polynomial realization of one chiral factor is
\[
L_-=\partial_z,\qquad
L_0=z\partial_z+\frac{\Delta}{2},\qquad
L_+=z^2\partial_z+\Delta z,
\qquad
\langle z^a,z^b\rangle=\delta_{ab}\frac{a!}{(\Delta)_a}.
\tag{4.2}
\]
For \(\Delta>1\), the same norm follows from
\((\Delta-1)\pi^{-1}(1-|z|^2)^{\Delta-2}d^2z\) on the disk.
The normalized monomial is
\(e_a(z)=\sqrt{(\Delta)_a/a!}\,z^a\).
This is the physical inner product, inherited from (2.6), not an arbitrary Euclidean norm on polynomial coefficients.

The pair decomposition is multiplicity free in each chirality:
\[
D^+_{\Delta/2}\otimes D^+_{\Delta/2}
=\bigoplus_{k\ge0}D^+_{\Delta+k}.
\tag{4.3}
\]
One can prove completeness directly at every finite degree: the unique new lowest vector at degree \(k\) is \((z_1-z_2)^k\); descendants of the lower-degree lowest vectors account for the remaining degree-\(k\) dimension. Their pair-Casimir eigenvalues
\(C_k=(\Delta+k)(\Delta+k-1)\) are distinct.

In a normalized oscillator basis, the chiral primary coefficients are
\[
v_p^{(k)}
=\frac{(-1)^p(\Delta)_k}
{\sqrt{\mathcal N_k(\Delta)_p(\Delta)_{k-p}p!(k-p)!}},
\qquad
\mathcal N_k=\frac{(2\Delta+k-1)_k}{k!}.
\tag{4.4}
\]
The lowering relation and terminating Vandermonde identity prove their normalization. Explicitly,
\[
v_{p+1}^{(k)}\sqrt{(p+1)(\Delta+p)}
=-v_p^{(k)}\sqrt{(k-p)(\Delta+k-p-1)},
\qquad
\sum_{p=0}^k|v_p^{(k)}|^2=1 .
\]

The normalized identical-particle primary is
\[
|P_{k\ell}\rangle
=\frac1{\sqrt2}
\sum_{p=0}^k\sum_{q=0}^{\ell}
v_p^{(k)}v_q^{(\ell)}
b^\dagger_{p,q}b^\dagger_{k-p,\ell-q}|0\rangle,
\qquad k+\ell\ \text{even}.
\tag{4.5}
\]
The exchange sign is \((-1)^{k+\ell}\); odd total parity gives zero.
The factor \(1/\sqrt2\) converts a normalized symmetric labelled tensor to a normalized Fock vector, including repeated modes. Define
\[
n=\min(k,\ell),\qquad j=k-\ell,\qquad s=|j|,\qquad
\gamma_{k\ell}(\Delta)=g_{n,s}(\Delta).
\tag{4.6}
\]
The symbol \(g_{1,0}\), for example, means the spin-zero radial primary \(k=\ell=1\), not the Bose-forbidden pair \(k=1,\ell=0\).

## 4.2 A direct canonical integral fixes an entire boundary row

The global intertwining identity makes \(w\) a scalar on each representation in (4.3), but it does not fix that scalar. To determine it dynamically, temporarily distinguish two equal-mass fields and put one particle in the ground mode and the other in the circular mode of angular momentum \(J\ge0\):

\[
R_J=c_Jr^Jf^{-(\Delta+J)/2},\qquad
c_J^2=\frac{(\Delta)_J}{2\pi J!}.
\tag{4.7}
\]

Set
\[
K_J=(R'_J)^2+\frac{(\Delta+J)^2}{f^2}R_J^2,\qquad
e_J=fK_J+\left(\frac{J^2}{r^2}+\mu\right)R_J^2 .
\]
The stationary canonical constraints are
\(M'_J=re_J\), \(D'_J=-rK_J\),
\(M_J(0)=0\), \(D_J(\infty)=0\). The one-particle ground source gives
\[
M_0=\frac{\Delta}{2\pi}(1-f^{1-\Delta}),\qquad
D_0=\frac{\Delta}{4\pi}f^{-\Delta}.
\tag{4.8}
\]
The source here is a one-particle expectation; the response to a single polarized tensor \(T[u_{00},u_{00}^*]\) is half as large.

Varying the second scalar Hamiltonian at fixed canonical momentum yields the actual product-state expectation
\[
\mathscr D_J=-32\pi^2\int_0^\infty r\,dr\,
(D_0e_J+M_0K_J).
\tag{4.9}
\]
Direct differentiation gives
\(K_J/R_J^2=(\Delta^2+J^2/r^2)/f\) and
\(e_J/R_J^2=2\Delta(\Delta-1)+2J^2/r^2\).
The substitution \(x=f^{-1}\) reduces (4.9) to
\[
\begin{aligned}
\mathscr D_J
={}&-8\pi\Delta c_J^2
\bigl[
\Delta^2B(\Delta,J+1)
+J^2B(\Delta+1,J)
-\Delta B(2\Delta-1,J+1)
\bigr]\\
={}&-4\Delta^2+
\frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J}.
\end{aligned}
\tag{4.10}
\]
For \(J=0\), the \(J^2\) term is omitted before evaluating the beta function. For \(J>0\), use
\(J^2B(\Delta+1,J)=\Delta J B(\Delta,J+1)\).
This evaluates an infinite family of original canonical integrals, rather than fitting finitely many seeds.

Let \(x_{k\ell}\) be the distinguishable crossed primary coefficient. Free endpoint Clebsch–Gordan probabilities give
\[
\mathscr D_J=\sum_{k=0}^Jw_{Jk}x_{k0},\qquad
\sum_kw_{Jk}=1,\quad
w_{J0}=\frac{(\Delta)_J}{(2\Delta)_J},\quad
w_{JJ}=\frac{(\Delta)_J}{(2\Delta+J-1)_J}>0.
\tag{4.11}
\]
Starting at \(J=0\), this triangular system uniquely gives
\[
x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},
\qquad x_{k0}=-4\Delta^2\quad(k\ge1).
\tag{4.12}
\]
No high-spin growth hypothesis has entered.

## 4.3 The Einstein equation supplies the remaining dynamical recurrence

The source-Casimir route is an efficient all-label evaluation of the same four-linear pairing on the matching domain of Proposition PHY-04. It uses the Einstein equation, not just global symmetry. For symmetric tensors define
\[
\mathcal Pq=q-\frac12g_0\operatorname{tr}q,\quad
C_\nu[q]=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu\operatorname{tr}q,\quad
\mathcal Cq=\frac12(\Box+6)q-g_0\operatorname{tr}q .
\]
The off-shell tensor identity is
\[
\mathcal E^{(1)}q
=-\mathcal P(\mathcal C-2)q
+\mathcal P\nabla_{(\mu}C_{\nu)}[q].
\tag{4.13}
\]
It does not impose de Donder gauge. Applying it to the response leg and transferring the proper-gauge derivative against conserved sources reduces the crossed Einstein equation to a local stress contraction.

Put \(h_n=\Delta+n\), \(C_n=h_n(h_n-1)\). The resulting discrete equation is
\[
(\mathcal L_k+\mathcal L_\ell-2)x_{k\ell}=S_{k\ell},
\tag{4.14}
\]
\[
\begin{aligned}
(\mathcal Lf)_n&=a_n(f_{n+1}-f_n)+c_n(f_{n-1}-f_n),\\
a_n&=\frac{(n+1)(\Delta+n)(2\Delta+n-1)}
{2(2\Delta+2n-1)},\\
c_n&=\frac{n(\Delta+n-1)(2\Delta+n-2)}
{2(2\Delta+2n-1)} .
\end{aligned}
\tag{4.15}
\]
The independent local source calculation gives
\[
\begin{aligned}
S_{nn}&=\frac{4(C_n-\mu)(2C_n+\mu)}{2h_n-1},\\
S_{n+1,n}=S_{n,n+1}
&=\frac{4h_n(n+1)(2\Delta+n-1)(2h_n^2-\mu)}
{(2h_n-1)(2h_n+1)},\\
S_{k\ell}&=0\qquad(|k-\ell|\ge2).
\end{aligned}
\tag{4.16}
\]
Appendix C derives the local scalar/vector source normalizations and proves the hypergeometric coefficient identity converting (4.13) to (4.14). These are the steps that make the recurrence dynamical.

The identities
\[
\mathcal L1=0,\qquad \mathcal LC_n=2C_n-\mu
\tag{4.17}
\]
show that \(u_n=4\mu-8C_n\) solves the constant-tail equation. Starting from (4.12), the zero-source region \(k\ge n+2\) propagates a constant upper-triangular row into the next row. The diagonal equation, whose coefficient is negative, then gives
\[
x_{k\ell}=u_{\min(k,\ell)}\quad(k\ne\ell),\qquad
x_{nn}=u_n\frac{2h_n-2}{2h_n-1}.
\tag{4.18}
\]
The adjacent-band equation is an independent rational identity. Uniqueness follows without a condition at infinity: \(a_\ell>0\), so (4.14) solves for row \(\ell+1\) from rows \(\ell,\ell-1\); at \(\ell=0\), \(c_0=0\).

## 4.4 Annihilation channels and the final coefficient

Identical real scalars also have an annihilation pairing. A local rank-two primary source has center rotational weight at most two. Bose symmetry therefore leaves only spin zero and spin two. Their normalized responses, explicitly evaluated in Appendix C, give
\[
g^{\rm ann}_{n,0}
=-\frac{2(C_n+\mu)^2}
{(2h_n-3)(2h_n-1)(2h_n+1)},
\tag{4.19}
\]
\[
g^{\rm ann}_{n,2}
=\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h_n-1)(2h_n+1)(2h_n+3)} .
\tag{4.20}
\]

**Proposition PHY-05 (Einstein pair kernel).**
In the fixed canonical and matching source prescription above, the dimensionless pair coefficient is

\[
\boxed{
g_{n,s}(\Delta)=
\begin{cases}
\displaystyle
u_n\frac{2h_n-2}{2h_n-1}
-\frac{2(C_n+\mu)^2}
{(2h_n-3)(2h_n-1)(2h_n+1)},&s=0,\\[2mm]
\displaystyle
u_n+
\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h_n-1)(2h_n+1)(2h_n+3)},&s=2,\\[2mm]
u_n,&s\ge4 ,
\end{cases}
}
\tag{4.21}
\]

where \(n\ge0\) and \(s\) is even. The pair operator is
\[
w=\sum_{k+\ell\ {\rm even}}
\gamma_{k\ell}\,\Pi_k^L\Pi_\ell^R,\qquad
\gamma_{k\ell}=g_{\min(k,\ell),|k-\ell|},
\tag{4.22}
\]
and the descendants of \(|P_{k\ell}\rangle\) retain this coefficient:
\[
E_{k\ell;r_L,r_R}
=2\Delta+k+\ell+r_L+r_R
+G\gamma_{k\ell}+o(G).
\tag{4.23}
\]

At \(n=0\) the apparent \(\Delta=3/2\) singularity must be removed algebraically:
\[
g_{0,0}
=-4\Delta^2+
\frac{2\Delta^2(2\Delta+5)}
{(2\Delta-1)(2\Delta+1)} .
\tag{4.24}
\]
It gives \(-9/2\) at \(\Delta=3/2\). At that point the scalar-primary stress trace vanishes but the tensor itself need not vanish; its finite response must be obtained from the original source limit. The auxiliary no-radial-log de Donder obstruction at \((1+\sqrt5)/2\) is absent from this gauge-independent kernel.

The independent direct canonical construction is retained in Appendix A: finite rational circular matrix elements and invertible free Clebsch–Gordan reconstruction determine every pair coefficient without invoking (3.23) or (4.14). That construction and the compact source-Casimir expression agree on the stated prescription and in the independent tests below. The finite canonical theorem does not assert an additional all-label, symmetry-free summation proof of its rational formulas into (4.21).

For a small check with a genuinely nonzero virtual-boundary contribution, take \(\Delta=2\) and the normalized basis
\[
A=b^\dagger_{0,0}b^\dagger_{1,0}|0\rangle,\qquad
B=b^\dagger_{0,1}b^\dagger_{0,-1}|0\rangle ,
\]
where these subscripts are radial/angular labels. The original constraints and density moments give
\[
\mathsf C=
\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},
\qquad
\mathsf X=
\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
\tag{4.25}
\]
Their sum has eigenvectors \((A+B)/\sqrt2\), the ground-pair descendant, and
\((A-B)/\sqrt2\), the new spin-zero primary, with coefficients
\(-56/5\) and \(-1368/35\). This simultaneously tests the boundary term, Bose normalization, and equality of descendant coefficients.

## 4.5 The positive decomposition needed by the finite algorithm

For \(N\) scalar particles, let \(P,Q\) be total primary degrees and orient the notation so that \(P\ge Q\). The right pair Casimir is \(C_{ij}^R\), with eigenvalue \(C_\ell\) on pair label \(\ell\). Define
\[
a_{k\ell}=\gamma_{k\ell}-(4\mu-8C_\ell).
\tag{4.26}
\]

**Proposition PHY-06 (positive residual with exact channel support).**
For \(\Delta>1\) and \(k+\ell\) even,
\[
a_{k\ell}=0\ \Longleftrightarrow\ k\ge\ell+4,
\qquad
a_{k\ell}>0\ \Longleftrightarrow\ k\le\ell+2.
\tag{4.27}
\]
Consequently, on the physical Bose-primary space,
\[
\boxed{
W_N=b_N(Q)I+A_N,\qquad
A_N=\sum_{i<j}\sum_{k+\ell\ {\rm even}}
a_{k\ell}\Pi^L_{ij,k}\Pi^R_{ij,\ell}\ge0 ,
}
\tag{4.28}
\]
\[
\boxed{
b_N(Q)=2N\mu-
8\left(\frac{N\Delta}{2}+Q\right)
\left(\frac{N\Delta}{2}+Q-1\right)
=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).
}
\tag{4.29}
\]

For \(k\ge\ell\), spin at least four has zero residual and spin two has the strictly positive fraction (4.20). At \(k=\ell=0\), positivity follows from (4.24). For \(k=\ell=n\ge1\), the numerator of the spin-zero residual over
\((2h_n-3)(2h_n-1)(2h_n+1)\) is
\[
30C_n^2-20C_n\mu-24C_n-2\mu^2+12\mu .
\]
With \(r=\Delta-1>0\), \(j=n-1\ge0\), it equals
\[
\begin{aligned}
&8r^4+80r^3j+120r^3+160r^2j^2+480r^2j+362r^2\\
&\quad+120rj^3+540rj^2+772rj+348r
+30j^4+180j^3+386j^2+348j+98,
\end{aligned}
\tag{4.30}
\]
which is positive. If \(k<\ell\), add the strictly positive
\(8(C_\ell-C_k)\) to the residual based on the smaller label.

Finally,
\[
\sum_{i<j}C_{ij}^R
=C_{\rm tot}^R+(N-2)\sum_iC_i^R,\qquad
C_i^R=\frac{\mu}{4},
\tag{4.31}
\]
obtained by expanding the quadratic total Casimir, proves (4.29).
The projectors for different pairs need not commute. Positivity alone gives
\[
\ker A_N
=\bigcap_{i<j}
\{\Psi:\text{every supported pair component obeys }k_L\ge k_R+4\}.
\tag{4.32}
\]
This elementary support statement is enough to start the finite spectral algorithm. The complete collision-ideal and logarithmic-symbol classification will be developed later.

