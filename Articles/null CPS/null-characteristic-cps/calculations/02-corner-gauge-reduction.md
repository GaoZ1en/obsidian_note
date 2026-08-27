# Corner Frames and Gauge Reduction

## 1. Why the Corner Pair Is Not Assumed

The raw current already satisfies

$$\begin{align}
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.
\end{align}$$

Therefore an expression such as

$$\begin{align}
\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}
\end{align}$$

cannot be appended by hand. In this project it is retained only as a derived pair in a split-sheet extended polarization, after four explicit operations: introduce independent sheet frames, dress along the generators, integrate the transport terms by parts with all endpoints accounted for, and reduce the diagonal corner gauge action. It is not a universal extra term in the raw Lee--Wald current.

## 2. Generator Dressings

On $N_+$, write

$$\begin{align}
A_v=\partial_v\alpha_+, \qquad a=\bar a_+ +d_S\alpha_+. \tag{2.1}
\end{align}$$

Then

$$\begin{align}
r=F_{vA}dx^A=\partial_v\bar a_+. \tag{2.2}
\end{align}$$

Using $\partial_vE+D^Ar_A=0$ and integrating by parts on the cut,

$$\begin{align}
\int_{N_+}\left(E\,\delta A_v+r^A\delta A_A\right) =\int_{N_+}r^A\delta\bar a_{+A} +\left[\int_S E\,\delta\alpha_+\right]_{v=0}^{v=V}. \tag{2.3}
\end{align}$$

On $N_-$, write

$$\begin{align}
A_u=\partial_u\alpha_-, \qquad a=\bar a_-+d_S\alpha_-, \qquad p=\partial_u\bar a_-. \tag{2.4}
\end{align}$$

The raw pullback obeys

$$\begin{align}
\int_{N_-}\left(E\,\delta A_u-p^A\delta A_A\right) =-\int_{N_-}p^A\delta\bar a_{-A} +\left[\int_SE\,\delta\alpha_-\right]_{u=0}^{u=U}. \tag{2.5}
\end{align}$$

After converting it to the incoming initial-data orientation, the radiative and endpoint signs are reversed. Equations (2.3)--(2.5) are identities, not gauge fixing: $\alpha_\pm$ record the longitudinal frame and $\bar a_\pm$ are invariant under gauge transformations accompanied by frame shifts.

## 3. Endpoint Ledger

Let

$$\begin{align}
\chi_+:=\alpha_+(0,x), \qquad \chi_-:=\alpha_-(0,x).
\end{align}$$

The shared initial corner contribution to the incoming potential is

$$\begin{align}
\boxed{ \Theta_{S_0} =-\int_{S_0}E_+\,\delta\chi_+ +\int_{S_0}E_-\,\delta\chi_- .} \tag{3.1}
\end{align}$$

The future endpoint terms are

$$\begin{align}
\Theta_{\mathrm{future}} =\int_{S_+}E_+\,\delta\alpha_+(V) -\int_{S_-}E_-\,\delta\alpha_-(U). \tag{3.2}
\end{align}$$

They cannot be dropped without an endpoint condition. The simplest finite theorem fixes the future frames, fixes the future fluxes, or includes (3.2) as part of the boundary phase space.

## 4. Diagonal Cut Gauge and Moment Map

In the split-sheet extended description, the two sheets carry independent corner frames and their electric endpoint variables. The diagonal cut gauge group acts by

$$\begin{align}
\chi_+\mapsto\chi_++\eta, \qquad \chi_-\mapsto\chi_-+\eta. \tag{4.1}
\end{align}$$

Taking a field-space derivative of (3.1), its contraction with the generator of (4.1) is

$$\begin{align}
\iota_{X_\eta}\Omega_{S_0} =\delta\int_{S_0}\eta(E_+-E_-). \tag{4.2}
\end{align}$$

Thus the moment map is

