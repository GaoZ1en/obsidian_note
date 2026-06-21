---
title: Homework 3
date: 2026-04-07
summary: "Derives the invariant measure of SU(2) from the parametrized matrix A(\\vec{n},\\theta) and computes the associated Haar measure density."
---

# problem

starting from the following parametrized matrix of $\mathrm{SU}(2)$:

$$\begin{align}
A(\vec{n},\theta) = \cos \frac{\theta}{2} - i\vec{\sigma}\cdot \vec{n}\sin \frac{\theta}{2},
\end{align}$$

derive the invariant measure.

## solution

we write $\displaystyle{\vec{n}=(\sin \psi \cos \phi,\sin \psi \sin \phi,\cos \psi)}$, then

$$\begin{align}
A(\vec{n},\theta) & =\begin{pmatrix}
\cos \frac{\theta}{2}-i\cos \psi \sin \frac{\theta}{2} & -i\sin \psi e^{-i\phi}\sin \frac{\theta}{2}\\
-i\sin \psi e^{i\phi}\sin \frac{\theta}{2} & \cos \frac{\theta}{2}+i\cos \psi \sin \frac{\theta}{2}
\end{pmatrix} \\
\frac{\partial A}{\partial \theta} & =-\frac{1}{2}\begin{pmatrix}
\sin \frac{\theta}{2}+i\cos \psi \cos \frac{\theta}{2} & i\sin \psi e^{-i\phi}\cos \frac{\theta}{2} \\
i\sin \psi e^{i\phi}\cos \frac{\theta}{2} & \sin \frac{\theta}{2}-i\cos \psi \cos \frac{\theta}{2}
\end{pmatrix} \\
\frac{\partial A}{\partial \psi} & =\begin{pmatrix}
i\sin \psi \sin \frac{\theta}{2} & -i\cos \psi e^{-i\phi}\sin \frac{\theta}{2} \\
-i\cos \psi e^{i\phi}\sin \frac{\theta}{2} & -i\sin \psi \sin \frac{\theta}{2}
\end{pmatrix} \\
\frac{\partial A}{\partial \phi} & =\begin{pmatrix}
0 & -\sin \psi e^{-i\phi}\sin \frac{\theta}{2} \\
\sin \psi e^{i\phi}\sin \frac{\theta}{2} & 0
\end{pmatrix}
\end{align}$$

then

using $(\vec{a}\cdot \vec{\sigma})(\vec{b}\cdot \vec{\sigma}) = \vec{a}\cdot \vec{b} + i(\vec{a}\times \vec{b})\cdot \vec{\sigma}$, we have

$$\begin{align}
A^{-1} \mathrm{d}A =-i\vec{\sigma}\cdot \left[\frac{1}{2}\vec{n}\,\mathrm{d}\theta + \sin \frac{\theta}{2}\cos \frac{\theta}{2}\,\mathrm{d}\vec{n} - \sin ^2\frac{\theta}{2}(\vec{n}\times \mathrm{d}\vec{n})\right].
\end{align}$$

for

$$\begin{align}
\vec{n} & =(\sin \psi \cos \phi,\sin \psi \sin \phi,\cos \psi), \\
\partial_{\psi}\vec{n} & =(\cos \psi \cos \phi,\cos \psi \sin \phi,-\sin \psi), \\
\partial_{\phi}\vec{n} & =(-\sin \psi \sin \phi,\sin \psi \cos \phi,0), \\
\vec{n}\times \partial_{\psi}\vec{n} & =(-\sin \phi,\cos \phi,0), \\
\vec{n}\times \partial_{\phi}\vec{n} & =(-\sin \psi \cos \psi \cos \phi,-\sin \psi \cos \psi \sin \phi,\sin ^2\psi),
\end{align}$$

we get

$$\begin{align}
A^{-1} \frac{\partial A}{\partial \theta} & =-\frac{i}{2}\vec{\sigma}\cdot \vec{n}, \\
A^{-1} \frac{\partial A}{\partial \psi} & =-i\vec{\sigma}\cdot \left[\sin \frac{\theta}{2}\cos \frac{\theta}{2}\,\partial_{\psi}\vec{n} - \sin ^2\frac{\theta}{2}(\vec{n}\times \partial_{\psi}\vec{n})\right], \\
A^{-1} \frac{\partial A}{\partial \phi} & =-i\vec{\sigma}\cdot \left[\sin \frac{\theta}{2}\cos \frac{\theta}{2}\,\partial_{\phi}\vec{n} - \sin ^2\frac{\theta}{2}(\vec{n}\times \partial_{\phi}\vec{n})\right].
\end{align}$$

if we write $A^{-1}\mathrm{d}A=-i\sigma_i\omega_i=-2iJ_i\omega_i$, then

$$\begin{align}
\omega^{(\theta)} & =\frac{1}{2}\vec{n}, \\
\omega^{(\psi)} & =\sin \frac{\theta}{2}\cos \frac{\theta}{2}\,\partial_{\psi}\vec{n} - \sin ^2\frac{\theta}{2}(\vec{n}\times \partial_{\psi}\vec{n}), \\
\omega^{(\phi)} & =\sin \frac{\theta}{2}\cos \frac{\theta}{2}\,\partial_{\phi}\vec{n} - \sin ^2\frac{\theta}{2}(\vec{n}\times \partial_{\phi}\vec{n}).
\end{align}$$

hence

$$\begin{align}
\rho_A(\theta,\psi,\phi) & =\det \bigl(\omega^{(\theta)},\omega^{(\psi)},\omega^{(\phi)}\bigr) \\
 & =\frac{1}{2}\sin ^2\frac{\theta}{2}\sin \psi.
\end{align}$$

then the invariant measure is given by

$$\begin{align}
\mathrm{d}\mu & =\rho _{A}(\theta,\psi,\phi)\mathrm{d}\theta \mathrm{d}\psi \mathrm{d}\phi \\
 & =\frac{1}{2}\sin ^2\frac{\theta}{2}\sin \psi \,\mathrm{d}\theta \,\mathrm{d}\psi \,\mathrm{d}\phi.
\end{align}$$
