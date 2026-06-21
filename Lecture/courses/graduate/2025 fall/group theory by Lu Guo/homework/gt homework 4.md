# problem 1

write down the Young operator corresponding to the following Young tableau.

1.
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
\end{document}
```

2.

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
\end{document}
```

3.

```tikz
\begin{document}
\def \youngdiagram{4,1}
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
\node at (0.5,-0.5) {5};
}
\end{tikzpicture}
\end{document}
```

*sol*.

1. we can write down the row symmetrizer $\displaystyle{P}$ and the column antisymmetrizer $\displaystyle{Q}$

$$\begin{align}
P & =I+(1 2)+(1 3)+(2 3)+(1 2 3)+(3 2 1) \\
Q & =I-(1 4)
\end{align}$$

the Young operator $\displaystyle{\mathcal{Y}}$ is the product $\displaystyle{QP}$ as

$$\begin{align}
\mathcal{Y} & =QP \\
 & =I+(1 2)+(2 3)+(1 3)+(1 2 3)+(1 3 2) \\
 & -(1 4)-(124)-(134)-(14)(23)-(1234)-(1324)
\end{align}$$

1. we can write down the row symmetrizer $\displaystyle{P}$ and the column antisymmetrizer $\displaystyle{Q}$

$$\begin{align}
P & =(I+(12))(I+(34)) \\
 & =I+(12)+(34)+(12)(34) \\
Q & =(I-(13))(I-(24)) \\
 & =I-(13)-(24)+(13)(24)
\end{align}$$

then the Young operator $\displaystyle{\mathcal{Y}}$ is

$$\begin{align}
\mathcal{Y} & =QP \\
 & =(I-(13)-(24)+(13)(24))(I+(12)+(34)+(12)(34)) \\
 & =I+(12)+(34)+(12)(34)-(13)-(123)-(134)-(1234) \\
 & -(24)-(142)-(243)-(1432)+(13)(24)+(1423)+(1324)+(14)(23)
\end{align}$$

1. we can write down the row symmetrizer $\displaystyle{P}$ and the column antisymmetrizer $\displaystyle{Q}$

$$\begin{align}
P & =I+(12)+(13)+(14)+(23)+(24)+(34)+(123)+(124)+(134)+(234) \\
 & +(132)+(142)+(143)+(243)+(1234)+(1243)+(1324)+(1342)+(1423)+(1432) \\
Q & =I-(15)
\end{align}$$

then

$$\begin{align}
\mathcal{Y} & =QP \\
 & =I+(12)+(13)+(14)+(23)+(24)+(34)+(123)+(124)+(134)+(234) \\
 & +(132)+(142)+(143)+(243)+(1234)+(1243)+(1324)+(1342)+(1423)+(1432) \\
 & -(15)-(125)-(145)-(15)(23)-(15)(24)-(15)(34)-(1235)-(1245)-(1345)-(15)(234) \\
 & -(1325)-(1425)-(1435)-(15)(243)-(12345)-(12435)-(13245)-(13425)-(14235)-(14325)
\end{align}$$

*summary.*

for a given Young tableau, let $H$ be the set of horizontal permutations (permutations among numbers in the same row) and $V$ be the set of vertical permutations (permutations among numbers in the same column).

the row symmetrizer $P$ is defined as the sum of all horizontal permutations:

$$\begin{align}
P = \sum_{h \in H} h
\end{align}$$

the column antisymmetrizer $Q$ is defined as the signed sum of all vertical permutations:

$$\begin{align}
Q = \sum_{v \in V} \text{sgn}(v) v
\end{align}$$

the Young operator $Y$ is the product of the column antisymmetrizer and the row symmetrizer:

$$\begin{align}
Y = Q P = \left( \sum_{v \in V} \text{sgn}(v) v \right) \left( \sum_{h \in H} h \right)
\end{align}$$

*we have*

$$\begin{align}
(abc)(cde)=(abcde)
\end{align}$$

# problem 2

write down the expansion of identity of $\displaystyle{\mathrm{S}_{4}}$ in terms of Young operators

*sol*.

the partitions of $\displaystyle{\mathrm{S_{4}}}$ is given by $\displaystyle{[4],[3,1],[2,2],[2,1,1],[1,1,1,1]}$. and the standard Yound Tableauxs are

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
\end{tikzpicture},
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
\end{tikzpicture},
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
\end{tikzpicture},
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
\end{tikzpicture},
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (0.5,-0.5) {4};
\node at (0.5,-1.5) {3};
}
\end{tikzpicture},
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

