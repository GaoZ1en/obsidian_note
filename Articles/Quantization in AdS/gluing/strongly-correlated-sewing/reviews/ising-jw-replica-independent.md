# Finite Ising spin replicas: independent JW derivation and sign audit

Date: 2026-11-07. Scope: finite even periodic critical Ising chain; no assumption of continuum convergence. Sections 1–8 were derived from the supplied Hamiltonian/JW conventions before receiving the parent agent's FCS candidate. Section 9 is explicitly a **collaborative review of that candidate**, not a blind independent derivation.

## Result first

Let \(G\) be the Gaussian restriction to the CAR algebra of \(A=A_1\cup A_2\), represented on the spin Hilbert space \(\mathcal H_A\) using the **JW ordering within A only**. Let \(S\) be the **unnormalized CAR string insertion** defined by
\[
 \operatorname{Tr}_A[S O(\eta)]=\langle P_B O(\gamma_A)\rangle.
\]
With \(P_1=\prod_{j\in A_1}X_j\), the exact finite-system identity is
\[
 \boxed{\rho_A^{\rm spin}=\tfrac12(G+P_1GP_1+S-P_1SP_1).} \tag{R1}
\]
In particular, define
\[
 T_0=\operatorname{Tr}G^2,\quad T_1=\operatorname{Tr}GP_1GP_1,\quad
 T_2=\operatorname{Tr}S^2,\quad T_3=\operatorname{Tr}SP_1SP_1.
\]
Then
\[
 \boxed{\operatorname{Tr}(\rho_A^{\rm spin})^2
       =\tfrac12(T_0+T_1+T_2-T_3).} \tag{R2}
\]
The last term is not zero at finite lattice spacing. For an explicit four-site example,
\[
 (T_0,T_1,T_2,T_3)=
 \left(\frac9{16},\frac{5+2\sqrt2}{16},\frac{5+2\sqrt2}{16},
                   \frac{1+\sqrt2}{8}\right).
\]

Every positive integer moment has an exact sum over \(4^{n-1}\) ordered Gaussian words with sign \((-1)^{\alpha\cdot\beta}\), derived below. The count and sign alone do **not** prove that each word has the desired continuum spin-structure Pfaffian limit.

The signed overlap Pfaffian and, in this critical model, ordinary determinant formulas remove any principal-square-root ambiguity. The exact \(n=2\) XX full-counting-statistics (FCS) correspondence in Section 9 supplies a concrete asymptotic route. Its finite algebra is verified; the required finite-circle/multiple-jump asymptotic theorem is not proved in this report.

## 1. Objects, ordering, and the spin/CAR identification

Take an even number \(N\) of sites on a circle,
\[
 H=-\sum_{j=1}^{N} Z_jZ_{j+1}-\sum_{j=1}^{N}X_j,
 \qquad Z_{N+1}=Z_1,\qquad P=\prod_jX_j.
\]
The ground state \(|\Omega\rangle\) is unique and has \(P=+1\). Write \(a=L/N\), although no limit of \(a\) is used in the finite identities.

Choose the JW cut in the outer complement, before \(A_1\), so the linear order is
\[
 C_L,\ A_1,\ B,\ A_2,\ C_R.
\]
Both \(B\) and the outer complement are nonempty. The supplied conventions are
\[
 \gamma_{2j-1}=\Big(\prod_{k<j}X_k\Big)Z_j,
 \quad
 \gamma_{2j}=\Big(\prod_{k<j}X_k\Big)Y_j,
 \quad i\gamma_{2j-1}\gamma_{2j}=X_j.
\]
Let \(\ell_i=|A_i|\), \(\ell=\ell_1+\ell_2\), and \(b=|B|\).

On the actual spin tensor factor
\(\mathcal H_A=\bigotimes_{j\in A}\mathbb C^2\), introduce another set of Majorana matrices \(\eta\), using a JW string over **preceding sites in A**, not over all preceding sites of the circle. These matrices give an irreducible representation of the restricted CAR algebra on \(\mathcal H_A\). The isomorphism is \(\gamma_{A,r}\mapsto\eta_r\); it is not the assertion that the two embedded spin operators are identical.

