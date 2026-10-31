# AdS3 metric–CS equivalence: exact orbit data and global obstructions

## Result at this stage

**Proved:** the degree-one real projective vacuum orbit has an exact, injective stress-tensor parametrization modulo $\operatorname{PSL}(2,\mathbb R)$, explicit Hill solutions, and a normalized KKS form obtained directly from the CS boundary symplectic pairing. Central monodromy by itself does not select this orbit. A smooth flat $\operatorname{SL}(2,\mathbb R)$ lift of global AdS3 exists; the familiar $-I$ matrix transport in a polar frame is not the genuine holonomy of that smooth disk connection with its correct frame transitions.

**Subsequent complete-sector result:** the [global theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) proves the classical metric–CS symplectomorphism for independently defined geodesically complete geometric domains, fixed compatible full framing, and a collar-controlled smooth quotient. It uses the independent standard-boundary calculation and global filling/finite-gauge arguments in addition to the orbit data below. A broader unspecified BH/GH sector, unrestricted CS theory, and quantum equivalence remain outside that theorem. Section 8 distinguishes the established domain from these remaining questions.

## 1. Fields, equations, and the domain of the map

Use the conventions of the [boundary/corner calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/02 Boundary and corner calculation.md>): signature $(-++)$, $\Lambda=-\ell^{-2}$, $\operatorname{tr}(J_aJ_b)=\eta_{ab}/2$, $k=\ell/(4G)$, and $c_{\rm cl}=6k=3\ell/(2G)$. In a common local Lorentz bundle,

\[
A=\omega+e/\ell,\qquad \bar A=\omega-e/\ell,
\qquad e=\frac\ell2(A-\bar A),\quad \omega=\frac12(A+\bar A).
\tag{1.1}
\]

Then

\[
F_A=R+\ell^{-1}T+\ell^{-2}e\wedge e,\qquad
F_{\bar A}=R-\ell^{-1}T+\ell^{-2}e\wedge e.
\tag{1.2}
\]

Consequently flatness of both connections is equivalent to $T=0$ and $R+\ell^{-2}e\wedge e=0$. If and only if $e$ is an invertible real coframe with the prescribed orientation/time-orientation, these are the torsion-free Einstein equations for

\[
g_{\mu\nu}=2\operatorname{tr}(e_\mu e_\nu),\qquad
\det(g_{\mu\nu})=-(\det e^a{}_{\mu})^2.
\tag{1.3}
\]

From a metric, one first chooses an oriented time-oriented coframe and its torsion-free connection. The result is independent of that choice only after the appropriate common local Lorentz transformations are identified. A metric by itself does not choose an SL spin lift on a general topology, nor does it identify two arbitrary principal bundles for the two CS factors. On the solid cylinder $\mathbb R\times D^2$ these bundle choices simplify, but boundary trivializations still matter.

### 1.1 Infinitesimal transformations

Adopt CS gauge convention $\delta_\lambda A=D_A\lambda$, and similarly for $\bar A$. Define

\[
\tau=\tfrac12(\lambda+\bar\lambda),\qquad
\rho=\tfrac\ell2(\lambda-\bar\lambda).
\]

Then

\[
\delta e=D_\omega\rho+[e,\tau],\qquad
\delta\omega=D_\omega\tau+\ell^{-2}[e,\rho].
\tag{1.4}
\]

On shell, $\mathcal L_\xi A=D_A(\iota_\xi A)$, since $F_A=0$. For invertible $e$, any $\rho$ defines $\xi^\mu=e_a{}^\mu\rho^a$, and (1.4) is a diffeomorphism plus a common Lorentz transformation. The sign of the Lorentz parameter relative to the convention $\delta e^a=\Lambda^a{}_b e^b$ is fixed by (1.4), not assumed.

This is an on-shell infinitesimal statement. It neither identifies disconnected gauge transformations nor proves that a finite CS gauge path stays inside the nondegenerate gravitational domain. Properness must be checked with the complete integrated CPS form and boundary data.

