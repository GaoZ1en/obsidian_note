# Independent finite-radius mixed Ward/contact derivation

## Result and conventions

The mixed **metric-response** tensor is fixed by the finite-radius covariance and the PBH action, up to its TT part and the declared local contact scheme. The retained BF boundary completion is essential: its variation cancels a nonzero UV flux of the bulk metric vertex. At positive radii there is no residual BF anomaly; the boundary logarithmic subtraction produces the usual local anomaly.

Use Euclidean dimension four, Fourier transforms with inverse phase `exp(ik.x)`, all incoming momenta
\(p+k_1+k_2=0\), \(q=|k_1|\), \(r=|k_2|\). The radii \(a,b>0\) are relational labels in fixed boundary-normal coordinates. Set

\[
C_{ab}(k)=2\pi^2 I_0(ka_<)K_0(ka_>),\qquad
M_{ij}(z;x,y)=2\frac{\delta C_{ab}[g_{(0)}](x,y)}{\delta g_{(0)ij}(z)}\bigg|_{g_{(0)}=\delta}.
\]

The metric derivative holds the source density paired with \(d^4x\) fixed. Its sign is \(\delta W=+\frac12\int T^{ij}\delta g_{(0)ij}\); the canonical Euclidean scalar action has \(\delta S_\phi=-\frac12\int\sqrt g\,T^{\mu\nu}\delta g_{\mu\nu}\). Divide every displayed mixed tensor by \(\sqrt{C_T}=\sqrt{10}N/\pi^2\) for a unit-normalized stress insertion.

The scheme is the geometric anchored insertion functional, retaining its BF boundary action, with no extra curvature/source counterterms. This qualification matters: a term proportional to \(\int R[g_{(0)}]j^2/\sqrt{g_{(0)}}\) vanishes in the flat scalar covariance but changes the mixed response by local transverse contacts.

## Boundary transformations and source densities

Take \(\delta g_{(0)ij}=\partial_i b_j+\partial_j b_i+2\sigma\delta_{ij}\). The residual FG vector is

\[
\zeta^u=-u\sigma,\qquad
\zeta^i=b^i+\frac{u^2}{2}\partial^i\sigma.
\]

Because \(\mathcal U_a=\mathcal N(a/\ell)^{-2}\Phi(a,x)\) holds its prefactor at the relational label, its active transformation is

\[
\delta\mathcal U_a=b\cdot\partial\mathcal U_a
-\sigma(a\partial_a+2)\mathcal U_a
+\frac{a^2}{2}\partial_i\sigma\,\partial_i\mathcal U_a.
\]

The radial derivative is not optional. For a continuous family with pairing \(\int da\,d^4x\,j(a,x)\mathcal U_a(x)\), the compensating source transformation is

\[
\delta j=\partial_i(b^ij)-\partial_a(a\sigma j)+2\sigma j
+\frac{a^2}{2}\partial_i(j\partial_i\sigma).
\]

Radial source support is taken compact when deriving the adjoint formula. For a single initially constant-radius sheet this means \(\delta a=a\sigma\), together with \(\delta j_a=2\sigma j_a+(a^2/2)\partial_i(j_a\partial_i\sigma)\). Boundary diffeomorphisms transform \(j_a\) as a density. At the boundary the usual scalar source is \(J=j/\sqrt{g_{(0)}}\), so \(\delta_\sigma J=-2\sigma J\), whereas \(\delta_\sigma j=+2\sigma j\).

## Ward data

Let \(C=C_{ab}(x-y)\). In position space,

\[
\partial_z^iM_{ij}=-\delta(z-x)\partial_{xj}C-\delta(z-y)\partial_{yj}C,
\]

\[
\begin{aligned}
\delta^{ij}M_{ij}={}&-\delta(z-x)(2+a\partial_a)C
-\delta(z-y)(2+b\partial_b)C\\
&-\frac{a^2}{2}\partial_{zi}[\delta(z-x)\partial_{xi}C]
-\frac{b^2}{2}\partial_{zi}[\delta(z-y)\partial_{yi}C].
\end{aligned}
\]

For stripped momentum correlators define \(D_j=p^iM_{ij}\) and \(t=\delta^{ij}M_{ij}\). Then

