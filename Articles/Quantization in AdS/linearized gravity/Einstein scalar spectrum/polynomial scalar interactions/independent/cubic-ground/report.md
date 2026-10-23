# Independent cubic two-particle ground binding in global AdS3

## Result

For radius one, the fast boundary condition, \(\Delta>1\), and precisely
\[
H=H_0+\lambda_3 V,\qquad
V=\frac1{3!}\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,:\!\phi^3\!:\,,
\]
normal ordered in the free global vacuum, write the formal second-order shifts as \(E_N=N\Delta+\lambda_3^2\epsilon_N^{(2)}+\cdots\), with \(|N\rangle=(a_{00}^\dagger)^N|0\rangle/\sqrt{N!}\). The connected answer is
\[
\boxed{\epsilon_2^{(2)}-2\epsilon_1^{(2)}+\epsilon_0^{(2)}=b(\Delta)}
\]
where
\[
\boxed{
 b(\Delta)=\sum_{n=0}^{\infty} C_n^2
 \left[\frac1{2(\Delta-2n)}-\frac2{\Delta+2n}
       -\frac1{2(3\Delta+2n)}\right],\qquad
 C_n=\frac{(-1)^n(1-\Delta/2)_n}
 {2\sqrt{2\pi}\,(3\Delta/2-1)_{n+1}}.
}\tag{1}
\]
At \(\Delta=2k\), the resonant term \(n=k\) means the **full degenerate-space projected resolvent**, not division by zero: its matrix element vanishes exactly, and that projected term is zero. In fact all \(n\ge k\) overlaps vanish, so the sum then terminates at \(k-1\).

A closed special-function form with no singular lower parameters anywhere on \(\Delta>1\) is
\[
\boxed{
 b(\Delta)=\frac{\displaystyle
 \frac{3\Delta-2}{8(2\Delta-1)}-
 {}_4F_3\!\left(\begin{matrix}
 1,\ 1-\Delta/2,\ 1-\Delta/2,\ \Delta/2\\
 3\Delta/2,\ 3\Delta/2,\ 1+\Delta/2
 \end{matrix};1\right)}{\pi\Delta(3\Delta-2)^2}.
}\tag{2}
\]
In particular,
\[
\boxed{b(2)=-\frac5{192\pi}},\qquad
\boxed{b(3/2)=\frac{15\pi-58}{120\pi}
       =-0.0288497783221654912432543045934\ldots}.
\]
The coefficient is strictly negative for every \(\Delta>1\). It is UV finite as a connected quantity: no order-\(\lambda_3^2\) quartic counterterm is required. Absolute vacuum energy does require its own subtraction/counterterm; identity and quadratic counterterms cancel out of this combination.

This is a perturbative spectral statement. A real cubic potential alone is unbounded below, so it does not establish a nonperturbatively stable vacuum or an exact global ground state of the full theory.

## 1. Conventions and normalized modes

The metric is
\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\qquad m^2=\Delta(\Delta-2).
\]
The KG product and oscillator convention agree with the authoritative
[formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L61-L77>) and
[quantization convention](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L134-L145>):
\[
(u_i,u_j)=i\int \frac{r\,dr\,d\theta}{1+r^2}
 (u_i^*\partial_tu_j-u_j\partial_tu_i^*)=\delta_{ij},
\qquad[a_i,a_j^\dagger]=\delta_{ij}.
\]
Set \(z=(1+r^2)^{-1}\). Only angular momentum zero can couple to two ground modes. Choose the positive-at-origin radial phase
\[
u_n(t,r)=e^{-i\omega_nt}f_n(r),\qquad
 f_n=\frac{z^{\Delta/2}}{\sqrt{2\pi}}
 P_n^{(0,\Delta-1)}(2z-1),\qquad
 \omega_n=\Delta+2n.
\tag{3}
\]
These are the \(p=q=n\) modes. In particular \(u_0\) is exactly the ground mode specified in the question. Jacobi orthogonality gives
\[
\int_0^1 dz\,z^{\Delta-1}
 [P_n^{(0,\Delta-1)}(2z-1)]^2=\frac1{\Delta+2n},
\]
so \(2\omega_n\int r\,dr\,d\theta\,f_n^2/(1+r^2)=1\), with no additional frequency factor in (3).