### 1.2 A concrete obstruction to an unrestricted CS quotient

Even with fixed exterior boundary data, nondegeneracy is not invariant under the full CS gauge group. In a small interior patch, choose gauge functions $u,\bar u$ with value $I$ at a point and first derivatives $du=-A$, $d\bar u=-\bar A$ there. Such jets can be realized by exponentials of compactly supported Lie-algebra-valued functions. The transformed flat connections both vanish at that point, hence the reconstructed $e$ vanishes there. The transformations can be the identity near the physical boundary.

Thus an unrestricted proper CS orbit can contain both a nondegenerate gravitational representative and a degenerate representative. Restricting to invertible coframes is not a gauge-invariant restriction of the unrestricted CS field space. One must specify a geometric admissibility condition and a restricted gauge groupoid/path class, or explain why the larger quotient does not make additional identifications between admissible metrics. This issue is independent of matching the local field equations.

## 2. A precise one-chiral projective sector

Let $x\sim x+2\pi$, and let $f$ be an orientation-preserving circle diffeomorphism, represented by a lift with

\[
f(x+2\pi)=f(x)+2\pi,\qquad f'(x)>0.
\]

Define the Schwarzian and dimensionless Bañados stress by

\[
\{f,x\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2,
\qquad
\boxed{\mathcal L_f=-\frac14 f'^2-\frac12\{f,x\}.}
\tag{2.1}
\]

Equivalently, for the projective map $F=\tan(f/2)$,

\[
\mathcal L_f=-\tfrac12\{F,x\}.
\tag{2.2}
\]

$F$ is interpreted as a map into $\mathbb{RP}^1$, not as a globally finite real function. Its apparent poles are projective coordinate singularities.

The associated Hill equation is

\[
\psi''-\mathcal L_f\psi=0.
\tag{2.3}
\]

Two real solutions are

\[
\psi_1=\frac{\cos(f/2)}{\sqrt{f'}},\qquad
\psi_2=\frac{\sin(f/2)}{\sqrt{f'}},\qquad
W:=\psi_1\psi_2'-\psi_1'\psi_2=\tfrac12.
\tag{2.4}
\]

Both are antiperiodic. The Hill monodromy in this periodic companion-frame convention is $-I$, and the map $[\psi_1:\psi_2]:S^1\to\mathbb{RP}^1$ has degree one.

**Theorem 2.1 — Proved (projective orbit, not bulk completeness).** The map (2.1) identifies circle diffeomorphisms modulo projective postcomposition with the smooth real periodic Hill potentials having monodromy $-I$ and positive developing degree one.

**Surjectivity.** Given such a potential, choose real independent Hill solutions with $W>0$. They never vanish simultaneously, and

\[
f'=\frac{2W}{\psi_1^2+\psi_2^2}>0
\]

for a continuous angular lift of their projective ratio. Degree one gives $f(x+2\pi)=f(x)+2\pi$. The ratio of independent solutions obeys $\{\psi_2/\psi_1,x\}=-2\mathcal L$, so (2.1) reconstructs the original potential.

**Injectivity modulo PSL.** If two projective maps have the same Schwarzian, their normalized Hill solution bases differ by a constant invertible real matrix. The two positive Wronskian orientations permit normalization to determinant one. Their ratios therefore differ by a constant $\operatorname{PSL}(2,\mathbb R)$ transformation. Conversely, such transformations leave the Schwarzian unchanged. The statement is global in $\mathbb{RP}^1$ and continues through every apparent pole. $\square$

The explicit action is $f\mapsto h\circ f$ for projective circle maps $h$. This is a left-coset presentation $\operatorname{PSL}\backslash\operatorname{Diff}^+$; inversion identifies it with the often written $\operatorname{Diff}^+/\operatorname{PSL}$. We will use the conventional orbit name without confusing these two action conventions.

### 2.1 Smooth structure and stabilizer

Work with smooth circle diffeomorphisms in the usual smooth Fréchet category, not a single exponential chart of autonomous vector fields. The projective group acts freely on this space by postcomposition. It is simply transitive on positively cyclically ordered triples of distinct points on $\mathbb{RP}^1$.

Choose input/output marked points $0,2\pi/3,4\pi/3$. The unique projective map sending their three images under $f$ back to these points defines a global smooth normalization. The normalized slice consists of degree-one lifts fixing those three points and satisfying $f'>0$. It is a smooth codimension-three submanifold of the lift space; evaluation at the three points is a continuous surjective map on the ambient periodic-function space. The projective normalizer is smooth in the three images. This constructs a global smooth quotient without appealing to a general infinite-dimensional proper-action theorem.

The map (2.1) is smooth there. Its inverse is obtained by solving the linear Hill ODE with fixed initial data and then applying the three-point projective normalization. Smooth dependence of linear ODE solutions on their coefficient on a compact interval establishes smoothness of this inverse on its image. Thus the projective orbit is a genuine smooth quotient with this specified structure; it is not merely a formal series.

At the constant vacuum $\mathcal L_0=-1/4$, the infinitesimal stabilizer equation is

\[
\epsilon\mathcal L_0'+2\epsilon'\mathcal L_0-\tfrac12\epsilon'''=0
\quad\Longleftrightarrow\quad \epsilon'''+\epsilon'=0.
\]

Its periodic solutions are $1,\cos x,\sin x$. The finite stabilizer is exactly PSL, by the same Schwarzian argument, not an unspecified cover. At arbitrary $f$, the tangent map has kernel given by the transported three stabilizer directions.

## 3. Direct CS boundary pairing and moment-map normalization

Take one chiral boundary connection in Drinfeld–Sokolov form

\[
a_x=\begin{pmatrix}0&\mathcal L(x)\\1&0\end{pmatrix}.
\tag{3.1}
\]

For a prescribed smooth real periodic function $\epsilon$, the unique gauge parameter preserving this form with lower-left entry $\epsilon$ is

\[
\lambda_\epsilon=
\begin{pmatrix}
-\epsilon'/2&\mathcal L\epsilon-\epsilon''/2\\
\epsilon&\epsilon'/2
\end{pmatrix}.
\tag{3.2}
\]

Direct evaluation of $\partial_x\lambda+[a_x,\lambda]$ gives

\[
\boxed{\delta_\epsilon\mathcal L
=\epsilon\mathcal L'+2\epsilon'\mathcal L-\tfrac12\epsilon'''.}
\tag{3.3}
\]

Choose the oriented chiral boundary coordinate so that the unbarred CS bulk form is

\[
\Omega_{\rm CS}^{(+)}(\delta_1,\delta_2)
=-\frac{k}{2\pi}\int_\Sigma\operatorname{tr}(\delta_1A\wedge\delta_2A).
\]

For flat $A$ and tangent flat variations, integration by parts gives

\[
\Omega_{\rm CS}^{(+)}(D\lambda_\epsilon,\delta A)
=-\frac{k}{2\pi}\oint\operatorname{tr}(\lambda_\epsilon\delta a_x)dx
=-\frac{k}{2\pi}\int_0^{2\pi}\epsilon\,\delta\mathcal L\,dx.
\tag{3.4}
\]

The equality $\operatorname{tr}(\lambda_\epsilon\delta a_x)=\epsilon\delta\mathcal L$ fixes the normalization. Field dependence in $\lambda_\epsilon$ causes no extra variation here: (3.4) is contraction with the actual tangent vector at the specified connection, with fixed boundary label $\epsilon$. It must be included in a subsequent gauge-parameter bracket calculation.

Thus

\[
Q_\epsilon=\frac{k}{2\pi}\int\epsilon\mathcal L\,dx,
\qquad H_\epsilon=\frac{k}{2\pi}\int\epsilon(\mathcal L+\tfrac14)dx.
\tag{3.5}
\]

The vacuum-subtracted stress is

\[
T_f=k(\mathcal L_f+\tfrac14)
=\frac{c_{\rm cl}}{24}(1-f'^2)-\frac{c_{\rm cl}}{12}\{f,x\}.
\tag{3.6}
\]

This agrees, at $\ell=1$, with the independent metric normalization in the [finite reparametrization formula](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/archived/higher perturbations of linearized gravity modes.md#L146-L174>). The active [metric note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/all order perturbation result.md#L148-L193>) obtains the same vacuum cocycle from its integrated CPS form. Agreement of normalizations is evidence needed by an equivalence proof, not a replacement for the separate global and corner maps supplied in the later complete-sector theorem.

With $[\epsilon,\eta]=\epsilon\eta'-\eta\epsilon'$, (3.3) yields

\[
\{H_\epsilon,H_\eta\}
=H_{[\epsilon,\eta]}-\frac{k}{4\pi}\int\epsilon(\eta'''+\eta')dx.
\tag{3.7}
\]

For $\epsilon_m=e^{imx}$,

\[
\{H_m,H_n\}=-i(m-n)H_{m+n}-i\frac{c_{\rm cl}}{12}m(m^2-1)\delta_{m+n,0}.
\tag{3.8}
\]

The unshifted moment map $Q$ is equivariant for the centrally extended Virasoro action with fixed central coordinate; $H$ uses the cohomologous vacuum-subtracted cocycle. Neither is an equivariant moment map for the unextended Witt algebra with its center discarded.

This derivation is for one oriented chiral sector. The barred bulk CS action has opposite level, and its boundary coordinate has opposite orientation on a fixed physical Cauchy circle. Those two signs must both be transformed when assembling two positive-energy Virasoro copies. The subsequent [complete-sector theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) explicitly gives the barred DS parameter, trace pairing, circle-reflection map, and two-positive-chiral KKS form; the [standard-boundary comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>) supplies the two-chiral finite-cutoff calculation.

## 4. Exact symplectic form, not merely a charge algebra

The Hamiltonian vector field acts on the reparametrization by

\[
X_\epsilon f=f'\epsilon.
\tag{4.1}
\]

These vectors span all tangent directions to the diffeomorphism space: any $\delta f$ gives $\epsilon=\delta f/f'$, which is smooth periodic. After quotienting the three stabilizer directions they still span the quotient tangent space.

On stress variables, (3.4) gives

\[
\Omega_{\mathcal L}(X_\epsilon,X_\eta)
=-\frac{k}{2\pi}\int\left[\mathcal L(\epsilon\eta'-\eta\epsilon')-\tfrac12\epsilon\eta'''\right]dx.
\tag{4.2}
\]

Its exact pullback is

\[
\boxed{
\Omega_f=-\frac{k}{8\pi}\int_0^{2\pi}
\left(\frac{\delta f'\wedge\delta f''}{f'^2}-\delta f\wedge\delta f'\right)dx.
}
\tag{4.3}
\]

Here the wedges are field-space wedges. A potential on the diffeomorphism space is

\[
\Theta_f=\frac{k}{8\pi}\int\left(\frac{f''\delta f'}{f'^2}-f'\delta f\right)dx,
\qquad \Omega_f=\delta\Theta_f.
\tag{4.4}
\]

The potential need not itself be basic under PSL; the two-form is. Closedness follows from (4.4). Nondegeneracy on the quotient follows because the kernel of (4.2) is precisely the stabilizer equation: pairing against all smooth $\eta$ tests every component of $\delta_\epsilon\mathcal L$.

For an explicit finite-$f$ verification of (4.3), let $p=f'$, $q=f''$. Evaluating the bracketed density in (4.3) on $(f'\epsilon,f'\eta)$ gives $W_f$. Direct expansion yields

\[
\begin{split}
W_f-&\left[4\mathcal L_f(\epsilon\eta'-\eta\epsilon')-2\epsilon\eta'''\right]\\
&=\partial_x\left[\frac qp(\epsilon\eta'-\eta\epsilon')+2\epsilon\eta''-\epsilon'\eta'\right].
\end{split}
\tag{4.5}
\]

The integral of the last line vanishes by periodicity, proving (4.2)=(4.3). This calculation has been independently checked by exact symbolic simplification. At $f=x$,

\[
\Omega_0(X_m,X_n)=i\frac{k}{2}m(m^2-1)\delta_{m+n,0},
\tag{4.6}
\]

matching $B(\xi_m,\xi_n)/\kappa^2$ of the metric note for $\ell=1$. The $m=0,\pm1$ kernel and absence of any additional kernel are explicit.

Equations (2.1), (3.3), and (4.3) establish a boundary projective-orbit symplectic model. They do not prove that every admissible bulk solution maps into it, or that no extra CS configurations survive the proposed bulk quotient.

## 5. Central holonomy does not determine the gravitational sector

Consider

\[
\mathcal L_n=-\frac{n^2}{4},\qquad n\in\mathbb Z_{>0},
\qquad
M_n=\begin{pmatrix}0&1\\-n^2/4&0\end{pmatrix}.
\]

For the Hill state vector $(\psi,\psi')$,

\[
M_n^2=-\frac{n^2}{4}I,\qquad
\exp(2\pi M_n)=(-1)^nI.
\tag{5.1}
\]

The projective developing map is $\tan(nx/2)$ and has degree $n$. Thus $n=1$ and $n=3$ have the identical SL monodromy $-I$ but different projective degree. In PSL all these monodromies are the identity, so the loss of information is greater.

The associated nonrotating locally AdS metrics can be written, in dimensionless $(t,r)$, as

\[
ds_n^2=\ell^2\left[-(r^2+n^2)dt^2+\frac{dr^2}{r^2+n^2}+r^2d\phi^2\right],
\qquad \phi\sim\phi+2\pi.
\tag{5.2}
\]

Near $r=0$ the proper radial distance is $\rho=\ell r/n+O(r^3)$ and the circumference is $2\pi\ell r$, so their ratio is $2\pi n$. Only $n=1$ gives a smooth degree-one center with the stated angular identification. The others have conical excess or require a changed covering/identification and are not this vacuum filling.

This is a counterexample to sector selection by central monodromy alone. It does not claim that all conical or hyperbolic sectors are physically forbidden; they are different theories/sectors with different regularity and topology assumptions.

## 6. Genuine disk holonomy versus polar-frame matrix transport

**Lemma 6.1 — Proved.** A smooth flat principal $G$-connection on a disk has identity holonomy around every closed loop, for any Lie group $G$.

**Proof.** Flat parallel transport is invariant under endpoint-preserving homotopy. Every disk loop contracts to the constant loop, whose transport is the identity. Equivalently, parallel transport from a base point gives a global horizontal trivialization. $\square$

In particular, a genuinely smooth flat SL connection cannot have $-I$ as the holonomy of a contractible loop. A periodic annular matrix connection with that holonomy cannot extend to the disk with that same extendible trivialization. A local polar spin frame is a different object: its lift can be antiperiodic, and the closing transition must be multiplied into the coefficient transport before calling the result a holonomy.

### 6.1 An explicit smooth SL lift of global AdS3

Use unit-radius dimensionless coordinates temporarily, restoring $\ell$ in $e=\ell(A-\bar A)/2$. Let

\[
R(\alpha)=\begin{pmatrix}\cos\alpha&-\sin\alpha\\\sin\alpha&\cos\alpha\end{pmatrix},
\quad \rho=\exp\left(\tfrac12\operatorname{arsinh}r\right),\quad D=\operatorname{diag}(\rho,\rho^{-1}).
\]

The polar expressions are

\[
g=R((t+\phi)/2)D,\qquad
\bar g=R((-t+\phi)/2)D^{-1}.
\tag{6.1}
\]

They change sign around the angular circle. Set $h=R(\phi/2)$ on a cut polar patch and define $G=g h^{-1}$, $\bar G=\bar g h^{-1}$. In Cartesian coordinates $x=r\cos\phi$, $y=r\sin\phi$, put

\[
c=\sqrt{\frac{\sqrt{1+x^2+y^2}+1}{2}},\quad
\sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix},\quad
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\]

Then

\[
\boxed{
G=R(t/2)\left(cI+\frac{x\sigma_3+y\sigma_1}{2c}\right),\qquad
\bar G=R(-t/2)\left(cI-\frac{x\sigma_3+y\sigma_1}{2c}\right).
}
\tag{6.2}
\]

Both are globally smooth SL-valued maps on $\mathbb R_t\times\mathbb R^2$, since $c>0$ and

\[
\det\left(cI\pm\frac{x\sigma_3+y\sigma_1}{2c}\right)
=c^2-\frac{x^2+y^2}{4c^2}=1.
\]

Therefore

\[
A_{\rm reg}=G^{-1}dG,\qquad \bar A_{\rm reg}=\bar G^{-1}d\bar G
\tag{6.3}
\]

are smooth flat SL connections with true disk holonomy $I$. They reconstruct

\[
2\operatorname{tr}(e_\mu e_\nu)dx^\mu dx^\nu
=\ell^2\left[-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\phi^2\right].
\tag{6.4}
\]

At the Cartesian axis,

\[
e_t=\frac\ell2\begin{pmatrix}0&-1\\1&0\end{pmatrix},\quad
e_x=\frac\ell2\sigma_3,\quad e_y=\frac\ell2\sigma_1,
\tag{6.5}
\]

which are linearly independent and give $g_{\mu\nu}=\ell^2\operatorname{diag}(-1,1,1)$. The vanishing polar-coordinate metric determinant at $r=0$ is thus only a coordinate artifact.

On the cut patch, (6.3) is $A_{\rm reg}=hAh^{-1}+h\,dh^{-1}$ and similarly for $\bar A$, so the triad transforms by common conjugation. But $h(\phi+2\pi)=-h(\phi)$: it is **not** a single-valued SL gauge transformation of the periodically trivialized annulus. It specifies the correct change from a non-global polar spin frame to a regular frame. The coefficient transport $-I$ and the central closing transition $-I$ combine to true holonomy $I$.

This explicit construction has an [independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent global-sector analysis.md>) and a [reproducible SL-lift check](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/smooth_sl_lift.wl>).

### 6.2 What this changes in the global-group argument

Cotler–Jensen [arXiv:1808.03263v3](https://arxiv.org/abs/1808.03263v3), PDF p. 20 / printed p. 19, (3.12)–(3.16), computes the polar matrix transport $-I$ and argues for $\operatorname{PSL}(2,\mathbb R)\times\operatorname{PSL}(2,\mathbb R)$. The page and formulas were visually checked.

The matrix calculation is correct. Its interpretation requires a framing qualification. If one insists on their periodic polar-matrix SL boundary presentation with no central closing transition, that connection cannot extend as a smooth flat SL connection. But smoothness of the gravitational metric alone does **not** forbid a smooth SL lift: (6.2)–(6.5) give one, with different correctly lifted boundary frame data. More abstractly, a smooth flat PSL connection on a contractible base always has a smooth SL lift after choosing the lifted bundle/trivialization.

Even in PSL, identity holonomy does not make a winding-one polar pure-gauge map extend smoothly as a single map from the disk. Its extension uses an interior frame and an annular transition. Thus relative framing, winding, and allowed boundary gauge transformations remain necessary data after quotienting the center. Holonomy is not a substitute for them.

The choice of global group still matters for spin-sensitive observables, Wilson lines, allowed large gauge transformations, and quantum representations. The result here removes an overstrong smoothness-only inference; it does not prove that SL and PSL quantizations with arbitrary boundary data are equivalent.

## 7. A useful topological consequence for quantization

The normalized three-point slice of Section 2 is convex: if $f_0,f_1$ fix the three chosen lifts and have positive derivatives, $(1-s)f_0+sf_1$ does too for $0\le s\le1$. In particular it contracts to $f=x$. Thus the ordinary smooth degree-one vacuum orbit is contractible, and so is its two-chiral product.

This rules out nontrivial ordinary flat-line-bundle twists on the base orbit as an obstruction analogous to the particle on a circle. It does **not** fix equivariant prequantization under the Virasoro central extension, polarization, half-forms, ordering, regulator, or the relation of the quantum central charge to a measured Newton coupling. Those are genuinely separate issues. The contractibility argument uses the standard circle diffeomorphism quotient, not an unspecified additional quotient by large bulk transformations.

## 8. Complete-sector closure and the remaining broader questions

The subsequent [complete geometric vacuum theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) closes the classical benchmark for independently defined **geodesically complete** metric and nondegenerate geometric CS domains, with fixed compatible full framing and collar-controlled smooth structure. Arbitrary degree-one boundary data have smooth complete fillings, equal stresses are exactly the full proper fibers on both sides, and the standard action-derived forms coincide. This is not an assertion about a broader unspecified connected BH/GH domain or unrestricted CS configurations.

The following list records the interfaces and their now-precise scope:

The candidate map in a matched sector is

\[
[g]_{\rm proper}\longmapsto[(\omega(e)+e/\ell,\omega(e)-e/\ell)]_{\rm geometric\ proper},
\]

or, after both independent reductions have been proved,

\[
\Phi=\mu_{\rm CS}^{-1}\circ\mu_{\rm metric}
\]

with the same two degree-one projective stresses. Four interfaces must be distinguished:

1. **Metric completeness and smooth extension — resolved in the complete domain.** Uniform nonautonomous isotopies and an exact FG-preserving flow give arbitrary degree-one fillings with locally smooth common-collar dependence. Complete developing maps prove exhaustion and proper uniqueness. This does not identify a larger unspecified connected smooth/GH domain; an explicit incomplete, non-GH endpoint illustrates the distinction. The limitation of a single autonomous exponential remains real, as already noted in the [archived metric analysis](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/archived/higher perturbations of linearized gravity modes.md#L31-L37>).
2. **CS admissibility and quotient — resolved with complete geometric endpoints and compatible full framing.** Proper flat-pair fibers are determined by exact collar stresses; completeness matches them to genuine global proper diffeomorphisms plus Lorentz transformations. The collar-controlled quotient is proved smooth and equal to the projective orbit. This is not an invariance claim for the nondegenerate domain under all CS transformations, nor a classification in a weaker compact-open topology.
3. **Independent boundary actions — now resolved on the explicit collar slice.** The [standard chiral comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>) computes the exact finite-wall action defect $-(k/\pi R^2)\mathcal L_+\mathcal L_-\tau$, its vanishing Brown–Henneaux limit, and the actual corner defect. The pulled-back integrated forms agree at fixed internal normal; finite-wall Dirichlet and chiral variational problems do not. Global cap/overlap phases and arbitrary boundary sources remain outside that established result.
4. **Quantum transport.** Only after the classical domain and relative forms match, compare prequantum/equivariant data, representations, measure/Jacobian, ghosts, and regularization. The algebraic vacuum module at fixed $c$ does not determine a relation $c_{\rm quantum}(G_{\rm physical})$.

For the precise complete sector, these classical inputs are now verified in the [global theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>). Tangent spanning, the stress image/fiber theorem, and the actual standard corner calculation yield the reduced KKS form after the independent global quotient has been established. The [relative-CPS theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/03 Relative CPS equivalence theorem.md>) explains the descent mechanism. No step treats equality of Virasoro algebras alone as a symplectomorphism proof.

## Verification boundary

The [local Wolfram checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads3_local_checks.wl>) and [actual result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads3_local_checks.results.json>) verify the matrix field dictionary, flatness decomposition, DS residual gauge transformation, trace normalization, exact KKS density identity, Hill solutions/Wronskian, all-integer constant monodromy, and exceptional stabilizers. All 19 checks passed with no messages. These are exact algebraic checks, not numerical support for an unproved global quotient. The SL-lift and generic coframe/corner checks are separate verification files, and their specific evidence is indexed in the main report.