\[
D_j=k_{2j}C_{ab}(r)+k_{1j}C_{ab}(q),
\]

\[
t=-\left[2+a\partial_a+\frac{a^2}{2}p\cdot k_2\right]C_{ab}(r)
-\left[2+b\partial_b+\frac{b^2}{2}p\cdot k_1\right]C_{ab}(q).
\]

The derivatives hold the other radius and momentum fixed. At equal radii, individual radial derivatives have contact jumps; the full displayed trace has a unique common two-radius limit because those jumps cancel. A common original radial-mollifier prescription gives the same answer.

For \(p\ne0\), \(\pi_{ij}=\delta_{ij}-p_ip_j/p^2\), the unique non-TT completion is

\[
M^{\mathrm{nonTT}}_{ij}=
\frac{p_iD_j+p_jD_i}{p^2}
-\frac{p_ip_j(p\cdot D)}{p^4}
+\frac{\pi_{ij}}3\left(t-\frac{p\cdot D}{p^2}\right).
\]

Its divergence and trace were checked symbolically. The TT coefficient is the independently supplied finite-radius cubic integral; the Ward argument does not recompute it.

## Explicit BF boundary vertex and analytic radial proof

Write canonical scalar insertion lines

\[
\psi_1=A v,\quad\psi_2=A w,\quad A^2=2\pi^2/\ell^3,
\quad v=u^2F_a(q,u),\quad w=u^2F_b(r,u).
\]

Let \(c=k_1\cdot k_2\), \(d_1=p\cdot k_1=-(q^2+c)\), \(d_2=p\cdot k_2=-(r^2+c)\), and

\[
b_{ij}=-(k_{1i}k_{2j}+k_{2i}k_{1j})vw
-\delta_{ij}(v'w'-cvw-4vw/u^2).
\]

The cross coefficient of the bulk metric vertex in \(W\) is
\(\pi^2\int du\,u^{-3}b_{ij}h_{ij}\). Define
\(K=K_0(qa)K_0(rb)\); note that the first Bessel argument uses the first external momentum and first radius, and similarly for the second.

The retained BF action is \(S_{\mathrm{BF}}=\ell^{-1}\int_{u=\epsilon}\sqrt\gamma\,\phi^2\). Its cross variation is

\[
\delta S_{\mathrm{BF},12}=\ell^3A^2\,\mathrm{tr}(h_{(0)})K
=2\pi^2\,\mathrm{tr}(h_{(0)})K.
\]

Therefore its contribution to the mixed response is

\[
\boxed{M^{\mathrm{BF}}_{ij}=-4\pi^2\delta_{ij}K_0(qa)K_0(rb).}
\]

The additional \(1/\log(\epsilon/\ell)\) BF counterterm vanishes here because every finite-shell external line is UV logfree.

For the diffeomorphism test, the homogeneous radial equations and slice jumps are

\[
v''-3v'/u+(4/u^2-q^2)v=-a\delta(u-a),\qquad [v']_a=-a,
\]

and similarly for \(w\). Away from slices,

