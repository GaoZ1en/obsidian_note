# Reconstructing a nonlinear scalar CPS from observables

## Result and exact category

**For the smooth defocusing $\phi^4$ field on the two-dimensional cylinder, the four reconstruction statements hold for the functional class, closed equation ideal, admissible characters, derivations, and smooth plots specified below.** The observable construction starts on the full configuration space and uses the Euler--Lagrange operator and its causal response. It does not define its algebra by first equipping the solution space with a symplectic form.

The result is classical. The [vacuum moment-map quantization](solution.md) addresses a different question and supplies none of the reconstruction proofs below.

The topology is part of the answer. We use compact-open smooth convergence to define the equation-ideal closure and continuous characters/derivations. Membership in the functional class has an additional, stronger smooth-gradient requirement, ensuring that the Peierls bracket is defined and closed. The bracket is not jointly continuous in the weaker reconstruction topology; section 11 gives an explicit example. Thus the result is an equivalence of the specified smooth observable algebras and weak symplectic geometry, not a claim that this weaker topology makes a topological Poisson algebra.

## 1. Fix the theory before either construction

Let
$$
M=\mathbb R_t\times S^1_x,\qquad x\sim x+2\pi,\qquad
g=-dt^2+dx^2,\qquad m>0,\quad\lambda>0.
$$
All fields and variations are real and smooth, periodic in $x$. There is no gauge group to quotient. No condition at temporal infinity is imposed.

The action is used locally, or on finite slabs with compactly supported variations:
$$
S[\phi]=\int\left[
\frac12\phi_t^2-\frac12\phi_x^2-\frac{m^2}{2}\phi^2
-\frac{\lambda}{24}\phi^4
\right]dt\,dx.
$$
Its integral over all time need not be finite. The Euler--Lagrange function is
$$
\mathscr E(\phi)=-\phi_{tt}+\phi_{xx}-m^2\phi-\frac{\lambda}{6}\phi^3,
$$
and its derivative is
$$
P_\phi v=D\mathscr E_\phi[v]
=-v_{tt}+v_{xx}-\left(m^2+\frac{\lambda}{2}\phi^2\right)v.
$$
Fix the configuration Fréchet space
$$
\mathcal E=C^\infty(M,\mathbb R)
$$
with uniform convergence of all derivatives on compact spacetime sets. Set
$\mathcal D=C_c^\infty(M,\mathbb R)$, interpreted as densities using $dt\,dx$.

A useful analytic fact, used in the comparison proof rather than the definition of the observable algebra, is the smooth bijection
$$
\boxed{
\mathcal C:\mathcal E\longrightarrow
E_0\times\mathcal E,\qquad
\phi\longmapsto(\phi(0),\phi_t(0),\mathscr E(\phi)),
\quad E_0=C^\infty(S^1)^2.
}
$$
Its inverse $U(y,j)$ solves $\mathscr E(\phi)=j$ with Cauchy data $y=(q,p)$.

Here the global assertion is available because the interaction is defocusing in one space dimension. With
$$
H(t)=\int_{S^1}
\left(\frac12\phi_t^2+\frac12\phi_x^2+
\frac{m^2}{2}\phi^2+\frac{\lambda}{24}\phi^4\right)dx,
$$
the forced equation gives
$$
H'(t)=-\int_{S^1}j\phi_t\,dx,\qquad
\left|\frac d{dt}\sqrt{1+H(t)}\right|
\le\frac1{\sqrt2}\|j(t)\|_{L^2}.
$$
Thus the $H^1\times L^2$ norm stays finite on every finite time interval. The embedding $H^1(S^1)\subset L^\infty(S^1)$ controls the cubic nonlinearity. The local Duhamel contraction in $H^1\times L^2$, followed by this bound, extends in both time directions. Differentiating the equation in $x$ gives linear energy estimates with already controlled coefficients and lower derivatives; induction preserves all Sobolev orders. The same argument for the variational equations gives smooth dependence on data and forcing on each finite slab. Taking the compatible smooth Sobolev intersection gives the asserted Fréchet-smooth inverse $U$.

This argument fails without replacement estimates for a focusing interaction, rough data, or a spacetime with a timelike boundary. Those theories are not included.

