# problem 1

suppose $\displaystyle{(M,g)}$ is a (pseudo-)Riemannian manifold. choose a set of local frames $\displaystyle{e_{i}}$ and coframes $\displaystyle{\theta ^{i}}$, that satisfy $\displaystyle{\theta ^{i}(e_{j})=\delta ^{i}_{~j}}$. the Levi-Civita connection is denoted by $\displaystyle{\nabla}$. given the definition of curvature

$$\begin{align}
\hat{R}^{l}_{~ijk} & =\braket{ \theta ^{\ell},(\nabla _{e_{i}}\nabla _{e_{j}}-\nabla _{e_{j}}\nabla _{e_{i}}-\nabla _{[e_{i},e_{j}]})e_{k} }
\end{align}$$

and define the connection coefficients $\displaystyle{\Gamma ^{k}_{~ij}}$ and the commutator coefficients $\displaystyle{C^{m}_{~ij}}$ by

$$\begin{align}
\nabla _{e_{i}}e_{j} & =\Gamma ^{m}_{~ij}e_{m} \\
[e_{i},e_{j}] & =C^{m}_{~ij}e_{m}
\end{align}$$

1. derive the curvature decomposition formula

$$\begin{align}
\hat{R}^{l}_{~ijk} & =e_{i}(\Gamma ^{l}_{~jk})-e_{j}(\Gamma ^{l}_{~ik})+\Gamma ^{m}_{~jk}\Gamma ^{l}_{~im}-\Gamma ^{m}_{~ik}\Gamma ^{l}_{~jm}-C^{m}_{~ij}\Gamma ^{l}_{~mk}
\end{align}$$

1. check that when the frames are coordinate frames, the formula reduces to the usual coordinate expression for the curvature coefficients.

*sol*.

1. by definition

$$\begin{align}
\hat{R}^{l}_{~ijk} & =\braket{ \theta ^{\ell},(\nabla _{e_{i}}\nabla _{e_{j}}-\nabla _{e_{j}}\nabla _{e_{i}}-\nabla _{[e_{i},e_{j}]})e_{k} } \\
 & = \braket{ \theta ^{l},\nabla _{e_{i}}(\Gamma ^{m}_{~jk}e_{m})-\nabla _{e_{j}}(\Gamma ^{m}_{~ik}e_{m})-\nabla _{C^{m}_{~ij}e_{m}}(e_{k}) }  \\
 & = \braket{ \theta ^{l}, e_{i}(\Gamma ^{m}_{~jk})e_{m}+\Gamma ^{m}_{~jk}\nabla _{e_{i}}(e_{m}) - e_{j}(\Gamma ^{m}_{~ik})e_{m}-\Gamma ^{m}_{~ik}\nabla _{e_{j}}(e_{m}) - C^{m}_{~ij}\nabla _{e_{m}}(e_{k}) } \\
 & = \braket{ \theta ^{l},e_{i}(\Gamma ^{m}_{~jk})e_{m}+\Gamma ^{m}_{~jk}\Gamma ^{n}_{~im}e_{n}-e_{j}(\Gamma ^{m}_{~ik})e_{m}-\Gamma ^{m}_{~ik}\Gamma ^{n}_{~jm}e_{n}-C^{m}_{~ij}\Gamma ^{n}_{~mk}e_{n} } \\
 & =(e_{i}(\Gamma ^{n}_{~jk})-e_{j}(\Gamma ^{n}_{~ik})+\Gamma ^{m}_{~jk}\Gamma ^{n}_{~im}-\Gamma ^{m}_{~ik}\Gamma ^{n}_{~jm}-C^{m}_{~ij}\Gamma ^{n}_{~mk})\braket{ \theta ^{l},e_{n} }  \\
 & = e_{i}(\Gamma ^{l}_{~jk})-e_{j}(\Gamma ^{l}_{~ik})+\Gamma ^{m}_{~jk}\Gamma ^{l}_{~im}-\Gamma ^{m}_{~ik}\Gamma ^{l}_{~jm}-C^{m}_{~ij}\Gamma ^{l}_{~mk}
\end{align}$$

