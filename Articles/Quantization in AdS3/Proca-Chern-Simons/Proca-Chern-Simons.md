the action is chosen to be

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}+\frac{k}{4\pi}\int \mathrm{d}^{3}x\epsilon ^{\mu \nu \rho}A_{\mu}\nabla_{\nu}A_{\rho}-\frac{1}{2}\mu ^{2}\int \mathrm{d}^{3}x\sqrt{ -g }A_{\mu}A^{\mu}
\end{align}$$

and in the following we will analyze the physical degrees of freedom (dofs) in different cases.

# Maxwell

below discussion has no Chern-Simons term, i.e. $\displaystyle{k=0}$. define the operators

$$\begin{align}
(\mathcal{D})^{\beta}_{\mu} & =\varepsilon _{\mu}^{~\alpha \beta}\nabla _{\alpha}
\end{align}$$

the eom of electric field without Chern-Simons term can be written as

$$\begin{align}
(\mathcal{D}^{2})_{\mu}^{~\nu}A_{\nu} & =\nabla _{\nu}F^{\nu \mu}=0
\end{align}$$

notice that modes with $\displaystyle{\mathcal{D}A=0}$ are pure gauge, since

$$\begin{align}
\mathcal{D}_{\mu}^{\nu}A_{\nu} & =\varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}A_{\nu} \\
 & =\frac{1}{2}\varepsilon _{\mu}^{~\alpha \nu}F_{\alpha \nu}
\end{align}$$

introduce Killing vectors in the global $\displaystyle{\mathrm{AdS}_{3}}$ coordinates $\displaystyle{(t,r,\phi)}$ as [[Articles/Quantization in AdS3/linearized gravity in AdS3/eom|eom]], we can decompose the solution space into irreducible representations of $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ algebra. 

notice that

$$\begin{align}
\mathcal{C}A^{\mu} & =-\frac{1}{4}\nabla ^{2}A^{\mu}-\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu} \\
\mathcal{\bar{C}}A^{\mu} & =-\frac{1}{4}\nabla ^{2}A^{\mu}+\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}
\end{align}$$

then we have

$$\begin{align}
(\mathcal{C}+\mathcal{C})A^{\mu} & =-\frac{1}{2}\nabla ^{2}A^{\mu}-A^{\mu} \\
 & =0 \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}A^{\mu} & =\nabla ^{2}A^{\mu}-\nabla _{\nu}\nabla ^{\mu}A^{\nu} \\
 & =0
\end{align}$$

---

here we choose the Lorentz gauge $\displaystyle{\nabla _{\mu}A^{\mu}=0}$, and we will show that this gauge can always be reached. consider a general solution of the eom $\displaystyle{A_{\mu}}$, then we perform a gauge transformation

$$\begin{align}
A_{\mu} &\to A_{\mu}+\nabla _{\mu}\lambda
\end{align}$$

then we require

$$\begin{align}
\nabla ^{2}\lambda & =-\nabla _{\mu}A^{\mu}
\end{align}$$

this is a well-defined linear hyperbolic equation for $\displaystyle{\lambda}$, thus we can always find a solution at least locally by some theory of PDE... we take a more careful analysis below. 

we expand $\displaystyle{\lambda}$ and $\displaystyle{-(1+r^{2})\nabla _{\mu}A^{\mu}}$ in terms of a complete set of modes $\displaystyle{\phi _{nm}(r,\phi)}$ as

$$\begin{align}
\lambda(x) & =\sum _{m\in \mathbb{Z}}\sum _{n\geqslant 0} a_{nm}(t)\phi _{nm}(r,\phi) \\
(1+r^{2})\nabla _{\mu}A^{\mu} & =\sum _{m\in \mathbb{Z}} \sum _{n\geqslant 0} b_{nm}(t)\phi _{nm}(r,\phi)
\end{align}$$

