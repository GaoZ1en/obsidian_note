# Metric–Affine Gravity and Matter: Quantizing an Auxiliary Connection Sector

DRAFT — a projectively invariant action, an explicit nonminimal scalar example, and a fully specified finite connection integral. This is not a solution of the joint gravitational Hamiltonian constraints or a complete Standard Model quantum theory.

The metric–affine Einstein–Hilbert action does not make every connection component propagate. Its distortion has an algebraic quadratic form with a four-dimensional projective kernel. Quantization must distinguish that gauge kernel from the auxiliary directions that can be integrated out. This chapter constructs the distinction, including a source, a gauge slice, the Faddeev–Popov determinant, a regulated oscillatory integral and an actual holonomy test. The controlled result is a conditional quantum building block for gravity and matter, not an identification of all continuum quantum theories sharing the same classical equations.

Use the [MAG-01](<MAG-01.md>) conventions: signature $(-,+,+,+)$, $\kappa=8\pi G>0$, derivative-first $\Gamma^\rho{}_{\mu\nu}$, and $Q_{\mu\nu\rho}=-\nabla_\mu g_{\nu\rho}$. Classical dimensions use $c=\hbar=1$. Coordinates have length units, $[N]=L^{-1}$, $[\kappa]=L^2$ and $[\phi]=L^{-1}$. The finite integrals below also use $\hbar=1$; restoration means replacing $I$ by $I/\hbar$ in the phase.

## 1. Fixed Action, Tensor Variables and Boundaries

Let $g$ be a smooth oriented, time-oriented Lorentzian metric in four dimensions and $\Gamma$ a real independent tangent connection. Define the distortion tensor

$$\begin{align}
N^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\bar\Gamma^\rho{}_{\mu\nu}(g), \tag{1.1}
\end{align}$$

where the bar is Levi-Civita. The connection matrices have row $\rho$, column $\nu$, and derivative label $\mu$. For any smooth real one-form $A$, the projective shift is

$$\begin{align}
N^\rho{}_{\mu\nu}\longmapsto N^\rho{}_{\mu\nu}+\delta^\rho_\nu A_\mu.
\tag{1.2}
\end{align}$$

This is not the derivative-slot shift $\delta^\rho_\mu A_\nu$. In matrix language it is $\Gamma_\mu\mapsto\Gamma_\mu+A_\mu I$. It leaves $g$ and the scalar curvature of the Einstein–Hilbert action fixed, even when $dA\ne0$.

Keep the MAG-01 cross trace $u_\mu=N^\rho{}_{\rho\mu}$ and introduce a different trace

$$\begin{align}
a_\mu=\frac14N^\rho{}_{\mu\rho},\qquad \widehat N^\rho{}_{\mu\nu}=N^\rho{}_{\mu\nu}-\delta^\rho_\nu a_\mu,\qquad \zeta_\mu=a_\mu-u_\mu. \tag{1.3}
\end{align}$$

Both $a$ and $u$ shift by $A$, so $\widehat N$ and $\zeta$ are invariant. The trace $a$ is a globally defined one-form because it contracts a tensor. Setting the coordinate trace of $\Gamma$ to zero would not be the same construction. In terms of the MAG-01 traces, $t_\mu=T^\rho{}_{\mu\rho}$ and $q_\mu=g^{\nu\rho}Q_{\mu\nu\rho}$, this is $\zeta_\mu=t_\mu-3q_\mu/8$.

For the bulk analysis, use compactly supported variations and take both $N$ and its source current to vanish near any finite boundary, so the pointwise sourced solution respects the same boundary condition. Allowed projective parameters have the same support condition. Then $A=-a$ is an allowed global gauge choice. On a boundary problem that fixes a nonzero trace connection or restricts allowed shifts differently, that conclusion must be reconsidered. No general finite-boundary quantum amplitude is supplied here.

The action is the metric–affine Einstein–Hilbert action plus a specified matter action. For a real scalar choose

