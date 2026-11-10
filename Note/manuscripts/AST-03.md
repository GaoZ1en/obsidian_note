# Projective Geometry of Connections and Unparametrized Paths

**AST-03 — DRAFT study chapter**

## Abstract

An affine connection determines both parallel transport and a second-order equation for curves. Forgetting the parameter of those curves discards information: it removes a one-form from the symmetric connection coefficients, and it does not detect their antisymmetric part at all. This chapter proves that statement by polarization and derives the corresponding parameter equation. It then distinguishes coordinate projective symbols from tensorial curvature invariants. For torsion-free connections, the projective Schouten and Weyl tensors give a complete curvature decomposition, including the correction required when Ricci curvature is not symmetric. Local projective flatness is explained through a flat first-order system; in dimension two its obstruction is Cotton rather than Weyl curvature. Explicit examples distinguish straight paths from vanishing connection curvature. The flat model is completed by a derivation of its infinitesimal symmetries, their Lie brackets, and the difference between local projective transformations and globally defined affine transformations of an affine chart.

## 1. Connections Before Metrics

Let $M$ be a smooth $n$-manifold, with $n\geq2$. The formulas are given in dimension $n$ so that exceptional low-dimensional cases remain visible; the main application is $n=4$. Indices $a,b,c,\ldots$ range over all $n$ coordinate directions. They do not distinguish spatial from temporal directions. No metric, causal cone, time orientation, or field equation is assumed.

A linear connection assigns a vector field $\nabla_XY$ to vector fields $X,Y$, is linear over smooth functions in $X$, is $\mathbb R$-linear in $Y$, and satisfies the Leibniz rule

$$\begin{align}
\nabla_X(fY)=X(f)Y+f\nabla_XY.
\end{align}$$

In coordinates, the first lower connection index is the derivative slot:

$$\begin{align}
\nabla_b V^a=\partial_bV^a+\Gamma^a{}_{bc}V^c, \qquad \nabla_b\omega_c=\partial_b\omega_c-\Gamma^a{}_{bc}\omega_a. \tag{1.1}
\end{align}$$

Repeated upper/lower indices are contracted without introducing a metric. In particular one may contract an output with an input, but one may not raise a covector index or define a scalar curvature without additional structure.

The torsion is the tensor

$$\begin{align}
T(X,Y)=\nabla_XY-\nabla_YX-[X,Y],\qquad T^a{}_{bc}=\Gamma^a{}_{bc}-\Gamma^a{}_{cb}. \tag{1.2}
\end{align}$$

Here $[X,Y]$ is the ordinary vector-field bracket. A connection is torsion free if $T=0$. Coordinate vector fields commute, which gives the component formula above. A nonzero tensor $T$ cannot be made zero by changing coordinates or frames.

The curvature convention is

$$\begin{align}
R(X,Y)Z=\nabla_X\nabla_YZ-\nabla_Y\nabla_XZ-\nabla_{[X,Y]}Z,
\end{align}$$

$$
\begin{aligned}
 R^a{}_{bcd}
 &=\partial_c\Gamma^a{}_{db}-\partial_d\Gamma^a{}_{cb}
   +\Gamma^a{}_{ce}\Gamma^e{}_{db}
   -\Gamma^a{}_{de}\Gamma^e{}_{cb},\\
 \operatorname{Ric}_{bd}&=R^a{}_{bad},\qquad
 t_b=T^a{}_{ba},\qquad \gamma_b=\Gamma^a{}_{ba}.
 \end{aligned}
 \tag{1.3}
$$

Thus $R^a{}_{bcd}Z^b$ is the $a$-component of $R(\partial_c,\partial_d)Z$. The last two curvature slots are antisymmetric. The trace $t_b$ is a genuine one-form, whereas the coordinate trace $\gamma_b$ is not generally one. The other connection trace is

$$\begin{align}
\Gamma^a{}_{ab}=\gamma_b-t_b. \tag{1.4}
\end{align}$$

Keeping these traces distinct prevents torsion-sign errors.

The difference of two connections is a tensor: if $\widehat\nabla=\nabla+Q$, then $Q(X,Y)=\widehat\nabla_XY-\nabla_XY$ is bilinear over smooth functions in both arguments. Its components $Q^a{}_{bc}$ therefore transform without the inhomogeneous coordinate term of a connection. This difference tensor, rather than the coefficients of a single connection, is the right object for comparing paths.

## 2. Affine Parameters and Their Loss

### 2.1 The Curve Equation

A regular curve $x(t)$ is an affinely parametrized autoparallel if its velocity is parallel along itself:

$$\begin{align}
\nabla_{\dot x}\dot x=0, \qquad \ddot x^a+\Gamma^a{}_{bc}(x)\dot x^b\dot x^c=0. \tag{2.1}
\end{align}$$

Regular means $\dot x\ne0$. For a smooth connection, local existence and uniqueness follow from the ordinary first-order system for position and velocity. Every point and nonzero tangent vector consequently determines a local autoparallel.

Only the symmetric lower part of $\Gamma$ appears in (2.1), because $\Gamma^a{}_{[bc]}\dot x^b\dot x^c=0$. There is a globally defined torsion-free connection with these same coefficients:

$$\begin{align}
\nabla^0_XY=\nabla_XY-\frac12 T(X,Y), \qquad S^a{}_{bc}=\Gamma^a{}_{(bc)}. \tag{2.2}
\end{align}$$

Subtracting half the torsion is a change of connection, not a coordinate transformation. It preserves the affinely parametrized autoparallels but changes parallel transport and generally curvature. Thus the path equation alone cannot recover torsion.

Now let $t=t(s)$ with $q=dt/ds\ne0$. A direct differentiation gives

$$\begin{align}
\frac{dx^a}{ds}=q\dot x^a,\qquad \frac{d^2x^a}{ds^2}=q^2\ddot x^a+\frac{d^2t}{ds^2}\dot x^a.
\end{align}$$

