# Singular SU(2) circle reduction and radial quantization

## Result and scope

For pure SU(2) Yang--Mills theory on a circle, reduction by the Gauss constraint gives

$$
\mathcal P=(T\times\mathfrak t)/\mathbb Z_2,
\qquad(\theta,p)\sim(-\theta,-p),\quad\theta\in\mathbb R/2\pi\mathbb Z.
$$

There is one connected two-dimensional symplectic stratum and two zero-dimensional strata, at $(0,0)$ and $(\pi,0)$. Quantization through the independent group Laplacian is unitarily equivalent to radial quantization with Haar weight and its specified endpoint domain. The equivalence is exact at every representation label. No derived-symplectic formalism is needed for this benchmark.

This note treats the independent circle theory. The Radar card also asks for interval-to-circle self-sewing; that comparison is deferred under the user's gluing exclusion. Thus the independent singular-reduction and radial problem is answered, while the original self-sewing card is not marked wholly completed.

## Action and presymplectic reduction

Use anti-Hermitian matrices and the invariant inner product

$$
\langle X,Y\rangle=-\frac12\operatorname{tr}(XY).
$$

After reducing periodic gauge fields by based gauge transformations, the variables are a holonomy $U\in SU(2)$ and $P\in\mathfrak{su}(2)$. The remaining gauge group acts by simultaneous conjugation. With a positive constant $\kappa$, the first-order action is

$$
S=\int dt\left[\langle P,U^{-1}\dot U\rangle
-\langle a,UPU^{-1}-P\rangle-\frac\kappa2\langle P,P\rangle\right].
$$

Here $a(t)$ is a Lagrange multiplier. The normalization of $\kappa$ is part of the action; it absorbs the circle length and the chosen normalization of the Yang--Mills coupling. In the convention where the usual quadratic Casimir is $j(j+1)$, this inner product gives the Laplacian eigenvalue $4j(j+1)$.

For comparison with a standard continuum connection $D_x=\partial_x+[A_x,\cdot]$, take $U=\mathcal P\exp(-\int A_xdx)$. Gauss law transports the electric field from its base value $E_0$ and imposes $UE_0U^{-1}=E_0$. The canonical integral reduces to $-\langle E_0,U^{-1}\delta U\rangle$; our momentum is $P=-E_0$. This fixes the sign in the displayed action without changing the electric energy.

Varying $a$ imposes the moment-map equation

$$
\mu(U,P)=UPU^{-1}-P=0.
$$

The endpoint term in the action variation gives

$$
\Theta=\langle P,U^{-1}\delta U\rangle,\qquad\Omega=\delta\Theta.
$$

For a conjugation generator $\xi$, $\delta_\xi U=\xi U-U\xi$ and $\delta_\xi P=[\xi,P]$. Direct contraction gives $\iota_{X_\xi}\Theta=\langle\mu,\xi\rangle$. Invariance of $\Theta$ therefore gives $\iota_{X_\xi}\Omega=-\delta\langle\mu,\xi\rangle$. This identifies the constraint and its gauge degeneracies before quotienting.

## Stabilizer strata

On $\mu^{-1}(0)$, $U$ commutes with $P$. They can therefore be simultaneously conjugated into

$$
U=e^{i\theta\sigma_3},\qquad P=ip\sigma_3.
$$

The residual Weyl transformation sends $(\theta,p)$ to $(-\theta,-p)$. Pulling back the canonical potential and two-form gives

$$
\Theta=p\,\delta\theta,\qquad\Omega=\delta p\wedge\delta\theta,
\qquad\{\theta,p\}=1.
$$

The simultaneous stabilizer is SU(2) precisely when $U=\pm1$ and $P=0$. At every other constrained point it is a maximal torus. Thus:

- $(0,0)$ and $(\pi,0)$ are isolated zero-dimensional symplectic leaves.
- The complement is one connected two-dimensional stratum, with the displayed two-form descended through the free Weyl action.
- Points with $U=\pm1$ and $P\ne0$ are regular points of that principal stratum. The momentum removes the enhanced stabilizer of the configuration variable alone.

Near either exceptional point the local model is $\mathbb R^2/\{(q,p)\sim(-q,-p)\}$. This already shows why replacing the full phase space by an ordinary cotangent bundle of the closed interval loses its orbit-type geometry.

## Invariants and the Poisson algebra

Set

$$
x=\cos\theta,\qquad y=p\sin\theta,\qquad z=p^2.
$$

They distinguish Weyl orbits and obey

$$
y^2=z(1-x^2),\qquad -1\leq x\leq1,\qquad z\geq0.
$$

For $|x|<1$, the angle representative $0<\theta<\pi$ and $p=y/\sin\theta$ reconstruct the orbit. At $x=\pm1$, only the sign of $p$ is lost, exactly as required by the Weyl identification. Therefore these invariants give a global presentation of the quotient.

The brackets obtained before taking the quotient are

$$
\boxed{\{x,y\}=x^2-1,\qquad\{x,z\}=-2y,\qquad\{y,z\}=2xz.}
$$

