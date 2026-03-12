# 5. Appendices

## Appendix A: Well-definedness of Asymptotic Boundary Conditions

In Section 2, we imported the identical asymptotic decay conditions used in the purely Proca case:
$$A_t = o(r^{-2}), \quad A_r = o(r^{-1}), \quad A_\phi = o(r^{-2}).$$

Here, we must prove these are sufficient to guarantee the boundary components of the variational principle $\delta S$ explicitly vanish, even when modified by the Chern-Simons addition. The generic modification adds a term integrated over a topological spatial boundary at the radius $r \to \infty$:
$$ I_{CS, \text{bdry}} \sim \int_{r \to \infty} \mathrm{d}t \mathrm{d}\phi \, \varepsilon^{\mu r \rho} A_\mu \delta A_\rho. $$

Given that $\sqrt{-g} \sim r$ near the boundary, the pseudo-tensor evaluates as $\varepsilon^{tr\phi} = \frac{1}{\sqrt{-g}} \sim \frac{1}{r}$. Therefore, testing the most extreme coupling component $(\mu, \rho) = (t, \phi)$:
$$ \varepsilon^{tr\phi} A_t \delta A_\phi \sim \mathcal{O}(r^{-1}) \times o(r^{-2}) \times o(r^{-2}) = o(r^{-5}). $$
The area measure introduces the integration measure $\mathrm{d}t \mathrm{d}\phi$ scaled inherently by standard angular/temporal elements. Because the radial component decays vastly faster than required ($o(r^{-5})$ scaling limits to $0$ as $r \to \infty$), the boundary pieces inherently regularize to strictly $0$. Thus, both the symplectic form limit and global variations are fully mathematically rigorous inside $\mathcal{P}$.

## Appendix B: Normalization and the Symplectic Inner Product

To fix the respective coefficient terms $C_+$ and $C_-$ determining highest-weight functions, the states must resolve back against identically scaled symplectic products:
$$ \omega[f_{+}, f_+^*] = -i\delta_{n_1 n_2}\delta_{\bar{n}_1 \bar{n}_2}. $$

Recall $\omega$ hosts dual dependencies tracking topological and explicit terms:
$$ \omega = \int_{\Sigma} \mathrm{d}^2x \sqrt{\sigma} \, \tau_0 \big( \delta_1 F^{0\nu} \wedge \delta_2 A_\nu + \frac{k}{4\pi} \varepsilon^{0\nu\rho} \delta_1 A_\nu \wedge \delta_2 A_\rho \big). $$

*[TODO: Insert explicit spatial integrals over variables $r$ evaluating to strictly normalized functions, isolating the normalization constants specific to $\sqrt{\frac{\mu_+ + 1}{\pi\mu_+}}$ for arbitrary mode expansion.]*

## Appendix C: Exceptional case involving integer gaps ($\mu_+ - \mu_- \in \mathbb{Z}$)

While the previous sections treat generalized massive couplings defining distinct branches, there emerges a pathological kinematic threshold when parameters mathematically align such that $\mu_+ - \mu_- \in \mathbb{Z}$. When gap weights equate to integers, sequentially generating descendants using $SL(2, \mathbb{R})$ raising symmetries along the left-handed sector maps identically across the weight threshold onto a right-handed primary topology (and vice-versa).

*[TODO: Insert specific details on whether generic matrices undergo multiplet re-diagonalization across mode overlaps. Usually, this suggests logarithmic degeneracies analogous to non-unitary chiral models, requiring a Jordan block deformation to accurately preserve full $\omega$ orthonormality.]*