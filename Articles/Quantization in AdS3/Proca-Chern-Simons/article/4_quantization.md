# 4. Mode Expansion and Quantization

In this section, we seek the exact physical mode solutions for the free parameter space $(\mu, k)$ and perform the canonical quantization procedure. 

## 4.1 Operator Factorization

To elegantly solve the dynamically coupled Proca-Chern-Simons equations of motion, we define the first-order differential operator $\mathcal{D}$:

$$ \mathcal{D}_\mu^{~\nu} = \varepsilon_\mu^{~\alpha \nu}\nabla_\alpha. $$

Notice that due to the transverse condition $\nabla_\mu A^\mu = 0$ intrinsically derived in Sec 2.3, the pure Maxwell term inside the EOM can be expressed gracefully using the operator $\mathcal{D}$. Specifically, utilizing the commutation of covariant derivatives and the specific property of the AdS$_3$ Riemann curvature tensor $R_{\mu\nu} = -2g_{\mu\nu}$, one finds:

$$ (\mathcal{D}^2 A)_\mu = \nabla_\nu F^{\nu}_{~~\mu}. $$

*[TODO: Insert specific algebraic steps for the $\mathcal{D}^2 A_\mu$ derivation here. Specifically, $\mathcal{D}^2 A_\mu = \nabla^2 A_\mu - \nabla_\mu(\nabla_\nu A^\nu) + R_{\mu\nu}A^\nu$, which exactly yields $-\nabla^\nu F_{\nu\mu}$ under the given transverse condition.]*

By rewriting the entire EOM in terms of $\mathcal{D}$, we obtain a purely algebraic-looking differential equation:

$$ \left( \mathcal{D}^2 + \frac{k}{2\pi}\mathcal{D} - \mu^2 \right) A = 0. $$

This quadratic equation with respect to operator $\mathcal{D}$ can be naturally factorized into two distinct disconnected mode sectors:

$$ (\mathcal{D} - \mu_+)(\mathcal{D} + \mu_-) A = 0, $$

where the effective shifted masses are explicitly defined as:

$$ \mu_{\pm} = \sqrt{\mu^2 + \frac{k^2}{16\pi^2}} \mp \frac{k}{4\pi}. $$

Since we require a genuine physical field with bare real mass $\mu > 0$, we have the property $\sqrt{\mu^2 + x^2} > |x|$ for any generic constant $x$. Therefore, regardless of the sign of the Chern-Simons coupling $k$, it guarantees that:

$$ \mu_+ > 0 \quad \text{and} \quad \mu_- > 0. $$

This mathematically demonstrates that this theory is inherently stable and free from tachyon/unitarity-breaking pathologies for general choices of $\mu > 0$, separating the solution space precisely into a "left-handed vector mode" satisfying $(\mathcal{D} - \mu_+) A_+ = 0$ and a "right-handed vector mode" satisfying $(\mathcal{D} + \mu_-) A_- = 0$.

## 4.2 Representation of the Highest Weight States

Guided by the factorization, the equations $(\mathcal{D} \mp \mu_\pm)A_\pm = 0$ significantly refine the complexity of the fields' components. Using the Casimir operators $\mathcal{C}$ and $\bar{\mathcal{C}}$ forming the $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$ representation ring, we evaluate their eigenvalues on the separate sectors:

$$
\mathcal{C} A_+^\mu = \left(-\frac{1}{4}\mu_+^2 + \frac{1}{2}\mu_+\right) A_+^\mu, \quad 
\bar{\mathcal{C}} A_+^\mu = \left(-\frac{1}{4}\mu_+^2 - \frac{1}{2}\mu_+\right) A_+^\mu,
$$
and
$$
\mathcal{C} A_-^\mu = \left(-\frac{1}{4}\mu_-^2 - \frac{1}{2}\mu_-\right) A_-^\mu, \quad 
\bar{\mathcal{C}} A_-^\mu = \left(-\frac{1}{4}\mu_-^2 + \frac{1}{2}\mu_-\right) A_-^\mu.
$$

