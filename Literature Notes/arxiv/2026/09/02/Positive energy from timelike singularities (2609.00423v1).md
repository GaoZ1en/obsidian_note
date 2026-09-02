---
paper id: 2609.00423v1
title: Positive energy from timelike singularities
authors:
  - Fernando Ruiz Ruiz
publication date: 2026-08-31T22:00
abstract: |-
  The paper regulates naked timelike singularities by an inner timelike cutoff and assigns them a contribution to the on-shell gravitational Hamiltonian. It applies the proposal to AdS--Kasner geometries, a sign-reversed AdS family, and Schwarzschild geometries, claiming positive total energies and degeneracy of the negative-mass branches with the reference vacuum.
comments: "12 pages, 1 figure"
url: https://arxiv.org/abs/2609.00423v1
summary: "The finite-cutoff inner-boundary construction is useful, but the printed background subtraction does not impose the Hawking--Horowitz lapse matching and therefore gives incorrect energies."
tags: []
---

Back to [[2026_09_02_overview]].

# Why this paper is high priority

This is directly relevant to an action-first treatment of finite and singular boundaries. Its central object is not an asymptotic mass formula inserted by hand, but the on-shell Hamiltonian obtained from the Einstein--Hilbert plus Gibbons--Hawking--York action after introducing an inner timelike regulator. The useful part is the finite-cutoff decomposition into outer and inner boundary terms. The central numerical energy claims, however, do not survive the reference-boundary matching required by the cited Hawking--Horowitz prescription.

Reason codes: `T1-charge`, `T1-boundary`, `T1-Wald-CPS`.

# Source map

The paper is a short note without numbered section headings. Its argument has four blocks:

1. introduce a timelike cutoff compatible with constant-time slices and propose (E=E_\infty+E_{\mathrm{sing}});
2. apply it to the AdS--Kasner family (f(z)=1-(z/z_0)^n), including the planar black hole and AdS soliton;
3. repeat the calculation for (f_*(z)=1+(z/z_0)^n), whose (p_0=1) member is the negative-mass planar AdS branch;
4. repeat it for positive- and negative-mass Schwarzschild metrics.

There are no appendices. The bibliography supplies the essential external convention: Hawking--Horowitz, *The gravitational Hamiltonian, action, entropy and surface terms*, arXiv:gr-qc/9501014.

# Geometry, regulator, and action convention

The bulk theory is Einstein gravity in (n+1) dimensions,

$$
R_{\mu\nu}-\frac12 g_{\mu\nu}R+\Lambda g_{\mu\nu}=0,
\qquad
\Lambda=-\frac{n(n-1)}{2\ell^2}.
$$

For a stationary spacetime with a naked timelike singularity, the paper excises the singular region by a timelike hypersurface (\Sigma^\epsilon). A constant-time slice (\Sigma_t) then has two codimension-two boundaries,

$$
S_t^\infty=\Sigma_t\cap\Sigma^\infty,
\qquad
S_t^\epsilon=\Sigma_t\cap\Sigma^\epsilon.
$$

The slices meet both timelike boundaries orthogonally. At finite cutoff the proposed Hamiltonian is a signed sum of the two boundary contributions. This regulator-first step is the part worth retaining: the lapse, induced metric, outward normal, extrinsic curvature, and reference subtraction must all be defined before the singular limit is taken.

The cited Hawking--Horowitz physical action is

$$
I_P[g]=I[g]-I[g_0],
$$

with the physical and reference solutions inducing the same fields on the regulating boundary. In Hamiltonian form, Hawking--Horowitz explicitly labels the reference slices so that

$$
N_0=N
$$

on the boundary. For zero shift, the on-shell boundary energy is therefore

$$
E_B=-\frac{1}{8\pi G}\int_{S_B}N\sqrt{\sigma}\,(k-k_0),
$$

with the orientation sign carried by (k) and (k_0). The paper instead evaluates the two terms with different lapses (N) and (\widetilde N), after matching only the spatial metric (\sigma_{ij}). That is the decisive mismatch.

# AdS--Kasner branch

## Metric and parameter domain

The family is

$$
ds^2=\frac{\ell^2}{z^2}\left[-f^{p_0}dt^2+\frac{dz^2}{f}
+\sum_{i=1}^{n-1}f^{p_i}(dx^i)^2\right],
\qquad
f=1-x,
\qquad
x=\left(\frac{z}{z_0}\right)^n,
$$

