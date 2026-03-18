# 4. Representing the Hamiltonian system with a proper set of variables

So far, we have reformulated the model into a Hamiltonian system. In this section, using the mode expansion, we represent the Hamiltonian system with a proper set of variables and perform the canonical quantization procedure.

## 4.1 The framework

Before going into the technical details, we first summarize the framework:

We construct a complete set of independent positive-energy modes $f_N^\mu(x)$ that satisfy the classical equations of motion. Spanned by this mode basis, the real physical solution can be parameterized through the mode expansion:

$$
A^\mu(x)\big|_{\widetilde{\mathcal{P}}} = \sum_N (f_N^\mu(x) a_N +f_{N}^{*\mu}(x)a_{N}^{*}).
$$

Here, $N$ serves as a collective index representing both the branches ($\pm$) and the conformal representation levels ($n, \bar{n}$). 

By treating the Fourier coefficients $a_N$ and $a^*_N$ as conjugate coordinates, we map the continuous solution space $\widetilde{\mathcal{P}}$ onto a discrete variable formulation. Inserting this expanded solution into the bilinear symplectic density, we reduce the symplectic form to the localized discrete modes $a_N$ as:

$$
\Omega\big|_{\widetilde{\mathcal{P}}} =\sum_{N_1, N_2} \Omega[f_{N_1}, f^{*}_{N_2}]\big|_{\widetilde{\mathcal{P}}} \delta a_{N_1} \wedge \delta a^{*}_{N_2}, 
$$

where $\Omega[\cdot,\cdot]|_{\widetilde{\mathcal{P}}}$ evaluates the fundamental symplectic pairing integrated over the initial spatial slices. Below, we mathematically solve for the exact profiles of these states and construct the explicit algebra of the reduced symplectic form.

## 4.2 Operator factorization for the equations of motion

To solve the dynamically coupled Proca-Chern-Simons equations of motion, we define the first-order differential operator $\mathcal{D}$:

$$ \mathcal{D}_\mu^{~\nu} = \varepsilon_\mu^{~\alpha \nu}\nabla_\alpha. $$

By rewriting the entire equations of motion in terms of $\mathcal{D}$, we obtain a purely algebraic-looking differential equation:

$$ \left( \mathcal{D}^2 + \frac{k}{2\pi}\mathcal{D} - \mu^2 \right) A = 0. $$

Here, spacetime indices are implicitly contracted. This quadratic equation with respect to the operator $\mathcal{D}$ can be naturally factorized into two distinct, disconnected mode sectors:

$$ (\mathcal{D} - \mu_+)(\mathcal{D} + \mu_-) A = 0, $$

where the effective shifted masses $\mu_{\pm}$ are explicitly defined as:

$$ \mu_{\pm} = \sqrt{\mu^2 + \frac{k^2}{16\pi^2}} \mp \frac{k}{4\pi} > 0. $$

Notice that the differential operators of the two sectors commute:

$$ [\mathcal{D}-\mu_{+}, \mathcal{D}+\mu_{-}] = 0. $$

Thus, the general solutions can be expressed as a linear combination of two independent branches satisfying the respective first-order equations:

$$ \begin{align}
(\mathcal{D} - \mu_+) A_+ & = 0, \\
(\mathcal{D} + \mu_-) A_- & = 0.
\end{align} $$

In the following subsections, we will explicitly solve these two branches and confirm that they are indeed complete and independent.

## 4.3 The Killing symmetries

We will solve the modes and compute the expression of the symplectic form utilizing the Killing symmetries of the global $\mathrm{AdS}_3$ spacetime. The independent Killing fields $\xi_a, \bar{\xi}_a$ ($a \in \{-1, 0, 1\}$) form an $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ algebra under the Lie bracket.

To evaluate the physical solutions for the separated branches, we construct the Casimir operators of the Killing symmetry algebra $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ as:

$$ \begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi _{1}}+i\mathcal{L}_{\xi_{0}} \\
 & =\mathcal{L}_{\xi _{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi_{1}}\mathcal{L}_{\xi _{-1}}-i\mathcal{L}_{\xi_{0}}
\end{align} $$

and

$$ \begin{align}
\mathcal{\bar{C}} & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}+i\mathcal{L}_{\bar{\xi}_{0}} \\
 & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}-i\mathcal{L}_{\bar{\xi}_{0}}.
\end{align} $$

These Casimir operators commute with all Killing symmetries:

$$ \begin{align}
[\mathcal{C},\mathcal{L}_{\xi _{a}}] & =[\mathcal{C},\mathcal{L}_{\bar{\xi}_{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\xi _{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\bar{\xi}_{a}}]=0, \quad a \in \{-1,0,1\}.
\end{align} $$

Tracing these algebraic representations onto a transverse vector field $A^{\mu}$ (satisfying $\nabla_{\mu}A^{\mu}=0$), they can be mapped directly into the fundamental geometric differential operators of the spacetime:

$$ \begin{align}
\mathcal{C}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}-\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}, \\
\mathcal{\bar{C}}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}+\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}.
\end{align} $$

Furthermore, by incorporating the transversality constraint $\nabla _{\mu}A^{\mu}=0$ along with the geometric identity established earlier ($-\nabla^2 A_\mu - 2A_\mu = \mathcal{D}^2 A_\mu$), these actions can be equivalently written entirely in terms of the operator $\mathcal{D}$:

$$ \begin{align}
\mathcal{C}A & =-\frac{1}{4}\mathcal{D}^{2}A-\frac{1}{2}\mathcal{D}A, \\
\mathcal{\bar{C}}A & =-\frac{1}{4}\mathcal{D}^{2}A+\frac{1}{2}\mathcal{D}A.
\end{align} $$

This relationship guarantees that $\mathcal{D}$ is inherently diagonalized on the highest-weight representations of $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$.

## 4.4 Solving the modes

We now solve a set of complete and independent modes of the equations of motion utilizing the Killing symmetries. In building an appropriate basis framework, we systematically group these states spanning exact highest-weight representations reflecting the global symmetries. 

### 4.4.1 The eigenvalues of the Casimir operators

By applying the conditions $\mathcal{D} A_{\pm,N} = \pm \mu_\pm A_{\pm,N}$ to the Casimir operators, we obtain their resulting eigenvalues across the left- and right-handed sectors:

$$ \begin{align}
\mathcal{C}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}+\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu}, \\
\mathcal{\bar{C}}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}-\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu}
\end{align} $$

and

$$ \begin{align}
\mathcal{C}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}-\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu}, \\
\mathcal{\bar{C}}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}+\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu}.
\end{align} $$

### 4.4.2 Representation of the highest weight states

For primary states $A_{\pm,0}^\mu$, their algebraic properties ensure decoupling from descending step extensions, meaning they are annihilated by the raising generators $\mathcal{L}_{\xi_1}$ and $\mathcal{L}_{\bar{\xi}_1}$. Thus we simply impose:

$$ \begin{align}
\mathcal{L}_{\xi _{1}} A_{\pm,0}^\mu & = 0, \\
\mathcal{L}_{\bar{\xi}_{1}} A_{\pm,0}^\mu & = 0.
\end{align} $$

Suppose the conformal dimensions of the primaries are $(h_{\pm}, \bar{h}_{\pm})$, i.e., they are eigenstates of $\mathcal{L}_{\xi _{0}}$ and $\mathcal{L}_{\bar{\xi}_{0}}$ with eigenvalues $h_{\pm}$ and $\bar{h}_{\pm}$ as

$$ \begin{align}
\mathcal{L}_{\xi _{0}}A_{\pm,0}^{\mu} & =-ih_{\pm}A_{\pm,0}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{0}}A_{\pm,0}^{\mu} & =-i\bar{h}_{\pm}A_{\pm,0}^{\mu};
\end{align} $$

then the Casimir eigenvalues can be expressed in terms of the conformal dimensions as

