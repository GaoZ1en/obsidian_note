---
paper id: 2607.07342v1
title: Horizon-Restricted Leading Soft QED as Open Quantum System
authors:
  - Soo-Jong Rey
publication date: 2026-07-08T12:31:14
abstract: |-
  The paper formulates black-hole-horizon-induced decoherence of charged branch codes as leading-soft QED restricted to an exterior algebra and expressed as an open quantum system. The fixed-history Feynman-Vernon identity remains exact, while unequal-history soft records crossing the horizon give a complementary channel. In the coherent eikonal regime this yields a completely positive Schur channel whose Gram matrix is built from horizon soft coherent-state overlaps, leading to eraser bounds, finite-time non-Markovianity tests, soft/hard scaling criteria, and a qutrit Bargmann holonomy observable.
comments: "32 pages, 3 figures embedded"
url: https://arxiv.org/abs/2607.07342v1
summary: "A high-priority soft/horizon paper because it turns leading soft QED records into a horizon complementary channel with explicit Gram, Schur, Feynman-Vernon, and soft phase-space formulas."
tags: []
---

Back to [[2026_07_09_overview]].

# Exterior algebra and dressed branch space

The paper separates Coulomb dressing from independent radiation. A controlled charged system has a finite branch basis $\{|a\rangle\}$ and branch currents $J_a^\mu(x)$. A physical branch is dressed as

$$\begin{align}
|a\rangle_{\rm dress}
=W_{\rm Coul}[J_a]|a\rangle_{\rm matter}\otimes|0\rangle_{\rm rad}.
\end{align}$$

The product input assumption is made after this gauge dressing. In branch notation,

$$\begin{align}
\rho_{\rm tot}^{\rm in}
=\rho_{\rm br}^{\rm in}\otimes\rho_{\rm rad}^{\rm in},
\qquad
\rho_{\rm br}^{\rm in}
=\sum_{a,b}\rho_{ab}|a\rangle\langle b|.
\end{align}$$

This matters because the coherence being tested is the branch coherence $\rho_{ab}$, not an undressed charged superposition that violates Gauss-law bookkeeping.

The late radiation algebra in a black-hole exterior is split schematically as

$$\begin{align}
{\cal A}^{\rm late}_{\rm rad}\simeq
{\cal A}_{\mathscr I^+}\vee{\cal A}_{\cal H^+}.
\end{align}$$

The detector algebra is

$$\begin{align}
{\cal A}_{\rm det}\subseteq
{\cal A}_{\mathscr I^+}\vee{\cal A}_{\rm lab},
\end{align}$$

and the complementary environment is

$$\begin{align}
{\cal A}_{\rm env}
=
{\cal A}_{\cal H^+}\vee
{\cal A}_{\mathscr I^+\setminus{\rm det}}
\vee
{\cal A}_{\rm hard,unres}\vee\cdots .
\end{align}$$

The central point is operational: "horizon decoherence" is not a claim that the Coulomb field is lost. It is a claim that a specified exterior algebra cannot control all unequal-history radiative records.

The source structure is:

- Sections 1-3: horizon-decoherence constraints, dressed branches, exterior algebra, and product initiality.
- Sections 4-6: import of flat-space soft-QED OQS, leading soft input, horizon projection, and the Schur channel.
- Section 7: Feynman-Vernon inclusivity, horizon Gram factors, and Bargmann holonomy.
- Section 8: kernel representations, exterior eraser bounds, finite-time control, soft/hard scaling, and material mimicry.
- Section 9: concrete qutrit interferometer tests and CP constraints.
- Appendices: asymptotic soft-record decoding, consistency boundaries, coherent-state overlap, Schur-channel Kraus representation, and relation to infrared-finite QED.

# Leading soft displacement and horizon projection

For a soft photon $q^\mu=\omega\hat q^\mu$, the leading soft factor is

$$\begin{align}
S^{(0)}_\lambda(q)
=e\sum_i\eta_i Q_i
\frac{p_i\cdot\varepsilon_\lambda(q)}{p_i\cdot q}.
\end{align}$$

The paper packages this as a map from a conserved branch current to one-particle radiative displacement:

$$\begin{align}
\alpha_a^{(0)}={\cal K}_\Omega J_a,\qquad
\alpha_a^{H,(0)}=P_H{\cal K}_\Omega J_a,
\end{align}$$

where $P_H$ projects onto the horizon output algebra. For a pair of branches,

$$\begin{align}
\Delta\alpha_{ab}^{H,(0)}
=
P_H{\cal K}_\Omega(J_a-J_b).
\end{align}$$

The leading horizon Gram entry is