with

$$
\sum_{a=0}^{n-1}p_a=1,
\qquad
\sum_{a=0}^{n-1}p_a^2=1,
\qquad
-1+\frac2n\le p_0\le1.
$$

The generic endpoint (z=z_0) is a timelike Kasner singularity. The two regular special cases are (p_0=1), the planar AdS black hole, and one spatial (p_i=1), the AdS soliton after fixing the corresponding circle period.

## Finite-cutoff boundary data

On (S_t^z),

$$
N=\frac{\ell}{z}f^{p_0/2},
\qquad
\sqrt\sigma=\frac{\ell^{n-1}}{z^{n-1}}f^{(1-p_0)/2}V_{n-1}.
$$

With outward orientation chosen separately at the outer and inner boundaries,

$$
k=\mp\frac{z\sqrt f}{2\ell}\,\sigma^{ij}\partial_z\sigma_{ij}.
$$

The displayed formula for (k) is consistent, but the prose immediately below it calls (n^z=\mp z\sqrt f/(2\ell)) a unit normal. The unit normal is instead (n^z=\mp z\sqrt f/\ell); the factor (1/2) belongs to (k=\tfrac12 n^z\sigma^{ij}\partial_z\sigma_{ij}).

The physical boundary integral is

$$
\int_{S_t^z}N\sqrt\sigma\,k
=\pm\frac{V_{n-1}\ell^{n-1}}{2z^n}
\left[2(n-1)+(2-n-np_0)x\right].
$$

Matching the spatial circles in the AdS reference gives

$$
\widetilde L_i=f^{p_i/2}L_i.
$$

The paper then uses (\widetilde N=\ell/z), producing

$$
\int_{\widetilde S_t^z}\widetilde N\sqrt{\widetilde\sigma}\,\widetilde k
=\pm\frac{V_{n-1}\ell^{n-1}}{z^n}(n-1)f^{(1-p_0)/2}.
$$

This matches the codimension-two spatial geometry but not the full timelike boundary data when (p_0\ne0). Imposing the Hawking--Horowitz condition (N_0=N) replaces the last factor by

$$
f^{(1-p_0)/2}f^{p_0/2}=\sqrt f.
$$

## Printed and matched-lapse energies

Define

$$
C=\frac{V_{n-1}\ell^{n-1}}{16\pi Gz_0^n}.
$$

The paper prints

$$
E_\infty^{\rm printed}=-C(1+p_0-2np_0),
\qquad
E_{\rm sing}=Cn(1-p_0),
$$

and hence

$$
E_{\rm Kas}^{\rm printed}=C(n-1)(1+p_0).
$$

With matched lapse, the outer term is instead

$$
E_\infty^{\rm HH}=C(np_0-1),
$$

while the inner reference term still vanishes as (z\to z_0), so

$$
E_{\rm sing}^{\rm HH}=Cn(1-p_0),
\qquad
E_{\rm Kas}^{\rm HH}=C(n-1).
$$

Thus the studied singular AdS--Kasner branch remains positive under this corrected subtraction, but the claimed (p_0)-dependence is false. The (p_0=1) outer energy becomes (C(n-1)), the standard planar black-hole mass, rather than the paper's doubled value (2C(n-1)). The (p_0=0) soliton result is unchanged because (N=\widetilde N) there.

# Sign-reversed AdS branch

The second family replaces (f) by

$$
f_*=1+x.
$$

It has a timelike singularity as (z\to\infty). The printed energies are

$$
E_\infty^{\rm printed}=C(1+p_0-2np_0),
\qquad
E_{\rm sing}=C(n+np_0-2),
$$

and the paper concludes (E^{\rm printed}=C(n-1)(1-p_0)). With matched lapse,

$$
E_\infty^{\rm HH}=C(1-np_0),
\qquad
E_{\rm sing}^{\rm HH}=C(n+np_0-2),
\qquad
E^{\rm HH}=C(n-1).
$$

The source first calls (p_0=0) the planar negative-mass black hole and later identifies (p_0=1). The latter is consistent with (g_{tt}=-f_*) and is the correct identification. Under the matched-lapse subtraction, this branch is not degenerate with AdS; its total energy is (C(n-1)).

# Schwarzschild branch

The metric convention is

