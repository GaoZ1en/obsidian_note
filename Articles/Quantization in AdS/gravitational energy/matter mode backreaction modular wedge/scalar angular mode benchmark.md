# Massless Angular-Momentum Scalar Benchmark

## Result

The lowest massless complex scalar with nonzero angular momentum provides a
rotating Level-5 benchmark.  Its backreaction contains a genuine
$k_{t\phi}$ shift, but the smooth-wedge and finite-wall identities remain
exact:

$$
\boxed{
H_{\xi_A,T}^{\infty,(2)}
=H_{\xi_A}^{\mathrm m,(2)}
+\frac{L_{\gamma_A}^{(2)}}{4G}
}
$$

for every $0<a<\pi/2$.  Transparent two-sided wall matching cancels the
matter and gravitational interface sources and symplectic fluxes even with
off-diagonal induced-metric data.  In the fused limit the artificial-wall
generator again vanishes by Einstein--Hilbert/descent cancellation, while
the separate wall-removal corner becomes the RT response.  Rotation creates
a new local Hayward/Harlow--Wu density already on the symmetric $\tau=0$
cut; it is odd along the cut and hence integrates to zero.

## 1. Scalar mode and conventions

Use the complex-scalar action and gravitational conventions of
`scalar single mode benchmark.md`, with

$$
\Phi
=\varepsilon\mathcal A
\frac{r}{(1+r^2)^{3/2}}e^{-3it+i\phi}.
\tag{1.1}
$$

The nonzero stress-tensor components are

$$
T_{tt}^{(2)}
=\frac{2\mathcal A^2(1+2r^2)}{(1+r^2)^2},
\qquad
T_{rr}^{(2)}
=\frac{4\mathcal A^2r^2}{(1+r^2)^4},
$$

$$
T_{t\phi}^{(2)}
=-\frac{6\mathcal A^2r^2}{(1+r^2)^3},
\qquad
T_{\phi\phi}^{(2)}
=\frac{2\mathcal A^2r^4(7-2r^2)}{(1+r^2)^4}.
\tag{1.2}
$$

The exact KG norm and global charges are

$$
(\Phi,\Phi)_{\mathrm{KG}}=\pi\mathcal A^2,
\qquad
E_{\mathrm m}^{(2)}=3\pi\mathcal A^2,
\qquad
H_{\partial_\phi}^{\mathrm m,(2)}=-\pi\mathcal A^2.
\tag{1.3}
$$

The last sign follows the project charge orientation: for the phase
$e^{+i\phi}$, unit KG norm $\mathcal A^2=1/\pi$ gives
$(E,H_{\partial_\phi})=(3,-1)$.

## 2. Rotating metric response

Use rotating polar--areal gauge,

$$
ds^2=-e^{2\lambda\delta_2}Fdt^2+\frac{dr^2}{F}
+r^2(d\phi+\lambda\Omega_2dt)^2,
\qquad
F=1+r^2+\lambda f_2,
$$

where $\lambda=\kappa_{\mathrm p}^2\varepsilon^2$.  Regularity at the
centre, fixed boundary time and a fixed nonrotating boundary frame give

$$
f_2=-\mathcal A^2\frac{r^2(2+3r^2)}{(1+r^2)^2},
\qquad
\delta_2=-\mathcal A^2\frac{1+2r^2}{(1+r^2)^3},
$$

$$
\Omega_2=-\frac{\mathcal A^2}{2}
\frac{2+r^2}{(1+r^2)^2}.
\tag{2.1}
$$

Equivalently,

$$
k_{tt}^{(2)}
=\mathcal A^2\frac{2+6r^2+3r^4}{(1+r^2)^2},
\qquad
k_{rr}^{(2)}
=\mathcal A^2\frac{r^2(2+3r^2)}{(1+r^2)^4},
$$

$$
k_{t\phi}^{(2)}
=-\frac{\mathcal A^2r^2(2+r^2)}{2(1+r^2)^2},
\qquad
k_{\phi\phi}^{(2)}=0.
\tag{2.2}
$$

The asymptotic data are