we denote these corresponding Young operators as $\displaystyle{\mathcal{Y}_{a}, a=1,\dots,10}$. the corresponding products of hook lengths $\displaystyle{h_{a}, a=1,\dots,10}$ are

$$\begin{align}
h_{1}=h_{10} & =4\times 3\times2\times 1=24 \\
h_{2}=h_{3}=h_{4}=h_{7}=h_{8}=h_{9} & =8 \\
h_{5}=h_{6} & =12
\end{align}$$

then we have

$$\begin{align}
I & =\frac{1}{24}(\mathcal{Y}_{1}+\mathcal{Y}_{10})+\frac{1}{8}(\mathcal{Y}_{2}+\mathcal{Y}_{3}+\mathcal{Y}_{4}+\mathcal{Y}_{7}+\mathcal{Y}_{8}+\mathcal{Y}_{9})+\frac{1}{12}(\mathcal{Y}_{5}+\mathcal{Y}_{6})
\end{align}$$

*summary*.

the identity element $I$ of the symmetric group $S_n$ can be expanded in terms of the Young operators $\mathcal{Y}_T$ corresponding to all standard Young tableaux $T$:

$$\begin{align}
I = \sum_{T \in \text{SYT}_n} \frac{1}{h_T} \mathcal{Y}_T
\end{align}$$

where $h_T$ is the product of the hook lengths of the tableau $T$. The sum runs over all standard Young tableaux for all partitions of $n$.

for a cell $(i, j)$ in a Young diagram (where $i$ is the row index and $j$ is the column index), the **hook length** $h_{i,j}$ is defined as the number of cells in the same row to the right of $(i, j)$ plus the number of cells in the same column below $(i, j)$ plus 1 (for the cell itself).

$$\begin{align}
h_{i,j} = (\text{cells to the right}) + (\text{cells below}) + 1
\end{align}$$

The value $h_T$ (which depends only on the shape of the tableau) is the product of all hook lengths in the diagram:

$$\begin{align}
h_T = \prod_{(i,j) \in \text{diagram}} h_{i,j}
\end{align}$$

# problem 3

given that the product of the two standard Young operators $\displaystyle{\mathcal{Y}_{1}\mathcal{Y}_{2}}$ is nonzero, and $\displaystyle{R}$ transforms the standard Young tableau $\displaystyle{\mathcal{Y}_{2}}$ into the standard Young tableau $\displaystyle{\mathcal{Y}_{1}}$, express $\displaystyle{R}$ as the product $\displaystyle{P_{2}Q_{2}}$ of a horizontal permutation $\displaystyle{P_{2}}$ and a vertical permutation $\displaystyle{Q_{2}}$ belonging to the Young tableau $\displaystyle{\mathcal{Y}_{2}}$, and then express it as the product $\displaystyle{P_{1}Q_{1}}$ of a horizontal permutation $\displaystyle{P_{1}}$ and a vertical permutation $\displaystyle{Q_{1}}$ belonging to the Young tableau $\displaystyle{\mathcal{Y}_{1}}$.

```tikz
\begin{document}
\def \youngdiagram{4,3,2}
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
\node at (0.5,-0.5) {5};
\node at (1.5,-0.5) {6};
\node at (2.5,-0.5) {7};
\node at (0.5,-1.5) {8};
\node at (1.5,-1.5) {9};
}
\end{tikzpicture},
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
\node at (3.5,0.5) {7};
\node at (0.5,-0.5) {3};
\node at (1.5,-0.5) {5};
\node at (2.5,-0.5) {9};
\node at (0.5,-1.5) {6};
\node at (1.5,-1.5) {8};
}
\end{tikzpicture}
\end{document}
```

*sol*.

by observation, introduce $\displaystyle{R=(3568974)}$

