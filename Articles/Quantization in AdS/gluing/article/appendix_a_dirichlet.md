# Implementing Dirichlet data

Strict Dirichlet data at an artificial cut cannot be imposed simultaneously with arbitrary field matching: if both cut traces are fixed to zero from the outset, their difference carries no gluing information. The useful construction is therefore an interpolation. A boundary penalty realizes decoupled Dirichlet theories at one endpoint, while a relative-trace penalty glues the regions at the other endpoint.

## Scalar boundary penalty

For the scalar interval, keep the physical outer Dirichlet data exact and vary the two traces at the artificial cut. Introduce a fixed inverse-length scale $\mu>0$ and a dimensionless parameter $\kappa>0$. The action is

$$
S_\kappa^{\mathrm D}
=\sum_{i=1}^2 S_i
-\frac12\int\mathrm dt\left[
\frac\mu\kappa(\phi_1^2+\phi_2^2)
+\mu\kappa(\phi_1-\phi_2)^2
\right]_{x=0}.
$$

The first term is the boundary penalty and the second is the gluing interaction. Free variation of the cut traces gives

$$
\phi_1'
+\frac\mu\kappa\phi_1
+\mu\kappa(\phi_1-\phi_2)=0,
$$

$$
\phi_2'
-\frac\mu\kappa\phi_2
+\mu\kappa(\phi_1-\phi_2)=0,
$$

at $x=0$. The positive spatial quadratic form is

$$
Q_\kappa^{\mathrm D}
=\sum_{i=1}^2\int_{I_i}\mathrm dx\,
(|\phi_i'|^2+m^2|\phi_i|^2)
+\left[
\frac\mu\kappa(|\phi_1|^2+|\phi_2|^2)
+\mu\kappa|\phi_1-\phi_2|^2
\right]_{x=0}.
$$

For a family with bounded $Q_\kappa^{\mathrm D}$,

$$
\kappa\to0:
\qquad
\phi_1(0)=\phi_2(0)=0.
$$

This is the direct sum of the two strict Dirichlet regions. In the opposite limit,

$$
\kappa\to\infty:
\qquad
\phi_1(0)=\phi_2(0).
$$

Subtracting the two finite-$\kappa$ cut equations then gives

$$
\phi_1'(0)=\phi_2'(0),
$$

so the fields join into one scalar on the full interval. Because neither cut term contains a time derivative, the pre-symplectic form remains the sum of the two bulk forms throughout the interpolation.

The two roles of $\kappa$ are essential. The coefficient $\mu/\kappa$ produces the strict Dirichlet endpoint, while $\mu\kappa$ produces the strong-gluing endpoint. A single penalty cannot realize both limits.

## Gauge-invariant Maxwell boundary penalty

For Maxwell theory, Dirichlet data fix the tangential connection only up to a gauge transformation. On the two cut faces $\Gamma_i$, introduce boundary Stueckelberg fields $\varphi_i$ with

$$
A_i\longrightarrow A_i+\mathrm d\lambda_i,
\qquad
\varphi_i\longrightarrow\varphi_i+\lambda_i\big|_{\Gamma_i},
$$

and define the dressed tangential fields

$$
a_{i,a}=A_{i,a}-\partial_a\varphi_i,
\qquad
a=t,y.
$$

The gauge-invariant Dirichlet penalty is

$$
S_{\mathrm D}^{(\kappa)}
=-\frac\mu{2\kappa}
\sum_{i=1}^2\int_{\Gamma_i}\mathrm dt\mathrm dy\,
\gamma^{ab}a_{i,a}a_{i,b}.
$$

Together with the Maxwell bulk variation, it gives

$$
n_{i,\mu}F_i^{\mu a}
+\frac\mu\kappa a_i^a=0,
\qquad
\partial_a a_i^a=0.
$$

The strict limit $\kappa\to0$ forces $a_{i,a}\to0$ for bounded energy, which is precisely the gauge-invariant Dirichlet condition on each cut face.

To interpolate from these two Dirichlet regions to the uncut theory, add

$$
S_{\mathrm{glue}}^{(\kappa)}
=-\frac{\mu\kappa}{2}\int_\Gamma\mathrm dt\mathrm dy\,
\gamma^{ab}(a_{1,a}-a_{2,a})(a_{1,b}-a_{2,b}).
$$

With

$$
\boldsymbol a_a=
\begin{pmatrix}
a_{1,a}\\
a_{2,a}
\end{pmatrix},
\qquad
M_\kappa=
\begin{pmatrix}
\kappa^{-1}+\kappa&-\kappa\\
-\kappa&\kappa^{-1}+\kappa
\end{pmatrix},
$$

the complete cut action is

$$
S_{\partial,\kappa}
=-\frac\mu2\int_\Gamma\mathrm dt\mathrm dy\,
\gamma^{ab}\boldsymbol a_a^{\mathrm T}M_\kappa\boldsymbol a_b.
$$

The cut equations are

$$
n_{i,\mu}F_i^{\mu a}
+\mu\sum_{j=1}^2(M_\kappa)_{ij}a_j^a=0,
$$

$$
\partial_a\left[
\sum_{j=1}^2(M_\kappa)_{ij}a_j^a
\right]=0.
$$

The variation of the boundary fields also has an endpoint term in time. Its contribution to $\theta_\kappa$ is

$$
\begin{aligned}
\theta_\kappa
&=\sum_{i=1}^2\int_{\Sigma_i}\mathrm dx\mathrm dy\,
(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}) \\
&\quad+\mu\int_{S_y^1}\mathrm dy\,
\sum_{i,j=1}^2(M_\kappa)_{ij}
(\dot\varphi_j-A_{j,t})\delta\varphi_i.
\end{aligned}
$$