here $\displaystyle{\phi _{nm}(r,\phi)}$ are the spatial wavefunctions satisfying

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi _{nm}+\frac{1+3r^{2}}{r}\partial _{r}\phi _{nm}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi _{nm} & =-\frac{\omega _{nm}^{2}\phi _{nm}}{1+r^{2}} \\
\implies \phi _{nm}(r,\phi) & =C_{nm}r^{m}(1+r^{2})^{-(2+m)/2}{}_{2}F_{1}\left( -n,2+m+n;2; \frac{1}{1+r^{2}} \right)e^{im\phi}
\end{align}$$

where $\displaystyle{\omega _{nm}^{2}=(2+m+2n)^{2}}$ and $\displaystyle{m\in \mathbb{Z},n\geqslant 0}$. and the normalization constants $\displaystyle{C_{nm}}$ are determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N} \phi _{n_{1}m_{1}}\phi _{n_{2}m_{2}}^{*} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

then the equation for $\displaystyle{\lambda}$ becomes

$$\begin{align}
\implies \ddot{a}_{nm}(t)+\omega _{nm}^{2}a_{nm}(t) & =b_{nm}(t)
\end{align}$$

this is just a driven harmonic oscillator equation, which always has a solution for arbitrary driving force $\displaystyle{b_{nm}(t)}$... or we can take another approach, that is, for a general configuration $\displaystyle{A}$ that satisfies the asymptotic boundary condition

$$\begin{align}
A_{t} & =o(1) \\
A_{r} & =o(r^{-3}) \\
A_{\phi} & =o(1) \\
\implies \nabla _{\mu}A^{\mu} & =o(r^{-2})
\end{align}$$

and see the asymptotic behavior of guage transformed configuration. at boundary, we have

$$\begin{align}
r^{2}\partial _{r}^{2}\lambda+3r\partial _{r}\lambda & =Cr^{-2-\varepsilon} \\
\lambda & \to \mathcal{O}(r^{-2})+\mathcal{O}(r^{-2}\log r)
\end{align}$$

the gauge transformed configuration violates the asymptotic boundary condition, however, still remains the variation principle well-defined. so we can safely choose the Lorentz gauge without loss of generality.

---

which gives the eigenvalues of Casimir operators as

$$\begin{align}
\mathcal{C}A^{\mu} & =0 \\
\mathcal{\bar{C}}A^{\mu} & =0
\end{align}$$

suppose we have the primary state $\displaystyle{\ket{\psi}}$ with conformal weights $\displaystyle{(h,\bar{h})}$. thus we have

$$\begin{align}
\mathcal{C}\ket{\psi} & =h(h-1)\ket{\psi}=0 \\
\mathcal{\bar{C}}\ket{\psi} & =\bar{h}(\bar{h}-1)\ket{\psi}=0
\end{align}$$

which gives $\displaystyle{(h,\bar{h})=(0,0),(0,1),(1,0),(1,1)}$. see [[Articles/Quantization in AdS3/electric field in AdS3/modes|modes]], the solutions corresponding to these representations are as follows:

1. for $\displaystyle{(h,\bar{h})=(0,0)}$, we have $\displaystyle{\psi _{(0,0)}^{\mu}=0}$, which is the trivial vacuum solution.
2. for $\displaystyle{(h,\bar{h})=(1,0)}$, we have $\displaystyle{\psi _{(1,0)}^{\mu}= \frac{e^{-2it}}{1+r^{2}}\bar{\xi}^{\mu}_{1}}$, and its descendants $\displaystyle{\mathcal{L}_{\xi _{-1}}^{n}\psi _{(1,0)}^{\mu}}$, which are topologically non-trivial vacua solutions
3. for $\displaystyle{(h,\bar{h})=(0,1)}$, we have $\displaystyle{\psi ^{\mu}_{(0,1)}=\frac{e^{-2it}}{1+r^{2}}\xi _{1}^{\mu}}$, and its descendants $\displaystyle{\mathcal{L}_{\bar{\xi} _{-1}}^{n}\psi _{(0,1)}^{\mu}}$, which are topologically non-trivial vacua solutions
4. for $\displaystyle{(h,\bar{h})=(1,1)}$, we have $\displaystyle{\psi ^{\mu}_{(1,1)}= \frac{e^{-4it}}{(1+r^{2})^{2}}(\alpha \xi _{1}^{\mu}+\beta \bar{\xi}^{\mu} _{1})}$, and its descendants $\displaystyle{\mathcal{L}_{\xi _{-1}}^{k}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{k}}\psi _{(1,1)}^{\mu}}$. the choice of $\displaystyle{\alpha}$ and $\displaystyle{\beta}$ are actually equivalent and related by a gauge transformation.