The covariant acceleration transforms as

$$\begin{align}
\nabla_{dx/ds}\frac{dx}{ds} =q^2\nabla_{\dot x}\dot x+\frac{d^2t}{ds^2}\dot x. \tag{2.3}
\end{align}$$

Consequently two affine parameters for the same connection differ locally by $t=As+B$, with $A\ne0$. A general regular parameter instead satisfies an equation

$$\begin{align}
\nabla_{\dot x}\dot x=f(t)\dot x. \tag{2.4}
\end{align}$$

The acceleration is allowed to have a tangential component, which changes how quickly the curve is traversed rather than its image.

### 2.2 A One-Form Changes the Affine Clock

For a smooth one-form $\alpha$, define

$$\begin{align}
\widehat\nabla_XY=\nabla_XY+\alpha(X)Y+\alpha(Y)X, \qquad \widehat\Gamma^a{}_{bc}=\Gamma^a{}_{bc} +\delta^a_b\alpha_c+\delta^a_c\alpha_b. \tag{2.5}
\end{align}$$

The added term is symmetric, so this change preserves torsion. On a velocity $v$ its value is $2\alpha(v)v$. If $x(t)$ solves (2.1) for $\nabla$, it solves the affine equation for $\widehat\nabla$ in parameter $s$ precisely when

$$\begin{align}
\frac{d^2t}{ds^2} +2\alpha(\dot x(t))\left(\frac{dt}{ds}\right)^2=0. \tag{2.6}
\end{align}$$

This condition has local solutions with nonzero derivative. To exhibit them, set $a(t)=\alpha(\dot x(t))$ and regard $q=dt/ds$ as a function of $t$. Then

$$\begin{align}
\frac{dq}{dt}=-2a(t)q,\qquad q(t)=C\exp\left(-2\int_{t_0}^{t}a(u)\,du\right),
\end{align}$$

$$\begin{align}
s-s_0=C^{-1}\int_{t_0}^{t} \exp\left(2\int_{t_0}^{v}a(u)\,du\right)dv, \qquad C\ne0. \tag{2.7}
\end{align}$$

The exponential is positive, so this is locally invertible. No exactness or closedness assumption on $\alpha$ is needed: only its restriction to the curve enters this ordinary differential equation.

For example, in a chart with a zero connection take $\alpha=k\,dx^1$ and the straight curve $x(t)=p+vt$. Then $a(t)=kv^1=:h$ is constant. With $dt/ds=C$ at $s_0$, the new affine parameter obeys

$$\begin{align}
t-t_0=\frac1{2h}\log\big(1+2hC(s-s_0)\big) \tag{2.8}
\end{align}$$

on an interval with positive logarithm argument, if $h\ne0$; when $h=0$ it is $t-t_0=C(s-s_0)$. The paths remain straight, but their affine clocks have changed.

## 3. Exactly Which Changes Preserve the Paths?

### 3.1 The Polarization Argument

Suppose two connections have the same unparametrized regular autoparallels. For every nonzero initial velocity $v$, their acceleration difference must be tangent to that velocity. Since every such velocity is realized by a local solution, their difference satisfies

$$\begin{align}
Q(v,v)\in\mathbb R v. \tag{3.1}
\end{align}$$

Let $B(u,v)=\tfrac12(Q(u,v)+Q(v,u))$. The antisymmetric part does not enter this condition. We now determine $B$ without assuming that its proportionality factor in (3.1) is a linear function.

At one point choose a basis $e_1,\ldots,e_n$. Write $B(e_i,e_i)=k_i e_i$. For $i\ne j$, evaluating at $e_i+e_j$ shows that $B(e_i,e_j)$ has no component outside the plane spanned by $e_i,e_j$. Set $B(e_i,e_j)=a_{ij}e_i+b_{ij}e_j$. For every real $z$, the vector

$$\begin{align}
B(e_i+ze_j,e_i+ze_j) =(k_i+2za_{ij})e_i+(2zb_{ij}+z^2k_j)e_j
\end{align}$$

is proportional to $e_i+ze_j$. Comparing its two coefficients gives the polynomial identity

$$\begin{align}
2zb_{ij}+z^2k_j=z(k_i+2za_{ij}).
\end{align}$$

Therefore $b_{ij}=k_i/2$ and $a_{ij}=k_j/2$. Define $\alpha(e_i)=k_i/2$. Bilinearity now proves, for arbitrary $u,v$,

$$\begin{align}
B(u,v)=\alpha(u)v+\alpha(v)u. \tag{3.2}
\end{align}$$

This also shows uniqueness. In components the one-form is recovered without a chosen basis by

$$\begin{align}
\alpha_b=\frac1{n+1}B^a{}_{ba}. \tag{3.3}
\end{align}$$

Because $B$ is a smooth tensor, this trace gives a smooth global one-form.

We have proved the path-equivalence criterion

$$\begin{align}
\boxed{\quad \widehat\Gamma^a{}_{bc}-\Gamma^a{}_{bc} =\delta^a_b\alpha_c+\delta^a_c\alpha_b+A^a{}_{bc}, \qquad A^a{}_{bc}=-A^a{}_{cb}. \quad} \tag{3.4}
\end{align}$$

Conversely, an antisymmetric $A$ contributes zero to the curve equation, while the symmetric contribution is absorbed by (2.6). Thus (3.4) is sufficient as well as necessary. The decomposition is unique, and the torsion changes by $\widehat T=T+2A$.

If the *same affine parameters* are to be retained for all curves, (3.1) is strengthened to $Q(v,v)=0$. Polarization then gives $B=0$, while $A$ remains unrestricted. If torsion is separately required to remain fixed, $A=0$ and only the one-form term survives in the unparametrized comparison.

### 3.2 What Is Meant by a Projective Structure?

The standard projective structure is an equivalence class of **torsion-free** connections under (2.5); equivalently it is the unparametrized autoparallel system of a torsion-free connection. An arbitrary torsionful connection determines such a structure through its torsion-free connection (2.2). Its torsion is additional data, invisible to those paths.