Let \(Q=\prod_{j\in C_L}X_j\). As full-spin operators, with the matrices \(\eta\) embedded on A,
\[
 \gamma_{A,r}=Q\eta_r\quad(r\in A_1),\qquad
 \gamma_{A,r}=QP_B\eta_r\quad(r\in A_2). \tag{1.1}
\]
All exterior factors here commute with \(\eta\). For an ordered Majorana monomial \(\eta_I\), write \(p,q\) for the numbers of factors in \(A_1,A_2\), modulo 2. Then
\[
 \gamma_I=Q^{|I|}P_B^q\eta_I.
\]
Every odd-degree expectation vanishes by global parity. For even degree, \(p=q\) and
\[
 \langle\eta_I\rangle=\langle P_B^q\gamma_I\rangle. \tag{1.2}
\]
There is no extra reordering sign in (1.2): \(P_B\) has even Majorana degree and its spin support is disjoint from A.

Define operators on \(\mathcal H_A\) through their complete matrix-algebra functionals:
\[
 \operatorname{Tr}_A[G O(\eta)]=\langle O(\gamma_A)\rangle,
 \qquad
 \operatorname{Tr}_A[S O(\eta)]=\langle P_B O(\gamma_A)\rangle. \tag{1.3}
\]
Thus \(G\ge0\), \(\operatorname{Tr}G=1\); \(S=S^\dagger\), but S need not be positive. Both commute with total A parity \(P_A=P_1P_2\).

**S is not the ordinary spin partial trace of \(P_B|\Omega\rangle\langle\Omega|\).** Equation (1.3) is a CAR restriction, equivalently a fermionic partial trace after a graded mode reordering. This distinction matters for disconnected A.

## 2. Parity projection proves the four-term identity

Conjugation by \(P_1\) flips the sign of every \(A_1\) Majorana and leaves \(A_2\) Majoranas unchanged. Define operator-space projections
\[
 \mathcal E_1(O)=\frac{O+P_1OP_1}{2},\qquad
 \mathcal O_1(O)=\frac{O-P_1OP_1}{2}. \tag{2.1}
\]
Equation (1.2), checked on a complete Majorana-monomial basis, gives
\[
 \rho_A^{\rm spin}=\mathcal E_1(G)+\mathcal O_1(S). \tag{2.2}
\]
This proves (R1) independently of Gaussianity. It holds for any globally parity-invariant state with the stated ordering. Gaussianity is needed only to evaluate its terms by covariances.

For comparison, define the ordinary spin insertion
\[
 \tau_A^{\rm spin}=\operatorname{Tr}_{\bar A}^{\rm spin}
       [P_B|\Omega\rangle\langle\Omega|].
\]
The same monomial argument gives
\[
 \tau_A^{\rm spin}=\mathcal E_1(S)+\mathcal O_1(G),\qquad
 G=\mathcal E_1(\rho_A^{\rm spin})+\mathcal O_1(\tau_A^{\rm spin}),\qquad
 S=\mathcal E_1(\tau_A^{\rm spin})+\mathcal O_1(\rho_A^{\rm spin}). \tag{2.3}
\]
These relations are also independently checked by full spin matrices in the script.

Because \([G,P_A]=[S,P_A]=0\), conjugation by \(P_2\) can replace conjugation by \(P_1\) everywhere. No change of physical state is involved.

There is a useful positivity statement that does not make S positive:
\[
 G_\pm:=\frac{G\pm S}{2}\ge0,\qquad
 \operatorname{Tr}G_\pm=\frac{1\pm\langle P_B\rangle}{2}. \tag{2.4}
\]
Indeed these are the restricted functionals with the positive, commuting insertions \((1\pm P_B)/2\). Consequently
\[
 -G\le S\le G,\quad \|S\|_1\le1,\quad
 0\le T_1\le T_0,\quad 0\le T_2\le T_0,\quad |T_3|\le T_2. \tag{2.5}
\]
For the middle inequality, \(T_0-T_2=4\operatorname{Tr}(G_+G_-)\ge0\). There is no general positivity claim for \(T_3\).

