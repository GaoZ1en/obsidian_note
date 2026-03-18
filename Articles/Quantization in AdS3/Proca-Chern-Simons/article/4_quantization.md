# 4. Representing the Hamiltonian system with a proper set of variables

So far, we have reformulated the model into a Hamiltonian system. In this section, by taking use of the mode expansion, we represent the Hamiltonian system with a proper set of variables and perform the canonical quantization procedure.

## 4.1 The framework

Before going into the technical details, we first summarize the framework:

We construct an explicit set of complete and independent positive-energy modes $f_N^\mu(x)$ that satisfy the classical equations of motion. Spanned by this mode basis, the general physical solution can be securely parameterized through the generic mode expansion:

$$
A^\mu(x)\big|_{\widetilde{\mathcal{P}}} = \sum_N (f_N^\mu(x) a_N +f_{N}^{*\mu}(x)a_{N}^{\dagger}).
$$

By treating the Fourier coefficients $a_N$ as conjugate coordinates, we elegantly map the continuous solution space $\widetilde{\mathcal{P}}$ onto a discrete variable formulation. Inserting this general expanded solution systematically into the bilinear symplectic density, we directly reduce the expression of the overall symplectic form to the localized discrete modes $a_N$ as:

$$
\Omega\big|_{\widetilde{\mathcal{P}}} =\sum_{N_1, N_2} \Omega[f_{N_1}, f^{*}_{N_2}]\big|_{\widetilde{\mathcal{P}}} \delta a_{N_1} \wedge \delta a^{\dagger}_{N_2}, 
$$

where $\Omega[\cdot,\cdot]|_{\widetilde{\mathcal{P}}}$ evaluates the fundamental symplectic pairing integrated over the initial spatial slices. Below, we mathematically solve for the exact profiles of these states and construct the explicit algebra of the reduced symplectic form respectively.

## 4.2 Operator factorization for the equations of motion

To elegantly solve the dynamically coupled Proca-Chern-Simons equations of motion, we define the first-order differential operator $\mathcal{D}$:

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

To proceed with evaluating the exact physical solutions for the separated branches, we construct the Casimir "operators" of the Killing symmetry algebra $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ as:

$$ \begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi _{1}}+i\mathcal{L}_{\xi_{0}} \\
 & =\mathcal{L}_{\xi _{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi_{1}}\mathcal{L}_{\xi _{-1}}-i\mathcal{L}_{\xi_{0}}
\end{align} $$

and

$$ \begin{align}
\mathcal{\bar{C}} & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}+i\mathcal{L}_{\bar{\xi}_{0}} \\
 & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}-i\mathcal{L}_{\bar{\xi}_{0}}.
\end{align} $$

Here, these algebraic Casimir operators strongly commute with all native Killing symmetries:

$$ \begin{align}
[\mathcal{C},\mathcal{L}_{\xi _{a}}] & =[\mathcal{C},\mathcal{L}_{\bar{\xi}_{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\xi _{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\bar{\xi}_{a}}]=0, \quad a \in \{-1,0,1\}.
\end{align} $$

Tracing these algebraic representations onto a transverse vector field $A^{\mu}$ (satisfying $\nabla_{\mu}A^{\mu}=0$), they can be mapped directly into the fundamental geometric differential operators of the spacetime:

$$ \begin{align}
\mathcal{C}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}-\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}, \\
\mathcal{\bar{C}}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}+\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}.
\end{align} $$

Furthermore, by incorporating the transversality constraint $\nabla _{\mu}A^{\mu}=0$ along with the geometric identity established earlier ($-\nabla^2 A_\mu - 2A_\mu = \mathcal{D}^2 A_\mu$), these actions can be equivalently and elegantly repackaged entirely in terms of the pure operator $\mathcal{D}$:

$$ \begin{align}
\mathcal{C}A & =-\frac{1}{4}\mathcal{D}^{2}A-\frac{1}{2}\mathcal{D}A, \\
\mathcal{\bar{C}}A & =-\frac{1}{4}\mathcal{D}^{2}A+\frac{1}{2}\mathcal{D}A.
\end{align} $$

This profound relationship guarantees that the geometric operator $\mathcal{D}$ intrinsically diagonalizes the basis mapped onto the isolated $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ representations.

## 4.4 Solving the modes

We now solve a set of complete and independent modes of the equations of motion utilizing the Killing symmetries. In building an appropriate basis framework, we systematically group these states spanning exact highest-weight representations reflecting the global symmetries. 

### 4.4.1 The eigenvalues of the Casimir "operators"

By directly mapping the highest-weight criteria bounds $\mathcal{D} A_{\pm,N} = \pm \mu_\pm A_{\pm,N}$ to the expanded continuous Casimir limits above, we naturally pinpoint their strict analytical eigenvalues separated uniquely across left- and right-handed sectors:

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
3. See Appendix A for supplementary materials concerning the geometric setups, including a rigorous derivation of the explicit forms of the primary states and the normalization constants. There, we also provide algebraic arguments ensuring that there are no extra physical modes outside the full span of these highest-weight descendants.
4. For special parameter choices with integer gaps $\mu_+ - \mu_- \in \mathbb{Z}$, the two branches may encounter degenerate overlapping states. We can systematically construct a complete orthogonal basis by choosing one physical mode from each overlapping pair. The details of this treatment are discussed in Appendix C.

## 4.5 Symplectic form and Noether charges



## 4.6 Hamiltonian system




## 4.7 The Noether charges of the Killing symmetries


## 4.8 Canonical quantization

Expanding the classical vector field into its full complex orthonormal basis evaluated against $\omega$:

$$ A^{\mu} = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{\dagger}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{\dagger}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right), $$

we transition to the quantum framework by promoting Fourier coefficients to operator states satisfying standard commutation brackets $[a_{i}, a^\dagger_j] = \delta_{ij}$. The unique global vacuum is trivially defined by the shared annihilation kernel:
$$ a_{\pm,n,\bar{n}} |\Omega\rangle = 0, \quad \forall n, \bar{n}. $$

Finally, by building the Hamiltonian and angular momentum charge out of the creation/annihilation normal-ordered polynomials, we trace up the canonical ensemble to evaluate the one-loop partition function. Defining $q = e^{-\beta + i\alpha}$ and $\bar{q} = e^{-\beta - i\alpha}$, the combination perfectly factors over the $\pm$ symmetries as:

$$ Z[\beta, \alpha] = \mathrm{Tr} \left( e^{-\beta H + i\alpha J} \right) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{\left(1-q^{\mu_{+}/2+1+n}\bar{q}^{\mu_{+}/2+\bar{n}}\right) \left(1-q^{-\mu_{-}/2+n}\bar{q}^{-\mu_{-}/2+1+\bar{n}}\right)} .$$
This compact exact spectrum reveals the exact chiral asymmetric shift dictated by the topological Chern-Simons mass injection.

