# Same-spatial-regulator second-order Wilson kernel: a non-scalar result

## Result

**The actual second-order high-mode kernel of the supplied spatial \(V_a\) is not an identity operator.** In the precise NS low-mode space defined below, its vacuum-to-four-particle matrix element at \(N=8,L=1\) is exactly

\[
\boxed{
 K^{\rm loop}_{TT,0}
 =32\sqrt{2\left(190+88\sqrt2+\sqrt{7738+2569\sqrt2}\right)}
 =928.646640506845099624261073656\ldots>0.
}
\]

This is a same-regulator operator calculation, not a fit to exact \(T\bar T\) energies. An identity subtraction has zero matrix element in this channel. The computed nonvacuum diagonal differences and this offdiagonal kernel grow strongly over \(N=8,\ldots,64\). The supplied finite local insertion does not cancel that growth. These finite-cutoff results establish a non-scalar matching problem; they **do not determine unique Wilson coefficients, prove the large-\(N\) asymptotics, or construct the full \(C_{2,a}\)**.

Only this review, the new [exact-mode computation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_wilson_checks.py>), and its new [Markdown output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-wilson-results.md>) are written. Existing notes and scripts are not modified. The calculation does not repeat the vacuum bulk-loop integral.

## 1. Regulator, fields, and state frame

