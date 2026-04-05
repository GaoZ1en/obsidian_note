## introduction

the well known example of AdS/CFT correspondence is the duality between $\displaystyle{\mathcal{N}=4}$ SYM with gauge group $\displaystyle{SU(N)}$ and type IIB strings on $\displaystyle{\mathrm{AdS}_{5}\times S^{5}}$. in order to construct other type IIB dual CFTs, one may place the D3 branes at appropriate conical singularities. then the background dual to the CFT on the D3-branes is $\displaystyle{\mathrm{AdS}_{5}\times X_{5}}$, where $\displaystyle{X_{5}}$ is the Einstein manifold which is the base of the cone. the metric of a 6-dimensional cone $\displaystyle{Y_{6}}$ takes the form

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2}_{\mathrm{cone}} & =\mathrm{d}r^{2}+r^{2}\mathrm{d}s_{5}^{2}
\end{align}
$$

here $\displaystyle{Y_{6}}$ is a cone over $\displaystyle{X_{5}}$, and $\displaystyle{\mathrm{d}s^{2}_{5}}$ is a metric on $\displaystyle{X_{5}}$. if a large number $\displaystyle{N}$ of D3-branes is placed at $\displaystyle{r=0}$, the apex of the cone, then the resulting geometry has the metric

$$\tag{1.2}
\begin{align}
\mathrm{d}s^{2} & =H^{-1/2}(-\mathrm{d}t^{2}+\mathrm{d}x_{1}^{2}+\mathrm{d}x_{2}^{2}+\mathrm{d}x_{3}^{2})+H^{1/2}\mathrm{d}s^{2}_{\text{cone}}
\end{align}
$$

where

