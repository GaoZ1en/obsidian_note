---
paper id: 2610.12559v1
title: Asymptotic AEther Misalignment and Universal-Horizon Mechanics
authors:
- Walter Arata
- Moustafa Ismail
- Stefano Liberati
- David Mattingly
- Luke Martin
- Giulio Neri
publication date: '2026-10-08'
abstract: Universal horizons trap even arbitrarily fast signals, providing a test of black-hole thermodynamics in theories
  with a preferred time direction. In Einstein--aether theory, this direction is defined by a dynamical field, the aether,
  that can remain non-aligned relative to stationary time at infinity. In particular, for asymptotically anti-de Sitter black
  holes, it was so far impossible to recover a first law of black-hole mechanics when such asymptotic tilt of the aether is
  present. Here, we resolve this issue for an exact family of static, spherically symmetric solutions. Using the covariant
  phase-space formalism, we identify the asymptotic tilt and the decaying part of the aether field as a boundary source and
  its conjugate response. Allowing both to vary independently obstructs the definition of an energy that generates time translations.
  Fixing either quantity, or imposing a relation between them, restores such an energy, while externally varying the boundary
  data introduces work into the first law. The energies obtained by fixing the source or its response are related by a Legendre
  transformation. At the universal horizon, heat includes both the metric area contribution and an irreducible aether energy
  flux. The resulting balance separates work at infinity from horizon heat and explains why the physical temperature cannot
  generally be inferred from the coefficient of an area variation in the black-hole mass.
comments: 27 pages, 1 figure
url: https://arxiv.org/abs/2610.12559v1
summary: The spherical Einstein–aether source/response pair obstructs time-translation integrability and fixes boundary-condition-dependent
  energies; horizon heat and global symmetry require further inputs.
tags: []
---

# Asymptotic AEther Misalignment and Universal-Horizon Mechanics

## Result and immediate use

The reusable result is a boundary canonical pair in the static spherical $c_{14}=0$ sector of Einstein–æther gravity. With $S=s\cdot\chi=\alpha r+\beta/r^2$, put $K=3c_{123}/(2G)$. At fixed bare action the time-translation surface one-form obeys
$$
\mathcal K_\chi=\delta M_K+\frac{c_{13}+3c_2}{2G}\beta\,\delta\alpha-\frac{c_{13}}G\alpha\,\delta\beta,
\qquad \delta\mathcal K_\chi=-K\,\delta\alpha\wedge\delta\beta.
$$
For $c_{123}\ne0$, a mass function is a Hamiltonian only after restricting the allowed boundary variations. This is a concrete test case for regional CPS: first specify the source/response symplectic flux, then choose boundary conditions or additional boundary variables. A counterterm alone cannot remove its field-space curl.

**Scope:** the spherical boundary calculation and ensemble algebra below are independently reproduced. The full nonspherical boundary variational problem, physical horizon heat interpretation imported from earlier work, and a globally regular realization of the reduced æther symmetry are not established here. Reason codes: `T1-Wald-CPS; T1-boundary; T1-charge`.

## Source map and how to read this long paper

