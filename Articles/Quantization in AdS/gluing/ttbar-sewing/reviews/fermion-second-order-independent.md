# Independent review: Majorana second-order Hamiltonian and local spatial realization

## Result and boundary of the claim

**Classical quartic truncation does not prove that the quantum canonical coefficient \(V_2\) vanishes.** For one massless Majorana there is, however, a local classical Darboux representative in which the canonical Hamiltonian itself truncates at the quartic interaction. A nonzero classical sextic is not the missing ingredient. The important quantum ingredients are the distinction between stress-tensor conformal normal products and full fermion Wick products, the quantum implementation of the field redefinition, and the UV subtraction of the iterated first-order vertex.

At engineering dimension six, the parity-even Ising identity-family Hamiltonian densities, modulo spatial total derivatives, have three independent directions. They can all be realized by explicit finite-range, full-Wick bilinear or quartic lattice Majorana polynomials. No full-Wick sextic of dimension six exists.

The additional local candidate checked below is the **pairwise-symmetric finite-frame representative**, not the literal complete midpoint determinant finite part:

\[
 V_{2,\mathrm{loc}}\equiv V_{2,\mathrm{pair}}=-\frac7{6\pi}K_{42}
 -\frac{47}{24\pi}K_{33}
 -\frac1{180\pi^2}\mathcal Q_5.
\]

The literal determinant-FP representative has instead \(-35K_{33}/(24\pi)\). The difference is \(K_{33}/(2\pi)=2D_x/\pi\), a local second-order unitary-frame change: it preserves the second-order spectrum and vacuum expectation but changes the normalized vacuum-to-\(TT\) vertex from \(-4\pi^3/L^5\) to \(+28\pi^3/L^5\). Section 3.3 records the association-order mapping. All existing spatial tables below refer to \(V_{2,\mathrm{pair}}\).

Its conversion from specified normal-conformal composites and its NS vacuum-to-normalized-\(TT\) four-creation vertex are verified. **This review does not prove that this candidate, combined with the existing first-order spatial regulator, gives the full second-order spectrum or all second-order vertices.** Its quantum derivation, finite scheme, and the divergent and finite counterterms of the *same spatial regulator* remain separate matching questions.

This review was developed independently of other project candidate files. No such files were read. No web or PDF sources were used. The candidate coefficients just displayed were communicated by the parent researcher after the independent classical/basis analysis; they are treated as a candidate to check, not as an established result.

## 1. Conventions and the classical canonical issue

Spacetime signature is \((- ,+)\), \(\hbar=v=1\), the circumference is \(L\), and \(c=1/2\) in each chiral Virasoro algebra. The equal-time canonical fields obey

\[
 \{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y),
 \qquad \{R(x),L(y)\}=0,
\]

with

\[
 h_R=-\frac i2:RR':,\qquad h_L=+\frac i2:LL':,
 \quad H_0=\int(h_R+h_L),\quad V_1=-4\int h_Rh_L.
\]

The expansion is \(H_\lambda=H_0+\lambda V_1+\lambda^2V_2+\cdots\); there is no factorial in the definition of \(V_2\). Products marked by \(:\ :_\infty\) below are full fermion Wick products with the infinite-line/plane covariance, not NS-vacuum Wick products.

### 1.1 A local action representative and an explicit Darboux map

Consider the Grassmann-valued classical density

\[
 \mathcal L_0=\frac i2\{R(\dot R+R')+L(\dot L-L')\},
 \qquad
 \mathcal L_1=\frac12(RR'L\dot L-R\dot RLL').
\]

For the free canonical mixed stress tensor, write
\(A=R\dot R\), \(B=RR'\), \(C=L\dot L\), and \(D=LL'\). Its determinant is

\[
 \det T_0=\frac12(AD-BC),\qquad \mathcal L_1=-\det T_0.
\]

This is a useful canonical-stress representative of the local first-order action. A zweibein/Hilbert-stress improvement comparison is not performed here, so this observation is not used as an independent complete derivation of a quantum covariant flow.