$$ \begin{align}
\mathcal{C}A_{\pm,0}^{\mu} & =(-h_{\pm}^{2}+h_{\pm})A_{\pm,0}^{\mu}, \\
\mathcal{\bar{C}}A_{\pm,0}^{\mu} & =(-\bar{h}_{\pm}^{2}-\bar{h}_{\pm})A_{\pm,0}^{\mu},
\end{align} $$

which gives the conformal dimensions of the primaries as

$$ \begin{align}
(h_{+},\bar{h}_{+})=\left(\frac{\mu _{+}}{2},1+\frac{\mu _{+}}{2}\right), \\
(h_{-},\bar{h}_{-})=\left(1+\frac{\mu _{-}}{2},\frac{\mu _{-}}{2}\right).
\end{align} $$

We drop the non-unitary branches with negative conformal dimensions as enforced by normalizability $\mu_\pm > 0$ and the boundary conditions. By directly solving the highest weight conditions, we get the explicit forms of the primary states:

$$ \begin{align}
f_{+,0,0}^{\mu} & =\sqrt{ \frac{\mu _{+}+1}{\pi \mu _{+}} }\frac{e^{-i(\mu _{+}+2)t}}{(1+r^{2})^{1+\mu _{+}/2}}\xi _{1}^{\mu} \\
f_{-,0,0}^{\mu} & =\sqrt{ \frac{\mu _{-}+1}{\pi \mu _{-}} }\frac{e^{-i(\mu _{-}+2)t}}{(1+r^{2})^{1+\mu _{-}/2}}\bar{\xi}_{1}^{\mu}
\end{align} $$

And their descendants are generated by the ladder operators $\mathcal{L}_{\xi _{-1}}$ and $\mathcal{L}_{\bar{\xi}_{-1}}$ as

$$ \begin{align}
f^{\mu}_{+,n,\bar{n}} & =\sqrt{ \frac{1}{n!(\mu _{+})_{n}\bar{n}!(\mu _{+}+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{+,0,0}^{\mu}, \\
f^{\mu}_{-,n,\bar{n}} & =\sqrt{ \frac{1}{n!(\mu _{-}+2)_{n}\bar{n}!(\mu _{-})_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{-,0,0}^{\mu}.
\end{align} $$

The normalization constants are fixed by enforcing the symplectic product condition $\Omega[A, A^*] = -i$. We will explain the details of the normalization in the next subsection.

The actions of the Killing symmetries on these modes are

$$ \begin{align}
\mathcal{L}_{\xi_{0}}f_{+,n,\bar{n}}^{\mu} & =-i\left(\frac{\mu _{+}}{2}+n\right)f_{+,n,\bar{n}}^{\mu}, \\
\mathcal{L}_{\xi _{-1}}f_{+,n,\bar{n}}^{\mu} & =\sqrt{ (n+1)(\mu _{+}+n) }f_{+,n+1,\bar{n}}^{\mu}, \\
\mathcal{L}_{\xi _{1}}f_{+,n,\bar{n}}^{\mu} & =-\sqrt{ n(\mu _{+}+n-1) }f_{+,n-1,\bar{n}}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{0}}f_{+,n,\bar{n}}^{\mu} & =-i\left(\frac{\mu _{+}}{2}+1+\bar{n}\right)f_{+,n,\bar{n}}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{-1}}f_{+,n,\bar{n}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu _{+}+2+\bar{n}) }f_{+,n,\bar{n}+1}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{1}}f_{+,n,\bar{n}}^{\mu} & =-\sqrt{ \bar{n}(\mu _{+}+1+\bar{n}) }f_{+,n,\bar{n}-1}^{\mu}
\end{align} $$

and

$$ \begin{align}
\mathcal{L}_{\xi_{0}}f_{-,n,\bar{n}}^{\mu} & =-i\left(\frac{\mu _{-}}{2}+1+n\right)f_{-,n,\bar{n}}^{\mu}, \\
\mathcal{L}_{\xi _{-1}}f_{-,n,\bar{n}}^{\mu} & =\sqrt{ (n+1)(\mu _{-}+2+n) }f_{-,n+1,\bar{n}}^{\mu}, \\
\mathcal{L}_{\xi _{1}}f_{-,n,\bar{n}}^{\mu} & =-\sqrt{ n(\mu _{-}+1+n) }f_{-,n-1,\bar{n}}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{0}}f_{-,n,\bar{n}}^{\mu} & =-i\left(\frac{\mu _{-}}{2}+\bar{n}\right)f_{-,n,\bar{n}}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{-1}}f_{-,n,\bar{n}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu _{-}+\bar{n}) }f_{-,n,\bar{n}+1}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{1}}f_{-,n,\bar{n}}^{\mu} & =-\sqrt{ \bar{n}(\mu _{-}-1+\bar{n}) }f_{-,n,\bar{n}-1}^{\mu}.
\end{align} $$

