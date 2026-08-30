# Compact Yang--Mills Theory on a Cut Interval

## Scope, Conventions, and Gauge Policy

Let \(G\) be a compact connected Lie group with anti-Hermitian Lie algebra \(\mathfrak g\) and a fixed positive \(\operatorname{Ad}\)-invariant inner product

$$\begin{align}
\langle\, ,\,\rangle_{\mathfrak g}.
\end{align}$$

The normalization of this inner product and the coupling \(g_{\mathrm{YM}}\) fixes every Casimir eigenvalue below. For \(G=SU(2)\), the explicit check uses generators for which \(C_2(j)=j(j+1)\).

Take the time slab over \([-L,L]\), cut it at \(x=0\), and use

$$\begin{align}
y_1&=x+L, &y_2&=L-x.
\end{align}$$

Both \(y_i\in[0,L]\) increase from a physical outer endpoint toward the artificial interface. The principal bundle on the slab is trivial, the physical endpoint frames are fixed, and there is no charged matter. The canonical based gauge group on a spatial interval contains every component,

$$\begin{align}
\pi_0\mathcal G_i^0\simeq\pi_1(G),
\end{align}$$

and the quotient below imposes invariance under all of them. The Hilbert space \(L^2(G)\) therefore uses the trivial character of \(\pi_1(G)\). When \(\pi_1(G)\) is finite, this is the trivial discrete-theta sector. More general characters, the corresponding flat-line-bundle quantizations, and nontrivial bundle dynamics are outside the present scope. This is the precise meaning of “no theta term” below; the note does not claim to include every topological sector for a compact connected nonsimply-connected \(G\).

Use

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg,\\
F_{ty}&=\dot A_y-\partial_yA_t+[A_t,A_y].
\end{align}$$

The regional proper gauge group consists of transformations equal to the identity in both the physical outer frame and the fixed artificial-interface frame. It is quotiented first. A transformation which is identity at the physical endpoint but has interface value \(k_i(t)\in G\) is boundary-frame covariance, not a regional proper gauge transformation. Only after sewing and imposing the moment map does the diagonal interface action become global proper gauge.

This realizes the policy of `gauge-covariant sewing and reduction.md`:

$$\begin{align}
\text{regional proper}
\neq\text{boundary-frame symmetry}
\neq\text{glued chart-preserving proper gauge}.
\end{align}$$

## Action First: Regional Equations and Symplectic Potential

The second-order regional action is

$$\begin{align}
S_i[A_i]
&=\frac1{2g_{\mathrm{YM}}^2}
\int\mathrm dt\int_0^L\mathrm dy_i\,
\langle F_{ty_i},F_{ty_i}\rangle.
\end{align}$$

Introduce the electric momentum

$$\begin{align}
\mathcal E_i:=g_{\mathrm{YM}}^{-2}F_{ty_i}
\end{align}$$

and the equivalent first-order action

$$\begin{align}
S_i^{(1)}
=\int\mathrm dt\int_0^L\mathrm dy_i
\left[
\langle\mathcal E_i,F_{ty_i}\rangle
-\frac{g_{\mathrm{YM}}^2}{2}
\langle\mathcal E_i,\mathcal E_i\rangle
\right].
\end{align}$$

Fix \(A_{t,i}(t,0)=0\) in the physical outer frame and prescribe

$$\begin{align}
A_{t,i}(t,L)=\alpha_i(t),
\qquad\delta\alpha_i=0
\end{align}$$

during the regional variational problem. Varying before gauge fixing gives

$$\begin{align}
D_{y_i}\mathcal E_i&=0,
&D_t\mathcal E_i&=0,
\end{align}$$

and

$$\begin{align}
\Theta_i
&=\int_0^L\mathrm dy_i\,
\langle\mathcal E_i,\delta A_{y,i}\rangle,\\
\left.\delta S_i\right|_\Gamma
&=-\int\mathrm dt\,
\langle\mathcal E_i(t,L),\delta\alpha_i(t)\rangle.
\end{align}$$

