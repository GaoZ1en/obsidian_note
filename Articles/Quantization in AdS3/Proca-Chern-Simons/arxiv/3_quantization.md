---
title: "3_quantization"
date: 2026-04-13
summary: ""
---

# 3. Representing the Hamiltonian system with a proper set of variables

So far, we have reformulated the model as a Hamiltonian system. In this section, we follow the framework of our previous paper, introduce a mode basis, rewrite the symplectic structure in terms of discrete oscillator variables, and carry out the canonical quantization procedure.

## 3.1 The framework

Before turning to the technical details, we summarize the strategy.

We construct a complete set of independent positive-energy modes $f_N^\mu(x)$ satisfying the classical equations of motion. A real physical solution can then be expanded as

$$
A^\mu(x)\big|_{\widetilde{\mathcal{P}}} = \sum_N (f_N^\mu(x) a_N +f_{N}^{*\mu}(x)a_{N}^{*}).
$$

Here $N$ is a collective index. Treating the Fourier coefficients $a_N$ and $a_N^*$ as conjugate coordinates maps the continuous solution space $\widetilde{\mathcal{P}}$ to a discrete set of variables. Substituting the mode expansion into the bilinear symplectic form reduces it to

$$
\Omega\big|_{\widetilde{\mathcal{P}}} =\sum_{N_1, N_2} \Omega[f_{N_1}, f^{*}_{N_2}]\big|_{\widetilde{\mathcal{P}}} \delta a_{N_1} \wedge \delta a^{*}_{N_2}, 
$$

where $\Omega[\cdot,\cdot]|_{\widetilde{\mathcal{P}}}$ denotes the fundamental symplectic pairing integrated over a Cauchy slice. In the remainder of this section, we determine the explicit mode functions and derive the reduced symplectic form, the Noether charges, and the quantum oscillator algebra.

## 3.2 Operator factorization for the equations of motion

To solve the dynamically coupled Proca-Chern-Simons equations of motion, we define the first-order differential operator $\mathcal{D}$:

$$ \mathcal{D}_\mu^{~\nu} = \varepsilon_\mu^{~\alpha \nu}\nabla_\alpha. $$

By rewriting the entire equations of motion in terms of $\mathcal{D}$, we obtain a purely algebraic-looking differential equation:

$$ \left( \mathcal{D}^2 + \frac{k}{2\pi}\mathcal{D} - \mu^2 \right) A = 0. $$

Here, spacetime indices are implicitly contracted. This quadratic equation with respect to the operator $\mathcal{D}$ can be naturally factorized into two distinct, disconnected mode sectors:

$$ (\mathcal{D} - \mu_-)(\mathcal{D} + \mu_+) A = 0, $$

where the effective shifted masses are defined by

$$ \mu_{\pm} = \bar{\mu} \pm \frac{k}{4\pi}, \qquad \bar{\mu} \equiv \sqrt{\mu^2 + \frac{k^2}{16\pi^2}}, \qquad \mu_{\pm} > 0. $$

Notice that the differential operators of the two sectors commute:

$$ [\mathcal{D}-\mu_{-}, \mathcal{D}+\mu_{+}] = 0. $$

Thus, the general solutions can be expressed as a linear combination of two independent branches satisfying the respective first-order equations:

$$ \begin{align}
(\mathcal{D} \pm \mu_\pm) A_\pm & = 0.
\end{align} $$

here, the subscripts $\displaystyle{\pm}$ are introduced to distinguish the two branches.

In the following subsections, we will explicitly solve these two branches and confirm that they are indeed complete and independent.

## 3.3 The Killing symmetries

To construct the mode basis and evaluate the symplectic form, we exploit the Killing symmetries of global $\mathrm{AdS}_3$. The Killing fields $\xi_a$ and $\bar{\xi}_a$, with $a \in \{-1,0,1\}$, form an $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$ algebra under the Lie bracket.

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

Furthermore, by incorporating the transversality constraint $\nabla _{\mu}A^{\mu}=0$ along with the geometric identity established earlier ($\nabla^2 A_\mu + 2A_\mu = \mathcal{D}^2 A_\mu$), these actions can be equivalently written entirely in terms of the operator $\mathcal{D}$:

$$ \begin{align}
\mathcal{C}A & =-\frac{1}{4}\mathcal{D}^{2}A-\frac{1}{2}\mathcal{D}A, \\
\mathcal{\bar{C}}A & =-\frac{1}{4}\mathcal{D}^{2}A+\frac{1}{2}\mathcal{D}A.
\end{align} $$

This relation shows that $\mathcal{D}$ is naturally diagonalized on highest-weight representations of $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$.

## 3.4 Solving the modes

We now use the Killing symmetries to construct a complete set of normalizable modes. These solutions organize naturally into highest-weight representations of $\mathrm{SL}(2, \mathbb{R})_L \times \mathrm{SL}(2, \mathbb{R})_R$.

Applying $\mathcal{D} A_{\pm,N} = \mp \mu_\pm A_{\pm,N}$ to the Casimir operators immediately gives their eigenvalues in the left- and right-moving sectors:

$$ \begin{align}
\mathcal{C}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}+\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu}, \\
\mathcal{\bar{C}}A_{+,N}^{\mu} & =\left(-\frac{1}{4}\mu _{+}^{2}-\frac{1}{2}\mu _{+}\right)A_{+,N}^{\mu}
\end{align} $$

and

$$ \begin{align}
\mathcal{C}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}-\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu}, \\
\mathcal{\bar{C}}A_{-,N}^{\mu} & =\left(-\frac{1}{4}\mu _{-}^{2}+\frac{1}{2}\mu _{-}\right)A_{-,N}^{\mu}.
\end{align} $$

For a primary state $A_{\pm,0}^\mu$, the highest-weight conditions require annihilation by the raising operators. We therefore impose

$$ \begin{align}
\mathcal{L}_{\xi _{1}} A_{\pm,0}^\mu & = 0, \\
\mathcal{L}_{\bar{\xi}_{1}} A_{\pm,0}^\mu & = 0.
\end{align} $$

Suppose that the primary states have conformal dimensions $(h_{\pm}, \bar{h}_{\pm})$, namely

$$ \begin{align}
\mathcal{L}_{\xi _{0}}A_{\pm,0}^{\mu} & =-ih_{\pm}A_{\pm,0}^{\mu}, \\
\mathcal{L}_{\bar{\xi}_{0}}A_{\pm,0}^{\mu} & =-i\bar{h}_{\pm}A_{\pm,0}^{\mu};
\end{align} $$

Then the Casimir eigenvalues can be written in terms of these conformal dimensions as

$$ \begin{align}
\mathcal{C}A_{\pm,0}^{\mu} & =(-h_{\pm}^{2}+h_{\pm})A_{\pm,0}^{\mu}, \\
\mathcal{\bar{C}}A_{\pm,0}^{\mu} & =(-\bar{h}_{\pm}^{2}+\bar{h}_{\pm})A_{\pm,0}^{\mu},
\end{align} $$

Solving these relations yields

$$ \begin{align}
(h_{+},\bar{h}_{+})=\left(\frac{\mu _{+}}{2},1+\frac{\mu _{+}}{2}\right), \\
(h_{-},\bar{h}_{-})=\left(1+\frac{\mu _{-}}{2},\frac{\mu _{-}}{2}\right).
\end{align} $$

The alternative sign choices are excluded by the Appendix C argument: admissible positive-energy modes satisfy $\omega \pm m > 0$, which for a primary mode is equivalent to $h_{\pm} > 0$ and $\bar{h}_{\pm} > 0$. Solving the highest-weight equations then gives the primary modes

$$ \begin{align}
f_{+,0,0}^{\mu} & =\sqrt{ \frac{\mu _{+}+1}{\pi \bar{\mu}} }\frac{e^{-i(\mu _{+}+2)t}}{(1+r^{2})^{1+\mu _{+}/2}}\xi _{1}^{\mu} \\
f_{-,0,0}^{\mu} & =\sqrt{ \frac{\mu _{-}+1}{\pi \bar{\mu}} }\frac{e^{-i(\mu _{-}+2)t}}{(1+r^{2})^{1+\mu _{-}/2}}\bar{\xi}_{1}^{\mu}
\end{align} $$

Their descendants are obtained by repeated action of the lowering operators $\mathcal{L}_{\xi _{-1}}$ and $\mathcal{L}_{\bar{\xi}_{-1}}$:

$$ \begin{align}
f^{\mu}_{+,n,\bar{n}} & =\sqrt{ \frac{1}{n!(\mu _{+})_{n}\bar{n}!(\mu _{+}+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{+,0,0}^{\mu}, \\
f^{\mu}_{-,n,\bar{n}} & =\sqrt{ \frac{1}{n!(\mu _{-}+2)_{n}\bar{n}!(\mu _{-})_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{-,0,0}^{\mu}.
\end{align} $$

The normalization constants are fixed by the condition $\Omega[A,A^*] = -i$.

The actions of the Killing generators on these modes are

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

here, the subscripts $\displaystyle{+/-}$ distinguish the two disconnected branches of the solution spectrum.


## 3.5 Symplectic form

We now evaluate the symplectic two-form $\Omega[\cdot,\cdot]$ on the mode basis derived above. Before performing explicit integrations, it is useful to establish a selection rule that determines which mode pairs can have non-vanishing symplectic products.

Consider two arbitrary highest-weight modes $f_1$ and $f_2$. They satisfy the eigenvalue equations
$$ \begin{align}
\mathcal{C} f_j & = c_j f_j, \\
\mathcal{\bar{C}} f_j & = \bar{c}_j f_j, \\
\mathcal{L}_{\xi_0} f_j & = -i h_j f_j, \\
\mathcal{L}_{\bar{\xi}_0} f_j & = -i \bar{h}_j f_j, 
\end{align} $$
where $j \in \{1, 2\}$. 

Killing invariance of the symplectic form implies $\Omega[\mathcal{L}_{\xi} A, B] = - \Omega[A, \mathcal{L}_{\xi} B]$. As a consequence, the Casimir operators are symmetric in the symplectic pairing, so that $\Omega[\mathcal{C} A, B] = \Omega[A, \mathcal{C} B]$, and similarly for $\mathcal{\bar C}$.

Applying these relations to the eigenvalue equations above gives the algebraic constraints

$$ \begin{align}
c_1 \Omega[f_1, f_2] & = \Omega[\mathcal{C} f_1, f_2] = \Omega[f_1, \mathcal{C} f_2] = c_2 \Omega[f_1, f_2] \implies (c_1 - c_2) \Omega[f_1, f_2] = 0, \\
\bar{c}_1 \Omega[f_1, f_2] & = \Omega[\mathcal{\bar{C}} f_1, f_2] = \Omega[f_1, \mathcal{\bar{C}} f_2] = \bar{c}_2 \Omega[f_1, f_2] \implies (\bar{c}_1 - \bar{c}_2) \Omega[f_1, f_2] = 0, \\
-i h_1 \Omega[f_1, f_2] & = \Omega[\mathcal{L}_{\xi_0} f_1, f_2] = -\Omega[f_1, \mathcal{L}_{\xi_0} f_2] = i h_2 \Omega[f_1, f_2] \implies (h_1 + h_2) \Omega[f_1, f_2] = 0, \\
-i \bar{h}_1 \Omega[f_1, f_2] & = \Omega[\mathcal{L}_{\bar{\xi}_0} f_1, f_2] = -\Omega[f_1, \mathcal{L}_{\bar{\xi}_0} f_2] = i \bar{h}_2 \Omega[f_1, f_2] \implies (\bar{h}_1 + \bar{h}_2) \Omega[f_1, f_2] = 0.
\end{align} $$

Therefore $\Omega[f_1,f_2]$ can be non-zero only if the two modes have the same Casimir eigenvalues, $c_1=c_2$ and $\bar c_1=\bar c_2$, and opposite zero-mode weights, $h_1+h_2=0$ and $\bar h_1+\bar h_2=0$.

For the physical descendant modes constructed above, this implies that the only non-vanishing pairings are between a mode and its complex conjugate. With the normalization chosen in Section 3.4, we have

$$ \begin{align}
\Omega[f_{+,n,\bar{n}}, f^{*}_{+,n,\bar{n}}] & = -i, \\
\Omega[f_{-,n,\bar{n}}, f^{*}_{-,n,\bar{n}}] & = -i.
\end{align} $$

By antisymmetry, $\Omega[f^*,f]=i$, and all remaining pairings vanish. The symplectic form is therefore block diagonal in the two branches and their descendant towers.

## 3.6 Hamiltonian system

With the complete mode basis and their symplectic pairings in hand, we can formulate the classical Hamiltonian system in terms of discrete variables. The general real transverse field is expanded as

$$ A^{\mu}(x) = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{*}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{*}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right). $$

The solution space is therefore coordinatized by the independent complex variables $(a_{\pm,n,\bar{n}}, a^{*}_{\pm,n,\bar{n}})$.

Substituting this expansion into the symplectic form obtained in Section 3.5 yields

$$ 
\Omega\big|_{\widetilde{\mathcal{P}}} = -i \sum_{n,\bar{n}=0}^{\infty} \left( \delta a_{+,n,\bar{n}} \wedge \delta a^{*}_{+,n,\bar{n}} + \delta a_{-,n,\bar{n}} \wedge \delta a^{*}_{-,n,\bar{n}} \right). 
$$

Because this reduced symplectic form is non-degenerate, the physical phase space is described by a set of uncoupled canonical oscillators. The corresponding Hamiltonian vector fields $X_F$ are determined by

$$
X_F \cdot \Omega\big|_{\widetilde{\mathcal{P}}} = - \delta F.
$$

Applying this definition to the basic coordinates gives

$$ \begin{align}
X_{a_{\pm,n,\bar{n}}} \cdot \Omega\big|_{\widetilde{\mathcal{P}}} & = - \delta a_{\pm,n,\bar{n}}, \\
X_{a^*_{\pm,n,\bar{n}}} \cdot \Omega\big|_{\widetilde{\mathcal{P}}} & = - \delta a^*_{\pm,n,\bar{n}}.
\end{align} $$

Using the diagonal form of $\Omega|_{\widetilde{\mathcal{P}}}$, we obtain

$$ \begin{align}
X_{a_{\pm,n,\bar{n}}} & = i \frac{\delta}{\delta a^*_{\pm,n,\bar{n}}}, \\
X_{a^*_{\pm,n,\bar{n}}} & = -i \frac{\delta}{\delta a_{\pm,n,\bar{n}}}.
\end{align} $$

The Poisson brackets then follow from $\{F,G\}=-X_F(G)=X_G(F)$, namely

$$ \begin{align}
\{a_{+,n,\bar{n}}, a^{*}_{+,n',\bar{n}'}\} & = -i \delta_{n n'} \delta_{\bar{n} \bar{n}'}, \\
\{a_{-,n,\bar{n}}, a^{*}_{-,n',\bar{n}'}\} & = -i \delta_{n n'} \delta_{\bar{n} \bar{n}'}.
\end{align} $$

All remaining brackets vanish.

## 3.7 The Noether charges of the Killing symmetries

We now compute the conserved Noether charges associated with the Killing symmetries. On the covariant phase space, they are given by

$$
H_{\xi} = \frac{1}{2} \Omega[A, \mathcal{L}_{\xi} A].
$$

Substituting the mode expansion and using the orthogonality relations derived in Section 3.5 yields bilinear expressions in the oscillator variables. For the Cartan generators $\xi_0$ and $\bar\xi_0$, we obtain

$$ \begin{align}
H_{\xi_0} & = \sum_{n,\bar{n}=0}^{\infty} \left[ \left(\frac{\mu_+}{2} + n\right) a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}} + \left(\frac{\mu_-}{2} + 1 + n\right) a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}} \right], \\
H_{\bar{\xi}_0} & = \sum_{n,\bar{n}=0}^{\infty} \left[ \left(\frac{\mu_+}{2} + 1 + \bar{n}\right) a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}} + \left(\frac{\mu_-}{2} + \bar{n}\right) a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}} \right].
\end{align} $$

