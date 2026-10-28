# 10. Established universality classes and counterexamples

The results above depend on several different kinds of input. Global representation theory fixes which pair channels exist. Strict support and signs fix a common kernel. The growth of channel coefficients fixes the principal symbol. Particular low channel values determine the stable low algebra and its effective gaps. These statements must be separated when varying the interaction.

All deformations in this chapter are abstract selfadjoint pair operators on the same unitary scalar representation. They define legitimate finite covariant spectral problems. No claim is made that every such sequence is the effective pair operator of a local bulk Lagrangian, or that it obeys the gravitational constraint and boundary-charge identities used in the physical reduction.

## 10.1 Which input controls which conclusion

| Structural input | Conclusion that follows | Additional information still required |
|---|---|---|
| Multiplicity-free global two-particle decomposition | A covariant pair operator is scalar on each allowed pair representation | The numerical pair coefficients |
| Bosonic statistics | Diagonal particle symmetrization, including channels with each chiral factor antisymmetric | Neither separate chiral Bose projection nor positivity follows |
| A number-preserving two-body operator with a unique zero excitation and nonnegative conserved degrees | The stable affine pencil of ST-01 | Covariance to restrict to primaries |
| The same exact positive bad-channel support | The same collision kernel, Hilbert series and rank | Positive eigenvalues and multiplicities can change |
| The same quadratic pair part and a subquadratic remainder | The same Grassmannian principal spectral law | Exact kernel and microscopic scales need support information |
| Common flags and polynomially bounded positive channel weights | Exponential upper bounds from strict zero chambers | Positive spectral density additionally uses the exact kernel count |
| Two-sided polynomial bounds on the nonzero weights | Uniform comparison of all ordered logarithmic rates | Existence of a limiting rate distribution does not follow |
| Bounded selfadjoint pair tails tending to zero at fixed right budget | The fixed-budget cluster algebra and spectral recursion of Chapter 7 | Numerical thresholds, effective cutoffs and Schatten estimates |
| Nonnegative chiral affine defects with a specified first positive channel | The stable lowest leading algebra and a global affine lower bound | The first gap coefficient uses further low channels |
| Einstein's exact coefficients | Its two-generator low algebra, positive Gegenbauer coefficient and explicit corrections | They are not consequences of support alone |

A quartic number-preserving operator has pair-sum form after normal ordering. That observation does not prove the Einstein scalar branch closes: in the gravitational calculation the cubic exchange and boundary-charge constraints were needed before the reduced operator acquired this form. This chapter starts after that physical interface. [HR, §7; HP, App. F; A3, App. D]

## 10.2 A common-support class with the same kernel

Fix $d>1$ and $C_k=(d+k)(d+k-1)$. On allowed channels $k+\ell$ even, consider

\[
w_{k\ell}=u-c\min(C_k,C_\ell)+\epsilon_{|k-\ell|}(\min(k,\ell)),
\qquad c>0,
\]

where $\epsilon_0(n)>0$, $\epsilon_2(n)>0$ and
$\epsilon_j(n)=0$ for even $j\geq4$. The sequence is symmetric under $k\leftrightarrow\ell$. The Einstein coefficients belong to this class with $c=8$ and their particular positive corrections.

**Theorem UN-01 (kernel and principal-symbol universality).** The baseline

\[
b_N^{(u,c)}(Q)=
\binom N2[u-cd(d-1)]-cQ(Q+Nd-1)
\]

gives

\[
W_N=b_N^{(u,c)}(Q)I+A_N^{(u,c)},\qquad A_N^{(u,c)}\geq0.
\]

Its oriented pair residual is

\[
d_{k\ell}=c\big(C_\ell-\min(C_k,C_\ell)\big)
+\epsilon_{|k-\ell|}(\min(k,\ell)).
\]

Consequently

\[
d_{k\ell}>0\iff k\leq\ell+2,\qquad
d_{k\ell}=0\iff k\geq\ell+4.
\]

