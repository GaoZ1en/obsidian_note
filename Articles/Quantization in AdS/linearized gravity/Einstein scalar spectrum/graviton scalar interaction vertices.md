# CPS Time-Translation Hamiltonian and Graviton–Scalar Interactions

Use the action and conventions of [gravitation scalar interaction](gravitation%20scalar%20interaction.md): AdS radius one, signature $(-,+,+)$, $\kappa^2=16\pi G$, $m^2=\Delta(\Delta-2)$, and $\Delta>1$. The center is smooth, the scalar source vanishes, and the metric obeys Brown–Henneaux conditions with a fixed boundary cylinder and time coordinate. Unless indicated otherwise, indices are raised with $g^{(0)}$ and $\nabla=\nabla^{(0)}$.

The order of operations is the one in [formalism](../../perturbation/formalism.md): obtain $H=X\cdot\theta-\alpha$ from the full action, including its boundary/corner terms, and only then pull $H$ back to perturbative solutions. An on-shell bulk action with total derivatives suppressed does not suffice for this calculation.

## Time Translation Before Perturbation

At a radial regulator $r=R$, take

$$\begin{align}
S_R&=\frac1{\kappa^2}\int_{M_R}d^3x\sqrt{-g}(R[g]+2)
-\frac12\int_{M_R}d^3x\sqrt{-g}\left((\nabla_g\phi)^2+m^2\phi^2\right)
+\frac2{\kappa^2}\int_{\Gamma_R}d^2x\sqrt{-\gamma}(K-1),\\
\xi&=\partial_t,\qquad X_t\cdot\delta g=\mathcal L_\xi g,
\qquad X_t\cdot\delta\phi=\mathcal L_\xi\phi.
\end{align}$$

Write the bulk and boundary Lagrangian forms as $\boldsymbol L$ and $\boldsymbol\ell$. Covariance gives the off-shell symmetry term

$$\begin{align}
\alpha_{t,\Sigma_R}
&=\int_{\Sigma_R}\iota_\xi\boldsymbol L
-\int_{\partial\Sigma_R}\iota_\xi\boldsymbol\ell,\\
\theta_{\Sigma_R}
&=\int_{\Sigma_R}\boldsymbol\Theta
-\int_{\partial\Sigma_R}\boldsymbol C,\\
H_{t,R}
&=X_t\cdot\theta_{\Sigma_R}-\alpha_{t,\Sigma_R}\\
&=\int_{\Sigma_R}\left(\boldsymbol\Theta[\mathcal L_\xi g,\mathcal L_\xi\phi]
-\iota_\xi\boldsymbol L\right)
+\int_{\partial\Sigma_R}\left(\iota_\xi\boldsymbol\ell-X_t\cdot\boldsymbol C\right).
\end{align}$$

