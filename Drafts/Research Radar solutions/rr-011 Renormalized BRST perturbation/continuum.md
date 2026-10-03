# Continuum BRST/reduction comparison with local counterterms

## Result

**The two routes agree for the explicit Abelian Stueckelberg model below, as formal local quantum theories in the specified factorizing renormalization scheme.** The first nontrivial interaction and its one-loop Wick subtraction are given explicitly. The gauge differential has a nonzero first-order deformation in the original matter variable, but becomes a free contractible-pair differential in local invariant variables. The inclusion of physical observables preserves support, products, adjoints, and relative evolution.

This supplies the independent continuum benchmark requested in rr-011. It is a deliberately tractable Stueckelberg theory, not massless scalar QED and not a boundary or sewing theorem. The mechanical result is in [solution.md](solution.md).

## 1. Action and local gauge reduction

Work on four-dimensional Minkowski spacetime with signature $(-+++)$. Take real fields $A_\mu,\theta,\varphi$, masses $M,m,\mu>0$, a fixed mass scale $\Lambda>0$, and a dimensionless formal coupling $g$. The gauge group is the additive group of smooth real functions; $\theta$ is not periodic. Define
$$
B_\mu=A_\mu-\Lambda^{-1}\partial_\mu\theta,
\qquad
\chi=\varphi-g\theta.
$$
All three scalar fields $\theta,\varphi,\chi$ have mass dimension one. Under
$$
\delta_\alpha A_\mu=\Lambda^{-1}\partial_\mu\alpha,\qquad
\delta_\alpha\theta=\alpha,\qquad
\delta_\alpha\varphi=g\alpha,
$$
both $B$ and $\chi$ are invariant. The change of variables is local and invertible:
$$
A=B+\Lambda^{-1}d\theta,\qquad \varphi=\chi+g\theta.
$$
It uses no inverse differential operator and does not enlarge supports.

Let $f\in C_c^\infty(\mathbb R^{1,3};\mathbb R)$ be the interaction switching function. Define
$$
S_{\rm phys}=S_0[B,\chi]+V_g[B,\chi],
$$
$$
S_0=\int d^4x\left[
-\frac14F_{\mu\nu}(B)F^{\mu\nu}(B)
-\frac{M^2}{2}B_\mu B^\mu
-\frac12\partial_\mu\chi\,\partial^\mu\chi
-\frac{m^2}{2}\chi^2
\right],
$$
$$
V_g=\int d^4x\,f(x)\left[
g\Lambda B^\mu\partial_\mu\chi
-\frac{g^2\Lambda^2}{2}B_\mu B^\mu
-\frac{g}{4!}\chi^4
\right].
$$
On a region where $f=1$, the last three kinetic terms combine as
$-\frac12(\partial\chi-g\Lambda B)^2$. In original variables this is
$-\frac12(\partial\varphi-g\Lambda A)^2$. Thus the presentation has a gauge connection and transforming matter, not just a name for a gauge-invariant scalar.

The section $\theta=0$ intersects each gauge orbit exactly once. Substitution gives the reduced action $S_{\rm phys}[B,\chi]$. There is no quotient ambiguity or missing compact gauge zero mode in this model. The positive Proca mass is essential to the stated free physical theory.

The global parameter $g$ in the field redefinition is not replaced by $gf(x)$. Switching is applied to the already invariant interaction. This avoids spurious $df$-terms in the gauge transformation.

## 2. BRST differential, BV lift, and a hyperbolic gauge fixing

Introduce ghosts $c,\bar c$ and an even auxiliary field $b$, with ghost numbers $1,-1,0$. Use
$$
s\theta=c,\qquad sc=0,\qquad
s\bar c=b,\qquad sb=0,\qquad sB=s\chi=0.
$$
In the original variables,
$$
sA=\Lambda^{-1}dc,\qquad s\varphi=gc.
$$
Thus $s=s_0+gs_1$, where $s_1\varphi=c$, and $s^2=0$ off shell.

