# Observable reconstruction with compact Maxwell gauge symmetry

## Result

**For $U(1)$ Maxwell theory on $\mathbb R\times S^1$, with all smooth gauge transformations declared proper, the independent observable quotient reconstructs the complete reduced cylinder**
$$
\mathcal P\simeq S^1\times\mathbb R,\qquad
\Omega=dP\wedge d\theta.
$$
Continuous characters recover both electric flux and holonomy; derivations recover the two physical tangent directions. A direct causal-response calculation gives the bracket, including its normalization. Unlike the infinite-dimensional [scalar benchmark](observable-reconstruction.md), the final smooth-function topology here makes the reduced bracket jointly continuous.

The holonomy is indispensable. An algebra generated only by curvature observables would distinguish electric fields but miss an entire circle of physically distinct solutions. Large gauge transformations identify $\theta$ modulo $2\pi$; they do not remove that circle.

## 1. Action, fields and proper gauge

Use $M=\mathbb R_t\times S^1_x$, $x\sim x+2\pi$, metric $(-+)$, and coupling $g_{\!M}>0$. A real connection representative on the trivial $U(1)$ bundle is
$$
A=A_0dt+A_1dx,\qquad E=F_{01}=\partial_tA_1-\partial_xA_0.
$$
All components and variations are smooth and spatially periodic. All $U(1)$ bundles on this cylinder are topologically trivial. No boundary condition is imposed at temporal infinity; the action is varied on finite slabs or with compact variations:
$$
S[A]=-\frac1{4g_{\!M}^2}\int F_{\mu\nu}F^{\mu\nu}\,dt\,dx
=\frac1{2g_{\!M}^2}\int E^2\,dt\,dx.
$$
Its Euler--Lagrange components, paired with $\delta A_\mu$, are
$$
\mathscr E^0=\frac1{g_{\!M}^2}\partial_xE,\qquad
\mathscr E^1=-\frac1{g_{\!M}^2}\partial_tE.
$$

Declare the proper gauge group to be **all** smooth maps $M\to U(1)$. In local real notation they act by
$$
A\longmapsto A+d\alpha,\qquad
\alpha(t,x+2\pi)=\alpha(t,x)+2\pi n,\quad n\in\mathbb Z.
$$
The additive constant acts trivially and may be removed by basing the group at one spacetime point. This does not alter its orbits. The winding number is constant in time. Excluding large transformations would give a different physical theory with an unwrapped holonomy coordinate; it is not the convention used here.

## 2. Geometric construction and its global quotient

The field equations imply $E=E_0$ constant. A temporal gauge transformation sets $A_0=0$, after which
$$
A_1(t,x)=a_1(x)+E_0t.
$$
A periodic gauge transformation removes the zero-mean part of $a_1$. Its mean survives, and a large transformation changes its integral by $2\pi n$. Therefore complete orbit invariants are
$$
\theta=\oint_{t=0}A_1\,dx\pmod{2\pi},\qquad
P=\frac{E_0}{g_{\!M}^2}.
$$
Every pair occurs, and two solutions with the same pair differ by a proper gauge transformation. Thus the quotient is globally $S^1\times\mathbb R$, without a singular stratum.

The time-slice potential and its exterior derivative are
$$
\Theta_t=\frac1{g_{\!M}^2}\int_{S^1}E\,\delta A_1\,dx,\qquad
\Omega_t=\frac1{g_{\!M}^2}\int_{S^1}\delta E\wedge\delta A_1\,dx.
$$
On solutions and modulo proper gauge,
$$
\boxed{\Omega=dP\wedge d\theta.}
$$
The expression is independent of the Cauchy time, since
$\theta(t)=\theta+2\pi g_{\!M}^2Pt$ and
$dP\wedge d\theta(t)=dP\wedge d\theta$.

Independently choose the geometric observables to be all of
$C^\infty(S^1\times\mathbb R,\mathbb R)$, with compact-open convergence of every derivative.

## 3. Define the observable route off shell

Let $\mathcal E_A=C^\infty(M,\mathbb R^2)$. Use the same type of functional class as in the scalar construction: $F$ is Bastiani smooth and
$$
dF_A(a)=\int j_F^\mu(A)a_\mu\,dt\,dx,
$$
where locally in $A$ the map $A\mapsto j_F(A)$ is smooth into smooth vector densities with one fixed compact support. Equip this algebra $\mathcal F_A$ with compact-open smooth convergence.

