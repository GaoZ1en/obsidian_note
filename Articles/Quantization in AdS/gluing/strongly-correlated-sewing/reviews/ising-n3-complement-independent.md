# Finite n=3 CAR complement identities and Gaussian counterexamples

## Result and provenance

**There is an exact complement identity removing the string from one of the three string-containing cubic words. The other two words are complement-self-dual, and neither can universally be reconstructed from the complement Gaussian density and its fixed block parities alone.** The spin cubic moment is

\[
 p_3^{\mathrm{spin}}=\frac14\left(a+3b+3c+3d-6\operatorname{Re}e\right),
\]

with the five words defined below. For a real state, \(e\) is real but need not be positive.

**Primary independent part.** Sections 1–6 were derived from the task's finite CAR definitions without reading other agents' reports. This includes the cubic coefficients, the complete complement map, the two-Pfaffian formula, and the real pure-Gaussian counterexamples. The derivation and initial exact checks preceded the later multi-interval suggestion from the parent. A complex, not-assumed-Gaussian regression example was added when preparing the reproducible script; it specifically checks the transpose/conjugation convention.

**Secondary collaborative part.** Section 7 checks a multi-interval \(n=2\) candidate supplied by the parent after the primary derivation. It is not an independent discovery of that candidate. The CAR-projector and principal-jump algebra are checked; the proposed critical-Ising-to-XX-FCS determinant identification is not proved here.

No main text or index was edited. Reproducible exact code and its plain-text stdout:

- [ising_n3_complement_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_complement_checks.sage>)
- [ising_n3_complement_checks.stdout.txt](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_complement_checks.stdout.txt>)

## 1. Objects, conventions, and assumptions

The finite system is ordered as four consecutive blocks \(A_1,B,A_2,C\). Write \(A=A_1\cup A_2\) and \(D=A^c=B\cup C\). Each block may contain any finite number of fermionic modes. The global state is a normalized pure vector of even total fermion parity. Reality and Gaussianity will be imposed only where stated.

Majoranas obey \(\{\gamma_j,\gamma_k\}=2\delta_{jk}\). The covariance convention is

\[
 \Gamma_{jk}=\frac{i}{2}\langle[\gamma_j,\gamma_k]\rangle.
\]

On the local CAR algebra of \(A\), define the density \(G\) and the possibly nonpositive Hermitian string operator \(S\) by

\[
 \operatorname{Tr}G\,O(\eta)=\langle O(\gamma_A)\rangle,
 \qquad
 \operatorname{Tr}S\,O(\eta)=\langle P_B O(\gamma_A)\rangle.
\]

Here \(P_X=(-1)^{N_X}\). Both \(G\) and \(S\) commute with total \(A\)-parity, but need not commute with \(P=P_{A_1}\). Set

\[
 G'=PGP,\qquad S'=PSP,
\]

and define

\[
\begin{aligned}
 a_A&=\operatorname{Tr}G^3,&
 b_A&=\operatorname{Tr}G^2G',\\
 c_A&=\operatorname{Tr}GS^2,&
 d_A&=\operatorname{Tr}G'S^2,&
 e_A&=\operatorname{Tr}GSS'.
\end{aligned}
\]

The order in \(e_A\) is part of the definition:

\[
 e_A^*=\operatorname{Tr}GS'S.
\]

On \(D\), use the increasing original CAR order \((B,C)\), the local parity \(Q=P_B\), and the complementary string \(P_{A_2}\). Thus

\[
 R=G_D,\qquad
 \operatorname{Tr}S_D O(\eta_D)=\langle P_{A_2}O(\gamma_D)\rangle.
\]

Define \((a,b,c,d,e)_D\) by the same five formulas with \((G,S,P)\mapsto(R,S_D,Q)\). This choice of complementary string is essential to the statements below.

## 2. Exact cubic expansion

The spin reduced density matrix, represented using local Jordan–Wigner Majoranas on \(A\), is

\[
 \rho_A^{\mathrm{spin}}=\frac12(G+G')+\frac12(S-S').
\]

Indeed, the \(P\)-even local CAR monomials require no intervening \(B\)-string, while the \(P\)-odd monomials require exactly \(P_B\). Define

\[
 E=\frac12(G+G'),\qquad O=\frac12(S-S').
\]

Then \(PEP=E\), \(POP=-O\); hence all trace words with an odd number of \(O\)'s vanish. Cyclicity gives

\[
 \operatorname{Tr}(E+O)^3=\operatorname{Tr}E^3+3\operatorname{Tr}EO^2,
\]

with

\[
 \operatorname{Tr}E^3=\frac14(a_A+3b_A),\qquad
 \operatorname{Tr}EO^2=\frac14(c_A+d_A-e_A-e_A^*).
\]

Therefore