$$\tag{1.3}
\begin{align}
H & =1+\frac{L^{4}}{r^{4}},\quad L^{4}\sim g_{\mathrm{st}}N(\alpha')^{2}
\end{align}
$$

in the near-horizon limit $\displaystyle{r\to0}$ the constant term in $\displaystyle{H}$ can be neglected, and the geometry becomes $\mathrm{AdS}_{5}\times X_{5}$, where $\displaystyle{X_{5}}$ is the base of the cone. type IIB string theory in this background is then conjectured to be dual to the infrared limit of the field theory on the stack of D3-branes.

---

see the following paper for more details and examples:
1. 9807080
2. 9810201
3. 9802183
4. 9803015

---

in this note we will discuss some details of the vacuum states of these CFT's in which some of the gauge symmetry is broken by expectation values of scalar fields. in the string side, such vacua arise either by moving the D3-branes away from the conical singularity or from each other, or from the dynamics of the manifold $\displaystyle{Y_{6}}$, whose singularity might be either resolved or deformed.

## the mass spectrum and operator dimensions

### two theories from the same Lagrangian

the AdS/CFT correspondence gives the following relation between the mass $\displaystyle{m}$ of a scalar in $\mathrm{AdS}_{d+1}$ and the dimension $\displaystyle{\Delta}$ of the corresponding operator $\displaystyle{\mathcal{O}}$,

$$\tag{2.1}
\begin{align}
\Delta(\Delta-d)=m^{2}
\end{align}
$$

there are two solutions

$$\tag{2.2}
\begin{align}
\Delta _{\pm} & =\frac{d}{2}\pm \sqrt{ \frac{d^{2}}{4}+m^{2} }
\end{align}
$$

it is often assumed that only the positive solution $\displaystyle{\Delta _{+}}$ is physical, this would imply that dimensions of scalar operators are bounded from below by $\displaystyle{\frac{d}{2}}$, which is more stringent than the unitary bound $\displaystyle{\frac{d-2}{2}}$. however, in the context of AdS/CFT, there are many examples of scalar operators with dimensions below $\displaystyle{\frac{d}{2}}$. therefore, if AdS/CFT is correct, the negative solution $\displaystyle{\Delta _{-}}$ must also be physical in some situation. Breitenlohner and Freedman showed that for $\displaystyle{m^{2}> -\frac{d^{2}}{4}+1}$ there is a unique admissible boundary condition for such a field that is invariant under the symmetries of AdS space, leading to a unique AdS-invariant quantization. for $\displaystyle{-\frac{d^{2}}{4}<m^{2}<-\frac{d^{2}}{4}+1}$, there are two possible quantizations. we will dive into the details then.

the $\mathrm{AdS}_{d+1}$ metric is written as

$$\tag{2.3}
\begin{align}
\mathrm{d}s^{2}=\frac{1}{z^{2}}\left( \mathrm{d}z^{2}+\sum ^{d}_{i=1}(\mathrm{d}x^{i})^{2} \right)
\end{align}
$$

here we set $\displaystyle{L=1}$. the action in Euclidean space is

$$\tag{2.4}
\begin{align}
\frac{1}{2}\int \mathrm{d}^{d+1}x\sqrt{ -g }(g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi+m^{2}\phi ^{2}) & =\frac{1}{2}\int \mathrm{d}^{d}x\mathrm{d}z z^{-d+1}\left((\partial _{z}\phi)^{2}+(\partial _{i}\phi)^{2}+\frac{m^{2}}{z^{2}}\phi ^{2}\right)
\end{align}
$$

solutions of classical eom of this action behave near $\displaystyle{z=0}$ as

$$\tag{2.5}
\begin{align}
\phi(z,\vec{x}) & \sim z^{\Delta}(A(\vec{x})+\mathcal{O}(z^{2}))
\end{align}
$$

where $\displaystyle{\Delta}$ can be either $\displaystyle{\Delta _{+}}$ or $\displaystyle{\Delta _{-}}$. it is natural to pick a particular root, and require that $\displaystyle{\phi}$ behave as in (2.5) near the boundary. with this asymptotic condition

$$\tag{2.6}
\begin{align}
S & \propto \int \mathrm{d}z z^{2\Delta-d-1}\propto \lim_{ z \to 0 } z^{2\Delta-d}
\end{align}
$$

so the action is finite only $\displaystyle{\Delta> \frac{d}{2}}$. but this bound can be relaxed by adding appropriete boundary terms to the action. for example, we make a integration by parts and write the action as

$$\tag{2.7}
\begin{align}
\frac{1}{2}\int \mathrm{d}^{d+1}x\sqrt{ -g }\phi(-\nabla ^{2}+m^{2})\phi \propto \int \mathrm{d}z z^{2\Delta-d} \propto \lim_{ z \to 0 } z^{2\Delta-d+1}
\end{align}
$$

the bound is relaxed to $\displaystyle{\Delta> \frac{d-2}{2}}$. this is precisely the unitary bound on the dimension of a scalar operator in $\displaystyle{d}$ dimensions, so in particular we cannot expect by any further device to get even smaller $\displaystyle{\Delta}$'s. in the mass range $\displaystyle{-\frac{d^{2}}{4}<m^{2}<-\frac{d^{2}}{4}+1}$, both $\displaystyle{\Delta _{\pm}}$ can be accepted, while in $\displaystyle{m^{2}> -\frac{d^{2}}{4}+1}$, only $\displaystyle{\Delta _{+}}$ can be accepted. 

there are two different AdS-invariant quantizations of the scalar field with $\displaystyle{-\frac{d^{2}}{4}<m^{2}<-\frac{d^{2}}{4}+1}$, giving rise to two different quantum field theories in AdS space, depending on the boundary condition. these two different qfts will correspond to two different CFTs, one with an operator of dimension $\displaystyle{\Delta _{+}}$ and the other with $\displaystyle{\Delta _{-}}$. in many cases one is more readily studied than the other because one is supersymmetric and the other is not.

### correlation functions

our remaining goal will be to define the correlation functions from the AdS/CFT correspondence for both choices of the theory. in calculating correlation functions of vertex operators from the AdS/CFT correspondence, one problem is to reconstruct on-shell field in $\mathrm{AdS}_{d+1}$ from its boundary behavior. one requires

$$\tag{2.8}
\begin{align}
\phi(z,\vec{x})\to z^{d-\Delta}(\phi _{0}(\vec{x})+\mathcal{O}(z^{2}))+z^{\Delta}(A(\vec{x})+\mathcal{O}(z^{2}))
\end{align}
$$

where $\displaystyle{\phi _{0}(\vec{x})}$ is a prescribed source function and $\displaystyle{A(\vec{x})}$ describes a physical fluctuation that will be determined from the source by solving the classical equation. we begin with the usual case $\displaystyle{\Delta=\Delta _{+}}$

#### $\displaystyle{\Delta=\Delta _{+}}$

in this case the first term in $\displaystyle{(2.8)}$ dominates over the second near $\displaystyle{z=0}$. and the construction of $\displaystyle{\phi(z,\vec{x})}$ from $\displaystyle{\phi _{0}(\vec{x})}$ is accomplished with the bulk-to-boundary propagator

$$\tag{2.9}
\begin{align}
K_{\Delta}(z,\vec{x},\vec{x}') & =\pi ^{-d/2} \frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)} \frac{z^{\Delta}}{(z^{2}+(\vec{x}-\vec{x}')^{2})^{\Delta}}
\end{align}
$$

