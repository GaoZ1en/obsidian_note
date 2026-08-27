# Action-first asymptotic flatness

## Project thesis

This project asks for the asymptotically flat scattering problem in the order

$$
\mathcal F_{\mathrm{off}}
\longrightarrow
S_{\mathrm{ren}}
\longrightarrow
\Theta_{\mathrm{ren}},\Omega_{\mathrm{ren}}
\longrightarrow
\mathcal S
\longrightarrow
H_\xi
\longrightarrow
i^0/i^\pm\text{ matching and Ward identities}.
$$

The asymptotic symmetry group is treated as an output of the action domain、boundary polarization and reduction，not as the starting definition of the theory。Radial EOM may determine the on-shell coefficient relations，but they are not used to define the off-shell history space。

## Current phase

The breadth-first diagnostic program is complete：every question in the original Stage 0--8 and P0--P5 ledgers now has a positive theorem、a conditional construction or an explicit obstruction verdict。

The project is now in the consolidation and manuscript-extraction phase。Paper I has a frozen Maxwell-first scope、an acyclic proof ledger、an independent claim audit and a reproducible 25-check package。This does **not** mean that a maximal generic Einstein--matter scattering theory has been constructed。The remaining global issues are recorded as theorem hypotheses or obstruction outputs rather than hidden unfinished steps。

The strongest coherent positive branch is：

- fixed defining function $\Omega=1/r$；
- fixed round celestial metric $q_{AB}$；
- finite retarded-time slab；
- arbitrary fixed radial truncation order $N$；
- vacuum gravity plus massless scalar and Maxwell matter；
- finite tangential/normal jets in a fixed-frame local counterterm category；
- no logarithm in a leading radiative coefficient。

On this domain，the notes construct a locally $C^2$ renormalized relative action and finite induced presymplectic data。Einstein/matter equations are imposed only afterwards。The result is finite-order rather than uniform in $N$，and it is not a strict intrinsic、conformal-frame-covariant theorem。

## Epistemic legend

- **Positive**：proved on the displayed domain and in the displayed counterterm category。
- **Conditional**：a sufficient construction whose extra analytic、gluing or anomaly hypotheses are part of the statement。
- **Obstruction**：the stronger requested object does not exist in the declared category，or is not uniquely normalized there。
- **Source-derived**：a statement imported from or compared directly with the cited literature；it is not counted as a new project theorem by itself。

`results index.md` is the authoritative compact registry。The detailed source and machine-verification boundaries remain in the corresponding technical notes。

## Dependency map

```text
definitions.md
├── 3d Maxwell.md
└── 4d spin-2.md
    └── 4d nonlinear gravity.md
        ├── all-order radial hierarchy.md
        ├── matter coupling.md
        ├── dynamical celestial metric.md
        └── spatial infinity and endpoints.md
            └── charges and Ward identities.md
```

The arrows are proof dependencies，not a claim that every later enlargement preserves every earlier positive theorem。

## Project-control files

| File | Role |
|---|---|
| `README.md` | Stable orientation、strongest current claim and file map |
| `results index.md` | Registry of theorem、conditional construction and obstruction statements |
| `TODO.md` | Completed Paper-I extraction package followed by the historical proof audit |
| `Drafts.md` | Frozen internal paper order and advisor decision packet |
| `Paper I proof ledger.md` | Frozen Maxwell theorem、authoritative dependencies and no-cycle audit |
| `Paper I proof audit.md` | Claim-by-claim `Verified / Assumptions / Not verified` boundary |
| `checks/maxwell/` | Reproducible finite Mathematica/Wolfram checks for Paper I |
| `roadmap.md` | Historical action-first program and full stage-by-stage rationale |

## Technical notes

| File | Durable content |
|---|---|
| `definitions.md` | Off-shell polyhomogeneous histories、relative variational problem、counterterm categories、$C^2$ renormalization and maximality language |
| `3d Maxwell.md` | Complete action pilot、band-limited actual class、candidate conormal image problem、large $U(1)$ and reduced phase space |
| `4d spin-2.md` | EH + GHY Hessian、linear Bondi hierarchy、null lids/joints and leading-log obstruction |
| `4d nonlinear gravity.md` | Nonlinear first-log finite-slab action theorem、EOM-last reduction and FR/GLZ dictionary |
| `all-order radial hierarchy.md` | Arbitrary fixed-$N$ induction and purely-asymptotic infinite-order verdict |
| `matter coupling.md` | Massless scalar/Maxwell radial-local theorem and massive-null no-go |
| `dynamical celestial metric.md` | Varying $q_{AB}$、local-covariant obstruction、nonlocal/edge completions and punctures |
| `spatial infinity and endpoints.md` | Real blow-up、face--corner complex、matching no-go、tail anomaly and massive drag |
| `charges and Ward identities.md` | Reduced charges、ordinary/generalized/extended BMS verdicts、BV--BFV and dressed Ward diagnostics |

## Recommended manuscript sequence

1. **Formalism plus 3D Maxwell.** Establish the action-first language in a complete solvable model。The central claim is the category-relative $C^2$ action theorem；the band-limited actual-solution class is the nonemptiness gate and the fixed-charge reduction is a corollary。
2. **4D fixed-frame gravity.** State the arbitrary fixed-$N$ $C^2$ theorem together with the leading-log shear/scalar/Maxwell obstruction。
3. **Corners、tails and enlarged symmetries.** Combine the real-blow-up corner complex、matching and normalization no-go results with the category-dependent generalized/extended-BMS completions。

The BV--BFV/Faddeev--Kulish material remains a diagnostic/outlook component until the null/punctured Green-hyperbolicity、relative-anomaly and generic $i^0/i^\pm$ matching inputs are independently supplied。

## Reading order

For the shortest route to the main claim：

1. `definitions.md` section 0 and the Stage 0 gate；
2. `4d nonlinear gravity.md` Theorems 9.4、11.2 and 12.1；
3. `all-order radial hierarchy.md` Theorems 8.1 and 9.1；
4. `matter coupling.md` Theorem 10.1；
5. `spatial infinity and endpoints.md` Theorem 17.1；
6. `charges and Ward identities.md` Theorem 13.1 and Obstruction 13.2。

For the first proposed manuscript，read `definitions.md` followed by `3d Maxwell.md`。

## Current hard boundary

The project does not presently prove：

- the full zero-frequency conormal Hankel--Mellin image/kernel/cokernel theorem proposed in `3d Maxwell.md` sections 11.11--11.15；
- global realization of every formal nonlinear polyhomogeneous tower；
- an $N\to\infty$ convergent or Borel-summable action theorem in the declared topology；
- a fully coupled action-derived massive $i^\pm$ drag one-form；
- generic-tail angular-momentum-aspect matching through $i^0$；
- a unique puncture/meromorphic-superrotation theory；
- a nonperturbative gravitational measure or all-loop Ward theorem。

These are the boundaries against which future manuscript claims must be checked。
