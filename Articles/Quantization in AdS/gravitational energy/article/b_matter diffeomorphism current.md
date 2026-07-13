## background-covariant tensor current and the Hilbert stress tensor

consider a local action for tensor fields on an arbitrary background metric. we retain the matter notation

$$\begin{align}
S_{\mathrm{m}} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g}\,\mathcal{L}_{\mathrm{m}}.
\end{align}$$

only to keep contact with the physical matter sector. the fields $\displaystyle{\Phi ^{A}}$ may equally denote perturbative metric coefficients such as $\displaystyle{h_{\mu \nu}}$ and $\displaystyle{k_{\mu \nu}}$, regarded as tensors on the background. we suppress the superscript $\displaystyle{(0)}$ in this appendix and restore it when applying the result to the perturbative action. the local first variation is defined by

$$\begin{align}
\delta S_{\mathrm{m}} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g}\left(\dfrac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}+E_{A}\delta \Phi ^{A}-\nabla _{\mu}\theta _{\mathrm{m}}^{\mu}[\delta \Phi,\delta g]\right).
\end{align}$$

under an arbitrary infinitesimal diffeomorphism,

$$\begin{aligned}
\delta _{\xi}g_{\mu \nu} &=\mathcal{L}_{\xi}g_{\mu \nu}=2\nabla _{(\mu}\xi _{\nu)}, \\
\delta _{\xi}\Phi ^{A} &=\mathcal{L}_{\xi}\Phi ^{A}, \\
\delta _{\xi}\left(\sqrt{-g}\,\mathcal{L}_{\mathrm{m}}\right) &=\partial _{\mu}\left(\sqrt{-g}\,\xi ^{\mu}\mathcal{L}_{\mathrm{m}}\right).
\end{aligned}$$

substitution into the first variation gives the local identity

$$\begin{align}
\nabla _{\mu}\left(\theta _{\mathrm{m}}^{\mu}[\mathcal{L}_{\xi}\Phi,\mathcal{L}_{\xi}g]+\xi ^{\mu}\mathcal{L}_{\mathrm{m}}-\xi _{\nu}T^{\mu \nu}\right) &=E_{A}\mathcal{L}_{\xi}\Phi ^{A}-\xi _{\nu}\nabla _{\mu}T^{\mu \nu}.
\end{align}$$

### background-diffeomorphism Ward identity

for a compactly supported $\displaystyle{\xi}$, the total divergences in the diffeomorphism variation have zero integral. hence

$$\begin{align}
0 &=\int _{M}\mathrm{d}^{3}x\sqrt{-g}\left(T^{\mu \nu}\nabla _{\mu}\xi _{\nu}+E_{A}\mathcal{L}_{\xi}\Phi ^{A}\right).
\end{align}$$

for tensor fields, write the Lie derivative as

$$\begin{align}
\mathcal{L}_{\xi}\Phi ^{A} &=\xi ^{\nu}\nabla _{\nu}\Phi ^{A}+\left(\nabla _{\mu}\xi ^{\nu}\right)\left(\Delta ^{\mu}{}_{\nu}\Phi\right)^{A},
\end{align}$$

where $\displaystyle{\Delta ^{\mu}{}_{\nu}}$ denotes the tensor representation acting on the indices of $\displaystyle{\Phi ^{A}}$. integrating the derivatives of $\displaystyle{\xi}$ by parts and using its arbitrariness gives the off-shell Ward identity

$$\begin{align}
\nabla _{\mu}T^{\mu}{}_{\nu} &=E_{A}\nabla _{\nu}\Phi ^{A}-\nabla _{\mu}\left[E_{A}\left(\Delta ^{\mu}{}_{\nu}\Phi\right)^{A}\right].
\end{align}$$

it follows that

$$\begin{aligned}
E_{A}\mathcal{L}_{\xi}\Phi ^{A}-\xi _{\nu}\nabla _{\mu}T^{\mu \nu} &=\nabla _{\mu}\mathcal{R}_{\xi,\mathrm{m}}^{\mu}, \\
\mathcal{R}_{\xi,\mathrm{m}}^{\mu} &:=\xi ^{\nu}E_{A}\left(\Delta ^{\mu}{}_{\nu}\Phi\right)^{A}.
\end{aligned}$$

