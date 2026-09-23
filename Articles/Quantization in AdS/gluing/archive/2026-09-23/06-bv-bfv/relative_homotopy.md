# Product collar 上的相对光滑化：Abelian complex 的进一步修补

**结果。** 对本目录的 neatly cut disk cylinder，在所有 surviving exterior faces的资料已满足全局smooth joint trace条件的域上，可显式构造保持这些外部资料的 de Rham chain homotopy equivalence。它适用于 Abelian CS 的linear BV complex，并给 pairing 的chain-homotopy比较；不是任意 smooth functional algebra的dg equivalence定理。

这是本次反例审查后另行给出的构造。它不把 Cattaneo–Mnev 的closed-cut定理直接外推到corners，也不使用未经构造的「有一个relative smoothing operator」作为假设。

## 1. 几何与两个精确的域

令 $M=I\times D$，$\Gamma=I\times\gamma$。$\gamma$ 是横截物理外圆的smooth chord。固定与真实外墙和time caps相容的product collars，使 $\Gamma$ 的邻域为
$$
U=(-\varepsilon,\varepsilon)_x\times\Gamma.
$$
$x$ 是切面的法向，collar缩放 $x\mapsto\tau x$ 保持每个surviving exterior face。对这类neat transverse切割可在端点角坐标中选这种collar，再沿 $\Gamma$延拓；不声称任意切面与任意高阶物理边界算子都已有这种结构。

用未shift的de Rham记号，定义
$$
G=\Omega^\bullet(M),\qquad
P=\{(\omega_-,\omega_+):j_-^*\omega_-=j_+^*\omega_+\text{ on }\Gamma\}.
$$
$P$ 包含piecewise smooth forms；只匹配pullback，不匹配全部normal jets。令 $r$ 为**surviving exterior boundary**的pullback，包括两个caps和物理wall。定义
$$
P_{\rm ext}=\{\omega\in P:r\omega\text{ 在装配后的每个外face光滑，且有相容的joint corner traces}\}.
\tag{1.1}
$$
条件是源侧明确的facewise jet equations：在旧cut落在同一surviving face上的位置，全部tangential jets相同；真实transverse corners使用joint form traces。不是把global observable的逆像拿来定义source。$dP_{\rm ext}\subset P_{\rm ext}$。

**必要的反例。** 若没有(1.1)，外wall上可有拼合为 $s^2$ 与 $2s^2$ 的局部connection分量；seam端点值相容却不是 $C^2$。即使局部另取 $A_t=va_s$ 也可如此，因为这里是off shell。任何保持该整个外部trace的map都不可能输出smooth global form。因此「保持任意piecewise external data的relative smoothing」本身为假。

## 2. 一个真实的外boundary extension

令 $B_{\rm ext}$ 是smooth exterior joint form traces。选连续线性extension
$$
E:B_{\rm ext}^p\longrightarrow\Omega^p(M),\qquad rE=1.
\tag{2.1}
$$
这里可以实际构造，不需要global logarithm或Borel选择任意无限normal jets。单一face用collar pullback乘固定cutoff。两个transverse faces的交处，对各切向分量用
$$
\pi_1^*b_1+\pi_2^*b_2-\pi_{12}^*b_{12};
$$
只出现在一条face上的normal-to-the-other-face分量按该face延拓。Joint pullbacks保证重复项相同。用固定finite partition of unity组合；两time caps彼此不交。每个操作在 $C^\infty$ Fréchet seminorms下连续。这只延拓boundary **values of forms**，没有宣称任意无限normal jet都有连续线性section。

一般 $Ed\ne dE$。下面的构造特意不要求它是cochain map。

## 3. 法向积分homotopy

在product collar写
$$
\omega=\alpha(x)+dx\wedge\beta(x),\quad
K\omega(x)=\int_0^x\beta(u)\,du,\quad
P_0\omega=\alpha(0).
$$
两片的 $\alpha(0)$ 相同，$\beta$ 可以跳。直接计算给
$$
dK+Kd=1-P_0.
\tag{3.1}
$$
例如 $d\omega=d_\Gamma\alpha+dx\wedge(\partial_x\alpha-d_\Gamma\beta)$；代回积分即得(3.1)，不需要场满足EOM。

