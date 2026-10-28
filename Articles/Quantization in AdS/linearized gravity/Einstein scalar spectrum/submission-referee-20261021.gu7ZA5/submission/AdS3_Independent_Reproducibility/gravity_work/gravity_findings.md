# Independent gravitational audit and a sharp contact-deformation theorem

Investigation date: 21 October 2026. Repository snapshot:
`670abb1bb4b644a162278415ef94dde09cdeb016`.
Unless otherwise stated, paths below are relative to
`Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/`.
The original master package was also read, especially
`document_source/physics/physics.md`, §§2.1–2.2, 3.1–3.6, 4.2–4.5.

The calculations below import **no repository evaluator, coefficient cache, or
verification result**. The script `verify_gravity_and_contact.py` independently
checks the displayed identities with SymPy and mpmath. Its final JSON records
42 exact checks. This number describes algebraic checks, not 42 separate
theorems. The substantive proofs follow.

## 1. Assessment and scope

The complete resonant quartic Ward argument is valid as a formal tree-level
argument, on the stated Brown–Henneaux phase space with a regular perturbative
canonical chart and the action-derived charge identity. It does not assume the
desired scalar pair spectrum. In particular, it is stronger than setting
boundary-graviton coordinates to zero. The full-gravity and mixed contact
cancellations are consequences of the complete charge identity before taking
that compression.

I independently verified two sensitive dynamical calculations:

1. The gravitational ground-pair coefficient for every real `Delta > 1`, using
   the spatial constraint Hamiltonian and a new elementary total-derivative
   reduction of its nonpolynomial response.
2. The corrected **infinite** radial cubic sum in the lowest scalar–graviton
   mixed block, including an all-index derivation of its two Jacobi moments.
   The old value `24 sqrt(2)/175` really is only the `n=0` contribution.

I also prove a new sharp comparison theorem. Scalar contact interaction is
uniformly form-bounded by the Einstein positive residual, with the exact best
constant. This gives the sharp interval on which positivity and every
finite-particle residual kernel are both preserved, and quantitative comparison of every
ordered positive eigenvalue. The theorem is conditional on the stated Einstein
pair multiplier; it does not constitute another all-index gravitational
response calculation.

The full response bridge remains conditional on the common Hessian domain,
homogeneous data, lapse/shift reconstruction, boundary clock and vanishing
averaged endpoint. The master manuscript explicitly states these conditions
in physics §3.6, Proposition PHY-04. I have not proved their continuum existence
for every external history. Nor have I independently repeated the entire
one-body subtraction, quantum charge renormalization or all-index tensor
Casimir derivation.

## 2. Independent ground-pair evaluation

Write `d=Delta>1`, `mu=d(d-2)`, and `x=(1+r^2)^(-1/2)`. Strip the angular
factor `1/sqrt(2 pi)` from each external ground leg, so `R=x^d`. The canonical
constraint Hamiltonian is the one explicitly specified in
`Direct K4 two-particle energy shifts.md`, Conventions, lines 25–39:

\[
H_4^{\rm con}=\int_\Sigma\sqrt{\bar\sigma}\,y
\{t:t-u(\chi^2-\mu\phi^2)-4u^2\}.
\]

There is no connected boundary-exchange term for four circular external legs.
This is a statement about the four-leg coefficient, not about all contractions
of the boundary operator. The same note explains that distinction immediately
below its equation (2).

The two polarized scalar sources are

\[
\rho_{+-}=d(d-1)x^{2d},\qquad
\rho_{++}=d(d-1)x^{2d}-d^2x^{2d+2}.
\]

The scalar constraint operator in this coordinate is

\[
L=-x^2(1-x^2)\partial_x^2+2x^3\partial_x+2.
\]

The regular, fast solutions of `L u=rho/2` are

\[
u_{++}=u_{--}=-\frac{d}{4(2d+1)}x^{2d},\qquad
u_{+-}=U(x)=\frac{d}{4x}\int_0^x
\frac{t^2-t^{2d}}{1-t^2}\,dt.
\]

The source and constraint equations, not a target energy, determine these
functions. Their substitution into the differential equations is included in
the exact checks. The mixed response satisfies the useful first-order identity

