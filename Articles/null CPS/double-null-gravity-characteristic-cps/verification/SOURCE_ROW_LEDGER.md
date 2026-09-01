# SOURCE_ROW_LEDGER - Cabet source incidence for Stage 4.3

## Verdict and convention

**Exhaustive for the gauge-fixed reduced system (5.12)--(5.14): yes.**
The ledger covers every evolved scalar component row of source (5.3a),
(5.3b), A.36--A.39 after the full conjugation 09.(1.4), and separately
lists every hard gauge relation and A.35 copy constraint.  The evolved-row
checksum is
$$
 7\ \text{frame}+18\ \text{connection}+16\ \text{doubled Weyl}=41.
 \tag{L.1}
$$
No equation below is inferred from component counting alone: the last
column points to the analytic realization.  A regression entry means only
that the indicated algebraic substitution was also checked by a script.

Use source/project coordinates and allocation
$$
 e_3=\partial_\xi,\qquad e_4=c\partial_\eta+b^A\partial_A,
 \tag{L.2}
$$
$$
\begin{split}
 \phi={}&(e_i,\Gamma_i{}^a{}_b,\Gamma_i{}^a{}_3;
 \alpha,\mathring{\underline\beta},\rho,\sigma,\mathring\beta),\\
 \psi={}&(\Gamma_i{}^a{}_4,\Gamma_i{}^3{}_3;
 \underline\beta,\mathring\sigma,\mathring\rho,
 \beta,\underline\alpha).
\end{split}\tag{L.3}
$$
Thus a $\phi$ row is freely supplied on $N_+=\{\xi=0\}$ and is a
complementary $e_3$ transport on $N_-=\{\eta=0\}$; a $\psi$ row is
freely supplied on $N_-$ and is a complementary $e_4$ transport on
$N_+$.  ``Free'' means a slot of the reduced characteristic problem.
The geometric project data still have to supply the formula displayed
here and satisfy the listed source row.

Abbreviate
$$
 X=\chi,\quad H=\underline\chi,\quad
t=\underline\eta=-\zeta-D\log c,\quad
 O_4{}^a{}_b=\Gamma_4{}^a{}_b.
 \tag{L.4}
$$

## 1. Frame rows: source (5.3a), specialized as (5.5)

The fixed coordinate form removes $e_3$ as a dynamical slot.  The
remaining frame coefficients are $E_a{}^A$ (four components),
$c=e_4{}^\eta$ (one), and $b^A=e_4{}^A$ (two).

| Source row | Multiplicity | Evolved slot | $N_+$ free realization | $N_-$ complementary realization | Corner value | Analytic / regression status |
|---|---:|---|---|---|---|---|
| (5.3a), (5.5), $i=a$, $\mu=A$ | 4 | $E_a{}^A$ in $\phi$ | algebraic dyad $E[q]$; $e_4E=(O_4^T-X)E$ along the free sheet | $\partial_\xi E=-HE$, 10.(4.2) | common oriented dyad of $q_0$ | analytic: 06.4, 10.4.1; V65 checks the connection variation, not the ODE theorem |
| (5.3a), (5.5), $i=4$, $\mu=\eta$ | 1 | $c$ in $\phi$ | $c=2e^m$, $e_4c=0$ | $\partial_\xi c=-2\nu c=0$ in the affine minus gauge | $c_0=2e^{m_0}>0$ | analytic: 06.(4.6)--(4.7), 10.4.1 |
| (5.3a), (5.5), $i=4$, $\mu=A$ | 2 | $b^A$ in $\phi$ | $b^A=0$ | $\partial_\xi b^A=2(\zeta-t)^aE_a{}^A$, 10.(4.2) | $b_0^A=0$ | analytic: 10.4.1 |

**Frame subtotal:** $4+1+2=7$.  The identities
$e_3{}^\xi=1$, $e_3{}^\eta=e_3{}^A=e_4{}^\xi=e_a{}^\xi=e_a{}^\eta=0$
are hard gauge rows in Section 4 below, not eight additional evolution
unknowns.

## 2. Connection rows: source (5.3b)

Metric antisymmetry leaves six internal Lorentz pairs.  Split them as
$$
 \mathcal P=\{12,13,23\},\qquad
 \mathcal Q=\{14,24,34\}.
 \tag{L.5}
$$
For $\mathcal P$, source uses $p=3$ and $q\in\{1,2,4\}$;
for $\mathcal Q$, it uses $p=4$ and $q\in\{1,2,3\}$.
The $q=p$ equations are identities and the gauge-zero components are not
duplicated.

