# Appendix C: A Brief Review of the Bitensor Formalism

In this appendix we briefly review the bitensor structures used in Section 5.

## C.1 Embedding Coordinates and the Geodesic Distance

Euclidean AdS$_3$ can be realized as the hyperboloid

$$\begin{align}
-(X^{(0)})^{2}+(X^{(1)})^{2}+(X^{(2)})^{2}+(X^{(3)})^{2} & =-1
\end{align}$$

embedded in $\mathbb{R}^{1,3}$ with metric

$$\begin{align}
\mathrm{d}s^{2}_{\mathrm{embedding}} & =-(\mathrm{d}X^{(0)})^{2}+(\mathrm{d}X^{(1)})^{2}+(\mathrm{d}X^{(2)})^{2}+(\mathrm{d}X^{(3)})^{2}.
\end{align}$$

In global coordinates,

$$\begin{align}
X^{(0)} & =\sqrt{1+r^{2}}\cosh \tau, \\
X^{(1)} & =\sqrt{1+r^{2}}\sinh \tau, \\
X^{(2)} & =r\cos \phi, \\
X^{(3)} & =r\sin \phi,
\end{align}$$

which induces the Euclidean AdS$_3$ metric

$$\begin{align}
\mathrm{d}s^{2}_{E} & =(1+r^{2})\mathrm{d}\tau^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}.
\end{align}$$

The geodesic distance $\rho(x_{1},x_{2})$ between two points $x_{1}$ and $x_{2}$ is determined by

$$\begin{align}
\cosh \rho(x_{1},x_{2}) & =-X_{1}\cdot X_{2} \\
 & =X^{(0)}_{1}X^{(0)}_{2}-X^{(1)}_{1}X^{(1)}_{2}-X^{(2)}_{1}X^{(2)}_{2}-X^{(3)}_{1}X^{(3)}_{2} \\
 & =\sqrt{1+r_{1}^{2}}\sqrt{1+r_{2}^{2}}\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2}).
\end{align}$$

## C.2 Standard Geometric Bitensors

We first introduce the unit tangent vectors to the geodesic connecting $x_{1}$ and $x_{2}$,

$$\begin{align}
l^{\mu_{1}}(x_{1},x_{2}) & :=\nabla^{\mu_{1}}\rho(x_{1},x_{2}), \\
l^{\mu_{2}}(x_{1},x_{2}) & :=\nabla^{\mu_{2}}\rho(x_{1},x_{2}).
\end{align}$$

Here $\nabla^{\mu_{i}}$ denotes the covariant derivative with respect to the point $x_{i}$. These vectors satisfy

$$\begin{align}
l^{\mu_{1}}l_{\mu_{1}} & =1, & l^{\mu_{2}}l_{\mu_{2}} & =1,
\end{align}$$

and their covariant derivatives take the standard maximally symmetric form