A minimal/nonminimal BV lift in invariant coordinates is
$$
S_{\rm BV}=S_{\rm phys}
+\int d^4x\,(\theta^*c+\bar c^*b),
$$
with antibracket convention $s_{\rm BV}F=(F,S_{\rm BV})$. It satisfies the classical master equation: $S_{\rm phys}$ is independent of every variable in the gauge pairs, and the antifield term squares to zero. The remaining action of $s_{\rm BV}$ on physical antifields is the ordinary Koszul–Tate differential of the reduced theory.

For the gauge-fixed continuum construction, take $K=\Box-\mu^2$ and
$$
\Psi=\int d^4x\,\bar c K\theta,\qquad
s\Psi=\int d^4x\,(bK\theta-\bar cKc).
$$
After integration by parts the unphysical sector is a free scalar quartet. Its even kinetic block is
$$
\begin{pmatrix}0&K\\K&0\end{pmatrix},
$$
so its retarded inverse has $K_{\rm ret}^{-1}$ in the off-diagonal entries. Ghost propagators use the same scalar operator and the graded signs determined by $-\bar cKc$. No elliptic spatial inverse or instantaneous projection is used.

The physical Proca and Klein–Gordon propagators and the quartet propagators form a block-diagonal free covariance. Gauge-invariant interactions involve the physical block only. BRST covariance of the quartet contractions fixes the relative ghost/boson sign; in particular the two contractions in $s(\bar c\,\theta)=b\theta-\bar c c$ cancel.

## 3. The actual contraction and the anomaly class

For every finite jet label $I$, including the empty label, set
$$
\theta_I=\partial_I\theta,\quad c_I=\partial_Ic,\quad
\bar c_I=\partial_I\bar c,\quad b_I=\partial_Ib.
$$
On the polynomial jet algebra, define the odd operator
$$
\kappa=\sum_I\left(
\theta_I\frac{\partial^L}{\partial c_I}
+\bar c_I\frac{\partial}{\partial b_I}\right).
$$
The graded anticommutator obeys
$$
s\kappa+\kappa s=N,
$$
where $N$ counts all quartet variables and their derivatives. The identity follows on each generator and hence on arbitrary products, because both sides are even derivations. If $\Pi$ sets the quartet to zero and $i$ includes the physical algebra, then
$$
h=\kappa N^{-1}(1-\Pi),
\qquad
sh+hs=1-i\Pi.
$$
Every polynomial involves finitely many jets, so $N^{-1}$ is just division by a positive integer on each nonzero homogeneous component. It is not a Green function. The homotopy therefore preserves support and finite derivative order.

It follows that
$$
H^0(s)\simeq\mathcal A_{\rm phys}[B,\chi].
$$
For local anomaly densities modulo spacetime total derivatives, the same argument applies because the jet contraction commutes with spacetime differentiation, with the usual total-degree signs for differential forms. Positive-ghost-number cocycles must contain a quartet variable: the physical generators have ghost number zero. Consequently their positive-$N$ components are exact modulo a total derivative. In particular,
$$
H^{1,4}(s\mid d)=0
$$
in this field/jet algebra. This is a statement about this fully contractible gauge sector, not a vanishing theorem for ordinary Yang–Mills BRST cohomology.

In the BV extension, $c^*,\theta^*$ and $b^*,\bar c^*$ also form contractible pairs; physical antifields carry only nonpositive ghost number. The same positive-ghost-number conclusion survives after including the physical Koszul–Tate differential. Hence a local consistent gauge anomaly has a local primitive in the declared algebra. Restrictions forbidding Stueckelberg counterterms would change the cohomology problem and are not imposed here.

