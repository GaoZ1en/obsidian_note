---
paper id: 2607.15496v1
title: Gauge-Unfixed Hamiltonian Casimir and Static Torsionful Sector in the Katanaev--Volovich Model
authors:
  - Jaime Manuel Cabrera
  - Jorge Mauricio Paulin Fuentes
publication date: 2026-07-16T22:55
abstract: |-
  The paper gives a gauge-unfixed Hamiltonian treatment of first-order Katanaev--Volovich gravity with torsion. It compares an extended Dirac--Bergmann embedding with Faddeev--Jackiw reduction, reconstructs the Katanaev/Poisson--Sigma Casimir from the reduced first-class constraint ideal, and uses that normalization to build a static torsionful branch and its thermodynamics.
comments: "37 pages"
url: https://arxiv.org/abs/2607.15496v1
summary: "A useful two-dimensional benchmark for separating local constraints, the global Poisson--Sigma Casimir, and boundary-dependent notions of energy; the main Casimir chain checks, but two source claims fail explicit verification."
tags: []
---

Back to [[2026_07_20_overview]].

# How to read this long paper

The paper has two intertwined claims that should be kept separate.

1. Sections 2--6 are a local canonical analysis. The first-order action already contains the natural pairs $(\omega_x,\varphi)$ and $(e_x^I,\varphi_I)$; the enlarged Dirac phase space only makes the auxiliary second-class sector explicit. Faddeev--Jackiw reduction is then meant as an independent check of the same reduced brackets.
2. Sections 6--7 extract a global Casimir and use it to normalize one static torsionful solution. This produces a mass *parameter*, not yet an ADM or covariant-phase-space charge, because no boundary conditions or differentiable boundary generators are supplied.

The efficient route is therefore Sections 2, 4, 6, and 7, followed by Appendices A--C. Appendix B matters because its advertised full inverse is not correct even on constant backgrounds, although the two inverse entries used for the reduced brackets survive. Appendix C is valuable: direct substitution confirms the displayed static representative.

## Source structure

- Section 1 motivates a gauge-unfixed comparison of the Dirac--Bergmann and Faddeev--Jackiw reductions.
- Section 2 fixes the $1+1$ conventions, derives the first-order action, and distinguishes its natural symplectic potential from the enlarged canonical embedding.
- Section 3 runs the full primary/secondary consistency algorithm.
- Section 4 separates first- and second-class constraints, constructs Dirac brackets, reorganizes the Hamiltonian, and discusses the gauge generator.
- Section 5 repeats the reduction in Faddeev--Jackiw/Montani--Wotzasek language.
- Section 6 derives the Casimir from the reduced first-class ideal and matches Katanaev and Poisson--Sigma normalizations.
- Section 7 constructs the static torsionful branch, horizons, surface gravity, entropy, and a Casimir-normalized first law.
- Appendix A gives the smeared rank calculation behind the constraint count.
- Appendix B lists the Faddeev--Jackiw matrices, zero modes, and a proposed inverse.
- Appendix C substitutes the static frame into every first-order equation.

# Fields, signs, and three notions of structure

Spacetime indices are $\mu,\nu=t,x$ and internal Lorentz indices are $I,J=0,1$, with

$$
\eta_{IJ}=\operatorname{diag}(+,-),\qquad
\varepsilon_{01}=+1,\qquad
\varepsilon^{01}=-1,\qquad
\epsilon^{tx}=+1.
$$

The independent first-order fields are

$$
(e^I{}_{\mu},\omega_\mu;\varphi,\varphi_I),
$$

where $e^I{}_{\mu}$ is the zweibein, $\omega_\mu$ is the Lorentz connection, and $(\varphi,\varphi_I)$ are target-space scalars. The curvature and torsion densities are

$$
F=\frac12\epsilon^{\mu\nu}(\partial_\mu\omega_\nu-\partial_\nu\omega_\mu),
\qquad
T^I=\frac12\epsilon^{\mu\nu}T^I{}_{\mu\nu}.
$$

To prevent a collision with the vault's notation, the polynomial called $E$ in the paper will be denoted

$$
E_{\mathrm{KV}}:=\alpha\varphi^2+\beta\varphi_I\varphi^I+\Lambda.
$$

