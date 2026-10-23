# Independent second-order cubic effective interaction on global AdS3

## Result

For the normal-ordered real scalar interaction specified below, the resonant second-order effective Hamiltonian has only a vacuum scalar, a one-body self-energy, and a number-preserving connected four-leg operator. Its four-leg kernel contains **all three exchange channels**, including both time orderings in each channel. There is no six-leg term. Resonant 1↔3 four-leg terms vanish for every Δ>1: they are kinematically absent unless Δ is an integer, and at integer Δ each pair-exchange sum vanishes by the Jacobi argument in §6.

The connected four-leg mode sums are absolutely convergent for fixed external modes when Δ>1. They are separate from vacuum/self-energy renormalization. An exact independent test gives

\[
H^{(2)}_{\rm conn}\big|_{\Delta=2,E=6,J=0,N=2}
 =\frac{\lambda_3^2}{960\pi}
 \begin{pmatrix}-17&8\\8&-17\end{pmatrix}
\]

in the normalized basis \(\{|00,11\rangle,|10,01\rangle\}\), using the **positive-at-origin Jacobi phase defined in §1**. In the repository phase \(f_i^{\rm repo}=(-1)^{n_i}f_i^{\rm here}\), conjugate this matrix by diag(−1,+1): both off-diagonal entries become −8. The eigenvalues are \(-5\lambda_3^2/(192\pi)\) and \(-3\lambda_3^2/(320\pi)\) in either convention.

This report derives the formulas independently from the KG modes and oscillator algebra. No repository candidate-result file or parent calculation engine was read/imported. The applicable repository instructions and [the authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L61-L76>) were read. The finite-block OFPT convention is [the formalism's energy-level prescription](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L253-L270>).

## 1. Modes, vertices, and conventions

Set the AdS radius to one. The background and boundary condition are

\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\quad m^2=\Delta(\Delta-2),\quad \Delta>1,
\]

with regularity at r=0, fast falloff at infinity, and the free global vacuum. Define

\[
x=\frac{r^2}{1+r^2},\quad y=1-x,\quad
\ell=p-q,\quad n=\min(p,q),\quad L=|\ell|,
\quad\omega_{pq}=\Delta+p+q=\Delta+L+2n.
\]

The positive-frequency modes and their phases are

\[
\Phi_i(t,x,\theta)=e^{-i\omega_i t}f_i(x,\theta),
\qquad
f_i=N_i e^{i\ell_i\theta}x^{L_i/2}y^{\Delta/2}
 P_{n_i}^{(L_i,\Delta-1)}(1-2x),
\]

\[
N_i^2=\frac{n_i!\,\Gamma(n_i+L_i+\Delta)}
 {2\pi\,\Gamma(n_i+L_i+1)\Gamma(n_i+\Delta)}.
\]

Thus \(2\omega_i\int d\nu\,f_i^*f_j=\delta_{ij}\), with

\[
d\nu=\frac{r\,dr\,d\theta}{1+r^2}
      =\frac{dx\,d\theta}{2y},
\qquad
d\mu=r\,dr\,d\theta=\frac{dx\,d\theta}{2y^2}.
\]

The KG product is \((\omega_i+\omega_j)\int d\nu\,f_i^*f_j=\delta_{ij}\); the equivalent spatial normalization above also holds for unequal i,j because the spatial overlap then vanishes. The functions \(e_i=\sqrt{2\omega_i}f_i\) form an orthonormal basis in \(L^2(d\nu)\). With \(\bar i=(q_i,p_i)\), these phases give \(f_{\bar i}=f_i^*\).

**Phase conversion.** Jacobi reflection gives
\[
P_n^{(L,\Delta-1)}(1-2x)=(-1)^nP_n^{(\Delta-1,L)}(2x-1).
\]
Thus the alternative/repository convention with the latter polynomial is \(f_i^{\rm repo}=(-1)^{n_i}f_i^{\rm here}\), and field invariance requires \(a_i^{\rm repo}=(-1)^{n_i}a_i^{\rm here}\). Cubic overlaps acquire \((-1)^{n_a+n_b+n_c}\); a 2+2 kernel acquires \((-1)^{n_i+n_j+n_k+n_l}\). In the E6 pair basis the change is diag(−1,+1). All scripts in this directory use the displayed positive-at-origin convention, not a silently converted matrix.