Official sources: [versioned abstract](https://arxiv.org/abs/2610.12559v1), [PDF](https://arxiv.org/pdf/2610.12559v1), [TeX source](https://arxiv.org/src/2610.12559v1). The 27-page paper is treated in monograph mode because its boundary, charge and heat statements have distinct hypotheses. All sections and appendices were inspected in TeX and extracted PDF text. PDF pages 16, 18–21, 25 and 27 were rendered and visually checked; page numbers below are the printed numbers, one less than PDF page indices counted from one.

| Source tree | Purpose and dependencies |
|---|---|
| §1 Introduction | Misalignment obstructs identifying mass with thermal energy; motivates a boundary source/response pair. |
| §2 Theory and exact AdS black holes; 2.1 Action and couplings; 2.2 Solution and asymptotic parameters | Defines the action, regular branch, and distinction between bare and effective cosmological constants. Essential input for every later cancellation. |
| §3 Reduced action and the boundary canonical pair | Derives the radial equation, endpoint potential, two-form, counterterm and source work. Essential first reading. |
| §4 Four-dimensional CPS; 4.1 Boundaries, corners and Hamiltonians; 4.2 Asymptotic potential; 4.3 Surface-charge one-form | Gives the conditional boundary Hamiltonian and checks the reduced obstruction in the full metric plus æther surface variation. Essential; 4.1 is the general reference framework. |
| §5 Boundary conditions and Hamiltonians; 5.1 Dirichlet; 5.2 Neumann; 5.3 Mixed | Integrates the one-form only on specified boundary submanifolds. Essential. |
| §6 Universal-horizon balance and the open-system first law | Transports the conserved combination to the horizon and imports the physical heat split. Read after §5. |
| §7 Æther symmetry and boundary ensembles; 7.1 Relation to the æther charge | Matches the reduced symmetry's asymptotic flux to response work. Additional regularity caveat below. |
| §8 Conclusions | Limits to static spherical $c_{14}=0$ solutions; rotating solutions and boundary extension remain open. |
| Appendix A Generalized Komar normalization | Reference subtraction, bulk contribution and factor of two relative to the Iyer–Wald metric charge. |
| Appendix B Symplectic potential | Component calculation underlying §4.2; essential technical reference, reconstructed below. |

## Theory, conventions and regular branch — §2

Use signature $(-+++)$, $u^2=-1$, $s^2=1$, $u\cdot s=0$, and fixed $G,c_i$. The fields are $(g_{\mu\nu},u^\mu,\lambda)$ with action
$$
I=\frac1{16\pi G}\int\epsilon\,[R-2\Lambda_0-Z^{\mu\nu}{}_{\rho\sigma}\nabla_\mu u^\rho\nabla_\nu u^\sigma+\lambda(u^2+1)],
$$
$$
Z^{\mu\nu}{}_{\rho\sigma}=c_1g^{\mu\nu}g_{\rho\sigma}+c_2\delta^\mu_\rho\delta^\nu_\sigma+c_3\delta^\mu_\sigma\delta^\nu_\rho-c_4u^\mu u^\nu g_{\rho\sigma}.
$$
Here $c_{13}=c_1+c_3$, $c_{14}=c_1+c_4=0$, $c_{123}=c_{13}+c_2$, $c_\ell=(2+c_{13}+3c_2)/2$. Thus $c_4=-c_1$ and the Newton constant measured in the weak field equals $G$. The nondegenerate radial argument assumes $c_{123}\ne0$; division by this coupling is unavailable on the degenerate branch.

In ingoing coordinates $ds^2=-e(r)dv^2+2dv\,dr+r^2d\Omega_2^2$ and $\chi=\partial_v$. Write $U=u\cdot\chi$, $S=s\cdot\chi$, so $\chi=-Uu+Ss$, $e=U^2-S^2$. Outside the Killing horizon static coordinates give
$$
ds^2=-e\,dt^2+e^{-1}dr^2+r^2d\Omega_2^2,
\quad u^\mu=(-U/e,-S,0,0),\quad s^\mu=(-S/e,-U,0,0).
$$
The source branch is
$$
S=\alpha r+\frac\beta{r^2},\qquad e=1-\frac{\Lambda r^2}3-\frac{r_0}r-\frac{c_{13}\beta^2}{r^4},
$$
$$
\beta=\frac{h^2\sqrt{1+3h^2/\ell_u^2}}{\sqrt{3(1-c_{13})}},\quad
r_0=\frac{4h}3+\frac{2h^3}{\ell_u^2}+2\alpha\beta,\quad h=r_{\rm UH}>0.
$$
The real branch requires the square roots to be real, in particular $1-c_{13}>0$ for the displayed AdS family. Set $U=-\sqrt{e+S^2}$ in the exterior. The regularity conditions impose a double zero of $U^2$ at $h$:
$$
U^2=1+\frac{r^2}{\ell_u^2}-\frac{4h/3+2h^3/\ell_u^2}{r}
+\frac{h^4(1+3h^2/\ell_u^2)}{3r^4}.
$$
The two cosmological parameters satisfy
$$
\ell_u^{-2}=c_\ell\alpha^2-\Lambda_0/3,\quad
\Lambda/3=\Lambda_0/3-(c_\ell-1)\alpha^2,
\quad \delta\Lambda=\delta\Lambda_0-3(c_{13}+3c_2)\alpha\delta\alpha.
$$
Consequently fixed $\Lambda_0$ and fixed $\Lambda$ are different variation problems. Define $P_0=-\Lambda_0/(8\pi G)$ and the generalized Komar mass $M_K=r_0/(2G)$; neither definition yet asserts that $M_K$ generates time translations.

## Radial action, endpoint and canonical pair — §3

With unit time interval understood, contraction of the æther kinetic scalar gives
$$
Z\nabla u\nabla u=c_{123}S'^2+4c_2SS'/r+(2c_{13}+4c_2)S^2/r^2.
$$
After integrating over the sphere and integrating the $SS'$ term by parts,
$$
I_{\ae}^{\rm red}=-\frac{c_{123}}{4G}\int dr\,[r^2S'^2+2S^2]-\frac{c_2}{2G}[rS^2]_{\rm endpoints}.
$$
The endpoint must remain in the variation. The bulk equation is $(r^2S')'-2S=0$, hence $S=\alpha r+\beta/r^2$. The outer radial potential is
$$
\Theta_{\rm red}=-\frac{r^2}{2G}\left(c_{123}S'+\frac{2c_2}rS\right)\delta S,
\qquad \delta\Theta_{\rm red}=-\frac{3c_{123}}{2G}\delta\alpha\wedge\delta\beta.
$$
The growing divergence is removed by $I_{\rm ct}=(c_{13}+3c_2)rS^2/(4G)$ at the outer endpoint:
$$
\Theta_{\rm red}+\delta I_{\rm ct}=K\beta(\delta\alpha+r^{-3}\delta\beta)
\longrightarrow K\beta\delta\alpha.
$$
Thus the source is $\alpha$ and its response is $K\beta$. Since $\delta^2I_{\rm ct}=0$, this subtraction leaves the obstruction unchanged. The exact finite-radius expressions, radial equation and normalization are **Checked**; no inference about nonspherical modes follows from the reduction.

## Boundary CPS and the four-dimensional potential — §4.1–4.2, Appendix B

For $I=\int_M L+\int_\Gamma\ell$, use $\delta L=E\delta\phi+d\Theta$ and
$$
\Theta|_\Gamma+\delta\ell=B+d\theta,
\qquad \Omega_\Sigma=\delta\left(\int_\Sigma\Theta-\int_{\partial\Sigma}\theta\right).
$$
For field-independent $\xi$ preserving admissible boundary conditions, $B=0$, finite conserved $\Omega$, and the source's covariance assumptions,
$$
\Omega_\Sigma(\delta\phi,\mathcal L_\xi\phi)=\delta H_\xi,
\qquad H_\xi=\int_{\partial\Sigma}[Q_\xi+i_\xi\ell-\theta(\mathcal L_\xi\phi)]+C.
$$
This is a conditional construction. On the stationary family $\mathcal L_\chi\phi=0$, but vanishing of the explicit corner contraction does not remove corners from $\Omega$. The assertion that the æther has no independent corner potential is **Source-derived** from the cited general boundary analysis. A globally specified nonspherical boundary action is not supplied by the spherical counterterm.

Set $Y^\mu{}_{\rho}=Z^{\mu\nu}{}_{\rho\sigma}\nabla_\nu u^\sigma$, $a^\mu=u^\nu\nabla_\nu u^\mu$, and $n_\mu=(0,e^{-1/2},0,0)$ on the exterior timelike cutoff. Then
$$
Y^{\mu\nu}=c_1\nabla^\mu u^\nu+c_2g^{\mu\nu}\nabla\cdot u+c_3\nabla^\nu u^\mu+c_1u^\mu a^\nu.
$$
The æther boundary potential is $-\epsilon_\Gamma(\mathcal B_1+\mathcal B_2+\mathcal B_3)/(16\pi G)$, where
$$
\mathcal B_1=n_\mu(u^\mu Y^{ij}-u^iY^{\mu j}-u^iY^{j\mu})\delta q_{ij},\quad
\mathcal B_2=2n_\mu Y^{\mu i}\delta u_i,\quad
\mathcal B_3=2n_\mu n_\nu Y^{\mu\nu}\delta(n\cdot u).
$$
Indices $i,j$ are tangent to $\Gamma$. Only $\delta q_{tt}=-\delta e$, $\delta u_t=\delta U$, $\delta(n\cdot u)=-\delta S/\sqrt e+S\delta e/(2e^{3/2})$ enter. To make Appendix B reproducible, the four components are
$$
\begin{aligned}
e^2Y^{tt}&=-c_{13}S^2S'+c_2e(2S/r+S')+c_3SUU',\\
eY^{tr}&=-c_{13}USS'+c_3S^2U',\\
eY^{rt}&=-c_{13}USS'+c_3U^2U',\\
Y^{rr}&=-c_{13}U^2S'-c_2e(2S/r+S')+c_3SUU'.
\end{aligned}
$$
Insert these and $\delta e=2U\delta U-2S\delta S$; all $\delta U$ terms cancel:
$$
\mathcal B_1+\mathcal B_2+\mathcal B_3=\frac2{\sqrt e}\left(c_{123}S'+\frac{2c_2}rS\right)\delta S.
$$
With $i_\chi\epsilon_\Gamma=-\sqrt e\,\epsilon_{S_r^2}$ and angular area $4\pi$,
$$
\int_{S_r^2}i_\chi\Theta_{\ae}=\frac{r^2}{2G}\left(c_{123}S'+\frac{2c_2}rS\right)\delta S.
$$
This is opposite in sign to the outer endpoint convention for $\Theta_{\rm red}$. Its counterterm is correspondingly $\int i_\chi\ell_{\ae}^{\rm ct}=-(c_{13}+3c_2)rS^2/(4G)$. The xAct component check reproduces all four $Y$ components, normalization identities and the full cancellation without using the field equations. Static coordinates require $e>0$ in this calculation; the final rational surface expressions admit evaluation at the universal horizon through the regular solution, not through a real timelike unit normal continued into $e<0$.

## Surface one-form and ensemble energies — §4.3–5

At fixed coordinate radius and fixed generator define $\mathcal K_\chi(r)=\int(\delta Q_\chi-i_\chi\Theta)$. The source gives
$$
\int Q_{\chi,\rm GR}=\frac{r^2e'}{4G},\quad
\int k_{\chi,\rm GR}=-\frac r{2G}\delta e,\quad
\int Q_{\chi,\ae}=S\Pi_r,\quad
\int k_{\chi,\ae}=S\delta\Pi_r,
\quad \Pi_r=\frac{r^2}{2G}(c_{123}S'+2c_2S/r).
$$
The last identity follows from $\delta(S\Pi_r)-\Pi_r\delta S$. The evaluation chain matters: first vary independently $(r_0,\alpha,\beta,\Lambda_0)$, then impose regularity relations if desired. The $r^{-3}\beta\delta\beta$ terms cancel between metric and æther sectors; the $r^3\alpha\delta\alpha$ terms cancel using the relation between $\Lambda$ and $\Lambda_0$. Equations (4.47)–(4.51) become
$$
\mathcal K_\chi(r)=\delta M_K+\frac{c_{13}+3c_2}{2G}\beta\delta\alpha-\frac{c_{13}}G\alpha\delta\beta+\frac{r^3}{6G}\delta\Lambda_0,
$$
$$
\mathcal C_\chi:=\mathcal K_\chi(r)+V(r)\delta P_0
=\delta M_D+K\beta\delta\alpha=\delta M_N-K\alpha\delta\beta,
\quad V(r)=4\pi r^3/3,
$$
$$
M_D=M_K-\frac{c_{13}}G\alpha\beta,\qquad
M_N=M_K+\frac{c_{13}+3c_2}{2G}\alpha\beta,\qquad
M_N-M_D=K\alpha\beta.
$$
$\mathcal C_\chi$ is radially independent even in the extended variation. At fixed $r$, $\delta[V(r)\delta P_0]=0$ and $\delta\mathcal K_\chi=-K\delta\alpha\wedge\delta\beta$. This differentiates conservation in spacetime from integrability in field space.

At fixed bare action, $H_D=M_D$ on $\delta\alpha=0$ and $H_N=M_N$ on $\delta\beta=0$, up to reference constants. For a prescribed relation $\beta=\beta(\alpha)$,
$$
H_{\rm mix}=M_D+K\int^\alpha\beta(a)\,da.
$$
These are Hamiltonians within the specified stationary sector, conditional on a compatible complete boundary variational problem. With variable $P_0$, the same state functions instead integrate the pressure-completed combination and have an extended thermodynamic interpretation. At $c_{123}=0$ the displayed obstruction vanishes, but the radial ODE and source/response classification must be reconsidered rather than inherited by dividing by zero.

## Universal-horizon balance and heat — §6

Evaluate the fixed-radius surface variation first and then set $r=h$. Denote the result $\mathcal K_{\rm UH}$. The balance is
$$
\delta M_D=\mathcal K_{\rm UH}+V_h\delta P_0-K\beta\delta\alpha,
\qquad
\delta M_N=\mathcal K_{\rm UH}+V_h\delta P_0+K\alpha\delta\beta.
$$
The combination $\mathcal K_{\rm UH}+V_h\delta P_0$ is the same radially independent $\mathcal C_\chi$. However, taking its field-space derivative on the moving-horizon family gives
$$
\delta\mathcal K_{\rm UH}=-K\delta\alpha\wedge\delta\beta-\delta V_h\wedge\delta P_0.
$$
Therefore the prose below (6.2), which says boundary work alone cancels the horizon curl, needs $\delta P_0=0$ or inclusion of the volume curl. The displayed balance equation remains correct. This distinction prevents transporting the fixed-coordinate identity (4.51) to a moving surface without its extra term.

The paper uses the peeling temperature $T_{\rm UH}=\kappa_{\rm UH}/\pi$, $\kappa_{\rm UH}=|\chi\cdot a|_h/2$. Our component calculation gives $a^2=U'^2$, $\chi\cdot a=-SU'$ and
$$
U'^2|_{h^+}=2/h^2+9/\ell_u^2,\qquad
T_{\rm UH}=\frac{|S(h)|}{2\pi}\sqrt{2/h^2+9/\ell_u^2}.
$$
The one-sided derivative uses the regular exterior branch. Equations (6.6)–(6.7) import the heat split from the cited finite-speed disformal construction:
$$
\mathcal K_{\rm UH}=T_{\rm UH}\delta(A/4G)+\not\delta Q_{\ae}^{\rm heat},\quad A=4\pi h^2,
\qquad
\not\delta Q_{\ae}^{\rm heat}=\frac{\kappa_{\rm UH}}{8\pi G}\delta\int_H T_{\ae}{}^\mu{}_\nu\widehat\chi^\nu\epsilon_\mu.
$$
Here $H$ is a horizon segment and $\widehat\chi$ is normalized before the infinite-speed limit. This physical flux formula is **Source-derived**. Subtracting $T\delta(A/4G)$ algebraically defines a residual heat one-form, but does not independently derive the stress-tensor flux or justify the limiting procedure. The full derivation and its probe assumptions are absent from this paper's calculation; earlier papers were not opened to expand the daily queue.

## Reduced æther symmetry and its domain — §7

The infinitesimal transformation is $\delta_fu^\mu=fa^\mu$, with $\nabla_\mu(fa^\mu)=0$. Let $\eta=f(a\cdot s)$; preserving orthonormality gives $\delta_fs=\eta u$. The stated solution is
$$
f=\frac{\mathcal C r^3}{(r^3-h^3)(3r^3+2\ell_u^2h+6h^3)},\qquad
\delta_fS=f(a\cdot s)U=-\frac{\mathcal C}{3\ell_u^2r^2}.
$$
Thus $\delta_f\alpha=0$, $\delta_f\beta=-\mathcal C/(3\ell_u^2)$. Since $a\cdot s=-U'$ and $\vartheta=\nabla\cdot u=-3\alpha$, the conserved radial flux is $\mathcal F=\vartheta\delta_f\beta=-3\alpha\delta_f\beta$. With the current normalization imported from the previous paper, $\mathcal F_{\ae}=-8\pi c_{123}\mathcal F$, one gets
$$
\frac{\mathcal F_{\ae}}{16\pi G}=K\alpha\delta_f\beta.
$$
This equals the Neumann-form work term along the response shift. It does not preserve a fixed-response Neumann phase space, and it does not uniquely select an ensemble. For the aligned subspace, $\alpha=0$ and tangent variations obey $\delta\alpha=0$, so this flux and boundary work vanish; merely evaluating at $\alpha=0$ while allowing $\delta\alpha\ne0$ is insufficient to remove Dirichlet work.

There is a regularity boundary beyond this asymptotic identity. For finite positive $\ell_u^2$ and $h$,
$$
\lim_{r\to h}(r-h)f=\frac{\mathcal C}{3(9h^2+2\ell_u^2)},\qquad a^2|_h=2/h^2+9/\ell_u^2>0.
$$
Hence $(\delta_fu)^2=f^2a^2$ diverges for nonzero $\mathcal C$. Moreover, at fixed metric a nonzero response shift changes the $c_{13}\beta^2/r^4$ term of the regular solution family unless compensated; changing $r_0$ cannot cancel this for all radii when $c_{13}\beta\delta\beta\ne0$. The source calls this a symmetry of the reduced æther action. Promoting it to a smooth tangent flow on the complete regular black-hole solution space is **not proven**, and is contradicted by the displayed horizon behavior for the stated generic branch. The asymptotic flux/work equality remains useful within its exterior reduced scope.

## Komar reference and global derivation map — Appendix A, §8

A spherical Killing potential satisfying $\nabla_\mu\omega^{\mu\nu}=\chi^\nu$ has $\omega^{rv}=r/3$. Its homogeneous ambiguity is fixed by a maximally symmetric reference. The metric sphere contribution is
$$
\frac{r^2e'}{2G}=\frac1G\left[-\frac{\Lambda r^3}3+\frac{r_0}2+\frac{2c_{13}\beta^2}{r^3}\right].
$$
It is twice $\int Q_{\chi,\rm GR}$. The source's generalized Komar identity includes the trace-adjusted æther stress tensor in the bulk. After its subtraction,
$$
I_{\rm bulk}^{\ae}=\frac{c_{13}}{G(1-c_{13})}\left(\frac{2h}3+\frac{2h^3}{\ell_u^2}\right),\quad
I_{\rm UH}=\frac1G\left[\frac{2h}{3(1-c_{13})}+\frac{2h^3}{(1-c_{13})\ell_u^2}-\frac{h^3}{\ell_u^2}+\alpha\beta\right].
$$
Their difference is $M_K$. The cancellation is checked; evaluation of the full æther stress-tensor bulk integral is source-derived.

The dependency chain is: action and regularity → radial endpoint canonical pair → full four-dimensional potential → combined metric/æther surface variation → boundary restriction and Legendre transform → conserved horizon balance → externally supplied thermal interpretation. The reduced-symmetry flux is a separate exterior check on boundary work, not an input proving the horizon heat formula.

| Reusable object | Equation ledger | Translation into regional CPS |
|---|---|---|
| Source/response | (3.7)–(3.12), (4.38)–(4.40) | $q=\alpha$, $p=K\beta$, with radial orientation stated. |
| Obstruction | (4.47)–(4.51) | $\delta\mathcal C_\chi=-\delta q\wedge\delta p$; exact counterterms do not cure it. |
| Admissible boundary condition | (5.1)–(5.8) | Fix $q$, fix $p$, or a Lagrangian curve; the energy follows the choice. |
| Open-system balance | (6.2)–(6.9) | Keep source work separate from horizon heat and from variation of the action coupling. |
| Reduced-symmetry work | (7.3)–(7.10) | Useful boundary identity, subject to exterior regularity and inherited current normalization. |

Adding boundary degrees of freedom with the opposite two-form is a possible regional extension mentioned in §8, not a construction completed by this paper. It would still require a boundary action, matching constraints, conservation and gauge analysis.

## Verification record

**Verified:** xAct/xCoba computed Christoffel symbols from the static metric and then covariant derivatives. All three orthonormality residuals, the four Appendix B components, the potential cancellation and full æther kinetic reduction vanish exactly. Mathematica independently returned zero for the radial ODE, counterterm cancellation, full surface-form evaluation, both ensemble decompositions, Legendre difference, field-space curl, double-zero conditions, response-shift identity, metric Komar expression and final Komar difference. It also returned the nonzero pole residue and $U'^2|_h$ quoted above. These are symbolic local checks, not numerical evidence or a full phase-space existence theorem.

**Assumptions:** fixed $G,c_i$, $c_{14}=0$, real regular branch, $h>0$, $c_{13}<1$, nonzero $c_{123}$ for the two-mode argument; $e>0$ for the timelike cutoff calculation; field-independent Killing vector; fixed-radius variation before horizon evaluation; fixed $\Lambda_0$ for ordinary Hamiltonian statements.

**Failed / correction boundary:** the unqualified horizon-curl sentence following (6.2) omits $-\delta V_h\wedge\delta P_0$ in the extended moving-horizon problem. The equation itself is consistent. A globally regular interpretation of the §7 response shift fails the displayed pole test; the exterior reduced relation does not fail.

**Blocked:** an independent derivation of the physical heat-flux identification (6.7) from this paper alone lacks the finite-speed disformal construction, limiting prescription and normalized generator supplied by its Ref. [11]. No retrieval or CAS blocker remains for the local calculations attempted.

**Not verified:** the complete coupled Einstein–æther equations for all perturbations; the full four-dimensional æther Noether-charge derivation before spherical evaluation; the stress-tensor bulk integral in Appendix A; uniqueness of covariant counterterms outside this sector; nonlinear stability, rotating solutions, and global boundary phase-space existence. The source's exact family and general Noether formula are inputs to the independently checked boundary evaluation.

For reproducibility, the shortest Mathematica checks use $S=\alpha r+\beta/r^2$, $\Pi=r^2(c_{123}S'+2c_2S/r)/(2G)$ and an ordinary total differential in $(\alpha,\beta,r_0,\Lambda_0)$: simplify $-r\delta e/(2G)+S\delta\Pi$ minus (4.47), then take $\partial_\alpha(\mathcal K_\beta)-\partial_\beta(\mathcal K_\alpha)$. Appendix B gives every component needed to repeat the tensor check from the metric. Retrieval files and machine output were kept outside the vault.