It is a target-space potential, **not** the Peierls kernel $E=G_R-G_A$ used in the CPS notes.

There are also three different structures that the paper sometimes discusses in close succession:

- the canonical two-form read directly from the $1+1$ split;
- the reduced Dirac/Faddeev--Jackiw bracket after auxiliary constraints are eliminated;
- a possible boundary presymplectic form and associated charge, which the paper does not construct.

# First-order Katanaev--Volovich dynamics

The quadratic curvature--torsion action is rewritten as (paper Eq. (1c))

$$
\widetilde S
=\int d^2x\left[
\varphi F+\varphi_I T^I
-e\left(\alpha\varphi^2+\beta\varphi_I\varphi^I+\Lambda\right)
\right].
$$

Varying the four field species gives

$$
\epsilon^{\mu\nu}\left(
\partial_\nu\varphi_I+\varepsilon_{IJ}\omega_\nu\varphi^J
-\varepsilon_{IJ}e^J{}_{\nu}E_{\mathrm{KV}}
\right)=0,
$$

$$
\epsilon^{\mu\nu}\left(
\partial_\nu\varphi+\varepsilon^{IJ}\varphi_I e_{\nu J}
\right)=0,
$$

$$
F=2\alpha e\varphi,
\qquad
T^I=2\beta e\varphi^I.
$$

Eliminating $\varphi$ and $\varphi_I$ recovers the second-order quadratic action when the relevant couplings are nonzero. The $\beta=0$ formulas must instead be understood directly in the first-order theory: $\varphi_I$ becomes a multiplier imposing $T^I=0$; substituting $\beta=0$ into a second-order term proportional to $1/\beta$ is not meaningful.

## The natural symplectic potential

Up to the spatial total derivative

$$
-\partial_x(\varphi\omega_t+\varphi_I e_t^I),
$$

the $1+1$ split contains

$$
\Theta_\Sigma
=\int_\Sigma dx\left(
\varphi\,\delta\omega_x+\varphi_I\,\delta e_x^I
\right).
$$

Thus the minimal pairs are already

$$
(\omega_x,\varphi),\qquad(e_x^I,\varphi_I).
$$

The discarded total derivative is harmless on a closed slice or for compactly supported variations. On a slice with endpoints it is precisely the kind of term that enters differentiability and boundary charges; the paper does not choose boundary conditions or improve the generators there.

# Extended Dirac phase space

The enlarged embedding also treats $(\varphi,\varphi_I)$ as configuration variables. Besides the vanishing momenta of the temporal multipliers, it produces the auxiliary constraints

$$
\chi:=\Pi\approx0,
\quad
\chi_I:=\Pi_I\approx0,
\quad
\chi^x:=\Pi^x-\varphi\approx0,
\quad
\chi_I^x:=\Pi_I^x-\varphi_I\approx0.
$$

The secondary constraints reduce, after this sector is imposed strongly, to

$$
\Psi=\partial_x\varphi+\varepsilon^I{}_J e_x^J\varphi_I\approx0,
$$

$$
\Psi_I=\partial_x\varphi_I+\varepsilon_I{}^J\omega_x\varphi_J
-\varepsilon_{IJ}e_x^J E_{\mathrm{KV}}\approx0.
$$

The complete rank calculation gives six first-class and six second-class constraints in the extended phase space and no local propagating degrees of freedom. The consistency conditions also fix the multipliers of the auxiliary fields:

$$
\lambda=\varepsilon_I{}^J\varphi_J e_t^I,
$$

$$
\lambda^I=-\varepsilon^{IJ}\varphi_J\omega_t
+\varepsilon^I{}_J e_t^J E_{\mathrm{KV}}.
$$

This corrects the text around paper Eq. (22), where these multipliers are described as undetermined.

## Reduced brackets and gauge transformations

Eliminating the auxiliary second-class block gives exactly the brackets suggested by $\Theta_\Sigma$:

$$
\{\omega_x(x),\varphi(y)\}_{D}=\delta(x-y),
\qquad
\{e_x^I(x),\varphi_J(y)\}_{D}=\delta^I{}_J\delta(x-y).
$$

