# Spinor Variables for Metric–Affine Gravity

DRAFT — a full vector-bispinor dictionary, a Lorentz-projected Dirac coupling, and its explicitly solved connection sector. Bounded independent review recorded.

A general affine connection can be written in two-spinor indices once a Lorentzian metric and soldering map have been chosen. That rewriting does not make it an ordinary connection on a two-component spinor bundle. We construct the missing nonmetric term explicitly, distinguish its curvature from the projected spin curvature, and solve a specified Einstein–Hilbert–Dirac model. Its connection reduces to Einstein–Cartan modulo a real projective one-form. A different, projectively invariant matter coupling does not share that reduction.

The affine conventions are those of [MAG-01](<MAG-01.md>) and [AST-06](<AST-06.md>); the spin and soldering conventions follow [AST-07](<AST-07.md>) and [AST-13](<AST-13.md>). [AST-14](<AST-14.md>) supplies the separate, conditional twistor-space construction. The distinction between a pointwise tensor dictionary and a holomorphic correspondence is essential throughout.

## 1. Metric, Coframe and the Full Connection

Let $M$ be a smooth oriented, time-oriented Lorentzian four-manifold. Assume a spin structure for its proper orthochronous orthonormal frame bundle. This is additional global data, not a consequence of writing local Pauli matrices. Work in a coframe patch with

$$\begin{align}
g=\eta_{ab}e^a\otimes e^b,\qquad \eta=\operatorname{diag}(-1,1,1,1),\qquad \varepsilon_{0123}=+1. \tag{1.1}
\end{align}$$

Frame indices run from $0$ to $3$. All fields are smooth; the example below is local. Classical action units are $c=\hbar=1$, coordinates have length units, and $\kappa=8\pi G>0$. Thus $[N]=L^{-1}$, $[\Psi]=L^{-3/2}$ and $[\kappa]=L^2$. Metric/coframe and the real affine connection are independent variables. In derivative-first notation,

$$\begin{align}
\nabla_\mu V^\rho=\partial_\mu V^\rho+ \Gamma^\rho{}_{\mu\nu}V^\nu,\qquad T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu},\qquad Q_{\mu\nu\rho}=-\nabla_\mu g_{\nu\rho}. \tag{1.2}
\end{align}$$

The coframe equation defines the full matrix connection one-form $\mathsf A$:

$$\begin{align}
\partial_\mu e^a{}_{\nu}+\mathsf A^a{}_{b\mu}e^b{}_{\nu} -\Gamma^\rho{}_{\mu\nu}e^a{}_{\rho}=0,\qquad \mathsf A^a{}_b=\mathsf A^a{}_{b\mu}dx^\mu. \tag{1.3}
\end{align}$$

For an endomorphism $X$ set $X^\sharp=\eta^{-1}X^{\mathsf T}\eta$. Split the connection by that metric adjoint:

$$\begin{align}
\mathsf A=\omega+\Sigma,\qquad \omega=\tfrac12(\mathsf A-\mathsf A^\sharp),\qquad \Sigma=\tfrac12(\mathsf A+\mathsf A^\sharp). \tag{1.4}
\end{align}$$

After lowering the first frame index, $\omega_{ab}$ is antisymmetric and $\Sigma_{ab}$ symmetric. Since $\eta$ is constant in this frame,

$$\begin{align}
Q_{ab}:=Q_{\mu ab}dx^\mu=-D_{\mathsf A}\eta_{ab} =\mathsf A_{ab}+\mathsf A_{ba}=2\Sigma_{ab}. \tag{1.5}
\end{align}$$

Under a proper Lorentz coframe change $\Lambda$, $\mathsf A$ transforms as $\Lambda\mathsf A\Lambda^{-1}-d\Lambda\Lambda^{-1}$. The inhomogeneous term is $\eta$-antisymmetric. Consequently $\omega$ transforms as a Lorentz connection and $\Sigma$ as a Lorentz tensor-valued one-form. The construction glues on the metric reduction; it does not require a global coframe.

The corresponding metric-compatible tangent connection is

$$\begin{align}
(\Gamma^\omega)^\rho{}_{\mu\nu} =\Gamma^\rho{}_{\mu\nu}-\frac12g^{\rho\lambda}Q_{\mu\lambda\nu}. \tag{1.6}
\end{align}$$

Substitution into its metric derivative gives zero: each covariant metric slot cancels one half of $Q$. This operation generally changes torsion:

$$\begin{align}
(T^\omega)^a=T^a-\Sigma^a{}_b\wedge e^b,\qquad T^a=de^a+\mathsf A^a{}_b\wedge e^b. \tag{1.7}
\end{align}$$

It is not the contorsion/disformation separation of [MAG-01](<MAG-01.md>). There, removing the disformation preserves the prescribed full torsion. Here removing the $\eta$-symmetric connection part preserves metric compatibility but need not preserve that torsion.

## 2. What Does, and Does Not, Lift to Ordinary Spinors

