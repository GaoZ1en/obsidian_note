# problem 1

suppose $\displaystyle{T}$ is an $\displaystyle{(r,s)}$-type tensor, which satisfies the following transformation law under $\displaystyle{x\mapsto x'}$

$$\begin{align}
T^{\mu_{1}'\dots \mu _{r}'}_{~~~~~~~~~~~~~\nu_{1}'\dots \nu _{s}'} & = \frac{\partial x^{\mu_{1}'}}{\partial x^{\mu_{1}}}\dots \frac{\partial x^{\mu _{r}'}}{\partial x^{\mu _{r}}} \frac{\partial x^{\nu_{1}}}{\partial x^{\nu_{1}'}}\dots \frac{\partial x^{\nu _{s}}}{\partial x^{\nu _{s}'}} T^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~~~\nu _{1}\dots \nu _{s}}
\end{align}$$

define a new quantity $\displaystyle{S}$ by contracting one upper index and one lower index of $\displaystyle{T}$

$$\begin{align}
S^{\mu_{2}\dots \mu _{r}}_{~~~~~~~~~~~~\nu _{2}\dots \nu _{s}} & =T^{\alpha \mu_{2}\dots \mu _{r}}_{~~~~~~~~~~~~~~~~\alpha \nu_{2}\dots \nu _{s}}
\end{align}$$

prove that $\displaystyle{S}$ satisfies the transformation law of $\displaystyle{(r-1,s-1)}$-type tensor, so $\displaystyle{S}$ is a tensor.

*sol*.

notice that under $\displaystyle{x\mapsto x'}$, 

$$\begin{align}
S^{\mu_{2}'\dots \mu _{r}'}_{~~~~~~~~~~~~\nu _{2}\dots \nu _{s}} & =T^{\alpha'\mu_{2}'\dots \mu _{r}'}_{~~~~~~~~~~~~~~~~\alpha' \nu _{2}'\dots \nu _{s}'} \\
 & =\frac{\partial x^{\alpha}}{\partial x^{\mu_{1}}} \frac{\partial x^{\mu_{2}'}}{\partial x^{\mu_{2}}}\dots \frac{\partial x^{\mu _{r}'}}{\partial x^{\mu _{r}}} \frac{\partial x^{\nu_{1}}}{\partial x^{\alpha}} \frac{\partial x^{\nu_{2}}}{\partial x^{\nu_{2}'}}\dots \frac{\partial x^{\nu _{s}}}{\partial x^{\nu _{s}'}} T^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~~~\nu _{1}\dots \nu _{s}} \\
 & =\delta ^{\nu_{1}}_{\mu_{1}}\frac{\partial x^{\mu_{2}'}}{\partial x^{\mu_{2}}}\dots \frac{\partial x^{\mu _{r}'}}{\partial x^{\mu _{r}}} \frac{\partial x^{\nu_{2}}}{\partial x^{\nu_{2}'}}\dots \frac{\partial x^{\nu _{s}}}{\partial x^{\nu _{s}'}} T^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~~~\nu _{1}\dots \nu _{s}} \\
 & =\frac{\partial x^{\mu_{2}'}}{\partial x^{\mu_{2}}}\dots \frac{\partial x^{\mu _{r}'}}{\partial x^{\mu _{r}}} \frac{\partial x^{\nu_{2}}}{\partial x^{\nu_{2}'}}\dots \frac{\partial x^{\nu _{s}}}{\partial x^{\nu _{s}'}} T^{\alpha \mu_{2}\dots \mu _{r}}_{~~~~~~~~~~~~~~~~~\alpha \mu_{2}\nu _{1}\dots \nu _{s}} \\
 & =\frac{\partial x^{\mu_{2}'}}{\partial x^{\mu_{2}}}\dots \frac{\partial x^{\mu _{r}'}}{\partial x^{\mu _{r}}} \frac{\partial x^{\nu_{2}}}{\partial x^{\nu_{2}'}}\dots \frac{\partial x^{\nu _{s}}}{\partial x^{\nu _{s}'}} S^{\mu_{2}\dots \mu _{r}}_{~~~~~~~~~~~~~\nu _{2}\dots \nu _{s}}
\end{align}$$

# problem 2

suppose $\displaystyle{A}$ is a contravariant vector, $\displaystyle{B}$ is an $\displaystyle{(1,1)}$-type tensor, and satisfies