取 $\chi(x)=1$ 在seam附近、在collar边缘为零；令 $H_0=\chi K$，在collar外延拓为零。则
$$
p_0=1-dH_0-H_0d
=(1-\chi)\omega+\chi P_0\omega-d\chi\wedge K\omega
\tag{3.2}
$$
输出smooth global form：seam附近恰为 $P_0\omega$，过渡带本来就光滑。但 $p_0$ 一般会改变外墙资料。

Product collar保证 $rH_0$ 仅依赖 $r\omega$，并将 $P_{\rm ext}$ 的smooth exterior traces映成smooth joint traces。因此下式每一项都有定义：
$$
\boxed{H=(1-Er)H_0,\qquad p=1-dH-Hd.}
\tag{3.3}
$$
首先 $rH=0$，所以
$$
rp=r,\qquad dp=pd.
\tag{3.4}
$$
其次
$$
p=p_0+dErH_0+ErH_0d.
\tag{3.5}
$$
后两项都是global smooth forms；所以 $p:P_{\rm ext}\to G$。这证明smoothness时没有把 $E$ 当cochain map。所有算子由固定积分、differentiation、trace与(2.1)组成，故在上述Fréchet域连续。

令 $i:G\hookrightarrow P_{\rm ext}$ 为restriction。$H$ 在smooth fields上仍smooth，记该restriction为 $H_G$。从定义逐项得到
$$
1-ip=dH+Hd,\qquad 1-pi=dH_G+H_Gd,
\qquad rH=rH_G=0.
\tag{3.6}
$$
**命题 H1。** $(i,p,H_G,H)$ 是relative-to-exterior的连续linear cochain homotopy equivalence。它不要求 $pi=1$，也不声称 $p$ 是projection。

### 可算的corner例子

在二维toy collar，cut为 $x=0$，外face为 $y=0$，$E$ 对外face标量沿 $y$ 常值延拓。在 $\chi=1$ 邻域，(3.3)给
$$
pf=f(0,y)+f(x,0)-f(0,0),
$$
$$
p(a\,dx+b\,dy)=a(x,0)\,dx+b(0,y)\,dy,
\qquad p(h\,dx\wedge dy)=0.
\tag{3.7}
$$
它清楚地保持外face trace、消除normal jump并与 $d$ 交换。相同公式与额外时间坐标作product即可理解实际corner。Mathematica检查了cutoff一般形式的chain identities、trace不变和(3.7)，也检查了两份normal二阶jet不同的functions光滑化到同一个输出。

## 4. Pairing 的homotopy correction

以下明确使用cochain shift $\mathcal E^j=\Omega^{j+1}$，differential仍记作 $d$。为固定移位符号，对齐次 $p$-form $u$、$q$-form $v$，定义degree $-1$ pairing
$$
B(u,v)=\kappa(-1)^p\int_Mu\wedge v\quad(p+q=3),
\tag{4.1}
$$
其他degrees为零。它是shifted BV integral pairing的一种明确degreewise sign presentation；转换回superfield形式时必须携带这个shift，不能改变普通CPS (1.2)的符号。

在 $P_{\rm ext}$ 上用两片积分相加定义 $\widetilde B$，有 $i^*\widetilde B=B$。令 $D_\otimes(u\otimes v)=du\otimes v+(-1)^{|u|}u\otimes dv$。Stokes给 $\widetilde B D_\otimes$ 为外boundary pairing；内部seam项因pullback匹配而抵消。

令 $F=ip$，并在graded tensor product上取
$$
K_\otimes=H\otimes1+F\otimes H,
\quad
K_\otimes(u\otimes v)=Hu\otimes v+(-1)^{|u|}Fu\otimes Hv.
$$
因为 $1-F=dH+Hd$，
$$
1-F\otimes F=D_\otimes K_\otimes+K_\otimes D_\otimes.
\tag{4.2}
$$
第一项经 $\widetilde B$配对为零：它的Stokes boundary表达中每一项都有一个 $rH=0$ 的因子。因此
$$
\boxed{\widetilde B-p^*B=(\widetilde B K_\otimes)D_\otimes.}
\tag{4.3}
$$
这是显式pairing cochain homotopy。若用Hom-complex differential $d_{\rm Hom}\beta=-(-1)^{|\beta|}\beta D_\otimes$，$|\widetilde B K_\otimes|=-2$，则 $p^*B-\widetilde B=d_{\rm Hom}(\widetilde B K_\otimes)$。取相应graded antisymmetrization就给2-form presentation的同一修正。并未声称 $p$ 严格保持BV pairing。

