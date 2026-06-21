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
P\psi(\vec{x})P & =\eta _{a}\gamma ^{0}\psi(-\vec{x}) \\
T\psi(t)T & =(-\gamma ^{1}\gamma ^{3})\psi(-t) \\
C\psi C & =-i(\bar{\psi}\gamma ^{0}\gamma ^{2})^{T}
\end{align}$$

and for $\displaystyle{\bar{\psi}}$

$$\begin{align}
P\bar{\psi}(\vec{x})P & =\eta _{a}^{*}\bar{\psi}(-\vec{x})\gamma ^{0} \\
T\bar{\psi}(t)T & =\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3}) \\
C\bar{\psi}C & =(-i\gamma ^{0}\gamma ^{2}\psi)^{T}
\end{align}$$

and for gamma matrices

$$\begin{align}
P\gamma ^{\mu}P & =(-)^{\mu}\gamma ^{\mu} \\
T\gamma ^{\mu}T & =(-)^{\mu}\gamma ^{\mu} \\
C\gamma ^{\mu}C & =-(\gamma ^{\mu})^{T}
\end{align}$$

here $\displaystyle{\eta _{a}}$ satisfies $\displaystyle{|\eta _{a}|^{2}=1}$

#### $\displaystyle{\bar{\psi}\psi}$

$$\begin{align}
P\bar{\psi}\psi P & =P\bar{\psi}PP\psi P \\
 & =|\eta _{a}|^{2}\bar{\psi}(-\vec{x})\gamma ^{0}\gamma ^{0}\psi \\
 & =\bar{\psi}\psi(-\vec{x})
\end{align}$$

$$\begin{align}
T\bar{\psi}\psi T & =-\bar{\psi}(-t)\gamma ^{1}\gamma ^{3}\gamma ^{1}\gamma ^{3}\psi(-t) \\
 & =\bar{\psi}(-t)\gamma ^{1}\gamma ^{1}\gamma ^{3}\gamma ^{3}\psi(-t) \\
 & =\bar{\psi}\psi(-t)
\end{align}$$

$$\begin{align}
C\bar{\psi}\psi C & =C\bar{\psi}C C\psi C
\end{align}$$

$$\begin{align}
\gamma ^{\mu}\gamma ^{\nu}+\gamma ^{\nu}\gamma ^{\mu} & =2g^{\mu \nu}
\end{align}$$

$$\begin{align}
P\psi(\vec{x})P & =\eta _{a}\gamma ^{0}\psi(-\vec{x}) & P\bar{\psi}(\vec{x})P & =\eta _{a}^{*}\bar{\psi}(-\vec{x})\gamma ^{0} \\
T\psi(t)T & =(-\gamma ^{1}\gamma ^{3})\psi(-t) & T\bar{\psi}(t)T & =\bar{\psi}(-t)(\gamma ^{1}\gamma ^{3}) \\
C\psi C & =i\gamma ^{2}\gamma ^{0}\bar{\psi}^{T} & C\bar{\psi}C & =-\psi ^{T}(i\gamma ^{2}\gamma ^{0})^{-1}
\end{align}$$

$$\begin{align}
C\psi ^{\dagger}C & =(C\psi C)^{^{\dagger}} \\
 & =i(\gamma ^{2}\psi ^{*})^{\dagger} \\
 & =i\psi ^{T}(\gamma ^{2})^{\dagger} \\
 & =i\psi ^{T}\gamma ^{2}
\end{align}$$

in the Dirac representation, the gamma matrices are given by

so we have

$$\begin{align}
\end{align}$$

|                      | $\displaystyle{\bar{\psi}\psi}$ | $\displaystyle{i\bar{\psi}\gamma ^{5}\psi}$ | $\displaystyle{\bar{\psi}\gamma ^{\mu}\psi}$ | $\displaystyle{\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi}$ | $\displaystyle{\bar{\psi}\sigma ^{\mu \nu}\psi}$ | $\displaystyle{\partial _{\mu}}$ |
| -------------------- | ------------------------------- | ------------------------------------------- | -------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------ | -------------------------------- |
| $\displaystyle{P}$   | $\displaystyle{+}$              | $\displaystyle{-}$                          | $\displaystyle{(-)^{\mu}}$                   | $\displaystyle{-(-)^{\mu}}$                             | $\displaystyle{(-)^{\mu}(-)^{\nu}}$              | $\displaystyle{(-)^{\mu}}$       |
| $\displaystyle{T}$   | $\displaystyle{+}$              | $\displaystyle{-}$                          | $\displaystyle{(-)^{\mu}}$                   | $\displaystyle{(-)^{\mu}}$                              | $\displaystyle{-(-)^{\mu}(-)^{\nu}}$             | $\displaystyle{-(-)^{\mu}}$      |
| $\displaystyle{C}$   | $\displaystyle{+}$              | $\displaystyle{+}$                          | $\displaystyle{-}$                           | $\displaystyle{+}$                                      | $\displaystyle{-}$                               | $\displaystyle{+}$               |
| $\displaystyle{CPT}$ | $\displaystyle{+}$              | $\displaystyle{+}$                          | $\displaystyle{-}$                           | $\displaystyle{-}$                                      | $\displaystyle{+}$                               | $\displaystyle{-}$               |
