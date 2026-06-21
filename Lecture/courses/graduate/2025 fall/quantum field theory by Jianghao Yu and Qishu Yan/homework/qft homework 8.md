# Weinberg QFT Vol. 1 problem 7.4, 7.5

consider the theory of a complex scalar field $\displaystyle{\phi}$ and a real vector field $\displaystyle{V^{\mu}}$, with Lagrangian density

$$\begin{align}
\mathcal{L} & =-(D_{\mu}\phi)^{\dagger}D^{\mu}\phi-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}V_{\mu}V^{\mu}-\mathcal{H}(\phi ^{\dagger}\phi)
\end{align}$$

where $\displaystyle{D_{\mu}=\partial _{\mu}-igV_{\mu}}$ and $\displaystyle{F_{\mu \nu}=\partial _{\mu}V_{\nu}-\partial _{\nu}V_{\mu}}$, and $\displaystyle{\mathcal{H}}$ is an arbitrary function. carry out the canonical quantization of this theory, and derive the interaction in the interaction picture. derive the expressions for the symmetric energy-momentum tensor $\displaystyle{\Theta ^{\mu \nu}}$ and for the conserved current associated with the symmetry under $\displaystyle{\delta \phi=i\varepsilon \phi,\delta V^{\mu}=0}$.

*sol*. we first rewrite the action as

$$\begin{align}
S & =\int \mathrm{d}^{4}x\left( -\partial _{\mu}\phi ^{\dagger}\partial ^{\mu}\phi-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}V_{\mu}V^{\mu} \right) \\
 & +\int \mathrm{d}^{4}x\left(ig(\partial _{\mu}\phi ^{\dagger}\phi-\phi ^{\dagger}\partial _{\mu}\phi)V^{\mu}-g^{2}\phi ^{\dagger}\phi V_{\mu}V^{\mu}-\mathcal{H}(\phi ^{\dagger}\phi)\right)
\end{align}$$

here the first line gives the free theory, while the second line describes the interaction. take a variation of the action, we have

