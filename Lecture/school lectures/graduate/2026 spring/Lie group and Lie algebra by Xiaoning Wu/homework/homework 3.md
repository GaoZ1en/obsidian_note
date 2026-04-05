# problem

derive the invariant measure of the group $SU(2)$.

## solution

The group $SU(2)$ can be parameterized by the direction $\hat{n}$ and the angle $\theta$ as follows:

$$\begin{align}
U(\hat{n},\theta) & =\exp \left( -i\frac{\theta }{2}\hat{n}\cdot \vec{\sigma}\right) \\
 & =\cos \frac{\theta }{2}-i\hat{n}\cdot \vec{\sigma}\sin \frac{\theta }{2}
\end{align}$$

The invariant measure of the group $SU(2)$ can be derived from the Haar measure, which is given by:

$$\begin{align}
d\mu(U) & =\frac{1}{16\pi ^{2}}\sin ^{2}\left( \frac{\theta }{2}\right) d\theta d\Omega
\end{align}$$

The factor $\frac{1}{16\pi ^{2}}$ ensures that the total measure integrates to 1 over the entire group as

$$\begin{align}
\int _{\mathrm{SU}(2)}\mathrm{d}\mu(U) & =N\int _{0}^{4\pi}\sin ^{2}\left( \frac{\theta}{2} \right)\mathrm{d}\theta \int _{S^{2}}\mathrm{d}\Omega \\
 & =N\int _{0}^{4\pi}\sin ^{2}\left( \frac{\theta}{2} \right)\mathrm{d}\theta \cdot 4\pi \\
 & =N\cdot 16\pi ^{2} \\
 & =1 \\
\implies N & =\frac{1}{16\pi ^{2}}
\end{align}$$

