---
title: "D.27 and D.34 asymptotic audit"
date: 2026-07-19
summary: "Step-by-step audit of where Appendix D.1.2 uses D.27 and where it needs D.34."
---

# D.27 and D.34 asymptotic audit

Throughout this note,

$$\begin{align}
0<\Delta<1,
\end{align}$$

and only differentiable pure power-law asymptotic expansions are considered. Logarithmic and slowly varying terms, as well as the endpoint $\Delta=1$, are excluded.

D.27 is always the off-shell configuration-space condition. Write it as

$$\begin{align}
\Phi &=\alpha(t,\phi)r^{-\Delta}+\rho, & \rho &=\sum_{p>1}\rho_{p}(t,\phi)r^{-p}. \tag{1}
\end{align}$$

After imposing D.33, the indicial equation gives

$$\begin{align}
\Phi &=\alpha(t,\phi)r^{-\Delta} +\beta(t,\phi)r^{\Delta-2} +O(r^{-\Delta-2})+O(r^{\Delta-4}). \tag{2}
\end{align}$$

Both displayed branches satisfy D.27. D.34 is the additional condition $\beta=0$. There is therefore no separate condition called “on-shell D.27”: when D.33 has already been imposed but $\beta$ has not been set to zero, the precise phrase is “an EOM solution satisfying D.27.”

## Equation-by-equation audit

### D.29-D.31: finiteness of the off-shell action

For the global AdS$_3$ metric,

$$\begin{align}
\sqrt{-g}&=r, & g^{rr}&=1+r^{2}, & \sqrt{-\gamma} &=r\sqrt{1+r^{2}}=r^{2}+O(1). \tag{3}
\end{align}$$

First retain only the slow term $\alpha r^{-\Delta}$. The radial derivative and mass terms in the bulk density of D.29 give

$$\begin{align}
-\frac{r}{2} \left[ (1+r^{2})(\partial_{r}\Phi)^{2} +\Delta(\Delta-2)\Phi^{2} \right] &= \Delta(1-\Delta)\alpha^{2}r^{1-2\Delta} +O(r^{-1-2\Delta}). \tag{4}
\end{align}$$

Consequently,

$$\begin{align}
\int^{R}\mathrm{d}r\, \Delta(1-\Delta)\alpha^{2}r^{1-2\Delta} &= \frac{\Delta}{2}\alpha^{2}R^{2-2\Delta} +O(1). \tag{5}
\end{align}$$

The counterterm in D.29 contributes

$$\begin{align}
-\frac{\Delta}{2}\sqrt{-\gamma}\,\Phi^{2}\big|_{R} &= -\frac{\Delta}{2}\alpha^{2}R^{2-2\Delta} +O(R^{-2\Delta}), \tag{6}
\end{align}$$

which cancels (5).

The cancellation must also be checked for every off-shell remainder in D.27. For one term $\rho_{p}r^{-p}$, the slow-remainder cross term in the bulk density is

$$\begin{align}
\mathcal L_{\mathrm{bulk}}^{(\alpha\rho_{p})} &= \Delta(2-\Delta-p)\alpha\rho_{p}\, r^{1-\Delta-p} +O(r^{-1-\Delta-p}). \tag{7}
\end{align}$$

When $1<p<2-\Delta$, its divergent primitive is

$$\begin{align}
\int^{R}\mathrm{d}r\, \mathcal L_{\mathrm{bulk}}^{(\alpha\rho_{p})} &= \Delta\alpha\rho_{p}R^{2-\Delta-p} +O(1), \tag{8}
\end{align}$$

whereas the cross term in the counterterm is

$$\begin{align}
-\frac{\Delta}{2}\sqrt{-\gamma}\, 2\alpha\rho_{p}R^{-\Delta-p} &= -\Delta\alpha\rho_{p}R^{2-\Delta-p} +o(1). \tag{9}
\end{align}$$