The first equation is Gauss law. The second is the remaining Yang--Mills evolution equation in \(1+1\) dimensions.

## Regional Reduction to \(T^*G\)

For each region define the partial parallel transporter by

$$\begin{align}
\partial_yU_i(y)&=-A_{y,i}(y)U_i(y),
&U_i(0)&=1,
&U_i:=U_i(L).
\end{align}$$

Thus

$$\begin{align}
U_i=P\exp\left(-\int_0^L A_{y,i}\,\mathrm dy_i\right).
\end{align}$$

The minus sign is required by the convention \(A^g=g^{-1}Ag+g^{-1}\mathrm dg\). A boundary-frame transformation with \(g_i(0)=1\), \(g_i(L)=k_i\) acts as

$$\begin{align}
\boxed{U_i\longmapsto k_i^{-1}U_i.}
\end{align}$$

Gauss law implies

$$\begin{align}
U_i(y)^{-1}\mathcal E_i(y)U_i(y)=\text{constant}.
\end{align}$$

Define the left-trivialized momentum

$$\begin{align}
J_i:=-U_i(y)^{-1}\mathcal E_i(y)U_i(y).
\end{align}$$

It is invariant under interface left multiplication because the physical outer frame is fixed. The holonomy variation is

$$\begin{align}
U_i^{-1}\delta U_i
=-\int_0^L\mathrm dy_i\,
U_i(y)^{-1}\delta A_{y,i}(y)U_i(y).
\end{align}$$

Substituting Gauss law into the Cauchy potential therefore gives, without guessing a canonical form,

$$\begin{align}
\boxed{
\Theta_i=\langle J_i,U_i^{-1}\delta U_i\rangle.}
\end{align}$$

Hence the based regional reduction is

$$\begin{align}
\mathcal P_i^{\mathrm{red}}\simeq T^*G
\end{align}$$

in left trivialization. Its two-form is

$$\begin{align}
\Omega_i
&=\delta\Theta_i\\
&=\langle\delta J_i\wedge U_i^{-1}\delta U_i\rangle
-\frac12\langle J_i,
[U_i^{-1}\delta U_i\wedge U_i^{-1}\delta U_i]\rangle.
\end{align}$$

The electric momentum in the interface frame is

$$\begin{align}
\boxed{
\mu_i:=\mathcal E_i(L)=-\operatorname{Ad}_{U_i}J_i.}
\end{align}$$

For an infinitesimal boundary-frame transformation \(X_\eta U_i=-\eta U_i\),

$$\begin{align}
\Theta_i(X_\eta)&=\langle\mu_i,\eta\rangle,
&\iota_{X_\eta}\Omega_i&=-\delta\langle\mu_i,\eta\rangle.
\end{align}$$

Thus \(\mu_i\), not \(J_i\), is the equivariant boundary moment map.

After Gauss reduction the exact first-order regional action is

$$\begin{align}
\boxed{
S_{i,\mathrm{red}}^{(1)}
=\int\mathrm dt
\left[
\langle J_i,U_i^{-1}\dot U_i\rangle
-H_{i,0}
-\langle\mu_i,\alpha_i\rangle
\right].}
\end{align}$$

Here the intrinsic Casimir Hamiltonian and the fixed-history Hamiltonian are distinct:

$$\begin{align}
\boxed{
H_{i,0}:=\frac{g_{\mathrm{YM}}^2L}{2}\langle J_i,J_i\rangle,
\qquad
H_i[\alpha_i]:=H_{i,0}+\langle\mu_i,\alpha_i\rangle.}
\end{align}$$

The plus sign in \(H_i[\alpha_i]\) follows directly from writing the first-order Lagrangian as \(\Theta_i(\dot{\ })-H_i[\alpha_i]\). It agrees with the Abelian fixed-history Legendre transform in `Maxwell 1+1.md` after the respective orientation conventions are applied.

Under a time-dependent boundary-frame change,