$$
ds^2=-h(r)dt^2+\frac{dr^2}{h(r)}+r^2d\Omega_{n-1}^2,
\qquad
h(r)=1-\frac{m}{r^{n-2}}.
$$

The standard ADM mass in this convention is

$$
M=\frac{(n-1)V_{n-1}}{16\pi G}m.
$$

The rendered paper's equation (36) instead visibly prints a denominator (1\pi G), while its later claim (E_\infty=2M) only makes sense if equation (36) was intended to contain (16\pi G). It also states the horizon is at (r=m); in (n+1) dimensions it is at (r=m^{1/(n-2)}).

For the physical metric,

$$
N=\sqrt h,
\qquad
k=\pm\frac{(n-1)\sqrt h}{r}.
$$

The paper subtracts a reference term with (\widetilde N=1), obtaining

$$
E_\infty^{\rm printed}=\frac{(n-1)V_{n-1}}{8\pi G}m=2M.
$$

Using (N_0=N=\sqrt h) makes the relevant radial combination (r^{n-2}(h-\sqrt h)), rather than (r^{n-2}(h-1)). Therefore

$$
E_\infty^{\rm HH}=M.
$$

For (m<0), the inner term becomes (E_{\rm sing}^{\rm HH}=-2M), so

$$
E^{\rm HH}=-M=|M|>0,
$$

not zero. The statement that every negative-mass Schwarzschild geometry has the same energy as Minkowski is therefore false under the cited prescription.

# Local translation into the vault's boundary/CPS language

The reusable construction is a regulated region (M_\epsilon) with two timelike boundary components. Before taking a singular limit, one should keep the action and Hamiltonian data as

$$
S_{\rm phys}[g;g_0]
=S_{\rm EH}[g]+S_{\rm GHY}[g]
-S_{\rm EH}[g_0]-S_{\rm GHY}[g_0],
$$

with equality of the induced boundary fields, not merely equality of the spatial cut metric. In canonical language this means matching the lapse and shift that define the same boundary evolution vector. In covariant phase-space language the analogous warning is that a reference subtraction is boundary data: changing the normalization of the boundary time flow changes the Hamiltonian generator.

For later regional gluing work, the important separation is

$$
H_{\partial\Sigma_t}
=H_{S_t^\infty}+H_{S_t^\epsilon},
$$

with independent orientation signs but a common choice of boundary evolution field. The singular limit may be taken only after each finite-cutoff term and its reference matching are well defined.

# Verification log

- **Source-derived:** The metric families, Kasner constraints, finite-cutoff construction, boundary integrals, and printed equations (25)--(40) were reconstructed from the TeX source and visually checked on rendered PDF pages 5, 6, 9, and 10.
- **Checked:** The paper's printed asymptotic coefficients were independently reproduced from its own unmatched-lapse subtraction.
- **Checked:** Hawking--Horowitz arXiv:gr-qc/9501014, equations (2.12)--(2.14), explicitly requires the reference slices to be labelled so that (N_0=N) at the boundary and yields a common-lapse subtraction.
- **Checked:** Mathematica exactly reproduced the matched-lapse AdS--Kasner, sign-reversed AdS, and Schwarzschild coefficients, the standard planar and ADM masses, and all stated total-energy recombinations; the check file reports `OVERALL: PASS` for 11 residuals.
- **Failed:** The paper's claims that the planar black-hole energy is twice the standard value, that the sign-reversed (p_0=1) branch is degenerate with AdS, and that negative-mass Schwarzschild is degenerate with Minkowski all depend on an inadmissible lapse mismatch.
- **Failed:** The prose's unit normal carries an extra factor (1/2); equation (36) visibly has `1πG` instead of the consistent (16\pi G); the Schwarzschild horizon radius is misstated; and the sign-reversed branch inconsistently identifies the negative-mass black hole once as (p_0=0).
- **Not independently verified:** The global existence and stability interpretation of the singular geometries, the uniqueness of an admissible reference background for a two-boundary regulated region, and the broader claim that positive Hamiltonian energy diagnoses quantum stability.

# Bottom line

The statement should be rewritten as: **the paper gives a useful finite-cutoff inner-boundary Hamiltonian setup, but its quoted energies are not Hawking--Horowitz energies because the reference lapse is not matched. With the common-lapse subtraction, the tested singular branches still have positive total energy, while their printed parameter dependence and vacuum-degeneracy claims fail.**