$$
\begin{aligned}
I[g,\Gamma,\phi]
&=\int d^4x\,e\left[\frac{R(g,\Gamma)}{2\kappa}
-\frac12g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi
-\frac12m^2\phi^2+\lambda j^\mu\zeta_\mu\right],\\
e&=\sqrt{-g},\qquad j^\mu=\phi\,g^{\mu\nu}\partial_\nu\phi,
\qquad m^2\ge0,\quad\lambda\in\mathbb R.
\end{aligned}
\tag{1.4}
$$

Here $\lambda$ is a fixed dimensionless real coupling. The last term is an explicitly chosen nonminimal interaction, not minimal scalar coupling and not a Standard Model prescription. Its current is not assumed to be a conserved internal charge. The model is useful because it is covariant, projectively invariant, linear in distortion, and nontrivial. Its physical kinetic domain will be checked after elimination.

## 2. The Auxiliary Form and Its Source Compatibility

MAG-01 derives the exact decomposition

$$\begin{align}
R(g,\Gamma)=\bar R+\bar\nabla_\rho B^\rho+U(N), \tag{2.1}
\end{align}$$

where

$$
\begin{aligned}
v^\rho&=g^{\mu\nu}N^\rho{}_{\mu\nu},\qquad B^\rho=v^\rho-u^\rho,\\
U(N)&=u_\lambda v^\lambda
-g^{\mu\nu}N^\rho{}_{\nu\lambda}N^\lambda{}_{\rho\mu}.
\end{aligned}
\tag{2.2}
$$

The density $e\bar\nabla_\rho B^\rho=\partial_\rho(eB^\rho)$ integrates to zero under our support conditions. No $N$ derivative remains in the bulk action. At fixed metric, package the 64 real distortion components into a column $n$ and write

$$\begin{align}
U(N)=\frac12n^T H n. \tag{2.3}
\end{align}$$

In an orthonormal frame $H$ is a real symmetric numerical matrix. It has rank 60. Its kernel is precisely the four columns of the map

$$\begin{align}
(PA)^\rho{}_{\mu\nu}=\delta^\rho_\nu A_\mu, \qquad HP=0. \tag{2.4}
\end{align}$$

This is an algebraic fibre rank, not a count of physical gravitational polarizations.

Define the connection current with the MAG-01 sign:

$$\begin{align}
\delta I_m=-\frac12\int d^4x\,e\, \Delta_\rho{}^{\mu\nu}\,\delta\Gamma^\rho{}_{\mu\nu} +\text{other variations}. \tag{2.5}
\end{align}$$

For a distortion-linear current held fixed in the connection variation, let $d$ denote its 64-component column. The connection equation is

$$\begin{align}
Hn=\kappa d. \tag{2.6}
\end{align}$$

Contracting with the kernel gives the source condition

$$\begin{align}
P^Td=0,\qquad \Delta_\rho{}^{\mu\rho}=0. \tag{2.7}
\end{align}$$

It follows directly from variation under arbitrary one-form shifts, not from charge conservation under only exact shifts. In our model $\phi$ is invariant, so (2.7) holds off shell as an identity. For a matter action that breaks this symmetry, a nonzero trace cannot be erased by imposing a gauge: it can instead make the chosen source incompatible or impose an additional matter/connection condition.

## 3. An Explicit Sourced Solution and the Reduced Scalar

Varying the last term of (1.4) at fixed metric gives

$$\begin{align}
\Delta_\rho{}^{\mu\nu} =2\lambda\left(\delta^\mu_\rho j^\nu -\frac14\delta^\nu_\rho j^\mu\right),\qquad \Delta_\rho{}^{\mu\rho}=0. \tag{3.1}
\end{align}$$

In the representative $a_\mu=0$, the solution is

$$\begin{align}
\widehat N^\rho{}_{\mu\nu} =\kappa\lambda\left( -\frac14\delta^\rho_\mu j_\nu -\frac18\delta^\rho_\nu j_\mu +\frac34g_{\mu\nu}j^\rho\right). \tag{3.2}
\end{align}$$