\[
U'+\frac{U}{x}=\frac{d(x^2-x^{2d})}{4x(1-x^2)}.
\tag{G1}
\]

Let `B_s` denote either same-sign complementary pairing and `B_m` a mixed-sign
pairing. In the mixed pairing the momentum source is zero, so

\[
B_m=\int_0^1
\{-d^2x^{2d-1}U+\mu x^{2d-3}U-4U^2/x^3\}\,dx.
\]

Here is a direct reduction avoiding special functions and analytic continuation.
Set

\[
f(x)=\frac{1-x^4}{x^2},\qquad
g(x)=\frac d2(1-x^2)(1+x^{2d-2}).
\]

Using (G1), the integrand obeys the identity

\[
-d^2x^{2d-1}U+\mu x^{2d-3}U-4U^2/x^3
=\frac{d}{dx}(fU^2+gU)-\frac{d^2}{8}(x-x^{4d-3}).
\tag{G2}
\]

For every `d>1`, `U=O(x^2)` at zero and `U` is finite at one. Thus both endpoint
values of `fU^2+gU` vanish. Consequently

\[
B_m=-\frac{d^2(d-1)}{8(2d-1)}.
\tag{G3}
\]

For the same-sign momentum let

\[
F_a(x)=\frac{1-x^a}{a}-\frac{1-x^{a+2}}{a+2},\qquad a=2d-1>1.
\]

The two momentum responses are opposite imaginary functions,
`A_{++}=i d^2 x^2 F_a/[2(1-x^2)]`, `A_{--}=-A_{++}`. Integration by parts gives

\[
\int_0^1\frac{xF_a^2}{(1-x^2)^2}\,dx
=-\frac{F_a(0)^2}{2}+\int_0^1x^{a-1}F_a\,dx
=\frac1{2(a+1)(a+2)^2}.
\]

All remaining terms are ordinary power moments. Their sum is

\[
B_s=-\frac{d^2(2d-3)}{16(2d-1)(2d+1)}.
\tag{G4}
\]

There are two same-sign and four mixed-sign slot partitions. Restoring the
four angular normalizations gives `2 pi/(2 pi)^2`; the normalized two-boson
expectation of `b^dagger^2 b^2` is 2; and `kappa^2=16 pi G`. Their product is
`16 G`, fixing the coefficient without reference to a target energy. Hence

\[
g_{00}=16(2B_s+4B_m)
=\boxed{-4d^2+\frac{2d^2(2d+5)}{(2d-1)(2d+1)}}.
\tag{G5}
\]

This independently agrees with master physics (4.24) and the original
`two particle spectrum.md`, lines 93–107. At `d=3/2` it is `-9/2`; no singular
moment or finite-part prescription entered this calculation.

The logical scope is precise: the supplied canonical constraint Hamiltonian
and its normalizations are the physical inputs. I independently solved and
evaluated this channel; I did not rederive the complete nonlinear Darboux chart
from the Einstein–Hilbert action.

## 3. Independent all-index proof of the corrected mixed cubic sum

### 3.1 Source of the error

The older `independent audit and phi4 comparison/gravitational interface
audit.md`, §4, lines 167–175 treats only two paths with intermediate energy 8.
The value `24 sqrt(2)/175` in line 173 is not the complete cubic matrix element.
The newer `full block closure audit.md`, §7, lines 311–355 correctly states the
repair. This investigation verifies that repair rather than counting it as a
newly discovered error.

At `Delta=2`, the intermediate scalar modes have angular momentum `+2` or `-2`
and arbitrary radial label `n>=0`. Put

\[
R_0=x^2,\quad R_n=a_nx^2(1-x^2)P_n^{(1,2)}(1-2x^2),\quad
a_n=\sqrt{\frac{n+3}{n+1}},\quad \omega_n=2n+4,
\]
\[
p(x)=\frac{(1-x)(1+2x)}{x(1+x)},\qquad
\mathcal N=\frac1{\sqrt{48\pi}}.
\]

The two original density vertices are

\[
A_n=\mathcal N\int_0^1p[2\omega_nR_nR_0+(1-x^2)R'_nR'_0]dx,
\]
\[
B_n=\mathcal N\int_0^1p[-2\omega_nR_nR_0+(1-x^2)R'_nR'_0]dx.
\tag{G6}
\]