1. express $\displaystyle{R}$ as $\displaystyle{P_{2}Q_{2},P_{2}\in \mathcal{P}_{2},Q_{2}\in \mathcal{Q}_{2}}$
we use the intersection method. for each $\displaystyle{x}$, let $\displaystyle{z=\mathrm{Row}(T_{2},R(x))\cap \mathrm{Col}(T_{2},x)}$. then $\displaystyle{Q_{2}(x)=z}$ and $\displaystyle{P_{2}(z)=R(x)}$.
- for $\displaystyle{x=1}$, $\displaystyle{\mathrm{Row}(T_{2},R(1))=\left\{1,2,4,7\right\},\mathrm{Col}(T_{2},1)=\left\{1,3,6\right\}}$, the intersection is $\displaystyle{\left\{1\right\}}$, so $\displaystyle{1\xrightarrow{Q_{2}}1\xrightarrow{P_{2}} 1}$
- for $\displaystyle{x=2}$, $\displaystyle{\mathrm{Row}(T_{2},R(2))=\left\{1,2,4,7\right\},\mathrm{Col}(T_{2},2)=\left\{2,5,8\right\}}$, the intersection is $\displaystyle{\left\{2\right\}}$, so $\displaystyle{2\xrightarrow{Q_{2}}2\xrightarrow{P_{2}} 2}$
- for $\displaystyle{x=3}$, $\displaystyle{\mathrm{Row}(T_{2},R(3))=\left\{3,5,9\right\},\mathrm{Col}(T_{2},3)=\left\{1,3,6\right\}}$, the intersection is $\displaystyle{\left\{3\right\}}$, so $\displaystyle{3\xrightarrow{Q_{2}}3\xrightarrow{P_{2}} 5}$
- for $\displaystyle{x=4}$, $\displaystyle{\mathrm{Row}(T_{2},R(4))=\left\{3,5,9\right\},\mathrm{Col}(T_{2},4)=\left\{4,9\right\}}$, the intersection is $\displaystyle{\left\{9\right\}}$, so $\displaystyle{4\xrightarrow{Q_{2}}9\xrightarrow{P_{2}} 3}$
- for $\displaystyle{x=5}$, $\displaystyle{\mathrm{Row}(T_{2},R(5))=\left\{6,8\right\},\mathrm{Col}(T_{2},5)=\left\{2,5,8\right\}}$, the intersection is $\displaystyle{\left\{8\right\}}$, so $\displaystyle{5\xrightarrow{Q_{2}}8\xrightarrow{P_{2}} 6}$
- for $\displaystyle{x=6}$, $\displaystyle{\mathrm{Row}(T_{2},R(6))=\left\{6,8\right\},\mathrm{Col}(T_{2},6)=\left\{1,3,6\right\}}$, the intersection is $\displaystyle{\left\{6\right\}}$, so $\displaystyle{6\xrightarrow{Q_{2}}6\xrightarrow{P_{2}} 8}$
- for $\displaystyle{x=7}$, $\displaystyle{\mathrm{Row}(T_{2},R(7))=\left\{1,2,4,7\right\},\mathrm{Col}(T_{2},7)=\left\{7\right\}}$, the intersection is $\displaystyle{\left\{7\right\}}$, so $\displaystyle{7\xrightarrow{Q_{2}}7\xrightarrow{P_{2}} 4}$
- for $\displaystyle{x=8}$, $\displaystyle{\mathrm{Row}(T_{2},R(8))=\left\{3,5,9\right\},\mathrm{Col}(T_{2},8)=\left\{2,5,8\right\}}$, the intersection is $\displaystyle{\left\{5\right\}}$, so $\displaystyle{8\xrightarrow{Q_{2}}5\xrightarrow{P_{2}} 9}$
- for $\displaystyle{x=9}$, $\displaystyle{\mathrm{Row}(T_{2},R(9))=\left\{1,2,4,7\right\},\mathrm{Col}(T_{2},9)=\left\{4,9\right\}}$, the intersection is $\displaystyle{\left\{4\right\}}$, so $\displaystyle{9\xrightarrow{Q_{2}}4\xrightarrow{P_{2}} 7}$

thus we have

$$\begin{align}
Q_{2} & =(49)(58) \\
P_{2} & =(359)(47)(68) \\
P_{2}Q_{2} & =(3568974)=R
\end{align}$$

1. express $\displaystyle{R}$ as $\displaystyle{P_{1}Q_{1},P_{1}\in \mathcal{P}_{1},Q_{1}\in \mathcal{Q}_{1}}$
we look for a vertical permutation $\displaystyle{Q_{1}\in \mathcal{Q}_{1}}$ such that $\displaystyle{Q_{1}T_{2}}$ has the same set of numbers in each row as $\displaystyle{T_{1}}$. this can be easily done by swapping $\displaystyle{(37)}$ and $\displaystyle{(69)}$, so $\displaystyle{Q_{1}=(37)(69)}$. then we need to recover the right order in each row. this is can be easily done by applying $\displaystyle{P_{1}=(34)(567)(89)}$. thus

