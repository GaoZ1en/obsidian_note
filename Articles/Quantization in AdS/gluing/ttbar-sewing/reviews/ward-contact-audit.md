# Independent audit of the symmetric time-split contact prescription

## Result

**The Euclidean-endpoint version passes the stated first-order energy test, but its natural action on fermions fails a nonlinear Jacobi test.** It therefore cannot, without changing or supplementing the prescription, be treated as an operator-commutator algebra. This conclusion is distinct from the narrower question of flat-space energy-current closure.

For the second-order energy Ward identity, the pure-chiral sector and the normalization $\int h_2=V_2$ impose the necessary condition

$$u=-\frac{1}{180\pi^2}.$$

This is a necessary contact-scheme coefficient, not a complete second-order solution and not a spectral determination. The mixed four-leg Ward equations have not been solved in this audit.

The decisive nonlinear result is

$$
\left([D_{V_1},D_G]-D_{\int\mathcal C(V_1,g)}\right)R
\big|_{\text{one right fermion}}
=-\frac{1079}{41287680\pi^2}R^{(7)}\ne0,
\qquad G=\int g,\quad g=r l'=\frac14:RR'LL'':.
$$

Here $\mathcal C(V_1,g)$ means the local density obtained by integrating the first argument of the prescribed contact operation; its spatial integral is the generator in the third term. The action $D_A$ uses the **same prescription**, naturally extended from two even observables to an even generator and an odd local observable, with the ordinary even-odd commutator subtraction. The Jacobi result disproves that extension; it does not by itself rule out a different, separately defined odd action or a bosonic-only bracket.

## Scope and independence

I read only the applicable workspace [AGENTS](</Users/koishi/Documents/Note/AGENTS.md>), [Quantization-in-AdS AGENTS](</Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>) and the relevant CPS/quantization conventions in [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L145>). I did not read any pre-existing second-order review, candidate result, or project computation script, and did not receive another reviewer's candidate conclusions. The only calculation sources read or executed were the new audit sources created here.

The delegation was narrowed to the pure-chiral necessary condition and then to the nonlinear Jacobi test; no attempt at the full second-order four-leg system was made. This reviewer is itself the fresh independent subagent. A further subdelegation was unavailable at the permitted depth. The two implementations below are independent calculation methods, not two independent human/agent reviewers.

Only these new files were created:

- [Python/Sage verification](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.py>): complete cross-Wick enumeration, exact local first-order/pure-second-order Ward coefficients, and two Jacobi implementations.
- [Wolfram verification](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.wl>): an independent determinant/residue calculation of the Jacobi coefficient.
- This review. No existing project note or script was modified.

## Conventions that define the audited scheme

The CAR, normalization and generators are

$$\{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y),\qquad\{R,L\}=0,$$
$$r=-\frac i2:RR':,\quad l=\frac i2:LL':,\quad c=\frac12,\quad\kappa=\frac1{48\pi},$$
$$h_0=r+l,\quad V_1=-4\int rl=-\int:RR'LL':,\quad
h_1=-4rl+4\kappa(r+l)'',$$
$$H=H_0+\lambda V_1+\lambda^2V_2,\qquad D_0R=-R',\quad D_0L=L'.$$

The canonical frame $p_1=p_2=0$ is retained. No factorial is attached to $V_2$. All composites and Taylor coefficients are infinite-plane fermion Wick products. The spatial integral is periodic; total spatial derivatives vanish only after integration, never before computing a local coefficient. The CPS convention $\dot O=i[H,O]$ agrees with the convention used here.

I audit the following explicit interpretation of the time split, confirmed in the delegation:

$$R(x,\tau)=R(x+i\tau),\qquad L(x,\tau)=L(x-i\tau).$$

For the first product, $A(y,+\epsilon/2)B(x,-\epsilon/2)$, the uncontracted coordinates relative to $(x,0)$ are

| endpoint | right field | left field |
|---|---|---|
| upper $A$ | $s+i\epsilon/2$ | $s-i\epsilon/2$ |
| lower $B$ | $-i\epsilon/2$ | $+i\epsilon/2$ |