Thus (8) and (9) cancel. The remainder-squared radial density is

$$\begin{align}
\mathcal L_{\mathrm{bulk}}^{(\rho_{p}^{2})} &=O(r^{1-2p}), \tag{10}
\end{align}$$

which is integrable because $p>1$, and its boundary counterterm is $O(R^{2-2p})\to0$. Tangential derivative terms behave as $O(r^{-1-2\Delta})$ or faster.

This is the intermediate calculation represented compactly by D.30-D.31. It uses D.27 together with the pure-power derivative convention. Neither D.33 nor D.34 may be used here, because D.29 is an off-shell action.

### D.32-D.34: the EOM and the natural boundary condition

The spatial-boundary term in the off-shell variation D.32 is

$$\begin{align}
\delta S\big|_{\Gamma_R} &= -\int_{\Gamma_R}\mathrm{d}^{2}x\sqrt{-\gamma}\, \left(n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi\right)\delta\Phi. \tag{11}
\end{align}$$

Compactly supported variations do not see (11), so they give D.33,

$$\begin{align}
\left(\nabla^{2}-\Delta(\Delta-2)\right)\Phi=0. \tag{12}
\end{align}$$

For a radial power $r^{-s}$, the leading indicial equation is

$$\begin{align}
s(s-2)&=\Delta(\Delta-2), & s&=\Delta,\ 2-\Delta. \tag{13}
\end{align}$$

This gives the two-branch EOM expansion (2). Since $2-\Delta>1$, the $\beta r^{\Delta-2}$ branch is allowed by D.27.

Now act on (2) with the Robin operator occurring in (11):

$$\begin{align}
\left(n^{\mu}\nabla_{\mu}+\Delta\right) \alpha r^{-\Delta} &=O(r^{-\Delta-2}), \\
\left(n^{\mu}\nabla_{\mu}+\Delta\right) \beta r^{\Delta-2} &= 2(\Delta-1)\beta r^{\Delta-2} +O(r^{\Delta-4}). \tag{14}
\end{align}$$

Using

$$\begin{align}
\delta\Phi &=\delta\alpha\,r^{-\Delta} +\delta\beta\,r^{\Delta-2}+\cdots, \tag{15}
\end{align}$$

the finite limit of (11) is

$$\begin{align}
\delta S\big|_{\Gamma_\infty} &= 2(1-\Delta) \int\mathrm{d}t\,\mathrm{d}\phi\, \beta\,\delta\alpha. \tag{16}
\end{align}$$

D.27 allows $\delta\alpha$ to vary freely. Therefore stationarity requires

$$\begin{align}
\beta=0, \tag{17}
\end{align}$$

which is exactly D.34. Hence D.34 is not an assumption in D.32: it is obtained only after D.33 has been imposed and the unrestricted boundary variation has been evaluated.

### D.35-D.37: the symplectic form and its conservation

On a constant-$t$ slice,

$$\begin{align}
\sqrt{\sigma}\,\tau^{t} &=\frac{r}{1+r^{2}} =O(r^{-1}). \tag{18}
\end{align}$$

The radial integrand of D.35 and D.36 therefore behaves as

$$\begin{align}
\sqrt{\sigma}\,\tau^{t} \left(\partial_{t}\delta_{1}\Phi\,\delta_{2}\Phi -\delta_{1}\Phi\,\partial_{t}\delta_{2}\Phi\right) &=O(r^{-1-2\Delta}), \tag{19}
\end{align}$$

so the fixed-slice integral is finite already under D.27.

Conservation is a different question. Stokes' theorem gives the two separate terms