The velocity-dependent interaction changes the fermionic symplectic potential. One must not quantize the original \(R,L\) using the free CAR without reducing the constraints or making a Darboux transformation. Explicitly set

\[
 R=r-\frac{i\lambda}{2}rll',\qquad
 L=l+\frac{i\lambda}{2}lrr'.
\]

Direct substitution, without using the equations of motion, gives

\[
 \mathcal L_0(R,L)+\lambda\mathcal L_1(R,L)
 =\mathcal L_0(r,l)+\lambda rr'll'.
\]

All terms of order \(\lambda^2\) and higher vanish as classical Grassmann polynomials. The canonical representative is therefore

\[
 H_{\mathrm{cl}}=H_0(r,l)-\lambda\int rr'll'
 =H_0-4\lambda\int h_Rh_L.
\]

This equality was checked exactly with a Sage exterior algebra, retaining independent spatial and temporal jets before substitution. The final residual was zero. It establishes a classical possibility, not a quantum normal-ordering theorem. In particular, the coincident cubic fields in the Darboux map require their own operator prescription at the quantum level.

### 1.2 Why the quantum stress square survives

For a Euclidean chiral field with

\[
 \psi(w)\psi(0)\sim\frac1w,\qquad T=-\frac12:\psi\partial_w\psi:_\infty,
\]

the one-sided conformal normal product is

\[
 Q_{4,\mathrm{std}}=(TT)
 =\frac38:\psi'\psi'':_\infty
 -\frac5{24}:\psi\psi''':_\infty.
\]

Here primes in this equation mean \(\partial_w\). The four-fermion full-Wick term at coincidence vanishes, but the single-contraction finite terms do not. One can obtain the displayed coefficients by expanding the four single contractions in
\(\frac14:\psi(w+\epsilon)\psi'(w+\epsilon)::\psi(w)\psi'(w):\).
The singular terms are \(c/(2\epsilon^4)+2T/\epsilon^2+T'/\epsilon\), and the regular terms are exactly those shown.

Thus

\[
 :h_R^2h_L:_{\text{full fermion Wick}}=0
\]

does not imply that the normal-conformal composite \((h_Rh_R)h_L\) is zero. Its content can instead be a derivative bilinear times a bilinear, i.e. a nonzero full-Wick quartic.

## 2. The dimension-six identity-family basis

The identity family here means even fermion number in each chirality separately. Operators in the energy family, such as an \(RL\) bilinear, are excluded. A lattice implementation must enforce the corresponding symmetries/critical tuning rather than silently assume them.

Under spatial parity take
\(R(x)\mapsto L(-x)\), \(L(x)\mapsto R(-x)\). A convenient full-Wick integrated basis is

\[
\begin{aligned}
 \mathcal Q_5&=i\int_0^L dx\,
 \big(:RR^{(5)}:_\infty-:LL^{(5)}:_\infty\big),\\
 K_{42}&=\int_0^L dx\,
 \big(:RR'''LL':_\infty+:RR'LL''':_\infty\big),\\
 K_{33}&=\int_0^L dx\,:RR''LL'':_\infty.
\end{aligned}
\]

All three are Hermitian and parity even. Before integration, the parity-even space has dimension six: three chiral bilinear combinations and three quartic combinations. In the quartic sector define

\[
 K_2=\int\big(:R'R''LL':_\infty+:RR'L'L'':_\infty\big).
\]

The exact integration-by-parts relation is

\[
 K_2+K_{42}+2K_{33}=0.
\]

The chiral bilinears are reduced by
\(\int R'R^{(4)}=-\int RR^{(5)}\) and
\(\int R''R'''=\int RR^{(5)}\), and similarly on the left.
Sage enumeration of anticommuting spatial-jet monomials gives six parity-even dimension-six local directions and a rank-three space of parity-even total derivatives, leaving three integrated directions.

