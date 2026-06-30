# problem

to compute the 1-loop quantum correction to squark mass in 4d $\displaystyle{\mathcal{N}=1}$ SQCD, we need to consider 4 Feynman diagrams
- squark loop
- quark-gluino loop
- squark-gluon loop
- gluon loop

evaluate them one by one. for simplicity, we assume that the momentum carried by the external squark leg is zero.

after evaluating these 4 Feynman diagrams, add their contributions together to see the final result. in the Feynman gauge, the Feynman rule for SQCD are given by

- gauge boson propagator $\displaystyle{\braket{ A_{\mu}^{a}A_{\nu}^{b} }=-\frac{i\delta ^{ab}\eta _{\mu \nu}}{p^{2}}}$
- gluino propagator $\displaystyle{\braket{ \lambda ^{a}_{\alpha}\lambda ^{\dagger b}_{\dot{\beta}} }=\frac{i\delta ^{ab}p_{\mu}\sigma ^{\mu}_{\alpha \dot{\beta}}}{p^{2}}}$ or $\displaystyle{\braket{ \lambda ^{\dagger \dot{\beta}}_{b}\lambda ^{\alpha}_{a} }=\frac{i\delta _{ba}p_{\mu}\bar{\sigma}^{\mu,\dot{\beta}\alpha}}{p^{2}}}$
- quark propagator $\displaystyle{\braket{ \psi _{i\alpha}\psi _{\dot{\beta}}^{\dagger j} }=\frac{i\delta _{i}^{j}p_{\mu}\sigma ^{\mu}_{\alpha \dot{\beta}}}{p^{2}}}$ or $\displaystyle{\braket{ \psi ^{\dagger \dot{\beta}}_{j}\psi ^{i\alpha} }=\frac{i\delta ^{i}_{j}p_{\mu}\bar{\sigma}^{\mu,\dot{\beta}\alpha}}{p^{2}}}$
- squark propagator $\displaystyle{\braket{ q_{i}q_{j}^{\dagger} }=\frac{i\delta _{ij}}{p^{2}}}$
- 4-squark vertex $\displaystyle{-ig^{2}T^{a}T^{a}}$
- yukawa coupling among squark, quark and gluino $\displaystyle{-i\sqrt{ 2 }gT^{a}}$
- squark-gluon vertex $\displaystyle{igT^{a}(p+p')_{\mu}}$ with $\displaystyle{p_{\mu}}$ and $\displaystyle{p_{\mu}'}$ denoting the incoming and outgoing squark momenta
- 2-squark 2-gluon vertex $\displaystyle{ig^{2}\left\{T^{a},T^{b}\right\}\eta _{\mu \nu}}$.

here $\displaystyle{a,b}$ denote gauge indices, $\displaystyle{i,j}$ denote flavor indices. for simplicity, consider only one flavor. introduce a UV cutoff $\displaystyle{\Lambda}$ in the momentum to regularize divergent integrals.

## solution

write

$$\begin{align}
T^{a}T^{a}=C_{2}(R)\mathbb{I}, \qquad I_{\Lambda}:=\int ^{\Lambda}\frac{\mathrm{d}^{4}p_{E}}{(2\pi)^{4}}\frac{1}{p_{E}^{2}}=\frac{\Lambda ^{2}}{16\pi ^{2}}.
\end{align}$$

For a squark in the fundamental representation, $C_{2}(R)=C_{F}$, and with the standard normalization $\operatorname{tr}(T^{a}T^{b})=\frac{1}{2}\delta ^{ab}$,

$$\begin{align}
C_{F}=\frac{N_{c}^{2}-1}{2N_{c}}.
\end{align}$$

we only keep the quadratically divergent part. the external momentum and all masses are set to zero, so logarithmically divergent and finite terms are not tracked. the common factor $I_{\Lambda}$ is written after the Wick rotation,

$$\begin{align}
\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{i}{p^{2}} \longrightarrow \int ^{\Lambda}\frac{\mathrm{d}^{4}p_{E}}{(2\pi)^{4}}\frac{1}{p_{E}^{2}} =I_{\Lambda}.
\end{align}$$

### squark loop

Using the 4-squark vertex and the internal squark propagator,

$$\begin{align}
\mathcal{M}_{\text{squark}} &=(-ig^{2}T^{a}T^{a})\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{i}{p^{2}} \\
&=(-i)(i)g^{2}C_{2}(R)\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{1}{p^{2}} \\
&=g^{2}C_{2}(R)I_{\Lambda}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{M}_{\text{squark}}=g^{2}C_{2}(R)\frac{\Lambda ^{2}}{16\pi ^{2}}.
\end{align}$$

### quark-gluino loop

There is an extra minus sign from the closed fermion loop. the two Yukawa vertices give $(-i\sqrt{2}gT^{a})(-i\sqrt{2}gT^{a})$, and the quark and gluino propagators give one $p\cdot\sigma$ and one $p\cdot\bar{\sigma}$ in the numerator. the spinor trace gives

$$\begin{align}
\operatorname{tr}(p_{\mu}\sigma ^{\mu}p_{\nu}\bar{\sigma}^{\nu})=2p^{2}.
\end{align}$$

therefore the loop contribution is

$$\begin{align}
\mathcal{M}_{\psi \lambda} &=-(-i\sqrt{2}gT^{a})(-i\sqrt{2}gT^{a})\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{i p_{\mu}\sigma ^{\mu}}{p^{2}}\frac{i p_{\nu}\bar{\sigma}^{\nu}}{p^{2}} \\
&=-(-i\sqrt{2}g)^{2}i^{2}C_{2}(R)\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{\operatorname{tr}(p_{\mu}\sigma ^{\mu}p_{\nu}\bar{\sigma}^{\nu})}{(p^{2})^{2}} \\
&=-(-2g^{2})(-1)C_{2}(R)\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{2p^{2}}{(p^{2})^{2}} \\
&=-4g^{2}C_{2}(R)I_{\Lambda}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{M}_{\psi \lambda}=-4g^{2}C_{2}(R)\frac{\Lambda ^{2}}{16\pi ^{2}}.
\end{align}$$

### squark-gluon loop

At zero external squark momentum, each squark-gluon vertex contributes one power of the loop momentum:

$$\begin{align}
igT^{a}(p+0)_{\mu}=igT^{a}p_{\mu}.
\end{align}$$

the scalar and gauge propagators then give

$$\begin{align}
\mathcal{M}_{qA} &=(igT^{a}p_{\mu})(igT^{a}p_{\nu})\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{i}{p^{2}}\frac{-i\eta ^{\mu \nu}}{p^{2}} \\
&=(i^{2})(i)(-i)g^{2}C_{2}(R)\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{p_{\mu}p_{\nu}\eta ^{\mu \nu}}{(p^{2})^{2}} \\
&=-g^{2}C_{2}(R)\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{p^{2}}{(p^{2})^{2}} \\
&=-g^{2}C_{2}(R)I_{\Lambda}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{M}_{qA}=-g^{2}C_{2}(R)\frac{\Lambda ^{2}}{16\pi ^{2}}.
\end{align}$$

### gluon loop

For the seagull diagram, the two internal gauge fields are contracted at the same vertex, so there is a symmetry factor $\frac{1}{2}$. Using

$$\begin{align}
\delta ^{ab}\{T^{a},T^{b}\}=2T^{a}T^{a}=2C_{2}(R)\mathbb{I}, \qquad \eta _{\mu \nu}\eta ^{\mu \nu}=4,
\end{align}$$

we get

$$\begin{align}
\mathcal{M}_{A} &=\frac{1}{2}(ig^{2}\{T^{a},T^{b}\}\eta _{\mu \nu})\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{-i\delta ^{ab}\eta ^{\mu \nu}}{p^{2}} \\
&=\frac{1}{2}(i)(-i)g^{2}\delta ^{ab}\{T^{a},T^{b}\}\eta _{\mu \nu}\eta ^{\mu \nu}\int ^{\Lambda}\frac{\mathrm{d}^{4}p}{(2\pi)^{4}}\frac{1}{p^{2}} \\
&=\frac{1}{2}g^{2}(2C_{2}(R))(4)I_{\Lambda} \\
&=4g^{2}C_{2}(R)I_{\Lambda}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{M}_{A}=4g^{2}C_{2}(R)\frac{\Lambda ^{2}}{16\pi ^{2}}.
\end{align}$$

Adding the four diagrams together,

$$\begin{align}
\mathcal{M}_{\text{1-loop}} &=g^{2}C_{2}(R)I_{\Lambda}\left(1-4-1+4\right) \\
&=0.
\end{align}$$

therefore, in unbroken $\mathcal{N}=1$ SQCD, the quadratically divergent 1-loop correction to the squark mass cancels:

$$\begin{align}
\delta m_{q}^{2}\big|_{\text{1-loop}}=0.
\end{align}$$
