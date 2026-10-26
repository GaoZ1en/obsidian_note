# Uniform soft-endpoint bounds before radial cutoff removal

## Result and missing interface addressed

The earlier soft-\(p\) and soft-\(q\) proofs imposed a shrinking hard-mass
band and used an exact support cancellation only after removing the
common radial cutoff. For arbitrary joint \(B(R)\), the finite-cutoff
leakage outside that band must also be controlled.

Here that leakage has a direct, uniformly bounded oscillatory integral.
The complete pair of surviving insertions has a hard Hankel phase gap.
A small free mass is retained as a plane-wave average, so the bound
includes its zero-mass endpoint.

The resulting soft annuli have the summable majorant
\[
C A\rho^2(1+|\log\rho|),
\tag{1}
\]
uniform in every radial cutoff \(B>0\).
The genuine switched core has, after restoring the omitted leakage,
the bound
\[
C\epsilon^2(1+|\log\epsilon|),\qquad \epsilon=R^{-1}.
\tag{2}
\]
These bounds close the soft-endpoint domination needed for unrestricted
joint removal. They use the same common cutoff in all insertions.

## 1. A radial phase-gap lemma, including zero free mass

Let \(\beta_L(u)=\beta(u/L)\) be one fixed smooth compact plateau
profile under arbitrary positive rescaling. Then
\[
\sup_{u,L>0}u^k|\partial_u^k\beta_L(u)|<\infty
\tag{3}
\]
for each fixed \(k\).

The two exact real timelike combinations are
\[
F^-_L(a,b,c)=\frac{\pi}{8a^2}\int_0^\infty
du\,u^3\beta_L(u)J_0(bu)
[Y_2(au)J_0(cu)+J_2(au)Y_0(cu)],
\tag{4}
\]
\[
F^+_L(a,b,c)=\frac{\pi}{64}\int_0^\infty
du\,u^5\beta_L(u)f_2(au)
[Y_0(cu)J_0(bu)+J_0(cu)Y_0(bu)],
\tag{5}
\]
where \(f_2(v)=8J_2(v)/v^2\), extended smoothly by \(f_2(0)=1\).
These are the actual raised scalar factors after summing the two
surviving insertions. In (5), the potentially singular expression
\(J_2(au)/a^2\) has already been removed exactly.

The free factors have probability-measure representations
\[
J_0(bu)=\frac1{2\pi}\int_0^{2\pi}
e^{ibu\cos\theta}\,d\theta,
\]
\[
f_2(au)=\frac8{3\pi}\int_{-1}^1
e^{iau\xi}(1-\xi^2)^{3/2}\,d\xi.
\tag{6}
\]

**Lemma 1.** Fix positive lower and upper bounds for the two hard
masses. In (4), suppose \(a,c\) are hard and
\(0\le b\le\eta\min(a,c)\). In (5), suppose \(b,c\) are hard and
\(0\le a\le\eta\min(b,c)\), with a fixed sufficiently small
\(\eta\). The integrals are uniformly bounded for every \(L>0\),
including the zero small-mass endpoint.
After restoring a common squared-mass scale \(\sigma\), this is
a bound \(C\sigma^{-3}\).

**Proof.** The exact same-sign Hankel identity writes the bracket
in (4) as the difference of \(H_2^+(au)H_0^+(cu)\) and its
opposite-sign partner. After (6), its phases are
\(\pm(a+c)+b\cos\theta\), uniformly separated from zero.
The corresponding phases in (5) are
\(\pm(b+c)+a\xi\), also uniformly separated.
The angular measures have total variation one, so no derivative
in a small mass or in an angular variable is required.

On \(u\ge1\), use exact Hankel symbols and integrate in \(u\)
enough times. The scaled-cutoff property (3) makes the constants
uniform for all \(L\). The small-\(u\) integrands are respectively
\(O(u)\) and \(O(u^5[1+|\log u|])\), uniformly in the small mass.
They are integrable. Finally \(u=v/\sqrt\sigma\) gives the exact
homogeneity \(\sigma^{-3}\) of both raised kernels. \(\square\)

### 1.1 A buffer around transfer null

The same conclusion has the logarithmic refinement needed when the
retarded transfer mass crosses zero. Suppose one unraised hard phase
has size comparable to \(\sqrt\sigma\), the other free input mass
is at most \(\eta\sqrt\sigma\), and
\(|t|\le c_0\sigma\) with \(c_0,\eta\) sufficiently small.
Then the complete kernel obeys
\[
|F_L|\le C\sigma^{-3}
\left(1+\left|\log {|t|\over\sigma}\right|\right)
\tag{7}
\]
away from the null surface, with its ordinary locally integrable
logarithmic extension across that surface.

To prove (7), rescale \(\sigma=1\). The input \(J_0\) or \(f_2\)
is kept in the average (6). Split the soft retarded Bessel factor
at \(u\sqrt{|t|}\asymp1\).
In the lower region it and its \(u\)-derivatives have logarithmic
symbol bounds. Repeated integration against the remaining hard
phase gives \(C(1+|\log|t||)\).
In the upper region the \(Y_0,J_0\) Hankel symbols, or the
exponentially decreasing \(K_0\), apply. Each full phase is still
separated from zero; sufficiently many integrations give a
nonnegative power of \(\sqrt{|t|}\).
The partition at \(u\sqrt{|t|}\asymp1\) also satisfies (3).

