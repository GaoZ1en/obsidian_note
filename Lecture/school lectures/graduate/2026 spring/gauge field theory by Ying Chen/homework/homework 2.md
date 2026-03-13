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
\braket{ 0|T\partial _{\mu}^{x}\phi(x)\phi(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\theta(x_{0}-y_{0})\braket{ 0|\partial _{\mu}^{x}(a_{\vec{k}}e^{-ik\cdot x}+a^{\dagger}_{\vec{k}}e^{ik\cdot x})(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik'\cdot y})|0 } \\
 & +\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\theta(y_{0}-x_{0})\braket{ 0|(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik'\cdot y})\partial ^{x} _{\mu}(a_{\vec{k}}e^{-ik\cdot x}+a_{\vec{k}}e^{ik\cdot x})|0 } \\
 & =\partial _{\mu}^{x}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\theta(x_{0}-y_{0})e^{-ik\cdot(x-y)}+\theta(y_{0}-x_{0})e^{ik\cdot(x-y)}\right) \\
 & -\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}(e^{-ik\cdot(x-y)}-e^{ik\cdot(x-y)})\delta _{\mu}^{0} \delta(x_{0}-y_{0}) \\
 & =\partial _{\mu}^{x} \braket{ 0|T\phi(x)\phi(y)|0 } 
\end{align}$$

the second term vanishes since the integrand is an odd function, but the integration domain is even in $\displaystyle{\vec{k}}$.

$$\begin{align}
\braket{ 0|T\partial _{\mu}^{x}\phi(x)\partial _{\nu}^{y}\phi(y)|0 } & =\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\theta(x_{0}-y_{0})\braket{ 0|\partial _{\mu}^{x}(a_{\vec{k}}e^{-ik\cdot x}+a^{\dagger}_{\vec{k}}e^{ik\cdot x})\partial _{\nu}^{y}(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik\cdot y})|0 } \\
 & +\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{6}2E_{\vec{k}}2E_{\vec{k}'}}\theta(y_{0}-x_{0})\braket{ 0|\partial _{\mu}^{y}(a_{\vec{k}'}e^{-ik\cdot y}+a^{\dagger}_{\vec{k}'}e^{ik\cdot y})\partial _{\mu}^{x}(a_{\vec{k}}e^{-ik\cdot x}+a^{\dagger}_{\vec{k}}e^{ik\cdot x})|0 } \\
 & =\partial _{\mu}^{x}\partial _{\nu}^{y}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\left(\theta(x_{0}-y_{0})e^{-ik\cdot(x-y)}+\theta(y_{0}-x_{0})e^{-ik\cdot(x-y)}\right) \\
 & -\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\partial _{\nu}^{y}\left(e^{-ik\cdot(x-y)}-e^{ik\cdot(x-y)}\right)\delta _{\mu}^{0}\delta(x_{0}-y_{0}) \\
 & +\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}\partial _{\mu}^{x}\left(e^{-ik\cdot(x-y)}-e^{ik\cdot(x-u)}\right)\delta _{\nu}^{0}\delta(x_{0}-y_{0}) \\
 & -\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2E_{\vec{k}}}(e^{-ik\cdot(x-y)}-e^{ik\cdot(x-y)})\delta _{\mu}^{0}\delta _{\nu}^{0}\partial _{y_{0}}\delta(x_{0}-y_{0}) \\
 & =\partial _{\mu}^{x}\partial _{\nu}^{y}\braket{ 0|T\phi(x)\phi(y)|0 }-i\eta _{\mu 0}\eta _{\nu 0}\delta ^{4}(x-y)
\end{align}$$

the argument is quite similar to the problem 4 in the homework 1.

# problem 2

consider QCD that contains heavy quarks. calculate the single gluon exchange contribution to the (infinite) heavy quark potential, and prove that

1. when the quarks are in the color singlet state, the potential is attractive
2. when the quarks are in the color octet state, the potential is repulsive

## solution

the single gluon exchange process between a heavy quark $q$ and an antiquark $\bar{q}$ can be described by the $t$-channel scattering amplitude. in the non-relativistic limit, the interaction potential $V(\vec{r})$ is given by the Fourier transform of the non-relativistic scattering amplitude (Born approximation)

$$ V(\vec{r}) = -\int \frac{\mathrm{d}^3\vec{q}}{(2\pi)^3} e^{i\vec{q}\cdot\vec{r}} \frac{\mathcal{M}_{\text{NR}}}{(2m_q)^2} $$

the scattering amplitude for $q(p_1, i) + \bar{q}(p_2, j) \to q(p_1', i') + \bar{q}(p_2', j')$ is

$$ i\mathcal{M} = \bar{u}(p_1')(-ig_s \gamma^\mu t^a_{i'i})u(p_1) \left( \frac{-i\eta_{\mu\nu}}{q^2} \right) \bar{v}(p_2)(-ig_s \gamma^\nu t^a_{jj'})v(p_2') $$

where $i, j$ are initial color indices and $i', j'$ are final color indices for $q$ and $\bar{q}$ respectively. in the non-relativistic limit, the spatial momentum transfer is $\vec{q}$, and $q^2 \approx -|\vec{q}|^2$. the fermion bilinears reduce to $\bar{u}(p_1')\gamma^\mu u(p_1) \approx 2m_q \delta^{\mu 0}$ and $\bar{v}(p_2)\gamma^\nu v(p_2') \approx 2m_q \delta^{\nu 0}$. therefore

$$ \mathcal{M}_{\text{NR}} \approx - \frac{g_s^2}{|\vec{q}|^2} (2m_q)^2 (\delta^{\mu 0}\delta^{\nu 0}\eta_{\mu\nu}) t^a_{i'i} t^a_{jj'} = - \frac{g_s^2}{|\vec{q}|^2} (2m_q)^2 (t^a_{i'i} t^a_{jj'}) $$

using the Fourier transform $\int \frac{\mathrm{d}^3\vec{q}}{(2\pi)^3} \frac{e^{i\vec{q}\cdot\vec{r}}}{|\vec{q}|^2} = \frac{1}{4\pi r}$, we obtain the heavy quark potential 

$$ V(r) = - \frac{g_s^2}{4\pi r} (t^a_{i'i} t^a_{jj'}) = V_0(r) \cdot \mathcal{C} $$

where $V_0(r) = -\frac{\alpha_s}{r}$ (where $\alpha_s = \frac{g_s^2}{4\pi}$) is the attractive Coulomb-like spatial potential and $\mathcal{C} = t^a_{i'i} t^a_{jj'}$ is the effective color factor.

now we evaluate this color factor for the singlet and octet combinations in $3 \otimes \bar{3} = 1 \oplus 8$.

**1. color singlet state (attractive)**

the normalized color singlet state is $|1\rangle = \frac{1}{\sqrt{3}} \delta_{ij} |i \bar{j}\rangle$. the factor $\mathcal{C}_1$ is the expectation value of the color operator $\mathcal{C}$ in this state:
    
$$\begin{align}
\mathcal{C}_1 & = \langle 1 | \mathcal{C} | 1 \rangle = \left( \frac{1}{\sqrt{3}} \delta_{i'j'} \right) (t^a_{i'i} t^a_{jj'}) \left( \frac{1}{\sqrt{3}} \delta_{ij} \right) \\
& = \frac{1}{3} \delta_{i'j'} \delta_{ij} t^a_{i'i} t^a_{jj'} = \frac{1}{3} t^a_{j'i} t^a_{ij'} = \frac{1}{3} \text{Tr}(t^a t^a)
\end{align}$$

using the normalization of the $\mathrm{SU}(3)$ generators $\text{Tr}(t^a t^b) = \frac{1}{2}\delta^{ab}$, we have $\text{Tr}(t^a t^a) = \frac{1}{2} \times 8 = 4$. thus

$$\begin{align}
\mathcal{C}_1 = \frac{4}{3} > 0
\end{align}$$

so the potential for the color singlet state is $\displaystyle{V_1(r) = -\frac{4}{3} \frac{\alpha_s}{r}}$. the negative overall sign rigorously proves that the potential is **attractive**.

**2. color octet state (repulsive)**

the normalized color octet state can be formulated as $|8^b\rangle = \sqrt{2} t^b_{ij} |i \bar{j}\rangle$, which is normalized since $\langle 8^c | 8^b \rangle = 2\text{Tr}(t^c t^b) = \delta^{cb}$. the color factor is

$$\begin{align}
\mathcal{C}_8 & = \langle 8^c | \mathcal{C} | 8^b \rangle = (\sqrt{2} (t^c)^{*}_{i'j'}) (t^a_{i'i} t^a_{jj'}) (\sqrt{2} t^b_{ij}) \\
& = 2 t^c_{j'i'} t^a_{i'i} t^b_{ij} t^a_{jj'} = 2 \text{Tr}(t^c t^a t^b t^a)
\end{align}$$

*(note: we used $(t^c)^*_{i'j'} = (t^c)^\dagger_{j'i'} = t^c_{j'i'}$ and matched indices to form the matrix multiplication chain)*. using the $\mathrm{SU}(3)$ generator identity $\sum_a t^a t^b t^a = -\frac{1}{6} t^b$, we obtain:

$$\begin{align}
\mathcal{C}_8 & = 2 \text{Tr}\left(t^c \left(-\frac{1}{6} t^b\right)\right) = -\frac{1}{3} \text{Tr}(t^c t^b) = -\frac{1}{6} \delta^{cb}
\end{align}$$

so the effective color factor is $\mathcal{C}_8 = -1/6 < 0$. the potential for the color octet state is $\displaystyle{V_8(r) = +\frac{1}{6} \frac{\alpha_s}{r}}$. the positive overall sign rigorously proves that the potential is **repulsive**.

*(Remark: This can also be derived via Casimir operators $T^a_q \cdot T^a_{\bar{q}} = \frac{1}{2}[C_2(R_{\text{tot}}) - 2C_F]$. For singlet $C_2(1)=0 \implies \boldsymbol{T}_1\cdot \boldsymbol{T}_2 = -4/3$. For octet $C_2(8)=3 \implies \boldsymbol{T}_1\cdot \boldsymbol{T}_2= +1/6$. Since $V(r) = \frac{\alpha_s}{r} (T^q \cdot T^{\bar{q}})$, it directly yields $-\frac{4}{3} \frac{\alpha_s}{r}$ and $+\frac{1}{6} \frac{\alpha_s}{r}$ as well.)*

