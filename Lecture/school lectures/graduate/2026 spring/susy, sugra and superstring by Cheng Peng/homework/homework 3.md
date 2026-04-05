# problem 1

consider a infinitesimal reparameterization of the world sheet coordinates

$$\begin{align}
\tau ^{a}\to \tau'^{a}=\tau ^{a}+\varepsilon ^{a}(\tau)
\end{align}$$

- prove that under the infinitesimal reparameterization, we have

$$\begin{align}
\delta X^{\mu}(\tau) & =X'^{\mu}(\tau)-X^{\mu}(\tau) \\
 & =-\varepsilon ^{a}(\tau)\partial _{a}X^{\mu}(\tau)
\end{align}$$

- then the transformation of $\displaystyle{\partial _{a}X^{\mu}}$, and the induced metric $\displaystyle{h_{ab}}$
- prove that the volume element $\displaystyle{\mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} }}$ is invariant under reparameterization. 

## solution

we have

$$\begin{align}
\delta X^{\mu}(\tau) & =X'^{\mu}(\tau)-X^{\mu}(\tau) \\
 & =X'^{\mu}(\tau'-\varepsilon)-X^{\mu}(\tau) \\
 & =X'^{\mu}(\tau')-\varepsilon ^{a}\partial _{a}X'^{\mu}(\tau')-X^{\mu}(\tau) \\
 & =-\varepsilon ^{a}\partial _{a}X^{\mu}(\tau)
\end{align}$$

then

$$\begin{align}
\delta(\partial _{a}X^{\mu}(\tau)) & =\partial _{a}X'^{\mu}(\tau)-\partial _{a}X^{\mu}(\tau) \\
 & =\partial _{a}(X^{\mu}(\tau)-\varepsilon ^{b}\partial _{b}X^{\mu}(\tau))-\partial _{a}X^{\mu} \\
 & =-\partial _{a}\varepsilon ^{b}\partial _{b}X^{\mu}-\varepsilon ^{b}\partial _{a}\partial _{b}X^{\mu}
\end{align}$$

and

$$\begin{align}
\delta h_{ab} & =\eta _{\mu \nu}\delta(\partial _{a}X^{\mu})\partial _{b}X^{\nu}+\eta _{\mu \nu}\partial _{a}X^{\mu}\delta(\partial _{b}X^{\nu}) \\
 & =\varepsilon ^{c}\partial _{c}h_{ab}+h_{ac}\partial _{b}\varepsilon ^{c}+h_{cb}\partial _{a}\varepsilon ^{c}
\end{align}$$

then

$$\begin{align}
\delta \det h_{ab} & =\det h_{ab}h^{ab}\delta h_{ab} \\
 & =\det h_{ab}h^{ab}(\varepsilon ^{c}\partial _{c}h_{ab}+h_{ac}\partial _{b}\varepsilon ^{c}+h_{cb}\partial _{a}\varepsilon ^{c}) \\
 & =\varepsilon ^{c}\partial _{c}\det h_{ab}+2\det h_{ab}\partial _{a}\varepsilon ^{a} \\
\mathrm{d}^{2}\tau' & =\mathrm{d}^{2}\tau(1+\partial _{a}\varepsilon ^{a}) \\
\implies \delta(\mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} }) & =\mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} }(\frac{1}{2}\frac{\delta \det h_{ab}}{\det h_{ab}}+\partial _{a}\varepsilon ^{a}) \\
 & =0
\end{align}$$

# problem 2

derive the equation of motion for the string from the Nambu-Goto action

$$\begin{align}
S_{\text{NG}}[X] & =-T\int \mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} } \\
h_{ab} & =G _{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}
\end{align}$$

## solution

take a variation with respect to $\displaystyle{X^{\mu}}$, we have

$$\begin{align}
\delta S_{\text{NG}} & =-T\int \mathrm{d}^{2}\tau \frac{1}{2}\sqrt{ -\det h_{ab} }h^{ab}\delta h_{ab} \\
 & =-T\int \mathrm{d}^{2}\tau \sqrt{ -\det h_{ab} }h^{ab}\left( \frac{1}{2}\partial _{\rho}G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\delta X^{\rho}+G _{\mu \nu}\partial _{a}X^{\mu}\partial _{b}\delta X^{\nu} \right) \\
 & =T\int \mathrm{d}^{2}\tau \left[ \partial _{b}\left(\sqrt{ -\det h_{cd} }h^{ab}G_{\rho \nu}\partial _{a}X^{\nu}\right)-\frac{1}{2}\sqrt{ -\det h_{cd} }h^{ab}\partial _{\rho}G_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu} \right]\delta X^{\rho} \\
 & =T\int \mathrm{d}^{2}\tau \sqrt{ -\det h_{cd} }G_{\mu \nu}\left(\nabla ^{2}X^{\mu}+\Gamma ^{\mu}_{~\rho \sigma}\nabla _{a}X^{\rho}\nabla ^{a}X^{\sigma}\right)\delta X^{\nu}+(\text{total derivatives})