The exact intermediate energy is `8+2n`, so the OFPT denominator is `-(4+2n)`.
With both chiral paths the unnormalized quartic coefficient is

\[
C_{\rm cc}=2\sum_{n\ge0}(2n+4)A_nB_n.
\tag{G7}
\]

### 3.2 Moment proof valid for every n

The following derivation does not use the old source evaluator or fit a finite
list. Let `J_n(t)=P_n^(1,2)(1-2t)`, `p_n=J_n(1)`, and

\[
I_n(a)=\int_0^1t^{a-1}J_n(t)dt.
\]

The Jacobi equation is

\[
t(1-t)J_n''+(2-5t)J_n'+n(n+4)J_n=0.
\]

Two integrations by parts give, for `a>1`,

\[
(n+a)(n+4-a)I_n(a)+(a-2)(a-1)I_n(a-1)=2p_n.
\tag{G8}
\]

The required extra relation follows from Rodrigues' formula:

\[
\int_0^1t^{a-1}(1-t)^2J_n(t)dt
=\frac{(2-a)_n}{n!}B(a,n+3).
\tag{G9}
\]

All boundary terms in the `n` integrations vanish for `a>0`. At `a=3/2`,

\[
I_n(3/2)-2I_n(5/2)+I_n(7/2)
=\frac{8(n+1)(n+2)}{(2n+1)(2n+3)(2n+5)(2n+7)}.
\tag{G10}
\]

Equations (G8) at `a=2,3,5/2,7/2`, together with (G10), determine all moments
needed in (G6). To see this directly, set
`j_s=I_n((s+1)/2)/2`. An integration by parts in (G6), using

\[
\frac{d}{dx}\{2x(1-x^2)p\}=-12x(1-x),
\]

gives

\[
\frac{A_n}{4\mathcal N a_n}
=(n+5)(j_3-2j_4+j_5)+(2n+7)(j_4-2j_5+j_6),
\]
\[
\frac{B_n}{4\mathcal N a_n}
=(1-n)(j_3-2j_4+j_5)-(2n+1)(j_4-2j_5+j_6).
\]

Substitute (G8)–(G10). The endpoint value `p_n` cancels, and the results are

\[
\frac{A_n}{4\mathcal N a_n}
=\frac9{2(n+2)(2n+1)(2n+3)(2n+5)},
\]
\[
\frac{B_n}{4\mathcal N a_n}
=\frac{9(n+1)}{2(n+2)(n+3)(2n+3)(2n+5)(2n+7)}.
\tag{G11}
\]

The symbolic verification treats `n` and `p_n` as free variables, verifies the
elimination exactly, and separately evaluates the original derivative-containing
integrals for `n=0,...,8`. Thus (G11) has an all-index analytic proof; the finite
integrals check the translation to the physical vertex.

### 3.3 Exact summation and tail control

Substitution yields