Six full-Wick fermions have minimum dimension nine without the identity-family restriction: the least expensive allocation is three right and three left fields with jets \(0,1,2\) in each chirality. Within the identity family the minimum is instead ten, from a two-plus-four chiral allocation. A purported dimension-six full-Wick sextic therefore either vanishes, or has not actually removed its lower-degree contraction terms.

## 3. Explicit normal-conformal composites in canonical fermions

The coordinate and normalization map used in this section is

\[
 \psi_R=\sqrt{2\pi}\,R,\qquad \partial_w=i\partial_x,
 \qquad
 \psi_L=\sqrt{2\pi}\,L,\qquad \partial_{\bar w}=-i\partial_x,
\]

so that \(T_R=2\pi h_R\) and \(T_L=2\pi h_L\). These are local coordinate statements. The circle-vacuum subtraction is addressed separately in section 5.

### 3.1 Standard and symmetric finite parts

Define the symmetric finite part by centering the split stress tensors. Translation of the one-sided OPE gives

\[
 Q_{4,\mathrm{sym}}=Q_{4,\mathrm{std}}-\frac14\partial_w^2T.
\]

Its physical right-moving stress square is explicitly

\[
\begin{aligned}
 (h_R^2)_{\mathrm{std}}
 &=\frac{5i}{48\pi}:RR''':_\infty
   -\frac{3i}{16\pi}:R'R'':_\infty,\\
 (h_R^2)_{\mathrm{sym}}
 &=\frac{i}{24\pi}:RR''':_\infty
   -\frac{i}{4\pi}:R'R'':_\infty.
\end{aligned}
\]

The left formulas have the opposite signs of \(i\). These expressions are bilinears, not a renaming of a stress square.

Let

\[
 S_{\mathrm{sym}}=\int\big[(h_R^2)_{\mathrm{sym}}h_L
       +h_R(h_L^2)_{\mathrm{sym}}\big],\qquad
 D_x=\int h_R'h_L'.
\]

The unintegrated fermion expressions and the integrated reduction are

\[
\begin{aligned}
 S_{\mathrm{sym}}&=-\frac1{48\pi}K_{42}+\frac1{8\pi}K_2
 =-\frac7{48\pi}K_{42}-\frac1{4\pi}K_{33},\\
 D_x&=\frac14K_{33}.
\end{aligned}
\]

Consequently

\[
 8S_{\mathrm{sym}}+\frac1{6\pi}D_x
 =-\frac7{6\pi}K_{42}-\frac{47}{24\pi}K_{33}.
\]

### 3.2 The additional specified chiral bilinear

The standard one-sided normal-conformal product of the stress derivatives is

\[
 J_w=(\partial_wT\,\partial_wT)
 =\frac16:\psi''\psi''':_\infty
       -\frac1{30}:\psi\psi^{(5)}:_\infty.
\]

This identity follows independently from \(\partial_wT=-\frac12:\psi\psi'':\): the regular terms of the four single contractions have coefficients \(\frac14(1-\frac13)=\frac16\) for \(:\psi''\psi''':\), and \(\frac14(-\frac13+\frac15)=-\frac1{30}\) for \(:\psi\psi^{(5)}:\). Its right-moving canonical expression is

