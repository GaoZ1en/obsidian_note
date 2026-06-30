---
title: Algebra And Finite Groups
date: 2026-07-01
summary: "Reference note on algebraic structures, finite groups, rings, fields, and character tables."
---

# Algebra And Finite Groups

## Sylow And Simplicity

For $|G|=p^k m$ with $p\nmid m$, the number $n_p$ of Sylow $p$-subgroups satisfies

$$
\begin{align}
n_p\equiv1\pmod p,\qquad n_p\mid m.
\end{align}
$$

If $n_p=1$, the Sylow subgroup is normal.

The index-action trick: if $G$ acts on $G/H$, then there is a homomorphism $G\to S_{[G:H]}$. A nontrivial kernel can prove non-simplicity.

## Rings And Fields

For a commutative ring $R$:

- $I$ is prime iff $R/I$ is an integral domain;
- $I$ is maximal iff $R/I$ is a field.

The standard hierarchy is

$$
\begin{align}
\text{fields}\subset\text{Euclidean domains}\subset\text{PIDs}\subset\text{UFDs}\subset\text{domains}.
\end{align}
$$

For field extensions, use the tower law:

$$
\begin{align}
[K:F]=[K:E][E:F].
\end{align}
$$

## Algebraic Principles

Useful structural principles:

- Sylow congruence and divisibility constrain the possible subgroup structure of a finite group.
- The action on cosets gives homomorphisms into symmetric groups.
- Prime and maximal ideals are characterized by quotient objects.
- The Chinese remainder theorem is controlled by comaximality of ideals.
- Polynomial irreducibility is organized by Eisenstein criteria, reduction modulo primes, and degree constraints.
- Finite fields separate field size, multiplicative-group order, and primitive-element structure.
- Constructibility is encoded by towers of quadratic extensions.

## Character Tables

Common structural sources of characters:

- one-dimensional representations lifted from a quotient $G/N$;
- permutation representations induced by group actions;
- direct-product characters obtained by tensoring character tables of the factors.

Character orthogonality constrains the completed table.

## Point Groups And Double Groups

Point-group and double-group representation theory adds the following layers:

- ordinary point-group representations;
- spinorial representations from double groups;
- conjugacy classes and central extensions;
- character orthogonality and completeness;
- tensor-product characters for product groups;
- Young symmetrizers and antisymmetrizers with explicit normalizations.
