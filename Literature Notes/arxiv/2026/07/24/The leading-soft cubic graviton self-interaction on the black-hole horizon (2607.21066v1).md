---
paper id: 2607.21066v1
title: The leading-soft cubic graviton self-interaction on the black-hole horizon
authors:
  - Ayanendu Dutta
publication date: 2026-07-23T08:59
abstract: |-
  The Einstein--Hilbert action is expanded to cubic order in the even Regge--Wheeler sector of the Gaddam--Groenenboom--'t Hooft near-horizon framework. The paper proves that the strict leading-soft cubic bulk self-coupling of the purely traceless longitudinal block vanishes because its two-dimensional Einstein--Hilbert density is a total derivative, derives a trace-sector vertex, and studies a truncated second-quantized Hamiltonian by exact diagonalization and Qiskit/Aer simulations. It reports a resonance-free boost spectrum, weak nonthermal dressing, a cubic-vertex-opened four-scalar channel, symmetry-sensitive spectral statistics, and a hardware noise budget.
comments: "27 pages, 24 captioned figures, 4 tables"
url: https://arxiv.org/abs/2607.21066v1
summary: "The strict two-dimensional Euler-density collapse is independently verified, but the claimed finite-radius Hamiltonian is not reconstructible from the source because its general weight, canonical reduction, mode normalization, curvature corrections, and off-shell prescription are missing or inconsistent."
tags: []
---

Back to [[2026_07_24_overview]].

# Verdict

The paper contains one strong, self-contained geometric result:

> In the even Regge--Wheeler, GGV longitudinal sector, after the strict leading-soft reduction and with the transverse scalar \(K\) switched off, the two-dimensional longitudinal block contributes only the Euler density. Its cubic bulk self-vertex therefore vanishes identically.

This statement is independently reproducible. For
\[
g^{(2)}_{ab}
=
\begin{pmatrix}
-1+\kappa u & \kappa v\\
\kappa v & 1+\kappa u
\end{pmatrix},
\]
the \(O(\kappa^3)\) coefficient of \(\sqrt{-g^{(2)}}R^{(2)}\) has thirteen monomials and equals an explicit total divergence.

The stronger physical claim—a finite-\(R_S\), canonically normalized, second-quantized cubic graviton Hamiltonian with determined multi-\(\ell\) weights—is **not established by the current source**. The source does not supply the general weight \(W(\lambda_1,\lambda_2,\lambda_3)\), the finite-curvature terms, exact boost modes and inner product, the constraint/Legendre reduction from action to Hamiltonian, or a reproducible off-shell prescription. Several numerical and notation claims also conflict internally.

This note therefore treats the Euler-density theorem as checked, the numerical model as a clearly delimited effective model, and the finite-radius GR interpretation as blocked.

# How to read this long paper

- **Essential analytic core:** Sections on the cubic Einstein--Hilbert expansion, the two-block vanishing theorem, the surviving trace-sector vertex, partial-wave projection, and the explicit-collapse appendix.
- **Essential model boundary:** The second-quantization and “full simulation Hamiltonian” sections, because this is where unprinted mode and canonical data enter.
- **Technical reference:** The encoding/validation sections, result subsections, resource tables, and measurement-protocol appendix.
- **Optional background:** The broad quantum-simulation survey in the introduction and the extended hardware-scaling discussion.
- **Read critically:** The off-diagonal-weight discussion, noise budget, and claims that a varying kernel produces a specific multi-\(\ell\) shift. These are the locations of the decisive source inconsistencies.

# Complete source map