$$\begin{align}
\Omega_{\Sigma_f}-\Omega_{\Sigma_i} &= \int_{M}\sqrt{-g}\, \left[ \delta_{1}E(\Phi)\,\delta_{2}\Phi -\delta_{1}\Phi\,\delta_{2}E(\Phi) \right]
\\
&\quad -\lim_{R\to\infty} \int_{\Gamma_R}\sqrt{-\gamma}\,n^{\mu} \left( \nabla_{\mu}\delta_{1}\Phi\,\delta_{2}\Phi -\delta_{1}\Phi\,\nabla_{\mu}\delta_{2}\Phi \right). \tag{20}
\end{align}$$

D.33 and its linearization set the bulk term in (20) to zero. They do not set the radial flux to zero. For two linearized EOM solutions,

$$\begin{align}
\delta_i\Phi &= \delta_i\alpha\,r^{-\Delta} +\delta_i\beta\,r^{\Delta-2}+\cdots, \tag{21}
\end{align}$$

the radial integrand has the finite limit

$$\begin{align}
\lim_{R\to\infty}R(1+R^{2}) \left( \partial_{r}\delta_{1}\Phi\,\delta_{2}\Phi -\delta_{1}\Phi\,\partial_{r}\delta_{2}\Phi \right) &= 2(1-\Delta) \left( \delta_{1}\alpha\,\delta_{2}\beta -\delta_{2}\alpha\,\delta_{1}\beta \right). \tag{22}
\end{align}$$

D.34 implies $\delta_i\beta=0$ for tangent vectors to the pre-phase space and hence removes (22). Thus, in D.37:

- D.33 is used when the bulk integral in (20) is set to zero.
- D.34 is used earlier, when the $\Gamma_R$ term is dropped.

The citation after D.37 is incomplete if it lists only D.27 and D.33.

### D.38-D.44: Killing transformations and the off-shell action

Substituting D.27 and D.39 into $\mathcal L_\xi\Phi$ gives

$$\begin{align}
\mathcal L_{\xi}\Phi &= r^{-\Delta} \left[ \zeta^{A}\partial_{A}\alpha +\frac{\Delta}{2} \left(\partial_{A}\zeta^{A}\right)\alpha \right] +o(r^{-1}). \tag{23}
\end{align}$$

This is D.41. It proves that $X_\xi$ is tangent to the off-shell configuration space defined by D.27.

To prove tangency to the pre-phase space, one must also apply the transformation to the fast coefficient in the EOM expansion:

$$\begin{align}
\mathcal L_{\xi}\Phi &= r^{-\Delta}\delta_{\xi}\alpha +r^{\Delta-2}\delta_{\xi}\beta +o(r^{\Delta-2}), \\
\delta_{\xi}\beta &= \zeta^{A}\partial_{A}\beta +\frac{2-\Delta}{2} \left(\partial_{A}\zeta^{A}\right)\beta. \tag{24}
\end{align}$$

Therefore $\beta=0$ implies $\delta_{\xi}\beta=0$: the Killing transformation preserves D.34. Its subleading action on the slow branch is $O(r^{-\Delta-2})=o(r^{\Delta-2})$. In addition,

$$\begin{align}
\left[ \nabla^{2}-\Delta(\Delta-2), \mathcal L_{\xi} \right]\Phi &= \left( \nabla^{2}\xi^{a} +R^{a}{}_{b}\xi^{b} \right)\nabla_a\Phi +2\nabla^{(a}\xi^{b)} \nabla_a\nabla_b\Phi
\\
&=0 \tag{25}
\end{align}$$

Here $\nabla^{2}\xi^{a}+R^{a}{}_{b}\xi^{b}=0$ and $\nabla^{(a}\xi^{b)}=0$ are the Killing identities. Thus D.33 is preserved as well. Equations (24)-(25), not D.41 alone, prove that $X_\xi$ is tangent to the pre-phase space.

D.42-D.44 concern the transformation of the off-shell action, so this part should still use D.27 rather than D.34. At the radial boundary, the leading D.27 terms combine as

