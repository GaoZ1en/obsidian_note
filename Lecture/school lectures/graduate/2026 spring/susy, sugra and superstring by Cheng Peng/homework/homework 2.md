# problem 1

the Nambu-Goto action for a point particle is given by

$$\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -G_{\mu \nu}(X)\dot{X}^{\mu}\dot{X}^{\nu} }
\end{align}$$

- derive the eom with respect to $\displaystyle{X^{\mu}}$
- define the canonical momentum

$$\begin{align}
P_{\mu} & \equiv \frac{\delta S}{\delta \dot{X}^{\mu}}
\end{align}$$

prove that

$$\begin{align}
P^{\mu} & =m\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\tau}, &  \frac{\mathrm{d}P^{\mu}}{\mathrm{d}\tau} & =0
\end{align}$$

- verify the mass-shell condition

$$\begin{align}
P^{\mu}P_{\mu} & =-m^{2}
\end{align}$$

## solution

take a variation with respect to $X^{\mu}$, we have

$$\begin{align}
\delta S & =-m\int \mathrm{d}\tau \frac{-\delta G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}-2G_{\mu \nu}\dot{X}^{\mu}\delta \dot{X}^{\nu}}{2\sqrt{-G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}}} \\
 & =m\int \mathrm{d}\tau G_{\mu \nu}\left(\ddot{X}^{\mu}+\Gamma ^{\mu}_{~\rho \sigma} \dot{X}^{\rho}\dot{X}^{\sigma}\right)\delta X^{\nu}+(\text{total derivatives})
\end{align}$$

here we have set the affine parameter $\tau$ to be the proper time, so we have $G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}=-1$. and $\displaystyle{\Gamma ^{\mu}_{~\rho \sigma}=\frac{1}{2}G^{\mu \nu}\left(\partial _{\rho}G_{\nu \sigma}+\partial _{\sigma}G_{\rho \nu}-\partial _{\nu}G_{\rho \sigma}\right)}$ is the Christoffel symbol of target space. then the eom is given by

$$\begin{align}
\ddot{X}^{\mu}+\Gamma ^{\mu}_{~\rho \sigma} \dot{X}^{\rho} \dot{X}^{\sigma} & =0
\end{align}$$

the canonical momentum is given by

$$\begin{align}
P_{\mu} & =\frac{\delta S}{\delta \dot{X}^{\mu}} \\
 & =m\frac{G_{\mu \nu}\dot{X}^{\nu}}{\sqrt{-G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}}} \\
 \implies P^{\mu} & =m\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\tau}
\end{align}$$

then

$$\begin{align}
\frac{\mathrm{D}P^{\mu}}{\mathrm{d}\tau} & =m\left(\ddot{X}^{\mu}+\Gamma ^{\mu}_{~\rho \sigma}\dot{X}^{\rho}\dot{X}^{\sigma}\right) \\
 & =0
\end{align}$$

and finally

$$\begin{align}
P_{\mu}P^{\mu} & =m^{2} \frac{G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}}{-G_{\mu \nu}\dot{X}^{\mu}\dot{X}^{\nu}} \\
 & =-m^{2}
\end{align}$$

# problem 2

- write down the Polyakov action $\displaystyle{S^{\text{string}}_{\text{Pol}}[X,g]}$
- define the induced metric on the worldsheet

$$\begin{align}
h_{ab} & \equiv G_{\mu \nu}(X)\partial _{a}X^{\mu}\partial _{b}X^{\nu}
\end{align}$$

    write down the corresponding Nambu-Goto action $\displaystyle{S^{\text{string}}_{\text{NG}}[X]}$
- show that why the mass term $\displaystyle{m^{2}}$ appear in the point particle action but not in the string action.

## solution

we have the Polyakov action

$$\begin{align}
S^{\text{string}}_{\text{Pol}} & =-\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{ -\det g_{ab} } g^{ab}G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}
\end{align}$$

and the Nambu-Goto action

$$\begin{align}
S^{\text{string}}_{\text{NG}} & =-T\int \mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} } \\
h_{ab} & =G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}
\end{align}$$

assume there is a mass term in the string Polyakov action

$$\begin{align}
S' & =-\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{ -\det g_{ab} }(g^{ab}G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}+m^{2})
\end{align}$$

take a variation with respect to $g^{ab}$, we have

$$\begin{align}
\frac{\delta S'}{\delta g^{ab}} & \propto-\frac{1}{2}g_{ab}(g^{cd}G_{\mu \nu}\partial _{c}X^{\mu}\partial _{d}X^{\nu}+m^{2})+G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}=0
\end{align}$$

take a trace of the above equation, we have

$$\begin{align}
m^{2}=0
\end{align}$$

which force the mass term to vanish.
