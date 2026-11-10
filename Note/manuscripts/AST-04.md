# Affine Connections, Torsion and Curvature

A connection tells us how to compare vectors at neighboring points. It supplies parallel transport and a differential equation for curves whose tangent transports itself. Those two operations use different parts of the connection: knowing every parametrized autoparallel does not, in general, recover all parallel transport. Torsion and curvature identify the missing information in different ways.

This chapter develops these constructions on a smooth manifold of dimension $n$, with four-dimensional examples. No metric is assumed until Section 8. In particular, an index called 0 is not intrinsically timelike in the preceding affine geometry. When a Lorentzian metric is introduced, its signature is $(-,+,+,+)$. The connection-slot order agrees with the [shared conventions](<../CONVENTIONS.md>): the first lower index is the derivative direction.

## 1. A Connection Is More than a Collection of Functions

A linear connection is an operation $(X,V)\mapsto\nabla_XV$ on vector fields that is linear over smooth functions in $X$, real-linear in $V$, and obeys the product rule in $V$:

$$\begin{align}
\nabla_{fX}V=f\nabla_XV,\qquad \nabla_X(fV)=X(f)V+f\nabla_XV. \tag{1.1}
\end{align}$$

In coordinates, its coefficients are defined by

$$\begin{align}
\nabla_{\partial_\mu}\partial_\nu=\Gamma^\rho{}_{\mu\nu}\partial_\rho,\qquad (\nabla_\mu V)^\rho=\partial_\mu V^\rho+\Gamma^\rho{}_{\mu\sigma}V^\sigma. \tag{1.2}
\end{align}$$

To see why the coefficients are not tensor components, write new coordinates $y^a$ and put $J^a{}_\rho=\partial y^a/\partial x^\rho$. Applying (1.1) to the new coordinate vectors gives

$$\begin{align}
\Gamma'^a{}_{bc}= \frac{\partial y^a}{\partial x^\rho} \frac{\partial x^\mu}{\partial y^b} \frac{\partial x^\nu}{\partial y^c}\Gamma^\rho{}_{\mu\nu} +\frac{\partial y^a}{\partial x^\rho} \frac{\partial^2x^\rho}{\partial y^b\partial y^c}. \tag{1.3}
\end{align}$$

The second term differentiates the changing basis. It is symmetric in $b,c$ but is not part of a tensor-transformation law. If two connections are subtracted, that same term cancels. Thus

$$\begin{align}
A(X,V)=\nabla'_XV-\nabla_XV \tag{1.4}
\end{align}$$

is bilinear over functions and is a section of $T^*M\otimes\operatorname{End}(TM)$. Conversely, adding any such tensor to a connection gives another connection. Connections form an affine space: one can subtract two of them, but there is no preferred zero connection on a general manifold.

The induced covector derivative is fixed by differentiating the scalar $\omega(V)$:

$$\begin{align}
(\nabla_\mu\omega)_\nu=\partial_\mu\omega_\nu-\Gamma^\rho{}_{\mu\nu}\omega_\rho. \tag{1.5}
\end{align}$$

Each additional upper tensor index receives a plus connection term, and each lower index a minus term. This rule will matter when a derivative itself supplies an additional lower index.

## 2. Parallel Transport and Parametrized Autoparallels

Let $x(s)$ be a curve. A vector $V(s)$ along it is parallel if

$$\begin{align}
\frac{\mathrm dV^\rho}{\mathrm ds} +\Gamma^\rho{}_{\mu\nu}(x(s))\dot x^\mu V^\nu=0. \tag{2.1}
\end{align}$$

This is a linear ordinary differential equation with specified initial vector. Its local existence and uniqueness follow from the usual ODE theorem for smooth coefficients. Transport between two endpoints may depend on the path.

An autoparallel is a curve whose own tangent is parallel:

$$\begin{align}
\ddot x^\rho+\Gamma^\rho{}_{\mu\nu}\dot x^\mu\dot x^\nu=0. \tag{2.2}
\end{align}$$

The parameter $s$ is called affine. It is not automatically proper time, because no metric has yet been supplied. If $s=s(\tau)$ is a regular reparametrization, the residual of this equation transforms as