---

$$\tag{2.3}
\begin{align}
\mathrm{d}s^{2}=\frac{1}{z^{2}}\left( \mathrm{d}z^{2}+\sum ^{d}_{i=1}(\mathrm{d}x^{i})^{2} \right)
\end{align}
$$

here we will derive the bulk-to-boundary propagator. the equation of motion is that

$$\tag{2.10}
\begin{align}
\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi) & =m^{2}\phi \\
\implies z^{d+1}\partial _{\mu}\left(z^{-d-1}\partial ^{\mu}\phi\right) & =m^{2}\phi
\end{align}
$$

since the metric has the $\displaystyle{SO(d+1)}$ symmetry, we can write the solution as a function only of $\displaystyle{z}$ and make a rotation. 

$$\tag{2.11}
\begin{align}
K_{\Delta}(z,\vec{x},\vec{x}') & =c \frac{z^{\Delta}}{(z^{2}+(\vec{x}-\vec{x}')^{2})^{\Delta}}
\end{align}
$$

the constant is determined by the normalization condition

$$\tag{2.12}
\begin{align}
\int \mathrm{d}^{d}x' K_{\Delta}(z,\vec{x},\vec{x}')\phi _{0}(\vec{x}') & =\phi(z,\vec{x})\implies c=\pi ^{-d/2}\frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)}
\end{align}
$$

---

then

$$\tag{2.13}
\begin{align}
\phi(z,\vec{x}) & =\int \mathrm{d}^{d}x'K_{\Delta}(z,\vec{x},\vec{x}')\phi _{0}(\vec{x}') \\
A(\vec{x}) & =\pi ^{-d/2} \frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)}\int \mathrm{d}^{d}x' \frac{\phi _{0}(\vec{x}')}{|\vec{x}-\vec{x}'|^{2\Delta}}
\end{align}
$$

we may consider a localized source, i.e., $\displaystyle{\phi _{0}(\vec{x})=\delta ^{d}(\vec{x}-\vec{x}')}$, then

$$\tag{2.14}
\begin{align}
A(\vec{x}) & =\pi ^{-d/2} \frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)} \frac{1}{|\vec{x}-\vec{x}'|^{2\Delta}}
\end{align}
$$

we observed that $\displaystyle{A(\vec{x})}$ is just a 2-pt function $\displaystyle{\braket{ \mathcal{O}(\vec{x})\mathcal{O}(\vec{x}') }}$ up to a normalization factor. this suggest that $\displaystyle{A(\vec{x})}$ has the interpretation of the expectation value of the operator $\displaystyle{\mathcal{O}(\vec{x})}$ in the theory where another operator $\displaystyle{\mathcal{O}}$ is inserted at $\displaystyle{\vec{x}}$. we will see the precise relation is

$$\tag{2.15}
\begin{align}
A(\vec{x}) & =\frac{1}{2\Delta-d}\braket{ \mathcal{O}(\vec{x}) } 
\end{align}
$$

in order to calculate the on-shell action, it is convenient to introduce

$$\tag{2.16}
\begin{align}
\phi(z,\vec{x}) & =z^{d-\Delta}\chi(z,\vec{x})
\end{align}
$$

then the action becomes

$$\tag{2.17}
\begin{align}
I & =\frac{1}{2}\int\mathrm{d}^{d}\vec{x}\mathrm{d}z\sqrt{ -g }(g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi+m^{2}\phi ^{2}) \\
 & =\frac{1}{2}\int \mathrm{d}^{d}\vec{x}\mathrm{d}zz^{-d-1}(z^{2}\partial _{z}\phi \partial _{z}\phi+z^{2}\partial _{i}\phi \partial _{i}\phi+m^{2}\phi ^{2}) \\
 & =\frac{1}{2}\int \mathrm{d}^{d}\vec{x}\mathrm{d}zz^{d+1-2\Delta}\left((\partial _{z}\chi)^{2}+(\partial _{i}\chi)^{2}\right)+\mathcal{O}(z^{d+2-2\Delta})
\end{align}
$$

the integrand converges if $\displaystyle{\frac{d}{2}<\Delta< \frac{d}{2}+1}$. for $\displaystyle{\Delta\geqslant \frac{d+2}{2}}$, we need more boundary terms to make the action finite. by ibp

$$\tag{2.18}
\begin{align}
I & =-\lim_{ z \to 0 } \int \mathrm{d}^{d}xz^{d+1-2\Delta}\chi \partial _{z}\chi \\
 & =-\left( \Delta-\frac{d}{2} \right)\pi ^{-d/2} \frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)}\int \mathrm{d}^{d}\vec{x} \int \mathrm{d}^{d}\vec{x}'\frac{\phi _{0}(\vec{x})\phi _{0}(\vec{x}')}{|\vec{x}-\vec{x}'|^{2\Delta}} \\
 & =-\frac{1}{2}\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}\phi_{0}(k)\phi_{0}(-k)f_{+}(|k|)
\end{align}
$$

where

$$\tag{2.19}
\begin{align}
f_{+}(|k|) & =-2\nu\left(\frac{|k|}{2}\right)^{2\nu} \frac{\Gamma(1-\nu)}{\Gamma(1+\nu)},\quad \nu=\Delta-\frac{d}{2}
\end{align}
$$

the bulk-to-bulk propagator is defined as

$$\tag{2.20}
\begin{align}
G_{\Delta}(z,\vec{x};z',\vec{x}') & = \frac{\Gamma(\Delta)\Gamma\left( \Delta-\frac{d}{2}+\frac{1}{2} \right)}{(4\pi)^{(d+1)/2}\Gamma(2\Delta-d+1)}(2u^{-1})^{\Delta}{}_{2}F_{1}\left( \Delta,\Delta-\frac{d}{2}+\frac{1}{2};2\Delta-d+1;-2u^{-1} \right) \\
u & =\frac{(z-z')^{2}+(\vec{x}-\vec{x}')^{2}}{2zz'}
\end{align}
$$

---

in this part we will derive the bulk-to-bulk propagator. 

$$\tag{2.21}
\begin{align}
(\nabla ^{2}-m^{2})G_{\Delta}(z,\vec{x};z',\vec{x}') & = -\frac{\delta(z-z')\delta ^{d}(\vec{x}-\vec{x}')}{\sqrt{ -g }}
\end{align}
$$

...

---

and in the $\displaystyle{z\to 0}$ limit, we have

$$\tag{2.22}
\begin{align}
G_{\Delta}(z,\vec{x};z',\vec{x}')  & \to z^{\Delta} \frac{K_{\Delta}(\vec{x};z',\vec{x}')}{2\Delta-d}
\end{align}
$$

this relation holds to all loop orders. and has a beautiful diagrammatic interpretation.

![[Attachments/Pasted image 20250626091150.png]]

#### $\displaystyle{\Delta=\Delta _{-}}$

in this case, the story are similar to the previous one. actually are are related by a canonical transformation that interchanges the roles of $\displaystyle{\phi_{0}(\vec{x})}$ and $\displaystyle{A(\vec{x})}$. they are actually conjugate variables. if we make a Legendre transformation, we can write

$$\tag{2.23}
\begin{align}
\tilde{I}[A] & =-\frac{1}{2}\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}A(k)A(-k)f_{-}(|k|) \\
f(|k|) & =-\frac{(2\Delta-d)^{2}}{f_{+}(|k|)} \\
 & =2\nu\left( \frac{|k|}{2} \right)^{-2\nu} \frac{\Gamma(1+\nu)}{\Gamma(1-\nu)}
\end{align}
$$

transforming back to position space, we find the correlator

$$\tag{2.24}
\begin{align}
\braket{ \mathcal{O}(\vec{x})\mathcal{O}(\vec{x}') } & = \frac{(2\Delta _{-}-d)\Gamma(\Delta _{-})}{\pi ^{d/2}\Gamma(\Delta _{-}-d/2)} \frac{1}{|\vec{x}-\vec{x}'|^{2\Delta _{-}}}
\end{align}
$$

---
