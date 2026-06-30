---
paper id: 2606.27437v1
title: Einstein-aether Elliptic Charges and the First Law of Asymptotically AdS Black Holes
authors:
  - Walter Arata
  - Moustafa Ismail
  - Stefano Liberati
  - Luke Martin
  - David Mattingly
  - Giulio Neri
publication date: 2026-06-25T18:00
abstract: |-
  The paper studies static, spherically symmetric, asymptotically AdS universal horizons in Einstein-aether theory with $c_{14}=0$. In this sector the known universal-horizon first law contains an extra term whenever the aether is asymptotically misaligned with the timelike Killing vector. The authors identify a reduced-action symmetry $\delta_f u_a=f a_a$, with $f$ constrained by an elliptic equation, derive its Noether current, charge, and flux, and show that the aligned limit $\ell_s\to\infty$ is the ensemble in which the aether-charge contribution vanishes.
comments: ""
url: https://arxiv.org/abs/2606.27437v1
summary: "A direct Einstein-aether charge mechanism explains why asymptotic alignment removes the extra AdS universal-horizon first-law term."
tags: []
---

Back to [[2026_06_30_overview]].

# Einstein-aether universal horizons and the misalignment problem

The paper works in Einstein-aether theory, where the metric is supplemented by a unit timelike one-form $u_a$. The action is

$$\begin{align}
S=\frac{1}{16\pi G_{\ae}}\int_{\mathcal M}\mathrm{vol}_{\mathcal M} \left[-\frac{6c_{\mathrm{cc}}}{\ell^2}+R+\mathcal L_{\ae} +\mathcal L_{\ae}^{(\mathrm{con})}\right],
\end{align}$$

with unit constraint

$$\begin{align}
\mathcal L_{\ae}^{(\mathrm{con})}=\lambda_{\ae}(u^a u_a+1),
\end{align}$$

and derivative self-interactions

$$\begin{align}
\mathcal L_{\ae} =-Z^{ab}{}_{cd}(\nabla_a u^c)(\nabla_b u^d),
\end{align}$$

where

$$\begin{align}
Z^{ab}{}_{cd} =c_1g^{ab}g_{cd} +c_2\delta^a{}_c\delta^b{}_d +c_3\delta^a{}_d\delta^b{}_c -c_4u^a u^b g_{cd}.
\end{align}$$

The coupling combinations used later are

$$\begin{align}
c_{13}=c_1+c_3,\qquad \bar c_{13}=c_1-c_3,\qquad c_{14}=c_1+c_4,\qquad c_{123}=c_1+c_2+c_3,
\end{align}$$

and, after decomposing $\nabla_a u_b$ into acceleration, expansion, shear, and twist,

$$\begin{align}
\nabla_a u_b=-u_a a_b+\frac13\vartheta h_{ab}+\sigma_{ab}+\omega_{ab},
\end{align}$$

the aether Lagrangian becomes

$$\begin{align}
\mathcal L_{\ae} =-c_\vartheta\vartheta^2-c_\sigma\sigma_{ab}\sigma^{ab} -c_\omega\omega_{ab}\omega^{ab}+c_a a^2,
\end{align}$$

with

$$\begin{align}
c_\vartheta=\frac{c_{13}+3c_2}{3},\qquad c_\sigma=c_{13},\qquad c_\omega=\bar c_{13},\qquad c_a=c_{14}.
\end{align}$$

The relevant black-hole family is the static, spherically symmetric, asymptotically AdS universal-horizon sector with $c_{14}=c_a=0$. In this sector the spin-0 and spin-1 mode speeds become infinite in the aether frame, so the metric Killing horizon is not the relevant causal boundary. The universal horizon is instead defined by

$$\begin{align}
(u\cdot \chi)\big|_{r=r_{\mathrm{UH}}}=0,
\end{align}$$

where $\chi=\partial_v$ is the stationary Killing vector.

In ingoing Eddington-Finkelstein coordinates the paper writes

$$\begin{align}
ds^2=-e(r)\,dv^2+2F(r)\,dr\,dv+r^2d\Omega_2^2,
\end{align}$$

and decomposes the Killing vector in the orthonormal $(u,s)$ frame as

$$\begin{align}
\chi^a=-(u\cdot\chi)u^a+(s\cdot\chi)s^a.
\end{align}$$

The asymptotically AdS solutions are controlled by $\ell_u,\ell_s,\ell,\Lambda$, with

$$\begin{align}
\frac{c_{\mathrm{cc}}}{\ell^2} &=\frac{c_\ell}{\ell_s^2}-\frac{1}{\ell_u^2}, & \frac{\Lambda}{3} &=\frac{1}{\ell_s^2}-\frac{1}{\ell_u^2}.
\end{align}$$