$$\begin{align}
A^{\mu} & =B^{\mu}_{~\alpha}C^{\alpha}, & \forall p \in U
\end{align}$$

prove that if $\displaystyle{A,B\neq 0}$ and $\displaystyle{B}$ is inversible at every point in $\displaystyle{U}$, $\displaystyle{C}$ is a contravariant vector. 

*sol*. since $\displaystyle{B}$ is inversible, denote the inverse $\displaystyle{B^{\mu}_{~\alpha}}$ as $\displaystyle{D_{\mu}^{~\alpha}}$, which satisfies $\displaystyle{D_{\mu}^{~\beta}B^{\mu}_{\alpha}=\delta ^{\beta}_{\alpha}}$. then

$$\begin{align}
D_{\mu}^{~\beta}A^{\mu} & =D_{\mu}^{~\beta}B^{\mu}_{~\alpha}C^{\alpha} \\
 & =\delta ^{\beta}_{\alpha}C^{\alpha}=C^{\beta}
\end{align}$$

and under coordinate transformation $\displaystyle{x\mapsto x'}$

$$\begin{align}
C^{\beta'} & =D_{\mu'}^{~\beta'}A^{\mu'} \\
 & =\frac{\partial x^{\mu}}{\partial x^{\mu'}} \frac{\partial x^{\beta'}}{\partial x^{\beta}} \frac{\partial x^{\mu'}}{\partial x^{\nu}}D_{\mu}^{~\beta}A^{\nu} \\
 & =\frac{\partial x^{\beta'}}{\partial x^{\beta}} D_{\mu}^{~\beta}A^{\mu} \\
 & =\frac{\partial x^{\beta'}}{\partial x^{\beta}}C^{\beta}
\end{align}$$

so $\displaystyle{C}$ is a contravariant vector.

# problem 3

given a Levi-Civita connection $\displaystyle{\Gamma ^{\lambda}_{~\mu \nu}}$ on the manifold $\displaystyle{M}$. consider two points $\displaystyle{P}$ and $\displaystyle{Q=P+\mathrm{d}x}$. given the parallel transport formula of a contravariant vector $\displaystyle{B^{\lambda}}$

$$\begin{align}
B^{\lambda}(P\to Q)-B^{\lambda}(P) & =-\Gamma ^{\lambda}_{~\mu \nu}(P)B^{\mu}(P)\mathrm{d}x^{\nu}
\end{align}$$

show that under such parallel transport, $\displaystyle{B}$ is still a contravariant vector, i.e., for all coordinate transformation $\displaystyle{x\mapsto x'}$, we have

$$\begin{align}
B^{\mu'}(x') & =\frac{\partial x^{\mu'}}{\partial x^{\mu}}B^{\mu}(x)
\end{align}$$

*sol*.

we only need to show that $\displaystyle{D_{\mu}B^{\lambda}}$ is a $\displaystyle{(1,1)}$-type tensor

$$\begin{align}
D_{\mu'}B^{\lambda'} & =\partial _{\mu'}B^{\lambda'}+\Gamma ^{\lambda'}_{~\mu'\nu'}B^{\nu'} \\
 & =\frac{\partial x^{\mu}}{\partial x^{\mu'}}\frac{\partial}{\partial x^{\mu}}\left(\frac{\partial x^{\lambda'}}{\partial x^{\lambda}}B^{\lambda}\right)+\left(\frac{\partial x'^{\lambda}}{\partial x^{\lambda}} \frac{\partial x^{\mu}}{\partial x^{\mu'}} \frac{\partial x^{\nu}}{\partial x^{\nu'}}\Gamma ^{\lambda}_{~\mu \nu}+\frac{\partial x^{\lambda'}}{\partial x^{\lambda}} \frac{\partial ^{2}x^{\lambda}}{\partial x^{\mu'}\partial x^{\nu'}}\right)\frac{\partial x'^{\nu}}{\partial x^{\nu}}B^{\nu} \\
 & =\frac{\partial x^{\mu}}{\partial x^{\mu'}} \frac{\partial x^{\lambda'}}{\partial x^{\lambda}}\left(\partial _{\mu}B^{\lambda}+\Gamma ^{\lambda}_{~\mu \nu}B^{\nu}\right) \\
 & =\frac{\partial x^{\mu}}{\partial x^{\mu'}} \frac{\partial x^{\lambda'}}{\partial x^{\lambda}}D_{\mu}B^{\lambda}
\end{align}$$

