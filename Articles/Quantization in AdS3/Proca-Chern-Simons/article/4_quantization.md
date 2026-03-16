# 4. Mode Expansion and Quantization

In this section, we seek the exact physical mode solutions for the free parameter space $(\mu, k)$ and perform the canonical quantization procedure. 

## 4.1 The framework

Before going to the technical details, we first introduce the framework:

We solve out a set of complete and independent modes $f_N^\mu(x)$ of the equations of motion. With the set of modes $f_N^\mu(x)$, we represent the general solution in the form of a mode expansion as

$$
A^\mu(x)\big|_{\widetilde{\mathcal{P}}} = \sum_N f_N^\mu(x) a_N .
$$

We view the coefficients $a_N$ in the mode expansion as a set of variables that parameterize the pre-phase space $\widetilde{\mathcal{P}}$ which is the set of solutions. And, by applying the general solution to the symplectic form, we compute the expression of the symplectic form represented with the set of variables $a_N$ as

$$
\Omega\big|_{\widetilde{\mathcal{P}}} =\sum_{N_1, N_2} \Omega[f_{N_1}, f_{N_2}]\big|_{\widetilde{\mathcal{P}}} \delta a_{N_1} \wedge \delta a_{N_2}, 
$$

where $\displaystyle{\Omega[\cdot,\cdot]|_{\widetilde{P}}}$ is defined in former sections. Below, we will explicitly solve the modes and compute the expression of the symplectic form.

## 4.2 Operator Factorization

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

## 4.3 The Killing Symmetries and Casimir Operators

To proceed with evaluating the exact physical solutions for the separated branches, we first leverage the rich isometry group of global $\mathrm{AdS}_3$ by introducing the Casimir operators of the Killing symmetry algebra $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ as:

$$ \begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi _{1}}+i\mathcal{L}_{\xi_{0}} \\
 & =\mathcal{L}_{\xi _{0}}\mathcal{L}_{\xi_{0}}-\mathcal{L}_{\xi_{1}}\mathcal{L}_{\xi _{-1}}-i\mathcal{L}_{\xi_{0}}
\end{align} $$

and

$$ \begin{align}
\mathcal{\bar{C}} & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}+i\mathcal{L}_{\bar{\xi}_{0}} \\
 & =\mathcal{L}_{\bar{\xi}_{0}}\mathcal{L}_{\bar{\xi}_{0}}-\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}-i\mathcal{L}_{\bar{\xi}_{0}}.
\end{align} $$

Here, these algebraic Casimir operators commute with all the native Killing symmetries:

$$ \begin{align}
[\mathcal{C},\mathcal{L}_{\xi _{a}}] & =[\mathcal{C},\mathcal{L}_{\bar{\xi}_{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\xi _{a}}]=[\mathcal{\bar{C}},\mathcal{L}_{\bar{\xi}_{a}}]=0, \quad a \in \{-1,0,1\}.
\end{align} $$

Tracing these algebraic representations onto a transverse vector field $A^{\mu}$ (satisfying $\nabla_{\mu}A^{\mu}=0$), they can be mapped directly into the fundamental geometric differential operators of the spacetime:

$$ \begin{align}
\mathcal{C}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}-\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}, \\
\mathcal{\bar{C}}A^{\mu} & =-\frac{1}{4}\nabla _{\nu}\nabla ^{\nu}A^{\mu}+\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}.
\end{align} $$

Furthermore, by incorporating the constraint $\displaystyle{\nabla _{\mu}A^{\mu}=0}$ along with the geometric identity established earlier ($-\nabla^2 A_\mu - 2A_\mu = \mathcal{D}^2 A_\mu$), these actions can be equivalently and elegantly repackaged entirely in terms of the pure operator $\mathcal{D}$:

$$ \begin{align}
\mathcal{C}A & =-\frac{1}{4}\mathcal{D}^{2}A-\frac{1}{2}\mathcal{D}A, \\
\mathcal{\bar{C}}A & =-\frac{1}{4}\mathcal{D}^{2}A+\frac{1}{2}\mathcal{D}A.
\end{align} $$

This profound relationship demonstrates that the geometric operator $\mathcal{D}$ natively diagonalizes the $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ representations.

## 4.4 Representation of the Highest Weight States

by taking use of the Killing symmetries, we choose the set of modes such that they form representations of the Killing symmetries $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$. and, in each representation, we furthermore choose the modes to be the eigenfunctionf of the time translation generator