The reduced transformations are the nonlinear-gauge/Poisson--Sigma transformations generated by $\Psi$ and $\Psi_I$. Their closure on the connection-like variables uses the equations of motion, as expected for a field-dependent target-space Poisson tensor. The spatial transformations can be reproduced from the reduced brackets, but the temporal formulas are not independently established by the displayed Castellani chain: the paper does not define whether its $D_t$ absorbs all nonlinear terms.

Two local bracket formulas require correction. With the paper's conventions,

$$
\{\Phi_I(x),\Psi_J(y)\}
=-\eta_{IJ}\partial_y\delta(x-y)
+\left(\varepsilon_{IJ}\omega_y
+2\beta\varepsilon_{JK}\varphi_Ie_y^K\right)\delta(x-y),
$$

so the derivative term in paper Eq. (24) is missing $\eta_{IJ}$. The $e_x^K\chi_J^x$ term in paper Eq. (29) also has the wrong sign; the checked part is

$$
\{\gamma_I,\chi_J\}
=\varepsilon_{IK}\left[
2\beta\left(-e_x^K\chi_J^x+\varphi_J\chi^K\right)
-\delta^K_J\chi
\right]\delta.
$$

# Faddeev--Jackiw reduction and its limited agreement

The first-order Lagrangian can be placed directly in Faddeev--Jackiw form. Its initial degeneracy produces $\Psi$ and $\Psi_I$; after adjoining them and gauge-fixing the remaining null directions, the final symplectic matrix has generic rank $12$. Two entries of its inverse are

$$
[f^{(2)}]^{-1}_{\omega_x\varphi}=1,
\qquad
[f^{(2)}]^{-1}_{e_x^I\varphi_J}=\delta^I{}_J,
$$

which recover the reduced Dirac brackets above and the zero local-degree-of-freedom count.

The **full** inverse displayed in Appendix B is nevertheless not an inverse for generic fields. A constant-background Fourier-mode test, $\partial_x=ik$ and $\partial_y=-ik$, reduces the distributional matrix to an ordinary $12\times12$ matrix and already fails. Writing $e_x^I=(e_0,e_1)$ and $\varphi_I=(p_0,p_1)$, independent inversion gives, among other differences,

$$
G_{\mathrm{exact}}-G_{\mathrm{src}}
=\begin{pmatrix}0&-2\omega_x\\-2\omega_x&0\end{pmatrix},
$$

$$
H_{\mathrm{exact}}-H_{\mathrm{src}}
=2\beta(e_0p_0-e_1p_1)
\begin{pmatrix}0&-1\\1&0\end{pmatrix}.
$$

The source also sets some $\theta\alpha_I$ and $\alpha_I\alpha_J$ blocks to zero although the exact inverse does not. This defect does **not** invalidate the two canonical entries actually used in the main text, but it does invalidate Appendix B's stronger full-inverse claim.

# The Casimir from the reduced constraint ideal

Define the Lorentz scalar

$$
\rho:=\varphi_I\varphi^I,
$$

and seek $\mathcal C=\mathcal C(\varphi,\rho)$. Substitution of $\partial_x\varphi$ and $\partial_x\varphi_I$ from the two reduced constraints gives

$$
\partial_x\mathcal C
=\mathcal C_\varphi\Psi+2\mathcal C_\rho\varphi^I\Psi_I
+\left(2E_{\mathrm{KV}}\mathcal C_\rho-\mathcal C_\varphi\right)
\varepsilon_{IJ}\varphi^Ie_x^J.
$$

Because $e_x^J$ remains arbitrary, membership in the constraint ideal requires the characteristic equation

$$
\boxed{\mathcal C_\varphi=2E_{\mathrm{KV}}\mathcal C_\rho.}
$$

Its convenient representative is (paper Eq. (Casimir-DB))

$$
\boxed{
\mathcal C_{\mathrm{DB}}
=e^{2\beta\varphi}\varphi_I\varphi^I
+2\int^\varphi ds\,(\alpha s^2+\Lambda)e^{2\beta s}
}
$$

up to an additive constant and a regular reparametrization. The decisive identity is

$$
\partial_x\mathcal C_{\mathrm{DB}}
=2e^{2\beta\varphi}
\left(E_{\mathrm{KV}}\Psi+\varphi^I\Psi_I\right),
$$

so it is constant on each connected component of the constraint surface without imposing conformal or light-cone gauge.