Expand \(\phi=\sum_i(a_i\Phi_i+a_i^\dagger\Phi_i^*)\), with \([a_i,a_j^\dagger]=\delta_{ij}\), and write \(H=H_0+\lambda_3 V\), where

\[
H_0=\sum_i\omega_i a_i^\dagger a_i,
\qquad
V=\frac16\int d\mu:\!\phi^3\!:\big|_{t=0}.
\]

Define the fully explicit cubic overlaps

\[
C_{a;bc}=\int d\mu\,f_a^*f_bf_c,
\qquad
D_{abc}=\int d\mu\,f_af_bf_c=C_{\bar a;bc}.
\]

Then

\[
V=\frac16\sum_{abc}(D_{abc}a_aa_ba_c+D_{abc}^*a_a^\dagger a_b^\dagger a_c^\dagger)
 +\frac12\sum_{abc}(C_{a;bc}a_a^\dagger a_ba_c+C_{a;bc}^*a_b^\dagger a_c^\dagger a_a).
\tag{1}
\]

All sums here and below run over **ordered** mode labels unless explicitly stated otherwise. The 1/6 and 1/2 are not to be added again in the final four-leg kernel.

For a finite-beta-sum formula valid at arbitrary real Δ>1, let

\[
P_n^{(L,\Delta-1)}(1-2x)=\sum_{h=0}^n A_{nLh}x^h,
\qquad
A_{nLh}=\binom{n+L}{n}
 \frac{(-n)_h(n+L+\Delta)_h}{(L+1)_h h!}.
\]

Then

\[
C_{a;bc}=\delta_{\ell_a,\ell_b+\ell_c}\,\pi N_aN_bN_c
\sum_{u,v,w}A_{n_aL_au}A_{n_bL_bv}A_{n_cL_cw}
 B\!\left(1+\frac{L_a+L_b+L_c}{2}+u+v+w,\frac{3\Delta}{2}-1\right).
\tag{2}
\]

For D replace the angular delta by \(\delta_{\ell_a+\ell_b+\ell_c,0}\). In these phases the overlaps are real; conjugations are retained in the formulas to exhibit Hermiticity and mode-phase covariance.

## 2. Schrieffer–Wolff derivation and cancellation of degree six

For a normal-ordered cubic monomial M, define its energy defect by
\([H_0,M]=\Omega_M M\). If its coefficient in V is \(v_M\), choose

\[
S_1=\sum_{\Omega_M\ne0}\frac{v_M}{\Omega_M}M,
\qquad S_1^\dagger=-S_1.
\]

The complete zero-defect cubic vertex vanishes by the assumed one-to-two Jacobi selection rule. Set the corresponding zero-over-zero coefficient of S to zero. This fixes a convenient pseudoinverse/gauge choice. Then

\[
e^{\lambda_3S_1}He^{-\lambda_3S_1}
 =H_0+\lambda_3^2 W+O(\lambda_3^3),
\qquad W=\frac12[S_1,V].
\tag{3}
\]

Consequently,

\[
W_{BA}=\frac12\sum_C V_{BC}V_{CA}
 \left(\frac1{E_B-E_C}+\frac1{E_A-E_C}\right).
\tag{4}
\]

For an equal-energy block \(P=P_{E,J}\), this is precisely

\[
PWP=PVQ\frac1{E-H_0}QVP,\qquad Q=1-P,
\tag{5}
\]

because \(PVP=0\). This is an effective Hamiltonian, not a global-AdS S-matrix.

A product of two normal cubics has zero-, one-, two-, and three-contraction pieces. The **zero-contraction degree-six piece cancels in the commutator**: it is the ordinary commutative product of their normal symbols. Hence

\[
W=W_4+W_2+W_0.
\]

Equivalently, disconnected cubic events with opposite energy defects have OFPT denominators \(1/\delta+1/(-\delta)=0\). Exact zero defects do not invalidate this cancellation because their cubic vertices vanish.