thus the Hilbert space is spanned by $\displaystyle{\psi _{(1,1)}^{\mu}}$ and its descendants that defined under the background of $\displaystyle{\psi _{(0,0)}^{\mu}}$, $\displaystyle{\psi _{(1,0)}^{\mu}}$, $\displaystyle{\psi _{(0,1)}^{\mu}}$ and their descendants, i.e., define

$$\begin{align}
\psi _{n,k,\bar{k}}^{\mu} & =\mathcal{L}_{\xi _{-1}}^{k}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{k}}\psi _{(1,1)}^{\mu}+\psi_{n}^{\mu} \\
\psi _{n}^{\mu} & =\begin{cases}
0 & n=0 \\
\mathcal{L}_{\xi _{-1}}^{n-1}\psi _{(1,0)}^{\mu} & n\geqslant 1 \\
\mathcal{L}_{\bar{\xi}_{-1}}^{|n-1|}\psi _{(0,1)}^{\mu} & n\leqslant -1
\end{cases}
\end{align}$$

we have

$$\begin{align}
A^{\mu} & =\sum ^{\infty}_{n=-\infty}\sum ^{\infty}_{k,\bar{k}=0} \left(a_{n,k,\bar{k}}\psi ^{\mu}_{n,k,\bar{k}}+a^{\dagger}_{n,k,\bar{k}}\psi ^{*\mu}_{n,k,\bar{k}}\right)
\end{align}$$

same old story of canonical quantization, we impose the commutation relation

$$\begin{align}
[a_{n,k,\bar{k}},a_{n',k',\bar{k}'}] & =\delta _{n,n'}\delta _{k,k'}\delta _{\bar{k},\bar{k}'}
\end{align}$$

the vacua are different from usual case. here we have a sequence of vacua $\displaystyle{\ket{\Omega _{n}}}$ defined as

$$\begin{align}
a_{n,k,\bar{k}}\ket{\Omega _{n}} =0,\quad \forall n,k,\bar{k}
\end{align}$$

the Noether charge associated with the $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ isometry can be constructed as

$$\begin{align}
H_{\xi_{0}} & =\sum ^{\infty}_{n=1} \sum ^{\infty}_{k,\bar{k}=0} (1+k+n)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}+\sum ^{0}_{n=-\infty} \sum ^{\infty}_{k,\bar{k}=0} (1+k)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}} \\
H_{\bar{\xi}_{0}} & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{k,\bar{k}=0}(1+\bar{k})a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}+\sum ^{-1}_{n=-\infty}\sum ^{\infty}_{k,\bar{k}=0}(1+\bar{k}+n)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}
\end{align}$$

normal ordering is imposed here to remove the infinite zero-point energy. the partition function

$$\begin{align}
\mathrm{Tr}(e^{-\beta H+i\alpha J}) & = \prod ^{\infty}_{n=1} \frac{1}{|1-q^{n}|^{2}} \prod ^{\infty}_{n,\bar{n}=0} \frac{1}{1-q^{n+1}\bar{q}^{\bar{n}+1}}
\end{align}$$

where $\displaystyle{q=e^{-\beta+i\alpha}}$. Xi Yin's result is