**Phase map.** The repository phase communicated after this derivation uses
\(P_n^{(\Delta-1,0)}(1-2z)=(-1)^nP_n^{(0,\Delta-1)}(2z-1)\).
Thus \(f_n^{\rm repo}=(-1)^nf_n\) and
\[
 C_n^{\rm repo}=\frac{(1-\Delta/2)_n}
 {2\sqrt{2\pi}(3\Delta/2-1)_{n+1}}.
\]
Every answer here involves \(C_n^2\) and is phase independent.

The overlap is
\[
 C_n=\int r\,dr\,d\theta\,f_0^2f_n
 =\frac1{2\sqrt{2\pi}}\int_0^1dz\,
 z^{3\Delta/2-2}P_n^{(0,\Delta-1)}(2z-1).
\]
Using
\[
\int_0^1dz\,z^{a-1}P_n^{(0,b)}(2z-1)
 =\frac{(-1)^n(b+1-a)_n}{(a)_{n+1}},
\quad a=3\Delta/2-1>0,
\]
proves the overlap in (1). In particular
\(C_0=1/[\sqrt{2\pi}(3\Delta-2)]\).

## 2. All cubic intermediate-state sectors and cancellations

Use a common finite set of one-particle modes as regulator, including the ground oscillator. This makes the following manipulations finite-dimensional at the order in question. Write
\[
\phi=f_0X+\chi,\qquad X=a+a^\dagger,
\]
where \(\chi\) contains only the other oscillators and their vacuum is denoted \(|0_\chi\rangle\). Then
\[
 V=\frac{C_0}{6}:X^3:
   +\frac12:X^2:B+\frac12XC+\frac16D,
\tag{4}
\]
\[
 B=\int r\,dr\,d\theta\,f_0^2\chi,
 \quad C=\int r\,dr\,d\theta\,f_0:\chi^2:,
 \quad D=\int r\,dr\,d\theta\,:\chi^3:.
\]
On \(|N\rangle\otimes|0_\chi\rangle\), the four terms create respectively zero, one, two and three nonground quanta. These sectors are mutually orthogonal, so there are no interference terms between them. This decomposition includes the pure-creation cubic term; it is not a number-conserving approximation.

### Zero nonground quanta

The four amplitudes from \(C_0:X^3:/6\) are

| Ground occupation after the vertex | Amplitude | Energy denominator |
|---|---:|---:|
| \(N-3\) | \(C_0\sqrt{N(N-1)(N-2)}/6\) | \(3\Delta\) |
| \(N-1\) | \(C_0(N-1)\sqrt N/2\) | \(\Delta\) |
| \(N+1\) | \(C_0N\sqrt{N+1}/2\) | \(-\Delta\) |
| \(N+3\) | \(C_0\sqrt{(N+1)(N+2)(N+3)}/6\) | \(-3\Delta\) |

Forbidden negative occupations have zero amplitude. Their summed shift is
\[
 \epsilon_N^{(0\chi)}=
 \frac{C_0^2}{\Delta}
 \left(-\frac56N^2+\frac16N-\frac1{18}\right).
\tag{5}
\]
For \(N=0,1,2\), the dimensionless factors are respectively
\(-1/18,-13/18,-55/18\). Their connected combination is
\[
 b^{(0\chi)}=-\frac{5C_0^2}{3\Delta}.
\tag{6}
\]
This is exactly the \(n=0\) term in (1). Treating that internal ground oscillator as distinguishable would give incorrect individual energies; (5) explicitly handles its Bose factors.

### One nonground quantum

Only the radial oscillator \(n\ge1\) occurs in \(B\). For each such mode the three amplitudes are