$$\begin{align}
\frac{\mathrm d^2x^\rho}{\mathrm d\tau^2} +\Gamma^\rho{}_{\mu\nu}\frac{\mathrm dx^\mu}{\mathrm d\tau}\frac{\mathrm dx^\nu}{\mathrm d\tau} =(s')^2\left(\ddot x^\rho+\Gamma^\rho{}_{\mu\nu}\dot x^\mu\dot x^\nu\right)+s''\dot x^\rho. \tag{2.3}
\end{align}$$

For a regular autoparallel, the new parameter is affine precisely when $s''=0$, that is, $s=a\tau+b$ with $a\ne0$. More general reparametrizations produce a term proportional to the tangent. They preserve an unparametrized path, not its affine parametrization.

Suppose two connections differ by $A^\rho{}_{\mu\nu}$. Their parametrized autoparallel equations agree for every initial velocity $v$ exactly when

$$\begin{align}
A^\rho{}_{\mu\nu}v^\mu v^\nu=0\quad\text{for every }v. \tag{2.4}
\end{align}$$

Only the symmetric bilinear part contributes to this quadratic expression. Polarization makes the converse precise: for each output component, the difference between its value at $v+w$ and its values at $v,w$ is twice the symmetric bilinear form at $(v,w)$. Thus (2.4) is equivalent to $A^\rho{}_{(\mu\nu)}=0$. An arbitrary antisymmetric difference leaves these curves and their affine parameters unchanged, but can change the transport equation (2.1).

This is a statement about equality of parametrized path systems. It should not be confused with the usual notion of a flat affine structure, which requires torsion and curvature to vanish locally. Unparametrized path equivalence permits an additional symmetric projective change; that distinction belongs to projective geometry rather than to a new torsion gauge symmetry.

## 3. Torsion and a Canonical Torsion-Free Comparison

The geometric definition of torsion is

$$\begin{align}
T(X,Y)=\nabla_XY-\nabla_YX-[X,Y]. \tag{3.1}
\end{align}$$

The Lie bracket cancels derivatives of the coefficients of $X,Y$, making this operation tensorial. Coordinate vectors commute, so

$$\begin{align}
T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}. \tag{3.2}
\end{align}$$

Define a second connection by subtracting half this tensor:

$$\begin{align}
\nabla^S_XY=\nabla_XY-\tfrac12T(X,Y). \tag{3.3}
\end{align}$$

Its torsion vanishes, since antisymmetrizing the correction removes precisely $T$. Its coordinate coefficients are $\Gamma^{S\rho}{}_{\mu\nu}=\Gamma^\rho{}_{(\mu\nu)}$. Thus every connection has a canonical torsion-free connection with the same parametrized autoparallels.

If a metric is later added, $\nabla^S$ is not generally its Levi-Civita connection: removing torsion need not preserve metric compatibility. The contorsion construction for a metric-compatible connection solves a different problem and contains more than the simple tensor $T/2$.

The local coefficient count is

$$\begin{align}
n^3=\frac{n^2(n+1)}2+\frac{n^2(n-1)}2. \tag{3.4}
\end{align}$$

In four dimensions the symmetric and antisymmetric ranks are 40 and 24. These are pointwise ranks of the relevant data bundles. Their smooth sections contain arbitrary functions; they do not form a 40- or 24-dimensional space of global geometries.

For later contractions, fix the trace convention

$$\begin{align}
t_\mu=T^\rho{}_{\mu\rho}. \tag{3.5}
\end{align}$$

For $n>1$, its pure-trace part and trace-free remainder are

$$\begin{align}
T^\rho{}_{\mu\nu} =\frac1{n-1}\left(\delta^\rho_\nu t_\mu-\delta^\rho_\mu t_\nu\right) +\widehat T^\rho{}_{\mu\nu},\qquad \widehat T^\rho{}_{\mu\rho}=0. \tag{3.6}
\end{align}$$

Tracing verifies the coefficient $1/(n-1)$. In dimension four, the 24 torsion components split into four trace components and twenty trace-free components. This decomposition does not use a metric.

## 4. Curvature and the Two Meanings of a Commutator

Curvature compares successive covariant derivatives while correcting for the bracket of their directions:

$$\begin{align}
R(X,Y)V=\nabla_X\nabla_YV-\nabla_Y\nabla_XV-\nabla_{[X,Y]}V. \tag{4.1}
\end{align}$$

This is tensorial in all three entries. With $R(\partial_\mu,\partial_\nu)\partial_\sigma=R^\rho{}_{\sigma\mu\nu}\partial_\rho$,

$$\begin{align}
R^\rho{}_{\sigma\mu\nu}= \partial_\mu\Gamma^\rho{}_{\nu\sigma}-\partial_\nu\Gamma^\rho{}_{\mu\sigma} +\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma} -\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}. \tag{4.2}
\end{align}$$

In a coordinate basis, the operator commutator in (4.1) is just $R(\partial_\mu,\partial_\nu)V$, because $[\partial_\mu,\partial_\nu]=0$. There is a closely related expression with a different meaning: first form the tensor $\nabla V$, then differentiate that tensor. Its derivative-direction label is a lower index and must also receive a connection term. Explicitly,

$$\begin{align}
(\nabla_\mu\nabla_\nu V)^\rho =\partial_\mu(\nabla_\nu V^\rho) +\Gamma^\rho{}_{\mu\lambda}\nabla_\nu V^\lambda -\Gamma^\lambda{}_{\mu\nu}\nabla_\lambda V^\rho.
\end{align}$$

Antisymmetrizing now gives

$$\begin{align}
(\nabla_\mu\nabla_\nu V-\nabla_\nu\nabla_\mu V)^\rho =R^\rho{}_{\sigma\mu\nu}V^\sigma -T^\lambda{}_{\mu\nu}\nabla_\lambda V^\rho. \tag{4.3}
\end{align}$$

The final term comes exactly from the lower derivative label. On a scalar $f$, this tensor-Hessian convention gives

$$\begin{align}
\nabla_\mu\nabla_\nu f-\nabla_\nu\nabla_\mu f =-T^\lambda{}_{\mu\nu}\partial_\lambda f, \tag{4.4}
\end{align}$$

whereas the ordinary coordinate operators $\partial_\mu\partial_\nu$ commute. Stating which operation is meant avoids an otherwise apparent contradiction.

## 5. Exterior Differentiation, Divergence and Curvature Traces

The exterior derivative is independent of a connection. For a one-form,

$$\begin{align}
(\mathrm d\omega)_{\mu\nu}=\partial_\mu\omega_\nu-\partial_\nu\omega_\mu =2\nabla_{[\mu}\omega_{\nu]}+T^\lambda{}_{\mu\nu}\omega_\lambda. \tag{5.1}
\end{align}$$

Here brackets include the normalization factor, so $2\nabla_{[\mu}\omega_{\nu]}=\nabla_\mu\omega_\nu-\nabla_\nu\omega_\mu$. Equation (5.1) follows immediately by substituting (1.5). For a two-form $\alpha$,

$$\begin{align}
(\mathrm d\alpha)_{\mu\nu\rho} =\sum_{\mathrm{cyc}(\mu,\nu,\rho)} \left(\nabla_\mu\alpha_{\nu\rho}+T^\lambda{}_{\mu\nu}\alpha_{\lambda\rho}\right). \tag{5.2}
\end{align}$$

The torsion terms compensate for the extra connection pieces in antisymmetrized covariant differentiation. In particular, using $\nabla_\mu A_\nu-\nabla_\nu A_\mu$ as a gauge-field strength is not the same operation as using $F=\mathrm dA$ when torsion is present.

The two possible traces of a connection must also be distinguished. Put

$$\begin{align}
\gamma_\mu=\Gamma^\rho{}_{\mu\rho},\qquad \Gamma^\rho{}_{\rho\mu}=\gamma_\mu-t_\mu. \tag{5.3}
\end{align}$$

The first is the matrix trace of the connection in direction $\mu$. The second occurs in vector divergence:

$$\begin{align}
\nabla_\mu V^\mu=\partial_\mu V^\mu+(\gamma_\mu-t_\mu)V^\mu. \tag{5.4}
\end{align}$$