$$\begin{align}
\prod ^{\infty}_{\ell,\ell'=0} \frac{1-q^{\ell+1}\bar{q}^{\ell'+1}}{(1-q^{\ell+1}\bar{q}^{\ell'})(1-q^{\ell}\bar{q}^{\ell'+1})} & =\prod ^{\infty}_{\ell=1} \frac{1}{|1-q^{\ell}|^{2}}\prod ^{\infty}_{\ell,\ell'=0}  \frac{1}{1-q^{\ell+1}\bar{q}^{\ell'+1}}
\end{align}$$

which matches our result precisely. 

# Proca

we first consider the Proca theory with mass $\displaystyle{\mu}$. define the operators

$$\begin{align}
(\mathcal{D}^{\pm})_{\mu}^{~\nu} & =\delta _{\mu}^{~\nu}\pm\frac{1}{\mu}\varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}
\end{align}$$

then the eom of Proca field can be written as

$$\begin{align}
(\mathcal{D}^{+})_{\mu}^{~\nu}(\mathcal{D}^{-})_{\nu}^{~\rho}A_{\rho} & =0
\end{align}$$

we have already discussed this system in our present work. here we will perform a more careful analysis of the solution space. since the eom can be factorized, there are two sectors of solutions, that is

$$\begin{align}
(\mathcal{D}^{+})_{\mu}^{~\nu}A_{\nu} & =0\implies \varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}A_{\nu}=-\mu A_{\mu} \\
(\mathcal{D}^{-})_{\mu}^{~\nu}A_{\nu} & =0\implies\varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}A_{\nu}=\mu A_{\mu}
\end{align}$$

inserting to the Casimir operators, we have

$$\begin{align}
\mathcal{C}A_{\mu} & =-\frac{1}{4}\nabla ^{2}A_{\mu}-\frac{1}{2}\varepsilon _{\mu} ^{~\nu \rho}\nabla _{\nu}A_{\rho}-\frac{1}{2}A_{\mu} \\
 & =\begin{cases}
-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu & \mathcal{D}^{+}A=0 \\
-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu & \mathcal{D}^{-}A=0
\end{cases} \\
\mathcal{\bar{C}}A_{\mu} & =-\frac{1}{4}\nabla ^{2}A_{\mu}+\frac{1}{2}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}-\frac{1}{2}A_{\mu} \\
 & =\begin{cases}
-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu & \mathcal{D}^{+}A=0 \\
-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu & \mathcal{D}^{-}A=0
\end{cases}
\end{align}$$

so the sector $\displaystyle{\mathcal{D}^{+}A=0}$ corresponds to the highest weight representation with $\displaystyle{(h,\bar{h})=\left( \frac{\mu}{2},1+\frac{\mu}{2} \right)}$, and the sector $\displaystyle{\mathcal{D}^{-}A=0}$ corresponds to the highest weight representation with $\displaystyle{(h,\bar{h})=\left( 1+\frac{\mu}{2},\frac{\mu}{2} \right)}$. below discussions are the same as our present work. 

# Chern-Simons

consider only the Chern-Simons theory

$$\begin{align}
S & =\frac{k}{4\pi}\int \mathrm{d}^{3}x \varepsilon ^{\mu \nu \rho}A_{\mu}\nabla_{\nu}A_{\rho}
\end{align}$$

take a variance

$$\begin{align}
\delta S & =\frac{k}{4\pi} \int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}\delta A_{\mu}\nabla _{\nu}A_{\rho}+\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}\delta A_{\rho} \\
 & =\frac{k}{4\pi}\int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}(\nabla _{\nu}A_{\rho}-\nabla _{\rho}A_{\nu})\delta A_{\mu}-\frac{k}{4\pi} \int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}\nabla _{\mu}(A_{\nu}\delta A_{\rho}) \\
 & =\frac{k}{4\pi}\int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}F_{\nu \rho}\delta A_{\mu}-\frac{k}{4\pi}\int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}\nabla _{\mu}(A_{\nu}\delta A_{\rho})