$$\begin{align}
U_i&\mapsto k_i^{-1}U_i,
&J_i&\mapsto J_i,
&\alpha_i&\mapsto k_i^{-1}\alpha_ik_i+k_i^{-1}\dot k_i,
&\mu_i&\mapsto\operatorname{Ad}_{k_i^{-1}}^*\mu_i,
\end{align}$$

the change of the kinetic term cancels the inhomogeneous \(k_i^{-1}\dot k_i\) term. This verifies that the transformation relates fixed-history fibers covariantly; it does not turn it into a regional gauge kernel.

Thus a time-dependent prescribed \(\alpha_i\) is a boundary-frame transport term in the regional Hamiltonian, not part of the intrinsic Casimir energy.

## Sewing in a Common Interface Frame

First choose \(h=1\), identify

$$\begin{align}
\alpha_1=\alpha_2=\alpha,
\end{align}$$

and only then release the common history. The interface part of the summed variation is

$$\begin{align}
\left.\delta(S_1+S_2)\right|_\Gamma
=-\int\mathrm dt\,
\langle\mu_1+\mu_2,\delta\alpha\rangle.
\end{align}$$

Therefore

$$\begin{align}
\boxed{\mu_\Gamma:=\mu_1+\mu_2=0.}
\end{align}$$

Because both \(y_i\) point toward the cut,

$$\begin{align}
F_{ty_1}&=F_{tx}, &F_{ty_2}&=-F_{tx}.
\end{align}$$

The summed moment map is therefore precisely continuity of the physical electric field across \(x=0\); its plus sign is the outward-orientation sign.

The diagonal boundary group acts by

$$\begin{align}
(U_1,U_2)\longmapsto(k^{-1}U_1,k^{-1}U_2).
\end{align}$$

It is free. Before \(\mu_\Gamma=0\) it is Hamiltonian boundary symmetry; on the constraint surface it is the continuous global proper gauge action.

### Connected Holonomy from Path Ordering and Orientation

\(U_1\) transports from the left physical frame to the interface. \(U_2\) transports from the right physical frame to the interface because \(y_2=L-x\). Transport from the interface to the right physical endpoint is therefore \(U_2^{-1}\). The connected open-interval holonomy is composed as

$$\begin{align}
\boxed{V:=U_{\mathrm{conn}}=U_2^{-1}U_1.}
\end{align}$$

It is invariant under the diagonal interface action. Since the physical outer frames are fixed, \(V\) is a full group element. It is not reduced to a conjugacy class.

## Transition-Function Sewing

Let the interface frames be related by \(h(t)\in G\). In \(0+1\)-dimensional interface notation,

$$\begin{align}
\alpha_2=h^{-1}\alpha_1h+h^{-1}\dot h.
\end{align}$$

Under independent interface frame changes,

$$\begin{align}
U_i&\mapsto k_i^{-1}U_i,
&h&\mapsto k_1^{-1}hk_2.
\end{align}$$

The gauge-covariant connected holonomy is

$$\begin{align}
\boxed{V_h=U_2^{-1}h^{-1}U_1,}
\end{align}$$

and it is invariant under both \(k_1\) and \(k_2\).

For fixed \(h\), varying \(\alpha_1\) gives

$$\begin{align}
\boxed{
\mu_1+\operatorname{Ad}_h^*\mu_2=0.}
\end{align}$$

If \(h\) is varied as a sewing-chart coordinate, substituting \(\alpha_2=\alpha_1^h\) into the first-order action produces the required term

$$\begin{align}
-\langle\mu_2,h^{-1}\dot h\rangle.
\end{align}$$

Equivalently, after substituting the sewing relation for \(\alpha_2\), the completed first-order action is

$$\begin{align}
S_{\mathrm{sew}}^{(1)}
=\int\mathrm dt\Bigg[
\sum_{i=1}^2
\left(
\langle J_i,U_i^{-1}\dot U_i\rangle-H_{i,0}
\right)
-\left\langle
\mu_1+\operatorname{Ad}_h^*\mu_2,\alpha_1
\right\rangle
-\langle\mu_2,h^{-1}\dot h\rangle
\Bigg].
\end{align}$$