The input is exactly \(H_{0,a}\) and \(V_a\) in [the original Hamiltonian, equations (6)–(8)](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md#L80-L116>), not a Hamiltonian defined from a desired spectrum. Set

\[
L=1,\quad a=N^{-1},\quad M=2N,\quad d=a/2,\quad
q_j=\frac{(2j+1)\pi}{M},\quad j=0,\ldots,N-1,
\]
\[
\gamma_m=\sqrt{\frac2M}\sum_j
 \left(e^{iq_jm}c_j+e^{-iq_jm}c_j^\dagger\right),
\qquad \epsilon_j=\frac{2\sin q_j}{a}.
\]

The \(c_j\) satisfy the canonical CAR and annihilate the NS vacuum. The sector has antiperiodic gamma continuation \(\gamma_{m+M}=-\gamma_m\) and **even total Fock parity**, hence is the physical even-spin-parity NS sector. Both \(r=1/2\) and \(r=3/2\) modes at both Fermi points are included. Specifically,

\[
\mathcal I=\{0,1,N-2,N-1\},\qquad
P=\operatorname{span}\{|S\rangle:S\subset\mathcal I,\ |S|\ {\rm even}\},
\qquad \dim P=8.
\]

States are
\(|S\rangle=c_{j_1}^\dagger\cdots c_{j_s}^\dagger|0\rangle\), with ascending \(j_1<\cdots<j_s\). In particular,

\[
|RL\rangle=c_0^\dagger c_{N-1}^\dagger|0\rangle,
\qquad
|TT\rangle=c_0^\dagger c_1^\dagger c_{N-2}^\dagger c_{N-1}^\dagger|0\rangle.
\]

The name \(RL\) therefore denotes the physical NS state with \(r=1/2\) occupied at each Fermi point, not an \(RL\) mass insertion. The phase of this \(|TT\rangle\) has
\(\langle TT|V_a|0\rangle>0\). It is opposite to the convention in which the continuum value is \(-4\pi^2\); all offdiagonal entries, including the local second-order insertion, transform together under this phase change.

Free energies in denominators are the exact lattice energies. The code uses gaps \(e_S=\sum_{j\in S}\epsilon_j\); the common NS vacuum energy, including the retained Casimir term, cancels from every denominator. No continuum dispersion replaces \(\epsilon_j\).

## 2. Exact normal-polynomial formula for the original vertex

For positive odd \(r\), write the finite-circle minus infinite-chain contraction as

\[
\delta_r=-\frac{2i}{M\sin(\pi r/M)}+\frac{2i}{\pi r},
\qquad \delta_{2r}=0.
\]

Re-Wick-ordering the original four consecutive gammas gives

\[
\begin{aligned}
V_a={}&V^{(4)}_{a,\mathrm{NS}}+\sum_j b_j n_j+v_0\mathbf1,\\
b_j={}&\frac{i}{2a^3}
 \left[(2\delta_1+\delta_3)\sin q_j+\delta_1\sin3q_j\right],\\
v_0={}&\frac{M}{8a^3}(\delta_1^2+\delta_1\delta_3),\qquad n_j=c_j^\dagger c_j.
\end{aligned}
\]

Thus the plane-versus-NS bilinears are fully retained. They are diagonal; there is no omitted vacuum-to-two-particle channel.

For ascending creator and annihilator index sets \(C,A\), with \(|C|+|A|=4\), define

\[
p=(-q_j:j\in C;\ +q_j:j\in A),\qquad
\Delta(p)=\prod_{u<v}(e^{ip_v}-e^{ip_u}).
\]

Then the complete NS-normal quartic is

\[
\boxed{
V^{(4)}_{a,\mathrm{NS}}
 =\sum_{|C|+|A|=4}
 \frac{\Delta(-q_C,+q_A)}{2Ma^3}
 \mathbf1_{\sum_{j\in A}q_j-\sum_{j\in C}q_j\in2\pi\mathbb Z}
 c_C^\dagger c_A.
}
\]

Here \(c_C^\dagger\) and \(c_A\) are each in ascending index order; they act on a state from the right. \(C\) and \(A\) may intersect. The normalization follows directly from four factors of \(\sqrt{2/M}\), the spatial sum \(M\), and \((8a^3)^{-1}\): their product is \((2Ma^3)^{-1}\). The Vandermonde is the determinant of the four consecutive-position Fourier rows. Momentum selection is exact on the finite ring.

This formula and CAR action give every \(\langle k|V_a|S\rangle\) needed below. It is not an ansatz for their low-momentum dependence.

## 3. Hermitian Loewdin kernel and its finite intermediate sum

Define

\[
\boxed{
K^{\rm loop}_{ab}
=\frac12\sum_{k\notin P}
 \langle a|V_a|k\rangle\langle k|V_a|b\rangle
 \left[\frac1{e_a-e_k}+\frac1{e_b-e_k}\right],
\qquad
B=PV_{2,\mathrm{loc},a}P+K^{\rm loop}.
}
\]

All intermediate states are exact free-lattice Fock states in the same NS even sector. The code enumerates the actual nonzero \(V_a|P\rangle\) support and sums it, rather than imposing a sharp continuum mode cutoff. There is no active \(P\)-\(Q\) energy degeneracy for the displayed calculations; the smallest active denominators are reported in the output. If such a degeneracy were present, this \(P\) would need enlargement rather than assigning a denominator by hand.

### The exact \(N=8\) channel

At \(N=8\), the common nonzero \(Q\) support of \(V_a|0\rangle\) and \(V_a|TT\rangle\) consists of just six four-particle states. Their mode-index sets and contributions are

| \(k\) | contribution to \(K^{\rm loop}_{TT,0}\) |
|---|---:|
| \((1,3,4,6)\) | \(15.2847275945868\) |
| \((1,2,5,6)\) | \(47.3968151029736\) |
| \((0,3,5,6)\) | \(-102.915803258454\) |
| \((1,2,4,7)\) | \(-102.915803258454\) |
| \((0,3,4,7)\) | \(148.295859389807\) |
| \((0,2,5,7)\) | \(923.500844936386\) |

For a reproducible exact expression, let \(T=\{0,1,6,7\}\), \(E(S)=16\sum_{j\in S}\sin[(2j+1)\pi/16]\). For the six rows let

\[
s_k=(-1,-1,+1,+1,-1,-1),\quad
u_k=16\Delta(-q_k),\quad
w_k=16s_k\Delta(-q_{k\setminus T},+q_{T\setminus k}).
\]

The result boxed at the beginning is the exact finite sum

\[
\frac12\sum_{k\ {\rm in\ table}}\overline{w_k}u_k
 \left[-\frac1{E(k)}+\frac1{E(T)-E(k)}\right].
\]

Its simplification to the positive nested radical was checked with exact roots of unity in Wolfram, including an exact `FullSimplify[result>0] == True` result and no kernel messages; the [actual Wolfram output:5](</Users/koishi/.codex/mcp-results/evaluate_mathematica-D4hgL8/result.txt#L5>) records both results. The complete self-contained input is preserved in the appendix below. Double precision agrees with this exact value. The finite nonzero offdiagonal claim is therefore stronger than an asymptotic numerical extrapolation.

## 4. Same-regulator finite data, including the supplied local insertion

The local insertion used here is **the supplied pairwise-inner-symmetric representative**

\[
V_{2,\mathrm{loc},a}
=-\frac7{6\pi}K_{42,a}-\frac{47}{24\pi}K_{33,a}
 -\frac1{180\pi^2}Q_{5,a},
\]

with exactly the real three-site \(R_m,L_m\) filters and central differences in the question. This is **not** the full-determinant midpoint finite part with a different \(K_{33}\) coefficient. In the present \(|TT\rangle\) phase its fixed-low-mode vertex approaches \(+4\pi^3\), not \(-4\pi^3\).

Infinite-chain Wick contractions are evaluated on the **unwrapped stencil offsets before the ring seam is applied to the fields**. No contraction distance is replaced by its shortest periodic representative. The support is \(-6,\ldots,6\) gamma sites; all runs use \(N\ge8\), so this test does not hide the \(N=6\) 13-site alias problem. In particular, all finite-lattice mixed \(R,L\) contractions are retained before Wick reduction.

| \(N\) | \(K_{RL,RL}-K_{0,0}\) | \(a^4(K_{RL,RL}-K_{0,0})\) | \(K_{TT,0}\) | \(B_{TT,0}\) |
|---:|---:|---:|---:|---:|
| 8 | -1113.390010649 | -0.271823733069 | 928.646640507 | 1020.591114316 |
| 16 | -16538.20586815 | -0.252352994814 | 8763.675950513 | 8879.395393947 |
| 32 | -192919.0866087 | -0.183981978043 | 39573.98919911 | 39695.92579737 |
| 64 | -2700002.112149 | -0.160932666788 | 159328.5822353 | 159452.0845657 |

The omitted \(N=10,12,24,48\), the smallest denominators, and the complete \(N=8\) matrices are in the [output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-wilson-results.md>). The local insertion's \(RL\)-minus-vacuum value stays finite in this test: it is \(269.105729116\) at \(N=8\) and \(286.1837878\) at \(N=64\). It does not remove the displayed nonvacuum growth.

The scaled diagonal column is deliberately **not** called a proved \(a^{-4}\) asymptotic coefficient. The data are non-monotone at the smallest sizes. Likewise, \(K_{TT,0}\) is consistent with a dimension-four quartic UV direction growing like \(a^{-2}\), but a single matrix element does not identify a unique \(T\bar T\) Wilson coefficient: dimension-six finite terms, derivative-frame choices, and other local discretizations must be controlled in a full matching calculation.

## 5. Which local directions are allowed through dimension six?

This section classifies a **possible subtraction basis**, not the fitted coefficients of that basis. Use the identity-family restriction (even fermion number in each chirality), spatial parity \(R(x)\mapsto L(-x)\), time reversal interchanging the two real chiral fields and conjugating \(i\), and identify integrated spatial total derivatives. Full fermion Wick ordering is the plane prescription throughout.

A useful basis of local integrated directions is

\[
\begin{array}{c|l}
\text{density dimension }\Delta &\text{integrated operators}\\\hline
0&\int dx\,\mathbf1\\
2&H_0=\int(-i:RR':+i:LL':)/2\\
4&Q_3=i\int(:RR''':-:LL''':),\quad
  V_1=-\int:RR'LL':\\
6&Q_5=i\int(:RR^{(5)}:-:LL^{(5)}:),\\
 &K_{42}=\int(:RR'''LL':+:RR'LL''':),\quad
 K_{33}=\int:RR''LL'': .
\end{array}
\]

The notation \(Q_3,Q_5\) labels the odd derivative order, not the density dimension; they are the chiral spin-four and spin-six bilinears.

The elementary completeness argument in this symmetry class is:

1. A nonzero integrated chiral bilinear has odd total derivative order. Integration by parts reduces it to \(\int RR^{(2s+1)}\), and parity fixes the relative left sign. Up to dimension six this gives precisely \(H_0,Q_3,Q_5\).
2. Four same-chirality full-Wick fermions require distinct jets \(0,1,2,3\); their density dimension is at least eight. The quartics of dimension at most six are therefore \(2R2L\). Dimension four gives \(:RR'LL':\).
3. The possible integrated dimension-five quartic is proportional to \(\int(:RR''LL':-:RR'LL'':)\). It is parity even but time-reversal odd, and so is absent with the stated time-reversal symmetry. It cannot simply be ignored if that symmetry is dropped.
4. At dimension six, write \(K_2=\int(:R'R''LL':+:RR'L'L'':)\). Exact spatial integration by parts gives \(K_2+K_{42}+2K_{33}=0\); the two surviving quartic directions are \(K_{42},K_{33}\).
5. A full-Wick six-fermion monomial cannot have dimension six. Already the unrestricted \(3R3L\) allocation needs jets \(0,1,2\) on each side and density dimension nine; the identity-family restriction raises the minimum further.

For a local second-order coefficient, dimensional analysis therefore permits, schematically,

\[
C_{2,a}=\frac{c_0L}{a^6}\mathbf1+
 \frac{c_H}{a^4}H_{0,a}+
 \frac1{a^2}(c_3Q_{3,a}+c_TV_a)
 +c_5Q_{5,a}+c_{42}K_{42,a}+c_{33}K_{33,a}+\cdots.
\]

The \(c\)'s may include scale dependence and finite matching choices. This display does **not** assert that all coefficients are nonzero, that a single operator discretization is preferred, or that a power-divergent series has already been proved. Changing the bulk subtraction in \(H_0\) shifts the identity coefficient. A Wilson condition must also specify the finite low-energy reference kernel and the operator/unitary frame; eigenvalues alone cannot fix the mixed derivative direction.

### Is a mass-family counterterm required?

Not by the symmetries of this regulator. The original \(H_{0,a}\) and consecutive-four-gamma \(V_a\) are invariant under the exact one-gamma-site translation with the NS seam. In the low-mode expansion this acts as translation on \(R\) and minus translation on \(L\). The energy-family mass density \(iRL\), and its derivative descendants with odd left fermion number, carry the odd character under that translation and are forbidden. The supplied insertion has an even number of \(L\)'s and preserves this symmetry as well. Thus a mass-family term must not be added merely because it is allowed by spin translation by one full Ising site; that weaker symmetry misses the regulator's duality/one-gamma translation. Breaking this symmetry in a different regulator would reopen mass tuning.

The precise scope is the **fixed-NS CAR automorphism** \(\gamma_m\mapsto\gamma_{m+1}\), with the antiperiodic seam. Its real orthogonal one-particle matrix has determinant \(+1\) for even \(M\), so it has a parity-preserving implementation in the NS Fock representation. The chosen momentum-occupation \(P\) commutes with it; consequently the same-regulator Loewdin kernel inherits the symmetry. This establishes the exclusion for the low-external-momentum bulk kernel in this sector. It does **not** assert a site-local half-translation of the full PBC spin tensor-product theory or of each spatial region: on the full spin chain the corresponding duality can change boundary/sector data. A complete spin-sector or regional realization must be treated separately rather than silently inferred from the NS CAR statement.

The present data establish that the **identity direction alone is insufficient to subtract the computed non-scalar high-mode kernel**. They do not establish that every allowed direction above is required. In particular, they do not separate \(H_0\) from \(Q_3\) using one nonvacuum diagonal difference.

## 6. Verification and remaining gap

**Verified:** the exact Fourier normalization; the plane-minus-circle bilinear and constant terms; all \(P\)-to-\(Q\) couplings used by the finite Loewdin sum; numerical Hermiticity; the exact positive \(N=8\) six-channel radical; and the displayed finite nonvacuum/offdiagonal kernels. At \(N=8\), a separate direct gamma/CAR action of the original plane-Wick polynomial gives maximum absolute errors \(8.41\times10^{-13}\) for the entire \(V_a|P\rangle\) columns and \(2.38\times10^{-11}\) for the Loewdin kernel. A direct real-stencil, infinite-chain-Wick evaluation of the supplied local insertion agrees with its mode/determinant implementation within \(3.66\times10^{-11}\). These are two computational implementations within this calculation.

**Fresh independent channel check:** the sibling researcher `spatial-loop-uv` was given only the \(N=8\) regulator, \(P\), ascending-creator state convention and Loewdin definition, not this channel's candidate value, radical, or intermediate-state list. Without reading this review or the new script, they independently formed the 256-dimensional CAR gamma matrices and the original plane-Wick polynomial, obtaining \(928.6466405068454+1.6\times10^{-12}i\). Their separate exact mixed-determinant reduction gives, for \(r=\sqrt2\), \(s=\sin(\pi/8)\), \(c=\cos(\pi/16)\),

\[
\frac{16[4s(62+43r)+94+65r]}
 {sc[(12+8r)s+4+3r]}.
\]

Wolfram exact simplification verifies that this independent expression minus the radical above is zero, with no messages. The independent computation reproduces the same six nonzero channel contributions; the additional vacuum-coupled state \((2,3,4,5)\) has zero \(\langle k|V_a|TT\rangle\). This is a fresh verification of the **specified finite offdiagonal kernel**, not an independent proof of the entire local-basis classification or of UV asymptotics. Earlier communication with that researcher concerned the shared Fourier normalization of a different, vacuum-loop calculation; the new offdiagonal answer itself was withheld until their check returned.

**Assumptions:** fixed finite \(P\), the exact spatial NS regulator, even total parity, the specified pairwise-inner-symmetric second-order local frame, and the stated parity/time-reversal/duality symmetries for the local basis. Floating-point arrays use NumPy complex128; the exact radical check uses Wolfram algebra, not a numerical interval claim.

**Not verified:** a uniform large-cutoff expansion, all divergent or logarithmic Wilson coefficients, held-out offdiagonal success after a multi-operator match, an all-sector/Ramond extension, a regulator-independent finite \(C_{2,a}\), or a completed quantum canonical/stress-flow derivation. No desired \(T\bar T\) eigenvalue was used to obtain any number in this review. The exact nonzero same-regulator kernel is the finite, checkable conclusion; full Wilson matching remains open.

## Appendix: exact Wolfram reproduction

This input uses no imported project definitions, machine-precision constants, fitted energies, or pre-supplied candidate radical. The phase signs are the CAR action signs of the ascending normal monomials in the six displayed channels.

```wolfram
Block[{$Messages = {}, $MessageList = {}},
 Module[{tt = {0, 1, 6, 7},
   sets = {{1, 3, 4, 6}, {1, 2, 5, 6}, {0, 3, 5, 6},
           {1, 2, 4, 7}, {0, 3, 4, 7}, {0, 2, 5, 7}},
   signs = {-1, -1, 1, 1, -1, -1}, q, en, vd, ev, terms, result},
  q[j_] := (2 j + 1) Pi/16;
  en[s_List] := 16 Total[Sin[q[#]] & /@ s];
  vd[p_List] := Times @@ Flatten[
    Table[Exp[I p[[j]]] - Exp[I p[[i]]], {i, 1, 3}, {j, i + 1, 4}]];
  ev = en[tt];
  terms = Table[
    With[{k = sets[[r]]},
     With[{cc = Complement[k, tt], aa = Complement[tt, k]},
      With[{v0 = 16 vd[-(q /@ k)],
            vt = 16 signs[[r]] vd[Join[-(q /@ cc), q /@ aa]],
            ek = en[k]},
       Conjugate[vt] v0/2 (-1/ek + 1/(ev - ek))]]], {r, 6}];
  result = FullSimplify[ComplexExpand[Total[terms]]];
  <|"ExactKernel" -> result,
    "PositiveExact" -> FullSimplify[result > 0],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]]
```

Recorded output:

```wolfram
<|ExactKernel -> 32*Sqrt[2*(190 + 88*Sqrt[2] +
                     Sqrt[7738 + 2569*Sqrt[2]])],
  PositiveExact -> True, Messages -> {}|>
```