\end{align}$$

the eom is given by

$$\begin{align}
\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho} & =0
\end{align}$$

which can be written as

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =0
\end{align}$$

here $\displaystyle{\mathcal{D}}$ is the operator defined before. the solution is pure gauge (one sector of boundary dofs of Maxwell theory), and physical dofs are related to large gauge transformations. the choice of physical modes depends on the sign of $\displaystyle{k}$ due to unitarity requirements.

the Chern-Simons term induces a current algebra (Kac-Moody algebra) on the boundary. For the left-moving sector (corresponding to $\displaystyle{\psi_{\mu}^{(1,0)}}$), the commutation relations are:
$$\begin{align}
[J_n, J_m] = k n \delta_{n+m, 0}
\end{align}$$
The norm of the state $\displaystyle{J_{-n}\ket{0}}$ is proportional to $\displaystyle{k}$. Thus, unitarity (positive norm) requires $\displaystyle{k>0}$.

For the right-moving sector (corresponding to $\displaystyle{\psi_{\mu}^{(0,1)}}$), the commutation relations have the opposite sign due to orientation:
$$\begin{align}
[\bar{J}_n, \bar{J}_m] = -k n \delta_{n+m, 0}
\end{align}$$
Unitarity requires $\displaystyle{-k>0}$, i.e., $\displaystyle{k<0}$.

Therefore:
- If $\displaystyle{k>0}$, the physical dofs are generated by the descendents of $\displaystyle{\psi _{\mu}^{(1,0)}}$.
- If $\displaystyle{k<0}$, the physical dofs are generated by the descendents of $\displaystyle{\psi _{\mu}^{(0,1)}}$.

and the partition function is

$$\begin{align}
\mathrm{Tr}(e^{-\beta H+i\alpha J}) & =\prod _{m=1}^{\infty}\frac{1}{1-q^{m}}, \quad k>0 \\
 & =\prod _{m=1}^{\infty}\frac{1}{1-\bar{q}^{m}}, \quad k<0
\end{align}$$

where $\displaystyle{q=e^{-\beta+i\alpha}}$... 

# Maxwell-Chern-Simons theory

now consider the full action with both Maxwell and Chern-Simons terms. the full action is

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}+\frac{k}{4\pi}\int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla_{\nu}A_{\rho}
\end{align}$$

the eom is

$$\begin{align}
\nabla _{\nu}F^{\nu \mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho} & =0
\end{align}$$
define

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu} & =\varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}
\end{align}$$

then the eom can be written as

$$\begin{align}
{\mathcal{D}^{2}}_{\mu}^{~\nu}A_{\nu}+\frac{k}{2\pi} \mathcal{D}_{\mu}^{~\nu}A_{\nu} & =0
\end{align}$$

then

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}\left( \mathcal{D}_{\nu}^{~\rho}+\frac{k}{2\pi}\delta _{\nu}^{~\rho} \right)A_{\rho}=0
\end{align}$$

thus the solution space can be decomposed into two sectors:

$$\begin{align}
\mathcal{D}_{\nu}^{~\rho}A_{\rho} & =0 \\
\left( \mathcal{D}_{\nu}^{~\rho}+\frac{k}{2\pi}\delta _{\nu}^{~\rho} \right)A_{\rho} & =0
\end{align}$$

the first sector corresponds to the pure gauge modes discussed before. the second sector can be written as

$$\begin{align}
\varepsilon _{\nu}^{~\alpha \rho}\nabla _{\alpha}A_{\rho} & =-\frac{k}{2\pi}A_{\nu}
\end{align}$$

