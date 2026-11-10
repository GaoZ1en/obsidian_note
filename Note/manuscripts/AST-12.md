# Contact Geometry: Forms, Dynamics, and Spaces of Rays

**AST-12 — DRAFT study chapter**

## Abstract

Contact geometry studies maximally nonintegrable hyperplane distributions on odd-dimensional manifolds. A chosen contact form determines a Reeb field and a contact Hamiltonian calculus, but the distribution alone does not choose that normalization. This chapter constructs the standard local form, its symplectization and exact contactization, and Legendrian submanifolds described by generating functions. It derives Hamilton equations and the Jacobi bracket with signs matched to the symplectic convention $\omega=dq\wedge dp$. Worked examples include a Legendrian cusp, a damped oscillator, a specified thermodynamic energy relation, and global contact forms on a torus and the Hopf three-sphere. Cosphere bundles and a regular space of null geodesics then explain where contact structures arise near four-dimensional spacetime without making spacetime itself odd dimensional. Volume contraction, thermodynamic equations, ray quotients, and choices of scale are kept under their actual hypotheses.

## 1. A Distribution, a Form, and an Odd Dimension

Let $M$ be a smooth manifold of dimension $2n+1$, with $n\geq1$. A contact form is a smooth one-form $\alpha$ such that

$$\begin{align}
\alpha\wedge(d\alpha)^n\ne0
 \tag{1.1}
\end{align}$$

at every point. The power means repeated exterior product. The nonvanishing top form supplies an orientation. Its kernel $\xi=\ker\alpha\subset TM$ is a rank-$2n$ hyperplane distribution: a smoothly varying hyperplane at each point. A contact structure is this distribution with the condition that its local defining forms satisfy (1.1). The exceptional one-dimensional case $n=0$ merely asks that $\alpha$ be nowhere zero; we concentrate on dimensions at least three.

At each point, the restriction $d\alpha|_\xi$ is a nondegenerate skew pairing. To see the equivalence with (1.1), choose a vector $V$ with $\alpha(V)=1$ and a basis of $\xi$. The only contribution to evaluating $\alpha\wedge(d\alpha)^n$ on this full basis is the $n$th exterior power of $d\alpha|_\xi$. A skew form on a $2n$-space has nonzero top exterior power exactly when it is nondegenerate. Thus the hyperplane itself carries a symplectic vector-space structure pointwise, even though the whole manifold is odd dimensional.

If $\widetilde\alpha=f\alpha$ with a nowhere-zero function, then

$$\begin{align}
\widetilde\alpha\wedge(d\widetilde\alpha)^n =f^{n+1}\alpha\wedge(d\alpha)^n. \tag{1.2}
\end{align}$$

Every term containing a second factor of $\alpha$ vanishes. Hence contactness is a property of the distribution, not its chosen defining form. A **coorientation** chooses which transverse direction is positive. Coorientability is equivalent to existence of a global defining form. For a fixed coorientation the allowed rescalings have positive $f$; choosing one form fixes an additional scale. A noncoorientable contact structure can still be defined by compatible local forms, but it has no single global form or globally chosen Reeb normalization of the type used below.

The condition is genuinely nonintegrable. For vector fields $X,Y$ lying in $\xi$,

$$\begin{align}
\alpha([X,Y])=-d\alpha(X,Y). \tag{1.3}
\end{align}$$

Thus their bracket need not stay in the hyperplane. For a nowhere-zero one-form, the Frobenius criterion for integrability of its hyperplanes is $\alpha\wedge d\alpha=0$, whereas a contact form in dimension at least three violates it everywhere. In particular a closed one-form is not contact in these dimensions. Nonintegrability here is a precise bracket statement, not a synonym for chaos or dissipation.

No metric or affine connection is needed to define $d\alpha$. With the derivative-first connection convention, one may rewrite it as

$$\begin{align}
(d\alpha)_{\mu\nu} =\nabla_\mu\alpha_\nu-\nabla_\nu\alpha_\mu +T^\rho{}_{\mu\nu}\alpha_\rho. \tag{1.4}
\end{align}$$

The torsion term restores the ordinary exterior derivative. Using only the two covariant derivatives instead defines a different, connection-dependent expression. Neither torsion nor nonmetricity changes the intrinsic contact condition by being inserted silently into the meaning of $d$.

### 1.1 Why a Real Four-Manifold Is Not a Contact Manifold

Ordinary contact geometry has dimension $2n+1$, not four. A one-form on a four-manifold may instead satisfy $\alpha\wedge d\alpha\ne0$, defining an **even-contact** hyperplane field of rank three. The skew form $d\alpha|_\xi$ then has rank two and an intrinsic characteristic line

