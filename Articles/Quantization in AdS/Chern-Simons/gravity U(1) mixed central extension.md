# Einstein Gravity + U(1) Chern-Simons: Mixed Central Extension

The checks give the following result. The Virasoro–current algebra has a nontrivial mixed central class, but standard Brown–Henneaux gravity plus chiral U(1) CS realizes zero mixed charge for the ordinary geometric lift. A derivative gauge lift realizes a nonzero mixed charge on that same phase space. It changes the spacetime generator, its vacuum stabilizer, and the Virasoro central coefficient; it is not a coboundary at fixed generators.

There is also an obstruction beyond product boundary conditions: if the same AdS vacuum with $A=0$, its ordinary geometric $SL(2)$ stabilizer, and the full stated Virasoro–U(1) charge algebra survive, the mixed class must vanish. A concrete non-product Hamiltonian boundary condition below passes the variational and flux checks, but fails to preserve the original pure loop-gauge symmetries. It also fails positive energy at sufficiently high Fourier number. It is not a realization of a new mixed anomaly.

## Scope and Conventions

Work classically on a smooth disk spatial slice, with no punctures, Wilson lines, nontrivial holonomy, or extra boundary fields. Proper gauge transformations vanish at the boundary. Nonconstant boundary gauge transformations are physical symmetries when they preserve the prescribed boundary data. The constant U(1) acts trivially in this vacuum sector. All boundary integrals are periodic.

The action is

$$\begin{align}
S&=\frac{1}{16\pi G}\int_M\sqrt{-g}\left(R+\frac{2}{\ell^2}\right)\mathrm d^3x +\frac{k}{4\pi}\int_M A\wedge\mathrm dA+S_\Gamma.
\end{align}$$

The gravitational part of $S_\Gamma$ includes the Gibbons–Hawking term and usual AdS counterterm. The CS part is specified below. Its metric-independent bulk density has zero Hilbert stress tensor, so the bulk equations are $R_{\mu\nu}=-2g_{\mu\nu}/\ell^2$ and $\mathrm dA=0$ for $k\ne0$. Boundary terms can still contribute boundary stress.

Use $\iota_{X_H}\Omega=-\delta H$ and $\{H,K\}=X_KH$ from [the CPS formalism](../perturbation/formalism.md), and define

$$\begin{align}
\langle h\rangle&=\frac1{2\pi}\int_0^{2\pi}h(\theta)\,\mathrm d\theta, &[F,G]_{\mathrm{alg}}&:=i\{F,G\}_{\mathrm P}.
\end{align}$$

The latter is a convenient complex mode bracket, not a quantum commutator. Quantization uses $[\widehat F,\widehat G]=i\widehat{\{F,G\}_{\mathrm P}}$, with ordering corrections where needed.

Choose bulk orientation $\mathrm dt\wedge\mathrm dr\wedge\mathrm d\theta$ and spatial orientation $\mathrm dr\wedge\mathrm d\theta$. The chiral example uses $A_t=A_\theta$ and the resulting signed level is $[J_m,J_n]_{\mathrm{alg}}=km\delta_{m+n,0}$. These oriented covariant components must not be silently identified with the older notes' contravariant $A^\pm$. Reversing orientation or chirality requires changing the corresponding signs consistently.

Only one gravitational chirality couples to the current; the other Virasoro algebra is a commuting spectator. Boundary time is measured in units of $\ell$. Write $K=\ell/(4G)$ and $c_{\mathrm{grav}}=6K$. The gravitational vacuum orbit and its classical central normalization are inputs from [the vacuum-orbit note](../linearized%20gravity/all%20order%20perturbation%20result.md); their global and quantum justification is not repeated here.

## 1. Allowed Central Classes

Start with

$$\begin{align}
[L_m,L_n]&=(m-n)L_{m+n},\\
[L_m,J_n(x)]&=-nJ_{m+n}(x),\\
[J_m(x),J_n(y)]&=J_{m+n}([x,y]),\qquad x,y\in\mathfrak g.
\end{align}$$

For finite-dimensional reductive $\mathfrak g$,

$$\begin{align}
H^2_{\mathrm{loc}}\big(\mathrm{Vect}(S^1)\ltimes L\mathfrak g\big) \simeq\mathbb R\oplus(S^2\mathfrak g^*)^{\mathfrak g} \oplus(\mathfrak g/[\mathfrak g,\mathfrak g])^*.
\end{align}$$