One can also consider the smaller equivalence class of a torsionful connection under the symmetric changes (2.5). It retains a specified torsion tensor. It should not be confused with the full equivalence class of connections sharing its unparametrized curves, which permits the independent $A$ in (3.4). None of these equivalence relations says that a nonzero torsion tensor is a gauge artifact of a frame choice.

There are $n$ pointwise components of $\alpha$ and $n\binom n2$ of $A$, giving $4+24=28$ invisible components in dimension four. These are **fibre ranks**: on an open set, $\alpha$ and $A$ are arbitrary smooth fields. Their spaces of sections are infinite dimensional over $\mathbb R$, not 28-dimensional vector spaces of global connection changes.

## 4. Projective Symbols and the Density Trace

### 4.1 Removing the Symmetric Trace in One Chart

For the torsion-free coefficients $S^a{}_{bc}$ define

$$\begin{align}
s_b=S^a{}_{ba}=\gamma_b-\frac12t_b, \qquad \Pi^a{}_{bc}=S^a{}_{bc} -\frac1{n+1}(\delta^a_b s_c+\delta^a_c s_b). \tag{4.1}
\end{align}$$

Then $\Pi^a{}_{ba}=0$. A projective change gives $\widehat s_b=s_b+(n+1)\alpha_b$, so $\widehat\Pi=\Pi$ **in the same coordinate system**. This is useful: the trace-free coefficients encode the unparametrized paths without a representative's trace. The coefficients are often called Thomas projective symbols. They are not an ordinary tensor or the coefficients of an ordinary connection on $TM$.

To see the distinction explicitly, let $y^i=y^i(x)$, set $J^i_a=\partial y^i/\partial x^a$ and $K^a_j=\partial x^a/\partial y^j$. A connection transforms by

$$\begin{align}
S_y^i{}_{jk}=J^i_aK^b_jK^c_k S_x^a{}_{bc} +J^i_a\frac{\partial^2x^a}{\partial y^j\partial y^k}. \tag{4.2}
\end{align}$$

Tracing the output and vector slots gives

$$\begin{align}
(s_y)_j=K^b_j(s_x)_b+\partial_{y^j}\log|\det K|.
\end{align}$$

Thus the actual projective-symbol law is

$$
\begin{aligned}
 \Pi_y^i{}_{jk}
 &=J^i_aK^b_jK^c_k\Pi_x^a{}_{bc}
   +J^i_a\frac{\partial^2x^a}{\partial y^j\partial y^k}\\
 &\quad-\frac1{n+1}\left(
   \delta^i_j\partial_{y^k}\log|\det K|
  +\delta^i_k\partial_{y^j}\log|\det K|\right).
 \end{aligned}
 \tag{4.3}
$$

The last line prevents an ordinary connection law; the Hessian terms prevent a tensor law. Projective invariance under changing the representative and covariance under changing coordinates are different properties.

For a concrete test, start with $S_x=0$ and change coordinates by $y^1=e^{x^1}$, $y^i=x^i$ for $i>1$. On $y^1>0$ the transformed connection has only $(S_y)^1{}_{11}=-1/y^1$ nonzero. Equation (4.1) gives

$$\begin{align}
(\Pi_y)^1{}_{11}=-\frac{n-1}{(n+1)y^1},\qquad (\Pi_y)^i{}_{1i}=(\Pi_y)^i{}_{i1} =\frac1{(n+1)y^1}\quad(i>1). \tag{4.4}
\end{align}$$

A tensor that is zero in the $x$ coordinates would still be zero in the $y$ coordinates. These nonzero values directly rule out that interpretation. For the same reason, applying an ordinary connection-curvature formula to $\Pi$ without its special transformation law does not automatically produce a tensor.

### 4.2 A Density Choice Produces a Genuine Representative

The full connection induces a connection on the real density line bundle. In a coordinate density $|dx^1\wedge\cdots\wedge dx^n|$, a section $\rho=r(x)|dx|$ satisfies

$$\begin{align}
\nabla_b\rho=(\partial_b r-\gamma_b r)|dx|. \tag{4.5}
\end{align}$$

The relevant trace is $\gamma_b=\Gamma^a{}_{ba}$ even when torsion is present. Under (2.5),

$$\begin{align}
\widehat\gamma_b=\gamma_b+(n+1)\alpha_b. \tag{4.6}
\end{align}$$

The trace of curvature is a genuine two-form,

$$\begin{align}
\Omega_{cd}:=R^a{}_{acd} =\partial_c\gamma_d-\partial_d\gamma_c. \tag{4.7}
\end{align}$$

Indeed, writing $(\Gamma_c)^a{}_b=\Gamma^a{}_{cb}$, the quadratic contribution is the trace of $[\Gamma_c,\Gamma_d]$, which is zero. Although $\gamma$ is only a coordinate connection form, its exterior derivative transforms tensorially. Equation (4.6) gives $\widehat\Omega=\Omega+(n+1)d\alpha$.

Choose an actual positive smooth density $\rho$. Writing $\nabla\rho=\eta\otimes\rho$ defines a genuine one-form $\eta$. There is a unique connection in the symmetric projective class that preserves this chosen density: take
$\alpha=\eta/(n+1)$. It transforms correctly between charts because the density is held fixed. Locally, if one chooses $\rho=|dx|$, its coefficients are obtained by subtracting the $\gamma$ trace. Choosing $|dy|$ in another chart is generally choosing a *different* density; that is why the coordinate normalization (4.3) is not an ordinary global connection.

Nor does tensoring $TM$ with a density power by itself make its induced connection projectively invariant. For $V^b$ of density weight $w$, the induced derivative includes $-w\gamma_aV^b$. Under (2.5) its change is

$$\begin{align}
(\widehat\nabla_a-\nabla_a)V^b =\big(1-w(n+1)\big)\alpha_aV^b +\delta^b_a\alpha_cV^c. \tag{4.8}
\end{align}$$