For independent compact test covectors $f_\mu$, define
$$
e_f(A)=\int(f_0\mathscr E^0+f_1\mathscr E^1)\,dt\,dx,
\qquad
\mathcal I_{\rm EOM}
=\overline{\langle e_f\rangle}^{\,\mathcal F_A}.
$$
Again the ideal is generated from the Euler--Lagrange expressions before any restriction kernel is considered. Take
$$
\mathcal A_S=(\mathcal F_A/\mathcal I_{\rm EOM})^{\mathcal G_{\rm proper}}.
$$
The invariant algebra here is taken after imposing the equations. We will exhibit invariant off-shell representatives rather than assuming that invariants and quotients commute.

Choose real compactly supported functions $\chi,\rho$ with
$$
\int\chi=1,\qquad \int t\chi(t)\,dt=0,\qquad \int\rho=1.
$$
Define on all configurations
$$
Q_\chi[A]=\int\chi(t)\oint A_1(t,x)\,dx\,dt,\qquad
Z[A]=e^{iQ_\chi[A]},
$$
$$
P_\rho[A]=\frac1{2\pi g_{\!M}^2}\int\rho(t)E(t,x)\,dt\,dx.
$$
The real and imaginary parts of $Z$, as well as $P_\rho$, belong to $\mathcal F_A$. Their functional derivatives are smooth compact densities. Under a large transformation $Q_\chi\mapsto Q_\chi+2\pi n$, so $Z$ is invariant. $P_\rho$ is invariant because $E$ is.

On shell,
$$
Z=e^{i\theta},\qquad P_\rho=P.
$$
The vanishing first moment of $\chi$ fixes the time origin of the holonomy observable. It is not a hidden gauge condition.

There is also a purely kinematic completeness statement. Even off shell, a gauge orbit is determined by $E(t,x)$ and the holonomy at $t=0$. In temporal gauge, $A_1(t,x)=a_1(x)+\int_0^tE(s,x)\,ds$, which proves existence and uniqueness of these orbit data. $Z$ differs from the initial holonomy by the explicitly known phase
$$
Z=\exp\left[
i\theta_0+i\int\chi(t)\int_0^t\oint E(s,x)\,dx\,ds\,dt
\right].
$$
Thus $(Z,E)$ also separates all off-shell gauge orbits. This uses connections and gauge transformations, without a solution symplectic manifold.

## 4. The closed equation ideal really is the restriction kernel

The proof can be made explicit because the equations are linear.

Before quotienting by gauge, a continuous linear coordinate system on connection space is
$$
A_0=\partial_t\alpha,\qquad
A_1=\partial_x\alpha+a+\int_0^tE(s,x)\,ds,
$$
where $a\in\mathbb R$, $E\in C^\infty(M)$, and $\alpha$ is smooth periodic with $\alpha(0,0)=0$. To construct it, integrate $A_0$ in time and choose the initial value of $\alpha$ as the periodic primitive of $A_1(0,x)-a$. These operations and their inverses are continuous linear maps of the stated Fréchet spaces.

Only $E$ is constrained by the equations. Put
$$
c(E)=\frac1{2\pi}\int\rho(t)E(t,x)\,dt\,dx,\qquad h=E-c(E).
$$
The solution subspace is exactly $h=0$. If a smooth functional vanishes there, Hadamard division in the $h$ direction expresses it as an integral linear in $h$, with smooth coefficient functionals.

Every compact linear smearing of $h$ is already a smeared equation relation. Indeed,
$$
\int\eta h=\int\widetilde\eta E,\qquad
\widetilde\eta=\eta-\frac{\rho(t)}{2\pi}\int_M\eta,
\qquad \int_M\widetilde\eta=0.
$$
Any compact smooth $\widetilde\eta$ of total integral zero on the cylinder can be written
$$
\widetilde\eta=\partial_tu+\partial_xv
$$
with smooth compact $u,v$. Separate its spatial average, integrate that average from $-\infty$ in time (the zero total integral makes the primitive compact), and take a periodic spatial primitive of the zero-mean remainder. Integrating by parts now expresses $\int\widetilde\eta E$ as a linear combination of the prescribed $e_f$.

