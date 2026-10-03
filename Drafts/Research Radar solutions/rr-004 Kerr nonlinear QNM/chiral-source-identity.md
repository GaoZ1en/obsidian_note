# A chiral null-plane identity for the DD Einstein source

## Result

**For the complex direct--direct channel used in the rotating benchmark, the quadratic Einstein source has zero projection along the principal null vector $n^a$. The GHZ corrector can therefore be chosen to vanish in this reconstruction gauge.** The quadratic term in the extreme curvature extraction also vanishes in the compatible tetrad.

These statements follow from an exact null-block identity, not from the small numerical waveform discrepancy. They apply to the selected complex chirality and do not apply to an arbitrary real perturbation or to a direct--mirror product. A gauge transformation need not preserve this convenient representation; the observable gauge-cancellation argument must still include all transformed terms.

The generic identity was checked with arbitrary symbolic metric jets. An independent Kerr component calculation has a nonzero quadratic Einstein tensor while its relevant projections vanish. The subsequent [Hertz inversion and metric check](hertz-metric-reconstruction.md) uses this simplification to test an actual reconstructed daughter.

## 1. The complex plane occupied by the parent

Use the complexified exterior Kerr geometry. In advanced Kerr coordinates $(v,r,z,\varphi^*)$, with $z=\cos\theta$, two convenient vectors are
$$
N=\partial_r,\qquad
M=ia(1-z^2)\partial_v-(1-z^2)\partial_z+i\partial_{\varphi^*}.
$$
They span the same complex plane as the principal $n$ and the Kinnersley $m$, up to nonzero factors away from the horizon. It is totally null:
$$
g(N,N)=g(N,M)=g(M,M)=0.
$$
Moreover $[N,M]=0$, so it is integrable.

The complex Hertz contribution retained in the DD calculation has only the tetrad metric components
$h_{ll}$, $h_{l\bar m}$ and $h_{\bar m\bar m}$. Thus
$$
h_{ab}
=A\,n_an_b-B(n_am_b+m_an_b)+C\,m_am_b,
$$
for complex coefficient functions $A,B,C$. No complex conjugate metric is added in this individual channel. Consequently
$$
h_{ab}n^b=h_{ab}m^b=0,\qquad
g^{ab}h_{ab}=0,
\qquad
h_{ac}g^{cd}h_{db}=0.
$$
The final nilpotency identity is stronger than the vanishing trace and is the useful one.

For clarity, the proof uses the following local complex coordinates:
$$
X^1=v+iaz,\qquad
X^2=\varphi^*+i\,\operatorname{arctanh}z,\qquad
Y^1=r,\qquad Y^2=z.
$$
Both $X^I$ are constant along the null plane, which is now spanned by $\partial_{Y^\alpha}$. The coordinate chart is local on the sphere; tensor identities proved there extend between regular spin-frame patches.

For signature $(-+++)$, representative covectors spanning its annihilator become
$$
dX^1-a(1-z^2)dX^2,
$$
$$
-ia(1-z^2)dX^1+i(r^2+a^2)(1-z^2)dX^2.
$$
Changing the overall metric signature reverses both covectors and leaves their quadratic span unchanged. In these coordinates the Kerr metric has block form
$$
g_0=
\begin{pmatrix}
A_0&B_0\\
B_0^T&0
\end{pmatrix},
\qquad
B_0=
\begin{pmatrix}
1&ia\\
-a(1-z^2)&-i(r^2+a^2)
\end{pmatrix},
\qquad
\det B_0=-i\Sigma,
$$
where $\Sigma=r^2+a^2z^2$. The displayed $B_0$ uses $(-+++)$; its sign reverses for $(+---)$. The perturbation has only an $XX$ block:
$$
h=
\begin{pmatrix}
H&0\\
0&0
\end{pmatrix}.
$$

## 2. Exact Einstein identity for a null-block deformation