The parameter $\ell_s$ measures asymptotic misalignment through the growing behavior of $(s\cdot\chi)$. The aligned ensemble is the limit $\ell_s\to\infty$.

# The AdS universal-horizon first-law obstruction

The background-subtracted universal-horizon mass used by the paper is

$$\begin{align}
M=\frac{1}{G_{\ae}}\left[ \frac{2r_{\mathrm{UH}}}{3} +\frac{r_{\mathrm{UH}}^3}{\ell_u^2} +\frac{r_{\mathrm{UH}}^2}{\ell_s\sqrt{3(1-c_{13})}} \sqrt{1+\frac{3r_{\mathrm{UH}}^2}{\ell_u^2}} \right].
\end{align}$$

Varying with respect to the horizon radius gives

$$\begin{align}
\delta M=\frac{q_{\mathrm{UH}}\,\delta A}{8\pi G_{\ae}},
\end{align}$$

where

$$\begin{align}
q_{\mathrm{UH}} =\frac{2}{3r_{\mathrm{UH}}} +\frac{3r_{\mathrm{UH}}}{\ell_u^2} +\frac{2}{\ell_s\sqrt{3(1-c_{13})}} \left[1+\frac{9r_{\mathrm{UH}}^2}{\ell_u^2}\right] \left[1+\frac{3r_{\mathrm{UH}}^2}{\ell_u^2}\right]^{-1}.
\end{align}$$

The first two contributions are the entropy and AdS enthalpy pieces. The third contribution is proportional to $1/\ell_s$, so it disappears in the aligned limit. In Horava-Lifshitz gravity an analogous term is known to be tied to an elliptic charge for khronon reparameterizations. Einstein-aether theory does not inherit that charge directly, because $u_a=-N\nabla_a T$ is invariant under a reparameterization $T\mapsto \tilde T(T)$ after $N$ is transformed accordingly. The paper's problem is therefore to find the Einstein-aether replacement for that elliptic-charge mechanism.

# Reduced aether symmetry

The key step is to use the Raychaudhuri identity for the aether congruence, restrict to the twist-free spherical sector, and set $c_a=c_{14}=0$. The kinetic aether Lagrangian can then be written as

$$\begin{align}
\mathcal L_{\ae} =\left(-c_\vartheta+\frac{c_\sigma}{3}\right)\vartheta^2 +c_\sigma\left(u^a\nabla_a\vartheta+R_{ab}u^a u^b-\nabla_a a^a\right).
\end{align}$$

Using $u^a\nabla_a\vartheta=\nabla_a(\vartheta u^a)-\vartheta^2$, this becomes

$$\begin{align}
\mathcal L_{\ae}=\mathcal L_0+\nabla_a A^a,
\end{align}$$

with

$$\begin{align}
\mathcal L_0 =-\left(c_\vartheta+\frac{2}{3}c_\sigma\right)\vartheta^2 +c_\sigma R_{ab}u^a u^b +\lambda_{\ae}(u^2+1), \qquad A^a=c_\sigma(\vartheta u^a-a^a).
\end{align}$$

The proposed transformation is

$$\begin{align}
\delta_f u_a=f a_a,\qquad \delta_f g_{ab}=0.
\end{align}$$

This preserves the unit-norm constraint to first order because $u^a a_a=0$:

$$\begin{align}
\delta_f(u^a u_a)=2u_a\delta_f u^a=2f u_a a^a=0.
\end{align}$$

In spherical symmetry the mixed temporal-radial projection of the Ricci tensor vanishes, so $R_{ab}u^a\delta_f u^b=fR_{ab}u^a a^b=0$. The only nontrivial variation in $\mathcal L_0$ is therefore through $\vartheta$, and the reduced action is invariant if

$$\begin{align}
\delta_f\vartheta=\nabla_a(fa^a)=0.
\end{align}$$

This is the elliptic constraint on the symmetry parameter $f$. The paper also rewrites it schematically as a spatial elliptic equation on the preferred slice,

$$\begin{align}
\vec\nabla_a(fa^a)+f a^2=0,
\end{align}$$

using $a\cdot u=0$.

# Current, charge, and flux

In the covariant phase-space notation of the paper, a symmetry satisfies

$$\begin{align}
I_{\hat\zeta}\delta L=dK_{\hat\zeta},
\end{align}$$

and the corresponding Noether current is

$$\begin{align}
J_{\hat\zeta}=I_{\hat\zeta}\Theta-K_{\hat\zeta}.
\end{align}$$

For the aether symmetry, the total derivative gives

$$\begin{align}
K_f^a=\delta_f A^a.
\end{align}$$

The same term appears inside the full symplectic potential and cancels in $J_f$. The remaining reduced-current contribution is