The exact collision kernel, its complete Hilbert series and every finite physical rank are therefore identical to those of Einstein's residual operator. No growth condition on the positive weights is needed for this kernel assertion.

If, in addition,

\[
\max_{j=0,2}\sup_{0\leq n\leq L}\epsilon_j(n)=o(L^2),
\]

then in the balanced scaling the principal symbols are

\[
-c\sum_e\min(X_e,r^2Y_e),\qquad
c\sum_e(r^2Y_e-X_e)_+,
\]

respectively. Thus the same Grassmannian law holds with the coefficient $8$ replaced by $c$.

**Proof.** Summing the right pair Casimirs gives the displayed baseline by the total-Casimir identity. Each residual is positive, and its zero channels are precisely the same as before. The kernel of a sum of positive operators is the intersection of their kernels, so the full collision theorem of Chapter 5 applies without changing a coefficient in its Hilbert series. For the symbol, the remainder norm is bounded by a fixed number of pairs times the displayed supremum, hence is $o(P^2)$ when $Q/P$ has a fixed positive limit. The harmonic proof of SC-01 depends only on the minimum Casimir term. [HP, App. F, §§3.1–3.2; A3, App. D, §1]

Strict positivity on the entire listed support is a transparent sufficient hypothesis. It is not claimed necessary for equality of a particular finite kernel: some constraints in a finite intersection may be redundant. Also, equality of kernels does not determine a symbol; multiplying the residual by two preserves every kernel and changes its principal symbol.

The exponential argument survives whenever the nonzero residual weights have a polynomial upper bound, because the metric transfer and coherent tails depend on the flags. To recover the exact subexponential counting law one also needs the principal weak law and the algebraic kernel fraction. To compare all ordered logarithmic rates, a polynomial lower bound is needed as well. Weights that are themselves exponentially small fall outside that comparison hypothesis, even when their support is unchanged.

## 10.3 Cluster universality and its analytic boundary

At fixed right degree, the proof in Chapter 7 uses bounded selfadjoint internal pair operators whose eigenvalue tails tend to zero after the baseline is removed, global covariance and the actual Bose projection. These are operator-algebra hypotheses. Positivity of every pair coefficient, a quadratic minimum symbol and the stable cusp calculation are not needed for that recursion. Finite pair support is a stronger special case, and it improves the termination bounds for derived accumulation sets.

The relevant consequences can therefore survive coefficient changes while the numerical threshold sets change. A recursion over clusters is not a claim that thresholds are universally equal to the Einstein values. In particular, a proof of compactness by a $c_0$ tail does not give any finite Schatten class.

**Example UN-02 (compact but outside every finite Schatten class).** On a chiral pair space, put $v_k=1/\log(k+2)$ for the even relative channels. This is a bounded selfadjoint diagonal operator with eigenvalues tending to zero. At resolvent parameter two, its connected resolvent difference has diagonal entries

\[
\frac{1}{2-v_k}-\frac12=\frac{v_k}{2(2-v_k)}
\geq\frac{v_k}{4}.
\]

For every finite $s>0$, the sum of their $s$th powers diverges, since
$\sum_{k\ {\rm even}}\log(k+2)^{-s}=\infty$. Thus compactness and the general cluster structure alone cannot justify a regularized determinant of any finite Schatten order. This counterexample does not contradict the separate four-particle Einstein estimates or exclude a determinant construction with extra decay information. [HP, App. F, §3.6; A3, App. D]

## 10.4 The first positive affine defect determines the stable low algebra

Consider a real chiral pair sequence $\gamma_k$ on even relative degrees. Define the affine interpolant through channels zero and two by

\[
s=\frac{\gamma_2-\gamma_0}{2(2d+1)},\qquad
L(C)=\gamma_0+s(C-C_0),\qquad
r_k=\gamma_k-L(C_k).
\]