We can trace back these eigenvalues $h(h-1)$ and $\bar{h}(\bar{h}-1)$ to identify the conformal dimensions $(h, \bar{h})$ associated to the two branches:
$$ (h_+, \bar{h}_+) = \left(\frac{\mu_+}{2} \,,\, 1+\frac{\mu_+}{2}\right) $$
$$ (h_-, \bar{h}_-) = \left(1+\frac{\mu_-}{2} \,,\, \frac{\mu_-}{2}\right) $$
*(We drop the non-unitary branches with negative conformal dimensions as enforced by normalizability $\mu_\pm > 0$ and the boundary conditions).*

Solving the first-order differential systems explicitly with the boundary asymptotic constraints yields the exact analytic configurations of the corresponding positive frequency primary states:

$$ f_{+,0,0}^{\mu} = C_+ \frac{e^{-i(\mu_+ + 2)t}}{(1+r^2)^{1+\mu_+/2}} \xi_{1}^{\mu} $$
$$ f_{-,0,0}^{\mu} = C_- \frac{e^{-i(-\mu_- + 2)t}}{(1+r^2)^{1+\mu_-/2}} \bar{\xi}_{1}^{\mu} $$

Here, $C_+$ and $C_-$ are normalization constants fixed entirely by enforcing the symplectic product condition $\omega[A, A^*] = -i\delta$. Their exact expressions and integrations are shifted to Appendix B. 

All generalized excited descendant states filling up the physical degrees of freedom are then obtained through algebraic ladder operators:
$$ f_{\pm,n,\bar{n}}^{\mu} = (\mathcal{L}_{\xi_{-1}})^n (\mathcal{L}_{\bar{\xi}_{-1}})^{\bar{n}} f_{\pm,0,0}^{\mu}. $$

## 4.3 Completeness of the Solution Spectrum

Crucially, we must confirm that there are no additional physical configurations hiding outside the span of these highest-weight descendants. Extending the argument from the pure Proca case: assuming the existence of any leftover propagating physical zero-mode obeying both the transverse conditions $\nabla A = 0$ along with finite normalizable asymptotic behaviors, we could repeatedly apply the raising generators to lower their frequency. This hypothetical mode must eventually terminate to avoid violating positive energy boundedness (or asymptotic boundary fall-offs). The terminating state would exactly satisfy the conditions of a primary highest-weight mode. Because Eq. $(\mathcal{D} \mp \mu_\pm)A = 0$ are ordinary local differential equations whose complete spatial bases we already exhaustively retrieved as $\{f_{+,0,0}^\mu, f_{-,0,0}^\mu\}$, no such independent leftover state can physically be constructed. The direct sum $\mathcal{H}_+ \oplus \mathcal{H}_-$ is rigorously complete on the global boundary conditions. *(An exceptional case mapping integer gaps $\mu_+ - \mu_- \in \mathbb{Z}$ is briefly discussed in Appendix C).*

## 4.4 Canonical Quantization and the Partition Function

Expanding the classical vector field into its full complex orthonormal basis evaluated against $\omega$:

$$ A^{\mu} = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{\dagger}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{\dagger}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right), $$

we transition to the quantum framework by promoting Fourier coefficients to operator states satisfying standard commutation brackets $[a_{i}, a^\dagger_j] = \delta_{ij}$. The unique global vacuum is trivially defined by the shared annihilation kernel:
$$ a_{\pm,n,\bar{n}} |\Omega\rangle = 0, \quad \forall n, \bar{n}. $$

Finally, by building the Hamiltonian and angular momentum charge out of the creation/annihilation normal-ordered polynomials, we trace up the canonical ensemble to evaluate the one-loop partition function. Defining $q = e^{-\beta + i\alpha}$ and $\bar{q} = e^{-\beta - i\alpha}$, the combination perfectly factors over the $\pm$ symmetries as:

$$ Z[\beta, \alpha] = \mathrm{Tr} \left( e^{-\beta H + i\alpha J} \right) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{\left(1-q^{\mu_{+}/2+1+n}\bar{q}^{\mu_{+}/2+\bar{n}}\right) \left(1-q^{-\mu_{-}/2+n}\bar{q}^{-\mu_{-}/2+1+\bar{n}}\right)} .$$
This compact exact spectrum reveals the exact chiral asymmetric shift dictated by the topological Chern-Simons mass injection.