Direct substitution of the time-dependent \((k_1,k_2)\) transformations gives exact invariance: the two regional kinetic terms cancel the two inhomogeneous frame-velocity terms, while \(h\mapsto k_1^{-1}hk_2\) preserves the relation between \(\alpha_1\) and \(\alpha_2\). This is sewing-chart covariance before the moment-map quotient, not a claim that the two independent boundary actions are proper gauge.

The completed sewing one-form is consequently

$$\begin{align}
\Theta_{\mathrm{sew}}
=\langle J_1,U_1^{-1}\delta U_1\rangle
+\langle J_2,U_2^{-1}\delta U_2\rangle
-\langle\mu_2,h^{-1}\delta h\rangle.
\end{align}$$

On the constraint it reduces to

$$\begin{align}
\Theta_{\mathrm{red}}
=\langle J_1,V_h^{-1}\delta V_h\rangle.
\end{align}$$

Thus \(h\) is transition/sewing data. It is not an extra oscillator. Treating it as variable only enlarges the sewing chart, and its displayed canonical term is what removes the apparent extra degree of freedom.

## Exact Classical Reduction

Return to \(h=1\). Let

$$\begin{align}
V&=U_2^{-1}U_1,
&J&=J_1.
\end{align}$$

The moment-map equation implies

$$\begin{align}
J_2=-\operatorname{Ad}_VJ.
\end{align}$$

Using

$$\begin{align}
V^{-1}\delta V
=U_1^{-1}\delta U_1
-\operatorname{Ad}_{V^{-1}}(U_2^{-1}\delta U_2),
\end{align}$$

one finds

$$\begin{align}
\left.(\Theta_1+\Theta_2)\right|_{\mu_\Gamma=0}
&=\langle J,V^{-1}\delta V\rangle.
\end{align}$$

Every diagonal orbit has the unique representative \(U_2=1\), obtained with \(k=U_2\). Therefore

$$\begin{align}
\boxed{
(T^*G\times T^*G)//G_\Delta
\xrightarrow{\ \sim\ }T^*G,
\qquad
[(U_1,J_1;U_2,J_2)]\longmapsto(V,J).}
\end{align}$$

This is a global symplectomorphism, not only a dimension count.

The summed Hamiltonian becomes

$$\begin{align}
H_{\mathrm{conn}}
&=\frac{g_{\mathrm{YM}}^2L}{2}
(\langle J,J\rangle+\langle J_2,J_2\rangle)\\
&=\boxed{g_{\mathrm{YM}}^2L\langle J,J\rangle}.
\end{align}$$

The connected first- and second-order actions are

$$\begin{align}
S_{\mathrm{conn}}^{(1)}
&=\int\mathrm dt
\left[
\langle J,V^{-1}\dot V\rangle
-g_{\mathrm{YM}}^2L\langle J,J\rangle
\right],\\
S_{\mathrm{conn}}
&=\frac1{4g_{\mathrm{YM}}^2L}
\int\mathrm dt\,
\langle V^{-1}\dot V,V^{-1}\dot V\rangle.
\end{align}$$

Direct reduction of the uncut interval of length \(2L\) gives exactly these formulas. This independently checks the orientation and the factor of two.

### Framing Policy and Residual Conjugation

There is no further quotient in the present model. Global transformations are required to be the identity in both fixed physical endpoint frames, so they cannot conjugate \(V\). If the outer frames were released and only a common global frame were retained, an additional conjugation action could appear and the observable wavefunctions could become class functions. That is a different boundary theory and is not used here.

## Regional Quantum Theory

Normalize Haar measure by \(\int_G\mathrm dU=1\). The regional Hilbert space is

$$\begin{align}
\mathcal H_i=L^2(G,\mathrm dU).
\end{align}$$

For \(\eta\in\mathfrak g\), define the left- and right-invariant differential operators