$$\begin{align}
&-\frac{\Delta(\Delta-1)}{2} \left(\partial_A\zeta^A\right)\alpha^{2} + \Delta\alpha \left[ \zeta^{A}\partial_{A}\alpha +\frac{\Delta}{2} \left(\partial_A\zeta^A\right)\alpha \right]
\notag\\
&\hspace{3cm} = \frac{\Delta}{2} \partial_A\left(\zeta^{A}\alpha^{2}\right). \tag{26}
\end{align}$$

Thus the leading radial contribution is a total derivative along $\Gamma_R$:

$$\begin{align}
\sqrt{-\gamma}\,R^{-2\Delta} \frac{\Delta}{2}
\partial_A\left(\zeta^{A}\alpha^{2}\right).
\tag{27}
\end{align}$$

Integrating (27) over the boundary cylinder produces only the two corner terms at $H_f$ and $H_i$, which are the extra terms displayed in D.42 and D.44. The pure-power remainder is controlled by the same bulk-counterterm cancellation used in D.29-D.31. No EOM or D.34 is used in this action-symmetry calculation.

$$\begin{align}
\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -g }\left[-n_{\rho}\xi ^{\rho}\left( \dfrac{1}{2}g^{\mu \nu}\nabla _{\mu}\Phi \nabla _{\nu}\Phi+\dfrac{1}{2}\Delta ^{2}\Phi ^{2}+\Delta \Phi n^{\mu}\nabla _{\mu}\Phi \right)+\dfrac{\Delta}{2}(\tilde{D}_{\mu}(\gamma ^{\mu}_{~\nu}\xi ^{\nu})+2n_{\mu}\xi ^{\mu})\Phi ^{2}\right]
\end{align}$$

### D.45-D.47: finiteness is weaker than charge equivalence

#### Finiteness of D.45

D.45 is evaluated on the pre-phase space, but the original claim that its finiteness follows from D.27 alone is too strong. This can be seen before imposing the EOM.

For $\xi=\partial_t$, let the off-shell field contain one remainder $\rho_p r^{-p}$. After the improvement term in D.45 is included, the potentially divergent slow-remainder part of the radial charge density is

$$\begin{align}
\mathcal H_{\partial_t}^{\mathrm{rad}} &= \frac{r}{2} \left[ (1+r^{2})(\partial_r\Phi)^{2} +\Delta(\Delta-2)\Phi^{2} \right] \notag\\
&\quad -\frac{\Delta}{2(2\Delta+1)}r \left[ (1+r^{2})\partial_r^{2}\left(\Phi^{2}\right) +\left(\frac{1}{r}+2r\right)\partial_r\left(\Phi^{2}\right) -2\Phi^{2} \right].
\end{align}$$

Tangential derivative terms are already integrable. Substituting $\Phi=\alpha r^{-\Delta}+\rho_p r^{-p}$ into this radial density gives

$$\begin{align}
\mathcal H_{\partial_t}^{(\alpha\rho_p)} &= \frac{\Delta(\Delta-p)(\Delta+p-2)} {2\Delta+1} \alpha\rho_p\,r^{1-\Delta-p} +O(r^{-1-\Delta-p}). \tag{28}
\end{align}$$

For $1<p<2-\Delta$, the first term in (28) is non-integrable and its coefficient is generically nonzero. Therefore D.27, even with a pure-power expansion, does not by itself prove the finiteness of D.45.

After D.33 is imposed, the first possible fast term has $p=2-\Delta$. The leading coefficient in (28) then vanishes because

$$\begin{align}
\Delta+p-2=0. \tag{29}
\end{align}$$

The remaining $\alpha\beta$ contribution is finite, the $\beta^{2}$ density behaves as $r^{2\Delta-3}$ and is integrable, and all descendants decay faster. Hence:

$$\begin{align}
\text{finiteness of D.45} \quad\text{uses}\quad \text{D.27 + D.33}, \tag{30}
\end{align}$$

but it does not require $\beta=0$. This is an EOM calculation that retains both branches allowed by D.27; it should not be described as an “on-shell D.27 condition.”