1. for coordinate frames, we have $\displaystyle{[e_{i},e_{j}]=0}$, so $\displaystyle{C^{m}_{~ij}=0}$. also, $\displaystyle{e_{i}=\partial _{i}}$. thus the formula reduces to

$$\begin{align}
\hat{R}^{l}_{~ijk} & =\partial _{i}(\Gamma ^{l}_{~jk})-\partial _{j}(\Gamma ^{l}_{~ik})+\Gamma ^{m}_{~jk}\Gamma ^{l}_{~im}-\Gamma ^{m}_{~ik}\Gamma ^{l}_{~jm}
\end{align}$$

which is the usual coordinate expression for the curvature coefficients.

# problem 2

for cylinder and sphere in $\displaystyle{\mathbb{R}^{3}}$, compute the corresponding induced metric and extrinsic curvature.

*sol*.

1. cylinder. without loss of generality, consider a cylinder of radius $\displaystyle{R}$ and its axis along the $\displaystyle{z}$-axis. we can parameterize the cylinder as

$$\begin{align}
\Phi(\theta,z) & =(R\cos \theta,R\sin \theta,z)
\end{align}$$

the induced metric is then given by

$$\begin{align}
\mathrm{d}s^{2} & =R\mathrm{d}\theta ^{2}+\mathrm{d}z^{2}
\end{align}$$

to compute the extrinsic curvature, we calculate the unit normal vector. the tangent vectors are

$$\begin{align}
e_{\theta} & =\frac{\partial \Phi}{\partial \theta} =(-R\sin \theta,R\cos \theta,0) \\
e_{z} & =\frac{\partial \Phi}{\partial z} =(0,0,1)
\end{align}$$

the unit normal vector is

$$\begin{align}
n & = \frac{e_{\theta}\times e_{z}}{|e_{\theta}\times e_{z}|} \\
 & =(\cos \theta,\sin \theta,0)
\end{align}$$

the coefficients of the second fundamental form are $\displaystyle{h_{ij}= \braket{ n,\partial _{i}\partial _{j}\Phi }}$, which read

$$\begin{align}
h_{\theta \theta} & = n \cdot \partial _{\theta}\partial _{\theta}\Phi = -R(\cos ^{2}\theta +\sin ^{2}\theta ) = -R \\
h_{zz} & = n \cdot \partial _{z}\partial _{z}\Phi = 0 \\
h_{\theta z} & = 0
\end{align}$$

thus the extrinsic curvature tensor is $\displaystyle{h=-R\mathrm{d}\theta ^{2}}$.

1. sphere. without loss of generality, consider a sphere of radius $\displaystyle{R}$ at the origin. parameterize it as

$$\begin{align}
\Phi(\theta,\phi) & =(R\sin \theta \cos \phi,R\sin \theta \sin \phi,R\cos \theta)
\end{align}$$

the induced metric is

$$\begin{align}
\mathrm{d}s^{2} & =R^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2})
\end{align}$$

the tangent vectors are

$$\begin{align}
e_{\theta} & =(R\cos \theta \cos \phi,R\cos \theta \sin \phi,-R\sin \theta) \\
e_{\phi} & =(-R\sin \theta \sin \phi,R\sin \theta \cos \phi,0)
\end{align}$$

and the unit normal vector (outward) is

$$\begin{align}
n & =(\sin \theta \cos \phi,\sin \theta \sin \phi,\cos \theta) =\frac{1}{R}\Phi
\end{align}$$

the second fundamental form coefficients are

$$\begin{align}
h_{\theta \theta} & = n \cdot \partial _{\theta}\partial _{\theta}\Phi = -R \\
h_{\theta \phi} & =n\cdot \partial _{\theta}\partial _{\phi}\Phi=0 \\
h_{\phi \phi} & = n \cdot \partial _{\phi}\partial _{\phi}\Phi = -R\sin ^{2}\theta
\end{align}$$

thus the extrisic curvature is then

$$\begin{align}
h & =-R\mathrm{d}\theta ^{2}-R\sin ^{2}\theta \mathrm{d}\phi ^{2}
\end{align}$$