Choosing $w=1/(n+1)$ removes the first term but not the second. An invariant connection on a larger projective bundle requires further construction, such as a tractor or Cartan connection; it is not established by the trace cancellation alone.

## 5. Curvature Under a Projective Change

### 5.1 Keeping Torsion Visible

We first allow arbitrary torsion and use only the symmetric change (2.5). Define

$$\begin{align}
F_{cd}=(d\alpha)_{cd}=\partial_c\alpha_d-\partial_d\alpha_c, \qquad \Phi_{cb}=\nabla_c\alpha_b-\alpha_c\alpha_b. \tag{5.1}
\end{align}$$

The antisymmetric part of a covector derivative contains torsion:

$$\begin{align}
\Phi_{cd}-\Phi_{dc}=F_{cd}-T^e{}_{cd}\alpha_e. \tag{5.2}
\end{align}$$

This follows directly from (1.1); the quadratic term is symmetric. It also fixes the sign in the curvature transformation.

For completeness, set $C(X,Y)=\alpha(X)Y+\alpha(Y)X$. Expanding the definition of $\widehat R$ gives the tensor identity

$$
\begin{aligned}
 (\widehat R-R)(X,Y)Z
 &=(\nabla_XC)(Y,Z)-(\nabla_YC)(X,Z)\\
 &\quad+C(X,C(Y,Z))-C(Y,C(X,Z))+C(T(X,Y),Z).
 \end{aligned}
 \tag{5.3}
$$

The last term is necessary when $T\ne0$: replacing $\nabla_XY-\nabla_YX$ by $[X,Y]$ would have discarded it. The derivative terms are

$$\begin{align}
(\nabla_X\alpha)(Y)Z+(\nabla_X\alpha)(Z)Y -(\nabla_Y\alpha)(X)Z-(\nabla_Y\alpha)(Z)X.
\end{align}$$

The two quadratic terms combine to $-\alpha(X)\alpha(Z)Y+\alpha(Y)\alpha(Z)X$. In $C(T(X,Y),Z)$, the part $\alpha(T(X,Y))Z$ combines with the skew derivative of $\alpha$ to form $d\alpha(X,Y)Z$. The remaining part is $\alpha(Z)T(X,Y)$. Therefore

$$\begin{align}
\boxed{\quad \widehat R^a{}_{bcd}-R^a{}_{bcd} =\delta^a_b F_{cd}+\alpha_bT^a{}_{cd} +\delta^a_d\Phi_{cb}-\delta^a_c\Phi_{db}. \quad} \tag{5.4}
\end{align}$$

Contracting the output with the first curvature direction, and using the trace convention $t_d=T^a{}_{da}$, gives

$$\begin{align}
\widehat{\operatorname{Ric}}_{bd}-\operatorname{Ric}_{bd} =F_{bd}-\alpha_b t_d-(n-1)\Phi_{db}. \tag{5.5}
\end{align}$$

In particular the torsion term in (5.4) is positive with the derivative-first convention (1.1), while its Ricci contraction in (5.5) is negative with the stated $t$. Neither sign is changed by a metric signature, since no metric has entered.

### 5.2 From Now on: the Torsion-Free Projective Structure

The standard projective Weyl tensor concerns the torsion-free class of Section 3. We now use a torsion-free representative and its curvature. If one started with a torsionful connection, this means first passing to $\nabla^0$; its curvature is generally not the curvature of the original connection.

For a torsion-free representative, (5.2) becomes $2\Phi_{[cd]}=F_{cd}$, and (5.5) implies

$$
\begin{aligned}
 \widehat{\operatorname{Ric}}_{(bd)}-\operatorname{Ric}_{(bd)}
   &=-(n-1)\Phi_{(bd)},\\
 \widehat{\operatorname{Ric}}_{[bd]}-\operatorname{Ric}_{[bd]}
   &=\frac{n+1}{2}F_{bd}.
 \end{aligned}
 \tag{5.6}
$$

Ricci curvature need not be symmetric for a torsion-free affine connection. The algebraic Bianchi identity is instead

$$\begin{align}
R^a{}_{bcd}+R^a{}_{cdb}+R^a{}_{dbc}=0. \tag{5.7}
\end{align}$$

Contracting its output with the first input gives

$$\begin{align}
\Omega_{cd}=2\operatorname{Ric}_{[cd]}. \tag{5.8}
\end{align}$$

For example, in the contraction of (5.7) the other two terms are $-\operatorname{Ric}_{cd}$ and $\operatorname{Ric}_{dc}$, which fixes the sign. A torsion-free connection preserving a density has $\Omega=0$ and hence symmetric Ricci tensor. Conversely $\Omega=0$ makes the density connection flat; a parallel density exists locally, though a global parallel density additionally requires trivial line-bundle holonomy.

## 6. The Tensorial Projective Curvature

### 6.1 Schouten Decomposition with Nonsymmetric Ricci

For a torsion-free connection and $n\geq2$, define the projective Schouten tensor

$$\begin{align}
P_{cb}=\frac1{n-1}\operatorname{Ric}_{(cb)} -\frac1{n+1}\operatorname{Ric}_{[cb]}. \tag{6.1}
\end{align}$$

The order of its slots matters when Ricci is not symmetric. The projective Weyl tensor is

$$\begin{align}
\boxed{\quad W^a{}_{bcd}=R^a{}_{bcd} -\delta^a_cP_{db}+\delta^a_dP_{cb} +2\delta^a_bP_{[cd]}.\quad} \tag{6.2}
\end{align}$$

Equivalently,

$$\begin{align}
R^a{}_{bcd}=W^a{}_{bcd} +\delta^a_cP_{db}-\delta^a_dP_{cb} -2\delta^a_bP_{[cd]}. \tag{6.3}
\end{align}$$

