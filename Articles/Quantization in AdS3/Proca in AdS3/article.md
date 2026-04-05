Canonical Quantization for the Free Massive Vector


Field in the Global AdS 3 Spacetime with the

Covariant Phase Space Formalism

Zi-en Gao1,2 ∗ 1,2 † 1,2 ‡ 1,2 § 3 ¶ 1,2 k Zi-qian Hu Jin-dong Pan Xiao-Shuai Wang Yu-ting Wen Jie-qiang Wu



1 Institute of Theoretical Physics, Chinese Academy of Sciences, Beijing 100190, China

2 School of Physical Sciences, University of Chinese Academy of Sciences,

Beijing 100049, China

3 School of Physics, Peking University, No.5 Yiheyuan Rd, Beijing 100871, China



Abstract

In this paper, we take a canonical quantization for the free massive vector field in the

global AdS3 spacetime with the covariant phase space formalism. Here, by taking use of the covariant phase space formalism, we simplify the canonical transformation step of the canonical quantization.



∗ gaozien@itp.ac.cn

† huziqian@itp.ac.cn

‡ panjindong@itp.ac.cn

§ wangxiaoshuai@itp.ac.cn

¶ 2301110110@pku.su.edu.cn

k jieqiangwu@itp.ac.cn





1 Introduction


How to take a canonical quantization for gravity is an important and long standing problem

in physics [1]. And, benefiting from the AdS/CFT correspondence, it is more solid to study

the canonical quantization for gravity in the asymptotic AdS spacetime [2]. Moreover, the recent interest in the gravitational fluctuation’s contribution to the holographic entanglement

entropy [3] provides more motivations to studying this problem.

It is believed that, by taking use of Dirac’s canonical formalism for constrained systems

[4–6], one can take a canonical quantization for gravity at least perturbatively. However, for the momentum, there are only a few concrete results for the canonical quantization for gravity in the asymptotic AdS spacetime.

Here, by concrete results, we mean the results like: constructing the Hilbert space through a complete orthonormal basis, solving the eigenvalues and the eigenstates of the Hamiltonian,

computing the amplitudes of diffeomorphism invariant operators,... 1

And the lack of concrete results may be from the technical difficulties. For example, it is very hard to compute the Dirac bracket, where one needs to take an inverse of an infi-nite dimensional matrix. For example, it is very hard to solve the equations of motion even perturbatively, where the different components of the field couple with each other.

Considering the current situation, it is therefore worthwhile to perform a concrete study for the canonical quantization for gravity in the asymptotic AdS spacetime.

In this paper, as a warm-up, we study the canonical quantization for a simpler model: the free massive vector field in the global AdS3 spacetime. The model also shares the difficulties of constraints and different components’ coupling. While, it has no gauge redundancies, which saves us from dealing with too many difficulties at the same time.

In dealing with the remaining difficulties, we take use of following tricks:

First, we take use of the covariant phase space formalism [9–13] in the canonical trans-formation step of the canonical quantization. Here, the covariant phase space formalism is equivalent to and more convenient than Dirac’s canonical formalism for constrained systems.

2

Second, we take use of the Killing symmetries and the corresponding Noether’s theorem, in solving the differential equations and in computing the symplectic form. Here, we reorganize

the modes into the highest weight representations of the Killing symmetries [16–18]. And we directly read out the expression of the symplectic form through an argument based on the

1 Indeed, there are works on the thermal partition function [7] and the correlation function [8] of the gravity

in the asymptotic AdS spacetime. However, they are all based on the path integral formulation.

2 See Appendix A for an argument of the equivalence between the covariant phase space formalism and

Dirac’s canonical formalism for the system with constraints but no gauge redundancies.



2





Killing symmetries.


As applications of the quantized theory, we compute the correlation function and the thermal partition function. Our results are the same as the ones derived from other methods.

The plan for the rest of the paper is as follows. In section 2, we briefly review the covariant

phase space formalism. In section 3, we introduce our model: the free massive vector field in

the global AdS3 spacetime. In section 4, by taking use of the covariant phase space formalism,

we reformulate the model to a Hamiltonian system. In section 5, by introducing a mode

expansion, we represent the Hamiltonian system with a proper set of variables. In section 6, we take a canonical quantization for the Hamiltonian system. [To be modified] In section ??,

with the quantized theory, we reproduce some well established results. In section 9, we finish with a conclusion and discussion.

2 A brief review for the covariant phase space formalism

{oscillator}

In this section, we briefly review the covariant phase space formalism. Here, we only introduce the relevant notions and statements, and we illustrate them with a simple example. We refer

to [14, 15] for more details of the formalism and the proofs of the statements.

2.1 The formalism

We now introduce the covariant phase space formalism.

From a conceptual perspective, the covariant phase space formalism is a prescription that reformulates a Lagrangian system to a Hamiltonian system. Here, the Hamiltonian system is specified by two structures: the pre-phase space, and the symplectic form. The pre-phase space is defined as the set of solutions of the equations of motion. And the symplectic form can be read out from the action.

We now introduce the covariant phase space formalism in more detail.

The starting point of the covariant phase space formalism is a Lagrangian system. As we know, a Lagrangian system is specified by: the fundamental fields φa(x), the Lagrangian density, and the action S which is an integral of the Lagrangian density in the region M

sandwiched between an initial Cauchy surface Σ 3 i and a final Cauchy surface Σ f . In the framework of the covariant phase space formalism, one furthermore introduces the notion of the set of configurations, which is a set whose elements are the allowed configurations of the fundamental fields φa(x). And one then view the action S as a function of the set of configurations.

3 For the systems with spatial boundaries or asymptotic boundaries, the action may also contain boundary

terms. See [14, 15] for more discussion. However, for the model discussed in this paper, the boundary terms don’t appear.

3





Starting from the Lagrangian system, the covariant phase space formalism can be used to reformulate it to a Hamiltonian system. The prescription is the following: One first takes a variation of the action


Z

δS d a = d xE[φ; x]δφa Σ deltaS ( x ) + θ [ φ ; δφ ] | − θ [ φ, δφ ] | , {} (2.1)

f i Σ

M

where one keeps the terms at the initial Cauchy surface Σi and the final Cauchy surface Σf .

From the expression of the variation of the action (2.1), one reads out the equations of motion

E a[φ; x] = 0. (2.2) {equ}

And one reads out the symplectic potential

θ ≡ θ[φ; δφ]|Σ, (2.3)

which is a one-form field of the set of configurations. Then, one defines the pre-phase space P e

as the set of solutions of the equations of motion (2.2). One defines the symplectic form Ω as the exterior derivative of the symplectic potential θ in the set of configuration as

Ω = δθ, (2.4)

which is a two-form field of the set of configurations. And, by taking a pull back of the symplectic form Ω from the set of configurations to the pre-phase space P e, one defines the symplectic form of the pre-phase space Ω| , which is time independent P e

Ω| = Ω| . (2.5) Σ f , P e Σ i , P e

The pre-phase space P e and the symplectic form Ω| together specify a Hamiltonian system. P e

The Hamiltonian system constructed from the covariant phase space formalism can also be represented in the canonical formalism, where a Hamiltonian system is specified by the physical phase space and the bracket. For the application of the current paper, we only consider the

system with no gauge redundancies, where the symplectic form Ω 4 | is non-degenerate. For

P e

such a system, the physical phase space is exactly the pre-phase space, where we also denote the physical phase space by P e. And the bracket can be represented in terms of the symplectic form. Specifically, given two observables f and g which are functions of the physical phase space, their bracket can be represented as

{f, g}| = −X · { } f δg | = X · δf | , (2.6) bracket P e P e g P e

4 For the system with gauge redundancies, it is also doable to represent the Hamiltonian system constructed

from the covariant phase space formalism in the canonical formalism. See [14, 15] for more detail.



4





where Xf and Xg are determined from f and g through the Hamiltonian equation as


X · | − f Ω =δf| P eP e X · | g Ω | = − δg . (2.7) {XfXg} P e P e

Associated with the covariant phase space formalism, there is a widely discussed topic: the Noether’s theorem. We now introduce the Noether’s theorem.

As we know, the Noether’s theorem is in terms of the symmetries and the conserved charges. In the framework of the covariant phase space formalism, a symmetry is represented as a vector field in the set of configurations

Z δ

X d λ = d x ∆λ φ a( x) , (2.8) {Xlambda}

δφa(x)

where ∆λ φa(x) denotes the infinitesimal symmetry transformation of the field φa(x). And the requirement of the symmetry is that the transformation of the action only contains terms at

the initial Cauchy surface Σ 5 i and the final Cauchy surface Σ f as

Xλ · δS = αλ|Σ − | f α λΣi . (2.9)

Under such a setup, the corresponding Noether charge is

Qλ = Xλ · θ − αλ. (2.10) {Ncharge}

And the Noether’s theorem is the following three statements:

(1) The Noether charge is time independent under the on-shell condition

Qλ| = Qλ| . (2.11) {conserve} Σ f , P e Σ i , P e

Here, in the subscript of the expression (2.11), Σi and Σf denote evaluating Qλ on the corresponding Cauchy surfaces, and P e denotes evaluating Qλ at the pre-phase space, namely under the on-shell condition.

(2) The vector field X λ is tangent to the pre-phase space P e. Namely, the symmetry Xλ

maps a solution to a solution.

(3) The symmetry Xλ and the Noether charge Qλ together satisfy the Hamiltonian equation

6

X · | λ Ω = −δQ | . (2.12) {Hequ} P e λ P e

5 There can also be a configuration independent anomaly term [15]. While, it is irrelevant in this paper, so

we ignore it for simplicity.

6 For the contraction between X and Ω in (2.12), since X is tangent to the pre-phase space P, we can view λ λ e

it as taken either in the set of configurations or in the pre-phase space P e.

5





Moreover, for the system with no gauge redundancies, the Hamiltonian equation (2.12) can be represented in the canonical formalism as


{ Qλ, φa(x)}| = −∆ HQ λ φ a ( x ) | , (2.13) {} P e P e

where one can derive (2.13) by (2.6), (2.8), (2.12).

2.2 A simple example: the oscillator So far, we have introduced the covariant phase space formalism. We now illustrate the for-malism with a simple example: the oscillator.

The oscillator is defined by the following action