| Source section | What it constructs or claims |
|---|---|
| 1. Introduction | Positions the missing \(hhh\) vertex relative to the GGV exchange/eikonal program and previews the quantum-simulation model. |
| 2. Near-horizon framework and matter template | Defines \(g=g^0+\kappa h\), even Regge--Wheeler fields \((h_{ab},K)\), the GGV boost spectrum, and the reduced matter vertex with \(\gamma=\kappa/R_S\). |
| 3. Cubic Einstein--Hilbert vertex | Expands \(\sqrt{-g}R\), derives the densitized Euler-homogeneity relation, and argues for a direct gauge-fixed expansion rather than an Isaacson-current ansatz. |
| 4. Leading-soft vertex | Introduces the two-block metric, proves the \(K=0\) Euler-density collapse, and extracts a surviving trace/\(K\) interaction and its equal-\(\ell\) weight. |
| 5. Near-horizon specialization | Retains longitudinal derivatives while dropping transverse derivatives and \(O(R_S^{-2})\) background curvature. |
| 6. Partial-wave projection | Reduces angular dependence to Gaunt coefficients and states magnetic, triangle, and parity selection rules. |
| 7. Second quantization | Expands in unspecified boost modes, retains \(\Delta N=\pm1\), and postulates \(H_3\). |
| 8. Full simulation Hamiltonian | Adds the GGV scalar exchange vertex, identifies exact discrete charges, and isolates the four-scalar cascade. |
| 9. Simulation framework | Defines encodings, per-mode and total-\(N\) cuts, Trotter circuits, measurement protocols, and the E1/E2/E3 validation stack. |
| 10. Results | Reports multiplicity, diagonal-ensemble, ablation, multi-\(\ell\), entanglement, cascade, spectrum, and OTOC results. |
| 11. Hardware resources | Counts gates and studies depolarizing noise. |
| 12--13. Discussion and conclusion | Interprets the small-register behavior as perturbative rigidity and lists modeling limitations. |
| Appendix A: conventions and vertex table | Prints the equal-\(\ell\) weight, selected off-diagonal ratios, and the eleven \(\ell=2\) vertices. |
| Appendix B: validation logic | Separates tests of \(H_3\) from the earlier \(2\to2N\) exchange result. |
| Appendix C: modeling choices | Collects parity, soft, low-\(\ell\), ghost, vacuum, number-changing, and radiative-sector assumptions. |
| Appendix D: numerical coefficient checks | Tests \(-1/4\) and \(\kappa^3/6\) with nonlinear lattice GR and discusses four derivation engines. |
| Appendix E: explicit collapse | Prints \(\mathcal L^{(1,2,3)}\) and the total-divergence potentials for the traceless two-dimensional block. |
| Appendices F--G | Calibrate the elastic inverted oscillator and state the measurement circuits. |
| Appendix H | Extrapolates mode, qubit, vertex, and gate counts and argues for tensor-network rather than current-hardware scaling. |
| Appendix I | Collects supplementary figures. |

# Fields, reductions, and conventions

| Symbol | Meaning and boundary of use |
|---|---|
| \(R_S\), \(\mu=R_S^{-1}\) | Schwarzschild radius and curvature scale. |
| \(x^a=(t,z)\) | Longitudinal near-horizon coordinates. |
| \(y^A\) | Coordinates on the transverse \(S^2\). |
| \(h_{ab}\) | Even-parity longitudinal metric perturbation. |
| \(K\) | Transverse scalar controlling the sphere-radius perturbation. |
| \(\bar H\) | Longitudinal trace amplitude used in the GGV residue. |
| \(\hat h_{ab}\) | Paper's shifted longitudinal perturbation; called “traceless,” but its trace convention is inconsistent across the source. |
| \(\lambda_\ell=\ell^2+\ell+1\) | GGV angular eigenvalue. |
| \(\omega_\ell=\sqrt{\lambda_\ell}/R_S\) | Boost-mode frequency imported from the quadratic GGV theory. |
| \(\gamma=\kappa/R_S\) | Dimensionless reduced gravitational coupling. |
| \(W(\lambda_1,\lambda_2,\lambda_3)\) | Polarization weight after inserting residue data; only its diagonal form is printed. |
| \(\mathcal G_{123}\) | Scalar Gaunt coefficient on \(S^2\). |
| \(\mathcal K_{123}\) | Longitudinal boost-mode overlap; simulations set it to one. |
| \(b^\dagger_{\ell m},b_{\ell m}\) | Creation/annihilation operators for the GGV longitudinal, non-radiative mode—not a radiative RWZ graviton. |
| \(N_h,N_\phi\) | Longitudinal graviton and scalar occupation numbers in the truncated model. |
| \(Q=N_\phi+2N_h\) | Charge conserved by \(H_2+H_{\rm int}\) but violated by \(H_3\). |

The source uses mostly-plus signature in the derivation, with
\[
\kappa=\sqrt{8\pi G_N},\qquad
g_{\mu\nu}=g^0_{\mu\nu}+\kappa h_{\mu\nu}.
\]
The calculation is restricted to even parity and \(\ell\ge2\). It uses the GGV in/out vacuum, not a general horizon Hadamard state, and excludes the odd-parity, radiative, and gauge-special low-multipole sectors.

# Equation route from the Einstein--Hilbert density to the model

