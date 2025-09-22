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

let us consider the case when our momenta of interest $\displaystyle{p}$ are far below the cutoff $\displaystyle{|p|\ll \Lambda _{0}}$, and there must be a cutoff $\displaystyle{\Lambda}$ that, despite being smaller than $\displaystyle{\Lambda_{0}}$ it still satisfies $\displaystyle{|p|\ll \Lambda}$. with this in mind, we split our field into two components: the useless UV modes $\displaystyle{\phi ^{+}}$, that

$$\begin{align}
\tilde{\phi}^{+}(p) & =\begin{cases}
0 & |p|>\Lambda_{0} \\
\tilde{\phi}(p) & \Lambda< |p|<\Lambda_{0} \\
0 & |p|<\Lambda
\end{cases}
\end{align}$$

and useful IR modes $\displaystyle{\phi ^{-}}$, that

$$\begin{align}
\tilde{\phi}^{-}(p) & =\begin{cases}
0 & |p|>\Lambda \\
\tilde{\phi}(p) & |p|<\Lambda
\end{cases}
\end{align}$$

and also split the sources in the same way to get $\displaystyle{J^{\pm}}$, since $\displaystyle{\phi ^{+}}$ cannot appear in the external correlators we set $\displaystyle{J^{+}=0}$. the generating functional

$$\begin{align}
Z & =\int \mathcal{D}\phi ^{-}\mathcal{D}\phi ^{+}e^{-S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}]-\int J^{-}\phi ^{-}}
\end{align}$$

to do this we define the low-energy effective action as

$$\begin{align}
e^{-S_{\Lambda}[\phi ^{-}]} & =\int \mathcal{D}\phi ^{+}e^{-S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}]}
\end{align}$$

in momentum space

$$\begin{align}
S[\tilde{\phi}] & =\int \frac{\mathrm{d}^{D}\phi}{(2\pi)^{D}} \frac{1}{2}\tilde{\phi}(-p)(p^{2}+m_{0}^{2})\tilde{\phi}(p)+\frac{\lambda_{0}}{4!}\int \prod ^{4}_{i=1}\left( \frac{d^{D}p_{i}}{(2\pi)^{D}}\tilde{\phi}(p_{i}) \right)\delta ^{(D)}\left(\sum ^{4}_{i=1}p_{i}\right)
\end{align}$$

$$\begin{align}
S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}] & =S_{\mathrm{free}}[\phi ^{+}]+S_{\mathrm{free}}[\phi ^{-}]+S_{\mathrm{int}}[\phi ^{+},\phi ^{-}] \\
S_{\mathrm{free}}[\phi] & =\int \mathrm{d}^{D}x \frac{1}{2}\left((\nabla \phi)^{2}+m_{0}^{2}\phi ^{2}\right) \\
S_{\mathrm{int}}[\phi ^{+},\phi ^{-}] & =\int \mathrm{d}^{D}x \frac{\lambda_{0}}{4!}(\phi ^{+}+\phi ^{-})^{4}
\end{align}$$

$$\begin{align}
e^{-\Delta S_{\Lambda}(\phi ^{-})} & =\int \mathcal{D}\phi ^{+}e^{-S_{\mathrm{free}}[\phi ^{+}]-S_{\mathrm{int}}[\phi ^{+},\phi ^{-}]}
\end{align}$$

and after doing this path integral, we have the effective action

$$\begin{align}
S_{\Lambda}[\phi ^{-}] & =\int \mathrm{d}^{D}x\left(\frac{1}{2}Z'_{\phi}(\nabla \phi ^{-})^{2}+\frac{1}{2}m'^{2}(\phi ^{-})^{2}+\frac{\lambda'}{4!}(\phi ^{-})^{4}+\dots\right)
\end{align}$$

and rescale

$$\begin{align}
x\to x' & =\frac{\Lambda}{\Lambda_{0}}x \\
p\to p' & =\frac{\Lambda_{0}}{\Lambda}p \\
\phi'(x') & =\sqrt{ Z_{\phi} }\phi ^{-}(x) \\
Z_{\phi} & =\left( \frac{\Lambda_{0}}{\Lambda} \right)^{D-2}Z_{\phi}'
\end{align}$$

then the final action is

$$\begin{align}
S_{\Lambda}[\phi'] & =\int \mathrm{d}^{D}x'\left(\frac{1}{2}(\nabla'\phi')^{2}+\frac{1}{2}m^{2}(\Lambda)\phi'^{2}+\frac{\lambda _{4}(\Lambda)}{4!}\phi'^{4}+\dots\right)
\end{align}$$

this whole procedure is called the renormalization group. as a summarize

1. integrate out the high energy degrees of freedom
2. fix spacetime integral by rescaling the spacetime variables
3. fix the normalization of fields

renormalization group generates a flow in the space of theory, and two theory on the same flowline are actually the same theory

$$\begin{align}
Z(\Lambda_{0},g_{0,a}) & =Z(\Lambda,g_{a}(\Lambda))
\end{align}$$

# Callan-Symanzik equations

what we wrote above is the integral version of the RG flow, and we can also write differential equations that describe the same process. take a differential

$$\begin{align}
\Lambda\frac{\mathrm{d}Z(\Lambda,g_{a}(\Lambda))}{\mathrm{d}\Lambda} & =\left( \Lambda \frac{\partial}{\partial \Lambda}+\beta _{a} \frac{\partial}{\partial g_{a}} \right)Z(\Lambda,g_{a}(\Lambda))=0
\end{align}$$

where we substituted $\displaystyle{\beta _{a}=\Lambda \frac{\partial g_{a}}{\partial \Lambda}}$, called the $\displaystyle{\beta}$-function of the coupling $\displaystyle{g_{a}}$