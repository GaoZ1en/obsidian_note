# problem 1

show that under $\displaystyle{C,P,T}$ transformation, the Dirac bilinears transform as follows (here we adopt the signature $\displaystyle{(+,-,-,-)}$):

The five standard Dirac bilinears and their transformation properties:

|                      | $\displaystyle{\bar{\psi}\psi}$ | $\displaystyle{i\bar{\psi}\gamma ^{5}\psi}$ | $\displaystyle{\bar{\psi}\gamma ^{\mu}\psi}$ | $\displaystyle{\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi}$ | $\displaystyle{\bar{\psi}\sigma ^{\mu \nu}\psi}$ | $\displaystyle{\partial _{\mu}}$ |
| -------------------- | ------------------------------- | ------------------------------------------- | -------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------ | -------------------------------- |
| $\displaystyle{P}$   | $\displaystyle{+}$              | $\displaystyle{-}$                          | $\displaystyle{(-)^{\mu}}$                   | $\displaystyle{-(-)^{\mu}}$                             | $\displaystyle{(-)^{\mu}(-)^{\nu}}$              | $\displaystyle{(-)^{\mu}}$       |
| $\displaystyle{T}$   | $\displaystyle{+}$              | $\displaystyle{-}$                          | $\displaystyle{(-)^{\mu}}$                   | $\displaystyle{(-)^{\mu}}$                              | $\displaystyle{-(-)^{\mu}(-)^{\nu}}$             | $\displaystyle{-(-)^{\mu}}$      |
| $\displaystyle{C}$   | $\displaystyle{+}$              | $\displaystyle{+}$                          | $\displaystyle{-}$                           | $\displaystyle{+}$                                      | $\displaystyle{-}$                               | $\displaystyle{+}$               |
| $\displaystyle{CPT}$ | $\displaystyle{+}$              | $\displaystyle{+}$                          | $\displaystyle{-}$                           | $\displaystyle{-}$                                      | $\displaystyle{+}$                               | $\displaystyle{-}$               |

*sol*. we first present the $\displaystyle{C,P,T}$ transformations of Dirac spinor $\displaystyle{\psi}$

$$\begin{align}
P\psi(\vec{x})P & =\eta _{a}\gamma ^{0}\psi(-\vec{x}) & P\bar{\psi}(\vec{x})P & =\eta _{a}^{*}\bar{\psi}(-\vec{x})\gamma ^{0} \\
T\psi(t)T & =(-\gamma ^{1}\gamma ^{3})\psi(-t) & T\bar{\psi}(t)T & =\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3}) \\
C\psi C & =\mathcal{C}\bar{\psi}^{T} & C\bar{\psi}C & =-\psi ^{T}\mathcal{C}^{-1}
\end{align}$$

and for gamma matrices

$$\begin{align}
\mathcal{P}\gamma ^{\mu}\mathcal{P} & =(-)^{\mu}\gamma ^{\mu} \\
\mathcal{T}\gamma ^{\mu}\mathcal{T} & =-(\gamma ^{\mu})^{*} \\
\mathcal{C}\gamma ^{\mu}\mathcal{T} & =-(\gamma ^{\mu})^{T}
\end{align}$$

here $\displaystyle{\eta _{a}}$ satisfies $\displaystyle{|\eta _{a}|^{2}=1}$, $\displaystyle{\mathcal{C}=i\gamma ^{2}\gamma ^{0}}$ and $\displaystyle{(-)^{\mu}=\begin{cases}+1 & \mu =0 \\-1 & \mu =1,2,3\end{cases}}$

#### $\displaystyle{\bar{\psi}\psi}$

$$\begin{align}
P\bar{\psi}\psi P & =P\bar{\psi}PP\psi P \\
 & =|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\gamma ^{0}\psi \\
 & =\bar{\psi}\psi(-\vec{x}) \\
T\bar{\psi}\psi T & =-\bar{\psi}(-t)\gamma ^{1}\gamma ^{3}\gamma ^{1}\gamma ^{3}\psi(-t) \\
 & =\bar{\psi}(-t)\gamma ^{1}\gamma ^{1}\gamma ^{3}\gamma ^{3}\psi(-t) \\
 & =\bar{\psi}\psi(-t) \\
C\bar{\psi}\psi C & =C\bar{\psi}C C\psi C \\
 & =-\psi ^{T}\mathcal{C}^{-1}\mathcal{C}\bar{\psi}^{T}=(\bar{\psi}\psi)^{T} \\
 & =\bar{\psi}\psi
\end{align}$$

and

$$\begin{align}
(CPT)(\bar{\psi}\psi)(CPT)^{-1} & =\bar{\psi}\psi(-x)
\end{align}$$

#### $\displaystyle{\bar{\psi}\gamma ^{\mu}\psi}$

$$\begin{align}
P\bar{\psi}\gamma ^{\mu}\psi P & = P\bar{\psi}P\gamma ^{\mu}P\psi P \\
 & =|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\gamma ^{\mu}\gamma ^{0}\psi(-\vec{x}) \\
 & =(-)^{\mu}\bar{\psi}\gamma ^{\mu}\psi(-\vec{x}) \\