This part does not require the Kerr equations or a Hertz ansatz. Let $A_0$, $B_0$ and $H$ be arbitrary smooth functions in a chart with the displayed block structure and invertible $B_0$. Set
$$
g_\epsilon=g_0+\epsilon h.
$$
Then
$$
\det g_\epsilon=\det g_0,\qquad
g_\epsilon^{-1}=g_0^{-1}-\epsilon g_0^{-1}hg_0^{-1}
$$
exactly. In particular the inverse correction has only $YY$ components.

Expand the connection as
$$
\Gamma(g_\epsilon)=\Gamma_0+\epsilon\Gamma_1+\epsilon^2\Gamma_2.
$$
The index supports give
$$
(\Gamma_1)^I{}_{\alpha b}=0,\qquad
(\Gamma_1)^a{}_{\alpha\beta}=0,\qquad
(\Gamma_2)^\alpha{}_{IJ}
\ \text{are the only possibly nonzero components of }\Gamma_2.
$$
The corresponding background identity is
$(\Gamma_0)^I{}_{\alpha\beta}=0$. Since the determinant is unchanged,
$$
(\Gamma_1)^a{}_{ab}=(\Gamma_2)^a{}_{ab}=0.
$$

Write $R^{[j]}_{ab}$ for the coefficient of $\epsilon^j$ in the Ricci tensor, without factorials. Substitution into the Ricci formula now gives
$$
R^{[1]}_{\alpha\beta}=0,\qquad
R^{[2]}_{\alpha b}=0,\qquad
R^{[3]}_{ab}=R^{[4]}_{ab}=0.
$$
For example, in $R^{[2]}_{\alpha I}$ the derivative terms vanish because $\Gamma_2$ has no lower $Y$ index. The $\Gamma_1\Gamma_1$ term would require both $(\Gamma_1)^\beta{}_{\alpha J}$ and $(\Gamma_1)^J{}_{I\beta}$; the second factor is zero. The $\Gamma_0\Gamma_2$ terms similarly require a background $(\Gamma_0)^I{}_{\alpha\beta}$ or a forbidden component of $\Gamma_2$.

The scalar-curvature coefficient at order two is
$$
R^{[2]}=(g_0^{-1})^{ab}R^{[2]}_{ab}
+(g_1^{-1})^{ab}R^{[1]}_{ab}=0.
$$
The first contraction vanishes because $R^{[2]}$ is supported in $XX$ while $(g_0^{-1})^{XX}=0$; the second uses $R^{[1]}_{YY}=0$. Higher scalar coefficients vanish as well. Therefore the full Einstein tensor is at most quadratic:
$$
\boxed{
G[g_0+\epsilon h]
=G[g_0]+\epsilon E_1h+\epsilon^2 Q[h,h],
\qquad Q_{\alpha b}=0.
}
$$
No field equation for $h$ was used. The nonzero part of $Q$ has only $XX$ components.

The identity is polarized to obtain the mixed result for two perturbations occupying the same null plane. It is not valid when one perturbation is replaced by its opposite-chirality conjugate.

The exact symbolic check uses a pointwise adapted basis with $A_0=0$, $B_0=1$, and arbitrary first and second jets of every allowed block entry. Such a normalization is an invertible linear coordinate change preserving the block supports. The computation therefore checks arbitrary local jets, rather than a selected polynomial background. It confirms all displayed zero blocks and retains a nonzero $XX$ quadratic Einstein tensor.

## 3. Consequence for the source corrector

For the single-parameter expansion
$$
g=g_0+\epsilon h+\epsilon^2 k+O(\epsilon^3),
\qquad E_1h=0,
$$
the daughter equation is
$$
E_1k=-Q[h,h].
$$
Here $Q=\tfrac12 D^2G[h,h]$; the factor differs from the mixed-parameter equation in the gravitational-response note.

Set $F=-Q[h,h]$. The null-block result gives
$$
\boxed{F_{ab}n^b=F_{ab}m^b=0,\qquad g_0^{ab}F_{ab}=0.}
$$
The linearized Bianchi identity also makes $F$ conserved when the parent is on shell.

