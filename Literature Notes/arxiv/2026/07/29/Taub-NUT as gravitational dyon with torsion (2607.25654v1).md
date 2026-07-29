---
paper id: 2607.25654v1
title: Taub-NUT as gravitational dyon with torsion
authors:
  - Dmitri Gal'tsov
  - Rostom Karsanov
publication date: 2026-07-28T12:41
abstract: |-
  The paper interprets the distributional Misner strings of Taub--NUT geometry through a regular torsionful Cartan connection. Torsion reproduces the singular Komar flux, replaces ill-defined delta-function-squared curvature by linear distributional Einstein and dual-Einstein sources, and identifies the strings with stationary Weyssenhoff spin-fluid beams.
comments: "5 pages, 3 figures"
url: https://arxiv.org/abs/2607.25654v1
summary: "A compact Einstein--Cartan account of how Misner-string Komar flux, Burgers holonomy, NUT dual charge, and spin-fluid sources fit together."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T1-charge`, `T1-boundary`, `T2-model`.

The useful mechanism is distributional rather than asymptotic: the same defect appears as singular Komar flux in a torsionless description, as a Burgers translation around the polar axis, and as a delta-supported torsion two-form for a regular Cartan connection.

## Distributional Komar forms on the Misner strings

The Taub--NUT one-form contains $d\varphi$, and distributionally

$$
d\,d\varphi
=
2\pi\delta^2(\mathbf x)\,dx\wedge dy.
$$

The Komar form $K=dk$ must therefore be split into a regular bulk part and a singular string part. For the azimuthal Killing field, the source gives

$$
\mathcal K^s_{(\varphi)}
=
-8\pi n\lambda\,
\delta^2(\mathbf x)\,dx\wedge dy,
$$

and for the dual form,

$$
\widetilde{\mathcal K}^s_{(\varphi)}
=
-8\pi r\lambda\,
\delta^2(\mathbf x)\,dx\wedge dy.
$$

The lateral and transverse fluxes of a northern Misner-string cylinder satisfy

$$
\Phi_L(r)=-\Phi_\perp(r)=8\pi r\lambda,
\qquad
\Phi_\perp(r_H)=0.
$$

Their closed-surface sum vanishes. Thus the divergent “string angular momentum” obtained from the lateral flux alone is not a net ADM angular momentum; the force lines close through the transverse surface and horizon. The two strings' fictitious densities approach

$$
\lambda_J^s(\infty)=s\,\frac n2,
\qquad
s=\pm1,
$$

and cancel in the total nonrotating Taub--NUT solution.

## Burgers translation around the axis

Inside the chronosphere, the adapted spacelike azimuthal vector near the north/south string is

$$
\xi^s
=
\partial_\varphi-2ns\,\partial_t.
$$

Transporting it around the polar axis produces the time translation

$$
\delta x^\mu
=
-4\pi ns\,\delta^\mu_t.
$$

This is interpreted as the Burgers vector of a spacetime dislocation. In a Cartan description it is the integrated torsion:

$$
\Delta x^\mu
=
-\frac12
\int T^\mu{}_{\nu\lambda}\,
dF^{\nu\lambda}.
$$

The nonclosure of the loop is therefore the holonomy version of the same string defect that appears in the Komar form.

## Levi--Civita singularity versus a torsionful connection

Choose the orthonormal coframe

$$
e^0
=
F(dt+2n\cos\theta\,d\varphi),
\qquad
F^2=\frac{\Delta}{\Sigma}.
$$

The first Cartan equation is

$$
de^a+\omega^a{}_b\wedge e^b=T^a.
$$

Because of $d\,d\varphi$, the coframe derivative contains

$$
(de^a)_{\rm sing}
=
\delta^a_0\,4\pi nsF\,
\delta^2(\mathbf x)\,dx\wedge dy.
$$

There are two descriptions:

1. set $T^a=0$ and allow a singular Levi--Civita connection;
2. choose a regular connection and let torsion cancel the singular coframe derivative.

In the first description, the source's Einstein tensor contains products such as
$[\delta^2(\mathbf x)]^2$. These products are not canonically defined as Schwartz distributions and require a regulator; they are the main reason not to treat the torsionless string source as a rigorous local stress tensor.

## Regular Cartan connection and localized torsion

For the regular connection constructed in the paper, the only coordinate-basis torsion component is

$$
\boxed{
T^t{}_{xy}
=
4\pi sn\,\delta^2(\mathbf x)
}.
$$

The curvature two-form is

$$
\mathcal R^a{}_b
=
d\omega^a{}_b
+\omega^a{}_c\wedge\omega^c{}_b.
$$

The resulting Einstein tensor is linear, rather than quadratic, in the distribution:

$$
G^0{}_0
=G^1{}_1
=
-4\pi\frac{\lambda_m}{\Sigma}
\delta^2(\mathbf x),
\qquad
\lambda_m=-\frac{n^2\Delta}{\Sigma^2}.
$$

The torsionful Bianchi identity

$$
dT^a+\omega^a{}_b\wedge T^b
=
\mathcal R^a{}_b\wedge e^b
$$

defines the dual source. With

$$
R_{abcd}+R_{adbc}+R_{acdb}
=
8\pi\Theta_{am}\epsilon^m{}_{bcd},
$$

the dual Einstein tensor has

$$
\widetilde G^0{}_0
=
\widetilde G^1{}_1
=
-4\pi\frac{\lambda_n}{\Sigma}
\delta^2(\mathbf x).
$$

The gravielectric/gravimagnetic duality acts as an $SO(2)$ rotation of the two string densities $\lambda_m$ and $\lambda_n$.

## Einstein--Cartan spin-fluid source

The algebraic Einstein--Cartan equation is

$$
T^\sigma{}_{\mu\nu}
+\delta^\sigma_\mu T^\lambda{}_{\nu\lambda}
+\delta^\sigma_\nu T^\lambda{}_{\mu\lambda}
=8\pi\tau^\sigma{}_{\mu\nu}.
$$

The torsion trace vanishes for the displayed component, so

$$
\tau^t{}_{xy}
=s\,\frac n2\delta^2(\mathbf x).
$$

For a stationary Weyssenhoff fluid,

$$
\tau^\sigma{}_{\mu\nu}
=s_{\mu\nu}u^\sigma,
\qquad
u^t=\frac1F,
$$

and therefore

$$
s_{xy}(r)
=
s\,\frac n2F\,
\delta^2(\mathbf x).
$$

At infinity this reproduces the fictitious Komar spin density. The nonzero energy density and longitudinal pressure obey

$$
\varepsilon=-p
=
\frac{\lambda_m}{2\Sigma}
\delta^2(\mathbf x),
$$

so each string resembles a spin-carrying cosmic-string beam with position-dependent negative tension.

## Torsion reconstructs the Komar defect

For a Killing one-form $k=k_ae^a$,

$$
\boxed{
dk
=
Dk_a\wedge e^a+k_aT^a
}.
$$

For the timelike Killing field, the first term reproduces the regular bulk Komar two-form. The second gives

$$
k_aT^a
=
-4\pi sn\frac{\Delta}{\Sigma}
\delta^2(\mathbf x)\,dx\wedge dy,
$$

which is precisely the singular Misner-string term. This identity is the paper's cleanest bridge between the charge-flux and Einstein--Cartan descriptions.

## Reuse and limitations

- The analysis provides a defect-level interpretation of NUT charge and is relevant to mass/NUT duality and gravitational magnetic charges.
- The local source is distributional. Products, pullbacks to the string, and integrations by parts must be defined by a regularization or current formalism.
- The torsion is introduced as a nondynamical connection choice. The paper does not derive it from a specified microscopic spin-matter action.
- Closed timelike curves and global time identifications are not removed by the local Cartan rewrite.
- The rotating Kerr--NUT flux picture is shown but not developed analytically in the main text.

## Verification boundary

### Checked

- The flux-balance arithmetic gives zero total angular momentum once lateral, transverse, and horizon pieces are included.
- Integrating $T^t{}_{xy}=4\pi sn\delta^2(\mathbf x)$ reproduces the Burgers translation $-4\pi sn$ with the paper's oriented-area convention.
- The Einstein--Cartan algebra independently gives
  $\tau^t{}_{xy}=sn\delta^2/2$ and, using $u^t=1/F$,
  $s_{xy}=snF\delta^2/2$.
- Substitution of the first Cartan equation into $d(k_ae^a)$ reproduces
  $dk=Dk_a\wedge e^a+k_aT^a$.

### Blocked

- The explicit torsionful spin connection, curvature two-forms, and Einstein/dual-Einstein tensors were followed from the source but not independently reproduced in xAct.
- No regulator was supplied for the delta-function-squared terms in the singular Levi--Civita description.

### Failed

- No independently attempted algebraic step failed. Interpreting the unregularized $[\delta^2]^2$ terms as an ordinary stress tensor would be mathematically unjustified.