\end{align}$$

here $\displaystyle{\Gamma ^{\mu}_{~\nu \sigma}=\frac{1}{2}G^{\mu \rho}(\partial _{\nu}G_{\rho \sigma}+\partial _{\sigma}G_{\nu \rho}-\partial _{\rho}G_{\nu \sigma})}$ is the Christoffel symbol of target space, and $\displaystyle{\nabla}$ is the compatible covariant derivative with respect to $\displaystyle{h_{ab}}$. the eom for $\displaystyle{X^{\mu}}$ is then

$$\begin{align}
\nabla ^{2}X^{\mu}+\Gamma ^{\mu}_{~\rho \sigma}\nabla _{a}X^{\rho}\nabla ^{a}X^{\sigma} & =0
\end{align}$$

for flat target space, $\displaystyle{G_{\mu \nu}=\eta _{\mu \nu}\implies \Gamma^{\mu}_{~\rho \sigma}=0}$, then the eom becomes

$$\begin{align}
\partial _{b}\left(\sqrt{ -\det h_{cd} }h^{ab}\partial _{a}X^{\mu}\right) & =0
\end{align}$$

# problem 3

now consider static string with static gauge and static condition

$$\begin{align}
X^{0}=\tau ^{0}, \frac{\partial X^{i}}{\partial \tau ^{1}}=0, \frac{\partial X^{0}}{\partial \tau ^{1}}=0
\end{align}$$

then we have

$$\begin{align}
X^{i}=X^{i}(\tau ^{1})
\end{align}$$

- plug the static conditions into the eom obtained in problem 2
- find the general solution
- prove that the solution can be written as

$$\begin{align}
X^{i} & =a^{i}\tau ^{1}, \quad a^{i}=\text{const}
\end{align}$$

    up to a transittion and worldsheet scaling.
- using target space rotation, transform the solution to the standard form

$$\begin{align}
X^{1} & =a^{1}\tau ^{1}, \\
X^{i} & =0, \quad(i\neq 1)
\end{align}$$

## solution

first, we compute the induced metric $h_{ab}$ under the static gauge $X^{0}=\tau^{0}$ and $X^{i}=X^{i}(\tau^{1})$. the non-vanishing derivatives are

$$\begin{align}
\partial _{0}X^{0} & =1 \\
\partial _{1}X^{i} & =(X^{i})'
\end{align}$$

where the prime denotes the derivative with respect to $\tau^{1}$. assuming a flat target space metric $\eta_{\mu\nu}=\text{diag}(-1,1,\dots,1)$, the components of the induced metric are

$$\begin{align}
h_{00} & =-1, \quad h_{11} =\sum_{i}((X^{i})')^{2}\equiv |(X^{i})'|^{2} \\
h_{01} & =h_{10}=0
\end{align}$$

thus $\sqrt{ -\det h_{ab} }=|(X^{i})'|$, and the inverse metric components are $h^{00}=-1, h^{11}=1/|(X^{i})'|^{2}$.

from problem 2, the eom in flat target space is

$$\begin{align}
\partial _{b}\left(\sqrt{ -\det h_{ab} }h^{ab}\partial _{a}X^{\mu}\right) & =0
\end{align}$$

for $\mu=0$, the equation is trivially satisfied. for $\mu=i$, the equation becomes

$$\begin{align}
\partial _{1}\left(\sqrt{ -\det h_{ab} }h^{11}\partial _{1}X^{i}\right) & =0 \implies \partial _{1}\left(\frac{(X^{i})'}{|(X^{i})'|}\right) =0
\end{align}$$

this implies that the normalized tangent vector is a constant vector

$$\begin{align}
\frac{(X^{i})'}{|(X^{i})'|} & =n^{i}
\end{align}$$

where $n^{i}$ is a constant unit vector. this gives $(X^{i})'=n^{i}|(X^{i})'|$. by performing a worldsheet scaling (reparameterization of $\tau^{1}$), we can set the norm $|(X^{i})'|$ to be a constant magnitude $|a|$. then

$$\begin{align}
(X^{i})' & =n^{i}|a|\equiv a^{i}
\end{align}$$

upon integration and choosing the integration constant to be zero (which is equivalent to a target space translation), we obtain

$$\begin{align}
X^{i} & =a^{i}\tau ^{1}
\end{align}$$

where $a^{i}$ is a constant vector.

finally, since the target space has a spatial $SO(D-1)$ rotational symmetry, we can perform a global rotation to align the $X^{1}$ axis with the constant vector $a^{i}$. in this rotated frame, the solution takes the standard form

$$\begin{align}
X^{1} & =a^{1}\tau ^{1}, \\
X^{i} & =0, \quad(i\neq 1)
\end{align}$$