The GHZ corrector cancels the source projection along the chosen principal null direction. In the outgoing radiation-gauge version, its defining equation is
$[F-E_1x]_{ab}n^b=0$. Hence $x=0$ is a valid choice here, with zero homogeneous corrector data. This uses the source-projection characterization of the [GHZ construction](https://arxiv.org/html/2402.15468v2#A1), with the principal directions exchanged from its displayed ingoing-gauge form.

This does not imply $F=0$. It also does not by itself prove that a particular sourced Hertz potential satisfies all remaining Einstein components. Those are separate equations and are tested independently in the reconstruction supplement.

## 4. Extreme curvature is linear in this sector

A second consequence of the same connection supports is
$$
R^{[2]}_{\alpha I\beta J}=0,\qquad
R^{[1]}_{\alpha\beta\gamma I}=0,\qquad
R^{[0]}_{\alpha\beta\gamma\delta}=0.
$$
These are covariant Riemann components, with lower $Y$ indices denoted by Greek letters. They were separately checked for arbitrary block jets.

Let $\mathsf H^a{}_b=g_0^{ac}h_{cb}$. A tetrad compatible with the full deformed metric is
$$
e_\epsilon=\left(1-\frac{\epsilon}{2}\mathsf H\right)e_0.
$$
It remains exactly normalized because $\mathsf H^2=0$ and $h\mathsf H=0$. The vectors in the null plane, including $n$, are unchanged; the change in $\bar m$ lies in that plane.

For the extreme curvature component
$$
\Psi_4=-C_{abcd}n^a\bar m^bn^c\bar m^d,
$$
the Ricci subtractions vanish by the null tetrad contractions. The quadratic coefficient has three kinds of terms: $R^{[2]}_{YXYX}$, $R^{[1]}_{YYYX}$ from a first-order tetrad change, and $R^{[0]}_{YYYY}$ from two tetrad changes. Each is zero. Thus
$$
\boxed{\Psi_4^{[2]}[h,h]=0}
$$
in this tetrad and chirality. For a metric family with an explicit second-order term $k$, its order-two curvature is consequently the linear extraction $T_4k$.

This removes the quadratic curvature-extraction term in this specific representation. It does not remove the quadratic extraction term from a general gauge-covariant formula. Nor does it establish a statement about the direct--mirror contribution.

## 5. Independent Kerr component evidence

A separate calculation constructs the full coordinate metric from the Hertz components, differentiates it, and expands the Christoffel and Einstein tensors through order two. At $a=0.3$, $r=3$, $z=1/3$, it uses generic complex frequency and separation data with on-shell radial/angular jets, rather than fitting a QNM amplitude.

The quadratic Einstein tensor is nonzero (largest coordinate component about $187.61$ in that deliberately unnormalized local test), while its $n$ projection and scalar trace vanish to the 70-digit working precision. The parent linear Einstein tensor vanishes as well. Repeating with off-shell polynomial coefficient functions still gives the predicted quadratic zero projection. A separate curvature calculation confirms the vanishing quadratic extraction.

These point checks are checks of the implementation. The arbitrary-jet null-block derivation supplies the actual local identity.

Evidence is saved in [the exact Einstein block check](verification/null-block-einstein-identity.wl), [the exact curvature block check](verification/null-block-curvature-identity.wl), [the Kerr coordinate transformation](verification/kerr-null-coordinates.wl), and the adjacent JSON results. The files beginning with `chiral-kerr-` contain the independent component examples.

**Verified:** the adapted Kerr coordinates; nilpotency and the exact inverse; the generic null-block Einstein and curvature identities; the zero source projection and the allowed zero-corrector choice for this DD sector.

**Assumptions:** a single complex chirality occupying the same integrable null plane; a nondegenerate background cross block; a compatible tetrad; on-shell parents when source conservation is invoked.

**Not verified here:** the complete sourced Hertz equation and its global kernel; the full metric-CPS source/residue correspondence; opposite-chirality channels. These are not consequences of the zero-corrector statement alone.