therefore the difference between the diffeomorphism current, the Hilbert stress current and the equation-of-motion term is identically conserved,

$$\begin{align}
\nabla _{\mu}\left(\theta _{\mathrm{m}}^{\mu}[\mathcal{L}_{\xi}\Phi,\mathcal{L}_{\xi}g]+\xi ^{\mu}\mathcal{L}_{\mathrm{m}}-\xi _{\nu}T^{\mu \nu}-\mathcal{R}_{\xi,\mathrm{m}}^{\mu}\right) &=0.
\end{align}$$

locally, and up to a topological current, an identically conserved local current is the divergence of an antisymmetric superpotential. consequently,

$$\begin{align}
\theta _{\mathrm{m}}^{\mu}[\mathcal{L}_{\xi}\Phi,\mathcal{L}_{\xi}g]+\xi ^{\mu}\mathcal{L}_{\mathrm{m}} &=\xi _{\nu}T^{\mu \nu}+\mathcal{R}_{\xi,\mathrm{m}}^{\mu}+\nabla _{\nu}U_{\xi}^{\mu \nu}, & U_{\xi}^{\mu \nu}&=-U_{\xi}^{\nu \mu}.
\end{align}$$

on the background used in the main text, $\displaystyle{\xi}$ is an exact Killing vector and therefore $\displaystyle{\mathcal{L}_{\xi}g^{(0)}=0}$. the derivation consequently applies to each perturbative coefficient. the linear $\displaystyle{h}$ coefficient gives $\displaystyle{\mathcal{H}_{\xi}^{[-1]\mu}=-\xi _{\nu}\mathcal{E}^{(1)\mu \nu}[h]+\nabla _{\nu}^{(0)}S_{\xi}^{[-1]\mu \nu}}$. for the quadratic $\displaystyle{h}$ sector, the three terms on the right-hand side become $\displaystyle{\xi _{\nu}T_{(h)}^{\mu \nu}}$, $\displaystyle{\mathcal{R}_{\xi,h}^{\mu}}$ and $\displaystyle{\nabla _{\nu}^{(0)}S_{\xi,h}^{\mu \nu}}$. the linear $\displaystyle{k}$ coefficient is a background-covariant divergence, so its current is represented by the superpotential $\displaystyle{S_{\xi,k,0}^{\mu \nu}}$.

for the physical matter sector, $\displaystyle{\alpha _{\xi,\mathrm{bulk,m}}^{[0],\mu}=-\xi ^{\mu}\mathcal{L}_{\mathrm{m}}^{(0)}}$, so the left-hand side is the finite matter current $\displaystyle{\mathcal{H}_{\xi,\mathrm{m}}^{[0]\mu}}$. the leading matter equation removes $\displaystyle{\mathcal{R}_{\xi,\mathrm{m}}^{\mu}}$, while the last term becomes a corner integral of $\displaystyle{U_{\xi}^{\mu \nu}}$. the decay and no-independent-surface-charge assumptions of Sec. 1 set this corner integral to zero, leaving the stress-tensor charge.

### gauge-field example

for the Maxwell Lagrangian $\displaystyle{\mathcal{L}_{\mathrm{m}}=-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}}$, our variation convention gives

$$\begin{aligned}
E^{\mu} &=\nabla _{\nu}F^{\nu \mu}, & \theta _{\mathrm{m}}^{\mu}[\delta A]&=F^{\mu \nu}\delta A_{\nu}, \\
\mathcal{L}_{\xi}A_{\nu} &=\xi ^{\rho}F_{\rho \nu}+\nabla _{\nu}(\xi ^{\rho}A_{\rho}).
\end{aligned}$$

the matter current becomes

$$\begin{align}
\mathcal{H}_{\xi,\mathrm{m}}^{\mu} &=\xi _{\nu}T^{\mu \nu}+(\xi ^{\rho}A_{\rho})E^{\mu}+\nabla _{\nu}\left[(\xi ^{\rho}A_{\rho})F^{\mu \nu}\right].
\end{align}$$

thus $\displaystyle{U_{\xi}^{\mu \nu}=(\xi ^{\rho}A_{\rho})F^{\mu \nu}}$. its corner integral is a potential-weighted electric flux and can remain nonzero in the presence of an unscreened gauge charge. the assumption in Sec. 1 excludes precisely this additional asymptotic contribution.