\[
 J_R=\frac{i\pi}{3}:R''R''':_\infty
       -\frac{i\pi}{15}:RR^{(5)}:_\infty,
\]

and the left expression has the opposite signs of \(i\). Therefore

\[
 \int(J_R+J_L)=\frac{4\pi}{15}\mathcal Q_5,
 \qquad
 -\frac1{48\pi^3}\int(J_R+J_L)
 =-\frac1{180\pi^2}\mathcal Q_5.
\]

Equivalently, the physical normal-conformal product of spatial stress derivatives is \(J_{x,R}=((h_R')^2)=-J_R/(4\pi^2)\), so that \(\int J_{x,R}=-i\int:RR^{(5)}:_\infty/(15\pi)\), with the opposite left sign. The communicated flow coefficient \(1/(12\pi)\) multiplying \(\int(J_{x,R}+J_{x,L})\) therefore gives the displayed \(-\mathcal Q_5/(180\pi^2)\). The composite identity and conversion are verified here; a derivation of that flow coefficient from a quantum canonical action is not.

Putting the specified terms together gives the candidate quoted at the beginning:

\[
 V_{2,\mathrm{loc}}
 =8S_{\mathrm{sym}}+\frac1{6\pi}D_x
  -\frac1{48\pi^3}\int(J_R+J_L).
\]

### 3.3 Association order: literal determinant FP versus pairwise symmetry

A complete midpoint finite part and a prior inner-pair symmetric finite part are different composite prescriptions. The parent researcher's separate complete local-flow calculation identifies the integrated midpoint object \(h_0\circ(h_Rh_L)\) with the chiral **standard** composites \((h_R^2)_{\mathrm{std}}h_L+h_R(h_L^2)_{\mathrm{std}}\), not the inner-pair symmetric composites used above. This review does not rederive that complete midpoint association; the conversion between the specified prescriptions follows directly from the already-verified local formulas.

Define

\[
 S_{\mathrm{std}}=\int\big[(h_R^2)_{\mathrm{std}}h_L
                 +h_R(h_L^2)_{\mathrm{std}}\big].
\]

The stress-square difference is

\[
 (h_R^2)_{\mathrm{std}}-(h_R^2)_{\mathrm{sym}}
 =-\frac1{8\pi}h_R'',
 \qquad
 (h_L^2)_{\mathrm{std}}-(h_L^2)_{\mathrm{sym}}
 =-\frac1{8\pi}h_L''.
\]

Consequently, using the same circle boundary conditions and full-plane Wick prescription,

\[
 S_{\mathrm{std}}-S_{\mathrm{sym}}
 =\frac1{4\pi}D_x=\frac1{16\pi}K_{33}.
\]

Keeping the displayed derivative and chiral-bilinear terms unchanged gives

\[
\begin{aligned}
 V_{2,\mathrm{det}}
 &=8S_{\mathrm{std}}+\frac1{6\pi}D_x
   -\frac1{48\pi^3}\int(J_R+J_L)\\
 &=-\frac7{6\pi}K_{42}-\frac{35}{24\pi}K_{33}
   -\frac1{180\pi^2}\mathcal Q_5,\\
 V_{2,\mathrm{det}}-V_{2,\mathrm{pair}}
 &=\frac1{2\pi}K_{33}=\frac2\pi D_x.
\end{aligned}
\]

The double-commutator relation in section 4 makes this difference a local second-order unitary-frame change, with \(G=i[H_0,O]/(2\pi)\). It has zero matrix element within every \(H_0\)-energy block, including the vacuum. Thus the two representatives have the same second-order spectrum and NS vacuum value, but their offdiagonal vertices differ. Specifically,

\[
 \langle TT|V_{2,\mathrm{det}}|0\rangle
 =\left[-4+\frac{64}{2}\right]\frac{\pi^3}{L^5}
 =+\frac{28\pi^3}{L^5}.
\]

The \(-4\pi^3/L^5\) check and the finite spatial table in this review remain evidence for the **pairwise-symmetric** representative only. They must not be relabeled as checks of the literal determinant-FP association. A corresponding determinant-frame lattice candidate is obtained by adding \(K_{33,b}/(2\pi)\); neither frame has yet been shown to complete the same-regulator first-order loop matching.

## 4. An offdiagonal check, and why spectra are insufficient

The free chiral equations give \(\dot h_R=-h_R'\) and \(\dot h_L=h_L'\). With \(O=\int h_Rh_L=-V_1/4\),

\[
 D_x=\frac14[H_0,[H_0,O]]
 =-\frac1{16}[H_0,[H_0,V_1]].
\]

Thus

\[
 (D_x)_{BA}=-\frac{(E_B-E_A)^2}{16}(V_1)_{BA}.
\]

Every energy-diagonal or exactly degenerate-block matrix element of \(D_x\) is zero. A spectrum check cannot determine its coefficient. Adding \(\kappa\lambda^2D_x\) is also a local second-order unitary-frame change: take
\(G=\kappa i[H_0,O]/4\) and \(U=e^{i\lambda^2G}\). Then \(i[G,H_0]=\kappa D_x\). An offdiagonal comparison must therefore specify the canonical field and state frame, not just the energies.

For an explicit NS four-creation test, normalize

\[
 |TT\rangle=\frac2cL_{-2}\bar L_{-2}|0\rangle,
 \qquad c=\frac12.
\]

Use \(R=L^{-1/2}\sum_{r\in\mathbb Z+1/2}a_r e^{2\pi irx/L}\) and the opposite spatial phase for \(L\), with \(a_r\) annihilating the vacuum for \(r>0\). The chiral \(T\) state is the pair at modes \(3/2,1/2\). Direct antisymmetrization of the two creation coefficients gives

\[
\begin{aligned}
 \langle TT|V_1|0\rangle&=-\frac{4\pi^2}{L^3},\\
 \langle TT|K_{42}|0\rangle&=-\frac{104\pi^4}{L^5},\\
 \langle TT|K_{33}|0\rangle&=\frac{64\pi^4}{L^5},\\
 \langle TT|D_x|0\rangle&=\frac{16\pi^4}{L^5},\\
 \langle TT|\mathcal Q_5|0\rangle&=0.
\end{aligned}
\]

It follows independently that

\[
 \boxed{\langle TT|V_{2,\mathrm{loc}}|0\rangle
 =-\frac{4\pi^3}{L^5}.}
\]

This checks a genuine nonzero offdiagonal vertex. It is not a proof of all vertices, of the bilinear coefficient, or of same-regulator second-order renormalization. In particular, this four-creation test is insensitive to the \(\mathcal Q_5\) coefficient.

## 5. NS circle versus infinite-plane fermion Wick ordering

The NS contraction, with the usual positive-energy boundary-value prescription, is

\[
 C_R^{\mathrm{NS}}(s)=\frac{i}{2L}\csc\frac{\pi s}{L},
 \qquad C_R^\infty(s)=\frac{i}{2\pi s},
 \qquad C_L=-C_R.
\]

The smooth difference is

\[
 \Delta C_R(s)=\frac{i\pi s}{12L^2}
 +\frac{7i\pi^3s^3}{720L^4}
 +\frac{31i\pi^5s^5}{30240L^6}+O(s^7).
\]

For a same-chirality bilinear define

\[
 \Gamma_R(p,q)=(-1)^q\Delta C_R^{(p+q)}(0),\qquad
 :R^{(p)}R^{(q)}:_\infty
 =:R^{(p)}R^{(q)}:_{\mathrm{NS}}+\Gamma_R(p,q).
\]

In particular,

\[
 \Gamma_R(0,1)=-\frac{i\pi}{12L^2},\quad
 \Gamma_R(0,3)=-\frac{7i\pi^3}{120L^4},\quad
 \Gamma_R(0,5)=-\frac{31i\pi^5}{252L^6},
 \qquad \Gamma_L=-\Gamma_R.
\]

The resulting complete NS dictionary for the integrated candidate basis is

\[
\begin{aligned}
 K_{33,\infty}&=K_{33,\mathrm{NS}},\\
 K_{42,\infty}&=K_{42,\mathrm{NS}}
 +\frac{i\pi}{12L^2}\int(:RR''':_{\mathrm{NS}}-:LL''':_{\mathrm{NS}})\\
 &\quad+\frac{7i\pi^3}{120L^4}\int(:RR':_{\mathrm{NS}}-:LL':_{\mathrm{NS}})
 +\frac{7\pi^4}{720L^5}\mathbf1,\\
 \mathcal Q_{5,\infty}&=\mathcal Q_{5,\mathrm{NS}}
 +\frac{31\pi^5}{126L^5}\mathbf1.
\end{aligned}
\]

It follows that the candidate's plane-Wick vacuum expectation is

\[
 \boxed{\langle0|V_{2,\mathrm{loc}}|0\rangle
 =-\frac{1153\pi^3}{90720L^5}.}
\]

This is the local candidate's expectation alone, not the full energy coefficient. It must be combined with the regulated \(V_1\) intermediate-state sum and the specified counterterms. It cannot be compared to the universal \(E_2\) while omitting that sum. Conversely, interpreting the same displayed bare coefficients as NS-Wick coefficients loses both bilinear and identity terms.

For a Ramond check the same-chirality contraction is instead
\(C_R^{\mathrm R}(s)=i\cot(\pi s/L)/(2L)\), with the half-weight zero-mode convention. Its smooth difference starts
\(-i\pi s/(6L^2)-i\pi^3s^3/(90L^4)-i\pi^5s^5/(945L^6)\). Ramond cross-chiral zero-mode contractions depend on the chosen Clifford vacuum/parity sector; the NS quartic dictionary must not be copied into that sector unchanged.

## 6. A genuinely finite-range spatial lattice candidate

This section specifies local lattice polynomials rather than leaving the answer as an abstract stress composite.

### 6.1 Majorana chain, normalization, and chiral filters

Let the spin-chain spacing be \(a=L/N\), and unfold to \(M=2N\) Hermitian Majoranas \(\gamma_n\) at spacing \(b=a/2\), with

\[
 \{\gamma_n,\gamma_m\}=2\delta_{nm},\qquad
 H_{0,a}^{\mathrm{raw}}=-\frac{i}{4b}\sum_n\gamma_n\gamma_{n+1}.
\]

One Jordan-Wigner convention is
\(\gamma_{2j-1}=(\prod_{k<j}X_k)Z_j\) and
\(\gamma_{2j}=(\prod_{k<j}X_k)Y_j\); it gives
\(i\gamma_{2j-1}\gamma_{2j}=X_j\) and
\(i\gamma_{2j}\gamma_{2j+1}=Z_jZ_{j+1}\).
Thus the normalization agrees with the supplied \(-\sum(X+ZZ)/(2a)\). The seam sign is chosen for the desired Jordan-Wigner fermion sector: antiperiodic for NS, periodic for R.

The low-momentum expansion with this normalization is

\[
 \gamma_n\sim\sqrt{2b}\,[R(x_n)+(-1)^nL(x_n)].
\]

Use the explicit three-site filters

\[
 r_n=\frac{\gamma_{n-1}+2\gamma_n+\gamma_{n+1}}{4\sqrt{2b}},\qquad
 l_n=\frac{(-1)^n[-\gamma_{n-1}+2\gamma_n-\gamma_{n+1}]}{4\sqrt{2b}}.
\]

Their smooth expansions are

\[
\begin{aligned}
 r_n&=R+\frac{b^2}{4}R''-(-1)^n\frac{b^2}{4}L''+O(b^4),\\
 l_n&=L+\frac{b^2}{4}L''-(-1)^n\frac{b^2}{4}R''+O(b^4).
\end{aligned}
\]

Define the actual finite-range central difference

\[
 (\Delta_b f)_n=\frac{f_{n+1}-f_{n-1}}{2b},\qquad
 (\Delta_b^pf)_n=\frac1{(2b)^p}\sum_{j=0}^p(-1)^j\binom pj f_{n+p-2j}.
\]

Its symbol is \(i\sin(kb)/b\), so it does not amplify the staggered contamination by a power of \(1/b\); it changes its derivative sign. The principal smooth symbols are therefore the required \(\partial_x^p\) with \(O(b^2)\) errors at fixed external momenta.

### 6.2 Explicit Wick subtraction

Use the infinite critical-chain covariance, including its contact term,

\[
 C_\infty(d)=\langle\gamma_n\gamma_m\rangle_\infty
 =\begin{cases}
 1,&d=n-m=0,\\
 \displaystyle\frac{i[1-(-1)^d]}{\pi d},&d\ne0.
 \end{cases}
\]

For any two stencil-linear fields \(A=\sum_j u_j\gamma_{n+j}\),
\(B=\sum_k v_k\gamma_{n+k}\), set
\(C_{AB}=\sum_{jk}u_jv_k C_\infty(j-k)\), and define

\[
 W_\infty[AB]=AB-C_{AB}.
\]

For four linear fields the fully explicit polynomial is

\[
\begin{aligned}
 W_\infty[ABCD]={}&ABCD-C_{AB}CD+C_{AC}BD-C_{AD}BC\\
 &-C_{BC}AD+C_{BD}AC-C_{CD}AB\\
 &+C_{AB}C_{CD}-C_{AC}C_{BD}+C_{AD}C_{BC}.
\end{aligned}
\]

In particular, the lattice definition includes all identity and bilinear contractions, even though at finite \(b\) the filtered \(r,l\) cross contractions need not vanish. Using continuum cross contractions equal to zero *before* forming this polynomial would define a different regulator.

### 6.3 The local polynomials

The following are completely specified finite-range operators:

\[
\begin{aligned}
 \mathcal Q_{5,b}&=ib\sum_n\big\{
 W_\infty[r_n(\Delta_b^5r)_n]
 -W_\infty[l_n(\Delta_b^5l)_n]\big\},\\
 K_{42,b}&=b\sum_n\big\{
 W_\infty[r_n(\Delta_b^3r)_n l_n(\Delta_bl)_n]
 +W_\infty[r_n(\Delta_br)_n l_n(\Delta_b^3l)_n]\big\},\\
 K_{33,b}&=b\sum_nW_\infty[
 r_n(\Delta_b^2r)_n l_n(\Delta_b^2l)_n].
\end{aligned}
\]

The furthest support is \(n\pm6\) Majorana sites, independent of \(N\). Each operator is Hermitian. Since the number of \(l\) factors is even, the explicit staggered signs cancel from the translation-invariant density. Their fixed-smooth-mode leading limits are the three continuum basis elements above; this is a local operator-symbol/Taylor statement, not a uniform high-energy bound.

An explicit bare spatial candidate is therefore

\[
 \boxed{V_{2,b}^{\mathrm{bare}}
 =-\frac7{6\pi}K_{42,b}
 -\frac{47}{24\pi}K_{33,b}
 -\frac1{180\pi^2}\mathcal Q_{5,b}.}
\]

One can likewise realize \(Q_{4,\mathrm{sym}}\) directly by replacing
\(:RR''':\) and \(:R'R'':\) in section 3 with
\(W_\infty[r\Delta_b^3r]\) and
\(W_\infty[(\Delta_br)(\Delta_b^2r)]\), and the left analogues. To match the displayed continuum \(D_x\), use \(D_{x,b}=K_{33,b}/4\). A product rule based on differentiating a lattice \(h\) gives another legitimate discretization with the same leading smooth symbol, but different UV behavior.

### 6.4 Independent finite-lattice checks

The **pairwise-symmetric finite-frame** candidate above was also evaluated directly at finite \(N\), without using any existing project script. The table below is retained unchanged for that representative; it is not a determinant-FP-frame vertex table. For the four-creation matrix element, the coefficient of an ordered set of four creation modes in a full-Wick quartic is the determinant of its four linear-field coefficient rows. The two right modes and two left modes are \(3/2,1/2\). At a site, the filter symbols are \(\cos^2(kb/2)\) for the intended chirality and \(\sin^2(kb/2)\) for the unwanted branch, with the displayed staggered phase. The central derivative uses the exact \(\sin(kb)/b\), not a continuum replacement.

For the NS vacuum expectation, use the exact finite-chain contraction difference

\[
 \Delta C_M(d)=\begin{cases}
 2i\left[\dfrac1{M\sin(\pi d/M)}-\dfrac1{\pi d}\right],&d\ \text{odd},\\
 0,&d\ \text{even},
 \end{cases}
 \qquad M=2N.
\]

The expectation of \(W_\infty[AB]\) is \(\Delta C_{AB}\), and that of \(W_\infty[ABCD]\) is its four-field Pfaffian. Thus all lattice identity and bilinear subtraction effects are included. At \(L=1\), high-precision Sage evaluations give:

| \(N\) | \(\langle TT|V_{2,b}^{\rm bare}|0\rangle/\pi^3\) | \(\langle0|V_{2,b}^{\rm bare}|0\rangle/\pi^3\) |
|---:|---:|---:|
| 16 | -3.73212961449 | -0.0130765486384 |
| 32 | -3.93264239729 | -0.0127993256994 |
| 64 | -3.98313966099 | -0.0127317936374 |
| 128 | -3.99578366259 | -0.0127150180250 |
| Continuum target | -4 | \(-1153/90720=-0.0127094356261\ldots\) |

The errors decrease by approximately four under doubling \(N\), consistently with the analytic \(O(a^2)\) symbol expansion. This is a finite-cutoff check of the explicitly specified second-order stencils, not of the first-order lattice loop or of the full second-order spectrum.

### 6.5 What this construction does not prove

The filtered construction is an explicit *candidate second-order local operator*. It is not shown to be the unique or correctly renormalized continuation of the supplied consecutive-four-Majorana \(V_a\). The two discretizations need not have the same high-energy contractions or the same finite loop remnants.

The full \(H_{0,a}+\lambda V_a+\lambda^2V_{2,a}\) matching must include the high-energy sum of the actual \(V_a\), not just these continuum coefficients. In an identity-family, time-reversal-even scheme, lower-dimensional local directions include identity, \(h_R+h_L\), a chiral dimension-four bilinear, and \(h_Rh_L\); their coefficients can carry powers of \(1/a\). The dimension-six directions are the three displayed above. If only parity and not time reversal is imposed, additional odd-dimension structures such as \(\int h_R'h_L\) require separate symmetry analysis. If the lattice symmetries permit the Ising energy family, critical mass tuning is also not optional.

It remains necessary to determine which counterterms are divergent, logarithmic, or finite for the same spatial regulator, and to fix the canonical/unitary frame by vertex conditions. Fixed-low-mode \(V_a\to V_1\) at \(O(a^2)\) alone does not control this second-order UV problem.

## 7. Verification record

**Verified analytically:** the local Darboux substitution; the one-sided versus symmetric stress-square conversion; the integration-by-parts reduction; the double-commutator identity for \(D_x\); the normalized NS four-creation coefficients; the finite-circle Wick conversion; and the principal continuum symbols and finite support of the lattice polynomials.

**Verified by CAS:** an exact Sage exterior-algebra residual for the Darboux action; the dimension-six jet count and total-derivative ranks; the rational coefficients of the normal-product conversion and local candidate; the \(-4\pi^3/L^5\) four-creation vertex combination; the \(\csc\)/\(\cot\) local series; the NS candidate vacuum coefficient \(-1153/90720\) after stripping \(\pi^3/L^5\); and independent direct finite-lattice determinant/Pfaffian evaluations for \(N=16,32,64,128\) showing the expected approach of the vertex and vacuum value.

**Assumptions:** circle boundary conditions are handled by the specified fermionic seam; all integration-by-parts relations use periodic local even densities; normal products are full infinite-plane fermion Wick products unless explicitly labeled NS; the continuum basis is restricted to the Ising identity family; and the candidate's extra chiral \(J_w\) is defined by its displayed fermionic expression.

**Not verified:** a complete Hilbert/vielbein stress-flow derivation; the quantum Darboux-map measure/ordering; a derivation of the specified \(J_w\) coefficient from that flow; the full second-order spectrum; all offdiagonal vertices; the actual coefficients of spatial-cutoff divergent/logarithmic/finite counterterms; and uniform high-energy control of the finite-range stencils. No existing spatial first-order script was read or changed.