S Z f t 1 1 2 2 2 = dt m x ˙ − mω x. (2.14) {actionoscillator 2 2 t i

We now apply the oscillator (2.14) to the covariant phase space formalism. Following the prescription, we first take a variation of the action

Z f t

δS 2 = dt − m (¨ x + ω x ) δx + m xδx ˙ − m xδx ˙ . (2.15) {voscillator }

t = tt=t

t f i i

From the variation of the action (2.15), we read out the equations of motion

x 2 ¨ + ωx = 0, (2.16) {equoscillator

And we read out the symplectic potential

θ = mxδx. ˙ (2.17) {thetaoscillator

Then, by solving the equations of motion (2.16), we get the general solution



x 1 −iωt iωt ∗ ( t ) | = √ ( e a + e a). (2.18) {soloscillator P e 2 mω

Here, we view ( ∗ a, a) as a set of variables that parameterizes of the pre-phase space P. By e

taking an exterior derivative for the symplectic potential (2.17) in the set of configurations, we get the symplectic form

Ω = mδ 1xδ ˙2x − mδ1xδ2x. ˙ (2.19) {presymoscillator

And, by applying the general solution (2.18) to the symplectic form (2.19), we get the sym-plectic form of the pre-phase

Ω ∗ ∗ | = − iδ 1 2 + aδ a iδ 1 2 (2.20) a δ a, { P symoscillator

e



6





which is indeed time independent. So far, we have reformulated the oscillator to a Hamiltonian


system, which is specified by the set of variables ( ∗ a, a ), the general solution (2.18), and the

symplectic form (2.20).

We now study the Noether’s theorem for the time shift symmetry. Specifically, we represent the time shift symmetry as

Z δ h i

X t = dt x ˙(t) , (2.21) {Tshift}

δx(t)

which is a vector field of the set of configurations. By applying the time shift symmetry (2.21)

to the action (2.14), we get

1 1 1 1

X 2 2 2 2 2 2 t = · δS m x ˙ − mω x − m x ˙ − mω x . (2.22) {Xtonaction }

2 2 t=tf 2 2 t=ti

From the expression (2.22), we verify that the time shift symmetry (2.21) is indeed a symmetry in the sense of the Noether’s theorem. And we read out the expression of the corresponding αt as

α 1 1 2 2 2 = t m x ˙ − mω x. (2.23) {alphat} 2 2

By applying (2.17), (2.21), (2.23) to (2.10), we get the expression of the Noether charge as

H 1 1 2 2 2 = X t · θ − α t = m x ˙ + mω x. (2.24) {Noetherosc0} 2 2

And, by applying the general solution (2.18) to the expression of the Noether charge (2.24), we get the expression of the Noether charge at the pre-phase space P e as

H ∗ | = ωaa. (2.25) {Noetherosc }

P e

We now provide some cross checks for the Noether’s theorem:

(1) The expression of the Noether charge (2.25) is time independent.

(2) The time shift symmetry (2.21) maps a solution in the form of (2.18) to another solution

still in the form of (2.18) as

x(t)| → x(t) + X · t δx(t) + o() P e P

= x ( t ) + x ˙ ( t ) + o ( )

P

= 1 − iωt iωt ∗ ∗ √ e ( a − · iωa ) + e ( a + · iωa ) + o(), (2.26)

2mω

where is an infinitesimal symmetry transformation parameter. And, when restricted to the pre-phase space P e, the time shift symmetry is represented as

X δ δ ∗ | − t = iωa + iωa . (2.27) {Tsymonshellosc P e ∗ δa δa

7





(3) The time shift symmetry (2.27), the symplectic form (2.20), and the Noether charge


(2.25) together satisfy the Hamiltonian equation

X t · Ω| = −δH | . (2.28) {Hequoscillator P e P e

We now represent the Hamiltonian system in the canonical formalism. Since the symplectic

form Ω| in (2.20) is non-degenerate, the physical phase space is exactly the pre-phase space P e

P e . We then read out the brackets from the symplectic form Ω| (2.20). Specifically, by taking P e use of the Hamiltonian equation

X a · Ω| = −δa| P eP e X ∗ a∗ · Ω | = − δa| , (2.29)

P e P e

we get

Xa| = i P e ∗ δa δ

Xa∗ | = −i . (2.30) {Xaastar} P e δa δ

And, by applying (2.30) to (2.6), we get the brackets between the set of variables ( ∗ a, a) as

{ a, a}| = 0 P e { ∗ a, a}| = −i

P e

{ ∗ a, a}| = i

P e

{ ∗ ∗ a , a}| = 0. (2.31) {bracketosc }

P e

Moreover, by taking use of (2.18), (2.25), (2.31), we can check

{H, x(t)}| = −x ˙(t)| , (2.32) P e P e

which is the Hamiltonian equation for the time shift symmetry in the canonical formalism.

3 The free massive vector field in the global AdS 3 spacetime

{definition}

In this section, we introduce our model: the free massive vector field in the global AdS3 spacetime.

We first introduce the global AdS3 spacetime. Specifically, we introduce a coordinate

system ( 7 t, r, φ ) with

t ∈ (−∞, +∞) r ∈ (0, +∞) φ ∼ φ + 2π. (3.3)

7 The coordinate system (t, r, φ) has coordinate singularities at r = 0. For the application below, we also {csingularity}

8





And we represent the metric as


dr 2

ds 2 2 2 2 2 = − ( r + 1) dt + + r dφ. (3.4) {metric}

r2 + 1

For the application below, we compute the connection as

  t r t Γ = 0 Γ = Γ = 0 t 

   tt tr 2 r +1 tφ 

Γr 3 r r = r + r Γ = 0 Γ = 0

tt tr tφ

   φ φ Γ = 0 tt  Γ = 0 φ Γ = 0

tr tφ

 t t Γ = 0 Γ = 0 Γ = 0 t  

 rr  rφ  φφ  

Γr r r r 3 = − Γ = 0 Γ = − r − r rr 2 connection , (3.5) {}

r +1 rφ φφ

   φ φ Γ rr = 0  1 φ  Γ = Γ = 0

rφ r φφ

the Riemann tensor as

Rµνρσ = gµσg − νρ gµρgνσ, (3.6)

and the Ricci tensor as

R − µν =2gµν. (3.7)

We now define the free massive vector field in the global AdS3 spacetime. We adopt the asymptotic boundary conditions

At −2 = o ( r) Ar −1 = o ( r) Aφ −2 = o ( r), (3.8) {bdV}

for 8 r → ∞ . Here, for a quantity f satisfying the asymptotic behavior

f λ = o ( r), (3.10)

introduce a coordinate system (t, x, y) such that

t =t

x =r cos φ y =r sin φ, (3.1) {ctxy}

which has no coordinate singularities. For example, in the coordinate system (t, x, y), we represent the metric

(3.4) as

( 2 2 2 2

ds = −(x + y + 1)dt + , (3.2) x 2 2 2 2 y + 1)dx − 2xydxdy + (x + 1)dy 2 + y2 + 1

which is manifestly non-degenerate at (t, x = 0, y = 0).

8 µ The field A also satisfies some specific behaviors for r → 0, which can be read out from its smoothness in

the coordinate system ( µ t, x, y ) introduced in (3.1). For example, for the respective components of A, we have

At 0 = O ( r)

A = A + A = + p ∂x r x y x y 0 ∂r ∂r x y

∂y p x 2 + y 2x2 + y2 A A = O(r )

A = A + A = − A + A = ( ), (3.9) ∂x φ x y x y ∂φ ∂φ y x 1 ∂y x2 + y2 x2 + y2 r O

for r → 0.

9





we also assume that its derivatives satisfy the following asymptotic behavior


∂t ∂ ∂ ∂ λ−m f = o ( r). (3.11) n p m ∂φ ∂r

We represent the action as

Z √ 1 1

S 3 µν 2 µ = d x − g − F µν actionV} F − µ A A . (3.12)

µ {

M 4 2

Here, we denote

A ν = g A, (3.13)

µ µν

and

F µν = ∇µAν − ∇ν Aµ, (3.14)

and

F µν µρ νσ = g gF . (3.15)

ρσ

We set

µ > 0. (3.16)

And we choose M to be the region sandwiched between the initial Cauchy surface Σi at t = ti and the final Cauchy surface Σf at t = tf .

We can check that, under the asymptotic boundary conditions (3.8), the near boundary

region’s contribution to the integral over 9 M in the action (3.12) is finite.

4 Reformulating the model to a Hamiltonian system

{reformulation

In this section, by taking use of the covariant phase space formalism, we reformulate our model to a Hamiltonian system. And we also provide a general discussion for the Noether’s theorem associated with the Killing symmetries.

4.1 Reformulating the model to a Hamiltonian system We now apply our model to the covariant phase space formalism.

Following the prescription, we first take a variation of the action

Z √

δS 3 h i ν 2 µ µ ν = d x − g ( ∇ F − µ A ) δA − ∇ ( F δA )

νµ µ µν

M

Z √

= 3 ν 2 µ d x − g ( ∇ F − µ A ) δA

νµ µ

M

Z Z √ √

+ 2 µ ν 2 µ ν d x στ F − µν µν deltaSvec δA d x στ F δA . (4.1) {}

Σf Σi

9 See the discussion around (E.4) for more detail.

10





Here, σ ab is the induced metric of the constant t Cauchy surfaces with the expression


dr 2

σ a b 2 2 ab sigma dx dx = + r dφ . (4.2) {}

r2 + 1

τ µ is the future-pointing unit normal vector orthogonal to the constant t Cauchy surfaces with the expression

1

τ µ = tau} , 0 , 0 . (4.3) {

( 2 1 r + 1) 2

The near boundary region’s contributions to the integrals over M , Σ i, Σf in the final expression

are finite. And, in deriving (4.1), we have used that the asymptotic boundary term from the

integration by parts vanishes. 10

From the variation of the action (4.1), we read out the equations of motion as

∇ νµ 2 µ ν equvector F − µ A = 0 , (4.4) {}

or equivalently as

∇ ν µ 2 µ ν ( ∇ A − µ − 2) A = 0 ∇ µ { µ equequivalence A = 0 . (4.5)

And we read out the symplectic potential as

Z √

θ 2 µ ν = d x στ F µν (4.6) δA . {Atheta}

Σ

Here, Σ is a constant t Cauchy surface. And θ is a one-form field of the set of configurations.

Then, we define the pre-phase space P e as the set of solutions of the equations of mo-

tion (4.4). By taking an exterior derivative of the symplectic potential (4.6) in the set of configurations, we get the symplectic form

Z √

Ω = d2 µ ν µ ν x σ τ δ F δ A τ δ A δ F

1 µν 2 1 2 µν −

Z √

= 2 h i µ ν µ ν d x σ τ ( ∇ µ 1 ν ν 1 µ 2 1 µ 2 ν ν 2 µ symform δ A − ∇ δ A ) δ − A τ δ ∇ A { ( δ } A − ∇ δ A ) , (4.7)

Σ

which is a two-form field of the set of configurations. And, by taking a pullback of the symplectic form from the set of configurations to the pre-phase space P e, we get the symplectic form Ω | of the pre-phase space P e. P e

So far, we have reformulated our model to a Hamiltonian system, which is specified by the pre-phase space P e and the symplectic form Ω| . P e

We now point out more structures in the Hamiltonian system, which arise from that our model is a free theory. Specifically, we view the pre-phase space P e as a linear space. We

10 See the discussion around (E.13) for a more careful analysis for the near boundary region’s contributions.

11





construct an isomorphism between the pre-phase space P e and the tangent space at the indi-vidual point of the pre-phase space µ P as the following: Given a solution A of the equations


e i

of motion (4.4) which is a point in the pre-phase space P e, we construct the corresponding vector in the tangent space at the individual point of the pre-phase space P e as

Z δ

X 3 µ Ai i = d xA (x) . (4.8) µ

δA (x)

We also construct a two-form Ω[ e ·; ·]| of the pre-phase space P e as P e

Ω[ A ; A ] = X · ( X · Ω | )

e 1 2 A A P A = AP

e e e 2 1

Z √

= 2 h i µ ν µ ν d x σ τ ( ∇ − ∇ µ 1,ν ν 1,µ 2 1 µ 2,ν ν 2,µ A − ∇ A )A τ A ( A − ∇ A ) . (4.9) {symlinear}

Σ P e

Here, the two-form Ω[ e·; ·]| contracts with the point of the pre-phase space P e that is already P e

viewed as a linear space. µ µ µ A , A , A are the solutions of the equations of motion (4.4),

1 e 2

which are points of the pre-phase space P e. The subscript A = A e in Ω| denotes evaluating A = A e the symplectic form Ω at the point µ µ A = A of the pre-phase space P . X and X are

e e A1 A2

constructed as

Z δ

X 3 µ A1 1 = d xA (x) µ

δA (x)

Z δ

X 3 µ A = d xA(x) , (4.10)

2 2 µ δA(x)

which are vectors of the tangent space at the point µ µ A = A of the pre-phase space P . And e e

the subscript P µ µ µ e is to remind that A , A , A e satisfy the equations of motion. 1 2

4.2 The Noether’s theorem associated with the Killing symmetries For the application below, we now provide a general discussion for the Noether’s theorem associated with the Killing symmetries.

We first represent the Killing symmetries. Specifically, we represent a Killing symmetry as a vector field in the set of configurations with the following expression

Z δ

X 3 µ ξ Xxi = d x L ξ µ A (x) . (4.11) { }

δA (x)

Here, µ L A is as

ξ

L µ ν µ ν µ ∇ − ∇ A = ξ A A ξ. (4.12)

ξ ν ν

And µ ξ is a Killing field that satisfies the Killing equation

∇ { µ ξ ν + ∇ ν ξ µ = 0 , (4.13)Killingequ}



12





and the asymptotic behaviors


ξ t 0 = O ( r) ξ r = O(r) ξ φ 0 = O ( r). (4.14) {xiasy }

We now show that the Killing symmetries X ξ (4.11) are indeed symmetries in the sense of Noether’s theorem. We first show that the Killing symmetries preserve the asymptotic

boundary conditions (3.8) as

X t −2 ξ = · δA o ( r) X r −1 · δA = o ( r)

ξ

X φ −2 · ξ { δA = o ( r ) . (4.15)preasy}

Here, in deriving (4.15), we have used (3.8), (4.11), (4.14). We then act the Killing symmetries

Xξ (4.11) to the action (3.12). In more detail, we first act the Killing symmetries Xξ (4.11) to µ µν A , A , F , F as

µ µν

X µ µ · δA = L A

ξ ξ

X ν · · δA = X ( g δA )

ξ µ ξ µν

= ρ ν ρ ν g µν ( ξ ∇ ρ ρ ) A − A ∇ ξ

= ν ν ν ξ ∇ ν µ + A A ν µ ( ∇ ξ − A∇µ ν + ξ ∇ν µ ) ξ =LξAν

X ξ · δFµν =Xξ · (∇µδAν − ∇ν δAµ)

= ρ ρ ρ ρ ∇ ( ξ ∇ ∇ − ∇ A + A ξ ) ∇ ( ξ ∇ A + A ξ)

µ ρ ν ρ ν ν ρ µ ρ µ

= ρ ρ ρ ξ ∇ ρ( ∇ µ ν ν µ ) + A − ∇ A ∇ µ ( ξ ∇ ρ ν ν ρ) + A − ∇ A ∇ ν ( ξ∇µ ρ ρ µ ) A − ∇ A

+ ρ ρ ρ ρ ξ ( ∇ µ ρ ν ρ µ ν ) ∇ A − ∇ ∇ A − ξ ( ∇ ν ρ µ ρ ν µ) + ∇ A − ∇ ∇ A A ρ( ∇ µ ν ν µ ) ∇ ξ − ∇ ∇ ξ

= ρ ρ ρ ρ σ ρ σ ρ σ ξ ∇ ∇ F + ∇ ξ F + − ξ F + ξ R A ξ R A + A R ξ

ρ µν µ ρν ν µρ µρνσ νρµσ µνρσ

=LξFµν

X µν µρ νσ · δF = X · ( g g δF )

ξ ξ ρσ

= µρ νσ λ λ λ g g ( ξ ∇ F + F ∇ ξ + F ∇ ξ)

λ ρσ λσ ρ ρλ σ

= ρ µν ρν µ µρ ν ν µ ρ ρ µ µ ν ρ ρ ν ξ ∇ ρ ρ ρ + F − F ∇ ξ − F ∇ ξ F ( ∇ ξ + ∇ ξ ) + F ( ∇ ξ + ∇ ξ )

ρ ρ

= µν L } ξ Xtofield F . (4.16) {

And, by taking use of (4.16), we then act the Killing symmetries Xξ (4.11) to the action (3.12)

13





as


Z √ 1 1

X 3 ρ µν 2 µ · − − − ξ ρ = δS d x gξ ∇ Fµν F µ Aµ A

M 4 2

Z √ 1 1

= d 3 ρ µν 2 µ x −g ∇ρ ξ − F µν F − µ Aµ A

M 4 2

Z Z √ 1 1 √ 1 1

= 2 ρ µν 2 µ 2 ρ µν 2 µ d x στ ξ F F + µ A − A d x στ ξ F F + µ A A.

ρ µν µ ρ µν µ 4 2 4 2

Σf Σi

(4.17) {Strans}

Here, the near boundary region’s contributions to the integrals over Σi and Σf in the final

expression are finite. And, in deriving (4.17), we have used that the asymptotic boundary

term from the integration by parts vanishes. 11 From (4.15) and (4.17), we show that the

Killing symmetries X ξ (4.11) are indeed symmetries in the sense of Noether’s theorem. And we also read out the corresponding αξ as

Z √ 1 1

α 2 ρ µν 2 µ ξ ρ µν µ alphaxi = d x στ ξ F F + µ A A . (4.18) { }

Σ 4 2

We now compute the Noether charge associated with the Killing symmetry Xξ (4.11).

Specifically, by applying (4.6), (4.11), (4.18) to (2.10), we get the expression of the Noether charge as

Qξ| =(Xξ · θ − α )| P e ξP e

Z √ 1 1

= 2 µ ν ρ ρσ 2 2 ρ d x σ τ ξ F F − g + µ F F A − A µ g A A

µρ ν µν ρσ µ ν µν ρ 4 2

Σ



− µν ρ µ ν 2 ρ µ ν ρ τ ν µ( ∇ F A ξ ρ ) + τ ( ∇ F νµ µ ) − µ A A ξ ρ ( − τ F A ∇ µ ν ξ ρ + ∇ ρ ν ) ξ

P e

Z √ 1 1

= x σ τ ξ F µρ + F − g F F µ A ν µν ρσ µA ν µν ρ α ( − µ g A A − D σ τ F ξ ) µ ν A d 2 µ ν ρ ρσ 2 2 ρ α µν ρ

4 ρ 2

Σ P e

Z √ 1 1

= 2 µ ν ρ ρσ 2 2 ρ d x στ ξ F µρ ν µν ρσ µ µν F − g F + µ A F − A µ g A Qxi ρ ν A . (4.19) { }

Σ 4 2 P e

Here, D α is the covariant derivative along the Cauchy surface Σ associated with the induced

metric (4.2). The near boundary region’s contribution to the integral over Σ in the final

expression is finite. In deriving (4.19), we have used (4.4) and (4.13). We have used the following equation for an anti-symmetric tensor µν S as

τ µν α µν ν µ = ∇ S D α (4.20) σ τ S . antiderive } µ ν {

And we have also used that the asymptotic boundary term from the integration by parts along

the Cauchy surface Σ vanishes. 12

11 See the discussion around (E.16) for a more careful analysis.

12 See the discussion around (E.21) for a more careful analysis for the near boundary region’s contribution.

14





We now take a direct check for the expression of the Noether charge Q | ξ (4.19). Specif-P e


ically, we check that the Killing symmetry Xξ (4.11), the symplectic form Ω (4.7), and the

Noether charge (4.19) together satisfy the Hamiltonian equation (2.12) as

X · | ξ ΩP e

Z √

= 2 h i µ ν µ ν d x σ τ ( X ξ µν · δF )δA − τ (X ξ · δA )δFµν

Σ P e

Z √ 1

= 2 µ ν ρ ρ ρσ d x σ − τ ξ δF µρ + F F ν µρ δF − g δF ν µν F

2 ρσ

Σ

+ 2 2 2 ρ µ δA A + µ A − δA µ g A δA

µ ν µ ν µν ρ

+ τ µ ν ρ ν µ ρ µν ρ µν ρ ν µ + ∇ ξ F δA − ξ F δA F ξ δA + δF ξ A

ρ ρ ρ ρ

− µ ν ρ µ ν ρ τ F ∇ δA ξ + τ ( ∇ ξ + ∇ ξ ) F δA

µν ρ µ ν ν µ ρ

+ µ ν ρ µ ν ρ τ F ( ∇ + ∇ µ ν ξ ρ ρ ν ) ξ δA + τ δF ( ∇ ξ + ∇ µ ν ρ ρξ ν ) A



+ µ ν 2 ρ µ ν 2 ρ µ ν 2 ρ τ ξ µ( ∇ F νρ ρ) − µ A δA − τ ( ∇ F νµ µ ) − µ A ξ ρ ( δA − τ ∇ δF νµ µ) − µ δA ξ A

ρ

P e

Z √ 1 1

= d2 µ ν ρ ρσ 2 2 ρ x σ − τ ξ δ F µρ + F − g µ ν µν F F A A µ g A A

ρσ µ ν µν ρ −

Σ 4 2



+ α + σ τ ξ F δA − ξ F δA F ξ µ ν δA ρ ρ ρ + δF ξ A D α µ ν ρ ν µ ρ µν ρ µν ρ

ρ

P e

Z √ 1 1

=( 2 µ ν ρ ρσ 2 2 ρ − 1) d x στ ξ δ F − µρ ν µν ρσ F g F F + µ Aµ A − ν µ gµν Aρ A

Σ P 4 2 e

= − δQξ| . (4.21) {check} P e

Here, in deriving (4.21), we have used (4.4), (4.13), (4.16), (4.20). We have also used that the asymptotic boundary term from the integration by parts along the Cauchy surface Σ vanishes.

13

For the practical application below, we now point out some statements in terms of the

Killing symmetry X · · | ξ (4.11) and the two-form Ω[ e ; ] (4.9). Specifically, the statements are P e the following:

(1) Acting the Killing symmetry Xξ (4.11) to one slot of the two-form Ω[ e·; ·]| (4.9) leads to P e

an expression relevant to the Noether charge Qξ| (4.19) as P e

Ω[L (2) A A A A Q A A , e e 1 ; 2 ] = − Ω[ L ; ; ] = − [ ] (4.22) {symQ2}

ξ 1 ξ 2 1 2

ξ

P e P e P e

with

Q(2) Z √ 2 µ ν ρ ρ 1 ρσ [ A 1 ; A 2 ] = d x στ ξ F 1 ,µρ F + F F − F 2 ,ν 1 ,νρ g 2 ,µ µν F 1 ,ρσ ξ 2 P e Σ 2



+ A 1,µ 2,ν + A µ A 1,ν 2,µ µν 1,ρ (4.23) A − µ g A A . {Q2} µ2 2 2 ρ

2 P e

13 See the discussion around (E.24) for a more careful analysis the near boundary region’s contribution.

15





Here, the subscript µ µ P denotes that A and A satisfy the equations of motion. And


e 1 2

the expression (2) Q[·; ·]| (4.23) is relevant to the Noether charge Q | ξ P e ξ (4.19) as

P e

Q(2) A A A A Q . [ 1 = ; 2 = ] = 2 (4.24)

ξ e P ξ

P e

(2) The Noether charge Q | · | ξ (4.19) can be expressed in terms of the two-form Ω[ e · ; ] (4.9) P e P e

as

Q 1 1 ξ | = − Ω[ e L ξ A ; A ] = Ω[ e A ; L A ] P e 2 ξ . (4.25) {Qexp} P e 2 P e

(3) The two-form Ω[ e ·; ·]| is invariant under the Killing symmetry X (4.11) as P e ξ

Ω[ eL ξA1; A ] + Ω[ eA1; LξA2] 2 = 0. (4.26) P e

Here, the statement (1) can be proved with a similar algebra as (4.21). The statement (2) and the statement (3) can be directly read out from the statement (1).

5 Representing the Hamiltonian system with a proper set of

variables

{simplify}

So far, we have reformulated the model to a Hamiltonian system. In this section, by taking use of the mode expansion, we represent the Hamiltonian system with a proper set of variables.

5.1 The framework

{framework}

Before going to the technical details, we first introduce the framework:

We solve out a set of complete and independent modes µ f(x) of the equations of motion

N

(4.4). With the set of modes µ f(x), we represent the general solution in the form of a mode

N

expansion as

A µ X µ ( x ) | = f(x)aN (5.1) . { P modeexpansion N

e

N

We view the coefficients aN in the mode expansion (5.1) as a set of variables that parameterize

the pre-phase space P e which is the set of solutions. And, by applying the general solution (5.1)

to the symplectic form (4.7), we compute the expression of the symplectic form represented with the set of variables aN as

Ω X | = Ω[ f ; f ] · δ a δ a , (5.2) { }

P e N e N 1 symmode 1 2 P e N 1 2 N 2

N1 ,N2

where Ω[ e·; ·]| is defined in (4.9). P e

Below, we will explicitly solve the modes and compute the expression of the symplectic form.

16





5.2 The Killing symmetries


We will solve the modes and compute the expression of the symplectic form with the Killing symmetries. For the application below, we now introduce the Killing symmetries.

We first introduce the Killing fields of the metric (3.4). Specifically, we represent the

independent Killing fields as 14

√

ξ 1 r ∂ p ∂ r2 + 1 ∂ i ( t − φ ) 2 1 = e √ − i r + 1 − 2 2 r + 1 ∂t ∂r r ∂φ

1 ∂ ∂

ξ0 = −

2 ∂t ∂φ

√

ξ 1 2 − ∂ p ∂ i ( t − r r + 1 ∂ φ ) 2 √ − 1 = e + i r + 1 − 2 2 r + 1 ∂t ∂r r ∂φ √

ξ ¯ 1 2 r ∂ p ∂ r + 1 ∂ i ( t + φ ) 2 √ − 1 = e i r + 1 + 2 r 2 + 1 ∂t ∂r r ∂φ ¯ 1 ∂ ∂

ξ0 = +

2 ∂t ∂φ

√

ξ ¯ 1 2 r ∂ p ∂ r + 1 ∂ − i ( t + φ ) − √ 1 = e + i r 2 + 1 +. (5.4) {Kfield} 2 2 r + 1 ∂t ∂r r ∂φ

Here, the Killing fields (5.4) form an SL(2) × SL(2) algebra under the commutator. And the

14 The Killing fields (5.4) are smooth at r = 0. To show the smoothness, we can represent the Killing fields

in the coordinate system (t, x, y) introduced in (3.1) as

ξ 1 it x − iy ∂ p ∂ p ∂ = 1 e − 2 2 2 2 2 p i x + y + 1 − x + y + 1 x 2 + y 2 + 1 ∂t ∂x ∂y ξ0 = + y − x 2 1 ∂ ∂ ∂

∂t ∂x ∂y

ξ 1 x + ∂ − it iy p ∂ p ∂ 2 2 2 2 − 1 = e p + i x + y + 1 − x + y + 1 2 x 2 + y 2 + 1 ∂t ∂x ∂y

ξ ¯ 1 it x + iy ∂ p ∂ p ∂ 1 = e − i x 2 + y 2 + 1 + x 2 + y 2 + 1 2 p 2 2 ∂t ∂x ∂y x + y + 1

ξ ¯ 1 ∂ ∂ ∂ 0 = − y + x 2 ∂t ∂x ∂y

ξ ¯ 1 x − iy ∂ − it p ∂ p ∂ + i x 2 + y 2 + 1 + x 2 + y 2 + 1, (5.3) − 1 = e 2 p 2 2 ∂t ∂x ∂y x + y + 1

where all components are smooth at ( 1 t, x = 0 , y = 0). While, the O ( ) behaviors for r φ components → 0 in the

r

of the Killing fields in (5.4) are only coordinate singularities.



17

independent non-zero commutators are

[ ξ 0, ξ1] = iξ1 [ ξ 0, ξ−1] = −iξ−1 [ ξ 1, ξ−1] = −2iξ0 [ ¯ ¯ ¯ ξ 0 , ξ 1 ] = i ξ 1 [ ¯ ¯ ¯ ξ 0 , ξ − 1 ] = − i ξ −1 [ ¯ ¯ ¯ ξ 1 , ξ − 1 ] = − 2 i ξ 0. (5.5) {xicommutator

We now introduce some relevant properties of the Killing fields (5.4). Here, we divide the Killing fields into two sets ¯ ¯ ¯ { ξ − 1 , ξ 0 , ξ 1 } , { ξ − 1 , ξ 0 , ξ 1}. And we point out the following properties of the Killing fields in each set: First, the inner products between the Killing fields form a constant non-degenerate matrix as

  1 0 0

g µ ν ¯ µ ¯ ν 1 2 µν = ξ ξ g ξ ξ = 0 − a b µν a b  0  , (5.6) {contraction} 4 1

2 0 0

where a/b = −1, 0, 1 labels the row/column indices of the matrix in the order of up to down/left

to right. Second, the metric (3.4) can be represented in terms of the Killing fields as

gµν µ ν µ ν µ ν =2 ξ ξ + 2 ξ ξ − 4 ξ ξ

−1 1 1 −1 0 0

=2 ¯ µ ¯ ν µ ¯ ν µ ¯ ν ξ ξ + 2 ¯ ξ ξ − 4 ¯ ξ ξ . (5.7) {summation} − 1 1 1 − 1 0 0

Third, the contractions of the volume form µνρ with two Killing fields are also Killing fields with the independent and non-zero contractions being as

µνρξ ξ = ξ 0 11,µ 2 ν i ρ

ν i ρ ξ µνρ ξ = − ξ− 0 − 11,µ 2 ν ρ µνρ = ξ ξ −iξ , (5.8) {cross }

1 − 0,µ 1

and

¯ ν ρ i ¯ ¯ µνρ ξ ξ = − ξ 0 1,µ 1 2

¯ ρ i ν ¯ ¯ µνρ ξ ξ = ξ 0 − 1,µ 1 2 ¯ ν ρ ¯ ¯ µνρ ξ ξ = i ξ 1 − 0,µ, (5.9) {crossbar} 1

where the non-zero components of the volume form µνρ are as

√

trφ = rφt = φtr = −rtφ = −tφr = − − φrt =g = r. (5.10)

18





Fourth, the covariant derivative of the Killing fields can be represented in terms of the Killing fields as


∇ ρ ξ = − ξ

µ a,ν µνρ a

∇ ¯ ¯ ρ µ ξ a,ν = µνρ ξ, (5.11) {nablaxi} a

for a = −1, 0, 1.

We now construct the Casimir “operators” 15 of the Killing symmetries. Specifically, we construct the Casimir “operators” as

C =L L − L L L ξ (5.12) Cforp 0 ξ 0 ξ ξ + i {} − 1 1 ξ 0

=Lξ L 0ξ − L 0ξ L 1ξ − iL , { } − 1 ξ (5.13) Cforn 0

and

C =L ¯ L ¯ − L¯ L ¯ + iL¯ (5.14) {Cbarforp} ξ 0 ξ 0 ξ ξ − 1 1 ξ 0

=L ¯ L ¯ − L¯ L¯ − iL¯ . (5.15) {Cbarforn} ξ 0 ξ 0 ξ 1 ξ − 1 ξ 0

Here, the Casimir “operators” commute with the Killing symmetries as

[C, L ξ ] = [C, L ] = [ , a ¯ C L ] = [C, L ¯ ] = 0, (5.16) ξ a ξ a ξ a

which can be shown by taking use of the SL(2) × SL(2) algebra (7.3). We then explicitly compute the action of the Casimir “operators” onto a vector field µ A as

C µ 1 1 1 ν µ µν ρ µ A = − ∇ ν ∇ A − ∇ A − A ρ ν 4 2 2

C µ 1 1 1 ν µ µν ρ µ A = − ∇ ν ∇ A + ∇ A { } ρ ν A − , (5.17) CCbar 4 2 2

where we have used (5.6), (5.7), (5.8), (5.9), (5.11). And, for the practical application below, we also compute the following action in terms of the Casimir “operators” onto a vector field Aµ as

( µ 1 ν µ µ C + C ) A = − ∇ ∇ ν A − A 2 ( 2 µ ν µ µ ν C − C ) A = ∇ ν ν { ∇ A − ∇ ∇ A . (5.18)Ctoequ}

Here, in deriving (5.18), we have used (5.17). And the final expression (5.18) is exactly the

linear “operators” appearing in the equations of motion (4.4), (4.5).

15 Here, by adding a quote to the “operators”, we emphasize that the “operators” are the linear “operators”

that act on the vector fields instead of the operators that act on a Hilbert space.



19





5.3 Solving the modes


We now solve a set of complete and independent modes of the equations of motion (4.4) with the Killing symmetries.

5.3.1 The choice of the set of the modes We first explain our choice of the set of the modes.

By taking use of the Killing symmetries, we choose the set of modes such that they compose representations of the Killing symmetries. And, in each representation, we furthermore choose the modes to be the eigenfunctions of the time shift symmetry

∂

= ξ0 + ¯ ξ 0, (5.19) {partialt}

∂t

and the rotation symmetry

∂

= −ξ0 + ¯ ξ 0 . (5.20) {partialphi}

∂φ

Under such a choice of the set of modes, we represent the individual modes in the form of

f µ −iωt imφ µ ( x ) = e e f(r). (5.21) { } e modeform

λ;N

Here, λ labels the representations. N labels the different modes in each representation. (ω, m) label the eigenvalues of the time shift symmetry ∂ ∂ and the rotation symmetry of the modes

∂t ∂φ

(5.21) as

L µ µ f = − iωf

∂ λ;N λ;N ∂t

L µ µ f = imf. (5.22) { ∂ eigenequation

∂φ λ;N λ;N

m is a real integer. And, for the moment, we make no assumption for ω, which can even have an imaginary part.

Below, we will solve the expressions of the modes.

5.3.2 The eigenvalues of the Casimir “operators” Before solving the specific expressions of the modes, we first derive some general properties of the modes in terms of the Killing symmetries. We now solve the eigenvalues of the Casimir “operators” of the representations that appear in the set of modes.

Specifically, by comparing the linear “operators” (5.18) with the equations of motion (4.4),

(4.5), we get the following equations in terms of the Casimir “operators” as

(C + C)A = − µ A P µ 2 µ 1

e P 2

( 2 µ 2 µ C − C ) A = µ A . (5.23) { } equCCbar

P e P

20





And, by applying the mode expansion (5.1) and the form of the modes (5.21) to these equations


(5.23), we solve the eigenvalues of the Casimir “operators” as

C f = − µ + µ f λ µ 1 1 2 µ

;N λ;N 4 2

µ 1 1

C 2 µ f = − µ − µ f, (5.24) {C1}

λ;N λ;N 4 2

or

µ 1 1

C 2 µ f = − µ − µ f

λ;N λ;N 4 2

1 1

C µ 2 µ f = − µ + µ f. (5.25) {C2}

λ;N λ;N 4 2

Here, the equations (5.24), (5.25) mean that only the representations with such eigenvalues of the Casimir “operators” can appear in the set of modes.

5.3.3 Bounding the (ω, m) of the modes

We now bound the ( 16 ω, m ) of modes.

We first derive some useful equations. Specifically, by applying µ µ∗ µ µ f , f , ξ / ¯ ξ to

λ,N λ,N 0 0

(4.22) in the position of µ µ µ A , A , ξ and by taking use of (5.19), (5.20), (5.22), we get the

1 2

following equations

i ∗ ( ω + m ) Ω[ f ; f ]

e λ,N λ,NP

e

= ∗ ∗ i ( ω + m ) Ω[ e λ,N λ,N ; f f ] P

e

Z Z ∞ 2π 1 1

= 2 2 2 dr dφ r | F tr + F rφ + | | F rφ + | | F | r 2 tφ

0 r(r + 1) 0

+ 2 r 1 2 2 2 2 2 2 µ | A t − A φ | + µ r ( r + 1) | A r | + µ | A φ | , (5.26) {positive1} 2 2 r + 1 r ( r + 1) µ µ A = f , P e λ,N

and

i ∗ ( ω − m ) Ω[ f ; f ]

e λ,N λ,NP

e

= ∗ ∗ i ( ω − m ) Ω[ f , f ]

e λ,N λ,N P

e

Z Z ∞ 2π 1 1

= 2 2 2 dr dφ r | F tr rφ + − F | | F | | rφ tφ 2 + F |

0 r r(r + 1) 0

+ 2 r 1 2 2 2 2 2 2 µ | A t + A | φ + µ r ( r + 1) | A r | + µ | A | } φ . (5.27) { positive2 2 2 r r µ + 1 ( r + 1) µ A = f , P e λ,N

With these equations (5.26), (5.27), we provide the following arguments to bound the

(ω, m) of the modes: First, we notice that the expressions (5.26), (5.27) are positive definite.

16 We thank for the discussion with Jia-ju Zhang that inspires us the following argument.

21





ω


P



m



N

Figure 1: The bound of the (ω, m) of the modes. The shaded region is the region (5.32), which

we refer to as the bounded region. The region labeled by P is the region (5.33), which we refer

to as the positive region. And the region labeled by N is the region (5.34), which we refer to as the negative region. {spectrum}

Second, from the non-vanishing of (5.26) and (5.27), we know that the following quantities are non-zero

Ω[ ∗ f ; f] 6= 0 e λ,N λ,N ω + m 6= 0 ω∗ + m 6= 0 ω − m 6= 0 ω ∗ − m 6= 0. (5.28)

Third, by dividing (5.26) or (5.27) over the non-zero quantity ∗ Ω[ f , f]| , we get

e λ,N λ,N P e

ω ∗ = ω, (5.29)

which means that ω is real. Fourth, by comparing the signs of (5.26) and (5.27), we conclude that the values of ω + m and ω − m can only be both positive or both negative.

So far, we have bounded the ( ω, m) of the modes to be

ω + m > 0 ω − m > 0, (5.30) {pregion}

or

ω + m < 0 ω − m < 0. (5.31) {nregion}

22





(ω + 1, m − 1) (ω + 1, m + 1)


ξ ¯ 0 / ξ 0

ξ ¯ ξ − 1−1

ξ (ω, m) ¯ 1 ξ 1



(ω − 1, m − 1) (ω − 1, m + 1)

Figure 2: The shift of the ( ω, m) of the modes under the Killing symmetry transformations. {map}

We refer to the modes whose (ω, m) satisfy (5.30) as the positive frequency modes. And we

refer to the modes whose (ω, m) satisfy (5.31) as the negative frequency modes.

We illustrate the bound of the ( ω, m) of the modes in the (ω, m) coordinate system in

Fig.1. There, we denote the region

ω + m > 0 ω + m < 0

( [ ω, m ) ( ω, m ) (5.32) { }

Uregion ω m > ω m < − 0 − 0

by shading, which we refer to as the bounded region. We denote the region

ω + m > 0

( ω, m ) (5.33) { }

Pregion1 ω m >

− 0

by the symbol P, which we refer to as the positive region. And we denote the region

ω + m < 0

( ω, m ) (5.34) { }

Nregion1 ω m <

− 0

by the symbol N , which we refer to as the negative region.

5.3.4 No mixing between the positive frequency modes and the negative frequen-

cy modes under the Killing symmetry transformations

We now show that, under the Killing symmetry transformations, the positive frequency modes and the negative frequency modes don’t mix with each other. Namely, the positive frequency modes are only mapped to some positive frequency modes, and the negative frequency modes are only mapped to some negative frequency modes.

To show the aforementioned property, we first study the shift of the (ω, m) of the modes

under the Killing symmetry transformations. Specifically, by taking use of (7.3), (5.19), (5.20),



23





(5.22), we get the following equations


 ∂ ξ0 ξ λ,N L  µ µ L = − fiωL 0 fλ,N

∂t

 ∂ ξ 0 λ,N = L µ µ L L f im f

∂φ ξ 0 λ,N

 ∂ ξ ξ − =  µ µ L L f −i(ω + 1)L f 1 ∂t λ,N −1 λ,N

 ∂ ξ − = L µ µ L f i ( m + 1) L f

∂φ 1 λ,N ξ−1 λ,N

 ∂ ξ1 ξ λ,N =  µ µ L L − fi(ω − 1)L f 1 ∂t λ,N

 ∂ ξ = L µ µ L f i ( m − 1) L f

∂φ 1 ξ λ,N1 λ,N

 ∂ ¯ L  µ µ L f = − iω L ¯ f

∂t ξ0 λ,N ξ0 λ,N

 0 ξ ¯ f L µ µ ∂ ¯ L λ,N = imL f ξ ∂φ 0 λ,N

 ∂ ¯ L  µ µ L f = − i ( ω + 1) L ¯ f

∂t ξ λ,N ξ − 1−1 λ,N

 ∂ ¯ L L µ µ f = i ( m − 1) L ¯ f

∂φ ξ 1 ξ − λ,N−1 λ,N

 ∂ ¯ L  µ µ L f = − i ( ω − 1) L ¯ f

∂t ξ1 λ,N ξ1 λ,N µ µ changexi .

 L ∂ L ¯ f = i(m + 1)L ¯ f ξ 1 (5.35) { } ∂φ λ,N ξ1 λ,N

From these equations (5.35), we read out the shift of the (ω, m) of the modes under the Killing symmetry transformations as

L → ξ : ( ω, m ) (ω, m) 0

L ξ : (ω, m) → (ω + 1, m + 1) − 1

Lξ : (ω, m) → (ω − 1, m − 1) 1

L ¯ : (ω, m) → (ω, m) ξ 0

L ¯ : (ω, m) → (ω + 1, m − 1) ξ − 1

L ¯ : (ω, m) → (ω − 1, m + 1), (5.36) {shift} ξ 1

which is illustrated in Fig.2. And, from the expressions (5.36) or from Fig.2, we furthermore see that the (ω, m) of the modes either stay fixed or shift in the direction of 45 degree in the (ω, m) coordinate system, under the Killing symmetry transformation.

We now show the property mentioned in the beginning of this subsubsection. Specifically, we consider the actions of the Killing symmetries to some given modes, which shift the (ω, m) of the modes in the aforementioned way. For the positive frequency modes whose (ω, m) are in

the positive region of Fig.1, the shifted (ω, m) are either still in the positive region or out of the bounded region, but not in the negative region. It means that the positive frequency modes are either mapped to some positive frequency modes or being annihilated. While, for the negative

frequency modes whose (ω, m) are in the negative region of Fig.1, the shifted (ω, m) are either

24

still in the negative region or out of the bounded region, but not in the positive region. It means that the negative frequency modes are either mapped to some negative frequency modes or being annihilated.

5.3.5 The expressions of the modes in the highest weight representations

{highest}

We now solve the specific expressions of the modes. Here, we first focus on the modes in the highest weight representations. And, after solving out the highest weight representations, we can argue that there are no more modes.

Here, by the highest weight representations, we mean the following two kinds of repre-sentations, which we refer to as the positive representation and the negative representation. For each positive representation, we make the following requirements: first, the modes are all

positive frequency modes whose (ω, m) satisfy (5.30); second, there is a highest weight mode f µ satisfying

+,λ;0,0

L µ µ ξ = f L ¯ f = 0, (5.37) {phighest}

1 +,λ;0,0 ξ1 +,λ;0,0

where µ λ label the different positive representations; third, the other descendent modes f

+ ¯ ,λ ; k, k

can be generated by acting µ L L ξ ¯ and onto the highest weight mode f as

−1 ξ −1 +,λ;0,0 f = #L L f . (5.38) ¯ µ ¯ k µ

+ ¯ ,λ ; k, k ξ +,λ;0 0 − 1 ξ , − 1

While, for each negative representation, we make the following requirements: first, the modes

are all negative frequency modes whose (ω, m) satisfy (5.31); second, there is a highest weight mode µ f satisfying

−,λ;0,0

L µ µ L ξ ¯ f = f = 0, (5.39) − {nhighest} 1

−,λ;0,0 ξ − − 1,λ;0,0

where µ λ label the different negative representations; third, the other descendent modes f

− ¯ ,λ ; k, k

can be generated by acting µ L L ξ ¯ and onto the highest weight mode f as

1 ξ1 −,λ;0,0

f µ ¯ k µ = #L L f. ¯ (5.40) ¯

−,λ;k,k ξ1 ξ − 1,λ;0,0

We can solve the expressions of the modes in the highest weight representations by taking use of the Killing symmetries. Specifically, we first solve the expressions of the highest weight

modes, by taking use of Killing symmetries (5.4), the expressions of the Casimir operators

(5.12), (5.13), (5.14), (5.15), the eigenvalues of the Casimir “operators” (5.24), (5.25), and

the requirements of the highest weight representations (5.30), (5.31), (5.37), (5.39). We then represent the descendent modes as acting Lξ , L ¯ , Lξ , L¯ to the highest weight modes. − 1 ξ 1 − 1 ξ 1

We now list the expressions of modes in the highest weight representations, their eigenvalues of the time shift symmetry ∂ ∂ and rotation symmetry , and their transformations under the

∂t ∂φ

Killing symmetries. We reorganize these expressions and properties according to the individual representations as the following:

25

• + Representation I: the positive representation with the eigenvalues (5.24) of the Casimir

“operators”. The expressions of the modes are

r − i(µ+2)t µ + 1 e

f µ µ = ξ

+,u;0,0 µ+2 1 πµ 2 2 (r + 1)

s

f µ 1 ¯ k k µ = L L ¯ f. (5.41) {repI+} ¯ + ,u ; k, k ¯ ξ k ! µ − 1 + ,u ;0 , 0 k k !( µ ξ + 2) − 1 ¯ k

The eigenfunction equations of the time shift symmetry ∂ and the rotation symmetry

∂t

∂ acting to the modes (5.41) are

∂φ

L µ µ f = − i ( µ + 1 + k + ¯ k ) f

∂ ¯ ¯ + ,u ; k, k + ,u ; k, k ∂t

L µ ¯ µ ∂ f = i ( − 1 + k − k ) f. (5.42) ¯ ¯ ∂φ + ,u ; k, k + ,u ; k, k

The actions of the Killing symmetries to the modes (5.41) are

Lξ = − 0 f ¯ i + k f ¯ + ,u ; k, k + ,u ; k, k 2 µ µ µ

L µ p µ ξ = f ( k + 1)( µ + k ) f

−1 ¯ ¯ + ,u ; k, k + ,u ; k +1 , k

L µ p µ ξ1 ¯ ¯ + f ,u = − k(µ + k − 1)f ; k,k +,u;k−1,k

L ¯ f = − i + ¯ k + 1 f ξ 0 ¯ ¯ + ,u ; k, k + ,u ; k, k 2 µ µ µ

L ¯ µ q µ ξ f = (¯ k + 1)(µ + ¯ k + 2)f − 1 ¯ ¯ + ,u ; k, k + ,u ; k, k+1

L ¯ f = − k(µ + ¯ k + 1)f . (5.43) {transI+} ξ µ q µ ¯

1 ¯ ¯ + ,u ; k, k + ,u ; k, k−1

The detailed expressions of the modes are

f = 2(µ + k)(µ + k + 1)ϕ ¯ξ ¯ µ +2 , +; k, k + µ p µ 1

,u;k,k 1 µ

+ 2 i 2k(µ + k)ϕ ¯ξ µ +2 , +; k − 1 , k0 µ 1 p µ

− 1 p µ − 2 k ( k 1) ϕ ¯ ξ. (5.44) {dexpI+} µ +2 , +; k − 2 , k − 1 µ

• + Representation II: the positive representation with the eigenvalues (5.25) of the Casimir

“operators”. The expressions of the modes are

µ µ ¯ µ r − i(µ+2)t

f = µ ξ + ,v ;0 , 0 +21 πµ + 1 e

( 2 2 r + 1)

s

f µ ¯ 1 k k µ L ¯ = L ¯ f. (5.45) {repII+} + ,v ;0 , 0 + ,v ; k, k ¯ ξ k !( µ + 2) k k ! µ − 1 ξ − 1 ¯ k



26

The eigenfunction equations of the time shift symmetry ∂ and the rotation symmetry

∂t

∂ acting to the modes (5.45) are

∂φ

L µ µ f = − i ( µ + 1 + k + ¯ k ) f

∂ ¯ ¯ + ,v ; k, k + ,v ; k, k ∂t

L µ µ ¯ ∂ f = i (1 + k − k ) f. (5.46) ¯ ¯ + ,v ; k, k + ,v ; k, k ∂φ

The actions of the Killing symmetries to the modes (5.45) are

Lξ f = − i + k + 1 f 0 ¯ ¯ + ,v ; k, k + ,v ; k, k 2 µ µ µ

L µ p µ ξ− = f ( k + 1)( µ + k + 2) f

1 ¯ ¯ + ,v ; k, k + ,v ; k +1 , k

L µ p µ ξ1 ¯ ¯ + + 1) f = − + k ( µ k f ,v ;k,k +,v;k−1,k

L ¯ f = − i + ¯ k f ξ 0 ¯ ¯ + ,v ; k, k + ,v ; k, k 2 µ µ µ

q

L µ µ ¯ f = (¯ k + 1)( µ + ¯ k ) f

ξ−1 ¯ ¯ + ,v ; k, k + ,v ; k, k+1

q

L µ ¯ µ ¯ f = − k ( µ + ¯ k − 1) f. (5.47) {transII+} ξ 1 ¯ ¯ + ,v ; k, k + ,v ; k, k − 1

The detailed expressions of the modes are

f µ 1 q ¯ µ = 2( + ¯ + 1) ¯ µ + ¯ k )( µ k ϕ ¯ ξ + ,v ; k, k µ +2 , +; k, k 1 µ

+ 2 1 q ¯ µ i 2¯ k ( µ + ¯ k ) ϕ ¯ µ +2 , +; k, k − ξ 1 0 µ

− 1 q ¯ µ 2¯ k (¯ k − 1) ϕ ¯ ξ. (5.48) {dexpII+} µ +2 , +; k, k − 2 − 1 µ

• − Representation I: the negative representation with the eigenvalues (5.24) of the Casimir

“operators”. The expressions of the modes are

r i(µ+2)t µ + 1 e

f µ µ = ξ

−,u;0,0 µ+2 −1 πµ ( 2 2 r + 1)

s

f µ ¯ 1 k µ L = L f. (5.49) {repI-} ¯ ¯ − − ,u ; k, k ¯ ξ ξ ,u ;0 , 0 k ! µ 1 k k !( µ + 2) 1 ¯ k

The eigenfunction equations of the time shift symmetry ∂ and the rotation symmetry

∂t

∂ acting to the modes (5.49) are

∂φ

L µ ¯ µ ∂ f = − ( ¯ i − µ − 1 − k − k ) f ¯ − ∂t ,u ; k, k − ,u ; k, k L µ µ f − = i (1 k + ¯ k ) f. (5.50)

∂ ¯ ¯ − ,u ; k, k − ,u ; k, k

∂φ



27

The actions of the Killing symmetries to the modes (5.49) are

Lξ f =i + k f 0 ¯ ¯ − ,u ; k, k − ,u ; k, k 2 µ µ µ

L µ p µ ξ = f − k ( µ + k − 1) f

−1 ¯ ¯ − ,u ; k, k − ,u ; k − 1 , k

L µ p µ ξ1 − = f ( k + 1)( µ + k ) f

,u ¯ − ¯ ; k, k ,u ; k +1 , k

L ¯ f =i + ¯ k + 1 f ξ 0 ¯ ¯ − ,u ; k, k − ,u ; k, k 2 µ µ µ

q

L µ µ ¯ ¯ f = − k ( µ + ¯ k + 1) f ξ ¯ − 1 − ,u ; k, k − ,u ; k ;¯ k − 1

q

L µ µ ¯ f = (¯ k + 1)( µ + ¯ k + 2) f. (5.51) {transI-}

ξ1 − ¯ ¯ ,u ; k, k − ,u ; k, k+1

The detailed expressions of the modes are

f = 2(µ + k)(µ + k + 1)ϕ ¯ − µ p µ 1 ,u ¯ µ+2,−;k,k −1 ξ ;

k,k µ

− 1 p µ 2i 2k(µ + k)ϕ ¯ξ µ +2 , − ; k − 1 , k0 µ

− 1 p µ − 2 k ( k 1) ϕ ¯ ξ µ +2 , −. (5.52) {dexpI-} ; k − 2 , k 1 µ

• − Representation II: the negative representation with the eigenvalues (5.25) of the Casimir

“operators”. The expressions of the modes are

f = ξ − ,v ;0 , 0 µ +2−1 πµ µ ¯ µ r i(µ+2)t + 1 e µ

( 2 2 r + 1)

s

f µ ¯ 1 k µ L = L f. (5.53) {repII-} ¯ ¯ − − ,v ; k, k ¯ ξ ξ ,v ;0 k !( µ + 2) k k ! µ 1 , 0 1 ¯ k

The eigenfunction equations of the time shift symmetry ∂ and the rotation symmetry

∂t

∂ acting to the modes (5.53) are

∂φ

L µ ¯ µ ∂ f = − ¯ i ( − µ − 1 − k − k ) f ¯ − ∂t ,v ; k, k − ,v ; k, k L µ µ f − = i ( − 1 k + ¯ k ) f. (5.54)

∂ ¯ ¯ − ,v ; k, k − ,v ; k, k

∂φ

The actions of the Killing symmetries to the modes (5.53) are

Lξ f =i + k + 1 f 0 ¯ ¯ − ,v ; k, k − ,v ; k, k 2 µ µ µ

L µ p µ ξ− f = − k ( µ + k + 1) f

1 ¯ ¯ − ,v ; k, k − ,v ; k − 1 , k

L µ p µ ξ = f ( k + 1)( µ + k + 2) f

1 − ¯ − ¯ ,v ; k, k ,v ; k +1 , k

L ¯ f =i + ¯ k f ξ 0 − ¯ ¯ ,v ; k, k − ,v ; k, k 2 µ µ µ

q

L µ µ ¯ ¯ f = − k ( µ + ¯ k − 1) f ξ ¯ ¯ − 1 − ,v ; k, k − ,v ; k, k − 1

q

L µ µ ¯ f = (¯ k + 1)( µ + ¯ k ) f. (5.55) {transII-}

ξ1 − ¯ ¯ ,v ; k, k − ,v ; k, k+1

28

The detailed expressions of the modes are

f = 2(µ + ¯ k)(µ + ¯ k + 1)ϕ ¯ ξ − µ µ ¯ 1 q

,v ¯ µ+2,−;k,k − ; k, k1 µ

− 1 q µ ¯ 2 i 2¯ k ( µ + ¯ k ) ϕ ¯ ξ µ +2 , − ; k, k − 1 0 µ

− 1 q µ ¯ 2¯ k (¯ k − 1) ϕ ¯ ξ. (5.56) {dexpII-} µ +2 , − ; k, k − 2 1 µ

We now provide some explanations for the aforementioned expressions:

• λ n denotes

Γ( λ + n)

λn = λ(λ + 1)...(λ + n − 1) = . (5.57)

Γ(λ)

• The subscript +/− denotes that the modes are in a positive/negative representation.

• The subscript u/v labels the representations of the modes. It also manifests the po-

larizations of modes in the near boundary region. To be more precise, we introduce a boundary coordinate system (u, v) such that

u = t − φ v = t + φ. (5.58)

We introduce the vector fields along the coordinates (u, v) as

∂ 1 ∂ 1 ∂

= −

∂u 2 ∂t 2 ∂φ

∂ 1 ∂ 1 ∂

= + . (5.59)

∂v 2 ∂t 2 ∂φ

And the expressions of the modes µ µ f / f viewed as vector fields are

+( ¯ − ¯ ) ,u,k, k +( − ) ,v,k, k

along ∂ ∂ / in the near boundary region.

∂u ∂v

• ϕ ¯ are defined as (D.9) and (D.12). ∆ , + / − ; k, k

• f ¯ and ϕ ¯ , with k = ..., −2, −1 or ¯ k = ..., −2, −1, are viewed as zero. + / − ,u/v ; k, k ∆ , + / − ; k, k

Under this viewpoint, the expressions (5.43), (5.44), (5.47), (5.48), (5.51), (5.52), (5.55),

(5.56) work for k, ¯ k taking any real integer values.

• The (ω, m) values of the modes can be read out from the eigenfunction equations of the

time shift symmetry ∂ ∂ and the the rotation symmetry acting to the modes similar

∂t ∂φ

as the equation (5.22).

• µ ¯ With the non-vanishing of the modes f , for k, k = 0, 1, 2, ..., we can argue ¯ + / − ,u/v ; k, k

that there are no more modes.

29

• The normalizations of the modes are chosen for the convenience of the discussion below.

• The modes in the positive representations and in the negative representations satisfy the

following conjugate relations

f µ µ ∗ = ( f )

− ¯ ¯ ,u ; k, k + ,u,k, k

f µ µ ∗ = ( f ). (5.60) {conjugate}

− ¯ ¯ ,v ; k, k + ,v ; k, k

• See Appendix F for more materials about the modes in the highest weight representation-

s, including: a derivation for the expressions of the highest weight modes in Appendix

F.1, the detailed expressions of the descendant modes in Appendix ??, the asymptotic

behaviors of the modes in the near boundary region in Appendix F.2, and an argument

that there are no more modes in Appendix F.3.

5.4 Computing the expression of the symplectic form

{twoform}

We now compute the expression of the symplectic form. More precisely, we compute the values

of the two form Ω[ e·; ·]| (4.9) with the two slots applied with the modes listed in subsubsection P e

5.3.5.

We first provide a selection rule. And, with the selection rule, we figure out the possibly non-zero components of the two form µ µ Ω[ · ; · ] | . Specifically, we consider two modes f , f,

e P 1 2 e

which satisfy the following eigenfunction equations of the Casimir “operators”, the time shift symmetry, and the rotation symmetry as

C µ µ f = C f

1 1 1

C µ µ f = C f

1 1 1

L µ µ ∂ 1 1 = f −iω f1

∂t

L µ µ ∂ 1 = f im, (5.61) f

∂φ 1 1

and

C µ µ f = C f

2 2 2

C µ µ f = C f

2 2 2

L µ µ ∂ 2 2 = f −iω f2

∂t

L µ µ ∂ 2 = f im f. (5.62)

∂φ 1 2

For the two modes f1, f2, we derive the following equations for the corresponding component



30

of the two form Ω[ e f | 1 ; f 2 ] as P e

C C 1 e 1 2 e 1 2 P Ω[ f ; f ] = Ω[ f ; f ] P e e

= Ω[( L L − L L + i L ) f ; f ]

e ξ ξ 0 ξ ξ ξ 1 0 − 1 1 0 2P e

=Ω[ eL L | − L ξ Ω[ e 0 ξ f ; f 0 1 2 ] L P e ξξ f1; f ]| Ω[ e f1 f ] − 1 1 2 + i L ξ ;| 2 P e 0P e =Ω[ ef1 ; Lξ L 0ξ0 f2 ]| − Ω[ ef1; Lξ L − e 1 ξ 2 | 2 | − 1 f ] i Ω[ f ; L ξ f ] P e P e 1 0P e =Ω[ ef1 ; (L L − L L − L ξ 0 ξ ξ i )f ] 0 1 ξ ξ 2| − 1 0P e =Ω[ ef1 ; Cf2]| = C Cselect 2 Ω[ e f { 1 ; f 2 ] | , (5.63)} P e P e

and

C 1 Ω[ f ; f ] = Ω[ C f ; f ]

e e 1 2 1 2 PP e e

= Ω[( L L − L L + i L ) f ] ; f

e ¯ ¯ ¯ ¯ ¯ ξ 1 2 ξ 0 ξ 0 ξ −1 1 ξ 0 P e

=Ω[ eL ¯ L ¯ f ; f ]| Ω[ ¯ ξ 2 − e L L ¯ f ; ]| + iΩ[ ¯ f ; f ] ξ 1 f 2 e L 1 2| 0 ξ 1 0 P e ξ − 1 1 P e ξ 0P e =Ω[ ef L L 1 ; ¯¯ f ]| − Ω[ ef ; L ¯ L f ]| − iΩ[ ; L f ]| ξ 0 ξ 2 0 P e 1 ¯ ξ 2 e f ¯ 2 1 ξ 1 − 1 P e ξ 0P e =Ω[ ef1 ; (L ¯ L ¯ − L¯ L¯ − iL¯ )f ]| ξ 0 ξ 0 ξ 2 1 ξ ξ − 1 0P e =Ω[ ef1 ; Cf2]| = C2Ω[ ef1; f2]| , (5.64) {Cbarselect} P e P e

and

− iω L 1 Ω[ e f | 1 ; f 2 ] | = Ω[ e ∂ f ; f ] − ; P e 1 2 = Ω[ e f L ∂ f | 2 ] = iω Ω[ ef ; f ]| {omegaselect} P e 1 P e 2 1 2 , (5.65) P e ∂t ∂t

and

im1Ω[ ef1; f2]| = Ω[ eL ∂ f1; f2]| = −Ω[ ef ; L ∂ 2]| = −im2Ω[ e 1; f ]| (5.66) {mselect} P e P e 1 f f P e 2 P e ∂φ ∂φ

And, from these equations (5.63), (5.64), (5.65), (5.66), we read out a selection rule: The component of the two form Ω[ ef1 ; f2]| can be non-zero only when P e

C 1 − C2 =0

C 1 − C2 =0

ω1 + ω2 =0

m 1 + m2 =0. (5.67)

By applying the modes listed in subsubsection 5.3.5 to this selection rule, we figure out that the possibly non-zero components of the two form Ω[ e·; ·]| can only be P e

Ω[ ef ¯ ; f ¯ ]| = −Ω[ ef ¯ ; f ¯] + ,u ; k, k − ,u ; k, k P e − ,u ; k, k + ,u ; k, k Ω[ ef ¯; f + ,v ; k− ¯]| = −Ω[ ef ¯; f ¯], (5.68) {nonzerocomponent k, ,v ; k, k P e − ,v ; k, k + ,v ; k, k



31

for ¯ k, k = 0, 1, 2, ....

We now compute the possibly non-zero components of the symplectic form Ω[ e·; ·]| in P e

(5.68). First, by applying the primary modes in (5.41), (5.45), (5.49), (5.53) to the two form

Ω[ e·; ·]| in (4.9), we compute P e

Ω[ f − , f ] = Ω[ f , f ] = −i e e + ,u ;0 , 0 − ,u ;0 , 0 − ,u , 0 + ,u ;0 , P ;0 0P e e

Ω[ f , f ] = − Ω[ f , f ] = −i. (5.69) { } e e + ,v ;0 , 0 − ,v ;0 , 0 − ,v ;0 , 0 + ,v ;0 , 0 bracket0

P e P e

Second, by respectively applying the sets

( µ µ µ f , f , ξ)

+ ¯ ¯ ,u ; k, k − − ,u ; k +1 , k1

( µ µ µ ¯ f , f , ξ) ¯ ¯ − + ,u ; k, k − ,u ; k, k +1 1 ( µ µ µ f , f , ξ)

+ ¯ ,v ; k − ¯ −1 k, ,v ; k +1 , k

( µ µ µ ¯ f , f , ξ) (5.70) ¯ ¯ + ,v ; k, k − − ,v ; k, k +1 1

to (4.22) in the position of

( µ µ A , A, ξ), (5.71)

1 2

and by taking use of the actions of the Killing symmetries (5.43), (5.47), (5.51), (5.55), we get the following recursion relations as

Ω[ e f ¯; f ¯]| =Ω[f ¯; f ¯ ]| + ,u ; k +1 , k − ,u ; k +1 , k e P e + ,u ; k, k − ,u ; k, kP e Ω[ e f ¯ ; f ¯ ]| =Ω[ ef ¯; f ¯ ]| + ,u ; k, k +1 − ,u ; k, k +1 P e + ,u ; k, k − ,u ; k, kP e Ω[ ef ¯; f ¯]| =Ω[ ef ¯; f ¯]| + ,v ; k +1 , k − ,v ; k +1 , k P e + ,v ; k, k − ,v ; k, kP e Ω[ ef ¯ ; f ¯ ]| =Ω[ ef ¯; f ¯]| . (5.72) {bracketrecursion + ,v ; k, k +1 − ,v ; k, k +1 P e + ,v ; k, k − ,v ; k, k P e

Finally, by combining (5.69) and (5.72), we get the non-zero components of the two form

Ω[ e·; ·]| (4.9) as P e

Ω[ f , f ] = − Ω[ f , f ] = −iδ δ e e ¯ ¯ + ,u ; k, k − ,u ; k 0 , k 0 k 0 ¯ ¯ 0 − ¯ ¯ P e ,u ; ,k0 +,u;k,k k,k P 0 e k,k

Ω[ f , f ] = − Ω[ f , f ] = −iδ . δ (5.73) e e ¯ + ,v ; k − 0 ¯ 0 0 ¯ 0 ¯ ¯0 k, k k,k 0 ¯ ,v ; k , k P − ,v ; k , k + ,v ; k, P k, k e e

5.5 The Hamiltonian system

So far, we have computed all elements appearing in the framework in subsection 5.1. We now apply them therein and represent the Hamiltonian system.



32

Specifically, by applying the set of modes listed in subsubsection 5.3.5 to (5.1), we get the general solution in the form of a mode expansion as

+∞

A µ X µ µ ( x ) = f ( x ) a(x)a ¯ P e ¯ ¯ + f + ,u ; k, k u ; k, k ¯ + ,v ; k, k v ; k, k

k, ¯ k=0

+ f µ ∗ µ ∗ ( x )a + f (x ) a, − (5.74) {vmodeexp} ¯

,u ¯ ¯ ; k, k u ; k, k − ¯ ,v ; k, k v ; k, k

which is real benefitting from the conjugate relation (5.60). With the mode expansion (5.74), we view the coefficients

( ∗ ∗ a ¯ , a ¯ , a , a) (5.75) u,k, {variables} k

v,k,k ¯ ¯ u,k, k v,k, k

as a set of variables that parameterize the pre-phase space P e. And, by applying the components

of the two form Ω[ e·; ·]| (4.9) computed in subsection 5.4 to (5.2), we get the symplectic form P e

of the pre-phase space as

+∞

Ω| X ∗ ∗ ∗ ∗ = − i δ δ a −δ a a P 2 e 1 a u ¯ ; k, k ¯ 1 δ a − δ . (5.76) {symvector} ¯ 2 ¯ + δ ¯δ a δ a u ;k,k 1 a ¯ v

u ;k,k 2 ¯ 1 ¯ 2 v;k,k ; k, k u ; k, k v ; k, k v ; k, k

k, ¯ k=0

We represent the Hamiltonian system with the general solution (5.74), the set of variables

(5.75), and the symplectic form (5.76).

We now represent the Hamiltonian system in the canonical formalism. Since the symplectic

form (5.76) is non-degenerate, the physical phase space is exactly the pre-phase space P e. We

then read out the brackets from the symplectic form (5.76). Specifically, by taking use of the Hamiltonian equation



X · a Ω u ¯ ¯ = − δa

; k,k u ; k, kP

P e e

X ∗ Ω = − δa

a ∗ ¯ u ; k, kP u ¯ ; · k,k e P e



X · Ω = − δa

a ¯

v; k,k ¯ e P v ; k, k

P e

X ∗ − Ω = δa , (5.77)

a ∗ ¯ v ; k, kP v ¯ ; · k,k e P e

we get

X a i u ¯ = ; k, k ∗ δ

P e δa

u ¯ ; k, k

X a = − v ¯i ; k, k P δ

e δa u ¯ ;k,k

X = ∗ i a ∗ u δ

;k,¯ k P e δa ¯ v ; k, k

X = −i . (5.78) {Xvector} ∗ a δ

v;k,¯ k e ¯ P δa

v;k,k

33

And by applying (5.78) to (2.7), we compute the brackets between the set of variables (5.75) whose non-zero components are

{ ∗ ∗ a ¯ = , a } −{ a , a ¯ = } −iδ δ

u ; ¯ k, k k,k 0 ; k, k ¯ u ; k 0 , k 0 P e ¯ ¯ u ; k 0 , k 0 u P e k, k0

{ ∗ ∗ a ¯ , a } = −{ a , a ¯ } = −iδ 0 δ¯ ¯ . (5.79)

v ; k, k 0 ¯ 0 v ; k , k P 0 ¯ 0 v ; k, k k,k k,k0 v ; k , k e e P {vbrackets}

5.6 The Noether charges of the Killing symmetries For the completeness of the discussion, we now compute the expressions of the Noether charges of the Killing symmetries.

Specifically, by applying (5.74) to (4.25) and by taking use of the components of the two

form Ω[ e ·; ·]| computed in subsection 5.4, we get the expressions of the Noether charges of the P e

Killing symmetries as

+∞

Q X h i p ∗ p ∗ − ξ ¯ = 1 i (k + 1)(µ + k)a · a − i (k + 1)(µ + k + 2)a · a ¯ P

e ¯ u ; k, k u;k+1,k ¯ v ; k, k v;k+1,k

k, ¯ k=0

∗ X h µ +∞ µ i

Q ∗ · ξ ¯ = + k a a + + k + 1 a · a 0 ¯ P e ¯ ¯ u ; k, k u ; k, k v ; k, k v ; k, k 2 ¯ 2

k,k=0

+∞

Q X h i p ∗ p ∗ ξ ¯ = − i (k + 1)(µ + k)a · a + i (k + 1)(µ + k + 2)a · a ¯ 1

P e ¯ u ; k +1 , k u;k,k ¯ v ; k +1 , k v;k,k

k, ¯ k=0

Q +∞ q q i X h ∗ ∗ = ¯ − i (¯ k + 1)( µ + ¯ k + 2) a · a ¯ − i (¯ k + 1)( µ + ¯ k ) a · a ¯ ξ 1 P e ¯ u ; k, k u ; k, k +1 ¯ v ; k, k v ; k, k +1

k, ¯ k=0

X h µ +∞ µ i

Q ∗ ∗ ¯ = + ¯ k + 1 a · a ¯ + + ¯ k a · a ξ ¯ 0 P e ¯ u ; k, k u ; k, k ¯ v ; k, k v ; k, k 2 ¯ 2

k,k=0

Q +∞ q q h X i ∗ ∗ = ¯ i (¯ k + 1)( µ + ¯ k + 2) a · a ¯ + i (¯ k + 1)( µ + ¯ k ) a · a ¯. ξ − 1 P e ¯ u ; k, k ¯ u ; k, k +1 v ; k, k +1 v ; k, k

k, ¯ k=0

(5.80) {Kcharges}

With these expressions (5.80), we compute the brackets in terms of the Noether charges as

{ µ µ Q ξ P ( , A x ) } = −L A ( x ξ ) (5.81) { } ,

e e P QAbracket

and

{ Q ξ ˜ ˜ { , Q } = Q . (5.82)QQbracket}

ξ P e {ξ,ξ} P e

Here, in the derivation, we have also used the actions of the Killing symmetries to the modes

(5.43), (5.47), (5.51), (5.55) and brackets between the set of variables (5.79). And these

equations (5.81), (5.82) are consistent with the Noether’s theorem.

34





6 Canonical quantization


{quantization

So far, we have reformulated our model to a Hamiltonian system. We now take a canoni-cal quantization for the Hamiltonian system. And, through the canonical quantization, we promote the Hamiltonian system to a quantum mechanical system.

∞

Aµ X µ µ ( x ) = f ( x ) a ¯ + f(x)a

+ ¯ u;k,k ¯ v;n,n ¯ ,u ; k, k + ,v ; k, k

k, ¯ k=0

+ µ † µ † f ¯ ( ) + x a f ¯ (x )a ¯ (6.1) ¯

−,u;k,k u;k,k −,v;k,k v;k,k

The non-zero commutators are

[ † † a ¯ , a ] = [ a ¯ , a] = δ 0 δ¯ ¯ 0 (6.2)

u;k,k ¯ u ; k 0 , k0 v;k,k ¯ k,k v ; k 0 , k 0 k,k

We define the vacuum state as |0i such that

a ¯ |0i = a ¯ |0i = 0. (6.3) u ; k, k v,k, k

We can construct the excited states by acting the creation operators † † a , a, for n, n ¯ =

r,n,n ¯ l,n,n ¯

0, 1, 2, ..., onto the vacuum state |0i as



|{n}i = a ;k,k ¯ u 1 n +∞ Y †n 1 k, ¯ p a † v;k,k ¯ |0i (6.4) ¯ u ; k, k n p ¯ v ; k, k ¯ ! n ¯ ! u ; k, k v ; k, k k =0

So far, we have quantized the free massive vector field in the global AdS3 spacetime. In the following, we will provide some applications for the quantized theory.

7 Application I: the Euclidean correlation function

In this section, we compute the Euclidean correlation function. 17 We compare the result with

the one from solving the Green function [19].

7.1 The Euclidean spacetime

dr 2

ds2 2 2 2 2 = ( r + 1) dt + + r dφ. (7.1)

E E 2 r + 1

17 It is straightforward to generalize the following treatment to the Minkowski correlation functions.



35





√


ξ 1 2 t − r ∂ p ∂ r + 1 ∂ E iφ 2 E ;1 = e i √ − i r + 1 − 2 2 r + 1 ∂t E ∂r r ∂φ

1 ∂ ∂

ξE;0 = i − 2 ∂tE ∂φ √

ξ 1 2 r ∂ p ∂ r + 1 ∂ − t + iφ E 2 √ E ; − 1 = e i + i r + 1 − 2 r 2 + 1 ∂t E ∂r r ∂φ √

ξ ¯ 1 r ∂ p ∂ r2 + 1 ∂ t + iφ √ E ;1 = e E i − i r 2 + 1 + 2 2 r + 1 ∂t E ∂r r ∂φ ¯ 1 ∂ ∂

ξE;0 = i + 2 ∂tE ∂φ √

ξ ¯ 1 2 ∂ p + 1 ∂ − t E − r ∂ r iφ E ; − 1 = e i √ 2 + i r + 1 + (7.2) 2 2 r + 1 ∂t E ∂r r ∂φ



[ ξE;0, ξE;1] = iξE;1 [ ξE;0, ξE;−1] = −iξE;−1 [ ξE;1, ξE;−1] = −2iξE;0 [ ¯ ¯ ¯ ξ E ;0 , ξ E ;1 ] = i ξ E;1 [ ¯ ¯ ¯ ξ E ;0 , ξ E ; − 1 ] = − i ξ E;−1 [ ¯ ¯ ¯ ξ E ;1 , ξ E ; − ] = − 1 2 i ξ E;0. (7.3) {xicommutator



g µν µ ν µ ν µ ν =2 ξ ξ + 2 ξ ξ − 4 ξ ξ

E E; −1 E;1 E;1 E;−1 E;0 E;0

=2 ¯ µ ν µ ν µ ν ¯ ¯ ¯ ξ ξ + 2 ¯ ξ ξ − 4 ¯ ξ ξ (7.4) {gEsum} E ; − 1 E ;1 E ;1 E ; − 1 E ;0 E ;0



˜ E;tErφ = ˜ E;rφt − E = ˜ E ; φt − E r = ˜ E ; rt E φ = ˜ E;tEφr = − ˜ E;φrtE = r (7.5)



˜ ρ E;µνρ = 2( ξξE;1,µ E;0,ν E;0,µ E;1,ν ) ξ − ξ ξ

E;1

˜ ρ E;µνρ E = ξ ξ ξ − ξ ;0 E;1,µ E; −1,ν ξ

E;−1,µ E;1,ν

˜ ρ E;µνρ E;0 ; 1 E − ξ = 2( ξ ξ − ,µ E ,ν epxiu (7.6) E;− ,µ E − ,ν ξ ; 1 ;0 { ξ ) 1 }



¯ ρ ¯ ¯ ¯ ˜ E ; µνρ ξ = 2( − ξ ξ + ¯ ξ ξ E ;1 E ;1 ,µ E ;0 ,ν E ;0 ,µ E;1,ν) ¯ ρ ¯ ¯ ¯ ˜ E ; µνρ ξ = − ξ E ;1 ,µ ξ E ; − 1 ,ν + ¯ ξ E ; − 1 ,µ ξ E;1,ν E ;0

¯ ρ ¯ ¯ ¯ ˜ E ; µνρ ξ = 2( − ξ E ;0 ξ E ; − 1 ,ν + ¯ ξ E ; − 1 ,µ ξ E;0,ν ) (7.7) {epxiv} E ; − ,µ 1

36

7.1.1 The correlation function in Euclidean signature spacetime

A t t E ( t , r, φ ) =(t −it , r, φ) E E = iA

E

A r r ( t ) = A t = −it , r, φ ( , r, φ)

E E E

A φ φ ( t E ) = , r, φ A(t = −itE ) , r, φ. (7.8)

E



∞

A µ X µ µ ( x ) | = f ( x ) a ¯ + f(x)a

E P e ¯ ¯ v n,n E ;+ ,u ; k, k u ; k, k ; ¯ E ;+ ,v ; k, k

k,¯ k=0

+ f µ † µ † ( x )a + f ( x )a E (7.9) ; − ¯ ¯ ¯ ,u ; k, k u ; k, k E ; − ¯ ,v ; k, k v ; k, k



h µ µ 1 0 | T A ( x 1 ) A2 (x2) | 0i E E

 P 1 + ∞ µ µ2 µ1 µ2 f ( x ) f ( x ) + f ( x ) f (x ) for t > t

= .  ¯ ¯ 1 ¯ 2 ¯ 1 ¯ 2 E,1 E,2 k, k =0 E ;+ ,u ; k, k E ; − ,u ; k, k E ;+ ,v ; k, k E ; − ,v ; k, k

P 2 + ∞ µ µ1 µ2 µ1 f ( x ) ( ) + ( f x x f ) f (x ) for t < t

 ¯ k, k ¯ 2 ¯ 1 2 ¯ 1 E,1 E,2 =0 ¯ E ;+ ,u ; k, k E ; − ,u ; k, k E ;+ ,v ; k, k E ; − ,v ; k, k

(7.10)

• + The representation I.

µ E r −(µ+2)t µ + 1 e

f µ = ξ

E;+,u;0, µ+2 0 E;1 πµ 2 2 ( r + 1)

s

f µ ¯ 1 k µ L = L f. (7.11) ¯ E ;+ ,u ; k, k ¯ ξ ¯ ξ E ;+ ,u ;0 , 0 k ! µ k k !( µ + 2) E ; − 1 E ; 1 ¯ − k



f = 2(µ + k)(µ + k + 1)ϕ ¯ ξ ¯ E ; µ +2 , +; k, k E µ p µ 1

;+,u;k,k E;1 µ

+ 2 i 2k(µ + k)ϕ ¯ξ E ; µ +2 , +; k − 1 , kE;0 µ 1 p µ

− 1 p µ − 2 k ( k 1) ϕ (7.12) E ; µ +2 , +; k − ¯ ξ {fEpu} 2 , k E ; − 1 µ

• + Representation II



f ¯ µ = µ µ E r −(µ+2)t µ + 1 e E ξ ;+ ,v ;0 , 0 +2E;1 πµ 2 ( r + 1) 2

s

f µ 1 ¯ k µ L L ¯ =. E ;+ ,v ; k, k ¯ ξ ¯ f (7.13) k !( µ + 2) E ; , − 1 ξ E ;+ ,v ;0 0 E ; − 1 k k ! µ ¯ k



37

f µ µ ¯ 1 q = 2( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ξ ¯ E ; µ +2 , +; k, k E ;+ ,v ; k, k E ;1 µ

+ 2 1 q µ ¯ i 2¯ k ( µ + ¯ k ) ϕ ¯ ξ E ; µ +2 , +; k, k − 1 E ;0 µ

− 1 q µ ¯ 2¯ k (¯ k − 1) ϕ ¯ ξ (7.14) {fEpv} E ; µ +2 , +; k, k − 2 E ; − 1 µ

• − Representation I.

µ E r (µ+2)t µ + 1 e

f µ = ξ

E;−,u;0,0 µ+2 E;−1 πµ 2 2 (r + 1)

s

f µ 1 ¯ k µ L ¯ = L ¯ f. (7.15) E ; − ,u ; k, k ¯ ξ k ! µ E ;1 E ; − k k !( µ ξ ,u ;0 , 0 + 2) E ;1 ¯ k



f ¯ = 2(µ + k)(µ + k + 1)ϕ ¯ ξ E ; µ +2 , − ; k, kE;− E ; − ,u ; k, k1 µ µ 1 p µ

− 1 p µ 2i 2k(µ + k)ϕ ¯ξ E ; µ +2 , − ; k − 1 , kE;0 µ

− 1 p µ − 2 k ( k 1) ϕ k − ¯ ξ (7.16) {fEnu} E ; µ +2 , − ; 2 , k E ;1 µ

• − Representation II



f ¯ µ µ E r (µ+2)t µ + 1 e E = µ+2 ξ ; − ,v ;0 , 0E;−1 πµ

( 2 2 r + 1)

s

f µ ¯ 1 k µ L = L f. (7.17) ¯ ¯ E ; − ,v ; k, k ¯ ξ ξ ; ,v , k !( µ + 2) ;1 k k ! µ E ;1 E − ;0 0 E ¯ k



f µ q 1 µ ¯ = 2( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ¯ ξ E ; − ,v ; k, k E ; µ +2 , − ; k, k E ; − 1 µ

− 1 q µ ¯ 2 i 2¯ k ( µ + ¯ k ) ϕ ¯ ξ E ; µ +2 , − ; k, k − 1 E ;0 µ

− 1 q ¯ µ 2¯ k (¯ k − 1) ϕ ¯ ξ (7.18) {fEnv} E ; µ +2 , − ; k, k − 2 E ;1 µ

7.2 The correlation function from solving the Green function

From [19]



h µ µ ,µ (1) 1 A ( x 2 µ 1 ) A ( x i 2 ) = α ( ρ ) G 1 2µ (2) ( x 1 , x 2 ) + β ( ρ ) n 1µ ( x 1 , x 2 ) n2 (x1, x2) (7.19)

38





Here,


α(ρ) = β(ρ) =

(7.20)

and

γ(ρ) = − F1 + 1, + ; µ + 1; . (7.21) µ +1 2 µ +2 2 2 2 µ + 1 1 µ µ 3 1

πµ (cosh ρ) 2 2 2 cosh ρ

8 Application II: the thermal partition function

9 Conclusion and discussion

{conclusion}

9.1 The configurations that satisfy the highest weight equations Acknowledgments

We thank for the discussion with Chi-Ming Chang, Bin Chen, Arenas-Henriquez Gabriel, Wei Gu, Wu-zhong Guo, Peng-xiang Hao, Song He, Kaibo Hu, Hongguang Liu, Jiang Long, Rene Meyer, Nobuyoshi Ohta, Jie Ren, Wei Song, Chusun Tian, Yu Tian, Huajia Wang, Xin Wang, Jun-bao Wu, Lilin Yang, Ye Yuan, Hong Zhang, Hongbao Zhang, Jia-ju Zhang, Xinyu Zhang, Ruidong Zhu, Zhifei Zhu.

A The equivalence between the covariant phase space formal-

ism and Dirac’s canonical formalism

{equivalence}

In this appendix, we provide an argument showing the equivalence between the covariant phase

space formalism and Dirac’s canonical formalism [4–6].

Specifically, we consider a model that fits for Dirac’s canonical formalism. We construct a Hamiltonian system by applying the model to the covariant phase space formalism. And we show that this Hamiltonian system is equivalent to the Hamiltonian system constructed from Dirac’s canonical formalism.

A.1 Convention

We first specify some conventions adopted in this appendix:

• We distinguish between the variables and the values of the variables for a given configu-

ration. For example, we denote the variables by a a a a q , ( q , q ˙ ), ( q, p ). And we denote the

a

values of the variables for a given configuration at a given time by a a d a q ( t ), ( q ( t ) , q(t)),

dt

( a q(t), p (t)).

a

39

• a d a We never use the notation ˙ q ( t ). Instead, we denote by q(t) for the time derivative

dt

of the variable a q for a given configuration at a given time.

• We distinguish between the variables and the corresponding components of a map to

a set of variables that contains these variables. For example, we denote the momenta variables as p a. And we denote the momenta components of the Legendre transformation by a a p a( q, q ˙ ), which are functions of ( q , q ˙).

• We refer to the system (A.18) as the Legendre transformed system instead of the Hamilto-

nian system, since we have already used the Hamiltonian system for a different structure.

• When referring to a function of a set of variables, we also associate the set of variables

to the function’s notation, for example L(q, q ˙), H(q, p). When referring to the value of the function for a given configuration at a given time, we explicitly apply the values of the variables to the corresponding positions of the function, for example d L ( q ( t ) , q(t)),

dt

H(q(t), p(t)).

A.2 The setup

{setup}

We now introduce the setup.

We consider a general 0 + 1 dimensional model that fits for Dirac’s canonical formalism with the following action

Z f t d

S = dtL q(t), q(t) . (A.1) {SDirac}

ti dt

Here, a q with a = 1, 2, ..., N are the set of variables. And the Lagrangian L(q, q ˙) is viewed as a function of ( a a q , q ˙). Moreover, we assume that there are constraints but no gauge redundancies

in the model (A.1). Here, the precise meaning of no gauge redundancies will be specified below.

We now apply the model (A.1) to the covariant phase space formalism. Following the

prescription, we take a variation of the action (A.1)



δS Z f t d ∂L d ∂L d a = dt ( − 1) q ( t ) , q ( t ) − q ( t ) , q ( t ) δq(t) a a dt ∂ q ˙ dt ∂q dt t i

+ ∂L d ∂L d a a q ( t ) , q ( t ) δq ( t ) − q ( t ) , q ( t ) δq ( t ) . (A.2) {dSDirac} ∂ q a ˙ dt a t = t f ∂ q ˙ dt t = t i

From the variation of the action (A.2), we read out the equations of motion as

d ∂L d ∂L d

dt ∂q ˙ dt ∂qa dt a q(t), q(t) − q(t), q(t) = 0. (A.3) {equDirac}

And we read out the symplectic potential as

θ ∂L d a = q ( t ) , q ( t ) δq(t). (A.4) {sympotentialDirac ∂ q a ˙ dt

40

Then, we define the pre-phase space P e as the set of solutions of the equations of motion (A.3).

By taking an exterior derivative of the symplectic potential (A.4) in the set of configurations, we define the symplectic form as

∂L d ∂L d

Ω = a a δ 1 2 1 2 symDirac q ( t ) , q ( t ) δ q ( t ) − δ q ( t ) δ q ( t ) , q ( t ) . (A.5) {}

∂qa ˙ dt ∂qa ˙ dt

And, by taking a pull back of the symplectic form Ω (A.5) from the set of configurations to the pre-phase space P e, we define the symplectic form of the pre-phase space Ω| . The pre-phase P e space P e and the symplectic form Ω| together specify a Hamiltonian system. P e

We will show below that the Hamiltonian system constructed here is equivalent to the Hamiltonian system constructed from Dirac’s canonical formalism.

A.3 The Legendre transformation We will show below the equivalence between Hamiltonian systems through the Legendre trans-formation. And we now first introduce the Legendre transformation.

We first introduce some structures appearing in the Legendre transformation:

We define the momenta components of the Legendre transformation pa(q, q ˙) as

pa(q, q ˙) = (q, q ˙). (A.6) a ∂ ∂L q ˙

We consider the map from the set ( a a a q , q ˙ ) to the set ( q, pa ) as

q a a = q pa = pa(q, q ˙). (A.7) {preLegendre}

We read out the primary constraints φm(q, p), for m = 1, 2, ..., M , such that the subset of ( a q, pa ) satisfying

φ m(q, p) = 0, (A.8) {primary}

is the image of the map (A.7). And we also read out that, for a given point ( a q, p ) satisfying

a

φm(q, p) = 0, for m = 1, 2, ..., M , the inverse image of the map (A.7) is multi-valued.

We now introduce a parametrization for the multi-valued inverse image of the map (A.7) for a given point ( a q, pa ) satisfying φm (q, p) = 0, for m = 1, 2, ..., M . Specifically, we point out that there is a choice of the Hamiltonian a H ( q, p ), which is a function of ( q, pa ), and which satisfies

p a a ˙ q − L ( q, q ˙ ) = H ( q, p ) . (A.9) { } HDirac

pa=pa(q,q ˙) pa=pa(q,q ˙)

And, by taking a variation of (A.9) and by comparing with the definition of the primary

constraints around (A.8), we get the following statement: There is a choice of m u(q, q ˙), for

41

m a a = 1 , 2 , ..., M , which are functions of ( q , q ˙), and which satisfy

q a m m ∂H ∂φ ˙ = (q, p) + u (q, q ˙) (q, p) ∂p

a a p ∂pa=pa(q,q ˙)

− ∂L ∂H ∂φ m m ( q, q ˙ ) = ( q, p ) + u ( q, q ˙ ) ( q, p ) . (A.10) {preLegendre1 ∂q a ∂q a ∂q a p a = p a ( q, q ˙ )

Here, the set m u(q, q ˙), for m = 1, 2, ..., M , is a parametrization for the multi-valued inverse

image of the map (A.7) for a given point ( a q, p ) satisfying φ (q, p) = 0, for m = 1, 2, ..., M .

a m

Having introduced the previous structures, we now introduce the Legendre transformation. Here, the Legendre transformation is a one-to-one map from the set ( a a q , q ˙) to the subset of ( a m q , p , u) satisfying φ (q, p) = 0, for m = 1, 2, ..., M . The Legendre transformation is

a m

expressed as

qa a = q pa =pa(q, q ˙)

um m = u(q, q ˙). (A.11) {Lt}

And the inverse Legendre transformation is expressed as

q a a = q

q a ∂H ∂φ mm ˙ = ( q, p ) + u (q, p). (A.12) {iLt} ∂p a ∂p a

For the application below, we derive the following two statements from the one-to-one map

of the Legendre transformation (A.11) and (A.12): First, given the equations

p a = pa(q, q ˙) u m m = u(q, q ˙), (A.13) {fact11}

we have

φ m(q, p) = 0, (A.14)

and we can solve ˙a q from (A.13) as

q a ∂H ∂φ mm ˙ = ( q, p ) + u (q, p). (A.15) ∂p a ∂p a

Second, given the equations

q a ∂H ∂φ mm ˙ = ( q, p ) + u (q, p) ∂p a ∂p a φm(q, p) = 0, (A.16) {fact21}

we can solve m p , u from (A.16) as

a

p a = (q, q ˙) a ∂ ∂L q ˙

u m m = u(q, q ˙). (A.17) {fact22}

42

A.4 The Legendre transformed system

{Ltransys}

Having introduced the Legendre transformation, we now perform the first step in showing the equivalence between the Hamiltonian systems. Here, we consider the Legendre transformed system defined by the following action



S Z f t d a m = H dt p a ( t ) q ( t ) − H q ( t ) , p ( t ) − u ( t ) φ m q ( t ) , p ( t ). (A.18) {SH} dt t i

We construct a Hamiltonian system by applying the Legendre transformed system (A.18) to the covariant phase space formalism. And we show that the Hamiltonian system constructed

in subsection A.2 is equivalent to the Hamiltonian system constructed here.

We now apply the Legendre transformed system (A.18) to the covariant phase space for-malism. Following the prescription, we take a variation of the action



δS Z t f d ∂H ∂φ m m a = H dt − p a ( t ) + q ( t ) , p ( t ) + u ( t ) q ( t ) , p ( t ) δq(t) a a dt ∂q ∂q t i

d ∂H a m m ∂φ

− − q ( t ) + q ( t ) , p ( t ) + u ( t ) q ( t ) , p ( t ) δpa(t)

dt ∂pa ∂pa



− m φ m ( q t ) , p ( t ) δu(t)

+ a a p a( t ) δq ( t ) | t=tf a( − p t ) δq(t)|t=t dSH} . (A.19) {





i


From the variation of the action (A.19), we read out the equations of motion as

dt d ∂H a ∂φ mm q ( t ) = q ( t ) , p ( t ) + u ( t ) q ( t ) , p ( t ) (A.20) {equH1} ∂p a ∂p a

dt d ∂H ∂φ mm p a ( t ) = − q ( t ) , p ( t ) − u ( t ) q ( t ) , p ( t ) (A.21) {equH2} a a ∂q ∂q φ m equH3 q ( t ) , p ( t ) = 0 . (A.22) {}

And we read out the symplectic potential as

θ a H a { = p ( t ) δq ( t ) . (A.23)thetaH}

Then, we define the pre-phase space as the set of solutions of the equations of motion (A.20),

(A.21), (A.22), where, for the moment, we denote the pre-phase space as P e H . By taking an

exterior derivative of the symplectic potential (A.23) in the set of configurations, we define the symplectic form as

Ω a a H = δ 1 a( p t ) δ 2 ( q t ) − δ 1 ( qt)δ2 a ( pt). (A.24) {OmegaH}

And by taking a pullback of the symplectic form from the set of configurations to the pre-phase space P e H , we define the symplectic form of the pre-phase space Ω | H . The pre-phase space P e H P e H and the symplectic form Ω | H together specify a Hamiltonian system. P e H

43

We now show that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed here. Specifically, we show the following two facts: first, the pre-phase space P e can be identified to the pre-phase space P eH ; second, the symplectic form Ω | is equivalent to the symplectic form Ω H | . P e P e H

We now construct an identification from the pre-phase space P e to the pre-phase space P e H .

Specifically, we study the general solution of the equations of motion (A.20), (A.21), (A.22).

Here, we first solve m p ( t ) and u(t) from the equations of motion (A.20), (A.22) as

a

p d ∂L d a ( t ) | = p a q ( t ) , q ( t ) = q ( t ) , q ( t ) P e H a dt P e H ∂ q ˙ dtP eH

um d m ( t ) | = u q ( t ) , q ( t ) , (A.25) {pusolution} P e H dt P e H

where, in solving (A.25), we have used the statement mentioned around (A.16), (A.17). We

then apply (A.25) to the equations of motion (A.21), from which we get the equations of motion for a q(t) as

dt a q(t), q(t) = q(t), q(t) , (A.26) {equq} ∂ d ∂L d ∂L d q ˙ dt a P e H ∂q dtP eH

where, in deriving (A.26), we have also used (A.10). Note that the equations of motion for

q a a ( t ) in (A.26) are the same as the equations of motion for q(t) in (A.3). We then construct an identification from the pre-phase space P e to the pre-phase space P e H , that is, given a

solution a a m q ( t ) of the equations of motion (A.3), we construct a solution ( q ( t ) , p a ( t ) , u(t)) of

the equations of motion (A.20), (A.21), (A.22), by identifying the a q(t) and reading out p (t),

a

um P ( t ) through (A.25). From now on, we denote both pre-phase spaces as e.

We now show that the symplectic form Ω| is equivalent to the symplectic form Ω | H . P e P e Specifically, we perform the following computation

∂L d ∂L d

Ω| a a = δ 1 ( q t ), q (t ) δ q P ( 2 e a t) − δ1q (t)δ2 q(t), q(t) a

∂q ˙ dt ∂q ˙ dt P e

= δ a a 1 a( p t )δ 2 ( q t ) − δ 1 ( q t )δ p t ,

2 a ( ) = Ω (A.27) {symequ e P H |}

P e

where we have used (A.25).

From the identification of the pre-phase spaces and the equivalence of the symplectic form-

s, we show that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed in this subsection.

A.5 A further reformulation for the Hamiltonian system constructed in

subsection A.4

{reformulatedsys

So far, we have shown that the Hamiltonian system constructed in subsection A.2 is equivalent

to the Hamiltonian system constructed in subsection A.4. We now take a further reformulation

for the Hamiltonian system constructed in subsection A.4.

44

We first study the general solution of the equations of motion (A.20), (A.21), (A.22).

To study the general solution, we reexpress the equations of motion (A.20), (A.21), (A.22) as

dt d F m = { F, H } P + u ( t ) { F, φ m } P (A.28) {equtd} P e P e

for a F being any functions of ( q, pa), and

φ m ( q t ) , p ( t ) = 0, (A.29) { } equc

P e

for m = 1, 2, ..., M . Here, in (A.28), the Poisson bracket {·, ·}P is defined as the following: Given two functions of ( a q, pa), say F (q, p), G(q, p), their Poisson bracket {F, G}P is

{F, G} P = (q, p) · (q, p) − (q, p) · (q, p). (A.30) a a ∂q ∂F ∂G ∂F ∂G

∂pa ∂pa ∂q

And the m a a F , { F, H } P , { F, φ } P are viewed as applying ( q ( t ) , p a ( t )) in the positions of ( q, pa ).

We now study some consequences of the equations of motion (A.28), (A.29). Specifically,

by applying the primary constraints φm(q, p) to (A.28) in the position of F and by taking

use of (A.29), we get some trivial identities, or some constraints on m u(t), or some secondary constraint equations

φ k secondaryequ q ( t ) , p ( t ) = 0 . (A.31) {

Here, the a φ ( q, p ) in (A.31) are some functions of ( q, p ) which we refer to as secondary

k a

constraints. Then, by applying the secondary constraints φk(q, p) to (A.28) in the position of

F and by taking use of (A.31), we again get some trivial identities, or some other constraints on m u(t), or some other secondary constraint equations

φ k0 q ( t ) , p ( t ) = 0. (A.32) {secondaryequ2

Here, we again refer to the functions φk0 (q, p) in (A.32) as secondary constraints. Going through this procedure recursively, we finally get some constraints on m u(t) and some sec-ondary constraint equations

φ k ( q t ) , p ( t ) = 0, (A.33) {allsecondaryequ

for k = M +1, M +2, ..., J . Here, we refer to the φk(q, p) in (A.33), for k = M +1, M +2, ..., J , as the secondary constraints. We then list the primary constraints and the secondary constraints together as φ j (q, p), for j = 1, 2, ..., J .

Remember that we have assumed that there are no gauge redundancies in the context

below (A.1). The precise meaning of this assumption is the following two assumptions: First, the m u(t) can all be solved out as

um m ( t ) = u q ( t ) , p ( t ), (A.34) {solvingu}

45

where the m a u ( q, p ) in the right hand side of the equations (A.34) are some functions of ( q, p ).

a

Second, the matrix of the Poisson brackets

C { jk =φj , φ } {Cl} k P , (A.35)

for j, k = 1, 2, ..., J, is non-degenerate.

With the above mentioned consequences and assumptions, we can reexpress the equations

of motion (A.28), (A.29) in a simpler form.

To reexpress the equations of motion, we first introduce some structures:

We refer to the subset of ( a q, p ) satisfying the constraint equations φ (q, p) = 0, for

a j

j = 1, 2, ..., J , as the constraint surface C. We parameterize the constraint surface C as ( a r q ( z ) , p a ( z )). Here, z with r = 1, 2, ..., 2N − J , are a set of variables that parameterizes the constraint surface a r C . And the q ( z ), p a ( z ) are functions of z that satisfy

φ j allconstraints q ( z ) , p ( z ) = 0 , (A.36) {

for j = 1, 2, ..., J .

We define the total Hamiltonian as

M

H X m T ( z ) = H (q, p ) + u ( q, p ) φ m ( q, p ) n a a , (A.37) q

= q (z)

m p = p (z) =1 a a

which is a function of the constraint surface C.

We define the Dirac’s bracket as the following: Given two functions of the constraint surface C , say F (z) and G(z), their bracket {F, G}D is defined as

{ jk F, G } { D e e P e j P k e = F , G} − { } F , φ · · { Cφ , G} Pn a a . (A.38) {Dbracket}

q = q (z)

pa = pa(z)

Here, a F , G can be any extensions of F , G to the set ( q, p ), such that

e e a

F q ( z ) , p ( z ) = F (z) e

G q ( z ) , p ( z ) = G(z). (A.39) { } e extension

C jk is defined as

Cjk j C kl = δ

l

C kl l { } jk Cu C = δ , (A.40)

j

where j, k, l = 1, 2, ..., J . And the Dirac’s bracket {F, G} D defined in (A.38) is a function of the constraint surface C and is independent of the choice of the extensions F e, G e.



46

With these structures, we now reexpress the equations of motion (A.28), (A.29) as

dt F = {F, H } (A.41) equmH1 T D , {} P P d e

e

for r F being any functions of the constraint surface C parameterized by z, and

q a a ( t ) | = q z ( t )

P P e e

p | a a { ( t ) = p z ( t ) , (A.42)equmH2}

P e P e

and

um m t u q z t , p z t . ( ) | = ( ) ( ) (A.43) { }

P e P equmH3

e

Here, in (A.41), the r r F and { F, H } are viewed as applying z ( t ) in the position of z.

T D

We now study the general solution from the equations of motion (A.41), (A.42), (A.43).

By analyzing the equations of motion (A.41), (A.42), (A.43), we see that the general solution is uniquely determined by the value r r z ≡ z(t = 0), which can be any point on the constraint

0

surface r C . In more detail, given a point z on the constraint surface C, we construct the

0

corresponding solution as the following: First, we solve r z(t)| from (A.41) with the initial

P e

conditions

z r r ( t = 0) | = z. (A.44) {z0}

P e 0

Second, we read out a m q ( t ) | , p ( t ) | , u(t)| P e a from (A.42), (A.43). From now on, we pa-

P e P e

rameterize the general solution with the constraint surface r C or equivalently with z in this

0

way.

With the knowledge of the general solution, we now take a further reformulation for the

Hamiltonian system constructed in subsection A.4. Specifically, we parameterize the pre-phase space r P with the constraint surface C or equivalently with z, with r = 1, 2, ..., 2N − J , as

e 0

mentioned in the previous paragraph. And we represent the symplectic form as

Ω| = Ω r r s s z z ( z 0 ) δ 1 z δ, (A.45) { } P e 0 2 z Diracsym 0

with

∂p a a ∂q ∂q ∂p

Ω a a ( z ) = ( z ) ( z ) − ( z ) (z). (A.46) { }

z r s z DiracOmega

∂zr ∂zs ∂zr ∂zs

Here, in deriving (A.45) and (A.46), we have used (A.24), (A.27), (A.42), (A.44). And we have evaluated the symplectic form Ω| at t = 0. P e

Below, we will represent the reformulated Hamiltonian system in the canonical formalis-m, and show its equivalence to the Hamiltonian system constructed from Dirac’s canonical formalism.



47

A.6 A property of the symplectic form Ω r s z z(z)

{Oneproperty}

To represent the Hamiltonian system in the canonical formalism, we now introduce a property

of the symplectic form Ω r s z z (z) defined in (A.46).

The property is the following: The symplectic form Ω r s z z (z) is non-degenerate. And its inverse (Ω− r s 1 z z r ) ( z ) is the matrix of the Dirac’s brackets between the variables z that parameterize the constraint surface C as

(Ω− r s 1 z z r s ) ( z ) = { z , z}D {Dinverse} . (A.47)

Here, in the Dirac’s bracket r s r { z , z } , we have viewed the variables z as functions of the

D

constraint surface C.

To prove this property, we first introduce some structures:

We extend the variables r a z from the constraint surface C to the set ( q, p ). Namely, we

a

introduce functions r z(q, p), for r = 1, 2, ..., 2N − J , such that

e

z r r q ( z ) , p ( z ) = z. (A.48) {ztilde} e

We view the functions r z(q, p) and the constraints φ q, p) as defining a new set of variables (

e j

for the set ( a r q , p ). Specifically, we introduce a set of variables ( z, φ ), with r = 1, 2, ..., 2N −J

a j

and a r j = 1 , 2 , ..., J . We construct a one-to-one map from the set ( q , p a ) to the set ( z, φj ) as

z r r = z(q, p)

e

φj = φj (q, p). (A.49) {qptozphi}

We denote the inverse map as

q a a = q(z, φ) pa = pa(z, φ), (A.50) {zphitoqp}

where the a r q ( z, φ ), p ( z, φ ) in (A.50) are functions of ( z, φ ) satisfying

a j

qa a z ( q, p ) , φ ( q, p ) = q

e

p a e ( z q, p ) , φ ( q, p ) = pa (A.51) . {consistencyqpzphi

And we also point out that a a q ( z, φ ), p a( z, φ ) reduce to q(z), pa (z) when setting φ = 0 as

q a a ( z, φ = 0) = q(z) p a(z, φ = 0) = pa(z), (A.52) {phito0}

which can be shown by applying a a q ( z ), p ( z ) to (A.51) in the position of q, p and by taking

a a

use of (A.36), (A.48).

48

We introduce some collective notations. Specifically, we denote A a Q = ( q, p ). We denote

a

Z R r A a R r = ( z , φ j ). We denote the map (A.49) from the set Q = ( q , p a) to the set Z = ( z, φj )

as R R R r Z = Z ( Q ). And we denote the inverse map (A.50) from the set Z = ( z, φj ) to the set QA a A A = ( q , p a ) as Q = Q(Z ).

We introduce some structures in terms of the set of variables A a Q = ( q, pa ). Specifically, we define the symplectic form of the set A a Q = ( q, pa ) as

  (0) (0)

b

Ω b0 a A B =   = 0 . (A.53) {Omega0sym} Q Q (0) (0) a δ (0) a a b q q qp 0 Ω 0 Ω − δ

Ω 0 b Ω b p a 0 q p a 0 p b 0

We compute the matrix of the Poisson brackets between the set of variables A a Q = ( q, pa) as



Ω(0) A (0) a ! b a q q (0) q p a b a a B Q Q b 0 { q , q } { P q , p } b 0 Q Q P 0 δ b 0 = b = = . (0) p q (0) p Q a 0 p b b Q a 0 b 0 { p 0 0 a , q } P { p } a , p 0 b P − δ a 0 0

(A.54) {Omega0bracket

And we check that Ω(0) A B (0) Q Q (A.53) and Ω (A.54) are inverse to each other as

QA B Q

Ω(0) B C C (0) Q Q Q Ω = δ

QA B A Q Q

Ω(0) A B A (0) Q Q Q Ω B C = δ C . (A.55) {multiplying0 Q Q Q

We introduce some structures in terms of the set of variables R r Z = ( z, φj ). Specifically, we define the symplectic form of the set R r Z = ( z, φj ) as

∂Q A B

Ω e R S (Z ) = Ω (Z Z Z A B) (Z). (A.56) {OmegaZZl} Q Q R S ∂Z (0) ∂Q ∂Z

We check that the zz-component of Ω e R S (Z ) (A.56), when restricting to φ = 0, is exactly Z Z

Ω r s z z (z) (A.46) as

Ω e r s z (z, φ = 0) = Ω r s z z z (z), (A.57) {Omegareduction

where we have used (A.53). We define the matrix of the Poisson brackets between the set of functions R r Z ( Q ) = ( z(q, p), φ (q, p)) as

e j

ΩZR r s r z z z φ r s r k S Z Ω ( q, p ) Ω ( q, p ) { z z } { k P = e , e P } e z , φ e ( Q ) = s . (A.58) {OmegaZZu} φ Ω j z φ φ ( q, p ) Ω j k s ( q, p ) { φ j , z } { φ e P j , φ } k P

We check that the matrix ZR S Z Ω (Q) (A.58) equals to e

ΩZ R R S S A B ∂Z ∂Z Z (0) Q Q ( e Q ) = Ω ( Q ) (Q), (A.59) {OmegaZZu1} A B ∂Q ∂Q

where we have used (A.54). And, we check that

Ω Z S T Z T Z e R S e R Z ( Z Z) · Ω Q(Z ) = δ Z ΩZR S R Z Z e e S T T multiplying Q ( Z ) · Ω ( Z ) = δ , (A.60) Z { } Z

Z

49

where we have used (A.55), (A.56), (A.59) and the inverse function theorem



∂Q ∂Z R A R ∂Q Z Q ( Z ) · ( Z ) = δ S A S Z ∂Z

∂QA R A ∂Z Q ( Z ) · Q ( Z ) = δ . (A.61) R B B ∂Z ∂Q Q

With the above defined structures, we now prove the property of the symplectic form

Ω r s z z (z) mentioned in the beginning of this subsection. We rewrite the equations (A.60) in component form as

Ω e r s t t t s z z ( z, φ ) · { z e , } e e z P + Ω r z φ ( z, φ ) · { φ , n a a k k z } e P = δ n a a r q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

Ω e r s s z z ( z, φ ) · { z e , φ l } P + Ω e r n z φ a a k ( z, φ ) · { φ k , φ l } P = 0 n a a q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

Ω e s s t t φ j z ( z, φ ) · { z , z } + e · { e e P Ω n φ φ ( z, φ ) φ k , z } P = 0 a a j k e n a a q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

Ω e s s j φ z, φ ) · { z , φ } + Ω e · { } φ ( z, φ , φ j φ ) φ = j z ( e l P n a a k k l P δ , (A.62) {incomponent1 n a a l q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

and

{ r s r r z e e n P , z } · Ω a e s t k a z z ( z, φ ) + { e k n P z , φ } · Ω z, φ δ a z a e t φ ( ) =

= q (z, φ) q = q (z, φ) q t p a = pa(z, φ) pa = pa(z, φ)

{ r s r s z e , e z } P · Ω e n z φ a a l ( z, φ ) + { z } e , φ k P · Ω e nφ φ (z, φ a a k l) = 0 q = q ( z, φ ) q = q ( z, φ )

p a = pa(z, φ) pa = pa(z, φ)

{ s s φ j , z } e P · Ω e t ( z, φ ) + { φ n j , φ } a a z z k P · Ω e t (z, φ) = 0 n a a φ k z q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

{ s l s φ } j , z · Ω ( z, φ { , φ } · e P e ) + n z φ φ a a l j k P Ω e ( δ n φ φ z, φ ) =. (A.63) {incomponent2 a a k l j q = q ( z, φ ) q = q ( z, φ )

pa = pa(z, φ) pa = pa(z, φ)

For the set of equations (A.62), by solving Ω e r z φ (z, φ) from the second equation and by applying j the solution of Ω e r zφ ( z, φ) to the first equation, we get j



Ω e r s z z ( ) · { z , z } − { z , φ · C · { φ z } } , = δ . (A.64) { z, φ s t s jk t t

e e e e n a a P j P k P identityzphi1

= q (z, φ) q r pa = pa(z, φ)

For the set of equations (A.63), by solving Ω e r φ j z (z, φ) from the third equation and by applying the solution of Ω e r φ j z ( z, φ) to the first equation, we get



r s r jk s r { e e e e n a P z , z } − { z , φ j P k e P Ω } · C · { φ , z } · ( . { z, φ ) = δ (A.65) a z identityzphi2 t z s t

q = q (z, φ)

pa = pa(z, φ)

50

Here, in deriving (A.64) and (A.65), we have used the definition of jk C (A.35) and C (A.40).

jk

Then, by restricting φ = 0 for (A.64) and (A.65), we get

Ω r s t t s · { } z z ( z ) z , z D = δ r { r s r z , z } D Ω · ( z ) = δ , (A.66) { }

zs t z identity t

where, in the derivation, we have also used (A.38), (A.52) and (A.57). From (A.66), we can prove the property mentioned at the beginning of this subsection, that is, Ω r s z z (z) is non-degenerate and its inverse is r s { z , z}D .

A.7 Represent the Hamiltonian system in the canonical formalism

Given the property mentioned in subsection A.6 around (A.47), we now represent the Hamil-

tonian system reformulated in subsection A.5 in the canonical formalism.

Since the symplectic form Ω r s z z (z0) is non-degenerate, the physical phase space is exactly the pre-phase space P e, which is parameterized by the constraint surface C or equivalently by the set of variables r z, with r = 1, 2, ..., 2N − J . And we can also read out the brackets from

0

the symplectic form (A.45). Specifically, by taking use of the Hamiltonian equation

X r · Ω z r = − δz, (A.67)

0 P e 0

we get

r s s r δ δ

X −1 z z −1 z z = − (Ω ) ( z ) ) = (Ω ) ( z . (A.68) { }

z r 0 0 Xz

0 s s δz δz

0 0

And, by applying (A.68) to (2.6), we get

{ r r s s − 1 z z r s z , z }| = (Ω ) ( z ) = { z , z} | r r bracketz , (A.69) 0 { } 0

P e 0 D z =z0

where, in the last equation, we have also used (A.47).

The Hamiltonian system represented here is exactly the Hamiltonian system constructed from Dirac’s canonical formalism.

B Some relevant properties of special functions

In this appendix, we review some relevant properties of special functions.

B.1 Some relevant properties of Hypergeometric function We now review some relevant properties of hypergeometric function.



51

(γ − 1) · 2F1(α, β; γ − 1; z) − α · 2F1 (α + 1, β; γ, z) − (γ − α − 1) · 2F1(α, β; γ; z) = 0 γ · 2F1 (α, β; γ; z) − βz · 2F1(α, β + 1; γ + 1; z) − γ · 2F1(α − 1, β; γ ; z)

(B.1)

B.2 Some relevant properties of Jacobi polynomials We now review some relevant properties of Jacobi polynomials.

First, Jacobi polynomials can be represented in terms of the hypergeometric function as

P (x) = n, α β n α (1 x , n 2 F 1 ( − 1 + + + ; + 1; − )) (B.2) n α,β ( α + 1) 1 n ! 2

for n = 0, 1, 2, ....

Second, Jacobi polynomials satisfy the orthogonality condition as

Z 1

− dx(1 − α β (α,β) (α,β) x ) (1 + x ) P ( x ) P(x) n n 0

1

2α+β1 Γ(n + α + 1)Γ(n + β + 1)

= δ nn0 , (B.3)

2n + α + β + 1 Γ(n + α + β + 1)n!

for α, β > −1.

C Some relevant bitensors invariant under the Killing symme-

tries

In this appendix, we introduce some relevant bitensors which are invariant under the Killing symmetries.

C.1 The general definition of the bitensor

We now introduce the bitensors in the Euclidean AdS3 spacetime.

C.2 The geodesic distance

( (0) 2 (1) 2 (2) 2 (3) 2 X ) − ( X ) − ( X ) − ( X ) = 1 (C.1)



ds 2 (0) 2 (1) 2 (2) 2 (3) 2 = − ( dX ) + ( dX ) + ( dX ) + ( dX ) . (C.2)

E



52

X (0) p =r2 + 1 cosh t

E

X (1) p 2 = r + 1 sinh t

E

X (2) =r cos φ X (3) =r sin φ (C.3)



cosh (0) (0) (1) (1) (2) (2) (3) (3) ρ E ( x 1 ; x 2 ) = X X − X X − X X − X X (C.4)

1 2 1 2 1 2 1 2

"

q q

ρ 2 2 E 1 ( x ; x 2 ) = log r + 1 r + 1 cosh(t − 1 2 E;1 E;2 ) t − r1 2 cos( rφ1 2 ) − φ

1 #

q q 2 2

+ 2 2 r + 1 r + 1 cosh(t − t − cos(φ − 1 2 E;1 E;2) r r φ ) − 1 (C.5)

1 2 1 2

C.3 Some other bitensors

∇ (1)µ 1 (1)µ1 ρ ( x ; x x ; x ) E E 1 2 ) = l (

E 1 2

∇ (2)µ 2 (2)µ2 ρ E ( x 1 ; x 2 ) = l (x1 ; x2 )

E E

∇ (1)µ1 x (1) ν cosh ρ ; 1 E ( x 12) µ 1 ν 1 (1) µ 1 (1) ν 1 l ( x ; x ) = E E 1 2 g ( x E 1 ) − l ( x ; x E 1 2 ) l ( x E 1 ; x 2 ) sinh ρ E ( x 1 ; x 2 )

∇ (2)µ 2 (1)µ 1 1 µ1;µ2 l ( x 1 ; x 2 ) = − P (x1; x2) E E E sinh ρ E ( x 1 ; x 2 )

∇ (1)µ 1 (2)µ 1 2 µ1;µ2 l ( x 1 ; x 2 ) = − P (x1; x2) E E E sinh ρ E ( x 1 ; x 2 )

∇ (2)µ2 (2)ν2 E 1 2 cosh ρ ( x x ; ) µ 2 ν 2 (2) µ 1 (2) ν 1 l ( x 1 ; x 2 ) = g ( x 2 ) − l ( x 1 ; x 2 ) l ( x 1 ; x 2 ) E E E E E sinh ρ E ( x 1 ; x 2 )

∇ (1)µ 1 ν1;µ2 E 1 2 (1)ν1 µ ;µ 1 cosh ρ ( x ; x ) P ( x ; x − E E 1 2 ) = l ( x ) P ; x ) E 1 ; x 2 2 ( x 1 2 sinh ρ E ( x 1 ; x 2 )

+ 1 µ 1ν1 (2)µ2 g ( x ) E 1 l (x E1; x2) sinh ρ E ( x 1 ; x 2 )

− 1 (1)µ 1 (1)ν1 (2)µ2 l ( x 1 ; x 2 ) l ( x 1 ; x 2 ) l (x1 ; x2) E E E sinh ρ E ( x 1 ; x 2 )

∇ (2)µ 2 µ 1 cosh ρ ; ν 2E(x1; x2) µ1 ;µ2 (2)ν2 P ( x 1 ; x 2 ) = − P ( x 1 ; x 2 ) l (x1; x2) E E E E sinh ρ E ( x 1 ; x 2 )

+ 1 (1)µ 1 µ 2ν2 l ( x 1 ; x 2 ) g (x2) E E sinh ρ E ( x 1 ; x 2 )

− 1 (1)µ 1 (2)µ2 (2)ν2 l ( x 1 ; x 2 ) l ( x 1 ; x 2 ) l (x1 ; x2) (C.6) E E E sinh ρ E ( x 1 ; x 2 )



53

Q µ 1 ;µ2 µ (1)ρ1 ν ;µ e ( x 1 ; x 1 2 ) = − ( x E e 1 ) l2 ( x 1 ; x 2 ) P 1 (x1; x2) E ; ν 1 ρ 1 E E

= µ2 (2)ρ2 µ1;ν2 − e 2 E 2 ; (x )l (x 1; x2 )P (x1; x2) (C.7) ν ρ2 E E

In practice, it is convenient to test these relations in the coordinate system (tE , y, φ) with

1 1

r = y − . (C.8)

2 y

We now provide an argument.

d2 d d

x µ µ ν ρ ( s ) + Γ x ( s ) x ( s ) x(s) = 0 (C.9)

ds 2 νρ ds ds



xµ µ ( s = 0) = x

1

xµ µ ( s = s f 2 ) = x (C.10)

We consider a variation of the geodesic.

D2

δxµ(s) (C.11)

ds2



δxµ µ ( s = 0) = δx

1

dxµ

δxµ µ ( s = s f f f 2 ) + δs (s = s ) =δx (C.12)

ds

C.4 The bitensors constructed with the Killing fields



G µ µ 1 ;2 µ µ2 µ µ µ ( x ; x 1 ( x E 1 2 ) = 2 ξ ) ξ E ;1 1 ( x ) + 2 ξ 1 µ ( x ) ξ 2 ( x ) − 4 ξ 12 E ; − 1 2 E ; − 1 1 E ;1 2 ( x ) ( ) E ;0 1 ξ x E ;0 2

G µ1;µ2 µ 1 µ2 µ1 µ2 µ1 µ2 ( x x ( x E 1 ; 2 ) = 2 ¯ ξ 1 ) ¯ ξ ( x 2 ) + 2 ¯ ξ ( x ( E E; − 1 ) ¯ ξ x ) 1 E;− 2 − 4 ¯ ξ ( x 1 ) ¯ ξ (x2 )

;1 1 E;1 E;0 E;0

(C.13) {btensoruv}



G µ1;µ2 (1)µ1 (2)µ2 µ1;µ2 ( x ; x E 2 ) = − 1 E ( l x x ) l ( 1 2 E ; x x x 1 ; 2 ) + cosh ρ E ( 1 ; x 2 )P (x E1 2 ; x )

− µ 1 ;µ2 i sinh ρ E ( x 1 ; x 2 ) Q (x ; x )

e 1 2 E

G µ1;µ2 (1)µ1 (2)µ2 µ1;µ2 ( x ; x ) = − l ( x ; x E 1 2 1 2 ) l ( x 1 ; x 2 ) + cosh ρ ( x 1 ; x ) P (x E E 2 1 ; x2 )

E E

+ µ 1 ;µ2 i sinh ρ E 1 2 e 1 2 E ( x ; x )Q (x ; x ) (C.14)



54

D A review of the canonical quantization for the free scalar in

the global AdS3 spacetime

In this appendix, we review the canonical quantization for the free scalar in the global AdS3 spacetime for the applications elsewhere in this paper.

D.1 The model

Φ = −1 o ( r) (D.1)



Z √ 1 1

S 3 µν 2 = d x −g − g ∂ µΦ∂ ν Φ − ∆(∆ − 2)Φ

M 2 2

Z √ 1 1

= lim d 3 µν 2 x −g − g ∂ µΦ∂ ν Φ − ∆(∆ − 2)Φ (D.2)

r →∞ ∞ 2 2 M r ∞

We now reformulate the model to the covariant phase space formalism

Z √

Ω = 2 µ µ d x σ τ ∂ δ Φ δ Φ − δ τ ∂ δ Φ (D.3)

µ 1 2 1 µ 2

Σ

Ω[Φ 2 µ µ − e 1 ; Φ 2 ] = d x σ τ ∂ µ Φ 1 Φ 2 Φ 1 τ ∂ µ Φ 2 (D.4) P Z √

e P Σ

e

Ω[ (2) L Φ ; Φ ] = − Ω[Φ ; L Φ ] Q = − [Φ ; Φ ] (D.5) e e ξ 1 2 ξ 2 P 1 ξ 1 2 PP e e e



Z √

Q(2) 2 µ ν ρ ; Φ ∇ Φ ∇ Φ − ∇ Φ ∇ ξ 1 2 ] = d x στ ξ ∇ Φ ∇ Φ + g Φ − ∆(∆ − 2) g Φ Φ

[Φ

1 2 ν µ 2 µν 1 2 µν P µ ν 1 ρ 1 2

e P Σ

e

(D.6)



i ∗ ∗ ∗ ( ω + m ) Ω[ ϕ ; ϕ ] = i ( ω + m ) Ω[ ϕ ; ϕ ]

e e PP e e

Z Z + ∞ 2π r 1

= h 2 2 dr dφ | ∂ − ϕ ∂ | | ϕ + ∂ ϕ | r 2 t φ φ 2 0 0 + 1 r(r + 1)

+ 2 1 i 2 2 3 2 r | ∂ | r ϕ + (∆ − 1) r | ϕ | + r | ∂ r ϕ + ϕ | (D.7) r P e

and

i ∗ ∗ ∗ ( ω − m ) Ω[ ϕ ; ϕ ] = i ( ω − m ) Ω[ ϕ ; ϕ ]

e e PP e e

Z Z + ∞ 2π r 1

= h 2 2 dr dφ | ∂ t + ϕ ∂ ϕ | + | ∂ ϕ | 0 r 2 φ φ + 1 r 2 ( r + 1) 0

+ 2 1 i 2 2 3 2 r | ∂ r ϕ | + (∆ − 1) r | ϕ | + r | ∂ r ϕ + ϕ | (D.8) r P e

55

D.2 The modes

• The positive representation. The expressions of the modes are

ϕ √ ∆ , +;0 , 0 = ∆ 2 1 −i∆t e

2 π (r + 1) 2

s

ϕ 1 ¯ k L ¯ = Lϕ {phi+def} ∆ , +; k, k ¯ ξ ¯ ∆ , +;0 , 0 . (D.9) k !∆ k − !∆ 1 ξ − 1 k ¯ k

The actions of the Killing symmetries to the modes are as

L − ξ ϕ ¯ = i + k)ϕ ¯ 0 ∆ , +; k, k ∆ , +; k, k 2 ∆

L p ξ− ϕ 1 ¯ =(k + 1)(∆ + k)ϕ

∆ ¯ , +; k, k ∆ , +; k +1 , k

L p ξ ¯ ϕ = −k(∆ + k − 1)ϕ

1 ¯ ∆ , +; k, k ∆ , +; k − 1 , k

L ¯ ϕ ¯ = − i + ¯ k)ϕ ¯ ξ 0 ∆ , +; k, k ∆ , +; k, k 2 ∆

q

L ¯ ϕ ¯ = (¯ k + 1)(∆ + ¯ k)ϕ ¯ ξ ∆ , +; k , +; k, − 1 k, ∆ k+1

q

L ¯ ¯ ϕ ¯ = − k(∆ + ¯ k − 1)ϕ ¯ . (D.10) ξ 1 ∆ , +; k, k ∆ , +; k, k − 1

The detailed expressions of the modes are

1 s ¯ ¯ k− k k ! · ∆ r ¯ 2 ) − φ (∆ − 1 ,k ) r − 1

ϕ k ¯ +¯ k k − i (∆+ k +¯ k ) t i ( k − k ¯ =(− i ) √ e e P

∆,+;k,k ∆+k ¯ − k ¯ k 2 2 π k ! · ∆ ¯ 2 r + 1 k ( r + 1) 2

1 s −k+¯ k k ! · ∆ (∆−1,−k+¯ k) r − 1 ¯ ¯ r 2

=( k+¯ k k −i(∆+k+¯ k)t i(k−k)φ − i ) √ e e P 2 ¯ ∆−k+¯ k k 2 π k ! · ∆ k 2 r + 1 ( r + 1) 2

(D.11)

• The negative representation. The expressions of the modes are

ϕ √ ∆ , − ;0 , 0 = ∆ 2 1 i∆t e

2π (r + 1) 2

s

ϕ 1 ¯ k L ¯ = L ϕ phi-def ∆ , − ; k, k ¯ ξ ¯ ∆ , − ;0 , 0 . (D.12) {} k !∆ 1 ξ 1 k k !∆ ¯ k

The actions of the Killing symmetries to the modes are as

Lξ ϕ =i + k 0 ∆ , − ¯ ϕ ; k, k∆,− ¯ ; k, k 2 ∆

L p ξ ¯ ϕ = −k(∆ + k − 1)ϕ

− ¯ 1 ∆ , − ; k, k ∆ , − ; k − 1 , k

L p ξ ¯ ϕ =(k + 1)(∆ + k)ϕ

1 ¯ ∆ , − ; k, k ∆ , − ; k +1 , k

L ¯ ϕ ¯ =i + ¯ k ϕ ¯ ξ 0 ∆

∆,−;k,k ∆,−;k,k 2

q

L ¯ ¯ ϕ ¯ = − k(∆ + ¯ k − 1)ϕ ¯ ξ ∆ , − ; k , − − 1 k, ∆ ; k, k−1

q

L ¯ ϕ ¯ = (¯ k + 1)(∆ + ¯ k)ϕ ¯ (D.13) ξ 1 ∆ , − ; k, k ∆ , − ; k, k +1

56

D.3 Quantization

+∞

Φ( X ∗ x ) | = ϕ ¯ ( x ) a ¯ + ϕ ¯ ( x ) a (D.14)

P e ∆,+;k,k k,k ∆,−;k,k ¯ k, k

k,¯ k=0

D.4 The Euclidean correlation function

ΦE (tE , r, φ) = Φ(t = −itE , r, φ) (D.15)

+∞

Φ X † E ¯ ( x ) = ϕ ( x ) a ¯ + ϕ ¯ ( x ) a (D.16)

E;∆,+;k,k k,k E;∆,−;k,k ¯ k, k

k, ¯ k=0



h0|TΦE(x1)ΦE (x2)|0i

h

= lim h 0 | Φ E ( x )Φ ( x ) | 0 i · θ(t − t )

E;1 =t E ;1+

+ → 0 e t e 1 E 2 E;1 E;2





i


+ h 0 | Φ | i E 2 ( x )Φ E e 1 ( x ) 0 · θ(t − t )

e t E;2 E;1 E ;1= t E;1 −

+∞

= lim ϕ h X ¯ (x )ϕ ¯ (x ) · θ(tE;1 E;2) − t E (D.17) ;∆

→0 e t E;1=tE;1+ ¯ + ,+,k,k e 1 E;∆,−,k,k 2

k,k=0

• The positive representation. The expressions of the modes are



ϕE;∆,+;0,0 = ∆ 2 2 √ 1 −∆t E e π ( r + 1) 2

s

ϕ ¯ = L L ϕE;∆,+;0,0. (D.18) E ;∆ , +; k, k ¯ 1 ¯ k k

k ξ ¯ ; !∆ − 1 ξ k k !∆ E ;−1 ¯ k

The actions of the Killing symmetries to the modes are as

L ξ ϕ ¯ = − i + k)ϕ ¯ E ;0 E ;∆ , +; k, k E ;∆ , +; k, k 2 ∆

L p ξ ¯ ϕ =(k + 1)(∆ + k)ϕ

E ¯ ; − 1 E ;∆ , +; k, k E ;∆ , +; k +1 , k

L p ξ E ¯ ϕ = −k(∆ + k − 1)ϕ

;1 ¯ E ;∆ , +; k, k E ;∆ , +; k − 1 , k

L ¯ ϕ ¯ = − i + ¯ k)ϕ ¯ ξ E ∆

;0 E;∆,+;k,k E;∆,+;k,k 2

q

L ¯ ϕ ¯ = (¯ k + 1)(∆ + ¯ k)ϕ ¯ ξ E ; E ;∆ +; − 1 , k, k E ;∆ , +; k, k+1

q

L ¯ ¯ ϕ ¯ = − k(∆ + ¯ k − 1)ϕ ¯ . (D.19) {sptrans} ξ E ;1 E ;∆ , +; k, k E ;∆ , +; k, k − 1



57

The detailed expressions of the modes are



ϕ ¯ =(− i − (∆+ k +¯ k ) t i ( k − k ) φ (∆1,k i ) √ e e ¯ k 1 +¯ 1 s ¯ ¯ k−k 2 k ! · ∆ −¯ − k) r k k ¯ r − ∆ P , +; k, k ∆+ k − 2 · π k k¯ k 2 ! ∆ ¯ 2 r + 1 k ( r + 1) 2

1 s −k+¯ k 2 k ! · ∆ − r 1 r

=( k ¯ (∆ − 1 , − k +¯ k ) +¯ k k − ¯ i (∆+ k +¯ k ) t i ( k − k ) φ − i ) √ e e P

2 ¯ π k ∆−k+¯ k k 2 ! · ∆ k 2 r + 1 ( r + 1) 2

(D.20)

• The negative representation. The expressions of the modes are



ϕE;∆,−;0,0 = √ ∆ 2 1 ∆tE e

2π (r + 1) 2

s

ϕ ¯ = L L ϕ E ;∆ , − ; k, k ¯ 1 ¯ k k ξ ¯ E;∆,−;0,0 . (D.21) ;1 !∆

k E ξE;1 k !∆ ¯ k

The actions of the Killing symmetries to the modes are as

Lξ ϕ ¯ =i + k ϕ ¯ E ;0 E ;∆ , − ; k, k E ;∆ , − ; k, k 2 ∆

L p ξ ¯ ϕ = −k(∆ + k − 1)ϕ

E ¯ ; − 1 E ;∆ , − ; k, k E ;∆ , − ; k − 1 , k

L p ξE ¯ ϕ =(k + 1)(∆ + k) ;1 E;∆, −;k,k E;∆,− ¯ ϕ ;k+1,k

L ¯ ϕ ¯ =i + ¯ k ϕ ξ E ∆

;0 E;∆, −;k,k E;∆,− ¯ ; k, k 2

q

L ¯ ¯ ϕ ¯ = − k(∆ + ¯ k − 1)ϕ ξ E ; , − ; k − 1 E ;∆ k,E;∆,− ¯ ; k, k−1

q

L ¯ ϕ ¯ = (¯ k + 1)(∆ + ¯ k)ϕ ¯ (D.22) {sntrans} ξ E ;1 E ;∆ , − ; k, k E ;∆ , − ; k, k +1

1 −(∆−1)ρ e

GE;∆(x1; x2) = (D.23)

4 π sinh ρ

q q

cosh 2 2 ρ = r + 1 r + 1 cosh(t − t − r cos( − φ ) 1 2 E;1 E;2 ) r φ (D.24)

1 2 1 2

1

∇(1)2 3 − ∆(∆ − 2) G E;∆ ( x 1 ; x 2 ) = − δ(x − x ) (D.25)

p 1 2 g x

E 1 ()

For ρ 6= 0,

1 ∂ ∂

sinh 2 ρ − ∆(∆ − 2) GE;∆ (ρ) = 0 (D.26)

sinh2 ρ ∂ρ ∂ρ



58





E A more careful analysis for the near boundary region’s con-


tributions to some relevant quantities

In this appendix, we take a more careful analysis for the near boundary region’s contributions to some relevant quantities appearing in the main context.

We first study the near boundary region’s contribution to the action S (3.12). Specifically, we compute the asymptotic behavior of A µ as

A 0 = o ( r)

t

A −3 = o ( r)

r

A 0 } φ Al = o ( r ) , (E.1) {

the asymptotic behavior of the non-zero components of Fµν as

F −1 = o ( r)

tr

F 0 = o ( r)

tφ

F −1 rφ Fll = o ( r ) , (E.2) {}

and the asymptotic behavior of the non-zero components of µν F as

F tr −1 = o ( r) F tφ −4 = o ( r) F rφ −1 = o ( r), (E.3) {Fuu}

where, in the computation, we have used (3.4) and (3.8). We then compute the asymptotic

behavior of the integrand of the integral in the action (3.12) as

√ 1 1 µν 2 µ −1 − g − F µν F − µ A µ A = o ( r), (E.4) {asyaction} 4 2

where we have used (3.4), (3.8), (E.1), (E.2), (E.3). From the asymptotic behavior (E.4), we

show that the near boundary region’s contribution to the integral over M in the action (3.12) is finite.

We now take a more careful analysis for the computation of δS in (4.1). To perform the

analysis, we first represent S (3.12) as

Z √ 1 1

S 3 µν 2 µ = lim d x −g − F µν µ (E.5) F − µ A A . {Sreg}

r →∞ ∞ M 4 2 r ∞

Here, we have introduced a cutoff surface at r = r ∞. Mr is the subregion of M bounded by ∞



59

r = r∞. With the representation (E.5) of S, we compute δS as

Z √

δS 3 h i ν 2 µ µ ν d x − g ∇ F − µ A ∇ δA + − F δA = lim

r →∞ ∞ M νµ µ µν

r∞

Z √

= lim h 3 ν 2 µ x − g ∇ F − µ A δA d

r →∞ ∞ M νµ µ

r∞

Z Z √ √

+ 2 µ ν 2 µ ν d x στ F δA − d x στ F δA

µν µν

Σf,r Σi,r ∞

Z √

+ 2 i µ ν d x −γ (−1)n F µν { δA . (E.6) dSreg}

Γr∞

Here, Σi,r , Σf,r are the subregions of the Σi, Σf bounded by r = r∞. Γr is the subregion ∞ ∞ ∞ of the cutoff surface at r = r∞ sandwiched between Σ i and Σf . γAB is the induced metric on the constant r surface with the expression

γ A B 2 2 2 2 AB = dx dx − ( r + 1) dt + r dφ . (E.7) {gamma }

And µ n is the out-pointing unit normal vector orthogonal to the constant r surface with the expression

nµ 1 2 = 0, (r + 1)2 , 0 . (E.8) {n}

To take the r∞ → ∞ limit in (E.6), we compute the asymptotic behavior of the non-zero components of ∇ µFνρ as

∇ −1 t tr = F o ( r) ∇ 2 F = o ( r)

t tφ

∇ −1 F = o ( r)

t rφ

∇ −2 r tr = F o ( r) ∇ −1 F = o ( r)

r tφ

∇ −2 r rφ = F o ( r) ∇ −1 F = o ( r)

φ tr

∇ 2 F = o ( r)

φ tφ

∇ −1 φ rφ = F o ( r), (E.9)

the asymptotic behavior of ν ∇ F as

νµ

∇ν 0 F = o ( r )

νt

∇ν −3 F νr = o ( r) ∇ν 0 F dF} = o ( r ) , (E.10) {

νφ

60





and the asymptotic behavior of µ δA as


δAt −2 = o ( r) δAr −1 = o ( r ) δAφ −2 = o ( r), (E.11) {deltaA}

where, in the computation, we have used (3.4), (3.5), (3.8), (E.2). We then compute the

asymptotic behaviors of the integrands of the integrals in (E.6) as

√ ν 2 µ −1 − g ( ∇ F νµ − µ A µ ) δA = o ( r ) √ µ ν −3 στ F µν δA = o ( r) √ µ ν 0 − γ ( − 1) n F µν δA = o ( r), (E.12) {asydS}

where we have used (3.4), (4.2), (4.3), (E.1), (E.2), (E.7), (E.8), (E.10), (E.11). By applying

(E.12) to (E.6), we compute δS as

Z √

δS 3 ν 2 µ = d x − g ( ∇ F − µ A ) δA

νµ µ

M

Z Z √ √

+ 2 µ ν 2 µ ν d x στ F µν µν asydeltaS δA − d x στ F {} δA , (E.13)

Σf Σi

which is the same as (4.1).

We now take a more careful analysis for the computation of X · ξ δS in (4.17). Specifically,

by taking use of (E.5), we compute X · ξ δS as

Z √ 1 1

X 3 ρ µν 2 µ δS d x g ξ F F µ A A

ξ ρ µν µ · = lim − ∇ − −

r →∞ ∞ M 4 2 r ∞

Z √ 1 1

= lim 2 ρ µν 2 µ d x στ ξ F F + µ A A

r →∞ ∞ ρ µν µ 4 2

Σf,r ∞

Z √ 1 1

− 2 ρ µν 2 µ d x στ ρ µν + ξ F F µ A A

4 µ 2

Σ i,r ∞

Z √ 1 1

+ 2 ρ µν 2 µ d x − γn − ρ transSreg ξ F − µν { F µ A µ } A . (E.14)

Γ 4 2 r ∞

To take the r∞ → ∞ limit, we compute the asymptotic behavior of the integrands of the

integrals in (E.14) as

√ 1 1 ρ µν 2 µ −1 στ ρ ξ F µν F + µ A µ A = o ( r) 4 2 √ 1 1 ρ µν 2 µ 0 − γn ρ ξ − F µν F − µ A µ A = o ( r ), (E.15) {asyxitoS} 4 2



61





where we have used (3.4), (3.8), (4.2), (4.3), (4.14), (E.1), (E.2), (E.3), (E.7), (E.8). By


applying (E.15) to (E.6), we compute X · ξ δS as

Z √ 1 1

X 2 ρ µν 2 µ · δS = d x στ ξ F F + µ A A

ξ ρ µν µ 4 2

Σ f

Z √ 1 1

− 2 ρ µν 2 µ d x στ ρ µν µ asyStrans ξ F F + µ A A } , (E.16)

{

Σ 4 2 i

which is the same as (4.17).

We now take a more careful analysis for the computation of Q | ξ in (4.19). Specifically, P e we compute Qξ| as P e

Z √ 1 1

Q 2 µ ν ρ ρσ 2 2 ρ | − ξ µν ρσ µ ν µν ρ P = lim e d x σ τ ξ F g F F + µ A − A µ g A A µρ F ν

r →∞ ∞ Σ 4 2 r ∞



− α µν ρ α µ σ

D τ F A ξ

ν ρ

P

e

= lim Z √ 1 1 2 µ ν ρ ρσ 2 2 ρ d x στ ξ F µρ F − g F + A A ν µν F ρσ µ µ ν − µ g µν A ρ A r →∞ ∞ 4 2 Σ r ∞

Z √

− a µν ρ dx h ˆ n a µ σ τ F ν ρ { A ξ . (E.17)Qreg }

H r P

∞ e

Here, we have again introduced a cutoff surface at r = r∞. Σ r is the subregion of Σ bounded ∞ by r = r∞. Hr is the intersection of Σ with the cutoff surface at r = r∞ surface. hmn is the ∞

induced metric of the intersection of Σ with the constant r surface with the expression

h m n 2 2 mn = dx dx r dφ. (E.18) {h}

And ˆ a n is the out-pointing unit normal vector parallel to Σ and orthogonal its intersection with the constant r surface with the expression in the coordinate system (r, φ) as

n ˆ a 1 2 = ( r + 1) 2 nhat , 0 . (E.19) { }

To take the r∞ → ∞ limit, we compute the asymptotic behavior of the integrands of the

integrals in (E.17) as



√ 1 1 µ ν ρ ρσ 2 2 ρ −1 στ ξ F µρ F − g F A ν µν ρσ F + µ µ A ν − µ g µν A ρ A = o ( r) 4 2 √ a µν ρ 0 h n ˆ a σ τ F A ξ ( r ) , (E.20) {asyQ} µ ν ρ = o

where we have used (3.4), (3.8), (4.2), (4.3), (4.14), (E.1), (E.2), (E.3), (E.18), (E.19). By

applying (E.20) to (E.17), we compute Q | ξ as P e

Z √ 1 1

Q 2 µ ν ρ ρσ 2 2 ρ ξ = | d x στ ξ F F − g µν + F F µ A ν ρ − P µ g A A , (E.21) {asyQxi} µρ

e ν ρσ µ A

Σ P 4 µν 2 e

62





which is the same as (4.19).


We now take a more careful analysis for the computation of X · ξ Ω| in (4.21). Specifically, P e we compute X · | ξ Ω as P e

X · ξ Ω| P e

Z √ 1 1

= lim d2 µ ν ρ ρσ 2 2 ρ x σ − τ ξ δ F µρ ν F r − gµν FρσF + µ AµAν − µ gµνAρA →∞

∞ 4 2 Σ r ∞



+ α µ ν ρ ν µ ρ µν ρ µν ρ α µ σ

D τ ξ F ξ F ξ ν ρ δA − δA + F ξ δA + δF ρ ρ ρA

P e

Z √ 1 1

= lim 2 µ ν ρ ρσ 2 2 ρ ( − 1) d x στ ξ δ F µρ ν F r − g F + A A µν F ρσ µ µν − µ gµν AρA →∞

∞ Σ 4 2 r ∞

Z √

+ a µ ν ρ ν µ ρ µν ρ µν ρ h n ˆ σ τ F δA − F δA F ξ δA + ξ A ξ ξ + δF . (E.22)

dx a µ ν ρ ρ ρ ρ checkreg { }

H r P

∞ e

To take the r ∞ → ∞ in (E.22), we compute the asymptotic behaviors of the integrands of the

integrals in (E.22) as



√ 1 1 µ ν ρ ρσ 2 2 ρ −1 στ ξ δ F − − µρ F g A ν µν F ρσ F + µ A µ ν µ g µν A ρ A = o ( r ) 4 2 √ a µ ν ρ ν µ ρ µν ρ µν ρ 0 h n ˆ a σ τ δA − ξ δA + F µ ν ξ F F ξ δA + δF ξ = o ( ) , (E.23) {asycheck} ρ ρ ρ ρ A r

where we have used (3.4), (4.2), (4.3), (4.14), (E.3), (E.11), (E.18), (E.19), (E.20). By applying

(E.23) to (E.22), we compute Xξ · Ω| as P e

Z √ 1 1

X 2 µ ν ρ ρσ 2 2 ρ ξ Ω · | =( −1) d x στ ξ δ F µρ µν ρσ + F − g F δF µ A A ν µν − P µ g A ν e µ ρ A ,

Σ 4 2 P e

(E.24) {asyXdotOmega

which is the same as (4.21).

F More materials about the modes in the highest weight rep-

resentations

{expressions}

In this appendix, we provide more materials about the modes in the highest weight represen-tations.

F.1 Solving the highest weight modes

{hmodes}

We now provide a derivation for the expressions of the highest weight modes.

For the following discussion, we represent the candidate highest weight modes as

f µ −iωt imφ µ ( x ) = e e f(r), (F.1) { } e candidateh

λ,0,0



63

where λ denotes the different representations. And we compute the action of the Killing

symmetries (5.4) to the candidate highest weight modes (F.1) as

Lξ f (x) = − (ω + m)f (x) 0 λ, 0 , 0 λ, 0 , 0 2 µ µ i

L ¯ f (x) = − (ω − m)f (x), (F.2) {L00b} ξ 0 λ, 0 , 0 λ, 0 , 0 2 µ µ i

and

L t i 1 2 ( ω + m + 1) r + m − i ( ω − 1) t i ( m − 1) φ 2 t t f ξ ( x ) = − e e ( r + 1) 2 ∂ r f e ( r ) + f e(r) 1 λ, 0 , 0 r 2 2 ( r + 1)

− 1 r r φ i f e ( r ) − f e ( r ) 2 2 2 ( r + 1) r + 1

L r 1 i − i ( ω − 1) t i ( m − 1) φ 2 t r f ξ ( x ) = − e e ( r + 1) 2 − i f e ( r ) + ∂ r f e(r) 1 λ, 0 , 0 2

+ ( 2 ω + m − 1) r + m r φ f e ( r ) + i f e ( r ) r 2 ( r + 1)

L φ 1 i 1 1 − i ( ω − 1) t i ( m − 1) φ 2 t r f ξ ( x ) = − e e ( r + 1) 2 − f e ( r ) − i f e(r) 1 λ, 0 , 0 2 r r 2 ( r 2 + 1)

+ φ ( 2 ω + m + 1) r + ( m + 1) φ ∂ r f e ( r ) + f e ( r ), (F.3) {L1} r ( r 2 + 1)

and

L t i 2 1 − ( ω − m + 1) r − m i ( ω − 1) t i ( m +1) φ 2 t t ¯ f ( x ) = − e e ( r + 1) 2 ∂ r f e ( r ) + f e(r) ξ 1 λ, 0 , 0 2 2 r ( r + 1)

− 1 r r φ i f e ( r ) + f e ( r ) 2 2 2 ( r + 1) r + 1

L r 1 i − i ( ω − 1) t i ( m +1) φ 2 t r ¯ f ( x ) = − e e ( r + 1) 2 − i f e ( r ) + ∂ r f e(r) ξ 1 λ, 0 , 0 2

+ ( 2 ω − m − 1) r − m r φ f e ( r ) − i f e ( r ) 2 r ( r + 1)

L φ i 11 1 − i ( ω − 1) t i ( m +1) φ 2 t r ¯ f ( x ) = − e e ( r + 1) 2 f e ( r ) + i f e(r) ξ 1 λ, 0 , 0 2 2 2 r r ( r + 1)

+ φ ( 2 ω − m + 1) r − ( m − 1) φ ∂ r f e ( r ) + f e ( r ), (F.4) {Lb1} r ( r 2 + 1)



64

and

L t i 1 2 ( ω + m − 1) r + m − i ( ω +1) t i ( m +1) φ 2 t t 2 ξ f ( x ) = e e ( r + 1) ∂ − 1 r f e ( r ) − f e(r) λ, 0 , 0 2 2 r ( r + 1)

+ 1 r r φ i f e ( r ) − f e ( r ) 2 2 2 ( r + 1) r + 1

L r i 1 − i ( ω +1) t i ( m +1) φ 2 t r f ξ ( x ) = e − 1 e ( r + 1) 2 i f e ( r ) + ∂ r f e(r) λ, 0 , 0 2

− ( 2 ω + m + 1) r + m r φ f e ( r ) − i f e ( r ) 2 r ( r + 1)

L φ 1 i 1 1 − i ( ω +1) t i ( m +1) φ 2 t r f ξ ( x ) = e − 1 e ( r + 1) 2 − f e ( r ) + i f e(r) λ, 0 , 0 2 2 2 r r ( r + 1)

+ φ ( 2 ω + m − 1) r + ( m − 1) φ ∂ r f e ( r ) − f e ( r ), (F.5) {Ln1} 2 r ( r + 1)

and

L t i 1 2 ( ω − m − 1) r − m − i ( ω +1) t i ( m − 1) φ 2 t t ¯ f ( x ) = e e ( r + 1) 2 ∂ r f e ( r ) − f e(r) ξ − 1 λ, 0 , 0 r 2 2 ( r + 1)

+ 1 r r φ i f e ( r ) + f e ( r ) 2 2 2 ( r + 1) r + 1

L r 1 i − i ( ω +1) t i ( m − 1) φ 2 t r ¯ f ( x ) = e e ( r + 1) 2 i f e ( r ) + ∂ r f e(r) ξ − 1 λ, 0 , 0 2

− ( 2 ω − m + 1) r − m r φ f e ( r ) + i f e ( r ) r ( r 2 + 1)

L φ 1 i 1 1 − i ( ω +1) t i ( m − 1) φ 2 t r ¯ f ( x ) = e e ( r + 1) 2 f e ( r ) − i f e(r) ξ − 1 λ, 0 , 0 2 2 2 r r ( r + 1)

+ φ ( 2 ω − m − 1) r − ( m + 1) φ ∂ r f e ( r ) − f e ( r ). (F.6) {Lbn1} 2 r ( r + 1)

We now solve the expressions of the highest weight modes. Here, we solve them case by case according to the corresponding highest weight representations.

• + Representation I: the positive representation with the eigenvalues (5.24) of the Casimir

“operators”. We now solve the corresponding highest weight mode.

We first solve the value of (ω, m). Specifically, by applying (5.37) and (F.2) to (5.24)

through (5.12) and (5.14), we get the following equations for (ω, m) as

( ω + m − µ)(ω + m + µ − 2) = 0 ( ω − m + µ)(ω − m − µ − 2) = 0. (F.7) {equomegam1}

By solving these equations (F.7), we get the candidate values of (ω, m) as

ω = 0 ω = µ + 1 ω = − µ + 1 ω = 2

or or or . (F.8) {omegam1}

m = µ m = −1 m = 1 m = −µ

65

Among these candidate values of (ω, m) (F.8), by considering the requirement (5.30) and that m is a real integer, we figure out that the allowed values of (ω, m) can only be the second one for all values of µ and the fourth one for µ = 1. While, for the case of µ = 1, the second value of (ω, m) and the fourth value of (ω, m) are the same. Therefore, we generally denote the value of (ω, m) as

ω = µ + 1 m = −1. (F.9) {s1f}

We then solve the expression of µ f(r). Specifically, by applying (F.3), (F.4), (F.9) to e

(5.37), we get the following equations for µ f(r) as e

( 2 µ + 1) r − 1 1 r

∂ t t r φ r e e e e 2 f ( r) + f (r) − i f (r) − f (r) = 0 2

r(r2 2 + 1) ( r + 1) r + 1

( 2 µ − 1) r − 1

− t r r φ i f ( r ) + ∂ f ( r ) + f ( r ) + i f(r) = 0

e e e e r r ( r 2 + 1)

− 1 1 ( µ + 1)r t r φ φ f e ( r ) − i f e ( r ) + ∂ r f e ( r ) + f e(r) = 0 2 2 2 r r ( r + 1) r + 1

( 2 µ + 3) r + 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) − i f ( r ) + f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ + 1) r + 1

− t r r φ i f ( r ) + ∂ f ( r ) + f ( r ) − i f(r) = 0

e e e e r 2 r ( r + 1)

1 2 1 ( µ + 3) r + 2

f t r φ φ ( r ) + i f ( r ) + ∂ f ( r ) + f(r) = 0. (F.10) { } e e e e r equf1

r 2 2 2 r ( r + 1) r ( r + 1)

And, by solving these equations (F.10), we get the expression of µ f(r) as e

f e (r) = C · µ 3 2 t 1 r

( 2 + r + 1) 2 2

f e (r) = C · (− ) µ 1 2 r i 1

2 + ( r + 1) 2 2

f e (r) = C · (− ) µ 1 , (F.11) {ftilde1} 2 φ 1 1

2 + r ( r + 1) 2 2

where C is an integral constant.

Finally, by applying (F.9) and (F.11) to (F.1) and by taking use of the expressions of

the Killing fields (5.4), we get the expression of the highest weight mode as

e−i(µ+2)t

f µ µ ( x ) = C ξ. (F.12)

λ, µ 1 0 , 0 2 +1 ( r + 1) 2

• + Representation II: the positive representation with the eigenvalues (5.25) of the Casimir

“operators”. We now solve the corresponding highest weight mode.

66

We first solve the value of (ω, m). Specifically, by applying (5.37) and (F.2) to (5.25)

through (5.12) and (5.14), we get the following equations for (ω, m) as

( ω + m + µ)(ω + m − µ − 2) = 0 ( ω − m − µ)(ω − m + µ − 2) = 0. (F.13) {equomegam2}

By solving these equations (F.13), we get the candidate values of (ω, m) as

ω = 0 ω = − µ + 1 ω = µ + 1 ω = 2

or or or . (F.14) {omegam2}

m = −µ m = −1 m = 1 m = µ

Among these candidate values of (ω, m) (F.14), by considering the requirement (5.30) and that m is a real integer, we figure out that the allowed values of (ω, m) can only be the third one for all values of µ and the fourth one for µ = 1. While, for the case of µ = 1, the third value of (ω, m) and the fourth value of (ω, m) are the same. Therefore, we generally denote the value of (ω, m) as

ω = µ + 1 m = 1. (F.15) {s2f}

We then solve the expression of µ f(r). Specifically, by applying (F.3), (F.4), (F.15) to e

(5.37), we get the following equations for µ f(x) as e

( 2 µ + 3) r + 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) − i f ( r ) − f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ + 1) r + 1

− t r r φ i f ( r ) + ∂ f ( r ) + f ( r ) + i f(r) = 0

e e e e r 2 r ( r + 1)

1 2 1 ( µ + 3) r + 2

− t r φ φ f ( r ) − i f ( r ) + ∂ f ( r ) + f(r) = 0

r e e e e r 2 2 2 r ( r + 1) r ( r + 1)

( 2 µ + 1) r − 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) − i f ( r ) + f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ − 1) r − 1

− t r r φ i f ( r ) + ∂ f ( r ) + f ( r ) − i f(r) = 0

e e e e r 2 r ( r + 1)

1 1 ( µ + 1)r t r φ φ f e ( r ) + i f e ( r ) + ∂ r f e ( r ) + f e(r) = 0. (F.16) {equf2} 2 2 2 r r ( r + 1) r + 1

And, by solving these equations (F.16), we get the expression of µ f(r) as e

f e (r) = C · µ 3 2 t 1 r

2 + ( r + 1) 2 2

f e (r) = C · (− ) µ 1 2 r i 1

2 (r + + 1) 2 2

f e (r) = C · µ ftilde2 1 , (F.17) {} + φ 1 1

2 r 2 ( r + 1) 2 2

67

where C is an integral constant.

Finally, by applying (F.15) and (F.17) to (F.1) and by taking use of the expressions of

the Killing fields (5.4), we get the expression of the highest weight mode as

µ ¯ e −i(µ+2)t

f µ ( x ) = C ξ (F.18)

λ, µ 0 , 0 1 2 +1 ( r + 1) 2

• − Representation I: the negative representation with the eigenvalues (5.24) of the Casimir

“operators”. We now solve the corresponding highest weight mode.

We first solve the value of (ω, m). Specifically, by applying (5.39) and (F.2) to (5.24)

through (5.13) and (5.15), we get the following equations for (ω, m) as

( ω + m + µ)(ω + m − µ + 2) = 0 ( ω − m − µ)(ω − m + µ + 2) = 0. (F.19) {equomegam3}

By solving these equations (F.19), we get the candidate values of (ω, m) as

ω = 0 ω = − µ − 1 ω = µ − 1 ω = −2

or or or . (F.20) {omegam3}

m = −µ m = 1 m = −1 m = µ

Among these candidate values of (ω, m) (F.20), by considering the requirement (5.31) and that m is a real integer, we figure out that the allowed values of (ω, m) can only be the second one for all values of µ and the fourth one for µ = 1. While, for the case of µ = 1, the second value of (ω, m) and the fourth value of (ω, m) are the same. Therefore, we generally denote the value of (ω, m) as

ω = −µ − 1 m = 1. (F.21) {s3f}

We then solve the expression of µ f(r). Specifically, by applying (F.5), (F.6), (F.21) to e

(5.39), we get the equations for µ f(r) as e

( 2 µ + 1) r − 1 1 r

∂ t t r φ r e e e e 2 f ( r) + f (r) + i f (r) − f (r) = 0 2

r 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ − 1) r − 1

i t r r φ f ( r ) + ∂ f ( r ) + f ( r ) − i f(r) = 0

e e e e r 2 r ( r + 1)

− 1 1 ( µ + 1)r t r φ φ f e ( r ) + i f e ( r ) + ∂ r f e ( r ) + f e(r) = 0 2 2 2 r r ( r + 1) r + 1

( 2 µ + 3) r + 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) + i f ( r ) + f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ + 1) r + 1

i t r r φ f ( r ) + ∂ f ( r ) + f ( r ) + i f(r) = 0

e e e e r r ( 2 r + 1)

1 2 1 ( µ + 3) r + 2

f t r φ φ ( r ) − i f ( r ) + ∂ f ( r ) + f(r) = 0. (F.22) { } e e e e r equf3

r r2 2 ( r + 1) r 2 ( r + 1)

68

And, by solving these equations (F.22), we get the expression of µ f(r) as e

f e (r) = C · µ 3 2 t 1 r

( 2 + r + 1) 2 2

f e (r) = C · µ 1 2 r i 1

2 + ( r + 1) 22

f e (r) = C · (− ) µ 1 , (F.23) {ftilde3} 2 φ 1 1

2 + r ( r + 1) 2 2

where C is an integral constant.

Finally, by applying (F.21) and (F.23) to (F.1) and by taking use of the expressions of

the Killing fields (5.4), we get the expression of the highest weight mode as

ei(µ+2)t

f µ µ ( x ) = C ξ. (F.24)

λ, µ − 0 , 0 2 +11 ( r + 1) 2

• − Representation II: the negative representation with the eigenvalues (5.25) of the Casimir

“operators”. We now solve the corresponding highest weight mode.

We first solve the value of (ω, m). Specifically, by applying (5.39) and (F.2) to (5.25)

through (5.13) and (5.15), we get the following equations for (ω, m) as

( ω + m − µ)(ω + m + µ + 2) = 0 ( ω − m + µ)(ω − m − µ + 2) = 0. (F.25) {equomegam4}

By solving these equations (F.25), we get the candidate values of (ω, m) as

ω = 0 ω = µ − 1 ω = − µ − 1 ω = −2

or or or . (F.26) {omegam4}

m = µ m = 1 m = −1 m = −µ

Among these candidate values of (ω, m) (F.26), by considering the requirement (5.31) and that m is a real integer, we figure out that the allowed values of (ω, m) can only be the third one for all values of µ and the fourth one for µ = 1. While, for the case of µ = 1, the third value of (ω, m) and the fourth value of (ω, m) are the same. Therefore, we generally denote the value of (ω, m) as

ω = −µ − 1 m = −1. (F.27) {s4f}

We now solve the expression of µ f(r). Specifically, by applying (F.5), (F.6), (F.27) to e



69

(5.39), we get the following equations for µ f(r) as e

( 2 µ + 3) r + 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) + i f ( r ) − f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ + 1) r + 1

i t r r φ f ( r ) + ∂ f ( r ) + f ( r ) − i f(r) = 0

e e e e r 2 r ( r + 1)

1 2 1 ( µ + 3) r + 2

− t r φ φ f ( r ) + i f ( r ) + ∂ f ( r ) + f(r) = 0

r e e e e r 2 2 2 r ( r + 1) r ( r + 1)

( 2 µ + 1) r − 1 1 r

∂ t t r φ r e ( f r ) + f ( r ) + i f ( r ) + f(r) = 0

r 2 e e e 2 2 2 ( r + 1) ( r + 1) r + 1

( 2 µ − 1) r − 1

i t r r φ f ( r ) + ∂ f ( r ) + f ( r ) + i f(r) = 0

e e e e r 2 r ( r + 1)

1 1 ( µ + 1)r t r φ φ f e ( r ) − i f e ( r ) + ∂ r f e ( r ) + f e(r) = 0. (F.28) {equf4} 2 2 2 r r ( r + 1) r + 1

And, by solving these equations (F.28), we get the expression of µ f(r) as e

f e (r) = C · µ 3 2 t 1 r

2 + ( r + 1) 22

f e (r) = C · µ 1 2 r i 1

(r2 + + 1) 2 2

f e (r) = C · µ {ftilde4 1 , (F.29)} + φ 1 1

2 r(r2 + 1) 2 2

where C is an integral constant.

Finally, by applying (F.27) and (F.29) to (F.1) and by taking use of the expressions of

the Killing fields (5.4), we get the expression of the highest weight mode as



f (x) = C · µ ξ . (F.30) λ, 0 , 0 − 1 2 +1 ( µ µ ¯ e i(µ+2)t r + 1) 2

F.2 The asymptotic behaviors

{asb}

F.3 An argument showing that there are no more modes

{nomodes}

We now provide an argument showing that there are no more modes besides the ones given in subsubsection

We prove by contradiction.

For the momentum, we assume that there are other modes besides the ones in the highest

weight representations, which have eigenvalues (5.24) or (5.25) of the Casimir “operators”, which are in the form of

f µ −iωt imφ µ = e e A(r), (F.31)

e ee

and which are positive frequency modes whose values of (ω, m) satisfy () or negative frequency modes whose values of (ω, m) satisfy (). And we will derive contradictions in the following.

70

We discuss in the following four cases:

• Case I: The positive frequency modes with the eigenvalues (5.24) of the Casimir “oper-

ators”.

– µ If f e satisfies

L µ µ ξ1 ¯ L f = f = 0, (F.32)

e ξ1 e

which means µ f e is a highest weight mode, we directly get a contradiction: we have

found all of the highest weight modes in subsubsection 5.3.5.

– µ If f e satisfies

L µ µ ξ = # f f 6= 0, (F.33)

1 e ¯ + ,u ; k, k

we get

L µ µ µ f ξ = − i + k + 1) f (F.34) 0 e e 2



f µ 1 µ = − L L e ξ − 1 ξ f (F.35) 1 e ( k + 1)( µ + k )

– µ If f satisfies

e

L µ µ ¯ f = # f 6= 0, (F.36) ξ 1 e ¯ + ,u ; k, k

L µ ¯ f = (F.37)

ξ0 e

G The sum rules

In this appendix, we introduce some sum rules for the computation of the Euclidean correlation function. Specifically, we study the following two summations

+∞

X µ1 µ2 f ( x ) f ¯ 1 sumudef (x ) , ¯ (G.1) { } 2

E;+,u;k,k E;−,u;k,k

k, ¯ k=0

and

+∞

X µ1 µ2 f ( x ¯ 1 ) f (x ), { } ¯ 2 (G.2) sumvdef

E;+,v;k,k E;−,v;k,k

k,¯ k=0

where µ f (x) are

E ¯ ;+ / − ,u/v ; k, k



71

G.1 The sum rule for the modes of representation I

We now compute the summation (G.1).

First, by applying (7.12), (7.16) to (G.1), we get the following expression

+∞

X µ 1 µ2 f ( x ) ¯ 1 f (x2 )

E;+,u;k,k E;− ¯ ,u ; k, k

k, ¯ k=0

+∞ 2

= X µ1 µ2 ( µ + k )( µ + k + 1) ϕ ¯ ( x ) ξ ( x 1 ) ϕ ¯ ( x ) ξ (x ) µ2 E;µ+2,+;k,k 1 E;1 E;µ+2,−;k,k 2 2 E ; − 1

k, ¯ k=0

− 4i p µ1 µ ( µ + k ) k2 ( µ + k + 1) ϕ ¯ ( x ) ξ ( x 2 E ; µ +2 , +; k, k 1 1 ) ϕ ¯ ( x ) ξ (x ) E ;1 E ; µ +2 , − ; k − 1 , k 2 E ;0 2 µ

− 2 p µ µ − k ( k 1)( µ + k 1 )( µ + k + 1) ϕ ¯ ( x ) ξ ( x ) ϕ ( x ) ξ2 2 E ; µ +2 , +; k, k 1 E ;1 1 +2 , − ¯ (x ) E ; µ ; k − 2 , k 2 E ;1 2 µ

+ 4i p µ1 µ2 ( µ + k ) k ( µ + k + 1) ϕ ¯ ( x ) ξ ( x ) ϕ ¯ ( x ) ξ (x k, k 22 ) 2 E ; µ +2 , +; k − 1 , k 1 1 E ;0 E ; µ +2 , − ; E ; − 1 µ

+ 8 µ1 µ2 k ( µ + k ) ϕ − ¯ ( x ) ξ x ) 2 E ; µ +2 , +; k 1 , k 1 ( 1 ϕ ¯ ( x ) ξ E ;0 E ; µ +2 , − ; k − 1 , k 2 (x2) E ;0 µ

− 4i p µ1 µ2 k ( k − 1)( µ + k ) ϕ ¯ ( x 2 E ; µ +2 , +; k − 1 , k 1 ) ξ ( x 1 ) ϕ ¯ ( x 2 ) ξ (x ) E ;0 E ; µ +2 , − ; k − 2 , k 2 E ;1 µ

− 2 p µ1 µ2 k ( k − 1)( µ + k )( µ + k + 1) ϕ ¯ ( x ) ξ ( x 1 ) ϕ ¯ ( x 2 ) ξ (x2) 2 E ; µ +2 , +; k − 2 , k 1 E ; − 1 E ; µ +2 , − ; k, k E ; − 1 µ

+ 4i p µ1 µ2 k ( k − 1)( µ + k ) ϕ ¯ ( x ) ξ ( x ) 1 1 ϕ ¯ ( x ) ξ (x ) E ; µ +2 , +; k − 2 , k 1 E ; − E ; µ +2 , − ; k − 1 , k 2 µ 2 E ;0 2

2

+ µ1 µ2 k ( k − 1) ϕ ¯ ( x ) ξ ( x ) ϕ ¯ ( x ) ξ (x ) . (G.3) {sumu }

µ2 E;µ+2,+;k−2,k 1 E;−1 1 E;µ+2,−;k−2,k 2 E;1 2

Second, we compute the respective terms in (G.3) as

I 2 µ µ 1 = ( µ + k )( µ + k + 1) ϕ2 ¯ ( x ) ξ ( x ) ϕ µ 2 E ; µ +2 , +; k, k 1 ¯ ( x ) ξ (x E ;1 1 E ; µ +2 , − ; k, k 2 ) E ; − 1 2

= 2 µ1 ν ∂ 1 µ2 ν ∂ 2 ξ ( x ) ;1 1 ξ ( x ) ; − 1 1 ϕ ¯ ( x ) ξ ( x ) ξ ( x ) ϕ ¯ (x ) µ 2 E E ν E ; µ +2 , +; k − 1 , k 1 E − 1 2 ∂x 1 ; E ;1 2 2 ν E ; µ +2 , − ; k − 1 , k ∂x 2 1 2

+ 2i µ ∂ 1 ξ ν µ ( x ξ2 1 ) ξ 1 ( x 1 ) ϕ ¯ ( x ) E ;1 E ;0 ν E ; µ +2 , +; k, k 1 (x )ϕ E ; − 2 ¯(x ) 1 E ; µ +2 , − ; k, k 2 µ ∂x 1 1

+ µ µ 12 { ξ ( x 1 ) ϕ ¯ ( x ) ξ ( x ) ϕ ¯ ( x E ;1 E ; µ +2 , +; k, k 1 E ; − 2 1 E ; µ +2 , − ; k, k 2 ) , (G.4)u1}

and

II 4i p µ 1 µ2 = − ( µ + k ) k ( µ + k + 1) ϕ ¯ ( x E ; µ +2 , +; k, k 1 ) ξ ( x 1 ) ϕ ¯ ( x ) ξ (x E ;1 E ; µ +2 , − ; k − 1 , k 22) µ 2 E ;0

= 4 µ ∂ 1 ν 1 µ ∂ 2 ν 2 − ξ ( x 1 ) ξ ( x 1 ) ϕ ¯ ( x ) ξ ( x ) ξ ( x ) ϕ 2 E ;1 E ; − 1 ν E ; µ +2 , +; k − 1 , k 1 2 2 ¯(x ) E ; µ +2 , − ; k − 1 , k 2 E ;0 E ;0 ν µ ∂x 1 ∂x 2 1 2

− 2i µ ∂ 1 ν 1 µ2 ξ ( x ) ξ ( x E ;1 1 E ; − 1 1 ) ϕ ¯ ( x ) ξ (x )ϕ ν , k 1 ∂x 1 E ; µ +2 +; − , k 1 E ;0 2 ¯ (x ), (G.5) {u2} E ; µ +2 , − ; k − 1 , k 2 µ 1

72

and

III 2 p µ1 µ2 = − k ( k − 1)( µ + k )( µ + k + 1) ϕ ¯ ( x ) ξ 2 E ; µ +2 , +; k, k 1 ( x 1 ) ϕ ¯ ( x ) ξ (x ) E ; µ +2 , − ; k − 2 , k 2 2 E ;1 E ;1 µ

= 2 µ1 ν ∂ 1 µ2 ν ∂ ξ ( x 1 ) ξ ( x ) ( x ) ξ 2 ( x ) ϕ E ;1 2 ¯ (x ) E ; − 1 1 ϕ ¯ ( x ) ξ, 2 E ;1 ν 1 E ; µ +2 , +; k − 1 , k 1 E ; − 1 2 ν 2 E ; µ +2 , − ; k − 1 , k 2 µ ∂x ∂x 1 2

(G.6) {u3}

and

IV 4i p µ 1 µ2 = ( µ + k ) k ( µ + k + 1) ϕ ¯ ( x ) ξ ( x 1 ) ϕ ¯ ( x ) ξ (x ) 2 E ; µ +2 , +; k − 1 , k 1 E ;0 E ; µ +2 , − ; k, k 2 2 E ; − 1 µ

= 4 µ1 ν ∂ 1 µ2 ν ∂ 2 − ξ ( x 1 ) ξ ( x 1 ) ϕ − ¯ ( x ) ξ ( x ) ξ ) ϕ 2 E ;0 E ;0 ν E ; µ +2 , +; k 1 , k 1 ∂x 1 E ; − 2 ( x 2 (x2) 1 E ;1 ν E ; µ +2 , − ; k − ¯ 1 , k µ ∂x 2 1 2

− 2i µ1 ν ∂ 1 µ2 ξ ( x 1 ) ξ ( x 1 ) ϕ ¯ ( x ) k 1 ξ (x2 )ϕ ¯(x ), (G.7) {u4} E ;0 E ;1 ν E ; µ +2 , +; k, E ; − 1 E ; µ +2 , − ; k, k 2 µ ∂x 1 1

and

V 8 µ1 µ2 = k ( µ + k ) ϕ ¯ ( x ) ξ ( x 1 ϕ 2 E ; µ +2 , +; k − 1 , k 1 ) − ; k − ¯ ( x ) ξ (x ) E ;0 E ; µ +2 , 1 , k 2 2 E ;0 µ

= 8 ∂ ∂ µ 1 ν 1 µ 2 ν 2 ξ ( x 1 ) ξ ( x 1 ) ϕ ¯ ( x ) ξ ( x ) ξ ( 2 E ;0 E ;0 ν E ; µ +2 , +; k − 1 , k 1 2 x 2 ) ϕ ¯ (x ) ν E ; µ +2 , − ; k − 1 , k 2 E ;0 ;0 µ ∂x 1 E ∂x 2 1 2

− µ1 µ2 2 ξ ( x 1 ¯ ) ϕ ( x ) ξ (x )ϕ ¯ (x E;0 E;µ+2,+;k−1,k 1 2 E ;0 E;µ+2,−;k−1,k 2 ), (G.8) {u5}

and

V I 4i p µ 1 µ = − k ( k − 1)( µ + k ) ϕ ¯ ( x ) ξ ( x 1 ) ϕ ¯ ( x 2 ) ξ2 (x ) E ;0 E ; µ +2 , − 2 E ; µ +2 , +; k − 1 , k 1 ; k − 2 , k 2 E ;1 µ

= 4 µ1 ν ∂ 1 µ2 ν ∂ 2 − ξ ( x ) ( ) ;0 1 ξ x E 1 ϕ ¯ ( x 1 ) ξ ( x ) ξ ( ) ¯ E ;1 2 x ϕ(x ) ν E ; − 1 2 ν E ; µ , − ; k − 1 , µ 2 E ;0 E ; µ +2 , k − 1 , k ∂x 1 +; ∂x 2 +2 k 2 1 2

+ 2i ∂ µ 1 ν 1 µ2 ξ ( x 1 ) ξ ( x 1 ) ϕ E ;0 E ; − 1 ν E ; µ +2 , +; k − ¯ ( x ) ξ (x )ϕ ¯ (x ), (G.9) 2 , k 1 2 E ;1 E ; µ +2 , − ; k − 2 , k 2 {u6} µ ∂x 1 1

and

V II 2 p µ1 µ = − k ( k −2 1)( µ + k )( µ + k + 1) ϕ ¯ ( x ; µ +2 , +; − 2 , k µ 2 E k 1 ) ξ ( x ) ϕ ¯ ( x ) ξ (x ) E ; − 1 1 E ; µ +2 , − ; k, k 2 E ; − 1 2

= 2 µ 1 ν ∂ 1 µ ∂ 2 ν 2 ξ ( x ) ξ ( ) ϕ ¯ ( x ; 1 1 x E ;1 ν E ; µ +2 , +; k 1 , µ 2 E − 1 − k 1 ) ξ ( x ) ξ ( x ) ϕ E ; − 1 2 E ;1 2 ¯(x ), ν E ; µ +2 , − ; k − 1 , k 2 ∂x 1 ∂x 2 1 2

(G.10) {u7}

and

V III 4i p µ 1 µ2 = k ( k − 1)( µ + k ) ϕ − ¯ ( x ξ ( x ) k 1 ) 1 ϕ ¯ ( x ) ξ ( 2 E ; µ +2 , +; k 2 , E ; − 1 E ; µ +2 , − ; k − 1 , k 2x2) E ;0 µ

= 4 µ ∂ µ ∂ 2 ν 2 ξ 1 ν 1 ( x 1 ) ξ ( x 1 ) ϕ ( ) ϕ k − ¯ x ) ξ ( x ( k − ¯x ) 1 , k 1 2 ) ξ ( x 2 2 E ; − 1 E ;1 ν E ; µ +2 , +; µ ∂x 1 E ;0 E ;0 ν E ; µ +2 , +; 1 , k 2 ∂x 2 1 2

+ 2i µ ∂ 1 ν 1 µ2 ξ ( x ) ξ ( x 1 ) ϕ E ; − 1 ¯ ( x ) ξ (x )ϕ (x 1 E ;1 ν E ; µ +2 , +; k − 1 , k 1 2 ¯ E ;0 E ; µ +2 , − ; k − 1 , k2), µ ∂x 1 1

(G.11) {u8}

73

and

IX 2 µ µ − = k ( k 1 1) ϕ ¯ ( x 1 ) ξ ( x ) ϕ x2 2 ) ξ (x2) − ¯ ( 2 E ; µ +2 , +; k − 2 , k 1 E ; − 1 E ; µ +2 , ; k − 2 , k E ;1 µ

= 2 µ ∂ 1 ν 1 µ ∂ 2 ν ξ ( x ) ξ ( x ) ( x E ; − 1 1 1 ϕ ¯ +2 , k − 1 k µ 2 E ;1 ν µ , ∂x 1 E ; +; 1 ) ξ ( x ) ξ 2 ϕ E ;1 2 ( x ) ¯ (x ) E ; − 1 2 ν E µ +2 , − ; k − , k 2 ∂x 2 ; 1 1 2

− 2 i ∂ µ 1 ν 1 µ2 ξ ( x 1 ) ξ ( x ϕ ¯ ( x ) E ; − 1 ) ξ (x )ϕ 1 E ;0 ν E ; µ +2 , +; k − 2 , k 1 2 ;µ+2, ∂x 1 E ;1 E−;k− ¯(x ) 2 , k 2 µ 1

+ µ1 µ2 ξ ( x ) ϕ ¯ ( x ) ξ (x )ϕ E; − 1 1 E;µ+2,+;k−2,k 1 2 (x ), +2,− ¯ (G.12) {u9}

E;1 E;µ ;k−2,k 2

where we have used (D.19), (D.22). Third, by applying the respective terms (G.4), (G.5),

(G.6), (G.7), (G.8), (G.9), (G.10), (G.11), (G.12) to (G.3), we get the final expression of the sum rule as

+∞

X µ 1 µ2 f ( x ) ¯ 1 f (x2 )

E ¯ ;+ ,u ; k, k E ; − ,u ; k, k

k, ¯ k=0

= 1 µ 1 ν 1 µ 1 ν 1 µ 1 ν 1 2 ξ ( x ) ξ ) 1 ξ x ) + 2 2 E ;1 1 ( x − 4 ξ ( ) ( ξ E ; − 1 1 x E ;0 E ;0 1 ( x ) ξ ( x ) E ; − 1 1 E ;1 1 2 µ

µ ∂ ∂

· 2 ν2 µ2 ν2 µ2 ν2 2 ξ ( x 2 ) ξ ( x 2 ) − 4 ξ ( x 2 ) ξ ( x 2 ) + 2 ξ ( x 2 ) ξ (x2 ) G ; E 2 ;0 E ; − 1 E ;1 E ; µ +2 ( x 1 E x ) ;1

E;−1 E;0 ν ν 12 ∂x ∂x

1 2





i


µ 1 ν 1 µ 1 ν 1 µ ξ x ξ x ξ x ξ x ξ x

+ 2 4 ( 1 ) ( 1 ) − ( 1 ) ( 1 ) ( 2 )

2 E;1 E;0 E;0 E;1 E;−1 µ

− µ 1 ν 1 µ 1 ν 1 µ ξ x ξ x ξ x ξ x ξ x 4 2 ( 1 ) ( 1 ) − ( 1 ) ( 1 ) ( 2 )

E;1 E;−1 E;−1 E;1 E;0

∂

+ 4 µ ξ 1 ν µ ν µ 1 − ( x ) ξ ( x ) ξ ξ x ) ξ ( E;−1 1 E;−1 1 E;0 1 E;1 2 E;µ+2 ( Gx ; x )

E;0 1 ( 1 2 1 ( x ) x ) ν 1 2 1

∂x1

+ 1 µ 1 µ 2 µ 1 µ 2 µ 1 µ 2 2 ξ ( x 1 ) ξ ( x 2 ) − 4 ξ ( x 1 ) ξ ( x 2 ) + 2 ξ ( x 1 ) ξ ( x 2 )GE;µ+2(x1 ; x ) E ;1 E ; − 1 E ;0 E ;0 E ; − 2 1 E ;1 2

= 1 i (1) µ (2) µ µ1ν1 ρ ;µ ∂ ∇ 1 ∇ 2 G G E ; µ +2 ( x 1 ; x 2 ) + ˜ ( x 1 2 1 ) ( x 1 ; x 2 ) GE;µ+2(x1; x2) 2 E ; ρ E 2 2 µ 1 ν µ ∂x 1 1

+ 1 µ1;µ2 G (x1; x2)GE;µ+2(x1; x2), (G.13) E 2

where we have used (7.4), (7.6), (C.13).

G.2 The sum rule for the modes of representation II

We now compute the summation (G.2).



74

First, by applying (7.14), (7.18) to (G.2), we get the following expression

+∞

X µ µ f ( x ) f (x )

1 2

E ¯ 1 ¯ 2 ;+ ,v ; k, k E ; − ,v ; k, k

k, ¯ k=0

+∞ 2 1 µ2 = X µ ( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ (x 1 ¯ ) ϕ(x ) ¯ ξ (x )

¯ µ2 2 E ; µ +2 , +; k, k 1 E ;1 E ; µ +2 , − ; k, k 2 E ; − 1

k,k=0

− 4i q µ µ ¯ 12 ( µ + ¯ k ) k ( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ ( x ) 2 E ; µ +2 , +; k, k 1 1 ϕ ¯ ( x ) ¯ ξ (x ) E ; µ +2 , − ; k, k − 1 2 2 E ;1 E ;0 µ

− 2 q µ µ ¯ 12 k (¯ k − 1)( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ ( x ) ϕ E ; µ +2 , +; k, k 1 1 ¯ ( x ) ¯ ξ (x ) E ;1 E ; µ +2 , − ; k, k − 2 2 2 µ 2 E ;1

+ 4i q µ µ ¯ ( µ + ¯ k ) k ( µ + ¯ k + 1) ϕ 1 ¯ ( x ) ¯ ξ ( x ) ϕ2 ¯ ( x 2 ) ¯ ξ (x ) 2 E ; µ +2 , +; k, k − 1 1 E ;0 1 E ; µ +2 , − ; k, k E ; − 1 2 µ

+ 8 µ ¯1 µ k ( µ + ¯ k ) ϕ ¯ ( x ) ¯ ( ) ϕ ( 1 1 ξ x ( x ) ¯ ξ 2x 2 E ; µ +2 , +; k, k − E ;0 1 ¯ E ; µ +2 , − ; k, k − 1 22) E ;0 µ

− 4i q ¯ µ1 µ2 k (¯ k − 1)( µ + ¯ k ) ϕ ¯ ( x ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x2) 2 E ; µ +2 , +; k, k − 1 1 E ;0 E ; µ +2 , − ; k, k − 2 2 E ;1 µ

− 2 q ¯ µ1 µ2 k (¯ k − 1)( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ E ; µ +2 , +; k, k − 2 1 ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x2) 2 E ; − 1 E ; µ +2 , − ; k, k 2 E ; − 1 µ

+ 4i q ¯ µ1 µ2 k (¯ k − 1)( µ + ¯ k ) ϕ ¯ ( x ) ¯ ξ ( x ) 2 E ; µ +2 , +; k, k − 2 1 1 ϕ ¯ ( x ) ¯ ξ (x ) E ; − 1 E ; µ +2 , − ; k, k − 1 2 2 E ;0 µ

+ ¯ µ1 µ2 k 2

µ2 (¯ k − 1)ϕ ¯ (x ) ¯ ξ (x )ϕ ¯ (x ) ¯ ξ x ) { } E ; µ +2 , +; k, k − 2 1 1 E ; − 1 E ; µ +2 , − ; k, k − 2 2 ( 2 . (G.14) sumv E ;1

Second, we compute the respective terms in (G.14) as

I 2 µ 1 µ2 = ( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ ( x ) ϕ ¯ ( x ) ¯ E ; µ +2 , +; k, k 1 1 E ;1 E ; µ +2 , − ; k, k 2 ξ (x ) E ; − 2 µ 2 1

= 2 ∂ ¯ µ 1 ν 1 µ ∂ 2 ν 2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ ( x ) ¯ ξ ( 2 E ;1 E ; − 1 ν E ; µ +2 , +; k, k − 1 1 2 x 2 ) ϕ ¯ (x ) ν E ; µ +2 , − ; k, k − 1 2 E ; − 1 ;1 µ ∂x 1 E ∂x 2 1 2

+ 2i µ ¯1 ν ∂ 1 µ2 ξ ( x E ;1 1 ) ¯ ξ ( x ) ϕ E ;0 1 ¯ ( x ) ¯ ξ (x2)ϕ ¯(x ) ν E ; µ +2 , +; k, k 1 ; − 1 µ ∂x 1 E E ; µ +2 , − ; k, k 2 1

+ ¯ µ 1 µ2 ξ ( x ) ϕ ¯ ( x ξ (x ) E;1 1 E;µ+2,+;k,k 1 ) ¯ϕ ¯ (x ), (G.15) {v1}

E;−1 2 E;µ+2,−;k,k 2

and

II 4i q¯ µ1 µ2 = − ( µ + ¯ k ) k ( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x2 ) 2 E ; µ +2 , +; k, k 1 E ;1 E ; µ +2 , − ; k, k − 1 2 E ;0 µ

= 4 ¯ µ ∂ 1 ν 1 µ ∂ 2 ν 2 − ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ 2 E ;1 E ; − 1 − ( x ξ x ) ¯ ( ) ν E ; µ +2 , +; k, k 1 1 ) ¯ ( 2 ξ x 2 ϕ ¯ (x ) E ;0 E ;0 − ν E ; µ +2 , ; k, k − 1 2 µ ∂x 1 ∂x 2 1 2

− 2i µ ν ∂ ¯ 1 1 µ2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x )ϕ ¯ (x ), (G.16) {v2} E ;1 E ; − 1 ν E ; µ +2 , +; k, k − 1 1 2 , − ; 1 E ;0 E ; µ +2 k, k − 1 2 µ ∂x 1



75

and

III 2 q ¯ µ1 µ2 = − k (¯ k − 1)( µ + ¯ k )( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ξ 2 E ; µ +2 , +; k, k 1 ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x2) E ;1 E ; µ +2 , − ; k, k − 2 2 E ;1 µ

= 2 µ ¯ ξ1 ν ∂ 1 µ ∂ ( x ) ¯ ξ ( x ϕ ¯ ( x ) ¯ E ;1 1 ) ξ 2 ν ( x ) ¯ ξ 2 ( x ) ϕ ¯ x2), 2 E ;1 2 ( E ; − 1 1 ν 1 E ; µ +2 , +; k, k − 1 1 E ; − 1 2 ν − 2 E ; µ +2 , ; k, k − 1 µ ∂x ∂x 1 2

(G.17) {v3}

and

IV 4i q ¯ µ1 µ2 = ( µ + ¯ k ) k ( µ + ¯ k + 1) ϕ ¯ ( x ) ¯ ( ) ϕ 1 1 ξ x 1 ¯ ( x ) ¯ ξ (x ) 2 E ; µ +2 , +; k, k − E ;0 E ; µ +2 , − ; k, k 2 2 E ; − 1 µ

= 4 ¯ µ1 ν ∂ 1 µ ∂ 2 ν 2 − ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ 2 E ;0 E ;0 ν E ; µ +2 , +; k, k − ( x 1 1 ) ¯ ξ ( x 2 ) ¯ ξ ( x 2 ) ϕ E ; − 1 E ;1 − ¯ (x ) ν E ; µ +2 , ; k, k − 1 2 µ ∂x 1 ∂x 2 1 2

− 2i µ ∂ ¯ 1 ν 1 µ2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x )ϕ ¯(x ), (G.18) {v4} E ;0 E ;1 ν E ; µ +2 , +; k, k 1 E ; − 2 1 E ; µ +2 , − ; k, k 2 µ ∂x 1 1

and

V 8 ¯ µ1 µ2 = k ( µ + ¯ k ) ϕ ¯ ( x ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x ) 2 E ; µ +2 , +; k, k − 1 1 E ;0 E ; µ +2 , − ; k, k − 1 2 2 E ;0 µ

= 8 ∂ ∂ ¯ µ 1 ν 1 µ 2 ν 2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x 1 ) ¯ ξ ( x 2 ) ¯ ξ ( x 2 ) ϕ ¯ (x2) 2 E ;0 E ;0 ν E ; µ +2 , +; k, k − 1 ∂x 1 E ;0 E ;0 ν E ; µ +2 , − ; k, k − 1 µ ∂x 2 1 2

− µ1 µ2 2 ¯ ξ ( x 1 ¯ ) ϕ ( x ) ¯ ξ (x )ϕ E 1 ;0 E ; µ +2 , +; k, k − 1 2 E ;0 E;µ+2,− ¯ ( ; x ), (G.19) {v5} k,

k−1 2

and

V I 4i q µ µ ¯2 = − k (¯ k − 1)( µ + ¯ k ) ϕ ¯ ( x ) ¯ ξ 1 ( x ) ϕ ¯ ( x ) ¯ ξ 2 E ; µ +2 , +; k, k − 1 1 1 E ;0 E ; µ +2 , − ; k, k − 2 2 (x2) E ;1 µ

= 4 µ ¯1 ν ∂ 1 µ2 ν ∂ 2 − ξ ( x ) ¯ ( x ) E ;0 1 ξ ϕ ;0 1 ¯ ( x ) ¯ ξ ( x ) ¯ ξ ( x ) ν ; µ +2 , +; k, k − 1 1 E ;1 2 E ; − 1 2 ϕ ¯ (x ) E ; µ +2 , − ; k, k − 1 2 ν µ 2 E ∂x 1 E ∂x 2 1 2

+ 2i ∂ ¯ µ 1 ν 1 µ2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x )ϕ E ;0 E ; − 1 ν E ; µ +2 , +; k, k − 2 1 2 E ;1E;µ+2,− ¯ (x ), (G.20) {v6} ; k, k − 2 2 µ ∂x 1 1

and

V II 2 q µ ¯ = − k (¯ k − 1)( µ + ¯ k )( µ + ¯ k + 1) ϕ1 µ ¯ ( x ) ¯ ξ ( x ) ϕ ¯ ( x2 µ 2 E ; µ +2 , +; k, k − 2 1 E ; − 1 1 2 ) ¯ ξ (x ) E ; µ +2 , − ; k, k E ; − 1 2

= 2 µ ν ∂ ¯ 1 1 µ ∂ 2 ν 2 ξ ( x ) ¯ ξ ( x ) ϕ ¯ ( x ) ¯ ξ ( x ) ¯ ξ ( x ) ϕ ¯ (x ), E ; 1 1 ;1 1 µ 2 − E ν E ; µ +2 , +; k, k − 1 1 E ; − 1 2 ;1 2 ∂x 1 E ν E ; µ +2 , − ; k, k − 1 2 ∂x 2 1 2

(G.21) {v7}

and

V III 4i q ¯ µ1 µ2 = k (¯ k − 1)( µ + ¯ k ) ϕ ¯ ( x ) ¯ ξ ( x ϕ 2 E ; µ +2 , +; k, k − 2 1 1 ) , − ¯ ( x ) ¯ ξ (x ) E ; − 1 E ; µ +2 ; k, k − 1 2 2 E ;0 µ

= 4 µ ν ∂ ¯ 1 µ ν ∂ − ξ 1 ( x 1 ) ¯ ξ ( x 2 1 ) ϕ ¯ ( x 1 ) ¯ ξ ( x 2 ) ¯ ξ 2 ( x 2 ) ϕ ¯ (x ) 2 E ; − 1 E ;1 ν E ; µ +2 , +; k, k − 1 E ;0 ν E ; µ +2 , − ; k, k − 1 2 ;0 µ ∂x 1 E ∂x 2 1 2

+ 2i ¯ µ1 ν ∂ 1 µ2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ E ; − 1 E ;1 ν E ; µ +2 , +; k, k − 1 1 (x2)ϕ ¯ (x ), E ;0 E ; µ +2 , − ; k, k − 1 2 µ ∂x 1 1

(G.22) {v8}

76

and

IX 2 µ µ ¯ 12 = k (¯ k − 1) ϕ ¯ ( x ) ¯ ξ ( x ) ϕ − ¯ ( x 2 E ; µ +2 , +; k, k − 2 1 1 2 ) ¯ ξ (x2) E ; − 1 E ; µ +2 , ; k, k − 2 E ;1 µ

= 2 µ ∂ ¯ 1 ν 1 µ ν ∂ ξ ( x ) ¯ ξ ( x ) x 2 2 1 ) ¯ ξ ( x ) ¯ ξ ϕ E ;1 2 ( x ) ¯ (x ) E ; − 1 1 1 ϕ ¯ ( +2 , k, k 1 µ 2 E ;1 ν µ − ∂x 1 E ; +; E ; − 1 2 ν E ; +2 , − ; k, k 1 2 ∂x 2 µ − 1 2

− 2 i ∂ ¯ µ 1 ν 1 µ2 ξ ( x 1 ) ¯ ξ ( x 1 ) ϕ ¯ ( x ) ¯ ξ (x2)ϕ ¯ (x ) E ; − 1 E ;0 ν E ; µ +2 , +; k, k − 2 1 ; µ +2 , − ; ∂x 1 E ;1 E k, k − 2 2 µ 1

+ ¯ µ1 µ2 ξ ( x ) ϕ ¯ ) ¯ ( ϕ E 2 ; − 1 ( 1 x ξ x ) E ;µ+2,+;k,k −2 1 ¯ (x ), (G.23) {v9} E ;1 E;µ+2,−;k,k−2 2

where we have used (D.19), (D.22). Third, by applying the respective terms (G.15), (G.16),

(G.17), (G.18), (G.19), (G.20), (G.21), (G.22), (G.23) to (G.14), we get the final expression of the sum rule as

+∞

X µ1 µ2 f ( x ¯ 1 ) f (x )

E ¯ 2 ;+ ,v ; k, k E ; − ,v ; k, k

k, ¯ k=0

= 1 µ 1 ν 1 µ 1 ν 1 µ 1 ν 1 2 ¯ ξ ( x ) ¯ ( ) − ξ x ) ¯ ( ) + 2 ¯ ξ ( E ;1 1 ξ x 4 ¯ ( ξ x E ; − 1 1 E ;0 1 E ;0 1 x 1 ) ¯ ξ ( x ) E ; − 1 2 µ 2 E ;1 1

µ 2 ν 2 µ 2 ν µ ∂ ∂

· 2 2 ν 2 2 ¯ ξ ( x 2 ) ¯ ξ ( x 2 ) − 4 ¯ ξ ( x 2 ) ¯ ξ ( x 2 ) + 2 ¯ ξ ( x 2 ) ¯ ξ (x2 ) G 1 ) x E;1 E;−1 E;0 E;0 E;−1 E;1 E;µ+2 ( x ; ∂x ν 2 1

∂x ν2

1 2





i


− ¯ µ 1 ν1 µ1 ν1 ¯ − ξ x ξ x ξ x ξ x ξ x 4 µ 2 ( 1 ) ¯ ( 1 ) + ¯ ( 1 ) ¯ ( 1 ) ( 2 )

2 E;1 E;0 E;0 E;1 E;−1 µ

− µ ¯ 1 ν1 µ1 ν1 µ ¯ − ξ x ξ x ξ x ξ x ξ x 4 2 ( 1 ) ¯ ( 1 ) + ¯ ( 1 ) ¯ ( 1 ) ( 2 )

E;1 E;−1 E;−1 E;1 E;0

∂

+ 4 µ ν µ µ ¯ − ξ 1 1 ν 1 ¯ ( x ) ¯ ξ ( x ) + ¯ ξ ξ ( x ) ( ) E;0 1 ( x ) ¯ ξ x E;−1 1 E;−1 1 E;0 1 E;1 2 E;µ+2 ( Gx ; x ) 1 2

∂x ν 1 2 1

1

+ 1 µ 1 ν 2 µ 1 µ 2 µ 1 µ 2 2 ¯ ξ ( x 1 ) ¯ ξ ( x 2 ) − 4 ¯ ξ ( x 1 ) ¯ ξ ( x 2 ) + 2 ¯ ξ ( x 1 ) ¯ ξ ( x 2 )GE;µ+2(x ; x2) E ;1 E ; − 1 E ;0 E ;0 E ; − 1 1 E ;1 2

= 1 i (1) µ (2) µ µ ∂ 1 ν ρ 1 1 ; µ 2 ∇ 1 ∇ 2 G G E ; µ +2 ( x 1 ; x 2 ) − ˜ ( x 1 ) ( x ; x GE;µ+2(x E ; ρ E 1 2 )1; x2) 2 2 µ 2 µ 1 ν ∂x 1 1

+ G (x x ) (G.24) E 1 ; x 2 ) G E ; µ +2 ( x 1 ; 2 , 2 1 µ1;µ2

where we have used (7.4), (7.7), (C.13).



77

H Solving the modes directly

We represent the equations of motion as

5 2 r + 1 1

0 =( 2 2 t t 2 t 2 t r + 1) ∂ A + ∂ r r A + ∂ A + ( − µ + 4) A

r 2 φ r

1 2 r − 1 1

+ r r φ ∂ t r t + ∂ A − ∂ A ∂ t φ (H.1) ∂ A

r 2 2 2 2 + 1 r ( r + 1) r + 1

0 = 2 1 1 t t 2 r 2 r 2 r − ( r + 1) ∂ t ∂ r A − 2 r∂ t A − ∂ A + ∂ A − µ A 2 t 2 φ r + 1 r

2( 2 r + 1)

− 2 φ φ ( r + 1) ∂ ∂ A − ∂ A (H.2)

r φ φ r

0 = 1 1 1 t r r − ∂ t ∂ − φ A ∂ r ∂ φ A + ∂ φ A 2 2 3 r r r

1 2 5 r + 3

− 2 φ 2 2 φ φ 2 φ ∂ A + ( r + 1) ∂ A + ∂ r + ( A − µ + 4) A. (H.3)

r 2 t r + 1 r

We consider the configuration

( t r φ −iωt imφ t r φ A , A , A ) = e e ( A ( r ) , A ( r ) , A(r)). (H.4) e e e

Applying into the equations of motion, we get

0 =( 2 5 2 2 r + 1 m 2 t t 2 t r + 1) ∂ A e + ∂ A e + − r r + ( − µ + 4) A e 2 r r

1 2 r − 1 mω

− r r φ iw ∂ r e e e { A + iω A + A (H.5)e1}

r 2 2 2 2 + 1 r ( r + 1) r + 1

0 = 2 2 2 ω m t t 2 r iω ( r + 1) ∂ r A e + 2 iωr A e + − − µ A e 2 2 r + 1 r

r 2 + 1

− 2 φ φ im ( r + 1) ∂ r e 2 A − im A (H.6) { } e e2

r

0 = mω im im t r r − A e − ∂ r A e + A e 2 2 3 r r r

+ ( 2 5 2 2 r + 3 ω 2 φ φ 2 φ r + 1) ∂ A e + ∂ A e r r + + ( − µ + 4) A e. (H.7) {e3} 2 r r + 1

The boundary conditions at r = 0 is

At 0 = O ( r) Ar 0 = O ( r) Aφ −1 = O ( r) (H.8)

We compute

∂ 1

( H.6) − iω · (H.5) + im · (H.7) + · (H.6). (H.9)

∂r r

And we get

µ2

0 = 2 t 2 r r 2 φ iµ ω A − µ ∂ − A A − iµ m A (H.10) { } e e e e r e4

r

78

We solve t A from (H.10) as

e

At 1 1 1 m r r φ = e − i ∂ − r A e i A e + A e (H.11) {Ats} ω ω r ω

By applying (H.11) to (H.6) (H.7), we get

0 =( 2 1 2 2 ω m + 1 1 2 r r 2 r φ r + 1) ∂ A e + (3 r + ) ∂ A 1 − + r r e + µ − A e − 2 im A e (H.12) {e2r} 2 2 r r + 1 r r

0 = 2im 3 2 2 ω m r 2 2 φ φ 2 φ A e + ( r + 1) ∂ A e + (5 r + ) ∂ r A e + − µ + 4 + − A e (H.13) {e3r} 3 r 2 2 r r r + 1 r

We now introduce

Φ i 1 r φ = r A e + r A e 2 2

Φ i 1 r φ − l = A e r A e (H.14) 2 2

We can rewrite the differential equation as

( 2 1 2 2 ω ( m − 1) 2 2 r + 1) ∂ Φ r + ) ∂ r r + (3 r Φ r + 1 − µ + −Φr = 0 2 2 r r + 1 r

( 2 1 2 2 ω ( m + 1) 2 2 r + 1) ∂ Φ + (3 r + ∂ Φ r l ) r l + 1 − µ + −Φl = 0 (H.15) 2 2 r r + 1 r

We can read out the asymptotic boundary conditions of Φr and Φl as

Φ −1 r = o ( r) Φ −1 = o ( r) (H.16)

l

at r = ∞, and

Φ 0 r = O ( r) Φ 0 = O ( r) (H.17)

l

at r = 0. We can rewrite

t 1 m − 1 1 1 m + 1 1

A e = − ∂ − r Φ r + Φ r ∂rΦ − l Φl

ω ω r ω ω r

Ar = −iΦ − iΦ

e r l

φ 1 1

A e = Φ − r Φl (H.18)

r r

We now solve Φ r and Φl. We can solve

Φ |m−1| 2 (−µ−1−|m−1|) 2 r 1 1 + µ + | m − 1 | − ω 1 + µ + | m − 1 | + ω 1 =C er,1r (r + 1) 2 F1 , ; 1 + µ; 2 2

2 r + 1

+ |m−1| 2 (µ−1−|m−1|) 2 C 1 1 − µ + | m − 1 | − ω 1 − µ + | m − 1 | + ω 1

er,2 r (r + 1) 2 1 2 F , ; 1 − µ ;

2 2 r + 1

Φ |m+1| 2 (−µ−1−|m+1|) 2 l 1 1 + µ + | m + 1 | − ω 1 + µ + | m + 1 | + ω 1 =C el,1r (r + 1) 2F1 , ; 1 + µ; 2 r 2 2 + 1

+ |m+1| 2 (µ−1−|m+1|) 2 C 1 1 − µ + | m + 1 | − ω 1 − µ + | m + 1 | + ω 1 el,2 r (r + 1) 2 1 ; 1 F , − µ;

2 2 2 r + 1

(H.19)

79

We now write the solutions of ( t r φ A , A , A).

• The first set: The frequency is

ω = µ + 1 + |m − 1| + 2n, (H.20)

and solution is

1

A t 2 C ( µ + m ) r + ( m − 1) − | m − 1 |

e r µ + 1 + |m − 1| + 2n =

· | 1 2 − m − 1 |− 1 1 2 ( − µ − 3 −| m − 1 | ) ( µ, | m − 1 | r ) r ( r + 1) 2 P n 2 r + 1

− | 1 2 r − 1 m − 1 | +1 2 ( − µ − 5 −| m − 1 | ) ( µ, | m − 1 | ) 0 4 r ( r + 1) 2 P n 2 r + 1

Ar 1 2 r − 1 | m − 1 | 2 ( − µ − 1 −| m − 1 | ) ( µ, | m − 1 | ) = e − iC 2 r r ( r + 1) P n r 2 + 1

A φ 1 2 r − 1 | m − 1 |− 1 2 ( − µ − 1 −| m − 1 | ) ( µ, | m − 1 | ) = e C r r ( r + 1) 2 P, (H.21) n 2 r + 1

for n = 0, 1, 2, ....

• The second set: The frequency is

ω = µ + 1 + |m + 1| + 2n, (H.22)

and the solution is

1

A t 2 C ( µ − m ) r − ( m + 1) + | m + 1 |

e l µ + 1 + |m + 1| + 2n =

· | 1 2 r − 1 m +1 |− 1 2 ( − µ − 3 −| m +1 | ) ( µ, | m +1 | ) r ( r + 1) 2 P n 2 r + 1

− | | 1 2 r − m +1 | +1 2 ( − µ − 5 −| m +1 | ) ( µ, | ) 0 1 m +1 4 r ( r + 1) 2 P n 2 r + 1

Ar 1 2 r | m +1 | 2 ( − µ − − 1 1 −| m +1 | ) ( µ, | m +1 | ) = e − iC l r ( r + 1) 2 P n 2 r + 1

A φ 1 2 r − 1 | m +1 |− 1 2 ( − µ − 1 −| m +1 | ) ( µ, | m +1 | ) = e − C l r ( r + 1) 2 P, (H.23) n r 2 + 1

for n = 0, 1, 2, ....

H.1 Symplectic form

We compute the symplectic form a f

b



80

δ2A (+) (+) (+) (+) (+) (+)

h h h h h h + ,m 0 =0 ,n 0 − ,m 0 =0 ,n 0 + ,m 0 ≥ 1 ,n 0 − ,m 0 ≥ 1 ,n 0 + ,m 0 ≤− 1 ,n 0 −,m0≤−1,n0

δ 1A

h(+) 0 0 0 0 0 0

+,m=0,n

h(+) 0 0 0 0 0 0

−,m=0,n

h(+) 0 0 0 0 0 0

+,m≥1,n

h(+) 0 0 0 0 0 0

−,m≥1,n

h(+) 0 0 0 0 0 0

+,m≤−1,n

h(+) 0 0 0 0 0 0

−,m≤−1,n

Table 1: sΩ[ (+) δ 1 2 ] = Ω[ A, δ A h

a {tab:1}

I Hypergeometric functions

2 1 F(α, β; α + β; z)

Γ( +∞ α + β ) X n α β

= − n n (1 − z ) ψ (α + n ) + ψ (β + n ) − 2ψ (1 + n ) + log(1 − z

Γ(α)Γ(β) (n!) n2 ) =0

Γ( α + β)

= − 2 F1(α, β; 1; 1 − z) log(1 − z)

Γ(α)Γ(β)

Γ( +∞ α + β ) X n α β

− n n (1 − z ) ψ(α + n) + ψ(β + n) − 2ψ(1 + n) , (I.1)

Γ(α)Γ(β) (n!) n2 {trans1}

=0

and

2 1 F(α, β; α + β − m; z)

Γ( m−1 m )Γ( α + β − m ) (α − m) (β − m)

= − X m n n n (1 − z ) (1 − z )

Γ(α)Γ(β) n!(1 − m)n n =0

Γ( +∞ α + β − m ) X α β

+ ( m n +1 n n − 1) (1 − z )

Γ( α − m)Γ(β − m) n!(m + n)! n =0

· ψ(α + n) + ψ(β + n) − ψ(1 + m + n) − ψ(1 + n) + log(1 − z)

Γ( m−1 m )Γ( α + β − m ) − X m n ( α − m) m ( β −)n

= n (1 − z ) (1 − z )

Γ(α)Γ(β) n!(1 − m)n n =0

+ ( m Γ(α + β − m) +1 − 1) 2F1(α, β; m + 1; 1 − z) log(1 − z) Γ( α − m )Γ( β − m )

Γ( +∞ α + β − m ) α β

+ ( m X +1 n n n − 1) (1 − z )

Γ( α − m)Γ(β − m) n!(m + n)! n =0

· ψ(α + n) + ψ(β + n) − ψ(1 + m + n) − ψ(1 + n) , (I.2) {trans2}

81





and


2 1 F(α, β; α + β + m; z)

Γ( m−1 m )Γ( α + β + m ) α β

= X n n n (1 − z )

Γ(α + m)Γ(β + m) n!(1 − m) n n =0

Γ( +∞ α + β + m ) (α + m) (β + m)

+ ( m X +1 m n n n − 1) (1 − z ) (1 − z )

Γ( α)Γ(β) n!(m + n)! n =0

· ψ(α + m + n) + ψ(β + m + n) − ψ(1 + m + n) − ψ(1 + n) + log(1 − z) Γ( m−1 m )Γ( α + β + m ) α β

= X n n n (1 − z )

Γ(α + m)Γ(β + m) n!(1 − m) n n =0

+ ( m Γ(α + β + m) +1 m − 1) (1 − z ) 2F1(α + m, β + m; m + n + 1; 1 − z) log(1 − z) Γ( α )Γ( β )

Γ( +∞ α + β + m ) (α + m) (β + m)

+ ( m X +1 m n n n − 1) (1 − z ) (1 − z )

Γ( α)Γ(β) n!(m + n)! n =0

· ψ(α + m + n) + ψ(β + m + n) − ψ(1 + m + n) − ψ(1 + n) , (I.3) {trans3}

where m = 1, 2, 3, ... in (I.2) and (I.3).



References

[1] B. S. DeWitt, “Quantum Theory of Gravity. 1. The Canonical Theory,” Phys. Rev. 160

(1967), 1113-1148 doi:10.1103/PhysRev.160.1113

[2] E. Witten, “A note on the canonical formalism for gravity,” Adv. Theor. Math. Phys. 27

(2023) no.1, 311-380 doi:10.4310/ATMP.2023.v27.n1.a6 [arXiv:2212.08270 [hep-th]].

[3] S. Colin-Ellerin, G. Lin and G. Penington, “Generalized entropy of gravitational fluctua-

tions,” JHEP 09 (2025), 091 doi:10.1007/JHEP09(2025)091 [arXiv:2501.08308 [hep-th]].

[4] P. A. M. Dirac, “Lectures on quantum mechanics.”

[5] M. Henneaux and C. Teitelboim, “Quantization of gauge systems.”

[6] A. J. Hanson, T. Regge and C. Teitelboim, “Constrained Hamiltonian Systems,” Ac-

cademia Nazionale dei Lincei, 1976, RX-748.

[7] S. Giombi, A. Maloney and X. Yin, “One-loop Partition Functions of 3D Gravity,” JHEP

08 (2008), 007 doi:10.1088/1126-6708/2008/08/007 [arXiv:0804.1773 [hep-th]].



82





[8] E. D’Hoker, D. Z. Freedman, S. D. Mathur, A. Matusis and L. Rastelli, “Gravi-


ton and gauge boson propagators in AdS(d+1),” Nucl. Phys. B 562 (1999), 330-352 doi:10.1016/S0550-3213(99)00524-6 [arXiv:hep-th/9902042 [hep-th]].

[9] E. Witten, “Interacting Field Theory of Open Superstrings,” Nucl. Phys. B 276 (1986),

291-324 doi:10.1016/0550-3213(86)90298-1

[10] G. J. Zuckerman, “ACTION PRINCIPLES AND GLOBAL GEOMETRY,” Conf. Proc.

C 8607214 (1986), 259-284 Print-89-0321 (YALE).

[11] C. Crnkovic and E. Witten, “COVARIANT DESCRIPTION OF CANONICAL FOR-

MALISM IN GEOMETRICAL THEORIES,” Print-86-1309 (PRINCETON).

[12] J. Lee and R. M. Wald, “Local symmetries and constraints,” J. Math. Phys. 31 (1990),

725-743 doi:10.1063/1.528801

[13] V. Iyer and R. M. Wald, “Some properties of Noether charge and a proposal for dynam-

ical black hole entropy,” Phys. Rev. D 50 (1994), 846-864 doi:10.1103/PhysRevD.50.846 [arXiv:gr-qc/9403028 [gr-qc]].

[14] D. Harlow and J. Q. Wu, “Covariant phase space with boundaries,” JHEP 10 (2020), 146

doi:10.1007/JHEP10(2020)146 [arXiv:1906.08616 [hep-th]].

[15] Z. Feng, Z. e. Gao, X. S. Wang, J. q. Wu, H. Zhang, “Applying Noether’s theorem to the

pure AdS 3 gravity,” in preparation.

[16] J. M. Maldacena and A. Strominger, “AdS(3) black holes and a stringy exclusion prin-

ciple,” JHEP 12 (1998), 005 doi:10.1088/1126-6708/1998/12/005 [arXiv:hep-th/9804085 [hep-th]].

[17] W. Li, W. Song and A. Strominger, “Chiral Gravity in Three Dimensions,” JHEP 04

(2008), 082 doi:10.1088/1126-6708/2008/04/082 [arXiv:0801.4566 [hep-th]].

[18] A. L. Fitzpatrick, E. Katz, D. Poland and D. Simmons-Duffin, “Effective Conformal Theo-

ry and the Flat-Space Limit of AdS,” JHEP 07 (2011), 023 doi:10.1007/JHEP07(2011)023 [arXiv:1007.2412 [hep-th]].

[19] B. Allen and T. Jacobson, “Vector Two Point Functions in Maximally Symmetric Spaces,”

Commun. Math. Phys. 103 (1986), 669 doi:10.1007/BF01211169

[20] D. Lopes, T. V. Fernandes and J. P. S. Lemos, “Normal modes of Proca fields in AdSd

spacetime,” Phys. Rev. D 109 (2024) no.6, 064041 doi:10.1103/PhysRevD.109.064041 [arXiv:2401.13030 [gr-qc]].

83