This is the contractible-pair argument of [Barnich–Brandt–Henneaux, Section 2.7](https://arxiv.org/html/hep-th/0002245), applied to all gauge variables of this particular model. Their general theory does not say that the undifferentiated ghost of ordinary Yang–Mills is always contractible.

## 4. First-order compatibility in original variables

Expansion of the scalar free action under $\chi=\varphi-g\theta$ gives
$$
\mathcal L_0^\chi
=-\frac12(\partial\varphi)^2-\frac{m^2}{2}\varphi^2
+g\left(\partial_\mu\varphi\,\partial^\mu\theta
+m^2\varphi\theta\right)+O(g^2).
$$
The first physical interaction is
$$
g f\left(\Lambda B^\mu\partial_\mu\varphi-\frac{\varphi^4}{4!}\right).
$$
Since $s_0B=s_0\varphi=0$, the latter is $s_0$-closed. Directly,
$$
s_0\left(\partial\varphi\cdot\partial\theta+m^2\varphi\theta\right)
=\partial\varphi\cdot\partial c+m^2\varphi c,
$$
$$
s_1\left(-\frac12(\partial\varphi)^2-\frac{m^2}{2}\varphi^2\right)
=-\partial\varphi\cdot\partial c-m^2\varphi c.
$$
Thus $s_0S_1+s_1S_0=0$, without dropping an endpoint term. The nonzero $s_1$ is included in the comparison.

For a local physical functional $F[B,\chi]$, the inclusion written in original fields is explicit:
$$
I_gF=F[A-\Lambda^{-1}d\theta,\varphi-g\theta].
$$
For a polynomial in an undifferentiated $\chi$,
$$
I_gF=F(\varphi)-g\theta F'(\varphi)+O(g^2).
$$
For general local functionals the corresponding formula sums over their jets. This is a local homological comparison map; no spectral truncation defines it.

## 5. Renormalization and the one-loop subtraction

Use the free Hadamard/Wick algebra of $B,\chi$ and the quartet, with no mixed physical/quartet contractions. Time-ordered products are extended by the causal Epstein–Glaser prescription in the physical sector; the quartet remains a free factor. All series are formal in $g,\hbar$, with compactly supported interaction and observable smearing.

The first-order vertex is
$$
V_1^{\rm ren}
=\int d^4x\,f\left(
\Lambda :B^\mu\partial_\mu\chi:
-\frac1{4!}:\chi^4:
\right).
$$
The mixed quadratic vertex has no same-point contraction because the free $B,\chi$ covariance is block diagonal. The quartic vertex has the nontrivial local subtraction
$$
:\chi^4:_\epsilon
=\chi^4-6\hbar C_\epsilon\chi^2+3\hbar^2C_\epsilon^2.
$$
For an explicit flat-space ultraviolet parametrization one may use the Euclidean heat-regulated diagonal scalar covariance
$$
C_\epsilon
=\int_{\epsilon^2}^{\infty}
\frac{e^{-m^2s}}{(4\pi s)^2}\,ds
=\frac1{16\pi^2}
\left[
\frac{e^{-m^2\epsilon^2}}{\epsilon^2}
-m^2\Gamma(0,m^2\epsilon^2)
\right].
$$
This formula displays the coincident subtraction coefficient; the causal Lorentzian products are defined by the Hadamard/Epstein–Glaser construction, not by an unproved Wick rotation of a full interacting theory.

The corresponding local contribution to the Lorentzian interaction density is
$$
-\frac{g}{24}\chi^4
+\frac{g\hbar C_\epsilon}{4}\chi^2
-\frac{g\hbar^2C_\epsilon^2}{8}.
$$
The middle term is the one-loop tadpole subtraction; the last is a vacuum subtraction. All these terms satisfy $s(\cdot)=0$ exactly because $s\chi=0$. In original variables they are polynomials in $\varphi-g\theta$, hence still local and explicitly BRST invariant. The one-loop anomaly representative is zero in this scheme.

This is stronger than an unsourced determinant test: the free quartet symmetry commutes with every contraction, and physical vertices carry no quartet lines. Therefore time ordering with arbitrary polynomial quartet insertions satisfies the BRST derivation identity, with the required graded signs. Extensions of divergent physical distributions do not change this identity, because $s$ annihilates all their fields. A finite change of physical mass, vacuum, or Wick normalization preserves the conclusion if it is applied in both routes.

The renormalized BV interpretation uses the anomalous Master Ward Identity, rather than an undefined coincident BV Laplacian; see [Fredenhagen–Rejzner, Sections 3–4](https://arxiv.org/html/1110.5232). Here factorization supplies a scheme with vanishing gauge anomaly. The local contraction also supplies a primitive for any consistent local gauge breaking in an equivalent scheme within the admitted counterterm algebra.

## 6. Products, adjoints, and effective evolution

Let $\mathcal A_{\rm red}$ be the free physical Wick algebra, and $\mathcal A_{\rm BRST}$ the full gauge-fixed Wick algebra in invariant coordinates. Since there are no cross contractions, inclusion is a strict map:
$$
i(F\star_{\rm red}G)=iF\star_{\rm BRST}iG,
\qquad
i(F^*)=(iF)^*.
$$
It intertwines the physical time-ordered products by construction of the same extensions in both routes. On normal-ordered polynomials, $s$ acts on the quartet generators as above, so the contraction removes all nonphysical classes. This proves surjectivity and injectivity on ghost-number-zero cohomology. Projection setting the quartet to zero need not preserve the star product on arbitrary nonclosed representatives; the induced map on cohomology does preserve it.

Define the relative interacting observable map
$$
R_V(F)=S(V)^{-1}\star
\left(S(V)\cdot_T F\right),
\qquad
S(V)=\exp_T(iV/\hbar).
$$
For $V=gV_1+O(g^2)$,
$$
R_V(F)=F+\frac{ig}{\hbar}
\left[T(V_1,F)-V_1\star F\right]+O(g^2).
$$
Every contraction and every local extension in this expression is identical on the physical subalgebras of the two routes. In fact the factorization argument works term by term to all formal orders:
$$
\boxed{iR_V^{\rm red}(F)=R_{iV}^{\rm BRST}(iF).}
$$
Transport by the local change of fields gives the same statement for $I_g$ in original coordinates. This establishes equality of effective local dynamics after renormalization, not only equality of a state count.

The quartet BRST derivation is nilpotent, and it commutes with relative evolution since $sV=0$. In a charge implementation this is $Q^2=0$ and compatibility of $Q$ with physical evolution. No anomaly-restoring gauge counterterm is needed in the chosen scheme. For compact switching there is generally no conserved global Hamiltonian; the relative evolution statement is the appropriate replacement. No infinite-volume adiabatic limit or nonperturbative Hilbert-space equivalence is asserted.

## 7. What this answers, and what it does not

The independent rr-011 benchmark now has both required pieces: an interacting finite system with explicit spectra and a continuum BV/pAQFT model with local renormalization, a nonzero deformation of the original BRST action on matter, a local cohomology map, and matching effective evolution.

A usable sufficient condition extracted from the construction is: a local invertible split into physical variables and contractible gauge pairs, together with BRST-covariant propagators and a local renormalization prescription whose physical extensions are shared by the two routes. When such a split is unavailable, the obstruction must instead be tested in the relevant local anomaly cohomology. This note does not classify that cohomology for scalar QED or general Yang–Mills.

**Verified:** Mathematica returned zero for first-order off-shell BRST compatibility, the Wick polynomial, the derivative of the heat-cutoff integral, invariance of its local counterterms, and the inverse physical-coordinate map. Sage verified nilpotency and the contraction identity for two independent jet pairs on all tested monomials of total quartet degree at most four; the all-degree result follows from the generator/derivation proof above. The Bessel average used in the mechanical note was also checked.

**Assumptions:** additive noncompact gauge group; strictly positive physical and quartet masses; fixed mass scale $\Lambda$; local polynomial observables and their renormalized Wick/time-ordered products; compact supports; formal perturbative series; the factorizing scheme and the admitted Stueckelberg counterterms. The reduced theory's standard causal perturbative construction is framework input, not reproved by the finite algebra tests.

**Not verified:** boundary BRST currents, collar removal, sewing maps, massless scalar QED, nonperturbative continuum spectra, or removal of the spacetime switching function.

The verification directory retains earlier unsuccessful harness runs. The initial Sage attempt used an unavailable Cartesian-product name; subsequent attempts exposed Sage's meanings of `^` and `~` in integer mask operations. The authoritative passing files are `continuum-doublets-sage-verified-*.json`. Mathematica's initial run emitted a protected-symbol warning for `C`; the `continuum-doublet-checks-corrected` files remove that warning and return all zero residuals.

