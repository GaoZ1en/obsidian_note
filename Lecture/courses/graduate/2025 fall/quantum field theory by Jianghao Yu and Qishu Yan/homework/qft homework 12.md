# problem 1

consider the theory of a complex scalar field $\displaystyle{\phi}$ interacting with the electromagnetic field $\displaystyle{A^{\mu}}$. the Lagrangian is

$$\begin{align}
\mathcal{L} & =-\frac{1}{4}F_{\mu \nu}^{2}+(D_{\mu}\phi)^{*}(D^{\mu}\phi)-m^{2}\phi ^{*}\phi
\end{align}$$

where $\displaystyle{D_{\mu}=\partial _{\mu}+ieA_{\mu}}$ is the usual gauge-covariant derivative. in this problem we use canonical quantization.

- show that the propagator of the complex scalar field is the same as that of a real field. also derive the Feynman rules of the interactions between photons and scalar particles.
- compute to lowest order, the differential cross section for $\displaystyle{e^{+}e^{-}\to \phi \phi ^{*}}$. ignore the electron mass, and average over the electron and position polarizations. find the asymptotic angular dependence and total cross section. compare the result to the corresponding formulae for $\displaystyle{e^{+}e^{-}\to \mu ^{+}\mu ^{-}}$
- compute the contribution of the charged scalar to the photon vacuum polarization, using dimensional regularization. to put the answer into the expected form

$$\begin{align}
\Pi^{\mu \nu}(q^{2})=(g^{\mu \nu}q^{2}-q^{\mu}q^{\nu})\Pi & (q^{2})
\end{align}$$

*sol*.

### Feynman rules

the free Lagrangian for the complex scalar field is $\displaystyle{\mathcal{L}_{0}=\partial _{\mu}\phi ^{*}\partial ^{\mu}\phi-m^{2}\phi ^{*}\phi}$. the propagator for the complex field is defined as $\displaystyle{\langle 0|T\phi (x)\phi ^{*}(y)|0\rangle}$. since $\displaystyle{\phi}$ satisfies the same klein-gordon equation as a real scalar field, the propagator is identical in form:

$$\begin{align}
D_{F}(x-y) & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{1}{k^{2}-m^{2}+i\varepsilon}e^{-ik\cdot(x-y)}
\end{align}$$

turn to momentum space, the propagator is

$$\begin{align}
\tilde{D}_{F}(k) & =\frac{i}{k^{2}-m^{2}+i\varepsilon}
\end{align}$$

the interaction Lagrangian is

$$\begin{align}
\mathcal{L}_{\text{int}} & =-ieA_{\mu}(\phi ^{*}\partial ^{\mu}\phi-(\partial ^{\mu}\phi ^{*})\phi)+e^{2}A_{\mu}A^{\mu}\phi ^{*}\phi
\end{align}$$

the first term gives a 3-point vertex (scalar-photon), and the second term gives a 4-point vertex (seagull).

- **3-point vertex (scalar-photon)**:

$$\begin{align}
-ieA_{\mu}(\phi ^{*}\partial ^{\mu}\phi-(\partial ^{\mu}\phi ^{*})\phi) & \to -ie\epsilon_{\mu}[\phi ^{*}(-ip^{\mu}\phi)-(i(p')^{\mu}\phi ^{*})\phi] \\
 & =-e\varepsilon _{\mu}(p+p')^{\mu}
\end{align}$$

thus the feynman rule for the vertex is **$-ie(p+p')^{\mu}$** (where $\displaystyle{p,p'}$ are the momenta along the charge flow direction).
- **4-point vertex (seagull)**:

$$\begin{align}
e^{2}g^{\mu \nu}A_{\mu}A_{\nu}\phi ^{*}\phi & \to e^{2}g^{\mu \nu}\varepsilon _{\mu}\varepsilon _{\nu}
\end{align}$$

thus the feynman rule for the vertex is **$2ie^{2}g^{\mu \nu}$** (for two photons $\displaystyle{\mu,\nu}$). the extra factor of 2 is due to the two identical photons.

### cross section $\displaystyle{e^{+}e^{-}\to \phi \phi ^{*}}$

suppose the momenta are assigned as follows:

$$\begin{align}
e^{-}(k_{1})+e^{+}(k_{2}) & \to \gamma ^{*}(q)\to \phi (p_{1})+\phi ^{*}(p_{2})
\end{align}$$

there is only one feynman diagram at tree level, the corresponding amplitude is

$$\begin{align}
i\mathcal{M} & =\bar{v}(k_{2})(-ie\gamma ^{\mu})u*k_{1}\frac{-i\eta _{\mu \nu}}{s}(-ie)(p_{1}-p_{2})^{\nu}
\end{align}$$

where $\displaystyle{s=q^{2}}$. to get the squared amplitude, we average over initial spins:

$$\begin{align}
\overline{|\mathcal{M}|^{2}} & = \frac{1}{4}\sum _{\text{spins}}|\mathcal{M}|^{2} \\
 & =\frac{1}{4} \frac{e^{4}}{s^{2}}\mathrm{Tr}[\not{k}_{2}\gamma _{\mu}\not{k}_{1}\gamma _{\nu}](p_{1}-p_{2})^{\mu}(p_{1}-p_{2})^{\nu} \\
 & =\frac{e^{4}}{s^{2}}[2(k_{1}\cdot \Delta p)(k_{2}\cdot \Delta p)-(k_{1}\cdot k_{2})(\Delta p)^{2}]
\end{align}$$

where $\displaystyle{\Delta p=p_{1}-p_{2}}$. in the CoM frame, we have

$$\begin{align}
k_{1} & =(E,E\hat{z}) \\
k_{2} & =(E,-E\hat{z}) \\
p_{1} & =(E,\mathbf{p}) \\
p_{2} & =(E,-\mathbf{p}) \\
\implies \Delta p & =(0,2\mathbf{p}) \\
k_{1}\cdot \Delta p & =-2E^{2}\beta \cos \theta \\
k_{2}\cdot \Delta p & =2E^{2}\beta \cos \theta \\
k_{1}\cdot k_{2} & =2E^{2} \\
(\Delta p)^{2} & =-4E^{2}\beta ^{2} \\
\beta & =\sqrt{1-\frac{4m_{\phi}^{2}}{s}} \\
s & =4E^{2}
\end{align}$$

thus

$$\begin{align}
\overline{|\mathcal{M}|^{2}} & =\frac{e^{4}}{s^{2}}[2(k_{1}\cdot \Delta p)(k_{2}\cdot \Delta p)-(k_{1}\cdot k_{2})(\Delta p)^{2}] \\
 & =\frac{e^{4}}{16E^{4}}\left(-8E^{4}\beta ^{2}\cos ^{2}\theta+8E^{4}\beta ^{2}\right) \\
 & =\frac{1}{2}e^{4}\beta ^{2}\sin ^{2}\theta \\
\implies \frac{\mathrm{d}\sigma}{\mathrm{d}\Omega} & =\frac{1}{64\pi ^{2}s} \frac{|\vec{p}|}{|\vec{k}|} \overline{|\mathcal{M}|^{2}} \\
 & =\frac{1}{64\pi ^{2}s}\beta \left(\frac{1}{2}e^{4}\beta ^{2}\sin ^{2}\theta \right) \\
 & =\frac{\alpha ^{2}}{8s}\beta ^{3}\sin ^{2}\theta
\end{align}$$

the result of $\displaystyle{e^{+}e^{-}\to \mu ^{+}\mu ^{-}}$ is

$$\begin{align}
\frac{\mathrm{d}\sigma}{\mathrm{d}\Omega} & =\frac{\alpha ^{2}}{4s}\beta \left(1+\cos ^{2}\theta +(1-\beta ^{2})\sin ^{2}\theta \right)
\end{align}$$

the scalar cross section is smaller (by a factor of 1/4 in the total cross section limit $\displaystyle{\beta \to 1}$) and has a $\displaystyle{\sin ^{2}\theta}$ distribution (vanishing in the forward/backward directions) due to angular momentum conservation (spin-1 photon decaying to spin-0 scalars requires P-wave).

### Vacuum Polarization

The photon self-energy $\Pi^{\mu\nu}(q^2)$ receives two contributions from the scalar loop:
- **Bubble diagram** with two photon-scalar-scalar vertices via scalar propagator.
- **Seagull diagram** with one 4-point vertex.

we have

$$\begin{align}
i\Pi_{1}^{\mu \nu}(q^{2}) & =\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}(-ie)(2k+q)^{\mu} \frac{i}{k^{2}-m^{2}}(-ie)(2k+q)^{\nu} \frac{i}{(k+q)^{2}-m^{2}} \\
 & =e^{2}\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} \frac{(2k+q)^{\mu}(2k+q)^{\nu}}{(k^{2}-m^{2})[(k+q)^{2}-m^{2}]} \\
i\Pi_{2}^{\mu \nu}(q^{2}) & =\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}(2ie^{2}g^{\mu \nu}) \frac{i}{k^{2}-m^{2}} \\
 & =-2e^{2}\eta^{\mu \nu}\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} \frac{1}{k^{2}-m^{2}}
\end{align}$$

adding them gives the total vacuum polarization:

$$\begin{align}
i\Pi^{\mu \nu}(q^{2}) & =i\Pi_{1}^{\mu \nu}(q^{2})+i\Pi_{2}^{\mu \nu}(q^{2}) \\
 & =-e^{2}\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} \frac{2\eta ^{\mu \nu}((k+q)^{2}-m^{2})-(2k+q)^{\mu}(2k+q)^{\nu}}{(k^{2}-m^{2}))[(k+q)^{2}-m^{2}]}