The general solution adds $\delta^\rho_\nu A_\mu$. This is not guessed by counting components: substitution in all 64 equations verifies it. One way to derive it is to use the covariant ansatz $N^\rho{}_{\mu\nu}=c_1\delta^\rho_\mu j_\nu+c_2\delta^\rho_\nu j_\mu+c_3g_{\mu\nu}j^\rho$. Write $j^2=g_{\mu\nu}j^\mu j^\nu$ and $(\partial\phi)^2=g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi$. The quadratic form and invariant trace reduce to

$$\begin{align}
U=3(c_1^2+c_3^2+4c_1c_3)j^2,\qquad \zeta_\mu=-\frac34(5c_1+c_3)j_\mu. \tag{3.3}
\end{align}$$

Matching the full equation (2.6) for arbitrary current components gives $c_1=-\kappa\lambda/4$, $c_3=3\kappa\lambda/4$; the gauge trace then gives $c_2=-\kappa\lambda/8$. This does not divide by the current norm, and the full component substitution verifies the solution also for null currents. It also gives

$$\begin{align}
\zeta_\mu=\frac{3\kappa\lambda}{8}j_\mu,\qquad \left.\left(\frac{U}{2\kappa}+\lambda j^\mu\zeta_\mu\right)\right|_{N_*} =\frac{3\kappa\lambda^2}{16}j^2. \tag{3.4}
\end{align}$$

The induced coefficient is positive in the Lagrangian multiplying $j^2$. It is derived for this action, not transferred from an axial Einstein–Cartan contact term. Since $j^2=\phi^2(\partial\phi)^2$, the reduced bulk action is

$$\begin{align}
I_{\mathrm{red}}=\int d^4x\,e\left[ \frac{\bar R}{2\kappa} -\frac12 Z(\phi)(\partial\phi)^2-\frac12m^2\phi^2\right],\qquad Z(\phi)=1-\frac{3\kappa\lambda^2}{8}\phi^2. \tag{3.5}
\end{align}$$

A healthy classical scalar kinetic term requires $Z>0$. For nonzero $\lambda$, this is $|\phi|<\sqrt{8/(3\kappa\lambda^2)}$. At $Z=0$ the scalar Legendre map degenerates; beyond it the kinetic sign is wrong. The connection Hessian can remain rank 60 while the joint matter theory becomes unhealthy. This is a controlled illustrative effective model on a specified branch, not a proposal to extend it to arbitrarily large fields or a fundamental matter theory.

Off shell, fixed-$\Gamma$ metric variation is not fixed-$N$ metric variation because $\bar\Gamma(g)$ contains metric derivatives. Classical substitution gives the reduced metric/matter equations only with the full chain rule and the stated surface conditions; the connection-equation term vanishes on the auxiliary solution. One must not change which variable is held fixed in an unreduced metric equation and call it the same variation.

### The Canonical Scalar Coefficient Is Also Model Dependent

For $ds^2=-N_L^2dt^2+q_{ab}(dx^a+N^a dt)(dx^b+N^b dt)$, write $q=\det q_{ab}$ and use the reduced action. Its scalar momentum is

$$\begin{align}
\Pi_\phi=\frac{\sqrt q\,Z}{N_L} (\dot\phi-N^a\partial_a\phi). \tag{3.6}
\end{align}$$

On $Z>0$, the scalar Hamiltonian is

$$\begin{align}
H_\phi=\int d^3x\left\{ N_L\left[\frac{\Pi_\phi^2}{2\sqrt q\,Z} +\frac{\sqrt q}{2}\left(Zq^{ab}\partial_a\phi\partial_b\phi+m^2\phi^2\right)\right] +N^a\Pi_\phi\partial_a\phi\right\}. \tag{3.7}
\end{align}$$

Use $\omega_{\mathrm{can}}=\int\delta\phi\wedge\delta\Pi_\phi$ and $\{\phi(x),\Pi_\phi(y)\}=\delta^{(3)}(x-y)$. The current contains derivatives, so simply reversing the sign of the induced Lagrangian term while retaining the old momentum would be incorrect. The changed momentum and the $1/Z$ factor follow from the actual Legendre transformation. This supplies a classical matter contribution; it does not define or solve a quantum gravitational scalar constraint.

