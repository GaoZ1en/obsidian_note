# Canonical Quantization for the Free Massive Vector Field in the Global AdS3 Spacetime with the Covariant Phase Formalism

Zi- en Gao \(^{1,2}\) \\*Zi- qian Hu \(^{1,2}\) † Jin- dong Pan \(^{1,2}\) ‡ Xiao- Shuai Wang \(^{1,2}\) §Yu- ting Wen \(^{3}\) ‡ Jie- qiang Wu \(^{1,2}\) ‡

\(^{1}\) Institute of Theoretical Physics, Chinese Academy of Sciences, Beijing 100190, China \(^{2}\) School of Physical Sciences, University of Chinese Academy of Sciences, Beijing 100049, China \(^{3}\) School of Physics, Peking University, No.5 Yiheyuan Rd, Beijing 100871, China

### Abstract

In this paper, we take a canonical quantization for the free massive vector field in the global AdS3 spacetime with the covariant phase space formalism. Here, by taking use of the covariant phase space formalism, we simplify the canonical transformation step of the canonical quantization.

### 1 Introduction

How to take a canonical quantization for gravity is an important and long standing problem in physics [1]. And, benefiting from the AdS/CFT correspondence, it is more solid to study the canonical quantization for gravity in the asymptotic AdS spacetime [2]. Moreover, the recent interest in the gravitational fluctuation's contribution to the holographic entanglement entropy [3] provides more motivations to studying this problem.

It is believed that, by taking use of Dirac's canonical formalism for constrained systems [4- 6], one can take a canonical quantization for gravity at least perturbatively. However, for the momentum, there are only a few concrete results for the canonical quantization for gravity in the asymptotic AdS spacetime.

Here, by concrete results, we mean the results like: constructing the Hilbert space through a complete orthonormal basis, solving the eigenvalues and the eigenstates of the Hamiltonian, computing the amplitudes of diffeomorphism invariant operators,... 1

And the lack of concrete results may be from the technical difficulties. For example, it is very hard to compute the Dirac bracket, where one needs to take an inverse of an infinite dimensional matrix. For example, it is very hard to solve the equations of motion even perturbatively, where the different components of the field couple with each other.

Considering the current situation, it is therefore worthwhile to perform a concrete study for the canonical quantization for gravity in the asymptotic AdS spacetime.

In this paper, as a warm- up, we study the canonical quantization for a simpler model: the free massive vector field in the global AdS \(_3\) spacetime. 2 The model also shares the difficulties of constraints and different components' coupling. While, it has no gauge redundancies, which saves us from dealing with too many difficulties at the same time.

In dealing with the remaining difficulties, we take use of following tricks:

First, we take use of the covariant phase space formalism [9- 13] in the canonical transformation step of the canonical quantization. Here, the covariant phase space formalism is equivalent to and more convenient than Dirac's canonical formalism for constrained systems. 3

Second, we take use of the Killing symmetries and the corresponding Noether's theorem, in solving the differential equations and in computing the symplectic form. Here, we reorganize the modes into the highest weight representations of the Killing symmetries [16- 18]. And wedirectly read out the expression of the symplectic form through an argument based on the Killing symmetries.

As applications of the quantized theory, we compute the Euclidean correlation function and the thermal partition function. Our results are the same as the ones derived from other methods.

The plan for the rest of the paper is as follows. In section 2, we briefly review the covariant phase space formalism. In section 3, we introduce our model: the free massive vector field in the global AdS \(_3\) spacetime. In section 4, by taking use of the covariant phase space formalism, we reformulate the model to a Hamiltonian system. In section 5, by introducing a mode expansion, we represent the Hamiltonian system with a proper set of variables. In section 6, we take a canonical quantization for the Hamiltonian system. In section 7, we compute the Euclidean correlation function. In section 8, we compute the thermal partition function. In section 9, we finish with a conclusion and discussion.

### 2 A brief review for the covariant phase space formalism

{oscillator}

In this section, we briefly review the covariant phase space formalism. Here, we only introduce the relevant notions and statements, and we illustrate them with a simple example. We refer to [14, 15] for more details of the formalism and the proofs of the statements.

### 2.1 The formalism

We now introduce the covariant phase space formalism.

From a conceptual perspective, the covariant phase space formalism is a prescription that reformulates a Lagrangian system to a Hamiltonian system. Here, the Hamiltonian system is specified by two structures: the pre- phase space and the symplectic form. The pre- phase space is defined as the set of solutions of the equations of motion. And the symplectic form can be read out from the action.

We now introduce the covariant phase space formalism in more detail.

The starting point of the covariant phase space formalism is a Lagrangian system. As we know, a Lagrangian system is specified by: the fundamental fields \(\phi_{a}(x)\) , the Lagrangian density, and the action \(S\) which is an integral of the Lagrangian density in the region \(M\) sandwiched between an initial Cauchy surface \(\Sigma_{i}\) and a final Cauchy surface \(\Sigma_{f}\) . 4 In the framework of the covariant phase space formalism, one furthermore introduces the notion of the set of configurations, which is a set whose elements are the allowed configurations ofthe fundamental fields \(\phi_{a}(x)\) . And one then view the action \(S\) as a function of the set of configurations.

Starting from the Lagrangian system, the covariant phase space formalism can be used to reformulate it to a Hamiltonian system. The prescription is the following: One first takes a variation of the action

\[\\delta S = \\int_{M}d^{d}x E^{a}[\\phi ;x]\\delta \\phi_{a}(x) + \\theta [\\phi ;\\delta \\phi ]|_{\\Sigma_{f}} - \\theta [\\phi ,\\delta \\phi ]|_{\\Sigma_{i}}, \\quad (2.1)\]

where one keeps the terms at the initial Cauchy surface \(\Sigma_{i}\) and the final Cauchy surface \(\Sigma_{f}\) . From the expression of the variation of the action (2.1), one reads out the equations of motionAnd one reads out the symplectic potentialwhich is a one- form field of the set of configurations. Then, one defines the pre- phase space \(\widetilde{\mathcal{P}}\) as the set of solutions of the equations of motion (2.2). One defines the symplectic form \(\Omega\) as the exterior derivative of the symplectic potential \(\theta\) in the set of configuration aswhich is a two- form field of the set of configurations. And, by taking a pull back of the symplectic form \(\Omega\) from the set of configurations to the pre- phase space \(\widetilde{\mathcal{P}}\) , one defines the symplectic form of the pre- phase space \(\Omega |_{\widetilde{\mathcal{P}}}\) , which is time independentThe pre- phase space \(\widetilde{\mathcal{P}}\) and the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) together specify a Hamiltonian system.

\[E^{a}[\\phi ;x] = 0. \\quad (2.2)\]

\[\\theta \\equiv \\theta [\\phi ;\\delta \\phi ]|_{\\Sigma}, \\quad (2.3)\]

\[\\Omega = \\delta \\theta , \\quad (2.4)\]

\[\\Omega |_{\\Sigma_{f},\\widetilde{\\mathcal{P}}} = \\Omega |_{\\Sigma_{i},\\widetilde{\\mathcal{P}}}. \\quad (2.5)\]

The Hamiltonian system constructed from the covariant phase space formalism can also be represented in the canonical formalism, where a Hamiltonian system is specified by the physical phase space and the bracket. For the application of the current paper, we only consider the system with no gauge redundancies, where the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) is non- degenerate. \(^{5}\) For such a system, the physical phase space is exactly the pre- phase space, where we also denote the physical phase space by \(\widetilde{\mathcal{P}}\) . And the bracket can be represented in terms of the symplectic form. Specifically, given two observables \(f\) and \(g\) which are functions of the physical phase space, their bracket can be represented aswhere \(X_{f}\) and \(X_{g}\) are determined from \(f\) and \(g\) through the Hamiltonian equation asAssociated with the covariant phase space formalism, there is a widely discussed topic: the Noether's theorem. We now introduce the Noether's theorem.

\[\\{f,g\\} |_{\\widetilde{\\mathcal{P}}} = -X_{f}\\cdot \\delta g|_{\\widetilde{\\mathcal{P}}} = X_{g}\\cdot \\delta f|_{\\widetilde{\\mathcal{P}}}, \\quad (2.6)\]

\[\\begin{array}{l}{{X_{f}\\cdot\\Omega|_{\\widetilde{\\mathcal{P}}}=-\\delta f|_{\\widetilde{\\mathcal{P}}}}}\\end{array} \\quad (2.7)\]

As we know, the Noether's theorem is in terms of the symmetries and the conserved charges. In the framework of the covariant phase space formalism, a symmetry is represented as a vector field in the set of configurationswhere \(\Delta_{\lambda}\phi_{a}(x)\) denotes the infinitesimal symmetry transformation of the field \(\phi_{a}(x)\) . And the requirement of the symmetry is that the transformation of the action only contains terms at the initial Cauchy surface \(\Sigma_{i}\) and the final Cauchy surface \(\Sigma_{f}\) as \(^{6}\)

\[X_{\\lambda} = \\int d^{d}x\\Big(\\Delta_{\\lambda}\\phi_{a}(x)\\frac{\\delta}{\\delta\\phi_{a}(x)}\\Big), \\quad (2.8)\]

\[X_{\\lambda}\\cdot \\delta S = \\alpha_{\\lambda}|\\Sigma_{f} - \\alpha_{\\lambda}|\\Sigma_{i}. \\quad (2.9)\]

Under such a setup, the corresponding Noether charge is

\[Q_{\\lambda} = X_{\\lambda}\\cdot \\theta -\\alpha_{\\lambda}. \\quad (2.10)\]

And the Noether's theorem is the following three statements:

(1) The Noether charge is time independent under the on-shell conditionHere, in the subscript of the expression (2.11), \(\Sigma_{i}\) and \(\Sigma_{f}\) denote evaluating \(Q_{\lambda}\) on the corresponding Cauchy surfaces, and \(\widetilde{\mathcal{P}}\) denotes evaluating \(Q_{\lambda}\) at the pre- phase space, namely under the on- shell condition.

\[Q_{\\lambda}|_{\\Sigma_{f},\\widetilde{\\mathcal{P}}} = Q_{\\lambda}|_{\\Sigma_{i},\\widetilde{\\mathcal{P}}}. \\quad (2.11)\]

(2) The vector field \(X_{\lambda}\) is tangent to the pre-phase space \(\widetilde{\mathcal{P}}\) . Namely, the symmetry \(X_{\lambda}\) maps a solution to a solution.

(3) The symmetry \(X_{\lambda}\) and the Noether charge \(Q_{\lambda}\) together satisfy the Hamiltonian equation 7Moreover, for the system with no gauge redundancies, the Hamiltonian equation (2.12) can be represented in the canonical formalism aswhere one can derive (2.13) by (2.6), (2.8), (2.12).

\[X_{\\lambda}\\cdot \\Omega |_{\\widetilde{\\mathcal{P}}} = -\\delta Q_{\\lambda}|_{\\widetilde{\\mathcal{P}}}. \\quad (2.12)\]

\[\\{Q_{\\lambda},\\phi_{a}(x)\\} |_{\\widetilde{\\mathcal{P}}} = -\\Delta_{\\lambda}\\phi_{a}(x)|_{\\widetilde{\\mathcal{P}}}, \\quad (2.13)\]

### 2.2 A simple example: the oscillator

So far, we have introduced the covariant phase space formalism. We now illustrate the formalism with a simple example: the oscillator.

The oscillator is defined by the following actionWe now apply the oscillator (2.14) to the covariant phase space formalism. Following the prescription, we first take a variation of the actionFrom the variation of the action (2.15), we read out the equations of motionAnd we read out the symplectic potentialThen, by solving the equations of motion (2.16), we get the general solutionHere, we view \((a,a^{*})\) as a set of variables that parameterizes of the pre- phase space \(\widetilde{\mathcal{P}}\) . By taking an exterior derivative for the symplectic potential (2.17) in the set of configurations, we get the symplectic formAnd, by applying the general solution (2.18) to the symplectic form (2.19), we get the symplectic form of the pre- phasewhich is indeed time independent. So far, we have reformulated the oscillator to a Hamiltonian system, which is specified by the set of variables \((a,a^{*})\) , the general solution (2.18), and the symplectic form (2.20).

\[S = \\int_{t_{i}}^{t_{f}}dt\\Big(\\frac{1}{2} m\\dot{x}^{2} - \\frac{1}{2} m\\omega^{2}x^{2}\\Big). \\quad (2.14)\]

\[\\delta S = \\int_{t_{i}}^{t_{f}}dt\\Big(-m(\\dot{x} +\\omega^{2}x)\\Big)\\delta x + m\\dot{x}\\delta x\\Big|_{t = t_{f}} - m\\dot{x}\\delta x\\Big|_{t = t_{i}}. \\quad (2.15)\]

\[\\ddot{x} +\\omega^{2}x = 0, \\quad (2.16)\]

\[\\theta = m\\dot{x}\\delta x. \\quad (2.17)\]

\[x(t)|_{\\widetilde{\\mathcal{P}}} = \\frac{1}{\\sqrt{2m\\omega}} (e^{-i\\omega t}a + e^{i\\omega t}a^{*}). \\quad (2.18)\]

\[\\Omega = m\\delta_{1}\\dot{x}\\delta_{2}x - m\\delta_{1}x\\delta_{2}\\dot{x}. \\quad (2.19)\]

\[\\Omega |_{\\widetilde{\\mathcal{P}}} = -i\\delta_{1}a\\delta_{2}a^{*} + i\\delta_{1}a^{*}\\delta_{2}a, \\quad (2.20)\]

We now study the Noether's theorem for the time shift symmetry. Specifically, we represent the time shift symmetry aswhich is a vector field of the set of configurations. By applying the time shift symmetry (2.21) to the action (2.14), we get

\[X_{t} = \\int d t\\Big[\\dot{x} (t)\\frac{\\delta}{\\delta x(t)}\\Big], \\quad (2.21)\]

\[X_{t}\\cdot \\delta S = \\Big(\\frac{1}{2} m\\dot{x}^{2} - \\frac{1}{2} m\\omega^{2}x^{2}\\Big)\\Big|_{t = t_{f}} - \\Big(\\frac{1}{2} m\\dot{x}^{2} - \\frac{1}{2} m\\omega^{2}x^{2}\\Big)\\Big|_{t = t_{i}}. \\quad (2.22)\]

From the expression (2.22), we verify that the time shift symmetry (2.21) is indeed a symmetry in the sense of the Noether's theorem. And we read out the expression of the corresponding \(\alpha_{t}\) asBy applying (2.17), (2.21), (2.23) to (2.10), we get the expression of the Noether charge asAnd, by applying the general solution (2.18) to the expression of the Noether charge (2.24), we get the expression of the Noether charge at the pre- phase space \(\widetilde{\mathcal{P}}\) asWe now provide some cross checks for the Noether's theorem:

\[\\alpha_{t} = \\frac{1}{2} m\\dot{x}^{2} - \\frac{1}{2} m\\omega^{2}x^{2}. \\quad (2.23)\]

\[H = X_{t}\\cdot \\theta -\\alpha_{t} = \\frac{1}{2} m\\dot{x}^{2} + \\frac{1}{2} m\\omega^{2}x^{2}. \\quad (2.24)\]

\[H|_{\\widetilde{\\mathcal{P}}} = \\omega a^{*}a. \\quad (2.25)\]

(1) The expression of the Noether charge (2.25) is time independent.

(2) The time shift symmetry (2.21) maps a solution in the form of (2.18) to another solution still in the form of (2.18) aswhere \(\epsilon\) is an infinitesimal symmetry transformation parameter. And, when restricted to the pre- phase space \(\widetilde{\mathcal{P}}\) , the time shift symmetry is represented as

\[\\begin{array}{r l} & {x(t)\\big|_{\\widetilde{\\mathcal{P}}}\\to \\Big(x(t) + \\epsilon X_{t}\\cdot \\delta x(t) + o(\\epsilon)\\Big)\\Big|_{\\mathcal{P}}}\\ & {\\qquad = \\big(x(t) + \\epsilon \\dot{x} (t) + o(\\epsilon)\\big)\\big|_{\\mathcal{P}}}\\ & {\\qquad = \\frac{1}{\\sqrt{2m\\omega}}\\Big(e^{-i\\omega t}(a - \\epsilon \\cdot i\\omega a) + e^{i\\omega t}(a^{*} + \\epsilon \\cdot i\\omega a^{*})\\Big) + o(\\epsilon),} \\end{array} \\quad (2.26)\]

\[X_{t}|_{\\widetilde{\\mathcal{P}}} = -i\\omega a\\frac{\\delta}{\\delta a} +i\\omega a^{*}\\frac{\\delta}{\\delta a^{*}}. \\quad (2.27)\]

(3) The time shift symmetry (2.27), the symplectic form (2.20), and the Noether charge (2.25) together satisfy the Hamiltonian equationWe now represent the Hamiltonian system in the canonical formalism. Since the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) in (2.20) is non- degenerate, the physical phase space is exactly the pre- phase space \(\widetilde{\mathcal{P}}\) . We then read out the brackets from the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) (2.20). Specifically, by taking use of the Hamiltonian equationwe getAnd, by applying (2.30) to (2.6), we get the brackets between the set of variables \((a,a^{*})\) asMoreover, by taking use of (2.18), (2.25), (2.31), we can checkwhich is the Hamiltonian equation for the time shift symmetry in the canonical formalism.

\[X_{t}\\cdot \\Omega |_{\\widetilde{\\mathcal{P}}} = -\\delta H|_{\\widetilde{\\mathcal{P}}}. \\quad (2.28)\]

\[\\begin{array}{l}{{X_{a}\\cdot\\Omega|_{\\widetilde{\\mathcal{P}}}=-\\delta a|_{\\widetilde{\\mathcal{P}}}}}\\end{array} \\quad (2.29)\]

\[\\begin{array}{l}{{X_{a}|_{\\widetilde{\\mathcal{P}}}=i\\frac{\\delta}{\\delta a^{*}}}}\\ {{X_{a^{*}}|_{\\widetilde{\\mathcal{P}}}=-i\\frac{\\delta}{\\delta a}.}}\\end{array} \\quad (2.30)\]

\[\\begin{array}{l}{{\\{a,a\\}|_{\\widetilde{\\mathcal{P}}}=0}}\\ {{\\{a,a^{*}\\}|_{\\widetilde{\\mathcal{P}}}=-i}}\\ {{\\{a^{*},a\\}|_{\\widetilde{\\mathcal{P}}}=i}}\\ {{\\{a^{*},a^{*}\\}|_{\\widetilde{\\mathcal{P}}}=0.}}\\end{array} \\quad (2.31)\]

\[\\{H,x(t)\\} |_{\\widetilde{\\mathcal{P}}} = -\\dot{x} (t)|_{\\widetilde{\\mathcal{P}}}, \\quad (2.32)\]

### 3 The free massive vector field in the global AdS \(_3\) spacetime

definition}

In this section, we introduce our model: the free massive vector field in the global AdS \(_3\) spacetime.

We first introduce the global AdS \(_3\) spacetime. Specifically, we introduce a coordinate system \((t,r,\phi)\) with 8And we represent the metric asFor the application below, we compute the connection aswe also assume that its derivatives satisfy the following asymptotic behaviorWe represent the action asHere, we denoteandandWe setAnd we choose \(M\) to be the region sandwiched between the initial Cauchy surface \(\Sigma_{i}\) at \(t = t_{i}\) and the final Cauchy surface \(\Sigma_{f}\) at \(t = t_{f}\) .

\[\\begin{array}{l}{{t\\in(-\\infty,+\\infty)}}\\ {{r\\in(0,+\\infty)}}\\ {{\\phi\\sim\\phi+2\\pi.}}\\end{array} \\quad (3.3)\]

\[d s^{2} = -(r^{2} + 1)d t^{2} + \\frac{d r^{2}}{r^{2} + 1} +r^{2}d\\phi^{2}. \\quad (3.4)\]

\[\\[\\left\\{ \\begin{array}{l l}{\\Gamma_{t t}^{t} = 0}\\ {\\Gamma_{t t}^{r} = r^{3} + r}\\ {\\Gamma_{t t}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t r}^{t} = \\frac{r}{r^{2} + 1}}\\ {\\Gamma_{t r}^{r} = 0}\\ {\\Gamma_{t r}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array} \\right. \\qquad \\left\\{ \\begin{array}{l l}{\\Gamma_{t\\phi}^{t} = 0}\\ {\\Gamma_{t\\phi}^{r} = 0}\\ {\\Gamma_{t\\phi}^{\\phi} = 0} \\end{array\]

\[\\frac{\\partial}{\\partial t^{n}}\\frac{\\partial}{\\partial\\phi^{p}}\\frac{\\partial}{\\partial r^{m}} f = o(r^{\\lambda -m}). \\quad (3.11)\]

\[S = \\int_{M}d^{3}x\\sqrt{-g}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big). \\quad (3.12)\]

\[A_{\\mu} = g_{\\mu \\nu}A^{\\nu}, \\quad (3.13)\]

\[F_{\\mu \\nu} = \\nabla_{\\mu}A_{\\nu} - \\nabla_{\\nu}A_{\\mu}, \\quad (3.14)\]

\[F^{\\mu \\nu} = g^{\\mu \\rho}g^{\\nu \\sigma}F_{\\rho \\sigma}. \\quad (3.15)\]

\[\\mu >0. \\quad (3.16)\]

We can check that, under the asymptotic boundary conditions (3.8), the near boundary region's contribution to the integral over \(M\) in the action (3.12) is finite. \(^{10}\)

### 4 Reformulating the model to a Hamiltonian system

In this section, by taking use of the covariant phase space formalism, we reformulate our model to a Hamiltonian system. And we also provide a general discussion for the Noether's theorem associated with the Killing symmetries.

### 4.1 Reformulating the model to a Hamiltonian system

We now apply our model to the covariant phase space formalism.

Following the prescription, we first take a variation of the actionHere, \(\sigma_{ab}\) is the induced metric of the constant \(t\) Cauchy surfaces with the expression

\[\\begin{array}{l}{\\delta S = \\int_{M}d^{3}x\\sqrt{-g}\\Big[\\big(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu}\\big)\\delta A^{\\mu} - \\nabla^{\\mu}(F_{\\mu \\nu}\\delta A^{\\nu})\\Big]}\\ {= \\int_{M}d^{3}x\\sqrt{-g}\\big(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu}\\big)\\delta A^{\\mu}}\\ {+\\int_{\\Sigma_{f}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu} - \\int_{\\Sigma_{i}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu}.} \\end{array} \\quad (4.1)\]

\[\\sigma_{ab}dx^{a}dx^{b} = \\frac{dr^{2}}{r^{2} + 1} +r^{2}d\\phi^{2}. \\quad (4.2)\]

\(\tau^{\mu}\) is the future- pointing unit normal vector orthogonal to the constant \(t\) Cauchy surfaces with the expressionThe near boundary region's contributions to the integrals over \(M\) , \(\Sigma_{i}\) , \(\Sigma_{f}\) in the final expression are finite. And, in deriving (4.1), we have used that the asymptotic boundary term from the integration by parts vanishes. \(^{11}\)

\[\\tau^{\\mu} = \\left(\\frac{1}{(r^{2} + 1)^{\\frac{1}{2}}},0,0\\right). \\quad (4.3)\]

From the variation of the action (4.1), we read out the equations of motion asor equivalently asAnd we read out the symplectic potential asHere, \(\Sigma\) is a constant \(t\) Cauchy surface. And \(\theta\) is a one- form field of the set of configurations.

\[\\nabla_{\\nu}F^{\\nu \\mu} - \\mu^{2}A^{\\mu} = 0, \\quad (4.4)\]

\[\\begin{array}{l}\\nabla_{\\nu}\\nabla^{\\nu}A^{\\mu} - (\\mu^{2} - 2)A^{\\mu} = 0\\ \\nabla_{\\mu}A^{\\mu} = 0. \\end{array} \\quad (4.5)\]

\[\\theta = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu}. \\quad (4.6)\]

Then, we define the pre- phase space \(\widetilde{\mathcal{P}}\) as the set of solutions of the equations of motion (4.4). By taking an exterior derivative of the symplectic potential (4.6) in the set of configurations, we get the symplectic form

\[\\begin{array}{l}{\\Omega = \\int d^{2}x\\sqrt{\\sigma}\\Big(\\tau^{\\mu}\\delta_{1}F_{\\mu \\nu}\\delta_{2}A^{\\nu} - \\tau^{\\mu}\\delta_{1}A^{\\nu}\\delta_{2}F_{\\mu \\nu}\\Big)}\\ {= \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\Big[\\tau^{\\mu}(\\nabla_{\\mu}\\delta_{1}A_{\\nu} - \\nabla_{\\nu}\\delta_{1}A_{\\mu})\\delta_{2}A^{\\nu} - \\tau^{\\mu}\\delta_{1}A^{\\nu}(\\nabla_{\\mu}\\delta_{2}A_{\\nu} - \\nabla_{\\nu}\\delta_{2}A_{\\mu})\\Big],} \\end{array} \\quad (4.7)\]

which is a two- form field of the set of configurations. And, by taking a pullback of the symplectic form from the set of configurations to the pre- phase space \(\widetilde{\mathcal{P}}\) , we get the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) of the pre- phase space \(\widetilde{\mathcal{P}}\) .

So far, we have reformulated our model to a Hamiltonian system, which is specified by the pre- phase space \(\widetilde{\mathcal{P}}\) and the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) .

We now point out more structures in the Hamiltonian system, which arise from that our model is a free theory. Specifically, we view the pre- phase space \(\widetilde{\mathcal{P}}\) as a linear space. Weconstruct an isomorphism between the pre- phase space \(\widetilde{\mathcal{P}}\) and the tangent space at the individual point of the pre- phase space \(\widetilde{\mathcal{P}}\) as the following: Given a solution \(A_{i}^{\mu}\) of the equations of motion (4.4) which is a point in the pre- phase space \(\widetilde{\mathcal{P}}\) , we construct the corresponding vector in the tangent space at the individual point of the pre- phase space \(\widetilde{\mathcal{P}}\) asWe also construct a two- form \(\widetilde{\Omega} [\cdot ;\cdot ]_{\widetilde{\mathcal{P}}}\) of the pre- phase space \(\widetilde{\mathcal{P}}\) asHere, the two- form \(\widetilde{\Omega} [\cdot ;\cdot ]_{\widetilde{\mathcal{P}}}\) contracts with the point of the pre- phase space \(\widetilde{\mathcal{P}}\) that is already viewed as a linear space. \(A_{1}^{\mu}\) , \(A_{2}^{\mu}\) , \(\widetilde{A}^{\mu}\) are the solutions of the equations of motion (4.4), which are points of the pre- phase space \(\widetilde{\mathcal{P}}\) . The subscript \(A = \widetilde{A}\) in \(\Omega \big|_{A = \widetilde{A}}\) denotes evaluating the symplectic form \(\Omega\) at the point \(A^{\mu} = \widetilde{A}^{\mu}\) of the pre- phase space \(\widetilde{\mathcal{P}}\) . \(X_{A_{1}}\) and \(X_{A_{2}}\) are constructed aswhich are vectors of the tangent space at the point \(A^{\mu} = \widetilde{A}^{\mu}\) of the pre- phase space \(\widetilde{\mathcal{P}}\) . And the subscript \(\widetilde{\mathcal{P}}\) is to remind that \(A_{1}^{\mu}\) , \(A_{2}^{\mu}\) , \(\widetilde{A}^{\mu}\) satisfy the equations of motion.

\[X_{A_{i}} = \\int d^{3}x A_{i}^{\\mu}(x)\\frac{\\delta}{\\delta A^{\\mu}(x)}. \\quad (4.8)\]

\[\\begin{array}{r l} & {\\widetilde{\\Omega} [A_{1};A_{2}]\\big|_{\\widetilde{\\mathcal{P}}} = X_{A_{2}}\\cdot (X_{A_{1}}\\cdot \\Omega \\big|_{A = \\widetilde{A}})\\big|_{\\widetilde{\\mathcal{P}}}}\\ & {\\qquad = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\Big[\\tau^{\\mu}(\\nabla_{\\mu}A_{1,\\nu} - \\nabla_{\\nu}A_{1,\\mu})A_{2}^{\\nu} - \\tau^{\\mu}A_{1}^{\\nu}(\\nabla_{\\mu}A_{2,\\nu} - \\nabla_{\\nu}A_{2,\\mu})\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}.} \\end{array} \\quad (4.9)\]

\[\\begin{array}{l}{{X_{A_{1}}=\\int d^{3}x A_{1}^{\\mu}(x)\\frac{\\delta}{\\delta A^{\\mu}(x)}}}\\ {{X_{A_{2}}=\\int d^{3}x A_{2}^{\\mu}(x)\\frac{\\delta}{\\delta A^{\\mu}(x)},}}\\end{array} \\quad (4.10)\]

### 4.2 The Noether's theorem associated with the Killing symmetries

For the application below, we now provide a general discussion for the Noether's theorem associated with the Killing symmetries.

We first represent the Killing symmetries. Specifically, we represent a Killing symmetry as a vector field in the set of configurations with the following expressionHere, \(\mathcal{L}_{\xi}A^{\mu}\) is asAnd \(\xi^{\mu}\) is a Killing field that satisfies the Killing equationand the asymptotic behaviorsWe now show that the Killing symmetries \(X_{\xi}\) (4.11) are indeed symmetries in the sense of Noether's theorem. We first show that the Killing symmetries preserve the asymptotic boundary conditions (3.8) asHere, in deriving (4.15), we have used (3.8), (4.11), (4.14). We then act the Killing symmetries \(X_{\xi}\) (4.11) to the action (3.12). In more detail, we first act the Killing symmetries \(X_{\xi}\) (4.11) to \(A^{\mu}\) , \(A_{\mu}\) , \(F_{\mu \nu}\) , \(F^{\mu \nu}\) as

\[X_{\\xi} = \\int d^{3}x\\mathcal{L}_{\\xi}A^{\\mu}(x)\\frac{\\delta}{\\delta A^{\\mu}(x)}. \\quad (4.11)\]

\[\\mathcal{L}_{\\xi}A^{\\mu} = \\xi^{\\nu}\\nabla_{\\nu}A^{\\mu} - A^{\\nu}\\nabla_{\\nu}\\xi^{\\mu}. \\quad (4.12)\]

\[\\nabla_{\\mu}\\xi_{\\nu} + \\nabla_{\\nu}\\xi_{\\mu} = 0, \\quad (4.13)\]

\[\\begin{array}{l}\\xi^{t} = \\mathcal{O}(r^{0})\\ \\xi^{r} = \\mathcal{O}(r)\\ \\xi^{\\phi} = \\mathcal{O}(r^{0}). \\end{array} \\quad (4.14)\]

\[\\begin{array}{l}{X_{\\xi}\\cdot \\delta A^{t} = o(r^{-2})}\\ {X_{\\xi}\\cdot \\delta A^{r} = o(r^{-1})}\\ {X_{\\xi}\\cdot \\delta A^{\\phi} = o(r^{-2}).} \\end{array} \\quad (4.15)\]

\[\\begin{array}{r l}&{X_{\\xi}\\cdot\\delta A^{\\mu}=\\mathcal{L}_{\\xi}A^{\\mu}}\\ &{X_{\\xi}\\cdot\\delta A_{\\mu}=X_{\\xi}\\cdot(g_{\\mu\\nu}\\delta A^{\\nu})}\\ &{\\qquad=g_{\\mu\\nu}(\\xi^{\\rho}\\nabla_{\\rho}A^{\\nu}-A^{\\rho}\\nabla_{\\rho}\\xi^{\\nu})}\\ &{\\qquad=\\xi^{\\nu}\\nabla_{\\nu}A_{\\mu}+A_{\\nu}\\nabla_{\\mu}\\xi^{\\nu}-A^{\\nu}(\\nabla_{\\mu}\\xi_{\\nu}+\\nabla_{\\nu}\\xi_{\\mu})}\\ &{\\qquad=\\mathcal{L}_{\\xi}A_{\\nu}}\\ &{X_{\\xi}\\cdot\\delta F_{\\mu\\nu}=X_{\\xi}\\cdot(\\nabla_{\\mu}\\delta A_{\\nu}-\\nabla_{\\nu}\\delta A_{\\mu})}\\ &{\\qquad=\\nabla_{\\mu}(\\xi^{\\rho}\\nabla_{\\rho}A_{\\nu}+A_{\\rho}\\nabla_{\\nu}\\xi^{\\rho})-\\nabla_{\\nu}(\\xi^{\\rho}\\nabla_{\\rho}A_{\\mu}+A_{\\rho}\\nabla_{\\mu}\\xi^{\\rho})}\\ &{\\qquad=\\xi^{\\rho}\\nabla_{\\rho}(\\nabla_{\\mu}A_{\\nu}-\\nabla_{\\nu}A_{\\mu})+\\nabla_{\\mu}\\xi^{\\rho}(\\nabla_{\\rho}A_{\\nu}-\\nabla_{\\nu}A_{\\rho})+\\nabla_{\\nu}\\xi^{\\rho}(\\nabla_{\\mu}A_{\\rho}-\\nabla_{\\rho}A_{\\mu})}\\ &{\\qquad+\\xi^{\\rho}(\\nabla_{\\mu}\\nabla_{\\rho}A_{\\nu}-\\nabla_{\\rho}\\nabla_{\\mu}A_{\\nu})-\\xi^{\\rho}(\\nabla_{\\nu}\\nabla_{\\rho}A_{\\mu}-\\nabla_{\\rho}\\nabla_{\\nu}A_{\\mu})+A_{\\rho}(\\nabla_{\\mu}\\nabla_{\\nu}\\xi^{\\rho}-\\nabla_{\\nu}\\nabla_{\\rho}\\xi^{\\rho})}\\ &{\\qquad=\\xi^{\\rho}\\nabla_{\\rho}F_{\\mu\\nu}+\\nabla_{\\mu}\\xi^{\\rho}F_{\\rho\\nu}+\\nabla_{\\nu}\\xi^{\\rho}F_{\\mu\\rho}+\\xi^{\\rho}R_{\\mu\\rho\\nu\\sigma}A^{\\sigma}-\\xi^{\\rho}R_{\\nu\\rho\\mu\\sigma}A^{\\sigma}+A^{\\rho}R_{\\mu\\nu\\rho\\sigma}\\xi^{\\sigma}}\\ &{\\qquad=\\mathcal{L}_{\\xi}F_{\\mu\\nu}}\\ &{X_{\\xi}\\cdot\\delta F^{\\mu\\nu}=X_{\\xi}\\cdot(g^{\\mu\\rho}g^{\\nu\\sigma}\\delta F_{\\rho\\sigma})}\\ &{\\qquad=g^{\\mu\\rho}g^{\\nu\\sigma}(\\xi^{\\lambda}\\nabla_{\\lambda}F_{\\rho\\sigma}+F_{\\lambda\\sigma}\\nabla_{\\rho}\\xi^{\\lambda}+F_{\\rho\\lambda}\\nabla_{\\sigma}\\xi^{\\lambda})}\\ &{\\qquad=\\xi^{\\rho}\\nabla_{\\rho}F^{\\mu\\nu}-F^{\\rho\\nu}\\nabla_{\\rho}\\xi^{\\mu}-F^{\\mu\\rho}\\nabla_{\\rho}\\xi^{\\nu}+F_{\\rho}^{\\nu}(\\nabla^{\\mu}\\xi^{\\rho}+\\nabla^{\\rho}\\xi^{\\mu})+F_{\\rho}^{\\mu}(\\nabla^{\\nu}\\xi^{\\rho}+\\nabla^{\\rho}\\xi^{\\nu})}\\ &{\\qquad=\\mathcal{L}_{\\xi}F^{\\mu\\nu}.}\\end{array} \\quad (4.16)\]

And, by taking use of (4.16), we then act the Killing symmetries \(X_{\xi}\) (4.11) to the action (3.12)

asHere, the near boundary region's contributions to the integrals over \(\Sigma_{i}\) and \(\Sigma_{f}\) in the final expression are finite. And, in deriving (4.17), we have used that the asymptotic boundary term from the integration by parts vanishes. \(^{12}\) From (4.15) and (4.17), we show that the Killing symmetries \(X_{\xi}\) (4.11) are indeed symmetries in the sense of Noether's theorem. And we also read out the corresponding \(\alpha_{\xi}\) asWe now compute the Noether charge associated with the Killing symmetry \(X_{\xi}\) (4.11). Specifically, by applying (4.6), (4.11), (4.18) to (2.10), we get the expression of the Noether charge as

\[\\begin{array}{l}{{X_{\\xi}\\cdot\\delta S=\\int_{M}d^{3}x\\sqrt{-g}\\xi^{\\rho}\\nabla_{\\rho}\\Big(-\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}-\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)}}\\ {{=\\int_{M}d^{3}x\\sqrt{-g}\\nabla_{\\rho}\\Big[\\xi^{\\rho}\\Big(-\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}-\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)\\Big]}}\\ {{=\\int_{\\Sigma_{f}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}+\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)-\\int_{\\Sigma_{i}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}+\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big).}}\\end{array} \\quad (4.17)\]

\[\\alpha_{\\xi} = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} + \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big). \\quad (4.18)\]

\[\\begin{array}{r l} & {Q_{\\xi}|_{\\widetilde{\\mathcal{P}}} = (X_{\\xi}\\cdot \\theta -\\alpha_{\\xi})|_{\\widetilde{\\mathcal{P}}}}\\ & {\\qquad = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\bigg[\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4}g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big)}\\ & {\\qquad -\\tau_{\\nu}\\nabla_{\\mu}(F^{\\mu \\nu}A^{\\rho}\\xi_{\\rho}) + \\tau^{\\mu}(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu})A^{\\rho}\\xi_{\\rho} - \\tau^{\\mu}F_{\\mu}{}^{\\nu}A^{\\rho}(\\nabla_{\\nu}\\xi_{\\rho} + \\nabla_{\\rho}\\xi_{\\nu})\\bigg]\\bigg|_{\\widetilde{\\mathcal{P}}}}\\ & {\\qquad = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\bigg[\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4}g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big) - D_{\\alpha}(\\sigma^{\\alpha}{}_{\\mu}\\tau_{\\nu}F^{\\mu \\nu}A^{\\rho}\\xi_{\\rho})\\bigg]\\bigg|_{\\widetilde{\\mathcal{P}}}}\\ & {\\qquad = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4}g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big)\\bigg|_{\\widetilde{\\mathcal{P}}}.} \\end{array} \\quad (4.19)\]

Here, \(D_{\alpha}\) is the covariant derivative along the Cauchy surface \(\Sigma\) associated with the induced metric (4.2). The near boundary region's contribution to the integral over \(\Sigma\) in the final expression is finite. In deriving (4.19), we have used (4.4) and (4.13). We have used the following equation for an anti- symmetric tensor \(S^{\mu \nu}\) asAnd we have also used that the asymptotic boundary term from the integration by parts along the Cauchy surface \(\Sigma\) vanishes. \(^{13}\)

\[\\tau_{\\nu}\\nabla_{\\mu}S^{\\mu \\nu} = D_{\\alpha}(\\sigma^{\\alpha}{}_{\\mu}\\tau_{\\nu}S^{\\mu \\nu}). \\quad (4.20)\]

We now take a direct check for the expression of the Noether charge \(Q_{\xi}|_{\widetilde{\mathcal{P}}}\) (4.19). Specifically, we check that the Killing symmetry \(X_{\xi}\) (4.11), the symplectic form \(\Omega\) (4.7), and the Noether charge (4.19) together satisfy the Hamiltonian equation (2.12) as

\[\\begin{array}{r l}&{X_{\\xi}\\cdot\\Omega|_{\\widetilde{\\mathcal{P}}}}\\ &{=\\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\Big[\\tau^{\\mu}(X_{\\xi}\\cdot\\delta F_{\\mu\\nu})\\delta A^{\\nu}-\\tau^{\\mu}(X_{\\xi}\\cdot\\delta A^{\\nu})\\delta F_{\\mu\\nu}\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}}\\ &{=\\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\Big[-\\tau^{\\mu}\\xi^{\\nu}\\Big(\\delta F_{\\mu\\rho}F_{\\nu}^{\\rho}+F_{\\mu\\rho}\\delta F_{\\nu}^{\\rho}-\\frac{1}{2}g_{\\mu\\nu}F_{\\rho\\sigma}\\delta F^{\\rho\\sigma}}\\ &{\\quad+\\mu^{2}\\delta A_{\\mu}A_{\\nu}+\\mu^{2}A_{\\mu}\\delta A_{\\nu}-\\mu^{2}g_{\\mu\\nu}A_{\\rho}\\delta A^{\\rho}\\Big)}\\ &{\\quad+\\tau_{\\nu}\\nabla_{\\mu}\\Big(\\xi^{\\mu}F_{\\nu}^{\\rho}\\delta A^{\\rho}-\\xi^{\\nu}F_{\\mu}^{\\rho}\\delta A^{\\rho}+F^{\\mu\\nu}\\xi_{\\rho}\\delta A^{\\rho}+\\delta F^{\\mu\\nu}\\xi_{\\rho}A^{\\rho}\\Big)}\\ &{\\quad-\\tau^{\\mu}F_{\\mu\\nu}\\delta A^{\\nu}\\nabla_{\\rho}\\xi^{\\rho}+\\tau^{\\mu}(\\nabla_{\\mu}\\xi_{\\nu}+\\nabla_{\\nu}\\xi_{\\mu})F^{\\nu}\\delta A^{\\rho}}\\ &{\\quad+\\tau^{\\mu}F_{\\mu}^{\\nu}(\\nabla_{\\nu}\\xi_{\\rho}+\\nabla_{\\rho}\\xi_{\\nu})\\delta A^{\\rho}+\\tau^{\\mu}\\delta F_{\\mu}^{\\nu}(\\nabla_{\\nu}\\xi_{\\rho}+\\nabla_{\\rho}\\xi_{\\nu})A^{\\rho}}\\ &{\\quad+\\tau^{\\mu}\\xi_{\\mu}(\\nabla^{\\nu}F_{\\nu\\rho}-\\mu^{2}A_{\\rho})\\delta A^{\\rho}-\\tau^{\\mu}(\\nabla^{\\nu}F_{\\nu\\mu}-\\mu^{2}A_{\\mu})\\xi_{\\rho}\\delta A^{\\rho}-\\tau^{\\mu}(\\nabla^{\\nu}\\delta F_{\\nu\\mu}-\\mu^{2}\\delta A_{\\mu})\\xi_{\\rho}A^{\\rho}\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}}\\ &{=\\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\Big[-\\tau^{\\mu}\\xi^{\\nu}\\delta\\Big(F_{\\mu\\rho}F_{\\nu}^{\\rho}-\\frac{1}{4}g_{\\mu\\nu}F_{\\rho\\sigma}F^{\\rho\\sigma}+\\mu^{2}A_{\\mu}A_{\\nu}-\\frac{1}{2}\\mu^{2}g_{\\mu\\nu}A_{\\rho}A^{\\rho}\\Big)}\\ &{\\quad+D_{\\alpha}\\Big(\\sigma^{\\alpha}\\mu_{\\tau}\\tau_{\\nu}\\Big(\\xi^{\\mu}F_{\\nu}^{\\rho}\\delta A^{\\rho}-\\xi^{\\nu}F_{\\mu}^{\\rho}\\delta A^{\\rho}+F^{\\mu\\nu}\\xi_{\\rho}\\delta A^{\\rho}+\\delta F^{\\mu\\nu}\\xi_{\\rho}A^{\\rho}\\Big)\\Big)\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}}\\ &{=(-1)\\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\delta\\Big(F_{\\mu\\rho}F_{\\nu}^{\\rho}-\\frac{1}{4}g_{\\mu\\nu}F_{\\rho\\sigma}F^{\\rho\\sigma}+\\mu^{2}A_{\\mu}A_{\\nu}-\\frac{1}{2}\\mu^{2}g_{\\mu\\nu}A_{\\rho}A^{\\rho}\\Big)\\Big|_{\\widetilde{\\mathcal{P}}}}\\ &{=-\\delta Q_{\\xi}|_{\\widetilde{\\mathcal{P}}}.}\\end{array} \\quad (4.21)\]

Here, in deriving (4.21), we have used (4.4), (4.13), (4.16), (4.20). We have also used that the asymptotic boundary term from the integration by parts along the Cauchy surface \(\Sigma\) vanishes. 14

For the practical application below, we now point out some statements in terms of the Killing symmetry \(X_{\xi}\) (4.11) and the two- form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9). Specifically, the statements are the following:

(1) Acting the Killing symmetry \(X_{\xi}\) (4.11) to one slot of the two-form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9) leads to an expression relevant to the Noether charge \(Q_{\xi}|_{\widetilde{\mathcal{P}}}\) (4.19) aswithHere, the subscript \(\widetilde{\mathcal{P}}\) denotes that \(A_{1}^{\mu}\) and \(A_{2}^{\mu}\) satisfy the equations of motion. And the expression \(Q_{\xi}^{(2)}[\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.23) is relevant to the Noether charge \(Q_{\xi}|_{\widetilde{\mathcal{P}}}\) (4.19) as

\[\\widetilde{\\Omega} [\\mathcal{L}_{\\xi}A_{1};A_{2}]\\Big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [A_{1};\\mathcal{L}_{\\xi}A_{2}]\\Big|_{\\widetilde{\\mathcal{P}}} = -Q_{\\xi}^{(2)}[A_{1};A_{2}]\\Big|_{\\widetilde{\\mathcal{P}}}, \\quad (4.22)\]

\[\\begin{array}{r l} & {Q_{\\xi}^{(2)}[A_{1};A_{2}]\\Big|_{\\widetilde{\\mathcal{P}}} = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{1,\\mu \\rho}F_{2,\\nu}^{\\rho} + F_{1,\\nu \\rho}F_{2,\\mu}^{\\rho} - \\frac{1}{2} g_{\\mu \\nu}F_{1,\\rho \\sigma}F_{2}^{\\rho \\sigma}}\\ & {\\qquad +\\mu^{2}A_{1,\\mu}A_{2,\\nu} + \\mu^{2}A_{1,\\nu}A_{2,\\mu} - \\mu^{2}g_{\\mu \\nu}A_{1,\\rho}A_{2}^{\\rho}\\Big)\\Big|_{\\widetilde{\\mathcal{P}}}.} \\end{array} \\quad (4.23)\]

\[Q_{\\xi}^{(2)}[A_{1} = A;A_{2} = A]\\Big|_{\\widetilde{\\mathcal{P}}} = 2Q_{\\xi}|_{\\widetilde{\\mathcal{P}}}. \\quad (4.24)\]

(2) The Noether charge \(Q_{\xi}|_{\widetilde{\mathcal{P}}}\) (4.19) can be expressed in terms of the two-form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9) as

\[Q_{\\xi}|_{\\widetilde{\\mathcal{P}}} = -\\frac{1}{2}\\widetilde{\\Omega} [\\mathcal{L}_{\\xi}A;A]\\Big|_{\\widetilde{\\mathcal{P}}} = \\frac{1}{2}\\widetilde{\\Omega} [A;\\mathcal{L}_{\\xi}A]\\Big|_{\\widetilde{\\mathcal{P}}}. \\quad (4.25)\]

(3) The two-form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) is invariant under the Killing symmetry \(X_{\xi}\) (4.11) asHere, the statement (1) can be proved with a similar algebra as (4.21). The statement (2) and the statement (3) can be directly read out from the statement (1).

\[\\left(\\widetilde{\\Omega} [\\mathcal{L}_{\\xi}A_{1};A_{2}] + \\widetilde{\\Omega} [A_{1};\\mathcal{L}_{\\xi}A_{2}]\\right)\\Big|_{\\widetilde{\\mathcal{P}}} = 0. \\quad (4.26)\]

## 5 Representing the Hamiltonian system with a proper set of variables

So far, we have reformulated the model to a Hamiltonian system. In this section, by taking use of the mode expansion, we represent the Hamiltonian system with a proper set of variables.

### 5.1 The framework

Before going to the technical details, we first introduce the framework:We solve out a set of complete and independent modes \(f_{N}^{\mu}(x)\) of the equations of motion (4.4). With the set of modes \(f_{N}^{\mu}(x)\) , we represent the general solution in the form of a mode expansion asWe view the coefficients \(a_{N}\) in the mode expansion (5.1) as a set of variables that parameterize the pre- phase space \(\widetilde{\mathcal{P}}\) which is the set of solutions. And, by applying the general solution (5.1) to the symplectic form (4.7), we compute the expression of the symplectic form represented with the set of variables \(a_{N}\) aswhere \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) is defined in (4.9).

\[A^{\\mu}(x)|_{\\widetilde{\\mathcal{P}}} = \\sum_{N}f_{N}^{\\mu}(x)a_{N}. \\quad (5.1)\]

\[\\Omega |_{\\widetilde{\\mathcal{P}}} = \\sum_{N_{1},N_{2}}\\widetilde{\\Omega} [f_{N_{1}};f_{N_{2}}]\\big|_{\\widetilde{\\mathcal{P}}}\\cdot \\delta_{1}a_{N_{1}}\\delta_{2}a_{N_{2}}, \\quad (5.2)\]

Below, we will explicitly solve the modes and compute the expression of the symplectic form.

### 5.2 The Killing symmetries

We will solve the modes and compute the expression of the symplectic form with the Killing symmetries. For the application below, we now introduce the Killing symmetries.

We first introduce the Killing fields of the metric (3.4). Specifically, we represent the independent Killing fields as 15

\[\\begin{array}{r l} & {\\xi_{1} = \\frac{1}{2} e^{i(t - \\phi)}\\Big(\\frac{r}{\\sqrt{r^{2} + 1}}\\frac{\\partial}{\\partial t} -i\\sqrt{r^{2} + 1}\\frac{\\partial}{\\partial r} -\\frac{\\sqrt{r^{2} + 1}}{r}\\frac{\\partial}{\\partial\\phi}\\Big)}\\ & {\\xi_{0} = \\frac{1}{2}\\Big(\\frac{\\partial}{\\partial t} -\\frac{\\partial}{\\partial\\phi}\\Big)}\\ & {\\xi_{-1} = \\frac{1}{2} e^{-i(t - \\phi)}\\Big(\\frac{r}{\\sqrt{r^{2} + 1}}\\frac{\\partial}{\\partial t} +i\\sqrt{r^{2} + 1}\\frac{\\partial}{\\partial r} -\\frac{\\sqrt{r^{2} + 1}}{r}\\frac{\\partial}{\\partial\\phi}\\Big)}\\ & {\\bar{\\xi}_{1} = \\frac{1}{2} e^{i(t + \\phi)}\\Big(\\frac{r}{\\sqrt{r^{2} + 1}}\\frac{\\partial}{\\partial t} -i\\sqrt{r^{2} + 1}\\frac{\\partial}{\\partial r} +\\frac{\\sqrt{r^{2} + 1}}{r}\\frac{\\partial}{\\partial\\phi}\\Big)}\\ & {\\bar{\\xi}_{0} = \\frac{1}{2}\\Big(\\frac{\\partial}{\\partial t} +\\frac{\\partial}{\\partial\\phi}\\Big)}\\ & {\\bar{\\xi}_{-1} = \\frac{1}{2} e^{-i(t + \\phi)}\\Big(\\frac{r}{\\sqrt{r^{2} + 1}}\\frac{\\partial}{\\partial t} +i\\sqrt{r^{2} + 1}\\frac{\\partial}{\\partial r} +\\frac{\\sqrt{r^{2} + 1}}{r}\\frac{\\partial}{\\partial\\phi}\\Big).} \\end{array} \\quad (5.4)\]

Here, the Killing fields (5.4) form an \(SL(2) \times SL(2)\) algebra under the commutator. And the

15The Killing fields (5.4) are smooth at \(r = 0\) , despite of the \(\mathcal{O}(\textstyle {\frac{1}{r}})\) behavior for \(r\rightarrow 0\) in the \(\phi\) components. To show the smoothness, we can represent the Killing fields in the coordinate system \((t,x,y)\) introduced in (3.1) as

\[\\begin{array}{l}{\\xi_{1} = \\frac{1}{2} e^{i t}\\Big(\\frac{x - i y}{\\sqrt{x^{2} + y^{2} + 1}}\\frac{\\partial}{\\partial t} -i\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial x} -\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial y}\\Big)}\\ {\\xi_{0} = \\frac{1}{2}\\Big(\\frac{\\partial}{\\partial t} +y\\frac{\\partial}{\\partial x} -x\\frac{\\partial}{\\partial y}\\Big)}\\ {\\xi_{-1} = \\frac{1}{2} e^{-i t}\\Big(\\frac{x + i y}{\\sqrt{x^{2} + y^{2} + 1}}\\frac{\\partial}{\\partial t} +i\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial x} -\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial y}\\Big)}\\ {\\bar{\\xi}_{1} = \\frac{1}{2} e^{i t}\\Big(\\frac{x + i y}{\\sqrt{x^{2} + y^{2} + 1}}\\frac{\\partial}{\\partial t} -i\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial x} +\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial y}\\Big)}\\ {\\bar{\\xi}_{0} = \\frac{1}{2}\\Big(\\frac{\\partial}{\\partial t} -y\\frac{\\partial}{\\partial x} +x\\frac{\\partial}{\\partial y}\\Big)}\\ {\\bar{\\xi}_{-1} = \\frac{1}{2} e^{-i t}\\Big(\\frac{x - i y}{\\sqrt{x^{2} + y^{2} + 1}}\\frac{\\partial}{\\partial t} +i\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial x} +\\sqrt{x^{2} + y^{2} + 1}\\frac{\\partial}{\\partial y}\\Big),} \\end{array} \\quad (5.3)\]

where all components are smooth at \((t, x = 0, y = 0)\) . While, the \(\mathcal{O}(\textstyle {\frac{1}{r}})\) behaviors for \(r \to 0\) in (5.4) are just coordinate singularities.

independent non- zero commutators areWe now introduce some relevant properties of the Killing fields (5.4). Here, we divide the Killing fields into two sets \(\{\xi_{- 1},\xi_{0},\xi_{1}\}\) , \(\{\bar{\xi}_{- 1},\bar{\xi}_{0},\bar{\xi}_{1}\}\) . And we point out the following properties of the Killing fields in each set: First, the inner products between the Killing fields form a constant non- degenerate matrix aswhere \(a / b = - 1,0,1\) labels the row/column indices of the matrix in the order of up to down/left to right. Second, the metric (3.4) can be represented in terms of the Killing fields asThird, the contractions of the volume form \(\epsilon_{\mu \nu \rho}\) with two Killing fields are also Killing fields with the independent and non- zero contractions being asandwhere the non- zero components of the volume form \(\epsilon_{\mu \nu \rho}\) are asFourth, the covariant derivative of the Killing fields can be represented in terms of the Killing fields asfor \(a = - 1,0,1\)

\[\\begin{array}{r l} & {[\\xi_{0},\\xi_{1}] = i\\xi_{1}}\\ & {[\\xi_{0},\\xi_{-1}] = -i\\xi_{-1}}\\ & {[\\xi_{1},\\xi_{-1}] = -2i\\xi_{0}}\\ & {[\\bar{\\xi}_{0},\\bar{\\xi}_{1}] = i\\bar{\\xi}_{1}}\\ & {[\\bar{\\xi}_{0},\\bar{\\xi}_{-1}] = -i\\bar{\\xi}_{-1}}\\ & {[\\bar{\\xi}_{1},\\bar{\\xi}_{-1}] = -2i\\bar{\\xi}_{0}.} \\end{array} \\quad (5.5)\]

\[g_{\\mu \\nu}\\xi_{a},\\mu^{\\prime}\\xi_{b},\\nu^{\\prime} = g_{\\mu \\nu}\\bar{\\xi}_{a},\\mu^{\\prime}\\bar{\\xi}_{b},\\nu^{\\prime} = \\left( \\begin{array}{ccc}0 & 0 & \\frac{1}{2}\\ 0 & -\\frac{1}{4} & 0\\ \\frac{1}{2} & 0 & 0 \\end{array} \\right), \\quad (5.6)\]

\[\\begin{array}{r l} & {g^{\\mu \\nu} = 2\\xi_{-1}^{\\phantom{-1}\\mu}\\xi_{1}^{\\phantom{-1}\\nu} + 2\\xi_{1}^{\\phantom{-1}\\mu}\\xi_{-1}^{\\phantom{-1}\\nu} - 4\\xi_{0}^{\\phantom{-1}\\mu}\\xi_{0}^{\\phantom{-1}\\nu}}\\ & {\\qquad = 2\\bar{\\xi}_{-1}^{\\phantom{-1}\\mu}\\bar{\\xi}_{1}^{\\phantom{-1}\\nu} + 2\\bar{\\xi}_{1}^{\\phantom{-1}\\mu}\\bar{\\xi}_{-1}^{\\phantom{-1}\\nu} - 4\\bar{\\xi}_{0}^{\\phantom{-1}\\mu}\\bar{\\xi}_{0}^{\\phantom{-1}\\nu}.} \\end{array} \\quad (5.7)\]

\[\\begin{array}{l}\\epsilon_{\\mu \\nu \\rho}\\xi_{0}^{\\nu}\\xi_{1}^{\\rho} = \\frac{i}{2}\\xi_{1,\\mu}\\ \\epsilon_{\\mu \\nu \\rho}\\xi_{0}^{\\nu}\\xi_{-1}^{\\rho} = -\\frac{i}{2}\\xi_{-1,\\mu}\\ \\epsilon_{\\mu \\nu \\rho}\\xi_{1}^{\\nu}\\xi_{-1}^{\\rho} = -i\\xi_{0,\\mu}, \\end{array} \\quad (5.8)\]

\[\\begin{array}{l}\\epsilon_{\\mu \\nu \\rho}\\bar{\\xi}_{0}^{\\nu}\\bar{\\xi}_{1}^{\\rho} = -\\frac{i}{2}\\bar{\\xi}_{1,\\mu}\\ \\epsilon_{\\mu \\nu \\rho}\\bar{\\xi}_{0}^{\\nu}\\bar{\\xi}_{-1}^{\\rho} = \\frac{i}{2}\\bar{\\xi}_{-1,\\mu}\\ \\epsilon_{\\mu \\nu \\rho}\\bar{\\xi}_{1}^{\\nu}\\bar{\\xi}_{-1}^{\\rho} = i\\bar{\\xi}_{0,\\mu}, \\end{array} \\quad (5.9)\]

\[\\epsilon_{tr\\phi} = \\epsilon_{r\\phi t} = \\epsilon_{\\phi tr} = -\\epsilon_{rt\\phi} = -\\epsilon_{t\\phi r} = -\\epsilon_{\\phi rt} = \\sqrt{-g} = r. \\quad (5.10)\]

\[\\begin{array}{r l} & {\\nabla_{\\mu}\\xi_{a,\\nu} = -\\epsilon_{\\mu \\nu \\rho}\\xi_{a,\\rho}}\\ & {\\nabla_{\\mu}\\bar{\\xi}_{a,\\nu} = \\epsilon_{\\mu \\nu \\rho}\\bar{\\xi}_{a,\\rho},} \\end{array} \\quad (5.11)\]

We now construct the Casimir "operators" \(^{16}\) of the Killing symmetries. Specifically, we construct the Casimir "operators" asandHere, the Casimir "operators" commute with the Killing symmetries aswhich can be shown by taking use of the \(SL(2)\times SL(2)\) algebra (7.3). We then explicitly compute the action of the Casimir "operators" onto a vector field \(A^{\mu}\) aswhere we have used (5.6), (5.7), (5.8), (5.9), (5.11). And, for the practical application below, we also compute the following action in terms of the Casimir "operators" onto a vector field \(A^{\mu}\) asHere, in deriving (5.18), we have used (5.17). And the final expression (5.18) is exactly the linear "operators" appearing in the equations of motion (4.4), (4.5).

\[\\begin{array}{r l} & {\\mathcal{C} = \\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}} + i\\mathcal{L}_{\\xi_{0}}}\\ & {\\qquad = \\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{1}}\\mathcal{L}_{\\xi_{-1}} - i\\mathcal{L}_{\\xi_{0}},} \\end{array} \\quad (5.12)\]

\[\\begin{array}{r l} & {\\overline{{C}} = \\mathcal{L}_{\\overline{{\\xi_{0}}}}\\mathcal{L}_{\\overline{{\\xi_{0}}}} - \\mathcal{L}_{\\overline{{\\xi_{-1}}}}\\mathcal{L}_{\\overline{{\\xi_{1}}}} + i\\mathcal{L}_{\\overline{{\\xi_{0}}}}\\ & {\\qquad = \\mathcal{L}_{\\overline{{\\xi_{0}}}}\\mathcal{L}_{\\overline{{\\xi_{0}}}} - \\mathcal{L}_{\\overline{{\\xi_{1}}}}\\mathcal{L}_{\\overline{{\\xi_{-1}}}} - i\\mathcal{L}_{\\overline{{\\xi_{0}}}},} \\end{array} \\quad (5.14)\]

\[[\\mathcal{C},\\mathcal{L}_{\\xi_{a}}] = [\\mathcal{C},\\mathcal{L}_{\\bar{\\xi}_{a}}] = [\\overline{{\\mathcal{C}}},\\mathcal{L}_{\\xi_{a}}] = [\\overline{{\\mathcal{C}}},\\mathcal{L}_{\\bar{\\xi}_{a}}] = 0, \\quad (5.16)\]

\[\\begin{array}{l}{{\\mathcal{C}A^{\\mu}=-\\frac{1}{4}\\nabla_{\\nu}\\nabla^{\\nu}A^{\\mu}-\\frac{1}{2}\\epsilon^{\\mu\\nu}_{\\quad\\rho}\\nabla_{\\nu}A^{\\rho}-\\frac{1}{2}A^{\\mu}}}\\ {{\\overline{{C}}A^{\\mu}=-\\frac{1}{4}\\nabla_{\\nu}\\nabla^{\\nu}A^{\\mu}+\\frac{1}{2}\\epsilon^{\\mu\\nu}_{\\quad\\rho}\\nabla_{\\nu}A^{\\rho}-\\frac{1}{2}A^{\\mu},}}\\end{array} \\quad (5.17)\]

\[\\begin{array}{l}{{(\\mathcal{C}+\\overline{{\\mathcal{C}}})A^{\\mu}=-\\frac{1}{2}\\nabla_{\\nu}\\nabla^{\\nu}A^{\\mu}-A^{\\mu}}}\\ {{(\\mathcal{C}-\\overline{{\\mathcal{C}}})^{2}A^{\\mu}=\\nabla_{\\nu}\\nabla^{\\nu}A^{\\mu}-\\nabla_{\\nu}\\nabla^{\\mu}A^{\\nu}.}}\\end{array} \\quad (5.18)\]

### 5.3 Solving the modes

We now solve a set of complete and independent modes of the equations of motion (4.4) with the Killing symmetries.

### 5.3.1 The choice of the set of the modes

We first explain our choice of the set of the modes.

By taking use of the Killing symmetries, we choose the set of modes such that they compose representations of the Killing symmetries. And, in each representation, we furthermore choose the modes to be the eigenfunctions of the time shift symmetryand the rotation symmetryUnder such a choice of the set of modes, we represent the individual modes in the form ofHere, \(\lambda\) labels the representations. \(N\) labels the different modes in each representation. \((\omega ,m)\) label the eigenvalues of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial\phi}\) of the modes (5.21) as

\[\\frac{\\partial}{\\partial t} = \\xi_{0} + \\bar{\\xi}_{0}, \\quad (5.19)\]

\[\\frac{\\partial}{\\partial\\phi} = -\\xi_{0} + \\bar{\\xi}_{0}. \\quad (5.20)\]

\[f_{\\lambda ;N}{}^{\\mu}(x) = e^{-i\\omega t}e^{im\\phi}\\bar{f}^{\\mu}(r). \\quad (5.21)\]

\[\\begin{array}{l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{\\lambda ;N}{}^{\\mu} = -i\\omega f_{\\lambda ;N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}f_{\\lambda ;N}{}^{\\mu} = imf_{\\lambda ;N}{}^{\\mu}.} \\end{array} \\quad (5.22)\]

\(m\) is a real integer. And, for the moment, we make no assumption for \(\omega\) , which can even have an imaginary part.

Below, we will solve the expressions of the modes.

### 5.3.2 The eigenvalues of the Casimir "operators"

Before solving the specific expressions of the modes, we first derive some general properties of the modes in terms of the Killing symmetries. We now solve the eigenvalues of the Casimir "operators" of the representations that appear in the set of modes.

Specifically, by comparing the linear "operators" (5.18) with the equations of motion (4.4), (4.5), we get the following equations in terms of the Casimir "operators" asAnd, by applying the mode expansion (5.1) and the form of the modes (5.21) to these equations (5.23), we solve the eigenvalues of the Casimir "operators" asorHere, the equations (5.24), (5.25) mean that only the representations with such eigenvalues of the Casimir "operators" can appear in the set of modes.

\[\\begin{array}{c}{{(\\mathcal{C}+\\overline{{\\mathcal{C}}})A^{\\mu}\\big|_{\\widehat{\\mathcal{P}}}=-\\frac{1}{2}\\mu^{2}A^{\\mu}\\big|_{\\widehat{\\mathcal{P}}}}\\ {{(\\mathcal{C}-\\overline{{\\mathcal{C}}})^{2}A^{\\mu}\\big|_{\\widehat{\\mathcal{P}}}=\\mu^{2}A^{\\mu}\\big|_{\\widehat{\\mathcal{P}}}.}}\\end{array} \\quad (5.23)\]

\[\\begin{array}{l}{{{\\cal C}f_{\\lambda;N}{}^{\\mu}=\\Big(-\\frac{1}{4}\\mu^{2}+\\frac{1}{2}\\mu\\Big)f_{\\lambda;N}{}^{\\mu}}}\\ {{{\\overline{{C}}}f_{\\lambda;N}{}^{\\mu}=\\Big(-\\frac{1}{4}\\mu^{2}-\\frac{1}{2}\\mu\\Big)f_{\\lambda;N}{}^{\\mu},}}\\end{array} \\quad (5.24)\]

\[\\begin{array}{l}{{{\\cal C}f_{\\lambda;N}{}^{\\mu}=\\Big(-\\frac{1}{4}\\mu^{2}-\\frac{1}{2}\\mu\\Big)f_{\\lambda;N}{}^{\\mu}}}\\ {{{\\overline{{C}}}f_{\\lambda;N}{}^{\\mu}=\\Big(-\\frac{1}{4}\\mu^{2}+\\frac{1}{2}\\mu\\Big)f_{\\lambda;N}{}^{\\mu}.}}\\end{array} \\quad (5.25)\]

### 5.3.3 Bounding the \((\omega ,m)\) of the modes

We now bound the \((\omega ,m)\) of modes. 17We first derive some useful equations. Specifically, by applying \(f_{\lambda ,N}{}^{\mu}\) , \(f_{\lambda ,N}{}^{\mu *}\) , \(\xi_{0}{}^{\mu} / \bar{\xi}_{0}{}^{\mu}\) to (4.22) in the position of \(A_{1}{}^{\mu}\) , \(A_{2}{}^{\mu}\) , \(\xi^{\mu}\) and by taking use of (5.19), (5.20), (5.22), we get the following equationsandWith these equations (5.26), (5.27), we provide the following arguments to bound the \((\omega ,m)\) of the modes: First, we notice that the expressions (5.26), (5.27) are positive definite.

\[\\begin{array}{r l} & {i(\\omega +m)\\widehat{\\Omega}[f_{\\lambda ,N};f_{\\lambda ,N}{}^{*}]|_{\\widehat{\\mathcal{P}}}}\\ & {= i(\\omega^{*} + m)\\widehat{\\Omega}[f_{\\lambda ,N};f_{\\lambda ,N}{}^{*}]|_{\\widehat{\\mathcal{P}}}}\\ & {= \\int_{0}^{\\infty}d r\\int_{0}^{2\\pi}d\\phi \\Big(r|F_{t r} + F_{r\\phi}|^{2} + \\frac{1}{r} |F_{r\\phi}|^{2} + \\frac{1}{r(r^{2} + 1)} |F_{t\\phi}|^{2}}\\ & {\\quad +\\mu^{2}\\frac{r}{r^{2} + 1} |A_{t} - A_{\\phi}|^{2} + \\mu^{2}r(r^{2} + 1)|A_{r}|^{2} + \\mu^{2}\\frac{1}{r(r^{2} + 1)} |A_{\\phi}|^{2}\\Big)\\Big|_{A^{\\mu} = f_{\\lambda ,N}{}^{\\mu},\\widehat{\\mathcal{P}}},} \\end{array} \\quad (5.26)\]

\[\\begin{array}{r l} & {i(\\omega -m)\\widehat{\\Omega}[f_{\\lambda ,N};f_{\\lambda ,N}{}^{*}]|_{\\widehat{\\mathcal{P}}}}\\ & {= i(\\omega^{*} - m)\\widehat{\\Omega}[f_{\\lambda ,N},f_{\\lambda ,N}{}^{*}]|_{\\widehat{\\mathcal{P}}}}\\ & {= \\int_{0}^{\\infty}d r\\int_{0}^{2\\pi}d\\phi \\Big(r|F_{t r} - F_{r\\phi}|^{2} + \\frac{1}{r}|F_{r\\phi}|^{2} + \\frac{1}{r(r^{2} + 1)} |F_{t\\phi}|^{2}}\\ & {\\quad +\\mu^{2}\\frac{r}{r^{2} + 1} |A_{t} + A_{\\phi}|^{2} + \\mu^{2}r(r^{2} + 1)|A_{r}|^{2} + \\mu^{2}\\frac{1}{r(r^{2} + 1)} |A_{\\phi}|^{2}\\Big)\\Big|_{A^{\\mu} = f_{\\lambda ,N}{}^{\\mu},\\widehat{\\mathcal{P}}}.} \\end{array} \\quad (5.27)\]

![](Attachments/d4e0ebcbaa33958be46bc578dc24c2689339edfc9aa34d4a95fd289ae201e368.png)

Second, from the non- vanishing of (5.26) and (5.27), we know that the following quantities are non- zeroThird, by dividing (5.26) or (5.27) over the non- zero quantity \(\widetilde{\Omega} [f_{\lambda ,N},f_{\lambda ,N}^{*}]|_{\widetilde{\mathcal{P}}}\) , we getwhich means that \(\omega\) is real. Fourth, by comparing the signs of (5.26) and (5.27), we conclude that the values of \(\omega + m\) and \(\omega - m\) can only be both positive or both negative.

\[\\begin{array}{l}{\\widetilde{\\Omega}[f_{\\lambda ,N};f_{\\lambda ,N}^{*}]\\neq 0}\\ {\\omega +m\\neq 0}\\ {\\omega^{*} + m\\neq 0}\\ {\\omega -m\\neq 0}\\ {\\omega -m^{*}\\neq 0.} \\end{array} \\quad (5.28)\]

\[\\omega = \\omega^{*}, \\quad (5.29)\]

So far, we have bounded the \((\omega ,m)\) of the modes to beorWe refer to the modes whose \((\omega ,m)\) satisfy (5.30) as the positive frequency modes. And we refer to the modes whose \((\omega ,m)\) satisfy (5.31) as the negative frequency modes.

\[\\begin{array}{l}\\omega +m > 0\\ \\omega -m > 0, \\end{array} \\quad (5.30)\]

\[\\begin{array}{l}\\omega +m< 0\\ \\omega -m< 0. \\end{array} \\quad (5.31)\]

![](Attachments/ca3518b761ca202b106898a19832c002c5fe259ff5c51151487fd237eba5424e.png)

We illustrate the bound of the \((\omega ,m)\) of the modes in the \((\omega ,m)\) coordinate system in Fig.1. There, we denote the regionby shading, which we refer to as the bounded region. We denote the region

\[\\left\\{(\\omega ,m)\\left|\\begin{array}{l l}{\\omega+m>0\]

\\[\\omega-m>0}\\end{array}\\right\\}\\bigcup \\left\\{(\\omega ,m)\\left|\\begin{array}{l l}{\\omega+m< 0\\] \\[\\omega-m< 0}\\end{array}\\right\\}\\right. \\quad (5.32)\\]

\[\\left\\{(\\omega ,m)\\left|\\begin{array}{l l}{\\omega+m>0\]

\[\omega-m>0}\end{array}\right\}\right. \quad (5.33)\]

by the symbol P, which we refer to as the positive region. And we denote the regionby the symbol \(N\) , which we refer to as the negative region.

\[\\left\\{(\\omega ,m)\\left|\\begin{array}{l l}{\\omega+m< 0\]

\\[\\omega-m< 0}\\end{array}\\right\\}\\right. \\quad (5.34)\\]

## 5.3.4 No mixing between the positive frequency modes and the negative frequency modes under the Killing symmetry transformations

We now show that, under the Killing symmetry transformations, the positive frequency modes and the negative frequency modes don't mix with each other. Namely, the positive frequency modes are only mapped to some positive frequency modes, and the negative frequency modes are only mapped to some negative frequency modes.

To show the aforementioned property, we first study the shift of the \((\omega ,m)\) of the modes under the Killing symmetry transformations. Specifically, by taking use of (7.3), (5.19), (5.20),(5.22), we get the following equationsFrom these equations (5.35), we read out the shift of the \((\omega , m)\) of the modes under the Killing symmetry transformations aswhich is illustrated in Fig.2. And, from the expressions (5.36) or from Fig.2, we furthermore see that the \((\omega , m)\) of the modes either stay fixed or shift in the direction of 45 degree in the \((\omega , m)\) coordinate system, under the Killing symmetry transformation.

\[\\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu} = -i\\omega \\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu} = i m\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu}}\\ \\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu} = -i(\\omega +1)\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu} = i(m + 1)\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu}} \\end{array} \\right.}\\ \\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu} = -i(\\omega -1)\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu} = i(m - 1)\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu}} \\end{array} \\right.}\\ \\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu} = -i\\omega \\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu} = i m\\mathcal{L}_{\\xi_{0}}f_{\\lambda ,N}{}^{\\mu}} \\end{array} \\right.}\\ \\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu} = -i(\\omega +1)\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu} = i(m - 1)\\mathcal{L}_{\\xi_{-1}}f_{\\lambda ,N}{}^{\\mu}} \\end{array} \\right.}\\ \\left\\{ \\begin{array}{l l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu} = -i(\\omega -1)\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu} = i(m + 1)\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,N}{}^{\\mu}} \\end{array} \\right.. \\end{array} \\right. \\quad (5.35)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}:(\\omega ,m)\\to (\\omega ,m)}\\ & {\\mathcal{L}_{\\xi_{-1}}:(\\omega ,m)\\to (\\omega +1,m + 1)}\\ & {\\mathcal{L}_{\\xi_{1}}:(\\omega ,m)\\to (\\omega -1,m - 1)}\\ & {\\mathcal{L}_{\\xi_{0}}:(\\omega ,m)\\to (\\omega ,m)}\\ & {\\mathcal{L}_{\\xi_{-1}}:(\\omega ,m)\\to (\\omega +1,m - 1)}\\ & {\\mathcal{L}_{\\xi_{1}}:(\\omega ,m)\\to (\\omega -1,m + 1),} \\end{array} \\quad (5.36)\]

We now show the property mentioned in the beginning of this subsubsection. Specifically, we consider the actions of the Killing symmetries to some given modes, which shift the \((\omega , m)\) of the modes in the aforementioned way. For the positive frequency modes whose \((\omega , m)\) are in the positive region of Fig.1, the shifted \((\omega , m)\) are either still in the positive region or out of the bounded region, but not in the negative region. It means that the positive frequency modes are either mapped to some positive frequency modes or being annihilated. While, for the negative frequency modes whose \((\omega , m)\) are in the negative region of Fig.1, the shifted \((\omega , m)\) are eitherstill in the negative region or out of the bounded region, but not in the positive region. It means that the negative frequency modes are either mapped to some negative frequency modes or being annihilated.

### 5.3.5 The expressions of the modes in the highest weight representations

We now solve the specific expressions of the modes. Here, we first focus on the modes in the highest weight representations. And, after solving out the highest weight representations, we can argue that there are no more modes.

Here, by the highest weight representations, we mean the following two kinds of representations, which we refer to as the positive representation and the negative representation. For each positive representation, we make the following requirements: first, the modes are all positive frequency modes whose \((\omega ,m)\) satisfy (5.30); second, there is a highest weight mode \(f_{+, \lambda ;0,0}^{\mu}\) satisfying

\[\\mathcal{L}_{\\xi_{1}}f_{+, \\lambda ;0,0}^{\\mu} = \\mathcal{L}_{\\bar{\\xi}_{1}}f_{+, \\lambda ;0,0}^{\\mu} = 0, \\quad (5.37)\]

where \(\lambda\) label the different positive representations; third, the other descendent modes \(f_{+, \lambda ;k,\bar{k}}^{\mu}\) can be generated by acting \(\mathcal{L}_{\xi_{- 1}}\) and \(\mathcal{L}_{\bar{\xi}_{- 1}}\) onto the highest weight mode \(f_{+, \lambda ;0,0}^{\mu}\) asWhile, for each negative representation, we make the following requirements: first, the modes are all negative frequency modes whose \((\omega ,m)\) satisfy (5.31); second, there is a highest weight mode \(f_{- , \lambda ;0,0}^{\mu}\) satisfying

\[f_{+, \\lambda ;k,\\bar{k}}^{\\mu} = \\# \\mathcal{L}_{\\xi_{-1}}k\\mathcal{L}_{\\bar{\\xi}_{-1}}^{\\bar{k}}f_{+, \\lambda ;0,0}^{\\mu}. \\quad (5.38)\]

\[\\mathcal{L}_{\\xi_{-1}}f_{- , \\lambda ;0,0}^{\\mu} = \\mathcal{L}_{\\bar{\\xi}_{-1}}f_{- , \\lambda ;0,0}^{\\mu} = 0, \\quad (5.39)\]

where \(\lambda\) label the different negative representations; third, the other descendent modes \(f_{- , \lambda ;k,\bar{k}}^{\mu}\) can be generated by acting \(\mathcal{L}_{\xi_{1}}\) and \(\mathcal{L}_{\bar{\xi}_{1}}\) onto the highest weight mode \(f_{- , \lambda ;0,0}^{\mu}\) asWe can solve the expressions of the modes in the highest weight representations by taking use of the Killing symmetries. Specifically, we first solve the expressions of the highest weight modes, by taking use of Killing symmetries (5.4), the expressions of the Casimir operators (5.12), (5.13), (5.14), (5.15), the eigenvalues of the Casimir "operators" (5.24), (5.25), and the requirements of the highest weight representations (5.30), (5.31), (5.37), (5.39). We then represent the descendent modes as acting \(\mathcal{L}_{\xi_{- 1}}\) , \(\mathcal{L}_{\bar{\xi}_{- 1}}\) , \(\mathcal{L}_{\xi_{1}}\) , \(\mathcal{L}_{\bar{\xi}_{1}}\) to the highest weight modes.

\[f_{- , \\lambda ;k,\\bar{k}}^{\\mu} = \\# \\mathcal{L}_{\\xi_{1}}k\\mathcal{L}_{\\bar{\\xi}_{1}}^{\\bar{k}}f_{- , \\lambda ;0,0}^{\\mu}. \\quad (5.40)\]

We now list the expressions of modes in the highest weight representations, their eigenvalues of the time shift symmetry \(\frac{\partial}{\partial t}\) and rotation symmetry \(\frac{\partial}{\partial \phi}\) , and their transformations under the Killing symmetries. We reorganize these expressions and properties according to the individual representations as the following:- Representation \(\mathrm{I}^{+}\) : the positive representation with the eigenvalues (5.24) of the Casimir "operators". The expressions of the modes are

\[\\begin{array}{l}{f_{+,u;0,0}^{\\mu} = \\sqrt{\\frac{\\mu + 1}{\\pi\\mu}}\\frac{e^{-i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu + 2}{2}}}\\xi_{1}^{\\mu},}\\ {f_{+,u;k,\\bar{k}}^{\\mu} = \\sqrt{\\frac{1}{k!\\mu_{k}\\bar{k}!(1 + 2)\\bar{k}}}\\mathcal{L}_{\\xi_{-1}}^{-k}\\mathcal{L}_{\\bar{\\xi}_{-1}}^{-k}\\bar{f}_{+,u;0,0}^{\\bar{k}}\\mu .} \\end{array} \\quad (5.41)\]

The eigenfunction equations of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial \phi}\) acting to the modes (5.41) areThe actions of the Killing symmetries to the modes (5.41) areThe detailed expressions of the modes are- Representation \(\mathrm{II}^{+}\) : the positive representation with the eigenvalues (5.25) of the Casimir "operators". The expressions of the modes areThe eigenfunction equations of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial \phi}\) acting to the modes (5.45) areThe actions of the Killing symmetries to the modes (5.45) areThe detailed expressions of the modes are- Representation \(\Gamma^{-}\) : the negative representation with the eigenvalues (5.24) of the Casimir "operators". The expressions of the modes are

\[\\begin{array}{l}{\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{+,u;k,\\bar{k}}^{\\mu} = -i(\\mu +1 + k + \\bar{k})f_{+,u;k,\\bar{k}}^{\\mu}}\\ {\\mathcal{L}_{\\frac{\\partial}{\\partial \\phi}}f_{+,u;k,\\bar{k}}^{\\mu} = i(-1 + k - \\bar{k})f_{+,u;k,\\bar{k}}^{\\mu}.} \\end{array} \\quad (5.42)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}f_{+,u;k,\\bar{k}}^{\\mu} = -i(\\frac{\\mu}{2} +k)f_{+,u;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{+,u;k,\\bar{k}}^{\\mu} = \\sqrt{(k + 1)(\\mu + k)} f_{+,u;k + 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{+,u;k,\\bar{k}}^{\\mu} = -\\sqrt{k(\\mu + k - 1)} f_{+,u;k - 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{0}}f_{+,u;k,\\bar{k}}^{\\mu} = -i(\\frac{\\mu}{2} +\\bar{k} +1)f_{+,u;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{-1}}f_{+,u;k,\\bar{k}}^{\\mu} = \\sqrt{(\\bar{k} + 1)(\\mu +\\bar{k} +2)} f_{+,u;k,\\bar{k} +1}^{\\mu}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{1}}f_{+,u;k,\\bar{k}}^{\\mu} = -\\sqrt{\\bar{k} (\\mu +\\bar{k} +1)} f_{+,u;k,\\bar{k} -1}^{\\mu}.} \\end{array} \\quad (5.43)\]

\[\\begin{array}{l}{f_{+,u;k,\\bar{k}}^{\\mu} = \\frac{1}{\\mu}\\sqrt{2(\\mu + k)(\\mu + k + 1)}\\phi_{\\mu +2, + ;k,\\bar{k}}\\xi_{1,}^{\\mu}}\\ {\\qquad +2i\\frac{1}{\\mu}\\sqrt{2k(\\mu + k)}\\phi_{\\mu +2, + ;k - 1,\\bar{k}}\\xi_{0,}^{\\mu}}\\ {\\qquad -\\frac{1}{\\mu}\\sqrt{2k(k - 1)}\\phi_{\\mu +2, + ;k - 2,\\bar{k}}\\xi_{-1,}^{\\mu}.} \\end{array} \\quad (5.44)\]

\[\\begin{array}{l}{f_{+,v;0,0}^{\\mu} = \\sqrt{\\frac{\\mu + 1}{\\pi\\mu}}\\frac{e^{-i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu + 2}{2}}}\\bar{\\xi}_{1,}^{\\mu}}\\ {f_{+,v;k,\\bar{k}}^{\\mu} = \\sqrt{\\frac{1}{k!(\\mu + 2)_{k}k!}\\mu_{k}}\\mathcal{L}_{\\xi_{-1}}^{-k}\\mathcal{L}_{\\bar{\\xi}_{-1}}^{-k}\\bar{f}_{+,v;0,0}^{\\mu}.} \\end{array} \\quad (5.45)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{+,v;k,\\bar{k}}^{\\mu} = -i(\\mu +1 + k + \\bar{k})f_{+,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial \\phi}}f_{+,v;k,\\bar{k}}^{\\mu} = i(1 + k - \\bar{k})f_{+,v;k,\\bar{k}}^{\\mu}.} \\end{array} \\quad (5.46)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}f_{+,v;k,\\bar{k}}^{\\mu} = -i\\big(\\frac{\\mu}{2} +k + 1\\big)f_{+,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{+,v;k,\\bar{k}}^{\\mu} = \\sqrt{(k + 1)(\\mu +k + 2)} f_{+,v;k + 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{+,v;k,\\bar{k}}^{\\mu} = -\\sqrt{k(\\mu +k + 1)} f_{+,v;k - 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{0}}f_{+,v;k,\\bar{k}}^{\\mu} = -i\\big(\\frac{\\mu}{2} +\\bar{k}\\big)f_{+,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{+,v;k,\\bar{k}}^{\\mu} = \\sqrt{(\\bar{k} +1)(\\mu +\\bar{k})} f_{+,v;k,\\bar{k} +1}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{+,v;k,\\bar{k}}^{\\mu} = -\\sqrt{\\bar{k} (\\mu +\\bar{k} -1)} f_{+,v;k,\\bar{k} -1}^{\\mu}.} \\end{array} \\quad (5.47)\]

\[\\begin{array}{r l} & {f_{+,v;k,\\bar{k}}^{\\mu} = \\frac{1}{\\mu}\\sqrt{2(\\mu +\\bar{k})(\\mu +\\bar{k} + 1)}\\phi_{\\mu +2, + ;k,\\bar{k}}\\bar{\\xi}_{1,\\mu}^{\\bar{\\xi}_{1,\\mu}}}\\ & {\\qquad +2i\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\mu +\\bar{k})}\\phi_{\\mu +2, + ;k,\\bar{k} -1}\\bar{\\xi}_{0,\\mu}^{\\bar{\\xi}_{0,\\mu}}}\\ & {\\qquad -\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\bar{k} -1)}\\phi_{\\mu +2, + ;k,\\bar{k} -2}\\bar{\\xi}_{-1,\\mu}^{\\bar{\\xi}_{-1,\\mu}}.} \\end{array} \\quad (5.48)\]

\[\\begin{array}{l}{f_{-,u;0,0}^{\\mu} = \\sqrt{\\frac{\\mu + 1}{\\pi\\mu}}\\frac{e^{i(\\mu +2)t}}{(r^{2} + 1)^{\\frac{\\mu + 2}{2}}}\\xi_{-1,}^{\\mu}}\\ {f_{-,u;k,\\bar{k}}^{\\mu} = \\sqrt{\\frac{1}{k!\\mu_{k}\\bar{k}!({\\mu + 2})_{\\bar{k}}}}\\mathcal{L}_{\\xi_{1}}k\\mathcal{L}_{\\bar{\\xi}_{1}}^{\\bar{k}}f_{-,u;0,0}^{\\mu}.} \\end{array} \\quad (5.49)\]

The eigenfunction equations of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial \phi}\) acting to the modes (5.49) areThe actions of the Killing symmetries to the modes (5.49) areThe detailed expressions of the modes are- Representation II-: the negative representation with the eigenvalues (5.25) of the Casimir "operators". The expressions of the modes are

\[\\begin{array}{r l} & {\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{-,u;k,\\bar{k}}^{\\mu} = -i(-\\mu -1 - k - \\bar{k})f_{-,u;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial \\phi}}f_{-,u;k,\\bar{k}}^{\\mu} = i(1 - k + \\bar{k})f_{-,u;k,\\bar{k}}^{\\mu}.} \\end{array} \\quad (5.50)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}f_{-,u;k,\\bar{k}}^{\\mu} = i\\big(\\frac{\\mu}{2} +k\\big)f_{-,u;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{-,u;k,\\bar{k}}^{\\mu} = -\\sqrt{k(\\mu + k - 1)} f_{-,u;k - 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{-,u;k,\\bar{k}}^{\\mu} = \\sqrt{(k + 1)(\\mu + k)} f_{-,u;k + 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{0}}f_{-,u;k,\\bar{k}}^{\\mu} = i\\big(\\frac{\\mu}{2} +\\bar{k} +1\\big)f_{-,u;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{-,u;k,\\bar{k}}^{\\mu} = -\\sqrt{\\bar{k} (\\mu +\\bar{k} +1)} f_{-,u;k;\\bar{k} -1}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{-,u;k,\\bar{k}}^{\\mu} = \\sqrt{(\\bar{k} +1)(\\mu +\\bar{k} +2)} f_{-,u;k,\\bar{k} +1}^{\\mu}.} \\end{array} \\quad (5.51)\]

\[\\begin{array}{r l} & {f_{-,u;k,\\bar{k}}^{\\mu} = \\frac{1}{\\mu}\\sqrt{2(\\mu + k)(\\mu + k + 1)}\\phi_{\\mu +2, - ;k,\\bar{k}}\\xi_{-1},}\\ & {\\qquad -2i\\frac{1}{\\mu}\\sqrt{2k(\\mu + k)}\\phi_{\\mu +2, - ;k - 1,\\bar{k}}\\xi_{0,}^{\\mu}}\\ & {\\qquad -\\frac{1}{\\mu}\\sqrt{2k(k - 1)}\\phi_{\\mu +2, - ;k - 2,\\bar{k}}\\xi_{1,}^{\\mu}.} \\end{array} \\quad (5.52)\]

\[\\begin{array}{l}{f_{-,v;0,0}^{\\mu} = \\sqrt{\\frac{\\mu + 1}{\\pi\\mu}}\\frac{e^{i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu + 2}{2}}}\\bar{\\xi}_{-1}^{\\mu}}\\ {f_{-,v;k,\\bar{k}}^{\\mu} = \\sqrt{\\frac{1}{k!(\\mu + 2)k!k!}\\mathcal{L}_{\\xi_{1}}^{\\mu}\\mathcal{L}_{\\bar{\\xi}_{1}}^{\\bar{k}}f_{-,v;0,0}^{\\bar{k}}}.} \\end{array} \\quad (5.53)\]

The eigenfunction equations of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial \phi}\) acting to the modes (5.53) areThe actions of the Killing symmetries to the modes (5.53) areThe detailed expressions of the modes areWe now provide some explanations for the aforementioned expressions:

\[\\begin{array}{r l} & {\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{-,v;k,\\bar{k}}^{\\mu} = -i(-\\mu -1 - k - \\bar{k})f_{-,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial \\phi}}f_{-,v;k,\\bar{k}}^{\\mu} = i(-1 - k + \\bar{k})f_{-,v;k,\\bar{k}}^{\\mu}.} \\end{array} \\quad (5.54)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}f_{-,v;k,\\bar{k}}^{\\mu} = i\\big(\\frac{\\mu}{2} +k + 1\\big)f_{-,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{-,v;k,\\bar{k}}^{\\mu} = -\\sqrt{k(\\mu + k + 1)} f_{-,v;k - 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{-,v;k,\\bar{k}}^{\\mu} = \\sqrt{(k + 1)(\\mu + k + 2)} f_{-,v;k + 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{0}}f_{-,v;k,\\bar{k}}^{\\mu} = i\\big(\\frac{\\mu}{2} +\\bar{k}\\big)f_{-,v;k,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{-1}}f_{-,v;k,\\bar{k}}^{\\mu} = -\\sqrt{\\bar{k} (\\mu +\\bar{k} - 1)} f_{-,v;k - 1,\\bar{k}}^{\\mu}}\\ & {\\mathcal{L}_{\\xi_{1}}f_{-,v;k,\\bar{k}}^{\\mu} = \\sqrt{(\\bar{k} + 1)(\\mu +\\bar{k})} f_{-,v;k,\\bar{k} +1}^{\\mu}.} \\end{array} \\quad (5.55)\]

\[\\begin{array}{r l} & {f_{- , v;k,\\bar{k}}^{\\mu} = \\frac{1}{\\mu}\\sqrt{2(\\mu +\\bar{k})(\\mu +\\bar{k} +1)}\\phi_{\\mu +2, - ;k,\\bar{k}}\\bar{\\xi}_{-1}^{\\bar{\\xi}},}\\ & {\\qquad -2i\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\mu +\\bar{k})}\\phi_{\\mu +2, - ;k,\\bar{k} -1}\\bar{\\xi}_{0}^{\\mu},}\\ & {\\qquad -\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\bar{k} -1)}\\phi_{\\mu +2, - ;k,\\bar{k} -2}\\bar{\\xi}_{1}^{\\mu}.} \\end{array} \\quad (5.56)\]

\(\lambda_{n}\) denotes- The subscript \(+ / -\) denotes that the modes are in a positive/negative representation.

\[\\lambda_{n} = \\lambda (\\lambda +1)\\dots (\\lambda +n - 1) = \\frac{\\Gamma(\\lambda + n)}{\\Gamma(\\lambda)}. \\quad (5.57)\]

- The subscript \(u / v\) labels the representations of the modes. It also manifests the polarizations of modes in the near boundary region. To be more precise, we introduce a boundary coordinate system \((u,v)\) such thatWe introduce the vector fields along the coordinates \((u,v)\) asAnd the expressions of the modes \(f_{+(- ),u,k,\bar{k}}^{\mu} / f_{+(- ),v,k,\bar{k}}^{\mu}\) viewed as vector fields are along \(\frac{\partial}{\partial u} /\frac{\partial}{\partial v}\) in the near boundary region.

\[\\begin{array}{l}{u = t - \\phi}\\ {v = t + \\phi .} \\end{array} \\quad (5.58)\]

\[\\begin{array}{l}{\\frac{\\partial}{\\partial u} = \\frac{1}{2}\\frac{\\partial}{\\partial t} -\\frac{1}{2}\\frac{\\partial}{\\partial\\phi}}\\ {\\frac{\\partial}{\\partial v} = \\frac{1}{2}\\frac{\\partial}{\\partial t} +\\frac{1}{2}\\frac{\\partial}{\\partial\\phi}.} \\end{array} \\quad (5.59)\]

\(\phi_{\Delta , + / - ;k,\bar{k}}\) are defined as (D.10) and (D.15).

- \(f_{+ / - ,u / v;k,\bar{k}}\) and \(\phi_{\Delta , + / - ;k,\bar{k}}\) , with \(k = \ldots , - 2, - 1\) or \(\bar{k} = \ldots , - 2, - 1\) , are viewed as zero. Under this viewpoint, the expressions (5.43), (5.44), (5.47), (5.48), (5.51), (5.52), (5.55), (5.56) work for \(k\) , \(\bar{k}\) taking any real integer values.

- The \((\omega ,m)\) values of the modes can be read out from the eigenfunction equations of the time shift symmetry \(\frac{\partial}{\partial t}\) and the rotation symmetry \(\frac{\partial}{\partial \phi}\) acting to the modes similar as the equation (5.22).

- With the non-vanishing of the modes \(f_{+ / - ,u / v;k,\bar{k}}^{\mu}\) , for \(k,\bar{k} = 0,1,2,\ldots\) , we can argue that there are no more modes.

- The normalizations of the modes are chosen for the convenience of the discussion below.

- The modes in the positive representations and in the negative representations satisfy the following conjugate relations- See Appendix F for more materials about the modes in the highest weight representation-s, including: a derivation for the expressions of the highest weight modes in Appendix F.1, the asymptotic behaviors of the modes in the near boundary region in Appendix ??, and an argument that there are no more modes in Appendix F.2.

\[\\begin{array}{r l} & {f_{- ,u;k,\\bar{k}}^{\\mu} = (f_{+ ,u;k,\\bar{k}}^{\\mu})^{*}}\\ & {f_{- ,v;k,\\bar{k}}^{\\mu} = (f_{+ ,v;k,\\bar{k}}^{\\mu})^{*}.} \\end{array} \\quad (5.60)\]

### 5.4 Computing the expression of the symplectic form

{twoform}

We now compute the expression of the symplectic form. More precisely, we compute the values of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9) with the two slots applied with the modes listed in subsubsection 5.3.5.

We first provide a selection rule. And, with the selection rule, we figure out the possibly non- zero components of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) . Specifically, we consider two modes \(f_{1}^{\mu}\) , \(f_{2}^{\mu}\) , which satisfy the following eigenfunction equations of the Casimir "operators", the time shift symmetry, and the rotation symmetry asandFor the two modes \(f_{1}\) , \(f_{2}\) , we derive the following equations for the corresponding componentof the two form \(\widetilde{\Omega} [f_{1};f_{2}]|_{\widetilde{\mathcal{P}}}\) asandandandAnd, from these equations (5.63), (5.64), (5.65), (5.66), we read out a selection rule: The component of the two form \(\widetilde{\Omega} [f_{1};f_{2}]|_{\widetilde{\mathcal{P}}}\) can be non- zero only whenBy applying the modes listed in subsubsection 5.3.5 to this selection rule, we figure out that the possibly non- zero components of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) can only befor \(k, \bar{k} = 0, 1, 2, \ldots\)

\[\\begin{array}{r l} & {\\mathcal{C}f_{1}^{\\mu} = C_{1}f_{1}^{\\mu}}\\ & {\\overline{{\\mathcal{C}}} f_{1}^{\\mu} = \\overline{{C}}_{1}f_{1}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{1}^{\\mu} = -i\\omega_{1}f_{1}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}f_{1}^{\\mu} = i m_{1}f_{1}^{\\mu},} \\end{array} \\quad (5.61)\]

\[\\begin{array}{r l} & {\\mathcal{C}f_{2}^{\\mu} = C_{2}f_{2}^{\\mu}}\\ & {\\overline{{\\mathcal{C}}} f_{2}^{\\mu} = \\overline{{C}}_{2}f_{2}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{2}^{\\mu} = -i\\omega_{2}f_{2}^{\\mu}}\\ & {\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}f_{1}^{\\mu} = i m_{2}f_{2}^{\\mu}.} \\end{array} \\quad (5.62)\]

\[\\begin{array}{r l} & {C_{1}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [\\mathcal{C}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [(\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}} + i\\mathcal{L}_{\\xi_{0}})f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} - \\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} + i\\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{0}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}}f_{2}]|_{\\widetilde{\\mathcal{P}}} - \\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{1}}\\mathcal{L}_{\\xi_{-1}}f_{2}]|_{\\widetilde{\\mathcal{P}}} - i\\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{0}}f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};(\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{1}}\\mathcal{L}_{\\xi_{-1}} - i\\mathcal{L}_{\\xi_{0}})f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};\\mathcal{C}f_{2}]|_{\\widetilde{\\mathcal{P}}} = C_{2}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}},} \\end{array} \\quad (5.63)\]

\[\\begin{array}{r l} & {\\widetilde{C}_{1}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [\\widetilde{\\mathcal{C}} f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [(\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}} + i\\mathcal{L}_{\\xi_{0}})f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} - \\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} + i\\widetilde{\\Omega} [\\mathcal{L}_{\\xi_{0}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}}f_{2}]|_{\\widetilde{\\mathcal{P}}} - \\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{1}}\\mathcal{L}_{\\xi_{-1}}f_{2}]|_{\\widetilde{\\mathcal{P}}} - i\\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{0}}f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\xi_{0}}\\mathcal{L}_{\\xi_{0}} - \\mathcal{L}_{\\xi_{1}}\\mathcal{L}_{\\xi_{-1}} - i\\mathcal{L}_{\\xi_{0}})f_{2}]|_{\\widetilde{\\mathcal{P}}}}\\ & {= \\widetilde{\\Omega} [f_{1};\\widetilde{C} f_{2}]|_{\\widetilde{\\mathcal{P}}} = \\widetilde{C}_{2}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}},} \\end{array} \\quad (5.64)\]

\[-i\\omega_{1}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\frac{\\partial}{\\partial t}}f_{2}]|_{\\widetilde{\\mathcal{P}}} = i\\omega_{2}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}}, \\quad (5.65)\]

\[i m_{1}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{1};\\mathcal{L}_{\\frac{\\partial}{\\partial\\phi}}f_{2}]|_{\\widetilde{\\mathcal{P}}} = -i m_{2}\\widetilde{\\Omega} [f_{1};f_{2}]|_{\\widetilde{\\mathcal{P}}} \\quad (5.66)\]

\[\\begin{array}{r l} & {C_{1} - C_{2} = 0}\\ & {\\overline{{C}}_{1} - \\overline{{C}}_{2} = 0}\\ & {\\omega_{1} + \\omega_{2} = 0}\\ & {m_{1} + m_{2} = 0.} \\end{array} \\quad (5.67)\]

\[\\begin{array}{r l} & {\\widetilde{\\Omega} [f_{+,u;k,\\bar{k}};f_{-,u;k,\\bar{k}}]|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,u;k,\\bar{k}};f_{+,u;k,\\bar{k}}]}\\ & {\\widetilde{\\Omega} [f_{+,v;k,\\bar{k}};f_{-,v;k,\\bar{k}}]|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,v;k,\\bar{k}};f_{+,v;k,\\bar{k}}],} \\end{array} \\quad (5.68)\]

We now compute the possibly non- zero components of the symplectic form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) in (5.68). First, by applying the primary modes in (5.41), (5.45), (5.49), (5.53) to the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) in (4.9), we computeSecond, by respectively applying the setsto (4.22) in the position ofand by taking use of the actions of the Killing symmetries (5.43), (5.47), (5.51), (5.55), we get the following recursion relations as

\[\\begin{array}{r l} & {\\widetilde{\\Omega} [f_{+,u;0,0},f_{-,u;0,0}]\\big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,u;0,0},f_{+,u;0,0}]\\big|_{\\widetilde{\\mathcal{P}}} = -i}\\ & {\\widetilde{\\Omega} [f_{+,v;0,0},f_{-,v;0,0}]\\big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,v;0,0},f_{+,v;0,0}]\\big|_{\\widetilde{\\mathcal{P}}} = -i.} \\end{array} \\quad (5.69)\]

\[\\begin{array}{r l} & {(f_{+,u;k,\\bar{k}}^{\\mu},f_{-,u;k + 1,\\bar{k}}^{\\mu},\\xi_{-1}^{\\mu})\\ & {(f_{+,u;k,\\bar{k}}^{\\mu},f_{-,u;k,\\bar{k} +1}^{\\mu},\\bar{\\xi}_{-1}^{\\mu})\\ & {(f_{+,v;k,\\bar{k}}^{\\mu},f_{-,v;k + 1,\\bar{k}}^{\\mu},\\bar{\\xi}_{-1}^{\\mu})\\ & {(f_{+,v;k,\\bar{k}}^{\\mu},f_{-,v;k,\\bar{k} +1}^{\\mu},\\bar{\\xi}_{-1}^{\\mu})} \\end{array} \\quad (5.70)\]

\[(A_{1}^{\\mu},A_{2}^{\\mu},\\xi), \\quad (5.71)\]

\[\\begin{array}{r l} & {\\widetilde{\\Omega} [f_{+,u;k + 1,\\bar{k}};f_{-,u;k + 1,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [f_{+,u;k,\\bar{k}};f_{-,u;k,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}}}\\ & {\\widetilde{\\Omega} [f_{+,u;k,\\bar{k} +1};f_{-,u;k,\\bar{k} +1}]\\big|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [f_{+,u;k,\\bar{k}};f_{-,u;k,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}}}\\ & {\\widetilde{\\Omega} [f_{+,v;k + 1,\\bar{k}};f_{-,v;k + 1,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}} = \\widetilde{\\Omega} [f_{+,v;k,\\bar{k}};f_{-,v;k,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}}.} \\end{array} \\quad (5.72)\]

Finally, by combining (5.69) and (5.72), we get the non- zero components of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9) as

\[\\begin{array}{r l} & {\\widetilde{\\Omega} [f_{+,u;k,\\bar{k}},f_{-,u;k^{\\prime},\\bar{k^{\\prime}}}]\\big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,u;k^{\\prime},\\bar{k^{\\prime}}},f_{+,u;k,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}} = -i\\delta_{k,k^{\\prime}}\\delta_{\\bar{k},\\bar{k^{\\prime}}}}\\ & {\\widetilde{\\Omega} [f_{+,v;k,\\bar{k}},f_{-,v;k^{\\prime},\\bar{k^{\\prime}}}]\\big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [f_{-,v;k^{\\prime},\\bar{k^{\\prime}}},f_{+,v;k,\\bar{k}}]\\big|_{\\widetilde{\\mathcal{P}}} = -i\\delta_{k,k^{\\prime}}\\delta_{\\bar{k},\\bar{k^{\\prime}}}.} \\end{array} \\quad (5.73)\]

### 5.5 The Hamiltonian system

So far, we have computed all elements appearing in the framework in subsection 5.1. We now apply them therein and represent the Hamiltonian system.

Specifically, by applying the set of modes listed in subsubsection 5.3.5 to (5.1), we get the general solution in the form of a mode expansion as

\[\\begin{array}{r l} & {A^{\\mu}(x)\\big|_{\\widetilde{\\mathcal{P}}} = \\sum_{k,\\bar{k} = 0}^{+\\infty}\\Big(f_{+,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}} + f_{+,v;k,\\bar{k}}^{\\mu}(x)a_{v;k,\\bar{k}}}\\ & {\\qquad +f_{-,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}}^{*} + f_{-,v;k,\\bar{k}}^{\\mu}(x)a_{v;k,\\bar{k}}^{*}\\Big),} \\end{array} \\quad (5.74)\]

which is real benefitting from the conjugate relation (5.60). With the mode expansion (5.74), we view the coefficientsas a set of variables that parameterize the pre- phase space \(\widetilde{\mathcal{P}}\) . And, by applying the components of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widetilde{\mathcal{P}}}\) (4.9) computed in subsection 5.4 to (5.2), we get the symplectic form of the pre- phase space as

\[(a_{u,k,\\bar{k}},a_{v,k,\\bar{k}},a_{u,k,\\bar{k}}^{*},a_{v,k,\\bar{k}}^{*}) \\quad (5.75)\]

\[\\Omega |_{\\widetilde{\\mathcal{P}}} = \\sum_{k,\\bar{k} = 0}^{+\\infty} - i\\Big(\\delta_{1}a_{u;k,\\bar{k}}\\delta_{2}a_{u;k,\\bar{k}}^{*} - \\delta_{1}a_{u;k,\\bar{k}}^{*}\\delta_{2}a_{u;k,\\bar{k}} + \\delta_{1}a_{v;k,\\bar{k}}\\delta_{2}a_{v;k,\\bar{k}}^{*} - \\delta_{1}a_{v;k,\\bar{k}}^{*}\\delta_{2}a_{v;k,\\bar{k}}\\Big). \\quad (5.76)\]

We represent the Hamiltonian system with the general solution (5.74), the set of variables (5.75), and the symplectic form (5.76).

We now represent the Hamiltonian system in the canonical formalism. Since the symplectic form (5.76) is non- degenerate, the physical phase space is exactly the pre- phase space \(\widetilde{\mathcal{P}}\) . We then read out the brackets from the symplectic form (5.76). Specifically, by taking use of the Hamiltonian equationwe getAnd by applying (5.78) to (2.7), we compute the brackets between the set of variables (5.75) whose non- zero components are

\[\\begin{array}{r l} & {X_{a_{u;k,\\bar{k}}}\\cdot \\Omega \\Big|_{\\widetilde{\\mathcal{P}}} = -\\delta a_{u;k,\\bar{k}}\\Big|_{\\widetilde{\\mathcal{P}}}}\\ & {X_{a_{u;k,\\bar{k}}^{*}}\\cdot \\Omega \\Big|_{\\widetilde{\\mathcal{P}}} = -\\delta a_{u;k,\\bar{k}}^{*}\\Big|_{\\widetilde{\\mathcal{P}}}}\\ & {X_{a_{v;k,\\bar{k}}}\\cdot \\Omega \\Big|_{\\widetilde{\\mathcal{P}}} = -\\delta a_{v;k,\\bar{k}}\\Big|_{\\widetilde{\\mathcal{P}}}}\\ & {X_{a_{v;k,\\bar{k}}^{*}}\\cdot \\Omega \\Big|_{\\widetilde{\\mathcal{P}}} = -\\delta a_{v;k,\\bar{k}}^{*}\\Big|_{\\widetilde{\\mathcal{P}}},} \\end{array} \\quad (5.77)\]

\[\\begin{array}{r l} & {X_{a_{u;k,\\bar{k}}}\\Big|_{\\widetilde{\\mathcal{P}}} = i\\frac{\\delta}{\\delta a_{u;k,\\bar{k}}^{*}}}\\ & {X_{a_{v;k,\\bar{k}}}\\Big|_{\\widetilde{\\mathcal{P}}} = -i\\frac{\\delta}{\\delta a_{u;k,\\bar{k}}}}\\ & {X_{a_{u;k,\\bar{k}}^{*}}\\Big|_{\\widetilde{\\mathcal{P}}} = -i\\frac{\\delta}{\\delta a_{v;k,\\bar{k}}^{*}}.} \\end{array} \\quad (5.78)\]

\[\\begin{array}{r l} & {\\{a_{u;k,\\bar{k}},a_{u;k^{\\prime},\\bar{k}^{\\prime}}^{*}\\} |_{\\widehat{\\mathcal{P}}} = -\\{a_{u;k^{\\prime},\\bar{k}^{\\prime}}^{*},a_{u;k,\\bar{k}}\\} |_{\\widehat{\\mathcal{P}}} = -i\\delta_{k,k^{\\prime}}\\delta_{\\bar{k},\\bar{k}^{\\prime}}}\\ & {\\{a_{v;k,\\bar{k}},a_{v;k^{\\prime},\\bar{k}^{\\prime}}^{*}\\} |_{\\widehat{\\mathcal{P}}} = -\\{a_{v;k^{\\prime},\\bar{k}^{\\prime}}^{*},a_{v;k,\\bar{k}}\\} |_{\\widehat{\\mathcal{P}}} = -i\\delta_{k,k^{\\prime}}\\delta_{\\bar{k},\\bar{k}^{\\prime}}.} \\end{array} \\quad (5.79)\]

### 5.6 The Noether charges of the Killing symmetries

For the completeness of the discussion, we now compute the expressions of the Noether charges of the Killing symmetries.

Specifically, by applying (5.74) to (4.25) and by taking use of the components of the two form \(\widetilde{\Omega} [\cdot ;\cdot ]|_{\widehat{\mathcal{P}}}\) computed in subsection 5.4, we get the expressions of the Noether charges of the Killing symmetries as

\[\\begin{array}{r l}&{Q_{\\xi_{1}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[-i\\sqrt{(k+1)(\\mu+k)}a_{u;k,k}^{*}\\cdot a_{u;k+1,\\bar{k}}-i\\sqrt{(k+1)(\\mu+k+2)}a_{v;k,k}^{*}\\cdot a_{v;k+1,\\bar{k}}\\right]}\\ &{Q_{\\xi_{0}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[(\\frac{\\mu}{2}+k)a_{u;k,k}^{*}\\cdot a_{u;k,\\bar{k}}+(\\frac{\\mu}{2}+k+1)a_{v;k,k}^{*}\\cdot a_{v;k,\\bar{k}}\\right]}\\ &{Q_{\\xi_{-1}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[i\\sqrt{(k+1)(\\mu+k)}a_{u;k+1,\\bar{k}}^{*}\\cdot a_{u;k,\\bar{k}}+i\\sqrt{(k+1)(\\mu+k+2)}a_{v;k+1,\\bar{k}}^{*}\\cdot a_{v;k,\\bar{k}}\\right]}\\ &{Q_{\\xi_{1}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[-i\\sqrt{(k+1)(\\mu+\\bar{k}+2)}a_{u;k,k}^{*}\\cdot a_{u;k,\\bar{k}+1}-i\\sqrt{(k+1)(\\mu+\\bar{k})}a_{v;k,k}^{*}\\cdot a_{v;k,\\bar{k}+1}\\right]}\\ &{Q_{\\xi_{0}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[(\\frac{\\mu}{2}+\\bar{k}+1)a_{u;k,k}^{*}\\cdot a_{u;k,\\bar{k}}+(\\frac{\\mu}{2}+\\bar{k})a_{v;k,k}^{*}\\cdot a_{v;k,\\bar{k}}\\right]}\\ &{Q_{\\xi_{-1}}|_{\\widehat{\\mathcal{P}}}=\\sum_{k,k=0}^{+\\infty}\\left[i\\sqrt{(k+1)(\\mu+\\bar{k}+2)}a_{u;k,\\bar{k}+1}^{*}\\cdot a_{u;k,\\bar{k}}+i\\sqrt{(k+1)(\\mu+\\bar{k})}a_{v;k,\\bar{k}+1}^{*}\\cdot a_{v;k,\\bar{k}}\\right].}\\end{array} \\quad (5.80)\]

With these expressions (5.80), we compute the brackets in terms of the Noether charges asandHere, in the derivation, we have also used the actions of the Killing symmetries to the modes (5.43), (5.47), (5.51), (5.55) and brackets between the set of variables (5.79). And these equations (5.81), (5.82) are consistent with the Noether's theorem.

\[\\{Q_{\\xi},A^{\\mu}(x)\\} |_{\\widehat{\\mathcal{P}}} = -{\\mathcal{L}}_{\\xi}A^{\\mu}(x)|_{\\widehat{\\mathcal{P}}}, \\quad (5.81)\]

\[\\{Q_{\\xi},Q_{\\xi}\\} |_{\\widehat{\\mathcal{P}}} = Q_{\\{\\xi ,\\bar{\\xi}\\}} |_{\\widehat{\\mathcal{P}}}. \\quad (5.82)\]

### 6 Canonical quantization

So far, we have reformulated our model to a Hamiltonian system. We now take a canonical quantization for the Hamiltonian system. And, through the canonical quantization, we promote the Hamiltonian system to a quantum mechanical system.

\[\\begin{array}{l}{{A^{\\mu}(x)=\\sum_{k,\\bar{k}=0}^{\\infty}\\left(f_{+,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}}+f_{+,v;k,\\bar{k}}^{\\mu}(x)a_{v;n,\\bar{n}}\\right.}}\\ {{\\left.\\qquad+f_{-,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}}^{\\dagger}+f_{-,v;k,\\bar{k}}^{\\mu}(x)a_{v;k,\\bar{k}}^{\\dagger}\\right)}}\\end{array} \\quad (6.1)\]

The non- zero commutators areWe define the vacuum state as \(|0\rangle\) such thatWe can construct the excited states by acting the creation operators \(a_{u;k,\bar{k}}^{\dagger}\) , \(a_{v;k,\bar{k}}^{\dagger}\) , for \(k,\bar{k} = 0,1,2,\dots\) , onto the vacuum state \(|0\rangle\) asSo far, we have quantized the free massive vector field in the global AdS \(^3\) spacetime. In the following, we will provide some applications for the quantized theory.

\[[a_{u;k,\\bar{k}},a_{u;k^{\\prime},\\bar{k^{\\prime}}}^{\\dagger}] = [a_{v;k,\\bar{k}},a_{v;k^{\\prime},\\bar{k^{\\prime}}}^{\\dagger}] = \\delta_{k,k^{\\prime}}\\delta_{\\bar{k},\\bar{k^{\\prime}}} \\quad (6.2)\]

\[a_{u;k,\\bar{k}}|0\\rangle = a_{v;k,\\bar{k}}|0\\rangle = 0. \\quad (6.3)\]

\[|\\{n\\} \\rangle = \\prod_{k,\\bar{k} = 0}^{+\\infty}\\left(\\frac{1}{\\sqrt{n_{u;k,\\bar{k}}!}}\\big(a_{u;k,\\bar{k}}\\big)^{\\dagger n_{u;k,\\bar{k}}}\\frac{1}{\\sqrt{n_{v;k,\\bar{k}}!}}\\big(a_{v;k,\\bar{k}}\\big)^{\\dagger n_{v;k,\\bar{k}}}\\right)|0\\rangle \\quad (6.4)\]

### 7 Application I: the Euclidean correlation function

In this section, we compute the Euclidean correlation function. \(^{18}\) We compare the result with the correlation defined in the path integral formulation and solved from the Green function equation [19].

### 7.1 The Euclidean spacetime

\[d s_{E}^{2} = (r^{2} + 1)d t_{E}^{2} + \\frac{d r^{2}}{r^{2} + 1} +r^{2}d\\phi^{2}. \\quad (7.1)\]

\[\\begin{align*} \\xi_{E;1} &= \\frac{1}{2} e^{t_E - i\\phi} \\left( i \\frac{r}{\\sqrt{r^2 + 1}} \\frac{\\partial}{\\partial t_E} - i \\sqrt{r^2 + 1} \\frac{\\partial}{\\partial r} - \\frac{\\sqrt{r^2 + 1}}{r} \\frac{\\partial}{\\partial \\phi} \\right) \\ \\xi_{E;0} &= \\frac{1}{2} \\left( i \\frac{\\partial}{\\partial t_E} - \\frac{\\partial}{\\partial \\phi} \\right) \\ \\xi_{E;-1} &= \\frac{1}{2} e^{-t_E + i\\phi} \\left( i \\frac{r}{\\sqrt{r^2 + 1}} \\frac{\\partial}{\\partial t_E} + i \\sqrt{r^2 + 1} \\frac{\\partial}{\\partial r} - \\frac{\\sqrt{r^2 + 1}}{r} \\frac{\\partial}{\\partial \\phi} \\right) \\ \\bar{\\xi}_{E;1} &= \\frac{1}{2} e^{t_E + i\\phi} \\left( i \\frac{r}{\\sqrt{r^2 + 1}} \\frac{\\partial}{\\partial t_E} - i \\sqrt{r^2 + 1} \\frac{\\partial}{\\partial r} + \\frac{\\sqrt{r^2 + 1}}{r} \\frac{\\partial}{\\partial \\phi} \\right) \\ \\bar{\\xi}_{E;0} &= \\frac{1}{2} \\left( i \\frac{\\partial}{\\partial t_E} + \\frac{\\partial}{\\partial \\phi} \\right) \\ \\bar{\\xi}_{E;-1} &= \\frac{1}{2} e^{-t_E - i\\phi} \\left( i \\frac{r}{\\sqrt{r^2 + 1}} \\frac{\\partial}{\\partial t_E} + i \\sqrt{r^2 + 1} \\frac{\\partial}{\\partial r} + \\frac{\\sqrt{r^2 + 1}}{r} \\frac{\\partial}{\\partial \\phi} \\right) \\end{align*}\]

\[\\begin{align*} [\\xi_{E;0}, \\xi_{E;1}] &= i\\xi_{E;1} \\ [\\xi_{E;0}, \\xi_{E;-1}] &= -i\\xi_{E;-1} \\ [\\xi_{E;1}, \\xi_{E;-1}] &= -2i\\xi_{E;0} \\ [\\bar{\\xi}_{E;0}, \\bar{\\xi}_{E;1}] &= i\\bar{\\xi}_{E;1} \\ [\\bar{\\xi}_{E;0}, \\bar{\\xi}_{E;-1}] &= -i\\bar{\\xi}_{E;-1} \\ [\\bar{\\xi}_{E;1}, \\bar{\\xi}_{E;-1}] &= -2i\\bar{\\xi}_{E;0}. \\end{align*}\]

\[\\begin{align*} g_{E;1}^{\\mu\\nu} &= 2\\xi_{E;-1,1}^{\\mu}\\xi_{E;1,1}^{\\nu} + 2\\xi_{E;1,1}^{\\mu}\\xi_{E;-1,1}^{\\nu} - 4\\xi_{E;0,1}^{\\mu}\\xi_{E;0,1}^{\\nu} \\ &= 2\\bar{\\xi}_{E;-1,1}^{\\mu}\\bar{\\xi}_{E;1,1}^{\\nu} + 2\\bar{\\xi}_{E;1,1}^{\\mu}\\bar{\\xi}_{E;-1,1}^{\\nu} - 4\\bar{\\xi}_{E;0,1}^{\\mu}\\bar{\\xi}_{E;0,1}^{\\nu} \\end{align*}\]

\[\\tilde{\\epsilon}_{E;t_E r\\phi} = \\tilde{\\epsilon}_{E;r\\phi t_E} = \\tilde{\\epsilon}_{E;\\phi t_E r} = -\\tilde{\\epsilon}_{E;rt_E\\phi} = -\\tilde{\\epsilon}_{E;t_E\\phi r} = -\\tilde{\\epsilon}_{E;\\phi rt_E} = r\]

\[\\nabla_{\\mu} \\xi_{E;a,\\nu} = i \\tilde{\\epsilon}_{E;\\mu \\nu \\rho} \\xi_{E;a,\\rho}\]

\[\\nabla_{\\mu} \\bar{\\xi}_{E;a,\\nu} = -i \\tilde{\\epsilon}_{E;\\mu \\nu \\rho} \\bar{\\xi}_{E;a,\\rho}\]

\[\\begin{align*} \\tilde{\\epsilon}_{E;\\mu\\nu\\rho}\\xi_{E;1,1}^{\\rho} &= 2(\\xi_{E;1,\\mu}\\xi_{E;0,\\nu} - \\xi_{E;0,\\mu}\\xi_{E;1,\\nu}) \\ \\tilde{\\epsilon}_{E;\\mu\\nu\\rho}\\xi_{E;0,1}^{\\rho} &= \\xi_{E;1,\\mu}\\xi_{E;-1,\\nu} - \\xi_{E;-1,\\mu}\\xi_{E;1,\\nu} \\ \\tilde{\\epsilon}_{E;\\mu\\nu\\rho}\\xi_{E;-1,1}^{\\rho} &= 2(\\xi_{E;0,\\mu}\\xi_{E;-1,\\nu} - \\xi_{E;-1,\\mu}\\xi_{E;0,\\nu}) \\end{align*}\]

\[\\{ \\exp iu \\}\]

\[\\begin{array}{r l} & {\\widetilde{\\epsilon}_{E;\\mu \\nu}\\widetilde{\\epsilon}_{E,1}^{\\prime \\prime}{}^{\\rho} = 2(-\\widetilde{\\epsilon}_{E;1,\\mu}\\widetilde{\\epsilon}_{E;0,\\nu} + \\widetilde{\\epsilon}_{E;0,\\mu}\\widetilde{\\epsilon}_{E;1,\\nu})}\\ & {\\widetilde{\\epsilon}_{E;\\mu \\nu}\\widetilde{\\epsilon}_{E;0}^{\\prime \\prime}{}^{\\rho} = -\\widetilde{\\epsilon}_{E;1,\\mu}\\widetilde{\\epsilon}_{E; - 1,\\nu} + \\widetilde{\\epsilon}_{E; - 1,\\mu}\\widetilde{\\epsilon}_{E;1,\\nu}}\\ & {\\widetilde{\\epsilon}_{E;\\mu \\nu}\\widetilde{\\epsilon}_{E; - 1}^{\\prime \\prime}{}^{\\rho} = 2(-\\widetilde{\\epsilon}_{E;0,\\mu}\\widetilde{\\epsilon}_{E; - 1,\\nu} + \\widetilde{\\epsilon}_{E; - 1,\\mu}\\widetilde{\\epsilon}_{E;0,\\nu})} \\end{array} \\quad (7.9)\]

### 7.2 The correlation function

\[\\begin{array}{r l} & {A_{E}^{t^{E}}(t_{E},r,\\phi) = i A^{t}(t = -i t_{E},r,\\phi)}\\ & {A_{E}^{r^{T}}(t_{E},r,\\phi) = A^{r}(t = -i t_{E},r,\\phi)}\\ & {A_{E}^{\\phi}(t_{E},r,\\phi) = A^{\\phi}(t = -i t_{E},r,\\phi).} \\end{array} \\quad (7.10)\]

\[\\begin{array}{r l} & {A_{E}^{\\mu}(x)|\\widetilde{\\rho} = \\sum_{k,\\bar{k} = 0}^{\\infty}\\left(f_{E; + ,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}} + f_{E; + ,v;k,\\bar{k}}^{\\mu}(x)a_{v;n,\\bar{n}}\\right.}\\ & {\\qquad \\left. + f_{E; - ,u;k,\\bar{k}}^{\\mu}(x)a_{u;k,\\bar{k}}^{\\dagger} + f_{E; - ,v;k,\\bar{k}}^{\\mu}(x)a_{v;k,\\bar{k}}^{\\dagger}\\right)} \\end{array} \\quad (7.11)\]

\[\\begin{array}{r l} & {G_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = \\underset {\\epsilon \\to 0^{+}}{\\lim}\\left[\\widetilde{G}_{E}^{\\mu_{1};\\mu_{2}}(\\widetilde{x}_{1};x_{2})\\right]_{\\widetilde{x}_{1}^{\\mu} + \\epsilon \\delta_{t_{E}}^{\\mu}}\\cdot \\theta (t_{E;1} - t_{E;2})}\\ & {\\qquad +\\widetilde{G}_{E}^{\\mu_{1};\\mu_{2}}(\\widetilde{x}_{1};x_{2})\\big|_{\\widetilde{x}_{1}^{\\mu} - \\epsilon \\delta_{t_{E}}^{\\mu}}\\cdot \\left(1 - \\theta (t_{E;1} - t_{E;2})\\right)\\big].} \\end{array} \\quad (7.12)\]

Here,- The representation \(\mathrm{I}^{+}\) .

\[\\begin{array}{r l} & {\\widetilde{G}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {= \\left\\{ \\begin{array}{l l}{\\langle 0|A_{E}^{\\mu_{1}}(x_{1})A_{E}^{\\mu_{2}}(x_{2})|0\\rangle} & {\\mathrm{for}\\quad t_{E;1} > t_{E;2}}\\ {\\langle 0|A_{E}^{\\mu_{2}}(x_{2})A_{E}^{\\mu_{1}}(x_{1})|0\\rangle} & {\\mathrm{for}\\quad t_{E;1}< t_{E;2}} \\end{array} \\right.}\\ & {= \\left\\{ \\begin{array}{l l}{\\sum_{k,\\bar{k} = 0}^{+\\infty}f_{E; + ,u;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E; - ,u;k,\\bar{k}}^{\\mu_{2}}(x_{2}) + f_{E; + ,v;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E; - ,v;k,\\bar{k}}^{\\mu_{2}}(x_{2})} & {\\mathrm{for}\\quad t_{E;1} > t_{E;2}}\\ {\\sum_{k,\\bar{k} = 0}^{+\\infty}f_{E; + ,u;k,\\bar{k}}^{\\mu_{2}}(x_{2})f_{E; - ,u;k,\\bar{k}}^{\\mu_{1}}(x_{1}) + f_{E; + ,v;k,\\bar{k}}^{\\mu_{2}}(x_{2})f_{E; - ,v;k,\\bar{k}}^{\\mu_{1}}(x_{1})} & {\\mathrm{for}\\quad t_{E;1}< t_{E;2}} \\end{array} \\right..} \\end{array} \\quad (7.13)\]

\[\\begin{array}{l}{f_{E; + ,u;0,0}^{\\mu} = \\sqrt{\\frac{\\mu + 1}{\\pi\\mu}}\\frac{e^{-(\\mu + 2)t_{E}}}{(r^{2} + 1)^{\\frac{\\mu + 2}{2}}}\\xi_{E;1}^{\\mu}}\\ {f_{E; + ,u;k,\\bar{k}}^{\\mu} = \\sqrt{\\frac{1}{k!\\mu_{k}\\bar{k}!(\\mu + 2)_{\\bar{k}}}}\\mathcal{L}_{\\xi_{E; - 1}}^{\\mu}\\frac{k}{\\xi_{\\bar{E}; - 1}}\\bar{f}_{E; + ,u;0,0}^{\\bar{k}}\\mu .} \\end{array} \\quad (7.14)\]

\[\\begin{array}{l}{{f_{E;+,\\nu ;k,\\bar{k}}}^{\\mu}=\\frac{1}{\\mu}\\sqrt{2(\\mu+k)(\\mu+k+1)}\\varphi_{E;\\mu+2,+;k,\\bar{k}}\\xi_{E;1}^{\\mu}}\\ {{\\qquad+2i\\frac{1}{\\mu}\\sqrt{2k(\\mu+k)}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}\\xi_{E;0}^{\\mu}}}\\ {{\\qquad-\\frac{1}{\\mu}\\sqrt{2k(k-1)}\\varphi_{E;\\mu+2,+;k-2,\\bar{k}}\\xi_{E;-1}^{\\mu}}}\\end{array} \\quad (7.15)\]

- Representation II+- Representation I-- Representation II-

\[\\begin{array}{l}{{f_{E;+,\\nu ;0,0}}^{\\mu}=\\sqrt{\\frac{\\mu+1}{\\pi\\mu}}\\frac{e^{-(\\mu+2)t_{E}}}{(\\gamma^{2}+1)^{\\frac{\\mu+2}{2}}}\\bar{\\xi}_{E;1}^{\\mu}}\\ {{f_{E;+,\\nu ;k,\\bar{k}}}^{\\mu}=\\sqrt{\\frac{1}{k!(\\mu+2)_{k}k!\\mu_{k}}}\\mathcal{L}_{\\xi_{E;-1}}^{\\mu}\\frac{k}{\\xi_{E;-1}}\\bar{\\xi}_{E;-1}^{\\bar{k}}f_{E;+,\\nu ;0,0}^{\\mu}.}}\\end{array} \\quad (7.16)\]

\[\\begin{array}{l}{{f_{E;-,\\nu ;0,0}}^{\\mu}=\\sqrt{\\frac{\\mu+1}{\\pi\\mu}}\\frac{e^{(\\mu+2)t_{E}}}{(\\gamma^{2}+1)^{\\frac{\\mu+2}{2}}}\\xi_{E;-1}^{\\mu}}\\ {{f_{E;-,\\nu ;k,\\bar{k}}}^{\\mu}=\\sqrt{\\frac{1}{k!\\mu_{k}\\bar{k}!\\mu(\\mu+2)_{k}}}\\mathcal{L}_{\\xi_{E;1}}^{\\mu}\\mathcal{L}_{\\xi_{E;1}}^{\\bar{k}}f_{E;-,\\nu ;0,0}^{\\bar{k}}.}}\\end{array} \\quad (7.18)\]

\[\\begin{array}{l}{{f_{E;-,\\nu ;k,\\bar{k}}}^{\\mu}=\\frac{1}{\\mu}\\sqrt{2(\\mu+k)(\\mu+k+1)}\\varphi_{E;\\mu+2,-;k,\\bar{k}}\\xi_{E;-1}^{\\mu}}\\ {{\\qquad-2i\\frac{1}{\\mu}\\sqrt{2k(\\mu+k)}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}\\xi_{E;0}^{\\mu}}}\\ {{\\qquad-\\frac{1}{\\mu}\\sqrt{2k(k-1)}\\varphi_{E;\\mu+2,-;k-2,\\bar{k}}\\xi_{E;1}^{\\mu}}}\\end{array} \\quad (7.19)\]

\[\\begin{array}{l}{{f_{E;-,\\nu ;0,0}}^{\\mu}=\\sqrt{\\frac{\\mu+1}{\\pi\\mu}}\\frac{e^{(\\mu+2)t_{E}}}{(\\gamma^{2}+1)^{\\frac{\\mu+2}{2}}}\\bar{\\xi}_{E;-1}^{\\mu}}\\ {{f_{E;-,\\nu ;k,\\bar{k}}}^{\\mu}=\\sqrt{\\frac{1}{k!(\\mu+2)_{k}k!\\mu_{k}}}\\mathcal{L}_{\\xi_{E;1}}^{\\mu}\\mathcal{L}_{\\xi_{E;1}}^{\\bar{k}}f_{E;-,\\nu ;0,0}^{\\bar{k}}.}}\\end{array} \\quad (7.20)\]

\[\\begin{array}{r l} & {f_{E; - ,\\nu ;k,\\bar{k}}^{\\mu} = \\frac{1}{\\mu}\\sqrt{2(\\mu +\\bar{k})(\\mu +\\bar{k} +1)}\\phi_{E;\\mu +2, - ;k,\\bar{k}}\\bar{\\xi}_{E; - ,1}^{\\mu}}\\ & {\\qquad -2i\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\mu +\\bar{k})}\\phi_{E;\\mu +2, - ;k,\\bar{k} -1}\\bar{\\xi}_{E;0}^{\\mu}}\\ & {\\qquad -\\frac{1}{\\mu}\\sqrt{2\\bar{k} (\\bar{k} -1)}\\phi_{E;\\mu +2, - ;k,\\bar{k} -2}\\bar{\\xi}_{E;1}^{\\mu}} \\end{array} \\quad (7.21)\]

\[\\begin{array}{r l} & {= \\frac{1}{2}\\big(\\mathcal{G}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2}) + \\overline{{\\mathcal{G}}}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2})\\big)G_{E;\\mu +2}(x_{1};x_{2})}\\ & {\\quad +\\frac{i}{2\\mu}\\widetilde{\\epsilon}_{E;\\mu}^{1;\\nu_{1}}\\rho_{1}(x_{1})\\big(\\mathcal{G}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2}) - \\overline{{\\mathcal{G}}}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2})\\big)\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}} G_{E;\\mu +2}(x_{1};x_{2})}\\ & {\\quad +\\frac{1}{\\mu^{2}}\\nabla^{(1)\\mu_{1}}\\nabla^{(2)\\mu_{2}}G_{E;\\mu +2}(x_{1};x_{2}),} \\end{array} \\quad (7.22)\]

### 7.3 The correlation function in the path integral formulation

We now show that the correlation function computed in () is the consistent with the one defined in the path integral formulation and solved from the Green function equation [19].

We now review some definitions in the path integral formulation. Specifically, we define the correlation function aswhereWe can show that the correlation function satisfy the following Green function equationInstead of directly solving the Green function equation (7.25), wewhich is Here, the expression is viewed as a generalized function. And \(\mathcal{G}_{E}^{\mu_{1};\mu_{2}}(x_{1};x_{2})\) and \(\overline{{\mathcal{G}}}_{E}^{\mu_{1};\mu_{2}}(x_{1};x_{2})\) are smooth at \(x_{1} = x_{2}\) , which guarantees the multiplication being properly defined.

\[G_{E,p a t h;\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = \\frac{\\int[d A]e^{-S_{E}}A^{\\mu_{1}}(x_{1})A^{\\mu_{2}}(x_{2})}{\\int[d A]e^{-S_{E}}}, \\quad (7.23)\]

\[S_{E} = \\int d^{3}x\\sqrt{g_{E}(x)}\\Big(\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} + \\frac{\\mu^{2}}{2} A_{\\mu}A^{\\mu}\\Big) \\quad (7.24)\]

\[\\begin{array}{r l} & {\\Big[\\delta^{\\mu_{1}}_{\\nu_{1}}\\nabla_{\\rho_{1}}^{(1)}\\nabla_{\\rho_{1}}^{(1)\\rho_{1}} - \\nabla_{\\nu_{1}}^{(1)}\\nabla_{\\nu_{1}}^{(1)\\mu_{1}} - \\mu^{2}\\delta^{\\mu_{1}}_{\\nu_{1}}\\Big]G_{E,p a t h;\\nu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {= -\\frac{1}{\\sqrt{g_{E}(x_{1})}} g_{E}^{\\mu_{1}\\mu_{2}}(x_{1})\\delta^{3}(x_{1} - x_{2}).} \\end{array} \\quad (7.25)\]

\[\\begin{array}{r l} & {G_{E,p a t h;\\mu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {= \\frac{1}{2}\\big(\\mathcal{G}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2}) + \\overline{{\\mathcal{G}}}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2})\\big)G_{E;\\mu +2}(x_{1};x_{2})}\\ & {\\quad +\\frac{i}{2\\mu}\\widetilde{\\epsilon}_{E;\\mu}^{1;\\nu_{1}}\\rho_{1}(x_{1})\\big(\\mathcal{G}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2}) - \\overline{{\\mathcal{G}}}_{E;\\mu}^{1;\\mu_{2}}(x_{1};x_{2})\\big)\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}} G_{E;\\mu +2}(x_{1};x_{2})}\\ & {\\quad +\\frac{1}{\\mu^{2}}\\nabla^{(1)\\mu_{1}}\\nabla^{(2)\\mu_{2}}G_{E;\\mu +2}(x_{1};x_{2}),} \\end{array} \\quad (7.26)\]

\[\\[\\begin{array}{r l}&{\\quad\\left[\\delta^{\\mu_{1}}\\nabla^{(1)}\\nabla^{(1)}\\rho_{1}-\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}-\\mu^{2}\\delta^{\\mu_{1}}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla^{(1)}\\nabla^{(1)}\\mu_{1}\\nabla\]

We have usedwhich can be proved withAnd we have usedwhich can be proved withWhile, by construction, we have shown that the correlation functions defined in the canonical quantization () and defined in the path integral formulation (7.26) are the same up to a contact term. 19Here,and

\[\\begin{array}{r l} & {\\nabla^{(1)}_{\\nu_{1}}G_{E};\\mu_{1};\\mu_{2}(x_{1};x_{2}) = i\\widetilde{\\epsilon}_{E;\\nu_{1}}\\mu_{1}\\rho_{1}(x_{1})\\mathcal{G}_{E};\\rho_{1};\\mu_{2}(x_{1};x_{2})}\\ & {\\nabla^{(1)}_{\\nu_{1}}\\overline{{G}}_{E};\\mu_{1};\\mu_{2}(x_{1};x_{2}) = -i\\widetilde{\\epsilon}_{E;\\nu_{1}}\\mu_{1}\\rho_{1}(x_{1})\\overline{{G}}_{E};\\rho_{1};\\mu_{2}(x_{1};x_{2}),} \\end{array} \\quad (7.29)\]

\[\\begin{array}{r l} & {\\mathcal{G}_{E};\\mu_{1};\\mu_{2}(x_{1};x_{2})\\nabla^{(1)}_{\\mu_{1}}G_{E;\\mu +2}(x_{1};x_{2}) + \\nabla^{(2)\\mu_{2}}G_{E;\\mu +2}(x_{1};x_{2}) = 0}\\ & {\\overline{{G}}_{E};\\mu_{1};\\mu_{2}(x_{1};x_{2})\\nabla^{(1)}_{\\mu_{1}}G_{E;\\mu +2}(x_{1};x_{2}) + \\nabla^{(2)\\mu_{2}}G_{E;\\mu +2}(x_{1};x_{2}) = 0,} \\end{array} \\quad (7.30)\]

\[\\langle A^{\\mu_{1}}(x_{1})A^{\\mu_{2}}(x_{2})\\rangle = \\alpha (\\rho)G^{\\mu_{1},\\mu_{2}}(x_{1},x_{2}) + \\beta (\\rho)n^{(1)\\mu_{1}}(x_{1},x_{2})n^{(2)\\mu_{2}}(x_{1},x_{2}) \\quad (7.31)\]

\[\\alpha (\\rho) =\]

\[\beta (\rho) =\]

\[\\gamma (\\rho) = -\\frac{\\mu + 1}{2\\mu + 1\\pi\\mu^{2}}\\frac{1}{(\\cosh\\rho)^{\\mu + 2}} F_{1}\\Big(\\frac{\\mu}{2} +1,\\frac{\\mu}{2} +\\frac{3}{2};\\mu +1;\\frac{1}{\\cosh^{2}\\rho}\\Big). \\quad (7.33)\]

### 8 Application II: the thermal partition function

### 9 Conclusion and discussion

9.1 The configurations that satisfy the highest weight equations

### Acknowledgments

We thank for the discussion with Chi- Ming Chang, Bin Chen, Arenas- Henriquez Gabriel, Wei Gu, Wu- zhong Guo, Peng- xiang Hao, Song He, Kaibo Hu, Hongguang Liu, Jiang Long, Rene Meyer, Nobuyoshi Ohta, Jie Ren, Wei Song, Chusun Tian, Yu Tian, Huajia Wang, Xin Wang, Jun- bao Wu, Lilin Yang, Ye Yuan, Hong Zhang, Hongbao Zhang, Jia- ju Zhang, Xinyu Zhang, Ruidong Zhu, Zhifei Zhu.

## A The equivalence between the covariant phase space formalism and Dirac's canonical formalism

In this appendix, we provide an argument showing the equivalence between the covariant phase space formalism and Dirac's canonical formalism [4- 6].

Specifically, we consider a model that fits for Dirac's canonical formalism. We construct a Hamiltonian system by applying the model to the covariant phase space formalism. And we show that this Hamiltonian system is equivalent to the Hamiltonian system constructed from Dirac's canonical formalism.

### A.1 Convention

We first specify some conventions adopted in this appendix:- We distinguish between the variables and the values of the variables for a given configuration. For example, we denote the variables by \(q^{a}\) , \((q^{a}, \dot{q}^{a})\) , \((q^{a}, p_{a})\) . And we denote the values of the variables for a given configuration at a given time by \(q^{a}(t)\) , \((q^{a}(t), \frac{d}{dt} q^{a}(t))\) , \((q^{a}(t), p_{a}(t))\) .

- We never use the notation \(\dot{q}^{a}(t)\) . Instead, we denote by \(\frac{d}{dt} q^{a}(t)\) for the time derivative of the variable \(q^{a}\) for a given configuration at a given time.

- We distinguish between the variables and the corresponding components of a map to a set of variables that contains these variables. For example, we denote the momenta variables as \(p_{a}\) . And we denote the momenta components of the Legendre transformation by \(p_{a}(q, \dot{q})\) , which are functions of \((q^{a}, \dot{q}^{a})\) .

- We refer to the system (A.18) as the Legendre transformed system instead of the Hamiltonian system, since we have already used the Hamiltonian system for a different structure.

- When referring to a function of a set of variables, we also associate the set of variables to the function's notation, for example \(L(q, \dot{q})\) , \(H(q, p)\) . When referring to the value of the function for a given configuration at a given time, we explicitly apply the values of the variables to the corresponding positions of the function, for example \(L(q(t), \frac{d}{dt} q(t))\) , \(H(q(t), p(t))\) .

### A.2 The setup

We now introduce the setup.

We consider a general \(0 + 1\) dimensional model that fits for Dirac's canonical formalism with the following action

\[S = \\int_{t_i}^{t_f}dtL\\Big(q(t),\\frac{d}{dt} q(t)\\Big). \\quad (A.1)\]

Here, \(q^{a}\) with \(a = 1,2,\dots,N\) are the set of variables. And the Lagrangian \(L(q,\dot{q})\) is viewed as a function of \((q^{a},\dot{q}^{a})\) . Moreover, we assume that there are constraints but no gauge redundancies in the model (A.1). Here, the precise meaning of no gauge redundancies will be specified below.

We now apply the model (A.1) to the covariant phase space formalism. Following the prescription, we take a variation of the action (A.1)

\[\\begin{array}{l}{\\delta S = \\int_{t_i}^{t_f}dt(-1)\\bigg(\\frac{d}{dt}\\Big(\\frac{\\partial L}{\\partial\\dot{q}^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\Big) - \\frac{\\partial L}{\\partial q^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\bigg)\\delta q^a (t)}\\ {+\\frac{\\partial L}{\\partial\\dot{q}^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\delta q^a (t)\\Big|_{t = t_f} - \\frac{\\partial L}{\\partial\\dot{q}^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\delta q^a (t)\\Big|_{t = t_i}.} \\end{array} \\quad (A.2)\]

From the variation of the action (A.2), we read out the equations of motion asAnd we read out the symplectic potential asThen, we define the pre- phase space \(\widetilde{\mathcal{P}}\) as the set of solutions of the equations of motion (A.3).

\[\\frac{d}{dt}\\Big(\\frac{\\partial L}{\\partial\\dot{q}^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\Big) - \\frac{\\partial L}{\\partial q^a}\\big(q(t),\\frac{d}{dt} q(t)\\big) = 0. \\quad (A.3)\]

\[\\theta = \\frac{\\partial L}{\\partial\\dot{q}^a}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\delta q^a (t). \\quad (A.4)\]

By taking an exterior derivative of the symplectic potential (A.4) in the set of configurations, we define the symplectic form as

\[\\Omega = \\delta_{1}\\Big(\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\Big)\\delta_{2}q^{a}(t) - \\delta_{1}q^{a}(t)\\delta_{2}\\Big(\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\big(q(t),\\frac{d}{dt} q(t)\\big)\\Big). \\quad (A.5)\]

And, by taking a pull back of the symplectic form \(\Omega\) (A.5) from the set of configurations to the pre- phase space \(\widetilde{\mathcal{P}}\) , we define the symplectic form of the pre- phase space \(\Omega |_{\widetilde{\mathcal{P}}}\) . The pre- phase space \(\widetilde{\mathcal{P}}\) and the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) together specify a Hamiltonian system.

We will show below that the Hamiltonian system constructed here is equivalent to the Hamiltonian system constructed from Dirac's canonical formalism.

### A.3 The Legendre transformation

We will show below the equivalence between Hamiltonian systems through the Legendre transformation. And we now first introduce the Legendre transformation.

We first introduce some structures appearing in the Legendre transformation:

We define the momenta components of the Legendre transformation \(p_{a}(q,\dot{q})\) asWe consider the map from the set \((q^{a},\dot{q}^{a})\) to the set \((q^{a},p_{a})\) asWe read out the primary constraints \(\phi_{m}(q,p)\) , for \(m = 1,2,\dots,M\) , such that the subset of \((q^{a},p_{a})\) satisfyingis the image of the map (A.7). And we also read out that, for a given point \((q^{a},p_{a})\) satisfying \(\phi_{m}(q,p) = 0\) , for \(m = 1,2,\dots,M\) , the inverse image of the map (A.7) is multi- valued.

\[p_{a}(q,\\dot{q}) = \\frac{\\partial L}{\\partial\\dot{q}^{a}} (q,\\dot{q}). \\quad (A.6)\]

\[\\begin{array}{l}{q^{a} = q^{a}}\\ {p_{a} = p_{a}(q,\\dot{q}).} \\end{array} \\quad (A.7)\]

\[\\phi_{m}(q,p) = 0, \\quad (A.8)\]

We now introduce a parametrization for the multi- valued inverse image of the map (A.7) for a given point \((q^{a},p_{a})\) satisfying \(\phi_{m}(q,p) = 0\) , for \(m = 1,2,\dots,M\) . Specifically, we point out that there is a choice of the Hamiltonian \(H(q,p)\) , which is a function of \((q^{a},p_{a})\) , and which satisfies

\[\\left(p_{a}\\dot{q}^{a} - L(q,\\dot{q})\\right)\\big|_{p_{a} = p_{a}(q,\\dot{q})} = H(q,p)\\big|_{p_{a} = p_{a}(q,\\dot{q})}. \\quad (A.9)\]

And, by taking a variation of (A.9) and by comparing with the definition of the primary constraints around (A.8), we get the following statement: There is a choice of \(u^{m}(q,\dot{q})\) , for \(m = 1,2,\dots,M\) , which are functions of \((q^{a},\dot{q}^{a})\) , and which satisfy

\[\\begin{array}{r l} & {\\dot{q}^{a} = \\Big(\\frac{\\partial H}{\\partial p_{a}} (q,p) + u^{m}(q,\\dot{q})\\frac{\\partial\\phi_{m}}{\\partial p_{a}} (q,p)\\Big)\\Big|_{p_{a} = p_{a}(q,\\dot{q})}}\\ & {-\\frac{\\partial L}{\\partial q^{a}} (q,\\dot{q}) = \\Big(\\frac{\\partial H}{\\partial q^{a}} (q,p) + u^{m}(q,\\dot{q})\\frac{\\partial\\phi_{m}}{\\partial q^{a}} (q,p)\\Big)\\Big|_{p_{a} = p_{a}(q,\\dot{q})}.} \\end{array} \\quad (A.10)\]

Here, the set \(u^{m}(q,\dot{q})\) , for \(m = 1,2,\dots,M\) , is a parametrization for the multi- valued inverse image of the map (A.7) for a given point \((q^{a},p_{a})\) satisfying \(\phi_{m}(q,p) = 0\) , for \(m = 1,2,\dots,M\) .

Having introduced the previous structures, we now introduce the Legendre transformation. Here, the Legendre transformation is a one- to- one map from the set \((q^{a},\dot{q}^{a})\) to the subset of \((q^{a},p_{a},u^{m})\) satisfying \(\phi_{m}(q,p) = 0\) , for \(m = 1,2,\dots,M\) . The Legendre transformation is expressed asAnd the inverse Legendre transformation is expressed asFor the application below, we derive the following two statements from the one- to- one map of the Legendre transformation (A.11) and (A.12): First, given the equationswe haveand we can solve \(\dot{q}^{a}\) from (A.13) asSecond, given the equationswe can solve \(p_{a}\) , \(u^{m}\) from (A.16) as

\[\\begin{array}{l}{q^{a} = q^{a}}\\ {p_{a} = p_{a}(q,\\dot{q})}\\ {u^{m} = u^{m}(q,\\dot{q}).} \\end{array} \\quad (A.11)\]

\[\\begin{array}{l}{q^{a} = q^{a}}\\ {\\dot{q}^{a} = \\frac{\\partial H}{\\partial p_{a}} (q,p) + u^{m}\\frac{\\partial\\phi_{m}}{\\partial p_{a}} (q,p).} \\end{array} \\quad (A.12)\]

\[\\begin{array}{l}{p_{a} = p_{a}(q,\\dot{q})}\\ {u^{m} = u^{m}(q,\\dot{q}),} \\end{array} \\quad (A.13)\]

\[\\phi_{m}(q,p) = 0, \\quad (A.14)\]

\[\\dot{q}^{a} = \\frac{\\partial H}{\\partial p_{a}} (q,p) + u^{m}\\frac{\\partial\\phi_{m}}{\\partial p_{a}} (q,p). \\quad (A.15)\]

\[\\begin{array}{l}{\\dot{q}^{a} = \\frac{\\partial H}{\\partial p_{a}} (q,p) + u^{m}\\frac{\\partial\\phi_{m}}{\\partial p_{a}} (q,p)}\\ {\\phi_{m}(q,p) = 0,} \\end{array} \\quad (A.16)\]

\[\\begin{array}{l}{p_{a} = \\frac{\\partial L}{\\partial\\dot{q}^{a}} (q,\\dot{q})}\\ {u^{m} = u^{m}(q,\\dot{q}).} \\end{array} \\quad (A.17)\]

### A.4 The Legendre transformed system

Having introduced the Legendre transformation, we now perform the first step in showing the equivalence between the Hamiltonian systems. Here, we consider the Legendre transformed system defined by the following action

\[S_{H} = \\int_{t_{i}}^{t_{f}}d t\\Big(p_{a}(t)\\frac{d}{d t} q^{a}(t) - H\\big(q(t),p(t)\\big) - u^{m}(t)\\phi_{m}\\big(q(t),p(t)\\big)\\Big). \\quad (A.18)\]

We construct a Hamiltonian system by applying the Legendre transformed system (A.18) to the covariant phase space formalism. And we show that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed here.

We now apply the Legendre transformed system (A.18) to the covariant phase space formalism. Following the prescription, we take a variation of the actionFrom the variation of the action (A.19), we read out the equations of motion asAnd we read out the symplectic potential asThen, we define the pre- phase space as the set of solutions of the equations of motion (A.20), (A.21), (A.22), where, for the moment, we denote the pre- phase space as \(\widetilde{\mathcal{P}}_{H}\) . By taking an exterior derivative of the symplectic potential (A.23) in the set of configurations, we define the symplectic form as

\[\\begin{array}{l}{\\delta S_{H} = \\int_{t_{i}}^{t_{f}}d t\\bigg(-\\frac{d}{d t} p_{a}(t) + \\frac{\\partial H}{\\partial q^{a}}\\big(q(t),p(t)\\big) + u^{m}(t)\\frac{\\partial\\phi_{m}}{\\partial q^{a}}\\big(q(t),p(t)\\big)\\bigg)\\delta q^{a}(t)}\\ {-\\bigg(-\\frac{d}{d t} q^{a}(t) + \\frac{\\partial H}{\\partial p_{a}}\\big(q(t),p(t)\\big) + u^{m}(t)\\frac{\\partial\\phi_{m}}{\\partial p_{a}}\\big(q(t),p(t)\\big)\\bigg)\\delta p_{a}(t)}\\ {-\\phi_{m}\\big(q(t),p(t)\\big)\\delta u^{m}(t)\\bigg)}\\ {+p_{a}(t)\\delta q^{a}(t)|_{t = t_{f}} - p_{a}(t)\\delta q^{a}(t)|_{t = t_{i}}.} \\end{array} \\quad (A.19)\]

\[\\begin{array}{l}{{\\frac{d}{d t}q^{a}(t)=\\frac{\\partial H}{\\partial p_{a}}\\big(q(t),p(t)\\big)+u^{m}(t)\\frac{\\partial\\phi_{m}}{\\partial p_{a}}\\big(q(t),p(t)\\big)}}\\ {{\\frac{d}{d t}p_{a}(t)=-\\frac{\\partial H}{\\partial q^{a}}\\big(q(t),p(t)\\big)-u^{m}(t)\\frac{\\partial\\phi_{m}}{\\partial q^{a}}\\big(q(t),p(t)\\big)}}\\ {{\\phi_{m}\\big(q(t),p(t)\\big)=0.}}\\end{array} \\quad (A.21)\]

\[\\theta_{H} = p_{a}(t)\\delta q^{a}(t). \\quad (A.23)\]

\[\\Omega_{H} = \\delta_{1}p_{a}(t)\\delta_{2}q^{a}(t) - \\delta_{1}q^{a}(t)\\delta_{2}p_{a}(t). \\quad (A.24)\]

And by taking a pullback of the symplectic form from the set of configurations to the pre- phase space \(\widetilde{\mathcal{P}}_{H}\) , we define the symplectic form of the pre- phase space \(\Omega_{H}|_{\widetilde{\mathcal{P}}_{H}}\) . The pre- phase space \(\widetilde{\mathcal{P}}_{H}\) and the symplectic form \(\Omega_{H}|_{\widetilde{\mathcal{P}}_{H}}\) together specify a Hamiltonian system.

We now show that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed here. Specifically, we show the following two facts: first, the pre- phase space \(\widetilde{\mathcal{P}}\) can be identified to the pre- phase space \(\widetilde{\mathcal{P}}_{H}\) ; second, the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) is equivalent to the symplectic form \(\Omega_{H}|_{\widetilde{\mathcal{P}}_{H}}\) .

We now construct an identification from the pre- phase space \(\widetilde{\mathcal{P}}\) to the pre- phase space \(\widetilde{\mathcal{P}}_{H}\) . Specifically, we study the general solution of the equations of motion (A.20), (A.21), (A.22). Here, we first solve \(p_{a}(t)\) and \(u^{m}(t)\) from the equations of motion (A.20), (A.22) as

\[\\begin{array}{l}{{p_{a}(t)|_{\\widetilde{\\mathcal{P}}_{H}}=p_{a}\\big(q(t),\\frac{d}{d t}q(t)\\big)\\Big|_{\\widetilde{\\mathcal{P}}_{H}}=\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\big(q(t),\\frac{d}{d t}q(t)\\big)\\Big|_{\\widetilde{\\mathcal{P}}_{H}}}}\\ {{u^{m}(t)|_{\\widetilde{\\mathcal{P}}_{H}}=u^{m}\\big(q(t),\\frac{d}{d t}q(t)\\big)\\Big|_{\\widetilde{\\mathcal{P}}_{H}},}}\\end{array} \\quad (A.25)\]

where, in solving (A.25), we have used the statement mentioned around (A.16), (A.17). We then apply (A.25) to the equations of motion (A.21), from which we get the equations of motion for \(q^{a}(t)\) as

\[\\frac{d}{d t}\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\big(q(t),\\frac{d}{d t}q(t)\\big)\\Big|_{\\widetilde{\\mathcal{P}}_{H}} = \\frac{\\partial L}{\\partial q^{a}}\\big(q(t),\\frac{d}{d t}q(t)\\big)\\Big|_{\\widetilde{\\mathcal{P}}_{H}}, \\quad (A.26)\]

where, in deriving (A.26), we have also used (A.10). Note that the equations of motion for \(q^{a}(t)\) in (A.26) are the same as the equations of motion for \(q^{a}(t)\) in (A.3). We then constructan identification from the pre- phase space \(\tilde{\mathcal{P}}\) to the pre- phase space \(\tilde{\mathcal{P}}_{H}\) , that is, given a solution \(q^{a}(t)\) of the equations of motion (A.3), we construct a solution \((q^{a}(t),p_{a}(t),u^{m}(t))\) of the equations of motion (A.20), (A.21), (A.22), by identifying the \(q^{a}(t)\) and reading out \(p_{a}(t)\) , \(u^{m}(t)\) through (A.25). From now on, we denote both pre- phase spaces as \(\tilde{\mathcal{P}}\) .

We now show that the symplectic form \(\Omega |_{\tilde{\mathcal{P}}}\) is equivalent to the symplectic form \(\Omega_{H}|_{\tilde{\mathcal{P}}}\) . Specifically, we perform the following computationwhere we have used (A.25).

\[\\begin{array}{r l} & {\\Omega |_{\\tilde{\\mathcal{P}}} = \\left(\\delta_{1}\\left(\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\left(q(t),\\frac{d}{d t} q(t)\\right)\\right)\\delta_{2}q^{a}(t) - \\delta_{1}q^{a}(t)\\delta_{2}\\left(\\frac{\\partial L}{\\partial\\dot{q}^{a}}\\left(q(t),\\frac{d}{d t} q(t)\\right)\\right)\\right)\\Big|_{\\tilde{\\mathcal{P}}}}\\ & {\\qquad = \\left(\\delta_{1}p_{a}(t)\\delta_{2}q^{a}(t) - \\delta_{1}q^{a}(t)\\delta_{2}p_{a}(t)\\right)\\Big|_{\\tilde{\\mathcal{P}}} = \\Omega_{H}|_{\\tilde{\\mathcal{P}}},} \\end{array} \\quad (A.27)\]

From the identification of the pre- phase spaces and the equivalence of the symplectic form- s, we show that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed in this subsection.

## A.5 A further reformulation for the Hamiltonian system constructed in subsection A.4

So far, we have shown that the Hamiltonian system constructed in subsection A.2 is equivalent to the Hamiltonian system constructed in subsection A.4. We now take a further reformulation for the Hamiltonian system constructed in subsection A.4.

We first study the general solution of the equations of motion (A.20), (A.21), (A.22).

To study the general solution, we reexpress the equations of motion (A.20), (A.21), (A.22) asfor \(F\) being any functions of \((q^{a},p_{a})\) , andfor \(m = 1,2,\dots,M\) . Here, in (A.28), the Poisson bracket \(\{\cdot ,\cdot \}_{P}\) is defined as the following: Given two functions of \((q^{a},p_{a})\) , say \(F(q,p)\) , \(G(q,p)\) , their Poisson bracket \(\{F,G\}_{P}\) isAnd the \(F\) , \(\{F,H\}_{P}\) , \(\{F,\phi^{m}\}_{P}\) are viewed as applying \((q^{a}(t),p_{a}(t))\) in the positions of \((q^{a},p_{a})\) .

\[\\frac{d}{d t} F\\Big|_{\\tilde{\\mathcal{P}}} = \\Big(\\{F,H\\}_{P} + u^{m}(t)\\{F,\\phi_{m}\\}_{P}\\Big)\\Big|_{\\tilde{\\mathcal{P}}} \\quad (A.28)\]

\[\\phi_{m}\\big(q(t),p(t)\\big)\\big|_{\\tilde{\\mathcal{P}}} = 0, \\quad (A.29)\]

\[\\{F,G\\}_{P} = \\frac{\\partial F}{\\partial q^{a}} (q,p)\\cdot \\frac{\\partial G}{\\partial p_{a}} (q,p) - \\frac{\\partial F}{\\partial p_{a}} (q,p)\\cdot \\frac{\\partial G}{\\partial q^{a}} (q,p). \\quad (A.30)\]

We now study some consequences of the equations of motion (A.28), (A.29). Specifically, by applying the primary constraints \(\phi_{m}(q,p)\) to (A.28) in the position of \(F\) and by taking use of (A.29), we get some trivial identities, or some constraints on \(u^{m}(t)\) , or some secondary constraint equationsHere, the \(\phi_{k}(q,p)\) in (A.31) are some functions of \((q^{a},p_{a})\) which we refer to as secondary constraints. Then, by applying the secondary constraints \(\phi_{k}(q,p)\) to (A.28) in the position of \(F\) and by taking use of (A.31), we again get some trivial identities, or some other constraints on \(u^{m}(t)\) , or some other secondary constraint equationsHere, we again refer to the functions \(\phi_{k^{\prime}}(q,p)\) in (A.32) as secondary constraints. Going through this procedure recursively, we finally get some constraints on \(u^{m}(t)\) and some secondary constraint equationsfor \(k = M + 1,M + 2,\dots,J\) . Here, we refer to the \(\phi_{k}(q,p)\) in (A.33), for \(k = M + 1,M + 2,\dots,J\) , as the secondary constraints. We then list the primary constraints and the secondary constraints together as \(\phi_{j}(q,p)\) , for \(j = 1,2,\dots,J\) .

\[\\phi_{k}\\big(q(t),p(t)\\big) = 0. \\quad (A.31)\]

\[\\phi_{k^{\\prime}}(q(t),p(t)) = 0. \\quad (A.32)\]

\[\\phi_{k}(q(t),p(t)) = 0, \\quad (A.33)\]

Remember that we have assumed that there are no gauge redundancies in the context below (A.1). The precise meaning of this assumption is the following two assumptions: First, the \(u^{m}(t)\) can all be solved out aswhere the \(u^{m}(q,p)\) in the right hand side of the equations (A.34) are some functions of \((q^{a},p_{a})\) . Second, the matrix of the Poisson bracketsfor \(j,k = 1,2,\dots,J\) , is non- degenerate.

\[u^{m}(t) = u^{m}\\big(q(t),p(t)\\big), \\quad (A.34)\]

\[C_{jk} = \\{\\phi_{j},\\phi_{k}\\} p, \\quad (A.35)\]

With the above mentioned consequences and assumptions, we can reexpress the equations of motion (A.28), (A.29) in a simpler form.

To reexpress the equations of motion, we first introduce some structures:We refer to the subset of \((q^{a},p_{a})\) satisfying the constraint equations \(\phi_{j}(q,p) = 0\) , for \(j = 1,2,\dots,J\) , as the constraint surface \(\mathcal{C}\) . We parameterize the constraint surface \(\mathcal{C}\) as \((q^{a}(z),p_{a}(z))\) . Here, \(z^{r}\) with \(r = 1,2,\dots,2N - J\) , are a set of variables that parameterizes the constraint surface \(\mathcal{C}\) . And the \(q^{a}(z)\) , \(p_{a}(z)\) are functions of \(z^{r}\) that satisfyfor \(j = 1,2,\dots,J\) .

\[\\phi_{j}\\big(q(z),p(z)\\big) = 0, \\quad (A.36)\]

We define the total Hamiltonian aswhich is a function of the constraint surface \(\mathcal{C}\) .

\[H_{T}(z) = \\Big(H(q,p) + \\sum_{m = 1}^{M}u^{m}(q,p)\\phi_{m}(q,p)\\Big)\\Big|_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z)}\\ {p_{a} = p_{a}(z)} \\end{array} \\right.}, \\quad (A.37)\]

We define the Dirac's bracket as the following: Given two functions of the constraint surface \(\mathcal{C}\) , say \(F(z)\) and \(G(z)\) , their bracket \(\{F, G\}_{D}\) is defined asHere, \(\widetilde{F}\) , \(\widetilde{G}\) can be any extensions of \(F\) , \(G\) to the set \((q^{a}, p_{a})\) , such that

\[\\{F,G\\}_{D} = \\Big(\\{\\widetilde{F},\\widetilde{G}\\}_{P} - \\{\\widetilde{F},\\phi_{j}\\}_{P}\\cdot C^{j k}\\cdot \\{\\phi_{k},\\widetilde{G}\\}_{P}\\Big)\\Big|_{\\left\\{ \\begin{array}{l}{q^{a} = q^{a}(z)}\\ {p_{a} = p_{a}(z)} \\end{array} \\right.}. \\quad (A.38)\]

\[\\begin{array}{l}{\\widetilde{F}\\big(q(z),p(z)\\big) = F(z)}\\ {\\widetilde{G}\\big(q(z),p(z)\\big) = G(z).} \\end{array} \\quad (A.39)\]

\(C^{j k}\) is defined aswhere \(j, k, l = 1, 2, \ldots , J\) . And the Dirac's bracket \(\{F, G\}_{D}\) defined in (A.38) is a function of the constraint surface \(\mathcal{C}\) and is independent of the choice of the extensions \(\widetilde{F}\) , \(\widetilde{G}\) .

\[\\begin{array}{l}{C^{j k}C_{k l} = \\delta_{l}^{j},}\\ {C_{j k}C^{k l} = \\delta_{j}^{l},} \\end{array} \\quad (A.40)\]

With these structures, we now reexpress the equations of motion (A.28), (A.29) asfor \(F\) being any functions of the constraint surface \(\mathcal{C}\) parameterized by \(z^{r}\) , andandHere, in (A.41), the \(F\) and \(\{F, H_{T}\}_{D}\) are viewed as applying \(z^{r}(t)\) in the position of \(z^{r}\) .

\[\\frac{d}{d t} F\\big|_{\\widetilde{\\mathcal{P}}} = \\{F, H_{T}\\}_{D}\\big|_{\\widetilde{\\mathcal{P}}}, \\quad (A.41)\]

\[\\begin{array}{l}{q^{a}(t)|_{\\widetilde{\\mathcal{P}}} = q^{a}\\big(z(t)\\big)|_{\\widetilde{\\mathcal{P}}}}\\ {p_{a}(t)|_{\\widetilde{\\mathcal{P}}} = p_{a}\\big(z(t)\\big)|_{\\widetilde{\\mathcal{P}}},} \\end{array} \\quad (A.42)\]

\[u^{m}(t)|_{\\widetilde{\\mathcal{P}}} = u^{m}\\Big(q\\big(z(t)\\big),p\\big(z(t)\\big)\\Big)\\Big|_{\\widetilde{\\mathcal{P}}}. \\quad (A.43)\]

We now study the general solution from the equations of motion (A.41), (A.42), (A.43). By analyzing the equations of motion (A.41), (A.42), (A.43), we see that the general solution is uniquely determined by the value \(z_{0}^{r} \equiv z^{r}(t = 0)\) , which can be any point on the constraint surface \(\mathcal{C}\) . In more detail, given a point \(z_{0}^{r}\) on the constraint surface \(\mathcal{C}\) , we construct the corresponding solution as the following: First, we solve \(z^{r}(t)|_{\widetilde{\mathcal{P}}}\) from (A.41) with the initial conditionsSecond, we read out \(q^{a}(t)|_{\widetilde{\mathcal{P}}}\) , \(p_{a}(t)|_{\widetilde{\mathcal{P}}}\) , \(u^{m}(t)|_{\widetilde{\mathcal{P}}}\) from (A.42), (A.43). From now on, we parameterize the general solution with the constraint surface \(\mathcal{C}\) or equivalently with \(z_{0}^{r}\) in this way.

\[z^{r}(t = 0)|_{\\widetilde{\\mathcal{P}}} = z_{0}^{r}. \\quad (A.44)\]

With the knowledge of the general solution, we now take a further reformulation for the Hamiltonian system constructed in subsection A.4. Specifically, we parameterize the pre-phase space \(\widetilde{\mathcal{P}}\) with the constraint surface \(\mathcal{C}\) or equivalently with \(z_{0}^{r}\) , with \(r = 1,2,\dots,2N - J\) , as mentioned in the previous paragraph. And we represent the symplectic form aswithHere, in deriving (A.45) and (A.46), we have used (A.24), (A.27), (A.42), (A.44). And we have evaluated the symplectic form \(\Omega |_{\widetilde{\mathcal{P}}}\) at \(t = 0\) .

\[\\Omega |_{\\widetilde{\\mathcal{P}}} = \\Omega_{z^{r}z^{s}}(z_{0})\\delta_{1}z_{0}^{r}\\delta_{2}z_{0}^{s}, \\quad (A.45)\]

\[\\Omega_{z^{r}z^{s}}(z) = \\frac{\\partial p_{a}}{\\partial z^{r}} (z)\\frac{\\partial q^{a}}{\\partial z^{s}} (z) - \\frac{\\partial q^{a}}{\\partial z^{r}} (z)\\frac{\\partial p_{a}}{\\partial z^{s}} (z). \\quad (A.46)\]

Below, we will represent the reformulated Hamiltonian system in the canonical formalism, and show its equivalence to the Hamiltonian system constructed from Dirac's canonical formalism.

### A.6 A property of the symplectic form \(\Omega_{z^{r}z^{s}}(z)\)

To represent the Hamiltonian system in the canonical formalism, we now introduce a property of the symplectic form \(\Omega_{z^{r}z^{s}}(z)\) defined in (A.46).

The property is the following: The symplectic form \(\Omega_{z^{r}z^{s}}(z)\) is non- degenerate. And its inverse \((\Omega^{- 1})^{z^{r}z^{s}}(z)\) is the matrix of the Dirac's brackets between the variables \(z^{r}\) that parameterize the constraint surface \(\mathcal{C}\) asHere, in the Dirac's bracket \(\{z^{r},z^{s}\}_{D}\) , we have viewed the variables \(z^{r}\) as functions of the constraint surface \(\mathcal{C}\) .

\[(\\Omega^{-1})^{z^{r}z^{s}}(z) = \\{z^{r},z^{s}\\}_{D}. \\quad (A.47)\]

To prove this property, we first introduce some structures:We extend the variables \(z^{r}\) from the constraint surface \(\mathcal{C}\) to the set \((q^{a},p_{a})\) . Namely, we introduce functions \(\widetilde{z}^{r}(q,p)\) , for \(r = 1,2,\dots,2N - J\) , such thatWe view the functions \(\widetilde{z}^{r}(q,p)\) and the constraints \(\phi_{j}(q,p)\) as defining a new set of variables for the set \((q^{a},p_{a})\) . Specifically, we introduce a set of variables \((z^{r},\phi_{j})\) , with \(r = 1,2,\dots,2N - J\) and \(j = 1,2,\dots,J\) . We construct a one- to- one map from the set \((q^{a},p_{a})\) to the set \((z^{r},\phi_{j})\) asWe denote the inverse map aswhere the \(q^{a}(z,\phi)\) , \(p_{a}(z,\phi)\) in (A.50) are functions of \((z^{r},\phi_{j})\) satisfyingAnd we also point out that \(q^{a}(z,\phi)\) , \(p_{a}(z,\phi)\) reduce to \(q^{a}(z)\) , \(p_{a}(z)\) when setting \(\phi = 0\) aswhich can be shown by applying \(q^{a}(z)\) , \(p_{a}(z)\) to (A.51) in the position of \(q^{a}\) , \(p_{a}\) and by taking use of (A.36), (A.48).

\[\\widetilde{z}^{r}\\big(q(z),p(z)\\big) = z^{r}. \\quad (A.48)\]

\[\\begin{array}{l}{z^{r} = \\widetilde{z}^{r}(q,p)}\\ {\\phi_{j} = \\phi_{j}(q,p).} \\end{array} \\quad (A.49)\]

\[\\begin{array}{l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi),} \\end{array} \\quad (A.50)\]

\[\\begin{array}{l}{q^{a}\\big(\\widetilde{z} (q,p),\\phi (q,p)\\big) = q^{a}}\\ {p_{a}\\big(\\widetilde{z} (q,p),\\phi (q,p)\\big) = p_{a}.} \\end{array} \\quad (A.51)\]

\[\\begin{array}{l}{q^{a}(z,\\phi = 0) = q^{a}(z)}\\ {p_{a}(z,\\phi = 0) = p_{a}(z),} \\end{array} \\quad (A.52)\]

We introduce some collective notations. Specifically, we denote \(Q^{A} = (q^{a},p_{a})\) . We denote \(Z^{R} = (z^{r},\phi_{j})\) . We denote the map (A.49) from the set \(Q^{A} = (q^{a},p_{a})\) to the set \(Z^{R} = (z^{r},\phi_{j})\) as \(Z^{R} = Z^{R}(Q)\) . And we denote the inverse map (A.50) from the set \(Z^{R} = (z^{r},\phi_{j})\) to the set \(Q^{A} = (q^{a},p_{a})\) as \(Q^{A} = Q^{A}(Z)\) .

We introduce some structures in terms of the set of variables \(Q^{A} = (q^{a},p_{a})\) . Specifically, we define the symplectic form of the set \(Q^{A} = (q^{a},p_{a})\) as

\[\\Omega^{(0)}_{Q^{A}Q^{B}} = \\left( \\begin{array}{cc}\\Omega^{(0)} & \\Omega^{(0)}\\ \\Omega^{(0)} & \\Omega^{(0)} \\end{array} \\right)^{q^{a}q^{b}}_{p_{a^{\\prime}}p_{b^{\\prime}}} = \\left( \\begin{array}{cc}0 & -\\delta_{a^{\\prime}}^{b^{\\prime}}\\ \\delta_{a^{\\prime}}^{b} & 0 \\end{array} \\right). \\quad (A.53)\]

We compute the matrix of the Poisson brackets between the set of variables \(Q^{A} = (q^{a},p_{a})\) asAnd we check that \(\Omega^{(0)}_{Q^{A}Q^{B}}\) (A.53) and \(\Omega^{(0)Q^{A}Q^{B}}\) (A.54) are inverse to each other asWe introduce some structures in terms of the set of variables \(Z^{R} = (z^{r},\phi_{j})\) . Specifically, we define the symplectic form of the set \(Z^{R} = (z^{r},\phi_{j})\) asWe check that the \(z z\) - component of \(\widetilde{\Omega}_{Z^{R}Z^{S}}(Z)\) (A.56), when restricting to \(\phi = 0\) , is exactly \(\Omega_{z^{r}z^{s}}(z)\) (A.46) aswhere we have used (A.53). We define the matrix of the Poisson brackets between the set of functions \(Z^{R}(Q) = (\widetilde{z}^{r}(q,p),\phi_{j}(q,p))\) asWe check that the matrix \(\widetilde{\Omega}^{Z^{R}Z^{S}}(Q)\) (A.58) equals towhere we have used (A.54). And, we check thatwhere we have used (A.55), (A.56), (A.59) and the inverse function theoremWith the above defined structures, we now prove the property of the symplectic form \(\Omega_{z^{r}z^{s}}(z)\) mentioned in the beginning of this subsection. We rewrite the equations (A.60) in component form asandFor the set of equations (A.62), by solving \(\widetilde{\Omega}_{z^{r}\phi_{j}}(z,\phi)\) from the second equation and by applying the solution of \(\widetilde{\Omega}_{z^{r}\phi_{j}}(z,\phi)\) to the first equation, we get

\[\\Omega^{(0)Q^{A}Q^{B}} = \\left( \\begin{array}{cc}Q^{(0)q^{a}q^{b}} & Q^{(0)q^{a}p_{b^{\\prime}}}\\ Q^{(0)p_{a^{\\prime}}q^{b}} & Q^{(0)p_{a^{\\prime}}p_{b^{\\prime}}} \\end{array} \\right) = \\left( \\begin{array}{cc}\\{q^{a},q^{b}\\}_{P} & \\{q^{a},p_{b^{\\prime}}\\}_{P}\\ \\{p_{a^{\\prime}},q^{b}\\}_{P} & \\{p_{a^{\\prime}},p_{b^{\\prime}}\\}_{P} \\end{array} \\right) = \\left( \\begin{array}{cc}0 & \\delta_{a^{\\prime}}^{b}\\ -\\delta_{a^{\\prime}}^{b} & 0 \\end{array} \\right). \\quad (A.54)\]

\[\\begin{array}{l}{\\Omega_{Q^{A}Q^{B}}^{(0)}\\Omega^{(0)Q^{B}Q^{C}} = \\delta_{Q^{A}}^{C}}\\ {\\Omega^{(0)Q^{A}Q^{B}}\\Omega^{(0)}_{Q^{B}Q^{C}} = \\delta^{Q^{A}}_{Q^{C}}.} \\end{array} \\quad (A.55)\]

\[\\widetilde{\\Omega}_{Z^{R}Z^{S}}(Z) = \\Omega^{(0)}_{Q^{A}Q^{B}}\\frac{\\partial Q^{A}}{\\partial Z^{R}} (Z)\\frac{\\partial Q^{B}}{\\partial Z^{S}} (Z). \\quad (A.56)\]

\[\\widetilde{\\Omega}_{z^{r}z^{s}}(z,\\phi = 0) = \\Omega_{z^{r}z^{s}}(z), \\quad (A.57)\]

\[\\widetilde{\\Omega}^{Z^{R}Z^{S}}(Q) = \\left( \\begin{array}{cc}\\Omega^{z^{r}z^{s}}(q,p) & \\Omega^{z^{r}\\phi_{k}}(q,p)\\ \\Omega^{\\phi_{j}z^{s}}(q,p) & \\Omega^{\\phi_{j}\\phi_{k}}(q,p) \\end{array} \\right) = \\left( \\begin{array}{c}\\{\\widetilde{z}^{r},\\widetilde{z}^{s}\\}_{P}\\ \\{\\phi_{j},\\widetilde{z}^{s}\\}_{P} \\end{array} \\right)\\{\\widetilde{z}^{r},\\phi_{k}\\}_{P}\\right). \\quad (A.58)\]

\[\\widetilde{\\Omega}^{Z^{R}Z^{S}}(Q) = \\Omega^{(0)Q^{A}Q^{B}}\\frac{\\partial Z^{R}}{\\partial Q^{A}}(Q)\\frac{\\partial Z^{S}}{\\partial Q^{B}}(Q), \\quad (A.59)\]

\[\\begin{array}{r l} & {\\widetilde{\\Omega}_{Z^{R}Z^{S}}(Z)\\cdot \\widetilde{\\Omega}^{Z^{S}Z^{T}}(Q(Z)) = \\delta_{Z^{R}}^{Z^{T}}}\\ & {\\widetilde{\\Omega}^{Z^{R}Z^{S}}(Q(Z))\\cdot \\widetilde{\\Omega}_{Z^{S}Z^{T}}(Z) = \\delta^{Z^{R}}_{Z^{T}},} \\end{array} \\quad (A.60)\]

\[\\begin{array}{l}{\\frac{\\partial Z^{R}}{\\partial Q^{A}}(Q(Z))\\cdot \\frac{\\partial Q^{A}}{\\partial Z^{S}}(Z) = \\delta^{Z^{R}}_{Z^{S}}}\\ {\\frac{\\partial Q^{A}}{\\partial Z^{R}}(Z)\\cdot \\frac{\\partial Z^{R}}{\\partial Q^{B}}(Q(Z)) = \\delta^{Q^{A}}_{Q^{B}}.} \\end{array} \\quad (A.61)\]

\[\\begin{array}{r l} & {\\widetilde{\\Omega}_{z^{r}z^{s}}(z,\\phi)\\cdot \\{\\widetilde{z}^{s},\\widetilde{z}^{t}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} +\\widetilde{\\Omega}_{z^{r}\\phi_{k}}(z,\\phi)\\cdot \\{\\phi_{k},\\widetilde{z}^{t}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} = \\delta_{r}^{t}}\\ & {\\widetilde{\\Omega}_{z^{r}z^{s}}(z,\\phi)\\cdot \\{\\widetilde{z}^{s},\\phi_{l}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} +\\widetilde{\\Omega}_{z^{r}\\phi_{k}}(z,\\phi)\\cdot \\{\\phi_{k},\\phi_{l}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} = 0}\\ & {\\widetilde{\\Omega}_{\\phi_{j}z^{s}}(z,\\phi)\\cdot \\{\\widetilde{z}^{s},\\widetilde{z}^{t}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} +\\widetilde{\\Omega}_{\\phi_{j}\\phi_{k}}(z,\\phi)\\cdot \\{\\phi_{k},\\widetilde{z}^{t}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} = 0}\\ & {\\widetilde{\\Omega}_{\\phi_{j}z^{s}}(z,\\phi)\\cdot \\{\\widetilde{z}^{s},\\phi_{l}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} +\\widetilde{\\Omega}_{\\phi_{j}\\phi_{k}}(z,\\phi)\\cdot \\{\\phi_{k},\\phi_{l}\\}_{P}\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} = \\delta_{l}^{j},} \\end{array} \\quad (A.62)\]

\[\\begin{array}{r l} & {\\{\\widetilde{z}^{r},\\widetilde{z}^{s}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{z^{s}z^{t}}(z,\\phi) + \\{\\widetilde{z}^{r},\\phi_{k}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{\\phi_{k}z^{t}}(z,\\phi) = \\delta^{r}t}\\ & {\\{\\widetilde{z}^{r},\\widetilde{z}^{s}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{z^{s}\\phi_{l}}(z,\\phi) + \\{\\widetilde{z}^{r},\\phi_{k}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{\\phi_{k}\\phi_{l}}(z,\\phi) = 0}\\ & {\\{\\phi_{j},\\widetilde{z}^{s}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{z^{s}z^{t}}(z,\\phi) + \\{\\phi_{j},\\phi_{k}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{\\phi_{k}z^{t}}(z,\\phi) = 0}\\ & {\\{\\phi_{j},\\widetilde{z}^{s}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{z^{s}\\phi_{l}}(z,\\phi) + \\{\\phi_{j},\\phi_{k}\\} P\\Bigg\\{\\underset {p_{a} = p_{a}(z,\\phi)}{\\overset{q^{a} = q^{a}(z,\\phi)}{\\sim}}\\cdot \\widetilde{\\Omega}_{\\phi_{k}\\phi_{l}}(z,\\phi) = \\delta_{j}^{l}.} \\end{array} \\quad (A.63)\]

\[\\widetilde{\\Omega}_{z^{r}z^{s}}(z,\\phi)\\cdot \\Big(\\{\\widetilde{z}^{s},\\widetilde{z}^{t}\\} P - \\{\\widetilde{z}^{s},\\phi_{j}\\} P\\cdot C^{jk}\\cdot \\{\\phi_{k},\\widetilde{z}^{t}\\} P\\Big)\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} = \\delta_{r}^{t}. \\quad (A.64)\]

For the set of equations (A.63), by solving \(\widetilde{\Omega}_{\phi_{j}z^{r}}(z,\phi)\) from the third equation and by applying the solution of \(\widetilde{\Omega}_{\phi_{j}z^{r}}(z,\phi)\) to the first equation, we get

\[\\Big(\\{\\widetilde{z}^{r},\\widetilde{z}^{s}\\} P - \\{\\widetilde{z}^{r},\\phi_{j}\\} P\\cdot C^{jk}\\cdot \\{\\phi_{k},\\widetilde{z}^{s}\\} P\\Big)\\Bigg\\vert_{\\left\\{ \\begin{array}{l l}{q^{a} = q^{a}(z,\\phi)}\\ {p_{a} = p_{a}(z,\\phi)} \\end{array} \\right.} \\cdot \\widetilde{\\Omega}_{z^{s}z^{t}}(z,\\phi) = \\delta^{r}t. \\quad (A.65)\]

Here, in deriving (A.64) and (A.65), we have used the definition of \(C_{jk}\) (A.35) and \(C^{jk}\) (A.40).

Then, by restricting \(\phi = 0\) for (A.64) and (A.65), we getwhere, in the derivation, we have also used (A.38), (A.52) and (A.57). From (A.66), we can prove the property mentioned at the beginning of this subsection, that is, \(\Omega_{z^{r}z^{s}}(z)\) is nondegenerate and its inverse is \(\{z^{r},z^{s}\}_{D}\) .

\[\\begin{array}{r l} & {\\Omega_{z^{r}z^{s}}(z)\\cdot \\{z^{s},z^{t}\\} _{D} = \\delta_{r}^{t}}\\ & {\\{z^{r},z^{s}\\} _{D}\\cdot \\Omega_{z^{s}z^{t}}(z) = \\delta^{r}t,} \\end{array} \\quad (A.66)\]

### A.7 Represent the Hamiltonian system in the canonical formalism

Given the property mentioned in subsection A.6 around (A.47), we now represent the Hamiltonian system reformulated in subsection A.5 in the canonical formalism.

Since the symplectic form \(\Omega_{z^{r}z^{s}}(z_{0})\) is non- degenerate, the physical phase space is exactly the pre- phase space \(\widetilde{\mathcal{P}}\) , which is parameterized by the constraint surface \(\mathcal{C}\) or equivalently by the set of variables \(z_{0}^{r}\) , with \(r = 1,2,\ldots ,2N - J\) . And we can also read out the brackets from the symplectic form (A.45). Specifically, by taking use of the Hamiltonian equationwe getAnd, by applying (A.68) to (2.6), we getwhere, in the last equation, we have also used (A.47).

\[X_{z_{0}^{r}}\\cdot \\Omega |_{\\widetilde{\\mathcal{P}}} = -\\delta z_{0}^{r}, \\quad (A.67)\]

\[X_{z_{0}^{r}} = -(\\Omega^{-1})^{z^{r}z^{s}}(z_{0})\\frac{\\delta}{\\delta z_{0}^{s}} = (\\Omega^{-1})^{z^{s}z^{r}}(z_{0})\\frac{\\delta}{\\delta z_{0}^{s}}. \\quad (A.68)\]

\[\\{z_{0}^{r},z_{0}^{s}\\} |_{\\widetilde{\\mathcal{P}}} = (\\Omega^{-1})^{z^{r}z^{s}}(z_{0}) = \\{z^{r},z^{s}\\}_{D}|_{z^{r} = z_{0}^{r}}, \\quad (A.69)\]

The Hamiltonian system represented here is exactly the Hamiltonian system constructed from Dirac's canonical formalism.

### B Some relevant properties of special functions

In this appendix, we review some relevant properties of special functions. See [22, 23] and the corresponding Wikipedia pages for more details.

### B.1 Some relevant properties of the hypergeometric function

We now review some relevant properties of the hypergeometric function.

To clarify the convention, we recall the definition of the hypergeometric function. The hypergeometric function can be defined asfor the region within the unit circle \\(|z|< 1\\) , and through analytic extension to the outside of the unit circle.

\[_{2}F_{1}(a,b;c;z) = \\sum_{n = 0}^{+\\infty}\\frac{a_{n}b_{n}}{c_{n}n!} z^{n}, \\quad (B.1)\]

The hypergeometric function is symmetric with respect to the parameters \(a\) and \(b\) as

\[_{2}F_{1}(a,b;c;z) = {}_{2}F_{1}(b,a;c;z). \\quad (B.2)\]

The hypergeometric function satisfies the Euler transformation equation

\[_{2}F_{1}(a,b;c;z) = (1 - z)^{c - a - b}{}_{2}F_{1}(c - a,c - b;c;z). \\quad (B.3)\]

The hypergeometric function has the following integral expressionfor \(n = 0,1,2,\dots\) and \(c\neq \dots , - 2, - 1,0\) . Here, \(\int^{(0 + )}\) denotes a contour integral around the \(u = 0\) point in the anti- clockwise direction. And the expression can be proved by a Taylorexpansion within the unit circle \\(|z| < 1\\) and an analytic extension to the outside of the unit circle.

\[_{2}F_{1}(a, - n;c;z) = (-1)^{n}\\frac{n!}{c_{n}}\\frac{1}{2\\pi i}\\int_{(0^{+})}^{(0 + )}\\frac{d u}{u^{n + 1}} (1 - u)^{c + n - 1}(1 - z u)^{-a}, \\quad (B.4)\]

The hypergeometric function satisfies the contiguous relationsThe hypergeometric function satisfies the recursion relation

\[\\begin{array}{r l} & {(c - 1)\\cdot {}_{2}F_{1}(a,b;c - 1;z) - a\\cdot {}_{2}F_{1}(a + 1,b;c;z) - (c - a - 1)\\cdot {}_{2}F_{1}(a,b;c;z) = 0}\\ & {c\\cdot {}_{2}F_{1}(a,b;c;z) - b\\cdot z\\cdot {}_{2}F_{1}(a,b + 1;c + 1;z) - c\\cdot {}_{2}F_{1}(a - 1,b;c;z) = 0.} \\end{array} \\quad (B.5)\]

\[\\frac{d}{dz}\\Big(2F_{1}(a,b;c;z)\\Big) = \\frac{ab}{c} 2F_{1}(a + 1,b + 1;c + 1;z). \\quad (B.6)\]

### B.2 Some relevant properties of the Jacobi polynomials

We now review some relevant properties of the Jacobi polynomials.

The Jacobi polynomials can be defined with the hypergeometric function asfor \(n = 0,1,2,\ldots\) . Here, the values at \(x\in [1, + \infty)\) or for \(\alpha = \ldots , - 3, - 2, - 1\) are defined through analytic extension.

\[P_{n}^{(\\alpha ,\\beta)}(x) = \\frac{(\\alpha + 1)_{n}}{n!}{}_{2}F_{1}(-n,1 + \\alpha +\\beta +n;\\alpha +1;\\frac{1}{2} (1 - x)), \\quad (B.7)\]

The Jacobi polynomials have the following expressionwhich can be derived by applying (B.1) to (B.7).

\[P_{n}^{(\\alpha ,\\beta)}(x) = \\sum_{k = 0}^{n}\\frac{(\\alpha + k + 1)_{n - k}(1 + \\alpha + \\beta + n)_{k}}{k!(n - k)!}\\Big(\\frac{x - 1}{2}\\Big)^{k}, \\quad (B.8)\]

The Jacobi polynomials have the Rodrigues' formula expressionThe Jacobi polynomials have the following values at \(x = \pm 1\) asandwhich can be derived by taking use of (B.9).

\[P_{n}^{(\\alpha ,\\beta)}(x) = \\frac{(-1)^{n}}{2^{n}n!} (1 - x)^{-\\alpha}(1 + x)^{-\\beta}\\frac{d^{n}}{dx^{n}}\\Big((1 - x)^{\\alpha}(1 + x)^{\\beta}(1 - x^{2})^{n}\\Big). \\quad (B.9)\]

\[P_{n}^{(\\alpha ,\\beta)}(1) = \\frac{(\\alpha + 1)_{n}}{n!}, \\quad (B.10)\]

\[P_{n}^{(\\alpha ,\\beta)}(-1) = (-1)^{n}\\frac{(\\beta + 1)_{n}}{n!}, \\quad (B.11)\]

The Jacobi polynomials have the following generating functionHere, the summation converges for \(- 1 \leqslant x \leqslant 1\) and \\(|t| < 1\\) .

\[\\begin{array}{r l} & {\\sum_{n = 0}^{+\\infty}P_{n}^{(\\alpha ,\\beta)}(x)t^{n} = 2^{\\alpha +\\beta}(1 - 2x t + t^{2})^{-\\frac{1}{2}}}\\ & {\\qquad \\cdot \\left(1 - t + (1 - 2x t + t^{2})^{\\frac{1}{2}}\\right)^{-\\alpha}\\left(1 + t + (1 - 2x t + t^{2})^{\\frac{1}{2}}\\right)^{-\\beta}.} \\end{array} \\quad (B.12)\]

The Jacobi polynomials satisfy the orthogonality condition asfor \(\alpha , \beta > - 1\) .

\[\\begin{array}{l}{{\\int_{-1}^{1}d x(1-x)^{\\alpha}(1+x)^{\\beta}P_{n}^{(\\alpha,\\beta)}(x)P_{n^{\\prime}}^{(\\alpha,\\beta)}(x)}}\\ {{=\\frac{2^{\\alpha+\\beta+1}}{2n+\\alpha+\\beta+1}\\frac{\\Gamma(n+\\alpha+1)\\Gamma(n+\\beta+1)}{\\Gamma(n+\\alpha+\\beta+1)n!}\\delta_{n n^{\\prime}},}}\\end{array} \\quad (B.13)\]

## C Some relevant bitensors invariant under the Killing symmetries

In this appendix, we introduce some relevant bitensors which are invariant under the Killing symmetries.

### C.1 The general definition of the bitensor

We now introduce the bitensors in the Euclidean AdS \(_3\) spacetime.

### C.2 The geodesic distance

\[(X^{(0)})^{2} - (X^{(1)})^{2} - (X^{(2)})^{2} - (X^{(3)})^{2} = 1 \\quad (C.1)\]

\[d s_{E}^{2} = - (d X^{(0)})^{2} + (d X^{(1)})^{2} + (d X^{(2)})^{2} + (d X^{(3)})^{2}. \\quad (C.2)\]

\[\\begin{array}{l}{{X^{(0)}=(r^{2}+1)^{\\frac{1}{2}}\\cosh t_{E}}}\\ {{X^{(1)}=(r^{2}+1)^{\\frac{1}{2}}\\sinh t_{E}}}\\ {{X^{(2)}=r\\cos\\phi}}\\ {{X^{(3)}=r\\sin\\phi}}\\end{array} \\quad (C.3)\]

\[\\cosh_{E}(x_{1};x_{2}) = (r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2}) \\quad (C.4)\]

\[\\cosh_{E}\\rho (x_{1};x_{2}) = X_{1}^{(0)}X_{2}^{(0)} - X_{1}^{(1)}X_{2}^{(1)} - X_{1}^{(2)}X_{2}^{(2)} - X_{1}^{(3)}X_{2}^{(3)} \\quad (C.5)\]

\[\\begin{array}{r l} & {\\cosh_{E}(x_{1};x_{2}) = (r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E,1} - t_{E,2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})}\\ & {\\sinh_{E}(x_{1};x_{2}) = \\left[\\left((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E,1} - t_{E,2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\right)^{2} - 1\\right]^{\\frac{1}{2}}}\\ & {\\rho_{E}(x_{1};x_{2}) = \\log \\left[(r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E,1} - t_{E,2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\right.}\\ & {\\qquad \\left. + \\left[\\left((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E,1} - t_{E,2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\right)^{2} - 1\\right]^{\\frac{1}{2}}\\right]} \\end{array} \\quad (C.6)\]

### C.3 Some other bitensors

\[\\begin{array}{r l} & {\\nabla_{E}^{(1)\\mu_{1}}\\rho_{E}(x_{1};x_{2}) = l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})}\\ & {\\nabla_{E}^{(2)\\mu_{2}}\\rho_{E}(x_{1};x_{2}) = l_{E}^{(2)\\mu_{2}}(x_{1};x_{2})}\\ & {\\nabla_{E}^{(1)\\mu_{1}}l_{E}^{(1)\\nu_{1}}(x_{1};x_{2}) = \\frac{\\cosh\\rho_{E}(x_{1};x_{2})}{\\sinh\\rho_{E}(x_{1};x_{2})}\\Big(g_{E};\\mu_{1}^{\\nu_{1}}(x_{1}) - l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})l_{E}^{(1)\\nu_{1}}(x_{1};x_{2})\\Big)}\\ & {\\nabla_{E}^{(2)\\mu_{2}}l_{E}^{(1)\\mu_{1}}(x_{1};x_{2}) = -\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}\\mathcal{P}_{E};\\mu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2})}\\ & {\\nabla_{E}^{(1)\\mu_{1}}l_{E}^{(2)\\mu_{2}}(x_{1};x_{2}) = -\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}\\mathcal{P}_{E};\\mu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2})}\\ & {\\nabla_{E}^{(2)\\mu_{2}}l_{E}^{(2)\\nu_{2}}(x_{1};x_{2}) = \\frac{\\cosh\\rho_{E}(x_{1};x_{2})}{\\sinh\\rho_{E}(x_{1};x_{2})}\\Big(g_{E};\\mu_{2}^{\\nu_{2}}(x_{2}) - l_{E}^{(2)\\mu_{1}}(x_{1};x_{2})l_{E}^{(2)\\nu_{1}}(x_{1};x_{2})\\Big)}\\ & {\\nabla_{E}^{(1)\\mu_{1}}\\mathcal{P}_{E};\\mu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2}) = -\\frac{\\cosh\\rho_{E}(x_{1};x_{2})}{\\sinh\\rho_{E}(x_{1};x_{2})}l_{E}^{(1)\\nu_{1}}(x_{1};x_{2})\\mathcal{P}_{E};\\mu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2})}\\ & {\\qquad +\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}g_{E};\\mu_{1}^{\\nu_{1}}\\mu_{1}(x_{1})l_{E}^{(2)\\mu_{2}}(x_{1};x_{2})}\\ & {\\qquad -\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})l_{E}^{(1)\\nu_{1}}(x_{1};x_{2})l_{E}^{(2)\\nu_{2}}(x_{1};x_{2})}\\ & {\\nabla_{E}^{(2)\\mu_{2}}\\mathcal{P}_{E};\\mu_{1}^{\\nu_{2}}(x_{1};x_{2}) = -\\frac{\\cosh\\rho_{E}(x_{1};x_{2})}{\\sinh\\rho_{E}(x_{1};x_{2})}\\mathcal{P}_{E};\\mu_{1}^{\\nu_{2}}(x_{1};x_{2})l_{E}^{(2)\\nu_{2}}(x_{1};x_{2})}\\ & {\\qquad +\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})g_{E};\\mu_{2}^{\\nu_{2}}(x_{2})}\\ & {\\qquad -\\frac{1}{\\sinh\\rho_{E}(x_{1};x_{2})}l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})l_{E}^{(2)\\nu_{2}}(x_{1};x_{2})l_{E}^{(2)\\nu_{2}}(x_{1};x_{2})} \\end{array} \\quad (C.7)\]

\[\\widetilde{\\mathcal{Q}}_{E};\\mu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2}) = -\\widetilde{\\epsilon}_{E};\\mu_{1}^{\\nu_{1}}\\nu_{1}\\rho_{1}(x_{1})l_{E}^{(1)\\rho_{1}}(x_{1};x_{2})\\mathcal{P}_{E};\\nu_{1}^{\\nu_{1}}\\mu_{2}(x_{1};x_{2})\]

\[\qquad = -\widetilde{\epsilon}_{E};\mu_{2}^{\nu_{2}}\nu_{2}\rho_{2}(x_{2})l_{E}^{(2)\rho_{2}}(x_{1};x_{2})\mathcal{P}_{E};\mu_{1}^{\nu_{1}}\nu_{2}(x_{1};x_{2}) \quad (C.8)\]

In practice, it is convenient to test these relations in the coordinate system \((t_{E}, y, \phi)\) withWe now provide an argument.

\[r = \\frac{1}{2}\\Big(y - \\frac{1}{y}\\Big). \\quad (C.9)\]

\[\\frac{d^{2}}{d s^{2}} x^{\\mu}(s) + \\Gamma_{\\nu \\rho}^{\\mu}(x(s))\\frac{d}{d s} x^{\\nu}(s)\\frac{d}{d s} x^{\\rho}(s) = 0 \\quad (C.10)\]

\[\\begin{array}{l}{{x^{\\mu}(s=0)=x_{1}^{\\mu}}}\\ {{x^{\\mu}(s=s_{f})=x_{2}^{\\mu}}}\\end{array} \\quad (C.11)\]

We consider a variation of the geodesic.

\[\\frac{D^{2}}{d s^{2}} \\delta x^{\\mu}(s) \\quad (C.12)\]

\[\\begin{array}{c}{\\delta x^{\\mu}(s = 0) = \\delta x_{1}^{\\mu}}\\ {\\delta x^{\\mu}(s = s_{f}) + \\delta s_{f}\\frac{d x^{\\mu}}{d s} (s = s_{f}) = \\delta x_{2}^{\\mu}} \\end{array} \\quad (C.13)\]

### C.4 The bitensors constructed with the Killing fields

\[\\begin{array}{r l} & {\\mathcal{G}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = 2\\xi_{E_{1}};\\mu_{1}^{\\mu_{1}}(x_{1})\\xi_{E_{1} - 1}^{\\mu_{2}}(x_{2}) + 2\\xi_{E_{1} - 1}^{\\mu_{1}}(x_{1})\\xi_{E_{1}};\\mu_{2}^{\\mu_{2}}(x_{2}) - 4\\xi_{E_{0}};\\mu_{1}^{\\mu_{1}}(x_{1})\\xi_{E_{0}};\\mu_{2}^{\\mu_{2}}(x_{2})}\\ & {\\overline{{\\mathcal{G}}}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = 2\\bar{\\xi}_{E_{1}};\\mu_{1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E_{1} - 1}^{\\mu_{2}}(x_{2}) + 2\\bar{\\xi}_{E_{1} - 1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E_{1}};\\mu_{2}^{\\mu_{2}}(x_{2}) - 4\\bar{\\xi}_{E_{0}};\\mu_{1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E_{0}};\\mu_{2}^{\\mu_{2}}(x_{2})} \\end{array} \\quad (C.14)\]

\[\\begin{array}{r l} & {\\mathcal{G}_{E_{1}}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = -l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})l_{E}^{(2)\\mu_{2}}(x_{1};x_{2}) + \\cosh \\rho_{E}(x_{1};x_{2})\\mathcal{P}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {\\qquad -i\\sinh \\rho_{E}(x_{1};x_{2})\\bar{Q}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {\\overline{{\\mathcal{G}}}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2}) = -l_{E}^{(1)\\mu_{1}}(x_{1};x_{2})l_{E}^{(2)\\mu_{2}}(x_{1};x_{2}) + \\cosh \\rho_{E}(x_{1};x_{2})\\mathcal{P}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2})}\\ & {\\qquad +i\\sinh \\rho_{E}(x_{1};x_{2})\\bar{Q}_{E}^{\\mu_{1};\\mu_{2}}(x_{1};x_{2})} \\end{array} \\quad (C.15)\]

## D A review of the canonical quantization for the free scalar in the global AdS3 spacetime

{qscalar}

In this appendix, for the applications elsewhere in this paper, we review the canonical quantization for the free scalar in the global AdS3 spacetime. See [21] for the original work.

### D.1 The model

We first introduce the model.

We adopt the asymptotic boundary conditions 20We represent the action aswithWe now reformulate the model to the covariant phase space formalismand

\[\\Phi = o(r^{-1}). \\quad (D.1)\]

\[\\begin{array}{l}{S = \\int_{M}d^{3}x\\sqrt{-g}\\Big(-\\frac{1}{2} g^{\\mu \\nu}\\partial_{\\mu}\\Phi \\partial_{\\nu}\\Phi -\\frac{1}{2}\\Delta (\\Delta -2)\\Phi^{2}\\Big)}\\ {= \\underset {r_{\\infty}\\to \\infty}{\\lim}\\int_{M_{r_{\\infty}}}d^{3}x\\sqrt{-g}\\Big(-\\frac{1}{2} g^{\\mu \\nu}\\partial_{\\mu}\\Phi \\partial_{\\nu}\\Phi -\\frac{1}{2}\\Delta (\\Delta -2)\\Phi^{2}\\Big),} \\end{array} \\quad (D.2)\]

\[\\Delta >1. \\quad (D.3)\]

\[\\Omega = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\big(\\tau^{\\mu}\\partial_{\\mu}\\delta_{1}\\Phi \\delta_{2}\\Phi -\\delta_{1}\\tau^{\\mu}\\partial_{\\mu}\\delta_{2}\\Phi \\big) \\quad (D.4)\]

\[\\widetilde{\\Omega} [\\Phi_{1};\\Phi_{2}]\\big|_{\\widetilde{\\mathcal{P}}} = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\big(\\tau^{\\mu}\\partial_{\\mu}\\Phi_{1}\\Phi_{2} - \\Phi_{1}\\tau^{\\mu}\\partial_{\\mu}\\Phi_{2}\\big)\\big|_{\\widetilde{\\mathcal{P}}} \\quad (D.5)\]

\[\\widetilde{\\Omega} [\\mathcal{L}_{\\xi}\\Phi_{1};\\Phi_{2}]\\big|_{\\widetilde{\\mathcal{P}}} = -\\widetilde{\\Omega} [\\Phi_{1};\\mathcal{L}_{\\xi}\\Phi_{2}]\\big|_{\\widetilde{\\mathcal{P}}} = -Q_{\\xi}^{(2)}[\\Phi_{1};\\Phi_{2}]\\big|_{\\widetilde{\\mathcal{P}}} \\quad (D.6)\]

\[Q_{\\xi}^{(2)}[\\Phi_{1};\\Phi_{2}]\\big|_{\\widetilde{\\mathcal{P}}} = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(\\nabla_{\\mu}\\Phi_{1}\\nabla_{\\nu}\\Phi_{2} + \\nabla_{\\nu}\\Phi_{1}\\nabla_{\\mu}\\Phi_{2} - g_{\\mu \\nu}\\nabla_{\\rho}\\Phi_{1}\\nabla^{\\rho}\\Phi_{2} - \\Delta (\\Delta -2)g_{\\mu \\nu}\\Phi_{1}\\Phi_{2}\\Big)\\Big|_{\\widetilde{\\mathcal{P}}} \\quad (D.7)\]

\[\\begin{array}{l}{{i(\\omega+m)\\widetilde{\\Omega}[\\phi;\\phi^{*}]|_{\\widetilde{\\mathcal{P}}}=i(\\omega^{*}+m)\\widetilde{\\Omega}[\\phi;\\phi^{*}]|_{\\widetilde{\\mathcal{P}}}}\\ {{=\\int_{0}^{+\\infty}d r\\int_{0}^{2\\pi}d\\phi\\Big[\\frac{r}{r^{2}+1}|\\partial_{t}\\phi-\\partial_{\\phi}\\phi|^{2}+\\frac{1}{r(r^{2}+1)}|\\partial_{\\phi}\\phi|^{2}}\\ {{+r|\\partial_{r}\\phi|^{2}+(\\Delta-1)^{2}r|\\phi|^{2}+r^{3}|\\partial_{r}\\phi+\\frac{1}{r}\\phi|^{2}\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}}}\\end{array} \\quad (D.8)\]

\[\\begin{array}{l}{{i(\\omega-m)\\widetilde{\\Omega}[\\phi;\\phi^{*}]|_{\\widetilde{\\mathcal{P}}}=i(\\omega^{*}-m)\\widetilde{\\Omega}[\\phi;\\phi^{*}]|_{\\widetilde{\\mathcal{P}}}}\\ {{=\\int_{0}^{+\\infty}d r\\int_{0}^{2\\pi}d\\phi\\Big[\\frac{r}{r^{2}+1}|\\partial_{t}\\phi+\\partial_{\\phi}\\phi|^{2}+\\frac{1}{r(r^{2}+1)}|\\partial_{\\phi}\\phi|^{2}}\\ {{+r|\\partial_{r}\\phi|^{2}+(\\Delta-1)^{2}r|\\phi|^{2}+r^{3}|\\partial_{r}\\phi+\\frac{1}{r}\\phi|^{2}\\Big]\\Big|_{\\widetilde{\\mathcal{P}}}}}\\end{array} \\quad (D.9)\]

### D.2 The modes

We now list the modes of the equations of motion.

- The positive representation. The expressions of the modes areThe actions of the Killing symmetries to the modes are asThe detailed expressions of the modes arewith \(m\) and \(n\) in the last expression defined asand taking values as \(m = \ldots , - 2, - 1,0,1,2,\ldots\) and \(n = 0,1,2\ldots\) The asymptotic behaviors of the modes are- The negative representation. The expressions of the modes are

\[\\begin{array}{r l} & {\\phi_{\\Delta , + ;0,0} = \\frac{1}{\\sqrt{2\\pi}}\\frac{e^{-i\\Delta t}}{\\left(r^{2} + 1\\right)^{\\frac{\\Delta}{2}}}}\\ & {\\phi_{\\Delta , + ;k,\\bar{k}} = \\sqrt{\\frac{1}{k!\\Delta_{k}\\bar{k}!\\Delta_{\\bar{k}}}}\\mathcal{L}_{\\xi_{-1}}^{-k}\\mathcal{L}_{\\bar{\\xi}_{-1}}^{-k}\\phi_{\\Delta , + ;0,0}.} \\end{array} \\quad (D.10)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}\\phi_{\\Delta , + ;k,\\bar{k}} = -i\\left(\\frac{\\Delta}{2} +k\\right)\\phi_{\\Delta , + ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{-1}}\\phi_{\\Delta , + ;k,\\bar{k}} = \\sqrt{(k + 1)(\\Delta +k)}\\phi_{\\Delta , + ;k + 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{1}}\\phi_{\\Delta , + ;k,\\bar{k}} = -\\sqrt{k(\\Delta +k - 1)}\\phi_{\\Delta , + ;k - 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{0}}\\phi_{\\Delta , + ;k,\\bar{k}} = -i\\left(\\frac{\\Delta}{2} +\\bar{k}\\right)\\phi_{\\Delta , + ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{-1}}\\phi_{\\Delta , + ;k,\\bar{k}} = \\sqrt{(\\bar{k} + 1)(\\Delta +\\bar{k})}\\phi_{\\Delta , + ;k,\\bar{k} +1}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{1}}\\phi_{\\Delta , + ;k,\\bar{k}} = -\\sqrt{\\bar{k} (\\Delta +\\bar{k} - 1)}\\phi_{\\Delta , + ;k,\\bar{k} -1}.} \\end{array} \\quad (D.11)\]

\[\\begin{array}{r l} & {\\phi_{\\Delta , + ;k,\\bar{k}} = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{-i(\\Delta +k + \\bar{k})t}e^{i(k - \\bar{k})}\\phi \\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}} P_{\\bar{k}}^{(\\Delta - 1,k - \\bar{k})}\\left(\\frac{r^{2} - 1}{r^{2} + 1}\\right)}\\ & {\\qquad = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{k!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{-i(\\Delta +k + \\bar{k})t}e^{i(k - \\bar{k})}\\phi \\frac{r^{k + \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}} P_{\\bar{k}}^{(\\Delta - 1,k + \\bar{k})}\\left(\\frac{r^{2} - 1}{r^{2} + 1}\\right)}\\ & {\\qquad = (-i)^{|m| + 2n}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{(\\Delta + n)|m|}{(n + 1)|m|}} e^{-i(\\Delta +|m| + 2n)t}e^{im\\phi}\\frac{r^{|m|}}{(r^{2} + 1)^{\\frac{\\Delta + |m|}{2}}} P_{n}^{(\\Delta - 1,|m|)}\\left(\\frac{r^{2} - 1}{r^{2} + 1}\\right),} \\end{array} \\quad (D.12)\]

\[\\begin{array}{l}{m = k - \\bar{k}}\\ {n = \\frac{1}{2} (k + \\bar{k} -|k - \\bar{k}|),} \\end{array} \\quad (D.13)\]

\[\\phi_{\\Delta , + ;k,\\bar{k}} = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\Delta_{k}\\Delta_{\\bar{k}}}{k!k!}} e^{-i(\\Delta +k + \\bar{k})t}e^{i(k - \\bar{k})}\\phi \\frac{1}{r^{\\Delta}} +\\mathcal{O}\\Big(\\frac{1}{r^{\\Delta + 2}}\\Big). \\quad (D.14)\]

\[\\begin{array}{l}{\\phi_{\\Delta , - ;0,0} = \\frac{1}{\\sqrt{2\\pi}}\\frac{e^{i\\Delta t}}{(r^{2} + 1)^{\\frac{\\Delta}{2}}}}\\ {\\phi_{\\Delta , - ;k,\\bar{k}} = \\sqrt{\\frac{1}{k!\\Delta_{k}k!\\Delta_{\\bar{k}}}}\\mathcal{L}_{\\xi_{1}}k\\mathcal{L}_{\\bar{\\xi}_{1}}^{\\bar{k}}\\phi_{\\Delta , - ;0,0}.} \\end{array} \\quad (D.15)\]

The actions of the Killing symmetries to the modes are asThe detailed expressions of the modes are

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{0}}\\phi_{\\Delta , - ;k,\\bar{k}} = i\\big(\\frac{\\Delta}{2} +k\\big)\\phi_{\\Delta , - ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{-1}}\\phi_{\\Delta , - ;k,\\bar{k}} = -\\sqrt{k(\\Delta + k - 1)}\\phi_{\\Delta , - ;k - 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{1}}\\phi_{\\Delta , - ;k,\\bar{k}} = \\sqrt{(k + 1)(\\Delta + k)}\\phi_{\\Delta , - ;k + 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{0}}\\phi_{\\Delta , - ;k,\\bar{k}} = i\\big(\\frac{\\Delta}{2} +\\bar{k}\\big)\\phi_{\\Delta , - ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{-1}}\\phi_{\\Delta , - ;k,\\bar{k}} = -\\sqrt{\\bar{k} (\\Delta +\\bar{k} - 1)}\\phi_{\\Delta , - ;k,\\bar{k} - 1}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{1}}\\phi_{\\Delta , - ;k,\\bar{k}} = \\sqrt{(\\bar{k} + 1)(\\Delta +\\bar{k})}\\phi_{\\Delta , - ;k,\\bar{k} +1}.} \\end{array} \\quad (D.16)\]

\[\\begin{array}{r l} & {\\phi_{\\Delta , - ;k,\\bar{k}} = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{i(\\Delta +k + \\bar{k})t}e^{-i(k - \\bar{k})\\phi}\\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}} P_{n}^{(\\Delta - 1,k - \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{k!\\cdot\\Delta_{\\bar{k}}}{k!\\cdot\\Delta_{k}}} e^{i(\\Delta +k + \\bar{k})t}e^{-i(k - \\bar{k})\\phi}\\frac{r^{-k + \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta - k + \\bar{k}}{2}}} P_{n}^{(\\Delta - 1,k - \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = i^{|m| + 2n}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{(\\Delta + n)|m|}{(n + 1)|m|}} e^{i(\\Delta +|m| + 2n)t}e^{-im\\phi}\\frac{r^{|m|}}{(r^{2} + 1)^{\\frac{\\Delta + |m|}{2}}} P_{n}^{(\\Delta - 1,|m|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big),} \\end{array} \\quad (D.17)\]

\(\{ \mathrm{sexp - }\}\)

with \(m\) and \(n\) in the last expression defined asand taking values as \(m = \ldots , - 2, - 1,0,1,2,\ldots\) and \(n = 0,1,2\ldots\)

\[\\begin{array}{l}{m = k - \\bar{k}}\\ {n = \\frac{1}{2} (k + \\bar{k} -|k - \\bar{k} |),} \\end{array} \\quad (D.18)\]

We now provide some explanations for the aforementioned expressions:And we can verify these relations (D.19) with (B.8).

\[\\begin{array}{r l} & {(\\alpha +\\beta +n + 1)P_{n}^{(\\alpha ,\\beta)}(x) + (x - 1)P_{n}^{(\\alpha ,\\beta)}{}^{\\prime}(x) = (\\alpha +\\beta +n + 1)P_{n}^{(\\alpha ,\\beta +1)}(x)}\\ & {(n x + n + 2\\beta)P_{n}^{(\\alpha ,\\beta)}(x) + (-x^{2} + 1)P_{n}^{(\\alpha ,\\beta)}{}^{\\prime}(x) = (2\\beta +2n)P_{n}^{(\\alpha ,\\beta -1)}(x)}\\ & {((\\alpha +\\beta +n + 1)x + (\\alpha -\\beta +n + 1))P_{n}^{(\\alpha ,\\beta)}(x) + (x^{2} - 1)P_{n}^{(\\alpha ,\\beta)}{}^{\\prime}(x) = (2n + 2)P_{n + 1}^{(\\alpha ,\\beta -1)}(x)}\\ & {n P_{n}^{(\\alpha ,\\beta)}(x) + (-x + 1)P_{n}^{(\\alpha ,\\beta)}{}^{\\prime}(x) = (\\alpha +n)P_{n - 1}^{(\\alpha ,\\beta +1)}(x).} \\end{array} \\quad (D.19)\]

- The equivalence between the first and the second expressions in (D.12) and in (D.17) respectively can be shown with (B.2), (B.3), (B.7).

The asymptotic behaviors of the modes are

\[\\phi_{\\Delta , - ;k,\\bar{k}} = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\Delta_k\\Delta_{\\bar{k}}}{k!\\bar{k!}}} e^{i(\\Delta +k + \\bar{k})t}e^{-i(k - \\bar{k})\\phi}\\frac{1}{r^{\\Delta}} +\\mathcal{O}\\Big(\\frac{1}{r^{\\Delta + 2}}\\Big). \\quad (D.20)\]

### D.3 Quantization

\[\\Phi (x)|_{\\widehat{\\mathcal{P}}} = \\sum_{k,\\bar{k} = 0}^{+\\infty}\\phi_{\\Delta , + ;k,\\bar{k}}(x)a_{k,\\bar{k}} + \\phi_{\\Delta , - ;k,\\bar{k}}(x)a_{k,\\bar{k}}^{*} \\quad (D.21)\]

### D.4 The Euclidean correlation function

### D.4.1 The definition

\[\\Phi_{E}(t_{E},r,\\phi) = \\Phi (t = -it_{E},r,\\phi) \\quad (D.22)\]

\[\\Phi_{E}(x) = \\sum_{k,\\bar{k} = 0}^{+\\infty}\\phi_{E;\\Delta , + ;k,\\bar{k}}(x)a_{k,\\bar{k}} + \\phi_{E;\\Delta , - ;k,\\bar{k}}(x)a_{k,\\bar{k}}^{*} \\quad (D.23)\]

- The positive representation. The expressions of the modes are

\[\\begin{array}{l}{\\phi_{E;\\Delta , + ;0,0} = \\frac{1}{\\sqrt{2\\pi}}\\frac{e^{-\\Delta t_E}}{(r^2 + 1)^{\\frac{\\Delta}{2}}}}\\ {\\phi_{E;\\Delta , + ;k,\\bar{k}} = \\sqrt{\\frac{1}{k!\\Delta_k\\bar{k}!\\Delta_{\\bar{k}}}}\\mathcal{L}_{\\xi_{E; - 1}}k\\mathcal{L}_{\\bar{\\xi}_{E; - 1}}\\bar{k}\\phi_{E;\\Delta , + ;0,0}.} \\end{array} \\quad (D.24)\]

The actions of the Killing symmetries to the modes are asThe detailed expressions of the modes arewith \(m\) and \(n\) in the last expression defined asand taking values as \(m = \ldots , - 2, - 1,0,1,2,\ldots\) and \(n = 0,1,2\ldots\)

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{E;0}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = -i(\\frac{\\Delta}{2} +k)\\phi_{E;\\Delta , + ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{E; - 1}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = \\sqrt{(k + 1)(\\Delta + k)}\\phi_{E;\\Delta , + ;k + 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{E;1}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = -\\sqrt{k(\\Delta + k - 1)}\\phi_{E;\\Delta , + ;k - 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{E;0}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = -i(\\frac{\\Delta}{2} +\\bar{k})\\phi_{E;\\Delta , + ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{E; - 1}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = \\sqrt{(\\bar{k} + 1)(\\Delta +\\bar{k})}\\phi_{E;\\Delta , + ;k,\\bar{k} +1}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{E;1}}\\phi_{E;\\Delta , + ;k,\\bar{k}} = -\\sqrt{\\bar{k} (\\Delta +\\bar{k} - 1)}\\phi_{E;\\Delta , + ;k,\\bar{k} -1}.} \\end{array} \\quad (D.25)\]

\[\\begin{array}{r l} & {\\phi_{E;\\Delta ,+;k,\\bar{k}} = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{-(\\Delta +k + \\bar{k})t_{E}}e^{i(k - \\bar{k})\\phi}\\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}}P_{\\bar{k}}^{(\\Delta -1,k - \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{\\bar{k}}}{k!\\cdot\\Delta_{k}}} e^{-(\\Delta +k + \\bar{k})t_{E}}e^{i(k - \\bar{k})\\phi}\\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta - k + \\bar{k}}{2}}}P_{\\bar{k}}^{(\\Delta -1,k - \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = (-i)^{|m| + 2n}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{(\\Delta + n)_{|m|}}{(n + 1)_{|m|}}}e^{-(\\Delta +|m| + 2n)t_{E}}e^{i m\\phi}\\frac{r^{|m|}}{(r^{2} + 1)^{\\frac{\\Delta + |m|}{2}}}P_{\\bar{n}}^{(\\Delta -1,|m|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big),} \\end{array} \\quad (D.26)\]

\[\\begin{array}{l}{m = k - \\bar{k}}\\ {n = \\frac{1}{2} (k + \\bar{k} -|k - \\bar{k} |),} \\end{array} \\quad (D.27)\]

- The negative representation. The expressions of the modes are

\[\\begin{array}{r l} & {\\phi_{E;\\Delta , - ;0,0} = \\frac{1}{\\sqrt{2\\pi}}\\frac{e^{\\Delta t_{E}}}{(r^{2} + 1)^{\\frac{\\Delta}{2}}}}\\ & {\\phi_{E;\\Delta , - ;k,\\bar{k}} = \\sqrt{\\frac{1}{k!\\Delta_{k}\\bar{k}!\\Delta_{\\bar{k}}}} \\mathcal{L}_{\\xi_{E};1} \\mathcal{L}_{\\bar{\\xi}_{E};1}^{\\bar{k}} \\phi_{E;\\Delta , - ;0,0}.} \\end{array} \\quad (D.28)\]

The actions of the Killing symmetries to the modes are asThe detailed expressions of the modes arewith \(m\) and \(n\) in the last expression defined asand taking values as \(m = \ldots , - 2, - 1,0,1,2,\ldots\) and \(n = 0,1,2\ldots\)

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{E};0}\\phi_{E;\\Delta , - ;k,\\bar{k}} = i\\big(\\frac{\\Delta}{2} +k\\big)\\phi_{E;\\Delta , - ;k,\\bar{k}}\\ & {\\mathcal{L}_{\\xi_{E}; - 1}\\phi_{E;\\Delta , - ;k,\\bar{k}} = -\\sqrt{k(\\Delta + k - 1)}\\phi_{E;\\Delta , - ;k - 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{E};1}\\phi_{E;\\Delta , - ;k,\\bar{k}} = \\sqrt{(k + 1)(\\Delta + k)}\\phi_{E;\\Delta , - ;k + 1,\\bar{k}}}\\ & {\\mathcal{L}_{\\xi_{\\bar{E}};0}\\phi_{E;\\Delta , - ;k,\\bar{k}} = i\\big(\\frac{\\Delta}{2} +\\bar{k}\\big)\\phi_{E;\\Delta , - ;k,\\bar{k}}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{E}; - 1}\\phi_{E;\\Delta , - ;k,\\bar{k}} = -\\sqrt{\\bar{k}(\\Delta + \\bar{k} - 1)}\\phi_{E;\\Delta , - ;k,\\bar{k} - 1}}\\ & {\\mathcal{L}_{\\bar{\\xi}_{E};1}\\phi_{E;\\Delta , - ;k,\\bar{k}} = \\sqrt{(\\bar{k} + 1)(\\Delta +\\bar{k})}\\phi_{E;\\Delta , - ;k,\\bar{k} +1}} \\end{array} \\quad (D.29)\]

\[\\begin{array}{r l} & {\\phi_{E;\\Delta , - ;k,\\bar{k}} = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{k}}} e^{(\\Delta +k + \\bar{k})t_{E}}e^{-i(k - \\bar{k})\\phi}\\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}}P_{\\bar{k}}^{(\\Delta -1,k - \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{k}}} e^{(\\Delta +k + \\bar{k})t_{E}}e^{-i(k - \\bar{k})\\phi}\\frac{r^{k + \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta - k + \\bar{k}}{2}}}P_{\\bar{k}}^{(\\Delta -1,k + \\bar{k})}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad = i^{|m| + 2n}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{(\\Delta + n)_{|m|}}{(n + 1)_{|m|}}} e^{(\\Delta +|m| + 2n)t_{E}}e^{-i m\\phi}\\frac{r^{|m|}}{(r^{2} + 1)^{\\frac{\\Delta + |m|}{2}}}P_{\\bar{n}}^{(\\Delta -1,|m|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big),} \\end{array} \\quad (D.30)\]

\[\\begin{array}{l}{m = k - \\bar{k}}\\ {n = \\frac{1}{2} (k + \\bar{k} -|k - \\bar{k} |),} \\end{array} \\quad (D.31)\]

We now define the Euclidean correlation function asHere, we define \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) asWe choose \(\theta (x)\) to beAnd the limit is taken in the sense of the generalized function.

\[\\begin{array}{r l} & {G_{E;\\Delta}(x_{1};x_{2}) = \\underset {\\epsilon \\to 0^{+}}{\\lim}\\left[\\widetilde{G}_{E;\\Delta}(\\widetilde{x}_{1};x_{2})\\big|_{\\widetilde{x}_{1}^{\\mu} = x_{1}^{\\mu} + \\epsilon \\delta_{t_{E}}^{\\mu}}\\cdot \\theta (t_{E;1} - t_{E;2})\\right.}\\ & {\\qquad \\left. + \\widetilde{G}_{E;\\Delta}(\\widetilde{x}_{1};x_{2})\\big|_{\\widetilde{x}_{1}^{\\mu} = x_{1}^{\\mu} - \\epsilon \\delta_{t_{E}}^{\\mu}}\\cdot \\left(1 - \\theta (t_{E;1} - t_{E;2})\\right)\\right].} \\end{array} \\quad (D.32)\]

\[\\begin{array}{r l} & {\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})}\\ & {= \\left\\{ \\begin{array}{l l}{\\langle 0|\\Phi_{E}(x_{1})\\Phi_{E}(x_{2})|0\\rangle} & {\\mathrm{for}\\quad t_{E;1} > t_{E;2}}\\ {\\langle 0|\\Phi_{E}(x_{2})\\Phi_{E}(x_{1})|0\\rangle} & {\\mathrm{for}\\quad t_{E;1}< t_{E;2}} \\end{array} \\right.}\\ & {= \\left\\{ \\begin{array}{l l}{\\sum_{k,\\bar{k} = 0}^{+\\infty}\\phi_{E;\\Delta , + ;k,\\bar{k}}(x_{1})\\phi_{E;\\Delta , - ;k,\\bar{k}}(x_{2})} & {\\mathrm{for}\\quad t_{E;1} > t_{E;2}}\\ {\\sum_{k,\\bar{k} = 0}^{+\\infty}\\phi_{E;\\Delta , + ;k,\\bar{k}}(x_{2})\\phi_{E;\\Delta , - ;k,\\bar{k}}(x_{1})} & {\\mathrm{for}\\quad t_{E;1}< t_{E;2}} \\end{array} \\right..} \\end{array} \\quad (D.33)\]

\[\\theta (x) = \\left\\{ \\begin{array}{ll}1 & \\mathrm{for} \\quad x \\geqslant 0 \\ 0 & \\mathrm{for} \\quad x < 0 \\end{array} \\right.. \\quad (D.34)\]

### D.4.2 An addition formula

We now introduce an addition formula for \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) in (D.33).

Specifically, we can compute \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) to a compact form asfor \(t_{E;1} \neq t_{E;2}\) . Here, \(\rho_{E}\) is the geodesic distance between \(x_{1}\) and \(x_{2}\) , whose expression is given in (C.6)

\[\\widetilde{G}_{E;\\Delta}(x_{1};x_{2}) = \\frac{1}{4\\pi}\\frac{e^{-(\\Delta - 1)\\rho_{E}}}{\\sinh\\rho_{E}}, \\quad (D.35)\]

In the following, we will provide two proofs of the addition formula (D.35).

We now provide the first proof of the addition formula (D.35), which is based on the Killing symmetries.

Here, we only consider the case with \(t_{E;1} > t_{E;2}\) . And we omit the similar proof for the case with \\(t_{E;1} < t_{E;2}\\) .

We now compute \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) for the case of \(t_{E;2} = 0\) , \(r_{2} = 0\) . Specifically, we perform the following computationHere, we have used (B.11), (B.12), (C.6), (D.26), (D.30).

\[\\begin{array}{r l} & {\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\big|_{t_{E;2} = 0,r_{2} = 0}}\\ & {= \\sum_{n = 0}^{+\\infty}\\frac{1}{2\\pi} (-1)^{n}e^{-(\\Delta +2n)t_{E;1}}\\frac{1}{(r_{1}^{2} + 1)^{\\frac{\\Delta}{2}}} P_{n}^{(\\Delta -1,0)}\\Big(\\frac{r_{1}^{2} - 1}{r_{1}^{2} + 1}\\Big)}\\ & {= \\frac{1}{2\\pi} e^{-\\Delta t_{E;1}}\\frac{1}{(r_{1}^{2} + 1)^{\\frac{\\Delta}{2}}}\\sum_{n = 0}^{+\\infty}\\big(-e^{-2t_{E;1}}\\big)^{n}P_{n}^{(\\Delta -1,0)}\\Big(\\frac{r_{1}^{2} - 1}{r_{1}^{2} + 1}\\Big)}\\ & {= \\frac{1}{2\\pi} e^{-\\Delta t_{E;1}}\\frac{1}{(r_{1}^{2} + 1)^{\\frac{\\Delta}{2}}}\\cdot 2^{\\Delta -1}\\cdot \\Big(1 + \\frac{2(r_{1}^{2} - 1)}{r_{1}^{2} + 1} e^{-2t_{E;1}} + e^{-4t_{E;1}}\\Big)^{-\\frac{1}{2}}}\\ & {\\quad \\cdot \\Big[1 + e^{-2t_{E;1}} + \\Big(1 + \\frac{2(r_{1}^{2} - 1)}{r_{1}^{2} + 1} e^{-2t_{E;1}} + e^{-4t_{E;1}}\\Big)^{\\frac{1}{2}}\\Big]^{-(\\Delta -1)}}\\ & {= \\frac{1}{4\\pi}\\frac{1}{\\Big((r_{1}^{2} + 1)\\cosh^{2}t_{E;1} - 1\\Big)^{\\frac{1}{2}}}}\\ & {\\quad \\cdot \\Big[(r_{1}^{2} + 1)^{\\frac{1}{2}}\\cosh t_{E;1} + \\Big((r_{1}^{2} + 1)\\cosh^{2}t_{E;1} - 1\\Big)^{\\frac{1}{2}}\\Big]^{-(\\Delta -1)}}\\ & {= \\frac{1}{4\\pi}\\frac{e^{-(\\Delta -1)\\rho_{E}}}{\\sinh\\rho_{E}}\\Big|_{t_{E;2} = 0,r_{2} = 0}} \\end{array} \\quad (D.36)\]

By taking use of the fact that \(\rho\) is invariant under the Killing transformation, we conclude thatWe now provide the second proof of the addition formula (D.35), which is based on a direct computation.

\[\\widetilde{G}_{E;\\Delta}(x_{1};x_{2}) = \\frac{1}{4\\pi}\\frac{e^{-(\\Delta -1)\\rho_{E}}}{\\sinh\\rho_{E}}. \\quad (D.37)\]

Here, we again only consider the case with \(t_{E;1} > t_{E;2}\) . And we omit the similar proof for the case with \\(t_{E;1} < t_{E;2}\\) .

We first represent the modes (D.26), (D.30) in the integral expressions asandHere, in the derivation, we have used (B.4) and (B.7). And we have also taken the following transformation for the integral variable asWe now apply (D.38) and (D.39) to \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) (D.33). Specifically, we rewrite \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) asHere, we choose the contour \(C_{1}\) and \(C_{2}\) to be the unit circlesOn such a contour, the summation of the integrands converge uniformly, which can be shown by noticing that the expressionsandare maps, that map the unit circle to the unit circle, the interior to the interior, and the exterior to the exterior. And, because of the uniform convergence of the summation of the integrands, the order of the integrals and the summations are commutable.

\[\\begin{array}{r l} & {\\phi_{E;\\Delta , + ;k,\\bar{k}} = (-i)^{k - \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{-(\\Delta +k + \\bar{k})t_{E}}e^{i(k - \\bar{k})\\phi}}\\ & {\\qquad \\cdot \\frac{r^{k - \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta + k - \\bar{k}}{2}}}\\cdot \\frac{1}{2\\pi i}\\int_{(0 + )}^{(0 + )}\\frac{d u}{u^{k + 1}} (1 - u)^{\\Delta +\\bar{k} -1}\\big(1 - \\frac{1}{r^{2} + 1} u\\big)^{-\\Delta -k}}\\ & {\\qquad = (-i)^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{\\bar{k}!\\cdot\\Delta_{k}}{k!\\cdot\\Delta_{\\bar{k}}}} e^{-(\\Delta +k + \\bar{k})t_{E}}e^{i(k - \\bar{k})\\phi}}\\ & {\\qquad \\cdot \\frac{1}{2\\pi i}\\int_{(0 + )}^{(0 + )}\\frac{d\\tilde{u}}{\\tilde{u}^{k + 1}}\\big(r - (r^{2} + 1)^{\\frac{1}{2}}\\tilde{u}\\big)^{k}\\big((r^{2} + 1)^{\\frac{1}{2}} - r\\tilde{u}\\big)^{-\\Delta -k},} \\end{array} \\quad (D.38)\]

\[\\begin{array}{r l} & {\\phi_{E;\\Delta , - ;k,\\bar{k}} = i^{-k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{k!\\cdot\\Delta_{\\bar{k}}}{k!\\cdot\\Delta_{k}}} e^{(\\Delta +k + \\bar{k})t_{E}}e^{-i(k - \\bar{k})\\phi}}\\ & {\\qquad \\cdot \\frac{r^{-k + \\bar{k}}}{(r^{2} + 1)^{\\frac{\\Delta - k + \\bar{k}}{2}}}\\cdot \\frac{1}{2\\pi i}\\int^{(0 + )}\\frac{d u}{u^{k + 1}} (1 - u)^{\\Delta +k - 1}(1 - \\frac{1}{r^{2} + 1} u)^{-\\Delta -\\bar{k}}}\\ & {\\qquad = i^{k + \\bar{k}}\\frac{1}{\\sqrt{2\\pi}}\\sqrt{\\frac{k!\\cdot\\Delta_{\\bar{k}}}{k!\\cdot\\Delta_{k}}} e^{(\\Delta +k + \\bar{k})t_{E}}e^{-i(k - \\bar{k})\\phi}}\\ & {\\qquad \\cdot \\frac{1}{2\\pi i}\\int^{(0 + )}\\frac{d\\tilde{u}}{\\tilde{u}^{k + 1}} (r - (r^{2} + 1)^{\\frac{1}{2}}\\tilde{u})^{\\bar{k}}\\big((r^{2} + 1)^{\\frac{1}{2}} - r\\tilde{u}\\big)^{-\\Delta -\\bar{k}}.} \\end{array} \\quad (D.39)\]

\[u = \\frac{(r^{2} + 1)^{\\frac{1}{2}}\\tilde{u}}{(r^{2} + 1)^{\\frac{1}{2}}\\tilde{u} - r}. \\quad (D.40)\]

\[\\begin{array}{r l}&{\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})}\\ &{=\\sum_{k,k=0}^{+\\infty}\\frac{1}{2\\pi}e^{-(\\Delta+k+\\bar{k})(t_{E,1}-t_{E,2})}e^{i(k-\\bar{k})}(\\phi_{1}-\\phi_{2})}\\ &{\\quad\\cdot\\frac{1}{2\\pi i}\\int_{C_{1}}\\frac{d u_{1}}{u_{1}^{k+1}}(r_{1}-(r_{1}^{2}+1)^{\\frac{1}{2}}u_{1})^{k}((r_{1}^{2}+1)^{\\frac{1}{2}}-r_{1}u_{1})^{-\\Delta-k}}\\ &{\\quad\\cdot\\frac{1}{2\\pi i}\\int_{C_{2}}\\frac{d u_{2}}{u_{2}^{k+1}}(r_{2}-(r_{2}^{2}+1)^{\\frac{1}{2}}u_{2})^{\\bar{k}}((r_{2}^{2}+1)^{\\frac{1}{2}}-r_{2}u_{2})^{-\\Delta-k}}\\ &{=\\frac{1}{2\\pi}e^{-\\Delta(t_{E,1}-t_{E,2})}\\frac{1}{2\\pi i}\\int_{C_{1}}\\frac{d u_{1}}{u_{1}}\\frac{1}{2\\pi i}\\int_{C_{2}}\\frac{d u_{2}}{u_{2}}((r_{1}^{2}+1)^{\\frac{1}{2}}-r_{1}u_{1})^{-\\Delta}((r_{2}^{2}+1)^{\\frac{1}{2}}-r_{2}u_{2})^{-\\Delta}}\\ &{\\quad\\cdot\\sum_{k=0}^{+\\infty}\\left(e^{-(t_{E,1}-t_{E,2})}e^{i(\\phi_{1}-\\phi_{2})}\\frac{1}{u_{2}}\\frac{r_{1}-(r_{1}^{2}+1)^{\\frac{1}{2}}u_{1}}{(r_{1}^{2}+1)^{\\frac{1}{2}}-r_{1}u_{1}}\\right)^{k}}\\ &{\\quad\\cdot\\sum_{k=0}^{+\\infty}\\left(e^{-(t_{E,1}-t_{E,2})}e^{-i(\\phi_{1}-\\phi_{2})}\\frac{1}{u_{1}}\\frac{r_{2}-(r_{2}^{2}+1)^{\\frac{1}{2}}}{(r_{2}^{2}+1)^{\\frac{1}{2}}-r_{2}u_{2}}\\right)^{\\bar{k}}}\\ &{=\\frac{1}{2\\pi}e^{-\\Delta(t_{E,1}-t_{E,2})}\\int_{C_{1}}\\frac{d u_{1}}{2\\pi i}\\int_{C_{2}}\\frac{d u_{2}}{2\\pi i}((r_{1}^{2}+1)^{\\frac{1}{2}}-r_{1}u_{1})^{-\\Delta}((r_{2}^{2}+1)^{\\frac{1}{2}}-r_{2}u_{2})^{-\\Delta}}\\ &{\\quad\\cdot\\left[u_{1}-e^{-(t_{E,1}-t_{E,2})}e^{-i(\\phi_{1}-\\phi_{2})}\\frac{r_{2}-(r_{2}^{2}+1)^{\\frac{1}{2}}u_{2}}{(r_{2}^{2}+1)^{\\frac{1}{2}}-r_{2}u_{2}}\\right]^{-1}}\\ &{\\quad\\cdot\\left[u_{2}-e^{-(t_{E,1}-t_{E,2})}e^{i(\\phi_{1}-\\phi_{2})}\\frac{r_{1}-(r_{1}^{2}+1)^{\\frac{1}{2}}u_{1}}{(r_{1}^{2}+1)^{\\frac{1}{2}}-r_{1}u_{1}}\\right]^{-1}.}\\end{array} \\quad (D.41)\]

\[\\begin{array}{l}{{|u_{1}|=1}}\\ {{|u_{2}|=1.}}\\end{array} \\quad (D.42)\]

\[\\frac{r_{1} - (r_{1}^{2} + 1)^{\\frac{1}{2}}u_{1}}{(r_{1}^{2} + 1)^{\\frac{1}{2}} - r_{1}u_{1}}, \\quad (D.43)\]

\[\\frac{r_{2} - (r_{2}^{2} + 1)^{\\frac{1}{2}}u_{2}}{(r_{2}^{2} + 1)^{\\frac{1}{2}} - r_{2}u_{2}}, \\quad (D.44)\]

We now take a contour integral over the variable \(u_{2}\) in (D.41). With the notice around (D.43) and (D.44), we see that, for \(|u_{1}| = 1\) , the only pole of the integrand within the unit circle isThen, by applying the residue theorem, we getTo take a contour integral over the variable \(u_{1}\) in (D.46), we first study the poles of the integrands. Specifically, by solving the corresponding algebraic equation, we get the followingtwo polesandWe now study the relative locations of the poles (D.47) and (D.48) with respect to the unit circle. We first note that \(u_{1}^{(1)*}\) and \(u_{1}^{(2)*}\) are the solutions ofTogether with the notice around (D.43) and (D.44), we know that \(u_{1}^{(1)*}\) and \(u_{1}^{(2)*}\) cannot be on the unit circle. We then compute the values of \(u_{1}^{(1)*}\) and \(u_{1}^{(2)*}\) under the limit of \(t_{E;2} \to +\infty\) asWe see that, under the limit \(t_{E;2} \to +\infty\) , \(u_{1}^{(1)*}\) is in the interior of the unit circle, and \(u_{1}^{(2)*}\) is in the exterior of the unit circle. Together with the continuity, we conclude that \(u_{1}^{(1)*}\) is always in the interior of the unit circle, and \(u_{2}^{(2)*}\) is always in the exterior of the unit circle.

\[u_{2}^{*} = e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}\\frac{r_{1} - (r_{1}^{2} + 1)^{\\frac{1}{2}}u_{1}}{(r_{1}^{2} + 1)^{\\frac{1}{2}} - r_{1}u_{1}}. \\quad (D.45)\]

\[\\begin{array}{r l} & {\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})}\\ & {= \\frac{1}{2\\pi} e^{-\\Delta (t_{E;1} - t_{E;2})}\\int_{C_{1}}\\frac{d u_{1}}{2\\pi i}}\\ & {\\quad \\cdot \\left[\\left((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}} - r_{1}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}\\right)\\right.}\\ & {\\quad +\\left. - (r_{1}(r_{2}^{2} + 1)^{\\frac{1}{2}} + (r_{1}^{2} + 1)^{\\frac{1}{2}}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})})u_{1}\\right]^{-(\\Delta -1)}}\\ & {\\quad \\cdot \\left[\\left(-r_{1}(r_{2}^{2} + 1)^{\\frac{1}{2}} + (r_{1}^{2} + 1)^{\\frac{1}{2}}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}\\right)u_{1}^{2}\\right.}\\ & {\\quad +\\left.\\left((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}} - r_{1}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}\\right)\\right.}\\ & {\\quad +r_{1}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{-i(\\phi_{1} - \\phi_{2})} - (r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}e^{-2(t_{E;1} - t_{E;2})}\\right)u_{1}}\\ & {\\quad +\\left.\\left(-(r_{1}^{2} + 1)^{\\frac{1}{2}}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{-i(\\phi_{1} - \\phi_{2})} + r_{1}(r_{2}^{2} + 1)^{\\frac{1}{2}}e^{-2(t_{E;1} - t_{E;2})}\\right)\\right]^{-1}.} \\end{array} \\quad (D.46)\]

\[\\begin{array}{r l} & {u_{1}^{(1)*} = \\frac{e^{-(t_{E;1} - t_{E;2})}}{r_{1}(r_{2}^{2} + 1)^{\\frac{1}{2}} - (r_{1}^{2} + 1)^{\\frac{1}{2}}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}}}\\ & {\\qquad \\cdot \\left[(r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\sinh (t_{E;1} - t_{E;2}) - ir_{1}r_{2}\\sin (\\phi_{1} - \\phi_{2})\\right.}\\ & {\\qquad \\left. - \\left[((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2}))^{2} - 1\\right]^{\\frac{1}{2}}\\right],} \\end{array} \\quad (D.47)\]

\[\\begin{array}{r l} & {u_{1}^{(2)*} = \\frac{e^{-(t_{E;1} - t_{E;2})}}{r_{1}(r_{2}^{2} + 1)^{\\frac{1}{2}} - (r_{1}^{2} + 1)^{\\frac{1}{2}}r_{2}e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}}}\\ & {\\qquad \\cdot \\left[(r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\sinh (t_{E;1} - t_{E;2}) - ir_{1}r_{2}\\sin (\\phi_{1} - \\phi_{2})\\right.}\\ & {\\qquad \\left. + \\left[((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2}))^{2} - 1\\right]^{\\frac{1}{2}}\\right].} \\end{array} \\quad (D.48)\]

\[\\begin{array}{r l} & {u_{1} = e^{-(t_{E;1} - t_{E;2})}e^{-i(\\phi_{1} - \\phi_{2})}\\frac{r_{2} - (r_{2}^{2} + 1)^{\\frac{1}{2}}u_{2}}{(r_{2}^{2} + 1)^{\\frac{1}{2}} - r_{2}u_{2}}}\\ & {u_{2} = e^{-(t_{E;1} - t_{E;2})}e^{i(\\phi_{1} - \\phi_{2})}\\frac{r_{1} - (r_{1}^{2} + 1)^{\\frac{1}{2}}u_{1}}{(r_{1}^{2} + 1)^{\\frac{1}{2}} - r_{1}u_{1}}.} \\end{array} \\quad (D.49)\]

\[\\begin{array}{r l} & {\\underset {t_{E;2}\\to +\\infty}{\\lim}u_{1}^{(1)*} = 0}\\ & {\\underset {t_{E;2}\\to +\\infty}{\\lim}u_{1}^{(2)*} = \\frac{(r_{1}^{2} + 1)^{\\frac{1}{2}}}{r_{1}}.} \\end{array} \\quad (D.50)\]

We now take a contour integral over the variable \(u_{2}\) in (D.46). By taking use of the residuetheorem and the previous analysis of the poles, we getHere, we have used (C.6). And the final expression is precisely (D.35).

\[\\begin{array}{r l} & {\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})}\\ & {= \\frac{1}{4\\pi}\\bigg[\\big((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\big)}\\ & {\\quad +\\left[\\big((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\right)^{2} - 1\\right]^{\\frac{1}{2}}}\\ & {\\quad \\cdot \\left[\\big((r_{1}^{2} + 1)^{\\frac{1}{2}}(r_{2}^{2} + 1)^{\\frac{1}{2}}\\cosh (t_{E;1} - t_{E;2}) - r_{1}r_{2}\\cos (\\phi_{1} - \\phi_{2})\\right)^{2} - 1\\right]^{-\\frac{1}{2}}}\\ & {= \\frac{1}{4\\pi}\\frac{e^{-(\\Delta - 1)\\rho_{E}}}{\\sinh \\rho_{E}}.} \\end{array} \\quad (D.51)\]

### D.4.3 The expression of the correlation function

### D.4.4 Invariance under the Killing symmetries

We now show that the correlation function () is invariant under the Killing symmetries.

### D.4.5 The Green function equation

We now show that the correlation function \(G_{E;\Delta}(x_{1};x_{2})\) satisfies the Green function equation.

To apply the correlation function to the Green function equation, we first introduce the following two equations for \(\widetilde{G}_{E;\Delta}(x_{1};x_{2})\) asandWe can show (D.52) with a direct computation. And we show (D.53) as the followingwhere we have used

\[\\lim_{\\epsilon \\to 0^{+}}\\left[\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\right]_{x_{1}^{\\mu} = x_{2}^{\\mu} + \\epsilon \\delta_{t_{E}}^{\\mu} - \\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\big|_{x_{1}^{\\mu} = x_{2}^{\\mu} - \\epsilon \\delta_{t_{E}}^{\\mu}}\\big] = 0, \\quad (D.52)\]

\[\\lim_{\\epsilon \\to 0^{+}}\\left[\\frac{\\partial}{\\partial t_{E;1}}\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\right]_{x_{1}^{\\mu} = x_{2}^{\\mu} + \\epsilon \\delta_{t_{E}}^{\\mu} - \\frac{\\partial}{\\partial t_{E;1}}\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\big|_{x_{1}^{\\mu} = x_{2}^{\\mu} - \\epsilon \\delta_{t_{E}}^{\\mu}}\\big] = -\\frac{N(x_{1})}{\\sqrt{\\sigma(x_{1})}}\\delta^{2}(x_{1} - x_{2}). \\quad (D.53)\]

\[\\begin{array}{r l} & {\\underset {\\epsilon \\to 0^{+}}{\\lim}\\left[\\frac{\\partial}{\\partial t_{E;1}}\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\right]_{x_{1}^{\\mu} = x_{2}^{\\mu} + \\epsilon \\delta_{t_{E}}^{\\mu} - \\frac{\\partial}{\\partial t_{E;1}}\\widetilde{G}_{E;\\Delta}(x_{1};x_{2})\\big|_{x_{1}^{\\mu} = x_{2}^{\\mu} - \\epsilon \\delta_{t_{E}}^{\\mu}}\\big]}\\ & {= \\underset {\\epsilon \\to 0^{+}}{\\lim}\\left[-\\frac{1}{2\\pi}\\frac{(r_{2}^{2} + 1)\\epsilon}{(r_{2}^{2} + 1)\\epsilon^{2} + \\frac{(r_{1} - r_{2})^{2}}{r_{2}^{2} + 1} + r_{2}^{2}(\\phi_{1} - \\phi_{2})^{2}}\\right]^{\\frac{3}{2}}\\cdot \\left(1 + \\mathcal{O}(\\epsilon) + \\mathcal{O}(r_{1} - r_{2}) + \\mathcal{O}(\\phi_{1} - \\phi_{2})\\right)}\\ & {= -\\frac{r_{2}^{2} + 1}{r_{2}}\\delta (r_{1} - r_{2})\\delta (\\phi_{1} - \\phi_{2}),} \\end{array} \\quad (D.54)\]

\[\\lim_{\\epsilon \\to 0^{+}}\\frac{1}{2\\pi}\\frac{\\epsilon}{[A\\epsilon^{2} + B(x_{1} - x_{2})^{2} + C(y_{1} - y_{2})^{2}]^{\\frac{3}{2}}} = \\frac{1}{\\sqrt{ABC}}\\delta (x_{1} - x_{2})\\delta (y_{1} - y_{2}). \\quad (D.55)\]

\[\\left(\\nabla^{(1)2} - \\Delta (\\Delta -2)\\right)G_{E;\\Delta}(x_{1};x_{2}) = -\\frac{1}{\\sqrt{g_{E}(x_{1})}}\\delta^{3}(x_{1} - x_{2}). \\quad (D.56)\]

## E A more careful analysis for the near boundary region's contributions to some relevant quantities

In this appendix, we take a more careful analysis for the near boundary region's contributions to some relevant quantities appearing in the main context.

We first study the near boundary region's contribution to the action \(S\) (3.12). Specifically, we compute the asymptotic behavior of \(A_{\mu}\) asthe asymptotic behavior of the non- zero components of \(F_{\mu \nu}\) as

\[\\begin{array}{l}{A_{t} = o(r^{0})}\\ {A_{r} = o(r^{-3})}\\ {A_{\\phi} = o(r^{0}),} \\end{array} \\quad (E.1)\]

\[\\begin{array}{l}{F_{t r} = o(r^{-1})}\\ {F_{t\\phi} = o(r^{0})}\\ {F_{r\\phi} = o(r^{-1}),} \\end{array} \\quad (E.2)\]

and the asymptotic behavior of the non- zero components of \(F^{\mu \nu}\) aswhere, in the computation, we have used (3.4) and (3.8). We then compute the asymptotic behavior of the integrand of the integral in the action (3.12) as

\[\\begin{array}{l}{F^{t r} = o(r^{-1})}\\ {F^{t\\phi} = o(r^{-4})}\\ {F^{r\\phi} = o(r^{-1}),} \\end{array} \\quad (E.3)\]

\[\\sqrt{-g}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big) = o(r^{-1}), \\quad (E.4)\]

where we have used (3.4), (3.8), (E.1), (E.2), (E.3). From the asymptotic behavior (E.4), we show that the near boundary region's contribution to the integral over \(M\) in the action (3.12) is finite.

We now take a more careful analysis for the computation of \(\delta S\) in (4.1). To perform the analysis, we first represent \(S\) (3.12) as

\[S = \\lim_{r_{\\infty}\\to \\infty}\\int_{M_{r_{\\infty}}}d^{3}x\\sqrt{-g}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big). \\quad (E.5)\]

Here, we have introduced a cutoff surface at \(r = r_{\infty}\) . \(M_{r_{\infty}}\) is the subregion of \(M\) bounded by

\(r = r_{\infty}\) . With the representation (E.5) of \(S\) , we compute \(\delta S\) asHere, \(\Sigma_{i,r_{\infty}}\) , \(\Sigma_{f,r_{\infty}}\) are the subregions of the \(\Sigma_{i}\) , \(\Sigma_{f}\) bounded by \(r = r_{\infty}\) . \(\Gamma_{r_{\infty}}\) is the subregion of the cutoff surface at \(r = r_{\infty}\) sandwiched between \(\Sigma_{i}\) and \(\Sigma_{f}\) . \(\gamma_{AB}\) is the induced metric on the constant \(r\) surface with the expressionAnd \(n^{\mu}\) is the out- pointing unit normal vector orthogonal to the constant \(r\) surface with the expressionTo take the \(r_{\infty} \to \infty\) limit in (E.6), we compute the asymptotic behavior of the non- zero components of \(\nabla_{\mu} F_{\nu \rho}\) asthe asymptotic behavior of \(\nabla^{\nu} F_{\nu \mu}\) asand the asymptotic behavior of \(\delta A^{\mu}\) aswhere, in the computation, we have used (3.4), (3.5), (3.8), (E.2). We then compute the asymptotic behaviors of the integrands of the integrals in (E.6) as

\[\\begin{array}{r l} & {\\delta S = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\int_{M_{r_{\\infty}}}d^{3}x\\sqrt{-g}\\Big[(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu})\\delta A^{\\mu} + \\nabla^{\\mu}\\big(-F_{\\mu \\nu}\\delta A^{\\nu}\\big)\\Big]}\\ & {\\qquad = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\Big[\\int_{M_{r_{\\infty}}}d^{3}x\\sqrt{-g}\\big(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu}\\big)\\delta A^{\\mu}}\\ & {\\qquad +\\int_{\\Sigma_{f,r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu} - \\int_{\\Sigma_{i,r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu}}\\ & {\\qquad +\\int_{\\Gamma_{r_{\\infty}}}d^{2}x\\sqrt{-\\gamma} (-1)n^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu}\\Big].} \\end{array} \\quad (E.6)\]

\[\\gamma_{AB}dx^{A}dx^{B} = -(r^{2} + 1)dt^{2} + r^{2}d\\phi^{2}. \\quad (E.7)\]

\[n^{\\mu} = \\Big(0, (r^{2} + 1)^{\\frac{1}{2}}, 0\\Big). \\quad (E.8)\]

\[\\begin{array}{r l} & {\\nabla_{t}F_{t r} = o(r^{-1})}\\ & {\\nabla_{t}F_{t\\phi} = o(r^{2})}\\ & {\\nabla_{t}F_{r\\phi} = o(r^{-1})}\\ & {\\nabla_{r}F_{t r} = o(r^{-2})}\\ & {\\nabla_{r}F_{t\\phi} = o(r^{-1})}\\ & {\\nabla_{r}F_{r\\phi} = o(r^{-2})}\\ & {\\nabla_{\\phi}F_{t r} = o(r^{-1})}\\ & {\\nabla_{\\phi}F_{t\\phi} = o(r^{2})}\\ & {\\nabla_{\\phi}F_{r\\phi} = o(r^{-1}),} \\end{array} \\quad (E.9)\]

\[\\begin{array}{r l} & {\\nabla^{\\nu}F_{\\nu t} = o(r^{0})}\\ & {\\nabla^{\\nu}F_{\\nu r} = o(r^{-3})}\\ & {\\nabla^{\\nu}F_{\\nu \\phi} = o(r^{0}),} \\end{array} \\quad (E.10)\]

\[\\begin{array}{l}{\\delta A^{t} = o(r^{-2})}\\ {\\delta A^{r} = o(r^{-1})}\\ {\\delta A^{\\phi} = o(r^{-2}),} \\end{array} \\quad (E.11)\]

\[\\begin{array}{l}{\\sqrt{-g}(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu})\\delta A^{\\mu} = o(r^{-1})}\\ {\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu} = o(r^{-3})}\\ {\\sqrt{-\\gamma}(-1)n^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu} = o(r^{0}),} \\end{array} \\quad (E.12)\]

where we have used (3.4), (4.2), (4.3), (E.1), (E.2), (E.7), (E.8), (E.10), (E.11). By applying (E.12) to (E.6), we compute \(\delta S\) aswhich is the same as (4.1).

\[\\begin{array}{l}{\\delta S = \\int_{M}d^{3}x\\sqrt{-g}(\\nabla^{\\nu}F_{\\nu \\mu} - \\mu^{2}A_{\\mu})\\delta A^{\\mu}}\\ {\\qquad +\\int_{\\Sigma_{f}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu} - \\int_{\\Sigma_{i}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}F_{\\mu \\nu}\\delta A^{\\nu},} \\end{array} \\quad (E.13)\]

We now take a more careful analysis for the computation of \(X_{\xi}\cdot \delta S\) in (4.17). Specifically, by taking use of (E.5), we compute \(X_{\xi}\cdot \delta S\) as

\[\\begin{array}{r l} & {X_{\\xi}\\cdot \\delta S = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\int_{M_{r_{\\infty}}}d^{3}x\\sqrt{-g}\\nabla_{\\rho}\\bigg[\\xi^{\\rho}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)\\bigg]}\\ & {\\qquad = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\bigg[\\int_{\\Sigma_{f,r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} + \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)}\\ & {\\qquad -\\int_{\\Sigma_{i,r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} + \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)}\\ & {\\qquad +\\int_{\\Gamma_{r_{\\infty}}}d^{2}x\\sqrt{-\\gamma}n_{\\rho}\\xi^{\\rho}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)\\bigg].} \\end{array} \\quad (E.14)\]

To take the \(r_{\infty}\to \infty\) limit, we compute the asymptotic behavior of the integrands of the integrals in (E.14) aswhere we have used (3.4), (3.8), (4.2), (4.3), (4.14), (E.1), (E.2), (E.3), (E.7), (E.8). By applying (E.15) to (E.6), we compute \(X_{\xi} \cdot \delta S\) aswhich is the same as (4.17).

\[\\begin{array}{l}{\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} + \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big) = o(r^{-1})}\\ {\\sqrt{-\\gamma}n_{\\rho}\\xi^{\\rho}\\Big(-\\frac{1}{4} F_{\\mu \\nu}F^{\\mu \\nu} - \\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big) = o(r^{0}),} \\end{array} \\quad (E.15)\]

\[\\begin{array}{l}{{X_{\\xi}\\cdot\\delta S=\\int_{\\Sigma_{f}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}+\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big)}}\\ {{-\\int_{\\Sigma_{i}}d^{2}x\\sqrt{\\sigma}\\tau_{\\rho}\\xi^{\\rho}\\Big(\\frac{1}{4}F_{\\mu\\nu}F^{\\mu\\nu}+\\frac{1}{2}\\mu^{2}A_{\\mu}A^{\\mu}\\Big),}}\\end{array} \\quad (E.16)\]

We now take a more careful analysis for the computation of \(Q_{\xi}|_{\widehat{\mathcal{P}}}\) in (4.19). Specifically, we compute \(Q_{\xi}|_{\widehat{\mathcal{P}}}\) as

\[\\begin{array}{r l} & {Q_{\\xi}|_{\\widehat{\\mathcal{P}}} = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\int_{\\Sigma_{r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\bigg[\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4} g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big)}\\ & {\\qquad -D_{\\alpha}\\Big(\\sigma_{\\mu}^{\\alpha}\\tau_{\\nu}F^{\\mu \\nu}A^{\\rho}\\xi_{\\rho}\\Big)\\bigg]\\bigg|_{\\widehat{\\mathcal{P}}}}\\ & {\\qquad = \\underset {r_{\\infty}\\to \\infty}{\\lim}\\bigg[\\int_{\\Sigma_{r_{\\infty}}}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4} g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big)}\\ & {\\qquad -\\int_{H_{r_{\\infty}}}d x\\sqrt{h}\\hat{n}_{\\alpha}\\sigma_{\\mu}^{\\alpha}\\tau_{\\nu}F^{\\mu \\nu}A^{\\rho}\\xi_{\\rho}\\bigg]\\bigg|_{\\widehat{\\mathcal{P}}}.} \\end{array} \\quad (E.17)\]

Here, we have again introduced a cutoff surface at \(r = r_{\infty}\) . \(\Sigma_{r_{\infty}}\) is the subregion of \(\Sigma\) bounded by \(r = r_{\infty}\) . \(H_{r_{\infty}}\) is the intersection of \(\Sigma\) with the cutoff surface at \(r = r_{\infty}\) surface. \(h_{mn}\) is the induced metric of the intersection of \(\Sigma\) with the constant \(r\) surface with the expressionAnd \(\hat{n}^{a}\) is the out- pointing unit normal vector parallel to \(\Sigma\) and orthogonal its intersection with the constant \(r\) surface with the expression in the coordinate system \((r, \phi)\) asTo take the \(r_{\infty} \to \infty\) limit, we compute the asymptotic behavior of the integrands of the integrals in (E.17) as

\[h_{mn}dx^{m}dx^{n} = r^{2}d\\phi^{2}. \\quad (E.18)\]

\[\\hat{n}^{a} = \\Big((r^{2} + 1)^{\\frac{1}{2}},0\\Big). \\quad (E.19)\]

\[\\begin{array}{l}{\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4} g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big) = o(r^{-1})}\\ {\\sqrt{h}\\hat{n}_{\\alpha}\\sigma_{\\mu}^{\\alpha}\\tau_{\\nu}F^{\\mu \\nu}A^{\\rho}\\xi_{\\rho} = o(r^{0}),} \\end{array} \\quad (E.20)\]

where we have used (3.4), (3.8), (4.2), (4.3), (4.14), (E.1), (E.2), (E.3), (E.18), (E.19). By applying (E.20) to (E.17), we compute \(Q_{\xi}|_{\widehat{\mathcal{P}}}\) aswhich is the same as (4.19).

\[Q_{\\xi}|_{\\widehat{\\mathcal{P}}} = \\int_{\\Sigma}d^{2}x\\sqrt{\\sigma}\\tau^{\\mu}\\xi^{\\nu}\\Big(F_{\\mu \\rho}F_{\\nu}{}^{\\rho} - \\frac{1}{4} g_{\\mu \\nu}F_{\\rho \\sigma}F^{\\rho \\sigma} + \\mu^{2}A_{\\mu}A_{\\nu} - \\frac{1}{2}\\mu^{2}g_{\\mu \\nu}A_{\\rho}A^{\\rho}\\Big)\\Big|_{\\widehat{\\mathcal{P}}}, \\quad (E.21)\]

We now take a more careful analysis for the computation of \(X_{\xi}\cdot \Omega |_{\widetilde{\mathcal{P}}}\) in (4.21). Specifically, we compute \(X_{\xi}\cdot \Omega |_{\widetilde{\mathcal{P}}}\) aswhere \(\lambda\) denotes the different representations. And we compute the action of the Killing symmetries (5.4) to the candidate highest weight modes (F.1) asandandandandWe now solve the expressions of the highest weight modes. Here, we solve them case by case according to the corresponding highest weight representations.

\[\\begin{array}{l}{{{\\mathcal{L}}_{\\xi_{0}}f_{\\lambda,0,0}}^{\\mu}(x)=-\\frac{i}{2}(\\omega+m)f_{\\lambda,0,0}^{\\mu}(x)}\\ {{{\\mathcal{L}}_{\\xi_{0}}f_{\\lambda,0,0}}^{\\mu}(x)=-\\frac{i}{2}(\\omega-m)f_{\\lambda,0,0}^{\\mu}(x),}\\end{array} \\quad (F.2)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{t}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\omega + m + 1)r^{2} + m}{r(r^{2} + 1)}\\widetilde{f}^{t}(r)}\\ & {\\qquad -i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{r}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(-i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\frac{(\\omega + m - 1)r^{2} + m}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) + i\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{\\phi}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(-\\frac{1}{r}\\widetilde{f}^{t}(r) - i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\omega + m + 1)r^{2} + (m + 1)}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r)\\Big),} \\end{array} \\quad (F.3)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{t}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\omega - m + 1)r^{2} - m}{r(r^{2} + 1)}\\widetilde{f}^{t}(r)}\\ & {\\qquad -i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) + \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{r}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(-i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\frac{(\\omega - m - 1)r^{2} - m}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) - i\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi_{1}}f_{\\lambda ,0,0}^{\\phi}(x) = -\\frac{i}{2} e^{-i(\\omega -1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\frac{1}{r}\\widetilde{f}^{t}(r) + i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\omega - m + 1)r^{2} - (m - 1)}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r)\\Big),} \\end{array} \\quad (F.4)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{r}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\partial_{r}\\widetilde{f}^{t}(r) - \\frac{(\\omega + m - 1)r^{2} + m}{r(r^{2} + 1)}\\widetilde{f}^{t}(r)}\\ & {\\qquad +i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{r}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r)}\\ & {\\qquad -\\frac{(\\omega + m + 1)r^{2} + m}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) - i\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{\\phi}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m + 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(-\\frac{1}{r}\\widetilde{f}^{t}(r) + i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\partial_{r}\\widetilde{f}^{\\phi}(r) - \\frac{(\\omega + m - 1)r^{2} + (m - 1)}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r)\\Big),} \\end{array} \\quad (F.5)\]

\[\\begin{array}{r l} & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{r}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\partial_{r}\\widetilde{f}^{t}(r) - \\frac{(\\omega - m - 1)r^{2} - m}{r(r^{2} + 1)}\\widetilde{f}^{t}(r)}\\ & {\\qquad +i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) + \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{r}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r)}\\ & {\\qquad -\\frac{(\\omega - m + 1)r^{2} - m}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) + i\\widetilde{f}^{\\phi}(r)\\Big)}\\ & {\\mathcal{L}_{\\xi -1}f_{\\lambda ,0,0}^{\\phi}(x) = \\frac{i}{2} e^{-i(\\omega +1)t}e^{i(m - 1)\\phi}(r^{2} + 1)^{\\frac{1}{2}}\\Big(\\frac{1}{r}\\widetilde{f}^{t}(r) - i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r)}\\ & {\\qquad +\\partial_{r}\\widetilde{f}^{\\phi}(r) - \\frac{(\\omega - m - 1)r^{2} - (m + 1)}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r)\\Big).} \\end{array} \\quad (F.6)\]

- Representation \(\mathrm{I}^{+}\) : the positive representation with the eigenvalues (5.24) of the Casimir "operators". We now solve the corresponding highest weight mode.

We first solve the value of \((\omega ,m)\) . Specifically, by applying (5.37) and (F.2) to (5.24) through (5.12) and (5.14), we get the following equations for \((\omega ,m)\) as

\[\\begin{array}{r l} & {(\\omega +m - \\mu)(\\omega +m + \\mu -2) = 0}\\ & {(\\omega -m + \\mu)(\\omega -m - \\mu -2) = 0.} \\end{array} \\quad (F.7)\]

By solving these equations (F.7), we get the candidate values of \((\omega ,m)\) asAmong these candidate values of \((\omega ,m)\) (F.8), by considering the requirement (5.30) and that \(m\) is a real integer, we figure out that the allowed values of \((\omega ,m)\) can only be the second one for all values of \(\mu\) and the fourth one for \(\mu = 1\) . While, for the case of \(\mu = 1\) , the second value of \((\omega ,m)\) and the fourth value of \((\omega ,m)\) are the same. Therefore, we generally denote the value of \((\omega ,m)\) asWe then solve the expression of \(\widetilde{f}^{\mu}(r)\) . Specifically, by applying (F.3), (F.4), (F.9) to (5.37), we get the following equations for \(\widetilde{f}^{\mu}(r)\) asAnd, by solving these equations (F.10), we get the expression of \(\widetilde{f}^{\mu}(r)\) aswhere \(C\) is an integral constant.

\[\\left\\{ \\begin{array}{l l}{\\omega = 0}\\ {m = \\mu} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = \\mu +1}\\ {m = -1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -\\mu +1}\\ {m = 1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = 2}\\ {m = -\\mu} \\end{array} \\right.. \\quad (F.8)\]

\[\\begin{array}{l}{\\omega = \\mu +1}\\ {m = -1.} \\end{array} \\quad (F.9)\]

\[\\begin{array}{r l} & {\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 1)^{r^{2}} - 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) - i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0}\\ & {~ - i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu - 1)^{r^{2}} - 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) + i\\widetilde{f}^{\\phi}(r) = 0}\\ & {~ - \\frac{1}{r}\\widetilde{f}^{t}(r) - i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 1)r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0}\\ & {\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 3)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) - i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) + \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0}\\ & {~ - i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu + 1)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) - i\\widetilde{f}^{\\phi}(r) = 0}\\ & {\\frac{1}{r}\\widetilde{f}^{t}(r) + i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 3)r^{2} + 2}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r) = 0.} \\end{array} \\quad (F.10)\]

\[\\begin{array}{l}{\\widetilde{f}^{t}(r) = C\\cdot \\frac{1}{2}\\frac{r}{(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{3}{2}}}}\\ {\\widetilde{f}^{r}(r) = C\\cdot (-\\frac{i}{2})\\frac{1}{(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{1}{2}}}}\\ {\\widetilde{f}^{\\phi}(r) = C\\cdot (-\\frac{1}{2})\\frac{1}{r(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{1}{2}}},} \\end{array} \\quad (F.11)\]

Finally, by applying (F.9) and (F.11) to (F.1) and by taking use of the expressions of the Killing fields (5.4), we get the expression of the highest weight mode as- Representation \(\mathrm{II}^{+}\) : the positive representation with the eigenvalues (5.25) of the Casimir "operators". We now solve the corresponding highest weight mode.

\[f_{\\lambda ,0,0}{}^{\\mu}(x) = C\\frac{e^{-i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu}{2} + 1}}\\xi_{1}{}^{\\mu}. \\quad (F.12)\]

We first solve the value of \((\omega ,m)\) . Specifically, by applying (5.37) and (F.2) to (5.25) through (5.12) and (5.14), we get the following equations for \((\omega ,m)\) asBy solving these equations (F.13), we get the candidate values of \((\omega ,m)\) asAmong these candidate values of \((\omega ,m)\) (F.14), by considering the requirement (5.30) and that \(m\) is a real integer, we figure out that the allowed values of \((\omega ,m)\) can only be the third one for all values of \(\mu\) and the fourth one for \(\mu = 1\) . While, for the case of \(\mu = 1\) , the third value of \((\omega ,m)\) and the fourth value of \((\omega ,m)\) are the same. Therefore, we generally denote the value of \((\omega ,m)\) asWe then solve the expression of \(\widetilde{f}^{\mu}(r)\) . Specifically, by applying (F.3), (F.4), (F.15) to (5.37), we get the following equations for \(\widetilde{f}^{\mu}(x)\) asAnd, by solving these equations (F.16), we get the expression of \(\widetilde{f}^{\mu}(r)\) aswhere \(C\) is an integral constant.

\[\\begin{array}{r l} & {(\\omega +m + \\mu)(\\omega +m - \\mu - 2) = 0}\\ & {(\\omega -m - \\mu)(\\omega -m + \\mu - 2) = 0.} \\end{array} \\quad (F.13)\]

\[\\left\\{ \\begin{array}{l l}{\\omega = 0}\\ {m = -\\mu} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -\\mu +1}\\ {m = -1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = \\mu +1}\\ {m = 1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = 2}\\ {m = \\mu} \\end{array} \\right.. \\quad (F.14)\]

\[\\begin{array}{l}{\\omega = \\mu +1}\\ {m = 1.} \\end{array} \\quad (F.15)\]

\[\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 3)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) - i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0\]

\[-i\widetilde{f}^{t}(r) + \partial_{r}\widetilde{f}^{r}(r) + \frac{(\mu + 1)r^{2} + 1}{r(r^{2} + 1)}\widetilde{f}^{r}(r) + i\widetilde{f}^{\phi}(r) = 0\]\[-\frac{1}{r}\widetilde{f}^{t}(r) - i\frac{1}{r^{2}(r^{2} + 1)}\widetilde{f}^{r}(r) + \partial_{r}\widetilde{f}^{\phi}(r) + \frac{(\mu + 3)r^{2} + 2}{r(r^{2} + 1)}\widetilde{f}^{\phi}(r) = 0\]\[\partial_{r}\widetilde{f}^{t}(r) + \frac{(\mu + 1)r^{2} - 1}{r(r^{2} + 1)}\widetilde{f}^{t}(r) - i\frac{1}{(r^{2} + 1)^{2}}\widetilde{f}^{r}(r) + \frac{r}{r^{2} + 1}\widetilde{f}^{\phi}(r) = 0\]\[-i\widetilde{f}^{t}(r) + \partial_{r}\widetilde{f}^{r}(r) + \frac{(\mu - 1)r^{2} - 1}{r(r^{2} + 1)}\widetilde{f}^{r}(r) - i\widetilde{f}^{\phi}(r) = 0\]\[\frac{1}{r}\widetilde{f}^{t}(r) + i\frac{1}{r^{2}(r^{2} + 1)}\widetilde{f}^{r}(r) + \partial_{r}\widetilde{f}^{\phi}(r) + \frac{(\mu + 1)r}{r^{2} + 1}\widetilde{f}^{\phi}(r) = 0.\]

\[\\begin{array}{l}{\\widetilde{f}^{t}(r) = C\\cdot \\frac{1}{2}\\frac{r}{(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{3}{2}}}}\\ {\\widetilde{f}^{r}(r) = C\\cdot (-\\frac{i}{2})\\frac{1}{(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{1}{2}}}}\\ {\\widetilde{f}^{\\phi}(r) = C\\cdot \\frac{1}{2}\\frac{1}{r(r^{2} + 1)^{\\frac{\\mu}{2} +\\frac{1}{2}}},} \\end{array} \\quad (F.17)\]

Finally, by applying (F.15) and (F.17) to (F.1) and by taking use of the expressions of the Killing fields (5.4), we get the expression of the highest weight mode as- Representation \(\Gamma^{-}\) : the negative representation with the eigenvalues (5.24) of the Casimir "operators". We now solve the corresponding highest weight mode.

\[f_{\\lambda ,0,0}^{\\mu}(x) = C\\frac{e^{-i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu}{2} + 1}}\\bar{\\xi}_{1}^{\\mu} \\quad (F.18)\]

We first solve the value of \((\omega ,m)\) . Specifically, by applying (5.39) and (F.2) to (5.24) through (5.13) and (5.15), we get the following equations for \((\omega ,m)\) asBy solving these equations (F.19), we get the candidate values of \((\omega ,m)\) asAmong these candidate values of \((\omega ,m)\) (F.20), by considering the requirement (5.31) and that \(m\) is a real integer, we figure out that the allowed values of \((\omega ,m)\) can only be the second one for all values of \(\mu\) and the fourth one for \(\mu = 1\) . While, for the case of \(\mu = 1\) , the second value of \((\omega ,m)\) and the fourth value of \((\omega ,m)\) are the same. Therefore, we generally denote the value of \((\omega ,m)\) asWe then solve the expression of \(\widetilde{f}^{\mu}(r)\) . Specifically, by applying (F.5), (F.6), (F.21) to (5.39), we get the equations for \(\widetilde{f}^{\mu}(r)\) asAnd, by solving these equations (F.22), we get the expression of \(\widetilde{f}^{\mu}(r)\) aswhere \(C\) is an integral constant.

\[\\begin{array}{r l} & {(\\omega +m + \\mu)(\\omega +m - \\mu +2) = 0}\\ & {(\\omega -m - \\mu)(\\omega -m + \\mu +2) = 0.} \\end{array} \\quad (F.19)\]

\[\\left\\{ \\begin{array}{l l}{\\omega = 0}\\ {m = -\\mu} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -\\mu -1}\\ {m = 1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = \\mu -1}\\ {m = -1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -2}\\ {m = \\mu} \\end{array} \\right.. \\quad (F.20)\]

\[\\begin{array}{l}\\omega = -\\mu -1\\ m = 1. \\end{array} \\quad (F.21)\]

\[\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 1)r^{2} - 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) + i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0\]

\[i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu - 1)r^{2} - 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) - i\\widetilde{f}^{\\phi}(r) = 0\]

\[-\\frac{1}{r}\\widetilde{f}^{t}(r) + i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 1)r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0\]

\[\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 3)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) + i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) + \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0\]

\[i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu + 1)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) + i\\widetilde{f}^{\\phi}(r) = 0\]

\[\\frac{1}{r}\\widetilde{f}^{t}(r) - i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 3)r^{2} + 2}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r) = 0. \\quad (F.22)\]

\[\\begin{array}{l}{\\widetilde{f}^{t}(r) = C\\cdot \\frac{1}{2}\\frac{r}{(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{3}{2}}}}\\ {\\widetilde{f}^{r}(r) = C\\cdot \\frac{i}{2}\\frac{1}{(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{1}{2}}}}\\ {\\widetilde{f}^{\\phi}(r) = C\\cdot (-\\frac{1}{2})\\frac{1}{r(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{1}{2}}},} \\end{array} \\quad (F.23)\]

Finally, by applying (F.21) and (F.23) to (F.1) and by taking use of the expressions of the Killing fields (5.4), we get the expression of the highest weight mode as- Representation II-: the negative representation with the eigenvalues (5.25) of the Casimir "operators". We now solve the corresponding highest weight mode.

\[f_{\\lambda ,0,0}^{\\mu}(x) = C\\frac{e^{i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu}{2} + 1}}\\xi_{-1}^{\\mu}. \\quad (F.24)\]

We first solve the value of \((\omega ,m)\) . Specifically, by applying (5.39) and (F.2) to (5.25) through (5.13) and (5.15), we get the following equations for \((\omega ,m)\) asBy solving these equations (F.25), we get the candidate values of \((\omega ,m)\) asAmong these candidate values of \((\omega ,m)\) (F.26), by considering the requirement (5.31) and that \(m\) is a real integer, we figure out that the allowed values of \((\omega ,m)\) can only be the third one for all values of \(\mu\) and the fourth one for \(\mu = 1\) . While, for the case of \(\mu = 1\) , the third value of \((\omega ,m)\) and the fourth value of \((\omega ,m)\) are the same. Therefore, we generally denote the value of \((\omega ,m)\) asWe now solve the expression of \(\widetilde{f}^{\mu}(r)\) . Specifically, by applying (F.5), (F.6), (F.27) to(5.39), we get the following equations for \(\widetilde{f}^{\mu}(r)\) asAnd, by solving these equations (F.28), we get the expression of \(\widetilde{f}^{\mu}(r)\) aswhere \(C\) is an integral constant.

\[\\begin{array}{l}{{(\\omega+m-\\mu)(\\omega+m+\\mu+2)=0}}\\ {{(\\omega-m+\\mu)(\\omega-m-\\mu+2)=0.}}\\end{array} \\quad (F.25)\]

\[\\left\\{ \\begin{array}{l l}{\\omega = 0}\\ {m = \\mu} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = \\mu -1}\\ {m = 1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -\\mu -1}\\ {m = -1} \\end{array} \\right.\\mathrm{or}\\left\\{ \\begin{array}{l l}{\\omega = -2}\\ {m = -\\mu} \\end{array} \\right.. \\quad (F.26)\]

\[\\begin{array}{l}{\\omega = -\\mu -1}\\ {m = -1.} \\end{array} \\quad (F.27)\]

\[\\begin{array}{r l} & {\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 3)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) + i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) - \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0}\\ & {i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu + 1)r^{2} + 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) - i\\widetilde{f}^{\\phi}(r) = 0}\\ & {-\\frac{1}{r}\\widetilde{f}^{t}(r) + i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 3)r^{2} + 2}{r(r^{2} + 1)}\\widetilde{f}^{\\phi}(r) = 0}\\ & {\\partial_{r}\\widetilde{f}^{t}(r) + \\frac{(\\mu + 1)r^{2} - 1}{r(r^{2} + 1)}\\widetilde{f}^{t}(r) + i\\frac{1}{(r^{2} + 1)^{2}}\\widetilde{f}^{r}(r) + \\frac{r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0}\\ & {i\\widetilde{f}^{t}(r) + \\partial_{r}\\widetilde{f}^{r}(r) + \\frac{(\\mu - 1)r^{2} - 1}{r(r^{2} + 1)}\\widetilde{f}^{r}(r) + i\\widetilde{f}^{\\phi}(r) = 0}\\ & {\\frac{1}{r}\\widetilde{f}^{t}(r) - i\\frac{1}{r^{2}(r^{2} + 1)}\\widetilde{f}^{r}(r) + \\partial_{r}\\widetilde{f}^{\\phi}(r) + \\frac{(\\mu + 1)r}{r^{2} + 1}\\widetilde{f}^{\\phi}(r) = 0.} \\end{array} \\quad (F.28)\]

\[\\begin{array}{l}{\\widetilde{f}^{t}(r) = C\\cdot \\frac{1}{2}\\frac{r}{(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{3}{2}}}}\\ {\\widetilde{f}^{r}(r) = C\\cdot \\frac{i}{2}\\frac{1}{(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{1}{2}}}}\\ {\\widetilde{f}^{\\phi}(r) = C\\cdot \\frac{1}{2}\\frac{1}{r(r^{2} + 1)^{\\frac{\\mu}{2} + \\frac{1}{2}}},} \\end{array} \\quad (F.29)\]

Finally, by applying (F.27) and (F.29) to (F.1) and by taking use of the expressions of the Killing fields (5.4), we get the expression of the highest weight mode as

\[f_{\\lambda ,0,0}^{\\mu}(x) = C\\cdot \\frac{e^{i(\\mu + 2)t}}{(r^{2} + 1)^{\\frac{\\mu}{2} + 1}}\\bar{\\xi}_{-1}^{\\mu}. \\quad (F.30)\]

### F.2 An argument showing that there are no more modes

We now provide an argument showing that there are no more modes besides the ones given in subsubsection 5.3.5.

We prove by contradiction.

For the momentum, we assume that there are other modes besides the ones in the highest weight representations, which have eigenvalues (5.24) or (5.25) of the Casimir "operators", which are in the form ofand which are positive frequency modes whose values of \((\omega ,m)\) satisfy () or negative frequency modes whose values of \((\omega ,m)\) satisfy (). And we will derive contradictions in the following.

\[f_{e}^{\\mu} = e^{-i\\omega t}e^{im\\phi}\\widetilde{A}_{e}^{\\mu}(r), \\quad (F.31)\]

We discuss in the following four cases:- Case I: The positive frequency modes with the eigenvalues (5.24) of the Casimir "operators".

- If \(f_{e}^{\mu}\) satisfieswhich means \(f_{e}^{\mu}\) is a highest weight mode, we directly get a contradiction: we have found all of the highest weight modes in subsubsection 5.3.5.

\[\\mathcal{L}_{\\xi_{1}}f_{e}^{\\mu} = \\mathcal{L}_{\\xi_{1}}f_{e}^{\\mu} = 0, \\quad (F.32)\]

- If \(f_{e}^{\mu}\) satisfieswe get- If \(f_{e}^{\mu}\) satisfies

\[\\mathcal{L}_{\\xi_{1}}f_{e}^{\\mu} = \\# f_{+,u;k,\\bar{k}}^{\\mu} \\neq 0, \\quad (F.33)\]

\[\\mathcal{L}_{\\xi_{0}}f_{e}^{\\mu} = -i\\big(\\frac{\\mu}{2} +k + 1\\big)f_{e}^{\\mu} \\quad (F.34)\]

\[f_{e}^{\\mu} = -\\frac{1}{(k + 1)(\\mu + k)}\\mathcal{L}_{\\xi_{-1}}\\mathcal{L}_{\\xi_{1}}f_{e}^{\\mu} \\quad (F.35)\]

\[\\mathcal{L}_{\\xi_{1}}f_{e}^{\\mu} = \\# f_{+,u;k,\\bar{k}}^{\\mu} \\neq 0, \\quad (F.36)\]

\[\\mathcal{L}_{\\xi_{0}}f_{e}^{\\mu} = \\quad (F.37)\]

### G Some addition formulas

In this appendix, we introduce some addition formulas for the computation of the Euclidean correlation function. Specifically, we study the following two summationsandwhere \(f_{E; + / - ,u / v;k,\bar{k}}^{\mu}(x)\) are

\[\\sum_{k,\\bar{k} = 0}^{+\\infty}f_{E;+,u;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E;-,u;k,\\bar{k}}^{\\mu_{2}}(x_{2}) \\quad (G.1)\]

\[\\sum_{k,\\bar{k} = 0}^{+\\infty}f_{E;+,v;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E;-,v;k,\\bar{k}}^{\\mu_{2}}(x_{2}), \\quad (G.2)\]

### G.1 The addition formula for the modes of representation I

We now compute the summation (G.1).

First, by applying (7.15), (7.19) to (G.1), we get the following expressionSecond, we compute the respective terms in (G.3) asandandandandandandandandwhere we have used (D.25), (D.29). Third, by applying the respective terms (G.4), (G.5), (G.6), (G.7), (G.8), (G.9), (G.10), (G.11), (G.12) to (G.3), we get the final expression of the sum rule aswhere we have used (7.4), (7.8), (C.14).

\[\\sum_{k,k = 0}^{+\\infty}f_{E;+,\\nu ;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E;-\\nu ;k,\\bar{k}}^{\\mu_{2}}(x_{2})\]

\[= \sum_{k,k = 0}^{+\infty}\left[\frac{2}{\mu^{2}}(\mu +k)(\mu +k + 1)\phi_{E;\mu +2, + k,\bar{k}}(x_{1})\xi_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k,\bar{k}}(x_{2})\xi_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{4i}{\mu^{2}}(\mu +k)\sqrt{k(\mu +k + 1)}\phi_{E;\mu +2, + k,\bar{k}}(x_{1})\xi_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 1,\bar{k}}(x_{2})\xi_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{2}{\mu^{2}}\sqrt{k(k - 1)(\mu +k)(\mu +k + 1)}\phi_{E;\mu +2, + k,\bar{k}}(x_{1})\xi_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 2,\bar{k}}(x_{2})\xi_{E;1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{4i}{\mu^{2}}(\mu +k)\sqrt{k(\mu +k + 1)}\phi_{E;\mu +2, + k - 1,\bar{k}}(x_{1})\xi_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k,\bar{k}}(x_{2})\xi_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{8}{\mu^{2}}k(\mu +k)\phi_{E;\mu +2, + k - 1,\bar{k}}(x_{1})\xi_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 1,\bar{k}}(x_{2})\xi_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{4i}{\mu^{2}}k\sqrt{(k - 1)(\mu +k)}\phi_{E;\mu +2, + k - 1,\bar{k}}(x_{1})\xi_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 2,\bar{k}}(x_{2})\xi_{E;1}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{2}{\mu^{2}}\sqrt{k(k - 1)(\mu +k)(\mu +k + 1)}\phi_{E;\mu +2, + k - 2,\bar{k}}(x_{1})\xi_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k,\bar{k}}(x_{2})\xi_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{4i}{\mu^{2}}k\sqrt{(k - 1)(\mu +k)}\phi_{E;\mu +2, + k - 2,\bar{k}}(x_{1})\xi_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 1,\bar{k}}(x_{2})\xi_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{2}{\mu^{2}}k(k - 1)\phi_{E;\mu +2, + k - 2,\bar{k}}(x_{1})\xi_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - k - 2,\bar{k}}(x_{2})\xi_{E;1}^{\mu_{2}}(x_{2})\right].\]

\[\\begin{array}{l}{I = \\frac{2}{\\mu^{2}} (\\mu +k)(\\mu +k + 1)\\phi_{E;\\mu +2, + k,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, - k,\\bar{k}}(x_{2})\\xi_{E; - 1}^{\\mu_{2}}(x_{2})}\\ {= \\frac{2}{\\mu^{2}}\\xi_{E;1}^{\\mu_{1}}(x_{1})\\xi_{E; - 1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + k - 1,\\bar{k}}(x_{1})\\xi_{E; - 1}^{\\mu_{2}}(x_{2})\\xi_{E;1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\phi_{E;\\mu +2, - k - 1,\\bar{k}}(x_{2})}\\ {+\\frac{2i}{\\mu}\\xi_{E;1}^{\\mu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + k,\\bar{k}}(x_{1})\\xi_{E; - 1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - k,\\bar{k}}(x_{2})}\\ {+\\xi_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, + k,\\bar{k}}(x_{1})\\xi_{E; - 1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - k,\\bar{k}}(x_{2}),} \\end{array} \\quad (G.4)\]

\[\\begin{array}{l}{{I I=-\\frac{4i}{\\mu^{2}}(\\mu+k)\\sqrt{k(\\mu+k+1)}\\phi_{E;\\mu+2,+k,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu+2,-k-1,\\bar{k}}(x_{2})\\xi_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\xi_{E;1}^{\\mu_{1}}(x_{1})\\xi_{E;1-1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu+2,+k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\xi_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\phi_{E;\\mu+2,-k-1,\\bar{k}}(x_{2})}}\\ {{-\\frac{2i}{\\mu}\\xi_{E;1}^{\\mu_{1}}(x_{1})\\xi_{E;1-1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu+2,+k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu+2,-k-1,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.5)\]

\[\\begin{array}{l}{{III=-\\frac{2}{\\mu^{2}}\\sqrt{k(k-1)(\\mu+k)(\\mu+k+1)}\\varphi_{E;\\mu+2,+;k,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k-2,\\bar{k}}(x_{2})\\xi_{E;1}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{2}{\\mu^{2}}\\xi_{E;1}^{\\mu_{1}}(x_{1})\\xi_{E;1}^{-\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{2}}(x_{2})\\xi_{E;1}^{-\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.6)\]

\[\\begin{array}{l}{{IV=\\frac{4i}{\\mu^{2}}(\\mu+k)\\sqrt{k(\\mu+k+1)}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k,\\bar{k}}(x_{2})\\xi_{E;1}^{-\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\xi_{E;0}^{\\mu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;1}^{-\\mu_{2}}(x_{2})\\xi_{E;1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2})}}\\ {{-\\frac{2i}{\\mu}\\xi_{E;0}^{\\mu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k,\\bar{k}}(x_{1})\\xi_{E;1}^{-\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-;k,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.7)\]

\[\\begin{array}{l}{{V=\\frac{8}{\\mu^{2}}k(\\mu+k)\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2})\\xi_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{8}{\\mu^{2}}\\xi_{E;0}^{\\mu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\xi_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2})}}\\ {{-2\\xi_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.8)\]

\[\\begin{array}{l}{{VI=-\\frac{4i}{\\mu^{2}}k\\sqrt{(k-1)(\\mu+k)}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k-2,\\bar{k}}(x_{2})\\xi_{E;1}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\xi_{E;0}^{\\mu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;1}^{\\nu_{2}}(x_{2})\\xi_{E;1}^{-\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2})}}\\ {{+\\frac{2i}{\\mu}\\xi_{E;0}^{\\mu_{1}}(x_{1})\\xi_{E;1}^{-\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-2,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-;k-2,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.9)\]

\[\\begin{array}{l}{{VII=-\\frac{2}{\\mu^{2}}\\sqrt{k(k-1)(\\mu+k)(\\mu+k+1)}\\varphi_{E;\\mu+2,+;k-2,\\bar{k}}(x_{1})\\xi_{E;1}^{-\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k,\\bar{k}}(x_{2})\\xi_{E;1}^{-\\mu_{2}}(x_{2})}}\\ {{=\\frac{2}{\\mu^{2}}\\xi_{E;1}^{-\\mu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;1}^{-\\mu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.10)\]

\[\\begin{array}{l}{{VIII=\\frac{4i}{\\mu^{2}}k\\sqrt{(k-1)(\\mu+k)}\\varphi_{E;\\mu+2,+;k-2,\\bar{k}}(x_{1})\\xi_{E;1}^{-\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2})\\xi_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{4}{\\mu^{2}}\\xi_{E;1}^{-\\mu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\xi_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{2})}}\\ {{+\\frac{2i}{\\mu}\\xi_{E;1}^{-\\mu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+;k-1,\\bar{k}}(x_{1})\\xi_{E;0}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-;k-1,\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.11)\]

\[\\begin{array}{r l} & {I X = \\frac{2}{\\mu^{2}} k(k - 1)\\phi_{E;\\mu +2, + k - 2,\\bar{k}}(x_{1})\\xi_{E; - 1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, - k - 2,\\bar{k}}(x_{2})\\xi_{E;1}^{\\mu_{2}}(x_{2})}\\ & {\\quad = \\frac{2}{\\mu^{2}}\\xi_{E; - 1}^{\\mu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + k - 1,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{2}}(x_{2})\\xi_{E; - 1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\phi_{E;\\mu +2, - k - 1,\\bar{k}}(x_{2})}\\ & {\\quad \\quad -\\frac{2i}{\\mu}\\xi_{E; - 1}^{\\mu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + k - 2,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - k - 2,\\bar{k}}(x_{2})}\\ & {\\quad \\quad +\\xi_{E; - 1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, + k - 2,\\bar{k}}(x_{1})\\xi_{E;1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - k - 2,\\bar{k}}(x_{2}),} \\end{array} \\quad (G.12)\]

\[\\begin{array}{r l}&{\\quad\\sum_{k,k=0}^{+\\infty}f_{E;+u,k,\\bar{k}}^{\\nu_{1}}(x_{1})f_{E;-u,k,\\bar{k}}^{\\nu_{2}}(x_{2})}\\ &{=\\frac{1}{2\\mu^{2}}\\Big(2\\xi_{E;1}^{\\nu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})-4\\xi_{E;0}^{\\nu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})+2\\xi_{E;-1}^{\\nu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\Big)}\\ &{\\quad\\cdot\\Big(2\\xi_{E;1}^{\\nu_{2}}(x_{2})\\xi_{E;1}^{\\nu_{2}}(x_{2})-4\\xi_{E;0}^{\\nu_{2}}(x_{2})\\xi_{E;0}^{\\nu_{2}}(x_{2})+2\\xi_{E;-1}^{\\nu_{2}}(x_{2})\\xi_{E;1}^{\\nu_{2}}(x_{2})\\Big)\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad+\\frac{i}{2\\mu}\\Big[4\\Big(\\xi_{E;1}^{\\nu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})-\\xi_{E;0}^{\\nu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\Big)\\xi_{E;-1}^{\\nu_{2}}(x_{2})}\\ &{\\quad-4\\Big(\\xi_{E;1}^{\\nu_{1}}(x_{1})\\xi_{E;-1}^{\\nu_{1}}(x_{1})-\\xi_{E;-1}^{\\nu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{1}}(x_{1})\\Big)\\xi_{E;0}^{\\nu_{2}}(x_{2})}\\ &{\\quad+4\\Big(\\xi_{E;0}^{\\nu_{1}}(x_{1})\\xi_{E;-1}^{\\nu_{1}}(x_{1})-\\xi_{E;-1}^{\\nu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{1}}(x_{1})\\Big)\\xi_{E;1}^{\\nu_{2}}(x_{2})\\Big]\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad+\\frac{1}{2}\\Big(2\\xi_{E;1}^{\\nu_{1}}(x_{1})\\xi_{E;-1}^{\\nu_{2}}(x_{2})-4\\xi_{E;0}^{\\nu_{1}}(x_{1})\\xi_{E;0}^{\\nu_{2}}(x_{2})+2\\xi_{E;-1}^{\\nu_{1}}(x_{1})\\xi_{E;1}^{\\nu_{2}}(x_{2})\\Big)G_{E;\\mu+2}(x_{1};x_{2})}\\ &{=\\frac{1}{2\\mu^{2}}\\nabla^{(1)\\mu_{1}}\\nabla^{(2)\\mu_{2}}G_{E;\\mu+2}(x_{1};x_{2})+\\frac{i}{2\\mu}\\xi_{E;1}^{\\mu_{1}\\nu_{1}}\\rho_{1}(x_{1})G_{E}^{\\rho_{1}\\mu_{2}}(x_{1};x_{2})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad+\\frac{1}{2}G_{E}^{\\mu_{1}\\mu_{2}}(x_{1};x_{2})G_{E;\\mu+2}(x_{1};x_{2}),}\\end{array} \\quad (G.13)\]

### G.2 The addition formula for the modes of representation II

We now compute the summation (G.2).

First, by applying (7.17), (7.21) to (G.2), we get the following expressionSecond, we compute the respective terms in (G.14) asandandandandandandandandwhere we have used (D.25), (D.29). Third, by applying the respective terms (G.15), (G.16), (G.17), (G.18), (G.19), (G.20), (G.21), (G.22), (G.23) to (G.14), we get the final expression of the sum rule aswhere we have used (7.4), (7.9), (C.14).

\[\\sum_{k,k = 0}^{+\\infty}f_{E;+,v;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E;-,v;k,\\bar{k}}^{\\mu_{2}}(x_{2})\]

\[= \sum_{k,k = 0}^{+\infty}\left[\frac{2}{\mu^{2}}(\mu +\bar{k})(\mu +\bar{k} +1)\phi_{E;\mu +2, + ;k,\bar{k}}(x_{1})\bar{\xi}_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k}}(x_{2})\bar{\xi}_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{4i}{\mu^{2}}(\mu +\bar{k})\sqrt{\bar{k} (\mu +\bar{k} +1)}\phi_{E;\mu +2, + ;k,\bar{k}}(x_{1})\bar{\xi}_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 1}(x_{2})\bar{\xi}_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{2}{\mu^{2}}\sqrt{\bar{k} (\bar{k} - 1)}(\mu +\bar{k})(\mu +\bar{k} +1)\phi_{E;\mu +2, + ;k,\bar{k}}(x_{1})\bar{\xi}_{E;1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 2}(x_{2})\bar{\xi}_{E;1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{4i}{\mu^{2}}(\mu +\bar{k})\sqrt{\bar{k} (\mu +\bar{k} +1)}\phi_{E;\mu +2, + ;k,\bar{k} - 1}(x_{1})\bar{\xi}_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k}}(x_{2})\bar{\xi}_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{8}{\mu^{2}}\bar{k} (\mu +\bar{k})\phi_{E;\mu +2, + ;k,\bar{k} - 1}(x_{1})\bar{\xi}_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 1}(x_{2})\bar{\xi}_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{4i}{\mu^{2}}\bar{k}\sqrt{\bar{k} - 1)}(\mu +\bar{k})\phi_{E;\mu +2, + ;k,\bar{k} - 1}(x_{1})\bar{\xi}_{E;0}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 2}(x_{2})\bar{\xi}_{E;1}^{\mu_{2}}(x_{2})\right.\]\[\left. - \frac{2}{\mu^{2}}\sqrt{\bar{k} (\bar{k} - 1)}(\mu +\bar{k})(\mu +\bar{k} +1)\phi_{E;\mu +2, + ;k,\bar{k} - 2}(x_{1})\bar{\xi}_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k}}(x_{2})\bar{\xi}_{E; - 1}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{4i}{\mu^{2}}\bar{k}\sqrt{\bar{k} - 1)}(\mu +\bar{k})\phi_{E;\mu +2, + ;k,\bar{k} - 2}(x_{1})\bar{\xi}_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 1}(x_{2})\bar{\xi}_{E;0}^{\mu_{2}}(x_{2})\right.\]\[\left. + \frac{2}{\mu^{2}}\bar{k} (\bar{k} - 1)\phi_{E;\mu +2, + ;k,\bar{k} - 2}(x_{1})\bar{\xi}_{E; - 1}^{\mu_{1}}(x_{1})\phi_{E;\mu +2, - ;k,\bar{k} - 2}(x_{2})\bar{\xi}_{E;1}^{\mu_{2}}(x_{2})\right].\]

\[\\begin{array}{l}{I = \\frac{2}{\\mu^{2}} (\\mu +\\bar{k})(\\mu +\\bar{k} +1)\\phi_{E;\\mu +2, + ;k,\\bar{k}}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, - ;k,\\bar{k}}(x_{2})\\bar{\\xi}_{E; - 1}^{\\mu_{2}}(x_{2})}\\ {= \\frac{2}{\\mu^{2}}\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E; - 1}^{\\mu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}\\nu_{1}}\\phi_{E;\\mu +2, + ;k,\\bar{k} - 1}(x_{1})\\bar{\\xi}_{E; - 1}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}\\nu_{2}}\\phi_{E;\\mu +2, - ;k,\\bar{k} - 1}(x_{2})}\\ {+\\frac{2i}{\\mu}\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}\\nu_{1}}\\phi_{E;\\mu +2, + ;k,\\bar{k}}(x_{1})\\bar{\\xi}_{E; - 1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - ;k,\\bar{k}}(x_{2})}\\ {+\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, + ;k,\\bar{k}}(x_{1})\\bar{\\xi}_{E; - 1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - ;k,\\bar{k}}(x_{2}),} \\end{array} \\quad (G.15)\]

\[\\begin{array}{l}{{I I=-\\frac{4i}{\\mu^{2}}(\\mu+\\bar{k})\\sqrt{\\bar{k}(\\mu+\\bar{k}+1)}\\phi_{E;\\mu+2,+\\bar{k},\\bar{k}}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;-\\bar{1}}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}\\nu_{1}}\\phi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}\\nu_{2}}\\phi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})}}\\ {{-\\frac{2i}{\\mu}\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;-\\bar{1}}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}\\nu_{1}}\\phi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2}),}}\\end{array} \\quad (G.16)\]

\[\\begin{array}{l}{{III=-\\frac{2}{\\mu^{2}}\\sqrt{\\bar{k}(\\bar{k}-1)(\\mu+\\bar{k})(\\mu+\\bar{k}+1)}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-2}(x_{2})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{2}{\\mu^{2}}\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;-1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;-1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2}),}}\\end{array} \\quad (G.17)\]

\[\\begin{array}{l}{{IV=\\frac{4i}{\\mu^{2}}(\\mu+\\bar{k})\\sqrt{\\bar{k}(\\mu+\\bar{k}+1)}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}}(x_{2})\\bar{\\xi}_{E;-1}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;-1}^{\\nu_{2}}(x_{2})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})}}\\ {{-\\frac{2i}{\\mu}\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}}(x_{1})\\bar{\\xi}_{E;-1}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}}(x_{2}),}}\\end{array} \\quad (G.18)\]

\[\\begin{array}{l}{{V=\\frac{8}{\\mu^{2}}\\bar{k}(\\mu+\\bar{k})\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{8}{\\mu^{2}}\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})}}\\ {{-2\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2}),}}\\end{array} \\quad (G.19)\]

\[\\begin{array}{l}{{VI=-\\frac{4i}{\\mu^{2}}\\bar{k}\\sqrt{(\\bar{k}-1)(\\mu+\\bar{k})}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-2}(x_{2})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;-1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})}}\\ {{+\\frac{2i}{\\mu}\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;-1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-2}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-2}(x_{2}),}}\\end{array} \\quad (G.20)\]

\[\\begin{array}{l}{{VII=-\\frac{2}{\\mu^{2}}\\sqrt{\\bar{k}(\\bar{k}-1)(\\mu+\\bar{k})(\\mu+\\bar{k}+1)}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-2}(x_{1})\\bar{\\xi}_{E;-1}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}}(x_{2})\\bar{\\xi}_{E;-1}^{\\mu_{2}}(x_{2})}}\\ {{=\\frac{2}{\\mu^{2}}\\bar{\\xi}_{E;-1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;-1}^{\\mu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2}),}}\\end{array} \\quad (G.21)\]

\[\\begin{array}{l}{{VII=\\frac{4i}{\\mu^{2}}\\bar{k}\\sqrt{(\\bar{k}-1)(\\mu+\\bar{k})}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-2}(x_{1})\\bar{\\xi}_{E;-1}^{\\mu_{1}}(x_{1})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})}}\\ {{=-\\frac{4}{\\mu^{2}}\\bar{\\xi}_{E;-1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2})}}\\ {{+\\frac{2i}{\\mu}\\bar{\\xi}_{E;-1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\varphi_{E;\\mu+2,+\\bar{k},\\bar{k}-1}(x_{1})\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\varphi_{E;\\mu+2,-\\bar{k},\\bar{k}-1}(x_{2}),}}\\end{array} \\quad (G.22)\]

\[\\begin{array}{r l} & {I X = \\frac{2}{\\mu^{2}}\\bar{k} (\\bar{k} -1)\\phi_{E;\\mu +2, + ;k,\\bar{k} -2}(x_{1})\\bar{\\xi}_{E; - 1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, - ;k,\\bar{k} -2}(x_{2})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})}\\ & {\\quad = \\frac{2}{\\mu^{2}}\\bar{\\xi}_{E; - 1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + ;k,\\bar{k} -1}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\bar{\\xi}_{E; - 1}^{\\nu_{2}}(x_{2})\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}\\phi_{E;\\mu +2, - ;k,\\bar{k} -1}(x_{2})}\\ & {\\quad \\quad -\\frac{2i}{\\mu}\\bar{\\xi}_{E; - 1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\phi_{E;\\mu +2, + ;k,\\bar{k} -2}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - ;k,\\bar{k} -2}(x_{2})}\\ & {\\quad \\quad +\\bar{\\xi}_{E; - 1}^{\\mu_{1}}(x_{1})\\phi_{E;\\mu +2, + ;k,\\bar{k} -2}(x_{1})\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\phi_{E;\\mu +2, - ;k,\\bar{k} -2}(x_{2}),} \\end{array} \\quad (G.23)\]

\[\\begin{array}{r l}&{\\quad\\sum_{k,k=0}^{+\\infty}f_{E;+,\\nu;k,\\bar{k}}^{\\mu_{1}}(x_{1})f_{E;-,\\nu;k,\\bar{k}}^{\\mu_{2}}(x_{2})}\\ &{=\\frac{1}{2\\mu^{2}}\\Big(2\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})-4\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})+2\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\Big)}\\ &{\\quad\\cdot\\Big(2\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})-4\\bar{\\xi}_{E;0}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})+2\\bar{\\xi}_{E;1}^{\\mu_{2}}(x_{2})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\Big)\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}\\frac{\\partial}{\\partial x_{2}^{\\nu_{2}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad-\\frac{i}{2\\mu}\\Big[4\\Big(-\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})+\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\Big)\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})}\\ &{\\quad-4\\Big(-\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})+\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\Big)\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})}\\ &{\\quad+4\\Big(-\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})+\\bar{\\xi}_{E;1}^{\\nu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{1}}(x_{1})\\Big)\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\Big]\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad+\\frac{1}{2}\\Big(2\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})-4\\bar{\\xi}_{E;0}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;0}^{\\nu_{2}}(x_{2})+2\\bar{\\xi}_{E;1}^{\\mu_{1}}(x_{1})\\bar{\\xi}_{E;1}^{\\nu_{2}}(x_{2})\\Big)G_{E;\\mu+2}(x_{1};x_{2})}\\ &{=\\frac{1}{2\\mu^{2}}\\nabla^{(1)\\mu_{1}}\\nabla^{(2)\\mu_{2}}G_{E;\\mu+2}(x_{1};x_{2})-\\frac{i}{2\\mu}\\bar{\\xi}_{E;1}^{\\mu_{1}\\nu_{1}}\\rho_{1}(x_{1})\\bar{\\mathcal{G}}_{E}^{\\mu_{1}\\nu_{2}}(x_{1};x_{2})\\frac{\\partial}{\\partial x_{1}^{\\nu_{1}}}G_{E;\\mu+2}(x_{1};x_{2})}\\ &{\\quad+\\frac{1}{2}\\bar{\\mathcal{G}}_{E}^{\\mu_{1}\\nu_{2}}(x_{1};x_{2})G_{E;\\mu+2}(x_{1};x_{2}),}\\end{array} \\quad (G.24)\]

### H Solving the modes directly

We represent the equations of motion asWe consider the configurationApplying into the equations of motion, we getThe boundary conditions at \(r = 0\) isWe computeAnd we getWe solve \(\widetilde{A}^{t}\) from (H.10) asBy applying (H.11) to (H.6) (H.7), we getWe now introduceWe can rewrite the differential equation asWe can read out the asymptotic boundary conditions of \(\Phi_{r}\) and \(\Phi_{l}\) asat \(r = \infty\) , andat \(r = 0\) . We can rewriteWe now solve \(\Phi_{r}\) and \(\Phi_{l}\) . We can solveWe now write the solutions of \((A^{t}, A^{r}, A^{\phi})\) .

\[\\begin{array}{r l} & {0 = (r^{2} + 1)\\partial_{r}^{2}A^{t} + \\frac{5r^{2} + 1}{r}\\partial_{r}A^{t} + \\frac{1}{r^{2}}\\partial_{\\phi}^{2}A^{t} + (-\\mu^{2} + 4)A^{t}}\\ & {\\qquad +\\frac{1}{r^{2} + 1}\\partial_{t}\\partial_{r}A^{r} - \\frac{r^{2} - 1}{r(r^{2} + 1)^{2}}\\partial_{t}A^{r} + \\frac{1}{r^{2} + 1}\\partial_{t}\\partial_{\\phi}A^{\\phi}}\\ & {0 = - (r^{2} + 1)\\partial_{t}\\partial_{r}A^{t} - 2r\\partial_{t}A^{t} - \\frac{1}{r^{2} + 1}\\partial_{t}^{2}A^{r} + \\frac{1}{r^{2}}\\partial_{\\phi}^{2}A^{r} - \\mu^{2}A^{r}}\\ & {\\qquad -(r^{2} + 1)\\partial_{r}\\partial_{\\phi}A^{\\phi} - \\frac{2(r^{2} + 1)}{r}\\partial_{\\phi}A^{\\phi}}\\ & {0 = -\\frac{1}{r^{2}}\\partial_{t}\\partial_{\\phi}A^{t} - \\frac{1}{r^{2}}\\partial_{r}\\partial_{\\phi}A^{r} + \\frac{1}{r^{3}}\\partial_{\\phi}A^{r}}\\ & {\\qquad -\\frac{1}{r^{2} + 1}\\partial_{t}^{2}A^{\\phi} + (r^{2} + 1)\\partial_{r}^{2}A^{\\phi} + \\frac{5r^{2} + 3}{r}\\partial_{r}A^{\\phi} + (-\\mu^{2} + 4)A^{\\phi}.} \\end{array} \\quad (H.3)\]

\[(A^{t},A^{r},A^{\\phi}) = e^{-i\\omega t}e^{im\\phi}(\\widetilde{A}^{t}(r),\\widetilde{A}^{r}(r),\\widetilde{A}^{\\phi}(r)). \\quad (H.4)\]

\[\\begin{array}{r l} & {0 = (r^{2} + 1)\\partial_{r}^{2}\\widetilde{A}^{t} + \\frac{5r^{2} + 1}{r}\\partial_{r}\\widetilde{A}^{t} + \\Big(-\\frac{m^{2}}{r^{2}} +(-\\mu^{2} + 4)\\Big)\\widetilde{A}^{t}}\\ & {\\qquad -i w\\frac{1}{r^{2} + 1}\\partial_{r}\\widetilde{A}^{r} + i\\omega \\frac{r^{2} - 1}{r(r^{2} + 1)^{2}}\\widetilde{A}^{r} + \\frac{m\\omega}{r^{2} + 1}\\widetilde{A}^{\\phi}}\\ & {0 = i\\omega (r^{2} + 1)\\partial_{r}\\widetilde{A}^{t} + 2i\\omega r\\widetilde{A}^{t} + \\Big(\\frac{\\omega^{2}}{r^{2} + 1} -\\frac{m^{2}}{r^{2}} -\\mu^{2}\\Big)\\widetilde{A}^{r}}\\ & {\\qquad -i m(r^{2} + 1)\\partial_{r}\\widetilde{A}^{\\phi} -2i m\\frac{r^{2} + 1}{r}\\widetilde{A}^{\\phi}}\\ & {0 = -\\frac{m\\omega}{r^{2}}\\widetilde{A}^{t} - \\frac{i m}{r^{2}}\\partial_{r}\\widetilde{A}^{r} + \\frac{i m}{r^{3}}\\widetilde{A}^{r}}\\ & {\\qquad +(r^{2} + 1)\\partial_{r}^{2}\\widetilde{A}^{\\phi} + \\frac{5r^{2} + 3}{r}\\partial_{r}\\widetilde{A}^{\\phi} + \\Big(\\frac{\\omega^{2}}{r^{2} + 1} +(-\\mu^{2} + 4)\\Big)\\widetilde{A}^{\\phi}.} \\end{array} \\quad (H.6)\]

\[\\begin{array}{l}{A^{t} = \\mathcal{O}(r^{0})}\\ {A^{r} = \\mathcal{O}(r^{0})}\\ {A^{\\phi} = \\mathcal{O}(r^{-1})} \\end{array} \\quad (H.8)\]

\[\\frac{\\partial}{\\partial r} (H.6) - i\\omega \\cdot (H.5) + im\\cdot (H.7) + \\frac{1}{r}\\cdot (H.6). \\quad (H.9)\]

\[0 = i\\mu^{2}\\omega \\widetilde{A}^{t} - \\mu^{2}\\partial_{r}\\widetilde{A}^{r} - \\frac{\\mu^{2}}{r}\\widetilde{A}^{r} - i\\mu^{2}m\\widetilde{A}^{\\phi} \\quad (H.10)\]

\[\\widetilde{A}^{t} = -i\\frac{1}{\\omega}\\partial_{r}\\widetilde{A}^{r} - i\\frac{1}{\\omega}\\frac{1}{r}\\widetilde{A}^{r} + \\frac{m}{\\omega}\\widetilde{A}^{\\phi} \\quad (H.11)\]

\[\\begin{array}{l}{0 = (r^{2} + 1)\\partial_{r}^{2}\\widetilde{A}^{r} + (3r + \\frac{1}{r})\\partial_{r}\\widetilde{A}^{r} + \\left(1 - \\mu^{2} + \\frac{\\omega^{2}}{r^{2} + 1} -\\frac{m^{2} + 1}{r^{2}}\\right)\\widetilde{A}^{r} - 2im\\frac{1}{r}\\widetilde{A}^{\\phi}}\\ {0 = \\frac{2im}{r^{3}}\\widetilde{A}^{r} + (r^{2} + 1)\\partial_{r}^{2}\\widetilde{A}^{\\phi} + (5r + \\frac{3}{r})\\partial_{r}\\widetilde{A}^{\\phi} + \\left(-\\mu^{2} + 4 + \\frac{\\omega^{2}}{r^{2} + 1} -\\frac{m^{2}}{r^{2}}\\right)\\widetilde{A}^{\\phi}} \\end{array} \\quad (H.13)\]

\[\\begin{array}{l}{\\Phi_{r} = \\frac{i}{2}\\widetilde{A}^{r} + \\frac{1}{2} r\\widetilde{A}^{\\phi}}\\ {\\Phi_{l} = \\frac{i}{2}\\widetilde{A}^{r} - \\frac{1}{2} r\\widetilde{A}^{\\phi}} \\end{array} \\quad (H.14)\]

\[\\begin{array}{l}{{(r^{2}+1)\\partial_{r}^{2}\\Phi_{r}+(3r+\\frac{1}{r})\\partial_{r}\\Phi_{r}+\\left(1-\\mu^{2}+\\frac{\\omega^{2}}{r^{2}+1}-\\frac{(m-1)^{2}}{r^{2}}\\right)\\Phi_{r}=0}}\\ {{(r^{2}+1)\\partial_{r}^{2}\\Phi_{l}+(3r+\\frac{1}{r})\\partial_{r}\\Phi_{l}+\\left(1-\\mu^{2}+\\frac{\\omega^{2}}{r^{2}+1}-\\frac{(m+1)^{2}}{r^{2}}\\right)\\Phi_{l}=0}}\\end{array} \\quad (H.15)\]

\[\\begin{array}{l}{\\Phi_{r} = o(r^{-1})}\\ {\\Phi_{l} = o(r^{-1})} \\end{array} \\quad (H.16)\]

\[\\begin{array}{l}{\\Phi_{r} = \\mathcal{O}(r^{0})}\\ {\\Phi_{l} = \\mathcal{O}(r^{0})} \\end{array} \\quad (H.17)\]

\[\\begin{array}{l}{\\widetilde{A}^{t} = -\\frac{1}{\\omega}\\partial_{r}\\Phi_{r} + \\frac{m - 1}{\\omega}\\frac{1}{r}\\Phi_{r} - \\frac{1}{\\omega}\\partial_{r}\\Phi_{l} - \\frac{m + 1}{\\omega}\\frac{1}{r}\\Phi_{l}}\\ {\\widetilde{A}^{r} = -i\\Phi_{r} - i\\Phi_{l}}\\ {\\widetilde{A}^{\\phi} = \\frac{1}{r}\\Phi_{r} - \\frac{1}{r}\\Phi_{l}} \\end{array} \\quad (H.18)\]

\[\\begin{array}{r l} & {\\Phi_{r} = \\widetilde{C}_{r,1}r^{|m - 1|}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m - 1|)}2F_{1}\\Big(\\frac{1 + \\mu + |m - 1| - \\omega}{2},\\frac{1 + \\mu + |m - 1| + \\omega}{2};1 + \\mu ;\\frac{1}{r^{2} + 1}\\Big)}\\ & {\\qquad +\\widetilde{C}_{r,2}r^{|m - 1|}(r^{2} + 1)^{\\frac{1}{2} (\\mu -1 - |m - 1|)}2F_{1}\\Big(\\frac{1 - \\mu + |m - 1| - \\omega}{2},\\frac{1 - \\mu + |m - 1| + \\omega}{2};1 - \\mu ;\\frac{1}{r^{2} + 1}\\Big)}\\ & {\\Phi_{l} = \\widetilde{C}_{l,1}r^{|m + 1|}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m + 1|)}2F_{1}\\Big(\\frac{1 + \\mu + |m + 1| - \\omega}{2},\\frac{1 + \\mu + |m + 1| + \\omega}{2};1 + \\mu ;\\frac{1}{r^{2} + 1}\\Big)}\\ & {\\qquad +\\widetilde{C}_{l,2}r^{|m + 1|}(r^{2} + 1)^{\\frac{1}{2} (\\mu -1 - |m + 1|)}2F_{1}\\Big(\\frac{1 - \\mu + |m + 1| - \\omega}{2},\\frac{1 - \\mu + |m + 1| + \\omega}{2};1 - \\mu ;\\frac{1}{r^{2} + 1}\\Big)} \\end{array} \\quad (H.19)\]

- The first set: The frequency isand solution isfor \(n = 0,1,2,\ldots\)

\[\\omega = \\mu +1 + |m - 1| + 2n, \\quad (H.20)\]

\[\\begin{array}{r l} & {\\widetilde{A}^{t} = C_{r}\\frac{1}{\\mu + 1 + |m - 1| + 2n}\\bigg[\\Big((\\mu + m)r^{2} + \\big((m - 1) - |m - 1|\\big)\\Big)}\\ & {\\qquad \\cdot r^{|m - 1| - 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -3 - |m - 1|)}P_{n}^{(\\mu ,|m - 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad -4r^{|m - 1| + 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -5 - |m - 1|)}P_{n}^{(\\mu ,|m - 1|)}r\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)\\bigg]}\\ & {\\widetilde{A}^{r} = -i C_{r}r^{|m - 1|}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m - 1|)}P_{n}^{(\\mu ,|m - 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\widetilde{A}^{\\phi} = C_{r}r^{|m - 1| - 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m - 1|)}P_{n}^{(\\mu ,|m - 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big),} \\end{array} \\quad (H.21)\]

- The second set: The frequency isand the solution isfor \(n = 0,1,2,\ldots\)

\[\\omega = \\mu +1 + |m + 1| + 2n, \\quad (H.22)\]

\[\\begin{array}{r l} & {\\widetilde{A}^{t} = C_{l}\\frac{1}{\\mu + 1 + |m + 1| + 2n}\\bigg[\\Big((\\mu -m)r^{2} - \\big((m + 1) + |m + 1|\\big)\\Big)}\\ & {\\qquad \\cdot r^{|m + 1| - 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -3 - |m + 1|)}P_{n}^{(\\mu ,|m + 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\qquad -4r^{|m + 1| + 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -5 - |m + 1|)}P_{n}^{(\\mu ,|m + 1|)}r\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)\\bigg]}\\ & {\\widetilde{A}^{r} = -i C_{l}r^{|m + 1|}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m + 1|)}P_{n}^{(\\mu ,|m + 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big)}\\ & {\\widetilde{A}^{\\phi} = -C_{l}r^{|m + 1| - 1}(r^{2} + 1)^{\\frac{1}{2} (-\\mu -1 - |m + 1|)}P_{n}^{(\\mu ,|m + 1|)}\\Big(\\frac{r^{2} - 1}{r^{2} + 1}\\Big),} \\end{array} \\quad (H.23)\]

### H.1 Symplectic form

We compute the symplectic form \(f^{a}{}_{b}\)

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| δ2A δ1A | h(+) +m'=0,n' | h(+) -m'=0,n' | h(+) +m'≥1,n' | h(+) -m'≥1,n' | h(+) +m'≤-1,n' | h(+) -m'≤-1,n' |
| h(+) +m=0,n | 0 | 0 | 0 | 0 | 0 | 0 |
| h(+) -m=0,n | 0 | 0 | 0 | 0 | 0 | 0 |
| h(+) +m≥1,n | 0 | 0 | 0 | 0 | 0 | 0 |
| h(+) -m≥1,n | 0 | 0 | 0 | 0 | 0 | 0 |
| h(+) +m≤-1,n | 0 | 0 | 0 | 0 | 0 | 0 |
| h(+) -m≤-1,n | 0 | 0 | 0 | 0 | 0 | 0 |

{tab:1}

# I An argument for the contact term difference between the correlation functions of the canonical quantization and of the path integral formulation

{contacctterm}

In this appendix, we provide an argument for the contact term difference between the corre-lation functions of the canonical quantization and of the path integral formulation.

### I.1 A $0+1$ dimensional model

Before studying issue in the massive vector field, we first study the issue in a $0+1$ dimensional system, which is sufficient to illustrate the key point.

We represent the $0+1$ dimensional model with the following LagrangianHere, $x^{i}$ are the dynamical variables, $y^{a}$ are the Lagrangian multipliers, and $B_{ij}$ , $C_{ij}$ , $D_{ab}$ , $E_{i,a}$ are constants. We choose $B_{ij}$ , $C_{ij}$ , $D_{ab}$ to be symmetric. And we require $B_{ij}$ , $C_{ij}$ , $D_{ab}$ , andto be positive definite. For the convenience below, we denoteandboth of which are symmetric and positive definite. And, with \(H_{a b}\) (I.4), we can represent the Lagrangian (I.1) as

\[L=\\frac {1}{2}B_{ij}\\dot {x}^{i}\\dot {x}^{j}-\\frac {1}{2}C_{ij}x^{i}x^{j}+\\frac {1}{2}D_{ab}y^{a}y^{b}+E_{i,a}\\dot {x}^{i}y^{a}.\\tag{I.1}\\quad \\{\\mathrm {L}0+1\\}\]

\[\\left(\\begin{array}{ll}B_{ij}&E_{i,b}\\ E_{j,a}&D_{ab}\\end{array}\\right)\\tag{I.2}\]

\[F_{ij}=B_{ij}-(D^{-1})^{ab}E_{i,a}E_{j,b},\\tag{I.3}\\quad \\{\\mathrm {Fmatrix}\\}\]

\[H_{ab}=D_{ab}-(B^{-1})^{ij}E_{i,a}E_{j,b},\\tag{I.4}\\quad \\{\\mathrm {Hmatrix}\\}\]

\[L = \\frac{1}{2} B_{i j}\\big(x^{i} + (B^{-1})^{i k}E_{k,a}y^{a}\\big)\\big(x^{j} + (B^{-1})^{j l}E_{l,b}y^{b}\\big) - \\frac{1}{2} C_{i j}x^{i}x^{j} + \\frac{1}{2} H_{a b}y^{a}y^{b}. \\quad (I.5)\]

We first define the correlation function in the canonical quantization. By taking a variation with respect to \(y^{a}\) , we getWe now define the Euclidean correlation function. Specifically, we defineAnd we defineWe now introduce the correlation function in the path integral formulation. Specifically, we define the Euclidean action as

\[D_{a b}y^{b} + E_{i,a}\\dot{x}^{i} = 0 \\quad (I.6)\]

\[y^{a} = -(D^{-1})^{a b}E_{i,b}\\dot{x}^{i} \\quad (I.7)\]

\[L = \\frac{1}{2} F_{i j}\\dot{x}^{i}\\dot{x}^{j} - \\frac{1}{2} C_{i j}x^{i}x^{j} \\quad (I.8)\]

\[\\pi_{i} = F_{i j}\\dot{x}^{j} \\quad (I.9)\]

\[\\{x^{i},\\pi_{j}\\} = \\delta^{i}{}_{j} \\quad (I.10)\]

\[y^{a} = -(D^{-1})^{a b}E_{i,b}(F^{-1})^{i j}\\pi_{j} \\quad (I.11)\]

\[\\begin{array}{r l} & {x_{E}^{i}(t_{E}) = x^{i}(t = -i t_{E})}\\ & {\\pi_{E;j}(t_{E}) = \\pi_{j}(t = -i t_{E})}\\ & {\\widetilde{y}_{E}^{a}(t_{E}) = i y^{a}(t = -i t_{E})}\\ & {\\qquad = -i (D^{-1})^{a b}E_{i,b}(F^{-1})^{i j}\\pi_{j}(t = -i t_{E})}\\ & {\\qquad = (D^{-1})^{a b}E_{i,b}\\frac{d}{d t_{E}} x_{E}^{i}(t_{E})} \\end{array} \\quad (I.12)\]

\[\\begin{array}{r l}&{G_{E}^{a_{1};a_{2}}(t_{E,1};t_{E,2})=\\theta(t_{E,1}-t_{E,2})\\langle 0|\\widetilde{y}_{E}^{a_{1}}(t_{E,1})\\widetilde{y}_{E}^{a_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\langle 0|\\widetilde{y}_{E}^{a_{2}}(t_{E,2})\\widetilde{y}_{E}^{a_{1}}(t_{E,1})|0\\rangle}\\ &{\\qquad\\qquad\\qquad=(D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}(D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}\\cdot\\left(\\theta(t_{E,1}-t_{E,2})\\frac{d}{d t_{E,1}}\\frac{d}{d t_{E,2}}\\langle 0|x_{E}^{i_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\frac{d}{d t_{E,1}}\\frac{d}{d t_{E,2}}\\langle 0|x_{E}^{i_{2}}(t_{E,2})x_{E}^{i_{1}}(t_{E,1})|0\\rangle}\\ &{G_{E}^{a_{1};i_{2}}(t_{E,1};t_{E,2})=\\theta(t_{E,1}-t_{E,2})\\langle 0|\\widetilde{y}_{E}^{a_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\langle 0|x_{E}^{i_{2}}(t_{E,2})\\widetilde{y}_{E}^{a_{1}}(t_{E,1})|0\\rangle}\\ &{\\qquad\\qquad\\qquad=(D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}\\cdot\\left(\\theta(t_{E,1}-t_{E,2})\\frac{d}{d t_{E,1}}\\langle 0|x_{E}^{i_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\frac{d}{d t_{E,1}}\\langle 0|x_{E}^{i_{2}}(t_{E,2})x_{E}^{i_{1}}(t_{E,1})|0\\rangle}\\ &{G_{E}^{i_{1};a_{2}}(t_{E,1};t_{E,2})=\\theta(t_{E,1}-t_{E,2})\\langle 0|x_{E}^{i_{1}}(t_{E,1})\\widetilde{y}_{E}^{a_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\langle 0|\\widetilde{y}_{E}^{a_{2}}(t_{E,2})x_{E}^{i_{1}}(t_{E,1})|0\\rangle}\\ &{\\qquad\\qquad\\qquad=(D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}\\cdot\\left(\\theta(t_{E,1}-t_{E,2})\\frac{d}{d t_{E,2}}\\langle 0|x_{E}^{i_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\frac{d}{d t_{E,2}}\\langle 0|x_{E}^{i_{2}}(t_{E,2})x_{E}^{i_{1}}(t_{E,1})|0\\rangle}\\ &{G_{E}^{i_{1};i_{2}}(t_{E,1};t_{E,2})=\\theta(t_{E,1}-t_{E,2})\\langle 0|x_{E}^{i_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})|0\\rangle}\\ &{\\qquad\\qquad\\qquad+(1-\\theta(t_{E,1}-t_{E,2}))\\langle 0|x_{E}^{i_{2}}(t_{E,2})x_{E}^{i_{1}}(t_{E,1})|0\\rangle}\\end{array} \\quad (I.13)\]

\[S_{E} = \\int d t_{E}\\left[\\frac{1}{2} B_{i j}\\frac{d}{d t_{E}} x_{E}^{i}\\frac{d}{d t_{E}} x_{E}^{j} + \\frac{1}{2} C_{i j}x_{E}^{i}x_{E}^{j} + \\frac{1}{2} D_{a b}\\widetilde{y}_{E}^{a}\\widetilde{y}_{E}^{b} - E_{i,a}\\frac{d}{d t_{E}} x_{E}^{i}\\widetilde{y}_{E}^{a}\\right]. \\quad (I.14)\]

Here, we construct the integral We then define the correlation function as

\[\\begin{array}{r l} & {G_{E,p a t h};\\overset {a_{1};a_{2}}{\\underset{E,p a t h}{\\longrightarrow}}(t_{E,1};t_{E,2}) = \\frac{\\int[d x_{E}d y_{E}]e^{-S_{E}}\\widetilde{y}_{E}^{a_{1}}(t_{E,1})\\widetilde{y}_{E}^{a_{2}}(t_{E,2})}{\\int[d x_{E}d y_{E}]e^{-S_{E}}}}\\ & {G_{E,p a t h};\\overset {a_{1};i_{2}}{\\underset{E,p a t h}{\\longrightarrow}}(t_{E,1};t_{E,2}) = \\frac{\\int[d x_{E}d y_{E}]e^{-S_{E}}\\widetilde{y}_{E}^{a_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})}{\\int[d x_{E}d y_{E}]e^{-S_{E}}}}\\ & {G_{E,p a t h};\\overset {i_{1};a_{2}}{\\underset{E,p a t h}{\\longrightarrow}}(t_{E,1};t_{E,2}) = \\frac{\\int[d x_{E}d y_{E}]e^{-S_{E}}x_{E}^{i_{1}}(t_{E,1})\\widetilde{y}_{E}^{a_{2}}(t_{E,2})}{\\int[d x_{E}d y_{E}]e^{-S_{E}}}}\\ & {G_{E,p a t h};\\overset {i_{1};i_{2}}{\\underset{E,p a t h}{\\longrightarrow}}(t_{E,1};t_{E,2}) = \\frac{\\int[d x_{E}d y_{E}]e^{-S_{E}}x_{E}^{i_{1}}(t_{E,1})x_{E}^{i_{2}}(t_{E,2})}{\\int[d x_{E}d y_{E}]e^{-S_{E}}}.} \\end{array} \\quad (I.15)\]

In the following, we will study the difference between the correlation functions in the canonical quantization (I.13) and in the path integral formulation (I.15).

We now take a reformulation for the correlation function in the canonical quantization (I.13).

We now take a reformulation for the correlation function in the path integral formulation (I.15). By integrating out the variable \(\widetilde{y}_{E}^{a}\) , we get the following expressionsHere, we denote \(\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2)\) as the following path integralwithBased on ( ), we now read out the differenceHere, in the derivation, we have also usedwith \(H_{a b}\) defined in (I.4). And we can prove (I.20) by showing

\[\\begin{array}{r l} & {G_{E,p a t h};^{a_{1};a_{2}}(t_{E};1;t_{E};2) = (D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}(D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}\\frac{d}{d t_{E,1}}\\frac{d}{d t_{E,2}}\\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2)}\\ & {\\qquad +(D^{-1})^{a_{1}a_{2}}\\delta (t_{E,1} - t_{E,2})}\\ & {G_{E,p a t h};^{a_{1};i_{2}}(t_{E};1;t_{E};2) = (D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}\\frac{d}{d t_{E,1}}\\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2)}\\ & {G_{E,p a t h};^{i_{1};a_{2}}(t_{E};1;t_{E};2) = (D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}\\frac{d}{d t_{E,2}}\\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2)}\\ & {G_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2) = \\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2).} \\end{array} \\quad (I.16)\]

\[\\widetilde{G}_{E,p a t h};^{i_{1};i_{2}}(t_{E};1;t_{E};2) = \\frac{\\int[d x_{E}]e^{-\\widetilde{S}_{E}}x_{E}^{i_{1}}(t_{E};1)x_{E}^{i_{2}}(t_{E};2)}{\\int[d x_{E}]e^{-\\widetilde{S}_{E}}}, \\quad (I.17)\]

\[\\widetilde{S}_{E} = \\int d t_{E}\\left[\\frac{1}{2} F_{i j}\\frac{d}{d t_{E}} x_{E}^{i}\\frac{d}{d t_{E}} x_{E}^{j} + \\frac{1}{2} C_{i j}x_{E}^{i}x_{E}^{j}\\right]. \\quad (I.18)\]

\[\\begin{array}{r l} & {G_{E;}^{a_{1};a_{2}}(t_{E};1;t_{E};2) = G_{E,p a t h;}^{a_{1};a_{2}}(t_{E};1;t_{E};2) - (H^{-1})^{a_{1}a_{2}}\\delta (t_{E;1} - t_{E;2})}\\ & {G_{E;}^{a_{1};i_{2}}(t_{E};1;t_{E};2) = G_{E,p a t h;}^{a_{1};i_{2}}(t_{E};1;t_{E};2)}\\ & {G_{E;}^{i_{1};a_{2}}(t_{E};1;t_{E};2) = G_{E,p a t h;}^{i_{1};a_{2}}(t_{E};1;t_{E};2)}\\ & {G_{E;}^{i_{1};i_{2}}(t_{E};1;t_{E};2) = G_{E,p a t h;}^{i_{1};i_{2}}(t_{E};1;t_{E};2).} \\end{array} \\quad (I.19)\]

\[(D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}(D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}(F^{-1})^{i_{1}i_{2}} + (D^{-1})^{a_{1}a_{2}} = (H^{-1})^{a_{1}a_{2}}, \\quad (I.20)\]

\[\\left((D^{-1})^{a_{1}b_{1}}E_{i_{1},b_{1}}(D^{-1})^{a_{2}b_{2}}E_{i_{2},b_{2}}(F^{-1})^{i_{1}i_{2}} + (D^{-1})^{a_{1}a_{2}}\\right)H_{a_{2}a_{3}} = \\delta^{a_{1}}_{a_{3}}. \\quad (I.21)\]

### I.2 The massive vector fields

### J Hypergeometric functions

\[\\begin{array}{r l} & {_{2}F_{1}(\\alpha ,\\beta ;\\alpha +\\beta ;z)}\\ & {= -\\frac{\\Gamma(\\alpha +\\beta)}{\\Gamma(\\alpha)\\Gamma(\\beta)}\\sum_{n = 0}^{+\\infty}\\frac{\\alpha_{n}\\beta_{n}}{(n!)^{2}} (1 - z)^{n}\\Big(\\psi (\\alpha +n) + \\psi (\\beta +n) - 2\\psi (1 + n) + \\log (1 - z)\\Big)}\\ & {= -\\frac{\\Gamma(\\alpha +\\beta)}{\\Gamma(\\alpha)\\Gamma(\\beta)} {}_{2}F_{1}(\\alpha ,\\beta ;1;1 - z)\\log (1 - z)}\\ & {\\quad -\\frac{\\Gamma(\\alpha +\\beta)}{\\Gamma(\\alpha)\\Gamma(\\beta)}\\sum_{n = 0}^{+\\infty}\\frac{\\alpha_{n}\\beta_{n}}{(n!)^{2}} (1 - z)^{n}\\Big(\\psi (\\alpha +n) + \\psi (\\beta +n) - 2\\psi (1 + n)\\Big),} \\end{array} \\quad (J.1)\]

andandwhere \(m = 1,2,3,\ldots\) in (J.2) and (J.3).

\[\\begin{array}{r l} & {_{2}F_{1}(\\alpha ,\\beta ;\\alpha +\\beta -m;z)}\\ & {= \\frac{\\Gamma(m)\\Gamma(\\alpha +\\beta -m)}{\\Gamma(\\alpha)\\Gamma(\\beta)}(1 - z)^{-m}\\sum_{n = 0}^{m - 1}\\frac{(\\alpha - m)_{n}(\\beta - m)_{n}}{n!(1 - m)_{n}}(1 - z)^{n}}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta -m)}{\\Gamma(\\alpha - m)\\Gamma(\\beta - m)}\\sum_{n = 0}^{+\\infty}\\frac{\\alpha_{n}\\beta_{n}}{n!(m + n)!}(1 - z)^{n}}\\ & {\\quad \\cdot \\left(\\psi (\\alpha +n) + \\psi (\\beta +n) - \\psi (1 + m + n) - \\psi (1 + n) + \\log (1 - z)\\right)}\\ & {= \\frac{\\Gamma(m)\\Gamma(\\alpha +\\beta -m)}{\\Gamma(\\alpha)\\Gamma(\\beta)}(1 - z)^{-m}\\sum_{n = 0}^{m - 1}\\frac{(\\alpha - m)_{n}(\\beta - m)_{n}}{n!(1 - m)_{n}}(1 - z)^{n}}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta -m)}{\\Gamma(\\alpha - m)\\Gamma(\\beta - m)} {}_{2}F_{1}(\\alpha ,\\beta ;m + 1;1 - z)\\log (1 - z)}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta -m)}{\\Gamma(\\alpha - m)\\Gamma(\\beta - m)}\\sum_{n = 0}^{+\\infty}\\frac{\\alpha_{n}\\beta_{n}}{n!(m + n)!}(1 - z)^{n}}\\ & {\\quad \\cdot \\left(\\psi (\\alpha +n) + \\psi (\\beta +n) - \\psi (1 + m + n) - \\psi (1 + n)\\right),} \\end{array} \\quad (J.2)\]

\[\\begin{array}{r l} & {2F_{1}(\\alpha ,\\beta ;\\alpha +\\beta +m;z)}\\ & {= \\frac{\\Gamma(m)\\Gamma(\\alpha +\\beta +m)}{\\Gamma(\\alpha +m)\\Gamma(\\beta +m)}\\sum_{n = 0}^{m - 1}\\frac{\\alpha_{n}\\beta_{n}}{n!(1 - m)_{n}} (1 - z)^{n}}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta +m)}{\\Gamma(\\alpha)\\Gamma(\\beta)} (1 - z)^{m}\\sum_{n = 0}^{+\\infty}\\frac{(\\alpha +m)_{n}(\\beta +m)_{n}}{n!(m + n)!} (1 - z)^{n}}\\ & {\\quad \\cdot \\left(\\psi (\\alpha +m + n) + \\psi (\\beta +m + n) - \\psi (1 + m + n) - \\psi (1 + n) + \\log (1 - z)\\right)}\\ & {= \\frac{\\Gamma(m)\\Gamma(\\alpha +\\beta +m)}{\\Gamma(\\alpha +m)\\Gamma(\\beta +m)}\\sum_{n = 0}^{m - 1}\\frac{\\alpha_{n}\\beta_{n}}{n!(1 - m)_{n}} (1 - z)^{n}}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta +m)}{\\Gamma(\\alpha)\\Gamma(\\beta)} (1 - z)^{m}2F_{1}(\\alpha +m,\\beta +m;m + n + 1;1 - z)\\log (1 - z)}\\ & {\\quad +(-1)^{m + 1}\\frac{\\Gamma(\\alpha +\\beta +m)}{\\Gamma(\\alpha)\\Gamma(\\beta)} (1 - z)^{m}\\sum_{n = 0}^{+\\infty}\\frac{(\\alpha +m)_{n}(\\beta +m)_{n}}{n!(m + n)!} (1 - z)^{n}}\\ & {\\quad \\cdot \\left(\\psi (\\alpha +m + n) + \\psi (\\beta +m + n) - \\psi (1 + m + n) - \\psi (1 + n)\\right),} \\end{array} \\quad (J.3)\]

### References

[1] B. S. DeWitt, "Quantum Theory of Gravity. 1. The Canonical Theory," Phys. Rev. 160 (1967), 1113- 1148 doi:10.1103/PhysRev.160.1113

[2] E. Witten, "A note on the canonical formalism for gravity," Adv. Theor. Math. Phys. 27 (2023) no.1, 311- 380 doi:10.4310/ATMP.2023.v27.n1.a6 [arXiv:2212.08270 [hep- th]].

[3] S. Colin- Ellerin, G. Lin and G. Penington, "Generalized entropy of gravitational fluctuations," JHEP 09 (2025), 091 doi:10.1007/JHEP09(2025)091 [arXiv:2501.08308 [hep- th]].

[4] P. A. M. Dirac, "Lectures on quantum mechanics."

[5] M. Henneaux and C. Teitelboim, "Quantization of gauge systems."

[6] A. J. Hanson, T. Regge and C. Teitelboim, "Constrained Hamiltonian Systems," Accademia Nazionale dei Lincei, 1976, RX- 748.

[7] S. Giombi, A. Maloney and X. Yin, "One- loop Partition Functions of 3D Gravity," JHEP 08 (2008), 007 doi:10.1088/1126- 6708/2008/08/007 [arXiv:0804.1773 [hep- th]].

[8] E. D'Hoker, D. Z. Freedman, S. D. Mathur, A. Matusis and L. Rastelli, "Graviton and gauge boson propagators in AdS(d+1)," Nucl. Phys. B 562 (1999), 330- 352 doi:10.1016/S0550- 3213(99)00524- 6 [arXiv:hep- th/9902042 [hep- th]].

[9] E. Witten, "Interacting Field Theory of Open Superstrings," Nucl. Phys. B 276 (1986), 291- 324 doi:10.1016/0550- 3213(86)90298- 1

[10] G. J. Zuckerman, "ACTION PRINCIPLES AND GLOBAL GEOMETRY," Conf. Proc. C 8607214 (1986), 259- 284 Print- 89- 0321 (YALE).

[11] C. Crnkovic and E. Witten, "COVARIANT DESCRIPTION OF CANONICAL FORMALISM IN GEOMETRICAL THEORIES," Print- 86- 1309 (PRINCETON).

[12] J. Lee and R. M. Wald, "Local symmetries and constraints," J. Math. Phys. 31 (1990), 725- 743 doi:10.1063/1.528801

[13] V. Iyer and R. M. Wald, "Some properties of Noether charge and a proposal for dynamical black hole entropy," Phys. Rev. D 50 (1994), 846- 864 doi:10.1103/PhysRevD.50.846 [arXiv:gr- qc/9403028 [gr- qc]].

[14] D. Harlow and J. Q. Wu, "Covariant phase space with boundaries," JHEP 10 (2020), 146 doi:10.1007/JHEP10(2020)146 [arXiv:1906.08616 [hep- th]].

[15] Z. Feng, Z. e. Gao, X. S. Wang, J. q. Wu, H. Zhang, "Applying Noether's theorem to the pure AdS₃ gravity," in preparation.

[16] J. M. Maldacena and A. Strominger, "AdS(3) black holes and a stringy exclusion principle," JHEP 12 (1998), 005 doi:10.1088/1126- 6708/1998/12/005 [arXiv:hep- th/9804085 [hep- th]].

[17] W. Li, W. Song and A. Strominger, "Chiral Gravity in Three Dimensions," JHEP 04 (2008), 082 doi:10.1088/1126- 6708/2008/04/082 [arXiv:0801.4566 [hep- th]].

[18] A. L. Fitzpatrick, E. Katz, D. Poland and D. Simmons- Duffin, "Effective Conformal Theory and the Flat- Space Limit of AdS," JHEP 07 (2011), 023 doi:10.1007/JHEP07(2011)023 [arXiv:1007.2412 [hep- th]].

[19] B. Allen and T. Jacobson, "Vector Two Point Functions in Maximally Symmetric Spaces," Commun. Math. Phys. 103 (1986), 669 doi:10.1007/BF01211169

[20] D. Lopes, T. V. Fernandes and J. P. S. Lemos, "Normal modes of Proca fields in AdSd spacetime," Phys. Rev. D 109 (2024) no.6, 064041 doi:10.1103/PhysRevD.109.064041 [arXiv:2401.13030 [gr- qc]].

[21] C. P. Burgess and C. A. Lutken, "Propagators and Effective Potentials in Anti- de Sitter Space," Phys. Lett. B 153 (1985), 137- 141 doi:10.1016/0370- 2693(85)91415- 7

[22] E. T. Whittaker and G. N. Watson, "A Course of Modern Analysis," Cambridge University Press.

[23] Z. X. Wang, D. R. Guo and X. J. Xia, "Special Functions," World Scientific Pub Co Inc.