$$\begin{align}
G_{ab}^{H,(0)}
=
\exp\left[
-\frac12\|\Delta\alpha_{ab}^{H,(0)}\|^2
+i\,{\rm Im}\langle\alpha_b^{H,(0)},\alpha_a^{H,(0)}\rangle
\right].
\end{align}$$

Equivalently,

$$\begin{align}
\Gamma_{ab}^{H,(0)}
=
\frac12
\int (J_a-J_b)_\mu
N_H^{(0)\mu\nu}
(J_a-J_b)_\nu.
\end{align}$$

This is the local-noise representation of the same positive kernel. The paper's convention is that the superscript $(0)$ marks the leading/eikonal soft sector only; subleading Low-Burnett-Kroll angular-momentum records are deferred.

# Schur channel and fixed-history inclusivity

The dressed branch evolution has the Stinespring form

$$\begin{align}
U_{\rm dress}:
|a\rangle_{\rm dress}\otimes|\Omega\rangle
\mapsto
|a\rangle_{\rm dress}^{\rm out}
\otimes|\Gamma_a^{\mathscr I^+}\rangle
\otimes|\Gamma_a^H\rangle .
\end{align}$$

After tracing the horizon output,

$$\begin{align}
\rho^{\mathscr I^+}_{ab}
=\rho_{ab}
|a,\Gamma_a^{\mathscr I^+}\rangle
\langle b,\Gamma_b^{\mathscr I^+}|
G^H_{ab},
\qquad
G^H_{ab}=\langle\Gamma_b^H|\Gamma_a^H\rangle.
\end{align}$$

If all radiation is traced,

$$\begin{align}
({\cal E}_{\rm rad}\rho)_{ab}
=G^{\mathscr I^+}_{ab}G^H_{ab}\rho_{ab}.
\end{align}$$

The black-hole contribution alone is the Schur multiplier

$$\begin{align}
({\cal E}_H\rho)_{ab}=G^H_{ab}\rho_{ab}.
\end{align}$$

The Feynman-Vernon identity remains

$$\begin{align}
{\cal F}[J,J]=1.
\end{align}$$

The nontrivial factor is therefore not a violation of fixed-history inclusivity. It is the residual unequal-history influence factor that remains outside the exterior algebra.

In a factorized out-channel regime,

$$\begin{align}
G^{\rm out}_{ab}=G^{\mathscr I^+}_{ab}(\chi)G^H_{ab}.
\end{align}$$

Exterior infrared inclusivity can change the $\mathscr I^+$ factor but cannot remove the complementary horizon factor. Thus

$$\begin{align}
V_{\rm max}^{\rm ext}(a,b)\le |G^H_{ab}|
\end{align}$$

under the factorized horizon-record assumptions.

# Bargmann holonomy in horizon soft phase space

For three branch histories, the channel holonomy is the Bargmann invariant

$$\begin{align}
{\cal B}_{123}=G_{12}G_{23}G_{31},
\qquad
{\cal U}_{123}=\frac{{\cal B}_{123}}{|{\cal B}_{123}|}
=e^{i\Theta_{123}}.
\end{align}$$

For coherent leading-soft records,

$$\begin{align}
G_{ab}^{H,(0)}
=\exp\left[
-\frac12\|\alpha_a^{H,(0)}-\alpha_b^{H,(0)}\|^2
+i\,{\rm Im}\langle\alpha_b^{H,(0)},\alpha_a^{H,(0)}\rangle
\right].
\end{align}$$

The horizon Bargmann invariant is

$$\begin{align}
{\cal B}^{H,(0)}_{123}
=
\exp\left[
-\frac12\sum_{\rm cyc}
\|\alpha_a^{H,(0)}-\alpha_b^{H,(0)}\|^2
+i\Theta^{H,(0)}_{123}
\right],
\end{align}$$

with

$$\begin{align}
\Theta^{H,(0)}_{123}
=
{\rm Im}\left(
\langle\alpha_2^H,\alpha_1^H\rangle
+\langle\alpha_3^H,\alpha_2^H\rangle
+\langle\alpha_1^H,\alpha_3^H\rangle
\right).
\end{align}$$

If $\Omega(\alpha,\beta)=2\,{\rm Im}\langle\beta,\alpha\rangle$, then

$$\begin{align}
\Theta^{H,(0)}_{123}
=\frac12[
\Omega(\alpha_1^H,\alpha_2^H)
+\Omega(\alpha_2^H,\alpha_3^H)
+\Omega(\alpha_3^H,\alpha_1^H)].
\end{align}$$

This is an oriented symplectic area in horizon soft phase space. It is not an associator or a soft-algebra three-cocycle; the paper treats it as a Bargmann invariant of the environmental Gram matrix.