Here the smooth local cochains are integrals of finite-order differential expressions in circle data; mode formulas use their complexification. This is not a classification of discontinuous cochains or global group extensions. For Laurent polynomials the corresponding result is the genus-zero, two-point specialization of [Schlichenmaier, Theorem 4.11, printed p. 29](https://arxiv.org/pdf/math/0210360#page=29). The theorem and dimension were visually checked. Its almost-graded locality is not being equated with arbitrary nonlocal functional cohomology.

Representatives, up to coboundaries, are

$$\begin{align}
K(L_m,L_n)&=\frac c{12}(m^3-m)\delta_{m+n,0},\\
K(J_m(x),J_n(y))&=m\kappa(x,y)\delta_{m+n,0},\\
K(L_m,J_n(x))&=m^2q(x)\delta_{m+n,0},\\
\kappa([x,y],z)&=\kappa(x,[y,z]),& q([\mathfrak g,\mathfrak g])&=0.
\end{align}$$

The circle integrands are proportional to $f'''g$, $\kappa(\lambda,\rho')$, and $f''q(\lambda)$, antisymmetrized between the two arguments. Reality factors depend on the choice of real Poisson or complex mode bracket.

The U(1) calculation is elementary. Rotation averaging selects a rotation-invariant representative: the infinitesimal rotation action on cohomology is homotopic to zero, and averaging differential local cochains preserves locality. Write the coefficients multiplying $\delta_{m+n,0}$ as $A(m),B(m),C(m)$. Jacobi gives

$$\begin{align}
0&=(m-n)A(m+n)-(m+2n)A(m)+(2m+n)A(n),\\
0&=(m-n)B(m+n)-(m+n)B(m)+(m+n)B(n),\\
0&=nC(m+n)-(m+n)C(n).
\end{align}$$

Locality gives polynomials; antisymmetry makes $A,C$ odd. For a highest term $m^d$, $d>1$, the coefficient of $m^dn$ is $d-3$ in the first recurrence and $d-2$ in the second. The low-degree cases can be substituted directly. Hence

$$\begin{align}
A(m)&=a_3m^3+a_1m,&B(m)&=qm^2+rm,&C(m)&=km.
\end{align}$$

Shifts of $L_0$ and $J_0$ account for the linear coboundaries. A coboundary on $(L_m,J_{-m})$ is proportional to $m$, so it cannot remove $qm^2$.

For reductive $\mathfrak g$, put the current cocycle in invariant-bilinear-form normal form first. The remaining $LJJ$ identity forces the pure mixed functional to annihilate $[x,y]$. Thus a simple algebra has no mixed class. A complex semisimple algebra, or a compact real form, has one affine level per simple factor, not necessarily one level altogether; for other real forms retain the invariant-bilinear-form space in the formula above. The $\mathfrak{su}(2)$ commutator span was checked to have rank three. For $\mathfrak u(1)$ there are three classes: Virasoro, affine, and mixed.

The polynomial kernels through degree eight in the verification script are bounded diagnostics. Completeness follows from the degree argument and the reductive theorem, not from a finite Fourier truncation.

## 2. Standard Boundary Conditions: Exact Zero Mixed Class

### Action, Reduction, and Proper Gauge

Off shell,

$$\begin{align}
\delta(A\wedge\mathrm dA)&=2\delta A\wedge\mathrm dA-\mathrm d(A\wedge\delta A),\\
\Theta_\Sigma^{\mathrm{CS}}&=-\frac{k}{4\pi}\int_\Sigma A\wedge\delta A,\\
\Omega_{\mathrm{CS}}(\delta_1,\delta_2) &=-\frac{k}{2\pi}\int_\Sigma\delta_1A\wedge\delta_2A.
\end{align}$$

The outer timelike boundary has induced orientation $-\mathrm dt\wedge\mathrm d\theta$. Using positive coordinate measure $\mathrm dt\,\mathrm d\theta$, choose

$$\begin{align}
S_\Gamma^{\mathrm{CS}}&=\frac{k}{4\pi}\int_\Gamma (A_tA_\theta-vA_\theta^2)\,\mathrm dt\,\mathrm d\theta,\\
\delta S_{\mathrm{CS}}\big|_\Gamma &=\frac{k}{2\pi}\int_\Gamma(A_t-vA_\theta)\delta A_\theta\,\mathrm dt\,\mathrm d\theta.
\end{align}$$

Fix $v=1$ and impose $A_t=A_\theta$. The boundary variation and symplectic flux vanish. This boundary Lagrangian has no time derivatives, so it adds no temporal corner potential. Impose standard Brown–Henneaux Dirichlet data independently on the metric.

On the trivial disk sector $A=\mathrm du$, with single-valued $u$, and

$$\begin{align}
\Omega_{\mathrm{CS}}&=-\frac{k}{4\pi}\int_{S^1} \delta u\wedge\partial_\theta\delta u\,\mathrm d\theta,\\
j&=ku',&Q[\lambda]&=\langle\lambda j\rangle,\\
\iota_{X_\lambda}\Omega_{\mathrm{CS}}&=-\delta Q[\lambda], &\delta_\lambda j&=k\lambda'.
\end{align}$$

Here $J_0=0$. Parameters vanishing at the boundary, and constants acting trivially on $A$, are degeneracies. Nonconstant boundary parameters are not proper gauge. Smooth Fourier boundary functions have smooth disk extensions, for example $r^{|m|}e^{im\theta}$ in a disk chart; their symplectic pairing reduces exactly to the boundary integral.

For $J_m=\langle e^{im\theta}j\rangle$,

$$\begin{align}
\{Q[\lambda],Q[\rho]\}&=k\langle\lambda\rho'\rangle, &[J_m,J_n]_{\mathrm{alg}}&=km\delta_{m+n,0}.
\end{align}$$

The symmetry identities are off shell: $\delta_\lambda(A\wedge\mathrm dA)=\mathrm d(\lambda\,\mathrm dA)$ and the Lie derivative of a spacetime top form is an exterior derivative. Boundary-preserving gauge parameters satisfy $\partial_t\lambda=\partial_\theta\lambda$. With the boundary action included, these transformations leave only initial/final-slice terms. The action symmetry is established before imposing flatness to evaluate its charge.

### Geometric Diffeomorphisms Include the Sugawara Charge

The off-shell identity

$$\begin{align}
\mathcal L_\xi A&=\iota_\xi F+\mathrm d(\iota_\xi A)
\end{align}$$

was checked with xAct. Only subsequently does $F=0$ identify the diffeomorphism with a field-dependent gauge transformation.

On a spatial slice, a boundary reparametrization gives $\delta_fu=fu'$ modulo the constant mode. Its CS Hamiltonian is

$$\begin{align}
S[f]&=\left\langle f\frac{j^2}{2k}\right\rangle, &\delta_fj&=(fj)'.
\end{align}$$

Equivalently, integrate $\delta H_f=\langle f(j/k)\delta j\rangle$. Substituting $\lambda=fj/k$ directly into $Q[\lambda]$ would give twice the Hamiltonian: the parameter is field dependent.

Let $b$ be gravitational cylinder stress, with $b_{\mathrm{vac}}=-c_{\mathrm{grav}}/24$ and $\delta_fb=fb'+2f'b-c_{\mathrm{grav}}f'''/12$. Then

$$\begin{align}
\Omega_{\mathrm{red}}&=\Omega_{\mathrm{grav}}+\Omega_{\mathrm{CS}},\\
T&=b+\frac{j^2}{2k},& L_m&=\langle e^{im\theta}T\rangle+\frac{c_{\mathrm{grav}}}{24}\delta_{m,0}.
\end{align}$$

The geometric generator acts on both fields. The gravitational charge alone commutes with $j$ and is a different lift. Direct calculation gives

$$\begin{align}
[L_m,L_n]_{\mathrm{alg}} &=(m-n)L_{m+n}+\frac{c_{\mathrm{grav}}}{12}(m^3-m)\delta_{m+n,0},\\
[L_m,J_n]_{\mathrm{alg}}&=-nJ_{m+n},\\
[J_m,J_n]_{\mathrm{alg}}&=km\delta_{m+n,0}.
\end{align}$$

Thus $q=0$ exactly. At the vacuum this also follows from the block symplectic form and $\delta_\xi A=0$. The cocycle is the charge bracket minus the charge of the symmetry bracket; $J_{\mathrm{vac}}=0$ makes that subtraction vanish in the mixed sector.

Classical Sugawara has no Virasoro central coefficient. Quantum normal ordering contributes $1$, as confirmed by the exact double-contraction sum $\frac12\sum_{p=1}^{m-1}p(m-p)=(m^3-m)/12$. This does not fix the quantum gravitational central charge. For an independently defined gravitational quantum module, the product construction gives its tensor product with the affine vacuum module and geometric central charge $c_{\mathrm{grav,quantum}}+1$.

## 3. General Local Linear Improvement

Allow a linear mixed coboundary temporarily:

$$\begin{align}
[L_m,L_n]_{\mathrm{alg}}&=(m-n)L_{m+n}+\frac c{12}(m^3-m)\delta_{m+n,0},\\
[L_m,J_n]_{\mathrm{alg}}&=-nJ_{m+n}+(qm^2+rm)\delta_{m+n,0},\\
[J_m,J_n]_{\mathrm{alg}}&=km\delta_{m+n,0}.
\end{align}$$

Keep the current normalization and allow translation-invariant, finite-derivative, linear changes of lift. For $L'_m=L_m+h(m)J_m$ modulo constants, noncentral closure requires

$$\begin{align}
(m-n)h(m+n)&=mh(m)-nh(n).
\end{align}$$

Highest-degree comparison gives $h(m)=am+b$. This is the general improvement in the stated class, not a classification of nonlinear or field-dependent changes. Include constants:

$$\begin{align}
L'_m&=L_m+(am+b)J_m+s\delta_{m,0},\\
J'_m&=J_m+d\delta_{m,0}.
\end{align}$$

Direct calculation gives

$$\begin{align}
q'&=q+ka,&r'&=r+kb-d,\\
c'&=c-24aq-12ka^2.
\end{align}$$

Keeping the Virasoro representative $(m^3-m)$ requires

$$\begin{align}
s&=br+\frac{kb^2}{2}-aq-\frac{ka^2}{2}.
\end{align}$$

For $k\ne0$, $a=-q/k$ removes $q$. With $b=r=0$,

$$\begin{align}
\widehat L_m&=L_m-\frac qk\,mJ_m+\frac{q^2}{2k}\delta_{m,0},\\
\widehat c&=c+\frac{12q^2}{k},&\widehat q&=0.
\end{align}$$

Thus $c+12q^2/k$ is invariant under derivative lifts. Omitting the $L_0$ shift gives the correct cubic coefficient but the wrong linear coefficient if one still writes $(m^3-m)$. A $J_0$ shift is charge normalization, not automatically a permitted change of holonomy sector; in the disk vacuum it is natural to retain $J_0=0$.

### Reality and a Concrete Lift with Nonzero Mixed Charge

For $L_m^\dagger=L_{-m}$ and $J_m^\dagger=J_{-m}$,

$$\begin{align}
q^*&=-q,&r^*&=r.
\end{align}$$

Write $q=i\chi$, $\chi\in\mathbb R$. An adjoint-preserving improvement has $a=i\beta$ with real $\beta$, and real $b,d,s$. Therefore

$$\begin{align}
\chi'&=\chi+k\beta,&c'&=c+24\beta\chi+12k\beta^2,\\
c-\frac{12\chi^2}{k}&=\text{invariant}.
\end{align}$$

The explicit imaginary mixed coefficient agrees with [Kwon, equations (2.1)–(2.4), printed p. 585](https://www.atlantis-press.com/article/125950700.pdf#page=3), visually checked. The sign of the shift is fixed here rather than left unspecified.

Starting from the product theory with $q=0$, choose

$$\begin{align}
\lambda_f&=\beta f',&H_\beta[f]&=H_{\mathrm{geom}}[f]+Q[\beta f'],\\
T_\beta&=T-\beta j',& L_m^\beta&=L_m+i\beta mJ_m+\frac{k\beta^2}{2}\delta_{m,0}.
\end{align}$$

Then $q_\beta=ik\beta$ and $c_\beta=c+12k\beta^2$. Charges are finite and integrable. Chiral $f$ gives a chiral gauge parameter, preserving the same boundary condition. Closure follows from $(fg'-gf')'=fg''-gf''$. The finite orientation-preserving circle-group cocycle is $\beta\log F'$, since $\log(F\circ G)'=(\log F')\circ G+\log G'$. It is periodic, has zero winding, and admits a smooth disk extension.