| Source label | Formula carrying the argument | Dependency role |
|---|---|---|
| `action` | \(S=\frac12\int\sqrt{-g}[R/(8\pi G_N)-(\nabla\phi)^2]\) | Fixes \(\kappa=\sqrt{8\pi G_N}\) and the common gravity/matter normalization. |
| `S2` | \(S^{(2)}=-\frac14\int\sqrt{-g^0}\,h^{\mu\nu}G^{(1)}_{\mu\nu}\) | Quadratic normalization used by the self-sourcing identity. |
| `euler3` | \(S^{(3)}=-\frac{\kappa}{6}\int h_{\mu\nu}\mathfrak G^{(2)\mu\nu}\) | Exact integrated cubic homogeneity relation. |
| `dilatonid` | Warped-product identity for \(\sqrt{-g}R\) | Separates the two-dimensional Euler block from the \(K\)-sector. |
| `L1coll`--`L3coll` | Explicit divergences for \(\mathcal L^{(1,2,3)}\) | Proves the strict \(K=0\) bulk-vertex obstruction. |
| `Weq` | \(W(\lambda,\lambda,\lambda)=-3\lambda(2\lambda^2+\lambda+3)/(\lambda+1)^2\) | Reconstructible diagonal survivor after inserting GGV residue data. |
| `GauntDef` | Product of two Wigner-\(3j\) symbols | Fixes all angular selection rules and the \(\ell=2\) vertex support. |
| `modeexp`, `kernel` | Boost-mode expansion and \(\mathcal K_{123}\) | Missing dynamical/canonical input between the action and oscillators. |
| `H3`, `Vgrav` | \(H_3=\sum V(b^\dagger b^\dagger b+\mathrm{h.c.})\) | Defines the effective simulated model; not fully derived from the printed source. |
| `Q` | \(Q=N_\phi+2N_h\) | Gives the exact model selection rule for the scalar cascade. |
| `gap` | \(\Delta\omega\to1/(2R_S)^+\) | Explains why the retained cubic terms remain off shell. |
| `powerlaws` | \(P_4\propto g_3^2g_m^6t^8\) | Follows from one \(H_3\), three matter vertices, and fourth-order time dependence. |

# Dependency map: the verified branch and the blocked branch

The source has a clean geometric branch:
\[
\sqrt{-g}R
\longrightarrow
\text{densitized cubic identity}
\longrightarrow
\text{two-block reduction}
\longrightarrow
\sqrt{-g^{(2)}}R^{(2)}
\longrightarrow
\mathcal L^{(3)}=\partial_aV^a.
\]
This establishes the strict \(K=0\) vanishing theorem.

The surviving branch is only partly closed:
\[
K\ne0
+\text{GGV residue data}
\longrightarrow
W(\lambda,\lambda,\lambda)
\longrightarrow
\text{Gaunt projection},
\]
but the next implication,
\[
\{\text{general }W,\ \text{finite curvature},\
\text{normalized boost modes},\ \text{constraints/Legendre transform}\}
\stackrel{?}{\longrightarrow}
H_3,
\]
is blocked by missing source data. All simulation conclusions are conditional on supplying that implication.

# From Einstein--Hilbert expansion to a densitized self-source

The action is
\[
S=\frac12\int d^4x\,\sqrt{-g}
\left[\frac{R}{8\pi G_N}
-\nabla_\mu\phi\nabla^\mu\phi\right].
\tag{action}
\]
The determinant expansion around a Ricci-flat background is
\[
\sqrt{-g}
=\sqrt{-g^0}
\left[
1+\frac{\kappa h}{2}
+\kappa^2\left(
\frac{h^2}{8}
-\frac{h_{\alpha\beta}h^{\alpha\beta}}{4}
\right)+O(\kappa^3)
\right].
\tag{measure}
\]
The paper organizes the quadratic action as
\[
S^{(2)}
=-\frac14\int d^4x\,\sqrt{-g^0}\,
h^{\mu\nu}G^{(1)}_{\mu\nu}.
\tag{S2}
\]

For the cubic term, the useful object is not an \(\eta\)-raised, measure-free effective stress tensor but the densitized Einstein tensor
\[
\mathfrak G^{\mu\nu}=\sqrt{-g}\,G^{\mu\nu},
\]
with indices raised by the full metric. Euler homogeneity gives the integrated relation
\[
S^{(3)}
=-\frac{\kappa}{6}\int d^4x\,
h_{\mu\nu}\mathfrak G^{(2)\mu\nu}.
\tag{euler3}
\]
Equivalently, the source writes
\[
S_3
=\frac{\kappa^3}{6}
\int d^4x\,\sqrt{-g^0}\,
\hat h^{\mu\nu}t^{\rm grav}_{\mu\nu}
+\mathcal E_3,
\tag{S3}
\]
where \(\mathcal E_3\propto G^{(1)}\). The source does not print \(\mathcal E_3\) or show explicitly why it can be dropped in every retained matrix element.

