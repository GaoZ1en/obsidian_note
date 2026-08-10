---
paper id: 2608.07467v1
title: Quantum de Sitter and Analytically Continued Chern Simons Theory
authors:
  - Stephon Alexander
  - Kenneth Blakey
publication date: 2026-08-07T17:58
abstract: |-
  The paper proposes a Lefschetz-thimble definition of the analytically continued Chern--Simons/Kodama transform and studies it in flat FRW and diagonal Bianchi IX minisuperspace. The trace mode retains an Airy structure while the two shear modes are locally Gaussian-damped near a de Sitter saddle.
comments: "30 pages"
url: https://arxiv.org/abs/2608.07467v1
summary: "A useful finite-dimensional test of de Sitter Chern--Simons thimbles whose Airy and shear formulas are explicit, but whose field-theory contour, physical inner product, and nonperturbative gauge questions remain open."
tags: []
---

Back to [[2026_08_10_overview]].

This is a medium-priority note: the transferable content is the finite-dimensional contour problem and its trace/shear decomposition, not a completed construction of the quantum-gravity Hilbert space. The achieved claim tier is **minisuperspace polynomial identity plus local semiclassical saddle analysis**. The paper does not establish a full field-theory thimble, a physical inner product, or the non-inhomogeneous graviton spectrum.

## From the self-dual connection to a thimble-defined state

The connection and densitized triad are taken as

$$
\mathcal A=\Gamma+iK,
\qquad
\{A^i_a(x),E^b_j(y)\}
=\ell_P^2\delta_a^b\delta^i_j\delta^{(3)}(x-y),
$$

with $\Gamma$ and $K$ real $\mathfrak{su}(2)$-valued fields. With

$$
Y_{\rm CS}[\mathcal A]
=\int_\Sigma \operatorname{tr}\left(
\mathcal A\wedge d\mathcal A
+\frac23\mathcal A\wedge\mathcal A\wedge\mathcal A
\right),
\qquad
\kappa=\frac{3}{2\ell_P^2\Lambda},
\tag{3,7}
$$

the formal Kodama state is

$$
\Psi_{\rm K}[A]=\mathcal N e^{\kappa Y_{\rm CS}[A]}.
$$

The variational identity

$$
\frac{\delta Y_{\rm CS}}{\delta A^i_a}
=\epsilon^{abc}F^i_{bc}=2B^a_i
\tag{4}
$$

then turns the Hamiltonian constraint into the self-dual de Sitter relation

$$
F^i_{ab}[\mathcal A_*]
=-\frac{\Lambda}{3}\epsilon_{abc}E^{ci},
\qquad
\mathcal A_*^i=\Gamma^i(E)+i\sqrt{\frac{\Lambda}{3}}e^i.
\tag{22--23}
$$

The source-deformed holomorphic exponent is

$$
I[\mathcal A;J]
=\kappa Y_{\rm CS}[\mathcal A]+\int_\Sigma J\cdot\mathcal A,
\qquad
h=\operatorname{Re}I.
\tag{8,10}
$$

Its saddle equation,

$$
\kappa\epsilon^{abc}F^i_{bc}[\mathcal A]+J^{ai}=0,
\tag{21}
$$

identifies the de Sitter source as $J^{ai}=\ell_P^{-2}E^{ai}$. The paper defines the transformed state by choosing the de Sitter thimble,

$$
Z_{\rm K}[J]
=\int_{\mathcal J_*}\mathcal D\mathcal A\,e^{I[\mathcal A;J]}.
\tag{25}
$$

The general Picard--Lefschetz decomposition would instead be

$$
\mathcal C=\sum_\alpha n_\alpha\mathcal J_\alpha,
\qquad
n_\alpha=\langle\mathcal C,\mathcal K_\alpha\rangle\in\mathbb Z.
\tag{18}
$$

No intersection numbers are computed for the Lorentzian fibre

$$
\mathcal F_E=\{\Gamma(E)+iK:K\ \text{real}\}.
\tag{15}
$$

Thus $\mathcal C=\mathcal J_*$ is a proposed definition, not a demonstrated deformation of the original Lorentzian cycle. The downward flow is

$$
\frac{d\mathcal A_i}{ds}
=-\overline{\frac{\delta I}{\delta\mathcal A_i}},
\qquad
\frac{dh}{ds}=-\sum_i\left|\frac{\delta I}{\delta\mathcal A_i}\right|^2\le0,
$$

while $\operatorname{Im}I$ is constant along the flow. Appendix B associates the real and imaginary parts with Kapustin--Witten-type equations, but it does not construct the corresponding moduli-space equivalence.

## Flat FRW and the Airy transform

For $\mathcal A^i_a=c\delta^i_a$, $E^a_i=p\delta^a_i$, and $b=\operatorname{Im}c$, one has $\Gamma=0$ and $Y_{\rm CS}=-2iV_0b^3$. The transform reduces to

$$
Z_{\rm K}^{\rm MS}(p)
=\int_{\mathcal J_*^{\rm MS}}db\,
\exp\left[-i\frac{3V_0}{\ell_P^2}
\left(\frac{b^3}{\Lambda}-pb\right)\right].
\tag{27}
$$