The other surviving insertion has only a hard retarded mass and
soft free factors; the same phase gap gives a uniform bound for it.
No output mass derivative is taken on the transfer-null factor.
Thus (7) is a genuine integrable logarithm, rather than a
finite-part pole.

### 1.2 The outer-null buffer

When the raised free mass tends to zero while the output remains
spacelike with \(\kappa^2=-t\ge c\sigma\), use the exact positive bound
\[
|\partial_x^2J_0(u\sqrt x)|\le u^4/32,\qquad
\int_0^\infty u^5K_0(\kappa u)\,du=64\kappa^{-6}.
\tag{8}
\]
It gives \(|F_L|\le2\kappa^{-6}\le C\sigma^{-3}\),
uniformly in every free mass and \(L\).

## 2. The two endpoint geometries

Use \(s(k)=k^+k^- -|k_\perp|^2\). A bounded common null rotation
puts the hard momentum on the plus axis; its plus component
\(B_h\) stays in a compact positive interval. Write the soft
momentum as
\[
k^+=A,\quad k^-=H,\quad k_\perp=w,\qquad
0\le A\le\eta B_h,\quad |w|^2\le AH,
\tag{9}
\]
and let \(H\asymp\rho\). The genuine free-cone measure is
\[
d^4k=\tfrac12 AH\,dA\,dH\,d^2v,\quad
w=\sqrt{AH}\,v,\quad |v|\le1.
\tag{10}
\]
In particular its annular volume is \(O(A\rho^2\,dA)\).
No distribution derivative is taken in these soft variables.

Write the injection as \((c_+,\omega,b_\perp)\).
For soft \(q\), hard \(p\) has mass \(x\), and
\[
t=\frac{B_h-A-c_+}{B_h}x
-(B_h-A-c_+)(H+\omega)-|w+b_\perp|^2.
\tag{11}
\]
For soft \(p\), hard \(q\) has mass \(y\), and
\[
t=\frac{B_h-A+c_+}{B_h}y
-(B_h-A+c_+)(H-\omega)-|w-b_\perp|^2.
\tag{12}
\]
The coefficient of the hard mass is uniformly positive.
The respective hard output energy signs remain fixed for
sufficiently small injection.

## 3. Near injection: actual finite-cutoff mass bands and leakage

First take \(|\Omega|\le c\rho\), with a fixed sufficiently small \(c\).

### 3.1 The band with hard squared masses of order \(\rho\)

In the soft-\(q\) chart, \(0\le x\lesssim\rho\), and in the
soft-\(p\) chart, \(0\le y\lesssim\rho\).
The kinematic relations (11)–(12) give a finite cover:

1. a spacelike output with \(-t\gtrsim\rho\), controlled by (8);
2. a transfer-null buffer where the other hard mass is
   bounded below by \(c_1\rho\), controlled by (7);
3. a strictly timelike pair with a hard phase gap,
   controlled by Lemma 1.

For the transfer-null buffer, \(\partial_x t\) or
\(\partial_y t\) is bounded away from zero. Therefore the logarithm
in (7) is integrable in the hard squared mass, with a uniform
bound after scaling that mass by \(\rho\).

The actual tensor satisfies
\[
|\mathcal N|\le C\rho^2
\quad\hbox{for soft }q,
\qquad
|\mathcal N|\le C\rho^2(A+\rho)^2
\quad\hbox{for soft }p.
\tag{13}
\]
Together with the mass interval of length \(O(\rho)\), the
kernel bound \(C\rho^{-3}\), and (10), this gives an annular
bound \(CA\rho^2\), with the additional harmless
\((A+\rho)^2\) in the soft-\(p\) case.
These are finite-cutoff bounds and use no stationary support
cancellation.

### 3.2 Positive hard-mass leakage

Let the hard squared mass have scale \(\sigma\gg\rho\).
Equations (11)–(12) put the other hard mass at comparable
positive scale \(\sigma\), while the soft input mass is at most
\(A\rho\ll\sigma\).
The exact common-insertion Hankel pair is now precisely one of
(4)–(5). Thus
\[
|F_L|\le C\sigma^{-3}.
\tag{14}
\]
The tensor obeys
\[
|\mathcal N|\le C\sigma^2
\quad\hbox{for soft }q,
\qquad
|\mathcal N|\le C\sigma^2(A+\rho)^2
\quad\hbox{for soft }p.
\tag{15}
\]
For example, in the soft-stress chart
\(x=O(A\rho)\), \(c_q,c_r=O(A\sigma+\rho)\), and
\(q\cdot r=O(\sigma)\).
Since \(\rho\le C\sigma\) and the hard plus component is bounded,
the vectors \(xq-c_qp\) and \(xr-c_rp\) are
\(O(\sigma(A+\rho))\).
The remaining scalar coefficient in the polynomial tensor is
\(O(\sigma^2)\), while \(x\eta+pp=O((A+\rho)^2)\).
This proves the second bound in (15). In the soft-scalar chart
the hard stress mass is \(x=\sigma\), both contractions with
the soft leg are \(O(\sigma)\), and the same polynomial formula
gives the first bound. These estimates are preserved by the
bounded common null rotation.
Integrating the resulting \(C/\sigma\) bound over the hard
squared mass from \(C\rho\) to a fixed upper bound costs only
\(C(1+|\log\rho|)\).
With the actual soft-cone volume this proves (1).

