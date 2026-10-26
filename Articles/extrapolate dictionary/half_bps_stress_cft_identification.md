# Identifying the complete boundary limit with the CFT Wightman tensor

## Statement and inputs

This note supplies the last identification step for the first gravitational
tree coefficient. The bulk calculation is performed with its genuine common
switch and its canonical retarded radial prescription. The boundary CFT
distribution is defined independently by its ordered positive-energy
three-shell convolution. The argument compares these two definitions,
including their possible singular supports.

The input from the new boundary calculation is a profile-independent local
adiabatic limit on all external momenta, constructed with the radial cutoff
removed first. The causal corner construction proves that the uncut
nonstationary kernel exists globally and has momentum degree zero. The
hard-null, massive-transfer and two soft-endpoint estimates prove that the
adiabatic limit exists. This note uses those results; it does not replace
their existence proofs by a uniqueness argument.

Write the stationary momenta as $(p,q-p,-q)$, set
$x=s(p)$, $y=s(q)$, $t=s(q-p)$, and use $\eta=(-,+,+,+)$.
The polynomial TT tensor is

\[
\mathcal N_{ij}(p;q,q)=x^2\Pi_{ij,kl}(p)q^kq^l,
\qquad D^2=(x-y-t)^2-4yt.
\]

Only the expanded polynomial expression for $\mathcal N$ is multiplied by
distributions. The normalization is

\[
\alpha=\frac{2\sqrt{10}}N,\qquad
\widehat A=-\frac4{3\sqrt{10}N}=-\frac\alpha{15}.
\tag{1}
\]

## 1. An independently defined CFT distribution

The ordered continuation of the stress Ward three-point tensor is the
positive-energy pushforward

\[
\begin{aligned}
W^{\mathrm{CFT}}_{ij}(p,q)
={}&32\pi^5\widehat A\int d^4a\,
\delta_+(s(a))\delta_+(s(p-a))\delta_+(s(q-a))\,
\mathcal M_{ij}(p-a,a),\\
\mathcal M_{ij}(l,a)
={}&-\frac{l_il_j+a_ia_j}{8}
+\frac{l_ia_j+a_il_j}{4}
-\frac{\eta_{ij}}8(l\cdot a).
\end{aligned}
\tag{2}
\]

An unambiguous definition of (2) is its test-function action before imposing
the two external momentum constraints:

\[
32\pi^5\widehat A
\int d\mu(a)\,d\mu(l)\,d\mu(m)\,
\mathcal M_{ij}(l,a)\,\psi(l+a,m+a),
\qquad d\mu(k)=d^4k\,\delta_+(s(k)).
\tag{3}
\]

All three internal momenta are future null. On a compact external-energy
set their energies are bounded, so this pushforward is proper. Each shell
measure is an ordinary locally finite positive measure, with radial weight
$E\,dE\,d\Omega/2$ at its vertex. The polynomial numerator is bounded by a
constant times the square of the total energy. Thus (3) defines a locally
finite signed tensor measure, with a polynomial bound at infinity. It is
tempered, rather than merely a formal product of coincident delta functions.

Conservation and tracelessness hold under the integral. On $a^2=l^2=0$,

\[
(a+l)^i\mathcal M_{ij}=0,\qquad
\eta^{ij}\mathcal M_{ij}=0.
\tag{4}
\]

The support has $p,q\in\overline V_+$. Scaling the three shell measures
gives degree six, their numerator degree two, and the two external delta
constraints degree minus eight. The resulting tensor has degree zero.

### Why no outer-null delta terms are hidden in (2)

The map $(a,l,m)\mapsto(p=l+a,q=m+a)$ has rank eight except on its critical
set. A rank defect gives covectors $A,B$, not both zero, with
$A\parallel l$, $B\parallel m$, and $A+B\parallel a$; the zero covector is
allowed in each relation. If $A,B,A+B$ are all nonzero, a nontrivial
linear combination of two nonparallel null vectors cannot be null.
The cases in which one vanishes likewise force a pair to be parallel.
Thus the critical set is contained in the union of the three pairwise
collinearity sets. Each has measure zero in the product shell measure.
The sets where an internal momentum vanishes also have measure zero.
The coarea theorem on the regular set therefore shows that (3) is
absolutely continuous with respect to external Lebesgue measure. Critical
images do not acquire an additional measure, because their preimages have
zero total variation. In particular (2) contains neither outer-null delta
measures nor normal derivatives of such measures.

This argument is useful at the endpoints as well. A nonzero null $p$
requires $a$ and $l$ to be parallel, an angular measure-zero condition. If
$p=0$, positivity forces $a=l=0$; the shell measures have no atoms there.
The analogous statements hold for $q$. These observations concern the
specified positive-energy pushforward, not arbitrary extensions of an
off-shell density.

## 2. Matching on the regular and simple-null strata

The angular shell integral gives, on spacelike transfer,

\[
W^{\mathrm{CFT}}_{ij}(p,q)
=\frac{4\alpha\pi^6}{5}\,
C_p C_q\,\mathbf1_{t<0}\,
\mathcal N_{ij}(p;q,q)\frac{D^2+6yt}{D^5}.
\tag{5}
\]