$$\begin{align}
\nabla^{\mu_{1}}l^{\nu_{1}}(x_{1},x_{2}) & =\coth \rho\left(g^{\mu_{1}\nu_{1}}(x_{1})-l^{\mu_{1}}l^{\nu_{1}}\right), \\
\nabla^{\mu_{2}}l^{\nu_{2}}(x_{1},x_{2}) & =\coth \rho\left(g^{\mu_{2}\nu_{2}}(x_{2})-l^{\mu_{2}}l^{\nu_{2}}\right), \\
\nabla^{\mu_{1}}l^{\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{\sinh \rho}\left(\mathcal{P}^{\mu_{1},\mu_{2}}+l^{\mu_{1}}l^{\mu_{2}}\right), \\
\nabla^{\mu_{2}}l^{\mu_{1}}(x_{1},x_{2}) & =-\frac{1}{\sinh \rho}\left(\mathcal{P}^{\mu_{1},\mu_{2}}+l^{\mu_{1}}l^{\mu_{2}}\right).
\end{align}$$

The bitensor $\mathcal{P}^{\mu_{1},\mu_{2}}(x_{1},x_{2})$ is the parallel propagator from $x_{2}$ to $x_{1}$ along the unique geodesic connecting the two points. In particular,

$$\begin{align}
\mathcal{P}^{\mu_{1},\mu_{2}}(x_{1},x_{2})l_{\mu_{2}}(x_{1},x_{2}) & =-l^{\mu_{1}}(x_{1},x_{2}), \\
\mathcal{P}^{\mu_{1},\mu_{2}}(x_{1},x_{2})l_{\mu_{1}}(x_{1},x_{2}) & =-l^{\mu_{2}}(x_{1},x_{2}).
\end{align}$$

We also introduce the parity-odd bitensor

$$\begin{align}
\mathcal{Q}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & :=-\varepsilon^{\mu_{1}}{}_{\nu_{1}\rho_{1}}(x_{1})l^{\rho_{1}}(x_{1},x_{2})\mathcal{P}^{\nu_{1},\mu_{2}}(x_{1},x_{2}) \\
 & =-\varepsilon^{\mu_{2}}{}_{\nu_{2}\rho_{2}}(x_{2})l^{\rho_{2}}(x_{1},x_{2})\mathcal{P}^{\mu_{1},\nu_{2}}(x_{1},x_{2}).
\end{align}$$

By construction, $\mathcal{Q}^{\mu_{1},\mu_{2}}$ is orthogonal to the geodesic tangent vectors:

$$\begin{align}
\mathcal{Q}^{\mu_{1},\mu_{2}}l_{\mu_{1}} & =0, & \mathcal{Q}^{\mu_{1},\mu_{2}}l_{\mu_{2}} & =0.
\end{align}$$

## C.3 Bitensors Built from the Killing Fields

Using the Euclidean Killing vectors introduced in Section 5.1, we define

$$\begin{align}
g^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =2\xi_{1}^{\mu_{1}}(x_{1})\xi_{-1}^{\mu_{2}}(x_{2})+2\xi_{-1}^{\mu_{1}}(x_{1})\xi_{1}^{\mu_{2}}(x_{2})-4\xi_{0}^{\mu_{1}}(x_{1})\xi_{0}^{\mu_{2}}(x_{2}), \\
\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =2\bar{\xi}_{1}^{\mu_{1}}(x_{1})\bar{\xi}_{-1}^{\mu_{2}}(x_{2})+2\bar{\xi}_{-1}^{\mu_{1}}(x_{1})\bar{\xi}_{1}^{\mu_{2}}(x_{2})-4\bar{\xi}_{0}^{\mu_{1}}(x_{1})\bar{\xi}_{0}^{\mu_{2}}(x_{2}).
\end{align}$$

These two bitensors can be expanded in the standard basis introduced above as

$$\begin{align}
g^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =-l^{\mu_{1}}l^{\mu_{2}}+\cosh \rho\,\mathcal{P}^{\mu_{1},\mu_{2}}-i\sinh \rho\,\mathcal{Q}^{\mu_{1},\mu_{2}}, \\
\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =-l^{\mu_{1}}l^{\mu_{2}}+\cosh \rho\,\mathcal{P}^{\mu_{1},\mu_{2}}+i\sinh \rho\,\mathcal{Q}^{\mu_{1},\mu_{2}}.
\end{align}$$

In particular, they satisfy the contraction identities

$$\begin{align}
g^{\mu_{1},\mu_{2}}l_{\mu_{1}} & =-l^{\mu_{2}}, & g^{\mu_{1},\mu_{2}}l_{\mu_{2}} & =-l^{\mu_{1}}, \\
\bar{g}^{\mu_{1},\mu_{2}}l_{\mu_{1}} & =-l^{\mu_{2}}, & \bar{g}^{\mu_{1},\mu_{2}}l_{\mu_{2}} & =-l^{\mu_{1}}.
\end{align}$$

The differential identities used in the main text follow directly from

$$\begin{align}
\nabla_{\lambda}\xi_{a,\nu} & =i\varepsilon_{\lambda\nu\rho}\xi_{a}^{\rho}, \\
\nabla_{\lambda}\bar{\xi}_{a,\nu} & =-i\varepsilon_{\lambda\nu\rho}\bar{\xi}_{a}^{\rho},
\end{align}$$

namely,

$$\begin{align}
\nabla_{\lambda_{1}}g^{\mu_{1},\mu_{2}} & =i\varepsilon_{\lambda_{1}~~\rho_{1}}^{~~~\mu_{1}}g^{\rho_{1},\mu_{2}}, & \nabla_{\lambda_{2}}g^{\mu_{1},\mu_{2}} & =i\varepsilon_{\lambda_{2}~~\rho_{2}}^{~~~\mu_{2}}g^{\mu_{1},\rho_{2}}, \\
\nabla_{\lambda_{1}}\bar{g}^{\mu_{1},\mu_{2}} & =-i\varepsilon_{\lambda_{1}~~\rho_{1}}^{~~~\mu_{1}}\bar{g}^{\rho_{1},\mu_{2}}, & \nabla_{\lambda_{2}}\bar{g}^{\mu_{1},\mu_{2}} & =-i\varepsilon_{\lambda_{2}~~\rho_{2}}^{~~~\mu_{2}}\bar{g}^{\mu_{1},\rho_{2}}.
\end{align}$$

These are the geometric identities needed in Section 5.3 to rewrite the mode sums in a compact bitensor form.