#### Equivalence of D.45 and D.47

The improvement tensor in D.45 obeys

$$\begin{align}
I_{\mu\nu}[\Phi] &= \left( \nabla_{\mu}\nabla_{\nu} -g_{\mu\nu}\nabla^{2} +2g_{\mu\nu} \right)\Phi^{2}, \\
\xi^{\nu}I_{\mu\nu} &= \nabla_{\rho} \left( \xi^{\rho}\nabla_{\mu}\Phi^{2} -\xi_{\mu}\nabla^{\rho}\Phi^{2} +\Phi^{2}\nabla^{\rho}\xi_{\mu} \right). \tag{31}
\end{align}$$

The second line of (31) uses $\nabla_{\mu}\xi^{\mu}=0$ and $\nabla^{2}\xi_{\mu}=2\xi_{\mu}$, the latter following from $R_{\mu\nu}=-2g_{\mu\nu}$ and the Killing identity.

D.46 integrates (31) over $\Sigma$ and replaces the resulting boundary expression by the explicit $\Delta\Phi^{2}/2$ corner term in D.47. This replacement needs D.34.

For $\xi=\partial_t$, the radial improvement density is a total derivative:

$$\begin{align}
&r \left[ (1+r^{2})\partial_r^{2}\left(\Phi^{2}\right) +\left(\frac{1}{r}+2r\right)\partial_r\left(\Phi^{2}\right) -2\Phi^{2} \right]
\notag\\
&\hspace{2cm} = \partial_r \left[ r(1+r^{2})\partial_r\left(\Phi^{2}\right) -r^{2}\Phi^{2} \right].
\end{align}$$

Therefore, after angular total derivatives have been integrated out, the radial boundary expression produced by the improvement term is

$$\begin{align}
\mathcal K_R &= \int\mathrm{d}\phi\, \left[ R(1+R^{2})\partial_R\left(\Phi^{2}\right) -R^{2}\Phi^{2} \right]
\\
&= \int\mathrm{d}\phi\, \left[ -(2\Delta+1)\alpha^{2}R^{2-2\Delta} -6\alpha\beta \right] +o(1). \tag{32}
\end{align}$$

The improvement contribution in D.45 is therefore

$$\begin{align}
-\frac{\Delta}{2(2\Delta+1)}\mathcal K_R &= \int\mathrm{d}\phi\, \left[ \frac{\Delta}{2}\alpha^{2}R^{2-2\Delta} +\frac{3\Delta}{2\Delta+1}\alpha\beta \right] +o(1), \tag{33}
\end{align}$$

whereas the explicit boundary term in D.47 is

$$\begin{align}
\frac{\Delta}{2} \int\mathrm{d}\phi\, R\sqrt{1+R^{2}}\,\Phi^{2} &= \int\mathrm{d}\phi\, \left[ \frac{\Delta}{2}\alpha^{2}R^{2-2\Delta} +\Delta\alpha\beta \right] +o(1). \tag{34}
\end{align}$$

Their difference is the finite term

$$\begin{align}
\text{D.45}-\text{D.47} &= \frac{2\Delta(1-\Delta)}{2\Delta+1} \int\mathrm{d}\phi\,\alpha\beta. \tag{35}
\end{align}$$

D.27 and D.33 allow this term. D.34 sets $\beta=0$ and is therefore required precisely in the last step of D.46, where the improvement boundary expression is identified with the corner term of D.47.

### D.48: conservation of the Noether charge

After applying Stokes' theorem in D.48, the bulk term vanishes by D.33, conservation of the stress tensor, and the Killing equation. The remaining radial integrand can be organized as

$$\begin{align}
\sqrt{-\gamma} \left\{ \frac{\Delta}{2} \left[ \widetilde D_A\xi_{\parallel}^{A} +2n_{\mu}\xi^{\mu} \right]\Phi^{2} + \left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right)
\xi_{\parallel}^{A}\partial_A\Phi \right\}.
\tag{36}
\end{align}$$