Neither a preferred volume element nor a metric has yet been chosen. If $\nabla g=0$, tracing the metric-compatibility equation gives $\gamma_\mu=\partial_\mu\log\sqrt{|g|}$. Consequently

$$\begin{align}
\nabla_\mu V^\mu =\frac1{\sqrt{|g|}}\partial_\mu\left(\sqrt{|g|}V^\mu\right)-t_\mu V^\mu. \tag{5.5}
\end{align}$$

The first term is the divergence associated with the metric volume form. It equals the Levi-Civita divergence, not generally the full torsionful divergence. This distinction determines the correct integration-by-parts formula in a matter action.

Two useful curvature contractions are

$$\begin{align}
\operatorname{Ric}_{\sigma\nu}=R^\rho{}_{\sigma\rho\nu},\qquad P_{\mu\nu}=R^\rho{}_{\rho\mu\nu}. \tag{5.6}
\end{align}$$

Taking the trace of (4.2) eliminates the matrix commutator, yielding

$$\begin{align}
P_{\mu\nu}=\partial_\mu\gamma_\nu-\partial_\nu\gamma_\mu=(\mathrm d\gamma)_{\mu\nu}. \tag{5.7}
\end{align}$$

Although the local one-form $\gamma$ changes under a change of frame, $P$ is the curvature of the induced determinant-line connection. For a metric-compatible connection, the local gradient expression above gives $P=0$. This does not imply that its full Ricci tensor is symmetric; the torsion identities below determine that issue.

## 6. Changing a Connection and Deriving the Bianchi Identities

For any tensor difference $A=\nabla'-\nabla$, introduce matrices $(A_\mu)^\rho{}_\sigma=A^\rho{}_{\mu\sigma}$. Direct expansion of (4.2) gives the invariant formula

$$
\begin{aligned}
R'^\rho{}_{\sigma\mu\nu}-R^\rho{}_{\sigma\mu\nu}
={}&\nabla_\mu A^\rho{}_{\nu\sigma}-\nabla_\nu A^\rho{}_{\mu\sigma}
+T^\lambda{}_{\mu\nu}A^\rho{}_{\lambda\sigma}\\
&+A^\rho{}_{\mu\lambda}A^\lambda{}_{\nu\sigma}
-A^\rho{}_{\nu\lambda}A^\lambda{}_{\mu\sigma}.
\end{aligned}
\tag{6.1}
$$

The plus sign of the torsion term follows from the declared convention. The full covariant derivative of $A^\rho{}_{\nu\sigma}$ contains $-\Gamma^\lambda{}_{\mu\nu}A^\rho{}_{\lambda\sigma}$. Its antisymmetrization therefore contains $-T^\lambda{}_{\mu\nu}A^\rho{}_{\lambda\sigma}$, which must be added back to recover the coordinate curvature expansion. If the baseline connection is torsion-free, this correction vanishes.

For the comparison connection in (3.3), let $\Theta=T/2$, so $\nabla=\nabla^S+\Theta$. Equation (6.1) gives

$$\begin{align}
R^\rho{}_{\sigma\mu\nu} =R^{S\rho}{}_{\sigma\mu\nu} +\nabla^S_\mu\Theta^\rho{}_{\nu\sigma}-\nabla^S_\nu\Theta^\rho{}_{\mu\sigma} +\Theta^\rho{}_{\mu\lambda}\Theta^\lambda{}_{\nu\sigma} -\Theta^\rho{}_{\nu\lambda}\Theta^\lambda{}_{\mu\sigma}. \tag{6.2}
\end{align}$$

This is a precise comparison of two connections. It is not a statement that the two curvature contributions are separately observable fields, nor that $\nabla^S$ is a metric connection.

The first Bianchi identity, including torsion, is

$$\begin{align}
\sum_{\mathrm{cyc}(X,Y,Z)}R(X,Y)Z =\sum_{\mathrm{cyc}(X,Y,Z)} \left((\nabla_XT)(Y,Z)+T(T(X,Y),Z)\right). \tag{6.3}
\end{align}$$

A compact derivation also explains its geometry. In a local frame with dual coframe $\theta^a$, write the connection one-forms as $\Gamma^a{}_b$. The torsion and curvature two-forms are