## 4. A Global Trace Gauge and the Auxiliary Constraints

The condition $a=0$ is a linear global slice for the allowed projective shifts: $a\mapsto a+A$. With $g$ and matter held fixed, the rewritten auxiliary Lagrangian has no distortion velocities. In coordinates $(x,a)$ adapted to its 60 transverse and four gauge directions, all auxiliary momenta vanish. The transverse secondary equations are invertible algebraic equations for $x$, whereas the action is independent of $a$.

In this conditional auxiliary sector, the 60 momentum/secondary pairs are second class and have bracket matrix of rank 120. The four momenta conjugate to $a_\mu$ are first class and generate its arbitrary shifts. Gauge fixing adds four conditions $a_\mu=0$. This distinction, not the claim that all 64 components are second class, explains how the kernel is removed. It is not a complete Dirac analysis of the unreduced metric–matter system, especially when the source contains matter velocities.

The configuration-space Faddeev–Popov matrix for $F_\mu=a_\mu$ is

$$\begin{align}
\frac{\delta F_\mu}{\delta A_\nu}=\delta_\mu{}^\nu, \qquad \det M_{\mathrm{FP}}=1 \tag{4.1}
\end{align}$$

at each regulated point. This simple determinant does not mean there was no gauge volume. If instead one uses $F_\mu=4a_\mu$, then $M_{\mathrm{FP}}=4I$, its determinant is $4^4$, and $\delta^{(4)}(4a)=4^{-4}\delta^{(4)}(a)$ cancels it. The result is independent of that rescaling of the gauge equation.

For a finite ghost representation, choose four Grassmann pairs and orient Berezin integration to extract the coefficient of $\bar c_0c_0\bar c_1c_1\bar c_2c_2\bar c_3c_3$. Then

$$\begin{align}
\int D\bar c\,Dc\,e^{\bar c_\mu M^\mu{}_\nu c^\nu}=\det M. \tag{4.2}
\end{align}$$

The generic four-by-four identity and both FP values are checked in an exact exterior algebra. These are projective gauge ghosts, not physical spin matter. No continuum BRST anomaly or full gravitational constraint algebra follows from this finite determinant.

## 5. A Fully Specified 60-Dimensional Regulated Gaussian

### 5.1 Coordinates and the Measure Jacobian

Choose one cell, a local orthonormal frame, a positive proper four-volume $w=e\,\Delta^4x$, and a reference length $L_0>0$. Set $\mathsf N^\rho{}_{\mu\nu}=L_0N^\rho{}_{\mu\nu}$ and let $\mathbf z=L_0n$ be its ordered component column, so all 64 entries are dimensionless. Order their labels lexicographically as $(\rho,\mu,\nu)$ with each index from 0 to 3.

Construct a 64-by-60 matrix $S$ by taking every component except $\mathsf N^0{}_{\mu0}$ as a free coordinate and imposing the trace-zero equations

$$\begin{align}
\mathsf N^0{}_{\mu0}=-\sum_{r=1}^3\mathsf N^r{}_{\mu r}. \tag{5.1}
\end{align}$$

Write the full column as

$$\begin{align}
\mathbf z=Sx+P\mathfrak a,\qquad \mathfrak a=L_0a,\qquad \mathfrak a_\mu=\frac14\mathsf N^\rho{}_{\mu\rho}. \tag{5.2}
\end{align}$$

The choice of the component labelled 0 defines finite coordinates, not a global preferred frame or the tensorial meaning of the trace gauge. Direct exact algebra gives

$$\begin{align}
|\det(S,P)|=256,\qquad M=S^THS,\qquad \det M=-2^{40},\qquad (n_+,n_-)=(29,31). \tag{5.3}
\end{align}$$