However, this parameter is generically a large gauge transformation, and

$$\begin{align}
\delta_f^\beta j&=(fj)'+k\beta f''.
\end{align}$$

The lifted $L_{\pm1}$ no longer fix $A=0$, and $L_0^\beta|_{\mathrm{vac}}=k\beta^2/2$. The original stabilizer survives as a different combination of lifted and gauge generators. This is a changed symmetry splitting, not removal of a fixed-split cohomology class.

At $k=0$ the improvement cannot remove $q$ algebraically. But setting the coefficient of the only U(1) bulk action to zero also removes its symplectic form and field equation. It does not supply a nondegenerate affine vacuum sector of the same Einstein+CS model.

## 4. Counterterms, Sources, and Cross Symplectic Terms

With fixed reduced $\Omega$ and fixed symmetry vectors, $\iota_X\Omega=-\delta H_X$ fixes charges up to field-independent constants on a connected component. Their cocycle can change only by a coboundary, which cannot eliminate $qm^2$.

A total-derivative action change has this property when the induced potential and corner terms are retained consistently. A boundary action with time derivatives may instead change the corner symplectic structure; an interaction can change allowed variations and symmetry vectors. Neither is covered by the fixed-$\Omega$, fixed-$X$ statement.

For an explicit source convention,

$$\begin{align}
\delta S_{\mathrm{ren}}\big|_\Gamma &=\int\mathrm dt\,\langle T\delta\mu+j\delta\nu\rangle.
\end{align}$$