These formulas do not assume a metric or the pair-exchange symmetry of metric Riemann curvature. They use the affine-curvature antisymmetry and the torsion-free Bianchi identity (5.7).

Contracting the trace terms in (6.3) gives

$$\begin{align}
\operatorname{Ric}_{bd}=(n-1)P_{db}-2P_{[bd]} =(n-1)P_{(bd)}-(n+1)P_{[bd]}. \tag{6.4}
\end{align}$$

Solving its two symmetry parts gives exactly (6.1), and therefore $W^a{}_{bad}=0$. The other distinct trace is

$$\begin{align}
W^a{}_{acd}=\Omega_{cd}+2(n+1)P_{[cd]}=0
\end{align}$$

by (5.8). Contraction with the final slot follows from antisymmetry. The trace part in (6.3) also obeys the cyclic identity: the three cyclic copies of each $\delta^a_bP_{cd}$ term cancel with their partners. Thus $W$ obeys that identity and is completely trace free in its available upper/lower contractions.

The transformation (5.6) yields

$$\begin{align}
\widehat P_{cb}=P_{cb}-\Phi_{cb}. \tag{6.5}
\end{align}$$

The corresponding change of the trace part in (6.3) is

$$\begin{align}
-\delta^a_c\Phi_{db}+\delta^a_d\Phi_{cb} +2\delta^a_b\Phi_{[cd]} =-\delta^a_c\Phi_{db}+\delta^a_d\Phi_{cb}+\delta^a_bF_{cd}.
\end{align}$$

It equals the torsion-free change of $R$ in (5.4). Subtracting proves

$$\begin{align}
\widehat W^a{}_{bcd}=W^a{}_{bcd} \tag{6.6}
\end{align}$$

for every smooth one-form $\alpha$, not just closed forms. This is both a tensorial construction and a projectively invariant one, unlike the coordinate symbols $\Pi$. For standard background and the symmetric-Ricci specialization, see Eastwood and Matveev [1].

When Ricci is symmetric, $P=\operatorname{Ric}/(n-1)$ and the formula simplifies to

$$\begin{align}
W^a{}_{bcd}=R^a{}_{bcd} -\frac1{n-1}\big(\delta^a_c\operatorname{Ric}_{bd} -\delta^a_d\operatorname{Ric}_{bc}\big). \tag{6.7}
\end{align}$$

An arbitrary projective change can destroy Ricci symmetry, so this abbreviation cannot then replace (6.2). If two torsion-free representatives both have symmetric Ricci, their relating one-form is closed by (5.6). Locally it is exact; globally closed and exact still differ.

### 6.2 A Representative with Nonsymmetric Ricci

Start with the zero connection on a domain of $\mathbb R^n$ and choose $\alpha=x^1dx^2$. At the origin $\alpha=0$, $\Phi_{12}=1$, $\Phi_{21}=0$, and $F_{12}=1$. Thus

$$\begin{align}
\operatorname{Ric}_{12}=1,\qquad \operatorname{Ric}_{21}=-n, \qquad P_{12}=-1,\quad P_{21}=0. \tag{6.8}
\end{align}$$

The full $W$ vanishes because this is a representative of the flat class. For example, $R^1{}_{112}=1$ is canceled in (6.2) by $2P_{[12]}=-1$. The abbreviated expression (6.7), used outside its symmetric-Ricci hypothesis, would give $1-1/(n-1)$ for that component, which is $2/3$ in dimension four. The antisymmetric-Ricci correction in (6.2) is essential.

### 6.3 Cotton Curvature

Define

$$\begin{align}
C_{cdb}=\nabla_cP_{db}-\nabla_dP_{cb}. \tag{6.9}
\end{align}$$

It is antisymmetric in $c,d$ and has zero cyclic sum. Indeed that sum is the exterior derivative of the antisymmetric part of $P$, up to normalization; $P_{[cd]}=-\Omega_{cd}/(2(n+1))$ is closed by (4.7). Its representative-change law is

$$\begin{align}
\widehat C_{cdb}=C_{cdb}+\alpha_aW^a{}_{bcd}. \tag{6.10}
\end{align}$$

The sign can be checked without an index-convention shortcut. For any covariant two-tensor $H$,

$$\begin{align}
\widehat\nabla_cH_{db}=\nabla_cH_{db}-2\alpha_cH_{db} -\alpha_dH_{cb}-\alpha_bH_{dc}.
\end{align}$$

Apply this to $H=\widehat P=P-\Phi$. The differentiated correction satisfies

$$\begin{align}
\nabla_c\Phi_{db}-\nabla_d\Phi_{cb} =-R^a{}_{bcd}\alpha_a-F_{cd}\alpha_b -\alpha_d\nabla_c\alpha_b+\alpha_c\nabla_d\alpha_b.
\end{align}$$

Here the covector commutator gives $-R\alpha$. The last two terms cancel their counterparts from $\widehat\nabla-\nabla$, and the $F\alpha$ terms cancel using $\Phi_{dc}-\Phi_{cd}=-F_{cd}$. What remains is

$$\begin{align}
\alpha_aR^a{}_{bcd}-\alpha_cP_{db} +\alpha_dP_{cb}+2\alpha_bP_{[cd]} =\alpha_aW^a{}_{bcd},
\end{align}$$

which proves (6.10).

In dimension two, $W$ vanishes identically from its algebraic symmetries and trace conditions; Section 8 supplies the dimension calculation. Thus Cotton is a projective invariant on surfaces. In higher dimensions Cotton need not be invariant by itself, but it is invariant on a Weyl-flat class.

## 7. Projective Flatness Versus Affine Flatness

### 7.1 Straight Paths with Nonzero Curvature

A torsion-free projective structure is locally projectively flat if every point has a neighborhood with coordinates making all its unparametrized autoparallels straight. By (3.4), this is equivalent to having a zero-coefficient torsion-free representative on that neighborhood. Every other representative has, in those coordinates,

$$\begin{align}
\Gamma^a{}_{bc}=\delta^a_b\alpha_c+\delta^a_c\alpha_b. \tag{7.1}
\end{align}$$