For an efficient explicit derivation, replace normal symbols by commuting variables a and \(a^*\). The one-contraction piece is

\[
W_4=\frac12\sum_a:
 \left(\frac{\partial S_1}{\partial a_a}
       \frac{\partial V}{\partial a_a^*}
 -\frac{\partial V}{\partial a_a}
       \frac{\partial S_1}{\partial a_a^*}\right):.
\tag{6}
\]

The two- and three-contraction terms give the quadratic and vacuum parts. Equation (6), using the factors in (1), fixes the symmetry factors below without diagram-counting conventions.

## 3. All-index four-leg kernel: s, t, and u

Define

\[
R_a(\Omega)=\frac1{\Omega-\omega_a}-\frac1{\Omega+\omega_a}
 =\frac{2\omega_a}{\Omega^2-\omega_a^2},
\quad E_{ij}=\omega_i+\omega_j,
\quad d_{ik}=\omega_i-\omega_k.
\tag{7}
\]

The zero-denominator prescription is specified in §5. The complete number-preserving part of the SW representative is

\[
\lambda_3^2 W_4^{22}
 =\frac{\lambda_3^2}{2!2!}
   \sum_{ij;kl}K^{\rm SW}_{ij;kl}a_i^\dagger a_j^\dagger a_k a_l,
\tag{8}
\]

with

\[
\boxed{\begin{aligned}
K^{\rm SW}_{ij;kl}=\frac12\sum_a\Big[&
 C_{a;ij}^*C_{a;kl}\{R_a(E_{ij})+R_a(E_{kl})\}\\
+& C_{i;ka}C_{l;ja}^*\{R_a(d_{ik})+R_a(d_{jl})\}\\
+& C_{i;la}C_{k;ja}^*\{R_a(d_{il})+R_a(d_{jk})\}
\Big].
\end{aligned}}
\tag{9}
\]

This formula is symmetric under i↔j and k↔l, and satisfies
\(K_{ij;kl}=K_{kl;ij}^*\). Relabeling \(a\leftrightarrow\bar a\) makes these properties explicit. The off-shell extension is the Hermitian SW choice (4), not an independently unique observable.

On the resonant block \(E_{ij}=E_{kl}=E\), (9) reduces to

\[
\boxed{\begin{aligned}
K_{ij;kl}=\sum_a\Big[&
 C_{a;ij}^*C_{a;kl}\frac{2\omega_a}{E^2-\omega_a^2}\\
+& C_{i;ka}C_{l;ja}^*\frac{2\omega_a}{(\omega_i-\omega_k)^2-\omega_a^2}\\
+& C_{i;la}C_{k;ja}^*\frac{2\omega_a}{(\omega_i-\omega_l)^2-\omega_a^2}
\Big].
\end{aligned}}
\tag{10}
\]

The lines are respectively s, t, and u. The static value is
\(R_a(0)=-2/\omega_a\); it is not a vanishing channel.

### Which OFPT states are included?

* The s-channel contains the one-particle intermediate denominator \(1/(E-\omega_a)\) **and** the connected five-particle time ordering \(-1/(E+\omega_a)\). The latter is not a vacuum diagram and survives vacuum subtraction.
* The two time orderings of a mixed channel have denominators \(1/(d-\omega_a)\) and \(-1/(d+\omega_a)\), producing R(d). They occur through three-particle intermediate states.
* Other intermediate-state contributions contain a vacuum bubble or a one-body self-energy with spectators. They belong to W0 or W2, not to K.

For normalized unordered two-particle states

\[
|ij\rangle=\frac{a_i^\dagger a_j^\dagger|0\rangle}{\sqrt{1+\delta_{ij}}},
\]

one obtains

\[
\langle ij|\lambda_3^2W_4^{22}|kl\rangle
 =\frac{\lambda_3^2K_{ij;kl}}
 {\sqrt{(1+\delta_{ij})(1+\delta_{kl})}}.
\tag{11}
\]

In particular, K for four equal labels is twice the connected normalized two-particle energy shift divided by \(\lambda_3^2\). This is a common factorial trap.