| Ground occupation, plus one radial quantum \(n\) | Amplitude | Energy denominator |
|---|---:|---:|
| \(N-2\) | \(C_n\sqrt{N(N-1)}/2\) | \(2\Delta-\omega_n\) |
| \(N\) | \(C_nN\) | \(-\omega_n\) |
| \(N+2\) | \(C_n\sqrt{(N+1)(N+2)}/2\) | \(-2\Delta-\omega_n\) |

Consequently
\[
\epsilon_N^{(1\chi)}=
\sum_{n\ge1}C_n^2\left[
 \frac{N(N-1)}{4(2\Delta-\omega_n)}
 -\frac{N^2}{\omega_n}
 -\frac{(N+1)(N+2)}{4(2\Delta+\omega_n)}\right].
\tag{7}
\]
Taking the second finite difference in \(N\) gives the bracket in (1). In the two-particle calculation these are the one-, three-, and five-particle intermediate sectors. In particular the last denominator, from the counter-rotating/pure-creation ordering, cannot be discarded as a disconnected vacuum term: after the vacuum and one-body subtractions a nonzero connected contribution remains.

### Two and three nonground quanta

Let \(|\alpha\rangle\) range over normalized two-nonground-particle states of energy \(\Omega_\alpha\), and set \(K_\alpha=\langle\alpha|C|0_\chi\rangle\). The complete contribution is
\[
 \epsilon_N^{(2\chi)}=
 \frac14\sum_\alpha|K_\alpha|^2
 \left[\frac{N}{\Delta-\Omega_\alpha}
       -\frac{N+1}{\Delta+\Omega_\alpha}\right].
\tag{8}
\]
It is affine in \(N\), so its connected second difference vanishes exactly. It contains the nonground-loop one-body contribution and its vacuum piece. No denominator in (8) vanishes, since \(\Omega_\alpha>2\Delta\).

For normalized three-nonground-particle states \(|\beta\rangle\), with energy \(\Omega_\beta\), set \(L_\beta=\langle\beta|D|0_\chi\rangle\). Then
\[
 \epsilon_N^{(3\chi)}=-\frac1{36}
 \sum_\beta\frac{|L_\beta|^2}{\Omega_\beta},
\tag{9}
\]
independent of \(N\), and it too cancels. Equations (5), (7), (8), (9) exhaust the action of the normal-ordered cubic vertex. The cancellations are exact **before** removing the common regulator; they are not subtraction of separately assigned divergent infinite sums.

## 3. Degenerate projection, including zero denominators

The second-order operator at free energy \(E\) is
\[
 H_{\rm eff}^{(2)}(E)=P_E VQ_E(E-H_0)^{-1}Q_EVP_E,
 \qquad Q_E=1-P_E,
\tag{10}
\]
plus any specified second-order counterterm. The supplied theorem \(P_EVP_E=0\) is consistent with the overlaps above.

At \(E=2\Delta\), no state containing three or more particles has that energy. The only even-particle-number state is the two-ground-particle state itself. Additional degenerate states can be one-particle states when \(\Delta\) is an integer. Angular momentum conservation removes all nonzero-spin couplings to the ground pair. A zero-spin one-particle state at \(2\Delta\) exists precisely when \(\Delta=2k\), where it has radial index \(n=k\); its overlap satisfies
\[
 C_k\propto(1-k)_k=0.
\]
It belongs to \(P_E\), so it is removed by the full projector in (10), not inserted into a denominator. Moreover \(V\) flips particle-number parity; hence \(VQ(E-H_0)^{-1}QV\) preserves it. There is no second-order mixing of the even ground pair with any degenerate odd one-particle state. Thus (10) really yields the second-order eigenvalue of the ground-pair branch, rather than just an arbitrary diagonal entry of an unresolved degenerate matrix.

For \(\Delta=2k\), every \(C_n\) with \(n\ge k\) vanishes. Near that point \(C_k=O(\Delta-2k)\), so the apparently singular contribution \(C_k^2/(\Delta-2k)\) also tends to zero. This explains the removable limit in the analytic formula, but the projector argument is the definition at exact degeneracy.

## 4. Exact evaluation of the two oscillating time orderings

