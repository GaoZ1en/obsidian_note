# Regional Field Theories and Sewing — Examples and Calculation Records

This companion preserves the model calculations and recorded checks separated from the [general formalism](REGIONAL_THEORY_AND_SEWING.md). The model sections retain their original numbering 6.1–6.5. References to §§1–5 point to the general formalism; references to §6 within this companion point to the model collection below.

The verification record describes the calculations performed when the expanded draft was prepared. The separation into two files introduces no new model calculation.

## 6. Verification in Specific Theories

### 6.1 Massive Scalar on a Static Interval

#### Configuration, Variation and Closed Source Families

Take $\displaystyle{M=[0,T]\times[0,L]}$, with metric $\displaystyle{ds^2=-dt^2+dx^2}$ and $\displaystyle{m>0}$. Impose Dirichlet conditions at the physical endpoints. For a region $\displaystyle{R_I=[0,T]\times I}$, $\displaystyle{I=[a,b]}$, define the regional action directly by

$$\begin{align}
S_I^o[\phi;J] &=\int_0^Tdt\int_a^bdx\left[ \frac12\phi_t^2-\frac12\phi_x^2-\frac12m^2\phi^2+J\phi\right].
\end{align}$$

The prescribed bulk source $\displaystyle{J}$ is distinguished from a test $\displaystyle{f}$ used to define an observable or a linear response. Put

$$\begin{align}
K&=-\partial_x^2+m^2,&Q&=\partial_t^2+K.
\end{align}$$

At fixed $\displaystyle{J}$, integration by parts gives

$$\begin{align}
\delta S_I^o &=\int_{R_I}(J-Q\phi)\delta\phi\,dt\,dx +\left[\int_I\phi_t\delta\phi\,dx\right]_0^T +\sum_{e\in\partial I}\int_0^T\Pi_e\delta q_e\,dt,\\
q_e&=\phi|_e,&\nu_e&=n_e\phi_x|_e,&\Pi_e&=-\nu_e,\\
n_a&=-1,&n_b&=+1.
\end{align}$$

The field equation is $\displaystyle{Q\phi=J}$. The action-defined Jacobi operator used in §4 is $\displaystyle{P=-Q}$, because $\displaystyle{\mathcal E=J-Q\phi}$. Hence a retarded solver for $\displaystyle{Qu=f}$ has the opposite sign to the retarded inverse of $\displaystyle{P}$.

For Dirichlet closure, prescribe smooth endpoint histories $\displaystyle{q_a,q_b}$ at artificial endpoints, keeping the original zero history at physical endpoints. Its regional solution space is

$$\begin{align}
\mathscr S_I^{D,q;J} &=\{\phi\in C^\infty(\overline{R_I}):Q\phi=J,\quad\phi(t,e)=q_e(t)\}.
\end{align}$$

Its definition does not fix an initial state. Initial data parameterize members of this solution space and are allowed to vary when calculating CPS.

A different realization adds at an artificial endpoint

$$\begin{align}
\Lambda_e&=\int_0^T\left(-\frac{\kappa_e}{2}q_e^2+j_eq_e\right)dt,
\end{align}$$

with prescribed $\displaystyle{\kappa_e,j_e}$. The face variation is

$$\begin{align}
\delta(S_I^o+\Lambda_e)|_e &=\int_0^T(-\nu_e-\kappa_eq_e+j_e)\delta q_e\,dt +\int_0^Tq_e\delta j_e\,dt.
\end{align}$$

At fixed $\displaystyle{j_e}$, it gives the Robin law $\displaystyle{\nu_e+\kappa_eq_e=j_e}$. Its source chart extracts exactly this combination. On the family, the residual work is $\displaystyle{\int q_e\delta j_e}$. Opening removes this artificial closure choice or translates its potential and work as in §1.4. Nonnegative Robin coefficients give a nonnegative endpoint contribution to the spatial form, but a complete Robin source theorem still includes its own initial-corner compatibility conditions.

#### Admissible Dirichlet Inputs and Regional Existence

Let $\displaystyle{u_0=\phi(0,\cdot)}$ and $\displaystyle{u_1=\phi_t(0,\cdot)}$. The wave equation determines all initial time derivatives recursively:

$$\begin{align}
w_0&=u_0,&w_1&=u_1,& w_{k+2}&=\partial_t^kJ(0,\cdot)-Kw_k.
\end{align}$$

The smooth input domain consists of tuples $\displaystyle{(J,q_a,q_b,u_0,u_1)}$ satisfying

$$\begin{align}
w_k(e)&=q_e^{(k)}(0),& e&\in\{a,b\},&k&\geqslant0,
\end{align}$$

as well as the original physical source policy. These conditions are calculated from the regional input. They do not refer to a global solution. No separate final initial data are prescribed: the final-corner relations are consequences of the evolved solution.

For example, on $\displaystyle{I=[0,\lambda]}$, take $\displaystyle{u_0=x(\lambda-x)}$, $\displaystyle{u_1=0}$ and zero endpoint histories. If $\displaystyle{J=0}$, the second compatibility condition fails because $\displaystyle{w_2(0)=-2}$. With

$$\begin{align}
J(x)&=2+m^2x(\lambda-x),
\end{align}$$

the static field $\displaystyle{\phi=u_0}$ is a solution. Splitting this admissible input into a force-only problem and an initial-data-only problem produces two individually incompatible inputs at the corner. This explains the affine-domain qualification in §4.1.