Its open timelike-transfer value is zero. In a rest frame of timelike $p$,
the elementary cut moment is

\[
\int d^4a\,\delta_+\delta_+\delta_+\,a_i a_j
=\frac{\pi x}{16D}
\left[(1-c^2)\delta_{ij}+(3c^2-1)\widehat q_i\widehat q_j\right],
\quad c=\frac{x-y-t}{D},
\tag{6}
\]

Here $a^0=|\mathbf a|=\sqrt x/2$, $q^0=(x+y-t)/(2\sqrt x)$,
and $|\mathbf q|=D/(2\sqrt x)$. The equation $(q-a)^2=0$ therefore
fixes the displayed $c=\widehat a\cdot\widehat q$. Its condition
$|c|\le1$ gives precisely the spacelike-transfer cut for $y>0$.

For the identification only the invariant tensor (5) is needed. The
genuine bulk boundary sum on this region is

\[
\frac{2\alpha\pi^6}{5}\mathcal N_{ij}\,
\partial_x^2D^{-1}.
\]

The derivative holds the other two squared masses fixed. Exactly,

\[
\partial_x^2D^{-1}
=\frac{2(D^2+6yt)}{D^5}.
\tag{7}
\]

This agrees with (5), including its normalization. On a simple outer-null
face with $D>0$, the common radial calculation has a bounded analytic mass
coefficient times the actual free cone indicators. It therefore supplies
the same ordinary measure continuation; it does not differentiate those
indicators. The explicit mass-raising null jets are already accounted for
by the defining radial integral.

Generic massive collinear timelike points have a whole nonstationary
neighborhood where the all-insertion sum vanishes. Massive zero transfer is
covered by the exact mismatch lemma, which constructs a continuous
distribution family and produces no diagonal-supported residue. A soft
outer leg with a massive companion has the complete mass gap. Consequently
the two distributions agree away from the common collinear-null set

\[
\mathscr S=\{p,q\in\overline V_+:
s(p)=s(q)=s(q-p)=0\}.
\tag{8}
\]

## 3. Removing the remaining common-null ambiguity

Let $W^{\mathrm{bulk}}$ be the actual adiabatic limit. The profile-independent
estimates imply Lorentz covariance: transform the entire finite-switch
construction, including the profile, and then use independence of the
profile. Existence for just one shape would not justify this step.
The exact dilation identity similarly gives degree zero. Its future support
follows from the three free-line supports after $\Omega=0$.

The difference $W^{\mathrm{bulk}}-W^{\mathrm{CFT}}$ is a covariant degree-zero
rank-two distribution supported on (8). Such a distribution vanishes.
For completeness, at two nonzero collinear null momenta use plus energies
$(a,b)$, a common transverse ray coordinate $u\in\mathbb R^2$, and normal
coordinates $(x,y,v_\perp)$ of weights $(2,2,1,1)$ under dilation followed
by the inverse null boost. A normal delta jet has weight $-6-w$, $w\ge0$.
Rank-two tensor boost weights lie in $\{-2,-1,0,1,2\}$. Null-rotation
covariance makes the coefficients smooth in $u$, so their value at $u=0$
must satisfy these incompatible weights. Every coefficient is zero.
At a one-zero-momentum endpoint the normal weights are $(2,0,2,1,1)$,
again with sum six and no negative entries. The same argument applies.
At the common origin delta derivatives have degrees $-8-n$, never zero.

This proves

\[
\boxed{W^{\mathrm{bulk}}=W^{\mathrm{CFT}}
\quad\text{as complete tempered boundary distributions}.}
\tag{9}
\]

The proof fixes all supported terms by the actual common-regulator limit.
The kinematic uniqueness argument is used only after existence, profile
independence and the off-\(\mathscr S\) identification have been proved.
The independent one-null counterexamples in the original null-ambiguity
report remain valid for an arbitrary extension without those inputs.

## 4. Scope

Equation (9) is an ordered Wightman identity at the first gravitational
tree order, in the fixed BF/source normalization. It compares the boundary
corner of the genuine switched reconstruction with the independently known
CFT distribution. Time-ordered curved-source Ward contacts are a different
observable and are retained by the boundary completion of that source
functional. Equality (9) is not an assertion that all complex-frequency,
Gram-cutoff and switching regulators have identical separate finite parts.

**Verified:** the mass derivative and coefficient identity (7), the shell
numerator Ward identities, properness and polynomial bounds of the
positive-energy pushforward, and the normal-weight uniqueness argument.
The companion program independently executed 19 exact zero-residual
checks and verified the ranks of regular and one-collinear-pair
pushforward Jacobians.

**Assumptions:** the completed all-null adiabatic theorem, the same retarded
radial prescription throughout, first gravitational tree order, the stated
normalization and ordered vacuum.

**Not verified here:** an interacting Hilbert-space algebra or equality of
independently chosen regulator prescriptions. These are not used by (9).

## Reproducible verification files

- [cft_identification_checks.py](checks/stress_completion/cft_identification_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
