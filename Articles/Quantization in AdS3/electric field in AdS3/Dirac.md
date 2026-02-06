the action for the Dirac field in a general curved spacetime is given by

$$\begin{align}
S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi -m\bar{\psi}\psi \right)
\end{align}$$

consider a diffeomorphism $\displaystyle{x^{\mu}\to x^{\mu}+\xi ^{\mu}}$, the transformation of the Dirac field is given by

$$\begin{align}
\delta _{\xi}\psi & =\mathcal{L}_{\xi}\psi \\
 & =\xi ^{\mu}\partial _{\mu}\psi +\frac{1}{4}\partial _{\mu}\xi _{\nu}\gamma ^{\mu \nu}\psi
\end{align}$$

the canonical energy-momentum tensor derived from the translation invariance is

$$\begin{align}
T^{\mu \nu}_{\text{can}} & =\frac{\delta \mathcal{L}}{\delta (\partial _{\mu}\psi)}\partial ^{\nu}\psi+\partial ^{\nu}\bar{\psi}\frac{\delta \mathcal{L}}{\delta (\partial _{\mu}\bar{\psi})} -\eta ^{\mu \nu}\mathcal{L} \\
 & =\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial ^{\nu}\psi-\frac{i}{2}\partial ^{\nu}\bar{\psi}\gamma ^{\mu}\psi \\
 & =\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftrightarrow{\partial ^{\nu}}\psi
\end{align}$$

which is not symmetric. To obtain a symmetric energy-momentum tensor, we can use the Belinfante-Rosenfeld procedure. The spin angular momentum tensor is

$$\begin{align}
S^{\lambda \mu \nu} & =\frac{\delta \mathcal{L}}{\delta (\partial _{\lambda}\psi)}\Sigma ^{\mu \nu}\psi+\bar{\psi}\Sigma ^{\mu \nu}\frac{\delta \mathcal{L}}{\delta (\partial _{\lambda}\bar{\psi})} \\
 & =\frac{i}{2}\bar{\psi}\gamma ^{\lambda}\frac{1}{4}[\gamma ^{\mu},\gamma ^{\nu}]\psi+\frac{i}{2}\bar{\psi}\frac{1}{4}[\gamma ^{\mu},\gamma ^{\nu}]\gamma ^{\lambda}\psi \\
 & =\frac{i}{8}\bar{\psi}\{\gamma ^{\lambda},[\gamma ^{\mu},\gamma ^{\nu}]\}\psi
\end{align}$$

using the identity $\{\gamma ^{\lambda},[\gamma ^{\mu},\gamma ^{\nu}]\}=4\eta ^{\lambda [\mu}\gamma ^{\nu]}=2(\eta^{\lambda \mu}\gamma^\nu - \eta^{\lambda \nu}\gamma^\mu)$, we have

$$\begin{align}
S^{\lambda \mu \nu} & =\frac{i}{4}\bar{\psi}(\eta ^{\lambda \mu}\gamma ^{\nu}-\eta ^{\lambda \nu}\gamma ^{\mu})\psi
\end{align}$$

the Belinfante correction term is

$$\begin{align}
B^{\lambda \mu \nu} & =\frac{1}{2}(S^{\lambda \mu \nu}+S^{\mu \nu \lambda}+S^{\nu \mu \lambda}) \\
 & =\frac{i}{8}\bar{\psi}(\eta ^{\lambda \mu}\gamma ^{\nu}-\eta ^{\lambda \nu}\gamma ^{\mu}+\eta ^{\mu \nu}\gamma ^{\lambda}-\eta ^{\mu \lambda}\gamma ^{\nu}+\eta ^{\nu \mu}\gamma ^{\lambda}-\eta ^{\nu \lambda}\gamma ^{\mu})\psi \\
 & =\frac{i}{4}\bar{\psi}(\eta ^{\mu \nu}\gamma ^{\lambda}-\eta ^{\lambda \nu}\gamma ^{\mu})\psi
\end{align}$$

then the symmetric energy-momentum tensor is

$$\begin{align}
T^{\mu \nu}_{\text{sym}} & =T^{\mu \nu}_{\text{can}}+\partial _{\lambda}B^{\lambda \mu \nu} \\
 & =\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial ^{\nu}\psi-\frac{i}{2}\partial ^{\nu}\bar{\psi}\gamma ^{\mu}\psi+\frac{i}{4}\partial _{\lambda}(\bar{\psi}\eta ^{\mu \nu}\gamma ^{\lambda}\psi-\bar{\psi}\eta ^{\lambda \nu}\gamma ^{\mu}\psi) \\
 & =\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial ^{\nu}\psi-\frac{i}{2}\partial ^{\nu}\bar{\psi}\gamma ^{\mu}\psi+\frac{i}{4}\partial ^{\mu}(\bar{\psi}\gamma ^{\nu}\psi)-\frac{i}{4}\eta ^{\mu \nu}\partial _{\lambda}(\bar{\psi}\gamma ^{\lambda}\psi)
\end{align}$$

using the (massless) Dirac equation $\gamma ^{\mu}\partial _{\mu}\psi=0$, the last term vanishes.

$$\begin{align}
T^{\mu \nu}_{\text{sym}} & =\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial ^{\nu}\psi-\frac{i}{2}\partial ^{\nu}\bar{\psi}\gamma ^{\mu}\psi+\frac{i}{4}(\partial ^{\mu}\bar{\psi}\gamma ^{\nu}\psi+\bar{\psi}\gamma ^{\nu}\partial ^{\mu}\psi) \\
 & =\frac{i}{4}\bar{\psi}\gamma ^{\mu}\partial ^{\nu}\psi-\frac{i}{4}\partial ^{\nu}\bar{\psi}\gamma ^{\mu}\psi+\frac{i}{4}\bar{\psi}\gamma ^{\nu}\partial ^{\mu}\psi -\frac{i}{4}\partial ^\mu\bar{\psi}\gamma ^\nu\psi \\
 & =\frac{i}{4}\bar{\psi}(\gamma ^{\mu}\overleftrightarrow{\partial ^{\nu}}+\gamma ^{\nu}\overleftrightarrow{\partial ^{\mu}})\psi
\end{align}$$

this is manifestly symmetric under $\mu \leftrightarrow \nu$.