The released nonlinear lattice script reproduces
\[
\frac{S^{(2)}}{\langle hG^{(1)}\rangle}=-\frac14,
\qquad
\frac{2s_2}{j_1}=\frac{3s_3}{j_2}=-1,
\]
with the densitized full-metric-raised current. Its negative control, using background-raised indices without the measure, is seed dependent.

# The two-block Euler-density theorem

The strict soft reduction treats the metric as a longitudinal two-dimensional block warped by a transverse radius \(\Omega\), with
\[
\Omega^2=1+\kappa K.
\]
For the flat-fibre identity used by the paper,
\[
\sqrt{-g}R
=\sqrt{-g^{(2)}}\left[
\Omega^2 R^{(2)}
+2(\nabla\Omega)^2
\right]
-4\partial_a\left[
\sqrt{-g^{(2)}}\,\Omega g^{(2)ab}\partial_b\Omega
\right].
\tag{dilatonid}
\]
When \(K=0\), the only surviving density is \(\sqrt{-g^{(2)}}R^{(2)}\), whose integral is topological. The source's theorem is therefore
\[
\mathcal L_3[\text{longitudinal block};K=0]
\equiv \partial_aV^a,
\qquad
\frac{\delta}{\delta h_{ab}}\int\mathcal L_3=0.
\tag{vanish}
\]

The appendix makes this explicit. Lorentzian tracelessness for
\(\eta_{ab}=\operatorname{diag}(-1,+1)\) gives
\[
h_{tt}=h_{zz}=u,\qquad h_{tz}=v,
\]
and
\[
g^{(2)}
=
\begin{pmatrix}
-1+\kappa u & \kappa v\\
\kappa v & 1+\kappa u
\end{pmatrix}.
\tag{g2traceless}
\]
Writing
\[
\sqrt{-g^{(2)}}R^{(2)}
=\sum_{n\ge1}\kappa^n\mathcal L^{(n)},
\]
the first three terms are
\[
\mathcal L^{(1)}
=\partial_t(u_t-v_z)+\partial_z(u_z-v_t),
\tag{L1coll}
\]
\[
\mathcal L^{(2)}
=-\left[\partial_t(uv_z)-\partial_z(uv_t)\right],
\tag{L2coll}
\]
and
\[
\mathcal L^{(3)}
=\partial_t\left[
\frac12(u^2-v^2)(u_t-v_z)
\right]
+\partial_z\left[
\frac12(u^2-v^2)(u_z-v_t)
\right].
\tag{L3coll}
\]
Thus
\[
\frac{\delta}{\delta u}\int d^2x\,\mathcal L^{(3)}
=
\frac{\delta}{\delta v}\int d^2x\,\mathcal L^{(3)}
=0.
\tag{ELzero}
\]

This theorem is exact only inside the stated reduction. It is not a gauge-invariant theorem about the full four-dimensional graviton, and it does not include the physical curvature of the transverse \(S^2\), odd parity, radiative RWZ modes, or terms suppressed by \(\mu^2\).

# The surviving \(K\)-sector and its diagonal weight

Keeping the transverse scalar gives the alternative nineteen-monomial cubic density
\[
\mathcal L_3
=K\,[\sqrt{-g^{(2)}}R^{(2)}]^{(2)}
+\frac12[\sqrt{-g^{(2)}}g^{(2)ab}]^{(1)}
\partial_aK\,\partial_bK
-\frac12K\eta^{ab}\partial_aK\,\partial_bK.
\]
The GGV residue data inserted by the source are
\[
P=\frac{\lambda}{\lambda+1},\qquad
B=0,\qquad
K=-1,\qquad
\bar H=-\frac{2}{\lambda+1},
\qquad
k^2=-\lambda\mu^2.
\]
On the equal-\(\lambda\) diagonal, the resulting polarization weight is
\[
\boxed{
W(\lambda,\lambda,\lambda)
=-\frac{3\lambda(2\lambda^2+\lambda+3)}
{(\lambda+1)^2}
}.
\tag{Weq}
\]
For the first physical multiplet, \(\ell=2\) and \(\lambda=7\),
\[
W(7,7,7)=-\frac{567}{16}=-35.4375,
\]
while
\[
W(\lambda,\lambda,\lambda)
=-6\lambda+9-\frac{21}{\lambda}
+\frac{33}{\lambda^2}+O(\lambda^{-3}).
\]