$$\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left(\delta \phi ^{\dagger}(\partial ^{2}\phi)+(\partial ^{2}\phi ^{\dagger})\delta \phi+(\partial _{\mu}F^{\mu \nu}-m^{2}V^{\nu})\delta V_{\nu}\right) \\
 & +\int \mathrm{d}^{4}x\left(ig(\partial ^{\nu}\phi ^{\dagger}\phi-\phi ^{\dagger}\partial ^{\nu}\phi)\delta V_{\nu}-2g^{2}\phi ^{\dagger}\phi V^{\nu}\delta V_{\nu}\right) \\
 & +\int \mathrm{d}^{4}x\left(ig(2\partial _{\mu}\phi ^{\dagger}V^{\mu}+\phi ^{\dagger}\partial _{\mu}V^{\mu})-g^{2}\phi ^{\dagger} V_{\mu}V^{\mu}-\mathcal{H}'(\phi ^{\dagger}\phi)\phi ^{\dagger}\right)\delta \phi \\
 & +\int \mathrm{d}^{4}x\left(ig(-\phi\partial _{\mu} V^{\mu}-2\partial _{\mu}\phi V^{\mu})-g^{2}\phi V_{\mu}V^{\mu}-\mathcal{H}'(\phi ^{\dagger}\phi)\phi\right)\delta \phi ^{\dagger} \\
 & +\text{(total derivatives)}
\end{align}$$

thus the equations of motion read

$$\begin{align}
\partial ^{2}\phi & +ig(2\partial _{\mu}\phi ^{\dagger}V^{\mu}+\phi ^{\dagger}\partial _{\mu}V^{\mu})-g^{2}\phi ^{\dagger} V_{\mu}V^{\mu}-\mathcal{H}'(\phi ^{\dagger}\phi)\phi ^{\dagger}=0 \\
\partial ^{2}\phi ^{\dagger} & +ig(-\phi\partial _{\mu} V^{\mu}-2\partial _{\mu}\phi V^{\mu})-g^{2}\phi V_{\mu}V^{\mu}-\mathcal{H}'(\phi ^{\dagger}\phi)\phi=0\\
\partial _{\mu}F^{\mu \nu}-m^{2}V^{\nu} &+ig(\partial ^{\nu}\phi ^{\dagger}\phi-\phi ^{\dagger}\partial ^{\nu}\phi)-2g^{2}\phi ^{\dagger}\phi V^{\nu}=0
\end{align}$$

or in a more compact form

$$\begin{align}
D_{\mu}D^{\mu}\phi & =\mathcal{H}'(\phi ^{\dagger}\phi)\phi \\
(D_{\mu}D^{\mu}\phi)^{\dagger} & =\mathcal{H}'(\phi ^{\dagger}\phi)\phi ^{\dagger} \\
\partial _{\mu}F^{\mu \nu}-m^{2}V^{\nu} & =ig(\phi ^{\dagger}D^{\nu}\phi-(D^{\nu}\phi)^{\dagger}\phi)
\end{align}$$

we first derive the conserved quantities since they are independent of the choice of quantization scheme. by definition, we have

$$\begin{align}
\Theta ^{\mu \nu} & = \frac{2}{\sqrt{ -g }} \frac{\delta S}{\delta g_{\mu \nu}} \Big|_{g=\eta}\\
 & =F^{\mu \rho}F^{\nu}_{~\rho}+m^{2}V^{\mu}V^{\nu}+(D^{\mu}\phi)^{\dagger}D^{\nu}\phi+(D^{\nu}\phi)^{\dagger}D^{\mu}\phi-\frac{1}{2}\eta ^{\mu \nu}\mathcal{L}
\end{align}$$

here we have used the eom. the current corresponding to $\displaystyle{\delta \phi=i\varepsilon \phi}$ gives

$$\begin{align}
J^{\mu} & =-i(D^{\mu}\phi \phi ^{\dagger}-(D^{\mu}\phi)^{\dagger}\phi)
\end{align}$$

which is exactly the current coupled to $\displaystyle{V_{\mu}}$ up to a constant.

now we will consider the quantization. we assume that $\displaystyle{\mathcal{H}(\phi ^{\dagger}\phi)}$ has only one minimum at $\displaystyle{\phi =0}$ (otherwise we need to handle SSB... it's complicated so we will discuss it later), and all the interactions are small so that perturbation theory is valid. rewrite the Lagrangian density as

$$\begin{align}
\mathcal{L} & = (\dot{\phi}^{\dagger}-igV^{0}\phi ^{\dagger})(\dot{\phi}+igV^{0}\phi)-(\partial _{i}\phi ^{\dagger}+igV^{i}\phi ^{\dagger})(\partial _{i}\phi-igV^{i}\phi)-\mathcal{H}(\phi ^{\dagger}\phi) \\
 & -\frac{1}{4}(\partial _{i}V^{j}-\partial _{j}V^{i})(\partial _{i}V^{j}-\partial _{j}V^{i})+\frac{1}{2}(\dot{V}^{i}+\partial _{i}V^{0})^{2}+\frac{1}{2}m^{2}(V^{0})^{2}-\frac{1}{2}m^{2}(V^{i})^{2}
\end{align}$$

the canonical momentum conjugate to the fields are given by

$$\begin{align}
\pi _{\phi} & =(D_{0}\phi)^{\dagger}=\dot{\phi} ^{\dagger}-igV^{0}\phi ^{\dagger},\qquad \pi _{\phi ^{\dagger}}:=\pi _{\phi}^{\dagger}=(D_{0}\phi)=\dot{\phi} +igV^{0}\phi \\
\pi ^{i}_{V} & =\dot{V}^{i}+\partial _{i}V^{0},\qquad \pi ^{0}_{V}=0
\end{align}$$

we note that $\displaystyle{\pi ^{0}_{V}=0}$ gives a primary constraint. the Hamiltonian density is given by

$$\begin{align}
\mathscr{H} & =\pi _{\phi}\dot{\phi}+\pi _{\phi}^{\dagger}\dot{\phi ^{\dagger}}+\pi ^{i}_{V}\dot{V}^{i}-\mathcal{L} \\
 & =\pi _{\phi}\pi _{\phi}^{\dagger}+\partial _{i}\phi ^{\dagger}\partial _{i}\phi+\frac{1}{2}\pi ^{i}_{V}\pi ^{i}_{V}-\frac{1}{4}(\partial _{i}V^{j}-\partial _{j}V^{i})(\partial _{i}V^{j}-\partial _{j}V^{i})+\frac{1}{2}m^{2}(V^{i})^{2}-\frac{1}{2}m^{2}(V^{0})^{2}-\pi ^{i}_{V}\partial _{i}V^{0} \\
 & -igV^{0}(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{^{\dagger}})+igV^{i}(\phi ^{\dagger}\partial _{i}\phi-\phi \partial _{i}\phi ^{\dagger})+g^{2}(V^{i})^{2}\phi ^{\dagger}\phi+\mathcal{H}(\phi ^{\dagger}\phi)
\end{align}$$

integrate out the $\displaystyle{V^{0}}$, we have

$$\begin{align}
\mathscr{H} & = \pi _{\phi}\pi _{\phi}^{\dagger}+\partial _{i}\phi ^{\dagger}\partial _{i}\phi+\frac{1}{2}\pi ^{i}_{V}\pi ^{i}_{V}-\frac{1}{4}(\partial _{i}V^{j}-\partial _{j}V^{i})(\partial _{i}V^{j}-\partial _{j}V^{i})+\frac{1}{2m}(\partial _{i}\pi ^{i}_{V}-ig(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger}))^{2}+\frac{1}{2}m^{2}(V^{i})^{2} \\
 & +igV^{i}(\phi ^{\dagger}\partial _{i}\phi-\phi \partial _{i}\phi ^{\dagger})+g^{2}(V^{i})^{2}\phi ^{\dagger}\phi+\mathcal{H}(\phi ^{\dagger}\phi) \\
 & =\pi _{\phi}\pi ^{\dagger}_{\phi}+\partial _{i}\phi ^{\dagger}\partial _{i}\phi+\frac{1}{2}\pi ^{i}_{V}\pi ^{i}_{V}+\frac{1}{2m}(\partial _{i}\pi ^{i}_{V})^{2}-\frac{1}{4}(\partial _{i}V^{j}-\partial _{j}V^{i})(\partial _{i}V^{j}-\partial _{j}V^{i})+\frac{1}{2}m^{2}(V^{i})^{2} \\
 & +igV^{i}(\phi ^{\dagger}\partial _{i}\phi-\phi \partial _{i}\phi ^{\dagger})+g^{2}(V^{i})^{2}\phi ^{\dagger}\phi+\mathcal{H}(\phi ^{\dagger}\phi)-\frac{ig}{m}\partial _{i}\pi ^{i}_{V}(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})-\frac{g^{2}}{2m}(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})^{2}