A torsionful connection with the same paths additionally permits the arbitrary antisymmetric $A$ of (3.4).

Take a constant $\alpha=k\,dx^1$ in (7.1). Although its ordinary derivatives vanish, its curvature is

$$\begin{align}
R^a{}_{bcd}=\delta^a_c\alpha_d\alpha_b -\delta^a_d\alpha_c\alpha_b, \qquad \operatorname{Ric}_{bd}=(n-1)\alpha_b\alpha_d. \tag{7.2}
\end{align}$$

For example $R^2{}_{112}=-k^2$. This follows also by taking the commutator of constant matrices $\Gamma_c=\alpha_cI+e_c\alpha^{\mathsf T}$. The paths are straight and $W=0$, but this representative is not curvature flat. Its changed affine parameters were computed in (2.8).

A different example retains even the affine parameters. Let

$$\begin{align}
\Gamma^1{}_{12}=k,\qquad \Gamma^1{}_{21}=-k, \qquad\text{all other coefficients zero}. \tag{7.3}
\end{align}$$

Its symmetric part is zero, hence its affine equation is $\ddot x=0$. Nevertheless $T^1{}_{12}=2k$ and $R^1{}_{212}=k^2$. The only nonzero derivative matrices have $(\Gamma_1)^1{}_2=k$ and $(\Gamma_2)^1{}_1=-k$; their commutator has entry $(1,2)$ equal to $k^2$. Straight affinely parametrized curves therefore do not determine torsion, parallel transport, or curvature.

### 7.2 Constructing Straight-Path Coordinates

For $n\geq3$, local projective flatness is equivalent to $W=0$. For $n=2$, the condition is $C=0$. The local construction makes the hypotheses and the dimension exception explicit.

Choose a local density and its preserving torsion-free representative as in Section 4. Then $P$ is symmetric. The contracted differential Bianchi identity yields

$$\begin{align}
\nabla_aW^a{}_{bcd}=(n-2)C_{cdb}. \tag{7.4}
\end{align}$$

Indeed, the contracted identity is $\nabla_aR^a{}_{bcd}=\nabla_c\operatorname{Ric}_{bd}-\nabla_d\operatorname{Ric}_{bc}$. Inserting (6.3), its left trace part contributes $C_{cdb}$ and its right side is $(n-1)C_{cdb}$, giving the stated factor. Thus $W=0$ also forces $C=0$ when $n\geq3$.

In this chosen representative define a connection on the rank-$(n+1)$ bundle $\mathbb R\oplus T^*M$ by

$$\begin{align}
D_c\binom{u}{\mu_b} =\binom{\partial_cu-\mu_c}{\nabla_c\mu_b+P_{cb}u}. \tag{7.5}
\end{align}$$

The trivial line here belongs to the chosen density splitting; this formula is not an assertion of an invariant unweighted connection under all choices. Commuting its derivatives gives

$$\begin{align}
(D_cD_d-D_dD_c)\binom{u}{\mu_b} =\binom{0}{uC_{cdb}-W^a{}_{bcd}\mu_a}. \tag{7.6}
\end{align}$$

Symmetry of $P$ kills the upper component. In the lower component the $P\,\partial u$ terms cancel; the remaining trace-curvature terms cancel the $P\mu$ terms by (6.3), leaving exactly the displayed $C$ and $W$. Therefore $W=C=0$ makes $D$ flat.

A flat linear connection has a parallel section with any prescribed value on a sufficiently small simply connected neighborhood. This is the local integrability theorem for its first-order linear system: vanishing curvature is the compatibility condition, and parallel transport is locally path independent. Choose an initial value with $u\ne0$, and shrink the neighborhood so $u$ never vanishes. A parallel section then satisfies

$$\begin{align}
\mu_b=\partial_bu,\qquad \nabla_c\partial_bu=-P_{cb}u.
\end{align}$$

For $\alpha_b=-\partial_bu/u$, one obtains

$$\begin{align}
\Phi_{cb}=-\frac{\nabla_c\partial_bu}{u}=P_{cb}.
\end{align}$$

Hence $\widehat P=0$ by (6.5), and $\widehat R=0$ by (6.3). The transformed connection is still torsion free. Its local parallel frame commutes, since $[E_i,E_j]=\widehat\nabla_{E_i}E_j-\widehat\nabla_{E_j}E_i=0$. The commuting-frame form of the Frobenius theorem supplies coordinates in which the frame is coordinate and $\widehat\Gamma=0$. These give straight paths.

Conversely a zero representative has $W=C=0$, and (6.6),(6.10) preserve these vanishings. In dimension two $W$ is already identically zero, so Cotton is the remaining condition. This proof constructs local charts only; it does not give a global affine parameter, a single global chart, or geodesic completeness.

### 7.3 A Surface with Zero Weyl but Nonzero Cotton

On $\mathbb R^2$ take the torsion-free connection whose only nonzero coefficient is

$$\begin{align}
\Gamma^1{}_{22}=f(x^1). \tag{7.7}
\end{align}$$

Differentiating its only nonconstant connection matrix gives $R^1{}_{212}=f'$. The only nonzero Ricci and Schouten component is $\operatorname{Ric}_{22}=P_{22}=f'$. As $\Gamma_1=0$ and the connection terms in $\nabla_2P_{12}$ vanish,

$$\begin{align}
C_{122}=\nabla_1P_{22}-\nabla_2P_{12}=f''(x^1). \tag{7.8}
\end{align}$$

With $f=(x^1)^2$, this is $2$, so there are no local straight-path charts. The identity $W=0$ on surfaces alone would have detected nothing.

### 7.4 Ordinary Affine Structures and Global Issues

An ordinary flat affine structure is an atlas with affine transition maps $y=Ax+b$. It corresponds to a torsion-free curvature-flat connection: the affine charts have zero coefficients, and the connection transformation between two zero-coefficient charts forces its coordinate Hessian to vanish. This is not a synonym for two connections being equivalent by a path relation.