$$\begin{align}
T^a=\mathrm d\theta^a+\Gamma^a{}_b\wedge\theta^b,\qquad R^a{}_b=\mathrm d\Gamma^a{}_b+\Gamma^a{}_c\wedge\Gamma^c{}_b. \tag{6.4}
\end{align}$$

Apply $\mathrm d$ to the first expression and use $\mathrm d^2=0$. Adding $\Gamma^a{}_b\wedge T^b$ cancels the terms containing $\mathrm d\theta$, leaving

$$\begin{align}
DT^a=R^a{}_b\wedge\theta^b. \tag{6.5}
\end{align}$$

Expanding both sides on three vector fields gives (6.3); the covariant derivative of the vector-valued form and the tensor derivative of its lower indices differ by the displayed torsion terms. Likewise direct differentiation of the second expression in (6.4) gives the second Bianchi identity

$$\begin{align}
DR=\mathrm dR+\Gamma\wedge R-R\wedge\Gamma=0. \tag{6.6}
\end{align}$$

The cancellation is $\mathrm d\Gamma\wedge\Gamma-\Gamma\wedge\mathrm d\Gamma+\Gamma\wedge\mathrm d\Gamma+\Gamma^3-\mathrm d\Gamma\wedge\Gamma-\Gamma^3=0$.

For reference, contracting the first identity gives a particularly useful trace formula in the convention (3.5):

$$\begin{align}
P_{\mu\nu}-2\operatorname{Ric}_{[\mu\nu]} =\nabla_\rho T^\rho{}_{\mu\nu}+(\mathrm dt)_{\mu\nu}. \tag{6.7}
\end{align}$$

To follow the simplification, the derivative terms before grouping are $\nabla_\rho T^\rho{}_{\mu\nu}+\nabla_\mu t_\nu-\nabla_\nu t_\mu$. The two nontrace quadratic torsion contractions cancel after interchanging their summed indices. The remaining term is $t_\lambda T^\lambda{}_{\mu\nu}$, which combines with the last two derivatives according to (5.1) to make $\mathrm dt$. For torsion-free connections this reduces to $P=2\operatorname{Ric}_{[\mu\nu]}$; a torsion-free metric connection then has symmetric Ricci tensor.

## 7. Zero Curvature Gives Parallel Frames, Not Necessarily Coordinates

In a coordinate trivialization, write $(\Gamma_\mu)^\rho{}_\sigma=\Gamma^\rho{}_{\mu\sigma}$. Its matrix curvature is

$$\begin{align}
R_{\mu\nu}=\partial_\mu\Gamma_\nu-\partial_\nu\Gamma_\mu+[\Gamma_\mu,\Gamma_\nu]. \tag{7.1}
\end{align}$$

If an invertible matrix field $\Lambda$ satisfies

$$\begin{align}
\Gamma_\mu=\Lambda^{-1}\partial_\mu\Lambda, \tag{7.2}
\end{align}$$

then differentiating $\Lambda^{-1}\Lambda=I$ gives $\partial_\mu\Lambda^{-1}=-\Lambda^{-1}(\partial_\mu\Lambda)\Lambda^{-1}$. Substituting in (7.1), the two inverse-derivative terms cancel the commutator, so $R=0$.

Conversely, the first-order system $\partial_\mu\Lambda=\Lambda\Gamma_\mu$ has compatibility condition

$$\begin{align}
(\partial_\mu\partial_\nu-\partial_\nu\partial_\mu)\Lambda =\Lambda R_{\mu\nu}. \tag{7.3}
\end{align}$$

To identify the actual Frobenius problem, use coordinates $(x,\Lambda)$ on $U\times GL(n,\mathbb R)$ and define the horizontal fields

$$\begin{align}
H_\mu=\frac{\partial}{\partial x^\mu} +(\Lambda\Gamma_\mu)^a{}_b\frac{\partial}{\partial\Lambda^a{}_b}.
\end{align}$$

Differentiating their matrix coefficients gives

$$\begin{align}
[H_\mu,H_\nu]=(\Lambda R_{\mu\nu})^a{}_b\frac{\partial}{\partial\Lambda^a{}_b}.
\end{align}$$