\[
\pi C_{\rm cc}=\sum_{n=0}^\infty f(n),\qquad
f(n)=\frac{27}{(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}.
\]

Every term is positive. Its partial fraction decomposition is

\[
\begin{aligned}
f(n)={}&\frac3{64}\left(\frac1{2n+1}+\frac{63}{2n+3}
+\frac{63}{2n+5}+\frac1{2n+7}\right)-\frac3{n+2}\\
&+\frac{27}{16}\left(\frac1{(2n+5)^2}-\frac1{(2n+3)^2}\right).
\end{aligned}
\tag{G12}
\]

The squared-denominator terms telescope. The remaining odd/even harmonic sums
give

\[
\boxed{\pi C_{\rm cc}=6\log2-\frac{83}{20}}.
\tag{G13}
\]

This is an exact summation proof, not extrapolation of partial sums. For `M>=1`,
`f(n)<27/(64n^7)` for `n>=1`, so

\[
0<\sum_{n>M}f(n)<\frac9{128M^6}.
\tag{G14}
\]

The first term is `3/350`; it omits a strictly positive tail approximately
`0.000311654789`. The normalized matrix element divided by `G` is

\[
16\sqrt2(6\log2-83/20),
\]

whereas the old number is `16 sqrt(2)*(3/350)`.

### 3.4 Direct contact cancellation

I independently integrated the three explicit radial densities in the newer
audit, equations (7), (10), (12), and verified the scalar/momentum response
equations used in them. Their values, with a common factor `1/pi`, are

\[
3067/180-(74/3)\log2,\qquad
(56/3)\log2-116/9,\qquad6\log2-83/20.
\]

Their sum is zero. More strongly, their summed density is the derivative of

\[
-\frac{(y-1)(78y^5+203y^4+170y^3+47y^2-84y-18)}
{180y^5(y+1)^3},
\]

which vanishes at both endpoints. The nonzero embedding–momentum term is
essential. Setting its vacuum contraction to zero does not set this
uncontracted matrix element to zero.

This confirms the corrected lowest mixed channel, conditional on the supplied
nonlinear chart/contact formula. The all-index radial sum above is independent
of the local double-bracket evaluation used to obtain the third density.

## 4. Why the formal closure proof is not circular

The original master physics §3.3 and the newer `full block closure audit.md`,
§§2–4 supply the relevant hypotheses directly. In a regular oscillator expansion,
write a non-global charge as

\[
Q_s=\kappa^{-1}q_s+Q_{0,s}+\kappa Q_{1,s}+\cdots,
\quad q_s=c_s a_s\ \hbox{or}\ c_s a_s^\dagger,
\quad [H_0,q_s]=s q_s.
\]

The exact classical boundary-charge identity is `[H,Q_s]=s Q_s`. If `R_s` is
free-weight `s` projection, then Jacobi gives

\[
R_s[A,q_s]=[R_0A,q_s].
\]

At cubic order the projected identity therefore implies that the resonant
cubic commutes with every graviton coordinate and momentum. It is scalar-only;
scalar parity then makes it zero. Complete cubic elimination is thus derived,
not assumed in order to prove its own validity.

After eliminating the cubic and transporting the charges, the next projected
identity gives `[R_0 W^{[4]},a_s]=[R_0 W^{[4]},a_s^dagger]=0`. The **complete**
quartic is consequently scalar-only. A commutator with a linear oscillator has
no higher Moyal correction, so this also fixes the quantum four-leg coefficient
in the specified Weyl prescription. Contractions can still produce lower-degree
quantum terms.

The scalar `b^dagger^3 b` component separately intertwines the global free
representation. It annihilates its lowest one-particle state because the
three-particle energy is at least `3 Delta > Delta`; commutation with the two
raising operators then kills its entire one-particle domain. Because it has
exactly one annihilation slot, this makes every coefficient zero, including
when integer `Delta` permits energy resonance. This is a genuine algebraic
proof; agreement of finite scripts is not its premise.

The remaining bilinears cannot connect a scalar state with the gravitational
vacuum to a graviton-occupied state: scalar parity excludes mixed `a b` terms,
positive frequencies exclude two creations, and graviton number bilinears
annihilate that vacuum. Thus closure is weaker than the **full quantum**
commutant, and does not require the latter. None of this fixes the scalar
one-body counterterms or proves next-order charge identities.

## 5. New theorem: sharp uniform domination of contact by the Einstein residual

### 5.1 Definitions and assumptions

Assume the dimensionless Einstein pair multiplier `g_{n,s}` of master physics
(4.21), equivalently the three-case formula in `two particle spectrum.md`,
lines 347–351. This assumption includes the physical source/canonical matching
prescription if the result is interpreted as a gravitational spectrum.

For a fixed finite Bose-primary block of bidegree `(P,Q)`, orient the two
chiralities so that `P>=Q` (or replace `Q` below by `min(P,Q)`). Let

\[
A_E=W_E-b_N(Q)I,\qquad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1),
\]
\[
B=\sum_{i<j}\sum_{n\ge0}
\frac{\Pi_{ij}^{(n,n)}}{2d+2n-1}=8\pi\mathcal K_{\phi^4}.
\tag{G15}
\]

The baseline follows from the exact pair-Casimir sum identity, not from a
numerical compression. Define

\[
r_* =\frac{2d^2(2d+5)}{2d+1}.
\tag{G16}
\]

**Theorem.** For every `d>1`, every finite `N>=2` and every allowed primary
degree block, in the physical inner product,