With $b=-\eta z$ and $\eta^3=\ell_P^2\Lambda/(9V_0)$, the sum of the appropriate conjugate Airy cycles gives

$$
Z_{\rm K}^{\rm MS}(p)
=2\pi\eta\operatorname{Ai}(x),
\qquad
x=-\frac{3V_0p}{\ell_P^2}\eta.
\tag{28}
$$

For $p>0$, $x<0$ and the two real saddles

$$
b_\pm=\pm\sqrt{\frac{\Lambda p}{3}}
$$

are the expanding and contracting de Sitter branches. The real $\operatorname{Ai}$ combination uses both conjugate thimbles. A single expanding saddle gives one WKB branch, so the paper's later identification of a single expanding thimble directly with a real Airy function is not consistent without an additional contour prescription.

## The Bianchi IX Chern--Simons polynomial

The diagonal Bianchi IX ansatz is

$$
ds^2=-N^2dt^2+\sum_i a_i^2(\omega^i)^2,
\qquad
d\omega^i=\frac12\epsilon^{ijk}\omega^j\wedge\omega^k,
$$

$$
\mathcal A^i=f_i\omega^i,
\qquad
f_i=\frac{-\Gamma_i+ib_i}{2},
\qquad
p_i=\frac12a_ja_k,
\qquad
\{b_i,p_j\}=\delta_{ij}\frac{\ell_P^2}{V_c}.
$$

The reduced Chern--Simons functional is the cubic polynomial

$$
Y_{\rm CS}^{\rm IX}
=V_c\left(\sum_i f_i^2+2f_1f_2f_3\right).
\tag{30}
$$

On the real $b_i$ fibre,

$$
\operatorname{Re}Y_{\rm CS}^{\rm IX}
=\frac{V_c}{4}\left[
\sum_i(\Gamma_i^2-b_i^2)-\Gamma_1\Gamma_2\Gamma_3
+\sum_{\rm cyc}\Gamma_i b_jb_k
\right],
\tag{31}
$$

$$
\operatorname{Im}Y_{\rm CS}^{\rm IX}
=V_c\left[-\frac12\sum_i\Gamma_i b_i
+\frac14\sum_{\rm cyc}\Gamma_j\Gamma_kb_i
-\frac14b_1b_2b_3\right].
\tag{32}
$$

The crucial convention is that the descent uses the **full**

$$
I^{\rm IX}=\kappa\operatorname{Re}Y_{\rm CS}^{\rm IX}+iS^{\rm IX},
$$

not merely the phase $iS^{\rm IX}$. On the closed-FRW line $\Gamma_i=1$, $b_i=b$, the modulus is constant while the phase remains cubic. Away from that line, the modulus supplies real shear curvature.

## Trace and shear directions at the de Sitter saddle

At the symmetric point $\Gamma_i=1$, $p_i=p$, the expanding saddle obeys

$$
b_*^2=\frac{8\Lambda}{3}p-1.
\tag{37}
$$

Using

$$
v_{\rm tr}=\frac{(1,1,1)}{\sqrt3},
\quad
v_{{\rm sh},1}=\frac{(1,-1,0)}{\sqrt2},
\quad
v_{{\rm sh},2}=\frac{(1,1,-2)}{\sqrt6},
$$

the complex Hessian is

$$
M_{ij}=\frac{\kappa V_c}{4}
\left[(1-ib_*)J_{ij}-(3-ib_*)\delta_{ij}\right],
\tag{42}
$$

with eigenvalues

$$
M_{\rm tr}=-\frac{i\kappa V_cb_*}{2},
\qquad
M_{\rm sh}=\frac{\kappa V_c}{4}(-3+ib_*)
\quad\text{(twice)}.
\tag{43}
$$

The trace mode is purely oscillatory on the real fibre, whereas each shear mode has $\operatorname{Re}M_{\rm sh}=-3\kappa V_c/4<0$. The quoted descent angles

$$
\theta_{\rm tr}=-\frac\pi4,
\qquad
\theta_{\rm sh}=\frac12\arctan\frac{b_*}{3}
\tag{44}
$$

are local tangent directions. The straight line $e^{-i\pi/4}\mathbb R$ cannot be the entire cubic Airy contour because one end lies in a growing Stokes sector.

## Airy trace mode and Gaussian shear modes

Define the averaged discriminant variable

$$
\bar P=\frac13\sum_i\left[
\frac{8\Lambda}{3}p_i+\Gamma_j\Gamma_k-2\Gamma_i
\right].
\tag{48}
$$

At the symmetric point, $\bar P=b_*^2$. The trace integral has Airy argument

$$
x_{\rm IX}=-\left(\frac{3\kappa V_c}{4}\right)^{2/3}\bar P.
\tag{52}
$$

Thus $\bar P=0$ is the merger of the expanding and contracting saddles. With $b_i=b_*+u_i$ and $\sum_i u_i=0$,

$$
b_1b_2b_3
=b_*^3-\frac{b_*}{2}\sum_i u_i^2+u_1u_2u_3.
\tag{57}
$$