| Source specialization | Multiplicity | Evolved slot | $N_+$ free realization | $N_-$ complementary realization | Corner value | Analytic / regression status |
|---|---:|---|---|---|---|---|
| (5.3b), $p=3$, $(i,j)=(a,b)$, $q=a$ | 2 | intrinsic $\gamma_a{}^b{}_c$ in $\Gamma_q{}^a{}_b\subset\phi$ | cut Levi-Civita connection of $q$ | $\partial_\xi\gamma$ from 10.(1.2)--(1.4), with the uncontracted $H$-Codazzi curvature | common cut connection of $q_0$ | analytic: 10.4.1; V65 representative commutators |
| (5.3b), $p=3$, $(i,j)=(a,b)$, $q=4$ | 1 | $O_4{}^a{}_b$ in $\Gamma_4{}^a{}_b\subset\phi$ | algebraic rotation of the chosen plus dyad | $\partial_\xi O_4$ in 10.(4.2) | plus-dyad value $O_{4,0}$ | analytic: 10.4.1; V69 source connection substitution |
| (5.3b), $p=3$, $(i,j)=(a,3)$, $q=a$ | 4 | $H_a{}^b=\Gamma_a{}^b{}_3$ in $\phi$ | opposite form from 09.(3.5) | own optical row $\partial_\xi H=-H^2-\underline\alpha$; the antisymmetric part is the tangential torsion constraint | $H_0=B^-_0$ | analytic: 09.3, 10.4.1 |
| (5.3b), $p=3$, $(i,j)=(a,3)$, $q=4$ | 2 | $2t^a=\Gamma_4{}^a{}_3$ in $\phi$ | $t=-\zeta-D\log c$ | $\partial_\xi t=\underline\beta+H(\zeta-t)$, 10.(4.3) | $t_0=-\zeta_0-Dm_0$ | analytic: 10.4.1; V69 |
| (5.3b), $p=4$, $(i,j)=(a,4)$, $q=a$ | 4 | $X_a{}^b=\Gamma_a{}^b{}_4$ in $\psi$ | own optical row $\not\nabla_4X=-X^2-\alpha$; antisymmetric part is tangential torsion | opposite form from 09.(3.3) | $X_0=2e^{m_0}B^+_0$ | analytic: 09.3, 10.4.1 |
| (5.3b), $p=4$, $(i,j)=(a,4)$, $q=3$ | 2 | $2\zeta^a=\Gamma_3{}^a{}_4$ in $\psi$ | duplicate plus row $\not\nabla_4\zeta=-\beta+X(t-\zeta)$ | $\zeta=\omega^{(-)}$ | common $\zeta_0$ | analytic: 10.(4.4); V69 verifies the duplicate rows agree |
| (5.3b), $p=4$, $(i,j)=(3,3)$, $q=a$ | 2 | $\zeta_a=\Gamma_a{}^3{}_3$ in $\psi$ | $\not\nabla_4\zeta=-\beta+X(t-\zeta)$ | $\zeta=\omega^{(-)}$ | common $\zeta_0$ | analytic: 10.(4.4); V69 |
| (5.3b), $p=4$, $(i,j)=(3,3)$, $q=3$ | 1 | $2\nu=\Gamma_3{}^3{}_3$ in $\psi$ | $e_4\nu=-\rho+2t\cdot\zeta-|\zeta|^2$, 10.(4.5) | affine value $\nu=0$ | $\nu_0=0$ | analytic: 10.4.1; V69 |

**Connection subtotal:** $(2+1+4+2)+(4+2+2+1)=9+9=18$.
The rows $\Gamma_3{}^a{}_b=\Gamma_3{}^a{}_3=\Gamma_4{}^a{}_4=
\Gamma_4{}^3{}_3=0$ are hard gauge values, and metricity supplies their
dependent index partners.  They do not create further source slots.

## 3. Doubled Weyl rows: A.36--A.39 after 09.(1.4)

The table lists the actual printed allocation.  On the copy diagonal the
geometric formulas use the uncircled names.  ``Identity'' means that the
project formula was differentiated and shown to satisfy the source row;
it does not mean that the row is discarded.

| Source row | Multiplicity | Evolved slot | $N_+$ status / formula | $N_-$ status / formula | Corner value | Analytic / regression status |
|---|---:|---|---|---|---|---|
| A.36a | 2 | $\underline\alpha\subset\psi$ | complementary opposite-extreme ODE, first row of 10.(3.2) | free own optical curvature $-\partial_\xi H-H^2$ | value from the minus own sheet | direct analytic substitution: 10.(3.4)--(3.8); V73--V74 |
| A.36b | 2 | $\mathring{\underline\beta}\subset\phi$ | free $\underline\beta$ Codazzi | complementary own-vector identity 10.(2.8) | common Codazzi value | analytic: 10.(2.8); V67 |
| A.37a | 2 | $\underline\beta\subset\psi$ | complementary middle-vector identity, first line of 10.(3.2) | free $\underline\beta$ Codazzi | common Codazzi value | direct analytic substitution: 10.(3.4)--(3.8); V73--V74 |
| A.37b | 1 | $\sigma\subset\phi$ | free normal-curvature formula 09.(3.1) | complementary scalar identity 09.(5.2)--(5.3) | common normal-curvature value | analytic: 09.5; V64 |
| A.37c | 1 | $\rho\subset\phi$ | free Gauss formula 09.(3.1) | complementary scalar identity 09.(5.1) | common Gauss value | analytic: 09.5; V63--V64 |
| A.38a | 1 | $\mathring\rho\subset\psi$ | complementary scalar identity, second line of 10.(3.2) | free $\rho$ Gauss formula | common Gauss value | direct analytic substitution: 10.(3.4)--(3.8); V73--V74 |
| A.38b | 1 | $\mathring\sigma\subset\psi$ | complementary scalar identity, third line of 10.(3.2) | free $\sigma$ normal-curvature formula | common normal-curvature value | direct analytic substitution: 10.(3.4)--(3.8); V73--V74 |
| A.38c | 2 | $\mathring\beta\subset\phi$ | free $\beta$ Codazzi | complementary middle-vector identity 10.(2.7), residual $-2R_{\rm Gauss}\zeta$ before Gauss | common Codazzi value | analytic: 10.(2.3)--(2.7); V66 |
| A.39a | 2 | $\beta\subset\psi$ | complementary own-vector identity, fourth line of 10.(3.2) | free $\beta$ Codazzi | common Codazzi value | direct analytic substitution: 10.(3.4)--(3.8); V73--V74 |
| A.39b | 2 | $\alpha\subset\phi$ | free own optical curvature $-\not\nabla_4X-X^2$ | complementary opposite-extreme ODE 10.(2.9) | value from the plus own sheet | analytic: 10.(2.9) |