$$\begin{align}
\boxed{\mu(\eta)=\int_{S_0}\eta(E_+-E_-),} \tag{4.3}
\end{align}$$

and the zero level is oriented electric-flux matching.

On $E_+=E_-=E_0$, quotient the common frame and define

$$\begin{align}
\lambda_{\mathrm{rel}}:=\chi_- -\chi_+. \tag{4.4}
\end{align}$$

Then

$$\begin{align}
\Theta_{S_0}^{\mathrm{red}}=\int_{S_0}E_0\,\delta\lambda_{\mathrm{rel}}, \qquad \boxed{ \Omega_{S_0}^{\mathrm{red}}=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.} \tag{4.5}
\end{align}$$

The sign in (4.5) follows the incoming orientation and $\lambda_{\mathrm{rel}}=\chi_- -\chi_+$. Reversing either convention reverses the displayed sign but not the canonical pairing.

## 5. Connection Compatibility

The dressed corner potentials obey

$$\begin{align}
\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0 \tag{5.1}
\end{align}$$

when both arise from one smooth bulk connection. Taking $d_S$ yields magnetic matching,

$$\begin{align}
d_S\bar a_-^0=d_S\bar a_+^0=b^0. \tag{5.2}
\end{align}$$

Equation (5.1) shows why $\lambda_{\mathrm{rel}}$ is relational rather than an extra oscillator. It records how two sheet trivializations reconstruct one corner connection. If one starts with a single smooth bulk trivialization, $\chi_+=\chi_-$ and $\lambda_{\mathrm{rel}}=0$; the information is then carried directly by the shared $a_0$. If one also restricts to a fixed-electric-flux sector, $\delta E_0=0$, so the derived two-form (4.5) vanishes even if a relative label is retained.

For $H^1(S)\neq0$, equality of curvatures implies only that $\bar a_-^0-\bar a_+^0$ is closed. Its harmonic part is not $d_S\lambda_{\mathrm{rel}}$ and must be included as a separate holonomy sector.

## 6. Proper Versus Charged Transformations

There are three distinct operations:

1. **bulk proper gauge:** one smooth (epsilon) whose cut charge variation vanishes;
2. **diagonal corner gauge:** the redundancy (4.1) used in composing the two sheet descriptions;
3. **relative frame shift:** $\lambda_{\mathrm{rel}}\mapsto\lambda_{\mathrm{rel}}+\rho$, generated by electric flux when (4.5) is retained.

Calling all three “edge symmetry” hides their different status. The third is Hamiltonian only on the extended/reduced polarization that unites variable-flux sectors. In a fixed $E_0$ superselection sector it is absent from the reduced two-form.

## 7. Verdict on the Candidate Pair

**Correct under the following precise conditions:**

- the two null sheets are first treated with independent gauge frames;
- electric flux is allowed to vary;
- the future endpoint frames/fluxes are fixed or retained consistently;
- the diagonal corner gauge group is reduced at $E_+=E_-$;
- the cut has no omitted harmonic frame sector.

**Incorrect as a universal statement:** there is no extra $S_0$ term to append to the raw Lee--Wald flux, and a single smooth bulk trivialization does not contain an independent relative gauge oscillator.

The logical order is therefore

$$
\text{raw Lee--Wald sheet flux}
\longrightarrow
\text{generator dressing and integration by parts}
\longrightarrow
\text{split endpoint polarization}
\longrightarrow
\mu=0\ \text{and diagonal reduction}
\longrightarrow
\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.
$$

## Verified

- Both generator-dressing integration-by-parts identities.
- The corner signs from the induced orientations.
- The moment map $E_+-E_-$.
- The reduced potential and two-form (4.5).

## Not Verified

- Global large-gauge periodicity and quantization of $\lambda_{\mathrm{rel}}$.
- Harmonic sectors for a general compact cut.
- A unique preferred boundary polarization; the action plus boundary conditions must choose it.