The general function \(W(\lambda_1,\lambda_2,\lambda_3)\) is never printed. The appendix gives selected ratios, then states that those ratios agree with none of the four off-shell prescriptions it tests. It also calls the diagonal result prescription independent while later noting that two prescriptions rescale that same diagonal. Therefore only the algebraic diagonal formula within the reduced vertex is presently reproducible.

# Angular projection and operator selection rules

The sphere integral is the scalar Gaunt coefficient
\[
\mathcal G[123]
=
\sqrt{\frac{(2\ell_1+1)(2\ell_2+1)(2\ell_3+1)}{4\pi}}
\begin{pmatrix}
\ell_1&\ell_2&\ell_3\\
0&0&0
\end{pmatrix}
\begin{pmatrix}
\ell_1&\ell_2&\ell_3\\
m_1&m_2&m_3
\end{pmatrix}.
\tag{GauntDef}
\]
It requires
\[
m_1+m_2+m_3=0,\qquad
|\ell_1-\ell_2|\le\ell_3\le\ell_1+\ell_2,\qquad
\ell_1+\ell_2+\ell_3\in2\mathbb Z.
\]
For the operator \(b^\dagger_1b^\dagger_2b_3\), the third harmonic is conjugated:
\[
\mathcal G_{\rm op}
=(-1)^{m_3}
\mathcal G[\ell_1m_1;\ell_2m_2;\ell_3,-m_3],
\qquad
m_1+m_2=m_3.
\]
This preserves \(L_z\). Folding the unrestricted creation pair to \(i\le j\) produces a factor two for \(i\ne j\).

# From a derivative action to the model Hamiltonian

The field expansion is written schematically as
\[
\hat h^{\ell m}_{ab}
=\sum_p
\left[
u^{(p)}_{ab}b_{\ell m}(p)
+u^{(p)*}_{ab}b^\dagger_{\ell m}(p)
\right],
\tag{modeexp}
\]
where \(p\) is a boost-frequency/channel label. The longitudinal overlap is
\[
\mathcal K_{123}
\propto\int d^2x\,
u_3^*\,\partial u_1\,\partial u_2.
\tag{kernel}
\]
The retained number-changing Hamiltonian is
\[
H_3
=\sum_{123}
V^{\rm grav}_{123}
\left(
b^\dagger_1b^\dagger_2b_3
+b^\dagger_3b_2b_1
\right),
\tag{H3}
\]
with
\[
V^{\rm grav}_{123}
=\gamma\,
W_{123}\,
\mathcal G_{123}\,
\mathcal K_{123}\,
\frac{1}{\sqrt{8\omega_1\omega_2\omega_3}}.
\tag{Vgrav}
\]
The \(\Delta N=\pm3\) terms are discarded because they are more off shell; this is not a rotating-wave approximation, since no retained cubic process is resonant.

The transition from the derivative action to this \(H_3\) is the main reconstruction gap:

1. exact boost modes and their inner product are absent;
2. the constraint reduction and Legendre transform are absent;
3. the time-slice Hamiltonian kernel is replaced by a spacetime integral;
4. the normalization \((8\omega_1\omega_2\omega_3)^{-1/2}\) is not derived;
5. it is unclear which momentum factors have already been absorbed into \(W\) and which remain in \(\mathcal K\);
6. action permutations, the action's \(1/2\), identical legs, ordered sums, and the folded-pair factor are not unified in one convention.

Accordingly, \(H_3\) should be read as an effective Hamiltonian inspired by the reduced vertex, not yet as a fully derived canonical horizon Hamiltonian.

# Exact model charge and the opened scalar cascade

