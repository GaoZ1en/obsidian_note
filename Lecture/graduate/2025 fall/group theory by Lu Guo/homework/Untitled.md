```tikz
\begin{document}
\def \youngdiagram{3,2,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {1};
\node at (2.5,0.5) {1};
\node at (0.5,-0.5) {1};
\node at (1.5,-0.5) {2};
\node at (0.5,-1.5) {1};
}
\end{tikzpicture}
\end{document}
```


$$\begin{align}
(-1)^{2}=1
\end{align}$$