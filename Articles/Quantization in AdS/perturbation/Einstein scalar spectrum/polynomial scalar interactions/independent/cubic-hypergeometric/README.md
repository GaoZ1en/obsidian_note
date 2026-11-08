# Independent cubic radial sum: exact hypergeometric form

## Result and scope

For real \(\Delta>1\), integer \(l\geq0\), and finite polynomials
\[
 F(x)=\sum_{k=0}^{K}f_kx^k,\qquad G(x)=\sum_{j=0}^{L}g_jx^j,
\]
the radial sum in the question is the finite bilinear combination
\[
 \boxed{S(F,G;\Omega)=\sum_{k=0}^{K}\sum_{j=0}^{L}f_kg_j\,\mathcal K_{kj}(\Omega).}
\]
Define
\[
 a_k=\frac{3\Delta}{2}-1+k,\quad
 b_k=1-\frac\Delta2-k=\Delta-a_k,\quad
 c_k=a_k+l+1=\frac{3\Delta}{2}+l+k,\quad
 z=\frac{\Delta+l-\Omega}{2}.
\]
Off the radial spectrum \(z\notin\{0,-1,-2,\ldots\}\),
\[
\boxed{
\mathcal K_{kj}(\Omega)=
 -\frac{(\Delta)_l}{2l!z}\,B(a_k,l+1)B(a_j,l+1)
 {}_5F_4\!\left(\begin{matrix}
 l+1,\ \Delta+l,\ b_k,\ b_j,\ z\\
 \Delta,\ c_k,\ c_j,\ z+1
 \end{matrix};1\right).
}
\]
This is a bilinear, not sesquilinear, expression: there is no conjugation on \(g_j\) unless it is already part of the specified source. External-mode normalization factors are not added to the sum defined in the question.

The unit-argument excess is
\[
 \boxed{\sigma_{kj}=4\Delta-2+2k+2j>2.}
\]
Thus the displayed generalized hypergeometric series is absolutely convergent. No continuation across its argument-one branch cut is needed. The spectral parameter is meromorphic; no \(i\epsilon\) prescription is imposed.

The main moment and \({}_5F_4\) formula were derived before receiving any parent result. No parent implementation or candidate file was read. A subsequent parent suggestion about rational kernels at half-integral \(\Delta\) was checked separately below.

## Derivation of the monomial moments

Use exactly
\[
 J_n(x)=P_n^{(\Delta-1,l)}(1-2x),\qquad
 R_n[F]=\int_0^1x^{3\Delta/2-2}(1-x)^lF(x)J_n(x)\,dx.
\]
The shifted Rodrigues formula is
\[
 J_n(x)=\frac{x^{1-\Delta}(1-x)^{-l}}{n!}
 \frac{d^n}{dx^n}\big[x^{n+\Delta-1}(1-x)^{n+l}\big].
\]
For the monomial \(x^k\), integrate by parts \(n\) times. Every boundary term at zero scales as \(x^{a_k}\), and at one as a positive power \((1-x)^{l+1+r}\). They vanish because \(a_k>0\) and \(l\geq0\). The differentiated power gives
\[
 (-1)^n\frac{d^n}{dx^n}x^{a_k-\Delta}
 =(\Delta-a_k)_n x^{a_k-\Delta-n}.
\]
Consequently
\[
\boxed{
 R_n[x^k]=\frac{(b_k)_n}{n!}\,B(a_k,n+l+1)
 =B(a_k,l+1)\frac{(l+1)_n(b_k)_n}{n!(c_k)_n}.
}
\]
The same result follows independently by inserting
\[
 J_n(x)=\frac{(\Delta)_n}{n!}
 {}_2F_1(-n,n+\Delta+l;\Delta;x)
\]
and applying the terminating Pfaff–Saalschütz identity to
\[
 \frac{(\Delta)_n}{n!}B(a_k,l+1)
 {}_3F_2(-n,n+\Delta+l,a_k;\Delta,a_k+l+1;1).
\]
All beta-function arguments in the original integral are positive.

The normalization admits the exact identities
\[
 d_n^2=\frac{(n+\Delta)_l}{(n+1)_l}
 =\frac{(\Delta)_l}{l!}
 \frac{(\Delta+l)_n\,n!}{(l+1)_n(\Delta)_n}.
\]
Multiplying the two moments and using
\[
 \frac1{\Omega-\Delta-l-2n}
 =-\frac1{2z}\frac{(z)_n}{(z+1)_n}
\]
gives the boxed \({}_5F_4\) formula term by term.