\end{align}$$

use the Feynman parameterization:

$$\begin{align}
\frac{1}{(k^{2}-m^{2})[(k+q)^{2}-m^{2}]} & =\int _{0}^{1}\mathrm{d}x \frac{1}{[(1-x)(k^{2}-m^{2})+x((k+q)^{2}-m^{2})^{2}]^{2}}
\end{align}$$

take the shift $l = k + xq$, the denominator becomes $D = l^2 - \Delta$ with $\Delta = m^2 - x(1-x)q^2$. and the numerator becomes

$$\begin{align}
\text{Num} & \to2\eta ^{\mu \nu}((l-xq)^{2}-m^{2})-(2l+(1-2x)q)^{\mu}(2l+(1-2x)q)^{\nu} \\
 & =2\eta ^{\mu \nu}(l^{2}+x^{2}q^{2}-m^{2})-4l^{\mu}l^{\nu}-(1-2x)^{2}q^{\mu}q^{\nu} \\
 & =2\eta ^{\mu \nu}l^{2}\left( 1-\frac{2}{d} \right)+2\eta ^{\mu \nu}(x^{2}q^{2}-m^{2})-(1-2x)^{2}q^{\mu}q^{\nu}
\end{align}$$

here we have dropped the odd terms in $\displaystyle{l}$ and used the standard integral result:

$$\begin{align}
\int \frac{\mathrm{d}^{d}l}{(2\pi)^{d}} \frac{l^{\mu}l^{\nu}}{(l^{2}-\Delta)^{n}} & =\frac{1}{d}\eta ^{\mu \nu}\int \frac{\mathrm{d}^{d}l}{(2\pi)^{d}} \frac{l^{2}}{(l^{2}-\Delta)^{n}}
\end{align}$$

thus the integral becomes

$$\begin{align}
i\Pi^{\mu \nu}(q^{2}) & =-e^{2}\int \frac{\mathrm{d}^{d}l}{(2\pi)^{d}} \int ^{1}_{0} \mathrm{d}x \frac{2\eta ^{\mu \nu}l^{2}\left( 1-\frac{2}{d} \right)+2\eta^{\mu \nu}(x^{2}p^{2}-m^{2})-(1-2x)^{2}q^{\mu}q^{\nu}}{(l^{2}-\Delta)^{2}} \\
 & =-\frac{ie^{2}}{(4\pi)^{d/2}} \int ^{1}_{0} \mathrm{d}x \frac{\Gamma\left( 2-\frac{d}{2} \right)}{\Delta ^{2-d/2}}\left[2\eta ^{\mu \nu}+2\eta ^{\mu \nu}(x^{2}q^{2}-m^{2})-(1-2x)^{2}q^{\mu}q^{\nu}\right] \\
 & =-(q^{2}\eta ^{\mu \nu}-q^{\mu}q^{\nu})\frac{ie^{2}}{(4\pi)^{d/2}}\int ^{1}_{0} \mathrm{d}x \frac{\Gamma\left( 2-\frac{d}{2} \right)}{\Delta ^{2-d/2}}(1-2x)^{2}
\end{align}$$

in the final step we symmetrize the integrand by $\displaystyle{x^{2}\to \frac{1}{2}(x^{2}+(1-x)^{2})}$. thus we identify

$$\begin{align}
\Pi (q^{2}) & =\frac{e^{2}}{(4\pi)^{d/2}}\int ^{1}_{0} \mathrm{d}x (1-2x)^{2} \frac{\Gamma\left( 2-\frac{d}{2} \right)}{\Delta ^{2-d/2}}
\end{align}$$

# problem 2

show that in the renormalization of spinor QED, the triangle diagram (3 external photon legs and a closed electron loop) does not contribute, whereas the box diagram (4 external photon legs and a closed electron loop) contributes a finite amount.

*sol*.

dropping external legs and focusing on the loop integrals, we analyze the two diagrams separately.

### triangle diagram

the amplitude is given by

$$\begin{align}
\mathcal{M}_{1}^{\mu \nu \rho} & =-(-ie)^{3}\int \frac{\mathrm{d}^{4}q}{(2\pi)^{4}}\mathrm{Tr}\left[\gamma ^{\mu} \frac{i}{\not{p}-m}\gamma ^{\nu} \frac{i}{\not{p}-\not{k}_{1}-m}\gamma ^{\rho} \frac{i}{\not{p}-\not{k}_{1}-\not{k}_{2}-m}\right]
\end{align}$$

and a second diagram with the opposite ordering of photons and electron momentum flow. notice that