We now provide a few remarks concerning the expressions above:

1. $(\lambda)_{n}$ is the Pochhammer symbol defined as $(\lambda)_{n}=\frac{\Gamma(\lambda+n)}{\Gamma(\lambda)}$.
2. The subscripts $+/-$ distinguish the two disconnected branches of the solution spectrum.
3. See [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_b|Appendix B]] for supplementary materials concerning the geometric setups, including a rigorous derivation of the explicit forms of the primary states and the normalization constants. There, we also provide algebraic arguments ensuring that there are no extra physical modes outside the full span of these highest-weight descendants.
4. For special parameter choices with integer gaps $\mu_+ - \mu_- \in \mathbb{Z}$, the two branches may encounter degenerate overlapping states. We can systematically construct a complete orthogonal basis by choosing one physical mode from each overlapping pair. The details of this treatment are discussed in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_c|Appendix C]].

## 4.5 Symplectic form

We now compute the values of the symplectic two-form $\Omega[\cdot, \cdot]$ when evaluated on the mode basis derived in the previous subsections. Before performing explicit integration, it is instructive to establish a general selection rule. This rule will dictate which pairs of modes are allowed to have a non-vanishing symplectic product.

Let us consider two arbitrary modes, denoted as $f_1$ and $f_2$, which belong to the highest-weight representations. These modes satisfy the characteristic eigenvalue equations corresponding to the Casimir operators and the zero-modes of the Killing symmetries:
$$ \begin{align}
\mathcal{C} f_j & = c_j f_j, \\
\mathcal{\bar{C}} f_j & = \bar{c}_j f_j, \\
\mathcal{L}_{\xi_0} f_j & = -i h_j f_j, \\
\mathcal{L}_{\bar{\xi}_0} f_j & = -i \bar{h}_j f_j, 
\end{align} $$
where $j \in \{1, 2\}$. 

The symplectic form defined over the covariant phase space possesses a fundamental geometric property: the anti-symmetry of the Lie derivative within the symplectic product, expressed generally as $\Omega[\mathcal{L}_{\xi} A, B] = - \Omega[A, \mathcal{L}_{\xi} B]$. As a direct consequence of this feature, the self-adjoint Casimir operator shifts symmetrically between the paired fields, yielding $\Omega[\mathcal{C} A, B] = \Omega[A, \mathcal{C} B]$.

By systematically evaluating the symplectic form on the equations above, we can generate a set of strict algebraic constraints bounding the intrinsic eigenvalues:

$$ \begin{align}
c_1 \Omega[f_1, f_2] & = \Omega[\mathcal{C} f_1, f_2] = \Omega[f_1, \mathcal{C} f_2] = c_2 \Omega[f_1, f_2] \implies (c_1 - c_2) \Omega[f_1, f_2] = 0, \\
\bar{c}_1 \Omega[f_1, f_2] & = \Omega[\mathcal{\bar{C}} f_1, f_2] = \Omega[f_1, \mathcal{\bar{C}} f_2] = \bar{c}_2 \Omega[f_1, f_2] \implies (\bar{c}_1 - \bar{c}_2) \Omega[f_1, f_2] = 0, \\
-i h_1 \Omega[f_1, f_2] & = \Omega[\mathcal{L}_{\xi_0} f_1, f_2] = -\Omega[f_1, \mathcal{L}_{\xi_0} f_2] = i h_2 \Omega[f_1, f_2] \implies (h_1 + h_2) \Omega[f_1, f_2] = 0, \\
-i \bar{h}_1 \Omega[f_1, f_2] & = \Omega[\mathcal{L}_{\bar{\xi}_0} f_1, f_2] = -\Omega[f_1, \mathcal{L}_{\bar{\xi}_0} f_2] = i \bar{h}_2 \Omega[f_1, f_2] \implies (\bar{h}_1 + \bar{h}_2) \Omega[f_1, f_2] = 0.
\end{align} $$