T\bar{\psi}\gamma ^{\mu}\psi T & =-\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3})\gamma ^{\mu}(\gamma ^{1}\gamma ^{3})\psi(-t) \\
 & =(-)^{\mu}\bar{\psi}\gamma ^{\mu}\psi(-t) \\
C\bar{\psi}\gamma ^{\mu}\psi C & =-\psi ^{T}\mathcal{C}^{-1}\gamma ^{\mu}\mathcal{C}\bar{\psi}^{T} \\
 & =\psi ^{T}(\gamma ^{\mu})^{T}\bar{\psi}^{T} \\
 & =-(\bar{\psi}\gamma ^{\mu}\psi)^{T}=-\bar{\psi}\gamma ^{\mu}\psi
\end{align}$$

and

$$\begin{align}
(CPT)(\bar{\psi}\gamma ^{\mu}\psi)(CPT)^{-1} & =-\bar{\psi}\gamma ^{\mu}\psi(-x)
\end{align}$$

#### $\displaystyle{\bar{\psi}\sigma ^{\mu \nu}\psi}$

$$\begin{align}
P\bar{\psi}\sigma ^{\mu \nu}\psi P & =|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\sigma ^{\mu \nu}\gamma ^{0}\psi(-\vec{x}) \\
 & =(-)^{\mu}(-)^{\nu}\bar{\psi}\sigma ^{\mu \nu}\psi(-\vec{x}) \\
T\bar{\psi}\sigma ^{\mu \nu}\psi T & = -\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3})\sigma ^{\mu \nu}(\gamma ^{1}\gamma ^{3})\psi(-t) \\
 & =-(-)^{\mu}(-)^{\nu}\bar{\psi}\sigma ^{\mu \nu}\psi(-t) \\
C\bar{\psi}\sigma ^{\mu \nu}\psi C & =-\psi ^{T}\mathcal{C}^{-1}\sigma ^{\mu \nu}\mathcal{C}\bar{\psi}^{T} \\
 & =\psi ^{T}(\sigma ^{\mu \nu})^{T}\bar{\psi}^{T} \\
 & =-(\bar{\psi}\sigma ^{\mu \nu}\psi)^{T}=-\bar{\psi}\sigma ^{\mu \nu}\psi
\end{align}$$

and

$$\begin{align}
(CPT)(\bar{\psi}\sigma ^{\mu \nu}\psi)(CPT)^{-1} & =\bar{\psi}\sigma ^{\mu \nu}\psi(-x)
\end{align}$$

#### $\displaystyle{i\bar{\psi}\gamma ^{5}\psi}$

$$\begin{align}
Pi\bar{\psi}\gamma ^{5}\psi P & =i|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\gamma ^{5}\gamma ^{0}\psi(-\vec{x}) \\
 & =-i\bar{\psi}\gamma ^{5}\psi(-\vec{x}) \\
Ti\bar{\psi}\gamma ^{5}\psi T & =i\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3})\gamma ^{5}(\gamma ^{1}\gamma ^{3})\psi(-t) \\
 & =-\bar{\psi}\gamma ^{5}\psi(-t) \\
Ci\bar{\psi}\gamma ^{5}\psi C & =-i\psi ^{T}\mathcal{C}^{-1}\gamma ^{5}\mathcal{C}\bar{\psi}^{T} \\
 & =-i\psi ^{T}(\gamma ^{5})^{T}\bar{\psi}^{T} \\
 & =(i\bar{\psi}\gamma ^{5}\psi)^{T} \\
 & =i\bar{\psi}\gamma ^{5}\psi
\end{align}$$

and

$$\begin{align}
(CPT)(i\bar{\psi}\gamma ^{5}\psi)(CPT)^{-1} & =i\bar{\psi}\gamma ^{5}\psi(-x)
\end{align}$$

#### $\displaystyle{\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi}$

$$\begin{align}
P\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi P & =|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\gamma ^{\mu}\gamma ^{5}\gamma ^{0}\psi(-\vec{x}) \\
 & =-(-)^{\mu}\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi(-\vec{x}) \\
T\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi T & =-\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3})\gamma ^{\mu}\gamma ^{5}(\gamma ^{1}\gamma ^{3})\psi(-t) \\
 & =(-)^{\mu}\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi(-t) \\
C\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi C & =-\psi ^{T}\mathcal{C}^{-1}\gamma ^{\mu}\gamma ^{5}\mathcal{C}\bar{\psi}^{T} \\
 & =\psi ^{T}(\gamma ^{\mu})^{T}(\gamma ^{5})^{T}\bar{\psi}^{T} \\
 & =(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi)^{T} \\
 & =\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi
\end{align}$$

and

$$\begin{align}
(CPT)(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi)(CPT)^{-1} & =-\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi(-x)
\end{align}$$