When $R=0$, their span is involutive. Its projection to $TU$ sends $H_\mu$ to $\partial_\mu$ and is an isomorphism on each horizontal space. A Frobenius integral leaf through any invertible initial matrix is consequently locally the graph of a matrix field $\Lambda(x)$ satisfying (7.2).

The corresponding frame is not implicit: put $E=\Lambda^{-1}$ and $e_a=E^\rho{}_a\partial_\rho$. Then

$$\begin{align}
\partial_\mu E=-\Gamma_\mu E,\qquad \nabla_\mu e_a=0.
\end{align}$$

This constructs a parallel frame on a sufficiently small neighborhood, not a global trivialization on an arbitrary manifold.

If $e_a$ is such a parallel frame, $\nabla_{e_a}e_b=0$, so

$$\begin{align}
T(e_a,e_b)=-[e_a,e_b]. \tag{7.4}
\end{align}$$

The vectors need not commute. A coordinate frame does commute, and the converse local construction follows by integrating a commuting independent frame. Thus a connection admits coordinates with every coefficient zero on a neighborhood exactly when

$$\begin{align}
R=0\quad\text{and}\quad T=0 \tag{7.5}
\end{align}$$

there. Curvature-flatness alone is insufficient.

One can set the connection one-forms to zero in a parallel *frame* while retaining nonzero torsion. The dual coframe then has $T^a=\mathrm d\theta^a$. A frame change transforms the coframe as well as the connection. It does not turn a nonzero torsion tensor into zero. This is why a pure-gauge expression for the connection matrices is not a proof that torsion is a removable coordinate artifact.

Global holonomy is another issue. Even a trivial real line bundle over $S^1$ can have the flat connection $D=\mathrm d+c\,\mathrm d\theta$. The parallel-section equation has solution $s(\theta)=s(0)e^{-c\theta}$. After one turn, transport multiplies by $e^{-2\pi c}$. For real nonzero $c$ this is not one, so a nonzero local parallel section is not periodic. The local flatness theorem makes no assertion that this holonomy vanishes.

## 8. Two Worked Examples Separating Paths, Curvature and Torsion

Coordinates in these two examples are dimensionless mathematical coordinates. If a physical length scale $L$ is needed, multiply the metric in (8.7) by $L^2$; its Levi-Civita scalar is then $-2/L^2$. No causal interpretation is assigned to a coordinate before that metric is specified.

### 8.1 Straight Autoparallels with Nonzero Curvature

On $\mathbb R^4$, choose coordinates $(x^0,x^1,x^2,x^3)$ and set only

$$\begin{align}
\Gamma^1{}_{23}=x^0,\qquad \Gamma^1{}_{32}=-x^0 \tag{8.1}
\end{align}$$

to be nonzero. Because the lower pair is antisymmetric, the quadratic term in every autoparallel equation vanishes: all such curves are $x(s)=p+sv$. Nevertheless,

$$\begin{align}
T^1{}_{23}=2x^0,\qquad R^1{}_{3\,0\,2}=1. \tag{8.2}
\end{align}$$

For the curvature component, differentiate $\Gamma^1{}_{23}$ with respect to $x^0$ in (4.2). All relevant quadratic products vanish because each nonzero matrix has output row 1 but input column 2 or 3. Parallel transport is therefore curved even though the entire parametrized path system consists of straight lines.

### 8.2 Zero Curvature with Torsion and Curved Coordinate Paths

Now use coordinates $(t,x,y,z)$ and the coframe

$$\begin{align}
\theta^0=\mathrm dt,\quad \theta^1=\mathrm dx,\quad \theta^2=e^x\mathrm dy,\quad \theta^3=\mathrm dz. \tag{8.3}
\end{align}$$

Define the connection by making its dual frame parallel. Its only nonzero coordinate coefficient is

$$\begin{align}
\Gamma^y{}_{xy}=1. \tag{8.4}
\end{align}$$

Indeed, the coframe matrix is $\Lambda=\operatorname{diag}(1,1,e^x,1)$, so (7.2) gives precisely this coefficient. Its connection matrices have zero curvature, whereas