For the left-moving ladder generators, which shift $n \to n\pm1$, we find

$$ \begin{align}
H_{\xi_{-1}} & = i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(n+1)(\mu_+ + n)}\; a^{*}_{+,n+1,\bar{n}} a_{+,n,\bar{n}} + \sqrt{(n+1)(\mu_- + 2 + n)}\; a^{*}_{-,n+1,\bar{n}} a_{-,n,\bar{n}} \right], \\
H_{\xi_{1}} & = -i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(n+1)(\mu_+ + n)}\; a^{*}_{+,n,\bar{n}} a_{+,n+1,\bar{n}} + \sqrt{(n+1)(\mu_- + 2 + n)}\; a^{*}_{-,n,\bar{n}} a_{-,n+1,\bar{n}} \right].
\end{align} $$

Similarly, the right-moving ladder generators, which shift $\bar n \to \bar n \pm 1$, are given by

$$ \begin{align}
H_{\bar{\xi}_{-1}} & = i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(\bar{n}+1)(\mu_+ + 2 + \bar{n})}\; a^{*}_{+,n,\bar{n}+1} a_{+,n,\bar{n}} + \sqrt{(\bar{n}+1)(\mu_- + \bar{n})}\; a^{*}_{-,n,\bar{n}+1} a_{-,n,\bar{n}} \right], \\
H_{\bar{\xi}_{1}} & = -i \sum_{n,\bar{n}=0}^{\infty} \left[ \sqrt{(\bar{n}+1)(\mu_+ + 2 + \bar{n})}\; a^{*}_{+,n,\bar{n}} a_{+,n,\bar{n}+1} + \sqrt{(\bar{n}+1)(\mu_- + \bar{n})}\; a^{*}_{-,n,\bar{n}} a_{-,n,\bar{n}+1} \right].
\end{align} $$

