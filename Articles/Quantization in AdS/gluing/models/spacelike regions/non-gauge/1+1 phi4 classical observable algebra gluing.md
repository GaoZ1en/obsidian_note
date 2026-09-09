The goal is to define the regional classical polynomial Poisson algebras for a scalar with a quartic interaction, release their interface histories, and identify the sewn algebra with an independently defined global algebra. The interaction is present at every time. We give the construction directly in classical variables and display the field, Poisson bracket and energy calculations through $\lambda^2$.

The construction follows the regional-response picture of [the free example](<../../../Untitled.md>). All equalities between displayed perturbative coefficients are understood modulo $\lambda^3$. The recursions also specify higher formal coefficients; no convergence of the resulting series is needed.

## Regional Action and Histories

Take $\Sigma_i=[0,\ell_i]$, with coordinate $y_i$ increasing from a physical Dirichlet wall towards the artificial cut. Write $\ell=\ell_1+\ell_2$, $a=\ell_1$. The equal-half example is $[-L,0]\cup[0,L]$ after translation. Let $m>0$ and choose a real, time-independent $h$, equal to one near the cut and zero near the physical walls. Its two regional expressions agree, including derivatives in the common spatial direction.

The regional action is

$$
S_{i,\lambda}=\int dt\int_0^{\ell_i}dy_i
\left[\frac12\dot\phi_i^2-\frac12(\phi_i')^2
-\frac{m^2}{2}\phi_i^2-\frac{\lambda h_i}{24}\phi_i^4\right].
$$

Use $q_i=\phi_i|_{\ell_i}$ and the positive outward derivative $\Pi_i=\phi_i'|_{\ell_i}$. With this convention the spatial boundary term in the action variation is **minus** $\int dt\,\Pi_i\delta q_i$. The time boundary term is $[\int dy_i\,\dot\phi_i\delta\phi_i]_{t_-}^{t_+}$. The equation and the fixed-history symplectic form are

$$
P_i\Phi_i+\frac{\lambda h_i}{6}\Phi_i^3=0,
\qquad P_i=\partial_t^2-\partial_{y_i}^2+m^2,
\qquad
\Omega_i=\int_0^{\ell_i}dy_i\,\delta\dot\Phi_i\wedge\delta\Phi_i.
$$

The potential has no derivatives, so it changes the equation without adding a new term to $\Omega_i$. We use

$$
\{f_i(y),g_i(z)\}_{i,q_i}=\delta(y-z),\qquad
f_i=\Phi_i(t_0),\quad g_i=\dot\Phi_i(t_0),\qquad
E_i=G_i^A-G_i^R.
$$

Here $G_i^{R/A}$ invert the displayed positive-time-second-derivative operator $P_i$. These signs follow the explicit response calculation in the free example.

Choose a finite reference time $t_0$ and consider smooth compatible initial data and histories on a finite time interval. The equation must hold at their common time corner, coefficient by coefficient. In particular the initial field and the time derivatives of $q_i$ cannot be chosen independently. They may themselves be formal series in $\lambda$. The choice of $t_0$ does not turn off the interaction at earlier times.

For a prescribed $q_i$, solve the regional equation recursively. Let $u_{i,n}$ denote the free contribution of the prescribed order-$n$ initial and history data, and let $\mathcal D_{i,t_0}$ give the free response to a bulk source with zero correction to initial data and prescribed endpoint value. Then

$$\begin{aligned}
\Phi_i&=\sum_{n\ge0}\lambda^n\Phi_{i,n},\qquad \Phi_{i,0}=u_{i,0},\\
\Phi_{i,n}&=u_{i,n}-\frac16\mathcal D_{i,t_0}
\left[h_i\sum_{r+s+v=n-1}\Phi_{i,r}\Phi_{i,s}\Phi_{i,v}\right],\qquad n\ge1.
\end{aligned}$$

For $t\ge t_0$, $\mathcal D_{i,t_0}$ is the retarded source integral starting at $t_0$. The reverse-time initial-value formula applies for $t<t_0$. Corner compatibility is imposed on the complete coefficient, including both its free and sourced contributions. Each recursion involves finitely many products and source integrals.

## The Regional Poisson Algebra

At each prescribed history define $\mathfrak P_{i,\lambda}[q_i]$ from the smoothly smeared polynomial insertions in $\Phi_i$, its first derivatives, stress, and their finite products. Include the coefficient kernels produced by the source integrals and Poisson brackets, and complete coefficientwise in $\lambda$. Polynomial means finite field degree at each coefficient; it does not require a kernel to split into a finite sum of products of one-variable tests.

The bracket is calculated on the regional initial data, keeping the prescribed history fixed:

$$
\{F,G\}_{i,q_i}=\int_0^{\ell_i}dy_i
\left(\frac{\delta F}{\delta f_i}\frac{\delta G}{\delta g_i}
-\frac{\delta F}{\delta g_i}\frac{\delta G}{\delta f_i}\right).
$$

The algebra contains the polynomial coefficients and their bracket closure, with equality meaning equality of these evaluated coefficients. The canonical bracket supplies Leibniz and Jacobi. All point labels below abbreviate kernels paired with the admitted smooth tests.

The same insertion recipes are retained as $q_i$ varies. To sew them, keep the response of the field and of its outward derivative:

$$\begin{aligned}
\delta\Phi_i&=G_{i,\lambda}^{\epsilon}j_i
+H_{i,\lambda}^{\epsilon}\delta q_i,\\
\delta\Pi_i&=\rho_{i,\lambda}^{\epsilon}j_i
+D_{i,\lambda}^{\epsilon}\delta q_i,\qquad \epsilon=R,A.
\end{aligned}$$

These are the responses about the regional interacting field. Its small perturbation satisfies

$$
\left(P_i+\frac{\lambda h_i}{2}\Phi_i^2\right)\delta\Phi_i=j_i.
$$

They can be constructed from regional free responses alone. Put $M_i=\lambda h_i\Phi_i^2/2$. At one causal prescription,

$$
G_{i,\lambda}=(1+G_iM_i)^{-1}G_i,\qquad
H_{i,\lambda}=(1+G_iM_i)^{-1}H_i,
$$

and take the outward derivative to obtain $\rho_{i,\lambda}$ and $D_{i,\lambda}$. These are formal inverse series. For $M_i=\lambda A_i+\lambda^2B_i+\cdots$,

$$\begin{aligned}
A_i&=\tfrac12h_i\Phi_{i,0}^2,\qquad B_i=h_i\Phi_{i,0}\Phi_{i,1},\\
G_{i,\lambda}&=G_i-\lambda G_iA_iG_i
+\lambda^2(G_iA_iG_iA_iG_i-G_iB_iG_i),\\
H_{i,\lambda}&=H_i-\lambda G_iA_iH_i
+\lambda^2(G_iA_iG_iA_iH_i-G_iB_iH_i).
\end{aligned}$$

The order of these factors matters. The background field generally depends on time, even though the coupling does not.

The regional object is therefore

$$
\mathbf P_{i,\lambda}
=\bigl(\mathfrak P_{i,\lambda}[q_i]\text{ as a family};
q_i,\Pi_i;G_{i,\lambda},H_{i,\lambda},\rho_{i,\lambda},D_{i,\lambda};
h_i;\text{polynomial insertion recipes}\bigr).
$$

All its data have been defined on region $i$. The fixed-history brackets of the two separate regions have zero cross terms. The response data tell us how that bracket changes when the history is released.

## Release the Common History

First identify $q_1=q_2=q$, then allow its variation in the sum of the regional actions. The interface variation is

$$
-\int dt\,(\Pi_1+\Pi_2)\delta q.
$$

A transparent interface, with no extra interface action, gives

$$
c=q_1-q_2=0,\qquad p=\Pi_1+\Pi_2=0.
$$

The interface condition has to respond when an observable is used as a source. Let its first variation have bulk components $j_1,j_2$ and explicit common-history component $g$. The latter is the coefficient of $\delta q$ after the dependence through the bulk fields has already been counted. The response of the interface equation is

$$
\delta\Pi_1+\delta\Pi_2=g.
$$

Consequently, at either causal prescription,

$$\begin{aligned}
K_\lambda&=(D_{1,\lambda}+D_{2,\lambda})^{-1},\\
\delta q&=K_\lambda(g-\rho_{1,\lambda}j_1-\rho_{2,\lambda}j_2),\\
\delta\Phi_i&=\sum_j\mathcal G_{ij,\lambda}j_j
+H_{i,\lambda}K_\lambda g,\\
\mathcal G_{ij,\lambda}&=\delta_{ij}G_{i,\lambda}
-H_{i,\lambda}K_\lambda\rho_{j,\lambda}.
\end{aligned}$$

The other blocks are $\mathcal G_{iq,\lambda}=H_{i,\lambda}K_\lambda$, $\mathcal G_{qj,\lambda}=-K_\lambda\rho_{j,\lambda}$ and $\mathcal G_{qq,\lambda}=K_\lambda$. The inverse uses zero past data for $R$ and zero future data for $A$; it is not an inverse on histories with arbitrary additional homogeneous data. Its zeroth-order inverse is the explicit free $K$. All higher coefficients follow by substitution into $(D_{1,\lambda}+D_{2,\lambda})K_\lambda=1$.

Set

$$
E_{s,\lambda}=\mathcal G_\lambda^A-\mathcal G_\lambda^R,
\qquad
\{F,G\}_{s,\lambda}=\langle dF,E_{s,\lambda}dG\rangle,
$$

where the pairing includes both bulk and history slots. This is the classical Peierls realization of the released bracket. The same regional action calculation gives its canonical initial-data realization. In particular, the interface part of the variation of the symplectic form cancels on matched variations, so the initial canonical pairing is the sum of the two regional pairings.

The new cross block $-H_{1,\lambda}K_\lambda\rho_{2,\lambda}$ is generally nonzero. Also $E_{s,\lambda}$ depends on the field. If one computes another Poisson bracket by differentiating this expression, that dependence must be differentiated too. The canonical initial-data expression accounts for it automatically and proves Jacobi without treating the interacting kernel as a constant matrix.

## A Polynomial Presentation Before Matching

We can present the new bracket and the matching ideal explicitly. This uses the released free response constructed from the same regional data. At complex frequency $\zeta$, with $\kappa^2=m^2-\zeta^2$,

$$\begin{aligned}
\widehat H_i(y)&=\frac{\sinh(\kappa y)}{\sinh(\kappa\ell_i)},\qquad
\widehat\rho_i(y)=-\widehat H_i(y),\\
\widehat D_i&=\kappa\coth(\kappa\ell_i),\qquad
\widehat K=\frac1{\widehat D_1+\widehat D_2},\\
\widehat{\mathcal G}_{ij}&=\delta_{ij}\widehat G_i
+\widehat H_i\widehat K\widehat H_j^{\mathsf T}.
\end{aligned}$$

Here $\mathsf T$ exchanges the spatial slots at fixed frequency. Products are formed before taking their retarded or advanced limits. Let $B\phi=(q_1-q_2,\Pi_1+\Pi_2)$. The actual free mismatch section is

$$
\mathcal R\binom cp
=\binom{H_1K(D_2c+p)}{H_2K(-D_1c+p)},\qquad
B\mathcal R=1.
$$

Use it on the admitted compatible history inputs, retaining their chosen causal or reference-data prescription. Write a free regional field pair as

$$
\phi^0=\psi+b,\qquad b=\mathcal R(c,p),\qquad B\psi=0.
$$

The field $\psi$ has the released free canonical bracket $E_s$ and initial coordinates $z=(f_i,g_i)$ with matching at the cut. The external labels $c,p$, hence $b$, have zero bracket with every coefficient. This is a presentation of the **new** bracket. It is not a Poisson quotient of the old fixed-history direct product.

The interaction recipe before matching is

$$
V_s(s;b)=\sum_i\int_0^{\ell_i}dy_i\,
\frac{h_i(y_i)}{24}\bigl(\psi_i(s,y_i)+b_i(s,y_i)\bigr)^4.
$$

For a polynomial seed with a common observation time $t$, construct its interacting insertion by the classical ordered Lie series

$$\begin{aligned}
T_\lambda(t)F_t
={}&F_t+\lambda\int_{t_0}^t ds\,\{F_t,V_s(s;b)\}_{s,0}\\
&+\lambda^2\int_{t_0<u<s<t}du\,ds\,
\bigl\{\{F_t,V_s(s;b)\}_{s,0},V_s(u;b)\bigr\}_{s,0}.
\end{aligned}$$

Each bracket differentiates the complete expression inside it. Each insertion of a quartic increases field degree by at most two. Higher coefficients use the same ordered recursion. At a common time, this Hamiltonian evolution preserves products and the canonical bracket. For a polynomial with several observation times, use the evolved insertion at each time before forming its products and smearing kernels. Mixed-time brackets are calculated between these insertions on the same initial data; they need not equal the free mixed-time bracket.

Let $\mathfrak P_{\mathrm{pre},\lambda}$ contain these evaluated polynomial recipes, their products and Poisson brackets, and their external-history replacements. Keep kernels produced by the operations. Since $b$ has zero bracket with the canonical variables, this algebra is polynomial in its external slots coefficient by coefficient. Spatial endpoint operations commute with the common $T_\lambda(t)$, so

$$
B\Phi_\lambda=B\,T_\lambda(t)(\psi+b)=(c,p).
$$

Let $\mathcal I_\lambda$ be the formal ideal of coefficients having at least one mismatch slot $c,p$ or a derivative of such a slot, including slots inside integrals. It is a Poisson ideal. For every coefficient,

$$
F(z,b)-F(z,0)\in\mathcal I_\lambda.
$$

Conversely, if evaluation at $b=0$ vanishes, its external-degree-zero coefficient vanishes; every remaining term contains a mismatch slot. Equality here is equality of evaluated polynomial functions, including their existing identities. The actual section $B\mathcal R=1$ identifies external $b$ slots with mismatch slots. Thus evaluation has exactly kernel $\mathcal I_\lambda$.

Now impose the matching conditions:

$$
\mathfrak P_{s,\lambda}
=\mathfrak P_{\mathrm{pre},\lambda}/\mathcal I_\lambda.
$$

The common history $q=\Phi_\lambda|_\Gamma$ remains a dynamical observable. Only the two mismatches have been set to zero. The presentation concerns the admitted formal coefficient recipes; it does not assert that arbitrary, incompatible off-matching histories define classical solutions at a time corner.

## Field and Poisson Bracket Through Second Order

On matched data, fix the initial field and momentum at $t_0$. The higher corrections then have zero initial data. Write $R_{XZ}=\mathcal G^R(X,Z)$ with the vertex time restricted to $t_Z\ge t_0$, and set it to zero otherwise. Here $\mathcal G^R$ is the released **free** response, and it already enforces both interface conditions. For observation times $t_X\ge t_0$,

$$\begin{aligned}
\Phi_\lambda(X)&=\phi_X+\lambda\Phi_1(X)+\lambda^2\Phi_2(X),\\
\Phi_1(X)&=-\frac16\int dZ\,R_{XZ}h_Z\phi_Z^3,\\
\Phi_2(X)&=\frac1{12}\int dZ\,dU\,
R_{XZ}h_Z\phi_Z^2R_{ZU}h_U\phi_U^3.
\end{aligned}$$

These follow by substituting into $P\Phi_\lambda+\lambda h\Phi_\lambda^3/6=0$. The second coefficient uses $3\phi^2\Phi_1$ in the cubic source. The two retarded factors give $t_0\le t_U\le t_Z\le t_X$. The same expressions follow from the ordered Poisson series. The interface history is induced by their traces and is generally $\lambda$-dependent.

Now calculate on the free canonical data, with $\{\phi_X,\phi_Y\}=E_{XY}$. Write

$$
\{\Phi_\lambda(X),\Phi_\lambda(Y)\}
=E_{XY}+\lambda C_1(X,Y)+\lambda^2C_2(X,Y).
$$

For both probe times at or after $t_0$, the first coefficient is

$$
C_1(X,Y)=-\frac12\int dZ\,h_Z\phi_Z^2
\left(R_{XZ}E_{ZY}+R_{YZ}E_{XZ}\right).
$$

For the second coefficient there are three terms:

$$
C_2=\{\Phi_2(X),\phi_Y\}+\{\phi_X,\Phi_2(Y)\}
+\{\Phi_1(X),\Phi_1(Y)\}.
$$

Expanding each derivative gives the complete result

$$\begin{aligned}
C_2(X,Y)
={}&\frac1{12}\int dZ\,dU\,h_Zh_U R_{ZU}\Big[
R_{XZ}\bigl(2\phi_Z\phi_U^3E_{ZY}
+3\phi_Z^2\phi_U^2E_{UY}\bigr)\\
&\hspace{43mm}+R_{YZ}\bigl(2\phi_Z\phi_U^3E_{XZ}
+3\phi_Z^2\phi_U^2E_{XU}\bigr)\Big]\\
&+\frac14\int dZ\,dU\,h_Zh_U
R_{XZ}R_{YU}\phi_Z^2\phi_U^2E_{ZU}.
\end{aligned}$$

The last line is the bracket of the two first-order corrections. It is nonzero and is required even in the purely classical theory. This calculation also makes the field dependence of the interacting bracket explicit.

The same bracket follows by solving the interacting response equation. At one causal prescription, with $A=h\phi^2/2$ and $B=h\phi\Phi_1$,

$$
\mathcal G_\lambda^\epsilon
=\mathcal G^\epsilon-\lambda\mathcal G^\epsilon A\mathcal G^\epsilon
+\lambda^2\left(\mathcal G^\epsilon A\mathcal G^\epsilon A\mathcal G^\epsilon
-\mathcal G^\epsilon B\mathcal G^\epsilon\right).
$$

The advanced-minus-retarded difference is the Peierls kernel about $\Phi_\lambda$. Taking the Poisson bracket of the nonlinear field equation with $\Phi_\lambda(Y)$ shows that the directly computed field bracket satisfies this same linearized equation in its first slot. Its canonical field/momentum initial values agree as well. The coefficient recursion is unique with these data, so the regional response computation and the direct field-bracket computation describe the same classical Poisson structure.

## Independent Global Comparison

Independently define the scalar on $[0,\ell]$ with Dirichlet conditions at $0,\ell$, the same stationary $h$, and no boundary or additional action at $a$. Define its polynomial observables and canonical Poisson bracket by the same regional rules, now applied to this single interval. This gives $\mathfrak P_{\ell,\lambda}$ without using a sewing map.

Its independently solved free response is

$$
\widehat G_\ell(\zeta;x,x')
=\frac{\sinh(\kappa x_<)\sinh(\kappa(\ell-x_>))}
{\kappa\sinh(\kappa\ell)}.
$$

Substitute $x=y_1$ on the left and $x=\ell-y_2$ on the right. The explicit regional functions above give

$$
\mathcal G_{ij}^\epsilon=G_\ell^\epsilon|_{ij},\qquad
E_{ij}=E_\ell|_{ij},\qquad \epsilon=R,A,
$$

including the history traces and opposite outward derivatives. This is a direct identity between the solved kernels, before the interaction is introduced.

Each first-order vertex integral splits into a left and right contribution. Each second-order integral splits into four assignments of $Z,U$ to the two regions. In every assignment the displayed $R$, $E$, field polynomial and coefficient equal the independently global ones. Thus both field corrections, $C_1$ and every term of $C_2$ match. This includes $X,Y$ on opposite sides of the cut.

For a general polynomial insertion, the ordered Poisson recursion uses exactly the same vertices and canonical pairings. It therefore gives the same coefficientwise comparison. All mixed labels produced by the brackets remain in the polynomial class. Each global seed and each of its vertex integrals has a regional representative, so the map is onto. Evaluation at zero mismatch has the kernel already calculated above. Consequently,

$$
\boxed{\quad
\mathfrak P_{\mathrm{pre},\lambda}/\mathcal I_\lambda
\xrightarrow[\ \mathcal S_\lambda\ ]{\ \sim\ }
\mathfrak P_{\ell,\lambda}
\quad}
$$

is an isomorphism of the declared polynomial Poisson algebras through $\lambda^2$:

$$
\mathcal S_\lambda(FG)=\mathcal S_\lambda(F)\mathcal S_\lambda(G),\qquad
\mathcal S_\lambda\{F,G\}_{s,\lambda}
=\{\mathcal S_\lambda F,\mathcal S_\lambda G\}_{\ell,\lambda}.
$$

For another interface, the cluster retains all its remaining history slots, their full response matrix, and the original vertex recipes, each counted once. The same release equations use a matrix $D$ and its causal inverse. This specifies how the classical construction continues to another gluing. The explicit coefficient check here is the two-region comparison, not a separate three-region calculation.

## Stress, Interface Power and Time Evolution

The classical energy, current and spatial stress are ordinary polynomial insertions:

$$\begin{aligned}
e_i&=\frac12\left(\dot\Phi_i^2+(\Phi_i')^2+m^2\Phi_i^2\right)
+\frac{\lambda h_i}{24}\Phi_i^4+\epsilon_*,\\
j_i&=-\dot\Phi_i\Phi_i',\\
T^{11}_i&=\frac12\left(\dot\Phi_i^2+(\Phi_i')^2-m^2\Phi_i^2\right)
-\frac{\lambda h_i}{24}\Phi_i^4-\epsilon_*.
\end{aligned}$$

The same energy constant $\epsilon_*$ is used on both regions and globally; it may be set to zero. Substituting the field equation gives

$$
\partial_te_i+\partial_{y_i}j_i=0,\qquad
\partial_tj_i+\partial_{y_i}T^{11}_i
=-\frac{\lambda h_i'}{24}\Phi_i^4.
$$

For example, the quartic terms in the first identity are $-\lambda h_i\dot\Phi_i\Phi_i^3/6$ from the acceleration and $+\lambda h_i\Phi_i^3\dot\Phi_i/6$ from the potential. They cancel without an ordering or subtraction prescription.

The coefficient expansion can also be checked directly. Write $v=h\phi^4/24$ and let $R_1,R_2$ denote the first two ordered Poisson operations above. Then

$$\begin{aligned}
e_\lambda&=e_0+\lambda(R_1e_0+v)+\lambda^2(R_2e_0+R_1v),\\
j_\lambda&=j_0+\lambda R_1j_0+\lambda^2R_2j_0.
\end{aligned}$$

For $L_tF=\{F,V(t)\}_{s,0}$ the initial-data bracket gives $L_te_0=-\dot v$ and $L_tv=0$. Differentiating the ordered integrals gives

$$\begin{aligned}
\partial_te^{(1)}+\partial_xj^{(1)}&=L_te_0+\dot v=0,\\
\partial_te^{(2)}+\partial_xj^{(2)}&=R_1(L_te_0+\dot v)+L_tv=0.
\end{aligned}$$

Define $E_i=\int_0^{\ell_i}dy_i\,e_i$, using the same smooth time smearing when viewing it as an observable. The physical wall has zero flux. The prescribed history supplies the outward-end power

$$
\dot E_i=-j_i(\ell_i)=\dot q_i\Pi_i.
$$

After matching, $\dot q_1=\dot q_2=\dot q$ and $\Pi_2=-\Pi_1$. With $J_{1\to2}=-\dot q\Pi_1$,

$$
\dot E_1=-J_{1\to2},\qquad \dot E_2=J_{1\to2}.
$$

The density and current are polynomials in precisely the fields and derivatives already compared. Their coefficients and their interface traces therefore sew to the independent global ones through $\lambda^2$.

The sum is the actual time generator. The ordered Poisson expressions give

$$\begin{aligned}
R_1H_0&=\int_{t_0}^t ds\,\{H_0,V(s)\}
=V(t_0)-V(t),\\
R_2H_0&=-\int_{t_0}^t du\int_u^t ds\,\{\dot V(s),V(u)\}
=-R_1V(t).
\end{aligned}$$

For the second equality integrate the later vertex time first and use $\{V(u),V(u)\}=0$. Hence

$$
E_1(t)+E_2(t)=H_0+\lambda V(t_0)=H_\lambda
$$

through the displayed order, including the common energy zero. The canonical bracket gives $\dot F=\{F,H_\lambda\}$, in particular $\dot\Phi=\pi$ and $\dot\pi=\Phi''-m^2\Phi-\lambda h\Phi^3/6$. This is the stationary interacting evolution. Moving the reference time changes its initial-data coordinates and composes the same evolution.

## Relation to the Quantum Construction

The classical definitions and comparison above do not require a quantum algebra. They agree with the tree part of [the quantum construction](<1+1 phi4 quantum observable algebra gluing.md>). If $\sigma_0$ selects the coefficient of $\hbar^0$, then

$$
\sigma_0(F\star G)=\sigma_0(F)\sigma_0(G),\qquad
\{\sigma_0F,\sigma_0G\}
=\sigma_0\!\left(\frac{[F,G]_\star}{i\hbar}\right).
$$

Quantum Wick scalar terms and the finite quantum spatial-stress correction have zero classical coefficient. The reflected propagation and the released cross response remain; they already occur in the classical Green functions. The earlier [switched classical construction](<phi4 smooth regional observable algebra gluing.md>) uses a different assumption about time dependence and is not needed for this derivation.

**Verified:** 27 executed Mathematica groups for action and force signs, the free regional/global responses and mismatch section, noncommuting response expansions, the complete first- and second-order field brackets, local energy and momentum work, and a finite canonical check of the ordered time evolution. The coefficientwise kernel/image and global comparison arguments are given above. See [the verification record](<../../../numerics/phi4 classical sewing verification.md>).

**Assumptions:** the stated one-dimensional intervals, $m>0$, physical Dirichlet walls, stationary $h=1$ near the cut and $h=0$ near the physical walls, compatible formal initial/history data, finite time intervals and the declared smeared polynomial coefficient class.

**Not verified:** convergence of the classical perturbative series, arbitrary incompatible histories, or a larger algebra of all smooth observables. Higher coefficients are specified recursively; the explicitly expanded field, bracket and energy checks stop at $\lambda^2$.