Combine the first and third terms in (1):
\[
 b(\Delta)=S_{2\Delta}-2S_0,\qquad
 S_{2\Delta}=\sum_n\frac{\omega_nC_n^2}{4\Delta^2-\omega_n^2},
 \quad S_0=\sum_n\frac{C_n^2}{\omega_n}.
\tag{11}
\]
Define the radial Klein–Gordon operator
\[
 \mathcal D_\Omega=
 \frac1r\partial_r[r(1+r^2)\partial_r]
 +\frac{\Omega^2}{1+r^2}-m^2
 =4z^2[(1-z)\partial_z^2-\partial_z]
 +\Omega^2z-m^2.
\]
For the source \(J=f_0^2=z^\Delta/(2\pi)\), a direct identity is
\[
 \mathcal D_{2\Delta}J=\Delta(3\Delta-2)J.
\tag{12}
\]
Therefore \(h=J/[\Delta(3\Delta-2)]\) is a regular, fast-decaying solution of \(\mathcal D_{2\Delta}h=J\). Expanding it in (3), with the KG normalization already fixed, gives
\[
 h=\sum_n\frac{2\omega_nC_n}{4\Delta^2-\omega_n^2}f_n,
 \qquad
 S_{2\Delta}=\frac12\int r\,dr\,d\theta\,Jh.
\]
At resonance this expansion means the projected solution; it can differ from the displayed particular solution by a resonant homogeneous mode. That difference makes no contribution to \(\int Jh\), since its overlap is \(C_k=0\).

Since
\[
 \int r\,dr\,d\theta\, f_0^4=\frac1{4\pi(2\Delta-1)},
\]
we obtain the elementary identity
\[
 \boxed{S_{2\Delta}=
 \frac1{8\pi\Delta(3\Delta-2)(2\Delta-1)}}.
\tag{13}
\]
This is an analytic identity for the full sum, not an extrapolation of numerical data.

For functional-analytic control, the positive radial operator
\[
 L=(1+r^2)\left[-\frac1r\partial_r[r(1+r^2)\partial_r]+m^2\right]
\]
is self-adjoint under the regular-origin and standard-fast boundary conditions in the radial Hilbert space with measure \(r\,dr\,d\theta/(1+r^2)\). The resolvent source is \((1+r^2)J\); its squared norm near \(z=0\) is proportional to \(\int dz\,z^{2\Delta-3}\), finite precisely in the stated range \(\Delta>1\). At a discrete eigenvalue, the orthogonal projected resolvent gives the construction above. Boundary terms vanish for these profiles.

Finally, setting \(a=3\Delta/2-1\),
\[
 S_0=\frac1{8\pi a^2\Delta}\,
 {}_4F_3\!\left(\begin{matrix}
 1,1-\Delta/2,1-\Delta/2,\Delta/2\\
 3\Delta/2,3\Delta/2,1+\Delta/2
 \end{matrix};1\right),
\]
which proves (2). The hypergeometric series has excess \(4\Delta-2>0\) and nonnegative terms, with zeroth term 1. Since
\[
0<\frac{3\Delta-2}{8(2\Delta-1)}<\frac3{16}<1,
\]
(2) proves \(b(\Delta)<0\) for all \(\Delta>1\).

## 5. Special dimensions

### \(\Delta=2\)

Here \(C_0=1/(4\sqrt{2\pi})\) and \(C_{n\ge1}=0\). Thus
\[
 b(2)=-\frac5{3\cdot2}C_0^2=-\frac5{192\pi}.
\]
The resonant one-particle mode \(n=1\) is explicitly included in the degenerate projector and has zero coupling.

### \(\Delta=3/2\)