A torsion-free flat connection may still have global affine holonomy. For example the standard connection on a torus is zero in local angular affine charts, but the compact torus cannot be one global open coordinate domain of $\mathbb R^n$. If curvature vanishes but torsion does not, parallel frames need not commute, so zero coefficients in a parallel frame do not imply zero coefficients in a coordinate frame. Neither issue is settled by projective flatness.

## 8. Fibre Ranks and Spaces of Smooth Sections

Connection differences have rank $n^3$. Their symmetric and antisymmetric lower parts have ranks

$$\begin{align}
\dim(TM\otimes S^2T^*M)=\frac{n^2(n+1)}2,\qquad \dim(TM\otimes\Lambda^2T^*M)=\frac{n^2(n-1)}2. \tag{8.1}
\end{align}$$

The symmetric projective changes form an injective rank-$n$ subspace by (3.3). The quotient therefore has $n(n-1)(n+2)/2$ components, which is $36$ in dimension four. These are ranks of pointwise spaces, not finite-dimensional moduli of all connections.

The torsion trace has the splitting

$$\begin{align}
T^a{}_{bc}=T_0^a{}_{bc} +\frac1{n-1}(\delta^a_c t_b-\delta^a_b t_c), \qquad T_0^a{}_{ba}=0. \tag{8.2}
\end{align}$$

Taking the trace checks both the factor and the sign. The trace-free part has rank $n^2(n-1)/2-n$.

Unrestricted affine curvature, with only its last-slot antisymmetry imposed, has rank $n^2\binom n2$. Its first Bianchi identity includes derivatives and quadratic expressions in torsion; the homogeneous torsion-free cyclic constraint is not valid throughout this bundle. For torsion-free curvature, the cyclic constraint removes a completely antisymmetric lower-three-slot part. For each output this map onto $\Lambda^3T^*$ is surjective, since the cyclic sum of a fully antisymmetric tensor is three times that tensor. Hence

$$\begin{align}
\dim R_{\mathrm{torsion\ free}} =n^2\binom n2-n\binom n3 =\frac{n^2(n^2-1)}3. \tag{8.3}
\end{align}$$

Ricci contraction is onto arbitrary covariant two-tensors: given Ricci, formula (6.1) produces $P$, and the trace part of (6.3) is a cyclic curvature with precisely that Ricci contraction. Its kernel therefore has rank

$$\begin{align}
\dim W=\frac{n^2(n^2-1)}3-n^2 =\frac{n^2(n^2-4)}3. \tag{8.4}
\end{align}$$

A Cotton-type tensor has antisymmetric first two slots and zero cyclic sum, giving

$$\begin{align}
\dim C_{\mathrm{type}}=n\binom n2-\binom n3 =\frac{n(n^2-1)}3. \tag{8.5}
\end{align}$$

These are algebraic types; differential Bianchi identities continue to constrain jets of actual curvature fields.

| $n$ | General affine curvature | Torsion-free curvature | Weyl | Cotton type | Torsion | Trace-free torsion |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | 4 | 4 | 0 | 2 | 2 | 0 |
| 3 | 27 | 24 | 15 | 8 | 9 | 6 |
| 4 | 96 | 80 | 64 | 20 | 24 | 20 |

Coincidence between one of these ranks and a symmetry-algebra dimension is only equality of integers, not a canonical identification of geometric data. Smooth sections of each positive-rank bundle are infinite dimensional on any nonempty positive-dimensional manifold: multiply a local nonzero section by infinitely many independent smooth functions supported in its coordinate domain.

## 9. The Flat Projective Symmetry Algebra

### 9.1 Finite Transformations

Real projective space $\mathbb{RP}^n$ is the set of nonzero $z\in\mathbb R^{n+1}$ modulo nonzero scalar multiplication. In an affine chart write $z=(x,1)$. Projective lines, obtained from two-dimensional linear subspaces upstairs, become ordinary lines in this chart. An invertible block matrix acts by

$$\begin{align}
x\longmapsto\frac{Bx+p}{q^{\mathsf T}x+d}
 \tag{9.1}
\end{align}$$

where the denominator is nonzero. Scalar multiples of the matrix give the same map. This is the affine-chart form of $\operatorname{PGL}(n+1,\mathbb R)$ acting globally on $\mathbb{RP}^n$. It preserves lines because invertible linear maps preserve the dimension of their defining subspaces. It need not be an affine transformation of the chart.

### 9.2 Solving the Infinitesimal Equation

Differentiate the pullback connection law along a vector-field flow at the zero representative. The infinitesimal coefficient change is $\partial_b\partial_cX^a$. Thus a local projective vector field satisfies

$$\begin{align}
\partial_b\partial_cX^a=\delta^a_b\psi_c+\delta^a_c\psi_b, \qquad \psi_c=\frac1{n+1}\partial_c\partial_aX^a. \tag{9.2}
\end{align}$$

The trace gives the second formula, so $\partial_d\psi_c=\partial_c\psi_d$. Differentiate the first equation and commute derivatives with indices $b,d$:

$$\begin{align}
\delta^a_b\partial_d\psi_c+\delta^a_c\partial_d\psi_b =\delta^a_d\partial_b\psi_c+\delta^a_c\partial_b\psi_d.
\end{align}$$

The terms with $\delta^a_c$ cancel. Choosing $a=b\ne d$, possible when $n\geq2$, yields $\partial_d\psi_c=0$ for all $c,d$. Hence $\psi=\beta$ is constant on a connected coordinate domain. The field $(\beta_bx^b)x^a$ has exactly the required Hessian. Subtract it from $X$; the remaining Hessian is zero, so the remainder is affine. Every smooth solution is therefore

$$\begin{align}
X^a=c^a+A^a{}_b x^b+(\beta_bx^b)x^a. \tag{9.3}
\end{align}$$