Approximate the Hadamard integral by finite-rank smoothing of $h$, and approximate the resulting smooth coefficient functionals by cylindrical functionals with compact smooth connection smearings. The compact-open derivative convergence is exactly the chain-rule argument proved in section 5 of the scalar note. This puts every vanishing member of $\mathcal F_A$ in the closed generated ideal. The reverse inclusion follows from continuous evaluation. Thus
$$
\boxed{\ker(F\mapsto F|_{\rm Sol})=\mathcal I_{\rm EOM}.}
$$
No equality with the unclosed finite-sum ideal is needed or claimed.

An invariant quotient class is now precisely a smooth functional on solutions that is constant on proper-gauge orbits. Restricting it to the representative
$A_0=0$, $A_1=\theta/(2\pi)+g_{\!M}^2Pt$
gives a smooth periodic function $f(\theta,P)$. Conversely every such function has the globally defined invariant off-shell extension
$$
F_f[A]=f(Z[A],P_\rho[A]).
$$
Here $f$ is regarded as a smooth function on $S^1\times\mathbb R$, so no branch of $\arg Z$ is chosen. This extension has a smooth compactly supported first derivative and lies in $\mathcal F_A$.

Restriction and this extension are continuous; restriction can be checked on finitely many angular charts over any compact set. They are inverse on quotient classes. Consequently
$$
\boxed{
(\mathcal F_A/\mathcal I_{\rm EOM})^{\mathcal G_{\rm proper}}
\cong C^\infty(S^1\times\mathbb R)
}
$$
as topological algebras. This proves the required invariant comparison instead of assuming exactness of an invariants functor.

## 5. Characters, derivations and topology

The three global observables
$$
C=\operatorname{Re}Z,\qquad S=\operatorname{Im}Z,\qquad P
$$
satisfy $C^2+S^2=1$. A continuous real unital character assigns real values $(c,s,p)$ with $c^2+s^2=1$. Thus its values already select a point of the cylinder.

For a general smooth $f$, choose a smooth extension $\widetilde f(c,s,p)$ from the embedded cylinder to $\mathbb R^3$. Such an extension exists by a tubular neighborhood and a smooth cutoff. Then
$f=\widetilde f(C,S,P)$. The finite-dimensional Hadamard formula shows that a character acts on this expression by evaluation at $(c,s,p)$. Hence there are no extra continuous characters and
$$
\mathcal P\cong\operatorname{Char}_{\rm cont}(\mathcal A_S).
$$
The evaluations of $C,S,P$ generate the ordinary cylinder topology, so the correspondence is a homeomorphism.

For a continuous derivation at this character, write
$$
D(C)=u,\qquad D(S)=v,\qquad D(P)=w.
$$
Differentiating the circle relation gives $cu+sv=0$. There is a unique number $\dot\theta$ such that
$$
(u,v)=(-s,c)\dot\theta.
$$
Hadamard division in the extension $\widetilde f$ then gives
$$
D(f)=\dot\theta\,\partial_\theta f+w\,\partial_Pf.
$$
Conversely every such pair defines a continuous derivation. These are exactly linearized Maxwell solutions modulo infinitesimal proper gauge. Large transformations are discrete and add no infinitesimal tangent direction.

A curve or finite-dimensional plot is smooth exactly when its evaluations of $C,S,P$ are smooth. Local angular charts recover the usual smooth structure; the constraint maintains tangency to the circle. There is no infinite-mode regularity gap in this reduced model.

## 6. Compute the Peierls bracket before importing the reduced form

For a gauge-invariant off-shell representative, compact support of its first derivative and invariance under small gauge transformations imply
$$
\partial_\mu j_F^\mu=0.
$$
Use Lorenz gauge to invert the linearized operator. Its gauge-fixed Euler--Lagrange operator is
$$
(P_{\rm gf})^{\mu\nu}=\frac1{g_{\!M}^2}g^{\mu\nu}\Box,\qquad
\Box=-\partial_t^2+\partial_x^2.
$$
With $\Delta_\Box=G_{\rm ret}-G_{\rm adv}$, the response of a covariant connection component is
$$
(\Delta_Aj)_\mu
=g_{\!M}^2g_{\mu\nu}\Delta_\Box j^\nu.
$$
For conserved compact currents this response obeys Lorenz gauge and the ungauge-fixed linearized equations. Differences from a compatible alternative gauge inverse are exact one-forms and pair to zero with the conserved current. The Peierls bracket is therefore
$$
\{F,G\}_{\rm P}
=\int j_F^\mu(\Delta_Aj_G)_\mu\,dt\,dx.
$$
Its definition uses causal response on the connection space, not $\Omega=dP\wedge d\theta$.