The holonomy tests are

$$\begin{align}
{\cal U}_{132}^{H,(0)}
&=({\cal U}_{123}^{H,(0)})^{-1},\\
{\cal U}_{123}^{H,(0)}[\alpha_a+\beta]
&={\cal U}_{123}^{H,(0)}[\alpha_a],\\
{\cal U}_{123}^{H,(0)}{\cal U}_{134}^{H,(0)}
&={\cal U}_{124}^{H,(0)}{\cal U}_{234}^{H,(0)}.
\end{align}$$

If $G^H_{ab}=r_{ab}e^{i(\varphi_a-\varphi_b)}$, then every triple has $\Theta^H_{123}=0$. A residual nonzero triangular phase after exterior erasure falsifies that scalar branch-phase model.

Complete positivity gives the three-branch determinant bound

$$\begin{align}
1+2r_{12}r_{23}r_{31}\cos\Theta^H_{123}
-r_{12}^2-r_{23}^2-r_{31}^2\ge0.
\end{align}$$

# Feynman-Vernon kernel and factorization assumptions

The paper's open-system bridge is the Feynman-Vernon functional for two current histories:

$$\begin{align}
{\cal F}[J^+,J^-]
=\exp\left[
i\int J^-_\mu D_R^{\mu\nu}J^+_\nu
-\frac12\int J^-_\mu N^{\mu\nu}J^-_\nu
\right],
\end{align}$$

where

$$\begin{align}
J^- =J_+-J_-,\qquad
J^+=\frac12(J_++J_-).
\end{align}$$

Fixed-history inclusivity is the special case $J_+=J_-$, hence $J^-=0$ and

$$\begin{align}
{\cal F}[J,J]=1.
\end{align}$$

Unequal branch histories instead give

$$\begin{align}
G_{ab}={\cal F}[J_a,J_b].
\end{align}$$

The black-hole statement is made by replacing the full noise kernel with the complementary kernel associated with inaccessible exterior records:

$$\begin{align}
\Gamma_{ab}^{\rm comp}
=\frac12\int
(J_a-J_b)_\mu
N_{\rm comp}^{\mu\nu}
(J_a-J_b)_\nu .
\end{align}$$

The source is careful about factorization. In general,

$$\begin{align}
N=N_{\mathscr I\mathscr I}+N_{HH}
+N_{\mathscr I H}+N_{H\mathscr I}.
\end{align}$$

Only when the out-channel kernel is block diagonal, or effectively treated as a direct sum for the chosen detector algebra, can one write

$$\begin{align}
G_{ab}^{\rm out}
=G_{ab}^{\mathscr I^+}G_{ab}^{H}.
\end{align}$$

Without that assumption, the robust statement is not multiplicative factorization but complementary-channel distinguishability: exterior operations can erase only the part of the record available in the exterior algebra.

# Operational bounds, finite-time control, and soft/hard scaling

The exterior eraser problem asks how much coherence can be recovered by acting on the accessible output. For two branches the recovered visibility is bounded by the fidelity of the inaccessible horizon states,

$$\begin{align}
V_{\rm rec}(a,b)
\le F(\rho_a^H,\rho_b^H)^{1/2}.
\end{align}$$

For pure coherent horizon records this reduces to

$$\begin{align}
V_{\rm rec}(a,b)
\le |\langle\Gamma_b^H|\Gamma_a^H\rangle|
=\exp[-\Gamma^H_{ab}].
\end{align}$$

This is the operational version of the Schur channel: the loss of off-diagonal branch coherence is limited by how well the complementary horizon channel can distinguish the branch histories.

Finite-time control is expressed by a time-dependent Schur factor,

$$\begin{align}
({\cal E}_{t}\rho)_{ab}=G_{ab}(t)\rho_{ab},
\qquad
G_{ab}(t)=e^{-\Gamma_{ab}(t)+i\Phi_{ab}(t)}.
\end{align}$$

For a purely dephasing Markovian channel, CP divisibility imposes monotonic decoherence rates,

$$\begin{align}
\dot\Gamma_{ab}(t)\ge0
\end{align}$$

for every branch pair in the chosen family. A recovery or erasure pulse can produce non-monotonic visibility in the accessible subsystem, but then the correct diagnosis is non-CP-divisibility of the controlled reduced map, not a failure of fixed-history inclusivity.

The paper also separates soft and hard unresolved sectors by an instrumental resolution $\chi_\Lambda$. The soft contribution is controlled by the leading eikonal phase-space norm,