D.39 gives

$$\begin{align}
\widetilde D_A\xi_{\parallel}^{A} +2n_{\mu}\xi^{\mu} &=O(r^{-2}), \tag{37}
\end{align}$$

so the first term in (36) vanishes using D.27. The second term is the Robin defect. For an EOM solution with both D.27 branches,

$$\begin{align}
n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi &= 2(\Delta-1)\beta r^{\Delta-2} +O(r^{-\Delta-2})+O(r^{\Delta-4}). \tag{38}
\end{align}$$

For the time translation $\xi=\partial_t$, the finite flux density is therefore

$$\begin{align}
\lim_{R\to\infty} \sqrt{-\gamma} \left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right) \partial_t\Phi &= 2(\Delta-1)\beta\,\partial_t\alpha. \tag{39}
\end{align}$$

This need not vanish under D.27 and D.33. D.34 makes (38) $o(r^{\Delta-2})$ and hence makes (36) vanish. Thus D.48 uses D.33 in the bulk and D.34 at the radial boundary.

### D.49: the Hamiltonian equation

After the bulk integration by parts, D.49 contains a boundary term of the form

$$\begin{align}
-\int_{\partial\Sigma_R}\mathrm{d}\phi\sqrt{h}\, \left(\widetilde\tau\cdot\xi\right)
n^{\mu}\nabla_{\mu}\Phi\,\delta\Phi.
\tag{40}
\end{align}$$

The step from the second to the third displayed line of D.49 uses

$$\begin{align}
n^{\mu}\nabla_{\mu}\Phi\,\delta\Phi &= -\Delta\Phi\,\delta\Phi + \left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right)\delta\Phi
\\
&= -\delta\left(\frac{\Delta}{2}\Phi^{2}\right) + \left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right)\delta\Phi. \tag{41}
\end{align}$$

The first term in (41) produces the variation of the explicit boundary term in D.47. D.49 silently discards the second term. Under D.34,

$$\begin{align}
\left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right)\delta\Phi &= o(r^{\Delta-2})\,O(r^{-\Delta}) =o(r^{-2}), \tag{42}
\end{align}$$

and $\sqrt h\,(\widetilde\tau\cdot\xi)=O(r^{2})$, so the discarded term vanishes.

Under D.27 and D.33 alone, the same term has, for $\xi=\partial_t$, the finite limit

$$\begin{align}
-\lim_{R\to\infty} \int\mathrm{d}\phi\sqrt h\, \left(\widetilde\tau\cdot\partial_t\right) \left( n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi \right)\delta\Phi &= 2(\Delta-1) \int\mathrm{d}\phi\,\beta\,\delta\alpha, \tag{43}
\end{align}$$

with the sign fixed by the orientation in (40). It is generically nonzero. Thus D.34 is used exactly when the second term in (41) is dropped. D.33 is separately used to remove the bulk EOM term.

### D.50-D.53: the bilinear form

The fixed-slice integral in D.50 is convergent under D.27 by the same estimate as (19). However, D.50 is the pullback of D.36 to the pre-phase space. Therefore each $\Phi_i$ used in D.50-D.53 must satisfy both D.33 and D.34; otherwise $X_{\Phi_i}$ is not tangent to the stated domain.

The proof of D.52-D.53 repeats the integration by parts in D.49. Before imposing D.34, it leaves the bilinear boundary remainder

$$\begin{align}
\mathcal R_{\xi}[\Phi_1,\Phi_2] &= -\lim_{R\to\infty} \int_{\partial\Sigma_R}\mathrm{d}\phi\sqrt h\, \left(\widetilde\tau\cdot\xi\right) \left( n^{\mu}\nabla_{\mu}\Phi_1+\Delta\Phi_1 \right)\Phi_2. \tag{44}
\end{align}$$