$$
k_{tt}^{(2)}\to3\mathcal A^2,
\qquad
r^4k_{rr}^{(2)}\to3\mathcal A^2,
\qquad
k_{t\phi}^{(2)}\to-\frac{\mathcal A^2}{2}.
\tag{2.3}
$$

The constant $t\phi$ datum is the scalar-sourced angular charge, not an
independently added rotating vacuum solution.  xCoba verifies all components
of the sourced linearized Einstein equation and stress conservation.

## 3. Smooth-wedge charges

On $t=0$, the boundary modular vector has no angular component.  The
renormalized outer charge is therefore

$$
H_{\xi_A,T}^{\infty,(2)}
=6\pi\mathcal A^2(1-a\cot a).
\tag{3.1}
$$

Direct integration of the matter modular density gives

$$
H_{\xi_A}^{\mathrm m,(2)}
=6\pi\mathcal A^2(1-a\cot a)
-\frac{2\pi\mathcal A^2}{15}
(14+\cos2a)\sin^2a.
\tag{3.2}
$$

The metric variation of the background RT curve is

$$
L_{\gamma_A}^{(2)}
=\frac{\mathcal A^2}{15}(14+\cos2a)\sin^2a,
\tag{3.3}
$$

so $L^{(2)}/(4G)=2\pi L^{(2)}$ in the coefficient conventions used here,
and (3.1)--(3.3) prove the boxed identity.  For unit KG norm and
$a=\pi/4$,

$$
\left\{
H_{\xi_A,T}^{\infty,(2)},
H_{\xi_A}^{\mathrm m,(2)},
\frac{L_{\gamma_A}^{(2)}}{4G},
H_{\partial_\phi}^{(2)}
\right\}
=\left\{
6-\frac{3\pi}{2},
\frac{76}{15}-\frac{3\pi}{2},
\frac{14}{15},
-1
\right\}.
\tag{3.4}
$$

The local covariant calculation independently verifies

$$
\nabla_\nu C_{\xi_A}^{\mu\nu}[k^{(2)}]
=\xi_{A\nu}\mathcal E^{(1),\mu\nu}[k^{(2)}]
=\xi_{A\nu}T^{(2),\mu\nu}
\tag{3.5}
$$

in all components.  Its outer density agrees pointwise with Brown--York,
and its oriented inner density is minus $2\pi$ times the RT-length density.

## 4. Finite wall with shift data

Pull (1.2) and (2.2) back to
$\mathcal H_{\chi_0}=\{\chi=\chi_0\}$.  Transparent matching imposes

$$
\gamma_{ab}^+=\gamma_{ab}^-,
\qquad
\Pi_+^{ab}+\Pi_-^{ab}=0,
\qquad
\Phi_+=\Phi_-,
\qquad
\pi_++\pi_-=0.
\tag{4.1}
$$

The source and symplectic-flux cancellations include the off-diagonal
$\delta\gamma_{\tau u}$ and $\delta\Pi^{\tau u}$ data.  Thus the transparent
interface statement is not restricted to diagonal perturbations.

### 4.1 Fused corner and artificial-wall generator

On the symmetric cut, the fused length density is

$$
\ell_0(u)
=\frac{\mathcal A^2\sin^2a}{2}
\operatorname{sech}^2u\tanh^2u
\left(3-\sin^2a\operatorname{sech}^2u\right),
\tag{4.2}
$$

with

$$
\int_{-\infty}^{\infty}du\,\ell_0(u)
=\frac{\mathcal A^2}{15}(14+\cos2a)\sin^2a.
\tag{4.3}
$$

Hence the separate wall-removal boost corner is exactly the RT response.
The artificial-wall generator instead has the fused component limits

$$
\mathcal H_{\mathrm{BY}}\to0,
\qquad
\mathcal H_{\mathrm{EH}}\to-2\pi\ell_0(u),
\qquad
\mathcal H_{\mathrm{descent}}\to+2\pi\ell_0(u).
\tag{4.4}
$$

The GHY-source plus length transgression again has neither a constant nor a
linear term in $\chi_0$.  Its quadratic coefficient is