$$\begin{align}
(\mathcal L_\eta\psi)(U)
&:=\left.\frac{\mathrm d}{\mathrm ds}\right|_{s=0}
\psi(e^{s\eta}U),\\
(\mathcal R_\eta\psi)(U)
&:=\left.\frac{\mathrm d}{\mathrm ds}\right|_{s=0}
\psi(Ue^{s\eta}).
\end{align}$$

With the classical convention \(X_\eta U=-\eta U\), the quantum moment map and left-trivialized momentum are

$$\begin{align}
\boxed{
\widehat\mu_i(\eta)=i\mathcal L_\eta,
\qquad
\widehat J_i(\eta)=-i\mathcal R_\eta.}
\end{align}$$

Thus it is the **left** generator which implements \(\mu_i\); \(J_i\) is the right generator. The identity \(\mathcal L_\eta=\mathcal R_{\operatorname{Ad}_{U^{-1}}\eta}\) is the operator form of \(\mu_i=-\operatorname{Ad}_{U_i}J_i\), including its sign.

Let \(-\Delta_G\) be the positive Laplace--Beltrami operator for the chosen invariant inner product. Quantization gives the intrinsic and prescribed-history operators

$$\begin{align}
\boxed{
\widehat H_{i,0}
=\frac{g_{\mathrm{YM}}^2L}{2}(-\Delta_G),
\qquad
\widehat H_i[\alpha_i]
=\widehat H_{i,0}+\widehat\mu_i(\alpha_i).}
\end{align}$$

### Quantum Boundary-History Covariance

The left-regular unitary which mirrors the classical boundary action is

$$\begin{align}
\boxed{
(\mathsf L_i(k_i)\psi)(U_i):=\psi(k_i^{-1}U_i),
\qquad
\mathsf L_i(e^{s\eta})=e^{is\widehat\mu_i(\eta)}.}
\end{align}$$