For the reverse product, upper $B(x,+\epsilon/2)$ has coordinates $\pm i\epsilon/2$, while lower $A(y,-\epsilon/2)$ has $s\mp i\epsilon/2$. This matters: a scheme Taylor-expanding only the spatial separation is not the scheme tested here.

The cross contractions and all their spatial derivatives are used literally:

$$C_R(s,\epsilon)=\frac{i}{2\pi(s+i\epsilon)},\qquad C_L(s,\epsilon)=-\frac{i}{2\pi(s-i\epsilon)}.$$

For chirality $\chi=+1$ (right) or $-1$ (left), upper derivative $a$, lower derivative $b$, and upper-minus-lower spatial separation $\eta s$,

$$C_{\chi;ab}(\eta s)=\frac{\chi i}{2\pi}(-1)^a\frac{(a+b)!}{(\eta s+\chi i\epsilon)^{a+b+1}}.$$

Every partial cross matching is included, with its fermionic Wick sign. Uncontracted jets are canonically ordered; a repeated identical jet vanishes. No Wick-Leibniz property of $D_A$ is assumed in computing a nested contact bracket.

### Finite part and residues

If a contraction pattern has total pole degree $P$, the finite part comes only from Taylor order $P-1$. Its homogeneity permits setting $\epsilon=1$ **after** making that selection. With the external factor $i$ in the bracket,

$$i\int_{\mathbb R} ds\,F(s)=-\pi\left(\operatorname{Res}_{s=i}F-\operatorname{Res}_{s=-i}F\right)$$

when termwise polynomial tails are defined symmetrically. For each of the three combined rational integrands in the independent Jacobi calculation, $\lim_{s\to\infty}sF(s)=0$ exactly. Consequently this result also equals ordinary upper-half-plane contour closure; the reported defect is not an arc-at-infinity convention.

## First tests: keep local and integrated statements distinct

### Free calibration

The exact local results include

$$\mathcal C(H_0,R)=-R',\qquad \mathcal C(H_0,:RR':)=-:RR'':.$$

Thus both the normalization and the sign of $D_0$ are calibrated independently of the interacting Ward equations.

### Integrated self-bracket

At every finite $\epsilon$, the double integral of the two terms in $\mathcal C(V_1,V_1)$ cancels by the dummy-variable exchange $x\leftrightarrow y$. The symmetric regulator and identical integration domains preserve this statement before taking FP:

$$\int dx\,\mathcal C(V_1,v_1)(x)=0,\qquad v_1=-:RR'LL':.$$

This is an exact endpoint-swap argument, not an assumption that the operation is a legitimate equal-time bracket. It also does **not** mean the local density vanishes. The computed local bilinear part is

