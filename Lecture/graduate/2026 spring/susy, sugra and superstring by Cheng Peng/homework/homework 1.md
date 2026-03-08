# Problem 1

consider a general Lagrangian system

$$\begin{align}
S & =\int \mathrm{d}^{d}x\mathcal{L}[x,\phi(x)]
\end{align}$$

suppose the Lagrangian is invariant under the following transformation

$$\begin{align}
\phi ^{a}\to \phi'^{a}& =\phi^{a}+\delta \phi^{a}
\end{align}$$

up to a surface term in the initial and final Cauchy surface.

1. prove that there is a conserved current (Noether theorem)
2. consider the correlator

$$\begin{align}
\braket{ \phi(x_{1})\phi(x_{2})\dots \phi(x_{n}) }  & =\frac{1}{Z}\int \mathcal{D}\phi \exp\left( i\int \mathrm{d}^{d}x\mathcal{L}[x,\phi(x)] \right) \phi(x_{1})\phi(x_{2})\dots \phi(x_{n})
\end{align}$$

derive the corresponding transformation of the correlator under the above transformation. (Ward identity)

## solution

the transformation can be written as a vector field in the configuration space

$$\begin{align}
X_{a} & =\int \mathrm{d}^{d}x\delta _{a} \phi(x) \frac{\delta}{\delta \phi(x)}
\end{align}$$

taking the variation of the action, we have

$$\begin{align}
\delta S & =\int \mathrm{d}^{d}x E\delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\tau _{\mu}\theta ^{\mu}
\end{align}$$

here $\displaystyle{\Sigma _{f}}$ and $\displaystyle{\Sigma _{i}}$ are the final and initial Cauchy surface, and $\displaystyle{\tau ^{\mu}}$ is the unit future-directed normal vector to the Cauchy surface. since the transformation is a symmetry, we have

$$\begin{align}
X_{a}\cdot \delta S & =\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\tau _{\mu}\alpha ^{\mu}_{a}
\end{align}$$

here we assume there is no classical anomaly. then we have the Noether current

$$\begin{align}
j_{a} ^{\mu} & =X_{a}\cdot \theta ^{\mu}-\alpha _{a} ^{\mu} \\
 & =\frac{\partial \mathcal{L}}{\partial \partial _{\mu}\phi}\delta _{a} \phi-\alpha _{a}^{\mu}
\end{align}$$

and the corresponding conserved charge

$$\begin{align}
H_{a} & =\int _{\Sigma} \mathrm{d}^{d-1}x\tau _{\mu}j_{a}^{\mu}
\end{align}$$

after quantization, the conserved charge generates the symmetry via the commutator

$$\begin{align}
\delta _{a}\phi & =i[H_{a},\phi]
\end{align}$$

the correlator becomes

$$\begin{align}
\braket{ \phi(x_{1})\dots \phi(x_{n}) }  & =\frac{1}{Z}\int \mathcal{D}\phi \phi(x_{1})\dots \phi(x_{n})e^{iS[\phi]} \\
 & =\frac{1}{Z}\int \mathcal{D}\phi'\phi'(x_{1})\dots \phi'(x_{n})e^{iS[\phi']} \\
 & =\frac{1}{Z}\int \mathcal{D}\phi\left[\phi(x_{1})\dots \phi(x_{n})+i\varepsilon _{a}[H_{a},\phi(x_{1})\dots \phi(x_{n})]\right]\left(1+i \int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\tau _{\mu}\varepsilon _{a}j_{a}^{\mu}\right)e^{iS[\phi]} \\
 \implies 0 & =\braket{ [H_{a},\phi(x_{1})\dots \phi(x_{n})] } + \int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\tau _{\mu}\varepsilon _{a}\braket{ j_{a}^{\mu}\phi(x_{1})\dots \phi(x_{n}) }
\end{align}$$

which is equivalent to the local version (the required form)

$$\begin{align}
\partial _{\mu}\braket{ j_{a}^{\mu}\phi(x_{1})\dots \phi(x_{n}) } & =-\sum _{j}\delta ^{(d)}(x-x_{j})\braket{ \phi(x_{1})\dots[H_{a},\phi _{j}(x_{j})],\phi _{n}(x_{n}) } 
\end{align}$$

