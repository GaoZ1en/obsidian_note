# AGENTS.md — Quantization in AdS

## Scope

Research workspace for AdS quantization projects, including AdS3 gauge and gravity systems, AdS4 linearized gravity, perturbation theory, and linked subtopics.

## Rules

- Treat subfolders as separate topic tracks; do not flatten or merge them.
- Preserve established notation across related notes unless correcting a clear mistake.
- When adding or removing major notes, update the local `README.md`.
- Keep exploratory calculations in topic folders; manuscript-specific workflow rules belong to child folders with their own `AGENTS.md`.

## Mathematica / xAct / Sage

- For xAct calculations in this workspace, load `xTras` when available and use `FullSimplification[]` to simplify tensor expressions, especially after xPert/xCPS variations, curvature identities, or index canonicalization steps.
- For representation-theory calculations in this workspace, use the Sage MCP before editing mathematical claims when the claim involves finite groups, Lie algebras, root systems, Weyl characters, Young diagrams, symmetric functions, tensor-product decompositions, compact-subalgebra branching, or combinatorial representation theory.
  - Report which checks were Sage-backed, which were Mathematica/xAct-backed, and which remain representation-theoretic assumptions or literature-derived statements.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.

## Covariant Phase Space alignment

In this workspace, the covariant phase space formalism (shorthand CPS) follows the conventions of Harlow–Wu 1906.08616 (and a wait-to-be-open article of Wu), which means the following pipeline.

### Formalism and Noether charge

Considering the (asymptotically AdS/flat) spacetime $\displaystyle{M}$ (with signature $\displaystyle{(-,+,+,\dots)}$) sandwiched by Cauchy surfaces $\displaystyle{\Sigma _{f}}$ and $\displaystyle{\Sigma _{i}}$ with spatial boundary $\displaystyle{\Gamma}$. The **action** of a field theory on $\displaystyle{M}$ about dynamical field $\displaystyle{\Psi}$ is

$$\begin{align}
S & =\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }L[\Psi]+\int _{\Gamma}\mathrm{d}^{d}x\sqrt{ -\gamma }\ell[\Psi]
\end{align}$$

(*notice the spacetime/hypersurface measure*) $\displaystyle{\Psi}$ is associated with some appropriate (asymptotic) boundary conditions on $\displaystyle{\Gamma}$, so that the action is finite, and the variation of the action with respect to $\displaystyle{\Psi}$ takes the form

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }E_{a}\delta \Psi ^{a}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
\theta & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\theta _{\mu}[\Psi,\delta \Psi]-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau ^{\mu}n^{\nu}\theta_{\mu \nu}[\Psi,\delta \Psi]
\end{align}$$

here terms supports on $\displaystyle{\Gamma}$ vanishes (or integration-by-part to $\displaystyle{\partial \Sigma}$) due to the boundary conditions of $\displaystyle{\Psi}$ on $\displaystyle{\Gamma}$. $\displaystyle{\theta}$ is called the **pre-symplectic potential**, take another variation of $\displaystyle{\theta}$ yields the **pre-symplectic form**

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\delta \theta _{\mu}-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau ^{\mu}n^{\nu}\delta \theta_{\mu \nu}
\end{align}$$

the set of solutions of the equation of motion $\displaystyle{E_{a}=0}$ is called the **pre-phase space**. Here the "pre-" means that there may be gauge redundancies.

We summarize an infinitesimal transformation

$$\begin{align}
\Psi ^{a} & \to \Psi ^{a}+\lambda\Delta _{\lambda} \Psi ^{a},  & \lambda & \to 0
\end{align}$$

as a vector $\displaystyle{X_{\lambda}}$ of the set of configurations

$$\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d+1}x \Delta _{\lambda}\Psi ^{a} \dfrac{\delta}{\delta \Psi ^{a}}
\end{align}$$

which act on $\displaystyle{\Psi ^{a}}$ as

$$\begin{align}
X_{\lambda}\cdot \delta \Psi ^{a} & =\Delta _{\lambda}\Psi ^{a}
\end{align}$$