$$\mathcal C(V_1,v_1)\big|_2=\frac i{\pi^2}\sum_{\psi=R,L}\left[-\frac{247}{92160}\psi\psi^{(6)}+\frac{33}{2560}\psi'\psi^{(5)}+\frac1{2048}\psi''\psi^{(4)}\right].$$

Each displayed bilinear integrates to zero on the circle. The full local four-leg self-bracket was not printed or solved; it is not needed for the exact double-integral cancellation proof.

### First-order local energy Ward

The direct output, expressed with right fields before left fields, is

$$\begin{aligned}
\mathcal C(V_1,h_0)={}&-:RR''LL':+:RR'LL'':\\
&-\frac i{24\pi}:\left(RR^{(4)}+2R'R'''+LL^{(4)}+2L'L'''\right):.
\end{aligned}$$

It obeys, locally and before quotienting total derivatives,

$$D_0h_1+\mathcal C(V_1,h_0)=0.$$

This is the first-order **energy** Ward test. The supplied $q_1$ was not used to claim a separate momentum Ward calculation.

## Pure-chiral second-order necessary condition

Take all three integrated coefficients unknown:

$$V_2=uQ_5+vK_{42}+wK_{33}.$$

Use exactly the stated plane-Wick $h_2$ ansatz, with pure part

$$h_2\big|_2=i\{a(RR^{(5)}-LL^{(5)})+b(R'R^{(4)}-L'L^{(4)})+c_6(R''R'''-L''L''')\}.$$

For each right bilinear $(RR^{(6)},R'R^{(5)},R''R^{(4)})$, and with the identical left mirror, the computed sources after dividing by $i$ are

| term | $06$ | $15$ | $24$ |
|---|---:|---:|---:|
| $\mathcal C(V_1,h_1)$ | $-63/(10240\pi^2)$ | $-23/(23040\pi^2)$ | $-311/(18432\pi^2)$ |
| $\mathcal C(Q_5,h_0)$ | $-1$ | $+1$ | $0$ |
| $\mathcal C(K_{42},h_0)$ | $19/(240\pi)$ | $11/(40\pi)$ | $5/(16\pi)$ |
| $\mathcal C(K_{33},h_0)$ | $-1/(24\pi)$ | $-1/(6\pi)$ | $-5/(24\pi)$ |

Therefore the three local Ward equations are

$$\begin{aligned}
0&=-a-u+\frac{19v}{240\pi}-\frac{w}{24\pi}-\frac{63}{10240\pi^2},\\
0&=-a-b+u+\frac{11v}{40\pi}-\frac{w}{6\pi}-\frac{23}{23040\pi^2},\\
0&=-b-c_6+\frac{5v}{16\pi}-\frac{5w}{24\pi}-\frac{311}{18432\pi^2}.
\end{aligned}$$

They have solutions for $a,b,c_6$ at arbitrary $u,v,w$ if the integral normalization is omitted. However, periodic integration of the actual energy density requires

$$a-b+c_6=u,\qquad d-e=v,\qquad f-2e=w.$$

Solving the three pure equations gives

$$a-b+c_6=-5u-\frac1{30\pi^2},$$

where the $v,w$ terms cancel exactly. Combining with $a-b+c_6=u$ yields the stated necessary $u=-1/(180\pi^2)$. The quantum identity used here is

$$-\frac{63}{10240}-\frac{95}{18432}-\frac{203}{9216}=-\frac1{30}.$$

No value of $v,w$ is established by the pure sector. No conclusion about a complete local $h_2$ or $q_2$ follows from these equations alone.

## Nonlinear Jacobi: decisive obstruction for the natural odd extension

The first actions agree with direct CAR calculations:

$$D_{V_1}R=i(2R'LL'+RLL''),$$
$$D_GR=-\frac i4\{2R'LL''+R(L'L''+LL''')\}.$$

For the next action, each cubic composite must be treated as its own local plane-Wick observable. Applying the contact rule again is **not** replaced by formally differentiating the Wick product. Exact outputs are

$$D_{V_1}D_GR\big|_1=\frac{236489}{82575360\pi^2}R^{(7)},$$
$$D_GD_{V_1}R\big|_1=-\frac{236489}{82575360\pi^2}R^{(7)},$$
$$D_{\int\mathcal C(V_1,g)}R\big|_1=\frac{29}{5040\pi^2}R^{(7)}.$$

A useful intermediate integrated coefficient is

$$\int\mathcal C(V_1,g)\big|_{RR^{(7)}}=\frac{29i}{10080\pi^2}\int:RR^{(7)}:.$$

Indeed $i[q\int RR^{(7)},R]=-2iqR^{(7)}$. Their exact difference is nonzero as stated at the beginning. Higher-fermion terms cannot cancel a one-fermion operator coefficient. A nonzero Fourier mode of $R$ tests it directly: $R^{(7)}\mapsto(ik)^7R_k$, nonzero for $k\ne0$ on the circle. This is a local operator failure, not an integrated total derivative discarded in a charge test.

### Independent calculation path

For two fully contracted left bilinears, use the determinant

$$W_{ab;mn}=-C_{L;am}C_{L;bn}+C_{L;an}C_{L;bm}.$$

For an upper right bilinear and lower $R^{(k)}$, the one-contraction term is

$$C_{R;1k}R_0(\text{upper})-C_{R;0k}R_1(\text{upper}).$$

Multiplying these expressions yields only four triple-contraction terms, with no generic matching enumeration. To project an uncontracted right field to $R^{(7)}$, its upper/lower coordinate is raised to power $7-d$ and divided by $(7-d)!$. For the charge $\int\mathcal C(V_1,g)$, integrate the remaining right bilinear by parts first: the coefficient of $\int RR^{(7)}$ from endpoint derivatives $d,e$ is

$$(-1)^d\frac{(z_B-z_A)^{7-d-e}}{(7-d-e)!}.$$

This determinant method and generic matching method agree exactly. The determinant method was also independently translated to Wolfram Language; its fresh kernel returned the same five rational coefficients, zero tails, `ExactChecks -> True`, `Failed -> False`, and `Messages -> {}`.

## Verification record, failures and messages

**Verified:**

1. Fresh SageMath 10.9 / SymPy 1.14.0: generic full cross-matching computation; free sign calibration; complete first-order local energy Ward; pure-chiral second-order coefficient table and $u$ necessity; nonlinear Jacobi coefficient.
2. A second determinant/rational-integrand implementation, also in a fresh Sage call: identical $x,y,z$ and Jacobi coefficients; all three $1/s$ tails exactly zero.
3. Fresh Wolfram Engine: independent implementation of those rational integrals, with the same exact coefficients and no messages. Evidence: [Wolfram kernel result](</Users/koishi/.codex/mcp-results/evaluate_mathematica-NdN7G6/result.txt>). Earlier generic pure-sector output: [Sage kernel result](</Users/koishi/.codex/mcp-results/sage_run-95pyCX/result.txt>); generic Jacobi output: [Sage Jacobi result](</Users/koishi/.codex/mcp-results/sage_run-8brVIT/result.txt>).
4. The final saved Python audit source itself was executed in a fresh Sage kernel via `runpy.run_path(..., run_name='__main__')`; all exact assertions passed. The final saved Wolfram source was also executed with `Get` in a fresh kernel: [saved-source verification](</Users/koishi/.codex/mcp-results/evaluate_mathematica-RT2Eck/result.txt>), again with `ExactChecks -> True`, zero tails and no messages.

**Recorded failures/messages:** Two exploratory Sage calls encountered `TypeError: not able to determine a substitution from s`. Their exact issue was Sage preparsing/coercion of numeric literals interacting with a SymPy expression, not a nonzero Ward residual. The final source runs as ordinary Python, sympifies residue numerators explicitly, and casts pole degrees to Python `int`; its exact assertions passed. Some Sage/SymPy residue calls also emitted `DeprecationWarning: bitcount function is deprecated`. No mathematical failure was hidden by suppressing these messages. The independent Wolfram check emitted no messages. Initial subagent startup trouble was infrastructure-only, not treated as a mathematical defect.

**Assumptions:** Euclidean Taylor shifts specified above; plane Wick products; all cross contractions; periodic spatial integration; energy density integrates to the Hamiltonian order by order; the same contact rule is used for even-generator/odd-observable actions in the Jacobi test.

**Not verified:** Full four-leg second-order energy or momentum Ward closure; determination of $v,w,d,e,f$; a bosonic-only Jacobi identity; existence of a different consistent odd extension; classification of all finite contact counterterms; a full metric/Hilbert-stress source completion. In particular, neither the first-order pass nor the necessary pure-sector $u$ value proves a metric completion. Conversely, the explicit nonlinear Jacobi failure already prevents identifying the tested natural extension with a legal operator algebra.

## Reproduction

From the verification directory, use either standalone source:

```text
sage --nodotsage ward_contact_audit.py
wolframscript -file ward_contact_audit.wl
```

These commands are instructions for reproduction; this audit's actual CAS executions used the fresh Sage and Wolfram tools, not a hidden pre-existing project script. The Python source prints the local coefficient tables and ends with `ALL EXACT ASSERTIONS PASSED`. The Wolfram source prints the exact coefficient and diagnostic association.