$$\begin{align}
J_f^a &=-2\left(c_\vartheta+\frac{2}{3}c_\sigma\right)\vartheta\,\delta_f u^a\\
&=-2\left(c_\vartheta+\frac{2}{3}c_\sigma\right)\vartheta\, f a^a\\
&=-2c_{123}\,\vartheta\, f a^a.
\end{align}$$

Thus the current is nonzero only when the expansion $\vartheta$, the acceleration $a^a$, and the coupling combination $c_{123}$ are nonzero. In the $c_{14}=c_{123}=0$ twist-free sector the current vanishes, matching the fact that the theory reduces to general relativity by field redefinition there.

The Noether charge is

$$\begin{align}
Q_f=\int_\Sigma n_aJ_f^a\,\mathrm{vol}_\Sigma.
\end{align}$$

On a slice orthogonal to the aether, $n_a=u_a$, this charge vanishes:

$$\begin{align}
Q_f=0,
\end{align}$$

because $J_f^a\propto a^a$ and $u\cdot a=0$. This is not a triviality of the symmetry. It means the current is spatial in the aether frame. Its boundary flux through a timelike surface with outward radial normal $s^a$ is

$$\begin{align}
\mathcal F_{\ae} =\int_\Gamma s_aJ_f^a\,\mathrm{vol}_\Gamma =-8\pi c_{123}(u\cdot\chi)r^2 f\vartheta(a\cdot s).
\end{align}$$

This flux is the object that can contribute at the asymptotic boundary.

# Hamiltonian role of the weakly vanishing charge

The paper also gives a Hamiltonian interpretation. In units $16\pi G_{\ae}=1$, the momentum density conjugate to $u_a$ in the reduced sector is

$$\begin{align}
\Pi^{ab} =\frac{\partial\mathcal L_0}{\partial(\nabla_a u_b)} =-2\left(c_\vartheta+\frac23c_\sigma\right)\vartheta h^{ab}.
\end{align}$$

Choosing the aether itself as evolution vector, $v^a=u^a$, gives canonical momentum

$$\begin{align}
\pi^a=u_b\Pi^{ba}.
\end{align}$$

Since $h^{ab}$ is spatial, this gives the primary constraint

$$\begin{align}
C_0^a\equiv\pi^a\approx 0.
\end{align}$$

Preserving this constraint under the Hamiltonian flow yields the secondary constraint

$$\begin{align}
C_1^a=\nabla_b\Pi^{ba}-2\lambda_{\ae}u^a\approx 0,
\end{align}$$

equivalent to the aether equation of motion. Its radial projection in the $c_a=0$ sector is

$$\begin{align}
c_{123}\,s^a\nabla_a\vartheta\approx 0.
\end{align}$$

In this frame the charge can be written as the canonical pairing

$$\begin{align}
Q_f=\int_{\Sigma_u}\mathrm{vol}_{\Sigma_u}\,\pi^a f a_a.
\end{align}$$

It is weakly zero because $\pi^a\approx0$, but its Hamiltonian vector field still acts:

$$\begin{align}
\{u_a,Q_f\}\approx f a_a=\delta_f u_a.
\end{align}$$

The local translation for the vault is that $Q_f$ behaves more like a constraint generator than like a nonzero bulk charge. The physically relevant first-law data are in the boundary flux and in the choice of charge sector.

# Alignment as the zero-aether-charge ensemble

To identify which part of the solution carries the charge flux, the paper switches to the Killing frame. Let $\mathcal R^a$ be spatial with respect to $\chi^a$. Writing $J_s=s_aJ^a$, one has

$$\begin{align}
\rho_\chi=-\chi_aJ^a=-(s\cdot\chi)J_s,\qquad F_\chi=\mathcal R_aJ^a=(u\cdot\chi)J_s.
\end{align}$$

Outside the universal horizon, $(u\cdot\chi)$ does not vanish. Thus the flux density is zero precisely when $J_s=0$.

The radial part of the aether equation implies

$$\begin{align}
\left(\partial_r^2+\frac2r\partial_r-\frac2{r^2}\right)(s\cdot\chi)=0,
\end{align}$$

so

$$\begin{align}
(s\cdot\chi)=\alpha r+\frac{\beta}{r^2}.
\end{align}$$

The growing coefficient is the asymptotic misalignment parameter:

$$\begin{align}
\alpha=\frac{1}{\ell_s}.
\end{align}$$

The aether expansion filters out the decaying mode:

$$\begin{align}
\vartheta &=-\left[(s\cdot\chi)'+\frac2r(s\cdot\chi)\right]\\
&=-\frac1{r^2}\frac{d}{dr}\left[r^2(s\cdot\chi)\right]\\
&=-3\alpha=-\frac3{\ell_s}.
\end{align}$$

Consequently,

$$\begin{align}
F_\chi\propto \vartheta(a\cdot s)f\propto -\frac3{\ell_s}.
\end{align}$$

For universal-horizon black holes $(a\cdot s)$ is nowhere vanishing, so there is no horizon or bulk adjustment that keeps the flux zero while changing $\ell_s$. The equivalent conditions defining the aligned ensemble are

$$\begin{align}
\mathcal F=0 \quad\Longleftrightarrow\quad \vartheta=0 \quad\Longleftrightarrow\quad \ell_s\to\infty \quad\Longleftrightarrow\quad \text{asymptotic alignment}.
\end{align}$$

For the explicit solution the paper gives a solution of the elliptic equation,

$$\begin{align}
f(r)= \frac{\mathcal C r^3} {(r^3-r_{\mathrm{UH}}^3)(3r^3+2\ell_u^2r_{\mathrm{UH}}+6r_{\mathrm{UH}}^3)},
\end{align}$$

and the resulting flux is

$$\begin{align}
\mathcal F=\frac{\mathcal C}{\ell_s\ell_u^2}.
\end{align}$$

Using $\Lambda=3/\ell_s^2-3/\ell_u^2$ and $\alpha=1/\ell_s$, this is

$$\begin{align}
\mathcal F=\mathcal C\left(\alpha^3-\frac{\Lambda}{3}\alpha\right), \qquad \delta\mathcal F=\mathcal C\left(3\alpha^2-\frac{\Lambda}{3}\right)\delta\alpha.
\end{align}$$

The aligned ensemble is $\alpha=0$ with $\delta\alpha=0$, so both the flux and its variation vanish. The extra term in $q_{\mathrm{UH}}$ is proportional to $1/\ell_s=-\vartheta/3$, so it switches off in the same charge sector.

# Local translation

For the vault's charge/CPS vocabulary, the useful dictionary is:

- The generator is field-space, not spacetime: $\delta_f$ acts on the aether field as $\delta_f u_a=f a_a$ while holding $g_{ab}$ fixed.
- The current is not a Komar or Iyer-Wald diffeomorphism current. Its $K_f$ comes from the total derivative in the reduced aether action.
- The bulk charge vanishes on aether-orthogonal slices, but it still generates a nontrivial Hamiltonian flow. This is closer to a weakly vanishing constraint generator than to an ordinary global charge.
- The first-law relevance is in the asymptotic flux sector, where $\ell_s$ selects the growing radial mode of $(s\cdot\chi)$ and hence the nonzero boundary aether-charge flux.
- The paper does not give the full finite-$Q_f$ thermodynamics. It identifies the aligned limit as the $Q_f=\delta Q_f=0$ ensemble and leaves the charge-dependent mass formula to future work.

For null-boundary and CPS notes, the transferable mechanism is the separation between a vanishing constraint-type bulk charge and a nontrivial boundary flux. It is a useful model for situations where a field-space symmetry is invisible in a preferred slicing but visible in the boundary contribution to a first law.

# Verification log

## Checked

Mathematica checked the radial and algebraic identities used in the charge interpretation:

- The claimed radial equation is solved by $(s\cdot\chi)=\alpha r+\beta/r^2$:

$$\begin{align}
\left(\partial_r^2+\frac2r\partial_r-\frac2{r^2}\right) \left(\alpha r+\frac{\beta}{r^2}\right)=0.
\end{align}$$

- The expansion filters out the decaying mode:

$$\begin{align}
-\frac1{r^2}\frac{d}{dr} \left[r^2\left(\alpha r+\frac{\beta}{r^2}\right)\right] =-3\alpha.
\end{align}$$

- The current coefficient is

$$\begin{align}
c_\vartheta+\frac23c_\sigma =\frac{c_{13}+3c_2}{3}+\frac23c_{13} =c_1+c_2+c_3=c_{123}.
\end{align}$$

- The flux variation formula follows algebraically from

$$\begin{align}
\mathcal F=\mathcal C\left(\alpha^3-\frac{\Lambda}{3}\alpha\right), \qquad \delta\mathcal F =\mathcal C\left(3\alpha^2-\frac{\Lambda}{3}\right)\delta\alpha.
\end{align}$$

## Blocked

- The complete boundary Hamiltonian $\underline H_{\ae}$ is left unspecified in the source, so the full integrability of the charge and its finite-$Q_f$ first law cannot be reconstructed from this paper alone.
- The paper does not provide $M$ as a function of $Q_f$; it explicitly postpones the charge-dependent mass formula and full first law to future work.
- A full xAct verification of the Raychaudhuri rewrite, CPS boundary signs, and current normalization would require fixing the paper's boundary and orientation conventions. The present note keeps those steps source-derived.

## Failed

No independent check failed. The completed checks support the mode, expansion, coupling, and flux-dependence identities used in the local interpretation above.