$$\begin{align}
\frac{\partial}{\partial t} & =\xi _{0}+\bar{\xi}_{0}
\end{align}$$

and the rotation generator

$$\begin{align}
\frac{\partial}{\partial \phi} & =-\xi _{0}+\bar{\xi}_{0}
\end{align}$$

under such a choice of the set of modes, we represent the individual modes in the form of

$$\begin{align}
f_{\lambda,N}^{\mu} & =e^{-i\omega t}e^{im\phi}\tilde{f}^{\mu}(r)
\end{align}$$

here, $\displaystyle{\lambda}$ labels the representations with $\displaystyle{+}$ and $\displaystyle{-}$ corresponding to the solutions of the factorized equations $\displaystyle{(\mathcal{D}\mp \mu _{\pm})f_{\pm}= 0}$, and $\displaystyle{N}$ labels the different modes in each representation. $\displaystyle{(\omega,m)}$ label the eigenvalye of the time translation and rotation generators as

$$\begin{align}
\mathcal{L}_{\frac{\partial}{\partial t}}f_{\lambda,N}^{\mu} & =-i\omega f_{\lambda,N}^{\mu} \\
\mathcal{L}_{\frac{\partial}{\partial \phi}}f_{\lambda,N}^{\mu} & =imf_{\lambda,N}
\end{align}$$

respectively. $\displaystyle{m}$ is a real integer, and we make no assumption for $\displaystyle{\omega}$ for the moment.

By directly substituting $\mathcal{D} A_{\pm,N} = \pm \mu_\pm A_{\pm,N}$ into the Casimir operator relations derived above, we naturally evaluate their eigenvalues on the separated left- and right-handed sectors:

$$\begin{align}
\mathcal{C}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}+\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu} \\
\mathcal{\bar{C}}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}-\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu}
\end{align}$$

and

$$\begin{align}
\mathcal{C}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}-\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu} \\
\mathcal{\bar{C}}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}+\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu}
\end{align}$$

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

## 4.5 Completeness of the Solution Spectrum

Crucially, we must confirm that there are no additional physical configurations hiding outside the span of these highest-weight descendants. Extending the argument from the pure Proca case: assuming the existence of any leftover propagating physical zero-mode obeying both the transverse conditions $\nabla A = 0$ along with finite normalizable asymptotic behaviors, we could repeatedly apply the raising generators to lower their frequency. This hypothetical mode must eventually terminate to avoid violating positive energy boundedness (or asymptotic boundary fall-offs). The terminating state would exactly satisfy the conditions of a primary highest-weight mode. Because Eq. $(\mathcal{D} \mp \mu_\pm)A = 0$ are ordinary local differential equations whose complete spatial bases we already exhaustively retrieved as $\{f_{+,0,0}^\mu, f_{-,0,0}^\mu\}$, no such independent leftover state can physically be constructed. The direct sum $\mathcal{H}_+ \oplus \mathcal{H}_-$ is rigorously complete on the global boundary conditions. *(An exceptional case mapping integer gaps $\mu_+ - \mu_- \in \mathbb{Z}$ is briefly discussed in Appendix C).*

## 4.6 Canonical Quantization and the Partition Function

Expanding the classical vector field into its full complex orthonormal basis evaluated against $\omega$:

$$ A^{\mu} = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{\dagger}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{\dagger}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right), $$

we transition to the quantum framework by promoting Fourier coefficients to operator states satisfying standard commutation brackets $[a_{i}, a^\dagger_j] = \delta_{ij}$. The unique global vacuum is trivially defined by the shared annihilation kernel:
$$ a_{\pm,n,\bar{n}} |\Omega\rangle = 0, \quad \forall n, \bar{n}. $$

Finally, by building the Hamiltonian and angular momentum charge out of the creation/annihilation normal-ordered polynomials, we trace up the canonical ensemble to evaluate the one-loop partition function. Defining $q = e^{-\beta + i\alpha}$ and $\bar{q} = e^{-\beta - i\alpha}$, the combination perfectly factors over the $\pm$ symmetries as:

$$ Z[\beta, \alpha] = \mathrm{Tr} \left( e^{-\beta H + i\alpha J} \right) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{\left(1-q^{\mu_{+}/2+1+n}\bar{q}^{\mu_{+}/2+\bar{n}}\right) \left(1-q^{-\mu_{-}/2+n}\bar{q}^{-\mu_{-}/2+1+\bar{n}}\right)} .$$
This compact exact spectrum reveals the exact chiral asymmetric shift dictated by the topological Chern-Simons mass injection.