**Weyl subtotal:** $2+2+2+1+1+1+1+2+2+2=16$.
The five $e_4$ rows are A.36a, A.37a, A.38a--b and A.39a; the
five $e_3$ rows are A.36b, A.37b--c, A.38c and A.39b.  Hence every
row of every block A.36--A.39 occurs exactly once.

## 4. Gauge, algebraic type and copy constraints

These rows restrict the 41-component source system but are not extra
evolution equations.

| Source relation | Components | Realization on the two sheets | Corner / propagation check | Status |
|---|---:|---|---|---|
| (5.4), (5.14) coordinate frame | 9 fixed entries | (L.2), $e_a=E_a{}^A\partial_A$ | common coordinate framing and markings | exact by variable definition |
| (5.6)--(5.8): $\eta=\zeta$, $\underline\xi=0$, $\underline\upsilon=0$ | $2+2+1$ | encoded in (4.1), $t=-\zeta-D\log c$ | generator/frame rows above preserve the identities | analytic: 10.4.1 |
| (5.9): $\Gamma_3{}^a{}_b=0$ | 1 | parallel minus dyad | fixed at the corner and along $e_3$ | exact gauge definition |
| (5.10)--(5.11): $\xi=\underline\xi=0$ | 4 | both null directions geodesic; $e_4$ affine, $e_3$ may have $\nu$ | $\nu_0=0$ and 10.(4.5) on the opposite sheet | analytic: 10.4.1 |
| (5.2): $\Gamma_{ijk}=-\Gamma_{ikj}$ | dependent partners | imposed when choosing the connection slots | no propagation variable is needed | exact algebraic type |
| Appendix (A.10)--(A.12): Weyl symmetries and trace | dependent curvature components | six physical Weyl fields determine $d$ | own/corner formulas agree | exact algebraic type |
| A.35 copy equalities | 6 | $\mathring\beta=\beta$, $\mathring{\underline\beta}=\underline\beta$, $\mathring\rho=\rho$, $\mathring\sigma=\sigma$ initially | common corner values; initial-sheet equality follows from 10.(4.6)--(4.8) | analytic on $X_{\rm in}$; **bulk propagation not proved** |

## 5. Exhaustiveness argument and boundary

The field lists (L.3) contain exactly the 7 nonfixed frame coefficients,
the 9 $\mathcal P$ connection coefficients, the 9 $\mathcal Q$
connection coefficients and four four-real-component Bianchi blocks.
Sections 1--3 account for these as $7+9+9+16=41$, with each source row
and each evolved slot appearing once.  Section 4 accounts for every
relation used to eliminate the remaining frame/connection/curvature
components and for all six copy constraints.  The tangential Gauss,
two uncontracted Codazzi and normal-Ricci equations are not missing
evolution slots: they are the pullback constraints used in 09.3--4 and
10.4.1 to verify the relevant (5.3b) rows.

This proves exhaustiveness of **initial completion relative to the fixed
source operator 09.(1.4)**.  It does not prove that omitted spacetime
Cartan/curvature equations or the copy constraints propagate in the bulk.
That independent obligation is calculation 11.

**Verified:** tensor-row incidence and component checksum; every initial
realization cited above; direct plus-sheet A.36a/A.37a/A.38a--b/A.39a
substitution.

**Assumptions:** four dimensions, $g_{34}=-2$, source metricity and Weyl
types, printed allocation with the complete global conjugation 09.(1.4),
positive $c$, fixed local reference bundle/dyad conventions.

**Not verified by the ledger:** any bulk subsidiary energy theorem,
Einstein reconstruction in the cell, reset estimate, tangent surjectivity,
$P_{\rm cell}^k$ or $P_{\rm rect}^{s,r}$.