\[
 \boxed{p_3^{\mathrm{spin}}=\frac14
 (a_A+3b_A+3c_A+3d_A-6\operatorname{Re}e_A).}
\]

For a real occupation-basis state the matrices used below are real, so \(e_A\in\mathbb R\). The coefficients of the five real words are \((1,3,3,3,-6)/4\).

## 3. Universal complement theorem and proof

**Theorem.** For every normalized pure even finite CAR state, with the complement conventions of Section 1,

\[
 \boxed{(a,b,c,d,e)_A=(a,c,b,d,e)_D.}
\]

In particular,

\[
 \boxed{\operatorname{Tr}_A(GS^2)
 =\operatorname{Tr}_D(R^2 Q R Q).}
\]

No reality or Gaussian assumption is needed. In the stated ordering, the last identity is \(e_A=e_D\), not \(e_A=e_D^*\). Choosing the conjugate word on one side would of course change this convention.

### Graded Schmidt proof

Let \(a,b,c,d\) label occupation configurations of the four blocks, and let \(p_a,p_b,p_c,p_d\in\mathbb F_2\) be their parities. If \(\psi_{abcd}\) is the physical-order amplitude, its CAR-grouped coefficient matrix is

\[
 M_{ac,bd}=(-1)^{p_b p_c}\psi_{abcd}.
\]

Then

\[
 G=MM^\dagger,\qquad S=M Q M^\dagger.
\]

For the grouping \((B,C)\mid(A_1,A_2)\), the reordering sign is
\((-1)^{p_a p_b+p_a p_d+p_c p_d}\). Its difference from the sign defining \(M\) is

\[
 (p_a+p_c)(p_b+p_d)=p_D,
\]

where the last equality holds on the even global state. Consequently the complementary amplitude matrix is

\[
 N=P_D M^T.
\]

The reduced complement and its string operator are

\[
 R=NN^\dagger=M^T\overline M,
 \qquad S_D=N P_{A_2}N^\dagger.
\]

Introduce matrices on the Schmidt column space

\[
 K=M^\dagger M,\qquad H=M^\dagger P M.
\]

Using \(P_{A_2}=P_A P\), and the parity intertwining of \(M\), one obtains

\[
 K^T=R,\qquad H^T=P_D S_D.
\]

Direct matrix multiplication and cyclicity express the five \(A\)-words as

\[
\begin{array}{c|c}
 a_A&\operatorname{Tr}K^3\\
 b_A&\operatorname{Tr}K H^2\\
 c_A&\operatorname{Tr}K^2 Q K Q\\
 d_A&\operatorname{Tr}H^2 Q K Q\\
 e_A&\operatorname{Tr}K Q H Q H
\end{array}
\]

Taking a transpose reverses each product. Substitute \(K^T=R\) and \(H^T=P_D S_D\); all complementary operators are even, so the two appearances of \(P_D\) commute through and cancel. The resulting five traces are exactly \((a_D,c_D,b_D,d_D,e_D)\).

This also recovers the quadratic identity

\[
 \operatorname{Tr}_A S^2=\operatorname{Tr}_D R Q R Q.
\]

The cubic identity is its weighted extension, not a claim that all string words disappear.

## 4. A nonsingular, sign-preserving Gaussian evaluation of c

Now assume the state is Gaussian. The complement density \(R\) is a normalized positive Gaussian density on \(m_D\) modes, with real antisymmetric covariance \(\Gamma=\Gamma_D\). Let

\[
 J_B=\operatorname{diag}(-I_{2|B|},+I_{2|C|}),\qquad
 \Gamma_Q=J_B\Gamma J_B.
\]

The normalized square \(R^2/\operatorname{Tr}R^2\) is Gaussian with covariance

\[
 \Gamma_2=2\Gamma(I-\Gamma^2)^{-1}.
\]

This follows mode by mode from the polarization map
\(\nu\mapsto2\nu/(1+\nu^2)\). Since physical covariance singular values satisfy \(|\nu|\leq1\), the eigenvalues of \(I-\Gamma^2\) are \(1+\nu^2\); the inverse always exists, including pure reduced modes.

Define

\[
 F(X,Y)=\begin{pmatrix}X&I\\-I&-Y\end{pmatrix}.
\]

Using exactly the overlap convention specified in the task,

\[
 \operatorname{Tr}G(X)G(Y)
 =(-1)^{m_D}2^{-m_D}\operatorname{Pf}F(X,Y),
\]

one gets

\[
 \boxed{c_A=
 \left[(-1)^{m_D}2^{-m_D}\operatorname{Pf}F(\Gamma,\Gamma)\right]
 \left[(-1)^{m_D}2^{-m_D}\operatorname{Pf}F(\Gamma_2,\Gamma_Q)\right].}
\]

