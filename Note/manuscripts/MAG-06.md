# Supersymmetric Metric–Affine Models: A Rigid Reference and the Lift Problem

Status: DRAFT — bounded independent review recorded.

A supersymmetric matter reference and a supersymmetric metric–affine theory are different constructions. We construct a rigid Abelian $N=2$ vector model with eight real supercharges, a curved positive scalar target and a fully specified superspace action. One real bosonic restriction reproduces the classical scalar kinetic coefficient of [MAG-02](<MAG-02.md#L160-L170>). We then show why this does not supply an ordinary spin lift of an arbitrary nonmetric tangent connection, a supergravity completion, or the quantum cell model of [MAG-03](<MAG-03.md>).

The construction adds fields. Its vector, second Weyl fermion and auxiliary fields are essential; they are not derivatives of the original scalar disguised as independent partners. The supersymmetry statement rests on a reduced-chiral $N=2$ superfield and its invariant action, not on matching a bosonic metric or counting a finite pair of states.

## 1. Physical Conventions and the Chosen Field Content

Use physical signature $(-,+,+,+)$, derivative-first $\Gamma^\rho{}_{\mu\nu}$, $Q_{\mu\nu\rho}=-\nabla_\mu g_{\nu\rho}$, and $\kappa=8\pi G_N>0$. Set the speed of light and $\hbar$ to one. The [AST-15 spinor and energy dictionary](<AST-15.md#L80-L122>) uses

$$\begin{align}
s^\mu=(I,\sigma_i),\qquad t^\mu=(I,-\sigma_i),\qquad s^\mu t^\nu+s^\nu t^\mu=-2\eta^{\mu\nu}I,
\end{align}$$

$$\begin{align}
H=i\partial_t,\qquad P_i=-i\partial_i,\qquad P_\mu=-i\partial_\mu,\quad P_0=-H.
\end{align}$$

An unprimed upper spinor is the fundamental positive-$\gamma_5$ block of that dictionary. We do not rename it a negative-chirality left block. Conjugation is antilinear and reverses the order of odd factors. Spinor indices are $A=0,1$ and $A'=0',1'$; $\epsilon_{01}=1$ and $\epsilon^{01}=-1$ are ordinary inverse matrices.

Rigid means that the spacetime background is fixed Minkowski space and the supersymmetry parameters are constant. Fields and variations have sufficient falloff that the spacetime divergences used below have vanishing integrals. No independent gravitational connection occurs in the reference action. Field values lie in a specified healthy target patch; statements about boundary flux or an interacting quantum completion need additional data.

In an $N=1$ description the $N=2$ Abelian vector multiplet consists of a neutral chiral field $\Phi$ and a real vector field $V$. Their independent components are

| Superfield | Even components | Odd components |
|---|---|---|
| $\Phi$ | complex scalar $a$, complex auxiliary $\mathfrak f$ | Weyl spinor $\psi^A$ |
| $V$ in Wess–Zumino gauge | real gauge potential $B_\mu$, real auxiliary $d$ | Weyl spinor $\chi^A$ |

Here $\psi$ and $\chi$ have the same stated chirality, and their conjugates are also present. Off shell, no field equation has eliminated $\mathfrak f$ or $d$. The complex auxiliary and the real auxiliary assemble into the three real auxiliary components of the vector multiplet. Counting the gauge redundancy gives $2+(4-1)+2+1=8$ real even components and eight real odd components. This is a consistency count of the specified fields, not a proof of the algebra.

On shell in the free theory, the photon has two physical polarizations, the complex scalar two real modes, and the two Weyl fields four fermionic modes. This physical $4+4$ count is distinct from the off-shell count. A massive $N=1$ oscillator pair, by itself, establishes neither this field content nor $N=2$ off-shell supersymmetry.

## 2. Flat $N=2$ Superspace and a Reduced Chiral Vector

Introduce two copies $\theta_{Ai},\bar\theta_{A'}{}^i$, $i=1,2$, of the odd coordinates in [AST-15](<AST-15.md#L124-L215>). They anticommute with one another and with odd component fields. The real superspace has dimension $4|8$; in its complexification the eight odd generators are independent. All derivatives are left derivatives. Let $T^{AA'}=(t^\mu)^{AA'}\partial_\mu$ and define

$$\begin{aligned}
Q^{Ai}&=i\partial^L_{\theta_{Ai}}-\bar\theta_{A'}{}^iT^{AA'},& \bar Q_i^{A'}&=-i\partial^L_{\bar\theta_{A'}{}^i}+\theta_{Ai}T^{AA'},\\
D^{Ai}&=i\partial^L_{\theta_{Ai}}+\bar\theta_{A'}{}^iT^{AA'},& \bar D_i^{A'}&=-i\partial^L_{\bar\theta_{A'}{}^i}-\theta_{Ai}T^{AA'}.
\end{aligned}$$

Two odd operators use an anticommutator. The differentiation–multiplication relation gives

$$\begin{align}
\{Q^{Ai},\bar Q_j^{A'}\}=2i\delta^i_jT^{AA'},\qquad \{D^{Ai},\bar D_j^{A'}\}=-2i\delta^i_jT^{AA'},
\end{align}$$

with same-type brackets zero and every charge anticommuting with every covariant derivative. No field equation is used. On a positive-frequency wave, $T=-i(EI+\boldsymbol\sigma\cdot\mathbf p)$, so the charge bracket is the positive-energy matrix $2(EI+\boldsymbol\sigma\cdot\mathbf p)$ in each copy. Formal off-shell superfunctions need not form a positive particle Hilbert representation; that additional distinction remains as in [AST-15](<AST-15.md#L114-L169>).

Use $(\theta_A,\bar\theta_{A'})=(\theta_{A1},\bar\theta_{A'}{}^1)$ and $(\vartheta_A,\bar\vartheta_{A'})=(\theta_{A2},\bar\theta_{A'}{}^2)$ for the two copies. The normalized monomials and measures are

$$\begin{align}
\theta^2=2\theta_0\theta_1,\qquad \bar\theta^2=-2\bar\theta_{0'}\bar\theta_{1'},\qquad \int d^2\theta\,\theta^2=\int d^2\bar\theta\,\bar\theta^2=1,
\end{align}$$

and likewise for $\vartheta$. Thus the $N=1$ full measure extracts minus one quarter of the ordered $\theta_0\theta_1\bar\theta_{0'}\bar\theta_{1'}$ coefficient. It is different from the $N=2$ chiral measure $d^2\theta\,d^2\vartheta$.

A first-copy chiral field obeys $\bar D_1\Phi=0$. In $y^\mu=x^\mu-i\theta t^\mu\bar\theta$ it is

$$\begin{align}
\Phi(y,\theta)=a(y)+\sqrt2\theta_A\psi^A(y)+\theta^2\mathfrak f(y).
\end{align}$$

Define the chiral projector and Abelian field strength in this phase convention by

$$\begin{align}
\mathscr P=-\frac14\epsilon_{A'B'}\bar D_1^{A'}\bar D_1^{B'},\qquad W^A=i\mathscr P D^{A1}V,\qquad V^\dagger=V.
\end{align}$$

For a chiral gauge parameter $\Lambda$, $V\mapsto V+\Lambda+\Lambda^\dagger$ leaves $W$ invariant. With lower spinor derivatives formed using $\epsilon$, its Bianchi identity is

$$\begin{align}
D_AW^A+\bar D_{A'}\bar W^{A'}=0.
\end{align}$$

The conjugate projector is $\bar{\mathscr P}=\epsilon_{AB}D^{A1}D^{B1}/4$. Under the spacetime boundary assumptions, the normalization is equivalently

$$\begin{align}
\int d^4x\,d^2\theta\,H(\Phi)\mathscr P\Phi^\dagger =\int d^4x\,d^4\theta\,H(\Phi)\Phi^\dagger
\end{align}$$

for chiral $H$. This is an integrated projection identity, not permission to discard boundary fluxes pointwise.

The full $N=2$ field is obtained by a second chiral shift:

$$\begin{align}
\mathcal W= \left[\Phi+i\sqrt2\vartheta_AW^A +\vartheta^2\mathscr P\Phi^\dagger\right]
\big|_{x\,\mapsto\,x-i\vartheta t\bar\vartheta}.
\end{align}$$

The shift acts on every first-copy coefficient superfield. Omitting it would not give full $N=2$ chirality. To state the extra reality condition, let $e_{12}=1$, $e^{12}=-1$ on the copy labels, set $\bar D^{A'i}=e^{ij}\bar D_j^{A'}$, and define

$$\begin{align}
D^{ij}=\epsilon_{AB}D^{A(i}D^{B j)},\qquad \bar D^{ij}=-\epsilon_{A'B'}\bar D^{A'(i}\bar D^{B' j)}.
\end{align}$$

The field then satisfies

$$\begin{align}
\bar D_i^{A'}\mathcal W=0,\qquad D^{ij}\mathcal W=\bar D^{ij}\overline{\mathcal W}.
\end{align}$$

This is the reduced-chiral vector constraint. An unconstrained $N=2$ chiral superfield has too many independent slots. Here the extra constraint is precisely what ties them to the vector multiplet rather than introducing arbitrary chiral fields or equations of motion. Chirality and this constraint are preserved by the charge algebra.

## 3. A Normalized Invariant Action and Its Free Components

Let $\mathscr F(a)$ be a holomorphic function of dimension $L^{-2}$ on a scalar patch. It is the prepotential: define $a_D=\mathscr F'(a)$ and $\tau=\mathscr F''(a)$. Choose the two-derivative action, with no overall $1/(4\pi)$ factor,

$$\begin{align}
S=\operatorname{Im}\int d^4x\,d^2\theta\,d^2\vartheta\, \mathscr F(\mathcal W).
\end{align}$$

For a chiral integral $J$, $\operatorname{Im}J=(J-J^\dagger)/(2i)$ includes order-reversing conjugation and the antichiral measure. This fixes its normalization, rather than treating odd coefficients as commuting numbers.

Taylor expansion in the second pair of odd coordinates uses

$$\begin{align}
(\vartheta_AW^A)^2=-\frac12\vartheta^2W^2,\qquad W^2=2W^0W^1.
\end{align}$$

Consequently the $i\sqrt2$ factor supplies the positive one-half term, and the same action is

$$\begin{align}
S=\operatorname{Im}\int d^4x\left[ \int d^4\theta\,\Phi^\dagger\mathscr F'(\Phi) +\frac12\int d^2\theta\,\mathscr F''(\Phi)W^2\right].
\end{align}$$

The Kähler potential is $K=\operatorname{Im}(\bar a a_D)$ and $K_{a\bar a}=\operatorname{Im}\tau$. In the usual $N=1$ gauge-kinetic notation the holomorphic coefficient is $-i\tau$, not $\tau$ without a phase conversion.

The action is invariant under the eight real rigid supertranslations because the constraints are preserved and the chiral superspace variation integrates to an odd derivative plus a spacetime divergence. The stated boundary conditions remove the latter. This superspace construction is the supersymmetry argument. A bosonic kinetic calculation or a finite multiplet count would not replace it. It is a classical off-shell action statement, not an all-orders quantum Ward-identity theorem.

For component normalization use the real Wess–Zumino polynomial

$$\begin{align}
V=-\theta t^\mu\bar\theta B_\mu +i\theta^2\bar\theta_{A'}\bar\chi^{A'} +i\bar\theta^2\theta_A\chi^A +\frac12\theta^2\bar\theta^2d.
\end{align}$$

It gives $W^A|=-i\chi^A$. Set $F_{\mu\nu}=\partial_\mu B_\nu-\partial_\nu B_\mu$ and $\widetilde F^{\mu\nu}=\epsilon^{\mu\nu\rho\sigma}F_{\rho\sigma}/2$, with $\epsilon_{0123}=1$, hence $\epsilon^{0123}=-1$. The bosonic chiral top component is

$$\begin{align}
W^2\big|_{\theta^2,\,\mathrm{bos}} =d^2-\frac12F_{\mu\nu}F^{\mu\nu} +\frac i2 F_{\mu\nu}\widetilde F^{\mu\nu}.
\end{align}$$

Writing $\tau=\tau_1+i\tau_2$, the full action therefore has bosonic sector

$$\begin{align}
\mathcal L_{\rm bos} =-\tau_2\partial_\mu\bar a\partial^\mu a -\frac{\tau_2}{4}F_{\mu\nu}F^{\mu\nu} +\frac{\tau_1}{4}F_{\mu\nu}\widetilde F^{\mu\nu} +\tau_2\left(\bar{\mathfrak f}\mathfrak f+\frac{d^2}{2}\right).
\end{align}$$

There is no superpotential or Fayet–Iliopoulos term in this choice. On the purely bosonic sector the auxiliary equations give $\mathfrak f=d=0$. The omitted fermion interactions are specified by the complete superspace functional; retaining only this bosonic line would not specify the supersymmetric theory.

The free calibration is $\mathscr F_0=i a^2/2$, so $\tau=i$ and $K=\bar a a$. Up to spacetime divergences the full component density becomes

$$\begin{align}
\mathcal L_0=-\partial_\mu\bar a\partial^\mu a -\frac14F_{\mu\nu}F^{\mu\nu} +i\psi^\dagger s^\mu\partial_\mu\psi +i\chi^\dagger s^\mu\partial_\mu\chi +\bar{\mathfrak f}\mathfrak f+\frac12d^2.
\end{align}$$

Both Weyl fields have the positive time-kinetic normalization of [AST-15](<AST-15.md#L239-L264>). The scalar and physical Maxwell polarizations have positive free energy. A positive Fock realization uses the usual physical gauge polarizations and fermionic CAR; formal off-shell differential matrices alone do not provide that Hilbert space.

Dimensions are $[a]=[B_\mu]=L^{-1}$, $[\psi]=[\chi]=L^{-3/2}$, $[\mathfrak f]=[d]=L^{-2}$, $[\theta]=L^{1/2}$, and $[\tau]=1$. Both superspace versions of $S$ are dimensionless.

## 4. A Curved Positive Special-Coordinate Example

Choose a real deformation length $b>0$ and a coordinate $z$ with $[z]=L^{-1}$. On the disk $\mathcal D=\{z:|bz|<1\}$ set

$$\begin{align}
a(z)=z+\frac b2z^2,\qquad a_D(z)=i\left(z-\frac b2z^2\right),
\end{align}$$

$$\begin{align}
P(z):=\mathscr F(a(z)) =i\left(\frac{z^2}{2}+\frac{bz^3}{6}-\frac{b^2z^4}{8}\right),\qquad \tau(z)=i\frac{1-bz}{1+bz}.
\end{align}$$

The length $b$ is not the speed of light, a new spacetime coordinate, or an independently derived polymer scale. The prepotential is a function of the special coordinate $a$, not a polynomial prepotential in $z$. Indeed $P'=a_D a'$ and $a_D'=\tau a'$, so the displayed periods define $\mathscr F'(a)=a_D$ on this patch.

There is a genuine global branch on the chosen disk. If $a(z_1)=a(z_2)$, then

$$\begin{align}
0=(z_1-z_2)\left[1+\frac b2(z_1+z_2)\right].
\end{align}$$

The second factor cannot vanish because $|b(z_1+z_2)/2|<1$. Also $a'=1+bz\ne0$. Thus $a$ is injective and locally invertible throughout $\mathcal D$. Its image admits

$$\begin{align}
z(a)=\frac{\sqrt{1+2ba}-1}{b},\qquad \sqrt{1+2ba}=1+bz,
\end{align}$$

with the branch fixed by the value one at the origin and $\operatorname{Re}(1+bz)>0$. There is no arbitrary square-root branch crossing inside this patch.

The actual Kähler potential and scalar metric are

$$\begin{align}
K(z,\bar z)=|z|^2-\frac{b^2}{4}|z|^4,\qquad \mathsf g_z=\partial_z\partial_{\bar z}K=1-b^2|z|^2,
\end{align}$$

$$\begin{align}
\tau_2=\operatorname{Im}\tau =\frac{1-b^2|z|^2}{|1+bz|^2}>0,\qquad \mathsf g_z=\tau_2|a'(z)|^2.
\end{align}$$

Thus the scalar and gauge kinetic terms are positive on the same disk. This is a selected rigid special-Kähler vector target, encoded by holomorphic periods and a prepotential with positive imaginary coupling. Here “affine special Kähler” refers to a scalar-target structure, not the independent four-dimensional tangent connection of metric–affine gravity.

For fixed interior $z$, the limit $b\downarrow0$ gives $a\to z$, $a_D\to iz$ and $\tau\to i$, hence the free reference action above; the disks exhaust the complex plane. Its extra multiplet fields remain, so this limit is not a return to a single-scalar theory.

The nonlinear special coordinate matters. In $a$, $\tau_2$ is the imaginary part of a holomorphic function and is harmonic. In $z$, $\partial_z\partial_{\bar z}\mathsf g_z=-b^2$. These facts are compatible because $z$ is not a special coordinate. Substituting $P''(z)$ for $\tau$ would change the theory; at $bz=1/4$ their difference is $89i/160$.

The target is not flat. With $z=(\phi+ih)/\sqrt2$ its real line element and scalar curvature are

$$\begin{align}
ds^2_{\rm target}=2\mathsf g_z\,dz\,d\bar z =\mathsf g_z(d\phi^2+dh^2),\qquad R_{\rm target}=\frac{2b^2}{\mathsf g_z^3}.
\end{align}$$

The special-coordinate cubic gives the same result:

$$\begin{align}
\frac{d\tau}{da}=-\frac{2ib}{(1+bz)^3},\qquad R_{\rm target}=\frac{|d\tau/da|^2}{2\tau_2^3}.
\end{align}$$

This is curvature of a positive scalar configuration metric, not spacetime curvature. Its units are $L^2$, inverse scalar-field units squared, rather than the $L^{-2}$ units of spacetime scalar curvature.

Rigid $N=2$ vector multiplets have complex scalar targets of this special-Kähler kind. Hypermultiplet matter is a different representation: its rigid two-derivative target is hyperkähler, with three compatible parallel complex structures satisfying the quaternion algebra, and real dimension $4n$. Our vector target has two real dimensions. The dimension restriction on hyperkähler targets is not a prohibition on a one-complex-dimensional $N=2$ vector model. Neither a complex coordinate nor twistor packaging alone specifies the required multiplet and action.

On compact subdisks the quadratic kinetic coefficients stay strictly positive. For constant scalar background, define $\mathcal E_i=F_{0i}$ and $\mathcal B_i=\epsilon_{ijk}F_{jk}/2$, with $\epsilon_{123}=1$. The bosonic Maxwell momentum and energy density are

$$\begin{align}
\Pi_i=\tau_2\mathcal E_i-\tau_1\mathcal B_i,\qquad \mathcal H_{\rm Maxwell} =\frac{|\boldsymbol\Pi+\tau_1\boldsymbol{\mathcal B}|^2}{2\tau_2} +\frac{\tau_2}{2}|\boldsymbol{\mathcal B}|^2.
\end{align}$$

Gauss's law still removes the unphysical longitudinal gauge degree of freedom. Positivity of these kinetic terms supplies a healthy local reference and positive free fluctuations, not an all-orders unitary UV completion. The dimensionful $b$ marks an effective interaction scale. No assertion is made that the theory can be extended through its degenerating boundary or used at arbitrarily high energies.

## 5. Classical Matching Is Not a Supersymmetric Truncation

The [MAG-02 classical scalar coefficient](<MAG-02.md#L160-L170>) is

$$\begin{align}
Z(\phi)=1-\frac{3\kappa\lambda^2}{8}\phi^2, \qquad \lambda\in\mathbb R\setminus\{0\}.
\end{align}$$

Make the explicit parameter choice $b^2=3\kappa\lambda^2/4$ and set $z=\phi/\sqrt2$ on the bosonic real axis. Then

$$\begin{align}
-\mathsf g_z\partial_\mu\bar z\partial^\mu z =-\frac12Z(\phi)\partial_\mu\phi\partial^\mu\phi,\qquad |\phi|<\frac{\sqrt2}{b}=\sqrt{\frac8{3\kappa\lambda^2}}.
\end{align}$$

The factor one half comes from the real restriction, not a changed definition of $Z$. Dimensions agree because $[\kappa]=L^2$ and the inherited $\lambda$ is dimensionless. This matches the classical kinetic term only. We have not added the general massive potential in that model or derived its affine current from an $N=2$ metric–affine action.

A holomorphic first-copy reparametrization $\Phi=a(Z_c)$, where $Z_c$ has lowest scalar $z$, transforms its components as

$$\begin{align}
a=a(z),\qquad \psi_a=a'(z)\psi_z,\qquad \mathfrak f_a=a'(z)\mathfrak f_z-\frac12a''(z)\psi_z\psi_z.
\end{align}$$

The fermion bilinear cannot be discarded in an off-shell change of coordinates. Rewriting the complete $N=1$ action in $Z_c,V$ preserves the induced, now nonlinear, second supersymmetry. It does not make $Z_c$ a standard reduced-chiral $N=2$ field strength with prepotential $P(Z_c)$. In particular the gauge coefficient remains $\tau(z)$, while the scalar coefficient is its metric pullback.

Setting $h$, $B_\mu$, both fermions and auxiliaries to zero displays the real bosonic kinetic restriction. A generic spacetime-dependent scalar on that restriction is not preserved by all supercharges: a fermionic variation contains its derivative. Constant vacua and a complete supersymmetric multiplet are different statements. No supersymmetric truncation theorem follows from the equality of the two kinetic expressions.

Likewise the homogeneous Dirichlet quantization of [MAG-03](<MAG-03.md#L46-L106>) has its own Hilbert space, ordering, selfadjoint domain and clock. It has no specified vector/partner-fermion Hilbert space or common supercharge domain. Those boundary conditions are not automatically $N=2$ boundary conditions. Its Gibbs trace is not thereby a supersymmetric quantum model or a graded index. Thermal states and supersymmetric indices require separately specified traces, statistics and domains.

## 6. Why the Full Affine Lift Is Extra Work

Let $\omega_\mu{}^a{}_b$ be a tangent connection in an orthonormal frame with constant $\eta_{ab}$. Suppose an ordinary spin connection $\Omega_\mu$ intertwines this **full** tangent connection with fixed Clifford matrices:

$$\begin{align}
\{\gamma^a,\gamma^b\}=-2\eta^{ab}I,\qquad [\Omega_\mu,\gamma^a]=-\omega_\mu{}^a{}_b\gamma^b.
\end{align}$$

Commuting $\Omega$ with the Clifford relation gives

$$\begin{align}
0=2(\omega_\mu{}^{ab}+\omega_\mu{}^{ba})I.
\end{align}$$

Thus the symmetric part must vanish: in this frame $Q_{\mu ab}=\omega_{\mu ab}+\omega_{\mu ba}=0$. For a metric-compatible connection the familiar choice

$$\begin{align}
\Omega_\mu=-\frac14\omega_{\mu ab}\gamma^{ab},\qquad \gamma^{ab}=\frac12[\gamma^a,\gamma^b]
\end{align}$$

has the required covariance with the project's Clifford sign. This argument is conditional on full-connection Clifford compatibility. It is not a theorem that no spin matter can ever be coupled to a nonmetric theory. One can instead specify a Lorentz-projected matter connection or a modified weighted/Clifford structure, but that is additional structure whose action, transformations and constraints must be supplied.

The obstruction is already visible for a tangent identity shift $\omega_\mu{}^a{}_b=A_\mu\delta^a_b$. A scalar spin connection commutes with every gamma matrix and cannot produce $-A_\mu\gamma^a$. More generally, the four simultaneous commutator equations for a general complex four-by-four spin matrix have coefficient rank 15 and augmented rank 16 when the shift coefficient is one. Allowing an arbitrary ordinary spin matrix does not repair this example.

The projective symmetry in [MAG-02](<MAG-02.md#L18-L38>) is

$$\begin{align}
\Gamma_\mu\longmapsto\Gamma_\mu+A_\mu I
\end{align}$$

for an arbitrary allowed real one-form $A$, not just an exact derivative. At fixed metric it changes $Q_{\mu\nu\rho}$ by $2A_\mu g_{\nu\rho}$. It is not the compact internal gauge transformation $B\mapsto B+d\alpha$ of our vector. The latter leaves $F=dB$ unchanged and acts on charged matter by a phase with a chosen charge unit. A projective $A$ can have $dA\ne0$, as the explicit loop example in [MAG-02](<MAG-02.md#L338-L381>) shows. Even a central complex phase on spinors still commutes with gamma matrices and does not implement the missing full tangent intertwining.

Consequently neither a trace decomposition nor extra spinor indices identify these two symmetries. A Lorentz-projected coupling can be useful, but it is not the full affine lift just ruled out under the stated hypotheses. Metric compatibility alone is also not sufficient for rigid supersymmetry on an arbitrary curved background: preserved spinors/background fields or a local supergravity multiplet and its closure conditions would still be needed. No such general completion is supplied here.

## 7. Periods, Charges and the Final Boundary of the Model

Calling $a_D$ a dual period does not manufacture charged states. To use electromagnetic charge labels, an extension must supply a lattice $\Gamma_{\rm em}\simeq\mathbb Z^2$, its integer symplectic pairing, allowed global gauge data and a central-charge normalization $C$. Only with those extra choices may one assign

$$\begin{align}
Z_\gamma=C(n_ea+n_ma_D),\qquad (n_e,n_m)\in\Gamma_{\rm em}.
\end{align}$$

Here $C$ is a chosen dimensionless normalization, not fixed by the local bosonic metric. The contractible period patch does not determine a quantum duality group, monodromy spectrum or ultraviolet charged sector.

In the [AST-15 rest-frame normalization](<AST-15.md#L342-L369>), $a,b=0,1$ are spin labels with $e_{01}=1$, and $I,J=1,2$ are charge-copy labels with $e_{12}=1$. These are numerical antisymmetric matrices, not the spacetime metric. A unitary massive representation with central charge $Z_\gamma$ has

$$\begin{align}
\{Q^I_a,(Q^J_b)^\dagger\}=2M\delta^{IJ}\delta_{ab},\qquad \{Q^I_a,Q^J_b\}=2e_{ab}e_{IJ}Z_\gamma.
\end{align}$$

The associated two-by-two norm blocks have eigenvalues $2(M\pm|Z_\gamma|)$, so positivity requires $M\ge|Z_\gamma|$. Saturation is the BPS shortening condition **if such a state exists**. The bound is not an existence theorem. Our neutral Abelian reference has not supplied charged matter or a regular monopole core, so no BPS spectrum is inferred from the periods.

What has been constructed is a chosen rigid $N=2$ vector action, its normalized off-shell realization, a positive curved special-coordinate domain, and a precisely limited classical kinetic matching. It contains the extra vector, scalar, fermionic and auxiliary data required by that reference. It does not establish a full supersymmetric nonmetric gravitational connection, equality of reduced and unreduced quantum theories, supergravity, Standard Model generations, anomaly cancellation, a UV completion or universal quantum Ward identities. The period example makes the positive reference concrete; the Clifford and projective arguments locate the additional affine-lift problem rather than hiding it in notation.

## References and Framework Inputs

[1] J. Wess and J. Bagger, Supersymmetry and Supergravity, second edition, Princeton University Press, 1992. Superspace and multiplet framework; the phases, chirality and measures here follow the explicitly calibrated project dictionary rather than an unconverted convention.

[2] A. Bilal, Duality in N=2 SUSY SU(2) Yang–Mills Theory: A Pedagogical Introduction to the Work of Seiberg and Witten, [hep-th/9601007](<https://arxiv.org/abs/hep-th/9601007>). Rigid prepotential and period formalism; no non-Abelian quantum spectrum is imported into this Abelian choice.

[3] D. S. Freed, Special Kähler Manifolds, Communications in Mathematical Physics 203 (1999), 31–52, [hep-th/9712042](<https://arxiv.org/abs/hep-th/9712042>). Scalar-target special geometry, not a lift of the spacetime metric–affine connection.

[4] D. Z. Freedman and A. Van Proeyen, Supergravity, Cambridge University Press, 2012. Vector versus hypermultiplet geometry and rigid versus local supersymmetry; a local supergravity completion is not constructed above.