For each derivative label, the four diagonal components are $(-x_1-x_2-x_3+\mathfrak a,\ x_1+\mathfrak a,\ x_2+\mathfrak a,\ x_3+\mathfrak a)$, with absolute Jacobian 4. The four blocks give $d^{64}\mathbf z=256\,d^{60}x\,d^4\mathfrak a$. The finite FP slice measure is therefore $d^{64}\mathbf z\,\delta^{(4)}(\mathfrak a)\det I=256\,d^{60}x$. Its usual gauge-volume interpretation uses the translation measure $d^4(L_0A)$; the infinite group volume itself is not assigned a finite number. A different original field/gauge-volume normalization changes this constant; it must not be silently discarded while claiming an absolute normalized amplitude.

### 5.2 Source Completion, Regulator and Determinant Branch

For the compatible domain $P^Td=0$, let $d_S=S^Td$ and define the dimensionless cell quantities

$$\begin{align}
\mathcal A=\alpha M,\qquad \alpha=\frac{w}{2\kappa L_0^2}>0,\qquad \beta=-\frac{w}{2L_0}d_S. \tag{5.4}
\end{align}$$

The auxiliary cell phase is $\tfrac12x^T\mathcal A x+\beta^Tx$. Its source and density factors follow from $eU/(2\kappa)-e\Delta N/2$, rather than guessing a flat Gaussian coefficient. For $\epsilon>0$, define

$$\begin{align}
Z_\epsilon(d)=256\int_{\mathbb R^{60}}\frac{d^{60}x}{(2\pi)^{30}} \exp\left[\frac i2x^T\mathcal A x+i\beta^Tx-\frac\epsilon2x^Tx\right]. \tag{5.5}
\end{align}$$

The damping uses a positive reference quadratic form on the trace-free coordinates, not the Lorentzian spacetime metric. It is invariant under the projective shifts because $x$ is invariant. It is a specified finite regulator, not a claim of a unique covariant continuum measure or a proof of all Lorentz/diffeomorphism Ward identities.

The real part of $C_\epsilon=\epsilon I-i\mathcal A$ is positive. Orthogonal diagonalization and the actual normalized one-dimensional integral

$$\begin{align}
\frac1{\sqrt{2\pi}}\int_{\mathbb R}dx\, e^{-(\epsilon-ia)x^2/2+ibx} =\frac{\exp[-ib^2/(2(a+i\epsilon))]}{\sqrt{\epsilon-ia}} \tag{5.6}
\end{align}$$

for real $a,b$ give

$$\begin{align}
Z_\epsilon(d)=256\,\det(\epsilon I-i\mathcal A)^{-1/2} \exp\left[-\frac i2\beta^T(\mathcal A+i\epsilon I)^{-1}\beta\right]. \tag{5.7}
\end{align}$$

The determinant square root means the product of the eigenvalue square roots continued from $\epsilon>0$, where each factor has positive real part. It is not an arbitrary principal square root of the determinant after taking the limit. At zero source, the Fresnel limit is

$$\begin{align}
Z_0(0)=256\,|\det\mathcal A|^{-1/2} e^{i\pi(n_+-n_-)/4} =-\frac{i}{4096}\,\alpha^{-30}. \tag{5.8}
\end{align}$$

The 29 positive and 31 negative modes are essential to its phase. This oscillatory object is not a probability density or a positive physical inner product. Its inertia is also not a count of propagating negative-norm particles.

The source-normalized generating function is fully fixed by the same prescription:

$$\begin{align}
\mathcal Z_\epsilon(d)=\frac{Z_\epsilon(d)}{Z_\epsilon(0)} =\exp\left[-\frac i2\beta^T(\mathcal A+i\epsilon I)^{-1}\beta\right], \qquad\mathcal Z_\epsilon(0)=1. \tag{5.9}
\end{align}$$

For the current (3.1), the exact inverse contraction is

$$\begin{align}
d_S^TM^{-1}d_S=-\frac{3\lambda^2}{4}j^2, \qquad \mathcal Z_0(j)=\exp\left[iw\frac{3\kappa\lambda^2}{16}j^2\right]. \tag{5.10}
\end{align}$$