$$\begin{align}
\mathrm{Tr}[\gamma ^{\mu}S_{F}(p)\gamma ^{\nu}S_{F}(p-k_{1})\gamma ^{\rho}S_{F}(p-k_{1}-k_{2})] & =\mathrm{Tr}[S_{F}^{T}(p-k_{1}-k_{2})(\gamma ^{\rho})^{T}S_{F}^{T}(p-k_{1}))(\gamma ^{\nu})^{T}S_{F}^{T}(p)(\gamma ^{\mu})^{T}] \\
 & =(-1)^{3}\mathrm{Tr}[C^{-1}S_{F}(-p+k_{1}+k_{2})C C^{-1}(-\gamma ^{\rho})C C^{-1}S_{F}(-p+k_{1})C C^{-1}(-\gamma ^{\nu})C C^{-1}S_{F}(-p)C C^{-1}(-\gamma ^{\mu})C] \\
 & =- \mathrm{Tr}[S_{F}(-p+k_{1}+k_{2})\gamma ^{\rho}S_{F}(-p+k_{1})\gamma ^{\nu}S_{F}(-p)\gamma ^{\mu}] \\
 & =-\mathrm{Tr}[S_{F}(p'))\gamma ^{\rho}S_{F}(p'-k_{2})\gamma ^{\nu}S_{F}(p'-k_{1}-k_{2})\gamma ^{\mu}]
\end{align}$$

which is exacly the integrand of the second diagram with $p' = -p + k_1 + k_2$. thus these two diagrams cancel each other exactly, and the triangle diagram vanishes.

### box diagram

there are 3 distinct topologies (plus charge conjugation), corresponding to the permutations of the external legs (1234, 1243, 1324). for the ordering 1-2-3-4, the amplitude is

$$\begin{align}
-ie\mathcal{M}_{(1234)}^{\mu \nu \rho \sigma} & =-\int \frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\mathrm{Tr}\left[(-ie\gamma ^{\mu}) \frac{i}{\not{p}-m}(-ie\gamma ^{\nu}) \frac{i}{\not{p}+\not{k}_{1}-m}(-ie\gamma ^{\rho}) \frac{i}{\not{p}+\not{k}_{1}+\not{k}_{2}-m}(-ie\gamma ^{\sigma}) \frac{i}{\not{p}+\not{k}_{1}+\not{k}_{2}+\not{k}_{3}-m}\right]
\end{align}$$

the superficial degree of divergence is $\displaystyle{D=4-4=0}$. to see the finiteness, we expand the amplitude in powers of external momenta $\displaystyle{k}$. the total amplitude (sum over permutations) is constrained by gauge invariance (Ward identity $\displaystyle{k_{\mu}\mathcal{M}^{\mu \dots}=0}$).

the amplitude has the expansion shape:

$$\begin{align}
\mathcal{M}(k) & =A^{(0)}+k A^{(1)}+k^{2}A^{(2)}+\dots
\end{align}$$

1.  **$\displaystyle{A^{(0)}}$ term**: corresponds to setting all $\displaystyle{k_{i}=0}$ in the propagators.

$$\begin{align}
    A^{(0)} & \sim \int \mathrm{d}^{4}p \mathrm{Tr}\left[\gamma ^{\mu} \frac{1}{\not{p}-m}\gamma ^{\nu} \frac{1}{\not{p}-m}\gamma ^{\rho} \frac{1}{\not{p}-m}\gamma ^{\sigma} \frac{1}{\not{p}-m}\right]
\end{align}$$

    physically, this term represents a local 4-photon coupling $\displaystyle{(A_{\mu}A^{\mu})^{2}}$, which is **not gauge invariant**. thus the gauge symmetry requires $\displaystyle{A^{(0)}=0}$ (or it is removed by regulariztion).
1.  **$\displaystyle{A^{(1)}, A^{(2)}, A^{(3)}}$ terms**: similarly, there are no gauge invariant local operators of dimension 5, 6, or 7 for the photon field (the lowest is the Euler-Heisenberg term $\displaystyle{(F_{\mu \nu}F^{\mu \nu})^{2}\sim k^{4}}$ of dimension 8). therefore, all terms below $\displaystyle{k^{4}}$ must vanish or cancel in the sum of diagrams due to gauge invariance.

the first non-vanishing contribution is of order $\displaystyle{k^{4}}$. the loop integral for this term behaves as:

$$\begin{align}
\mathcal{M}_{finite} & \sim k^{4}\int \mathrm{d}^{4}p \frac{\partial ^{4}}{\partial p^{4}}\left( \frac{1}{p^{4}} \right) \\
 & \sim k^{4}\int \frac{\mathrm{d}^{4}p}{p^{8}}
\end{align}$$

which is UV convergent ($\displaystyle{D_{\text{eff}}=4-8=-4}$). thus the box diagram is finite.