With Katanaev's $\pi_{\mathrm K}=-\varphi$, $p^+p^-=\frac12p_ap^a$, $U_{\mathrm K}=2\beta$, and $V_{\mathrm K}=\alpha\pi_{\mathrm K}^2+\Lambda$, this becomes

$$
\mathcal C_{\mathrm{DB}}=2A_{\mathrm K}=2C_{\mathrm{PSM}}.
$$

For $\beta=0$ the integral representative has the finite limit

$$
\mathcal C_{\mathrm{DB}}
=\rho+\frac{2\alpha}{3}\varphi^3+2\Lambda\varphi.
$$

The explicit $\beta\neq0$ primitive differs from the lower-limit-$0$ integral by the field-independent constant

$$
\frac{\alpha+2\beta^2\Lambda}{2\beta^3};
$$

its smooth $\beta\to0$ limit therefore requires the matching $\beta$-dependent additive convention.

# Static torsionful representative

Set $X=\varphi=r$ and

$$
V(r)=\alpha r^2+\Lambda,
\qquad
w_\beta(r)=\int_0^r ds\,e^{2\beta s}V(s),
\qquad
\mathcal C_{\mathrm{DB}}=-2M_{\mathrm{Cas}}.
$$

For

$$
ds^2=N(r)dt^2-B(r)dr^2,
$$

the connection equation implies

$$
\rho=-g^{\mu\nu}\partial_\mu X\partial_\nu X=\frac1B.
$$

Writing $\rho=\xi$ and solving the Casimir relation yields

$$
\xi(r)=e^{-2\beta r}\left[-2M_{\mathrm{Cas}}-2w_\beta(r)\right],
$$

whereas the remaining field equations fix the Killing norm to

$$
\boxed{N(r)=e^{4\beta r}\xi(r),\qquad N(r)B(r)=e^{4\beta r}.}
$$

Thus $\xi$ is a Casimir-normalized radial field, not the metric Killing norm unless $\beta=0$. With

$$
e^0{}_t=e^{2\beta r}\sqrt\xi,
\quad
e^1{}_r=\xi^{-1/2},
\quad
\omega_t=-e^{2\beta r}E_{\mathrm{KV}},
\quad
\varphi_0=-\sqrt\xi,
\quad
\varphi_1=0,
$$

direct component substitution makes all four first-order equations vanish. In particular,

$$
\xi'=-2\left(V+\beta\xi\right),
\qquad
F=2\alpha e^{2\beta r}r,
\qquad
T^I=(-2\beta e^{2\beta r}\sqrt\xi,0).
$$

The normalized torsion satisfies

$$
\mathcal T_I\mathcal T^I
:=(e^{-1}T_I)(e^{-1}T^I)
=4\beta^2\xi.
$$

# Horizons and thermodynamic normalization

A horizon obeys $\xi(r_h)=0$, hence

$$
M_{\mathrm{Cas}}=-w_\beta(r_h),
\qquad
\frac{dM_{\mathrm{Cas}}}{dr_h}
=-e^{2\beta r_h}(\alpha r_h^2+\Lambda).
$$

For $\alpha>0$ and $\Lambda<0$, the stationary point lies at

$$
r_*=\sqrt{-\Lambda/\alpha},
\qquad
M_{\mathrm{ext}}=-w_\beta(r_*).
$$

The paper's statement that $0<M_{\mathrm{Cas}}<M_{\mathrm{ext}}$ always gives two horizons is correct for $\beta\ge0$ but incomplete for $\beta<0$. In the latter case

$$
m_\beta(\infty):=-w_\beta(\infty)
=\frac{\alpha+2\beta^2\Lambda}{4\beta^3},
$$

and a finite outer root additionally requires

$$
\boxed{
\max\{0,m_\beta(\infty)\}<M_{\mathrm{Cas}}<M_{\mathrm{ext}}.
}
$$

For example, $(\alpha,\Lambda,\beta,M)=(1,-1,-1,0.1)$ has $M_{\mathrm{ext}}\simeq0.35150$ and an inner root $r_-\simeq0.11207$, but no finite outer root because $M<m_\beta(\infty)=0.25$.

Using the actual metric rather than $\xi$ as a surrogate Killing norm gives