This agrees with the classical source completion but also keeps the determinant, gauge Jacobian and limiting prescription that classical substitution alone does not provide. The arbitrary reference length cancels from the source-dependent phase. Restoring $\hbar$ divides $\mathcal A$ and $\beta$ in the phase definitions by $\hbar$ and yields $e^{iI_{\mathrm{induced}}/\hbar}$.

At finite regulator the conditional mean is $-(\mathcal A+i\epsilon I)^{-1}\beta$ and the connected quadratic moment is $i(\mathcal A+i\epsilon I)^{-1}$. These need not be real positive covariances. They are derivatives of an oscillatory generating function.

### 5.3 Why an Incompatible Trace Source Is Not Gauge Fixed Away

If $P^Td\ne0$, the gauge coordinate carries a phase $\beta_g^T\mathfrak a$, where $\beta_g=-wP^Td/(2L_0)$. With a temporary positive damping $\eta$ on that coordinate,

$$\begin{align}
\int d^4\mathfrak a\,e^{-\eta\mathfrak a^2/2+i\beta_g\cdot\mathfrak a} =\left(\frac{2\pi}{\eta}\right)^2 e^{-\beta_g^2/(2\eta)} \longrightarrow(2\pi)^4\delta^{(4)}(\beta_g). \tag{5.11}
\end{align}$$

Both squares in (5.11) are positive reference-coordinate norms of this finite regulator, not Lorentzian contractions. The limit is distributional. It imposes compatibility instead of disappearing as a source-independent gauge volume. Imposing $\mathfrak a=0$ before noticing the broken symmetry would lose this condition and is not a valid FP treatment. Our scalar model avoids this failure because its trace vanishes identically, before any matter equation is used.

## 6. A Projective Holonomy Calculation with a Real Branch

Along a curve $c(s)$, affine parallel transport is the matrix solution

$$\begin{align}
\dot U=-\dot c^\mu\Gamma_\mu U,\qquad U(0)=I. \tag{6.1}
\end{align}$$

The identity shift commutes with every connection matrix, so

$$\begin{align}
U'[c]=\exp\left(-\int_c A\right)U[c]. \tag{6.2}
\end{align}$$

The ordinary trace of a closed-loop affine transport is frame-conjugation invariant, but is not invariant under this additional projective symmetry. Its value can change even for a closed loop because $A$ is an arbitrary one-form, not necessarily an exact derivative of a globally defined scalar.

For an actual noncommuting example, use a flat coordinate patch and constant matrices

$$\begin{align}
\Gamma_x=aE_{12},\qquad\Gamma_y=bE_{21}, \tag{6.3}
\end{align}$$

with all other entries zero. Traverse a rectangle in the order $+x,+y,-x,-y$ with lengths $L_x,L_y>0$. Since both displayed matrix units square to zero, direct ordered multiplication gives

$$\begin{align}
U=(I+L_y\Gamma_y)(I+L_x\Gamma_x) (I-L_y\Gamma_y)(I-L_x\Gamma_x),\qquad \det U=1,\quad\operatorname{tr}U=4+(abL_xL_y)^2. \tag{6.4}
\end{align}$$

For $A=cx\,dy$, the integral is $cL_xL_y$, and the raw trace becomes $e^{-cL_xL_y}[4+(abL_xL_y)^2]$. A smooth bump equal to one near the loop extends the example with compact support if required by Section 1. This is an off-shell transport test, not a claimed solution of the coupled field equations.

For real transport in oriented endpoint frames, $\det U>0$. Choose the positive real fourth root and define

$$\begin{align}
\widehat U=\frac{U}{(\det U)^{1/4}}. \tag{6.5}
\end{align}$$

Its projective factor cancels exactly: $\det U'=e^{-4\int A}\det U$, so $\widehat U'=\widehat U$. This normalization represents the class modulo the positive central scalings generated by the real shifts. It does not reduce the connection to a metric-compatible Lorentz connection or to $SU(2)$.

