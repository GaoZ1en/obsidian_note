# problem 1

the Lagrangian of a free complex scalar is

$$\begin{align}
\mathcal{L} & =(\partial _{\mu}\phi ^{*})\partial ^{\mu}\phi-m^{2}\phi ^{*}\phi
\end{align}$$

prove that the generating functional is

$$\begin{align}
Z[J^{*},J] & =\int \mathcal{D}\phi ^{*}\mathcal{D}\phi \exp\left(i \int \mathrm{d}^{4}x\left(\mathcal{L}(x)+J^{*}(x)\phi(x)+J(x)\phi ^{*}(x)\right)\right) \\
 & =\frac{1}{N}\exp\left(-\iint \mathrm{d}^{4}x\mathrm{d}^{4}yJ(x)D_{F}(x-y)J^{*}(y)\right)
\end{align}$$

## solution

by defining

$$\begin{align}
\phi & =\frac{1}{\sqrt{ 2 }}(\phi_{1}+i\phi _{2}) \\
J & =\frac{1}{\sqrt{ 2 }}(J_{1}+iJ_{2})
\end{align}$$

we have

$$\begin{align}
Z[J_{1},J_{2}] & =\int \mathcal{D}\phi ^{*}\mathcal{D}\phi \exp\left(i \int \mathrm{d}^{4}x\left(\mathcal{L}_{0}[\phi_{1}]+\mathcal{L}_{0}[\phi_{2}]+J_{1}\phi_{1}+J_{2}\phi_{2}\right)\right) \\
 & =\frac{1}{N}\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{1}(x)D_{F}(x-y)J_{1}(y)-\frac{i}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{2}(x)D_{F}(x-y)J_{2}(y)\right) \\
 & =\frac{1}{N}\exp\left(-i\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ(x)D_{F}(x-y)J^{*}(y)\right)
\end{align}$$

where $\displaystyle{\mathcal{L}_{0}=\frac{1}{2}\partial _{\mu}\phi \partial ^{\mu}\phi-\frac{1}{2}m^{2}\phi^{2}}$ is the Lagrangian for free real scalar.

# problem 2

prove the Furry theorem. 

## solution

consider

$$\begin{align}
\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega }  & =\frac{1}{Z}\int \mathcal{D}\Phi A_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})\exp\left(iS[\Phi]\right) \\
 & =\frac{1}{Z}\int \mathcal{D}(\mathcal{C}\Phi\mathcal{C}^{-1})\mathcal{C}A_{\mu_{1}}(x_{1})\mathcal{C}^{-1}\dots \mathcal{C}A_{\mu _{n}}(x_{n})\mathcal{C}^{-1}\exp\left(iS[\mathcal{C}\Phi\mathcal{C}^{-1}]\right) \\
 & =(-1)^{n}\frac{1}{Z}\int \mathcal{D}\Phi A_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})\exp\left(iS[\Phi]\right) \\
 & =-\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega }  \\
\implies\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega } & =0
\end{align}$$

here $\displaystyle{n\in2\mathbb{N}+1}$ and $\displaystyle{\Phi}$ denotes all QED fields. The second equality is ensured by the charge conjugation symmetry of the theory and invariance of the path-integral measure.

# problem 3

calculate the vacuum expectation of the Wilson loop

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\exp\left[-\oint _{P}\mathrm{d}x^{\mu}\oint \mathrm{d}y^{\nu} \eta_{\mu \nu}\frac{1}{8\pi ^{2}[(x-y)^{2}-i\varepsilon]}\right]
\end{align}$$

here $\displaystyle{U_{P}(x,x)}$ is the Wilson loop defined as

$$\begin{align}
U_{P}(x,x) & =\mathcal{P}\exp\left(i\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x)\right)
\end{align}$$

## solution

we write

$$\begin{align}
\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x) & =\int \mathrm{d}^{4}xJ^{\mu}A_{\mu} \\
J^{\mu}(x) & =\oint \mathrm{d}y^{\mu}\delta ^{(4)}(x-y)
\end{align}$$