Thus $r_0=r_2=0$. Here $s$ is an affine Casimir slope; it is unrelated to the physical pair spin notation $|k-\ell|$ used earlier.

**Theorem UN-03 (first positive defect).** Suppose $r_k\geq0$ in every even channel and the first positive defect is at
$k_*=2m+2$, $m\geq1$. Then

\[
g_*(N,P)=\gamma_0\binom N2+sP(Nd+P-1)
\]

is the exact global minimum on every stable chiral block $N\geq P\geq2$. With
$K=\mathscr A-sd\,\mathcal E$,

\[
\ker K=\mathbb C[c_2,c_3,\ldots,c_{2m+1}],
\]

zero is semisimple on each degree, all other leading gaps are positive, and
$q=\lim_{\tau\to\infty}e^{-\tau K}$ is a multiplicative retraction onto this algebra.

**Proof.** The pair sum of $L(C)$ is the scalar $g_*$ by the global Casimir identity. The remainder is positive. The projected elementary degree-$P$ seed sees only relative channels zero and two and is nonzero in the stable range; it attains $g_*$. For the leading derivation,

\[
\kappa_p:=\sigma_p-sdp
=2\sum_{\substack{k\leq p\\k\ {\rm even}}}\alpha_{p,k}r_k.
\]

All weights are positive. Thus $\kappa_p=0$ for $p<k_*$ and is strictly positive for $p\geq k_*$. For $p<k_*$ the full operator $Kc_p$ vanishes, not only its diagonal coefficient: the degree-$p$ pair action has no access to a nonzero defect, so the full block agrees with the affine-Casimir action. The triangular derivation now has exactly as many zero diagonal entries as low-generator monomials, and all such monomials are actual zero vectors. This proves the kernel and semisimplicity. The algebra-retraction proof is then the same finite-degree exponential argument as in ST-05. [HP, App. F, §5; A3, App. D, §2]

If every defect vanishes, every chiral primary block is scalar. More generally, at any particle number for which the block exists, if $P<k_*$ the entire degree-$P$ chiral block is scalar, because no accessible pair channel has a defect.

The exact character $\mathcal L(c_p)=(1-p)t^p$ persists for arbitrary pair coefficients, even without positivity; positivity is used to identify its scalar eigenvalue as a global minimum. If $m\geq2$, the quotient of the larger low algebra still has image $\mathbb C[t^2,t^3]$. Besides $J=y^2+4x^3$, its ideal has the generators

\[
c_{2a}-(1-2a)(-x)^a,\qquad
c_{2a+3}-(a+1)(-x)^a y
\]

for those higher low generators that occur. Eliminating them reduces to the same cusp relation. A persistent cusp quotient therefore does not imply that the entire low algebra has only two generators.

## 10.5 The general two-generator Gegenbauer coefficient

Assume the setting of UN-03 with $r_4=v>0$ and write $r_6=w\geq0$. Higher nonnegative defects may be arbitrary. The leading low algebra is $\mathbb C[x,y]$. Define

\[
D_*=15(2d+7)(d+5)v+(2d+3)(d+2)w.
\]

**Theorem UN-04 (universal first low operator under explicit hypotheses).** The first low operator is

\[
B_{\rm low}
=sE(E-1)+\frac{\varepsilon(d;v,w)}2J\partial_y^2,
\]

\[
\varepsilon(d;v,w)=
\frac{27vw(d+3)(d+4)(2d+9)}
{2(2d+5)\,[15(2d+7)(d+5)v+(2d+3)(d+2)w]}.
\]

Only the defects in channels four and six enter this coefficient. If $w>0$, it is positive, the eigenvectors are the $x^aF_b$ of Chapter 9 and the fixed-weight first low spectrum is simple. Hence the isolated low branches have convergent integer expansions in $1/N$. If $w=0$, the coefficient is exactly zero. The first-layer simplicity argument then fails; this alone neither establishes half-integer terms nor classifies the next nontrivial layer.