This derives the quadratic form rather than assuming a quadratic ansatz. The solution-space dimension is

$$\begin{align}
n+n^2+n=(n+1)^2-1,\qquad n=4:\quad24. \tag{9.4}
\end{align}$$

Here finite dimension is a property of a constrained differential-equation solution space, not of an unconstrained space of smooth tensor sections.

### 9.3 Lie Brackets and the Sign of the Matrix Action

Use the ordinary field bracket

$$\begin{align}
[X,Y]^a=X^b\partial_bY^a-Y^b\partial_bX^a. \tag{9.5}
\end{align}$$

Write $X=X(c,A,\beta)$ and $Y=X(d,B,\eta)$, using column vectors. Their Jacobians are $J_X=A+x\beta^{\mathsf T}+(\beta^{\mathsf T}x)I$ and $J_Y=B+x\eta^{\mathsf T}+(\eta^{\mathsf T}x)I$. Substitute into $[X,Y]=J_YX-J_XY$. The cubic terms cancel, giving another field of the form (9.3) with

$$
\begin{aligned}
 c_{[X,Y]}&=Bc-Ad,\\
 A_{[X,Y]}&=BA-AB+c\eta^{\mathsf T}-d\beta^{\mathsf T}
               +(\eta^{\mathsf T}c-\beta^{\mathsf T}d)I,\\
 \beta_{[X,Y]}&=A^{\mathsf T}\eta-B^{\mathsf T}\beta.
 \end{aligned}
 \tag{9.6}
$$

For example $[Ax,d]=-Ad$, and $[Ax,(\eta\cdot x)x]=(A^{\mathsf T}\eta\cdot x)x$. There is no uncanceled cubic contribution.

For a trace-zero matrix $M=\left(\begin{smallmatrix}B&p\\q^{\mathsf T}&d\end{smallmatrix}\right)$, expanding $(I+sM)(x,1)$ and dividing by its last coordinate gives

$$\begin{align}
X_M(x)=p+(B-dI)x-(q^{\mathsf T}x)x. \tag{9.7}
\end{align}$$

Conversely the parameters of (9.3) come from the unique trace-zero matrix

$$
M(c,A,\beta)=\begin{pmatrix}
 A-\dfrac{\operatorname{tr}A}{n+1}I&c\\
 -\beta^{\mathsf T}&-\dfrac{\operatorname{tr}A}{n+1}
 \end{pmatrix}.
 \tag{9.8}
$$

Its trace and its image under (9.7) check the normalization. Substitution of (9.6) then gives

$$\begin{align}
[X_M,X_N]=X_{-[M,N]}. \tag{9.9}
\end{align}$$

Thus $M\mapsto X_M$ is an anti-homomorphism for the chosen bracket, and $M\mapsto X_{-M}$ is a Lie algebra isomorphism. In dimension four the flat local projective algebra is $\mathfrak{sl}(5,\mathbb R)$.

### 9.4 Local Domains and Extra Preserved Data

For the quadratic field $X(x)=(\beta\cdot x)x$, the explicit flow is

$$\begin{align}
x(s)=\frac{x_0}{1-s\beta\cdot x_0}. \tag{9.10}
\end{align}$$

When $\beta\cdot x_0\ne0$ it leaves the affine chart in finite parameter, although the matrix exponential defines a global flow on projective space. Thus a local projective field need not be complete on $\mathbb R^n$. Similarly a nonconstant denominator in (9.1) vanishes on an affine hyperplane, so that transformation is not defined on the entire chart. The subgroup of these projective transformations preserving the entire chart is affine, with constant denominator.

If a specified torsion tensor is included as extra structure, a symmetry must also satisfy $\mathcal L_XT=0$. The path-symmetry algebra therefore need not equal the automorphism algebra of that richer structure. Preserving a particular connection is stronger again: for the zero representative, its infinitesimal equation is $\partial_b\partial_cX^a=0$, giving only affine fields.

## 10. What Projective Information Does and Does Not Supply

A projective structure specifies unparametrized regular autoparallels. It does not specify their affine clocks, the torsion of a connection that produced them, or a metric. Identifying them with freely falling physical trajectories needs an additional dynamical hypothesis. Identifying one index with time needs actual causal structure. If a Lorentzian metric is later added in this collection, its signature is $(-,+,+,+)$; no such metric is implicit here.

The symbols $\Pi$ encode projective data with a special coordinate law, not a tensor law. The tensor $W$ is invariant for torsion-free projective classes, with dimension two governed instead by Cotton curvature. The flatness criteria construct neighborhoods, not a global affine chart or complete curves. A projective manifold may have nontrivial projective holonomy. Finally, existence of a metric whose Levi-Civita connection belongs to the class is a further differential problem, not a consequence of path equivalence; this metrizability question is studied in [1].

## References

[1] M. Eastwood and V. S. Matveev, “Metric connections in projective differential geometry,” in *Symmetries and Overdetermined Systems of Partial Differential Equations*, IMA Volumes in Mathematics and its Applications **144** (2007), 339–351. [ArXiv:0806.3998](https://arxiv.org/abs/0806.3998); [HTML text](https://arxiv.org/html/0806.3998v1), Section 1 for projective representative changes and the symmetric-Ricci curvature decomposition.

[2] M. G. Eastwood, “Notes on projective differential geometry,” in the same volume **144** (2007), 41–60. Standard background on projective structures and their invariant bundles.

[3] S. Kobayashi and K. Nomizu, *Foundations of Differential Geometry*, Vol. I, Wiley, 1963. Connections, curvature, parallel transport, and local flatness.

[4] A. Čap and J. Slovák, *Parabolic Geometries I: Background and General Theory*, Mathematical Surveys and Monographs **154**, American Mathematical Society, 2009. Projective structures and their Cartan description.

[5] J. M. Lee, *Introduction to Smooth Manifolds*, 2nd ed., Springer, 2013. Flows, Lie brackets, distributions, and the Frobenius theorem.