On the Dirac Clifford module $\mathcal S=\bar S^*\oplus S$, with $S$ the two-component fundamental spin space, an ordinary Clifford-compatible spinor connection satisfies

$$\begin{align}
\nabla^{\mathcal S}_\mu(c_g(v)\psi)= c_g(\nabla^\Gamma_\mu v)\psi+c_g(v)\nabla^{\mathcal S}_\mu\psi, \qquad \{c_g(v),c_g(w)\}=-2g(v,w)I. \tag{2.1}
\end{align}$$

Differentiate the second identity using the first. The induced connection on endomorphisms is a derivation and annihilates $I$. The terms involving derivatives of $v$ and $w$ cancel, leaving $(\nabla^\Gamma g)(v,w)=0$. Thus **ordinary Clifford compatibility with the full tangent connection forces $Q=0$**. Torsion need not vanish. Adding a scalar module connection commuting with all Clifford matrices does not evade this argument.

For arbitrary $\Gamma$, $\omega$ in (1.4) still has an ordinary spin lift on the assumed spin bundle. It lifts $\Gamma^\omega$, not the original nonmetric $\Gamma$. We now construct precisely what remains when the full connection is expressed in spinor indices.

Use

$$
\epsilon_{AB}=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
(\epsilon^{AB})=(\epsilon_{AB})^{-1}=-\epsilon,
\qquad s_a=(I,\sigma_1,\sigma_2,\sigma_3).
\tag{2.2}
$$

Here $\sigma_i$ are the Pauli matrices. For a real frame vector $v$, $X(v)=s_av^a$ is Hermitian and $\det X=-\eta_{ab}v^av^b$. The inverse soldering coefficients are $\tau^a=s_a^{\mathsf T}/2$, so

