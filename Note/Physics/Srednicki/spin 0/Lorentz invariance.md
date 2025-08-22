a Lorentz transformation is a linear, homogeneous change of coordiantes from $\displaystyle{x^{\mu}}$ to $\displaystyle{x'^{\mu}}$,

$$\tag{1.1}\begin{align}
x'^{\mu} & =\Lambda ^{\mu}_{~\nu}x^{\nu}
\end{align}$$

that preserve $\displaystyle{x^{2}=\eta _{\mu \nu}x^{\mu}x^{\nu}}$, which gives

$$\tag{1.2}\begin{align}
\eta _{\mu \nu}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta _{\rho \sigma}
\end{align}$$

here we adopt the $\displaystyle{\eta _{\mu \nu}=\mathrm{diag}(-1,+1,\dots,+1)}$. the set of all Lorentz transformation forms a group. the inverse transformation satisfies $\displaystyle{(\Lambda ^{-1})^{\rho}_{~\nu}\Lambda ^{\nu}_{~\mu}=\delta ^{\rho}_{~\mu}\implies(\Lambda ^{-1})^{\rho}_{~\nu}=\Lambda _{\nu}^{~\rho}}$. thus

$$\tag{1.3}\begin{align}
\eta ^{\rho \sigma}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta ^{\mu \nu}
\end{align}$$

consider an infinitesimal Lorentz transformation

$$\tag{1.4}\begin{align}
\Lambda ^{\mu}_{~\nu} & =\delta ^{\mu}_{~\nu}+\delta \omega ^{\mu}_{~\nu}
\end{align}$$

then

$$\tag{1.5}\begin{align}
\eta _{\mu \nu}(\delta ^{\mu}_{~\rho}+\delta \omega ^{\mu}_{~\rho})(\delta ^{\nu}_{~\sigma}+\delta \omega ^{\nu}_{~\sigma})& =\eta _{\rho \sigma} \\
\implies \delta \omega _{\rho \sigma}=-\delta \omega _{\sigma \rho}
\end{align}$$

giving $\displaystyle{\frac{d(d-1)}{2}}$ independent generators that decompose into $\displaystyle{\frac{(d-1)(d-2)}{2}}$ rotations and $\displaystyle{d-1}$ boosts. The full Lorentz group $\displaystyle{\mathrm{O}(1,d-1)}$ consists of four disconnected components classified by $\displaystyle{\det \Lambda=\pm1}$ (proper/improper) and $\displaystyle{\Lambda ^{0}_{~0}\gtrless\pm1}$ (orthochronous/non-orthochronous), where only the proper orthochronous subgroup $\displaystyle{\mathrm{SO}^{+}(1,3)}$ can be reached by compounding infinitesimal transformations, while the other components require discrete symmetries, parity $\displaystyle{\mathcal{P}}$ and time reversal $\displaystyle{\mathcal{T}}$ to access the full group structure $\displaystyle{\mathrm{O}(1,d-1)=\left\{I,\mathcal{P},\mathcal{T},\mathcal{PT}\right\}\times \mathrm{SO}^{+}(1,d-1)}$

$$\tag{1.6}\begin{align}
\mathcal{P}^{\mu}_{~\nu} & =(\mathcal{P}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
+1 &  &  &  \\
 & -1 &  &  \\
 &  & -1 &  \\
 &  &  & -1
\end{pmatrix} \\
\mathcal{T}^{\mu}_{~~~\nu} & =(\mathcal{T}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
-1 &  &  &  \\
 & +1 &  &  \\
 &  & +1 &  \\
 &  &  & +1
\end{pmatrix}
\end{align}$$

generally, when a theory is said to be Lorentz invariant, this means under the proper orthochronous subgroup $\displaystyle{\mathrm{SO}^{+}(1,d-1)}$ only. parity and time reversal are treated separately. 

in quantum theory, symmetries are represented by unitary (or antiunitary) operators. we associate a unitary operator $\displaystyle{U(\Lambda)}$ to each proper, orthochronous Lorentz transformation $\displaystyle{\Lambda}$, and these operators must obey the composition rule

$$\tag{1.7}\begin{align}
U(\Lambda'\Lambda) & =U(\Lambda')U(\Lambda)
\end{align}$$

for an infinitesimal transformation, we can write

$$\tag{1.8}\begin{align}
U(1+\delta \omega) & =I+\frac{i}{2}\delta \omega _{\mu \nu}M^{\mu \nu}
\end{align}$$

where $\displaystyle{M^{\mu \nu}=-M^{\nu \mu}}$ are the generators of the Lorentz group. consider $\displaystyle{U(\Lambda)^{-1}U(\Lambda')U(\Lambda)=U(\Lambda ^{-1}\Lambda'\Lambda)}$, and let $\displaystyle{\Lambda'=1+\delta \omega'}$, then

$$\tag{1.9}\begin{align}
U(\Lambda)^{-1}U(\Lambda')U(\Lambda) & =U(\Lambda ^{-1}\Lambda'\Lambda) \\
U(\Lambda)^{-1}\left( 1+\frac{i}{2}\delta \omega _{\mu \nu}M^{\mu \nu} \right)U(\Lambda) & =U(\Lambda ^{-1}(1+\delta \omega)\Lambda) \\
 I+\frac{i}{2}\delta \omega _{\mu \nu}U(\Lambda)^{-1}M^{\mu \nu}U(\Lambda)& =U(1+\Lambda ^{-1}\delta \omega \Lambda) \\
 & =I+\frac{i}{2}(\Lambda ^{-1}\delta \omega \Lambda)_{\mu \nu}M^{\mu \nu} \\
 & =I+\frac{i}{2}\Lambda ^{\rho}_{~\mu}\Lambda ^{\sigma}_{~\nu}\delta \omega _{\rho \sigma}M^{\mu \nu} \\
\implies U(\Lambda)^{-1}M^{\mu \nu}U(\Lambda) & =\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma}M^{\rho \sigma}
\end{align}$$

similarly, we have

$$\tag{1.10}\begin{align}
U(\Lambda)^{-1}P^{\mu}U(\Lambda) & =\Lambda ^{\mu}_{~\nu}P^{\nu}
\end{align}$$

let $\displaystyle{\Lambda=1+\delta \omega}$ in (1.9), we get

$$\tag{1.11}\begin{align}
\left( 1-\frac{i}{2}\delta \omega _{\rho \sigma}M^{\rho \sigma} \right)M^{\mu \nu}\left( 1+\frac{i}{2}\delta \omega _{\lambda \tau}M^{\lambda \tau} \right) & =(\delta ^{\mu}_{~\rho}+\delta \omega ^{\mu}_{~\rho})(\delta ^{\nu}_{~\sigma}+\delta \omega ^{\nu}_{~\sigma})M^{\rho \sigma} \\
\implies\frac{i}{2}\delta \omega _{\rho \sigma}[M^{\mu \nu},M^{\rho \sigma}] & =\delta \omega_{\rho\sigma}\eta ^{\nu \rho}M^{\mu \sigma}-\delta \omega _{\rho \sigma}\eta ^{\mu \sigma}M^{\rho \nu} \\
\implies [M^{\mu \nu},M^{\rho \sigma}] & =i(\eta ^{\mu \rho}M^{\nu \sigma}-(\mu\leftrightarrow \nu))-(\rho\leftrightarrow \sigma)
\end{align}$$

in 4 dimensions, we can identify the components of angular momentum operator $\displaystyle{\vec{J}}$ as $\displaystyle{J_{i}=\frac{1}{2}\varepsilon _{ijk}M^{jk}}$ and the components of the boost operator $\displaystyle{\vec{K}}$ as $\displaystyle{K_{i}=M^{i0}}$. then we have

$$\begin{align}
[J_{i},J_{j}] & =i\varepsilon _{ijk}J_{k} \\
[J_{i},K_{k}] & =i\varepsilon _{ijk}K_{k} \\
[K_{i},K_{j}] & =-i\varepsilon _{ijk}J_{k}
\end{align}$$

similar as (1.11), we have

$$\tag{1.12}\begin{align}
\left( 1-\frac{i}{2}\delta \omega _{\rho \sigma}M^{\rho \sigma} \right)P^{\mu}\left( 1+\frac{i}{2}\delta \omega _{\lambda \tau}M^{\lambda \tau} \right) & =(\delta ^{\mu}_{~\nu}+\delta \omega ^{\mu}_{~\nu})P^{\nu} \\
\implies \frac{i}{2}\delta \omega _{\rho \sigma}[P^{\mu},M^{\rho \sigma}] & =\delta \omega_{\rho \sigma}\eta ^{\mu \rho}P^{\sigma} \\
\implies[P^{\mu},M^{\rho \sigma}] & =i(\eta ^{\mu \rho}P^{\sigma}-(\rho\leftrightarrow \sigma))
\end{align}$$

which becomes

$$\begin{align}
[J_{i},H] & =0 \\
[J_{i},P_{j}] & =i\varepsilon _{ijk}P_{k} \\
[K_{i},H] & =iP_{i} \\
[K_{i},P_{j}] & =i\delta _{ij}H
\end{align}$$

and

$$\tag{1.13}\begin{align}
[P^{\mu},P^{\nu}] & =0
\end{align}$$

which becomes

$$\begin{align}
[P_{i},P_{j}] & =0 \\
[P_{i},H] & =0
\end{align}$$

now we will consider what should happen to a scalar field $\displaystyle{\varphi(x)}$ under a Lorentz transformation. in the Heisenberg picture, define the spacetime translation operator $\displaystyle{T(a)=\exp\left(-iP^{\mu}a_{\mu}\right)}$, then

$$\begin{align}
T(a)^{-1}\varphi(x)T(a) & =\varphi(x-a)
\end{align}$$

similarly, we have

$$\begin{align}
U(\Lambda)^{-1}\varphi(x)U(\Lambda) & =\varphi(\Lambda ^{-1}x)
\end{align}$$