\[
\boxed{0\le B\le r_*^{-1}A_E.}
\tag{G17}
\]

The constant is sharp, uniformly in all labels. Equality is attained on the
`N`-particle ground primary.

### 5.2 Proof

Only the diagonal relative channels are affected by `B`. Put

\[
h_n=d+n,\quad C_n=h_n(h_n-1),\quad\mu=d(d-2),
\]
\[
e_n=g_{n,0}-(4\mu-8C_n).
\]

Then

\[
(2h_n-1)e_n=R(C_n),\qquad
R(C)=8C-4\mu-\frac{2(C+\mu)^2}{4C-3}.
\tag{G18}
\]

At `n=0`, algebraic cancellation gives `R(C_0)=r_*`, including at `d=3/2`.
Polynomial division gives the particularly simple identity

\[
R(C)=\frac{15}2 C-5\mu-\frac38
-\frac{(4\mu+3)^2}{8(4C-3)},\qquad
R'(C)=\frac{15}2+\frac{(4\mu+3)^2}{2(4C-3)^2}>0.
\tag{G19}
\]

For `n>=1`, `C_n>=d(d+1)>2`, so these points lie on a single increasing branch.
The possible pole between `C_0` and `C_1` when `1<d<3/2` cannot be ignored;
the separate exact calculation is

\[
R(C_1)-r_*
=\frac{16d(d+1)(4d+3)}{(2d+1)(2d+3)}>0.
\tag{G20}
\]

It follows that `R(C_n)>=r_*` for every `n`, with equality only at `n=0`.
Thus each diagonal channel satisfies

\[
\frac1{2h_n-1}\le\frac{e_n}{r_*}.
\]

Every off-diagonal Einstein residual channel is nonnegative. This follows
directly from the pair formula: if `k>=l+4` it vanishes; if `k=l+2` it is the
positive spin-two fraction; if `k<l` add `8(C_l-C_k)>0` to the corresponding
smaller-label residual. Hence the operator inequality holds for each pair.
Summing positive quadratic forms proves (G17), without assuming that different
pair projectors commute.

For the constant `N`-particle primary polynomial, every pair has `k=l=0`.
Therefore

\[
B=\binom N2\frac1{2d-1},\qquad
A_E=\binom N2\frac{r_*}{2d-1}
\]

on that vector, proving sharpness.

### 5.3 Exact deformation interval and spectral bounds

Add `-G lambda phi^4/4!` to the action, in the same physical-gap prescription.
Writing `alpha=lambda/(8 pi)`, the new residual is `A_alpha=A_E+alpha B`.
For every

\[
\boxed{\alpha>-r_*=-\frac{2d^2(2d+5)}{2d+1}},
\tag{G21}
\]

the form inequalities are

\[
\boxed{
\min\{1,1+\alpha/r_*\}A_E
\le A_\alpha
\le\max\{1,1+\alpha/r_*\}A_E.}
\tag{G22}
\]

Consequences:

- Every finite-block kernel is exactly the same as the Einstein residual kernel.
- Every ordered positive eigenvalue satisfies the corresponding multiplicative
  bounds by min–max, with constants independent of `N,P,Q`.
- Any previously established asymptotic order of a positive residual eigenvalue
  survives this contact deformation, as long as `d,alpha` stay fixed in this
  strict interval. Fine splittings and degeneracies need not be preserved.
- At `alpha=-r_*`, positivity still holds but the `N`-ground primary and its
  global descendant module enter the kernel. This already proves kernel
  enlargement; it does not classify all extra critical zero modes. Here the
  extension of the residual to descendants uses the representation-theoretic
  baseline: `Q` remains the primary right label, equivalently the baseline is
  a function of the total right Casimir. It is not recomputed from a
  descendant's right oscillator degree.
- For `alpha<-r_*`, residual positivity fails already at the two-particle ground
  primary. Thus (G21) is the exact range on which positivity **and** the original
  kernel hold uniformly in all blocks. Kernel behavior in the indefinite regime
  is not classified by this argument.

For the repository's illustrative deformation `d=2, alpha=-40/3`, `r_*=72/5`
and (G22) reads

\[
\boxed{\frac2{27}A_E\le A_{-40/3}\le A_E.}
\]