For $\xi=\partial_t$ and

$$\begin{align}
\Phi_i &= \alpha_i r^{-\Delta} +\beta_i r^{\Delta-2}+\cdots, \tag{45}
\end{align}$$

this becomes

$$\begin{align}
\mathcal R_{\partial_t}[\Phi_1,\Phi_2] &= 2(\Delta-1) \int\mathrm{d}\phi\,\beta_1\alpha_2. \tag{46}
\end{align}$$

The relation with $\Phi_1$ and $\Phi_2$ exchanged contains the corresponding $\beta_2\alpha_1$ term. D.34 for both fields removes these remainders. Consequently, D.52-D.53 require D.34 not merely because the symbol $|_{\widetilde{\mathcal P}}$ is written, but because their integration-by-parts proof otherwise has the finite terms (44)-(46).

### D.54-D.55: what is inherited and what is used in the square completion

The first equalities in D.54-D.55 are applications of D.52. They therefore inherit D.34 from D.52.

The subsequent square completion is algebraic. First, D.27 gives

$$\begin{align}
\Delta R\sqrt{1+R^{2}}\,|\Phi|^{2} -\Delta R^{2}|\Phi|^{2} &=O(R^{-2\Delta})\longrightarrow0, \tag{47}
\end{align}$$

so the cutoff boundary term may be written as $\Delta R^{2}|\Phi|^{2}$. Then

$$\begin{align}
&(r^{3}+r)|\partial_r\Phi|^{2} +\Delta(\Delta-2)r|\Phi|^{2} +\partial_r\left(\Delta r^{2}|\Phi|^{2}\right)
\notag\\
&\hspace{2cm} = r|\partial_r\Phi|^{2} +r^{3} \left| \partial_r\Phi+\frac{\Delta}{r}\Phi \right|^{2}. \tag{48}
\end{align}$$

For the off-shell D.27 expansion (1),

$$\begin{align}
\partial_r\Phi+\frac{\Delta}{r}\Phi &= \sum_{p>1} (\Delta-p)\rho_p r^{-p-1}, \tag{49}
\end{align}$$

and hence, if $p_0>1$ is the first remainder exponent,

$$\begin{align}
r^{3} \left| \partial_r\Phi+\frac{\Delta}{r}\Phi \right|^{2} &=O(r^{1-2p_0}), \\
r|\partial_r\Phi|^{2} &=O(r^{-1-2\Delta}), \tag{50}
\end{align}$$

both of which are integrable. The tangential terms in D.54-D.55 are also $O(r^{-1-2\Delta})$.

Therefore:

- D.34 is required for the D.52 identity from which D.54-D.55 start.
- The replacement (47), the square identity (48), and the convergence estimate (50) use only D.27 with the pure-power derivative convention. They do not use D.33 or D.34.

$$\begin{align}
 & \int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h } \dfrac{\Delta}{2(2\Delta+1)} \hat{n}_{\rho}\sigma ^{\rho}_{~\mu}\tau _{\nu}\left((\xi ^{\mu}\nabla ^{\nu}\Phi ^{2}-\xi ^{\nu}\nabla ^{\mu}\Phi ^{2})+\dfrac{1}{2}(\nabla ^{\mu}\xi ^{\nu}-\nabla ^{\nu}\xi ^{\mu})\Phi ^{2}\right) \\
= & \int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h } \left( \dfrac{\Delta}{2}\tilde{\tau}_{\mu}\gamma ^{\mu}_{~\nu}\xi ^{\nu}\Phi ^{2} -\dfrac{\Delta}{2\Delta+1} \tilde{\tau}_{\mu}\gamma ^{\mu}_{~\nu}\xi ^{\nu} \Phi (n^{\mu}\nabla _{\mu}+\Delta)\Phi+(\text{terms vanishing under D.27}) \right)
\end{align}$$

---

we only consider the extra terms