**Proof.** The retracted operator has order at most two because the original $\mathscr B$ does and $q$ is a low-algebra module map. After subtracting $sE(E-1)$, the exact character forces its image into $(J)$. In a polynomial algebra, induction on monomial inputs implies that every differential coefficient belongs to the same ideal. Weighted degree zero and order at most two then leave only a multiple of $J\partial_y^2$. Thus six exact jets determine the full operator in every weight. They must be computed only through total degree six, so no higher pair channel can enter.

One explicit derivation uses Casimir interpolation to construct the physical pair projectors, followed by literal unordered occupation counting. It gives

\[
\kappa_4=\frac{d(d+1)v}{2(2d+3)(2d+5)},\qquad
\kappa_5=\frac{5d(d+1)v}{4(2d+3)(2d+5)},
\]

\[
\kappa_6=
\frac{d(d+1)D_*}{4(2d+3)(2d+5)(2d+7)(2d+9)},
\]

and

\[
q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
\]

\[
\begin{aligned}
q(c_6)=-\frac5{D_*}\big[
&3(2d+7)v\{3(d-3)x^3+2(d+2)y^2\}\\
&-(2d+3)(d+2)w\{9x^3+2y^2\}\big].
\end{aligned}
\]

For the affine-subtracted pair operator, its retracted constant occupation action vanishes on $1,x,y,x^2,xy$ and sends $y^2$ to $\varepsilon J$. Appendix UN gives the finite projector recurrence and the exact determining identity, including its independent symbolic verification over $\mathbb Q(d,v,w)$. [HP, App. F, §7; A3, App. D, §3]

For Einstein,

\[
v=\frac{2d(d+4)}{2d-1},\qquad
w=\frac{4d(2d+5)(2d^2+9d+3)}
{(2d-1)(2d+1)(2d+3)}.
\]

Substitution gives exactly the $\varepsilon$ of ST-06. Thus the operator form has a broader algebraic origin, while its numerical coefficient uses the actual pair interaction. As a useful boundary example, $r_4=1$ and all other defects zero preserve the two-generator leading kernel but give $\varepsilon=0$.

## 10.6 Same exact kernel and same symbol, but four low generators

Return to the common-support class of UN-01 and set
$e_0=\epsilon_0(0)>0$, $e_2=\epsilon_2(0)>0$,
$u_0=u-cC_0$. Its chiral coefficients are
$\gamma_0=u_0+e_0$, $\gamma_2=u_0+e_2$ and
$\gamma_k=u_0$ for even $k\geq4$. Their affine defects satisfy

\[
r_4=\frac{(2d+5)e_0-(4d+6)e_2}{2d+1},
\]

\[
r_k=r_4+\frac{e_0-e_2}{2(2d+1)}(C_k-C_4)
\qquad(k\geq4,\ k\ {\rm even}).
\]

The ratio of the first two positive support coefficients therefore selects different low algebras:

| Ratio $e_2/e_0$ | Affine defect behavior | Consequence |
|---|---|---|
| Below $(2d+5)/(4d+6)$ | $r_4>0$ and all later defects positive | Two-generator leading algebra and positive first Gegenbauer gap |
| Equal to $(2d+5)/(4d+6)$ | $r_4=0$, $r_6>0$ | Four-generator leading algebra $\mathbb C[c_2,c_3,c_4,c_5]$ |
| Above $(2d+5)/(4d+6)$ | $r_4<0$ | The nonnegative-affine-defect theorem does not apply; the elementary branch is no longer the smallest leading slope |

The oriented residual in UN-01 remains positive in all three rows; it is a different subtraction from the chiral affine interpolant.

**Example UN-05 (exact same-support counterexample).** At $d=2$, choose

\[
w_{k\ell}=16-8\min(C_k,C_\ell)
+\mathbf1_{\{|k-\ell|=0\}}
+\frac9{14}\mathbf1_{\{|k-\ell|=2\}}.
\]