Regional smooth existence can be obtained by a compatible boundary lift. Choose a smooth $\displaystyle{B(t,x)}$ with $\displaystyle{B|_e=q_e}$ and endpoint normal jets satisfying

$$\begin{align}
\left.\partial_x^{r+2}B\right|_e &=\left.(\partial_t^2+m^2)\partial_x^rB\right|_e -\left.\partial_x^rJ\right|_e,&r&\geqslant0.
\end{align}$$

A smooth extension of these endpoint jets exists; one may construct it with Taylor terms supported in successively smaller endpoint neighborhoods. The residual $\displaystyle{F=J-QB}$ is flat at the endpoints. The compatibility tower ensures that $\displaystyle{v_0=u_0-B(0)}$ and $\displaystyle{v_1=u_1-B_t(0)}$ belong to every power domain of the Dirichlet operator

$$\begin{align}
K_D&=-\partial_x^2+m^2,&D(K_D)&=H^2(I)\cap H_0^1(I).
\end{align}$$

Then

$$\begin{align}
v(t)&=\cos(t\sqrt{K_D})v_0 +K_D^{-1/2}\sin(t\sqrt{K_D})v_1\\
&\quad+\int_0^tK_D^{-1/2}\sin((t-s)\sqrt{K_D})F(s)\,ds,\\
\phi(t)&=B(t)+v(t).
\end{align}$$

In the sine basis, arbitrary powers of $\displaystyle{K_D}$ give arbitrarily rapid coefficient decay. Each finite spacetime derivative loses only finitely many powers, so the solution series and its derivatives converge smoothly on the closed strip. Two choices of lift differ by a solution with zero forcing, initial data and boundary values. The energy

$$\begin{align}
E[v](t)&=\frac12\int_I(v_t^2+v_x^2+m^2v^2)dx
\end{align}$$

is conserved for this difference and initially zero; thus the solution is unique and independent of the lift. To prove continuous dependence in a specified finite smooth norm, use a finite-order lift, the corresponding higher-energy estimate and one-dimensional Sobolev embedding. No bounded right inverse on an unrestricted infinite jet-sequence space is needed. This is an independently constructed regional solver.

#### Transmission, Normal Recurrence and CPS

Cut at $\displaystyle{x=c}$. The common trace and outward response equation are

$$\begin{align}
\phi_L(t,c)&=\phi_R(t,c),\\
-\phi_{L,x}(t,c)+\phi_{R,x}(t,c)&=0.
\end{align}$$

Thus the first spatial derivatives match in the fixed $\displaystyle{x}$ coordinate. The equation supplies the recurrence

$$\begin{align}
\partial_x^{r+2}\phi &=(\partial_t^2+m^2)\partial_x^r\phi-\partial_x^rJ.
\end{align}$$

If the bulk source jets match, the common field and first normal derivative recursively determine all normal jets. This verifies R1w in the smooth static interval class. R1s then identifies the assembled solution with the independently defined union-interval solution.

The regional CPS is read directly from the cap term:

$$\begin{align}
\theta_{I,t}&=\int_I\phi_t\delta\phi\,dx,& \Omega_{I,t}&=\int_I\delta\phi_t\wedge\delta\phi\,dx.
\end{align}$$

On the opened solution family,

$$\begin{align}
\Omega_{I,T}-\Omega_{I,0} &=-\sum_e\int_0^T\delta\Pi_e\wedge\delta q_e\,dt.
\end{align}$$

The two interface fluxes cancel after field and response matching. The sum of the two cap integrals is the cap integral over the full interval, giving R2.

#### Native Response and Its Coupled Correction

For zero incoming data, consider the Laplace parameter $\displaystyle{s}$ in $\displaystyle{\operatorname{Re}s>0}$ and choose $\displaystyle{\mu=\sqrt{s^2+m^2}}$ with $\displaystyle{\operatorname{Re}\mu>0}$. For an interval of length $\displaystyle{\lambda=b-a}$, the homogeneous boundary response is

$$\begin{align}
\widehat{H_Iq}(x) &=\frac{\sinh\mu(b-x)}{\sinh\mu\lambda}\widehat q_a +\frac{\sinh\mu(x-a)}{\sinh\mu\lambda}\widehat q_b.
\end{align}$$

Its outward-normal response, which is the negative of the action response, is

$$\begin{align}
D_\lambda(s)&=\frac{\mu}{\sinh\mu\lambda}
\begin{pmatrix}\cosh\mu\lambda&-1\\
-1&\cosh\mu\lambda\end{pmatrix}.
\end{align}$$

The native Dirichlet resolvent for $\displaystyle{Q}$ is

$$\begin{align}
g_I(s;x,y)&=\frac{\sinh\mu(x_<-a)\sinh\mu(b-x_>)}{\mu\sinh\mu\lambda}.
\end{align}$$

It has zero endpoint values and derivative jump $\displaystyle{-1}$ at $\displaystyle{x=y}$, so $\displaystyle{(-\partial_x^2+\mu^2)g_I=\delta(x-y)}$. These expressions follow from the regional ODE and its boundary conditions.

For $\displaystyle{I_L=[0,c]}$, $\displaystyle{I_R=[c,L]}$, let