$$\begin{align}
\Delta Q_{\xi}^{(\mathrm{D.53})} & =-\left.\lim_{ r_{\infty} \to \infty } \int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h } \dfrac{\Delta}{2} \tilde{\tau}_{\mu}\gamma ^{\mu}_{~\nu}\xi ^{\nu}\Phi ^{2}\right|_{\tilde{\mathcal{P}}} \\
\Delta Q_{\xi}^{(\mathrm{D.54})} & =-\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \dfrac{\Delta}{2(2\Delta+1)}(\nabla _{\mu}\nabla _{\nu}\Phi ^{2}-g_{\mu \nu}\nabla ^{2}\Phi ^{2}+2g_{\mu \nu}\Phi ^{2})\right|_{\tilde{\mathcal{P}}}
\end{align}$$

for $\displaystyle{\xi _{0}}$ and $\displaystyle{\bar{\xi}_{0}}$, the $\displaystyle{\Delta Q_{\xi}^{(\mathrm{D.53})}}$ gives the same expression

$$\begin{align}
\Delta Q_{\xi_{0}/\bar{\xi}_{0}}^{(\mathrm{D.53})} & =\lim_{ r_{\infty} \to \infty } \left.\dfrac{\Delta}{4}\int _{0}^{2\pi}\mathrm{d}\phi r_{\infty}\sqrt{ 1+r_{\infty}^{2} }\Phi ^{2}\right|_{\tilde{\mathcal{P}}}
\end{align}$$

$\displaystyle{\Delta Q_{\xi}^{(\mathrm{D.54})}}$ also gives the same expression

$$\begin{align}
\Delta Q_{\xi _{0}/\bar{\xi}_{0}}^{(\mathrm{D.54})} & =\lim_{ r_{\infty} \to \infty } -\dfrac{\Delta}{4(2\Delta+1)} \left.\int _{0}^{2\pi} \mathrm{d}\phi \left(r_{\infty}(1+r_{\infty}^{2})\partial _{r_{\infty}}\Phi ^{2}-r_{\infty}^{2}\Phi ^{2}\right)\right|_{\tilde{\mathcal{P}}}
\end{align}$$

suppose

$$\begin{align}
\Phi & =\alpha r^{-\Delta}+\beta r^{\Delta-2}+\dots
\end{align}$$

when impose the stronger boundary condition, we have $\displaystyle{\beta=0}$. insert into the $\displaystyle{\Delta Q_{\xi_{0}/\bar{\xi}_{0}}}$, we read

$$\begin{align}
\Delta Q_{\xi _{0}/\bar{\xi}_{0}}^{(\mathrm{D.53})} & =\lim_{ r_{\infty} \to \infty } \int _{0}^{2\pi} \mathrm{d}\phi\left(\dfrac{\Delta}{4}\alpha ^{2}r_{\infty}^{2-2\Delta}+\dfrac{\Delta}{2}\alpha \beta\right)+o(1) \\
\Delta Q_{\xi _{0}/\bar{\xi}_{0}}^{(\mathrm{D.54})} & =\lim_{ r_{\infty} \to \infty } \int _{0}^{2\pi}\mathrm{d}\phi\left(\dfrac{\Delta}{4}\alpha ^{2}r_{\infty}^{2-2\Delta}+\dfrac{3\Delta}{2(2\Delta+1)}\alpha \beta\right)+o(1)
\end{align}$$

then

$$\begin{align}
\Delta Q_{\xi _{0}/\bar{\xi}_{0}}^{(\mathrm{D.53})}-\Delta Q_{\xi _{0}/\bar{\xi}_{0}}^{(\mathrm{D.54})} & =\lim_{ r_{\infty} \to \infty } \dfrac{\Delta(1-\Delta)}{2\Delta+1}\int _{0}^{2\pi}\mathrm{d}\phi \alpha \beta+o(1)
\end{align}$$