The full model adds the scalar exchange vertex
\[
H_{\rm int}\sim b^\dagger aa+b\,a^\dagger a^\dagger
\]
to \(H_2+H_3\). Define
\[
Q=N_\phi+2N_h.
\tag{Q}
\]
For \(b^\dagger aa\),
\[
\Delta(N_h,N_\phi)=(1,-2),
\qquad
\Delta Q=0.
\]
For \(b^\dagger b^\dagger b\),
\[
\Delta(N_h,N_\phi)=(1,0),
\qquad
\Delta Q=2.
\]
Thus \(H_2+H_{\rm int}\) conserves \(Q\), whereas \(H_3\) changes it by \(\pm2\). Starting from two scalars,
\[
(N_h,N_\phi):
(0,2)\to(1,0)\to(2,0)\to(1,2)\to(0,4),
\]
so the minimal amplitude contains one \(H_3\) and three matter vertices:
\[
\mathcal A_{2\phi\to4\phi}
\propto g_3g_m^3t^4,
\qquad
P_4\propto g_3^2g_m^6t^8.
\tag{powerlaws}
\]
This is a genuine selection-rule consequence of the model. It does not establish that the channel has the quoted normalization in full gravity.

# Resonance-free boost spectrum

The quadratic spectrum is
\[
\omega_\ell=\frac{\sqrt{\ell^2+\ell+1}}{R_S}.
\tag{omegal}
\]
For a Gaunt-allowed process \(\ell_1+\ell_2\to\ell_3\), the smallest mismatch occurs at the largest allowed \(\ell_3=\ell_1+\ell_2\):
\[
\Delta\omega
=\omega_{\ell_1}+\omega_{\ell_2}-\omega_{\ell_1+\ell_2}.
\]
Using
\[
\sqrt{\ell^2+\ell+1}
=\ell+\frac12+\frac{3}{8(\ell+1/2)}+\cdots,
\]
one obtains
\[
R_S\Delta\omega\to\frac12^+.
\tag{gap}
\]
An exhaustive audit through \(\ell\le16\) gives
\[
\min R_S|\Delta\omega|
=0.5652958488
\]
at \((\ell_1,\ell_2,\ell_3)=(8,8,16)\).

The finite audit does **not** establish a global lower bound of \(0.565\), because the sequence approaches \(0.5\). The correct global statement is that the mismatch stays above \(1/(2R_S)\), with \(0.5653/R_S\) the minimum only inside the reported finite range.

# What the simulations actually measure

The released model uses three mutually checked representations:

- E1: dense Kronecker matrices;
- E2: direct occupation-basis matrices;
- E3: encoded Pauli operators and decomposed Suzuki--Trotter circuits.

Two truncations have different meanings:

- a per-mode cutoff maps directly to qubits but breaks \(L^2\);
- a total-\(N\) cutoff preserves the full \(SU(2)\) representation and is the appropriate cut for physical sector statistics.

The committed validation artifact reports E1/E2/E3 agreement at \(10^{-14}\)–\(10^{-13}\), exact \(L_z\), and
\[
\|[H,L^2]\|=22.16
\quad\text{(per-mode cut)},\qquad
\|[H,L^2]\|=6.7\times10^{-16}
\quad\text{(total-\(N\) cut)}.
\]
The norm convention is not stated.

## Weak dressing rather than thermalization

For the \(\ell=2\) multiplet at the representative reduced coupling, the source reports
\[
\eta_{\max}=0.1167,
\]
with a maximal \(d=4\to6\) shift of \(0.0144\). The diagonal ensemble has
\[
\bar p_N
=\{0.9415,0.0563,0.0020,2.4\times10^{-4},\ldots\},
\]
and
\[
d_{\rm eff}
=\left(\sum_n|c_n|^4\right)^{-1}
=1.062.
\tag{deff}
\]
It is far from thermal, Poisson, and Haar references. Its proximity to the reported microcanonical window is not ETH evidence because that window contains one eigenstate.

## Structure ablation and multi-\(\ell\) model dependence

The late-time inelasticity is sensitive to the GR-inspired Gaunt-weighted table:
\[
\eta_{\rm GR}=0.1034,\qquad
\eta_{\rm uniform}=0.1349,
\]
with shuffled tables spanning \(0.0142\)–\(0.1194\). The distribution shape is more robust, consistent with nonthermality being driven mainly by the resonance-free spectrum.

On \(\ell=2\oplus3\), the total-\(N\) sequence gives
\[
\eta=0.1354,\ 0.1285,\ 0.1235.
\]
The source separately quotes a “flat weight versus derived \(W\)” change
\[
\eta_{\rm late}:0.774\to0.708,\qquad
\operatorname{TV}=0.093.
\]
The state, time window, normalization, and coupling that relate these two very different inelasticity scales are not specified. More importantly, the off-diagonal \(W\) used for the second comparison is prescription dependent by factors of roughly three.

## Cascade, entanglement, spectra, and OTOCs