This is a product of two finite signed Pfaffian overlaps on the complement, with no normalized \(S\), no division by \(\langle P_B\rangle\), and no undetermined square-root branch. It is valid when \(\langle P_B\rangle=0\). It does not claim a corresponding elimination of \(d_A\) or \(e_A\).

## 5. Analytic real-Gaussian counterexamples

### 5.1 Fixed complete complement density, changing d and e

Take one mode in each block. In the grouped bases \((00,01,10,11)_A\) and \((00,01,10,11)_D\), set

\[
 M_0=\frac{1}{2\sqrt2}\operatorname{diag}(\sqrt3,\sqrt3,1,-1).
\]

The corresponding physical-order state is the product of two normalized BCS pairs,

\[
 |\psi_0\rangle=
 \frac{\sqrt3|00\rangle+|11\rangle}{2}_{A_1B}
 \otimes
 \frac{|00\rangle+|11\rangle}{\sqrt2}_{A_2C}.
\]

It is manifestly real, even, pure, and Gaussian. Let \(U\) be identity on the even \(A\)-parity sector and, in the odd basis \((|01\rangle,|10\rangle)\), let

\[
 U_{\mathrm{odd}}=\frac1{\sqrt2}
 \begin{pmatrix}1&1\\-1&1\end{pmatrix}.
\]

This is a real number-conserving Gaussian hopping rotation. Set \(M_1=UM_0\). Both states have the identical full complement CAR density

\[
 R_0=R_1=\frac18\operatorname{diag}(3,3,1,1),
\]

while

\[
\begin{array}{c|ccccc|c}
 &a&b&c&d&e&p_3^{\mathrm{spin}}\\ \hline
 M_0&7/64&7/64&7/64&7/64&7/64&7/64\\
 M_1&7/64&5/64&7/64&5/64&1/32&23/128
\end{array}
\]

These fractions can be obtained with only two-by-two block multiplication. Set \(x=3/8\), \(y=1/8\). The unchanged even sector contributes \(x^3+y^3=7/128\). After the \(\pi/4\) odd-sector rotation, its contribution to \(d\) is \(xy(x+y)=3/128\), and to \(e\) is \(-xy(x+y)=-3/128\). Thus \(d=5/64\) and \(e=1/32\). Moreover \(S^2=G^2\) in this family, giving \(b=d\), while \(a=c=7/64\).

**Consequent no-go statement.** Neither \(d_A\) nor \(e_A\) is a function solely of \(G_D\) and the fixed complementary block parities. In particular, neither admits a universal expression using only string-free words or determinants built from those data. The counterexample fixes the entire matrix \(G_D\), not just its spectrum.

This does not exclude expressions using additional purification data or a special identity forced by a particular critical-Ising Hamiltonian. The two states are not asserted to be ground states of that Hamiltonian. The obstruction is to a universal reduction derived solely from purity, CAR, reality, and Gaussianity.

### 5.2 A strictly negative e: finite signs cannot be discarded

Let

\[
 M_{\mathrm{Bell}}=\frac12\operatorname{diag}(1,1,1,-1),
 \qquad
 U_- =\frac{I+\eta_1\eta_3}{\sqrt2},
 \qquad M_-=U_-M_{\mathrm{Bell}},
\]

where \(\eta_1,\eta_3\) are the first and third local Majoranas of the two \(A\)-modes. Since \((\eta_1\eta_3)^2=-I\), \(U_-\) is a real even Gaussian unitary. Put \(L=U_- P U_-^\dagger\). Then

\[
 G=R=I/4,\qquad S=L/4,\qquad L^2=P^2=I,\qquad \{L,P\}=0.
\]

It follows directly that

\[
 (a,b,c,d,e)=\frac1{16}(1,1,1,1,-1),
 \qquad p_3^{\mathrm{spin}}=\frac14.
\]

In particular \((LP)^2=-I\) supplies the negative sign of \(e\). Replacing a signed Gaussian trace by the positive square root of its determinant square would give the wrong cubic moment.

## 6. Exact CAS coverage and its limits

The reproduction uses Sage's exact algebraic field \(\overline{\mathbb Q}\), not floating-point tolerances. It was run successfully with

```bash
/usr/local/bin/sage --nodotsage -python verification/ising_n3_complement_checks.sage \
  > verification/ising_n3_complement_checks.stdout.txt 2>&1
```

The shell exit status was zero. The plain-text output ends with `ALL EXACT CHECKS PASSED.`

### Primary checks

