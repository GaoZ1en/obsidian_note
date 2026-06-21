---
title: "problem"
date: 2026-04-15
summary: ""
---

# problem

Use Young operators to give the irreducible decomposition of a fourth‑rank tensor for the group $SU(3)$, verify the dimensions, and draw the standard Young tableaux and the tensor Young tableaux.

## solution

let

$$\begin{align}
T_{ijkl}\in \mathbf{3}\otimes \mathbf{3}\otimes \mathbf{3}\otimes \mathbf{3}=\mathbf{3}^{\otimes 4}.
\end{align}$$

the partitions of $4$ are

$$\begin{align}
[4],\quad [3,1],\quad [2,2],\quad [2,1,1],\quad [1,1,1,1].
\end{align}$$

for each standard Young tableau $t$, the Young operator is

$$\begin{align}
Y_t=a_t s_t,
\end{align}$$

where $s_t$ symmetrizes indices in each row and $a_t$ antisymmetrizes indices in each column. since in $SU(3)$ the complete antisymmetrization of four fundamental indices is zero, the diagram $[1,1,1,1]$ does not contribute. hence

$$\begin{align}
\mathbf{3}^{\otimes 4}=[4]\oplus 3[3,1]\oplus 2[2,2]\oplus 3[2,1,1] =\mathbf{15'}\oplus 3\cdot \mathbf{15}\oplus 2\cdot \overline{\mathbf{6}}\oplus 3\cdot \mathbf{3}.
\end{align}$$

to verify the dimensions, use the hook-length formula for $SU(3)$:

$$\begin{align}
\dim (\lambda)=\prod_{(i,j)\in \lambda}\frac{3+j-i}{h_{ij}}.
\end{align}$$

then

$$\begin{align}
\dim [4]=\frac{3}{4}\cdot \frac{4}{3}\cdot \frac{5}{2}\cdot \frac{6}{1}=15,
\end{align}$$

$$\begin{align}
\dim [3,1]=\frac{3}{4}\cdot \frac{4}{2}\cdot \frac{5}{1}\cdot \frac{2}{1}=15,
\end{align}$$

$$\begin{align}
\dim [2,2]=\frac{3}{3}\cdot \frac{4}{2}\cdot \frac{2}{2}\cdot \frac{3}{1}=6.
\end{align}$$

for $[2,1,1]$, removing one full column of height $3$ gives the equivalent diagram $[1]$, so

$$\begin{align}
\dim [2,1,1]=\dim [1]=3.
\end{align}$$

therefore

$$\begin{align}
1\cdot 15+3\cdot 15+2\cdot 6+3\cdot 3=15+45+12+9=81=3^4,
\end{align}$$

which verifies the decomposition.

the standard Young tableaux are

```tikz
\begin{document}
\def \youngdiagram{4}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (2.5,0.5) {3};
\node at (3.5,0.5) {4};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{3,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (2.5,0.5) {3};
\node at (0.5,-0.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (2.5,0.5) {4};
\node at (0.5,-0.5) {3};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (2.5,0.5) {4};
\node at (0.5,-0.5) {2};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{2,2}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (0.5,-0.5) {3};
\node at (1.5,-0.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (0.5,-0.5) {2};
\node at (1.5,-0.5) {4};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{2,1,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (0.5,-0.5) {3};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (0.5,-0.5) {2};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {4};
\node at (0.5,-0.5) {2};
\node at (0.5,-1.5) {3};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{1,1,1,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (0.5,-0.5) {2};
\node at (0.5,-1.5) {3};
\node at (0.5,-2.5) {4};
}
\end{tikzpicture}
\end{document}
```

the corresponding tensor Young tableaux are obtained by replacing $1,2,3,4$ with the tensor slots $i,j,k,l$:

```tikz
\begin{document}
\def \youngdiagram{4}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {k};
\node at (3.5,0.5) {l};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{3,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {k};
\node at (0.5,-0.5) {l};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (2.5,0.5) {l};
\node at (0.5,-0.5) {k};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {k};
\node at (2.5,0.5) {l};
\node at (0.5,-0.5) {j};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{2,2}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (0.5,-0.5) {k};
\node at (1.5,-0.5) {l};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {k};
\node at (0.5,-0.5) {j};
\node at (1.5,-0.5) {l};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{2,1,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {j};
\node at (0.5,-0.5) {k};
\node at (0.5,-1.5) {l};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {k};
\node at (0.5,-0.5) {j};
\node at (0.5,-1.5) {l};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (1.5,0.5) {l};
\node at (0.5,-0.5) {j};
\node at (0.5,-1.5) {k};
}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\def \youngdiagram{1,1,1,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {i};
\node at (0.5,-0.5) {j};
\node at (0.5,-1.5) {k};
\node at (0.5,-2.5) {l};
}
\end{tikzpicture}
\end{document}
```

thus the symmetry types are: $[4]$ totally symmetric, $[3,1]$ row-symmetric and column-antisymmetric, $[2,2]$ symmetric in each row and antisymmetric in each column, and $[2,1,1]$ with one column antisymmetrized over three indices.

equivalently,

$$\begin{align}
\mathbf{3}^{\otimes 4}=\mathbf{15'}\oplus 3\cdot \mathbf{15}\oplus 2\cdot \overline{\mathbf{6}}\oplus 3\cdot \mathbf{3}.
\end{align}$$