The source reports
\[
P_4^{\max}=2.14\times10^{-5}
\]
with \(H_3\) on and numerical zero with it off, together with fitted powers
\[
(2.000,6.000,7.92)
\]
against the predicted \((2,6,8)\). The two quoted coupling-12 yields, \(2.14\times10^{-5}\) and \(1.69\times10^{-5}\), are not assigned clearly to different time definitions.

The mode-bipartition entropy remains \(2.29\) nats below its Haar half-cut reference. Per-mode-cut spectra look GOE-like but are contaminated by broken \(L^2\). Total-\(N\) fixed-\((L^2,L_z)\) sectors give
\[
\bar r:0.351\to0.452(16),
\tag{rphys}
\]
which is suggestive but too small to establish a universality class.

The bosonic-quadrature OTOC is bounded at accessible sizes, so no Lyapunov exponent or MSS saturation is claimed. The circuit appendix instead uses unitary Pauli probes in
\[
C=2-2\operatorname{Re}F,
\]
and gives an opposite \(U/U^\dagger\) ordering from the main text for the controlled conjugation. These are two different observables/protocols and are not cleanly separated.

# Hardware budget and the false-inelasticity problem

For one Gray-encoded \(d=4\) Trotter step, the paper reports
\[
\begin{array}{c|c|c|c}
\text{register}&\text{qubits}&\mathrm{cx}&\text{depth}\\ \hline
3\ \ell=2\text{ modes}&6&3690&4909\\
5\ \ell=2\text{ modes}&10&12274&16934
\end{array}
\]
The depolarizing calculation is physically important because noise drives the state toward a maximally mixed distribution with
\[
\eta_{\rm mix}=0.953,
\]
manufacturing apparent particle production.

However, the stated “ten-percent-bias budget” is inconsistent with the source's own data. At
\[
p_2=5\times10^{-5},
\]
the committed artifact has
\[
\eta_{\rm ideal}=0.01730,\qquad
\eta_{\rm noisy}=0.66083.
\]
The relative bias is
\[
\frac{\eta_{\rm noisy}-\eta_{\rm ideal}}{\eta_{\rm ideal}}
=37.20,
\]
not \(0.10\). Thus \(5\times10^{-5}\) cannot be the ten-percent-bias threshold for the inelasticity defined in the same table.

The scaling appendix gives the exact mode count
\[
M(\ell_{\max})
=\sum_{\ell=2}^{\ell_{\max}}(2\ell+1)
=(\ell_{\max}+1)^2-4.
\tag{modecount}
\]
Its vertex counts are exact combinatorics, whereas the Pauli-string and gate counts are calibrated extrapolations. The \(\ell\le7\) estimate is 120 qubits and \(3.9\times10^6\) two-qubit gates per step. Given the observed low entanglement, the immediate scaling route is a symmetry-adapted occupation basis or tensor network, not present noisy hardware.

# Relation to CPS, horizon, and perturbative-gravity work

This is not a CPS charge paper: no presymplectic potential, boundary charge, or horizon edge mode is constructed. Its useful local translations are instead:

| Paper object | Local interpretation |
|---|---|
| \(h_{ab},K\) | Gauge-fixed longitudinal and transverse-sphere pieces of a near-horizon metric perturbation. |
| \(K=0\) theorem | A dimensional/topological obstruction inside the reduced field space, not a full gauge-invariant vanishing statement. |
| \(\mathfrak G^{(2)\mu\nu}\) | Densitized quadratic Einstein tensor that organizes cubic self-sourcing. |
| \(\mathcal G_{123}\) | Exact angular momentum intertwiner and selection-rule data. |
| \(\mathcal K_{123}\) | Missing radial/boost-mode dynamical information. |
| \(H_3\) | Effective number-changing operator after an unshown canonical reduction. |
| \(Q=N_\phi+2N_h\) | Model superselection charge, broken only by the cubic vertex. |

The main reusable lesson for a covariant calculation is methodological: prove the reduced geometric identity first, then perform the canonical or CPS reduction with the omitted boundary terms and constraints still visible. Here the first step succeeds; the second has not yet been supplied.

# Concrete follow-ups

