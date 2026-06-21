# problem 1

## Compton scattering $\displaystyle{e^{-}+\gamma\to e^{-}+\gamma}$

there are two tree level Feynman diagrams for Compton scattering:

![image](http://100.94.165.49:8080/i/eeb612cf-93cd-4b9d-ad79-4a17a5df9e77.png)

these two diagram corresponds to the matrix element

$$\begin{align}
i\mathcal{M}_{1} & = \bar{u}^{s}(\vec{p}')(-ie\gamma ^{\mu})\varepsilon _{\mu}^{\lambda'*}(\vec{k}')\frac{-i(p\!\!\!/+k\!\!\!/+m)}{(p+k)^{2}+m^{2}-i\epsilon}(-ie\gamma ^{\nu})\varepsilon _{\nu}^{\lambda}(\vec{k})u^{s}(\vec{p}) \\
 & = ie^{2}\bar{u}^{s'}(\vec{p}')\varepsilon _{\mu}^{\lambda*}(\vec{k}')\gamma ^{\mu}\frac{-i(p\!\!\!/+k\!\!\!/)+m}{(p+k)^{2}+m^{2}-i\epsilon}\gamma ^{\nu}\varepsilon _{\nu}^{\lambda}(\vec{k})u^{s}(\vec{p}) \\
i\mathcal{M}_{2} & = \bar{u}^{s'}(\vec{p}')(-ie\gamma ^{\nu})\varepsilon _{\nu}^{\lambda}(\vec{k})\frac{-i(p\!\!\!/-k\!\!\!/')+m}{(p-k')^{2}+m^{2}-i\epsilon}(-ie\gamma ^{\mu})\varepsilon _{\mu}^{\lambda'*}(\vec{k}')u^{s}(\vec{p}) \\
i\mathcal{M} & =ie^{2}\bar{u}^{s'}(\vec{p})\varepsilon ^{\lambda'*}_{\mu}(\vec{k}')\Gamma ^{\mu \nu}\varepsilon ^{\lambda}_{\nu}(\vec{k})u^{s}(\vec{p})
\end{align}$$

where

$$\begin{align}
\Gamma ^{\mu \nu} & =\gamma ^{\mu} \frac{-i(p\!\!\! /+k\!\!\! /)+m}{(p+k)^{2}+m^{2}}\gamma ^{\nu}+\gamma ^{\nu} \frac{-i(p\!\!\! /-k\!\!\! /')+m}{(p-k')^{2}+m^{2}}\gamma ^{\mu}
\end{align}$$

to calculate the cross section, we need to evaluate $\displaystyle{|\mathcal{\bar{M}}|^{2}=\frac{1}{4}\sum _{ss'\lambda \lambda'}|\mathcal{M}|^{2}}$

$$\begin{align}
\sum _{ss'\lambda \lambda'}|\mathcal{M}|^{2} & =e^{4}\mathrm{Tr}(\Gamma ^{\mu \nu}(-ip\!\!\! /+m)\bar{\Gamma} _{\mu \nu}(-i p\!\!\! /'+m))
\end{align}$$

where

$$\begin{align}
\bar{\Gamma}_{\mu \nu} & =\gamma ^{0}(\Gamma _{\mu \nu})^{\dagger}\gamma ^{0} \\
 & =\gamma _{\nu} \frac{i(p\!\!\! /+k\!\!\! /)+m}{(p+k)^{2}+m^{2}}\gamma _{\mu}+\gamma _{\mu} \frac{i(p\!\!\! /-k\!\!\! /')+m}{(p-k')^{2}+m^{2}}\gamma _{\nu} \\
\Gamma ^{\mu \nu} & =\gamma ^{\mu} \frac{-i(p\!\!\! /+k\!\!\! /)+m}{(p+k)^{2}+m^{2}}\gamma ^{\nu}+\gamma ^{\nu} \frac{-i(p\!\!\! /-k\!\!\! /')+m}{(p-k')^{2}+m^{2}}\gamma ^{\mu} \\
\end{align}$$

denote $\displaystyle{D_{1}=(p+k)^{2}+m^{2},D_{2}=(p-k')^{2}+m^{2}}$, then

$$\begin{align}
\mathrm{Tr}(\Gamma ^{\mu \nu}(-ip\!\!\! /+m)\bar{\Gamma}_{\mu \nu}(-ip\!\!\! /'+m)) & =\frac{1}{D_{1}^{2}}\mathrm{Tr}(\gamma ^{\mu}(-i(p\!\!\! /+k\!\!\! /)+m)\gamma ^{\nu}(-ip\!\!\! /+m)\gamma _{\nu}(i(p\!\!\! /+k\!\!\! /)+m)\gamma _{\mu}(-ip\!\!\! /'+m)) \\
 & +\frac{1}{D_{2}^{2}}\mathrm{Tr}(\gamma ^{\nu}(-i(p\!\!\! /-k\!\!\! /')+m)\gamma ^{\mu}(-ip\!\!\! /+m)\gamma _{\mu}(i(p\!\!\! /-k\!\!\! /')+m)\gamma _{\nu}(-ip\!\!\! /'+m)) \\
 & +\frac{1}{D_{1}D_{2}}\mathrm{Tr}(\gamma ^{\mu}(-i(p\!\!\! /+k\!\!\! /)+m)\gamma ^{\nu}(-ip\!\!\! /+m)\gamma _{\mu}(i(p\!\!\! /-k\!\!\! /')+m)\gamma _{\nu}(-ip\!\!\! /'+m)) \\
 & +\frac{1}{D_{1}D_{2}}\mathrm{Tr}(\gamma ^{\nu}(-i(p\!\!\! /-k\!\!\! /')+m)\gamma ^{\mu}(-ip\!\!\! /+m)\gamma _{\nu}(i(p\!\!\! /+k\!\!\! /)+m)\gamma _{\mu}(-ip\!\!\! /'+m)) \\
 & =\frac{T_{1}}{D^{2}_{1}}+\frac{T_{2}}{D^{2}_{2}}+\frac{T_{3}}{D_{1}D_{2}}+\frac{T_{4}}{D_{1}D_{2}}
\end{align}$$

notice that

$$\begin{align}
\gamma ^{\mu}\gamma _{\mu} & =4 \\
\gamma ^{\mu}\gamma _{\nu}\gamma _{\mu} & =-2\gamma _{\nu} \\
\gamma ^{\mu}\gamma ^{\nu}\gamma ^{\rho}\gamma _{\mu} & =4\eta ^{\nu \rho} \\
\gamma ^{\mu}\gamma ^{\nu}\gamma ^{\rho}\gamma ^{\sigma}\gamma _{\mu} & =-2\gamma ^{\sigma}\gamma ^{\rho}\gamma ^{\nu} \\
\mathrm{Tr}[p\!\!\! /q\!\!\! /] & = 4(p\cdot q) \\
\mathrm{Tr}[p\!\!\! /q\!\!\! /s\!\!\! /r\!\!\! /] & =4[(p\cdot q)(s\cdot r)-(p\cdot s)(q\cdot r)+(p\cdot r)(q\cdot s)]
\end{align}$$

then we have

$$\begin{align}
T_{1} & =-32(p\cdot k)(p'\cdot k)+32m^{2}(p'\cdot k)+128m^{2}(p\cdot k) \\
T_{2} & =T_{1}|_{k\to -k'} \\
 & = -32(p\cdot k')(p\cdot k) - 32m^2(p\cdot k) - 128m^2(p\cdot k') \\
T_{3} & = 16m^2 [ -m^2 - 3(p\cdot k) + (p\cdot k') ] \\
T_{4} & =T_{3}|_{k\to -k'} \\
 & = 16m^2 [ -m^2 + 3(p\cdot k') - (p\cdot k) ] \\
T_{3}+T_{4} & = 32m^{2} [ -m^{2} + 2(p\cdot k') - 2(p\cdot k) ]
\end{align}$$

thus we have

$$\begin{align}
\frac{1}{4}\sum _{ss'\lambda \lambda'}|\mathcal{M}|^{2} & =\frac{1}{4}e^{4}\mathrm{Tr}(\Gamma ^{\mu \nu}(-ip\!\!\! /+m)\bar{\Gamma} _{\mu \nu}(-i p\!\!\! /'+m)) \\
 & =\frac{1}{4}e^{4}\left( \frac{T_{1}}{D^{2}_{1}}+\frac{T_{2}}{D^{2}_{2}}+\frac{T_{3}+T_{4}}{D_{1}D_{2}}\right)
\end{align}$$

in the lab frame (the initial electron is at rest), we have

$$\begin{align}
p\cdot k & =-m\omega \\
p\cdot k' & =-m\omega' \\
p'\cdot k &= -m\omega + \omega \omega'(1-\cos \theta) \\
\frac{1}{\omega'}-\frac{1}{\omega} & =\frac{1}{m}(1-\cos \theta)
\end{align}$$

thus

$$\begin{align}
\frac{1}{4}\sum _{ss'\lambda \lambda'}|\mathcal{M}|^{2}=2e^4 \left[ \frac{\omega'}{\omega} + \frac{\omega}{\omega'} - \sin^2\theta \right]
\end{align}$$

and the differential cross section in the lab frame is

$$\begin{align}
\frac{\mathrm{d}\sigma}{\mathrm{d}\Omega} & = \frac{1}{64\pi^2 m^2} \left( \frac{\omega'}{\omega} \right)^2 \cdot 2e^4 \left[ \frac{\omega'}{\omega} + \frac{\omega}{\omega'} - \sin^2\theta \right] \\
 & =\frac{\alpha ^{2}}{2m^{2}}\left( \frac{\omega'}{\omega} \right)^{2}( \frac{\omega'}{\omega} + \frac{\omega}{\omega'} - \sin ^{2}\theta )
\end{align}$$

where $\alpha = \frac{e^2}{4\pi}$.

## Møller scattering $\displaystyle{e^{-}+e^{-}\to e^{-}+e^{-}}$

there are two tree level Feynman diagrams

![image](http://100.94.165.49:8080/i/a4fcf722-4579-4e78-aee7-155326928392.png)

the invariant amplitude is given by

$$\begin{align}
i\mathcal{M}_{1} & = \bar{u}^{s_{3}}(\vec{p}_{3})(-ie\gamma ^{\mu}) u^{s_{1}}(\vec{p}_{1}) -\frac{i\eta _{\mu \nu}}{(p_{1}-p_{3})^{2}} \bar{u}^{s_{4}}(\vec{p}_{4})(-ie\gamma ^{\nu})u^{s_{2}}(\vec{p}_{2}) \\
 & = \frac{ie^{2}}{(p_{1}-p_{3})^{2}} [ \bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1}) ] [ \bar{u}^{s_{4}}(\vec{p}_{4})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2}) ] \\
i\mathcal{M}_{2} & =\frac{ie^{2}}{(p_{1}-p_{4})^{2}}[\bar{u}^{s_{4}}(\vec{p}_{4})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{3}}(\vec{p}_{3})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})] \\
i\mathcal{M} & =i\mathcal{M}_{1}-i\mathcal{M}_{2} \\
 & =\frac{ie^{2}}{(p_{1}-p_{3})^{2}}[\bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{4}}(\vec{p}_{4})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})] - \frac{ie^{2}}{(p_{1}-p_{4})^{2}}[\bar{u}^{s_{4}}(\vec{p}_{4})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{3}}(\vec{p}_{3})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})]
\end{align}$$

introduce the Mandelstam variables:

$$\begin{align}
t & =-(p_{1}-p_{3})^{2} \\
u & =-(p_{1}-p_{4})^{2}
\end{align}$$

then

$$\begin{align}
|\mathcal{M}|^{2} & =\frac{e^{4}}{t^{2}} [\bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{4}}(\vec{p}_{4})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})][\bar{u}^{s_{1}}(\vec{p}_{1})\gamma ^{\nu}u^{s_{3}}(\vec{p}_{3})][\bar{u}^{s_{2}}(\vec{p}_{2})\gamma _{\nu}u^{s_{4}}(\vec{p}_{4})] \\
 & -\frac{e^{4}}{tu}[\bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{4}}(\vec{p}_{4})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})][\bar{u}^{s_{1}}(\vec{p}_{1})\gamma ^{\nu}u^{s_{4}}(\vec{p}_{4})][\bar{u}^{s_{2}}(\vec{p}_{2})\gamma _{\nu}u^{s_{3}}(\vec{p}_{3})] \\
 & -\frac{e^{4}}{ut}[\bar{u}^{s_{4}}(\vec{p}_{4})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{3}}(\vec{p}_{3})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})][\bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\nu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{2}}(\vec{p}_{2})\gamma _{\nu}u^{s_{4}}(\vec{p}_{4})] \\
 & +\frac{e^{4}}{u^{2}}[\bar{u}^{s_{4}}(\vec{p}_{4})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1})][\bar{u}^{s_{3}}(\vec{p}_{3})\gamma _{\mu}u^{s_{2}}(\vec{p}_{2})][\bar{u}^{s_{1}}(\vec{p}_{1})\gamma ^{\nu}u^{s_{4}}(\vec{p}_{4})][\bar{u}^{s_{2}}(\vec{p}_{2})\gamma _{\nu}u^{s_{3}}(\vec{p}_{3})]
\end{align}$$

average over initial spins and sum over final spins:

$$\begin{align}
\frac{1}{4}\sum _{s_{1}s_{2}s_{3}s_{4}}|\mathcal{M}|^{2} & =\frac{1}{4}\left( \frac{e^{4}}{t^{2}}A-\frac{e^{4}}{tu}(B+C)+\frac{e^{4}}{u^{2}}D \right) \\
A & =\mathrm{Tr}(\gamma ^{\mu}(-ip\!\!\! /_{1}+m)\gamma ^{\nu}(-ip\!\!\! /_{3}+m))\mathrm{Tr}(\gamma _{\mu}(-ip\!\!\! /_{2}+m)\gamma _{\nu}(-ip\!\!\! /_{4}+m)) \\
B & =\mathrm{Tr}(\gamma ^{\mu}(-ip\!\!\! /_{1}+m)\gamma ^{\nu}(-ip\!\!\! /_{3}+m)\gamma _{\mu}(-ip\!\!\! /_{2}+m)\gamma _{\nu}(-ip\!\!\! /_{4}+m)) \\
C & =B|_{3\leftrightarrow 4}, \quad D =A|_{3\leftrightarrow 4} \\
\end{align}$$

thus

$$\begin{align}
A & = 32 [ (p_1\cdot p_2)^{2} + (p_1\cdot p_4)^{2} ] - 64m^2(p_1\cdot p_3) + 64m^4 \\
D & = A|_{3\leftrightarrow 4} = 32 [ (p_1\cdot p_2)^{2} + (p_1\cdot p_3)^{2} ] - 64m^2(p_{1}\cdot p_{4})+ 64m^4 \\
B=C & = -32(p_1\cdot p_2)^{2} - 32m^2 [ p_1\cdot p_2 + p_1\cdot p_3 + p_1\cdot p_4] - 32m^4
\end{align}$$

## Bhabha scattering $\displaystyle{e^{+}+e^{-}\to e^{+}+e^{-}}$

there are two tree level Feynman diagrams

![image](http://100.94.165.49:8080/i/6e609847-2cfe-4009-be92-68edb3753284.png)

the invariant amplitudes are

$$\begin{align}
i\mathcal{M}_{1} & = \frac{ie^{2}}{(p_{1}-p_{3})^{2}} [ \bar{u}^{s_{3}}(\vec{p}_{3})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1}) ][ \bar{v}^{s_{2}}(\vec{p}_{2})\gamma _{\mu}v^{s_{4}}(\vec{p}_{4}) ] \\
i\mathcal{M}_{2} & = \frac{ie^{2}}{(p_{1}+p_{2})^{2}} [ \bar{u}^{s_{3}}(\vec{p}_{3})\gamma _{\mu}v^{s_{4}}(\vec{p}_{4}) ][ \bar{v}^{s_{2}}(\vec{p}_{2})\gamma ^{\mu}u^{s_{1}}(\vec{p}_{1}) ] \\
i\mathcal{M} & = i\mathcal{M}_{1} - i\mathcal{M}_{2}
\end{align}$$

## $\displaystyle{e^{+}+e^{-} \to \gamma +\gamma}$

there are two tree level Feynman diagrams

![image](http://100.94.165.49:8080/i/27ee72c8-92b4-4ecf-8eea-dd03bd0ba869.png)

the invariant amplitudes are

$$\begin{align}
i\mathcal{M}_{1} & = \bar{v}^{s_{2}}(\vec{p}_{2})(-ie\gamma ^{\mu})\varepsilon _{\mu}^{\lambda *}(\vec{k}_{1}) \frac{-i(p\!\!\! /_{1}-k\!\!\! /_{1})+m}{(p_{1}-k_{1})^{2}+m^{2}-i\epsilon}(-ie\gamma ^{\nu})\varepsilon _{\nu}^{\lambda'*}(\vec{k}_{2})u^{s_{1}}(\vec{p}_{1}) \\
 & = ie^{2}\bar{v}^{s_{2}}(\vec{p}_{2})\varepsilon _{\mu}^{\lambda *}(\vec{k}_{1})\gamma ^{\mu} \frac{-i(p\!\!\! /_{1}-k\!\!\! /_{1})+m}{(p_{1}-k_{1})^{2}+m^{2}-i\epsilon}\gamma ^{\nu}\varepsilon _{\nu}^{\lambda'*}(\vec{k}_{2})u^{s_{1}}(\vec{p}_{1}) \\
i\mathcal{M}_{2} & =ie^{2}\bar{v}^{s_{2}}(\vec{p}_{2})\varepsilon ^{\lambda'*}_{\nu}\gamma ^{\nu} \frac{-i(p\!\!\! /_{1}-k\!\!\! /_{2})+m}{(p_{1}-k_{2})^{2}+m^{2}-i\varepsilon}\gamma ^{\mu}\varepsilon _{\mu}^{\lambda *}(\vec{k}_{1})u^{s_{1}}(\vec{p}_{1}) \\
i\mathcal{M} & =i\mathcal{M}_{1}+i\mathcal{M}_{2} \\
 & =ie^{2}\varepsilon ^{\lambda*}_{\mu}(\vec{k}_{1})\varepsilon ^{\lambda'*}_{\nu}(\vec{k}_{2}) \bar{v}^{s_{2}}(\vec{p}_{2})\Gamma ^{\mu \nu}u^{s_{1}}(\vec{p}_{1}) \\
\Gamma ^{\mu \nu} & =\gamma ^{\mu} \frac{-i(p\!\!\! /_{1}-k\!\!\! /_{1})+m}{(p_{1}-k_{1})^{2}+m^{2}}\gamma ^{\nu}+\gamma ^{\nu} \frac{-i(p\!\!\! /_{1}-k\!\!\! /_{2})+m}{(p_{1}-k_{2})^{2}+m^{2}}\gamma ^{\mu}
\end{align}$$

then

$$\begin{align}
|\mathcal{M}|^{2} & =e^{4}\varepsilon ^{\lambda}_{\mu}(\vec{k}_{1})\varepsilon ^{\lambda'}_{\nu}(\vec{k}_{2})\varepsilon ^{\lambda*}_{\rho}(\vec{k}_{1})\varepsilon ^{\lambda'*}_{\sigma}(\vec{k}_{2}) \bar{v}^{s_{2}}(\vec{p}_{2})\Gamma ^{\mu \nu}u^{s_{1}}(\vec{p}_{1})\bar{u}^{s_{1}}(\vec{p}_{1})\bar{\Gamma} ^{\rho \sigma}v^{s_{2}}(\vec{p}_{2})
\end{align}$$

where

$$\begin{align}
\bar{\Gamma}_{\rho \sigma} & =\gamma ^{0}(\Gamma)^{\dagger}_{\rho \sigma}\gamma ^{0} \\
 & =\gamma _{\sigma} \frac{i(p\!\!\! /_{1}-k\!\!\! /_{1})+m}{(p_{1}-k_{1})^{2}+m^{2}}\gamma _{\rho}+\gamma _{\rho} \frac{i(p\!\!\! /_{1}-k\!\!\! /_{2})+m}{(p_{1}-k_{2})^{2}+m^{2}}\gamma _{\sigma}
\end{align}$$

average over initial spins and sum over final spins and polarizations:

$$\begin{align}
\frac{1}{4}\sum _{s_{1}s_{2}\lambda \lambda'} & = \frac{e^{4}}{4}\sum _{s_{1}s_{2}}\mathrm{Tr}(\Gamma ^{\mu \nu}u^{s_{1}}(\vec{p}_{1})\bar{u}^{s_{1}}(\vec{p}_{1})\bar{\Gamma}_{\mu \nu}v^{s_{2}}(\vec{p}_{2})\bar{v}^{s_{2}}(\vec{p}_{2})) \\
 & =\frac{e^{4}}{4}\mathrm{Tr}(\Gamma ^{\mu \nu}(-ip\!\!\! /_{1}+m)\bar{\Gamma} _{\mu \nu}(-ip\!\!\! /_{2}-m))
\end{align}$$

## $\displaystyle{e^{+}+e^{-}\to \mu ^{+}+\mu ^{-}}$

there is only one tree level Feynman diagram

![image](http://100.94.165.49:8080/i/07128dab-c793-4510-a4f6-aedbaab85556.png)

the invariant amplitude is given by

$$\begin{align}
i\mathcal{M} & =\bar{u}^{s_{3}}_{\mu}(\vec{p}_{3})(-ie\gamma ^{\mu})v^{s_{4}}_{\mu}(\vec{p}_{4}) \frac{-i\eta _{\mu \nu}}{(p_{1}+p_{2})^{2}} \bar{v}^{s_{2}}_{e}(\vec{p}_{2})(-ie\gamma ^{\nu})u^{s_{1}}_{e}(\vec{p}_{1}) \\
 & =\frac{ie^{2}}{(p_{1}+p_{2})^{2}} [ \bar{u}^{s_{3}}_{\mu}(\vec{p}_{3})\gamma ^{\mu}v^{s_{4}}_{\mu}(\vec{p}_{4}) ] [ \bar{v}^{s_{2}}_{e}(\vec{p}_{2})\gamma _{\mu}u^{s_{1}}_{e}(\vec{p}_{1}) ]
\end{align}$$

then

$$\begin{align}
|\mathcal{M}|^{2} & =\frac{e^{4}}{s^{2}} [\bar{u}^{s_{3}}_{\mu}(\vec{p}_{3})\gamma ^{\mu}v^{s_{4}}_{\mu}(\vec{p}_{4})][\bar{v}^{s_{2}}_{e}(\vec{p}_{2})\gamma _{\mu}u^{s_{1}}_{e}(\vec{p}_{1})][\bar{v}^{s_{4}}_{\mu}(\vec{p}_{4})\gamma ^{\nu}u^{s_{3}}_{\mu}(\vec{p}_{3})][\bar{u}^{s_{1}}_{e}(\vec{p}_{1})\gamma _{\nu}v^{s_{2}}_{e}(\vec{p}_{2})]
\end{align}$$

average over initial spins and sum over final spins:

$$\begin{align}
\frac{1}{4}\sum _{s_{1}s_{2}s_{3}s_{4}}|\mathcal{M}|^{2} & =\frac{e^{4}}{4s^{2}} \mathrm{Tr}(\gamma ^{\mu}(-ip\!\!\! /_{3}+m_{\mu})\gamma ^{\nu}(-ip\!\!\! /_{4}-m_{\mu}))\mathrm{Tr}(\gamma _{\mu}(-ip\!\!\! /_{2}-m_{e})\gamma _{\nu}(-ip\!\!\! /_{1}+m_{e})) \\
 & =\frac{8e^{4}}{s^{2}}((p_{1}\cdot p_{3})^{2}+(p_{1}\cdot p_{4})^{2}+m_{\mu}^{2}(p_{1}\cdot p_{2})+m_{e}^{2}(p_{3}\cdot p_{4})+2m_{\mu}^{2}m_{e}^{2}) \\
 & =\frac{2e^{4}}{s^{2}}\left( t^{2}+u^{2}+2(t+u-s)(m_{\mu}^{2}+m_{e}^{2})+2(m_{\mu}^{2}+m_{e}^{2})^{2}+16m_{\mu}^{2}m_{e}^{2} \right)
\end{align}$$

## appendix: formalism

in this file we will discuss some tree level scattering amplitudes in QED, and calculate the cross section. here we adopt the signature $\displaystyle{(-,+,+,+)}$, and use natural units $\displaystyle{\hbar=c=1}$. the Lagrangian of QED is given by

$$\begin{align}
\mathcal{L} & =-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{\mu}A^{\mu})^{2}-\bar{\psi}(\gamma ^{\mu}\partial _{\mu}+m)\psi+ie \bar{\psi}\gamma ^{\mu}\psi A_{\mu}
\end{align}$$

and we adopt the Feynman gauge $\displaystyle{\xi=1}$ to simplify the photon propagator. in the canonical formalism, the fields can be expanded as

$$\begin{align}
A_{\mu}(x) & =\int \frac{\mathrm{d}^{3}\vec{p}}{\sqrt{ (2\pi)^{3}2\omega _{\vec{p}} }}\sum _{\lambda=0}^{3} \left( a^{\lambda}_{\vec{p}}\epsilon ^{\lambda}_{\mu}(\vec{p})e^{-ip\cdot x}+a^{\lambda\dagger}_{\vec{p}}\epsilon ^{\lambda*}_{\mu}(\vec{p})e^{ip\cdot x} \right) \\
\psi(x) & =\int \frac{\mathrm{d}^{3}\vec{p}}{\sqrt{ (2\pi)^{3}2\omega _{\vec{p}} }}\sum _{s=1,2} \left( b^{s}_{\vec{p}}u^{s}(p)e^{-ip\cdot x}+c^{s\dagger}_{\vec{p}}v^{s}(p)e^{ip\cdot x} \right)
\end{align}$$

where the polarization vectors $\displaystyle{\varepsilon ^{\lambda}_{\mu}(\vec{p})}$ and spinors $\displaystyle{u^{s}(p),v^{s}(p)}$ satisfy

$$\begin{align}
\eta ^{\mu \nu}\varepsilon ^{\lambda}_{\mu}(\vec{p})\varepsilon ^{\lambda'*}_{\nu}(\vec{p}) & =\eta ^{\lambda \lambda'} \\
\eta_{\lambda \lambda'}\varepsilon ^{\lambda}_{\mu}(\vec{p})\varepsilon ^{\lambda'*}_{\nu}(\vec{p}) & =\eta _{\mu \nu}
\end{align}$$

and

$$\begin{align}
(i p\!\!\! /+m)u^{s}(p) & =0 \\
(-i p\!\!\! /+m)v^{s}(p) & =0 \\
\end{align}$$

with normalizations

$$\begin{align}
\bar{u}^{s}(p)u^{s'}(p) & =2m\delta ^{ss'} \\
\bar{v}^{s}(p)v^{s'}(p) & =-2m\delta ^{ss'}
\end{align}$$

and complete relations

$$\begin{align}
\sum _{s}u^{s}(p)\bar{u}^{s}(p) & =-i p\!\!\! / +m \\
\sum _{s}v^{s}(p)\bar{v}^{s}(p) & =-i p\!\!\! / -m
\end{align}$$

the canonical commutation and anti-commutation relations are

$$\begin{align}
\left[ a^{\lambda}_{\vec{p}},a^{\lambda'\dagger}_{\vec{p}'} \right] & =\eta ^{\lambda \lambda'}\delta ^{(3)}(\vec{p}-\vec{p}') \\
\left\{ b^{s}_{\vec{p}},b^{s'\dagger}_{\vec{p}'} \right\} & =\delta ^{ss'}\delta ^{(3)}(\vec{p}-\vec{p}') \\
\left\{ c^{s}_{\vec{p}},c^{s'\dagger}_{\vec{p}'} \right\} & =\delta ^{ss'}\delta ^{(3)}(\vec{p}-\vec{p}')
\end{align}$$

to get the scattering amplitudes and Feynman rules, we turn to the interaction picture and use the Dyson series expansion of the S-matrix.

$$\begin{align}
S & =T \exp \left( -i \int d^{4}x \mathcal{H}_{I}(x) \right) \\
 & =T \exp \left( i \int d^{4}x \mathcal{L}_{int}(x) \right) \\
 & =1 + \sum _{n=1}^{\infty} \frac{i^{n}}{n!} \int d^{4}x_{1}\cdots d^{4}x_{n} T \left( \mathcal{L}_{int}(x_{1})\cdots \mathcal{L}_{int}(x_{n}) \right)
\end{align}$$

where $\displaystyle{\mathcal{H}_{I} = -\mathcal{L}_{int} = -ie \bar{\psi}\gamma^{\mu}\psi A_{\mu}}$. then we can use Wick's theorem to evaluate the time-ordered products and get the Feynman rules for QED. for example, consider the scattering process $\displaystyle{e^{-}+\gamma\to e^{-}+\gamma}$ (Compton scattering) and the matrix element

$$\begin{align}
\braket{ e^{-}(p'),\gamma(k')|S|e^{-}(p),\gamma(k) } & = \braket{ 0 | a^{\lambda'}_{\vec{k}'} b^{s'}_{\vec{p}'} S b^{s\dagger}_{\vec{p}} a^{\lambda\dagger}_{\vec{k}} | 0 } \\
 & =\braket{ 0|a^{\lambda'}_{\vec{k}'}b^{s'}_{\vec{p}'}\left( 1+\sum ^{\infty}_{n=1} \frac{i^{n}}{n!}\int \mathrm{d}^{4}x_{1}\dots \mathrm{d}^{4}x_{n}T(\mathcal{L}_{\text{int}}(x_{1})\dots \mathcal{L}_{\text{int}}(x_{n})) \right)b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}}|0 }   \\
 & \approx \braket{ 0|a^{\lambda'}_{\vec{k}'}b^{s}_{\vec{p}'}b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}}|0 }+\braket{ 0|a^{\lambda'}_{\vec{k}'}b^{s'}_{\vec{p}'}\left( \frac{i^{2}}{2!}\int \mathrm{d}^{4}x_{1}\mathrm{d}^{4}x_{2}T(\mathcal{L}_{\text{int}}(x_{1})\mathcal{L}_{\text{int}}(x_{2})) \right)b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}}|0 }   \\
 & =\delta ^{(3)}(\vec{p}'-\vec{p})\delta ^{(3)}(\vec{k}'-\vec{k})\delta ^{s's}\delta ^{\lambda'\lambda} \\
 & + \frac{(-ie)^{2}}{2}\int \mathrm{d}^{4}x_{1}\mathrm{d}^{4}x_{2}\braket{ 0|a^{\lambda'}_{\vec{k}'}b^{s'}_{\vec{p}'}T(\bar{\psi}(x_{1})\gamma ^{\mu}\psi(x_{1})A_{\mu}(x_{1})\bar{\psi}(x_{2})\gamma ^{\nu}\psi(x_{2})A_{\nu}(x_{2}))b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}}|0 }
\end{align}$$

consider the second term which describes the non-trivial scattering process. use Wick theorem, we have one of the contraction patterns as following:

$$\begin{align}
 & \frac{(-ie)^{2}}{2}\int \mathrm{d}^{4}x_{1}\mathrm{d}^{4}x_{2}\braket{ 0|a^{\lambda'}_{\vec{k}'}b^{s'}_{\vec{p}'}T(\bar{\psi}(x_{1})\gamma ^{\mu}\psi(x_{1})A_{\mu}(x_{1})\bar{\psi}(x_{2})\gamma ^{\nu}\psi(x_{2})A_{\nu}(x_{2}))b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}}|0 } \\
= & \frac{(-ie)^{2}}{2}\int \mathrm{d}^{4}x_{1}\mathrm{d}^{4}x_{2}\braket{ 0|T(\bar{\psi}(x_{1})\gamma ^{\mu}\psi(x_{1})A_{\mu}(x_{1})\bar{\psi}(x_{2})\gamma ^{\nu}\psi(x_{2})A_{\nu}(x_{2})a^{\lambda'}_{\vec{k}'}b^{s'}_{\vec{p}'}b^{s\dagger}_{\vec{p}}a^{\lambda\dagger}_{\vec{k}})|0 } \\
= & (-ie)^{2}\int \mathrm{d}^{4}x_{1}\mathrm{d}^{4}x_{2}\bar{u}^{s'}(\vec{p}')e^{ip'\cdot x_{1}}\gamma ^{\mu}\varepsilon _{\mu}^{\lambda'*}(\vec{k}')e^{ik'\cdot x_{1}} S_{F}(x_{1}-x_{2})\gamma ^{\nu}\varepsilon _{\nu}^{\lambda}(\vec{k})e^{-ik\cdot x_{2}}u^{s}(\vec{p}) e^{-ip\cdot x_{2}} \\
= & (-ie)^{2}\int \frac{\mathrm{d}^{4}q}{(2\pi)^{4}}\bar{u}^{s'}(\vec{p}')\gamma ^{\mu}\varepsilon _{\mu}^{\lambda'*}(\vec{k}')\frac{-iq\!\!\! /+m}{q^{2}+m^{2}-i\epsilon}\gamma ^{\nu}\varepsilon _{\nu}^{\lambda}(\vec{k})u^{s}(\vec{p})\left( \int \mathrm{d}^{4}x_{1}e^{i(p'+k'-q)\cdot x_{1}} \right)\left( \int \mathrm{d}^{4}x_{2}e^{-i(p+k-q)\cdot x_{2}} \right) \\
= & (-ie)^{2}\int \frac{\mathrm{d}^{4}q}{(2\pi)^{4}}[\dots](2\pi)^{4}\delta ^{(4)}(p'+k'-q)(2\pi)^{4}\delta ^{(4)}(p+k-q)
\end{align}$$

thus we can summarize the calculation as following Feynman rules:

1. external lines:
	1. incoming fermion: $\displaystyle{u^{s}(\vec{p})}$
	1. outgoing fermion: $\displaystyle{\bar{u}^{s}(\vec{p})}$
	1. incoming antifermion: $\displaystyle{\bar{v}^{s}(\vec{p})}$
	1. outgoing antifermion: $\displaystyle{v^{s}(\vec{p})}$
	1. incoming photon: $\displaystyle{\varepsilon ^{\lambda}_{\mu}(\vec{p})}$
	1. outgoing photon: $\displaystyle{\varepsilon ^{\lambda*}_{\mu}(\vec{p})}$
1. propagators:
	1. fermion: $\displaystyle{\frac{-ip\!\!\!/+m}{p^{2}+m^{2}-i\epsilon}}$
	1. photon: $\displaystyle{\frac{-i\eta _{\mu \nu}}{k^{2}-i\epsilon}}$
	1. with a integral over internal momentum $\displaystyle{\int \frac{\mathrm{d}^{4}p}{(2\pi)^{4}}}$
1. vertex
	1. $\displaystyle{-ie(2\pi)^{4}\delta ^{(4)}\left( \sum p \right)\gamma ^{\mu}}$
1. loops
	1. include a factor of $\displaystyle{-1}$ for fermion loops

thus for each Feynman diagram, we can write down the corresponding matrix element $\displaystyle{i\mathcal{M}}$ (subtracting the overall $\displaystyle{(2\pi)^{4}\delta ^{(4)}\left( \sum p \right)}$) by following the above rules.

for 2 to 2 scattering processes, we want to calculate the differential cross section in the center of mass frame. the differential cross section is defined as:

$$\begin{align}
\mathrm{d}\sigma & =\frac{1}{F}\mathrm{d}W
\end{align}$$

where $F$ is the incident flux and $dW$ is the differential transition rate.

in the box normalization, the fields are normalized with $\displaystyle{\frac{1}{\sqrt{ 2EV }}}$. the S-matrix element relates to the invariant amplitude $\displaystyle{\mathcal{M}}$ by

$$\begin{align}
\braket{ f|S|i } & =(2\pi)^{4}\delta ^{(4)}(P_{f}-P_{i})i\mathcal{M}\prod _{j\in \{ i,f \}} \frac{1}{\sqrt{ 2E_{j}V }}
\end{align}$$

the transition probability per unit time (transition rate) is:

$$\begin{align}
\mathrm{d}W & =\frac{|\braket{ f|S|i } |^{2}}{T} \\
 & = \left[ (2\pi)^4 \delta^{(4)}(P_f - P_i) \right]^2 \frac{1}{T} |\mathcal{M}|^2 \left( \prod_{initial} \frac{1}{2E V} \right) \left( \prod_{final} \frac{1}{2E V} \mathrm{d}^3 n \right) \\
 & \approx V(2\pi)^{4}\delta ^{(4)}(P_{f}-P_{i}) |\mathcal{M}|^{2} \left( \frac{1}{2E_1 V 2E_2 V} \right) \left( \prod_{final} \frac{V \mathrm{d}^3 p}{(2\pi)^3 2E V} \right)
\end{align}$$

where we used $[(2\pi)^4\delta]^2 \approx VT (2\pi)^4\delta$ and replaced the final state density of states $\mathrm{d}^3 n = \frac{V \mathrm{d}^3 p}{(2\pi)^3}$.

the flux $\displaystyle{F}$ in the laboratory frame (collinear beams) is given by $\displaystyle{F=\frac{|\vec{v}_{1}-\vec{v}_{2}|}{V}}$. thus the differential cross section is:

$$\begin{align}
\mathrm{d}\sigma & = \frac{1}{|\vec{v}_{1}-\vec{v}_{2}|} \frac{1}{2E_1 2E_2} |\mathcal{M} |^{2} \mathrm{d}\Pi _{n}
\end{align}$$

where the Lorentz invariant phase space is $\mathrm{d}\Pi_{n} = (2\pi)^{4}\delta ^{(4)}\left( P_{f}-P_{i} \right)\prod _{j} \frac{\mathrm{d}^{3}\vec{p}_{j}}{(2\pi)^{3}2E_{j}}$. for 2 to 2 scattering, we choose the center of mass frame, and we have $\displaystyle{\vec{p}_{1}=-\vec{p}_{2}=\vec{p}_{i}, E_{\text{CoM}}=E_{1}+E_{2}}$.

the flux factor becomes:

$$\begin{align}
|\vec{v}_{1}-\vec{v}_{2}|2E_{1}2E_{2} & =|\vec{p}_{i}| \frac{E_{\text{CoM}}}{E_{1}E_{2}} 4E_{1}E_{2} \\
 & =4|\vec{p}_{i}|E_{\text{CoM}}
\end{align}$$

the 2-body phase space integral is evaluated as:

$$\begin{align}
\int \mathrm{d}\Pi_{2} & =\int \frac{\mathrm{d}^{3}p_{3}}{(2\pi)^{3}2E_{3}} \frac{\mathrm{d}^{3}p_{4}}{(2\pi)^{3}2E_{4}} (2\pi)^{4}\delta ^{(3)}(\vec{p}_{3}+\vec{p}_{4})\delta(E_{3}+E_{4}-E_{\text{cm}}) \\
 & =\int \frac{\mathrm{d}\Omega p_f^{2}\mathrm{d}p_f}{(2\pi)^{2}4E_{3}E_{4}}\delta(\sqrt{ p_f^{2}+m_{3}^{2} }+\sqrt{ p_f^{2}+m_{4}^{2} }-E_{\text{cm}}) \\
 & = \frac{1}{16\pi^2} \int \mathrm{d}\Omega \frac{p_f^2}{E_3 E_4} \frac{1}{\frac{p_f}{E_3} + \frac{p_f}{E_4}} \\
 & =\frac{|\vec{p}_{f}|}{16\pi ^{2}E_{\text{cm}}}\int \mathrm{d}\Omega
\end{align}$$

finally, the differential cross section in the center of mass frame is:

$$\begin{align}
\frac{\mathrm{d}\sigma}{\mathrm{d}\Omega} & =\frac{1}{4|\vec{p}_{i}|E_{\text{cm}}}|\mathcal{M}|^{2}\frac{|\vec{p}_{f}|}{16\pi ^{2}E_{\text{cm}}} \\
 & =\frac{1}{64\pi ^{2}E_{\text{cm}}^{2}}\frac{|\vec{p}_{f}|}{|\vec{p}_{i}|}|\mathcal{M}|^{2}
\end{align}$$

if we cannot detect the spin or polarization of the initial and final particles, we need to average and sum over these degrees of freedom. and if the initial particles are polarized, we should fix their spin states without averaging.

in the trace formalism, this is handled by introducing spin projection operators. the completeness relation

$$\begin{align}
\sum _{s}u^{s}(\vec{p})\bar{u}^{s}(\vec{p}) & =-ip\!\!\!/+m
\end{align}$$

is replaced by

$$\begin{align}
u^{s}(\vec{p}))\bar{u}^{s}(\vec{p}) & =(-ip\!\!\!/+m)\frac{1+\gamma _{5}s\!\!\! /}{2}
\end{align}$$

where $\displaystyle{s^{\mu}}$ is the spin vector satisfying $\displaystyle{s\cdot p=0}$ and $\displaystyle{s^{2}=1}$. for photons, we can use the completeness relation

$$\begin{align}
\eta _{\lambda \lambda'}\varepsilon ^{\lambda}_{\mu}(\vec{p})\varepsilon ^{\lambda'*}_{\nu}(\vec{p}) & =\eta _{\mu \nu}
\end{align}$$