## 4. Vacuum, self-energy, and exact finite-block reconstruction

Using a common regulator for all sums, the vacuum coefficient is

\[
v_0=\langle0|W|0\rangle
 =-\frac16\sum_{abc}\frac{|D_{abc}|^2}{\omega_a+\omega_b+\omega_c}.
\tag{12}
\]

Normal ordering removes same-vertex contractions, not this two-vertex vacuum diagram. The vacuum-subtracted one-particle shift is

\[
\begin{aligned}
h_i&=\langle i|W|i\rangle-v_0\\
&=\frac12\sum_{ab}\left[
 \frac{|C_{i;ab}|^2}{\omega_i-\omega_a-\omega_b}
 -\frac{|D_{iab}|^2}{\omega_i+\omega_a+\omega_b}
 \right].
\end{aligned}
\tag{13}
\]

At an exact cubic resonance the first term has the zero-vertex prescription. Since conjugation preserves the spectrum, the second term can alternatively be written with \(|C_{i;ab}|^2\) after relabeling both internal modes.

The quantum numbers (ω,ℓ) uniquely specify a single-particle AdS3 scalar mode. Thus the resonant quadratic part is diagonal, \(\sum_i h_i a_i^\dagger a_i\). With an AdS-isometry-preserving renormalization prescription, h is the common one-particle dimension shift; a raw global-energy cutoff need not respect that equality. Vacuum subtraction alone does **not** subtract h. Whether h is retained or absorbed in the physical definition of Δ is a separate renormalization choice.

For a finite free-energy/angular-momentum block, the exact order-\(\lambda_3^2\) reconstruction is

\[
\boxed{\begin{aligned}
H_{\rm eff}\big|_{E,J}=E P+\lambda_3^2\Big[&v_0P+
 \sum_i h_i P a_i^\dagger a_iP\\
 &+\frac14\sum_{ij;kl}^{\substack{\omega_i+\omega_j=\omega_k+\omega_l\\
                  \ell_i+\ell_j=\ell_k+\ell_l}}
 K_{ij;kl}P a_i^\dagger a_j^\dagger a_k a_lP\Big]
 +O(\lambda_3^3).
\end{aligned}}
\tag{14}
\]

The 1↔3 terms are absent by §6. Consequently every such block is particle-number preserving at this order, even when different particle numbers are free-energy degenerate. No independent three-body/six-leg coefficient is needed.

For an occupation vector n, let u and v count respectively the creation and annihilation labels in a given ordered quartic monomial. Its exact matrix element is zero unless \(n\ge v\) and \(m=n-v+u\), and otherwise equals

\[
\prod_a\sqrt{\frac{n_a!\,(n_a-v_a+u_a)!}{[(n_a-v_a)!]^2}}.
\tag{15}
\]

All external indices needed in (14) have \(\omega_i\le E\), and \(N\le E/\Delta\); hence the block and its reconstruction are finite. Only internal sums remain infinite.

At a fixed regulator the separation (12)–(14) is an algebraic identity. In 2+1 dimensions, ordinary bulk power counting makes the normal-ordered one-loop two-point bubble UV convergent; the two-vertex vacuum diagram has superficial logarithmic UV degree. Vacuum energy also has the usual AdS volume/boundary issues. No claim about a completed vacuum/counterterm prescription is needed for the finite connected tree kernel.

## 5. Resonances, denominators, and convergence

### Cubic zero denominators

Angular momentum and a one-to-two energy equality imply

\[
p_a=p_b+p_c+\frac\Delta2,\qquad
q_a=q_b+q_c+\frac\Delta2.
\]

Thus cubic resonances are possible only for positive even integer Δ. Writing \(\Delta=2h\), the resonant outgoing radial degree is

\[
n_a=n_b+n_c+\frac{L_b+L_c-L_a}{2}+h.
\]

The Jacobi-weight polynomial appearing in its vertex has degree at most \(n_a-1\), so the vertex is zero. This covers all mixed-sign cubic defects by conjugation.