\[
\partial_u(u^{-3}vw')=u^{-3}[v'w'+(r^2-4/u^2)vw].
\]

The UV value of \(u^{-3}vw'\) is \(2K\), and the IR value vanishes. Including both slice jumps gives

\[
\int_0^\infty du\,u^{-3}p_i b_{ij}
=k_{1j}F_a(q,b)+k_{2j}F_b(r,a)+2p_jK.
\]

Thus the bulk vertex gives \(D_j+4\pi^2p_jK\); the BF vertex gives \(-4\pi^2p_jK\).

For the Weyl test the source metric is \(h_{ij}(u)=2\sigma\delta_{ij}-u^2p_ip_j\sigma\). Introduce

\[
Q(u)=-\frac{v'w'+cvw+4vw/u^2}{u^2}
-\frac{d_2v'w+d_1vw'}{2u}.
\]

An exact homogeneous identity is

\[
\partial_u Q=u^{-3}\left[\mathrm{tr}b-\frac{u^2}{2}p_ip_jb_{ij}\right].
\]

Here \(Q(0)=-8K\), \(Q(\infty)=0\), and

\[
[Q]_a=\frac{w'(a)}a+\frac{d_2}2w(a),\qquad
[Q]_b=\frac{v'(b)}b+\frac{d_1}2v(b).
\]

Split integration at the two slices therefore gives the claimed trace plus \(+16\pi^2K\). The BF trace is exactly \(-16\pi^2K\). This proves both Ward relations analytically for distinct positive radii and positive external momentum magnitudes. The common-radius limit is continuous as described above. No inference from a TT-only graviton propagator is involved.

## Boundary logarithm and anomaly

Let \(R=\max(a,b)\). In the minimal scheme,

\[
C_{ab}(k)+2\pi^2\log(R/\ell)\longrightarrow
C_0^{\mathrm{ren}}(k)=-2\pi^2[\log(k\ell/2)+\gamma_E].
\]

The covariant extension appropriate to density sources adds
\(\frac12[2\pi^2\log(R/\ell)]\int d^4x\,j^2/\sqrt{g_{(0)}}\)
to \(W\). Its mixed contact is minus its covariance coefficient times \(\delta_{ij}\delta(z-x)\delta(x-y)\). Hence its trace cancels the divergent \(-4C_{ab}\) contact. Meanwhile the sum of radial-response terms tends to \(+2\pi^2\), yielding

\[
t_0^{\mathrm{ren}}=-2C_0^{\mathrm{ren}}(r)-2C_0^{\mathrm{ren}}(q)+2\pi^2.
\]

Equivalently the anomaly is \(\pi^2\int\sigma j^2\) in \(\delta_\sigma W\) after including the source transformation. A finite \(j^2\) contact shifts \(C_0\) and the mixed trace together but does not change the displayed anomaly coefficient. The boundary assertion here is a fixed-momentum/contact derivation, not a new proof of arbitrary-Schwartz mixed-tensor convergence.

## Stress insertion versus metric response

These objects must first be distinguished. For a source-dependent observable definition,

\[
2\delta_g\langle\mathcal U_a\mathcal U_b\rangle
=\langle T_{\mathrm{action}}\mathcal U_a\mathcal U_b\rangle_c
+2\langle(\delta_g\mathcal U_a)\mathcal U_b+
\mathcal U_a(\delta_g\mathcal U_b)\rangle
+\text{source-only contact variations}.
\]

The explicit variations on the right hold integration fields fixed. They are not the PBH transformation of the expectation value. In the anchored FG source extension, \(\mathcal U_a=\mathcal N(a/\ell)^{-2}\phi(a,x)\) and its *explicit* source variation at fixed coordinate fields vanishes. Thus the above response coincides with the stress-insertion distribution in that variational convention, with its retained BF action and prescribed source contacts. In a different metric representative or source extension the explicit anchor variation must instead be included, and cannot simply be omitted.

Changing from fixed density \(j\) to fixed scalar source \(J=j/\sqrt g\) also changes the metric derivative: it adds the insertion-measure contacts \(\delta_{ij}[\delta(z-x)+\delta(z-y)]C\). Those contacts are absent in the requested fixed-\(d^4x\) convention. A separated operator correlator by itself does not specify these Euclidean contact extensions.

## Checks and scope

The new [checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_independent_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_independent_checks_results.txt>) verify the diffeomorphism primitives, Weyl primitive, UV limit and jumps, and projector reconstruction symbolically. A direct split-slice numerical integral at \(k_1=(1,0,0,0)\), \(k_2=(-1/5,4/5,0,0)\), \(a=2/5\), \(b=7/10\) checks both Ward contractions to tolerance \(10^{-24}\), with no kernel messages. The uncompleted bulk trace is approximately \(99.8079154\), the BF trace approximately \(-142.2014225\), and their sum \(-42.3935071\) equals the PBH Ward trace: the BF term is not a negligible endpoint correction.

This is a tree-level, order-\(1/N\) mixed coefficient for normalized stress, with fixed Poincare vacuum and no added zero-mode/edge sector. It does not establish a \(p=0\) projector prescription, an unrestricted mixed Schwartz boundary theorem, loop-renormalized dressing, or a global nonlinear normal-coordinate chart. No CPS construction was used. No existing report was edited.