Consequently, the boundary fields enter the CPS form even though they do not supply independent physical oscillators after the gauge quotient.

In the basis

$$
a_{\pm,a}=\frac{a_{1,a}\pm a_{2,a}}{\sqrt2},
$$

the cut action becomes

$$
S_{\partial,\kappa}
=-\frac\mu2\int_\Gamma\mathrm dt\mathrm dy\,
\gamma^{ab}\left[
\frac1\kappa a_{+,a}a_{+,b}
+\left(\frac1\kappa+2\kappa\right)a_{-,a}a_{-,b}
\right].
$$

Therefore

$$
\kappa\to0:
\qquad
a_{1,a}=a_{2,a}=0,
$$

while bounded energy in the strong-gluing limit gives

$$
\kappa\to\infty:
\qquad
a_{1,a}=a_{2,a}.
$$

The common dressed field becomes unconstrained by the vanishing $\kappa^{-1}$ coefficient, while the relative dressed field is suppressed by the growing $2\kappa$ coefficient. The finite-$\kappa$ cut equations then match the normal field strengths. After pulling back the CPS form and quotienting its null directions, the result is the Maxwell phase space on the uncut spacetime.

### Compact gauge group

For compact $U(1)$, each $\varphi_i$ may be circle-valued,

$$
\varphi_i(t,y+\ell_y)
=\varphi_i(t,y)+2\pi s_i,
\qquad
s_i\in\mathbb Z.
$$

If the physical outer holonomy is fixed to zero, strict Dirichlet data imply

$$
\oint_{S_y^1}A_{i,y}\big|_{\Gamma_i}\,\mathrm dy=2\pi s_i,
\qquad
\int_{\Sigma_i}\mathrm dx\mathrm dy\,B_i=2\pi n_i s_i.
$$

The integers label disconnected magnetic-flux components of the strict Dirichlet region theories. Under strong gluing, the relative winding $s_1-s_2$ becomes the magnetic-flux label of the global connection, whereas simultaneous changes of the two cut trivializations do not create an additional global sector. These discrete components are separate from the positive-frequency photon modes and must be included when specifying the compact theory's full phase space.
