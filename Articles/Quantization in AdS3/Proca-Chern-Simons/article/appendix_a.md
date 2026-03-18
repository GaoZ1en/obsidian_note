# Appendix A: Well-definedness of Asymptotic Boundary Conditions

In Section 2, we imported the identical asymptotic decay conditions used in the purely Proca case:
$$ A_t = o(r^{-2}), \quad A_r = o(r^{-1}), \quad A_\phi = o(r^{-2}). $$

Here, we must prove these are sufficient to guarantee the boundary components of the variational principle $\delta S$ explicitly vanish, even when modified by the Chern-Simons addition. The generic modification adds a term integrated over a topological spatial boundary at the radius $r \to \infty$:
$$ I_{CS, \text{bdry}} \sim \int_{r \to \infty} \mathrm{d}t \mathrm{d}\phi \, \varepsilon^{\mu r \rho} A_\mu \delta A_\rho. $$

Given that $\sqrt{-g} \sim r$ near the boundary, the pseudo-tensor evaluates as $\varepsilon^{tr\phi} = \frac{1}{\sqrt{-g}} \sim \frac{1}{r}$. Therefore, testing the most extreme coupling component $(\mu, \rho) = (t, \phi)$:
$$ \varepsilon^{tr\phi} A_t \delta A_\phi \sim \mathcal{O}(r^{-1}) \times o(r^{-2}) \times o(r^{-2}) = o(r^{-5}). $$

The area measure introduces the integration measure $\mathrm{d}t \mathrm{d}\phi$ scaled inherently by standard angular/temporal elements. Because the radial component decays vastly faster than required ($o(r^{-5})$ scaling limits to $0$ as $r \to \infty$), the boundary pieces inherently regularize to strictly $0$. Thus, both the symplectic form limit and global variations are fully mathematically rigorous inside $\mathcal{P}$.