The correct interpretation of (7)–(10) is a reduced spectral inverse: a zero-denominator term is assigned zero because the corresponding cubic factor is zero. One must not evaluate it as a numerical 0/0. At resonance in an equal-energy four-leg block, both adjacent resonant cubic couplings vanish. The freedom to add a resonant homogeneous solution to the inverse cannot change the block matrix element. An arbitrary off-shell continuation at the isolated resonant parameter can differ by SW gauge choice.

There is no static zero denominator: \(\omega_a\ge\Delta>1\). For a fixed nonresonant Δ, cubic defects lie on fixed shifted integer lattices; the infinite mode spectrum does not generate a dense set of small cubic denominators.

### Absolute convergence of every connected four-leg channel

Let A denote the positive spatial KG operator on \(L^2(d\nu)\), so that \(Af_a=\omega_a^2f_a\). For any fixed pair of external modes, with either conjugation choice, define

\[
F(x,\theta)=(1+r^2)f_i^{(*)}(x,\theta)f_j^{(*)}(x,\theta).
\]

Near the boundary \(F=O(y^{\Delta-1})\), and

\[
\|F\|_{L^2(d\nu)}^2\ \sim\ \int_0 y^{2\Delta-3}dy<\infty
\quad\Longleftrightarrow\quad\Delta>1.
\]

If \(b_a=\langle e_a,F\rangle=\sqrt{2\omega_a}\,C_a\), Parseval gives \(\sum_a|b_a|^2<\infty\). Each exchange sum is of the form