which is the equation for a topologically massive vector field. this equation is actually the eom for left-handed modes if $\displaystyle{k>0}$ and right-handed modes if $\displaystyle{k<0}$. the physical Hilbert space $\displaystyle{\mathcal{H}}$ is then $\displaystyle{(1,0)}$ rep plus $\displaystyle{\left( \frac{\mu}{2},1+\frac{\mu}{2} \right)}$ with $\displaystyle{\mu=\frac{k}{2\pi}}$ if $\displaystyle{k>0}$, or $\displaystyle{(0,1)}$ rep plus $\displaystyle{\left( 1+\frac{\mu}{2},\frac{\mu}{2} \right)}$ with $\displaystyle{\mu=\frac{-k}{2\pi}}$ if $\displaystyle{k<0}$.

the following discussion are similar as before...

# Proca-Simons

$$\begin{align}
\nabla _{\nu}F^{\nu \mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}-\mu ^{2}A^{\mu} & =0 \\
\implies \left( \mathcal{D}^{2}+\frac{k}{2\pi}\mathcal{D}-\mu ^{2} \right)A & =0 \\
\implies (\mathcal{D}-\lambda _{+})(\mathcal{D}-\lambda _{-})A & =0
\end{align}$$

where $\displaystyle{\mu _{\pm}=-\frac{k}{4\pi}\pm \sqrt{ \mu ^{2}+\frac{k^{2}}{16\pi ^{2}} }}$. thus the solution space is decomposed into two sectors:

$$\begin{align}
(\mathcal{D}-\mu _{+})A & =0 \\
(\mathcal{D}-\mu _{-})A & =0
\end{align}$$

notice that $\displaystyle{\mu _{+}> 0, \mu _{-}< 0}$, the first sector corresponds to left-handed modes of $\displaystyle{(h,\bar{h})=\left( \frac{\mu_{+}}{2}, 1+\frac{\mu _{+}}{2} \right)}$ and the second sector corresponds to right-handed modes of $\displaystyle{(h,\bar{h})=\left( 1+\frac{\mu _{-}}{2},\frac{\mu _{-}}{2} \right)}$. the Chern-Simons term here induces a chiral asymmetry between the two sectors. the physical Hilbert space is then the direct sum of these two representations. 

suppose the action is

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}\int \mathrm{d}^{3}x\sqrt{ -g }A_{\mu}A^{\mu}+\frac{k}{4\pi}\int \mathrm{d}^{3}x\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla_{\nu}A_{\rho}
\end{align}$$

the solutions for the eom are

$$\begin{align}
f_{+,0,0}^{\mu} & = \frac{e^{-i(\mu _{+}+2)t}}{(1+r^{2})^{(\mu _{+}+2)/2}}\xi _{1}^{\mu} \\
f_{-,0,0}^{\mu} & = \frac{e^{-i(-\mu _{-}+2)t}}{(1+r^{2})^{(-\mu _{-}+2)/2}}\bar{\xi} _{1}^{\mu} \\
\mu _{\pm} & = -\frac{k}{4\pi}\pm \sqrt{ \mu ^{2}+\frac{k^{2}}{16\pi ^{2}} }
\end{align}$$

and their descendents

$$\begin{align}
f_{+,n,m}^{\mu} & =(\mathcal{L}_{\xi _{-1}})^{n}(\mathcal{L}_{\bar{\xi} _{-1}})^{m}f_{+,0,0}^{\mu}  \\
f_{-,n,m}^{\mu} & =(\mathcal{L}_{\xi _{-1}})^{n}(\mathcal{L}_{\bar{\xi} _{-1}})^{m}f_{-,0,0}^{\mu}
\end{align}$$

the partition function is

$$\begin{align}
Z[\beta,\alpha] & =\mathrm{Tr}e^{-\beta H+i\alpha J} \\
 & =\prod ^{\infty}_{n,\bar{n}=0} \frac{1}{(1-q^{\mu _{+}/2+1+n}\bar{q}^{\mu _{+}/2+\bar{n}})(1-q^{-\mu _{-}/2+n}\bar{q}^{-\mu _{-}/2+1+\bar{n}})}
\end{align}$$