## 2. The independent geometric construction

Set
$$
\mathcal P=\{\phi\in\mathcal E:\mathscr E(\phi)=0\}.
$$
The preceding Cauchy construction makes $\mathcal P$ a smooth split submanifold:
$$
u:E_0\longrightarrow\mathcal P,\qquad u(y)=U(y,0).
$$
At $\phi$, its tangent vectors are the smooth solutions of $P_\phi v=0$, with arbitrary smooth Cauchy data.

Variation of the action gives the time-slice potential
$$
\Theta_t(\delta\phi)=\int_{S^1}\phi_t\,\delta\phi\,dx.
$$
Use $\Omega=\delta\Theta$ and $\iota_{X_F}\Omega=-\delta F$. Then
$$
\boxed{
\Omega_\phi(v,w)=
\int_{S^1}(v_t w-w_t v)\,dx.
}
$$
The current identity is
$$
\partial_t(v_t w-w_t v)-\partial_x(v_xw-w_xv)
=-(P_\phi v)w+(P_\phi w)v.
$$
Consequently $\Omega$ is independent of the Cauchy circle for linearized solutions. Its Cauchy-data expression is
$$
\Omega((v_q,v_p),(w_q,w_p))
=\int(v_p w_q-w_p v_q)\,dx.
$$
It is closed and weakly nondegenerate.

Independently specify the geometric observable class
$$
\mathcal B=\left\{
f\in C^\infty(E_0,\mathbb R):
df_y(\dot q,\dot p)=
\int(a_f(y)\dot q+b_f(y)\dot p)\,dx,\quad
(a_f,b_f):E_0\to E_0\text{ smooth}
\right\}.
$$
“Smooth” here and below means Bastiani smooth. This class includes smooth cylindrical functions, smeared Cauchy fields and momenta, all integer Sobolev norm squares, and the nonlinear energy. It does not include point evaluation of a Cauchy field, whose gradient is a delta distribution.

The allowed cotangent bundle is therefore
$$
T^\flat E_0=E_0\times C^\infty(S^1)^2,
$$
embedded by the $L^2$ pairing in the full continuous dual
$\mathcal D'(S^1)^2$. On this bundle,
$$
X_f=(b_f,-a_f),\qquad
\iota_{X_f}\Omega=-df.
$$
No inverse of $\Omega$ on every distributional covector is asserted.

## 3. The independent observable construction

Define $\mathcal F$ on $\mathcal E$, before using $\mathcal P$ or $\Omega$, by the following condition:
$$
F\in C^\infty(\mathcal E,\mathbb R),\qquad
dF_\phi(h)=\int_M f_F(\phi)\,h\,dt\,dx.
$$
For each configuration $\phi_0$, there must be a neighborhood $V$ and a compact spacetime set $K$ such that
$$
f_F:V\longrightarrow C_K^\infty(M)
$$
is a smooth map, with the full Fréchet topology of smooth test functions on $K$. Supports may differ between neighborhoods. The first derivative alone is required to be a smooth density; higher derivatives can have diagonal distribution kernels, as they do for local polynomial functionals.