we have

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\frac{1}{Z}\int \mathcal{D}A \exp\left(i\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x)\right)e^{iS[A]} \\
 & =\frac{1}{Z}\int \mathcal{D}A\exp\left(iS[A]+i\int _{M}\mathrm{d}^{4}x J^{\mu}A_{\mu}\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}y J_{\mu}(x)D_{F}^{\mu \nu}(x-y)J_{\nu}(y)\right)
\end{align}$$

here we choose the Feynman gauge and the propagator is given by

$$\begin{align}
D_{F}^{\mu \nu}(x-y) & =\eta ^{\mu \nu}D_{F}(x-y),\qquad D_{F}(x-y)=\frac{1}{4\pi ^{2}[(x-y)^{2}-i\varepsilon]}
\end{align}$$

then

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)\eta ^{\mu \nu}D_{F}(x-y)J_{\nu}(y)\right) \\
 & =\exp\left(-\oint _{P}\mathrm{d}x^{\mu}\oint _{P}\mathrm{d}y^{\nu}\eta _{\mu \nu} \frac{1}{8\pi ^{2}[(x-y)^{2}-i\varepsilon]}\right)
\end{align}$$

# problem 4

consider a electron field $\displaystyle{\psi(x)}$ with mass $\displaystyle{M}$. introduce the gauge invariant nonlocal bilinear operator

$$\begin{align}
\Phi(\vec{x},t;\vec{R}) & =\bar{\psi}(x+\vec{R},t)U(x+\vec{R},t;\vec{x},t)\Gamma \psi(\vec{x},t)
\end{align}$$

where $\displaystyle{\Gamma}$ is some Clifford algebra, and $\displaystyle{U(\vec{x}+\vec{R},t;\vec{x},t)}$ is the parallel transporter from $\displaystyle{(\vec{x},t)}$ to $\displaystyle{(\vec{x}+\vec{R},t)}$. prove that under large mass limit $\displaystyle{M\to \infty}$, we have

$$\begin{align}
C(\vec{R},t) & =\int \mathrm{d}^{3}\vec{x}\braket{ \Omega|T\Phi(\vec{x},t;\vec{R})\Phi ^{\dagger}(\vec{x},0;\vec{R})|\Omega }  \\
 & \propto e^{-2iMt}\braket{ U_{C}(\vec{R},t) } 
\end{align}$$

where $\displaystyle{\braket{ U_{C}(R,t) }}$ is the expectation of the Wilson loop that long the 4-dimensional space time rectangle with length $\displaystyle{t}$ along the time direction while $\displaystyle{R}$ along the spatial direction.

## solution

we write the action as

$$\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\bar{\psi}(i\gamma ^{\mu}D_{\mu}-M)\psi\right) \\
 & \equiv S_{\gamma}+S_{e} \\
S_{e} & =\int \mathrm{d}^{4}x\bar{\psi}(i\gamma ^{\mu}D_{\mu}-M)\psi=\bar{\psi}K\psi
\end{align}$$

then

