# Second-order local Ward completion and the missing nested/source contacts

## Result

**A finite-dimensional flat Ward solution exists in the explicitly defined midpoint Euclidean-time finite-part prescription below, but that prescription is not a consistent iterated commutator algebra. Therefore this calculation does not establish a quantum Hilbert-stress completion.** The decisive new negative test is a nonzero nonlinear Jacobi residual, including
\[
 \mathfrak J_R\big|_{R^{(7)}}=-\frac{1079}{41287680\pi^2}R^{(7)}.
\]
Its cubic part also fails the elementary-CAR preservation condition. It cannot be repaired merely by changing the local density assigned to the inner charge commutator. This is a failure of this *iterated binary finite-part rule*, not a no-go theorem for the deformation or for a more complete multi-source renormalization.

The positive calculation is useful despite that failure: all six dimension-six local energy coefficients and the pressure are explicitly solved, the specified mixed-frame ambiguity is isolated, and no energy eigenvalues enter. The remaining requirement is now sharper than an unspecified “contact issue”: one must supply nested/composite contacts compatible with Jacobi and the metric action principle. A curvature improvement added only to the second-order flat stress does not fix the exhibited binary-rule defect.

The reproducible exact calculation is [ward_source_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_source_checks.sage>). No existing research note was changed. Root/topic instructions and the authoritative [CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L1-L145>) were read. The prior [local review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md>) was used to locate the unresolved problem, not as evidence that it was already solved.

## 1. Objects, dimensions, and two distinct second-order finite parts

Use signature \((- ,+)\), periodic spatial circle, \(\hbar=v=1\),
\[
 \{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y),\quad\{R,L\}=0,
 \qquad r=-\frac i2:RR':,\quad l=\frac i2:LL':.
\]
All fermion monomials below are **full plane-Wick** products; colons are generally suppressed. Set \(R_n=\partial_x^nR\), \(L_n=\partial_x^nL\). Both chiral central charges are \(c=1/2\), so \(\kappa=1/(48\pi)\). The free derivative is \(D_0R=-R'\), \(D_0L=L'\), and
\[
 h_0=r+l,\quad p=r-l,\quad
 V_1=\int v_1,\quad v_1=-R_0R_1L_0L_1=-4rl,
\]
\[
 h_1=v_1+\frac{h_0''}{12\pi},\qquad
 q_1=3v_1+\frac{h_0''}{12\pi}.
\]
There is no factorial in \(H=H_0+\lambda V_1+\lambda^2V_2+\cdots\). The local coefficient \(h_j\) has engineering dimension \(2+2j\), and \([\lambda]=\mathrm{length}^2\).

The following local basis avoids confusing a conformal normal product with a full-Wick sextic:
\[
\begin{aligned}
 B_{05}&=i(R_0R_5-L_0L_5),&
 B_{14}&=i(R_1R_4-L_1L_4),&
 B_{23}&=i(R_2R_3-L_2L_3),\\
 A&=R_0R_3L_0L_1+R_0R_1L_0L_3,\\
 B&=R_1R_2L_0L_1+R_0R_1L_1L_2,&
 C&=R_0R_2L_0L_2.
\end{aligned}
\tag{1}
\]
These are the six parity-even identity-family dimension-six densities. In particular,
\[
 \int B_{05}=\mathcal Q_5,\quad
 \int B_{14}=-\mathcal Q_5,\quad
 \int B_{23}=\mathcal Q_5,\quad
 \int A=K_{42},\quad\int C=K_{33},\quad
 \int B=-K_{42}-2K_{33}.
\tag{2}
\]
No dimension-six six-fermion full-Wick monomial exists in this sector.

Write the general integrated second-order coefficient as
\[
 V_2=\int( q_s B_{05}+k_a A+k_c C).
\tag{3}
\]
Two different composite-association prescriptions must be distinguished:

* **Inner-pair midpoint stress square:** the supplied fermion expression has \(k_a=-7/(6\pi)\), \(k_c=-47/(24\pi)\), \(q_s=-1/(180\pi^2)\).
* **Midpoint split of the entire determinant composite:** the association in equations (10)–(12) of the [prior local calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md#L174-L213>) instead has \(k_c=-35/(24\pi)\), with the other two coefficients unchanged.

The difference follows locally, without any spectral argument:
\[
 (r^2)_{\mathrm{inner\ sym}}=(r^2)_{\mathrm{std}}+\frac{r''}{8\pi},
\]
and similarly for \(l\). Hence
\[
 8\int\left[\Delta(r^2)\,l+r\,\Delta(l^2)\right]
 =-\frac2\pi\int r'l'=-\frac1{2\pi}K_{33}.
\tag{4}
\]
Both values of \(k_c\) are treated separately below; they are not called the same determinant finite part.

## 2. The tested contact rule, including all Euclidean-time shifts

For individually plane-Wick fields \(A,B\), define a binary operation
\[
 \mathcal B(A,B)(x)=\operatorname{FP}_{\epsilon\to0^+}
 i\int dy\left[A(y,+\epsilon/2)B(x,-\epsilon/2)
              -B(x,+\epsilon/2)A(y,-\epsilon/2)\right].
\tag{5}
\]
It is intended to represent \(i[\int A,B(x)]\), but that intention must itself be tested. Free Euclidean evolution and spatial translation are applied to **all uncontracted endpoints**. With \(s=y-x\), the right endpoints in the first product lie at \(s+i\epsilon/2\) and \(-i\epsilon/2\); the left endpoints lie at \(s-i\epsilon/2\) and \(+i\epsilon/2\). This is not a prescription that freezes the uncontracted fields at equal time.

The elementary contractions between the upper and lower insertions are
\[
 C_R(s,\epsilon)=\frac{i}{2\pi(s+i\epsilon)},\qquad
 C_L(s,\epsilon)=-\frac{i}{2\pi(s-i\epsilon)}.
\tag{6}
\]
A contraction of an upper jet \(R_a\) with a lower \(R_b\) has coefficient \(i(-1)^a(a+b)!/(2\pi)\) and pole order \(a+b+1\); replace \(i\) by \(-i\) for the left chirality. Wick signs are obtained by removing paired fermions from their original ordered list, then sorting the remaining jets. Coincident duplicate jets vanish.

Suppose a matching produces total right/left pole orders \(a_p,b_p\). After Taylor expansion, only total Taylor degree
\[
 N=a_p+b_p-1
\tag{7}
\]
can contribute to the constant Laurent coefficient after spatial integration. For total upper-right/upper-left/lower-right/lower-left Taylor degrees \(u,v,u_B,v_B\), set \(\epsilon=1\) in the homogeneous rational kernel
\[
 F_+(s)=\frac{(s+i/2)^u(s-i/2)^v(-i/2)^{u_B}(i/2)^{v_B}}
                  {(s+i)^{a_p}(s-i)^{b_p}},
\]
and let \(F_-\) reverse \(i\) only in this positional kernel, not in its Wick-contraction prefactor. The contribution to (5) is
\[
 -2\pi\left(\operatorname{Res}_{s=i}F_+
             -\operatorname{Res}_{s=i}F_-\right)
 \times\text{Wick prefactor and Taylor factorials}.
\tag{8}
\]
The two functions have different upper-pole orders; this is explicitly implemented rather than treating the opposite \(i0\) factors as an already defined product of distributions. The finite local OPE calculation uses the plane singular kernel. Global cylinder finite terms are retained in the choice of local composites in (3); no nonlocal circumference-dependent contact term is introduced.

An earlier one-insertion time split gave a nonzero integrated self-commutator and was discarded. Symmetrizing both endpoints as in (5) passes that necessary test, but, as section 5 shows, does not pass all nonlinear consistency tests.

## 3. Explicit energy Ward calculation

The nontrivial overlapping contact calculation gives
\[
\begin{aligned}
 \mathcal B(v_1,h_1)={}&\frac5{12\pi}
 (R_0R_1L_0L_4+R_0R_2L_0L_3-R_0R_3L_0L_2-R_0R_4L_0L_1)\\
 &+\frac3{2\pi}(R_1R_3L_0L_1-R_0R_1L_1L_3)\\
 &+\frac{23}{12\pi}(R_1R_2L_0L_2-R_0R_2L_1L_2)\\
 &-\frac i{\pi^2}\left[
 \frac{63}{10240}(R_0R_6+L_0L_6)
 +\frac{23}{23040}(R_1R_5+L_1L_5)
 +\frac{311}{18432}(R_2R_4+L_2L_4)\right].
\end{aligned}
\tag{9}
\]
The single-stress action \(\mathcal B(v_2,h_0)\) has no overlapping right-left pinch. It was computed independently by acting with a test-function conformal generator on each fermion jet, including its plane-Wick anomaly. For example, the right bilinear anomaly is
\[
 i\left[\int fr,R_aR_b\right]_{\mathrm{central}}
 =-\frac{i}{4\pi}\sum_{j=0}^b
 \binom bj\frac{(-1)^j(a+j)}{(a+j+1)(a+j+2)}
 f^{(a+b+2)}.
\tag{10}
\]
At \((a,b)=(0,1)\), multiplication by \(-i/2\) reproduces \(+\kappa f'''\). The left anomaly has the sign required by \(l=+iLL'/2\).

Set
\[
 h_2=aB_{05}+bB_{14}+cB_{23}+dA+eB+fC.
\tag{11}
\]
Its integral agrees with (3) precisely when
\[
 a-b+c=q_s,\qquad d-e=k_a,\qquad f-2e=k_c.
\tag{12}
\]
Solving the **local** coefficient equations
\[
 D_0h_2+\mathcal B(v_1,h_1)+\mathcal B(v_2,h_0)=0
\tag{13}
\]
together with (12) yields necessary conditions
\[
 \boxed{k_a=-\frac7{6\pi},\qquad q_s=-\frac1{180\pi^2},\qquad k_c\ \text{free}.}
\tag{14}
\]
For example, four quartic residual coefficients and (12) imply \(4k_a+14/(3\pi)=0\). The three pure-chiral bilinear coefficients and \(a-b+c=q_s\) imply \(6q_s+1/(30\pi^2)=0\). These are not diagonal-energy matching conditions.

The unique energy-density solution within the six-dimensional local space is
\[
\begin{aligned}
 a&=-\frac{k_c}{24\pi}-\frac{8567}{92160\pi^2},&
 b&=-\frac{k_c}{8\pi}-\frac{4321}{18432\pi^2},&
 c&=-\frac{k_c}{12\pi}-\frac{1355}{9216\pi^2},\\
 d&=-2k_c-\frac9{2\pi},&
 e&=-2k_c-\frac{10}{3\pi},&
 f&=-3k_c-\frac{20}{3\pi}.
\end{aligned}
\tag{15}
\]
In particular, the simple integrand \(v_2=q_sB_{05}+k_aA+k_cC\) is not the conserving local energy density. Its required derivative correction is explicit:
\[
\begin{aligned}
 h_2&=v_2+\partial_xJ_2,\\
 J_2&=(a-q_s)i(R_0R_4-L_0L_4)
       +c\,i(R_1R_3-L_1L_3)\\
    &\quad+e(R_0R_2L_0L_1+R_0R_1L_0L_2),
\end{aligned}
\tag{15a}
\]
with the coefficients in (15). This follows by differentiating and using (12), and is checked exactly in the script. The primitive is relative to the specific simple representative (3); a local determinant-flow representative has its own additional total derivative. Already at order zero the pointwise density flow needs \(K_0=h_0'/(12\pi)\) in \(\partial_\lambda h=-\operatorname{FP}(hq-p^2)+\partial_xK_\lambda\).

The numerical rational coefficients in (15) depend on the precise finite contact rule (5); their presence is not a scheme-independent Hilbert-stress theorem.

## 4. Momentum Ward equation and the pressure

With \(p=r-l\) fixed, the second-order momentum equation is
\[
 \mathcal B(v_2,p)+q_2'=0.
\tag{16}
\]
The independent test-function calculation determines the coefficients of \(q_2\) in the ordered basis \((B_{05},B_{14},B_{23},A,B,C)\):
\[
\begin{aligned}
 a_q&=q_s+\frac{19k_a-10k_c}{240\pi},&
 b_q&=-2q_s+\frac{47k_a-30k_c}{240\pi},&
 c_q&=2q_s+\frac{7k_a-5k_c}{60\pi},\\
 d_q&=\frac{11}2k_a-2k_c,&
 e_q&=\frac12k_a-2k_c,&
 f_q&=k_a+k_c.
\end{aligned}
\tag{17}
\]
The integration-constant identity pressure is excluded by the stated flat local scheme, as at first order.

For readability, the following table gives coefficients relative to the **rescaled** basis
\( (B_{05}/\pi^2,B_{14}/\pi^2,B_{23}/\pi^2,A/\pi,B/\pi,C/\pi)\):

| Basis direction | \(h_2\), inner-pair symmetric | \(q_2\), inner-pair symmetric | \(h_2\), whole-composite FP | \(q_2\), whole-composite FP |
|---|---:|---:|---:|---:|
| \(B_{05}/\pi^2\) | \(-349/30720\) | \(-47/2880\) | \(-989/30720\) | \(-107/2880\) |
| \(B_{14}/\pi^2\) | \(191/18432\) | \(79/2880\) | \(-961/18432\) | \(-101/2880\) |
| \(B_{23}/\pi^2\) | \(149/9216\) | \(23/1440\) | \(-235/9216\) | \(-37/1440\) |
| \(A/\pi\) | \(-7/12\) | \(-5/2\) | \(-19/12\) | \(-7/2\) |
| \(B/\pi\) | \(7/12\) | \(10/3\) | \(-5/12\) | \(7/3\) |
| \(C/\pi\) | \(-19/24\) | \(-25/8\) | \(-55/24\) | \(-21/8\) |

Every local monomial coefficient in (13) and (16), and every integral constraint (12), vanishes exactly for these two specializations. This verifies the finite low-operator Ward *calculation*, subject to its binary rule. It does not cure that rule's next consistency failure.

## 5. Decisive nonlinear Jacobi counterexample

Let
\[
 G=\int r l'=\frac14\int R_0R_1L_0L_2,
 \qquad g=\frac14R_0R_1L_0L_2.
\]
For a genuine commutator, \(D_A=i[A,\cdot]\) satisfies
\[
 [D_{V_1},D_G]=D_{i[V_1,G]}.
\]
For the tested operation this means
\[
 \mathfrak J_O=
 \mathcal B(v_1,\mathcal B(g,O))
 -\mathcal B(g,\mathcal B(v_1,O))
 -\mathcal B(\mathcal B(v_1,g),O)=0.
\tag{18}
\]
**Order of limits:** every inner binary operation first takes its finite part; its resulting local density is then supplied to the outer operation. In the last term, the first entry of the outer operation is spatially integrated by definition. Thus this is the iterated-binary-rule Jacobi test, not a confusion between a pointwise bracket and a charge. No further factor of \(i\) is divided out.

The exact result on an elementary right fermion is
\[
\begin{aligned}
 \mathfrak J_R={i\over\pi}\bigg[&
 {11R_0\over2560}(L_0L_6+4L_1L_5+5L_2L_4)\\
 &+{67R_1\over1536}(L_0L_5+3L_1L_4+2L_2L_3)\\
 &+{107R_2\over768}(L_0L_4+2L_1L_3)
 +{51R_3\over256}(L_0L_3+L_1L_2)\\
 &+{205R_4\over1536}L_0L_2
 +{263R_5\over7680}L_0L_1\bigg]
 -{1079\over41287680\pi^2}R_7.
\end{aligned}
\tag{19}
\]
The left result interchanges \(R,L\) in the cubic expression and has \(+1079L_7/(41287680\pi^2)\). The local-stress test \(\mathfrak J_r\) is also nonzero; its full polynomial is in the output snapshot below.

The single-fermion term cannot be discarded by noting \(\int R_7=0\): (18) is an identity on a local field, or on every test-function smear of it, not only on its constant spatial zero mode. Plane-Wick monomials of different fermion degree cannot cancel it.

There is also a short structural diagnosis not dependent on the large polynomial. Write the cubic right action as \((i/\pi)\sum_j F_j(L)\partial_x^jR\). A charge commutator preserves the elementary CAR, so this right-linear differential operator must be formally skew-adjoint. Its highest two coefficients from (19) are
\[
 F_5=\frac{263}{7680}:LL':,\qquad
 F_4=\frac{205}{1536}:LL'':.
\]
The coefficient of \(\partial_x^4\) in the sum with its formal adjoint is
\[
 \boxed{\frac{i}{\pi}(2F_4-5F_5')
       =\frac{49i}{512\pi}:LL'':\ne0.}
\tag{20}
\]
The constant-coefficient \(R_7\) term is itself skew and does not affect this defect. Thus \(\mathfrak J\) is not a Hamiltonian vector field on the elementary CAR. A finite counterterm assigned **only** to the density \(\mathcal B(v_1,g)\) cannot repair (18) while keeping the outer action on elementary fields unchanged.

The script independently tests the latter statement by enumerating all dimension-eight identity-family bilinears and quartics, including the four-right and four-left monomials with jets \(0,1,2,3\), and solving simultaneously for a density \(\Delta c\) satisfying
\(\mathcal B(\Delta c,R)=\mathfrak J_R\), \(\mathcal B(\Delta c,L)=\mathfrak J_L\).
The exact linear solution set is empty. No dimension-eight six-fermion identity-family monomial exists. This completeness statement concerns the indicated local identity sector, not arbitrary nonlocal or additional-source operators.

## 6. What a metric/source completion would additionally require

The CPS convention is
\(T_{\mu\nu}=-2(\sqrt{-g})^{-1}\delta S/\delta g^{\mu\nu}\).
A flat symmetric conserved tensor can be coupled *linearly* to a metric perturbation by
\(\frac12\int \delta g_{\mu\nu}T^{\mu\nu}_{\rm flat}\).
That is not yet a covariant quantum action. At fixed covariant fields, the metric action principle also requires symmetry of the second functional derivative,
\[
 \frac{\delta[\sqrt{-g}T_{\mu\nu}(x)]}{\delta g^{\rho\sigma}(y)}
 =\frac{\delta[\sqrt{-g}T_{\rho\sigma}(y)]}{\delta g^{\mu\nu}(x)},
\tag{21}
\]
and compatible higher metric/composite source variations. For a spacetime-dependent coupling the diffeomorphism Ward identity is
\(\nabla_\mu T^\mu{}_{\nu}=\mathcal O_\lambda\partial_\nu\lambda\).
A metric-dependent Darboux map can also alter which canonical fields are held fixed in this variation. None of those data are contained in flat Hamiltonian eigenvalues.

A concrete allowed source counterterm illustrates exactly what is and is not supplied. For a chosen covariant scalar \(F\) of dimension four, e.g. the free determinant scalar with a fixed normalization \(F|_{\rm flat}=rl\), take
\[
 S_{\mathrm{ct}}=\alpha\lambda^2\int\sqrt{-g}\,\mathscr R[g]F.
\]
In two dimensions its flat metric variation is
\[
 \Delta T^{\mu\nu}
 =2\alpha\lambda^2(\partial^\mu\partial^\nu-\eta^{\mu\nu}\Box)F,
\]
so
\[
 \Delta h_2=2\alpha F'',\qquad
 \Delta p_2=-2\alpha\partial_xD_0F,\qquad
 \Delta q_2=2\alpha D_0^2F.
\tag{22}
\]
It changes the flat stress without changing the flat action or total Hamiltonian on the circle. Crucially, it does **not** change only \(h_2\): maintaining \(p=r-l\) needs an accompanying canonical-frame/source adjustment. The first-order \(h_0''\) improvement is not itself the metric variation of an ordinary scalar \(\mathscr R h_0\), because \(h_0\) is not a Lorentz scalar.

The variation was checked with xAct/xTras, including `VarL` and `FullSimplification[]`; the exact residual is zero in the [kernel evidence](</Users/koishi/.codex/mcp-results/xact_run-Rn8D7J/result.txt>). A minimal reproducible input is:

```wolfram
DefManifold[M, 2, {a,b,c,d}];
DefMetric[-1,g[-a,-b],CD]; DefTensor[F[],M];
var=VarL[g[-a,-b],CD][F[] RicciScalarCD[]];
target=-F[] RicciCD[a,b]+g[a,b]F[]RicciScalarCD[]/2
       +CD[a][CD[b][F[]]]-g[a,b]CD[c][CD[-c][F[]]];
FullSimplification[][ToCanonical[ContractMetric[var-target]]]
(* 0; the two-dimensional Einstein term vanishes. *)
```

Further source counterterms such as \(\lambda\mathscr R^2\), and terms involving derivatives of a local \(\lambda(x)\), can leave the flat one-stress operator unchanged while modifying multiple source contacts. Their coefficients must be chosen as part of a source renormalization prescription. Since \(c_L=c_R\), there is no chiral gravitational-anomaly mismatch, but that fact does not establish that the particular canonical-frame coefficients above arise from a covariant action.

**Current constructive boundary:** equations (15), (17), and (22) are explicit available pieces. A covariant representative matching them would require a renormalized Majorana action with background zweibein/metric and local coupling sources, a metric-dependent canonical map, and nested source contacts obeying (18), (21), and the diffeomorphism Ward identity. The binary operation (5) alone fails that requirement by (19)–(20). No fully specified covariant representative is constructed here, and there is no claim that the failure is a genuine anomaly rather than a missing multi-contact/source subtraction.

## 7. Verification and scope

* **Analytic:** basis and dimensions; integrated relations; distinction (4); homogeneous residue rule (7)–(8); local coefficient necessity (14); exact CAR obstruction (20); curvature-source variation (22).
* **Exact CAS:** all contractions in (5); both first-order conservation identities; second-order local energy and momentum equations; independent single-stress test-function derivation; specializations to both distinct finite parts; total-derivative tests; self-commutator integration; restricted \(H_0\) Jacobi; explicit nonlinear Jacobi failure; complete dimension-eight local charge-repair linear system.
* **Independent review:** the parent researcher arranged a fresh audit with the input/contact prescription and all second-order coefficients initially unknown. Its conclusions are not assumed in this note; the present script and failure are independently reproducible. The parent also reran this script and reproduced the general Ward solutions and nonlinear failures.
* **Warnings:** Sage/SymPy emitted a `DeprecationWarning` concerning `bitcount`; no arithmetic exception or inexact floating-point computation was used. The final command exited with code zero after reporting the intended nonlinear consistency failures; all other sanity checks are asserted to pass.
* **Not proved:** a Jacobi-compatible full contact algebra, a source action principle, a quantum covariant/Hilbert representative, regulator-independent uniqueness, or nonperturbative operator domains. No spectral fitting, energy matching, or claim that spectrum fixes contact terms occurs.

## Appendix: complete final Sage stdout snapshot

The dictionary key `((0,a),(1,b),...)` denotes the canonically ordered full-Wick jet monomial; `0=R`, `1=L`. Each `bracket` already contains the factor `i` and integrates its first entry.

```text
PASS free R equation
PASS free L equation
PASS central coefficient kappa=1/(48pi)
PASS first-order energy Ward
PASS first-order momentum Ward
PASS external spatial derivative compatibility
PASS single-stress action independent derivation energy
PASS single-stress action independent derivation momentum
PASS integrated self commutator has local spatial primitive
D1_v1 = {((0, 0), (0, 1), (1, 0), (1, 4)): 1/(3*pi), ((0, 0), (0, 2), (1, 0), (1, 3)): 1/(3*pi), ((0, 0), (0, 3), (1, 0), (1, 2)): -1/(3*pi), ((0, 0), (0, 4), (1, 0), (1, 1)): -1/(3*pi), ((0, 0), (0, 1), (1, 1), (1, 3)): -5/(3*pi), ((0, 0), (0, 2), (1, 1), (1, 2)): -2/pi, ((0, 1), (0, 2), (1, 0), (1, 2)): 2/pi, ((0, 1), (0, 3), (1, 0), (1, 1)): 5/(3*pi), ((0, 0), (0, 6)): -247*I/(92160*pi**2), ((0, 2), (0, 4)): I/(2048*pi**2), ((0, 1), (0, 5)): 33*I/(2560*pi**2), ((1, 0), (1, 6)): -247*I/(92160*pi**2), ((1, 2), (1, 4)): I/(2048*pi**2), ((1, 1), (1, 5)): 33*I/(2560*pi**2)}
D1_h1 = {((0, 0), (0, 1), (1, 0), (1, 4)): 5/(12*pi), ((0, 0), (0, 2), (1, 0), (1, 3)): 5/(12*pi), ((0, 0), (0, 3), (1, 0), (1, 2)): -5/(12*pi), ((0, 0), (0, 4), (1, 0), (1, 1)): -5/(12*pi), ((0, 0), (0, 1), (1, 1), (1, 3)): -3/(2*pi), ((0, 0), (0, 2), (1, 1), (1, 2)): -23/(12*pi), ((0, 1), (0, 2), (1, 0), (1, 2)): 23/(12*pi), ((0, 1), (0, 3), (1, 0), (1, 1)): 3/(2*pi), ((0, 0), (0, 6)): -63*I/(10240*pi**2), ((0, 2), (0, 4)): -311*I/(18432*pi**2), ((0, 1), (0, 5)): -23*I/(23040*pi**2), ((1, 0), (1, 6)): -63*I/(10240*pi**2), ((1, 2), (1, 4)): -311*I/(18432*pi**2), ((1, 1), (1, 5)): -23*I/(23040*pi**2)}
GENERAL_ENERGY_SOLUTION = [{a: -kc/(24*pi) - 8567/(92160*pi**2), b: -kc/(8*pi) - 4321/(18432*pi**2), c: -kc/(12*pi) - 1355/(9216*pi**2), d: -2*kc - 9/(2*pi), e: -2*kc - 10/(3*pi), f: -3*kc - 20/(3*pi), ka: -7/(6*pi), qs: -1/(180*pi**2)}]
PASS unique one-parameter energy solution
PASS full energy residual vanishes identically
PASS integral h2 agrees with v2
PASS explicit local density improvement h2-v2=J2_prime
GENERAL_PRESSURE_SOLUTION = [{a: (19*ka - 10*kc + 240*pi*qs)/(240*pi), b: (47*ka - 30*kc - 480*pi*qs)/(240*pi), c: (7*ka - 5*kc + 120*pi*qs)/(60*pi), d: 11*ka/2 - 2*kc, e: ka/2 - 2*kc, f: ka + kc}]
PASS unique pressure solution
PASS full momentum residual vanishes identically
inner-pair symmetric h2 coefficients: {a: -349/(30720*pi**2), b: 191/(18432*pi**2), c: 149/(9216*pi**2), d: -7/(12*pi), e: 7/(12*pi), f: -19/(24*pi), ka: -7/(6*pi), qs: -1/(180*pi**2), kc: -47/(24*pi)}
inner-pair symmetric q2 coefficients: {a: -47/(2880*pi**2), b: 79/(2880*pi**2), c: 23/(1440*pi**2), d: -5/(2*pi), e: 10/(3*pi), f: -25/(8*pi)}
PASS inner-pair symmetric energy Ward
PASS inner-pair symmetric momentum Ward
whole-composite determinant FP h2 coefficients: {a: -989/(30720*pi**2), b: -961/(18432*pi**2), c: -235/(9216*pi**2), d: -19/(12*pi), e: -5/(12*pi), f: -55/(24*pi), ka: -7/(6*pi), qs: -1/(180*pi**2), kc: -35/(24*pi)}
whole-composite determinant FP q2 coefficients: {a: -107/(2880*pi**2), b: -101/(2880*pi**2), c: -37/(1440*pi**2), d: -7/(2*pi), e: 7/(3*pi), f: -21/(8*pi)}
PASS whole-composite determinant FP energy Ward
PASS whole-composite determinant FP momentum Ward
PASS D1v1 is nonzero (naive full-Wick Leibniz is insufficient)
PASS integrated total-derivative entry on h0
PASS integrated total-derivative entry on R
PASS integrated total-derivative entry on v1
PASS H0,V1,R Jacobi
PASS H0,V1,r Jacobi
PASS H0,V1,v1 Jacobi
FAIL nonlinear V1,G,R Jacobi
NONLINEAR_JACOBI_RESIDUAL R {((0, 0), (1, 0), (1, 6)): 11*I/(2560*pi), ((0, 0), (1, 1), (1, 5)): 11*I/(640*pi), ((0, 0), (1, 2), (1, 4)): 11*I/(512*pi), ((0, 1), (1, 0), (1, 5)): 67*I/(1536*pi), ((0, 1), (1, 1), (1, 4)): 67*I/(512*pi), ((0, 1), (1, 2), (1, 3)): 67*I/(768*pi), ((0, 2), (1, 0), (1, 4)): 107*I/(768*pi), ((0, 2), (1, 1), (1, 3)): 107*I/(384*pi), ((0, 3), (1, 0), (1, 3)): 51*I/(256*pi), ((0, 3), (1, 1), (1, 2)): 51*I/(256*pi), ((0, 4), (1, 0), (1, 2)): 205*I/(1536*pi), ((0, 5), (1, 0), (1, 1)): 263*I/(7680*pi), ((0, 7),): -1079/(41287680*pi**2)}
FAIL nonlinear V1,G,L Jacobi
NONLINEAR_JACOBI_RESIDUAL L {((0, 0), (0, 6), (1, 0)): 11*I/(2560*pi), ((0, 0), (0, 5), (1, 1)): 67*I/(1536*pi), ((0, 0), (0, 4), (1, 2)): 107*I/(768*pi), ((0, 0), (0, 3), (1, 3)): 51*I/(256*pi), ((0, 0), (0, 2), (1, 4)): 205*I/(1536*pi), ((0, 1), (0, 5), (1, 0)): 11*I/(640*pi), ((0, 1), (0, 4), (1, 1)): 67*I/(512*pi), ((0, 1), (0, 3), (1, 2)): 107*I/(384*pi), ((0, 1), (0, 2), (1, 3)): 51*I/(256*pi), ((0, 2), (0, 4), (1, 0)): 11*I/(512*pi), ((0, 2), (0, 3), (1, 1)): 67*I/(768*pi), ((0, 0), (0, 1), (1, 5)): 263*I/(7680*pi), ((1, 7),): 1079/(41287680*pi**2)}
FAIL nonlinear V1,G,r Jacobi
NONLINEAR_JACOBI_RESIDUAL r {((0, 0), (0, 1), (1, 0), (1, 6)): 7/(320*pi), ((0, 0), (0, 2), (1, 0), (1, 5)): 79/(768*pi), ((0, 0), (0, 3), (1, 0), (1, 4)): 37/(192*pi), ((0, 0), (0, 4), (1, 0), (1, 3)): 23/(128*pi), ((0, 0), (0, 1), (1, 1), (1, 5)): 7/(80*pi), ((0, 0), (0, 2), (1, 1), (1, 4)): 79/(256*pi), ((0, 0), (0, 3), (1, 1), (1, 3)): 37/(96*pi), ((0, 0), (0, 1), (1, 2), (1, 4)): 7/(64*pi), ((0, 0), (0, 2), (1, 2), (1, 3)): 79/(384*pi), ((0, 1), (0, 2), (1, 0), (1, 4)): 37/(192*pi), ((0, 1), (0, 3), (1, 0), (1, 3)): 23/(64*pi), ((0, 1), (0, 2), (1, 1), (1, 3)): 37/(96*pi), ((0, 0), (0, 5), (1, 0), (1, 2)): 1/(12*pi), ((0, 0), (0, 6), (1, 0), (1, 1)): 59/(3840*pi), ((0, 0), (0, 4), (1, 1), (1, 2)): 23/(128*pi), ((0, 1), (0, 4), (1, 0), (1, 2)): 1/(4*pi), ((0, 1), (0, 5), (1, 0), (1, 1)): 59/(960*pi), ((0, 1), (0, 3), (1, 1), (1, 2)): 23/(64*pi), ((0, 2), (0, 3), (1, 0), (1, 2)): 1/(6*pi), ((0, 2), (0, 4), (1, 0), (1, 1)): 59/(768*pi), ((0, 0), (0, 8)): 59*I/(5160960*pi**2), ((0, 1), (0, 7)): 59*I/(860160*pi**2), ((0, 2), (0, 6)): 59*I/(368640*pi**2), ((0, 3), (0, 5)): 59*I/(368640*pi**2), ((1, 0), (1, 8)): -163*I/(3440640*pi**2), ((1, 2), (1, 6)): -163*I/(245760*pi**2), ((1, 3), (1, 5)): -163*I/(245760*pi**2), ((1, 1), (1, 7)): -163*I/(573440*pi**2)}
J_R7 = -1079/(41287680*pi**2)
J_R_CAR_SKEW_DEFECT_D4 = 49*I/(512*pi) * :L L_doubleprime:
PASS explicit nonlinear CAR defect coefficient
GENERATOR_LEVEL_LOCAL_JACOBI_REPAIR = EmptySet
CHECK_SUMMARY = [('free R equation', True), ('free L equation', True), ('central coefficient kappa=1/(48pi)', True), ('first-order energy Ward', True), ('first-order momentum Ward', True), ('external spatial derivative compatibility', True), ('single-stress action independent derivation energy', True), ('single-stress action independent derivation momentum', True), ('integrated self commutator has local spatial primitive', True), ('unique one-parameter energy solution', True), ('full energy residual vanishes identically', True), ('integral h2 agrees with v2', True), ('explicit local density improvement h2-v2=J2_prime', True), ('unique pressure solution', True), ('full momentum residual vanishes identically', True), ('inner-pair symmetric energy Ward', True), ('inner-pair symmetric momentum Ward', True), ('whole-composite determinant FP energy Ward', True), ('whole-composite determinant FP momentum Ward', True), ('D1v1 is nonzero (naive full-Wick Leibniz is insufficient)', True), ('integrated total-derivative entry on h0', True), ('integrated total-derivative entry on R', True), ('integrated total-derivative entry on v1', True), ('H0,V1,R Jacobi', True), ('H0,V1,r Jacobi', True), ('H0,V1,v1 Jacobi', True), ('nonlinear V1,G,R Jacobi', False), ('nonlinear V1,G,L Jacobi', False), ('nonlinear V1,G,r Jacobi', False), ('explicit nonlinear CAR defect coefficient', True)]
```