1. For the two fixed-complement states, the negative-\(e\) state, and a further noncommuting-complement state: exact normalization, even parity, real amplitudes, and \(\Gamma_{\mathrm{global}}^2=-I\). For a normalized pure finite CAR state the last condition certifies Gaussianity.
2. All five complement identities, including the ordered \(e_A=e_D\) identity.
3. Direct physical spin partial trace, the density reconstruction of Section 2, and the resulting cubic moment.
4. Exact equality of the full complement density in the counterexample pair, and all tabulated fractions.
5. For \(M=M_0U^T\), the complement obeys \([R,Q]\ne0\). The normalized-square covariance and the two signed Pfaffian overlaps are checked directly, giving \(c_A=5/64\).
6. A general complex even pure state, not asserted Gaussian, checks the theorem and the conjugation convention beyond the real case. Its cubic word is
   \[
   e_A=e_D=-\frac{31}{2592}-\frac{i}{96},
   \]
   so this test distinguishes equality from conjugate equality. The spin cubic moment is \(103/576\), and the real-part formula is checked.

These finite checks verify implementations and exhibit exact counterexamples. They are not the proof of the dimension-independent theorem; that proof is Section 3. There is no claim here of critical-Ising ground-state specificity, a continuum limit, a Fredholm limit, or Fisher–Hartwig asymptotics.

## 7. Secondary collaborative check: multi-interval n=2 algebra

This section addresses a candidate supplied by the parent after the independent \(n=3\) work. It must not be read as independently discovering the parent's proposed XX-FCS reduction.

### 7.1 CAR parity projectors

Order the circle as

\[
 A_1,B_1,A_2,B_2,\ldots,A_{m-1},B_{m-1},A_m,C.
\]

Let \(r\in\mathbb F_2^{m-1}\), with \(r_0=r_m=0\), and define \(S_r\) by inserting \(\prod_{i=1}^{m-1}P_{B_i}^{r_i}\) in the local CAR moments. Put

\[
 q_i=r_{i-1}+r_i\pmod2,\qquad
 s_m=0,\qquad
 P_s=\prod_{i=1}^{m}P_{A_i}^{s_i}.
\]

The map \(r\mapsto q\) is a bijection onto the even block-parity vectors \(\sum_iq_i=0\). On total-even operators the block-parity projector is

\[
 \Pi_q(X)=2^{1-m}\sum_{s:s_m=0}(-1)^{q\cdot s}P_s X P_s.
\]

Fixing \(s_m=0\) removes the redundant simultaneous parity conjugation. These projectors are orthogonal, self-adjoint in the Hilbert–Schmidt inner product, and idempotent. The local Jordan–Wigner string assignment gives

\[
 \rho_A^{\mathrm{spin}}=\sum_r\Pi_{q(r)}(S_r).
\]

Consequently

\[
\begin{aligned}
 p_2^{\mathrm{spin}}
 &=\sum_r\operatorname{Tr}\bigl[\Pi_{q(r)}(S_r)\bigr]^2\\
 &=\boxed{2^{1-m}\sum_{r,s:s_m=0}
 (-1)^{\sum_iq_i s_i}\operatorname{Tr}(S_rP_sS_rP_s)}.
\end{aligned}
\]

This is a finite CAR-projector identity; it does not require Gaussianity. The supplementary script checks both the density reconstruction and the purity formula for \(m=1,2,3\), using explicitly constructed arbitrary real even pure states with one mode per block. These are test states, not asserted Gaussian or critical-Ising states.

### 7.2 Principal phase jumps and the sign

Assume the proposed phase assignment

\[
 g_{A_i}=-i(-1)^{s_i},\qquad
 g_{B_i}=(-1)^{r_i},\qquad g_C=1.
\]

For the cyclic boundary before \(A_1\), identify the preceding \(C\)-phase with \(r_0=0\); after \(A_m\), use \(r_m=0\). Every principal phase jump is \(\pm\pi/2\). In units of \(\pi/2\), the entering and exiting jumps at \(A_i\) are

\[
 -(-1)^{s_i+r_{i-1}},\qquad (+1)(-1)^{s_i+r_i}.
\]

Thus their total winding is

\[
\begin{aligned}
 w&=\frac14\sum_i\left[(-1)^{s_i+r_i}-(-1)^{s_i+r_{i-1}}\right]\\
 &=\sum_i s_i(r_i-r_{i-1})\in\mathbb Z,
\end{aligned}
\]

where the differences in the last line are integer differences, and \(r_m=r_0=0\) was used. Reduction modulo two gives exactly

\[
 \boxed{(-1)^w=(-1)^{\sum_iq_i s_i}.}
\]

The script exhaustively verifies the jump values, winding formula, and sign for every \((r,s)\) sector through \(m=7\). The algebra above, rather than finite enumeration, proves the general formula.

### 7.3 Deliberately unverified step

The critical bipartite covariance reduction identifying each \(\operatorname{Tr}(S_rP_sS_rP_s)\) with an XX full-counting-statistics determinant, including its overall normalization and phase, was not independently derived or checked here. Nor was an extension from the finite determinant to any continuum asymptotic established. Those are distinct steps from the verified projector and winding identities. Any such reduction must retain determinant/Pfaffian signs and avoid normalizing \(S_r\) by a possibly vanishing string expectation.