$$\begin{align}
\Gamma^{\rm soft}_{ab}
\sim \frac12\|\chi_\Lambda P_H{\cal K}_\Omega(J_a-J_b)\|^2,
\end{align}$$

while unresolved hard radiation contributes an additional kernel-dependent term. The proposed scaling distinction is that the soft part grows with the long observation time or large soft logarithm, whereas hard contamination is suppressed by detector switching and resolution. This is why the paper treats material mimicry as a kernel-matching problem:

$$\begin{align}
\int (J_a-J_b)_\mu
\left(N_{E_1}^{\mu\nu}-N_{E_2}^{\mu\nu}\right)
(J_a-J_b)_\nu=0
\end{align}$$

for the tested branch family. If a laboratory environment matches this quadratic form, it can mimic the same pairwise decoherence even though it is not a horizon.

# Exact completion, ASRD, and access-model boundaries

The asymptotic soft-record decoding appendices are not used as a hardness proof. Their role is to separate the physical channel statement from the computational problem of completing missing Gram data. Given partial access to pairwise overlaps, one can ask for a positive semidefinite completion of a Gram matrix compatible with observed branch records.

For three branches, complete positivity is exactly the determinant constraint already written above. For larger branch sets, the feasibility question becomes

$$\begin{align}
G\succeq0,\qquad G_{aa}=1,\qquad G_{ab}\ {\rm fixed\ on\ observed\ pairs}.
\end{align}$$

The appendices distinguish several access models:

- coherent circuit access can query phases and amplitudes and is naturally a BQP-type model;
- copy access estimates visibilities but does not by itself reveal all Bargmann phases;
- pairwise access fixes two-branch decoherence data but may leave triangular holonomies undetermined.

Thus ASRD is best read as a decoding/completion interface. It does not change the leading-soft Schur channel. It tells us which additional coherent operations are needed to reconstruct the horizon Gram matrix rather than only its absolute values.

# Local translation for current projects

- Soft-charge dictionary: the leading soft factor supplies the eikonal current record. The paper does not construct a surface charge algebra, but it gives an operational channel version of the same soft-record data.
- Horizon-boundary dictionary: $\mathcal H^+$ is a complementary output algebra, not an ordinary detector. This is relevant for horizon edge-mode and null-boundary discussions because it forces one to specify the accessible algebra before discussing information loss or decoherence.
- CPS dictionary: the phase of the triple Gram product is a symplectic area in soft one-particle phase space. It is a concrete example where symplectic geometry appears as an experimentally meaningful phase rather than only as a Poisson bracket.
- Channel dictionary: the Feynman-Vernon functional is the bridge between source currents and the Schur multiplier. The horizon restriction enters through the complementary kernel or projection, not through a change in the fixed-history identity.
- Operational dictionary: eraser bounds, CP-divisibility tests, and Gram-completion constraints are experimental or quantum-information versions of soft-record bookkeeping. They are useful when a charge note needs to say what data are actually measurable by an exterior algebra.
- Project extension: if current charge notes discuss memory/soft data at horizons, this paper provides a clean channel-theory language: branch currents, projected radiative displacement, Gram matrix, Schur channel, CP constraints, and the access-model distinction between pairwise decoherence and triangular phases.

# Verification log

## Checked

- Mathematica checked the $3\times3$ Gram determinant formula. For

$$\begin{align}
G=
\begin{pmatrix}
1&r_{12}&r_{31}e^{-i\Theta}\\
r_{12}&1&r_{23}\\
r_{31}e^{i\Theta}&r_{23}&1
\end{pmatrix},
\end{align}$$

the determinant simplifies to

$$\begin{align}
\det G=
1+2r_{12}r_{23}r_{31}\cos\Theta
-r_{12}^2-r_{23}^2-r_{31}^2.
\end{align}$$

- Mathematica also expanded the Kraus-form Schur multiplier in spectral notation. The off-diagonal output has the expected form $\rho_{12}\sum_\alpha \lambda_\alpha v_{1\alpha}\overline{v_{2\alpha}}$, i.e. $\rho_{12}G_{12}$ when $G$ is the Gram matrix.

## Blocked

- The horizon projection $P_H{\cal K}_\Omega$ and the black-hole noise kernel $N_H^{(0)}$ were not independently derived. That would require a background-specific radiative Green function and horizon mode projection.
- The proposed qutrit interferometer is source-derived. I did not model a laboratory protocol or detector response.
- The Feynman-Vernon kernel, eraser bounds, soft/hard scaling discussion, and ASRD access-model statements are source-derived. I checked only the finite-dimensional Gram/Schur algebra recorded above.

## Failed

- No failed independent check was found in the calculations attempted here.