The overlap reduces to
\[
 C_n=\frac{2(-1)^n}{\sqrt{2\pi}(4n+1)(4n+5)}.
\]
Therefore
\[
 S_0=\frac4\pi\sum_{n=0}^\infty
 \frac1{(4n+1)^2(4n+3)(4n+5)^2}.
\]
The summand has the convergent grouped partial fraction decomposition
\[
\frac1{32}\left[\frac1{(4n+1)^2}-\frac1{(4n+5)^2}\right]
-\frac1{32}\left[\frac1{4n+1}+\frac1{4n+5}-\frac2{4n+3}\right].
\]
The first series telescopes. For the second use
\(\sum_{n\ge0}[1/(4n+1)-1/(4n+3)]=\pi/4\).
The rational sum is \((4-\pi)/64\), so
\[
 S_0=\frac{4-\pi}{16\pi},\qquad
 S_{2\Delta}=\frac1{60\pi},\qquad
 b(3/2)=\frac{15\pi-58}{120\pi}.
\]
No divergent harmonic series was assigned a separate value in this evaluation.

Further terminating examples are
\[
 b(4)=-\frac{127}{60480\pi},\qquad
 b(6)=-\frac{3529}{6336000\pi}.
\]
A useful right-limit check, not an assertion about a different BF-bound boundary-value problem, is
\[
 \lim_{\Delta\downarrow1}b(\Delta)=\frac{1-7\zeta(3)}{8\pi}.
\]
Indeed the hypergeometric series at that endpoint is
\(\sum_{n\ge0}(2n+1)^{-3}=7\zeta(3)/8\).

## 6. Convergence, regulator and counterterms

For \(\Delta\notin2\mathbb Z_{>0}\), the overlap has the exact gamma-ratio representation
\[
 C_n=\frac{(-1)^n\Gamma(3\Delta/2-1)}
 {2\sqrt{2\pi}\Gamma(1-\Delta/2)}
 \frac{\Gamma(n+1-\Delta/2)}{\Gamma(n+3\Delta/2)}
 =O(n^{1-2\Delta}).
\]
The bracket in (1) is \(-3/(2n)+O(n^{-2})\), so the summand is \(O(n^{1-4\Delta})\). Thus the sum is absolutely convergent for all \(\Delta>1\), with tail \(O(M^{2-4\Delta})\). Stirling bounds give local uniform convergence on compact subsets of \(\Delta>1\), after the finitely many resonant terms are replaced by their projected/removable values. Positive even \(\Delta\) is easier because the sum terminates.

The correct procedure for the separate energy shifts is:

1. Use one common mode cutoff (or a compatible common UV/volume regulator) for the same Hamiltonian and all three states.
2. Use the full \(P_E,Q_E\) for exact degeneracies.
3. Form \(\epsilon_2-2\epsilon_1+\epsilon_0\) at finite regulator, so (8), (9) cancel algebraically.
4. Remove the regulator using the absolutely convergent remaining single-mode sum.

Unrelated cutoffs on the three intermediate total energies need not preserve the finite-cutoff cancellation and should not be silently identified with this prescription.

Normal ordering removes the one-vertex tadpole. It does **not** remove the order-\(\lambda_3^2\) vacuum bubble. In three bulk dimensions the short-distance propagator is proportional to \(1/s\): the vacuum contraction \(G^3\) has a logarithmic coincident divergence, whereas the two-point bubble \(G^2\) is locally integrable. Equivalently the second-order vacuum graph has superficial degree zero, while the second-order self-energy graph has degree minus one. Absolute vacuum energy therefore requires a vacuum/identity counterterm, as well as a convention for the infinite AdS volume. There is no UV-divergent mass or wave-function counterterm forced by the order-\(\lambda_3^2\) two-point graph in this three-dimensional, free-normal-ordered theory. A finite mass prescription can of course be chosen, for example to hold the physical one-particle \(\Delta\) fixed.

For a further infrared/boundary check, the Euclidean standard AdS3 propagator at geodesic distance \(s\) is
\(G_\Delta(s)=e^{-(\Delta-1)s}/(4\pi\sinh s)\).
Its squared kernel is integrable both locally and at large separation when \(\Delta>1\). The external profiles and relevant quadratic spatial integrals are also normalizable in this range. This supports the usual finite vacuum-subtracted one-particle self-energy; computing that finite self-energy is not needed for the connected result.

