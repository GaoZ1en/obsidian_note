---
title: Possible New Topics After the Course
date: 2026-06-01
summary: "A map of natural follow-up topics after the Cheng Peng string theory course, with each topic linked explicitly to the part of the course it grows out of most directly."
---

# Overview

The current course is centered on three main blocks:

- canonical quantization of the bosonic string,
- canonical quantization of the Type II superstring in the RNS formalism,
- basic worldsheet CFT technology, including OPEs, conformal weights, bosonization, and ghost systems.

The most natural follow-up topics are therefore not arbitrary string-theory keywords. The best ones are the topics that answer the next structural questions:

1. What exactly is a physical state in the covariant formalism?
1. How are external string states inserted into the worldsheet theory?
1. How do boundary conditions and dualities acquire geometric meaning?
1. How does one go beyond flat ten-dimensional Minkowski space?
1. How does one-loop consistency unify the Hilbert-space construction?

# 1. BRST quantization

## Closest link to current course

This is closest to:

- Virasoro constraints,
- super-Virasoro constraints,
- ghost systems,
- covariant vs light-cone quantization.

In the current course material, this topic is already touched implicitly whenever one says that the physical states should satisfy constraints and that ghosts are needed to cancel the anomaly.

## What new ingredient it adds

BRST quantization replaces the list of physical-state constraints by a single cohomological condition:

$$\begin{align}
Q_{\mathrm{BRST}}\ket{\mathrm{phys}}=0,
\qquad
\ket{\mathrm{phys}}\sim \ket{\mathrm{phys}}+Q_{\mathrm{BRST}}\ket{\chi}.
\end{align}$$

It unifies:

- gauge redundancy,
- null states,
- ghost number,
- physical-state conditions.

## Why it is a natural next step

The present course already teaches:

- matter CFT,
- $bc$ and $\beta\gamma$ ghosts,
- Virasoro or super-Virasoro constraints.

BRST is exactly the framework that packages these ingredients into one coherent quantization principle. It is the cleanest answer to the question:

`Why are these the correct physical-state conditions?`

## Minimal prerequisite from this course

The strongest overlap is with:

- `Ghost systems` in [cheat sheet.md](/Users/koishi/Documents/Note/Lecture/courses/graduate/2026%20spring/susy,%20sugra%20and%20superstring%20by%20Cheng%20Peng/exam/cheat%20sheet.md),
- `Virasoro algebra`,
- `Super-Virasoro algebra and constraints`,
- bosonic covariant quantization.

## Exam-style questions

If this topic were turned into an exam question, the most natural forms would be:

1. Write down the BRST charge for the bosonic string or the RNS string and explain the role of each term.
1. Show that nilpotency of $Q_{\mathrm{BRST}}$ requires vanishing total conformal anomaly.
1. Explain why

$$\begin{align}
Q_{\mathrm{BRST}}\ket{\mathrm{phys}}=0
\end{align}$$

is the correct physical-state condition and why states differing by a BRST-exact piece are equivalent.
1. Compare BRST physical states with Gupta-Bleuler or light-cone physical states.

## Core formulas and results to know

Bosonic-string BRST charge:

$$\begin{align}
Q_{\mathrm{BRST}}
=
\sum_{n} c_{-n}(L_{n}-a\delta_{n,0})
-\frac{1}{2}\sum_{m,n}(m-n):c_{-m}c_{-n}b_{m+n}:.
\end{align}$$

Core statements:

- nilpotency requires

$$\begin{align}
Q_{\mathrm{BRST}}^{2}=0,
\end{align}$$

which enforces the anomaly cancellation condition,
- physical states are BRST-closed,
- gauge redundancies are BRST-exact,
- the cohomology reproduces the light-cone spectrum.

## What to memorize vs what to understand

Memorize:

- the schematic form of $Q_{\mathrm{BRST}}$,
- the meanings of `closed` and `exact`,
- the link between nilpotency and anomaly cancellation.