These charges reproduce the $\mathfrak{sl}(2,\mathbb{R})_L \times \mathfrak{sl}(2,\mathbb{R})_R$ algebra under the Poisson brackets,

$$
\{H_{\xi_a}, H_{\xi_b}\} = H_{[\xi_a,\xi_b]}.
$$

Moreover, using the brackets of Section 3.6, one verifies that

$$ \{H_{\xi}, A^\mu(x)\} = - \mathcal{L}_{\xi} A^\mu(x). $$

This confirms that the Noether charges generate the expected geometric action on the field.

## 3.8 Canonical quantization

So far, we have reduced the theory to a set of uncoupled oscillators. We now quantize them canonically.

We first expand the transverse gauge field in terms of mode operators:

$$ A^{\mu}(x) = \sum_{n,\bar{n}=0}^{\infty} \left( a_{+,n,\bar{n}} f^{\mu}_{+,n,\bar{n}} + a^{\dagger}_{+,n,\bar{n}} f^{*\mu}_{+,n,\bar{n}} + a_{-,n,\bar{n}} f^{\mu}_{-,n,\bar{n}} + a^{\dagger}_{-,n,\bar{n}} f^{*\mu}_{-,n,\bar{n}} \right). $$

Promoting the classical coefficients $(a,a^*)$ to operators $(a,a^\dagger)$ and using Dirac's prescription $[\cdot,\cdot]=i\{\cdot,\cdot\}$, we obtain the non-vanishing commutators

$$ [ a_{+,n,\bar{n}}, a^{\dagger}_{+,n',\bar{n}'} ] = \delta_{n n'} \delta_{\bar{n} \bar{n}'}, \quad [ a_{-,n,\bar{n}}, a^{\dagger}_{-,n',\bar{n}'} ] = \delta_{n n'} \delta_{\bar{n} \bar{n}'}. $$

We define the vacuum state by

$$ a_{\pm,n,\bar{n}} |0\rangle = 0. $$

The Fock states are constructed by acting with the creation operators $a^{\dagger}_{\pm,n,\bar{n}}$ on $|0\rangle$:

$$ |\{N_{+,n,\bar{n}}\}, \{N_{-,n,\bar{n}}\}\rangle = \prod_{n,\bar{n}=0}^{\infty} \frac{(a^{\dagger}_{+,n,\bar{n}})^{N_{+,n,\bar{n}}}}{\sqrt{N_{+,n,\bar{n}}!}} \frac{(a^{\dagger}_{-,n,\bar{n}})^{N_{-,n,\bar{n}}}}{\sqrt{N_{-,n,\bar{n}}!}} |0\rangle. $$

So far, we have completely quantized the free massive Proca-Chern-Simons vector field model in the global AdS$_3$ spacetime. In Section 6, we will use this oscillator representation to construct the coherent-state path integral and evaluate the thermal partition function.