\[
\sum_a\frac{b_a^*b'_a}{\Omega^2-\omega_a^2}
 =\langle F,(\Omega^2-A)^{-1}F'\rangle,
\tag{16}
\]

with the conjugations appropriate to that channel. The reduced resolvent is bounded at every fixed real Ω after deleting any resonant eigenspace. Cauchy–Schwarz therefore proves **absolute** convergence of the mode sum. This is a tree-level statement; it is not a convergence proof for the vacuum or loop sums.

For even integer Δ the source is a Jacobi weight times a finite polynomial. In particular,

\[
C_{a;bc}=0\quad\hbox{if}\quad
n_a>n_b+n_c+\frac{L_b+L_c-L_a}{2}+\frac\Delta2-1
\]

when its angular delta is satisfied. Every fixed-external four-leg exchange then has finite internal support. For non-even Δ the sums generally are infinite but satisfy (16).

## 6. Analytic vanishing of all resonant 1↔3 coefficients

The one-creation/three-annihilation resonant term would be

\[
\lambda_3^2W_4^{13}
 =\frac{\lambda_3^2}{3!}\sum_{i;jkl}
 L_{i;jkl}a_i^\dagger a_j a_k a_l+\text{h.c.},
\]

where \(\omega_i=\omega_j+\omega_k+\omega_l\), and (6) gives

\[
L_{i;jkl}=
\sum_{(bc,d)=(jk,l),(jl,k),(kl,j)}
 \sum_a C_{a;bc}C_{i;da}\,R_a(\omega_b+\omega_c).
\tag{17}
\]

There is no extra factor of two in (17). Each of its three pair-exchange sums vanishes separately.

### 6.1 Kinematics

Energy and angular momentum require

\[
p_i=p_j+p_k+p_l+\Delta,\qquad
q_i=q_j+q_k+q_l+\Delta.
\tag{18}
\]

Therefore Δ must be an integer. Noninteger Δ has no such resonant monomial.

### 6.2 A finite, nonsingular pair-response construction at every Δ>1

Fix two positive-frequency incoming modes b,c. Put

\[
\ell=\ell_b+\ell_c,\quad L=|\ell|,\quad
N=n_b+n_c+\frac{L_b+L_c-L}{2},
\quad\Omega=\omega_b+\omega_c=2\Delta+L+2N.
\]

Their source has the form

\[
(1+r^2)f_bf_c
 =e^{i\ell\theta}x^{L/2}y^{\Delta-1}P_N(x),
\tag{19}
\]

where normalization constants are included in the polynomial \(P_N\), of degree at most N. Define N+1 polynomials

\[
Q_a(x)=y^aP_{N-a}^{(L,2\Delta+2a-1)}(1-2x),
\qquad a=0,\ldots,N.
\]

They form a basis of polynomials of degree ≤N: they have successively different leading vanishing orders at y=0. Introduce

\[
\delta_a=2\Delta+2a,
\qquad c_a=\delta_a(\delta_a-2)-\Delta(\Delta-2)>0.
\tag{20}
\]

At fixed angular momentum, the spatial operator is explicitly
\[
A_m=-4(1-x)\frac{d}{dx}\left(x\frac{d}{dx}\right)
 +\frac{\ell^2}{x}+\frac{m^2}{1-x}.
\]
The function \(e^{i\ell\theta}x^{L/2}y^\Delta Q_a\) is a regular fast mode of mass squared \(\delta_a(\delta_a-2)\), with the **same** frequency \(\delta_a+L+2(N-a)=\Omega\). Since changing the mass changes A by the mass difference divided by y,

\[
(\Omega^2-A_m)
 [e^{i\ell\theta}x^{L/2}y^\Delta Q_a]
 =c_a e^{i\ell\theta}x^{L/2}y^{\Delta-1}Q_a.
\tag{21}
\]

Expanding \(P_N=\sum_a b_aQ_a\) gives an explicit particular solution

\[
G_{bc}=e^{i\ell\theta}x^{L/2}y^\Delta
 \sum_{a=0}^N\frac{b_a}{c_a}Q_a,
\qquad
(\Omega^2-A_m)G_{bc}=(1+r^2)f_bf_c.
\tag{22}
\]

All c are strictly positive for Δ>1. This establishes finite-dimensional invertibility, not merely a formal ansatz. Equivalently, there is no nonzero homogeneous solution with the stronger falloff \(y^\Delta\): the original homogeneous boundary exponents are \(\Delta/2\) and \(1-\Delta/2\).

At even Δ, Ω may be an eigenfrequency of the original mass. The source is orthogonal to that eigenmode by cubic selection. The reduced resolvent may differ from (22) by that homogeneous mode, but its contraction with the other vertex in (17) is another resonant cubic overlap and hence vanishes. At odd integer Δ, Ω is not an original eigenfrequency, so no such ambiguity occurs.

### 6.3 Final Jacobi orthogonality

For the third incoming mode d, the pair-exchange sum in (17) equals

\[
\int d\mu\,f_i^*f_dG_{bc}.
\tag{23}
\]

Angular momentum fixes \(\ell_i=\ell+\ell_d\). Put
\(\eta=(L+L_d-L_i)/2\ge0\). Factoring out the Jacobi weight of the outgoing mode leaves

\[
x^{L_i}y^{\Delta-1}
P_{n_i}^{(L_i,\Delta-1)}(1-2x)
\times\left[x^\eta y^{\Delta-1}
 P_{n_d}^{(L_d,\Delta-1)}(1-2x)\,Q(x)\right],
\]

where \(\deg Q\le N\). At the allowed integer Δ, the square bracket is a polynomial of degree at most

\[
\eta+(\Delta-1)+n_d+N=n_i-1,
\]

because resonance gives \(n_i=\Delta+N+n_d+\eta\). Jacobi orthogonality makes (23) zero. Therefore

\[
\boxed{L_{i;jkl}=0\quad\text{for every resonant 1↔3 choice and every }\Delta>1.}
\tag{24}
\]

For even Δ this is even stronger term by term: a nonzero cubic vertex obeys \(\omega_a\le\omega_b+\omega_c-2\). The second vertex would require \(\omega_i\le\omega_a+\omega_d-2\), incompatible with \(\omega_i=\omega_b+\omega_c+\omega_d\). For odd integer Δ individual internal-mode terms need not vanish; their convergent sum does.

## 7. Independent exact and numerical checks

### Δ=2 nontrivial pair block

Let \(g=C_{0;00}=1/(4\sqrt{2\pi})\), so \(g^2=1/(32\pi)\). In the E=6,J=0 pair basis used above, the channel matrices are

\[
\frac{K_s}{g^2}=\begin{pmatrix}1/10&-1/15\\-1/15&1/10\end{pmatrix},
\quad
\frac{K_t}{g^2}=\begin{pmatrix}-1/2&1/6\\1/6&-1/2\end{pmatrix},
\quad
\frac{K_u}{g^2}=\begin{pmatrix}-1/6&1/6\\1/6&-1/6\end{pmatrix}.
\]

Their sum is \(g^2\begin{psmallmatrix}-17/30&4/15\\4/15&-17/30\end{psmallmatrix}\). A separate direct Fock-space OFPT implementation recomputed all cubic integrals and all intermediate occupation factors. At mode cutoffs \(p+q\le2,3,4\), it subtracted the same-cutoff vacuum and one-particle shifts, and reproduced this matrix exactly at every cutoff. Equations (12) and (13) were also checked directly against the Fock sums.

The same independent calculation found

\[
E^{(2)}_{2\text{ ground,conn}}=-\frac{5\lambda_3^2}{192\pi},
\quad
E^{(2)}_{3\text{ ground,conn}}=-\frac{5\lambda_3^2}{64\pi},
\quad
E^{(2)}_{4\text{ ground,conn}}=-\frac{5\lambda_3^2}{32\pi}.
\]

The last two are exactly \(\binom N2\) times the two-ground-particle binding, independently testing the absence of a three-body/six-leg term. At cutoff 4 the direct E=6 matrix element between one (2,2) mode and three ground quanta was exactly zero.

Code and full rational results:

* [Independent Δ2 Fock/vertex calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_delta2_check.py>)
* [Exact Δ2 results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_delta2_results.json>)

### Off-shell algebra/factorial check

A separate two-oscillator CCR implementation used frequencies (2,5) and arbitrary symmetric real cubic tensor entries (1,2,3,4). It multiplied normal monomials by the exact contraction formula, formed \([S_1,V]/2\), and checked all nine independent 2+2 coefficients against (9), including repeated-index factorials and off-shell entries. All nine were exactly equal. Only degrees 0,2,4 survived.

* [Independent SW algebra calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_sw_algebra_check.py>)
* [Exact SW algebra results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_sw_algebra_results.json>)

### Odd-integer Δ and the cancellation of an infinite sum

At Δ=3, take outgoing i=(3,3) and three ground incoming modes. A single exchange channel has frequency Ω=6. With \(h=1/(2\sqrt{2\pi})\), the partial internal sums, divided by \(h^2\), are

| Largest internal radial n | Partial sum |
|---:|---:|
| 0 | 8/189189 |
| 1 | −320/6243237 |
| 3 | −1.1469309972664203573 × 10⁻⁶ |
| 10 | −1.8697680566626096788 × 10⁻¹¹ |
| 20 | −3.5802249124683576815 × 10⁻¹⁴ |
| 40 | −5.2568120212771906217 × 10⁻¹⁷ |

The exact resolvent response is proportional to \(y^3/[3(9-2)]\). Its outgoing overlap is
\(\int_0^1 y^4P_3^{(0,2)}(2y-1)dy=0\). This is an exact proof of the infinite sum, not an inference from its small partial sums. A nonzero-angular-momentum example with incoming (1,0),(0,0),(0,0) and outgoing (4,3) was also exactly zero.

Wolfram additionally checked the general radial operator identity and all 15 polynomial-basis eigenvalue identities (21) for N=0,…,4 with symbolic Δ,L. Every residual was zero and no messages were generated.

* [Independent radial/resolvent calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_resolvent_check.wl>)
* [Radial identities and odd-Δ results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/independent_resolvent_results.txt>)

## Scope and remaining work

**Established here:** the all-index connected tree kernel, its factors/signs/time orderings, degree-six cancellation, vacuum/self-energy separation, exact order-\(\lambda_3^2\) finite-block reconstruction, absolute connected-mode-sum convergence for Δ>1, and analytic vanishing of all resonant 1↔3 terms.

**Not computed here:** a complete vacuum renormalization prescription, the all-mode closed form of the self-energy shift, or the spectrum of every finite block. The calculation is perturbative about the free global vacuum; it does not assume that a real cubic potential has a nonperturbatively stable ground state. No gravitational exchange, alternate/slow boundary condition, or quartic counterterm has been added.