\end{align}$$

the first line of the result gives the free Hamiltonian density, while the second line describes the interaction between scalar and vector. upon canonical quantization, we impose the equal-time commutation relations

$$\begin{align}
[\phi (t,\mathbf{x}),\pi _{\phi}(t,\mathbf{y})] & =i\delta ^{3}(\mathbf{x}-\mathbf{y}) \\
[\phi ^{\dagger}(t,\mathbf{x}),\pi _{\phi}^{\dagger}(t,\mathbf{y})] & =i\delta ^{3}(\mathbf{x}-\mathbf{y}) \\
[V^{i}(t,\mathbf{x}),\pi ^{j}_{V}(t,\mathbf{y})] & =i\delta ^{ij}\delta ^{3}(\mathbf{x}-\mathbf{y})
\end{align}$$

and all other commutators vanish. since $\displaystyle{\pi ^{0}_{V}=0}$ is primary constraint, its time evolution must also vanish onshell

$$\begin{align}
\dot{\pi} ^{0}_{V} & =[\pi ^{0}_{V},H]=-\frac{\delta H}{\delta V^{0}} \\
 & =ig(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})+m^{2}V^{0}+\partial _{i}\pi ^{i}_{V}\approx 0
\end{align}$$

this gives a secondary constraint. in principle we can solve for $\displaystyle{V^{0}}$ in terms of other fields, and substitute back into the Hamiltonian to eliminate $\displaystyle{V^{0}}$. however, this will introduce nonlocal interactions (due to the inverse Laplacian operator appearing when solving for $\displaystyle{V^{0}}$). instead, we will keep $\displaystyle{V^{0}}$ as an auxiliary field, and impose the constraints on physical states:

$$\begin{align}
\pi ^{0}_{V}\ket{\text{phys}}  & =0 \\
\left( ig(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})+m^{2}V^{0}+\partial _{i}\pi ^{i}_{V} \right)\ket{\text{phys}}  & =0
\end{align}$$

now turn to interaction picture. operators evolve according to the free Hamiltonian

$$\begin{align}
H_{0} & =\int \mathrm{d}^{3}x\left( \pi _{\phi}\pi ^{\dagger}_{\phi}+\partial _{i}\phi ^{\dagger}\partial _{i}\phi+\frac{1}{2}\pi ^{i}_{V}\pi ^{i}_{V}+\frac{1}{2m}(\partial _{i}\pi ^{i}_{V})^{2}-\frac{1}{4}(\partial _{i}V^{j}-\partial _{j}V^{i})(\partial _{i}V^{j}-\partial _{j}V^{i})+\frac{1}{2}m^{2}(V^{i})^{2} \right)
\end{align}$$

let operators evolve as

$$\begin{align}
\phi _{I}(t,\mathbf{x}) & =e^{iH_{0}t}\phi (0,\mathbf{x})e^{-iH_{0}t},\qquad V^{\mu}_{I}(t,\mathbf{x})=e^{iH_{0}t}V^{\mu}(0,\mathbf{x})e^{-iH_{0}t}
\end{align}$$

the interaction Hamiltonian is given by

$$\begin{align}
H_{\text{int}} & =\int \mathrm{d}^{3}x\left( +igV^{i}(\phi ^{\dagger}\partial _{i}\phi-\phi \partial _{i}\phi ^{\dagger})+g^{2}(V^{i})^{2}\phi ^{\dagger}\phi+\mathcal{H}(\phi ^{\dagger}\phi)-\frac{ig}{m}\partial _{i}\pi ^{i}_{V}(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})-\frac{g^{2}}{2m}(\pi _{\phi}\phi-\pi _{\phi}^{\dagger}\phi ^{\dagger})^{2}\right)
\end{align}$$

here we omit the subscript $\displaystyle{I}$ for brevity. the time-evolution operator in interaction picture is given by the Dyson series

$$\begin{align}
U(t,t_{0}) & =\mathcal{T}\exp \left( -i\int _{t_{0}}^{t} \mathrm{d}t' H_{\text{int}}(t') \right)
\end{align}$$

# problem 2

prove that

$$\begin{align}
\frac{1}{p\pm i\varepsilon} & =\mathcal{P}\frac{1}{p}\mp i\pi \delta (p)
\end{align}$$

*sol*.

we note that for any test function $\displaystyle{f(p)}$, we have

$$\begin{align}
\int \mathrm{d}p \frac{f(p)}{p\pm i\varepsilon} & =\int \mathrm{d}p \frac{p\mp i\varepsilon}{p^{2}+\varepsilon ^{2}}f(p) \\
 & =\int \mathrm{d}p \frac{p}{p^{2}+\varepsilon ^{2}}f(p)\mp i\varepsilon \int \mathrm{d}p \frac{f(p)}{p^{2}+\varepsilon ^{2}} \\
 & =\mathcal{P}\int \mathrm{d}p \frac{f(p)}{p}\mp i\pi f(0)
\end{align}$$