$$\begin{align}
C(\vec{R},t) & =\int \mathrm{d}^{3}\vec{x} \int \mathcal{D}\psi \mathcal{D}\bar{\psi}\Phi(\vec{x},t;R)\Phi ^{\dagger}(\vec{x},0;R)e^{iS_{e}} \\
 & =\int \mathrm{d}^{3}\vec{x} \braket{ \mathrm{Tr}(S_{F}(\vec{x}+\vec{R},0;\vec{x}+\vec{R},t;A)U(\vec{x}+\vec{R},t;\vec{x},t)\Gamma S_{F}(\vec{x},t;\vec{x},0)U^{\dagger}(\vec{x}+\vec{R},0;\vec{x},0)\Gamma')} \\
 & \qquad- \braket{ \mathrm{Tr}(S_{F}(\vec{x},t;\vec{x}+\vec{R},t;A)U(\vec{x}+\vec{R},t;\vec{x},t)\Gamma)\mathrm{Tr}(S_{F}(\vec{x}+\vec{R},0);\vec{x},0)U^{\dagger}(\vec{x}+R,0,\vec{x},0;A)\Gamma') } 
\end{align}$$

in the second step we have integrated out the $\displaystyle{\psi,\bar{\psi}}$. and $\displaystyle{S_{F}}$ is defined as the fermion propagator in the presence of background gauge field $\displaystyle{A_{\mu}}$:

$$\begin{align}
S_{F}(x,y;A) & =\braket{ \psi(x)\bar{\psi}(y) }_{A} \\
 & =(\det(-iK[A]))^{-1}\int \mathcal{D}\bar{\psi}\mathcal{\psi}\psi(x)\psi(y)e^{iS_{e}}
\end{align}$$

and satifies

$$\begin{align}
K[A]S_{F}[A] & =(\gamma ^{\mu}(i\partial _{\mu}^{(x)}-eA_{\mu}(x))-M)S_{F}(x,y;A) \\
 & =i\delta ^{4}(x-y)
\end{align}$$

in the large mass limit $\displaystyle{M\to \infty}$, we can ignore the spatial parts, then

$$\begin{align}
(\gamma ^{0}(i\partial _{0}^{(x)}-eA_{0}(x))-M)S_{F}(x,y;A) & =i\delta ^{4}(x-y)
\end{align}$$

let $\displaystyle{S_{F}(x,y;A)=\exp\left(-ie\int ^{x_{0}}_{y_{0}}\mathrm{d}tA_{0}(\vec{x},t)\right)\hat{S}(x,y)}$, then

$$\begin{align}
(\gamma ^{0}\partial _{0}^{(x)}-M)\hat{S}(x,y) & =i\delta ^{4}(x-y) \\
\implies \hat{S}(x,y) & =e^{-iM(x^{0}-y^{0})}(i\gamma ^{0}\partial _{0}^{(x)}+M)\Delta (x^{0}-y^{0})\delta ^{3}(\vec{x}-y)
\end{align}$$

then we have

$$\begin{align}
\text{the leading piece for }t>0\text{ is}\qquad 
S_{F}((\vec{x},t),(\vec{y},0);A) & \simeq e^{-iMt}\delta ^{3}(\vec{x}-\vec{y})P_{+}\mathcal{P}\exp\left(-ie\int _{0}^{t}\mathrm{d}\tau A_{0}(\vec{x},\tau)\right), \\
S_{F}((\vec{y},0),(\vec{x},t);A) & \simeq e^{-iMt}\delta ^{3}(\vec{x}-\vec{y})P_{-}\mathcal{P}\exp\left(+ie\int _{0}^{t}\mathrm{d}\tau A_{0}(\vec{x},\tau)\right),
\end{align}$$

with $P_{\pm}=\frac{1\pm \gamma ^{0}}{2}$. Substituting these expressions into the first Wick contraction, the spatial delta functions force the quark and antiquark to remain at fixed positions $\vec{x}$ and $\vec{x}+\vec{R}$. The second contraction does not contribute for $\vec{R}\neq 0$, since it would require $\delta ^{3}(\vec{x}-(\vec{x}+\vec{R}))$.

Therefore

$$\begin{align}
C(\vec{R},t) & \propto e^{-2iMt}\int \mathrm{d}^{3}\vec{x}\left\langle U(\vec{x}+\vec{R},0;\vec{x}+\vec{R},t)U(\vec{x}+\vec{R},t;\vec{x},t)\right. \\
 & \qquad\qquad\qquad\left.\times U(\vec{x},t;\vec{x},0)U(\vec{x},0;\vec{x}+\vec{R},0)\right\rangle _{A}.
\end{align}$$

The four parallel transporters are precisely the ordered product along the spacetime rectangle with spatial size $R$ and time extent $t$. Hence

$$\begin{align}
C(\vec{R},t) & \propto e^{-2iMt}\braket{ U_{C}(\vec{R},t) }.
\end{align}$$

The factor $e^{-2iMt}$ is the rest-mass phase of the static fermion-antifermion pair, while the nontrivial gauge-field dependence is encoded in the rectangular Wilson loop.

# problem 5

act the operator $\displaystyle{\Phi(\vec{x},t;\vec{R})}$ introduced before on the vacuum will generate a state of a electron-positron pair at distance $\displaystyle{\vec{R}}$. insert a complete basis into the correlation function $\displaystyle{C(\vec{R},t)}$, and consider the large mass limit $\displaystyle{M\to \infty}$. derive that

$$\begin{align}
C(\vec{R},t) & =\int \mathrm{d}^{3}\vec{x}\braket{ \Omega|T\Phi(\vec{x},t;\vec{R})\Phi ^{\dagger}(\vec{x},0;\vec{R})|\Omega }  \\
 & =\int \mathrm{d}^{3}\vec{x} \sum _{n} \frac{1}{2E_{n}V}\braket{ \Omega|\Phi(\vec{x},t;\vec{R})|n } \braket{ n|\Phi ^{\dagger}(\vec{x},0;\vec{R})|\Omega }  \\
 & =\sum _{n} \frac{Z_{n}(\vec{R})}{2E_{n}(\vec{R})}e^{-iE_{n}(\vec{R})t}
\end{align}$$

here we have defined $\displaystyle{Z_{n}(\vec{R})= |\braket{ \Omega|\Phi(\vec{0},0;\vec{R})|n }|^{2}}$.

## solution

we have

$$\begin{align}
C(\vec{R},t) & =\int \mathrm{d}^{3}\vec{x}\sum _{n} \frac{1}{2E_{n}V} \braket{ \Omega|\Phi(\vec{x},t;\vec{R})|n } \braket{ n|\Phi ^{\dagger}(\vec{x},0;\vec{R})|\Omega } \\
 & =\sum _{n} \frac{1}{2E_{n}V} \int \mathrm{d}^{3}\vec{x} \braket{ \Omega|\Phi(\vec{0},0;\vec{R})|n } e^{-i(E_{n}-\vec{P}_{n}\cdot \vec{x})t+i\vec{P}_{n}\cdot \vec{x}} \braket{ n|\Phi ^{\dagger}(\vec{0},0;\vec{R})|\Omega } \\
 & =\sum _{n} \frac{|\braket{ \Omega|\Phi(\vec{0},0;\vec{R})|n }|^{2}}{2E_{n}} \frac{1}{V} \int \mathrm{d}^{3}\vec{x} e^{-iE_{n}t} \\
 & =\sum _{n} \frac{Z_{n}(\vec{R})}{2E_{n}(\vec{R})}e^{-iE_{n}(\vec{R})t}
\end{align}$$

if we only consider the fundamental state, we have

$$\begin{align}
C(\vec{R},t) & \simeq \frac{Z_{0}(\vec{R})}{2E_{0}(\vec{R})}e^{-iE_{0}(\vec{R})t}
\end{align}$$

# problem 6

consider the Wilson loop $\displaystyle{U_{P}}$ with length $\displaystyle{T}$ along the time direction and $\displaystyle{R}$ along the spatial direction. prove that when $\displaystyle{T\gg R}$

$$\begin{align}
\braket{ U_{P} } \approx \exp\left[-iV(R)T\right]
\end{align}$$

where

$$\begin{align}
V(R) & =-\frac{e^{2}}{4\pi R}
\end{align}$$

## solution

using

$$\begin{align}
\braket{ U_{P}(x,x) } & =\exp\left(-e^{2}\oint _{P}\mathrm{d}x^{\mu}\oint _{P}\mathrm{d}y^{\nu}\eta _{\mu \nu} \frac{1}{8\pi ^{2}[(x-y)^{2}-i\varepsilon]}\right)
\end{align}$$

turn to Euclidean signature

$$\begin{align}
\braket{ U_{P} }  & =\exp\left(-\frac{e^{2}}{4\pi ^{2}}\int _{0}^{T}\mathrm{d}\tau \int _{0}^{T}\mathrm{d}\tau' \frac{1}{(\tau-\tau')^{2}+R^{2}}\right)
\end{align}$$

the integral

$$\begin{align}
\int _{0}^{T}\mathrm{d}\tau \int _{0}^{T}\mathrm{d}\tau' \frac{1}{(\tau-\tau')^{2}+R^{2}} & = 2\int _{0}^{T}\mathrm{d}u \frac{T-u}{u^{2}+R^{2}} \\
 & =2\left[\frac{T}{R}\arctan \frac{T}{R}-\frac{1}{2}\ln\left( 1+\frac{T^{2}}{R^{2}} \right)\right] \\
 & \approx \frac{\pi T}{R}\quad(T\gg R)