$$\begin{align}
Q_{1} & =(37)(69) \\
P_{1} & =(34)(567)(89) \\
P_{1}Q_{1} & =(3568974)=R
\end{align}$$

# problem 4

compute the representation matrices of the generators $\displaystyle{(1 2)}$ and $\displaystyle{(1 2 3 4 5)}$ of the symmetric group $\displaystyle{\mathrm{S}_{5}}$ in the irreducible representation labeled by the partition $\displaystyle{[2,2,1]}$ using the tabular method.

*sol*.

the standard Young tableaux of partition $\displaystyle{[2,2,1]}$ are

```tikz
\begin{document}
\def \youngdiagram{2,2,1}
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
\node at (0.5,-1.5) {5};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture},
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
\node at (0.5,-1.5) {5};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {3};
}
\end{tikzpicture}
\end{document}
```

then we have

$$\begin{align}
D^{[2,2,1]}((12)) & =\begin{pmatrix}
1 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 0 \\
0 & 0 & -1 & 0 & 0 \\
0 & 0 & 0 & -1 & 0 \\
0 & 0 & 0 & 0 & -1
\end{pmatrix}
\end{align}$$

$$\begin{align}
D^{[2,2,1]}((23)) & =\begin{pmatrix} \frac{1}{2} & 0 & \frac{\sqrt{ 3 }}{2} & 0 & 0 \\
0 & \frac{1}{2} & 0 & \frac{\sqrt{ 3 }}{2} & 0 \\
\frac{\sqrt{ 3 }}{2} & 0 & -\frac{1}{2} & 0 & 0 \\
0 & \frac{\sqrt{ 3 }}{2} & 0 & -\frac{1}{2} & 0 \\
0 & 0 & 0 & 0 & 1
\end{pmatrix}
\end{align}$$

$$\begin{align}
D^{[2,2,1]}((34)) & =\begin{pmatrix}
1 & 0 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 & 0 \\
0 & 0 & -1 & 0 & 0 \\
0 & 0 & 0 & \frac{1}{3} & \frac{2\sqrt{ 2 }}{3} \\
0 & 0 & 0 & \frac{2\sqrt{ 2 }}{3} & -\frac{1}{3}
\end{pmatrix}
\end{align}$$

$$\begin{align}
D^{[2,2,1]}((45)) & =\begin{pmatrix} \frac{1}{2} & \frac{\sqrt{ 3 }}{2} & 0 & 0 & 0 \\
\frac{\sqrt{ 3 }}{2} & -\frac{1}{2} & 0 & 0 & 0 \\
0 & 0 & \frac{1}{2} & \frac{\sqrt{ 3 }}{2} & 0 \\
0 & 0 & \frac{\sqrt{ 3 }}{2} & -\frac{1}{2} & 0 \\
0 & 0 & 0 & 0 & -1
\end{pmatrix}
\end{align}$$

$$\begin{align}
D^{[2,2,1]}((12345)) & =D^{[2,2,1]}((12))D^{[2,2,1]}((23))D^{[2,2,1]}((34))D^{[2,2,1]}((45)) \\
 & =\begin{pmatrix} \frac{1}{4} & \frac{\sqrt{ 3 }}{4} & -\frac{\sqrt{ 3 }}{4} & -\frac{3}{4} & 0 \\
-\frac{\sqrt{ 3 }}{4} & \frac{1}{4} & \frac{1}{4} & -\frac{\sqrt{ 3 }}{12} & -\frac{\sqrt{ 6 }}{3} \\
-\frac{\sqrt{ 3 }}{4} & -\frac{3}{4} & -\frac{1}{4} & -\frac{\sqrt{ 3 }}{4} & 0 \\
\frac{3}{4} & -\frac{\sqrt{ 3 }}{4} & \frac{\sqrt{ 3 }}{12} & -\frac{1}{12} & -\frac{\sqrt{ 2 }}{3} \\
0 & 0 & -\frac{\sqrt{ 6 }}{3} & \frac{\sqrt{ 2 }}{3} & -\frac{1}{3}
\end{pmatrix}
\end{align}$$

*summary*.

for a partition $\lambda$ of $S_n$, the irreducible representation matrices for adjacent transpositions $\sigma_i = (i, i+1)$ can be constructed using the standard Young tableaux (SYT) of shape $\lambda$.