**命题 H2。** H1同时保留移位integral pairing到relative chain homotopy。上面的tensor identity是一般代数证明；一个最小acyclic complex的矩阵检查另外检验了其Koszul sign。

## 5. 与physical CS的关系

因为 $p$ 保留所有exterior superfield traces，它保持相同的外墙chiral条件、proper ghost在外墙为零的条件，以及原来的temporal cap资料。这个linear realized subcomplex对 $d$ 稳定：proper ghost的外墙pullback为零，其切向导数也为零；$A^+$的boundary资料没有为删除EOM而被强制清空。$H$ 的boundary trace全零，同样保持这些齐次variation条件。

对classical flat field $dA=0$，(3.3)化为
$$
pA=A-d(HA),\qquad HA|_{\rm exterior}=0.
\tag{5.1}
$$
它是一份明确的regional real gauge correction，seam的两份参数有共同trace、端点为零。因而与实际released cut group相容，没有非零winding。这个arrow及原field一起保存；使用 $p$ 并不授权删除bulk proper directions。对已经smooth的global field，$pi$与identity之间也由一个smooth global proper correction联系。

需要区分：$p$可改变内部seam的history/representative，并按 $q\mapsto q-\partial_t(HA)|_\gamma$运输它；它保留的是输出的真实外boundary problem，不是每个已释放人工source的数值。

**Extension/cutoff选择不是新的物理参数。** 对同一个inclusion $i$，另一次构造记为 $p',H'$。令
$$
R=pH'-H_Gp'.
$$
则 $R:P_{\rm ext}\to G[-1]$ 连续且 $rR=0$，并有
$$
p-p'=p(1-ip')+(pi-1)p'=dR+Rd.
\tag{5.2}
$$
因此不同构造由显式relative chain homotopy比较；这里没有宣称原始raw maps严格相同，也没有由两两homotopy直接推出全部higher coherence。物理boundary currents因 $rp=rp'=r$ 而直接相同。

## 6. 这次修补证明了什么

H1/H2补上了指定product-collar、exterior-smooth域内的**linear cochain及pairing**比较。原来「只因原论文未覆盖corners而全部搁置」的缺口在这个范围内已实际修补。

仍不能写成无条件的原始公式：

- $P_{\rm ext}$不同于允许任意piecewise external资料的naive strict fiber product；后者有§1的明确反例。
- 带 physical realization 的 full corner diagram 必须实际构造；后续 [CD1](corner_descent.md) 已给 chiral wall/unfixed caps 的连续复形及 sections，不再只引用 unrestricted submersions。额外固定 cap 数值或换 realization 要重验。
- 连续 linear cochain homotopy 仍不自动证明任意 smooth/local/microcausal functional complexes 的等价。后续 [O1–O3](continuous_observables.md) 用实际 tensor/dual homotopy 处理 finite-degree continuous polynomials，并另证 Hamiltonian 类的 Poisson 比较。
- H1/H2 本身没有对 non-Abelian Q、bundle topology、quantum pushforward 或所有 higher coherence 作同一推论。后续 [NR](nonabelian_relative_descent.md) 使用这里额外的 Hi=iH_G 实际构造 formal nonlinear inverse；[FC](finite_cut_coherence.md) 处理声明的有限 conical refinements。Compact/quantum 与任意 reopening 的结论仍未由此证明。

**Verified:** (3.1)–(3.6)与(4.2)–(4.3)有显式解析证明；9项新增Mathematica检查核对corner例子、外trace保持和tensor sign。

**Assumptions:** neat product collar、finite smooth corner geometry、(1.1)的actual exterior smooth joint traces、固定连续extension及cutoff、Abelian de Rham differential。

**Not verified:** 更大 domain、total corner model 的非退化 local symplectic/action enhancement、任意 functional 类及非线性/量子扩展。指定线性图与 continuous polynomial 后续进展见 CD1/O1–O3。