This is precisely the $X\cdot\theta-\alpha$ construction; see [Harlow–Wu, §4.2, especially (198), and §3.5](https://arxiv.org/html/1906.08616v3). Neither the corner nor the symmetry term has been subtracted from $\theta$ by hand.

Let $n$ be outward-pointing, $K_{ab}=\gamma_a{}^\mu\gamma_b{}^\nu\nabla_\mu n_\nu$, and let $u^a$ be the **future-directed** unit normal to the boundary circle within $\Gamma_R$. Evaluating the displayed $H$ with the Einstein–scalar constraints gives the boundary energy

$$\begin{align}
\mathcal T_{ab}&=\frac2{\kappa^2}\left(-K_{ab}+K\gamma_{ab}-\gamma_{ab}\right),\\
H_t[g,\phi]
&=\lim_{R\to\infty}\int_0^{2\pi}d\varphi\,
\sqrt{\sigma_{\partial}}\,u^a\xi^b\mathcal T_{ab}
+\frac{2\pi}{\kappa^2}.
\end{align}$$

Here $\sigma_{\partial}$ is the induced one-dimensional metric determinant. The additive constant fixes $H_t[g^{(0)},0]=0$; before this choice global AdS has energy $-2\pi/\kappa^2=-1/(8G)$. This agrees with [gravitational energy / boundary charge](../../gravitational%20energy/boundary%20charge.md) after translating its stress-tensor normalization to $\kappa^2=16\pi G$. The future-normal convention above fixes the sign explicitly. The scalar contributes through the constraints and metric response; its normalizable falloff produces no additional finite scalar boundary charge in this Dirichlet problem.

For clarity, the reduction to this expression uses the boundary variation
$\frac12\sqrt{-\gamma}\,\mathcal T^{ab}\delta\gamma_{ab}$ and its corner term. In an orthogonal regulator collar the bulk constraint contribution is

$$\begin{align}
-\frac2{\kappa^2}\int_{\Sigma_R}d^2x\sqrt{\sigma}\,
 v^\mu\xi^\nu\left(\mathcal E_{\mu\nu}-\frac{\kappa^2}{2}T_{\mu\nu}\right),
\qquad \mathcal E_{\mu\nu}=R_{\mu\nu}-\frac12Rg_{\mu\nu}-g_{\mu\nu},
\end{align}$$

where $v$ is the future unit normal to $\Sigma_R$. This contribution vanishes on the full constraint surface. The remaining boundary term is the one above, including the $-1$ counterterm. Thus the bulk/corner reduction is performed before imposing any perturbative solution or TT condition.

## Boundary Energy and the Linear Constraint Identity

Put $f=1+r^2$. In the global coordinates,

$$\begin{align}
ds_0^2&=-fdt^2+\frac{dr^2}{f}+r^2d\varphi^2,\\
g_{tt}&=-f+A(t,\varphi)+o(1),&
g_{t\varphi}&=C(t,\varphi)+o(1),\\
g_{\varphi\varphi}&=r^2+B(t,\varphi)+o(1),&
g_{rr}&=f^{-1}+\frac{D(t,\varphi)}{r^4}+o(r^{-4}),
\qquad g_{ra}=O(r^{-3}).
\end{align}$$

With the corresponding differentiated falloffs, the boundary formula evaluates to

$$\begin{align}
H_t&=\frac1{\kappa^2}\int_0^{2\pi}d\varphi\,(D+2B)
=\frac1{\kappa^2}\mathcal A[g-g^{(0)}],\\
\mathcal A[s]&:=\lim_{r\to\infty}\int_0^{2\pi}d\varphi\,
\left(r^4s_{rr}+2s_{\varphi\varphi}\right).
\end{align}$$

The asymptotic expression is linear in the **full** metric deviation. Its nonlinear dependence on physical amplitudes is contained in the solution for that deviation. For example, $g_{rr}=(f-\kappa^2M_\infty)^{-1}$ gives $H_t=2\pi M_\infty$, fixing the positive-mass sign.

The following identity lets us compute higher-order energy without explicitly solving for every higher-order metric coefficient:

$$\begin{align}
\frac{2r}{f}\mathcal E^{(1)}_{tt}[s]
&=\partial_r\left[f^2s_{rr}+\left(2+\frac1{r^2}\right)s_{\varphi\varphi}
-\frac f r\partial_rs_{\varphi\varphi}\right]\\
&\quad+\partial_\varphi\left[2s_{r\varphi}
+\frac{2f}{r}\partial_rs_{r\varphi}-\frac f r\partial_\varphi s_{rr}\right],\\
\mathcal A[s]&=2\int_{\Sigma_t}dr\,d\varphi\,\frac r f\mathcal E^{(1)}_{tt}[s].
\end{align}$$

The second line follows by periodicity, smoothness at the center, and the stated asymptotics. Smoothness makes the **angular integral** of the inner radial flux zero. No outer boundary term has been discarded: it is exactly $\mathcal A[s]$.

## Free Modes and the Required Solution Orders

Use the normalized scalar modes, writing $j$ for angular momentum to distinguish it from the mass:

$$\begin{align}
\phi_{nj}&=\sqrt{\frac{n!\Gamma(n+\Delta+|j|)}{2\pi\Gamma(n+\Delta)\Gamma(n+1+|j|)}}
e^{-i\omega_{nj}t+ij\varphi}r^{|j|}f^{-(\Delta+|j|)/2}
P_n^{(\Delta-1,|j|)}\left(\frac{r^2-1}{r^2+1}\right),\\
\omega_{nj}&=\Delta+2n+|j|,\qquad
\phi^{(0)}=\sum_{n,j}\left(b_{nj}\phi_{nj}+b_{nj}^*\phi_{nj}^*\right),\\
\zeta&=\sum_{A=L,R}\sum_{n\geq0}\left(a_{A,n}\zeta_{A,n}+a_{A,n}^*\zeta_{A,n}^*\right),
\qquad h=\mathcal L_\zeta g^{(0)},\\
\nabla^\mu h_{\mu\nu}&=0,\qquad g^{(0)\mu\nu}h_{\mu\nu}=0.
\end{align}$$

The gravitational representatives and their frequency $n+2$ are those of [higher perturbations of linearized gravity modes](../higher%20perturbations%20of%20linearized%20gravity%20modes.md). Their TT conditions preserve the physical Brown–Henneaux amplitudes. They do not impose TT on $k_\phi$. Initially take finite sums; the starred amplitudes are classical complex conjugates.

Retain the covariance solutions, and extend the expansion far enough to calculate the charge:

$$\begin{align}
g&=g^{(0)}+\kappa h+\kappa^2 k+\kappa^3g^{(3)}+\kappa^4g^{(4)}+\cdots,\\
\phi&=\phi^{(0)}+\kappa\mathcal L_\zeta\phi^{(0)}
+\kappa^2\left(\frac12\mathcal L_\zeta^2\phi^{(0)}+\chi\right)+\cdots,\\
k&=\frac12\mathcal L_\zeta^2g^{(0)}+k_\phi,
\qquad \mathcal E^{(1)}[k_\phi]=\frac12T[\phi^{(0)},\phi^{(0)}],\\
g^{(3)}&=\frac16\mathcal L_\zeta^3g^{(0)}+\mathcal L_\zeta k_\phi,\\
g^{(4)}&=\frac1{24}\mathcal L_\zeta^4g^{(0)}
+\frac12\mathcal L_\zeta^2k_\phi+v_\phi.
\end{align}$$

These coefficients choose the solution coordinates by applying $e^{\kappa\mathcal L_\zeta}$ to a scalar-sourced seed $g^{(0)}+\kappa^2k_\phi+\kappa^4v_\phi+\cdots$, $\phi^{(0)}+\kappa^2\chi+\cdots$. Independent homogeneous gravitational amplitudes are already in $\zeta$; they are not added again at higher orders. The seed response convention is specified below.

Consequently,

$$\begin{align}
H_t&=\kappa^{-1}\mathcal A[h]+\mathcal A[k]
+\kappa\mathcal A[g^{(3)}]+\kappa^2\mathcal A[g^{(4)}]+\cdots,\\
\mathcal A[h]&=0,\\
H^{(0)}&=\mathcal A\left[\frac12\mathcal L_\zeta^2g^{(0)}\right]+\mathcal A[k_\phi]\\
&=\sum_{A,n}(n+2)a_{A,n}^*a_{A,n}
+\sum_{n,j}\omega_{nj}b_{nj}^*b_{nj},\\
\mathcal A[k_\phi]&=\frac12\int dr\,d\varphi\,r\left[
\frac{(\partial_t\phi^{(0)})^2}{f}+f(\partial_r\phi^{(0)})^2
+\frac{(\partial_\varphi\phi^{(0)})^2}{r^2}+m^2(\phi^{(0)})^2\right].
\end{align}$$

The free gravitational modes have no linear global energy. The needed cubic energy is in $g^{(3)}$, and the quartic energy is in $g^{(4)}$, because the full charge carries $\kappa^{-2}$.

## The Cubic and Four-Scalar Hamiltonian Terms

Define the polarized stress tensor and its metric variation at fixed scalars:

$$\begin{align}
T_{\mu\nu}[u,v]&=\nabla_{(\mu}u\nabla_{\nu)}v
-\frac12g^{(0)}_{\mu\nu}(\nabla_\rho u\nabla^\rho v+m^2uv),\\
\delta_gT_{\mu\nu}[s;u,v]&=-\frac12s_{\mu\nu}(\nabla_\rho u\nabla^\rho v+m^2uv)
+\frac12g^{(0)}_{\mu\nu}s^{\rho\sigma}\nabla_\rho u\nabla_\sigma v.
\end{align}$$

Here $\mathcal E^{(2)}[s,s]$ is the coefficient of $\epsilon^2$ in $\mathcal E[g^{(0)}+\epsilon s]$, and $\mathcal E^{(2)}[s_1,s_2]$ denotes its symmetric polarization. At scalar degree three and four the remaining seed equations are

$$\begin{align}
(\Box_0-m^2)\chi&=-\delta_{k_\phi}\Box\,\phi^{(0)},\\
\delta_s\Box\,u&=-s^{\mu\nu}\nabla_\mu\nabla_\nu u
-\left(\nabla_\mu s^{\mu\nu}-\frac12\nabla^\nu s\right)\nabla_\nu u,
\qquad s=g^{(0)\mu\nu}s_{\mu\nu},\\
\mathcal E^{(1)}[v_\phi]&=
\frac12\delta_gT[k_\phi;\phi^{(0)},\phi^{(0)}]
+T[\phi^{(0)},\chi]-\mathcal E^{(2)}[k_\phi,k_\phi].
\end{align}$$

Covariance also gives the mixed equation

$$\begin{align}
\mathcal E^{(1)}[\mathcal L_\zeta k_\phi]
&=\frac12\delta_gT[h;\phi^{(0)},\phi^{(0)}]
+T[\phi^{(0)},\mathcal L_\zeta\phi^{(0)}]
-2\mathcal E^{(2)}[h,k_\phi].
\end{align}$$

Apply the integrated constraint identity to these two equations. The requested homogeneous pieces of the Hamiltonian are therefore

$$\begin{align}
H_{h\phi^2}
&=\kappa\mathcal A[\mathcal L_\zeta k_\phi]\\
&=\kappa\int dr\,d\varphi\,\frac r f
\left\{\delta_gT_{tt}[h;\phi^{(0)},\phi^{(0)}]
+2T_{tt}[\phi^{(0)},\mathcal L_\zeta\phi^{(0)}]
-4\mathcal E^{(2)}_{tt}[h,k_\phi]\right\},\\
H_{\phi^4}
&=\kappa^2\mathcal A[v_\phi]\\
&=\kappa^2\int dr\,d\varphi\,\frac r f
\left\{\delta_gT_{tt}[k_\phi;\phi^{(0)},\phi^{(0)}]
+2T_{tt}[\phi^{(0)},\chi]
-2\mathcal E^{(2)}_{tt}[k_\phi,k_\phi]\right\}.
\end{align}$$

These are equalities for the CPS Hamiltonian in the stated solution coordinates, not bulk-action equalities modulo boundaries. In particular, the scalar cross term and the mixed gravitational term have both survived in the cubic expression. The $k_\phi^2$ gravitational term is also quartic in scalar amplitudes and belongs at the same order as the explicit $k_\phi\phi^2$ term.

For a completely explicit reading of the scalar terms,

$$\begin{align}
\delta_gT_{tt}[s;u,v]&=-\frac12s_{tt}(\nabla_\rho u\nabla^\rho v+m^2uv)
-\frac f2s^{\rho\sigma}\nabla_\rho u\nabla_\sigma v,\\
2T_{tt}[u,v]&=\partial_tu\partial_tv+f^2\partial_ru\partial_rv
+\frac f{r^2}\partial_\varphi u\partial_\varphi v+fm^2uv.
\end{align}$$

One convenient choice of free solution coordinates fixes the seed scalar initial data at a reference time $t_*$ by $\chi|_{t_*}=\partial_t\chi|_{t_*}=0$. The inhomogeneous scalar equation then determines $\chi$ at other times, with normalizable boundary conditions. At that reference slice the second formula simplifies to

$$\begin{align}
H_{\phi^4}\big|_{t_*}
&=\kappa^2\int dr\,d\varphi\,\frac r f
\left\{-\frac12(k_\phi)_{tt}\left((\nabla\phi^{(0)})^2+m^2(\phi^{(0)})^2\right)
-\frac f2(k_\phi)^{\mu\nu}\nabla_\mu\phi^{(0)}\nabla_\nu\phi^{(0)}
-2\mathcal E^{(2)}_{tt}[k_\phi,k_\phi]\right\}_{t_*}.
\end{align}$$

The absence of the $\phi^{(0)}\chi$ term **on this slice** is an initial-data choice, not an integration-by-parts argument. It does not set $\chi$ to zero along the interacting evolution.

For use in the displayed integrals, the gravitational quadratic coefficient can be computed entirely with background derivatives:

$$\begin{align}
\Gamma^{(1)\rho}_{\mu\nu}[s]&=\frac12(\nabla_\mu s^\rho{}_\nu+\nabla_\nu s^\rho{}_\mu-\nabla^\rho s_{\mu\nu}),\\
\Gamma^{(2)\rho}_{\mu\nu}[s,s]&=-s^\rho{}_\lambda\Gamma^{(1)\lambda}_{\mu\nu}[s],\\
R^{(1)}_{\mu\nu}[s]&=\nabla_\rho\Gamma^{(1)\rho}_{\mu\nu}-\nabla_\nu\Gamma^{(1)\rho}_{\mu\rho},\\
R^{(2)}_{\mu\nu}[s,s]&=\nabla_\rho\Gamma^{(2)\rho}_{\mu\nu}-\nabla_\nu\Gamma^{(2)\rho}_{\mu\rho}
+\Gamma^{(1)\rho}_{\rho\lambda}\Gamma^{(1)\lambda}_{\mu\nu}
-\Gamma^{(1)\rho}_{\nu\lambda}\Gamma^{(1)\lambda}_{\mu\rho},\\
R^{(1)}[s]&=g^{(0)\mu\nu}R^{(1)}_{\mu\nu}[s]+2s,\\
R^{(2)}[s,s]&=g^{(0)\mu\nu}R^{(2)}_{\mu\nu}[s,s]
-s^{\mu\nu}R^{(1)}_{\mu\nu}[s]-2s_{\mu\nu}s^{\mu\nu},\\
\mathcal E^{(2)}_{\mu\nu}[s,s]&=R^{(2)}_{\mu\nu}[s,s]
-\frac12g^{(0)}_{\mu\nu}R^{(2)}[s,s]-\frac12s_{\mu\nu}R^{(1)}[s],\\
\mathcal E^{(2)}[s_1,s_2]&=\frac12\left(\mathcal E^{(2)}[s_1+s_2,s_1+s_2]
-\mathcal E^{(2)}[s_1,s_1]-\mathcal E^{(2)}[s_2,s_2]\right).
\end{align}$$

## Response Kernel and Mode Coefficients

Keep $k_\phi$ explicit, with $dV_{x'}=d^3x'\sqrt{-g^{(0)}(x')}$:

$$\begin{align}
(k_\phi)_{\mu\nu}(x)&=\frac12\int dV_{x'}\,
G_{\mathcal V,\mu\nu}{}^{\rho\sigma}(x,x')
T_{\rho\sigma}[\phi^{(0)},\phi^{(0)}](x'),\\
\mathcal E^{(1)}[G_{\mathcal V}S]&=S,\qquad
\nabla^\mu(G_{\mathcal V}S)_{\mu\nu}
-\frac12\nabla_\nu\operatorname{tr}(G_{\mathcal V}S)=0.
\end{align}$$

Use the finite-source assignment in [Einstein scalar response prescription](Einstein%20scalar%20response%20prescription.md): regular static seed, isometry recursion for opposite-frequency pairs, the conserved Abel prescription for same-sign pairs, and a fixed independent source basis. This is a right inverse on the stated conserved source space $\mathcal V$, not a claim of a retarded inverse on arbitrary histories. Its stated de Donder no-log domain excludes $\Delta=(1+\sqrt5)/2$.

To display the actual mode polynomials, let $I,J,\ldots$ range over both the positive-frequency scalar modes and their conjugates; write $u_I,b_I$ for the corresponding mode and amplitude. Similarly let $P$ include both gravitational frequency signs, with $\zeta_P,a_P$, and put $h_P=\mathcal L_{\zeta_P}g^{(0)}$. Then

$$\begin{align}
(k_{IJ})_{\mu\nu}(x)&=\frac12\int dV_{x'}\,
G_{\mathcal V,\mu\nu}{}^{\rho\sigma}(x,x')T_{\rho\sigma}[u_I,u_J](x'),
\qquad k_\phi=\sum_{I,J}b_Ib_Jk_{IJ},\\
H_{h\phi^2}&=\kappa\sum_{P,I,J}a_Pb_Ib_J\,V_{P;IJ},\\
V_{P;IJ}&=\mathcal A[\mathcal L_{\zeta_P}k_{IJ}]\\
&=\int dr\,d\varphi\,\frac r f\left\{
\delta_gT_{tt}[h_P;u_I,u_J]
+T_{tt}[u_I,\mathcal L_{\zeta_P}u_J]+T_{tt}[u_J,\mathcal L_{\zeta_P}u_I]
-4\mathcal E^{(2)}_{tt}[h_P,k_{IJ}]\right\},\\
H_{\phi^4}\big|_{t_*}&=\kappa^2\sum_{I,J,K,L}b_Ib_Jb_Kb_L\,W_{IJ;KL},\\
W_{IJ;KL}&=\int dr\,d\varphi\,\frac r f\left\{
\delta_gT_{tt}[k_{IJ};u_K,u_L]
-2\mathcal E^{(2)}_{tt}[k_{IJ},k_{KL}]\right\}_{t_*}.
\end{align}$$

The sums are over ordered indices; there is no additional factorial. Only the fully symmetric part of $W$ contributes to the classical polynomial. These expressions retain the independent gravitational amplitudes and their coupling to the scalar response within a single CPS construction.

## Relation to the Two-Particle Calculation

The displayed terms are the scalar-degree-two/graviton-degree-one and scalar-degree-four parts of $H$. The full Hamiltonian also contains $\kappa\mathcal A[\mathcal L_\zeta^3g^{(0)}/6]$, $\kappa^2\mathcal A[\mathcal L_\zeta^2k_\phi/2]$, and pure-gravity quartic terms. They are not included in this projection onto the connected four-external-scalar tree calculation. Mixed external sectors or loop effects require their own additional terms.

The free solution amplitudes used above need not remain Darboux coordinates after pulling back the full $\theta$. In accordance with the formalism note, quantization uses this Hamiltonian together with that pulled-back symplectic form. Before applying ordinary oscillator perturbation theory one must transform both to canonical coordinates; replacing $a^*,b^*$ by creation operators directly in the uncorrected-coordinate expressions would skip this step. In particular, the zero-$\chi$ initial-data convention fixes scalar field and velocity, not automatically scalar canonical momentum.

A useful independent check is the circular canonical reduction in the [spectrum note](gravity%20scalar%20one%20and%20two%20particle%20spectrum.md). With $F=f-\kappa^2M$, $ds^2=-Fe^{-2D}dt^2+dr^2/F+r^2d\varphi^2$, and $\Pi=e^D\dot\phi/F$, it gives

$$\begin{align}
H_t&=2\pi M(\infty),\qquad
M'=\frac r2\left[F\left(\Pi^2+(\phi')^2\right)+m^2\phi^2\right],\\
M_0(r)&=\frac12\int_0^r ds\,s\left[f(s)\left(\Pi^2+(\phi')^2\right)+m^2\phi^2\right],\\
H_{\phi^4}^{\mathrm{circular,canonical}}
&=-\pi\kappa^2\int_0^\infty dr\,r\,M_0(r)\left(\Pi^2+(\phi')^2\right).
\end{align}$$

Here the expansion holds at fixed canonical data $\phi,\Pi$ and $M(0)=0$. This verifies the boundary-energy normalization and explains why a quartic Hamiltonian cannot be read off merely by changing the sign of an on-shell action pairing. The general mode kernels above have not yet been converted into a canonical mixed-sector spectral matrix.

## Verification

- **Verified:** [the check script](scripts/graviton_scalar_vertices_checks.wl), cases `hamiltonian-tensors`, `gauss`, `boundary`, and `modes`, checks the quadratic Einstein coefficient, metric variation of the stress tensor, scalar operator variation, mixed Einstein and matter covariance identities, the general linear constraint flux, the asymptotic boundary-energy limit, circular mass-source expansion, TT seeds, and the lowest gravitational energy normalization. Tensor checks use xAct/xPert/xTras; the constraint and mode component checks use xCoba; the boundary limit and coefficient expansion use Mathematica.
- **Assumptions:** the full Dirichlet action, future-normal energy convention, smooth center, differentiated Brown–Henneaux falloffs, finite mode sums, and the specified response domain. The reference-slice quartic formula additionally chooses zero seed $\chi,\partial_t\chi$ data. The full boundary/corner reduction follows the CPS derivation above and the cited boundary-variation identity.
- **Not verified:** a general interacting Darboux transformation, numerical evaluation of all $V,W$ mode kernels, or a complete mixed-sector spectral matrix. No infinite-mode convergence or exceptional-mass extension is claimed.