we say $\displaystyle{X_{\lambda}}$ is a **symmetry** if and only if it acts on the action as (**NO EOM USED HERE!!!**)

$$\begin{align}
X_{\lambda}\cdot \delta S & =\alpha _{\lambda}|_{\Sigma _{f}}-\alpha _{\lambda}|_{\Sigma _{i}}+\beta _{\lambda}|_{\Gamma} \\
\alpha _{\lambda} & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau _{\mu}\alpha _{\lambda}^{\mu}-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau _{\mu}n_{\nu}\alpha _{\lambda}^{\mu \nu}
\end{align}$$

here $\displaystyle{\beta _{\lambda}|_{\Gamma}}$, which may not appear, is the classical anomaly that is configuration-independent, i.e., $\displaystyle{\dfrac{\delta \beta _{\lambda}}{\delta \Psi ^{a}}=0}$. If $\displaystyle{X_{\lambda}}$ is a symmetry, we have the corresponding **Noether charge** $\displaystyle{H_{\lambda}}$

$$\begin{align}
H_{\lambda} & =X_{\lambda}\cdot \theta-\alpha _{\lambda}
\end{align}$$

### Canonical Quantization of Free Theory

To do quantization for a free field theory in the above framework of CPS, we first find the complete (after quotientin gauge redundancies) set positive-frequency (which means takes the form of $\displaystyle{e^{-i\omega t}\times \dots}$) solutions of the eom $\displaystyle{\left\{\Phi _{I},I\in \mathcal{I}\right\}}$, in which every modes are normalized in the following sense of symplectic form: for each mode $\displaystyle{\Phi_{I}}$, we define two vectors of the set of configurations

$$\begin{align}
X_{I} & =\int \mathrm{d}^{d+1}x\Phi ^{a}_{I} \dfrac{\delta}{\delta \Psi ^{a}} \\
X_{I}^{*} & =\int \mathrm{d}^{d+1}x\Phi ^{a*}_{I} \dfrac{\delta}{\delta \Psi^{a}}
\end{align}$$

and for two solutions $\displaystyle{\Phi _{I_{1}},\Phi _{I_{2}}}$, we have the orthonormal condition

$$\begin{align}
(\Phi _{I_{1}},\Phi _{I_{2}}) & =iX^{*}_{I_{2}}\cdot X_{I_{1}}\cdot \omega=\delta _{I_{1}I_{2}}
\end{align}$$

we expand the dynamical field $\displaystyle{\Psi}$ as

$$\begin{align}
\Psi & =\sum _{I\in \mathcal{I}}(a_{I}\Phi _{I}+a^{\dagger}_{I}\Phi _{I}^{*})
\end{align}$$

therefore the symplectic form can be rewritten as

$$\begin{align}
\omega & =i\sum _{I\in \mathcal{I}}\delta a^{\dagger}_{I}\wedge \delta a_{I}
\end{align}$$

which gives the standard Poisson bracket

$$\begin{align}
\left\{a^{\dagger}_{I_{1}},a_{I_{2}}\right\} & =i\delta _{I_{1}I_{2}}
\end{align}$$

to define Poisson brackets between two arbitrary operators, refer 52-70 lines of note [[Articles/Quantization in AdS/perturbation/formalism|formalism]]. Upon quantization, we lift coeficients $\displaystyle{a_{I}^{\dagger},a_{I}}$ and other relevant quantities to operators, and the Poisson brackets to canonical commutators

$$\begin{align}
a_{I}^{\dagger},a_{I},\mathcal{O} & \to a_{I}^{\dagger},a_{I},\mathcal{O} \\
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} & \to [\mathcal{O}_{1},\mathcal{O}_{2}]=-i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}
\end{align}$$

here we drop the hat on operators for simplicity.

### Perturbation Theory of Interacting Theory

To do perturbation theory, refer 128-165 lines of the note [[Articles/Quantization in AdS/perturbation/formalism|formalism]] for prefered old-fashioned perturbation theory.

### Summary

you should completely follows the conventions and terms in the above pipeline, and should not introduce any new notation or concepts not already defined.