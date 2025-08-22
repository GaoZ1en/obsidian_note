a Lorentz transformation is a linear, homogeneous change of coordiantes from $\displaystyle{x^{\mu}}$ to $\displaystyle{x'^{\mu}}$,

$$\tag{1.1}\begin{align}
x'^{\mu} & =\Lambda ^{\mu}_{~\nu}x^{\nu}
\end{align}$$

that preserve $\displaystyle{x^{2}=\eta _{\mu \nu}x^{\mu}x^{\nu}}$, which gives

$$\tag{1.2}\begin{align}
\eta _{\mu \nu}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta _{\rho \sigma}
\end{align}$$

here we adopt the $\displaystyle{\eta _{\mu \nu}=\mathrm{diag}(-1,+1,\dots,+1)}$. the set of all Lorentz transformation forms a group. the inverse transformation satisfies $\displaystyle{(\Lambda ^{-1})^{\rho}_{~\nu}\Lambda ^{\nu}_{~\mu}=\delta ^{\rho}_{~\mu}\implies(\Lambda ^{-1})^{\rho}_{~\nu}=\Lambda _{\nu}^{~\rho}}$. thus

$$\tag{1.3}\begin{align}
\eta ^{\rho \sigma}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta ^{\mu \nu}
\end{align}$$

consider an infinitesimal Lorentz transformation

$$\tag{1.4}\begin{align}
\Lambda ^{\mu}_{~\nu} & =\delta ^{\mu}_{~\nu}+\delta \omega ^{\mu}_{~\nu}
\end{align}$$

then

$$\tag{1.5}\begin{align}
\eta _{\mu \nu}(\delta ^{\mu}_{~\rho}+\delta \omega ^{\mu}_{~\rho})(\delta ^{\nu}_{~\sigma}+\delta \omega ^{\nu}_{~\sigma})& =\eta _{\rho \sigma} \\
\implies \delta \omega _{\rho \sigma}=-\delta \omega _{\sigma \rho}
\end{align}$$

thus there are $\displaystyle{\frac{d(d-1)}{2}}$ independent infinitesimal Lorentz transformations in $\displaystyle{d}$ spacetime-dimensions. these can be divided into $\displaystyle{\frac{(d-1)(d-2)}{2}}$ rotations ($\displaystyle{\delta \omega _{ij}=-\varepsilon _{ijk}\hat{n}_{k}\delta \theta}$ for a rotation by angle $\displaystyle{\delta \theta}$ about $\displaystyle{\vec{n}}$ in 4 dimension) and $\displaystyle{d-1}$ boosts ($\displaystyle{\delta \omega _{i0}=\hat{n}_{i}\delta \eta}$ for a boost in the direction $\displaystyle{\vec{n}}$ by repidicity $\displaystyle{\delta \eta}$). however not all the Lorentz transformations can be reached by compounding infinitesimal ones. transformation with $\displaystyle{\det \Lambda=1}$ are called proper, while ones with $\displaystyle{\det \Lambda=-1}$ are called improper. and since $\displaystyle{(\Lambda ^{0}_{~0})^{2}=1+\Lambda ^{i}_{~0}\Lambda ^{i}_{~0}}$, transformations with $\displaystyle{\Lambda ^{0}_{~0}\geqslant+1}$ forms another subgroup, which is called the orthochronous. Lorentz transformations that can be reached by compounding infinitesimal ones are both proper and orthochronous, and they form a subgroup. we can introduce two discrete transformations that takes us out of this subgroup: parity and time reversal

$$\tag{1.6}\begin{align}
\mathcal{P}^{\mu}_{~\nu} & =(\mathcal{P}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
+1 &  &  &  \\
 & -1 &  &  \\
 &  & -1 &  \\
 &  &  & -1
\end{pmatrix} \\
\mathcal{T}^{\mu}_{~~~\nu} & =(\mathcal{T}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
-1 &  &  &  \\
 & +1 &  &  \\
 &  & +1 &  \\
 &  &  & +1
\end{pmatrix}
\end{align}$$


## Simplified [[Lorentz Invariance]]

[[Lorentz transformations]] preserve the spacetime metric $$\eta_{\mu\nu}$$, with infinitesimal forms $$\Lambda^{\mu}_{~\nu} = \delta^{\mu}_{~\nu} + \delta\omega^{\mu}_{~\nu}$$ satisfying $$\delta\omega_{\mu\nu} = -\delta\omega_{\nu\mu}$$, giving $$\frac{d(d-1)}{2}$$ independent generators that decompose into $$\frac{(d-1)(d-2)}{2}$$ rotations and $$(d-1)$$ boosts. The full [[Lorentz group]] $$O(1,3)$$ consists of four disconnected components classified by $$\det\Lambda = \pm 1$$ (proper/improper) and $$\Lambda^0_{~0} \gtrless \pm 1$$ (orthochronous/non-orthochronous), where only the proper orthochronous subgroup $$SO^+(1,3)$$ can be reached by compounding infinitesimal transformations, while the other components require discrete symmetries like parity $$\mathcal{P}$$ (space inversion) and time reversal $$\mathcal{T}$$ to access the full group structure $$O(1,3) = \{I, \mathcal{P}, \mathcal{T}, \mathcal{PT}\} \times SO^+(1,3)$$.