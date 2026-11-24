# Same-regulator spatial second-order low-mode kernels

Independent NumPy exact-mode computation. L=1; NS even total parity. No TTbar eigenvalue is used.
P contains all even occupations of q=pi/(2N),3pi/(2N),pi-3pi/(2N),pi-pi/(2N).
Loop is the Hermitian Loewdin Q=1-P sum of the original consecutive-four-gamma Va.
V2loc is the supplied pairwise-inner-symmetric insertion (K33 coefficient -47/(24pi)); support offsets are NOT reduced before infinite-chain Wick subtraction.
RL means occupied j=(0,N-1), namely r=1/2 at each Fermi point; TT means j=(0,1,N-2,N-1).
Fock states are cdagger_j1 cdagger_j2 ... |0> with ascending j. This TT phase has Va(TT,vac)>0 and V2loc(TT,vac)->+4pi^3, opposite to the convention Va(TT,vac)=-4pi^2.
Independent direct-gamma N=8 max errors: full Va columns 8.4072858249e-13; Loewdin kernel 2.37198386674e-11; local V2 insertion 3.65325752218e-11.
Code SHA256: `c23c0fa722beece329be6882a3684c8112c12871328e3a7df88c6deaba51f2a2`.

| N | Q states coupled to P | smallest active denominator | loop(RL)-loop(vac) | a^4 difference | B(RL)-B(vac) | loop(TT,vac) | B(TT,vac) |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 8 | 38 | 8.828780137054 | -1113.390010649 | -0.2718237330687 | -844.2842815329 | 928.6466405068 | 1020.591114316 |
| 10 | 94 | 10.12465125788 | -3001.072193948 | -0.3001072193948 | -2725.845257277 | 2302.590681985 | 2405.69117444 |
| 12 | 198 | 10.85174383889 | -6002.864264633 | -0.2894899818978 | -5724.252152576 | 4109.354622053 | 4218.722308374 |
| 16 | 582 | 11.59117181258 | -16538.20586815 | -0.2523529948143 | -16256.18577864 | 8763.675950513 | 8879.395393947 |
| 24 | 2366 | 12.12951775556 | -68089.75943762 | -0.2052281040148 | -67805.27935561 | 21767.85561764 | 21888.17293589 |
| 32 | 6070 | 12.31996229733 | -192919.0866087 | -0.1839819780433 | -192633.7404553 | 39573.98919911 | 39695.92579737 |
| 48 | 21966 | 12.45663994849 | -887343.8117617 | -0.1671579265381 | -887057.8453731 | 89697.54317231 | 89820.63919055 |
| 64 | 53734 | 12.50460456948 | -2700002.112149 | -0.1609326667875 | -2699715.928361 | 159328.5822353 | 159452.0845657 |

## Exact N=8 nonzero offdiagonal kernel

The vacuum-to-TT Loewdin loop has exactly six common Q intermediate states:
(1,3,4,6), (1,2,5,6), (0,3,5,6), (1,2,4,7), (0,3,4,7), (0,2,5,7).
Exact root-of-unity simplification gives 32 sqrt(2 [190+88 sqrt(2)+sqrt(7738+2569 sqrt(2))]) = 928.646640506845.
The expression is strictly positive; an identity CT has exactly zero matrix element in this channel.

## N=8 complete P matrices

Basis order (occupied mode indices j, qj=(2j+1)pi/(2N)): [(), (0, 1), (0, 6), (1, 6), (0, 7), (1, 7), (6, 7), (0, 1, 6, 7)].

Loop matrix (real part; imaginary parts are phase-roundoff):
```
[[  -140.4524376568      0.                0.                0.                0.                0.                0.              928.6466405068]
 [     0.             -632.7504134957      0.                0.                0.                0.                0.                0.          ]
 [     0.                0.            -4015.4993485398      0.                0.                0.                0.                0.          ]
 [     0.                0.                0.            -6813.0182797001  -3079.5208744257      0.                0.                0.          ]
 [     0.                0.                0.            -3079.5208744257  -1253.8424483062      0.                0.                0.          ]
 [     0.                0.                0.                0.                0.            -4015.4993485398      0.                0.          ]
 [     0.                0.                0.                0.                0.                0.             -632.7504134957      0.          ]
 [   928.6466405068      0.                0.                0.                0.                0.                0.           -10002.6355738242]]
```

Local insertion matrix:
```
[[-4.4387293826e-01 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00  9.1944473809e+01]
 [-0.0000000000e+00 -3.5168715194e+01 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00]
 [-0.0000000000e+00 -0.0000000000e+00  2.9482134637e+03 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00]
 [-0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00  1.2715286201e+04  2.8914377051e+03 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00]
 [-0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00  2.8914377051e+03  2.6866185618e+02 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00]
 [-0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00  2.9482134637e+03 -0.0000000000e+00 -0.0000000000e+00]
 [-0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -3.5168715194e+01 -0.0000000000e+00]
 [ 9.1944473809e+01 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00 -0.0000000000e+00  1.9032720442e+04]]
```

## Checks and limits

All kernels are Hermitian by explicit numerical assertion. The NS-to-plane bilinear part of Va is diagonal: no vacuum-to-two-particle channel is omitted.
These numbers show a state-dependent UV kernel and a genuine offdiagonal kernel; an identity counterterm cannot remove either difference.
They do not uniquely determine a full local C2,a, finite Wilson coefficients, or a renormalized continuum kernel. Power-law trends are finite numerical evidence, not a proof of asymptotics.
