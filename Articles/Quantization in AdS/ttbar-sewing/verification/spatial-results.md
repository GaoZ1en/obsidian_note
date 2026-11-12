# Spatial finite-cutoff Ising and history-sewing checks

NumPy 2.3.5; complex128/double precision. L=v=hbar=1.
Code SHA256: `3ba24bc92b158cfde9676d9f18be88e0db9557797a97c0ce10534ad0527dd6e1`.

PBC N=6, two spatial interfaces at a half-chain cut, a=0.166666666667, eta=lambda/a²=0.1, lambda=0.00277777777778.
The deformed spin Hamiltonian is a first-order TTbar regulator, not an exact finite-lambda continuum construction.
Independent local-rule minus regional-plus-crossing residual: 4.4448e-15.
Crossing Pauli terms (with multiplicity): 16; sum of factor norms C=6.95929581789.
Time Taylor order=100; unitary/Euclidean tail majorants=1.2169e-99/1.4816e-67.

| retained crossing order | unitary operator error | Euclidean operator error | real-time Duhamel tail bound | Euclidean Duhamel tail bound |
|---:|---:|---:|---:|---:|
| 0 | 0.48516236639 | 0.500837168416 | 0.971507116191 | 2.45336433248 |
| 2 | 0.0196499291112 | 0.0522347574365 | 0.0501886257919 | 0.506968944897 |
| 4 | 0.000239353799296 | 0.00210642671361 | 0.000777832128112 | 0.0314283746227 |
| 6 | 1.38720605521e-06 | 4.35633716705e-05 | 5.74046609146e-06 | 0.00092777612192 |
| 8 | 4.68696962118e-09 | 5.42271156741e-07 | 2.47129862916e-08 | 1.59764856842e-05 |
| 10 | 1.03618399739e-11 | 4.49042577567e-09 | 6.96374904432e-11 | 1.80077365968e-07 |
| 12 | 1.66950131495e-14 | 2.64708774991e-11 | 1.38365903177e-13 | 1.43121569863e-09 |
| 14 | 7.29762409906e-15 | 1.16932140374e-13 | 2.04230385116e-16 | 8.44999314439e-12 |

Ground-state extraction from sewn e^(-beta H), beta=0.16 (largest eigenvector):
- Ground energy direct: -0.2643359818094; sewn-vs-direct vacuum fidelity: 1.
| observable | undeformed direct | deformed direct | deformed sewn |
|---|---:|---:|---:|
| vacuum <Z0 Z2> | 0.566452912373 | 0.566948935001 | 0.566948935001 |
| spatial half-chain S1 | 0.587737910765 | 0.587763967713 | 0.587763967713 |
| spatial half-chain S2 | 0.442707930545 | 0.442530148575 | 0.442530148575 |
| Tr rho_A² | — | 0.642408972961 | 0.642408972961 |
Independent explicit partial-trace purity: 0.642408972960977.
Vacuum Wightman <Z0(t) Z2(0)>, t=0.08: direct=0.573645489151-7.77230274503e-05j, sewn=0.573645489151-7.77230274326e-05j.

Nonequilibrium product Gibbs state beta_L=0.15, beta_R=0.45, time=0.08.
J_R=i[V,H_R] measures energy absorbed into the bare right-region Hamiltonian through BOTH PBC interfaces.
Interaction energy is retained; J_L+J_R need not vanish separately.
| observable | direct | sewn |
|---|---:|---:|
| Delta <H_R> | 0.428067938716 | 0.428067938716 |
| <J_R> (hot left, cold right) | 9.80301196484 | 9.80301196484 |
| <J_R> (cold left, hot right) | 4.53305022032 | 4.53305022032 |
| bias-odd directional current | 2.63498087226 | 2.63498087226 |
The bias-odd current is half the difference of the two quenches; the bias-even part includes switching on the interaction.
Centered time derivative of <H_R>: 9.80301196443; continuity residual |<J_L+J_R+dV/dt>|=6.691e-16.

Low-mode first-order slopes and an off-diagonal matrix element (not only energies):
The excited state contains the r=1/2,3/2 modes at BOTH Fermi points, i.e. the normalized level-(2,2) state.
Independent continuum targets are <V>=-pi²/144 and |<2,2|V|0>|=4pi².
| N | E0 after bulk subtraction | <V_a> | slope difference | off-diagonal magnitude | difference from 4pi² | excited-state eigenvector residual |
|---:|---:|---:|---:|---:|---:|---:|
| 4 | -0.26658736113 | -0.0800329054506 | -0.0114939859986 | 6.62741699797 | -32.8510006064 | 8.02794973293e-15 |
| 6 | -0.263908025705 | -0.0732181235136 | -0.00467920406157 | 19.7653718044 | -19.7130458 | 3.57465408149e-14 |
| 8 | -0.262981732339 | -0.0710957630313 | -0.0025568435793 | 27.1282900807 | -12.3501275236 | 2.29657994157e-13 |
| 10 | -0.262554978238 | -0.0701539383046 | -0.00161501885254 | 31.1672387336 | -8.31117887072 | 2.10229805371e-13 |

All assertions passed. These are finite-matrix numerical checks, not rigorous floating-point intervals.
The sewing theorem is analytic; numerical histories validate an independently assembled global matrix.
No fixed-physical-lambda a->0, spatial-entropy continuum limit, or all-orders TTbar equality is asserted.