let $T_1, T_2, \dots, T_f$ be the standard Young tableaux of shape $\lambda$ in a fixed order (usually lexicographical). The matrix representation $D(\sigma_i)$ is an $f \times f$ matrix with elements $D(\sigma_i)_{ab}$:

1.  **Diagonal Elements:**
	1. if $i$ and $i+1$ are in the same row in $T_a$, then $D(\sigma_i)_{aa} = 1$.
	1. if $i$ and $i+1$ are in the same column in $T_a$, then $D(\sigma_i)_{aa} = -1$.
	1. otherwise, $D(\sigma_i)_{aa} = -1/d_{i,i+1}(T_a)$, where $d_{i,i+1}(T_a)$ is the **axial distance** from $i$ to $i+1$ in $T_a$.
	1. *axial distance* $d(u, v)$ is defined as $(c_v - c_u) - (r_v - r_u)$, where $(r, c)$ are row and column indices (1-based). So if $v$ is to the right and above $u$, distance is positive.
1.  **Off-Diagonal Elements:**
	1. if $T_b$ is obtained from $T_a$ by swapping $i$ and $i+1$ (this is only possible if they are not in the same row or column), then:$$ D(\sigma_i)_{ab} = \sqrt{1 - \frac{1}{d_{i,i+1}(T_a)^2}} $$
	1. note that $D(\sigma_i)_{ba} = D(\sigma_i)_{ab}$.
	1. otherwise, $D(\sigma_i)_{ab} = 0$.

for a general permutation $\pi$, decompose it into adjacent transpositions and multiply the matrices.
for the cycle $(1~2~3~4~5)$, we can write it as $(1~2)(2~3)(3~4)(4~5)$.

# problem 5

compute the characters of all conjugacy classes in the symmetric group $\displaystyle{\mathrm{S}_{6}}$ for the following irreducible representations using the method of equivalent:
1. $\displaystyle{[3,2,1]}$
1. $\displaystyle{[3,3]}$
1. $\displaystyle{[2,2,2]}$

*sol*. the character table of $\displaystyle{\mathrm{S}_{6}}$ are summarized as follows

$$
\begin{array}{c|cccc}
 & (1)^{6} & (1^{4},2) & (1^{3},3) & (1^{2},2^{2}) & (1^{2},4) & (1,2,3) & (1,5) & (6) & (2^{3}) & (2,4) & (3^{2}) \\
\hline
[3,2,1] & 16 & 0 & -2 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & -2 \\
[3,3] & 5 & 1 & -1 & 1 & -1 & 1 & 0 & 0 & -3 & -1 & 2 \\
[2,2,2] & 5 & -1 & -1 & 1 & 1 & -1 & 0 & 0 & 3 & -1 & 2
\end{array}
$$