$$\begin{align}
T^y{}_{xy}=1,\qquad [e_1,e_2]=-e_2, \quad e_1=\partial_x,\quad e_2=e^{-x}\partial_y. \tag{8.5}
\end{align}$$

The torsion relation agrees with (7.4). The autoparallel equations are

$$\begin{align}
\ddot t=\ddot x=\ddot z=0,\qquad \ddot y+\dot x\dot y=0.
\end{align}$$

If $\dot x=v_x\ne0$ initially and $\dot y(0)=v_y$, the solution is

$$\begin{align}
x(s)=x_0+v_xs,\qquad y(s)=y_0+\frac{v_y}{v_x}(1-e^{-v_xs}). \tag{8.6}
\end{align}$$

It is not generally a straight coordinate line. As $v_x\to0$, the formula tends smoothly to $y_0+v_ys$.

The same frame supplies a compatible Lorentzian metric,

$$\begin{align}
g=-(\theta^0)^2+(\theta^1)^2+(\theta^2)^2+(\theta^3)^2 =-\mathrm dt^2+\mathrm dx^2+e^{2x}\mathrm dy^2+\mathrm dz^2. \tag{8.7}
\end{align}$$

Because the frame is parallel and its metric components are the constant matrix $\operatorname{diag}(-1,1,1,1)$, this connection is metric compatible. Its curvature is zero, but the Levi-Civita scalar curvature of this metric is $\bar R=-2$. These are two different connections on the same metric manifold. The example introduces neither a gravitational action nor an equivalence between their field equations.

## 9. Affine Symmetries and the Flat Model

A diffeomorphism is an affine symmetry of a connection if its pullback preserves that connection, not merely its autoparallel paths. Infinitesimally, a vector field $X$ is affine when $\mathcal L_X\nabla=0$. Expanding the natural definition on coordinate vectors gives

$$
\begin{aligned}
(\mathcal L_X\Gamma)^\rho{}_{\mu\nu}
={}&X^\lambda\partial_\lambda\Gamma^\rho{}_{\mu\nu}
-\Gamma^\lambda{}_{\mu\nu}\partial_\lambda X^\rho
+\Gamma^\rho{}_{\lambda\nu}\partial_\mu X^\lambda\\
&+\Gamma^\rho{}_{\mu\lambda}\partial_\nu X^\lambda
+\partial_\mu\partial_\nu X^\rho.
\end{aligned}
\tag{9.1}
$$

This Lie derivative is a tensor: it is the first variation of a family of connections. If it vanishes, naturality also preserves the torsion and curvature tensors. More explicitly, if $\Delta=\mathcal L_X\Gamma$, differentiating (6.1) at $A=s\Delta$ gives

$$\begin{align}
(\mathcal L_XR)^\rho{}_{\sigma\mu\nu} =\nabla_\mu\Delta^\rho{}_{\nu\sigma}-\nabla_\nu\Delta^\rho{}_{\mu\sigma} +T^\lambda{}_{\mu\nu}\Delta^\rho{}_{\lambda\sigma}. \tag{9.2}
\end{align}$$

For the standard connection $\Gamma=0$ on a connected coordinate domain, (9.1) becomes $\partial_\mu\partial_\nu X^\rho=0$. Its solutions are exactly

$$\begin{align}
X_{A,b}(x)=Ax+b, \tag{9.3}
\end{align}$$

with constant matrix $A$ and vector $b$. The dimension of this local symmetry algebra is $n^2+n$, hence 20 when $n=4$. These vector fields need not have complete flows on an arbitrarily restricted domain.

Using the vector-field bracket $[X,Y]=X^\mu\partial_\mu Y-Y^\mu\partial_\mu X$ gives

$$\begin{align}
[X_{A,b},X_{B,c}]=X_{BA-AB,\,Bb-Ac}. \tag{9.4}
\end{align}$$

The order $BA-AB$ is important. Our assignment from matrices to the displayed active-action vector fields is an antihomomorphism. It represents the usual affine Lie algebra with that sign convention.

The relation to projective geometry can be made explicit without introducing a metric. In homogeneous coordinates $(x,1)$, define