$$
\begin{aligned}
[\chi_0^2]\,\mathcal T_{\mathrm{wall}}
={}&\frac{\pi\mathcal A^2\sin^2a}{16}
\operatorname{sech}^6u\,
\bigl[
13-2\cos4a
-2\cos2a(-5+\cosh2u)\\
&\hspace{37mm}+26\cosh2u+3\cosh4u
\bigr].
\end{aligned}
\tag{4.5}
$$

It has matching $e^{-2|u|}$ tails.  The collar matter density begins as

$$
\mathcal D_{\mathrm m}(\chi,u)
=4\pi\mathcal A^2\sin^4a\,\chi
\left[
2\operatorname{sech}^4u
-\sin^2a\operatorname{sech}^6u
\right]+O(\chi^2),
\tag{4.6}
$$

and therefore integrates to $O(\chi_0^2)$.

### 4.2 Rotation-odd endpoint density

Unlike both earlier $\tau=0$ benchmarks, the rotating response has
$k_{\tau\chi}\neq0$ locally on the symmetric cut.  With the project's
ordered-normal convention, the fused Hayward coefficient is

$$
\mathfrak j_{\mathrm H,0}(u)
=\frac{\mathcal A^2\sin^2a}{2}\tanh u
\left[
\operatorname{sech}^2u
+\sin^2a\operatorname{sech}^4u
\right].
\tag{4.7}
$$

It is odd in $u$, has opposite $e^{-2|u|}$ tails, and obeys

$$
\int_{-\infty}^{\infty}du\,\mathfrak j_{\mathrm H,0}(u)=0.
\tag{4.8}
$$

The Harlow--Wu fixed-cut coefficient is one half of (4.7) in the same
orientation.  As before, the fully Dirichlet Hayward joint and the
Harlow--Wu endpoint one-form belong to different variational problems and
are compared, not added.

## Verified

- the massless Klein--Gordon equation, KG norm, energy and angular charge;
- the angular-flux stress tensor and its conservation;
- the regular rotating metric response and Brown--Henneaux data;
- all components of the sourced linearized Einstein equation;
- Brown--York energy and angular momentum at infinity;
- exact matter modular primitives and integral;
- direct RT density, primitive and integral;
- the smooth outer-equals-matter-plus-area identity;
- all components of the local rotating Noether--Stokes identity;
- transparent finite-wall source and flux cancellation including
  off-diagonal data;
- the fused wall source, length, EH/descent and collar limits;
- the rotation-odd Hayward density, its zero integral, and the distinct
  Harlow--Wu coefficient.

The companion regressions pass 61 exact checks: 31 in the smooth-wedge
script and 30 in the finite-wall script.

## Assumptions

- classical minimally coupled complex scalar with the displayed action
  normalization;
- the single $(n,m)=(0,1)$ mode (1.1), with phase $e^{+i\phi}$;
- unit AdS radius and $\kappa_{\mathrm p}^2=8\pi G$;
- rotating polar--areal gauge, regular centre, fixed boundary time and
  nonrotating boundary frame;
- no added homogeneous mass, rotation or boundary-graviton solution;
- fixed interval anchors, $0<a<\pi/2$, and the $t=0$ smooth-wedge charge
  cut;
- transparent two-sided finite-wall matching and the original
  global-cutoff-before-wall-removal order;
- fixed wall embedding; the wall shape is not varied;
- the project ordered-normal convention for (4.7).

## Not verified

- a theorem for arbitrary scalar modes or arbitrary linearized solutions;
- a moving embedding with simultaneous wall-shape and endpoint variations;
- a single-sided reflecting wall, wedge factorization or an independent
  wedge Hilbert-space construction;
- matter loops, bulk entropy or quantum JLMS.

## Reproduction

Run

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_angular_mode_backreaction.wl"
```

The intended output passes all 31 checks and ends with

```text
a=Pi/4 unit-KG values: {6 - (3*Pi)/2, 76/15 - (3*Pi)/2, 14/15, -1}
```

Run

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_angular_mode_inner_wall.wl"
```

The intended output passes all 30 finite-wall checks.