At sufficiently negative hard squared mass, both surviving
graphs have empty actual free support by (11) or (12).
This exclusion is true at finite radial cutoff.
The positive leakage in (14) is the part which required a
new estimate.

## 4. The complete switched core

For \(H\le C\epsilon\) and \(|\Omega|\le C'\epsilon\), the old
doubly localized mass band has its proved
\(O(\epsilon^2)\) bound uniformly in \(B\).
The only omitted region has positive hard mass
\(\sigma\gg\epsilon\). Lemma 1 and (15) apply there with
\(\rho+|\Omega|\lesssim\epsilon\).
The entire soft-cone volume is \(O(A\epsilon^2\,dA)\).
Integrating \(d\sigma/\sigma\) therefore adds at most
\[
CA\epsilon^2(1+|\log\epsilon|)\,dA.
\tag{16}
\]
This is the actual finite-cutoff leakage. Combining it with
the localized core proves (2) after the harmless \(A\) integration.

## 5. Far injection: keep the band estimate and bound the leakage directly

Localize first to \(|\Omega|<\delta_0\), so the hard energy
signs stay fixed. The complementary fixed remote region is
smaller than every power of \(R^{-1}\), by the existing
global bound uniform in \(B\).

For \(H\asymp\rho\) and \(|\Omega|\asymp\tau\ge c\rho\),
split the hard mass into \(|x|\lesssim\tau\) or
\(|y|\lesssim\tau\), and its complement.

In the band, insert this actual smooth mass cutoff and apply
the original finite-\(B\) two-mass estimate. Its derivative
order is fixed, and its normalized switch tail is controlled
by the same arbitrary Schwartz powers as in the earlier
soft-endpoint reports. This use of the two-mass estimate
does not assign any extra support to the finite-cutoff kernel.

Outside the band, negative hard masses are again excluded by
the actual cones. For positive \(\sigma\ge C\tau\), (14)–(15)
apply with \(\tau\) in place of the injection scale.
This is an ordinary gapped coefficient: its pairing with the
switch uses the absolute four-dimensional profile integral,
with no distribution derivative of the profile.
For every \(M\),
\[
\int_{|\Omega|\asymp\tau}
\epsilon^{-4}|\widehat\chi(\Omega/\epsilon)|\,d^4\Omega
\le C_M(\epsilon/\tau)^M,\qquad \tau\ge\epsilon.
\tag{17}
\]
The leakage shell is bounded by
\[
CA\rho^2(1+|\log\tau|)(\epsilon/\tau)^M.
\tag{18}
\]
For \(M>2\), summing \(\rho\ge\epsilon,\tau\ge c\rho\)
gives \(O(A\epsilon^2[1+|\log\epsilon|])\).
For \(H\le C\epsilon\), use its full cone volume instead
and obtain the same bound on \(\tau\ge C'\epsilon\).
The bounded-injection part is (16).

The normalization tail of the stationary comparison is controlled
by the same summable annular majorant (1).
This closes the full Schwartz profile, retaining the actual
factor \(A\) all the way to \(A=0\).

## 6. Joint-limit consequence and precise logic

On every fixed soft annulus \(\rho>0\), both external energies
have positive lower bounds. The compact set is covered by the
hard two-leg joint theorem, including its massive zero-transfer
part and its all-null rescaled patches.
Thus that fixed annulus has the correct joint limit as
\(B,R\to\infty\).

The bound (1) is summable over \(\rho\downarrow0\), uniformly
in both regulators, and the full central core tends to zero
by (2). Dominated annular summation therefore extends the
joint limit across the soft endpoint.

This argument closes precisely the previous finite-\(B\)
mass-band leakage gap. It neither assumes the canonical
support cancellation at finite cutoff nor uses a pointwise
estimate at a transfer-null logarithm.

**Verified:** the phase-gap lemma with zero input mass; the
logarithmic transfer-null bound; both finite-cutoff leakage
estimates; the soft-cone volume and the complete-profile
dominated gluing described above.

**Dependencies:** the already proved doubly localized core
and finite-order two-mass band estimates; the new massive
uniform-cutoff theorem; the hard two-leg rescaled finite cover.

**Scope:** the specified first gravitational coefficient and
common smooth radial cutoff. Different insertion cutoffs and
denominator-only frequency substitutions remain distinct.

## Executable verification links

- [soft_uniform_checks.py](checks/dictionary_extensions/soft_uniform_checks.py) and [actual output](checks/dictionary_extensions/soft_uniform_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
