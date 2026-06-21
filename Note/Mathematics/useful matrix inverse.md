## Sherman-Morrison Formula

$$\begin{align}
(A+uv^{T})^{-1} & =A^{-1}-\frac{A^{-1}uv^{T}A^{-1}}{1+v^{T}A^{-1}u}
\end{align}$$

## block matrix inverse

$$\begin{align}
\begin{pmatrix}
A & B \\
C & D
\end{pmatrix}^{-1} & =\begin{pmatrix}
A^{-1}+A^{-1}BS^{-1}CA^{-1} & -A^{-1}BS^{-1} \\
-A^{-1}S^{-1}C & S^{-1}
\end{pmatrix}
\end{align}$$

where $\displaystyle{S=D-CA^{-1}B}$ is the Schur complement of $\displaystyle{A}$ in the block matrix.