The normalizations are especially transparent in the spatially constant sector. The two local angular/momentum representatives have currents
$$
j_{Q_\chi}^1=\chi(t),\qquad
j_{P_\rho}^1=-\frac{\rho'(t)}{2\pi g_{\!M}^2},
\qquad j^0=0.
$$
Although $Q_\chi$ itself is not a global invariant under large gauge transformations, it is a valid local angular coordinate for differentiating the globally invariant $C,S$.

For a spatially constant source $f(t)$,
$$
\Delta_\Box f(t)=-\int_{\mathbb R}(t-s)f(s)\,ds.
$$
Since $\int\rho'=0$ and $\int s\rho'(s)\,ds=-1$,
$$
(\Delta_Aj_{P_\rho})_1=\frac1{2\pi},
\qquad
\{Q_\chi,P_\rho\}_{\rm P}
=\int dt\,dx\,\frac{\chi(t)}{2\pi}=1.
$$
Therefore the global brackets are
$$
\boxed{
\{C,P\}_{\rm P}=-S,\qquad
\{S,P\}_{\rm P}=C,\qquad
\{C,S\}_{\rm P}=0.
}
$$
The same chain rule gives, for every pair of reduced observables,
$$
\boxed{
\{f,g\}_{\rm P}
=\partial_\theta f\,\partial_Pg-\partial_Pf\,\partial_\theta g.
}
$$
This is a jointly continuous bilinear operation in the usual compact-open $C^\infty$ topology on the finite-dimensional cylinder.

For completeness, descent is independent of the chosen invariant off-shell extension. The Maxwell Green identity obtained by integrating the action's quadratic variation gives
$$
\Omega(\Delta_Aj_F,v)=-dF(v)
$$
for every linearized solution, modulo gauge. A difference of extensions in the restriction kernel has zero derivative on those solutions; its causal response is therefore a proper-gauge direction, since the reduced form in section 2 is nondegenerate. Its bracket with every invariant observable vanishes. This checks the extension independence rather than using the computed brackets only for one preferred representative.

## 7. Recover the symplectic form and retain the global mode

At a character,
$$
X_f^{\rm alg}(g)=\{g,f\}_{\rm P}
$$
corresponds to
$$
X_f=(\partial_Pf,-\partial_\theta f).
$$
It obeys
$$
\iota_{X_f}(dP\wedge d\theta)=-df.
$$
The vector $X_P=\partial_\theta$ supplies one direction. At every point at least one of $X_C=S\partial_P$ and $X_S=-C\partial_P$ supplies the other. Hence the bracket determines the entire reduced symplectic form, without excluding the harmonic sector.

The geometric Hamiltonian is
$$
H=\pi g_{\!M}^2P^2.
$$
The observable bracket gives $\dot\theta=\{\theta,H\}=2\pi g_{\!M}^2P$ and $\dot P=0$, recovering the solution evolution.

If one had retained only local curvature observables, then on shell all their values would depend on $P$ alone. They would not separate different holonomies at the same electric field; their algebra would also fail to recover $X_P$ as a nontrivial angular motion. Adding the Wilson observable repairs a specific missing physical function, rather than appealing abstractly to “enough observables.”

## Verification and limits

The [saved symbolic check](verification/maxwell-reconstruction.wl) and adjacent JSON verify the Euler--Lagrange factors, gauge invariance of $F_{01}$, global generator brackets, tangency to the circle relation and Hamiltonian normalization. The causal zero-mode integral above supplies an independent Peierls normalization; it is not fitted to the geometric answer. The separate [xAct current check](verification/maxwell-covariant-current.wl) returns zero for the covariant Maxwell Green identity and one for the normalized zero-mode pairing factor.

**Verified by the derivation:** the global proper-gauge orbit classification, closed equation ideal, invariant lifting, complete character and derivation reconstruction, topology and smooth structure, and normalized Peierls/CPS equivalence.

**Assumptions:** smooth connections on the cylinder; compact $U(1)$ gauge group with all winding transformations proper; no temporal-end restrictions or spatial boundary; the explicitly specified regular-gradient functionals and ideal closure.

**Not claimed:** local propagating photons in two dimensions, non-Abelian singular reduction, boundary charges, a higher-dimensional Maxwell theorem, or quantization. The general gauge/Peierls framework in [Khavkine](https://arxiv.org/abs/1402.1282) provides context; the cylinder calculation above supplies its own global classification and normalization.