\end{align}$$

then

$$\begin{align}
\braket{ U_{P} }  & =\exp\left(-\frac{e^{2}}{4\pi R} T\right)
\end{align}$$

finally turn back to Lorentzian signature

$$\begin{align}
\braket{ U_{P} }  & =\exp\left(-iV(R)T\right)
\end{align}$$

combine with problem 5, we have

$$\begin{align}
E(R) & =2M+V(R) \\
 & =2M-\frac{e^{2}}{4\pi R}
\end{align}$$

# problem 7

in non-Abelian gauge theory, the parallel transporter from $\displaystyle{x}$ to $\displaystyle{y}$ is defined as

$$\begin{align}
U(y,x;C) & =\mathcal{P}\exp\left(ig\int _{x}^{y} \mathrm{d}z^{\mu}A_{\mu}(x)\right)
\end{align}$$

where $\displaystyle{A_{\mu}(x)=A^{a}_{\mu}(x)t^{a}}$. if $\displaystyle{C}$ is a closed loop, then we can define the Wilson loop

$$\begin{align}
W(C) & =\mathrm{Tr}U(x,x;C) \\
 & =\mathrm{Tr}\mathcal{P}\exp\left(ig\oint _{C} \mathrm{d}z^{\mu}A_{\mu}(x)\right)
