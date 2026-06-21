```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
& \pi_1(U_1) \arrow[dr] \arrow[drr,"j_1", bend left=20] & & \\
\pi_1(U_1\cap U_2) \arrow[ur,"i_1"] \arrow[dr,"i_2"swap] & & \pi_1(U_1)\ast_{\pi_1(U_1\cap U_2)}\pi_1(U_2) \arrow[r, dashed, "\simeq"] & \pi_1(X)\\
& \pi_1(U_2) \arrow[ur] \arrow[urr,"j_2"swap, bend right=20] & &
\end{tikzcd}\end{document}
```

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
X\arrow[r,hook] \arrow[dr, dashed]& \bar X \arrow[d]\\
& Y
\end{tikzcd}\end{document}
```
![[Pasted image 20241117170238.png]]

we can use many parameters all at once. For example

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
A \arrow[r, tail, two heads, dashed] & B
\end{tikzcd}\end{document}
```

Also, we can color the arrow as well as labels or do the other things as

```
\arrow[<options>]{<direction>}<label>
```

for example

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
A \arrow[d] \arrow{r}[near start]{\phi}[near end]{\psi} & B \arrow[red]{d}{\xi}\\
C \arrow[red]{r}[blue]{\eta} & D
\end{tikzcd}\end{document}
```
If we want to draw 3-dimensional, use parameter "crossing over"

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
& f^*E_V \arrow[dl] \arrow[dd] \arrow[rr] & & E_V \arrow[dl] \arrow[dd] \\
f^*E \arrow[dd] \arrow[rr,crossing over] & & E \arrow[dd,crossing over] \\
& U \arrow[dl] \arrow[rr] & & V \arrow[dl] \\
M \arrow[rr] & & N &
\end{tikzcd}\end{document}
```

For snake lemma or other theorem, we need to draw "snake" map. Here is an example

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
A \arrow[r] & B \arrow[r] \arrow[d,phantom,""{coordinate, name=Z}] 
& C \arrow[dll,"\delta",rounded corners, to path={-- ([xshift=2ex]\tikztostart.east) |- (Z) [near end]\tikztonodes -| ([xshift=-2ex]\tikztotarget.west) -- (\tikztotarget)}]\\
D \arrow[r] & E \arrow[r] &F
\end{tikzcd}\end{document}
```

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
\Gamma(\Lambda^{p+1}M) \arrow[d,"\phi"] & \Gamma(\Lambda^pM) & \Gamma(\Lambda^{p-1}M)\\
\Gamma(\Lambda^{n-p-1}M) & \Gamma(\Lambda^{n-p}M) & \Gamma(\Lambda^{n-p+1}M)
\end{tikzcd}\end{document}
```

```tikz
\usepackage{tikz-cd}
\usepackage{amssymb}
\begin{document}\begin{tikzcd}
 &   & \vdots       & \vdots       &       & \vdots         & \vdots       & \vdots        &   \\
 & 0 \ar[r]& \Omega^{0,3} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{1,3} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \dots \ar[r,"\mathrm{d}_H"] & \Omega^{p-1,3} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{p,3} \ar[u,"\mathrm{d}_V"] \ar[r,"\pi"] & \mathcal{F}^3 \ar[u,"\mathrm{d}_V"] \ar[r] & 0 \\
 & 0 \ar[r]& \Omega^{0,2} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{1,2} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \dots \ar[r,"\mathrm{d}_H"] & \Omega^{p-1,2} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{p,2} \ar[u,"\mathrm{d}_V"] \ar[r,"\pi"] & \mathcal{F}^2 \ar[u,"\mathrm{d}_V"] \ar[r] & 0 \\
 & 0 \ar[r]& \Omega^{0,1} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{1,1} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \dots \ar[r,"\mathrm{d}_H"] & \Omega^{p-1,1} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{p,1} \ar[u,"\mathrm{d}_V"] \ar[r,"\pi"] & \mathcal{F}^1 \ar[u,"\mathrm{d}_V"] \ar[r] & 0 \\
0 \ar[r]& \mathbb{R} \ar[r]& \Omega^{0,0} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{1,0} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \dots \ar[r,"\mathrm{d}_H"] & \Omega^{p-1,0} \ar[r,"\mathrm{d}_H"] \ar[u,"\mathrm{d}_V"] & \Omega^{p,0} \ar[u,"\mathrm{d}_V"] \ar[ur,"E"]& & \\
\end{tikzcd}\end{document}
```