For non-even \(\Delta\), the generic large-\(n\) behavior is
\[
 R_n[x^k]\sim\frac{\Gamma(a_k)}{\Gamma(b_k)}n^{1-2\Delta-2k},
 \qquad d_n^2\longrightarrow1.
\]
Hence a monomial summand is \(O(n^{1-4\Delta-2k-2j})\), in agreement with the excess. If a polynomial vanishes to positive order at zero, its convergence improves accordingly.

## Resonance convention and even Δ

The radial resolvent poles are
\[
 \Omega_N=\Delta+l+2N,\quad N\in\mathbb Z_{\geq0},
 \qquad \operatorname*{Res}_{\Omega=\Omega_N}S
 =d_N^2R_N[F]R_N[G].
\]
Here the residue is with respect to \(\Omega\), so its sign is positive as written.

The physical non-resonance statement needs angular momentum conservation. For global scalar modes \(E_{p,m}=\Delta+|m|+2p\), take
\(\Omega=s_1E_{p_1,m_1}+s_2E_{p_2,m_2}\) and
\(l=|s_1m_1+s_2m_2|\), with \(s_i=\pm1\).
The angular absolute-value differences are even integers. A positive sum-frequency resonance therefore requires \(\Delta\in2\mathbb Z\); so does a positive mixed-frequency resonance. A negative same-sign sum cannot equal a positive internal frequency. This does **not** say that arbitrary unrelated \(\Omega,l\) have no poles for non-even \(\Delta\).

If \(\Delta=2h\), \(h\geq1\), then
\[
 b_k=-(h+k-1),\qquad R_n[x^k]=0\quad(n>h+k-1).
\]
Equivalently, the source equals the Jacobi weight
\(x^{\Delta-1}(1-x)^l\) times the polynomial \(x^{h-1}F(x)\), and Jacobi orthogonality gives the same support bound. Thus
\[
 R_n[F]=0\quad(n>h-1+K),\qquad
 S(F,G;\Omega)=\sum_{n=0}^{h-1+\min(K,L)}
 \frac{d_n^2R_n[F]R_n[G]}{\Omega-2h-l-2n}
\]
off poles.

At \(\Omega=\Omega_N\), project out the resonant mode:
\[
\boxed{
 S_Q(F,G;\Omega_N)=
 \sum_{\substack{0\leq n\leq h-1+\min(K,L)\\n\ne N}}
 \frac{d_n^2R_n[F]R_n[G]}{2(N-n)}.
}
\]
For fixed \(F,G\), this is exactly
\[
 \lim_{\Omega\to\Omega_N}\left[
 S(F,G;\Omega)-\frac{d_N^2R_N[F]R_N[G]}{\Omega-\Omega_N}\right].
\]
If the residue vanishes, this is the ordinary removable value. Do not substitute \(z=-N\) into a generic library \({}_5F_4\) and cancel singular parameters blindly: for \(N\geq1\), the denominator parameter \(z+1\) is a non-positive integer; for \(N=0\), the prefactor \(1/z\) is singular. Finite Jacobi support followed by omission of \(n=N\) is unambiguous.

For completeness, a pole-subtracted named-function expression also exists for arbitrary \(\Delta>1\). Put
\[
 C_{kj}=\frac{(\Delta)_l}{l!}B(a_k,l+1)B(a_j,l+1),\quad
 u=(l+1,\Delta+l,b_k,b_j),\quad v=(\Delta,c_k,c_j),
\]
\[
 A_n=\frac{\prod_{r=1}^4(u_r)_n}{n!\prod_{s=1}^3(v_s)_n}.
\]
For a nonterminating kernel,
\[
 \mathcal K^{Q}_{kj}(\Omega_N)=-\frac{C_{kj}}2\left[
 \sum_{n=0}^{N-1}\frac{A_n}{n-N}
 +A_{N+1}\,{}_6F_5\!\left(\begin{matrix}
 1,1,u_1+N+1,u_2+N+1,u_3+N+1,u_4+N+1\\
 2,N+2,v_1+N+1,v_2+N+1,v_3+N+1
 \end{matrix};1\right)\right].
\]
Its excess is again \(\sigma_{kj}\). In a terminating case, if \(N+1\) exceeds the support, set the tail to zero directly; do not evaluate a formal zero times a special function. This extension was checked at an artificial non-even-\(\Delta\) pole, but is unnecessary for physical non-even-\(\Delta\) frequencies.

## Rational-kernel specialization