## 3. Gaussian normalization and the string Schur complement

Use the real antisymmetric covariance
\[
 \Gamma_{rs}=\frac{i}{2}\langle[\gamma_r,\gamma_s]\rangle,
 \qquad\langle\gamma_r\gamma_s\rangle=-i\Gamma_{rs}\quad(r\ne s).
\]
For an ordered even index set I of cardinality \(2k\), Wick's rule is
\[
 \langle\gamma_I\rangle=(-i)^k\operatorname{Pf}\Gamma_I. \tag{3.1}
\]
For any antisymmetric \(2\ell\times2\ell\) matrix K, define its normalized Gaussian Clifford polynomial by
\[
 \mathcal G(K)=2^{-\ell}\sum_{I\ {m even}}
     i^{|I|/2}\operatorname{Pf}K_I\,\eta_I,
 \qquad\operatorname{Pf}K_\varnothing=1. \tag{3.2}
\]
It has trace 1. It is not asserted positive for an arbitrary K.

Since
\(P_B=i^b\prod_{r\in B}^{\rm ordered}\gamma_r\), the string normalization is
\[
 t:=\operatorname{Tr}S=\langle P_B\rangle=\operatorname{Pf}\Gamma_B. \tag{3.3}
\]
With B listed before I, Wick's rule directly gives the unnormalized expression
\[
 S=2^{-\ell}\sum_{I\subset A\ {m even}}
        i^{|I|/2}\operatorname{Pf}\Gamma_{B,I}\,\eta_I. \tag{3.4}
\]
Moving the entire B block past any A indices gives no sign because \(|B|\) in Majorana indices is \(2b\). Formula (3.4) remains meaningful even when t vanishes.

If \(t\ne0\), the Pfaffian Schur-complement identity yields
\[
 G=\mathcal G(\Gamma_A),\qquad S=t\,\mathcal G(\Gamma^{(B)}),\qquad
 \boxed{\Gamma^{(B)}=\Gamma_A-\Gamma_{AB}\Gamma_B^{-1}\Gamma_{BA}.} \tag{3.5}
\]
The minus sign in (3.5) is fixed by the block antisymmetry \(\Gamma_{BA}=-\Gamma_{AB}^T\).

In this specific finite Ising ground state, \(t>0\): in the Z basis, H is irreducibly stoquastic, so its unique ground vector has strictly positive entries; \(P_B\) is a permutation matrix with nonnegative entries. Thus \(\langle P_B\rangle>0\). This also proves that \(\Gamma_B\) is invertible. The positivity statement does not extend to S itself: the four-site example below has an eigenvalue \(-1/8\).

