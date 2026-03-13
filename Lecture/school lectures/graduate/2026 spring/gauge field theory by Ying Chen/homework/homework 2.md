# problem 1

the Lagrangian for complex scalar $\displaystyle{\phi}$ is given by

$$\begin{align}
\mathcal{L}_{0} & =\partial _{\mu}\phi \partial ^{\mu}\phi ^{*}-m^{2}\phi ^{*}\phi
\end{align}$$

this Lagrangian is invariant under the global $\mathrm{U}(1)$ transformation $\displaystyle{\phi \rightarrow e^{i\alpha}\phi}$. if we promote this global symmetry to a local one, we get a $\displaystyle{\mathrm{U}(1)}$ gauge theory, i.e. the scalar QED.

1. write down the Lagrangian for scalar QED
2. derive the Hamiltonian $\displaystyle{\mathcal{H}_{I}}$ in the interaction picture
3. ignore the non-covariant terms in $\displaystyle{\mathcal{H}_{I}}$, derive the Feynman rules for scalar QED.
4. prove that

$$\begin{align}
\braket{ 0|T\partial _{\mu}^{x}\phi(x)\phi(y)|0 } & =\partial _{\mu}^{x}\braket{ 0|T\phi(x)\phi(y)|0 } \\
\braket{ 0|T\partial _{\mu}^{y}\phi(x)\partial _{\nu}^{y}\phi(y)|0 } & =\partial _{\mu}^{x}\partial _{\nu}^{y}\braket{ 0|T\phi(x)\phi(y)|0 }-i\eta _{\mu 0}\eta _{\nu 0}\delta ^{4}(x-y)
\end{align}$$

where $\displaystyle{\ket{0}}$ is the perturbative vacuum state.

## solution

### 1

suppose the scalar transforms as

$$\begin{align}
\delta \phi & =i\Lambda \phi
\end{align}$$

where $\displaystyle{\Lambda}$ is a real function. to keep the Lagrangian invariant under this transformation, we have to impose a gauge field $\displaystyle{A_{\mu}}$ that transforms as

$$\begin{align}
\delta A_{\mu} & =\partial _{\mu}\Lambda
\end{align}$$

and change $\displaystyle{\partial _{\mu}}$'s to covariant one $\displaystyle{D_{\mu}=\partial _{\mu}-iA_{\mu}}$, therefore the Lagrangian (including the dynamical part of $\displaystyle{A_{\mu}}$) is

$$\begin{align}
\mathcal{L} & =D_{\mu}\phi (D^{\mu}\phi)^{*}-m^{2}\phi ^{*}\phi-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}
\end{align}$$

which is gauge invariant

$$\begin{align}
\delta \mathcal{L} & =(\partial _{\mu}-iA_{\mu}-i\partial _{\mu}\Lambda)(\phi+i\Lambda \phi)(\partial ^{\mu}+iA^{\mu}+i\partial ^{\mu}\Lambda)(\phi ^{*}-i\Lambda \phi)-m^{2}(\phi ^{*}-i\Lambda \phi ^{*})(\phi+i\Lambda \phi) \\
 & -(\partial _{\mu}-iA_{\mu})\phi(\partial ^{\mu}+iA^{\mu})\phi ^{*}-m^{2}\phi ^{*}\phi \\
 & =0
\end{align}$$

### 2

we write

$$\begin{align}
\mathcal{L} & =(\dot{\phi}-iA_{0}\phi)(\dot{\phi}^{*}+iA_{0}\phi ^{*})-|\partial _{i}\phi-iA_{i}\phi|^{2}-m^{2}\phi ^{*}\phi \\
  & +\frac{1}{2}(\dot{A}_{i}-\partial _{i}A_{0})^{2}-\frac{1}{4}F_{ij}^{2}
\end{align}$$

then the canonical momenta are

$$\begin{align}
\pi & =\frac{\partial \mathcal{L}}{\partial \dot{\phi}}=\dot{\phi}^{*}+iA_{0}\phi ^{*} \\
\pi ^{*} & =\frac{\partial \mathcal{L}}{\partial \dot{\phi}^{*}}=\dot{\phi}-iA_{0}\phi \\
\pi ^{i} & =\frac{\partial \mathcal{L}}{\partial \dot{A}_{i}}=\dot{A}_{i}-\partial _{i}A_{0}
\end{align}$$

here the conjugate momentum $\displaystyle{\pi ^{0}}$ of $\displaystyle{A_{0}}$ vanishes, since $\displaystyle{\frac{\partial \mathcal{L}}{\partial \dot{A}_{0}}=0}$. thus we have the Hamiltonian density

