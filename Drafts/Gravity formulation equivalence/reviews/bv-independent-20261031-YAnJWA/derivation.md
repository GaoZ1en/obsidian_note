# Exact local BV equivalence of geometric CS and 3D diffeomorphism–Lorentz gravity

## Result and provenance

**The local classical BV equivalence holds on the open set of nondegenerate oriented coframes. It requires antifield-dependent field and ghost redefinitions. A cotangent lift of the usual ghost reparametrization alone does not give geometric gravity off shell.**

An exact finite generating functional is given in §4, its explicit map in §5, and a direct action-preservation proof in §6. The map is stronger than a cubic-order construction; its expansion through total cubic order is written in §7. All statements about integrated functionals are for a closed manifold or for compactly supported local calculations away from its boundary, equivalently local functionals modulo spacetime-exact densities.

This was a literature-guided independent derivation, not a claim of independent discovery. No project synthesis notes or other review reports were read. I consulted [Cattaneo–Schiavina–Selliah, arXiv:1707.07764](https://ar5iv.labs.arxiv.org/html/1707.07764), especially Theorem 8 and Proposition 12, for the existence theorem and the contraction-exponential mechanism. Their displayed conventions cannot simply be copied into the present component BRST conventions. The pure type-II generator below, its signs and normalization, the explicit solution for the translation antifield, the action identity, and the cubic expansion were derived here. Native Sage exterior algebra independently checks the essential graded identities. No further fresh reviewer was spawned: this independent reviewer was already at the allowed delegation-depth limit.

## 1. Classical conventions and the off-shell discrepancy

Let M be an oriented three-manifold. Internal indices a,b,c run from 1 to 3, with delta_ab and epsilon_123=1. Put kappa=2a>0. Write

\[
 [u,v]^a=\epsilon^a{}_{bc}\,u^b\wedge v^c,
 \quad D_\omega=d+[\omega,\cdot],
 \quad R=d\omega+\tfrac12[\omega,\omega],
\]
\[
 T=D_\omega e,\qquad K=R-\tfrac12[e,e].
\]

The vector connection obeys the requested convention omega^{ab}=-epsilon^{ab}{}_c omega^c. The real bulk action is

\[
 S_0[e,\omega]
 =\kappa\int_M\left(e_aR^a-\frac16e_a[e,e]^a\right)
 =2a\int_M e_aR^a-\frac a3\int_M\epsilon_{abc}e^ae^be^c.
 \tag{1}
\]

Its bulk variation is

\[
 \delta S_0=\kappa\int_M\left(\delta e_a\wedge K^a+
 \delta\omega_a\wedge T^a\right)
 \quad\text{modulo a spacetime-exact form}.
 \tag{2}
\]

For cs(A)=tr(A dA+2A^3/3), A=omega+i e, Abar=omega-i e, and tr(T_aT_b)=-delta_ab/2, the classical CS difference is (1) plus a spacetime-exact term. That term is not silently being identified with zero for a boundary-value problem.

For now all forms are **component-first ordinary spacetime forms**: their Grassmann coefficients commute with dx^i; the coefficients themselves supercommute. The notation i_xi means xi^i i_{partial_i}, with xi^i written on the left. For an odd xi, its repeated contractions need not vanish. For example, for an even coefficient f,

\[
 \iota_\xi^3(f\,dx^1dx^2dx^3)
 =-6\xi^1\xi^2\xi^3 f.
 \tag{3}
\]

The bosonic gauge transformations in the question are recovered by replacing the ghosts below by even parameters. Their parameter correspondence is

\[
 \rho=\lambda+\iota_\xi\omega,\qquad
 \tau=\iota_\xi e.
 \tag{4}
\]

Direct Cartan identities give, for the CS transformation after (4),

\[
 D\tau+[e,\rho]
 =\mathcal L_\xi e+[e,\lambda]-\iota_\xi T,
\]
\[
 D\rho-[e,\tau]
 =\mathcal L_\xi\omega+D\lambda-\iota_\xi K.
 \tag{5}
\]

Thus (4) identifies the gauge generators only on shell. A cotangent lift of (4), with the physical fields left unchanged, is certainly canonical but has precisely the wrong off-shell physical-field BRST coefficients (5). Nondegeneracy of e makes (4) invertible; it does not make T or K vanish.

## 2. Antibracket, left/right derivatives, and both master actions

All physical fields have ghost number zero and are even. The ghosts (rho,tau) or (lambda,xi) have ghost number +1 and are odd. A coordinate q^A of ghost number g has antifield p_A=(q^A)* of ghost number -1-g and parity epsilon_A+1. Antifields of one-form fields are two-forms; antifields of scalar ghosts are three-forms. The vector ghost has a covector-valued three-form density xi*_i.

In an oriented chart, write

\[
 e_a^*=\tfrac12\epsilon_{ijk}e_a^{*i}dx^jdx^k,
 \qquad \int e_a^*\wedge\delta e^a
 =\int d^3x\,e_a^{*i}\delta e_i^a,
\]

and similarly for omega*. Functional derivatives include the usual integrations by parts. Define them by

\[
 \delta F=\int \delta z\,\frac{\delta_lF}{\delta z}
 =\int\frac{\delta_rF}{\delta z}\,\delta z,
 \qquad
 \frac{\delta_rF}{\delta z}
 =(-1)^{\epsilon_z(\epsilon_F+1)}\frac{\delta_lF}{\delta z}.
\]

Use the Darboux antibracket

\[
 (F,G)=\int\left[
 \frac{\delta_rF}{\delta q^A}\frac{\delta_lG}{\delta p_A}
 -\frac{\delta_rF}{\delta p_A}\frac{\delta_lG}{\delta q^A}
 \right],\qquad sF=(S,F).
 \tag{6}
\]

Thus (q^A,p_B)=delta^A_B and s is a **left** odd derivation. In this convention the Hamiltonian for a left BRST vector field s on the fields is

\[
 S=S_0+\sum_A(-1)^{\epsilon_A}\int p_A\,s q^A.
 \tag{7}
\]

In particular the ghost-antifield terms carry a minus sign. This is a convention, not an extra change in the gauge algebra.

Use capital letters (E,Omega) for the physical fields on the CS/BF side. Their BRST rules are

\[
 s_{\rm CS}E=D_\Omega\tau+[E,\rho],\qquad
 s_{\rm CS}\Omega=D_\Omega\rho-[E,\tau],
\]
\[
 s_{\rm CS}\rho=-\tfrac12[\rho,\rho]+\tfrac12[\tau,\tau],
 \qquad s_{\rm CS}\tau=-[\rho,\tau].
 \tag{8}
\]

Equivalently, with c=rho+i tau, s c=-[c,c]/2 and s A=D_A c. Hence the real gauge algebra is [J,J]=epsilon J, [J,P]=epsilon P, [P,P]=-epsilon J. Its Jacobi identity and gauge invariance of (1) give the minimal classical master action

\[
\begin{split}
 S_{\rm CS}=S_0[E,\Omega]+\int\{&E^*\wedge(D_\Omega\tau+[E,\rho])
 +\Omega^*\wedge(D_\Omega\rho-[E,\tau])\\
 &+\tfrac12\rho^*([\rho,\rho]-[\tau,\tau])
 +\tau^*[\rho,\tau]\},
 \qquad (S_{\rm CS},S_{\rm CS})=0.
\end{split}
 \tag{9}
\]

The desired ordinary geometric rules are

\[
 s_{\rm g}e=\mathcal L_\xi e+[e,\lambda],\quad
 s_{\rm g}\omega=\mathcal L_\xi\omega+D_\omega\lambda,
\]
\[
 s_{\rm g}\xi^i=\xi^j\partial_j\xi^i=:v^i
 =\tfrac12[\xi,\xi]^i,\qquad
 s_{\rm g}\lambda=\xi^i\partial_i\lambda-\tfrac12[\lambda,\lambda].
 \tag{10}
\]

Here the Lie derivative of an ordinary one-form is

\[
 (\mathcal L_\xi e)_i^a
 =\xi^j\partial_j e_i^a+(\partial_i\xi^j)e_j^a.
\]

Their master action is

\[
\begin{split}
 S_{\rm g}=S_0[e,\omega]+\int\{&e^*\wedge(\mathcal L_\xi e+[e,\lambda])
 +\omega^*\wedge(\mathcal L_\xi\omega+D\lambda)\\
 &-\lambda^*(\mathcal L_\xi\lambda-\tfrac12[\lambda,\lambda])
 -\xi_i^*v^i\}.
\end{split}
 \tag{11}
\]

The signs in (8) and (10) are fixed by left nilpotency, not by a verbal identification of ghosts with gauge parameters. Both gauge algebras close off shell. Consequently neither final minimal action needs quadratic-antifield terms. The essential nonlinear antifield corrections instead occur in the canonical change of coordinates.

## 3. Why the leading antifield correction has its stated sign

At vanishing antifields, (2) and (6) give

\[
 s e^*\big|_0=\kappa K,\qquad
 s\omega^*\big|_0=\kappa T.
\]

Therefore the redefinition

\[
 E=e+\kappa^{-1}\iota_\xi\omega^*+\cdots,
 \qquad
 \Omega=\omega+\kappa^{-1}\iota_\xi e^*+\cdots
 \tag{12}
\]

has, at antifield zero,

\[
 sE=s_{\rm g}e-\iota_\xi T,\qquad
 s\Omega=s_{\rm g}\omega-\iota_\xi K.
\]

The minus signs come from s(xi times antifield)=(s xi) times antifield minus xi times s(antifield). This exactly supplies (5). Equation (12) is already a decisive test against the cotangent-only proposal.

## 4. Exact finite generating functional

Choose old positions q=(e,omega,lambda,xi) and new momenta P=(E*,Omega*,rho*,tau*). Let i denote i_xi in the ordinary component-first convention of §1. Internal contractions are understood; wedge signs are displayed when useful. Define the ghost-number -1, Grassmann-odd type-II generator

\[
\boxed{\begin{split}
 \mathcal F(q,P)=\int_M\{&E_a^*\wedge e^a+\Omega_a^*\wedge\omega^a
 +\rho_a^*(\lambda^a+i\omega^a)+\tau_a^*i e^a\\
 &+\frac1\kappa E_a^*\wedge i\Omega^{*a}
 +\frac1{2\kappa}E_a^*\wedge i^2\rho^{*a}
 +\frac1{2\kappa}\Omega_a^*\wedge i^2\tau^{*a}
 +\frac1{3\kappa}\tau_a^*i^3\rho^{*a}\}.
\end{split}}\tag{13}
\]

Because F is odd, its left and right derivatives coincide. The transformation is specified by

\[
 p_A=\frac{\delta_l\mathcal F}{\delta q^A},\qquad
 Q^A=\frac{\delta_l\mathcal F}{\delta P_A}.
 \tag{14}
\]

These are the standard type-II anticanonical equations for (6); equivalently the generating graph is an exact Lagrangian for the difference of the two odd symplectic forms. They give a canonical transformation whenever the mixed coordinate change is invertible.

The first line alone is the cotangent lift of (4). The remaining lines are its necessary non-cotangent completion. The generator is finite, derivative-free, and quadratic in the new momenta. The coefficient 1/3 in its last term is intentional; differentiating and eliminating the new physical antifields produces the 1/6 coefficients in the explicit map.

## 5. Explicit map, including the translation antifield

Use geometric antifields (e*,omega*,lambda*,xi*) as the independent variables. First define the CS translation antifield by the explicit local formula

\[
\boxed{
 \tau_a^*=(e^{-1})_a{}^i\left[
 \xi_i^*-\omega_i^b\lambda_b^*
 +\frac1\kappa\omega_b^*\wedge\iota_{\partial_i}e^{*b}
 \right].}
 \tag{15}
\]

All entries in brackets are three-forms. The inverse is characterized by (e^{-1})_a{}^i e_i^b=delta_a^b. Formula (15), and no field equation, is where nondegeneracy is needed.

The complete finite map is

\[
\boxed{\begin{aligned}
 E&=e+\kappa^{-1}i\omega^*-(2\kappa)^{-1}i^2\lambda^*,\\
 \Omega&=\omega+\kappa^{-1}i e^*-(2\kappa)^{-1}i^2\tau^*,\\
 \tau&=i e+(2\kappa)^{-1}i^2\omega^*-(6\kappa)^{-1}i^3\lambda^*,\\
 \rho&=\lambda+i\omega+(2\kappa)^{-1}i^2e^*-(6\kappa)^{-1}i^3\tau^*,\\
 E^*&=e^*-i\tau^*,\qquad
 \Omega^*=\omega^*-i\lambda^*,\qquad
 \rho^*=\lambda^*.
\end{aligned}}\tag{16}
\]

The equivalent xi*-equation, useful for checking signs, is

\[
 \xi_i^*=e_i^a\tau_a^*+\omega_i^a\lambda_a^*
 -\kappa^{-1}\omega_a^*\wedge\iota_{\partial_i}e^{*a}.
 \tag{17}
\]

Every derivative in (14), including all three components of (17), was checked with native Sage exterior multiplication and left interior derivatives. There is no implicit antifield remaining in (16): tau* means precisely (15).

The body of the map on the physical fields is E=e and Omega=omega. At antifield zero its ghost map is (4). Hence its mixed Jacobian is invertible precisely on nondegenerate coframes; restricting to the oriented component det(e)>0 gives the requested domain. The nilpotent corrections do not change this body. The inverse exists locally as a graded coordinate transformation; equivalently, the scalar part of the inverse shifted translation superfield in §6 determines xi recursively, with invertible leading coefficient e.

If complex CS Darboux variables are desired, compose with

\[
 A=\Omega+iE,\quad\bar A=\Omega-iE,\quad
 c=\rho+i\tau,\quad\bar c=\rho-i\tau,
\]
\[
 A^*=\tfrac12(\Omega^*-iE^*),\quad
 \bar A^*=\tfrac12(\Omega^*+iE^*),\quad
 c^*=\tfrac12(\rho^*-i\tau^*),\quad
 \bar c^*=\tfrac12(\rho^*+i\tau^*).
 \tag{18}
\]

These factors preserve the Darboux pairing; no extra factor of a is absorbed into the canonical antifields.

## 6. Direct all-orders proof of action preservation

### 6.1 Totalization and the superfield signs

Only in this section, totalize the algebra: dx^i anticommutes with every odd coefficient. If alpha has form degree p and beta has ghost number h, their totalized product differs from the ordinary coefficient-first product by (-1)^{p h}. Define

\[
 d=dx^i\partial_i,\qquad
 I=\xi^i\frac{\partial_l}{\partial(dx^i)}.
\]

Then d is odd and I is an **even derivation of the total algebra**. It is not legitimate to treat the ordinary component contraction i in (13) as this even derivation without sign conversion. On a homogeneous form of ghost number g,

\[
 I^n\alpha=(-1)^{ng+n(n-1)/2}\,i^n\alpha.
 \tag{19}
\]

The appropriate total-degree-one CS superfields in our antibracket convention are

\[
 \mathbb W=\rho+\Omega-\kappa^{-1}E^*+\kappa^{-1}\tau^*,
 \qquad
 \mathbb B=\tau+E-\kappa^{-1}\Omega^*+\kappa^{-1}\rho^*.
 \tag{20}
\]

In particular the two-form antifields have minus signs. The totalized master functional is

\[
 S_{\rm CS}
 =\kappa\int_M\left[
 \mathbb B_a\left(d\mathbb W^a+\tfrac12[\mathbb W,\mathbb W]^a\right)
 -\tfrac16\mathbb B_a[\mathbb B,\mathbb B]^a
 \right]_{\text{form }3},
 \tag{21}
\]

modulo a spacetime-exact density. Its kinetic term expands to E dOmega+E* d tau+Omega* d rho after integration by parts; its unrestricted nonabelian interaction expands exactly to all remaining terms of (9). The latter equality was independently checked with three internal components and arbitrary polynomial physical coefficients, not just on a background or for a restricted ghost choice.

Under (15)–(16), the superfields take the especially simple form

\[
 \mathbb W=e^I\alpha,\qquad \mathbb B=e^I\beta,
\]
\[
 \alpha=\lambda+\omega-\kappa^{-1}e^*+\kappa^{-1}\tau^*,
 \qquad
 \beta=e-\kappa^{-1}\omega^*+\kappa^{-1}\lambda^*.
 \tag{22}
\]

The crucial property is beta_0=0. The exponential terminates after I^3. Formula (19) converts (22) exactly into (16), including its cubic-contraction signs.

### 6.2 The Cartan identity that fixes the diffeomorphism ghost sign

Set L=[I,d]=I d-d I, and let J be the odd total contraction with v^i=xi^j partial_j xi^i. On generators,

\[
 L f=\xi^i\partial_i f,\qquad
 L(dx^i)=(\partial_j\xi^i)dx^j,\qquad
 J(dx^i)=v^i.
\]

Consequently

\[
 [I,L]=-2J,\qquad [I,J]=0,
 \qquad e^{-I}d e^I=d-L-J.
 \tag{23}
\]

For example [I,L]dx^i=-2 xi^j partial_j xi^i, which fixes the sign of the final term. These are universal derivation identities: checking them on coefficient functions and dx generators proves them on the algebra. Native Sage independently checked their nonconstant-first-jet content, including products with odd coefficients and top forms.

Since I lowers form degree, the top component of e^I X equals that of X in dimension three. Since I is an even derivation, the interaction polynomials in (21) transform as algebra products. Thus (21) pulls back to

\[
 \kappa\int_M\left[
 \beta\left((d-L-J)\alpha+\tfrac12[\alpha,\alpha]\right)
 -\tfrac16\beta[\beta,\beta]\right]_{3}.
 \tag{24}
\]

### 6.3 The three pieces of the pullback

The d and bracket terms give the Lorentz-only BV action

\[
 S_0+\int\left[e^*[e,\lambda]+\omega^*D\lambda
 +\tfrac12\lambda^*[\lambda,\lambda]\right].
 \tag{25}
\]

The cosmological term contributes only -kappa e[e,e]/6, because beta has no scalar component. In particular it produces no unwanted antifield interaction in geometric gravity. This argument is valid for the requested cosmological sign, not just for zero cosmological constant.

The -L term is

\[
 -\kappa\int[\beta L\alpha]_3
 =\int\left[e\,L e^*+\omega^*L\omega-\lambda^*L\lambda\right].
\]

Modulo a total derivative, int e L e*=int e* L e: apply the odd derivation L to the top form e e*. Hence this is exactly the diffeomorphism part of (11), except for its xi*-term.

Finally, keeping the totalization signs in J acting on odd antifield coefficients,

\[
 -\kappa[\beta J\alpha]_3
 =-\tau^*\iota_v e-\lambda^*\iota_v\omega
 +\kappa^{-1}\omega^*\wedge\iota_v e^*
 =-\xi_i^*v^i,
 \tag{26}
\]

where the last equality is precisely (17). Combining (25)–(26) proves

\[
 \boxed{\Phi^*S_{\rm CS}=S_{\rm g}}
 \quad\text{as local integrated functionals modulo spacetime-exact terms}.
 \tag{27}
\]

For additional precision, let L_CS^raw be the totalized superfield density (21), and L_CS^min the component minimal density (9), both using the Palatini bulk representative of S_0. Before integration, the entire kinetic argument is the exact identity

\[
 \mathcal L_{\rm CS}^{\rm raw}-\mathcal L_{\rm CS}^{\rm min}
 =d(\tau_aE^{*a}),\qquad
 \Phi^*\mathcal L_{\rm CS}^{\rm raw}-\mathcal L_{\rm g}
 =d\,I(e_a e^{*a}),
\]
\[
 \boxed{\Phi^*\mathcal L_{\rm CS}^{\rm min}-\mathcal L_{\rm g}
 =d\left[I(e_a e^{*a})-\Phi^*(\tau_aE^{*a})\right].}
 \tag{27a}
\]

Products inside this primitive are totalized products as defined in §6.1; the primitive itself has ghost number zero and form degree two. The first equality follows from the t dE* integration-by-parts term, and the second from -L(e e*)=d I(e e*) on top forms. The pre-existing exact term between the literal complex CS density and its Palatini bulk representative is separate. Equation (27a) is a local density calculation, not a CPS or boundary-condition equivalence claim.

As an additional independent check, [kinetic_density_check.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_check.py>) expands the **full transformed kinetic density**, with every base field and every first jet algebraically independent, and verifies all three equalities underlying (27a) exactly. The kinetic term is first-order and internally diagonal, so this checks its complete first-jet polynomial identity, not merely a few constant-field or affine-background samples. Kappa=1 is used in this supplementary check; the displayed derivation retains general kappa. The actual returned record is [kinetic_density_output.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_output.json>).

This is an analytic proof, not an inference from finitely many machine examples. Because Phi is generated by (13), it is anticanonical. The CS master equation therefore gives

\[
 (S_{\rm g},S_{\rm g})
 =\Phi^*(S_{\rm CS},S_{\rm CS})=0.
 \tag{28}
\]

Together with (6)–(7), (27) proves that the induced field BRST differential is exactly (10), not its curvature- and torsion-modified cotangent-lift version.

## 7. Expansion through total cubic order about a flat nondegenerate background

Here “flat” means flat A and Abar, namely Tbar=Kbar=0. It does **not** mean a Cartesian coframe with omegabar=0: with the present cosmological term that configuration has nonzero K.

An explicit oriented example on z>0 is

\[
 \bar e^1=dx/z,\quad\bar e^2=dy/z,\quad\bar e^3=dz/z,
 \qquad \bar\omega=(\bar e^2,-\bar e^1,0).
 \tag{29}
\]

Directly, Dbar ebar=0 and Rbar=[ebar,ebar]/2. These six residuals were checked exactly by Sage. The associated metric has unit negative sectional curvature, consistently with omega^{ab}=-epsilon^{ab}{}_c omega^c.

Put e=ebar+h and omega=omegabar+w. Give h,w,all ghosts,and all antifields total perturbative degree one. Let

\[
 B_a{}^i=(\bar e^{-1})_a{}^i,\quad H_a{}^b=B_a{}^i h_i^b,
\]
\[
 U_i=\xi_i^*-\bar\omega_i^a\lambda_a^*,\qquad
 V_i=-w_i^a\lambda_a^*
 +\kappa^{-1}\omega_a^*\wedge\iota_{\partial_i}e^{*a}.
\]

Then the explicit inverse-coframe expansion of (15) is

\[
 t_1=BU,\qquad t_2=BV-Ht_1,\qquad
 t_3=H^2t_1-HBV,\qquad
 \tau^*=t_1+t_2+t_3+O(4).
 \tag{30}
\]

The complete map through cubic order is

\[
\begin{aligned}
 E&=\bar e+h+\kappa^{-1}i\omega^*-(2\kappa)^{-1}i^2\lambda^*,\\
 \Omega&=\bar\omega+w+\kappa^{-1}i e^*-(2\kappa)^{-1}i^2t_1+O(4),\\
 \tau&=i\bar e+i h+(2\kappa)^{-1}i^2\omega^*+O(4),\\
 \rho&=\lambda+i\bar\omega+i w+(2\kappa)^{-1}i^2e^*+O(4),\\
 E^*&=e^*-i t_1-i t_2+O(4),\qquad
 \Omega^*=\omega^*-i\lambda^*,\qquad \rho^*=\lambda^*.
\end{aligned}
 \tag{31}
\]

Together with (30), this includes every field, ghost, and antifield through total degree three. The terms with i^3 in the exact map first enter at degree four here. Both master actions are at most cubic in fields, ghosts, and antifields around a fixed background; (27) establishes their equality without relying on a truncation.

At a flat background the cotangent-only error is invisible in the free field gauge action, but reappears as -i_xi delta T and -i_xi delta K at the next order. Multiplied by a physical antifield, this is already a total cubic discrepancy. Flat-background linear agreement therefore does not remove the need for (12).

## 8. Machine evidence, reproducibility, and exact scope

The single reproduction entry point is [run_all.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/run_all.py>). Run under SageMath 10.9:

```bash
sage --nodotsage '/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/run_all.py'
```

It executes four preserved inputs in fresh namespaces and prints their SHA256 hashes:

- [canonical_map_checks.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/canonical_map_checks.py>): all 26 generator-derivative and explicit-map residuals vanish, with formal 1/kappa. Substitution also checks all exterior defining relations of its generator images.
- [superfield_checks.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/superfield_checks.py>): nine exact checks, including all three internal components, the finite superfield map, its full interaction identity, and unrestricted CS ghost signs. Physical coefficients remain independent polynomials. Kappa=1 is used only for this supplementary algebra check; the analytic proof and the first check retain kappa.
- [cartan_and_ghost_checks.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/cartan_and_ghost_checks.py>): 96 residuals, including the nonconstant-first-jet BCH identities, affine diffeomorphism BRST nilpotency, nonabelian CS BRST nilpotency at zero spacetime jets, and the explicit H3 background. The stated affine/zero-jet restrictions are not disguised as full jet-space proofs; the full identities were derived analytically in §§2 and 6.

- [kinetic_density_check.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_check.py>): three exact full-kinetic-density checks with arbitrary independent first jets, including the explicit total-derivative primitive (27a).

Actual returned records, not reconstructed expected outputs, are preserved as [all_checks_final_output.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/all_checks_final_output.json>) and [all_checks_final_output.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/all_checks_final_output.txt>). All 134 labelled final checks passed. The native-homomorphism API failure and the search-interface failure are separately retained in [failures.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/failures.md>); the original failed Sage input is also retained. The successful replacement evaluates native exterior monomials only after checking the defining anticommutation relations; it does not suppress or coerce a failed mathematical equality.

**Verified:** exact local anticanonical generator; explicit finite field/ghost/antifield map; exact classical master-action identity modulo spacetime-exact terms; geometric BRST signs; necessary leading antifield corrections; total cubic expansion; an explicit flat nondegenerate background.

**Assumptions:** smooth oriented three-manifold; kappa=2a>0; the open oriented nondegenerate-coframe sector; local graded fields; closed M or compact support away from a boundary for integrated identities. All transformations are derivative-free, although their coefficients contain e inverse.

**Not established:** a boundary-compatible BV–BFV or CPS symplectomorphism; extension to every complete-L2 ghost or Brown–Henneaux asymptotic ghost; preservation of a chosen analytic domain, boundary charges, or boundary polarizations; quantum BV-measure/Jacobian equivalence; global gauge-group or topology equivalence. No CPS boundary calculation was attempted. Compact support proves none of those stronger statements. Degenerate coframes are excluded by the inverse in (15), and the construction cannot be continued through that locus by the displayed coordinate map.

Only files in this newly created private review directory were written. Original Articles and parent/current research files were not edited.