$$\begin{align}
v^{AA'}=s_a{}^{AA'}v^a,\qquad \alpha_{AA'}=\tau^a{}_{AA'}\alpha_a,\qquad \sum_{AA'}\tau^a{}_{AA'}s_b{}^{AA'}=\delta^a_b. \tag{2.3}
\end{align}$$

The map $\tau$ is the inverse linear map, not a casually metric-raised copy of $s$. The induced covariant metric and its inverse are

$$\begin{align}
h_{AA'BB'}=-\tfrac12\epsilon_{AB}\epsilon_{A'B'},\qquad h^{AA'BB'}=-2\epsilon^{AB}\epsilon^{A'B'}. \tag{2.4}
\end{align}$$

For real Lorentzian geometry the primed space is the conjugate of the unprimed space. On a complexification they may be independent; that change of reality condition must be declared.

Let $G$ be the traceless two-component connection lifting $\omega$. Its action is $dX+GX+XG^\dagger$. An explicit construction is

$$\begin{align}
b_i=\omega^0{}_i,\quad \omega^i{}_j=-\varepsilon_{ijk}r_k, \qquad G=\frac12(b_i-ir_i)\sigma_i. \tag{2.5}
\end{align}$$

For the Dirac representation we retain

$$
\Psi=\begin{pmatrix}\chi_{A'}\\\psi^A\end{pmatrix},\qquad
\rho(A)=\operatorname{diag}((A^\dagger)^{-1},A),\qquad
\gamma_5=\operatorname{diag}(-I,I),\qquad A\in SL(2,\mathbb C).
\tag{2.6}
$$

Thus the fundamental unprimed upper space is the positive-$\gamma_5$ (right-handed) block; the negative-$\gamma_5$ (left-handed) block is the conjugate dual. Spatial rotations identify the two rotation doublets but do not reverse this Lorentz/chirality dictionary. An explicit realization is

$$
\gamma^0=\begin{pmatrix}0&I\\I&0\end{pmatrix},\qquad
\gamma^i=\begin{pmatrix}0&\sigma_i\\-\sigma_i&0\end{pmatrix},\qquad
\gamma_5=i\gamma^0\gamma^1\gamma^2\gamma^3.
$$

It obeys $\{\gamma^a,\gamma^b\}=-2\eta^{ab}$. The lifted connection and adjoint are

$$\begin{align}
\Omega=-\frac14\omega_{ab}\gamma^{ab} =\operatorname{diag}(-G^\dagger,G),\qquad \gamma^{ab}=\tfrac12[\gamma^a,\gamma^b],\qquad \bar\Psi=\Psi^\dagger\gamma^0. \tag{2.7}
\end{align}$$

Both antisymmetric frame indices are summed. The sign gives $[\Omega_\mu,\gamma^a]=-\omega^a{}_{b\mu}\gamma^b$ and preserves the Dirac adjoint pairing.

### The Additional Bispinor Term

Separate the $\eta$-symmetric part into trace and trace-free pieces:

$$\begin{align}
p=\tfrac14\operatorname{tr}\mathsf A,\qquad \widehat\Sigma_{ab}=\Sigma_{ab}-p\eta_{ab},\qquad \Xi_{ABA'B'}=\tau^a{}_{AA'}\tau^b{}_{BB'}\widehat\Sigma_{ab}. \tag{2.8}
\end{align}$$

Each is a one-form. Symmetry and zero metric trace of $\widehat\Sigma$ imply that $\Xi$ is symmetric in $AB$ and in $A'B'$. Reality makes its $3\times3$ matrix of symmetric-pair components Hermitian, hence nine real components per derivative direction. The antisymmetric-unprimed/antisymmetric-primed part of a symmetric two-tensor is precisely the metric trace, which has been removed.

The full affine connection on vector bispinors is

$$
\begin{aligned}
\mathcal A^{AA'}{}_{BB'}
={}&G^A{}_B\delta^{A'}{}_{B'}
+\delta^A{}_B\overline G^{A'}{}_{B'}
+p\delta^A{}_B\delta^{A'}{}_{B'}\\
&-2\epsilon^{AC}\epsilon^{A'C'}\Xi_{CB C'B'}.
\end{aligned}
\tag{2.9}
$$

The factor $-2$ is the inverse metric in (2.4). Substitution of (2.3) into $s_a\mathsf A^a{}_b\tau^b$ reconstructs (2.9) for all $16$ real matrix entries. Full vector transport is $dV^{AA'}+\mathcal A^{AA'}{}_{BB'}V^{BB'}$, not just the first two terms. There are $6$ Lorentz, $1$ trace and $9$ shear components per direction, giving $24+4+36=64$ in four dimensions. These are local fibre coordinates, not physical mode counts.

$\Xi$ cannot generally be absorbed into an ordinary connection on $S$. Indeed the real-vector action induced by any complex $2\times2$ matrix $K$ is $\delta X=KX+XK^\dagger$. Its metric variation is conformal: $L^{\mathsf T}\eta+\eta L=2\operatorname{Re}(\operatorname{tr}K)\eta$. The real-linear image has dimension $7$, with imaginary scalar $K$ in its kernel. Allowing a trace on $K$ therefore adds at most conformal scaling, not the nine shear directions. It also changes $\epsilon$ compatibility. The stronger obstruction to an ordinary fixed-metric Clifford lift was already proved in (2.1); the rank calculation is a calibration, not its proof.

## 3. Curvature, Torsion and an Explicit Nonmetric Calibration

Matrix multiplication of one-forms includes the wedge product. Set

$$\begin{align}
\mathcal R(\mathsf A)=d\mathsf A+\mathsf A\wedge\mathsf A, \qquad \mathcal R^a{}_b=\tfrac12R^a{}_{bcd}e^c\wedge e^d, \qquad R_{bd}=R^a{}_{bad},\quad R=\eta^{bd}R_{bd}. \tag{3.1}
\end{align}$$

This agrees with derivative-first coordinate curvature in [MAG-01](<MAG-01.md>). Expanding (1.4) gives

$$
\begin{aligned}
\mathcal R(\mathsf A)&=\mathcal R(\omega)+D_\omega\Sigma+\Sigma\wedge\Sigma,\\
D_\omega\Sigma&=d\Sigma+\omega\wedge\Sigma+\Sigma\wedge\omega,\\
\mathcal R(\mathsf A)_{[ab]}&=\mathcal R(\omega)_{ab}+(\Sigma\wedge\Sigma)_{ab},\\
\mathcal R(\mathsf A)_{(ab)}&=(D_\omega\Sigma)_{ab}.
\end{aligned}
\tag{3.2}
$$

For one-form matrices, taking the metric transpose reverses matrix order and contributes a minus from interchanging the one-forms. Hence the commutator of two $\eta$-symmetric coefficient matrices is $\eta$-antisymmetric: $\Sigma\wedge\Sigma$ belongs in the third line, not the fourth.

The actual ordinary spin curvature is

$$\begin{align}
F_S=d\Omega+\Omega\wedge\Omega =-\frac14\mathcal R(\omega)_{ab}\gamma^{ab}. \tag{3.3}
\end{align}$$

Replacing $\mathcal R(\omega)$ by the antisymmetric part of full affine curvature would add a generally nonzero $\Sigma\wedge\Sigma$ term. The Cartan identities for the full connection instead read $D_{\mathsf A}T=\mathcal R(\mathsf A)\wedge e$ and $D_{\mathsf A}Q_{ab}=2\mathcal R(\mathsf A)_{(ab)}$. Their component expressions include the torsion terms displayed in [AST-06](<AST-06.md>). They do not impose the torsion-free Riemannian curvature symmetries.

### A Constant Eta-Symmetric Connection with Curved Affine Transport

Take $e^a=(dt,dx,dy,dz)$, a real constant $\lambda_0\ne0$ of dimension inverse length, and the matrices

$$\begin{align}
\mathsf M=\operatorname{diag}(0,1,-1,0),\qquad \mathsf N=E_{12}+E_{21},\qquad \mathsf A=\Sigma=\lambda_0(\mathsf M\,dx+\mathsf N\,dy). \tag{3.4}
\end{align}$$

Matrix rows are ordered $0,1,2,3$. Both matrices are $\eta$-symmetric, so $\omega=\Omega=0$. Direct evaluation gives

$$
\begin{aligned}
Q_{11}&=2\lambda_0dx,&Q_{22}&=-2\lambda_0dx,&Q_{12}=Q_{21}&=2\lambda_0dy,\\
T^2&=-2\lambda_0dx\wedge dy,&T^0=T^1=T^3&=0,\\
\mathcal R^1{}_2&=2\lambda_0^2dx\wedge dy,&
\mathcal R^2{}_1&=-2\lambda_0^2dx\wedge dy,&R&=4\lambda_0^2.
\end{aligned}
\tag{3.5}
$$

The remaining $Q$ and curvature entries vanish. For example $T^2$ comes from $\lambda_0dy\wedge dx-\lambda_0dx\wedge dy$. Curvature is $\lambda_0^2[\mathsf M,\mathsf N]dx\wedge dy$. Its first pair is antisymmetric although $Q$ is nonzero; that curvature symmetry alone does not prove compatibility. The naive right side of (3.3) using full affine curvature would be $-\lambda_0^2\gamma^{12}dx\wedge dy$, whereas the actual $F_S$ is zero.

This is an **off-shell geometric calibration**, not a vacuum solution of the minimal action later chosen. It can be used inside a coframe patch; no finite-action claim for a constant connection over all of spacetime is needed. It also shows concretely that $T^\omega$ can vanish while the full $T$ does not.

## 4. Rewriting Full Curvature Is Not the Levi-Civita Spinor Decomposition

For each real endomorphism label $a,b$, pull back only the two-form slots:

$$
\begin{aligned}
R^a{}_{b\,AA'BB'}&=\tau^c{}_{AA'}\tau^d{}_{BB'}R^a{}_{bcd},\\
R^a{}_{b\,AA'BB'}&=\varphi^a{}_{bAB}\epsilon_{A'B'}
+\overline\varphi^a{}_{bA'B'}\epsilon_{AB},\\
\varphi^a{}_{bAB}&=-\tfrac12\epsilon^{A'B'}R^a{}_{b\,AA'BB'}.
\end{aligned}
\tag{4.1}
$$

The unprimed coefficients are symmetric. The minus follows from $\epsilon^{AB}\epsilon_{AB}=-2$. For general complex curvature the primed coefficient is independent rather than the displayed conjugate. The endomorphism slots can also be converted with $s_a$ and $\tau^b$; this is a complete pointwise tensor conversion, not an additional field equation.

With the fixed orientation, $*^2=-1$ on two-forms. The unprimed component has Hodge eigenvalue $+i$, as in [AST-13](<AST-13.md>). In the example (3.5),

$$
\varphi^1{}_{2AB}=\frac{i\lambda_0^2}{2}
\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\tag{4.2}
$$

It is nonzero even though projected spin curvature vanishes. Moreover a general nonmetric connection need not preserve the Hodge splitting under parallel differentiation. For the constant test form $F=e^0\wedge e^1$ in that example,

$$\begin{align}
\nabla^\Gamma_{\partial_x}(*F)-*(\nabla^\Gamma_{\partial_x}F) =2\lambda_0*F. \tag{4.3}
\end{align}$$

This does not assert that every nonzero nonmetricity has that effect; pure conformal cases have additional special properties.

A full affine curvature has $16$ endomorphism slots times $6$ two-form slots, hence $96$ real components before further identities. A Lorentz connection curvature has $36$, and a Levi-Civita curvature has the familiar $20$ only after its pair symmetry and algebraic Bianchi identity. The Weyl/Ricci/scalar spinors of [AST-13](<AST-13.md>) reconstruct the latter object under those hypotheses. They cannot simply replace the full curvature of (3.1).

Even the Ricci action trace must use the chosen soldering normalization. Define the unrestricted pulled-back Ricci tensor $\mathfrak R_{AA'BB'}=\tau^a{}_{AA'}\tau^b{}_{BB'}R_{ab}$. Then

$$\begin{align}
R=-2\epsilon^{AB}\epsilon^{A'B'}\mathfrak R_{AA'BB'},\qquad I_{\rm EH}=-\frac1\kappa\int d^4x\,e\, \epsilon^{AB}\epsilon^{A'B'}\mathfrak R_{AA'BB'}. \tag{4.4}
\end{align}$$

Here $e=\sqrt{-g}$, and Ricci need not be symmetric. Formula (4.4) is just the original $+R/(2\kappa)$ action written with the inverse metric (2.4); it is not a change of its sign or a Riemannian Ricci-spinor assumption.

## 5. A Chosen Hermitian Dirac Action and Its Currents

We now choose a matter coupling; the tensor dictionary alone does not choose one. Let $\Psi$ be a Grassmann-odd canonical Dirac field with real mass $m$, and use the Lorentz-projected connection (2.7):

$$
\begin{aligned}
\mathscr L_D={}&\frac i2\left[
\bar\Psi\gamma^\mu D^\omega_\mu\Psi
-(D^\omega_\mu\bar\Psi)\gamma^\mu\Psi\right]-m\bar\Psi\Psi,\\
D^\omega_\mu\Psi&=\partial_\mu\Psi+\Omega_\mu\Psi,\qquad
D^\omega_\mu\bar\Psi=\partial_\mu\bar\Psi-\bar\Psi\Omega_\mu,
\qquad \gamma^\mu=e_a{}^\mu\gamma^a.
\end{aligned}
\tag{5.1}
$$

This action is local-Lorentz and diffeomorphism covariant. It is an ordinary spinor action for $\Gamma^\omega$ placed on a metric–affine background, not a Clifford-compatible lift of the full $\Gamma$.

Let $\bar\Gamma$ and $\bar\omega$ be Levi-Civita and set $N=\Gamma-\bar\Gamma$. In a coframe write $N_{abc}=\eta_{ad}N^d{}_{bc}$, with the middle slot still derivative-first. Then

$$\begin{align}
\omega_{ab\,c}-\bar\omega_{ab\,c} =\tfrac12(N_{acb}-N_{bca}). \tag{5.2}
\end{align}$$

Subtracting the two Hermitian actions gives

$$\begin{align}
\mathscr L_D(\omega)-\mathscr L_D(\bar\omega) =-\frac i8(\omega-\bar\omega)_{ab\,c} \bar\Psi\{\gamma^c,\gamma^{ab}\}\Psi =b_dJ_5^d, \tag{5.3}
\end{align}$$

where

$$\begin{align}
J_5^d=\bar\Psi\gamma^d\gamma_5\Psi,\qquad b_d=\frac14\eta_{de}\varepsilon^{eabc}N_{abc}. \tag{5.4}
\end{align}$$

The gamma anticommutator is totally antisymmetric in $c,a,b$. With our orientation its normalization is $\varepsilon_{abcd}\{\gamma^c,\gamma^{ab}\}=-12i\gamma_d\gamma_5$. Thus (5.3) depends only on the fully antisymmetric part of $N$, equivalently the axial part of the full torsion. If $T_{abc}=\varepsilon_{abcd}s^d$ in that part, $b_d=3s_d/4$. This calculation, rather than the dimension of a spin space, fixes the coupling coefficient.

Use the [MAG-01](<MAG-01.md>) hypermomentum normalization, at fixed metric/coframe,

$$\begin{align}
\delta I_D=-\frac12\int d^4x\,e\, \Delta_a{}^{bc}\,\delta N^a{}_{bc}. \tag{5.5}
\end{align}$$

Variation of (5.3) yields, after lowering $b,c$,

$$\begin{align}
\Delta_{abc}=\frac12\varepsilon_{abcd}J_5^d, \qquad \Delta_a{}^{ba}=0. \tag{5.6}
\end{align}$$

It is a pure axial spin source; its dilation and shear components vanish for this action. That is a derived property of (5.1), not a universal restriction on matter in MAG.

### The Trace Term in the Fermion Equation

Vary $\bar\Psi$ using compactly supported variations and the Levi-Civita volume divergence. The equation is

$$\begin{align}
\left(i\gamma^\mu\bar D_\mu-m+b_d\gamma^d\gamma_5\right)\Psi=0. \tag{5.7}
\end{align}$$

Equivalently it is $(i\gamma^\mu D^\omega_\mu+\frac i2t^\omega_\mu\gamma^\mu-m)\Psi=0$, where the trace convention is

$$
\begin{aligned}
t^\omega_\mu&:=(T^\omega)^\rho{}_{\mu\rho}
=t_\mu-\tfrac12q_\mu+\tfrac12\widetilde q_\mu,\\
t_\mu&:=T^\rho{}_{\mu\rho},\qquad
q_\mu:=g^{\nu\rho}Q_{\mu\nu\rho},\qquad
\widetilde q_\mu:=g^{\nu\rho}Q_{\nu\rho\mu}.
\end{aligned}
\tag{5.8}
$$

To derive the first line, insert (1.6) into the two torsion traces. The full-connection trace $t$ must not be substituted for $t^\omega$. For (3.5), $t_x=-2\lambda_0$, $q=0$ and $\widetilde q_x=4\lambda_0$, giving $t^\omega=0$, as its zero projected connection requires. The plus-sign trace term cancels the non-axial terms in $\gamma^\mu\Omega_\mu$; it is absent only when the appropriate projected trace vanishes.

The independent global phase symmetry has vector current $j_V^\mu=\bar\Psi\gamma^\mu\Psi$. A compactly supported phase variation gives $\delta\mathscr L_D=-j_V^\mu\partial_\mu\theta$, so its on-shell conservation law is $\partial_\mu(ej_V^\mu)=0$. This is the metric-volume divergence, not automatically $\nabla^\Gamma_\mu j_V^\mu=0$ in a nonmetric background. It is also not the projective current, whose trace in (5.6) vanishes identically.

## 6. Solving the Full Einstein–Hilbert–Dirac Connection Equation

Choose, specifically,

$$\begin{align}
I=\int d^4x\,e\left[\frac{R(g,\Gamma)}{2\kappa}+\mathscr L_D(\omega)\right], \qquad \kappa=8\pi G>0. \tag{6.1}
\end{align}$$

There is no Holst, curvature-squared, nonminimal $Q$ or additional trace term in this model. Gravity uses full affine $R$, while the fermion connection is the stated projection. Replacing $\mathsf A$ by $\omega$ also in gravity would be a different action.

For bulk equations take compactly supported variations. For the displayed action elimination, take $N$ and its sourced solution to vanish near any finite boundary, or retain/fix the equivalent connection boundary flux. These conditions remove the following divergence without asserting a general boundary-value prescription:

$$
\begin{aligned}
R&=\bar R+\bar\nabla_a(v^a-u^a)+U(N),\\
u_c&=N^a{}_{ac},\qquad v^a=g^{bc}N^a{}_{bc},\\
U&=u_av^a-g^{bc}N^a{}_{cd}N^d{}_{ab}.
\end{aligned}
\tag{6.2}
$$

Expanding the curvature difference proves (6.2); metric compatibility of $\bar\nabla$ collects its two derivative terms into that divergence. The xAct contraction and explicit first-variation residuals check these slots independently. At fixed $g$ and $\Psi$, the $64$ $N$ components remain independent and their bulk Lagrangian is $U/(2\kappa)+b_dJ_5^d$.

Differentiating $U$ gives the actual algebraic equation

$$
\begin{aligned}
P_a{}^{bc}&:=\frac{\partial U}{\partial N^a{}_{bc}}
=\delta_a^b v^c+u_ag^{bc}
-g^{db}N^c{}_{ad}-g^{cd}N^b{}_{da},\\
P_a{}^{bc}&=\kappa\Delta_a{}^{bc}.
\end{aligned}
\tag{6.3}
$$

There is an identity $P_a{}^{ba}=0$. Its source condition is precisely the trace identity in (5.6), not a condition obtained by imposing a gauge on an incompatible current.

The full solution is

$$\begin{align}
\boxed{\; N^\rho{}_{\mu\nu}=\delta^\rho_\nu p_\mu -\frac\kappa4\varepsilon^\rho{}_{\mu\nu\sigma}J_5^\sigma, \qquad p_\mu\ \text{arbitrary real one-form}.\;} \tag{6.4}
\end{align}$$

Here $p=\operatorname{tr}N/4$, equal to the one-form $p$ in (2.8). Its trace is a tensorial difference from Levi-Civita, not the coordinate trace of $\Gamma$ set to zero. For the axial particular solution, $u=v=0$ and the fully lowered equation (6.3) is $P_{abc}=-2N_{abc}$. Equation (5.6) then gives exactly $-\kappa\varepsilon_{abcd}J_5^d/4$.

For completeness, subtract two solutions. The difference $H$ obeys the source-free equation. Lowering the free indices gives $H_{cab}+H_{bca}=g_{ab}v_c+g_{bc}u_a$. Its two cyclic partners imply

$$\begin{align}
2H_{abc}=g_{bc}(v_a-u_a)+g_{ac}(u_b+v_b)+g_{ab}(u_c-v_c). \tag{6.5}
\end{align}$$

Contract with $g^{ab}$. In dimension $n$, $(n-2)(u-v)=0$. For $n=4$, $u=v$, and (6.5) reduces to $H_{abc}=g_{ac}u_b$. This proves that the arbitrary projective one-form is the entire homogeneous freedom. It also explains the exact Hessian rank $60$ and kernel dimension $4$; these are auxiliary ranks, not propagating polarizations. The saved component calculation substitutes (6.4) in all $64$ equations with arbitrary $J_5$ and $p$ and obtains $64$ zeros, including the current normalization.

In this solution family,

$$
\begin{aligned}
T^\rho{}_{\mu\nu}
&=\delta^\rho_\nu p_\mu-\delta^\rho_\mu p_\nu
-\frac\kappa2\varepsilon^\rho{}_{\mu\nu\sigma}J_5^\sigma,\\
Q_{\mu\nu\rho}&=2p_\mu g_{\nu\rho}.
\end{aligned}
\tag{6.6}
$$

Thus $Q$ is not zero before choosing a representative. The projective transformation $\Gamma^\rho{}_{\mu\nu}\mapsto\Gamma^\rho{}_{\mu\nu}+\delta^\rho_\nu\alpha_\mu$ leaves $g$ fixed, changes $p$ by the arbitrary real one-form $\alpha$, and leaves $\Gamma^\omega$ unchanged. Locally, or globally when $\alpha=-p$ respects the allowed boundary class, $p=0$ gives the metric-compatible axial Einstein–Cartan representative. This is a conclusion after full variation, not a restriction of $64$ variables to metric-compatible ones before varying.

### Contact Term and Its Normalization

For axial torsion $T_{abc}=\varepsilon_{abcd}s^d$, the quadratic and source parts are

$$\begin{align}
\frac{U}{2\kappa}+b\cdot J_5 =\frac{3}{4\kappa}s_as^a+\frac34s_aJ_5^a =\frac{3}{4\kappa}(s+\kappa J_5/2)^2 -\frac{3\kappa}{16}J_{5a}J_5^a. \tag{6.7}
\end{align}$$

The other auxiliary directions vanish in a representative of (6.4). The current is Grassmann-even, so this polynomial completion is legitimate. Stationarity gives $s=-\kappa J_5/2$ and the reduced bulk action

$$\begin{align}
I_{\rm eff}=\int d^4x\,e\left[ \frac{\bar R}{2\kappa}+\mathscr L_D(\bar\omega) -\frac{3\kappa}{16}J_{5a}J_5^a\right]. \tag{6.8}
\end{align}$$

The coefficient was computed from the declared Clifford/action/current normalization and all $64$ equations. It was not imported as a universal MAG coefficient. Varying the last term gives twice its current factor; the resulting fermion equation is

$$\begin{align}
\left(i\gamma^\mu\bar D_\mu-m -\frac{3\kappa}{8}J_{5a}\gamma^a\gamma_5\right)\Psi=0. \tag{6.9}
\end{align}$$

This agrees with inserting the stationary $b$ into (5.7). Metric variation at fixed $\Gamma$ is not metric variation at fixed $N$, since $\bar\Gamma$ depends on $g$. The reduced action gives the corresponding classical metric/matter equations by the full chain rule: the term multiplying a variation of the eliminated connection vanishes on its connection equation, subject to the stated boundaries. No particular coupled spacetime solution or quantum functional integral follows from this elimination.

## 7. Why the Coupling Choice and the Projective Interpretation Matter

The projective parameter is an arbitrary one-form, not necessarily $d\theta$. Direct expansion gives

$$\begin{align}
\mathcal R(\mathsf A+I\alpha)=\mathcal R(\mathsf A)+I\,d\alpha, \qquad R_{\mu\nu}\longmapsto R_{\mu\nu}+(d\alpha)_{\mu\nu}, \qquad R\longmapsto R. \tag{7.1}
\end{align}$$

$\Omega$, the chosen Dirac action, and $e$ are unchanged. The quantities $t,q,\widetilde q$ shift by $3\alpha,8\alpha,2\alpha$; their combination $t^\omega$ in (5.8) is invariant. Projective symmetry therefore supplies the current-trace identity, not Maxwell equations or a charged spinor phase.

For example $g=\eta$, $\Psi=0$ and $p=b\,x\,dy$ give full affine curvature $I\,b\,dx\wedge dy$ and antisymmetric Ricci, but zero scalar and symmetric Ricci. They lie on the minimal vacuum projective orbit and can be removed by the allowed local shift $-p$. Here $b$ has dimension inverse length squared. The trace curvature changes under a general projective shift. Calling it an electromagnetic field strength would require new restrictions and new dynamics.

A physical $U(1)$ connection additionally needs a unitary line representation with phase transformation, its global bundle/charge data and a selected action. A real trace/dilation one-form and an imaginary phase connection are not identified by their both being Abelian or having no curvature commutator cross term. An independent $\mathrm{Spin}^c$/line-bundle coupling may be introduced, but it is extra input. No integral Chern class, compact phase period or electric charge lattice is part of this real projective data.

### A Projectively Invariant Nonminimal Countermodel

One need not break projective symmetry to obtain a different connection response. Use the actual scalar model of [MAG-02](<MAG-02.md>): let $p_\mu=N^\rho{}_{\mu\rho}/4$, $u_\mu=N^\rho{}_{\rho\mu}$ and

$$\begin{align}
\zeta_\mu=p_\mu-u_\mu=t_\mu-\frac38q_\mu,\qquad \mathscr L_{\rm add}=\lambda j^\mu\zeta_\mu, \qquad j^\mu=\phi\,g^{\mu\nu}\partial_\nu\phi. \tag{7.2}
\end{align}$$

$\lambda$ is a fixed real dimensionless coupling and $\phi$ a real scalar; this is not minimal scalar coupling. Both $p$ and $u$ shift by $\alpha$, so $\zeta$ is invariant. This scalar current is not assumed to be a conserved internal charge. Variation with the same minus-half current convention gives

$$\begin{align}
\Delta_\rho{}^{\mu\nu} =2\lambda\left(\delta^\mu_\rho j^\nu -\tfrac14\delta^\nu_\rho j^\mu\right),\qquad \Delta_\rho{}^{\mu\rho}=0. \tag{7.3}
\end{align}$$

The current is compatible but not pure axial. In the $p=0$ representative, with this scalar source instead of the Dirac source, its solution is

$$\begin{align}
\widehat N^\rho{}_{\mu\nu}=\kappa\lambda\left( -\tfrac14\delta^\rho_\mu j_\nu -\tfrac18\delta^\rho_\nu j_\mu +\tfrac34g_{\mu\nu}j^\rho\right). \tag{7.4}
\end{align}$$

Substitution in all $64$ equations verifies this also for null currents; no division by $j^2$ is needed. Its projectively invariant nonmetricity trace is

$$\begin{align}
\widetilde q_\mu-\tfrac14q_\mu=\frac{9\kappa\lambda}{4}j_\mu. \tag{7.5}
\end{align}$$

For nonzero $\lambda j$ it cannot be made metric compatible by a projective gauge. Eliminating it gives $+3\kappa\lambda^2j^2/16$, rather than the Dirac axial term in (6.8). If $\phi$ is dynamical with canonical scalar kinetic term, this corresponds to $Z(\phi)=1-3\kappa\lambda^2\phi^2/8$; a healthy classical kinetic branch requires $Z>0$. The countermodel and its domain are choices, not a universal matter theory. It shows explicitly why the minimal Dirac result must not be promoted to all metric–affine matter couplings.

## 8. Pointwise Spinors Versus Holomorphic Twistor Space

Equations (2.9) and (4.1) are tensor dictionaries valid at a point and on the chosen spin bundle patches. They do not establish a holomorphic threefold, a family of twistor lines, or a Penrose transform of the full affine data.

The ordinary nonlinear-graviton correspondence requires a complex-analytic conformal spin four-manifold, its torsion-free Levi-Civita conformal connection, the relevant vanishing Weyl chirality and a regular local leaf-space construction. In the [AST-14](<AST-14.md>) unprimed convention the obstruction is $\Psi_{ABCD}$. Those hypotheses are a named theorem input, not a consequence of counting spinor indices. On a real Lorentzian slice the primed Weyl curvature is its conjugate; vanishing one full chirality forces both, unlike silently changing to Euclidean or split reality conditions. Nonzero axial torsion after (6.4) does not by itself license the ordinary torsion-free theorem either.

The example (3.4) gives a useful separation. Its metric and projected connection are flat, so the usual flat dual-twistor incidence is

$$\begin{align}
Z=(\omega^{A'},\pi_A),\qquad \omega=i(X/L_0)^{\mathsf T}\pi,\qquad X=x^as_a, \tag{8.1}
\end{align}$$

with the reference length $L_0$ and dual slots fixed in [AST-14](<AST-14.md>). This is unchanged as $\lambda_0$ varies, whereas full affine scalar curvature is $4\lambda_0^2$. Thus the projected flat twistor geometry has forgotten the shear data, not reconstructed it.

Moreover full affine parallel transport need not preserve the metric null cone. At a point take $v=(1,1,0,0)$ in that example, so $g(v,v)=0$. Along the x direction a $\Gamma$-parallel vector has derivative of its metric norm equal to $-Q_x(v,v)=-2\lambda_0$. This is a statement about that selected affine transport, not a derivation of matter-ray dynamics. It explains why a full affine connection cannot automatically define the usual spin-factorized null-plane distribution.

A torsionful or nonmetric twistor proposal must therefore specify its bundle, connection, horizontal distribution, reality/analyticity conditions, equations and a new involutivity argument. Symmetrizing an $\epsilon$ factor away in one curvature projection does not supply those missing constructions or remove $\Sigma\wedge\Sigma$ from the full affine curvature. The controlled results here are a faithful local tensor rewriting, a carefully distinguished ordinary spin connection, and the classical connection solution of a selected matter action. They do not select an internal Standard Model group, particle masses, a global twistor transform, a cosmological bounce, or a quantum-gravity theory.

## Verification Scope and References

The [author audit](<../audits/MAG-04/AUTHOR-AUDIT.md>) indexes complete actual inputs/results. The decisive checks are all $64$ minimal Dirac connection equations and their normalization, tensor first variation/divergence identities, the full nonmetric curvature example, affine bispinor/Hodge factors, and all $64$ equations of the contrasting trace-coupled scalar. Failed setup and non-Boolean intermediate records are retained separately. These checks support the displayed identities, not the assumed global spin structure, the named analytic twistor theorem, finite-boundary amplitudes, or full coupled dynamics.

For the geometric and matter background see [MAG-01](<MAG-01.md>), [AST-06](<AST-06.md>), [AST-07](<AST-07.md>), [AST-13](<AST-13.md>) and [MAG-02](<MAG-02.md>) above. For the separate twistor theorem and conventions see [AST-14](<AST-14.md>). Standard references include H. B. Lawson and M.-L. Michelsohn, Spin Geometry; R. Penrose and W. Rindler, Spinors and Space-Time; and F. W. Hehl et al., Metric-affine gauge theory of gravity, [Physics Reports 258](<https://doi.org/10.1016/0370-1573(94)00111-F>). Their conventions require translation; none replaces the explicit dictionary fixed here.