Let \(D=\operatorname{diag}(-I_{2\ell_1},+I_{2\ell_2})\). Conjugation by \(P_1\) acts as
\[
 P_1\mathcal G(K)P_1=\mathcal G(DKD). \tag{3.6}
\]
When normalized inserted operators are used instead of S, every replica word must retain its explicit factor \(t^{\#\text{insertions}}\). Small t does not justify dropping those words: \(S/t\) need not be positive or uniformly bounded.

## 4. All integer moments, including mixed noncommuting words

Set \(F_0=G\), \(F_1=S\). Expanding (R1) gives the exact ordered-word formula
\[
 \operatorname{Tr}\rho_A^n=
 2^{-n}\sum_{r,s\in\{0,1\}^n}(-1)^{r\cdot s}
 \operatorname{Tr}\prod_{j=1}^{n}\left(P_1^{s_j}F_{r_j}P_1^{s_j}\right). \tag{4.1}
\]
The product is ordered in increasing j; different factors need not commute.

Simultaneous replacement \(s\mapsto s+(1,\ldots,1)\) conjugates the complete word by \(P_1\), leaving its trace unchanged and changing its coefficient by \((-1)^{\sum r_j}\). Therefore all odd-\(|r|\) sectors cancel. Fixing the remaining global-conjugation freedom by \(s_n=0\) gives
\[
 \boxed{
 \operatorname{Tr}\rho_A^n=2^{1-n}
 \sum_{\substack{r\in\{0,1\}^n\\\sum_jr_j=0\pmod2}}
 \sum_{s_1,\ldots,s_{n-1}\in\{0,1\}}
 (-1)^{\sum_{j=1}^{n-1}r_js_j}
 \operatorname{Tr}\prod_{j=1}^n
       \left(P_1^{s_j}F_{r_j}P_1^{s_j}\right),\quad s_n=0.} \tag{4.2}
\]
There are \(2^{n-1}\) allowed r's and \(2^{n-1}\) choices of s: \(4^{n-1}\) words. With \(\alpha_j=r_j\), \(\beta_j=s_j\), and \(r_n=\sum_{j<n}\alpha_j\) modulo 2, the coefficient is \((-1)^{\alpha\cdot\beta}\). This is the familiar algebraic Arf-sign pattern, not yet an asymptotic theorem.

An equivalent placement of the parity twists is
\[
 \operatorname{Tr}\prod_j(P_1^{s_j}F_{r_j}P_1^{s_j})
 =\operatorname{Tr}\left[F_{r_1}P_1^{s_1+s_2}F_{r_2}
       P_1^{s_2+s_3}\cdots F_{r_n}P_1^{s_n+s_1}\right]. \tag{4.3}
\]
This explicitly locates replica-seam parity insertions.

For an entirely polynomial evaluation of any Gaussian word, expand each factor by (3.2). Only index sets \(I_1,\ldots,I_n\) with empty symmetric difference survive the trace. If
\(\mathrm{inv}(I,J)=\#\{(u,v)\in I\times J:u>v\}\), then
\[
 \operatorname{Tr}\prod_{j=1}^n\mathcal G(K_j)
 =2^{-\ell(n-1)}
 \sum_{I_1\triangle\cdots\triangle I_n=\varnothing}
 i^{\sum_j|I_j|/2}
 (-1)^{\sum_{j<k}\mathrm{inv}(I_j,I_k)}
 \prod_j\operatorname{Pf}(K_j)_{I_j}, \tag{4.4}
\]
where all \(I_j\) are even. It is finite, order-sensitive, and has no square-root branch choice.

The mixed terms do not disappear in general. With \(E=\mathcal E_1(G)\), \(O=\mathcal O_1(S)\), conjugation by \(P_1\) gives \(E\mapsto E\), \(O\mapsto-O\). Thus
\[
 \operatorname{Tr}\rho^3=\operatorname{Tr}E^3+3\operatorname{Tr}EO^2,
\]
and the second term is a genuine mixed G/S contribution. Treating the four-term sum as a single Gaussian misses it.

## 5. The second moment and an unambiguous overlap formula

For \(n=2\), \(\operatorname{Tr}EO=0\), and
\[
 \operatorname{Tr}E^2=\tfrac12(T_0+T_1),\qquad
 \operatorname{Tr}O^2=\tfrac12(T_2-T_3).
\]
This proves (R2). The absence of G/S terms at this particular n is a parity cancellation, not a general permission to discard cross terms.

For arbitrary antisymmetric K,K', Clifford orthogonality gives
\[
 \begin{split}
 \mathcal F(K,K')&:=\operatorname{Tr}[\mathcal G(K)\mathcal G(K')]\\
 &=2^{-\ell}\sum_{I\ {m even}}\operatorname{Pf}K_I\operatorname{Pf}K'_I\\
 &=(-1)^\ell 2^{-\ell}
   \operatorname{Pf}\begin{pmatrix}K&I_{2\ell}\\-I_{2\ell}&-K'\end{pmatrix}.
 \end{split} \tag{5.1}
\]
In particular,
\[
 T_0=\mathcal F(\Gamma_A,\Gamma_A),\quad
 T_1=\mathcal F(\Gamma_A,D\Gamma_AD),\quad
 T_2=t^2\mathcal F(\Gamma^{(B)},\Gamma^{(B)}),\quad
 T_3=t^2\mathcal F(\Gamma^{(B)},D\Gamma^{(B)}D). \tag{5.2}
\]
The determinant identity gives only
\[
 \mathcal F(K,K')^2=2^{-2\ell}\det(I-KK').
\]
Replacing (5.1) by a principal square root can lose a sign. For one mode with \(K_{12}=2\), \(K'_{12}=-2\), the true overlap is \(-3/2\), whereas the principal square root is \(+3/2\).

There is also a useful exact complement check. Under a graded Fock factorization \(A|R\), \(R=\bar A=B\cup C\), the state is pure. The purification identity implies
\[
 T_2(A;B)=\operatorname{Tr}_R(G_RP_BG_RP_B)=T_1(R;B),
 \qquad T_0(A)=T_0(R). \tag{5.3}
\]
The cross ratio of the two complementary intervals is \(1-x\). Thus the interchange of the T1/T2 labels under \(x\leftrightarrow1-x\) has a finite algebraic basis.

## 6. Exact critical PBC covariance and Cauchy formulas

The boundary sign must be kept. For the specified JW convention,
\[
 i\gamma_{2j}\gamma_{2j+1}=Z_jZ_{j+1}\ (j<N),\qquad
 i\gamma_{2N}\gamma_1=-P Z_NZ_1.
\]
In the even sector,
\[
 H_+=-i\sum_{r=1}^{2N-1}\gamma_r\gamma_{r+1}
                  +i\gamma_{2N}\gamma_1. \tag{6.1}
\]
This is antiperiodic Majorana hopping. Its ground state is the physical even NS Gaussian vacuum. In \(H_+=(i/4)\gamma^Th\gamma\), the entries are \(h_{r,r+1}=-2\), \(h_{1,2N}=-2\), completed antisymmetrically. The ground covariance is
\(\Gamma=-h(-h^2)^{-1/2}\).

Discrete Fourier momenta \(p=(2k+1)\pi/(2N)\) give, for Majorana indices r,s,
\[
 \boxed{\Gamma_{rs}=
 \begin{cases}
 [N\sin(\pi(s-r)/(2N))]^{-1},&s-r\text{ odd},\\
 0,&s-r\text{ even}.
 \end{cases}} \tag{6.2}
\]
The diagonal is included in the zero case. This is an exact finite formula, not the infinite-chain approximation.

Reorder odd Majoranas first and even Majoranas second. For any selected sites,
\[
 \Gamma=\begin{pmatrix}0&C\\-C^T&0\end{pmatrix},\qquad
 C_{ij}=\frac1{N\sin[\pi(j-i+1/2)/N]}. \tag{6.3}
\]
Indices i,j here are spin-site labels. In paired site order, \(\operatorname{Pf}\Gamma_B=\det C_B\); the two permutation signs cancel. The inserted covariance has the same bipartite form, with
\[
 C_s=C_A-C_{AB}C_B^{-1}C_{BA},\qquad t=\det C_B. \tag{6.4}
\]
Cauchy–Binet applied to the minor sum in (5.1) gives the **signed** determinant formula
\[
 \mathcal F(\Gamma(C),\Gamma(C'))=2^{-\ell}\det(I+CC'^T). \tag{6.5}
\]
Let \(E=\operatorname{diag}(-I_{\ell_1},+I_{\ell_2})\) on site indices. Thus
\[
 \begin{array}{ll}
 T_0=2^{-\ell}\det(I+C_AC_A^T),&
 T_1=2^{-\ell}\det(I+C_AEC_A^TE),\\[2pt]
 T_2=t^2 2^{-\ell}\det(I+C_sC_s^T),&
 T_3=t^2 2^{-\ell}\det(I+C_sEC_s^TE).
 \end{array} \tag{6.6}
\]
No determinant square root is used in the numerical tables.

The trigonometric Cauchy determinant identity also removes the inverse in (6.4). With \(\theta=\pi/N\),
\[
 (C_s)_{ij}=u_i C_{ij}v_j,\qquad
 u_i=\prod_{b\in B}\frac{\sin\theta(i-b)}{\sin\theta(i-b-1/2)},\qquad
 v_j=\prod_{b\in B}\frac{\sin\theta(j-b)}{\sin\theta(j-b+1/2)}. \tag{6.7}
\]
For a consecutive B of length b,
\[
 t=N^{-b}
 \frac{\prod_{d=1}^{b-1}\sin^{2(b-d)}(\theta d)}
 {\sin^b(\theta/2)
  \prod_{d=1}^{b-1}[\sin\theta(d+1/2)\sin\theta(d-1/2)]^{b-d}}. \tag{6.8}
\]
These formulas follow from the ratio of the enlarged Cauchy determinant to \(\det C_B\); the one-row/one-column ratio is exactly the Schur complement. They were also checked numerically for both consecutive and nonconsecutive B.

The infinite-line kernel \(2/[\pi(2(j-i)+1)]\) follows when separations are fixed while \(N\to\infty\). That limit must not be silently substituted for the fixed-fraction, fixed-physical-circle scaling used below.

## 7. Finite verification and a counterexample to dropping T3

The actual executable checks are saved in [ising_jw_replica_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_jw_replica_checks.py>). The script writes only to stdout, creates no JSON, and uses NumPy. It was run with one BLAS/OpenMP thread and \(N_{\max}=1024\). All assertions passed.

Independent small-system inputs were:

1. Full spin Hamiltonian diagonalization at \(N=4,6,8\), not a Gaussian-state reconstruction.
2. Direct global Majorana monomials and direct \(P_B\) insertion in that spin ground vector.
3. Ordinary spin partial traces for both \(\rho_A^{\rm spin}\) and \(\tau_A^{\rm spin}\).
4. Gaussian/Pfaffian reconstruction and the finite NS covariance, compared with the above.
5. Full density-matrix powers versus (4.2), for \(n=2,3,4\).

The spin four-term reconstruction residuals were below \(1.5\times10^{-14}\) in Frobenius norm. Moment residuals were below \(1.2\times10^{-15}\). The random overlap-polynomial/Pfaffian checks had largest residual \(5.6\times10^{-17}\); this is a numerical consistency check, not a replacement for (5.1)'s polynomial proof.

For \(N=4\), use zero-based sites \(A_1=\{1\},B=\{2\},A_2=\{3\}\), with the JW origin at site 0 in the complement. Then
\[
 \operatorname{Tr}\rho_A^2=\frac{17+2\sqrt2}{32}
                      =0.619638347648318\ldots,
 \qquad \lambda_{\min}(S)=-\frac18.
\]
This is an exact finite counterexample to both “S is a density matrix” and “the odd-sign T3 contribution is identically zero on the lattice.” The exact terms stated at the start follow by inserting
\(C_A=\bigl(\begin{smallmatrix}u&v\\-v&u\end{smallmatrix}\bigr)\), with
\(u^2=(2+\sqrt2)/8\), \(v^2=(2-\sqrt2)/8\), into (6.6).

### Cross-ratio-asymmetric label check

Here “asymmetric” means \(x\ne1/2\), **not** unequal interval lengths. Choose
\(|A_1|=|A_2|=N/8\), \(|B|=N/4\), with outer complement \(N/2\). The simulated chain lengths N are multiples of 16. The circle cross ratio is
\[
 x=\frac{\sin(\pi|A_1|/N)\sin(\pi|A_2|/N)}
          {\sin(\pi(|A_1|+|B|)/N)\sin(\pi(|A_2|+|B|)/N)}
   =(\sqrt2-1)^2.
\]
Define \(p_i=\operatorname{Tr}(\rho_{A_i}^{\rm spin})^2\) and
\(R_2^{\rm spin}=\operatorname{Tr}(\rho_A^{\rm spin})^2/(p_1p_2)\).

| N | T1/T0 | T2/T0 | T3/T0 | T0/(p1 p2) | R2 spin |
|---:|---:|---:|---:|---:|---:|
| 16 | 0.9585912141 | 0.6596903374 | 0.3015763561 | 1.0262239517 | 1.1887291803 |
| 64 | 0.9552915498 | 0.6478545558 | 0.1550945101 | 1.0245267119 | 1.2540471259 |
| 256 | 0.9543553803 | 0.6446772279 | 0.0780410426 | 1.0239949849 | 1.2907413600 |
| 1024 | 0.9541143544 | 0.6438661461 | 0.0390803544 | 1.0238547025 | 1.3099709738 |

The candidate continuum ratios supplied for comparison are
\[
 ((1-x)^{1/4},x^{1/4},0)=(0.9540333962,0.6435942529,0),
\]
with candidate
\[
 R_2^{\rm spin}\longrightarrow
 (1-x)^{-1/8}\frac{1+x^{1/4}+(1-x)^{1/4}}2
 =1.3297350423\ldots.
\]
The finite data support the proposed T1/T2 labeling and exhibit a substantial, slowly decreasing T3 correction. They do not prove these limits.

For the equal-quarter geometry, \(x=1/2\), \(N=1024\) gives
\[
 T_1/T_0=T_2/T_0=0.8410436075,\quad T_3/T_0=0.0374287432,
 \quad R_2^{\rm spin}=1.4421580013.
\]
The corresponding candidate values are \(0.8408964153,0,1.4622579095\). Equality of T1 and T2 in this geometry follows from complementary-interval symmetry; it would by itself be a poor test of which label carries x versus \(1-x\).

## 8. What has, and has not, been aligned with spin structures

The finite derivation fixes:

- which operator is the spin reduced state and which is the CAR Gaussian restriction;
- the origin of the gap string, its normalization, and its even/odd A1 projections;
- the signs and ordering of every integer-replica word;
- the even number of inserted-string factors and the \(4^{n-1}\) sum;
- at \(n=2\), all four signed determinants and their exact complement relation.

The remaining general-n task is not another check of trivial expansion steps. It is to associate each ordered word with a specified finite replica defect/cycle construction, then prove the corresponding branch-point/endpoint-renormalized Pfaffian asymptotic uniformly in separated endpoints. An Arf-like sign and the right number of terms do not themselves perform that identification or establish convergence.

The finite S normalization must remain inside this argument. Although \(t>0\) at each finite N, it may tend to zero in a scaling family, while \(S/t\) loses any uniform boundedness. Setting all string terms to zero on that basis is unjustified.

## 9. Collaborative check: exact n=2 XX counting-phase representation

**Provenance:** the parent agent proposed the FCS mapping and the four phase assignments after the independent finite derivation above. The checks here are a collaborative algebraic and numerical review of that candidate.

### 9.1 Exact matrix identity

Let \(J=A_1\cup B\cup A_2\), and let \(\Pi_A\) equal 1 on A Majoranas and 0 on B Majoranas. Write \(\widehat D\) for D on A and 0 on B. Principal-minor expansion of a skew matrix gives
\[
 \begin{aligned}
 T_0&=2^{-\ell}\det(I+\Gamma_A),\\
 T_1&=2^{-\ell}\det(D+\Gamma_A),\\
 T_2&=2^{-\ell}\det(\Pi_A+\Gamma_J),\\
 T_3&=2^{-\ell}\det(\widehat D+\Gamma_J).
 \end{aligned} \tag{9.1}
\]
For T1, \(\det D=(-1)^{2\ell_1}=1\), and
\(\det(I+D\Gamma_A)=\sum_{I\ {m even}}(\prod_{r\in I}D_{rr})(\operatorname{Pf}\Gamma_I)^2\), exactly the overlap polynomial. For T2/T3, take the Schur complement of \(\Gamma_B\); its determinant is \(t^2\), and the surviving block is \(I+\Gamma^{(B)}\) or \(D+\Gamma^{(B)}\). This proves every normalization in (9.1).

Now consider an auxiliary XX chain with **2N sites**, antiperiodic momenta
\(q_k=(2k+1)\pi/(2N)\), and N occupied modes with \(\cos q_k>0\). Let \(C_{XX}\) be its occupied-mode projection and \(Q_{XX}=2C_{XX}-I\). With zero-based Majorana/XX index r,
\[
 U_{rr}=e^{-i\pi r/2},\qquad Q_{XX}=U^\dagger(i\Gamma)U. \tag{9.2}
\]
Indeed both sides have zero diagonal and, for unequal r,s, kernel
\(\sin[\pi(s-r)/2]/\{N\sin[\pi(s-r)/(2N)]\}\).

For a diagonal counting phase \(\Lambda\) supported in J, the centered FCS determinant is
\[
 \chi(\Lambda)=\det\left[\cos(\Lambda/2)+i\sin(\Lambda/2)Q_{XX,J}\right]
             =\det\left[\cos(\Lambda/2)-\sin(\Lambda/2)\Gamma_J\right]. \tag{9.3}
\]
The diagonal gauge U commutes with \(\Lambda\), so it drops out of the determinant. Equivalently this is the XX expectation of \(\exp[i\sum_r\lambda_r(n_r-1/2)]\).

In the order \((A_1,B,A_2)\), the exact phases are
\[
 \begin{array}{c|ccc}
       & A_1 & B & A_2\\\hline
 T_0 & -\pi/2 & 0 & -\pi/2\\
 T_1 & +\pi/2 & 0 & -\pi/2\\
 T_2 & -\pi/2 & -\pi & -\pi/2\\
 T_3 & +\pi/2 & -\pi & -\pi/2
 \end{array} \tag{9.4}
\]
For example, a phase \(-\pi/2\) supplies a row \((I+\Gamma)/\sqrt2\); a phase \(-\pi\) supplies the row \(\Gamma\). Every spin site corresponds to two XX sites, so shifting a whole spin block's phase by \(2\pi\) multiplies an even number of rows by \(-1\), leaving \(\chi\) unchanged. A shift on only one auxiliary XX site would instead change the centered determinant's sign.

Independent numerical construction of the XX Fourier projector, not substitution of \(i\Gamma\) for it, gave maximal four-term mismatch below \(1.5\times10^{-15}\) for \(N=4,8,16\). The gauge identity residual was below \(4.8\times10^{-14}\). The complement relation (5.3) and even-block phase periodicity were checked in the same run.

### 9.2 Conditional Fisher–Hartwig bookkeeping, not a limit proof

In units of \(2\pi\), the four endpoint jumps are
\[
 \beta_0=\tfrac14(-1,+1,-1,+1),\quad
 \beta_1=\tfrac14(+1,-1,-1,+1),\quad
 \beta_2=\tfrac14(-1,-1,+1,+1),\quad
 \beta_3=\tfrac14(+1,-3,+1,+1). \tag{9.5}
\]
The first three have squared norm \(1/4\). The fourth has four minimizing integer-shift representations, each with three entries \(+1/4\) and one entry \(-3/4\); every minimum has squared norm \(3/4\). If an applicable multiple-jump FCS asymptotic with controlled remainders is supplied, this predicts the relative \(N^{-1/2}\) suppression of T3 observed in the finite table.

For the first three, the endpoint interaction exponents differ by
\[
 T_1/T_0:\quad
 \left(\frac{d_{14}d_{23}}{d_{13}d_{24}}\right)^{1/4}=(1-x)^{1/4},
 \qquad
 T_2/T_0:\quad
 \left(\frac{d_{12}d_{34}}{d_{13}d_{24}}\right)^{1/4}=x^{1/4}, \tag{9.6}
\]
where \(d_{ij}\) are the positive circle chord distances of the four ordered endpoints. The equality follows from the circle Ptolemy identity. The single-interval normalization would then supply the additional \((1-x)^{-1/8}\) in \(R_2\).

The missing analytic input is precise: the fixed-filling finite-circle discrete FCS determinant, with all four separated endpoints scaled together, needs the stated uniform multi-jump asymptotic, its constants, and control of the four degenerate representations for T3. Their oscillatory coefficients and possible cancellations must be tracked. An infinite-line Toeplitz asymptotic is not automatically a theorem for the finite-circle scaling at half filling. No claim that this input is already proved is made here.

## Final boundary of the result

The finite four-term identity, all-integer ordered-word sum, signed n=2 Pfaffian/determinant formulas, exact PBC covariance, Cauchy Schur factorization, and the collaborative exact XX FCS mapping are analytic finite statements. The numerical work is an independent consistency check and supplies finite counterexamples to incorrect simplifications. General-n continuum spin-structure Pfaffian asymptotics, and the particular finite-circle FCS theorem required to close the n=2 limit, remain outside what this report proves.