see [Murnaghan-Nakayama rule](https://en.wikipedia.org/wiki/Murnaghan%E2%80%93Nakayama_rule)

# problem 6

write down separately the real orthogonal representation matrix forms of the adjacent transposition $\displaystyle{P_{a}}$ in the irreducible representations $\displaystyle{[3,3]}$ and $\displaystyle{[2,2,2]}$ of the $\displaystyle{S_{6}}$ group. because the following two representations are equivalent

$$\begin{align}
[2,2,2]\simeq [1^{6}]\times[3,3]
\end{align}$$

calculate the similarity transformation matrix between them.

*sol*.

the standard Young tableaux of representation $\displaystyle{[3,3]}$ are

```tikz
\begin{document}
\def \youngdiagram{3,3}
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
\node at (1.5,-0.5) {5};
\node at (2.5,-0.5) {6};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (2.5,-0.5) {6};
}
\end{tikzpicture},
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (2.5,0.5) {5};
\node at (0.5,-0.5) {3};
\node at (1.5,-0.5) {4};
\node at (2.5,-0.5) {6};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (2.5,-0.5) {6};
}
\end{tikzpicture},
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (2.5,0.5) {5};
\node at (0.5,-0.5) {2};
\node at (1.5,-0.5) {4};
\node at (2.5,-0.5) {6};
}
\end{tikzpicture}
\end{document}
```

denoted as $\displaystyle{\mathcal{Y}_{1,2,3,4,5}^{[3,3]}}$. and of representation $\displaystyle{[2,2,2]}$

```tikz
\begin{document}
\def \youngdiagram{2,2,2}
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {3};
\node at (1.5,-1.5) {6};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
\node at (1.5,-1.5) {6};
}
\end{tikzpicture},
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
\node at (0.5,-1.5) {5};
\node at (1.5,-1.5) {6};
}
\end{tikzpicture},
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
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
\node at (1.5,-1.5) {6};
}
\end{tikzpicture},
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
\node at (0.5,-1.5) {5};
\node at (1.5,-1.5) {6};
}
\end{tikzpicture}
\end{document}
```

denoted as $\displaystyle{\mathcal{Y}^{[2,2,2]}_{1,2,3,4,5}}$, and $\displaystyle{\mathcal{Y}^{[2,2,2]}_{a}}$ is exactly the transpose of $\displaystyle{\mathcal{Y}^{[3,3]}_{a},a=1,2,3,4,5}$. now we need to find a matrix $\displaystyle{U}$ that satisfies

$$\begin{align}
D^{[2,2,2]}(P_{a})=-U^{-1}D^{[3,3]}(P_{a})U
\end{align}$$

by summary of problem 4:
- axial distance $\displaystyle{d^{[2,2,2]}_{a}(k,k+1)=-d^{[3,3]}_{a}(k,k+1)}$
then
- diagonal elements, $\displaystyle{D^{[2,2,2]}_{aa}(P_{a})=-D_{ab}^{[3,3]}(P_{a})}$
- off-diagonal elements, $\displaystyle{D^{[2,2,2]}_{ab}(P_{a})=D^{[3,3]}_{ab}(P_{a})}$

then

$$\begin{align}
D^{[2,2,2]}_{ab} & =-(U^{-1}D^{[3,3]}U)_{ab} \\
 & =-u_{a}^{-1}D_{ab}^{\lambda}u_{b}
\end{align}$$

for off-diagonal elements, this implies $\displaystyle{u_{b}=-u_{a}}$, which means $\displaystyle{U}$ is a diagnal matrix. using diagonal elements, we get

$$\begin{align}
U & =\begin{pmatrix}
1 \\
 & -1 \\
 &  & 1 \\
 &  &  & 1 \\
 &  &  &  & -1
\end{pmatrix}
\end{align}$$

# problem 7

using the Littlewood-Richardson rule, compute the reduction of the following outer products of permutation group representations:
1. $\displaystyle{[3,2,1]\otimes[3]}$
1. $\displaystyle{[3,2]\otimes[2,1]}$
1. $\displaystyle{[2,1]\otimes[4,2^{3}]}$

*sol*.
we have

$$\begin{align}
[3,2,1]\otimes [3] & =[6,2,1]\oplus [5,3,1]\oplus [5,2^{2}]\oplus [5,2,1^{2}]\oplus [4,3,2]\oplus [4,3,1^{2}]\oplus [4,2^{2},1]\oplus [3^{2},2,1] \\
[3,2]\otimes [2,1] & =[5,3]\oplus [5,2,1]\oplus [4^{2}]\oplus [4,3,1]\oplus [4,3,1]\oplus [4,2^{2}]\oplus [4,2,1^{2}]\oplus [3^{2},2]\oplus [3^{2},1^{2}] \\
[4,2^{3}]\otimes [2,1] & =[6,3,2^{2}]\oplus [6,2^{3},1]\oplus [5,4,2^{2}]\oplus [5,3^{2},2]\oplus [5,3,2^{2},1]\oplus [5,3,2^{2},1]\oplus [5,3,2^{3}]\oplus [5,3,2^{2},1^{2}] \\
 & \oplus [4,3^{2},2,1]\oplus [4,3,2^{3}]\oplus [4,3,2^{2},1^{2}]
\end{align}$$

*summary*. see [Littlewood-Richardson rule](https://en.wikipedia.org/wiki/Littlewood%E2%80%93Richardson_rule)

# problem 8

using the Littlewood-Richardson rule, compute the restriction of the following irreducible representations of the group $S_6$ to the subgroup $S_3 \otimes S_3$, and decompose them into irreducible representations of the subgroup.
1. $[4,2]$
1. $[2,2,1,1]$
1. $[3,3]$

*sol*.

we have

$$\begin{align}
[4,2] & \simeq[3]\otimes[3]\oplus [3]\otimes [2,1]\oplus [2,1]\otimes  [3]\oplus [2,1]\otimes [2,1] \\
[2,2,1,1] & \simeq [1^{3}]\otimes [2,1]\oplus [2,1]\otimes [2,1] \\
[3,3] & \simeq[3]\otimes [3]\oplus [2,1]\otimes [2,1]
\end{align}$$