These analytic boundary limits stringently dictate a mandatory selection rule. Specifically, the components of the symplectic form $\Omega[f_1, f_2]$ must vanish unless the paired evaluated states identically map to the same Casimir eigenvalues ($c_1 = c_2$, $\bar{c}_1 = \bar{c}_2$), whilst exactly balancing opposite zero-mode conformal weights ($h_1 + h_2 = 0$, $\bar{h}_1 + \bar{h}_2 = 0$).

For the physical descendant states mapped out previously, this geometric property restricts any non-zero symplectic pairings precisely to mutually complex-conjugate modes. (Note that the complex conjugate state $f^*$ has exactly opposite zero-mode scaling dimensions to its paired state $f$, identically satisfying $h_1 + h_2 = 0$). Consistent with preserving standard positive-energy boundaries over the representations, the chosen scaled amplitudes enforce the following normalizations:

$$ \begin{align}
\Omega[f_{+,n,\bar{n}}, f^{*}_{+,n,\bar{n}}] & = -i, \\
\Omega[f_{-,n,\bar{n}}, f^{*}_{-,n,\bar{n}}] & = -i.
\end{align} $$

Consequently, by anti-symmetry, we also have $\Omega[f^*, f] = i$. All other disjoint cross-components evaluate identically to zero. This establishes a strictly orthogonal, block-diagonal functional framework traversing the two distinct mass roots and their respective descendant towers.

## 4.6 Hamiltonian system

With the complete set of independent mode bases and the constrained symplectic metrics, we proceed to formulate the classical Hamiltonian system. First, by superposing the complete state spectrum, we expand the generic transverse real gauge field as a linear combination:

$$ A^{\mu}(x) = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{*}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{*}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right). $$

The general solution of the field theory is completely parameterized by the independent, uncoupled complex conjugate coordinates $(a_{\pm,n,\bar{n}}, a^{*}_{\pm,n,\bar{n}})$. These complex variables serve as the coordinates defining our underlying pre-phase space $\widetilde{\mathcal{P}}$.

By directly applying this mode decomposition into the spatial symplectic equation computed in Subsection 4.5, the generalized covariant integration condenses into localized discrete components:

$$ 
\Omega\big|_{\widetilde{\mathcal{P}}} = -i \sum_{n,\bar{n}=0}^{\infty} \left( \delta a_{+,n,\bar{n}} \wedge \delta a^{*}_{+,n,\bar{n}} + \delta a_{-,n,\bar{n}} \wedge \delta a^{*}_{-,n,\bar{n}} \right). 
$$

Because this reduced symplectic form is non-degenerate, our physical phase space spans a set of uncoupled canonical harmonic variables. To systematically extract the Poisson brackets corresponding to these limits, we first calculate the independent continuous vector fields $X_F$ governing these coordinates. Within Hamiltonian mechanics, these fields are defined exactly via the inner product condition $X_F \cdot \Omega\big|_{\widetilde{\mathcal{P}}} = - \delta F$. Tracking over the independent coordinate basis generates:

$$ \begin{align}
X_{a_{\pm,n,\bar{n}}} \cdot \Omega\big|_{\widetilde{\mathcal{P}}} & = - \delta a_{\pm,n,\bar{n}}, \\
X_{a^*_{\pm,n,\bar{n}}} \cdot \Omega\big|_{\widetilde{\mathcal{P}}} & = - \delta a^*_{\pm,n,\bar{n}}.
\end{align} $$