This strengthens the isolated positivity example in `gravitational interface
audit.md`, §6.2, to a uniform comparison of the entire finite-particle residual
spectrum. It also explains precisely what can change: the low-layer algebra
and exceptional splittings can change even while kernels and coarse positive
eigenvalue scales remain controlled.

These are coefficient-operator statements. A negative quartic coupling is not
by itself a claim of a nonperturbatively stable field theory, and (G22) does
not establish a uniform finite-coupling quantum remainder.

## 6. Additional precise defects and qualifications in the older notes

### Negative angular momentum in the displayed free mode

`Untitled.md`, lines 28–30 sums over all integer `j` but uses signed `j` in every
radial factor of `u_nj`. This is wrong literally. A counterexample avoiding a
singular Pochhammer is `n=1,j=-1`. Since

\[
P_1^{(d-1,-1)}\left(\frac{r^2-1}{r^2+1}\right)
=\frac{d r^2}{1+r^2},
\]

that formula gives

\[
u=\sqrt{\frac d{2\pi}}r(1+r^2)^{-(d+1)/2}
e^{-i(d+3)t-i\theta}.
\]

Direct substitution into the KG equation yields

\[
\frac{(\Box-\mu)u}{u}=\frac{4(d+2)}{1+r^2}\ne0.
\]

Replace radial `j` by `|j|`, keeping signed `j` in the angular phase. The original
master physics §2.2, (2.5) already uses `a=|j|` correctly and explicitly says so.
Thus this is a defect of the older displayed formula, not a counterexample to
the correctly normalized master construction.

### Mixed normalization of gamma in the original two-particle note

`two particle spectrum.md`, lines 106–107 defines `gamma_00` as the full
order-`kappa^2` shift. Its lines 119–122 then put an additional `kappa^2/2`
in front of the matrix whose entries are these `gamma` values. Literal use
would predict an order-`kappa^4` descendant shift. The consistent matrix is
`(1/2)[[gamma00+gamma10,gamma00-gamma10], ...]`, or alternatively every `gamma`
inside the printed matrix must be redefined as a coefficient of `kappa^2`.
Lines 128–129 also switch between an actual Hamiltonian matrix element and its
coefficient. The newer master keeps dimensionless `g` and `G g` distinct.

### Remainder strength

`Direct K4 two-particle energy shifts.md`, line 52 and the older two-particle
note's final energies write `O(G^2)`. The later master consistently writes
`o(G)` at fixed labels; see physics (4.23), and the explicit qualification in
physics §2.1. The newer `full block closure audit.md`, §13, correctly retains
additional quantum Ward hypotheses for ruling out `kappa^3` splitting. The
stronger remainder has not been established by the first-order calculations
alone. This is an unsupported strength in those older formulas, not a proved
nonzero `G^(3/2)` correction in the actual theory.

## 7. Useful next questions

1. **Critical contact-deformation kernel.** At `alpha=-r_*`, the ground pair
   channel joins the old zero residual channels. In a chiral block, only pair
   degree two remains penalized at the low end. The resulting constraints are
   a concrete hollow-core projector problem; determine the new Hilbert series
   and whether the critical kernel is generated by a finite module over the
   symmetric translation-invariant ring.
2. **Quantitative interpolation from contact to gravity.** The sharp relative
   form bound controls all residual eigenvalues uniformly. Combine it with
   exact contact rank formulas and with the gravitational collision-ideal
   classification to isolate which changes arise from channel support and
   which from coefficient growth. An analogous inequality for finite-band
   derivative contact interactions may distinguish several universality classes.
3. **A direct all-index canonical Einstein formula.** The circular finite-sum
   construction is genuinely independent of the response bridge. Prove its
   reconstruction equals (4.21) by an exact recurrence of the finite sums, rather
   than another finite coefficient comparison. This would remove the common
   response-domain conditions from this particular route to the coefficient.
4. **Next-order scalar-branch remainder.** Establish the projected degree-three
   quantum Ward defect and the common commutant after regulator removal, not
   just the classical quartic identity. That is the concrete missing input for
   upgrading a fixed first-order coefficient statement to the proposed
   `O(G^2)` remainder in the fully degenerate quantum block.