The reality/branch qualification matters. If one complexifies the group, $U$ and $iU$ have the same determinant in four dimensions. A principal fourth root therefore gives different normalized matrices; at unit parameters in (6.4), their trace difference is $5(i-1)\ne0$. A suitable projective class removes central multiples without choosing a linear trace on that class. A complex normalized representative instead needs consistent root/branch data; the real positive-root result is not automatically its global extension.

For an open curve, let the endpoint matrices act on vector components as $v'=g v$; they are inverses of the passive frame matrices in [AST-08](<AST-08.md>). Then $U\mapsto g_fUg_i^{-1}$. With positive real roots the normalized matrices transform by the corresponding determinant-normalized endpoint matrices. A closed-loop normalized trace is invariant under those frame conjugations and the stated projective shifts; an open trace is not an endpoint-independent observable. Even the closed-loop expression is not automatically a Dirac observable under all gravitational diffeomorphism/Hamiltonian constraints.

## 7. What Changes the Calculation, and What It Does Not Prove

The Gaussian premise consists of an action linear in scalar curvature, a specified distortion-linear compatible current, and absence of connection derivatives after the boundary term is handled. Changing one premise requires a new analysis.

A variable coefficient is a useful distinction. Replacing $R$ by $F(\phi)R$ gives, after integration by parts,

$$\begin{align}
F\bar R+F U(N)-\partial_\rho F\,B^\rho
\tag{7.1}
\end{align}$$

plus the handled divergence. This can still be algebraic in $N$ when $F\ne0$, but it changes both the quadratic form and its source; at zeros of F its rank can change. Variable coefficients do not universally create propagating connections, nor leave our numerical Gaussian unchanged. Algebraic nonlinear matter terms can change the Hessian or make the auxiliary integral non-Gaussian. Curvature-squared or explicit connection-derivative terms can introduce propagating connection modes; a generic such addition can also break projective symmetry. Auxiliary, Gaussian, projectively invariant and ghost-free are different properties.

Our finite cells give a genuine source-dependent integral with controlled convergence for each $\epsilon>0$ and a specified Fresnel limit. A product of such conditional cell integrals does not establish equality of renormalized physical quantum theories before and after elimination. Metric- and regulator-dependent determinants, field-variable Jacobians, boundary states, counterterms and the remaining gauge constraints all require choices. Sources that depend on matter derivatives make the subsequent matter integral interacting. The determinant factor is not a universal constant when the metric/measure or the action is changed.

There is also no normalized Haar probability on arbitrary noncompact $GL(4,\mathbb R)$ or its noncompact trace-free alternatives. Haar measure is a useful invariant measure, but its total volume is infinite; compact-group averaging cannot simply be copied with a normalization factor. Removing the central projective direction does not make the remaining group compact. Our finite Lebesgue/FP/Fresnel prescription is not a construction of such a Haar probability.

For the action chosen here, eliminating the distortion first gives metric Einstein gravity plus the scalar with Z in (3.5). A reduced canonical route may then use the specific time gauge, boundary conditions and real canonical transformation of [EC-07](<EC-07.md>), together with the scalar Legendre map (3.6)–(3.7). That is one prescribed route. It does not show that quantizing every unreduced affine connection gives the same Hilbert space, nor that all joint Hamiltonian and diffeomorphism constraints have been solved.

No physical spin matter was used in this example. Introducing it into a nonmetric tangent-connection theory requires an explicit Lorentz-projection/Clifford-compatible matter prescription or another specified lift. The induced current and contact coefficient must then be derived from that action. They cannot be imported unchanged from minimal metric-compatible EC or from an independently chosen Holst/nonminimal coupling. Projective FP ghosts are not such a spin-matter prescription.

The finite source condition is an exact translation Ward identity of the stated model/regulator, and the ghost determinant is an exact finite Grassmann identity. Neither is a proof of all continuum Ward identities, anomaly freedom, unitarity, a unique gravity–matter state, or a complete quantum Standard Model coupled to gravity. Only the conditional connection sector with the displayed action, source and measure has been evaluated here.
