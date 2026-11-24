# Actual spatial-loop UV checks

Independent NumPy implementation of the specified PBC spin Hamiltonian and consecutive-four-Majorana interaction. No mode-cutoff counterterm is used.

L=1; double precision. The coefficient E2 is defined by E=E0+lambda E1+lambda² E2+... (no factorial).

Code SHA256: `59d74d2c17fe8c14439bd381cb03711b1bcfc96015d7fa5f3fd207ad1c375037`.

## Finite-spin ED against the derived four-particle loop

| N | ED E2mix | momentum E2mix | absolute residual | variance residual | plane-Wick vacuum-slope residual | NS parity residual |
|---:|---:|---:|---:|---:|---:|---:|
| 4 | -2.101059097692 | -2.101059097692 | 3.5527136788005e-15 | 7.8159700933611e-14 | 1.6792123247455e-15 | 1.5294556255259e-15 |
| 6 | -27.952456871072 | -27.952456871072 | 4.9737991503207e-14 | 9.0949470177293e-13 | 4.2327252813834e-15 | 3.2620920319981e-15 |
| 8 | -171.08979255738 | -171.08979255738 | 3.1263880373444e-13 | 7.2759576141834e-12 | 1.2774503677093e-13 | 3.333180072449e-14 |

At N=6: annihilator residual, largest two-creation vertex, largest full complex four-creation determinant residual, and free four-particle eigenstate residual:

`1.8755948482041e-15, 1.492139745108e-13, 6.0629215265593e-14, 1.3610120086483e-14`.

## Exact finite-NS sum, numerically evaluated

kappa_N=-a^6 E2mix/L=S_N/[4(2N)^3], with S_N the derived restricted four-mode sum.

| N | four-particle intermediate states | kappa_N | E2mix (L=1) |
|---:|---:|---:|---:|
| 4 | 1 | 0.0005129538812724632 | -2.101059097692009 |
| 6 | 3 | 0.0005991181599595381 | -27.95245687107221 |
| 8 | 8 | 0.0006526557638449989 | -171.0897925573834 |
| 12 | 33 | 0.0006992714197383383 | -2088.013270995962 |
| 16 | 86 | 0.0007171807677838801 | -12032.296652156 |
| 24 | 318 | 0.0007304641464671749 | -139593.872251177 |
| 32 | 790 | 0.0007352085632057932 | -789424.1836770077 |
| 48 | 2796 | 0.0007386273909773445 | -9033849.12453671 |
| 64 | 6786 | 0.0007398298551473838 | -50840720.51939889 |
| 96 | 23448 | 0.0007406906186251265 | -579781351.4835669 |
| 128 | 56238 | 0.000740992251753802 | -3258918387.580906 |
| 192 | 192048 | 0.0007412078200816718 | -37131916476.96127 |
| 256 | 457906 | 0.000741283291846394 | -208652697308.4622 |
| 384 | 1554528 | 0.0007413372075026272 | -2376857493357.205 |
| 512 | 3695630 | 0.000741356079410128 | -13355083851921.22 |

N=4 exact result: kappa_4=(2-sqrt(2))^(5/2)/512, E2mix=-8(2-sqrt(2))^(5/2).

## Direct bulk-momentum integral

| Gauss order per dimension | kappa integral |
|---:|---:|
| 16 | 0.00074138034226564284 |
| 24 | 0.0007413803443612262 |
| 32 | 0.00074138034437844138 |
| 48 | 0.00074138034437903531 |
| 64 | 0.00074138034437902696 |
| 96 | 0.00074138034437902154 |
| 128 | 0.00074138034437906046 |
| 192 | 0.00074138034437906002 |

The integral is derived before numerical evaluation. Convergence of deterministic quadrature is numerical evidence, not a certified error bound or a closed-form analytic evaluation.

Elapsed time: 1.101 s.