If \(2\Delta\in\mathbb Z\) but \(\Delta\notin2\mathbb Z\), then
\[
 M_k=c_k-b_k=2\Delta+l+2k-1\in\mathbb Z_{>0},
\]
and
\[
 R_n[x^k]=B(a_k,l+1)\frac{(n+1)_l}{l!}
 \frac{(b_k)_{M_k}}{(n+b_k)_{M_k}}.
\]
Together with \(d_n^2=(n+\Delta)_l/(n+1)_l\), this makes the summand rational in \(n\). Partial fractions therefore give a finite exact polygamma expression. If
\[
 T(n)=\sum_{\rho,r}\frac{c_{\rho,r}}{(n+\rho)^r},
\]
then convergence implies \(\sum_\rho c_{\rho,1}=0\), and
\[
 \sum_{n\geq0}T(n)=
 -\sum_\rho c_{\rho,1}\psi(\rho)
 +\sum_{\rho,r\geq2}c_{\rho,r}
 \frac{(-1)^r}{(r-1)!}\psi^{(r-1)}(\rho).
\]
The shifts must avoid non-positive integers unless a pole has first been canceled/projected out. This rational specialization should not be applied to even \(\Delta\) via unregulated \(0/0\); use finite support there. It also avoids fragile symbolic `hyperexpand` rewrites at argument one.

## Independent checks

### Direct polynomial integrals

Wolfram expanded the actual Jacobi polynomial and integrated the defining weight for the following \((\Delta,l,k,n)\):
\[
 (3/2,0,0,0),\ (3/2,0,0,1),\ (3/2,0,2,5),\ (5/3,2,1,4),
\]
\[
 (3,1,2,6),\ (4,2,0,2),\ (4,2,3,4),\ (6,1,2,5).
\]
All eight exact residuals vanished, including the two finite-support zeros.

An independent Sage rational-arithmetic implementation constructed
\[
 J_n(x)=\sum_{q=0}^{n}(-1)^q
 {n+\Delta-1\choose n-q}{n+l\choose q}x^q(1-x)^{n-q}
\]
and integrated every expanded monomial directly, without using hypergeometric integration. For \(\Delta=5/3,l=2\),
\[
 F=1-3x+2x^2,\qquad G=2+x^3,
\]
all 22 moments \(n=0,\ldots,10\) matched the formula exactly. For example,
\[
 (R_0[F],R_1[F],R_2[F])=(32/693,6368/135135,2624/135135),
\]
\[
 (R_0[G],R_1[G],R_2[G])=(14288/45045,2672/135135,1184/57915).
\]

### Infinite exact series, physical same-sign frequency

For \(\Delta=3,l=0,F=G=1,\Omega=6\),
\[
 R_n[1]=\frac{-30}{(2n-1)(2n+1)(2n+3)(2n+5)(2n+7)},\qquad d_n^2=1.
\]
Consequently
\[
\boxed{
 S(1,1;6)=\frac{315\pi^2}{32768}-\frac1{15}
 =0.028210206695856159411606791126332222726149962766953\ldots .
}
\]
Wolfram independently summed the rational summand exactly and simplified its difference from the derived \({}_5F_4\) to zero. Sage separately verifies its partial-fraction identity and sums all odd-shift pieces with elementary harmonic-series differences and \(\sum_{n\geq0}(2n+1)^{-2}=\pi^2/8\).

For a separate 200-bit Sage sum through \(n=1000\), the exact expression minus the partial sum is approximately \(-4.31937\times10^{-32}\). For every \(n\geq1001\), the summand has magnitude at most \(900/n^{11}\), so the omitted tail is bounded by \(90/1000^{10}=9\times10^{-29}\). Sage real-ball arithmetic certifies that the difference is below this bound (rounding enclosure radius below \(7\times10^{-59}\)). The numerical agreement is therefore supported by an explicit tail bound, not an extrapolated decimal coincidence.

### Even-\(\Delta\) projection

For \(\Delta=4,l=2,F=1+2x,G=1-x+3x^2\), direct integration gives
\[
 R_n[F]=(3/140,-29/2520,1/630,0,\ldots),
\]
\[
 R_n[G]=(13/840,-13/1260,43/13860,-1/1848,0,\ldots).
\]
At \(\Omega=8\), \(N=1\),
\[
 \operatorname*{Res}_{\Omega=8}S=377/635040,\qquad
 \boxed{S_Q(F,G;8)=28807/17463600.}
\]
Direct omitted-mode summation in Sage and meromorphic finite-part subtraction in Wolfram agree exactly. These arbitrary polynomials test the projection algebra, not a claim that this particular pair is realized by the specified physical external frequency.