Understand:

- why BRST is not adding new states, but removing gauge redundancy in a systematic way,
- why the cohomology rather than a simple kernel is the right physical space.

# 2. Vertex operators and simple amplitudes

## Closest link to current course

This is closest to:

- state-operator correspondence,
- conformal weights,
- physical-state conditions,
- free-boson OPEs,
- NS/R sector state construction.

## What new ingredient it adds

It explains how spacetime states are represented inside the worldsheet CFT by local or integrated insertions.

Typical examples are:

$$\begin{align}
V_{\mathrm{tachyon}} \sim e^{ik\cdot X},
\end{align}$$

$$\begin{align}
V_{\mathrm{open\, vector}} \sim \zeta\cdot \partial X\, e^{ik\cdot X},
\end{align}$$

$$\begin{align}
V_{\mathrm{closed\, tensor}} \sim \epsilon_{\mu\nu}\partial X^{\mu}\bar{\partial}X^{\nu} e^{ik\cdot X}.
\end{align}$$

The next step after defining the operators is to compute correlation functions and interpret them as scattering amplitudes.

## Why it is a natural next step

Right now the course has already explained:

- what the physical states are,
- what their masses and polarizations are,
- how to compute OPEs and conformal weights.

Vertex operators are exactly where these threads meet. They answer:

`How does a physical state appear in the worldsheet path integral or CFT?`

This is the most direct bridge from canonical quantization to actual string scattering.

## Minimal prerequisite from this course

The strongest overlap is with:

- `Vertex operators`,
- `State-operator correspondence`,
- `CFT toolkit`,
- `String spectra and little groups`.

## Exam-style questions

The most natural exam problems are:

1. Write the vertex operator for a given low-lying state and determine its conformal weight.
1. Derive the on-shell condition and transversality condition from the worldsheet requirement that the integrated vertex operator be marginal.
1. Compare open-string and closed-string vertex operators.
1. Compute a simple two-point or three-point correlator using free-field OPEs.

## Core formulas and results to know

Open-string tachyon:

$$\begin{align}
V_{\mathrm{tachyon}}(x)=:e^{ik\cdot X(x)}:,
\qquad
h=\alpha' k^{2}.
\end{align}$$

Open-string vector:

$$\begin{align}
V_{\mathrm{vector}}(x)=\zeta_{\mu}:\partial X^{\mu}e^{ik\cdot X}:(x),
\end{align}$$

with physical-state conditions

$$\begin{align}
k^{2}=0,
\qquad
k\cdot \zeta=0,
\qquad
\zeta_{\mu}\sim \zeta_{\mu}+\lambda k_{\mu}.
\end{align}$$

Closed-string tensor:

$$\begin{align}
V_{\mathrm{closed}}(z,\bar z)
=
\epsilon_{\mu\nu}:\partial X^{\mu}\bar{\partial}X^{\nu}e^{ik\cdot X}:,
\end{align}$$

with

$$\begin{align}
(h,\bar h)=(1,1),
\qquad
k^{2}=0,
\qquad
k^{\mu}\epsilon_{\mu\nu}=k^{\nu}\epsilon_{\mu\nu}=0.
\end{align}$$

## What to memorize vs what to understand

Memorize:

- the standard tachyon/vector/tensor vertex operators,
- how weight $1$ or $(1,1)$ gives the on-shell condition,
- the gauge redundancy of polarization tensors.

Understand:

- why integrated vertex operators must be marginal,
- why the worldsheet conformal condition becomes a spacetime wave equation.

# 3. T-duality and D-branes

## Closest link to current course

This is closest to:

- NN/DD/ND/DN boundary conditions,
- mode expansions,
- open-string geometry,
- winding and momentum modes in compact directions.

## What new ingredient it adds

T-duality exchanges momentum and winding in compact directions and, for open strings, exchanges Neumann and Dirichlet boundary conditions.

The conceptual jump is:

