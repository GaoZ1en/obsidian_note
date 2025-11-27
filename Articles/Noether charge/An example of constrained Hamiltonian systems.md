consider the Lagrangian

$$\tag{1.1}
\begin{align}
L=\sum^{n-1}_{i=1} \frac{1}{2}(q_{i}-\dot{q}_{i+1})^{2}
\end{align}
$$

this Lagrangian is invariant under the following symmetry

$$\tag{1.2}
\begin{align}
\delta q_{i}= \frac{\mathrm{d}^{n-i}\varepsilon}{\mathrm{d}t^{n-i}}
\end{align}
$$

we want to show that the corresponding Noether charge vanishes onshell.

## $\displaystyle{n=2}$

$$\tag{2.1}
\begin{align}
L[q_{1},q_{2}] & =\frac{1}{2}(q_{1}-\dot{q}_{2})^{2}
\end{align}
$$

this is invariant under

$$\tag{2.2}
\begin{align}
\delta q_{1}=\dot{\varepsilon},\delta q_{2} & =\varepsilon
\end{align}
$$

$$\tag{2.3}
\begin{align}
\delta L & =E_{i}\delta q_{i}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \\
E_{1} & =q_{1}-\dot{q}_{2} \\
E_{2} & =\dot{q}_{1}-\ddot{q}_{2} \\
\theta & =-(q_{1}-\dot{q}_{2})\delta q_{2}
\end{align}
$$

acting the symmetry $\displaystyle{X_{\varepsilon}=\int \mathrm{d}t\left(\dot{\varepsilon} \frac{\delta}{\delta q_{1}}+\varepsilon \frac{\delta}{\delta q_{2}}\right)}$ on $\displaystyle{L}$, we have

$$\tag{2.4}
\begin{align}
X_{\varepsilon}\cdot \delta L & = \frac{\mathrm{d}}{\mathrm{d}t}\alpha_{\varepsilon}+\beta_{\varepsilon} \\
\alpha_{\varepsilon}=0 \\
\beta_{\varepsilon}=0
\end{align}
$$

therefore the corresponding Noether charge is given by

$$\tag{2.5}
\begin{align}
H_{\varepsilon} & =X_{\varepsilon}\cdot \theta-\alpha_{\varepsilon} \\
 & =-(q_{1}-\dot{q}_{2})\varepsilon
\end{align}
$$

which is obvious that vanishes onshell.

## $\displaystyle{n>2}$

$$\tag{3.1}
\begin{align}
L[q_{i}] & =\sum^{n-1}_{i=1} \frac{1}{2}(q_{i}-\dot{q}_{i+1})^{2}
\end{align}
$$

$$\tag{3.2}
\begin{align}
\delta L & =\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1})(\delta q_{i}-\delta \dot{q}_{i+1}) \\
 & =\sum^{n}_{i=1}E_{i}\delta q_{i}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \\
E_{1} & =q_{1}-\dot{q}_{2} \\
E_{i} & =\dot{q}_{i-1}+q_{i}-\ddot{q}_{i}-\dot{q}_{i+1} \\
E_{n} & =\dot{q}_{n-1}-\ddot{q}_{n} \\
\theta & =-\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1})\delta q_{i+1}
\end{align}
$$

acting the symmetry $\displaystyle{X_{\varepsilon}=\int \mathrm{d}t\sum^{n}_{i=1} \frac{\mathrm{d}^{n-i}\varepsilon}{\mathrm{d}t^{n-i}} \frac{\delta}{\delta q_{i}}}$ on $\displaystyle{L}$, we have

$$\tag{3.3}
\begin{align}
X_{\varepsilon}\cdot \delta L & =\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1})\left( X_{\varepsilon}\cdot \delta q_{i}-\frac{\mathrm{d}}{\mathrm{d}t}X_{\varepsilon}\cdot \delta q_{i+1} \right) \\
 & =\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1})\left( \frac{\mathrm{d}^{n-i}\varepsilon}{\mathrm{d}t^{n-i}}-\frac{\mathrm{d}}{\mathrm{d}t} \frac{\mathrm{d}^{n-i-1}\varepsilon}{\mathrm{d}t^{n-i-1}} \right)=0 \\
 & =\frac{\mathrm{d}}{\mathrm{d}t}\alpha_{\varepsilon}+\beta_{\varepsilon} \\
\alpha_{\varepsilon} & =0 \\
\beta_{\varepsilon} & =0
\end{align}
$$

then the corresponding Noether charge is given by

$$\tag{3.4}
\begin{align}
H_{\varepsilon} & =X_{\varepsilon}\cdot \theta-\alpha_{\varepsilon} \\
 & =-\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1})X_{\varepsilon}\cdot \delta q_{i+1} \\
 & =-\sum^{n-1}_{i=1}(q_{i}-\dot{q}_{i+1}) \frac{\mathrm{d}^{n-i-1}\varepsilon}{\mathrm{d}t^{n-i-1}}
\end{align}
$$

which is obvious that $\displaystyle{H_{\varepsilon}}$ vanishes onshell