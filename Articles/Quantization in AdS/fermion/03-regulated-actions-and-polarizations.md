# 03. Regulated Actions and Polarizations

## 1. Symmetric Lorentzian Action

At finite $R$, start from

$$\begin{align}
S_{\mathrm{bulk},R}=\frac{i}{2}\int_{M_R}d^4x\sqrt{-g} \left[ \bar\psi\gamma^\mu\nabla_\mu\psi -(\nabla_\mu\bar\psi)\gamma^\mu\psi -2m\bar\psi\psi \right].
\end{align}$$

Variations are written with the order displayed; $\psi$ is differentiated from the right and $\bar\psi$ from the left. The variation parameter is Grassmann-even. No equation of motion is used in the following decomposition:

$$\begin{align}
\delta S_{\mathrm{bulk},R} & =i \int _{M_{R}}\sqrt{ -g }\left[\delta \bar{\psi}(\gamma ^{\mu}\nabla _{\mu}-m)\psi-\bar{\psi}(\gamma ^{\mu}\overleftarrow{\nabla}_{\mu}+m)\delta \psi\right] \\
 & +\dfrac{i}{2}\int _{\Gamma _{R}}\sqrt{ -\gamma }n_{\mu}(\bar{\psi}\gamma ^{\mu}\delta \psi-\delta \bar{\psi}\gamma ^{\mu}\psi) \\
 & +\dfrac{i}{2}\int _{\Sigma _{f,R}-\Sigma _{i,R}}\sqrt{ \sigma }\tau _{\mu}\left(\bar{\psi}\gamma ^{\mu}\delta \psi-\delta \bar{\psi}\gamma ^{\mu}\psi\right)
\end{align}$$

The initial surface has the opposite induced orientation. No corner was discarded: the bulk first-order integration produces only the three hypersurface terms above. A derivative-free radial boundary Lagrangian has no additional field-variation corner, although it does contribute to the Noether time-slice corner in Section 05.

## 2. Radial Boundary Form

At $r=R$, write

$$\begin{align}
\psi & =\alpha+\beta, & P_{+}\alpha & =\alpha, & P_{-}\beta & =\beta
\end{align}$$

where the powers of $R$ are suppressed. Conjugation reverses the projector:

$$\begin{align}
\bar{\alpha} & =\bar{\alpha}P_{-}, & \bar{\beta} & =\bar{\beta}P_{+}
\end{align}$$

The finite limiting radial variation is

$$\begin{align}
\lim_{ R \to \infty }\delta S_{\mathrm{bulk},R}|_{\Gamma _{R}}  & =\dfrac{i}{2} \int _{\Gamma}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\bar{\beta}\delta \alpha+\delta \bar{\alpha}\beta-\bar{\alpha}\delta \beta-\delta \bar{\beta}\alpha\right)
\end{align}$$

here $\displaystyle{g^{(0)}}$ is the induced metric on the conformal boundary $\displaystyle{\Gamma}$, which is defined as

$$\begin{align}
g^{(0)} & =\lim_{ R \to \infty } R^{-2}\gamma
\end{align}$$

## 3. Boundary-Complete Standard and Alternative Actions

Define at finite cutoff

$$\begin{align}
S_{\mathrm{bdy},R} & =\dfrac{i}{2} \int _{\Gamma _{R}}\mathrm{d}^{3}x\sqrt{ -\gamma }\bar{\psi}\psi \\
\lim_{ R \to \infty } S_{\mathrm{bdy},R} & =\dfrac{i}{2}\int _{\Gamma}\mathrm{d}^{3}x\sqrt{ -g^{(0)}}(\bar{\alpha}\beta+\bar{\beta}\alpha)
\end{align}$$

for standard quantization and alternative quantization, the two actions are

$$\begin{align}
S_{R}^{\mathrm{std}} & =S_{\mathrm{bulk},R}+S_{\mathrm{bdy},R} \\
S^{\mathrm{alt}}_{R} & =S_{\mathrm{bulk},R}-S_{\mathrm{bdy},R}
\end{align}$$

the variation of these two total actions are

$$\begin{align}
\lim_{ R \to \infty } \delta S^{\mathrm{atd}}_{R}|_{\Gamma _{R}} & =i \int _{\Gamma}\sqrt{ -g^{(0)} }\left(\bar{\beta}\delta \alpha+\delta \bar{\alpha}\beta\right)
\end{align}$$

and

$$\begin{align}
\lim_{ R \to \infty } \delta S^{\mathrm{alt}}_{R}|_{\Gamma _{R}} & =i \int _{\Gamma}\sqrt{ -g^{(0)} }(\bar{\alpha}\delta \beta+\delta \bar{\beta}\alpha)
\end{align}$$

hence standard quantization fixes the slow branch $\displaystyle{\beta,\bar{\beta}=0}$, while the alternative quantization fixes the fast branch.

## 4. Finiteness and the Absence of an Extra Counterterm

Set $\displaystyle{\Omega \sim r^{-1}}$ and $\displaystyle{\psi=\Omega ^{3/2}\chi}$, the slow and fast pieces of $\displaystyle{\chi}$ are $\displaystyle{\Omega ^{-m}\alpha}$ and $\displaystyle{\Omega ^{m}\beta}$. The leading radial/mass terms cancel by the indicial equation. The most singular remaining slow-slow tangential density scales as

$$\begin{align}
\mathrm{d}\Omega \Omega ^{-2m}
\end{align}$$

which is integrable exactlt for $\displaystyle{m< \dfrac{1}{2}}$. The fast-fast term scales as $\displaystyle{\mathrm{d}\Omega \Omega ^{2m}}$, and cross terms are finite. The boundary term $\displaystyle{S_{\mathrm{bdy},R}}$ is finite because

$$\begin{align}
\sqrt{ -\gamma }\bar{\alpha}\beta & \sim R^{3}R^{-\Delta _{-}}R^{-\Delta _{+}}=\mathcal{O}(1)
\end{align}$$

therefore no separate divergence counterterm is needed in the open interval. The term $\displaystyle{\pm S_{\mathrm{bdy},R}}$ is required by the polarization and variational principle.

## 5. Pre-Phase Spaces

For standard and alternative quantization, the pre-phase spaces are defined as

$$\begin{align}
\tilde{\mathcal{P}}_{\mathrm{std}} & =\left\{\psi:(\gamma ^{\mu}\nabla _{\mu}-m)\psi=0,\alpha=0,\text{regular at }r=0\right\} \\
\tilde{\mathcal{P}}_{\mathrm{alt}} & =\left\{\psi:(\gamma ^{\mu}\nabla _{\mu}-m)\psi=0,\beta=0,\text{regular at }r=0\right\}
\end{align}$$

since there is no gauge redundancy for a free Dirac field on a fixed background, so after choosing the Lorentzian real slice these are the physical linear phase spaces.

## Verification

- **Verified:** `verification/polarization-and-car.wl` checks the four ordered coefficients in $B_\infty\pm\delta C_\infty$; the standard and alternative variations select exactly the claimed data.
- **Assumptions:** the power-law off-shell field space of Section 02; fixed regulator geometry; $0<m<1/2$.
- **Not verified:** endpoint counterterms and general mixed boundary functionals are not classified here.