The local shear integral gives

$$
\frac{8\pi}{\kappa V_c\sqrt{9+b_*^2}}
\exp\left[-\frac{3\kappa V_c|\mathcal L_{\rm sh}|^2}
{8(9+b_*^2)}\right].
\tag{59}
$$

The source's displayed leading wavefunction retains only the exponential,

$$
\Psi_{\rm K}^{\rm IX}[p]
=\mathcal N\operatorname{Ai}(x_{\rm IX})
\exp\left[-\frac{3\kappa V_c|\mathcal L_{\rm sh}|^2}
{8(9+b_*^2)}\right].
\tag{60}
$$

But the Gaussian determinant in (59) depends on $p$ through $b_*^2$ and cannot be absorbed into a $p$-independent normalization. Equation (60) is therefore a local exponential profile, not the complete leading one-loop prefactor. The cubic $u_1u_2u_3$ term also couples the shear directions beyond the quadratic approximation.

## Reality conditions and the unproved Hilbert-space step

The proposed reality conditions are

$$
E^\dagger=E,
\qquad
\mathcal A+\mathcal A^\dagger=2\Gamma(E).
\tag{65}
$$

The Ashtekar--Horowitz--Friedman inner product is written schematically as

$$
\langle\Psi|\Psi\rangle_{\rm AHF}
=\int_{\mathcal C\times\bar{\mathcal C}}
\mathcal D\mathcal A\,\mathcal D\bar{\mathcal A}\,
e^{-S(\operatorname{Re}\mathcal A)}|\Psi[\mathcal A]|^2.
\tag{66}
$$

At the de Sitter saddle the paper obtains a finite formal value,

$$
\langle\Psi_{\rm K}|\Psi_{\rm K}\rangle_{\rm AHF}^{\rm leading}
=|\mathcal N|^2
\exp\left[2\kappa Y_{\rm CS}(\Gamma)
-\int_\Sigma e^i\wedge de^i\right].
\tag{67}
$$

Finiteness of the integrand at one saddle does not prove convergence or positivity of the doubled functional integral. Gauge volume, zero modes, BRST fixing, the determinant, and non-inhomogeneous modes are not treated.

## Source route and convention cautions

The source proceeds through the self-dual connection and Chern--Simons state (Section 2), Picard--Lefschetz/Kapustin--Witten relation (Section 3), flat-FRW Airy integral (Section 4), and the full Bianchi IX trace/shear calculation (Section 5), followed by reality conditions (Section 6). Appendices A--D expand the cubic reduction and Hessians. Appendix E is explicitly a work-in-progress numerical thimble study and reports neither completed integration nor convergence tests.

Two sign/normalization issues should be carried into any reuse:

- With $\widehat E=-\ell_P^2\delta/\delta\mathcal A$, the positive kernel $e^{+\ell_P^{-2}\int E\cdot\mathcal A}$ has eigenvalue $-E$, not $+E$. The transform convention and the ensuing Fourier sign are not mutually consistent.
- The text calls $T_i$ Hermitian while assigning a real totally antisymmetric triple trace. Standard Hermitian $\mathfrak{su}(2)$ generators instead give an explicit factor of $i$; the large-gauge shift coefficient is consequently not fixed without a clarified trace convention.

## Verification log

### Checked

- Mathematica reproduced the complex Hessian spectrum $\{-i\kappa V_cb_*/2,\,\kappa V_c(-3+ib_*)/4,\,\kappa V_c(-3+ib_*)/4\}$ and the real modulus-Hessian spectrum $\{0,-3V_c/4,-3V_c/4\}$.
- Mathematica reproduced the cubic trace shift and the Airy coefficient $|(3\kappa V_c/4)^{2/3}|$.
- Mathematica reduced the shear cubic under $u_3=-u_1-u_2$ and reproduced the real completed-square exponent $-3\kappa V_c|\mathcal L_{\rm sh}|^2/[8(9+b_*^2)]$.
- Direct differentiation confirms $dh/ds=-\sum_i|\partial_iI|^2\le0$ and $d(\operatorname{Im}I)/ds=0$ for the stated downward flow.

### Blocked

- The full Bianchi IX thimble, its Stokes jumps, and its intersection with the Lorentzian fibre are blocked by the unfinished numerical analysis in Appendix E.
- The field-theory extension is blocked by absent gauge fixing, functional determinants, inhomogeneous perturbations, and a complete reality-condition measure.
- A global no-hair statement cannot be inferred from the local shear Hessian.

### Failed

- A single expanding thimble does not by itself produce the real $\operatorname{Ai}$ used in (52) and (60); that combination requires both conjugate saddles.
- The global straight-ray contour claim fails the cubic Stokes-sector test: the quoted ray is only a local steepest-descent tangent.
- Equation (60) omits the $p$-dependent Gaussian determinant in (59), so it is not the complete leading prefactor.
- The representation-transform sign is inconsistent with the stated triad operator.
- The source retains draft defects, including placeholder bibliography entries and an explicitly unfinished Appendix E. These do not invalidate the checked finite-dimensional algebra, but they prevent treating the presentation as a completed field-theory construction.