Set $\nu=\widetilde\nu+\beta\mu'$. Integration by parts gives

$$\begin{align}
\delta S_{\mathrm{ren}}\big|_\Gamma &=\int\mathrm dt\,\langle(T-\beta j')\delta\mu+j\delta\widetilde\nu\rangle.
\end{align}$$

This is exactly the improved stress, but only an invertible source change: fixing $\mu=1,\widetilde\nu=0$ still fixes $\nu=0$. Holding the original or redefined gauge source fixed gives different prescriptions for varying the metric source. The variational principle fixes a stress only after the source interpretation and lift are specified.

A cross term in coordinates for $\Omega$ is also insufficient. Set $v=\log F'$ for a circle diffeomorphism and $u=\chi-\beta v$. The same current form becomes

$$\begin{align}
\Omega_{\mathrm{CS}}=-\frac{k}{4\pi}\int \big[\delta\chi\wedge\delta\chi' -\beta(\delta\chi\wedge\delta v'+\delta v\wedge\delta\chi') +\beta^2\delta v\wedge\delta v'\big]\,\mathrm d\theta.
\end{align}$$

These are cross terms from an invertible pullback. The gauge moment map remains $j=k(\chi'-\beta v')$, not $k\chi'$. Ignoring that change would manufacture an incorrect mixed charge.

## 5. An Explicit Non-Product Boundary Relation

This test changes the relation between sources and responses. Use first-order Einstein gravity locally near an invertible AdS triad, with the other gravitational chirality held fixed. Take

$$\begin{align}
a_\theta&=\mathsf L_1-\frac bK\mathsf L_{-1},\\
a_t&=\mu\mathsf L_1-\mu'\mathsf L_0+ \left(\frac{\mu''}{2}-\frac{\mu b}{K}\right)\mathsf L_{-1},\\
A_\theta&=\frac jk,&A_t&=\zeta,
\end{align}$$

where $[\mathsf L_m,\mathsf L_n]=(m-n)\mathsf L_{m+n}$. Direct $2\times2$ matrix evaluation of $F_{t\theta}=0$ gives

$$\begin{align}
\dot b&=\mu b'+2\mu'b-\frac K2\mu''',& \dot j&=k\zeta'.
\end{align}$$

Radial gauge supplies the local asymptotically AdS extension. Spatial connections retain the gravity vacuum holonomy and trivial U(1) holonomy of the selected orbits. State-dependent $\mu$ relaxes the fixed boundary metric: this example is not a Brown–Henneaux Dirichlet condition.

Use $\operatorname{tr}(\mathsf L_1\mathsf L_{-1})=-1$. After radial reduction, the finite boundary term selecting the canonical polarization is

$$\begin{align}
S_{\Gamma,\mathrm{pol}} &=\frac1{4\pi}\int\mathrm dt\,\mathrm d\theta \left[K\operatorname{tr}(a_ta_\theta)+kA_tA_\theta\right].
\end{align}$$

It combines with the bulk boundary variation to give

$$\begin{align}
\delta(S_{\mathrm{bulk}}+S_{\Gamma,\mathrm{pol}})\big|_\Gamma &=\frac1{2\pi}\int\mathrm dt\,\mathrm d\theta \left[K\operatorname{tr}(a_t\delta a_\theta)+kA_t\delta A_\theta\right]\\
&=\int\mathrm dt\,\langle\mu\delta b+\zeta\delta j\rangle.
\end{align}$$

This describes the active first-order sectors; the fixed spectator sector and the usual radial subtractions are understood. The equality was checked directly using the displayed connections. Choose

$$\begin{align}
\mathcal H_\eta&=b+\frac{j^2}{2k}+\eta(b-b_{\mathrm{vac}})j,\\
\mu&=\frac{\partial\mathcal H_\eta}{\partial b}=1+\eta j,\\
\zeta&=\frac{\partial\mathcal H_\eta}{\partial j} =\frac jk+\eta(b-b_{\mathrm{vac}}).
\end{align}$$

Adding $-\int\mathrm dt\,\langle\mathcal H_\eta\rangle$ cancels that response variation. Relative to the standard canonical chiral action, this is the finite boundary interaction $-\eta\int\mathrm dt\,\langle(b-b_{\mathrm{vac}})j\rangle$. The reciprocal dependence of both sources is essential: prescribing only $\zeta$ as a function of $b$ leaves an uncancelled gravitational variation.

The symplectic flux vanishes:

$$\begin{align}
\delta\mu\wedge\delta b+\delta\zeta\wedge\delta j &=\eta\delta j\wedge\delta b+ \left(\frac{\delta j}{k}+\eta\delta b\right)\wedge\delta j=0.
\end{align}$$

The interaction has no time derivatives in first-order variables. It changes time evolution while leaving the equal-time symplectic form a product. There is no new constraint between $b$ and $j$ on an initial slice. The vacuum still has $\mu=1,\zeta=0$, and

$$\begin{align}
\dot b&=(1+\eta j)b'+2\eta bj'-\frac{c_{\mathrm{grav}}\eta}{12}j''',\\
\dot j&=j'+\eta kb'.
\end{align}$$

Thus finiteness, differentiability, zero flux, and the flatness equations are explicitly checked. These are variational statements, not proofs of global existence or positive energy.

### Symmetry Preservation: the Original Affine Symmetry Fails

A pure U(1) gauge transformation has

$$\begin{align}
\delta_\lambda b&=0,&\delta_\lambda j&=k\lambda',& \delta_\lambda\mu&=0.
\end{align}$$

It therefore changes the gravitational source constraint by

$$\begin{align}
\delta_\lambda(\mu-1-\eta j)&=-\eta k\lambda'.
\end{align}$$

For $\eta k\ne0$, arbitrary loop-gauge transformations are not tangent to the allowed boundary data. Only constant $\lambda$ survives as a pure gauge parameter, acting trivially in the disk vacuum. Changing the time dependence of $\lambda$ cannot repair this gravitational-source obstruction.

On an initial slice the old functions $L_m,J_n$ retain their old brackets, including $q=0$, because $\Omega$ is unchanged. They are not the original conserved asymptotic symmetry generators of this new boundary problem. Combined field-dependent transformations would need their own analysis; their existence and algebra do not follow from equal-time brackets. This example does not produce a nonzero $q$ for the algebra posed in Section 1.

### Positive Energy: a Second Obstruction

For $c_{\mathrm{grav}},k>0$ and a gravity mode $n\ge2$, normalize the vacuum charges by

$$\begin{align}
L_n^{\mathrm{grav}} &=\sqrt{\frac{c_{\mathrm{grav}}}{12}n(n^2-1)}\,a_n+\cdots,\\
J_n&=\sqrt{kn}\,b_n.
\end{align}$$

The quadratic Hamiltonian is

$$\begin{align}
H_{\eta,n}^{(2)}&=n
\begin{pmatrix}a_n^*&b_n^*\end{pmatrix}
\begin{pmatrix}
1&\eta\sqrt{k c_{\mathrm{grav}}(n^2-1)/12}\\
\eta\sqrt{k c_{\mathrm{grav}}(n^2-1)/12}&1
\end{pmatrix}
\begin{pmatrix}a_n\\
b_n\end{pmatrix}.
\end{align}$$

Its eigenvalues are $n[1\pm\eta\sqrt{k c_{\mathrm{grav}}(n^2-1)/12}]$. For every fixed nonzero real $\eta$, one becomes negative at sufficiently large $n$. This is not a positive-energy continuum theory around the vacuum, despite its well-defined Hamiltonian variation. The conclusion follows from the exact large-$n$ expression, not a finite-mode scan.

## 6. Conditional Obstruction from the AdS Stabilizer

Suppose a boundary prescription, including a non-product one, has all three properties:

1. The smooth vacuum $(g_{\mathrm{AdS}},A=0)$ remains in its phase space.
2. $L_{-1,0,1}$ generate ordinary geometric AdS isometries, without a compensating large gauge transformation or extra boundary fields transforming at the vacuum.
3. Hamiltonian charges realize the full Virasoro–U(1) algebra of Section 3 with a field-independent central cocycle.

At the vacuum $X_{L_{\pm1}}=0$. Their symplectic pairing with every $X_{J_n}$ vanishes, irrespective of cross terms in $\Omega$. Allow a general constant normalization $J_0|_{\mathrm{vac}}=j_0$. Evaluating the two mixed brackets gives

$$\begin{align}
0&=j_0+q+r,\\
0&=-j_0+q-r.
\end{align}$$

Adding and subtracting yields

$$\begin{align}
q&=0,&r&=-j_0.
\end{align}$$

The linear term is a removable vacuum normalization. This proves zero mixed class under the three hypotheses, without a product symplectic form or a nonzero-level assumption. The derivative lift evades hypothesis 2. The non-product test fails hypothesis 3 for the original pure current generators.

This is a stopping result for the strict geometric vacuum question. A nonzero fixed-split class requires changing some of these data: the lift, the vacuum stabilizer, the surviving asymptotic symmetries, or the boundary dynamics. It does not establish that every possible boundary theory has a removable mixed anomaly. Algebraic removability at $k\ne0$ is a separate statement.

## 7. Verification Record

Verified:

- The arbitrary-mode Jacobi recurrences, improvement coefficients and zero-mode shifts, reality conditions, and invariant $c+12q^2/k$.
- The U(1) boundary variation; total stress transformation; first-order gravity flatness; non-product source derivatives, zero flux, and the nonzero pure-gauge tangency obstruction.
- Exact quadratic energy eigenvalues, stabilizer constraints, source-redefinition integration by parts, coordinate pullback, disk radial normalization, and the quantum U(1) double-contraction sum.
- Thirty-nine Mathematica checks passed with exact zero residuals. Three degree-eight kernels are bounded diagnostics. Two xAct checks, for Cartan's identity and the off-shell CS first variation including its boundary sign, returned zero with the full canonicalization/contraction/FullSimplification pipeline and no load or evaluation errors.
- The reductive classification and displayed Hermitian mixed-algebra convention were text-extracted for navigation and visually confirmed on the cited PDF pages.

Assumptions: smooth periodic fields, trivial disk sector, no additional boundary fields, the specified CPS signs, nonzero $k$ wherever it is divided by, and an invertible triad for the local first-order gravity construction. The energy check assumes $c_{\mathrm{grav}},k>0$ and real $\eta$.

Not verified: a classification of all mixed boundary actions, nonlinear global evolution of the mixed model, global quantum group extensions or level quantization, other holonomy/puncture sectors, quantum gravitational renormalization, or a new positive-energy boundary condition with an invariant nonzero mixed class.

The three proposed calculations are completed: the standard benchmark gives $q=0$; the general improvement is fixed in its stated local linear class; and a concrete non-product condition has been checked and rejected as a realization of the original mixed asymptotic algebra. The stabilizer argument explains why searching within the unchanged geometric AdS vacuum cannot repair that failure.

Reproduction files are in [checks](checks/README.md).