$$\begin{align}
\mathcal K=\ker(d\alpha|_\xi)\subset\xi. \tag{1.5}
\end{align}$$

Its rank follows from skew linear algebra on a three-dimensional space. Rescaling $\alpha$ multiplies the restricted form by $f$, so this line is a property of the distribution. It is not the same object as the kernel of $d\alpha$ on the entire four-dimensional tangent space.

For example, on $\mathbb R^4$ with coordinates $(q,p,z,s)$ let

$$\begin{align}
\alpha_0=dz-p\,dq,\qquad \alpha_1=e^s\alpha_0. \tag{1.6}
\end{align}$$

They have the same even-contact distribution and the same characteristic line $\mathcal K=\langle\partial_s\rangle$. For $\alpha_0$, the equations $\alpha_0(R)=1$ and $i_Rd\alpha_0=0$ have the nonunique solutions $R=\partial_z+a\partial_s$, for arbitrary $a$. For $\alpha_1$,

$$\begin{align}
d\alpha_1=e^s\big(ds\wedge(dz-p\,dq)+dq\wedge dp\big) \tag{1.7}
\end{align}$$

is symplectic, so its full kernel is zero and those same Reeb equations have no solution. Even-contact data therefore do not supply the ordinary unique Reeb field. A three-dimensional slice or an odd-dimensional bundle associated with spacetime can have a genuine contact structure, but that is an additional construction. An observer normal's metric dual, for example, restricts to zero on its orthogonal slice and is not automatically a contact form there.

## 2. The Reeb Field Depends on the Chosen Form

For a contact form on an odd-dimensional manifold, the Reeb field is uniquely determined by

$$\begin{align}
\alpha(R)=1,\qquad i_Rd\alpha=0. \tag{2.1}
\end{align}$$

Existence is linear algebra. Start with any $V$ satisfying $\alpha(V)=1$ and solve for $Y\in\xi$ so that $d\alpha(V+Y,\cdot)$ vanishes on $\xi$. Nondegeneracy of $d\alpha|_\xi$ gives a unique $Y$. The remaining value on $R=V+Y$ vanishes by skew symmetry, so the one-form $i_Rd\alpha$ is zero everywhere. The same argument proves uniqueness. Cartan's formula gives

$$\begin{align}
\mathcal L_R\alpha=i_Rd\alpha+d(\alpha(R))=0. \tag{2.2}
\end{align}$$

Thus the Reeb flow preserves the chosen form, not only the distribution.

Its scale dependence is more than division by $f$. For $\widetilde\alpha=e^\sigma\alpha$, let $Y\in\xi$ be the unique field satisfying

$$\begin{align}
i_Yd\alpha=d\sigma-R(\sigma)\alpha. \tag{2.3}
\end{align}$$

The right side annihilates $R$. Evaluation on $Y$ gives $Y(\sigma)=0$. A direct substitution into the two Reeb equations then gives

$$\begin{align}
R_{\widetilde\alpha}=e^{-\sigma}(R+Y). \tag{2.4}
\end{align}$$

On $\mathbb R^3$, take $\alpha=dz-p\,dq$, so $R=\partial_z$. With $\sigma=z$, equation (2.3) gives $Y=-p\partial_p$, hence

$$\begin{align}
R_{e^z\alpha}=e^{-z}(\partial_z-p\partial_p). \tag{2.5}
\end{align}$$

The scale-only guess $e^{-z}\partial_z$ has contraction $-p\,dq$ with $d(e^z\alpha)$ and generally fails. A contact distribution therefore has no canonical Reeb flow until a form or equivalent scale is chosen. These coordinates are geometric and dimensionless in this example; a physical normalization requires its own units.

## 3. Local Normal Form and the Symplectic Constructions

### 3.1 Darboux Form from a Transverse Symplectic Problem

The local normal form for a chosen contact form is

$$\begin{align}
\alpha=dz-\sum_{i=1}^n p_i\,dq^i,\qquad d\alpha=\sum_{i=1}^n dq^i\wedge dp_i,\qquad R=\partial_z. \tag{3.1}
\end{align}$$

With the orientation ordered as $dz,dq^1,dp_1,\ldots,dq^n,dp_n$,

$$\begin{align}
\alpha\wedge(d\alpha)^n =n!\,dz\wedge dq^1\wedge dp_1\wedge\cdots\wedge dq^n\wedge dp_n. \tag{3.2}
\end{align}$$

This is an actual local theorem, not a conclusion from counting first-order Taylor coefficients.