For the new frame coordinate \(U_i'=k_i^{-1}U_i\), the wavefunction-coordinate intertwiner is the inverse left-regular operator

$$\begin{align}
T_i(k_i):=\mathsf L_i(k_i)^{-1},
\qquad
(T_i(k_i)\psi)(U_i')=\psi(k_iU_i').
\end{align}$$

The bi-invariant Laplacian is unchanged, while

$$\begin{align}
T_i(k_i)\widehat\mu_i(\alpha_i)T_i(k_i)^{-1}
&=\widehat\mu_i(\operatorname{Ad}_{k_i^{-1}}\alpha_i),\\
i\dot T_i(k_i)T_i(k_i)^{-1}
&=\widehat\mu_i(k_i^{-1}\dot k_i).
\end{align}$$

Consequently

$$\begin{align}
\boxed{
\widehat H_i[\alpha_i^{k_i}]
=T_i(k_i)\widehat H_i[\alpha_i]T_i(k_i)^{-1}
+i\dot T_i(k_i)T_i(k_i)^{-1},}
\qquad
\alpha_i^{k_i}=k_i^{-1}\alpha_i k_i+k_i^{-1}\dot k_i.
\end{align}$$

The corresponding fixed-history propagators satisfy

$$\begin{align}
\mathscr U_{\alpha_i^{k_i}}(t,t_i)
=T_i(k_i(t))\mathscr U_{\alpha_i}(t,t_i)T_i(k_i(t_i))^{-1}.
\end{align}$$

This is covariance between prescribed-history fibers, not an additional degeneracy inside one regional Hilbert problem.

Peter--Weyl gives

$$\begin{align}
L^2(G)
&=\widehat\bigoplus_{R\in\widehat G}
V_R\otimes V_R^*,\\
e^R_{mn}(U)&:=\sqrt{d_R}\,D^R_{mn}(U),
&d_R&:=\dim V_R,\\
-\Delta_G e^R_{mn}
&=C_2(R)e^R_{mn}.
\end{align}$$

Thus the spectrum of the intrinsic operator \(\widehat H_{i,0}\), equivalently the \(\alpha_i=0\) frame, is

$$\begin{align}
\boxed{
E_{i,0}(R)=\frac{g_{\mathrm{YM}}^2L}{2}C_2(R).}
\end{align}$$

with \(d_R^2\) matrix-element states in the framed regional theory. A generic time-dependent prescribed \(\alpha_i(t)\) produces time-ordered boundary-frame transport on the left Peter--Weyl index; it does not define a new stationary Casimir spectrum.

For \(G=SU(2)\),

$$\begin{align}
R&=j=0,\frac12,1,\ldots,
&d_j&=2j+1,
&C_2(j)&=j(j+1).
\end{align}$$

## Quantum Gluing by Compact Group Averaging

The diagonal interface group acts by the left-regular pullback,

$$\begin{align}
(\widehat T_\Delta(k)\Psi)(U_1,U_2)
=\Psi(k^{-1}U_1,k^{-1}U_2).
\end{align}$$

Its exact Haar projector is

$$\begin{align}
\boxed{
(P_\Delta\Psi)(U_1,U_2)
=\int_G\mathrm dk\,
\Psi(k^{-1}U_1,k^{-1}U_2).}
\end{align}$$

Define

$$\begin{align}
\mathcal W:L^2(G)&\longrightarrow
(L^2(G)\otimes L^2(G))^{G_\Delta},\\
(\mathcal W\psi)(U_1,U_2)&:=\psi(U_2^{-1}U_1).
\end{align}$$

It is an isometry because the Haar change of variables \(V=U_2^{-1}U_1\) gives

$$\begin{align}
\int_{G^2}\mathrm dU_1\mathrm dU_2\,
|\psi(U_2^{-1}U_1)|^2
=\int_G\mathrm dV\,|\psi(V)|^2.
\end{align}$$

It is onto: for an invariant \(\Psi\), choose \(k=U_2\) to obtain, almost everywhere,

$$\begin{align}
\Psi(U_1,U_2)=\Psi(U_2^{-1}U_1,1).
\end{align}$$

Therefore

$$\begin{align}
\boxed{
(L^2(G)\otimes L^2(G))^{G_\Delta}
\cong L^2(G).}
\end{align}$$

This proves the Hilbert-space gluing statement in this finite compact-group model; it is not an infinite-dimensional \(\operatorname{Map}(S,G)\) theorem.

The explicit invariant Peter--Weyl basis is

$$\begin{align}
\mathcal W e^R_{mn}
&=\frac1{\sqrt{d_R}}
\sum_{a=1}^{d_R}
e^R_{an}(U_1)\,
\overline{e^R_{am}(U_2)}.
\end{align}$$

Thus the two regional left indices are contracted into the unique singlet in \(R\otimes R^*\), exactly as required by the classical diagonal moment map. The uncontracted \(m,n\) indices are the two fixed physical endpoint frames.

For a common prescribed source, the product Hamiltonian is

$$\begin{align}
\widehat H_1[\alpha]+\widehat H_2[\alpha]
=\widehat H_{1,0}+\widehat H_{2,0}
+\widehat\mu_\Gamma(\alpha),
\qquad
\widehat\mu_\Gamma=\widehat\mu_1+\widehat\mu_2.
\end{align}$$

The source term vanishes on the invariant/constraint subspace. Thus boundary-frame transport is present regionally but does not change the connected physical spectrum in the common frame.

## Connected Spectrum

On \(\psi(U_2^{-1}U_1)\), the two regional Casimirs act as the left and right Casimirs of the same connected group variable. They have the same eigenvalue. Hence

$$\begin{align}
\left.(\widehat H_{1,0}+\widehat H_{2,0})\right|_{\mathcal H_{\mathrm{phys}}}
&=g_{\mathrm{YM}}^2L(-\Delta_G),\\
E_{\mathrm{conn}}(R)
&=\boxed{g_{\mathrm{YM}}^2L C_2(R)}.
\end{align}$$

Direct quantization of the uncut interval of length \(2L\) gives

$$\begin{align}
\widehat H_{[-L,L]}
=\frac{g_{\mathrm{YM}}^2(2L)}2(-\Delta_G)
=g_{\mathrm{YM}}^2L(-\Delta_G),
\end{align}$$

so the spectra agree representation by representation, including the \(d_R^2\) framed multiplicity.

For \(SU(2)\),

$$\begin{align}
E_j&=g_{\mathrm{YM}}^2L\,j(j+1),
&\operatorname{degeneracy}(E_j)&=(2j+1)^2.
\end{align}$$

## Three-Cell Associativity and Reduction by Stages

For this check orient every cell holonomy \(W_r\) from left to right and left-trivialize each cotangent factor:

$$\begin{align}
\Theta^{(3)}
=\sum_{r=1}^3\langle J_r,W_r^{-1}\delta W_r\rangle.
\end{align}$$

Let \(k_1,k_2\) be the frame changes at the two internal vertices and fix \(k_0=k_3=1\). The cotangent-lifted action is

$$\begin{align}
W_r&\longmapsto k_r^{-1}W_rk_{r-1},
&J_r&\longmapsto\operatorname{Ad}_{k_{r-1}^{-1}}J_r,
&r&=1,2,3.
\end{align}$$

The left multiplication at the right end of a cell leaves its left-trivialized momentum unchanged; the right multiplication at its left end gives the displayed coadjoint transformation. The two vertex actions commute. Contracting \(\Theta^{(3)}\) with their infinitesimal generators gives the two equivariant moment maps

$$\begin{align}
\boxed{
\mu_{(1)}=J_2-\operatorname{Ad}_{W_1}J_1,
\qquad
\mu_{(2)}=J_3-\operatorname{Ad}_{W_2}J_2.}
\end{align}$$

Thus the constraint surface is

$$\begin{align}
J_2&=\operatorname{Ad}_{W_1}J_1,
&J_3&=\operatorname{Ad}_{W_2W_1}J_1.
\end{align}$$

Define the connected variables

$$\begin{align}
\boxed{
W_{\mathrm{conn}}=W_3W_2W_1,
\qquad
J_{\mathrm{conn}}=J_1.}
\end{align}$$

They are invariant on the constraint surface. Moreover,

$$\begin{align}
W_{\mathrm{conn}}^{-1}\delta W_{\mathrm{conn}}
={}&W_1^{-1}\delta W_1
+\operatorname{Ad}_{W_1^{-1}}(W_2^{-1}\delta W_2)\\
&+\operatorname{Ad}_{(W_2W_1)^{-1}}(W_3^{-1}\delta W_3).
\end{align}$$

Using the two moment-map equations and \(\operatorname{Ad}\)-invariance of the pairing gives the full cotangent identity

$$\begin{align}
\boxed{
\left.\Theta^{(3)}\right|_{\mu_{(1)}=\mu_{(2)}=0}
=\langle J_{\mathrm{conn}},
W_{\mathrm{conn}}^{-1}\delta W_{\mathrm{conn}}\rangle.}
\end{align}$$

Every \(G\times G\) orbit has the unique representative

$$\begin{align}
W_1'=W_2'=1,\qquad W_3'=W_{\mathrm{conn}},\qquad
J_1'=J_2'=J_3'=J_{\mathrm{conn}},
\end{align}$$

obtained with \(k_1=W_1\) and \(k_2=W_2W_1\). Therefore the one-shot map is a global symplectomorphism

$$\begin{align}
\boxed{
(T^*G)^3//(G_{(1)}\times G_{(2)})
\xrightarrow{\ \sim\ }T^*G,
\qquad
[(W_r,J_r)]\longmapsto
(W_3W_2W_1,J_1).}
\end{align}$$

Reduction by stages gives the same map. Reducing first at vertex \(1\) produces

$$\begin{align}
(W_{21},J_{21})&=(W_2W_1,J_1),\\
\mu_{(2)}'&=J_3-\operatorname{Ad}_{W_{21}}J_{21},
\end{align}$$

and the second reduction gives \((W_3W_{21},J_{21})=(W_{\mathrm{conn}},J_{\mathrm{conn}})\). Reducing first at vertex \(2\) instead produces

$$\begin{align}
(W_{32},J_{32})&=(W_3W_2,J_2),\\
\mu_{(1)}'&=J_{32}-\operatorname{Ad}_{W_1}J_1,
\end{align}$$

and the remaining reduction gives \((W_{32}W_1,J_1)=(W_{\mathrm{conn}},J_{\mathrm{conn}})\). Hence both parenthesizations carry the same canonical one-form, not merely the same configuration holonomy.

Quantum mechanically,

$$\begin{align}
(\mathcal W_3\psi)(W_1,W_2,W_3)
:=\psi(W_3W_2W_1)
\end{align}$$

is a normalized isometry from \(L^2(G)\) onto the \(G^2\)-invariant subspace of \(L^2(G^3)\). The two left-regular vertex actions are

$$\begin{align}
(\mathsf L_1(k)\Psi)(W_1,W_2,W_3)
&=\Psi(k^{-1}W_1,W_2k,W_3),\\
(\mathsf L_2(k)\Psi)(W_1,W_2,W_3)
&=\Psi(W_1,k^{-1}W_2,W_3k),\\
P_a&=\int_G\mathrm dk\,\mathsf L_a(k).
\end{align}$$

Left and right translations on the shared \(W_2\) commute, so Fubini's theorem for normalized Haar measure gives

$$\begin{align}
\boxed{P_1P_2=P_2P_1=P_{G^2}.}
\end{align}$$

An invariant \(\Psi\) obeys, almost everywhere,

$$\begin{align}
\Psi(W_1,W_2,W_3)=\Psi(1,1,W_3W_2W_1),
\end{align}$$

which proves that \(\mathcal W_3\) is onto. This is an exact classical cotangent and quantum invariant-subspace reduction-by-stages theorem for this finite compact-group model. It is not a universal geometric-quantization theorem and does not prove the corresponding continuum statement for a field-valued interface group.

## Verification Boundary

Derived here: the action variation, Gauss reduction, regional \(T^*G\) one-form, the distinction between \(H_{i,0}\) and \(H_i[\alpha_i]\), classical and quantum boundary-history covariance, the left-generator realization of \(\mu_i\), the \(y_2=L-x\) sign, transition-function sewing, global symplectic reduction, connected first- and second-order actions, compact group averaging, Peter--Weyl basis, representation-by-representation spectrum, and the full three-cell cotangent reduction by stages.

Verified algebraically and by `numerics/yang_mills_1p1_checks.py`: the left interface action and coadjoint momentum transformation; regional and sewn first-order frame covariance; the frame covariance of \(V_h\); the moment-map solution \(J_2=-\operatorname{Ad}_VJ_1\); the reduced canonical one-form; the variable-\(h\) canonical term; the connected Hamiltonian coefficient; the two three-cell moment maps and canonical one-form; group multiplication; and finite-representation projector identities. A finite \(SU(2)\) representation-ring regression through highest weight \(n=8\) checks that the singlet multiplicity in \(V_j\otimes V_{j'}^*\) is \(\delta_{jj'}\), and checks \(C_2(j)=j(j+1)\) on that truncation. These numerical/finite-representation witnesses support the displayed identities; the general proofs are the analytic arguments above, not the truncation.

Assumptions: compact connected \(G\); positive \(\operatorname{Ad}\)-invariant inner product; trivial bundle on the time slab; fixed physical endpoint frames; quotient by every component of the based regional proper gauge group; trivial character of \(\pi_1(G)\); no charged matter; and normalized Haar measure.

Not proved here: nontrivial theta-character sectors or their flat-line-bundle quantization; unframed endpoint/conjugacy-class quantization; nontrivial bundles; charged matter; a continuum field-valued boundary group; a universal quantization-commutes-with-reduction theorem; anomalies; higher-dimensional Yang--Mills reconstruction; or any Chern--Simons/BF, gravity, or null-characteristic gluing theorem.