$$\begin{align}
\mathcal{H} & =\pi \dot{\phi}+\pi ^{*}\dot{\phi}^{*}+\pi ^{i}\dot{A}_{i}-\mathcal{L} \\
 & =\pi ^{*}\pi+\partial _{i}\phi ^{*} \partial _{i}\phi+m^{2}\phi ^{*}\phi+\frac{1}{2}\pi ^{i}\pi ^{i}+\frac{1}{4}F_{ij}^{2}+\pi ^{i}\partial _{i}A_{0} \\
 & +i(\pi \phi-\pi ^{*}\phi ^{*})A_{0}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi
\end{align}$$

---

the constraint $\displaystyle{\pi ^{0}=0}$ should be satisfied during evolution, thus we have

$$\begin{align}
[\pi ^{0},\mathcal{H}] & = -\frac{\partial \mathcal{H}}{\partial A_{0}} \\
 & =\partial _{i}\pi ^{i}-i(\pi \phi-\pi ^{*}\phi ^{*})=0
\end{align}$$

insert back into the Hamiltonian, we have

$$\begin{align}
\mathcal{H} & =\pi ^{*}\pi+\partial _{i}\phi ^{*}\partial _{i}\phi+m^{2}\phi ^{*}\phi+\frac{1}{2}\pi ^{i}\pi ^{i}+\frac{1}{4}F_{ij}^{2}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi
\end{align}$$

however this does not align with our main purpose.

---
$$\begin{align}
\mathcal{H} & =\pi \dot{\phi}+\pi ^{*}\dot{\phi}^{*}+\pi ^{i}\dot{A}_{i}-\mathcal{L} \\
 & =\pi ^{*}\pi+\partial _{i}\phi ^{*} \partial _{i}\phi+m^{2}\phi ^{*}\phi+\frac{1}{2}\pi ^{i}\pi ^{i}+\frac{1}{4}F_{ij}^{2}+\pi ^{i}\partial _{i}A_{0} \\
 & +i(\pi \phi-\pi ^{*}\phi ^{*})A_{0}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi
\end{align}$$


turn to interaction picture, define

$$\begin{align}
\mathcal{H}_{0} & =\pi ^{*}\pi+\partial _{i}\phi ^{*}\partial _{i}\phi+m^{2}\phi ^{*}\phi+\frac{1}{2}\pi ^{i}\pi ^{i}+\frac{1}{4}F_{ij}^{2}+\pi ^{i}\partial _{i}A_{0} \\
\mathcal{H}_{I} & =i(\pi \phi-\pi ^{*}\phi ^{*})A_{0}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi
\end{align}$$

then the interaction Hamiltonian in the interaction picture is

$$\begin{align}
\mathcal{\widehat{H}}_{I} & = e^{iH_{0}t}\mathcal{H}_{I}e^{-iH_{0}t} \\
 & =i(\pi\phi-\pi ^{*}\phi ^{*})A_{0}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi \\
 & =i(\dot{\phi}^{*}\phi-\dot{\phi}\phi ^{*})A_{0}+i(\partial _{i}\phi \phi ^{*}-\phi \partial _{i}\phi ^{*})A_{i}+A_{i}^{2}\phi ^{*}\phi \\
 & =i(\partial _{\mu}\phi ^{*}\phi-\partial _{\mu}\phi \phi ^{*})A^{\mu}-A_{\mu}A^{\mu}\phi ^{*}\phi+A_{0}^{2}\phi ^{*}\phi
\end{align}$$

where the first and second term is covariant, and the third term is not covariant. in the following discussion we will drop the hat.

### 3

we have simply

1. **3-point vertex (1 photon, 1 incoming scalar, 1 outgoing scalar):**$$-i(p_{\mu}+p'_{\mu})$$
2. **4-point vertex (2 photons, 1 incoming scalar, 1 outgoing scalar):**
   $$2i\eta _{\mu \nu}$$

### 4

$$\begin{align}
\braket{ 0|T\partial _{\mu}^{x}\phi(x)\phi(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\braket{\theta(x_{0}-y_{0}) 0|(-ik _{\mu}a_{\vec{k}}e^{-ik\cdot x}+ik _{\mu}a^{\dagger}_{\vec{k}}e^{ik\cdot x})(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik'\cdot y})|0 } \\
 & +\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\theta(y_{0}-x_{0})\braket{ 0|(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik'\cdot y})(-ik _{\mu}a_{\vec{k}}e^{-ik\cdot x}+ik _{\mu}a_{\vec{k}}e^{ik\cdot x})|0 } \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{k}}-ik _{\mu}\left(\theta(x_{0}-y_{0})e^{-ik\cdot(x-y)}+\theta(y_{0}-x_{0})e^{ik\cdot(x-y)}\right) \\
 & = 
\end{align}$$


# problem 2

consider QCD that contains heavy quarks. calculate the single gluon exchange contribution to the (infinite) heavy quark potential, and prove that

1. when the quarks are in the color singlet state, the potential is attractive
2. when the quarks are in the color octet state, the potential is repulsive

## solution