- a boundary condition in the worldsheet theory becomes a geometric object in spacetime,
- namely a D-brane.

## Why it is a natural next step

The present course already contains the technical seeds:

- explicit mode expansions with different boundary conditions,
- the distinction between directions with and without momentum zero modes,
- the fact that open strings react strongly to boundary conditions.

T-duality is the cleanest place where these facts acquire geometric meaning. It answers:

`Why are Dirichlet boundary conditions physically important rather than just allowed mathematically?`

## Minimal prerequisite from this course

The strongest overlap is with:

- `Open string NN`,
- `Open string DD`,
- `Open string ND and DN`,
- the $Dp$-brane auxiliary metric section.

## Exam-style questions

The most natural exam problems are:

1. Compactify one spatial direction on a circle and derive the momentum and winding spectrum.
1. Show that the closed-string spectrum is invariant under

$$\begin{align}
R\leftrightarrow \frac{\alpha'}{R},
\qquad
n\leftrightarrow w.
\end{align}$$

1. Show that for open strings, T-duality exchanges Neumann and Dirichlet boundary conditions.
1. Explain how a D-brane emerges from the dualized boundary condition.

## Core formulas and results to know

For a closed string on a circle of radius $R$:

$$\begin{align}
p=\frac{n}{R},
\qquad
\text{winding } = w.
\end{align}$$

Left/right momenta:

$$\begin{align}
p_{L}=\frac{n}{R}+\frac{wR}{\alpha'},
\qquad
p_{R}=\frac{n}{R}-\frac{wR}{\alpha'}.
\end{align}$$

Mass formula:

$$\begin{align}
M^{2}
=
p_{L}^{2}+\frac{4}{\alpha'}(N_{L}-1)
=
p_{R}^{2}+\frac{4}{\alpha'}(N_{R}-1).
\end{align}$$

T-duality:

$$\begin{align}
R\leftrightarrow \frac{\alpha'}{R},
\qquad
n\leftrightarrow w,
\qquad
X_{R}\to -X_{R}.
\end{align}$$

For open strings:

- Neumann in $X$ becomes Dirichlet in the dual coordinate $\tilde X$,
- Dirichlet in $X$ becomes Neumann in $\tilde X$.

## What to memorize vs what to understand

Memorize:

- the formulas for $p_{L}$ and $p_{R}$,
- the T-duality map,
- NN $\leftrightarrow$ DD under open-string T-duality.

Understand:

- why momentum quantization and winding exchange roles,
- why D-branes are not extra decorations but the natural dual image of open-string boundary conditions.

# 4. Compactification and simple orbifolds

## Closest link to current course

This is closest to:

- closed-string left/right mode expansion,
- level matching,
- momentum and winding,
- modular invariance,
- representation content of the low-energy spectrum.

## What new ingredient it adds

Compactification changes the target-space background from flat ten-dimensional Minkowski space to a spacetime with compact directions.

Typical first examples are:

- compactification on a circle,
- toroidal compactification,
- simple orbifolds such as $\mathbb{R}^{d}/\Gamma$ or $T^{d}/\Gamma$.

These introduce:

- quantized momenta in compact directions,
- winding sectors,
- twisted sectors for orbifolds.

## Why it is a natural next step

After one understands the ten-dimensional spectrum, the next structural question is:

`How do we get lower-dimensional physics from string theory?`

Compactification is the first standard answer. Technically, it still uses the same ingredients as the current course:

- mode expansions,
- zero modes,
- level matching,
- CFT consistency.

So it is new in physics content, but not alien in technique.

## Minimal prerequisite from this course

The strongest overlap is with:

- `Closed bosonic string`,
- `RNS closed-string mass formula`,
- `Type IIA and Type IIB closed superstrings`,
- any modular-invariance discussion.

## Exam-style questions

The most natural exam problems are:

1. Compactify one bosonic direction on a circle and write the modified mode expansion.
1. Derive the modified mass formula with discrete momentum and winding.
1. Explain level matching in the presence of winding.
1. For an orbifold, explain qualitatively what twisted sectors are and why they must be included.

## Core formulas and results to know

Circle compactification:

$$\begin{align}
X\sim X+2\pi R,
\qquad
p=\frac{n}{R}.
\end{align}$$

The closed-string coordinate gets an additional winding piece:

$$\begin{align}
X(\tau,\sigma)\sim x+\frac{\alpha'}{2}p_{L}(\tau+\sigma)+\frac{\alpha'}{2}p_{R}(\tau-\sigma)+\text{oscillators}.
\end{align}$$

Level matching becomes

$$\begin{align}
N_{L}-N_{R}=nw
\end{align}$$

for the circle compactification convention in which the zero-mode mismatch is carried by momentum-winding pairing.

For orbifolds, the new idea is:

- untwisted sector: inherited from the covering space,
- twisted sector: strings closed only up to the orbifold action.

## What to memorize vs what to understand

Memorize:

- circle compactification momentum/winding formulas,
- the modified level-matching pattern,
- the words `untwisted` and `twisted` sectors.

Understand:

- why compactification changes zero modes but not the basic oscillator algebra,
- why orbifold consistency forces new sectors rather than merely projecting old states.

# 5. One-loop partition function and modular invariance

## Closest link to current course

This is closest to:

- GSO projection,
- ghost contributions,
- central charge,
- spin structures,
- Type IIA/IIB and heterotic classification.

## What new ingredient it adds

It upgrades the Hilbert-space construction to the one-loop worldsheet consistency condition.

The central object is the torus partition function

$$\begin{align}
Z(\tau,\bar{\tau})
=
\operatorname{Tr}\left(q^{L_{0}-c/24}\bar{q}^{\tilde{L}_{0}-\tilde{c}/24}\right),
\qquad
q=e^{2\pi i\tau},
\end{align}$$

and the requirement of invariance under

$$\begin{align}
T:\tau\mapsto \tau+1,
\qquad
S:\tau\mapsto -\frac{1}{\tau}.
\end{align}$$

## Why it is a natural next step

The present course already uses several ideas that modular invariance organizes:

- level matching,
- GSO projection,
- allowed spin structures,
- ghost and matter central charges.

This topic answers:

`Why do the consistent theories come in exactly these combinations rather than arbitrary NS/R choices?`

It is the global consistency version of the local CFT conditions already taught in the course.

## Minimal prerequisite from this course

The strongest overlap is with:

- `GSO projection`,
- `Ghost systems`,
- `Virasoro algebra`,
- the classification of Type II, Type I, and heterotic strings.

## Exam-style questions

The most natural exam problems are:

1. Explain why modular invariance is required for the torus partition function.
1. Show how the $T$ transformation encodes level matching or integrality conditions.
1. Explain why a single spin structure is not modular invariant.
1. Explain why the heterotic internal lattice must be even and self-dual.

## Core formulas and results to know

Torus amplitude:

$$\begin{align}
Z(\tau,\bar\tau)
=
\operatorname{Tr}\left(q^{L_{0}-c/24}\bar q^{\tilde L_{0}-\tilde c/24}\right),
\qquad
q=e^{2\pi i\tau}.
\end{align}$$

Modular generators:

$$\begin{align}
T:\tau\mapsto \tau+1,
\qquad
S:\tau\mapsto -\frac{1}{\tau}.
\end{align}$$

Key consequences:

- $T$ checks integrality and level matching,
- $S$ checks exchange of cycles or channels,
- GSO projection is the modular-invariant sum over spin structures.

For heterotic strings:

- even lattice from $T$ invariance,
- self-dual lattice from $S$ invariance.

## What to memorize vs what to understand

Memorize:

- the form of the torus trace,
- the $S$ and $T$ transformations,
- the phrases `even self-dual lattice` and `sum over spin structures`.

Understand:

- why modular invariance is the one-loop global consistency condition,
- why it constrains the allowed Hilbert-space sectors rather than merely checking one formula afterward.

# 6. Worldsheet superspace and superfield formulation

## Closest link to current course

This is closest to:

- RNS action,
- worldsheet supersymmetry transformations,
- supercurrent,
- auxiliary-field logic.

## What new ingredient it adds

Instead of writing the RNS theory in components, one introduces worldsheet superspace coordinates and superfields. Then the action and supersymmetry become compact and manifest.

Schematically:

$$\begin{align}
\mathbb{X}^{\mu}
=
X^{\mu}
+i\theta^{+}\Psi_{+}^{\mu}
+i\theta^{-}\Psi_{-}^{\mu}
+i\theta^{+}\theta^{-}F^{\mu}.
\end{align}$$

## Why it is a natural next step

This topic does not dramatically enlarge the physical content, but it reorganizes the formalism elegantly. It answers:

`Can the worldsheet supersymmetry of the RNS string be written in a manifestly supersymmetric way?`

It is especially natural if one liked the RNS action and wants a cleaner formalism rather than a new physical application.

## Minimal prerequisite from this course

The strongest overlap is with:

- `RNS action, worldsheet supersymmetry, and supercurrent`,
- component fermion notation,
- simple superspace exercises such as the off-shell superfield action.

## Exam-style questions

The most natural exam problems are:

1. Expand a superfield into components.
1. Show that a superspace action reproduces the component RNS action.
1. Integrate out the auxiliary field and recover the on-shell action.
1. Show how worldsheet supersymmetry becomes manifest in superspace notation.

## Core formulas and results to know

Basic superfield:

$$\begin{align}
\mathbb X^{\mu}
=
X^{\mu}
+i\theta^{+}\Psi_{+}^{\mu}
+i\theta^{-}\Psi_{-}^{\mu}
+i\theta^{+}\theta^{-}F^{\mu}.
\end{align}$$

Covariant derivatives:

$$\begin{align}
D_{\pm}=\frac{\partial}{\partial \theta^{\pm}}-i\theta^{\pm}\partial_{\pm}.
\end{align}$$

Superspace action:

$$\begin{align}
S
\propto
\int d^{2}\sigma\, d\theta^{+}d\theta^{-}\,
(D_{+}\mathbb X^{\mu})(D_{-}\mathbb X_{\mu}).
\end{align}$$

After component expansion one gets:

- kinetic term for $X^{\mu}$,
- kinetic terms for $\Psi_{\pm}^{\mu}$,
- auxiliary-field term $F^{2}$.

## What to memorize vs what to understand

Memorize:

- the component expansion of $\mathbb X$,
- the form of $D_{\pm}$,
- the superspace action.

Understand:

- why superspace is just a reorganization of the same physics,
- why the auxiliary field is useful off shell and disappears on shell.

# 7. WZW models and strings in curved backgrounds

## Closest link to current course

This is closest to:

- two-dimensional CFT,
- current algebra,
- exact worldsheet models,
- the idea that the target space need not be flat.

## What new ingredient it adds

It replaces the free worldsheet theory on flat spacetime by an interacting but exactly solvable CFT whose target space is a curved manifold, often a group manifold.

The canonical example is:

- the $SL(2,\mathbb{R})$ WZW model for strings on AdS\(_3\).

## Why it is a natural next step

Conceptually this answers:

`How do we study strings in nontrivial but still exactly controlled backgrounds?`

It is a genuine extension beyond the free-boson/free-fermion worldsheet theory. Compared with the earlier topics, it is less immediately tied to the core of this 40-hour course, but it is the cleanest bridge toward AdS/CFT-type backgrounds and exact curved-target constructions.

## Minimal prerequisite from this course

The strongest overlap is with:

- `CFT toolkit`,
- `Virasoro algebra`,
- OPE technology,
- any optional AdS\(_3\)/WZW discussion already seen in problem sets or past exams.

## Exam-style questions

If this were ever examined, the natural problems would be:

1. Show that a given group-manifold action has affine current symmetry.
1. Derive the current conservation equations.
1. Write the energy-momentum tensor in terms of currents.
1. Explain how a curved target space can still give an exactly solvable worldsheet CFT.

## Core formulas and results to know

The structural facts to know are:

- the target space is a group manifold,
- the worldsheet theory has conserved chiral currents,
- the current algebra replaces the free-oscillator algebra as the main organizing principle,
- exact solvability comes from affine symmetry rather than free fields.

For the $SL(2,\mathbb{R})$ WZW example one should remember:

$$\begin{align}
\partial_{-}(\partial_{+}g\,g^{-1})=0,
\qquad
\partial_{+}(g^{-1}\partial_{-}g)=0,
\end{align}$$

and

$$\begin{align}
g(x^{+},x^{-})=g_{+}(x^{+})g_{-}(x^{-}).
\end{align}$$

## What to memorize vs what to understand

Memorize:

- the current-conservation form of the equations,
- the factorized general solution,
- the phrase `affine current algebra`.

Understand:

- why this is the first important example of strings in a curved but exactly solvable background,
- why it is conceptually farther from the present course than BRST or vertex operators.

# How each topic attaches to the current course

## Most tightly attached

These are the most direct continuations of the exact techniques already in the course:

1. BRST quantization
1. Vertex operators and simple amplitudes
1. One-loop partition function and modular invariance

## Strongly attached but more geometric

These still use the same tools, but push them toward spacetime interpretation:

1. T-duality and D-branes
1. Compactification and simple orbifolds

## More formal or more exploratory

These are natural, but slightly less central if the goal is just to extend the current course linearly:

1. Worldsheet superspace and superfield formulation
1. WZW models and strings in curved backgrounds

# Suggested order for self-study

If the goal is to continue in the most efficient order after this course, a good sequence is:

1. BRST quantization
   Because it clarifies the meaning of the constraints and the role of ghosts.

1. Vertex operators and simple amplitudes
   Because it connects the worldsheet theory to observables.

1. One-loop partition function and modular invariance
   Because it explains global consistency and the logic behind the GSO projection.

1. T-duality and D-branes
   Because it gives a geometric reinterpretation of boundary conditions.

1. Compactification and simple orbifolds
   Because it is the first standard step away from ten-dimensional flat spacetime.

1. Worldsheet superspace and superfield formulation
   Because it streamlines the formalism once the basic physics is already clear.

1. WZW models and strings in curved backgrounds
   Because it is a deeper move into exact interacting worldsheet theories.

# If these topics were repurposed for an exam

For exam preparation, the topics are not equally likely to be useful. If one asks which of them can be converted most easily into problems consistent with the current course style, the ranking is roughly:

1. BRST quantization
1. Vertex operators and simple amplitudes
1. One-loop partition function and modular invariance
1. T-duality and D-branes
1. Worldsheet superspace and superfield formulation
1. Compactification and simple orbifolds
1. WZW models and strings in curved backgrounds

The reason is simple:

- the first three are still fundamentally `worldsheet CFT + constraints + ghosts`,
- the next two are natural but already start to shift the focus toward geometry or formalism,
- the last two are good extensions, but feel more like the beginning of another course than one more chapter of this one.

# What I would put on an open-book cheat sheet first

If the purpose is specifically exam preparation, the most worthwhile extra notes to prepare are:

1. For BRST:
   a one-page sheet with $Q_{\mathrm{BRST}}$, nilpotency, and the meaning of closed/exact states.

1. For vertex operators:
   a one-page sheet with tachyon, open vector, closed tensor, and the corresponding on-shell/transversality conditions.

1. For modular invariance:
   a one-page sheet with the torus partition function, the $S/T$ transformations, and the logic of the GSO sum.

1. For T-duality:
   a one-page sheet with $p_{L},p_{R}$, $R\leftrightarrow \alpha'/R$, and Neumann/Dirichlet exchange.