$$\begin{align}
K_L(x)&=\frac{\sinh\mu x}{\sinh\mu c},& K_R(x)&=\frac{\sinh\mu(L-x)}{\sinh\mu(L-c)},\\
D(s)&=\mu\bigl(\coth\mu c+\coth\mu(L-c)\bigr).
\end{align}$$

In these formulas $\displaystyle{K_L,K_R}$ are boundary lifting columns; they are not the spatial operator $\displaystyle{K_D}$. Stack them into $\displaystyle{K_\Gamma}$. Integration of the regional Green identity gives a source-induced outward response $\displaystyle{-K_\Gamma^{\mathsf t}f}$. Consequently

$$\begin{align}
Dq&=K_\Gamma^{\mathsf t}f,\\
\boxed{g_\#=g_L\oplus g_R+K_\Gamma D^{-1}K_\Gamma^{\mathsf t}.}
\end{align}$$

The superscript $\displaystyle{\mathsf t}$ is the bilinear source/test transpose, without complex conjugating the Laplace parameter. For $\displaystyle{x<c<y}$,

$$\begin{align}
g_{\#,LR}(x,y) &=\frac{K_L(x)K_R(y)}{D} =\frac{\sinh\mu x\sinh\mu(L-y)}{\mu\sinh\mu L}.
\end{align}$$

For $\displaystyle{x,y<c}$, the correction $\displaystyle{K_L(x)D^{-1}K_L(y)}$ changes the diagonal block as well. Both expressions reproduce the full-interval Green kernel. The native left kernel vanishes at its artificial endpoint, while the full kernel usually does not; this is a direct way to see why restriction of a global Green kernel is not the native closed regional Green kernel.

The interface inverse has no pole in the right half-plane. If $\displaystyle{D(s)q=0}$, the constructed homogeneous field is continuously matched with matched derivatives and zero physical endpoints. Integrating its spatial equation gives

$$\begin{align}
\int_0^L(|u_x|^2+m^2|u|^2)dx+s^2\int_0^L|u|^2dx&=0.
\end{align}$$

For $\displaystyle{\operatorname{Im}s\ne0}$, its imaginary part and $\displaystyle{\operatorname{Re}s>0}$ imply $\displaystyle{u=0}$; for positive real $\displaystyle{s}$, its real part does. On a vertical line $\displaystyle{\operatorname{Re}s=\sigma>0}$, the explicit inverse

$$\begin{align}
D^{-1}(s)&=\frac{\sinh\mu c\sinh\mu(L-c)}{\mu\sinh\mu L}
\end{align}$$

and the lifting columns have the polynomial bounds required for smooth, initially flat source data. Laplace inversion gives the causal response; finite propagation follows from the local wave-energy argument. General compatible initial data are handled by a compatible reference history plus a flat difference. This supplies the analytic input to R3a in this model.

Finally, the matched spatial form has domain

$$\begin{align}
\{(u_L,u_R):u_a\in H^1(I_a),\quad u_L(0)=u_R(L)=0, \quad u_L(c)=u_R(c)\},
\end{align}$$

which assembles bijectively to $\displaystyle{H_0^1([0,L])}$. Its quadratic form is $\displaystyle{\int(|u_x|^2+m^2|u|^2)dx}$, bounded below by $\displaystyle{m^2\|u\|^2}$. This verifies the positive-form certificate for the static two-point prescription. With the action convention $\displaystyle{P=-\partial_t^2-K}$,

$$\begin{align}
\Delta(t)&=-\frac{\sin(t\sqrt K)}{\sqrt K},& W(t)-W(-t)&=i\Delta(t).
\end{align}$$

These calculations establish the regional construction, transmission, CPS and elementary coupled response in the stated scalar domain. Finite Poisson words still require their derivative-source domain, and local Wick or interacting extensions still require the conditions in §§4.3 and 5.3. The source package gives further non-derivative scalar domain arguments; they are not a general theorem for all singular or derivative probes.

### 6.2 Maxwell and Yang–Mills

Fix a principal bundle with structure group and invariant pairing. On each region, define the configuration domain to be its smooth connections with the inherited physical conditions. With coupling $\displaystyle{e}$,

$$\begin{align}
S_a^o[A]&=-\frac1{2e^2}\int_{R_a}\langle F_A\wedge *F_A\rangle +\int_{B_a}\ell,\\
F_A&=dA+A\wedge A,&\delta F_A&=D_A\delta A.
\end{align}$$

Covariant integration by parts gives the equation $\displaystyle{D_A*F_A=0}$ and

$$\begin{align}
\Theta_a&=-e^{-2}\langle\delta A\wedge *F_A\rangle,\\
\beta_a^o&=-e^{-2}\int_{\Gamma_a} \langle\delta q_a\wedge\iota_{\Gamma_a}^**F_A\rangle, &q_a&=\iota_{\Gamma_a}^*A.
\end{align}$$

Prescribing the tangential connection $\displaystyle{q_a}$ therefore defines a regional variational realization. Its source is a connection on the boundary bundle, not necessarily a globally defined Lie-algebra-valued one-form in a trivialization. Source-changing bundle automorphisms act on the source as well as the field; source-preserving ones act within a fibre.

This variation does not prove that every prescribed connection history is admitted by a constraint-preserving initial-boundary problem. Gauss constraints, gauge propagation, physical conditions and initial-corner compatibility must be checked. In particular, conserved global sources cannot be divided into arbitrary independently conserved regional sources while ignoring interface flux.

The source package's relative Maxwell benchmark makes some of these requirements explicit. On a flat slab with transverse $\displaystyle{T^2}$, in Lorenz coordinates prescribe

$$\begin{align}
A_t|_{x=s}&=\beta_t,&A_y|_{x=s}&=\beta_y,&A_z|_{x=s}&=\beta_z,\\
\partial_xA_x|_{x=s} &=\partial_t\beta_t-\partial_y\beta_y-\partial_z\beta_z.
\end{align}$$

Both endpoints use the same coordinate derivative $\displaystyle{\partial_x}$. These conditions imply that the Lorenz constraint

$$\begin{align}
C&=-\partial_tA_t+\partial_xA_x+\partial_yA_y+\partial_zA_z
\end{align}$$

vanishes at the boundaries. For a co-closed forcing and compatible initial data with $\displaystyle{C=\partial_tC=0}$, the gauge-fixed wave equations give a homogeneous wave equation for $\displaystyle{C}$. Boundary and initial uniqueness then give $\displaystyle{C=0}$ throughout. Tangential Fourier modes reduce the native construction to compatible Dirichlet/Neumann interval problems; rapid transverse coefficients and the zero-frequency limit must be included in its regularity argument.

This describes a particular native source construction. The complete sewn invariant-source range, proper parameter domains, joint transport and closure of a chosen observable-word domain remain separate checks. For general nonlinear Yang–Mills, the independently written action and conormal work support smooth variational assembly on compatible existing histories. A full general R1w or R3a additionally needs the actual normal-gauge/constraint and causal-feedback certificates; they are not supplied just by the Maxwell example.

### 6.3 Framed Yang–Mills in Two Dimensions

For a compact connected group on a framed strip, use the first-order regional action

$$\begin{align}
S_I[A_t,A_x,E] &=\int dt\,dx\left[ \langle E,F_{tx}\rangle-\frac{e^2}{2}\langle E,E\rangle\right],\\
F_{tx}&=\partial_tA_x-\partial_xA_t+[A_t,A_x].
\end{align}$$

The auxiliary equation $\displaystyle{E=e^{-2}F_{tx}}$ returns the second-order Yang–Mills action. Prescribe endpoint histories $\displaystyle{A_t(t,e)=q_e(t)}$. The complete variation gives

$$\begin{align}
F_{tx}&=e^2E,&D_xE&=0,&D_tE&=0,\\
\theta_{I,t}&=\int_I\langle E,\delta A_x\rangle dx,& \Pi_e&=-n_eE(e).
\end{align}$$

Choose smooth initial data $\displaystyle{A_x(0,x)=a_0(x)}$, $\displaystyle{E(0,x)=E_0(x)}$ obeying $\displaystyle{D_{a_0,x}E_0=0}$ and the original framing conditions. For any smooth interpolation $\displaystyle{a(t,x)}$ of the endpoint sources, set $\displaystyle{A_t=a}$ and solve

$$\begin{align}
\partial_tE&=-[a,E],\\
\partial_tA_x&=\partial_xa+[A_x,a]+e^2E.
\end{align}$$

For each $\displaystyle{x}$, these are linear or affine ODEs with smooth coefficients. Their solutions and spatial derivatives are smooth on the finite strip. Gauss propagation follows from

$$\begin{align}
D_t(D_xE)&=D_x(D_tE)+[F_{tx},E]=[e^2E,E]=0.
\end{align}$$

Thus the regional input directly generates solutions. The choice of interpolation is a solving choice; its changes are carried by the corresponding gauge maps, which must remain part of the comparison.

At a seam, common $\displaystyle{q=A_t}$ and response balance give common $\displaystyle{E}$. In a normal gauge reached by an actual recorded map, $\displaystyle{A_x=0}$, the equations imply

$$\begin{align}
E(t,x)&=E_c(t),\\
A_t(t,x)&=q_c(t)-e^2(x-c)E_c(t),\\
\dot E_c+[q_c,E_c]&=0.
\end{align}$$

The common data therefore give a common smooth collar. This proves smoothability in these representatives. Transport back must use the actual compatible maps; arbitrary raw connection components in unrelated gauges do not thereby become equal. The cap potential and all gauge arrows assemble without removing their stabilizers.

To calculate selected framed observables, define

$$\begin{align}
U(b,a)&=\mathcal P\exp\left(-\int_a^bA_xdx\right),&P_I&=-E(b).
\end{align}$$

The variation of parallel transport is

$$\begin{align}
\delta U(b,a) &=-\int_a^bU(b,x)\delta A_x(x)U(x,a)\,dx.
\end{align}$$

Together with $\displaystyle{D_xE=0}$ and invariance of the pairing, it gives

$$\begin{align}
\theta_{I,t}&=\langle P_I,\delta U\,U^{-1}\rangle.
\end{align}$$

This is an evaluation of the unreduced potential on the chosen observables, not a replacement of the full field space. For two regions ordered from left to right,

$$\begin{align}
U&=U_2U_1,&P_1&=\operatorname{Ad}_{U_2^{-1}}P_2.
\end{align}$$

Since

$$\begin{align}
\delta(U_2U_1)(U_2U_1)^{-1} &=\delta U_2U_2^{-1} +\operatorname{Ad}_{U_2}(\delta U_1U_1^{-1}),
\end{align}$$

the two regional potentials add to the union potential. Matrix coefficients $\displaystyle{f(U)}$ and $\displaystyle{P_X=\langle P_I,X\rangle}$ have brackets

$$\begin{align}
V_Xf(U)&=\left.\frac{d}{d\epsilon}f(e^{\epsilon X}U)\right|_{\epsilon=0},\\
\{P_X,f\}&=-V_Xf,& \{P_X,P_Y\}&=P_{[X,Y]},&\{f,h\}&=0.
\end{align}$$

These are a concrete Hamiltonian seed domain for the direct route in §4.3. The corresponding source dynamics are

$$\begin{align}
\dot U&=-q_bU+Uq_a+e^2|I|P_IU,& \dot P_I&=-[q_b,P_I].
\end{align}$$

Differentiating $\displaystyle{U_2U_1}$ cancels the internal endpoint source. The momentum transport makes the two interval-length terms add. This retains the regional source problem during composition.

On the common operator domain $\displaystyle{C^\infty(G)}$, take

$$\begin{align}
\widehat f&=M_f,&\widehat P_X&=-i\hbar V_X.
\end{align}$$

Here $\displaystyle{[V_X,V_Y]=-V_{[X,Y]}}$, so the commutators reproduce the stated Poisson conventions. The comparison

$$\begin{align}
(V\psi)(U_2,U_1)&=\psi(U_2U_1)
\end{align}$$

is injective and its image consists of smooth functions invariant under $\displaystyle{(U_2,U_1)\mapsto(U_2h^{-1},hU_1)}$. The selected union multiplication and electric operators intertwine on this image by the chain rule. Normalized Haar measures give compatible inner products. This realizes the restricted operator-algebra statement in §5.1 while preserving the unreduced classical fields.

If evolution is included among the operations, specify it separately. For the compact-group Casimir prescription,

$$\begin{align}
\widehat H_I&=-\frac{e^2|I|\hbar^2}{2}\Delta_G,&\Delta_G&\leqslant0,\\
\Delta_1V&=V\Delta_G,&\Delta_2V&=V\Delta_G.
\end{align}$$

The sum of regional Hamiltonians intertwines with the union Hamiltonian. Spectral evolution preserves smooth functions and gives the corresponding evolution comparison. It is not inferred from closure of the finite-order differential-operator algebra alone. Group multiplication, transported electric data and interval-length addition are associative for finite subdivisions, with all remaining endpoint histories retained.

### 6.4 Chern–Simons

The preceding Yang–Mills construction cannot be transferred to Chern–Simons by renaming the response. The first-order Chern–Simons action induces its own boundary symplectic structure and allowed polarizations. One must choose the physical and artificial boundary realization, derive its full face/joint variation, construct its flatness and source domain, and specify the current or Wilson observables whose operations are being compared.

The uploaded source indexes earlier Chern–Simons/current results but does not provide a complete independent certificate covering these steps for the present framework. Accordingly, §§1–5 specify the required comparison once those data are supplied. This subsection does not assert a new general Chern–Simons reconstruction theorem, a current-algebra completion or a quantum sewing measure.

### 6.5 Einstein Theory and an AdS3 Collar Family

#### Regional Metric Variation

Fix the original Einstein–Hilbert theory and its physical boundary realization. On each region, take all smooth Lorentzian metrics with the prescribed face types and inherited physical restrictions. A Dirichlet realization at an artificial timelike face uses the induced metric as source and the Gibbons–Hawking–York polarization:

$$\begin{align}
S_a^{\mathrm{pol}}[g] &=\frac1{16\pi G}\int_{R_a}(\mathcal R-2\Lambda)\epsilon_g +\int_{B_a}\ell +\frac1{8\pi G}\int_{\Gamma_a}K^{\mathrm{out}}\,d\mu_\gamma.
\end{align}$$

The last integral uses the scalar outward mean curvature and the associated boundary density. Any original cap/joint prescription remains part of the original relative representative. Let $\displaystyle{h_{\mu\nu}=\delta g_{\mu\nu}}$, with raised indices formed using $\displaystyle{g}$, and $\displaystyle{h=g^{\mu\nu}h_{\mu\nu}}$. The bulk potential is

$$\begin{align}
\Theta(g;h) &=\frac1{16\pi G} \left(\nabla_\nu h^{\mu\nu}-\nabla^\mu h\right) \iota_{\partial_\mu}\epsilon_g.
\end{align}$$

With $\displaystyle{K_{ij}=\tfrac12\mathcal L_n\gamma_{ij}}$ for the outward unit spacelike normal, the timelike-face variation has the form

$$\begin{align}
\left.(\Theta+\delta\ell_{\mathrm{GHY}})\right|_\Gamma &=\pi^{ij}\delta\gamma_{ij}\,d^dy+dC_\Gamma,\\
\pi^{ij}&=\frac{\sqrt{|\gamma|}}{16\pi G} \left(K\gamma^{ij}-K^{ij}\right),&d&=n-1,\\
C_\Gamma&=\iota_c\epsilon_\Gamma,& c^\mu&=-\frac1{16\pi G}\gamma^{\mu\nu}n^\alpha h_{\nu\alpha}.
\end{align}$$

Fixing $\displaystyle{\gamma}$ removes the response work, but need not remove $\displaystyle{C_\Gamma}$ because mixed normal-tangential metric variations may remain. The cap potential is obtained from the bulk integral and the physical/artificial corner corrections in this same polarization. These metric formulas use the convention of [Harlow and Wu, §3.5](https://arxiv.org/html/1906.08616v3#S3.SS5), also recorded in source C, §9.1.

#### Weak Action and Brown–York Transmission

Use a common Gaussian collar

$$\begin{align}
g&=dr^2+\gamma_{ij}(r,y)dy^idy^j,& K_{ij}&=\frac12\partial_r\gamma_{ij}.
\end{align}$$

Let the left region have $\displaystyle{r\leqslant0}$ and the right region $\displaystyle{r\geqslant0}$. In this paragraph $\displaystyle{K}$ uses the common increasing-$\displaystyle{r}$ normal, and the jump is $\displaystyle{[K]=K(0^+)-K(0^-)}$. The outward quantities at the seam satisfy

$$\begin{align}
K_L^{\mathrm{out}}&=K(0^-),& K_R^{\mathrm{out}}&=-K(0^+).
\end{align}$$

For a continuous metric that is smooth on each side, the Gaussian curvature identity contains

$$\begin{align}
\mathcal R[g] &=\mathcal R[\gamma]-K_{ij}K^{ij}-K^2-2\partial_rK.
\end{align}$$

The derivative of a jumped $\displaystyle{K}$ contributes $\displaystyle{[K]\delta(r)}$. Hence the singular scalar curvature and its action contribution are

$$\begin{align}
\mathcal R_{\mathrm{sing}}&=-2[K]\delta(r),\\
S_\#^{\mathrm{weak}} &=S_L^o+S_R^o-\frac1{8\pi G}\int_\Gamma[K]\,d\mu_\gamma\\
&=S_L^o+S_R^o+S_{\mathrm{GHY},L}+S_{\mathrm{GHY},R}.
\end{align}$$

This is a weak representation of the specified Einstein–Hilbert density in this regular collar class. The interface coefficient is fixed by that density. On a weak metric with a derivative jump, the sum of artificial GHY terms is generally nonzero; on a smooth matched metric it vanishes. Thus removal of a closure choice and evaluation of the original action on a weak field require the distinct steps in §§1.4 and 2.1.

The common induced-metric variation yields $\displaystyle{\pi_L+D_\Gamma^\vee\pi_R=0}$. To see what it determines, set

$$\begin{align}
p^{ij}&=\frac{16\pi G}{\sqrt{|\gamma|}}\pi^{ij} =K\gamma^{ij}-K^{ij}.
\end{align}$$

For $\displaystyle{d\geqslant2}$, taking the trace and then substituting back gives

$$\begin{align}
K&=\frac{\gamma_{ij}p^{ij}}{d-1},& K^{ij}&=K\gamma^{ij}-p^{ij}.
\end{align}$$

Thus common $\displaystyle{\gamma}$ and balanced responses give the full common second fundamental form in the increasing-$\displaystyle{r}$ convention. The trace inversion fails at $\displaystyle{d=1}$ and is not claimed there.

For existing smooth vacuum Einstein solutions, the tangential Ricci equation in these coordinates is

$$\begin{align}
R_{ij}[g] &=R_{ij}[\gamma]-\partial_rK_{ij}-KK_{ij}+2K_{ik}K^k{}_j =\frac{2\Lambda}{n-2}\gamma_{ij}.
\end{align}$$

Together with $\displaystyle{\partial_r\gamma=2K}$, it determines successive normal derivatives from common $\displaystyle{\gamma,K}$ and their tangential derivatives. With compatible constraints and actual Gaussian-coordinate maps, the same induction as R1w gives smooth pasting. It does not prove existence for arbitrarily prescribed timelike induced metrics.

At cap intersections, transport the corner form and its incidence together. Reversing the outward normal reverses both $\displaystyle{c}$ and the induced oriented face volume form, so the common-chart pullbacks of $\displaystyle{C_\Gamma=\iota_c\epsilon_\Gamma}$ agree; the boundary orientations of the two cap pieces are opposite, so their corner integrals cancel. Variable dihedral joints meeting physical faces require the actual original joint variation. The collar result alone does not supply a missing joint action or condition.

#### An Independently Generated AdS3 Family

There is a more explicit regional existence construction in pure $\displaystyle{2+1}$-dimensional Einstein theory. Let $\displaystyle{\gamma}$ be a smooth Lorentzian metric on a marked cylinder or permitted local patch $\displaystyle{C}$, and $\displaystyle{K}$ a symmetric tensor on it. Define

$$\begin{align}
B&=\gamma^{-1}K.
\end{align}$$

Admissible data satisfy the Gauss–Codazzi equations

$$\begin{align}
\nabla_iK_{jk}-\nabla_jK_{ik}&=0,\\
\frac12R[\gamma]&=-\ell^{-2}+\det B.
\end{align}$$

For a chosen interval of $\displaystyle{r}$ containing zero, put

$$\begin{align}
Y(r)&=\cosh(r/\ell)I+\ell\sinh(r/\ell)B,\\
\boxed{g=dr^2+\gamma(Y(r)\,\cdot,Y(r)\,\cdot).}
\end{align}$$

Require $\displaystyle{\det Y(r)\ne0}$ on the whole chosen collar, and require that the inherited time function still has timelike differential so that its caps remain spacelike. Periodicity, marking and physical-boundary conditions are checked on this constructed metric. These conditions are tests of the input data and explicit output formula; they do not define the input as the restriction image of a known global solution.

Because $\displaystyle{B}$ is $\displaystyle{\gamma}$-self-adjoint and $\displaystyle{Y,Y'}$ are functions of $\displaystyle{B}$, define

$$\begin{align}
\gamma_r&=\gamma(Y\,\cdot,Y\,\cdot),& B_r&=Y^{-1}Y',&K_r&=\gamma_rB_r.
\end{align}$$

The scalar hyperbolic-function identities imply

$$\begin{align}
Y''&=\ell^{-2}Y,\\
\partial_r\gamma_r&=2K_r,& \partial_rB_r&=\ell^{-2}I-B_r^2,\\
\det Y'-\ell^{-2}\det Y&=\det B-\ell^{-2}.
\end{align}$$

No diagonalizability assumption on the Lorentz-self-adjoint matrix $\displaystyle{B}$ is used.

Codazzi implies that $\displaystyle{Y}$ is a Codazzi endomorphism. The connection

$$\begin{align}
\nabla_X^rZ&=Y^{-1}\nabla_X(YZ)
\end{align}$$

is metric for $\displaystyle{\gamma_r}$ and has zero torsion: its torsion is $\displaystyle{Y^{-1}((\nabla_XY)Z-(\nabla_ZY)X)}$. It is therefore the Levi-Civita connection of $\displaystyle{\gamma_r}$. Its curvature is the conjugate of the curvature of $\displaystyle{\gamma}$. In two dimensions this gives

$$\begin{align}
R[\gamma_r]&=\frac{R[\gamma]}{\det Y}.
\end{align}$$

Furthermore,

$$\begin{align}
(\nabla_X^rB_r)Z &=Y^{-1}\left((\nabla_XY')Z-Y'Y^{-1}(\nabla_XY)Z\right),
\end{align}$$

which is symmetric in $\displaystyle{X,Z}$ because both $\displaystyle{Y}$ and $\displaystyle{Y'}$ obey Codazzi. The determinant identity then propagates the Gauss constraint:

$$\begin{align}
\frac12R[\gamma_r]&=-\ell^{-2}+\det B_r.
\end{align}$$

The Gaussian curvature equations now give the normal sectional curvature $\displaystyle{-\ell^{-2}}$, zero mixed Codazzi component and tangential sectional curvature $\displaystyle{-\ell^{-2}}$. Therefore

$$\begin{align}
R_{\mu\nu}[g]&=-2\ell^{-2}g_{\mu\nu}.
\end{align}$$

Conversely, pure three-dimensional Einstein metrics have constant curvature locally. In a nondegenerate Gaussian collar their shape operator solves the same Riccati equation with the given initial $\displaystyle{\gamma,K}$. ODE uniqueness recovers the displayed formula. This gives an existence and uniqueness parameterization of the Gaussian representatives in this collar sector.

For example, $\displaystyle{\gamma=-dt^2+dy^2}$ and $\displaystyle{K=\gamma/\ell}$ satisfy the constraints and give

$$\begin{align}
g&=dr^2+e^{2r/\ell}(-dt^2+dy^2).
\end{align}$$

The same flat $\displaystyle{\gamma}$ with $\displaystyle{K=0}$ fails the Gauss constraint and is excluded. Even within the admitted family, an induced source metric alone need not determine $\displaystyle{K}$ uniquely.

Advancing first by $\displaystyle{r}$ and then by $\displaystyle{s}$ gives

$$\begin{align}
Y(r+s)&=Y(r)\left[\cosh(s/\ell)I+\ell\sinh(s/\ell)B_r\right].
\end{align}$$

Thus finite parallel-collar refinement preserves the constructed metrics, sources and responses wherever nondegeneracy and the cap conditions persist. At each endpoint, convert the increasing-$\displaystyle{r}$ curvature to the actual outward curvature before calculating its response. The compatible full variation then gives the corresponding action and CPS composition.

This family has parallel Gaussian faces. A second arbitrary fixed timelike face need not be a surface of constant Gaussian distance, so the construction is not a general finite-region Dirichlet theorem. Field-dependent coordinate maps also require their full variation and moving-domain terms in a CPS comparison. General constrained Einstein causal response, a complete gravitational observable domain and quantum reconstruction are not established by this collar calculation.

## 7. Application Assumptions and Recorded Checks

The following table records the hypotheses for applying each reconstruction statement to a specified realization. The corresponding reconstruction proofs are given in the general formalism.

| Conclusion | Required input beyond the definition of the regional action |
|---|---|
| Closed regional source family | An admissible source/incoming domain, corner compatibility, nonempty fibres and the needed regularity and dependence on inputs |
| Labelled history restriction | A specified chart and verified source coverage of the target sector |
| R1w: finite transmission gives smoothness | The full weak action and joint variation, plus a normal-Legendre/constraint or other transmission regularity proof |
| R1s: smooth classical reconstruction | Smooth descent of fields and variations, compatible bundle/sector data and additivity of the actual action |
| R2: CPS reconstruction | Compatible potential representatives, all corner terms, actual differentiable families and the required asymptotic limits |
| R3a: causal reconstruction | Complete regional source charts, solvable interface feedback, sourced regularity, support/dependence estimates and causal uniqueness |
| R3b: seed-hull reconstruction | Independently defined seed correspondence and a finite-word Hamiltonian/Peierls domain closed under the specified operations |
| Linear source presentation | Matching equation-test images, Green reciprocity and the required inverse and support properties |
| R4c: CCR/Weyl reconstruction | The actual real presymplectic isomorphism and the same universal algebra prescription |
| Regular Wick reconstruction | Independently constructed coupled symmetric data, legal contraction domains and invertible composite-label comparisons |
| R4r: renormalized reconstruction | An existing extension algorithm and checked normalization, transport, boundary and regrouping compatibility for the weights used |

For refinement, each intermediate region must retain the structure needed by the level under discussion. Field restriction composes because it is restriction. Source charts, response columns, corner potentials, observable domains and renormalization prescriptions require their own compatibility. A proof at one level does not establish the next level by changing terminology.

### Verification Performed for This Expansion

**Verified:** xAct/xTras returned zero residuals for the fixed-metric scalar first variation and Green identity, the covariant Maxwell first variation, and the covariant-metric variation of the Ricci scalar underlying the Einstein–Hilbert potential. XCoba computed the curvature of $\displaystyle{dr^2-a(r)^2dt^2+b(r)^2dx^2}$ and verified

$$\begin{align}
\mathcal R&=-2\left(\frac{a''}{a}+\frac{b''}{b}+\frac{a'b'}{ab}\right).
\end{align}$$

This is a component check of the Gaussian curvature sign in a specified family, not a machine proof for every Gaussian metric. Mathematica verified the interval Green kernel's cross-region identity and same-region correction, the static $\displaystyle{P=-\partial_t^2-K}$ propagator/Wick sign, the Brown–York trace inversion, Wick conversion coefficients for degrees zero through ten, and the AdS3 determinant, Riccati and transfer identities for a symbolic general $\displaystyle{2\times2}$ matrix. A component $\displaystyle{\mathfrak{su}(2)}$ check also verified the Jacobi cancellation in the YM2 constraint-propagation calculation. The general Lie-algebra statement in the text uses the Jacobi identity and invariance of the pairing.

**Assumptions:** fixed regular timelike cuts; smooth regional fields up to their stated faces; a declared global sector and interface identification; the source, joint and analytic conditions of each theorem; fixed action and orientation conventions; and the same original quantum prescription wherever a quantum comparison is claimed. Normal-Legendre injectivity is branch-specific, Brown–York inversion assumes face dimension at least two, and the explicit scalar and AdS3 calculations use the domains stated in §6.

**Scope of the recorded checks:** the symbolic calculations listed above verify the specified identities and finite cases. Existence and regularity of regional source solvers, admissible observable domains and an extension prescription are separate inputs to the corresponding reconstruction statements. The quantum reconstruction theorems are proved under their stated hypotheses in §§5.1–5.3 of the general formalism.

### Sources and Correspondence

The main source for this expansion is [REGIONAL_THEORY_AND_SEWING.md](/Users/koishi/Desktop/todo/REGIONAL_THEORY_AND_SEWING.md), dated 2026-09-23. The general formalism retains the names R1w, R1s, R2, R3a, R3b, R4c and R4r; this companion retains the original numbering of the model sections. The exposition and equation layout follow [Untitled.md](Untitled.md); the local CPS sign convention also follows [the perturbation formalism](../perturbation/formalism.md).

The accompanying [general regional theorem archive](/Users/koishi/Desktop/todo/general_regional_theorems_2026-09-23.zip) contains copies of its source notes under `general_regional_theorems_2026-09-23/sources/`:

- `R_SOURCE.md`: the regional variational revision, named R in the uploaded manuscript.
- `C_SOURCE.md`: the constructed regional theories, named C. Its §§2–4, 8 and 9 supply the detailed scalar, framed YM2 and AdS3 constructions expanded in §6 here.
- `S_SOURCE.md`: the revised source-family construction, named S. Its §§6.2–6.5 specify the Maxwell/Yang–Mills source conditions and the metric and corner scope used above.

The model expansions use the inspected sections of C and S listed above. Their historical task instructions and status labels do not certify the new note. The `TECHNICAL_AUDIT.md` mentioned by the uploaded manuscript was not found among the named archive's entries or the supplied directory files, so no claim here relies on having checked that audit. Background boundary/CPS conventions were cross-checked against D. Harlow and J.-q. Wu, [*Covariant phase space with boundaries*, arXiv:1906.08616](https://arxiv.org/html/1906.08616v3).

## Additional Illustrations

### Boundary Polarizations

For example, if $\displaystyle{\beta^o=\int_\Gamma\Pi\,\delta q}$ and no additional joint term is present, Dirichlet closure takes $\displaystyle{q=j}$ and $\displaystyle{\delta q=0}$. A Neumann polarization can instead add $\displaystyle{-\int_\Gamma jq}$; stationarity at fixed $\displaystyle{j}$ gives $\displaystyle{\Pi=j}$. Which source values are admissible is an analytic property of the chosen regional problem. The notation for a critical set alone proves neither its nonemptiness nor its well-posedness.

### Low-Degree Wick Labels

With the notation of §5.2 of the general formalism, the general label-conversion formula gives

$$\begin{align}
:\phi^2:_\#&=: \phi^2:_a-\hbar s_a,\\
:\phi^4:_\#&=: \phi^4:_a-6\hbar s_a:\phi^2:_a+3\hbar^2s_a^2.
\end{align}$$