1. Restore the actual \(S^2\) curvature in the warped-product identity and print every \(O(\mu^2)\) cubic term. This is required to test the claimed \(14\%\) correction.
2. Fix one set of normalized GGV boost modes and derive the symplectic inner product and oscillator brackets before writing \(H_3\).
3. Perform the Legendre transform with the even-RW constraints included; identify any horizon or radial boundary term.
4. Publish the complete \(W(\lambda_1,\lambda_2,\lambda_3)\) and state one unambiguous energy-conservation/off-shell prescription.
5. Re-run the multi-\(\ell\) comparison for all admissible prescriptions and report an interval rather than a single shift.
6. Correct the noise-budget definition and separate the quadrature OTOC from the unitary Pauli-probe circuit observable.

# Verification log

## Checked

- **Mathematica, independent two-dimensional calculation:** constructing the Christoffel symbols and Ricci scalar directly from \(g^{(2)}\) gives an \(O(\kappa^3)\) density with thirteen monomials. Subtracting the printed divergence potentials gives exactly zero.
- **Mathematica:** the diagonal weight evaluates to
  \[
  W(7,7,7)=-567/16=-35.4375,
  \]
  and expands as
  \[
  -6\lambda+9-21/\lambda+33/\lambda^2+\cdots.
  \]
- **Mathematica:** the Gaunt-allowed resonance audit through \(\ell\le16\) reproduces the minimum \(0.5652958488/R_S\) at \((8,8)\to16\).
- **Sage:** the Wigner-\(3j\) formula produces exactly eleven nonzero vertices for the unordered creation pairs of the \(\ell=2\) multiplet. Every term obeys \(m_1+m_2=m_3\), and the three printed operator-level witnesses reproduce \(0.2207\), \(-0.09011\), and \(0.1802\).
- **Mathematica:** occupation-number bookkeeping gives \(\Delta Q=0\) for \(b^\dagger aa\), \(\Delta Q=2\) for \(b^\dagger b^\dagger b\), the cascade
  \[
  (0,2)\to(1,0)\to(2,0)\to(1,2)\to(0,4),
  \]
  and probability powers \(g_3^2g_m^6t^8\).

## Reproduced with released code and data

- **Released nonlinear-GR computation, executed at full \(16^4\) resolution:** for four seeds,
  \[
  c_2=-0.2500000,\qquad
  2s_2/j_1=-1,\qquad
  3s_3/j_2=-1
  \]
  to the printed precision, while the negative control is non-universal.
- **Artifact consistency check:** the committed JSON reproduces the source's \(W(7)=-35.4375\), finite resonance minimum, validation residuals, cascade exponents, and the noisy \(\eta=0.66083\) value used above. This is an audit of the released data, not an independent physical validation of the Hamiltonian.

## Blocked

- The source archive itself omits the cited scripts; a separately linked GitHub repository was required. Its SymPy scripts could not be executed in the available Python runtimes because SymPy was absent and dependency installation is outside this run. The central total-derivative and diagonal-\(W\) claims were instead recomputed independently in Mathematica.
- The general \(W(\lambda_1,\lambda_2,\lambda_3)\) is not printed.
- The finite-\(S^2\)-curvature cubic terms behind the stated \(14\%\) estimate are not printed.
- The exact boost modes, inner product, canonical normalization, constraint reduction, and Legendre transform are absent.
- The field/action convention needed to make \(\hat h_{ab}\) traceless is not stated consistently.
- The physical meaning of the time-integrated \(\mathcal K\) in a Hamiltonian matrix element is not fixed.
- The numerical E1/E2/E3 agreement validates implementations of the same model, not the derivation of that model from the Einstein--Hilbert action.

## Failed

1. The main-text trace condition \(a=-c\) conflicts with the appendix's Lorentzian tracelessness condition \(h_{tt}=h_{zz}\), absent an unstated field redefinition.
2. The source says the full \(W(\lambda_1,\lambda_2,\lambda_3)\) is in the appendix; it is not.
3. The source simultaneously calls the diagonal \(W\) prescription independent and states that two listed prescriptions rescale it.
4. The H0/H2 prescriptions are written with indistinguishable frequency conditions, while the published off-diagonal ratios match none of H0--H3.
5. The finite audit value \(0.5653/R_S\) is not a global lower bound; the mismatch tends to \(0.5/R_S\).
6. The “ten-percent-bias” noise threshold contradicts the paper's own \(\eta_{\rm ideal}\) and \(\eta_{\rm noisy}\) values by more than two orders of magnitude.
7. The main text and appendix give opposite conjugation orders for the OTOC controlled evolution.
8. The paper calls Aer evolution exact even where the implemented approximation to \(e^{-iHt}\) is a finite-step decomposed Trotter circuit.