\end{align}$$

if the propagator of gauge fields is given by

$$\begin{align}
\braket{ A_{\mu}^{a}(x)A_{\nu}^{b}(y) }  & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{-i\eta _{\mu \nu}\delta ^{ab}}{k^{2}+i\varepsilon} e^{-ik\cdot(x-y)}
\end{align}$$

calculate the Wilson loop along the 1 dimensional rectangle contour $\displaystyle{R\times T}$ with $\displaystyle{T\gg R}$ up to $\displaystyle{\mathcal{O}(g^{2})}$, and prove that the expectation of the Wilson loop can be expressed as

$$\begin{align}
\braket{ W(C) }  & \approx \exp\left(-iV(R)T\right)
\end{align}$$

here $\displaystyle{V(R)=-C_{2}(F) \frac{g^{2}}{4\pi R}}$, where $\displaystyle{C_{2}(F)}$ is the eigenvalue of the Casimir operator of the gauge group in the fundamental representation. 

## solution

similar as the case of Maxwell theory, we have

$$\begin{align}
\braket{ W(C) }  & \simeq\exp\left(-ig^{2}C_{2}(F)\oint \mathrm{d}x^{\mu}\oint \mathrm{d}y^{\nu}D_{\mu \nu}(x-y)\right)
\end{align}$$

here $\displaystyle{C_{2}(F)=\text{Tr}(t^{a}t^{a})}$ is the 2nd order Casimir operator. and then

$$\begin{align}
\braket{ W(C) }  & \approx \exp\left(-iV(R)T\right) \\
V(R) & =C_{2}(F) \frac{g^{2}}{4\pi R}
\end{align}$$

