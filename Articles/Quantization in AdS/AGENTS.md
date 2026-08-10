# AGENTS.md — Quantization in AdS

## Scope

Research workspace for AdS quantization projects, including AdS3 gauge and gravity systems, AdS4 linearized gravity, perturbation theory, and linked subtopics.

## Workspace Rules

- Treat subfolders as separate topic tracks; do not flatten or merge them.
- Preserve established notation across related notes unless correcting a demonstrated mistake.
- When adding or removing major notes, update the local `README.md`.
- Keep exploratory calculations in topic folders and preserve each manuscript subtree's existing file structure.
- Avoid shorthand that merely renames one simple expression or already-labelled object. Introduce notation only when it names an independently meaningful object or materially clarifies a repeated derivation.

## Symbolic Verification

- Follow the root formula-verification contract and use `note-math-verify` when available before editing mathematical claims.
- For xAct work, load `xTras` when available and use `FullSimplification[]` after xPert/xCPS variations, curvature identities, or index canonicalization.

## CPS Convention Anchors

For CPS, charge, free-field quantization, or perturbation-theory work, read the relevant sections of `Articles/Quantization in AdS/perturbation/formalism.md` before editing. That note is the authoritative expanded pipeline; the anchors below prevent convention drift:

- Spacetime signature is $\displaystyle{(-,+,+,\dots)}$, with Cauchy surfaces $\displaystyle{\Sigma_i,\Sigma_f}$ and spatial boundary $\displaystyle{\Gamma}$.
- The action retains the boundary Lagrangian. Allowed boundary conditions make the action finite and the variational problem well-defined.
- The integrated pre-symplectic potential retains the $\displaystyle{\partial\Sigma}$ corner contribution. Terms on $\displaystyle{\Gamma}$ vanish on allowed variations or are integrated by parts to the corner.
- Use pre-phase space before quotienting gauge degeneracies and physical phase space after the quotient.
- Define a symmetry through the off-shell identity for $\displaystyle{X_\lambda\cdot\delta S}$; do not use the equations of motion in this step. The generator is $\displaystyle{H_\lambda=X_\lambda\cdot\theta-\alpha_\lambda}$.
- Normalize physical positive-frequency modes with the integrated symplectic form before expanding the field.
- With $\displaystyle{\{a^\dagger,a\}=i}$, use $\displaystyle{[\mathcal O_1,\mathcal O_2]=i\{\mathcal O_1,\mathcal O_2\}_{\mathrm P}}$, hence $\displaystyle{[a,a^\dagger]=1}$.
- Preserve the formalism note's field, mode, Green-function, and Hamiltonian notation. Do not introduce parallel concepts or symbols without necessity.

For interacting theory, use the formalism note's finite-time Dyson/OFPT construction and its separate asymptotically flat and AdS endpoints; do not infer an ordinary global-AdS in/out S-matrix.
