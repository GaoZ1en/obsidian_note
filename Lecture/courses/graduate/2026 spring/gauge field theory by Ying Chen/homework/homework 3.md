# problem 1

attempt to establish an electroweak unification theory that includes only the first-generation leptons. the following are the key steps:
1. determine the degrees of freedom of the theory
2. determine the symmetry of the theory
3. construct the corresponding gauge theory
4. determine the interaction term for the charged currem $\displaystyle{(W^{\pm})}$
5. explain the necessity of introducing the $\displaystyle{(U(1))}$ weak hypercharge symmetry, localize it, and construct the corresponding gauge theory
6. finally, write down the standard form of the electroweak unification theory
7. what is the neutral current, and what are its characteristics
8. introduce the Higgs mechanism and discuss the origin of masses for the gauge bosons and the Higgs particle

## solution

the first-generation leptons contains electron $\displaystyle{e^{-}}$ and electrino $\displaystyle{\nu _{e}}$, and their anti-particles. since there is no right-handed electrino, the degrees of freedom of the theory are left-handed leptons $\displaystyle{e_{L},\nu _{eL}}$ and right-handed electron $\displaystyle{e_{R}}$. we can combine the left-handed leptons into a isospin doublet $\displaystyle{L=\begin{pmatrix}\nu _{eL}\\ e_{L}\end{pmatrix}}$, and the right handed lepton is only a singlet $\displaystyle{R=e_{R}}$. we have $\displaystyle{\mathrm{SU}(2)_{L}}$ symmetry for the left-handed leptons, and $\displaystyle{\mathrm{U}(1)_{Y}}$ symmetry for the right-handed leptons. we can construct the gauge theory by introducing the gauge fields $\displaystyle{W_{\mu }^{a}}$ for $\displaystyle{\mathrm{SU}(2)_{L}}$ and $\displaystyle{B_{\mu }}$ for $\displaystyle{\mathrm{U}(1)_{Y}}$. the whole Lagrangian can be written as

$$\begin{align}
\mathcal{L} & =\bar{L}i\gamma ^{\mu }D_{\mu }L+\bar{R}i\gamma ^{\mu }D_{\mu }R-\frac{1}{4}W_{\mu \nu }^{a}W^{a\mu \nu }-\frac{1}{4}B_{\mu \nu }B^{\mu \nu }\nonumber \\
 & =\bar{L}i\gamma ^{\mu }\left(\partial _{\mu }-ig\frac{\sigma ^{a}}{2}W_{\mu }^{a}-ig'\frac{Y_{L}}{2}B_{\mu }\right)L+\bar{R}i\gamma ^{\mu }\left(\partial _{\mu }-ig'\frac{Y_{R}}{2}B_{\mu }\right)R\nonumber \\
 & -\frac{1}{4}W_{\mu \nu }^{a}W^{a\mu \nu }-\frac{1}{4}B_{\mu \nu }B^{\mu \nu }
\end{align}$$