A construction reduces it to the symplectic Darboux theorem. Choose a $2n$-dimensional hypersurface $\Sigma$ transverse to $R$, and use a short Reeb flow segment to identify a neighborhood with $\Sigma\times(-\epsilon,\epsilon)$. Because $\alpha(R)=1$ and (2.2) holds, the pulled-back form is $dz+\beta$, where $\beta$ is independent of $z$. The restriction $d\beta$ is nondegenerate: the kernel of $d\alpha$ is exactly the Reeb line, transverse to $\Sigma$. It is also closed. Symplectic Darboux coordinates on $\Sigma$ give $d\beta=\sum dq^i\wedge dp_i$. Thus $\beta+\sum p_i dq^i$ is closed and locally equals $df$ by the Poincaré lemma. Replacing $z$ by $z+f$ yields (3.1).

The inputs are local flow existence, symplectic Darboux, and the local exactness of a closed one-form; [AST-11](<AST-11.md#L213-L276>) supplies the symplectic deformation argument. Local normal form does not imply that all global contact manifolds are equivalent, that one chart covers them, or that a local flow is complete.

### 3.2 Symplectization

For any cooriented contact manifold, consider $\mathbb R_s\times M$ and define

$$\begin{align}
\Omega=d(e^s\alpha) =e^s(ds\wedge\alpha+d\alpha). \tag{3.3}
\end{align}$$

It is closed by construction. Since $(ds\wedge\alpha)^2=0$ and $(d\alpha)^{n+1}=0$ on the original $(2n+1)$-manifold,

$$\begin{align}
\Omega^{n+1}=(n+1)e^{(n+1)s} ds\wedge\alpha\wedge(d\alpha)^n\ne0. \tag{3.4}
\end{align}$$

Thus this is a symplectic manifold of dimension $2n+2$. The added coordinate is a positive scale, via $e^s>0$, not a newly derived spacetime dimension or a causal time. The sign in (3.3) is explicitly our symplectization convention.

### 3.3 Contactization of an Exact Symplectic Space

Conversely let $(P^{2n},\omega)$ have a global primitive with the cotangent sign convention $\omega=-d\lambda$. On $P\times\mathbb R_z$ put

$$\begin{align}
\alpha=dz-\lambda,\qquad d\alpha=\omega. \tag{3.5}
\end{align}$$

Then $\alpha\wedge(d\alpha)^n=dz\wedge\omega^n$: the term $\lambda\wedge\omega^n$ vanishes because it is pulled back from a $2n$-dimensional space. Hence (3.5) is contact. For a cotangent bundle, $\lambda=p_i dq^i$ and $\omega=dq^i\wedge dp_i$, in agreement with (3.1) and AST-11.

Global exactness is a real hypothesis. On a closed symplectic manifold of positive dimension it is impossible: if $\omega=-d\lambda$, the positive symplectic volume $\omega^n$ would be exact and have zero integral by Stokes. One can still contactize locally, or use an appropriate nontrivial circle bundle when the curvature class is integral. The Hopf example below supplies an explicit circle-bundle model; no global product or quantization rule is inferred from the local formula.

## 4. Legendrians and Actual Generating Functions

An immersed submanifold $L$ tangent to $\xi$ satisfies $\iota^*\alpha=0$, so also $\iota^*d\alpha=d(\iota^*\alpha)=0$. Its tangent spaces are isotropic in the symplectic hyperplanes and have dimension at most $n$. A submanifold of the maximal dimension $n$ is **Legendrian**. In a three-dimensional contact manifold these are curves, not surfaces.

The first-jet space $J^1Q=T^*Q\times\mathbb R$ has the contact form (3.5). A smooth function $f:Q\to\mathbb R$ gives the section

$$\begin{align}
j^1f(q)=(q,p=df_q,z=f(q)),\qquad (j^1f)^*\alpha=0. \tag{4.1}
\end{align}$$

It is Legendrian of dimension $n$. Conversely, a Legendrian whose projection to $Q$ is locally a diffeomorphism has this form: write its height as $z=f(q)$; the pullback of $dz-p_i dq^i$ forces $p_i=\partial_i f$. The projection hypothesis is necessary.

For example the curve

$$\begin{align}
q=t^2,\qquad p=t,\qquad z=\frac23t^3 \tag{4.2}
\end{align}$$

is a smooth Legendrian immersion because $z'-pq'=2t^2-2t^2=0$ and $p'=1$. Its $(q,z)$ front has a semicubical cusp at $t=0$ and cannot be a single smooth graph over $q$ across that point. A different contact chart resolves the generating function:

$$\begin{align}
\widetilde q=p,\qquad \widetilde p=-q,\qquad \widetilde z=z-pq, \qquad d\widetilde z-\widetilde p\,d\widetilde q=dz-p\,dq. \tag{4.3}
\end{align}$$

In the new chart it is the one-jet of $\widetilde f(\widetilde q)=-\widetilde q^3/3$. This is a concrete Legendre coordinate change, not a claim that every Legendrian has one global generating potential.

## 5. Contact Hamilton Equations, Brackets, and Volume

### 5.1 Fixing the Sign Convention

For a smooth function $H$, define $X_H$ by

$$\begin{align}
\alpha(X_H)=-H,\qquad i_{X_H}d\alpha=dH-R(H)\alpha. \tag{5.1}
\end{align}$$

The second right-hand side annihilates $R$. Writing $X_H=-HR+Y_H$, with $Y_H\in\xi$, makes existence and uniqueness follow from the nondegenerate restricted two-form. Cartan's formula gives

$$\begin{align}
\mathcal L_{X_H}\alpha=-R(H)\alpha. \tag{5.2}
\end{align}$$

Thus $X_H$ preserves the contact distribution. Conversely, if $\mathcal L_X\alpha=f\alpha$, set $H=-\alpha(X)$. Evaluating Cartan's formula on $R$ forces $f=-R(H)$, and the remaining equation is (5.1). Smooth Hamiltonians therefore correspond exactly to contact vector fields for a fixed form.

For (3.1), comparison of the coefficients of $dq^i,dp_i,dz$ gives

$$\begin{align}
\boxed{\quad \dot q^i=H_{p_i},\qquad \dot p_i=-H_{q^i}-p_iH_z,\qquad \dot z=\sum_i p_iH_{p_i}-H.\quad} \tag{5.3}
\end{align}$$

Indeed $i_Xd\alpha=\dot q^i dp_i-\dot p_i dq^i$, while $dH-H_z\alpha=(H_{q^i}+p_iH_z)dq^i+H_{p_i}dp_i$. The final equation is exactly $\alpha(X_H)=-H$. For $H=-1$, the field is $R$; for $H=1$, it is $-R$.

### 5.2 The Jacobi Bracket Aligned with the Symplectic Bracket

Use the ordinary field bracket $[X,Y]=X^a\partial_aY-Y^a\partial_aX$. Define

$$\begin{align}
\{F,G\}_c=\alpha([X_F,X_G]) =-X_F(G)-G R(F) =d\alpha(X_F,X_G)+F R(G)-G R(F). \tag{5.4}
\end{align}$$

The second equality follows from (5.2) evaluated on $X_G$; the third follows from (5.1). They also prove antisymmetry. A commutator of contact fields is contact, so the Hamiltonian-field correspondence gives

$$\begin{align}
[X_F,X_G]=-X_{\{F,G\}_c}. \tag{5.5}
\end{align}$$

The map is injective because $F=-\alpha(X_F)$. Apply (5.5) twice to the vector-field Jacobi identity to obtain the Jacobi identity for functions. Thus this is a Lie bracket, not an arbitrary pointwise skew pairing.

In Darboux coordinates it is

$$
\begin{aligned}
 \{F,G\}_c
 &=\sum_i(F_{q^i}G_{p_i}-F_{p_i}G_{q^i})\\
 &\quad+\sum_i p_i(F_zG_{p_i}-F_{p_i}G_z)
       +F G_z-G F_z.
 \end{aligned}
 \tag{5.6}
$$

For functions independent of $z$, this is exactly the canonical Poisson bracket of AST-11, with $\{q^i,p_j\}=\delta^i_j$. The anti-homomorphism sign in (5.5) matches that chapter. Constants are not central for the full contact bracket: $\{1,G\}_c=R(G)$. The product rule is correspondingly modified:

$$\begin{align}
\{F,GL\}_c=\{F,G\}_cL+G\{F,L\}_c-\{F,1\}_cGL, \qquad \{F,1\}_c=-R(F). \tag{5.7}
\end{align}$$

This makes it a Jacobi bracket rather than an ordinary Poisson bracket on all functions.

### 5.3 Energy-Like Functions and Phase Volume

Along an autonomous contact Hamilton trajectory,

$$\begin{align}
\frac{dH}{dt}=X_H(H)=-H R(H). \tag{5.8}
\end{align}$$

The contact volume form $\mu=\alpha\wedge(d\alpha)^n$ satisfies

$$\begin{align}
\mathcal L_{X_H}\mu=-(n+1)R(H)\mu. \tag{5.9}
\end{align}$$

To derive it, differentiate each of the $n+1$ factors using (5.2). The term $d(R(H))\wedge\alpha$ from differentiating $d\alpha$ vanishes when multiplied by the first $\alpha$. The remaining $n+1$ terms agree. Hence a local flow obeys

$$\begin{align}
\Phi_t^*\alpha= \exp\left(-\int_0^t R(H)(\Phi_s(x))\,ds\right)\alpha. \tag{5.10}
\end{align}$$

The volume has the same factor to the power $n+1$. Depending on the sign of $R(H)$ it can contract, expand, or remain unchanged. Reeb flows and $z$-independent Hamiltonians preserve the form and its contact volume. Contact geometry alone is therefore neither a universal dissipation law nor a theorem of microscopic irreversibility.

## 6. Worked Contact Dynamics and Thermodynamic States

### 6.1 A Damped Oscillator with a Reversible Finite-Time Flow

Use $\alpha=dz-p\,dq$ on $\mathbb R^3$, and choose

$$\begin{align}
H=\frac{p^2}{2m}+V(q)+\gamma z, \qquad m>0,\quad\gamma\geq0. \tag{6.1}
\end{align}$$

If $q$ is a length and $p$ its mechanical momentum, $z$ has units of action so both terms of $\alpha$ have the same units. The flow parameter is physical time, $H$ has units of energy, and $\gamma$ has units of inverse time. The contact coordinate $z$ is not that time parameter.

Equation (5.3) gives

$$\begin{align}
\dot q=p/m,\qquad \dot p=-V'(q)-\gamma p,\qquad \dot z=\frac{p^2}{2m}-V(q)-\gamma z. \tag{6.2}
\end{align}$$

Thus $m\ddot q+\gamma m\dot q+V'(q)=0$. For the mechanical energy $E=p^2/(2m)+V(q)$,

$$\begin{align}
\dot E=-\gamma p^2/m,\qquad \dot H=-\gamma H,\qquad \operatorname{div}_{\mu}X_H=-2\gamma. \tag{6.3}
\end{align}$$

The first quantity is mechanical energy; the second includes the action coordinate and is not the same function.

For $V=m\omega_0^2q^2/2$, assume the underdamped range $\nu^2=\omega_0^2-\gamma^2/4>0$. With initial data $(q_0,p_0)$,

$$\begin{align}
q(t)=e^{-\gamma t/2}\left[ q_0\cos(\nu t)+\frac{p_0/m+\gamma q_0/2}{\nu}\sin(\nu t)\right], \qquad p(t)=m\dot q(t). \tag{6.4}
\end{align}$$

The remaining coordinate is the actual quadrature

$$\begin{align}
z(t)=e^{-\gamma t}\left[z_0+ \int_0^t e^{\gamma s}\left(\frac{p(s)^2}{2m}-V(q(s))\right)ds\right]. \tag{6.5}
\end{align}$$

It depends smoothly on the initial data. The $(q,p)$ system is linear and exists for every finite positive or negative time, and so does (6.5). Its fundamental matrix has determinant $e^{-\gamma t}$. Since $q,p$ do not depend on $z_0$ and $\partial z(t)/\partial z_0=e^{-\gamma t}$, the full Jacobian is

$$\begin{align}
\det D\Phi_t=e^{-2\gamma t}>0. \tag{6.6}
\end{align}$$

Thus this finite-time map is a diffeomorphism, with inverse $\Phi_{-t}$, despite forward volume contraction. The example models friction; it does not make a mathematically invertible flow an irreversible loss of microscopic information or derive an entropy-production law.

The domain matters. Here $z\in\mathbb R$; a term $\gamma z$ is not a smooth periodic Hamiltonian on an angular $z$ coordinate. More generally, on a closed contact manifold Stokes gives $\int_M\operatorname{div}_{\mu}X_H\,\mu=0$, so a smooth field cannot have strictly negative divergence everywhere. A boundary supplies a flux term. The unbounded model above does not contradict that compact statement.

### 6.2 A Chosen Equilibrium Energy, Not an Equation of State from Geometry

For a simple thermodynamic model with a fixed amount of matter, choose the five-dimensional state space with coordinates $(S,V,T,-P,U)$ and form

$$\begin{align}
\alpha=dU-T\,dS+P\,dV. \tag{6.7}
\end{align}$$

This identifies $q=(S,V)$, $p=(T,-P)$, and $z=U$. Each term has units of energy: $S$ is entropy, $T$ temperature, $P$ pressure, and $V$ volume. If a contact Hamiltonian flow here is parametrized by physical time, its Hamiltonian has units of power, because $\alpha(X_H)=-H$; it is not automatically a mechanical energy.

Choosing an equilibrium fundamental relation $U=U(S,V)$ defines a Legendrian graph precisely when

$$\begin{align}
T=U_S,\qquad P=-U_V. \tag{6.8}
\end{align}$$

This organizes a proposed first-law model. It does not derive that model, an equation of state, or positive temperature from contactness. Smooth mixed derivatives give the Maxwell relation

$$\begin{align}
\left(\frac{\partial T}{\partial V}\right)_S =-\left(\frac{\partial P}{\partial S}\right)_V. \tag{6.9}
\end{align}$$

For an explicit family, prescribe

$$\begin{align}
U(S,V)=U_0 e^{S/C}\left(\frac V{V_0}\right)^{-a}, \quad U_0,C,V_0,a>0,\quad S\in\mathbb R,\quad V>0. \tag{6.10}
\end{align}$$

Here $C$ has entropy units and $a$ is dimensionless. It yields

$$\begin{align}
T=U/C>0,\qquad P=aU/V>0,\qquad PV=aCT. \tag{6.11}
\end{align}$$

The Hessian has $U_{SS}=U/C^2>0$ and

$$\begin{align}
U_{SS}U_{VV}-U_{SV}^2=\frac{aU^2}{C^2V^2}>0. \tag{6.12}
\end{align}$$

Thus this chosen energy is strictly convex in $(S,V)$. At fixed $V$, $U=CT$ gives the model heat capacity $C_V=C$. These relations and their parameter values come from the explicit function (6.10), not from the local equivalence of contact structures. No law $\dot S\geq0$ has been assumed or proved by specifying a Legendrian equilibrium surface.

## 7. Two Global Three-Dimensional Examples

### 7.1 A Helicity Test and an Elementary Reeb Flow

On an oriented Riemannian three-manifold, let $\alpha=A^\flat$. Define curl by $i_{\operatorname{curl}A}dV=d\alpha$. Then

$$\begin{align}
\alpha\wedge d\alpha=(A\cdot\operatorname{curl}A)dV. \tag{7.1}
\end{align}$$

Where $h=A\cdot\operatorname{curl}A\ne0$, the contact form has

$$\begin{align}
R=\frac{\operatorname{curl}A}{h}. \tag{7.2}
\end{align}$$

Indeed $\alpha(R)=1$, and $i_Rd\alpha=0$ follows by contracting the volume form twice with the same curl vector. If $\operatorname{curl}A=\lambda A$ with $\lambda\ne0$, then, at nonzero points of the field, $R=A/|A|^2$, not necessarily $A$. A zero of the field is a failure of contactness, not merely a removable normalization issue. The metric is needed for these vector/curl expressions, but not for the original contact condition.

On the flat three-torus with angle coordinates $x,y,z$ of period $2\pi$, take

$$\begin{align}
\alpha=\cos z\,dx+\sin z\,dy,\qquad A=(\cos z,\sin z,0). \tag{7.3}
\end{align}$$

For orientation $dx\wedge dy\wedge dz$, $\operatorname{curl}A=-A$, $h=-1$, and $|A|=1$. Hence $R=A$ and

$$\begin{align}
(x(t),y(t),z(t))=(x_0+t\cos z_0,\ y_0+t\sin z_0,\ z_0) \tag{7.4}
\end{align}$$

modulo the periods. The contact form is nowhere degenerate, yet its Reeb flow is explicitly linear on each constant-$z$ torus. Contactness does not force chaotic dynamics, nor does a Reeb flow contract its contact volume.

### 7.2 The Hopf Form and Its Normalization

In $\mathbb C^2$ with real coordinates $(x_1,y_1,x_2,y_2)$, restrict to the unit sphere and set

$$\begin{align}
\alpha_H=\left.(x_1dy_1-y_1dx_1+x_2dy_2-y_2dx_2)\right|_{S^3}. \tag{7.5}
\end{align}$$

Let $N$ be the ambient radial field and orient $S^3$ as the boundary of the unit ball. Direct exterior multiplication gives

$$\begin{align}
\alpha_H\wedge d\alpha_H=2\,i_N (dx_1\wedge dy_1\wedge dx_2\wedge dy_2)|_{S^3} =2dV_{S^3}. \tag{7.6}
\end{align}$$

Its Reeb field is

$$\begin{align}
R_H=\sum_{j=1}^2(x_j\partial_{y_j}-y_j\partial_{x_j}). \tag{7.7}
\end{align}$$

The form evaluates on it to $|z_1|^2+|z_2|^2=1$. Moreover $i_{R_H}d\alpha_H=-d(|z_1|^2+|z_2|^2)$ in the ambient space, which vanishes on tangent vectors to the unit sphere. The Reeb flow is simultaneous phase rotation $(z_1,z_2)\mapsto(e^{it}z_1,e^{it}z_2)$ of period $2\pi$.

For the Hopf quotient $S^3\to\mathbb{CP}^1$, use the section $s(w)=(w,1)/\sqrt{1+|w|^2}$, $w=u+iv$. Its pulled-back connection form is

$$\begin{align}
A=\frac{u\,dv-v\,du}{1+u^2+v^2},\qquad dA=\frac{2\,du\wedge dv}{(1+u^2+v^2)^2}. \tag{7.8}
\end{align}$$

The curvature extends over the second projective chart. With the complex-chart orientation, its base integral is $2\pi$, since the polar-coordinate integral is $2\pi\int_0^\infty 2r(1+r^2)^{-2}dr=2\pi$. This fixes both the period and curvature normalization of this concrete circle-bundle contact example. The sign of a named associated complex line's Chern class also depends on whether one uses that representation or its dual; no unannounced line-bundle sign is needed here. The base curvature is not globally exact on the closed sphere, so this is not a trivial product contactization. It is a classical geometric construction, not a derivation of a quantum state space or a vacuum.

## 8. Cosphere Bundles and Null-Geodesic Spaces

### 8.1 Contact Geometry on a Cosphere Bundle

Let $Q$ be a smooth manifold of dimension $m\geq2$. On $T^*Q$ the tautological form is $\lambda=p_i dq^i$ and the symplectic form is $\omega=-d\lambda=dq^i\wedge dp_i$. Positive fibre scaling acts on nonzero covectors by $p\mapsto cp$, $c>0$. Although $\lambda$ scales and is not itself a form on the quotient, its kernel induces a canonical contact distribution on the positive ray bundle, of dimension $2m-1$.

A positive Riemannian metric $h$ selects a section of each ray,

$$\begin{align}
S_h^*Q=\{(q,p):h^{-1}(p,p)=1\},\qquad \alpha=\lambda|_{S_h^*Q}. \tag{8.1}
\end{align}$$

To verify contactness, let $E=p_i\partial_{p_i}$. It is transverse to this level surface and satisfies $i_E\omega=-\lambda$. Therefore $i_E(\omega^m)=-m\lambda\wedge\omega^{m-1}$ restricts to a nonzero volume form on the level surface. Up to its nonzero sign, that is $\alpha\wedge(d\alpha)^{m-1}$. A different positive metric selects a different section of the same ray bundle, scaling the form by a positive function. The distribution is unchanged, while the Reeb field need not be.

More generally put $K=\tfrac12h^{-1}(p,p)$ and use the Hamilton convention $i_{X_K}\omega=dK$. On the positive level $K=E_0$, Euler homogeneity gives $\lambda(X_K)=2E_0$. Since $i_{X_K}d\lambda=-dK$ vanishes on the level surface,

$$\begin{align}
R=\frac1{2E_0}X_K\big|_{K=E_0}. \tag{8.2}
\end{align}$$

Eliminating the momentum in these kinetic Hamilton equations gives Riemannian geodesics, as worked out in [the metric Hamiltonian construction](<AST-11.md#L195-L211>). In geometric normalization $E_0=1/2$, these are the usual unit-speed geodesic-flow equations. If $K$ is given physical kinetic-energy units, (8.2) explicitly fixes the conversion of the Reeb parameter; it must not silently be identified with physical Hamiltonian time.

Quotienting by all nonzero real scalars also identifies $p$ and $-p$. The contact distribution descends, but its coorientation may not. Choosing positive rays, a norm, and a contact form are distinguishable steps. For a four-dimensional base $Q$, its cosphere bundle has dimension seven, not four. For a three-dimensional spatial slice, it has dimension five.

### 8.2 A Null Shell, Two Quotients, and Regularity Assumptions

Let $(X^4,g)$ be a smooth time-oriented Lorentzian spacetime with signature $(-,+,+,+)$. On $T^*X$ let

$$\begin{align}
K(x,p)=\frac12g^{\mu\nu}(x)p_\mu p_\nu, \qquad \mathcal N^+=\{K=0,\ p\ne0,\ p^\sharp\text{ future directed}\}. \tag{8.3}
\end{align}$$

This is a seven-dimensional null-covector shell. Its Hamilton characteristic line is generated locally by $X_K$, whose base curves are null geodesics. Fibre homogeneity gives $\lambda(X_K)=2K=0$ on the shell. Also $\mathcal L_{X_K}\lambda=dK$ restricts to zero there, because $d\lambda=-\omega$. Hence $\lambda|_{\mathcal N^+}$ is horizontal and invariant for that characteristic foliation.

If its quotient is a smooth six-dimensional manifold with the quotient map a submersion, this one-form descends. The restricted symplectic form has precisely that characteristic kernel, so it descends to a nondegenerate two-form on the quotient. Homogeneity makes positive momentum scaling preserve the characteristic foliation; its quotient then removes one more dimension. On a regular scaling quotient, choosing any positive-scale section gives a contact form; radial contraction of the six-dimensional symplectic volume proves nonvanishing just as for the cosphere construction. Different sections scale the contact form. These are regular-quotient hypotheses, not automatic consequences of local geodesic equations; otherwise a proposed global ray space may fail to be a Hausdorff smooth manifold.

A standard sufficient global setting is a globally hyperbolic spacetime with a smooth spacelike Cauchy surface $\Sigma$. Every inextendible future null geodesic crosses $\Sigma$ once. Its covector at that crossing, modulo positive scale, supplies a point of $S^*\Sigma$; normalization relative to the future unit normal fixes a representative. This gives the usual contact identification of the space of unparametrized future null geodesics with the spherical cotangent bundle of $\Sigma$, as described in [Chernov–Nemirovski, Section 4](https://arxiv.org/html/0810.5091v2). No affine geodesic-completeness assumption is inferred from global hyperbolicity. The quotient construction and contact distribution, rather than any preferred global Reeb clock, are what are intrinsic.

### 8.3 An Explicit Minkowski Ray Space

Here a ray means an oriented, inextendible null geodesic, not a half-line with a distinguished starting event. In Minkowski space with $c=1$, each such ray can be written uniquely as

$$\begin{align}
x(t)=x_0+t u,\qquad x_0\in\mathbb R^3,\quad u\in S^2. \tag{8.4}
\end{align}$$

Thus its unparametrized ray space is $\mathbb R^3\times S^2$, dimension five, and the normalization at the slice $t=0$ gives

$$\begin{align}
\alpha=u\cdot dx_0,\qquad R=u\cdot\partial_{x_0}. \tag{8.5}
\end{align}$$

The contact condition follows from the cosphere argument. Directly, $\alpha(R)=1$, and
$i_Rd\alpha=-u\cdot du=-\tfrac12d(|u|^2)$ vanishes on the unit-direction sphere.

The flow of this Reeb field changes the label $x_0$ to $x_0+s u$. At the fixed time slice this is a different null geodesic. It is not the null-geodesic flow pushed down to its own quotient: that already-removed flow projects to zero. A Reeb interpretation on ray space has used the chosen slice and normalized form. Confusing these two flows would incorrectly turn a quotient point into an orbit on the same quotient.

There is also a concrete Legendrian. Rays passing through the event $(t_*,x_*)$ form the two-sphere

$$\begin{align}
\mathfrak S_{(t_*,x_*)}=\{(x_0=x_*-t_*u,\ u):u\in S^2\}. \tag{8.6}
\end{align}$$

On it, $\alpha=u\cdot d(x_*-t_*u)=-t_*u\cdot du=0$. Its dimension is two, the maximal Legendrian dimension in the five-dimensional ray space. This calculation concerns a specified regular Minkowski model; it is not a general causality-linking theorem or a Penrose transform.

## 9. Scope of the Geometric Conclusions

| Construction | Dimension | Extra choices or hypotheses |
|---|---:|---|
| Contact manifold | $2n+1$ | Contact distribution; a coorientation/form for a global Reeb field |
| Symplectization | $2n+2$ | Positive scale bundle, locally written as $e^s$ |
| Exact contactization of a phase space | $2n+1$ | A primitive with $\omega=-d\lambda$ |
| Cosphere bundle of a four-manifold | 7 | A positive norm chooses a form; ray distribution is canonical |
| Regular future null-ray space in four-dimensional spacetime | 5 | Regular quotient; global hyperbolicity with a Cauchy surface is a sufficient setting |
| Real spacetime itself | 4 | May carry other structures, including an even-contact hyperplane field, but is not an ordinary contact manifold |

Contact coordinates describe geometry of distributions, state spaces, phase extensions, or families of rays. Their dimensions are not evidence for extra physical spacetime dimensions or a matter spectrum. A chosen Hamiltonian supplies dynamics; a fundamental energy relation supplies thermodynamics; an equation of state, entropy-production model, gravity action, quantum measure, or vacuum requires further input. Local Darboux equivalence and finite polynomial checks do not establish those global or physical conclusions.

## References

[1] H. Geiges, *An Introduction to Contact Topology*, Cambridge Studies in Advanced Mathematics **109**, Cambridge University Press, 2008. Contact distributions, Reeb fields, Darboux theory, symplectization, and Legendrian geometry.

[2] V. I. Arnold, *Mathematical Methods of Classical Mechanics*, 2nd ed., Springer, 1989. Symplectic and contact constructions and generating functions. Bracket conventions must be translated to the explicitly declared convention in Section 5.

[3] V. Chernov and S. Nemirovski, “Legendrian links, causality, and the Low conjecture,” *Geometric and Functional Analysis* **19** (2010), 1320–1333. [ArXiv:0810.5091](https://arxiv.org/abs/0810.5091); [HTML, Section 4](https://arxiv.org/html/0810.5091v2), for the contact structure on the null-geodesic space of a globally hyperbolic spacetime. No linking theorem from that paper is used here.

[4] [AST-11: Symplectic Geometry and Phase Space](<AST-11.md>) fixes $\omega=dq^i\wedge dp_i$, $i_{X_H}\omega=dH$, and the canonical Poisson bracket used in this chapter.
