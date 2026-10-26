# Which regulators now have the same gravitational coefficient?

## Definitions and scope

The fixed input is commit aa128cb903e0f3750a16a69487d64013d38667b1.
Its completion theorem constructs the first gravitational
stress–scalar–scalar coefficient from the actual common switched
vertex. The stress insertion uses the explicitly specified causal TT
history observable. The uncombined bare physical-mode retarded
propagator is a different object.

The present note identifies three precise constructions with that
coefficient and adds a **genuine common-action past-Abel** realization.
It does not infer equivalence of arbitrary frequency substitutions.

| Operation | Finite-regulator definition | Limit established here or inherited |
|---|---|---|
| Common radial cutoff | One factor \(\beta(u/B)\) in all vertex terms | Canonical causal limit; arbitrary joint removal by the new all-strata theorem |
| Genuine spacetime switch | One action profile \(\chi(X/R)\), including its derivatives in the scalar source and its complete output TT projection | Strong \(\mathcal S'\) limit of the completion theorem |
| External ordered tube | Multiply the already stationary spectral coefficient by \(e^{-d_1p^0-d_2q^0}\) | Strong joint radial/tube boundary limit |
| Invariant Gram cutoff | Apply the same \(\mathbf1_{\{D>\delta\}}\) to the separated timelike homogeneous and particular terms | Their sum converges to the actual combined coefficient |
| Genuine common-action past Abel | Use \(e^{\epsilon X^0}\) on every retarded vertex domain, with the corresponding output factors and switch-derivative vertices | Local distributional limit; a specified tempered completion converges strongly |
| Denominator-only frequency Abel | Shift only selected retarded frequencies while retaining the other stationary factors | A separate family requiring its own theorem |

The radial cutoff and genuine switch act on the vertex. The tube acts
on external spectral variables. The Gram cutoff acts on the already
stationary momentum tensor. Their finite-regulator values are different.

## 1. Extension of the genuine-switch theorem to Schwartz profiles

The existing theorem is stated for real compact smooth plateau profiles.
Its proof establishes the stronger statement needed below.

**Lemma 1.** Let \(\chi\in\mathcal S(\mathbb R^4)\) be real with
\(\chi(0)=1\). With the same canonical radial-cutoff limit,

\[
\widehat\chi_R(\Omega)G(p,q,\Omega)
\longrightarrow
(2\pi)^4\delta^4(\Omega)W(p,q)
\quad\hbox{strongly in }\mathcal S'(\mathbb R^{12}).
\tag{1}
\]

The convergence is uniform on bounded sets of such profiles and bounded
Schwartz test sets. A general value \(\chi(0)\) multiplies the right side
by that value.

### Proof and the exact role of the profile

At fixed \(R\), multiplication of the canonical tempered \(G\) by
\(\widehat\chi_R\) is defined because the latter is Schwartz and all
its derivatives have finite polynomial multiplier bounds.
It is also the limit of the same radial-cutoff action integral:
the full-output causal proof pairs it with a Schwartz test.

Each regional estimate in the completion proof uses a finite collection
of the following quantities:

\[
\sup_V(1+|V|)^m|\partial^\alpha\widehat\chi(V)|,\qquad
\int (1+|V|)^m|\partial^\alpha\widehat\chi(V)|\,d^4V.
\tag{2}
\]

The hard-region continuity estimate pairs the limiting constant with
\[
\int {d^4V\over(2\pi)^4}\widehat\chi(V)=\chi(0).
\tag{3}
\]
The massive core, all-null core, soft-endpoint cores and common-origin
core require bounded finite seminorms of the rescaled profile. Their
remote-injection estimates use arbitrarily high but finite powers in
(2). The annular summations and the global homogeneous dyadic upgrade
use exactly these same bounds.

No step in those trace estimates uses a vanishing derivative of
\(\chi\) at the origin, or compact support of \(\chi\) in position
space. The plateau is a convenient physical switch convention, while
(3) is the normalization actually used by the proof.
Repeating the estimates with (2) gives (1). In particular this is a
direct profile-seminorm argument, not an attempted approximation of a
nonflat profile by profiles whose entire Taylor jet is flat.
\(\square\)

The radial plateau hypothesis remains separate. It is needed for the
arbitrary-power radial-tail rate; it is not changed by Lemma 1.

The same profile extension applies to the new arbitrary-joint theorem.
Its massive annuli, soft band/leakage estimates and normalized null
cover use only finite quantities in (2), uniformly in the radial
cutoff. The quantitative fast linear-path estimate additionally uses
compact position support; the unrestricted dominated-gluing theorem
has no such extra use of support.

### 1.1 Exact dependencies and the rate that changes

The finite-seminorm input can be located precisely in the fixed
commit:

| Region | Source of the required bound |
|---|---|
| Massive zero transfer | half_bps_stress_massive_trace.md §§4–5: scaled-core finite order and the logarithmic continuity modulus; §6: anisotropic profile contraction and its separate tail |
| Hard all-null | half_bps_stress_partial_injection.md §4: parameter-valued finite order; §7, (18): uniform core; §8: normalized annuli, finite profile-derivative loss and Schwartz tail |
| Soft stress | half_bps_stress_soft_p_trace.md §2: order at most six; §§5–7: scaled core, near shells and the explicit \(10-N\) remote-shell budget |
| Soft right scalar | half_bps_stress_soft_q_trace.md §2: no soft-variable derivatives; §§4–6: core, annuli and \(4+k-N\) profile tail |
| Common origin | half_bps_stress_causal_corner.md §§3,5–6: global finite order, uniform core and summable external shells |
| Bounded-radius transfer | half_bps_stress_global_transfer.md §5: the zeroth profile moment, Taylor estimate of the smooth remainder, and uniformly bounded absolute polynomial moments |
| Global Schwartz upgrade | half_bps_stress_global_transfer.md §6: homogeneous dyadic summation with one finite seminorm |

There is one quantitative change. For a plateau profile, every
nonzero Taylor moment of \(\widehat\chi\) vanishes, so the smooth
explicit remainder kernels in the global-transfer theorem have
arbitrarily rapid \(R^{-M}\) errors. A general Schwartz profile
with only \(\chi(0)=1\) has finite, possibly nonzero moments.
For those smooth kernels the needed bound is instead
\[
\left|\int {d^4V\over(2\pi)^4}\widehat\chi(V)
 [F(V/R)-F(0)]\right|
\le {C\over R}\int (1+|V|)^{m+1}
 |\widehat\chi(V)|\,d^4V .
\tag{3a}
\]
It still tends to zero and remains uniform in bounded external
radii. The singular-region estimates use the logarithmic modulus
and the same weighted moments. Thus the extension preserves the
limit, without preserving every plateau-specific rapid rate.

On a fixed compact external position set \(K\),
\[
\|\chi(\cdot/R)-1\|_{C^k(K)}\le C_{K,k}/R
\tag{3b}
\]
for every fixed \(k\). Source-local contact coefficients of fixed
finite order therefore have the same limit. Switch-derivative
terms and their retarded projections already belong to the
complete \(G\); their convergence is controlled by its regional
finite-seminorm estimates, not by discarding them on the basis
of (3b).

## 2. A genuine common-past Abel construction

Choose a real smooth function \(h\) such that
\[
h(t)=e^t\quad(t\le1),\qquad h(t)=0\quad(t\ge2),
\]
with a smooth interpolation. Then \(h\in\mathcal S(\mathbb R)\).
Choose \(\rho\in C_c^\infty(\mathbb R^3)\), equal to one on
\(|\mathbf x|\le1\), and define
\[
\chi_{\rm A}(t,\mathbf x)
=h(t)\,
\rho\!\left({\mathbf x\over4(1+\sqrt{1+t^2})}\right).
\tag{4}
\]
This is a Schwartz function of all four variables and
\(\chi_{\rm A}(0)=1\).

Fix a compact external position test with all insertion times and
positions bounded by \(L\). For each of the three retarded insertions,
the vertex \(Y\) lies in the causal past of its output \(X_i\).
The radial separation only strengthens the four-dimensional inequality
\[
Y^0\le X_i^0,\qquad
|\mathbf Y-\mathbf X_i|\le X_i^0-Y^0.
\tag{5}
\]
For \(R\ge2L\), it follows that
\[
Y^0/R\le\tfrac12,\qquad
|\mathbf Y|/R\le1-Y^0/R.
\tag{6}
\]
Throughout this causal domain the spatial factor in (4) is exactly
one, and \(h(Y^0/R)=e^{Y^0/R}\). Its spatial derivatives vanish there.
Hence
\[
\chi_{\rm A}(Y/R)=e^{\epsilon Y^0},
\qquad \epsilon=R^{-1},
\tag{7}
\]
on the entire actual vertex domain relevant to the compact test.
The same statement holds in the presence of the common radial cutoff
and the prescribed external radial layers.

Thus the action with profile (4) is exactly a **common-past exponential
switch** on every fixed compact external measurement domain, for all
sufficiently small \(\epsilon\).
It includes
\(\partial_0\chi=\epsilon\chi\) in the scalar derivative vertex.
The metric source is projected only after multiplication by the
complete switched source.

**Theorem 2.** The genuine common-past Abel coefficient converges
locally in external-position distributions to the same Wightman
coefficient \(W\), in the prescribed iterated order or along any
joint path \(B\to\infty,\epsilon\downarrow0\).
The global tempered completion supplied by (4) converges strongly
in Schwartz distributions.

**Proof.** The exact local identification is (5)–(7), applied to each
retarded insertion before summing. Lemma 1 applies to the explicit
Schwartz profile (4) and proves the strong limit of its tempered
completion. Fourier transformation preserves strong
\(\mathcal S'\) convergence, hence implies the local external-position
statement. The unrestricted joint version uses the just stated
Schwartz-profile extension of the new joint-limit theorem.
\(\square\)

The literal profile \(e^{\epsilon t}\) grows towards future infinity.
Its uncompleted finite-\(\epsilon\) correlator need not itself be
tempered globally. The theorem makes a local statement for that literal
profile and a strong global statement for the specified completion.
It does not conceal the distinction.

### 2.1 What the exact frequency formula contains

For a retarded source with free time dependence \(e^{-i\omega t'}\),
\[
\int_{-\infty}^t dt'\,
R_{\rm ret}(t-t')e^{\epsilon t'}e^{-i\omega t'}
=e^{\epsilon t}e^{-i\omega t}
\widehat R_{\rm ret}(\omega+i\epsilon).
\tag{8}
\]
The three insertions therefore have their respective factors
\(e^{\epsilon t_i}\). The derivative scalar source contains the
complex output derivative associated with
\(\partial(e^{\epsilon t'}\cdot)\). The unrestricted stress output
uses the same analytic causal TT projector as its shifted radial
inverse.

Equation (8), the derivative vertex and that projected source together
specify the frequency representation of Theorem 2.
Replacing only a denominator while dropping these other factors
defines a different finite-\(\epsilon\) family.
Theorem 2 makes no assertion that this separately modified family has
the same global distributional limit.

## 3. The invariant Gram sum is now identified with the actual limit

Let \(W_{z,w}\) be the complete stationary coefficient established by
the genuine-switch theorem. In either timelike transfer sector, write
the separated expressions as
\[
W_{z,w}=H_{z,w}+P_{z,w},
\qquad
P_{z,w}=-H_{z,w}+V_{z,w},
\tag{9}
\]
where \(V_{z,w}\) is the combined locally integrable Volterra tensor.
The singular \(H\) is the differentiated homogeneous tensor of the
Gram report.

Define the two regulated pieces with exactly the same invariant cutoff:
\[
H_\delta=\mathbf1_{\{D>\delta\}}H,\qquad
P_\delta=\mathbf1_{\{D>\delta\}}P.
\tag{10}
\]
Before taking a limit,
\[
H_\delta+P_\delta
=\mathbf1_{\{D>\delta\}}V.
\tag{11}
\]
The individual finite parts exist by the invariant-cutoff theorem.
Their sum is therefore the locally integrable combined tensor,
including all null and soft endpoints.

This statement now has a physical identification that the earlier
Gram-only report intentionally left open: the completion theorem
has independently shown that \(V\), with its complete boundary data,
is the limit of the prescribed genuine switched action coefficient.
That conclusion uses the actual trace and global convergence theorem,
not covariance or a choice of finite part alone.

### 3.1 A useful quantitative joint estimate

For bounded external radii, the timelike combined tensor has a
uniform polynomial bound times \(z^6+w^6\). Also, on a bounded
energy box,
\[
\int {d^4p\,d^4q\over D^2}\le C E_{\max}^4.
\tag{12}
\]
Since
\(\mathbf1_{\{D\le\delta\}}\le\delta^2D^{-2}\),
a dyadic energy sum gives a finite Schwartz seminorm \(P\) for which
\[
\left|
\left\langle H_\delta+P_\delta-W^{\rm time}_{z,w},\psi\right\rangle
\right|
\le C(z^6+w^6)\delta^2P(\psi).
\tag{13}
\]
This estimate is for the sum. The separate finite-part estimates
retain their stated \(\delta^2(1+|\log\delta|)\) form and need
test derivatives.

If a common Gram cutoff is also applied to the spacelike tensor,
its majorant is a polynomial divided by \(D\).
The inequality
\(\mathbf1_{\{D\le\delta\}}D^{-1}\le\delta D^{-2}\)
then gives an \(O(\delta)\) error instead.

## 4. External tubes and the common limit

For the already stationary positive-energy coefficient,
\[
W^{d_1,d_2}_{z,w}(p,q)
=e^{-d_1p^0-d_2q^0}W_{z,w}(p,q),
\qquad d_1,d_2>0.
\tag{14}
\]
The established polynomial/Gram majorant gives
\[
|\langle W^{d_1,d_2}_{z,w}-W_{0,0},\psi\rangle|
\le C\big[\max(z,w)^2+d_1+d_2\big]P(\psi).
\tag{15}
\]
The two tube gaps and the two external radii may tend to zero
independently.

Combining (13) and (15), the common Gram sum, the external-tube
boundary value, the genuine switched limit and the common-action
past-Abel limit all have the same **specified complete coefficient**.
The first two constructions can also be removed jointly with the
external radial limits, using the displayed uniform bounds.

No finite-regulator equality is implied: the tube does not change
any radial mass or projector, while (8) changes a retarded frequency
and retains an output-time factor. The physical dimensions of a tube
gap and an Abel frequency parameter are inverse.

## 5. Remaining distinctions

1. Arbitrary joint \(B(R)\) removal is a theorem for the complete
   causal TT coefficient with a common radial cutoff. Additional
   full Brown–York Ward-force terms retain their separately stated
   order of regulator removal.
2. The denominator-only Abel family in the earlier timelike
   limiting-absorption formulas remains a separate analytic object.
   Its full tensor numerator, shifted mass routing and all-insertion
   combination must be specified before a theorem can be formulated.
3. The individual Gram homogeneous finite parts are not identified
   with individual regulated vacuum diagrams. The identified object
   is their common-cutoff sum.
4. These statements concern the specified first gravitational
   coefficient. They do not create an interacting Hilbert-space
   operator theorem or equate the causal-history stress insertion
   with the bare physical-mode commutator.

**Verified:** the Schwartz-profile extension by the actual
profile-seminorm proof; the explicit common-past Abel realization;
the common Gram-sum identification and estimates; the inherited
ordered-tube limit and its correct relation to the same coefficient.

**Inputs:** the completed coefficient theorem at the fixed
commit, with its precise causal observable, BF/source scheme
and free vacuum, together with the new all-strata common-cutoff
joint-limit theorem. The latter removes the former radial-first
restriction for the causal TT coefficient.

**Not established:** unrestricted denominator-only frequency-Abel
equivalence, or arbitrary joint removal for additional full-stress
Ward-force terms outside the causal TT coefficient.

## Executable verification links

- [regulator_checks.py](checks/dictionary_extensions/regulator_checks.py) and [actual output](checks/dictionary_extensions/regulator_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