Substituting the diagonalized discrete symplectic form mapped previously, we explicitly solve for the isolated Hamiltonian vector flows corresponding to the component functions as:

$$ \begin{align}
X_{a_{\pm,n,\bar{n}}} & = i \frac{\delta}{\delta a^*_{\pm,n,\bar{n}}}, \\
X_{a^*_{\pm,n,\bar{n}}} & = -i \frac{\delta}{\delta a_{\pm,n,\bar{n}}}.
\end{align} $$

With the Hamiltonian vector fields evaluated, we finally apply the canonical boundary projection definition relating them back to Poisson brackets, defined as $\{F, G\} = -X_F(G) = X_G(F)$. This operation separates out the pure uncoupled mode dependencies, leading straightforwardly to canonical conjugate pairs:

$$ \begin{align}
\{a_{+,n,\bar{n}}, a^{*}_{+,n',\bar{n}'}\} & = -i \delta_{n n'} \delta_{\bar{n} \bar{n}'}, \\
\{a_{-,n,\bar{n}}, a^{*}_{-,n',\bar{n}'}\} & = -i \delta_{n n'} \delta_{\bar{n} \bar{n}'}.
\end{align} $$

All identical index variable combinations spanning cross-coordinate values evaluate to zero trivially due to anti-symmetric bracket boundary constraints (e.g., $\{a, a\} = 0$ and $\{a^*, a^*\} = 0$).

## 4.7 The Noether charges of the Killing symmetries

We now analytically evaluate the conserved classical Noether charges. Recall that within field theory on the covariant phase space, the continuous symmetry generators driving the shift are evaluated using the symplectic product as $H_{\xi} = -\frac{1}{2} \Omega[A, \mathcal{L}_{\xi} A]$. 

Substituting the decomposed gauge field explicitly into this generator definition, and simultaneously leveraging the purely orthogonal, block-diagonal functional constraints derived in Section 4.5, these classical integrals decouple. They natively transition into isolated components uniquely evaluating the representation bounds.

For the primary diagonal zero-mode generator charges, which produce standard shifts matching identically the calculated conformal dimensions across the underlying Lie representations, we analytically compute:

$$ \begin{align}
H_{\xi_0} & = \sum_{n,\bar{n}=0}^{\infty} \left[ \left(\frac{\mu_+}{2} + n\right) a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}} + \left(\frac{\mu_-}{2} + 1 + n\right) a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}} \right], \\
H_{\bar{\xi}_0} & = \sum_{n,\bar{n}=0}^{\infty} \left[ \left(\frac{\mu_+}{2} + 1 + \bar{n}\right) a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}} + \left(\frac{\mu_-}{2} + \bar{n}\right) a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}} \right].
\end{align} $$

Similarly, we track the purely localized off-diagonal ladder charge operators. These generators translate through dynamically defined adjacent conformal levels without blending branches. Because the paired symplectic states vanish over non-adjacent mappings uniformly, these physical steps clearly uncouple algebraically. 

For the left-moving stepping symmetries mapping $n \to n \pm 1$, we calculate:

$$ \begin{align}
H_{\xi_{-1}} & = i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(n+1)(\mu_+ + n)}\; a^{*}_{+,n+1,\bar{n}} a_{+,n,\bar{n}} + \sqrt{(n+1)(\mu_- + 2 + n)}\; a^{*}_{-,n+1,\bar{n}} a_{-,n,\bar{n}} \right], \\
H_{\xi_{1}} & = -i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(n+1)(\mu_+ + n)}\; a^{*}_{+,n,\bar{n}} a_{+,n+1,\bar{n}} + \sqrt{(n+1)(\mu_- + 2 + n)}\; a^{*}_{-,n,\bar{n}} a_{-,n+1,\bar{n}} \right].
\end{align} $$

And analogously for their right-moving counterparts spanning $\bar{n} \to \bar{n} \pm 1$, we isolate equivalent stepping configurations:

$$ \begin{align}
H_{\bar{\xi}_{-1}} & = i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(\bar{n}+1)(\mu_+ + 2 + \bar{n})}\; a^{*}_{+,n,\bar{n}+1} a_{+,n,\bar{n}} + \sqrt{(\bar{n}+1)(\mu_- + \bar{n})}\; a^{*}_{-,n,\bar{n}+1} a_{-,n,\bar{n}} \right], \\
H_{\bar{\xi}_{1}} & = -i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(\bar{n}+1)(\mu_+ + 2 + \bar{n})}\; a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}+1} + \sqrt{(\bar{n}+1)(\mu_- + \bar{n})}\; a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}+1} \right].
\end{align} $$

Mathematically integrating these discrete mode elements using variables derived in Section 4.6 completely reproduces the classical uncoupled bracket configurations. They seamlessly map back to recreate the underlying symmetry Lie algebra $\{H_{\xi_a}, H_{\xi_b}\} = H_{[\xi_a, \xi_b]}$, thus satisfying Noether's primary equivalence conditions rigorously. 

Furthermore, uniquely by combining these specific expressions with the previously evaluated Poisson structures, we verify the fundamental canonical equation relating the globally defined Noether charge directly back to the spatial field dynamic variations:

$$ \{H_{\xi}, A^\mu(x)\} = - \mathcal{L}_{\xi} A^\mu(x). $$

Resolving this condition mathematically secures the expected correspondence mapping Noether's phase space transformation to the geometric spacetime continuous coordinate shifts across the extracted Fourier basis.

## 4.8 Canonical quantization

So far, we have reformulated our model to a Hamiltonian system. We now perform a canonical quantization for the Hamiltonian system, upgrading it to a quantum mechanical system.

First, we expand the generic transverse gauge field as a linear combination of mode operators:

$$ A^{\mu}(x) = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{\dagger}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{\dagger}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right). $$

Following standard canonical quantization, we explicitly elevate the classical Fourier coefficients $(a, a^*)$ to continuous quantum operators $(a, a^\dagger)$. This mapping dictates the canonical commutators via Dirac's prescription $[\cdot, \cdot] = i \{ \cdot, \cdot \}$. Consequently, the non-zero commutators are:

<<<<<<< HEAD
$$ Z[\beta, \alpha] = \mathrm{Tr} \left( e^{-\beta H + i\alpha J} \right) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{\left(1-q^{\mu_{+}/2+1+n}\bar{q}^{\mu_{+}/2+\bar{n}}\right) \left(1-q^{-\mu_{-}/2+n}\bar{q}^{-\mu_{-}/2+1+\bar{n}}\right)} .$$
This compact exact spectrum reveals the exact chiral asymmetric shift dictated by the topological Chern-Simons mass injection.

=======
$$ [ a_{+,n,\bar{n}}, a^{\dagger}_{+,n',\bar{n}'} ] = \delta_{n n'} \delta_{\bar{n} \bar{n}'}, \quad [ a_{-,n,\bar{n}}, a^{\dagger}_{-,n',\bar{n}'} ] = \delta_{n n'} \delta_{\bar{n} \bar{n}'}. $$

We define the vacuum state as $|0\rangle$ such that

$$ a_{\pm,n,\bar{n}} |0\rangle = 0. $$

We can construct the excited states by acting the creation operators $a^{\dagger}_{\pm,n,\bar{n}}$, for $n, \bar{n} = 0, 1, 2, ...$, onto the vacuum state $|0\rangle$ as

$$ |\{N_{+,n,\bar{n}}\}, \{N_{-,n,\bar{n}}\}\rangle = \prod_{n,\bar{n}=0}^{\infty} \frac{(a^{\dagger}_{+,n,\bar{n}})^{N_{+,n,\bar{n}}}}{\sqrt{N_{+,n,\bar{n}}!}} \frac{(a^{\dagger}_{-,n,\bar{n}})^{N_{-,n,\bar{n}}}}{\sqrt{N_{-,n,\bar{n}}!}} |0\rangle. $$

So far, we have completely quantized the free massive Proca-Chern-Simons vector field model in the global AdS3 spacetime.