This has exactly the Einstein bad-channel support, exactly the same kernel and rank in every physical block, and the same quadratic Grassmannian symbol. Its bounded corrections also satisfy the soft and fixed-budget cluster hypotheses. However its chiral sequence is
$\gamma_0=1$, $\gamma_2=9/14$, $\gamma_k=0$ for even $k\geq4$, so

\[
s=-\frac1{28},\qquad r_4=0,\qquad r_6=\frac{13}{14}.
\]

Its lowest leading algebra has four generators. More strongly, the full two-dimensional stable $(P,Q)=(4,0)$ block is exactly

\[
W_N(4,0)=
\left[\binom N2-\frac{2N}{7}-\frac37\right]I_2,
\qquad N\geq4.
\]

Every accessible even pair degree is at most four and has zero affine defect, which proves the identity. This concrete deformation disproves the claim that support, principal symbol or Bose covariance alone force Einstein's two-generator low phase. [HP, App. F, §8; A3, App. D, §5]

## 10.7 Nonnegative defects are sufficient, not necessary, for the leading kernel

The first-positive-defect theorem has a useful converse boundary. Its nonnegativity hypothesis ensures both a global finite-$N$ lower bound and positivity of all higher leading gaps. The latter conclusion can survive some signed defects.

**Example UN-06 (signed-defect counterexample to necessity).** Set $d=2$, subtract the affine part, and choose

\[
r_4=1,\qquad r_6=-\frac1{100},\qquad
r_k=0\quad\text{for every other even }k.
\]

For every integer $p\geq6$, the endpoint weights obey the exact identity

\[
\frac{\alpha_{p,6}}{\alpha_{p,4}}
=\frac{28(p-5)(p-4)}{11(p+8)(p+9)}
<\frac{28}{11}.
\]

Thus

\[
\kappa_p=2\alpha_{p,4}
\left(1-\frac1{100}\frac{\alpha_{p,6}}{\alpha_{p,4}}\right)>0.
\]

The degrees four and five also have positive gap, while $Kc_2=Kc_3=0$. Triangularity and the same geometric-versus-algebraic multiplicity argument prove, in every weight,

\[
\ker K=\mathbb C[c_2,c_3]
\]

with a semisimple zero and an algebra retraction. Consequently nonnegative pair defects are not necessary for that leading-kernel conclusion.

The example lies outside the common positive-support class of UN-01 and does not retain its global finite-$N$ affine-minimum guarantee. Indeed the affine-subtracted pair operator itself has a negative channel. The generic first-low formula remains a rational identity when its denominators are nonzero; here $D_*>0$ and $\varepsilon<0$. This makes explicit why positivity of the leading high-generator gaps and positivity of the first low splitting are separate conditions. [A3, App. D, §6]

## 10.8 The reach of generic normal forms

The binary-valuation argument in ST-04 extends to rational pair families with the following specific pole structure: at $d=1/2$ the zero channel has a nonzero simple residue $R$, every other channel entering a fixed degree is regular, and the endpoint weights are those of the same unitary representation. Then

\[
\operatorname*{Res}_{2d-1}\sigma_{pq}
=R(2f_pf_q-1).
\]

In a proposed splitting relation the common nonzero factor $R$ cancels, and the dyadic argument again proves that the homological divisor is not identically zero. For coefficients rational over $\mathbb Q(d)$, its exceptional physical roots are algebraic; a finite cutoff excludes only finitely many of them. This extension requires the pole hypothesis. Covariance by itself does not supply it, and it does not establish normal-form integrability of the full pencil.

The resulting universality hierarchy is precise. Exact support controls the collision kernel. Quadratic growth controls the principal law. Polynomial metric and weight distortion controls logarithmic comparison. The first nonzero affine defect controls a sufficient low-algebra class, and channels four and six determine its first two-generator splitting. Exact Einstein coefficients select particular values within those structures. None of these mathematical deformation statements completes the independent problem of classifying physically realizable bulk interactions.