This is stronger than saying that every $dF_\phi$ happens to have a smooth kernel. The uniform smooth dependence is needed in compositions with causal propagators. The distinction is substantive: [Hawkins--Rejzner--Visser](https://arxiv.org/abs/2312.15203) exhibit failures of smoothness for broader pointwise-defined functional classes. Their theorem is not used as a substitute for the closure calculation in section 4.

Equip $\mathcal F$ with the topology $\tau$ inherited from compact-open smooth convergence:
$$
p_{k,K}(F)=
\sup_{(\phi,h_1,\ldots,h_k)\in K}
|d^kF_\phi(h_1,\ldots,h_k)|,
\qquad K\subset\mathcal E^{k+1}\text{ compact}.
$$
This topology governs the closure below and the admissibility of characters and derivations. The stronger test-function condition specifies membership in $\mathcal F$; it is not silently added to $\tau$.

For each independently chosen $f\in\mathcal D$, define the equation functional
$$
e_f(\phi)=\int_M f\,\mathscr E(\phi)\,dt\,dx.
$$
It belongs to $\mathcal F$, with gradient $P_\phi f$. Define
$$
J_{\rm EOM}=
\left\{\sum_{i=1}^N F_i e_{f_i}:
F_i\in\mathcal F,\ f_i\in\mathcal D,\ N<\infty\right\},
\qquad
\boxed{\mathcal I_{\rm EOM}=\overline{J_{\rm EOM}}^{\,\tau,\mathcal F}.}
$$
This is a relative closure in $\mathcal F$. It is not defined as a vanishing ideal. The algebra is
$$
\mathcal A_S=\mathcal F/\mathcal I_{\rm EOM}
$$
with its quotient topology and ordinary multiplication.

## 4. Causal response gives a closed Peierls bracket

For every off-shell $\phi$, $P_\phi$ is normally hyperbolic with smooth potential. Let $R_\phi,A_\phi$ be its retarded and advanced Green operators, respectively:
$$
P_\phi R_\phi f=P_\phi A_\phi f=f,\qquad
\Delta_\phi=R_\phi-A_\phi.
$$
Our sign convention is fixed by the leading term $-\partial_t^2$ in $P_\phi$.

For $F,G\in\mathcal F$, define
$$
\boxed{\{F,G\}_{\rm P}(\phi)
=\int_M f_F(\phi)\,\Delta_\phi f_G(\phi)\,dt\,dx.}
$$
The causal response is smooth, so this contraction is defined. Smooth dependence of the Green solution on the potential on compact causal diamonds follows from the linear energy estimates, including the differentiated equations.

Here is an explicit closure check. Write $f=f_F$, $g=f_G$, and suppress the background subscripts. Formal adjoints are $R^\dagger=A$ and $\Delta^\dagger=-\Delta$. Since
$$
D P_\phi[h]=-\lambda\phi h,\qquad
D\Delta_\phi[h]=-R(DP_\phi[h])R+A(DP_\phi[h])A,
$$
the gradient of the bracket is
$$
\boxed{
f_{\{F,G\}}=
Df_F[\Delta g]-Df_G[\Delta f]
+\lambda\phi\big[(Af)(Rg)-(Rf)(Ag)\big].
}
$$
Symmetry of the second derivatives justifies the first two terms. They are smooth compactly supported densities by the defining condition on the gradient maps. Each product in the last term is supported in an intersection such as
$J^-(\operatorname{supp}f)\cap J^+(\operatorname{supp}g)$, which is compact. On a neighborhood with fixed supports these terms depend smoothly in $C_K^\infty$. Therefore the bracket belongs to $\mathcal F$.

Antisymmetry follows from $\Delta^\dagger=-\Delta$. Leibniz follows from the first derivative. For Jacobi, terms containing symmetric second derivatives cancel in cyclic pairs. The remaining local propagator terms are proportional to
$$
(Af\,Rg-Rf\,Ag)(Rh-Ah)+\text{cyclic}(f,g,h)=0.
$$
This is the exact two-column determinant identity, with $\Delta h=Rh-Ah$; it was also checked symbolically. Thus this functional class has a genuine, non-formal classical Poisson bracket.

The equation generators satisfy
$$
\{e_f,F\}_{\rm P}=0,
$$
because $\Delta_\phi P_\phi f=0$ for $f\in\mathcal D$. Descent through the *closed* ideal will be proved after identifying its kernel; it is not inferred by assuming bracket continuity in $\tau$.

## 5. The equation ideal equals the restriction kernel

Let $rF=F|_{\mathcal P}$. Clearly $J_{\rm EOM}\subset\ker r$, and each point evaluation is $\tau$-continuous. Hence
$$
\mathcal I_{\rm EOM}\subset\ker r.
$$
For the converse, temporarily use the ambient space $C^\infty(\mathcal E)$ with the same compact-open smooth topology. Write
$$
\widetilde F(y,j)=F(U(y,j)).
$$
If $rF=0$, then $\widetilde F(y,0)=0$. The ordinary parameter integral gives
$$
\widetilde F(y,j)=
\int_0^1D_j\widetilde F(y,sj)[j]\,ds.
$$
This is a consequence of the forced Cauchy problem; no vanishing-ideal definition has been introduced.

To turn this integral into the specified closed generated ideal, choose finite-rank smoothing maps
$$
P_Nj=\sum_{\alpha=1}^{d_N}
\left(\int_M \eta_{N\alpha}j\right)b_{N\alpha},
\qquad \eta_{N\alpha}\in\mathcal D,
$$
converging to the identity uniformly on compact subsets of $\mathcal E$, in every smooth seminorm. Such maps can be constructed using a locally finite time partition, smooth compact cutoffs and Fourier truncation on each fixed compact coordinate box. On any fixed spacetime compact set only finitely many boxes contribute; increasing the truncation therefore gives all derivative orders. This avoids assuming that an arbitrary field has controlled growth at temporal infinity.

Then
$$
\widetilde F(y,P_Nj)
=\sum_\alpha\left(\int\eta_{N\alpha}j\right)
\int_0^1D_j\widetilde F(y,sP_Nj)[b_{N\alpha}]\,ds.
$$
Pull back by $\mathcal C$. The first factors are precisely the prescribed generators $e_{\eta_{N\alpha}}$. The second factors are smooth configuration functionals, although their gradients need not be smooth spacetime densities.

That last issue is repaired by density, not ignored. Smooth cylindrical functionals with test-density coordinates are dense in $C^\infty(\mathcal E)$ for compact-open smooth convergence: for a finite-rank approximation $Q_N$ of the same kind, $H\circ Q_N$ is cylindrical and
$$
d^k(H\circ Q_N)_\phi(h_1,\ldots,h_k)
=d^kH_{Q_N\phi}(Q_Nh_1,\ldots,Q_Nh_k)
\longrightarrow d^kH_\phi(h_1,\ldots,h_k)
$$
uniformly on every compact set. All these cylindrical approximants belong to $\mathcal F$.

Approximate each of the finitely many coefficient functions above this way. Multiplication is continuous in the compact-open smooth topology. Thus $\widetilde F(y,P_Nj)$, pulled back to configurations, lies in the ambient closure of $J_{\rm EOM}$. These expressions converge to $F$. Since $F$ itself belongs to $\mathcal F$, it lies in the relative closure used in the definition of $\mathcal I_{\rm EOM}$. Consequently
$$
\boxed{\ker r=\mathcal I_{\rm EOM}.}
$$
Closure is essential to this proof. No equality with the unclosed finite-sum ideal is claimed.

## 6. No geometric observables in the selected class are missing

We now compare with the independently specified $\mathcal B$, without changing either definition.

First, $F\mapsto F\circ u$ maps $\mathcal F$ into $\mathcal B$. The derivative is obtained by propagating smooth compact spacetime sources back to smooth Cauchy covectors through the adjoint linearized evolution. Finite-slab energy estimates give smooth dependence on the Cauchy data.

For surjectivity, choose once a real $\chi\in C_c^\infty(\mathbb R)$ with $\int\chi(t)\,dt=1$. Let $\Phi_t:E_0\to E_0$ be the nonlinear unforced Cauchy evolution. Define, on arbitrary off-shell configurations,
$$
\rho(\phi)=
\int_{\mathbb R}\chi(t)\,
\Phi_{-t}\big(\phi(t),\phi_t(t)\big)\,dt.
$$
This is a smooth $E_0$-valued integral. If $\phi=u(y)$ is a solution, each integrand before multiplication by $\chi$ is $y$, so $\rho(u(y))=y$.

For $f\in\mathcal B$, set $s(f)=f\circ\rho$. To check that this extension belongs to $\mathcal F$, put
$$
(A_t,B_t)=
D\Phi_{-t}|_{(\phi(t),\phi_t(t))}^{\,*}
(a_f(\rho(\phi)),b_f(\rho(\phi))),
$$
where $*$ is the $L^2$ Cauchy-pair adjoint. Linearized hyperbolic evolution and its adjoint map smooth Cauchy data to smooth Cauchy data. Integration by parts in $t$ gives
$$
d\,s(f)_\phi(h)
=\int_M\big[\chi(t)A_t-\partial_t(\chi(t)B_t)\big]h\,dt\,dx.
$$
This gradient is smooth, has time support in $\operatorname{supp}\chi$, and depends smoothly on $\phi$ in that test-function space. Therefore $s(f)\in\mathcal F$ and $r\,s(f)=f$.

Restriction and this linear extension in $f$ are continuous for their compact-open smooth topologies, by the chain rule and compactness of images under $u,\rho$. Hence
$$
\boxed{\mathcal A_S\cong\mathcal B}
$$
as topological commutative algebras, not just as an injective subalgebra of geometric functions.

The nonlinear Cauchy evolution enters here as a proof and comparison tool. It was not used to define $\mathcal F$, $e_f$, $\mathcal I_{\rm EOM}$ or the Peierls bracket.

## 7. Continuous characters are exactly smooth solutions

An admissible character is a continuous unital real algebra homomorphism
$\chi:\mathcal A_S\to\mathbb R$. Through the established isomorphism, work on $\mathcal B$.

For $s=(a,b)\in C^\infty(S^1)^2$, set
$$
L_s(q,p)=\int(aq+bp)\,dx.
$$
Continuity of $\chi$ gives, on this linear subspace, a bound
$$
|\chi(L_s)|\le C\sup_{y\in K}|\langle s,y\rangle|
$$
for some compact $K\subset E_0$. Indeed the zeroth and first compact-open derivative seminorms of $L_s$ are suprema over compact sets of vectors, and all higher derivatives vanish.

The closed absolutely convex hull of a compact set in the complete Fréchet space $E_0$ is compact. The displayed bound and separation by the test pairs $s$ imply that a unique $y_\chi\in E_0$ satisfies
$$
\chi(L_s)=\langle s,y_\chi\rangle\quad\text{for all }s.
$$
For clarity, existence follows by compactness: for each finite collection of tests, finite-dimensional separation puts the required vector of values in the projection of $C\overline{\operatorname{aconv}}K$; these constraints have the finite-intersection property. Uniqueness follows because the smooth tests separate smooth pairs.

On a cylindrical function $h(L_{s_1},\ldots,L_{s_N})$, the finite-dimensional Hadamard formula and multiplicativity give
$$
\chi\big(h(L_{s_1},\ldots,L_{s_N})\big)
=h(\chi(L_{s_1}),\ldots,\chi(L_{s_N})).
$$
Fourier truncations show that cylindrical functions are dense in $\mathcal B$ for the chosen topology. Continuity therefore gives $\chi(f)=f(y_\chi)$ for every $f\in\mathcal B$. Conversely every such evaluation is continuous. Thus
$$
\boxed{\mathcal P\xrightarrow[\mathrm{ev}]{\sim}
\operatorname{Char}_{\rm cont}(\mathcal A_S).}
$$

This proof excludes extra distributional Cauchy data. Merely requiring continuity of $s\mapsto\chi(L_s)$ in the usual test-function topology would only produce a distribution, and would not suffice. The compact-set bound inherited from the actual observable topology is the decisive stronger condition.

## 8. Continuous derivations are exactly linearized solutions

Fix $\chi=\operatorname{ev}_y$. An admissible derivation is a continuous linear functional
$D:\mathcal B\to\mathbb R$ satisfying
$$
D(fg)=D(f)g(y)+f(y)D(g).
$$
Its restriction to the linear observables obeys the same compact-set bound as in section 7, so it determines a unique smooth pair $v\in E_0$:
$$
D(L_s)=\langle s,v\rangle.
$$
Finite-dimensional Hadamard division proves the chain rule on cylindrical functions:
$$
D(h(L_1,\ldots,L_N))
=\sum_i\partial_i h(L_1(y),\ldots,L_N(y))D(L_i).
$$
Continuity and cylindrical density then imply
$$
\boxed{D(f)=df_y(v)\quad\text{for all }f\in\mathcal B.}
$$
Conversely $f\mapsto df_y(v)$ is continuous in the declared topology. Applying $Du_y$ identifies this pair with the unique smooth solution of $P_\phi v=0$. There are no proper-gauge directions in this model.

Thus tangent reconstruction is not inferred from point separation. It is proved by a separate continuity and density argument.

## 9. Topology and smooth plots on the character space

Give the character space the initial topology of evaluations
$\chi\mapsto\chi(F)$. Under the point correspondence, each such function is continuous on $E_0$. Conversely, the functions
$$
f_{y_0,k}(y)=\|q-q_0\|_{H^k}^2+\|p-p_0\|_{H^k}^2,\qquad k=0,1,\ldots,
$$
belong to $\mathcal B$ and generate the Fréchet neighborhood topology. Therefore evaluation is a homeomorphism, not merely a bijection.

Declare the smooth structure explicitly in observable terms. Choose a real trigonometric basis $e_n$. Explicit representatives are $Q_n[\phi]=\int e_n(x)(\rho(\phi))_q(x)\,dx$ and $P_n[\phi]=\int e_n(x)(\rho(\phi))_p(x)\,dx$, using the off-shell map of section 6. Take their algebra classes. The letter $P_n$ here denotes a momentum observable, not the differential operator $P_\phi$. A plot $\xi:V\subset\mathbb R^d\to\operatorname{Char}_{\rm cont}(\mathcal A_S)$ is admissibly smooth if its coordinate evaluations are smooth and, for every compact $K\subset V$, every multi-index $\alpha$ and every integer $N$,
$$
\sup_{s\in K,n}(1+|n|)^N
\left(
|\partial_s^\alpha\xi(s)(Q_n)|
+|\partial_s^\alpha\xi(s)(P_n)|
\right)<\infty.
$$
This condition refers only to evaluations of named observables and their parameter derivatives. It is not defined as “the plot comes from a smooth solution.”

The rapid-decay bounds permit termwise differentiation of the Fourier series in every spatial and parameter derivative. They are equivalent to smoothness into $E_0$. The converse follows from integration by parts in $x$ and boundedness of each Fréchet seminorm on compact parameter sets. Consequently the resulting plots, in particular smooth curves, agree exactly with the independently constructed solution-manifold plots.

These are declared regularity data, not a claim that pointwise smoothness of each individual Fourier coefficient is sufficient. Equivalent elliptic Sobolev norms on the circle give the same plot class. The particular averaging function used for the off-shell representatives does not affect their quotient classes.

## 10. Peierls response recovers the entire allowed symplectic structure

Take an on-shell background $\phi$ and $F\in\mathcal F$, with gradient $f$. Then
$$
X_F=\Delta_\phi f
$$
is a smooth linearized solution. Integrate the current identity in section 2 with the retarded and advanced responses. Before the compact source the retarded response is zero; after it the advanced response is zero. With the fixed orientation this gives
$$
\boxed{\Omega_\phi(\Delta_\phi f,v)=-\int_M f v\,dt\,dx
=-dF_\phi(v).}
$$
In particular,
$$
X_F(G)=dG_\phi(\Delta_\phi f)
=\{G,F\}_{\rm P}(\phi).
$$
This identifies the algebraic Hamiltonian derivation with the reconstructed tangent vector and the geometric Hamiltonian vector.

If $F\in\ker r$, then $dF_\phi(v)=0$ for every linearized solution. The displayed identity and weak nondegeneracy imply $\Delta_\phi f=0$ on shell. Therefore $\{G,F\}$ vanishes on shell, and the already proved equality $\ker r=\mathcal I_{\rm EOM}$ makes the closed ideal a Poisson ideal. The bracket descends without a false continuity argument.

The Hamiltonian directions span more than a dense subspace: they cover every smooth tangent vector. Given any $P_\phi v=0$, choose a smooth time cutoff $\eta$ equal to zero sufficiently far in the past and one sufficiently far in the future. Then
$$
f=P_\phi(\eta v)=-\eta''v-2\eta'v_t\in\mathcal D,
$$
because the spatial circle is compact. Uniqueness of the Green solutions gives
$$
R_\phi f=\eta v,\qquad A_\phi f=(\eta-1)v,\qquad
\Delta_\phi f=v.
$$
The linear observable $\varphi\mapsto\int f\varphi$ belongs to $\mathcal F$. Here $f$ is fixed after choosing the tangent vector at the selected background; it is not differentiated as a field-dependent source.

Hence the bracket, together with the recovered derivatives, determines $\Omega$ on **every pair of smooth tangent vectors**. In Cauchy variables it is exactly
$$
\{f,g\}=\int(a_f b_g-b_f a_g)\,dx,\qquad
X_f=(b_f,-a_f).
$$
The allowed covectors are precisely the smooth pairs specified in section 2, while the full continuous cotangent space contains distributions.

The nonlinear interaction remains present. For the energy,
$$
a_H=-q_{xx}+m^2q+\frac{\lambda}{6}q^3,\qquad b_H=p,
$$
so the reconstructed Hamiltonian vector field gives
$$
\dot q=p,\qquad
\dot p=q_{xx}-m^2q-\frac{\lambda}{6}q^3.
$$
This is the nonlinear field equation, not a finite-mode or linearized replacement. Likewise the spacetime Peierls bracket depends on the background through the potential $\lambda\phi^2/2$.

## 11. Exact limits of this result

The four correspondences are now explicit:

| Requirement | Result |
|---|---|
| Equation relations versus restriction | The **closed generated** equation ideal equals $\ker r$, by the forced Cauchy chart, Hadamard division and cylindrical approximation. |
| Points | Continuous unital real characters are exactly evaluations on smooth solutions; the compact-set bound excludes distributional characters. |
| Tangents and smooth structure | Continuous derivations are smooth linearized solutions; evaluation topology and the specified observable Fourier plots reproduce the Fréchet geometry. |
| Symplectic form | The Peierls response satisfies $\iota_{X_F}\Omega=-dF$, and cutoff sources realize every smooth tangent vector. |

Several stronger claims are deliberately excluded.

First, the bracket is not jointly continuous in $\tau$. Let $e_n$ be $L^2$-orthonormal trigonometric modes and take
$$
f_n(q,p)=\int e_nq,\qquad g_n(q,p)=\int e_np.
$$
Both tend to zero for compact-open smooth convergence on $C^\infty(S^1)^2$, since compact sets have uniformly rapidly decaying Fourier coefficients, including derivative directions. But $\{f_n,g_n\}=1$. Thus $\tau$ is a reconstruction topology, not a claimed topology of continuous Poisson operations. The stronger smooth-gradient membership condition still makes every bracket and its iterates well-defined. A different requirement of a complete topological Poisson algebra would require a separate choice of topology and a new character audit.

Second, no equality with the **unclosed** equation ideal is proved. No claim is made about discontinuous algebraic characters or derivations. Neither a distributional solution space nor every smooth function with distributional gradient is included in the Poisson algebra.

Third, the smooth plot condition is stated as part of admissibility. Bare pointwise Fourier smoothness is insufficient; the rapid-decay bounds carry the regularity information.

Finally, there is no gauge quotient, singular stratum, boundary charge or quantization in this first theorem. The next calculation, [compact Maxwell gauge reconstruction](maxwell-reconstruction.md), performs those checks independently on the cylinder. It retains the holonomy and electric flux and proves the quotient and character comparison, including large proper gauge transformations. The scalar proof alone does not imply that gauge result.

## Verification

The [saved Mathematica check](verification/nonlinear-scalar-reconstruction.wl) and adjacent JSON output verify the Euler--Lagrange sign, nonlinear linearization, forced energy balance, symplectic-current divergence, cubic Hadamard identity, propagator Jacobi cancellation and Hamiltonian sign. An independent [xAct covariant-current check](verification/nonlinear-scalar-covariant-current.wl) returns exactly zero. These symbolic identities are not computer proofs of the infinite-dimensional statements.

**Verified by the derivations above:** the closed-ideal comparison, surjectivity onto the independently specified geometric algebra, continuous-character and derivation reconstruction, topology and declared plot equivalence, and Peierls recovery on the smooth cotangent domain. Their analytic input is the smooth forced Cauchy problem justified by the finite-slab energy and variational estimates in section 1.

**Assumptions:** smooth real periodic fields on the fixed cylinder; $m,\lambda>0$; the stated functional class and relative closure; continuous characters and derivations in $\tau$; the explicit plot regularity; smooth causal Green operators of the normally hyperbolic linearization.

**Not verified or claimed:** gauge reduction, singular solution strata, a completion with jointly continuous Poisson bracket, the unclosed-ideal equality, rough configurations, or a quantum reconstruction theorem.