Any identity counterterm has the same expectation in all three normalized states. Any quadratic counterterm has an expectation affine in \(N\). Both cancel exactly from the second finite difference. The remaining connected graph is a tree exchange; there is no four-point loop divergence and no required \(\lambda_3^2\phi^4\) counterterm. Adding a finite quartic interaction at that order changes the theory and would change the answer. The stated result assumes no such extra interaction and the same standard-fast boundary condition at every step.

## 7. Executed checks and reproducibility

The new self-contained
[Wolfram script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-ground/verify.wl>)
was executed in Wolfram Engine 14.3. Its persistent
[exact and numerical output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-ground/verification-results.wl>)
contains:

- KG norms equal to 1 for radial \(n=0,\ldots,5\) at \(\Delta=3/2,2,7/3\).
- Exact overlap residuals equal to 0 for \(n=0,\ldots,6\) at \(\Delta=3/2,2,7/3,4\).
- Exact residual 0 for the source identity (12), and the ground-oscillator polynomial (5).
- An independent exact CAS sum at \(\Delta=3/2\), agreeing with \((15\pi-58)/(120\pi)\).
- Generic numerical comparisons of the original sum through \(n=300\), (13), and the closed form (2), at \(\Delta=6/5,3/2,7/3,3,7/2,9/2\). At \(6/5\) the binding truncation difference is \(6.74\times10^{-10}\); at \(3/2\) it is \(1.13\times10^{-13}\), consistent with the analytic tail estimate. These finite sums are checks, not proofs of the infinite identities.

### Direct Fock-space check, including the canceled sectors

The script also builds the actual integrated cubic tensor for **five** real KG-normalized modes: radial \(n=0,1,2\) and the \(n=0,|\ell|=1\) cosine and sine modes. The latter have spatial profiles
\[
 \sqrt{\frac\Delta\pi}\,z^{\Delta/2}(1-z)^{1/2}\cos\theta,
 \quad
 \sqrt{\frac\Delta\pi}\,z^{\Delta/2}(1-z)^{1/2}\sin\theta.
\]
It enumerates every normally ordered creation/annihilation monomial, aggregates amplitudes to the same **normalized** Fock state before squaring, and performs the full spectral sum for \(N=0,1,2\). It does not use (1) to construct those three individual shifts.

| \(\Delta\) | Direct connected finite-mode result | Original single sum through \(n=2\) | Residual |
|---|---|---|---|
| \(3/2\) | \(-901996/(9954945\pi)\) | same | 0 exactly |
| \(2\) | \(-5/(192\pi)\) | same | 0 exactly |

The two- and three-nonground-particle sectors cancel separately and exactly in both checks. For example at \(\Delta=2\), the finite-mode individual shifts are
\[
 (\epsilon_0,\epsilon_1,\epsilon_2)
 =-\frac1{1693440\pi}(6133,34861,107689),
\]
whose connected combination is \(-5/(192\pi)\). The script explicitly records the degenerate one-particle radial \(n=1\) state with amplitude **zero**, projects it out, and reports that all projected zero-denominator amplitudes vanish. At \(\Delta=2\) this finite-mode connected answer is also the exact infinite-mode answer, since every omitted connected overlap is zero; the individual finite-mode shifts are not claimed to be the infinite-mode energies.

The script refuses to overwrite an existing result file on re-execution, but returns the recomputed result. It can be run in a fresh Wolfram kernel using `Get` on its absolute path. No existing research files were changed. Only the applicable rules, the formalism convention note, and this calculation's own output were read; no new round-2 candidate result was read. The radial phase mapping was supplied by the parent after the independent coefficient had already been derived.

**Verified:** analytic all-\(\Delta\) formula, normalization, all cubic sectors and their cancellations, projected resonance treatment, exact special values, direct finite-mode Fock sums, and absolute convergence of the connected sum.

**Not claimed:** a nonperturbative stable real-cubic theory, an absolute renormalized vacuum energy, a numerical value for the finite one-body self-energy, or results at other boundary conditions. The computations and proof in this report are independent work by this delegated verifier; no additional child verifier could be launched at the permitted delegation depth.