The defining relation is a Casimir of this polynomial presentation. The Poisson tensor has rank zero only at $(x,y,z)=(\pm1,0,0)$; elsewhere it has rank two. For example, at $x=\pm1,z>0$, the bracket $\{y,z\}=\pm2z$ is nonzero. The global Hamiltonian $H=\kappa z/2$ is smooth as an invariant even at the singular points. No inverse symplectic form across a change of stratum dimension is required.

## Independent quantum target

Quantize $T^*SU(2)$ in the configuration polarization and impose conjugation invariance. With normalized Haar measure the physical Hilbert space is

$$
\mathcal H=L^2(SU(2),dU)^{SU(2)}
\simeq L^2\left([0,\pi],\frac2\pi\sin^2\theta\,d\theta\right).
$$

This target is defined on the group before any singular quotient coordinates are used. The positive electric Hamiltonian is $\widehat H=\kappa(-\Delta_{SU(2)})/2$. On class functions,

$$
\widehat H\psi=-\frac\kappa2\frac1{\sin^2\theta}
\partial_\theta(\sin^2\theta\,\partial_\theta\psi).
$$

The initial domain is the finite span of smooth group characters

$$
\chi_n(\theta)=\frac{\sin((n+1)\theta)}{\sin\theta},\qquad n=0,1,2,\ldots.
$$

Their apparent endpoint singularities are removable. Their orthonormality follows directly from the sine orthogonality integral with the Haar weight, and their completeness follows from the unitary transformation below. Differentiation gives

$$
\widehat H\chi_n=\frac\kappa2 n(n+2)\chi_n.
$$

These are the spin-$j=n/2$ characters. The energy is $2\kappa j(j+1)$ in this action normalization, and the trivial representation has zero energy.

## Radial operator, domain, and comparison

Define a unitary half-density map to an ordinary interval Hilbert space:

$$
(\mathcal U\psi)(\theta)=\sqrt{\frac2\pi}\sin\theta\,\psi(\theta).
$$

It carries $\chi_n$ to the normalized Dirichlet sine basis. Direct conjugation gives

$$
\boxed{\mathcal U\widehat H\mathcal U^{-1}
=\frac\kappa2(-\partial_\theta^2-1),\qquad
D(\mathcal U\widehat H\mathcal U^{-1})=H^2(0,\pi)\cap H_0^1(0,\pi).}
$$

This operator is self-adjoint, with eigenvalues $\kappa((n+1)^2-1)/2$. The finite sine span is an operator core, so equality on that span proves equality of the closed operators. Equivalently, the original domain consists of expansions $\psi=\sum a_n\chi_n$ satisfying

$$
\sum_{n\geq0}|a_n|^2\bigl[1+n^2(n+2)^2\bigr]<\infty.
$$

These statements prove the exact radial comparison, including the endpoints and the entire spectrum, rather than just agreement of formal differential expressions on the open interval.

The principal-stratum prescription $p\mapsto-i\partial_\theta$ with flat measure would give $-\kappa\partial_\theta^2/2$. Even with the same Dirichlet domain it has an extra constant $\kappa/2$ in every energy. The Haar half-density supplies the missing $-\kappa/2$. Choosing other self-adjoint endpoint extensions would additionally change the spectrum. Neither the measure nor these domain choices are determined by the local Darboux two-form alone.

## Cross-stratum meaning and literature boundary

The two singular points have zero Haar measure and do not contribute additional delta-function vectors to this $L^2$ quantization. Nevertheless, their neighborhoods matter: regularity on the original compact group fixes the radial closure and thereby the endpoint conditions. This is a precise cross-stratum comparison for one Hamiltonian and one polarization. It is not a statement that every quantization of each stratum separately combines canonically into a Hilbert space.

This benchmark is established mathematics. [Huebschmann--Rudolph--Schmidt](https://arxiv.org/pdf/hep-th/0702017), section 2 and section 5.1, describe the same orbit-type quotient and radial-domain issue, and study additional costratified quantum structures. Their single-plaquette model also includes a potential; the calculation here uses the pure electric circle Hamiltonian. The source therefore defeats a novelty claim for this basic comparison. It does not make the explicit calculation unnecessary as a CPS benchmark, nor does it prove a general singular-CPS quantization theorem.

**Verified:** Mathematica gives zero for the invariant relation, all three displayed Poisson brackets, the symbolic character eigenvalue for general $n$, half-density conjugation, Haar normalization, and the constant ground state. Sage checks SU(2) dimensions for labels 0--12 and the Clebsch--Gordan rule for pairs of labels 0--8. The all-label radial spectrum and completeness are proved by the unitary sine-basis comparison in the text.

**Assumptions:** pure SU(2) circle Yang--Mills; no matter or punctures; the stated inner product and $\kappa>0$; conjugation-invariant Haar quantization; smooth-group core and its self-adjoint closure. No extra Hilbert-space sectors supported at singular points are inserted.

**Not verified:** self-sewing maps and their quantum compatibility, which are excluded for this run; general cross-stratum quantization for other gauge theories; uniqueness among other quantization prescriptions; the additional holomorphic costratified projectors in the cited paper.

**Source inspection:** the source PDF was text-extracted, and pages 7 and 24 were rendered and visually checked. The first Sage request mistakenly coerced integers into scalar characters; the corrected request uses one-entry Dynkin-label tuples. Both outputs are preserved, and only the corrected request verifies the representation statements.
