consider a single scalar in 4d with action

$$\begin{align}
S[\phi] & =\int \mathrm{d}^{D}x\left(-\frac{1}{2}\partial _{\mu}\phi \partial ^{\mu}\phi-\frac{1}{2}m^{2}\phi ^{2}-\frac{\lambda}{4!}\phi ^{4}\right)
\end{align}$$

first consider 2-point function. the connected 2-point function is given byddd

$$\begin{align}
G^{(2)}_{\mathrm{con}}(x_{1},x_{2}) & = \frac{\delta}{i\delta J(x_{1})} \frac{\delta}{i\delta J(x_{2})} iW[J]|_{J=0} \\
 & =\left( \frac{\delta}{i\delta \varphi(x_{1})} \frac{\delta}{i\delta \varphi(x_{2})}i\Gamma[\varphi]|_{\varphi=0}\right)^{-1}
\end{align}$$

at tree level we have

$$\begin{align}
\Gamma ^{(2)}_{\text{tree}}(p) & =-i(p^{2}+m^{2})
\end{align}$$

and total 1PI 2-point function is then given by

$$\begin{align}
\Gamma ^{(2)}(p) & =-i(p^{2}+m^{2})+\Gamma ^{(2)}_{\text{loops}}(p) \\
\implies G^{(2)}_{\text{con}}(x_{1},x_{2}) & =\frac{-i}{p^{2}+m^{2}+i\Gamma ^{(2)}_{\text{loops}}(p)}
\end{align}$$

at 1-loop

$$\begin{align}
\Gamma ^{(2)}_{\text{1-loop}} & =(\text{ tadpole diagram }) \\
 & =-\frac{\lambda}{2}\int \frac{\mathrm{d}^{D}k}{(2\pi)^{D}} \frac{1}{k^{2}+m^{2}-i\varepsilon} \\
 & =-\frac{i\lambda}{4} \int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}  \frac{1}{\sqrt{ \vec{k}^{2}+m^{2} }}
\end{align}$$

when $\displaystyle{d>2}$, the integration diverges, since the integrand has the following asymptotic behavior $\displaystyle{k^{d-2}}$. one way to handle this is cutoff UV degrees of freedom at some scale $\displaystyle{\Lambda _{0}}$, as

$$\begin{align}
\frac{i\lambda}{4}\int _{|k|<\Lambda_{0}} \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} \frac{1}{\sqrt{ \vec{k}^{2}+m^{2} }}
\end{align}$$

but the method here breaks the Lorentz invariance. Wick rotation fix this. define

$$\begin{align}
k _{D} & =-ik_{0}
x_{D}=\tau & =it
\end{align}$$

and cutoff $\displaystyle{|k _{\text{E}}|<\Lambda_{0}}$, where $\displaystyle{k _{\text{E}}}$ is the Euclidean momentum. as a summary, our procudeure is as follows

1. Wick rotate to Euclidean space
2. impose $\displaystyle{|k _{\mathrm{E}}|<\Lambda _{0}}$ to perform integrals
3. Wick rotate back to Minkowski spacetime

# integrating out UV modes