$$
M(A,b)=\begin{pmatrix}
A-\dfrac{\operatorname{tr}A}{n+1}I_n&b\\
0&-\dfrac{\operatorname{tr}A}{n+1}
\end{pmatrix}\in\mathfrak{sl}(n+1).
\tag{9.5}
$$

Projectivizing the linear transformation generated by this matrix gives $X_{A,b}$. The trace corrections cancel between numerator and denominator. These matrices stabilize the hyperplane at infinity and form the corresponding parabolic subalgebra. Its dimension is $n^2+n$; the full projective algebra has dimension $n^2+2n$. For $n=4$, these are 20 and 24. They are dimensions of these particular finite-dimensional flat-model symmetry algebras, not ranks to be equated with arbitrary connection fields.

## 10. Curvature Component Counts and Their Hypotheses

For an arbitrary linear connection, curvature at a point is an element of $\Lambda^2T^*M\otimes\operatorname{End}(TM)$ and has

$$\begin{align}
\frac{n^3(n-1)}2
\tag{10.1}
\end{align}$$

components before further algebraic conditions. In dimension four this is 96. A torsion-free connection satisfies the homogeneous cyclic identity $R^a{}_{bcd}+R^a{}_{cdb}+R^a{}_{dbc}=0$. Its independent alternation constraints have rank $n\binom n3$, leaving

$$\begin{align}
\frac{n^3(n-1)}2-n\binom n3 =\frac{n^2(n^2-1)}3, \tag{10.2}
\end{align}$$

which is 80 in four dimensions. The rank count follows because full alternation maps onto $TM\otimes\Lambda^3T^*M$, and every alternating tensor is itself a preimage up to the cyclic normalization.

With torsion, (6.3) is not a homogeneous algebraic condition on $R$ alone: it also contains derivatives and quadratic expressions in $T$. Fixing that additional data fixes an affine alternation block of $R$; it does not turn every torsionful curvature tensor into the 80-component torsion-free algebraic type.

A nondegenerate compatible metric adds antisymmetry of the first pair after lowering the output index. Without the torsion-free cyclic identity, the two skew pairs give $\binom n2^2$ components, hence 36 in four dimensions. For a torsion-free compatible connection, the cyclic identity also gives exchange symmetry of the two pairs and the usual algebraic Riemann-curvature space has dimension

$$\begin{align}
\frac{n^2(n^2-1)}{12}, \tag{10.3}
\end{align}$$

hence 20 in four dimensions. The distinct four-dimensional ranks are worth keeping together:

| Local data | Rank |
|---|---:|
| General connection difference | 64 |
| Torsion-free connection difference | 40 |
| Torsion tensor | 24 |
| General affine curvature | 96 |
| Torsion-free affine curvature | 80 |
| Metric-compatible curvature, without the torsion-free cyclic identity | 36 |
| Algebraic Levi-Civita curvature | 20 |

These are local algebraic counts. Differential integrability, gauge equivalence, topology and equations of motion are separate questions.

## 11. Using the Constructions Together

For a transport problem, first specify the actual connection and its action on the fields. If only trajectories are given, check whether their parameter is fixed; an antisymmetric connection difference cannot be recovered from the parametrized autoparallels. Compute torsion and curvature independently rather than inferring one from the shape of coordinate paths.

When forms or conservation laws enter the calculation, use exterior differentiation and the stated trace convention rather than silently identifying them with antisymmetrized covariant derivatives or full covariant divergence. When curvature vanishes, distinguish a local parallel frame from a coordinate frame and from a global frame with trivial holonomy. Finally, adding a metric is additional structure: it determines which connection is Levi-Civita, what timelike means, and which further curvature symmetries are available.

## Further Reading

S. Kobayashi and K. Nomizu, *Foundations of Differential Geometry*, Volume I, Interscience, 1963: connections, parallel transport, torsion, curvature and affine transformations.

J. M. Lee, *Introduction to Smooth Manifolds*, second edition, Springer, 2013: local flows, Frobenius, differential forms and frame constructions.

R. W. Sharpe, *Differential Geometry: Cartan's Generalization of Klein's Erlangen Program*, Springer, 1997: the relation between affine and projective model geometries.

These references supply broader theory. The local identities and examples used here are derived with their specific conventions in the chapter.