$$
\kappa
=\frac{|N'(r_h)|}{2\sqrt{NB}|_{r_h}}
=e^{2\beta r_h}|V(r_h)|,
$$

$$
T_{\mathrm{KV}}
=\frac{e^{2\beta r_h}|\alpha r_h^2+\Lambda|}{2\pi}.
$$

On the inner branch $V(r_h)<0$, the standard dilaton entropy

$$
S=2\pi\varphi_h=2\pi r_h
$$

then satisfies

$$
dM_{\mathrm{Cas}}=T_{\mathrm{KV}}\,dS.
$$

This verifies an algebraic first law for the chosen Casimir normalization. It does not establish that $M_{\mathrm{Cas}}$ is the Hamiltonian charge of an asymptotic time translation.

# Translation to the vault's CPS language

The clean local dictionary is

$$
\Theta_\Sigma
\longleftrightarrow
\int_\Sigma\theta,
\qquad
\Omega_\Sigma=\delta\Theta_\Sigma,
\qquad
(\Psi,\Psi_I)
\longleftrightarrow
\text{degenerate gauge directions after reduction}.
$$

The Casimir is a gauge-invariant label of connected reduced sectors. To turn it into a boundary charge one would still have to specify:

- the spatial boundary and falloffs;
- the boundary term that makes the smeared generator differentiable;
- the normalization of the asymptotic Killing vector;
- whether the corresponding surface variation is integrable;
- the reference/background subtraction.

This makes the paper a useful benchmark for the distinction

$$
\text{bulk constraint Casimir}
\neq
\text{already-normalized CPS/ADM charge}.
$$

# Concrete extensions

1. Put the model on an interval and retain the $1+1$ spatial total derivative. The endpoint variation should identify the exact improvement of the smeared $\Psi,\Psi_I$ generator.
2. Evaluate the improved generator on the static family and determine the condition under which its time-translation charge equals $M_{\mathrm{Cas}}$.
3. Correct Appendix B's full inverse and test whether the Montani--Wotzasek zero modes reproduce every temporal transformation with a precise distributional prescription.
4. Compare the two-horizon restriction above with the global range of the dilaton and the chosen asymptotic end, rather than inferring it from the local extremum alone.

# Verification log

## Checked

- Mathematica: elimination between the quadratic and first-order actions; the $1+1$ split up to its spatial boundary term; primary/secondary consistency; ranks $6+6$; absence of tertiary constraints; the second-class inverse and reduced brackets; the spatial gauge transformations and target-Poisson Jacobi identity.
- Mathematica: the Casimir PDE, its integral and explicit representatives, the ideal identity $\partial_x\mathcal C_{\mathrm{DB}}=2e^{2\beta\varphi}(E_{\mathrm{KV}}\Psi+\varphi^I\Psi_I)$, the Katanaev normalization, and the $\beta\to0$ limit after fixing the additive constant.
- Mathematica and xAct/xCoba: the static field-equation residuals, $NB=e^{4\beta r}$, surface gravity, the sample horizons, and the inner-branch first-law identity.
- Constant-mode matrix algebra: the final Faddeev--Jackiw matrix has generic rank $12$ and its two reduced canonical entries are correct.

## Blocked

- Appendix B does not give its Montani--Wotzasek zero mode componentwise, and no test-function or boundary prescription is fixed; its full distributional contraction cannot be reconstructed uniquely.
- The full extended-space ideal membership is stated only as $\mathcal O(\chi,\partial\chi)$ without its coefficients.
- Existence of the static representative is checked; uniqueness modulo Lorentz, coordinate, and integration freedoms is not proven.
- The Wald normalization of $S=2\pi\varphi_h$ is imported rather than derived from this paper's action with explicit boundary conventions.
- No boundary phase space is specified, so $M_{\mathrm{Cas}}$ is not independently verified as a finite CPS/ADM charge.

## Failed

- Paper Eq. (24) omits $\eta_{IJ}$ in a derivative term, paper Eq. (29) has the wrong sign in the $e_x^K\chi_J^x$ term, and the multiplier statement around Eq. (22) is incomplete.
- The full inverse in Appendix B fails direct multiplication by $f^{(2)}$ already on constant backgrounds; only the two inverse entries used for the reduced brackets survive.
- The stated two-horizon range fails for $\beta<0$ unless the additional lower bound $M_{\mathrm{Cas}}>m_\beta(\infty)$ is imposed.
