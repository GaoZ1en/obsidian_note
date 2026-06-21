---
title: "homework 7"
date: 2026-04-20
summary: "Derivation of the closed-string mass-shell condition from the two zero-mode constraints."
---

# problem 1

for the closed string, the zero modes are

$$\begin{align}
\alpha _{0}^{\mu} & = \tilde{\alpha} _{0}^{\mu} = \sqrt{ \frac{\alpha'}{2} }\,p^{\mu},
\end{align}$$

and

$$\begin{align}
L_{0} & = \frac{1}{2}\alpha _{0}^{2}+N, &
\tilde{L}_{0} & = \frac{1}{2}\tilde{\alpha} _{0}^{2}+\tilde{N},
\end{align}$$

with the physical state conditions

$$\begin{align}
(L_{0}-1)|\phi\rangle & = 0, &
(\tilde{L}_{0}-1)|\phi\rangle & = 0.
\end{align}$$

derive the mass-shell condition.

## solution

from

$$\begin{align}
\alpha _{0}^{\mu} & = \tilde{\alpha} _{0}^{\mu} = \sqrt{ \frac{\alpha'}{2} }\,p^{\mu},
\end{align}$$

we immediately obtain

$$\begin{align}
\alpha _{0}^{2} & = \tilde{\alpha} _{0}^{2} = \frac{\alpha'}{2}p^{2}.
\end{align}$$

therefore

$$\begin{align}
L_{0} & = \frac{\alpha'}{4}p^{2}+N, &
\tilde{L}_{0} & = \frac{\alpha'}{4}p^{2}+\tilde{N}.
\end{align}$$

imposing the physical state conditions gives

$$\begin{align}
\left(\frac{\alpha'}{4}p^{2}+N-1\right)|\phi\rangle & = 0, \\
\left(\frac{\alpha'}{4}p^{2}+\tilde{N}-1\right)|\phi\rangle & = 0.
\end{align}$$

now use the definition of the spacetime mass,

$$\begin{align}
M^{2} & \equiv -p^{2}.
\end{align}$$

then the two equations become

$$\begin{align}
\left(-\frac{\alpha'}{4}M^{2}+N-1\right)|\phi\rangle & = 0, \\
\left(-\frac{\alpha'}{4}M^{2}+\tilde{N}-1\right)|\phi\rangle & = 0.
\end{align}$$

hence

$$\begin{align}
\alpha' M^{2} & = 4(N-1), \\
\alpha' M^{2} & = 4(\tilde{N}-1).
\end{align}$$

combining them, we obtain the closed-string mass-shell condition

$$\begin{align}
\alpha' M^{2} & = 4(N-1)=4(\tilde{N}-1).
\end{align}$$

as a byproduct, subtracting the two equations gives

$$\begin{align}
N & = \tilde{N},
\end{align}$$

which is the level-matching condition on physical states.