where $\displaystyle{\sigma ^{a}, a=1,2,3}$ are the Pauli matrices, $\displaystyle{g}$ is the coupling constant for $\displaystyle{\mathrm{SU}(2)_{L}}$, and $\displaystyle{g'}$ is the coupling constant for $\displaystyle{\mathrm{U}(1)_{Y}}$. the hypercharges $\displaystyle{Y_{L}}$ and $\displaystyle{Y_{R}}$ can be determined by the electric charge formula $\displaystyle{Q=T_{3}+\frac{Y}{2}}$. since the left-handed leptons are in a doublet, we have $\displaystyle{T_{3}=\frac{1}{2}}$ for $\displaystyle{\nu _{eL}}$ and $\displaystyle{-\frac{1}{2}}$ for $\displaystyle{e_{L}}$. since the electric charge of electron is $-1$, we can determine that $\displaystyle{Y_{L}=-1}$ and $\displaystyle{Y_{R}=-2}$. then the interaction term for the charged current $\displaystyle{W^{\pm }}$ can be written as

$$\begin{align}
\mathcal{L}_{\text{CC}} & =-\frac{g}{\sqrt{2}}\left(\bar{\nu }_{eL}\gamma ^{\mu }e_{L}W_{\mu }^{+}+\bar{e}_{L}\gamma ^{\mu }\nu _{eL}W_{\mu }^{-}\right)
\end{align}$$

the neutral current appears in the interaction term of the gauge bosons and the leptons, which can be written as

$$\begin{align}
\mathcal{L}_{\text{NC}} & = -\frac{g}{2}\bar{L}\gamma ^{\mu }\sigma ^{3}L W_{\mu }^{3}-\frac{g'}{2}\left(\bar{L}\gamma ^{\mu }Y_{L}L+\bar{R}\gamma ^{\mu }Y_{R}R\right)B_{\mu }
\end{align}$$

however, the neutral current is not a physical observable, we need to diagonalize the mass matrix of the gauge bosons to obtain the physical gauge bosons $\displaystyle{Z_{\mu }}$ and $\displaystyle{A_{\mu }}$. by a rotation of the gauge fields

$$\begin{align}
\begin{pmatrix}
A_{\mu} \\
Z_{\mu}
\end{pmatrix}=\begin{pmatrix}
\cos \theta _{W} & \sin \theta _{W} \\
-\sin \theta _{W} & \cos \theta _{W}
\end{pmatrix}\begin{pmatrix}
B_{\mu} \\
W_{\mu}^{3}
\end{pmatrix}
\end{align}$$

the neutral current can be rewritten as

$$\begin{align}
\mathcal{L}_{\text{NC}} & = -e\bar{L}\gamma ^{\mu }QL A_{\mu }-\frac{g}{2\cos \theta _{W}}\bar{L}\gamma ^{\mu }\left(T_{3}-Q\sin ^{2}\theta _{W}\right)L Z_{\mu }-\frac{g'}{2\cos \theta _{W}}\bar{R}\gamma ^{\mu }\left(Y_{R}-Q\sin ^{2}\theta _{W}\right)R Z_{\mu }
\end{align}$$

the characteristic of the neutral current is that it can couple to both left-handed and right-handed leptons, and the coupling strength depends on the weak mixing angle $\displaystyle{\theta _{W}}$. in order to give masses to the gauge bosons and the leptons, we need to introduce the Higgs mechanism. we can introduce a complex scalar field $\displaystyle{\Phi=\begin{pmatrix}\phi ^{+} \\ \phi ^{0}\end{pmatrix}}$, which is an isospin doublet with hypercharge $\displaystyle{Y=1}$. the Higgs potential can be written as

$$\begin{align}
V(\Phi) & =\mu ^{2}(\Phi ^{\dagger}\Phi)+\lambda(\Phi ^{\dagger}\Phi)^{2}, \quad \mu ^{2}< 0
\end{align}$$

and the Yukawa interaction term can be written as

$$\begin{align}
\mathcal{L}_{\text{Yukawa}} & =-y_{e}\left(\bar{L}\Phi R+\bar{R}\Phi ^{\dagger}L\right)
\end{align}$$

after SSB, the Higgs field acquires a vacuum expectation value $\displaystyle{v=\sqrt{-\frac{\mu ^{2}}{\lambda}}}$, and we can write the Higgs field as

$$\begin{align}
\Phi & =\begin{pmatrix}
0 \\ \frac{v+h}{\sqrt{2}}
\end{pmatrix}
\end{align}$$

then the coupling of the Higgs field to the gauge bosons can give masses to the gauge bosons as

$$\begin{align}
\mathcal{L}_{\text{Higgs}} & =(\partial _{\mu}-ig\frac{\sigma ^{a}}{2}W_{\mu }^{a}-ig'\frac{Y}{2}B_{\mu })\Phi ^{\dagger}(\partial _{\mu}-ig\frac{\sigma ^{a}}{2}W_{\mu }^{a}-ig'\frac{Y}{2}B_{\mu })\Phi \nonumber \\
 & =\partial _{\mu}h\partial ^{\mu }h+\frac{g^{2}v^{2}}{4}W_{\mu }^{+}W^{-\mu }+\frac{(g^{2}+g'^{2})v^{2}}{8}Z_{\mu }Z^{\mu } \\
  & =\partial _{\mu}h\partial ^{\mu }h+m_{W}^{2}W_{\mu }^{+}W^{-\mu }+\frac{m_{Z}^{2}}{2}Z_{\mu }Z^{\mu }
\end{align}$$

and the Yukawa interaction can give masses to the leptons as

$$\begin{align}
\mathcal{L}_{\text{Yukawa}} & =-y_{e}\left(\bar{L}\Phi R+\bar{R}\Phi ^{\dagger}L\right) \nonumber \\
 & =-y_{e}\frac{v}{\sqrt{2}}\left(\bar{e}_{L}e_{R}+\bar{e}_{R}e_{L}\right) \nonumber \\
 & =-m_{e}\bar{e}e
\end{align}$$

where $\displaystyle{m_{e}=\frac{y_{e}v}{\sqrt{2}}}$ is the mass of the electron. the Higgs particle $h$ also acquires a mass from the Higgs potential, which can be written as

$$\begin{align}
\mathcal{L}_{\text{Higgs mass}} & =-\frac{1}{2}m_{h}^{2}h^{2}
\end{align}$$

where $\displaystyle{m_{h}=\sqrt{2\lambda}v}$ is the mass of the Higgs particle. that's the complete electroweak unification theory for the first-generation leptons.