The optional \({}_6F_5\) formula was also checked at \(\Delta=3,l=0,F=G=1,\Omega=5,N=1\):
\[
 S_Q=-\frac{399271}{5000940}+\frac{12545\pi^2}{1032192}
       +\frac{4\log2}{3969}.
\]
Separate 45-digit evaluations agree to better than \(10^{-40}\). This is an artificial resolvent pole, not a physical two-mode resonance.

### Half-integral ground and excited sources

Let \(\Delta=3/2,l=0\), and \(J_1=3/2-5x/2\). Direct rational kernels give
\[
 R_n[1]=\frac4{(4n+1)(4n+5)},
\]
\[
 R_n[J_1]=\frac{12(8n^2+12n-1)}{(4n-3)(4n+1)(4n+5)(4n+9)}.
\]
Writing \(\mathsf G\) for Catalan's constant,
\[
 S(1,1;3)=\frac{-76+72\mathsf G+9\pi^2}{192},
\]
\[
 S(J_1,J_1;5)=\frac{-622036+771960\mathsf G+96495\pi^2}{11010048},
\]
\[
 S(J_1,J_1;2)=\frac{-3308+264\mathsf G+3\pi(64+11\pi)}{24576}.
\]
Their values are approximately \(0.41029147078418748\), \(0.09422486412086157\), and \(-0.08696705519254659\). Exact rational summation and separate 45-digit evaluations of the finite sums of \({}_5F_4\) agree to better than \(10^{-40}\).

## Paired-time-ordering arithmetic: independently checked extension

This section addresses a subsequent parent question, not an assertion about the unpaired sum alone. Let
\[
 \mathcal P(F,G;\Omega)=S(F,G;\Omega)+S(F,G;-\Omega),\qquad
 s=\Delta+l,\quad \omega_n=s+2n.
\]
Its summand is
\[
 T(n)=d_n^2R_n[F]R_n[G]\frac{2\omega_n}{\Omega^2-\omega_n^2}.
\]
Assume now \(F,G\in\mathbb Q[x]\). For strict half-integer or odd-integer \(\Delta\), the rational continuation in \(n\) obeys
\[
 d^2(-n-s)=\frac1{d^2(n)},\qquad
 R_F(-n-s)=(-1)^{2\Delta-1}d^2(n)R_F(n).
\]
Indeed the monomial denominator has length \(M_k\) and endpoint sum
\(b_k+(c_k-1)=s\); reflection reverses its factors. The numerator changes from \((n+1)_l\) to \((-1)^l(n+\Delta)_l\). The parity \(M_k-l=2\Delta+2k-1\) is independent of \(k\), so the result holds for every polynomial combination. It follows that
\[
 \boxed{T(-n-s)=-T(n).}
\]
If \(T(n)=\sum c_{\rho,r}(n+\rho)^{-r}\), reflection implies
\[
 c_{s-\rho,r}=(-1)^{r+1}c_{\rho,r}.
\]
Thus the total double-pole coefficient vanishes; the total simple-pole coefficient vanishes by decay at infinity. All moment poles lie in the same fraction class
\(b_0=1-\Delta/2\pmod1\). In \(d^2R_FR_G\), the denominator \((n+1)_l\) of \(d^2\) cancels one of the moment numerator factors; the remaining common numerator is proportional to \((n+\Delta)_l(n+1)_l\). There is therefore no additional integer pole class from the normalization.

This proves the following precise arithmetic statements for **paired radial kernels**:

1. **Compatible same-sign channel:** if \(|\Omega|=2\Delta+l+2K_0\), with \(K_0\geq\max(\deg F,\deg G)\) an integer, then
   \(\mathcal P\in\mathbb Q\). The two time-ordering poles have shifts
   \(z_+=-\Delta/2-K_0=b_{K_0}-1\) and
   \(z_-=3\Delta/2+l+K_0=c_{K_0}\), strictly outside both source denominator ranges. There are therefore no triple poles. All shifts are in the same fraction class, and the simple/double coefficient sums remove both digamma and trigamma constants.
2. **Mixed channel, strict half-integer \(\Delta\):** if \(\Omega\in\mathbb Z\) and \(\Omega\equiv l\pmod2\), then
   \(\mathcal P\in\mathbb Q+\mathbb Q\pi\). The time-ordering poles are in the complementary quarter class \(\Delta/2\pmod1\), different from \(b_0\); there are no triple poles. The double-pole constants cancel. The remaining two digamma constants differ by \(\pi\cot(\pi b_0)=\pm\pi\).
