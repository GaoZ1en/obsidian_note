CFT...

why consider $\mathrm{AdS}$?
- infrared regulator
- boundary symmetry is conformal group (unlike a box)
- ...

ds? more realistic.

embedding formalism...

scaling dimension of the boundary operator dual to a bulk field of mass $m$ is given by

$$\begin{align}
m^{2} & =\Delta(\Delta-d)-J
\end{align}$$

and the bulk to bulk propagator is given by

$$\begin{align}
G_{\Delta,J}(X_{1},X_{2},W_{1},W_{2}) & =\sum ^{J}_{k=0} (W_{12})^{J-k}((W_{1}\cdot X_{2})(X_{2})\cdot X_{1})^{k}g_{k}(u,\Delta)
\end{align}$$

where $\displaystyle{W}$'s are auxiliary null vectors used to encode the spin of the field, and $u$ is the chordal distance between the two points in $\mathrm{AdS}$.

$$\begin{align}
u & =\frac{-2X_{1}\cdot X_{2}}{\sqrt{X_{1}\cdot X_{1}}\sqrt{X_{2}\cdot X_{2}}}
\end{align}$$

for spin $J=0$, the propagator simplifies to

$$\begin{align}
G_{\Delta,0}(X_{1},X_{2}) & \propto \frac{1}{\zeta(X_{1},x_{2})^{\Delta}} {}_{2}F_{1}\left(\Delta,\Delta-\frac{d}{2}+\frac{1}{2}.2\Delta-d,-\frac{4}{\zeta(X_{1},X_{2})}\right)
\end{align}$$

for bulk to boundary propagator, we have

$$\begin{align}
K_{\Delta,J} & \dots
\end{align}$$

spin-Harmonic functions

$$\begin{align}
(\nabla ^{2}_{1}+h^{2}+\nu^{2}+J)\Omega _{\nu,J}(X_{1},X_{2};W_{1},W_{2}) & =0 \\
\nabla _{1}\cdot K_{1}\Omega _{\nu,J}(X_{1},X_{2};W_{1},W_{2}) & =0 \\
\end{align}$$

introduce this to decompose the bulk to bulk propagator as

$$\begin{align}
G_{\Delta,J}(X_{1},X_{2};W_{1},W_{2}) & =\sum ^{J}_{I=0}\int \mathrm{d}\nu a_{I}(\nu)((W_{1}\cdot \nabla _{1})(W_{2}\cdot \nabla _{2}))^{J-I}\Omega _{\nu,I}(X_{1},X_{2};W_{1},W_{2})
\end{align}$$

three-point function

$$\begin{align}
\braket{ \mathcal{O}_{\phi_{1}}(P_{1})\mathcal{O}_{\phi_{2}}(P_{2})\mathcal{O}_{h}(P_{3},Z) }  & \propto g_{\phi_{1}\phi_{2}h}\frac{((Z\cdot P_{1})P_{23}-(Z\cdot P_{2})P_{13})^{J}}{P_{12}^{\frac{\Delta _{1}+\Delta _{2}-\Delta +J}{2}}P_{23}^{\frac{\Delta _{2}+\Delta -\Delta _{1}+J}{2}}P_{13}^{\frac{\Delta _{1}+\Delta -\Delta _{2}+J}{2}}}
\end{align}$$

---

consider a $\displaystyle{\mathcal{O}(N)}$ model at large $\displaystyle{N}$

$$\begin{align}
\mathcal{L} & =\frac{1}{2}\partial _{\mu}\phi ^{a}\partial ^{\mu}\phi ^{a}+\frac{m^{2}}{2}\phi ^{a}\phi ^{a}+\frac{\lambda}{2N}(\phi ^{a}\phi ^{a})^{2}
\end{align}$$

at large $\displaystyle{N}$, there is only one class of Feynman diagrams that contribute to the four-point function, the so-called bubble diagrams, and we can resum them to get the full four-point function. The result is

$$\begin{align}
\braket{ \phi ^{i}(P_{1})\dots \phi ^{l}(P_{4}) }  & =\left[\frac{\delta ^{ij}\delta ^{kl}}{(P_{12})^{\Delta}(P_{34})^{\Delta}}+(\dots)\right]+\left[\frac{\delta ^{ij}\delta ^{kl}g_{12|34}}{N}\dots\right]+\mathcal{O}(N^{2})
\end{align}$$

where

$$\begin{align}
g_{12|34} & =\dots
\end{align}$$

in-in formalism in dS?

rotate $\mathrm{AdS}$ to $\mathrm{dS}$...

ds correlators...

I don't quite understand the content of this talk. but I know his main point is that we can use annalytic continuation to get dS correlators from AdS correlators, and the latter can be computed using Witten diagrams.