3. **Mixed channel, odd-integer \(\Delta\):** under the same frequency parity condition,
   \(\mathcal P\in\mathbb Q+\mathbb Q\zeta(3)\). Every pole is half-integral, and the maximum order is three. Simple and double constants cancel, while \(\psi^{(2)}(1/2)=-14\zeta(3)\).
4. **Even-integer \(\Delta\):** physical integer \(\Omega\) and the finite-support Q prescription give \(\mathcal P_Q\in\mathbb Q\).

For actual same-sign external sources the polynomial degree is fixed by the same \(|\Omega|\), so condition 1 is natural. It must nevertheless be stated: the theorem is not about arbitrary independently chosen \(F,G,\Omega\). A full matrix statement additionally needs rationality of its external basis/vertex prefactors; that input was not checked in this branch.

### Nontrivial angular test at Δ=5/2

Take \(l=1\), \(F=G=5/2-9x/2\), corresponding to the pair \((p_1,m_1)=(1,1)\), \((p_2,m_2)=(0,0)\). The mixed frequency is \(3\), and the same-sign frequency is \(8\). Direct Jacobi integrations at \(n=0,\ldots,5\) confirm
\[
 R_n[F]=\frac{-3360(n+1)(4n^2+14n+1)}
 {(4n-5)(4n-1)(4n+3)(4n+7)(4n+11)(4n+15)(4n+19)}.
\]
Exact rational summation gives
\[
 \boxed{\mathcal P(F,F;3)=-\frac1{210}-\frac{3\pi}{4096},\qquad
        \mathcal P(F,F;8)=\frac{277}{62370}.}
\]
The rational summand's reflection residual vanishes exactly in Wolfram and independent Sage rational arithmetic. The finite sums of \({}_5F_4\) match both exact results to better than \(10^{-35}\). An independent 200-bit Sage real-ball sum through \(n=1000\) has exact-minus-partial value about \(-8.26166\times10^{-26}\), below the explicit tail bound \(1.70420\times10^{-21}\), obtained from \(|R_n|\leq(127680/2187)n^{-4}\), \(d_n^2<2\), and \(|2\omega_n/(9-\omega_n^2)|<2/n\) for \(n\geq1001\).

As a scope stress test, \(\Delta=3/2,l=0,F=G=x,\Omega=3\) violates the same-sign degree condition and produces
\[
 \mathcal P(x,x;3)=\frac{362264-3375\pi^3-94500\zeta(3)}{2211840}.
\]
This exhibits nonzero triple-pole contributions and invalidates the pole-avoidance argument outside its scope. It is **not** being presented as a proved field-nonmembership counterexample: the required linear-independence statements among the resulting periods are not established here.

Reproducible extension checks: [paired arithmetic](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-hypergeometric/paired-arithmetic.wl>).

## Verification status and remaining gaps

**Verified:** analytic moment identity by Rodrigues and Pfaff–Saalschütz; exact \({}_5F_4\) coefficient match; absolute convergence/excess; even-\(\Delta\) support and Q finite part; direct polynomial integration in Wolfram and independent Sage rational arithmetic; 32 further direct-integral checks of the rational specialization; exact infinite rational series and certified numerical tail bounds; half-integral radial examples; one \({}_6F_5\) pole-subtraction check; the conditional paired-kernel arithmetic theorem and a nonzero-angular-momentum example. All saved verification sources were executed end to end.

**Assumptions:** real \(\Delta>1\), integer \(l\geq0\), finite \(F,G\), the Jacobi and \(d_n\) conventions stated above. Physical non-resonance additionally uses the signed angular-momentum selection rule. Fixed polynomials are held fixed in spectral finite-part limits.

**Not verified here:** external Hamiltonian/vertex normalization, external pair combinatorial factors, mode-to-polynomial generation, and any parent implementation. Those are outside the supplied radial problem. No general symbolic reduction of arbitrary real-\(\Delta\) \({}_5F_4\) to lower functions is claimed. No further independent child could be launched at the delegated depth limit; this work itself is the fresh independent branch relative to the parent.

**CAS diagnostics:** the exact checks had no messages. An initial attempt to numerically evaluate an already-subtracted nearly-zero expression produced `N::meprec`; it was replaced by separately evaluating each side to 45 digits, checking an explicit \(10^{-40}\) tolerance, and obtaining no messages. No failed or unevaluated result is counted as evidence.

Reproducible source: [Sage exact checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-hypergeometric/verify.sage.py>) and [Wolfram checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-hypergeometric/verify.wl>).
